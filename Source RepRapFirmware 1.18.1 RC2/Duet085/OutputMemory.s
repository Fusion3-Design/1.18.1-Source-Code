ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 1


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
  14              		.file	"OutputMemory.cpp"
  15              		.section	.text._ZN12OutputBuffer6AppendEPS_,"ax",%progbits
  16              		.align	2
  17              		.global	_ZN12OutputBuffer6AppendEPS_
  18              		.thumb
  19              		.thumb_func
  20              		.type	_ZN12OutputBuffer6AppendEPS_, %function
  21              	_ZN12OutputBuffer6AppendEPS_:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 61B1     		cbz	r1, .L1
  26 0002 4368     		ldr	r3, [r0, #4]
  27 0004 4A68     		ldr	r2, [r1, #4]
  28 0006 1960     		str	r1, [r3]
  29 0008 0368     		ldr	r3, [r0]
  30 000a 4260     		str	r2, [r0, #4]
  31 000c 9942     		cmp	r1, r3
  32 000e 01D1     		bne	.L4
  33 0010 04E0     		b	.L1
  34              	.L6:
  35 0012 4268     		ldr	r2, [r0, #4]
  36              	.L4:
  37 0014 5A60     		str	r2, [r3, #4]
  38 0016 1B68     		ldr	r3, [r3]
  39 0018 9942     		cmp	r1, r3
  40 001a FAD1     		bne	.L6
  41              	.L1:
  42 001c 7047     		bx	lr
  43              		.size	_ZN12OutputBuffer6AppendEPS_, .-_ZN12OutputBuffer6AppendEPS_
  44 001e 00BF     		.section	.text._ZN12OutputBuffer18IncreaseReferencesEj,"ax",%progbits
  45              		.align	2
  46              		.global	_ZN12OutputBuffer18IncreaseReferencesEj
  47              		.thumb
  48              		.thumb_func
  49              		.type	_ZN12OutputBuffer18IncreaseReferencesEj, %function
  50              	_ZN12OutputBuffer18IncreaseReferencesEj:
  51              		@ args = 0, pretend = 0, frame = 0
  52              		@ frame_needed = 0, uses_anonymous_args = 0
  53              		@ link register save eliminated.
  54 0000 59B1     		cbz	r1, .L7
  55 0002 50B1     		cbz	r0, .L7
  56 0004 0122     		movs	r2, #1
  57              	.L10:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 2


  58 0006 D0F89830 		ldr	r3, [r0, #152]
  59 000a 80F89420 		strb	r2, [r0, #148]
  60 000e 0B44     		add	r3, r3, r1
  61 0010 C0F89830 		str	r3, [r0, #152]
  62 0014 0068     		ldr	r0, [r0]
  63 0016 0028     		cmp	r0, #0
  64 0018 F5D1     		bne	.L10
  65              	.L7:
  66 001a 7047     		bx	lr
  67              		.size	_ZN12OutputBuffer18IncreaseReferencesEj, .-_ZN12OutputBuffer18IncreaseReferencesEj
  68              		.section	.text._ZNK12OutputBuffer6LengthEv,"ax",%progbits
  69              		.align	2
  70              		.global	_ZNK12OutputBuffer6LengthEv
  71              		.thumb
  72              		.thumb_func
  73              		.type	_ZNK12OutputBuffer6LengthEv, %function
  74              	_ZNK12OutputBuffer6LengthEv:
  75              		@ args = 0, pretend = 0, frame = 0
  76              		@ frame_needed = 0, uses_anonymous_args = 0
  77              		@ link register save eliminated.
  78 0000 38B1     		cbz	r0, .L18
  79 0002 0346     		mov	r3, r0
  80 0004 0020     		movs	r0, #0
  81              	.L19:
  82 0006 D3F88C20 		ldr	r2, [r3, #140]
  83 000a 1B68     		ldr	r3, [r3]
  84 000c 1044     		add	r0, r0, r2
  85 000e 002B     		cmp	r3, #0
  86 0010 F9D1     		bne	.L19
  87              	.L18:
  88 0012 7047     		bx	lr
  89              		.size	_ZNK12OutputBuffer6LengthEv, .-_ZNK12OutputBuffer6LengthEv
  90              		.section	.text._ZN12OutputBufferixEj,"ax",%progbits
  91              		.align	2
  92              		.global	_ZN12OutputBufferixEj
  93              		.thumb
  94              		.thumb_func
  95              		.type	_ZN12OutputBufferixEj, %function
  96              	_ZN12OutputBufferixEj:
  97              		@ args = 0, pretend = 0, frame = 0
  98              		@ frame_needed = 0, uses_anonymous_args = 0
  99              		@ link register save eliminated.
 100 0000 D0F88C30 		ldr	r3, [r0, #140]
 101 0004 9942     		cmp	r1, r3
 102 0006 05D9     		bls	.L25
 103              	.L26:
 104 0008 0068     		ldr	r0, [r0]
 105 000a C91A     		subs	r1, r1, r3
 106 000c D0F88C30 		ldr	r3, [r0, #140]
 107 0010 8B42     		cmp	r3, r1
 108 0012 F9D3     		bcc	.L26
 109              	.L25:
 110 0014 0844     		add	r0, r0, r1
 111 0016 0C30     		adds	r0, r0, #12
 112 0018 7047     		bx	lr
 113              		.size	_ZN12OutputBufferixEj, .-_ZN12OutputBufferixEj
 114 001a 00BF     		.section	.text._ZNK12OutputBufferixEj,"ax",%progbits
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 3


 115              		.align	2
 116              		.global	_ZNK12OutputBufferixEj
 117              		.thumb
 118              		.thumb_func
 119              		.type	_ZNK12OutputBufferixEj, %function
 120              	_ZNK12OutputBufferixEj:
 121              		@ args = 0, pretend = 0, frame = 0
 122              		@ frame_needed = 0, uses_anonymous_args = 0
 123              		@ link register save eliminated.
 124 0000 D0F88C30 		ldr	r3, [r0, #140]
 125 0004 9942     		cmp	r1, r3
 126 0006 05D9     		bls	.L29
 127              	.L30:
 128 0008 0068     		ldr	r0, [r0]
 129 000a C91A     		subs	r1, r1, r3
 130 000c D0F88C30 		ldr	r3, [r0, #140]
 131 0010 8B42     		cmp	r3, r1
 132 0012 F9D3     		bcc	.L30
 133              	.L29:
 134 0014 0144     		add	r1, r1, r0
 135 0016 087B     		ldrb	r0, [r1, #12]	@ zero_extendqisi2
 136 0018 7047     		bx	lr
 137              		.size	_ZNK12OutputBufferixEj, .-_ZNK12OutputBufferixEj
 138 001a 00BF     		.section	.text._ZN12OutputBuffer4ReadEj,"ax",%progbits
 139              		.align	2
 140              		.global	_ZN12OutputBuffer4ReadEj
 141              		.thumb
 142              		.thumb_func
 143              		.type	_ZN12OutputBuffer4ReadEj, %function
 144              	_ZN12OutputBuffer4ReadEj:
 145              		@ args = 0, pretend = 0, frame = 0
 146              		@ frame_needed = 0, uses_anonymous_args = 0
 147              		@ link register save eliminated.
 148 0000 D0F89030 		ldr	r3, [r0, #144]
 149 0004 1944     		add	r1, r1, r3
 150 0006 0344     		add	r3, r3, r0
 151 0008 C0F89010 		str	r1, [r0, #144]
 152 000c 03F10C00 		add	r0, r3, #12
 153 0010 7047     		bx	lr
 154              		.size	_ZN12OutputBuffer4ReadEj, .-_ZN12OutputBuffer4ReadEj
 155 0012 00BF     		.section	.text._ZN12OutputBuffer4InitEv,"ax",%progbits
 156              		.align	2
 157              		.global	_ZN12OutputBuffer4InitEv
 158              		.thumb
 159              		.thumb_func
 160              		.type	_ZN12OutputBuffer4InitEv, %function
 161              	_ZN12OutputBuffer4InitEv:
 162              		@ args = 0, pretend = 0, frame = 0
 163              		@ frame_needed = 0, uses_anonymous_args = 0
 164 0000 70B5     		push	{r4, r5, r6, lr}
 165 0002 064D     		ldr	r5, .L36
 166 0004 0023     		movs	r3, #0
 167 0006 2B60     		str	r3, [r5]
 168 0008 2024     		movs	r4, #32
 169              	.L35:
 170 000a 9C20     		movs	r0, #156
 171 000c 2E68     		ldr	r6, [r5]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 4


 172 000e FFF7FEFF 		bl	_Znwj
 173 0012 013C     		subs	r4, r4, #1
 174 0014 0660     		str	r6, [r0]
 175 0016 2860     		str	r0, [r5]
 176 0018 F7D1     		bne	.L35
 177 001a 70BD     		pop	{r4, r5, r6, pc}
 178              	.L37:
 179              		.align	2
 180              	.L36:
 181 001c 00000000 		.word	.LANCHOR0
 182              		.size	_ZN12OutputBuffer4InitEv, .-_ZN12OutputBuffer4InitEv
 183              		.section	.text._ZN12OutputBuffer8AllocateERPS_,"ax",%progbits
 184              		.align	2
 185              		.global	_ZN12OutputBuffer8AllocateERPS_
 186              		.thumb
 187              		.thumb_func
 188              		.type	_ZN12OutputBuffer8AllocateERPS_, %function
 189              	_ZN12OutputBuffer8AllocateERPS_:
 190              		@ args = 0, pretend = 0, frame = 0
 191              		@ frame_needed = 0, uses_anonymous_args = 0
 192              		@ link register save eliminated.
 193 0000 70B4     		push	{r4, r5, r6}
 194              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 195 0002 EFF31085 		MRS r5, primask
 196              	@ 0 "" 2
 197              		.thumb
 198 0006 D5F10105 		rsbs	r5, r5, #1
 199 000a 38BF     		it	cc
 200 000c 0025     		movcc	r5, #0
 201              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 202 000e 72B6     		cpsid i
 203              	@ 0 "" 2
 204              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 205 0010 BFF35F8F 		dmb
 206              	@ 0 "" 2
 207              		.thumb
 208 0014 224C     		ldr	r4, .L49
 209 0016 0023     		movs	r3, #0
 210 0018 224A     		ldr	r2, .L49+4
 211 001a 2370     		strb	r3, [r4]
 212 001c 1368     		ldr	r3, [r2]
 213 001e 002B     		cmp	r3, #0
 214 0020 2AD0     		beq	.L47
 215 0022 1168     		ldr	r1, [r2]
 216 0024 204B     		ldr	r3, .L49+8
 217 0026 0160     		str	r1, [r0]
 218 0028 0E68     		ldr	r6, [r1]
 219 002a 2049     		ldr	r1, .L49+12
 220 002c 1660     		str	r6, [r2]
 221 002e 1A68     		ldr	r2, [r3]
 222 0030 0132     		adds	r2, r2, #1
 223 0032 1A60     		str	r2, [r3]
 224 0034 1E68     		ldr	r6, [r3]
 225 0036 0A68     		ldr	r2, [r1]
 226 0038 9642     		cmp	r6, r2
 227 003a 88BF     		it	hi
 228 003c 1B68     		ldrhi	r3, [r3]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 5


 229 003e 4FF00002 		mov	r2, #0
 230 0042 88BF     		it	hi
 231 0044 0B60     		strhi	r3, [r1]
 232 0046 0368     		ldr	r3, [r0]
 233 0048 0121     		movs	r1, #1
 234 004a 1A60     		str	r2, [r3]
 235 004c 0368     		ldr	r3, [r0]
 236 004e 5B60     		str	r3, [r3, #4]
 237 0050 0368     		ldr	r3, [r0]
 238 0052 C3F89020 		str	r2, [r3, #144]
 239 0056 C3F88C20 		str	r2, [r3, #140]
 240 005a 83F89420 		strb	r2, [r3, #148]
 241 005e C3F89810 		str	r1, [r3, #152]
 242 0062 15B9     		cbnz	r5, .L48
 243 0064 0846     		mov	r0, r1
 244 0066 70BC     		pop	{r4, r5, r6}
 245 0068 7047     		bx	lr
 246              	.L48:
 247 006a 2170     		strb	r1, [r4]
 248              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 249 006c BFF35F8F 		dmb
 250              	@ 0 "" 2
 251              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 252 0070 62B6     		cpsie i
 253              	@ 0 "" 2
 254              		.thumb
 255 0072 0120     		movs	r0, #1
 256 0074 70BC     		pop	{r4, r5, r6}
 257 0076 7047     		bx	lr
 258              	.L47:
 259 0078 0D4B     		ldr	r3, .L49+16
 260 007a 1B68     		ldr	r3, [r3]
 261 007c D3F8C020 		ldr	r2, [r3, #192]
 262 0080 42F00402 		orr	r2, r2, #4
 263 0084 C3F8C020 		str	r2, [r3, #192]
 264 0088 25B1     		cbz	r5, .L40
 265 008a 0123     		movs	r3, #1
 266 008c 2370     		strb	r3, [r4]
 267              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 268 008e BFF35F8F 		dmb
 269              	@ 0 "" 2
 270              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 271 0092 62B6     		cpsie i
 272              	@ 0 "" 2
 273              		.thumb
 274              	.L40:
 275 0094 0021     		movs	r1, #0
 276 0096 0160     		str	r1, [r0]
 277 0098 70BC     		pop	{r4, r5, r6}
 278 009a 0846     		mov	r0, r1
 279 009c 7047     		bx	lr
 280              	.L50:
 281 009e 00BF     		.align	2
 282              	.L49:
 283 00a0 00000000 		.word	g_interrupt_enabled
 284 00a4 00000000 		.word	.LANCHOR0
 285 00a8 00000000 		.word	.LANCHOR1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 6


 286 00ac 00000000 		.word	.LANCHOR2
 287 00b0 00000000 		.word	reprap
 288              		.size	_ZN12OutputBuffer8AllocateERPS_, .-_ZN12OutputBuffer8AllocateERPS_
 289              		.section	.text._ZN12OutputBuffer12GetBytesLeftEPKS_,"ax",%progbits
 290              		.align	2
 291              		.global	_ZN12OutputBuffer12GetBytesLeftEPKS_
 292              		.thumb
 293              		.thumb_func
 294              		.type	_ZN12OutputBuffer12GetBytesLeftEPKS_, %function
 295              	_ZN12OutputBuffer12GetBytesLeftEPKS_:
 296              		@ args = 0, pretend = 0, frame = 0
 297              		@ frame_needed = 0, uses_anonymous_args = 0
 298              		@ link register save eliminated.
 299 0000 094B     		ldr	r3, .L56
 300 0002 1B68     		ldr	r3, [r3]
 301 0004 C3F12002 		rsb	r2, r3, #32
 302 0008 60B1     		cbz	r0, .L55
 303 000a 4168     		ldr	r1, [r0, #4]
 304 000c 012A     		cmp	r2, #1
 305 000e D1F88C00 		ldr	r0, [r1, #140]
 306 0012 C0F18000 		rsb	r0, r0, #128
 307 0016 04D9     		bls	.L53
 308 0018 C3F10073 		rsb	r3, r3, #33554432
 309 001c 1E33     		adds	r3, r3, #30
 310 001e 00EBC310 		add	r0, r0, r3, lsl #7
 311              	.L53:
 312 0022 7047     		bx	lr
 313              	.L55:
 314 0024 D001     		lsls	r0, r2, #7
 315 0026 7047     		bx	lr
 316              	.L57:
 317              		.align	2
 318              	.L56:
 319 0028 00000000 		.word	.LANCHOR1
 320              		.size	_ZN12OutputBuffer12GetBytesLeftEPKS_, .-_ZN12OutputBuffer12GetBytesLeftEPKS_
 321              		.section	.text._ZN12OutputBuffer7ReleaseEPS_,"ax",%progbits
 322              		.align	2
 323              		.global	_ZN12OutputBuffer7ReleaseEPS_
 324              		.thumb
 325              		.thumb_func
 326              		.type	_ZN12OutputBuffer7ReleaseEPS_, %function
 327              	_ZN12OutputBuffer7ReleaseEPS_:
 328              		@ args = 0, pretend = 0, frame = 0
 329              		@ frame_needed = 0, uses_anonymous_args = 0
 330              		@ link register save eliminated.
 331 0000 70B4     		push	{r4, r5, r6}
 332 0002 0346     		mov	r3, r0
 333              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 334 0004 EFF31085 		MRS r5, primask
 335              	@ 0 "" 2
 336              		.thumb
 337 0008 D5F10105 		rsbs	r5, r5, #1
 338 000c 38BF     		it	cc
 339 000e 0025     		movcc	r5, #0
 340              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 341 0010 72B6     		cpsid i
 342              	@ 0 "" 2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 7


 343              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 344 0012 BFF35F8F 		dmb
 345              	@ 0 "" 2
 346              		.thumb
 347 0016 D0F89810 		ldr	r1, [r0, #152]
 348 001a 0F4C     		ldr	r4, .L67
 349 001c 0022     		movs	r2, #0
 350 001e 0129     		cmp	r1, #1
 351 0020 0068     		ldr	r0, [r0]
 352 0022 2270     		strb	r2, [r4]
 353 0024 07D9     		bls	.L59
 354 0026 0139     		subs	r1, r1, #1
 355 0028 C3F89810 		str	r1, [r3, #152]
 356 002c C3F89020 		str	r2, [r3, #144]
 357 0030 5DB9     		cbnz	r5, .L66
 358              	.L61:
 359 0032 70BC     		pop	{r4, r5, r6}
 360 0034 7047     		bx	lr
 361              	.L59:
 362 0036 0949     		ldr	r1, .L67+4
 363 0038 094A     		ldr	r2, .L67+8
 364 003a 0E68     		ldr	r6, [r1]
 365 003c 1E60     		str	r6, [r3]
 366 003e 0B60     		str	r3, [r1]
 367 0040 1368     		ldr	r3, [r2]
 368 0042 013B     		subs	r3, r3, #1
 369 0044 1360     		str	r3, [r2]
 370 0046 002D     		cmp	r5, #0
 371 0048 F3D0     		beq	.L61
 372              	.L66:
 373 004a 0123     		movs	r3, #1
 374 004c 2370     		strb	r3, [r4]
 375              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 376 004e BFF35F8F 		dmb
 377              	@ 0 "" 2
 378              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 379 0052 62B6     		cpsie i
 380              	@ 0 "" 2
 381              		.thumb
 382 0054 70BC     		pop	{r4, r5, r6}
 383 0056 7047     		bx	lr
 384              	.L68:
 385              		.align	2
 386              	.L67:
 387 0058 00000000 		.word	g_interrupt_enabled
 388 005c 00000000 		.word	.LANCHOR0
 389 0060 00000000 		.word	.LANCHOR1
 390              		.size	_ZN12OutputBuffer7ReleaseEPS_, .-_ZN12OutputBuffer7ReleaseEPS_
 391              		.section	.text._ZN12OutputBuffer8TruncateEPS_j,"ax",%progbits
 392              		.align	2
 393              		.global	_ZN12OutputBuffer8TruncateEPS_j
 394              		.thumb
 395              		.thumb_func
 396              		.type	_ZN12OutputBuffer8TruncateEPS_j, %function
 397              	_ZN12OutputBuffer8TruncateEPS_j:
 398              		@ args = 0, pretend = 0, frame = 0
 399              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 8


 400 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 401 0002 0546     		mov	r5, r0
 402 0004 0F46     		mov	r7, r1
 403 0006 E0B1     		cbz	r0, .L79
 404 0008 0068     		ldr	r0, [r0]
 405 000a C8B1     		cbz	r0, .L70
 406 000c 95F89460 		ldrb	r6, [r5, #148]	@ zero_extendqisi2
 407 0010 BEB9     		cbnz	r6, .L79
 408              	.L76:
 409 0012 2C46     		mov	r4, r5
 410 0014 01E0     		b	.L72
 411              	.L81:
 412 0016 0446     		mov	r4, r0
 413 0018 1846     		mov	r0, r3
 414              	.L72:
 415 001a 0368     		ldr	r3, [r0]
 416 001c 002B     		cmp	r3, #0
 417 001e FAD1     		bne	.L81
 418 0020 2360     		str	r3, [r4]
 419 0022 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 420 0026 AC42     		cmp	r4, r5
 421 0028 06F18006 		add	r6, r6, #128
 422 002c 03D0     		beq	.L74
 423 002e BE42     		cmp	r6, r7
 424 0030 01D2     		bcs	.L74
 425 0032 2868     		ldr	r0, [r5]
 426 0034 EDE7     		b	.L76
 427              	.L74:
 428 0036 6C60     		str	r4, [r5, #4]
 429 0038 2D68     		ldr	r5, [r5]
 430 003a 002D     		cmp	r5, #0
 431 003c FBD1     		bne	.L74
 432 003e 3046     		mov	r0, r6
 433              	.L70:
 434 0040 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 435              	.L79:
 436 0042 0020     		movs	r0, #0
 437 0044 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 438              		.size	_ZN12OutputBuffer8TruncateEPS_j, .-_ZN12OutputBuffer8TruncateEPS_j
 439 0046 00BF     		.section	.text._ZN12OutputBuffer4copyEc,"ax",%progbits
 440              		.align	2
 441              		.global	_ZN12OutputBuffer4copyEc
 442              		.thumb
 443              		.thumb_func
 444              		.type	_ZN12OutputBuffer4copyEc, %function
 445              	_ZN12OutputBuffer4copyEc:
 446              		@ args = 0, pretend = 0, frame = 0
 447              		@ frame_needed = 0, uses_anonymous_args = 0
 448 0000 38B5     		push	{r3, r4, r5, lr}
 449 0002 0446     		mov	r4, r0
 450 0004 0068     		ldr	r0, [r0]
 451 0006 0D46     		mov	r5, r1
 452 0008 28B1     		cbz	r0, .L83
 453              	.L85:
 454 000a FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 455 000e 0028     		cmp	r0, #0
 456 0010 FBD1     		bne	.L85
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 9


 457 0012 84E81100 		stmia	r4, {r0, r4}
 458              	.L83:
 459 0016 0120     		movs	r0, #1
 460 0018 2573     		strb	r5, [r4, #12]
 461 001a C4F88C00 		str	r0, [r4, #140]
 462 001e 38BD     		pop	{r3, r4, r5, pc}
 463              		.size	_ZN12OutputBuffer4copyEc, .-_ZN12OutputBuffer4copyEc
 464              		.section	.text._ZN12OutputBuffer3catEc,"ax",%progbits
 465              		.align	2
 466              		.global	_ZN12OutputBuffer3catEc
 467              		.thumb
 468              		.thumb_func
 469              		.type	_ZN12OutputBuffer3catEc, %function
 470              	_ZN12OutputBuffer3catEc:
 471              		@ args = 0, pretend = 0, frame = 16
 472              		@ frame_needed = 0, uses_anonymous_args = 0
 473 0000 10B5     		push	{r4, lr}
 474 0002 4368     		ldr	r3, [r0, #4]
 475 0004 84B0     		sub	sp, sp, #16
 476 0006 D3F88C20 		ldr	r2, [r3, #140]
 477 000a 0446     		mov	r4, r0
 478 000c 802A     		cmp	r2, #128
 479 000e 07D0     		beq	.L97
 480 0010 501C     		adds	r0, r2, #1
 481 0012 1A44     		add	r2, r2, r3
 482 0014 C3F88C00 		str	r0, [r3, #140]
 483 0018 0120     		movs	r0, #1
 484 001a 1173     		strb	r1, [r2, #12]
 485              	.L96:
 486 001c 04B0     		add	sp, sp, #16
 487              		@ sp needed
 488 001e 10BD     		pop	{r4, pc}
 489              	.L97:
 490 0020 03A8     		add	r0, sp, #12
 491 0022 0191     		str	r1, [sp, #4]
 492 0024 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 493 0028 0199     		ldr	r1, [sp, #4]
 494 002a 0028     		cmp	r0, #0
 495 002c F6D0     		beq	.L96
 496 002e D4F89830 		ldr	r3, [r4, #152]
 497 0032 0398     		ldr	r0, [sp, #12]
 498 0034 C0F89830 		str	r3, [r0, #152]
 499 0038 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEc
 500 003c 039B     		ldr	r3, [sp, #12]
 501 003e 6268     		ldr	r2, [r4, #4]
 502 0040 9C42     		cmp	r4, r3
 503 0042 1360     		str	r3, [r2]
 504 0044 18BF     		it	ne
 505 0046 2046     		movne	r0, r4
 506 0048 03D0     		beq	.L94
 507              	.L95:
 508 004a 4360     		str	r3, [r0, #4]
 509 004c 0068     		ldr	r0, [r0]
 510 004e 8342     		cmp	r3, r0
 511 0050 FBD1     		bne	.L95
 512              	.L94:
 513 0052 0120     		movs	r0, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 10


 514 0054 E2E7     		b	.L96
 515              		.size	_ZN12OutputBuffer3catEc, .-_ZN12OutputBuffer3catEc
 516 0056 00BF     		.section	.text._ZN12OutputBuffer12EncodeStringEPKcjbb,"ax",%progbits
 517              		.align	2
 518              		.global	_ZN12OutputBuffer12EncodeStringEPKcjbb
 519              		.thumb
 520              		.thumb_func
 521              		.type	_ZN12OutputBuffer12EncodeStringEPKcjbb, %function
 522              	_ZN12OutputBuffer12EncodeStringEPKcjbb:
 523              		@ args = 4, pretend = 0, frame = 8
 524              		@ frame_needed = 0, uses_anonymous_args = 0
 525 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 526 0004 83B0     		sub	sp, sp, #12
 527 0006 9DF83040 		ldrb	r4, [sp, #48]	@ zero_extendqisi2
 528 000a 8846     		mov	r8, r1
 529 000c 0194     		str	r4, [sp, #4]
 530 000e 9146     		mov	r9, r2
 531 0010 9A46     		mov	r10, r3
 532 0012 0746     		mov	r7, r0
 533 0014 002C     		cmp	r4, #0
 534 0016 43D1     		bne	.L132
 535 0018 019E     		ldr	r6, [sp, #4]
 536              	.L99:
 537 001a 98F80040 		ldrb	r4, [r8]	@ zero_extendqisi2
 538 001e B9F1000F 		cmp	r9, #0
 539 0022 2ED0     		beq	.L100
 540 0024 6CB3     		cbz	r4, .L100
 541 0026 0125     		movs	r5, #1
 542 0028 15E0     		b	.L101
 543              	.L133:
 544 002a 092C     		cmp	r4, #9
 545 002c 34D0     		beq	.L112
 546 002e 0A2C     		cmp	r4, #10
 547 0030 1DD1     		bne	.L102
 548 0032 6E24     		movs	r4, #110
 549              	.L105:
 550 0034 5C21     		movs	r1, #92
 551 0036 3846     		mov	r0, r7
 552 0038 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 553 003c 2146     		mov	r1, r4
 554 003e 8346     		mov	fp, r0
 555 0040 3846     		mov	r0, r7
 556 0042 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 557 0046 18F80540 		ldrb	r4, [r8, r5]	@ zero_extendqisi2
 558 004a 0135     		adds	r5, r5, #1
 559 004c 5844     		add	r0, r0, fp
 560 004e A945     		cmp	r9, r5
 561 0050 0644     		add	r6, r6, r0
 562 0052 16D3     		bcc	.L100
 563              	.L134:
 564 0054 ACB1     		cbz	r4, .L100
 565              	.L101:
 566 0056 1F2C     		cmp	r4, #31
 567 0058 02D8     		bhi	.L108
 568 005a BAF1000F 		cmp	r10, #0
 569 005e 10D0     		beq	.L100
 570              	.L108:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 11


 571 0060 0D2C     		cmp	r4, #13
 572 0062 1BD0     		beq	.L103
 573 0064 E1D9     		bls	.L133
 574 0066 222C     		cmp	r4, #34
 575 0068 E4D0     		beq	.L105
 576 006a 5C2C     		cmp	r4, #92
 577 006c E2D0     		beq	.L105
 578              	.L102:
 579 006e 2146     		mov	r1, r4
 580 0070 3846     		mov	r0, r7
 581 0072 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 582 0076 18F80540 		ldrb	r4, [r8, r5]	@ zero_extendqisi2
 583 007a 0135     		adds	r5, r5, #1
 584 007c A945     		cmp	r9, r5
 585 007e 0644     		add	r6, r6, r0
 586 0080 E8D2     		bcs	.L134
 587              	.L100:
 588 0082 019C     		ldr	r4, [sp, #4]
 589 0084 24B1     		cbz	r4, .L119
 590 0086 3846     		mov	r0, r7
 591 0088 2221     		movs	r1, #34
 592 008a FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 593 008e 0644     		add	r6, r6, r0
 594              	.L119:
 595 0090 3046     		mov	r0, r6
 596 0092 03B0     		add	sp, sp, #12
 597              		@ sp needed
 598 0094 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 599              	.L112:
 600 0098 7424     		movs	r4, #116
 601 009a CBE7     		b	.L105
 602              	.L103:
 603 009c 7224     		movs	r4, #114
 604 009e C9E7     		b	.L105
 605              	.L132:
 606 00a0 2221     		movs	r1, #34
 607 00a2 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 608 00a6 0646     		mov	r6, r0
 609 00a8 B7E7     		b	.L99
 610              		.size	_ZN12OutputBuffer12EncodeStringEPKcjbb, .-_ZN12OutputBuffer12EncodeStringEPKcjbb
 611 00aa 00BF     		.section	.text._ZN12OutputBuffer11EncodeReplyEPS_b,"ax",%progbits
 612              		.align	2
 613              		.global	_ZN12OutputBuffer11EncodeReplyEPS_b
 614              		.thumb
 615              		.thumb_func
 616              		.type	_ZN12OutputBuffer11EncodeReplyEPS_b, %function
 617              	_ZN12OutputBuffer11EncodeReplyEPS_b:
 618              		@ args = 0, pretend = 0, frame = 0
 619              		@ frame_needed = 0, uses_anonymous_args = 0
 620 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 621 0004 0C46     		mov	r4, r1
 622 0006 82B0     		sub	sp, sp, #8
 623 0008 2221     		movs	r1, #34
 624 000a 1746     		mov	r7, r2
 625 000c 0646     		mov	r6, r0
 626 000e FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 627 0012 0546     		mov	r5, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 12


 628 0014 94B1     		cbz	r4, .L136
 629 0016 4FF00008 		mov	r8, #0
 630              	.L137:
 631 001a D4F88C20 		ldr	r2, [r4, #140]
 632 001e 04F10C01 		add	r1, r4, #12
 633 0022 3B46     		mov	r3, r7
 634 0024 3046     		mov	r0, r6
 635 0026 CDF80080 		str	r8, [sp]
 636 002a FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 637 002e 0544     		add	r5, r5, r0
 638 0030 2046     		mov	r0, r4
 639 0032 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 640 0036 0446     		mov	r4, r0
 641 0038 0028     		cmp	r0, #0
 642 003a EED1     		bne	.L137
 643              	.L136:
 644 003c 3046     		mov	r0, r6
 645 003e 2221     		movs	r1, #34
 646 0040 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 647 0044 2844     		add	r0, r0, r5
 648 0046 02B0     		add	sp, sp, #8
 649              		@ sp needed
 650 0048 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 651              		.size	_ZN12OutputBuffer11EncodeReplyEPS_b, .-_ZN12OutputBuffer11EncodeReplyEPS_b
 652              		.section	.text._ZN12OutputBuffer4copyEPKcj,"ax",%progbits
 653              		.align	2
 654              		.global	_ZN12OutputBuffer4copyEPKcj
 655              		.thumb
 656              		.thumb_func
 657              		.type	_ZN12OutputBuffer4copyEPKcj, %function
 658              	_ZN12OutputBuffer4copyEPKcj:
 659              		@ args = 0, pretend = 0, frame = 8
 660              		@ frame_needed = 0, uses_anonymous_args = 0
 661 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 662 0004 0546     		mov	r5, r0
 663 0006 0068     		ldr	r0, [r0]
 664 0008 82B0     		sub	sp, sp, #8
 665 000a 0F46     		mov	r7, r1
 666 000c 9046     		mov	r8, r2
 667 000e 28B1     		cbz	r0, .L145
 668              	.L147:
 669 0010 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 670 0014 0028     		cmp	r0, #0
 671 0016 FBD1     		bne	.L147
 672 0018 85E82100 		stmia	r5, {r0, r5}
 673              	.L145:
 674 001c B8F1800F 		cmp	r8, #128
 675 0020 3CD9     		bls	.L148
 676 0022 8026     		movs	r6, #128
 677 0024 04E0     		b	.L152
 678              	.L150:
 679 0026 6A68     		ldr	r2, [r5, #4]
 680 0028 B045     		cmp	r8, r6
 681 002a 1360     		str	r3, [r2]
 682 002c 6B60     		str	r3, [r5, #4]
 683 002e 1FD9     		bls	.L149
 684              	.L152:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 13


 685 0030 01A8     		add	r0, sp, #4
 686 0032 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 687 0036 C6EB0804 		rsb	r4, r6, r8
 688 003a 802C     		cmp	r4, #128
 689 003c 28BF     		it	cs
 690 003e 8024     		movcs	r4, #128
 691 0040 B919     		adds	r1, r7, r6
 692 0042 2246     		mov	r2, r4
 693 0044 A0B1     		cbz	r0, .L149
 694 0046 DDF804E0 		ldr	lr, [sp, #4]
 695 004a D5F89830 		ldr	r3, [r5, #152]
 696 004e 0EF10C00 		add	r0, lr, #12
 697 0052 CEF89830 		str	r3, [lr, #152]
 698 0056 FFF7FEFF 		bl	memcpy
 699 005a 019B     		ldr	r3, [sp, #4]
 700 005c 2A68     		ldr	r2, [r5]
 701 005e 2644     		add	r6, r6, r4
 702 0060 C3F88C40 		str	r4, [r3, #140]
 703 0064 002A     		cmp	r2, #0
 704 0066 DED1     		bne	.L150
 705 0068 B045     		cmp	r8, r6
 706 006a 6B60     		str	r3, [r5, #4]
 707 006c 2B60     		str	r3, [r5]
 708 006e DFD8     		bhi	.L152
 709              	.L149:
 710 0070 2B68     		ldr	r3, [r5]
 711 0072 6A68     		ldr	r2, [r5, #4]
 712 0074 9A42     		cmp	r2, r3
 713 0076 04D0     		beq	.L155
 714              	.L156:
 715 0078 5A60     		str	r2, [r3, #4]
 716 007a 6A68     		ldr	r2, [r5, #4]
 717 007c 1B68     		ldr	r3, [r3]
 718 007e 9A42     		cmp	r2, r3
 719 0080 FAD1     		bne	.L156
 720              	.L155:
 721 0082 8024     		movs	r4, #128
 722 0084 3946     		mov	r1, r7
 723 0086 2246     		mov	r2, r4
 724 0088 05F10C00 		add	r0, r5, #12
 725 008c FFF7FEFF 		bl	memcpy
 726 0090 3046     		mov	r0, r6
 727 0092 C5F88C40 		str	r4, [r5, #140]
 728 0096 02B0     		add	sp, sp, #8
 729              		@ sp needed
 730 0098 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 731              	.L148:
 732 009c 3946     		mov	r1, r7
 733 009e 05F10C00 		add	r0, r5, #12
 734 00a2 4246     		mov	r2, r8
 735 00a4 FFF7FEFF 		bl	memcpy
 736 00a8 4046     		mov	r0, r8
 737 00aa C5F88C80 		str	r8, [r5, #140]
 738 00ae 02B0     		add	sp, sp, #8
 739              		@ sp needed
 740 00b0 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 741              		.size	_ZN12OutputBuffer4copyEPKcj, .-_ZN12OutputBuffer4copyEPKcj
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 14


 742              		.section	.text._ZN12OutputBuffer4copyEPKc,"ax",%progbits
 743              		.align	2
 744              		.global	_ZN12OutputBuffer4copyEPKc
 745              		.thumb
 746              		.thumb_func
 747              		.type	_ZN12OutputBuffer4copyEPKc, %function
 748              	_ZN12OutputBuffer4copyEPKc:
 749              		@ args = 0, pretend = 0, frame = 0
 750              		@ frame_needed = 0, uses_anonymous_args = 0
 751 0000 38B5     		push	{r3, r4, r5, lr}
 752 0002 0546     		mov	r5, r0
 753 0004 0846     		mov	r0, r1
 754 0006 0C46     		mov	r4, r1
 755 0008 FFF7FEFF 		bl	strlen
 756 000c 2146     		mov	r1, r4
 757 000e 0246     		mov	r2, r0
 758 0010 2846     		mov	r0, r5
 759 0012 BDE83840 		pop	{r3, r4, r5, lr}
 760 0016 FFF7FEBF 		b	_ZN12OutputBuffer4copyEPKcj
 761              		.size	_ZN12OutputBuffer4copyEPKc, .-_ZN12OutputBuffer4copyEPKc
 762 001a 00BF     		.section	.text._ZN12OutputBuffer6printfEPKcz,"ax",%progbits
 763              		.align	2
 764              		.global	_ZN12OutputBuffer6printfEPKcz
 765              		.thumb
 766              		.thumb_func
 767              		.type	_ZN12OutputBuffer6printfEPKcz, %function
 768              	_ZN12OutputBuffer6printfEPKcz:
 769              		@ args = 4, pretend = 12, frame = 264
 770              		@ frame_needed = 0, uses_anonymous_args = 1
 771 0000 0EB4     		push	{r1, r2, r3}
 772 0002 30B5     		push	{r4, r5, lr}
 773 0004 C2B0     		sub	sp, sp, #264
 774 0006 45AC     		add	r4, sp, #276
 775 0008 54F8042B 		ldr	r2, [r4], #4
 776 000c 0546     		mov	r5, r0
 777 000e 2346     		mov	r3, r4
 778 0010 02A8     		add	r0, sp, #8
 779 0012 4FF48071 		mov	r1, #256
 780 0016 0194     		str	r4, [sp, #4]
 781 0018 FFF7FEFF 		bl	vsnprintf
 782 001c 2846     		mov	r0, r5
 783 001e 02A9     		add	r1, sp, #8
 784 0020 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 785 0024 42B0     		add	sp, sp, #264
 786              		@ sp needed
 787 0026 BDE83040 		pop	{r4, r5, lr}
 788 002a 03B0     		add	sp, sp, #12
 789 002c 7047     		bx	lr
 790              		.size	_ZN12OutputBuffer6printfEPKcz, .-_ZN12OutputBuffer6printfEPKcz
 791 002e 00BF     		.section	.text._ZN12OutputBuffer3catEPKcj,"ax",%progbits
 792              		.align	2
 793              		.global	_ZN12OutputBuffer3catEPKcj
 794              		.thumb
 795              		.thumb_func
 796              		.type	_ZN12OutputBuffer3catEPKcj, %function
 797              	_ZN12OutputBuffer3catEPKcj:
 798              		@ args = 0, pretend = 0, frame = 8
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 15


 799              		@ frame_needed = 0, uses_anonymous_args = 0
 800 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 801 0002 0546     		mov	r5, r0
 802 0004 4068     		ldr	r0, [r0, #4]
 803 0006 83B0     		sub	sp, sp, #12
 804 0008 D0F88C30 		ldr	r3, [r0, #140]
 805 000c 1646     		mov	r6, r2
 806 000e C3F18004 		rsb	r4, r3, #128
 807 0012 1844     		add	r0, r0, r3
 808 0014 9442     		cmp	r4, r2
 809 0016 0F46     		mov	r7, r1
 810 0018 00F10C00 		add	r0, r0, #12
 811 001c 2AD8     		bhi	.L166
 812 001e 2246     		mov	r2, r4
 813 0020 FFF7FEFF 		bl	memcpy
 814 0024 6B68     		ldr	r3, [r5, #4]
 815 0026 B442     		cmp	r4, r6
 816 0028 D3F88C20 		ldr	r2, [r3, #140]
 817 002c 2244     		add	r2, r2, r4
 818 002e C3F88C20 		str	r2, [r3, #140]
 819 0032 2BD2     		bcs	.L170
 820 0034 01A8     		add	r0, sp, #4
 821 0036 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 822 003a 20B3     		cbz	r0, .L174
 823 003c D5F89830 		ldr	r3, [r5, #152]
 824 0040 0198     		ldr	r0, [sp, #4]
 825 0042 3919     		adds	r1, r7, r4
 826 0044 321B     		subs	r2, r6, r4
 827 0046 C0F89830 		str	r3, [r0, #152]
 828 004a FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKcj
 829 004e 0199     		ldr	r1, [sp, #4]
 830 0050 6B68     		ldr	r3, [r5, #4]
 831 0052 4A68     		ldr	r2, [r1, #4]
 832 0054 1960     		str	r1, [r3]
 833 0056 2B68     		ldr	r3, [r5]
 834 0058 2044     		add	r0, r0, r4
 835 005a 9942     		cmp	r1, r3
 836 005c 6A60     		str	r2, [r5, #4]
 837 005e 01D1     		bne	.L169
 838 0060 04E0     		b	.L172
 839              	.L177:
 840 0062 6A68     		ldr	r2, [r5, #4]
 841              	.L169:
 842 0064 5A60     		str	r2, [r3, #4]
 843 0066 1B68     		ldr	r3, [r3]
 844 0068 9942     		cmp	r1, r3
 845 006a FAD1     		bne	.L177
 846              	.L172:
 847 006c 0446     		mov	r4, r0
 848 006e 2046     		mov	r0, r4
 849 0070 03B0     		add	sp, sp, #12
 850              		@ sp needed
 851 0072 F0BD     		pop	{r4, r5, r6, r7, pc}
 852              	.L166:
 853 0074 FFF7FEFF 		bl	memcpy
 854 0078 6B68     		ldr	r3, [r5, #4]
 855 007a 3446     		mov	r4, r6
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 16


 856 007c D3F88C20 		ldr	r2, [r3, #140]
 857 0080 1644     		add	r6, r6, r2
 858 0082 C3F88C60 		str	r6, [r3, #140]
 859              	.L174:
 860 0086 2046     		mov	r0, r4
 861 0088 03B0     		add	sp, sp, #12
 862              		@ sp needed
 863 008a F0BD     		pop	{r4, r5, r6, r7, pc}
 864              	.L170:
 865 008c 3446     		mov	r4, r6
 866 008e 2046     		mov	r0, r4
 867 0090 03B0     		add	sp, sp, #12
 868              		@ sp needed
 869 0092 F0BD     		pop	{r4, r5, r6, r7, pc}
 870              		.size	_ZN12OutputBuffer3catEPKcj, .-_ZN12OutputBuffer3catEPKcj
 871              		.section	.text._ZN12OutputBuffer3catEPKc,"ax",%progbits
 872              		.align	2
 873              		.global	_ZN12OutputBuffer3catEPKc
 874              		.thumb
 875              		.thumb_func
 876              		.type	_ZN12OutputBuffer3catEPKc, %function
 877              	_ZN12OutputBuffer3catEPKc:
 878              		@ args = 0, pretend = 0, frame = 0
 879              		@ frame_needed = 0, uses_anonymous_args = 0
 880 0000 38B5     		push	{r3, r4, r5, lr}
 881 0002 0546     		mov	r5, r0
 882 0004 0846     		mov	r0, r1
 883 0006 0C46     		mov	r4, r1
 884 0008 FFF7FEFF 		bl	strlen
 885 000c 2146     		mov	r1, r4
 886 000e 0246     		mov	r2, r0
 887 0010 2846     		mov	r0, r5
 888 0012 BDE83840 		pop	{r3, r4, r5, lr}
 889 0016 FFF7FEBF 		b	_ZN12OutputBuffer3catEPKcj
 890              		.size	_ZN12OutputBuffer3catEPKc, .-_ZN12OutputBuffer3catEPKc
 891 001a 00BF     		.section	.text._ZN12OutputBuffer7vprintfEPKcSt9__va_list,"ax",%progbits
 892              		.align	2
 893              		.global	_ZN12OutputBuffer7vprintfEPKcSt9__va_list
 894              		.thumb
 895              		.thumb_func
 896              		.type	_ZN12OutputBuffer7vprintfEPKcSt9__va_list, %function
 897              	_ZN12OutputBuffer7vprintfEPKcSt9__va_list:
 898              		@ args = 0, pretend = 0, frame = 256
 899              		@ frame_needed = 0, uses_anonymous_args = 0
 900 0000 10B5     		push	{r4, lr}
 901 0002 C0B0     		sub	sp, sp, #256
 902 0004 1346     		mov	r3, r2
 903 0006 0446     		mov	r4, r0
 904 0008 0A46     		mov	r2, r1
 905 000a 6846     		mov	r0, sp
 906 000c 4FF48071 		mov	r1, #256
 907 0010 FFF7FEFF 		bl	vsnprintf
 908 0014 2046     		mov	r0, r4
 909 0016 6946     		mov	r1, sp
 910 0018 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 911 001c 40B0     		add	sp, sp, #256
 912              		@ sp needed
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 17


 913 001e 10BD     		pop	{r4, pc}
 914              		.size	_ZN12OutputBuffer7vprintfEPKcSt9__va_list, .-_ZN12OutputBuffer7vprintfEPKcSt9__va_list
 915              		.section	.text._ZN12OutputBuffer4catfEPKcz,"ax",%progbits
 916              		.align	2
 917              		.global	_ZN12OutputBuffer4catfEPKcz
 918              		.thumb
 919              		.thumb_func
 920              		.type	_ZN12OutputBuffer4catfEPKcz, %function
 921              	_ZN12OutputBuffer4catfEPKcz:
 922              		@ args = 4, pretend = 12, frame = 264
 923              		@ frame_needed = 0, uses_anonymous_args = 1
 924 0000 0EB4     		push	{r1, r2, r3}
 925 0002 30B5     		push	{r4, r5, lr}
 926 0004 C2B0     		sub	sp, sp, #264
 927 0006 45AC     		add	r4, sp, #276
 928 0008 54F8042B 		ldr	r2, [r4], #4
 929 000c 0546     		mov	r5, r0
 930 000e 2346     		mov	r3, r4
 931 0010 02A8     		add	r0, sp, #8
 932 0012 4FF48071 		mov	r1, #256
 933 0016 0194     		str	r4, [sp, #4]
 934 0018 FFF7FEFF 		bl	vsnprintf
 935 001c 2846     		mov	r0, r5
 936 001e 02A9     		add	r1, sp, #8
 937 0020 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 938 0024 42B0     		add	sp, sp, #264
 939              		@ sp needed
 940 0026 BDE83040 		pop	{r4, r5, lr}
 941 002a 03B0     		add	sp, sp, #12
 942 002c 7047     		bx	lr
 943              		.size	_ZN12OutputBuffer4catfEPKcz, .-_ZN12OutputBuffer4catfEPKcz
 944 002e 00BF     		.section	.text._ZN12OutputBuffer3catER9StringRef,"ax",%progbits
 945              		.align	2
 946              		.global	_ZN12OutputBuffer3catER9StringRef
 947              		.thumb
 948              		.thumb_func
 949              		.type	_ZN12OutputBuffer3catER9StringRef, %function
 950              	_ZN12OutputBuffer3catER9StringRef:
 951              		@ args = 0, pretend = 0, frame = 0
 952              		@ frame_needed = 0, uses_anonymous_args = 0
 953              		@ link register save eliminated.
 954 0000 06C9     		ldmia	r1, {r1, r2}
 955 0002 FFF7FEBF 		b	_ZN12OutputBuffer3catEPKcj
 956              		.size	_ZN12OutputBuffer3catER9StringRef, .-_ZN12OutputBuffer3catER9StringRef
 957 0006 00BF     		.section	.text._ZN12OutputBuffer10ReleaseAllEPS_,"ax",%progbits
 958              		.align	2
 959              		.global	_ZN12OutputBuffer10ReleaseAllEPS_
 960              		.thumb
 961              		.thumb_func
 962              		.type	_ZN12OutputBuffer10ReleaseAllEPS_, %function
 963              	_ZN12OutputBuffer10ReleaseAllEPS_:
 964              		@ args = 0, pretend = 0, frame = 0
 965              		@ frame_needed = 0, uses_anonymous_args = 0
 966 0000 08B5     		push	{r3, lr}
 967 0002 18B1     		cbz	r0, .L182
 968              	.L185:
 969 0004 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 18


 970 0008 0028     		cmp	r0, #0
 971 000a FBD1     		bne	.L185
 972              	.L182:
 973 000c 08BD     		pop	{r3, pc}
 974              		.size	_ZN12OutputBuffer10ReleaseAllEPS_, .-_ZN12OutputBuffer10ReleaseAllEPS_
 975 000e 00BF     		.section	.text._ZN12OutputBuffer11DiagnosticsE11MessageType,"ax",%progbits
 976              		.align	2
 977              		.global	_ZN12OutputBuffer11DiagnosticsE11MessageType
 978              		.thumb
 979              		.thumb_func
 980              		.type	_ZN12OutputBuffer11DiagnosticsE11MessageType, %function
 981              	_ZN12OutputBuffer11DiagnosticsE11MessageType:
 982              		@ args = 0, pretend = 0, frame = 0
 983              		@ frame_needed = 0, uses_anonymous_args = 0
 984 0000 30B5     		push	{r4, r5, lr}
 985 0002 0849     		ldr	r1, .L190
 986 0004 084B     		ldr	r3, .L190+4
 987 0006 094A     		ldr	r2, .L190+8
 988 0008 0D68     		ldr	r5, [r1]
 989 000a 1B68     		ldr	r3, [r3]
 990 000c 1268     		ldr	r2, [r2]
 991 000e 83B0     		sub	sp, sp, #12
 992 0010 2024     		movs	r4, #32
 993 0012 0146     		mov	r1, r0
 994 0014 0192     		str	r2, [sp, #4]
 995 0016 2846     		mov	r0, r5
 996 0018 0094     		str	r4, [sp]
 997 001a 054A     		ldr	r2, .L190+12
 998 001c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 999 0020 03B0     		add	sp, sp, #12
 1000              		@ sp needed
 1001 0022 30BD     		pop	{r4, r5, pc}
 1002              	.L191:
 1003              		.align	2
 1004              	.L190:
 1005 0024 00000000 		.word	reprap
 1006 0028 00000000 		.word	.LANCHOR1
 1007 002c 00000000 		.word	.LANCHOR2
 1008 0030 00000000 		.word	.LC0
 1009              		.size	_ZN12OutputBuffer11DiagnosticsE11MessageType, .-_ZN12OutputBuffer11DiagnosticsE11MessageType
 1010              		.section	.text._ZN11OutputStack4PushEP12OutputBuffer,"ax",%progbits
 1011              		.align	2
 1012              		.global	_ZN11OutputStack4PushEP12OutputBuffer
 1013              		.thumb
 1014              		.thumb_func
 1015              		.type	_ZN11OutputStack4PushEP12OutputBuffer, %function
 1016              	_ZN11OutputStack4PushEP12OutputBuffer:
 1017              		@ args = 0, pretend = 0, frame = 0
 1018              		@ frame_needed = 0, uses_anonymous_args = 0
 1019 0000 38B5     		push	{r3, r4, r5, lr}
 1020 0002 0368     		ldr	r3, [r0]
 1021 0004 0546     		mov	r5, r0
 1022 0006 042B     		cmp	r3, #4
 1023 0008 0C46     		mov	r4, r1
 1024 000a 13D0     		beq	.L204
 1025 000c 89B1     		cbz	r1, .L192
 1026 000e FFF7FEFF 		bl	millis
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 19


 1027 0012 A060     		str	r0, [r4, #8]
 1028              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1029 0014 EFF31081 		MRS r1, primask
 1030              	@ 0 "" 2
 1031              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1032 0018 72B6     		cpsid i
 1033              	@ 0 "" 2
 1034              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1035 001a BFF35F8F 		dmb
 1036              	@ 0 "" 2
 1037              		.thumb
 1038 001e 104A     		ldr	r2, .L207
 1039 0020 0023     		movs	r3, #0
 1040 0022 1370     		strb	r3, [r2]
 1041 0024 2B68     		ldr	r3, [r5]
 1042 0026 581C     		adds	r0, r3, #1
 1043 0028 05EB8303 		add	r3, r5, r3, lsl #2
 1044 002c 2860     		str	r0, [r5]
 1045 002e 5C60     		str	r4, [r3, #4]
 1046 0030 81B1     		cbz	r1, .L205
 1047              	.L192:
 1048 0032 38BD     		pop	{r3, r4, r5, pc}
 1049              	.L204:
 1050 0034 2CB1     		cbz	r4, .L206
 1051              	.L197:
 1052 0036 2046     		mov	r0, r4
 1053 0038 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 1054 003c 0446     		mov	r4, r0
 1055 003e 002C     		cmp	r4, #0
 1056 0040 F9D1     		bne	.L197
 1057              	.L206:
 1058 0042 084B     		ldr	r3, .L207+4
 1059 0044 1B68     		ldr	r3, [r3]
 1060 0046 D3F8C020 		ldr	r2, [r3, #192]
 1061 004a 42F00802 		orr	r2, r2, #8
 1062 004e C3F8C020 		str	r2, [r3, #192]
 1063 0052 38BD     		pop	{r3, r4, r5, pc}
 1064              	.L205:
 1065 0054 0123     		movs	r3, #1
 1066 0056 1370     		strb	r3, [r2]
 1067              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1068 0058 BFF35F8F 		dmb
 1069              	@ 0 "" 2
 1070              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1071 005c 62B6     		cpsie i
 1072              	@ 0 "" 2
 1073              		.thumb
 1074 005e 38BD     		pop	{r3, r4, r5, pc}
 1075              	.L208:
 1076              		.align	2
 1077              	.L207:
 1078 0060 00000000 		.word	g_interrupt_enabled
 1079 0064 00000000 		.word	reprap
 1080              		.size	_ZN11OutputStack4PushEP12OutputBuffer, .-_ZN11OutputStack4PushEP12OutputBuffer
 1081              		.section	.text._ZN11OutputStack3PopEv,"ax",%progbits
 1082              		.align	2
 1083              		.global	_ZN11OutputStack3PopEv
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 20


 1084              		.thumb
 1085              		.thumb_func
 1086              		.type	_ZN11OutputStack3PopEv, %function
 1087              	_ZN11OutputStack3PopEv:
 1088              		@ args = 0, pretend = 0, frame = 0
 1089              		@ frame_needed = 0, uses_anonymous_args = 0
 1090              		@ link register save eliminated.
 1091 0000 0368     		ldr	r3, [r0]
 1092 0002 70B4     		push	{r4, r5, r6}
 1093 0004 23B3     		cbz	r3, .L215
 1094              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1095 0006 EFF31085 		MRS r5, primask
 1096              	@ 0 "" 2
 1097              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1098 000a 72B6     		cpsid i
 1099              	@ 0 "" 2
 1100              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1101 000c BFF35F8F 		dmb
 1102              	@ 0 "" 2
 1103              		.thumb
 1104 0010 114C     		ldr	r4, .L217
 1105 0012 0023     		movs	r3, #0
 1106 0014 2370     		strb	r3, [r4]
 1107 0016 4668     		ldr	r6, [r0, #4]
 1108 0018 0268     		ldr	r2, [r0]
 1109 001a 012A     		cmp	r2, #1
 1110 001c 0BD9     		bls	.L213
 1111 001e 0123     		movs	r3, #1
 1112              	.L214:
 1113 0020 00EB8302 		add	r2, r0, r3, lsl #2
 1114 0024 5168     		ldr	r1, [r2, #4]
 1115 0026 5A1E     		subs	r2, r3, #1
 1116 0028 00EB8202 		add	r2, r0, r2, lsl #2
 1117 002c 5160     		str	r1, [r2, #4]
 1118 002e 0268     		ldr	r2, [r0]
 1119 0030 0133     		adds	r3, r3, #1
 1120 0032 9A42     		cmp	r2, r3
 1121 0034 F4D8     		bhi	.L214
 1122              	.L213:
 1123 0036 0268     		ldr	r2, [r0]
 1124 0038 013A     		subs	r2, r2, #1
 1125 003a 0260     		str	r2, [r0]
 1126 003c 15B1     		cbz	r5, .L212
 1127              	.L216:
 1128 003e 3046     		mov	r0, r6
 1129 0040 70BC     		pop	{r4, r5, r6}
 1130 0042 7047     		bx	lr
 1131              	.L212:
 1132 0044 0123     		movs	r3, #1
 1133 0046 2370     		strb	r3, [r4]
 1134              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1135 0048 BFF35F8F 		dmb
 1136              	@ 0 "" 2
 1137              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1138 004c 62B6     		cpsie i
 1139              	@ 0 "" 2
 1140              		.thumb
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 21


 1141 004e F6E7     		b	.L216
 1142              	.L215:
 1143 0050 1846     		mov	r0, r3
 1144 0052 70BC     		pop	{r4, r5, r6}
 1145 0054 7047     		bx	lr
 1146              	.L218:
 1147 0056 00BF     		.align	2
 1148              	.L217:
 1149 0058 00000000 		.word	g_interrupt_enabled
 1150              		.size	_ZN11OutputStack3PopEv, .-_ZN11OutputStack3PopEv
 1151              		.section	.text._ZNK11OutputStack12GetFirstItemEv,"ax",%progbits
 1152              		.align	2
 1153              		.global	_ZNK11OutputStack12GetFirstItemEv
 1154              		.thumb
 1155              		.thumb_func
 1156              		.type	_ZNK11OutputStack12GetFirstItemEv, %function
 1157              	_ZNK11OutputStack12GetFirstItemEv:
 1158              		@ args = 0, pretend = 0, frame = 0
 1159              		@ frame_needed = 0, uses_anonymous_args = 0
 1160              		@ link register save eliminated.
 1161 0000 0368     		ldr	r3, [r0]
 1162 0002 0BB1     		cbz	r3, .L221
 1163 0004 4068     		ldr	r0, [r0, #4]
 1164 0006 7047     		bx	lr
 1165              	.L221:
 1166 0008 1846     		mov	r0, r3
 1167 000a 7047     		bx	lr
 1168              		.size	_ZNK11OutputStack12GetFirstItemEv, .-_ZNK11OutputStack12GetFirstItemEv
 1169              		.section	.text._ZN11OutputStack12SetFirstItemEP12OutputBuffer,"ax",%progbits
 1170              		.align	2
 1171              		.global	_ZN11OutputStack12SetFirstItemEP12OutputBuffer
 1172              		.thumb
 1173              		.thumb_func
 1174              		.type	_ZN11OutputStack12SetFirstItemEP12OutputBuffer, %function
 1175              	_ZN11OutputStack12SetFirstItemEP12OutputBuffer:
 1176              		@ args = 0, pretend = 0, frame = 0
 1177              		@ frame_needed = 0, uses_anonymous_args = 0
 1178 0000 70B5     		push	{r4, r5, r6, lr}
 1179 0002 0C46     		mov	r4, r1
 1180              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1181 0004 EFF31086 		MRS r6, primask
 1182              	@ 0 "" 2
 1183              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1184 0008 72B6     		cpsid i
 1185              	@ 0 "" 2
 1186              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1187 000a BFF35F8F 		dmb
 1188              	@ 0 "" 2
 1189              		.thumb
 1190 000e 114D     		ldr	r5, .L230
 1191 0010 0023     		movs	r3, #0
 1192 0012 2B70     		strb	r3, [r5]
 1193 0014 51B1     		cbz	r1, .L229
 1194 0016 4160     		str	r1, [r0, #4]
 1195 0018 FFF7FEFF 		bl	millis
 1196 001c A060     		str	r0, [r4, #8]
 1197              	.L225:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 22


 1198 001e 26B9     		cbnz	r6, .L222
 1199 0020 0123     		movs	r3, #1
 1200 0022 2B70     		strb	r3, [r5]
 1201              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1202 0024 BFF35F8F 		dmb
 1203              	@ 0 "" 2
 1204              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1205 0028 62B6     		cpsie i
 1206              	@ 0 "" 2
 1207              		.thumb
 1208              	.L222:
 1209 002a 70BD     		pop	{r4, r5, r6, pc}
 1210              	.L229:
 1211 002c 0368     		ldr	r3, [r0]
 1212 002e 012B     		cmp	r3, #1
 1213 0030 0BD9     		bls	.L226
 1214 0032 0123     		movs	r3, #1
 1215              	.L227:
 1216 0034 00EB8302 		add	r2, r0, r3, lsl #2
 1217 0038 5168     		ldr	r1, [r2, #4]
 1218 003a 5A1E     		subs	r2, r3, #1
 1219 003c 00EB8202 		add	r2, r0, r2, lsl #2
 1220 0040 5160     		str	r1, [r2, #4]
 1221 0042 0268     		ldr	r2, [r0]
 1222 0044 0133     		adds	r3, r3, #1
 1223 0046 9A42     		cmp	r2, r3
 1224 0048 F4D8     		bhi	.L227
 1225              	.L226:
 1226 004a 0368     		ldr	r3, [r0]
 1227 004c 013B     		subs	r3, r3, #1
 1228 004e 0360     		str	r3, [r0]
 1229 0050 E5E7     		b	.L225
 1230              	.L231:
 1231 0052 00BF     		.align	2
 1232              	.L230:
 1233 0054 00000000 		.word	g_interrupt_enabled
 1234              		.size	_ZN11OutputStack12SetFirstItemEP12OutputBuffer, .-_ZN11OutputStack12SetFirstItemEP12OutputBu
 1235              		.section	.text._ZNK11OutputStack11GetLastItemEv,"ax",%progbits
 1236              		.align	2
 1237              		.global	_ZNK11OutputStack11GetLastItemEv
 1238              		.thumb
 1239              		.thumb_func
 1240              		.type	_ZNK11OutputStack11GetLastItemEv, %function
 1241              	_ZNK11OutputStack11GetLastItemEv:
 1242              		@ args = 0, pretend = 0, frame = 0
 1243              		@ frame_needed = 0, uses_anonymous_args = 0
 1244              		@ link register save eliminated.
 1245 0000 0368     		ldr	r3, [r0]
 1246 0002 2BB1     		cbz	r3, .L234
 1247 0004 0368     		ldr	r3, [r0]
 1248 0006 013B     		subs	r3, r3, #1
 1249 0008 00EB8300 		add	r0, r0, r3, lsl #2
 1250 000c 4068     		ldr	r0, [r0, #4]
 1251 000e 7047     		bx	lr
 1252              	.L234:
 1253 0010 1846     		mov	r0, r3
 1254 0012 7047     		bx	lr
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 23


 1255              		.size	_ZNK11OutputStack11GetLastItemEv, .-_ZNK11OutputStack11GetLastItemEv
 1256              		.section	.text._ZNK11OutputStack10DataLengthEv,"ax",%progbits
 1257              		.align	2
 1258              		.global	_ZNK11OutputStack10DataLengthEv
 1259              		.thumb
 1260              		.thumb_func
 1261              		.type	_ZNK11OutputStack10DataLengthEv, %function
 1262              	_ZNK11OutputStack10DataLengthEv:
 1263              		@ args = 0, pretend = 0, frame = 0
 1264              		@ frame_needed = 0, uses_anonymous_args = 0
 1265              		@ link register save eliminated.
 1266 0000 F0B4     		push	{r4, r5, r6, r7}
 1267 0002 0546     		mov	r5, r0
 1268              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1269 0004 EFF31087 		MRS r7, primask
 1270              	@ 0 "" 2
 1271              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1272 0008 72B6     		cpsid i
 1273              	@ 0 "" 2
 1274              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1275 000a BFF35F8F 		dmb
 1276              	@ 0 "" 2
 1277              		.thumb
 1278 000e 124E     		ldr	r6, .L246
 1279 0010 0024     		movs	r4, #0
 1280 0012 3470     		strb	r4, [r6]
 1281 0014 0068     		ldr	r0, [r0]
 1282 0016 80B1     		cbz	r0, .L236
 1283 0018 2046     		mov	r0, r4
 1284              	.L239:
 1285 001a 05EB8403 		add	r3, r5, r4, lsl #2
 1286 001e 5B68     		ldr	r3, [r3, #4]
 1287 0020 9BB1     		cbz	r3, .L242
 1288 0022 0022     		movs	r2, #0
 1289              	.L238:
 1290 0024 D3F88C10 		ldr	r1, [r3, #140]
 1291 0028 1B68     		ldr	r3, [r3]
 1292 002a 0A44     		add	r2, r2, r1
 1293 002c 002B     		cmp	r3, #0
 1294 002e F9D1     		bne	.L238
 1295 0030 2B68     		ldr	r3, [r5]
 1296 0032 0134     		adds	r4, r4, #1
 1297 0034 A342     		cmp	r3, r4
 1298 0036 1044     		add	r0, r0, r2
 1299 0038 EFD8     		bhi	.L239
 1300              	.L236:
 1301 003a 27B9     		cbnz	r7, .L240
 1302 003c 0123     		movs	r3, #1
 1303 003e 3370     		strb	r3, [r6]
 1304              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1305 0040 BFF35F8F 		dmb
 1306              	@ 0 "" 2
 1307              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1308 0044 62B6     		cpsie i
 1309              	@ 0 "" 2
 1310              		.thumb
 1311              	.L240:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 24


 1312 0046 F0BC     		pop	{r4, r5, r6, r7}
 1313 0048 7047     		bx	lr
 1314              	.L242:
 1315 004a 1A46     		mov	r2, r3
 1316 004c 2B68     		ldr	r3, [r5]
 1317 004e 0134     		adds	r4, r4, #1
 1318 0050 A342     		cmp	r3, r4
 1319 0052 1044     		add	r0, r0, r2
 1320 0054 E1D8     		bhi	.L239
 1321 0056 F0E7     		b	.L236
 1322              	.L247:
 1323              		.align	2
 1324              	.L246:
 1325 0058 00000000 		.word	g_interrupt_enabled
 1326              		.size	_ZNK11OutputStack10DataLengthEv, .-_ZNK11OutputStack10DataLengthEv
 1327              		.section	.text._ZN11OutputStack6AppendEPS_,"ax",%progbits
 1328              		.align	2
 1329              		.global	_ZN11OutputStack6AppendEPS_
 1330              		.thumb
 1331              		.thumb_func
 1332              		.type	_ZN11OutputStack6AppendEPS_, %function
 1333              	_ZN11OutputStack6AppendEPS_:
 1334              		@ args = 0, pretend = 0, frame = 0
 1335              		@ frame_needed = 0, uses_anonymous_args = 0
 1336 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1337 0002 0B68     		ldr	r3, [r1]
 1338 0004 0E46     		mov	r6, r1
 1339 0006 0546     		mov	r5, r0
 1340 0008 33B3     		cbz	r3, .L248
 1341 000a 144F     		ldr	r7, .L261
 1342 000c 0024     		movs	r4, #0
 1343 000e 0CE0     		b	.L256
 1344              	.L260:
 1345 0010 2B68     		ldr	r3, [r5]
 1346 0012 06EB8402 		add	r2, r6, r4, lsl #2
 1347 0016 591C     		adds	r1, r3, #1
 1348 0018 2960     		str	r1, [r5]
 1349 001a 5268     		ldr	r2, [r2, #4]
 1350 001c 05EB8303 		add	r3, r5, r3, lsl #2
 1351 0020 5A60     		str	r2, [r3, #4]
 1352              	.L251:
 1353 0022 3368     		ldr	r3, [r6]
 1354 0024 0134     		adds	r4, r4, #1
 1355 0026 A342     		cmp	r3, r4
 1356 0028 16D9     		bls	.L248
 1357              	.L256:
 1358 002a 2B68     		ldr	r3, [r5]
 1359 002c 032B     		cmp	r3, #3
 1360 002e EFD9     		bls	.L260
 1361 0030 3B68     		ldr	r3, [r7]
 1362 0032 06EB8401 		add	r1, r6, r4, lsl #2
 1363 0036 D3F8C020 		ldr	r2, [r3, #192]
 1364 003a 4868     		ldr	r0, [r1, #4]
 1365 003c 42F00802 		orr	r2, r2, #8
 1366 0040 C3F8C020 		str	r2, [r3, #192]
 1367 0044 0028     		cmp	r0, #0
 1368 0046 ECD0     		beq	.L251
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 25


 1369              	.L254:
 1370 0048 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 1371 004c 0028     		cmp	r0, #0
 1372 004e FBD1     		bne	.L254
 1373 0050 3368     		ldr	r3, [r6]
 1374 0052 0134     		adds	r4, r4, #1
 1375 0054 A342     		cmp	r3, r4
 1376 0056 E8D8     		bhi	.L256
 1377              	.L248:
 1378 0058 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1379              	.L262:
 1380 005a 00BF     		.align	2
 1381              	.L261:
 1382 005c 00000000 		.word	reprap
 1383              		.size	_ZN11OutputStack6AppendEPS_, .-_ZN11OutputStack6AppendEPS_
 1384              		.section	.text._ZN11OutputStack18IncreaseReferencesEj,"ax",%progbits
 1385              		.align	2
 1386              		.global	_ZN11OutputStack18IncreaseReferencesEj
 1387              		.thumb
 1388              		.thumb_func
 1389              		.type	_ZN11OutputStack18IncreaseReferencesEj, %function
 1390              	_ZN11OutputStack18IncreaseReferencesEj:
 1391              		@ args = 0, pretend = 0, frame = 0
 1392              		@ frame_needed = 0, uses_anonymous_args = 0
 1393              		@ link register save eliminated.
 1394 0000 F0B4     		push	{r4, r5, r6, r7}
 1395              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1396 0002 EFF31087 		MRS r7, primask
 1397              	@ 0 "" 2
 1398              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1399 0006 72B6     		cpsid i
 1400              	@ 0 "" 2
 1401              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1402 0008 BFF35F8F 		dmb
 1403              	@ 0 "" 2
 1404              		.thumb
 1405 000c 104E     		ldr	r6, .L279
 1406 000e 0025     		movs	r5, #0
 1407 0010 3570     		strb	r5, [r6]
 1408 0012 0368     		ldr	r3, [r0]
 1409 0014 9BB1     		cbz	r3, .L269
 1410 0016 0124     		movs	r4, #1
 1411              	.L272:
 1412 0018 00EB8503 		add	r3, r0, r5, lsl #2
 1413 001c 5B68     		ldr	r3, [r3, #4]
 1414 001e 51B1     		cbz	r1, .L270
 1415 0020 4BB1     		cbz	r3, .L270
 1416              	.L271:
 1417 0022 D3F89820 		ldr	r2, [r3, #152]
 1418 0026 83F89440 		strb	r4, [r3, #148]
 1419 002a 0A44     		add	r2, r2, r1
 1420 002c C3F89820 		str	r2, [r3, #152]
 1421 0030 1B68     		ldr	r3, [r3]
 1422 0032 002B     		cmp	r3, #0
 1423 0034 F5D1     		bne	.L271
 1424              	.L270:
 1425 0036 0368     		ldr	r3, [r0]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 26


 1426 0038 0135     		adds	r5, r5, #1
 1427 003a AB42     		cmp	r3, r5
 1428 003c ECD8     		bhi	.L272
 1429              	.L269:
 1430 003e 27B9     		cbnz	r7, .L263
 1431 0040 0123     		movs	r3, #1
 1432 0042 3370     		strb	r3, [r6]
 1433              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 1434 0044 BFF35F8F 		dmb
 1435              	@ 0 "" 2
 1436              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 1437 0048 62B6     		cpsie i
 1438              	@ 0 "" 2
 1439              		.thumb
 1440              	.L263:
 1441 004a F0BC     		pop	{r4, r5, r6, r7}
 1442 004c 7047     		bx	lr
 1443              	.L280:
 1444 004e 00BF     		.align	2
 1445              	.L279:
 1446 0050 00000000 		.word	g_interrupt_enabled
 1447              		.size	_ZN11OutputStack18IncreaseReferencesEj, .-_ZN11OutputStack18IncreaseReferencesEj
 1448              		.section	.text._ZN11OutputStack10ReleaseAllEv,"ax",%progbits
 1449              		.align	2
 1450              		.global	_ZN11OutputStack10ReleaseAllEv
 1451              		.thumb
 1452              		.thumb_func
 1453              		.type	_ZN11OutputStack10ReleaseAllEv, %function
 1454              	_ZN11OutputStack10ReleaseAllEv:
 1455              		@ args = 0, pretend = 0, frame = 0
 1456              		@ frame_needed = 0, uses_anonymous_args = 0
 1457 0000 38B5     		push	{r3, r4, r5, lr}
 1458 0002 0368     		ldr	r3, [r0]
 1459 0004 0546     		mov	r5, r0
 1460 0006 63B1     		cbz	r3, .L285
 1461 0008 0024     		movs	r4, #0
 1462              	.L288:
 1463 000a 05EB8403 		add	r3, r5, r4, lsl #2
 1464 000e 5868     		ldr	r0, [r3, #4]
 1465 0010 18B1     		cbz	r0, .L286
 1466              	.L287:
 1467 0012 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 1468 0016 0028     		cmp	r0, #0
 1469 0018 FBD1     		bne	.L287
 1470              	.L286:
 1471 001a 2B68     		ldr	r3, [r5]
 1472 001c 0134     		adds	r4, r4, #1
 1473 001e A342     		cmp	r3, r4
 1474 0020 F3D8     		bhi	.L288
 1475              	.L285:
 1476 0022 0023     		movs	r3, #0
 1477 0024 2B60     		str	r3, [r5]
 1478 0026 38BD     		pop	{r3, r4, r5, pc}
 1479              		.size	_ZN11OutputStack10ReleaseAllEv, .-_ZN11OutputStack10ReleaseAllEv
 1480              		.global	_ZN12OutputBuffer20maxUsedOutputBuffersE
 1481              		.global	_ZN12OutputBuffer17usedOutputBuffersE
 1482              		.global	_ZN12OutputBuffer17freeOutputBuffersE
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDRfGBX.s 			page 27


 1483              		.section	.bss._ZN12OutputBuffer17freeOutputBuffersE,"aw",%nobits
 1484              		.align	2
 1485              		.set	.LANCHOR0,. + 0
 1486              		.type	_ZN12OutputBuffer17freeOutputBuffersE, %object
 1487              		.size	_ZN12OutputBuffer17freeOutputBuffersE, 4
 1488              	_ZN12OutputBuffer17freeOutputBuffersE:
 1489 0000 00000000 		.space	4
 1490              		.section	.bss._ZN12OutputBuffer20maxUsedOutputBuffersE,"aw",%nobits
 1491              		.align	2
 1492              		.set	.LANCHOR2,. + 0
 1493              		.type	_ZN12OutputBuffer20maxUsedOutputBuffersE, %object
 1494              		.size	_ZN12OutputBuffer20maxUsedOutputBuffersE, 4
 1495              	_ZN12OutputBuffer20maxUsedOutputBuffersE:
 1496 0000 00000000 		.space	4
 1497              		.section	.rodata.str1.4,"aMS",%progbits,1
 1498              		.align	2
 1499              	.LC0:
 1500 0000 55736564 		.ascii	"Used output buffers: %d of %d (%d max)\012\000"
 1500      206F7574 
 1500      70757420 
 1500      62756666 
 1500      6572733A 
 1501              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1502              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1503              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1504              	_ZL28cpu_irq_prev_interrupt_state:
 1505 0000 00       		.space	1
 1506              		.section	.bss._ZN12OutputBuffer17usedOutputBuffersE,"aw",%nobits
 1507              		.align	2
 1508              		.set	.LANCHOR1,. + 0
 1509              		.type	_ZN12OutputBuffer17usedOutputBuffersE, %object
 1510              		.size	_ZN12OutputBuffer17usedOutputBuffersE, 4
 1511              	_ZN12OutputBuffer17usedOutputBuffersE:
 1512 0000 00000000 		.space	4
 1513              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1514              		.align	2
 1515              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1516              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1517              	_ZL32cpu_irq_critical_section_counter:
 1518 0000 00000000 		.space	4
 1519              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
