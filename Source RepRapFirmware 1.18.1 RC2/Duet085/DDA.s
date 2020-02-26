ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 1


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
  14              		.file	"DDA.cpp"
  15              		.global	__aeabi_fdiv
  16              		.global	__aeabi_ui2d
  17              		.global	__aeabi_dadd
  18              		.global	__aeabi_d2uiz
  19              		.section	.text._ZN3DDA17ReduceHomingSpeedEv.part.10,"ax",%progbits
  20              		.align	2
  21              		.thumb
  22              		.thumb_func
  23              		.type	_ZN3DDA17ReduceHomingSpeedEv.part.10, %function
  24              	_ZN3DDA17ReduceHomingSpeedEv.part.10:
  25              		@ args = 0, pretend = 0, frame = 0
  26              		@ frame_needed = 0, uses_anonymous_args = 0
  27 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  28 0004 437A     		ldrb	r3, [r0, #9]	@ zero_extendqisi2
  29 0006 8046     		mov	r8, r0
  30 0008 43F00803 		orr	r3, r3, #8
  31 000c D0F89800 		ldr	r0, [r0, #152]	@ float
  32 0010 2F49     		ldr	r1, .L27
  33 0012 88F80930 		strb	r3, [r8, #9]
  34 0016 FFF7FEFF 		bl	__aeabi_fdiv
  35 001a 08F1B804 		add	r4, r8, #184
  36 001e C8F89800 		str	r0, [r8, #152]	@ float
  37 0022 08F56279 		add	r9, r8, #904
  38 0026 08F1B007 		add	r7, r8, #176
  39 002a 02E0     		b	.L12
  40              	.L2:
  41 002c 5034     		adds	r4, r4, #80
  42 002e 4C45     		cmp	r4, r9
  43 0030 2BD0     		beq	.L23
  44              	.L12:
  45 0032 637E     		ldrb	r3, [r4, #25]	@ zero_extendqisi2
  46 0034 012B     		cmp	r3, #1
  47 0036 F9D1     		bne	.L2
  48 0038 2046     		mov	r0, r4
  49 003a 4146     		mov	r1, r8
  50 003c 244A     		ldr	r2, .L27
  51 003e FFF7FEFF 		bl	_ZN13DriveMovement11ReduceSpeedERK3DDAf
  52 0042 D8F8B030 		ldr	r3, [r8, #176]
  53 0046 207E     		ldrb	r0, [r4, #24]	@ zero_extendqisi2
  54 0048 3946     		mov	r1, r7
  55 004a CBB1     		cbz	r3, .L3
  56 004c 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
  57 004e 8242     		cmp	r2, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 2


  58 0050 18BF     		it	ne
  59 0052 1D46     		movne	r5, r3
  60 0054 04D1     		bne	.L7
  61 0056 37E0     		b	.L26
  62              	.L9:
  63 0058 167E     		ldrb	r6, [r2, #24]	@ zero_extendqisi2
  64 005a 8642     		cmp	r6, r0
  65 005c 2CD0     		beq	.L6
  66 005e 1546     		mov	r5, r2
  67              	.L7:
  68 0060 EA6A     		ldr	r2, [r5, #44]
  69 0062 002A     		cmp	r2, #0
  70 0064 F8D1     		bne	.L9
  71              	.L8:
  72 0066 606A     		ldr	r0, [r4, #36]
  73 0068 5A6A     		ldr	r2, [r3, #36]
  74 006a 9042     		cmp	r0, r2
  75 006c 03D8     		bhi	.L10
  76 006e 07E0     		b	.L3
  77              	.L25:
  78 0070 5A6A     		ldr	r2, [r3, #36]
  79 0072 8242     		cmp	r2, r0
  80 0074 04D2     		bcs	.L3
  81              	.L10:
  82 0076 03F12C01 		add	r1, r3, #44
  83 007a DB6A     		ldr	r3, [r3, #44]
  84 007c 002B     		cmp	r3, #0
  85 007e F7D1     		bne	.L25
  86              	.L3:
  87 0080 E362     		str	r3, [r4, #44]
  88 0082 0C60     		str	r4, [r1]
  89 0084 5034     		adds	r4, r4, #80
  90 0086 4C45     		cmp	r4, r9
  91 0088 D3D1     		bne	.L12
  92              	.L23:
  93 008a 124A     		ldr	r2, .L27+4
  94 008c D8F8AC30 		ldr	r3, [r8, #172]
  95 0090 1069     		ldr	r0, [r2, #16]
  96 0092 D8F8A840 		ldr	r4, [r8, #168]
  97 0096 C01A     		subs	r0, r0, r3
  98 0098 A042     		cmp	r0, r4
  99 009a 0BD2     		bcs	.L1
 100 009c 201A     		subs	r0, r4, r0
 101 009e FFF7FEFF 		bl	__aeabi_ui2d
 102 00a2 0246     		mov	r2, r0
 103 00a4 0B46     		mov	r3, r1
 104 00a6 FFF7FEFF 		bl	__aeabi_dadd
 105 00aa FFF7FEFF 		bl	__aeabi_d2uiz
 106 00ae 2044     		add	r0, r0, r4
 107 00b0 C8F8A800 		str	r0, [r8, #168]
 108              	.L1:
 109 00b4 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 110              	.L6:
 111 00b8 2C35     		adds	r5, r5, #44
 112              	.L4:
 113 00ba D36A     		ldr	r3, [r2, #44]
 114 00bc 2B60     		str	r3, [r5]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 3


 115 00be D8F8B030 		ldr	r3, [r8, #176]
 116 00c2 002B     		cmp	r3, #0
 117 00c4 CFD1     		bne	.L8
 118 00c6 DBE7     		b	.L3
 119              	.L26:
 120 00c8 1A46     		mov	r2, r3
 121 00ca 3D46     		mov	r5, r7
 122 00cc F5E7     		b	.L4
 123              	.L28:
 124 00ce 00BF     		.align	2
 125              	.L27:
 126 00d0 00004040 		.word	1077936128
 127 00d4 00400840 		.word	1074282496
 128              		.size	_ZN3DDA17ReduceHomingSpeedEv.part.10, .-_ZN3DDA17ReduceHomingSpeedEv.part.10
 129              		.section	.text._ZN3DDA10PrintMovesEv,"ax",%progbits
 130              		.align	2
 131              		.global	_ZN3DDA10PrintMovesEv
 132              		.thumb
 133              		.thumb_func
 134              		.type	_ZN3DDA10PrintMovesEv, %function
 135              	_ZN3DDA10PrintMovesEv:
 136              		@ args = 0, pretend = 0, frame = 0
 137              		@ frame_needed = 0, uses_anonymous_args = 0
 138              		@ link register save eliminated.
 139 0000 7047     		bx	lr
 140              		.size	_ZN3DDA10PrintMovesEv, .-_ZN3DDA10PrintMovesEv
 141 0002 00BF     		.section	.text._ZN3DDAC2EPS_,"ax",%progbits
 142              		.align	2
 143              		.global	_ZN3DDAC2EPS_
 144              		.thumb
 145              		.thumb_func
 146              		.type	_ZN3DDAC2EPS_, %function
 147              	_ZN3DDAC2EPS_:
 148              		@ args = 0, pretend = 0, frame = 0
 149              		@ frame_needed = 0, uses_anonymous_args = 0
 150 0000 10B5     		push	{r4, lr}
 151 0002 0023     		movs	r3, #0
 152 0004 80E80A00 		stmia	r0, {r1, r3}
 153 0008 0446     		mov	r4, r0
 154 000a 0372     		strb	r3, [r0, #8]
 155 000c 1946     		mov	r1, r3
 156 000e 4FF43472 		mov	r2, #720
 157 0012 B830     		adds	r0, r0, #184
 158 0014 FFF7FEFF 		bl	memset
 159 0018 2046     		mov	r0, r4
 160 001a 10BD     		pop	{r4, pc}
 161              		.size	_ZN3DDAC2EPS_, .-_ZN3DDAC2EPS_
 162              		.global	_ZN3DDAC1EPS_
 163              		.thumb_set _ZN3DDAC1EPS_,_ZN3DDAC2EPS_
 164              		.section	.text._ZNK3DDA11GetTimeLeftEv,"ax",%progbits
 165              		.align	2
 166              		.global	_ZNK3DDA11GetTimeLeftEv
 167              		.thumb
 168              		.thumb_func
 169              		.type	_ZNK3DDA11GetTimeLeftEv, %function
 170              	_ZNK3DDA11GetTimeLeftEv:
 171              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 4


 172              		@ frame_needed = 0, uses_anonymous_args = 0
 173              		@ link register save eliminated.
 174 0000 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 175 0002 042B     		cmp	r3, #4
 176 0004 0ED0     		beq	.L34
 177 0006 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 178 0008 032B     		cmp	r3, #3
 179 000a 02D0     		beq	.L35
 180 000c D0F8A800 		ldr	r0, [r0, #168]
 181 0010 7047     		bx	lr
 182              	.L35:
 183 0012 054B     		ldr	r3, .L36
 184 0014 D0F8A810 		ldr	r1, [r0, #168]
 185 0018 D0F8AC20 		ldr	r2, [r0, #172]
 186 001c 1B69     		ldr	r3, [r3, #16]
 187 001e 8818     		adds	r0, r1, r2
 188 0020 C01A     		subs	r0, r0, r3
 189 0022 7047     		bx	lr
 190              	.L34:
 191 0024 0020     		movs	r0, #0
 192 0026 7047     		bx	lr
 193              	.L37:
 194              		.align	2
 195              	.L36:
 196 0028 00400840 		.word	1074282496
 197              		.size	_ZNK3DDA11GetTimeLeftEv, .-_ZNK3DDA11GetTimeLeftEv
 198              		.section	.text._ZN3DDA8RemoveDMEj,"ax",%progbits
 199              		.align	2
 200              		.global	_ZN3DDA8RemoveDMEj
 201              		.thumb
 202              		.thumb_func
 203              		.type	_ZN3DDA8RemoveDMEj, %function
 204              	_ZN3DDA8RemoveDMEj:
 205              		@ args = 0, pretend = 0, frame = 0
 206              		@ frame_needed = 0, uses_anonymous_args = 0
 207              		@ link register save eliminated.
 208 0000 D0F8B030 		ldr	r3, [r0, #176]
 209 0004 83B1     		cbz	r3, .L45
 210 0006 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 211 0008 8A42     		cmp	r2, r1
 212 000a 04D1     		bne	.L43
 213 000c 0EE0     		b	.L47
 214              	.L44:
 215 000e 027E     		ldrb	r2, [r0, #24]	@ zero_extendqisi2
 216 0010 8A42     		cmp	r2, r1
 217 0012 04D0     		beq	.L42
 218 0014 0346     		mov	r3, r0
 219              	.L43:
 220 0016 D86A     		ldr	r0, [r3, #44]
 221 0018 0028     		cmp	r0, #0
 222 001a F8D1     		bne	.L44
 223 001c 7047     		bx	lr
 224              	.L42:
 225 001e 03F12C02 		add	r2, r3, #44
 226              	.L41:
 227 0022 C36A     		ldr	r3, [r0, #44]
 228 0024 1360     		str	r3, [r2]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 5


 229 0026 7047     		bx	lr
 230              	.L45:
 231 0028 1846     		mov	r0, r3
 232 002a 7047     		bx	lr
 233              	.L47:
 234 002c 00F1B002 		add	r2, r0, #176
 235 0030 1846     		mov	r0, r3
 236 0032 F6E7     		b	.L41
 237              		.size	_ZN3DDA8RemoveDMEj, .-_ZN3DDA8RemoveDMEj
 238              		.global	__aeabi_f2d
 239              		.section	.text._ZNK3DDA16DebugPrintVectorEPKcPKfj,"ax",%progbits
 240              		.align	2
 241              		.global	_ZNK3DDA16DebugPrintVectorEPKcPKfj
 242              		.thumb
 243              		.thumb_func
 244              		.type	_ZNK3DDA16DebugPrintVectorEPKcPKfj, %function
 245              	_ZNK3DDA16DebugPrintVectorEPKcPKfj:
 246              		@ args = 0, pretend = 0, frame = 0
 247              		@ frame_needed = 0, uses_anonymous_args = 0
 248 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 249 0002 0F48     		ldr	r0, .L54
 250 0004 1F46     		mov	r7, r3
 251 0006 1546     		mov	r5, r2
 252 0008 FFF7FEFF 		bl	debugPrintf
 253 000c 97B1     		cbz	r7, .L51
 254 000e 043D     		subs	r5, r5, #4
 255 0010 0024     		movs	r4, #0
 256              	.L52:
 257 0012 002C     		cmp	r4, #0
 258 0014 55F8040F 		ldr	r0, [r5, #4]!	@ float
 259 0018 14BF     		ite	ne
 260 001a 2026     		movne	r6, #32
 261 001c 5B26     		moveq	r6, #91
 262 001e FFF7FEFF 		bl	__aeabi_f2d
 263 0022 0134     		adds	r4, r4, #1
 264 0024 0246     		mov	r2, r0
 265 0026 0B46     		mov	r3, r1
 266 0028 0648     		ldr	r0, .L54+4
 267 002a 3146     		mov	r1, r6
 268 002c FFF7FEFF 		bl	debugPrintf
 269 0030 BC42     		cmp	r4, r7
 270 0032 EED1     		bne	.L52
 271              	.L51:
 272 0034 0448     		ldr	r0, .L54+8
 273 0036 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 274 003a FFF7FEBF 		b	debugPrintf
 275              	.L55:
 276 003e 00BF     		.align	2
 277              	.L54:
 278 0040 00000000 		.word	.LC0
 279 0044 08000000 		.word	.LC2
 280 0048 04000000 		.word	.LC1
 281              		.size	_ZNK3DDA16DebugPrintVectorEPKcPKfj, .-_ZNK3DDA16DebugPrintVectorEPKcPKfj
 282              		.global	__aeabi_fmul
 283              		.global	__aeabi_fsub
 284              		.section	.text._ZNK3DDA10DebugPrintEv,"ax",%progbits
 285              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 6


 286              		.global	_ZNK3DDA10DebugPrintEv
 287              		.thumb
 288              		.thumb_func
 289              		.type	_ZNK3DDA10DebugPrintEv, %function
 290              	_ZNK3DDA10DebugPrintEv:
 291              		@ args = 0, pretend = 0, frame = 24
 292              		@ frame_needed = 0, uses_anonymous_args = 0
 293 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 294 0004 514B     		ldr	r3, .L74
 295 0006 8046     		mov	r8, r0
 296 0008 1B69     		ldr	r3, [r3, #16]
 297 000a 95B0     		sub	sp, sp, #84
 298 000c 5048     		ldr	r0, .L74+4
 299 000e D3F88461 		ldr	r6, [r3, #388]
 300 0012 FFF7FEFF 		bl	debugPrintf
 301 0016 98F80930 		ldrb	r3, [r8, #9]	@ zero_extendqisi2
 302 001a DB07     		lsls	r3, r3, #31
 303 001c 20D5     		bpl	.L57
 304 001e 96B1     		cbz	r6, .L59
 305 0020 D8F87C90 		ldr	r9, [r8, #124]	@ float
 306 0024 4446     		mov	r4, r8
 307 0026 0DAD     		add	r5, sp, #52
 308 0028 08EB8607 		add	r7, r8, r6, lsl #2
 309              	.L60:
 310 002c A16D     		ldr	r1, [r4, #88]	@ float
 311 002e 4846     		mov	r0, r9
 312 0030 FFF7FEFF 		bl	__aeabi_fmul
 313 0034 0146     		mov	r1, r0
 314 0036 606B     		ldr	r0, [r4, #52]	@ float
 315 0038 FFF7FEFF 		bl	__aeabi_fsub
 316 003c 0434     		adds	r4, r4, #4
 317 003e BC42     		cmp	r4, r7
 318 0040 45F8040F 		str	r0, [r5, #4]!	@ float
 319 0044 F2D1     		bne	.L60
 320              	.L59:
 321 0046 4046     		mov	r0, r8
 322 0048 4249     		ldr	r1, .L74+8
 323 004a 0EAA     		add	r2, sp, #56
 324 004c 3346     		mov	r3, r6
 325 004e FFF7FEFF 		bl	_ZNK3DDA16DebugPrintVectorEPKcPKfj
 326 0052 4046     		mov	r0, r8
 327 0054 4049     		ldr	r1, .L74+12
 328 0056 08F13402 		add	r2, r8, #52
 329 005a 3346     		mov	r3, r6
 330 005c FFF7FEFF 		bl	_ZNK3DDA16DebugPrintVectorEPKcPKfj
 331              	.L57:
 332 0060 D8F87C00 		ldr	r0, [r8, #124]	@ float
 333 0064 FFF7FEFF 		bl	__aeabi_f2d
 334 0068 0246     		mov	r2, r0
 335 006a 0B46     		mov	r3, r1
 336 006c 3B48     		ldr	r0, .L74+16
 337 006e FFF7FEFF 		bl	debugPrintf
 338 0072 08F15802 		add	r2, r8, #88
 339 0076 0523     		movs	r3, #5
 340 0078 4046     		mov	r0, r8
 341 007a 3949     		ldr	r1, .L74+20
 342 007c FFF7FEFF 		bl	_ZNK3DDA16DebugPrintVectorEPKcPKfj
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 7


 343 0080 D8F88000 		ldr	r0, [r8, #128]	@ float
 344 0084 FFF7FEFF 		bl	__aeabi_f2d
 345 0088 0446     		mov	r4, r0
 346 008a D8F88400 		ldr	r0, [r8, #132]	@ float
 347 008e 0D46     		mov	r5, r1
 348 0090 FFF7FEFF 		bl	__aeabi_f2d
 349 0094 CDE90001 		strd	r0, [sp]
 350 0098 D8F89800 		ldr	r0, [r8, #152]	@ float
 351 009c FFF7FEFF 		bl	__aeabi_f2d
 352 00a0 CDE90201 		strd	r0, [sp, #8]
 353 00a4 D8F89000 		ldr	r0, [r8, #144]	@ float
 354 00a8 FFF7FEFF 		bl	__aeabi_f2d
 355 00ac CDE90401 		strd	r0, [sp, #16]
 356 00b0 D8F89400 		ldr	r0, [r8, #148]	@ float
 357 00b4 FFF7FEFF 		bl	__aeabi_f2d
 358 00b8 CDE90601 		strd	r0, [sp, #24]
 359 00bc D8F89C00 		ldr	r0, [r8, #156]	@ float
 360 00c0 FFF7FEFF 		bl	__aeabi_f2d
 361 00c4 CDE90801 		strd	r0, [sp, #32]
 362 00c8 D8F8A000 		ldr	r0, [r8, #160]	@ float
 363 00cc FFF7FEFF 		bl	__aeabi_f2d
 364 00d0 D8F8A870 		ldr	r7, [r8, #168]
 365 00d4 2246     		mov	r2, r4
 366 00d6 CDE90A01 		strd	r0, [sp, #40]
 367 00da 2B46     		mov	r3, r5
 368 00dc 0C97     		str	r7, [sp, #48]
 369 00de 2148     		ldr	r0, .L74+24
 370 00e0 FFF7FEFF 		bl	debugPrintf
 371 00e4 96B1     		cbz	r6, .L65
 372 00e6 204C     		ldr	r4, .L74+28
 373 00e8 08F1B805 		add	r5, r8, #184
 374 00ec 3719     		adds	r7, r6, r4
 375              	.L64:
 376 00ee 98F80920 		ldrb	r2, [r8, #9]	@ zero_extendqisi2
 377 00f2 14F8011B 		ldrb	r1, [r4], #1	@ zero_extendqisi2
 378 00f6 2846     		mov	r0, r5
 379 00f8 C2F34002 		ubfx	r2, r2, #1, #1
 380 00fc FFF7FEFF 		bl	_ZNK13DriveMovement10DebugPrintEcb
 381 0100 BC42     		cmp	r4, r7
 382 0102 05F15005 		add	r5, r5, #80
 383 0106 F2D1     		bne	.L64
 384 0108 082E     		cmp	r6, #8
 385 010a 1BD8     		bhi	.L56
 386              	.L65:
 387 010c 06EB8604 		add	r4, r6, r6, lsl #2
 388 0110 08EB0414 		add	r4, r8, r4, lsl #4
 389 0114 B834     		adds	r4, r4, #184
 390 0116 3025     		movs	r5, #48
 391 0118 05E0     		b	.L62
 392              	.L66:
 393 011a 0135     		adds	r5, r5, #1
 394 011c 082E     		cmp	r6, #8
 395 011e EDB2     		uxtb	r5, r5
 396 0120 04F15004 		add	r4, r4, #80
 397 0124 0ED8     		bhi	.L56
 398              	.L62:
 399 0126 637E     		ldrb	r3, [r4, #25]	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 8


 400 0128 0136     		adds	r6, r6, #1
 401 012a 002B     		cmp	r3, #0
 402 012c F5D0     		beq	.L66
 403 012e 2046     		mov	r0, r4
 404 0130 2946     		mov	r1, r5
 405 0132 0022     		movs	r2, #0
 406 0134 FFF7FEFF 		bl	_ZNK13DriveMovement10DebugPrintEcb
 407 0138 0135     		adds	r5, r5, #1
 408 013a 082E     		cmp	r6, #8
 409 013c EDB2     		uxtb	r5, r5
 410 013e 04F15004 		add	r4, r4, #80
 411 0142 F0D9     		bls	.L62
 412              	.L56:
 413 0144 15B0     		add	sp, sp, #84
 414              		@ sp needed
 415 0146 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 416              	.L75:
 417 014a 00BF     		.align	2
 418              	.L74:
 419 014c 00000000 		.word	reprap
 420 0150 10000000 		.word	.LC3
 421 0154 18000000 		.word	.LC4
 422 0158 20000000 		.word	.LC5
 423 015c 28000000 		.word	.LC6
 424 0160 30000000 		.word	.LC7
 425 0164 38000000 		.word	.LC8
 426 0168 00000000 		.word	_ZN6GCodes11axisLettersE
 427              		.size	_ZNK3DDA10DebugPrintEv, .-_ZNK3DDA10DebugPrintEv
 428              		.section	.text._ZN3DDA4InitEv,"ax",%progbits
 429              		.align	2
 430              		.global	_ZN3DDA4InitEv
 431              		.thumb
 432              		.thumb_func
 433              		.type	_ZN3DDA4InitEv, %function
 434              	_ZN3DDA4InitEv:
 435              		@ args = 0, pretend = 0, frame = 0
 436              		@ frame_needed = 0, uses_anonymous_args = 0
 437              		@ link register save eliminated.
 438 0000 10B4     		push	{r4}
 439 0002 0023     		movs	r3, #0
 440 0004 0246     		mov	r2, r0
 441 0006 1946     		mov	r1, r3
 442              	.L78:
 443 0008 C418     		adds	r4, r0, r3
 444 000a 0433     		adds	r3, r3, #4
 445 000c 242B     		cmp	r3, #36
 446 000e 2161     		str	r1, [r4, #16]
 447 0010 02F15002 		add	r2, r2, #80
 448 0014 82F88110 		strb	r1, [r2, #129]
 449 0018 4FF00004 		mov	r4, #0
 450 001c F4D1     		bne	.L78
 451 001e 437A     		ldrb	r3, [r0, #9]	@ zero_extendqisi2
 452 0020 0472     		strb	r4, [r0, #8]
 453 0022 64F30003 		bfi	r3, r4, #0, #1
 454 0026 4372     		strb	r3, [r0, #9]
 455 0028 5DF8044B 		ldr	r4, [sp], #4
 456 002c 7047     		bx	lr
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 9


 457              		.size	_ZN3DDA4InitEv, .-_ZN3DDA4InitEv
 458 002e 00BF     		.section	.text._ZNK3DDA16GetMotorPositionEj,"ax",%progbits
 459              		.align	2
 460              		.global	_ZNK3DDA16GetMotorPositionEj
 461              		.thumb
 462              		.thumb_func
 463              		.type	_ZNK3DDA16GetMotorPositionEj, %function
 464              	_ZNK3DDA16GetMotorPositionEj:
 465              		@ args = 0, pretend = 0, frame = 0
 466              		@ frame_needed = 0, uses_anonymous_args = 0
 467              		@ link register save eliminated.
 468 0000 0B1D     		adds	r3, r1, #4
 469 0002 50F82300 		ldr	r0, [r0, r3, lsl #2]
 470 0006 FFF7FEBF 		b	_ZN4Move23MotorEndpointToPositionElj
 471              		.size	_ZNK3DDA16GetMotorPositionEj, .-_ZNK3DDA16GetMotorPositionEj
 472              		.global	__aeabi_ddiv
 473              		.global	__aeabi_d2f
 474              		.global	__aeabi_fadd
 475              		.global	__aeabi_fcmpge
 476              		.global	__aeabi_dmul
 477              		.global	__aeabi_fcmpun
 478              		.global	__aeabi_fcmpgt
 479              		.global	__aeabi_fcmplt
 480              		.global	__aeabi_fcmpeq
 481 000a 00BF     		.section	.text._ZN3DDA15RecalculateMoveEv,"ax",%progbits
 482              		.align	2
 483              		.global	_ZN3DDA15RecalculateMoveEv
 484              		.thumb
 485              		.thumb_func
 486              		.type	_ZN3DDA15RecalculateMoveEv, %function
 487              	_ZN3DDA15RecalculateMoveEv:
 488              		@ args = 0, pretend = 0, frame = 24
 489              		@ frame_needed = 0, uses_anonymous_args = 0
 490 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 491 0004 D0F88450 		ldr	r5, [r0, #132]	@ float
 492 0008 87B0     		sub	sp, sp, #28
 493 000a 0446     		mov	r4, r0
 494 000c 2946     		mov	r1, r5
 495 000e 2846     		mov	r0, r5
 496 0010 FFF7FEFF 		bl	__aeabi_fmul
 497 0014 D4F89060 		ldr	r6, [r4, #144]	@ float
 498 0018 8046     		mov	r8, r0
 499 001a 3146     		mov	r1, r6
 500 001c 3046     		mov	r0, r6
 501 001e FFF7FEFF 		bl	__aeabi_fmul
 502 0022 D4F880B0 		ldr	fp, [r4, #128]	@ float
 503 0026 8146     		mov	r9, r0
 504 0028 5846     		mov	r0, fp
 505 002a FFF7FEFF 		bl	__aeabi_f2d
 506 002e 0246     		mov	r2, r0
 507 0030 0B46     		mov	r3, r1
 508 0032 FFF7FEFF 		bl	__aeabi_dadd
 509 0036 CDE90201 		strd	r0, [sp, #8]
 510 003a 4046     		mov	r0, r8
 511 003c 4946     		mov	r1, r9
 512 003e FFF7FEFF 		bl	__aeabi_fsub
 513 0042 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 10


 514 0046 DDE90223 		ldrd	r2, [sp, #8]
 515 004a FFF7FEFF 		bl	__aeabi_ddiv
 516 004e FFF7FEFF 		bl	__aeabi_d2f
 517 0052 D4F89470 		ldr	r7, [r4, #148]	@ float
 518 0056 8446     		mov	ip, r0
 519 0058 C4F89C00 		str	r0, [r4, #156]	@ float
 520 005c 3946     		mov	r1, r7
 521 005e 3846     		mov	r0, r7
 522 0060 CDF804C0 		str	ip, [sp, #4]
 523 0064 FFF7FEFF 		bl	__aeabi_fmul
 524 0068 8246     		mov	r10, r0
 525 006a 5146     		mov	r1, r10
 526 006c 4046     		mov	r0, r8
 527 006e FFF7FEFF 		bl	__aeabi_fsub
 528 0072 FFF7FEFF 		bl	__aeabi_f2d
 529 0076 DDE90223 		ldrd	r2, [sp, #8]
 530 007a FFF7FEFF 		bl	__aeabi_ddiv
 531 007e FFF7FEFF 		bl	__aeabi_d2f
 532 0082 DDF804C0 		ldr	ip, [sp, #4]
 533 0086 D4F87C80 		ldr	r8, [r4, #124]	@ float
 534 008a 0146     		mov	r1, r0
 535 008c C4F8A000 		str	r0, [r4, #160]	@ float
 536 0090 6046     		mov	r0, ip
 537 0092 FFF7FEFF 		bl	__aeabi_fadd
 538 0096 4146     		mov	r1, r8
 539 0098 FFF7FEFF 		bl	__aeabi_fcmpge
 540 009c 0028     		cmp	r0, #0
 541 009e 4AD0     		beq	.L110
 542 00a0 5846     		mov	r0, fp
 543 00a2 4146     		mov	r1, r8
 544 00a4 FFF7FEFF 		bl	__aeabi_fmul
 545 00a8 FFF7FEFF 		bl	__aeabi_f2d
 546 00ac CDE90401 		strd	r0, [sp, #16]
 547 00b0 5146     		mov	r1, r10
 548 00b2 4846     		mov	r0, r9
 549 00b4 FFF7FEFF 		bl	__aeabi_fadd
 550 00b8 FFF7FEFF 		bl	__aeabi_f2d
 551 00bc 0022     		movs	r2, #0
 552 00be 504B     		ldr	r3, .L116
 553 00c0 FFF7FEFF 		bl	__aeabi_dmul
 554 00c4 0246     		mov	r2, r0
 555 00c6 0B46     		mov	r3, r1
 556 00c8 DDE90401 		ldrd	r0, [sp, #16]
 557 00cc FFF7FEFF 		bl	__aeabi_dadd
 558 00d0 FFF7FEFF 		bl	__aeabi_d2f
 559 00d4 0025     		movs	r5, #0
 560 00d6 2946     		mov	r1, r5
 561 00d8 8346     		mov	fp, r0
 562 00da FFF7FEFF 		bl	__aeabi_fcmpge
 563 00de 0028     		cmp	r0, #0
 564 00e0 5DD0     		beq	.L111
 565 00e2 4946     		mov	r1, r9
 566 00e4 5846     		mov	r0, fp
 567 00e6 FFF7FEFF 		bl	__aeabi_fsub
 568 00ea FFF7FEFF 		bl	__aeabi_f2d
 569 00ee DDE90223 		ldrd	r2, [sp, #8]
 570 00f2 FFF7FEFF 		bl	__aeabi_ddiv
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 11


 571 00f6 FFF7FEFF 		bl	__aeabi_d2f
 572 00fa 0146     		mov	r1, r0
 573 00fc 0646     		mov	r6, r0
 574 00fe FFF7FEFF 		bl	__aeabi_fcmpun
 575 0102 28B9     		cbnz	r0, .L97
 576 0104 3046     		mov	r0, r6
 577 0106 2946     		mov	r1, r5
 578 0108 FFF7FEFF 		bl	__aeabi_fcmpgt
 579 010c 0028     		cmp	r0, #0
 580 010e 6BD0     		beq	.L112
 581              	.L97:
 582 0110 3146     		mov	r1, r6
 583              	.L86:
 584 0112 C4F89C10 		str	r1, [r4, #156]	@ float
 585 0116 4046     		mov	r0, r8
 586 0118 FFF7FEFF 		bl	__aeabi_fsub
 587 011c C4F8A000 		str	r0, [r4, #160]	@ float
 588 0120 5846     		mov	r0, fp
 589 0122 FFF7FEFF 		bl	sqrtf
 590 0126 637A     		ldrb	r3, [r4, #9]	@ zero_extendqisi2
 591 0128 C4F89800 		str	r0, [r4, #152]	@ float
 592 012c 5B07     		lsls	r3, r3, #29
 593 012e 07D4     		bmi	.L115
 594              	.L81:
 595 0130 07B0     		add	sp, sp, #28
 596              		@ sp needed
 597 0132 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 598              	.L110:
 599 0136 C4F89850 		str	r5, [r4, #152]	@ float
 600              	.L88:
 601 013a 637A     		ldrb	r3, [r4, #9]	@ zero_extendqisi2
 602 013c 5B07     		lsls	r3, r3, #29
 603 013e F7D5     		bpl	.L81
 604              	.L115:
 605 0140 D4F89400 		ldr	r0, [r4, #148]	@ float
 606 0144 0021     		movs	r1, #0
 607 0146 FFF7FEFF 		bl	__aeabi_fcmpeq
 608 014a 0028     		cmp	r0, #0
 609 014c F0D1     		bne	.L81
 610 014e 2D4B     		ldr	r3, .L116+4
 611 0150 0546     		mov	r5, r0
 612 0152 D3F80080 		ldr	r8, [r3]
 613 0156 2646     		mov	r6, r4
 614 0158 2746     		mov	r7, r4
 615 015a 04E0     		b	.L96
 616              	.L93:
 617 015c 0135     		adds	r5, r5, #1
 618 015e 092D     		cmp	r5, #9
 619 0160 07F10407 		add	r7, r7, #4
 620 0164 E4D0     		beq	.L81
 621              	.L96:
 622 0166 96F8D130 		ldrb	r3, [r6, #209]	@ zero_extendqisi2
 623 016a 5036     		adds	r6, r6, #80
 624 016c 012B     		cmp	r3, #1
 625 016e F5D1     		bne	.L93
 626 0170 BB6D     		ldr	r3, [r7, #88]
 627 0172 D4F89410 		ldr	r1, [r4, #148]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 12


 628 0176 23F00040 		bic	r0, r3, #-2147483648
 629 017a FFF7FEFF 		bl	__aeabi_fmul
 630 017e 2946     		mov	r1, r5
 631 0180 8146     		mov	r9, r0
 632 0182 4046     		mov	r0, r8
 633 0184 FFF7FEFF 		bl	_ZNK8Platform15ActualInstantDvEj
 634 0188 0146     		mov	r1, r0
 635 018a 4846     		mov	r0, r9
 636 018c FFF7FEFF 		bl	__aeabi_fcmpgt
 637 0190 0028     		cmp	r0, #0
 638 0192 E3D0     		beq	.L93
 639 0194 637A     		ldrb	r3, [r4, #9]	@ zero_extendqisi2
 640 0196 6FF38203 		bfc	r3, #2, #1
 641 019a 6372     		strb	r3, [r4, #9]
 642 019c C8E7     		b	.L81
 643              	.L111:
 644 019e 3046     		mov	r0, r6
 645 01a0 3946     		mov	r1, r7
 646 01a2 FFF7FEFF 		bl	__aeabi_fcmplt
 647 01a6 08B3     		cbz	r0, .L113
 648 01a8 C4F89C80 		str	r8, [r4, #156]	@ float
 649 01ac C4F8A050 		str	r5, [r4, #160]	@ float
 650 01b0 C4F89870 		str	r7, [r4, #152]	@ float
 651 01b4 5046     		mov	r0, r10
 652 01b6 4946     		mov	r1, r9
 653              	.L114:
 654 01b8 FFF7FEFF 		bl	__aeabi_fsub
 655 01bc FFF7FEFF 		bl	__aeabi_f2d
 656 01c0 0646     		mov	r6, r0
 657 01c2 4046     		mov	r0, r8
 658 01c4 0F46     		mov	r7, r1
 659 01c6 FFF7FEFF 		bl	__aeabi_f2d
 660 01ca 0246     		mov	r2, r0
 661 01cc 0B46     		mov	r3, r1
 662 01ce FFF7FEFF 		bl	__aeabi_dadd
 663 01d2 0246     		mov	r2, r0
 664 01d4 0B46     		mov	r3, r1
 665 01d6 3046     		mov	r0, r6
 666 01d8 3946     		mov	r1, r7
 667 01da FFF7FEFF 		bl	__aeabi_ddiv
 668 01de FFF7FEFF 		bl	__aeabi_d2f
 669 01e2 C4F88000 		str	r0, [r4, #128]	@ float
 670 01e6 A8E7     		b	.L88
 671              	.L112:
 672 01e8 2946     		mov	r1, r5
 673 01ea 92E7     		b	.L86
 674              	.L113:
 675 01ec C4F89C50 		str	r5, [r4, #156]	@ float
 676 01f0 C4F8A080 		str	r8, [r4, #160]	@ float
 677 01f4 C4F89860 		str	r6, [r4, #152]	@ float
 678 01f8 4846     		mov	r0, r9
 679 01fa 5146     		mov	r1, r10
 680 01fc DCE7     		b	.L114
 681              	.L117:
 682 01fe 00BF     		.align	2
 683              	.L116:
 684 0200 0000E03F 		.word	1071644672
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 13


 685 0204 00000000 		.word	reprap
 686              		.size	_ZN3DDA15RecalculateMoveEv, .-_ZN3DDA15RecalculateMoveEv
 687              		.section	.text._ZN3DDA13CalcNewSpeedsEv,"ax",%progbits
 688              		.align	2
 689              		.global	_ZN3DDA13CalcNewSpeedsEv
 690              		.thumb
 691              		.thumb_func
 692              		.type	_ZN3DDA13CalcNewSpeedsEv, %function
 693              	_ZN3DDA13CalcNewSpeedsEv:
 694              		@ args = 0, pretend = 0, frame = 0
 695              		@ frame_needed = 0, uses_anonymous_args = 0
 696 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 697 0004 0024     		movs	r4, #0
 698 0006 8346     		mov	fp, r0
 699 0008 A246     		mov	r10, r4
 700 000a 00E0     		b	.L119
 701              	.L121:
 702 000c 0134     		adds	r4, r4, #1
 703              	.L119:
 704 000e 082C     		cmp	r4, #8
 705 0010 6BD8     		bhi	.L147
 706              	.L134:
 707 0012 04EB8401 		add	r1, r4, r4, lsl #2
 708 0016 0901     		lsls	r1, r1, #4
 709 0018 B831     		adds	r1, r1, #184
 710 001a 0BEB0103 		add	r3, fp, r1
 711 001e 587E     		ldrb	r0, [r3, #25]	@ zero_extendqisi2
 712 0020 DBF80020 		ldr	r2, [fp]
 713 0024 04F11603 		add	r3, r4, #22
 714 0028 0128     		cmp	r0, #1
 715 002a 1144     		add	r1, r1, r2
 716 002c 52F82350 		ldr	r5, [r2, r3, lsl #2]	@ float
 717 0030 5BF82360 		ldr	r6, [fp, r3, lsl #2]	@ float
 718 0034 02D0     		beq	.L120
 719 0036 4B7E     		ldrb	r3, [r1, #25]	@ zero_extendqisi2
 720 0038 012B     		cmp	r3, #1
 721 003a E7D1     		bne	.L121
 722              	.L120:
 723 003c DBF89410 		ldr	r1, [fp, #148]	@ float
 724 0040 3046     		mov	r0, r6
 725 0042 FFF7FEFF 		bl	__aeabi_fmul
 726 0046 DBF8A410 		ldr	r1, [fp, #164]	@ float
 727 004a 0746     		mov	r7, r0
 728 004c 2846     		mov	r0, r5
 729 004e FFF7FEFF 		bl	__aeabi_fmul
 730 0052 534B     		ldr	r3, .L149+8
 731 0054 8146     		mov	r9, r0
 732 0056 2146     		mov	r1, r4
 733 0058 1868     		ldr	r0, [r3]
 734 005a FFF7FEFF 		bl	_ZNK8Platform15ActualInstantDvEj
 735 005e 4946     		mov	r1, r9
 736 0060 8046     		mov	r8, r0
 737 0062 3846     		mov	r0, r7
 738 0064 FFF7FEFF 		bl	__aeabi_fsub
 739 0068 4146     		mov	r1, r8
 740 006a 20F00040 		bic	r0, r0, #-2147483648
 741 006e FFF7FEFF 		bl	__aeabi_fcmpgt
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 14


 742 0072 0028     		cmp	r0, #0
 743 0074 CAD0     		beq	.L121
 744 0076 4046     		mov	r0, r8
 745 0078 FFF7FEFF 		bl	__aeabi_f2d
 746 007c 46A3     		adr	r3, .L149
 747 007e D3E90023 		ldrd	r2, [r3]
 748 0082 FFF7FEFF 		bl	__aeabi_dmul
 749 0086 FFF7FEFF 		bl	__aeabi_d2f
 750 008a 0021     		movs	r1, #0
 751 008c 8046     		mov	r8, r0
 752 008e 3046     		mov	r0, r6
 753 0090 FFF7FEFF 		bl	__aeabi_fcmpge
 754 0094 4FF0010A 		mov	r10, #1
 755 0098 00B9     		cbnz	r0, .L124
 756 009a 8246     		mov	r10, r0
 757              	.L124:
 758 009c 2846     		mov	r0, r5
 759 009e 0021     		movs	r1, #0
 760 00a0 FFF7FEFF 		bl	__aeabi_fcmpge
 761 00a4 8AF0010A 		eor	r10, r10, #1
 762 00a8 4FF00103 		mov	r3, #1
 763 00ac 00B9     		cbnz	r0, .L125
 764 00ae 0346     		mov	r3, r0
 765              	.L125:
 766 00b0 8AEA0303 		eor	r3, r10, r3
 767 00b4 13F0FF0F 		tst	r3, #255
 768 00b8 27F00047 		bic	r7, r7, #-2147483648
 769 00bc 1DD0     		beq	.L123
 770 00be 29F00049 		bic	r9, r9, #-2147483648
 771 00c2 3846     		mov	r0, r7
 772 00c4 4946     		mov	r1, r9
 773 00c6 FFF7FEFF 		bl	__aeabi_fcmpgt
 774 00ca 50B3     		cbz	r0, .L144
 775 00cc 4946     		mov	r1, r9
 776 00ce 4046     		mov	r0, r8
 777 00d0 FFF7FEFF 		bl	__aeabi_fadd
 778 00d4 26F00041 		bic	r1, r6, #-2147483648
 779 00d8 FFF7FEFF 		bl	__aeabi_fdiv
 780 00dc CBF89400 		str	r0, [fp, #148]	@ float
 781              	.L128:
 782 00e0 012C     		cmp	r4, #1
 783 00e2 05D0     		beq	.L135
 784 00e4 4FF0010A 		mov	r10, #1
 785 00e8 90E7     		b	.L121
 786              	.L147:
 787 00ea BAF1000F 		cmp	r10, #0
 788 00ee 02D0     		beq	.L148
 789              	.L135:
 790 00f0 0024     		movs	r4, #0
 791 00f2 A246     		mov	r10, r4
 792 00f4 8DE7     		b	.L134
 793              	.L148:
 794 00f6 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 795              	.L123:
 796 00fa 3946     		mov	r1, r7
 797 00fc 3846     		mov	r0, r7
 798 00fe FFF7FEFF 		bl	__aeabi_fadd
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 15


 799 0102 0146     		mov	r1, r0
 800 0104 4046     		mov	r0, r8
 801 0106 FFF7FEFF 		bl	__aeabi_fcmpgt
 802 010a A8B1     		cbz	r0, .L145
 803 010c 3946     		mov	r1, r7
 804 010e 4046     		mov	r0, r8
 805 0110 FFF7FEFF 		bl	__aeabi_fsub
 806 0114 25F00041 		bic	r1, r5, #-2147483648
 807 0118 FFF7FEFF 		bl	__aeabi_fdiv
 808 011c CBF8A400 		str	r0, [fp, #164]	@ float
 809 0120 DEE7     		b	.L128
 810              	.L144:
 811 0122 3946     		mov	r1, r7
 812 0124 4046     		mov	r0, r8
 813 0126 FFF7FEFF 		bl	__aeabi_fadd
 814 012a 25F00041 		bic	r1, r5, #-2147483648
 815 012e FFF7FEFF 		bl	__aeabi_fdiv
 816 0132 CBF8A400 		str	r0, [fp, #164]	@ float
 817 0136 D3E7     		b	.L128
 818              	.L145:
 819 0138 29F00049 		bic	r9, r9, #-2147483648
 820 013c 4946     		mov	r1, r9
 821 013e 4846     		mov	r0, r9
 822 0140 FFF7FEFF 		bl	__aeabi_fadd
 823 0144 0146     		mov	r1, r0
 824 0146 4046     		mov	r0, r8
 825 0148 FFF7FEFF 		bl	__aeabi_fcmpgt
 826 014c 50B1     		cbz	r0, .L146
 827 014e 4946     		mov	r1, r9
 828 0150 4046     		mov	r0, r8
 829 0152 FFF7FEFF 		bl	__aeabi_fsub
 830 0156 26F00041 		bic	r1, r6, #-2147483648
 831 015a FFF7FEFF 		bl	__aeabi_fdiv
 832 015e CBF89400 		str	r0, [fp, #148]	@ float
 833 0162 BDE7     		b	.L128
 834              	.L146:
 835 0164 25F00040 		bic	r0, r5, #-2147483648
 836 0168 0146     		mov	r1, r0
 837 016a FFF7FEFF 		bl	__aeabi_fadd
 838 016e 0146     		mov	r1, r0
 839 0170 4046     		mov	r0, r8
 840 0172 FFF7FEFF 		bl	__aeabi_fdiv
 841 0176 26F00046 		bic	r6, r6, #-2147483648
 842 017a CBF8A400 		str	r0, [fp, #164]	@ float
 843 017e 3146     		mov	r1, r6
 844 0180 3046     		mov	r0, r6
 845 0182 FFF7FEFF 		bl	__aeabi_fadd
 846 0186 0146     		mov	r1, r0
 847 0188 4046     		mov	r0, r8
 848 018a FFF7FEFF 		bl	__aeabi_fdiv
 849 018e CBF89400 		str	r0, [fp, #148]	@ float
 850 0192 A5E7     		b	.L128
 851              	.L150:
 852 0194 AFF30080 		.align	3
 853              	.L149:
 854 0198 9A999999 		.word	-1717986918
 855 019c 9999E93F 		.word	1072273817
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 16


 856 01a0 00000000 		.word	reprap
 857              		.size	_ZN3DDA13CalcNewSpeedsEv, .-_ZN3DDA13CalcNewSpeedsEv
 858              		.global	__aeabi_dcmpgt
 859 01a4 AFF30080 		.section	.text._ZN3DDA11DoLookaheadEPS_,"ax",%progbits
 860              		.align	2
 861              		.global	_ZN3DDA11DoLookaheadEPS_
 862              		.thumb
 863              		.thumb_func
 864              		.type	_ZN3DDA11DoLookaheadEPS_, %function
 865              	_ZN3DDA11DoLookaheadEPS_:
 866              		@ args = 0, pretend = 0, frame = 0
 867              		@ frame_needed = 0, uses_anonymous_args = 0
 868 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 869 0004 DFF8D4B1 		ldr	fp, .L202+12
 870 0008 0646     		mov	r6, r0
 871 000a 4FF0010A 		mov	r10, #1
 872 000e 0027     		movs	r7, #0
 873              	.L152:
 874 0010 BAF1000F 		cmp	r10, #0
 875 0014 14D0     		beq	.L153
 876 0016 D6F89840 		ldr	r4, [r6, #152]	@ float
 877 001a D6F88480 		ldr	r8, [r6, #132]	@ float
 878 001e 2046     		mov	r0, r4
 879 0020 4146     		mov	r1, r8
 880 0022 FFF7FEFF 		bl	__aeabi_fcmpge
 881 0026 0028     		cmp	r0, #0
 882 0028 35D0     		beq	.L188
 883 002a C6F89480 		str	r8, [r6, #148]	@ float
 884 002e 3046     		mov	r0, r6
 885 0030 FFF7FEFF 		bl	_ZN3DDA13CalcNewSpeedsEv
 886              	.L156:
 887 0034 3046     		mov	r0, r6
 888 0036 FFF7FEFF 		bl	_ZN3DDA15RecalculateMoveEv
 889 003a 57B3     		cbz	r7, .L198
 890              	.L194:
 891 003c 3668     		ldr	r6, [r6]
 892 003e 013F     		subs	r7, r7, #1
 893              	.L153:
 894 0040 7368     		ldr	r3, [r6, #4]
 895 0042 D6F88000 		ldr	r0, [r6, #128]	@ float
 896 0046 D3F8A440 		ldr	r4, [r3, #164]	@ float
 897 004a 0146     		mov	r1, r0
 898 004c C6F89040 		str	r4, [r6, #144]	@ float
 899 0050 FFF7FEFF 		bl	__aeabi_fadd
 900 0054 F16F     		ldr	r1, [r6, #124]	@ float
 901 0056 FFF7FEFF 		bl	__aeabi_fmul
 902 005a 2146     		mov	r1, r4
 903 005c 0546     		mov	r5, r0
 904 005e 2046     		mov	r0, r4
 905 0060 FFF7FEFF 		bl	__aeabi_fmul
 906 0064 0146     		mov	r1, r0
 907 0066 2846     		mov	r0, r5
 908 0068 FFF7FEFF 		bl	__aeabi_fadd
 909 006c FFF7FEFF 		bl	sqrtf
 910 0070 D6F89410 		ldr	r1, [r6, #148]	@ float
 911 0074 0446     		mov	r4, r0
 912 0076 FFF7FEFF 		bl	__aeabi_fcmplt
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 17


 913 007a 0028     		cmp	r0, #0
 914 007c DAD0     		beq	.L156
 915              	.L195:
 916 007e C6F89440 		str	r4, [r6, #148]	@ float
 917 0082 3046     		mov	r0, r6
 918 0084 FFF7FEFF 		bl	_ZN3DDA13CalcNewSpeedsEv
 919              	.L200:
 920 0088 3046     		mov	r0, r6
 921 008a FFF7FEFF 		bl	_ZN3DDA15RecalculateMoveEv
 922 008e 002F     		cmp	r7, #0
 923 0090 D4D1     		bne	.L194
 924              	.L198:
 925 0092 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 926              	.L188:
 927 0096 D6F8A050 		ldr	r5, [r6, #160]	@ float
 928 009a D6F87C90 		ldr	r9, [r6, #124]	@ float
 929 009e 2846     		mov	r0, r5
 930 00a0 4946     		mov	r1, r9
 931 00a2 FFF7FEFF 		bl	__aeabi_fcmpeq
 932 00a6 0028     		cmp	r0, #0
 933 00a8 46D1     		bne	.L157
 934 00aa 2046     		mov	r0, r4
 935 00ac 4146     		mov	r1, r8
 936 00ae FFF7FEFF 		bl	__aeabi_fcmplt
 937 00b2 B8B1     		cbz	r0, .L158
 938 00b4 2846     		mov	r0, r5
 939 00b6 FFF7FEFF 		bl	__aeabi_f2d
 940 00ba 0446     		mov	r4, r0
 941 00bc 4846     		mov	r0, r9
 942 00be 0D46     		mov	r5, r1
 943 00c0 FFF7FEFF 		bl	__aeabi_f2d
 944 00c4 42A3     		adr	r3, .L202
 945 00c6 D3E90023 		ldrd	r2, [r3]
 946 00ca FFF7FEFF 		bl	__aeabi_dmul
 947 00ce 0246     		mov	r2, r0
 948 00d0 0B46     		mov	r3, r1
 949 00d2 2046     		mov	r0, r4
 950 00d4 2946     		mov	r1, r5
 951 00d6 FFF7FEFF 		bl	__aeabi_dcmpgt
 952 00da 18B1     		cbz	r0, .L158
 953 00dc 7468     		ldr	r4, [r6, #4]
 954 00de 237A     		ldrb	r3, [r4, #8]	@ zero_extendqisi2
 955 00e0 012B     		cmp	r3, #1
 956 00e2 6CD0     		beq	.L199
 957              	.L158:
 958 00e4 D6F88000 		ldr	r0, [r6, #128]	@ float
 959 00e8 D6F89050 		ldr	r5, [r6, #144]	@ float
 960 00ec 0146     		mov	r1, r0
 961 00ee FFF7FEFF 		bl	__aeabi_fadd
 962 00f2 4946     		mov	r1, r9
 963              	.L197:
 964 00f4 FFF7FEFF 		bl	__aeabi_fmul
 965 00f8 2946     		mov	r1, r5
 966 00fa 0446     		mov	r4, r0
 967 00fc 2846     		mov	r0, r5
 968 00fe FFF7FEFF 		bl	__aeabi_fmul
 969 0102 0146     		mov	r1, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 18


 970 0104 2046     		mov	r0, r4
 971 0106 FFF7FEFF 		bl	__aeabi_fadd
 972 010a FFF7FEFF 		bl	sqrtf
 973 010e 0146     		mov	r1, r0
 974 0110 0446     		mov	r4, r0
 975 0112 D6F88450 		ldr	r5, [r6, #132]	@ float
 976 0116 FFF7FEFF 		bl	__aeabi_fcmpun
 977 011a 0028     		cmp	r0, #0
 978 011c AFD1     		bne	.L195
 979 011e 2046     		mov	r0, r4
 980 0120 2946     		mov	r1, r5
 981 0122 FFF7FEFF 		bl	__aeabi_fcmplt
 982 0126 0028     		cmp	r0, #0
 983 0128 A9D1     		bne	.L195
 984 012a 2C46     		mov	r4, r5
 985 012c C6F89440 		str	r4, [r6, #148]	@ float
 986 0130 3046     		mov	r0, r6
 987 0132 FFF7FEFF 		bl	_ZN3DDA13CalcNewSpeedsEv
 988 0136 A7E7     		b	.L200
 989              	.L157:
 990 0138 7468     		ldr	r4, [r6, #4]
 991              	.L161:
 992 013a 237A     		ldrb	r3, [r4, #8]	@ zero_extendqisi2
 993 013c 012B     		cmp	r3, #1
 994 013e 0CD0     		beq	.L201
 995 0140 737A     		ldrb	r3, [r6, #9]	@ zero_extendqisi2
 996 0142 D6F88000 		ldr	r0, [r6, #128]	@ float
 997 0146 43F04003 		orr	r3, r3, #64
 998 014a 0146     		mov	r1, r0
 999 014c 7372     		strb	r3, [r6, #9]
 1000 014e FFF7FEFF 		bl	__aeabi_fadd
 1001 0152 4946     		mov	r1, r9
 1002 0154 D6F89050 		ldr	r5, [r6, #144]	@ float
 1003 0158 CCE7     		b	.L197
 1004              	.L201:
 1005 015a 3046     		mov	r0, r6
 1006 015c C6F89480 		str	r8, [r6, #148]	@ float
 1007 0160 FFF7FEFF 		bl	_ZN3DDA13CalcNewSpeedsEv
 1008 0164 D6F88000 		ldr	r0, [r6, #128]	@ float
 1009 0168 D6F89450 		ldr	r5, [r6, #148]	@ float
 1010 016c 0146     		mov	r1, r0
 1011 016e FFF7FEFF 		bl	__aeabi_fadd
 1012 0172 F16F     		ldr	r1, [r6, #124]	@ float
 1013 0174 FFF7FEFF 		bl	__aeabi_fmul
 1014 0178 2946     		mov	r1, r5
 1015 017a 0446     		mov	r4, r0
 1016 017c 2846     		mov	r0, r5
 1017 017e FFF7FEFF 		bl	__aeabi_fmul
 1018 0182 0146     		mov	r1, r0
 1019 0184 2046     		mov	r0, r4
 1020 0186 FFF7FEFF 		bl	__aeabi_fadd
 1021 018a FFF7FEFF 		bl	sqrtf
 1022 018e D6F88440 		ldr	r4, [r6, #132]	@ float
 1023 0192 0546     		mov	r5, r0
 1024 0194 2146     		mov	r1, r4
 1025 0196 FFF7FEFF 		bl	__aeabi_fcmplt
 1026 019a 7668     		ldr	r6, [r6, #4]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 19


 1027 019c 60B1     		cbz	r0, .L189
 1028 019e C6F8A450 		str	r5, [r6, #164]	@ float
 1029              	.L164:
 1030 01a2 BBF84030 		ldrh	r3, [fp, #64]
 1031 01a6 0137     		adds	r7, r7, #1
 1032 01a8 5B06     		lsls	r3, r3, #25
 1033 01aa 7FF531AF 		bpl	.L152
 1034 01ae 0A48     		ldr	r0, .L202+8
 1035 01b0 3946     		mov	r1, r7
 1036 01b2 FFF7FEFF 		bl	debugPrintf
 1037 01b6 2BE7     		b	.L152
 1038              	.L189:
 1039 01b8 C6F8A440 		str	r4, [r6, #164]	@ float
 1040 01bc F1E7     		b	.L164
 1041              	.L199:
 1042 01be D4F8A000 		ldr	r0, [r4, #160]	@ float
 1043 01c2 0021     		movs	r1, #0
 1044 01c4 FFF7FEFF 		bl	__aeabi_fcmpgt
 1045 01c8 0028     		cmp	r0, #0
 1046 01ca B6D1     		bne	.L161
 1047 01cc 8AE7     		b	.L158
 1048              	.L203:
 1049 01ce 00BF     		.align	3
 1050              	.L202:
 1051 01d0 5C8FC2F5 		.word	-171798692
 1052 01d4 285CEF3F 		.word	1072651304
 1053 01d8 7C000000 		.word	.LC9
 1054 01dc 00000000 		.word	reprap
 1055              		.size	_ZN3DDA11DoLookaheadEPS_, .-_ZN3DDA11DoLookaheadEPS_
 1056              		.section	.text._ZN3DDA16FetchEndPositionEPVlPVf,"ax",%progbits
 1057              		.align	2
 1058              		.global	_ZN3DDA16FetchEndPositionEPVlPVf
 1059              		.thumb
 1060              		.thumb_func
 1061              		.type	_ZN3DDA16FetchEndPositionEPVlPVf, %function
 1062              	_ZN3DDA16FetchEndPositionEPVlPVf:
 1063              		@ args = 0, pretend = 0, frame = 0
 1064              		@ frame_needed = 0, uses_anonymous_args = 0
 1065 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1066 0004 184B     		ldr	r3, .L217
 1067 0006 0746     		mov	r7, r0
 1068 0008 1B69     		ldr	r3, [r3, #16]
 1069 000a D3F88451 		ldr	r5, [r3, #388]
 1070 000e 0023     		movs	r3, #0
 1071              	.L206:
 1072 0010 F818     		adds	r0, r7, r3
 1073 0012 0069     		ldr	r0, [r0, #16]
 1074 0014 C850     		str	r0, [r1, r3]
 1075 0016 0433     		adds	r3, r3, #4
 1076 0018 242B     		cmp	r3, #36
 1077 001a F9D1     		bne	.L206
 1078 001c 7B7A     		ldrb	r3, [r7, #9]	@ zero_extendqisi2
 1079 001e DB07     		lsls	r3, r3, #31
 1080 0020 08D5     		bpl	.L212
 1081 0022 4DB1     		cbz	r5, .L208
 1082 0024 A800     		lsls	r0, r5, #2
 1083 0026 0023     		movs	r3, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 20


 1084              	.L213:
 1085 0028 F918     		adds	r1, r7, r3
 1086 002a 496B     		ldr	r1, [r1, #52]	@ float
 1087 002c D150     		str	r1, [r2, r3]	@ float
 1088 002e 0433     		adds	r3, r3, #4
 1089 0030 8342     		cmp	r3, r0
 1090 0032 F9D1     		bne	.L213
 1091              	.L212:
 1092 0034 082D     		cmp	r5, #8
 1093 0036 11D8     		bhi	.L209
 1094              	.L208:
 1095 0038 4FEA8508 		lsl	r8, r5, #2
 1096 003c 02EB0806 		add	r6, r2, r8
 1097 0040 0024     		movs	r4, #0
 1098 0042 B844     		add	r8, r8, r7
 1099              	.L211:
 1100 0044 08EB0403 		add	r3, r8, r4
 1101 0048 A059     		ldr	r0, [r4, r6]	@ float
 1102 004a 596B     		ldr	r1, [r3, #52]	@ float
 1103 004c FFF7FEFF 		bl	__aeabi_fadd
 1104 0050 0135     		adds	r5, r5, #1
 1105 0052 082D     		cmp	r5, #8
 1106 0054 A051     		str	r0, [r4, r6]	@ float
 1107 0056 04F10404 		add	r4, r4, #4
 1108 005a F3D9     		bls	.L211
 1109              	.L209:
 1110 005c 787A     		ldrb	r0, [r7, #9]	@ zero_extendqisi2
 1111 005e 00F00100 		and	r0, r0, #1
 1112 0062 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1113              	.L218:
 1114 0066 00BF     		.align	2
 1115              	.L217:
 1116 0068 00000000 		.word	reprap
 1117              		.size	_ZN3DDA16FetchEndPositionEPVlPVf, .-_ZN3DDA16FetchEndPositionEPVlPVf
 1118              		.section	.text._ZN3DDA12SetPositionsEPKfj,"ax",%progbits
 1119              		.align	2
 1120              		.global	_ZN3DDA12SetPositionsEPKfj
 1121              		.thumb
 1122              		.thumb_func
 1123              		.type	_ZN3DDA12SetPositionsEPKfj, %function
 1124              	_ZN3DDA12SetPositionsEPKfj:
 1125              		@ args = 0, pretend = 0, frame = 0
 1126              		@ frame_needed = 0, uses_anonymous_args = 0
 1127 0000 70B5     		push	{r4, r5, r6, lr}
 1128 0002 0D4C     		ldr	r4, .L225
 1129 0004 1346     		mov	r3, r2
 1130 0006 0546     		mov	r5, r0
 1131 0008 00F11002 		add	r2, r0, #16
 1132 000c A068     		ldr	r0, [r4, #8]
 1133 000e 0E46     		mov	r6, r1
 1134 0010 FFF7FEFF 		bl	_ZNK4Move17EndPointToMachineEPKfPlj
 1135 0014 2369     		ldr	r3, [r4, #16]
 1136 0016 D3F88411 		ldr	r1, [r3, #388]
 1137 001a 39B1     		cbz	r1, .L221
 1138 001c 8900     		lsls	r1, r1, #2
 1139 001e 0023     		movs	r3, #0
 1140              	.L222:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 21


 1141 0020 F458     		ldr	r4, [r6, r3]	@ float
 1142 0022 EA18     		adds	r2, r5, r3
 1143 0024 0433     		adds	r3, r3, #4
 1144 0026 8B42     		cmp	r3, r1
 1145 0028 5463     		str	r4, [r2, #52]	@ float
 1146 002a F9D1     		bne	.L222
 1147              	.L221:
 1148 002c 6B7A     		ldrb	r3, [r5, #9]	@ zero_extendqisi2
 1149 002e 43F00103 		orr	r3, r3, #1
 1150 0032 6B72     		strb	r3, [r5, #9]
 1151 0034 70BD     		pop	{r4, r5, r6, pc}
 1152              	.L226:
 1153 0036 00BF     		.align	2
 1154              	.L225:
 1155 0038 00000000 		.word	reprap
 1156              		.size	_ZN3DDA12SetPositionsEPKfj, .-_ZN3DDA12SetPositionsEPKfj
 1157              		.section	.text._ZN3DDA16GetEndCoordinateEjb,"ax",%progbits
 1158              		.align	2
 1159              		.global	_ZN3DDA16GetEndCoordinateEjb
 1160              		.thumb
 1161              		.thumb_func
 1162              		.type	_ZN3DDA16GetEndCoordinateEjb, %function
 1163              	_ZN3DDA16GetEndCoordinateEjb:
 1164              		@ args = 0, pretend = 0, frame = 0
 1165              		@ frame_needed = 0, uses_anonymous_args = 0
 1166 0000 38B5     		push	{r3, r4, r5, lr}
 1167 0002 0446     		mov	r4, r0
 1168 0004 0D46     		mov	r5, r1
 1169 0006 62B9     		cbnz	r2, .L230
 1170 0008 114A     		ldr	r2, .L232
 1171 000a 1369     		ldr	r3, [r2, #16]
 1172 000c D3F88431 		ldr	r3, [r3, #388]
 1173 0010 9942     		cmp	r1, r3
 1174 0012 02D2     		bcs	.L229
 1175 0014 417A     		ldrb	r1, [r0, #9]	@ zero_extendqisi2
 1176 0016 C907     		lsls	r1, r1, #31
 1177 0018 0AD5     		bpl	.L231
 1178              	.L229:
 1179 001a 04EB8504 		add	r4, r4, r5, lsl #2
 1180 001e 606B     		ldr	r0, [r4, #52]	@ float
 1181 0020 38BD     		pop	{r3, r4, r5, pc}
 1182              	.L230:
 1183 0022 0D1D     		adds	r5, r1, #4
 1184 0024 50F82500 		ldr	r0, [r0, r5, lsl #2]
 1185 0028 BDE83840 		pop	{r3, r4, r5, lr}
 1186 002c FFF7FEBF 		b	_ZN4Move23MotorEndpointToPositionElj
 1187              	.L231:
 1188 0030 9068     		ldr	r0, [r2, #8]
 1189 0032 04F11001 		add	r1, r4, #16
 1190 0036 04F13402 		add	r2, r4, #52
 1191 003a FFF7FEFF 		bl	_ZNK4Move17MachineToEndPointEPKlPfj
 1192 003e 637A     		ldrb	r3, [r4, #9]	@ zero_extendqisi2
 1193 0040 43F00103 		orr	r3, r3, #1
 1194 0044 6372     		strb	r3, [r4, #9]
 1195 0046 04EB8504 		add	r4, r4, r5, lsl #2
 1196 004a 606B     		ldr	r0, [r4, #52]	@ float
 1197 004c 38BD     		pop	{r3, r4, r5, pc}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 22


 1198              	.L233:
 1199 004e 00BF     		.align	2
 1200              	.L232:
 1201 0050 00000000 		.word	reprap
 1202              		.size	_ZN3DDA16GetEndCoordinateEjb, .-_ZN3DDA16GetEndCoordinateEjb
 1203              		.section	.text._ZNK3DDA8CalcTimeEv,"ax",%progbits
 1204              		.align	2
 1205              		.global	_ZNK3DDA8CalcTimeEv
 1206              		.thumb
 1207              		.thumb_func
 1208              		.type	_ZNK3DDA8CalcTimeEv, %function
 1209              	_ZNK3DDA8CalcTimeEv:
 1210              		@ args = 0, pretend = 0, frame = 0
 1211              		@ frame_needed = 0, uses_anonymous_args = 0
 1212 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1213 0002 D0F89850 		ldr	r5, [r0, #152]	@ float
 1214 0006 0446     		mov	r4, r0
 1215 0008 D0F88060 		ldr	r6, [r0, #128]	@ float
 1216 000c D4F89010 		ldr	r1, [r4, #144]	@ float
 1217 0010 2846     		mov	r0, r5
 1218 0012 FFF7FEFF 		bl	__aeabi_fsub
 1219 0016 3146     		mov	r1, r6
 1220 0018 FFF7FEFF 		bl	__aeabi_fdiv
 1221 001c D4F89C10 		ldr	r1, [r4, #156]	@ float
 1222 0020 0746     		mov	r7, r0
 1223 0022 E06F     		ldr	r0, [r4, #124]	@ float
 1224 0024 FFF7FEFF 		bl	__aeabi_fsub
 1225 0028 D4F8A010 		ldr	r1, [r4, #160]	@ float
 1226 002c FFF7FEFF 		bl	__aeabi_fsub
 1227 0030 2946     		mov	r1, r5
 1228 0032 FFF7FEFF 		bl	__aeabi_fdiv
 1229 0036 0146     		mov	r1, r0
 1230 0038 3846     		mov	r0, r7
 1231 003a FFF7FEFF 		bl	__aeabi_fadd
 1232 003e D4F89410 		ldr	r1, [r4, #148]	@ float
 1233 0042 0746     		mov	r7, r0
 1234 0044 2846     		mov	r0, r5
 1235 0046 FFF7FEFF 		bl	__aeabi_fsub
 1236 004a 3146     		mov	r1, r6
 1237 004c FFF7FEFF 		bl	__aeabi_fdiv
 1238 0050 0146     		mov	r1, r0
 1239 0052 3846     		mov	r0, r7
 1240 0054 FFF7FEFF 		bl	__aeabi_fadd
 1241 0058 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1242              		.size	_ZNK3DDA8CalcTimeEv, .-_ZNK3DDA8CalcTimeEv
 1243              		.global	__aeabi_f2uiz
 1244              		.global	__aeabi_f2iz
 1245              		.global	__aeabi_f2lz
 1246              		.global	__aeabi_fcmple
 1247              		.global	__aeabi_dsub
 1248 005a 00BF     		.section	.text._ZN3DDA7PrepareEv,"ax",%progbits
 1249              		.align	2
 1250              		.global	_ZN3DDA7PrepareEv
 1251              		.thumb
 1252              		.thumb_func
 1253              		.type	_ZN3DDA7PrepareEv, %function
 1254              	_ZN3DDA7PrepareEv:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 23


 1255              		@ args = 0, pretend = 0, frame = 88
 1256              		@ frame_needed = 0, uses_anonymous_args = 0
 1257 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1258 0004 437A     		ldrb	r3, [r0, #9]	@ zero_extendqisi2
 1259 0006 97B0     		sub	sp, sp, #92
 1260 0008 9907     		lsls	r1, r3, #30
 1261 000a 8246     		mov	r10, r0
 1262 000c 00F13281 		bmi	.L236
 1263 0010 DFF858B2 		ldr	fp, .L299+8
 1264              	.L249:
 1265 0014 DAF8A010 		ldr	r1, [r10, #160]	@ float
 1266 0018 DAF87C00 		ldr	r0, [r10, #124]	@ float
 1267 001c FFF7FEFF 		bl	__aeabi_fsub
 1268 0020 DAF89840 		ldr	r4, [r10, #152]	@ float
 1269 0024 DAF89060 		ldr	r6, [r10, #144]	@ float
 1270 0028 DAF88050 		ldr	r5, [r10, #128]	@ float
 1271 002c 8046     		mov	r8, r0
 1272 002e 3146     		mov	r1, r6
 1273 0030 2046     		mov	r0, r4
 1274 0032 CDF83C80 		str	r8, [sp, #60]	@ float
 1275 0036 FFF7FEFF 		bl	__aeabi_fsub
 1276 003a 2946     		mov	r1, r5
 1277 003c FFF7FEFF 		bl	__aeabi_fdiv
 1278 0040 DAF89C90 		ldr	r9, [r10, #156]	@ float
 1279 0044 0746     		mov	r7, r0
 1280 0046 4946     		mov	r1, r9
 1281 0048 4046     		mov	r0, r8
 1282 004a FFF7FEFF 		bl	__aeabi_fsub
 1283 004e 2146     		mov	r1, r4
 1284 0050 FFF7FEFF 		bl	__aeabi_fdiv
 1285 0054 3946     		mov	r1, r7
 1286 0056 FFF7FEFF 		bl	__aeabi_fadd
 1287 005a DAF89410 		ldr	r1, [r10, #148]	@ float
 1288 005e 8046     		mov	r8, r0
 1289 0060 2046     		mov	r0, r4
 1290 0062 FFF7FEFF 		bl	__aeabi_fsub
 1291 0066 2946     		mov	r1, r5
 1292 0068 FFF7FEFF 		bl	__aeabi_fdiv
 1293 006c 4146     		mov	r1, r8
 1294 006e FFF7FEFF 		bl	__aeabi_fadd
 1295 0072 7C49     		ldr	r1, .L299
 1296 0074 FFF7FEFF 		bl	__aeabi_fmul
 1297 0078 FFF7FEFF 		bl	__aeabi_f2uiz
 1298 007c 7949     		ldr	r1, .L299
 1299 007e CAF8A800 		str	r0, [r10, #168]
 1300 0082 3046     		mov	r0, r6
 1301 0084 FFF7FEFF 		bl	__aeabi_fmul
 1302 0088 2946     		mov	r1, r5
 1303 008a FFF7FEFF 		bl	__aeabi_fdiv
 1304 008e FFF7FEFF 		bl	__aeabi_f2uiz
 1305 0092 7449     		ldr	r1, .L299
 1306 0094 1090     		str	r0, [sp, #64]
 1307 0096 2046     		mov	r0, r4
 1308 0098 FFF7FEFF 		bl	__aeabi_fmul
 1309 009c 2946     		mov	r1, r5
 1310 009e FFF7FEFF 		bl	__aeabi_fdiv
 1311 00a2 FFF7FEFF 		bl	__aeabi_f2uiz
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 24


 1312 00a6 6F49     		ldr	r1, .L299
 1313 00a8 0546     		mov	r5, r0
 1314 00aa 4046     		mov	r0, r8
 1315 00ac 1195     		str	r5, [sp, #68]
 1316 00ae FFF7FEFF 		bl	__aeabi_fmul
 1317 00b2 FFF7FEFF 		bl	__aeabi_f2uiz
 1318 00b6 2146     		mov	r1, r4
 1319 00b8 0346     		mov	r3, r0
 1320 00ba 0544     		add	r5, r5, r0
 1321 00bc 4846     		mov	r0, r9
 1322 00be 1293     		str	r3, [sp, #72]
 1323 00c0 1395     		str	r5, [sp, #76]
 1324 00c2 FFF7FEFF 		bl	__aeabi_fdiv
 1325 00c6 0146     		mov	r1, r0
 1326 00c8 3846     		mov	r0, r7
 1327 00ca FFF7FEFF 		bl	__aeabi_fsub
 1328 00ce 6549     		ldr	r1, .L299
 1329 00d0 FFF7FEFF 		bl	__aeabi_fmul
 1330 00d4 FFF7FEFF 		bl	__aeabi_f2uiz
 1331 00d8 2146     		mov	r1, r4
 1332 00da 1490     		str	r0, [sp, #80]
 1333 00dc 3046     		mov	r0, r6
 1334 00de FFF7FEFF 		bl	__aeabi_fdiv
 1335 00e2 0146     		mov	r1, r0
 1336 00e4 4FF07E50 		mov	r0, #1065353216
 1337 00e8 FFF7FEFF 		bl	__aeabi_fsub
 1338 00ec 9AF80930 		ldrb	r3, [r10, #9]	@ zero_extendqisi2
 1339 00f0 1590     		str	r0, [sp, #84]	@ float
 1340 00f2 6FF3C303 		bfc	r3, #3, #1
 1341 00f6 8AF80930 		strb	r3, [r10, #9]
 1342 00fa DBF81030 		ldr	r3, [fp, #16]
 1343 00fe 0025     		movs	r5, #0
 1344 0100 D3F88471 		ldr	r7, [r3, #388]
 1345 0104 0AF58074 		add	r4, r10, #256
 1346 0108 CAF8B050 		str	r5, [r10, #176]
 1347 010c DFF85C81 		ldr	r8, .L299+8
 1348 0110 DFF85C91 		ldr	r9, .L299+12
 1349 0114 04E0     		b	.L237
 1350              	.L251:
 1351 0116 0135     		adds	r5, r5, #1
 1352 0118 092D     		cmp	r5, #9
 1353 011a 04F15004 		add	r4, r4, #80
 1354 011e 25D0     		beq	.L292
 1355              	.L237:
 1356 0120 14F82F3C 		ldrb	r3, [r4, #-47]	@ zero_extendqisi2
 1357 0124 A4F14806 		sub	r6, r4, #72
 1358 0128 012B     		cmp	r3, #1
 1359 012a F4D1     		bne	.L251
 1360 012c 04F8305C 		strb	r5, [r4, #-48]
 1361 0130 DBF80000 		ldr	r0, [fp]
 1362 0134 2946     		mov	r1, r5
 1363 0136 FFF7FEFF 		bl	_ZN8Platform11EnableDriveEj
 1364 013a AF42     		cmp	r7, r5
 1365 013c 9AF80930 		ldrb	r3, [r10, #9]	@ zero_extendqisi2
 1366 0140 3046     		mov	r0, r6
 1367 0142 5AD9     		bls	.L293
 1368 0144 9B07     		lsls	r3, r3, #30
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 25


 1369 0146 5146     		mov	r1, r10
 1370 0148 0FAA     		add	r2, sp, #60
 1371 014a 1ED5     		bpl	.L255
 1372 014c FFF7FEFF 		bl	_ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams
 1373 0150 B8F84030 		ldrh	r3, [r8, #64]
 1374 0154 54F8340C 		ldr	r0, [r4, #-52]
 1375 0158 5906     		lsls	r1, r3, #25
 1376 015a 1ED5     		bpl	.L258
 1377              	.L259:
 1378 015c 4845     		cmp	r0, r9
 1379 015e 1CD9     		bls	.L258
 1380 0160 5046     		mov	r0, r10
 1381 0162 FFF7FEFF 		bl	_ZNK3DDA10DebugPrintEv
 1382 0166 54F8340C 		ldr	r0, [r4, #-52]
 1383 016a 16E0     		b	.L258
 1384              	.L292:
 1385 016c BBF84030 		ldrh	r3, [fp, #64]
 1386 0170 03F05003 		and	r3, r3, #80
 1387 0174 502B     		cmp	r3, #80
 1388 0176 02D1     		bne	.L271
 1389 0178 5046     		mov	r0, r10
 1390 017a FFF7FEFF 		bl	_ZNK3DDA10DebugPrintEv
 1391              	.L271:
 1392 017e 0223     		movs	r3, #2
 1393 0180 8AF80830 		strb	r3, [r10, #8]
 1394 0184 17B0     		add	sp, sp, #92
 1395              		@ sp needed
 1396 0186 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1397              	.L255:
 1398 018a FFF7FEFF 		bl	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams
 1399 018e B8F84030 		ldrh	r3, [r8, #64]
 1400 0192 54F8340C 		ldr	r0, [r4, #-52]
 1401 0196 5A06     		lsls	r2, r3, #25
 1402 0198 E0D4     		bmi	.L259
 1403              	.L258:
 1404 019a 334B     		ldr	r3, .L299+4
 1405 019c 0022     		movs	r2, #0
 1406 019e 44F8203C 		str	r3, [r4, #-32]
 1407 01a2 44F82C2C 		str	r2, [r4, #-44]
 1408 01a6 44F8242C 		str	r2, [r4, #-36]
 1409 01aa 04F82D2C 		strb	r2, [r4, #-45]
 1410 01ae 9AF80930 		ldrb	r3, [r10, #9]	@ zero_extendqisi2
 1411 01b2 9B07     		lsls	r3, r3, #30
 1412 01b4 43D5     		bpl	.L273
 1413 01b6 0028     		cmp	r0, #0
 1414 01b8 51D0     		beq	.L264
 1415 01ba 0123     		movs	r3, #1
 1416 01bc 44F82C3C 		str	r3, [r4, #-44]
 1417 01c0 3046     		mov	r0, r6
 1418 01c2 5146     		mov	r1, r10
 1419 01c4 FFF7FEFF 		bl	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb
 1420              	.L263:
 1421 01c8 0028     		cmp	r0, #0
 1422 01ca 45D0     		beq	.L266
 1423              	.L296:
 1424 01cc DAF8B030 		ldr	r3, [r10, #176]
 1425 01d0 0AF1B001 		add	r1, r10, #176
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 26


 1426 01d4 6BB1     		cbz	r3, .L267
 1427 01d6 54F8240C 		ldr	r0, [r4, #-36]
 1428 01da 5A6A     		ldr	r2, [r3, #36]
 1429 01dc 9042     		cmp	r0, r2
 1430 01de 03D8     		bhi	.L268
 1431 01e0 07E0     		b	.L267
 1432              	.L294:
 1433 01e2 5A6A     		ldr	r2, [r3, #36]
 1434 01e4 8242     		cmp	r2, r0
 1435 01e6 04D2     		bcs	.L267
 1436              	.L268:
 1437 01e8 03F12C01 		add	r1, r3, #44
 1438 01ec DB6A     		ldr	r3, [r3, #44]
 1439 01ee 002B     		cmp	r3, #0
 1440 01f0 F7D1     		bne	.L294
 1441              	.L267:
 1442 01f2 44F81C3C 		str	r3, [r4, #-28]
 1443 01f6 0E60     		str	r6, [r1]
 1444 01f8 8DE7     		b	.L251
 1445              	.L293:
 1446 01fa C3F34013 		ubfx	r3, r3, #5, #1
 1447 01fe 0FAA     		add	r2, sp, #60
 1448 0200 5146     		mov	r1, r10
 1449 0202 FFF7FEFF 		bl	_ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsb
 1450 0206 B8F84030 		ldrh	r3, [r8, #64]
 1451 020a 5A06     		lsls	r2, r3, #25
 1452 020c 0DD5     		bpl	.L253
 1453 020e 54F8343C 		ldr	r3, [r4, #-52]
 1454 0212 4B45     		cmp	r3, r9
 1455 0214 06D8     		bhi	.L254
 1456 0216 54F8282C 		ldr	r2, [r4, #-40]
 1457 021a 54F80C1C 		ldr	r1, [r4, #-12]
 1458 021e 8A42     		cmp	r2, r1
 1459 0220 80F09181 		bcs	.L295
 1460              	.L254:
 1461 0224 5046     		mov	r0, r10
 1462 0226 FFF7FEFF 		bl	_ZNK3DDA10DebugPrintEv
 1463              	.L253:
 1464 022a 0F4A     		ldr	r2, .L299+4
 1465 022c 0023     		movs	r3, #0
 1466 022e 44F8202C 		str	r2, [r4, #-32]
 1467 0232 44F82C3C 		str	r3, [r4, #-44]
 1468 0236 44F8243C 		str	r3, [r4, #-36]
 1469 023a 04F82D3C 		strb	r3, [r4, #-45]
 1470              	.L273:
 1471 023e 54F8340C 		ldr	r0, [r4, #-52]
 1472 0242 60B1     		cbz	r0, .L264
 1473 0244 0123     		movs	r3, #1
 1474 0246 44F82C3C 		str	r3, [r4, #-44]
 1475 024a 3046     		mov	r0, r6
 1476 024c 5146     		mov	r1, r10
 1477 024e 0022     		movs	r2, #0
 1478 0250 FFF7FEFF 		bl	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb
 1479 0254 0028     		cmp	r0, #0
 1480 0256 B9D1     		bne	.L296
 1481              	.L266:
 1482 0258 04F82F0C 		strb	r0, [r4, #-47]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 27


 1483 025c 5BE7     		b	.L251
 1484              	.L264:
 1485 025e 04F82F0C 		strb	r0, [r4, #-47]
 1486 0262 B1E7     		b	.L263
 1487              	.L300:
 1488              		.align	2
 1489              	.L299:
 1490 0264 A0372049 		.word	1226848160
 1491 0268 3F420F00 		.word	999999
 1492 026c 00000000 		.word	reprap
 1493 0270 40420F00 		.word	1000000
 1494              	.L236:
 1495 0274 806D     		ldr	r0, [r0, #88]	@ float
 1496 0276 DAF85C50 		ldr	r5, [r10, #92]	@ float
 1497 027a 0146     		mov	r1, r0
 1498 027c FFF7FEFF 		bl	__aeabi_fmul
 1499 0280 2946     		mov	r1, r5
 1500 0282 0446     		mov	r4, r0
 1501 0284 2846     		mov	r0, r5
 1502 0286 FFF7FEFF 		bl	__aeabi_fmul
 1503 028a 0146     		mov	r1, r0
 1504 028c 2046     		mov	r0, r4
 1505 028e FFF7FEFF 		bl	__aeabi_fadd
 1506 0292 4FF09341 		mov	r1, #1233125376
 1507 0296 CAF88800 		str	r0, [r10, #136]	@ float
 1508 029a DAF86000 		ldr	r0, [r10, #96]	@ float
 1509 029e FFF7FEFF 		bl	__aeabi_fmul
 1510 02a2 FFF7FEFF 		bl	__aeabi_f2iz
 1511 02a6 0021     		movs	r1, #0
 1512 02a8 0A46     		mov	r2, r1
 1513 02aa CAF88C00 		str	r0, [r10, #140]
 1514 02ae DAF80400 		ldr	r0, [r10, #4]
 1515 02b2 FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 1516 02b6 0022     		movs	r2, #0
 1517 02b8 0790     		str	r0, [sp, #28]	@ float
 1518 02ba 0121     		movs	r1, #1
 1519 02bc DAF80400 		ldr	r0, [r10, #4]
 1520 02c0 FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 1521 02c4 DFF8C0B2 		ldr	fp, .L301
 1522 02c8 0890     		str	r0, [sp, #32]	@ float
 1523 02ca DBF80840 		ldr	r4, [fp, #8]
 1524 02ce 4FF00008 		mov	r8, #0
 1525 02d2 D4F83C04 		ldr	r0, [r4, #1084]	@ float
 1526 02d6 04F2344C 		addw	ip, r4, #1076
 1527 02da 0146     		mov	r1, r0
 1528 02dc 0594     		str	r4, [sp, #20]
 1529 02de CDF818C0 		str	ip, [sp, #24]
 1530 02e2 FFF7FEFF 		bl	__aeabi_fmul
 1531 02e6 DAF88810 		ldr	r1, [r10, #136]	@ float
 1532 02ea 0990     		str	r0, [sp, #36]	@ float
 1533 02ec FFF7FEFF 		bl	__aeabi_fmul
 1534 02f0 069C     		ldr	r4, [sp, #24]
 1535 02f2 0B90     		str	r0, [sp, #44]	@ float
 1536 02f4 0194     		str	r4, [sp, #4]
 1537 02f6 5646     		mov	r6, r10
 1538              	.L250:
 1539 02f8 059A     		ldr	r2, [sp, #20]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 28


 1540 02fa DDF804C0 		ldr	ip, [sp, #4]
 1541 02fe 0798     		ldr	r0, [sp, #28]	@ float
 1542 0300 C2EB0C04 		rsb	r4, r2, ip
 1543 0304 DDF818C0 		ldr	ip, [sp, #24]
 1544 0308 6444     		add	r4, r4, ip
 1545 030a A4F57E73 		sub	r3, r4, #1016
 1546 030e 1968     		ldr	r1, [r3]	@ float
 1547 0310 FFF7FEFF 		bl	__aeabi_fsub
 1548 0314 A4F57B74 		sub	r4, r4, #1004
 1549 0318 0546     		mov	r5, r0
 1550 031a 2168     		ldr	r1, [r4]	@ float
 1551 031c 0898     		ldr	r0, [sp, #32]	@ float
 1552 031e FFF7FEFF 		bl	__aeabi_fsub
 1553 0322 DBF80030 		ldr	r3, [fp]
 1554 0326 08F14E02 		add	r2, r8, #78
 1555 032a 0446     		mov	r4, r0
 1556 032c DAF85810 		ldr	r1, [r10, #88]	@ float
 1557 0330 2846     		mov	r0, r5
 1558 0332 53F82290 		ldr	r9, [r3, r2, lsl #2]	@ float
 1559 0336 FFF7FEFF 		bl	__aeabi_fmul
 1560 033a DAF85C10 		ldr	r1, [r10, #92]	@ float
 1561 033e 0746     		mov	r7, r0
 1562 0340 2046     		mov	r0, r4
 1563 0342 FFF7FEFF 		bl	__aeabi_fmul
 1564 0346 0146     		mov	r1, r0
 1565 0348 3846     		mov	r0, r7
 1566 034a FFF7FEFF 		bl	__aeabi_fadd
 1567 034e 2946     		mov	r1, r5
 1568 0350 0490     		str	r0, [sp, #16]	@ float
 1569 0352 2846     		mov	r0, r5
 1570 0354 FFF7FEFF 		bl	__aeabi_fmul
 1571 0358 0146     		mov	r1, r0
 1572 035a 0998     		ldr	r0, [sp, #36]	@ float
 1573 035c FFF7FEFF 		bl	__aeabi_fsub
 1574 0360 2146     		mov	r1, r4
 1575 0362 0746     		mov	r7, r0
 1576 0364 2046     		mov	r0, r4
 1577 0366 FFF7FEFF 		bl	__aeabi_fmul
 1578 036a 0146     		mov	r1, r0
 1579 036c 3846     		mov	r0, r7
 1580 036e FFF7FEFF 		bl	__aeabi_fsub
 1581 0372 0746     		mov	r7, r0
 1582 0374 FFF7FEFF 		bl	sqrtf
 1583 0378 4946     		mov	r1, r9
 1584 037a 0A90     		str	r0, [sp, #40]	@ float
 1585 037c FFF7FEFF 		bl	__aeabi_fmul
 1586 0380 4FF08841 		mov	r1, #1140850688
 1587 0384 FFF7FEFF 		bl	__aeabi_fmul
 1588 0388 FFF7FEFF 		bl	__aeabi_f2iz
 1589 038c 4946     		mov	r1, r9
 1590 038e C6F8F000 		str	r0, [r6, #240]
 1591 0392 0498     		ldr	r0, [sp, #16]	@ float
 1592 0394 FFF7FEFF 		bl	__aeabi_fmul
 1593 0398 4FF08841 		mov	r1, #1140850688
 1594 039c FFF7FEFF 		bl	__aeabi_fmul
 1595 03a0 FFF7FEFF 		bl	__aeabi_f2iz
 1596 03a4 4042     		negs	r0, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 29


 1597 03a6 C6F8F400 		str	r0, [r6, #244]
 1598 03aa 4FF08841 		mov	r1, #1140850688
 1599 03ae 4846     		mov	r0, r9
 1600 03b0 FFF7FEFF 		bl	__aeabi_fmul
 1601 03b4 0146     		mov	r1, r0
 1602 03b6 FFF7FEFF 		bl	__aeabi_fmul
 1603 03ba 0146     		mov	r1, r0
 1604 03bc 3846     		mov	r0, r7
 1605 03be FFF7FEFF 		bl	__aeabi_fmul
 1606 03c2 FFF7FEFF 		bl	__aeabi_f2lz
 1607 03c6 C6E93A01 		strd	r0, [r6, #232]
 1608 03ca 0021     		movs	r1, #0
 1609 03cc DAF88800 		ldr	r0, [r10, #136]	@ float
 1610 03d0 FFF7FEFF 		bl	__aeabi_fcmple
 1611 03d4 0028     		cmp	r0, #0
 1612 03d6 5FD1     		bne	.L297
 1613 03d8 DAF86000 		ldr	r0, [r10, #96]	@ float
 1614 03dc FFF7FEFF 		bl	__aeabi_f2d
 1615 03e0 CDE90201 		strd	r0, [sp, #8]
 1616 03e4 DAF85C10 		ldr	r1, [r10, #92]	@ float
 1617 03e8 2846     		mov	r0, r5
 1618 03ea FFF7FEFF 		bl	__aeabi_fmul
 1619 03ee DAF85810 		ldr	r1, [r10, #88]	@ float
 1620 03f2 0546     		mov	r5, r0
 1621 03f4 2046     		mov	r0, r4
 1622 03f6 FFF7FEFF 		bl	__aeabi_fmul
 1623 03fa 0146     		mov	r1, r0
 1624 03fc 2846     		mov	r0, r5
 1625 03fe FFF7FEFF 		bl	__aeabi_fsub
 1626 0402 0146     		mov	r1, r0
 1627 0404 FFF7FEFF 		bl	__aeabi_fmul
 1628 0408 0146     		mov	r1, r0
 1629 040a 0B98     		ldr	r0, [sp, #44]	@ float
 1630 040c FFF7FEFF 		bl	__aeabi_fsub
 1631 0410 FFF7FEFF 		bl	__aeabi_f2d
 1632 0414 FFF7FEFF 		bl	sqrt
 1633 0418 0246     		mov	r2, r0
 1634 041a 0B46     		mov	r3, r1
 1635 041c DDE90201 		ldrd	r0, [sp, #8]
 1636 0420 FFF7FEFF 		bl	__aeabi_dmul
 1637 0424 0446     		mov	r4, r0
 1638 0426 0498     		ldr	r0, [sp, #16]	@ float
 1639 0428 0D46     		mov	r5, r1
 1640 042a FFF7FEFF 		bl	__aeabi_f2d
 1641 042e 0246     		mov	r2, r0
 1642 0430 2046     		mov	r0, r4
 1643 0432 DAF88840 		ldr	r4, [r10, #136]	@ float
 1644 0436 0B46     		mov	r3, r1
 1645 0438 2946     		mov	r1, r5
 1646 043a 0294     		str	r4, [sp, #8]	@ float
 1647 043c FFF7FEFF 		bl	__aeabi_dsub
 1648 0440 0446     		mov	r4, r0
 1649 0442 0298     		ldr	r0, [sp, #8]	@ float
 1650 0444 0D46     		mov	r5, r1
 1651 0446 FFF7FEFF 		bl	__aeabi_f2d
 1652 044a 0246     		mov	r2, r0
 1653 044c 0B46     		mov	r3, r1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 30


 1654 044e 2046     		mov	r0, r4
 1655 0450 2946     		mov	r1, r5
 1656 0452 FFF7FEFF 		bl	__aeabi_ddiv
 1657 0456 FFF7FEFF 		bl	__aeabi_d2f
 1658 045a 0021     		movs	r1, #0
 1659 045c 0446     		mov	r4, r0
 1660 045e FFF7FEFF 		bl	__aeabi_fcmpgt
 1661 0462 28B1     		cbz	r0, .L242
 1662 0464 2046     		mov	r0, r4
 1663 0466 DAF87C10 		ldr	r1, [r10, #124]	@ float
 1664 046a FFF7FEFF 		bl	__aeabi_fcmplt
 1665 046e 20BB     		cbnz	r0, .L298
 1666              	.L242:
 1667 0470 D6F8CC30 		ldr	r3, [r6, #204]
 1668              	.L291:
 1669 0474 0133     		adds	r3, r3, #1
 1670 0476 C6F8D830 		str	r3, [r6, #216]
 1671              	.L241:
 1672 047a DDF804C0 		ldr	ip, [sp, #4]
 1673 047e 08F10108 		add	r8, r8, #1
 1674 0482 0CF1040C 		add	ip, ip, #4
 1675 0486 B8F1030F 		cmp	r8, #3
 1676 048a CDF804C0 		str	ip, [sp, #4]
 1677 048e 06F15006 		add	r6, r6, #80
 1678 0492 7FF431AF 		bne	.L250
 1679 0496 BDE5     		b	.L249
 1680              	.L297:
 1681 0498 DAF86000 		ldr	r0, [r10, #96]	@ float
 1682 049c 0021     		movs	r1, #0
 1683 049e FFF7FEFF 		bl	__aeabi_fcmpge
 1684 04a2 4FF00103 		mov	r3, #1
 1685 04a6 00B9     		cbnz	r0, .L240
 1686 04a8 0346     		mov	r3, r0
 1687              	.L240:
 1688 04aa D6F8CC20 		ldr	r2, [r6, #204]
 1689 04ae 86F8D230 		strb	r3, [r6, #210]
 1690 04b2 0132     		adds	r2, r2, #1
 1691 04b4 C6F8D820 		str	r2, [r6, #216]
 1692 04b8 DFE7     		b	.L241
 1693              	.L298:
 1694 04ba DAF86010 		ldr	r1, [r10, #96]	@ float
 1695 04be 2046     		mov	r0, r4
 1696 04c0 FFF7FEFF 		bl	__aeabi_fmul
 1697 04c4 FFF7FEFF 		bl	__aeabi_f2d
 1698 04c8 CDE90C01 		strd	r0, [sp, #48]
 1699 04cc 2146     		mov	r1, r4
 1700 04ce 2046     		mov	r0, r4
 1701 04d0 FFF7FEFF 		bl	__aeabi_fadd
 1702 04d4 0499     		ldr	r1, [sp, #16]	@ float
 1703 04d6 FFF7FEFF 		bl	__aeabi_fmul
 1704 04da 0146     		mov	r1, r0
 1705 04dc 3846     		mov	r0, r7
 1706 04de FFF7FEFF 		bl	__aeabi_fsub
 1707 04e2 2146     		mov	r1, r4
 1708 04e4 0546     		mov	r5, r0
 1709 04e6 2046     		mov	r0, r4
 1710 04e8 FFF7FEFF 		bl	__aeabi_fmul
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 31


 1711 04ec 0146     		mov	r1, r0
 1712 04ee 0298     		ldr	r0, [sp, #8]	@ float
 1713 04f0 FFF7FEFF 		bl	__aeabi_fmul
 1714 04f4 0146     		mov	r1, r0
 1715 04f6 2846     		mov	r0, r5
 1716 04f8 FFF7FEFF 		bl	__aeabi_fsub
 1717 04fc FFF7FEFF 		bl	__aeabi_f2d
 1718 0500 FFF7FEFF 		bl	sqrt
 1719 0504 0246     		mov	r2, r0
 1720 0506 0B46     		mov	r3, r1
 1721 0508 DDE90C01 		ldrd	r0, [sp, #48]
 1722 050c FFF7FEFF 		bl	__aeabi_dadd
 1723 0510 FFF7FEFF 		bl	__aeabi_d2f
 1724 0514 0A99     		ldr	r1, [sp, #40]	@ float
 1725 0516 FFF7FEFF 		bl	__aeabi_fsub
 1726 051a 4946     		mov	r1, r9
 1727 051c FFF7FEFF 		bl	__aeabi_fmul
 1728 0520 FFF7FEFF 		bl	__aeabi_f2iz
 1729 0524 0028     		cmp	r0, #0
 1730 0526 A3DD     		ble	.L242
 1731 0528 96F8D230 		ldrb	r3, [r6, #210]	@ zero_extendqisi2
 1732 052c F3B1     		cbz	r3, .L247
 1733 052e D6F8CC30 		ldr	r3, [r6, #204]
 1734 0532 9842     		cmp	r0, r3
 1735 0534 9ED9     		bls	.L291
 1736 0536 C3EB4003 		rsb	r3, r3, r0, lsl #1
 1737 053a 0130     		adds	r0, r0, #1
 1738 053c C6F8CC30 		str	r3, [r6, #204]
 1739 0540 C6F8D800 		str	r0, [r6, #216]
 1740 0544 99E7     		b	.L241
 1741              	.L295:
 1742 0546 9342     		cmp	r3, r2
 1743 0548 FFF46FAE 		bcc	.L253
 1744 054c 54F8180C 		ldr	r0, [r4, #-24]
 1745 0550 54F8143C 		ldr	r3, [r4, #-20]
 1746 0554 A0FB0201 		umull	r0, r1, r0, r2
 1747 0558 03FB0211 		mla	r1, r3, r2, r1
 1748 055c D4E90023 		ldrd	r2, [r4]
 1749 0560 9042     		cmp	r0, r2
 1750 0562 71EB030C 		sbcs	ip, r1, r3
 1751 0566 FFF65DAE 		blt	.L254
 1752 056a 5EE6     		b	.L253
 1753              	.L247:
 1754 056c D6F8CC30 		ldr	r3, [r6, #204]
 1755 0570 411C     		adds	r1, r0, #1
 1756 0572 03EB4003 		add	r3, r3, r0, lsl #1
 1757 0576 0122     		movs	r2, #1
 1758 0578 C6F8CC30 		str	r3, [r6, #204]
 1759 057c C6F8D810 		str	r1, [r6, #216]
 1760 0580 86F8D220 		strb	r2, [r6, #210]
 1761 0584 79E7     		b	.L241
 1762              	.L302:
 1763 0586 00BF     		.align	2
 1764              	.L301:
 1765 0588 00000000 		.word	reprap
 1766              		.size	_ZN3DDA7PrepareEv, .-_ZN3DDA7PrepareEv
 1767              		.section	.text._ZN3DDA9MagnitudeEPKfj,"ax",%progbits
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 32


 1768              		.align	2
 1769              		.global	_ZN3DDA9MagnitudeEPKfj
 1770              		.thumb
 1771              		.thumb_func
 1772              		.type	_ZN3DDA9MagnitudeEPKfj, %function
 1773              	_ZN3DDA9MagnitudeEPKfj:
 1774              		@ args = 0, pretend = 0, frame = 0
 1775              		@ frame_needed = 0, uses_anonymous_args = 0
 1776 0000 70B5     		push	{r4, r5, r6, lr}
 1777 0002 A1B1     		cbz	r1, .L306
 1778 0004 0446     		mov	r4, r0
 1779 0006 0025     		movs	r5, #0
 1780 0008 00EB8106 		add	r6, r0, r1, lsl #2
 1781              	.L305:
 1782 000c 54F8040B 		ldr	r0, [r4], #4	@ float
 1783 0010 0146     		mov	r1, r0
 1784 0012 FFF7FEFF 		bl	__aeabi_fmul
 1785 0016 0146     		mov	r1, r0
 1786 0018 2846     		mov	r0, r5
 1787 001a FFF7FEFF 		bl	__aeabi_fadd
 1788 001e B442     		cmp	r4, r6
 1789 0020 0546     		mov	r5, r0
 1790 0022 F3D1     		bne	.L305
 1791              	.L304:
 1792 0024 2846     		mov	r0, r5
 1793 0026 BDE87040 		pop	{r4, r5, r6, lr}
 1794 002a FFF7FEBF 		b	sqrtf
 1795              	.L306:
 1796 002e 0025     		movs	r5, #0
 1797 0030 F8E7     		b	.L304
 1798              		.size	_ZN3DDA9MagnitudeEPKfj, .-_ZN3DDA9MagnitudeEPKfj
 1799 0032 00BF     		.section	.text._ZN3DDA21VectorBoxIntersectionEPKfS1_j,"ax",%progbits
 1800              		.align	2
 1801              		.global	_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 1802              		.thumb
 1803              		.thumb_func
 1804              		.type	_ZN3DDA21VectorBoxIntersectionEPKfS1_j, %function
 1805              	_ZN3DDA21VectorBoxIntersectionEPKfS1_j:
 1806              		@ args = 0, pretend = 0, frame = 0
 1807              		@ frame_needed = 0, uses_anonymous_args = 0
 1808 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1809 0004 0F46     		mov	r7, r1
 1810 0006 8146     		mov	r9, r0
 1811 0008 1146     		mov	r1, r2
 1812 000a 3846     		mov	r0, r7
 1813 000c 1446     		mov	r4, r2
 1814 000e FFF7FEFF 		bl	_ZN3DDA9MagnitudeEPKfj
 1815 0012 0146     		mov	r1, r0
 1816 0014 FFF7FEFF 		bl	__aeabi_fadd
 1817 0018 8046     		mov	r8, r0
 1818 001a F4B1     		cbz	r4, .L312
 1819 001c 4FEA840A 		lsl	r10, r4, #2
 1820 0020 8346     		mov	fp, r0
 1821 0022 0024     		movs	r4, #0
 1822              	.L311:
 1823 0024 59F80450 		ldr	r5, [r9, r4]	@ float
 1824 0028 3E59     		ldr	r6, [r7, r4]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 33


 1825 002a 4146     		mov	r1, r8
 1826 002c 2846     		mov	r0, r5
 1827 002e FFF7FEFF 		bl	__aeabi_fmul
 1828 0032 3146     		mov	r1, r6
 1829 0034 FFF7FEFF 		bl	__aeabi_fcmpgt
 1830 0038 0434     		adds	r4, r4, #4
 1831 003a 2946     		mov	r1, r5
 1832 003c 40B1     		cbz	r0, .L309
 1833 003e 3046     		mov	r0, r6
 1834 0040 FFF7FEFF 		bl	__aeabi_fdiv
 1835 0044 5946     		mov	r1, fp
 1836 0046 0546     		mov	r5, r0
 1837 0048 FFF7FEFF 		bl	__aeabi_fcmplt
 1838 004c 00B1     		cbz	r0, .L309
 1839 004e AB46     		mov	fp, r5
 1840              	.L309:
 1841 0050 5445     		cmp	r4, r10
 1842 0052 E7D1     		bne	.L311
 1843              	.L308:
 1844 0054 5846     		mov	r0, fp
 1845 0056 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1846              	.L312:
 1847 005a 8346     		mov	fp, r0
 1848 005c FAE7     		b	.L308
 1849              		.size	_ZN3DDA21VectorBoxIntersectionEPKfS1_j, .-_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 1850 005e 00BF     		.section	.text._ZN3DDA9NormaliseEPfjj,"ax",%progbits
 1851              		.align	2
 1852              		.global	_ZN3DDA9NormaliseEPfjj
 1853              		.thumb
 1854              		.thumb_func
 1855              		.type	_ZN3DDA9NormaliseEPfjj, %function
 1856              	_ZN3DDA9NormaliseEPfjj:
 1857              		@ args = 0, pretend = 0, frame = 0
 1858              		@ frame_needed = 0, uses_anonymous_args = 0
 1859 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1860 0002 0E46     		mov	r6, r1
 1861 0004 1146     		mov	r1, r2
 1862 0006 0446     		mov	r4, r0
 1863 0008 FFF7FEFF 		bl	_ZN3DDA9MagnitudeEPKfj
 1864 000c 0021     		movs	r1, #0
 1865 000e 0746     		mov	r7, r0
 1866 0010 FFF7FEFF 		bl	__aeabi_fcmple
 1867 0014 90B9     		cbnz	r0, .L318
 1868 0016 4FF07E50 		mov	r0, #1065353216
 1869 001a 3946     		mov	r1, r7
 1870 001c FFF7FEFF 		bl	__aeabi_fdiv
 1871 0020 0546     		mov	r5, r0
 1872 0022 4EB1     		cbz	r6, .L320
 1873 0024 04EB8606 		add	r6, r4, r6, lsl #2
 1874              	.L317:
 1875 0028 2168     		ldr	r1, [r4]	@ float
 1876 002a 2846     		mov	r0, r5
 1877 002c FFF7FEFF 		bl	__aeabi_fmul
 1878 0030 44F8040B 		str	r0, [r4], #4	@ float
 1879 0034 B442     		cmp	r4, r6
 1880 0036 F7D1     		bne	.L317
 1881              	.L320:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 34


 1882 0038 3846     		mov	r0, r7
 1883 003a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1884              	.L318:
 1885 003c 0020     		movs	r0, #0
 1886 003e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1887              		.size	_ZN3DDA9NormaliseEPfjj, .-_ZN3DDA9NormaliseEPfjj
 1888              		.section	.text._ZN3DDA19AdvanceBabySteppingEf,"ax",%progbits
 1889              		.align	2
 1890              		.global	_ZN3DDA19AdvanceBabySteppingEf
 1891              		.thumb
 1892              		.thumb_func
 1893              		.type	_ZN3DDA19AdvanceBabySteppingEf, %function
 1894              	_ZN3DDA19AdvanceBabySteppingEf:
 1895              		@ args = 0, pretend = 0, frame = 16
 1896              		@ frame_needed = 0, uses_anonymous_args = 0
 1897 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1898 0004 85B0     		sub	sp, sp, #20
 1899 0006 0290     		str	r0, [sp, #8]
 1900 0008 8946     		mov	r9, r1
 1901 000a 0646     		mov	r6, r0
 1902 000c 00E0     		b	.L323
 1903              	.L361:
 1904 000e 1E46     		mov	r6, r3
 1905              	.L323:
 1906 0010 7368     		ldr	r3, [r6, #4]
 1907 0012 1A7A     		ldrb	r2, [r3, #8]	@ zero_extendqisi2
 1908 0014 012A     		cmp	r2, #1
 1909 0016 FAD0     		beq	.L361
 1910 0018 029B     		ldr	r3, [sp, #8]
 1911 001a 9E42     		cmp	r6, r3
 1912 001c 00F0B880 		beq	.L321
 1913 0020 DFF810A2 		ldr	r10, .L364+8
 1914 0024 0027     		movs	r7, #0
 1915              	.L348:
 1916 0026 4846     		mov	r0, r9
 1917 0028 0021     		movs	r1, #0
 1918 002a FFF7FEFF 		bl	__aeabi_fcmpeq
 1919 002e 0028     		cmp	r0, #0
 1920 0030 40F0DB80 		bne	.L359
 1921 0034 DAF80030 		ldr	r3, [r10]
 1922 0038 D6F87C80 		ldr	r8, [r6, #124]	@ float
 1923 003c D3F86401 		ldr	r0, [r3, #356]	@ float
 1924 0040 FFF7FEFF 		bl	__aeabi_f2d
 1925 0044 0022     		movs	r2, #0
 1926 0046 794B     		ldr	r3, .L364
 1927 0048 FFF7FEFF 		bl	__aeabi_dmul
 1928 004c 0446     		mov	r4, r0
 1929 004e D6F89800 		ldr	r0, [r6, #152]	@ float
 1930 0052 0D46     		mov	r5, r1
 1931 0054 FFF7FEFF 		bl	__aeabi_f2d
 1932 0058 0246     		mov	r2, r0
 1933 005a 0B46     		mov	r3, r1
 1934 005c 2046     		mov	r0, r4
 1935 005e 2946     		mov	r1, r5
 1936 0060 FFF7FEFF 		bl	__aeabi_ddiv
 1937 0064 FFF7FEFF 		bl	__aeabi_d2f
 1938 0068 7149     		ldr	r1, .L364+4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 35


 1939 006a 0446     		mov	r4, r0
 1940 006c FFF7FEFF 		bl	__aeabi_fcmpgt
 1941 0070 0028     		cmp	r0, #0
 1942 0072 00F0C980 		beq	.L360
 1943 0076 6E49     		ldr	r1, .L364+4
 1944              	.L327:
 1945 0078 4046     		mov	r0, r8
 1946 007a FFF7FEFF 		bl	__aeabi_fmul
 1947 007e 4946     		mov	r1, r9
 1948 0080 0446     		mov	r4, r0
 1949 0082 4846     		mov	r0, r9
 1950 0084 04F10045 		add	r5, r4, #-2147483648
 1951 0088 FFF7FEFF 		bl	__aeabi_fcmpun
 1952 008c 0028     		cmp	r0, #0
 1953 008e 40F0C680 		bne	.L351
 1954 0092 2046     		mov	r0, r4
 1955 0094 4946     		mov	r1, r9
 1956 0096 FFF7FEFF 		bl	__aeabi_fcmpgt
 1957 009a 0028     		cmp	r0, #0
 1958 009c 40F0B680 		bne	.L352
 1959 00a0 2046     		mov	r0, r4
 1960 00a2 2146     		mov	r1, r4
 1961 00a4 FFF7FEFF 		bl	__aeabi_fcmpun
 1962 00a8 20B9     		cbnz	r0, .L353
 1963              	.L330:
 1964 00aa 2046     		mov	r0, r4
 1965 00ac 2946     		mov	r1, r5
 1966 00ae FFF7FEFF 		bl	__aeabi_fcmpgt
 1967 00b2 00B1     		cbz	r0, .L329
 1968              	.L353:
 1969 00b4 2546     		mov	r5, r4
 1970              	.L329:
 1971 00b6 4146     		mov	r1, r8
 1972 00b8 2846     		mov	r0, r5
 1973 00ba FFF7FEFF 		bl	__aeabi_fdiv
 1974 00be 0146     		mov	r1, r0
 1975 00c0 306E     		ldr	r0, [r6, #96]	@ float
 1976 00c2 FFF7FEFF 		bl	__aeabi_fadd
 1977 00c6 DAF81030 		ldr	r3, [r10, #16]
 1978 00ca 3066     		str	r0, [r6, #96]	@ float
 1979 00cc D3F88421 		ldr	r2, [r3, #388]
 1980 00d0 0921     		movs	r1, #9
 1981 00d2 06F15800 		add	r0, r6, #88
 1982 00d6 FFF7FEFF 		bl	_ZN3DDA9NormaliseEPfjj
 1983 00da 0146     		mov	r1, r0
 1984 00dc F06F     		ldr	r0, [r6, #124]	@ float
 1985 00de FFF7FEFF 		bl	__aeabi_fmul
 1986 00e2 F067     		str	r0, [r6, #124]	@ float
 1987 00e4 3046     		mov	r0, r6
 1988 00e6 FFF7FEFF 		bl	_ZN3DDA15RecalculateMoveEv
 1989 00ea 3846     		mov	r0, r7
 1990 00ec 2946     		mov	r1, r5
 1991 00ee FFF7FEFF 		bl	__aeabi_fadd
 1992 00f2 2946     		mov	r1, r5
 1993 00f4 0746     		mov	r7, r0
 1994 00f6 4846     		mov	r0, r9
 1995 00f8 FFF7FEFF 		bl	__aeabi_fsub
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 36


 1996 00fc 8146     		mov	r9, r0
 1997              	.L325:
 1998 00fe F06B     		ldr	r0, [r6, #60]	@ float
 1999 0100 3946     		mov	r1, r7
 2000 0102 FFF7FEFF 		bl	__aeabi_fadd
 2001 0106 737A     		ldrb	r3, [r6, #9]	@ zero_extendqisi2
 2002 0108 F063     		str	r0, [r6, #60]	@ float
 2003 010a 9B07     		lsls	r3, r3, #30
 2004 010c 43D5     		bpl	.L332
 2005 010e DAF80030 		ldr	r3, [r10]
 2006 0112 0024     		movs	r4, #0
 2007 0114 0193     		str	r3, [sp, #4]
 2008 0116 B346     		mov	fp, r6
 2009 0118 2346     		mov	r3, r4
 2010 011a 0396     		str	r6, [sp, #12]
 2011 011c 5C46     		mov	r4, fp
 2012 011e 9846     		mov	r8, r3
 2013              	.L340:
 2014 0120 019B     		ldr	r3, [sp, #4]
 2015 0122 3846     		mov	r0, r7
 2016 0124 4344     		add	r3, r3, r8
 2017 0126 D3F83861 		ldr	r6, [r3, #312]	@ float
 2018 012a 3146     		mov	r1, r6
 2019 012c FFF7FEFF 		bl	__aeabi_fmul
 2020 0130 FFF7FEFF 		bl	__aeabi_f2iz
 2021 0134 DBF81030 		ldr	r3, [fp, #16]
 2022 0138 0021     		movs	r1, #0
 2023 013a 1844     		add	r0, r0, r3
 2024 013c CBF81000 		str	r0, [fp, #16]
 2025 0140 2846     		mov	r0, r5
 2026 0142 FFF7FEFF 		bl	__aeabi_fcmpeq
 2027 0146 3146     		mov	r1, r6
 2028 0148 98B9     		cbnz	r0, .L333
 2029 014a 2846     		mov	r0, r5
 2030 014c FFF7FEFF 		bl	__aeabi_fmul
 2031 0150 FFF7FEFF 		bl	__aeabi_f2iz
 2032 0154 94F8D230 		ldrb	r3, [r4, #210]	@ zero_extendqisi2
 2033 0158 002B     		cmp	r3, #0
 2034 015a 48D0     		beq	.L335
 2035 015c D4F8CC30 		ldr	r3, [r4, #204]
 2036 0160 1844     		add	r0, r0, r3
 2037 0162 0028     		cmp	r0, #0
 2038 0164 48DB     		blt	.L337
 2039              	.L363:
 2040 0166 4FF00103 		mov	r3, #1
 2041 016a 84F8D230 		strb	r3, [r4, #210]
 2042 016e C4F8CC00 		str	r0, [r4, #204]
 2043              	.L333:
 2044 0172 08F10408 		add	r8, r8, #4
 2045 0176 B8F10C0F 		cmp	r8, #12
 2046 017a 0BF1040B 		add	fp, fp, #4
 2047 017e 04F15004 		add	r4, r4, #80
 2048 0182 CDD1     		bne	.L340
 2049 0184 039E     		ldr	r6, [sp, #12]
 2050              	.L339:
 2051 0186 3668     		ldr	r6, [r6]
 2052 0188 029B     		ldr	r3, [sp, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 37


 2053 018a B342     		cmp	r3, r6
 2054 018c 7FF44BAF 		bne	.L348
 2055              	.L321:
 2056 0190 05B0     		add	sp, sp, #20
 2057              		@ sp needed
 2058 0192 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2059              	.L332:
 2060 0196 DAF80030 		ldr	r3, [r10]
 2061 019a 3846     		mov	r0, r7
 2062 019c D3F84041 		ldr	r4, [r3, #320]	@ float
 2063 01a0 2146     		mov	r1, r4
 2064 01a2 FFF7FEFF 		bl	__aeabi_fmul
 2065 01a6 FFF7FEFF 		bl	__aeabi_f2iz
 2066 01aa B369     		ldr	r3, [r6, #24]
 2067 01ac 0021     		movs	r1, #0
 2068 01ae 1844     		add	r0, r0, r3
 2069 01b0 B061     		str	r0, [r6, #24]
 2070 01b2 2846     		mov	r0, r5
 2071 01b4 FFF7FEFF 		bl	__aeabi_fcmpeq
 2072 01b8 0028     		cmp	r0, #0
 2073 01ba E4D1     		bne	.L339
 2074 01bc 2146     		mov	r1, r4
 2075 01be 2846     		mov	r0, r5
 2076 01c0 FFF7FEFF 		bl	__aeabi_fmul
 2077 01c4 FFF7FEFF 		bl	__aeabi_f2iz
 2078 01c8 96F87131 		ldrb	r3, [r6, #369]	@ zero_extendqisi2
 2079 01cc 012B     		cmp	r3, #1
 2080 01ce 1FD0     		beq	.L362
 2081 01d0 0123     		movs	r3, #1
 2082 01d2 86F87131 		strb	r3, [r6, #369]
 2083              	.L345:
 2084 01d6 0028     		cmp	r0, #0
 2085 01d8 AEBF     		itee	ge
 2086 01da 0123     		movge	r3, #1
 2087 01dc 4042     		rsblt	r0, r0, #0
 2088 01de 0023     		movlt	r3, #0
 2089 01e0 C6F86C01 		str	r0, [r6, #364]
 2090 01e4 86F87231 		strb	r3, [r6, #370]
 2091 01e8 CDE7     		b	.L339
 2092              	.L359:
 2093 01ea 0025     		movs	r5, #0
 2094 01ec 87E7     		b	.L325
 2095              	.L335:
 2096 01ee D4F8CC30 		ldr	r3, [r4, #204]
 2097 01f2 C01A     		subs	r0, r0, r3
 2098 01f4 0028     		cmp	r0, #0
 2099 01f6 B6DA     		bge	.L363
 2100              	.L337:
 2101 01f8 4042     		negs	r0, r0
 2102 01fa 4FF00003 		mov	r3, #0
 2103 01fe C4F8CC00 		str	r0, [r4, #204]
 2104 0202 84F8D230 		strb	r3, [r4, #210]
 2105 0206 B4E7     		b	.L333
 2106              	.L360:
 2107 0208 2146     		mov	r1, r4
 2108 020a 35E7     		b	.L327
 2109              	.L352:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 38


 2110 020c 4C46     		mov	r4, r9
 2111 020e 4CE7     		b	.L330
 2112              	.L362:
 2113 0210 96F87231 		ldrb	r3, [r6, #370]	@ zero_extendqisi2
 2114 0214 2BB1     		cbz	r3, .L344
 2115 0216 D6F86C31 		ldr	r3, [r6, #364]
 2116 021a 1844     		add	r0, r0, r3
 2117 021c DBE7     		b	.L345
 2118              	.L351:
 2119 021e 4D46     		mov	r5, r9
 2120 0220 49E7     		b	.L329
 2121              	.L344:
 2122 0222 D6F86C31 		ldr	r3, [r6, #364]
 2123 0226 C01A     		subs	r0, r0, r3
 2124 0228 D5E7     		b	.L345
 2125              	.L365:
 2126 022a 00BF     		.align	2
 2127              	.L364:
 2128 022c 0000E03F 		.word	1071644672
 2129 0230 CDCCCC3D 		.word	1036831949
 2130 0234 00000000 		.word	reprap
 2131              		.size	_ZN3DDA19AdvanceBabySteppingEf, .-_ZN3DDA19AdvanceBabySteppingEf
 2132              		.global	__aeabi_i2f
 2133              		.section	.text._ZN3DDA4InitERKN6GCodes7RawMoveEb,"ax",%progbits
 2134              		.align	2
 2135              		.global	_ZN3DDA4InitERKN6GCodes7RawMoveEb
 2136              		.thumb
 2137              		.thumb_func
 2138              		.type	_ZN3DDA4InitERKN6GCodes7RawMoveEb, %function
 2139              	_ZN3DDA4InitERKN6GCodes7RawMoveEb:
 2140              		@ args = 0, pretend = 0, frame = 120
 2141              		@ frame_needed = 0, uses_anonymous_args = 0
 2142 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2143 0004 8C6C     		ldr	r4, [r1, #72]	@ float
 2144 0006 9FB0     		sub	sp, sp, #124
 2145 0008 8846     		mov	r8, r1
 2146 000a 0746     		mov	r7, r0
 2147 000c 0021     		movs	r1, #0
 2148 000e 2046     		mov	r0, r4
 2149 0010 0392     		str	r2, [sp, #12]
 2150 0012 FFF7FEFF 		bl	__aeabi_fcmpeq
 2151 0016 30B9     		cbnz	r0, .L367
 2152 0018 D8F84C30 		ldr	r3, [r8, #76]
 2153 001c 23F07F43 		bic	r3, r3, #-16777216
 2154 0020 002B     		cmp	r3, #0
 2155 0022 00F0F681 		beq	.L475
 2156              	.L367:
 2157 0026 7C68     		ldr	r4, [r7, #4]
 2158 0028 04F11003 		add	r3, r4, #16
 2159 002c 0693     		str	r3, [sp, #24]
 2160 002e 784B     		ldr	r3, .L487
 2161 0030 9B68     		ldr	r3, [r3, #8]
 2162 0032 0993     		str	r3, [sp, #36]
 2163 0034 039B     		ldr	r3, [sp, #12]
 2164 0036 002B     		cmp	r3, #0
 2165 0038 40F0CE81 		bne	.L476
 2166 003c 7B7A     		ldrb	r3, [r7, #9]	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 39


 2167 003e 039A     		ldr	r2, [sp, #12]
 2168 0040 62F34103 		bfi	r3, r2, #1, #1
 2169 0044 7B72     		strb	r3, [r7, #9]
 2170              	.L371:
 2171 0046 7B7A     		ldrb	r3, [r7, #9]	@ zero_extendqisi2
 2172 0048 099A     		ldr	r2, [sp, #36]
 2173 004a 6FF30413 		bfc	r3, #4, #1
 2174 004e 7B72     		strb	r3, [r7, #9]
 2175 0050 92F86C34 		ldrb	r3, [r2, #1132]	@ zero_extendqisi2
 2176 0054 002B     		cmp	r3, #0
 2177 0056 00F0A581 		beq	.L426
 2178 005a 039B     		ldr	r3, [sp, #12]
 2179 005c 83F00103 		eor	r3, r3, #1
 2180 0060 0493     		str	r3, [sp, #16]
 2181              	.L372:
 2182 0062 6B4A     		ldr	r2, .L487
 2183 0064 0024     		movs	r4, #0
 2184 0066 1369     		ldr	r3, [r2, #16]
 2185 0068 1268     		ldr	r2, [r2]
 2186 006a D3F88431 		ldr	r3, [r3, #388]
 2187 006e 0B92     		str	r2, [sp, #44]
 2188 0070 0193     		str	r3, [sp, #4]
 2189 0072 02F58672 		add	r2, r2, #268
 2190 0076 5B42     		negs	r3, r3
 2191 0078 3E46     		mov	r6, r7
 2192 007a BA46     		mov	r10, r7
 2193 007c 0597     		str	r7, [sp, #20]
 2194 007e 0292     		str	r2, [sp, #8]
 2195 0080 2546     		mov	r5, r4
 2196 0082 0A94     		str	r4, [sp, #40]
 2197 0084 0894     		str	r4, [sp, #32]
 2198 0086 0794     		str	r4, [sp, #28]
 2199 0088 1F46     		mov	r7, r3
 2200 008a 36E0     		b	.L389
 2201              	.L480:
 2202 008c 2846     		mov	r0, r5
 2203 008e 58F80410 		ldr	r1, [r8, r4]	@ float
 2204 0092 FFF7FEFF 		bl	_ZN4Move22MotorEndPointToMachineEjf
 2205 0096 CAF81000 		str	r0, [r10, #16]
 2206 009a 58F804B0 		ldr	fp, [r8, r4]	@ float
 2207 009e CAF834B0 		str	fp, [r10, #52]	@ float
 2208              	.L422:
 2209 00a2 069B     		ldr	r3, [sp, #24]
 2210 00a4 06F1B80C 		add	ip, r6, #184
 2211 00a8 1A59     		ldr	r2, [r3, r4]
 2212 00aa C2EB0009 		rsb	r9, r2, r0
 2213 00ae 049A     		ldr	r2, [sp, #16]
 2214 00b0 002A     		cmp	r2, #0
 2215 00b2 00F08780 		beq	.L477
 2216 00b6 E346     		mov	fp, ip
 2217              	.L376:
 2218 00b8 4846     		mov	r0, r9
 2219 00ba FFF7FEFF 		bl	__aeabi_i2f
 2220 00be 544B     		ldr	r3, .L487
 2221 00c0 05F14E01 		add	r1, r5, #78
 2222 00c4 1A68     		ldr	r2, [r3]
 2223 00c6 52F82110 		ldr	r1, [r2, r1, lsl #2]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 40


 2224 00ca FFF7FEFF 		bl	__aeabi_fdiv
 2225 00ce 19F10002 		adds	r2, r9, #0
 2226 00d2 18BF     		it	ne
 2227 00d4 0122     		movne	r2, #1
 2228 00d6 CAF85800 		str	r0, [r10, #88]	@ float
 2229 00da 8BF81920 		strb	r2, [fp, #25]
 2230              	.L380:
 2231 00de 012A     		cmp	r2, #1
 2232 00e0 2BD0     		beq	.L478
 2233              	.L381:
 2234 00e2 0135     		adds	r5, r5, #1
 2235 00e4 092D     		cmp	r5, #9
 2236 00e6 04F10404 		add	r4, r4, #4
 2237 00ea 06F15006 		add	r6, r6, #80
 2238 00ee 07F10107 		add	r7, r7, #1
 2239 00f2 0AF1040A 		add	r10, r10, #4
 2240 00f6 00F08D80 		beq	.L479
 2241              	.L389:
 2242 00fa 029B     		ldr	r3, [sp, #8]
 2243 00fc 1A59     		ldr	r2, [r3, r4]	@ float
 2244 00fe 0CAB     		add	r3, sp, #48
 2245 0100 1A51     		str	r2, [r3, r4]	@ float
 2246 0102 019B     		ldr	r3, [sp, #4]
 2247 0104 AB42     		cmp	r3, r5
 2248 0106 09D9     		bls	.L373
 2249 0108 039B     		ldr	r3, [sp, #12]
 2250 010a 002B     		cmp	r3, #0
 2251 010c BED0     		beq	.L480
 2252 010e 58F804B0 		ldr	fp, [r8, r4]	@ float
 2253 0112 DAF81000 		ldr	r0, [r10, #16]
 2254 0116 CAF834B0 		str	fp, [r10, #52]	@ float
 2255 011a C2E7     		b	.L422
 2256              	.L373:
 2257 011c 2846     		mov	r0, r5
 2258 011e 58F80410 		ldr	r1, [r8, r4]	@ float
 2259 0122 FFF7FEFF 		bl	_ZN4Move22MotorEndPointToMachineEjf
 2260 0126 CAF81000 		str	r0, [r10, #16]
 2261 012a 58F80420 		ldr	r2, [r8, r4]	@ float
 2262 012e 8146     		mov	r9, r0
 2263 0130 CAF83420 		str	r2, [r10, #52]	@ float
 2264 0134 06F1B80B 		add	fp, r6, #184
 2265 0138 BEE7     		b	.L376
 2266              	.L478:
 2267 013a 019B     		ldr	r3, [sp, #4]
 2268 013c 6FEA0902 		mvn	r2, r9
 2269 0140 89EAE971 		eor	r1, r9, r9, asr #31
 2270 0144 A1EBE971 		sub	r1, r1, r9, asr #31
 2271 0148 D20F     		lsrs	r2, r2, #31
 2272 014a AB42     		cmp	r3, r5
 2273 014c CBF81410 		str	r1, [fp, #20]
 2274 0150 8BF81A20 		strb	r2, [fp, #26]
 2275 0154 33D8     		bhi	.L473
 2276 0156 089A     		ldr	r2, [sp, #32]
 2277 0158 8AB3     		cbz	r2, .L473
 2278 015a B9F1000F 		cmp	r9, #0
 2279 015e 04DD     		ble	.L384
 2280 0160 059B     		ldr	r3, [sp, #20]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 41


 2281 0162 5A7A     		ldrb	r2, [r3, #9]	@ zero_extendqisi2
 2282 0164 42F01002 		orr	r2, r2, #16
 2283 0168 5A72     		strb	r2, [r3, #9]
 2284              	.L384:
 2285 016a 98F85020 		ldrb	r2, [r8, #80]	@ zero_extendqisi2
 2286 016e 32B3     		cbz	r2, .L473
 2287 0170 274A     		ldr	r2, .L487
 2288 0172 052F     		cmp	r7, #5
 2289 0174 D2F80090 		ldr	r9, [r2]
 2290 0178 21D8     		bhi	.L473
 2291 017a 07F16002 		add	r2, r7, #96
 2292 017e 59F822B0 		ldr	fp, [r9, r2, lsl #2]	@ float
 2293 0182 0021     		movs	r1, #0
 2294 0184 5846     		mov	r0, fp
 2295 0186 FFF7FEFF 		bl	__aeabi_fcmpgt
 2296 018a C0B1     		cbz	r0, .L473
 2297 018c 09EB8509 		add	r9, r9, r5, lsl #2
 2298 0190 5946     		mov	r1, fp
 2299 0192 D9F85C01 		ldr	r0, [r9, #348]	@ float
 2300 0196 0CAB     		add	r3, sp, #48
 2301 0198 53F804B0 		ldr	fp, [r3, r4]	@ float
 2302 019c FFF7FEFF 		bl	__aeabi_fdiv
 2303 01a0 5946     		mov	r1, fp
 2304 01a2 8146     		mov	r9, r0
 2305 01a4 5846     		mov	r0, fp
 2306 01a6 FFF7FEFF 		bl	__aeabi_fcmpun
 2307 01aa 28B9     		cbnz	r0, .L386
 2308 01ac 5846     		mov	r0, fp
 2309 01ae 4946     		mov	r1, r9
 2310 01b0 FFF7FEFF 		bl	__aeabi_fcmplt
 2311 01b4 00B9     		cbnz	r0, .L386
 2312 01b6 CB46     		mov	fp, r9
 2313              	.L386:
 2314 01b8 0CAA     		add	r2, sp, #48
 2315 01ba 42F804B0 		str	fp, [r2, r4]	@ float
 2316              	.L473:
 2317 01be 0123     		movs	r3, #1
 2318 01c0 0793     		str	r3, [sp, #28]
 2319 01c2 8EE7     		b	.L381
 2320              	.L477:
 2321 01c4 059B     		ldr	r3, [sp, #20]
 2322 01c6 2946     		mov	r1, r5
 2323 01c8 5868     		ldr	r0, [r3, #4]
 2324 01ca CDF800C0 		str	ip, [sp]
 2325 01ce FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 2326 01d2 0146     		mov	r1, r0
 2327 01d4 5846     		mov	r0, fp
 2328 01d6 FFF7FEFF 		bl	__aeabi_fsub
 2329 01da 0021     		movs	r1, #0
 2330 01dc CAF85800 		str	r0, [r10, #88]	@ float
 2331 01e0 FFF7FEFF 		bl	__aeabi_fcmpeq
 2332 01e4 DDF800C0 		ldr	ip, [sp]
 2333 01e8 20B9     		cbnz	r0, .L377
 2334 01ea 0123     		movs	r3, #1
 2335 01ec 022D     		cmp	r5, #2
 2336 01ee 0A93     		str	r3, [sp, #40]
 2337 01f0 18BF     		it	ne
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 42


 2338 01f2 0893     		strne	r3, [sp, #32]
 2339              	.L377:
 2340 01f4 059B     		ldr	r3, [sp, #20]
 2341 01f6 5A7A     		ldrb	r2, [r3, #9]	@ zero_extendqisi2
 2342 01f8 9007     		lsls	r0, r2, #30
 2343 01fa 00F1D180 		bmi	.L429
 2344 01fe 19F10002 		adds	r2, r9, #0
 2345 0202 18BF     		it	ne
 2346 0204 0122     		movne	r2, #1
 2347              	.L379:
 2348 0206 86F8D120 		strb	r2, [r6, #209]
 2349 020a E346     		mov	fp, ip
 2350 020c 67E7     		b	.L380
 2351              	.L488:
 2352 020e 00BF     		.align	2
 2353              	.L487:
 2354 0210 00000000 		.word	reprap
 2355              	.L479:
 2356 0214 079B     		ldr	r3, [sp, #28]
 2357 0216 059F     		ldr	r7, [sp, #20]
 2358 0218 002B     		cmp	r3, #0
 2359 021a 00F0D980 		beq	.L432
 2360 021e 98F85110 		ldrb	r1, [r8, #81]	@ zero_extendqisi2
 2361 0222 7A7A     		ldrb	r2, [r7, #9]	@ zero_extendqisi2
 2362 0224 B8F84C30 		ldrh	r3, [r8, #76]
 2363 0228 61F38202 		bfi	r2, r1, #2, #1
 2364 022c 7A72     		strb	r2, [r7, #9]
 2365 022e 98F85010 		ldrb	r1, [r8, #80]	@ zero_extendqisi2
 2366 0232 D2B2     		uxtb	r2, r2
 2367 0234 61F34512 		bfi	r2, r1, #5, #1
 2368 0238 D8F84010 		ldr	r1, [r8, #64]
 2369 023c 6FF38612 		bfc	r2, #6, #1
 2370 0240 7B81     		strh	r3, [r7, #10]	@ movhi
 2371 0242 7A72     		strb	r2, [r7, #9]
 2372 0244 F960     		str	r1, [r7, #12]
 2373 0246 002B     		cmp	r3, #0
 2374 0248 00F0AE80 		beq	.L481
 2375 024c 0022     		movs	r2, #0
 2376              	.L391:
 2377 024e 7B7A     		ldrb	r3, [r7, #9]	@ zero_extendqisi2
 2378 0250 62F30003 		bfi	r3, r2, #0, #1
 2379 0254 7B72     		strb	r3, [r7, #9]
 2380 0256 0A9B     		ldr	r3, [sp, #40]
 2381 0258 002B     		cmp	r3, #0
 2382 025a 00F0B080 		beq	.L392
 2383              	.L484:
 2384 025e 7B7A     		ldrb	r3, [r7, #9]	@ zero_extendqisi2
 2385 0260 9907     		lsls	r1, r3, #30
 2386 0262 15D5     		bpl	.L393
 2387 0264 099B     		ldr	r3, [sp, #36]
 2388 0266 B86D     		ldr	r0, [r7, #88]	@ float
 2389 0268 D3F86414 		ldr	r1, [r3, #1124]	@ float
 2390 026c FFF7FEFF 		bl	__aeabi_fmul
 2391 0270 099B     		ldr	r3, [sp, #36]
 2392 0272 0446     		mov	r4, r0
 2393 0274 D3F86814 		ldr	r1, [r3, #1128]	@ float
 2394 0278 F86D     		ldr	r0, [r7, #92]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 43


 2395 027a FFF7FEFF 		bl	__aeabi_fmul
 2396 027e 0146     		mov	r1, r0
 2397 0280 2046     		mov	r0, r4
 2398 0282 FFF7FEFF 		bl	__aeabi_fadd
 2399 0286 0146     		mov	r1, r0
 2400 0288 386E     		ldr	r0, [r7, #96]	@ float
 2401 028a FFF7FEFF 		bl	__aeabi_fadd
 2402 028e 3866     		str	r0, [r7, #96]	@ float
 2403              	.L393:
 2404 0290 07F15804 		add	r4, r7, #88
 2405 0294 019A     		ldr	r2, [sp, #4]
 2406 0296 2046     		mov	r0, r4
 2407 0298 0921     		movs	r1, #9
 2408 029a FFF7FEFF 		bl	_ZN3DDA9NormaliseEPfjj
 2409 029e F867     		str	r0, [r7, #124]	@ float
 2410              	.L394:
 2411 02a0 04F1200E 		add	lr, r4, #32
 2412 02a4 15AE     		add	r6, sp, #84
 2413              	.L395:
 2414 02a6 2068     		ldr	r0, [r4]	@ unaligned
 2415 02a8 6168     		ldr	r1, [r4, #4]	@ unaligned
 2416 02aa A268     		ldr	r2, [r4, #8]	@ unaligned
 2417 02ac E368     		ldr	r3, [r4, #12]	@ unaligned
 2418 02ae 3546     		mov	r5, r6
 2419 02b0 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2420 02b2 1034     		adds	r4, r4, #16
 2421 02b4 7445     		cmp	r4, lr
 2422 02b6 2E46     		mov	r6, r5
 2423 02b8 F5D1     		bne	.L395
 2424 02ba 2068     		ldr	r0, [r4]	@ unaligned
 2425 02bc 14AB     		add	r3, sp, #80
 2426 02be 2860     		str	r0, [r5]	@ unaligned
 2427 02c0 1DA9     		add	r1, sp, #116
 2428              	.L397:
 2429 02c2 5A68     		ldr	r2, [r3, #4]
 2430 02c4 22F00042 		bic	r2, r2, #-2147483648
 2431 02c8 43F8042F 		str	r2, [r3, #4]!	@ float
 2432 02cc 8B42     		cmp	r3, r1
 2433 02ce F8D1     		bne	.L397
 2434 02d0 0922     		movs	r2, #9
 2435 02d2 0CA9     		add	r1, sp, #48
 2436 02d4 15A8     		add	r0, sp, #84
 2437 02d6 FFF7FEFF 		bl	_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 2438 02da 089A     		ldr	r2, [sp, #32]
 2439 02dc 0446     		mov	r4, r0
 2440 02de C7F88000 		str	r0, [r7, #128]	@ float
 2441 02e2 002A     		cmp	r2, #0
 2442 02e4 40F09A80 		bne	.L398
 2443 02e8 8C4B     		ldr	r3, .L489
 2444 02ea 1D68     		ldr	r5, [r3]
 2445              	.L399:
 2446 02ec 049A     		ldr	r2, [sp, #16]
 2447 02ee D8F83C40 		ldr	r4, [r8, #60]	@ float
 2448 02f2 FAB1     		cbz	r2, .L404
 2449 02f4 159E     		ldr	r6, [sp, #84]	@ float
 2450 02f6 0021     		movs	r1, #0
 2451 02f8 3046     		mov	r0, r6
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 44


 2452 02fa FFF7FEFF 		bl	__aeabi_fcmpgt
 2453 02fe 00B9     		cbnz	r0, .L405
 2454 0300 0026     		movs	r6, #0
 2455              	.L405:
 2456 0302 DDF85880 		ldr	r8, [sp, #88]	@ float
 2457 0306 3146     		mov	r1, r6
 2458 0308 4046     		mov	r0, r8
 2459 030a FFF7FEFF 		bl	__aeabi_fcmpgt
 2460 030e 00B9     		cbnz	r0, .L406
 2461 0310 B046     		mov	r8, r6
 2462              	.L406:
 2463 0312 179E     		ldr	r6, [sp, #92]	@ float
 2464 0314 4046     		mov	r0, r8
 2465 0316 3146     		mov	r1, r6
 2466 0318 FFF7FEFF 		bl	__aeabi_fcmplt
 2467 031c 00B9     		cbnz	r0, .L407
 2468 031e 4646     		mov	r6, r8
 2469              	.L407:
 2470 0320 3046     		mov	r0, r6
 2471 0322 0021     		movs	r1, #0
 2472 0324 FFF7FEFF 		bl	__aeabi_fcmpeq
 2473 0328 20B9     		cbnz	r0, .L404
 2474 032a 2046     		mov	r0, r4
 2475 032c 3146     		mov	r1, r6
 2476 032e FFF7FEFF 		bl	__aeabi_fdiv
 2477 0332 0446     		mov	r4, r0
 2478              	.L404:
 2479 0334 05F1E801 		add	r1, r5, #232
 2480 0338 15A8     		add	r0, sp, #84
 2481 033a 0922     		movs	r2, #9
 2482 033c FFF7FEFF 		bl	_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 2483 0340 2146     		mov	r1, r4
 2484 0342 0546     		mov	r5, r0
 2485 0344 2046     		mov	r0, r4
 2486 0346 FFF7FEFF 		bl	__aeabi_fcmpun
 2487 034a 90B9     		cbnz	r0, .L409
 2488 034c 2046     		mov	r0, r4
 2489 034e 2946     		mov	r1, r5
 2490 0350 FFF7FEFF 		bl	__aeabi_fcmplt
 2491 0354 28B9     		cbnz	r0, .L410
 2492 0356 2846     		mov	r0, r5
 2493 0358 2946     		mov	r1, r5
 2494 035a FFF7FEFF 		bl	__aeabi_fcmpun
 2495 035e 2C46     		mov	r4, r5
 2496 0360 38B9     		cbnz	r0, .L409
 2497              	.L410:
 2498 0362 2046     		mov	r0, r4
 2499 0364 4FF07C51 		mov	r1, #1056964608
 2500 0368 FFF7FEFF 		bl	__aeabi_fcmpgt
 2501 036c 08B9     		cbnz	r0, .L409
 2502 036e 4FF07C54 		mov	r4, #1056964608
 2503              	.L409:
 2504 0372 7B7A     		ldrb	r3, [r7, #9]	@ zero_extendqisi2
 2505 0374 C7F88440 		str	r4, [r7, #132]	@ float
 2506 0378 9B07     		lsls	r3, r3, #30
 2507 037a 64D4     		bmi	.L482
 2508              	.L413:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 45


 2509 037c 7C68     		ldr	r4, [r7, #4]
 2510 037e 0023     		movs	r3, #0
 2511 0380 227A     		ldrb	r2, [r4, #8]	@ zero_extendqisi2
 2512 0382 C7F89430 		str	r3, [r7, #148]	@ float
 2513 0386 012A     		cmp	r2, #1
 2514 0388 00F09C80 		beq	.L418
 2515              	.L474:
 2516 038c 3846     		mov	r0, r7
 2517 038e C7F89030 		str	r3, [r7, #144]	@ float
 2518 0392 FFF7FEFF 		bl	_ZN3DDA15RecalculateMoveEv
 2519 0396 0120     		movs	r0, #1
 2520 0398 3872     		strb	r0, [r7, #8]
 2521 039a 1FB0     		add	sp, sp, #124
 2522              		@ sp needed
 2523 039c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2524              	.L429:
 2525 03a0 0122     		movs	r2, #1
 2526 03a2 30E7     		b	.L379
 2527              	.L426:
 2528 03a4 0493     		str	r3, [sp, #16]
 2529 03a6 5CE6     		b	.L372
 2530              	.L481:
 2531 03a8 039B     		ldr	r3, [sp, #12]
 2532 03aa 33B3     		cbz	r3, .L483
 2533 03ac 7B7A     		ldrb	r3, [r7, #9]	@ zero_extendqisi2
 2534 03ae 0122     		movs	r2, #1
 2535 03b0 62F30003 		bfi	r3, r2, #0, #1
 2536 03b4 7B72     		strb	r3, [r7, #9]
 2537 03b6 0A9B     		ldr	r3, [sp, #40]
 2538 03b8 002B     		cmp	r3, #0
 2539 03ba 7FF450AF 		bne	.L484
 2540              	.L392:
 2541 03be 0921     		movs	r1, #9
 2542 03c0 07F15804 		add	r4, r7, #88
 2543 03c4 2046     		mov	r0, r4
 2544 03c6 0A46     		mov	r2, r1
 2545 03c8 FFF7FEFF 		bl	_ZN3DDA9NormaliseEPfjj
 2546 03cc F867     		str	r0, [r7, #124]	@ float
 2547 03ce 67E7     		b	.L394
 2548              	.L432:
 2549 03d0 0798     		ldr	r0, [sp, #28]
 2550 03d2 1FB0     		add	sp, sp, #124
 2551              		@ sp needed
 2552 03d4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2553              	.L476:
 2554 03d8 07F11002 		add	r2, r7, #16
 2555 03dc 0998     		ldr	r0, [sp, #36]
 2556 03de 4146     		mov	r1, r8
 2557 03e0 FFF7FEFF 		bl	_ZNK4Move14MotorTransformEPKfPl
 2558 03e4 099A     		ldr	r2, [sp, #36]
 2559 03e6 92F86C34 		ldrb	r3, [r2, #1132]	@ zero_extendqisi2
 2560 03ea 63B1     		cbz	r3, .L423
 2561 03ec 3A69     		ldr	r2, [r7, #16]
 2562 03ee 2369     		ldr	r3, [r4, #16]
 2563 03f0 9A42     		cmp	r2, r3
 2564 03f2 00F08880 		beq	.L485
 2565              	.L425:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 46


 2566 03f6 0122     		movs	r2, #1
 2567 03f8 06E0     		b	.L370
 2568              	.L483:
 2569 03fa 099B     		ldr	r3, [sp, #36]
 2570 03fc 93F86C24 		ldrb	r2, [r3, #1132]	@ zero_extendqisi2
 2571 0400 82F00102 		eor	r2, r2, #1
 2572 0404 23E7     		b	.L391
 2573              	.L423:
 2574 0406 1A46     		mov	r2, r3
 2575              	.L370:
 2576 0408 7B7A     		ldrb	r3, [r7, #9]	@ zero_extendqisi2
 2577 040a 62F34103 		bfi	r3, r2, #1, #1
 2578 040e 7B72     		strb	r3, [r7, #9]
 2579 0410 19E6     		b	.L371
 2580              	.L475:
 2581 0412 2146     		mov	r1, r4
 2582 0414 3846     		mov	r0, r7
 2583 0416 FFF7FEFF 		bl	_ZN3DDA19AdvanceBabySteppingEf
 2584 041a 04E6     		b	.L367
 2585              	.L398:
 2586 041c 7B7A     		ldrb	r3, [r7, #9]	@ zero_extendqisi2
 2587 041e DA06     		lsls	r2, r3, #27
 2588 0420 4BD5     		bpl	.L400
 2589 0422 3E4A     		ldr	r2, .L489
 2590 0424 1568     		ldr	r5, [r2]
 2591 0426 D5F83061 		ldr	r6, [r5, #304]	@ float
 2592              	.L401:
 2593 042a 2046     		mov	r0, r4
 2594 042c 2146     		mov	r1, r4
 2595 042e FFF7FEFF 		bl	__aeabi_fcmpun
 2596 0432 28B9     		cbnz	r0, .L402
 2597 0434 3046     		mov	r0, r6
 2598 0436 2146     		mov	r1, r4
 2599 0438 FFF7FEFF 		bl	__aeabi_fcmpgt
 2600 043c 00B9     		cbnz	r0, .L402
 2601 043e 3446     		mov	r4, r6
 2602              	.L402:
 2603 0440 C7F88040 		str	r4, [r7, #128]	@ float
 2604 0444 52E7     		b	.L399
 2605              	.L482:
 2606 0446 1598     		ldr	r0, [sp, #84]	@ float
 2607 0448 169D     		ldr	r5, [sp, #88]	@ float
 2608 044a 0146     		mov	r1, r0
 2609 044c FFF7FEFF 		bl	__aeabi_fmul
 2610 0450 2946     		mov	r1, r5
 2611 0452 0446     		mov	r4, r0
 2612 0454 2846     		mov	r0, r5
 2613 0456 FFF7FEFF 		bl	__aeabi_fmul
 2614 045a 0146     		mov	r1, r0
 2615 045c 2046     		mov	r0, r4
 2616 045e FFF7FEFF 		bl	__aeabi_fadd
 2617 0462 FFF7FEFF 		bl	sqrtf
 2618 0466 2D4A     		ldr	r2, .L489
 2619 0468 D7F88410 		ldr	r1, [r7, #132]	@ float
 2620 046c 1368     		ldr	r3, [r2]
 2621 046e 0446     		mov	r4, r0
 2622 0470 D3F8E850 		ldr	r5, [r3, #232]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 47


 2623 0474 FFF7FEFF 		bl	__aeabi_fmul
 2624 0478 0146     		mov	r1, r0
 2625 047a 2846     		mov	r0, r5
 2626 047c FFF7FEFF 		bl	__aeabi_fcmplt
 2627 0480 28B1     		cbz	r0, .L414
 2628 0482 2846     		mov	r0, r5
 2629 0484 2146     		mov	r1, r4
 2630 0486 FFF7FEFF 		bl	__aeabi_fdiv
 2631 048a C7F88400 		str	r0, [r7, #132]	@ float
 2632              	.L414:
 2633 048e 0B9B     		ldr	r3, [sp, #44]
 2634 0490 D7F88010 		ldr	r1, [r7, #128]	@ float
 2635 0494 2046     		mov	r0, r4
 2636 0496 D3F80C51 		ldr	r5, [r3, #268]	@ float
 2637 049a FFF7FEFF 		bl	__aeabi_fmul
 2638 049e 0146     		mov	r1, r0
 2639 04a0 2846     		mov	r0, r5
 2640 04a2 FFF7FEFF 		bl	__aeabi_fcmplt
 2641 04a6 0028     		cmp	r0, #0
 2642 04a8 3FF468AF 		beq	.L413
 2643 04ac 2846     		mov	r0, r5
 2644 04ae 2146     		mov	r1, r4
 2645 04b0 FFF7FEFF 		bl	__aeabi_fdiv
 2646 04b4 C7F88000 		str	r0, [r7, #128]	@ float
 2647 04b8 60E7     		b	.L413
 2648              	.L400:
 2649 04ba 184B     		ldr	r3, .L489
 2650 04bc 1D68     		ldr	r5, [r3]
 2651 04be D5F83461 		ldr	r6, [r5, #308]	@ float
 2652 04c2 B2E7     		b	.L401
 2653              	.L418:
 2654 04c4 F96F     		ldr	r1, [r7, #124]	@ float
 2655 04c6 D7F88000 		ldr	r0, [r7, #128]	@ float
 2656 04ca FFF7FEFF 		bl	__aeabi_fmul
 2657 04ce 0146     		mov	r1, r0
 2658 04d0 FFF7FEFF 		bl	__aeabi_fadd
 2659 04d4 FFF7FEFF 		bl	sqrtf
 2660 04d8 0146     		mov	r1, r0
 2661 04da 0546     		mov	r5, r0
 2662 04dc D7F88460 		ldr	r6, [r7, #132]	@ float
 2663 04e0 FFF7FEFF 		bl	__aeabi_fcmpun
 2664 04e4 20B9     		cbnz	r0, .L420
 2665 04e6 2846     		mov	r0, r5
 2666 04e8 3146     		mov	r1, r6
 2667 04ea FFF7FEFF 		bl	__aeabi_fcmplt
 2668 04ee 40B1     		cbz	r0, .L486
 2669              	.L420:
 2670 04f0 C4F8A450 		str	r5, [r4, #164]	@ float
 2671 04f4 7868     		ldr	r0, [r7, #4]
 2672 04f6 FFF7FEFF 		bl	_ZN3DDA11DoLookaheadEPS_
 2673 04fa 7B68     		ldr	r3, [r7, #4]
 2674 04fc D3F8A430 		ldr	r3, [r3, #164]	@ float
 2675 0500 44E7     		b	.L474
 2676              	.L486:
 2677 0502 3546     		mov	r5, r6
 2678 0504 F4E7     		b	.L420
 2679              	.L485:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 48


 2680 0506 7A69     		ldr	r2, [r7, #20]
 2681 0508 6369     		ldr	r3, [r4, #20]
 2682 050a 9A42     		cmp	r2, r3
 2683 050c 7FF473AF 		bne	.L425
 2684 0510 A269     		ldr	r2, [r4, #24]
 2685 0512 BB69     		ldr	r3, [r7, #24]
 2686 0514 9A1A     		subs	r2, r3, r2
 2687 0516 18BF     		it	ne
 2688 0518 0122     		movne	r2, #1
 2689 051a 75E7     		b	.L370
 2690              	.L490:
 2691              		.align	2
 2692              	.L489:
 2693 051c 00000000 		.word	reprap
 2694              		.size	_ZN3DDA4InitERKN6GCodes7RawMoveEb, .-_ZN3DDA4InitERKN6GCodes7RawMoveEb
 2695              		.section	.text._ZN3DDA5ScaleEPffj,"ax",%progbits
 2696              		.align	2
 2697              		.global	_ZN3DDA5ScaleEPffj
 2698              		.thumb
 2699              		.thumb_func
 2700              		.type	_ZN3DDA5ScaleEPffj, %function
 2701              	_ZN3DDA5ScaleEPffj:
 2702              		@ args = 0, pretend = 0, frame = 0
 2703              		@ frame_needed = 0, uses_anonymous_args = 0
 2704 0000 70B5     		push	{r4, r5, r6, lr}
 2705 0002 0D46     		mov	r5, r1
 2706 0004 52B1     		cbz	r2, .L491
 2707 0006 0446     		mov	r4, r0
 2708 0008 00EB8206 		add	r6, r0, r2, lsl #2
 2709              	.L494:
 2710 000c 2068     		ldr	r0, [r4]	@ float
 2711 000e 2946     		mov	r1, r5
 2712 0010 FFF7FEFF 		bl	__aeabi_fmul
 2713 0014 44F8040B 		str	r0, [r4], #4	@ float
 2714 0018 B442     		cmp	r4, r6
 2715 001a F7D1     		bne	.L494
 2716              	.L491:
 2717 001c 70BD     		pop	{r4, r5, r6, pc}
 2718              		.size	_ZN3DDA5ScaleEPffj, .-_ZN3DDA5ScaleEPffj
 2719 001e 00BF     		.section	.text._ZN3DDA8AbsoluteEPfj,"ax",%progbits
 2720              		.align	2
 2721              		.global	_ZN3DDA8AbsoluteEPfj
 2722              		.thumb
 2723              		.thumb_func
 2724              		.type	_ZN3DDA8AbsoluteEPfj, %function
 2725              	_ZN3DDA8AbsoluteEPfj:
 2726              		@ args = 0, pretend = 0, frame = 0
 2727              		@ frame_needed = 0, uses_anonymous_args = 0
 2728              		@ link register save eliminated.
 2729 0000 41B1     		cbz	r1, .L495
 2730 0002 00EB8101 		add	r1, r0, r1, lsl #2
 2731              	.L498:
 2732 0006 0368     		ldr	r3, [r0]	@ float
 2733 0008 23F00043 		bic	r3, r3, #-2147483648
 2734 000c 40F8043B 		str	r3, [r0], #4	@ float
 2735 0010 8842     		cmp	r0, r1
 2736 0012 F8D1     		bne	.L498
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 49


 2737              	.L495:
 2738 0014 7047     		bx	lr
 2739              		.size	_ZN3DDA8AbsoluteEPfj, .-_ZN3DDA8AbsoluteEPfj
 2740 0016 00BF     		.section	.text._ZN3DDA5StartEm,"ax",%progbits
 2741              		.align	2
 2742              		.global	_ZN3DDA5StartEm
 2743              		.thumb
 2744              		.thumb_func
 2745              		.type	_ZN3DDA5StartEm, %function
 2746              	_ZN3DDA5StartEm:
 2747              		@ args = 0, pretend = 0, frame = 8
 2748              		@ frame_needed = 0, uses_anonymous_args = 0
 2749 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2750 0004 D0F8B030 		ldr	r3, [r0, #176]
 2751 0008 0322     		movs	r2, #3
 2752 000a 83B0     		sub	sp, sp, #12
 2753 000c 8046     		mov	r8, r0
 2754 000e C0F8AC10 		str	r1, [r0, #172]
 2755 0012 0272     		strb	r2, [r0, #8]
 2756 0014 002B     		cmp	r3, #0
 2757 0016 00F09D80 		beq	.L533
 2758 001a DFF848A1 		ldr	r10, .L540
 2759 001e 0024     		movs	r4, #0
 2760 0020 DAF81020 		ldr	r2, [r10, #16]
 2761 0024 2346     		mov	r3, r4
 2762 0026 D2F88491 		ldr	r9, [r2, #388]
 2763 002a A346     		mov	fp, r4
 2764 002c C9F10006 		rsb	r6, r9, #0
 2765 0030 0546     		mov	r5, r0
 2766 0032 06E0     		b	.L506
 2767              	.L503:
 2768 0034 0134     		adds	r4, r4, #1
 2769 0036 092C     		cmp	r4, #9
 2770 0038 05F15005 		add	r5, r5, #80
 2771 003c 06F10106 		add	r6, r6, #1
 2772 0040 1CD0     		beq	.L538
 2773              	.L506:
 2774 0042 95F8D170 		ldrb	r7, [r5, #209]	@ zero_extendqisi2
 2775 0046 012F     		cmp	r7, #1
 2776 0048 F4D1     		bne	.L503
 2777 004a 95F8D220 		ldrb	r2, [r5, #210]	@ zero_extendqisi2
 2778 004e DAF80000 		ldr	r0, [r10]
 2779 0052 2146     		mov	r1, r4
 2780 0054 0193     		str	r3, [sp, #4]
 2781 0056 FFF7FEFF 		bl	_ZN8Platform12SetDirectionEjb
 2782 005a A145     		cmp	r9, r4
 2783 005c 019B     		ldr	r3, [sp, #4]
 2784 005e E9D8     		bhi	.L503
 2785 0060 95F8D220 		ldrb	r2, [r5, #210]	@ zero_extendqisi2
 2786 0064 B740     		lsls	r7, r7, r6
 2787 0066 002A     		cmp	r2, #0
 2788 0068 78D0     		beq	.L504
 2789 006a 0134     		adds	r4, r4, #1
 2790 006c 092C     		cmp	r4, #9
 2791 006e 4BEA070B 		orr	fp, fp, r7
 2792 0072 05F15005 		add	r5, r5, #80
 2793 0076 06F10106 		add	r6, r6, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 50


 2794 007a E2D1     		bne	.L506
 2795              	.L538:
 2796 007c BBF1000F 		cmp	fp, #0
 2797 0080 26D1     		bne	.L507
 2798 0082 2BBB     		cbnz	r3, .L507
 2799 0084 DAF80040 		ldr	r4, [r10]
 2800              	.L514:
 2801 0088 D4F8B804 		ldr	r0, [r4, #1208]	@ float
 2802 008c 0021     		movs	r1, #0
 2803 008e FFF7FEFF 		bl	__aeabi_fcmpgt
 2804 0092 80B1     		cbz	r0, .L516
 2805 0094 94F8C534 		ldrb	r3, [r4, #1221]	@ zero_extendqisi2
 2806 0098 94F8C464 		ldrb	r6, [r4, #1220]	@ zero_extendqisi2
 2807 009c 002B     		cmp	r3, #0
 2808 009e 5FD0     		beq	.L523
 2809 00a0 4FF07E55 		mov	r5, #1065353216
 2810              	.L520:
 2811 00a4 D4F8BC04 		ldr	r0, [r4, #1212]	@ float
 2812 00a8 FFF7FEFF 		bl	__aeabi_f2uiz
 2813 00ac 2946     		mov	r1, r5
 2814 00ae 82B2     		uxth	r2, r0
 2815 00b0 3046     		mov	r0, r6
 2816 00b2 FFF7FEFF 		bl	_Z9AnalogOuthft
 2817              	.L516:
 2818 00b6 D8F8B030 		ldr	r3, [r8, #176]
 2819 00ba 002B     		cmp	r3, #0
 2820 00bc 4AD0     		beq	.L533
 2821 00be D8F8AC00 		ldr	r0, [r8, #172]
 2822 00c2 5B6A     		ldr	r3, [r3, #36]
 2823 00c4 1844     		add	r0, r0, r3
 2824 00c6 03B0     		add	sp, sp, #12
 2825              		@ sp needed
 2826 00c8 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2827 00cc FFF7FEBF 		b	_ZN8Platform17ScheduleInterruptEm
 2828              	.L507:
 2829 00d0 5946     		mov	r1, fp
 2830 00d2 1A46     		mov	r2, r3
 2831 00d4 2348     		ldr	r0, .L540
 2832 00d6 FFF7FEFF 		bl	_ZN6RepRap30GetProhibitedExtruderMovementsEjj
 2833 00da D8F8B030 		ldr	r3, [r8, #176]
 2834 00de 08F1B005 		add	r5, r8, #176
 2835 00e2 0021     		movs	r1, #0
 2836 00e4 0126     		movs	r6, #1
 2837              	.L509:
 2838 00e6 7BB1     		cbz	r3, .L539
 2839              	.L513:
 2840 00e8 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 2841 00ea 4A45     		cmp	r2, r9
 2842 00ec C9EB0204 		rsb	r4, r9, r2
 2843 00f0 34BF     		ite	cc
 2844 00f2 0022     		movcc	r2, #0
 2845 00f4 0122     		movcs	r2, #1
 2846 00f6 32B3     		cbz	r2, .L510
 2847 00f8 06FA04F4 		lsl	r4, r6, r4
 2848 00fc 2042     		tst	r0, r4
 2849 00fe 22D0     		beq	.L510
 2850 0100 DB6A     		ldr	r3, [r3, #44]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 51


 2851 0102 2B60     		str	r3, [r5]
 2852 0104 002B     		cmp	r3, #0
 2853 0106 EFD1     		bne	.L513
 2854              	.L539:
 2855 0108 DAF80040 		ldr	r4, [r10]
 2856 010c 0029     		cmp	r1, #0
 2857 010e BBD0     		beq	.L514
 2858 0110 D4F8B854 		ldr	r5, [r4, #1208]	@ float
 2859 0114 0021     		movs	r1, #0
 2860 0116 2846     		mov	r0, r5
 2861 0118 FFF7FEFF 		bl	__aeabi_fcmpgt
 2862 011c 0028     		cmp	r0, #0
 2863 011e CAD0     		beq	.L516
 2864 0120 94F8C534 		ldrb	r3, [r4, #1221]	@ zero_extendqisi2
 2865 0124 94F8C464 		ldrb	r6, [r4, #1220]	@ zero_extendqisi2
 2866 0128 002B     		cmp	r3, #0
 2867 012a BBD0     		beq	.L520
 2868 012c 2846     		mov	r0, r5
 2869 012e FFF7FEFF 		bl	__aeabi_f2d
 2870 0132 0246     		mov	r2, r0
 2871 0134 0B46     		mov	r3, r1
 2872 0136 0020     		movs	r0, #0
 2873 0138 0B49     		ldr	r1, .L540+4
 2874 013a FFF7FEFF 		bl	__aeabi_dsub
 2875 013e FFF7FEFF 		bl	__aeabi_d2f
 2876 0142 0546     		mov	r5, r0
 2877 0144 AEE7     		b	.L520
 2878              	.L510:
 2879 0146 03F12C05 		add	r5, r3, #44
 2880 014a 0029     		cmp	r1, #0
 2881 014c 08BF     		it	eq
 2882 014e 1146     		moveq	r1, r2
 2883 0150 DB6A     		ldr	r3, [r3, #44]
 2884 0152 C8E7     		b	.L509
 2885              	.L533:
 2886 0154 0120     		movs	r0, #1
 2887 0156 03B0     		add	sp, sp, #12
 2888              		@ sp needed
 2889 0158 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2890              	.L504:
 2891 015c 3B43     		orrs	r3, r3, r7
 2892 015e 69E7     		b	.L503
 2893              	.L523:
 2894 0160 0025     		movs	r5, #0
 2895 0162 9FE7     		b	.L520
 2896              	.L541:
 2897              		.align	2
 2898              	.L540:
 2899 0164 00000000 		.word	reprap
 2900 0168 0000F03F 		.word	1072693248
 2901              		.size	_ZN3DDA5StartEm, .-_ZN3DDA5StartEm
 2902              		.section	.text._ZN3DDA9StopDriveEj,"ax",%progbits
 2903              		.align	2
 2904              		.global	_ZN3DDA9StopDriveEj
 2905              		.thumb
 2906              		.thumb_func
 2907              		.type	_ZN3DDA9StopDriveEj, %function
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 52


 2908              	_ZN3DDA9StopDriveEj:
 2909              		@ args = 0, pretend = 0, frame = 0
 2910              		@ frame_needed = 0, uses_anonymous_args = 0
 2911              		@ link register save eliminated.
 2912 0000 8A00     		lsls	r2, r1, #2
 2913 0002 5318     		adds	r3, r2, r1
 2914 0004 00EB0313 		add	r3, r0, r3, lsl #4
 2915 0008 B833     		adds	r3, r3, #184
 2916 000a F0B4     		push	{r4, r5, r6, r7}
 2917 000c 5C7E     		ldrb	r4, [r3, #25]	@ zero_extendqisi2
 2918 000e 012C     		cmp	r4, #1
 2919 0010 01D0     		beq	.L565
 2920              	.L542:
 2921 0012 F0BC     		pop	{r4, r5, r6, r7}
 2922 0014 7047     		bx	lr
 2923              	.L565:
 2924 0016 DC69     		ldr	r4, [r3, #28]
 2925 0018 1D6A     		ldr	r5, [r3, #32]
 2926 001a AC42     		cmp	r4, r5
 2927 001c 33D2     		bcs	.L566
 2928 001e 5E69     		ldr	r6, [r3, #20]
 2929 0020 B542     		cmp	r5, r6
 2930 0022 2CBF     		ite	cs
 2931 0024 3546     		movcs	r5, r6
 2932 0026 C6EB4505 		rsbcc	r5, r6, r5, lsl #1
 2933              	.L548:
 2934 002a 9F7E     		ldrb	r7, [r3, #26]	@ zero_extendqisi2
 2935 002c C4F10104 		rsb	r4, r4, #1
 2936 0030 2C44     		add	r4, r4, r5
 2937 0032 07B9     		cbnz	r7, .L549
 2938 0034 6442     		negs	r4, r4
 2939              	.L549:
 2940 0036 0244     		add	r2, r2, r0
 2941 0038 1669     		ldr	r6, [r2, #16]
 2942 003a 164F     		ldr	r7, .L570
 2943 003c 361B     		subs	r6, r6, r4
 2944 003e 3C69     		ldr	r4, [r7, #16]
 2945 0040 1661     		str	r6, [r2, #16]
 2946 0042 D4F88441 		ldr	r4, [r4, #388]
 2947 0046 0022     		movs	r2, #0
 2948 0048 A142     		cmp	r1, r4
 2949 004a 5A76     		strb	r2, [r3, #25]
 2950 004c 03D2     		bcs	.L550
 2951 004e 437A     		ldrb	r3, [r0, #9]	@ zero_extendqisi2
 2952 0050 62F30003 		bfi	r3, r2, #0, #1
 2953 0054 4372     		strb	r3, [r0, #9]
 2954              	.L550:
 2955 0056 D0F8B020 		ldr	r2, [r0, #176]
 2956 005a 8AB1     		cbz	r2, .L551
 2957 005c 137E     		ldrb	r3, [r2, #24]	@ zero_extendqisi2
 2958 005e 9942     		cmp	r1, r3
 2959 0060 01D1     		bne	.L555
 2960 0062 12E0     		b	.L569
 2961              	.L568:
 2962 0064 1A46     		mov	r2, r3
 2963              	.L555:
 2964 0066 D36A     		ldr	r3, [r2, #44]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 53


 2965 0068 002B     		cmp	r3, #0
 2966 006a D2D0     		beq	.L542
 2967 006c 1C7E     		ldrb	r4, [r3, #24]	@ zero_extendqisi2
 2968 006e A142     		cmp	r1, r4
 2969 0070 F8D1     		bne	.L568
 2970 0072 2C32     		adds	r2, r2, #44
 2971              	.L553:
 2972 0074 DB6A     		ldr	r3, [r3, #44]
 2973 0076 1360     		str	r3, [r2]
 2974 0078 D0F8B030 		ldr	r3, [r0, #176]
 2975 007c 002B     		cmp	r3, #0
 2976 007e C8D1     		bne	.L542
 2977              	.L551:
 2978 0080 0423     		movs	r3, #4
 2979 0082 0372     		strb	r3, [r0, #8]
 2980 0084 C5E7     		b	.L542
 2981              	.L566:
 2982 0086 5D69     		ldr	r5, [r3, #20]
 2983 0088 CFE7     		b	.L548
 2984              	.L569:
 2985 008a 1346     		mov	r3, r2
 2986 008c 00F1B002 		add	r2, r0, #176
 2987 0090 F0E7     		b	.L553
 2988              	.L571:
 2989 0092 00BF     		.align	2
 2990              	.L570:
 2991 0094 00000000 		.word	reprap
 2992              		.size	_ZN3DDA9StopDriveEj, .-_ZN3DDA9StopDriveEj
 2993              		.section	.text._ZN3DDA13CheckEndstopsEP8Platform,"ax",%progbits
 2994              		.align	2
 2995              		.global	_ZN3DDA13CheckEndstopsEP8Platform
 2996              		.thumb
 2997              		.thumb_func
 2998              		.type	_ZN3DDA13CheckEndstopsEP8Platform, %function
 2999              	_ZN3DDA13CheckEndstopsEP8Platform:
 3000              		@ args = 0, pretend = 0, frame = 0
 3001              		@ frame_needed = 0, uses_anonymous_args = 0
 3002 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3003 0004 B0F90A30 		ldrsh	r3, [r0, #10]
 3004 0008 0546     		mov	r5, r0
 3005 000a 002B     		cmp	r3, #0
 3006 000c 0F46     		mov	r7, r1
 3007 000e 7EDB     		blt	.L573
 3008              	.L609:
 3009 0010 DFF84081 		ldr	r8, .L613
 3010              	.L574:
 3011 0014 D8F81030 		ldr	r3, [r8, #16]
 3012 0018 D3F88461 		ldr	r6, [r3, #388]
 3013 001c 002E     		cmp	r6, #0
 3014 001e 35D0     		beq	.L572
 3015 0020 0024     		movs	r4, #0
 3016 0022 4FF00109 		mov	r9, #1
 3017 0026 4FF0040A 		mov	r10, #4
 3018 002a 02E0     		b	.L594
 3019              	.L582:
 3020 002c 0134     		adds	r4, r4, #1
 3021 002e B442     		cmp	r4, r6
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 54


 3022 0030 2AD0     		beq	.L610
 3023              	.L594:
 3024 0032 6B89     		ldrh	r3, [r5, #10]
 3025 0034 2341     		asrs	r3, r3, r4
 3026 0036 DA07     		lsls	r2, r3, #31
 3027 0038 F8D5     		bpl	.L582
 3028 003a 3846     		mov	r0, r7
 3029 003c 2146     		mov	r1, r4
 3030 003e FFF7FEFF 		bl	_ZNK8Platform7StoppedEj
 3031 0042 0228     		cmp	r0, #2
 3032 0044 30D0     		beq	.L583
 3033 0046 0328     		cmp	r0, #3
 3034 0048 22D0     		beq	.L584
 3035 004a 0128     		cmp	r0, #1
 3036 004c EED1     		bne	.L582
 3037 004e A040     		lsls	r0, r0, r4
 3038 0050 6B89     		ldrh	r3, [r5, #10]
 3039 0052 23EA0000 		bic	r0, r3, r0
 3040 0056 6881     		strh	r0, [r5, #10]	@ movhi
 3041 0058 0028     		cmp	r0, #0
 3042 005a 40D1     		bne	.L611
 3043              	.L586:
 3044 005c 4FF0000B 		mov	fp, #0
 3045              	.L595:
 3046 0060 5946     		mov	r1, fp
 3047 0062 2846     		mov	r0, r5
 3048 0064 0BF1010B 		add	fp, fp, #1
 3049 0068 FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 3050 006c BBF1090F 		cmp	fp, #9
 3051 0070 F6D1     		bne	.L595
 3052 0072 85F808A0 		strb	r10, [r5, #8]
 3053              	.L596:
 3054 0076 2146     		mov	r1, r4
 3055 0078 D8F80800 		ldr	r0, [r8, #8]
 3056 007c 2A46     		mov	r2, r5
 3057 007e 0134     		adds	r4, r4, #1
 3058 0080 FFF7FEFF 		bl	_ZN4Move10HitLowStopEjP3DDA
 3059 0084 B442     		cmp	r4, r6
 3060 0086 D4D1     		bne	.L594
 3061              	.L610:
 3062 0088 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3063              	.L572:
 3064 008c BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3065              	.L584:
 3066 0090 09FA04F3 		lsl	r3, r9, r4
 3067 0094 6A89     		ldrh	r2, [r5, #10]
 3068 0096 9A42     		cmp	r2, r3
 3069 0098 C8D1     		bne	.L582
 3070 009a 6B7A     		ldrb	r3, [r5, #9]	@ zero_extendqisi2
 3071 009c 1B07     		lsls	r3, r3, #28
 3072 009e C5D4     		bmi	.L582
 3073 00a0 2846     		mov	r0, r5
 3074 00a2 FFF7FEFF 		bl	_ZN3DDA17ReduceHomingSpeedEv.part.10
 3075 00a6 C1E7     		b	.L582
 3076              	.L583:
 3077 00a8 09FA04F3 		lsl	r3, r9, r4
 3078 00ac 6A89     		ldrh	r2, [r5, #10]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 55


 3079 00ae 22EA0303 		bic	r3, r2, r3
 3080 00b2 6B81     		strh	r3, [r5, #10]	@ movhi
 3081 00b4 FBB9     		cbnz	r3, .L612
 3082              	.L589:
 3083 00b6 4FF0000B 		mov	fp, #0
 3084              	.L598:
 3085 00ba 5946     		mov	r1, fp
 3086 00bc 2846     		mov	r0, r5
 3087 00be 0BF1010B 		add	fp, fp, #1
 3088 00c2 FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 3089 00c6 BBF1090F 		cmp	fp, #9
 3090 00ca F6D1     		bne	.L598
 3091 00cc 85F808A0 		strb	r10, [r5, #8]
 3092              	.L597:
 3093 00d0 D8F80800 		ldr	r0, [r8, #8]
 3094 00d4 2146     		mov	r1, r4
 3095 00d6 2A46     		mov	r2, r5
 3096 00d8 FFF7FEFF 		bl	_ZN4Move11HitHighStopEjP3DDA
 3097 00dc A6E7     		b	.L582
 3098              	.L611:
 3099 00de D8F80800 		ldr	r0, [r8, #8]
 3100 00e2 2146     		mov	r1, r4
 3101 00e4 FFF7FEFF 		bl	_ZNK4Move12IsCoreXYAxisEj
 3102 00e8 0028     		cmp	r0, #0
 3103 00ea B7D1     		bne	.L586
 3104 00ec 2846     		mov	r0, r5
 3105 00ee 2146     		mov	r1, r4
 3106 00f0 FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 3107 00f4 BFE7     		b	.L596
 3108              	.L612:
 3109 00f6 D8F80800 		ldr	r0, [r8, #8]
 3110 00fa 2146     		mov	r1, r4
 3111 00fc FFF7FEFF 		bl	_ZNK4Move12IsCoreXYAxisEj
 3112 0100 0028     		cmp	r0, #0
 3113 0102 D8D1     		bne	.L589
 3114 0104 2846     		mov	r0, r5
 3115 0106 2146     		mov	r1, r4
 3116 0108 FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 3117 010c E0E7     		b	.L597
 3118              	.L573:
 3119 010e 0846     		mov	r0, r1
 3120 0110 FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 3121 0114 0128     		cmp	r0, #1
 3122 0116 0AD0     		beq	.L575
 3123 0118 0328     		cmp	r0, #3
 3124 011a 7FF479AF 		bne	.L609
 3125 011e 6B7A     		ldrb	r3, [r5, #9]	@ zero_extendqisi2
 3126 0120 1907     		lsls	r1, r3, #28
 3127 0122 3FF575AF 		bmi	.L609
 3128 0126 2846     		mov	r0, r5
 3129 0128 FFF7FEFF 		bl	_ZN3DDA17ReduceHomingSpeedEv.part.10
 3130 012c 70E7     		b	.L609
 3131              	.L575:
 3132 012e 0024     		movs	r4, #0
 3133              	.L578:
 3134 0130 2146     		mov	r1, r4
 3135 0132 2846     		mov	r0, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 56


 3136 0134 0134     		adds	r4, r4, #1
 3137 0136 FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 3138 013a 092C     		cmp	r4, #9
 3139 013c F8D1     		bne	.L578
 3140 013e DFF81480 		ldr	r8, .L613
 3141 0142 0423     		movs	r3, #4
 3142 0144 D8F80800 		ldr	r0, [r8, #8]
 3143 0148 2946     		mov	r1, r5
 3144 014a 2B72     		strb	r3, [r5, #8]
 3145 014c FFF7FEFF 		bl	_ZN4Move15ZProbeTriggeredEP3DDA
 3146 0150 60E7     		b	.L574
 3147              	.L614:
 3148 0152 00BF     		.align	2
 3149              	.L613:
 3150 0154 00000000 		.word	reprap
 3151              		.size	_ZN3DDA13CheckEndstopsEP8Platform, .-_ZN3DDA13CheckEndstopsEP8Platform
 3152              		.section	.text._ZN3DDA4StepEv,"ax",%progbits
 3153              		.align	2
 3154              		.global	_ZN3DDA4StepEv
 3155              		.thumb
 3156              		.thumb_func
 3157              		.type	_ZN3DDA4StepEv, %function
 3158              	_ZN3DDA4StepEv:
 3159              		@ args = 0, pretend = 0, frame = 8
 3160              		@ frame_needed = 0, uses_anonymous_args = 0
 3161 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3162 0004 864B     		ldr	r3, .L685
 3163 0006 874A     		ldr	r2, .L685+4
 3164 0008 D3F810C0 		ldr	ip, [r3, #16]
 3165 000c 83B0     		sub	sp, sp, #12
 3166 000e D2F800A0 		ldr	r10, [r2]
 3167 0012 9B46     		mov	fp, r3
 3168 0014 4FF00009 		mov	r9, #0
 3169 0018 0746     		mov	r7, r0
 3170 001a CDF804C0 		str	ip, [sp, #4]
 3171              	.L647:
 3172 001e 7B89     		ldrh	r3, [r7, #10]
 3173 0020 002B     		cmp	r3, #0
 3174 0022 40F0E080 		bne	.L616
 3175              	.L620:
 3176 0026 DBF81020 		ldr	r2, [fp, #16]
 3177 002a D7F8AC30 		ldr	r3, [r7, #172]
 3178 002e D7F8B040 		ldr	r4, [r7, #176]
 3179 0032 0632     		adds	r2, r2, #6
 3180 0034 D21A     		subs	r2, r2, r3
 3181 0036 2546     		mov	r5, r4
 3182 0038 002C     		cmp	r4, #0
 3183 003a 00F0DD80 		beq	.L618
 3184 003e 636A     		ldr	r3, [r4, #36]
 3185 0040 2546     		mov	r5, r4
 3186 0042 9A42     		cmp	r2, r3
 3187 0044 C0F0D880 		bcc	.L618
 3188 0048 4FF00008 		mov	r8, #0
 3189 004c 02E0     		b	.L622
 3190              	.L679:
 3191 004e 6B6A     		ldr	r3, [r5, #36]
 3192 0050 9A42     		cmp	r2, r3
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 57


 3193 0052 0AD3     		bcc	.L621
 3194              	.L622:
 3195 0054 2B7E     		ldrb	r3, [r5, #24]	@ zero_extendqisi2
 3196 0056 ED6A     		ldr	r5, [r5, #44]
 3197 0058 8633     		adds	r3, r3, #134
 3198 005a 5AF82330 		ldr	r3, [r10, r3, lsl #2]
 3199 005e 09F10109 		add	r9, r9, #1
 3200 0062 48EA0308 		orr	r8, r8, r3
 3201 0066 002D     		cmp	r5, #0
 3202 0068 F1D1     		bne	.L679
 3203              	.L621:
 3204 006a DAF84032 		ldr	r3, [r10, #576]
 3205 006e 18EA030F 		tst	r8, r3
 3206 0072 00F0AB80 		beq	.L623
 3207 0076 DAF83C22 		ldr	r2, [r10, #572]
 3208 007a DDF804C0 		ldr	ip, [sp, #4]
 3209              	.L625:
 3210 007e DBF81030 		ldr	r3, [fp, #16]
 3211 0082 CCEB0303 		rsb	r3, ip, r3
 3212 0086 9342     		cmp	r3, r2
 3213 0088 F9D3     		bcc	.L625
 3214 008a 674A     		ldr	r2, .L685+8
 3215 008c 4FEA5803 		lsr	r3, r8, #1
 3216 0090 C2F83880 		str	r8, [r2, #56]
 3217 0094 A2F50072 		sub	r2, r2, #512
 3218 0098 C2F83880 		str	r8, [r2, #56]
 3219 009c A2F58062 		sub	r2, r2, #1024
 3220 00a0 9363     		str	r3, [r2, #56]
 3221 00a2 5F4B     		ldr	r3, .L685
 3222 00a4 1B69     		ldr	r3, [r3, #16]
 3223 00a6 0193     		str	r3, [sp, #4]
 3224              	.L626:
 3225 00a8 A542     		cmp	r5, r4
 3226 00aa C7F8B050 		str	r5, [r7, #176]
 3227 00ae 4AD0     		beq	.L641
 3228              	.L642:
 3229 00b0 7B7A     		ldrb	r3, [r7, #9]	@ zero_extendqisi2
 3230 00b2 9B07     		lsls	r3, r3, #30
 3231 00b4 02D5     		bpl	.L630
 3232 00b6 237E     		ldrb	r3, [r4, #24]	@ zero_extendqisi2
 3233 00b8 022B     		cmp	r3, #2
 3234 00ba 2AD9     		bls	.L680
 3235              	.L630:
 3236 00bc E369     		ldr	r3, [r4, #28]
 3237 00be 6269     		ldr	r2, [r4, #20]
 3238 00c0 9342     		cmp	r3, r2
 3239 00c2 21D2     		bcs	.L635
 3240 00c4 E27E     		ldrb	r2, [r4, #27]	@ zero_extendqisi2
 3241 00c6 0133     		adds	r3, r3, #1
 3242 00c8 E361     		str	r3, [r4, #28]
 3243 00ca 002A     		cmp	r2, #0
 3244 00cc 30D0     		beq	.L636
 3245              	.L678:
 3246 00ce 013A     		subs	r2, r2, #1
 3247 00d0 E276     		strb	r2, [r4, #27]
 3248 00d2 0120     		movs	r0, #1
 3249              	.L634:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 58


 3250 00d4 E66A     		ldr	r6, [r4, #44]
 3251 00d6 98B1     		cbz	r0, .L638
 3252 00d8 D7F8B030 		ldr	r3, [r7, #176]
 3253 00dc 07F1B000 		add	r0, r7, #176
 3254 00e0 63B1     		cbz	r3, .L639
 3255 00e2 616A     		ldr	r1, [r4, #36]
 3256 00e4 5A6A     		ldr	r2, [r3, #36]
 3257 00e6 9142     		cmp	r1, r2
 3258 00e8 03D8     		bhi	.L640
 3259 00ea 07E0     		b	.L639
 3260              	.L681:
 3261 00ec 5A6A     		ldr	r2, [r3, #36]
 3262 00ee 8A42     		cmp	r2, r1
 3263 00f0 04D2     		bcs	.L639
 3264              	.L640:
 3265 00f2 03F12C00 		add	r0, r3, #44
 3266 00f6 DB6A     		ldr	r3, [r3, #44]
 3267 00f8 002B     		cmp	r3, #0
 3268 00fa F7D1     		bne	.L681
 3269              	.L639:
 3270 00fc E362     		str	r3, [r4, #44]
 3271 00fe 0460     		str	r4, [r0]
 3272              	.L638:
 3273 0100 AE42     		cmp	r6, r5
 3274 0102 20D0     		beq	.L641
 3275 0104 3446     		mov	r4, r6
 3276 0106 D3E7     		b	.L642
 3277              	.L635:
 3278 0108 4FF00002 		mov	r2, #0
 3279 010c 6276     		strb	r2, [r4, #25]
 3280 010e 0020     		movs	r0, #0
 3281 0110 E0E7     		b	.L634
 3282              	.L680:
 3283 0112 E369     		ldr	r3, [r4, #28]
 3284 0114 6269     		ldr	r2, [r4, #20]
 3285 0116 9342     		cmp	r3, r2
 3286 0118 10D2     		bcs	.L631
 3287 011a E27E     		ldrb	r2, [r4, #27]	@ zero_extendqisi2
 3288 011c 0133     		adds	r3, r3, #1
 3289 011e E361     		str	r3, [r4, #28]
 3290 0120 002A     		cmp	r2, #0
 3291 0122 D4D1     		bne	.L678
 3292 0124 2046     		mov	r0, r4
 3293 0126 3946     		mov	r1, r7
 3294 0128 0122     		movs	r2, #1
 3295 012a FFF7FEFF 		bl	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb
 3296 012e D1E7     		b	.L634
 3297              	.L636:
 3298 0130 2046     		mov	r0, r4
 3299 0132 3946     		mov	r1, r7
 3300 0134 0122     		movs	r2, #1
 3301 0136 FFF7FEFF 		bl	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb
 3302 013a CBE7     		b	.L634
 3303              	.L631:
 3304 013c 4FF00003 		mov	r3, #0
 3305 0140 6376     		strb	r3, [r4, #25]
 3306 0142 0020     		movs	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 59


 3307 0144 C6E7     		b	.L634
 3308              	.L641:
 3309 0146 DAF84032 		ldr	r3, [r10, #576]
 3310 014a 18EA0303 		ands	r3, r8, r3
 3311 014e 2ED0     		beq	.L682
 3312 0150 DAF83C22 		ldr	r2, [r10, #572]
 3313 0154 DDF804C0 		ldr	ip, [sp, #4]
 3314              	.L644:
 3315 0158 DBF81030 		ldr	r3, [fp, #16]
 3316 015c CCEB0303 		rsb	r3, ip, r3
 3317 0160 9342     		cmp	r3, r2
 3318 0162 F9D3     		bcc	.L644
 3319 0164 304A     		ldr	r2, .L685+8
 3320 0166 0023     		movs	r3, #0
 3321 0168 9363     		str	r3, [r2, #56]
 3322 016a A2F50072 		sub	r2, r2, #512
 3323 016e 9363     		str	r3, [r2, #56]
 3324 0170 A2F58062 		sub	r2, r2, #1024
 3325 0174 9363     		str	r3, [r2, #56]
 3326 0176 2A4B     		ldr	r3, .L685
 3327 0178 1B69     		ldr	r3, [r3, #16]
 3328 017a 0193     		str	r3, [sp, #4]
 3329 017c D7F8B030 		ldr	r3, [r7, #176]
 3330 0180 0BB3     		cbz	r3, .L683
 3331              	.L646:
 3332 0182 586A     		ldr	r0, [r3, #36]
 3333 0184 D7F8AC30 		ldr	r3, [r7, #172]
 3334 0188 1844     		add	r0, r0, r3
 3335 018a FFF7FEFF 		bl	_ZN8Platform17ScheduleInterruptEm
 3336 018e 0028     		cmp	r0, #0
 3337 0190 7FF445AF 		bne	.L647
 3338              	.L619:
 3339 0194 254B     		ldr	r3, .L685+12
 3340 0196 1A68     		ldr	r2, [r3]
 3341 0198 9145     		cmp	r9, r2
 3342 019a 88BF     		it	hi
 3343 019c C3F80090 		strhi	r9, [r3]
 3344 01a0 3B7A     		ldrb	r3, [r7, #8]	@ zero_extendqisi2
 3345 01a2 042B     		cmp	r3, #4
 3346 01a4 2BD0     		beq	.L684
 3347 01a6 0020     		movs	r0, #0
 3348 01a8 03B0     		add	sp, sp, #12
 3349              		@ sp needed
 3350 01aa BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3351              	.L682:
 3352 01ae 1E4A     		ldr	r2, .L685+8
 3353 01b0 9363     		str	r3, [r2, #56]
 3354 01b2 A2F50072 		sub	r2, r2, #512
 3355 01b6 9363     		str	r3, [r2, #56]
 3356 01b8 A2F58062 		sub	r2, r2, #1024
 3357 01bc 9363     		str	r3, [r2, #56]
 3358 01be D7F8B030 		ldr	r3, [r7, #176]
 3359 01c2 002B     		cmp	r3, #0
 3360 01c4 DDD1     		bne	.L646
 3361              	.L683:
 3362 01c6 0423     		movs	r3, #4
 3363 01c8 3B72     		strb	r3, [r7, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 60


 3364 01ca E3E7     		b	.L619
 3365              	.L623:
 3366 01cc 4FEA5803 		lsr	r3, r8, #1
 3367              	.L650:
 3368 01d0 154A     		ldr	r2, .L685+8
 3369 01d2 C2F83880 		str	r8, [r2, #56]
 3370 01d6 A2F50072 		sub	r2, r2, #512
 3371 01da C2F83880 		str	r8, [r2, #56]
 3372 01de A2F58062 		sub	r2, r2, #1024
 3373 01e2 9363     		str	r3, [r2, #56]
 3374 01e4 60E7     		b	.L626
 3375              	.L616:
 3376 01e6 3846     		mov	r0, r7
 3377 01e8 5146     		mov	r1, r10
 3378 01ea FFF7FEFF 		bl	_ZN3DDA13CheckEndstopsEP8Platform
 3379 01ee 3B7A     		ldrb	r3, [r7, #8]	@ zero_extendqisi2
 3380 01f0 042B     		cmp	r3, #4
 3381 01f2 7FF418AF 		bne	.L620
 3382 01f6 CDE7     		b	.L619
 3383              	.L618:
 3384 01f8 0023     		movs	r3, #0
 3385 01fa 9846     		mov	r8, r3
 3386 01fc E8E7     		b	.L650
 3387              	.L684:
 3388 01fe 094B     		ldr	r3, .L685+4
 3389 0200 D7F8A850 		ldr	r5, [r7, #168]
 3390 0204 9C68     		ldr	r4, [r3, #8]
 3391 0206 D7F8AC30 		ldr	r3, [r7, #172]
 3392 020a 2046     		mov	r0, r4
 3393 020c 1D44     		add	r5, r5, r3
 3394 020e FFF7FEFF 		bl	_ZN4Move20CurrentMoveCompletedEv
 3395 0212 2046     		mov	r0, r4
 3396 0214 2946     		mov	r1, r5
 3397 0216 03B0     		add	sp, sp, #12
 3398              		@ sp needed
 3399 0218 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3400 021c FFF7FEBF 		b	_ZN4Move16TryStartNextMoveEm
 3401              	.L686:
 3402              		.align	2
 3403              	.L685:
 3404 0220 00400840 		.word	1074282496
 3405 0224 00000000 		.word	reprap
 3406 0228 00140E40 		.word	1074664448
 3407 022c 00000000 		.word	maxReps
 3408              		.size	_ZN3DDA4StepEv, .-_ZN3DDA4StepEv
 3409              		.section	.text._ZN3DDA11MoveAbortedEv,"ax",%progbits
 3410              		.align	2
 3411              		.global	_ZN3DDA11MoveAbortedEv
 3412              		.thumb
 3413              		.thumb_func
 3414              		.type	_ZN3DDA11MoveAbortedEv, %function
 3415              	_ZN3DDA11MoveAbortedEv:
 3416              		@ args = 0, pretend = 0, frame = 0
 3417              		@ frame_needed = 0, uses_anonymous_args = 0
 3418 0000 38B5     		push	{r3, r4, r5, lr}
 3419 0002 0546     		mov	r5, r0
 3420 0004 0024     		movs	r4, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 61


 3421              	.L689:
 3422 0006 2146     		mov	r1, r4
 3423 0008 2846     		mov	r0, r5
 3424 000a 0134     		adds	r4, r4, #1
 3425 000c FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 3426 0010 092C     		cmp	r4, #9
 3427 0012 F8D1     		bne	.L689
 3428 0014 0423     		movs	r3, #4
 3429 0016 2B72     		strb	r3, [r5, #8]
 3430 0018 38BD     		pop	{r3, r4, r5, pc}
 3431              		.size	_ZN3DDA11MoveAbortedEv, .-_ZN3DDA11MoveAbortedEv
 3432 001a 00BF     		.section	.text._ZN3DDA17ReduceHomingSpeedEv,"ax",%progbits
 3433              		.align	2
 3434              		.global	_ZN3DDA17ReduceHomingSpeedEv
 3435              		.thumb
 3436              		.thumb_func
 3437              		.type	_ZN3DDA17ReduceHomingSpeedEv, %function
 3438              	_ZN3DDA17ReduceHomingSpeedEv:
 3439              		@ args = 0, pretend = 0, frame = 0
 3440              		@ frame_needed = 0, uses_anonymous_args = 0
 3441              		@ link register save eliminated.
 3442 0000 437A     		ldrb	r3, [r0, #9]	@ zero_extendqisi2
 3443 0002 1B07     		lsls	r3, r3, #28
 3444 0004 01D4     		bmi	.L690
 3445 0006 FFF7FEBF 		b	_ZN3DDA17ReduceHomingSpeedEv.part.10
 3446              	.L690:
 3447 000a 7047     		bx	lr
 3448              		.size	_ZN3DDA17ReduceHomingSpeedEv, .-_ZN3DDA17ReduceHomingSpeedEv
 3449              		.section	.text._ZNK3DDA12HasStepErrorEv,"ax",%progbits
 3450              		.align	2
 3451              		.global	_ZNK3DDA12HasStepErrorEv
 3452              		.thumb
 3453              		.thumb_func
 3454              		.type	_ZNK3DDA12HasStepErrorEv, %function
 3455              	_ZNK3DDA12HasStepErrorEv:
 3456              		@ args = 0, pretend = 0, frame = 0
 3457              		@ frame_needed = 0, uses_anonymous_args = 0
 3458              		@ link register save eliminated.
 3459 0000 0023     		movs	r3, #0
 3460              	.L694:
 3461 0002 C218     		adds	r2, r0, r3
 3462 0004 92F8D120 		ldrb	r2, [r2, #209]	@ zero_extendqisi2
 3463 0008 5033     		adds	r3, r3, #80
 3464 000a 022A     		cmp	r2, #2
 3465 000c 04D0     		beq	.L695
 3466 000e B3F5347F 		cmp	r3, #720
 3467 0012 F6D1     		bne	.L694
 3468 0014 0020     		movs	r0, #0
 3469 0016 7047     		bx	lr
 3470              	.L695:
 3471 0018 0120     		movs	r0, #1
 3472 001a 7047     		bx	lr
 3473              		.size	_ZNK3DDA12HasStepErrorEv, .-_ZNK3DDA12HasStepErrorEv
 3474              		.section	.rodata.str1.4,"aMS",%progbits,1
 3475              		.align	2
 3476              	.LC0:
 3477 0000 25733D00 		.ascii	"%s=\000"
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqUVOBO.s 			page 62


 3478              	.LC1:
 3479 0004 5D00     		.ascii	"]\000"
 3480 0006 0000     		.space	2
 3481              	.LC2:
 3482 0008 25632566 		.ascii	"%c%f\000"
 3482      00
 3483 000d 000000   		.space	3
 3484              	.LC3:
 3485 0010 4444413A 		.ascii	"DDA:\000"
 3485      00
 3486 0015 000000   		.space	3
 3487              	.LC4:
 3488 0018 20737461 		.ascii	" start\000"
 3488      727400
 3489 001f 00       		.space	1
 3490              	.LC5:
 3491 0020 20656E64 		.ascii	" end\000"
 3491      00
 3492 0025 000000   		.space	3
 3493              	.LC6:
 3494 0028 20643D25 		.ascii	" d=%f\000"
 3494      6600
 3495 002e 0000     		.space	2
 3496              	.LC7:
 3497 0030 20766563 		.ascii	" vec\000"
 3497      00
 3498 0035 000000   		.space	3
 3499              	.LC8:
 3500 0038 0A613D25 		.ascii	"\012a=%f reqv=%f topv=%f startv=%f endv=%f\012dacce"
 3500      66207265 
 3500      71763D25 
 3500      6620746F 
 3500      70763D25 
 3501 0065 6C3D2566 		.ascii	"l=%f ddecel=%f cks=%u\012\000"
 3501      20646465 
 3501      63656C3D 
 3501      25662063 
 3501      6B733D25 
 3502              	.LC9:
 3503 007c 52656375 		.ascii	"Recursion start %u\012\000"
 3503      7273696F 
 3503      6E207374 
 3503      61727420 
 3503      25750A00 
 3504              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 3505              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 3506              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 3507              	_ZL28cpu_irq_prev_interrupt_state:
 3508 0000 00       		.space	1
 3509              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 3510              		.align	2
 3511              		.type	_ZL32cpu_irq_critical_section_counter, %object
 3512              		.size	_ZL32cpu_irq_critical_section_counter, 4
 3513              	_ZL32cpu_irq_critical_section_counter:
 3514 0000 00000000 		.space	4
 3515              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
