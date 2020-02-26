/*
 * usb_handlers.h
 *
 *  Created on: Feb 9, 2018
 *      Author: tstern
 */

#ifndef SRC_USB_HANDLERS_H_
#define SRC_USB_HANDLERS_H_


#include "ASF\common\services\usb\class\cdc\usb_protocol_cdc.h"

#ifdef __cplusplus
extern "C" {
#endif
void usbPutchar(char c);
#ifdef __cplusplus
}
#endif


void main_cdc_rx(uint8_t port);
void main_cdc_config(uint8_t port, usb_cdc_line_coding_t * cfg);

/*! \brief Opens the communication port
 * This is called by CDC interface when USB Host enable it.
 *
 * \retval true if cdc startup is successfully done
 */
bool main_cdc_enable(uint8_t port);

/*! \brief Closes the communication port
 * This is called by CDC interface when USB Host disable it.
 */
void main_cdc_disable(uint8_t port);

/*! \brief Manages the leds behaviors
 * Called when a start of frame is received on USB line each 1ms.
 */
void main_sof_action(void);

/*! \brief Enters the application in low power mode
 * Callback called when USB host sets USB line in suspend state
 */
void main_suspend_action(void);

/*! \brief Turn on a led to notify active mode
 * Called when the USB line is resumed from the suspend state
 */
void main_resume_action(void);

/*! \brief Save new DTR state to change led behavior.
 * The DTR notify that the terminal have open or close the communication port.
 */
void main_cdc_set_dtr(uint8_t port, bool b_enable);

#ifdef USB_DEVICE_LPM_SUPPORT
/*! \brief Enters the application in low power mode
 * Callback called when USB host sets LPM suspend state
 */
void main_suspend_lpm_action(void);

/*! \brief Called by UDC when USB Host request to enable LPM remote wakeup
 */
void main_remotewakeup_lpm_enable(void);

/*! \brief Called by UDC when USB Host request to disable LPM remote wakeup
 */
void main_remotewakeup_lpm_disable(void);
#endif



#endif /* SRC_USB_HANDLERS_H_ */
