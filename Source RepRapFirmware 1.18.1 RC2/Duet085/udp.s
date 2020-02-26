ARM GAS  C:\Users\George\AppData\Local\Temp\ccxtEF5Z.s 			page 1


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
  14              		.file	"udp.c"
  15              		.section	.text.udp_init,"ax",%progbits
  16              		.align	2
  17              		.global	udp_init
  18              		.thumb
  19              		.thumb_func
  20              		.type	udp_init, %function
  21              	udp_init:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 7047     		bx	lr
  26              		.size	udp_init, .-udp_init
  27 0002 00BF     		.section	.text.udp_input,"ax",%progbits
  28              		.align	2
  29              		.global	udp_input
  30              		.thumb
  31              		.thumb_func
  32              		.type	udp_input, %function
  33              	udp_input:
  34              		@ args = 0, pretend = 0, frame = 16
  35              		@ frame_needed = 0, uses_anonymous_args = 0
  36 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  37 0004 7C4C     		ldr	r4, .L79
  38 0006 D0F80490 		ldr	r9, [r0, #4]
  39 000a B4F89630 		ldrh	r3, [r4, #150]
  40 000e 0289     		ldrh	r2, [r0, #8]
  41 0010 0133     		adds	r3, r3, #1
  42 0012 A4F89630 		strh	r3, [r4, #150]	@ movhi
  43 0016 99F80030 		ldrb	r3, [r9]	@ zero_extendqisi2
  44 001a 87B0     		sub	sp, sp, #28
  45 001c 03F00F03 		and	r3, r3, #15
  46 0020 9D1C     		adds	r5, r3, #2
  47 0022 B2EB850F 		cmp	r2, r5, lsl #2
  48 0026 0646     		mov	r6, r0
  49 0028 8A46     		mov	r10, r1
  50 002a 05DB     		blt	.L4
  51 002c 9900     		lsls	r1, r3, #2
  52 002e 4942     		negs	r1, r1
  53 0030 FFF7FEFF 		bl	pbuf_header
  54 0034 0746     		mov	r7, r0
  55 0036 78B1     		cbz	r0, .L72
  56              	.L4:
  57 0038 B4F89E20 		ldrh	r2, [r4, #158]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxtEF5Z.s 			page 2


  58 003c B4F89A30 		ldrh	r3, [r4, #154]
  59 0040 0132     		adds	r2, r2, #1
  60 0042 3046     		mov	r0, r6
  61 0044 0133     		adds	r3, r3, #1
  62 0046 A4F89E20 		strh	r2, [r4, #158]	@ movhi
  63              	.L69:
  64 004a A4F89A30 		strh	r3, [r4, #154]	@ movhi
  65              	.L70:
  66 004e 07B0     		add	sp, sp, #28
  67              		@ sp needed
  68 0050 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  69 0054 FFF7FEBF 		b	pbuf_free
  70              	.L72:
  71 0058 684B     		ldr	r3, .L79+4
  72 005a 7268     		ldr	r2, [r6, #4]
  73 005c 1868     		ldr	r0, [r3]
  74 005e 5146     		mov	r1, r10
  75 0060 0292     		str	r2, [sp, #8]
  76 0062 FFF7FEFF 		bl	ip4_addr_isbroadcast
  77 0066 029A     		ldr	r2, [sp, #8]
  78 0068 8046     		mov	r8, r0
  79 006a 1088     		ldrh	r0, [r2]	@ unaligned
  80 006c FFF7FEFF 		bl	lwip_ntohs
  81 0070 029B     		ldr	r3, [sp, #8]
  82 0072 8346     		mov	fp, r0
  83 0074 5888     		ldrh	r0, [r3, #2]	@ unaligned
  84 0076 FFF7FEFF 		bl	lwip_ntohs
  85 007a 4428     		cmp	r0, #68
  86 007c 0546     		mov	r5, r0
  87 007e 40D0     		beq	.L73
  88 0080 5F48     		ldr	r0, .L79+8
  89 0082 0068     		ldr	r0, [r0]
  90 0084 0490     		str	r0, [sp, #16]
  91 0086 0028     		cmp	r0, #0
  92 0088 3ED0     		beq	.L6
  93 008a 5C49     		ldr	r1, .L79+4
  94 008c 5D4B     		ldr	r3, .L79+12
  95 008e D1F800C0 		ldr	ip, [r1]
  96 0092 1B68     		ldr	r3, [r3]
  97 0094 0CF0F001 		and	r1, ip, #240
  98 0098 0393     		str	r3, [sp, #12]
  99 009a 3A46     		mov	r2, r7
 100 009c 0346     		mov	r3, r0
 101 009e 0596     		str	r6, [sp, #20]
 102 00a0 4046     		mov	r0, r8
 103 00a2 8846     		mov	r8, r1
 104 00a4 04E0     		b	.L19
 105              	.L8:
 106 00a6 D968     		ldr	r1, [r3, #12]
 107 00a8 0029     		cmp	r1, #0
 108 00aa 3BD0     		beq	.L18
 109 00ac 1A46     		mov	r2, r3
 110 00ae 0B46     		mov	r3, r1
 111              	.L19:
 112 00b0 598A     		ldrh	r1, [r3, #18]
 113 00b2 A942     		cmp	r1, r5
 114 00b4 F7D1     		bne	.L8
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxtEF5Z.s 			page 3


 115 00b6 1968     		ldr	r1, [r3]
 116 00b8 00B9     		cbnz	r0, .L10
 117 00ba 69B1     		cbz	r1, .L11
 118              	.L10:
 119 00bc 6145     		cmp	r1, ip
 120 00be 0BD0     		beq	.L11
 121 00c0 B8F1E00F 		cmp	r8, #224
 122 00c4 08D0     		beq	.L11
 123 00c6 0028     		cmp	r0, #0
 124 00c8 EDD0     		beq	.L8
 125 00ca 29B1     		cbz	r1, .L11
 126 00cc DAF80860 		ldr	r6, [r10, #8]
 127 00d0 81EA0C01 		eor	r1, r1, ip
 128 00d4 3142     		tst	r1, r6
 129 00d6 E6D1     		bne	.L8
 130              	.L11:
 131 00d8 F7B1     		cbz	r7, .L74
 132              	.L24:
 133              	.L12:
 134 00da 998A     		ldrh	r1, [r3, #20]
 135 00dc 5945     		cmp	r1, fp
 136 00de E2D1     		bne	.L8
 137 00e0 5968     		ldr	r1, [r3, #4]
 138 00e2 11B1     		cbz	r1, .L68
 139 00e4 039E     		ldr	r6, [sp, #12]
 140 00e6 B142     		cmp	r1, r6
 141 00e8 DDD1     		bne	.L8
 142              	.L68:
 143 00ea 8046     		mov	r8, r0
 144 00ec 059E     		ldr	r6, [sp, #20]
 145 00ee 002A     		cmp	r2, #0
 146 00f0 7CD0     		beq	.L75
 147 00f2 D968     		ldr	r1, [r3, #12]
 148 00f4 4248     		ldr	r0, .L79+8
 149 00f6 D160     		str	r1, [r2, #12]
 150 00f8 0499     		ldr	r1, [sp, #16]
 151 00fa 0360     		str	r3, [r0]
 152 00fc D960     		str	r1, [r3, #12]
 153              	.L17:
 154 00fe 1F46     		mov	r7, r3
 155 0100 14E0     		b	.L27
 156              	.L73:
 157 0102 BBF1430F 		cmp	fp, #67
 158 0106 31D0     		beq	.L76
 159              	.L6:
 160 0108 3C48     		ldr	r0, .L79+4
 161 010a DAF80420 		ldr	r2, [r10, #4]
 162 010e 0368     		ldr	r3, [r0]
 163 0110 9A42     		cmp	r2, r3
 164 0112 3FD1     		bne	.L20
 165 0114 0027     		movs	r7, #0
 166 0116 09E0     		b	.L27
 167              	.L74:
 168 0118 197C     		ldrb	r1, [r3, #16]	@ zero_extendqisi2
 169 011a 11F0040F 		tst	r1, #4
 170 011e 08BF     		it	eq
 171 0120 1F46     		moveq	r7, r3
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxtEF5Z.s 			page 4


 172 0122 DAE7     		b	.L12
 173              	.L18:
 174 0124 8046     		mov	r8, r0
 175 0126 059E     		ldr	r6, [sp, #20]
 176 0128 002F     		cmp	r7, #0
 177 012a EDD0     		beq	.L6
 178              	.L27:
 179 012c 029A     		ldr	r2, [sp, #8]
 180 012e D388     		ldrh	r3, [r2, #6]	@ unaligned
 181 0130 4BB1     		cbz	r3, .L21
 182 0132 3389     		ldrh	r3, [r6, #8]
 183 0134 3046     		mov	r0, r6
 184 0136 0093     		str	r3, [sp]
 185 0138 3249     		ldr	r1, .L79+12
 186 013a 304A     		ldr	r2, .L79+4
 187 013c 1123     		movs	r3, #17
 188 013e FFF7FEFF 		bl	inet_chksum_pseudo
 189 0142 0028     		cmp	r0, #0
 190 0144 48D1     		bne	.L77
 191              	.L21:
 192 0146 3046     		mov	r0, r6
 193 0148 6FF00701 		mvn	r1, #7
 194 014c FFF7FEFF 		bl	pbuf_header
 195 0150 D8B9     		cbnz	r0, .L78
 196 0152 0FB3     		cbz	r7, .L23
 197 0154 FC69     		ldr	r4, [r7, #28]
 198 0156 ECB1     		cbz	r4, .L20
 199 0158 386A     		ldr	r0, [r7, #32]
 200 015a 3246     		mov	r2, r6
 201 015c CDF800B0 		str	fp, [sp]
 202 0160 3946     		mov	r1, r7
 203 0162 284B     		ldr	r3, .L79+12
 204 0164 A047     		blx	r4
 205 0166 07B0     		add	sp, sp, #28
 206              		@ sp needed
 207 0168 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 208              	.L76:
 209 016c DAF82430 		ldr	r3, [r10, #36]
 210 0170 002B     		cmp	r3, #0
 211 0172 C9D0     		beq	.L6
 212 0174 5F68     		ldr	r7, [r3, #4]
 213 0176 002F     		cmp	r7, #0
 214 0178 C6D0     		beq	.L6
 215 017a 7B68     		ldr	r3, [r7, #4]
 216 017c 002B     		cmp	r3, #0
 217 017e D5D0     		beq	.L27
 218 0180 204A     		ldr	r2, .L79+12
 219 0182 1268     		ldr	r2, [r2]
 220 0184 9342     		cmp	r3, r2
 221 0186 BFD1     		bne	.L6
 222 0188 D0E7     		b	.L27
 223              	.L78:
 224 018a B4F89A30 		ldrh	r3, [r4, #154]
 225 018e 3046     		mov	r0, r6
 226 0190 0133     		adds	r3, r3, #1
 227 0192 5AE7     		b	.L69
 228              	.L20:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxtEF5Z.s 			page 5


 229 0194 3046     		mov	r0, r6
 230 0196 5AE7     		b	.L70
 231              	.L23:
 232 0198 B8F1000F 		cmp	r8, #0
 233 019c 12D1     		bne	.L25
 234 019e 1748     		ldr	r0, .L79+4
 235 01a0 0368     		ldr	r3, [r0]
 236 01a2 03F0F003 		and	r3, r3, #240
 237 01a6 E02B     		cmp	r3, #224
 238 01a8 0CD0     		beq	.L25
 239 01aa 99F80010 		ldrb	r1, [r9]	@ zero_extendqisi2
 240 01ae 3046     		mov	r0, r6
 241 01b0 01F00F01 		and	r1, r1, #15
 242 01b4 0231     		adds	r1, r1, #2
 243 01b6 8900     		lsls	r1, r1, #2
 244 01b8 FFF7FEFF 		bl	pbuf_header
 245 01bc 3046     		mov	r0, r6
 246 01be 0321     		movs	r1, #3
 247 01c0 FFF7FEFF 		bl	icmp_dest_unreach
 248              	.L25:
 249 01c4 B4F8A420 		ldrh	r2, [r4, #164]
 250 01c8 B4F89A30 		ldrh	r3, [r4, #154]
 251 01cc 0132     		adds	r2, r2, #1
 252 01ce 3046     		mov	r0, r6
 253 01d0 0133     		adds	r3, r3, #1
 254 01d2 A4F8A420 		strh	r2, [r4, #164]	@ movhi
 255 01d6 38E7     		b	.L69
 256              	.L77:
 257 01d8 B4F89C20 		ldrh	r2, [r4, #156]
 258 01dc B4F89A30 		ldrh	r3, [r4, #154]
 259 01e0 0132     		adds	r2, r2, #1
 260 01e2 3046     		mov	r0, r6
 261 01e4 0133     		adds	r3, r3, #1
 262 01e6 A4F89C20 		strh	r2, [r4, #156]	@ movhi
 263 01ea 2EE7     		b	.L69
 264              	.L75:
 265 01ec B4F8AA20 		ldrh	r2, [r4, #170]
 266 01f0 0132     		adds	r2, r2, #1
 267 01f2 A4F8AA20 		strh	r2, [r4, #170]	@ movhi
 268 01f6 82E7     		b	.L17
 269              	.L80:
 270              		.align	2
 271              	.L79:
 272 01f8 00000000 		.word	lwip_stats
 273 01fc 00000000 		.word	current_iphdr_dest
 274 0200 00000000 		.word	udp_pcbs
 275 0204 00000000 		.word	current_iphdr_src
 276              		.size	udp_input, .-udp_input
 277              		.section	.text.udp_bind,"ax",%progbits
 278              		.align	2
 279              		.global	udp_bind
 280              		.thumb
 281              		.thumb_func
 282              		.type	udp_bind, %function
 283              	udp_bind:
 284              		@ args = 0, pretend = 0, frame = 0
 285              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxtEF5Z.s 			page 6


 286              		@ link register save eliminated.
 287 0000 2DE9F001 		push	{r4, r5, r6, r7, r8}
 288 0004 2F4E     		ldr	r6, .L118
 289 0006 3768     		ldr	r7, [r6]
 290 0008 002F     		cmp	r7, #0
 291 000a 59D0     		beq	.L99
 292 000c 3B46     		mov	r3, r7
 293 000e 0025     		movs	r5, #0
 294 0010 0AE0     		b	.L87
 295              	.L116:
 296 0012 047A     		ldrb	r4, [r0, #8]	@ zero_extendqisi2
 297 0014 6407     		lsls	r4, r4, #29
 298 0016 05D4     		bmi	.L83
 299 0018 1C7A     		ldrb	r4, [r3, #8]	@ zero_extendqisi2
 300 001a 6407     		lsls	r4, r4, #29
 301 001c 02D4     		bmi	.L83
 302 001e 5C8A     		ldrh	r4, [r3, #18]
 303 0020 9442     		cmp	r4, r2
 304 0022 14D0     		beq	.L115
 305              	.L83:
 306 0024 DB68     		ldr	r3, [r3, #12]
 307 0026 2BB1     		cbz	r3, .L82
 308              	.L87:
 309 0028 9842     		cmp	r0, r3
 310 002a F2D1     		bne	.L116
 311 002c DB68     		ldr	r3, [r3, #12]
 312 002e 0125     		movs	r5, #1
 313 0030 002B     		cmp	r3, #0
 314 0032 F9D1     		bne	.L87
 315              	.L82:
 316 0034 01B1     		cbz	r1, .L88
 317 0036 0968     		ldr	r1, [r1]
 318              	.L88:
 319 0038 0160     		str	r1, [r0]
 320 003a E2B1     		cbz	r2, .L117
 321              	.L89:
 322 003c 4282     		strh	r2, [r0, #18]	@ movhi
 323 003e ADB9     		cbnz	r5, .L103
 324 0040 C760     		str	r7, [r0, #12]
 325 0042 3060     		str	r0, [r6]
 326 0044 2846     		mov	r0, r5
 327 0046 40B2     		sxtb	r0, r0
 328 0048 BDE8F001 		pop	{r4, r5, r6, r7, r8}
 329 004c 7047     		bx	lr
 330              	.L115:
 331 004e 1C68     		ldr	r4, [r3]
 332 0050 3CB1     		cbz	r4, .L86
 333 0052 31B1     		cbz	r1, .L86
 334 0054 D1F800C0 		ldr	ip, [r1]
 335 0058 BCF1000F 		cmp	ip, #0
 336 005c 01D0     		beq	.L86
 337 005e 6445     		cmp	r4, ip
 338 0060 E0D1     		bne	.L83
 339              	.L86:
 340 0062 F820     		movs	r0, #248
 341 0064 40B2     		sxtb	r0, r0
 342 0066 BDE8F001 		pop	{r4, r5, r6, r7, r8}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxtEF5Z.s 			page 7


 343 006a 7047     		bx	lr
 344              	.L103:
 345 006c 0020     		movs	r0, #0
 346 006e 40B2     		sxtb	r0, r0
 347 0070 BDE8F001 		pop	{r4, r5, r6, r7, r8}
 348 0074 7047     		bx	lr
 349              	.L117:
 350 0076 DFF850C0 		ldr	ip, .L118+4
 351 007a 4FF48044 		mov	r4, #16384
 352 007e BCF80020 		ldrh	r2, [ip]
 353 0082 4FF6FF78 		movw	r8, #65535
 354              	.L97:
 355 0086 4245     		cmp	r2, r8
 356 0088 1ABF     		itte	ne
 357 008a 0132     		addne	r2, r2, #1
 358 008c 92B2     		uxthne	r2, r2
 359 008e 4FF44042 		moveq	r2, #49152
 360 0092 5FB1     		cbz	r7, .L114
 361 0094 7B8A     		ldrh	r3, [r7, #18]
 362 0096 9342     		cmp	r3, r2
 363 0098 18BF     		it	ne
 364 009a 3B46     		movne	r3, r7
 365 009c 03D1     		bne	.L95
 366 009e 08E0     		b	.L93
 367              	.L98:
 368 00a0 598A     		ldrh	r1, [r3, #18]
 369 00a2 9142     		cmp	r1, r2
 370 00a4 05D0     		beq	.L93
 371              	.L95:
 372 00a6 DB68     		ldr	r3, [r3, #12]
 373 00a8 002B     		cmp	r3, #0
 374 00aa F9D1     		bne	.L98
 375              	.L114:
 376 00ac ACF80020 		strh	r2, [ip]	@ movhi
 377 00b0 C4E7     		b	.L89
 378              	.L93:
 379 00b2 013C     		subs	r4, r4, #1
 380 00b4 A4B2     		uxth	r4, r4
 381 00b6 002C     		cmp	r4, #0
 382 00b8 E5D1     		bne	.L97
 383 00ba ACF80020 		strh	r2, [ip]	@ movhi
 384 00be D0E7     		b	.L86
 385              	.L99:
 386 00c0 3D46     		mov	r5, r7
 387 00c2 B7E7     		b	.L82
 388              	.L119:
 389              		.align	2
 390              	.L118:
 391 00c4 00000000 		.word	udp_pcbs
 392 00c8 00000000 		.word	.LANCHOR0
 393              		.size	udp_bind, .-udp_bind
 394              		.section	.text.udp_sendto_if,"ax",%progbits
 395              		.align	2
 396              		.global	udp_sendto_if
 397              		.thumb
 398              		.thumb_func
 399              		.type	udp_sendto_if, %function
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxtEF5Z.s 			page 8


 400              	udp_sendto_if:
 401              		@ args = 4, pretend = 0, frame = 0
 402              		@ frame_needed = 0, uses_anonymous_args = 0
 403 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 404 0004 0446     		mov	r4, r0
 405 0006 007A     		ldrb	r0, [r0, #8]	@ zero_extendqisi2
 406 0008 84B0     		sub	sp, sp, #16
 407 000a 0F46     		mov	r7, r1
 408 000c 8106     		lsls	r1, r0, #26
 409 000e 9046     		mov	r8, r2
 410 0010 9A46     		mov	r10, r3
 411 0012 DDF83090 		ldr	r9, [sp, #48]
 412 0016 63D5     		bpl	.L121
 413              	.L124:
 414 0018 628A     		ldrh	r2, [r4, #18]
 415 001a 22B9     		cbnz	r2, .L123
 416 001c 2046     		mov	r0, r4
 417 001e 2146     		mov	r1, r4
 418 0020 FFF7FEFF 		bl	udp_bind
 419 0024 18BB     		cbnz	r0, .L125
 420              	.L123:
 421 0026 3846     		mov	r0, r7
 422 0028 0821     		movs	r1, #8
 423 002a FFF7FEFF 		bl	pbuf_header
 424 002e 10BB     		cbnz	r0, .L126
 425 0030 3E46     		mov	r6, r7
 426              	.L127:
 427 0032 608A     		ldrh	r0, [r4, #18]
 428 0034 7568     		ldr	r5, [r6, #4]
 429 0036 FFF7FEFF 		bl	lwip_htons
 430 003a 2880     		strh	r0, [r5]	@ unaligned
 431 003c 5046     		mov	r0, r10
 432 003e FFF7FEFF 		bl	lwip_htons
 433 0042 D8F80020 		ldr	r2, [r8]
 434 0046 0023     		movs	r3, #0
 435 0048 02F0F002 		and	r2, r2, #240
 436 004c E02A     		cmp	r2, #224
 437 004e 6880     		strh	r0, [r5, #2]	@ unaligned
 438 0050 AB71     		strb	r3, [r5, #6]
 439 0052 EB71     		strb	r3, [r5, #7]
 440 0054 4BD0     		beq	.L149
 441              	.L128:
 442 0056 2368     		ldr	r3, [r4]
 443 0058 E3B1     		cbz	r3, .L150
 444 005a D9F80420 		ldr	r2, [r9, #4]
 445 005e 9342     		cmp	r3, r2
 446 0060 5CD0     		beq	.L131
 447 0062 BE42     		cmp	r6, r7
 448 0064 02D0     		beq	.L148
 449 0066 3046     		mov	r0, r6
 450 0068 FFF7FEFF 		bl	pbuf_free
 451              	.L148:
 452 006c FA20     		movs	r0, #250
 453              	.L125:
 454 006e 40B2     		sxtb	r0, r0
 455 0070 04B0     		add	sp, sp, #16
 456              		@ sp needed
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxtEF5Z.s 			page 9


 457 0072 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 458              	.L126:
 459 0076 0120     		movs	r0, #1
 460 0078 0821     		movs	r1, #8
 461 007a 0022     		movs	r2, #0
 462 007c FFF7FEFF 		bl	pbuf_alloc
 463 0080 0646     		mov	r6, r0
 464 0082 0028     		cmp	r0, #0
 465 0084 4CD0     		beq	.L137
 466 0086 3B89     		ldrh	r3, [r7, #8]
 467 0088 002B     		cmp	r3, #0
 468 008a D2D0     		beq	.L127
 469 008c 3946     		mov	r1, r7
 470 008e FFF7FEFF 		bl	pbuf_chain
 471 0092 CEE7     		b	.L127
 472              	.L150:
 473 0094 09F1040A 		add	r10, r9, #4
 474              	.L130:
 475 0098 3089     		ldrh	r0, [r6, #8]
 476 009a FFF7FEFF 		bl	lwip_htons
 477 009e A880     		strh	r0, [r5, #4]	@ unaligned
 478 00a0 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 479 00a2 DB07     		lsls	r3, r3, #31
 480 00a4 2BD5     		bpl	.L151
 481              	.L133:
 482 00a6 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 483 00a8 647A     		ldrb	r4, [r4, #9]	@ zero_extendqisi2
 484 00aa 1120     		movs	r0, #17
 485 00ac 0094     		str	r4, [sp]
 486 00ae 0190     		str	r0, [sp, #4]
 487 00b0 CDF80890 		str	r9, [sp, #8]
 488 00b4 5146     		mov	r1, r10
 489 00b6 4246     		mov	r2, r8
 490 00b8 3046     		mov	r0, r6
 491 00ba FFF7FEFF 		bl	ip_output_if
 492 00be BE42     		cmp	r6, r7
 493 00c0 0446     		mov	r4, r0
 494 00c2 02D0     		beq	.L135
 495 00c4 3046     		mov	r0, r6
 496 00c6 FFF7FEFF 		bl	pbuf_free
 497              	.L135:
 498 00ca 164B     		ldr	r3, .L152
 499 00cc 2046     		mov	r0, r4
 500 00ce B3F89420 		ldrh	r2, [r3, #148]
 501 00d2 40B2     		sxtb	r0, r0
 502 00d4 0132     		adds	r2, r2, #1
 503 00d6 A3F89420 		strh	r2, [r3, #148]	@ movhi
 504 00da 04B0     		add	sp, sp, #16
 505              		@ sp needed
 506 00dc BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 507              	.L121:
 508 00e0 1068     		ldr	r0, [r2]
 509 00e2 4946     		mov	r1, r9
 510 00e4 FFF7FEFF 		bl	ip4_addr_isbroadcast
 511 00e8 0028     		cmp	r0, #0
 512 00ea 95D0     		beq	.L124
 513 00ec BEE7     		b	.L148
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxtEF5Z.s 			page 10


 514              	.L149:
 515 00ee 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 516 00f0 1A07     		lsls	r2, r3, #28
 517 00f2 B0D5     		bpl	.L128
 518 00f4 737B     		ldrb	r3, [r6, #13]	@ zero_extendqisi2
 519 00f6 43F00403 		orr	r3, r3, #4
 520 00fa 7373     		strb	r3, [r6, #13]
 521 00fc ABE7     		b	.L128
 522              	.L151:
 523 00fe 3389     		ldrh	r3, [r6, #8]
 524 0100 3046     		mov	r0, r6
 525 0102 0093     		str	r3, [sp]
 526 0104 5146     		mov	r1, r10
 527 0106 1123     		movs	r3, #17
 528 0108 4246     		mov	r2, r8
 529 010a FFF7FEFF 		bl	inet_chksum_pseudo
 530 010e 4FF6FF73 		movw	r3, #65535
 531 0112 0028     		cmp	r0, #0
 532 0114 08BF     		it	eq
 533 0116 1846     		moveq	r0, r3
 534 0118 E880     		strh	r0, [r5, #6]	@ unaligned
 535 011a C4E7     		b	.L133
 536              	.L131:
 537 011c A246     		mov	r10, r4
 538 011e BBE7     		b	.L130
 539              	.L137:
 540 0120 FF20     		movs	r0, #255
 541 0122 A4E7     		b	.L125
 542              	.L153:
 543              		.align	2
 544              	.L152:
 545 0124 00000000 		.word	lwip_stats
 546              		.size	udp_sendto_if, .-udp_sendto_if
 547              		.section	.text.udp_sendto,"ax",%progbits
 548              		.align	2
 549              		.global	udp_sendto
 550              		.thumb
 551              		.thumb_func
 552              		.type	udp_sendto, %function
 553              	udp_sendto:
 554              		@ args = 0, pretend = 0, frame = 0
 555              		@ frame_needed = 0, uses_anonymous_args = 0
 556 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 557 0002 1446     		mov	r4, r2
 558 0004 1268     		ldr	r2, [r2]
 559 0006 0546     		mov	r5, r0
 560 0008 02F0F002 		and	r2, r2, #240
 561 000c E02A     		cmp	r2, #224
 562 000e 83B0     		sub	sp, sp, #12
 563 0010 0CBF     		ite	eq
 564 0012 1830     		addeq	r0, r0, #24
 565 0014 2046     		movne	r0, r4
 566 0016 0F46     		mov	r7, r1
 567 0018 1E46     		mov	r6, r3
 568 001a FFF7FEFF 		bl	ip_route
 569 001e 48B1     		cbz	r0, .L159
 570 0020 0090     		str	r0, [sp]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxtEF5Z.s 			page 11


 571 0022 3946     		mov	r1, r7
 572 0024 2846     		mov	r0, r5
 573 0026 2246     		mov	r2, r4
 574 0028 3346     		mov	r3, r6
 575 002a FFF7FEFF 		bl	udp_sendto_if
 576              	.L157:
 577 002e 40B2     		sxtb	r0, r0
 578 0030 03B0     		add	sp, sp, #12
 579              		@ sp needed
 580 0032 F0BD     		pop	{r4, r5, r6, r7, pc}
 581              	.L159:
 582 0034 034B     		ldr	r3, .L160
 583 0036 FC20     		movs	r0, #252
 584 0038 B3F8A220 		ldrh	r2, [r3, #162]
 585 003c 0132     		adds	r2, r2, #1
 586 003e A3F8A220 		strh	r2, [r3, #162]	@ movhi
 587 0042 F4E7     		b	.L157
 588              	.L161:
 589              		.align	2
 590              	.L160:
 591 0044 00000000 		.word	lwip_stats
 592              		.size	udp_sendto, .-udp_sendto
 593              		.section	.text.udp_send,"ax",%progbits
 594              		.align	2
 595              		.global	udp_send
 596              		.thumb
 597              		.thumb_func
 598              		.type	udp_send, %function
 599              	udp_send:
 600              		@ args = 0, pretend = 0, frame = 0
 601              		@ frame_needed = 0, uses_anonymous_args = 0
 602              		@ link register save eliminated.
 603 0000 021D     		adds	r2, r0, #4
 604 0002 838A     		ldrh	r3, [r0, #20]
 605 0004 FFF7FEBF 		b	udp_sendto
 606              		.size	udp_send, .-udp_send
 607              		.section	.text.udp_connect,"ax",%progbits
 608              		.align	2
 609              		.global	udp_connect
 610              		.thumb
 611              		.thumb_func
 612              		.type	udp_connect, %function
 613              	udp_connect:
 614              		@ args = 0, pretend = 0, frame = 0
 615              		@ frame_needed = 0, uses_anonymous_args = 0
 616 0000 438A     		ldrh	r3, [r0, #18]
 617 0002 70B5     		push	{r4, r5, r6, lr}
 618 0004 0446     		mov	r4, r0
 619 0006 0D46     		mov	r5, r1
 620 0008 1646     		mov	r6, r2
 621 000a C3B1     		cbz	r3, .L164
 622              	.L168:
 623 000c 05B1     		cbz	r5, .L166
 624 000e 2D68     		ldr	r5, [r5]
 625              	.L166:
 626 0010 1049     		ldr	r1, .L178
 627 0012 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxtEF5Z.s 			page 12


 628 0014 0868     		ldr	r0, [r1]
 629 0016 43F00403 		orr	r3, r3, #4
 630 001a 6560     		str	r5, [r4, #4]
 631 001c A682     		strh	r6, [r4, #20]	@ movhi
 632 001e 2374     		strb	r3, [r4, #16]
 633 0020 40B1     		cbz	r0, .L169
 634 0022 8442     		cmp	r4, r0
 635 0024 13D0     		beq	.L174
 636 0026 0346     		mov	r3, r0
 637 0028 01E0     		b	.L170
 638              	.L171:
 639 002a 9C42     		cmp	r4, r3
 640 002c 0FD0     		beq	.L174
 641              	.L170:
 642 002e DB68     		ldr	r3, [r3, #12]
 643 0030 002B     		cmp	r3, #0
 644 0032 FAD1     		bne	.L171
 645              	.L169:
 646 0034 E060     		str	r0, [r4, #12]
 647 0036 0020     		movs	r0, #0
 648 0038 0C60     		str	r4, [r1]
 649 003a 40B2     		sxtb	r0, r0
 650 003c 70BD     		pop	{r4, r5, r6, pc}
 651              	.L164:
 652 003e 1A46     		mov	r2, r3
 653 0040 0146     		mov	r1, r0
 654 0042 FFF7FEFF 		bl	udp_bind
 655 0046 0028     		cmp	r0, #0
 656 0048 E0D0     		beq	.L168
 657 004a 40B2     		sxtb	r0, r0
 658 004c 70BD     		pop	{r4, r5, r6, pc}
 659              	.L174:
 660 004e 0020     		movs	r0, #0
 661 0050 40B2     		sxtb	r0, r0
 662 0052 70BD     		pop	{r4, r5, r6, pc}
 663              	.L179:
 664              		.align	2
 665              	.L178:
 666 0054 00000000 		.word	udp_pcbs
 667              		.size	udp_connect, .-udp_connect
 668              		.section	.text.udp_disconnect,"ax",%progbits
 669              		.align	2
 670              		.global	udp_disconnect
 671              		.thumb
 672              		.thumb_func
 673              		.type	udp_disconnect, %function
 674              	udp_disconnect:
 675              		@ args = 0, pretend = 0, frame = 0
 676              		@ frame_needed = 0, uses_anonymous_args = 0
 677              		@ link register save eliminated.
 678 0000 027C     		ldrb	r2, [r0, #16]	@ zero_extendqisi2
 679 0002 0023     		movs	r3, #0
 680 0004 22F00402 		bic	r2, r2, #4
 681 0008 0274     		strb	r2, [r0, #16]
 682 000a 4360     		str	r3, [r0, #4]
 683 000c 8382     		strh	r3, [r0, #20]	@ movhi
 684 000e 7047     		bx	lr
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxtEF5Z.s 			page 13


 685              		.size	udp_disconnect, .-udp_disconnect
 686              		.section	.text.udp_recv,"ax",%progbits
 687              		.align	2
 688              		.global	udp_recv
 689              		.thumb
 690              		.thumb_func
 691              		.type	udp_recv, %function
 692              	udp_recv:
 693              		@ args = 0, pretend = 0, frame = 0
 694              		@ frame_needed = 0, uses_anonymous_args = 0
 695              		@ link register save eliminated.
 696 0000 C161     		str	r1, [r0, #28]
 697 0002 0262     		str	r2, [r0, #32]
 698 0004 7047     		bx	lr
 699              		.size	udp_recv, .-udp_recv
 700 0006 00BF     		.section	.text.udp_remove,"ax",%progbits
 701              		.align	2
 702              		.global	udp_remove
 703              		.thumb
 704              		.thumb_func
 705              		.type	udp_remove, %function
 706              	udp_remove:
 707              		@ args = 0, pretend = 0, frame = 0
 708              		@ frame_needed = 0, uses_anonymous_args = 0
 709              		@ link register save eliminated.
 710 0000 0C4B     		ldr	r3, .L194
 711 0002 0146     		mov	r1, r0
 712 0004 1A68     		ldr	r2, [r3]
 713 0006 8242     		cmp	r2, r0
 714 0008 0FD0     		beq	.L183
 715 000a 1AB9     		cbnz	r2, .L186
 716 000c 05E0     		b	.L185
 717              	.L193:
 718 000e 9942     		cmp	r1, r3
 719 0010 06D0     		beq	.L192
 720              	.L188:
 721 0012 1A46     		mov	r2, r3
 722              	.L186:
 723 0014 D368     		ldr	r3, [r2, #12]
 724 0016 002B     		cmp	r3, #0
 725 0018 F9D1     		bne	.L193
 726              	.L185:
 727 001a 0020     		movs	r0, #0
 728 001c FFF7FEBF 		b	memp_free
 729              	.L192:
 730 0020 CB68     		ldr	r3, [r1, #12]
 731 0022 D360     		str	r3, [r2, #12]
 732 0024 002B     		cmp	r3, #0
 733 0026 F4D1     		bne	.L188
 734 0028 F7E7     		b	.L185
 735              	.L183:
 736 002a C268     		ldr	r2, [r0, #12]
 737 002c 0020     		movs	r0, #0
 738 002e 1A60     		str	r2, [r3]
 739 0030 FFF7FEBF 		b	memp_free
 740              	.L195:
 741              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxtEF5Z.s 			page 14


 742              	.L194:
 743 0034 00000000 		.word	udp_pcbs
 744              		.size	udp_remove, .-udp_remove
 745              		.section	.text.udp_new,"ax",%progbits
 746              		.align	2
 747              		.global	udp_new
 748              		.thumb
 749              		.thumb_func
 750              		.type	udp_new, %function
 751              	udp_new:
 752              		@ args = 0, pretend = 0, frame = 0
 753              		@ frame_needed = 0, uses_anonymous_args = 0
 754 0000 10B5     		push	{r4, lr}
 755 0002 0020     		movs	r0, #0
 756 0004 FFF7FEFF 		bl	memp_malloc
 757 0008 0446     		mov	r4, r0
 758 000a 28B1     		cbz	r0, .L197
 759 000c 0021     		movs	r1, #0
 760 000e 2422     		movs	r2, #36
 761 0010 FFF7FEFF 		bl	memset
 762 0014 FF23     		movs	r3, #255
 763 0016 A372     		strb	r3, [r4, #10]
 764              	.L197:
 765 0018 2046     		mov	r0, r4
 766 001a 10BD     		pop	{r4, pc}
 767              		.size	udp_new, .-udp_new
 768              		.comm	udp_pcbs,4,4
 769              		.section	.data.udp_port,"aw",%progbits
 770              		.align	1
 771              		.set	.LANCHOR0,. + 0
 772              		.type	udp_port, %object
 773              		.size	udp_port, 2
 774              	udp_port:
 775 0000 00C0     		.short	-16384
 776              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
