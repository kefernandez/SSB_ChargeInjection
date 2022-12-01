//###########################################################################
// FILE:    epwm_deadband_c28.c
// TITLE:   Check PWM Dead-Band
//
//! \addtogroup cpu01_example_list
//! <h1> EPWM dead band control (epwm_deadband)</h1>
//!
//! During the test, monitor ePWM1, ePWM2, and/or ePWM3 outputs
//! on a scope.
//!
//! - ePWM1A is on GPIO0
//! - ePWM1B is on GPIO1
//! - ePWM2A is on GPIO2
//! - ePWM2B is on GPIO3
//! - ePWM3A is on GPIO4
//! - ePWM3B is on GPIO5
//!
//! This example configures ePWM1, ePWM2 and ePWM3 for:
//! - Count up/down
//! - Deadband
//!
//! 3 Examples are included:
//! - ePWM1: Active low PWMs
//! - ePWM2: Active low complementary PWMs
//! - ePWM3: Active high complementary PWMs
//!
//! Each ePWM is configured to interrupt on the 3rd zero event.
//! When this happens the deadband is modified such that
//! 0 <= DB <= DB_MAX.  That is, the deadband will move up and
//! down between 0 and the maximum value.
//!
//! View the EPWM1A/B, EPWM2A/B and EPWM3A/B waveforms
//! via an oscilloscope
//
//
//###########################################################################
// $TI Release: F2837xD Support Library v160 $
// $Release Date: Mon Jun 15 13:36:23 CDT 2015 $
// $Copyright: Copyright (C) 2013-2015 Texas Instruments Incorporated -
//             http://www.ti.com/ ALL RIGHTS RESERVED $
//###########################################################################

#include "F28x_Project.h"     // Device Headerfile and Examples Include File
#include "global_variables.h"
#include "global_define.h"
#include "initialize.h"
#include "operation.h"

void main(void)
{
    // Step 1. Initialize System Control:
    // PLL, WatchDog, enable Peripheral Clocks
    // This example function is found in the F2837xD_SysCtrl.c file.
    InitSysCtrl();

    // disable peripheral clks that we do not use to save power
    Disable_unused_clk();

    // Step 2. Initialize GPIO:

    InitGpio(); // set the GPIO to it's default state (i.e., high impedance input)

    //GpioDataRegs.GPACLEAR.bit.GPIO16 = 1; // Make sure GPIO pin is off before configuring it as an output
    //GPIO_SetupPinMux(16, GPIO_MUX_CPU1, 0);
    //GPIO_SetupPinOptions(16, GPIO_OUTPUT, GPIO_PUSHPULL);

    // Step 3. Clear all interrupts and initialize PIE vector table:
    Init_interrupts();

    // Step 4. Initialize the Device Peripherals:

    //    DELAY_US(700000);


    EALLOW;
    ClkCfgRegs.PERCLKDIVSEL.bit.EPWMCLKDIV = 0x0; // make PWM clock the same as SYSCLK
    CpuSysRegs.PCLKCR0.bit.TBCLKSYNC = 0; //disable synchronization of all ePWMs to the TBCLK
    EDIS;

    Init_ADCs(); // Initialize ADCs

    Init_DACs(); // Initialize DACs for debugging

    Init_EPwms(); // Initialize ePWMs

    EALLOW;
    CpuSysRegs.PCLKCR0.bit.TBCLKSYNC = 1; //enable synchronization of all ePWMs to the TBCLK
                                                      // this will start ADC conversion since ADC are triggered by ePWM1
    EDIS;

    ADC_bias(); // Get ADC bias values for differential voltage and current sensor measurements

    Init_global_variables(); // Initialize global variables. Includes some ADC conversion calculations so must be called after ADC_bias().

    // Step 5. User specific code, enable interrupts:

    // Initialize all interrupts
    Enable_interrupts();

    // Step 6: Infinite loop, let ISR (interrupt service routines) handle the rest
    while(1)
    {

    }
}

float Vc2_ref_count = 0;

interrupt void ADC_interrupt1(void)
{
    #ifdef TIMING_CHECK
    GpioDataRegs.GPASET.bit.GPIO16 = 1; // Set GPIO16 (for debugging)
    #endif

    // Read measured voltages from ADC results registers and subtract off zero bias.
    Vc1_count = AdcbResultRegs.ADCRESULT0 - Vc1_bias_count;  // Get ADC result and subtract off initial bias
    Vc2_count = AdccResultRegs.ADCRESULT0 - Vc2_bias_count;
    //Vbus_count = AdcdResultRegs.ADCRESULT0 - Vbus_bias_count;
    //Vc1_count = AdcbResultRegs.ADCRESULT0 - 1707;  // Get ADC result and subtract off initial bias
    //Vc2_count = AdccResultRegs.ADCRESULT0 - 1707;
    Vbus_count = AdcdResultRegs.ADCRESULT0 - Vbus_bias_count;

    // Scale Vbus, Vc1, and Vc2 from counts to full volts. Then compute Vc3 (count) from the differential measurment of Vbus_count
    // & Vc1_count. This gets tricky because these measured values do not have the same scalings to volts.
    Vc1_V = Vc1_count*Vc1_adc_count_to_fullvolt_ratio*adc_scale_c1; // Go from ADC counts to volts (full). Conversion derived analytically.
    Vc2_V = Vc2_count*Vc2_adc_count_to_fullvolt_ratio*adc_scale_c2; // Go from ADC counts to volts (full). Conversion derived analytically.
    Vbus_V = Vbus_count*Vbus_adc_count_to_fullvolt_ratio;



    // First-order LPF (low-pass filter) of measured Vc2 (in volts)
    lpf_in = Vc2_V;
    lpf_out = b0_lpf*lpf_in + b1_lpf*lpf_in1 - (a1_lpf*lpf_out1);
    Vc2_avg_V = lpf_out;

    lpf_c1_in = Vc1_V;
    lpf_c1_out = b0_c1_lpf*lpf_c1_in + b1_c1_lpf*lpf_c1_in1 - (a1_c1_lpf*lpf_c1_out1);
    Vc1_avg_V = lpf_c1_out;

    /*lpf_vbus_in = Vbus_V;
    lpf_vbus_out = b0_vbus_lpf*lpf_vbus_in + b1_vbus_lpf*lpf_vbus_in1 - (a1_vbus_lpf*lpf_vbus_out1);
    Vbus_avg_V = lpf_vbus_out;*/

    Vc3_V = Vbus_V - Vc1_V;

    // Establish a control mode state to help controller escape from initialization (zero) state.
    // This is a hysteresis comparator band to determine:
    //      1. Conversion ratio equation
    //      2. Vc2_ref value
    if (Vc2_avg_V > Vc2_init_limit) //If Vc2_avg > 4V
    {
        control_mode = controlmode_dynamic;
    }
    else if (Vc2_avg_V < 0 )
    {
        control_mode = controlmode_fixed;
    }
    else
    {
        // Do nothing.
    }

    // Notch (band-stop) filter Vc1 (in volts) in order to band-pass filter 120Hz component
    /*notch_in = Vc1_V;
    notch_out = b0_notch*notch_in + b1_notch*notch_in1 + b2_notch*notch_in2 - (a1_notch*notch_out1 + a2_notch*notch_out2);
    Vc1_notch_V = (float) notch_out;
    Vc1_bpf_V = Vc1_V - Vc1_notch_V;*/


    sogi_out2 = sogi_out1;
    sogi_out1 = sogi_out;
    sogi_in2 = sogi_in1;
    sogi_in1 = sogi_in;
    sogi_in = Vc1_V;


    sogi_out = b0_sogi*sogi_in + b2_sogi*sogi_in2 - (-a1_sogi*sogi_out1 + -a2_sogi*sogi_out2);


    Vc1_bpf_V = sogi_out;

    /*notch_out2_pll_120 = notch_out1_pll_120;
    notch_out1_pll_120 = notch_out_pll_120;
    notch_in2_pll_120 = notch_in1_pll_120;
    notch_in1_pll_120 = notch_in_pll_120;*/

    notch_out2_pll_240 = notch_out1_pll_240;
    notch_out1_pll_240 = notch_out_pll_240;
    notch_in2_pll_240 = notch_in1_pll_240;
    notch_in1_pll_240 = notch_in_pll_240;

   notch_in_pll_240 = __cospuf32(theta)*(Vc1_bpf_V); //input to the notch is sin(wt)*cos(wt+x)
    //notch_out_pll_120 = b0_notch_pll_120*notch_in_pll_120 + b1_notch_pll_120*notch_in1_pll_120 + b2_notch_pll_120*notch_in2_pll_120 - (a1_notch_pll_120*notch_out1_pll_120 + a2_notch_pll_120*notch_out2_pll_120);
    //notch_in_pll_240 = notch_out_pll_120;
    notch_out_pll_240 = b0_notch_pll_240*notch_in_pll_240 + b1_notch_pll_240*notch_in1_pll_240 + b2_notch_pll_240*notch_in2_pll_240 - (a1_notch_pll_240*notch_out1_pll_240 + a2_notch_pll_240*notch_out2_pll_240);
    notch_out_pll = notch_out_pll_240;

    x_sum_pll = x_sum_pll+Ki_pll*notch_out_pll;
    if(reset_pll)
    {
        x_sum_pll = 0;
        theta = 0;
        reset_pll = 0;
    }
    if (fabs(x_sum_pll) > sum_pll_max)
       x_sum_pll = sum_pll_set;
    //the pi loop is driving the output of the notch filter to zero
    pll_PI_out = Kp_pll*notch_out_pll+x_sum_pll;
    // determined unfolder gating signal
    theta_pre = theta;
    theta = theta + (0.00000625)*(120+pll_PI_out); //the pll_PI_out will catch up the phase of the ac voltage
    //------ PLL ---- //

    if ((theta)>=1)
        theta = theta - 1;
    else if (theta<0)
        theta = theta + 1;


    if( ((theta + delta) > 0.249) && ((theta + delta) < 0.251) ) //if theta = pi/2, get maximum
     {
         Vc3_max_hold_V_pll = Vc1_V;
         //Vc3_rip_V = Vc3_max_hold_V_pll - Vc3_min_hold_V_pll;
     }
     else if( ((theta + delta) > 0.749) && ((theta + delta) < 0.751) ) //if theta = 3*pi/2, get minimum
     {
         Vc3_min_hold_V_pll = Vc1_V;
     }

     else if( ((theta + delta) < 0.01 ) || ( ((theta + delta) > 0.499 ) && ((theta + delta) < 0.501 )) ) //zero crossing, update reference amplitude for Vab
     {
         Vc3_rip_V = Vc3_max_hold_V_pll - Vc3_min_hold_V_pll;
     }
     else{
         //do nothing
     }
     Vc1_bpf_V = 0.5*Vc3_rip_V*(__sinpuf32(theta+delta));



    //------SOGI PLL ---- //
    /*sogi_out2 = sogi_out1;
    sogi_out1 = sogi_out;
    sogi_in2 = sogi_in1;
    sogi_in1 = sogi_in;
    sogi_in = Vc1_V;
    sogi_out = b0_sogi*sogi_in + b2_sogi*sogi_in2 - (-a1_sogi*sogi_out1 + -a2_sogi*sogi_out2);
    Vc1_bpf_V = sogi_out;
*/

    // Determine the peak value of Vc3 over one cycle.
    // Absolute value function. Increases the bandwidth of the maximum point detection by a factor of 2.
    Vc3_abs_V = -Vc1_bpf_V;
    if (Vc3_abs_V < 0) Vc3_abs_V = -1*Vc3_abs_V;

    // First logical detects the zero crossing. If Vc3_meas*Vc3_prev is negative, this implies a change in sign.
    // Second logical implement a debounce-type functionality (wait a certain amount of time before entering again around the zero-crossing with a reasonable bandwidth).
    if ((Vc3_V*Vc3_prev_V < 0) && (Vc3_max_count >= HALFPERIOD)) // zero-crossing
    {
        Vc3_max_count = 0; // Reset the counter
        Vc3_max_hold_V = Vc3_max_V; // Set the held maximum Vc3 for the next cycle
        Vc3_max_V = 0; // Reset the local maximum Vc3
    }
    else // No zero-crossing
    {
    }
    // Update the new local maximum Vc3.
    if (Vc3_abs_V > Vc3_max_V) Vc3_max_V = Vc3_abs_V;

    // Increment the counter and save the current value of Vc3 for the next cycle.
    Vc3_max_count++;
    Vc3_prev_V = Vc3_V;


    //control_mode = controlmode_dynamic;

    // From the determined converter control mode (fixed or dynamic), set the Vc2 reference and PI coefficients for the compensation loop.
    if (control_mode == controlmode_fixed)
    {
        // Set the Vc2 reference to a predetermined fixed value (20 V)
        Vc2_ref_V = Vc2_ref_init_V; //Vc2_ref = 10V

    }
    else if (control_mode == controlmode_dynamic)
    {
        // Set the Vc2 reference to dynamically adjust based off of the ripple magnitude of Vc3. This is a workaround for estimating the present load.

        Vc2_ref_V = 1.32*Vc3_rip_V*0.5; // Scaled
       // Vc2_ref_V = 1.32*Vc3_max_hold_V;

    }
    else
    {
        // Do nothing.
    }

    // Place Vc2 compensation feedback loop here. Implemented with PI controller
    Vc2_error = Vc2_ref_V - Vc2_avg_V; // Compute error term of Vc2 (average Vc2). Note: In units of volts
    Vc2_integral = a2_I*Vc2_integral_old + b1_I*Vc2_error + b2_I*Vc2_error_old;
    if ((Vc2_integral > Vc2_integral_limit) || (Vc2_integral < -Vc2_integral_limit)) Vc2_integral = Vc2_integral_old; // Integral wind-up compensation. Limit Vc2_PI to safe values.
    Vc2_PI = kp_PI*Vc2_error + ki_PI*Vc2_integral;

    // Update coefficient from Vc2 PI result to be used with Vc1 differentiator result
    K = Vc2_PI;


    // Place differentiator for Vc1_bpf here. Implemented with band-limited differentiator.
    Vc1_bpf_diff_V = a2_diff*Vc1_bpf_diff_V_old + b1_diff*Vc1_bpf_V + b2_diff*Vc1_bpf_V_old;


    dVc2_comp = K*Vc1_bpf_diff_V; // Derive the full compensation term for Vc2

    Vc3_ref_V = -Vc1_bpf_V + dVc2_comp; // Control equation (with Vc2 compensation)
    //Vc3_ref_V = -0.5*Vc3_rip_V*(__sinpuf32(theta+delta)) + dVc2_comp;
    M_control = Vc3_ref_V/Vc2_V;  // Desired conversion ratio of converter, Vout/Vin = Vc3/Vc2 (measured Vc2_ref)


    Set_buffer_dutycycle(M_control); // Set the new duty cycles for the converter. Saturation is included.

    // Update current controller samples to old samples for next switching cycle.
    Vc2_error_old = Vc2_error;
    Vc2_integral_old = Vc2_integral;
    Vc1_bpf_V_old = Vc1_bpf_V;
    /*notch_out2 = notch_out1;
    notch_out1 = notch_out;
    notch_in2 = notch_in1;
    notch_in1 = notch_in;*/
    lpf_out1 = lpf_out;
    lpf_in1 = lpf_in;
    lpf_c1_out1 = lpf_c1_out;
    lpf_c1_in1 = lpf_c1_in;
    lpf_vbus_out1 = lpf_vbus_out;
    lpf_vbus_in1 = lpf_vbus_in;


    // DAC output for debugging
//  DacaRegs.DACVALS.bit.DACVALS = (int16) Vbus_count+2048;
    DacaRegs.DACVALS.bit.DACVALS = (int16) (Vc3_max_hold_V)* Vc1_adc_fullvolt_to_count_ratio*gain_dac;
    //DacaRegs.DACVALS.bit.DACVALS = (int16) (Vc1_bpf_V*Vc3_adc_fullvolt_to_count_ratio) + 2048;
    //DacbRegs.DACVALS.bit.DACVALS = (int16) (Vc1_V*Vc3_adc_fullvolt_to_count_ratio);
    //DaccRegs.DACVALS.bit.DACVALS = (int16) (Vc1_notch_V*Vc3_adc_fullvolt_to_count_ratio);

    ADC_clear_interrupt1_flag(); // Clear interrupt1 flag
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP1; // Acknowledge read of PIE Group 1

    #ifdef TIMING_CHECK
    GpioDataRegs.GPACLEAR.bit.GPIO16 = 1; // Clear GPIO16 (for debugging)
    #endif
}


