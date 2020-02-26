ARM GAS  C:\Users\George\AppData\Local\Temp\ccugPYrz.s 			page 1


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
  14              		.file	"mem.c"
  15              		.section	.text.mem_init,"ax",%progbits
  16              		.align	2
  17              		.global	mem_init
  18              		.thumb
  19              		.thumb_func
  20              		.type	mem_init, %function
  21              	mem_init:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 F0B4     		push	{r4, r5, r6, r7}
  26 0002 0F4B     		ldr	r3, .L2
  27 0004 0F48     		ldr	r0, .L2+4
  28 0006 23F00303 		bic	r3, r3, #3
  29 000a 4FF48062 		mov	r2, #1024
  30 000e 0E4E     		ldr	r6, .L2+8
  31 0010 0E4C     		ldr	r4, .L2+12
  32 0012 0127     		movs	r7, #1
  33 0014 0021     		movs	r1, #0
  34 0016 DFF838C0 		ldr	ip, .L2+16
  35 001a 03F58065 		add	r5, r3, #1024
  36 001e 83F80474 		strb	r7, [r3, #1028]
  37 0022 1A80     		strh	r2, [r3]	@ movhi
  38 0024 A0F8C420 		strh	r2, [r0, #196]	@ movhi
  39 0028 1971     		strb	r1, [r3, #4]
  40 002a 3360     		str	r3, [r6]
  41 002c 2560     		str	r5, [r4]
  42 002e CCF80030 		str	r3, [ip]
  43 0032 A3F80024 		strh	r2, [r3, #1024]	@ movhi
  44 0036 A3F80224 		strh	r2, [r3, #1026]	@ movhi
  45 003a 5980     		strh	r1, [r3, #2]	@ movhi
  46 003c F0BC     		pop	{r4, r5, r6, r7}
  47 003e 7047     		bx	lr
  48              	.L3:
  49              		.align	2
  50              	.L2:
  51 0040 03000000 		.word	ram_heap+3
  52 0044 00000000 		.word	lwip_stats
  53 0048 00000000 		.word	.LANCHOR2
  54 004c 00000000 		.word	.LANCHOR1
  55 0050 00000000 		.word	.LANCHOR0
  56              		.size	mem_init, .-mem_init
  57              		.section	.text.mem_free,"ax",%progbits
ARM GAS  C:\Users\George\AppData\Local\Temp\ccugPYrz.s 			page 2


  58              		.align	2
  59              		.global	mem_free
  60              		.thumb
  61              		.thumb_func
  62              		.type	mem_free, %function
  63              	mem_free:
  64              		@ args = 0, pretend = 0, frame = 0
  65              		@ frame_needed = 0, uses_anonymous_args = 0
  66              		@ link register save eliminated.
  67 0000 2DE9F001 		push	{r4, r5, r6, r7, r8}
  68 0004 0028     		cmp	r0, #0
  69 0006 4ED0     		beq	.L4
  70 0008 284B     		ldr	r3, .L15
  71 000a 1B68     		ldr	r3, [r3]
  72 000c 9842     		cmp	r0, r3
  73 000e 44D3     		bcc	.L7
  74 0010 274A     		ldr	r2, .L15+4
  75 0012 1468     		ldr	r4, [r2]
  76 0014 A042     		cmp	r0, r4
  77 0016 40D2     		bcs	.L7
  78 0018 264E     		ldr	r6, .L15+8
  79 001a 0025     		movs	r5, #0
  80 001c 3168     		ldr	r1, [r6]
  81 001e 264F     		ldr	r7, .L15+12
  82 0020 A0F10802 		sub	r2, r0, #8
  83 0024 00F8045C 		strb	r5, [r0, #-4]
  84 0028 8A42     		cmp	r2, r1
  85 002a B7F8C680 		ldrh	r8, [r7, #198]
  86 002e 30F8081C 		ldrh	r1, [r0, #-8]
  87 0032 C3EB020C 		rsb	ip, r3, r2
  88 0036 C1EB0808 		rsb	r8, r1, r8
  89 003a 03EB0105 		add	r5, r3, r1
  90 003e 38BF     		it	cc
  91 0040 3260     		strcc	r2, [r6]
  92 0042 E044     		add	r8, r8, ip
  93 0044 AA42     		cmp	r2, r5
  94 0046 A7F8C680 		strh	r8, [r7, #198]	@ movhi
  95 004a 0FD0     		beq	.L10
  96 004c 2F79     		ldrb	r7, [r5, #4]	@ zero_extendqisi2
  97 004e 6FB9     		cbnz	r7, .L10
  98 0050 AC42     		cmp	r4, r5
  99 0052 0BD0     		beq	.L10
 100 0054 3468     		ldr	r4, [r6]
 101 0056 174F     		ldr	r7, .L15+8
 102 0058 A542     		cmp	r5, r4
 103 005a 5C5A     		ldrh	r4, [r3, r1]
 104 005c 08BF     		it	eq
 105 005e 3A60     		streq	r2, [r7]
 106 0060 20F8084C 		strh	r4, [r0, #-8]	@ movhi
 107 0064 595A     		ldrh	r1, [r3, r1]
 108 0066 1944     		add	r1, r1, r3
 109 0068 A1F802C0 		strh	ip, [r1, #2]	@ movhi
 110              	.L10:
 111 006c 30F8064C 		ldrh	r4, [r0, #-6]
 112 0070 1919     		adds	r1, r3, r4
 113 0072 8A42     		cmp	r2, r1
 114 0074 17D0     		beq	.L4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccugPYrz.s 			page 3


 115 0076 0D79     		ldrb	r5, [r1, #4]	@ zero_extendqisi2
 116 0078 ADB9     		cbnz	r5, .L4
 117 007a 3568     		ldr	r5, [r6]
 118 007c 0D4E     		ldr	r6, .L15+8
 119 007e AA42     		cmp	r2, r5
 120 0080 30F8082C 		ldrh	r2, [r0, #-8]
 121 0084 08BF     		it	eq
 122 0086 3160     		streq	r1, [r6]
 123 0088 1A53     		strh	r2, [r3, r4]	@ movhi
 124 008a 30F8082C 		ldrh	r2, [r0, #-8]
 125 008e C91A     		subs	r1, r1, r3
 126 0090 1344     		add	r3, r3, r2
 127 0092 5980     		strh	r1, [r3, #2]	@ movhi
 128 0094 BDE8F001 		pop	{r4, r5, r6, r7, r8}
 129 0098 7047     		bx	lr
 130              	.L7:
 131 009a 074B     		ldr	r3, .L15+12
 132 009c B3F8CC20 		ldrh	r2, [r3, #204]
 133 00a0 0132     		adds	r2, r2, #1
 134 00a2 A3F8CC20 		strh	r2, [r3, #204]	@ movhi
 135              	.L4:
 136 00a6 BDE8F001 		pop	{r4, r5, r6, r7, r8}
 137 00aa 7047     		bx	lr
 138              	.L16:
 139              		.align	2
 140              	.L15:
 141 00ac 00000000 		.word	.LANCHOR0
 142 00b0 00000000 		.word	.LANCHOR1
 143 00b4 00000000 		.word	.LANCHOR2
 144 00b8 00000000 		.word	lwip_stats
 145              		.size	mem_free, .-mem_free
 146              		.section	.text.mem_trim,"ax",%progbits
 147              		.align	2
 148              		.global	mem_trim
 149              		.thumb
 150              		.thumb_func
 151              		.type	mem_trim, %function
 152              	mem_trim:
 153              		@ args = 0, pretend = 0, frame = 0
 154              		@ frame_needed = 0, uses_anonymous_args = 0
 155              		@ link register save eliminated.
 156 0000 0331     		adds	r1, r1, #3
 157 0002 4FF6FC73 		movw	r3, #65532
 158 0006 0B40     		ands	r3, r3, r1
 159 0008 0B2B     		cmp	r3, #11
 160 000a 2DE9F003 		push	{r4, r5, r6, r7, r8, r9}
 161 000e 4FD9     		bls	.L28
 162 0010 B3F5806F 		cmp	r3, #1024
 163 0014 6FD8     		bhi	.L30
 164              	.L18:
 165 0016 3A4A     		ldr	r2, .L40
 166 0018 1268     		ldr	r2, [r2]
 167 001a 8242     		cmp	r2, r0
 168 001c 3FD8     		bhi	.L20
 169 001e 3949     		ldr	r1, .L40+4
 170 0020 0968     		ldr	r1, [r1]
 171 0022 8842     		cmp	r0, r1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccugPYrz.s 			page 4


 172 0024 3BD2     		bcs	.L20
 173 0026 A0F10805 		sub	r5, r0, #8
 174 002a 30F8084C 		ldrh	r4, [r0, #-8]
 175 002e AD1A     		subs	r5, r5, r2
 176 0030 ADB2     		uxth	r5, r5
 177 0032 A4F10801 		sub	r1, r4, #8
 178 0036 491B     		subs	r1, r1, r5
 179 0038 89B2     		uxth	r1, r1
 180 003a 9942     		cmp	r1, r3
 181 003c 5BD3     		bcc	.L30
 182 003e 8B42     		cmp	r3, r1
 183 0040 33D0     		beq	.L19
 184 0042 1619     		adds	r6, r2, r4
 185 0044 3779     		ldrb	r7, [r6, #4]	@ zero_extendqisi2
 186 0046 AFB3     		cbz	r7, .L39
 187 0048 03F11406 		add	r6, r3, #20
 188 004c 8E42     		cmp	r6, r1
 189 004e 2CD8     		bhi	.L19
 190 0050 DFF8B880 		ldr	r8, .L40+12
 191 0054 05F10806 		add	r6, r5, #8
 192 0058 1E44     		add	r6, r6, r3
 193 005a B6B2     		uxth	r6, r6
 194 005c D8F80070 		ldr	r7, [r8]
 195 0060 02EB060C 		add	ip, r2, r6
 196 0064 BC45     		cmp	ip, r7
 197 0066 4FF00007 		mov	r7, #0
 198 006a 8CF80470 		strb	r7, [ip, #4]
 199 006e 9453     		strh	r4, [r2, r6]	@ movhi
 200 0070 ACF80250 		strh	r5, [ip, #2]	@ movhi
 201 0074 20F8086C 		strh	r6, [r0, #-8]	@ movhi
 202 0078 945B     		ldrh	r4, [r2, r6]
 203 007a 38BF     		it	cc
 204 007c C8F800C0 		strcc	ip, [r8]
 205 0080 B4F5806F 		cmp	r4, #1024
 206 0084 1CBF     		itt	ne
 207 0086 1219     		addne	r2, r2, r4
 208 0088 5680     		strhne	r6, [r2, #2]	@ movhi
 209              	.L27:
 210 008a 1F4A     		ldr	r2, .L40+8
 211 008c B2F8C640 		ldrh	r4, [r2, #198]
 212 0090 611A     		subs	r1, r4, r1
 213 0092 0B44     		add	r3, r3, r1
 214 0094 A2F8C630 		strh	r3, [r2, #198]	@ movhi
 215 0098 BDE8F003 		pop	{r4, r5, r6, r7, r8, r9}
 216 009c 7047     		bx	lr
 217              	.L20:
 218 009e 1A4B     		ldr	r3, .L40+8
 219 00a0 B3F8CC20 		ldrh	r2, [r3, #204]
 220 00a4 0132     		adds	r2, r2, #1
 221 00a6 A3F8CC20 		strh	r2, [r3, #204]	@ movhi
 222              	.L19:
 223 00aa BDE8F003 		pop	{r4, r5, r6, r7, r8, r9}
 224 00ae 7047     		bx	lr
 225              	.L28:
 226 00b0 0C23     		movs	r3, #12
 227 00b2 B0E7     		b	.L18
 228              	.L39:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccugPYrz.s 			page 5


 229 00b4 DFF85480 		ldr	r8, .L40+12
 230 00b8 05F1080C 		add	ip, r5, #8
 231 00bc 32F80490 		ldrh	r9, [r2, r4]
 232 00c0 9C44     		add	ip, ip, r3
 233 00c2 D8F80040 		ldr	r4, [r8]
 234 00c6 1FFA8CFC 		uxth	ip, ip
 235 00ca B442     		cmp	r4, r6
 236 00cc 02EB0C04 		add	r4, r2, ip
 237 00d0 4FF00006 		mov	r6, #0
 238 00d4 A4F80090 		strh	r9, [r4]	@ movhi
 239 00d8 6580     		strh	r5, [r4, #2]	@ movhi
 240 00da 2671     		strb	r6, [r4, #4]
 241 00dc 20F808CC 		strh	ip, [r0, #-8]	@ movhi
 242 00e0 08BF     		it	eq
 243 00e2 C8F80040 		streq	r4, [r8]
 244 00e6 2488     		ldrh	r4, [r4]
 245 00e8 B4F5806F 		cmp	r4, #1024
 246 00ec CDD0     		beq	.L27
 247 00ee 2244     		add	r2, r2, r4
 248 00f0 A2F802C0 		strh	ip, [r2, #2]	@ movhi
 249 00f4 C9E7     		b	.L27
 250              	.L30:
 251 00f6 0020     		movs	r0, #0
 252 00f8 BDE8F003 		pop	{r4, r5, r6, r7, r8, r9}
 253 00fc 7047     		bx	lr
 254              	.L41:
 255 00fe 00BF     		.align	2
 256              	.L40:
 257 0100 00000000 		.word	.LANCHOR0
 258 0104 00000000 		.word	.LANCHOR1
 259 0108 00000000 		.word	lwip_stats
 260 010c 00000000 		.word	.LANCHOR2
 261              		.size	mem_trim, .-mem_trim
 262              		.section	.text.mem_malloc,"ax",%progbits
 263              		.align	2
 264              		.global	mem_malloc
 265              		.thumb
 266              		.thumb_func
 267              		.type	mem_malloc, %function
 268              	mem_malloc:
 269              		@ args = 0, pretend = 0, frame = 0
 270              		@ frame_needed = 0, uses_anonymous_args = 0
 271              		@ link register save eliminated.
 272 0000 2DE9F003 		push	{r4, r5, r6, r7, r8, r9}
 273 0004 78B3     		cbz	r0, .L43
 274 0006 0330     		adds	r0, r0, #3
 275 0008 4FF6FC77 		movw	r7, #65532
 276 000c 0740     		ands	r7, r7, r0
 277 000e 0B2F     		cmp	r7, #11
 278 0010 2CD9     		bls	.L58
 279 0012 B7F5806F 		cmp	r7, #1024
 280 0016 67D8     		bhi	.L59
 281 0018 C7F58065 		rsb	r5, r7, #1024
 282              	.L44:
 283 001c DFF80081 		ldr	r8, .L76+8
 284 0020 DFF80091 		ldr	r9, .L76+12
 285 0024 D8F800C0 		ldr	ip, [r8]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccugPYrz.s 			page 6


 286 0028 D9F80020 		ldr	r2, [r9]
 287 002c C2EB0C03 		rsb	r3, r2, ip
 288 0030 9BB2     		uxth	r3, r3
 289 0032 9D42     		cmp	r5, r3
 290 0034 09DC     		bgt	.L56
 291 0036 0FE0     		b	.L45
 292              	.L72:
 293 0038 D45A     		ldrh	r4, [r2, r3]
 294 003a A4F10806 		sub	r6, r4, #8
 295 003e F61A     		subs	r6, r6, r3
 296 0040 BE42     		cmp	r6, r7
 297 0042 17D2     		bcs	.L71
 298 0044 2346     		mov	r3, r4
 299 0046 AB42     		cmp	r3, r5
 300 0048 06DA     		bge	.L45
 301              	.L56:
 302 004a D018     		adds	r0, r2, r3
 303 004c 0179     		ldrb	r1, [r0, #4]	@ zero_extendqisi2
 304 004e 0029     		cmp	r1, #0
 305 0050 F2D0     		beq	.L72
 306 0052 D35A     		ldrh	r3, [r2, r3]
 307 0054 AB42     		cmp	r3, r5
 308 0056 F8DB     		blt	.L56
 309              	.L45:
 310 0058 2F4B     		ldr	r3, .L76
 311 005a 0020     		movs	r0, #0
 312 005c B3F8CA20 		ldrh	r2, [r3, #202]
 313 0060 0132     		adds	r2, r2, #1
 314 0062 A3F8CA20 		strh	r2, [r3, #202]	@ movhi
 315              	.L43:
 316 0066 BDE8F003 		pop	{r4, r5, r6, r7, r8, r9}
 317 006a 7047     		bx	lr
 318              	.L58:
 319 006c 4FF47D75 		mov	r5, #1012
 320 0070 0C27     		movs	r7, #12
 321 0072 D3E7     		b	.L44
 322              	.L71:
 323 0074 07F11405 		add	r5, r7, #20
 324 0078 B542     		cmp	r5, r6
 325 007a 16D9     		bls	.L73
 326 007c 264B     		ldr	r3, .L76
 327 007e 0121     		movs	r1, #1
 328 0080 0171     		strb	r1, [r0, #4]
 329 0082 B3F8C610 		ldrh	r1, [r3, #198]
 330 0086 821A     		subs	r2, r0, r2
 331 0088 0C44     		add	r4, r4, r1
 332 008a A21A     		subs	r2, r4, r2
 333 008c B3F8C810 		ldrh	r1, [r3, #200]
 334 0090 92B2     		uxth	r2, r2
 335 0092 9142     		cmp	r1, r2
 336 0094 A3F8C620 		strh	r2, [r3, #198]	@ movhi
 337 0098 01D2     		bcs	.L51
 338              	.L70:
 339 009a A3F8C820 		strh	r2, [r3, #200]	@ movhi
 340              	.L51:
 341 009e 8445     		cmp	ip, r0
 342 00a0 24D0     		beq	.L74
ARM GAS  C:\Users\George\AppData\Local\Temp\ccugPYrz.s 			page 7


 343              	.L53:
 344 00a2 BDE8F003 		pop	{r4, r5, r6, r7, r8, r9}
 345 00a6 0830     		adds	r0, r0, #8
 346 00a8 7047     		bx	lr
 347              	.L73:
 348 00aa 07F10805 		add	r5, r7, #8
 349 00ae 1D44     		add	r5, r5, r3
 350 00b0 ADB2     		uxth	r5, r5
 351 00b2 5619     		adds	r6, r2, r5
 352 00b4 3171     		strb	r1, [r6, #4]
 353 00b6 5453     		strh	r4, [r2, r5]	@ movhi
 354 00b8 7380     		strh	r3, [r6, #2]	@ movhi
 355 00ba 0580     		strh	r5, [r0]	@ movhi
 356 00bc 535B     		ldrh	r3, [r2, r5]
 357 00be 0121     		movs	r1, #1
 358 00c0 B3F5806F 		cmp	r3, #1024
 359 00c4 18BF     		it	ne
 360 00c6 9B18     		addne	r3, r3, r2
 361 00c8 0171     		strb	r1, [r0, #4]
 362 00ca 18BF     		it	ne
 363 00cc 5D80     		strhne	r5, [r3, #2]	@ movhi
 364 00ce 124B     		ldr	r3, .L76
 365 00d0 B3F8C620 		ldrh	r2, [r3, #198]
 366 00d4 B3F8C810 		ldrh	r1, [r3, #200]
 367 00d8 0832     		adds	r2, r2, #8
 368 00da 3A44     		add	r2, r2, r7
 369 00dc 92B2     		uxth	r2, r2
 370 00de 9142     		cmp	r1, r2
 371 00e0 A3F8C620 		strh	r2, [r3, #198]	@ movhi
 372 00e4 DBD2     		bcs	.L51
 373 00e6 D8E7     		b	.L70
 374              	.L59:
 375 00e8 0020     		movs	r0, #0
 376 00ea BCE7     		b	.L43
 377              	.L74:
 378 00ec 9CF80430 		ldrb	r3, [ip, #4]	@ zero_extendqisi2
 379 00f0 7BB1     		cbz	r3, .L54
 380 00f2 0A4B     		ldr	r3, .L76+4
 381 00f4 1A68     		ldr	r2, [r3]
 382 00f6 9445     		cmp	ip, r2
 383 00f8 0BD0     		beq	.L54
 384 00fa D9F80010 		ldr	r1, [r9]
 385 00fe 01E0     		b	.L55
 386              	.L75:
 387 0100 9445     		cmp	ip, r2
 388 0102 06D0     		beq	.L54
 389              	.L55:
 390 0104 BCF800C0 		ldrh	ip, [ip]
 391 0108 8C44     		add	ip, ip, r1
 392 010a 9CF80430 		ldrb	r3, [ip, #4]	@ zero_extendqisi2
 393 010e 002B     		cmp	r3, #0
 394 0110 F6D1     		bne	.L75
 395              	.L54:
 396 0112 C8F800C0 		str	ip, [r8]
 397 0116 C4E7     		b	.L53
 398              	.L77:
 399              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccugPYrz.s 			page 8


 400              	.L76:
 401 0118 00000000 		.word	lwip_stats
 402 011c 00000000 		.word	.LANCHOR1
 403 0120 00000000 		.word	.LANCHOR2
 404 0124 00000000 		.word	.LANCHOR0
 405              		.size	mem_malloc, .-mem_malloc
 406              		.section	.text.mem_calloc,"ax",%progbits
 407              		.align	2
 408              		.global	mem_calloc
 409              		.thumb
 410              		.thumb_func
 411              		.type	mem_calloc, %function
 412              	mem_calloc:
 413              		@ args = 0, pretend = 0, frame = 0
 414              		@ frame_needed = 0, uses_anonymous_args = 0
 415 0000 38B5     		push	{r3, r4, r5, lr}
 416 0002 01FB00F4 		mul	r4, r1, r0
 417 0006 A0B2     		uxth	r0, r4
 418 0008 FFF7FEFF 		bl	mem_malloc
 419 000c 0546     		mov	r5, r0
 420 000e 18B1     		cbz	r0, .L79
 421 0010 2246     		mov	r2, r4
 422 0012 0021     		movs	r1, #0
 423 0014 FFF7FEFF 		bl	memset
 424              	.L79:
 425 0018 2846     		mov	r0, r5
 426 001a 38BD     		pop	{r3, r4, r5, pc}
 427              		.size	mem_calloc, .-mem_calloc
 428              		.comm	ram_heap,1044,4
 429              		.section	.bss.lfree,"aw",%nobits
 430              		.align	2
 431              		.set	.LANCHOR2,. + 0
 432              		.type	lfree, %object
 433              		.size	lfree, 4
 434              	lfree:
 435 0000 00000000 		.space	4
 436              		.section	.bss.ram_end,"aw",%nobits
 437              		.align	2
 438              		.set	.LANCHOR1,. + 0
 439              		.type	ram_end, %object
 440              		.size	ram_end, 4
 441              	ram_end:
 442 0000 00000000 		.space	4
 443              		.section	.bss.ram,"aw",%nobits
 444              		.align	2
 445              		.set	.LANCHOR0,. + 0
 446              		.type	ram, %object
 447              		.size	ram, 4
 448              	ram:
 449 0000 00000000 		.space	4
 450              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
