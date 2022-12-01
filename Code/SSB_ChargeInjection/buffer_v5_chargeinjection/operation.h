/*
 * operation.h
 *
 *  Created on: Mar 23, 2017
 *      Author: pilawa_group
 *      Edited by Kelly Fernandez on April 6th, 2021
 */

#ifndef OPERATION_H_
#define OPERATION_H_

#include "F28x_Project.h"     // Device Headerfile and Examples Include File
#include "global_define.h"
#include "global_variables.h"

extern struct EPWM_REGS *ePWM[];

void Set_buffer_dutycycle(float,float);
void SetEPwmA_X_DutyCycle(EPwm_Channel, float);
void SetEPwmB_X_DutyCycle(EPwm_Channel, float);

#endif /* OPERATION_H_ */
