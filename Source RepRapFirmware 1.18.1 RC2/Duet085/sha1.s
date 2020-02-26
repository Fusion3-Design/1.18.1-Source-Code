ARM GAS  C:\Users\George\AppData\Local\Temp\ccW2WcMc.s 			page 1


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
  14              		.file	"sha1.c"
  15              		.section	.text.SHA1Reset,"ax",%progbits
  16              		.align	2
  17              		.global	SHA1Reset
  18              		.thumb
  19              		.thumb_func
  20              		.type	SHA1Reset, %function
  21              	SHA1Reset:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 70B4     		push	{r4, r5, r6}
  26 0002 0A49     		ldr	r1, .L2
  27 0004 0A4E     		ldr	r6, .L2+4
  28 0006 0B4D     		ldr	r5, .L2+8
  29 0008 0B4C     		ldr	r4, .L2+12
  30 000a 0C4A     		ldr	r2, .L2+16
  31 000c 0023     		movs	r3, #0
  32 000e 0660     		str	r6, [r0]
  33 0010 4560     		str	r5, [r0, #4]
  34 0012 8460     		str	r4, [r0, #8]
  35 0014 C160     		str	r1, [r0, #12]
  36 0016 0261     		str	r2, [r0, #16]
  37 0018 4361     		str	r3, [r0, #20]
  38 001a 8361     		str	r3, [r0, #24]
  39 001c C365     		str	r3, [r0, #92]
  40 001e 80F86030 		strb	r3, [r0, #96]
  41 0022 80F86130 		strb	r3, [r0, #97]
  42 0026 70BC     		pop	{r4, r5, r6}
  43 0028 7047     		bx	lr
  44              	.L3:
  45 002a 00BF     		.align	2
  46              	.L2:
  47 002c 76543210 		.word	271733878
  48 0030 01234567 		.word	1732584193
  49 0034 89ABCDEF 		.word	-271733879
  50 0038 FEDCBA98 		.word	-1732584194
  51 003c F0E1D2C3 		.word	-1009589776
  52              		.size	SHA1Reset, .-SHA1Reset
  53              		.section	.text.SHA1ProcessMessageBlock,"ax",%progbits
  54              		.align	2
  55              		.global	SHA1ProcessMessageBlock
  56              		.thumb
  57              		.thumb_func
ARM GAS  C:\Users\George\AppData\Local\Temp\ccW2WcMc.s 			page 2


  58              		.type	SHA1ProcessMessageBlock, %function
  59              	SHA1ProcessMessageBlock:
  60              		@ args = 0, pretend = 0, frame = 336
  61              		@ frame_needed = 0, uses_anonymous_args = 0
  62              		@ link register save eliminated.
  63 0000 2DE9F00F 		push	{r4, r5, r6, r7, r8, r9, r10, fp}
  64 0004 D4B0     		sub	sp, sp, #336
  65 0006 0346     		mov	r3, r0
  66 0008 03AA     		add	r2, sp, #12
  67 000a 13AE     		add	r6, sp, #76
  68              	.L6:
  69 000c 597F     		ldrb	r1, [r3, #29]	@ zero_extendqisi2
  70 000e 1C7F     		ldrb	r4, [r3, #28]	@ zero_extendqisi2
  71 0010 DD7F     		ldrb	r5, [r3, #31]	@ zero_extendqisi2
  72 0012 0904     		lsls	r1, r1, #16
  73 0014 41EA0461 		orr	r1, r1, r4, lsl #24
  74 0018 9C7F     		ldrb	r4, [r3, #30]	@ zero_extendqisi2
  75 001a 2943     		orrs	r1, r1, r5
  76 001c 41EA0421 		orr	r1, r1, r4, lsl #8
  77 0020 42F8041F 		str	r1, [r2, #4]!
  78 0024 B242     		cmp	r2, r6
  79 0026 03F10403 		add	r3, r3, #4
  80 002a EFD1     		bne	.L6
  81 002c 04AB     		add	r3, sp, #16
  82 002e 0022     		movs	r2, #0
  83              	.L8:
  84 0030 196A     		ldr	r1, [r3, #32]
  85 0032 5D6B     		ldr	r5, [r3, #52]
  86 0034 04AE     		add	r6, sp, #16
  87 0036 B458     		ldr	r4, [r6, r2]
  88 0038 4D40     		eors	r5, r5, r1
  89 003a 9968     		ldr	r1, [r3, #8]
  90 003c 6C40     		eors	r4, r4, r5
  91 003e 6140     		eors	r1, r1, r4
  92 0040 0432     		adds	r2, r2, #4
  93 0042 4FEAF171 		ror	r1, r1, #31
  94 0046 B2F5807F 		cmp	r2, #256
  95 004a 1964     		str	r1, [r3, #64]
  96 004c 03F10403 		add	r3, r3, #4
  97 0050 EED1     		bne	.L8
  98 0052 8268     		ldr	r2, [r0, #8]
  99 0054 C368     		ldr	r3, [r0, #12]
 100 0056 0469     		ldr	r4, [r0, #16]
 101 0058 0092     		str	r2, [sp]
 102 005a 90E80011 		ldmia	r0, {r8, ip}
 103 005e 0193     		str	r3, [sp, #4]
 104 0060 0294     		str	r4, [sp, #8]
 105 0062 03A9     		add	r1, sp, #12
 106 0064 4646     		mov	r6, r8
 107 0066 6246     		mov	r2, ip
 108 0068 009D     		ldr	r5, [sp]
 109 006a 1F46     		mov	r7, r3
 110 006c A146     		mov	r9, r4
 111 006e 0DF15C0A 		add	r10, sp, #92
 112 0072 04E0     		b	.L10
 113              	.L24:
 114 0074 B946     		mov	r9, r7
ARM GAS  C:\Users\George\AppData\Local\Temp\ccW2WcMc.s 			page 3


 115 0076 3246     		mov	r2, r6
 116 0078 2F46     		mov	r7, r5
 117 007a 1E46     		mov	r6, r3
 118 007c 2546     		mov	r5, r4
 119              	.L10:
 120 007e 51F8044F 		ldr	r4, [r1, #4]!
 121 0082 3E4B     		ldr	r3, .L28
 122 0084 27EA020B 		bic	fp, r7, r2
 123 0088 2344     		add	r3, r3, r4
 124 008a 05EA0204 		and	r4, r5, r2
 125 008e 4BEA0404 		orr	r4, fp, r4
 126 0092 03EBF663 		add	r3, r3, r6, ror #27
 127 0096 2344     		add	r3, r3, r4
 128 0098 5145     		cmp	r1, r10
 129 009a 4B44     		add	r3, r3, r9
 130 009c 4FEAB204 		ror	r4, r2, #2
 131 00a0 E8D1     		bne	.L24
 132 00a2 2246     		mov	r2, r4
 133 00a4 0DF15C09 		add	r9, sp, #92
 134 00a8 1C46     		mov	r4, r3
 135 00aa 0DF1AC0A 		add	r10, sp, #172
 136 00ae 1346     		mov	r3, r2
 137 00b0 8346     		mov	fp, r0
 138 00b2 04E0     		b	.L12
 139              	.L25:
 140 00b4 2F46     		mov	r7, r5
 141 00b6 2646     		mov	r6, r4
 142 00b8 1D46     		mov	r5, r3
 143 00ba 1446     		mov	r4, r2
 144 00bc 0B46     		mov	r3, r1
 145              	.L12:
 146 00be 59F8040F 		ldr	r0, [r9, #4]!
 147 00c2 2F4A     		ldr	r2, .L28+4
 148 00c4 83EA0601 		eor	r1, r3, r6
 149 00c8 0244     		add	r2, r2, r0
 150 00ca 6940     		eors	r1, r1, r5
 151 00cc 02EBF462 		add	r2, r2, r4, ror #27
 152 00d0 0A44     		add	r2, r2, r1
 153 00d2 D145     		cmp	r9, r10
 154 00d4 3A44     		add	r2, r2, r7
 155 00d6 4FEAB601 		ror	r1, r6, #2
 156 00da EBD1     		bne	.L25
 157 00dc 0E46     		mov	r6, r1
 158 00de 5846     		mov	r0, fp
 159 00e0 1146     		mov	r1, r2
 160 00e2 0DF1AC09 		add	r9, sp, #172
 161 00e6 3246     		mov	r2, r6
 162 00e8 0DF1FC0A 		add	r10, sp, #252
 163 00ec 04E0     		b	.L14
 164              	.L26:
 165 00ee 1D46     		mov	r5, r3
 166 00f0 0C46     		mov	r4, r1
 167 00f2 1346     		mov	r3, r2
 168 00f4 3946     		mov	r1, r7
 169 00f6 3246     		mov	r2, r6
 170              	.L14:
 171 00f8 59F8047F 		ldr	r7, [r9, #4]!
ARM GAS  C:\Users\George\AppData\Local\Temp\ccW2WcMc.s 			page 4


 172 00fc 214E     		ldr	r6, .L28+8
 173 00fe 43EA020B 		orr	fp, r3, r2
 174 0102 3E44     		add	r6, r6, r7
 175 0104 0BEA040B 		and	fp, fp, r4
 176 0108 03EA0207 		and	r7, r3, r2
 177 010c 06EBF166 		add	r6, r6, r1, ror #27
 178 0110 4BEA0707 		orr	r7, fp, r7
 179 0114 3744     		add	r7, r7, r6
 180 0116 D145     		cmp	r9, r10
 181 0118 4FEAB406 		ror	r6, r4, #2
 182 011c 2F44     		add	r7, r7, r5
 183 011e E6D1     		bne	.L26
 184 0120 0DF5A67B 		add	fp, sp, #332
 185 0124 3FAD     		add	r5, sp, #252
 186 0126 0390     		str	r0, [sp, #12]
 187 0128 04E0     		b	.L16
 188              	.L27:
 189 012a 1346     		mov	r3, r2
 190 012c 3946     		mov	r1, r7
 191 012e 3246     		mov	r2, r6
 192 0130 2746     		mov	r7, r4
 193 0132 5646     		mov	r6, r10
 194              	.L16:
 195 0134 55F8040F 		ldr	r0, [r5, #4]!
 196 0138 134C     		ldr	r4, .L28+12
 197 013a 86EA0109 		eor	r9, r6, r1
 198 013e 0444     		add	r4, r4, r0
 199 0140 04EBF764 		add	r4, r4, r7, ror #27
 200 0144 89EA0209 		eor	r9, r9, r2
 201 0148 4C44     		add	r4, r4, r9
 202 014a 5D45     		cmp	r5, fp
 203 014c 1C44     		add	r4, r4, r3
 204 014e 4FEAB10A 		ror	r10, r1, #2
 205 0152 EAD1     		bne	.L27
 206 0154 019B     		ldr	r3, [sp, #4]
 207 0156 0099     		ldr	r1, [sp]
 208 0158 1E44     		add	r6, r6, r3
 209 015a 029B     		ldr	r3, [sp, #8]
 210 015c 0398     		ldr	r0, [sp, #12]
 211 015e 1A44     		add	r2, r2, r3
 212 0160 4444     		add	r4, r4, r8
 213 0162 6744     		add	r7, r7, ip
 214 0164 5144     		add	r1, r1, r10
 215 0166 0023     		movs	r3, #0
 216 0168 80E89000 		stmia	r0, {r4, r7}
 217 016c 8160     		str	r1, [r0, #8]
 218 016e C660     		str	r6, [r0, #12]
 219 0170 0261     		str	r2, [r0, #16]
 220 0172 C365     		str	r3, [r0, #92]
 221 0174 54B0     		add	sp, sp, #336
 222              		@ sp needed
 223 0176 BDE8F00F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp}
 224 017a 7047     		bx	lr
 225              	.L29:
 226              		.align	2
 227              	.L28:
 228 017c 9979825A 		.word	1518500249
ARM GAS  C:\Users\George\AppData\Local\Temp\ccW2WcMc.s 			page 5


 229 0180 A1EBD96E 		.word	1859775393
 230 0184 DCBC1B8F 		.word	-1894007588
 231 0188 D6C162CA 		.word	-899497514
 232              		.size	SHA1ProcessMessageBlock, .-SHA1ProcessMessageBlock
 233              		.section	.text.SHA1Input,"ax",%progbits
 234              		.align	2
 235              		.global	SHA1Input
 236              		.thumb
 237              		.thumb_func
 238              		.type	SHA1Input, %function
 239              	SHA1Input:
 240              		@ args = 0, pretend = 0, frame = 0
 241              		@ frame_needed = 0, uses_anonymous_args = 0
 242 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 243 0004 0446     		mov	r4, r0
 244 0006 42B3     		cbz	r2, .L30
 245 0008 90F86030 		ldrb	r3, [r0, #96]	@ zero_extendqisi2
 246 000c 3BBB     		cbnz	r3, .L33
 247 000e 90F86130 		ldrb	r3, [r0, #97]	@ zero_extendqisi2
 248 0012 23BB     		cbnz	r3, .L33
 249 0014 8F18     		adds	r7, r1, r2
 250 0016 4D1C     		adds	r5, r1, #1
 251 0018 4FF00108 		mov	r8, #1
 252 001c 05E0     		b	.L34
 253              	.L38:
 254 001e BD42     		cmp	r5, r7
 255 0020 1BD0     		beq	.L30
 256              	.L40:
 257 0022 94F86130 		ldrb	r3, [r4, #97]	@ zero_extendqisi2
 258 0026 0135     		adds	r5, r5, #1
 259 0028 BBB9     		cbnz	r3, .L30
 260              	.L34:
 261 002a E06D     		ldr	r0, [r4, #92]
 262 002c 6169     		ldr	r1, [r4, #20]
 263 002e 431C     		adds	r3, r0, #1
 264 0030 E365     		str	r3, [r4, #92]
 265 0032 15F8016C 		ldrb	r6, [r5, #-1]	@ zero_extendqisi2
 266 0036 2044     		add	r0, r0, r4
 267 0038 0831     		adds	r1, r1, #8
 268 003a 0677     		strb	r6, [r0, #28]
 269 003c 6161     		str	r1, [r4, #20]
 270 003e 29B9     		cbnz	r1, .L36
 271 0040 A169     		ldr	r1, [r4, #24]
 272 0042 0131     		adds	r1, r1, #1
 273 0044 A161     		str	r1, [r4, #24]
 274 0046 09B9     		cbnz	r1, .L36
 275 0048 84F86180 		strb	r8, [r4, #97]
 276              	.L36:
 277 004c 402B     		cmp	r3, #64
 278 004e E6D1     		bne	.L38
 279 0050 2046     		mov	r0, r4
 280 0052 FFF7FEFF 		bl	SHA1ProcessMessageBlock
 281 0056 BD42     		cmp	r5, r7
 282 0058 E3D1     		bne	.L40
 283              	.L30:
 284 005a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 285              	.L33:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccW2WcMc.s 			page 6


 286 005e 0123     		movs	r3, #1
 287 0060 84F86130 		strb	r3, [r4, #97]
 288 0064 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 289              		.size	SHA1Input, .-SHA1Input
 290              		.section	.text.SHA1PadMessage,"ax",%progbits
 291              		.align	2
 292              		.global	SHA1PadMessage
 293              		.thumb
 294              		.thumb_func
 295              		.type	SHA1PadMessage, %function
 296              	SHA1PadMessage:
 297              		@ args = 0, pretend = 0, frame = 0
 298              		@ frame_needed = 0, uses_anonymous_args = 0
 299 0000 C26D     		ldr	r2, [r0, #92]
 300 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 301 0004 372A     		cmp	r2, #55
 302 0006 0446     		mov	r4, r0
 303 0008 02F10103 		add	r3, r2, #1
 304 000c 39DD     		ble	.L42
 305 000e 8021     		movs	r1, #128
 306 0010 0244     		add	r2, r2, r0
 307 0012 3F2B     		cmp	r3, #63
 308 0014 C365     		str	r3, [r0, #92]
 309 0016 1177     		strb	r1, [r2, #28]
 310 0018 D8BF     		it	le
 311 001a 0021     		movle	r1, #0
 312 001c 05DC     		bgt	.L47
 313              	.L48:
 314 001e E218     		adds	r2, r4, r3
 315 0020 0133     		adds	r3, r3, #1
 316 0022 402B     		cmp	r3, #64
 317 0024 1177     		strb	r1, [r2, #28]
 318 0026 FAD1     		bne	.L48
 319 0028 E365     		str	r3, [r4, #92]
 320              	.L47:
 321 002a 2046     		mov	r0, r4
 322 002c FFF7FEFF 		bl	SHA1ProcessMessageBlock
 323 0030 E36D     		ldr	r3, [r4, #92]
 324 0032 372B     		cmp	r3, #55
 325 0034 D8BF     		it	le
 326 0036 0021     		movle	r1, #0
 327 0038 05DC     		bgt	.L45
 328              	.L50:
 329 003a E218     		adds	r2, r4, r3
 330 003c 0133     		adds	r3, r3, #1
 331 003e 382B     		cmp	r3, #56
 332 0040 1177     		strb	r1, [r2, #28]
 333 0042 FAD1     		bne	.L50
 334              	.L56:
 335 0044 E365     		str	r3, [r4, #92]
 336              	.L45:
 337 0046 A269     		ldr	r2, [r4, #24]
 338 0048 6369     		ldr	r3, [r4, #20]
 339 004a 170C     		lsrs	r7, r2, #16
 340 004c 180C     		lsrs	r0, r3, #16
 341 004e 160A     		lsrs	r6, r2, #8
 342 0050 1D0E     		lsrs	r5, r3, #24
ARM GAS  C:\Users\George\AppData\Local\Temp\ccW2WcMc.s 			page 7


 343 0052 190A     		lsrs	r1, r3, #8
 344 0054 4FEA126C 		lsr	ip, r2, #24
 345 0058 84F85900 		strb	r0, [r4, #89]
 346 005c 84F85720 		strb	r2, [r4, #87]
 347 0060 84F854C0 		strb	ip, [r4, #84]
 348 0064 84F85570 		strb	r7, [r4, #85]
 349 0068 84F85660 		strb	r6, [r4, #86]
 350 006c 84F85B30 		strb	r3, [r4, #91]
 351 0070 84F85850 		strb	r5, [r4, #88]
 352 0074 84F85A10 		strb	r1, [r4, #90]
 353 0078 2046     		mov	r0, r4
 354 007a BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 355 007e FFF7FEBF 		b	SHA1ProcessMessageBlock
 356              	.L42:
 357 0082 8118     		adds	r1, r0, r2
 358 0084 382B     		cmp	r3, #56
 359 0086 4FF08000 		mov	r0, #128
 360 008a E365     		str	r3, [r4, #92]
 361 008c 0877     		strb	r0, [r1, #28]
 362 008e DAD0     		beq	.L45
 363 0090 01F11C02 		add	r2, r1, #28
 364 0094 0021     		movs	r1, #0
 365              	.L52:
 366 0096 0133     		adds	r3, r3, #1
 367 0098 382B     		cmp	r3, #56
 368 009a 02F8011F 		strb	r1, [r2, #1]!
 369 009e FAD1     		bne	.L52
 370 00a0 D0E7     		b	.L56
 371              		.size	SHA1PadMessage, .-SHA1PadMessage
 372 00a2 00BF     		.section	.text.SHA1Result,"ax",%progbits
 373              		.align	2
 374              		.global	SHA1Result
 375              		.thumb
 376              		.thumb_func
 377              		.type	SHA1Result, %function
 378              	SHA1Result:
 379              		@ args = 0, pretend = 0, frame = 0
 380              		@ frame_needed = 0, uses_anonymous_args = 0
 381 0000 90F86130 		ldrb	r3, [r0, #97]	@ zero_extendqisi2
 382 0004 10B5     		push	{r4, lr}
 383 0006 0446     		mov	r4, r0
 384 0008 5BB9     		cbnz	r3, .L59
 385 000a 90F86030 		ldrb	r3, [r0, #96]	@ zero_extendqisi2
 386 000e 0BB1     		cbz	r3, .L60
 387 0010 1846     		mov	r0, r3
 388 0012 10BD     		pop	{r4, pc}
 389              	.L60:
 390 0014 FFF7FEFF 		bl	SHA1PadMessage
 391 0018 0123     		movs	r3, #1
 392 001a 84F86030 		strb	r3, [r4, #96]
 393 001e 1846     		mov	r0, r3
 394 0020 10BD     		pop	{r4, pc}
 395              	.L59:
 396 0022 0023     		movs	r3, #0
 397 0024 1846     		mov	r0, r3
 398 0026 10BD     		pop	{r4, pc}
 399              		.size	SHA1Result, .-SHA1Result
ARM GAS  C:\Users\George\AppData\Local\Temp\ccW2WcMc.s 			page 8


 400              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
