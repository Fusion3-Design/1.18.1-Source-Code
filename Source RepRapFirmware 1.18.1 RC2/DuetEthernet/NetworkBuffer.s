ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4H0VVM.s 			page 1


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
  15              		.file	"NetworkBuffer.cpp"
  16              		.section	.text._ZN13NetworkBufferC2EPS_,"ax",%progbits
  17              		.align	2
  18              		.global	_ZN13NetworkBufferC2EPS_
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN13NetworkBufferC2EPS_, %function
  22              	_ZN13NetworkBufferC2EPS_:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 0022     		movs	r2, #0
  27 0002 80E80600 		stmia	r0, {r1, r2}
  28 0006 8260     		str	r2, [r0, #8]
  29 0008 7047     		bx	lr
  30              		.size	_ZN13NetworkBufferC2EPS_, .-_ZN13NetworkBufferC2EPS_
  31              		.global	_ZN13NetworkBufferC1EPS_
  32              		.thumb_set _ZN13NetworkBufferC1EPS_,_ZN13NetworkBufferC2EPS_
  33 000a 00BF     		.section	.text._ZN13NetworkBuffer7ReleaseEv,"ax",%progbits
  34              		.align	2
  35              		.global	_ZN13NetworkBuffer7ReleaseEv
  36              		.thumb
  37              		.thumb_func
  38              		.type	_ZN13NetworkBuffer7ReleaseEv, %function
  39              	_ZN13NetworkBuffer7ReleaseEv:
  40              		@ args = 0, pretend = 0, frame = 0
  41              		@ frame_needed = 0, uses_anonymous_args = 0
  42              		@ link register save eliminated.
  43 0000 034A     		ldr	r2, .L3
  44 0002 0346     		mov	r3, r0
  45 0004 1168     		ldr	r1, [r2]
  46 0006 0068     		ldr	r0, [r0]
  47 0008 1960     		str	r1, [r3]
  48 000a 1360     		str	r3, [r2]
  49 000c 7047     		bx	lr
  50              	.L4:
  51 000e 00BF     		.align	2
  52              	.L3:
  53 0010 00000000 		.word	.LANCHOR0
  54              		.size	_ZN13NetworkBuffer7ReleaseEv, .-_ZN13NetworkBuffer7ReleaseEv
  55              		.section	.text._ZN13NetworkBuffer8ReadCharERc,"ax",%progbits
  56              		.align	2
  57              		.global	_ZN13NetworkBuffer8ReadCharERc
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4H0VVM.s 			page 2


  58              		.thumb
  59              		.thumb_func
  60              		.type	_ZN13NetworkBuffer8ReadCharERc, %function
  61              	_ZN13NetworkBuffer8ReadCharERc:
  62              		@ args = 0, pretend = 0, frame = 0
  63              		@ frame_needed = 0, uses_anonymous_args = 0
  64              		@ link register save eliminated.
  65 0000 8368     		ldr	r3, [r0, #8]
  66 0002 4268     		ldr	r2, [r0, #4]
  67 0004 9342     		cmp	r3, r2
  68 0006 02D3     		bcc	.L9
  69 0008 0020     		movs	r0, #0
  70 000a 0870     		strb	r0, [r1]
  71 000c 7047     		bx	lr
  72              	.L9:
  73 000e 5A1C     		adds	r2, r3, #1
  74 0010 0344     		add	r3, r3, r0
  75 0012 8260     		str	r2, [r0, #8]
  76 0014 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
  77 0016 0B70     		strb	r3, [r1]
  78 0018 0120     		movs	r0, #1
  79 001a 7047     		bx	lr
  80              		.size	_ZN13NetworkBuffer8ReadCharERc, .-_ZN13NetworkBuffer8ReadCharERc
  81              		.section	.text._ZN13NetworkBuffer8TakeDataERj,"ax",%progbits
  82              		.align	2
  83              		.global	_ZN13NetworkBuffer8TakeDataERj
  84              		.thumb
  85              		.thumb_func
  86              		.type	_ZN13NetworkBuffer8TakeDataERj, %function
  87              	_ZN13NetworkBuffer8TakeDataERj:
  88              		@ args = 0, pretend = 0, frame = 0
  89              		@ frame_needed = 0, uses_anonymous_args = 0
  90              		@ link register save eliminated.
  91 0000 8268     		ldr	r2, [r0, #8]
  92 0002 30B4     		push	{r4, r5}
  93 0004 4568     		ldr	r5, [r0, #4]
  94 0006 0C68     		ldr	r4, [r1]
  95 0008 AD1A     		subs	r5, r5, r2
  96 000a 0346     		mov	r3, r0
  97 000c AC42     		cmp	r4, r5
  98 000e 00F10C00 		add	r0, r0, #12
  99 0012 1044     		add	r0, r0, r2
 100 0014 02D9     		bls	.L11
 101 0016 0D60     		str	r5, [r1]
 102 0018 9A68     		ldr	r2, [r3, #8]
 103 001a 2C46     		mov	r4, r5
 104              	.L11:
 105 001c 2244     		add	r2, r2, r4
 106 001e 9A60     		str	r2, [r3, #8]
 107 0020 30BC     		pop	{r4, r5}
 108 0022 7047     		bx	lr
 109              		.size	_ZN13NetworkBuffer8TakeDataERj, .-_ZN13NetworkBuffer8TakeDataERj
 110              		.section	.text._ZNK13NetworkBuffer14TotalRemainingEv,"ax",%progbits
 111              		.align	2
 112              		.global	_ZNK13NetworkBuffer14TotalRemainingEv
 113              		.thumb
 114              		.thumb_func
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4H0VVM.s 			page 3


 115              		.type	_ZNK13NetworkBuffer14TotalRemainingEv, %function
 116              	_ZNK13NetworkBuffer14TotalRemainingEv:
 117              		@ args = 0, pretend = 0, frame = 0
 118              		@ frame_needed = 0, uses_anonymous_args = 0
 119              		@ link register save eliminated.
 120 0000 40B1     		cbz	r0, .L13
 121 0002 0346     		mov	r3, r0
 122 0004 0020     		movs	r0, #0
 123              	.L14:
 124 0006 5968     		ldr	r1, [r3, #4]
 125 0008 9A68     		ldr	r2, [r3, #8]
 126 000a 1B68     		ldr	r3, [r3]
 127 000c 8A1A     		subs	r2, r1, r2
 128 000e 1044     		add	r0, r0, r2
 129 0010 002B     		cmp	r3, #0
 130 0012 F8D1     		bne	.L14
 131              	.L13:
 132 0014 7047     		bx	lr
 133              		.size	_ZNK13NetworkBuffer14TotalRemainingEv, .-_ZNK13NetworkBuffer14TotalRemainingEv
 134 0016 00BF     		.section	.text._ZN13NetworkBuffer10AppendDataEPKhj,"ax",%progbits
 135              		.align	2
 136              		.global	_ZN13NetworkBuffer10AppendDataEPKhj
 137              		.thumb
 138              		.thumb_func
 139              		.type	_ZN13NetworkBuffer10AppendDataEPKhj, %function
 140              	_ZN13NetworkBuffer10AppendDataEPKhj:
 141              		@ args = 0, pretend = 0, frame = 0
 142              		@ frame_needed = 0, uses_anonymous_args = 0
 143 0000 38B5     		push	{r3, r4, r5, lr}
 144 0002 0446     		mov	r4, r0
 145 0004 0C30     		adds	r0, r0, #12
 146 0006 6368     		ldr	r3, [r4, #4]
 147 0008 C3F50065 		rsb	r5, r3, #2048
 148 000c 9542     		cmp	r5, r2
 149 000e 28BF     		it	cs
 150 0010 1546     		movcs	r5, r2
 151 0012 1844     		add	r0, r0, r3
 152 0014 2A46     		mov	r2, r5
 153 0016 FFF7FEFF 		bl	memcpy
 154 001a 6368     		ldr	r3, [r4, #4]
 155 001c 2B44     		add	r3, r3, r5
 156 001e 6360     		str	r3, [r4, #4]
 157 0020 2846     		mov	r0, r5
 158 0022 38BD     		pop	{r3, r4, r5, pc}
 159              		.size	_ZN13NetworkBuffer10AppendDataEPKhj, .-_ZN13NetworkBuffer10AppendDataEPKhj
 160              		.section	.text._ZN13NetworkBuffer12ReadFromFileEP9FileStore,"ax",%progbits
 161              		.align	2
 162              		.global	_ZN13NetworkBuffer12ReadFromFileEP9FileStore
 163              		.thumb
 164              		.thumb_func
 165              		.type	_ZN13NetworkBuffer12ReadFromFileEP9FileStore, %function
 166              	_ZN13NetworkBuffer12ReadFromFileEP9FileStore:
 167              		@ args = 0, pretend = 0, frame = 0
 168              		@ frame_needed = 0, uses_anonymous_args = 0
 169 0000 10B5     		push	{r4, lr}
 170 0002 0446     		mov	r4, r0
 171 0004 4FF40062 		mov	r2, #2048
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4H0VVM.s 			page 4


 172 0008 0846     		mov	r0, r1
 173 000a 04F10C01 		add	r1, r4, #12
 174 000e FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 175 0012 0023     		movs	r3, #0
 176 0014 20EAE072 		bic	r2, r0, r0, asr #31
 177 0018 6260     		str	r2, [r4, #4]
 178 001a A360     		str	r3, [r4, #8]
 179 001c 10BD     		pop	{r4, pc}
 180              		.size	_ZN13NetworkBuffer12ReadFromFileEP9FileStore, .-_ZN13NetworkBuffer12ReadFromFileEP9FileStore
 181 001e 00BF     		.section	.text._ZN13NetworkBuffer5EmptyEv,"ax",%progbits
 182              		.align	2
 183              		.global	_ZN13NetworkBuffer5EmptyEv
 184              		.thumb
 185              		.thumb_func
 186              		.type	_ZN13NetworkBuffer5EmptyEv, %function
 187              	_ZN13NetworkBuffer5EmptyEv:
 188              		@ args = 0, pretend = 0, frame = 0
 189              		@ frame_needed = 0, uses_anonymous_args = 0
 190              		@ link register save eliminated.
 191 0000 0368     		ldr	r3, [r0]
 192 0002 0022     		movs	r2, #0
 193 0004 10B4     		push	{r4}
 194 0006 4260     		str	r2, [r0, #4]
 195 0008 8260     		str	r2, [r0, #8]
 196 000a 53B1     		cbz	r3, .L21
 197 000c 064C     		ldr	r4, .L26
 198 000e 2168     		ldr	r1, [r4]
 199 0010 01E0     		b	.L25
 200              	.L23:
 201 0012 1946     		mov	r1, r3
 202 0014 1346     		mov	r3, r2
 203              	.L25:
 204 0016 1A68     		ldr	r2, [r3]
 205 0018 1960     		str	r1, [r3]
 206 001a 0260     		str	r2, [r0]
 207 001c 002A     		cmp	r2, #0
 208 001e F8D1     		bne	.L23
 209 0020 2360     		str	r3, [r4]
 210              	.L21:
 211 0022 5DF8044B 		ldr	r4, [sp], #4
 212 0026 7047     		bx	lr
 213              	.L27:
 214              		.align	2
 215              	.L26:
 216 0028 00000000 		.word	.LANCHOR0
 217              		.size	_ZN13NetworkBuffer5EmptyEv, .-_ZN13NetworkBuffer5EmptyEv
 218              		.section	.text._ZN13NetworkBuffer12AppendToListEPPS_S0_,"ax",%progbits
 219              		.align	2
 220              		.global	_ZN13NetworkBuffer12AppendToListEPPS_S0_
 221              		.thumb
 222              		.thumb_func
 223              		.type	_ZN13NetworkBuffer12AppendToListEPPS_S0_, %function
 224              	_ZN13NetworkBuffer12AppendToListEPPS_S0_:
 225              		@ args = 0, pretend = 0, frame = 0
 226              		@ frame_needed = 0, uses_anonymous_args = 0
 227              		@ link register save eliminated.
 228 0000 0023     		movs	r3, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4H0VVM.s 			page 5


 229 0002 0B60     		str	r3, [r1]
 230 0004 0268     		ldr	r2, [r0]
 231 0006 0AB9     		cbnz	r2, .L31
 232 0008 04E0     		b	.L29
 233              	.L35:
 234 000a 1A46     		mov	r2, r3
 235              	.L31:
 236 000c 1368     		ldr	r3, [r2]
 237 000e 002B     		cmp	r3, #0
 238 0010 FBD1     		bne	.L35
 239 0012 1046     		mov	r0, r2
 240              	.L29:
 241 0014 0160     		str	r1, [r0]
 242 0016 7047     		bx	lr
 243              		.size	_ZN13NetworkBuffer12AppendToListEPPS_S0_, .-_ZN13NetworkBuffer12AppendToListEPPS_S0_
 244              		.section	.text._ZN13NetworkBuffer8AllocateEv,"ax",%progbits
 245              		.align	2
 246              		.global	_ZN13NetworkBuffer8AllocateEv
 247              		.thumb
 248              		.thumb_func
 249              		.type	_ZN13NetworkBuffer8AllocateEv, %function
 250              	_ZN13NetworkBuffer8AllocateEv:
 251              		@ args = 0, pretend = 0, frame = 0
 252              		@ frame_needed = 0, uses_anonymous_args = 0
 253              		@ link register save eliminated.
 254 0000 044B     		ldr	r3, .L41
 255 0002 1868     		ldr	r0, [r3]
 256 0004 28B1     		cbz	r0, .L37
 257 0006 0268     		ldr	r2, [r0]
 258 0008 1A60     		str	r2, [r3]
 259 000a 0023     		movs	r3, #0
 260 000c 0360     		str	r3, [r0]
 261 000e 8360     		str	r3, [r0, #8]
 262 0010 4360     		str	r3, [r0, #4]
 263              	.L37:
 264 0012 7047     		bx	lr
 265              	.L42:
 266              		.align	2
 267              	.L41:
 268 0014 00000000 		.word	.LANCHOR0
 269              		.size	_ZN13NetworkBuffer8AllocateEv, .-_ZN13NetworkBuffer8AllocateEv
 270              		.section	.text._ZN13NetworkBuffer15AllocateBuffersEj,"ax",%progbits
 271              		.align	2
 272              		.global	_ZN13NetworkBuffer15AllocateBuffersEj
 273              		.thumb
 274              		.thumb_func
 275              		.type	_ZN13NetworkBuffer15AllocateBuffersEj, %function
 276              	_ZN13NetworkBuffer15AllocateBuffersEj:
 277              		@ args = 0, pretend = 0, frame = 0
 278              		@ frame_needed = 0, uses_anonymous_args = 0
 279 0000 70B5     		push	{r4, r5, r6, lr}
 280 0002 0446     		mov	r4, r0
 281 0004 60B1     		cbz	r0, .L43
 282 0006 074E     		ldr	r6, .L50
 283 0008 0025     		movs	r5, #0
 284              	.L46:
 285 000a 40F60C00 		movw	r0, #2060
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4H0VVM.s 			page 6


 286 000e FFF7FEFF 		bl	_Znwj
 287 0012 3368     		ldr	r3, [r6]
 288 0014 0360     		str	r3, [r0]
 289 0016 013C     		subs	r4, r4, #1
 290 0018 4560     		str	r5, [r0, #4]
 291 001a 8560     		str	r5, [r0, #8]
 292 001c 3060     		str	r0, [r6]
 293 001e F4D1     		bne	.L46
 294              	.L43:
 295 0020 70BD     		pop	{r4, r5, r6, pc}
 296              	.L51:
 297 0022 00BF     		.align	2
 298              	.L50:
 299 0024 00000000 		.word	.LANCHOR0
 300              		.size	_ZN13NetworkBuffer15AllocateBuffersEj, .-_ZN13NetworkBuffer15AllocateBuffersEj
 301              		.global	_ZN13NetworkBuffer8freelistE
 302              		.section	.bss._ZN13NetworkBuffer8freelistE,"aw",%nobits
 303              		.align	2
 304              		.set	.LANCHOR0,. + 0
 305              		.type	_ZN13NetworkBuffer8freelistE, %object
 306              		.size	_ZN13NetworkBuffer8freelistE, 4
 307              	_ZN13NetworkBuffer8freelistE:
 308 0000 00000000 		.space	4
 309              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 310              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 311              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 312              	_ZL28cpu_irq_prev_interrupt_state:
 313 0000 00       		.space	1
 314              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 315              		.align	2
 316              		.type	_ZL32cpu_irq_critical_section_counter, %object
 317              		.size	_ZL32cpu_irq_critical_section_counter, 4
 318              	_ZL32cpu_irq_critical_section_counter:
 319 0000 00000000 		.space	4
 320              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
