ARM GAS  C:\Users\George\AppData\Local\Temp\ccm9NHXW.s 			page 1


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
  14              		.file	"Tool.cpp"
  15              		.global	__aeabi_ui2f
  16              		.global	__aeabi_fdiv
  17              		.section	.text._ZN4Tool6CreateEiPljS0_jmm,"ax",%progbits
  18              		.align	2
  19              		.global	_ZN4Tool6CreateEiPljS0_jmm
  20              		.thumb
  21              		.thumb_func
  22              		.type	_ZN4Tool6CreateEiPljS0_jmm, %function
  23              	_ZN4Tool6CreateEiPljS0_jmm:
  24              		@ args = 12, pretend = 0, frame = 8
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
  27 0004 DFF890C1 		ldr	ip, .L36+24
  28 0008 82B0     		sub	sp, sp, #8
  29 000a DCF81040 		ldr	r4, [ip, #16]
  30 000e 062A     		cmp	r2, #6
  31 0010 8146     		mov	r9, r0
  32 0012 8846     		mov	r8, r1
  33 0014 D4F88861 		ldr	r6, [r4, #392]
  34 0018 DDF828A0 		ldr	r10, [sp, #40]
  35 001c 00F29680 		bhi	.L35
  36 0020 BAF1070F 		cmp	r10, #7
  37 0024 00F29A80 		bhi	.L4
  38 0028 92B1     		cbz	r2, .L5
  39 002a 0968     		ldr	r1, [r1]
  40 002c 0029     		cmp	r1, #0
  41 002e 79DB     		blt	.L6
  42 0030 B142     		cmp	r1, r6
  43 0032 77DA     		bge	.L6
  44 0034 A8F10407 		sub	r7, r8, #4
  45 0038 07EB8207 		add	r7, r7, r2, lsl #2
  46 003c 4446     		mov	r4, r8
  47 003e 05E0     		b	.L8
  48              	.L9:
  49 0040 54F8045F 		ldr	r5, [r4, #4]!
  50 0044 002D     		cmp	r5, #0
  51 0046 6DDB     		blt	.L6
  52 0048 B542     		cmp	r5, r6
  53 004a 6BDA     		bge	.L6
  54              	.L8:
  55 004c BC42     		cmp	r4, r7
  56 004e F7D1     		bne	.L9
  57              	.L5:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccm9NHXW.s 			page 2


  58 0050 BAF1000F 		cmp	r10, #0
  59 0054 0DD0     		beq	.L10
  60 0056 1968     		ldr	r1, [r3]
  61 0058 0629     		cmp	r1, #6
  62 005a 6DD8     		bhi	.L11
  63 005c 181F     		subs	r0, r3, #4
  64 005e 00EB8A00 		add	r0, r0, r10, lsl #2
  65 0062 1C46     		mov	r4, r3
  66 0064 03E0     		b	.L13
  67              	.L14:
  68 0066 54F8041F 		ldr	r1, [r4, #4]!
  69 006a 0629     		cmp	r1, #6
  70 006c 64D8     		bhi	.L11
  71              	.L13:
  72 006e 8442     		cmp	r4, r0
  73 0070 F9D1     		bne	.L14
  74              	.L10:
  75 0072 4349     		ldr	r1, .L36
  76 0074 0C68     		ldr	r4, [r1]
  77 0076 002C     		cmp	r4, #0
  78 0078 78D0     		beq	.L15
  79 007a D4F8B400 		ldr	r0, [r4, #180]
  80 007e 0860     		str	r0, [r1]
  81              	.L16:
  82 0080 0B9D     		ldr	r5, [sp, #44]
  83 0082 0021     		movs	r1, #0
  84 0084 C4F8AC50 		str	r5, [r4, #172]
  85 0088 0C9D     		ldr	r5, [sp, #48]
  86 008a 0020     		movs	r0, #0
  87 008c C4F80490 		str	r9, [r4, #4]
  88 0090 A263     		str	r2, [r4, #56]
  89 0092 C4F890A0 		str	r10, [r4, #144]
  90 0096 C4F8B050 		str	r5, [r4, #176]
  91 009a 2160     		str	r1, [r4]	@ float
  92 009c C4F89410 		str	r1, [r4, #148]	@ float
  93 00a0 C4F89810 		str	r1, [r4, #152]	@ float
  94 00a4 C4F89C10 		str	r1, [r4, #156]	@ float
  95 00a8 C4F8A010 		str	r1, [r4, #160]	@ float
  96 00ac C4F8A410 		str	r1, [r4, #164]	@ float
  97 00b0 C4F8A810 		str	r1, [r4, #168]	@ float
  98 00b4 C4F8B400 		str	r0, [r4, #180]
  99 00b8 84F8B900 		strb	r0, [r4, #185]
 100 00bc 84F8BA00 		strb	r0, [r4, #186]
 101 00c0 84F8B800 		strb	r0, [r4, #184]
 102 00c4 84F8BB00 		strb	r0, [r4, #187]
 103 00c8 BAB1     		cbz	r2, .L19
 104 00ca 1046     		mov	r0, r2
 105 00cc 0192     		str	r2, [sp, #4]
 106 00ce 0093     		str	r3, [sp]
 107 00d0 FFF7FEFF 		bl	__aeabi_ui2f
 108 00d4 0146     		mov	r1, r0
 109 00d6 4FF07E50 		mov	r0, #1065353216
 110 00da FFF7FEFF 		bl	__aeabi_fdiv
 111 00de 019A     		ldr	r2, [sp, #4]
 112 00e0 009B     		ldr	r3, [sp]
 113 00e2 A8F10408 		sub	r8, r8, #4
 114 00e6 04EB8202 		add	r2, r4, r2, lsl #2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccm9NHXW.s 			page 3


 115 00ea 2146     		mov	r1, r4
 116              	.L20:
 117 00ec 58F8045F 		ldr	r5, [r8, #4]!
 118 00f0 0431     		adds	r1, r1, #4
 119 00f2 C861     		str	r0, [r1, #28]	@ float
 120 00f4 4D60     		str	r5, [r1, #4]
 121 00f6 9142     		cmp	r1, r2
 122 00f8 F8D1     		bne	.L20
 123              	.L19:
 124 00fa BAF1000F 		cmp	r10, #0
 125 00fe 0DD0     		beq	.L33
 126 0100 2048     		ldr	r0, .L36+4
 127 0102 4FEA8A0A 		lsl	r10, r10, #2
 128 0106 2246     		mov	r2, r4
 129 0108 0021     		movs	r1, #0
 130              	.L21:
 131 010a 5D58     		ldr	r5, [r3, r1]
 132 010c 0431     		adds	r1, r1, #4
 133 010e 5145     		cmp	r1, r10
 134 0110 D563     		str	r5, [r2, #60]
 135 0112 9065     		str	r0, [r2, #88]	@ float
 136 0114 5067     		str	r0, [r2, #116]	@ float
 137 0116 02F10402 		add	r2, r2, #4
 138 011a F6D1     		bne	.L21
 139              	.L33:
 140 011c 2046     		mov	r0, r4
 141 011e 02B0     		add	sp, sp, #8
 142              		@ sp needed
 143 0120 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 144              	.L6:
 145 0124 DCF80000 		ldr	r0, [ip]
 146 0128 0621     		movs	r1, #6
 147 012a 174A     		ldr	r2, .L36+8
 148 012c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 149 0130 0020     		movs	r0, #0
 150              	.L3:
 151 0132 02B0     		add	sp, sp, #8
 152              		@ sp needed
 153 0134 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 154              	.L11:
 155 0138 DCF80000 		ldr	r0, [ip]
 156 013c 0621     		movs	r1, #6
 157 013e 134A     		ldr	r2, .L36+12
 158 0140 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 159 0144 0020     		movs	r0, #0
 160 0146 02B0     		add	sp, sp, #8
 161              		@ sp needed
 162 0148 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 163              	.L35:
 164 014c DCF80000 		ldr	r0, [ip]
 165 0150 0621     		movs	r1, #6
 166 0152 0F4A     		ldr	r2, .L36+16
 167 0154 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 168 0158 0020     		movs	r0, #0
 169 015a EAE7     		b	.L3
 170              	.L4:
 171 015c DCF80000 		ldr	r0, [ip]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccm9NHXW.s 			page 4


 172 0160 0621     		movs	r1, #6
 173 0162 0C4A     		ldr	r2, .L36+20
 174 0164 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 175 0168 0020     		movs	r0, #0
 176 016a E2E7     		b	.L3
 177              	.L15:
 178 016c BC20     		movs	r0, #188
 179 016e 0192     		str	r2, [sp, #4]
 180 0170 0093     		str	r3, [sp]
 181 0172 FFF7FEFF 		bl	_Znwj
 182 0176 009B     		ldr	r3, [sp]
 183 0178 0446     		mov	r4, r0
 184 017a 019A     		ldr	r2, [sp, #4]
 185 017c 80E7     		b	.L16
 186              	.L37:
 187 017e 00BF     		.align	2
 188              	.L36:
 189 0180 00000000 		.word	.LANCHOR0
 190 0184 339388C3 		.word	-1014459597
 191 0188 50000000 		.word	.LC2
 192 018c 78000000 		.word	.LC3
 193 0190 00000000 		.word	.LC0
 194 0194 28000000 		.word	.LC1
 195 0198 00000000 		.word	reprap
 196              		.size	_ZN4Tool6CreateEiPljS0_jmm, .-_ZN4Tool6CreateEiPljS0_jmm
 197              		.section	.text._ZN4Tool6DeleteEPS_,"ax",%progbits
 198              		.align	2
 199              		.global	_ZN4Tool6DeleteEPS_
 200              		.thumb
 201              		.thumb_func
 202              		.type	_ZN4Tool6DeleteEPS_, %function
 203              	_ZN4Tool6DeleteEPS_:
 204              		@ args = 0, pretend = 0, frame = 0
 205              		@ frame_needed = 0, uses_anonymous_args = 0
 206              		@ link register save eliminated.
 207 0000 20B1     		cbz	r0, .L38
 208 0002 034B     		ldr	r3, .L43
 209 0004 1A68     		ldr	r2, [r3]
 210 0006 1860     		str	r0, [r3]
 211 0008 C0F8B420 		str	r2, [r0, #180]
 212              	.L38:
 213 000c 7047     		bx	lr
 214              	.L44:
 215 000e 00BF     		.align	2
 216              	.L43:
 217 0010 00000000 		.word	.LANCHOR0
 218              		.size	_ZN4Tool6DeleteEPS_, .-_ZN4Tool6DeleteEPS_
 219              		.global	__aeabi_f2d
 220              		.section	.text._ZN4Tool5PrintER9StringRef,"ax",%progbits
 221              		.align	2
 222              		.global	_ZN4Tool5PrintER9StringRef
 223              		.thumb
 224              		.thumb_func
 225              		.type	_ZN4Tool5PrintER9StringRef, %function
 226              	_ZN4Tool5PrintER9StringRef:
 227              		@ args = 0, pretend = 0, frame = 0
 228              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccm9NHXW.s 			page 5


 229 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 230 0004 0546     		mov	r5, r0
 231 0006 85B0     		sub	sp, sp, #20
 232 0008 0846     		mov	r0, r1
 233 000a 0F46     		mov	r7, r1
 234 000c 6A68     		ldr	r2, [r5, #4]
 235 000e 4249     		ldr	r1, .L71
 236 0010 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 237 0014 AB6B     		ldr	r3, [r5, #56]
 238 0016 7BB1     		cbz	r3, .L49
 239 0018 2E46     		mov	r6, r5
 240 001a 0024     		movs	r4, #0
 241 001c 2022     		movs	r2, #32
 242 001e 00E0     		b	.L50
 243              	.L66:
 244 0020 2C22     		movs	r2, #44
 245              	.L50:
 246 0022 B368     		ldr	r3, [r6, #8]
 247 0024 3846     		mov	r0, r7
 248 0026 3D49     		ldr	r1, .L71+4
 249 0028 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 250 002c AB6B     		ldr	r3, [r5, #56]
 251 002e 0134     		adds	r4, r4, #1
 252 0030 A342     		cmp	r3, r4
 253 0032 06F10406 		add	r6, r6, #4
 254 0036 F3D8     		bhi	.L66
 255              	.L49:
 256 0038 3846     		mov	r0, r7
 257 003a 3949     		ldr	r1, .L71+8
 258 003c FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 259 0040 D5F89030 		ldr	r3, [r5, #144]
 260 0044 FBB1     		cbz	r3, .L48
 261 0046 2C46     		mov	r4, r5
 262 0048 0026     		movs	r6, #0
 263 004a 4FF02009 		mov	r9, #32
 264 004e 01E0     		b	.L52
 265              	.L67:
 266 0050 4FF02C09 		mov	r9, #44
 267              	.L52:
 268 0054 A06D     		ldr	r0, [r4, #88]	@ float
 269 0056 FFF7FEFF 		bl	__aeabi_f2d
 270 005a D4F83C80 		ldr	r8, [r4, #60]
 271 005e CDE90001 		strd	r0, [sp]
 272 0062 606F     		ldr	r0, [r4, #116]	@ float
 273 0064 FFF7FEFF 		bl	__aeabi_f2d
 274 0068 4346     		mov	r3, r8
 275 006a CDE90201 		strd	r0, [sp, #8]
 276 006e 4A46     		mov	r2, r9
 277 0070 3846     		mov	r0, r7
 278 0072 2C49     		ldr	r1, .L71+12
 279 0074 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 280 0078 D5F89030 		ldr	r3, [r5, #144]
 281 007c 0136     		adds	r6, r6, #1
 282 007e B342     		cmp	r3, r6
 283 0080 04F10404 		add	r4, r4, #4
 284 0084 E4D8     		bhi	.L67
 285              	.L48:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccm9NHXW.s 			page 6


 286 0086 3846     		mov	r0, r7
 287 0088 2749     		ldr	r1, .L71+16
 288 008a FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 289 008e 0024     		movs	r4, #0
 290 0090 2022     		movs	r2, #32
 291 0092 0126     		movs	r6, #1
 292 0094 DFF8AC80 		ldr	r8, .L71+44
 293 0098 02E0     		b	.L51
 294              	.L53:
 295 009a 0134     		adds	r4, r4, #1
 296 009c 062C     		cmp	r4, #6
 297 009e 10D0     		beq	.L68
 298              	.L51:
 299 00a0 06FA04F1 		lsl	r1, r6, r4
 300 00a4 D5F8AC30 		ldr	r3, [r5, #172]
 301 00a8 1942     		tst	r1, r3
 302 00aa F6D0     		beq	.L53
 303 00ac 18F80430 		ldrb	r3, [r8, r4]	@ zero_extendqisi2
 304 00b0 3846     		mov	r0, r7
 305 00b2 1E49     		ldr	r1, .L71+20
 306 00b4 0134     		adds	r4, r4, #1
 307 00b6 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 308 00ba 062C     		cmp	r4, #6
 309 00bc 4FF02C02 		mov	r2, #44
 310 00c0 EED1     		bne	.L51
 311              	.L68:
 312 00c2 3846     		mov	r0, r7
 313 00c4 1A49     		ldr	r1, .L71+24
 314 00c6 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 315 00ca D5F8B030 		ldr	r3, [r5, #176]
 316 00ce DA07     		lsls	r2, r3, #31
 317 00d0 11D4     		bmi	.L69
 318 00d2 9B07     		lsls	r3, r3, #30
 319 00d4 4FF02002 		mov	r2, #32
 320 00d8 18D4     		bmi	.L70
 321              	.L56:
 322 00da 95F8B910 		ldrb	r1, [r5, #185]	@ zero_extendqisi2
 323 00de 154B     		ldr	r3, .L71+28
 324 00e0 154A     		ldr	r2, .L71+32
 325 00e2 3846     		mov	r0, r7
 326 00e4 0029     		cmp	r1, #0
 327 00e6 18BF     		it	ne
 328 00e8 1A46     		movne	r2, r3
 329 00ea 1449     		ldr	r1, .L71+36
 330 00ec 05B0     		add	sp, sp, #20
 331              		@ sp needed
 332 00ee BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 333 00f2 FFF7FEBF 		b	_ZN9StringRef4catfEPKcz
 334              	.L69:
 335 00f6 2022     		movs	r2, #32
 336 00f8 0023     		movs	r3, #0
 337 00fa 3846     		mov	r0, r7
 338 00fc 1049     		ldr	r1, .L71+40
 339 00fe FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 340 0102 D5F8B030 		ldr	r3, [r5, #176]
 341 0106 2C22     		movs	r2, #44
 342 0108 9B07     		lsls	r3, r3, #30
ARM GAS  C:\Users\George\AppData\Local\Temp\ccm9NHXW.s 			page 7


 343 010a E6D5     		bpl	.L56
 344              	.L70:
 345 010c 3846     		mov	r0, r7
 346 010e 0C49     		ldr	r1, .L71+40
 347 0110 0123     		movs	r3, #1
 348 0112 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 349 0116 E0E7     		b	.L56
 350              	.L72:
 351              		.align	2
 352              	.L71:
 353 0118 B4000000 		.word	.LC6
 354 011c EC000000 		.word	.LC8
 355 0120 C8000000 		.word	.LC7
 356 0124 FC000000 		.word	.LC10
 357 0128 F4000000 		.word	.LC9
 358 012c 10010000 		.word	.LC11
 359 0130 18010000 		.word	.LC12
 360 0134 A0000000 		.word	.LC4
 361 0138 AC000000 		.word	.LC5
 362 013c 28010000 		.word	.LC14
 363 0140 20010000 		.word	.LC13
 364 0144 00000000 		.word	_ZN6GCodes11axisLettersE
 365              		.size	_ZN4Tool5PrintER9StringRef, .-_ZN4Tool5PrintER9StringRef
 366              		.global	__aeabi_fcmpgt
 367              		.section	.text._ZNK4Tool11MaxFeedrateEv,"ax",%progbits
 368              		.align	2
 369              		.global	_ZNK4Tool11MaxFeedrateEv
 370              		.thumb
 371              		.thumb_func
 372              		.type	_ZNK4Tool11MaxFeedrateEv, %function
 373              	_ZNK4Tool11MaxFeedrateEv:
 374              		@ args = 0, pretend = 0, frame = 0
 375              		@ frame_needed = 0, uses_anonymous_args = 0
 376 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 377 0004 876B     		ldr	r7, [r0, #56]
 378 0006 124B     		ldr	r3, .L81
 379 0008 CFB1     		cbz	r7, .L80
 380 000a 1A69     		ldr	r2, [r3, #16]
 381 000c D3F80090 		ldr	r9, [r3]
 382 0010 D2F88481 		ldr	r8, [r2, #388]
 383 0014 0446     		mov	r4, r0
 384 0016 0026     		movs	r6, #0
 385 0018 00EB8707 		add	r7, r0, r7, lsl #2
 386              	.L77:
 387 001c A368     		ldr	r3, [r4, #8]
 388 001e 3146     		mov	r1, r6
 389 0020 4344     		add	r3, r3, r8
 390 0022 3A33     		adds	r3, r3, #58
 391 0024 59F82350 		ldr	r5, [r9, r3, lsl #2]	@ float
 392 0028 0434     		adds	r4, r4, #4
 393 002a 2846     		mov	r0, r5
 394 002c FFF7FEFF 		bl	__aeabi_fcmpgt
 395 0030 00B1     		cbz	r0, .L76
 396 0032 2E46     		mov	r6, r5
 397              	.L76:
 398 0034 BC42     		cmp	r4, r7
 399 0036 F1D1     		bne	.L77
ARM GAS  C:\Users\George\AppData\Local\Temp\ccm9NHXW.s 			page 8


 400 0038 3046     		mov	r0, r6
 401 003a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 402              	.L80:
 403 003e 1868     		ldr	r0, [r3]
 404 0040 0621     		movs	r1, #6
 405 0042 044A     		ldr	r2, .L81+4
 406 0044 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 407 0048 4FF07E50 		mov	r0, #1065353216
 408 004c BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 409              	.L82:
 410              		.align	2
 411              	.L81:
 412 0050 00000000 		.word	reprap
 413 0054 38010000 		.word	.LC15
 414              		.size	_ZNK4Tool11MaxFeedrateEv, .-_ZNK4Tool11MaxFeedrateEv
 415              		.global	__aeabi_fcmplt
 416              		.section	.text._ZNK4Tool9InstantDvEv,"ax",%progbits
 417              		.align	2
 418              		.global	_ZNK4Tool9InstantDvEv
 419              		.thumb
 420              		.thumb_func
 421              		.type	_ZNK4Tool9InstantDvEv, %function
 422              	_ZNK4Tool9InstantDvEv:
 423              		@ args = 0, pretend = 0, frame = 0
 424              		@ frame_needed = 0, uses_anonymous_args = 0
 425 0000 836B     		ldr	r3, [r0, #56]
 426 0002 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 427 0006 0746     		mov	r7, r0
 428 0008 E3B1     		cbz	r3, .L90
 429 000a DFF85080 		ldr	r8, .L91+4
 430 000e 124E     		ldr	r6, .L91
 431 0010 D8F81030 		ldr	r3, [r8, #16]
 432 0014 0546     		mov	r5, r0
 433 0016 D3F88491 		ldr	r9, [r3, #388]
 434 001a 0024     		movs	r4, #0
 435              	.L87:
 436 001c A968     		ldr	r1, [r5, #8]
 437 001e D8F80000 		ldr	r0, [r8]
 438 0022 4944     		add	r1, r1, r9
 439 0024 FFF7FEFF 		bl	_ZNK8Platform15ActualInstantDvEj
 440 0028 3146     		mov	r1, r6
 441 002a 8246     		mov	r10, r0
 442 002c FFF7FEFF 		bl	__aeabi_fcmplt
 443 0030 0134     		adds	r4, r4, #1
 444 0032 0435     		adds	r5, r5, #4
 445 0034 00B1     		cbz	r0, .L86
 446 0036 5646     		mov	r6, r10
 447              	.L86:
 448 0038 BB6B     		ldr	r3, [r7, #56]
 449 003a A342     		cmp	r3, r4
 450 003c EED8     		bhi	.L87
 451 003e 3046     		mov	r0, r6
 452 0040 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 453              	.L90:
 454 0044 054B     		ldr	r3, .L91+4
 455 0046 0621     		movs	r1, #6
 456 0048 1868     		ldr	r0, [r3]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccm9NHXW.s 			page 9


 457 004a 054A     		ldr	r2, .L91+8
 458 004c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 459 0050 4FF07E50 		mov	r0, #1065353216
 460 0054 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 461              	.L92:
 462              		.align	2
 463              	.L91:
 464 0058 FFFF7F7F 		.word	2139095039
 465 005c 00000000 		.word	reprap
 466 0060 7C010000 		.word	.LC16
 467              		.size	_ZNK4Tool9InstantDvEv, .-_ZNK4Tool9InstantDvEv
 468              		.section	.text._ZN4Tool20FlagTemperatureFaultEa,"ax",%progbits
 469              		.align	2
 470              		.global	_ZN4Tool20FlagTemperatureFaultEa
 471              		.thumb
 472              		.thumb_func
 473              		.type	_ZN4Tool20FlagTemperatureFaultEa, %function
 474              	_ZN4Tool20FlagTemperatureFaultEa:
 475              		@ args = 0, pretend = 0, frame = 0
 476              		@ frame_needed = 0, uses_anonymous_args = 0
 477              		@ link register save eliminated.
 478 0000 70B4     		push	{r4, r5, r6}
 479 0002 A8B1     		cbz	r0, .L93
 480 0004 0126     		movs	r6, #1
 481              	.L95:
 482 0006 D0F89050 		ldr	r5, [r0, #144]
 483 000a 6DB1     		cbz	r5, .L97
 484 000c C36B     		ldr	r3, [r0, #60]
 485 000e 9942     		cmp	r1, r3
 486 0010 10D0     		beq	.L99
 487 0012 0246     		mov	r2, r0
 488 0014 0023     		movs	r3, #0
 489 0016 02E0     		b	.L100
 490              	.L98:
 491 0018 D46B     		ldr	r4, [r2, #60]
 492 001a 8C42     		cmp	r4, r1
 493 001c 0AD0     		beq	.L99
 494              	.L100:
 495 001e 0133     		adds	r3, r3, #1
 496 0020 AB42     		cmp	r3, r5
 497 0022 02F10402 		add	r2, r2, #4
 498 0026 F7D1     		bne	.L98
 499              	.L97:
 500 0028 D0F8B400 		ldr	r0, [r0, #180]
 501 002c 0028     		cmp	r0, #0
 502 002e EAD1     		bne	.L95
 503              	.L93:
 504 0030 70BC     		pop	{r4, r5, r6}
 505 0032 7047     		bx	lr
 506              	.L99:
 507 0034 80F8BA60 		strb	r6, [r0, #186]
 508 0038 D0F8B400 		ldr	r0, [r0, #180]
 509 003c 0028     		cmp	r0, #0
 510 003e E2D1     		bne	.L95
 511 0040 F6E7     		b	.L93
 512              		.size	_ZN4Tool20FlagTemperatureFaultEa, .-_ZN4Tool20FlagTemperatureFaultEa
 513 0042 00BF     		.section	.text._ZN4Tool21ClearTemperatureFaultEa,"ax",%progbits
ARM GAS  C:\Users\George\AppData\Local\Temp\ccm9NHXW.s 			page 10


 514              		.align	2
 515              		.global	_ZN4Tool21ClearTemperatureFaultEa
 516              		.thumb
 517              		.thumb_func
 518              		.type	_ZN4Tool21ClearTemperatureFaultEa, %function
 519              	_ZN4Tool21ClearTemperatureFaultEa:
 520              		@ args = 0, pretend = 0, frame = 0
 521              		@ frame_needed = 0, uses_anonymous_args = 0
 522              		@ link register save eliminated.
 523 0000 70B4     		push	{r4, r5, r6}
 524 0002 A8B1     		cbz	r0, .L110
 525 0004 0026     		movs	r6, #0
 526              	.L112:
 527 0006 D0F89050 		ldr	r5, [r0, #144]
 528 000a 6DB1     		cbz	r5, .L114
 529 000c C36B     		ldr	r3, [r0, #60]
 530 000e 9942     		cmp	r1, r3
 531 0010 10D0     		beq	.L116
 532 0012 0246     		mov	r2, r0
 533 0014 0023     		movs	r3, #0
 534 0016 02E0     		b	.L117
 535              	.L115:
 536 0018 D46B     		ldr	r4, [r2, #60]
 537 001a 8C42     		cmp	r4, r1
 538 001c 0AD0     		beq	.L116
 539              	.L117:
 540 001e 0133     		adds	r3, r3, #1
 541 0020 AB42     		cmp	r3, r5
 542 0022 02F10402 		add	r2, r2, #4
 543 0026 F7D1     		bne	.L115
 544              	.L114:
 545 0028 D0F8B400 		ldr	r0, [r0, #180]
 546 002c 0028     		cmp	r0, #0
 547 002e EAD1     		bne	.L112
 548              	.L110:
 549 0030 70BC     		pop	{r4, r5, r6}
 550 0032 7047     		bx	lr
 551              	.L116:
 552 0034 80F8BA60 		strb	r6, [r0, #186]
 553 0038 D0F8B400 		ldr	r0, [r0, #180]
 554 003c 0028     		cmp	r0, #0
 555 003e E2D1     		bne	.L112
 556 0040 F6E7     		b	.L110
 557              		.size	_ZN4Tool21ClearTemperatureFaultEa, .-_ZN4Tool21ClearTemperatureFaultEa
 558 0042 00BF     		.section	.text._ZN4Tool19SetTemperatureFaultEa,"ax",%progbits
 559              		.align	2
 560              		.global	_ZN4Tool19SetTemperatureFaultEa
 561              		.thumb
 562              		.thumb_func
 563              		.type	_ZN4Tool19SetTemperatureFaultEa, %function
 564              	_ZN4Tool19SetTemperatureFaultEa:
 565              		@ args = 0, pretend = 0, frame = 0
 566              		@ frame_needed = 0, uses_anonymous_args = 0
 567              		@ link register save eliminated.
 568 0000 30B4     		push	{r4, r5}
 569 0002 D0F89050 		ldr	r5, [r0, #144]
 570 0006 6DB1     		cbz	r5, .L127
ARM GAS  C:\Users\George\AppData\Local\Temp\ccm9NHXW.s 			page 11


 571 0008 C36B     		ldr	r3, [r0, #60]
 572 000a 9942     		cmp	r1, r3
 573 000c 0CD0     		beq	.L129
 574 000e 0246     		mov	r2, r0
 575 0010 0023     		movs	r3, #0
 576 0012 02E0     		b	.L131
 577              	.L132:
 578 0014 D46B     		ldr	r4, [r2, #60]
 579 0016 8C42     		cmp	r4, r1
 580 0018 06D0     		beq	.L129
 581              	.L131:
 582 001a 0133     		adds	r3, r3, #1
 583 001c AB42     		cmp	r3, r5
 584 001e 02F10402 		add	r2, r2, #4
 585 0022 F7D1     		bne	.L132
 586              	.L127:
 587 0024 30BC     		pop	{r4, r5}
 588 0026 7047     		bx	lr
 589              	.L129:
 590 0028 0123     		movs	r3, #1
 591 002a 80F8BA30 		strb	r3, [r0, #186]
 592 002e 30BC     		pop	{r4, r5}
 593 0030 7047     		bx	lr
 594              		.size	_ZN4Tool19SetTemperatureFaultEa, .-_ZN4Tool19SetTemperatureFaultEa
 595 0032 00BF     		.section	.text._ZN4Tool21ResetTemperatureFaultEa,"ax",%progbits
 596              		.align	2
 597              		.global	_ZN4Tool21ResetTemperatureFaultEa
 598              		.thumb
 599              		.thumb_func
 600              		.type	_ZN4Tool21ResetTemperatureFaultEa, %function
 601              	_ZN4Tool21ResetTemperatureFaultEa:
 602              		@ args = 0, pretend = 0, frame = 0
 603              		@ frame_needed = 0, uses_anonymous_args = 0
 604              		@ link register save eliminated.
 605 0000 30B4     		push	{r4, r5}
 606 0002 D0F89050 		ldr	r5, [r0, #144]
 607 0006 6DB1     		cbz	r5, .L137
 608 0008 C36B     		ldr	r3, [r0, #60]
 609 000a 9942     		cmp	r1, r3
 610 000c 0CD0     		beq	.L139
 611 000e 0246     		mov	r2, r0
 612 0010 0023     		movs	r3, #0
 613 0012 02E0     		b	.L141
 614              	.L142:
 615 0014 D46B     		ldr	r4, [r2, #60]
 616 0016 8C42     		cmp	r4, r1
 617 0018 06D0     		beq	.L139
 618              	.L141:
 619 001a 0133     		adds	r3, r3, #1
 620 001c AB42     		cmp	r3, r5
 621 001e 02F10402 		add	r2, r2, #4
 622 0022 F7D1     		bne	.L142
 623              	.L137:
 624 0024 30BC     		pop	{r4, r5}
 625 0026 7047     		bx	lr
 626              	.L139:
 627 0028 0023     		movs	r3, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccm9NHXW.s 			page 12


 628 002a 80F8BA30 		strb	r3, [r0, #186]
 629 002e 30BC     		pop	{r4, r5}
 630 0030 7047     		bx	lr
 631              		.size	_ZN4Tool21ResetTemperatureFaultEa, .-_ZN4Tool21ResetTemperatureFaultEa
 632 0032 00BF     		.section	.text._ZNK4Tool27AllHeatersAtHighTemperatureEb,"ax",%progbits
 633              		.align	2
 634              		.global	_ZNK4Tool27AllHeatersAtHighTemperatureEb
 635              		.thumb
 636              		.thumb_func
 637              		.type	_ZNK4Tool27AllHeatersAtHighTemperatureEb, %function
 638              	_ZNK4Tool27AllHeatersAtHighTemperatureEb:
 639              		@ args = 0, pretend = 0, frame = 0
 640              		@ frame_needed = 0, uses_anonymous_args = 0
 641 0000 D0F89030 		ldr	r3, [r0, #144]
 642 0004 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 643 0008 8046     		mov	r8, r0
 644 000a 8A46     		mov	r10, r1
 645 000c 13B3     		cbz	r3, .L152
 646 000e DFF85490 		ldr	r9, .L158+8
 647 0012 0446     		mov	r4, r0
 648 0014 0025     		movs	r5, #0
 649 0016 09E0     		b	.L153
 650              	.L157:
 651 0018 FFF7FEFF 		bl	__aeabi_fcmplt
 652 001c 10B1     		cbz	r0, .L150
 653 001e BAF1000F 		cmp	r10, #0
 654 0022 14D1     		bne	.L154
 655              	.L150:
 656 0024 D8F89030 		ldr	r3, [r8, #144]
 657 0028 AB42     		cmp	r3, r5
 658 002a 13D9     		bls	.L152
 659              	.L153:
 660 002c 94F93C10 		ldrsb	r1, [r4, #60]
 661 0030 D9F80C00 		ldr	r0, [r9, #12]
 662 0034 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 663 0038 0849     		ldr	r1, .L158
 664 003a 0746     		mov	r7, r0
 665 003c FFF7FEFF 		bl	__aeabi_fcmplt
 666 0040 0646     		mov	r6, r0
 667 0042 0135     		adds	r5, r5, #1
 668 0044 0434     		adds	r4, r4, #4
 669 0046 0649     		ldr	r1, .L158+4
 670 0048 3846     		mov	r0, r7
 671 004a 002E     		cmp	r6, #0
 672 004c E4D0     		beq	.L157
 673              	.L154:
 674 004e 0020     		movs	r0, #0
 675 0050 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 676              	.L152:
 677 0054 0120     		movs	r0, #1
 678 0056 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 679              	.L159:
 680 005a 00BF     		.align	2
 681              	.L158:
 682 005c 0000B442 		.word	1119092736
 683 0060 00002043 		.word	1126170624
 684 0064 00000000 		.word	reprap
ARM GAS  C:\Users\George\AppData\Local\Temp\ccm9NHXW.s 			page 13


 685              		.size	_ZNK4Tool27AllHeatersAtHighTemperatureEb, .-_ZNK4Tool27AllHeatersAtHighTemperatureEb
 686              		.section	.text._ZN4Tool7StandbyEv,"ax",%progbits
 687              		.align	2
 688              		.global	_ZN4Tool7StandbyEv
 689              		.thumb
 690              		.thumb_func
 691              		.type	_ZN4Tool7StandbyEv, %function
 692              	_ZN4Tool7StandbyEv:
 693              		@ args = 0, pretend = 0, frame = 0
 694              		@ frame_needed = 0, uses_anonymous_args = 0
 695 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 696 0002 90F8B930 		ldrb	r3, [r0, #185]	@ zero_extendqisi2
 697 0006 0746     		mov	r7, r0
 698 0008 DBB1     		cbz	r3, .L160
 699 000a D0F89030 		ldr	r3, [r0, #144]
 700 000e A3B1     		cbz	r3, .L163
 701 0010 0C4E     		ldr	r6, .L168
 702 0012 0446     		mov	r4, r0
 703 0014 0025     		movs	r5, #0
 704              	.L164:
 705 0016 94F93C10 		ldrsb	r1, [r4, #60]
 706 001a 626F     		ldr	r2, [r4, #116]	@ float
 707 001c F068     		ldr	r0, [r6, #12]
 708 001e FFF7FEFF 		bl	_ZN4Heat21SetStandbyTemperatureEaf
 709 0022 94F93C10 		ldrsb	r1, [r4, #60]
 710 0026 F068     		ldr	r0, [r6, #12]
 711 0028 FFF7FEFF 		bl	_ZN4Heat7StandbyEa
 712 002c D7F89030 		ldr	r3, [r7, #144]
 713 0030 0135     		adds	r5, r5, #1
 714 0032 AB42     		cmp	r3, r5
 715 0034 04F10404 		add	r4, r4, #4
 716 0038 EDD8     		bhi	.L164
 717              	.L163:
 718 003a 0023     		movs	r3, #0
 719 003c 87F8B930 		strb	r3, [r7, #185]
 720 0040 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 721              	.L160:
 722 0042 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 723              	.L169:
 724              		.align	2
 725              	.L168:
 726 0044 00000000 		.word	reprap
 727              		.size	_ZN4Tool7StandbyEv, .-_ZN4Tool7StandbyEv
 728              		.section	.text._ZN4Tool8ActivateEPS_,"ax",%progbits
 729              		.align	2
 730              		.global	_ZN4Tool8ActivateEPS_
 731              		.thumb
 732              		.thumb_func
 733              		.type	_ZN4Tool8ActivateEPS_, %function
 734              	_ZN4Tool8ActivateEPS_:
 735              		@ args = 0, pretend = 0, frame = 0
 736              		@ frame_needed = 0, uses_anonymous_args = 0
 737 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 738 0002 90F8B930 		ldrb	r3, [r0, #185]	@ zero_extendqisi2
 739 0006 0746     		mov	r7, r0
 740 0008 3BBB     		cbnz	r3, .L170
 741 000a 21B1     		cbz	r1, .L172
ARM GAS  C:\Users\George\AppData\Local\Temp\ccm9NHXW.s 			page 14


 742 000c 8142     		cmp	r1, r0
 743 000e 02D0     		beq	.L172
 744 0010 0846     		mov	r0, r1
 745 0012 FFF7FEFF 		bl	_ZN4Tool7StandbyEv
 746              	.L172:
 747 0016 D7F89030 		ldr	r3, [r7, #144]
 748 001a D3B1     		cbz	r3, .L174
 749 001c 0F4D     		ldr	r5, .L179
 750 001e 3C46     		mov	r4, r7
 751 0020 0026     		movs	r6, #0
 752              	.L175:
 753 0022 94F93C10 		ldrsb	r1, [r4, #60]
 754 0026 A26D     		ldr	r2, [r4, #88]	@ float
 755 0028 E868     		ldr	r0, [r5, #12]
 756 002a FFF7FEFF 		bl	_ZN4Heat20SetActiveTemperatureEaf
 757 002e 94F93C10 		ldrsb	r1, [r4, #60]
 758 0032 626F     		ldr	r2, [r4, #116]	@ float
 759 0034 E868     		ldr	r0, [r5, #12]
 760 0036 FFF7FEFF 		bl	_ZN4Heat21SetStandbyTemperatureEaf
 761 003a 94F93C10 		ldrsb	r1, [r4, #60]
 762 003e E868     		ldr	r0, [r5, #12]
 763 0040 FFF7FEFF 		bl	_ZN4Heat8ActivateEa
 764 0044 D7F89030 		ldr	r3, [r7, #144]
 765 0048 0136     		adds	r6, r6, #1
 766 004a B342     		cmp	r3, r6
 767 004c 04F10404 		add	r4, r4, #4
 768 0050 E7D8     		bhi	.L175
 769              	.L174:
 770 0052 0123     		movs	r3, #1
 771 0054 87F8B930 		strb	r3, [r7, #185]
 772 0058 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 773              	.L170:
 774 005a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 775              	.L180:
 776              		.align	2
 777              	.L179:
 778 005c 00000000 		.word	reprap
 779              		.size	_ZN4Tool8ActivateEPS_, .-_ZN4Tool8ActivateEPS_
 780              		.section	.text._ZN4Tool12SetVariablesEPKfS1_,"ax",%progbits
 781              		.align	2
 782              		.global	_ZN4Tool12SetVariablesEPKfS1_
 783              		.thumb
 784              		.thumb_func
 785              		.type	_ZN4Tool12SetVariablesEPKfS1_, %function
 786              	_ZN4Tool12SetVariablesEPKfS1_:
 787              		@ args = 0, pretend = 0, frame = 8
 788              		@ frame_needed = 0, uses_anonymous_args = 0
 789 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 790 0004 D0F89030 		ldr	r3, [r0, #144]
 791 0008 83B0     		sub	sp, sp, #12
 792 000a 8246     		mov	r10, r0
 793 000c 002B     		cmp	r3, #0
 794 000e 48D0     		beq	.L181
 795 0010 DFF8B490 		ldr	r9, .L205+4
 796 0014 1746     		mov	r7, r2
 797 0016 0D46     		mov	r5, r1
 798 0018 0446     		mov	r4, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccm9NHXW.s 			page 15


 799 001a 0026     		movs	r6, #0
 800 001c 2DE0     		b	.L196
 801              	.L185:
 802 001e 94F93C10 		ldrsb	r1, [r4, #60]
 803 0022 D9F80C00 		ldr	r0, [r9, #12]
 804 0026 FFF7FEFF 		bl	_ZNK4Heat19GetTemperatureLimitEa
 805 002a 57F8042C 		ldr	r2, [r7, #-4]	@ float
 806 002e 8346     		mov	fp, r0
 807 0030 1146     		mov	r1, r2
 808 0032 0192     		str	r2, [sp, #4]
 809 0034 FFF7FEFF 		bl	__aeabi_fcmpgt
 810 0038 D9F82480 		ldr	r8, [r9, #36]
 811 003c 019A     		ldr	r2, [sp, #4]
 812 003e 28B1     		cbz	r0, .L189
 813 0040 A265     		str	r2, [r4, #88]	@ float
 814 0042 B8F1000F 		cmp	r8, #0
 815 0046 2FD0     		beq	.L190
 816 0048 C245     		cmp	r10, r8
 817 004a 2DD0     		beq	.L190
 818              	.L189:
 819 004c 2A68     		ldr	r2, [r5]	@ float
 820 004e 5846     		mov	r0, fp
 821 0050 1146     		mov	r1, r2
 822 0052 0192     		str	r2, [sp, #4]
 823 0054 FFF7FEFF 		bl	__aeabi_fcmpgt
 824 0058 019A     		ldr	r2, [sp, #4]
 825 005a 28B1     		cbz	r0, .L187
 826 005c 6267     		str	r2, [r4, #116]	@ float
 827 005e B8F1000F 		cmp	r8, #0
 828 0062 28D0     		beq	.L193
 829 0064 C245     		cmp	r10, r8
 830 0066 26D0     		beq	.L193
 831              	.L187:
 832 0068 DAF89030 		ldr	r3, [r10, #144]
 833 006c 0136     		adds	r6, r6, #1
 834 006e B342     		cmp	r3, r6
 835 0070 04F10404 		add	r4, r4, #4
 836 0074 05F10405 		add	r5, r5, #4
 837 0078 13D9     		bls	.L181
 838              	.L196:
 839 007a 57F8040B 		ldr	r0, [r7], #4	@ float
 840 007e 1149     		ldr	r1, .L205
 841 0080 FFF7FEFF 		bl	__aeabi_fcmplt
 842 0084 0028     		cmp	r0, #0
 843 0086 CAD0     		beq	.L185
 844 0088 2868     		ldr	r0, [r5]	@ float
 845 008a 0E49     		ldr	r1, .L205
 846 008c FFF7FEFF 		bl	__aeabi_fcmplt
 847 0090 0028     		cmp	r0, #0
 848 0092 C4D0     		beq	.L185
 849 0094 D9F80C00 		ldr	r0, [r9, #12]
 850 0098 94F93C10 		ldrsb	r1, [r4, #60]
 851 009c FFF7FEFF 		bl	_ZN4Heat9SwitchOffEa
 852 00a0 E2E7     		b	.L187
 853              	.L181:
 854 00a2 03B0     		add	sp, sp, #12
 855              		@ sp needed
ARM GAS  C:\Users\George\AppData\Local\Temp\ccm9NHXW.s 			page 16


 856 00a4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 857              	.L190:
 858 00a8 D9F80C00 		ldr	r0, [r9, #12]
 859 00ac 94F93C10 		ldrsb	r1, [r4, #60]
 860 00b0 FFF7FEFF 		bl	_ZN4Heat20SetActiveTemperatureEaf
 861 00b4 CAE7     		b	.L189
 862              	.L193:
 863 00b6 D9F80C00 		ldr	r0, [r9, #12]
 864 00ba 94F93C10 		ldrsb	r1, [r4, #60]
 865 00be FFF7FEFF 		bl	_ZN4Heat21SetStandbyTemperatureEaf
 866 00c2 D1E7     		b	.L187
 867              	.L206:
 868              		.align	2
 869              	.L205:
 870 00c4 008088C3 		.word	-1014464512
 871 00c8 00000000 		.word	reprap
 872              		.size	_ZN4Tool12SetVariablesEPKfS1_, .-_ZN4Tool12SetVariablesEPKfS1_
 873              		.section	.text._ZNK4Tool12GetVariablesEPfS0_,"ax",%progbits
 874              		.align	2
 875              		.global	_ZNK4Tool12GetVariablesEPfS0_
 876              		.thumb
 877              		.thumb_func
 878              		.type	_ZNK4Tool12GetVariablesEPfS0_, %function
 879              	_ZNK4Tool12GetVariablesEPfS0_:
 880              		@ args = 0, pretend = 0, frame = 0
 881              		@ frame_needed = 0, uses_anonymous_args = 0
 882              		@ link register save eliminated.
 883 0000 30B4     		push	{r4, r5}
 884 0002 D0F89050 		ldr	r5, [r0, #144]
 885 0006 4DB1     		cbz	r5, .L207
 886 0008 AD00     		lsls	r5, r5, #2
 887 000a 0023     		movs	r3, #0
 888              	.L210:
 889 000c 846D     		ldr	r4, [r0, #88]	@ float
 890 000e 0430     		adds	r0, r0, #4
 891 0010 D450     		str	r4, [r2, r3]	@ float
 892 0012 046F     		ldr	r4, [r0, #112]	@ float
 893 0014 CC50     		str	r4, [r1, r3]	@ float
 894 0016 0433     		adds	r3, r3, #4
 895 0018 AB42     		cmp	r3, r5
 896 001a F7D1     		bne	.L210
 897              	.L207:
 898 001c 30BC     		pop	{r4, r5}
 899 001e 7047     		bx	lr
 900              		.size	_ZNK4Tool12GetVariablesEPfS0_, .-_ZNK4Tool12GetVariablesEPfS0_
 901              		.section	.text._ZN4Tool12ToolCanDriveEb,"ax",%progbits
 902              		.align	2
 903              		.global	_ZN4Tool12ToolCanDriveEb
 904              		.thumb
 905              		.thumb_func
 906              		.type	_ZN4Tool12ToolCanDriveEb, %function
 907              	_ZN4Tool12ToolCanDriveEb:
 908              		@ args = 0, pretend = 0, frame = 0
 909              		@ frame_needed = 0, uses_anonymous_args = 0
 910 0000 90F8BA30 		ldrb	r3, [r0, #186]	@ zero_extendqisi2
 911 0004 10B5     		push	{r4, lr}
 912 0006 0446     		mov	r4, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccm9NHXW.s 			page 17


 913 0008 23B1     		cbz	r3, .L220
 914              	.L213:
 915 000a 0123     		movs	r3, #1
 916 000c 84F8BB30 		strb	r3, [r4, #187]
 917 0010 0020     		movs	r0, #0
 918 0012 10BD     		pop	{r4, pc}
 919              	.L220:
 920 0014 FFF7FEFF 		bl	_ZNK4Tool27AllHeatersAtHighTemperatureEb
 921 0018 0028     		cmp	r0, #0
 922 001a F6D0     		beq	.L213
 923 001c 10BD     		pop	{r4, pc}
 924              		.size	_ZN4Tool12ToolCanDriveEb, .-_ZN4Tool12ToolCanDriveEb
 925 001e 00BF     		.section	.text._ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_,"ax",%progbits
 926              		.align	2
 927              		.global	_ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_
 928              		.thumb
 929              		.thumb_func
 930              		.type	_ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_, %function
 931              	_ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_:
 932              		@ args = 0, pretend = 0, frame = 0
 933              		@ frame_needed = 0, uses_anonymous_args = 0
 934              		@ link register save eliminated.
 935 0000 70B4     		push	{r4, r5, r6}
 936 0002 866B     		ldr	r6, [r0, #56]
 937 0004 5EB1     		cbz	r6, .L226
 938 0006 00EB8606 		add	r6, r0, r6, lsl #2
 939 000a 0346     		mov	r3, r0
 940              	.L227:
 941 000c 9C68     		ldr	r4, [r3, #8]
 942 000e 0D88     		ldrh	r5, [r1]
 943 0010 0433     		adds	r3, r3, #4
 944 0012 AC42     		cmp	r4, r5
 945 0014 A4BF     		itt	ge
 946 0016 0134     		addge	r4, r4, #1
 947 0018 0C80     		strhge	r4, [r1]	@ movhi
 948 001a B342     		cmp	r3, r6
 949 001c F6D1     		bne	.L227
 950              	.L226:
 951 001e 0B4B     		ldr	r3, .L232
 952 0020 D0F89050 		ldr	r5, [r0, #144]
 953 0024 DB68     		ldr	r3, [r3, #12]
 954 0026 93F82A40 		ldrb	r4, [r3, #42]	@ zero_extendqisi2
 955 002a 6DB1     		cbz	r5, .L221
 956 002c 00EB8505 		add	r5, r0, r5, lsl #2
 957 0030 64B2     		sxtb	r4, r4
 958              	.L229:
 959 0032 C36B     		ldr	r3, [r0, #60]
 960 0034 0430     		adds	r0, r0, #4
 961 0036 A342     		cmp	r3, r4
 962 0038 04D0     		beq	.L228
 963 003a 1188     		ldrh	r1, [r2]
 964 003c 5E1C     		adds	r6, r3, #1
 965 003e 8B42     		cmp	r3, r1
 966 0040 A8BF     		it	ge
 967 0042 1680     		strhge	r6, [r2]	@ movhi
 968              	.L228:
 969 0044 A842     		cmp	r0, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\ccm9NHXW.s 			page 18


 970 0046 F4D1     		bne	.L229
 971              	.L221:
 972 0048 70BC     		pop	{r4, r5, r6}
 973 004a 7047     		bx	lr
 974              	.L233:
 975              		.align	2
 976              	.L232:
 977 004c 00000000 		.word	reprap
 978              		.size	_ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_, .-_ZNK4Tool28UpdateExtruderAndHeaterCountERtS
 979              		.section	.text._ZN4Tool25DisplayColdExtrudeWarningEv,"ax",%progbits
 980              		.align	2
 981              		.global	_ZN4Tool25DisplayColdExtrudeWarningEv
 982              		.thumb
 983              		.thumb_func
 984              		.type	_ZN4Tool25DisplayColdExtrudeWarningEv, %function
 985              	_ZN4Tool25DisplayColdExtrudeWarningEv:
 986              		@ args = 0, pretend = 0, frame = 0
 987              		@ frame_needed = 0, uses_anonymous_args = 0
 988              		@ link register save eliminated.
 989 0000 0346     		mov	r3, r0
 990 0002 0022     		movs	r2, #0
 991 0004 90F8BB00 		ldrb	r0, [r0, #187]	@ zero_extendqisi2
 992 0008 83F8BB20 		strb	r2, [r3, #187]
 993 000c 7047     		bx	lr
 994              		.size	_ZN4Tool25DisplayColdExtrudeWarningEv, .-_ZN4Tool25DisplayColdExtrudeWarningEv
 995 000e 00BF     		.section	.text._ZN4Tool9DefineMixEPKf,"ax",%progbits
 996              		.align	2
 997              		.global	_ZN4Tool9DefineMixEPKf
 998              		.thumb
 999              		.thumb_func
 1000              		.type	_ZN4Tool9DefineMixEPKf, %function
 1001              	_ZN4Tool9DefineMixEPKf:
 1002              		@ args = 0, pretend = 0, frame = 0
 1003              		@ frame_needed = 0, uses_anonymous_args = 0
 1004              		@ link register save eliminated.
 1005 0000 30B4     		push	{r4, r5}
 1006 0002 856B     		ldr	r5, [r0, #56]
 1007 0004 3DB1     		cbz	r5, .L235
 1008 0006 AD00     		lsls	r5, r5, #2
 1009 0008 0023     		movs	r3, #0
 1010              	.L238:
 1011 000a CC58     		ldr	r4, [r1, r3]	@ float
 1012 000c C218     		adds	r2, r0, r3
 1013 000e 0433     		adds	r3, r3, #4
 1014 0010 AB42     		cmp	r3, r5
 1015 0012 1462     		str	r4, [r2, #32]	@ float
 1016 0014 F9D1     		bne	.L238
 1017              	.L235:
 1018 0016 30BC     		pop	{r4, r5}
 1019 0018 7047     		bx	lr
 1020              		.size	_ZN4Tool9DefineMixEPKf, .-_ZN4Tool9DefineMixEPKf
 1021              		.global	_ZN4Tool8freelistE
 1022 001a 00BF     		.section	.bss._ZN4Tool8freelistE,"aw",%nobits
 1023              		.align	2
 1024              		.set	.LANCHOR0,. + 0
 1025              		.type	_ZN4Tool8freelistE, %object
 1026              		.size	_ZN4Tool8freelistE, 4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccm9NHXW.s 			page 19


 1027              	_ZN4Tool8freelistE:
 1028 0000 00000000 		.space	4
 1029              		.section	.rodata.str1.4,"aMS",%progbits,1
 1030              		.align	2
 1031              	.LC0:
 1032 0000 4572726F 		.ascii	"Error: Tool creation: too many drives\000"
 1032      723A2054 
 1032      6F6F6C20 
 1032      63726561 
 1032      74696F6E 
 1033 0026 0000     		.space	2
 1034              	.LC1:
 1035 0028 4572726F 		.ascii	"Error: Tool creation: too many heaters\000"
 1035      723A2054 
 1035      6F6F6C20 
 1035      63726561 
 1035      74696F6E 
 1036 004f 00       		.space	1
 1037              	.LC2:
 1038 0050 4572726F 		.ascii	"Error: Tool creation: bad drive number\000"
 1038      723A2054 
 1038      6F6F6C20 
 1038      63726561 
 1038      74696F6E 
 1039 0077 00       		.space	1
 1040              	.LC3:
 1041 0078 4572726F 		.ascii	"Error: Tool creation: bad heater number\000"
 1041      723A2054 
 1041      6F6F6C20 
 1041      63726561 
 1041      74696F6E 
 1042              	.LC4:
 1043 00a0 73656C65 		.ascii	"selected\000"
 1043      63746564 
 1043      00
 1044 00a9 000000   		.space	3
 1045              	.LC5:
 1046 00ac 7374616E 		.ascii	"standby\000"
 1046      64627900 
 1047              	.LC6:
 1048 00b4 546F6F6C 		.ascii	"Tool %d - drives:\000"
 1048      20256420 
 1048      2D206472 
 1048      69766573 
 1048      3A00
 1049 00c6 0000     		.space	2
 1050              	.LC7:
 1051 00c8 3B206865 		.ascii	"; heaters (active/standby temps):\000"
 1051      61746572 
 1051      73202861 
 1051      63746976 
 1051      652F7374 
 1052 00ea 0000     		.space	2
 1053              	.LC8:
 1054 00ec 25632564 		.ascii	"%c%d\000"
 1054      00
 1055 00f1 000000   		.space	3
ARM GAS  C:\Users\George\AppData\Local\Temp\ccm9NHXW.s 			page 20


 1056              	.LC9:
 1057 00f4 3B20786D 		.ascii	"; xmap:\000"
 1057      61703A00 
 1058              	.LC10:
 1059 00fc 25632564 		.ascii	"%c%d (%.1f/%.1f)\000"
 1059      2028252E 
 1059      31662F25 
 1059      2E316629 
 1059      00
 1060 010d 000000   		.space	3
 1061              	.LC11:
 1062 0110 25632563 		.ascii	"%c%c\000"
 1062      00
 1063 0115 000000   		.space	3
 1064              	.LC12:
 1065 0118 3B206661 		.ascii	"; fans:\000"
 1065      6E733A00 
 1066              	.LC13:
 1067 0120 25632575 		.ascii	"%c%u\000"
 1067      00
 1068 0125 000000   		.space	3
 1069              	.LC14:
 1070 0128 3B207374 		.ascii	"; status: %s\000"
 1070      61747573 
 1070      3A202573 
 1070      00
 1071 0135 000000   		.space	3
 1072              	.LC15:
 1073 0138 4572726F 		.ascii	"Error: Attempt to get maximum feedrate for a tool w"
 1073      723A2041 
 1073      7474656D 
 1073      70742074 
 1073      6F206765 
 1074 016b 69746820 		.ascii	"ith no drives.\012\000"
 1074      6E6F2064 
 1074      72697665 
 1074      732E0A00 
 1075 017b 00       		.space	1
 1076              	.LC16:
 1077 017c 4572726F 		.ascii	"Error: Attempt to get InstantDv for a tool with no "
 1077      723A2041 
 1077      7474656D 
 1077      70742074 
 1077      6F206765 
 1078 01af 64726976 		.ascii	"drives.\012\000"
 1078      65732E0A 
 1078      00
 1079              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1080              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1081              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1082              	_ZL28cpu_irq_prev_interrupt_state:
 1083 0000 00       		.space	1
 1084              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1085              		.align	2
 1086              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1087              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1088              	_ZL32cpu_irq_critical_section_counter:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccm9NHXW.s 			page 21


 1089 0000 00000000 		.space	4
 1090              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
