ARM GAS  C:\Users\tstern\AppData\Local\Temp\cckhZC8M.s 			page 1


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
  15              		.file	"TransactionBufferReader.cpp"
  16              		.section	.text._ZN23TransactionBufferReaderC2ER17TransactionBuffer,"ax",%progbits
  17              		.align	2
  18              		.global	_ZN23TransactionBufferReaderC2ER17TransactionBuffer
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN23TransactionBufferReaderC2ER17TransactionBuffer, %function
  22              	_ZN23TransactionBufferReaderC2ER17TransactionBuffer:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 10B4     		push	{r4}
  27 0002 0024     		movs	r4, #0
  28 0004 0122     		movs	r2, #1
  29 0006 80E81200 		stmia	r0, {r1, r4}
  30 000a 0272     		strb	r2, [r0, #8]
  31 000c 5DF8044B 		ldr	r4, [sp], #4
  32 0010 7047     		bx	lr
  33              		.size	_ZN23TransactionBufferReaderC2ER17TransactionBuffer, .-_ZN23TransactionBufferReaderC2ER17Tra
  34              		.global	_ZN23TransactionBufferReaderC1ER17TransactionBuffer
  35              		.thumb_set _ZN23TransactionBufferReaderC1ER17TransactionBuffer,_ZN23TransactionBufferReaderC2ER17T
  36 0012 00BF     		.section	.text._ZN23TransactionBufferReader9GetStringEj,"ax",%progbits
  37              		.align	2
  38              		.global	_ZN23TransactionBufferReader9GetStringEj
  39              		.thumb
  40              		.thumb_func
  41              		.type	_ZN23TransactionBufferReader9GetStringEj, %function
  42              	_ZN23TransactionBufferReader9GetStringEj:
  43              		@ args = 0, pretend = 0, frame = 0
  44              		@ frame_needed = 0, uses_anonymous_args = 0
  45              		@ link register save eliminated.
  46 0000 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
  47 0002 10B4     		push	{r4}
  48 0004 BBB1     		cbz	r3, .L5
  49 0006 90E80C00 		ldmia	r0, {r2, r3}
  50 000a 1469     		ldr	r4, [r2, #16]
  51 000c 0B44     		add	r3, r3, r1
  52 000e A342     		cmp	r3, r4
  53 0010 05D9     		bls	.L7
  54 0012 0023     		movs	r3, #0
  55 0014 0372     		strb	r3, [r0, #8]
  56 0016 5DF8044B 		ldr	r4, [sp], #4
  57 001a 0948     		ldr	r0, .L8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cckhZC8M.s 			page 2


  58 001c 7047     		bx	lr
  59              	.L7:
  60 001e 1344     		add	r3, r3, r2
  61 0020 0022     		movs	r2, #0
  62 0022 DA74     		strb	r2, [r3, #19]
  63 0024 90E80C00 		ldmia	r0, {r2, r3}
  64 0028 1944     		add	r1, r1, r3
  65 002a 1432     		adds	r2, r2, #20
  66 002c 4160     		str	r1, [r0, #4]
  67 002e 5DF8044B 		ldr	r4, [sp], #4
  68 0032 D018     		adds	r0, r2, r3
  69 0034 7047     		bx	lr
  70              	.L5:
  71 0036 0248     		ldr	r0, .L8
  72 0038 5DF8044B 		ldr	r4, [sp], #4
  73 003c 7047     		bx	lr
  74              	.L9:
  75 003e 00BF     		.align	2
  76              	.L8:
  77 0040 00000000 		.word	.LC0
  78              		.size	_ZN23TransactionBufferReader9GetStringEj, .-_ZN23TransactionBufferReader9GetStringEj
  79              		.section	.rodata.str1.4,"aMS",%progbits,1
  80              		.align	2
  81              	.LC0:
  82 0000 2A2A4552 		.ascii	"**ERROR**\000"
  82      524F522A 
  82      2A00
  83 000a 0000     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
  84              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
  85              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
  86              	_ZL28cpu_irq_prev_interrupt_state:
  87 0000 00       		.space	1
  88              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
  89              		.align	2
  90              		.type	_ZL32cpu_irq_critical_section_counter, %object
  91              		.size	_ZL32cpu_irq_critical_section_counter, 4
  92              	_ZL32cpu_irq_critical_section_counter:
  93 0000 00000000 		.space	4
  94              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
