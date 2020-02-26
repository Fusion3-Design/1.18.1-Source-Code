/*
 * usb_handlers.c
 *
 *  Created on: Feb 9, 2018
 *      Author: tstern
 */
#include "asf.h"
#include "usb_handlers.h"
#include "efc.h"
#include <flash_efc.h>
static volatile bool main_b_cdc_enable = false;
static volatile bool main_b_cdc_configed = false;



uint32_t boot_samba() {
    uint32_t ul;
    uint32_t ul_gpnvm1 = 1;
    ul = flash_clear_gpnvm(ul_gpnvm1);
   return ul;
}

void usbPutchar(char c)
{
	if (main_b_cdc_configed)
	{
		udi_cdc_putc(c);
	}
}

void main_cdc_rx(uint8_t port)
{

}

__attribute__ ((long_call, section (".ramfunc")))
void banzai() {
	// Disable all interrupts
	__disable_irq();

	// Set bootflag to run SAM-BA bootloader at restart
	boot_samba();

	// From here flash memory is no more available.

	// BANZAIIIIIII!!!
	RSTC->RSTC_CR =
		RSTC_CR_KEY_PASSWD |
		RSTC_CR_PROCRST |
		RSTC_CR_PERRST;

	while (true);
}

void main_cdc_config(uint8_t port, usb_cdc_line_coding_t * cfg)
{
	uint32_t baud;

	main_b_cdc_configed=true;
	baud=LE32_TO_CPU(cfg->dwDTERate);
	if (baud==1200)
	{
		banzai();
	}
}

void main_suspend_action(void)
{
	//ui_powerdown();
}

void main_resume_action(void)
{
	//ui_wakeup();
}

void main_sof_action(void)
{
	if (!main_b_cdc_enable)
		return;
	//ui_process(udd_get_frame_number());
}



#ifdef USB_DEVICE_LPM_SUPPORT
void main_suspend_lpm_action(void)
{
	ui_powerdown();
}

void main_remotewakeup_lpm_disable(void)
{
	ui_wakeup_disable();
}

void main_remotewakeup_lpm_enable(void)
{
	ui_wakeup_enable();
}
#endif

bool main_cdc_enable(uint8_t port)
{
	main_b_cdc_enable = true;
	// Open communication
	//uart_open(port);
	return true;
}

void main_cdc_disable(uint8_t port)
{
	main_b_cdc_enable = false;
	// Close communication
	//uart_close(port);
}

void main_cdc_set_dtr(uint8_t port, bool b_enable)
{
	if (b_enable) {
		// Host terminal has open COM
		//ui_com_open(port);
	}else{
		// Host terminal has close COM
		//ui_com_close(port);
	}
}

