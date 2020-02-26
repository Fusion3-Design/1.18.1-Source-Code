ARM GAS  C:\Users\George\AppData\Local\Temp\ccOtVs0f.s 			page 1


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
  14              		.file	"pbuf.c"
  15              		.section	.text.pbuf_free_ooseq,"ax",%progbits
  16              		.align	2
  17              		.global	pbuf_free_ooseq
  18              		.thumb
  19              		.thumb_func
  20              		.type	pbuf_free_ooseq, %function
  21              	pbuf_free_ooseq:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 094A     		ldr	r2, .L12
  25 0002 10B5     		push	{r4, lr}
  26 0004 094B     		ldr	r3, .L12+4
  27 0006 1468     		ldr	r4, [r2]
  28 0008 0022     		movs	r2, #0
  29 000a 1A70     		strb	r2, [r3]
  30 000c 14B9     		cbnz	r4, .L6
  31 000e 09E0     		b	.L1
  32              	.L5:
  33 0010 E468     		ldr	r4, [r4, #12]
  34 0012 3CB1     		cbz	r4, .L1
  35              	.L6:
  36 0014 606F     		ldr	r0, [r4, #116]
  37 0016 0028     		cmp	r0, #0
  38 0018 FAD0     		beq	.L5
  39 001a FFF7FEFF 		bl	tcp_segs_free
  40 001e 0023     		movs	r3, #0
  41 0020 6367     		str	r3, [r4, #116]
  42 0022 10BD     		pop	{r4, pc}
  43              	.L1:
  44 0024 10BD     		pop	{r4, pc}
  45              	.L13:
  46 0026 00BF     		.align	2
  47              	.L12:
  48 0028 00000000 		.word	tcp_active_pcbs
  49 002c 00000000 		.word	pbuf_free_ooseq_pending
  50              		.size	pbuf_free_ooseq, .-pbuf_free_ooseq
  51              		.section	.text.pbuf_alloced_custom,"ax",%progbits
  52              		.align	2
  53              		.global	pbuf_alloced_custom
  54              		.thumb
  55              		.thumb_func
  56              		.type	pbuf_alloced_custom, %function
  57              	pbuf_alloced_custom:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOtVs0f.s 			page 2


  58              		@ args = 8, pretend = 0, frame = 0
  59              		@ frame_needed = 0, uses_anonymous_args = 0
  60              		@ link register save eliminated.
  61 0000 70B4     		push	{r4, r5, r6}
  62 0002 039C     		ldr	r4, [sp, #12]
  63 0004 BDF81050 		ldrh	r5, [sp, #16]
  64 0008 0328     		cmp	r0, #3
  65 000a 25D8     		bhi	.L23
  66 000c DFE800F0 		tbb	[pc, r0]
  67              	.L17:
  68 0010 19       		.byte	(.L16-.L17)/2
  69 0011 02       		.byte	(.L24-.L17)/2
  70 0012 1F       		.byte	(.L19-.L17)/2
  71 0013 1C       		.byte	(.L20-.L17)/2
  72              		.align	1
  73              	.L24:
  74 0014 2820     		movs	r0, #40
  75 0016 2926     		movs	r6, #41
  76              	.L18:
  77 0018 0844     		add	r0, r0, r1
  78 001a A842     		cmp	r0, r5
  79 001c 4FF00000 		mov	r0, #0
  80 0020 0DDC     		bgt	.L15
  81 0022 1860     		str	r0, [r3]
  82 0024 B4B1     		cbz	r4, .L21
  83 0026 26F00306 		bic	r6, r6, #3
  84 002a 3444     		add	r4, r4, r6
  85 002c 5C60     		str	r4, [r3, #4]
  86              	.L22:
  87 002e 0120     		movs	r0, #1
  88 0030 0224     		movs	r4, #2
  89 0032 D881     		strh	r0, [r3, #14]	@ movhi
  90 0034 1981     		strh	r1, [r3, #8]	@ movhi
  91 0036 5981     		strh	r1, [r3, #10]	@ movhi
  92 0038 1A73     		strb	r2, [r3, #12]
  93 003a 5C73     		strb	r4, [r3, #13]
  94 003c 1846     		mov	r0, r3
  95              	.L15:
  96 003e 70BC     		pop	{r4, r5, r6}
  97 0040 7047     		bx	lr
  98              	.L16:
  99 0042 3C20     		movs	r0, #60
 100 0044 3D26     		movs	r6, #61
 101 0046 E7E7     		b	.L18
 102              	.L20:
 103 0048 0020     		movs	r0, #0
 104 004a 0326     		movs	r6, #3
 105 004c E4E7     		b	.L18
 106              	.L19:
 107 004e 1420     		movs	r0, #20
 108 0050 1526     		movs	r6, #21
 109 0052 E1E7     		b	.L18
 110              	.L21:
 111 0054 5C60     		str	r4, [r3, #4]
 112 0056 EAE7     		b	.L22
 113              	.L23:
 114 0058 0020     		movs	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOtVs0f.s 			page 3


 115 005a F0E7     		b	.L15
 116              		.size	pbuf_alloced_custom, .-pbuf_alloced_custom
 117              		.section	.text.pbuf_header,"ax",%progbits
 118              		.align	2
 119              		.global	pbuf_header
 120              		.thumb
 121              		.thumb_func
 122              		.type	pbuf_header, %function
 123              	pbuf_header:
 124              		@ args = 0, pretend = 0, frame = 0
 125              		@ frame_needed = 0, uses_anonymous_args = 0
 126 0000 10B5     		push	{r4, lr}
 127 0002 D1B1     		cbz	r1, .L43
 128 0004 58B1     		cbz	r0, .L27
 129 0006 0029     		cmp	r1, #0
 130 0008 19DB     		blt	.L44
 131 000a 8CB2     		uxth	r4, r1
 132              	.L29:
 133 000c 037B     		ldrb	r3, [r0, #12]	@ zero_extendqisi2
 134 000e 4268     		ldr	r2, [r0, #4]
 135 0010 33B1     		cbz	r3, .L31
 136 0012 032B     		cmp	r3, #3
 137 0014 04D0     		beq	.L31
 138 0016 013B     		subs	r3, r3, #1
 139 0018 012B     		cmp	r3, #1
 140 001a 1DD9     		bls	.L45
 141              	.L39:
 142 001c 0120     		movs	r0, #1
 143              	.L27:
 144 001e 10BD     		pop	{r4, pc}
 145              	.L31:
 146 0020 531A     		subs	r3, r2, r1
 147 0022 00F11004 		add	r4, r0, #16
 148 0026 A342     		cmp	r3, r4
 149 0028 4360     		str	r3, [r0, #4]
 150 002a 1DD3     		bcc	.L33
 151 002c 4389     		ldrh	r3, [r0, #10]
 152              	.L34:
 153 002e 0289     		ldrh	r2, [r0, #8]
 154 0030 89B2     		uxth	r1, r1
 155 0032 0B44     		add	r3, r3, r1
 156 0034 1144     		add	r1, r1, r2
 157 0036 4381     		strh	r3, [r0, #10]	@ movhi
 158 0038 0181     		strh	r1, [r0, #8]	@ movhi
 159              	.L43:
 160 003a 0020     		movs	r0, #0
 161 003c 10BD     		pop	{r4, pc}
 162              	.L44:
 163 003e 4C42     		negs	r4, r1
 164 0040 4389     		ldrh	r3, [r0, #10]
 165 0042 A4B2     		uxth	r4, r4
 166 0044 A342     		cmp	r3, r4
 167 0046 E1D2     		bcs	.L29
 168 0048 0948     		ldr	r0, .L46
 169 004a 0A49     		ldr	r1, .L46+4
 170 004c 40F20F22 		movw	r2, #527
 171 0050 094B     		ldr	r3, .L46+8
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOtVs0f.s 			page 4


 172 0052 FFF7FEFF 		bl	debugPrintf
 173              	.L30:
 174 0056 FEE7     		b	.L30
 175              	.L45:
 176 0058 0029     		cmp	r1, #0
 177 005a DFDA     		bge	.L39
 178 005c 4389     		ldrh	r3, [r0, #10]
 179 005e 9C42     		cmp	r4, r3
 180 0060 DCD8     		bhi	.L39
 181 0062 521A     		subs	r2, r2, r1
 182 0064 4260     		str	r2, [r0, #4]
 183 0066 E2E7     		b	.L34
 184              	.L33:
 185 0068 4260     		str	r2, [r0, #4]
 186 006a 0120     		movs	r0, #1
 187 006c 10BD     		pop	{r4, pc}
 188              	.L47:
 189 006e 00BF     		.align	2
 190              	.L46:
 191 0070 00000000 		.word	.LC0
 192 0074 28000000 		.word	.LC1
 193 0078 48000000 		.word	.LC2
 194              		.size	pbuf_header, .-pbuf_header
 195              		.section	.text.pbuf_free,"ax",%progbits
 196              		.align	2
 197              		.global	pbuf_free
 198              		.thumb
 199              		.thumb_func
 200              		.type	pbuf_free, %function
 201              	pbuf_free:
 202              		@ args = 0, pretend = 0, frame = 0
 203              		@ frame_needed = 0, uses_anonymous_args = 0
 204 0000 38B5     		push	{r3, r4, r5, lr}
 205 0002 0146     		mov	r1, r0
 206 0004 48B3     		cbz	r0, .L56
 207 0006 0025     		movs	r5, #0
 208 0008 09E0     		b	.L50
 209              	.L51:
 210 000a 032B     		cmp	r3, #3
 211 000c 21D0     		beq	.L58
 212 000e 012A     		cmp	r2, #1
 213 0010 1BD9     		bls	.L59
 214 0012 FFF7FEFF 		bl	mem_free
 215              	.L52:
 216 0016 0135     		adds	r5, r5, #1
 217 0018 EDB2     		uxtb	r5, r5
 218 001a A4B1     		cbz	r4, .L57
 219              	.L60:
 220 001c 2146     		mov	r1, r4
 221              	.L50:
 222 001e CB89     		ldrh	r3, [r1, #14]
 223 0020 013B     		subs	r3, r3, #1
 224 0022 9BB2     		uxth	r3, r3
 225 0024 CB81     		strh	r3, [r1, #14]	@ movhi
 226 0026 73B9     		cbnz	r3, .L57
 227 0028 4A7B     		ldrb	r2, [r1, #13]	@ zero_extendqisi2
 228 002a 0B7B     		ldrb	r3, [r1, #12]	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOtVs0f.s 			page 5


 229 002c 12F0020F 		tst	r2, #2
 230 0030 0C68     		ldr	r4, [r1]
 231 0032 03F1FF32 		add	r2, r3, #-1
 232 0036 0846     		mov	r0, r1
 233 0038 E7D0     		beq	.L51
 234 003a 0B69     		ldr	r3, [r1, #16]
 235 003c 0135     		adds	r5, r5, #1
 236 003e 9847     		blx	r3
 237 0040 EDB2     		uxtb	r5, r5
 238 0042 002C     		cmp	r4, #0
 239 0044 EAD1     		bne	.L60
 240              	.L57:
 241 0046 2846     		mov	r0, r5
 242 0048 38BD     		pop	{r3, r4, r5, pc}
 243              	.L59:
 244 004a 0820     		movs	r0, #8
 245 004c FFF7FEFF 		bl	memp_free
 246 0050 E1E7     		b	.L52
 247              	.L58:
 248 0052 0920     		movs	r0, #9
 249 0054 FFF7FEFF 		bl	memp_free
 250 0058 DDE7     		b	.L52
 251              	.L56:
 252 005a 38BD     		pop	{r3, r4, r5, pc}
 253              		.size	pbuf_free, .-pbuf_free
 254              		.section	.text.pbuf_alloc,"ax",%progbits
 255              		.align	2
 256              		.global	pbuf_alloc
 257              		.thumb
 258              		.thumb_func
 259              		.type	pbuf_alloc, %function
 260              	pbuf_alloc:
 261              		@ args = 0, pretend = 0, frame = 8
 262              		@ frame_needed = 0, uses_anonymous_args = 0
 263 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 264 0002 0C46     		mov	r4, r1
 265 0004 83B0     		sub	sp, sp, #12
 266 0006 0328     		cmp	r0, #3
 267 0008 00F28B80 		bhi	.L81
 268 000c DFE800F0 		tbb	[pc, r0]
 269              	.L64:
 270 0010 83       		.byte	(.L63-.L64)/2
 271 0011 02       		.byte	(.L80-.L64)/2
 272 0012 87       		.byte	(.L66-.L64)/2
 273 0013 85       		.byte	(.L67-.L64)/2
 274              		.align	1
 275              	.L80:
 276 0014 2625     		movs	r5, #38
 277              	.L65:
 278 0016 032A     		cmp	r2, #3
 279 0018 00F28380 		bhi	.L81
 280 001c DFE802F0 		tbb	[pc, r2]
 281              	.L69:
 282 0020 5D       		.byte	(.L68-.L69)/2
 283 0021 4F       		.byte	(.L70-.L69)/2
 284 0022 4F       		.byte	(.L70-.L69)/2
 285 0023 02       		.byte	(.L71-.L69)/2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOtVs0f.s 			page 6


 286              		.align	1
 287              	.L71:
 288 0024 0920     		movs	r0, #9
 289 0026 FFF7FEFF 		bl	memp_malloc
 290 002a 0646     		mov	r6, r0
 291 002c 0028     		cmp	r0, #0
 292 002e 7AD0     		beq	.L86
 293 0030 EB1C     		adds	r3, r5, #3
 294 0032 23F00303 		bic	r3, r3, #3
 295 0036 C3F5BE63 		rsb	r3, r3, #1520
 296 003a 4719     		adds	r7, r0, r5
 297 003c A342     		cmp	r3, r4
 298 003e A8BF     		it	ge
 299 0040 2346     		movge	r3, r4
 300 0042 0021     		movs	r1, #0
 301 0044 1337     		adds	r7, r7, #19
 302 0046 E51A     		subs	r5, r4, r3
 303 0048 27F00307 		bic	r7, r7, #3
 304 004c 0320     		movs	r0, #3
 305 004e 0122     		movs	r2, #1
 306 0050 8D42     		cmp	r5, r1
 307 0052 3481     		strh	r4, [r6, #8]	@ movhi
 308 0054 7381     		strh	r3, [r6, #10]	@ movhi
 309 0056 7760     		str	r7, [r6, #4]
 310 0058 3073     		strb	r0, [r6, #12]
 311 005a 3160     		str	r1, [r6]
 312 005c F281     		strh	r2, [r6, #14]	@ movhi
 313 005e 53DD     		ble	.L73
 314 0060 3746     		mov	r7, r6
 315 0062 17E0     		b	.L76
 316              	.L74:
 317 0064 B3F5BE6F 		cmp	r3, #1520
 318 0068 38BF     		it	cc
 319 006a 1946     		movcc	r1, r3
 320 006c C1EB0505 		rsb	r5, r1, r5
 321 0070 28BF     		it	cs
 322 0072 0A46     		movcs	r2, r1
 323 0074 84F80CC0 		strb	ip, [r4, #12]
 324 0078 6073     		strb	r0, [r4, #13]
 325 007a 2060     		str	r0, [r4]
 326 007c 04F11001 		add	r1, r4, #16
 327 0080 3C60     		str	r4, [r7]
 328 0082 002D     		cmp	r5, #0
 329 0084 2381     		strh	r3, [r4, #8]	@ movhi
 330 0086 4FF00103 		mov	r3, #1
 331 008a 6281     		strh	r2, [r4, #10]	@ movhi
 332 008c 6160     		str	r1, [r4, #4]
 333 008e E381     		strh	r3, [r4, #14]	@ movhi
 334 0090 3ADD     		ble	.L73
 335 0092 2746     		mov	r7, r4
 336              	.L76:
 337 0094 0920     		movs	r0, #9
 338 0096 FFF7FEFF 		bl	memp_malloc
 339 009a ABB2     		uxth	r3, r5
 340 009c 0446     		mov	r4, r0
 341 009e 4FF0030C 		mov	ip, #3
 342 00a2 0020     		movs	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOtVs0f.s 			page 7


 343 00a4 4FF4BE61 		mov	r1, #1520
 344 00a8 1A46     		mov	r2, r3
 345 00aa 002C     		cmp	r4, #0
 346 00ac DAD1     		bne	.L74
 347 00ae 204B     		ldr	r3, .L87
 348 00b0 0122     		movs	r2, #1
 349 00b2 3046     		mov	r0, r6
 350 00b4 1A70     		strb	r2, [r3]
 351 00b6 FFF7FEFF 		bl	pbuf_free
 352 00ba 2046     		mov	r0, r4
 353 00bc 29E0     		b	.L62
 354              	.L70:
 355 00be 0820     		movs	r0, #8
 356 00c0 0192     		str	r2, [sp, #4]
 357 00c2 FFF7FEFF 		bl	memp_malloc
 358 00c6 019A     		ldr	r2, [sp, #4]
 359 00c8 0646     		mov	r6, r0
 360 00ca 50B3     		cbz	r0, .L81
 361 00cc 0023     		movs	r3, #0
 362 00ce 0481     		strh	r4, [r0, #8]	@ movhi
 363 00d0 4481     		strh	r4, [r0, #10]	@ movhi
 364 00d2 0273     		strb	r2, [r0, #12]
 365 00d4 4360     		str	r3, [r0, #4]
 366 00d6 0360     		str	r3, [r0]
 367 00d8 16E0     		b	.L73
 368              	.L68:
 369 00da 05F11300 		add	r0, r5, #19
 370 00de E31C     		adds	r3, r4, #3
 371 00e0 23F00303 		bic	r3, r3, #3
 372 00e4 20F00300 		bic	r0, r0, #3
 373 00e8 1844     		add	r0, r0, r3
 374 00ea 80B2     		uxth	r0, r0
 375 00ec FFF7FEFF 		bl	mem_malloc
 376 00f0 0646     		mov	r6, r0
 377 00f2 B0B1     		cbz	r0, .L81
 378 00f4 0544     		add	r5, r5, r0
 379 00f6 1335     		adds	r5, r5, #19
 380 00f8 0023     		movs	r3, #0
 381 00fa 25F00305 		bic	r5, r5, #3
 382 00fe 4560     		str	r5, [r0, #4]
 383 0100 0481     		strh	r4, [r0, #8]	@ movhi
 384 0102 4481     		strh	r4, [r0, #10]	@ movhi
 385 0104 0360     		str	r3, [r0]
 386 0106 0373     		strb	r3, [r0, #12]
 387              	.L73:
 388 0108 0122     		movs	r2, #1
 389 010a 0023     		movs	r3, #0
 390 010c F281     		strh	r2, [r6, #14]	@ movhi
 391 010e 7373     		strb	r3, [r6, #13]
 392 0110 3046     		mov	r0, r6
 393              	.L62:
 394 0112 03B0     		add	sp, sp, #12
 395              		@ sp needed
 396 0114 F0BD     		pop	{r4, r5, r6, r7, pc}
 397              	.L63:
 398 0116 3A25     		movs	r5, #58
 399 0118 7DE7     		b	.L65
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOtVs0f.s 			page 8


 400              	.L67:
 401 011a 0025     		movs	r5, #0
 402 011c 7BE7     		b	.L65
 403              	.L66:
 404 011e 1225     		movs	r5, #18
 405 0120 79E7     		b	.L65
 406              	.L81:
 407 0122 0020     		movs	r0, #0
 408 0124 F5E7     		b	.L62
 409              	.L86:
 410 0126 024B     		ldr	r3, .L87
 411 0128 0122     		movs	r2, #1
 412 012a 1A70     		strb	r2, [r3]
 413 012c F1E7     		b	.L62
 414              	.L88:
 415 012e 00BF     		.align	2
 416              	.L87:
 417 0130 00000000 		.word	pbuf_free_ooseq_pending
 418              		.size	pbuf_alloc, .-pbuf_alloc
 419              		.section	.text.pbuf_realloc,"ax",%progbits
 420              		.align	2
 421              		.global	pbuf_realloc
 422              		.thumb
 423              		.thumb_func
 424              		.type	pbuf_realloc, %function
 425              	pbuf_realloc:
 426              		@ args = 0, pretend = 0, frame = 0
 427              		@ frame_needed = 0, uses_anonymous_args = 0
 428 0000 0289     		ldrh	r2, [r0, #8]
 429 0002 38B5     		push	{r3, r4, r5, lr}
 430 0004 8A42     		cmp	r2, r1
 431 0006 0446     		mov	r4, r0
 432 0008 0D46     		mov	r5, r1
 433 000a 22D9     		bls	.L89
 434 000c 4389     		ldrh	r3, [r0, #10]
 435 000e 891A     		subs	r1, r1, r2
 436 0010 9D42     		cmp	r5, r3
 437 0012 0AD9     		bls	.L91
 438 0014 89B2     		uxth	r1, r1
 439 0016 00E0     		b	.L92
 440              	.L98:
 441 0018 2289     		ldrh	r2, [r4, #8]
 442              	.L92:
 443 001a 0A44     		add	r2, r2, r1
 444 001c 2281     		strh	r2, [r4, #8]	@ movhi
 445 001e 2468     		ldr	r4, [r4]
 446 0020 ED1A     		subs	r5, r5, r3
 447 0022 6389     		ldrh	r3, [r4, #10]
 448 0024 ADB2     		uxth	r5, r5
 449 0026 AB42     		cmp	r3, r5
 450 0028 F6D3     		bcc	.L98
 451              	.L91:
 452 002a 227B     		ldrb	r2, [r4, #12]	@ zero_extendqisi2
 453 002c 4AB9     		cbnz	r2, .L93
 454 002e 9D42     		cmp	r5, r3
 455 0030 07D0     		beq	.L93
 456 0032 6368     		ldr	r3, [r4, #4]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOtVs0f.s 			page 9


 457 0034 2046     		mov	r0, r4
 458 0036 1B1B     		subs	r3, r3, r4
 459 0038 E918     		adds	r1, r5, r3
 460 003a 89B2     		uxth	r1, r1
 461 003c FFF7FEFF 		bl	mem_trim
 462 0040 0446     		mov	r4, r0
 463              	.L93:
 464 0042 2068     		ldr	r0, [r4]
 465 0044 6581     		strh	r5, [r4, #10]	@ movhi
 466 0046 2581     		strh	r5, [r4, #8]	@ movhi
 467 0048 08B1     		cbz	r0, .L94
 468 004a FFF7FEFF 		bl	pbuf_free
 469              	.L94:
 470 004e 0023     		movs	r3, #0
 471 0050 2360     		str	r3, [r4]
 472              	.L89:
 473 0052 38BD     		pop	{r3, r4, r5, pc}
 474              		.size	pbuf_realloc, .-pbuf_realloc
 475              		.section	.text.pbuf_clen,"ax",%progbits
 476              		.align	2
 477              		.global	pbuf_clen
 478              		.thumb
 479              		.thumb_func
 480              		.type	pbuf_clen, %function
 481              	pbuf_clen:
 482              		@ args = 0, pretend = 0, frame = 0
 483              		@ frame_needed = 0, uses_anonymous_args = 0
 484              		@ link register save eliminated.
 485 0000 0346     		mov	r3, r0
 486 0002 30B1     		cbz	r0, .L102
 487 0004 0020     		movs	r0, #0
 488              	.L101:
 489 0006 1B68     		ldr	r3, [r3]
 490 0008 0130     		adds	r0, r0, #1
 491 000a C0B2     		uxtb	r0, r0
 492 000c 002B     		cmp	r3, #0
 493 000e FAD1     		bne	.L101
 494 0010 7047     		bx	lr
 495              	.L102:
 496 0012 7047     		bx	lr
 497              		.size	pbuf_clen, .-pbuf_clen
 498              		.section	.text.pbuf_ref,"ax",%progbits
 499              		.align	2
 500              		.global	pbuf_ref
 501              		.thumb
 502              		.thumb_func
 503              		.type	pbuf_ref, %function
 504              	pbuf_ref:
 505              		@ args = 0, pretend = 0, frame = 0
 506              		@ frame_needed = 0, uses_anonymous_args = 0
 507              		@ link register save eliminated.
 508 0000 10B1     		cbz	r0, .L106
 509 0002 C389     		ldrh	r3, [r0, #14]
 510 0004 0133     		adds	r3, r3, #1
 511 0006 C381     		strh	r3, [r0, #14]	@ movhi
 512              	.L106:
 513 0008 7047     		bx	lr
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOtVs0f.s 			page 10


 514              		.size	pbuf_ref, .-pbuf_ref
 515 000a 00BF     		.section	.text.pbuf_cat,"ax",%progbits
 516              		.align	2
 517              		.global	pbuf_cat
 518              		.thumb
 519              		.thumb_func
 520              		.type	pbuf_cat, %function
 521              	pbuf_cat:
 522              		@ args = 0, pretend = 0, frame = 0
 523              		@ frame_needed = 0, uses_anonymous_args = 0
 524 0000 38B5     		push	{r3, r4, r5, lr}
 525 0002 90B1     		cbz	r0, .L112
 526 0004 89B1     		cbz	r1, .L112
 527 0006 0368     		ldr	r3, [r0]
 528 0008 13B9     		cbnz	r3, .L116
 529 000a 16E0     		b	.L128
 530              	.L127:
 531 000c 1846     		mov	r0, r3
 532 000e 1346     		mov	r3, r2
 533              	.L116:
 534 0010 0D89     		ldrh	r5, [r1, #8]
 535 0012 0489     		ldrh	r4, [r0, #8]
 536 0014 1A68     		ldr	r2, [r3]
 537 0016 2C44     		add	r4, r4, r5
 538 0018 0481     		strh	r4, [r0, #8]	@ movhi
 539 001a 002A     		cmp	r2, #0
 540 001c F6D1     		bne	.L127
 541              	.L114:
 542 001e 0889     		ldrh	r0, [r1, #8]
 543 0020 1A89     		ldrh	r2, [r3, #8]
 544 0022 1960     		str	r1, [r3]
 545 0024 0244     		add	r2, r2, r0
 546 0026 1A81     		strh	r2, [r3, #8]	@ movhi
 547 0028 38BD     		pop	{r3, r4, r5, pc}
 548              	.L112:
 549 002a 0548     		ldr	r0, .L129
 550 002c 0549     		ldr	r1, .L129+4
 551 002e 4FF43C72 		mov	r2, #752
 552 0032 054B     		ldr	r3, .L129+8
 553 0034 FFF7FEFF 		bl	debugPrintf
 554              	.L115:
 555 0038 FEE7     		b	.L115
 556              	.L128:
 557 003a 0346     		mov	r3, r0
 558 003c EFE7     		b	.L114
 559              	.L130:
 560 003e 00BF     		.align	2
 561              	.L129:
 562 0040 00000000 		.word	.LC0
 563 0044 70000000 		.word	.LC3
 564 0048 48000000 		.word	.LC2
 565              		.size	pbuf_cat, .-pbuf_cat
 566              		.section	.text.pbuf_chain,"ax",%progbits
 567              		.align	2
 568              		.global	pbuf_chain
 569              		.thumb
 570              		.thumb_func
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOtVs0f.s 			page 11


 571              		.type	pbuf_chain, %function
 572              	pbuf_chain:
 573              		@ args = 0, pretend = 0, frame = 0
 574              		@ frame_needed = 0, uses_anonymous_args = 0
 575 0000 10B5     		push	{r4, lr}
 576 0002 0C46     		mov	r4, r1
 577 0004 FFF7FEFF 		bl	pbuf_cat
 578 0008 14B1     		cbz	r4, .L131
 579 000a E389     		ldrh	r3, [r4, #14]
 580 000c 0133     		adds	r3, r3, #1
 581 000e E381     		strh	r3, [r4, #14]	@ movhi
 582              	.L131:
 583 0010 10BD     		pop	{r4, pc}
 584              		.size	pbuf_chain, .-pbuf_chain
 585 0012 00BF     		.section	.text.pbuf_dechain,"ax",%progbits
 586              		.align	2
 587              		.global	pbuf_dechain
 588              		.thumb
 589              		.thumb_func
 590              		.type	pbuf_dechain, %function
 591              	pbuf_dechain:
 592              		@ args = 0, pretend = 0, frame = 0
 593              		@ frame_needed = 0, uses_anonymous_args = 0
 594 0000 10B5     		push	{r4, lr}
 595 0002 0468     		ldr	r4, [r0]
 596 0004 0346     		mov	r3, r0
 597 0006 64B1     		cbz	r4, .L139
 598 0008 4289     		ldrh	r2, [r0, #10]
 599 000a 0089     		ldrh	r0, [r0, #8]
 600 000c 0021     		movs	r1, #0
 601 000e 801A     		subs	r0, r0, r2
 602 0010 2081     		strh	r0, [r4, #8]	@ movhi
 603 0012 2046     		mov	r0, r4
 604 0014 1A81     		strh	r2, [r3, #8]	@ movhi
 605 0016 1960     		str	r1, [r3]
 606 0018 FFF7FEFF 		bl	pbuf_free
 607 001c 08B9     		cbnz	r0, .L139
 608 001e 2046     		mov	r0, r4
 609 0020 10BD     		pop	{r4, pc}
 610              	.L139:
 611 0022 0020     		movs	r0, #0
 612 0024 10BD     		pop	{r4, pc}
 613              		.size	pbuf_dechain, .-pbuf_dechain
 614 0026 00BF     		.section	.text.pbuf_copy,"ax",%progbits
 615              		.align	2
 616              		.global	pbuf_copy
 617              		.thumb
 618              		.thumb_func
 619              		.type	pbuf_copy, %function
 620              	pbuf_copy:
 621              		@ args = 0, pretend = 0, frame = 0
 622              		@ frame_needed = 0, uses_anonymous_args = 0
 623 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 624 0004 0546     		mov	r5, r0
 625 0006 0C46     		mov	r4, r1
 626 0008 20B1     		cbz	r0, .L141
 627 000a 19B1     		cbz	r1, .L141
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOtVs0f.s 			page 12


 628 000c 0289     		ldrh	r2, [r0, #8]
 629 000e 0B89     		ldrh	r3, [r1, #8]
 630 0010 9A42     		cmp	r2, r3
 631 0012 07D2     		bcs	.L142
 632              	.L141:
 633 0014 2D48     		ldr	r0, .L182
 634 0016 2E49     		ldr	r1, .L182+4
 635 0018 40F25F32 		movw	r2, #863
 636 001c 2D4B     		ldr	r3, .L182+8
 637 001e FFF7FEFF 		bl	debugPrintf
 638              	.L143:
 639 0022 FEE7     		b	.L143
 640              	.L142:
 641 0024 0026     		movs	r6, #0
 642 0026 3746     		mov	r7, r6
 643              	.L154:
 644 0028 B4F80A80 		ldrh	r8, [r4, #10]
 645 002c 6B89     		ldrh	r3, [r5, #10]
 646 002e C6EB0808 		rsb	r8, r6, r8
 647 0032 DB1B     		subs	r3, r3, r7
 648 0034 4345     		cmp	r3, r8
 649 0036 6168     		ldr	r1, [r4, #4]
 650 0038 6868     		ldr	r0, [r5, #4]
 651 003a B4BF     		ite	lt
 652 003c 1FFA83F8 		uxthlt	r8, r3
 653 0040 1FFA88F8 		uxthge	r8, r8
 654 0044 3844     		add	r0, r0, r7
 655 0046 3144     		add	r1, r1, r6
 656 0048 4246     		mov	r2, r8
 657 004a FFF7FEFF 		bl	memcpy
 658 004e 4644     		add	r6, r6, r8
 659 0050 6389     		ldrh	r3, [r4, #10]
 660 0052 B6B2     		uxth	r6, r6
 661 0054 B342     		cmp	r3, r6
 662 0056 4744     		add	r7, r7, r8
 663 0058 6B89     		ldrh	r3, [r5, #10]
 664 005a BFB2     		uxth	r7, r7
 665 005c 9CBF     		itt	ls
 666 005e 2468     		ldrls	r4, [r4]
 667 0060 0026     		movls	r6, #0
 668 0062 BB42     		cmp	r3, r7
 669 0064 0BD0     		beq	.L177
 670              	.L147:
 671 0066 1CB1     		cbz	r4, .L150
 672 0068 6289     		ldrh	r2, [r4, #10]
 673 006a 2389     		ldrh	r3, [r4, #8]
 674 006c 9A42     		cmp	r2, r3
 675 006e 15D0     		beq	.L178
 676              	.L150:
 677 0070 6A89     		ldrh	r2, [r5, #10]
 678 0072 2B89     		ldrh	r3, [r5, #8]
 679 0074 9A42     		cmp	r2, r3
 680 0076 06D0     		beq	.L179
 681              	.L152:
 682 0078 002C     		cmp	r4, #0
 683 007a D5D1     		bne	.L154
 684 007c 1AE0     		b	.L148
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOtVs0f.s 			page 13


 685              	.L177:
 686 007e 2D68     		ldr	r5, [r5]
 687 0080 BDB1     		cbz	r5, .L180
 688 0082 0027     		movs	r7, #0
 689 0084 EFE7     		b	.L147
 690              	.L179:
 691 0086 2B68     		ldr	r3, [r5]
 692 0088 002B     		cmp	r3, #0
 693 008a F5D0     		beq	.L152
 694 008c 0F48     		ldr	r0, .L182
 695 008e 1249     		ldr	r1, .L182+12
 696 0090 40F28532 		movw	r2, #901
 697 0094 0F4B     		ldr	r3, .L182+8
 698 0096 FFF7FEFF 		bl	debugPrintf
 699              	.L153:
 700 009a FEE7     		b	.L153
 701              	.L178:
 702 009c 2368     		ldr	r3, [r4]
 703 009e 002B     		cmp	r3, #0
 704 00a0 E6D0     		beq	.L150
 705 00a2 0A48     		ldr	r0, .L182
 706 00a4 0C49     		ldr	r1, .L182+12
 707 00a6 4FF46072 		mov	r2, #896
 708 00aa 0A4B     		ldr	r3, .L182+8
 709 00ac FFF7FEFF 		bl	debugPrintf
 710              	.L151:
 711 00b0 FEE7     		b	.L151
 712              	.L180:
 713 00b2 14B9     		cbnz	r4, .L181
 714              	.L148:
 715 00b4 0020     		movs	r0, #0
 716 00b6 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 717              	.L181:
 718 00ba 0448     		ldr	r0, .L182
 719 00bc 0749     		ldr	r1, .L182+16
 720 00be 40F27A32 		movw	r2, #890
 721 00c2 044B     		ldr	r3, .L182+8
 722 00c4 FFF7FEFF 		bl	debugPrintf
 723              	.L149:
 724 00c8 FEE7     		b	.L149
 725              	.L183:
 726 00ca 00BF     		.align	2
 727              	.L182:
 728 00cc 00000000 		.word	.LC0
 729 00d0 A8000000 		.word	.LC4
 730 00d4 48000000 		.word	.LC2
 731 00d8 E8000000 		.word	.LC6
 732 00dc D8000000 		.word	.LC5
 733              		.size	pbuf_copy, .-pbuf_copy
 734              		.section	.text.pbuf_copy_partial,"ax",%progbits
 735              		.align	2
 736              		.global	pbuf_copy_partial
 737              		.thumb
 738              		.thumb_func
 739              		.type	pbuf_copy_partial, %function
 740              	pbuf_copy_partial:
 741              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOtVs0f.s 			page 14


 742              		@ frame_needed = 0, uses_anonymous_args = 0
 743 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 744 0004 0446     		mov	r4, r0
 745 0006 8846     		mov	r8, r1
 746 0008 1646     		mov	r6, r2
 747 000a 58B3     		cbz	r0, .L201
 748 000c 0029     		cmp	r1, #0
 749 000e 31D0     		beq	.L187
 750 0010 9146     		mov	r9, r2
 751 0012 22B3     		cbz	r2, .L189
 752 0014 4FF00009 		mov	r9, #0
 753 0018 4F46     		mov	r7, r9
 754 001a 06E0     		b	.L194
 755              	.L202:
 756 001c 9A42     		cmp	r2, r3
 757 001e 09D8     		bhi	.L192
 758 0020 9B1A     		subs	r3, r3, r2
 759 0022 9BB2     		uxth	r3, r3
 760 0024 2468     		ldr	r4, [r4]
 761 0026 D6B1     		cbz	r6, .L189
 762              	.L203:
 763 0028 CCB1     		cbz	r4, .L189
 764              	.L194:
 765 002a 08EB0700 		add	r0, r8, r7
 766 002e 6289     		ldrh	r2, [r4, #10]
 767 0030 002B     		cmp	r3, #0
 768 0032 F3D1     		bne	.L202
 769              	.L192:
 770 0034 D21A     		subs	r2, r2, r3
 771 0036 95B2     		uxth	r5, r2
 772 0038 B542     		cmp	r5, r6
 773 003a 28BF     		it	cs
 774 003c 3546     		movcs	r5, r6
 775 003e 6168     		ldr	r1, [r4, #4]
 776 0040 761B     		subs	r6, r6, r5
 777 0042 1944     		add	r1, r1, r3
 778 0044 2A46     		mov	r2, r5
 779 0046 A944     		add	r9, r9, r5
 780 0048 2F44     		add	r7, r7, r5
 781 004a B6B2     		uxth	r6, r6
 782 004c FFF7FEFF 		bl	memcpy
 783 0050 1FFA89F9 		uxth	r9, r9
 784 0054 BFB2     		uxth	r7, r7
 785 0056 0023     		movs	r3, #0
 786 0058 2468     		ldr	r4, [r4]
 787 005a 002E     		cmp	r6, #0
 788 005c E4D1     		bne	.L203
 789              	.L189:
 790 005e 4846     		mov	r0, r9
 791 0060 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 792              	.L201:
 793 0064 0748     		ldr	r0, .L204
 794 0066 0849     		ldr	r1, .L204+4
 795 0068 40F29F32 		movw	r2, #927
 796 006c 074B     		ldr	r3, .L204+8
 797 006e FFF7FEFF 		bl	debugPrintf
 798              	.L186:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOtVs0f.s 			page 15


 799 0072 FEE7     		b	.L186
 800              	.L187:
 801 0074 0348     		ldr	r0, .L204
 802 0076 0649     		ldr	r1, .L204+12
 803 0078 4FF46872 		mov	r2, #928
 804 007c 034B     		ldr	r3, .L204+8
 805 007e FFF7FEFF 		bl	debugPrintf
 806              	.L190:
 807 0082 FEE7     		b	.L190
 808              	.L205:
 809              		.align	2
 810              	.L204:
 811 0084 00000000 		.word	.LC0
 812 0088 14010000 		.word	.LC7
 813 008c 48000000 		.word	.LC2
 814 0090 34010000 		.word	.LC8
 815              		.size	pbuf_copy_partial, .-pbuf_copy_partial
 816              		.section	.text.pbuf_take,"ax",%progbits
 817              		.align	2
 818              		.global	pbuf_take
 819              		.thumb
 820              		.thumb_func
 821              		.type	pbuf_take, %function
 822              	pbuf_take:
 823              		@ args = 0, pretend = 0, frame = 0
 824              		@ frame_needed = 0, uses_anonymous_args = 0
 825 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 826 0004 0446     		mov	r4, r0
 827 0006 8846     		mov	r8, r1
 828 0008 1546     		mov	r5, r2
 829 000a D0B1     		cbz	r0, .L219
 830 000c 09B3     		cbz	r1, .L220
 831 000e 0389     		ldrh	r3, [r0, #8]
 832 0010 9342     		cmp	r3, r2
 833 0012 26D3     		bcc	.L215
 834 0014 0027     		movs	r7, #0
 835 0016 82B1     		cbz	r2, .L213
 836              	.L214:
 837 0018 6689     		ldrh	r6, [r4, #10]
 838 001a 6068     		ldr	r0, [r4, #4]
 839 001c B542     		cmp	r5, r6
 840 001e 38BF     		it	cc
 841 0020 2E46     		movcc	r6, r5
 842 0022 AD1B     		subs	r5, r5, r6
 843 0024 08EB0701 		add	r1, r8, r7
 844 0028 3246     		mov	r2, r6
 845 002a 3744     		add	r7, r7, r6
 846 002c ADB2     		uxth	r5, r5
 847 002e FFF7FEFF 		bl	memcpy
 848 0032 BFB2     		uxth	r7, r7
 849 0034 2468     		ldr	r4, [r4]
 850 0036 002D     		cmp	r5, #0
 851 0038 EED1     		bne	.L214
 852              	.L213:
 853 003a 0020     		movs	r0, #0
 854 003c 40B2     		sxtb	r0, r0
 855 003e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOtVs0f.s 			page 16


 856              	.L219:
 857 0042 0A48     		ldr	r0, .L221
 858 0044 0A49     		ldr	r1, .L221+4
 859 0046 40F2CF32 		movw	r2, #975
 860 004a 0A4B     		ldr	r3, .L221+8
 861 004c FFF7FEFF 		bl	debugPrintf
 862              	.L208:
 863 0050 FEE7     		b	.L208
 864              	.L220:
 865 0052 0648     		ldr	r0, .L221
 866 0054 0849     		ldr	r1, .L221+12
 867 0056 4FF47472 		mov	r2, #976
 868 005a 064B     		ldr	r3, .L221+8
 869 005c FFF7FEFF 		bl	debugPrintf
 870              	.L210:
 871 0060 FEE7     		b	.L210
 872              	.L215:
 873 0062 F220     		movs	r0, #242
 874 0064 40B2     		sxtb	r0, r0
 875 0066 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 876              	.L222:
 877 006a 00BF     		.align	2
 878              	.L221:
 879 006c 00000000 		.word	.LC0
 880 0070 58010000 		.word	.LC9
 881 0074 48000000 		.word	.LC2
 882 0078 70010000 		.word	.LC10
 883              		.size	pbuf_take, .-pbuf_take
 884              		.section	.text.pbuf_coalesce,"ax",%progbits
 885              		.align	2
 886              		.global	pbuf_coalesce
 887              		.thumb
 888              		.thumb_func
 889              		.type	pbuf_coalesce, %function
 890              	pbuf_coalesce:
 891              		@ args = 0, pretend = 0, frame = 0
 892              		@ frame_needed = 0, uses_anonymous_args = 0
 893 0000 38B5     		push	{r3, r4, r5, lr}
 894 0002 0368     		ldr	r3, [r0]
 895 0004 0446     		mov	r4, r0
 896 0006 73B1     		cbz	r3, .L226
 897 0008 0846     		mov	r0, r1
 898 000a 0022     		movs	r2, #0
 899 000c 2189     		ldrh	r1, [r4, #8]
 900 000e FFF7FEFF 		bl	pbuf_alloc
 901 0012 0546     		mov	r5, r0
 902 0014 38B1     		cbz	r0, .L226
 903 0016 2146     		mov	r1, r4
 904 0018 FFF7FEFF 		bl	pbuf_copy
 905 001c 2046     		mov	r0, r4
 906 001e FFF7FEFF 		bl	pbuf_free
 907 0022 2846     		mov	r0, r5
 908 0024 38BD     		pop	{r3, r4, r5, pc}
 909              	.L226:
 910 0026 2046     		mov	r0, r4
 911 0028 38BD     		pop	{r3, r4, r5, pc}
 912              		.size	pbuf_coalesce, .-pbuf_coalesce
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOtVs0f.s 			page 17


 913 002a 00BF     		.section	.text.pbuf_get_at,"ax",%progbits
 914              		.align	2
 915              		.global	pbuf_get_at
 916              		.thumb
 917              		.thumb_func
 918              		.type	pbuf_get_at, %function
 919              	pbuf_get_at:
 920              		@ args = 0, pretend = 0, frame = 0
 921              		@ frame_needed = 0, uses_anonymous_args = 0
 922              		@ link register save eliminated.
 923 0000 58B1     		cbz	r0, .L236
 924 0002 4389     		ldrh	r3, [r0, #10]
 925 0004 9942     		cmp	r1, r3
 926 0006 03D2     		bcs	.L233
 927 0008 08E0     		b	.L232
 928              	.L237:
 929 000a 4389     		ldrh	r3, [r0, #10]
 930 000c 8B42     		cmp	r3, r1
 931 000e 05D8     		bhi	.L232
 932              	.L233:
 933 0010 0068     		ldr	r0, [r0]
 934 0012 C91A     		subs	r1, r1, r3
 935 0014 89B2     		uxth	r1, r1
 936 0016 0028     		cmp	r0, #0
 937 0018 F7D1     		bne	.L237
 938              	.L236:
 939 001a 7047     		bx	lr
 940              	.L232:
 941 001c 4368     		ldr	r3, [r0, #4]
 942 001e 585C     		ldrb	r0, [r3, r1]	@ zero_extendqisi2
 943 0020 7047     		bx	lr
 944              		.size	pbuf_get_at, .-pbuf_get_at
 945 0022 00BF     		.section	.text.pbuf_memcmp,"ax",%progbits
 946              		.align	2
 947              		.global	pbuf_memcmp
 948              		.thumb
 949              		.thumb_func
 950              		.type	pbuf_memcmp, %function
 951              	pbuf_memcmp:
 952              		@ args = 0, pretend = 0, frame = 0
 953              		@ frame_needed = 0, uses_anonymous_args = 0
 954              		@ link register save eliminated.
 955 0000 F0B4     		push	{r4, r5, r6, r7}
 956 0002 58B1     		cbz	r0, .L251
 957 0004 4489     		ldrh	r4, [r0, #10]
 958 0006 A142     		cmp	r1, r4
 959 0008 03D2     		bcs	.L241
 960 000a 0BE0     		b	.L240
 961              	.L255:
 962 000c 4489     		ldrh	r4, [r0, #10]
 963 000e 8C42     		cmp	r4, r1
 964 0010 08D8     		bhi	.L240
 965              	.L241:
 966 0012 0068     		ldr	r0, [r0]
 967 0014 091B     		subs	r1, r1, r4
 968 0016 89B2     		uxth	r1, r1
 969 0018 0028     		cmp	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOtVs0f.s 			page 18


 970 001a F7D1     		bne	.L255
 971              	.L251:
 972 001c 4FF6FF70 		movw	r0, #65535
 973              	.L254:
 974 0020 F0BC     		pop	{r4, r5, r6, r7}
 975 0022 7047     		bx	lr
 976              	.L240:
 977 0024 13B3     		cbz	r3, .L253
 978 0026 0027     		movs	r7, #0
 979 0028 BC46     		mov	ip, r7
 980              	.L249:
 981 002a 01EB0C05 		add	r5, r1, ip
 982 002e ADB2     		uxth	r5, r5
 983 0030 0446     		mov	r4, r0
 984              	.L242:
 985 0032 6689     		ldrh	r6, [r4, #10]
 986 0034 AE42     		cmp	r6, r5
 987 0036 0FD8     		bhi	.L256
 988 0038 2468     		ldr	r4, [r4]
 989 003a AD1B     		subs	r5, r5, r6
 990 003c ADB2     		uxth	r5, r5
 991 003e 002C     		cmp	r4, #0
 992 0040 F7D1     		bne	.L242
 993 0042 D55D     		ldrb	r5, [r2, r7]	@ zero_extendqisi2
 994 0044 A542     		cmp	r5, r4
 995 0046 0CD1     		bne	.L257
 996              	.L246:
 997 0048 0137     		adds	r7, r7, #1
 998 004a 1FFA87FC 		uxth	ip, r7
 999 004e 6345     		cmp	r3, ip
 1000 0050 EBD8     		bhi	.L249
 1001 0052 0020     		movs	r0, #0
 1002 0054 F0BC     		pop	{r4, r5, r6, r7}
 1003 0056 7047     		bx	lr
 1004              	.L256:
 1005 0058 6468     		ldr	r4, [r4, #4]
 1006 005a 645D     		ldrb	r4, [r4, r5]	@ zero_extendqisi2
 1007 005c D55D     		ldrb	r5, [r2, r7]	@ zero_extendqisi2
 1008 005e A542     		cmp	r5, r4
 1009 0060 F2D0     		beq	.L246
 1010              	.L257:
 1011 0062 0CF10100 		add	r0, ip, #1
 1012 0066 80B2     		uxth	r0, r0
 1013 0068 F0BC     		pop	{r4, r5, r6, r7}
 1014 006a 7047     		bx	lr
 1015              	.L253:
 1016 006c 1846     		mov	r0, r3
 1017 006e D7E7     		b	.L254
 1018              		.size	pbuf_memcmp, .-pbuf_memcmp
 1019              		.section	.text.pbuf_memfind,"ax",%progbits
 1020              		.align	2
 1021              		.global	pbuf_memfind
 1022              		.thumb
 1023              		.thumb_func
 1024              		.type	pbuf_memfind, %function
 1025              	pbuf_memfind:
 1026              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOtVs0f.s 			page 19


 1027              		@ frame_needed = 0, uses_anonymous_args = 0
 1028 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 1029 0004 B0F80890 		ldrh	r9, [r0, #8]
 1030 0008 1C46     		mov	r4, r3
 1031 000a D318     		adds	r3, r2, r3
 1032 000c 9945     		cmp	r9, r3
 1033 000e 0746     		mov	r7, r0
 1034 0010 1646     		mov	r6, r2
 1035 0012 8846     		mov	r8, r1
 1036 0014 03DA     		bge	.L265
 1037              	.L264:
 1038 0016 4FF6FF70 		movw	r0, #65535
 1039 001a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1040              	.L265:
 1041 001e C2EB0909 		rsb	r9, r2, r9
 1042 0022 1FFA89F9 		uxth	r9, r9
 1043 0026 A145     		cmp	r9, r4
 1044 0028 03D2     		bcs	.L260
 1045 002a F4E7     		b	.L264
 1046              	.L266:
 1047 002c ACB2     		uxth	r4, r5
 1048 002e A145     		cmp	r9, r4
 1049 0030 F1D3     		bcc	.L264
 1050              	.L260:
 1051 0032 3846     		mov	r0, r7
 1052 0034 2146     		mov	r1, r4
 1053 0036 4246     		mov	r2, r8
 1054 0038 3346     		mov	r3, r6
 1055 003a FFF7FEFF 		bl	pbuf_memcmp
 1056 003e 2518     		adds	r5, r4, r0
 1057 0040 0028     		cmp	r0, #0
 1058 0042 F3D1     		bne	.L266
 1059 0044 2046     		mov	r0, r4
 1060 0046 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1061              		.size	pbuf_memfind, .-pbuf_memfind
 1062 004a 00BF     		.section	.text.pbuf_strstr,"ax",%progbits
 1063              		.align	2
 1064              		.global	pbuf_strstr
 1065              		.thumb
 1066              		.thumb_func
 1067              		.type	pbuf_strstr, %function
 1068              	pbuf_strstr:
 1069              		@ args = 0, pretend = 0, frame = 8
 1070              		@ frame_needed = 0, uses_anonymous_args = 0
 1071 0000 30B5     		push	{r4, r5, lr}
 1072 0002 0446     		mov	r4, r0
 1073 0004 83B0     		sub	sp, sp, #12
 1074 0006 09B1     		cbz	r1, .L270
 1075 0008 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 1076 000a 1BB9     		cbnz	r3, .L272
 1077              	.L270:
 1078 000c 4FF6FF70 		movw	r0, #65535
 1079              	.L268:
 1080 0010 03B0     		add	sp, sp, #12
 1081              		@ sp needed
 1082 0012 30BD     		pop	{r4, r5, pc}
 1083              	.L272:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOtVs0f.s 			page 20


 1084 0014 0089     		ldrh	r0, [r0, #8]
 1085 0016 4FF6FF75 		movw	r5, #65535
 1086 001a A842     		cmp	r0, r5
 1087 001c F8D0     		beq	.L268
 1088 001e 0846     		mov	r0, r1
 1089 0020 0191     		str	r1, [sp, #4]
 1090 0022 FFF7FEFF 		bl	strlen
 1091 0026 4FF6FE73 		movw	r3, #65534
 1092 002a 9842     		cmp	r0, r3
 1093 002c 0246     		mov	r2, r0
 1094 002e 0199     		ldr	r1, [sp, #4]
 1095 0030 02D9     		bls	.L273
 1096 0032 2846     		mov	r0, r5
 1097 0034 03B0     		add	sp, sp, #12
 1098              		@ sp needed
 1099 0036 30BD     		pop	{r4, r5, pc}
 1100              	.L273:
 1101 0038 2046     		mov	r0, r4
 1102 003a 92B2     		uxth	r2, r2
 1103 003c 0023     		movs	r3, #0
 1104 003e 03B0     		add	sp, sp, #12
 1105              		@ sp needed
 1106 0040 BDE83040 		pop	{r4, r5, lr}
 1107 0044 FFF7FEBF 		b	pbuf_memfind
 1108              		.size	pbuf_strstr, .-pbuf_strstr
 1109              		.comm	pbuf_free_ooseq_pending,1,1
 1110              		.section	.rodata.str1.4,"aMS",%progbits,1
 1111              		.align	2
 1112              	.LC0:
 1113 0000 41737365 		.ascii	"Assertion \"%s\" failed at line %d in %s\012\000"
 1113      7274696F 
 1113      6E202225 
 1113      73222066 
 1113      61696C65 
 1114              	.LC1:
 1115 0028 696E6372 		.ascii	"increment_magnitude <= p->len\000"
 1115      656D656E 
 1115      745F6D61 
 1115      676E6974 
 1115      75646520 
 1116 0046 0000     		.space	2
 1117              	.LC2:
 1118 0048 2E2E2F73 		.ascii	"../src/Duet/Lwip/lwip/src/core/pbuf.c\000"
 1118      72632F44 
 1118      7565742F 
 1118      4C776970 
 1118      2F6C7769 
 1119 006e 0000     		.space	2
 1120              	.LC3:
 1121 0070 28682021 		.ascii	"(h != NULL) && (t != NULL) (programmer violates API"
 1121      3D204E55 
 1121      4C4C2920 
 1121      26262028 
 1121      7420213D 
 1122 00a3 2900     		.ascii	")\000"
 1123 00a5 000000   		.space	3
 1124              	.LC4:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOtVs0f.s 			page 21


 1125 00a8 70627566 		.ascii	"pbuf_copy: target not big enough to hold source\000"
 1125      5F636F70 
 1125      793A2074 
 1125      61726765 
 1125      74206E6F 
 1126              	.LC5:
 1127 00d8 705F746F 		.ascii	"p_to != NULL\000"
 1127      20213D20 
 1127      4E554C4C 
 1127      00
 1128 00e5 000000   		.space	3
 1129              	.LC6:
 1130 00e8 70627566 		.ascii	"pbuf_copy() does not allow packet queues!\012\000"
 1130      5F636F70 
 1130      79282920 
 1130      646F6573 
 1130      206E6F74 
 1131 0113 00       		.space	1
 1132              	.LC7:
 1133 0114 70627566 		.ascii	"pbuf_copy_partial: invalid buf\000"
 1133      5F636F70 
 1133      795F7061 
 1133      72746961 
 1133      6C3A2069 
 1134 0133 00       		.space	1
 1135              	.LC8:
 1136 0134 70627566 		.ascii	"pbuf_copy_partial: invalid dataptr\000"
 1136      5F636F70 
 1136      795F7061 
 1136      72746961 
 1136      6C3A2069 
 1137 0157 00       		.space	1
 1138              	.LC9:
 1139 0158 70627566 		.ascii	"pbuf_take: invalid buf\000"
 1139      5F74616B 
 1139      653A2069 
 1139      6E76616C 
 1139      69642062 
 1140 016f 00       		.space	1
 1141              	.LC10:
 1142 0170 70627566 		.ascii	"pbuf_take: invalid dataptr\000"
 1142      5F74616B 
 1142      653A2069 
 1142      6E76616C 
 1142      69642064 
 1143 018b 00       		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
