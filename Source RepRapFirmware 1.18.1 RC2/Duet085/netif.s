ARM GAS  C:\Users\George\AppData\Local\Temp\ccvowxUY.s 			page 1


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
  14              		.file	"netif.c"
  15              		.section	.text.netif_init,"ax",%progbits
  16              		.align	2
  17              		.global	netif_init
  18              		.thumb
  19              		.thumb_func
  20              		.type	netif_init, %function
  21              	netif_init:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 7047     		bx	lr
  26              		.size	netif_init, .-netif_init
  27 0002 00BF     		.section	.text.netif_find,"ax",%progbits
  28              		.align	2
  29              		.global	netif_find
  30              		.thumb
  31              		.thumb_func
  32              		.type	netif_find, %function
  33              	netif_find:
  34              		@ args = 0, pretend = 0, frame = 0
  35              		@ frame_needed = 0, uses_anonymous_args = 0
  36              		@ link register save eliminated.
  37 0000 10B4     		push	{r4}
  38 0002 B8B1     		cbz	r0, .L3
  39 0004 0D4B     		ldr	r3, .L11
  40 0006 8178     		ldrb	r1, [r0, #2]	@ zero_extendqisi2
  41 0008 1B68     		ldr	r3, [r3]
  42 000a 3039     		subs	r1, r1, #48
  43 000c C9B2     		uxtb	r1, r1
  44 000e 13B9     		cbnz	r3, .L5
  45 0010 0FE0     		b	.L9
  46              	.L4:
  47 0012 1B68     		ldr	r3, [r3]
  48 0014 6BB1     		cbz	r3, .L9
  49              	.L5:
  50 0016 93F83820 		ldrb	r2, [r3, #56]	@ zero_extendqisi2
  51 001a 8A42     		cmp	r2, r1
  52 001c F9D1     		bne	.L4
  53 001e 0478     		ldrb	r4, [r0]	@ zero_extendqisi2
  54 0020 93F83620 		ldrb	r2, [r3, #54]	@ zero_extendqisi2
  55 0024 9442     		cmp	r4, r2
  56 0026 F4D1     		bne	.L4
  57 0028 4478     		ldrb	r4, [r0, #1]	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvowxUY.s 			page 2


  58 002a 93F83720 		ldrb	r2, [r3, #55]	@ zero_extendqisi2
  59 002e 9442     		cmp	r4, r2
  60 0030 EFD1     		bne	.L4
  61              	.L9:
  62 0032 1846     		mov	r0, r3
  63              	.L3:
  64 0034 5DF8044B 		ldr	r4, [sp], #4
  65 0038 7047     		bx	lr
  66              	.L12:
  67 003a 00BF     		.align	2
  68              	.L11:
  69 003c 00000000 		.word	netif_list
  70              		.size	netif_find, .-netif_find
  71              		.section	.text.netif_set_ipaddr,"ax",%progbits
  72              		.align	2
  73              		.global	netif_set_ipaddr
  74              		.thumb
  75              		.thumb_func
  76              		.type	netif_set_ipaddr, %function
  77              	netif_set_ipaddr:
  78              		@ args = 0, pretend = 0, frame = 0
  79              		@ frame_needed = 0, uses_anonymous_args = 0
  80 0000 70B5     		push	{r4, r5, r6, lr}
  81 0002 0E46     		mov	r6, r1
  82 0004 0546     		mov	r5, r0
  83 0006 29B3     		cbz	r1, .L23
  84 0008 0C68     		ldr	r4, [r1]
  85 000a 4268     		ldr	r2, [r0, #4]
  86 000c 9442     		cmp	r4, r2
  87 000e 1FD0     		beq	.L14
  88 0010 124B     		ldr	r3, .L39
  89 0012 1868     		ldr	r0, [r3]
  90 0014 78B1     		cbz	r0, .L16
  91 0016 0468     		ldr	r4, [r0]
  92 0018 9442     		cmp	r4, r2
  93 001a 05D0     		beq	.L37
  94              	.L17:
  95 001c C068     		ldr	r0, [r0, #12]
  96 001e 48B1     		cbz	r0, .L19
  97              	.L38:
  98 0020 6A68     		ldr	r2, [r5, #4]
  99 0022 0468     		ldr	r4, [r0]
 100 0024 9442     		cmp	r4, r2
 101 0026 F9D1     		bne	.L17
 102              	.L37:
 103 0028 C468     		ldr	r4, [r0, #12]
 104 002a FFF7FEFF 		bl	tcp_abort
 105 002e 2046     		mov	r0, r4
 106 0030 0028     		cmp	r0, #0
 107 0032 F5D1     		bne	.L38
 108              	.L19:
 109 0034 3468     		ldr	r4, [r6]
 110              	.L16:
 111 0036 0A4B     		ldr	r3, .L39+4
 112 0038 1B68     		ldr	r3, [r3]
 113 003a 4BB1     		cbz	r3, .L14
 114              	.L22:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvowxUY.s 			page 3


 115 003c 1A68     		ldr	r2, [r3]
 116 003e 22B1     		cbz	r2, .L21
 117 0040 6868     		ldr	r0, [r5, #4]
 118 0042 8242     		cmp	r2, r0
 119 0044 04BF     		itt	eq
 120 0046 1C60     		streq	r4, [r3]
 121 0048 3468     		ldreq	r4, [r6]
 122              	.L21:
 123 004a DB68     		ldr	r3, [r3, #12]
 124 004c 002B     		cmp	r3, #0
 125 004e F5D1     		bne	.L22
 126              	.L14:
 127 0050 6C60     		str	r4, [r5, #4]
 128 0052 70BD     		pop	{r4, r5, r6, pc}
 129              	.L23:
 130 0054 0C46     		mov	r4, r1
 131 0056 6C60     		str	r4, [r5, #4]
 132 0058 70BD     		pop	{r4, r5, r6, pc}
 133              	.L40:
 134 005a 00BF     		.align	2
 135              	.L39:
 136 005c 00000000 		.word	tcp_active_pcbs
 137 0060 00000000 		.word	tcp_listen_pcbs
 138              		.size	netif_set_ipaddr, .-netif_set_ipaddr
 139              		.section	.text.netif_set_addr,"ax",%progbits
 140              		.align	2
 141              		.global	netif_set_addr
 142              		.thumb
 143              		.thumb_func
 144              		.type	netif_set_addr, %function
 145              	netif_set_addr:
 146              		@ args = 0, pretend = 0, frame = 0
 147              		@ frame_needed = 0, uses_anonymous_args = 0
 148 0000 70B5     		push	{r4, r5, r6, lr}
 149 0002 1446     		mov	r4, r2
 150 0004 1E46     		mov	r6, r3
 151 0006 0546     		mov	r5, r0
 152 0008 FFF7FEFF 		bl	netif_set_ipaddr
 153 000c 04B1     		cbz	r4, .L42
 154 000e 2468     		ldr	r4, [r4]
 155              	.L42:
 156 0010 AC60     		str	r4, [r5, #8]
 157 0012 06B1     		cbz	r6, .L43
 158 0014 3668     		ldr	r6, [r6]
 159              	.L43:
 160 0016 EE60     		str	r6, [r5, #12]
 161 0018 70BD     		pop	{r4, r5, r6, pc}
 162              		.size	netif_set_addr, .-netif_set_addr
 163 001a 00BF     		.section	.text.netif_add,"ax",%progbits
 164              		.align	2
 165              		.global	netif_add
 166              		.thumb
 167              		.thumb_func
 168              		.type	netif_add, %function
 169              	netif_add:
 170              		@ args = 12, pretend = 0, frame = 0
 171              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvowxUY.s 			page 4


 172 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 173 0002 1B4F     		ldr	r7, .L55
 174 0004 1646     		mov	r6, r2
 175 0006 069A     		ldr	r2, [sp, #24]
 176 0008 97F800C0 		ldrb	ip, [r7]	@ zero_extendqisi2
 177 000c 0262     		str	r2, [r0, #32]
 178 000e 089A     		ldr	r2, [sp, #32]
 179 0010 0025     		movs	r5, #0
 180 0012 0CF1010E 		add	lr, ip, #1
 181 0016 4560     		str	r5, [r0, #4]
 182 0018 8560     		str	r5, [r0, #8]
 183 001a C560     		str	r5, [r0, #12]
 184 001c 80F83550 		strb	r5, [r0, #53]
 185 0020 4562     		str	r5, [r0, #36]
 186 0022 C561     		str	r5, [r0, #28]
 187 0024 C563     		str	r5, [r0, #60]
 188 0026 80F838C0 		strb	ip, [r0, #56]
 189 002a 0261     		str	r2, [r0, #16]
 190 002c 87F800E0 		strb	lr, [r7]
 191 0030 0446     		mov	r4, r0
 192 0032 1D46     		mov	r5, r3
 193 0034 079F     		ldr	r7, [sp, #28]
 194 0036 FFF7FEFF 		bl	netif_set_ipaddr
 195 003a 8EB1     		cbz	r6, .L50
 196 003c 3368     		ldr	r3, [r6]
 197              	.L47:
 198 003e A360     		str	r3, [r4, #8]
 199 0040 05B1     		cbz	r5, .L48
 200 0042 2D68     		ldr	r5, [r5]
 201              	.L48:
 202 0044 E560     		str	r5, [r4, #12]
 203 0046 2046     		mov	r0, r4
 204 0048 B847     		blx	r7
 205 004a 78B9     		cbnz	r0, .L52
 206 004c 094B     		ldr	r3, .L55+4
 207 004e 94F93510 		ldrsb	r1, [r4, #53]
 208 0052 1A68     		ldr	r2, [r3]
 209 0054 0029     		cmp	r1, #0
 210 0056 2260     		str	r2, [r4]
 211 0058 2046     		mov	r0, r4
 212 005a 1C60     		str	r4, [r3]
 213 005c 02DB     		blt	.L54
 214 005e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 215              	.L50:
 216 0060 3346     		mov	r3, r6
 217 0062 ECE7     		b	.L47
 218              	.L54:
 219 0064 FFF7FEFF 		bl	igmp_start
 220 0068 2046     		mov	r0, r4
 221 006a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 222              	.L52:
 223 006c 0020     		movs	r0, #0
 224 006e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 225              	.L56:
 226              		.align	2
 227              	.L55:
 228 0070 00000000 		.word	.LANCHOR0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvowxUY.s 			page 5


 229 0074 00000000 		.word	netif_list
 230              		.size	netif_add, .-netif_add
 231              		.section	.text.netif_set_gw,"ax",%progbits
 232              		.align	2
 233              		.global	netif_set_gw
 234              		.thumb
 235              		.thumb_func
 236              		.type	netif_set_gw, %function
 237              	netif_set_gw:
 238              		@ args = 0, pretend = 0, frame = 0
 239              		@ frame_needed = 0, uses_anonymous_args = 0
 240              		@ link register save eliminated.
 241 0000 01B1     		cbz	r1, .L58
 242 0002 0968     		ldr	r1, [r1]
 243              	.L58:
 244 0004 C160     		str	r1, [r0, #12]
 245 0006 7047     		bx	lr
 246              		.size	netif_set_gw, .-netif_set_gw
 247              		.section	.text.netif_set_netmask,"ax",%progbits
 248              		.align	2
 249              		.global	netif_set_netmask
 250              		.thumb
 251              		.thumb_func
 252              		.type	netif_set_netmask, %function
 253              	netif_set_netmask:
 254              		@ args = 0, pretend = 0, frame = 0
 255              		@ frame_needed = 0, uses_anonymous_args = 0
 256              		@ link register save eliminated.
 257 0000 01B1     		cbz	r1, .L61
 258 0002 0968     		ldr	r1, [r1]
 259              	.L61:
 260 0004 8160     		str	r1, [r0, #8]
 261 0006 7047     		bx	lr
 262              		.size	netif_set_netmask, .-netif_set_netmask
 263              		.section	.text.netif_set_default,"ax",%progbits
 264              		.align	2
 265              		.global	netif_set_default
 266              		.thumb
 267              		.thumb_func
 268              		.type	netif_set_default, %function
 269              	netif_set_default:
 270              		@ args = 0, pretend = 0, frame = 0
 271              		@ frame_needed = 0, uses_anonymous_args = 0
 272              		@ link register save eliminated.
 273 0000 014B     		ldr	r3, .L64
 274 0002 1860     		str	r0, [r3]
 275 0004 7047     		bx	lr
 276              	.L65:
 277 0006 00BF     		.align	2
 278              	.L64:
 279 0008 00000000 		.word	netif_default
 280              		.size	netif_set_default, .-netif_set_default
 281              		.section	.text.netif_set_up,"ax",%progbits
 282              		.align	2
 283              		.global	netif_set_up
 284              		.thumb
 285              		.thumb_func
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvowxUY.s 			page 6


 286              		.type	netif_set_up, %function
 287              	netif_set_up:
 288              		@ args = 0, pretend = 0, frame = 0
 289              		@ frame_needed = 0, uses_anonymous_args = 0
 290 0000 10B5     		push	{r4, lr}
 291 0002 90F83530 		ldrb	r3, [r0, #53]	@ zero_extendqisi2
 292 0006 0446     		mov	r4, r0
 293 0008 DA07     		lsls	r2, r3, #31
 294 000a 0ED4     		bmi	.L66
 295 000c C269     		ldr	r2, [r0, #28]
 296 000e 43F00103 		orr	r3, r3, #1
 297 0012 80F83530 		strb	r3, [r0, #53]
 298 0016 12B1     		cbz	r2, .L69
 299 0018 9047     		blx	r2
 300 001a 94F83530 		ldrb	r3, [r4, #53]	@ zero_extendqisi2
 301              	.L69:
 302 001e D906     		lsls	r1, r3, #27
 303 0020 03D5     		bpl	.L66
 304 0022 9A06     		lsls	r2, r3, #26
 305 0024 07D4     		bmi	.L81
 306              	.L71:
 307 0026 1B06     		lsls	r3, r3, #24
 308 0028 00D4     		bmi	.L82
 309              	.L66:
 310 002a 10BD     		pop	{r4, pc}
 311              	.L82:
 312 002c 2046     		mov	r0, r4
 313 002e BDE81040 		pop	{r4, lr}
 314 0032 FFF7FEBF 		b	igmp_report_groups
 315              	.L81:
 316 0036 2046     		mov	r0, r4
 317 0038 211D     		adds	r1, r4, #4
 318 003a FFF7FEFF 		bl	etharp_request
 319 003e 94F83530 		ldrb	r3, [r4, #53]	@ zero_extendqisi2
 320 0042 F0E7     		b	.L71
 321              		.size	netif_set_up, .-netif_set_up
 322              		.section	.text.netif_set_down,"ax",%progbits
 323              		.align	2
 324              		.global	netif_set_down
 325              		.thumb
 326              		.thumb_func
 327              		.type	netif_set_down, %function
 328              	netif_set_down:
 329              		@ args = 0, pretend = 0, frame = 0
 330              		@ frame_needed = 0, uses_anonymous_args = 0
 331 0000 10B5     		push	{r4, lr}
 332 0002 90F83530 		ldrb	r3, [r0, #53]	@ zero_extendqisi2
 333 0006 0446     		mov	r4, r0
 334 0008 DA07     		lsls	r2, r3, #31
 335 000a 09D5     		bpl	.L83
 336 000c 23F00102 		bic	r2, r3, #1
 337 0010 9B06     		lsls	r3, r3, #26
 338 0012 80F83520 		strb	r2, [r0, #53]
 339 0016 04D4     		bmi	.L94
 340 0018 E369     		ldr	r3, [r4, #28]
 341 001a 0BB1     		cbz	r3, .L83
 342              	.L95:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvowxUY.s 			page 7


 343 001c 2046     		mov	r0, r4
 344 001e 9847     		blx	r3
 345              	.L83:
 346 0020 10BD     		pop	{r4, pc}
 347              	.L94:
 348 0022 FFF7FEFF 		bl	etharp_cleanup_netif
 349 0026 E369     		ldr	r3, [r4, #28]
 350 0028 002B     		cmp	r3, #0
 351 002a F7D1     		bne	.L95
 352 002c F8E7     		b	.L83
 353              		.size	netif_set_down, .-netif_set_down
 354 002e 00BF     		.section	.text.netif_remove,"ax",%progbits
 355              		.align	2
 356              		.global	netif_remove
 357              		.thumb
 358              		.thumb_func
 359              		.type	netif_remove, %function
 360              	netif_remove:
 361              		@ args = 0, pretend = 0, frame = 0
 362              		@ frame_needed = 0, uses_anonymous_args = 0
 363 0000 10B5     		push	{r4, lr}
 364 0002 0446     		mov	r4, r0
 365 0004 F0B1     		cbz	r0, .L96
 366 0006 90F83530 		ldrb	r3, [r0, #53]	@ zero_extendqisi2
 367 000a 1A06     		lsls	r2, r3, #24
 368 000c 1FD4     		bmi	.L114
 369              	.L99:
 370 000e DB07     		lsls	r3, r3, #31
 371 0010 19D4     		bmi	.L115
 372              	.L100:
 373 0012 114B     		ldr	r3, .L118
 374 0014 1A68     		ldr	r2, [r3]
 375 0016 A242     		cmp	r2, r4
 376 0018 0CD0     		beq	.L103
 377 001a 9AB1     		cbz	r2, .L96
 378 001c 1368     		ldr	r3, [r2]
 379 001e A342     		cmp	r3, r4
 380 0020 07D0     		beq	.L116
 381 0022 2BB1     		cbz	r3, .L117
 382              	.L104:
 383 0024 1A68     		ldr	r2, [r3]
 384 0026 A242     		cmp	r2, r4
 385 0028 04D0     		beq	.L103
 386 002a 1346     		mov	r3, r2
 387 002c 002B     		cmp	r3, #0
 388 002e F9D1     		bne	.L104
 389              	.L117:
 390 0030 10BD     		pop	{r4, pc}
 391              	.L116:
 392 0032 1346     		mov	r3, r2
 393              	.L103:
 394 0034 2268     		ldr	r2, [r4]
 395 0036 1A60     		str	r2, [r3]
 396 0038 084B     		ldr	r3, .L118+4
 397 003a 1A68     		ldr	r2, [r3]
 398 003c A242     		cmp	r2, r4
 399 003e 04BF     		itt	eq
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvowxUY.s 			page 8


 400 0040 0022     		moveq	r2, #0
 401 0042 1A60     		streq	r2, [r3]
 402              	.L96:
 403 0044 10BD     		pop	{r4, pc}
 404              	.L115:
 405 0046 2046     		mov	r0, r4
 406 0048 FFF7FEFF 		bl	netif_set_down
 407 004c E1E7     		b	.L100
 408              	.L114:
 409 004e FFF7FEFF 		bl	igmp_stop
 410 0052 94F83530 		ldrb	r3, [r4, #53]	@ zero_extendqisi2
 411 0056 DAE7     		b	.L99
 412              	.L119:
 413              		.align	2
 414              	.L118:
 415 0058 00000000 		.word	netif_list
 416 005c 00000000 		.word	netif_default
 417              		.size	netif_remove, .-netif_remove
 418              		.section	.text.netif_set_status_callback,"ax",%progbits
 419              		.align	2
 420              		.global	netif_set_status_callback
 421              		.thumb
 422              		.thumb_func
 423              		.type	netif_set_status_callback, %function
 424              	netif_set_status_callback:
 425              		@ args = 0, pretend = 0, frame = 0
 426              		@ frame_needed = 0, uses_anonymous_args = 0
 427              		@ link register save eliminated.
 428 0000 00B1     		cbz	r0, .L120
 429 0002 C161     		str	r1, [r0, #28]
 430              	.L120:
 431 0004 7047     		bx	lr
 432              		.size	netif_set_status_callback, .-netif_set_status_callback
 433 0006 00BF     		.section	.text.netif_set_link_up,"ax",%progbits
 434              		.align	2
 435              		.global	netif_set_link_up
 436              		.thumb
 437              		.thumb_func
 438              		.type	netif_set_link_up, %function
 439              	netif_set_link_up:
 440              		@ args = 0, pretend = 0, frame = 0
 441              		@ frame_needed = 0, uses_anonymous_args = 0
 442 0000 10B5     		push	{r4, lr}
 443 0002 90F83530 		ldrb	r3, [r0, #53]	@ zero_extendqisi2
 444 0006 0446     		mov	r4, r0
 445 0008 DA06     		lsls	r2, r3, #27
 446 000a 0FD4     		bmi	.L125
 447 000c 426A     		ldr	r2, [r0, #36]
 448 000e 43F01003 		orr	r3, r3, #16
 449 0012 80F83530 		strb	r3, [r0, #53]
 450 0016 1AB1     		cbz	r2, .L128
 451 0018 FFF7FEFF 		bl	dhcp_network_changed
 452 001c 94F83530 		ldrb	r3, [r4, #53]	@ zero_extendqisi2
 453              	.L128:
 454 0020 D907     		lsls	r1, r3, #31
 455 0022 03D5     		bpl	.L125
 456 0024 9A06     		lsls	r2, r3, #26
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvowxUY.s 			page 9


 457 0026 07D4     		bmi	.L140
 458              	.L130:
 459 0028 1B06     		lsls	r3, r3, #24
 460 002a 00D4     		bmi	.L141
 461              	.L125:
 462 002c 10BD     		pop	{r4, pc}
 463              	.L141:
 464 002e 2046     		mov	r0, r4
 465 0030 BDE81040 		pop	{r4, lr}
 466 0034 FFF7FEBF 		b	igmp_report_groups
 467              	.L140:
 468 0038 2046     		mov	r0, r4
 469 003a 211D     		adds	r1, r4, #4
 470 003c FFF7FEFF 		bl	etharp_request
 471 0040 94F83530 		ldrb	r3, [r4, #53]	@ zero_extendqisi2
 472 0044 F0E7     		b	.L130
 473              		.size	netif_set_link_up, .-netif_set_link_up
 474 0046 00BF     		.section	.text.netif_set_link_down,"ax",%progbits
 475              		.align	2
 476              		.global	netif_set_link_down
 477              		.thumb
 478              		.thumb_func
 479              		.type	netif_set_link_down, %function
 480              	netif_set_link_down:
 481              		@ args = 0, pretend = 0, frame = 0
 482              		@ frame_needed = 0, uses_anonymous_args = 0
 483              		@ link register save eliminated.
 484 0000 90F83530 		ldrb	r3, [r0, #53]	@ zero_extendqisi2
 485 0004 DA06     		lsls	r2, r3, #27
 486 0006 44BF     		itt	mi
 487 0008 23F01003 		bicmi	r3, r3, #16
 488 000c 80F83530 		strbmi	r3, [r0, #53]
 489 0010 7047     		bx	lr
 490              		.size	netif_set_link_down, .-netif_set_link_down
 491              		.comm	netif_default,4,4
 492              		.comm	netif_list,4,4
 493 0012 00BF     		.section	.bss.netif_num,"aw",%nobits
 494              		.set	.LANCHOR0,. + 0
 495              		.type	netif_num, %object
 496              		.size	netif_num, 1
 497              	netif_num:
 498 0000 00       		.space	1
 499              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
