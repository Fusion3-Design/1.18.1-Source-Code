ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 1


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
  15              		.file	"DDA.cpp"
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
  27 0000 90ED297A 		flds	s14, [r0, #164]
  28 0004 F0EE087A 		fconsts	s15, #8
  29 0008 C7EE277A 		fdivs	s15, s14, s15
  30 000c 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  31 0010 437A     		ldrb	r3, [r0, #9]	@ zero_extendqisi2
  32 0012 43F00803 		orr	r3, r3, #8
  33 0016 8046     		mov	r8, r0
  34 0018 4372     		strb	r3, [r0, #9]
  35 001a 00F1C004 		add	r4, r0, #192
  36 001e 00F57879 		add	r9, r0, #992
  37 0022 00F1BC07 		add	r7, r0, #188
  38 0026 C0ED297A 		fsts	s15, [r0, #164]
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
  52 0042 D8F8BC30 		ldr	r3, [r8, #188]
  53 0046 207E     		ldrb	r0, [r4, #24]	@ zero_extendqisi2
  54 0048 3946     		mov	r1, r7
  55 004a CBB1     		cbz	r3, .L3
  56 004c 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
  57 004e 8242     		cmp	r2, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 2


  58 0050 18BF     		it	ne
  59 0052 1D46     		movne	r5, r3
  60 0054 04D1     		bne	.L7
  61 0056 38E0     		b	.L26
  62              	.L9:
  63 0058 167E     		ldrb	r6, [r2, #24]	@ zero_extendqisi2
  64 005a 8642     		cmp	r6, r0
  65 005c 2DD0     		beq	.L6
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
  94 008c D8F8B830 		ldr	r3, [r8, #184]
  95 0090 D2F89000 		ldr	r0, [r2, #144]
  96 0094 D8F8B440 		ldr	r4, [r8, #180]
  97 0098 C01A     		subs	r0, r0, r3
  98 009a A042     		cmp	r0, r4
  99 009c 0BD2     		bcs	.L1
 100 009e 201A     		subs	r0, r4, r0
 101 00a0 FFF7FEFF 		bl	__aeabi_ui2d
 102 00a4 0246     		mov	r2, r0
 103 00a6 0B46     		mov	r3, r1
 104 00a8 FFF7FEFF 		bl	__aeabi_dadd
 105 00ac FFF7FEFF 		bl	__aeabi_d2uiz
 106 00b0 2044     		add	r0, r0, r4
 107 00b2 C8F8B400 		str	r0, [r8, #180]
 108              	.L1:
 109 00b6 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 110              	.L6:
 111 00ba 2C35     		adds	r5, r5, #44
 112              	.L4:
 113 00bc D36A     		ldr	r3, [r2, #44]
 114 00be 2B60     		str	r3, [r5]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 3


 115 00c0 D8F8BC30 		ldr	r3, [r8, #188]
 116 00c4 002B     		cmp	r3, #0
 117 00c6 CED1     		bne	.L8
 118 00c8 DAE7     		b	.L3
 119              	.L26:
 120 00ca 1A46     		mov	r2, r3
 121 00cc 3D46     		mov	r5, r7
 122 00ce F5E7     		b	.L4
 123              	.L28:
 124              		.align	2
 125              	.L27:
 126 00d0 00004040 		.word	1077936128
 127 00d4 00000940 		.word	1074331648
 128              		.size	_ZN3DDA17ReduceHomingSpeedEv.part.10, .-_ZN3DDA17ReduceHomingSpeedEv.part.10
 129              		.global	__aeabi_f2d
 130              		.section	.text._ZN3DDA10PrintMovesEv,"ax",%progbits
 131              		.align	2
 132              		.global	_ZN3DDA10PrintMovesEv
 133              		.thumb
 134              		.thumb_func
 135              		.type	_ZN3DDA10PrintMovesEv, %function
 136              	_ZN3DDA10PrintMovesEv:
 137              		@ args = 0, pretend = 0, frame = 0
 138              		@ frame_needed = 0, uses_anonymous_args = 0
 139 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 140 0004 1C4E     		ldr	r6, .L32
 141 0006 DFF87C80 		ldr	r8, .L32+12
 142 000a 3468     		ldr	r4, [r6]
 143 000c 1B4F     		ldr	r7, .L32+4
 144 000e 8DB0     		sub	sp, sp, #52
 145 0010 4FF48075 		mov	r5, #256
 146              	.L31:
 147 0014 04EB4404 		add	r4, r4, r4, lsl #1
 148 0018 08EBC404 		add	r4, r8, r4, lsl #3
 149 001c D7F80090 		ldr	r9, [r7]
 150 0020 2068     		ldr	r0, [r4]	@ float
 151 0022 FFF7FEFF 		bl	__aeabi_f2d
 152 0026 CDE90001 		strd	r0, [sp]
 153 002a 6068     		ldr	r0, [r4, #4]	@ float
 154 002c FFF7FEFF 		bl	__aeabi_f2d
 155 0030 CDE90201 		strd	r0, [sp, #8]
 156 0034 A068     		ldr	r0, [r4, #8]	@ float
 157 0036 FFF7FEFF 		bl	__aeabi_f2d
 158 003a CDE90401 		strd	r0, [sp, #16]
 159 003e E068     		ldr	r0, [r4, #12]	@ float
 160 0040 FFF7FEFF 		bl	__aeabi_f2d
 161 0044 CDE90601 		strd	r0, [sp, #24]
 162 0048 2069     		ldr	r0, [r4, #16]	@ float
 163 004a FFF7FEFF 		bl	__aeabi_f2d
 164 004e CDE90801 		strd	r0, [sp, #32]
 165 0052 6069     		ldr	r0, [r4, #20]	@ float
 166 0054 FFF7FEFF 		bl	__aeabi_f2d
 167 0058 094A     		ldr	r2, .L32+8
 168 005a CDE90A01 		strd	r0, [sp, #40]
 169 005e 4846     		mov	r0, r9
 170 0060 0321     		movs	r1, #3
 171 0062 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 4


 172 0066 3468     		ldr	r4, [r6]
 173 0068 0134     		adds	r4, r4, #1
 174 006a E4B2     		uxtb	r4, r4
 175 006c 013D     		subs	r5, r5, #1
 176 006e 3460     		str	r4, [r6]
 177 0070 D0D1     		bne	.L31
 178 0072 0DB0     		add	sp, sp, #52
 179              		@ sp needed
 180 0074 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 181              	.L33:
 182              		.align	2
 183              	.L32:
 184 0078 00000000 		.word	.LANCHOR0
 185 007c 00000000 		.word	reprap
 186 0080 00000000 		.word	.LC0
 187 0084 00000000 		.word	.LANCHOR1
 188              		.size	_ZN3DDA10PrintMovesEv, .-_ZN3DDA10PrintMovesEv
 189              		.section	.text._ZN3DDA16LogProbePositionEv,"ax",%progbits
 190              		.align	2
 191              		.global	_ZN3DDA16LogProbePositionEv
 192              		.thumb
 193              		.thumb_func
 194              		.type	_ZN3DDA16LogProbePositionEv, %function
 195              	_ZN3DDA16LogProbePositionEv:
 196              		@ args = 0, pretend = 0, frame = 0
 197              		@ frame_needed = 0, uses_anonymous_args = 0
 198              		@ link register save eliminated.
 199 0000 2DE9F001 		push	{r4, r5, r6, r7, r8}
 200 0004 1D4D     		ldr	r5, .L47
 201 0006 2968     		ldr	r1, [r5]
 202 0008 2729     		cmp	r1, #39
 203 000a 15D8     		bhi	.L34
 204 000c 1C4B     		ldr	r3, .L47+4
 205 000e 01EB4106 		add	r6, r1, r1, lsl #1
 206 0012 03EB8606 		add	r6, r3, r6, lsl #2
 207 0016 0246     		mov	r2, r0
 208 0018 0023     		movs	r3, #0
 209              	.L44:
 210 001a 90F8D940 		ldrb	r4, [r0, #217]	@ zero_extendqisi2
 211 001e 012C     		cmp	r4, #1
 212 0020 0DD0     		beq	.L46
 213 0022 1469     		ldr	r4, [r2, #16]
 214 0024 F450     		str	r4, [r6, r3]
 215              	.L42:
 216 0026 0433     		adds	r3, r3, #4
 217 0028 0C2B     		cmp	r3, #12
 218 002a 00F15000 		add	r0, r0, #80
 219 002e 02F10402 		add	r2, r2, #4
 220 0032 F2D1     		bne	.L44
 221 0034 0131     		adds	r1, r1, #1
 222 0036 2960     		str	r1, [r5]
 223              	.L34:
 224 0038 BDE8F001 		pop	{r4, r5, r6, r7, r8}
 225 003c 7047     		bx	lr
 226              	.L46:
 227 003e D0F8DC40 		ldr	r4, [r0, #220]
 228 0042 D0F8E070 		ldr	r7, [r0, #224]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 5


 229 0046 D2F810C0 		ldr	ip, [r2, #16]
 230 004a BC42     		cmp	r4, r7
 231 004c 0DD3     		bcc	.L37
 232 004e D0F8D470 		ldr	r7, [r0, #212]
 233              	.L38:
 234 0052 B846     		mov	r8, r7
 235              	.L40:
 236 0054 90F8DA70 		ldrb	r7, [r0, #218]	@ zero_extendqisi2
 237 0058 C4F10104 		rsb	r4, r4, #1
 238 005c 4444     		add	r4, r4, r8
 239 005e 07B9     		cbnz	r7, .L41
 240 0060 6442     		negs	r4, r4
 241              	.L41:
 242 0062 C4EB0C04 		rsb	r4, r4, ip
 243 0066 F450     		str	r4, [r6, r3]
 244 0068 DDE7     		b	.L42
 245              	.L37:
 246 006a D0F8D480 		ldr	r8, [r0, #212]
 247 006e 4745     		cmp	r7, r8
 248 0070 01D3     		bcc	.L39
 249 0072 4746     		mov	r7, r8
 250 0074 EDE7     		b	.L38
 251              	.L39:
 252 0076 C8EB4708 		rsb	r8, r8, r7, lsl #1
 253 007a EBE7     		b	.L40
 254              	.L48:
 255              		.align	2
 256              	.L47:
 257 007c 00000000 		.word	.LANCHOR2
 258 0080 00000000 		.word	.LANCHOR3
 259              		.size	_ZN3DDA16LogProbePositionEv, .-_ZN3DDA16LogProbePositionEv
 260              		.section	.text._ZN3DDAC2EPS_,"ax",%progbits
 261              		.align	2
 262              		.global	_ZN3DDAC2EPS_
 263              		.thumb
 264              		.thumb_func
 265              		.type	_ZN3DDAC2EPS_, %function
 266              	_ZN3DDAC2EPS_:
 267              		@ args = 0, pretend = 0, frame = 0
 268              		@ frame_needed = 0, uses_anonymous_args = 0
 269 0000 10B5     		push	{r4, lr}
 270 0002 0023     		movs	r3, #0
 271 0004 80E80A00 		stmia	r0, {r1, r3}
 272 0008 0446     		mov	r4, r0
 273 000a 0372     		strb	r3, [r0, #8]
 274 000c 1946     		mov	r1, r3
 275 000e 4FF44872 		mov	r2, #800
 276 0012 C030     		adds	r0, r0, #192
 277 0014 FFF7FEFF 		bl	memset
 278 0018 2046     		mov	r0, r4
 279 001a 10BD     		pop	{r4, pc}
 280              		.size	_ZN3DDAC2EPS_, .-_ZN3DDAC2EPS_
 281              		.global	_ZN3DDAC1EPS_
 282              		.thumb_set _ZN3DDAC1EPS_,_ZN3DDAC2EPS_
 283              		.section	.text._ZNK3DDA11GetTimeLeftEv,"ax",%progbits
 284              		.align	2
 285              		.global	_ZNK3DDA11GetTimeLeftEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 6


 286              		.thumb
 287              		.thumb_func
 288              		.type	_ZNK3DDA11GetTimeLeftEv, %function
 289              	_ZNK3DDA11GetTimeLeftEv:
 290              		@ args = 0, pretend = 0, frame = 0
 291              		@ frame_needed = 0, uses_anonymous_args = 0
 292              		@ link register save eliminated.
 293 0000 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 294 0002 042B     		cmp	r3, #4
 295 0004 0FD0     		beq	.L53
 296 0006 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 297 0008 032B     		cmp	r3, #3
 298 000a 02D0     		beq	.L54
 299 000c D0F8B400 		ldr	r0, [r0, #180]
 300 0010 7047     		bx	lr
 301              	.L54:
 302 0012 064B     		ldr	r3, .L55
 303 0014 D0F8B410 		ldr	r1, [r0, #180]
 304 0018 D0F8B820 		ldr	r2, [r0, #184]
 305 001c D3F89030 		ldr	r3, [r3, #144]
 306 0020 8818     		adds	r0, r1, r2
 307 0022 C01A     		subs	r0, r0, r3
 308 0024 7047     		bx	lr
 309              	.L53:
 310 0026 0020     		movs	r0, #0
 311 0028 7047     		bx	lr
 312              	.L56:
 313 002a 00BF     		.align	2
 314              	.L55:
 315 002c 00000940 		.word	1074331648
 316              		.size	_ZNK3DDA11GetTimeLeftEv, .-_ZNK3DDA11GetTimeLeftEv
 317              		.section	.text._ZN3DDA8RemoveDMEj,"ax",%progbits
 318              		.align	2
 319              		.global	_ZN3DDA8RemoveDMEj
 320              		.thumb
 321              		.thumb_func
 322              		.type	_ZN3DDA8RemoveDMEj, %function
 323              	_ZN3DDA8RemoveDMEj:
 324              		@ args = 0, pretend = 0, frame = 0
 325              		@ frame_needed = 0, uses_anonymous_args = 0
 326              		@ link register save eliminated.
 327 0000 D0F8BC30 		ldr	r3, [r0, #188]
 328 0004 83B1     		cbz	r3, .L64
 329 0006 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 330 0008 8A42     		cmp	r2, r1
 331 000a 04D1     		bne	.L62
 332 000c 0EE0     		b	.L66
 333              	.L63:
 334 000e 027E     		ldrb	r2, [r0, #24]	@ zero_extendqisi2
 335 0010 8A42     		cmp	r2, r1
 336 0012 04D0     		beq	.L61
 337 0014 0346     		mov	r3, r0
 338              	.L62:
 339 0016 D86A     		ldr	r0, [r3, #44]
 340 0018 0028     		cmp	r0, #0
 341 001a F8D1     		bne	.L63
 342 001c 7047     		bx	lr
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 7


 343              	.L61:
 344 001e 03F12C02 		add	r2, r3, #44
 345              	.L60:
 346 0022 C36A     		ldr	r3, [r0, #44]
 347 0024 1360     		str	r3, [r2]
 348 0026 7047     		bx	lr
 349              	.L64:
 350 0028 1846     		mov	r0, r3
 351 002a 7047     		bx	lr
 352              	.L66:
 353 002c 00F1BC02 		add	r2, r0, #188
 354 0030 1846     		mov	r0, r3
 355 0032 F6E7     		b	.L60
 356              		.size	_ZN3DDA8RemoveDMEj, .-_ZN3DDA8RemoveDMEj
 357              		.section	.text._ZNK3DDA16DebugPrintVectorEPKcPKfj,"ax",%progbits
 358              		.align	2
 359              		.global	_ZNK3DDA16DebugPrintVectorEPKcPKfj
 360              		.thumb
 361              		.thumb_func
 362              		.type	_ZNK3DDA16DebugPrintVectorEPKcPKfj, %function
 363              	_ZNK3DDA16DebugPrintVectorEPKcPKfj:
 364              		@ args = 0, pretend = 0, frame = 0
 365              		@ frame_needed = 0, uses_anonymous_args = 0
 366 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 367 0002 0E48     		ldr	r0, .L73
 368 0004 1F46     		mov	r7, r3
 369 0006 1546     		mov	r5, r2
 370 0008 0024     		movs	r4, #0
 371 000a FFF7FEFF 		bl	debugPrintf
 372 000e 87B1     		cbz	r7, .L70
 373              	.L71:
 374 0010 002C     		cmp	r4, #0
 375 0012 55F8040B 		ldr	r0, [r5], #4	@ float
 376 0016 14BF     		ite	ne
 377 0018 2026     		movne	r6, #32
 378 001a 5B26     		moveq	r6, #91
 379 001c FFF7FEFF 		bl	__aeabi_f2d
 380 0020 0134     		adds	r4, r4, #1
 381 0022 0246     		mov	r2, r0
 382 0024 0B46     		mov	r3, r1
 383 0026 0648     		ldr	r0, .L73+4
 384 0028 3146     		mov	r1, r6
 385 002a FFF7FEFF 		bl	debugPrintf
 386 002e BC42     		cmp	r4, r7
 387 0030 EED1     		bne	.L71
 388              	.L70:
 389 0032 0448     		ldr	r0, .L73+8
 390 0034 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 391 0038 FFF7FEBF 		b	debugPrintf
 392              	.L74:
 393              		.align	2
 394              	.L73:
 395 003c 14000000 		.word	.LC1
 396 0040 1C000000 		.word	.LC3
 397 0044 18000000 		.word	.LC2
 398              		.size	_ZNK3DDA16DebugPrintVectorEPKcPKfj, .-_ZNK3DDA16DebugPrintVectorEPKcPKfj
 399              		.section	.text._ZNK3DDA10DebugPrintEv,"ax",%progbits
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 8


 400              		.align	2
 401              		.global	_ZNK3DDA10DebugPrintEv
 402              		.thumb
 403              		.thumb_func
 404              		.type	_ZNK3DDA10DebugPrintEv, %function
 405              	_ZNK3DDA10DebugPrintEv:
 406              		@ args = 0, pretend = 0, frame = 24
 407              		@ frame_needed = 0, uses_anonymous_args = 0
 408 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 409 0004 534B     		ldr	r3, .L95
 410 0006 0746     		mov	r7, r0
 411 0008 1B69     		ldr	r3, [r3, #16]
 412 000a 5348     		ldr	r0, .L95+4
 413 000c D3F8B061 		ldr	r6, [r3, #432]
 414 0010 94B0     		sub	sp, sp, #80
 415 0012 FFF7FEFF 		bl	debugPrintf
 416 0016 7B7A     		ldrb	r3, [r7, #9]	@ zero_extendqisi2
 417 0018 DB07     		lsls	r3, r3, #31
 418 001a 75D4     		bmi	.L93
 419 001c 07F16004 		add	r4, r7, #96
 420              	.L76:
 421 0020 D7F88800 		ldr	r0, [r7, #136]	@ float
 422 0024 FFF7FEFF 		bl	__aeabi_f2d
 423 0028 0246     		mov	r2, r0
 424 002a 0B46     		mov	r3, r1
 425 002c 4B48     		ldr	r0, .L95+8
 426 002e FFF7FEFF 		bl	debugPrintf
 427 0032 2246     		mov	r2, r4
 428 0034 0523     		movs	r3, #5
 429 0036 3846     		mov	r0, r7
 430 0038 4949     		ldr	r1, .L95+12
 431 003a FFF7FEFF 		bl	_ZNK3DDA16DebugPrintVectorEPKcPKfj
 432 003e D7F88C00 		ldr	r0, [r7, #140]	@ float
 433 0042 FFF7FEFF 		bl	__aeabi_f2d
 434 0046 0446     		mov	r4, r0
 435 0048 D7F89000 		ldr	r0, [r7, #144]	@ float
 436 004c 0D46     		mov	r5, r1
 437 004e FFF7FEFF 		bl	__aeabi_f2d
 438 0052 CDE90001 		strd	r0, [sp]
 439 0056 D7F8A400 		ldr	r0, [r7, #164]	@ float
 440 005a FFF7FEFF 		bl	__aeabi_f2d
 441 005e CDE90201 		strd	r0, [sp, #8]
 442 0062 D7F89C00 		ldr	r0, [r7, #156]	@ float
 443 0066 FFF7FEFF 		bl	__aeabi_f2d
 444 006a CDE90401 		strd	r0, [sp, #16]
 445 006e D7F8A000 		ldr	r0, [r7, #160]	@ float
 446 0072 FFF7FEFF 		bl	__aeabi_f2d
 447 0076 CDE90601 		strd	r0, [sp, #24]
 448 007a D7F8A800 		ldr	r0, [r7, #168]	@ float
 449 007e FFF7FEFF 		bl	__aeabi_f2d
 450 0082 CDE90801 		strd	r0, [sp, #32]
 451 0086 D7F8AC00 		ldr	r0, [r7, #172]	@ float
 452 008a FFF7FEFF 		bl	__aeabi_f2d
 453 008e D7F8B430 		ldr	r3, [r7, #180]
 454 0092 0C93     		str	r3, [sp, #48]
 455 0094 CDE90A01 		strd	r0, [sp, #40]
 456 0098 2246     		mov	r2, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 9


 457 009a 2B46     		mov	r3, r5
 458 009c 3148     		ldr	r0, .L95+16
 459 009e FFF7FEFF 		bl	debugPrintf
 460 00a2 96B1     		cbz	r6, .L84
 461 00a4 304C     		ldr	r4, .L95+20
 462 00a6 07F1C005 		add	r5, r7, #192
 463 00aa 06EB0408 		add	r8, r6, r4
 464              	.L83:
 465 00ae 7A7A     		ldrb	r2, [r7, #9]	@ zero_extendqisi2
 466 00b0 14F8011B 		ldrb	r1, [r4], #1	@ zero_extendqisi2
 467 00b4 2846     		mov	r0, r5
 468 00b6 C2F34002 		ubfx	r2, r2, #1, #1
 469 00ba FFF7FEFF 		bl	_ZNK13DriveMovement10DebugPrintEcb
 470 00be 4445     		cmp	r4, r8
 471 00c0 05F15005 		add	r5, r5, #80
 472 00c4 F3D1     		bne	.L83
 473 00c6 092E     		cmp	r6, #9
 474 00c8 1BD8     		bhi	.L75
 475              	.L84:
 476 00ca 06EB8604 		add	r4, r6, r6, lsl #2
 477 00ce 07EB0414 		add	r4, r7, r4, lsl #4
 478 00d2 C034     		adds	r4, r4, #192
 479 00d4 3025     		movs	r5, #48
 480 00d6 05E0     		b	.L81
 481              	.L85:
 482 00d8 0135     		adds	r5, r5, #1
 483 00da 092E     		cmp	r6, #9
 484 00dc EDB2     		uxtb	r5, r5
 485 00de 04F15004 		add	r4, r4, #80
 486 00e2 0ED8     		bhi	.L75
 487              	.L81:
 488 00e4 637E     		ldrb	r3, [r4, #25]	@ zero_extendqisi2
 489 00e6 0136     		adds	r6, r6, #1
 490 00e8 002B     		cmp	r3, #0
 491 00ea F5D0     		beq	.L85
 492 00ec 2046     		mov	r0, r4
 493 00ee 2946     		mov	r1, r5
 494 00f0 0022     		movs	r2, #0
 495 00f2 FFF7FEFF 		bl	_ZNK13DriveMovement10DebugPrintEcb
 496 00f6 0135     		adds	r5, r5, #1
 497 00f8 092E     		cmp	r6, #9
 498 00fa EDB2     		uxtb	r5, r5
 499 00fc 04F15004 		add	r4, r4, #80
 500 0100 F0D9     		bls	.L81
 501              	.L75:
 502 0102 14B0     		add	sp, sp, #80
 503              		@ sp needed
 504 0104 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 505              	.L93:
 506 0108 06B3     		cbz	r6, .L94
 507 010a 0EAA     		add	r2, sp, #56
 508 010c 07F16004 		add	r4, r7, #96
 509 0110 D7ED226A 		flds	s13, [r7, #136]
 510 0114 2146     		mov	r1, r4
 511 0116 1346     		mov	r3, r2
 512 0118 02EB8605 		add	r5, r2, r6, lsl #2
 513              	.L79:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 10


 514 011c 91ED007A 		flds	s14, [r1]
 515 0120 51ED0A7A 		flds	s15, [r1, #-40]
 516 0124 E7EE667A 		vfms.f32	s15, s14, s13
 517 0128 0431     		adds	r1, r1, #4
 518 012a E3EC017A 		fstmias	r3!, {s15}
 519 012e AB42     		cmp	r3, r5
 520 0130 F4D1     		bne	.L79
 521              	.L78:
 522 0132 3846     		mov	r0, r7
 523 0134 3346     		mov	r3, r6
 524 0136 0D49     		ldr	r1, .L95+24
 525 0138 FFF7FEFF 		bl	_ZNK3DDA16DebugPrintVectorEPKcPKfj
 526 013c 3846     		mov	r0, r7
 527 013e 0C49     		ldr	r1, .L95+28
 528 0140 07F13802 		add	r2, r7, #56
 529 0144 3346     		mov	r3, r6
 530 0146 FFF7FEFF 		bl	_ZNK3DDA16DebugPrintVectorEPKcPKfj
 531 014a 69E7     		b	.L76
 532              	.L94:
 533 014c 0EAA     		add	r2, sp, #56
 534 014e 07F16004 		add	r4, r7, #96
 535 0152 EEE7     		b	.L78
 536              	.L96:
 537              		.align	2
 538              	.L95:
 539 0154 00000000 		.word	reprap
 540 0158 24000000 		.word	.LC4
 541 015c 3C000000 		.word	.LC7
 542 0160 44000000 		.word	.LC8
 543 0164 4C000000 		.word	.LC9
 544 0168 00000000 		.word	_ZN6GCodes11axisLettersE
 545 016c 2C000000 		.word	.LC5
 546 0170 34000000 		.word	.LC6
 547              		.size	_ZNK3DDA10DebugPrintEv, .-_ZNK3DDA10DebugPrintEv
 548              		.section	.text._ZN3DDA4InitEv,"ax",%progbits
 549              		.align	2
 550              		.global	_ZN3DDA4InitEv
 551              		.thumb
 552              		.thumb_func
 553              		.type	_ZN3DDA4InitEv, %function
 554              	_ZN3DDA4InitEv:
 555              		@ args = 0, pretend = 0, frame = 0
 556              		@ frame_needed = 0, uses_anonymous_args = 0
 557              		@ link register save eliminated.
 558 0000 10B4     		push	{r4}
 559 0002 0023     		movs	r3, #0
 560 0004 0246     		mov	r2, r0
 561 0006 1946     		mov	r1, r3
 562              	.L99:
 563 0008 C418     		adds	r4, r0, r3
 564 000a 0433     		adds	r3, r3, #4
 565 000c 282B     		cmp	r3, #40
 566 000e 2161     		str	r1, [r4, #16]
 567 0010 02F15002 		add	r2, r2, #80
 568 0014 82F88910 		strb	r1, [r2, #137]
 569 0018 4FF00004 		mov	r4, #0
 570 001c F4D1     		bne	.L99
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 11


 571 001e 437A     		ldrb	r3, [r0, #9]	@ zero_extendqisi2
 572 0020 0472     		strb	r4, [r0, #8]
 573 0022 64F30003 		bfi	r3, r4, #0, #1
 574 0026 4372     		strb	r3, [r0, #9]
 575 0028 5DF8044B 		ldr	r4, [sp], #4
 576 002c 7047     		bx	lr
 577              		.size	_ZN3DDA4InitEv, .-_ZN3DDA4InitEv
 578 002e 00BF     		.section	.text._ZNK3DDA16GetMotorPositionEj,"ax",%progbits
 579              		.align	2
 580              		.global	_ZNK3DDA16GetMotorPositionEj
 581              		.thumb
 582              		.thumb_func
 583              		.type	_ZNK3DDA16GetMotorPositionEj, %function
 584              	_ZNK3DDA16GetMotorPositionEj:
 585              		@ args = 0, pretend = 0, frame = 0
 586              		@ frame_needed = 0, uses_anonymous_args = 0
 587              		@ link register save eliminated.
 588 0000 0B1D     		adds	r3, r1, #4
 589 0002 50F82300 		ldr	r0, [r0, r3, lsl #2]
 590 0006 FFF7FEBF 		b	_ZN4Move23MotorEndpointToPositionElj
 591              		.size	_ZNK3DDA16GetMotorPositionEj, .-_ZNK3DDA16GetMotorPositionEj
 592              		.global	__aeabi_ddiv
 593              		.global	__aeabi_d2f
 594              		.global	__aeabi_dmul
 595 000a 00BF     		.section	.text._ZN3DDA15RecalculateMoveEv,"ax",%progbits
 596              		.align	2
 597              		.global	_ZN3DDA15RecalculateMoveEv
 598              		.thumb
 599              		.thumb_func
 600              		.type	_ZN3DDA15RecalculateMoveEv, %function
 601              	_ZN3DDA15RecalculateMoveEv:
 602              		@ args = 0, pretend = 0, frame = 0
 603              		@ frame_needed = 0, uses_anonymous_args = 0
 604 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 605 0004 2DED088B 		fstmfdd	sp!, {d8, d9, d10, d11}
 606 0008 D0ED23BA 		flds	s23, [r0, #140]
 607 000c 90ED248A 		flds	s16, [r0, #144]
 608 0010 D0ED278A 		flds	s17, [r0, #156]
 609 0014 8046     		mov	r8, r0
 610 0016 1BEE900A 		fmrs	r0, s23
 611 001a FFF7FEFF 		bl	__aeabi_f2d
 612 001e 68EEA8AA 		fmuls	s21, s17, s17
 613 0022 0246     		mov	r2, r0
 614 0024 0B46     		mov	r3, r1
 615 0026 FFF7FEFF 		bl	__aeabi_dadd
 616 002a F0EE6A7A 		fcpys	s15, s21
 617 002e D8EE087A 		vfnms.f32	s15, s16, s16
 618 0032 0446     		mov	r4, r0
 619 0034 0D46     		mov	r5, r1
 620 0036 17EE900A 		fmrs	r0, s15
 621 003a FFF7FEFF 		bl	__aeabi_f2d
 622 003e 2246     		mov	r2, r4
 623 0040 2B46     		mov	r3, r5
 624 0042 FFF7FEFF 		bl	__aeabi_ddiv
 625 0046 FFF7FEFF 		bl	__aeabi_d2f
 626 004a 98ED289A 		flds	s18, [r8, #160]
 627 004e C8F8A800 		str	r0, [r8, #168]	@ float
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 12


 628 0052 29EE09BA 		fmuls	s22, s18, s18
 629 0056 0AEE100A 		fmsr	s20, r0
 630 005a F0EE4B7A 		fcpys	s15, s22
 631 005e D8EE087A 		vfnms.f32	s15, s16, s16
 632 0062 17EE900A 		fmrs	r0, s15
 633 0066 FFF7FEFF 		bl	__aeabi_f2d
 634 006a 2246     		mov	r2, r4
 635 006c 2B46     		mov	r3, r5
 636 006e FFF7FEFF 		bl	__aeabi_ddiv
 637 0072 FFF7FEFF 		bl	__aeabi_d2f
 638 0076 07EE900A 		fmsr	s15, r0
 639 007a D8ED229A 		flds	s19, [r8, #136]
 640 007e C8F8AC00 		str	r0, [r8, #172]	@ float
 641 0082 3AEE27AA 		fadds	s20, s20, s15
 642 0086 B4EEE9AA 		fcmpes	s20, s19
 643 008a F1EE10FA 		fmstat
 644 008e 53DB     		blt	.L130
 645 0090 6BEEA9BA 		fmuls	s23, s23, s19
 646 0094 9FED60AA 		flds	s20, .L136
 647 0098 1BEE900A 		fmrs	r0, s23
 648 009c FFF7FEFF 		bl	__aeabi_f2d
 649 00a0 7AEE8B7A 		fadds	s15, s21, s22
 650 00a4 0646     		mov	r6, r0
 651 00a6 17EE900A 		fmrs	r0, s15
 652 00aa 0F46     		mov	r7, r1
 653 00ac FFF7FEFF 		bl	__aeabi_f2d
 654 00b0 0022     		movs	r2, #0
 655 00b2 5A4B     		ldr	r3, .L136+4
 656 00b4 FFF7FEFF 		bl	__aeabi_dmul
 657 00b8 0246     		mov	r2, r0
 658 00ba 0B46     		mov	r3, r1
 659 00bc 3046     		mov	r0, r6
 660 00be 3946     		mov	r1, r7
 661 00c0 FFF7FEFF 		bl	__aeabi_dadd
 662 00c4 FFF7FEFF 		bl	__aeabi_d2f
 663 00c8 08EE100A 		fmsr	s16, r0
 664 00cc B4EECA8A 		fcmpes	s16, s20
 665 00d0 F1EE10FA 		fmstat
 666 00d4 69DB     		blt	.L131
 667 00d6 78EE6AAA 		fsubs	s21, s16, s21
 668 00da 1AEE900A 		fmrs	r0, s21
 669 00de FFF7FEFF 		bl	__aeabi_f2d
 670 00e2 2246     		mov	r2, r4
 671 00e4 2B46     		mov	r3, r5
 672 00e6 FFF7FEFF 		bl	__aeabi_ddiv
 673 00ea FFF7FEFF 		bl	__aeabi_d2f
 674 00ee 07EE900A 		fmsr	s15, r0
 675 00f2 F4EE677A 		fcmps	s15, s15
 676 00f6 F1EE10FA 		fmstat
 677 00fa 06D6     		bvs	.L107
 678 00fc F4EECA7A 		fcmpes	s15, s20
 679 0100 F1EE10FA 		fmstat
 680 0104 D8BF     		it	le
 681 0106 F0EE4A7A 		fcpysle	s15, s20
 682              	.L107:
 683 010a B1EEC87A 		fsqrts	s14, s16
 684 010e 79EEE79A 		fsubs	s19, s19, s15
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 13


 685 0112 B4EE477A 		fcmps	s14, s14
 686 0116 F1EE10FA 		fmstat
 687 011a C8ED2A7A 		fsts	s15, [r8, #168]
 688 011e C8ED2B9A 		fsts	s19, [r8, #172]
 689 0122 71D1     		bne	.L134
 690              	.L109:
 691 0124 98F80930 		ldrb	r3, [r8, #9]	@ zero_extendqisi2
 692 0128 88ED297A 		fsts	s14, [r8, #164]
 693 012c 5B07     		lsls	r3, r3, #29
 694 012e 09D4     		bmi	.L135
 695              	.L102:
 696 0130 BDEC088B 		fldmfdd	sp!, {d8-d11}
 697 0134 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 698              	.L130:
 699 0138 88ED298A 		fsts	s16, [r8, #164]
 700              	.L110:
 701 013c 98F80930 		ldrb	r3, [r8, #9]	@ zero_extendqisi2
 702 0140 5B07     		lsls	r3, r3, #29
 703 0142 F5D5     		bpl	.L102
 704              	.L135:
 705 0144 D8ED287A 		flds	s15, [r8, #160]
 706 0148 F5EE407A 		fcmpzs	s15
 707 014c F1EE10FA 		fmstat
 708 0150 EED0     		beq	.L102
 709 0152 334B     		ldr	r3, .L136+8
 710 0154 4546     		mov	r5, r8
 711 0156 1F68     		ldr	r7, [r3]
 712 0158 08F16006 		add	r6, r8, #96
 713 015c 0024     		movs	r4, #0
 714 015e 04E0     		b	.L117
 715              	.L114:
 716 0160 0134     		adds	r4, r4, #1
 717 0162 0A2C     		cmp	r4, #10
 718 0164 06F10406 		add	r6, r6, #4
 719 0168 E2D0     		beq	.L102
 720              	.L117:
 721 016a 95F8D930 		ldrb	r3, [r5, #217]	@ zero_extendqisi2
 722 016e 012B     		cmp	r3, #1
 723 0170 05F15005 		add	r5, r5, #80
 724 0174 F4D1     		bne	.L114
 725 0176 96ED008A 		flds	s16, [r6]
 726 017a D8ED287A 		flds	s15, [r8, #160]
 727 017e B0EEC88A 		fabss	s16, s16
 728 0182 3846     		mov	r0, r7
 729 0184 2146     		mov	r1, r4
 730 0186 28EE278A 		fmuls	s16, s16, s15
 731 018a FFF7FEFF 		bl	_ZNK8Platform15ActualInstantDvEj
 732 018e 07EE900A 		fmsr	s15, r0
 733 0192 B4EEE78A 		fcmpes	s16, s15
 734 0196 F1EE10FA 		fmstat
 735 019a E1DD     		ble	.L114
 736 019c 98F80930 		ldrb	r3, [r8, #9]	@ zero_extendqisi2
 737 01a0 6FF38203 		bfc	r3, #2, #1
 738 01a4 88F80930 		strb	r3, [r8, #9]
 739 01a8 C2E7     		b	.L102
 740              	.L131:
 741 01aa F4EEC98A 		fcmpes	s17, s18
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 14


 742 01ae F1EE10FA 		fmstat
 743 01b2 20D5     		bpl	.L132
 744 01b4 3BEE6ABA 		fsubs	s22, s22, s21
 745 01b8 C8ED2A9A 		fsts	s19, [r8, #168]
 746 01bc 88ED2BAA 		fsts	s20, [r8, #172]
 747 01c0 88ED299A 		fsts	s18, [r8, #164]
 748              	.L133:
 749 01c4 1BEE100A 		fmrs	r0, s22
 750 01c8 FFF7FEFF 		bl	__aeabi_f2d
 751 01cc 0446     		mov	r4, r0
 752 01ce 19EE900A 		fmrs	r0, s19
 753 01d2 0D46     		mov	r5, r1
 754 01d4 FFF7FEFF 		bl	__aeabi_f2d
 755 01d8 0246     		mov	r2, r0
 756 01da 0B46     		mov	r3, r1
 757 01dc FFF7FEFF 		bl	__aeabi_dadd
 758 01e0 0246     		mov	r2, r0
 759 01e2 0B46     		mov	r3, r1
 760 01e4 2046     		mov	r0, r4
 761 01e6 2946     		mov	r1, r5
 762 01e8 FFF7FEFF 		bl	__aeabi_ddiv
 763 01ec FFF7FEFF 		bl	__aeabi_d2f
 764 01f0 C8F88C00 		str	r0, [r8, #140]	@ float
 765 01f4 A2E7     		b	.L110
 766              	.L132:
 767 01f6 88ED2AAA 		fsts	s20, [r8, #168]
 768 01fa C8ED2B9A 		fsts	s19, [r8, #172]
 769 01fe C8ED298A 		fsts	s17, [r8, #164]
 770 0202 3AEECBBA 		fsubs	s22, s21, s22
 771 0206 DDE7     		b	.L133
 772              	.L134:
 773 0208 18EE100A 		fmrs	r0, s16
 774 020c FFF7FEFF 		bl	sqrtf
 775 0210 07EE100A 		fmsr	s14, r0
 776 0214 86E7     		b	.L109
 777              	.L137:
 778 0216 00BF     		.align	2
 779              	.L136:
 780 0218 00000000 		.word	0
 781 021c 0000E03F 		.word	1071644672
 782 0220 00000000 		.word	reprap
 783              		.size	_ZN3DDA15RecalculateMoveEv, .-_ZN3DDA15RecalculateMoveEv
 784              		.section	.text._ZN3DDA13CalcNewSpeedsEv,"ax",%progbits
 785              		.align	2
 786              		.global	_ZN3DDA13CalcNewSpeedsEv
 787              		.thumb
 788              		.thumb_func
 789              		.type	_ZN3DDA13CalcNewSpeedsEv, %function
 790              	_ZN3DDA13CalcNewSpeedsEv:
 791              		@ args = 0, pretend = 0, frame = 0
 792              		@ frame_needed = 0, uses_anonymous_args = 0
 793 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 794 0002 0024     		movs	r4, #0
 795 0004 2DED048B 		fstmfdd	sp!, {d8, d9}
 796 0008 0546     		mov	r5, r0
 797 000a 2746     		mov	r7, r4
 798 000c 00E0     		b	.L139
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 15


 799              	.L141:
 800 000e 0134     		adds	r4, r4, #1
 801              	.L139:
 802 0010 092C     		cmp	r4, #9
 803 0012 5DD8     		bhi	.L165
 804              	.L152:
 805 0014 04EB8403 		add	r3, r4, r4, lsl #2
 806 0018 1B01     		lsls	r3, r3, #4
 807 001a C033     		adds	r3, r3, #192
 808 001c E918     		adds	r1, r5, r3
 809 001e 2A68     		ldr	r2, [r5]
 810 0020 487E     		ldrb	r0, [r1, #25]	@ zero_extendqisi2
 811 0022 04F11801 		add	r1, r4, #24
 812 0026 8900     		lsls	r1, r1, #2
 813 0028 5618     		adds	r6, r2, r1
 814 002a 0128     		cmp	r0, #1
 815 002c 2944     		add	r1, r1, r5
 816 002e 1344     		add	r3, r3, r2
 817 0030 D1ED008A 		flds	s17, [r1]
 818 0034 96ED008A 		flds	s16, [r6]
 819 0038 02D0     		beq	.L140
 820 003a 5B7E     		ldrb	r3, [r3, #25]	@ zero_extendqisi2
 821 003c 012B     		cmp	r3, #1
 822 003e E6D1     		bne	.L141
 823              	.L140:
 824 0040 474B     		ldr	r3, .L167+8
 825 0042 95ED289A 		flds	s18, [r5, #160]
 826 0046 D5ED2C9A 		flds	s19, [r5, #176]
 827 004a 1868     		ldr	r0, [r3]
 828 004c 2146     		mov	r1, r4
 829 004e FFF7FEFF 		bl	_ZNK8Platform15ActualInstantDvEj
 830 0052 28EE899A 		fmuls	s18, s17, s18
 831 0056 68EE299A 		fmuls	s19, s16, s19
 832 005a 07EE100A 		fmsr	s14, r0
 833 005e 79EE697A 		fsubs	s15, s18, s19
 834 0062 F0EEE77A 		fabss	s15, s15
 835 0066 F4EEC77A 		fcmpes	s15, s14
 836 006a F1EE10FA 		fmstat
 837 006e CEDD     		ble	.L141
 838 0070 FFF7FEFF 		bl	__aeabi_f2d
 839 0074 38A3     		adr	r3, .L167
 840 0076 D3E90023 		ldrd	r2, [r3]
 841 007a FFF7FEFF 		bl	__aeabi_dmul
 842 007e FFF7FEFF 		bl	__aeabi_d2f
 843 0082 F5EEC08A 		fcmpezs	s17
 844 0086 F1EE10FA 		fmstat
 845 008a B5EEC08A 		fcmpezs	s16
 846 008e ACBF     		ite	ge
 847 0090 0023     		movge	r3, #0
 848 0092 0123     		movlt	r3, #1
 849 0094 F1EE10FA 		fmstat
 850 0098 B4BF     		ite	lt
 851 009a 0022     		movlt	r2, #0
 852 009c 0122     		movge	r2, #1
 853 009e 9A42     		cmp	r2, r3
 854 00a0 07EE900A 		fmsr	s15, r0
 855 00a4 B0EEC99A 		fabss	s18, s18
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 16


 856 00a8 19D0     		beq	.L143
 857 00aa F0EEE99A 		fabss	s19, s19
 858 00ae B4EEE99A 		fcmpes	s18, s19
 859 00b2 F1EE10FA 		fmstat
 860 00b6 22DD     		ble	.L162
 861 00b8 77EEA97A 		fadds	s15, s15, s19
 862 00bc F0EEE88A 		fabss	s17, s17
 863 00c0 C7EEA87A 		fdivs	s15, s15, s17
 864 00c4 C5ED287A 		fsts	s15, [r5, #160]
 865              	.L146:
 866 00c8 012C     		cmp	r4, #1
 867 00ca 02D0     		beq	.L153
 868 00cc 0127     		movs	r7, #1
 869 00ce 9EE7     		b	.L141
 870              	.L165:
 871 00d0 17B1     		cbz	r7, .L166
 872              	.L153:
 873 00d2 0024     		movs	r4, #0
 874 00d4 2746     		mov	r7, r4
 875 00d6 9DE7     		b	.L152
 876              	.L166:
 877 00d8 BDEC048B 		fldmfdd	sp!, {d8-d9}
 878 00dc F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 879              	.L143:
 880 00de 39EE097A 		fadds	s14, s18, s18
 881 00e2 F4EEC77A 		fcmpes	s15, s14
 882 00e6 F1EE10FA 		fmstat
 883 00ea 11DD     		ble	.L163
 884 00ec 77EEC97A 		fsubs	s15, s15, s18
 885 00f0 B0EEC88A 		fabss	s16, s16
 886 00f4 C7EE887A 		fdivs	s15, s15, s16
 887 00f8 C5ED2C7A 		fsts	s15, [r5, #176]
 888 00fc E4E7     		b	.L146
 889              	.L162:
 890 00fe 77EE897A 		fadds	s15, s15, s18
 891 0102 B0EEC88A 		fabss	s16, s16
 892 0106 C7EE887A 		fdivs	s15, s15, s16
 893 010a C5ED2C7A 		fsts	s15, [r5, #176]
 894 010e DBE7     		b	.L146
 895              	.L163:
 896 0110 F0EEE99A 		fabss	s19, s19
 897 0114 39EEA97A 		fadds	s14, s19, s19
 898 0118 F4EEC77A 		fcmpes	s15, s14
 899 011c F1EE10FA 		fmstat
 900 0120 08DD     		ble	.L164
 901 0122 77EEE97A 		fsubs	s15, s15, s19
 902 0126 F0EEE88A 		fabss	s17, s17
 903 012a C7EEA87A 		fdivs	s15, s15, s17
 904 012e C5ED287A 		fsts	s15, [r5, #160]
 905 0132 C9E7     		b	.L146
 906              	.L164:
 907 0134 B0EEC88A 		fabss	s16, s16
 908 0138 F0EEE88A 		fabss	s17, s17
 909 013c 38EE088A 		fadds	s16, s16, s16
 910 0140 78EEA88A 		fadds	s17, s17, s17
 911 0144 87EE888A 		fdivs	s16, s15, s16
 912 0148 C7EEA87A 		fdivs	s15, s15, s17
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 17


 913 014c 85ED2C8A 		fsts	s16, [r5, #176]
 914 0150 C5ED287A 		fsts	s15, [r5, #160]
 915 0154 B8E7     		b	.L146
 916              	.L168:
 917 0156 00BF     		.align	3
 918              	.L167:
 919 0158 9A999999 		.word	-1717986918
 920 015c 9999E93F 		.word	1072273817
 921 0160 00000000 		.word	reprap
 922              		.size	_ZN3DDA13CalcNewSpeedsEv, .-_ZN3DDA13CalcNewSpeedsEv
 923              		.global	__aeabi_dcmpgt
 924 0164 AFF30080 		.section	.text._ZN3DDA11DoLookaheadEPS_,"ax",%progbits
 925              		.align	2
 926              		.global	_ZN3DDA11DoLookaheadEPS_
 927              		.thumb
 928              		.thumb_func
 929              		.type	_ZN3DDA11DoLookaheadEPS_, %function
 930              	_ZN3DDA11DoLookaheadEPS_:
 931              		@ args = 0, pretend = 0, frame = 0
 932              		@ frame_needed = 0, uses_anonymous_args = 0
 933 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 934 0004 2DED028B 		fstmfdd	sp!, {d8}
 935 0008 DFF8F091 		ldr	r9, .L225+12
 936 000c 0646     		mov	r6, r0
 937 000e 4FF00108 		mov	r8, #1
 938 0012 0027     		movs	r7, #0
 939              	.L170:
 940 0014 B8F1000F 		cmp	r8, #0
 941 0018 13D0     		beq	.L171
 942 001a D6ED297A 		flds	s15, [r6, #164]
 943 001e 96ED248A 		flds	s16, [r6, #144]
 944 0022 F4EEC87A 		fcmpes	s15, s16
 945 0026 F1EE10FA 		fmstat
 946 002a 36DB     		blt	.L210
 947 002c 86ED288A 		fsts	s16, [r6, #160]
 948 0030 3046     		mov	r0, r6
 949 0032 FFF7FEFF 		bl	_ZN3DDA13CalcNewSpeedsEv
 950              	.L174:
 951 0036 3046     		mov	r0, r6
 952 0038 FFF7FEFF 		bl	_ZN3DDA15RecalculateMoveEv
 953 003c 4FB3     		cbz	r7, .L218
 954              	.L214:
 955 003e 3668     		ldr	r6, [r6]
 956 0040 013F     		subs	r7, r7, #1
 957              	.L171:
 958 0042 D6ED237A 		flds	s15, [r6, #140]
 959 0046 D6ED226A 		flds	s13, [r6, #136]
 960 004a 7368     		ldr	r3, [r6, #4]
 961 004c 37EEA77A 		fadds	s14, s15, s15
 962 0050 D3ED2C7A 		flds	s15, [r3, #176]
 963 0054 27EE267A 		fmuls	s14, s14, s13
 964 0058 C6ED277A 		fsts	s15, [r6, #156]
 965 005c A7EEA77A 		vfma.f32	s14, s15, s15
 966 0060 F1EEC77A 		fsqrts	s15, s14
 967 0064 F4EE677A 		fcmps	s15, s15
 968 0068 F1EE10FA 		fmstat
 969 006c 40F0B280 		bne	.L219
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 18


 970              	.L189:
 971 0070 96ED287A 		flds	s14, [r6, #160]
 972 0074 F4EEC77A 		fcmpes	s15, s14
 973 0078 F1EE10FA 		fmstat
 974 007c DBD5     		bpl	.L174
 975              	.L215:
 976 007e C6ED287A 		fsts	s15, [r6, #160]
 977 0082 3046     		mov	r0, r6
 978 0084 FFF7FEFF 		bl	_ZN3DDA13CalcNewSpeedsEv
 979              	.L222:
 980 0088 3046     		mov	r0, r6
 981 008a FFF7FEFF 		bl	_ZN3DDA15RecalculateMoveEv
 982 008e 002F     		cmp	r7, #0
 983 0090 D5D1     		bne	.L214
 984              	.L218:
 985 0092 BDEC028B 		fldmfdd	sp!, {d8}
 986 0096 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 987              	.L210:
 988 009a 96ED2B7A 		flds	s14, [r6, #172]
 989 009e D6ED228A 		flds	s17, [r6, #136]
 990 00a2 B4EE687A 		fcmps	s14, s17
 991 00a6 F1EE10FA 		fmstat
 992 00aa 41D0     		beq	.L175
 993 00ac F4EEC87A 		fcmpes	s15, s16
 994 00b0 F1EE10FA 		fmstat
 995 00b4 19D5     		bpl	.L176
 996 00b6 17EE100A 		fmrs	r0, s14
 997 00ba FFF7FEFF 		bl	__aeabi_f2d
 998 00be 0446     		mov	r4, r0
 999 00c0 18EE900A 		fmrs	r0, s17
 1000 00c4 0D46     		mov	r5, r1
 1001 00c6 FFF7FEFF 		bl	__aeabi_f2d
 1002 00ca 4AA3     		adr	r3, .L225+4
 1003 00cc D3E90023 		ldrd	r2, [r3]
 1004 00d0 FFF7FEFF 		bl	__aeabi_dmul
 1005 00d4 0246     		mov	r2, r0
 1006 00d6 0B46     		mov	r3, r1
 1007 00d8 2046     		mov	r0, r4
 1008 00da 2946     		mov	r1, r5
 1009 00dc FFF7FEFF 		bl	__aeabi_dcmpgt
 1010 00e0 18B1     		cbz	r0, .L176
 1011 00e2 7368     		ldr	r3, [r6, #4]
 1012 00e4 1A7A     		ldrb	r2, [r3, #8]	@ zero_extendqisi2
 1013 00e6 012A     		cmp	r2, #1
 1014 00e8 63D0     		beq	.L220
 1015              	.L176:
 1016 00ea 96ED237A 		flds	s14, [r6, #140]
 1017 00ee D6ED277A 		flds	s15, [r6, #156]
 1018 00f2 37EE077A 		fadds	s14, s14, s14
 1019 00f6 67EE288A 		fmuls	s17, s14, s17
 1020              	.L217:
 1021 00fa E7EEA78A 		vfma.f32	s17, s15, s15
 1022 00fe F1EEE87A 		fsqrts	s15, s17
 1023 0102 F4EE677A 		fcmps	s15, s15
 1024 0106 F1EE10FA 		fmstat
 1025 010a 5AD1     		bne	.L221
 1026              	.L184:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 19


 1027 010c F4EE677A 		fcmps	s15, s15
 1028 0110 F1EE10FA 		fmstat
 1029 0114 B3D6     		bvs	.L215
 1030 0116 F4EEC87A 		fcmpes	s15, s16
 1031 011a F1EE10FA 		fmstat
 1032 011e 58BF     		it	pl
 1033 0120 F0EE487A 		fcpyspl	s15, s16
 1034 0124 C6ED287A 		fsts	s15, [r6, #160]
 1035 0128 3046     		mov	r0, r6
 1036 012a FFF7FEFF 		bl	_ZN3DDA13CalcNewSpeedsEv
 1037 012e ABE7     		b	.L222
 1038              	.L175:
 1039 0130 7368     		ldr	r3, [r6, #4]
 1040              	.L179:
 1041 0132 1B7A     		ldrb	r3, [r3, #8]	@ zero_extendqisi2
 1042 0134 012B     		cmp	r3, #1
 1043 0136 0CD0     		beq	.L223
 1044 0138 96ED237A 		flds	s14, [r6, #140]
 1045 013c 737A     		ldrb	r3, [r6, #9]	@ zero_extendqisi2
 1046 013e D6ED277A 		flds	s15, [r6, #156]
 1047 0142 37EE077A 		fadds	s14, s14, s14
 1048 0146 43F04003 		orr	r3, r3, #64
 1049 014a 67EE288A 		fmuls	s17, s14, s17
 1050 014e 7372     		strb	r3, [r6, #9]
 1051 0150 D3E7     		b	.L217
 1052              	.L223:
 1053 0152 86ED288A 		fsts	s16, [r6, #160]
 1054 0156 3046     		mov	r0, r6
 1055 0158 FFF7FEFF 		bl	_ZN3DDA13CalcNewSpeedsEv
 1056 015c D6ED236A 		flds	s13, [r6, #140]
 1057 0160 96ED226A 		flds	s12, [r6, #136]
 1058 0164 D6ED287A 		flds	s15, [r6, #160]
 1059 0168 76EEA66A 		fadds	s13, s13, s13
 1060 016c 26EE867A 		fmuls	s14, s13, s12
 1061 0170 A7EEA77A 		vfma.f32	s14, s15, s15
 1062 0174 F1EEC77A 		fsqrts	s15, s14
 1063 0178 F4EE677A 		fcmps	s15, s15
 1064 017c F1EE10FA 		fmstat
 1065 0180 2FD1     		bne	.L224
 1066              	.L180:
 1067 0182 96ED247A 		flds	s14, [r6, #144]
 1068 0186 B9F84030 		ldrh	r3, [r9, #64]
 1069 018a 7668     		ldr	r6, [r6, #4]
 1070 018c F4EEC77A 		fcmpes	s15, s14
 1071 0190 F1EE10FA 		fmstat
 1072 0194 4CBF     		ite	mi
 1073 0196 C6ED2C7A 		fstsmi	s15, [r6, #176]
 1074 019a 86ED2C7A 		fstspl	s14, [r6, #176]
 1075 019e 5B06     		lsls	r3, r3, #25
 1076 01a0 07F10107 		add	r7, r7, #1
 1077 01a4 7FF536AF 		bpl	.L170
 1078 01a8 1148     		ldr	r0, .L225
 1079 01aa 3946     		mov	r1, r7
 1080 01ac FFF7FEFF 		bl	debugPrintf
 1081 01b0 30E7     		b	.L170
 1082              	.L220:
 1083 01b2 D3ED2B7A 		flds	s15, [r3, #172]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 20


 1084 01b6 F5EEC07A 		fcmpezs	s15
 1085 01ba F1EE10FA 		fmstat
 1086 01be B8DC     		bgt	.L179
 1087 01c0 93E7     		b	.L176
 1088              	.L221:
 1089 01c2 18EE900A 		fmrs	r0, s17
 1090 01c6 FFF7FEFF 		bl	sqrtf
 1091 01ca 96ED248A 		flds	s16, [r6, #144]
 1092 01ce 07EE900A 		fmsr	s15, r0
 1093 01d2 9BE7     		b	.L184
 1094              	.L219:
 1095 01d4 17EE100A 		fmrs	r0, s14
 1096 01d8 FFF7FEFF 		bl	sqrtf
 1097 01dc 07EE900A 		fmsr	s15, r0
 1098 01e0 46E7     		b	.L189
 1099              	.L224:
 1100 01e2 17EE100A 		fmrs	r0, s14
 1101 01e6 FFF7FEFF 		bl	sqrtf
 1102 01ea 07EE900A 		fmsr	s15, r0
 1103 01ee C8E7     		b	.L180
 1104              	.L226:
 1105              		.align	3
 1106              	.L225:
 1107 01f0 90000000 		.word	.LC10
 1108 01f4 5C8FC2F5 		.word	-171798692
 1109 01f8 285CEF3F 		.word	1072651304
 1110 01fc 00000000 		.word	reprap
 1111              		.size	_ZN3DDA11DoLookaheadEPS_, .-_ZN3DDA11DoLookaheadEPS_
 1112              		.section	.text._ZN3DDA16FetchEndPositionEPVlPVf,"ax",%progbits
 1113              		.align	2
 1114              		.global	_ZN3DDA16FetchEndPositionEPVlPVf
 1115              		.thumb
 1116              		.thumb_func
 1117              		.type	_ZN3DDA16FetchEndPositionEPVlPVf, %function
 1118              	_ZN3DDA16FetchEndPositionEPVlPVf:
 1119              		@ args = 0, pretend = 0, frame = 0
 1120              		@ frame_needed = 0, uses_anonymous_args = 0
 1121              		@ link register save eliminated.
 1122 0000 70B4     		push	{r4, r5, r6}
 1123 0002 194B     		ldr	r3, .L241
 1124 0004 1B69     		ldr	r3, [r3, #16]
 1125 0006 D3F8B041 		ldr	r4, [r3, #432]
 1126 000a 0023     		movs	r3, #0
 1127              	.L229:
 1128 000c C518     		adds	r5, r0, r3
 1129 000e 2D69     		ldr	r5, [r5, #16]
 1130 0010 CD50     		str	r5, [r1, r3]
 1131 0012 0433     		adds	r3, r3, #4
 1132 0014 282B     		cmp	r3, #40
 1133 0016 F9D1     		bne	.L229
 1134 0018 437A     		ldrb	r3, [r0, #9]	@ zero_extendqisi2
 1135 001a DB07     		lsls	r3, r3, #31
 1136 001c 0BD5     		bpl	.L235
 1137 001e 64B1     		cbz	r4, .L231
 1138 0020 00F13801 		add	r1, r0, #56
 1139 0024 1346     		mov	r3, r2
 1140 0026 02EB8406 		add	r6, r2, r4, lsl #2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 21


 1141              	.L236:
 1142 002a 51F8045B 		ldr	r5, [r1], #4	@ float
 1143 002e 43F8045B 		str	r5, [r3], #4	@ float
 1144 0032 B342     		cmp	r3, r6
 1145 0034 F9D1     		bne	.L236
 1146              	.L235:
 1147 0036 092C     		cmp	r4, #9
 1148 0038 10D8     		bhi	.L232
 1149              	.L231:
 1150 003a 04F10E03 		add	r3, r4, #14
 1151 003e 02EB8402 		add	r2, r2, r4, lsl #2
 1152 0042 00EB8303 		add	r3, r0, r3, lsl #2
 1153              	.L234:
 1154 0046 92ED007A 		flds	s14, [r2]
 1155 004a F3EC017A 		fldmias	r3!, {s15}
 1156 004e 0134     		adds	r4, r4, #1
 1157 0050 77EE277A 		fadds	s15, s14, s15
 1158 0054 092C     		cmp	r4, #9
 1159 0056 E2EC017A 		fstmias	r2!, {s15}
 1160 005a F4D9     		bls	.L234
 1161              	.L232:
 1162 005c 407A     		ldrb	r0, [r0, #9]	@ zero_extendqisi2
 1163 005e 70BC     		pop	{r4, r5, r6}
 1164 0060 00F00100 		and	r0, r0, #1
 1165 0064 7047     		bx	lr
 1166              	.L242:
 1167 0066 00BF     		.align	2
 1168              	.L241:
 1169 0068 00000000 		.word	reprap
 1170              		.size	_ZN3DDA16FetchEndPositionEPVlPVf, .-_ZN3DDA16FetchEndPositionEPVlPVf
 1171              		.section	.text._ZN3DDA12SetPositionsEPKfj,"ax",%progbits
 1172              		.align	2
 1173              		.global	_ZN3DDA12SetPositionsEPKfj
 1174              		.thumb
 1175              		.thumb_func
 1176              		.type	_ZN3DDA12SetPositionsEPKfj, %function
 1177              	_ZN3DDA12SetPositionsEPKfj:
 1178              		@ args = 0, pretend = 0, frame = 0
 1179              		@ frame_needed = 0, uses_anonymous_args = 0
 1180 0000 70B5     		push	{r4, r5, r6, lr}
 1181 0002 0E4C     		ldr	r4, .L249
 1182 0004 1346     		mov	r3, r2
 1183 0006 0546     		mov	r5, r0
 1184 0008 00F11002 		add	r2, r0, #16
 1185 000c A068     		ldr	r0, [r4, #8]
 1186 000e 0E46     		mov	r6, r1
 1187 0010 FFF7FEFF 		bl	_ZNK4Move17EndPointToMachineEPKfPlj
 1188 0014 2369     		ldr	r3, [r4, #16]
 1189 0016 D3F8B041 		ldr	r4, [r3, #432]
 1190 001a 54B1     		cbz	r4, .L245
 1191 001c 3146     		mov	r1, r6
 1192 001e 06EB8404 		add	r4, r6, r4, lsl #2
 1193 0022 05F13803 		add	r3, r5, #56
 1194              	.L246:
 1195 0026 51F8042B 		ldr	r2, [r1], #4	@ float
 1196 002a 43F8042B 		str	r2, [r3], #4	@ float
 1197 002e A142     		cmp	r1, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 22


 1198 0030 F9D1     		bne	.L246
 1199              	.L245:
 1200 0032 6B7A     		ldrb	r3, [r5, #9]	@ zero_extendqisi2
 1201 0034 43F00103 		orr	r3, r3, #1
 1202 0038 6B72     		strb	r3, [r5, #9]
 1203 003a 70BD     		pop	{r4, r5, r6, pc}
 1204              	.L250:
 1205              		.align	2
 1206              	.L249:
 1207 003c 00000000 		.word	reprap
 1208              		.size	_ZN3DDA12SetPositionsEPKfj, .-_ZN3DDA12SetPositionsEPKfj
 1209              		.section	.text._ZN3DDA16GetEndCoordinateEjb,"ax",%progbits
 1210              		.align	2
 1211              		.global	_ZN3DDA16GetEndCoordinateEjb
 1212              		.thumb
 1213              		.thumb_func
 1214              		.type	_ZN3DDA16GetEndCoordinateEjb, %function
 1215              	_ZN3DDA16GetEndCoordinateEjb:
 1216              		@ args = 0, pretend = 0, frame = 0
 1217              		@ frame_needed = 0, uses_anonymous_args = 0
 1218 0000 38B5     		push	{r3, r4, r5, lr}
 1219 0002 0446     		mov	r4, r0
 1220 0004 0D46     		mov	r5, r1
 1221 0006 62B9     		cbnz	r2, .L254
 1222 0008 114A     		ldr	r2, .L256
 1223 000a 1369     		ldr	r3, [r2, #16]
 1224 000c D3F8B031 		ldr	r3, [r3, #432]
 1225 0010 9942     		cmp	r1, r3
 1226 0012 02D2     		bcs	.L253
 1227 0014 417A     		ldrb	r1, [r0, #9]	@ zero_extendqisi2
 1228 0016 C907     		lsls	r1, r1, #31
 1229 0018 0AD5     		bpl	.L255
 1230              	.L253:
 1231 001a 04EB8504 		add	r4, r4, r5, lsl #2
 1232 001e A06B     		ldr	r0, [r4, #56]	@ float
 1233 0020 38BD     		pop	{r3, r4, r5, pc}
 1234              	.L254:
 1235 0022 0D1D     		adds	r5, r1, #4
 1236 0024 50F82500 		ldr	r0, [r0, r5, lsl #2]
 1237 0028 BDE83840 		pop	{r3, r4, r5, lr}
 1238 002c FFF7FEBF 		b	_ZN4Move23MotorEndpointToPositionElj
 1239              	.L255:
 1240 0030 9068     		ldr	r0, [r2, #8]
 1241 0032 04F11001 		add	r1, r4, #16
 1242 0036 04F13802 		add	r2, r4, #56
 1243 003a FFF7FEFF 		bl	_ZNK4Move17MachineToEndPointEPKlPfj
 1244 003e 637A     		ldrb	r3, [r4, #9]	@ zero_extendqisi2
 1245 0040 43F00103 		orr	r3, r3, #1
 1246 0044 6372     		strb	r3, [r4, #9]
 1247 0046 04EB8504 		add	r4, r4, r5, lsl #2
 1248 004a A06B     		ldr	r0, [r4, #56]	@ float
 1249 004c 38BD     		pop	{r3, r4, r5, pc}
 1250              	.L257:
 1251 004e 00BF     		.align	2
 1252              	.L256:
 1253 0050 00000000 		.word	reprap
 1254              		.size	_ZN3DDA16GetEndCoordinateEjb, .-_ZN3DDA16GetEndCoordinateEjb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 23


 1255              		.section	.text._ZNK3DDA8CalcTimeEv,"ax",%progbits
 1256              		.align	2
 1257              		.global	_ZNK3DDA8CalcTimeEv
 1258              		.thumb
 1259              		.thumb_func
 1260              		.type	_ZNK3DDA8CalcTimeEv, %function
 1261              	_ZNK3DDA8CalcTimeEv:
 1262              		@ args = 0, pretend = 0, frame = 0
 1263              		@ frame_needed = 0, uses_anonymous_args = 0
 1264              		@ link register save eliminated.
 1265 0000 D0ED224A 		flds	s9, [r0, #136]
 1266 0004 D0ED2A6A 		flds	s13, [r0, #168]
 1267 0008 D0ED297A 		flds	s15, [r0, #164]
 1268 000c 90ED2B5A 		flds	s10, [r0, #172]
 1269 0010 90ED276A 		flds	s12, [r0, #156]
 1270 0014 90ED237A 		flds	s14, [r0, #140]
 1271 0018 D0ED285A 		flds	s11, [r0, #160]
 1272 001c 74EEE66A 		fsubs	s13, s9, s13
 1273 0020 37EEC66A 		fsubs	s12, s15, s12
 1274 0024 76EEC56A 		fsubs	s13, s13, s10
 1275 0028 86EE076A 		fdivs	s12, s12, s14
 1276 002c C6EEA76A 		fdivs	s13, s13, s15
 1277 0030 77EEE57A 		fsubs	s15, s15, s11
 1278 0034 76EE266A 		fadds	s13, s12, s13
 1279 0038 87EE877A 		fdivs	s14, s15, s14
 1280 003c 36EE877A 		fadds	s14, s13, s14
 1281 0040 17EE100A 		fmrs	r0, s14
 1282 0044 7047     		bx	lr
 1283              		.size	_ZNK3DDA8CalcTimeEv, .-_ZNK3DDA8CalcTimeEv
 1284              		.global	__aeabi_f2lz
 1285              		.global	__aeabi_dsub
 1286 0046 00BF     		.section	.text._ZN3DDA7PrepareEv,"ax",%progbits
 1287              		.align	2
 1288              		.global	_ZN3DDA7PrepareEv
 1289              		.thumb
 1290              		.thumb_func
 1291              		.type	_ZN3DDA7PrepareEv, %function
 1292              	_ZN3DDA7PrepareEv:
 1293              		@ args = 0, pretend = 0, frame = 56
 1294              		@ frame_needed = 0, uses_anonymous_args = 0
 1295 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1296 0004 2DED0C8B 		fstmfdd	sp!, {d8, d9, d10, d11, d12, d13}
 1297 0008 437A     		ldrb	r3, [r0, #9]	@ zero_extendqisi2
 1298 000a 9907     		lsls	r1, r3, #30
 1299 000c 8FB0     		sub	sp, sp, #60
 1300 000e 0646     		mov	r6, r0
 1301 0010 00F15481 		bmi	.L260
 1302 0014 DFF89CA2 		ldr	r10, .L324+20
 1303              	.L273:
 1304 0018 D6ED2B5A 		flds	s11, [r6, #172]
 1305 001c 96ED224A 		flds	s8, [r6, #136]
 1306 0020 D6ED297A 		flds	s15, [r6, #164]
 1307 0024 96ED276A 		flds	s12, [r6, #156]
 1308 0028 D6ED2A4A 		flds	s9, [r6, #168]
 1309 002c D6ED236A 		flds	s13, [r6, #140]
 1310 0030 D6ED283A 		flds	s7, [r6, #160]
 1311 0034 9FED9A7A 		flds	s14, .L324
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 24


 1312 0038 737A     		ldrb	r3, [r6, #9]	@ zero_extendqisi2
 1313 003a DAF81020 		ldr	r2, [r10, #16]
 1314 003e DFF874B2 		ldr	fp, .L324+20
 1315 0042 984D     		ldr	r5, .L324+4
 1316 0044 34EE654A 		fsubs	s8, s8, s11
 1317 0048 37EEC65A 		fsubs	s10, s15, s12
 1318 004c 74EE645A 		fsubs	s11, s8, s9
 1319 0050 85EE265A 		fdivs	s10, s10, s13
 1320 0054 6FF3C303 		bfc	r3, #3, #1
 1321 0058 7372     		strb	r3, [r6, #9]
 1322 005a 0023     		movs	r3, #0
 1323 005c D2F8B041 		ldr	r4, [r2, #432]
 1324 0060 C6F8BC30 		str	r3, [r6, #188]
 1325 0064 9846     		mov	r8, r3
 1326 0066 06F58477 		add	r7, r6, #264
 1327 006a C5EEA75A 		fdivs	s11, s11, s15
 1328 006e 8DED074A 		fsts	s8, [sp, #28]
 1329 0072 37EEE34A 		fsubs	s8, s15, s7
 1330 0076 67EE873A 		fmuls	s7, s15, s14
 1331 007a 84EE264A 		fdivs	s8, s8, s13
 1332 007e C4EEA74A 		fdivs	s9, s9, s15
 1333 0082 C3EEA63A 		fdivs	s7, s7, s13
 1334 0086 26EE073A 		fmuls	s6, s12, s14
 1335 008a C6EE277A 		fdivs	s15, s12, s15
 1336 008e C3EE266A 		fdivs	s13, s6, s13
 1337 0092 75EE855A 		fadds	s11, s11, s10
 1338 0096 35EE645A 		fsubs	s10, s10, s9
 1339 009a 34EE254A 		fadds	s8, s8, s11
 1340 009e 65EE875A 		fmuls	s11, s11, s14
 1341 00a2 FCEEE33A 		ftouizs	s7, s7
 1342 00a6 FCEEE55A 		ftouizs	s11, s11
 1343 00aa 24EE074A 		fmuls	s8, s8, s14
 1344 00ae 25EE077A 		fmuls	s14, s10, s14
 1345 00b2 13EE903A 		fmrs	r3, s7	@ int
 1346 00b6 15EE902A 		fmrs	r2, s11	@ int
 1347 00ba B7EE006A 		fconsts	s12, #112
 1348 00be BCEEC44A 		ftouizs	s8, s8
 1349 00c2 76EE677A 		fsubs	s15, s12, s15
 1350 00c6 BCEEC77A 		ftouizs	s14, s14
 1351 00ca FCEEE66A 		ftouizs	s13, s13
 1352 00ce D118     		adds	r1, r2, r3
 1353 00d0 5346     		mov	r3, r10
 1354 00d2 86ED2D4A 		fsts	s8, [r6, #180]	@ int
 1355 00d6 B246     		mov	r10, r6
 1356 00d8 CDED0A5A 		fsts	s11, [sp, #40]	@ int
 1357 00dc 2646     		mov	r6, r4
 1358 00de 0B91     		str	r1, [sp, #44]
 1359 00e0 3C46     		mov	r4, r7
 1360 00e2 CDED093A 		fsts	s7, [sp, #36]	@ int
 1361 00e6 CDED0D7A 		fsts	s15, [sp, #52]
 1362 00ea 8DED0C7A 		fsts	s14, [sp, #48]	@ int
 1363 00ee CDED086A 		fsts	s13, [sp, #32]	@ int
 1364 00f2 1F46     		mov	r7, r3
 1365 00f4 06E0     		b	.L261
 1366              	.L275:
 1367 00f6 08F10108 		add	r8, r8, #1
 1368 00fa B8F10A0F 		cmp	r8, #10
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 25


 1369 00fe 04F15004 		add	r4, r4, #80
 1370 0102 27D0     		beq	.L315
 1371              	.L261:
 1372 0104 14F82F3C 		ldrb	r3, [r4, #-47]	@ zero_extendqisi2
 1373 0108 012B     		cmp	r3, #1
 1374 010a A4F14809 		sub	r9, r4, #72
 1375 010e F2D1     		bne	.L275
 1376 0110 04F8308C 		strb	r8, [r4, #-48]
 1377 0114 3868     		ldr	r0, [r7]
 1378 0116 4146     		mov	r1, r8
 1379 0118 FFF7FEFF 		bl	_ZN8Platform11EnableDriveEj
 1380 011c 4645     		cmp	r6, r8
 1381 011e 9AF80930 		ldrb	r3, [r10, #9]	@ zero_extendqisi2
 1382 0122 4846     		mov	r0, r9
 1383 0124 40F28F80 		bls	.L316
 1384 0128 9B07     		lsls	r3, r3, #30
 1385 012a 5146     		mov	r1, r10
 1386 012c 07AA     		add	r2, sp, #28
 1387 012e 46D5     		bpl	.L280
 1388 0130 FFF7FEFF 		bl	_ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams
 1389 0134 BBF84030 		ldrh	r3, [fp, #64]
 1390 0138 5906     		lsls	r1, r3, #25
 1391 013a 52D5     		bpl	.L281
 1392 013c 54F8340C 		ldr	r0, [r4, #-52]
 1393 0140 0190     		str	r0, [sp, #4]
 1394 0142 A842     		cmp	r0, r5
 1395 0144 50D9     		bls	.L283
 1396 0146 5046     		mov	r0, r10
 1397 0148 FFF7FEFF 		bl	_ZNK3DDA10DebugPrintEv
 1398 014c 54F8343C 		ldr	r3, [r4, #-52]
 1399 0150 0193     		str	r3, [sp, #4]
 1400 0152 49E0     		b	.L283
 1401              	.L315:
 1402 0154 B7F84030 		ldrh	r3, [r7, #64]
 1403 0158 03F05003 		and	r3, r3, #80
 1404 015c 502B     		cmp	r3, #80
 1405 015e 5646     		mov	r6, r10
 1406 0160 02D1     		bne	.L296
 1407 0162 3046     		mov	r0, r6
 1408 0164 FFF7FEFF 		bl	_ZNK3DDA10DebugPrintEv
 1409              	.L296:
 1410 0168 4F49     		ldr	r1, .L324+8
 1411 016a 96ED2A7A 		flds	s14, [r6, #168]
 1412 016e D6ED226A 		flds	s13, [r6, #136]
 1413 0172 0A68     		ldr	r2, [r1]
 1414 0174 D6ED2B7A 		flds	s15, [r6, #172]
 1415 0178 4C4C     		ldr	r4, .L324+12
 1416 017a D6F89CC0 		ldr	ip, [r6, #156]	@ float
 1417 017e D6F8A470 		ldr	r7, [r6, #164]	@ float
 1418 0182 D6F8A050 		ldr	r5, [r6, #160]	@ float
 1419 0186 76EEC76A 		fsubs	s13, s13, s14
 1420 018a 501C     		adds	r0, r2, #1
 1421 018c 02EB4202 		add	r2, r2, r2, lsl #1
 1422 0190 04EBC203 		add	r3, r4, r2, lsl #3
 1423 0194 76EEE76A 		fsubs	s13, s13, s15
 1424 0198 C0B2     		uxtb	r0, r0
 1425 019a 0222     		movs	r2, #2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 26


 1426 019c 83ED007A 		fsts	s14, [r3]
 1427 01a0 C3ED016A 		fsts	s13, [r3, #4]
 1428 01a4 C3ED027A 		fsts	s15, [r3, #8]
 1429 01a8 C3F80CC0 		str	ip, [r3, #12]	@ float
 1430 01ac 1F61     		str	r7, [r3, #16]	@ float
 1431 01ae 5D61     		str	r5, [r3, #20]	@ float
 1432 01b0 0860     		str	r0, [r1]
 1433 01b2 3272     		strb	r2, [r6, #8]
 1434 01b4 0FB0     		add	sp, sp, #60
 1435              		@ sp needed
 1436 01b6 BDEC0C8B 		fldmfdd	sp!, {d8-d13}
 1437 01ba BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1438              	.L280:
 1439 01be FFF7FEFF 		bl	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams
 1440 01c2 BBF84030 		ldrh	r3, [fp, #64]
 1441 01c6 5A06     		lsls	r2, r3, #25
 1442 01c8 0BD5     		bpl	.L281
 1443 01ca 54F8342C 		ldr	r2, [r4, #-52]
 1444 01ce 0192     		str	r2, [sp, #4]
 1445 01d0 AA42     		cmp	r2, r5
 1446 01d2 09D9     		bls	.L283
 1447 01d4 5046     		mov	r0, r10
 1448 01d6 FFF7FEFF 		bl	_ZNK3DDA10DebugPrintEv
 1449 01da 54F8340C 		ldr	r0, [r4, #-52]
 1450 01de 0190     		str	r0, [sp, #4]
 1451 01e0 02E0     		b	.L283
 1452              	.L281:
 1453 01e2 54F8341C 		ldr	r1, [r4, #-52]
 1454 01e6 0191     		str	r1, [sp, #4]
 1455              	.L283:
 1456 01e8 0022     		movs	r2, #0
 1457 01ea 314B     		ldr	r3, .L324+16
 1458 01ec 44F8203C 		str	r3, [r4, #-32]
 1459 01f0 44F82C2C 		str	r2, [r4, #-44]
 1460 01f4 44F8242C 		str	r2, [r4, #-36]
 1461 01f8 04F82D2C 		strb	r2, [r4, #-45]
 1462 01fc 9AF80930 		ldrb	r3, [r10, #9]	@ zero_extendqisi2
 1463 0200 9B07     		lsls	r3, r3, #30
 1464 0202 38D5     		bpl	.L298
 1465 0204 019B     		ldr	r3, [sp, #4]
 1466 0206 002B     		cmp	r3, #0
 1467 0208 00F07081 		beq	.L286
 1468 020c 0123     		movs	r3, #1
 1469 020e 44F82C3C 		str	r3, [r4, #-44]
 1470 0212 4846     		mov	r0, r9
 1471 0214 5146     		mov	r1, r10
 1472 0216 FFF7FEFF 		bl	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb
 1473              	.L288:
 1474 021a 0028     		cmp	r0, #0
 1475 021c 37D0     		beq	.L291
 1476              	.L319:
 1477 021e DAF8BC30 		ldr	r3, [r10, #188]
 1478 0222 0AF1BC01 		add	r1, r10, #188
 1479 0226 4BB1     		cbz	r3, .L292
 1480 0228 54F8240C 		ldr	r0, [r4, #-36]
 1481 022c 03E0     		b	.L314
 1482              	.L317:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 27


 1483 022e 03F12C01 		add	r1, r3, #44
 1484 0232 DB6A     		ldr	r3, [r3, #44]
 1485 0234 13B1     		cbz	r3, .L292
 1486              	.L314:
 1487 0236 5A6A     		ldr	r2, [r3, #36]
 1488 0238 8242     		cmp	r2, r0
 1489 023a F8D3     		bcc	.L317
 1490              	.L292:
 1491 023c 44F81C3C 		str	r3, [r4, #-28]
 1492 0240 C1F80090 		str	r9, [r1]
 1493 0244 57E7     		b	.L275
 1494              	.L316:
 1495 0246 C3F34013 		ubfx	r3, r3, #5, #1
 1496 024a 07AA     		add	r2, sp, #28
 1497 024c 5146     		mov	r1, r10
 1498 024e FFF7FEFF 		bl	_ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsb
 1499 0252 BBF84030 		ldrh	r3, [fp, #64]
 1500 0256 54F8340C 		ldr	r0, [r4, #-52]
 1501 025a 0190     		str	r0, [sp, #4]
 1502 025c 5A06     		lsls	r2, r3, #25
 1503 025e 00F11881 		bmi	.L318
 1504              	.L279:
 1505 0262 0023     		movs	r3, #0
 1506 0264 1249     		ldr	r1, .L324+16
 1507 0266 44F8201C 		str	r1, [r4, #-32]
 1508 026a 44F82C3C 		str	r3, [r4, #-44]
 1509 026e 44F8243C 		str	r3, [r4, #-36]
 1510 0272 04F82D3C 		strb	r3, [r4, #-45]
 1511              	.L298:
 1512 0276 0198     		ldr	r0, [sp, #4]
 1513 0278 60B1     		cbz	r0, .L289
 1514 027a 0123     		movs	r3, #1
 1515 027c 44F82C3C 		str	r3, [r4, #-44]
 1516 0280 4846     		mov	r0, r9
 1517 0282 5146     		mov	r1, r10
 1518 0284 0022     		movs	r2, #0
 1519 0286 FFF7FEFF 		bl	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb
 1520 028a 0028     		cmp	r0, #0
 1521 028c C7D1     		bne	.L319
 1522              	.L291:
 1523 028e 04F82F0C 		strb	r0, [r4, #-47]
 1524 0292 30E7     		b	.L275
 1525              	.L289:
 1526 0294 0199     		ldr	r1, [sp, #4]
 1527 0296 04F82F1C 		strb	r1, [r4, #-47]
 1528 029a 0846     		mov	r0, r1
 1529 029c BDE7     		b	.L288
 1530              	.L325:
 1531 029e 00BF     		.align	2
 1532              	.L324:
 1533 02a0 C0E16449 		.word	1231348160
 1534 02a4 40420F00 		.word	1000000
 1535 02a8 00000000 		.word	.LANCHOR0
 1536 02ac 00000000 		.word	.LANCHOR1
 1537 02b0 3F420F00 		.word	999999
 1538 02b4 00000000 		.word	reprap
 1539 02b8 00008049 		.word	1233125376
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 28


 1540              	.L260:
 1541 02bc D0ED197A 		flds	s15, [r0, #100]
 1542 02c0 90ED187A 		flds	s14, [r0, #96]
 1543 02c4 90ED1A6A 		flds	s12, [r0, #104]
 1544 02c8 5FED056A 		flds	s13, .L324+24
 1545 02cc 4068     		ldr	r0, [r0, #4]
 1546 02ce DFF8D4A2 		ldr	r10, .L326+4
 1547 02d2 9FEDB3BA 		flds	s22, .L326
 1548 02d6 67EEA77A 		fmuls	s15, s15, s15
 1549 02da 66EE266A 		fmuls	s13, s12, s13
 1550 02de E7EE077A 		vfma.f32	s15, s14, s14
 1551 02e2 0021     		movs	r1, #0
 1552 02e4 0A46     		mov	r2, r1
 1553 02e6 FDEEE66A 		ftosizs	s13, s13
 1554 02ea C6ED257A 		fsts	s15, [r6, #148]
 1555 02ee C6ED266A 		fsts	s13, [r6, #152]	@ int
 1556 02f2 FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 1557 02f6 0022     		movs	r2, #0
 1558 02f8 0CEE900A 		fmsr	s25, r0
 1559 02fc 0121     		movs	r1, #1
 1560 02fe 7068     		ldr	r0, [r6, #4]
 1561 0300 FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 1562 0304 DAF80830 		ldr	r3, [r10, #8]
 1563 0308 96ED25DA 		flds	s26, [r6, #148]
 1564 030c 03F68C22 		addw	r2, r3, #2700
 1565 0310 D2ED00BA 		flds	s23, [r2]
 1566 0314 6BEEABBA 		fmuls	s23, s23, s23
 1567 0318 0CEE100A 		fmsr	s24, r0
 1568 031c 2BEE8DDA 		fmuls	s26, s23, s26
 1569 0320 03F6CC29 		addw	r9, r3, #2764
 1570 0324 3746     		mov	r7, r6
 1571 0326 4FF00008 		mov	r8, #0
 1572 032a 4FF0010B 		mov	fp, #1
 1573              	.L274:
 1574 032e 19ED039A 		flds	s18, [r9, #-12]
 1575 0332 D9ED009A 		flds	s19, [r9]
 1576 0336 D6ED198A 		flds	s17, [r6, #100]
 1577 033a DAF80030 		ldr	r3, [r10]
 1578 033e D6ED187A 		flds	s15, [r6, #96]
 1579 0342 3CEEC99A 		fsubs	s18, s25, s18
 1580 0346 B0EE6B8A 		fcpys	s16, s23
 1581 034a A9EE498A 		vfms.f32	s16, s18, s18
 1582 034e 03EB8803 		add	r3, r3, r8, lsl #2
 1583 0352 09F10409 		add	r9, r9, #4
 1584 0356 7CEE699A 		fsubs	s19, s24, s19
 1585 035a D3ED52AA 		flds	s21, [r3, #328]
 1586 035e A9EEE98A 		vfms.f32	s16, s19, s19
 1587 0362 69EEA88A 		fmuls	s17, s19, s17
 1588 0366 B1EEC8AA 		fsqrts	s20, s16
 1589 036a E7EE898A 		vfma.f32	s17, s15, s18
 1590 036e B4EE4AAA 		fcmps	s20, s20
 1591 0372 F1EE10FA 		fmstat
 1592 0376 40F00C81 		bne	.L320
 1593              	.L262:
 1594 037a 68EEAA6A 		fmuls	s13, s17, s21
 1595 037e 2AEE2A7A 		fmuls	s14, s20, s21
 1596 0382 66EE8B6A 		fmuls	s13, s13, s22
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 29


 1597 0386 6AEE8B7A 		fmuls	s15, s21, s22
 1598 038a FDEEE66A 		ftosizs	s13, s13
 1599 038e 27EE0B7A 		fmuls	s14, s14, s22
 1600 0392 67EEA77A 		fmuls	s15, s15, s15
 1601 0396 16EE903A 		fmrs	r3, s13	@ int
 1602 039a 68EE277A 		fmuls	s15, s16, s15
 1603 039e BDEEC77A 		ftosizs	s14, s14
 1604 03a2 5B42     		negs	r3, r3
 1605 03a4 17EE900A 		fmrs	r0, s15
 1606 03a8 C7F8FC30 		str	r3, [r7, #252]
 1607 03ac 87ED3E7A 		fsts	s14, [r7, #248]	@ int
 1608 03b0 FFF7FEFF 		bl	__aeabi_f2lz
 1609 03b4 C7E93C01 		strd	r0, [r7, #240]
 1610 03b8 D6ED257A 		flds	s15, [r6, #148]
 1611 03bc F5EEC07A 		fcmpezs	s15
 1612 03c0 F1EE10FA 		fmstat
 1613 03c4 54D9     		bls	.L321
 1614 03c6 B06E     		ldr	r0, [r6, #104]	@ float
 1615 03c8 FFF7FEFF 		bl	__aeabi_f2d
 1616 03cc 96ED187A 		flds	s14, [r6, #96]
 1617 03d0 D6ED197A 		flds	s15, [r6, #100]
 1618 03d4 67EE699A 		fnmuls	s19, s14, s19
 1619 03d8 0446     		mov	r4, r0
 1620 03da E7EE899A 		vfma.f32	s19, s15, s18
 1621 03de 0D46     		mov	r5, r1
 1622 03e0 F0EE4D7A 		fcpys	s15, s26
 1623 03e4 E9EEE97A 		vfms.f32	s15, s19, s19
 1624 03e8 17EE900A 		fmrs	r0, s15
 1625 03ec FFF7FEFF 		bl	__aeabi_f2d
 1626 03f0 FFF7FEFF 		bl	sqrt
 1627 03f4 0246     		mov	r2, r0
 1628 03f6 0B46     		mov	r3, r1
 1629 03f8 2046     		mov	r0, r4
 1630 03fa 2946     		mov	r1, r5
 1631 03fc FFF7FEFF 		bl	__aeabi_dmul
 1632 0400 0446     		mov	r4, r0
 1633 0402 18EE900A 		fmrs	r0, s17
 1634 0406 0D46     		mov	r5, r1
 1635 0408 FFF7FEFF 		bl	__aeabi_f2d
 1636 040c 0246     		mov	r2, r0
 1637 040e 0B46     		mov	r3, r1
 1638 0410 2046     		mov	r0, r4
 1639 0412 2946     		mov	r1, r5
 1640 0414 FFF7FEFF 		bl	__aeabi_dsub
 1641 0418 D6ED259A 		flds	s19, [r6, #148]
 1642 041c 0446     		mov	r4, r0
 1643 041e 19EE900A 		fmrs	r0, s19
 1644 0422 0D46     		mov	r5, r1
 1645 0424 FFF7FEFF 		bl	__aeabi_f2d
 1646 0428 0246     		mov	r2, r0
 1647 042a 0B46     		mov	r3, r1
 1648 042c 2046     		mov	r0, r4
 1649 042e 2946     		mov	r1, r5
 1650 0430 FFF7FEFF 		bl	__aeabi_ddiv
 1651 0434 FFF7FEFF 		bl	__aeabi_d2f
 1652 0438 09EE100A 		fmsr	s18, r0
 1653 043c B5EEC09A 		fcmpezs	s18
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 30


 1654 0440 F1EE10FA 		fmstat
 1655 0444 06DD     		ble	.L266
 1656 0446 D6ED227A 		flds	s15, [r6, #136]
 1657 044a B4EEE79A 		fcmpes	s18, s15
 1658 044e F1EE10FA 		fmstat
 1659 0452 51D4     		bmi	.L322
 1660              	.L266:
 1661 0454 D7F8D430 		ldr	r3, [r7, #212]
 1662 0458 0133     		adds	r3, r3, #1
 1663 045a C7F8E030 		str	r3, [r7, #224]
 1664              	.L265:
 1665 045e 08F10108 		add	r8, r8, #1
 1666 0462 B8F1030F 		cmp	r8, #3
 1667 0466 07F15007 		add	r7, r7, #80
 1668 046a 7FF460AF 		bne	.L274
 1669 046e D3E5     		b	.L273
 1670              	.L321:
 1671 0470 D6ED1A7A 		flds	s15, [r6, #104]
 1672 0474 D7F8D430 		ldr	r3, [r7, #212]
 1673 0478 F5EEC07A 		fcmpezs	s15
 1674 047c F1EE10FA 		fmstat
 1675 0480 B4BF     		ite	lt
 1676 0482 0022     		movlt	r2, #0
 1677 0484 0122     		movge	r2, #1
 1678 0486 0133     		adds	r3, r3, #1
 1679 0488 87F8DA20 		strb	r2, [r7, #218]
 1680 048c C7F8E030 		str	r3, [r7, #224]
 1681 0490 E5E7     		b	.L265
 1682              	.L318:
 1683 0492 A842     		cmp	r0, r5
 1684 0494 23D8     		bhi	.L278
 1685 0496 54F828CC 		ldr	ip, [r4, #-40]
 1686 049a 54F80C2C 		ldr	r2, [r4, #-12]
 1687 049e 9445     		cmp	ip, r2
 1688 04a0 1DD3     		bcc	.L278
 1689 04a2 6045     		cmp	r0, ip
 1690 04a4 FFF4DDAE 		bcc	.L279
 1691 04a8 6246     		mov	r2, ip
 1692 04aa 0023     		movs	r3, #0
 1693 04ac CDE90423 		strd	r2, [sp, #16]
 1694 04b0 54F8180C 		ldr	r0, [r4, #-24]
 1695 04b4 049B     		ldr	r3, [sp, #16]
 1696 04b6 54F8141C 		ldr	r1, [r4, #-20]
 1697 04ba DDF810C0 		ldr	ip, [sp, #16]
 1698 04be A0FB0323 		umull	r2, r3, r0, r3
 1699 04c2 01FB0C31 		mla	r1, r1, ip, r3
 1700 04c6 CDE90223 		strd	r2, [sp, #8]
 1701 04ca 0391     		str	r1, [sp, #12]
 1702 04cc DDE90201 		ldrd	r0, [sp, #8]
 1703 04d0 D4E90023 		ldrd	r2, [r4]
 1704 04d4 9042     		cmp	r0, r2
 1705 04d6 71EB0303 		sbcs	r3, r1, r3
 1706 04da BFF6C2AE 		bge	.L279
 1707              	.L278:
 1708 04de 5046     		mov	r0, r10
 1709 04e0 FFF7FEFF 		bl	_ZNK3DDA10DebugPrintEv
 1710 04e4 54F8342C 		ldr	r2, [r4, #-52]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 31


 1711 04e8 0192     		str	r2, [sp, #4]
 1712 04ea BAE6     		b	.L279
 1713              	.L286:
 1714 04ec DDF804C0 		ldr	ip, [sp, #4]
 1715 04f0 04F82FCC 		strb	ip, [r4, #-47]
 1716 04f4 6046     		mov	r0, ip
 1717 04f6 90E6     		b	.L288
 1718              	.L322:
 1719 04f8 D6ED1A7A 		flds	s15, [r6, #104]
 1720 04fc 69EE277A 		fmuls	s15, s18, s15
 1721 0500 17EE900A 		fmrs	r0, s15
 1722 0504 FFF7FEFF 		bl	__aeabi_f2d
 1723 0508 79EE097A 		fadds	s15, s18, s18
 1724 050c 29EE099A 		fmuls	s18, s18, s18
 1725 0510 A7EEE88A 		vfms.f32	s16, s15, s17
 1726 0514 0446     		mov	r4, r0
 1727 0516 0D46     		mov	r5, r1
 1728 0518 A9EEC98A 		vfms.f32	s16, s19, s18
 1729 051c 18EE100A 		fmrs	r0, s16
 1730 0520 FFF7FEFF 		bl	__aeabi_f2d
 1731 0524 FFF7FEFF 		bl	sqrt
 1732 0528 0B46     		mov	r3, r1
 1733 052a 0246     		mov	r2, r0
 1734 052c 2946     		mov	r1, r5
 1735 052e 2046     		mov	r0, r4
 1736 0530 FFF7FEFF 		bl	__aeabi_dadd
 1737 0534 FFF7FEFF 		bl	__aeabi_d2f
 1738 0538 07EE900A 		fmsr	s15, r0
 1739 053c 37EECAAA 		fsubs	s20, s15, s20
 1740 0540 6AEE2AAA 		fmuls	s21, s20, s21
 1741 0544 FDEEEAAA 		ftosizs	s21, s21
 1742 0548 1AEE903A 		fmrs	r3, s21	@ int
 1743 054c 002B     		cmp	r3, #0
 1744 054e 1ADD     		ble	.L323
 1745 0550 97F8DA20 		ldrb	r2, [r7, #218]	@ zero_extendqisi2
 1746 0554 5AB1     		cbz	r2, .L271
 1747 0556 D7F8D420 		ldr	r2, [r7, #212]
 1748 055a 9342     		cmp	r3, r2
 1749 055c 15D9     		bls	.L270
 1750 055e C2EB4302 		rsb	r2, r2, r3, lsl #1
 1751 0562 0133     		adds	r3, r3, #1
 1752 0564 C7F8D420 		str	r2, [r7, #212]
 1753 0568 C7F8E030 		str	r3, [r7, #224]
 1754 056c 77E7     		b	.L265
 1755              	.L271:
 1756 056e D7F8D420 		ldr	r2, [r7, #212]
 1757 0572 87F8DAB0 		strb	fp, [r7, #218]
 1758 0576 02EB4302 		add	r2, r2, r3, lsl #1
 1759 057a 0133     		adds	r3, r3, #1
 1760 057c C7F8D420 		str	r2, [r7, #212]
 1761 0580 C7F8E030 		str	r3, [r7, #224]
 1762 0584 6BE7     		b	.L265
 1763              	.L323:
 1764 0586 D7F8D420 		ldr	r2, [r7, #212]
 1765              	.L270:
 1766 058a 0132     		adds	r2, r2, #1
 1767 058c C7F8E020 		str	r2, [r7, #224]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 32


 1768 0590 65E7     		b	.L265
 1769              	.L320:
 1770 0592 18EE100A 		fmrs	r0, s16
 1771 0596 FFF7FEFF 		bl	sqrtf
 1772 059a 0AEE100A 		fmsr	s20, r0
 1773 059e ECE6     		b	.L262
 1774              	.L327:
 1775              		.align	2
 1776              	.L326:
 1777 05a0 00000044 		.word	1140850688
 1778 05a4 00000000 		.word	reprap
 1779              		.size	_ZN3DDA7PrepareEv, .-_ZN3DDA7PrepareEv
 1780              		.section	.text._ZN3DDA9MagnitudeEPKfj,"ax",%progbits
 1781              		.align	2
 1782              		.global	_ZN3DDA9MagnitudeEPKfj
 1783              		.thumb
 1784              		.thumb_func
 1785              		.type	_ZN3DDA9MagnitudeEPKfj, %function
 1786              	_ZN3DDA9MagnitudeEPKfj:
 1787              		@ args = 0, pretend = 0, frame = 0
 1788              		@ frame_needed = 0, uses_anonymous_args = 0
 1789 0000 08B5     		push	{r3, lr}
 1790 0002 9FED0E7A 		flds	s14, .L335
 1791 0006 39B1     		cbz	r1, .L329
 1792 0008 00EB8101 		add	r1, r0, r1, lsl #2
 1793              	.L330:
 1794 000c F0EC017A 		fldmias	r0!, {s15}
 1795 0010 8842     		cmp	r0, r1
 1796 0012 A7EEA77A 		vfma.f32	s14, s15, s15
 1797 0016 F9D1     		bne	.L330
 1798              	.L329:
 1799 0018 F1EEC77A 		fsqrts	s15, s14
 1800 001c F4EE677A 		fcmps	s15, s15
 1801 0020 F1EE10FA 		fmstat
 1802 0024 02D1     		bne	.L334
 1803              	.L331:
 1804 0026 17EE900A 		fmrs	r0, s15
 1805 002a 08BD     		pop	{r3, pc}
 1806              	.L334:
 1807 002c 17EE100A 		fmrs	r0, s14
 1808 0030 FFF7FEFF 		bl	sqrtf
 1809 0034 07EE900A 		fmsr	s15, r0
 1810 0038 F5E7     		b	.L331
 1811              	.L336:
 1812 003a 00BF     		.align	2
 1813              	.L335:
 1814 003c 00000000 		.word	0
 1815              		.size	_ZN3DDA9MagnitudeEPKfj, .-_ZN3DDA9MagnitudeEPKfj
 1816              		.section	.text._ZN3DDA21VectorBoxIntersectionEPKfS1_j,"ax",%progbits
 1817              		.align	2
 1818              		.global	_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 1819              		.thumb
 1820              		.thumb_func
 1821              		.type	_ZN3DDA21VectorBoxIntersectionEPKfS1_j, %function
 1822              	_ZN3DDA21VectorBoxIntersectionEPKfS1_j:
 1823              		@ args = 0, pretend = 0, frame = 0
 1824              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 33


 1825 0000 70B5     		push	{r4, r5, r6, lr}
 1826 0002 0D46     		mov	r5, r1
 1827 0004 0646     		mov	r6, r0
 1828 0006 1146     		mov	r1, r2
 1829 0008 2846     		mov	r0, r5
 1830 000a 1446     		mov	r4, r2
 1831 000c FFF7FEFF 		bl	_ZN3DDA9MagnitudeEPKfj
 1832 0010 07EE100A 		fmsr	s14, r0
 1833 0014 77EE075A 		fadds	s11, s14, s14
 1834 0018 F4B1     		cbz	r4, .L342
 1835 001a 3346     		mov	r3, r6
 1836 001c B0EE656A 		fcpys	s12, s11
 1837 0020 06EB8402 		add	r2, r6, r4, lsl #2
 1838 0024 2946     		mov	r1, r5
 1839              	.L341:
 1840 0026 F3EC017A 		fldmias	r3!, {s15}
 1841 002a B1EC017A 		fldmias	r1!, {s14}
 1842 002e 67EEA56A 		fmuls	s13, s15, s11
 1843 0032 F4EEC76A 		fcmpes	s13, s14
 1844 0036 F1EE10FA 		fmstat
 1845 003a 08DD     		ble	.L339
 1846 003c C7EE277A 		fdivs	s15, s14, s15
 1847 0040 F4EE467A 		fcmps	s15, s12
 1848 0044 F1EE10FA 		fmstat
 1849 0048 48BF     		it	mi
 1850 004a B0EE676A 		fcpysmi	s12, s15
 1851              	.L339:
 1852 004e 9342     		cmp	r3, r2
 1853 0050 E9D1     		bne	.L341
 1854              	.L338:
 1855 0052 16EE100A 		fmrs	r0, s12
 1856 0056 70BD     		pop	{r4, r5, r6, pc}
 1857              	.L342:
 1858 0058 B0EE656A 		fcpys	s12, s11
 1859 005c F9E7     		b	.L338
 1860              		.size	_ZN3DDA21VectorBoxIntersectionEPKfS1_j, .-_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 1861 005e 00BF     		.section	.text._ZN3DDA9NormaliseEPfjj,"ax",%progbits
 1862              		.align	2
 1863              		.global	_ZN3DDA9NormaliseEPfjj
 1864              		.thumb
 1865              		.thumb_func
 1866              		.type	_ZN3DDA9NormaliseEPfjj, %function
 1867              	_ZN3DDA9NormaliseEPfjj:
 1868              		@ args = 0, pretend = 0, frame = 0
 1869              		@ frame_needed = 0, uses_anonymous_args = 0
 1870 0000 38B5     		push	{r3, r4, r5, lr}
 1871 0002 0C46     		mov	r4, r1
 1872 0004 1146     		mov	r1, r2
 1873 0006 0546     		mov	r5, r0
 1874 0008 FFF7FEFF 		bl	_ZN3DDA9MagnitudeEPKfj
 1875 000c 06EE900A 		fmsr	s13, r0
 1876 0010 F5EEC06A 		fcmpezs	s13
 1877 0014 F1EE10FA 		fmstat
 1878 0018 12D9     		bls	.L349
 1879 001a B7EE007A 		fconsts	s14, #112
 1880 001e 87EE267A 		fdivs	s14, s14, s13
 1881 0022 54B1     		cbz	r4, .L351
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 34


 1882 0024 2846     		mov	r0, r5
 1883 0026 05EB8401 		add	r1, r5, r4, lsl #2
 1884              	.L348:
 1885 002a D0ED007A 		flds	s15, [r0]
 1886 002e 67EE277A 		fmuls	s15, s14, s15
 1887 0032 E0EC017A 		fstmias	r0!, {s15}
 1888 0036 8842     		cmp	r0, r1
 1889 0038 F7D1     		bne	.L348
 1890              	.L351:
 1891 003a 16EE900A 		fmrs	r0, s13
 1892 003e 38BD     		pop	{r3, r4, r5, pc}
 1893              	.L349:
 1894 0040 0020     		movs	r0, #0
 1895 0042 38BD     		pop	{r3, r4, r5, pc}
 1896              		.size	_ZN3DDA9NormaliseEPfjj, .-_ZN3DDA9NormaliseEPfjj
 1897              		.section	.text._ZN3DDA19AdvanceBabySteppingEf,"ax",%progbits
 1898              		.align	2
 1899              		.global	_ZN3DDA19AdvanceBabySteppingEf
 1900              		.thumb
 1901              		.thumb_func
 1902              		.type	_ZN3DDA19AdvanceBabySteppingEf, %function
 1903              	_ZN3DDA19AdvanceBabySteppingEf:
 1904              		@ args = 0, pretend = 0, frame = 0
 1905              		@ frame_needed = 0, uses_anonymous_args = 0
 1906 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 1907 0004 0746     		mov	r7, r0
 1908 0006 2DED068B 		fstmfdd	sp!, {d8, d9, d10}
 1909 000a 0646     		mov	r6, r0
 1910 000c 09EE101A 		fmsr	s18, r1
 1911 0010 00E0     		b	.L355
 1912              	.L385:
 1913 0012 1E46     		mov	r6, r3
 1914              	.L355:
 1915 0014 7368     		ldr	r3, [r6, #4]
 1916 0016 1A7A     		ldrb	r2, [r3, #8]	@ zero_extendqisi2
 1917 0018 012A     		cmp	r2, #1
 1918 001a FAD0     		beq	.L385
 1919 001c BE42     		cmp	r6, r7
 1920 001e 00F0AB80 		beq	.L353
 1921 0022 DFED808A 		flds	s17, .L389
 1922 0026 DFF80882 		ldr	r8, .L389+12
 1923 002a 9FED7FAA 		flds	s20, .L389+4
 1924              	.L377:
 1925 002e B5EE409A 		fcmpzs	s18
 1926 0032 F1EE10FA 		fmstat
 1927 0036 00F0D080 		beq	.L378
 1928 003a D8F80030 		ldr	r3, [r8]
 1929 003e D6ED229A 		flds	s19, [r6, #136]
 1930 0042 D3F87801 		ldr	r0, [r3, #376]	@ float
 1931 0046 FFF7FEFF 		bl	__aeabi_f2d
 1932 004a 0022     		movs	r2, #0
 1933 004c 774B     		ldr	r3, .L389+8
 1934 004e FFF7FEFF 		bl	__aeabi_dmul
 1935 0052 0446     		mov	r4, r0
 1936 0054 D6F8A400 		ldr	r0, [r6, #164]	@ float
 1937 0058 0D46     		mov	r5, r1
 1938 005a FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 35


 1939 005e 0246     		mov	r2, r0
 1940 0060 0B46     		mov	r3, r1
 1941 0062 2046     		mov	r0, r4
 1942 0064 2946     		mov	r1, r5
 1943 0066 FFF7FEFF 		bl	__aeabi_ddiv
 1944 006a FFF7FEFF 		bl	__aeabi_d2f
 1945 006e 07EE900A 		fmsr	s15, r0
 1946 0072 F4EECA7A 		fcmpes	s15, s20
 1947 0076 F1EE10FA 		fmstat
 1948 007a C8BF     		it	gt
 1949 007c F0EE4A7A 		fcpysgt	s15, s20
 1950 0080 69EEA77A 		fmuls	s15, s19, s15
 1951 0084 B4EE499A 		fcmps	s18, s18
 1952 0088 F1EE10FA 		fmstat
 1953 008c B1EE678A 		fnegs	s16, s15
 1954 0090 80F1BE80 		bvs	.L380
 1955 0094 F4EEC97A 		fcmpes	s15, s18
 1956 0098 F1EE10FA 		fmstat
 1957 009c 00F3AE80 		bgt	.L381
 1958 00a0 F4EE677A 		fcmps	s15, s15
 1959 00a4 F1EE10FA 		fmstat
 1960 00a8 80F1B980 		bvs	.L386
 1961              	.L361:
 1962 00ac F4EE487A 		fcmps	s15, s16
 1963 00b0 F1EE10FA 		fmstat
 1964 00b4 C8BF     		it	gt
 1965 00b6 B0EE678A 		fcpysgt	s16, s15
 1966              	.L360:
 1967 00ba C8EE299A 		fdivs	s19, s16, s19
 1968 00be D8F81030 		ldr	r3, [r8, #16]
 1969 00c2 0A21     		movs	r1, #10
 1970 00c4 D3F8B021 		ldr	r2, [r3, #432]
 1971 00c8 06F16000 		add	r0, r6, #96
 1972 00cc D6ED1A7A 		flds	s15, [r6, #104]
 1973 00d0 77EEA99A 		fadds	s19, s15, s19
 1974 00d4 C6ED1A9A 		fsts	s19, [r6, #104]
 1975 00d8 FFF7FEFF 		bl	_ZN3DDA9NormaliseEPfjj
 1976 00dc D6ED227A 		flds	s15, [r6, #136]
 1977 00e0 07EE100A 		fmsr	s14, r0
 1978 00e4 67EE877A 		fmuls	s15, s15, s14
 1979 00e8 3046     		mov	r0, r6
 1980 00ea C6ED227A 		fsts	s15, [r6, #136]
 1981 00ee FFF7FEFF 		bl	_ZN3DDA15RecalculateMoveEv
 1982 00f2 78EE888A 		fadds	s17, s17, s16
 1983 00f6 39EE489A 		fsubs	s18, s18, s16
 1984              	.L357:
 1985 00fa D6ED107A 		flds	s15, [r6, #64]
 1986 00fe 737A     		ldrb	r3, [r6, #9]	@ zero_extendqisi2
 1987 0100 77EEA87A 		fadds	s15, s15, s17
 1988 0104 9B07     		lsls	r3, r3, #30
 1989 0106 C6ED107A 		fsts	s15, [r6, #64]
 1990 010a 39D5     		bpl	.L363
 1991 010c 0023     		movs	r3, #0
 1992 010e D8F80040 		ldr	r4, [r8]
 1993 0112 9C46     		mov	ip, r3
 1994 0114 3246     		mov	r2, r6
 1995 0116 3146     		mov	r1, r6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 36


 1996 0118 0125     		movs	r5, #1
 1997              	.L370:
 1998 011a E018     		adds	r0, r4, r3
 1999 011c D0ED527A 		flds	s15, [r0, #328]
 2000 0120 1069     		ldr	r0, [r2, #16]
 2001 0122 28EEA77A 		fmuls	s14, s17, s15
 2002 0126 B5EE408A 		fcmpzs	s16
 2003 012a BDEEC77A 		ftosizs	s14, s14
 2004 012e F1EE10FA 		fmstat
 2005 0132 17EE109A 		fmrs	r9, s14	@ int
 2006 0136 4844     		add	r0, r0, r9
 2007 0138 1061     		str	r0, [r2, #16]
 2008 013a 12D0     		beq	.L364
 2009 013c 68EE277A 		fmuls	s15, s16, s15
 2010 0140 91F8DA00 		ldrb	r0, [r1, #218]	@ zero_extendqisi2
 2011 0144 FDEEE77A 		ftosizs	s15, s15
 2012 0148 0028     		cmp	r0, #0
 2013 014a 49D0     		beq	.L365
 2014 014c D1F8D400 		ldr	r0, [r1, #212]
 2015 0150 17EE909A 		fmrs	r9, s15	@ int
 2016 0154 4844     		add	r0, r0, r9
 2017 0156 0028     		cmp	r0, #0
 2018 0158 4ADB     		blt	.L367
 2019              	.L388:
 2020 015a 81F8DA50 		strb	r5, [r1, #218]
 2021 015e C1F8D400 		str	r0, [r1, #212]
 2022              	.L364:
 2023 0162 0433     		adds	r3, r3, #4
 2024 0164 0C2B     		cmp	r3, #12
 2025 0166 02F10402 		add	r2, r2, #4
 2026 016a 01F15001 		add	r1, r1, #80
 2027 016e D4D1     		bne	.L370
 2028              	.L369:
 2029 0170 3668     		ldr	r6, [r6]
 2030 0172 B742     		cmp	r7, r6
 2031 0174 7FF45BAF 		bne	.L377
 2032              	.L353:
 2033 0178 BDEC068B 		fldmfdd	sp!, {d8-d10}
 2034 017c BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 2035              	.L363:
 2036 0180 D8F80020 		ldr	r2, [r8]
 2037 0184 B369     		ldr	r3, [r6, #24]
 2038 0186 D2ED547A 		flds	s15, [r2, #336]
 2039 018a 28EEA77A 		fmuls	s14, s17, s15
 2040 018e B5EE408A 		fcmpzs	s16
 2041 0192 BDEEC77A 		ftosizs	s14, s14
 2042 0196 F1EE10FA 		fmstat
 2043 019a 17EE102A 		fmrs	r2, s14	@ int
 2044 019e 1344     		add	r3, r3, r2
 2045 01a0 B361     		str	r3, [r6, #24]
 2046 01a2 E5D0     		beq	.L369
 2047 01a4 28EE278A 		fmuls	s16, s16, s15
 2048 01a8 96F87921 		ldrb	r2, [r6, #377]	@ zero_extendqisi2
 2049 01ac BDEEC88A 		ftosizs	s16, s16
 2050 01b0 012A     		cmp	r2, #1
 2051 01b2 18EE103A 		fmrs	r3, s16	@ int
 2052 01b6 24D0     		beq	.L387
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 37


 2053 01b8 0122     		movs	r2, #1
 2054 01ba 86F87921 		strb	r2, [r6, #377]
 2055              	.L374:
 2056 01be 002B     		cmp	r3, #0
 2057 01c0 AEBF     		itee	ge
 2058 01c2 0122     		movge	r2, #1
 2059 01c4 5B42     		rsblt	r3, r3, #0
 2060 01c6 0022     		movlt	r2, #0
 2061 01c8 C6F87431 		str	r3, [r6, #372]
 2062 01cc 86F87A21 		strb	r2, [r6, #378]
 2063 01d0 3668     		ldr	r6, [r6]
 2064 01d2 B742     		cmp	r7, r6
 2065 01d4 7FF42BAF 		bne	.L377
 2066 01d8 CEE7     		b	.L353
 2067              	.L378:
 2068 01da 9FED128A 		flds	s16, .L389
 2069 01de 8CE7     		b	.L357
 2070              	.L365:
 2071 01e0 D1F8D400 		ldr	r0, [r1, #212]
 2072 01e4 17EE909A 		fmrs	r9, s15	@ int
 2073 01e8 C0EB0900 		rsb	r0, r0, r9
 2074 01ec 0028     		cmp	r0, #0
 2075 01ee B4DA     		bge	.L388
 2076              	.L367:
 2077 01f0 4042     		negs	r0, r0
 2078 01f2 C1F8D400 		str	r0, [r1, #212]
 2079 01f6 81F8DAC0 		strb	ip, [r1, #218]
 2080 01fa B2E7     		b	.L364
 2081              	.L381:
 2082 01fc F0EE497A 		fcpys	s15, s18
 2083 0200 54E7     		b	.L361
 2084              	.L387:
 2085 0202 96F87A21 		ldrb	r2, [r6, #378]	@ zero_extendqisi2
 2086 0206 32B1     		cbz	r2, .L373
 2087 0208 D6F87421 		ldr	r2, [r6, #372]
 2088 020c 1344     		add	r3, r3, r2
 2089 020e D6E7     		b	.L374
 2090              	.L380:
 2091 0210 B0EE498A 		fcpys	s16, s18
 2092 0214 51E7     		b	.L360
 2093              	.L373:
 2094 0216 D6F87421 		ldr	r2, [r6, #372]
 2095 021a 9B1A     		subs	r3, r3, r2
 2096 021c CFE7     		b	.L374
 2097              	.L386:
 2098 021e B0EE678A 		fcpys	s16, s15
 2099 0222 4AE7     		b	.L360
 2100              	.L390:
 2101              		.align	2
 2102              	.L389:
 2103 0224 00000000 		.word	0
 2104 0228 CDCCCC3D 		.word	1036831949
 2105 022c 0000E03F 		.word	1071644672
 2106 0230 00000000 		.word	reprap
 2107              		.size	_ZN3DDA19AdvanceBabySteppingEf, .-_ZN3DDA19AdvanceBabySteppingEf
 2108              		.section	.text._ZN3DDA4InitERKN6GCodes7RawMoveEb,"ax",%progbits
 2109              		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 38


 2110              		.global	_ZN3DDA4InitERKN6GCodes7RawMoveEb
 2111              		.thumb
 2112              		.thumb_func
 2113              		.type	_ZN3DDA4InitERKN6GCodes7RawMoveEb, %function
 2114              	_ZN3DDA4InitERKN6GCodes7RawMoveEb:
 2115              		@ args = 0, pretend = 0, frame = 136
 2116              		@ frame_needed = 0, uses_anonymous_args = 0
 2117 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2118 0004 2DED028B 		fstmfdd	sp!, {d8}
 2119 0008 D1ED137A 		flds	s15, [r1, #76]
 2120 000c A3B0     		sub	sp, sp, #140
 2121 000e F5EE407A 		fcmpzs	s15
 2122 0012 F1EE10FA 		fmstat
 2123 0016 0591     		str	r1, [sp, #20]
 2124 0018 0392     		str	r2, [sp, #12]
 2125 001a 8146     		mov	r9, r0
 2126 001c 05D0     		beq	.L392
 2127 001e 0B6D     		ldr	r3, [r1, #80]
 2128 0020 23F07F43 		bic	r3, r3, #-16777216
 2129 0024 002B     		cmp	r3, #0
 2130 0026 00F01082 		beq	.L492
 2131              	.L392:
 2132 002a D9F80440 		ldr	r4, [r9, #4]
 2133 002e DFF85485 		ldr	r8, .L504+4
 2134 0032 04F11003 		add	r3, r4, #16
 2135 0036 0693     		str	r3, [sp, #24]
 2136 0038 D8F80830 		ldr	r3, [r8, #8]
 2137 003c 0B93     		str	r3, [sp, #44]
 2138 003e 039B     		ldr	r3, [sp, #12]
 2139 0040 002B     		cmp	r3, #0
 2140 0042 40F0E281 		bne	.L493
 2141 0046 99F80930 		ldrb	r3, [r9, #9]	@ zero_extendqisi2
 2142 004a 039C     		ldr	r4, [sp, #12]
 2143 004c 64F34103 		bfi	r3, r4, #1, #1
 2144 0050 89F80930 		strb	r3, [r9, #9]
 2145              	.L395:
 2146 0054 99F80930 		ldrb	r3, [r9, #9]	@ zero_extendqisi2
 2147 0058 0B9C     		ldr	r4, [sp, #44]
 2148 005a 6FF30413 		bfc	r3, #4, #1
 2149 005e 89F80930 		strb	r3, [r9, #9]
 2150 0062 94F8BC3A 		ldrb	r3, [r4, #2748]	@ zero_extendqisi2
 2151 0066 002B     		cmp	r3, #0
 2152 0068 00F0C381 		beq	.L450
 2153 006c 039C     		ldr	r4, [sp, #12]
 2154 006e 84F00104 		eor	r4, r4, #1
 2155 0072 0494     		str	r4, [sp, #16]
 2156              	.L396:
 2157 0074 D8F81030 		ldr	r3, [r8, #16]
 2158 0078 D8F80040 		ldr	r4, [r8]
 2159 007c D3F8B031 		ldr	r3, [r3, #432]
 2160 0080 0D94     		str	r4, [sp, #52]
 2161 0082 0293     		str	r3, [sp, #8]
 2162 0084 09F16003 		add	r3, r9, #96
 2163 0088 0A93     		str	r3, [sp, #40]
 2164 008a 0D98     		ldr	r0, [sp, #52]
 2165 008c 029B     		ldr	r3, [sp, #8]
 2166 008e 0A9D     		ldr	r5, [sp, #40]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 39


 2167 0090 059E     		ldr	r6, [sp, #20]
 2168 0092 CDF81C90 		str	r9, [sp, #28]
 2169 0096 0024     		movs	r4, #0
 2170 0098 C3F1000B 		rsb	fp, r3, #0
 2171 009c 00F58C73 		add	r3, r0, #280
 2172 00a0 DC46     		mov	ip, fp
 2173 00a2 0DF1380A 		add	r10, sp, #56
 2174 00a6 0C94     		str	r4, [sp, #48]
 2175 00a8 0994     		str	r4, [sp, #36]
 2176 00aa 0894     		str	r4, [sp, #32]
 2177 00ac 09F1C007 		add	r7, r9, #192
 2178 00b0 9B46     		mov	fp, r3
 2179 00b2 37E0     		b	.L412
 2180              	.L497:
 2181 00b4 3168     		ldr	r1, [r6]	@ float
 2182 00b6 CDF804C0 		str	ip, [sp, #4]
 2183 00ba 2046     		mov	r0, r4
 2184 00bc FFF7FEFF 		bl	_ZN4Move22MotorEndPointToMachineEjf
 2185 00c0 45F8500C 		str	r0, [r5, #-80]
 2186 00c4 96ED008A 		flds	s16, [r6]
 2187 00c8 05ED0A8A 		fsts	s16, [r5, #-40]
 2188 00cc DDF804C0 		ldr	ip, [sp, #4]
 2189              	.L446:
 2190 00d0 069B     		ldr	r3, [sp, #24]
 2191 00d2 53F82420 		ldr	r2, [r3, r4, lsl #2]
 2192 00d6 C2EB0009 		rsb	r9, r2, r0
 2193 00da 0498     		ldr	r0, [sp, #16]
 2194 00dc 0028     		cmp	r0, #0
 2195 00de 00F08280 		beq	.L494
 2196              	.L400:
 2197 00e2 D8F80020 		ldr	r2, [r8]
 2198 00e6 06EE909A 		fmsr	s13, r9	@ int
 2199 00ea 02EB8402 		add	r2, r2, r4, lsl #2
 2200 00ee D2ED527A 		flds	s15, [r2, #328]
 2201 00f2 B8EEE67A 		fsitos	s14, s13
 2202 00f6 19F10002 		adds	r2, r9, #0
 2203 00fa C7EE277A 		fdivs	s15, s14, s15
 2204 00fe 18BF     		it	ne
 2205 0100 0122     		movne	r2, #1
 2206 0102 C5ED007A 		fsts	s15, [r5]
 2207              	.L489:
 2208 0106 012A     		cmp	r2, #1
 2209 0108 7A76     		strb	r2, [r7, #25]
 2210 010a 2BD0     		beq	.L495
 2211              	.L404:
 2212 010c 0134     		adds	r4, r4, #1
 2213 010e 0A2C     		cmp	r4, #10
 2214 0110 07F15007 		add	r7, r7, #80
 2215 0114 0CF1010C 		add	ip, ip, #1
 2216 0118 05F10405 		add	r5, r5, #4
 2217 011c 06F10406 		add	r6, r6, #4
 2218 0120 00F08580 		beq	.L496
 2219              	.L412:
 2220 0124 029B     		ldr	r3, [sp, #8]
 2221 0126 5BF8042B 		ldr	r2, [fp], #4	@ float
 2222 012a 4AF8042B 		str	r2, [r10], #4	@ float
 2223 012e A342     		cmp	r3, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 40


 2224 0130 09D9     		bls	.L397
 2225 0132 039B     		ldr	r3, [sp, #12]
 2226 0134 002B     		cmp	r3, #0
 2227 0136 BDD0     		beq	.L497
 2228 0138 96ED008A 		flds	s16, [r6]
 2229 013c 55F8500C 		ldr	r0, [r5, #-80]
 2230 0140 05ED0A8A 		fsts	s16, [r5, #-40]
 2231 0144 C4E7     		b	.L446
 2232              	.L397:
 2233 0146 3168     		ldr	r1, [r6]	@ float
 2234 0148 CDF804C0 		str	ip, [sp, #4]
 2235 014c 2046     		mov	r0, r4
 2236 014e FFF7FEFF 		bl	_ZN4Move22MotorEndPointToMachineEjf
 2237 0152 45F8500C 		str	r0, [r5, #-80]
 2238 0156 3268     		ldr	r2, [r6]	@ float
 2239 0158 45F8282C 		str	r2, [r5, #-40]	@ float
 2240 015c 8146     		mov	r9, r0
 2241 015e DDF804C0 		ldr	ip, [sp, #4]
 2242 0162 BEE7     		b	.L400
 2243              	.L495:
 2244 0164 029B     		ldr	r3, [sp, #8]
 2245 0166 6FEA0902 		mvn	r2, r9
 2246 016a 89EAE971 		eor	r1, r9, r9, asr #31
 2247 016e A1EBE971 		sub	r1, r1, r9, asr #31
 2248 0172 D20F     		lsrs	r2, r2, #31
 2249 0174 A342     		cmp	r3, r4
 2250 0176 7961     		str	r1, [r7, #20]
 2251 0178 BA76     		strb	r2, [r7, #26]
 2252 017a 31D8     		bhi	.L490
 2253 017c 0998     		ldr	r0, [sp, #36]
 2254 017e 78B3     		cbz	r0, .L490
 2255 0180 B9F1000F 		cmp	r9, #0
 2256 0184 04DD     		ble	.L407
 2257 0186 079B     		ldr	r3, [sp, #28]
 2258 0188 5A7A     		ldrb	r2, [r3, #9]	@ zero_extendqisi2
 2259 018a 42F01002 		orr	r2, r2, #16
 2260 018e 5A72     		strb	r2, [r3, #9]
 2261              	.L407:
 2262 0190 0598     		ldr	r0, [sp, #20]
 2263 0192 90F85420 		ldrb	r2, [r0, #84]	@ zero_extendqisi2
 2264 0196 1AB3     		cbz	r2, .L490
 2265 0198 BCF1060F 		cmp	ip, #6
 2266 019c D8F80020 		ldr	r2, [r8]
 2267 01a0 1ED8     		bhi	.L490
 2268 01a2 02EB8C01 		add	r1, r2, ip, lsl #2
 2269 01a6 91ED667A 		flds	s14, [r1, #408]
 2270 01aa B5EEC07A 		fcmpezs	s14
 2271 01ae F1EE10FA 		fmstat
 2272 01b2 15DD     		ble	.L490
 2273 01b4 5AED017A 		flds	s15, [r10, #-4]
 2274 01b8 02EB8402 		add	r2, r2, r4, lsl #2
 2275 01bc D2ED5C6A 		flds	s13, [r2, #368]
 2276 01c0 F4EE677A 		fcmps	s15, s15
 2277 01c4 F1EE10FA 		fmstat
 2278 01c8 86EE877A 		fdivs	s14, s13, s14
 2279 01cc 06D6     		bvs	.L409
 2280 01ce F4EEC77A 		fcmpes	s15, s14
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 41


 2281 01d2 F1EE10FA 		fmstat
 2282 01d6 58BF     		it	pl
 2283 01d8 F0EE477A 		fcpyspl	s15, s14
 2284              	.L409:
 2285 01dc 4AED017A 		fsts	s15, [r10, #-4]
 2286              	.L490:
 2287 01e0 0123     		movs	r3, #1
 2288 01e2 0893     		str	r3, [sp, #32]
 2289 01e4 92E7     		b	.L404
 2290              	.L494:
 2291 01e6 079B     		ldr	r3, [sp, #28]
 2292 01e8 049A     		ldr	r2, [sp, #16]
 2293 01ea 5868     		ldr	r0, [r3, #4]
 2294 01ec CDF804C0 		str	ip, [sp, #4]
 2295 01f0 2146     		mov	r1, r4
 2296 01f2 FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 2297 01f6 06EE900A 		fmsr	s13, r0
 2298 01fa 38EE668A 		fsubs	s16, s16, s13
 2299 01fe B5EE408A 		fcmpzs	s16
 2300 0202 85ED008A 		fsts	s16, [r5]
 2301 0206 F1EE10FA 		fmstat
 2302 020a DDF804C0 		ldr	ip, [sp, #4]
 2303 020e 04D0     		beq	.L401
 2304 0210 0123     		movs	r3, #1
 2305 0212 022C     		cmp	r4, #2
 2306 0214 0C93     		str	r3, [sp, #48]
 2307 0216 18BF     		it	ne
 2308 0218 0993     		strne	r3, [sp, #36]
 2309              	.L401:
 2310 021a 079B     		ldr	r3, [sp, #28]
 2311 021c 5A7A     		ldrb	r2, [r3, #9]	@ zero_extendqisi2
 2312 021e 9007     		lsls	r0, r2, #30
 2313 0220 00F1E580 		bmi	.L452
 2314 0224 19F10002 		adds	r2, r9, #0
 2315 0228 18BF     		it	ne
 2316 022a 0122     		movne	r2, #1
 2317 022c 6BE7     		b	.L489
 2318              	.L496:
 2319 022e 089C     		ldr	r4, [sp, #32]
 2320 0230 DDF81C90 		ldr	r9, [sp, #28]
 2321 0234 002C     		cmp	r4, #0
 2322 0236 00F0E280 		beq	.L455
 2323 023a 059C     		ldr	r4, [sp, #20]
 2324 023c 99F80920 		ldrb	r2, [r9, #9]	@ zero_extendqisi2
 2325 0240 94F85510 		ldrb	r1, [r4, #85]	@ zero_extendqisi2
 2326 0244 B4F85030 		ldrh	r3, [r4, #80]
 2327 0248 A9F80A30 		strh	r3, [r9, #10]	@ movhi
 2328 024c 61F38202 		bfi	r2, r1, #2, #1
 2329 0250 89F80920 		strb	r2, [r9, #9]
 2330 0254 94F85400 		ldrb	r0, [r4, #84]	@ zero_extendqisi2
 2331 0258 616C     		ldr	r1, [r4, #68]
 2332 025a C9F80C10 		str	r1, [r9, #12]
 2333 025e D2B2     		uxtb	r2, r2
 2334 0260 60F34512 		bfi	r2, r0, #5, #1
 2335 0264 6FF38612 		bfc	r2, #6, #1
 2336 0268 89F80920 		strb	r2, [r9, #9]
 2337 026c 002B     		cmp	r3, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 42


 2338 026e 00F0C280 		beq	.L498
 2339 0272 0022     		movs	r2, #0
 2340              	.L414:
 2341 0274 99F80930 		ldrb	r3, [r9, #9]	@ zero_extendqisi2
 2342 0278 62F30003 		bfi	r3, r2, #0, #1
 2343 027c 89F80930 		strb	r3, [r9, #9]
 2344 0280 0C9B     		ldr	r3, [sp, #48]
 2345 0282 002B     		cmp	r3, #0
 2346 0284 00F0FF80 		beq	.L415
 2347 0288 99F80930 		ldrb	r3, [r9, #9]	@ zero_extendqisi2
 2348 028c 9907     		lsls	r1, r3, #30
 2349 028e 16D5     		bpl	.L416
 2350 0290 0B9C     		ldr	r4, [sp, #44]
 2351 0292 D9ED196A 		flds	s13, [r9, #100]
 2352 0296 99ED186A 		flds	s12, [r9, #96]
 2353 029a 99ED1A7A 		flds	s14, [r9, #104]
 2354 029e 04F6B823 		addw	r3, r4, #2744
 2355 02a2 D3ED007A 		flds	s15, [r3]
 2356 02a6 04F6B423 		addw	r3, r4, #2740
 2357 02aa 66EEA77A 		fmuls	s15, s13, s15
 2358 02ae D3ED006A 		flds	s13, [r3]
 2359 02b2 E6EE267A 		vfma.f32	s15, s12, s13
 2360 02b6 77EE277A 		fadds	s15, s14, s15
 2361 02ba C9ED1A7A 		fsts	s15, [r9, #104]
 2362              	.L416:
 2363 02be 029A     		ldr	r2, [sp, #8]
 2364 02c0 0A98     		ldr	r0, [sp, #40]
 2365 02c2 0A21     		movs	r1, #10
 2366 02c4 FFF7FEFF 		bl	_ZN3DDA9NormaliseEPfjj
 2367 02c8 C9F88800 		str	r0, [r9, #136]	@ float
 2368              	.L417:
 2369 02cc 0A9C     		ldr	r4, [sp, #40]
 2370 02ce 18AE     		add	r6, sp, #96
 2371 02d0 04F12007 		add	r7, r4, #32
 2372              	.L418:
 2373 02d4 2068     		ldr	r0, [r4]	@ unaligned
 2374 02d6 6168     		ldr	r1, [r4, #4]	@ unaligned
 2375 02d8 A268     		ldr	r2, [r4, #8]	@ unaligned
 2376 02da E368     		ldr	r3, [r4, #12]	@ unaligned
 2377 02dc 3546     		mov	r5, r6
 2378 02de 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 2379 02e0 1034     		adds	r4, r4, #16
 2380 02e2 BC42     		cmp	r4, r7
 2381 02e4 2E46     		mov	r6, r5
 2382 02e6 F5D1     		bne	.L418
 2383 02e8 2068     		ldr	r0, [r4]	@ unaligned
 2384 02ea 6168     		ldr	r1, [r4, #4]	@ unaligned
 2385 02ec 03C6     		stmia	r6!, {r0, r1}
 2386 02ee 18AB     		add	r3, sp, #96
 2387 02f0 22AA     		add	r2, sp, #136
 2388              	.L420:
 2389 02f2 D3ED007A 		flds	s15, [r3]
 2390 02f6 F0EEE77A 		fabss	s15, s15
 2391 02fa E3EC017A 		fstmias	r3!, {s15}
 2392 02fe 9342     		cmp	r3, r2
 2393 0300 F7D1     		bne	.L420
 2394 0302 0EA9     		add	r1, sp, #56
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 43


 2395 0304 18A8     		add	r0, sp, #96
 2396 0306 0A22     		movs	r2, #10
 2397 0308 FFF7FEFF 		bl	_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 2398 030c 099C     		ldr	r4, [sp, #36]
 2399 030e C9F88C00 		str	r0, [r9, #140]	@ float
 2400 0312 07EE900A 		fmsr	s15, r0
 2401 0316 002C     		cmp	r4, #0
 2402 0318 40F09C80 		bne	.L421
 2403 031c D8F80010 		ldr	r1, [r8]
 2404              	.L422:
 2405 0320 059C     		ldr	r4, [sp, #20]
 2406 0322 94ED108A 		flds	s16, [r4, #64]
 2407 0326 049C     		ldr	r4, [sp, #16]
 2408 0328 1CB3     		cbz	r4, .L427
 2409 032a 9FED956A 		flds	s12, .L504
 2410 032e 9DED187A 		flds	s14, [sp, #96]
 2411 0332 DDED197A 		flds	s15, [sp, #100]
 2412 0336 DDED1A6A 		flds	s13, [sp, #104]
 2413 033a B4EEC67A 		fcmpes	s14, s12
 2414 033e F1EE10FA 		fmstat
 2415 0342 D8BF     		it	le
 2416 0344 B0EE467A 		fcpysle	s14, s12
 2417 0348 F4EEC77A 		fcmpes	s15, s14
 2418 034c F1EE10FA 		fmstat
 2419 0350 D8BF     		it	le
 2420 0352 F0EE477A 		fcpysle	s15, s14
 2421 0356 F4EEE67A 		fcmpes	s15, s13
 2422 035a F1EE10FA 		fmstat
 2423 035e 58BF     		it	pl
 2424 0360 F0EE676A 		fcpyspl	s13, s15
 2425 0364 F4EE466A 		fcmps	s13, s12
 2426 0368 F1EE10FA 		fmstat
 2427 036c 18BF     		it	ne
 2428 036e 88EE268A 		fdivsne	s16, s16, s13
 2429              	.L427:
 2430 0372 18A8     		add	r0, sp, #96
 2431 0374 F031     		adds	r1, r1, #240
 2432 0376 0A22     		movs	r2, #10
 2433 0378 FFF7FEFF 		bl	_ZN3DDA21VectorBoxIntersectionEPKfS1_j
 2434 037c B4EE488A 		fcmps	s16, s16
 2435 0380 F1EE10FA 		fmstat
 2436 0384 07EE900A 		fmsr	s15, r0
 2437 0388 14D6     		bvs	.L431
 2438 038a B4EEE78A 		fcmpes	s16, s15
 2439 038e F1EE10FA 		fmstat
 2440 0392 06D4     		bmi	.L432
 2441 0394 F4EE677A 		fcmps	s15, s15
 2442 0398 F1EE10FA 		fmstat
 2443 039c 08EE100A 		fmsr	s16, r0
 2444 03a0 08D6     		bvs	.L431
 2445              	.L432:
 2446 03a2 B6EE007A 		fconsts	s14, #96
 2447 03a6 B4EEC78A 		fcmpes	s16, s14
 2448 03aa F1EE10FA 		fmstat
 2449 03ae D8BF     		it	le
 2450 03b0 B0EE478A 		fcpysle	s16, s14
 2451              	.L431:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 44


 2452 03b4 99F80930 		ldrb	r3, [r9, #9]	@ zero_extendqisi2
 2453 03b8 89ED248A 		fsts	s16, [r9, #144]
 2454 03bc 9B07     		lsls	r3, r3, #30
 2455 03be 6AD4     		bmi	.L499
 2456              	.L435:
 2457 03c0 D9F80400 		ldr	r0, [r9, #4]
 2458 03c4 027A     		ldrb	r2, [r0, #8]	@ zero_extendqisi2
 2459 03c6 0023     		movs	r3, #0
 2460 03c8 012A     		cmp	r2, #1
 2461 03ca C9F8A030 		str	r3, [r9, #160]	@ float
 2462 03ce 0446     		mov	r4, r0
 2463 03d0 00F09380 		beq	.L441
 2464              	.L491:
 2465 03d4 4846     		mov	r0, r9
 2466 03d6 C9F89C30 		str	r3, [r9, #156]	@ float
 2467 03da FFF7FEFF 		bl	_ZN3DDA15RecalculateMoveEv
 2468 03de 0120     		movs	r0, #1
 2469 03e0 89F80800 		strb	r0, [r9, #8]
 2470 03e4 23B0     		add	sp, sp, #140
 2471              		@ sp needed
 2472 03e6 BDEC028B 		fldmfdd	sp!, {d8}
 2473 03ea BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2474              	.L452:
 2475 03ee 0122     		movs	r2, #1
 2476 03f0 89E6     		b	.L489
 2477              	.L450:
 2478 03f2 0493     		str	r3, [sp, #16]
 2479 03f4 3EE6     		b	.L396
 2480              	.L498:
 2481 03f6 039B     		ldr	r3, [sp, #12]
 2482 03f8 CBB1     		cbz	r3, .L500
 2483 03fa 0122     		movs	r2, #1
 2484 03fc 3AE7     		b	.L414
 2485              	.L455:
 2486 03fe 0898     		ldr	r0, [sp, #32]
 2487 0400 23B0     		add	sp, sp, #140
 2488              		@ sp needed
 2489 0402 BDEC028B 		fldmfdd	sp!, {d8}
 2490 0406 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2491              	.L493:
 2492 040a 0B98     		ldr	r0, [sp, #44]
 2493 040c 0599     		ldr	r1, [sp, #20]
 2494 040e 09F11002 		add	r2, r9, #16
 2495 0412 FFF7FEFF 		bl	_ZNK4Move14MotorTransformEPKfPl
 2496 0416 0B98     		ldr	r0, [sp, #44]
 2497 0418 90F8BC3A 		ldrb	r3, [r0, #2748]	@ zero_extendqisi2
 2498 041c 6BB1     		cbz	r3, .L447
 2499 041e D9F81020 		ldr	r2, [r9, #16]
 2500 0422 2369     		ldr	r3, [r4, #16]
 2501 0424 9A42     		cmp	r2, r3
 2502 0426 00F08E80 		beq	.L501
 2503              	.L449:
 2504 042a 0122     		movs	r2, #1
 2505 042c 06E0     		b	.L394
 2506              	.L500:
 2507 042e 0B9C     		ldr	r4, [sp, #44]
 2508 0430 94F8BC2A 		ldrb	r2, [r4, #2748]	@ zero_extendqisi2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 45


 2509 0434 82F00102 		eor	r2, r2, #1
 2510 0438 1CE7     		b	.L414
 2511              	.L447:
 2512 043a 1A46     		mov	r2, r3
 2513              	.L394:
 2514 043c 99F80930 		ldrb	r3, [r9, #9]	@ zero_extendqisi2
 2515 0440 62F34103 		bfi	r3, r2, #1, #1
 2516 0444 89F80930 		strb	r3, [r9, #9]
 2517 0448 04E6     		b	.L395
 2518              	.L492:
 2519 044a 17EE901A 		fmrs	r1, s15
 2520 044e FFF7FEFF 		bl	_ZN3DDA19AdvanceBabySteppingEf
 2521 0452 EAE5     		b	.L392
 2522              	.L421:
 2523 0454 99F80930 		ldrb	r3, [r9, #9]	@ zero_extendqisi2
 2524 0458 D8F80010 		ldr	r1, [r8]
 2525 045c DA06     		lsls	r2, r3, #27
 2526 045e F4EE677A 		fcmps	s15, s15
 2527 0462 4CBF     		ite	mi
 2528 0464 91ED507A 		fldsmi	s14, [r1, #320]
 2529 0468 91ED517A 		fldspl	s14, [r1, #324]
 2530 046c F1EE10FA 		fmstat
 2531 0470 06D6     		bvs	.L425
 2532 0472 B4EEE77A 		fcmpes	s14, s15
 2533 0476 F1EE10FA 		fmstat
 2534 047a D8BF     		it	le
 2535 047c F0EE477A 		fcpysle	s15, s14
 2536              	.L425:
 2537 0480 C9ED237A 		fsts	s15, [r9, #140]
 2538 0484 4CE7     		b	.L422
 2539              	.L415:
 2540 0486 0A21     		movs	r1, #10
 2541 0488 0A46     		mov	r2, r1
 2542 048a 0A98     		ldr	r0, [sp, #40]
 2543 048c FFF7FEFF 		bl	_ZN3DDA9NormaliseEPfjj
 2544 0490 C9F88800 		str	r0, [r9, #136]	@ float
 2545 0494 1AE7     		b	.L417
 2546              	.L499:
 2547 0496 9DED197A 		flds	s14, [sp, #100]
 2548 049a DDED187A 		flds	s15, [sp, #96]
 2549 049e 27EE077A 		fmuls	s14, s14, s14
 2550 04a2 A7EEA77A 		vfma.f32	s14, s15, s15
 2551 04a6 F1EEC77A 		fsqrts	s15, s14
 2552 04aa F4EE677A 		fcmps	s15, s15
 2553 04ae F1EE10FA 		fmstat
 2554 04b2 5ED1     		bne	.L502
 2555              	.L436:
 2556 04b4 D9ED246A 		flds	s13, [r9, #144]
 2557 04b8 D8F80030 		ldr	r3, [r8]
 2558 04bc 0D9C     		ldr	r4, [sp, #52]
 2559 04be 93ED3C7A 		flds	s14, [r3, #240]
 2560 04c2 67EEA66A 		fmuls	s13, s15, s13
 2561 04c6 B4EEE67A 		fcmpes	s14, s13
 2562 04ca F1EE10FA 		fmstat
 2563 04ce 48BF     		it	mi
 2564 04d0 87EE277A 		fdivsmi	s14, s14, s15
 2565 04d4 D9ED236A 		flds	s13, [r9, #140]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 46


 2566 04d8 48BF     		it	mi
 2567 04da 89ED247A 		fstsmi	s14, [r9, #144]
 2568 04de 94ED467A 		flds	s14, [r4, #280]
 2569 04e2 67EEA66A 		fmuls	s13, s15, s13
 2570 04e6 B4EEE67A 		fcmpes	s14, s13
 2571 04ea F1EE10FA 		fmstat
 2572 04ee 44BF     		itt	mi
 2573 04f0 C7EE277A 		fdivsmi	s15, s14, s15
 2574 04f4 C9ED237A 		fstsmi	s15, [r9, #140]
 2575 04f8 62E7     		b	.L435
 2576              	.L441:
 2577 04fa 99ED237A 		flds	s14, [r9, #140]
 2578 04fe D9ED227A 		flds	s15, [r9, #136]
 2579 0502 67EE277A 		fmuls	s15, s14, s15
 2580 0506 37EEA77A 		fadds	s14, s15, s15
 2581 050a F1EEC77A 		fsqrts	s15, s14
 2582 050e F4EE677A 		fcmps	s15, s15
 2583 0512 F1EE10FA 		fmstat
 2584 0516 23D1     		bne	.L503
 2585              	.L443:
 2586 0518 F4EE677A 		fcmps	s15, s15
 2587 051c F1EE10FA 		fmstat
 2588 0520 99ED247A 		flds	s14, [r9, #144]
 2589 0524 06D6     		bvs	.L444
 2590 0526 F4EEC77A 		fcmpes	s15, s14
 2591 052a F1EE10FA 		fmstat
 2592 052e 58BF     		it	pl
 2593 0530 F0EE477A 		fcpyspl	s15, s14
 2594              	.L444:
 2595 0534 C4ED2C7A 		fsts	s15, [r4, #176]
 2596 0538 FFF7FEFF 		bl	_ZN3DDA11DoLookaheadEPS_
 2597 053c D9F80430 		ldr	r3, [r9, #4]
 2598 0540 D3F8B030 		ldr	r3, [r3, #176]	@ float
 2599 0544 46E7     		b	.L491
 2600              	.L501:
 2601 0546 D9F81420 		ldr	r2, [r9, #20]
 2602 054a 6369     		ldr	r3, [r4, #20]
 2603 054c 9A42     		cmp	r2, r3
 2604 054e 7FF46CAF 		bne	.L449
 2605 0552 A269     		ldr	r2, [r4, #24]
 2606 0554 D9F81830 		ldr	r3, [r9, #24]
 2607 0558 9A1A     		subs	r2, r3, r2
 2608 055a 18BF     		it	ne
 2609 055c 0122     		movne	r2, #1
 2610 055e 6DE7     		b	.L394
 2611              	.L503:
 2612 0560 17EE100A 		fmrs	r0, s14
 2613 0564 FFF7FEFF 		bl	sqrtf
 2614 0568 07EE900A 		fmsr	s15, r0
 2615 056c D9F80400 		ldr	r0, [r9, #4]
 2616 0570 D2E7     		b	.L443
 2617              	.L502:
 2618 0572 17EE100A 		fmrs	r0, s14
 2619 0576 FFF7FEFF 		bl	sqrtf
 2620 057a 07EE900A 		fmsr	s15, r0
 2621 057e 99E7     		b	.L436
 2622              	.L505:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 47


 2623              		.align	2
 2624              	.L504:
 2625 0580 00000000 		.word	0
 2626 0584 00000000 		.word	reprap
 2627              		.size	_ZN3DDA4InitERKN6GCodes7RawMoveEb, .-_ZN3DDA4InitERKN6GCodes7RawMoveEb
 2628              		.section	.text._ZN3DDA5ScaleEPffj,"ax",%progbits
 2629              		.align	2
 2630              		.global	_ZN3DDA5ScaleEPffj
 2631              		.thumb
 2632              		.thumb_func
 2633              		.type	_ZN3DDA5ScaleEPffj, %function
 2634              	_ZN3DDA5ScaleEPffj:
 2635              		@ args = 0, pretend = 0, frame = 0
 2636              		@ frame_needed = 0, uses_anonymous_args = 0
 2637              		@ link register save eliminated.
 2638 0000 07EE101A 		fmsr	s14, r1
 2639 0004 4AB1     		cbz	r2, .L506
 2640 0006 00EB8202 		add	r2, r0, r2, lsl #2
 2641              	.L509:
 2642 000a D0ED007A 		flds	s15, [r0]
 2643 000e 67EE877A 		fmuls	s15, s15, s14
 2644 0012 E0EC017A 		fstmias	r0!, {s15}
 2645 0016 9042     		cmp	r0, r2
 2646 0018 F7D1     		bne	.L509
 2647              	.L506:
 2648 001a 7047     		bx	lr
 2649              		.size	_ZN3DDA5ScaleEPffj, .-_ZN3DDA5ScaleEPffj
 2650              		.section	.text._ZN3DDA8AbsoluteEPfj,"ax",%progbits
 2651              		.align	2
 2652              		.global	_ZN3DDA8AbsoluteEPfj
 2653              		.thumb
 2654              		.thumb_func
 2655              		.type	_ZN3DDA8AbsoluteEPfj, %function
 2656              	_ZN3DDA8AbsoluteEPfj:
 2657              		@ args = 0, pretend = 0, frame = 0
 2658              		@ frame_needed = 0, uses_anonymous_args = 0
 2659              		@ link register save eliminated.
 2660 0000 49B1     		cbz	r1, .L511
 2661 0002 00EB8101 		add	r1, r0, r1, lsl #2
 2662              	.L514:
 2663 0006 D0ED007A 		flds	s15, [r0]
 2664 000a F0EEE77A 		fabss	s15, s15
 2665 000e E0EC017A 		fstmias	r0!, {s15}
 2666 0012 8842     		cmp	r0, r1
 2667 0014 F7D1     		bne	.L514
 2668              	.L511:
 2669 0016 7047     		bx	lr
 2670              		.size	_ZN3DDA8AbsoluteEPfj, .-_ZN3DDA8AbsoluteEPfj
 2671              		.section	.text._ZN3DDA5StartEm,"ax",%progbits
 2672              		.align	2
 2673              		.global	_ZN3DDA5StartEm
 2674              		.thumb
 2675              		.thumb_func
 2676              		.type	_ZN3DDA5StartEm, %function
 2677              	_ZN3DDA5StartEm:
 2678              		@ args = 0, pretend = 0, frame = 8
 2679              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 48


 2680 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2681 0004 4389     		ldrh	r3, [r0, #10]
 2682 0006 C0F8B810 		str	r1, [r0, #184]
 2683 000a 0322     		movs	r2, #3
 2684 000c 5B04     		lsls	r3, r3, #17
 2685 000e 83B0     		sub	sp, sp, #12
 2686 0010 8046     		mov	r8, r0
 2687 0012 0272     		strb	r2, [r0, #8]
 2688 0014 04D5     		bpl	.L517
 2689 0016 7049     		ldr	r1, .L566
 2690 0018 704A     		ldr	r2, .L566+4
 2691 001a 0023     		movs	r3, #0
 2692 001c 0B60     		str	r3, [r1]
 2693 001e 1370     		strb	r3, [r2]
 2694              	.L517:
 2695 0020 D8F8BC30 		ldr	r3, [r8, #188]
 2696 0024 002B     		cmp	r3, #0
 2697 0026 00F0AC80 		beq	.L554
 2698 002a DFF8B8A1 		ldr	r10, .L566+12
 2699 002e DAF81030 		ldr	r3, [r10, #16]
 2700 0032 D3F8B091 		ldr	r9, [r3, #432]
 2701 0036 0024     		movs	r4, #0
 2702 0038 C9F10006 		rsb	r6, r9, #0
 2703 003c 2346     		mov	r3, r4
 2704 003e A346     		mov	fp, r4
 2705 0040 4546     		mov	r5, r8
 2706 0042 06E0     		b	.L523
 2707              	.L520:
 2708 0044 0134     		adds	r4, r4, #1
 2709 0046 0A2C     		cmp	r4, #10
 2710 0048 05F15005 		add	r5, r5, #80
 2711 004c 06F10106 		add	r6, r6, #1
 2712 0050 1ED0     		beq	.L560
 2713              	.L523:
 2714 0052 95F8D970 		ldrb	r7, [r5, #217]	@ zero_extendqisi2
 2715 0056 012F     		cmp	r7, #1
 2716 0058 F4D1     		bne	.L520
 2717 005a 95F8DA20 		ldrb	r2, [r5, #218]	@ zero_extendqisi2
 2718 005e DAF80000 		ldr	r0, [r10]
 2719 0062 0193     		str	r3, [sp, #4]
 2720 0064 2146     		mov	r1, r4
 2721 0066 FFF7FEFF 		bl	_ZN8Platform12SetDirectionEjb
 2722 006a A145     		cmp	r9, r4
 2723 006c 019B     		ldr	r3, [sp, #4]
 2724 006e E9D8     		bhi	.L520
 2725 0070 95F8DA20 		ldrb	r2, [r5, #218]	@ zero_extendqisi2
 2726 0074 07FA06F1 		lsl	r1, r7, r6
 2727 0078 002A     		cmp	r2, #0
 2728 007a 00F08D80 		beq	.L521
 2729 007e 0134     		adds	r4, r4, #1
 2730 0080 0A2C     		cmp	r4, #10
 2731 0082 4BEA010B 		orr	fp, fp, r1
 2732 0086 05F15005 		add	r5, r5, #80
 2733 008a 06F10106 		add	r6, r6, #1
 2734 008e E0D1     		bne	.L523
 2735              	.L560:
 2736 0090 BBF1000F 		cmp	fp, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 49


 2737 0094 33D1     		bne	.L524
 2738 0096 93BB     		cbnz	r3, .L524
 2739 0098 DAF80040 		ldr	r4, [r10]
 2740              	.L531:
 2741 009c 04F5A263 		add	r3, r4, #1296
 2742 00a0 D3ED007A 		flds	s15, [r3]
 2743 00a4 F5EEC07A 		fcmpezs	s15
 2744 00a8 F1EE10FA 		fmstat
 2745 00ac 1ADD     		ble	.L533
 2746 00ae 94F81D35 		ldrb	r3, [r4, #1309]	@ zero_extendqisi2
 2747 00b2 94F81C05 		ldrb	r0, [r4, #1308]	@ zero_extendqisi2
 2748 00b6 9FED4A7A 		flds	s14, .L566+8
 2749 00ba 002B     		cmp	r3, #0
 2750 00bc F7EE007A 		fconsts	s15, #112
 2751 00c0 14BF     		ite	ne
 2752 00c2 17EE901A 		fmrsne	r1, s15
 2753 00c6 17EE101A 		fmrseq	r1, s14
 2754 00ca 04F21454 		addw	r4, r4, #1300
 2755 00ce C728     		cmp	r0, #199
 2756 00d0 D4ED007A 		flds	s15, [r4]
 2757 00d4 7BD8     		bhi	.L561
 2758 00d6 FCEEE77A 		ftouizs	s15, s15
 2759 00da 17EE902A 		fmrs	r2, s15	@ int
 2760 00de 92B2     		uxth	r2, r2
 2761 00e0 FFF7FEFF 		bl	_Z9AnalogOuthft
 2762              	.L533:
 2763 00e4 D8F8BC30 		ldr	r3, [r8, #188]
 2764 00e8 002B     		cmp	r3, #0
 2765 00ea 4AD0     		beq	.L554
 2766              	.L565:
 2767 00ec D8F8B800 		ldr	r0, [r8, #184]
 2768 00f0 5B6A     		ldr	r3, [r3, #36]
 2769 00f2 1844     		add	r0, r0, r3
 2770 00f4 03B0     		add	sp, sp, #12
 2771              		@ sp needed
 2772 00f6 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2773 00fa FFF7FEBF 		b	_ZN8Platform17ScheduleInterruptEm
 2774              	.L524:
 2775 00fe 5946     		mov	r1, fp
 2776 0100 1A46     		mov	r2, r3
 2777 0102 3848     		ldr	r0, .L566+12
 2778 0104 FFF7FEFF 		bl	_ZN6RepRap30GetProhibitedExtruderMovementsEjj
 2779 0108 D8F8BC30 		ldr	r3, [r8, #188]
 2780 010c 08F1BC06 		add	r6, r8, #188
 2781 0110 0021     		movs	r1, #0
 2782 0112 0125     		movs	r5, #1
 2783              	.L526:
 2784 0114 7BB1     		cbz	r3, .L562
 2785              	.L530:
 2786 0116 1A7E     		ldrb	r2, [r3, #24]	@ zero_extendqisi2
 2787 0118 4A45     		cmp	r2, r9
 2788 011a C9EB0204 		rsb	r4, r9, r2
 2789 011e 34BF     		ite	cc
 2790 0120 0022     		movcc	r2, #0
 2791 0122 0122     		movcs	r2, #1
 2792 0124 05FA04F4 		lsl	r4, r5, r4
 2793 0128 7AB3     		cbz	r2, .L527
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 50


 2794 012a 2042     		tst	r0, r4
 2795 012c 2DD0     		beq	.L527
 2796 012e DB6A     		ldr	r3, [r3, #44]
 2797 0130 3360     		str	r3, [r6]
 2798 0132 002B     		cmp	r3, #0
 2799 0134 EFD1     		bne	.L530
 2800              	.L562:
 2801 0136 DAF80040 		ldr	r4, [r10]
 2802 013a 0029     		cmp	r1, #0
 2803 013c AED0     		beq	.L531
 2804 013e 04F5A263 		add	r3, r4, #1296
 2805 0142 D3ED007A 		flds	s15, [r3]
 2806 0146 F5EEC07A 		fcmpezs	s15
 2807 014a F1EE10FA 		fmstat
 2808 014e C9DD     		ble	.L533
 2809 0150 94F81D35 		ldrb	r3, [r4, #1309]	@ zero_extendqisi2
 2810 0154 94F81C55 		ldrb	r5, [r4, #1308]	@ zero_extendqisi2
 2811 0158 03BB     		cbnz	r3, .L563
 2812 015a 04F21454 		addw	r4, r4, #1300
 2813 015e C72D     		cmp	r5, #199
 2814 0160 17EE901A 		fmrs	r1, s15
 2815 0164 D4ED007A 		flds	s15, [r4]
 2816 0168 2BD8     		bhi	.L564
 2817              	.L535:
 2818 016a FCEEE77A 		ftouizs	s15, s15
 2819 016e 2846     		mov	r0, r5
 2820 0170 17EE902A 		fmrs	r2, s15	@ int
 2821 0174 92B2     		uxth	r2, r2
 2822 0176 FFF7FEFF 		bl	_Z9AnalogOuthft
 2823 017a D8F8BC30 		ldr	r3, [r8, #188]
 2824 017e 002B     		cmp	r3, #0
 2825 0180 B4D1     		bne	.L565
 2826              	.L554:
 2827 0182 0120     		movs	r0, #1
 2828 0184 03B0     		add	sp, sp, #12
 2829              		@ sp needed
 2830 0186 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2831              	.L527:
 2832 018a 03F12C06 		add	r6, r3, #44
 2833 018e 0029     		cmp	r1, #0
 2834 0190 08BF     		it	eq
 2835 0192 1146     		moveq	r1, r2
 2836 0194 DB6A     		ldr	r3, [r3, #44]
 2837 0196 BDE7     		b	.L526
 2838              	.L521:
 2839 0198 0B43     		orrs	r3, r3, r1
 2840 019a 53E7     		b	.L520
 2841              	.L563:
 2842 019c 17EE900A 		fmrs	r0, s15
 2843 01a0 FFF7FEFF 		bl	__aeabi_f2d
 2844 01a4 0246     		mov	r2, r0
 2845 01a6 0B46     		mov	r3, r1
 2846 01a8 0020     		movs	r0, #0
 2847 01aa 0F49     		ldr	r1, .L566+16
 2848 01ac FFF7FEFF 		bl	__aeabi_dsub
 2849 01b0 FFF7FEFF 		bl	__aeabi_d2f
 2850 01b4 04F21454 		addw	r4, r4, #1300
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 51


 2851 01b8 C72D     		cmp	r5, #199
 2852 01ba 0146     		mov	r1, r0	@ float
 2853 01bc D4ED007A 		flds	s15, [r4]
 2854 01c0 D3D9     		bls	.L535
 2855              	.L564:
 2856 01c2 05F13800 		add	r0, r5, #56
 2857 01c6 C0B2     		uxtb	r0, r0
 2858 01c8 FFF7FEFF 		bl	_ZN13DuetExpansion9AnalogOutEhf
 2859 01cc 8AE7     		b	.L533
 2860              	.L561:
 2861 01ce 3830     		adds	r0, r0, #56
 2862 01d0 C0B2     		uxtb	r0, r0
 2863 01d2 FFF7FEFF 		bl	_ZN13DuetExpansion9AnalogOutEhf
 2864 01d6 85E7     		b	.L533
 2865              	.L567:
 2866              		.align	2
 2867              	.L566:
 2868 01d8 00000000 		.word	.LANCHOR2
 2869 01dc 00000000 		.word	.LANCHOR4
 2870 01e0 00000000 		.word	0
 2871 01e4 00000000 		.word	reprap
 2872 01e8 0000F03F 		.word	1072693248
 2873              		.size	_ZN3DDA5StartEm, .-_ZN3DDA5StartEm
 2874              		.section	.text._ZN3DDA9StopDriveEj,"ax",%progbits
 2875              		.align	2
 2876              		.global	_ZN3DDA9StopDriveEj
 2877              		.thumb
 2878              		.thumb_func
 2879              		.type	_ZN3DDA9StopDriveEj, %function
 2880              	_ZN3DDA9StopDriveEj:
 2881              		@ args = 0, pretend = 0, frame = 0
 2882              		@ frame_needed = 0, uses_anonymous_args = 0
 2883              		@ link register save eliminated.
 2884 0000 8A00     		lsls	r2, r1, #2
 2885 0002 5318     		adds	r3, r2, r1
 2886 0004 00EB0313 		add	r3, r0, r3, lsl #4
 2887 0008 C033     		adds	r3, r3, #192
 2888 000a F0B4     		push	{r4, r5, r6, r7}
 2889 000c 5C7E     		ldrb	r4, [r3, #25]	@ zero_extendqisi2
 2890 000e 012C     		cmp	r4, #1
 2891 0010 01D0     		beq	.L591
 2892              	.L568:
 2893 0012 F0BC     		pop	{r4, r5, r6, r7}
 2894 0014 7047     		bx	lr
 2895              	.L591:
 2896 0016 DC69     		ldr	r4, [r3, #28]
 2897 0018 1D6A     		ldr	r5, [r3, #32]
 2898 001a AC42     		cmp	r4, r5
 2899 001c 33D2     		bcs	.L592
 2900 001e 5E69     		ldr	r6, [r3, #20]
 2901 0020 B542     		cmp	r5, r6
 2902 0022 2CBF     		ite	cs
 2903 0024 3546     		movcs	r5, r6
 2904 0026 C6EB4505 		rsbcc	r5, r6, r5, lsl #1
 2905              	.L574:
 2906 002a 9F7E     		ldrb	r7, [r3, #26]	@ zero_extendqisi2
 2907 002c C4F10104 		rsb	r4, r4, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 52


 2908 0030 2C44     		add	r4, r4, r5
 2909 0032 07B9     		cbnz	r7, .L575
 2910 0034 6442     		negs	r4, r4
 2911              	.L575:
 2912 0036 0244     		add	r2, r2, r0
 2913 0038 164D     		ldr	r5, .L596
 2914 003a 1669     		ldr	r6, [r2, #16]
 2915 003c 2F69     		ldr	r7, [r5, #16]
 2916 003e 361B     		subs	r6, r6, r4
 2917 0040 1661     		str	r6, [r2, #16]
 2918 0042 D7F8B041 		ldr	r4, [r7, #432]
 2919 0046 0022     		movs	r2, #0
 2920 0048 A142     		cmp	r1, r4
 2921 004a 5A76     		strb	r2, [r3, #25]
 2922 004c 03D2     		bcs	.L576
 2923 004e 437A     		ldrb	r3, [r0, #9]	@ zero_extendqisi2
 2924 0050 62F30003 		bfi	r3, r2, #0, #1
 2925 0054 4372     		strb	r3, [r0, #9]
 2926              	.L576:
 2927 0056 D0F8BC20 		ldr	r2, [r0, #188]
 2928 005a 8AB1     		cbz	r2, .L577
 2929 005c 137E     		ldrb	r3, [r2, #24]	@ zero_extendqisi2
 2930 005e 9942     		cmp	r1, r3
 2931 0060 01D1     		bne	.L581
 2932 0062 12E0     		b	.L595
 2933              	.L594:
 2934 0064 1A46     		mov	r2, r3
 2935              	.L581:
 2936 0066 D36A     		ldr	r3, [r2, #44]
 2937 0068 002B     		cmp	r3, #0
 2938 006a D2D0     		beq	.L568
 2939 006c 1C7E     		ldrb	r4, [r3, #24]	@ zero_extendqisi2
 2940 006e A142     		cmp	r1, r4
 2941 0070 F8D1     		bne	.L594
 2942 0072 2C32     		adds	r2, r2, #44
 2943              	.L579:
 2944 0074 DB6A     		ldr	r3, [r3, #44]
 2945 0076 1360     		str	r3, [r2]
 2946 0078 D0F8BC30 		ldr	r3, [r0, #188]
 2947 007c 002B     		cmp	r3, #0
 2948 007e C8D1     		bne	.L568
 2949              	.L577:
 2950 0080 0423     		movs	r3, #4
 2951 0082 0372     		strb	r3, [r0, #8]
 2952 0084 C5E7     		b	.L568
 2953              	.L592:
 2954 0086 5D69     		ldr	r5, [r3, #20]
 2955 0088 CFE7     		b	.L574
 2956              	.L595:
 2957 008a 1346     		mov	r3, r2
 2958 008c 00F1BC02 		add	r2, r0, #188
 2959 0090 F0E7     		b	.L579
 2960              	.L597:
 2961 0092 00BF     		.align	2
 2962              	.L596:
 2963 0094 00000000 		.word	reprap
 2964              		.size	_ZN3DDA9StopDriveEj, .-_ZN3DDA9StopDriveEj
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 53


 2965              		.section	.text._ZN3DDA13CheckEndstopsEP8Platform,"ax",%progbits
 2966              		.align	2
 2967              		.global	_ZN3DDA13CheckEndstopsEP8Platform
 2968              		.thumb
 2969              		.thumb_func
 2970              		.type	_ZN3DDA13CheckEndstopsEP8Platform, %function
 2971              	_ZN3DDA13CheckEndstopsEP8Platform:
 2972              		@ args = 0, pretend = 0, frame = 0
 2973              		@ frame_needed = 0, uses_anonymous_args = 0
 2974 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2975 0004 4389     		ldrh	r3, [r0, #10]
 2976 0006 1C04     		lsls	r4, r3, #16
 2977 0008 0546     		mov	r5, r0
 2978 000a 8846     		mov	r8, r1
 2979 000c 00F19B80 		bmi	.L651
 2980 0010 5904     		lsls	r1, r3, #17
 2981 0012 60D4     		bmi	.L645
 2982              	.L650:
 2983 0014 DFF87C91 		ldr	r9, .L655+4
 2984              	.L600:
 2985 0018 D9F81030 		ldr	r3, [r9, #16]
 2986 001c D3F8B071 		ldr	r7, [r3, #432]
 2987 0020 97B3     		cbz	r7, .L598
 2988 0022 0024     		movs	r4, #0
 2989 0024 4FF0010A 		mov	r10, #1
 2990 0028 4FF0040B 		mov	fp, #4
 2991 002c 02E0     		b	.L623
 2992              	.L611:
 2993 002e 0134     		adds	r4, r4, #1
 2994 0030 BC42     		cmp	r4, r7
 2995 0032 27D0     		beq	.L652
 2996              	.L623:
 2997 0034 6B89     		ldrh	r3, [r5, #10]
 2998 0036 2341     		asrs	r3, r3, r4
 2999 0038 DA07     		lsls	r2, r3, #31
 3000 003a F8D5     		bpl	.L611
 3001 003c 4046     		mov	r0, r8
 3002 003e 2146     		mov	r1, r4
 3003 0040 FFF7FEFF 		bl	_ZNK8Platform7StoppedEj
 3004 0044 0228     		cmp	r0, #2
 3005 0046 2DD0     		beq	.L612
 3006 0048 0328     		cmp	r0, #3
 3007 004a 1FD0     		beq	.L613
 3008 004c 0128     		cmp	r0, #1
 3009 004e EED1     		bne	.L611
 3010 0050 6B89     		ldrh	r3, [r5, #10]
 3011 0052 A040     		lsls	r0, r0, r4
 3012 0054 23EA0000 		bic	r0, r3, r0
 3013 0058 6881     		strh	r0, [r5, #10]	@ movhi
 3014 005a 0028     		cmp	r0, #0
 3015 005c 4FD1     		bne	.L653
 3016              	.L615:
 3017 005e 0026     		movs	r6, #0
 3018              	.L624:
 3019 0060 3146     		mov	r1, r6
 3020 0062 2846     		mov	r0, r5
 3021 0064 0136     		adds	r6, r6, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 54


 3022 0066 FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 3023 006a 0A2E     		cmp	r6, #10
 3024 006c F8D1     		bne	.L624
 3025 006e 85F808B0 		strb	fp, [r5, #8]
 3026              	.L625:
 3027 0072 2146     		mov	r1, r4
 3028 0074 D9F80800 		ldr	r0, [r9, #8]
 3029 0078 2A46     		mov	r2, r5
 3030 007a 0134     		adds	r4, r4, #1
 3031 007c FFF7FEFF 		bl	_ZN4Move10HitLowStopEjP3DDA
 3032 0080 BC42     		cmp	r4, r7
 3033 0082 D7D1     		bne	.L623
 3034              	.L652:
 3035 0084 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3036              	.L598:
 3037 0088 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3038              	.L613:
 3039 008c 6A89     		ldrh	r2, [r5, #10]
 3040 008e 0AFA04F3 		lsl	r3, r10, r4
 3041 0092 9A42     		cmp	r2, r3
 3042 0094 CBD1     		bne	.L611
 3043 0096 6B7A     		ldrb	r3, [r5, #9]	@ zero_extendqisi2
 3044 0098 1B07     		lsls	r3, r3, #28
 3045 009a C8D4     		bmi	.L611
 3046 009c 2846     		mov	r0, r5
 3047 009e FFF7FEFF 		bl	_ZN3DDA17ReduceHomingSpeedEv.part.10
 3048 00a2 C4E7     		b	.L611
 3049              	.L612:
 3050 00a4 6B89     		ldrh	r3, [r5, #10]
 3051 00a6 0AFA04F2 		lsl	r2, r10, r4
 3052 00aa 23EA0203 		bic	r3, r3, r2
 3053 00ae 6B81     		strh	r3, [r5, #10]	@ movhi
 3054 00b0 002B     		cmp	r3, #0
 3055 00b2 30D1     		bne	.L654
 3056              	.L618:
 3057 00b4 0026     		movs	r6, #0
 3058              	.L626:
 3059 00b6 3146     		mov	r1, r6
 3060 00b8 2846     		mov	r0, r5
 3061 00ba 0136     		adds	r6, r6, #1
 3062 00bc FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 3063 00c0 0A2E     		cmp	r6, #10
 3064 00c2 F8D1     		bne	.L626
 3065 00c4 85F808B0 		strb	fp, [r5, #8]
 3066              	.L627:
 3067 00c8 D9F80800 		ldr	r0, [r9, #8]
 3068 00cc 2146     		mov	r1, r4
 3069 00ce 2A46     		mov	r2, r5
 3070 00d0 FFF7FEFF 		bl	_ZN4Move11HitHighStopEjP3DDA
 3071 00d4 ABE7     		b	.L611
 3072              	.L645:
 3073 00d6 4046     		mov	r0, r8
 3074 00d8 FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 3075 00dc 0128     		cmp	r0, #1
 3076 00de 0346     		mov	r3, r0
 3077 00e0 25D0     		beq	.L607
 3078 00e2 0328     		cmp	r0, #3
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 55


 3079 00e4 01D0     		beq	.L608
 3080 00e6 0028     		cmp	r0, #0
 3081 00e8 94D1     		bne	.L650
 3082              	.L608:
 3083 00ea 294B     		ldr	r3, .L655
 3084 00ec 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 3085 00ee 002A     		cmp	r2, #0
 3086 00f0 90D0     		beq	.L650
 3087 00f2 0022     		movs	r2, #0
 3088 00f4 2846     		mov	r0, r5
 3089 00f6 1A70     		strb	r2, [r3]
 3090 00f8 FFF7FEFF 		bl	_ZN3DDA16LogProbePositionEv
 3091 00fc 8AE7     		b	.L650
 3092              	.L653:
 3093 00fe D9F80800 		ldr	r0, [r9, #8]
 3094 0102 2146     		mov	r1, r4
 3095 0104 FFF7FEFF 		bl	_ZNK4Move12IsCoreXYAxisEj
 3096 0108 0028     		cmp	r0, #0
 3097 010a A8D1     		bne	.L615
 3098 010c 2846     		mov	r0, r5
 3099 010e 2146     		mov	r1, r4
 3100 0110 FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 3101 0114 ADE7     		b	.L625
 3102              	.L654:
 3103 0116 D9F80800 		ldr	r0, [r9, #8]
 3104 011a 2146     		mov	r1, r4
 3105 011c FFF7FEFF 		bl	_ZNK4Move12IsCoreXYAxisEj
 3106 0120 0028     		cmp	r0, #0
 3107 0122 C7D1     		bne	.L618
 3108 0124 2846     		mov	r0, r5
 3109 0126 2146     		mov	r1, r4
 3110 0128 FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 3111 012c CCE7     		b	.L627
 3112              	.L607:
 3113 012e 184A     		ldr	r2, .L655
 3114 0130 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 3115 0132 0029     		cmp	r1, #0
 3116 0134 7FF46EAF 		bne	.L650
 3117 0138 2846     		mov	r0, r5
 3118 013a 1370     		strb	r3, [r2]
 3119 013c DFF85490 		ldr	r9, .L655+4
 3120 0140 FFF7FEFF 		bl	_ZN3DDA16LogProbePositionEv
 3121 0144 68E7     		b	.L600
 3122              	.L651:
 3123 0146 0846     		mov	r0, r1
 3124 0148 FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 3125 014c 0128     		cmp	r0, #1
 3126 014e 0CD0     		beq	.L601
 3127 0150 0328     		cmp	r0, #3
 3128 0152 7FF45FAF 		bne	.L650
 3129 0156 6B7A     		ldrb	r3, [r5, #9]	@ zero_extendqisi2
 3130 0158 1807     		lsls	r0, r3, #28
 3131 015a 3FF55BAF 		bmi	.L650
 3132 015e 2846     		mov	r0, r5
 3133 0160 FFF7FEFF 		bl	_ZN3DDA17ReduceHomingSpeedEv.part.10
 3134 0164 DFF82C90 		ldr	r9, .L655+4
 3135 0168 56E7     		b	.L600
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 56


 3136              	.L601:
 3137 016a 0024     		movs	r4, #0
 3138              	.L604:
 3139 016c 2146     		mov	r1, r4
 3140 016e 2846     		mov	r0, r5
 3141 0170 0134     		adds	r4, r4, #1
 3142 0172 FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 3143 0176 0A2C     		cmp	r4, #10
 3144 0178 F8D1     		bne	.L604
 3145 017a DFF81890 		ldr	r9, .L655+4
 3146 017e 0423     		movs	r3, #4
 3147 0180 D9F80800 		ldr	r0, [r9, #8]
 3148 0184 2B72     		strb	r3, [r5, #8]
 3149 0186 2946     		mov	r1, r5
 3150 0188 FFF7FEFF 		bl	_ZN4Move15ZProbeTriggeredEP3DDA
 3151 018c 44E7     		b	.L600
 3152              	.L656:
 3153 018e 00BF     		.align	2
 3154              	.L655:
 3155 0190 00000000 		.word	.LANCHOR4
 3156 0194 00000000 		.word	reprap
 3157              		.size	_ZN3DDA13CheckEndstopsEP8Platform, .-_ZN3DDA13CheckEndstopsEP8Platform
 3158              		.section	.text._ZN3DDA4StepEv,"ax",%progbits
 3159              		.align	2
 3160              		.global	_ZN3DDA4StepEv
 3161              		.thumb
 3162              		.thumb_func
 3163              		.type	_ZN3DDA4StepEv, %function
 3164              	_ZN3DDA4StepEv:
 3165              		@ args = 0, pretend = 0, frame = 8
 3166              		@ frame_needed = 0, uses_anonymous_args = 0
 3167 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3168 0004 7B4B     		ldr	r3, .L725
 3169 0006 7C4A     		ldr	r2, .L725+4
 3170 0008 D3F890B0 		ldr	fp, [r3, #144]
 3171 000c D2F800A0 		ldr	r10, [r2]
 3172 0010 83B0     		sub	sp, sp, #12
 3173 0012 9C46     		mov	ip, r3
 3174 0014 0746     		mov	r7, r0
 3175 0016 4FF00009 		mov	r9, #0
 3176              	.L688:
 3177 001a 7B89     		ldrh	r3, [r7, #10]
 3178 001c 002B     		cmp	r3, #0
 3179 001e 40F0CB80 		bne	.L658
 3180              	.L662:
 3181 0022 DCF89020 		ldr	r2, [ip, #144]
 3182 0026 D7F8B830 		ldr	r3, [r7, #184]
 3183 002a D7F8BC40 		ldr	r4, [r7, #188]
 3184 002e 0632     		adds	r2, r2, #6
 3185 0030 D21A     		subs	r2, r2, r3
 3186 0032 2546     		mov	r5, r4
 3187 0034 002C     		cmp	r4, #0
 3188 0036 00F0B980 		beq	.L660
 3189 003a 636A     		ldr	r3, [r4, #36]
 3190 003c 9A42     		cmp	r2, r3
 3191 003e 2546     		mov	r5, r4
 3192 0040 C0F0B480 		bcc	.L660
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 57


 3193 0044 4FF00008 		mov	r8, #0
 3194 0048 02E0     		b	.L664
 3195              	.L720:
 3196 004a 6B6A     		ldr	r3, [r5, #36]
 3197 004c 9A42     		cmp	r2, r3
 3198 004e 0BD3     		bcc	.L663
 3199              	.L664:
 3200 0050 2B7E     		ldrb	r3, [r5, #24]	@ zero_extendqisi2
 3201 0052 ED6A     		ldr	r5, [r5, #44]
 3202 0054 0AEB8303 		add	r3, r10, r3, lsl #2
 3203 0058 09F10109 		add	r9, r9, #1
 3204 005c D3F83C32 		ldr	r3, [r3, #572]
 3205 0060 48EA0308 		orr	r8, r8, r3
 3206 0064 002D     		cmp	r5, #0
 3207 0066 F0D1     		bne	.L720
 3208              	.L663:
 3209 0068 DAF86832 		ldr	r3, [r10, #616]
 3210 006c 18EA030F 		tst	r8, r3
 3211 0070 00F09E80 		beq	.L665
 3212 0074 DAF86422 		ldr	r2, [r10, #612]
 3213              	.L667:
 3214 0078 DCF89030 		ldr	r3, [ip, #144]
 3215 007c CBEB0303 		rsb	r3, fp, r3
 3216 0080 9342     		cmp	r3, r2
 3217 0082 F9D3     		bcc	.L667
 3218 0084 5D4B     		ldr	r3, .L725+8
 3219 0086 5B4A     		ldr	r2, .L725
 3220 0088 C3F83880 		str	r8, [r3, #56]
 3221 008c D2F890B0 		ldr	fp, [r2, #144]
 3222              	.L668:
 3223 0090 A542     		cmp	r5, r4
 3224 0092 C7F8BC50 		str	r5, [r7, #188]
 3225 0096 54D0     		beq	.L669
 3226              	.L682:
 3227 0098 7B7A     		ldrb	r3, [r7, #9]	@ zero_extendqisi2
 3228 009a 9B07     		lsls	r3, r3, #30
 3229 009c 02D5     		bpl	.L670
 3230 009e 237E     		ldrb	r3, [r4, #24]	@ zero_extendqisi2
 3231 00a0 022B     		cmp	r3, #2
 3232 00a2 2AD9     		bls	.L721
 3233              	.L670:
 3234 00a4 E369     		ldr	r3, [r4, #28]
 3235 00a6 6269     		ldr	r2, [r4, #20]
 3236 00a8 9342     		cmp	r3, r2
 3237 00aa 21D2     		bcs	.L675
 3238 00ac E27E     		ldrb	r2, [r4, #27]	@ zero_extendqisi2
 3239 00ae 0133     		adds	r3, r3, #1
 3240 00b0 E361     		str	r3, [r4, #28]
 3241 00b2 002A     		cmp	r2, #0
 3242 00b4 34D0     		beq	.L676
 3243              	.L719:
 3244 00b6 013A     		subs	r2, r2, #1
 3245 00b8 E276     		strb	r2, [r4, #27]
 3246 00ba 0120     		movs	r0, #1
 3247              	.L674:
 3248 00bc E66A     		ldr	r6, [r4, #44]
 3249 00be 98B1     		cbz	r0, .L678
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 58


 3250 00c0 D7F8BC30 		ldr	r3, [r7, #188]
 3251 00c4 07F1BC00 		add	r0, r7, #188
 3252 00c8 63B1     		cbz	r3, .L679
 3253 00ca 616A     		ldr	r1, [r4, #36]
 3254 00cc 5A6A     		ldr	r2, [r3, #36]
 3255 00ce 9142     		cmp	r1, r2
 3256 00d0 03D8     		bhi	.L680
 3257 00d2 07E0     		b	.L679
 3258              	.L722:
 3259 00d4 5A6A     		ldr	r2, [r3, #36]
 3260 00d6 8A42     		cmp	r2, r1
 3261 00d8 04D2     		bcs	.L679
 3262              	.L680:
 3263 00da 03F12C00 		add	r0, r3, #44
 3264 00de DB6A     		ldr	r3, [r3, #44]
 3265 00e0 002B     		cmp	r3, #0
 3266 00e2 F7D1     		bne	.L722
 3267              	.L679:
 3268 00e4 E362     		str	r3, [r4, #44]
 3269 00e6 0460     		str	r4, [r0]
 3270              	.L678:
 3271 00e8 AE42     		cmp	r6, r5
 3272 00ea 28D0     		beq	.L681
 3273 00ec 3446     		mov	r4, r6
 3274 00ee D3E7     		b	.L682
 3275              	.L675:
 3276 00f0 4FF00003 		mov	r3, #0
 3277 00f4 6376     		strb	r3, [r4, #25]
 3278 00f6 0020     		movs	r0, #0
 3279 00f8 E0E7     		b	.L674
 3280              	.L721:
 3281 00fa E369     		ldr	r3, [r4, #28]
 3282 00fc 6269     		ldr	r2, [r4, #20]
 3283 00fe 9342     		cmp	r3, r2
 3284 0100 18D2     		bcs	.L671
 3285 0102 E27E     		ldrb	r2, [r4, #27]	@ zero_extendqisi2
 3286 0104 0133     		adds	r3, r3, #1
 3287 0106 E361     		str	r3, [r4, #28]
 3288 0108 002A     		cmp	r2, #0
 3289 010a D4D1     		bne	.L719
 3290 010c 2046     		mov	r0, r4
 3291 010e 3946     		mov	r1, r7
 3292 0110 0122     		movs	r2, #1
 3293 0112 CDF804C0 		str	ip, [sp, #4]
 3294 0116 FFF7FEFF 		bl	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb
 3295 011a DDF804C0 		ldr	ip, [sp, #4]
 3296 011e CDE7     		b	.L674
 3297              	.L676:
 3298 0120 2046     		mov	r0, r4
 3299 0122 3946     		mov	r1, r7
 3300 0124 0122     		movs	r2, #1
 3301 0126 CDF804C0 		str	ip, [sp, #4]
 3302 012a FFF7FEFF 		bl	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb
 3303 012e DDF804C0 		ldr	ip, [sp, #4]
 3304 0132 C3E7     		b	.L674
 3305              	.L671:
 3306 0134 4FF00002 		mov	r2, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 59


 3307 0138 6276     		strb	r2, [r4, #25]
 3308 013a 0020     		movs	r0, #0
 3309 013c BEE7     		b	.L674
 3310              	.L681:
 3311 013e D7F8BC50 		ldr	r5, [r7, #188]
 3312              	.L669:
 3313 0142 DAF86832 		ldr	r3, [r10, #616]
 3314 0146 18EA0303 		ands	r3, r8, r3
 3315 014a 28D0     		beq	.L683
 3316 014c DAF86422 		ldr	r2, [r10, #612]
 3317              	.L685:
 3318 0150 DCF89030 		ldr	r3, [ip, #144]
 3319 0154 CBEB0303 		rsb	r3, fp, r3
 3320 0158 9342     		cmp	r3, r2
 3321 015a F9D3     		bcc	.L685
 3322 015c 274A     		ldr	r2, .L725+8
 3323 015e 0023     		movs	r3, #0
 3324 0160 9363     		str	r3, [r2, #56]
 3325 0162 244B     		ldr	r3, .L725
 3326 0164 D3F890B0 		ldr	fp, [r3, #144]
 3327 0168 EDB1     		cbz	r5, .L723
 3328              	.L687:
 3329 016a 686A     		ldr	r0, [r5, #36]
 3330 016c D7F8B830 		ldr	r3, [r7, #184]
 3331 0170 CDF804C0 		str	ip, [sp, #4]
 3332 0174 1844     		add	r0, r0, r3
 3333 0176 FFF7FEFF 		bl	_ZN8Platform17ScheduleInterruptEm
 3334 017a DDF804C0 		ldr	ip, [sp, #4]
 3335 017e 0028     		cmp	r0, #0
 3336 0180 7FF44BAF 		bne	.L688
 3337              	.L661:
 3338 0184 1E4B     		ldr	r3, .L725+12
 3339 0186 1A68     		ldr	r2, [r3]
 3340 0188 9145     		cmp	r9, r2
 3341 018a 88BF     		it	hi
 3342 018c C3F80090 		strhi	r9, [r3]
 3343 0190 3B7A     		ldrb	r3, [r7, #8]	@ zero_extendqisi2
 3344 0192 042B     		cmp	r3, #4
 3345 0194 1DD0     		beq	.L724
 3346 0196 0020     		movs	r0, #0
 3347 0198 03B0     		add	sp, sp, #12
 3348              		@ sp needed
 3349 019a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3350              	.L683:
 3351 019e 174A     		ldr	r2, .L725+8
 3352 01a0 9363     		str	r3, [r2, #56]
 3353 01a2 002D     		cmp	r5, #0
 3354 01a4 E1D1     		bne	.L687
 3355              	.L723:
 3356 01a6 0423     		movs	r3, #4
 3357 01a8 3B72     		strb	r3, [r7, #8]
 3358 01aa EBE7     		b	.L661
 3359              	.L660:
 3360 01ac 4FF00008 		mov	r8, #0
 3361              	.L665:
 3362 01b0 124B     		ldr	r3, .L725+8
 3363 01b2 C3F83880 		str	r8, [r3, #56]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 60


 3364 01b6 6BE7     		b	.L668
 3365              	.L658:
 3366 01b8 3846     		mov	r0, r7
 3367 01ba 5146     		mov	r1, r10
 3368 01bc CDF804C0 		str	ip, [sp, #4]
 3369 01c0 FFF7FEFF 		bl	_ZN3DDA13CheckEndstopsEP8Platform
 3370 01c4 3B7A     		ldrb	r3, [r7, #8]	@ zero_extendqisi2
 3371 01c6 DDF804C0 		ldr	ip, [sp, #4]
 3372 01ca 042B     		cmp	r3, #4
 3373 01cc 7FF429AF 		bne	.L662
 3374 01d0 D8E7     		b	.L661
 3375              	.L724:
 3376 01d2 094B     		ldr	r3, .L725+4
 3377 01d4 D7F8B450 		ldr	r5, [r7, #180]
 3378 01d8 9C68     		ldr	r4, [r3, #8]
 3379 01da D7F8B830 		ldr	r3, [r7, #184]
 3380 01de 2046     		mov	r0, r4
 3381 01e0 1D44     		add	r5, r5, r3
 3382 01e2 FFF7FEFF 		bl	_ZN4Move20CurrentMoveCompletedEv
 3383 01e6 2046     		mov	r0, r4
 3384 01e8 2946     		mov	r1, r5
 3385 01ea 03B0     		add	sp, sp, #12
 3386              		@ sp needed
 3387 01ec BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3388 01f0 FFF7FEBF 		b	_ZN4Move16TryStartNextMoveEm
 3389              	.L726:
 3390              		.align	2
 3391              	.L725:
 3392 01f4 00000940 		.word	1074331648
 3393 01f8 00000000 		.word	reprap
 3394 01fc 00140E40 		.word	1074664448
 3395 0200 00000000 		.word	maxReps
 3396              		.size	_ZN3DDA4StepEv, .-_ZN3DDA4StepEv
 3397              		.section	.text._ZN3DDA11MoveAbortedEv,"ax",%progbits
 3398              		.align	2
 3399              		.global	_ZN3DDA11MoveAbortedEv
 3400              		.thumb
 3401              		.thumb_func
 3402              		.type	_ZN3DDA11MoveAbortedEv, %function
 3403              	_ZN3DDA11MoveAbortedEv:
 3404              		@ args = 0, pretend = 0, frame = 0
 3405              		@ frame_needed = 0, uses_anonymous_args = 0
 3406 0000 38B5     		push	{r3, r4, r5, lr}
 3407 0002 0546     		mov	r5, r0
 3408 0004 0024     		movs	r4, #0
 3409              	.L729:
 3410 0006 2146     		mov	r1, r4
 3411 0008 2846     		mov	r0, r5
 3412 000a 0134     		adds	r4, r4, #1
 3413 000c FFF7FEFF 		bl	_ZN3DDA9StopDriveEj
 3414 0010 0A2C     		cmp	r4, #10
 3415 0012 F8D1     		bne	.L729
 3416 0014 0423     		movs	r3, #4
 3417 0016 2B72     		strb	r3, [r5, #8]
 3418 0018 38BD     		pop	{r3, r4, r5, pc}
 3419              		.size	_ZN3DDA11MoveAbortedEv, .-_ZN3DDA11MoveAbortedEv
 3420 001a 00BF     		.section	.text._ZN3DDA17ReduceHomingSpeedEv,"ax",%progbits
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 61


 3421              		.align	2
 3422              		.global	_ZN3DDA17ReduceHomingSpeedEv
 3423              		.thumb
 3424              		.thumb_func
 3425              		.type	_ZN3DDA17ReduceHomingSpeedEv, %function
 3426              	_ZN3DDA17ReduceHomingSpeedEv:
 3427              		@ args = 0, pretend = 0, frame = 0
 3428              		@ frame_needed = 0, uses_anonymous_args = 0
 3429              		@ link register save eliminated.
 3430 0000 437A     		ldrb	r3, [r0, #9]	@ zero_extendqisi2
 3431 0002 1B07     		lsls	r3, r3, #28
 3432 0004 01D4     		bmi	.L730
 3433 0006 FFF7FEBF 		b	_ZN3DDA17ReduceHomingSpeedEv.part.10
 3434              	.L730:
 3435 000a 7047     		bx	lr
 3436              		.size	_ZN3DDA17ReduceHomingSpeedEv, .-_ZN3DDA17ReduceHomingSpeedEv
 3437              		.section	.text._ZNK3DDA12HasStepErrorEv,"ax",%progbits
 3438              		.align	2
 3439              		.global	_ZNK3DDA12HasStepErrorEv
 3440              		.thumb
 3441              		.thumb_func
 3442              		.type	_ZNK3DDA12HasStepErrorEv, %function
 3443              	_ZNK3DDA12HasStepErrorEv:
 3444              		@ args = 0, pretend = 0, frame = 0
 3445              		@ frame_needed = 0, uses_anonymous_args = 0
 3446              		@ link register save eliminated.
 3447 0000 0023     		movs	r3, #0
 3448              	.L734:
 3449 0002 C218     		adds	r2, r0, r3
 3450 0004 5033     		adds	r3, r3, #80
 3451 0006 92F8D920 		ldrb	r2, [r2, #217]	@ zero_extendqisi2
 3452 000a 022A     		cmp	r2, #2
 3453 000c 04D0     		beq	.L735
 3454 000e B3F5487F 		cmp	r3, #800
 3455 0012 F6D1     		bne	.L734
 3456 0014 0020     		movs	r0, #0
 3457 0016 7047     		bx	lr
 3458              	.L735:
 3459 0018 0120     		movs	r0, #1
 3460 001a 7047     		bx	lr
 3461              		.size	_ZNK3DDA12HasStepErrorEv, .-_ZNK3DDA12HasStepErrorEv
 3462              		.section	.text.startup._GLOBAL__sub_I__ZN3DDA10PrintMovesEv,"ax",%progbits
 3463              		.align	2
 3464              		.thumb
 3465              		.thumb_func
 3466              		.type	_GLOBAL__sub_I__ZN3DDA10PrintMovesEv, %function
 3467              	_GLOBAL__sub_I__ZN3DDA10PrintMovesEv:
 3468              		@ args = 0, pretend = 0, frame = 0
 3469              		@ frame_needed = 0, uses_anonymous_args = 0
 3470              		@ link register save eliminated.
 3471 0000 094B     		ldr	r3, .L742
 3472 0002 0022     		movs	r2, #0
 3473 0004 03F5C051 		add	r1, r3, #6144
 3474              	.L740:
 3475 0008 43F8042C 		str	r2, [r3, #-4]	@ float
 3476 000c 43F8082C 		str	r2, [r3, #-8]	@ float
 3477 0010 43F80C2C 		str	r2, [r3, #-12]	@ float
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 62


 3478 0014 43F8102C 		str	r2, [r3, #-16]	@ float
 3479 0018 43F8142C 		str	r2, [r3, #-20]	@ float
 3480 001c 43F8182C 		str	r2, [r3, #-24]	@ float
 3481 0020 1833     		adds	r3, r3, #24
 3482 0022 8B42     		cmp	r3, r1
 3483 0024 F0D1     		bne	.L740
 3484 0026 7047     		bx	lr
 3485              	.L743:
 3486              		.align	2
 3487              	.L742:
 3488 0028 18000000 		.word	.LANCHOR1+24
 3489              		.size	_GLOBAL__sub_I__ZN3DDA10PrintMovesEv, .-_GLOBAL__sub_I__ZN3DDA10PrintMovesEv
 3490              		.section	.init_array,"aw",%init_array
 3491              		.align	2
 3492 0000 00000000 		.word	_GLOBAL__sub_I__ZN3DDA10PrintMovesEv(target1)
 3493              		.global	_ZN3DDA14probeTriggeredE
 3494              		.global	_ZN3DDA20loggedProbePositionsE
 3495              		.global	_ZN3DDA23numLoggedProbePositionsE
 3496              		.section	.bss._ZN3DDA20loggedProbePositionsE,"aw",%nobits
 3497              		.align	2
 3498              		.set	.LANCHOR3,. + 0
 3499              		.type	_ZN3DDA20loggedProbePositionsE, %object
 3500              		.size	_ZN3DDA20loggedProbePositionsE, 480
 3501              	_ZN3DDA20loggedProbePositionsE:
 3502 0000 00000000 		.space	480
 3502      00000000 
 3502      00000000 
 3502      00000000 
 3502      00000000 
 3503              		.section	.bss._ZL16savedMovePointer,"aw",%nobits
 3504              		.align	2
 3505              		.set	.LANCHOR0,. + 0
 3506              		.type	_ZL16savedMovePointer, %object
 3507              		.size	_ZL16savedMovePointer, 4
 3508              	_ZL16savedMovePointer:
 3509 0000 00000000 		.space	4
 3510              		.section	.bss._ZN3DDA23numLoggedProbePositionsE,"aw",%nobits
 3511              		.align	2
 3512              		.set	.LANCHOR2,. + 0
 3513              		.type	_ZN3DDA23numLoggedProbePositionsE, %object
 3514              		.size	_ZN3DDA23numLoggedProbePositionsE, 4
 3515              	_ZN3DDA23numLoggedProbePositionsE:
 3516 0000 00000000 		.space	4
 3517              		.section	.bss._ZL10savedMoves,"aw",%nobits
 3518              		.align	2
 3519              		.set	.LANCHOR1,. + 0
 3520              		.type	_ZL10savedMoves, %object
 3521              		.size	_ZL10savedMoves, 6144
 3522              	_ZL10savedMoves:
 3523 0000 00000000 		.space	6144
 3523      00000000 
 3523      00000000 
 3523      00000000 
 3523      00000000 
 3524              		.section	.rodata.str1.4,"aMS",%progbits,1
 3525              		.align	2
 3526              	.LC0:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 63


 3527 0000 25662C25 		.ascii	"%f,%f,%f,%f,%f,%f\012\000"
 3527      662C2566 
 3527      2C25662C 
 3527      25662C25 
 3527      660A00
 3528 0013 00       		.space	1
 3529              	.LC1:
 3530 0014 25733D00 		.ascii	"%s=\000"
 3531              	.LC2:
 3532 0018 5D00     		.ascii	"]\000"
 3533 001a 0000     		.space	2
 3534              	.LC3:
 3535 001c 25632566 		.ascii	"%c%f\000"
 3535      00
 3536 0021 000000   		.space	3
 3537              	.LC4:
 3538 0024 4444413A 		.ascii	"DDA:\000"
 3538      00
 3539 0029 000000   		.space	3
 3540              	.LC5:
 3541 002c 20737461 		.ascii	" start\000"
 3541      727400
 3542 0033 00       		.space	1
 3543              	.LC6:
 3544 0034 20656E64 		.ascii	" end\000"
 3544      00
 3545 0039 000000   		.space	3
 3546              	.LC7:
 3547 003c 20643D25 		.ascii	" d=%f\000"
 3547      6600
 3548 0042 0000     		.space	2
 3549              	.LC8:
 3550 0044 20766563 		.ascii	" vec\000"
 3550      00
 3551 0049 000000   		.space	3
 3552              	.LC9:
 3553 004c 0A613D25 		.ascii	"\012a=%f reqv=%f topv=%f startv=%f endv=%f\012dacce"
 3553      66207265 
 3553      71763D25 
 3553      6620746F 
 3553      70763D25 
 3554 0079 6C3D2566 		.ascii	"l=%f ddecel=%f cks=%u\012\000"
 3554      20646465 
 3554      63656C3D 
 3554      25662063 
 3554      6B733D25 
 3555              	.LC10:
 3556 0090 52656375 		.ascii	"Recursion start %u\012\000"
 3556      7273696F 
 3556      6E207374 
 3556      61727420 
 3556      25750A00 
 3557              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 3558              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 3559              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 3560              	_ZL28cpu_irq_prev_interrupt_state:
 3561 0000 00       		.space	1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccRmteqO.s 			page 64


 3562              		.section	.bss._ZN3DDA14probeTriggeredE,"aw",%nobits
 3563              		.set	.LANCHOR4,. + 0
 3564              		.type	_ZN3DDA14probeTriggeredE, %object
 3565              		.size	_ZN3DDA14probeTriggeredE, 1
 3566              	_ZN3DDA14probeTriggeredE:
 3567 0000 00       		.space	1
 3568              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 3569              		.align	2
 3570              		.type	_ZL32cpu_irq_critical_section_counter, %object
 3571              		.size	_ZL32cpu_irq_critical_section_counter, 4
 3572              	_ZL32cpu_irq_critical_section_counter:
 3573 0000 00000000 		.space	4
 3574              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
