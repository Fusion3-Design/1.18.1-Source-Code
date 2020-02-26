ARM GAS  C:\Users\George\AppData\Local\Temp\ccOCGer8.s 			page 1


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
  14              		.file	"GCodeMachineState.cpp"
  15              		.section	.text._ZN17GCodeMachineStateC2Ev,"ax",%progbits
  16              		.align	2
  17              		.global	_ZN17GCodeMachineStateC2Ev
  18              		.thumb
  19              		.thumb_func
  20              		.type	_ZN17GCodeMachineStateC2Ev, %function
  21              	_ZN17GCodeMachineStateC2Ev:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 417C     		ldrb	r1, [r0, #17]	@ zero_extendqisi2
  26 0002 0022     		movs	r2, #0
  27 0004 10B4     		push	{r4}
  28 0006 074C     		ldr	r4, .L2
  29 0008 01F0F801 		and	r1, r1, #248
  30 000c 62F30411 		bfi	r1, r2, #4, #1
  31 0010 4460     		str	r4, [r0, #4]	@ float
  32 0012 4174     		strb	r1, [r0, #17]
  33 0014 0260     		str	r2, [r0]
  34 0016 8260     		str	r2, [r0, #8]
  35 0018 C260     		str	r2, [r0, #12]
  36 001a 0274     		strb	r2, [r0, #16]
  37 001c 5DF8044B 		ldr	r4, [sp], #4
  38 0020 7047     		bx	lr
  39              	.L3:
  40 0022 00BF     		.align	2
  41              	.L2:
  42 0024 01004842 		.word	1112014849
  43              		.size	_ZN17GCodeMachineStateC2Ev, .-_ZN17GCodeMachineStateC2Ev
  44              		.global	_ZN17GCodeMachineStateC1Ev
  45              		.thumb_set _ZN17GCodeMachineStateC1Ev,_ZN17GCodeMachineStateC2Ev
  46              		.section	.text._ZN17GCodeMachineState8AllocateEv,"ax",%progbits
  47              		.align	2
  48              		.global	_ZN17GCodeMachineState8AllocateEv
  49              		.thumb
  50              		.thumb_func
  51              		.type	_ZN17GCodeMachineState8AllocateEv, %function
  52              	_ZN17GCodeMachineState8AllocateEv:
  53              		@ args = 0, pretend = 0, frame = 0
  54              		@ frame_needed = 0, uses_anonymous_args = 0
  55 0000 38B5     		push	{r3, r4, r5, lr}
  56 0002 0F4B     		ldr	r3, .L8
  57 0004 1868     		ldr	r0, [r3]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOCGer8.s 			page 2


  58 0006 28B1     		cbz	r0, .L5
  59 0008 0168     		ldr	r1, [r0]
  60 000a 0022     		movs	r2, #0
  61 000c 1960     		str	r1, [r3]
  62 000e C260     		str	r2, [r0, #12]
  63 0010 0274     		strb	r2, [r0, #16]
  64 0012 38BD     		pop	{r3, r4, r5, pc}
  65              	.L5:
  66 0014 1420     		movs	r0, #20
  67 0016 FFF7FEFF 		bl	_Znwj
  68 001a 0A4A     		ldr	r2, .L8+4
  69 001c 417C     		ldrb	r1, [r0, #17]	@ zero_extendqisi2
  70 001e 1468     		ldr	r4, [r2]
  71 0020 0023     		movs	r3, #0
  72 0022 094D     		ldr	r5, .L8+8
  73 0024 01F0F801 		and	r1, r1, #248
  74 0028 63F30411 		bfi	r1, r3, #4, #1
  75 002c 0134     		adds	r4, r4, #1
  76 002e 0360     		str	r3, [r0]
  77 0030 4560     		str	r5, [r0, #4]	@ float
  78 0032 4174     		strb	r1, [r0, #17]
  79 0034 8360     		str	r3, [r0, #8]
  80 0036 C360     		str	r3, [r0, #12]
  81 0038 0374     		strb	r3, [r0, #16]
  82 003a 1460     		str	r4, [r2]
  83 003c 38BD     		pop	{r3, r4, r5, pc}
  84              	.L9:
  85 003e 00BF     		.align	2
  86              	.L8:
  87 0040 00000000 		.word	.LANCHOR0
  88 0044 00000000 		.word	.LANCHOR1
  89 0048 01004842 		.word	1112014849
  90              		.size	_ZN17GCodeMachineState8AllocateEv, .-_ZN17GCodeMachineState8AllocateEv
  91              		.section	.text._ZN17GCodeMachineState7ReleaseEPS_,"ax",%progbits
  92              		.align	2
  93              		.global	_ZN17GCodeMachineState7ReleaseEPS_
  94              		.thumb
  95              		.thumb_func
  96              		.type	_ZN17GCodeMachineState7ReleaseEPS_, %function
  97              	_ZN17GCodeMachineState7ReleaseEPS_:
  98              		@ args = 0, pretend = 0, frame = 0
  99              		@ frame_needed = 0, uses_anonymous_args = 0
 100 0000 10B5     		push	{r4, lr}
 101 0002 0446     		mov	r4, r0
 102 0004 8068     		ldr	r0, [r0, #8]
 103 0006 18B1     		cbz	r0, .L11
 104 0008 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 105 000c 0023     		movs	r3, #0
 106 000e A360     		str	r3, [r4, #8]
 107              	.L11:
 108 0010 024B     		ldr	r3, .L15
 109 0012 1A68     		ldr	r2, [r3]
 110 0014 2260     		str	r2, [r4]
 111 0016 1C60     		str	r4, [r3]
 112 0018 10BD     		pop	{r4, pc}
 113              	.L16:
 114 001a 00BF     		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOCGer8.s 			page 3


 115              	.L15:
 116 001c 00000000 		.word	.LANCHOR0
 117              		.size	_ZN17GCodeMachineState7ReleaseEPS_, .-_ZN17GCodeMachineState7ReleaseEPS_
 118              		.section	.text._ZN17GCodeMachineState11GetNumInUseEv,"ax",%progbits
 119              		.align	2
 120              		.global	_ZN17GCodeMachineState11GetNumInUseEv
 121              		.thumb
 122              		.thumb_func
 123              		.type	_ZN17GCodeMachineState11GetNumInUseEv, %function
 124              	_ZN17GCodeMachineState11GetNumInUseEv:
 125              		@ args = 0, pretend = 0, frame = 0
 126              		@ frame_needed = 0, uses_anonymous_args = 0
 127              		@ link register save eliminated.
 128 0000 044B     		ldr	r3, .L26
 129 0002 054A     		ldr	r2, .L26+4
 130 0004 1B68     		ldr	r3, [r3]
 131 0006 1068     		ldr	r0, [r2]
 132 0008 1BB1     		cbz	r3, .L18
 133              	.L19:
 134 000a 1B68     		ldr	r3, [r3]
 135 000c 0138     		subs	r0, r0, #1
 136 000e 002B     		cmp	r3, #0
 137 0010 FBD1     		bne	.L19
 138              	.L18:
 139 0012 7047     		bx	lr
 140              	.L27:
 141              		.align	2
 142              	.L26:
 143 0014 00000000 		.word	.LANCHOR0
 144 0018 00000000 		.word	.LANCHOR1
 145              		.size	_ZN17GCodeMachineState11GetNumInUseEv, .-_ZN17GCodeMachineState11GetNumInUseEv
 146              		.global	_ZN17GCodeMachineState12numAllocatedE
 147              		.global	_ZN17GCodeMachineState8freeListE
 148              		.section	.bss._ZN17GCodeMachineState12numAllocatedE,"aw",%nobits
 149              		.align	2
 150              		.set	.LANCHOR1,. + 0
 151              		.type	_ZN17GCodeMachineState12numAllocatedE, %object
 152              		.size	_ZN17GCodeMachineState12numAllocatedE, 4
 153              	_ZN17GCodeMachineState12numAllocatedE:
 154 0000 00000000 		.space	4
 155              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 156              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 157              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 158              	_ZL28cpu_irq_prev_interrupt_state:
 159 0000 00       		.space	1
 160              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 161              		.align	2
 162              		.type	_ZL32cpu_irq_critical_section_counter, %object
 163              		.size	_ZL32cpu_irq_critical_section_counter, 4
 164              	_ZL32cpu_irq_critical_section_counter:
 165 0000 00000000 		.space	4
 166              		.section	.bss._ZN17GCodeMachineState8freeListE,"aw",%nobits
 167              		.align	2
 168              		.set	.LANCHOR0,. + 0
 169              		.type	_ZN17GCodeMachineState8freeListE, %object
 170              		.size	_ZN17GCodeMachineState8freeListE, 4
 171              	_ZN17GCodeMachineState8freeListE:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOCGer8.s 			page 4


 172 0000 00000000 		.space	4
 173              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
