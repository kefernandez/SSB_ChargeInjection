/*
 * initialize.c
 *
 *  Created on: Mar 13, 2017
 *      Author: NathanBrooks
 *      Edited by Kelly Fernandez on April 6th, 2021
 */

#include "F28x_Project.h"     // Device Headerfile and Examples Include File
#include "initialize.h"
#include "global_define.h"
#include "global_variables.h"

/* Declare internal functions */

void ADC_conversion_wait(void);

void ADC_clear_all_interrupt_flags(void);


/* Define external functions */

// Initialize all global variables to their nonzero values.
void Init_global_variables()
{

    // Declare and define local variables for adc conversion from full voltage to counts (and vice versa)
    float Vc2_adc_range_count = (float) (4096 - Vc2_bias_count);                        // Full adc range in counts (w/ bias)
    //float Vc2_adc_range_count = (float) (4096 - 1707);
    float Vc2_adc_range_count_div = 1/Vc2_adc_range_count;          // Inverse of full adc range in counts (w/ bias)
    float Vc2_adc_range_fullvolt = (float) (VC2_ADC_MAX_VOLT - VC2_ADC_MIN_VOLT);       // Full adc range in volts (full voltage)
    float Vc2_adc_range_fullvolt_div = 1/Vc2_adc_range_fullvolt;    // Inverse of full adc range in volts (full voltage)
    // Define global adc conversion ratios for adc conversion from full voltage to counts (and vice versa)
    Vc2_adc_fullvolt_to_count_ratio = Vc2_adc_range_count*Vc2_adc_range_fullvolt_div; // Counts per volt. Full volt to count adc conversion. Count = Volt*Ratio.
    Vc2_adc_count_to_fullvolt_ratio = Vc2_adc_range_count_div*Vc2_adc_range_fullvolt; // Volts per count. Full volt to count adc conversion. Volt = Count*Ratio.

    // Declare and define local variables for adc conversion from full voltage to counts (and vice versa)
    float Vbus_adc_range_count = (float) (4096 - Vbus_bias_count);                      // Full adc range in counts (w/ bias)
    //float Vbus_adc_range_count = (float) (4096 - Vbus_bias_count);
    float Vbus_adc_range_count_div = 1/Vbus_adc_range_count;            // Inverse of full adc range in counts (w/ bias)
    float Vbus_adc_range_fullvolt = (float) (VBUS_ADC_MAX_VOLT - VBUS_ADC_MIN_VOLT);        // Full adc range in volts (full voltage)
    float Vbus_adc_range_fullvolt_div = 1/Vbus_adc_range_fullvolt;  // Inverse of full adc range in volts (full voltage)
    // Define global adc conversion ratios for adc conversion from full voltage to counts (and vice versa)
    Vbus_adc_fullvolt_to_count_ratio = Vbus_adc_range_count*Vbus_adc_range_fullvolt_div; // Full volt to count adc conversion. Count = Volt*Ratio.
    Vbus_adc_count_to_fullvolt_ratio = Vbus_adc_range_count_div*Vbus_adc_range_fullvolt; // Full volt to count adc conversion. Volt = Count*Ratio.

    // Declare and define local variables for adc conversion from full voltage to counts (and vice versa)
    float Vc1_adc_range_count = (float) (4096 - Vc1_bias_count);                        // Full adc range in counts (w/ bias)
    //float Vc1_adc_range_count = (float) (4096 - 1707);
    float Vc1_adc_range_count_div = 1/Vc1_adc_range_count;          // Inverse of full adc range in counts (w/ bias)
    float Vc1_adc_range_fullvolt = (float) (VC1_ADC_MAX_VOLT - VC1_ADC_MIN_VOLT);       // Full adc range in volts (full voltage)
    float Vc1_adc_range_fullvolt_div = 1/Vc1_adc_range_fullvolt;    // Inverse of full adc range in volts (full voltage)
    // Define global adc conversion ratios for adc conversion from full voltage to counts (and vice versa)
    Vc1_adc_fullvolt_to_count_ratio = Vc1_adc_range_count*Vc1_adc_range_fullvolt_div; // Full volt to count adc conversion. Count = Volt*Ratio.
    Vc1_adc_count_to_fullvolt_ratio = Vc1_adc_range_count_div*Vc1_adc_range_fullvolt; // Full volt to count adc conversion. Volt = Count*Ratio.



    gain_dac = 32;



    // Initialize variablesw for Vc3 max functionality:
    Vc3_max_count = MOV_AVG_SIZE;

    // Enable loss compensation control loop for Vc2.
    enable_Vc2comp = enable_Vc2comp_false;

    // Set default Vc2 reference value;
    Vc2_ref_init_V = 8.00; // Set the Vc2 reference voltage (full volts).
                            // Note: 409.6 counts ideally corresponds to 10V with a 100V max (10V/100V * 4096) but experimentally 290 is better.
    Vc2_ref_V = Vc2_ref_init_V; // Set the Vc2 reference to the initialized value.

    Vc2_ref_init_V_div = 1/Vc2_ref_init_V; // Inverse value of Vc2_ref to avoid real-time floating point division.

    control_mode = controlmode_fixed; // Begin operation in fixed conversion ratio mode (Vc2 is static).
    Vc2_init_limit = 8; //4 originally // Boundary for fixed Vc2 conversion ratio to dynamic conversion ratio (in volts).

//  mov_avg_size = MOV_AVG_SIZE;
//  mov_avg_size_div = 1/MOV_AVG_SIZE; // Inverse value of mov_avg_size to avoid real-time floating point division.
//  mov_avg_size_div = 1/((float) mov_avg_size);    // Inverse of mov_avg_size. Note: Still doesn't work. Need to fix

    float sampling_period_s = (float) 1/SWITCHING_FREQ/1000;
    float T = sampling_period_s; // Shorthand notation for sampling period

    // PI controller coefficients & limits
    kp_PI = 1E-3;
    ki_PI = 3E-3;
    Vc2_integral_limit = 0.9;

    // Difference equation coefficients: integral controller. u(n) = b1*e(n) + b2*e(n-1) + a2*u(n-1)
    a2_I = 1;
    b1_I = T/2;
    b2_I = T/2;

    // Differentiator coefficient and cutoff frequency
    kd_diff = 1;
    fd_Hz = 20*MOV_AVG_FREQ; // Tuning knob for differentiator cutoff frequency. Too large = too much high freq noise. Too small = too attenuated input.
    float wd = 2*3.14159265*fd_Hz; // Convert fd from Hz to rad/s

    // Difference equation coefficients: differentiator. u(n) = b1*e(n) + b2*e(n-1) + a2*u(n-1)
    a2_diff = -(T*wd - 2)/(T*wd + 2);
    b1_diff = kd_diff*2*wd/(T*wd + 2);
    b2_diff = -kd_diff*2*wd/(T*wd + 2);

    // Q = 10, fs = 160 kHz, fm = 120 Hz
/*  b0_notch = 0.999764436050070;
    b1_notch = -1.99950667076240;
    b2_notch = 0.999764436050070;
    a1_notch = -1.99950667076240;
    a2_notch = 0.999528872100139;



    // Q = 5, fs = 160 kHz, fm = 120 Hz
    b0_notch = 0.999528983028615;
    b1_notch = -1.999035769948092;
    b2_notch = 0.999528983028615;
    a1_notch = -1.999035769948092;
    a2_notch = 0.999057966057229;

    //Q=2, fs = 160kHz, fm = 120 Hz
    b0_notch = 0.998823288491100;
    b1_notch = -1.99762439654412;
    b2_notch = 0.998823288491100;
    a1_notch = -1.99762439654412;
    a2_notch = 0.997646576982199;

    //Q = 1 fs = 160 kHz, fm = 120 Hz
    b0_notch = 0.997649339772466;
    b1_notch = -1.99527652517622;
    b2_notch = 0.997649339772466;
    a1_notch = -1.99527652517622;
    a2_notch = 0.995298679544933;

    // Q = 5, fs = 160 kHz, fm = 120.6 Hz
        b0_notch = 0.999526629058235;
        b1_notch = -1.99903083954455;
        b2_notch = 0.999526629058235;
        a1_notch = -1.99903083954455;
        a2_notch = 0.999053258116470;


    // Q = 10, fs = 160 kHz, fm = 120.8 Hz
        b0_notch = 0.999762865996079;
        b1_notch = -1.99950323368574;
        b2_notch = 0.999762865996079;
        a1_notch = -1.99950323368574;
        a2_notch = 0.999525731992159;


    b0_notch_pll_120 = 0.998823288491100;
    b1_notch_pll_120 = -1.99762439654412;
    b2_notch_pll_120 = 0.998823288491100;
    a1_notch_pll_120 = -1.99762439654412;
    a2_notch_pll_120 = 0.997646576982199;

    b0_notch_pll_240 = 0.997649339772466;
    b1_notch_pll_240 = -1.99521006256207;
    b2_notch_pll_240 = 0.997649339772466;
    a1_notch_pll_240 = -1.99521006256207;
    a2_notch_pll_240 = 0.995298679544933;*/

    //Q = 5, fs = 160kHz
   /* b0_notch_pll_120 = 0.999528983028615;
    b1_notch_pll_120 = -1.99903576994809;
    b2_notch_pll_120 = 0.999528983028615;
    a1_notch_pll_120 = -1.99903576994809;
    a2_notch_pll_120 = 0.999057966057229;*/

    b0_notch_pll_240 = 0.999058409353407;
    b1_notch_pll_240 = -1.99802807656224;
    b2_notch_pll_240 = 0.999058409353407;
    a1_notch_pll_240 = -1.99802807656224;
    a2_notch_pll_240 = 0.998116818706814;

    float k_sogi = 0.2;
    float wn_pll = 2*3.14159265358979323846*120.0;
    float x_sogi = 2*k_sogi*wn_pll*T;
    float y_sogi = wn_pll*wn_pll*T*T;

    b0_sogi = x_sogi/(x_sogi+y_sogi+4);
    b2_sogi = -x_sogi/(x_sogi+y_sogi+4);
    a1_sogi = (8-2*y_sogi)/(x_sogi+y_sogi+4);
    a2_sogi = (x_sogi-y_sogi-4)/(x_sogi+y_sogi+4);

    // First-order LPF cut-off frequency
    w_lpf = 80;
    // First-order LPF difference equation coefficients
    //This is using Tustin's method for a single order LPF
    b0_lpf = w_lpf*T/(w_lpf*T + 2);
    b1_lpf = b0_lpf;
    a1_lpf = (w_lpf*T - 2)/(w_lpf*T + 2);

    w_c1_lpf = 60;
    b0_c1_lpf = w_c1_lpf*T/(w_c1_lpf*T + 2);
    b1_c1_lpf = b0_c1_lpf;
    a1_c1_lpf = (w_c1_lpf*T - 2)/(w_c1_lpf*T + 2);

    w_vbus_lpf = 2*3.14*1000;
    b0_vbus_lpf = w_vbus_lpf*T/(w_vbus_lpf*T + 2);
    b1_vbus_lpf = b0_vbus_lpf;
    a1_vbus_lpf = (w_vbus_lpf*T - 2)/(w_vbus_lpf*T + 2);

}

void Disable_unused_clk()
{
    EALLOW;
    CpuSysRegs.PCLKCR0.bit.CLA1 = 0;
    CpuSysRegs.PCLKCR0.bit.DMA = 0;
    CpuSysRegs.PCLKCR0.bit.CPUTIMER0 = 0;
    CpuSysRegs.PCLKCR0.bit.CPUTIMER1 = 0;
    CpuSysRegs.PCLKCR0.bit.CPUTIMER2 = 0;
    //CpuSysRegs.PCLKCR0.bit.HRPWM = 1;
    //CpuSysRegs.PCLKCR0.bit.TBCLKSYNC = 1;

    CpuSysRegs.PCLKCR1.bit.EMIF1 = 0;
    CpuSysRegs.PCLKCR1.bit.EMIF2 = 0;

    //CpuSysRegs.PCLKCR2.bit.EPWM1 = 1;
    //CpuSysRegs.PCLKCR2.bit.EPWM2 = 1;
    //CpuSysRegs.PCLKCR2.bit.EPWM3 = 1;
    //CpuSysRegs.PCLKCR2.bit.EPWM4 = 1;
    //CpuSysRegs.PCLKCR2.bit.EPWM5 = 1;
    //CpuSysRegs.PCLKCR2.bit.EPWM6 = 1;
    //CpuSysRegs.PCLKCR2.bit.EPWM7 = 1;
    CpuSysRegs.PCLKCR2.bit.EPWM8 = 0;
    CpuSysRegs.PCLKCR2.bit.EPWM9 = 0;
    CpuSysRegs.PCLKCR2.bit.EPWM10 = 0;
    CpuSysRegs.PCLKCR2.bit.EPWM11 = 0;
    CpuSysRegs.PCLKCR2.bit.EPWM12 = 0;

    CpuSysRegs.PCLKCR3.bit.ECAP1 = 0;
    CpuSysRegs.PCLKCR3.bit.ECAP2 = 0;
    CpuSysRegs.PCLKCR3.bit.ECAP3 = 0;
    CpuSysRegs.PCLKCR3.bit.ECAP4 = 0;
    CpuSysRegs.PCLKCR3.bit.ECAP5 = 0;
    CpuSysRegs.PCLKCR3.bit.ECAP6 = 0;

    CpuSysRegs.PCLKCR4.bit.EQEP1 = 0;
    CpuSysRegs.PCLKCR4.bit.EQEP2 = 0;
    CpuSysRegs.PCLKCR4.bit.EQEP3 = 0;

    CpuSysRegs.PCLKCR6.bit.SD1 = 0;
    CpuSysRegs.PCLKCR6.bit.SD2 = 0;

    CpuSysRegs.PCLKCR7.bit.SCI_A = 0;
    CpuSysRegs.PCLKCR7.bit.SCI_B = 0;
    CpuSysRegs.PCLKCR7.bit.SCI_C = 0;
    CpuSysRegs.PCLKCR7.bit.SCI_D = 0;

    CpuSysRegs.PCLKCR8.bit.SPI_A = 0;
    CpuSysRegs.PCLKCR8.bit.SPI_B = 0;
    CpuSysRegs.PCLKCR8.bit.SPI_C = 0;

    CpuSysRegs.PCLKCR9.bit.I2C_A = 0;
    CpuSysRegs.PCLKCR9.bit.I2C_B = 0;

    CpuSysRegs.PCLKCR10.bit.CAN_A = 0;
    CpuSysRegs.PCLKCR10.bit.CAN_B = 0;

    CpuSysRegs.PCLKCR11.bit.McBSP_A = 0;
    CpuSysRegs.PCLKCR11.bit.McBSP_B = 0;
    CpuSysRegs.PCLKCR11.bit.USB_A = 0;

    CpuSysRegs.PCLKCR12.bit.uPP_A = 0;

    //CpuSysRegs.PCLKCR13.bit.ADC_A = 1;
    //CpuSysRegs.PCLKCR13.bit.ADC_B = 1;
    //CpuSysRegs.PCLKCR13.bit.ADC_C = 1;
    //CpuSysRegs.PCLKCR13.bit.ADC_D = 1;

    CpuSysRegs.PCLKCR14.bit.CMPSS1 = 0;
    CpuSysRegs.PCLKCR14.bit.CMPSS2 = 0;
    CpuSysRegs.PCLKCR14.bit.CMPSS3 = 0;
    CpuSysRegs.PCLKCR14.bit.CMPSS4 = 0;
    CpuSysRegs.PCLKCR14.bit.CMPSS5 = 0;
    CpuSysRegs.PCLKCR14.bit.CMPSS6 = 0;
    CpuSysRegs.PCLKCR14.bit.CMPSS7 = 0;
    CpuSysRegs.PCLKCR14.bit.CMPSS8 = 0;

    //CpuSysRegs.PCLKCR16.bit.DAC_A = 0;
    //CpuSysRegs.PCLKCR16.bit.DAC_B = 0;
    //CpuSysRegs.PCLKCR16.bit.DAC_C = 0;

    EDIS;
}

void Clear_interrupts()
{
    // Initialize the PIE control registers to their default state.
    // The default state is all PIE interrupts disabled and flags
    // are cleared.
        InitPieCtrl();

    // Disable CPU interrupts and clear all CPU interrupt flags:
        EALLOW;
        IER = 0x0000;
        IFR = 0x0000;
        EDIS;

    // Initialize the PIE vector table with pointers to the shell Interrupt
    // Service Routines (ISR).
    // This will populate the entire table, even if the interrupt
    // is not used in this example.  This is useful for debug purposes.
    // The shell ISR routines are found in F2837xD_DefaultIsr.c.
        InitPieVectTable();

    //Map ISR functions
        EALLOW;
//      PieVectTable.ADCA1_INT = &ac_trigger; //function for ADCa interrupt 1
//      PieVectTable.ADCA2_INT = &bd_trigger; //function for ADCa interrupt 2
        EDIS;
}

void Init_DACs(){

    // Enable DACOUTA
    EALLOW;
    //Use VDAC as the reference for DAC
    DacaRegs.DACCTL.bit.DACREFSEL = 1;
    //Enable DAC output
    DacaRegs.DACOUTEN.bit.DACOUTEN = 1;
    //Set DAC to some initial value
    DacaRegs.DACVALS.bit.DACVALS = 2048;

    //Use VDAC as the reference for DAC
    DacbRegs.DACCTL.bit.DACREFSEL = 1;
    //Enable DAC output
    DacbRegs.DACOUTEN.bit.DACOUTEN = 1;
    //Set DAC to some initial value
    DacbRegs.DACVALS.bit.DACVALS = 2048;

    //Use VDAC as the reference for DAC
    DaccRegs.DACCTL.bit.DACREFSEL = 1;
    //Enable DAC output
    DaccRegs.DACOUTEN.bit.DACOUTEN = 1;
    //Set DAC to some initial value
    DaccRegs.DACVALS.bit.DACVALS = 2048;
    EDIS;
}

void Init_EPwms()
{

    // Enable ePWM clocks
    CpuSysRegs.PCLKCR2.bit.EPWM1=1;

    CpuSysRegs.PCLKCR2.bit.EPWM2=1;

    //CpuSysRegs.PCLKCR2.bit.EPWM3=1;


    // Initialize GPIO mux for desired ePWM
    // These functions are defined in F2837xD_EPwm.c
    InitEPwm1Gpio();
    InitEPwm2Gpio();
   // InitEPwm3Gpio();


    // Configure EPwm1 to provide gate signals to full bridge
    InitEPwmB_X(EPwm_CH1, PERIOD, DEFAULT_DUTY, SSB_DEADTIME, EPwm_Mod_TrailingTriangle, EPwm_Comp_False);
    // Configure EPwm1 to trigger ADC events
    InitEPwmADC(EPwm_CH1);

    // Configure EPwm2 to provide the gate signals to the full-bridge buffer and EPwm3 to provide gate signals to charge injection
    InitEPwmA_X(EPwm_CH2, PERIOD, DEFAULT_DUTY, SSB_DEADTIME, EPwm_Mod_TrailingTriangle, EPwm_Comp_True);
    //InitEPwmA_X(EPwm_CH3, PERIOD, DEFAULT_DUTY, DEFAULT_DEADTIME, EPwm_Mod_TrailingTriangle, EPwm_Comp_True);
}


// This function arbitrarily configures basic functionality for all ePWM modules
// This function is configured to take the following inputs: desired PWM channel, PWM period (in number of pwm clock counts),
// duty cycle (in decimal ranging form 0 to 1), dead time (in number of pwm clock counts), PWM modulation type
// (can be trailing edge, leading edge, trailing triangle, or leading triangle), PWMxA and PWMxB complimentary mode or not
// (can be complimentary or not complimentary)
void InitEPwmA_X(EPwm_Channel pwm_chan, Uint32 period, float duty_cycle, Uint16 deadtime, EPwm_ModulationType pwm_modtype, EPwm_ComplimentaryMode pwm_comp)
{

    EALLOW;

    ePWM[pwm_chan]->TBPRD = PERIOD;                   // Set timer period
    ePWM[pwm_chan]->TBPHS.bit.TBPHS = 0x0000;           // Phase is 0
    ePWM[pwm_chan]->TBCTR = 0x0000;                     // Clear counter
    ePWM[pwm_chan]->TBCTL.bit.PRDLD = TB_SHADOW;

    // Setup TBCLK
    switch(pwm_modtype) {
        case EPwm_Mod_TrailingEdge :
            ePWM[pwm_chan]->TBCTL.bit.CTRMODE = TB_COUNT_UP;        // Count up
            // Set actions -- Note: these values are closely tied to the CTRMODE and POLSEL bits
            ePWM[pwm_chan]->AQCTLA.bit.CAU = AQ_CLEAR;              // Set ePWMxA low when TBCTR = CMPA (and TBCTR is incrementing)
            ePWM[pwm_chan]->AQCTLA.bit.ZRO = AQ_SET;                // Set ePWMxA high when TBCTR = 0
            break;
        case EPwm_Mod_LeadingEdge :
            ePWM[pwm_chan]->TBCTL.bit.CTRMODE = TB_COUNT_DOWN;      // Count down
            // Set actions -- Note: these values are closely tied to the CTRMODE and POLSEL bits
            ePWM[pwm_chan]->AQCTLA.bit.CAD = AQ_SET;                // Set ePWMxA low when TBCTR = CMPA (and TBCTR is decrementing)
            ePWM[pwm_chan]->AQCTLA.bit.PRD = AQ_CLEAR;              // Set ePWMxA low when TBCTR = TBPRD
            break;
        case EPwm_Mod_TrailingTriangle :
            ePWM[pwm_chan]->TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN;    // Count up then count down
            ePWM[pwm_chan]->TBPRD = (ePWM[pwm_chan]->TBPRD)/2;      // Adjust desired ePWM period to account for up                                                     // for one timer period then down for one timer period
            // Set actions -- Note: these values are closely tied to the CTRMODE and POLSEL bits
            ePWM[pwm_chan]->AQCTLA.bit.CAU = AQ_CLEAR;              // Set ePWMxA low when TBCTR = CMPA (and TBCTR is incrementing)
            ePWM[pwm_chan]->AQCTLA.bit.CAD = AQ_SET;                // Set ePWMxA high when TBCTR = CMPA (and TBCTR is decrementing)
            break;
        case EPwm_Mod_LeadingTriangle :
            ePWM[pwm_chan]->TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN;    // Count up then count down
            ePWM[pwm_chan]->TBPRD = (ePWM[pwm_chan]->TBPRD)/2;      // Adjust desired ePWM period to account for up                                                     // for one timer period then down for one timer period
            // Set actions -- Note: these values are closely tied to the CTRMODE and POLSEL bits
            ePWM[pwm_chan]->AQCTLA.bit.CAU = AQ_SET;                // Set ePWMxA high when TBCTR = CMPA (and TBCTR is incrementing)
            ePWM[pwm_chan]->AQCTLA.bit.CAD = AQ_CLEAR;              // Set ePWMxA low when TBCTR = CMPA (and TBCTR is decrementing)
            break;
        default :
            break;
    }
    ePWM[pwm_chan]->TBCTL.bit.PHSEN = TB_ENABLE;                // Secondary phase
    ePWM[pwm_chan]->TBCTL.bit.HSPCLKDIV = TB_DIV1;              // Clock ratio to SYSCLKOUT is equal to 1 (sysclock = epwm clock)
    ePWM[pwm_chan]->TBCTL.bit.CLKDIV = TB_DIV1;                 // TBCLK = EPWMCLK/(HSPCLKDIV * CLKDIV) = sysclock
    ePWM[pwm_chan]->TBCTL.bit.SYNCOSEL = TB_SYNC_IN;            // output EPWMxSYNCO from EPWMxSYNCI

    // Setup compare register loading
    ePWM[pwm_chan]->CMPCTL.bit.LOADAMODE = CC_CTR_ZERO;  // load from shadow registor to active register from at CTR=ZERO
    ePWM[pwm_chan]->CMPCTL.bit.LOADBMODE = CC_CTR_ZERO;
    ePWM[pwm_chan]->CMPCTL.bit.SHDWAMODE = CC_SHADOW;// configure pwm as a slave (for syncing) (Note: the default is slave), enable shadow mode
    ePWM[pwm_chan]->CMPCTL.bit.SHDWBMODE = CC_SHADOW;

    // Setup compare (aka duty cycle)
    ePWM[pwm_chan]->CMPA.bit.CMPA = (ePWM[pwm_chan]->TBPRD)*DEFAULT_DUTY;

    // Set up PWMxA and PWMxB, and setup the deadband
    ePWM[pwm_chan]->DBCTL.bit.OUT_MODE = DB_FULL_ENABLE; //enable deadband operation
    ePWM[pwm_chan]->DBCTL.bit.IN_MODE = DBA_ALL; //specify source of rising and falling time
    switch(pwm_comp) {
        case EPwm_Comp_True :
            ePWM[pwm_chan]->DBCTL.bit.POLSEL = DB_ACTV_HIC;         // Active high complimentary mode. ePWMxB is inverted.
            break;
        case EPwm_Comp_False :
            ePWM[pwm_chan]->DBCTL.bit.POLSEL = DB_ACTV_HI;          // Active high mode. ePWMxA and ePWMxB are in phase.
            break;
        default :
            break;
    }

    ePWM[pwm_chan]->DBRED = deadtime;
    ePWM[pwm_chan]->DBFED = deadtime;

    EDIS;

}

void InitEPwmB_X(EPwm_Channel pwm_chan, Uint32 period, float duty_cycle, Uint16 deadtime, EPwm_ModulationType pwm_modtype, EPwm_ComplimentaryMode pwm_comp)
{

    EALLOW;

    ePWM[pwm_chan]->TBPRD = PERIOD;                   // Set timer period
    ePWM[pwm_chan]->TBPHS.bit.TBPHS = 0x0000;           // Phase is 0
    ePWM[pwm_chan]->TBCTR = 0x0000;                     // Clear counter
    ePWM[pwm_chan]->TBCTL.bit.PRDLD = TB_SHADOW;

    // Setup TBCLK
    switch(pwm_modtype) {
        case EPwm_Mod_TrailingEdge :
            ePWM[pwm_chan]->TBCTL.bit.CTRMODE = TB_COUNT_UP;        // Count up
            // Set actions -- Note: these values are closely tied to the CTRMODE and POLSEL bits
            ePWM[pwm_chan]->AQCTLB.bit.CBU = AQ_CLEAR;              // Set ePWMxB low when TBCTR = CMPA (and TBCTR is incrementing)
            ePWM[pwm_chan]->AQCTLB.bit.ZRO = AQ_SET;                // Set ePWMxB high when TBCTR = 0
            break;
        case EPwm_Mod_LeadingEdge :
            ePWM[pwm_chan]->TBCTL.bit.CTRMODE = TB_COUNT_DOWN;      // Count down
            // Set actions -- Note: these values are closely tied to the CTRMODE and POLSEL bits
            ePWM[pwm_chan]->AQCTLB.bit.CBD = AQ_SET;                // Set ePWMxB low when TBCTR = CMPB (and TBCTR is decrementing)
            ePWM[pwm_chan]->AQCTLB.bit.PRD = AQ_CLEAR;              // Set ePWMxB low when TBCTR = TBPRD
            break;
        case EPwm_Mod_TrailingTriangle :
            ePWM[pwm_chan]->TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN;    // Count up then count down
            ePWM[pwm_chan]->TBPRD = (ePWM[pwm_chan]->TBPRD)/2;      // Adjust desired ePWM period to account for up                                                     // for one timer period then down for one timer period
            // Set actions -- Note: these values are closely tied to the CTRMODE and POLSEL bits
            ePWM[pwm_chan]->AQCTLB.bit.CBU = AQ_CLEAR;              // Set ePWMxB low when TBCTR = CMPB (and TBCTR is incrementing)
            ePWM[pwm_chan]->AQCTLB.bit.CBD = AQ_SET;                // Set ePWMxB high when TBCTR = CMPB (and TBCTR is decrementing)
            break;
        case EPwm_Mod_LeadingTriangle :
            ePWM[pwm_chan]->TBCTL.bit.CTRMODE = TB_COUNT_UPDOWN;    // Count up then count down
            ePWM[pwm_chan]->TBPRD = (ePWM[pwm_chan]->TBPRD)/2;      // Adjust desired ePWM period to account for up                                                     // for one timer period then down for one timer period
            // Set actions -- Note: these values are closely tied to the CTRMODE and POLSEL bits
            ePWM[pwm_chan]->AQCTLB.bit.CBU = AQ_SET;                // Set ePWMxB high when TBCTR = CMPB (and TBCTR is incrementing)
            ePWM[pwm_chan]->AQCTLB.bit.CBD = AQ_CLEAR;              // Set ePWMxB low when TBCTR = CMPB (and TBCTR is decrementing)
            break;
        default :
            break;
    }
    ePWM[pwm_chan]->TBCTL.bit.PHSEN = TB_ENABLE;                // Secondary phase
    ePWM[pwm_chan]->TBCTL.bit.HSPCLKDIV = TB_DIV1;              // Clock ratio to SYSCLKOUT is equal to 1 (sysclock = epwm clock)
    ePWM[pwm_chan]->TBCTL.bit.CLKDIV = TB_DIV1;                 // TBCLK = EPWMCLK/(HSPCLKDIV * CLKDIV) = sysclock
    ePWM[pwm_chan]->TBCTL.bit.SYNCOSEL = TB_SYNC_IN;            // output EPWMxSYNCO from EPWMxSYNCI

    // Setup compare register loading
    ePWM[pwm_chan]->CMPCTL.bit.LOADAMODE = CC_CTR_ZERO;  // load from shadow registor to active register from at CTR=ZERO
    ePWM[pwm_chan]->CMPCTL.bit.LOADBMODE = CC_CTR_ZERO;
    ePWM[pwm_chan]->CMPCTL.bit.SHDWAMODE = CC_SHADOW;// configure pwm as a slave (for syncing) (Note: the default is slave), enable shadow mode
    ePWM[pwm_chan]->CMPCTL.bit.SHDWBMODE = CC_SHADOW;

    // Setup compare (aka duty cycle)
    ePWM[pwm_chan]->CMPB.bit.CMPB = (ePWM[pwm_chan]->TBPRD)*DEFAULT_DUTY;

    // Set up PWMxA and PWMxB, and setup the deadband
    ePWM[pwm_chan]->DBCTL.bit.OUT_MODE = DB_FULL_ENABLE; //enable deadband operation
    ePWM[pwm_chan]->DBCTL.bit.IN_MODE = DBB_ALL; //specify source of rising and falling time
    switch(pwm_comp) {
        case EPwm_Comp_True :
            ePWM[pwm_chan]->DBCTL.bit.POLSEL = DB_ACTV_LOC;         // Active low complimentary mode. ePWMxB iA inverted.
            break;
        case EPwm_Comp_False :
            ePWM[pwm_chan]->DBCTL.bit.POLSEL = DB_ACTV_HI;          // Active high mode. ePWMxA and ePWMxB are in phase.
            break;
        default :
            break;
    }

    ePWM[pwm_chan]->DBRED = deadtime;
    ePWM[pwm_chan]->DBFED = deadtime;

    EDIS;

}

// This function configures the specified EPwm channel for triggering ADC events
void InitEPwmADC(EPwm_Channel pwm_chan)
{
    // Setup compare
    //ePWM[pwm_chan]->CMPA.bit.CMPA = (ePWM[pwm_chan]->TBPRD) >> 1;         // make the ePWM have duty ratio 0.5, commented this out since I initialized ePWM1 already in InitEPwm_X()

    ePWM[pwm_chan]->TBCTL.bit.PHSEN = TB_DISABLE;           // Disable phase loading, already disabled in InitEPwm_X()
    ePWM[pwm_chan]->TBCTL.bit.SYNCOSEL = TB_CTR_ZERO;       // output EPWMxSYNCO when TBCTR=0
                                                            // configure pwm as a master (for syncing) (Note: the default is slave)

    // Enable master-PWM interrupt pulse generations
    ePWM[pwm_chan]->ETSEL.bit.SOCAEN  = 1;                  // enable SOC on A group
    ePWM[pwm_chan]->ETSEL.bit.SOCASEL = ET_CTR_PRD;         // Select SOC on TBCTR = PRD
    ePWM[pwm_chan]->ETPS.bit.SOCAPRD = ET_1ST;             // Generate pulse on 1st event
}

void Init_interrupts()
{
    // Step 1: Disable interrupts globally

    // Disable CPU interrupts
    DINT;

    // Initialize the PIE control registers to their default state.
    // The default state is all PIE interrupts disabled and flags
    // are cleared.
    InitPieCtrl();

    // Disable CPU interrupts and clear all CPU interrupt flags:
    EALLOW;
    IER = 0x0000;
    IFR = 0x0000;
    EDIS;

    // Step 2: Enable the PIE by setting the ENPIE bit of the PIECTRL register.

    // Initialize the PIE vector table with pointers to the shell Interrupt
    // Service Routines (ISR).
    // This will populate the entire table, even if the interrupt
    // is not used in this example.  This is useful for debug purposes.
    // The shell ISR routines are found in F2837xD_DefaultIsr.c.
    InitPieVectTable();

    // Enable the PIE
    PieCtrlRegs.PIECTRL.bit.ENPIE = 1;

    // Step 3: Write the ISR vector for each interrupt to the appropriate location in the PIE vector table, which can be found in Table 2-2.

    EALLOW;

    //Map ISR functions
    PieVectTable.ADCB1_INT = &ADC_interrupt1; // ISR function address for ADCB interrupt #1
//  PieVectTable.ADCC1_INT = &ADC_interrupt2; //ISR function address for ADCC interrupt #1

    // Step 4: Set the appropriate PIEIERx bit for each interrupt. The PIE group and channel assignments can be found in Table 2-2.

    //Enable PIE interrupt (see Table 2.2 of Technical Reference Manual)
    PieCtrlRegs.PIEIER1.bit.INTx2 = 1; //for ADCB1_INT (ADCB Interrupt #1)
//  PieCtrlRegs.PIEIER1.bit.INTx3 = 1; //for ADCC1_INT (ADCC Interrupt #1)

    // Step 5: Set the CPU IER bit for any PIE group containing enabled interrupts.

    IER |= M_INT1; //Enable group 1 interrupts
//  IER |= M_INT10; //Enable group 10 interrupts

    EDIS;

    // Step 6: Enable the interrupt in the peripheral.

    // This step is completed in main.c
}

void Enable_interrupts()
{
    // Step 7: Enable interrupts globally (EINT or CLRC INTM).

    // Enable global Interrupts and higher priority real-time debug events:
    EINT;   // Enable Global interrupt INTM
    ERTM;   // Enable Global realtime interrupt DBGM

}

void Init_ADCs()
{

    // Initialize ADC sampling
    //InitADCa(); // init ADCa, DAC Out
    InitADCb(); // init ADCb, VC1 Diff
    InitADCc(); // init ADCc, VC2 Diff
    InitADCd(); // init ADCd, VDC

}

void InitADCa(void)
{
    EALLOW;
    //write configurations
    AdcaRegs.ADCCTL2.bit.PRESCALE = 6; //set ADCCLK divider to /4, So running at 50 MHz
    AdcSetMode(ADC_ADCA, ADC_RESOLUTION_12BIT, ADC_SIGNALMODE_SINGLE); //12 bit resolution, Single ended signal since it's measured on 1 pin
    //Set pulse positions to late (at the end of conversion)
    AdcaRegs.ADCCTL1.bit.INTPULSEPOS = 1; //interrupt at end of the conversion
    //power up the ADC
    AdcaRegs.ADCCTL1.bit.ADCPWDNZ = 1;

    //SOC1 measure Vbus on pin A2
    AdcaRegs.ADCSOC0CTL.bit.CHSEL = 0;  //SOC0 will convert channel 2 of ADCA (pin A2)
    AdcaRegs.ADCSOC0CTL.bit.ACQPS = 50; //sample window (# of SYSCLK, needs to corresponds to at least 75ns)
    AdcaRegs.ADCSOC0CTL.bit.TRIGSEL = 5; //trigger on ePWM1 SOCA

    EDIS;
}

void InitADCb(void)
{
    EALLOW;
    //write configurations
    AdcbRegs.ADCCTL2.bit.PRESCALE = 6; //set ADCCLK divider to /4, So running at 50 MHz
    AdcSetMode(ADC_ADCB, ADC_RESOLUTION_12BIT, ADC_SIGNALMODE_SINGLE); //12 bit resolution, Single ended signal since it's measured on 1 pin
    //Set pulse positions to late (at the end of conversion)
    AdcbRegs.ADCCTL1.bit.INTPULSEPOS = 1; //interrupt at end of the conversion
    //power up the ADC
    AdcbRegs.ADCCTL1.bit.ADCPWDNZ = 1;

    //SOC0 measure Vc1 on pin B3
//  AdcbRegs.ADCSOC0CTL.bit.CHSEL = 3;  //SOC0 will convert channel 3 of ADCB (pin B3)
    //SOC0 measure Vc1 on pin B0
    AdcbRegs.ADCSOC0CTL.bit.CHSEL = 0;  //SOC0 will convert channel 2 of ADCB (pin B2)
    AdcbRegs.ADCSOC0CTL.bit.ACQPS = 50; //sample window (# of SYSCLK, needs to corresponds to at least 75ns) this may be in hex
    AdcbRegs.ADCSOC0CTL.bit.TRIGSEL = 5; //trigger on ePWM1a SOCA

    // Enable interrupt for SOC0 of ADCB (in this case, B3 = SOC0)
    AdcbRegs.ADCINTSEL1N2.bit.INT1SEL = 0; //end of SOC0 (i.e. EOC0) will set INT1 flag
    AdcbRegs.ADCINTSEL1N2.bit.INT1E = 1;   //enable INT1 flag
    AdcbRegs.ADCINTSEL1N2.bit.INT1CONT = 0;   //No further ADCINT1 pulses are generated until ADCINT1 flag is cleared by user
    AdcbRegs.ADCINTFLGCLR.bit.ADCINT1 = 1; //make sure INT1 flag is cleared

    EDIS;
}


void InitADCc(void)
{
    EALLOW;
    //write configurations
    AdccRegs.ADCCTL2.bit.PRESCALE = 6; //set ADCCLK divider to /4
    AdcSetMode(ADC_ADCC, ADC_RESOLUTION_12BIT, ADC_SIGNALMODE_SINGLE);
    //Set pulse positions to late (at the end of conversion)
    AdccRegs.ADCCTL1.bit.INTPULSEPOS = 1;
    //power up the ADC
    AdccRegs.ADCCTL1.bit.ADCPWDNZ = 1;

    //SOC1 measure Vc2 on pin C2
    AdccRegs.ADCSOC0CTL.bit.CHSEL = 2;  //SOC0 will convert channel 2 of ADCC (pin C2)
    AdccRegs.ADCSOC0CTL.bit.ACQPS = 50; //sample window (# of SYSCLK, needs to corresponds to at least 75ns)
    AdccRegs.ADCSOC0CTL.bit.TRIGSEL = 5; //trigger on ePWM1a SOCA

    EDIS;
}

void InitADCd(void)
{
    EALLOW;
    //write configurations
    AdcdRegs.ADCCTL2.bit.PRESCALE = 6; //set ADCCLK divider to /4
    AdcSetMode(ADC_ADCD, ADC_RESOLUTION_12BIT, ADC_SIGNALMODE_SINGLE);
    //Set pulse positions to late (at the end of conversion)
    AdcdRegs.ADCCTL1.bit.INTPULSEPOS = 1;
    //power up the ADC
    AdcdRegs.ADCCTL1.bit.ADCPWDNZ = 1;

    //SOC1 measure Vdc on pin D1
    AdcdRegs.ADCSOC0CTL.bit.CHSEL = 1;  //SOC0 will convert channel 1 of ADCD (pin D1)
    AdcdRegs.ADCSOC0CTL.bit.ACQPS = 50; //sample window (# of SYSCLK, needs to corresponds to at least 75ns)
    AdcdRegs.ADCSOC0CTL.bit.TRIGSEL = 5; //trigger on ePWM1a SOCA

    EDIS;
}



// This function calculates the bias on all ADC inputs (especially desirable for differential voltage and current sensors)
// and stores as a global variable for later use
void ADC_bias(void)
{
    // The first ADC reading might not be accurate, so do a dummy read and throw away this value
    ADC_conversion_wait(); // Wait for the ADC conversion to finish
    dummy_read = AdcaResultRegs.ADCRESULT0; // (ADCA SOC0)
//  dummy_read = AdcaResultRegs.ADCRESULT1;
    dummy_read = AdcbResultRegs.ADCRESULT0; // (ADCB SOC0)
//  dummy_read = AdcbResultRegs.ADCRESULT1; // (ADCB SOC1)
    dummy_read = AdccResultRegs.ADCRESULT0; // (ADCC SOC0)
//  dummy_read = AdccResultRegs.ADCRESULT1; // (ADCC SOC1)
//  dummy_read = AdcdResultRegs.ADCRESULT0;
//  dummy_read = AdcdResultRegs.ADCRESULT1;
    ADC_clear_all_interrupt_flags(); // Clear all interrupt flags

    // wait........
    // make sure wait for 1s at least for all the external circuit to power on !!!!!
    // 1s is the measured delay from power on to current sensing amp has valid signal
    // otherwise the bias measurement might have unexpected error
    DELAY_US(700000);

    Uint32 Vbus_bias_count_sum = 0;
    Uint32 Vc1_bias_count_sum = 0;
    Uint32 Vc2_bias_count_sum = 0;
    // measure bias voltage of current sensing amplifier
    Uint16 adc_read_count = 0;
    Uint16 adc_read_count_num_bits = 9; // Number of bits to average for ADC measurement (9 bits = 512 counts)
    for (adc_read_count=0; adc_read_count<(1<<adc_read_count_num_bits); adc_read_count++)
    {
        ADC_conversion_wait(); // Wait for the ADC conversion to finish
        Vc1_bias_count_sum += AdcbResultRegs.ADCRESULT0;  // read result from ADCB SOC0
        Vc2_bias_count_sum += AdccResultRegs.ADCRESULT0;  // read result from ADCC SOC0
        Vbus_bias_count_sum += AdcdResultRegs.ADCRESULT0;  // read result from ADCA SOC0

        ADC_clear_all_interrupt_flags(); // Clear all interrupt flags
    }

    //Divide by 2^12 = 4096 to get average value
    Vbus_bias_count = Vbus_bias_count_sum>>adc_read_count_num_bits;
    Vc1_bias_count = Vc1_bias_count_sum>>adc_read_count_num_bits;
    Vc2_bias_count = Vc2_bias_count_sum>>adc_read_count_num_bits;
}

// This function waits until all enabled ADC conversions are finished.
// Note: call this function only after ADC triggering is enabled but before interrupts are enabled
void ADC_conversion_wait(void)
{
    // Make sure all ADC conversions are finished (check interrupt flag)
    while (AdcbRegs.ADCINTFLG.bit.ADCINT1 != 1);

}

void ADC_clear_all_interrupt_flags(void)
{
    // Call all interrupt clear flag functions
    ADC_clear_interrupt1_flag();
}

void ADC_clear_interrupt1_flag(void)
{
    AdcbRegs.ADCINTFLGCLR.bit.ADCINT1 = 1; //clear INT1 flag on ADCB
}
