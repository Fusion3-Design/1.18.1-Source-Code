ARM GAS  C:\Users\George\AppData\Local\Temp\ccrb7Ei9.s 			page 1


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
  14              		.file	"lwip_timers_141.c"
  15              		.section	.text.sys_timeout,"ax",%progbits
  16              		.align	2
  17              		.global	sys_timeout
  18              		.thumb
  19              		.thumb_func
  20              		.type	sys_timeout, %function
  21              	sys_timeout:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  25 0004 0646     		mov	r6, r0
  26 0006 0720     		movs	r0, #7
  27 0008 8846     		mov	r8, r1
  28 000a 1746     		mov	r7, r2
  29 000c FFF7FEFF 		bl	memp_malloc
  30 0010 0546     		mov	r5, r0
  31 0012 D0B1     		cbz	r0, .L1
  32 0014 1548     		ldr	r0, .L19
  33 0016 0023     		movs	r3, #0
  34 0018 0468     		ldr	r4, [r0]
  35 001a C5F80880 		str	r8, [r5, #8]
  36 001e EF60     		str	r7, [r5, #12]
  37 0020 85E84800 		stmia	r5, {r3, r6}
  38 0024 FCB1     		cbz	r4, .L17
  39 0026 6168     		ldr	r1, [r4, #4]
  40 0028 8E42     		cmp	r6, r1
  41 002a 10D3     		bcc	.L18
  42 002c 3346     		mov	r3, r6
  43 002e 03E0     		b	.L6
  44              	.L15:
  45 0030 5168     		ldr	r1, [r2, #4]
  46 0032 8B42     		cmp	r3, r1
  47 0034 11D3     		bcc	.L5
  48 0036 1446     		mov	r4, r2
  49              	.L6:
  50 0038 2268     		ldr	r2, [r4]
  51 003a 5B1A     		subs	r3, r3, r1
  52 003c 6B60     		str	r3, [r5, #4]
  53 003e 002A     		cmp	r2, #0
  54 0040 F6D1     		bne	.L15
  55 0042 2A60     		str	r2, [r5]
  56 0044 2560     		str	r5, [r4]
  57 0046 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccrb7Ei9.s 			page 2


  58              	.L1:
  59 004a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  60              	.L18:
  61 004e 891B     		subs	r1, r1, r6
  62 0050 6160     		str	r1, [r4, #4]
  63 0052 0560     		str	r5, [r0]
  64 0054 2C60     		str	r4, [r5]
  65 0056 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  66              	.L5:
  67 005a CB1A     		subs	r3, r1, r3
  68 005c 5360     		str	r3, [r2, #4]
  69 005e 2A60     		str	r2, [r5]
  70 0060 2560     		str	r5, [r4]
  71 0062 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  72              	.L17:
  73 0066 0560     		str	r5, [r0]
  74 0068 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  75              	.L20:
  76              		.align	2
  77              	.L19:
  78 006c 00000000 		.word	.LANCHOR0
  79              		.size	sys_timeout, .-sys_timeout
  80              		.section	.text.tcp_timer_needed,"ax",%progbits
  81              		.align	2
  82              		.global	tcp_timer_needed
  83              		.thumb
  84              		.thumb_func
  85              		.type	tcp_timer_needed, %function
  86              	tcp_timer_needed:
  87              		@ args = 0, pretend = 0, frame = 0
  88              		@ frame_needed = 0, uses_anonymous_args = 0
  89              		@ link register save eliminated.
  90 0000 0B4B     		ldr	r3, .L28
  91 0002 10B4     		push	{r4}
  92 0004 1A68     		ldr	r2, [r3]
  93 0006 7AB9     		cbnz	r2, .L21
  94 0008 0A4A     		ldr	r2, .L28+4
  95 000a 1268     		ldr	r2, [r2]
  96 000c 42B1     		cbz	r2, .L27
  97              	.L23:
  98 000e 0124     		movs	r4, #1
  99 0010 1C60     		str	r4, [r3]
 100 0012 7D20     		movs	r0, #125
 101 0014 0849     		ldr	r1, .L28+8
 102 0016 0022     		movs	r2, #0
 103 0018 5DF8044B 		ldr	r4, [sp], #4
 104 001c FFF7FEBF 		b	sys_timeout
 105              	.L27:
 106 0020 064A     		ldr	r2, .L28+12
 107 0022 1268     		ldr	r2, [r2]
 108 0024 002A     		cmp	r2, #0
 109 0026 F2D1     		bne	.L23
 110              	.L21:
 111 0028 5DF8044B 		ldr	r4, [sp], #4
 112 002c 7047     		bx	lr
 113              	.L29:
 114 002e 00BF     		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccrb7Ei9.s 			page 3


 115              	.L28:
 116 0030 00000000 		.word	.LANCHOR1
 117 0034 00000000 		.word	tcp_active_pcbs
 118 0038 00000000 		.word	tcpip_tcp_timer
 119 003c 00000000 		.word	tcp_tw_pcbs
 120              		.size	tcp_timer_needed, .-tcp_timer_needed
 121              		.section	.text.tcpip_tcp_timer,"ax",%progbits
 122              		.align	2
 123              		.thumb
 124              		.thumb_func
 125              		.type	tcpip_tcp_timer, %function
 126              	tcpip_tcp_timer:
 127              		@ args = 0, pretend = 0, frame = 0
 128              		@ frame_needed = 0, uses_anonymous_args = 0
 129 0000 08B5     		push	{r3, lr}
 130 0002 FFF7FEFF 		bl	tcp_tmr
 131 0006 084B     		ldr	r3, .L34
 132 0008 1B68     		ldr	r3, [r3]
 133 000a 33B1     		cbz	r3, .L33
 134              	.L31:
 135 000c 7D20     		movs	r0, #125
 136 000e 0749     		ldr	r1, .L34+4
 137 0010 0022     		movs	r2, #0
 138 0012 BDE80840 		pop	{r3, lr}
 139 0016 FFF7FEBF 		b	sys_timeout
 140              	.L33:
 141 001a 054B     		ldr	r3, .L34+8
 142 001c 1B68     		ldr	r3, [r3]
 143 001e 002B     		cmp	r3, #0
 144 0020 F4D1     		bne	.L31
 145 0022 044A     		ldr	r2, .L34+12
 146 0024 1360     		str	r3, [r2]
 147 0026 08BD     		pop	{r3, pc}
 148              	.L35:
 149              		.align	2
 150              	.L34:
 151 0028 00000000 		.word	tcp_active_pcbs
 152 002c 00000000 		.word	tcpip_tcp_timer
 153 0030 00000000 		.word	tcp_tw_pcbs
 154 0034 00000000 		.word	.LANCHOR1
 155              		.size	tcpip_tcp_timer, .-tcpip_tcp_timer
 156              		.section	.text.sys_timeouts_init,"ax",%progbits
 157              		.align	2
 158              		.global	sys_timeouts_init
 159              		.thumb
 160              		.thumb_func
 161              		.type	sys_timeouts_init, %function
 162              	sys_timeouts_init:
 163              		@ args = 0, pretend = 0, frame = 0
 164              		@ frame_needed = 0, uses_anonymous_args = 0
 165 0000 08B5     		push	{r3, lr}
 166 0002 4FF47A70 		mov	r0, #1000
 167 0006 1349     		ldr	r1, .L37
 168 0008 0022     		movs	r2, #0
 169 000a FFF7FEFF 		bl	sys_timeout
 170 000e 41F28830 		movw	r0, #5000
 171 0012 1149     		ldr	r1, .L37+4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccrb7Ei9.s 			page 4


 172 0014 0022     		movs	r2, #0
 173 0016 FFF7FEFF 		bl	sys_timeout
 174 001a 4EF66020 		movw	r0, #60000
 175 001e 0F49     		ldr	r1, .L37+8
 176 0020 0022     		movs	r2, #0
 177 0022 FFF7FEFF 		bl	sys_timeout
 178 0026 4FF4FA70 		mov	r0, #500
 179 002a 0D49     		ldr	r1, .L37+12
 180 002c 0022     		movs	r2, #0
 181 002e FFF7FEFF 		bl	sys_timeout
 182 0032 6420     		movs	r0, #100
 183 0034 0B49     		ldr	r1, .L37+16
 184 0036 0022     		movs	r2, #0
 185 0038 FFF7FEFF 		bl	sys_timeout
 186 003c 4FF47A70 		mov	r0, #1000
 187 0040 0949     		ldr	r1, .L37+20
 188 0042 0022     		movs	r2, #0
 189 0044 FFF7FEFF 		bl	sys_timeout
 190 0048 FFF7FEFF 		bl	sys_now
 191 004c 074B     		ldr	r3, .L37+24
 192 004e 1860     		str	r0, [r3]
 193 0050 08BD     		pop	{r3, pc}
 194              	.L38:
 195 0052 00BF     		.align	2
 196              	.L37:
 197 0054 00000000 		.word	ip_reass_timer
 198 0058 00000000 		.word	arp_timer
 199 005c 00000000 		.word	dhcp_timer_coarse
 200 0060 00000000 		.word	dhcp_timer_fine
 201 0064 00000000 		.word	igmp_timer
 202 0068 00000000 		.word	dns_timer
 203 006c 00000000 		.word	.LANCHOR2
 204              		.size	sys_timeouts_init, .-sys_timeouts_init
 205              		.section	.text.dns_timer,"ax",%progbits
 206              		.align	2
 207              		.thumb
 208              		.thumb_func
 209              		.type	dns_timer, %function
 210              	dns_timer:
 211              		@ args = 0, pretend = 0, frame = 0
 212              		@ frame_needed = 0, uses_anonymous_args = 0
 213 0000 08B5     		push	{r3, lr}
 214 0002 FFF7FEFF 		bl	dns_tmr
 215 0006 BDE80840 		pop	{r3, lr}
 216 000a 4FF47A70 		mov	r0, #1000
 217 000e 0249     		ldr	r1, .L40
 218 0010 0022     		movs	r2, #0
 219 0012 FFF7FEBF 		b	sys_timeout
 220              	.L41:
 221 0016 00BF     		.align	2
 222              	.L40:
 223 0018 00000000 		.word	dns_timer
 224              		.size	dns_timer, .-dns_timer
 225              		.section	.text.igmp_timer,"ax",%progbits
 226              		.align	2
 227              		.thumb
 228              		.thumb_func
ARM GAS  C:\Users\George\AppData\Local\Temp\ccrb7Ei9.s 			page 5


 229              		.type	igmp_timer, %function
 230              	igmp_timer:
 231              		@ args = 0, pretend = 0, frame = 0
 232              		@ frame_needed = 0, uses_anonymous_args = 0
 233 0000 08B5     		push	{r3, lr}
 234 0002 FFF7FEFF 		bl	igmp_tmr
 235 0006 BDE80840 		pop	{r3, lr}
 236 000a 6420     		movs	r0, #100
 237 000c 0149     		ldr	r1, .L43
 238 000e 0022     		movs	r2, #0
 239 0010 FFF7FEBF 		b	sys_timeout
 240              	.L44:
 241              		.align	2
 242              	.L43:
 243 0014 00000000 		.word	igmp_timer
 244              		.size	igmp_timer, .-igmp_timer
 245              		.section	.text.dhcp_timer_fine,"ax",%progbits
 246              		.align	2
 247              		.thumb
 248              		.thumb_func
 249              		.type	dhcp_timer_fine, %function
 250              	dhcp_timer_fine:
 251              		@ args = 0, pretend = 0, frame = 0
 252              		@ frame_needed = 0, uses_anonymous_args = 0
 253 0000 08B5     		push	{r3, lr}
 254 0002 FFF7FEFF 		bl	dhcp_fine_tmr
 255 0006 BDE80840 		pop	{r3, lr}
 256 000a 4FF4FA70 		mov	r0, #500
 257 000e 0249     		ldr	r1, .L46
 258 0010 0022     		movs	r2, #0
 259 0012 FFF7FEBF 		b	sys_timeout
 260              	.L47:
 261 0016 00BF     		.align	2
 262              	.L46:
 263 0018 00000000 		.word	dhcp_timer_fine
 264              		.size	dhcp_timer_fine, .-dhcp_timer_fine
 265              		.section	.text.dhcp_timer_coarse,"ax",%progbits
 266              		.align	2
 267              		.thumb
 268              		.thumb_func
 269              		.type	dhcp_timer_coarse, %function
 270              	dhcp_timer_coarse:
 271              		@ args = 0, pretend = 0, frame = 0
 272              		@ frame_needed = 0, uses_anonymous_args = 0
 273 0000 08B5     		push	{r3, lr}
 274 0002 FFF7FEFF 		bl	dhcp_coarse_tmr
 275 0006 BDE80840 		pop	{r3, lr}
 276 000a 4EF66020 		movw	r0, #60000
 277 000e 0249     		ldr	r1, .L49
 278 0010 0022     		movs	r2, #0
 279 0012 FFF7FEBF 		b	sys_timeout
 280              	.L50:
 281 0016 00BF     		.align	2
 282              	.L49:
 283 0018 00000000 		.word	dhcp_timer_coarse
 284              		.size	dhcp_timer_coarse, .-dhcp_timer_coarse
 285              		.section	.text.arp_timer,"ax",%progbits
ARM GAS  C:\Users\George\AppData\Local\Temp\ccrb7Ei9.s 			page 6


 286              		.align	2
 287              		.thumb
 288              		.thumb_func
 289              		.type	arp_timer, %function
 290              	arp_timer:
 291              		@ args = 0, pretend = 0, frame = 0
 292              		@ frame_needed = 0, uses_anonymous_args = 0
 293 0000 08B5     		push	{r3, lr}
 294 0002 FFF7FEFF 		bl	etharp_tmr
 295 0006 BDE80840 		pop	{r3, lr}
 296 000a 41F28830 		movw	r0, #5000
 297 000e 0249     		ldr	r1, .L52
 298 0010 0022     		movs	r2, #0
 299 0012 FFF7FEBF 		b	sys_timeout
 300              	.L53:
 301 0016 00BF     		.align	2
 302              	.L52:
 303 0018 00000000 		.word	arp_timer
 304              		.size	arp_timer, .-arp_timer
 305              		.section	.text.ip_reass_timer,"ax",%progbits
 306              		.align	2
 307              		.thumb
 308              		.thumb_func
 309              		.type	ip_reass_timer, %function
 310              	ip_reass_timer:
 311              		@ args = 0, pretend = 0, frame = 0
 312              		@ frame_needed = 0, uses_anonymous_args = 0
 313 0000 08B5     		push	{r3, lr}
 314 0002 FFF7FEFF 		bl	ip_reass_tmr
 315 0006 BDE80840 		pop	{r3, lr}
 316 000a 4FF47A70 		mov	r0, #1000
 317 000e 0249     		ldr	r1, .L55
 318 0010 0022     		movs	r2, #0
 319 0012 FFF7FEBF 		b	sys_timeout
 320              	.L56:
 321 0016 00BF     		.align	2
 322              	.L55:
 323 0018 00000000 		.word	ip_reass_timer
 324              		.size	ip_reass_timer, .-ip_reass_timer
 325              		.section	.text.sys_untimeout,"ax",%progbits
 326              		.align	2
 327              		.global	sys_untimeout
 328              		.thumb
 329              		.thumb_func
 330              		.type	sys_untimeout, %function
 331              	sys_untimeout:
 332              		@ args = 0, pretend = 0, frame = 0
 333              		@ frame_needed = 0, uses_anonymous_args = 0
 334              		@ link register save eliminated.
 335 0000 30B4     		push	{r4, r5}
 336 0002 104D     		ldr	r5, .L74
 337 0004 2B68     		ldr	r3, [r5]
 338 0006 CBB1     		cbz	r3, .L57
 339 0008 0024     		movs	r4, #0
 340 000a 03E0     		b	.L63
 341              	.L59:
 342 000c 1A68     		ldr	r2, [r3]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccrb7Ei9.s 			page 7


 343 000e 1C46     		mov	r4, r3
 344 0010 A2B1     		cbz	r2, .L57
 345 0012 1346     		mov	r3, r2
 346              	.L63:
 347 0014 9A68     		ldr	r2, [r3, #8]
 348 0016 8242     		cmp	r2, r0
 349 0018 F8D1     		bne	.L59
 350 001a DA68     		ldr	r2, [r3, #12]
 351 001c 8A42     		cmp	r2, r1
 352 001e F5D1     		bne	.L59
 353 0020 1A68     		ldr	r2, [r3]
 354 0022 6CB1     		cbz	r4, .L73
 355 0024 2260     		str	r2, [r4]
 356 0026 1A68     		ldr	r2, [r3]
 357              	.L61:
 358 0028 1AB1     		cbz	r2, .L62
 359 002a 5068     		ldr	r0, [r2, #4]
 360 002c 5968     		ldr	r1, [r3, #4]
 361 002e 0144     		add	r1, r1, r0
 362 0030 5160     		str	r1, [r2, #4]
 363              	.L62:
 364 0032 1946     		mov	r1, r3
 365 0034 0720     		movs	r0, #7
 366 0036 30BC     		pop	{r4, r5}
 367 0038 FFF7FEBF 		b	memp_free
 368              	.L57:
 369 003c 30BC     		pop	{r4, r5}
 370 003e 7047     		bx	lr
 371              	.L73:
 372 0040 2A60     		str	r2, [r5]
 373 0042 F1E7     		b	.L61
 374              	.L75:
 375              		.align	2
 376              	.L74:
 377 0044 00000000 		.word	.LANCHOR0
 378              		.size	sys_untimeout, .-sys_untimeout
 379              		.section	.text.sys_check_timeouts,"ax",%progbits
 380              		.align	2
 381              		.global	sys_check_timeouts
 382              		.thumb
 383              		.thumb_func
 384              		.type	sys_check_timeouts, %function
 385              	sys_check_timeouts:
 386              		@ args = 0, pretend = 0, frame = 0
 387              		@ frame_needed = 0, uses_anonymous_args = 0
 388 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 389 0004 FFF7FEFF 		bl	sys_now
 390 0008 0E4E     		ldr	r6, .L87
 391 000a 8046     		mov	r8, r0
 392 000c 3368     		ldr	r3, [r6]
 393 000e BBB1     		cbz	r3, .L76
 394 0010 DFF83490 		ldr	r9, .L87+4
 395 0014 D9F80040 		ldr	r4, [r9]
 396 0018 041B     		subs	r4, r0, r4
 397 001a 0DE0     		b	.L79
 398              	.L86:
 399 001c 1F68     		ldr	r7, [r3]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccrb7Ei9.s 			page 8


 400 001e 9D68     		ldr	r5, [r3, #8]
 401 0020 3760     		str	r7, [r6]
 402 0022 DF68     		ldr	r7, [r3, #12]
 403 0024 0720     		movs	r0, #7
 404 0026 C9F80080 		str	r8, [r9]
 405 002a A41A     		subs	r4, r4, r2
 406 002c FFF7FEFF 		bl	memp_free
 407 0030 3846     		mov	r0, r7
 408 0032 05B1     		cbz	r5, .L78
 409 0034 A847     		blx	r5
 410              	.L78:
 411 0036 3368     		ldr	r3, [r6]
 412              	.L79:
 413 0038 5A68     		ldr	r2, [r3, #4]
 414 003a 1946     		mov	r1, r3
 415 003c 9442     		cmp	r4, r2
 416 003e EDD2     		bcs	.L86
 417              	.L76:
 418 0040 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 419              	.L88:
 420              		.align	2
 421              	.L87:
 422 0044 00000000 		.word	.LANCHOR0
 423 0048 00000000 		.word	.LANCHOR2
 424              		.size	sys_check_timeouts, .-sys_check_timeouts
 425              		.section	.text.sys_restart_timeouts,"ax",%progbits
 426              		.align	2
 427              		.global	sys_restart_timeouts
 428              		.thumb
 429              		.thumb_func
 430              		.type	sys_restart_timeouts, %function
 431              	sys_restart_timeouts:
 432              		@ args = 0, pretend = 0, frame = 0
 433              		@ frame_needed = 0, uses_anonymous_args = 0
 434 0000 08B5     		push	{r3, lr}
 435 0002 FFF7FEFF 		bl	sys_now
 436 0006 014B     		ldr	r3, .L90
 437 0008 1860     		str	r0, [r3]
 438 000a 08BD     		pop	{r3, pc}
 439              	.L91:
 440              		.align	2
 441              	.L90:
 442 000c 00000000 		.word	.LANCHOR2
 443              		.size	sys_restart_timeouts, .-sys_restart_timeouts
 444              		.section	.bss.tcpip_tcp_timer_active,"aw",%nobits
 445              		.align	2
 446              		.set	.LANCHOR1,. + 0
 447              		.type	tcpip_tcp_timer_active, %object
 448              		.size	tcpip_tcp_timer_active, 4
 449              	tcpip_tcp_timer_active:
 450 0000 00000000 		.space	4
 451              		.section	.bss.timeouts_last_time,"aw",%nobits
 452              		.align	2
 453              		.set	.LANCHOR2,. + 0
 454              		.type	timeouts_last_time, %object
 455              		.size	timeouts_last_time, 4
 456              	timeouts_last_time:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccrb7Ei9.s 			page 9


 457 0000 00000000 		.space	4
 458              		.section	.bss.next_timeout,"aw",%nobits
 459              		.align	2
 460              		.set	.LANCHOR0,. + 0
 461              		.type	next_timeout, %object
 462              		.size	next_timeout, 4
 463              	next_timeout:
 464 0000 00000000 		.space	4
 465              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
