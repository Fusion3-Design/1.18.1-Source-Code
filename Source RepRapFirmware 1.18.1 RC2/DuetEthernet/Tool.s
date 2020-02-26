ARM GAS  C:\Users\tstern\AppData\Local\Temp\cce6ghqv.s 			page 1


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
  15              		.file	"Tool.cpp"
  16              		.section	.text._ZN4Tool6CreateEiPljS0_jmm,"ax",%progbits
  17              		.align	2
  18              		.global	_ZN4Tool6CreateEiPljS0_jmm
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN4Tool6CreateEiPljS0_jmm, %function
  22              	_ZN4Tool6CreateEiPljS0_jmm:
  23              		@ args = 12, pretend = 0, frame = 16
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
  26 0004 DFF884C1 		ldr	ip, .L35+24
  27 0008 85B0     		sub	sp, sp, #20
  28 000a DCF81040 		ldr	r4, [ip, #16]
  29 000e DDF83080 		ldr	r8, [sp, #48]
  30 0012 D4F8B461 		ldr	r6, [r4, #436]
  31 0016 072A     		cmp	r2, #7
  32 0018 8146     		mov	r9, r0
  33 001a 00F29180 		bhi	.L34
  34 001e B8F1080F 		cmp	r8, #8
  35 0022 00F29580 		bhi	.L4
  36 0026 8AB1     		cbz	r2, .L5
  37 0028 0868     		ldr	r0, [r1]
  38 002a 0028     		cmp	r0, #0
  39 002c 74DB     		blt	.L6
  40 002e B042     		cmp	r0, r6
  41 0030 72DA     		bge	.L6
  42 0032 0F1F     		subs	r7, r1, #4
  43 0034 07EB8207 		add	r7, r7, r2, lsl #2
  44 0038 0C46     		mov	r4, r1
  45 003a 05E0     		b	.L8
  46              	.L9:
  47 003c 54F8045F 		ldr	r5, [r4, #4]!
  48 0040 002D     		cmp	r5, #0
  49 0042 69DB     		blt	.L6
  50 0044 B542     		cmp	r5, r6
  51 0046 67DA     		bge	.L6
  52              	.L8:
  53 0048 BC42     		cmp	r4, r7
  54 004a F7D1     		bne	.L9
  55              	.L5:
  56 004c B8F1000F 		cmp	r8, #0
  57 0050 0DD0     		beq	.L10
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cce6ghqv.s 			page 2


  58 0052 1868     		ldr	r0, [r3]
  59 0054 0728     		cmp	r0, #7
  60 0056 69D8     		bhi	.L11
  61 0058 181F     		subs	r0, r3, #4
  62 005a 00EB8800 		add	r0, r0, r8, lsl #2
  63 005e 1C46     		mov	r4, r3
  64 0060 03E0     		b	.L13
  65              	.L14:
  66 0062 54F8045F 		ldr	r5, [r4, #4]!
  67 0066 072D     		cmp	r5, #7
  68 0068 60D8     		bhi	.L11
  69              	.L13:
  70 006a 8442     		cmp	r4, r0
  71 006c F9D1     		bne	.L14
  72              	.L10:
  73 006e 414C     		ldr	r4, .L35
  74 0070 2068     		ldr	r0, [r4]
  75 0072 0028     		cmp	r0, #0
  76 0074 74D0     		beq	.L15
  77 0076 D0F8C850 		ldr	r5, [r0, #200]
  78 007a 2560     		str	r5, [r4]
  79              	.L16:
  80 007c 0D9E     		ldr	r6, [sp, #52]
  81 007e C0F8C060 		str	r6, [r0, #192]
  82 0082 0024     		movs	r4, #0
  83 0084 0025     		movs	r5, #0
  84 0086 0E9E     		ldr	r6, [sp, #56]
  85 0088 C0F80490 		str	r9, [r0, #4]
  86 008c 0264     		str	r2, [r0, #64]
  87 008e C0F8A480 		str	r8, [r0, #164]
  88 0092 C0F8C460 		str	r6, [r0, #196]
  89 0096 0460     		str	r4, [r0]	@ float
  90 0098 C0F8A840 		str	r4, [r0, #168]	@ float
  91 009c C0F8AC40 		str	r4, [r0, #172]	@ float
  92 00a0 C0F8B040 		str	r4, [r0, #176]	@ float
  93 00a4 C0F8B440 		str	r4, [r0, #180]	@ float
  94 00a8 C0F8B840 		str	r4, [r0, #184]	@ float
  95 00ac C0F8BC40 		str	r4, [r0, #188]	@ float
  96 00b0 C0F8C850 		str	r5, [r0, #200]
  97 00b4 80F8CD50 		strb	r5, [r0, #205]
  98 00b8 80F8CE50 		strb	r5, [r0, #206]
  99 00bc 80F8CC50 		strb	r5, [r0, #204]
 100 00c0 80F8CF50 		strb	r5, [r0, #207]
 101 00c4 9AB1     		cbz	r2, .L19
 102 00c6 07EE102A 		fmsr	s14, r2	@ int
 103 00ca F8EEC77A 		fsitos	s15, s14
 104 00ce B7EE007A 		fconsts	s14, #112
 105 00d2 C7EE277A 		fdivs	s15, s14, s15
 106 00d6 01EB8202 		add	r2, r1, r2, lsl #2
 107 00da 00F12404 		add	r4, r0, #36
 108              	.L20:
 109 00de 51F8045B 		ldr	r5, [r1], #4
 110 00e2 44F81C5C 		str	r5, [r4, #-28]
 111 00e6 9142     		cmp	r1, r2
 112 00e8 E4EC017A 		fstmias	r4!, {s15}
 113 00ec F7D1     		bne	.L20
 114              	.L19:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cce6ghqv.s 			page 3


 115 00ee B8F1000F 		cmp	r8, #0
 116 00f2 18D0     		beq	.L3
 117 00f4 2049     		ldr	r1, .L35+4
 118 00f6 03EB8808 		add	r8, r3, r8, lsl #2
 119 00fa 00F18402 		add	r2, r0, #132
 120              	.L21:
 121 00fe 53F8044B 		ldr	r4, [r3], #4
 122 0102 42F8404C 		str	r4, [r2, #-64]
 123 0106 4345     		cmp	r3, r8
 124 0108 42F8201C 		str	r1, [r2, #-32]	@ float
 125 010c 42F8041B 		str	r1, [r2], #4	@ float
 126 0110 F5D1     		bne	.L21
 127 0112 05B0     		add	sp, sp, #20
 128              		@ sp needed
 129 0114 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 130              	.L6:
 131 0118 DCF80000 		ldr	r0, [ip]
 132 011c 174A     		ldr	r2, .L35+8
 133 011e 0621     		movs	r1, #6
 134 0120 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 135 0124 0020     		movs	r0, #0
 136              	.L3:
 137 0126 05B0     		add	sp, sp, #20
 138              		@ sp needed
 139 0128 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 140              	.L11:
 141 012c DCF80000 		ldr	r0, [ip]
 142 0130 134A     		ldr	r2, .L35+12
 143 0132 0621     		movs	r1, #6
 144 0134 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 145 0138 0020     		movs	r0, #0
 146 013a 05B0     		add	sp, sp, #20
 147              		@ sp needed
 148 013c BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 149              	.L34:
 150 0140 DCF80000 		ldr	r0, [ip]
 151 0144 0F4A     		ldr	r2, .L35+16
 152 0146 0621     		movs	r1, #6
 153 0148 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 154 014c 0020     		movs	r0, #0
 155 014e EAE7     		b	.L3
 156              	.L4:
 157 0150 DCF80000 		ldr	r0, [ip]
 158 0154 0C4A     		ldr	r2, .L35+20
 159 0156 0621     		movs	r1, #6
 160 0158 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 161 015c 0020     		movs	r0, #0
 162 015e E2E7     		b	.L3
 163              	.L15:
 164 0160 D020     		movs	r0, #208
 165 0162 0391     		str	r1, [sp, #12]
 166 0164 0292     		str	r2, [sp, #8]
 167 0166 0193     		str	r3, [sp, #4]
 168 0168 FFF7FEFF 		bl	_Znwj
 169 016c 019B     		ldr	r3, [sp, #4]
 170 016e 029A     		ldr	r2, [sp, #8]
 171 0170 0399     		ldr	r1, [sp, #12]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cce6ghqv.s 			page 4


 172 0172 83E7     		b	.L16
 173              	.L36:
 174              		.align	2
 175              	.L35:
 176 0174 00000000 		.word	.LANCHOR0
 177 0178 339388C3 		.word	-1014459597
 178 017c 50000000 		.word	.LC2
 179 0180 78000000 		.word	.LC3
 180 0184 00000000 		.word	.LC0
 181 0188 28000000 		.word	.LC1
 182 018c 00000000 		.word	reprap
 183              		.size	_ZN4Tool6CreateEiPljS0_jmm, .-_ZN4Tool6CreateEiPljS0_jmm
 184              		.section	.text._ZN4Tool6DeleteEPS_,"ax",%progbits
 185              		.align	2
 186              		.global	_ZN4Tool6DeleteEPS_
 187              		.thumb
 188              		.thumb_func
 189              		.type	_ZN4Tool6DeleteEPS_, %function
 190              	_ZN4Tool6DeleteEPS_:
 191              		@ args = 0, pretend = 0, frame = 0
 192              		@ frame_needed = 0, uses_anonymous_args = 0
 193              		@ link register save eliminated.
 194 0000 20B1     		cbz	r0, .L37
 195 0002 034B     		ldr	r3, .L42
 196 0004 1A68     		ldr	r2, [r3]
 197 0006 C0F8C820 		str	r2, [r0, #200]
 198 000a 1860     		str	r0, [r3]
 199              	.L37:
 200 000c 7047     		bx	lr
 201              	.L43:
 202 000e 00BF     		.align	2
 203              	.L42:
 204 0010 00000000 		.word	.LANCHOR0
 205              		.size	_ZN4Tool6DeleteEPS_, .-_ZN4Tool6DeleteEPS_
 206              		.global	__aeabi_f2d
 207              		.section	.text._ZN4Tool5PrintER9StringRef,"ax",%progbits
 208              		.align	2
 209              		.global	_ZN4Tool5PrintER9StringRef
 210              		.thumb
 211              		.thumb_func
 212              		.type	_ZN4Tool5PrintER9StringRef, %function
 213              	_ZN4Tool5PrintER9StringRef:
 214              		@ args = 0, pretend = 0, frame = 0
 215              		@ frame_needed = 0, uses_anonymous_args = 0
 216 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 217 0004 0446     		mov	r4, r0
 218 0006 84B0     		sub	sp, sp, #16
 219 0008 0846     		mov	r0, r1
 220 000a 0E46     		mov	r6, r1
 221 000c 6268     		ldr	r2, [r4, #4]
 222 000e 4349     		ldr	r1, .L69
 223 0010 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 224 0014 236C     		ldr	r3, [r4, #64]
 225 0016 7BB1     		cbz	r3, .L48
 226 0018 2746     		mov	r7, r4
 227 001a 0025     		movs	r5, #0
 228 001c 2022     		movs	r2, #32
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cce6ghqv.s 			page 5


 229 001e 00E0     		b	.L49
 230              	.L65:
 231 0020 2C22     		movs	r2, #44
 232              	.L49:
 233 0022 BB68     		ldr	r3, [r7, #8]
 234 0024 3E49     		ldr	r1, .L69+4
 235 0026 3046     		mov	r0, r6
 236 0028 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 237 002c 236C     		ldr	r3, [r4, #64]
 238 002e 0135     		adds	r5, r5, #1
 239 0030 AB42     		cmp	r3, r5
 240 0032 07F10407 		add	r7, r7, #4
 241 0036 F3D8     		bhi	.L65
 242              	.L48:
 243 0038 3046     		mov	r0, r6
 244 003a 3A49     		ldr	r1, .L69+8
 245 003c FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 246 0040 D4F8A430 		ldr	r3, [r4, #164]
 247 0044 13B3     		cbz	r3, .L47
 248 0046 04F18408 		add	r8, r4, #132
 249 004a 0027     		movs	r7, #0
 250 004c 4FF02009 		mov	r9, #32
 251 0050 01E0     		b	.L51
 252              	.L66:
 253 0052 4FF02C09 		mov	r9, #44
 254              	.L51:
 255 0056 58F8200C 		ldr	r0, [r8, #-32]	@ float
 256 005a 58F840AC 		ldr	r10, [r8, #-64]
 257 005e FFF7FEFF 		bl	__aeabi_f2d
 258 0062 CDE90001 		strd	r0, [sp]
 259 0066 D8F80000 		ldr	r0, [r8]	@ float
 260 006a FFF7FEFF 		bl	__aeabi_f2d
 261 006e 5346     		mov	r3, r10
 262 0070 CDE90201 		strd	r0, [sp, #8]
 263 0074 4A46     		mov	r2, r9
 264 0076 3046     		mov	r0, r6
 265 0078 2B49     		ldr	r1, .L69+12
 266 007a FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 267 007e D4F8A430 		ldr	r3, [r4, #164]
 268 0082 0137     		adds	r7, r7, #1
 269 0084 BB42     		cmp	r3, r7
 270 0086 08F10408 		add	r8, r8, #4
 271 008a E2D8     		bhi	.L66
 272              	.L47:
 273 008c 3046     		mov	r0, r6
 274 008e 2749     		ldr	r1, .L69+16
 275 0090 DFF8B480 		ldr	r8, .L69+44
 276 0094 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 277 0098 0025     		movs	r5, #0
 278 009a 2022     		movs	r2, #32
 279 009c 0127     		movs	r7, #1
 280 009e 02E0     		b	.L50
 281              	.L52:
 282 00a0 0135     		adds	r5, r5, #1
 283 00a2 062D     		cmp	r5, #6
 284 00a4 10D0     		beq	.L67
 285              	.L50:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cce6ghqv.s 			page 6


 286 00a6 D4F8C030 		ldr	r3, [r4, #192]
 287 00aa 07FA05F1 		lsl	r1, r7, r5
 288 00ae 1942     		tst	r1, r3
 289 00b0 F6D0     		beq	.L52
 290 00b2 18F80530 		ldrb	r3, [r8, r5]	@ zero_extendqisi2
 291 00b6 1E49     		ldr	r1, .L69+20
 292 00b8 3046     		mov	r0, r6
 293 00ba 0135     		adds	r5, r5, #1
 294 00bc FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 295 00c0 062D     		cmp	r5, #6
 296 00c2 4FF02C02 		mov	r2, #44
 297 00c6 EED1     		bne	.L50
 298              	.L67:
 299 00c8 3046     		mov	r0, r6
 300 00ca 1A49     		ldr	r1, .L69+24
 301 00cc FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 302 00d0 0025     		movs	r5, #0
 303 00d2 2022     		movs	r2, #32
 304 00d4 0127     		movs	r7, #1
 305 00d6 02E0     		b	.L56
 306              	.L54:
 307 00d8 0135     		adds	r5, r5, #1
 308 00da 082D     		cmp	r5, #8
 309 00dc 0FD0     		beq	.L68
 310              	.L56:
 311 00de D4F8C430 		ldr	r3, [r4, #196]
 312 00e2 07FA05F1 		lsl	r1, r7, r5
 313 00e6 1942     		tst	r1, r3
 314 00e8 F6D0     		beq	.L54
 315 00ea 2B46     		mov	r3, r5
 316 00ec 3046     		mov	r0, r6
 317 00ee 1249     		ldr	r1, .L69+28
 318 00f0 0135     		adds	r5, r5, #1
 319 00f2 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 320 00f6 082D     		cmp	r5, #8
 321 00f8 4FF02C02 		mov	r2, #44
 322 00fc EFD1     		bne	.L56
 323              	.L68:
 324 00fe 94F8CD40 		ldrb	r4, [r4, #205]	@ zero_extendqisi2
 325 0102 0E4B     		ldr	r3, .L69+32
 326 0104 0E4A     		ldr	r2, .L69+36
 327 0106 0F49     		ldr	r1, .L69+40
 328 0108 3046     		mov	r0, r6
 329 010a 002C     		cmp	r4, #0
 330 010c 18BF     		it	ne
 331 010e 1A46     		movne	r2, r3
 332 0110 04B0     		add	sp, sp, #16
 333              		@ sp needed
 334 0112 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 335 0116 FFF7FEBF 		b	_ZN9StringRef4catfEPKcz
 336              	.L70:
 337 011a 00BF     		.align	2
 338              	.L69:
 339 011c B4000000 		.word	.LC6
 340 0120 EC000000 		.word	.LC8
 341 0124 C8000000 		.word	.LC7
 342 0128 FC000000 		.word	.LC10
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cce6ghqv.s 			page 7


 343 012c F4000000 		.word	.LC9
 344 0130 10010000 		.word	.LC11
 345 0134 18010000 		.word	.LC12
 346 0138 20010000 		.word	.LC13
 347 013c A0000000 		.word	.LC4
 348 0140 AC000000 		.word	.LC5
 349 0144 28010000 		.word	.LC14
 350 0148 00000000 		.word	_ZN6GCodes11axisLettersE
 351              		.size	_ZN4Tool5PrintER9StringRef, .-_ZN4Tool5PrintER9StringRef
 352              		.section	.text._ZNK4Tool11MaxFeedrateEv,"ax",%progbits
 353              		.align	2
 354              		.global	_ZNK4Tool11MaxFeedrateEv
 355              		.thumb
 356              		.thumb_func
 357              		.type	_ZNK4Tool11MaxFeedrateEv, %function
 358              	_ZNK4Tool11MaxFeedrateEv:
 359              		@ args = 0, pretend = 0, frame = 0
 360              		@ frame_needed = 0, uses_anonymous_args = 0
 361 0000 026C     		ldr	r2, [r0, #64]
 362 0002 134B     		ldr	r3, .L80
 363 0004 10B5     		push	{r4, lr}
 364 0006 DAB1     		cbz	r2, .L79
 365 0008 1969     		ldr	r1, [r3, #16]
 366 000a DFED127A 		flds	s15, .L80+4
 367 000e 1C68     		ldr	r4, [r3]
 368 0010 D1F8B011 		ldr	r1, [r1, #432]
 369 0014 00EB8202 		add	r2, r0, r2, lsl #2
 370              	.L75:
 371 0018 8368     		ldr	r3, [r0, #8]
 372 001a 0B44     		add	r3, r3, r1
 373 001c 04EB8303 		add	r3, r4, r3, lsl #2
 374 0020 93ED3C7A 		flds	s14, [r3, #240]
 375 0024 B4EE677A 		fcmps	s14, s15
 376 0028 F1EE10FA 		fmstat
 377 002c 00F10400 		add	r0, r0, #4
 378 0030 C8BF     		it	gt
 379 0032 F0EE477A 		fcpysgt	s15, s14
 380 0036 9042     		cmp	r0, r2
 381 0038 EED1     		bne	.L75
 382 003a 17EE900A 		fmrs	r0, s15
 383 003e 10BD     		pop	{r4, pc}
 384              	.L79:
 385 0040 1868     		ldr	r0, [r3]
 386 0042 054A     		ldr	r2, .L80+8
 387 0044 0621     		movs	r1, #6
 388 0046 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 389 004a 4FF07E50 		mov	r0, #1065353216
 390 004e 10BD     		pop	{r4, pc}
 391              	.L81:
 392              		.align	2
 393              	.L80:
 394 0050 00000000 		.word	reprap
 395 0054 00000000 		.word	0
 396 0058 38010000 		.word	.LC15
 397              		.size	_ZNK4Tool11MaxFeedrateEv, .-_ZNK4Tool11MaxFeedrateEv
 398              		.section	.text._ZNK4Tool9InstantDvEv,"ax",%progbits
 399              		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cce6ghqv.s 			page 8


 400              		.global	_ZNK4Tool9InstantDvEv
 401              		.thumb
 402              		.thumb_func
 403              		.type	_ZNK4Tool9InstantDvEv, %function
 404              	_ZNK4Tool9InstantDvEv:
 405              		@ args = 0, pretend = 0, frame = 0
 406              		@ frame_needed = 0, uses_anonymous_args = 0
 407 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 408 0004 036C     		ldr	r3, [r0, #64]
 409 0006 2DED028B 		fstmfdd	sp!, {d8}
 410 000a 0646     		mov	r6, r0
 411 000c 13B3     		cbz	r3, .L89
 412 000e 174F     		ldr	r7, .L90
 413 0010 9FED178A 		flds	s16, .L90+4
 414 0014 3B69     		ldr	r3, [r7, #16]
 415 0016 D3F8B081 		ldr	r8, [r3, #432]
 416 001a 0546     		mov	r5, r0
 417 001c 0024     		movs	r4, #0
 418              	.L86:
 419 001e A968     		ldr	r1, [r5, #8]
 420 0020 3868     		ldr	r0, [r7]
 421 0022 4144     		add	r1, r1, r8
 422 0024 FFF7FEFF 		bl	_ZNK8Platform15ActualInstantDvEj
 423 0028 07EE900A 		fmsr	s15, r0
 424 002c 336C     		ldr	r3, [r6, #64]
 425 002e F4EE487A 		fcmps	s15, s16
 426 0032 F1EE10FA 		fmstat
 427 0036 04F10104 		add	r4, r4, #1
 428 003a 48BF     		it	mi
 429 003c B0EE678A 		fcpysmi	s16, s15
 430 0040 A342     		cmp	r3, r4
 431 0042 05F10405 		add	r5, r5, #4
 432 0046 EAD8     		bhi	.L86
 433 0048 18EE100A 		fmrs	r0, s16
 434 004c BDEC028B 		fldmfdd	sp!, {d8}
 435 0050 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 436              	.L89:
 437 0054 054B     		ldr	r3, .L90
 438 0056 074A     		ldr	r2, .L90+8
 439 0058 1868     		ldr	r0, [r3]
 440 005a 0621     		movs	r1, #6
 441 005c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 442 0060 BDEC028B 		fldmfdd	sp!, {d8}
 443 0064 4FF07E50 		mov	r0, #1065353216
 444 0068 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 445              	.L91:
 446              		.align	2
 447              	.L90:
 448 006c 00000000 		.word	reprap
 449 0070 FFFF7F7F 		.word	2139095039
 450 0074 7C010000 		.word	.LC16
 451              		.size	_ZNK4Tool9InstantDvEv, .-_ZNK4Tool9InstantDvEv
 452              		.section	.text._ZN4Tool20FlagTemperatureFaultEa,"ax",%progbits
 453              		.align	2
 454              		.global	_ZN4Tool20FlagTemperatureFaultEa
 455              		.thumb
 456              		.thumb_func
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cce6ghqv.s 			page 9


 457              		.type	_ZN4Tool20FlagTemperatureFaultEa, %function
 458              	_ZN4Tool20FlagTemperatureFaultEa:
 459              		@ args = 0, pretend = 0, frame = 0
 460              		@ frame_needed = 0, uses_anonymous_args = 0
 461              		@ link register save eliminated.
 462 0000 70B4     		push	{r4, r5, r6}
 463 0002 A8B1     		cbz	r0, .L92
 464 0004 0126     		movs	r6, #1
 465              	.L94:
 466 0006 D0F8A450 		ldr	r5, [r0, #164]
 467 000a 6DB1     		cbz	r5, .L96
 468 000c 436C     		ldr	r3, [r0, #68]
 469 000e 9942     		cmp	r1, r3
 470 0010 10D0     		beq	.L98
 471 0012 0246     		mov	r2, r0
 472 0014 0023     		movs	r3, #0
 473 0016 02E0     		b	.L99
 474              	.L97:
 475 0018 546C     		ldr	r4, [r2, #68]
 476 001a 8C42     		cmp	r4, r1
 477 001c 0AD0     		beq	.L98
 478              	.L99:
 479 001e 0133     		adds	r3, r3, #1
 480 0020 AB42     		cmp	r3, r5
 481 0022 02F10402 		add	r2, r2, #4
 482 0026 F7D1     		bne	.L97
 483              	.L96:
 484 0028 D0F8C800 		ldr	r0, [r0, #200]
 485 002c 0028     		cmp	r0, #0
 486 002e EAD1     		bne	.L94
 487              	.L92:
 488 0030 70BC     		pop	{r4, r5, r6}
 489 0032 7047     		bx	lr
 490              	.L98:
 491 0034 80F8CE60 		strb	r6, [r0, #206]
 492 0038 D0F8C800 		ldr	r0, [r0, #200]
 493 003c 0028     		cmp	r0, #0
 494 003e E2D1     		bne	.L94
 495 0040 F6E7     		b	.L92
 496              		.size	_ZN4Tool20FlagTemperatureFaultEa, .-_ZN4Tool20FlagTemperatureFaultEa
 497 0042 00BF     		.section	.text._ZN4Tool21ClearTemperatureFaultEa,"ax",%progbits
 498              		.align	2
 499              		.global	_ZN4Tool21ClearTemperatureFaultEa
 500              		.thumb
 501              		.thumb_func
 502              		.type	_ZN4Tool21ClearTemperatureFaultEa, %function
 503              	_ZN4Tool21ClearTemperatureFaultEa:
 504              		@ args = 0, pretend = 0, frame = 0
 505              		@ frame_needed = 0, uses_anonymous_args = 0
 506              		@ link register save eliminated.
 507 0000 70B4     		push	{r4, r5, r6}
 508 0002 A8B1     		cbz	r0, .L109
 509 0004 0026     		movs	r6, #0
 510              	.L111:
 511 0006 D0F8A450 		ldr	r5, [r0, #164]
 512 000a 6DB1     		cbz	r5, .L113
 513 000c 436C     		ldr	r3, [r0, #68]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cce6ghqv.s 			page 10


 514 000e 9942     		cmp	r1, r3
 515 0010 10D0     		beq	.L115
 516 0012 0246     		mov	r2, r0
 517 0014 0023     		movs	r3, #0
 518 0016 02E0     		b	.L116
 519              	.L114:
 520 0018 546C     		ldr	r4, [r2, #68]
 521 001a 8C42     		cmp	r4, r1
 522 001c 0AD0     		beq	.L115
 523              	.L116:
 524 001e 0133     		adds	r3, r3, #1
 525 0020 AB42     		cmp	r3, r5
 526 0022 02F10402 		add	r2, r2, #4
 527 0026 F7D1     		bne	.L114
 528              	.L113:
 529 0028 D0F8C800 		ldr	r0, [r0, #200]
 530 002c 0028     		cmp	r0, #0
 531 002e EAD1     		bne	.L111
 532              	.L109:
 533 0030 70BC     		pop	{r4, r5, r6}
 534 0032 7047     		bx	lr
 535              	.L115:
 536 0034 80F8CE60 		strb	r6, [r0, #206]
 537 0038 D0F8C800 		ldr	r0, [r0, #200]
 538 003c 0028     		cmp	r0, #0
 539 003e E2D1     		bne	.L111
 540 0040 F6E7     		b	.L109
 541              		.size	_ZN4Tool21ClearTemperatureFaultEa, .-_ZN4Tool21ClearTemperatureFaultEa
 542 0042 00BF     		.section	.text._ZN4Tool19SetTemperatureFaultEa,"ax",%progbits
 543              		.align	2
 544              		.global	_ZN4Tool19SetTemperatureFaultEa
 545              		.thumb
 546              		.thumb_func
 547              		.type	_ZN4Tool19SetTemperatureFaultEa, %function
 548              	_ZN4Tool19SetTemperatureFaultEa:
 549              		@ args = 0, pretend = 0, frame = 0
 550              		@ frame_needed = 0, uses_anonymous_args = 0
 551              		@ link register save eliminated.
 552 0000 30B4     		push	{r4, r5}
 553 0002 D0F8A450 		ldr	r5, [r0, #164]
 554 0006 6DB1     		cbz	r5, .L126
 555 0008 436C     		ldr	r3, [r0, #68]
 556 000a 9942     		cmp	r1, r3
 557 000c 0CD0     		beq	.L128
 558 000e 0246     		mov	r2, r0
 559 0010 0023     		movs	r3, #0
 560 0012 02E0     		b	.L130
 561              	.L131:
 562 0014 546C     		ldr	r4, [r2, #68]
 563 0016 8C42     		cmp	r4, r1
 564 0018 06D0     		beq	.L128
 565              	.L130:
 566 001a 0133     		adds	r3, r3, #1
 567 001c AB42     		cmp	r3, r5
 568 001e 02F10402 		add	r2, r2, #4
 569 0022 F7D1     		bne	.L131
 570              	.L126:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cce6ghqv.s 			page 11


 571 0024 30BC     		pop	{r4, r5}
 572 0026 7047     		bx	lr
 573              	.L128:
 574 0028 0123     		movs	r3, #1
 575 002a 80F8CE30 		strb	r3, [r0, #206]
 576 002e 30BC     		pop	{r4, r5}
 577 0030 7047     		bx	lr
 578              		.size	_ZN4Tool19SetTemperatureFaultEa, .-_ZN4Tool19SetTemperatureFaultEa
 579 0032 00BF     		.section	.text._ZN4Tool21ResetTemperatureFaultEa,"ax",%progbits
 580              		.align	2
 581              		.global	_ZN4Tool21ResetTemperatureFaultEa
 582              		.thumb
 583              		.thumb_func
 584              		.type	_ZN4Tool21ResetTemperatureFaultEa, %function
 585              	_ZN4Tool21ResetTemperatureFaultEa:
 586              		@ args = 0, pretend = 0, frame = 0
 587              		@ frame_needed = 0, uses_anonymous_args = 0
 588              		@ link register save eliminated.
 589 0000 30B4     		push	{r4, r5}
 590 0002 D0F8A450 		ldr	r5, [r0, #164]
 591 0006 6DB1     		cbz	r5, .L136
 592 0008 436C     		ldr	r3, [r0, #68]
 593 000a 9942     		cmp	r1, r3
 594 000c 0CD0     		beq	.L138
 595 000e 0246     		mov	r2, r0
 596 0010 0023     		movs	r3, #0
 597 0012 02E0     		b	.L140
 598              	.L141:
 599 0014 546C     		ldr	r4, [r2, #68]
 600 0016 8C42     		cmp	r4, r1
 601 0018 06D0     		beq	.L138
 602              	.L140:
 603 001a 0133     		adds	r3, r3, #1
 604 001c AB42     		cmp	r3, r5
 605 001e 02F10402 		add	r2, r2, #4
 606 0022 F7D1     		bne	.L141
 607              	.L136:
 608 0024 30BC     		pop	{r4, r5}
 609 0026 7047     		bx	lr
 610              	.L138:
 611 0028 0023     		movs	r3, #0
 612 002a 80F8CE30 		strb	r3, [r0, #206]
 613 002e 30BC     		pop	{r4, r5}
 614 0030 7047     		bx	lr
 615              		.size	_ZN4Tool21ResetTemperatureFaultEa, .-_ZN4Tool21ResetTemperatureFaultEa
 616 0032 00BF     		.section	.text._ZNK4Tool27AllHeatersAtHighTemperatureEb,"ax",%progbits
 617              		.align	2
 618              		.global	_ZNK4Tool27AllHeatersAtHighTemperatureEb
 619              		.thumb
 620              		.thumb_func
 621              		.type	_ZNK4Tool27AllHeatersAtHighTemperatureEb, %function
 622              	_ZNK4Tool27AllHeatersAtHighTemperatureEb:
 623              		@ args = 0, pretend = 0, frame = 0
 624              		@ frame_needed = 0, uses_anonymous_args = 0
 625 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 626 0004 D0F8A430 		ldr	r3, [r0, #164]
 627 0008 2DED028B 		fstmfdd	sp!, {d8}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cce6ghqv.s 			page 12


 628 000c 0646     		mov	r6, r0
 629 000e 8846     		mov	r8, r1
 630 0010 43B3     		cbz	r3, .L151
 631 0012 174F     		ldr	r7, .L157
 632 0014 9FED178A 		flds	s16, .L157+4
 633 0018 DFED178A 		flds	s17, .L157+8
 634 001c 0446     		mov	r4, r0
 635 001e 0025     		movs	r5, #0
 636 0020 0BE0     		b	.L152
 637              	.L156:
 638 0022 F4EEE87A 		fcmpes	s15, s17
 639 0026 F1EE10FA 		fmstat
 640 002a 02D5     		bpl	.L149
 641 002c B8F1000F 		cmp	r8, #0
 642 0030 13D1     		bne	.L154
 643              	.L149:
 644 0032 D6F8A430 		ldr	r3, [r6, #164]
 645 0036 AB42     		cmp	r3, r5
 646 0038 14D9     		bls	.L151
 647              	.L152:
 648 003a 94F94410 		ldrsb	r1, [r4, #68]
 649 003e F868     		ldr	r0, [r7, #12]
 650 0040 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 651 0044 07EE900A 		fmsr	s15, r0
 652 0048 F4EEC87A 		fcmpes	s15, s16
 653 004c F1EE10FA 		fmstat
 654 0050 05F10105 		add	r5, r5, #1
 655 0054 04F10404 		add	r4, r4, #4
 656 0058 E3D5     		bpl	.L156
 657              	.L154:
 658 005a BDEC028B 		fldmfdd	sp!, {d8}
 659 005e 0020     		movs	r0, #0
 660 0060 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 661              	.L151:
 662 0064 BDEC028B 		fldmfdd	sp!, {d8}
 663 0068 0120     		movs	r0, #1
 664 006a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 665              	.L158:
 666 006e 00BF     		.align	2
 667              	.L157:
 668 0070 00000000 		.word	reprap
 669 0074 0000B442 		.word	1119092736
 670 0078 00002043 		.word	1126170624
 671              		.size	_ZNK4Tool27AllHeatersAtHighTemperatureEb, .-_ZNK4Tool27AllHeatersAtHighTemperatureEb
 672              		.section	.text._ZN4Tool7StandbyEv,"ax",%progbits
 673              		.align	2
 674              		.global	_ZN4Tool7StandbyEv
 675              		.thumb
 676              		.thumb_func
 677              		.type	_ZN4Tool7StandbyEv, %function
 678              	_ZN4Tool7StandbyEv:
 679              		@ args = 0, pretend = 0, frame = 0
 680              		@ frame_needed = 0, uses_anonymous_args = 0
 681 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 682 0002 90F8CD30 		ldrb	r3, [r0, #205]	@ zero_extendqisi2
 683 0006 0746     		mov	r7, r0
 684 0008 E3B1     		cbz	r3, .L159
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cce6ghqv.s 			page 13


 685 000a D0F8A430 		ldr	r3, [r0, #164]
 686 000e ABB1     		cbz	r3, .L162
 687 0010 0D4E     		ldr	r6, .L167
 688 0012 00F18404 		add	r4, r0, #132
 689 0016 0025     		movs	r5, #0
 690              	.L163:
 691 0018 2346     		mov	r3, r4
 692 001a 0434     		adds	r4, r4, #4
 693 001c 13F9401C 		ldrsb	r1, [r3, #-64]
 694 0020 1A68     		ldr	r2, [r3]	@ float
 695 0022 F068     		ldr	r0, [r6, #12]
 696 0024 FFF7FEFF 		bl	_ZN4Heat21SetStandbyTemperatureEaf
 697 0028 14F9441C 		ldrsb	r1, [r4, #-68]
 698 002c F068     		ldr	r0, [r6, #12]
 699 002e FFF7FEFF 		bl	_ZN4Heat7StandbyEa
 700 0032 D7F8A430 		ldr	r3, [r7, #164]
 701 0036 0135     		adds	r5, r5, #1
 702 0038 AB42     		cmp	r3, r5
 703 003a EDD8     		bhi	.L163
 704              	.L162:
 705 003c 0023     		movs	r3, #0
 706 003e 87F8CD30 		strb	r3, [r7, #205]
 707 0042 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 708              	.L159:
 709 0044 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 710              	.L168:
 711 0046 00BF     		.align	2
 712              	.L167:
 713 0048 00000000 		.word	reprap
 714              		.size	_ZN4Tool7StandbyEv, .-_ZN4Tool7StandbyEv
 715              		.section	.text._ZN4Tool8ActivateEPS_,"ax",%progbits
 716              		.align	2
 717              		.global	_ZN4Tool8ActivateEPS_
 718              		.thumb
 719              		.thumb_func
 720              		.type	_ZN4Tool8ActivateEPS_, %function
 721              	_ZN4Tool8ActivateEPS_:
 722              		@ args = 0, pretend = 0, frame = 0
 723              		@ frame_needed = 0, uses_anonymous_args = 0
 724 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 725 0002 90F8CD30 		ldrb	r3, [r0, #205]	@ zero_extendqisi2
 726 0006 0746     		mov	r7, r0
 727 0008 43BB     		cbnz	r3, .L169
 728 000a 21B1     		cbz	r1, .L171
 729 000c 8142     		cmp	r1, r0
 730 000e 02D0     		beq	.L171
 731 0010 0846     		mov	r0, r1
 732 0012 FFF7FEFF 		bl	_ZN4Tool7StandbyEv
 733              	.L171:
 734 0016 D7F8A430 		ldr	r3, [r7, #164]
 735 001a DBB1     		cbz	r3, .L173
 736 001c 104D     		ldr	r5, .L178
 737 001e 3C46     		mov	r4, r7
 738 0020 0026     		movs	r6, #0
 739              	.L174:
 740 0022 94F94410 		ldrsb	r1, [r4, #68]
 741 0026 626E     		ldr	r2, [r4, #100]	@ float
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cce6ghqv.s 			page 14


 742 0028 E868     		ldr	r0, [r5, #12]
 743 002a FFF7FEFF 		bl	_ZN4Heat20SetActiveTemperatureEaf
 744 002e 94F94410 		ldrsb	r1, [r4, #68]
 745 0032 D4F88420 		ldr	r2, [r4, #132]	@ float
 746 0036 E868     		ldr	r0, [r5, #12]
 747 0038 FFF7FEFF 		bl	_ZN4Heat21SetStandbyTemperatureEaf
 748 003c 94F94410 		ldrsb	r1, [r4, #68]
 749 0040 E868     		ldr	r0, [r5, #12]
 750 0042 FFF7FEFF 		bl	_ZN4Heat8ActivateEa
 751 0046 D7F8A430 		ldr	r3, [r7, #164]
 752 004a 0136     		adds	r6, r6, #1
 753 004c B342     		cmp	r3, r6
 754 004e 04F10404 		add	r4, r4, #4
 755 0052 E6D8     		bhi	.L174
 756              	.L173:
 757 0054 0123     		movs	r3, #1
 758 0056 87F8CD30 		strb	r3, [r7, #205]
 759 005a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 760              	.L169:
 761 005c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 762              	.L179:
 763 005e 00BF     		.align	2
 764              	.L178:
 765 0060 00000000 		.word	reprap
 766              		.size	_ZN4Tool8ActivateEPS_, .-_ZN4Tool8ActivateEPS_
 767              		.section	.text._ZN4Tool12SetVariablesEPKfS1_,"ax",%progbits
 768              		.align	2
 769              		.global	_ZN4Tool12SetVariablesEPKfS1_
 770              		.thumb
 771              		.thumb_func
 772              		.type	_ZN4Tool12SetVariablesEPKfS1_, %function
 773              	_ZN4Tool12SetVariablesEPKfS1_:
 774              		@ args = 0, pretend = 0, frame = 8
 775              		@ frame_needed = 0, uses_anonymous_args = 0
 776 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 777 0004 2DED028B 		fstmfdd	sp!, {d8}
 778 0008 D0F8A430 		ldr	r3, [r0, #164]
 779 000c 83B0     		sub	sp, sp, #12
 780 000e 8146     		mov	r9, r0
 781 0010 002B     		cmp	r3, #0
 782 0012 49D0     		beq	.L180
 783 0014 DFF8C880 		ldr	r8, .L204+4
 784 0018 DFED308A 		flds	s17, .L204
 785 001c 1746     		mov	r7, r2
 786 001e 0D46     		mov	r5, r1
 787 0020 00F18404 		add	r4, r0, #132
 788 0024 0026     		movs	r6, #0
 789 0026 2AE0     		b	.L195
 790              	.L184:
 791 0028 D8F80C00 		ldr	r0, [r8, #12]
 792 002c 14F9401C 		ldrsb	r1, [r4, #-64]
 793 0030 FFF7FEFF 		bl	_ZNK4Heat19GetTemperatureLimitEa
 794 0034 57ED017A 		flds	s15, [r7, #-4]
 795 0038 D8F82430 		ldr	r3, [r8, #36]
 796 003c 08EE100A 		fmsr	s16, r0
 797 0040 B4EEE78A 		fcmpes	s16, s15
 798 0044 F1EE10FA 		fmstat
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cce6ghqv.s 			page 15


 799 0048 04DD     		ble	.L188
 800 004a 44ED087A 		fsts	s15, [r4, #-32]
 801 004e 83B3     		cbz	r3, .L189
 802 0050 9945     		cmp	r9, r3
 803 0052 2ED0     		beq	.L189
 804              	.L188:
 805 0054 D5ED007A 		flds	s15, [r5]
 806 0058 B4EEE78A 		fcmpes	s16, s15
 807 005c F1EE10FA 		fmstat
 808 0060 04DD     		ble	.L186
 809 0062 C4ED007A 		fsts	s15, [r4]
 810 0066 7BB3     		cbz	r3, .L192
 811 0068 9945     		cmp	r9, r3
 812 006a 2DD0     		beq	.L192
 813              	.L186:
 814 006c D9F8A430 		ldr	r3, [r9, #164]
 815 0070 0136     		adds	r6, r6, #1
 816 0072 B342     		cmp	r3, r6
 817 0074 04F10404 		add	r4, r4, #4
 818 0078 05F10405 		add	r5, r5, #4
 819 007c 14D9     		bls	.L180
 820              	.L195:
 821 007e F7EC017A 		fldmias	r7!, {s15}
 822 0082 F4EEE87A 		fcmpes	s15, s17
 823 0086 F1EE10FA 		fmstat
 824 008a CDD5     		bpl	.L184
 825 008c D5ED007A 		flds	s15, [r5]
 826 0090 F4EEE87A 		fcmpes	s15, s17
 827 0094 F1EE10FA 		fmstat
 828 0098 C6D5     		bpl	.L184
 829 009a D8F80C00 		ldr	r0, [r8, #12]
 830 009e 14F9401C 		ldrsb	r1, [r4, #-64]
 831 00a2 FFF7FEFF 		bl	_ZN4Heat9SwitchOffEa
 832 00a6 E1E7     		b	.L186
 833              	.L180:
 834 00a8 03B0     		add	sp, sp, #12
 835              		@ sp needed
 836 00aa BDEC028B 		fldmfdd	sp!, {d8}
 837 00ae BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 838              	.L189:
 839 00b2 14F9401C 		ldrsb	r1, [r4, #-64]
 840 00b6 D8F80C00 		ldr	r0, [r8, #12]
 841 00ba 0193     		str	r3, [sp, #4]
 842 00bc 17EE902A 		fmrs	r2, s15
 843 00c0 FFF7FEFF 		bl	_ZN4Heat20SetActiveTemperatureEaf
 844 00c4 019B     		ldr	r3, [sp, #4]
 845 00c6 C5E7     		b	.L188
 846              	.L192:
 847 00c8 D8F80C00 		ldr	r0, [r8, #12]
 848 00cc 14F9401C 		ldrsb	r1, [r4, #-64]
 849 00d0 17EE902A 		fmrs	r2, s15
 850 00d4 FFF7FEFF 		bl	_ZN4Heat21SetStandbyTemperatureEaf
 851 00d8 C8E7     		b	.L186
 852              	.L205:
 853 00da 00BF     		.align	2
 854              	.L204:
 855 00dc 008088C3 		.word	-1014464512
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cce6ghqv.s 			page 16


 856 00e0 00000000 		.word	reprap
 857              		.size	_ZN4Tool12SetVariablesEPKfS1_, .-_ZN4Tool12SetVariablesEPKfS1_
 858              		.section	.text._ZNK4Tool12GetVariablesEPfS0_,"ax",%progbits
 859              		.align	2
 860              		.global	_ZNK4Tool12GetVariablesEPfS0_
 861              		.thumb
 862              		.thumb_func
 863              		.type	_ZNK4Tool12GetVariablesEPfS0_, %function
 864              	_ZNK4Tool12GetVariablesEPfS0_:
 865              		@ args = 0, pretend = 0, frame = 0
 866              		@ frame_needed = 0, uses_anonymous_args = 0
 867              		@ link register save eliminated.
 868 0000 10B4     		push	{r4}
 869 0002 D0F8A440 		ldr	r4, [r0, #164]
 870 0006 64B1     		cbz	r4, .L206
 871 0008 02EB8404 		add	r4, r2, r4, lsl #2
 872 000c 8430     		adds	r0, r0, #132
 873              	.L209:
 874 000e 50F8203C 		ldr	r3, [r0, #-32]	@ float
 875 0012 42F8043B 		str	r3, [r2], #4	@ float
 876 0016 50F8043B 		ldr	r3, [r0], #4	@ float
 877 001a 41F8043B 		str	r3, [r1], #4	@ float
 878 001e A242     		cmp	r2, r4
 879 0020 F5D1     		bne	.L209
 880              	.L206:
 881 0022 5DF8044B 		ldr	r4, [sp], #4
 882 0026 7047     		bx	lr
 883              		.size	_ZNK4Tool12GetVariablesEPfS0_, .-_ZNK4Tool12GetVariablesEPfS0_
 884              		.section	.text._ZN4Tool12ToolCanDriveEb,"ax",%progbits
 885              		.align	2
 886              		.global	_ZN4Tool12ToolCanDriveEb
 887              		.thumb
 888              		.thumb_func
 889              		.type	_ZN4Tool12ToolCanDriveEb, %function
 890              	_ZN4Tool12ToolCanDriveEb:
 891              		@ args = 0, pretend = 0, frame = 0
 892              		@ frame_needed = 0, uses_anonymous_args = 0
 893 0000 90F8CE30 		ldrb	r3, [r0, #206]	@ zero_extendqisi2
 894 0004 10B5     		push	{r4, lr}
 895 0006 0446     		mov	r4, r0
 896 0008 23B1     		cbz	r3, .L219
 897              	.L212:
 898 000a 0123     		movs	r3, #1
 899 000c 84F8CF30 		strb	r3, [r4, #207]
 900 0010 0020     		movs	r0, #0
 901 0012 10BD     		pop	{r4, pc}
 902              	.L219:
 903 0014 FFF7FEFF 		bl	_ZNK4Tool27AllHeatersAtHighTemperatureEb
 904 0018 0028     		cmp	r0, #0
 905 001a F6D0     		beq	.L212
 906 001c 10BD     		pop	{r4, pc}
 907              		.size	_ZN4Tool12ToolCanDriveEb, .-_ZN4Tool12ToolCanDriveEb
 908 001e 00BF     		.section	.text._ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_,"ax",%progbits
 909              		.align	2
 910              		.global	_ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_
 911              		.thumb
 912              		.thumb_func
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cce6ghqv.s 			page 17


 913              		.type	_ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_, %function
 914              	_ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_:
 915              		@ args = 0, pretend = 0, frame = 0
 916              		@ frame_needed = 0, uses_anonymous_args = 0
 917              		@ link register save eliminated.
 918 0000 70B4     		push	{r4, r5, r6}
 919 0002 066C     		ldr	r6, [r0, #64]
 920 0004 6EB1     		cbz	r6, .L225
 921 0006 00EB8606 		add	r6, r0, r6, lsl #2
 922 000a 0346     		mov	r3, r0
 923              	.L226:
 924 000c 9C68     		ldr	r4, [r3, #8]
 925 000e 0D88     		ldrh	r5, [r1]
 926 0010 AC42     		cmp	r4, r5
 927 0012 A8BF     		it	ge
 928 0014 0134     		addge	r4, r4, #1
 929 0016 03F10403 		add	r3, r3, #4
 930 001a A8BF     		it	ge
 931 001c 0C80     		strhge	r4, [r1]	@ movhi
 932 001e B342     		cmp	r3, r6
 933 0020 F4D1     		bne	.L226
 934              	.L225:
 935 0022 0C4B     		ldr	r3, .L231
 936 0024 D0F8A450 		ldr	r5, [r0, #164]
 937 0028 DB68     		ldr	r3, [r3, #12]
 938 002a 93F82E40 		ldrb	r4, [r3, #46]	@ zero_extendqisi2
 939 002e 75B1     		cbz	r5, .L220
 940 0030 00EB8505 		add	r5, r0, r5, lsl #2
 941 0034 64B2     		sxtb	r4, r4
 942              	.L228:
 943 0036 436C     		ldr	r3, [r0, #68]
 944 0038 A342     		cmp	r3, r4
 945 003a 00F10400 		add	r0, r0, #4
 946 003e 04D0     		beq	.L227
 947 0040 1188     		ldrh	r1, [r2]
 948 0042 8B42     		cmp	r3, r1
 949 0044 A4BF     		itt	ge
 950 0046 0133     		addge	r3, r3, #1
 951 0048 1380     		strhge	r3, [r2]	@ movhi
 952              	.L227:
 953 004a A842     		cmp	r0, r5
 954 004c F3D1     		bne	.L228
 955              	.L220:
 956 004e 70BC     		pop	{r4, r5, r6}
 957 0050 7047     		bx	lr
 958              	.L232:
 959 0052 00BF     		.align	2
 960              	.L231:
 961 0054 00000000 		.word	reprap
 962              		.size	_ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_, .-_ZNK4Tool28UpdateExtruderAndHeaterCountERtS
 963              		.section	.text._ZN4Tool25DisplayColdExtrudeWarningEv,"ax",%progbits
 964              		.align	2
 965              		.global	_ZN4Tool25DisplayColdExtrudeWarningEv
 966              		.thumb
 967              		.thumb_func
 968              		.type	_ZN4Tool25DisplayColdExtrudeWarningEv, %function
 969              	_ZN4Tool25DisplayColdExtrudeWarningEv:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cce6ghqv.s 			page 18


 970              		@ args = 0, pretend = 0, frame = 0
 971              		@ frame_needed = 0, uses_anonymous_args = 0
 972              		@ link register save eliminated.
 973 0000 0346     		mov	r3, r0
 974 0002 0022     		movs	r2, #0
 975 0004 90F8CF00 		ldrb	r0, [r0, #207]	@ zero_extendqisi2
 976 0008 83F8CF20 		strb	r2, [r3, #207]
 977 000c 7047     		bx	lr
 978              		.size	_ZN4Tool25DisplayColdExtrudeWarningEv, .-_ZN4Tool25DisplayColdExtrudeWarningEv
 979 000e 00BF     		.section	.text._ZN4Tool9DefineMixEPKf,"ax",%progbits
 980              		.align	2
 981              		.global	_ZN4Tool9DefineMixEPKf
 982              		.thumb
 983              		.thumb_func
 984              		.type	_ZN4Tool9DefineMixEPKf, %function
 985              	_ZN4Tool9DefineMixEPKf:
 986              		@ args = 0, pretend = 0, frame = 0
 987              		@ frame_needed = 0, uses_anonymous_args = 0
 988              		@ link register save eliminated.
 989 0000 026C     		ldr	r2, [r0, #64]
 990 0002 42B1     		cbz	r2, .L234
 991 0004 01EB8202 		add	r2, r1, r2, lsl #2
 992 0008 2430     		adds	r0, r0, #36
 993              	.L237:
 994 000a 51F8043B 		ldr	r3, [r1], #4	@ float
 995 000e 40F8043B 		str	r3, [r0], #4	@ float
 996 0012 9142     		cmp	r1, r2
 997 0014 F9D1     		bne	.L237
 998              	.L234:
 999 0016 7047     		bx	lr
 1000              		.size	_ZN4Tool9DefineMixEPKf, .-_ZN4Tool9DefineMixEPKf
 1001              		.global	_ZN4Tool8freelistE
 1002              		.section	.bss._ZN4Tool8freelistE,"aw",%nobits
 1003              		.align	2
 1004              		.set	.LANCHOR0,. + 0
 1005              		.type	_ZN4Tool8freelistE, %object
 1006              		.size	_ZN4Tool8freelistE, 4
 1007              	_ZN4Tool8freelistE:
 1008 0000 00000000 		.space	4
 1009              		.section	.rodata.str1.4,"aMS",%progbits,1
 1010              		.align	2
 1011              	.LC0:
 1012 0000 4572726F 		.ascii	"Error: Tool creation: too many drives\000"
 1012      723A2054 
 1012      6F6F6C20 
 1012      63726561 
 1012      74696F6E 
 1013 0026 0000     		.space	2
 1014              	.LC1:
 1015 0028 4572726F 		.ascii	"Error: Tool creation: too many heaters\000"
 1015      723A2054 
 1015      6F6F6C20 
 1015      63726561 
 1015      74696F6E 
 1016 004f 00       		.space	1
 1017              	.LC2:
 1018 0050 4572726F 		.ascii	"Error: Tool creation: bad drive number\000"
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cce6ghqv.s 			page 19


 1018      723A2054 
 1018      6F6F6C20 
 1018      63726561 
 1018      74696F6E 
 1019 0077 00       		.space	1
 1020              	.LC3:
 1021 0078 4572726F 		.ascii	"Error: Tool creation: bad heater number\000"
 1021      723A2054 
 1021      6F6F6C20 
 1021      63726561 
 1021      74696F6E 
 1022              	.LC4:
 1023 00a0 73656C65 		.ascii	"selected\000"
 1023      63746564 
 1023      00
 1024 00a9 000000   		.space	3
 1025              	.LC5:
 1026 00ac 7374616E 		.ascii	"standby\000"
 1026      64627900 
 1027              	.LC6:
 1028 00b4 546F6F6C 		.ascii	"Tool %d - drives:\000"
 1028      20256420 
 1028      2D206472 
 1028      69766573 
 1028      3A00
 1029 00c6 0000     		.space	2
 1030              	.LC7:
 1031 00c8 3B206865 		.ascii	"; heaters (active/standby temps):\000"
 1031      61746572 
 1031      73202861 
 1031      63746976 
 1031      652F7374 
 1032 00ea 0000     		.space	2
 1033              	.LC8:
 1034 00ec 25632564 		.ascii	"%c%d\000"
 1034      00
 1035 00f1 000000   		.space	3
 1036              	.LC9:
 1037 00f4 3B20786D 		.ascii	"; xmap:\000"
 1037      61703A00 
 1038              	.LC10:
 1039 00fc 25632564 		.ascii	"%c%d (%.1f/%.1f)\000"
 1039      2028252E 
 1039      31662F25 
 1039      2E316629 
 1039      00
 1040 010d 000000   		.space	3
 1041              	.LC11:
 1042 0110 25632563 		.ascii	"%c%c\000"
 1042      00
 1043 0115 000000   		.space	3
 1044              	.LC12:
 1045 0118 3B206661 		.ascii	"; fans:\000"
 1045      6E733A00 
 1046              	.LC13:
 1047 0120 25632575 		.ascii	"%c%u\000"
 1047      00
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cce6ghqv.s 			page 20


 1048 0125 000000   		.space	3
 1049              	.LC14:
 1050 0128 3B207374 		.ascii	"; status: %s\000"
 1050      61747573 
 1050      3A202573 
 1050      00
 1051 0135 000000   		.space	3
 1052              	.LC15:
 1053 0138 4572726F 		.ascii	"Error: Attempt to get maximum feedrate for a tool w"
 1053      723A2041 
 1053      7474656D 
 1053      70742074 
 1053      6F206765 
 1054 016b 69746820 		.ascii	"ith no drives.\012\000"
 1054      6E6F2064 
 1054      72697665 
 1054      732E0A00 
 1055 017b 00       		.space	1
 1056              	.LC16:
 1057 017c 4572726F 		.ascii	"Error: Attempt to get InstantDv for a tool with no "
 1057      723A2041 
 1057      7474656D 
 1057      70742074 
 1057      6F206765 
 1058 01af 64726976 		.ascii	"drives.\012\000"
 1058      65732E0A 
 1058      00
 1059              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1060              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1061              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1062              	_ZL28cpu_irq_prev_interrupt_state:
 1063 0000 00       		.space	1
 1064              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1065              		.align	2
 1066              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1067              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1068              	_ZL32cpu_irq_critical_section_counter:
 1069 0000 00000000 		.space	4
 1070              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
