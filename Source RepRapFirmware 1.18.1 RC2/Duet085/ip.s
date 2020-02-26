ARM GAS  C:\Users\George\AppData\Local\Temp\ccSWcGBL.s 			page 1


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
  14              		.file	"ip.c"
  15              		.section	.text.ip_route,"ax",%progbits
  16              		.align	2
  17              		.global	ip_route
  18              		.thumb
  19              		.thumb_func
  20              		.type	ip_route, %function
  21              	ip_route:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 10B4     		push	{r4}
  26 0002 104B     		ldr	r3, .L23
  27              	.L21:
  28 0004 1B68     		ldr	r3, [r3]
  29 0006 6BB1     		cbz	r3, .L2
  30 0008 93F83520 		ldrb	r2, [r3, #53]	@ zero_extendqisi2
  31 000c D107     		lsls	r1, r2, #31
  32 000e F9D5     		bpl	.L21
  33 0010 5C68     		ldr	r4, [r3, #4]
  34 0012 0168     		ldr	r1, [r0]
  35 0014 9A68     		ldr	r2, [r3, #8]
  36 0016 6140     		eors	r1, r1, r4
  37 0018 1142     		tst	r1, r2
  38 001a F3D1     		bne	.L21
  39              	.L8:
  40 001c 1846     		mov	r0, r3
  41              	.L4:
  42 001e 5DF8044B 		ldr	r4, [sp], #4
  43 0022 7047     		bx	lr
  44              	.L2:
  45 0024 084B     		ldr	r3, .L23+4
  46 0026 1B68     		ldr	r3, [r3]
  47 0028 1BB1     		cbz	r3, .L6
  48 002a 93F83520 		ldrb	r2, [r3, #53]	@ zero_extendqisi2
  49 002e D207     		lsls	r2, r2, #31
  50 0030 F4D4     		bmi	.L8
  51              	.L6:
  52 0032 064B     		ldr	r3, .L23+8
  53 0034 0020     		movs	r0, #0
  54 0036 B3F85620 		ldrh	r2, [r3, #86]
  55 003a 0132     		adds	r2, r2, #1
  56 003c A3F85620 		strh	r2, [r3, #86]	@ movhi
  57 0040 EDE7     		b	.L4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccSWcGBL.s 			page 2


  58              	.L24:
  59 0042 00BF     		.align	2
  60              	.L23:
  61 0044 00000000 		.word	netif_list
  62 0048 00000000 		.word	netif_default
  63 004c 00000000 		.word	lwip_stats
  64              		.size	ip_route, .-ip_route
  65              		.section	.text.ip_input,"ax",%progbits
  66              		.align	2
  67              		.global	ip_input
  68              		.thumb
  69              		.thumb_func
  70              		.type	ip_input, %function
  71              	ip_input:
  72              		@ args = 0, pretend = 0, frame = 0
  73              		@ frame_needed = 0, uses_anonymous_args = 0
  74 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
  75 0004 894D     		ldr	r5, .L82
  76 0006 4768     		ldr	r7, [r0, #4]
  77 0008 B5F84A30 		ldrh	r3, [r5, #74]
  78 000c 0646     		mov	r6, r0
  79 000e 0133     		adds	r3, r3, #1
  80 0010 A5F84A30 		strh	r3, [r5, #74]	@ movhi
  81 0014 97F80080 		ldrb	r8, [r7]	@ zero_extendqisi2
  82 0018 8B46     		mov	fp, r1
  83 001a 4FEA1813 		lsr	r3, r8, #4
  84 001e 042B     		cmp	r3, #4
  85 0020 0ED0     		beq	.L26
  86 0022 FFF7FEFF 		bl	pbuf_free
  87 0026 B5F85C20 		ldrh	r2, [r5, #92]
  88 002a B5F84E30 		ldrh	r3, [r5, #78]
  89 002e 0132     		adds	r2, r2, #1
  90 0030 0133     		adds	r3, r3, #1
  91 0032 A5F85C20 		strh	r2, [r5, #92]	@ movhi
  92 0036 A5F84E30 		strh	r3, [r5, #78]	@ movhi
  93              	.L68:
  94 003a 0020     		movs	r0, #0
  95 003c BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
  96              	.L26:
  97 0040 7888     		ldrh	r0, [r7, #2]	@ unaligned
  98 0042 FFF7FEFF 		bl	lwip_ntohs
  99 0046 08F00F08 		and	r8, r8, #15
 100 004a 7389     		ldrh	r3, [r6, #10]
 101 004c 4FEA8808 		lsl	r8, r8, #2
 102 0050 4345     		cmp	r3, r8
 103 0052 0446     		mov	r4, r0
 104 0054 02D3     		bcc	.L28
 105 0056 3389     		ldrh	r3, [r6, #8]
 106 0058 8342     		cmp	r3, r0
 107 005a 0FD2     		bcs	.L29
 108              	.L28:
 109 005c 3046     		mov	r0, r6
 110 005e FFF7FEFF 		bl	pbuf_free
 111 0062 B5F85220 		ldrh	r2, [r5, #82]
 112 0066 B5F84E30 		ldrh	r3, [r5, #78]
 113 006a 0132     		adds	r2, r2, #1
 114 006c 0133     		adds	r3, r3, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccSWcGBL.s 			page 3


 115 006e A5F85220 		strh	r2, [r5, #82]	@ movhi
 116 0072 A5F84E30 		strh	r3, [r5, #78]	@ movhi
 117 0076 0020     		movs	r0, #0
 118 0078 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 119              	.L29:
 120 007c 3846     		mov	r0, r7
 121 007e 4146     		mov	r1, r8
 122 0080 FFF7FEFF 		bl	inet_chksum
 123 0084 0028     		cmp	r0, #0
 124 0086 40F0BF80 		bne	.L76
 125 008a 2146     		mov	r1, r4
 126 008c 3046     		mov	r0, r6
 127 008e FFF7FEFF 		bl	pbuf_realloc
 128 0092 3B69     		ldr	r3, [r7, #16]	@ unaligned
 129 0094 6649     		ldr	r1, .L82+4
 130 0096 0B60     		str	r3, [r1]
 131 0098 FA68     		ldr	r2, [r7, #12]	@ unaligned
 132 009a 03F0F003 		and	r3, r3, #240
 133 009e 6549     		ldr	r1, .L82+8
 134 00a0 E02B     		cmp	r3, #224
 135 00a2 0A60     		str	r2, [r1]
 136 00a4 1ED0     		beq	.L77
 137 00a6 DFF89491 		ldr	r9, .L82+16
 138 00aa 5C46     		mov	r4, fp
 139 00ac 4FF0010A 		mov	r10, #1
 140              	.L40:
 141 00b0 94F83530 		ldrb	r3, [r4, #53]	@ zero_extendqisi2
 142 00b4 DB07     		lsls	r3, r3, #31
 143 00b6 09D5     		bpl	.L37
 144 00b8 6368     		ldr	r3, [r4, #4]
 145 00ba 3BB1     		cbz	r3, .L37
 146 00bc 5C4A     		ldr	r2, .L82+4
 147 00be 1068     		ldr	r0, [r2]
 148 00c0 8342     		cmp	r3, r0
 149 00c2 19D0     		beq	.L42
 150 00c4 2146     		mov	r1, r4
 151 00c6 FFF7FEFF 		bl	ip4_addr_isbroadcast
 152 00ca A8B9     		cbnz	r0, .L42
 153              	.L37:
 154 00cc BAF1000F 		cmp	r10, #0
 155 00d0 32D0     		beq	.L78
 156 00d2 D9F80040 		ldr	r4, [r9]
 157              	.L38:
 158 00d6 5C45     		cmp	r4, fp
 159 00d8 08BF     		it	eq
 160 00da 2468     		ldreq	r4, [r4]
 161 00dc 74B3     		cbz	r4, .L32
 162 00de 4FF0000A 		mov	r10, #0
 163 00e2 E5E7     		b	.L40
 164              	.L77:
 165 00e4 9BF93530 		ldrsb	r3, [fp, #53]
 166 00e8 002B     		cmp	r3, #0
 167 00ea 27DA     		bge	.L32
 168 00ec 5846     		mov	r0, fp
 169 00ee 5049     		ldr	r1, .L82+4
 170 00f0 FFF7FEFF 		bl	igmp_lookfor_group
 171 00f4 10B3     		cbz	r0, .L32
ARM GAS  C:\Users\George\AppData\Local\Temp\ccSWcGBL.s 			page 4


 172 00f6 5C46     		mov	r4, fp
 173              	.L42:
 174 00f8 4E4B     		ldr	r3, .L82+8
 175 00fa 1868     		ldr	r0, [r3]
 176 00fc 9846     		mov	r8, r3
 177 00fe 10BB     		cbnz	r0, .L79
 178              	.L41:
 179 0100 002C     		cmp	r4, #0
 180 0102 00F08F80 		beq	.L80
 181 0106 FB88     		ldrh	r3, [r7, #6]	@ unaligned
 182 0108 23F0C003 		bic	r3, r3, #192
 183 010c 73BB     		cbnz	r3, .L81
 184              	.L45:
 185 010e 7B7A     		ldrb	r3, [r7, #9]	@ zero_extendqisi2
 186 0110 DFF82C81 		ldr	r8, .L82+20
 187 0114 484C     		ldr	r4, .L82+12
 188 0116 013B     		subs	r3, r3, #1
 189 0118 C8F800B0 		str	fp, [r8]
 190 011c 2760     		str	r7, [r4]
 191 011e 102B     		cmp	r3, #16
 192 0120 52D8     		bhi	.L46
 193 0122 DFE803F0 		tbb	[pc, r3]
 194              	.L48:
 195 0126 4C       		.byte	(.L47-.L48)/2
 196 0127 46       		.byte	(.L49-.L48)/2
 197 0128 51       		.byte	(.L46-.L48)/2
 198 0129 51       		.byte	(.L46-.L48)/2
 199 012a 51       		.byte	(.L46-.L48)/2
 200 012b 41       		.byte	(.L50-.L48)/2
 201 012c 51       		.byte	(.L46-.L48)/2
 202 012d 51       		.byte	(.L46-.L48)/2
 203 012e 51       		.byte	(.L46-.L48)/2
 204 012f 51       		.byte	(.L46-.L48)/2
 205 0130 51       		.byte	(.L46-.L48)/2
 206 0131 51       		.byte	(.L46-.L48)/2
 207 0132 51       		.byte	(.L46-.L48)/2
 208 0133 51       		.byte	(.L46-.L48)/2
 209 0134 51       		.byte	(.L46-.L48)/2
 210 0135 51       		.byte	(.L46-.L48)/2
 211 0136 34       		.byte	(.L51-.L48)/2
 212 0137 00       		.align	1
 213              	.L78:
 214 0138 2468     		ldr	r4, [r4]
 215 013a CCE7     		b	.L38
 216              	.L32:
 217 013c 7B7A     		ldrb	r3, [r7, #9]	@ zero_extendqisi2
 218 013e 112B     		cmp	r3, #17
 219 0140 1DD0     		beq	.L54
 220              	.L75:
 221 0142 0024     		movs	r4, #0
 222 0144 D8E7     		b	.L42
 223              	.L79:
 224 0146 5946     		mov	r1, fp
 225 0148 FFF7FEFF 		bl	ip4_addr_isbroadcast
 226 014c 28B9     		cbnz	r0, .L43
 227 014e D8F80030 		ldr	r3, [r8]
 228 0152 03F0F003 		and	r3, r3, #240
ARM GAS  C:\Users\George\AppData\Local\Temp\ccSWcGBL.s 			page 5


 229 0156 E02B     		cmp	r3, #224
 230 0158 D2D1     		bne	.L41
 231              	.L43:
 232 015a 3046     		mov	r0, r6
 233 015c FFF7FEFF 		bl	pbuf_free
 234 0160 B5F84E30 		ldrh	r3, [r5, #78]
 235 0164 0133     		adds	r3, r3, #1
 236 0166 A5F84E30 		strh	r3, [r5, #78]	@ movhi
 237 016a 66E7     		b	.L68
 238              	.L81:
 239 016c 3046     		mov	r0, r6
 240 016e FFF7FEFF 		bl	ip_reass
 241 0172 0646     		mov	r6, r0
 242 0174 0028     		cmp	r0, #0
 243 0176 3FF460AF 		beq	.L68
 244 017a 4768     		ldr	r7, [r0, #4]
 245 017c C7E7     		b	.L45
 246              	.L54:
 247 017e B844     		add	r8, r8, r7
 248 0180 B8F80230 		ldrh	r3, [r8, #2]	@ unaligned
 249 0184 B3F5884F 		cmp	r3, #17408
 250 0188 DBD1     		bne	.L75
 251 018a 5C46     		mov	r4, fp
 252 018c B8E7     		b	.L41
 253              	.L51:
 254 018e 3046     		mov	r0, r6
 255 0190 5946     		mov	r1, fp
 256 0192 FFF7FEFF 		bl	udp_input
 257              	.L52:
 258 0196 2749     		ldr	r1, .L82+8
 259 0198 254A     		ldr	r2, .L82+4
 260 019a 0023     		movs	r3, #0
 261 019c C8F80030 		str	r3, [r8]
 262 01a0 2360     		str	r3, [r4]
 263 01a2 0B60     		str	r3, [r1]
 264 01a4 1360     		str	r3, [r2]
 265 01a6 48E7     		b	.L68
 266              	.L50:
 267 01a8 3046     		mov	r0, r6
 268 01aa 5946     		mov	r1, fp
 269 01ac FFF7FEFF 		bl	tcp_input
 270 01b0 F1E7     		b	.L52
 271              	.L49:
 272 01b2 3046     		mov	r0, r6
 273 01b4 5946     		mov	r1, fp
 274 01b6 1E4A     		ldr	r2, .L82+4
 275 01b8 FFF7FEFF 		bl	igmp_input
 276 01bc EBE7     		b	.L52
 277              	.L47:
 278 01be 3046     		mov	r0, r6
 279 01c0 5946     		mov	r1, fp
 280 01c2 FFF7FEFF 		bl	icmp_input
 281 01c6 E6E7     		b	.L52
 282              	.L46:
 283 01c8 194A     		ldr	r2, .L82+4
 284 01ca 5946     		mov	r1, fp
 285 01cc 1068     		ldr	r0, [r2]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccSWcGBL.s 			page 6


 286 01ce 9346     		mov	fp, r2
 287 01d0 FFF7FEFF 		bl	ip4_addr_isbroadcast
 288 01d4 50B9     		cbnz	r0, .L53
 289 01d6 DBF80030 		ldr	r3, [fp]
 290 01da 03F0F003 		and	r3, r3, #240
 291 01de E02B     		cmp	r3, #224
 292 01e0 04D0     		beq	.L53
 293 01e2 7760     		str	r7, [r6, #4]
 294 01e4 3046     		mov	r0, r6
 295 01e6 0221     		movs	r1, #2
 296 01e8 FFF7FEFF 		bl	icmp_dest_unreach
 297              	.L53:
 298 01ec 3046     		mov	r0, r6
 299 01ee FFF7FEFF 		bl	pbuf_free
 300 01f2 B5F85820 		ldrh	r2, [r5, #88]
 301 01f6 B5F84E30 		ldrh	r3, [r5, #78]
 302 01fa 0132     		adds	r2, r2, #1
 303 01fc 0133     		adds	r3, r3, #1
 304 01fe A5F85820 		strh	r2, [r5, #88]	@ movhi
 305 0202 A5F84E30 		strh	r3, [r5, #78]	@ movhi
 306 0206 C6E7     		b	.L52
 307              	.L76:
 308 0208 3046     		mov	r0, r6
 309 020a FFF7FEFF 		bl	pbuf_free
 310 020e B5F85020 		ldrh	r2, [r5, #80]
 311 0212 B5F84E30 		ldrh	r3, [r5, #78]
 312 0216 0132     		adds	r2, r2, #1
 313 0218 0133     		adds	r3, r3, #1
 314 021a A5F85020 		strh	r2, [r5, #80]	@ movhi
 315 021e A5F84E30 		strh	r3, [r5, #78]	@ movhi
 316 0222 0AE7     		b	.L68
 317              	.L80:
 318 0224 3046     		mov	r0, r6
 319 0226 FFF7FEFF 		bl	pbuf_free
 320 022a 06E7     		b	.L68
 321              	.L83:
 322              		.align	2
 323              	.L82:
 324 022c 00000000 		.word	lwip_stats
 325 0230 00000000 		.word	current_iphdr_dest
 326 0234 00000000 		.word	current_iphdr_src
 327 0238 00000000 		.word	current_header
 328 023c 00000000 		.word	netif_list
 329 0240 00000000 		.word	current_netif
 330              		.size	ip_input, .-ip_input
 331              		.section	.text.ip_output_if_opt,"ax",%progbits
 332              		.align	2
 333              		.global	ip_output_if_opt
 334              		.thumb
 335              		.thumb_func
 336              		.type	ip_output_if_opt, %function
 337              	ip_output_if_opt:
 338              		@ args = 20, pretend = 0, frame = 32
 339              		@ frame_needed = 0, uses_anonymous_args = 0
 340 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 341 0004 89B0     		sub	sp, sp, #36
 342 0006 1546     		mov	r5, r2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccSWcGBL.s 			page 7


 343 0008 0591     		str	r1, [sp, #20]
 344 000a 1F46     		mov	r7, r3
 345 000c 0446     		mov	r4, r0
 346 000e 9DF84890 		ldrb	r9, [sp, #72]	@ zero_extendqisi2
 347 0012 9DF84C80 		ldrb	r8, [sp, #76]	@ zero_extendqisi2
 348 0016 BDF85860 		ldrh	r6, [sp, #88]
 349 001a 002A     		cmp	r2, #0
 350 001c 00F0A880 		beq	.L85
 351 0020 002E     		cmp	r6, #0
 352 0022 76D1     		bne	.L107
 353 0024 4FF0140B 		mov	fp, #20
 354              	.L86:
 355 0028 2046     		mov	r0, r4
 356 002a 1421     		movs	r1, #20
 357 002c FFF7FEFF 		bl	pbuf_header
 358 0030 0246     		mov	r2, r0
 359 0032 0028     		cmp	r0, #0
 360 0034 40F0AB80 		bne	.L106
 361 0038 D4F804A0 		ldr	r10, [r4, #4]
 362 003c 4FEA9B0E 		lsr	lr, fp, #2
 363 0040 8AF80870 		strb	r7, [r10, #8]
 364 0044 8AF80980 		strb	r8, [r10, #9]
 365 0048 4EF0400E 		orr	lr, lr, #64
 366 004c 2968     		ldr	r1, [r5]
 367 004e 5FFA8EFE 		uxtb	lr, lr
 368 0052 8AF800E0 		strb	lr, [r10]
 369 0056 8AF80190 		strb	r9, [r10, #1]
 370 005a CAF81010 		str	r1, [r10, #16]	@ unaligned
 371 005e 2089     		ldrh	r0, [r4, #8]
 372 0060 4EEA0923 		orr	r3, lr, r9, lsl #8
 373 0064 1FFA81FC 		uxth	ip, r1
 374 0068 090C     		lsrs	r1, r1, #16
 375 006a 0291     		str	r1, [sp, #8]
 376 006c 0193     		str	r3, [sp, #4]
 377 006e CDF80CC0 		str	ip, [sp, #12]
 378 0072 0492     		str	r2, [sp, #16]
 379 0074 FFF7FEFF 		bl	lwip_htons
 380 0078 DFF83CB1 		ldr	fp, .L110+4
 381 007c 049A     		ldr	r2, [sp, #16]
 382 007e 8146     		mov	r9, r0
 383 0080 8AF80620 		strb	r2, [r10, #6]
 384 0084 8AF80720 		strb	r2, [r10, #7]
 385 0088 AAF80200 		strh	r0, [r10, #2]	@ unaligned
 386 008c BBF80000 		ldrh	r0, [fp]
 387 0090 FFF7FEFF 		bl	lwip_htons
 388 0094 BBF80020 		ldrh	r2, [fp]
 389 0098 47EA0827 		orr	r7, r7, r8, lsl #8
 390 009c 0132     		adds	r2, r2, #1
 391 009e ABF80020 		strh	r2, [fp]	@ movhi
 392 00a2 059A     		ldr	r2, [sp, #20]
 393 00a4 AAF80400 		strh	r0, [r10, #4]	@ unaligned
 394 00a8 0299     		ldr	r1, [sp, #8]
 395 00aa 019B     		ldr	r3, [sp, #4]
 396 00ac DDF80CC0 		ldr	ip, [sp, #12]
 397 00b0 002A     		cmp	r2, #0
 398 00b2 56D0     		beq	.L92
 399 00b4 1268     		ldr	r2, [r2]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccSWcGBL.s 			page 8


 400 00b6 002A     		cmp	r2, #0
 401 00b8 53D0     		beq	.L92
 402 00ba CAF80C20 		str	r2, [r10, #12]	@ unaligned
 403              	.L94:
 404 00be 6144     		add	r1, r1, ip
 405 00c0 0F44     		add	r7, r7, r1
 406 00c2 3E44     		add	r6, r6, r7
 407 00c4 1E44     		add	r6, r6, r3
 408 00c6 B144     		add	r9, r9, r6
 409 00c8 91B2     		uxth	r1, r2
 410 00ca 4844     		add	r0, r0, r9
 411 00cc 0844     		add	r0, r0, r1
 412 00ce 00EB1242 		add	r2, r0, r2, lsr #16
 413 00d2 91B2     		uxth	r1, r2
 414 00d4 01EB1242 		add	r2, r1, r2, lsr #16
 415 00d8 02EB1242 		add	r2, r2, r2, lsr #16
 416 00dc D243     		mvns	r2, r2
 417 00de AAF80A20 		strh	r2, [r10, #10]	@ unaligned
 418              	.L95:
 419 00e2 344B     		ldr	r3, .L110
 420 00e4 1498     		ldr	r0, [sp, #80]
 421 00e6 B3F84810 		ldrh	r1, [r3, #72]
 422 00ea 828D     		ldrh	r2, [r0, #44]
 423 00ec 0131     		adds	r1, r1, #1
 424 00ee A3F84810 		strh	r1, [r3, #72]	@ movhi
 425 00f2 12B1     		cbz	r2, .L96
 426 00f4 2389     		ldrh	r3, [r4, #8]
 427 00f6 9342     		cmp	r3, r2
 428 00f8 40D8     		bhi	.L108
 429              	.L96:
 430 00fa DDF850E0 		ldr	lr, [sp, #80]
 431 00fe 2146     		mov	r1, r4
 432 0100 2A46     		mov	r2, r5
 433 0102 DEF81430 		ldr	r3, [lr, #20]
 434 0106 7046     		mov	r0, lr
 435 0108 9847     		blx	r3
 436 010a 40B2     		sxtb	r0, r0
 437 010c 09B0     		add	sp, sp, #36
 438              		@ sp needed
 439 010e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 440              	.L107:
 441 0112 F31C     		adds	r3, r6, #3
 442 0114 23F00303 		bic	r3, r3, #3
 443 0118 1FFA83FA 		uxth	r10, r3
 444 011c 0FFA8AF1 		sxth	r1, r10
 445 0120 FFF7FEFF 		bl	pbuf_header
 446 0124 0AF1140B 		add	fp, r10, #20
 447 0128 1FFA8BFB 		uxth	fp, fp
 448 012c 0346     		mov	r3, r0
 449 012e 70BB     		cbnz	r0, .L106
 450 0130 6068     		ldr	r0, [r4, #4]
 451 0132 1599     		ldr	r1, [sp, #84]
 452 0134 3246     		mov	r2, r6
 453 0136 0193     		str	r3, [sp, #4]
 454 0138 FFF7FEFF 		bl	memcpy
 455 013c 5645     		cmp	r6, r10
 456 013e 019B     		ldr	r3, [sp, #4]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccSWcGBL.s 			page 9


 457 0140 30D3     		bcc	.L109
 458              	.L89:
 459 0142 4FEA5A06 		lsr	r6, r10, #1
 460 0146 BAF1000F 		cmp	r10, #0
 461 014a 3FF46DAF 		beq	.L86
 462 014e 0023     		movs	r3, #0
 463 0150 6068     		ldr	r0, [r4, #4]
 464 0152 7100     		lsls	r1, r6, #1
 465 0154 1E46     		mov	r6, r3
 466              	.L90:
 467 0156 C25A     		ldrh	r2, [r0, r3]
 468 0158 0233     		adds	r3, r3, #2
 469 015a 8B42     		cmp	r3, r1
 470 015c 1644     		add	r6, r6, r2
 471 015e FAD1     		bne	.L90
 472 0160 62E7     		b	.L86
 473              	.L92:
 474 0162 DDF850E0 		ldr	lr, [sp, #80]
 475 0166 DEF80420 		ldr	r2, [lr, #4]
 476 016a CAF80C20 		str	r2, [r10, #12]	@ unaligned
 477 016e A6E7     		b	.L94
 478              	.L85:
 479 0170 4368     		ldr	r3, [r0, #4]
 480 0172 08AD     		add	r5, sp, #32
 481 0174 1B69     		ldr	r3, [r3, #16]	@ unaligned
 482 0176 45F8043D 		str	r3, [r5, #-4]!
 483 017a B2E7     		b	.L95
 484              	.L108:
 485 017c 2046     		mov	r0, r4
 486 017e 1499     		ldr	r1, [sp, #80]
 487 0180 2A46     		mov	r2, r5
 488 0182 FFF7FEFF 		bl	ip_frag
 489 0186 40B2     		sxtb	r0, r0
 490 0188 09B0     		add	sp, sp, #36
 491              		@ sp needed
 492 018a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 493              	.L106:
 494 018e 094B     		ldr	r3, .L110
 495 0190 FE20     		movs	r0, #254
 496 0192 B3F85C20 		ldrh	r2, [r3, #92]
 497 0196 40B2     		sxtb	r0, r0
 498 0198 0132     		adds	r2, r2, #1
 499 019a A3F85C20 		strh	r2, [r3, #92]	@ movhi
 500 019e 09B0     		add	sp, sp, #36
 501              		@ sp needed
 502 01a0 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 503              	.L109:
 504 01a4 6068     		ldr	r0, [r4, #4]
 505 01a6 1946     		mov	r1, r3
 506 01a8 3044     		add	r0, r0, r6
 507 01aa C6EB0A02 		rsb	r2, r6, r10
 508 01ae FFF7FEFF 		bl	memset
 509 01b2 C6E7     		b	.L89
 510              	.L111:
 511              		.align	2
 512              	.L110:
 513 01b4 00000000 		.word	lwip_stats
ARM GAS  C:\Users\George\AppData\Local\Temp\ccSWcGBL.s 			page 10


 514 01b8 00000000 		.word	.LANCHOR0
 515              		.size	ip_output_if_opt, .-ip_output_if_opt
 516              		.section	.text.ip_output_if,"ax",%progbits
 517              		.align	2
 518              		.global	ip_output_if
 519              		.thumb
 520              		.thumb_func
 521              		.type	ip_output_if, %function
 522              	ip_output_if:
 523              		@ args = 12, pretend = 0, frame = 0
 524              		@ frame_needed = 0, uses_anonymous_args = 0
 525 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 526 0002 87B0     		sub	sp, sp, #28
 527 0004 9DF83070 		ldrb	r7, [sp, #48]	@ zero_extendqisi2
 528 0008 9DF83460 		ldrb	r6, [sp, #52]	@ zero_extendqisi2
 529 000c 0E9D     		ldr	r5, [sp, #56]
 530 000e 0024     		movs	r4, #0
 531 0010 0097     		str	r7, [sp]
 532 0012 0196     		str	r6, [sp, #4]
 533 0014 0295     		str	r5, [sp, #8]
 534 0016 0394     		str	r4, [sp, #12]
 535 0018 0494     		str	r4, [sp, #16]
 536 001a FFF7FEFF 		bl	ip_output_if_opt
 537 001e 07B0     		add	sp, sp, #28
 538              		@ sp needed
 539 0020 F0BD     		pop	{r4, r5, r6, r7, pc}
 540              		.size	ip_output_if, .-ip_output_if
 541 0022 00BF     		.section	.text.ip_output,"ax",%progbits
 542              		.align	2
 543              		.global	ip_output
 544              		.thumb
 545              		.thumb_func
 546              		.type	ip_output, %function
 547              	ip_output:
 548              		@ args = 8, pretend = 0, frame = 0
 549              		@ frame_needed = 0, uses_anonymous_args = 0
 550 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 551 0004 0646     		mov	r6, r0
 552 0006 86B0     		sub	sp, sp, #24
 553 0008 1046     		mov	r0, r2
 554 000a 1446     		mov	r4, r2
 555 000c 8A46     		mov	r10, r1
 556 000e 9946     		mov	r9, r3
 557 0010 9DF83880 		ldrb	r8, [sp, #56]	@ zero_extendqisi2
 558 0014 9DF83C70 		ldrb	r7, [sp, #60]	@ zero_extendqisi2
 559 0018 FFF7FEFF 		bl	ip_route
 560 001c 80B1     		cbz	r0, .L116
 561 001e 0025     		movs	r5, #0
 562 0020 0290     		str	r0, [sp, #8]
 563 0022 CDF80080 		str	r8, [sp]
 564 0026 0197     		str	r7, [sp, #4]
 565 0028 3046     		mov	r0, r6
 566 002a 5146     		mov	r1, r10
 567 002c 2246     		mov	r2, r4
 568 002e 4B46     		mov	r3, r9
 569 0030 0395     		str	r5, [sp, #12]
 570 0032 0495     		str	r5, [sp, #16]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccSWcGBL.s 			page 11


 571 0034 FFF7FEFF 		bl	ip_output_if_opt
 572              	.L115:
 573 0038 40B2     		sxtb	r0, r0
 574 003a 06B0     		add	sp, sp, #24
 575              		@ sp needed
 576 003c BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 577              	.L116:
 578 0040 034B     		ldr	r3, .L117
 579 0042 FC20     		movs	r0, #252
 580 0044 B3F85620 		ldrh	r2, [r3, #86]
 581 0048 0132     		adds	r2, r2, #1
 582 004a A3F85620 		strh	r2, [r3, #86]	@ movhi
 583 004e F3E7     		b	.L115
 584              	.L118:
 585              		.align	2
 586              	.L117:
 587 0050 00000000 		.word	lwip_stats
 588              		.size	ip_output, .-ip_output
 589              		.section	.text.ip_debug_print,"ax",%progbits
 590              		.align	2
 591              		.global	ip_debug_print
 592              		.thumb
 593              		.thumb_func
 594              		.type	ip_debug_print, %function
 595              	ip_debug_print:
 596              		@ args = 0, pretend = 0, frame = 0
 597              		@ frame_needed = 0, uses_anonymous_args = 0
 598              		@ link register save eliminated.
 599 0000 7047     		bx	lr
 600              		.size	ip_debug_print, .-ip_debug_print
 601              		.comm	current_iphdr_dest,4,4
 602              		.comm	current_iphdr_src,4,4
 603              		.comm	current_header,4,4
 604              		.comm	current_netif,4,4
 605 0002 00BF     		.section	.bss.ip_id,"aw",%nobits
 606              		.align	1
 607              		.set	.LANCHOR0,. + 0
 608              		.type	ip_id, %object
 609              		.size	ip_id, 2
 610              	ip_id:
 611 0000 0000     		.space	2
 612              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
