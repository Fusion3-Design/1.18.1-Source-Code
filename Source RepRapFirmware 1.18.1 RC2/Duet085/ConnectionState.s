ARM GAS  C:\Users\George\AppData\Local\Temp\cc2o4Xnk.s 			page 1


   1              		.syntax unified
   2              		.cpu cortex-m3
   3              		.fpu softvfp
   4              		.eabi_attribute 20, 1
   5              		.eabi_attribute 21, 1
   6              		.eabi_attribute 23, 3
   7              		.eabi_attribute 24, 1
   8              		.eabi_attribute 25, 1
   9              		.eabi_attribute 26, 1
  10              		.eabi_attribute 30, 2
  11              		.eabi_attribute 34, 1
  12              		.eabi_attribute 18, 4
  13              		.thumb
  14              		.file	"ConnectionState.cpp"
  15              		.section	.text._ZN15ConnectionState4InitEP7tcp_pcb,"ax",%progbits
  16              		.align	2
  17              		.global	_ZN15ConnectionState4InitEP7tcp_pcb
  18              		.thumb
  19              		.thumb_func
  20              		.type	_ZN15ConnectionState4InitEP7tcp_pcb, %function
  21              	_ZN15ConnectionState4InitEP7tcp_pcb:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 70B4     		push	{r4, r5, r6}
  26 0002 8A8B     		ldrh	r2, [r1, #28]
  27 0004 4D8B     		ldrh	r5, [r1, #26]
  28 0006 4C68     		ldr	r4, [r1, #4]
  29 0008 0023     		movs	r3, #0
  30 000a 0126     		movs	r6, #1
  31 000c 0160     		str	r1, [r0]
  32 000e 8580     		strh	r5, [r0, #4]	@ movhi
  33 0010 0361     		str	r3, [r0, #16]
  34 0012 8460     		str	r4, [r0, #8]
  35 0014 0675     		strb	r6, [r0, #20]
  36 0016 C360     		str	r3, [r0, #12]
  37 0018 C280     		strh	r2, [r0, #6]	@ movhi
  38 001a 4375     		strb	r3, [r0, #21]
  39 001c 70BC     		pop	{r4, r5, r6}
  40 001e 7047     		bx	lr
  41              		.size	_ZN15ConnectionState4InitEP7tcp_pcb, .-_ZN15ConnectionState4InitEP7tcp_pcb
  42              		.section	.text._ZN15ConnectionState9TerminateEv,"ax",%progbits
  43              		.align	2
  44              		.global	_ZN15ConnectionState9TerminateEv
  45              		.thumb
  46              		.thumb_func
  47              		.type	_ZN15ConnectionState9TerminateEv, %function
  48              	_ZN15ConnectionState9TerminateEv:
  49              		@ args = 0, pretend = 0, frame = 0
  50              		@ frame_needed = 0, uses_anonymous_args = 0
  51              		@ link register save eliminated.
  52 0000 0368     		ldr	r3, [r0]
  53 0002 13B1     		cbz	r3, .L2
  54 0004 0068     		ldr	r0, [r0]
  55 0006 FFF7FEBF 		b	tcp_abort
  56              	.L2:
  57 000a 7047     		bx	lr
ARM GAS  C:\Users\George\AppData\Local\Temp\cc2o4Xnk.s 			page 2


  58              		.size	_ZN15ConnectionState9TerminateEv, .-_ZN15ConnectionState9TerminateEv
  59              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
  60              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
  61              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
  62              	_ZL28cpu_irq_prev_interrupt_state:
  63 0000 00       		.space	1
  64              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
  65              		.align	2
  66              		.type	_ZL32cpu_irq_critical_section_counter, %object
  67              		.size	_ZL32cpu_irq_critical_section_counter, 4
  68              	_ZL32cpu_irq_critical_section_counter:
  69 0000 00000000 		.space	4
  70              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
