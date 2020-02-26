ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 1


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
  14              		.file	"tcp.c"
  15              		.section	.text.tcp_accept_null,"ax",%progbits
  16              		.align	2
  17              		.thumb
  18              		.thumb_func
  19              		.type	tcp_accept_null, %function
  20              	tcp_accept_null:
  21              		@ args = 0, pretend = 0, frame = 0
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23              		@ link register save eliminated.
  24 0000 6FF00900 		mvn	r0, #9
  25 0004 7047     		bx	lr
  26              		.size	tcp_accept_null, .-tcp_accept_null
  27 0006 00BF     		.section	.text.tcp_new_port,"ax",%progbits
  28              		.align	2
  29              		.thumb
  30              		.thumb_func
  31              		.type	tcp_new_port, %function
  32              	tcp_new_port:
  33              		@ args = 0, pretend = 0, frame = 0
  34              		@ frame_needed = 0, uses_anonymous_args = 0
  35              		@ link register save eliminated.
  36 0000 F0B4     		push	{r4, r5, r6, r7}
  37 0002 124E     		ldr	r6, .L24
  38 0004 124F     		ldr	r7, .L24+4
  39 0006 3088     		ldrh	r0, [r6]
  40 0008 4FF48044 		mov	r4, #16384
  41 000c 4FF6FF75 		movw	r5, #65535
  42              	.L3:
  43 0010 A842     		cmp	r0, r5
  44 0012 18BF     		it	ne
  45 0014 0130     		addne	r0, r0, #1
  46 0016 0F49     		ldr	r1, .L24+8
  47 0018 14BF     		ite	ne
  48 001a 80B2     		uxthne	r0, r0
  49 001c 4FF44040 		moveq	r0, #49152
  50              	.L14:
  51 0020 51F8043F 		ldr	r3, [r1, #4]!
  52 0024 1B68     		ldr	r3, [r3]
  53 0026 13B9     		cbnz	r3, .L22
  54 0028 0BE0     		b	.L5
  55              	.L10:
  56 002a DB68     		ldr	r3, [r3, #12]
  57 002c 4BB1     		cbz	r3, .L5
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 2


  58              	.L22:
  59 002e 5A8B     		ldrh	r2, [r3, #26]
  60 0030 8242     		cmp	r2, r0
  61 0032 FAD1     		bne	.L10
  62 0034 013C     		subs	r4, r4, #1
  63 0036 A4B2     		uxth	r4, r4
  64 0038 002C     		cmp	r4, #0
  65 003a E9D1     		bne	.L3
  66 003c 3080     		strh	r0, [r6]	@ movhi
  67 003e 2046     		mov	r0, r4
  68 0040 02E0     		b	.L11
  69              	.L5:
  70 0042 B942     		cmp	r1, r7
  71 0044 ECD1     		bne	.L14
  72 0046 3080     		strh	r0, [r6]	@ movhi
  73              	.L11:
  74 0048 F0BC     		pop	{r4, r5, r6, r7}
  75 004a 7047     		bx	lr
  76              	.L25:
  77              		.align	2
  78              	.L24:
  79 004c 00000000 		.word	.LANCHOR0
  80 0050 0C000000 		.word	.LANCHOR1+12
  81 0054 FCFFFFFF 		.word	.LANCHOR1-4
  82              		.size	tcp_new_port, .-tcp_new_port
  83              		.section	.text.tcp_init,"ax",%progbits
  84              		.align	2
  85              		.global	tcp_init
  86              		.thumb
  87              		.thumb_func
  88              		.type	tcp_init, %function
  89              	tcp_init:
  90              		@ args = 0, pretend = 0, frame = 0
  91              		@ frame_needed = 0, uses_anonymous_args = 0
  92              		@ link register save eliminated.
  93 0000 7047     		bx	lr
  94              		.size	tcp_init, .-tcp_init
  95 0002 00BF     		.section	.text.tcp_bind,"ax",%progbits
  96              		.align	2
  97              		.global	tcp_bind
  98              		.thumb
  99              		.thumb_func
 100              		.type	tcp_bind, %function
 101              	tcp_bind:
 102              		@ args = 0, pretend = 0, frame = 0
 103              		@ frame_needed = 0, uses_anonymous_args = 0
 104 0000 037E     		ldrb	r3, [r0, #24]	@ zero_extendqisi2
 105 0002 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 106 0006 0546     		mov	r5, r0
 107 0008 0E46     		mov	r6, r1
 108 000a 002B     		cmp	r3, #0
 109 000c 42D1     		bne	.L62
 110 000e 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 111 0010 13F0040F 		tst	r3, #4
 112 0014 14BF     		ite	ne
 113 0016 4FF00308 		movne	r8, #3
 114 001a 4FF00408 		moveq	r8, #4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 3


 115 001e 002A     		cmp	r2, #0
 116 0020 2FD0     		beq	.L63
 117              	.L31:
 118 0022 DFF890C0 		ldr	ip, .L64+16
 119 0026 0027     		movs	r7, #0
 120              	.L38:
 121 0028 5CF8043F 		ldr	r3, [ip, #4]!
 122 002c 1B68     		ldr	r3, [r3]
 123 002e 13B9     		cbnz	r3, .L36
 124 0030 15E0     		b	.L33
 125              	.L34:
 126 0032 DB68     		ldr	r3, [r3, #12]
 127 0034 9BB1     		cbz	r3, .L33
 128              	.L36:
 129 0036 5C8B     		ldrh	r4, [r3, #26]
 130 0038 9442     		cmp	r4, r2
 131 003a FAD1     		bne	.L34
 132 003c 297A     		ldrb	r1, [r5, #8]	@ zero_extendqisi2
 133 003e 4807     		lsls	r0, r1, #29
 134 0040 02D5     		bpl	.L35
 135 0042 197A     		ldrb	r1, [r3, #8]	@ zero_extendqisi2
 136 0044 4907     		lsls	r1, r1, #29
 137 0046 F4D4     		bmi	.L34
 138              	.L35:
 139 0048 1868     		ldr	r0, [r3]
 140 004a 20B1     		cbz	r0, .L45
 141 004c 1EB1     		cbz	r6, .L45
 142 004e 3168     		ldr	r1, [r6]
 143 0050 09B1     		cbz	r1, .L45
 144 0052 8842     		cmp	r0, r1
 145 0054 EDD1     		bne	.L34
 146              	.L45:
 147 0056 F820     		movs	r0, #248
 148 0058 40B2     		sxtb	r0, r0
 149 005a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 150              	.L33:
 151 005e 0137     		adds	r7, r7, #1
 152 0060 B845     		cmp	r8, r7
 153 0062 E1DC     		bgt	.L38
 154 0064 16B1     		cbz	r6, .L39
 155 0066 3368     		ldr	r3, [r6]
 156 0068 03B1     		cbz	r3, .L39
 157 006a 2B60     		str	r3, [r5]
 158              	.L39:
 159 006c 0D4B     		ldr	r3, .L64
 160 006e 6A83     		strh	r2, [r5, #26]	@ movhi
 161 0070 1A68     		ldr	r2, [r3]
 162 0072 1D60     		str	r5, [r3]
 163 0074 EA60     		str	r2, [r5, #12]
 164 0076 FFF7FEFF 		bl	tcp_timer_needed
 165 007a 0020     		movs	r0, #0
 166 007c 40B2     		sxtb	r0, r0
 167 007e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 168              	.L63:
 169 0082 FFF7FEFF 		bl	tcp_new_port
 170 0086 0246     		mov	r2, r0
 171 0088 0028     		cmp	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 4


 172 008a CAD1     		bne	.L31
 173 008c FE20     		movs	r0, #254
 174 008e 40B2     		sxtb	r0, r0
 175 0090 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 176              	.L62:
 177 0094 0448     		ldr	r0, .L64+4
 178 0096 0549     		ldr	r1, .L64+8
 179 0098 40F2B712 		movw	r2, #439
 180 009c 044B     		ldr	r3, .L64+12
 181 009e FFF7FEFF 		bl	debugPrintf
 182              	.L29:
 183 00a2 FEE7     		b	.L29
 184              	.L65:
 185              		.align	2
 186              	.L64:
 187 00a4 00000000 		.word	tcp_bound_pcbs
 188 00a8 00000000 		.word	.LC0
 189 00ac 28000000 		.word	.LC1
 190 00b0 50000000 		.word	.LC2
 191 00b4 FCFFFFFF 		.word	.LANCHOR1-4
 192              		.size	tcp_bind, .-tcp_bind
 193              		.section	.text.tcp_listen_with_backlog,"ax",%progbits
 194              		.align	2
 195              		.global	tcp_listen_with_backlog
 196              		.thumb
 197              		.thumb_func
 198              		.type	tcp_listen_with_backlog, %function
 199              	tcp_listen_with_backlog:
 200              		@ args = 0, pretend = 0, frame = 0
 201              		@ frame_needed = 0, uses_anonymous_args = 0
 202 0000 38B5     		push	{r3, r4, r5, lr}
 203 0002 037E     		ldrb	r3, [r0, #24]	@ zero_extendqisi2
 204 0004 0446     		mov	r4, r0
 205 0006 002B     		cmp	r3, #0
 206 0008 4ED1     		bne	.L100
 207 000a 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 208 000c 5B07     		lsls	r3, r3, #29
 209 000e 0FD5     		bpl	.L69
 210 0010 304B     		ldr	r3, .L104
 211 0012 1B68     		ldr	r3, [r3]
 212 0014 63B1     		cbz	r3, .L69
 213 0016 418B     		ldrh	r1, [r0, #26]
 214 0018 01E0     		b	.L72
 215              	.L70:
 216 001a DB68     		ldr	r3, [r3, #12]
 217 001c 43B1     		cbz	r3, .L69
 218              	.L72:
 219 001e 5A8B     		ldrh	r2, [r3, #26]
 220 0020 8A42     		cmp	r2, r1
 221 0022 FAD1     		bne	.L70
 222 0024 1868     		ldr	r0, [r3]
 223 0026 2268     		ldr	r2, [r4]
 224 0028 9042     		cmp	r0, r2
 225 002a F6D1     		bne	.L70
 226              	.L73:
 227 002c 0020     		movs	r0, #0
 228 002e 38BD     		pop	{r3, r4, r5, pc}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 5


 229              	.L69:
 230 0030 0220     		movs	r0, #2
 231 0032 FFF7FEFF 		bl	memp_malloc
 232 0036 0546     		mov	r5, r0
 233 0038 0028     		cmp	r0, #0
 234 003a F7D0     		beq	.L73
 235 003c 2369     		ldr	r3, [r4, #16]
 236 003e 618B     		ldrh	r1, [r4, #26]
 237 0040 0122     		movs	r2, #1
 238 0042 0276     		strb	r2, [r0, #24]
 239 0044 0361     		str	r3, [r0, #16]
 240 0046 4183     		strh	r1, [r0, #26]	@ movhi
 241 0048 637E     		ldrb	r3, [r4, #25]	@ zero_extendqisi2
 242 004a 4376     		strb	r3, [r0, #25]
 243 004c 237A     		ldrb	r3, [r4, #8]	@ zero_extendqisi2
 244 004e 43F00203 		orr	r3, r3, #2
 245 0052 0372     		strb	r3, [r0, #8]
 246 0054 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 247 0056 8372     		strb	r3, [r0, #10]
 248 0058 637A     		ldrb	r3, [r4, #9]	@ zero_extendqisi2
 249 005a 4372     		strb	r3, [r0, #9]
 250 005c 2368     		ldr	r3, [r4]
 251 005e 628B     		ldrh	r2, [r4, #26]
 252 0060 0360     		str	r3, [r0]
 253 0062 9AB1     		cbz	r2, .L74
 254 0064 1C4B     		ldr	r3, .L104+4
 255 0066 1A68     		ldr	r2, [r3]
 256 0068 A242     		cmp	r2, r4
 257 006a 2DD0     		beq	.L101
 258 006c 1B49     		ldr	r1, .L104+8
 259 006e 0A60     		str	r2, [r1]
 260 0070 52B1     		cbz	r2, .L76
 261 0072 D368     		ldr	r3, [r2, #12]
 262 0074 A342     		cmp	r3, r4
 263 0076 25D0     		beq	.L102
 264 0078 2BB1     		cbz	r3, .L103
 265              	.L82:
 266 007a DA68     		ldr	r2, [r3, #12]
 267 007c A242     		cmp	r2, r4
 268 007e 1BD0     		beq	.L80
 269 0080 1346     		mov	r3, r2
 270 0082 002B     		cmp	r3, #0
 271 0084 F9D1     		bne	.L82
 272              	.L103:
 273 0086 0B60     		str	r3, [r1]
 274              	.L76:
 275 0088 0023     		movs	r3, #0
 276 008a E360     		str	r3, [r4, #12]
 277              	.L74:
 278 008c 2146     		mov	r1, r4
 279 008e 0120     		movs	r0, #1
 280 0090 FFF7FEFF 		bl	memp_free
 281 0094 0F4B     		ldr	r3, .L104
 282 0096 1249     		ldr	r1, .L104+12
 283 0098 1A68     		ldr	r2, [r3]
 284 009a 6961     		str	r1, [r5, #20]
 285 009c EA60     		str	r2, [r5, #12]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 6


 286 009e 1D60     		str	r5, [r3]
 287 00a0 FFF7FEFF 		bl	tcp_timer_needed
 288 00a4 2846     		mov	r0, r5
 289 00a6 38BD     		pop	{r3, r4, r5, pc}
 290              	.L100:
 291 00a8 0E48     		ldr	r0, .L104+16
 292 00aa 0F49     		ldr	r1, .L104+20
 293 00ac 4FF40372 		mov	r2, #524
 294 00b0 0E4B     		ldr	r3, .L104+24
 295 00b2 FFF7FEFF 		bl	debugPrintf
 296              	.L68:
 297 00b6 FEE7     		b	.L68
 298              	.L80:
 299 00b8 0B60     		str	r3, [r1]
 300              	.L78:
 301 00ba E268     		ldr	r2, [r4, #12]
 302 00bc DA60     		str	r2, [r3, #12]
 303 00be 0023     		movs	r3, #0
 304 00c0 E360     		str	r3, [r4, #12]
 305 00c2 E3E7     		b	.L74
 306              	.L102:
 307 00c4 1346     		mov	r3, r2
 308 00c6 F8E7     		b	.L78
 309              	.L101:
 310 00c8 E268     		ldr	r2, [r4, #12]
 311 00ca 1A60     		str	r2, [r3]
 312 00cc 0023     		movs	r3, #0
 313 00ce E360     		str	r3, [r4, #12]
 314 00d0 DCE7     		b	.L74
 315              	.L105:
 316 00d2 00BF     		.align	2
 317              	.L104:
 318 00d4 00000000 		.word	tcp_listen_pcbs
 319 00d8 00000000 		.word	tcp_bound_pcbs
 320 00dc 00000000 		.word	tcp_tmp_pcb
 321 00e0 00000000 		.word	tcp_accept_null
 322 00e4 00000000 		.word	.LC0
 323 00e8 78000000 		.word	.LC3
 324 00ec 50000000 		.word	.LC2
 325              		.size	tcp_listen_with_backlog, .-tcp_listen_with_backlog
 326              		.section	.text.tcp_update_rcv_ann_wnd,"ax",%progbits
 327              		.align	2
 328              		.global	tcp_update_rcv_ann_wnd
 329              		.thumb
 330              		.thumb_func
 331              		.type	tcp_update_rcv_ann_wnd, %function
 332              	tcp_update_rcv_ann_wnd:
 333              		@ args = 0, pretend = 0, frame = 0
 334              		@ frame_needed = 0, uses_anonymous_args = 0
 335              		@ link register save eliminated.
 336 0000 70B4     		push	{r4, r5, r6}
 337 0002 828D     		ldrh	r2, [r0, #44]
 338 0004 046B     		ldr	r4, [r0, #48]
 339 0006 816A     		ldr	r1, [r0, #40]
 340 0008 C68E     		ldrh	r6, [r0, #54]
 341 000a 0346     		mov	r3, r0
 342 000c 40F2B455 		movw	r5, #1460
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 7


 343 0010 101B     		subs	r0, r2, r4
 344 0012 AE42     		cmp	r6, r5
 345 0014 38BF     		it	cc
 346 0016 3546     		movcc	r5, r6
 347 0018 0844     		add	r0, r0, r1
 348 001a 451B     		subs	r5, r0, r5
 349 001c 002D     		cmp	r5, #0
 350 001e 02DB     		blt	.L108
 351 0020 70BC     		pop	{r4, r5, r6}
 352 0022 DA85     		strh	r2, [r3, #46]	@ movhi
 353 0024 7047     		bx	lr
 354              	.L108:
 355 0026 0A1B     		subs	r2, r1, r4
 356 0028 002A     		cmp	r2, #0
 357 002a 03DD     		ble	.L110
 358 002c 70BC     		pop	{r4, r5, r6}
 359 002e 0020     		movs	r0, #0
 360 0030 D885     		strh	r0, [r3, #46]	@ movhi
 361 0032 7047     		bx	lr
 362              	.L110:
 363 0034 611A     		subs	r1, r4, r1
 364 0036 0020     		movs	r0, #0
 365 0038 D985     		strh	r1, [r3, #46]	@ movhi
 366 003a 70BC     		pop	{r4, r5, r6}
 367 003c 7047     		bx	lr
 368              		.size	tcp_update_rcv_ann_wnd, .-tcp_update_rcv_ann_wnd
 369 003e 00BF     		.section	.text.tcp_recved,"ax",%progbits
 370              		.align	2
 371              		.global	tcp_recved
 372              		.thumb
 373              		.thumb_func
 374              		.type	tcp_recved, %function
 375              	tcp_recved:
 376              		@ args = 0, pretend = 0, frame = 0
 377              		@ frame_needed = 0, uses_anonymous_args = 0
 378 0000 828D     		ldrh	r2, [r0, #44]
 379 0002 40F66833 		movw	r3, #2920
 380 0006 1144     		add	r1, r1, r2
 381 0008 89B2     		uxth	r1, r1
 382 000a 9942     		cmp	r1, r3
 383 000c 10B5     		push	{r4, lr}
 384 000e 8CBF     		ite	hi
 385 0010 8385     		strhhi	r3, [r0, #44]	@ movhi
 386 0012 8185     		strhls	r1, [r0, #44]	@ movhi
 387 0014 0446     		mov	r4, r0
 388 0016 FFF7FEFF 		bl	tcp_update_rcv_ann_wnd
 389 001a 40F2D923 		movw	r3, #729
 390 001e 9842     		cmp	r0, r3
 391 0020 00DC     		bgt	.L116
 392 0022 10BD     		pop	{r4, pc}
 393              	.L116:
 394 0024 A37F     		ldrb	r3, [r4, #30]	@ zero_extendqisi2
 395 0026 2046     		mov	r0, r4
 396 0028 43F00203 		orr	r3, r3, #2
 397 002c A377     		strb	r3, [r4, #30]
 398 002e BDE81040 		pop	{r4, lr}
 399 0032 FFF7FEBF 		b	tcp_output
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 8


 400              		.size	tcp_recved, .-tcp_recved
 401 0036 00BF     		.section	.text.tcp_seg_free,"ax",%progbits
 402              		.align	2
 403              		.global	tcp_seg_free
 404              		.thumb
 405              		.thumb_func
 406              		.type	tcp_seg_free, %function
 407              	tcp_seg_free:
 408              		@ args = 0, pretend = 0, frame = 0
 409              		@ frame_needed = 0, uses_anonymous_args = 0
 410 0000 10B5     		push	{r4, lr}
 411 0002 0446     		mov	r4, r0
 412 0004 48B1     		cbz	r0, .L117
 413 0006 4068     		ldr	r0, [r0, #4]
 414 0008 08B1     		cbz	r0, .L119
 415 000a FFF7FEFF 		bl	pbuf_free
 416              	.L119:
 417 000e 2146     		mov	r1, r4
 418 0010 0320     		movs	r0, #3
 419 0012 BDE81040 		pop	{r4, lr}
 420 0016 FFF7FEBF 		b	memp_free
 421              	.L117:
 422 001a 10BD     		pop	{r4, pc}
 423              		.size	tcp_seg_free, .-tcp_seg_free
 424              		.section	.text.tcp_segs_free,"ax",%progbits
 425              		.align	2
 426              		.global	tcp_segs_free
 427              		.thumb
 428              		.thumb_func
 429              		.type	tcp_segs_free, %function
 430              	tcp_segs_free:
 431              		@ args = 0, pretend = 0, frame = 0
 432              		@ frame_needed = 0, uses_anonymous_args = 0
 433 0000 10B5     		push	{r4, lr}
 434 0002 08B9     		cbnz	r0, .L126
 435 0004 05E0     		b	.L123
 436              	.L130:
 437 0006 2046     		mov	r0, r4
 438              	.L126:
 439 0008 0468     		ldr	r4, [r0]
 440 000a FFF7FEFF 		bl	tcp_seg_free
 441 000e 002C     		cmp	r4, #0
 442 0010 F9D1     		bne	.L130
 443              	.L123:
 444 0012 10BD     		pop	{r4, pc}
 445              		.size	tcp_segs_free, .-tcp_segs_free
 446              		.section	.text.tcp_setprio,"ax",%progbits
 447              		.align	2
 448              		.global	tcp_setprio
 449              		.thumb
 450              		.thumb_func
 451              		.type	tcp_setprio, %function
 452              	tcp_setprio:
 453              		@ args = 0, pretend = 0, frame = 0
 454              		@ frame_needed = 0, uses_anonymous_args = 0
 455              		@ link register save eliminated.
 456 0000 4176     		strb	r1, [r0, #25]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 9


 457 0002 7047     		bx	lr
 458              		.size	tcp_setprio, .-tcp_setprio
 459              		.section	.text.tcp_seg_copy,"ax",%progbits
 460              		.align	2
 461              		.global	tcp_seg_copy
 462              		.thumb
 463              		.thumb_func
 464              		.type	tcp_seg_copy, %function
 465              	tcp_seg_copy:
 466              		@ args = 0, pretend = 0, frame = 0
 467              		@ frame_needed = 0, uses_anonymous_args = 0
 468 0000 38B5     		push	{r3, r4, r5, lr}
 469 0002 0546     		mov	r5, r0
 470 0004 0320     		movs	r0, #3
 471 0006 FFF7FEFF 		bl	memp_malloc
 472 000a 0446     		mov	r4, r0
 473 000c 50B1     		cbz	r0, .L133
 474 000e 6868     		ldr	r0, [r5, #4]	@ unaligned
 475 0010 2968     		ldr	r1, [r5]	@ unaligned
 476 0012 AA68     		ldr	r2, [r5, #8]	@ unaligned
 477 0014 EB68     		ldr	r3, [r5, #12]	@ unaligned
 478 0016 6060     		str	r0, [r4, #4]	@ unaligned
 479 0018 2160     		str	r1, [r4]	@ unaligned
 480 001a A260     		str	r2, [r4, #8]	@ unaligned
 481 001c E360     		str	r3, [r4, #12]	@ unaligned
 482 001e 6068     		ldr	r0, [r4, #4]
 483 0020 FFF7FEFF 		bl	pbuf_ref
 484              	.L133:
 485 0024 2046     		mov	r0, r4
 486 0026 38BD     		pop	{r3, r4, r5, pc}
 487              		.size	tcp_seg_copy, .-tcp_seg_copy
 488              		.section	.text.tcp_arg,"ax",%progbits
 489              		.align	2
 490              		.global	tcp_arg
 491              		.thumb
 492              		.thumb_func
 493              		.type	tcp_arg, %function
 494              	tcp_arg:
 495              		@ args = 0, pretend = 0, frame = 0
 496              		@ frame_needed = 0, uses_anonymous_args = 0
 497              		@ link register save eliminated.
 498 0000 0161     		str	r1, [r0, #16]
 499 0002 7047     		bx	lr
 500              		.size	tcp_arg, .-tcp_arg
 501              		.section	.text.tcp_recv,"ax",%progbits
 502              		.align	2
 503              		.global	tcp_recv
 504              		.thumb
 505              		.thumb_func
 506              		.type	tcp_recv, %function
 507              	tcp_recv:
 508              		@ args = 0, pretend = 0, frame = 0
 509              		@ frame_needed = 0, uses_anonymous_args = 0
 510              		@ link register save eliminated.
 511 0000 C0F88010 		str	r1, [r0, #128]
 512 0004 7047     		bx	lr
 513              		.size	tcp_recv, .-tcp_recv
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 10


 514 0006 00BF     		.section	.text.tcp_sent,"ax",%progbits
 515              		.align	2
 516              		.global	tcp_sent
 517              		.thumb
 518              		.thumb_func
 519              		.type	tcp_sent, %function
 520              	tcp_sent:
 521              		@ args = 0, pretend = 0, frame = 0
 522              		@ frame_needed = 0, uses_anonymous_args = 0
 523              		@ link register save eliminated.
 524 0000 C167     		str	r1, [r0, #124]
 525 0002 7047     		bx	lr
 526              		.size	tcp_sent, .-tcp_sent
 527              		.section	.text.tcp_err,"ax",%progbits
 528              		.align	2
 529              		.global	tcp_err
 530              		.thumb
 531              		.thumb_func
 532              		.type	tcp_err, %function
 533              	tcp_err:
 534              		@ args = 0, pretend = 0, frame = 0
 535              		@ frame_needed = 0, uses_anonymous_args = 0
 536              		@ link register save eliminated.
 537 0000 C0F88C10 		str	r1, [r0, #140]
 538 0004 7047     		bx	lr
 539              		.size	tcp_err, .-tcp_err
 540 0006 00BF     		.section	.text.tcp_accept,"ax",%progbits
 541              		.align	2
 542              		.global	tcp_accept
 543              		.thumb
 544              		.thumb_func
 545              		.type	tcp_accept, %function
 546              	tcp_accept:
 547              		@ args = 0, pretend = 0, frame = 0
 548              		@ frame_needed = 0, uses_anonymous_args = 0
 549              		@ link register save eliminated.
 550 0000 4161     		str	r1, [r0, #20]
 551 0002 7047     		bx	lr
 552              		.size	tcp_accept, .-tcp_accept
 553              		.section	.text.tcp_poll,"ax",%progbits
 554              		.align	2
 555              		.global	tcp_poll
 556              		.thumb
 557              		.thumb_func
 558              		.type	tcp_poll, %function
 559              	tcp_poll:
 560              		@ args = 0, pretend = 0, frame = 0
 561              		@ frame_needed = 0, uses_anonymous_args = 0
 562              		@ link register save eliminated.
 563 0000 C0F88810 		str	r1, [r0, #136]
 564 0004 80F82020 		strb	r2, [r0, #32]
 565 0008 7047     		bx	lr
 566              		.size	tcp_poll, .-tcp_poll
 567 000a 00BF     		.section	.text.tcp_pcb_purge,"ax",%progbits
 568              		.align	2
 569              		.global	tcp_pcb_purge
 570              		.thumb
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 11


 571              		.thumb_func
 572              		.type	tcp_pcb_purge, %function
 573              	tcp_pcb_purge:
 574              		@ args = 0, pretend = 0, frame = 0
 575              		@ frame_needed = 0, uses_anonymous_args = 0
 576 0000 38B5     		push	{r3, r4, r5, lr}
 577 0002 037E     		ldrb	r3, [r0, #24]	@ zero_extendqisi2
 578 0004 0546     		mov	r5, r0
 579 0006 012B     		cmp	r3, #1
 580 0008 2DD9     		bls	.L143
 581 000a 0A2B     		cmp	r3, #10
 582 000c 2BD0     		beq	.L143
 583 000e 806F     		ldr	r0, [r0, #120]
 584 0010 18B1     		cbz	r0, .L145
 585 0012 FFF7FEFF 		bl	pbuf_free
 586 0016 0023     		movs	r3, #0
 587 0018 AB67     		str	r3, [r5, #120]
 588              	.L145:
 589 001a 686F     		ldr	r0, [r5, #116]
 590 001c 08B9     		cbnz	r0, .L150
 591 001e 05E0     		b	.L149
 592              	.L170:
 593 0020 2046     		mov	r0, r4
 594              	.L150:
 595 0022 0468     		ldr	r4, [r0]
 596 0024 FFF7FEFF 		bl	tcp_seg_free
 597 0028 002C     		cmp	r4, #0
 598 002a F9D1     		bne	.L170
 599              	.L149:
 600 002c E86E     		ldr	r0, [r5, #108]
 601 002e 0022     		movs	r2, #0
 602 0030 4FF6FF73 		movw	r3, #65535
 603 0034 6A67     		str	r2, [r5, #116]
 604 0036 AB86     		strh	r3, [r5, #52]	@ movhi
 605 0038 08B9     		cbnz	r0, .L153
 606 003a 05E0     		b	.L148
 607              	.L171:
 608 003c 2046     		mov	r0, r4
 609              	.L153:
 610 003e 0468     		ldr	r4, [r0]
 611 0040 FFF7FEFF 		bl	tcp_seg_free
 612 0044 002C     		cmp	r4, #0
 613 0046 F9D1     		bne	.L171
 614              	.L148:
 615 0048 286F     		ldr	r0, [r5, #112]
 616 004a 08B9     		cbnz	r0, .L154
 617 004c 05E0     		b	.L152
 618              	.L172:
 619 004e 2046     		mov	r0, r4
 620              	.L154:
 621 0050 0468     		ldr	r4, [r0]
 622 0052 FFF7FEFF 		bl	tcp_seg_free
 623 0056 002C     		cmp	r4, #0
 624 0058 F9D1     		bne	.L172
 625              	.L152:
 626 005a 0023     		movs	r3, #0
 627 005c EB66     		str	r3, [r5, #108]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 12


 628 005e 2B67     		str	r3, [r5, #112]
 629 0060 A5F86A30 		strh	r3, [r5, #106]	@ movhi
 630 0064 38BD     		pop	{r3, r4, r5, pc}
 631              	.L143:
 632 0066 38BD     		pop	{r3, r4, r5, pc}
 633              		.size	tcp_pcb_purge, .-tcp_pcb_purge
 634              		.section	.text.tcp_slowtmr,"ax",%progbits
 635              		.align	2
 636              		.global	tcp_slowtmr
 637              		.thumb
 638              		.thumb_func
 639              		.type	tcp_slowtmr, %function
 640              	tcp_slowtmr:
 641              		@ args = 0, pretend = 0, frame = 0
 642              		@ frame_needed = 0, uses_anonymous_args = 0
 643 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 644 0004 BB4D     		ldr	r5, .L264
 645 0006 BC4E     		ldr	r6, .L264+4
 646 0008 2B68     		ldr	r3, [r5]
 647 000a 3278     		ldrb	r2, [r6]	@ zero_extendqisi2
 648 000c 0133     		adds	r3, r3, #1
 649 000e 0132     		adds	r2, r2, #1
 650 0010 DFF8FC92 		ldr	r9, .L264+28
 651 0014 83B0     		sub	sp, sp, #12
 652 0016 2B60     		str	r3, [r5]
 653 0018 3270     		strb	r2, [r6]
 654              	.L174:
 655 001a B848     		ldr	r0, .L264+8
 656 001c 0468     		ldr	r4, [r0]
 657 001e 002C     		cmp	r4, #0
 658 0020 00F09180 		beq	.L207
 659 0024 3278     		ldrb	r2, [r6]	@ zero_extendqisi2
 660 0026 94F82130 		ldrb	r3, [r4, #33]	@ zero_extendqisi2
 661 002a 4FF00008 		mov	r8, #0
 662 002e 9342     		cmp	r3, r2
 663 0030 00F08480 		beq	.L255
 664              	.L178:
 665 0034 237E     		ldrb	r3, [r4, #24]	@ zero_extendqisi2
 666 0036 84F82120 		strb	r2, [r4, #33]
 667 003a 022B     		cmp	r3, #2
 668 003c 94F84620 		ldrb	r2, [r4, #70]	@ zero_extendqisi2
 669 0040 00F01E81 		beq	.L180
 670              	.L181:
 671 0044 082A     		cmp	r2, #8
 672 0046 00F02281 		beq	.L217
 673 004a 94F89510 		ldrb	r1, [r4, #149]	@ zero_extendqisi2
 674 004e 0029     		cmp	r1, #0
 675 0050 00F0C580 		beq	.L184
 676 0054 AA48     		ldr	r0, .L264+12
 677 0056 94F89420 		ldrb	r2, [r4, #148]	@ zero_extendqisi2
 678 005a 0844     		add	r0, r0, r1
 679 005c 0132     		adds	r2, r2, #1
 680 005e 10F8010C 		ldrb	r0, [r0, #-1]	@ zero_extendqisi2
 681 0062 D2B2     		uxtb	r2, r2
 682 0064 9042     		cmp	r0, r2
 683 0066 84F89420 		strb	r2, [r4, #148]
 684 006a 00F2FE80 		bhi	.L220
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 13


 685 006e 0629     		cmp	r1, #6
 686 0070 4FF00003 		mov	r3, #0
 687 0074 98BF     		it	ls
 688 0076 0131     		addls	r1, r1, #1
 689 0078 84F89430 		strb	r3, [r4, #148]
 690 007c 98BF     		it	ls
 691 007e 84F89510 		strbls	r1, [r4, #149]
 692 0082 2046     		mov	r0, r4
 693 0084 FFF7FEFF 		bl	tcp_zero_window_probe
 694 0088 237E     		ldrb	r3, [r4, #24]	@ zero_extendqisi2
 695 008a 0027     		movs	r7, #0
 696              	.L183:
 697 008c 062B     		cmp	r3, #6
 698 008e 00F0DF80 		beq	.L256
 699              	.L189:
 700 0092 227A     		ldrb	r2, [r4, #8]	@ zero_extendqisi2
 701 0094 02F00802 		and	r2, r2, #8
 702 0098 02F0FF0A 		and	r10, r2, #255
 703 009c 3AB1     		cbz	r2, .L182
 704 009e 042B     		cmp	r3, #4
 705 00a0 00F0F780 		beq	.L191
 706 00a4 072B     		cmp	r3, #7
 707 00a6 00F0F480 		beq	.L191
 708              	.L223:
 709 00aa 4FF0000A 		mov	r10, #0
 710              	.L182:
 711 00ae 606F     		ldr	r0, [r4, #116]
 712 00b0 A0B1     		cbz	r0, .L193
 713 00b2 2968     		ldr	r1, [r5]
 714 00b4 626A     		ldr	r2, [r4, #36]
 715 00b6 B4F94430 		ldrsh	r3, [r4, #68]
 716 00ba 8A1A     		subs	r2, r1, r2
 717 00bc 03EB4303 		add	r3, r3, r3, lsl #1
 718 00c0 B2EB430F 		cmp	r2, r3, lsl #1
 719 00c4 0AD3     		bcc	.L193
 720 00c6 A346     		mov	fp, r4
 721 00c8 00E0     		b	.L195
 722              	.L257:
 723 00ca 2046     		mov	r0, r4
 724              	.L195:
 725 00cc 0468     		ldr	r4, [r0]
 726 00ce FFF7FEFF 		bl	tcp_seg_free
 727 00d2 002C     		cmp	r4, #0
 728 00d4 F9D1     		bne	.L257
 729 00d6 2346     		mov	r3, r4
 730 00d8 5C46     		mov	r4, fp
 731 00da 6367     		str	r3, [r4, #116]
 732              	.L193:
 733 00dc 237E     		ldrb	r3, [r4, #24]	@ zero_extendqisi2
 734 00de 032B     		cmp	r3, #3
 735 00e0 00F0C580 		beq	.L258
 736 00e4 092B     		cmp	r3, #9
 737 00e6 4ED0     		beq	.L259
 738              	.L198:
 739 00e8 002F     		cmp	r7, #0
 740 00ea 52D1     		bne	.L199
 741 00ec E37F     		ldrb	r3, [r4, #31]	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 14


 742 00ee 94F82020 		ldrb	r2, [r4, #32]	@ zero_extendqisi2
 743 00f2 0133     		adds	r3, r3, #1
 744 00f4 DBB2     		uxtb	r3, r3
 745 00f6 9A42     		cmp	r2, r3
 746 00f8 E377     		strb	r3, [r4, #31]
 747 00fa D4F80CA0 		ldr	r10, [r4, #12]
 748 00fe 12D8     		bhi	.L224
 749 0100 D4F88830 		ldr	r3, [r4, #136]
 750 0104 E777     		strb	r7, [r4, #31]
 751 0106 89F80070 		strb	r7, [r9]
 752 010a 002B     		cmp	r3, #0
 753 010c 00F0D580 		beq	.L206
 754 0110 2069     		ldr	r0, [r4, #16]
 755 0112 2146     		mov	r1, r4
 756 0114 9847     		blx	r3
 757 0116 99F80030 		ldrb	r3, [r9]	@ zero_extendqisi2
 758 011a 002B     		cmp	r3, #0
 759 011c 7FF47DAF 		bne	.L174
 760 0120 0028     		cmp	r0, #0
 761 0122 00F0CA80 		beq	.L206
 762              	.L224:
 763 0126 A046     		mov	r8, r4
 764              	.L179:
 765 0128 BAF1000F 		cmp	r10, #0
 766 012c 0BD0     		beq	.L207
 767              	.L260:
 768 012e 5446     		mov	r4, r10
 769 0130 3278     		ldrb	r2, [r6]	@ zero_extendqisi2
 770 0132 94F82130 		ldrb	r3, [r4, #33]	@ zero_extendqisi2
 771 0136 9342     		cmp	r3, r2
 772 0138 7FF47CAF 		bne	.L178
 773              	.L255:
 774 013c D4F80CA0 		ldr	r10, [r4, #12]
 775 0140 BAF1000F 		cmp	r10, #0
 776 0144 F3D1     		bne	.L260
 777              	.L207:
 778 0146 DFF8CC81 		ldr	r8, .L264+32
 779 014a 0026     		movs	r6, #0
 780 014c D8F80040 		ldr	r4, [r8]
 781 0150 B4B1     		cbz	r4, .L173
 782              	.L212:
 783 0152 2A68     		ldr	r2, [r5]
 784 0154 636A     		ldr	r3, [r4, #36]
 785 0156 2046     		mov	r0, r4
 786 0158 D31A     		subs	r3, r2, r3
 787 015a B3F5F07F 		cmp	r3, #480
 788 015e 40F2E980 		bls	.L261
 789 0162 FFF7FEFF 		bl	tcp_pcb_purge
 790 0166 002E     		cmp	r6, #0
 791 0168 00F0EA80 		beq	.L262
 792 016c E368     		ldr	r3, [r4, #12]
 793 016e F360     		str	r3, [r6, #12]
 794 0170 E768     		ldr	r7, [r4, #12]
 795              	.L211:
 796 0172 2146     		mov	r1, r4
 797 0174 0120     		movs	r0, #1
 798 0176 3C46     		mov	r4, r7
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 15


 799 0178 FFF7FEFF 		bl	memp_free
 800 017c 002C     		cmp	r4, #0
 801 017e E8D1     		bne	.L212
 802              	.L173:
 803 0180 03B0     		add	sp, sp, #12
 804              		@ sp needed
 805 0182 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 806              	.L259:
 807 0186 2A68     		ldr	r2, [r5]
 808 0188 636A     		ldr	r3, [r4, #36]
 809 018a D31A     		subs	r3, r2, r3
 810 018c B3F5F07F 		cmp	r3, #480
 811 0190 AAD9     		bls	.L198
 812              	.L199:
 813 0192 2046     		mov	r0, r4
 814 0194 FFF7FEFF 		bl	tcp_pcb_purge
 815 0198 E368     		ldr	r3, [r4, #12]
 816 019a B8F1000F 		cmp	r8, #0
 817 019e 00F0C680 		beq	.L201
 818 01a2 C8F80C30 		str	r3, [r8, #12]
 819              	.L202:
 820 01a6 BAF1000F 		cmp	r10, #0
 821 01aa 40F0B580 		bne	.L263
 822              	.L203:
 823 01ae D4F88C70 		ldr	r7, [r4, #140]
 824 01b2 0120     		movs	r0, #1
 825 01b4 2146     		mov	r1, r4
 826 01b6 D4F810B0 		ldr	fp, [r4, #16]
 827 01ba D4F80CA0 		ldr	r10, [r4, #12]
 828 01be FFF7FEFF 		bl	memp_free
 829 01c2 0023     		movs	r3, #0
 830 01c4 89F80030 		strb	r3, [r9]
 831 01c8 002F     		cmp	r7, #0
 832 01ca ADD0     		beq	.L179
 833 01cc 5846     		mov	r0, fp
 834 01ce 6FF00901 		mvn	r1, #9
 835 01d2 B847     		blx	r7
 836 01d4 99F80030 		ldrb	r3, [r9]	@ zero_extendqisi2
 837 01d8 002B     		cmp	r3, #0
 838 01da A5D0     		beq	.L179
 839 01dc 1DE7     		b	.L174
 840              	.L184:
 841 01de A18E     		ldrh	r1, [r4, #52]
 842 01e0 276F     		ldr	r7, [r4, #112]
 843 01e2 0804     		lsls	r0, r1, #16
 844 01e4 5CBF     		itt	pl
 845 01e6 0131     		addpl	r1, r1, #1
 846 01e8 A186     		strhpl	r1, [r4, #52]	@ movhi
 847 01ea 002F     		cmp	r7, #0
 848 01ec 3FF44EAF 		beq	.L183
 849 01f0 B4F93400 		ldrsh	r0, [r4, #52]
 850 01f4 B4F94410 		ldrsh	r1, [r4, #68]
 851 01f8 8842     		cmp	r0, r1
 852 01fa 36DB     		blt	.L220
 853 01fc 022B     		cmp	r3, #2
 854 01fe 0AD0     		beq	.L187
 855 0200 4048     		ldr	r0, .L264+16
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 16


 856 0202 B4F94010 		ldrsh	r1, [r4, #64]
 857 0206 B4F94230 		ldrsh	r3, [r4, #66]
 858 020a 825C     		ldrb	r2, [r0, r2]	@ zero_extendqisi2
 859 020c 03EBE103 		add	r3, r3, r1, asr #3
 860 0210 9340     		lsls	r3, r3, r2
 861 0212 A4F84430 		strh	r3, [r4, #68]	@ movhi
 862              	.L187:
 863 0216 B4F84C10 		ldrh	r1, [r4, #76]
 864 021a B4F86020 		ldrh	r2, [r4, #96]
 865 021e E38E     		ldrh	r3, [r4, #54]
 866 0220 9142     		cmp	r1, r2
 867 0222 38BF     		it	cc
 868 0224 0A46     		movcc	r2, r1
 869 0226 5208     		lsrs	r2, r2, #1
 870 0228 5900     		lsls	r1, r3, #1
 871 022a 8A42     		cmp	r2, r1
 872 022c 4FF00000 		mov	r0, #0
 873 0230 A4F84E20 		strh	r2, [r4, #78]	@ movhi
 874 0234 A086     		strh	r0, [r4, #52]	@ movhi
 875 0236 B8BF     		it	lt
 876 0238 A4F84E10 		strhlt	r1, [r4, #78]	@ movhi
 877 023c A4F84C30 		strh	r3, [r4, #76]	@ movhi
 878 0240 2046     		mov	r0, r4
 879 0242 FFF7FEFF 		bl	tcp_rexmit_rto
 880 0246 237E     		ldrb	r3, [r4, #24]	@ zero_extendqisi2
 881 0248 0027     		movs	r7, #0
 882 024a 062B     		cmp	r3, #6
 883 024c 7FF421AF 		bne	.L189
 884              	.L256:
 885 0250 A37F     		ldrb	r3, [r4, #30]	@ zero_extendqisi2
 886 0252 DB06     		lsls	r3, r3, #27
 887 0254 7FF529AF 		bpl	.L223
 888 0258 2A68     		ldr	r2, [r5]
 889 025a 636A     		ldr	r3, [r4, #36]
 890 025c D31A     		subs	r3, r2, r3
 891 025e 502B     		cmp	r3, #80
 892 0260 7FF623AF 		bls	.L223
 893 0264 0137     		adds	r7, r7, #1
 894 0266 FFB2     		uxtb	r7, r7
 895 0268 1FE7     		b	.L223
 896              	.L220:
 897 026a 0027     		movs	r7, #0
 898 026c 0EE7     		b	.L183
 899              	.L258:
 900 026e 2A68     		ldr	r2, [r5]
 901 0270 636A     		ldr	r3, [r4, #36]
 902 0272 D31A     		subs	r3, r2, r3
 903 0274 502B     		cmp	r3, #80
 904 0276 7FF637AF 		bls	.L198
 905 027a 0137     		adds	r7, r7, #1
 906 027c FFB2     		uxtb	r7, r7
 907 027e 33E7     		b	.L198
 908              	.L180:
 909 0280 042A     		cmp	r2, #4
 910 0282 7FF4DFAE 		bne	.L181
 911 0286 4FF0000A 		mov	r10, #0
 912 028a 0127     		movs	r7, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 17


 913 028c 0FE7     		b	.L182
 914              	.L217:
 915 028e 0127     		movs	r7, #1
 916 0290 FCE6     		b	.L183
 917              	.L191:
 918 0292 D4F89010 		ldr	r1, [r4, #144]
 919 0296 1C4A     		ldr	r2, .L264+20
 920 0298 01F52423 		add	r3, r1, #671744
 921 029c 03F6B843 		addw	r3, r3, #3256
 922 02a0 A2FB0323 		umull	r2, r3, r2, r3
 923 02a4 2868     		ldr	r0, [r5]
 924 02a6 626A     		ldr	r2, [r4, #36]
 925 02a8 821A     		subs	r2, r0, r2
 926 02aa B2EB131F 		cmp	r2, r3, lsr #4
 927 02ae 09D9     		bls	.L192
 928 02b0 0137     		adds	r7, r7, #1
 929 02b2 FFB2     		uxtb	r7, r7
 930 02b4 4FF0010A 		mov	r10, #1
 931 02b8 F9E6     		b	.L182
 932              	.L206:
 933 02ba 2046     		mov	r0, r4
 934 02bc FFF7FEFF 		bl	tcp_output
 935 02c0 A046     		mov	r8, r4
 936 02c2 31E7     		b	.L179
 937              	.L192:
 938 02c4 94F89630 		ldrb	r3, [r4, #150]	@ zero_extendqisi2
 939 02c8 1048     		ldr	r0, .L264+24
 940 02ca 00FB0311 		mla	r1, r0, r3, r1
 941 02ce 0E4B     		ldr	r3, .L264+20
 942 02d0 A3FB0131 		umull	r3, r1, r3, r1
 943 02d4 B2EB111F 		cmp	r2, r1, lsr #4
 944 02d8 7FF6E7AE 		bls	.L223
 945 02dc 2046     		mov	r0, r4
 946 02de FFF7FEFF 		bl	tcp_keepalive
 947 02e2 94F89630 		ldrb	r3, [r4, #150]	@ zero_extendqisi2
 948 02e6 4FF0000A 		mov	r10, #0
 949 02ea 0133     		adds	r3, r3, #1
 950 02ec 84F89630 		strb	r3, [r4, #150]
 951 02f0 DDE6     		b	.L182
 952              	.L265:
 953 02f2 00BF     		.align	2
 954              	.L264:
 955 02f4 00000000 		.word	tcp_ticks
 956 02f8 00000000 		.word	.LANCHOR2
 957 02fc 00000000 		.word	tcp_active_pcbs
 958 0300 00000000 		.word	.LANCHOR3
 959 0304 00000000 		.word	.LANCHOR4
 960 0308 D34D6210 		.word	274877907
 961 030c F8240100 		.word	75000
 962 0310 00000000 		.word	tcp_active_pcbs_changed
 963 0314 00000000 		.word	tcp_tw_pcbs
 964              	.L263:
 965 0318 638B     		ldrh	r3, [r4, #26]
 966 031a 206D     		ldr	r0, [r4, #80]
 967 031c A16A     		ldr	r1, [r4, #40]
 968 031e 0093     		str	r3, [sp]
 969 0320 A38B     		ldrh	r3, [r4, #28]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 18


 970 0322 2246     		mov	r2, r4
 971 0324 0193     		str	r3, [sp, #4]
 972 0326 231D     		adds	r3, r4, #4
 973 0328 FFF7FEFF 		bl	tcp_rst
 974 032c 3FE7     		b	.L203
 975              	.L201:
 976 032e 0648     		ldr	r0, .L266
 977 0330 0360     		str	r3, [r0]
 978 0332 38E7     		b	.L202
 979              	.L261:
 980 0334 2646     		mov	r6, r4
 981 0336 E468     		ldr	r4, [r4, #12]
 982 0338 002C     		cmp	r4, #0
 983 033a 7FF40AAF 		bne	.L212
 984 033e 1FE7     		b	.L173
 985              	.L262:
 986 0340 E768     		ldr	r7, [r4, #12]
 987 0342 C8F80070 		str	r7, [r8]
 988 0346 14E7     		b	.L211
 989              	.L267:
 990              		.align	2
 991              	.L266:
 992 0348 00000000 		.word	tcp_active_pcbs
 993              		.size	tcp_slowtmr, .-tcp_slowtmr
 994              		.section	.text.tcp_pcb_remove,"ax",%progbits
 995              		.align	2
 996              		.global	tcp_pcb_remove
 997              		.thumb
 998              		.thumb_func
 999              		.type	tcp_pcb_remove, %function
 1000              	tcp_pcb_remove:
 1001              		@ args = 0, pretend = 0, frame = 0
 1002              		@ frame_needed = 0, uses_anonymous_args = 0
 1003 0000 0268     		ldr	r2, [r0]
 1004 0002 10B5     		push	{r4, lr}
 1005 0004 8A42     		cmp	r2, r1
 1006 0006 0C46     		mov	r4, r1
 1007 0008 2AD0     		beq	.L289
 1008 000a 1849     		ldr	r1, .L293
 1009 000c 0A60     		str	r2, [r1]
 1010 000e 52B1     		cbz	r2, .L270
 1011 0010 D368     		ldr	r3, [r2, #12]
 1012 0012 A342     		cmp	r3, r4
 1013 0014 27D0     		beq	.L290
 1014 0016 2BB1     		cbz	r3, .L291
 1015              	.L276:
 1016 0018 DA68     		ldr	r2, [r3, #12]
 1017 001a A242     		cmp	r2, r4
 1018 001c 1CD0     		beq	.L274
 1019 001e 1346     		mov	r3, r2
 1020 0020 002B     		cmp	r3, #0
 1021 0022 F9D1     		bne	.L276
 1022              	.L291:
 1023 0024 0B60     		str	r3, [r1]
 1024              	.L270:
 1025 0026 0023     		movs	r3, #0
 1026 0028 E360     		str	r3, [r4, #12]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 19


 1027 002a 2046     		mov	r0, r4
 1028 002c FFF7FEFF 		bl	tcp_pcb_purge
 1029 0030 237E     		ldrb	r3, [r4, #24]	@ zero_extendqisi2
 1030 0032 0A2B     		cmp	r3, #10
 1031 0034 04D0     		beq	.L278
 1032 0036 012B     		cmp	r3, #1
 1033 0038 02D0     		beq	.L278
 1034 003a A37F     		ldrb	r3, [r4, #30]	@ zero_extendqisi2
 1035 003c DA07     		lsls	r2, r3, #31
 1036 003e 02D4     		bmi	.L292
 1037              	.L278:
 1038 0040 0023     		movs	r3, #0
 1039 0042 2376     		strb	r3, [r4, #24]
 1040 0044 10BD     		pop	{r4, pc}
 1041              	.L292:
 1042 0046 43F00203 		orr	r3, r3, #2
 1043 004a A377     		strb	r3, [r4, #30]
 1044 004c 2046     		mov	r0, r4
 1045 004e FFF7FEFF 		bl	tcp_output
 1046 0052 0023     		movs	r3, #0
 1047 0054 2376     		strb	r3, [r4, #24]
 1048 0056 10BD     		pop	{r4, pc}
 1049              	.L274:
 1050 0058 0B60     		str	r3, [r1]
 1051              	.L272:
 1052 005a E168     		ldr	r1, [r4, #12]
 1053 005c D960     		str	r1, [r3, #12]
 1054 005e E2E7     		b	.L270
 1055              	.L289:
 1056 0060 CB68     		ldr	r3, [r1, #12]
 1057 0062 0360     		str	r3, [r0]
 1058 0064 DFE7     		b	.L270
 1059              	.L290:
 1060 0066 1346     		mov	r3, r2
 1061 0068 F7E7     		b	.L272
 1062              	.L294:
 1063 006a 00BF     		.align	2
 1064              	.L293:
 1065 006c 00000000 		.word	tcp_tmp_pcb
 1066              		.size	tcp_pcb_remove, .-tcp_pcb_remove
 1067              		.section	.text.tcp_close_shutdown,"ax",%progbits
 1068              		.align	2
 1069              		.thumb
 1070              		.thumb_func
 1071              		.type	tcp_close_shutdown, %function
 1072              	tcp_close_shutdown:
 1073              		@ args = 0, pretend = 0, frame = 0
 1074              		@ frame_needed = 0, uses_anonymous_args = 0
 1075 0000 30B5     		push	{r4, r5, lr}
 1076 0002 037E     		ldrb	r3, [r0, #24]	@ zero_extendqisi2
 1077 0004 83B0     		sub	sp, sp, #12
 1078 0006 0446     		mov	r4, r0
 1079 0008 19B1     		cbz	r1, .L298
 1080 000a 042B     		cmp	r3, #4
 1081 000c 1ED0     		beq	.L297
 1082 000e 072B     		cmp	r3, #7
 1083 0010 1CD0     		beq	.L297
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 20


 1084              	.L298:
 1085 0012 072B     		cmp	r3, #7
 1086 0014 0ED8     		bhi	.L344
 1087 0016 DFE803F0 		tbb	[pc, r3]
 1088              	.L313:
 1089 001a 3B       		.byte	(.L312-.L313)/2
 1090 001b 50       		.byte	(.L314-.L313)/2
 1091 001c 59       		.byte	(.L315-.L313)/2
 1092 001d 11       		.byte	(.L316-.L313)/2
 1093 001e 11       		.byte	(.L316-.L313)/2
 1094 001f 0D       		.byte	(.L344-.L313)/2
 1095 0020 0D       		.byte	(.L344-.L313)/2
 1096 0021 04       		.byte	(.L318-.L313)/2
 1097              		.align	1
 1098              	.L318:
 1099 0022 2046     		mov	r0, r4
 1100 0024 FFF7FEFF 		bl	tcp_send_fin
 1101 0028 28B9     		cbnz	r0, .L310
 1102 002a 0923     		movs	r3, #9
 1103 002c 2376     		strb	r3, [r4, #24]
 1104              	.L330:
 1105 002e 2046     		mov	r0, r4
 1106 0030 FFF7FEFF 		bl	tcp_output
 1107              	.L344:
 1108 0034 0020     		movs	r0, #0
 1109              	.L310:
 1110 0036 40B2     		sxtb	r0, r0
 1111 0038 03B0     		add	sp, sp, #12
 1112              		@ sp needed
 1113 003a 30BD     		pop	{r4, r5, pc}
 1114              	.L316:
 1115 003c 2046     		mov	r0, r4
 1116 003e FFF7FEFF 		bl	tcp_send_fin
 1117 0042 0028     		cmp	r0, #0
 1118 0044 F7D1     		bne	.L310
 1119 0046 0523     		movs	r3, #5
 1120 0048 2376     		strb	r3, [r4, #24]
 1121 004a F0E7     		b	.L330
 1122              	.L297:
 1123 004c A26F     		ldr	r2, [r4, #120]
 1124 004e 002A     		cmp	r2, #0
 1125 0050 48D0     		beq	.L345
 1126              	.L299:
 1127 0052 628B     		ldrh	r2, [r4, #26]
 1128 0054 A38B     		ldrh	r3, [r4, #28]
 1129 0056 206D     		ldr	r0, [r4, #80]
 1130 0058 A16A     		ldr	r1, [r4, #40]
 1131 005a 8DE80C00 		stmia	sp, {r2, r3}
 1132 005e 2246     		mov	r2, r4
 1133 0060 231D     		adds	r3, r4, #4
 1134 0062 FFF7FEFF 		bl	tcp_rst
 1135 0066 2046     		mov	r0, r4
 1136 0068 FFF7FEFF 		bl	tcp_pcb_purge
 1137 006c 3A4B     		ldr	r3, .L353
 1138 006e 1A68     		ldr	r2, [r3]
 1139 0070 A242     		cmp	r2, r4
 1140 0072 64D0     		beq	.L346
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 21


 1141 0074 3949     		ldr	r1, .L353+4
 1142 0076 0A60     		str	r2, [r1]
 1143 0078 002A     		cmp	r2, #0
 1144 007a 3CD0     		beq	.L301
 1145 007c D368     		ldr	r3, [r2, #12]
 1146 007e A342     		cmp	r3, r4
 1147 0080 60D0     		beq	.L347
 1148              	.L306:
 1149 0082 002B     		cmp	r3, #0
 1150 0084 4FD0     		beq	.L348
 1151 0086 DA68     		ldr	r2, [r3, #12]
 1152 0088 A242     		cmp	r2, r4
 1153 008a 31D0     		beq	.L305
 1154 008c 1346     		mov	r3, r2
 1155 008e F8E7     		b	.L306
 1156              	.L312:
 1157 0090 638B     		ldrh	r3, [r4, #26]
 1158 0092 002B     		cmp	r3, #0
 1159 0094 42D0     		beq	.L319
 1160 0096 324B     		ldr	r3, .L353+8
 1161 0098 1A68     		ldr	r2, [r3]
 1162 009a A242     		cmp	r2, r4
 1163 009c 3AD0     		beq	.L349
 1164 009e 2F49     		ldr	r1, .L353+4
 1165 00a0 0A60     		str	r2, [r1]
 1166 00a2 002A     		cmp	r2, #0
 1167 00a4 38D0     		beq	.L321
 1168 00a6 D368     		ldr	r3, [r2, #12]
 1169 00a8 A342     		cmp	r3, r4
 1170 00aa 4DD0     		beq	.L350
 1171              	.L326:
 1172 00ac 002B     		cmp	r3, #0
 1173 00ae 4FD0     		beq	.L351
 1174 00b0 DA68     		ldr	r2, [r3, #12]
 1175 00b2 A242     		cmp	r2, r4
 1176 00b4 4ED0     		beq	.L325
 1177 00b6 1346     		mov	r3, r2
 1178 00b8 F8E7     		b	.L326
 1179              	.L314:
 1180 00ba 2146     		mov	r1, r4
 1181 00bc 2948     		ldr	r0, .L353+12
 1182 00be FFF7FEFF 		bl	tcp_pcb_remove
 1183 00c2 2146     		mov	r1, r4
 1184 00c4 0220     		movs	r0, #2
 1185 00c6 FFF7FEFF 		bl	memp_free
 1186 00ca B3E7     		b	.L344
 1187              	.L315:
 1188 00cc 2146     		mov	r1, r4
 1189 00ce 2248     		ldr	r0, .L353
 1190 00d0 FFF7FEFF 		bl	tcp_pcb_remove
 1191 00d4 0123     		movs	r3, #1
 1192 00d6 244A     		ldr	r2, .L353+16
 1193 00d8 2146     		mov	r1, r4
 1194 00da 1846     		mov	r0, r3
 1195 00dc 1370     		strb	r3, [r2]
 1196 00de FFF7FEFF 		bl	memp_free
 1197 00e2 A7E7     		b	.L344
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 22


 1198              	.L345:
 1199 00e4 A18D     		ldrh	r1, [r4, #44]
 1200 00e6 40F66832 		movw	r2, #2920
 1201 00ea 9142     		cmp	r1, r2
 1202 00ec B1D1     		bne	.L299
 1203 00ee 90E7     		b	.L298
 1204              	.L305:
 1205 00f0 0B60     		str	r3, [r1]
 1206              	.L303:
 1207 00f2 E168     		ldr	r1, [r4, #12]
 1208 00f4 D960     		str	r1, [r3, #12]
 1209              	.L301:
 1210 00f6 237E     		ldrb	r3, [r4, #24]	@ zero_extendqisi2
 1211 00f8 1B4A     		ldr	r2, .L353+16
 1212 00fa 0120     		movs	r0, #1
 1213 00fc 0025     		movs	r5, #0
 1214 00fe 042B     		cmp	r3, #4
 1215 0100 1070     		strb	r0, [r2]
 1216 0102 E560     		str	r5, [r4, #12]
 1217 0104 11D0     		beq	.L352
 1218 0106 2146     		mov	r1, r4
 1219 0108 FFF7FEFF 		bl	memp_free
 1220 010c 2846     		mov	r0, r5
 1221 010e 40B2     		sxtb	r0, r0
 1222 0110 03B0     		add	sp, sp, #12
 1223              		@ sp needed
 1224 0112 30BD     		pop	{r4, r5, pc}
 1225              	.L349:
 1226 0114 E268     		ldr	r2, [r4, #12]
 1227 0116 1A60     		str	r2, [r3]
 1228              	.L321:
 1229 0118 0023     		movs	r3, #0
 1230 011a E360     		str	r3, [r4, #12]
 1231              	.L319:
 1232 011c 2146     		mov	r1, r4
 1233 011e 0120     		movs	r0, #1
 1234 0120 FFF7FEFF 		bl	memp_free
 1235 0124 86E7     		b	.L344
 1236              	.L348:
 1237 0126 0B60     		str	r3, [r1]
 1238 0128 E5E7     		b	.L301
 1239              	.L352:
 1240 012a 104B     		ldr	r3, .L353+20
 1241 012c 0A21     		movs	r1, #10
 1242 012e 1A68     		ldr	r2, [r3]
 1243 0130 2176     		strb	r1, [r4, #24]
 1244 0132 E260     		str	r2, [r4, #12]
 1245 0134 1C60     		str	r4, [r3]
 1246 0136 FFF7FEFF 		bl	tcp_timer_needed
 1247 013a 2846     		mov	r0, r5
 1248 013c 7BE7     		b	.L310
 1249              	.L346:
 1250 013e E268     		ldr	r2, [r4, #12]
 1251 0140 1A60     		str	r2, [r3]
 1252 0142 D8E7     		b	.L301
 1253              	.L347:
 1254 0144 1346     		mov	r3, r2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 23


 1255 0146 D4E7     		b	.L303
 1256              	.L350:
 1257 0148 1346     		mov	r3, r2
 1258              	.L323:
 1259 014a E168     		ldr	r1, [r4, #12]
 1260 014c D960     		str	r1, [r3, #12]
 1261 014e E3E7     		b	.L321
 1262              	.L351:
 1263 0150 0B60     		str	r3, [r1]
 1264 0152 E1E7     		b	.L321
 1265              	.L325:
 1266 0154 0B60     		str	r3, [r1]
 1267 0156 F8E7     		b	.L323
 1268              	.L354:
 1269              		.align	2
 1270              	.L353:
 1271 0158 00000000 		.word	tcp_active_pcbs
 1272 015c 00000000 		.word	tcp_tmp_pcb
 1273 0160 00000000 		.word	tcp_bound_pcbs
 1274 0164 00000000 		.word	tcp_listen_pcbs
 1275 0168 00000000 		.word	tcp_active_pcbs_changed
 1276 016c 00000000 		.word	tcp_tw_pcbs
 1277              		.size	tcp_close_shutdown, .-tcp_close_shutdown
 1278              		.section	.text.tcp_close,"ax",%progbits
 1279              		.align	2
 1280              		.global	tcp_close
 1281              		.thumb
 1282              		.thumb_func
 1283              		.type	tcp_close, %function
 1284              	tcp_close:
 1285              		@ args = 0, pretend = 0, frame = 0
 1286              		@ frame_needed = 0, uses_anonymous_args = 0
 1287              		@ link register save eliminated.
 1288 0000 037E     		ldrb	r3, [r0, #24]	@ zero_extendqisi2
 1289 0002 012B     		cmp	r3, #1
 1290 0004 03D0     		beq	.L356
 1291 0006 837F     		ldrb	r3, [r0, #30]	@ zero_extendqisi2
 1292 0008 43F01003 		orr	r3, r3, #16
 1293 000c 8377     		strb	r3, [r0, #30]
 1294              	.L356:
 1295 000e 0121     		movs	r1, #1
 1296 0010 FFF7FEBF 		b	tcp_close_shutdown
 1297              		.size	tcp_close, .-tcp_close
 1298              		.section	.text.tcp_recv_null,"ax",%progbits
 1299              		.align	2
 1300              		.global	tcp_recv_null
 1301              		.thumb
 1302              		.thumb_func
 1303              		.type	tcp_recv_null, %function
 1304              	tcp_recv_null:
 1305              		@ args = 0, pretend = 0, frame = 0
 1306              		@ frame_needed = 0, uses_anonymous_args = 0
 1307 0000 10B5     		push	{r4, lr}
 1308 0002 1446     		mov	r4, r2
 1309 0004 42B1     		cbz	r2, .L361
 1310 0006 0846     		mov	r0, r1
 1311 0008 1189     		ldrh	r1, [r2, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 24


 1312 000a FFF7FEFF 		bl	tcp_recved
 1313 000e 2046     		mov	r0, r4
 1314 0010 FFF7FEFF 		bl	pbuf_free
 1315              	.L362:
 1316 0014 0020     		movs	r0, #0
 1317 0016 10BD     		pop	{r4, pc}
 1318              	.L361:
 1319 0018 002B     		cmp	r3, #0
 1320 001a FBD1     		bne	.L362
 1321 001c 0846     		mov	r0, r1
 1322 001e BDE81040 		pop	{r4, lr}
 1323 0022 FFF7FEBF 		b	tcp_close
 1324              		.size	tcp_recv_null, .-tcp_recv_null
 1325 0026 00BF     		.section	.text.tcp_process_refused_data,"ax",%progbits
 1326              		.align	2
 1327              		.global	tcp_process_refused_data
 1328              		.thumb
 1329              		.thumb_func
 1330              		.type	tcp_process_refused_data, %function
 1331              	tcp_process_refused_data:
 1332              		@ args = 0, pretend = 0, frame = 0
 1333              		@ frame_needed = 0, uses_anonymous_args = 0
 1334 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1335 0002 856F     		ldr	r5, [r0, #120]
 1336 0004 D0F88060 		ldr	r6, [r0, #128]
 1337 0008 0023     		movs	r3, #0
 1338 000a 6F7B     		ldrb	r7, [r5, #13]	@ zero_extendqisi2
 1339 000c 0446     		mov	r4, r0
 1340 000e 8367     		str	r3, [r0, #120]
 1341 0010 0EB3     		cbz	r6, .L365
 1342 0012 0069     		ldr	r0, [r0, #16]
 1343 0014 2146     		mov	r1, r4
 1344 0016 2A46     		mov	r2, r5
 1345 0018 B047     		blx	r6
 1346              	.L366:
 1347 001a A8B9     		cbnz	r0, .L367
 1348 001c BB06     		lsls	r3, r7, #26
 1349 001e 11D5     		bpl	.L368
 1350 0020 A38D     		ldrh	r3, [r4, #44]
 1351 0022 40F66832 		movw	r2, #2920
 1352 0026 9342     		cmp	r3, r2
 1353 0028 D4F88050 		ldr	r5, [r4, #128]
 1354 002c 1CBF     		itt	ne
 1355 002e 0133     		addne	r3, r3, #1
 1356 0030 A385     		strhne	r3, [r4, #44]	@ movhi
 1357 0032 6DB1     		cbz	r5, .L377
 1358 0034 0022     		movs	r2, #0
 1359 0036 1346     		mov	r3, r2
 1360 0038 2069     		ldr	r0, [r4, #16]
 1361 003a 2146     		mov	r1, r4
 1362 003c A847     		blx	r5
 1363 003e 0A30     		adds	r0, r0, #10
 1364 0040 06D1     		bne	.L377
 1365              	.L372:
 1366 0042 F620     		movs	r0, #246
 1367              	.L368:
 1368 0044 40B2     		sxtb	r0, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 25


 1369 0046 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1370              	.L367:
 1371 0048 40B2     		sxtb	r0, r0
 1372 004a 0A30     		adds	r0, r0, #10
 1373 004c F9D0     		beq	.L372
 1374 004e A567     		str	r5, [r4, #120]
 1375              	.L377:
 1376 0050 0020     		movs	r0, #0
 1377 0052 40B2     		sxtb	r0, r0
 1378 0054 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1379              	.L365:
 1380 0056 3046     		mov	r0, r6
 1381 0058 3346     		mov	r3, r6
 1382 005a 2146     		mov	r1, r4
 1383 005c 2A46     		mov	r2, r5
 1384 005e FFF7FEFF 		bl	tcp_recv_null
 1385 0062 DAE7     		b	.L366
 1386              		.size	tcp_process_refused_data, .-tcp_process_refused_data
 1387              		.section	.text.tcp_fasttmr,"ax",%progbits
 1388              		.align	2
 1389              		.global	tcp_fasttmr
 1390              		.thumb
 1391              		.thumb_func
 1392              		.type	tcp_fasttmr, %function
 1393              	tcp_fasttmr:
 1394              		@ args = 0, pretend = 0, frame = 0
 1395              		@ frame_needed = 0, uses_anonymous_args = 0
 1396 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1397 0004 174D     		ldr	r5, .L398
 1398 0006 184F     		ldr	r7, .L398+4
 1399 0008 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 1400 000a 184E     		ldr	r6, .L398+8
 1401 000c 0133     		adds	r3, r3, #1
 1402 000e 2B70     		strb	r3, [r5]
 1403 0010 4FF00008 		mov	r8, #0
 1404              	.L379:
 1405 0014 3C68     		ldr	r4, [r7]
 1406              	.L380:
 1407 0016 2CB1     		cbz	r4, .L378
 1408 0018 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 1409 001a 94F82120 		ldrb	r2, [r4, #33]	@ zero_extendqisi2
 1410 001e 9A42     		cmp	r2, r3
 1411 0020 02D1     		bne	.L396
 1412              	.L381:
 1413 0022 FEE7     		b	.L381
 1414              	.L378:
 1415 0024 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1416              	.L396:
 1417 0028 A27F     		ldrb	r2, [r4, #30]	@ zero_extendqisi2
 1418 002a 84F82130 		strb	r3, [r4, #33]
 1419 002e D307     		lsls	r3, r2, #31
 1420 0030 0CD4     		bmi	.L397
 1421              	.L382:
 1422 0032 A36F     		ldr	r3, [r4, #120]
 1423 0034 2046     		mov	r0, r4
 1424 0036 E468     		ldr	r4, [r4, #12]
 1425 0038 002B     		cmp	r3, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 26


 1426 003a ECD0     		beq	.L380
 1427 003c 86F80080 		strb	r8, [r6]
 1428 0040 FFF7FEFF 		bl	tcp_process_refused_data
 1429 0044 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 1430 0046 002B     		cmp	r3, #0
 1431 0048 E5D0     		beq	.L380
 1432 004a E3E7     		b	.L379
 1433              	.L397:
 1434 004c 42F00202 		orr	r2, r2, #2
 1435 0050 A277     		strb	r2, [r4, #30]
 1436 0052 2046     		mov	r0, r4
 1437 0054 FFF7FEFF 		bl	tcp_output
 1438 0058 A37F     		ldrb	r3, [r4, #30]	@ zero_extendqisi2
 1439 005a 23F00303 		bic	r3, r3, #3
 1440 005e A377     		strb	r3, [r4, #30]
 1441 0060 E7E7     		b	.L382
 1442              	.L399:
 1443 0062 00BF     		.align	2
 1444              	.L398:
 1445 0064 00000000 		.word	.LANCHOR2
 1446 0068 00000000 		.word	tcp_active_pcbs
 1447 006c 00000000 		.word	tcp_active_pcbs_changed
 1448              		.size	tcp_fasttmr, .-tcp_fasttmr
 1449              		.section	.text.tcp_tmr,"ax",%progbits
 1450              		.align	2
 1451              		.global	tcp_tmr
 1452              		.thumb
 1453              		.thumb_func
 1454              		.type	tcp_tmr, %function
 1455              	tcp_tmr:
 1456              		@ args = 0, pretend = 0, frame = 0
 1457              		@ frame_needed = 0, uses_anonymous_args = 0
 1458 0000 08B5     		push	{r3, lr}
 1459 0002 FFF7FEFF 		bl	tcp_fasttmr
 1460 0006 064A     		ldr	r2, .L403
 1461 0008 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 1462 000a 0133     		adds	r3, r3, #1
 1463 000c DBB2     		uxtb	r3, r3
 1464 000e 1370     		strb	r3, [r2]
 1465 0010 DB07     		lsls	r3, r3, #31
 1466 0012 00D4     		bmi	.L402
 1467 0014 08BD     		pop	{r3, pc}
 1468              	.L402:
 1469 0016 BDE80840 		pop	{r3, lr}
 1470 001a FFF7FEBF 		b	tcp_slowtmr
 1471              	.L404:
 1472 001e 00BF     		.align	2
 1473              	.L403:
 1474 0020 00000000 		.word	.LANCHOR5
 1475              		.size	tcp_tmr, .-tcp_tmr
 1476              		.section	.text.tcp_shutdown,"ax",%progbits
 1477              		.align	2
 1478              		.global	tcp_shutdown
 1479              		.thumb
 1480              		.thumb_func
 1481              		.type	tcp_shutdown, %function
 1482              	tcp_shutdown:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 27


 1483              		@ args = 0, pretend = 0, frame = 0
 1484              		@ frame_needed = 0, uses_anonymous_args = 0
 1485 0000 38B5     		push	{r3, r4, r5, lr}
 1486 0002 037E     		ldrb	r3, [r0, #24]	@ zero_extendqisi2
 1487 0004 0446     		mov	r4, r0
 1488 0006 012B     		cmp	r3, #1
 1489 0008 1546     		mov	r5, r2
 1490 000a 22D0     		beq	.L413
 1491 000c 61B1     		cbz	r1, .L407
 1492 000e 837F     		ldrb	r3, [r0, #30]	@ zero_extendqisi2
 1493 0010 43F01003 		orr	r3, r3, #16
 1494 0014 8377     		strb	r3, [r0, #30]
 1495 0016 BDB9     		cbnz	r5, .L418
 1496 0018 806F     		ldr	r0, [r0, #120]
 1497 001a 10B1     		cbz	r0, .L409
 1498 001c FFF7FEFF 		bl	pbuf_free
 1499 0020 A567     		str	r5, [r4, #120]
 1500              	.L409:
 1501 0022 0020     		movs	r0, #0
 1502              	.L406:
 1503 0024 40B2     		sxtb	r0, r0
 1504 0026 38BD     		pop	{r3, r4, r5, pc}
 1505              	.L407:
 1506 0028 002D     		cmp	r5, #0
 1507 002a FAD0     		beq	.L409
 1508 002c 033B     		subs	r3, r3, #3
 1509 002e DBB2     		uxtb	r3, r3
 1510 0030 042B     		cmp	r3, #4
 1511 0032 0ED8     		bhi	.L413
 1512 0034 0122     		movs	r2, #1
 1513 0036 02FA03F3 		lsl	r3, r2, r3
 1514 003a 13F0130F 		tst	r3, #19
 1515 003e 08D0     		beq	.L413
 1516 0040 BDE83840 		pop	{r3, r4, r5, lr}
 1517 0044 FFF7FEBF 		b	tcp_close_shutdown
 1518              	.L418:
 1519 0048 0121     		movs	r1, #1
 1520 004a BDE83840 		pop	{r3, r4, r5, lr}
 1521 004e FFF7FEBF 		b	tcp_close_shutdown
 1522              	.L413:
 1523 0052 F320     		movs	r0, #243
 1524 0054 E6E7     		b	.L406
 1525              		.size	tcp_shutdown, .-tcp_shutdown
 1526 0056 00BF     		.section	.text.tcp_abandon,"ax",%progbits
 1527              		.align	2
 1528              		.global	tcp_abandon
 1529              		.thumb
 1530              		.thumb_func
 1531              		.type	tcp_abandon, %function
 1532              	tcp_abandon:
 1533              		@ args = 0, pretend = 0, frame = 0
 1534              		@ frame_needed = 0, uses_anonymous_args = 0
 1535 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1536 0004 037E     		ldrb	r3, [r0, #24]	@ zero_extendqisi2
 1537 0006 82B0     		sub	sp, sp, #8
 1538 0008 0A2B     		cmp	r3, #10
 1539 000a 0446     		mov	r4, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 28


 1540 000c 0E46     		mov	r6, r1
 1541 000e 41D0     		beq	.L445
 1542 0010 2648     		ldr	r0, .L450
 1543 0012 2146     		mov	r1, r4
 1544 0014 D4F85090 		ldr	r9, [r4, #80]
 1545 0018 D4F82880 		ldr	r8, [r4, #40]
 1546 001c D4F88C50 		ldr	r5, [r4, #140]
 1547 0020 D4F810A0 		ldr	r10, [r4, #16]
 1548 0024 FFF7FEFF 		bl	tcp_pcb_remove
 1549 0028 214B     		ldr	r3, .L450+4
 1550 002a 206F     		ldr	r0, [r4, #112]
 1551 002c 0122     		movs	r2, #1
 1552 002e 1A70     		strb	r2, [r3]
 1553 0030 08B9     		cbnz	r0, .L425
 1554 0032 05E0     		b	.L424
 1555              	.L446:
 1556 0034 3846     		mov	r0, r7
 1557              	.L425:
 1558 0036 0768     		ldr	r7, [r0]
 1559 0038 FFF7FEFF 		bl	tcp_seg_free
 1560 003c 002F     		cmp	r7, #0
 1561 003e F9D1     		bne	.L446
 1562              	.L424:
 1563 0040 E06E     		ldr	r0, [r4, #108]
 1564 0042 08B9     		cbnz	r0, .L428
 1565 0044 05E0     		b	.L423
 1566              	.L447:
 1567 0046 3846     		mov	r0, r7
 1568              	.L428:
 1569 0048 0768     		ldr	r7, [r0]
 1570 004a FFF7FEFF 		bl	tcp_seg_free
 1571 004e 002F     		cmp	r7, #0
 1572 0050 F9D1     		bne	.L447
 1573              	.L423:
 1574 0052 606F     		ldr	r0, [r4, #116]
 1575 0054 08B9     		cbnz	r0, .L431
 1576 0056 05E0     		b	.L427
 1577              	.L448:
 1578 0058 3846     		mov	r0, r7
 1579              	.L431:
 1580 005a 0768     		ldr	r7, [r0]
 1581 005c FFF7FEFF 		bl	tcp_seg_free
 1582 0060 002F     		cmp	r7, #0
 1583 0062 F9D1     		bne	.L448
 1584              	.L427:
 1585 0064 5EB9     		cbnz	r6, .L449
 1586              	.L430:
 1587 0066 2146     		mov	r1, r4
 1588 0068 0120     		movs	r0, #1
 1589 006a FFF7FEFF 		bl	memp_free
 1590 006e 1DB1     		cbz	r5, .L419
 1591 0070 5046     		mov	r0, r10
 1592 0072 6FF00901 		mvn	r1, #9
 1593 0076 A847     		blx	r5
 1594              	.L419:
 1595 0078 02B0     		add	sp, sp, #8
 1596              		@ sp needed
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 29


 1597 007a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1598              	.L449:
 1599 007e 628B     		ldrh	r2, [r4, #26]
 1600 0080 A38B     		ldrh	r3, [r4, #28]
 1601 0082 4846     		mov	r0, r9
 1602 0084 8DE80C00 		stmia	sp, {r2, r3}
 1603 0088 4146     		mov	r1, r8
 1604 008a 2246     		mov	r2, r4
 1605 008c 231D     		adds	r3, r4, #4
 1606 008e FFF7FEFF 		bl	tcp_rst
 1607 0092 E8E7     		b	.L430
 1608              	.L445:
 1609 0094 2146     		mov	r1, r4
 1610 0096 0748     		ldr	r0, .L450+8
 1611 0098 FFF7FEFF 		bl	tcp_pcb_remove
 1612 009c 2146     		mov	r1, r4
 1613 009e 0120     		movs	r0, #1
 1614 00a0 02B0     		add	sp, sp, #8
 1615              		@ sp needed
 1616 00a2 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 1617 00a6 FFF7FEBF 		b	memp_free
 1618              	.L451:
 1619 00aa 00BF     		.align	2
 1620              	.L450:
 1621 00ac 00000000 		.word	tcp_active_pcbs
 1622 00b0 00000000 		.word	tcp_active_pcbs_changed
 1623 00b4 00000000 		.word	tcp_tw_pcbs
 1624              		.size	tcp_abandon, .-tcp_abandon
 1625              		.section	.text.tcp_abort,"ax",%progbits
 1626              		.align	2
 1627              		.global	tcp_abort
 1628              		.thumb
 1629              		.thumb_func
 1630              		.type	tcp_abort, %function
 1631              	tcp_abort:
 1632              		@ args = 0, pretend = 0, frame = 0
 1633              		@ frame_needed = 0, uses_anonymous_args = 0
 1634              		@ link register save eliminated.
 1635 0000 0121     		movs	r1, #1
 1636 0002 FFF7FEBF 		b	tcp_abandon
 1637              		.size	tcp_abort, .-tcp_abort
 1638 0006 00BF     		.section	.text.tcp_alloc,"ax",%progbits
 1639              		.align	2
 1640              		.global	tcp_alloc
 1641              		.thumb
 1642              		.thumb_func
 1643              		.type	tcp_alloc, %function
 1644              	tcp_alloc:
 1645              		@ args = 0, pretend = 0, frame = 0
 1646              		@ frame_needed = 0, uses_anonymous_args = 0
 1647 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1648 0004 0746     		mov	r7, r0
 1649 0006 0120     		movs	r0, #1
 1650 0008 FFF7FEFF 		bl	memp_malloc
 1651 000c 0446     		mov	r4, r0
 1652 000e 0028     		cmp	r0, #0
 1653 0010 43D0     		beq	.L479
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 30


 1654              	.L454:
 1655 0012 0021     		movs	r1, #0
 1656 0014 9822     		movs	r2, #152
 1657 0016 2046     		mov	r0, r4
 1658 0018 FFF7FEFF 		bl	memset
 1659 001c 424A     		ldr	r2, .L481
 1660 001e 434E     		ldr	r6, .L481+4
 1661 0020 1268     		ldr	r2, [r2]
 1662 0022 434B     		ldr	r3, .L481+8
 1663 0024 6262     		str	r2, [r4, #36]
 1664 0026 606A     		ldr	r0, [r4, #36]
 1665 0028 3268     		ldr	r2, [r6]
 1666 002a 93F800B0 		ldrb	fp, [r3]	@ zero_extendqisi2
 1667 002e DFF810A1 		ldr	r10, .L481+24
 1668 0032 0023     		movs	r3, #0
 1669 0034 DFF80C91 		ldr	r9, .L481+28
 1670 0038 0244     		add	r2, r2, r0
 1671 003a 40F66831 		movw	r1, #2920
 1672 003e 0C25     		movs	r5, #12
 1673 0040 4FF0FF08 		mov	r8, #255
 1674 0044 4FF4067C 		mov	ip, #536
 1675 0048 6776     		strb	r7, [r4, #25]
 1676 004a A4F86830 		strh	r3, [r4, #104]	@ movhi
 1677 004e 0127     		movs	r7, #1
 1678 0050 6372     		strb	r3, [r4, #9]
 1679 0052 A4F84030 		strh	r3, [r4, #64]	@ movhi
 1680 0056 E377     		strb	r3, [r4, #31]
 1681 0058 84F89630 		strb	r3, [r4, #150]
 1682 005c 4FF0FF33 		mov	r3, #-1	@ movhi
 1683 0060 3260     		str	r2, [r6]
 1684 0062 A265     		str	r2, [r4, #88]
 1685 0064 2265     		str	r2, [r4, #80]
 1686 0066 A264     		str	r2, [r4, #72]
 1687 0068 E265     		str	r2, [r4, #92]
 1688 006a 84F821B0 		strb	fp, [r4, #33]
 1689 006e C4F880A0 		str	r10, [r4, #128]
 1690 0072 C4F89090 		str	r9, [r4, #144]
 1691 0076 A4F86610 		strh	r1, [r4, #102]	@ movhi
 1692 007a A185     		strh	r1, [r4, #44]	@ movhi
 1693 007c E185     		strh	r1, [r4, #46]	@ movhi
 1694 007e 84F80A80 		strb	r8, [r4, #10]
 1695 0082 A4F836C0 		strh	ip, [r4, #54]	@ movhi
 1696 0086 A4F84450 		strh	r5, [r4, #68]	@ movhi
 1697 008a A4F84250 		strh	r5, [r4, #66]	@ movhi
 1698 008e A386     		strh	r3, [r4, #52]	@ movhi
 1699 0090 A4F84C70 		strh	r7, [r4, #76]	@ movhi
 1700              	.L472:
 1701 0094 2046     		mov	r0, r4
 1702 0096 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1703              	.L479:
 1704 009a 264B     		ldr	r3, .L481+12
 1705 009c 1B68     		ldr	r3, [r3]
 1706 009e 8BB1     		cbz	r3, .L456
 1707 00a0 214A     		ldr	r2, .L481
 1708 00a2 596A     		ldr	r1, [r3, #36]
 1709 00a4 1468     		ldr	r4, [r2]
 1710 00a6 1846     		mov	r0, r3
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 31


 1711 00a8 611A     		subs	r1, r4, r1
 1712 00aa 05E0     		b	.L466
 1713              	.L458:
 1714 00ac 5A6A     		ldr	r2, [r3, #36]
 1715 00ae A21A     		subs	r2, r4, r2
 1716 00b0 8A42     		cmp	r2, r1
 1717 00b2 24BF     		itt	cs
 1718 00b4 1146     		movcs	r1, r2
 1719 00b6 1846     		movcs	r0, r3
 1720              	.L466:
 1721 00b8 DB68     		ldr	r3, [r3, #12]
 1722 00ba 002B     		cmp	r3, #0
 1723 00bc F6D1     		bne	.L458
 1724 00be 0121     		movs	r1, #1
 1725 00c0 FFF7FEFF 		bl	tcp_abandon
 1726              	.L456:
 1727 00c4 0120     		movs	r0, #1
 1728 00c6 FFF7FEFF 		bl	memp_malloc
 1729 00ca 0446     		mov	r4, r0
 1730 00cc 30B1     		cbz	r0, .L480
 1731 00ce 1A4B     		ldr	r3, .L481+16
 1732 00d0 B3F8DE20 		ldrh	r2, [r3, #222]
 1733              	.L465:
 1734 00d4 013A     		subs	r2, r2, #1
 1735 00d6 A3F8DE20 		strh	r2, [r3, #222]	@ movhi
 1736 00da 9AE7     		b	.L454
 1737              	.L480:
 1738 00dc 174B     		ldr	r3, .L481+20
 1739 00de 1B68     		ldr	r3, [r3]
 1740 00e0 ABB1     		cbz	r3, .L460
 1741 00e2 114A     		ldr	r2, .L481
 1742 00e4 7F21     		movs	r1, #127
 1743 00e6 1668     		ldr	r6, [r2]
 1744              	.L463:
 1745 00e8 5A7E     		ldrb	r2, [r3, #25]	@ zero_extendqisi2
 1746 00ea 9742     		cmp	r7, r2
 1747 00ec 08D3     		bcc	.L461
 1748 00ee 8A42     		cmp	r2, r1
 1749 00f0 06D8     		bhi	.L461
 1750 00f2 5D6A     		ldr	r5, [r3, #36]
 1751 00f4 751B     		subs	r5, r6, r5
 1752 00f6 A542     		cmp	r5, r4
 1753 00f8 02D3     		bcc	.L461
 1754 00fa 1146     		mov	r1, r2
 1755 00fc 2C46     		mov	r4, r5
 1756 00fe 1846     		mov	r0, r3
 1757              	.L461:
 1758 0100 DB68     		ldr	r3, [r3, #12]
 1759 0102 002B     		cmp	r3, #0
 1760 0104 F0D1     		bne	.L463
 1761 0106 10B1     		cbz	r0, .L460
 1762 0108 0121     		movs	r1, #1
 1763 010a FFF7FEFF 		bl	tcp_abandon
 1764              	.L460:
 1765 010e 0120     		movs	r0, #1
 1766 0110 FFF7FEFF 		bl	memp_malloc
 1767 0114 0446     		mov	r4, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 32


 1768 0116 0028     		cmp	r0, #0
 1769 0118 BCD0     		beq	.L472
 1770 011a 074B     		ldr	r3, .L481+16
 1771 011c B3F8DE20 		ldrh	r2, [r3, #222]
 1772 0120 013A     		subs	r2, r2, #1
 1773 0122 92B2     		uxth	r2, r2
 1774 0124 D6E7     		b	.L465
 1775              	.L482:
 1776 0126 00BF     		.align	2
 1777              	.L481:
 1778 0128 00000000 		.word	tcp_ticks
 1779 012c 00000000 		.word	.LANCHOR6
 1780 0130 00000000 		.word	.LANCHOR2
 1781 0134 00000000 		.word	tcp_tw_pcbs
 1782 0138 00000000 		.word	lwip_stats
 1783 013c 00000000 		.word	tcp_active_pcbs
 1784 0140 00000000 		.word	tcp_recv_null
 1785 0144 00DD6D00 		.word	7200000
 1786              		.size	tcp_alloc, .-tcp_alloc
 1787              		.section	.text.tcp_new,"ax",%progbits
 1788              		.align	2
 1789              		.global	tcp_new
 1790              		.thumb
 1791              		.thumb_func
 1792              		.type	tcp_new, %function
 1793              	tcp_new:
 1794              		@ args = 0, pretend = 0, frame = 0
 1795              		@ frame_needed = 0, uses_anonymous_args = 0
 1796              		@ link register save eliminated.
 1797 0000 4020     		movs	r0, #64
 1798 0002 FFF7FEBF 		b	tcp_alloc
 1799              		.size	tcp_new, .-tcp_new
 1800 0006 00BF     		.section	.text.tcp_next_iss,"ax",%progbits
 1801              		.align	2
 1802              		.global	tcp_next_iss
 1803              		.thumb
 1804              		.thumb_func
 1805              		.type	tcp_next_iss, %function
 1806              	tcp_next_iss:
 1807              		@ args = 0, pretend = 0, frame = 0
 1808              		@ frame_needed = 0, uses_anonymous_args = 0
 1809              		@ link register save eliminated.
 1810 0000 034B     		ldr	r3, .L485
 1811 0002 044A     		ldr	r2, .L485+4
 1812 0004 1068     		ldr	r0, [r2]
 1813 0006 1A68     		ldr	r2, [r3]
 1814 0008 1044     		add	r0, r0, r2
 1815 000a 1860     		str	r0, [r3]
 1816 000c 7047     		bx	lr
 1817              	.L486:
 1818 000e 00BF     		.align	2
 1819              	.L485:
 1820 0010 00000000 		.word	.LANCHOR6
 1821 0014 00000000 		.word	tcp_ticks
 1822              		.size	tcp_next_iss, .-tcp_next_iss
 1823              		.section	.text.tcp_eff_send_mss,"ax",%progbits
 1824              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 33


 1825              		.global	tcp_eff_send_mss
 1826              		.thumb
 1827              		.thumb_func
 1828              		.type	tcp_eff_send_mss, %function
 1829              	tcp_eff_send_mss:
 1830              		@ args = 0, pretend = 0, frame = 0
 1831              		@ frame_needed = 0, uses_anonymous_args = 0
 1832 0000 10B5     		push	{r4, lr}
 1833 0002 0446     		mov	r4, r0
 1834 0004 0846     		mov	r0, r1
 1835 0006 FFF7FEFF 		bl	ip_route
 1836 000a 30B1     		cbz	r0, .L488
 1837 000c 838D     		ldrh	r3, [r0, #44]
 1838 000e 23B1     		cbz	r3, .L488
 1839 0010 283B     		subs	r3, r3, #40
 1840 0012 9BB2     		uxth	r3, r3
 1841 0014 9C42     		cmp	r4, r3
 1842 0016 28BF     		it	cs
 1843 0018 1C46     		movcs	r4, r3
 1844              	.L488:
 1845 001a 2046     		mov	r0, r4
 1846 001c 10BD     		pop	{r4, pc}
 1847              		.size	tcp_eff_send_mss, .-tcp_eff_send_mss
 1848 001e 00BF     		.section	.text.tcp_connect,"ax",%progbits
 1849              		.align	2
 1850              		.global	tcp_connect
 1851              		.thumb
 1852              		.thumb_func
 1853              		.type	tcp_connect, %function
 1854              	tcp_connect:
 1855              		@ args = 0, pretend = 0, frame = 0
 1856              		@ frame_needed = 0, uses_anonymous_args = 0
 1857 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1858 0004 0446     		mov	r4, r0
 1859 0006 007E     		ldrb	r0, [r0, #24]	@ zero_extendqisi2
 1860 0008 0D46     		mov	r5, r1
 1861 000a 1746     		mov	r7, r2
 1862 000c 9846     		mov	r8, r3
 1863 000e 0028     		cmp	r0, #0
 1864 0010 40F09780 		bne	.L533
 1865 0014 0029     		cmp	r1, #0
 1866 0016 00F09C80 		beq	.L518
 1867 001a 0A68     		ldr	r2, [r1]
 1868 001c 2368     		ldr	r3, [r4]
 1869 001e 6260     		str	r2, [r4, #4]
 1870 0020 A783     		strh	r7, [r4, #28]	@ movhi
 1871 0022 3BB9     		cbnz	r3, .L499
 1872 0024 201D     		adds	r0, r4, #4
 1873 0026 FFF7FEFF 		bl	ip_route
 1874 002a 0028     		cmp	r0, #0
 1875 002c 00F09C80 		beq	.L519
 1876 0030 4368     		ldr	r3, [r0, #4]
 1877 0032 2360     		str	r3, [r4]
 1878              	.L499:
 1879 0034 B4F81AA0 		ldrh	r10, [r4, #26]
 1880 0038 BAF1000F 		cmp	r10, #0
 1881 003c 78D0     		beq	.L500
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 34


 1882              	.L503:
 1883 003e 237A     		ldrb	r3, [r4, #8]	@ zero_extendqisi2
 1884 0040 5B07     		lsls	r3, r3, #29
 1885 0042 1ED5     		bpl	.L502
 1886 0044 4B4A     		ldr	r2, .L537
 1887 0046 02F10809 		add	r9, r2, #8
 1888              	.L507:
 1889 004a 52F8043F 		ldr	r3, [r2, #4]!
 1890 004e 1868     		ldr	r0, [r3]
 1891 0050 A8B1     		cbz	r0, .L504
 1892 0052 618B     		ldrh	r1, [r4, #26]
 1893 0054 01E0     		b	.L506
 1894              	.L505:
 1895 0056 C068     		ldr	r0, [r0, #12]
 1896 0058 88B1     		cbz	r0, .L504
 1897              	.L506:
 1898 005a 438B     		ldrh	r3, [r0, #26]
 1899 005c 8B42     		cmp	r3, r1
 1900 005e FAD1     		bne	.L505
 1901 0060 838B     		ldrh	r3, [r0, #28]
 1902 0062 BB42     		cmp	r3, r7
 1903 0064 F7D1     		bne	.L505
 1904 0066 0368     		ldr	r3, [r0]
 1905 0068 2668     		ldr	r6, [r4]
 1906 006a B342     		cmp	r3, r6
 1907 006c F3D1     		bne	.L505
 1908 006e 4368     		ldr	r3, [r0, #4]
 1909 0070 2E68     		ldr	r6, [r5]
 1910 0072 B342     		cmp	r3, r6
 1911 0074 EFD1     		bne	.L505
 1912 0076 F820     		movs	r0, #248
 1913              	.L498:
 1914 0078 40B2     		sxtb	r0, r0
 1915 007a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1916              	.L504:
 1917 007e 4A45     		cmp	r2, r9
 1918 0080 E3D1     		bne	.L507
 1919              	.L502:
 1920 0082 3D4B     		ldr	r3, .L537+4
 1921 0084 3D4F     		ldr	r7, .L537+8
 1922 0086 1A68     		ldr	r2, [r3]
 1923 0088 3B68     		ldr	r3, [r7]
 1924 008a 4FF0000E 		mov	lr, #0
 1925 008e 1344     		add	r3, r3, r2
 1926 0090 03F1FF3C 		add	ip, r3, #-1
 1927 0094 40F66832 		movw	r2, #2920
 1928 0098 4FF40670 		mov	r0, #536
 1929 009c 2946     		mov	r1, r5
 1930 009e 2365     		str	r3, [r4, #80]
 1931 00a0 A285     		strh	r2, [r4, #44]	@ movhi
 1932 00a2 E285     		strh	r2, [r4, #46]	@ movhi
 1933 00a4 A4F86020 		strh	r2, [r4, #96]	@ movhi
 1934 00a8 C4F848C0 		str	ip, [r4, #72]
 1935 00ac C4F85CC0 		str	ip, [r4, #92]
 1936 00b0 C4F828E0 		str	lr, [r4, #40]
 1937 00b4 C4F830E0 		str	lr, [r4, #48]
 1938 00b8 E086     		strh	r0, [r4, #54]	@ movhi
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 35


 1939 00ba 3B60     		str	r3, [r7]
 1940 00bc FFF7FEFF 		bl	tcp_eff_send_mss
 1941 00c0 00EB8002 		add	r2, r0, r0, lsl #2
 1942 00c4 5200     		lsls	r2, r2, #1
 1943 00c6 0123     		movs	r3, #1
 1944 00c8 E086     		strh	r0, [r4, #54]	@ movhi
 1945 00ca A4F84E20 		strh	r2, [r4, #78]	@ movhi
 1946 00ce C4F88480 		str	r8, [r4, #132]
 1947 00d2 A4F84C30 		strh	r3, [r4, #76]	@ movhi
 1948 00d6 2046     		mov	r0, r4
 1949 00d8 0221     		movs	r1, #2
 1950 00da FFF7FEFF 		bl	tcp_enqueue_flags
 1951 00de 0028     		cmp	r0, #0
 1952 00e0 CAD1     		bne	.L498
 1953 00e2 0223     		movs	r3, #2
 1954 00e4 2376     		strb	r3, [r4, #24]
 1955 00e6 BAF1000F 		cmp	r10, #0
 1956 00ea 11D0     		beq	.L508
 1957 00ec 244B     		ldr	r3, .L537+12
 1958 00ee 1A68     		ldr	r2, [r3]
 1959 00f0 A242     		cmp	r2, r4
 1960 00f2 36D0     		beq	.L534
 1961 00f4 2349     		ldr	r1, .L537+16
 1962 00f6 0A60     		str	r2, [r1]
 1963 00f8 52B1     		cbz	r2, .L508
 1964 00fa D368     		ldr	r3, [r2, #12]
 1965 00fc A342     		cmp	r3, r4
 1966 00fe 2CD0     		beq	.L535
 1967 0100 2BB1     		cbz	r3, .L536
 1968              	.L516:
 1969 0102 DA68     		ldr	r2, [r3, #12]
 1970 0104 A242     		cmp	r2, r4
 1971 0106 33D0     		beq	.L514
 1972 0108 1346     		mov	r3, r2
 1973 010a 002B     		cmp	r3, #0
 1974 010c F9D1     		bne	.L516
 1975              	.L536:
 1976 010e 0B60     		str	r3, [r1]
 1977              	.L508:
 1978 0110 1D4B     		ldr	r3, .L537+20
 1979 0112 1A68     		ldr	r2, [r3]
 1980 0114 1C60     		str	r4, [r3]
 1981 0116 E260     		str	r2, [r4, #12]
 1982 0118 FFF7FEFF 		bl	tcp_timer_needed
 1983 011c 1B4B     		ldr	r3, .L537+24
 1984 011e 0122     		movs	r2, #1
 1985 0120 2046     		mov	r0, r4
 1986 0122 1A70     		strb	r2, [r3]
 1987 0124 FFF7FEFF 		bl	tcp_output
 1988 0128 0020     		movs	r0, #0
 1989 012a 40B2     		sxtb	r0, r0
 1990 012c BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1991              	.L500:
 1992 0130 FFF7FEFF 		bl	tcp_new_port
 1993 0134 6083     		strh	r0, [r4, #26]	@ movhi
 1994 0136 0028     		cmp	r0, #0
 1995 0138 81D1     		bne	.L503
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 36


 1996 013a FE20     		movs	r0, #254
 1997 013c 40B2     		sxtb	r0, r0
 1998 013e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1999              	.L533:
 2000 0142 1348     		ldr	r0, .L537+28
 2001 0144 1349     		ldr	r1, .L537+32
 2002 0146 40F2B322 		movw	r2, #691
 2003 014a 134B     		ldr	r3, .L537+36
 2004 014c FFF7FEFF 		bl	debugPrintf
 2005              	.L497:
 2006 0150 FEE7     		b	.L497
 2007              	.L518:
 2008 0152 FA20     		movs	r0, #250
 2009 0154 40B2     		sxtb	r0, r0
 2010 0156 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2011              	.L535:
 2012 015a 1346     		mov	r3, r2
 2013              	.L512:
 2014 015c E268     		ldr	r2, [r4, #12]
 2015 015e DA60     		str	r2, [r3, #12]
 2016 0160 D6E7     		b	.L508
 2017              	.L534:
 2018 0162 E268     		ldr	r2, [r4, #12]
 2019 0164 1A60     		str	r2, [r3]
 2020 0166 D3E7     		b	.L508
 2021              	.L519:
 2022 0168 FC20     		movs	r0, #252
 2023 016a 40B2     		sxtb	r0, r0
 2024 016c BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2025              	.L514:
 2026 0170 0B60     		str	r3, [r1]
 2027 0172 F3E7     		b	.L512
 2028              	.L538:
 2029              		.align	2
 2030              	.L537:
 2031 0174 04000000 		.word	.LANCHOR1+4
 2032 0178 00000000 		.word	tcp_ticks
 2033 017c 00000000 		.word	.LANCHOR6
 2034 0180 00000000 		.word	tcp_bound_pcbs
 2035 0184 00000000 		.word	tcp_tmp_pcb
 2036 0188 00000000 		.word	tcp_active_pcbs
 2037 018c 00000000 		.word	tcp_active_pcbs_changed
 2038 0190 00000000 		.word	.LC0
 2039 0194 9C000000 		.word	.LC4
 2040 0198 50000000 		.word	.LC2
 2041              		.size	tcp_connect, .-tcp_connect
 2042              		.section	.text.tcp_debug_state_str,"ax",%progbits
 2043              		.align	2
 2044              		.global	tcp_debug_state_str
 2045              		.thumb
 2046              		.thumb_func
 2047              		.type	tcp_debug_state_str, %function
 2048              	tcp_debug_state_str:
 2049              		@ args = 0, pretend = 0, frame = 0
 2050              		@ frame_needed = 0, uses_anonymous_args = 0
 2051              		@ link register save eliminated.
 2052 0000 014B     		ldr	r3, .L540
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 37


 2053 0002 53F82000 		ldr	r0, [r3, r0, lsl #2]
 2054 0006 7047     		bx	lr
 2055              	.L541:
 2056              		.align	2
 2057              	.L540:
 2058 0008 00000000 		.word	.LANCHOR7
 2059              		.size	tcp_debug_state_str, .-tcp_debug_state_str
 2060              		.comm	tcp_active_pcbs_changed,1,1
 2061              		.comm	tcp_tmp_pcb,4,4
 2062              		.global	tcp_pcb_lists
 2063              		.comm	tcp_tw_pcbs,4,4
 2064              		.comm	tcp_active_pcbs,4,4
 2065              		.comm	tcp_listen_pcbs,4,4
 2066              		.comm	tcp_bound_pcbs,4,4
 2067              		.global	tcp_persist_backoff
 2068              		.global	tcp_backoff
 2069              		.comm	tcp_ticks,4,4
 2070              		.global	tcp_state_str
 2071              		.section	.rodata.tcp_state_str,"a",%progbits
 2072              		.align	2
 2073              		.set	.LANCHOR7,. + 0
 2074              		.type	tcp_state_str, %object
 2075              		.size	tcp_state_str, 44
 2076              	tcp_state_str:
 2077 0000 CC000000 		.word	.LC5
 2078 0004 D4000000 		.word	.LC6
 2079 0008 DC000000 		.word	.LC7
 2080 000c E8000000 		.word	.LC8
 2081 0010 F4000000 		.word	.LC9
 2082 0014 00010000 		.word	.LC10
 2083 0018 0C010000 		.word	.LC11
 2084 001c 18010000 		.word	.LC12
 2085 0020 24010000 		.word	.LC13
 2086 0024 2C010000 		.word	.LC14
 2087 0028 38010000 		.word	.LC15
 2088              		.section	.rodata.tcp_pcb_lists,"a",%progbits
 2089              		.align	2
 2090              		.set	.LANCHOR1,. + 0
 2091              		.type	tcp_pcb_lists, %object
 2092              		.size	tcp_pcb_lists, 16
 2093              	tcp_pcb_lists:
 2094 0000 00000000 		.word	tcp_listen_pcbs
 2095 0004 00000000 		.word	tcp_bound_pcbs
 2096 0008 00000000 		.word	tcp_active_pcbs
 2097 000c 00000000 		.word	tcp_tw_pcbs
 2098              		.section	.bss.tcp_timer,"aw",%nobits
 2099              		.set	.LANCHOR5,. + 0
 2100              		.type	tcp_timer, %object
 2101              		.size	tcp_timer, 1
 2102              	tcp_timer:
 2103 0000 00       		.space	1
 2104              		.section	.rodata.tcp_backoff,"a",%progbits
 2105              		.align	2
 2106              		.set	.LANCHOR4,. + 0
 2107              		.type	tcp_backoff, %object
 2108              		.size	tcp_backoff, 13
 2109              	tcp_backoff:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 38


 2110 0000 01       		.byte	1
 2111 0001 02       		.byte	2
 2112 0002 03       		.byte	3
 2113 0003 04       		.byte	4
 2114 0004 05       		.byte	5
 2115 0005 06       		.byte	6
 2116 0006 07       		.byte	7
 2117 0007 07       		.byte	7
 2118 0008 07       		.byte	7
 2119 0009 07       		.byte	7
 2120 000a 07       		.byte	7
 2121 000b 07       		.byte	7
 2122 000c 07       		.byte	7
 2123 000d 000000   		.section	.data.tcp_port,"aw",%progbits
 2124              		.align	1
 2125              		.set	.LANCHOR0,. + 0
 2126              		.type	tcp_port, %object
 2127              		.size	tcp_port, 2
 2128              	tcp_port:
 2129 0000 00C0     		.short	-16384
 2130              		.section	.rodata.str1.4,"aMS",%progbits,1
 2131              		.align	2
 2132              	.LC0:
 2133 0000 41737365 		.ascii	"Assertion \"%s\" failed at line %d in %s\012\000"
 2133      7274696F 
 2133      6E202225 
 2133      73222066 
 2133      61696C65 
 2134              	.LC1:
 2135 0028 7463705F 		.ascii	"tcp_bind: can only bind in state CLOSED\000"
 2135      62696E64 
 2135      3A206361 
 2135      6E206F6E 
 2135      6C792062 
 2136              	.LC2:
 2137 0050 2E2E2F73 		.ascii	"../src/Duet/Lwip/lwip/src/core/tcp.c\000"
 2137      72632F44 
 2137      7565742F 
 2137      4C776970 
 2137      2F6C7769 
 2138 0075 000000   		.space	3
 2139              	.LC3:
 2140 0078 7463705F 		.ascii	"tcp_listen: pcb already connected\000"
 2140      6C697374 
 2140      656E3A20 
 2140      70636220 
 2140      616C7265 
 2141 009a 0000     		.space	2
 2142              	.LC4:
 2143 009c 7463705F 		.ascii	"tcp_connect: can only connect from state CLOSED\000"
 2143      636F6E6E 
 2143      6563743A 
 2143      2063616E 
 2143      206F6E6C 
 2144              	.LC5:
 2145 00cc 434C4F53 		.ascii	"CLOSED\000"
 2145      454400
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 39


 2146 00d3 00       		.space	1
 2147              	.LC6:
 2148 00d4 4C495354 		.ascii	"LISTEN\000"
 2148      454E00
 2149 00db 00       		.space	1
 2150              	.LC7:
 2151 00dc 53594E5F 		.ascii	"SYN_SENT\000"
 2151      53454E54 
 2151      00
 2152 00e5 000000   		.space	3
 2153              	.LC8:
 2154 00e8 53594E5F 		.ascii	"SYN_RCVD\000"
 2154      52435644 
 2154      00
 2155 00f1 000000   		.space	3
 2156              	.LC9:
 2157 00f4 45535441 		.ascii	"ESTABLISHED\000"
 2157      424C4953 
 2157      48454400 
 2158              	.LC10:
 2159 0100 46494E5F 		.ascii	"FIN_WAIT_1\000"
 2159      57414954 
 2159      5F3100
 2160 010b 00       		.space	1
 2161              	.LC11:
 2162 010c 46494E5F 		.ascii	"FIN_WAIT_2\000"
 2162      57414954 
 2162      5F3200
 2163 0117 00       		.space	1
 2164              	.LC12:
 2165 0118 434C4F53 		.ascii	"CLOSE_WAIT\000"
 2165      455F5741 
 2165      495400
 2166 0123 00       		.space	1
 2167              	.LC13:
 2168 0124 434C4F53 		.ascii	"CLOSING\000"
 2168      494E4700 
 2169              	.LC14:
 2170 012c 4C415354 		.ascii	"LAST_ACK\000"
 2170      5F41434B 
 2170      00
 2171 0135 000000   		.space	3
 2172              	.LC15:
 2173 0138 54494D45 		.ascii	"TIME_WAIT\000"
 2173      5F574149 
 2173      5400
 2174 0142 0000     		.section	.data.iss.6124,"aw",%progbits
 2175              		.align	2
 2176              		.set	.LANCHOR6,. + 0
 2177              		.type	iss.6124, %object
 2178              		.size	iss.6124, 4
 2179              	iss.6124:
 2180 0000 6E190000 		.word	6510
 2181              		.section	.bss.tcp_timer_ctr,"aw",%nobits
 2182              		.set	.LANCHOR2,. + 0
 2183              		.type	tcp_timer_ctr, %object
 2184              		.size	tcp_timer_ctr, 1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxcIEq7.s 			page 40


 2185              	tcp_timer_ctr:
 2186 0000 00       		.space	1
 2187              		.section	.rodata.tcp_persist_backoff,"a",%progbits
 2188              		.align	2
 2189              		.set	.LANCHOR3,. + 0
 2190              		.type	tcp_persist_backoff, %object
 2191              		.size	tcp_persist_backoff, 7
 2192              	tcp_persist_backoff:
 2193 0000 03       		.byte	3
 2194 0001 06       		.byte	6
 2195 0002 0C       		.byte	12
 2196 0003 18       		.byte	24
 2197 0004 30       		.byte	48
 2198 0005 60       		.byte	96
 2199 0006 78       		.byte	120
 2200 0007 00       		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
