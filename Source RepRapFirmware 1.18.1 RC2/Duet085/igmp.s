ARM GAS  C:\Users\George\AppData\Local\Temp\ccvBJUKz.s 			page 1


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
  14              		.file	"igmp.c"
  15              		.section	.text.igmp_send,"ax",%progbits
  16              		.align	2
  17              		.thumb
  18              		.thumb_func
  19              		.type	igmp_send, %function
  20              	igmp_send:
  21              		@ args = 0, pretend = 0, frame = 8
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
  24 0004 2F4B     		ldr	r3, .L10
  25 0006 0646     		mov	r6, r0
  26 0008 1B68     		ldr	r3, [r3]
  27 000a 0020     		movs	r0, #0
  28 000c 89B0     		sub	sp, sp, #36
  29 000e 0F46     		mov	r7, r1
  30 0010 0246     		mov	r2, r0
  31 0012 0821     		movs	r1, #8
  32 0014 0693     		str	r3, [sp, #24]
  33 0016 FFF7FEFF 		bl	pbuf_alloc
  34 001a 0446     		mov	r4, r0
  35 001c 0028     		cmp	r0, #0
  36 001e 47D0     		beq	.L2
  37 0020 7368     		ldr	r3, [r6, #4]
  38 0022 162F     		cmp	r7, #22
  39 0024 5B68     		ldr	r3, [r3, #4]
  40 0026 4568     		ldr	r5, [r0, #4]
  41 0028 0693     		str	r3, [sp, #24]
  42 002a 07D0     		beq	.L8
  43 002c 172F     		cmp	r7, #23
  44 002e 3AD0     		beq	.L9
  45              	.L5:
  46 0030 2046     		mov	r0, r4
  47 0032 FFF7FEFF 		bl	pbuf_free
  48 0036 09B0     		add	sp, sp, #36
  49              		@ sp needed
  50 0038 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
  51              	.L8:
  52 003c B368     		ldr	r3, [r6, #8]
  53 003e 0122     		movs	r2, #1
  54 0040 6B60     		str	r3, [r5, #4]	@ unaligned
  55 0042 06F10809 		add	r9, r6, #8
  56 0046 3273     		strb	r2, [r6, #12]
  57              	.L4:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvBJUKz.s 			page 2


  58 0048 4FF00008 		mov	r8, #0
  59 004c 2F70     		strb	r7, [r5]
  60 004e 85F80180 		strb	r8, [r5, #1]
  61 0052 85F80280 		strb	r8, [r5, #2]
  62 0056 85F80380 		strb	r8, [r5, #3]
  63 005a 2846     		mov	r0, r5
  64 005c 0821     		movs	r1, #8
  65 005e FFF7FEFF 		bl	inet_chksum
  66 0062 194F     		ldr	r7, .L10+4
  67 0064 D6F804C0 		ldr	ip, [r6, #4]
  68 0068 B7F87860 		ldrh	r6, [r7, #120]
  69 006c 07A9     		add	r1, sp, #28
  70 006e 4FF0020E 		mov	lr, #2
  71 0072 0423     		movs	r3, #4
  72 0074 0136     		adds	r6, r6, #1
  73 0076 6880     		strh	r0, [r5, #2]	@ unaligned
  74 0078 4A46     		mov	r2, r9
  75 007a 0391     		str	r1, [sp, #12]
  76 007c 0493     		str	r3, [sp, #16]
  77 007e CDF80080 		str	r8, [sp]
  78 0082 CDF808C0 		str	ip, [sp, #8]
  79 0086 CDF804E0 		str	lr, [sp, #4]
  80 008a 40F29445 		movw	r5, #1172
  81 008e 2046     		mov	r0, r4
  82 0090 06A9     		add	r1, sp, #24
  83 0092 0123     		movs	r3, #1
  84 0094 A7F87860 		strh	r6, [r7, #120]	@ movhi
  85 0098 ADF81E80 		strh	r8, [sp, #30]	@ movhi
  86 009c ADF81C50 		strh	r5, [sp, #28]	@ movhi
  87 00a0 FFF7FEFF 		bl	ip_output_if_opt
  88 00a4 C4E7     		b	.L5
  89              	.L9:
  90 00a6 B368     		ldr	r3, [r6, #8]
  91 00a8 DFF82090 		ldr	r9, .L10+8
  92 00ac 6B60     		str	r3, [r5, #4]	@ unaligned
  93 00ae CBE7     		b	.L4
  94              	.L2:
  95 00b0 054B     		ldr	r3, .L10+4
  96 00b2 B3F88220 		ldrh	r2, [r3, #130]
  97 00b6 0132     		adds	r2, r2, #1
  98 00b8 A3F88220 		strh	r2, [r3, #130]	@ movhi
  99 00bc 09B0     		add	sp, sp, #36
 100              		@ sp needed
 101 00be BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 102              	.L11:
 103 00c2 00BF     		.align	2
 104              	.L10:
 105 00c4 00000000 		.word	ip_addr_any
 106 00c8 00000000 		.word	lwip_stats
 107 00cc 00000000 		.word	.LANCHOR0
 108              		.size	igmp_send, .-igmp_send
 109              		.section	.text.igmp_delaying_member,"ax",%progbits
 110              		.align	2
 111              		.thumb
 112              		.thumb_func
 113              		.type	igmp_delaying_member, %function
 114              	igmp_delaying_member:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvBJUKz.s 			page 3


 115              		@ args = 0, pretend = 0, frame = 8
 116              		@ frame_needed = 0, uses_anonymous_args = 0
 117 0000 10B5     		push	{r4, lr}
 118 0002 437B     		ldrb	r3, [r0, #13]	@ zero_extendqisi2
 119 0004 82B0     		sub	sp, sp, #8
 120 0006 022B     		cmp	r3, #2
 121 0008 0446     		mov	r4, r0
 122 000a 05D0     		beq	.L13
 123 000c 012B     		cmp	r3, #1
 124 000e 01D0     		beq	.L23
 125              	.L12:
 126 0010 02B0     		add	sp, sp, #8
 127              		@ sp needed
 128 0012 10BD     		pop	{r4, pc}
 129              	.L23:
 130 0014 C389     		ldrh	r3, [r0, #14]
 131 0016 3BB9     		cbnz	r3, .L24
 132              	.L13:
 133 0018 0229     		cmp	r1, #2
 134 001a 08D8     		bhi	.L25
 135 001c 0122     		movs	r2, #1
 136              	.L15:
 137 001e 0123     		movs	r3, #1
 138 0020 E281     		strh	r2, [r4, #14]	@ movhi
 139 0022 6373     		strb	r3, [r4, #13]
 140 0024 02B0     		add	sp, sp, #8
 141              		@ sp needed
 142 0026 10BD     		pop	{r4, pc}
 143              	.L24:
 144 0028 8B42     		cmp	r3, r1
 145 002a F5D8     		bhi	.L13
 146 002c F0E7     		b	.L12
 147              	.L25:
 148 002e 0191     		str	r1, [sp, #4]
 149 0030 FFF7FEFF 		bl	trueRandom
 150 0034 0199     		ldr	r1, [sp, #4]
 151 0036 0139     		subs	r1, r1, #1
 152 0038 B0FBF1F2 		udiv	r2, r0, r1
 153 003c 02FB1100 		mls	r0, r2, r1, r0
 154 0040 421C     		adds	r2, r0, #1
 155 0042 92B2     		uxth	r2, r2
 156 0044 EBE7     		b	.L15
 157              		.size	igmp_delaying_member, .-igmp_delaying_member
 158 0046 00BF     		.section	.text.igmp_lookup_group,"ax",%progbits
 159              		.align	2
 160              		.thumb
 161              		.thumb_func
 162              		.type	igmp_lookup_group, %function
 163              	igmp_lookup_group:
 164              		@ args = 0, pretend = 0, frame = 0
 165              		@ frame_needed = 0, uses_anonymous_args = 0
 166 0000 70B5     		push	{r4, r5, r6, lr}
 167 0002 114E     		ldr	r6, .L44
 168 0004 0446     		mov	r4, r0
 169 0006 3368     		ldr	r3, [r6]
 170 0008 0D46     		mov	r5, r1
 171 000a 13B9     		cbnz	r3, .L30
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvBJUKz.s 			page 4


 172 000c 0AE0     		b	.L27
 173              	.L28:
 174 000e 1B68     		ldr	r3, [r3]
 175 0010 43B1     		cbz	r3, .L27
 176              	.L30:
 177 0012 5A68     		ldr	r2, [r3, #4]
 178 0014 9442     		cmp	r4, r2
 179 0016 FAD1     		bne	.L28
 180 0018 9868     		ldr	r0, [r3, #8]
 181 001a 2A68     		ldr	r2, [r5]
 182 001c 9042     		cmp	r0, r2
 183 001e F6D1     		bne	.L28
 184 0020 1846     		mov	r0, r3
 185 0022 70BD     		pop	{r4, r5, r6, pc}
 186              	.L27:
 187 0024 0620     		movs	r0, #6
 188 0026 FFF7FEFF 		bl	memp_malloc
 189 002a 60B1     		cbz	r0, .L43
 190 002c 4460     		str	r4, [r0, #4]
 191 002e 05B1     		cbz	r5, .L31
 192 0030 2D68     		ldr	r5, [r5]
 193              	.L31:
 194 0032 0023     		movs	r3, #0
 195 0034 3268     		ldr	r2, [r6]
 196 0036 4373     		strb	r3, [r0, #13]
 197 0038 0373     		strb	r3, [r0, #12]
 198 003a 0374     		strb	r3, [r0, #16]
 199 003c 8560     		str	r5, [r0, #8]
 200 003e 0260     		str	r2, [r0]
 201 0040 3060     		str	r0, [r6]
 202 0042 C381     		strh	r3, [r0, #14]	@ movhi
 203 0044 70BD     		pop	{r4, r5, r6, pc}
 204              	.L43:
 205 0046 70BD     		pop	{r4, r5, r6, pc}
 206              	.L45:
 207              		.align	2
 208              	.L44:
 209 0048 00000000 		.word	.LANCHOR1
 210              		.size	igmp_lookup_group, .-igmp_lookup_group
 211              		.section	.text.igmp_init,"ax",%progbits
 212              		.align	2
 213              		.global	igmp_init
 214              		.thumb
 215              		.thumb_func
 216              		.type	igmp_init, %function
 217              	igmp_init:
 218              		@ args = 0, pretend = 0, frame = 0
 219              		@ frame_needed = 0, uses_anonymous_args = 0
 220              		@ link register save eliminated.
 221 0000 0349     		ldr	r1, .L47
 222 0002 0448     		ldr	r0, .L47+4
 223 0004 044B     		ldr	r3, .L47+8
 224 0006 054A     		ldr	r2, .L47+12
 225 0008 0860     		str	r0, [r1]
 226 000a 1A60     		str	r2, [r3]
 227 000c 7047     		bx	lr
 228              	.L48:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvBJUKz.s 			page 5


 229 000e 00BF     		.align	2
 230              	.L47:
 231 0010 00000000 		.word	.LANCHOR2
 232 0014 E0000001 		.word	16777440
 233 0018 00000000 		.word	.LANCHOR0
 234 001c E0000002 		.word	33554656
 235              		.size	igmp_init, .-igmp_init
 236              		.section	.text.igmp_start,"ax",%progbits
 237              		.align	2
 238              		.global	igmp_start
 239              		.thumb
 240              		.thumb_func
 241              		.type	igmp_start, %function
 242              	igmp_start:
 243              		@ args = 0, pretend = 0, frame = 0
 244              		@ frame_needed = 0, uses_anonymous_args = 0
 245 0000 10B5     		push	{r4, lr}
 246 0002 0C49     		ldr	r1, .L53
 247 0004 0446     		mov	r4, r0
 248 0006 FFF7FEFF 		bl	igmp_lookup_group
 249 000a 80B1     		cbz	r0, .L51
 250 000c 017C     		ldrb	r1, [r0, #16]	@ zero_extendqisi2
 251 000e 0222     		movs	r2, #2
 252 0010 0131     		adds	r1, r1, #1
 253 0012 0174     		strb	r1, [r0, #16]
 254 0014 4273     		strb	r2, [r0, #13]
 255 0016 E36B     		ldr	r3, [r4, #60]
 256 0018 33B1     		cbz	r3, .L52
 257 001a 2046     		mov	r0, r4
 258 001c 0549     		ldr	r1, .L53
 259 001e 0122     		movs	r2, #1
 260 0020 9847     		blx	r3
 261 0022 0020     		movs	r0, #0
 262              	.L50:
 263 0024 40B2     		sxtb	r0, r0
 264 0026 10BD     		pop	{r4, pc}
 265              	.L52:
 266 0028 1846     		mov	r0, r3
 267 002a 40B2     		sxtb	r0, r0
 268 002c 10BD     		pop	{r4, pc}
 269              	.L51:
 270 002e FF20     		movs	r0, #255
 271 0030 F8E7     		b	.L50
 272              	.L54:
 273 0032 00BF     		.align	2
 274              	.L53:
 275 0034 00000000 		.word	.LANCHOR2
 276              		.size	igmp_start, .-igmp_start
 277              		.section	.text.igmp_stop,"ax",%progbits
 278              		.align	2
 279              		.global	igmp_stop
 280              		.thumb
 281              		.thumb_func
 282              		.type	igmp_stop, %function
 283              	igmp_stop:
 284              		@ args = 0, pretend = 0, frame = 0
 285              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvBJUKz.s 			page 6


 286 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 287 0004 DFF85880 		ldr	r8, .L75
 288 0008 0746     		mov	r7, r0
 289 000a D8F80040 		ldr	r4, [r8]
 290 000e 1CB3     		cbz	r4, .L69
 291 0010 6368     		ldr	r3, [r4, #4]
 292 0012 0026     		movs	r6, #0
 293 0014 BB42     		cmp	r3, r7
 294 0016 C146     		mov	r9, r8
 295 0018 2568     		ldr	r5, [r4]
 296 001a 06D0     		beq	.L73
 297              	.L57:
 298 001c E5B1     		cbz	r5, .L69
 299              	.L74:
 300 001e 2646     		mov	r6, r4
 301 0020 2C46     		mov	r4, r5
 302 0022 6368     		ldr	r3, [r4, #4]
 303 0024 2568     		ldr	r5, [r4]
 304 0026 BB42     		cmp	r3, r7
 305 0028 F8D1     		bne	.L57
 306              	.L73:
 307 002a D8F80030 		ldr	r3, [r8]
 308 002e 04F10801 		add	r1, r4, #8
 309 0032 9C42     		cmp	r4, r3
 310 0034 4FF00002 		mov	r2, #0
 311 0038 3846     		mov	r0, r7
 312 003a 08BF     		it	eq
 313 003c C9F80050 		streq	r5, [r9]
 314 0040 06B1     		cbz	r6, .L59
 315 0042 3560     		str	r5, [r6]
 316              	.L59:
 317 0044 FB6B     		ldr	r3, [r7, #60]
 318 0046 03B1     		cbz	r3, .L60
 319 0048 9847     		blx	r3
 320              	.L60:
 321 004a 2146     		mov	r1, r4
 322 004c 0620     		movs	r0, #6
 323 004e FFF7FEFF 		bl	memp_free
 324 0052 3446     		mov	r4, r6
 325 0054 002D     		cmp	r5, #0
 326 0056 E2D1     		bne	.L74
 327              	.L69:
 328 0058 0020     		movs	r0, #0
 329 005a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 330              	.L76:
 331 005e 00BF     		.align	2
 332              	.L75:
 333 0060 00000000 		.word	.LANCHOR1
 334              		.size	igmp_stop, .-igmp_stop
 335              		.section	.text.igmp_report_groups,"ax",%progbits
 336              		.align	2
 337              		.global	igmp_report_groups
 338              		.thumb
 339              		.thumb_func
 340              		.type	igmp_report_groups, %function
 341              	igmp_report_groups:
 342              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvBJUKz.s 			page 7


 343              		@ frame_needed = 0, uses_anonymous_args = 0
 344 0000 38B5     		push	{r3, r4, r5, lr}
 345 0002 084B     		ldr	r3, .L86
 346 0004 0546     		mov	r5, r0
 347 0006 1C68     		ldr	r4, [r3]
 348 0008 2CB1     		cbz	r4, .L77
 349              	.L81:
 350 000a 6368     		ldr	r3, [r4, #4]
 351 000c AB42     		cmp	r3, r5
 352 000e 03D0     		beq	.L85
 353              	.L79:
 354 0010 2468     		ldr	r4, [r4]
 355 0012 002C     		cmp	r4, #0
 356 0014 F9D1     		bne	.L81
 357              	.L77:
 358 0016 38BD     		pop	{r3, r4, r5, pc}
 359              	.L85:
 360 0018 2046     		mov	r0, r4
 361 001a 0521     		movs	r1, #5
 362 001c FFF7FEFF 		bl	igmp_delaying_member
 363 0020 F6E7     		b	.L79
 364              	.L87:
 365 0022 00BF     		.align	2
 366              	.L86:
 367 0024 00000000 		.word	.LANCHOR1
 368              		.size	igmp_report_groups, .-igmp_report_groups
 369              		.section	.text.igmp_lookfor_group,"ax",%progbits
 370              		.align	2
 371              		.global	igmp_lookfor_group
 372              		.thumb
 373              		.thumb_func
 374              		.type	igmp_lookfor_group, %function
 375              	igmp_lookfor_group:
 376              		@ args = 0, pretend = 0, frame = 0
 377              		@ frame_needed = 0, uses_anonymous_args = 0
 378              		@ link register save eliminated.
 379 0000 10B4     		push	{r4}
 380 0002 074B     		ldr	r3, .L98
 381              	.L97:
 382 0004 1B68     		ldr	r3, [r3]
 383 0006 33B1     		cbz	r3, .L89
 384 0008 5A68     		ldr	r2, [r3, #4]
 385 000a 8242     		cmp	r2, r0
 386 000c FAD1     		bne	.L97
 387 000e 9C68     		ldr	r4, [r3, #8]
 388 0010 0A68     		ldr	r2, [r1]
 389 0012 9442     		cmp	r4, r2
 390 0014 F6D1     		bne	.L97
 391              	.L89:
 392 0016 1846     		mov	r0, r3
 393 0018 5DF8044B 		ldr	r4, [sp], #4
 394 001c 7047     		bx	lr
 395              	.L99:
 396 001e 00BF     		.align	2
 397              	.L98:
 398 0020 00000000 		.word	.LANCHOR1
 399              		.size	igmp_lookfor_group, .-igmp_lookfor_group
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvBJUKz.s 			page 8


 400              		.section	.text.igmp_input,"ax",%progbits
 401              		.align	2
 402              		.global	igmp_input
 403              		.thumb
 404              		.thumb_func
 405              		.type	igmp_input, %function
 406              	igmp_input:
 407              		@ args = 0, pretend = 0, frame = 8
 408              		@ frame_needed = 0, uses_anonymous_args = 0
 409 0000 2DE9F046 		push	{r4, r5, r6, r7, r9, r10, lr}
 410 0004 5A4E     		ldr	r6, .L141
 411 0006 4368     		ldr	r3, [r0, #4]
 412 0008 B6F87A40 		ldrh	r4, [r6, #122]
 413 000c 0D46     		mov	r5, r1
 414 000e 0134     		adds	r4, r4, #1
 415 0010 A6F87A40 		strh	r4, [r6, #122]	@ movhi
 416 0014 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 417 0016 83B0     		sub	sp, sp, #12
 418 0018 03F00F03 		and	r3, r3, #15
 419 001c 9900     		lsls	r1, r3, #2
 420 001e 4942     		negs	r1, r1
 421 0020 0746     		mov	r7, r0
 422 0022 9146     		mov	r9, r2
 423 0024 FFF7FEFF 		bl	pbuf_header
 424 0028 10B9     		cbnz	r0, .L101
 425 002a 7989     		ldrh	r1, [r7, #10]
 426 002c 0729     		cmp	r1, #7
 427 002e 0AD8     		bhi	.L102
 428              	.L101:
 429 0030 3846     		mov	r0, r7
 430 0032 FFF7FEFF 		bl	pbuf_free
 431 0036 B6F88030 		ldrh	r3, [r6, #128]
 432 003a 0133     		adds	r3, r3, #1
 433 003c A6F88030 		strh	r3, [r6, #128]	@ movhi
 434              	.L100:
 435 0040 03B0     		add	sp, sp, #12
 436              		@ sp needed
 437 0042 BDE8F086 		pop	{r4, r5, r6, r7, r9, r10, pc}
 438              	.L102:
 439 0046 D7F804A0 		ldr	r10, [r7, #4]
 440 004a 5046     		mov	r0, r10
 441 004c FFF7FEFF 		bl	inet_chksum
 442 0050 68BB     		cbnz	r0, .L137
 443 0052 484B     		ldr	r3, .L141+4
 444 0054 1B68     		ldr	r3, [r3]
 445 0056 FBB1     		cbz	r3, .L105
 446 0058 1846     		mov	r0, r3
 447 005a 01E0     		b	.L108
 448              	.L106:
 449 005c 0068     		ldr	r0, [r0]
 450 005e D8B1     		cbz	r0, .L105
 451              	.L108:
 452 0060 4468     		ldr	r4, [r0, #4]
 453 0062 A542     		cmp	r5, r4
 454 0064 FAD1     		bne	.L106
 455 0066 8268     		ldr	r2, [r0, #8]
 456 0068 D9F80010 		ldr	r1, [r9]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvBJUKz.s 			page 9


 457 006c 8A42     		cmp	r2, r1
 458 006e F5D1     		bne	.L106
 459 0070 9AF80010 		ldrb	r1, [r10]	@ zero_extendqisi2
 460 0074 1129     		cmp	r1, #17
 461 0076 2ED0     		beq	.L109
 462 0078 1629     		cmp	r1, #22
 463 007a 21D1     		bne	.L136
 464 007c B6F88C20 		ldrh	r2, [r6, #140]
 465 0080 0132     		adds	r2, r2, #1
 466 0082 A6F88C20 		strh	r2, [r6, #140]	@ movhi
 467 0086 427B     		ldrb	r2, [r0, #13]	@ zero_extendqisi2
 468 0088 012A     		cmp	r2, #1
 469 008a 36D0     		beq	.L138
 470              	.L115:
 471 008c 3846     		mov	r0, r7
 472 008e 03B0     		add	sp, sp, #12
 473              		@ sp needed
 474 0090 BDE8F046 		pop	{r4, r5, r6, r7, r9, r10, lr}
 475 0094 FFF7FEBF 		b	pbuf_free
 476              	.L105:
 477 0098 3846     		mov	r0, r7
 478 009a FFF7FEFF 		bl	pbuf_free
 479 009e B6F87C30 		ldrh	r3, [r6, #124]
 480 00a2 0133     		adds	r3, r3, #1
 481 00a4 A6F87C30 		strh	r3, [r6, #124]	@ movhi
 482 00a8 03B0     		add	sp, sp, #12
 483              		@ sp needed
 484 00aa BDE8F086 		pop	{r4, r5, r6, r7, r9, r10, pc}
 485              	.L137:
 486 00ae 3846     		mov	r0, r7
 487 00b0 FFF7FEFF 		bl	pbuf_free
 488 00b4 B6F87E30 		ldrh	r3, [r6, #126]
 489 00b8 0133     		adds	r3, r3, #1
 490 00ba A6F87E30 		strh	r3, [r6, #126]	@ movhi
 491 00be BFE7     		b	.L100
 492              	.L136:
 493 00c0 B6F88430 		ldrh	r3, [r6, #132]
 494 00c4 3846     		mov	r0, r7
 495 00c6 0133     		adds	r3, r3, #1
 496 00c8 A6F88430 		strh	r3, [r6, #132]	@ movhi
 497 00cc 03B0     		add	sp, sp, #12
 498              		@ sp needed
 499 00ce BDE8F046 		pop	{r4, r5, r6, r7, r9, r10, lr}
 500 00d2 FFF7FEBF 		b	pbuf_free
 501              	.L109:
 502 00d6 284C     		ldr	r4, .L141+8
 503 00d8 2168     		ldr	r1, [r4]
 504 00da 9142     		cmp	r1, r2
 505 00dc DAF80420 		ldr	r2, [r10, #4]	@ unaligned
 506 00e0 11D0     		beq	.L139
 507 00e2 002A     		cmp	r2, #0
 508 00e4 ECD0     		beq	.L136
 509              	.L118:
 510 00e6 B6F88820 		ldrh	r2, [r6, #136]
 511 00ea 531C     		adds	r3, r2, #1
 512 00ec A6F88830 		strh	r3, [r6, #136]	@ movhi
 513 00f0 9AF80110 		ldrb	r1, [r10, #1]	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvBJUKz.s 			page 10


 514 00f4 FFF7FEFF 		bl	igmp_delaying_member
 515 00f8 C8E7     		b	.L115
 516              	.L138:
 517 00fa 0022     		movs	r2, #0
 518 00fc 0221     		movs	r1, #2
 519 00fe C281     		strh	r2, [r0, #14]	@ movhi
 520 0100 0273     		strb	r2, [r0, #12]
 521 0102 4173     		strb	r1, [r0, #13]
 522 0104 C2E7     		b	.L115
 523              	.L139:
 524 0106 FAB9     		cbnz	r2, .L122
 525 0108 9AF80120 		ldrb	r2, [r10, #1]	@ zero_extendqisi2
 526 010c 52BB     		cbnz	r2, .L112
 527 010e B6F88620 		ldrh	r2, [r6, #134]
 528 0112 0A21     		movs	r1, #10
 529 0114 0132     		adds	r2, r2, #1
 530 0116 A6F88620 		strh	r2, [r6, #134]	@ movhi
 531 011a 8AF80110 		strb	r1, [r10, #1]
 532 011e 02E0     		b	.L114
 533              	.L116:
 534 0120 1B68     		ldr	r3, [r3]
 535 0122 002B     		cmp	r3, #0
 536 0124 B2D0     		beq	.L115
 537              	.L114:
 538 0126 5A68     		ldr	r2, [r3, #4]
 539 0128 AA42     		cmp	r2, r5
 540 012a F9D1     		bne	.L116
 541 012c 9A68     		ldr	r2, [r3, #8]
 542 012e 2168     		ldr	r1, [r4]
 543 0130 1846     		mov	r0, r3
 544 0132 8A42     		cmp	r2, r1
 545 0134 F4D0     		beq	.L116
 546 0136 9AF80110 		ldrb	r1, [r10, #1]	@ zero_extendqisi2
 547 013a 0193     		str	r3, [sp, #4]
 548 013c FFF7FEFF 		bl	igmp_delaying_member
 549 0140 019B     		ldr	r3, [sp, #4]
 550 0142 EDE7     		b	.L116
 551              	.L120:
 552 0144 1B68     		ldr	r3, [r3]
 553 0146 3BB1     		cbz	r3, .L140
 554              	.L122:
 555 0148 5968     		ldr	r1, [r3, #4]
 556 014a 8D42     		cmp	r5, r1
 557 014c FAD1     		bne	.L120
 558 014e 9968     		ldr	r1, [r3, #8]
 559 0150 8A42     		cmp	r2, r1
 560 0152 F7D1     		bne	.L120
 561 0154 1846     		mov	r0, r3
 562 0156 C6E7     		b	.L118
 563              	.L140:
 564 0158 B6F87C30 		ldrh	r3, [r6, #124]
 565 015c 0133     		adds	r3, r3, #1
 566 015e A6F87C30 		strh	r3, [r6, #124]	@ movhi
 567 0162 93E7     		b	.L115
 568              	.L112:
 569 0164 B6F88A20 		ldrh	r2, [r6, #138]
 570 0168 0132     		adds	r2, r2, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvBJUKz.s 			page 11


 571 016a A6F88A20 		strh	r2, [r6, #138]	@ movhi
 572 016e DAE7     		b	.L114
 573              	.L142:
 574              		.align	2
 575              	.L141:
 576 0170 00000000 		.word	lwip_stats
 577 0174 00000000 		.word	.LANCHOR1
 578 0178 00000000 		.word	.LANCHOR2
 579              		.size	igmp_input, .-igmp_input
 580              		.section	.text.igmp_joingroup,"ax",%progbits
 581              		.align	2
 582              		.global	igmp_joingroup
 583              		.thumb
 584              		.thumb_func
 585              		.type	igmp_joingroup, %function
 586              	igmp_joingroup:
 587              		@ args = 0, pretend = 0, frame = 0
 588              		@ frame_needed = 0, uses_anonymous_args = 0
 589 0000 0B68     		ldr	r3, [r1]
 590 0002 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 591 0006 03F0F002 		and	r2, r3, #240
 592 000a E02A     		cmp	r2, #224
 593 000c 0E46     		mov	r6, r1
 594 000e 8046     		mov	r8, r0
 595 0010 07D0     		beq	.L144
 596 0012 2F48     		ldr	r0, .L167
 597 0014 2F49     		ldr	r1, .L167+4
 598 0016 40F20A22 		movw	r2, #522
 599 001a 2F4B     		ldr	r3, .L167+8
 600 001c FFF7FEFF 		bl	debugPrintf
 601              	.L145:
 602 0020 FEE7     		b	.L145
 603              	.L144:
 604 0022 2E4A     		ldr	r2, .L167+12
 605 0024 1268     		ldr	r2, [r2]
 606 0026 9342     		cmp	r3, r2
 607 0028 41D0     		beq	.L166
 608 002a 2D4B     		ldr	r3, .L167+16
 609 002c 1C68     		ldr	r4, [r3]
 610 002e 002C     		cmp	r4, #0
 611 0030 49D0     		beq	.L154
 612 0032 2C4F     		ldr	r7, .L167+20
 613 0034 FA20     		movs	r0, #250
 614 0036 02E0     		b	.L153
 615              	.L149:
 616 0038 2468     		ldr	r4, [r4]
 617 003a 002C     		cmp	r4, #0
 618 003c 34D0     		beq	.L148
 619              	.L153:
 620 003e 94F93530 		ldrsb	r3, [r4, #53]
 621 0042 002B     		cmp	r3, #0
 622 0044 F8DA     		bge	.L149
 623 0046 B8F1000F 		cmp	r8, #0
 624 004a 05D0     		beq	.L150
 625 004c D8F80030 		ldr	r3, [r8]
 626 0050 13B1     		cbz	r3, .L150
 627 0052 6268     		ldr	r2, [r4, #4]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvBJUKz.s 			page 12


 628 0054 9342     		cmp	r3, r2
 629 0056 EFD1     		bne	.L149
 630              	.L150:
 631 0058 2046     		mov	r0, r4
 632 005a 3146     		mov	r1, r6
 633 005c FFF7FEFF 		bl	igmp_lookup_group
 634 0060 0546     		mov	r5, r0
 635 0062 60B3     		cbz	r0, .L155
 636 0064 437B     		ldrb	r3, [r0, #13]	@ zero_extendqisi2
 637 0066 C3B9     		cbnz	r3, .L151
 638 0068 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 639 006a 2BB9     		cbnz	r3, .L152
 640 006c E36B     		ldr	r3, [r4, #60]
 641 006e 1BB1     		cbz	r3, .L152
 642 0070 2046     		mov	r0, r4
 643 0072 3146     		mov	r1, r6
 644 0074 0122     		movs	r2, #1
 645 0076 9847     		blx	r3
 646              	.L152:
 647 0078 B7F88E30 		ldrh	r3, [r7, #142]
 648 007c 2846     		mov	r0, r5
 649 007e 0133     		adds	r3, r3, #1
 650 0080 1621     		movs	r1, #22
 651 0082 A7F88E30 		strh	r3, [r7, #142]	@ movhi
 652 0086 FFF7FEFF 		bl	igmp_send
 653 008a FFF7FEFF 		bl	trueRandom
 654 008e 00F00300 		and	r0, r0, #3
 655 0092 421C     		adds	r2, r0, #1
 656 0094 0123     		movs	r3, #1
 657 0096 EA81     		strh	r2, [r5, #14]	@ movhi
 658 0098 6B73     		strb	r3, [r5, #13]
 659              	.L151:
 660 009a 2B7C     		ldrb	r3, [r5, #16]	@ zero_extendqisi2
 661 009c 0020     		movs	r0, #0
 662 009e 0133     		adds	r3, r3, #1
 663 00a0 2B74     		strb	r3, [r5, #16]
 664 00a2 2468     		ldr	r4, [r4]
 665 00a4 002C     		cmp	r4, #0
 666 00a6 CAD1     		bne	.L153
 667              	.L148:
 668 00a8 40B2     		sxtb	r0, r0
 669 00aa BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 670              	.L166:
 671 00ae 0848     		ldr	r0, .L167
 672 00b0 0D49     		ldr	r1, .L167+24
 673 00b2 40F20B22 		movw	r2, #523
 674 00b6 084B     		ldr	r3, .L167+8
 675 00b8 FFF7FEFF 		bl	debugPrintf
 676              	.L147:
 677 00bc FEE7     		b	.L147
 678              	.L155:
 679 00be FF20     		movs	r0, #255
 680 00c0 40B2     		sxtb	r0, r0
 681 00c2 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 682              	.L154:
 683 00c6 FA20     		movs	r0, #250
 684 00c8 40B2     		sxtb	r0, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvBJUKz.s 			page 13


 685 00ca BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 686              	.L168:
 687 00ce 00BF     		.align	2
 688              	.L167:
 689 00d0 00000000 		.word	.LC0
 690 00d4 28000000 		.word	.LC1
 691 00d8 60000000 		.word	.LC2
 692 00dc 00000000 		.word	.LANCHOR2
 693 00e0 00000000 		.word	netif_list
 694 00e4 00000000 		.word	lwip_stats
 695 00e8 8C000000 		.word	.LC3
 696              		.size	igmp_joingroup, .-igmp_joingroup
 697              		.section	.text.igmp_leavegroup,"ax",%progbits
 698              		.align	2
 699              		.global	igmp_leavegroup
 700              		.thumb
 701              		.thumb_func
 702              		.type	igmp_leavegroup, %function
 703              	igmp_leavegroup:
 704              		@ args = 0, pretend = 0, frame = 0
 705              		@ frame_needed = 0, uses_anonymous_args = 0
 706 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 707 0004 0B68     		ldr	r3, [r1]
 708 0006 0F46     		mov	r7, r1
 709 0008 03F0F002 		and	r2, r3, #240
 710 000c E02A     		cmp	r2, #224
 711 000e 8146     		mov	r9, r0
 712 0010 07D0     		beq	.L170
 713 0012 3448     		ldr	r0, .L222
 714 0014 3449     		ldr	r1, .L222+4
 715 0016 4FF41472 		mov	r2, #592
 716 001a 344B     		ldr	r3, .L222+8
 717 001c FFF7FEFF 		bl	debugPrintf
 718              	.L171:
 719 0020 FEE7     		b	.L171
 720              	.L170:
 721 0022 334A     		ldr	r2, .L222+12
 722 0024 1268     		ldr	r2, [r2]
 723 0026 9342     		cmp	r3, r2
 724 0028 07D1     		bne	.L172
 725 002a 2E48     		ldr	r0, .L222
 726 002c 3149     		ldr	r1, .L222+16
 727 002e 40F25122 		movw	r2, #593
 728 0032 2E4B     		ldr	r3, .L222+8
 729 0034 FFF7FEFF 		bl	debugPrintf
 730              	.L173:
 731 0038 FEE7     		b	.L173
 732              	.L172:
 733 003a 2F4B     		ldr	r3, .L222+20
 734 003c 1D68     		ldr	r5, [r3]
 735 003e 3DB3     		cbz	r5, .L190
 736 0040 2E4E     		ldr	r6, .L222+24
 737 0042 DFF8BC80 		ldr	r8, .L222+28
 738 0046 FA23     		movs	r3, #250
 739 0048 01E0     		b	.L187
 740              	.L175:
 741 004a 2D68     		ldr	r5, [r5]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvBJUKz.s 			page 14


 742 004c 0DB3     		cbz	r5, .L174
 743              	.L187:
 744 004e 95F93520 		ldrsb	r2, [r5, #53]
 745 0052 002A     		cmp	r2, #0
 746 0054 F9DA     		bge	.L175
 747 0056 B9F1000F 		cmp	r9, #0
 748 005a 05D0     		beq	.L176
 749 005c D9F80020 		ldr	r2, [r9]
 750 0060 12B1     		cbz	r2, .L176
 751 0062 6968     		ldr	r1, [r5, #4]
 752 0064 8A42     		cmp	r2, r1
 753 0066 F0D1     		bne	.L175
 754              	.L176:
 755 0068 3468     		ldr	r4, [r6]
 756 006a 1CB9     		cbnz	r4, .L179
 757 006c EDE7     		b	.L175
 758              	.L177:
 759 006e 2468     		ldr	r4, [r4]
 760 0070 002C     		cmp	r4, #0
 761 0072 EAD0     		beq	.L175
 762              	.L179:
 763 0074 6268     		ldr	r2, [r4, #4]
 764 0076 9542     		cmp	r5, r2
 765 0078 F9D1     		bne	.L177
 766 007a A168     		ldr	r1, [r4, #8]
 767 007c 3A68     		ldr	r2, [r7]
 768 007e 9142     		cmp	r1, r2
 769 0080 F5D1     		bne	.L177
 770 0082 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 771 0084 012B     		cmp	r3, #1
 772 0086 07D9     		bls	.L219
 773 0088 013B     		subs	r3, r3, #1
 774 008a 2374     		strb	r3, [r4, #16]
 775 008c 0023     		movs	r3, #0
 776 008e DCE7     		b	.L175
 777              	.L190:
 778 0090 FA23     		movs	r3, #250
 779              	.L174:
 780 0092 58B2     		sxtb	r0, r3
 781 0094 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 782              	.L219:
 783 0098 237B     		ldrb	r3, [r4, #12]	@ zero_extendqisi2
 784 009a 43B1     		cbz	r3, .L180
 785 009c B8F89030 		ldrh	r3, [r8, #144]
 786 00a0 2046     		mov	r0, r4
 787 00a2 0133     		adds	r3, r3, #1
 788 00a4 1721     		movs	r1, #23
 789 00a6 A8F89030 		strh	r3, [r8, #144]	@ movhi
 790 00aa FFF7FEFF 		bl	igmp_send
 791              	.L180:
 792 00ae EB6B     		ldr	r3, [r5, #60]
 793 00b0 1BB1     		cbz	r3, .L181
 794 00b2 2846     		mov	r0, r5
 795 00b4 3946     		mov	r1, r7
 796 00b6 0022     		movs	r2, #0
 797 00b8 9847     		blx	r3
 798              	.L181:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvBJUKz.s 			page 15


 799 00ba 3368     		ldr	r3, [r6]
 800 00bc A342     		cmp	r3, r4
 801 00be 09D0     		beq	.L220
 802 00c0 13B9     		cbnz	r3, .L218
 803 00c2 09E0     		b	.L183
 804              	.L221:
 805 00c4 1346     		mov	r3, r2
 806 00c6 3AB1     		cbz	r2, .L183
 807              	.L218:
 808 00c8 1A68     		ldr	r2, [r3]
 809 00ca A242     		cmp	r2, r4
 810 00cc FAD1     		bne	.L221
 811 00ce 2268     		ldr	r2, [r4]
 812 00d0 1A60     		str	r2, [r3]
 813 00d2 01E0     		b	.L183
 814              	.L220:
 815 00d4 2368     		ldr	r3, [r4]
 816 00d6 3360     		str	r3, [r6]
 817              	.L183:
 818 00d8 2146     		mov	r1, r4
 819 00da 0620     		movs	r0, #6
 820 00dc FFF7FEFF 		bl	memp_free
 821 00e0 0023     		movs	r3, #0
 822 00e2 B2E7     		b	.L175
 823              	.L223:
 824              		.align	2
 825              	.L222:
 826 00e4 00000000 		.word	.LC0
 827 00e8 C0000000 		.word	.LC4
 828 00ec 60000000 		.word	.LC2
 829 00f0 00000000 		.word	.LANCHOR2
 830 00f4 F8000000 		.word	.LC5
 831 00f8 00000000 		.word	netif_list
 832 00fc 00000000 		.word	.LANCHOR1
 833 0100 00000000 		.word	lwip_stats
 834              		.size	igmp_leavegroup, .-igmp_leavegroup
 835              		.section	.text.igmp_tmr,"ax",%progbits
 836              		.align	2
 837              		.global	igmp_tmr
 838              		.thumb
 839              		.thumb_func
 840              		.type	igmp_tmr, %function
 841              	igmp_tmr:
 842              		@ args = 0, pretend = 0, frame = 0
 843              		@ frame_needed = 0, uses_anonymous_args = 0
 844 0000 38B5     		push	{r3, r4, r5, lr}
 845 0002 0F4B     		ldr	r3, .L234
 846 0004 1C68     		ldr	r4, [r3]
 847 0006 D4B1     		cbz	r4, .L224
 848 0008 0E4D     		ldr	r5, .L234+4
 849 000a 01E0     		b	.L230
 850              	.L227:
 851 000c 2468     		ldr	r4, [r4]
 852 000e B4B1     		cbz	r4, .L224
 853              	.L230:
 854 0010 E389     		ldrh	r3, [r4, #14]
 855 0012 5A1E     		subs	r2, r3, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvBJUKz.s 			page 16


 856 0014 92B2     		uxth	r2, r2
 857 0016 002B     		cmp	r3, #0
 858 0018 F8D0     		beq	.L227
 859 001a E281     		strh	r2, [r4, #14]	@ movhi
 860 001c 002A     		cmp	r2, #0
 861 001e F5D1     		bne	.L227
 862 0020 637B     		ldrb	r3, [r4, #13]	@ zero_extendqisi2
 863 0022 012B     		cmp	r3, #1
 864 0024 F2D1     		bne	.L227
 865 0026 B5F89230 		ldrh	r3, [r5, #146]
 866 002a 2046     		mov	r0, r4
 867 002c 0133     		adds	r3, r3, #1
 868 002e 1621     		movs	r1, #22
 869 0030 A5F89230 		strh	r3, [r5, #146]	@ movhi
 870 0034 FFF7FEFF 		bl	igmp_send
 871 0038 2468     		ldr	r4, [r4]
 872 003a 002C     		cmp	r4, #0
 873 003c E8D1     		bne	.L230
 874              	.L224:
 875 003e 38BD     		pop	{r3, r4, r5, pc}
 876              	.L235:
 877              		.align	2
 878              	.L234:
 879 0040 00000000 		.word	.LANCHOR1
 880 0044 00000000 		.word	lwip_stats
 881              		.size	igmp_tmr, .-igmp_tmr
 882              		.section	.bss.allsystems,"aw",%nobits
 883              		.align	2
 884              		.set	.LANCHOR2,. + 0
 885              		.type	allsystems, %object
 886              		.size	allsystems, 4
 887              	allsystems:
 888 0000 00000000 		.space	4
 889              		.section	.bss.allrouters,"aw",%nobits
 890              		.align	2
 891              		.set	.LANCHOR0,. + 0
 892              		.type	allrouters, %object
 893              		.size	allrouters, 4
 894              	allrouters:
 895 0000 00000000 		.space	4
 896              		.section	.rodata.str1.4,"aMS",%progbits,1
 897              		.align	2
 898              	.LC0:
 899 0000 41737365 		.ascii	"Assertion \"%s\" failed at line %d in %s\012\000"
 899      7274696F 
 899      6E202225 
 899      73222066 
 899      61696C65 
 900              	.LC1:
 901 0028 69676D70 		.ascii	"igmp_joingroup: attempt to join non-multicast addre"
 901      5F6A6F69 
 901      6E67726F 
 901      75703A20 
 901      61747465 
 902 005b 737300   		.ascii	"ss\000"
 903 005e 0000     		.space	2
 904              	.LC2:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvBJUKz.s 			page 17


 905 0060 2E2E2F73 		.ascii	"../src/Duet/Lwip/lwip/src/core/ipv4/igmp.c\000"
 905      72632F44 
 905      7565742F 
 905      4C776970 
 905      2F6C7769 
 906 008b 00       		.space	1
 907              	.LC3:
 908 008c 69676D70 		.ascii	"igmp_joingroup: attempt to join allsystems address\000"
 908      5F6A6F69 
 908      6E67726F 
 908      75703A20 
 908      61747465 
 909 00bf 00       		.space	1
 910              	.LC4:
 911 00c0 69676D70 		.ascii	"igmp_leavegroup: attempt to leave non-multicast add"
 911      5F6C6561 
 911      76656772 
 911      6F75703A 
 911      20617474 
 912 00f3 72657373 		.ascii	"ress\000"
 912      00
 913              	.LC5:
 914 00f8 69676D70 		.ascii	"igmp_leavegroup: attempt to leave allsystems addres"
 914      5F6C6561 
 914      76656772 
 914      6F75703A 
 914      20617474 
 915 012b 7300     		.ascii	"s\000"
 916 012d 000000   		.section	.bss.igmp_group_list,"aw",%nobits
 917              		.align	2
 918              		.set	.LANCHOR1,. + 0
 919              		.type	igmp_group_list, %object
 920              		.size	igmp_group_list, 4
 921              	igmp_group_list:
 922 0000 00000000 		.space	4
 923              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
