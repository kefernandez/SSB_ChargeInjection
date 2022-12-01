/*
 * global_define.h
 *
 *  Created on: Mar 13, 2017
 *      Author: NathanBrooks
 *      Edited by Kelly Fernandez on April 6th, 2021
 */

#ifndef GLOBAL_DEFINE_H_
#define GLOBAL_DEFINE_H_

//#define TIMING_CHECK

#define SYSCLK 					200000 	// kHz
#define SWITCHING_FREQ 			160 	// kHz
#define CI_SWITCHING_FREQ       200     // kHz
#define PERIOD				 	(int32) SYSCLK/SWITCHING_FREQ // 200MHz/160kHz = 1250
#define CI_PERIOD               (int32) SYSCLK/CI_SWITCHING_FREQ // 200MHz/160kHz = 625
#define HALFPERIOD              (int32) SWITCHING_FREQ*1000/240 //Cycles in a half 120 Hz period
#define QUARTERPERIOD           (int32) SYSCLK*1000/480
#define QUARTER_PI              1.57079
#define THREEQUARTER_PI         4.71238

#define DEFAULT_DUTY            0.65//0.65
#define SSB_DEADTIME		    2 		// number of ePWM clock cycles, set to 0 since si8274 includes deadtime.
#define DEFAULT_DEADTIME        5       // number of ePWM clock cycles

#define MOV_AVG_FREQ			120 	// Hz
#define MOV_AVG_SIZE			(Uint32) SWITCHING_FREQ*1000/MOV_AVG_FREQ // Moving average array size in number of switching frequency counts
#define MOV_AVG_SIZE_DIV		0.00075 // With MOV_AVG_SIZE = 1333.3333


#define VC2_ADC_MAX_VOLT		117.25 	// Expected maximum full voltage value (corresponds to full ADC counts, 4096, without bias compensation). 100 V ideally.
#define VC2_ADC_MIN_VOLT		0		// Expected minimum full voltage value (corresponds to minimum ADC counts. In this case, measured bias at zero)

#define VBUS_ADC_MAX_VOLT		426         	// Expected maximum full voltage value (corresponds to full ADC counts, 4096, without bias compensation)
#define VBUS_ADC_MIN_VOLT		0		// Expected minimum full voltage value (corresponds to minimum ADC counts. In this case, measured bias at zero)

#define VC3_ADC_MAX_VOLT		94 		// Expected maximum full voltage value (corresponds to full ADC counts, 4096, without bias compensation)
#define VC3_ADC_MIN_VOLT		0		// Expected minimum full voltage value (corresponds to minimum ADC counts. In this case, measured bias at zero)

#define VC1_ADC_MAX_VOLT		526.75 //57.75 for 16k //156.45 for 44.2k		// Expected maximum full voltage value (corresponds to full ADC counts, 4096, without bias compensation)
#define VC1_ADC_MIN_VOLT		0		// Expected minimum full voltage value (corresponds to minimum ADC counts. In this case, measured bias at zero)

#endif /* GLOBAL_DEFINE_H_ */
