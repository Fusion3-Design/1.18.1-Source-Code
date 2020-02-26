ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSVAnab.s 			page 1


   1              		.syntax unified
   2              		.cpu cortex-m4
   3              		.eabi_attribute 27, 3
   4              		.fpu fpv4-sp-d16
   5              		.eabi_attribute 20, 1
   6              		.eabi_attribute 21, 1
   7              		.eabi_attribute 23, 3
   8              		.eabi_attribute 24, 1
   9              		.eabi_attribute 25, 1
  10              		.eabi_attribute 26, 1
  11              		.eabi_attribute 30, 2
  12              		.eabi_attribute 34, 1
  13              		.eabi_attribute 18, 4
  14              		.thumb
  15              		.file	"FirmwareUpdater.cpp"
  16              		.section	.text._ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEh,"ax",%progbits
  17              		.align	2
  18              		.global	_ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEh
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEh, %function
  22              	_ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEh:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 0120     		movs	r0, #1
  27 0002 7047     		bx	lr
  28              		.size	_ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEh, .-_ZN15FirmwareUpdater32CheckFirmw
  29              		.section	.text._ZN15FirmwareUpdater7IsReadyEv,"ax",%progbits
  30              		.align	2
  31              		.global	_ZN15FirmwareUpdater7IsReadyEv
  32              		.thumb
  33              		.thumb_func
  34              		.type	_ZN15FirmwareUpdater7IsReadyEv, %function
  35              	_ZN15FirmwareUpdater7IsReadyEv:
  36              		@ args = 0, pretend = 0, frame = 0
  37              		@ frame_needed = 0, uses_anonymous_args = 0
  38              		@ link register save eliminated.
  39 0000 0120     		movs	r0, #1
  40 0002 7047     		bx	lr
  41              		.size	_ZN15FirmwareUpdater7IsReadyEv, .-_ZN15FirmwareUpdater7IsReadyEv
  42              		.section	.text._ZN15FirmwareUpdater12UpdateModuleEj,"ax",%progbits
  43              		.align	2
  44              		.global	_ZN15FirmwareUpdater12UpdateModuleEj
  45              		.thumb
  46              		.thumb_func
  47              		.type	_ZN15FirmwareUpdater12UpdateModuleEj, %function
  48              	_ZN15FirmwareUpdater12UpdateModuleEj:
  49              		@ args = 0, pretend = 0, frame = 0
  50              		@ frame_needed = 0, uses_anonymous_args = 0
  51              		@ link register save eliminated.
  52 0000 7047     		bx	lr
  53              		.size	_ZN15FirmwareUpdater12UpdateModuleEj, .-_ZN15FirmwareUpdater12UpdateModuleEj
  54 0002 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
  55              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
  56              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
  57              	_ZL28cpu_irq_prev_interrupt_state:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSVAnab.s 			page 2


  58 0000 00       		.space	1
  59              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
  60              		.align	2
  61              		.type	_ZL32cpu_irq_critical_section_counter, %object
  62              		.size	_ZL32cpu_irq_critical_section_counter, 4
  63              	_ZL32cpu_irq_critical_section_counter:
  64 0000 00000000 		.space	4
  65              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
