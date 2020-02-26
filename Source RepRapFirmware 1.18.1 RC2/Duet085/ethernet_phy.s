ARM GAS  C:\Users\George\AppData\Local\Temp\ccD4XH3F.s 			page 1


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
  14              		.file	"ethernet_phy.c"
  15              		.section	.text.ethernet_phy_read_register,"ax",%progbits
  16              		.align	2
  17              		.global	ethernet_phy_read_register
  18              		.thumb
  19              		.thumb_func
  20              		.type	ethernet_phy_read_register, %function
  21              	ethernet_phy_read_register:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 38B5     		push	{r3, r4, r5, lr}
  25 0002 0568     		ldr	r5, [r0]
  26 0004 0446     		mov	r4, r0
  27 0006 45F01005 		orr	r5, r5, #16
  28 000a D2B2     		uxtb	r2, r2
  29 000c 0560     		str	r5, [r0]
  30 000e FFF7FEFF 		bl	emac_phy_read
  31 0012 2368     		ldr	r3, [r4]
  32 0014 23F01003 		bic	r3, r3, #16
  33 0018 2360     		str	r3, [r4]
  34 001a 38BD     		pop	{r3, r4, r5, pc}
  35              		.size	ethernet_phy_read_register, .-ethernet_phy_read_register
  36              		.section	.text.ethernet_phy_init,"ax",%progbits
  37              		.align	2
  38              		.global	ethernet_phy_init
  39              		.thumb
  40              		.thumb_func
  41              		.type	ethernet_phy_init, %function
  42              	ethernet_phy_init:
  43              		@ args = 0, pretend = 0, frame = 0
  44              		@ frame_needed = 0, uses_anonymous_args = 0
  45              		@ link register save eliminated.
  46 0000 1049     		ldr	r1, .L13
  47 0002 0346     		mov	r3, r0
  48 0004 8A42     		cmp	r2, r1
  49 0006 01D9     		bls	.L12
  50 0008 FF20     		movs	r0, #255
  51 000a 7047     		bx	lr
  52              	.L12:
  53 000c 0E49     		ldr	r1, .L13+4
  54 000e 8A42     		cmp	r2, r1
  55 0010 11D8     		bhi	.L8
  56 0012 0E49     		ldr	r1, .L13+8
  57 0014 8A42     		cmp	r2, r1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccD4XH3F.s 			page 2


  58 0016 11D8     		bhi	.L9
  59 0018 0D49     		ldr	r1, .L13+12
  60 001a 8A42     		cmp	r2, r1
  61 001c 8CBF     		ite	hi
  62 001e 4FF48062 		movhi	r2, #1024
  63 0022 0022     		movls	r2, #0
  64              	.L6:
  65 0024 5968     		ldr	r1, [r3, #4]
  66 0026 0020     		movs	r0, #0
  67 0028 21F44061 		bic	r1, r1, #3072
  68 002c 5960     		str	r1, [r3, #4]
  69 002e 5968     		ldr	r1, [r3, #4]
  70 0030 0A43     		orrs	r2, r2, r1
  71 0032 5A60     		str	r2, [r3, #4]
  72 0034 7047     		bx	lr
  73              	.L8:
  74 0036 4FF44062 		mov	r2, #3072
  75 003a F3E7     		b	.L6
  76              	.L9:
  77 003c 4FF40062 		mov	r2, #2048
  78 0040 F0E7     		b	.L6
  79              	.L14:
  80 0042 00BF     		.align	2
  81              	.L13:
  82 0044 00688909 		.word	160000000
  83 0048 00B4C404 		.word	80000000
  84 004c 005A6202 		.word	40000000
  85 0050 002D3101 		.word	20000000
  86              		.size	ethernet_phy_init, .-ethernet_phy_init
  87              		.section	.text.ethernet_phy_set_link,"ax",%progbits
  88              		.align	2
  89              		.global	ethernet_phy_set_link
  90              		.thumb
  91              		.thumb_func
  92              		.type	ethernet_phy_set_link, %function
  93              	ethernet_phy_set_link:
  94              		@ args = 0, pretend = 0, frame = 8
  95              		@ frame_needed = 0, uses_anonymous_args = 0
  96 0000 70B5     		push	{r4, r5, r6, lr}
  97 0002 0368     		ldr	r3, [r0]
  98 0004 82B0     		sub	sp, sp, #8
  99 0006 43F01003 		orr	r3, r3, #16
 100 000a 1546     		mov	r5, r2
 101 000c 0360     		str	r3, [r0]
 102 000e 0122     		movs	r2, #1
 103 0010 6B46     		mov	r3, sp
 104 0012 0446     		mov	r4, r0
 105 0014 0E46     		mov	r6, r1
 106 0016 FFF7FEFF 		bl	emac_phy_read
 107 001a C0B9     		cbnz	r0, .L39
 108 001c 009B     		ldr	r3, [sp]
 109 001e 5807     		lsls	r0, r3, #29
 110 0020 06D4     		bmi	.L18
 111 0022 2368     		ldr	r3, [r4]
 112 0024 FF20     		movs	r0, #255
 113 0026 23F01003 		bic	r3, r3, #16
 114 002a 2360     		str	r3, [r4]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccD4XH3F.s 			page 3


 115              	.L38:
 116 002c 02B0     		add	sp, sp, #8
 117              		@ sp needed
 118 002e 70BD     		pop	{r4, r5, r6, pc}
 119              	.L18:
 120 0030 35B9     		cbnz	r5, .L19
 121 0032 2368     		ldr	r3, [r4]
 122 0034 2846     		mov	r0, r5
 123 0036 23F01003 		bic	r3, r3, #16
 124 003a 2360     		str	r3, [r4]
 125 003c 02B0     		add	sp, sp, #8
 126              		@ sp needed
 127 003e 70BD     		pop	{r4, r5, r6, pc}
 128              	.L19:
 129 0040 3146     		mov	r1, r6
 130 0042 2046     		mov	r0, r4
 131 0044 1E22     		movs	r2, #30
 132 0046 01AB     		add	r3, sp, #4
 133 0048 FFF7FEFF 		bl	emac_phy_read
 134 004c 28B1     		cbz	r0, .L20
 135              	.L39:
 136 004e 2368     		ldr	r3, [r4]
 137 0050 23F01003 		bic	r3, r3, #16
 138 0054 2360     		str	r3, [r4]
 139 0056 02B0     		add	sp, sp, #8
 140              		@ sp needed
 141 0058 70BD     		pop	{r4, r5, r6, pc}
 142              	.L20:
 143 005a 009B     		ldr	r3, [sp]
 144 005c 5904     		lsls	r1, r3, #17
 145 005e 13D5     		bpl	.L21
 146 0060 019A     		ldr	r2, [sp, #4]
 147 0062 12F0060F 		tst	r2, #6
 148 0066 0FD0     		beq	.L21
 149 0068 0123     		movs	r3, #1
 150              	.L22:
 151 006a 6268     		ldr	r2, [r4, #4]
 152 006c 42F00102 		orr	r2, r2, #1
 153 0070 6260     		str	r2, [r4, #4]
 154              	.L27:
 155 0072 F3B1     		cbz	r3, .L25
 156 0074 6368     		ldr	r3, [r4, #4]
 157 0076 43F00203 		orr	r3, r3, #2
 158 007a 6360     		str	r3, [r4, #4]
 159              	.L26:
 160 007c 2368     		ldr	r3, [r4]
 161 007e 0020     		movs	r0, #0
 162 0080 23F01003 		bic	r3, r3, #16
 163 0084 2360     		str	r3, [r4]
 164 0086 D1E7     		b	.L38
 165              	.L21:
 166 0088 DA04     		lsls	r2, r3, #19
 167 008a 09D5     		bpl	.L23
 168 008c 019A     		ldr	r2, [sp, #4]
 169 008e 12F0050F 		tst	r2, #5
 170 0092 05D0     		beq	.L23
 171 0094 0123     		movs	r3, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccD4XH3F.s 			page 4


 172              	.L24:
 173 0096 6268     		ldr	r2, [r4, #4]
 174 0098 22F00102 		bic	r2, r2, #1
 175 009c 6260     		str	r2, [r4, #4]
 176 009e E8E7     		b	.L27
 177              	.L23:
 178 00a0 13F40053 		ands	r3, r3, #8192
 179 00a4 F7D0     		beq	.L24
 180 00a6 019B     		ldr	r3, [sp, #4]
 181 00a8 13F00203 		ands	r3, r3, #2
 182 00ac F3D0     		beq	.L24
 183 00ae 0023     		movs	r3, #0
 184 00b0 DBE7     		b	.L22
 185              	.L25:
 186 00b2 6368     		ldr	r3, [r4, #4]
 187 00b4 23F00203 		bic	r3, r3, #2
 188 00b8 6360     		str	r3, [r4, #4]
 189 00ba DFE7     		b	.L26
 190              		.size	ethernet_phy_set_link, .-ethernet_phy_set_link
 191              		.section	.text.ethernet_phy_auto_negotiate,"ax",%progbits
 192              		.align	2
 193              		.global	ethernet_phy_auto_negotiate
 194              		.thumb
 195              		.thumb_func
 196              		.type	ethernet_phy_auto_negotiate, %function
 197              	ethernet_phy_auto_negotiate:
 198              		@ args = 0, pretend = 0, frame = 8
 199              		@ frame_needed = 0, uses_anonymous_args = 0
 200 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 201 0002 544D     		ldr	r5, .L78
 202 0004 83B0     		sub	sp, sp, #12
 203 0006 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 204 0008 0446     		mov	r4, r0
 205 000a 072B     		cmp	r3, #7
 206 000c 00F2A080 		bhi	.L66
 207 0010 DFE803F0 		tbb	[pc, r3]
 208              	.L43:
 209 0014 04       		.byte	(.L42-.L43)/2
 210 0015 84       		.byte	(.L44-.L43)/2
 211 0016 26       		.byte	(.L45-.L43)/2
 212 0017 08       		.byte	(.L46-.L43)/2
 213 0018 31       		.byte	(.L47-.L43)/2
 214 0019 41       		.byte	(.L48-.L43)/2
 215 001a 16       		.byte	(.L49-.L43)/2
 216 001b 55       		.byte	(.L50-.L43)/2
 217              		.align	1
 218              	.L42:
 219 001c 0368     		ldr	r3, [r0]
 220 001e 43F01003 		orr	r3, r3, #16
 221 0022 0360     		str	r3, [r0]
 222              	.L46:
 223 0024 2046     		mov	r0, r4
 224 0026 0022     		movs	r2, #0
 225 0028 4B4B     		ldr	r3, .L78+4
 226 002a FFF7FEFF 		bl	emac_phy_read
 227 002e 88B1     		cbz	r0, .L58
 228              	.L71:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccD4XH3F.s 			page 5


 229 0030 2268     		ldr	r2, [r4]
 230 0032 0023     		movs	r3, #0
 231 0034 22F01002 		bic	r2, r2, #16
 232 0038 2260     		str	r2, [r4]
 233 003a 2B70     		strb	r3, [r5]
 234              	.L70:
 235 003c 03B0     		add	sp, sp, #12
 236              		@ sp needed
 237 003e F0BD     		pop	{r4, r5, r6, r7, pc}
 238              	.L49:
 239 0040 454E     		ldr	r6, .L78+4
 240 0042 0122     		movs	r2, #1
 241 0044 3346     		mov	r3, r6
 242 0046 FFF7FEFF 		bl	emac_phy_read
 243 004a 0028     		cmp	r0, #0
 244 004c F0D1     		bne	.L71
 245 004e 3368     		ldr	r3, [r6]
 246 0050 9906     		lsls	r1, r3, #26
 247 0052 6AD5     		bpl	.L76
 248              	.L58:
 249 0054 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 250 0056 0120     		movs	r0, #1
 251 0058 0344     		add	r3, r3, r0
 252 005a 2B70     		strb	r3, [r5]
 253              	.L77:
 254 005c 03B0     		add	sp, sp, #12
 255              		@ sp needed
 256 005e F0BD     		pop	{r4, r5, r6, r7, pc}
 257              	.L45:
 258 0060 40F2E116 		movw	r6, #481
 259 0064 3D4F     		ldr	r7, .L78+8
 260 0066 3346     		mov	r3, r6
 261 0068 0422     		movs	r2, #4
 262 006a 3E60     		str	r6, [r7]
 263 006c FFF7FEFF 		bl	emac_phy_write
 264 0070 0028     		cmp	r0, #0
 265 0072 EFD0     		beq	.L58
 266 0074 DCE7     		b	.L71
 267              	.L47:
 268 0076 384E     		ldr	r6, .L78+4
 269 0078 3768     		ldr	r7, [r6]
 270 007a 47F44457 		orr	r7, r7, #12544
 271              	.L74:
 272 007e 3B46     		mov	r3, r7
 273 0080 0022     		movs	r2, #0
 274 0082 3760     		str	r7, [r6]
 275 0084 FFF7FEFF 		bl	emac_phy_write
 276 0088 0028     		cmp	r0, #0
 277 008a D1D1     		bne	.L71
 278 008c 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 279 008e 0120     		movs	r0, #1
 280 0090 0344     		add	r3, r3, r0
 281 0092 2B70     		strb	r3, [r5]
 282 0094 E2E7     		b	.L77
 283              	.L48:
 284 0096 304E     		ldr	r6, .L78+4
 285 0098 0022     		movs	r2, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccD4XH3F.s 			page 6


 286 009a 3768     		ldr	r7, [r6]
 287 009c 27F48067 		bic	r7, r7, #1024
 288 00a0 47F40077 		orr	r7, r7, #512
 289 00a4 3B46     		mov	r3, r7
 290 00a6 3760     		str	r7, [r6]
 291 00a8 FFF7FEFF 		bl	emac_phy_write
 292 00ac 0028     		cmp	r0, #0
 293 00ae BFD1     		bne	.L71
 294 00b0 2A78     		ldrb	r2, [r5]	@ zero_extendqisi2
 295 00b2 2B4B     		ldr	r3, .L78+12
 296 00b4 0132     		adds	r2, r2, #1
 297 00b6 1870     		strb	r0, [r3]
 298 00b8 2A70     		strb	r2, [r5]
 299 00ba 0120     		movs	r0, #1
 300 00bc BEE7     		b	.L70
 301              	.L50:
 302 00be 0522     		movs	r2, #5
 303 00c0 01AB     		add	r3, sp, #4
 304 00c2 FFF7FEFF 		bl	emac_phy_read
 305 00c6 0028     		cmp	r0, #0
 306 00c8 B2D1     		bne	.L71
 307 00ca 244A     		ldr	r2, .L78+8
 308 00cc 019B     		ldr	r3, [sp, #4]
 309 00ce 1268     		ldr	r2, [r2]
 310 00d0 1340     		ands	r3, r3, r2
 311 00d2 DA05     		lsls	r2, r3, #23
 312 00d4 2FD4     		bmi	.L67
 313 00d6 13F04002 		ands	r2, r3, #64
 314 00da 33D1     		bne	.L68
 315 00dc 13F08003 		ands	r3, r3, #128
 316 00e0 31D0     		beq	.L62
 317 00e2 1346     		mov	r3, r2
 318              	.L61:
 319 00e4 6268     		ldr	r2, [r4, #4]
 320 00e6 42F00102 		orr	r2, r2, #1
 321 00ea 6260     		str	r2, [r4, #4]
 322              	.L65:
 323 00ec 2BB3     		cbz	r3, .L63
 324 00ee 6368     		ldr	r3, [r4, #4]
 325 00f0 43F00203 		orr	r3, r3, #2
 326 00f4 6360     		str	r3, [r4, #4]
 327              	.L64:
 328 00f6 D4F8C030 		ldr	r3, [r4, #192]
 329 00fa 0020     		movs	r0, #0
 330 00fc 43F00103 		orr	r3, r3, #1
 331 0100 C4F8C030 		str	r3, [r4, #192]
 332 0104 D4F8C030 		ldr	r3, [r4, #192]
 333 0108 2870     		strb	r0, [r5]
 334 010a 43F00203 		orr	r3, r3, #2
 335 010e C4F8C030 		str	r3, [r4, #192]
 336 0112 2368     		ldr	r3, [r4]
 337 0114 23F01003 		bic	r3, r3, #16
 338 0118 2360     		str	r3, [r4]
 339 011a 8FE7     		b	.L70
 340              	.L44:
 341 011c 0E4E     		ldr	r6, .L78+4
 342 011e 3768     		ldr	r7, [r6]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccD4XH3F.s 			page 7


 343 0120 27F4B047 		bic	r7, r7, #22528
 344 0124 47F48067 		orr	r7, r7, #1024
 345 0128 A9E7     		b	.L74
 346              	.L76:
 347 012a 0D4B     		ldr	r3, .L78+12
 348 012c 0120     		movs	r0, #1
 349 012e 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 350 0130 0244     		add	r2, r2, r0
 351 0132 1A70     		strb	r2, [r3]
 352 0134 82E7     		b	.L70
 353              	.L67:
 354 0136 0123     		movs	r3, #1
 355 0138 D4E7     		b	.L61
 356              	.L63:
 357 013a 6368     		ldr	r3, [r4, #4]
 358 013c 23F00203 		bic	r3, r3, #2
 359 0140 6360     		str	r3, [r4, #4]
 360 0142 D8E7     		b	.L64
 361              	.L68:
 362 0144 0123     		movs	r3, #1
 363              	.L62:
 364 0146 6268     		ldr	r2, [r4, #4]
 365 0148 22F00102 		bic	r2, r2, #1
 366 014c 6260     		str	r2, [r4, #4]
 367 014e CDE7     		b	.L65
 368              	.L66:
 369 0150 0120     		movs	r0, #1
 370 0152 73E7     		b	.L70
 371              	.L79:
 372              		.align	2
 373              	.L78:
 374 0154 00000000 		.word	.LANCHOR0
 375 0158 00000000 		.word	.LANCHOR1
 376 015c 00000000 		.word	.LANCHOR2
 377 0160 00000000 		.word	.LANCHOR3
 378              		.size	ethernet_phy_auto_negotiate, .-ethernet_phy_auto_negotiate
 379              		.section	.text.ethernet_phy_reset,"ax",%progbits
 380              		.align	2
 381              		.global	ethernet_phy_reset
 382              		.thumb
 383              		.thumb_func
 384              		.type	ethernet_phy_reset, %function
 385              	ethernet_phy_reset:
 386              		@ args = 0, pretend = 0, frame = 8
 387              		@ frame_needed = 0, uses_anonymous_args = 0
 388 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 389 0002 0368     		ldr	r3, [r0]
 390 0004 4FF40044 		mov	r4, #32768
 391 0008 83B0     		sub	sp, sp, #12
 392 000a 43F01003 		orr	r3, r3, #16
 393 000e 0360     		str	r3, [r0]
 394 0010 02AE     		add	r6, sp, #8
 395 0012 2346     		mov	r3, r4
 396 0014 0022     		movs	r2, #0
 397 0016 46F8044D 		str	r4, [r6, #-4]!
 398 001a 0546     		mov	r5, r0
 399 001c 0F46     		mov	r7, r1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccD4XH3F.s 			page 8


 400 001e FFF7FEFF 		bl	emac_phy_write
 401 0022 0A24     		movs	r4, #10
 402              	.L83:
 403 0024 0022     		movs	r2, #0
 404 0026 3346     		mov	r3, r6
 405 0028 2846     		mov	r0, r5
 406 002a 3946     		mov	r1, r7
 407 002c FFF7FEFF 		bl	emac_phy_read
 408 0030 019A     		ldr	r2, [sp, #4]
 409 0032 013C     		subs	r4, r4, #1
 410 0034 1304     		lsls	r3, r2, #16
 411 0036 08D5     		bpl	.L81
 412 0038 002C     		cmp	r4, #0
 413 003a F3D1     		bne	.L83
 414 003c 2B68     		ldr	r3, [r5]
 415 003e 23F01003 		bic	r3, r3, #16
 416 0042 2B60     		str	r3, [r5]
 417              	.L85:
 418 0044 0020     		movs	r0, #0
 419 0046 03B0     		add	sp, sp, #12
 420              		@ sp needed
 421 0048 F0BD     		pop	{r4, r5, r6, r7, pc}
 422              	.L81:
 423 004a 2B68     		ldr	r3, [r5]
 424 004c 0120     		movs	r0, #1
 425 004e 23F01003 		bic	r3, r3, #16
 426 0052 2B60     		str	r3, [r5]
 427 0054 002C     		cmp	r4, #0
 428 0056 F5D0     		beq	.L85
 429 0058 03B0     		add	sp, sp, #12
 430              		@ sp needed
 431 005a F0BD     		pop	{r4, r5, r6, r7, pc}
 432              		.size	ethernet_phy_reset, .-ethernet_phy_reset
 433              		.section	.bss.ul_phy_anar.9396,"aw",%nobits
 434              		.align	2
 435              		.set	.LANCHOR2,. + 0
 436              		.type	ul_phy_anar.9396, %object
 437              		.size	ul_phy_anar.9396, 4
 438              	ul_phy_anar.9396:
 439 0000 00000000 		.space	4
 440              		.section	.bss.ul_retry_count.9394,"aw",%nobits
 441              		.set	.LANCHOR3,. + 0
 442              		.type	ul_retry_count.9394, %object
 443              		.size	ul_retry_count.9394, 1
 444              	ul_retry_count.9394:
 445 0000 00       		.space	1
 446              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 447              		.align	2
 448              		.type	cpu_irq_critical_section_counter, %object
 449              		.size	cpu_irq_critical_section_counter, 4
 450              	cpu_irq_critical_section_counter:
 451 0000 00000000 		.space	4
 452              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 453              		.type	cpu_irq_prev_interrupt_state, %object
 454              		.size	cpu_irq_prev_interrupt_state, 1
 455              	cpu_irq_prev_interrupt_state:
 456 0000 00       		.space	1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccD4XH3F.s 			page 9


 457              		.section	.bss.state.9393,"aw",%nobits
 458              		.set	.LANCHOR0,. + 0
 459              		.type	state.9393, %object
 460              		.size	state.9393, 1
 461              	state.9393:
 462 0000 00       		.space	1
 463              		.section	.bss.ul_value.9395,"aw",%nobits
 464              		.align	2
 465              		.set	.LANCHOR1,. + 0
 466              		.type	ul_value.9395, %object
 467              		.size	ul_value.9395, 4
 468              	ul_value.9395:
 469 0000 00000000 		.space	4
 470              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
