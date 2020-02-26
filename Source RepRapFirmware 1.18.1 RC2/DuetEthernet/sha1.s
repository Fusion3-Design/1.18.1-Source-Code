ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXYtIkc.s 			page 1


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
  15              		.file	"sha1.c"
  16              		.section	.text.SHA1Reset,"ax",%progbits
  17              		.align	2
  18              		.global	SHA1Reset
  19              		.thumb
  20              		.thumb_func
  21              		.type	SHA1Reset, %function
  22              	SHA1Reset:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 30B4     		push	{r4, r5}
  27 0002 0A4B     		ldr	r3, .L2
  28 0004 0A4D     		ldr	r5, .L2+4
  29 0006 0B4C     		ldr	r4, .L2+8
  30 0008 0B49     		ldr	r1, .L2+12
  31 000a 0C4A     		ldr	r2, .L2+16
  32 000c 0360     		str	r3, [r0]
  33 000e 0023     		movs	r3, #0
  34 0010 4560     		str	r5, [r0, #4]
  35 0012 8460     		str	r4, [r0, #8]
  36 0014 C160     		str	r1, [r0, #12]
  37 0016 0261     		str	r2, [r0, #16]
  38 0018 4361     		str	r3, [r0, #20]
  39 001a 8361     		str	r3, [r0, #24]
  40 001c C365     		str	r3, [r0, #92]
  41 001e 80F86030 		strb	r3, [r0, #96]
  42 0022 80F86130 		strb	r3, [r0, #97]
  43 0026 30BC     		pop	{r4, r5}
  44 0028 7047     		bx	lr
  45              	.L3:
  46 002a 00BF     		.align	2
  47              	.L2:
  48 002c 01234567 		.word	1732584193
  49 0030 89ABCDEF 		.word	-271733879
  50 0034 FEDCBA98 		.word	-1732584194
  51 0038 76543210 		.word	271733878
  52 003c F0E1D2C3 		.word	-1009589776
  53              		.size	SHA1Reset, .-SHA1Reset
  54              		.section	.text.SHA1ProcessMessageBlock,"ax",%progbits
  55              		.align	2
  56              		.global	SHA1ProcessMessageBlock
  57              		.thumb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXYtIkc.s 			page 2


  58              		.thumb_func
  59              		.type	SHA1ProcessMessageBlock, %function
  60              	SHA1ProcessMessageBlock:
  61              		@ args = 0, pretend = 0, frame = 336
  62              		@ frame_needed = 0, uses_anonymous_args = 0
  63              		@ link register save eliminated.
  64 0000 2DE9F00F 		push	{r4, r5, r6, r7, r8, r9, r10, fp}
  65 0004 D4B0     		sub	sp, sp, #336
  66 0006 0346     		mov	r3, r0
  67 0008 03AA     		add	r2, sp, #12
  68 000a 13AF     		add	r7, sp, #76
  69              	.L6:
  70 000c 597F     		ldrb	r1, [r3, #29]	@ zero_extendqisi2
  71 000e 1E7F     		ldrb	r6, [r3, #28]	@ zero_extendqisi2
  72 0010 DD7F     		ldrb	r5, [r3, #31]	@ zero_extendqisi2
  73 0012 9C7F     		ldrb	r4, [r3, #30]	@ zero_extendqisi2
  74 0014 0904     		lsls	r1, r1, #16
  75 0016 41EA0661 		orr	r1, r1, r6, lsl #24
  76 001a 2943     		orrs	r1, r1, r5
  77 001c 41EA0421 		orr	r1, r1, r4, lsl #8
  78 0020 42F8041F 		str	r1, [r2, #4]!
  79 0024 BA42     		cmp	r2, r7
  80 0026 03F10403 		add	r3, r3, #4
  81 002a EFD1     		bne	.L6
  82 002c 04AB     		add	r3, sp, #16
  83 002e 0022     		movs	r2, #0
  84              	.L8:
  85 0030 04A9     		add	r1, sp, #16
  86 0032 5E6B     		ldr	r6, [r3, #52]
  87 0034 1D6A     		ldr	r5, [r3, #32]
  88 0036 8C58     		ldr	r4, [r1, r2]
  89 0038 9968     		ldr	r1, [r3, #8]
  90 003a 7540     		eors	r5, r5, r6
  91 003c 6C40     		eors	r4, r4, r5
  92 003e 6140     		eors	r1, r1, r4
  93 0040 0432     		adds	r2, r2, #4
  94 0042 4FEAF171 		ror	r1, r1, #31
  95 0046 B2F5807F 		cmp	r2, #256
  96 004a 1964     		str	r1, [r3, #64]
  97 004c 03F10403 		add	r3, r3, #4
  98 0050 EED1     		bne	.L8
  99 0052 90E80011 		ldmia	r0, {r8, ip}
 100 0056 8268     		ldr	r2, [r0, #8]
 101 0058 C368     		ldr	r3, [r0, #12]
 102 005a 0469     		ldr	r4, [r0, #16]
 103 005c 0092     		str	r2, [sp]
 104 005e 0193     		str	r3, [sp, #4]
 105 0060 0294     		str	r4, [sp, #8]
 106 0062 03A9     		add	r1, sp, #12
 107 0064 4646     		mov	r6, r8
 108 0066 6246     		mov	r2, ip
 109 0068 009D     		ldr	r5, [sp]
 110 006a 1F46     		mov	r7, r3
 111 006c A146     		mov	r9, r4
 112 006e 0DF15C0A 		add	r10, sp, #92
 113 0072 04E0     		b	.L10
 114              	.L24:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXYtIkc.s 			page 3


 115 0074 B946     		mov	r9, r7
 116 0076 3246     		mov	r2, r6
 117 0078 2F46     		mov	r7, r5
 118 007a 1E46     		mov	r6, r3
 119 007c 2546     		mov	r5, r4
 120              	.L10:
 121 007e 51F8044F 		ldr	r4, [r1, #4]!
 122 0082 3C4B     		ldr	r3, .L28
 123 0084 27EA020B 		bic	fp, r7, r2
 124 0088 2344     		add	r3, r3, r4
 125 008a 05EA0204 		and	r4, r5, r2
 126 008e 4BEA0404 		orr	r4, fp, r4
 127 0092 03EBF663 		add	r3, r3, r6, ror #27
 128 0096 2344     		add	r3, r3, r4
 129 0098 5145     		cmp	r1, r10
 130 009a 4B44     		add	r3, r3, r9
 131 009c 4FEAB204 		ror	r4, r2, #2
 132 00a0 E8D1     		bne	.L24
 133 00a2 2246     		mov	r2, r4
 134 00a4 0DF15C09 		add	r9, sp, #92
 135 00a8 1C46     		mov	r4, r3
 136 00aa 0DF1AC0A 		add	r10, sp, #172
 137 00ae 1346     		mov	r3, r2
 138 00b0 04E0     		b	.L12
 139              	.L25:
 140 00b2 2F46     		mov	r7, r5
 141 00b4 2646     		mov	r6, r4
 142 00b6 1D46     		mov	r5, r3
 143 00b8 1446     		mov	r4, r2
 144 00ba 0B46     		mov	r3, r1
 145              	.L12:
 146 00bc 59F8041F 		ldr	r1, [r9, #4]!
 147 00c0 2D4A     		ldr	r2, .L28+4
 148 00c2 0A44     		add	r2, r2, r1
 149 00c4 83EA0601 		eor	r1, r3, r6
 150 00c8 6940     		eors	r1, r1, r5
 151 00ca 02EBF462 		add	r2, r2, r4, ror #27
 152 00ce 0A44     		add	r2, r2, r1
 153 00d0 D145     		cmp	r9, r10
 154 00d2 3A44     		add	r2, r2, r7
 155 00d4 4FEAB601 		ror	r1, r6, #2
 156 00d8 EBD1     		bne	.L25
 157 00da 0E46     		mov	r6, r1
 158 00dc 2BAF     		add	r7, sp, #172
 159 00de 1146     		mov	r1, r2
 160 00e0 0DF1FC0B 		add	fp, sp, #252
 161 00e4 3246     		mov	r2, r6
 162 00e6 0390     		str	r0, [sp, #12]
 163 00e8 04E0     		b	.L14
 164              	.L26:
 165 00ea 1D46     		mov	r5, r3
 166 00ec 0C46     		mov	r4, r1
 167 00ee 1346     		mov	r3, r2
 168 00f0 3146     		mov	r1, r6
 169 00f2 4A46     		mov	r2, r9
 170              	.L14:
 171 00f4 57F8040F 		ldr	r0, [r7, #4]!
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXYtIkc.s 			page 4


 172 00f8 204E     		ldr	r6, .L28+8
 173 00fa 43EA0209 		orr	r9, r3, r2
 174 00fe 0644     		add	r6, r6, r0
 175 0100 09EA0409 		and	r9, r9, r4
 176 0104 03EA020A 		and	r10, r3, r2
 177 0108 49EA0A09 		orr	r9, r9, r10
 178 010c 06EBF166 		add	r6, r6, r1, ror #27
 179 0110 4E44     		add	r6, r6, r9
 180 0112 5F45     		cmp	r7, fp
 181 0114 4FEAB409 		ror	r9, r4, #2
 182 0118 2E44     		add	r6, r6, r5
 183 011a E6D1     		bne	.L26
 184 011c 0398     		ldr	r0, [sp, #12]
 185 011e 0DF5A67A 		add	r10, sp, #332
 186 0122 3FAD     		add	r5, sp, #252
 187 0124 04E0     		b	.L16
 188              	.L27:
 189 0126 1346     		mov	r3, r2
 190 0128 3146     		mov	r1, r6
 191 012a 4A46     		mov	r2, r9
 192 012c 2646     		mov	r6, r4
 193 012e D946     		mov	r9, fp
 194              	.L16:
 195 0130 55F8047F 		ldr	r7, [r5, #4]!
 196 0134 124C     		ldr	r4, .L28+12
 197 0136 3C44     		add	r4, r4, r7
 198 0138 89EA0107 		eor	r7, r9, r1
 199 013c 04EBF664 		add	r4, r4, r6, ror #27
 200 0140 5740     		eors	r7, r7, r2
 201 0142 3C44     		add	r4, r4, r7
 202 0144 5545     		cmp	r5, r10
 203 0146 1C44     		add	r4, r4, r3
 204 0148 4FEAB10B 		ror	fp, r1, #2
 205 014c EBD1     		bne	.L27
 206 014e 029B     		ldr	r3, [sp, #8]
 207 0150 009D     		ldr	r5, [sp]
 208 0152 0199     		ldr	r1, [sp, #4]
 209 0154 1A44     		add	r2, r2, r3
 210 0156 4444     		add	r4, r4, r8
 211 0158 6644     		add	r6, r6, ip
 212 015a 5D44     		add	r5, r5, fp
 213 015c 4944     		add	r1, r1, r9
 214 015e 0023     		movs	r3, #0
 215 0160 80E85000 		stmia	r0, {r4, r6}
 216 0164 8560     		str	r5, [r0, #8]
 217 0166 C160     		str	r1, [r0, #12]
 218 0168 0261     		str	r2, [r0, #16]
 219 016a C365     		str	r3, [r0, #92]
 220 016c 54B0     		add	sp, sp, #336
 221              		@ sp needed
 222 016e BDE8F00F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp}
 223 0172 7047     		bx	lr
 224              	.L29:
 225              		.align	2
 226              	.L28:
 227 0174 9979825A 		.word	1518500249
 228 0178 A1EBD96E 		.word	1859775393
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXYtIkc.s 			page 5


 229 017c DCBC1B8F 		.word	-1894007588
 230 0180 D6C162CA 		.word	-899497514
 231              		.size	SHA1ProcessMessageBlock, .-SHA1ProcessMessageBlock
 232              		.section	.text.SHA1Input,"ax",%progbits
 233              		.align	2
 234              		.global	SHA1Input
 235              		.thumb
 236              		.thumb_func
 237              		.type	SHA1Input, %function
 238              	SHA1Input:
 239              		@ args = 0, pretend = 0, frame = 0
 240              		@ frame_needed = 0, uses_anonymous_args = 0
 241 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 242 0004 0446     		mov	r4, r0
 243 0006 42B3     		cbz	r2, .L30
 244 0008 90F86030 		ldrb	r3, [r0, #96]	@ zero_extendqisi2
 245 000c 3BBB     		cbnz	r3, .L33
 246 000e 90F86130 		ldrb	r3, [r0, #97]	@ zero_extendqisi2
 247 0012 23BB     		cbnz	r3, .L33
 248 0014 8F18     		adds	r7, r1, r2
 249 0016 4D1C     		adds	r5, r1, #1
 250 0018 4FF00108 		mov	r8, #1
 251 001c 05E0     		b	.L34
 252              	.L38:
 253 001e BD42     		cmp	r5, r7
 254 0020 1BD0     		beq	.L30
 255              	.L40:
 256 0022 94F86130 		ldrb	r3, [r4, #97]	@ zero_extendqisi2
 257 0026 0135     		adds	r5, r5, #1
 258 0028 BBB9     		cbnz	r3, .L30
 259              	.L34:
 260 002a E06D     		ldr	r0, [r4, #92]
 261 002c 6169     		ldr	r1, [r4, #20]
 262 002e 431C     		adds	r3, r0, #1
 263 0030 E365     		str	r3, [r4, #92]
 264 0032 2044     		add	r0, r0, r4
 265 0034 15F8016C 		ldrb	r6, [r5, #-1]	@ zero_extendqisi2
 266 0038 0677     		strb	r6, [r0, #28]
 267 003a 0831     		adds	r1, r1, #8
 268 003c 6161     		str	r1, [r4, #20]
 269 003e 29B9     		cbnz	r1, .L36
 270 0040 A169     		ldr	r1, [r4, #24]
 271 0042 0131     		adds	r1, r1, #1
 272 0044 A161     		str	r1, [r4, #24]
 273 0046 09B9     		cbnz	r1, .L36
 274 0048 84F86180 		strb	r8, [r4, #97]
 275              	.L36:
 276 004c 402B     		cmp	r3, #64
 277 004e E6D1     		bne	.L38
 278 0050 2046     		mov	r0, r4
 279 0052 FFF7FEFF 		bl	SHA1ProcessMessageBlock
 280 0056 BD42     		cmp	r5, r7
 281 0058 E3D1     		bne	.L40
 282              	.L30:
 283 005a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 284              	.L33:
 285 005e 0123     		movs	r3, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXYtIkc.s 			page 6


 286 0060 84F86130 		strb	r3, [r4, #97]
 287 0064 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 288              		.size	SHA1Input, .-SHA1Input
 289              		.section	.text.SHA1PadMessage,"ax",%progbits
 290              		.align	2
 291              		.global	SHA1PadMessage
 292              		.thumb
 293              		.thumb_func
 294              		.type	SHA1PadMessage, %function
 295              	SHA1PadMessage:
 296              		@ args = 0, pretend = 0, frame = 0
 297              		@ frame_needed = 0, uses_anonymous_args = 0
 298 0000 C26D     		ldr	r2, [r0, #92]
 299 0002 372A     		cmp	r2, #55
 300 0004 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 301 0006 00EB0201 		add	r1, r0, r2
 302 000a 0446     		mov	r4, r0
 303 000c 02F10103 		add	r3, r2, #1
 304 0010 37DD     		ble	.L42
 305 0012 8022     		movs	r2, #128
 306 0014 3F2B     		cmp	r3, #63
 307 0016 C365     		str	r3, [r0, #92]
 308 0018 0A77     		strb	r2, [r1, #28]
 309 001a D8BF     		it	le
 310 001c 0021     		movle	r1, #0
 311 001e 05DC     		bgt	.L47
 312              	.L48:
 313 0020 E218     		adds	r2, r4, r3
 314 0022 0133     		adds	r3, r3, #1
 315 0024 402B     		cmp	r3, #64
 316 0026 1177     		strb	r1, [r2, #28]
 317 0028 FAD1     		bne	.L48
 318 002a E365     		str	r3, [r4, #92]
 319              	.L47:
 320 002c 2046     		mov	r0, r4
 321 002e FFF7FEFF 		bl	SHA1ProcessMessageBlock
 322 0032 E36D     		ldr	r3, [r4, #92]
 323 0034 372B     		cmp	r3, #55
 324 0036 D8BF     		it	le
 325 0038 0021     		movle	r1, #0
 326 003a 05DC     		bgt	.L45
 327              	.L50:
 328 003c E218     		adds	r2, r4, r3
 329 003e 0133     		adds	r3, r3, #1
 330 0040 382B     		cmp	r3, #56
 331 0042 1177     		strb	r1, [r2, #28]
 332 0044 FAD1     		bne	.L50
 333              	.L56:
 334 0046 E365     		str	r3, [r4, #92]
 335              	.L45:
 336 0048 A269     		ldr	r2, [r4, #24]
 337 004a 6369     		ldr	r3, [r4, #20]
 338 004c 84F85720 		strb	r2, [r4, #87]
 339 0050 170E     		lsrs	r7, r2, #24
 340 0052 160C     		lsrs	r6, r2, #16
 341 0054 180C     		lsrs	r0, r3, #16
 342 0056 1D0E     		lsrs	r5, r3, #24
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXYtIkc.s 			page 7


 343 0058 190A     		lsrs	r1, r3, #8
 344 005a 120A     		lsrs	r2, r2, #8
 345 005c 84F85900 		strb	r0, [r4, #89]
 346 0060 84F85470 		strb	r7, [r4, #84]
 347 0064 84F85560 		strb	r6, [r4, #85]
 348 0068 84F85620 		strb	r2, [r4, #86]
 349 006c 84F85B30 		strb	r3, [r4, #91]
 350 0070 84F85850 		strb	r5, [r4, #88]
 351 0074 84F85A10 		strb	r1, [r4, #90]
 352 0078 2046     		mov	r0, r4
 353 007a BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 354 007e FFF7FEBF 		b	SHA1ProcessMessageBlock
 355              	.L42:
 356 0082 8020     		movs	r0, #128
 357 0084 382B     		cmp	r3, #56
 358 0086 E365     		str	r3, [r4, #92]
 359 0088 0877     		strb	r0, [r1, #28]
 360 008a DDD0     		beq	.L45
 361 008c 01F11C02 		add	r2, r1, #28
 362 0090 0021     		movs	r1, #0
 363              	.L52:
 364 0092 0133     		adds	r3, r3, #1
 365 0094 382B     		cmp	r3, #56
 366 0096 02F8011F 		strb	r1, [r2, #1]!
 367 009a FAD1     		bne	.L52
 368 009c D3E7     		b	.L56
 369              		.size	SHA1PadMessage, .-SHA1PadMessage
 370 009e 00BF     		.section	.text.SHA1Result,"ax",%progbits
 371              		.align	2
 372              		.global	SHA1Result
 373              		.thumb
 374              		.thumb_func
 375              		.type	SHA1Result, %function
 376              	SHA1Result:
 377              		@ args = 0, pretend = 0, frame = 0
 378              		@ frame_needed = 0, uses_anonymous_args = 0
 379 0000 90F86130 		ldrb	r3, [r0, #97]	@ zero_extendqisi2
 380 0004 10B5     		push	{r4, lr}
 381 0006 0446     		mov	r4, r0
 382 0008 5BB9     		cbnz	r3, .L59
 383 000a 90F86030 		ldrb	r3, [r0, #96]	@ zero_extendqisi2
 384 000e 0BB1     		cbz	r3, .L60
 385 0010 1846     		mov	r0, r3
 386 0012 10BD     		pop	{r4, pc}
 387              	.L60:
 388 0014 FFF7FEFF 		bl	SHA1PadMessage
 389 0018 0123     		movs	r3, #1
 390 001a 84F86030 		strb	r3, [r4, #96]
 391 001e 1846     		mov	r0, r3
 392 0020 10BD     		pop	{r4, pc}
 393              	.L59:
 394 0022 0023     		movs	r3, #0
 395 0024 1846     		mov	r0, r3
 396 0026 10BD     		pop	{r4, pc}
 397              		.size	SHA1Result, .-SHA1Result
 398              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
