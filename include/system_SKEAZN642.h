/*
** ###################################################################
**     Compilers:           Keil ARM C/C++ Compiler
**                          Freescale C/C++ for Embedded ARM
**                          GNU C Compiler
**                          GNU C Compiler - CodeSourcery Sourcery G++
**                          IAR ANSI C/C++ Compiler for ARM
**
**     Reference manual:    MKE02Z64M20SF0RM, Rev.2.1, Apr-23 2013; KEAZ64RM, Rev.1, Sep 2013
**     Version:             rev. 1.3, 2015-07-24
**     Build:               b150730
**
**     Abstract:
**         Provides a system configuration function and a global variable that
**         contains the system frequency. It configures the device and initializes
**         the oscillator (PLL) that is part of the microcontroller device.
**
**     Copyright (c) 2015 Freescale Semiconductor, Inc.
**     All rights reserved.
**
**     Redistribution and use in source and binary forms, with or without modification,
**     are permitted provided that the following conditions are met:
**
**     o Redistributions of source code must retain the above copyright notice, this list
**       of conditions and the following disclaimer.
**
**     o Redistributions in binary form must reproduce the above copyright notice, this
**       list of conditions and the following disclaimer in the documentation and/or
**       other materials provided with the distribution.
**
**     o Neither the name of Freescale Semiconductor, Inc. nor the names of its
**       contributors may be used to endorse or promote products derived from this
**       software without specific prior written permission.
**
**     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
**     ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
**     WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
**     DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
**     ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
**     (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
**     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
**     ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
**     (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
**     SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**
**     http:                 www.freescale.com
**     mail:                 support@freescale.com
**
**     Revisions:
**     - rev. 1.0 (2013-10-09)
**         Initial version.
**     - rev. 1.1 (2013-10-29)
**         Definition of BITBAND macros updated to support peripherals with 32-bit acces disabled.
**     - rev. 1.2 (2014-05-28)
**         The declaration of clock configurations has been moved to separate header file system_SKEAZN642.h
**         Module access macro {module}_BASES replaced by {module}_BASE_PTRS.
**         Added register accessor macros.
**     - rev. 1.3 (2015-07-24)
**         Correction of backward compatibility.
**
** ###################################################################
*/

/*!
 * @file SKEAZN642
 * @version 1.3
 * @date 2015-07-24
 * @brief Device specific configuration file for SKEAZN642 (header file)
 *
 * Provides a system configuration function and a global variable that contains
 * the system frequency. It configures the device and initializes the oscillator
 * (PLL) that is part of the microcontroller device.
 */

#ifndef SYSTEM_SKEAZN642_H_
#define SYSTEM_SKEAZN642_H_                      /**< Symbol preventing repeated inclusion */

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>


#ifndef DISABLE_WDOG
  #define DISABLE_WDOG                 1
#endif

#ifndef CLOCK_SETUP
  #define CLOCK_SETUP                  0
#endif

/* ICS mode constants */

#define ICS_MODE_FEI                0U
#define ICS_MODE_FEE                1U
#define ICS_MODE_FBI                2U
#define ICS_MODE_FBE                3U
#define ICS_MODE_BLPI               4U
#define ICS_MODE_BLPE               5U

/* Predefined clock setups
   0 ... Internal Clock Source (ICS) in FLL Engaged Internal (FEI) mode
         Multipurpose Clock Generator (ICS) in FEI mode.
         Reference clock source for ICS module: FLL clock
         Core clock = 16.777216MHz
         Bus clock  = 16.777216MHz
   1 ... Internal Clock Source (ICS) in FLL Engaged External (FEE) mode
         Multipurpose Clock Generator (ICS) in FEE mode.
         Reference clock source for ICS module: FLL clock
         Core clock = 32MHz
         Bus clock  = 16MHz
   2 ... Internal Clock Source (ICS) in Bypassed Low Power Internal (BLPI) mode
         Multipurpose Clock Generator (ICS) in BLPI mode.
         Reference clock source for ICS module: Internal clock
         Core clock = 0.032768MHz
         Bus clock  = 0.032768MHz
   3 ... Internal Clock Source (ICS) in Bypassed Low Power External (BLPE) mode
         Multipurpose Clock Generator (ICS) in BLPE mode.
         Reference clock source for ICS module: External clock
         Core clock = 8MHz
         Bus clock  = 8MHz
 */

/* Define clock source values */

#define CPU_XTAL_CLK_HZ                8000000u            /* Value of the external crystal or oscillator clock frequency in Hz */
#define CPU_INT_CLK_HZ                 32768u              /* Value of the slow internal oscillator clock frequency in Hz  */


#if (CLOCK_SETUP == 0)
  #define DEFAULT_SYSTEM_CLOCK         16777216u           /* Default System clock value */
  #define ICS_MODE                     ICS_MODE_FEI        /* Clock generator mode */
  /* ICS_C1: CLKS=0,RDIV=0,IREFS=1,IRCLKEN=0,IREFSTEN=0 */
  #define ICS_C1_VALUE                 0x04U               /* ICS_C1 */
  /* ICS_C2: BDIV=1,LP=0 */
  #define ICS_C2_VALUE                 0x20U               /* ICS_C2 */
  /* ICS_C4: LOLIE=0,CME=0,SCFTRIM=0 */
  #define ICS_C4_VALUE                 0x00U               /* ICS_C4 */
/* OSC_CR: OSCEN=0,OSCSTEN=0,OSCOS=0,RANGE=0,HGO=0,OSCINIT=0 */
  #define OSC_CR_VALUE                 0x00U               /* OSC_CR */
/* SIM_BUSDIV: BUSDIV=0 */
  #define SIM_BUSDIV_VALUE             0x00U               /* SIM_BUSDIV */
#elif (CLOCK_SETUP == 1)
  #define DEFAULT_SYSTEM_CLOCK         32000000u           /* Default System clock value */
  #define ICS_MODE                     ICS_MODE_FEE        /* Clock generator mode */
  /* ICS_C1: CLKS=0,RDIV=3,IREFS=0,IRCLKEN=0,IREFSTEN=0 */
  #define ICS_C1_VALUE                 0x18U               /* ICS_C1 */
  /* ICS_C2: BDIV=0,LP=0 */
  #define ICS_C2_VALUE                 0x00U               /* ICS_C2 */
  /* ICS_C4: LOLIE=0,CME=0,SCFTRIM=0 */
  #define ICS_C4_VALUE                 0x00U               /* ICS_C4 */
/* OSC_CR: OSCEN=1,OSCSTEN=0,OSCOS=1,RANGE=1,HGO=0,OSCINIT=0 */
  #define OSC_CR_VALUE                 0x94U               /* OSC_CR */
/* SIM_BUSDIV: BUSDIV=1 */
  #define SIM_BUSDIV_VALUE             0x01U               /* SIM_BUSDIV */
#elif (CLOCK_SETUP == 2)
  #define DEFAULT_SYSTEM_CLOCK         32768u              /* Default System clock value */
  #define ICS_MODE                     ICS_MODE_BLPI       /* Clock generator mode */
  /* ICS_C1: CLKS=1,RDIV=0,IREFS=1,IRCLKEN=1,IREFSTEN=0 */
  #define ICS_C1_VALUE                 0x46U               /* ICS_C1 */
  /* ICS_C2: BDIV=0,LP=1 */
  #define ICS_C2_VALUE                 0x10U               /* ICS_C2 */
  /* ICS_C4: LOLIE=0,CME=0,SCFTRIM=0 */
  #define ICS_C4_VALUE                 0x00U               /* ICS_C4 */
/* OSC_CR: OSCEN=0,OSCSTEN=0,OSCOS=0,RANGE=0,HGO=0,OSCINIT=0 */
  #define OSC_CR_VALUE                 0x00U               /* OSC_CR */
/* SIM_BUSDIV: BUSDIV=0 */
  #define SIM_BUSDIV_VALUE             0x00U               /* SIM_BUSDIV */
#elif (CLOCK_SETUP == 3)
  #define DEFAULT_SYSTEM_CLOCK         8000000u            /* Default System clock value */
  #define ICS_MODE                     ICS_MODE_BLPE       /* Clock generator mode */
  /* ICS_C1: CLKS=2,RDIV=3,IREFS=0,IRCLKEN=1,IREFSTEN=0 */
  #define ICS_C1_VALUE                 0x9AU               /* ICS_C1 */
  /* ICS_C2: BDIV=0,LP=1 */
  #define ICS_C2_VALUE                 0x10U               /* ICS_C2 */
  /* ICS_C4: LOLIE=0,CME=0,SCFTRIM=0 */
  #define ICS_C4_VALUE                 0x00U               /* ICS_C4 */
/* OSC_CR: OSCEN=1,OSCSTEN=0,OSCOS=1,RANGE=1,HGO=0,OSCINIT=0 */
  #define OSC_CR_VALUE                 0x94U               /* OSC_CR */
/* SIM_BUSDIV: BUSDIV=0 */
  #define SIM_BUSDIV_VALUE             0x00U               /* SIM_BUSDIV */
#endif

/**
 * @brief System clock frequency (core clock)
 *
 * The system clock frequency supplied to the SysTick timer and the processor
 * core clock. This variable can be used by the user application to setup the
 * SysTick timer or configure other parameters. It may also be used by debugger to
 * query the frequency of the debug timer or configure the trace clock speed
 * SystemCoreClock is initialized with a correct predefined value.
 */
extern uint32_t SystemCoreClock;

/**
 * @brief Setup the microcontroller system.
 *
 * Typically this function configures the oscillator (PLL) that is part of the
 * microcontroller device. For systems with variable clock speed it also updates
 * the variable SystemCoreClock. SystemInit is called from startup_device file.
 */
void SystemInit (void);

/**
 * @brief Updates the SystemCoreClock variable.
 *
 * It must be called whenever the core clock is changed during program
 * execution. SystemCoreClockUpdate() evaluates the clock register settings and calculates
 * the current core clock.
 */
void SystemCoreClockUpdate (void);

#ifdef __cplusplus
}
#endif

#endif  /* #if !defined(SYSTEM_SKEAZN642_H_) */
