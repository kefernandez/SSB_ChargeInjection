/*
 * initialize.h
 *
 *  Created on: Mar 13, 2017
 *      Author: NathanBrooks
 */

#ifndef INITIALIZE_H_
#define INITIALIZE_H_

#include "F28x_Project.h"     // Device Headerfile and Examples Include File
#include "global_define.h"
#include "global_variables.h"

extern struct EPWM_REGS *ePWM[];

void Init_global_variables(void);

// Disable unused clocks to save power
void Disable_unused_clk(void);

void Init_ADCs(void);
void InitADCa(void); // init ADCa, measure Vbus on Ax (SOC0)
void InitADCb(void); // init ADCb, measure Vc1 or Vc3 on B3 and B2, respectively (SOC0)
void InitADCc(void); // init ADCc, measure Vc2 on C4 (SOC0)
//void InitADCd(void); // init ADCd, measure xxxx on Dx (SOCx)
void ADC_bias(void);
void ADC_clear_interrupt1_flag(void); // Clear interrupt flag for ISR "interrupt1"

void Init_DACs(void);

void Init_EPwms(void);
void InitEPwmA_X(EPwm_Channel, Uint32, float, Uint16, EPwm_ModulationType, EPwm_ComplimentaryMode);
void InitEPwmB_X(EPwm_Channel, Uint32, float, Uint16, EPwm_ModulationType, EPwm_ComplimentaryMode);
void InitEPwmADC(EPwm_Channel);

// Initialize the necessary interrupts (without enabling)
void Init_interrupts(void);

// Enable interrupts
void Enable_interrupts(void);

// interrupt functions
interrupt void ADC_interrupt1(void);

#endif /* INITIALIZE_H_ */
