/***********************************************************************************************************************
 * This file was generated by the MCUXpresso Config Tools. Any manual edits made to this file
 * will be overwritten if the respective MCUXpresso Config Tools is used to update this file.
 **********************************************************************************************************************/
/*
 * How to setup clock using clock driver functions:
 *
 * 1. CLOCK_SetSimSafeDivs, to make sure core clock, bus clock, flexbus clock
 *    and flash clock are in allowed range during clock mode switch.
 *
 * 2. Call CLOCK_Osc0Init to setup OSC clock, if it is used in target mode.
 *
 * 3. Set MCG configuration, MCG includes three parts: FLL clock, PLL clock and
 *    internal reference clock(MCGIRCLK). Follow the steps to setup:
 *
 *    1). Call CLOCK_BootToXxxMode to set MCG to target mode.
 *
 *    2). If target mode is FBI/BLPI/PBI mode, the MCGIRCLK has been configured
 *        correctly. For other modes, need to call CLOCK_SetInternalRefClkConfig
 *        explicitly to setup MCGIRCLK.
 *
 *    3). Don't need to configure FLL explicitly, because if target mode is FLL
 *        mode, then FLL has been configured by the function CLOCK_BootToXxxMode,
 *        if the target mode is not FLL mode, the FLL is disabled.
 *
 *    4). If target mode is PEE/PBE/PEI/PBI mode, then the related PLL has been
 *        setup by CLOCK_BootToXxxMode. In FBE/FBI/FEE/FBE mode, the PLL could
 *        be enabled independently, call CLOCK_EnablePll0 explicitly in this case.
 *
 * 4. Call CLOCK_SetSimConfig to set the clock configuration in SIM.
 */

/* clang-format off */
/* TEXT BELOW IS USED AS SETTING FOR TOOLS *************************************
!!GlobalInfo
product: Clocks v7.0
processor: MK22FN512xxx12
package_id: MK22FN512VLH12
mcu_data: ksdk2_0
processor_version: 7.0.1
 * BE CAREFUL MODIFYING THIS COMMENT - IT IS YAML SETTINGS FOR TOOLS **********/
/* clang-format on */

#include "fsl_smc.h"
#include "clock_config.h"

/*******************************************************************************
 * Definitions
 ******************************************************************************/
#define OSC_CAP0P                                         0U  /*!< Oscillator 0pF capacitor load */
#define SIM_LPUART_CLK_SEL_OSCERCLK_CLK                   2U  /*!< LPUART clock select: OSCERCLK clock */
#define SIM_OSC32KSEL_OSC32KCLK_CLK                       0U  /*!< OSC32KSEL select: OSC32KCLK clock */
#define SIM_PLLFLLSEL_MCGPLLCLK_CLK                       1U  /*!< PLLFLL select: MCGPLLCLK clock */

/*******************************************************************************
 * Variables
 ******************************************************************************/
/* System clock frequency. */
extern uint32_t SystemCoreClock;

/*******************************************************************************
 * Code
 ******************************************************************************/
/*FUNCTION**********************************************************************
 *
 * Function Name : CLOCK_CONFIG_SetFllExtRefDiv
 * Description   : Configure FLL external reference divider (FRDIV).
 * Param frdiv   : The value to set FRDIV.
 *
 *END**************************************************************************/
static void CLOCK_CONFIG_SetFllExtRefDiv(uint8_t frdiv)
{
    MCG->C1 = ((MCG->C1 & ~MCG_C1_FRDIV_MASK) | MCG_C1_FRDIV(frdiv));
}

/*******************************************************************************
 ************************ BOARD_InitBootClocks function ************************
 ******************************************************************************/
void BOARD_InitBootClocks(void)
{
    BOARD_BootClockRUN();
}

/*******************************************************************************
 ********************** Configuration BOARD_BootClockRUN ***********************
 ******************************************************************************/
/* clang-format off */
/* TEXT BELOW IS USED AS SETTING FOR TOOLS *************************************
!!Configuration
name: BOARD_BootClockRUN
called_from_default_init: true
outputs:
- {id: Bus_clock.outFreq, value: 60 MHz}
- {id: Core_clock.outFreq, value: 120 MHz}
- {id: Flash_clock.outFreq, value: 24 MHz}
- {id: FlexBus_clock.outFreq, value: 30 MHz}
- {id: LPO_clock.outFreq, value: 1 kHz}
- {id: LPUARTCLK.outFreq, value: 8 MHz}
- {id: MCGFFCLK.outFreq, value: 250 kHz}
- {id: MCGIRCLK.outFreq, value: 2 MHz}
- {id: OSCERCLK.outFreq, value: 8 MHz}
- {id: OSCERCLK_UNDIV.outFreq, value: 8 MHz}
- {id: PLLFLLCLK.outFreq, value: 120 MHz}
- {id: System_clock.outFreq, value: 120 MHz}
settings:
- {id: MCGMode, value: PEE}
- {id: powerMode, value: HSRUN}
- {id: LPUARTClkConfig, value: 'yes'}
- {id: MCG.FRDIV.scale, value: '32'}
- {id: MCG.IRCS.sel, value: MCG.FCRDIV}
- {id: MCG.IREFS.sel, value: MCG.FRDIV}
- {id: MCG.PLLS.sel, value: MCG.PLL}
- {id: MCG.PRDIV.scale, value: '2'}
- {id: MCG.VDIV.scale, value: '30'}
- {id: MCG_C1_IRCLKEN_CFG, value: Enabled}
- {id: MCG_C1_IREFSTEN_CFG, value: Enabled}
- {id: MCG_C2_OSC_MODE_CFG, value: ModeOscLowPower}
- {id: MCG_C2_RANGE0_CFG, value: High}
- {id: MCG_C2_RANGE0_FRDIV_CFG, value: High}
- {id: MCG_C5_PLLCLKEN0_CFG, value: Enabled}
- {id: OSC_CR_ERCLKEN_CFG, value: Enabled}
- {id: OSC_CR_ERCLKEN_UNDIV_CFG, value: Enabled}
- {id: SIM.LPUARTSRCSEL.sel, value: OSC.OSCERCLK}
- {id: SIM.OUTDIV2.scale, value: '2'}
- {id: SIM.OUTDIV3.scale, value: '4'}
- {id: SIM.OUTDIV4.scale, value: '5'}
- {id: SIM.PLLFLLSEL.sel, value: MCG.MCGPLLCLK}
sources:
- {id: OSC.OSC.outFreq, value: 8 MHz, enabled: true}
 * BE CAREFUL MODIFYING THIS COMMENT - IT IS YAML SETTINGS FOR TOOLS **********/
/* clang-format on */

/*******************************************************************************
 * Variables for BOARD_BootClockRUN configuration
 ******************************************************************************/
const mcg_config_t mcgConfig_BOARD_BootClockRUN =
    {
        .mcgMode = kMCG_ModePEE,                  /* PEE - PLL Engaged External */
        .irclkEnableMode = kMCG_IrclkEnable | kMCG_IrclkEnableInStop,/* MCGIRCLK enabled as well as in STOP mode */
        .ircs = kMCG_IrcFast,                     /* Fast internal reference clock selected */
        .fcrdiv = 0x1U,                           /* Fast IRC divider: divided by 2 */
        .frdiv = 0x0U,                            /* FLL reference clock divider: divided by 32 */
        .drs = kMCG_DrsLow,                       /* Low frequency range */
        .dmx32 = kMCG_Dmx32Default,               /* DCO has a default range of 25% */
        .oscsel = kMCG_OscselOsc,                 /* Selects System Oscillator (OSCCLK) */
        .pll0Config =
            {
                .enableMode = kMCG_PllEnableIndependent,/* MCGPLLCLK enabled independent of MCG clock mode, MCGPLLCLK disabled in STOP mode */
                .prdiv = 0x1U,                    /* PLL Reference divider: divided by 2 */
                .vdiv = 0x6U,                     /* VCO divider: multiplied by 30 */
            },
    };
const sim_clock_config_t simConfig_BOARD_BootClockRUN =
    {
        .pllFllSel = SIM_PLLFLLSEL_MCGPLLCLK_CLK, /* PLLFLL select: MCGPLLCLK clock */
        .er32kSrc = SIM_OSC32KSEL_OSC32KCLK_CLK,  /* OSC32KSEL select: OSC32KCLK clock */
        .clkdiv1 = 0x1340000U,                    /* SIM_CLKDIV1 - OUTDIV1: /1, OUTDIV2: /2, OUTDIV3: /4, OUTDIV4: /5 */
    };
const osc_config_t oscConfig_BOARD_BootClockRUN =
    {
        .freq = 8000000U,                         /* Oscillator frequency: 8000000Hz */
        .capLoad = (OSC_CAP0P),                   /* Oscillator capacity load: 0pF */
        .workMode = kOSC_ModeOscLowPower,         /* Oscillator low power */
        .oscerConfig =
            {
                .enableMode = kOSC_ErClkEnable,   /* Enable external reference clock, disable external reference clock in STOP mode */
                .erclkDiv = 0,                    /* Divider for OSCERCLK: divided by 1 */
            }
    };

/*******************************************************************************
 * Code for BOARD_BootClockRUN configuration
 ******************************************************************************/
void BOARD_BootClockRUN(void)
{
    /* Set HSRUN power mode */
    SMC_SetPowerModeProtection(SMC, kSMC_AllowPowerModeAll);
    SMC_SetPowerModeHsrun(SMC);
    while (SMC_GetPowerModeState(SMC) != kSMC_PowerStateHsrun)
    {
    }
    /* Set the system clock dividers in SIM to safe value. */
    CLOCK_SetSimSafeDivs();
    /* Initializes OSC0 according to board configuration. */
    CLOCK_InitOsc0(&oscConfig_BOARD_BootClockRUN);
    CLOCK_SetXtal0Freq(oscConfig_BOARD_BootClockRUN.freq);
    /* Configure the Internal Reference clock (MCGIRCLK). */
    CLOCK_SetInternalRefClkConfig(mcgConfig_BOARD_BootClockRUN.irclkEnableMode,
                                  mcgConfig_BOARD_BootClockRUN.ircs, 
                                  mcgConfig_BOARD_BootClockRUN.fcrdiv);
    /* Configure FLL external reference divider (FRDIV). */
    CLOCK_CONFIG_SetFllExtRefDiv(mcgConfig_BOARD_BootClockRUN.frdiv);
    /* Set MCG to PEE mode. */
    CLOCK_BootToPeeMode(mcgConfig_BOARD_BootClockRUN.oscsel,
                        kMCG_PllClkSelPll0,
                        &mcgConfig_BOARD_BootClockRUN.pll0Config);
    /* Set the clock configuration in SIM module. */
    CLOCK_SetSimConfig(&simConfig_BOARD_BootClockRUN);
    /* Set SystemCoreClock variable. */
    SystemCoreClock = BOARD_BOOTCLOCKRUN_CORE_CLOCK;
    /* Set LPUART clock source. */
    CLOCK_SetLpuartClock(SIM_LPUART_CLK_SEL_OSCERCLK_CLK);
}

