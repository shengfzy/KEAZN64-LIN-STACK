/*
 * main implementation: use this 'C' sample to create your own application
 *
 */


#include "derivative.h" /* include peripheral declarations */
#include "lin.h"
#include "lin_common_api.h"
#include "GPIO.h"


/**********************************************************************************************
* Constants and macros
**********************************************************************************************/
GPIOA_Register NSLP = PTA3, NWAKE = PTA2;

/* Global variables */
l_u8 LIN_counter =0, LED_counter = 0;
l_u8 Motor1_temp;
/***********************************************************************************************
*
* @brief    CLK_Init - Initialize the clocks to run at 20 MHz from the 10Mhz external XTAL
* @param    none
* @return   none
*
************************************************************************************************/
void Clk_Init()
{
	ICS_C1|=ICS_C1_IRCLKEN_MASK; 		/* Enable the internal reference clock*/
	ICS_C3= 0x50;						/* Reference clock frequency = 39.0625 KHz*/
	while(!(ICS_S & ICS_S_LOCK_MASK));   /* Wait for PLL lock, now running at 40 MHz (1024 * 39.0625Khz) */
	ICS_C2|=ICS_C2_BDIV(1)  ; 			/*BDIV=2, Bus clock = 20 MHz*/
	ICS_S |= ICS_S_LOCK_MASK ; 			/* Clear Loss of lock sticky bit */


}
/***********************************************************************************************
*
* @brief    GPIO_Init - Initialize the pins for input/output
* @param    none
* @return   none
*
************************************************************************************************/
void GPIO_Init()
{
	CONFIG_PIN_AS_GPIO(PTA,PTA2,OUTPUT);
	CONFIG_PIN_AS_GPIO(PTA,PTA3,INPUT);
	ENABLE_PULLUP(PTA,PTA3);
	//OUTPUT_CLEAR(PTA,PTA2);     //NWAKE pull-down
	//OUTPUT_CLEAR(PTA,PTA3);		//NSLP pull-up
}
/***********************************************************************************************
*
* @brief   lin_application_timer_FTM0 - Initialize the timer for LIN application
* @param    none
* @return   none
*
************************************************************************************************/
void lin_application_timer_FTM0()
{
	SIM_SCGC |= SIM_SCGC_FTM0_MASK; /* Enable Clock for FTM0 */
	FTM0_SC |= FTM_SC_PS(7);	/* Select Preescaler in this case 128. 20 Mhz /128 =156.25 Khz. */
									/* Counter increase by one every 6.4 us */
		/* Enable Channle 0*/
	FTM0_C0SC |= FTM_CnSC_CHIE_MASK; /* Enable channel 0 interrupt */
	FTM0_C0SC |= FTM_CnSC_MSA_MASK;  /* Channel as Output compare mode */
		/*Select interrupt frequency*/
	FTM0_C0V = FTM_CnV_VAL(391) ;	 	/* Interrupt every 2.5ms */

	FTM0_SC |= FTM_SC_CLKS(1); /*FTM0 use system clock*/

		/* Set the ICPR and ISER registers accordingly */
	NVIC_ICPR |= 1 << ((INT_FTM0-16)%32);
	NVIC_ISER |= 1 << ((INT_FTM0-16)%32);
}

void FTM0_IRQHandler()
{
    if (1==((FTM0_C0SC & FTM_CnSC_CHF_MASK)>>FTM_CnSC_CHF_SHIFT) )  /* If the CHF of the channel is equal to 0 */
  	{
  		(void)FTM0_C0SC;  							/* Read to clear flag */
  		FTM0_C0SC ^= FTM_CnSC_CHF_MASK;  			/* Clear flag */
  		FTM0_C0V = FTM0_C0V + 391 ; /* Refresh interrupt period */

  		if (LIN_counter>=6){
  		    /* Activate LIN frame transfer for every 15ms */
  		    l_sch_tick(LI0);
  		    /* Reset counter */
  		    LIN_counter = 0;
  		  }
  	  if (LED_counter>=1000){
  	    /* Toggle LED for LIN transmission */
  	    /* Reset counter */
  		//LED0_TOGGLE;
  		OUTPUT_TOGGLE(PTB,13);
  		//OUTPUT_TOGGLE(PTA,2);
  		LED_counter = 0;
  	  }
	  LIN_counter++;
	  LED_counter++;

  	}
  }

int main(void)
{
    l_u8 ret;
    l_u8 j, vector_number;
    l_u16 i;
    Clk_Init();
    GPIO_Init();
    ret = l_sys_init();
    ret = l_ifc_init(LI0);
    l_sch_set(LI0, LI0_NormalTable, 0);
    vector_number = INT_UART0 -16;

	NVIC_ICPR |= 1 << (vector_number%32);
	NVIC_ISER |= 1 << (vector_number%32);
	lin_application_timer_FTM0();
    for (;;){
  	  /*if (l_flg_tst_LI0_Motor1Temp_flag()){
  			 Clear this flag...
  			l_flg_clr_LI0_Motor1Temp_flag();
  			 Store temperature data
  			Motor1_temp = l_u8_rd_LI0_Motor1Temp();
  			 The application will change Motor selection in case
  			   the temperature is greater than maximum value to release motor power
  			   This will be transfered by sporadic frame type in LIN bus
  			if (MOTOR1_OVER_TEMP<Motor1_temp) {
  			   Request stop motor by power off
  				LED1_ON;
  				LED2_OFF;
  				LED3_OFF;
  			   l_u8_wr_LI0_Motor1Selection(MOTOR_SELECTION_STOP);
  			} else if ((MOTOR1_MAX_TEMP<Motor1_temp)&(MOTOR1_OVER_TEMP > Motor1_temp)){
  			   Request to reduce motor speed
  			  l_u8_wr_LI0_Motor1Selection(MOTOR_SELECTION_DECREASE);
  			  LED1_OFF;
  			  LED2_ON;
  			  LED3_OFF;
  			} else {
  			   Request to increase motor speed if user request
  			  l_u8_wr_LI0_Motor1Selection(MOTOR_SELECTION_INCREASE);
  			  LED1_OFF;
  			  LED2_OFF;
  			  LED3_ON;
  			}
  	   }*/

    }

    /* to avoid the warning message for GHS: statement is unreachable*/
#if defined (__ghs__)
#pragma ghs nowarning 111
#endif
#if defined (__ICCARM__)
#pragma diag_suppress=Pe111
#endif
	return 0;
}
