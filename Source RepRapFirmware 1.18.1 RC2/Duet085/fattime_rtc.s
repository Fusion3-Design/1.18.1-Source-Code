ARM GAS  C:\Users\George\AppData\Local\Temp\ccxJiB4B.s 			page 1


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
  14              		.file	"fattime_rtc.cpp"
  15              		.section	.text.get_fattime,"ax",%progbits
  16              		.align	2
  17              		.global	get_fattime
  18              		.thumb
  19              		.thumb_func
  20              		.type	get_fattime, %function
  21              	get_fattime:
  22              		@ args = 0, pretend = 0, frame = 40
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 10B5     		push	{r4, lr}
  25 0002 144B     		ldr	r3, .L6
  26 0004 8AB0     		sub	sp, sp, #40
  27 0006 1C68     		ldr	r4, [r3]
  28 0008 2046     		mov	r0, r4
  29 000a FFF7FEFF 		bl	_ZNK8Platform13IsDateTimeSetEv
  30 000e 10B9     		cbnz	r0, .L5
  31 0010 1148     		ldr	r0, .L6+4
  32 0012 0AB0     		add	sp, sp, #40
  33              		@ sp needed
  34 0014 10BD     		pop	{r4, pc}
  35              	.L5:
  36 0016 2046     		mov	r0, r4
  37 0018 FFF7FEFF 		bl	_ZNK8Platform11GetDateTimeEv
  38 001c 0AAB     		add	r3, sp, #40
  39 001e 43F8280D 		str	r0, [r3, #-40]!
  40 0022 01A9     		add	r1, sp, #4
  41 0024 6846     		mov	r0, sp
  42 0026 FFF7FEFF 		bl	gmtime_r
  43 002a 049B     		ldr	r3, [sp, #16]
  44 002c 039A     		ldr	r2, [sp, #12]
  45 002e 1804     		lsls	r0, r3, #16
  46 0030 029B     		ldr	r3, [sp, #8]
  47 0032 40EAC220 		orr	r0, r0, r2, lsl #11
  48 0036 0199     		ldr	r1, [sp, #4]
  49 0038 069A     		ldr	r2, [sp, #24]
  50 003a 40EA4310 		orr	r0, r0, r3, lsl #5
  51 003e 059B     		ldr	r3, [sp, #20]
  52 0040 40EA6101 		orr	r1, r0, r1, asr #1
  53 0044 503A     		subs	r2, r2, #80
  54 0046 41EA4262 		orr	r2, r1, r2, lsl #25
  55 004a 581C     		adds	r0, r3, #1
  56 004c 42EA4050 		orr	r0, r2, r0, lsl #21
  57 0050 0AB0     		add	sp, sp, #40
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxJiB4B.s 			page 2


  58              		@ sp needed
  59 0052 10BD     		pop	{r4, pc}
  60              	.L7:
  61              		.align	2
  62              	.L6:
  63 0054 00000000 		.word	reprap
  64 0058 01002100 		.word	2162689
  65              		.size	get_fattime, .-get_fattime
  66              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
  67              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
  68              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
  69              	_ZL28cpu_irq_prev_interrupt_state:
  70 0000 00       		.space	1
  71              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
  72              		.align	2
  73              		.type	_ZL32cpu_irq_critical_section_counter, %object
  74              		.size	_ZL32cpu_irq_critical_section_counter, 4
  75              	_ZL32cpu_irq_critical_section_counter:
  76 0000 00000000 		.space	4
  77              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
