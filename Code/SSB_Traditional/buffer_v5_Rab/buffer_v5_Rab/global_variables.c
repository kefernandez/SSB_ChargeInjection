/*
 * global_variables.c
 *
 *  Created on: Mar 21, 2017
 *      Author: NathanBrooks
 *      Edited by Kelly Fernandez on April 6th, 2021
 */

#include "F28x_Project.h"     // Device Headerfile and Examples Include File
#include "global_define.h"
#include "global_variables.h"

// Construct an array of EPWM_REGS structures (see "F2837xD_epwm.h")
volatile struct EPWM_REGS *ePWM[NUM_EPWM_CH] =
    {  &EPwm1Regs, &EPwm2Regs, &EPwm3Regs, &EPwm4Regs, &EPwm5Regs,
       &EPwm6Regs, &EPwm7Regs, &EPwm8Regs};

// Dummy variable for ADC measurment
Uint16 dummy_read = 0;

Enable_Vc2comp_Type enable_Vc2comp = enable_Vc2comp_false;

// ADC voltage measurements (in counts)
int16 Vbus_count = 0;
int16 Vc1_count = 0;
int16 Vc2_count = 0;

Uint16 Vbus_bias_count = 0;
Uint16 Vc1_bias_count = 0;
Uint16 Vc2_bias_count = 0;

// ADC voltage measurements (in volts)
float Vbus_V = 0;
float Vc3_V = 0;
float Vc2_V = 0;
float Vc1_V = 0;

// Moving average variables
float Vc1_avg_V = 0;
float Vc1_bpf_V = 0;
float Vc1_bpf_V_old = 0;
float Vc2_avg_count = 0;
float Vc2_avg_V = 0;
float Vbus_avg_V = 0;

// PI controller parameters and coefficients
float kp_PI = 0;
float ki_PI = 0;
float Vc2_integral_limit = 0;
float a2_I = 0;
float b1_I = 0;
float b2_I = 0;
// PI controller sample variables
float Vc2_error = 0;
float Vc2_error_old = 0;
float Vc2_integral = 0;
float Vc2_integral_old = 0;
float Vc2_PI = 0;

float K = 0;
float dVc2_comp = 0;

float kd_diff = 0;
float fd_Hz = 0;
float a2_diff = 0;
float b1_diff = 0;
float b2_diff = 0;
float Vc1_bpf_diff_V = 0;
float Vc1_bpf_diff_V_old = 0;

// Notch filter coefficients are float32 types because high precision is required.
/*float32 b0_notch = 0;
float32 b1_notch = 0;
float32 b2_notch = 0;
float32 a1_notch = 0;
float32 a2_notch = 0;
// Notch filter sample variables
float32 notch_out2 = 0;
float32 notch_out1 = 0;
float32 notch_out = 0;
float32 notch_in2 = 0;
float32 notch_in1 = 0;
float32 notch_in = 0;*/
float Vc1_notch_V = 0;

// First-order LPF parameters and coefficients
float w_lpf = 0;
float b0_lpf = 0;
float b1_lpf = 0;
float a1_lpf = 0;
// First-order LPF sample variables
float lpf_out1 = 0;
float lpf_out = 0;
float lpf_in1 = 0;
float lpf_in = 0;

// First-order LPF parameters and coefficients
float w_c1_lpf = 0;
float b0_c1_lpf = 0;
float b1_c1_lpf = 0;
float a1_c1_lpf = 0;

// First-order LPF sample variables
float lpf_c1_out1 = 0;
float lpf_c1_out = 0;
float lpf_c1_in1 = 0;
float lpf_c1_in = 0;


// First-order LPF parameters and coefficients
float w_vbus_lpf = 0;
float b0_vbus_lpf = 0;
float b1_vbus_lpf = 0;
float a1_vbus_lpf = 0;


// First-order LPF sample variables
float lpf_vbus_out1 = 0;
float lpf_vbus_out = 0;
float lpf_vbus_in1 = 0;
float lpf_vbus_in = 0;

float Vc3_abs_V = 0;
float Vc3_max_count = 0;
float Vc3_max_V = 0;
float Vc3_max_hold_V = 0;
float Vc3_prev_V = 0;

float Vc2_adc_fullvolt_to_count_ratio = 0;
float Vc2_adc_count_to_fullvolt_ratio = 0;
float Vbus_adc_fullvolt_to_count_ratio = 0;
float Vbus_adc_count_to_fullvolt_ratio = 0;
float Vc3_adc_fullvolt_to_count_ratio = 0;
float Vc3_adc_count_to_fullvolt_ratio = 0;
float Vc1_adc_fullvolt_to_count_ratio = 0;
float Vc1_adc_count_to_fullvolt_ratio = 0;

float Vc3_ref_V = 0;
float M_control = 0;
float CI_control = 0;

ControlMode control_mode;
float Vc2_ref_V = 0;
float Vc2_ref_init_V = 0;
float Vc2_ref_init_V_div = 0;
float Vc2_init_limit = 0;

float duty_cycle1 = DEFAULT_DUTY;
float duty_cycle2 = DEFAULT_DUTY;
float duty_cycle_ci = DEFAULT_DUTY;

float gain_dac = 0;
float adc_scale_c1 = 1.0;
float adc_scale_c2 = 1.0;
float duty_test = 0;

// pll loop variables
// notch filter
/*float32 notch_in_pll_120 = 0;
float32 notch_in1_pll_120 = 0; //x[n-1]
float32 notch_in2_pll_120 = 0;
float32 notch_out_pll_120 = 0;
float32 notch_out1_pll_120 = 0;
float32 notch_out2_pll_120 = 0;
*/
float32 notch_in_pll_240 = 0;
float32 notch_in1_pll_240 = 0; //x[n-1]
float32 notch_in2_pll_240 = 0;
float32 notch_out_pll_240 = 0;
float32 notch_out1_pll_240 = 0;
float32 notch_out2_pll_240 = 0;

float32 notch_out_pll = 0;


/*float32 b0_notch_pll_120 = 0;
float32 b1_notch_pll_120 = 0;
float32 b2_notch_pll_120 = 0;
float32 a1_notch_pll_120 = 0;
float32 a2_notch_pll_120 = 0;*/


float32 b0_notch_pll_240 = 0;
float32 b1_notch_pll_240 = 0;
float32 b2_notch_pll_240 = 0;
float32 a1_notch_pll_240 = 0;
float32 a2_notch_pll_240 = 0;

// PI controller
float32 Kp_pll = 0.6; //0.012939691768802;
float32 Ki_pll = 1.e-05; //1.437966465082929e-05;
float32 x_sum_pll = 0;
float32 pll_PI_out = 0;
float32 theta = 0;
float32 theta_pre = 0;
float32 sum_pll_set = 8;
float32 sum_pll_max = 8;
float32 theta_rad = 0;
int reset_pll = 0;
float32 delta = 0.006;

float Vc3_max_hold_V_pll = 0;
float Vc3_min_hold_V_pll = 0;
float Vc3_rip_V = 0;

float sogi_out2 = 0;
float sogi_out1 = 0;
float sogi_out = 0;
float sogi_in2 = 0;
float sogi_in1 = 0;
float sogi_in = 0;

float a1_sogi = 0;
float a2_sogi = 0;
float b0_sogi = 0;
float b2_sogi = 0;

float duty_max = 0.98;
float duty_min = 0.02;
