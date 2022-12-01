/*
 * global_variables.h
 *
 *  Created on: Mar 13, 2017
 *      Author: NathanBrooks
 *      Edited by Kelly Fernandez on April 6th, 2021
 */

#ifndef GLOBAL_VARIABLES_H_
#define GLOBAL_VARIABLES_H_

#include "F28x_Project.h"     // Device Headerfile and Examples Include File
#include "global_define.h"

//#define TIMING_CHECK

// Enumerate the ePWM channel registers
typedef enum
{
    EPwm_CH1,
    EPwm_CH2,
    EPwm_CH3,
    EPwm_CH4,
    EPwm_CH5,
    EPwm_CH6,
    EPwm_CH7,
    EPwm_CH8,
    NUM_EPWM_CH
} EPwm_Channel;

typedef enum
{
    EPwm_Mod_TrailingEdge,
    EPwm_Mod_LeadingEdge,
    EPwm_Mod_TrailingTriangle,
    EPwm_Mod_LeadingTriangle
} EPwm_ModulationType;

typedef enum
{
    EPwm_Comp_True,
    EPwm_Comp_False
} EPwm_ComplimentaryMode;

typedef enum
{
    controlmode_fixed,
    controlmode_dynamic
} ControlMode;

typedef enum
{
    enable_Vc2comp_false,
    enable_Vc2comp_true
} Enable_Vc2comp_Type;

extern Uint16 dummy_read;

extern Enable_Vc2comp_Type enable_Vc2comp;

extern int16 Vbus_count;
extern int16 Vc1_count;
extern int16 Vc2_count;
extern Uint16 Vbus_bias_count;
extern Uint16 Vc1_bias_count;
extern Uint16 Vc2_bias_count;

extern float Vbus_V;
extern float Vc3_V;
extern float Vc1_V;


extern float Vc1_avg_V;
extern float Vc1_bpf_V;
extern float Vc1_bpf_V_old;
extern float Vc2_avg_count;
extern float Vc2_avg_V;

extern float K;
extern float dVc2_comp;

extern float kp_PI;
extern float ki_PI;
extern float Vc2_integral_limit;
extern float a2_I;
extern float b1_I;
extern float b2_I;
extern float Vc2_error;
extern float Vc2_error_old;
extern float Vc2_integral;
extern float Vc2_integral_old;
extern float Vc2_PI;

extern float kd_diff;
extern float fd_Hz;
extern float a2_diff;
extern float b1_diff;
extern float b2_diff;
extern float Vc1_bpf_diff_V;
extern float Vc1_bpf_diff_V_old;

/*extern float32 b0_notch;
extern float32 b1_notch;
extern float32 b2_notch;
extern float32 a1_notch;
extern float32 a2_notch;
extern float32 notch_out2;
extern float32 notch_out1;
extern float32 notch_out;
extern float32 notch_in2;
extern float32 notch_in1;
extern float32 notch_in;*/
extern float Vc1_notch_V;

extern float w_lpf;
extern float b0_lpf;
extern float b1_lpf;
extern float a1_lpf;
extern float lpf_out1;
extern float lpf_out;
extern float lpf_in1;
extern float lpf_in;
extern float Vc2_V;


extern float w_c1_lpf;
extern float b0_c1_lpf;
extern float b1_c1_lpf;
extern float a1_c1_lpf;
extern float lpf_c1_out1;
extern float lpf_c1_out;
extern float lpf_c1_in1;
extern float lpf_c1_in;


extern float w_vbus_lpf;
extern float b0_vbus_lpf;
extern float b1_vbus_lpf;
extern float a1_vbus_lpf;
extern float lpf_vbus_out1;
extern float lpf_vbus_out;
extern float lpf_vbus_in1;
extern float lpf_vbus_in;
extern float Vbus_avg_V;


extern float Vc3_abs_V;
extern float Vc3_max_count;
extern float Vc3_max_V;
extern float Vc3_max_hold_V;
extern float Vc3_prev_V;

extern float Vc1_adc_fullvolt_to_count_ratio;
extern float Vc1_adc_count_to_fullvolt_ratio;
extern float Vc2_adc_fullvolt_to_count_ratio;
extern float Vc2_adc_count_to_fullvolt_ratio;
extern float Vbus_adc_fullvolt_to_count_ratio;
extern float Vbus_adc_count_to_fullvolt_ratio;
extern float Vc3_adc_fullvolt_to_count_ratio;
extern float Vc3_adc_count_to_fullvolt_ratio;

extern float Vc3_ref_V;
extern float M_control;
extern float CI_control;
extern ControlMode control_mode;
extern float Vc2_ref_V;
extern float Vc2_ref_init_V;
extern float Vc2_ref_init_V_div;
extern float Vc2_init_limit;
extern float duty_cycle1;
extern float duty_cycle2;
extern float duty_cycle_ci;

extern float gain_dac;
extern float adc_scale_c1;
extern float adc_scale_c2;
extern float duty_test;

extern Uint32 mov_avg_size;
extern float mov_avg_size_div;

// pll loop variables
// notch filter
/*extern float32 notch_in_pll_120;
extern float32 notch_in1_pll_120; //x[n-1]
extern float32 notch_in2_pll_120;
extern float32 notch_out_pll_120;
extern float32 notch_out1_pll_120;
extern float32 notch_out2_pll_120;
*/

extern float32 notch_in_pll_240;
extern float32 notch_in1_pll_240; //x[n-1]
extern float32 notch_in2_pll_240;
extern float32 notch_out_pll_240;
extern float32 notch_out1_pll_240;
extern float32 notch_out2_pll_240;
/*
extern float32 b0_notch_pll_120;
extern float32 b1_notch_pll_120;
extern float32 b2_notch_pll_120;
extern float32 a1_notch_pll_120;
extern float32 a2_notch_pll_120;
*/
extern float32 b0_notch_pll_240;
extern float32 b1_notch_pll_240;
extern float32 b2_notch_pll_240;
extern float32 a1_notch_pll_240;
extern float32 a2_notch_pll_240;

extern float32 notch_out_pll;

// PI controller
extern float32 Kp_pll;
extern float32 Ki_pll;
extern float32 x_sum_pll;
extern float32 pll_PI_out;
extern float32 theta;
extern float32 theta_pre;

extern float32 sum_pll_set;
extern float32 sum_pll_max;
extern float32 theta_rad;
extern int reset_pll;
extern float delta;

extern float Vc3_max_hold_V_pll;
extern float Vc3_min_hold_V_pll;
extern float Vc3_rip_V;

extern float sogi_out2;
extern float sogi_out1;
extern float sogi_out;
extern float sogi_in2;
extern float sogi_in1;
extern float sogi_in;

extern float a1_sogi;
extern float a2_sogi;
extern float b0_sogi;
extern float b2_sogi;

extern float duty_max;
extern float duty_min;

#endif /* GLOBAL_VARIABLES_H_ */
