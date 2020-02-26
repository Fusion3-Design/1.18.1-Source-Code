ARM GAS  C:\Users\tstern\AppData\Local\Temp\cciMd6ln.s 			page 1


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
  15              		.file	"fattime_rtc.cpp"
  16              		.section	.text.get_fattime,"ax",%progbits
  17              		.align	2
  18              		.global	get_fattime
  19              		.thumb
  20              		.thumb_func
  21              		.type	get_fattime, %function
  22              	get_fattime:
  23              		@ args = 0, pretend = 0, frame = 40
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 30B5     		push	{r4, r5, lr}
  26 0002 144B     		ldr	r3, .L6
  27 0004 1C68     		ldr	r4, [r3]
  28 0006 8BB0     		sub	sp, sp, #44
  29 0008 2046     		mov	r0, r4
  30 000a FFF7FEFF 		bl	_ZNK8Platform13IsDateTimeSetEv
  31 000e 10B9     		cbnz	r0, .L5
  32 0010 1148     		ldr	r0, .L6+4
  33 0012 0BB0     		add	sp, sp, #44
  34              		@ sp needed
  35 0014 30BD     		pop	{r4, r5, pc}
  36              	.L5:
  37 0016 2046     		mov	r0, r4
  38 0018 FFF7FEFF 		bl	_ZNK8Platform11GetDateTimeEv
  39 001c 0AAB     		add	r3, sp, #40
  40 001e 01A9     		add	r1, sp, #4
  41 0020 43F8280D 		str	r0, [r3, #-40]!
  42 0024 6846     		mov	r0, sp
  43 0026 FFF7FEFF 		bl	gmtime_r
  44 002a 02A8     		add	r0, sp, #8
  45 002c 31C8     		ldmia	r0, {r0, r4, r5}
  46 002e 2D04     		lsls	r5, r5, #16
  47 0030 0199     		ldr	r1, [sp, #4]
  48 0032 069A     		ldr	r2, [sp, #24]
  49 0034 059B     		ldr	r3, [sp, #20]
  50 0036 45EAC424 		orr	r4, r5, r4, lsl #11
  51 003a 44EA4010 		orr	r0, r4, r0, lsl #5
  52 003e 40EA6101 		orr	r1, r0, r1, asr #1
  53 0042 503A     		subs	r2, r2, #80
  54 0044 41EA4262 		orr	r2, r1, r2, lsl #25
  55 0048 581C     		adds	r0, r3, #1
  56 004a 42EA4050 		orr	r0, r2, r0, lsl #21
  57 004e 0BB0     		add	sp, sp, #44
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cciMd6ln.s 			page 2


  58              		@ sp needed
  59 0050 30BD     		pop	{r4, r5, pc}
  60              	.L7:
  61 0052 00BF     		.align	2
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
