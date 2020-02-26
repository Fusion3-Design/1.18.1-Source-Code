ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc614HdN.s 			page 1


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
  15              		.file	"TransactionBuffer.cpp"
  16              		.section	.text._ZN17TransactionBuffer5ClearEv,"ax",%progbits
  17              		.align	2
  18              		.global	_ZN17TransactionBuffer5ClearEv
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN17TransactionBuffer5ClearEv, %function
  22              	_ZN17TransactionBuffer5ClearEv:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 0023     		movs	r3, #0
  27 0002 0360     		str	r3, [r0]
  28 0004 8360     		str	r3, [r0, #8]
  29 0006 4360     		str	r3, [r0, #4]
  30 0008 C360     		str	r3, [r0, #12]
  31 000a 0361     		str	r3, [r0, #16]
  32 000c 7047     		bx	lr
  33              		.size	_ZN17TransactionBuffer5ClearEv, .-_ZN17TransactionBuffer5ClearEv
  34 000e 00BF     		.section	.text._ZN17TransactionBuffer10SetMessageEmmm,"ax",%progbits
  35              		.align	2
  36              		.global	_ZN17TransactionBuffer10SetMessageEmmm
  37              		.thumb
  38              		.thumb_func
  39              		.type	_ZN17TransactionBuffer10SetMessageEmmm, %function
  40              	_ZN17TransactionBuffer10SetMessageEmmm:
  41              		@ args = 0, pretend = 0, frame = 0
  42              		@ frame_needed = 0, uses_anonymous_args = 0
  43              		@ link register save eliminated.
  44 0000 10B4     		push	{r4}
  45 0002 0468     		ldr	r4, [r0]
  46 0004 44B9     		cbnz	r4, .L4
  47 0006 4460     		str	r4, [r0, #4]
  48 0008 0461     		str	r4, [r0, #16]
  49 000a 0160     		str	r1, [r0]
  50 000c 8260     		str	r2, [r0, #8]
  51 000e C360     		str	r3, [r0, #12]
  52 0010 5DF8044B 		ldr	r4, [sp], #4
  53 0014 0120     		movs	r0, #1
  54 0016 7047     		bx	lr
  55              	.L4:
  56 0018 0020     		movs	r0, #0
  57 001a 5DF8044B 		ldr	r4, [sp], #4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc614HdN.s 			page 2


  58 001e 7047     		bx	lr
  59              		.size	_ZN17TransactionBuffer10SetMessageEmmm, .-_ZN17TransactionBuffer10SetMessageEmmm
  60              		.section	.text._ZN17TransactionBuffer10AppendDataEPKvm,"ax",%progbits
  61              		.align	2
  62              		.global	_ZN17TransactionBuffer10AppendDataEPKvm
  63              		.thumb
  64              		.thumb_func
  65              		.type	_ZN17TransactionBuffer10AppendDataEPKvm, %function
  66              	_ZN17TransactionBuffer10AppendDataEPKvm:
  67              		@ args = 0, pretend = 0, frame = 0
  68              		@ frame_needed = 0, uses_anonymous_args = 0
  69 0000 38B5     		push	{r3, r4, r5, lr}
  70 0002 0446     		mov	r4, r0
  71 0004 1430     		adds	r0, r0, #20
  72 0006 2369     		ldr	r3, [r4, #16]
  73 0008 C3F50065 		rsb	r5, r3, #2048
  74 000c AA42     		cmp	r2, r5
  75 000e 38BF     		it	cc
  76 0010 1546     		movcc	r5, r2
  77 0012 1844     		add	r0, r0, r3
  78 0014 2A46     		mov	r2, r5
  79 0016 FFF7FEFF 		bl	memcpy
  80 001a 2369     		ldr	r3, [r4, #16]
  81 001c 2B44     		add	r3, r3, r5
  82 001e 2361     		str	r3, [r4, #16]
  83 0020 2846     		mov	r0, r5
  84 0022 38BD     		pop	{r3, r4, r5, pc}
  85              		.size	_ZN17TransactionBuffer10AppendDataEPKvm, .-_ZN17TransactionBuffer10AppendDataEPKvm
  86              		.section	.text._ZN17TransactionBuffer9GetBufferERj,"ax",%progbits
  87              		.align	2
  88              		.global	_ZN17TransactionBuffer9GetBufferERj
  89              		.thumb
  90              		.thumb_func
  91              		.type	_ZN17TransactionBuffer9GetBufferERj, %function
  92              	_ZN17TransactionBuffer9GetBufferERj:
  93              		@ args = 0, pretend = 0, frame = 0
  94              		@ frame_needed = 0, uses_anonymous_args = 0
  95              		@ link register save eliminated.
  96 0000 10B4     		push	{r4}
  97 0002 00F11404 		add	r4, r0, #20
  98 0006 0069     		ldr	r0, [r0, #16]
  99 0008 C0F50062 		rsb	r2, r0, #2048
 100 000c 0A60     		str	r2, [r1]
 101 000e 2044     		add	r0, r0, r4
 102 0010 5DF8044B 		ldr	r4, [sp], #4
 103 0014 7047     		bx	lr
 104              		.size	_ZN17TransactionBuffer9GetBufferERj, .-_ZN17TransactionBuffer9GetBufferERj
 105 0016 00BF     		.section	.text._ZN17TransactionBuffer12DataAppendedEj,"ax",%progbits
 106              		.align	2
 107              		.global	_ZN17TransactionBuffer12DataAppendedEj
 108              		.thumb
 109              		.thumb_func
 110              		.type	_ZN17TransactionBuffer12DataAppendedEj, %function
 111              	_ZN17TransactionBuffer12DataAppendedEj:
 112              		@ args = 0, pretend = 0, frame = 0
 113              		@ frame_needed = 0, uses_anonymous_args = 0
 114              		@ link register save eliminated.
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc614HdN.s 			page 3


 115 0000 0369     		ldr	r3, [r0, #16]
 116 0002 1944     		add	r1, r1, r3
 117 0004 0161     		str	r1, [r0, #16]
 118 0006 7047     		bx	lr
 119              		.size	_ZN17TransactionBuffer12DataAppendedEj, .-_ZN17TransactionBuffer12DataAppendedEj
 120              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 121              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 122              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 123              	_ZL28cpu_irq_prev_interrupt_state:
 124 0000 00       		.space	1
 125              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 126              		.align	2
 127              		.type	_ZL32cpu_irq_critical_section_counter, %object
 128              		.size	_ZL32cpu_irq_critical_section_counter, 4
 129              	_ZL32cpu_irq_critical_section_counter:
 130 0000 00000000 		.space	4
 131              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
