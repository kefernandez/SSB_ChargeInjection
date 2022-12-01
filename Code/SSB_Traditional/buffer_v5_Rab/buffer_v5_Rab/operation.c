/*
 * operation.c
 *
 *  Created on: April 6th, 2021
 *      Author: Kelly Fernandez
 */

#include "F28x_Project.h"     // Device Headerfile and Examples Include File
#include "operation.h"
#include "global_define.h"
#include "global_variables.h"

void Set_buffer_dutycycle(float M)
{

    //control for unipolar modulation, charge injection modulation, and saturation for both

    duty_cycle1 = 0.5*(1+M);

    if (duty_cycle1 > duty_max)
    {
        duty_cycle1 = duty_max;
    }
    else if (duty_cycle1 < duty_min)
    {
        duty_cycle1 = duty_min;

    }

    duty_cycle2 = 1- duty_cycle1;
    //SetEPwmB_X_DutyCycle(EPwm_CH1, 0.5); //secondary half-bridge
    //SetEPwmA_X_DutyCycle(EPwm_CH2, 0.5); //primary half-bridge

    // Set the duty cycle for buffer ePWMs
    SetEPwmB_X_DutyCycle(EPwm_CH1, duty_cycle2); //secondary half-bridge
    SetEPwmA_X_DutyCycle(EPwm_CH2, duty_cycle1); //primary half-bridge


}

void SetEPwmA_X_DutyCycle(EPwm_Channel pwm_chan, float duty_cycle)
{
    ePWM[pwm_chan]->CMPA.bit.CMPA = (ePWM[pwm_chan]->TBPRD)*duty_cycle; // Set the duty cycle count (in # of switching cycles) on the CMPA register
}

void SetEPwmB_X_DutyCycle(EPwm_Channel pwm_chan, float duty_cycle)
{
    ePWM[pwm_chan]->CMPB.bit.CMPB = (ePWM[pwm_chan]->TBPRD)*duty_cycle; // Set the duty cycle count (in # of switching cycles) on the CMPA register
}

