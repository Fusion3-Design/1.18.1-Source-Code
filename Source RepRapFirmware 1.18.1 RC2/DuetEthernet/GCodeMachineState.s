ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBJk4E7.s 			page 1


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
  15              		.file	"GCodeMachineState.cpp"
  16              		.section	.text._ZN17GCodeMachineStateC2Ev,"ax",%progbits
  17              		.align	2
  18              		.global	_ZN17GCodeMachineStateC2Ev
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN17GCodeMachineStateC2Ev, %function
  22              	_ZN17GCodeMachineStateC2Ev:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 417C     		ldrb	r1, [r0, #17]	@ zero_extendqisi2
  27 0002 064A     		ldr	r2, .L2
  28 0004 4260     		str	r2, [r0, #4]	@ float
  29 0006 01F0F801 		and	r1, r1, #248
  30 000a 0022     		movs	r2, #0
  31 000c 62F30411 		bfi	r1, r2, #4, #1
  32 0010 4174     		strb	r1, [r0, #17]
  33 0012 0260     		str	r2, [r0]
  34 0014 8260     		str	r2, [r0, #8]
  35 0016 C260     		str	r2, [r0, #12]
  36 0018 0274     		strb	r2, [r0, #16]
  37 001a 7047     		bx	lr
  38              	.L3:
  39              		.align	2
  40              	.L2:
  41 001c 01004842 		.word	1112014849
  42              		.size	_ZN17GCodeMachineStateC2Ev, .-_ZN17GCodeMachineStateC2Ev
  43              		.global	_ZN17GCodeMachineStateC1Ev
  44              		.thumb_set _ZN17GCodeMachineStateC1Ev,_ZN17GCodeMachineStateC2Ev
  45              		.section	.text._ZN17GCodeMachineState8AllocateEv,"ax",%progbits
  46              		.align	2
  47              		.global	_ZN17GCodeMachineState8AllocateEv
  48              		.thumb
  49              		.thumb_func
  50              		.type	_ZN17GCodeMachineState8AllocateEv, %function
  51              	_ZN17GCodeMachineState8AllocateEv:
  52              		@ args = 0, pretend = 0, frame = 0
  53              		@ frame_needed = 0, uses_anonymous_args = 0
  54 0000 38B5     		push	{r3, r4, r5, lr}
  55 0002 0F4B     		ldr	r3, .L8
  56 0004 1868     		ldr	r0, [r3]
  57 0006 28B1     		cbz	r0, .L5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBJk4E7.s 			page 2


  58 0008 0268     		ldr	r2, [r0]
  59 000a 1A60     		str	r2, [r3]
  60 000c 0023     		movs	r3, #0
  61 000e C360     		str	r3, [r0, #12]
  62 0010 0374     		strb	r3, [r0, #16]
  63 0012 38BD     		pop	{r3, r4, r5, pc}
  64              	.L5:
  65 0014 1420     		movs	r0, #20
  66 0016 FFF7FEFF 		bl	_Znwj
  67 001a 0A4A     		ldr	r2, .L8+4
  68 001c 417C     		ldrb	r1, [r0, #17]	@ zero_extendqisi2
  69 001e 1468     		ldr	r4, [r2]
  70 0020 094D     		ldr	r5, .L8+8
  71 0022 4560     		str	r5, [r0, #4]	@ float
  72 0024 0023     		movs	r3, #0
  73 0026 01F0F801 		and	r1, r1, #248
  74 002a 63F30411 		bfi	r1, r3, #4, #1
  75 002e 0134     		adds	r4, r4, #1
  76 0030 0360     		str	r3, [r0]
  77 0032 4174     		strb	r1, [r0, #17]
  78 0034 8360     		str	r3, [r0, #8]
  79 0036 C360     		str	r3, [r0, #12]
  80 0038 0374     		strb	r3, [r0, #16]
  81 003a 1460     		str	r4, [r2]
  82 003c 38BD     		pop	{r3, r4, r5, pc}
  83              	.L9:
  84 003e 00BF     		.align	2
  85              	.L8:
  86 0040 00000000 		.word	.LANCHOR0
  87 0044 00000000 		.word	.LANCHOR1
  88 0048 01004842 		.word	1112014849
  89              		.size	_ZN17GCodeMachineState8AllocateEv, .-_ZN17GCodeMachineState8AllocateEv
  90              		.section	.text._ZN17GCodeMachineState7ReleaseEPS_,"ax",%progbits
  91              		.align	2
  92              		.global	_ZN17GCodeMachineState7ReleaseEPS_
  93              		.thumb
  94              		.thumb_func
  95              		.type	_ZN17GCodeMachineState7ReleaseEPS_, %function
  96              	_ZN17GCodeMachineState7ReleaseEPS_:
  97              		@ args = 0, pretend = 0, frame = 0
  98              		@ frame_needed = 0, uses_anonymous_args = 0
  99 0000 10B5     		push	{r4, lr}
 100 0002 0446     		mov	r4, r0
 101 0004 8068     		ldr	r0, [r0, #8]
 102 0006 18B1     		cbz	r0, .L11
 103 0008 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 104 000c 0023     		movs	r3, #0
 105 000e A360     		str	r3, [r4, #8]
 106              	.L11:
 107 0010 024B     		ldr	r3, .L15
 108 0012 1A68     		ldr	r2, [r3]
 109 0014 2260     		str	r2, [r4]
 110 0016 1C60     		str	r4, [r3]
 111 0018 10BD     		pop	{r4, pc}
 112              	.L16:
 113 001a 00BF     		.align	2
 114              	.L15:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBJk4E7.s 			page 3


 115 001c 00000000 		.word	.LANCHOR0
 116              		.size	_ZN17GCodeMachineState7ReleaseEPS_, .-_ZN17GCodeMachineState7ReleaseEPS_
 117              		.section	.text._ZN17GCodeMachineState11GetNumInUseEv,"ax",%progbits
 118              		.align	2
 119              		.global	_ZN17GCodeMachineState11GetNumInUseEv
 120              		.thumb
 121              		.thumb_func
 122              		.type	_ZN17GCodeMachineState11GetNumInUseEv, %function
 123              	_ZN17GCodeMachineState11GetNumInUseEv:
 124              		@ args = 0, pretend = 0, frame = 0
 125              		@ frame_needed = 0, uses_anonymous_args = 0
 126              		@ link register save eliminated.
 127 0000 044B     		ldr	r3, .L26
 128 0002 054A     		ldr	r2, .L26+4
 129 0004 1B68     		ldr	r3, [r3]
 130 0006 1068     		ldr	r0, [r2]
 131 0008 1BB1     		cbz	r3, .L18
 132              	.L19:
 133 000a 1B68     		ldr	r3, [r3]
 134 000c 0138     		subs	r0, r0, #1
 135 000e 002B     		cmp	r3, #0
 136 0010 FBD1     		bne	.L19
 137              	.L18:
 138 0012 7047     		bx	lr
 139              	.L27:
 140              		.align	2
 141              	.L26:
 142 0014 00000000 		.word	.LANCHOR0
 143 0018 00000000 		.word	.LANCHOR1
 144              		.size	_ZN17GCodeMachineState11GetNumInUseEv, .-_ZN17GCodeMachineState11GetNumInUseEv
 145              		.global	_ZN17GCodeMachineState12numAllocatedE
 146              		.global	_ZN17GCodeMachineState8freeListE
 147              		.section	.bss._ZN17GCodeMachineState12numAllocatedE,"aw",%nobits
 148              		.align	2
 149              		.set	.LANCHOR1,. + 0
 150              		.type	_ZN17GCodeMachineState12numAllocatedE, %object
 151              		.size	_ZN17GCodeMachineState12numAllocatedE, 4
 152              	_ZN17GCodeMachineState12numAllocatedE:
 153 0000 00000000 		.space	4
 154              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 155              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 156              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 157              	_ZL28cpu_irq_prev_interrupt_state:
 158 0000 00       		.space	1
 159              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 160              		.align	2
 161              		.type	_ZL32cpu_irq_critical_section_counter, %object
 162              		.size	_ZL32cpu_irq_critical_section_counter, 4
 163              	_ZL32cpu_irq_critical_section_counter:
 164 0000 00000000 		.space	4
 165              		.section	.bss._ZN17GCodeMachineState8freeListE,"aw",%nobits
 166              		.align	2
 167              		.set	.LANCHOR0,. + 0
 168              		.type	_ZN17GCodeMachineState8freeListE, %object
 169              		.size	_ZN17GCodeMachineState8freeListE, 4
 170              	_ZN17GCodeMachineState8freeListE:
 171 0000 00000000 		.space	4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBJk4E7.s 			page 4


 172              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
