ARM GAS  C:\Users\George\AppData\Local\Temp\ccnseHgC.s 			page 1


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
  14              		.file	"ip_frag.c"
  15              		.section	.text.ipfrag_free_pbuf_custom,"ax",%progbits
  16              		.align	2
  17              		.thumb
  18              		.thumb_func
  19              		.type	ipfrag_free_pbuf_custom, %function
  20              	ipfrag_free_pbuf_custom:
  21              		@ args = 0, pretend = 0, frame = 0
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23 0000 10B5     		push	{r4, lr}
  24 0002 0446     		mov	r4, r0
  25 0004 4069     		ldr	r0, [r0, #20]
  26 0006 08B1     		cbz	r0, .L2
  27 0008 FFF7FEFF 		bl	pbuf_free
  28              	.L2:
  29 000c 2146     		mov	r1, r4
  30 000e 0520     		movs	r0, #5
  31 0010 BDE81040 		pop	{r4, lr}
  32 0014 FFF7FEBF 		b	memp_free
  33              		.size	ipfrag_free_pbuf_custom, .-ipfrag_free_pbuf_custom
  34              		.section	.text.ip_reass_free_complete_datagram,"ax",%progbits
  35              		.align	2
  36              		.thumb
  37              		.thumb_func
  38              		.type	ip_reass_free_complete_datagram, %function
  39              	ip_reass_free_complete_datagram:
  40              		@ args = 0, pretend = 0, frame = 0
  41              		@ frame_needed = 0, uses_anonymous_args = 0
  42 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  43 0004 4468     		ldr	r4, [r0, #4]
  44 0006 0746     		mov	r7, r0
  45 0008 6368     		ldr	r3, [r4, #4]
  46 000a 8846     		mov	r8, r1
  47 000c 9A88     		ldrh	r2, [r3, #4]	@ unaligned
  48 000e 12B3     		cbz	r2, .L20
  49 0010 0026     		movs	r6, #0
  50 0012 00E0     		b	.L10
  51              	.L21:
  52 0014 2C46     		mov	r4, r5
  53              	.L10:
  54 0016 6368     		ldr	r3, [r4, #4]
  55 0018 2046     		mov	r0, r4
  56 001a 1D68     		ldr	r5, [r3]	@ unaligned
  57 001c FFF7FEFF 		bl	pbuf_clen
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnseHgC.s 			page 2


  58 0020 0644     		add	r6, r6, r0
  59 0022 2046     		mov	r0, r4
  60 0024 B6B2     		uxth	r6, r6
  61 0026 FFF7FEFF 		bl	pbuf_free
  62 002a 002D     		cmp	r5, #0
  63 002c F2D1     		bne	.L21
  64              	.L9:
  65 002e 194B     		ldr	r3, .L22
  66 0030 3946     		mov	r1, r7
  67 0032 1A68     		ldr	r2, [r3]
  68 0034 0420     		movs	r0, #4
  69 0036 9742     		cmp	r7, r2
  70 0038 15BF     		itete	ne
  71 003a 3B68     		ldrne	r3, [r7]
  72 003c 3A68     		ldreq	r2, [r7]
  73 003e C8F80030 		strne	r3, [r8]
  74 0042 1A60     		streq	r2, [r3]
  75 0044 FFF7FEFF 		bl	memp_free
  76 0048 134B     		ldr	r3, .L22+4
  77 004a 3046     		mov	r0, r6
  78 004c 1A88     		ldrh	r2, [r3]
  79 004e 961B     		subs	r6, r2, r6
  80 0050 1E80     		strh	r6, [r3]	@ movhi
  81 0052 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  82              	.L20:
  83 0056 1968     		ldr	r1, [r3]	@ unaligned
  84 0058 0246     		mov	r2, r0
  85 005a 4160     		str	r1, [r0, #4]
  86 005c 52F8085F 		ldr	r5, [r2, #8]!	@ unaligned
  87 0060 2046     		mov	r0, r4
  88 0062 9668     		ldr	r6, [r2, #8]	@ unaligned
  89 0064 D168     		ldr	r1, [r2, #12]	@ unaligned
  90 0066 D2F804E0 		ldr	lr, [r2, #4]	@ unaligned
  91 006a 9E60     		str	r6, [r3, #8]	@ unaligned
  92 006c D960     		str	r1, [r3, #12]	@ unaligned
  93 006e 1D60     		str	r5, [r3]	@ unaligned
  94 0070 C3F804E0 		str	lr, [r3, #4]	@ unaligned
  95 0074 1569     		ldr	r5, [r2, #16]	@ unaligned
  96 0076 0121     		movs	r1, #1
  97 0078 1D61     		str	r5, [r3, #16]	@ unaligned
  98 007a FFF7FEFF 		bl	icmp_time_exceeded
  99 007e 2046     		mov	r0, r4
 100 0080 FFF7FEFF 		bl	pbuf_clen
 101 0084 0646     		mov	r6, r0
 102 0086 2046     		mov	r0, r4
 103 0088 FFF7FEFF 		bl	pbuf_free
 104 008c 7C68     		ldr	r4, [r7, #4]
 105 008e 002C     		cmp	r4, #0
 106 0090 C1D1     		bne	.L10
 107 0092 CCE7     		b	.L9
 108              	.L23:
 109              		.align	2
 110              	.L22:
 111 0094 00000000 		.word	.LANCHOR0
 112 0098 00000000 		.word	.LANCHOR1
 113              		.size	ip_reass_free_complete_datagram, .-ip_reass_free_complete_datagram
 114              		.section	.text.ip_reass_remove_oldest_datagram,"ax",%progbits
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnseHgC.s 			page 3


 115              		.align	2
 116              		.thumb
 117              		.thumb_func
 118              		.type	ip_reass_remove_oldest_datagram, %function
 119              	ip_reass_remove_oldest_datagram:
 120              		@ args = 0, pretend = 0, frame = 0
 121              		@ frame_needed = 0, uses_anonymous_args = 0
 122 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 123 0004 1B4E     		ldr	r6, .L48
 124 0006 0746     		mov	r7, r0
 125 0008 0D46     		mov	r5, r1
 126 000a 4FF00008 		mov	r8, #0
 127              	.L34:
 128 000e 3368     		ldr	r3, [r6]
 129 0010 6BB3     		cbz	r3, .L41
 130 0012 0024     		movs	r4, #0
 131 0014 D7F80CC0 		ldr	ip, [r7, #12]	@ unaligned
 132 0018 2146     		mov	r1, r4
 133 001a 2046     		mov	r0, r4
 134 001c 0BE0     		b	.L29
 135              	.L26:
 136 001e 0134     		adds	r4, r4, #1
 137 0020 C8B1     		cbz	r0, .L37
 138              	.L46:
 139 0022 93F81F90 		ldrb	r9, [r3, #31]	@ zero_extendqisi2
 140 0026 C27F     		ldrb	r2, [r0, #31]	@ zero_extendqisi2
 141 0028 9145     		cmp	r9, r2
 142 002a 98BF     		it	ls
 143 002c 1846     		movls	r0, r3
 144              	.L27:
 145 002e 1A68     		ldr	r2, [r3]
 146 0030 AAB1     		cbz	r2, .L28
 147              	.L47:
 148 0032 1946     		mov	r1, r3
 149 0034 1346     		mov	r3, r2
 150              	.L29:
 151 0036 5A69     		ldr	r2, [r3, #20]
 152 0038 9445     		cmp	ip, r2
 153 003a F0D1     		bne	.L26
 154 003c D7F81090 		ldr	r9, [r7, #16]	@ unaligned
 155 0040 9A69     		ldr	r2, [r3, #24]
 156 0042 4A45     		cmp	r2, r9
 157 0044 EBD1     		bne	.L26
 158 0046 B3F80C90 		ldrh	r9, [r3, #12]
 159 004a BA88     		ldrh	r2, [r7, #4]	@ unaligned
 160 004c 9145     		cmp	r9, r2
 161 004e EED0     		beq	.L27
 162 0050 0134     		adds	r4, r4, #1
 163 0052 0028     		cmp	r0, #0
 164 0054 E5D1     		bne	.L46
 165              	.L37:
 166 0056 1A68     		ldr	r2, [r3]
 167 0058 1846     		mov	r0, r3
 168 005a 002A     		cmp	r2, #0
 169 005c E9D1     		bne	.L47
 170              	.L28:
 171 005e 10B1     		cbz	r0, .L30
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnseHgC.s 			page 4


 172 0060 FFF7FEFF 		bl	ip_reass_free_complete_datagram
 173 0064 8044     		add	r8, r8, r0
 174              	.L30:
 175 0066 A845     		cmp	r8, r5
 176 0068 01DA     		bge	.L41
 177 006a 012C     		cmp	r4, #1
 178 006c CFDC     		bgt	.L34
 179              	.L41:
 180 006e 4046     		mov	r0, r8
 181 0070 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 182              	.L49:
 183              		.align	2
 184              	.L48:
 185 0074 00000000 		.word	.LANCHOR0
 186              		.size	ip_reass_remove_oldest_datagram, .-ip_reass_remove_oldest_datagram
 187              		.section	.text.ip_reass_tmr,"ax",%progbits
 188              		.align	2
 189              		.global	ip_reass_tmr
 190              		.thumb
 191              		.thumb_func
 192              		.type	ip_reass_tmr, %function
 193              	ip_reass_tmr:
 194              		@ args = 0, pretend = 0, frame = 0
 195              		@ frame_needed = 0, uses_anonymous_args = 0
 196 0000 38B5     		push	{r3, r4, r5, lr}
 197 0002 0A4B     		ldr	r3, .L59
 198 0004 1868     		ldr	r0, [r3]
 199 0006 40B1     		cbz	r0, .L50
 200 0008 0024     		movs	r4, #0
 201              	.L55:
 202 000a C37F     		ldrb	r3, [r0, #31]	@ zero_extendqisi2
 203 000c 5A1E     		subs	r2, r3, #1
 204 000e 2BB1     		cbz	r3, .L52
 205 0010 C277     		strb	r2, [r0, #31]
 206 0012 0446     		mov	r4, r0
 207 0014 0068     		ldr	r0, [r0]
 208 0016 0028     		cmp	r0, #0
 209 0018 F7D1     		bne	.L55
 210              	.L50:
 211 001a 38BD     		pop	{r3, r4, r5, pc}
 212              	.L52:
 213 001c 0568     		ldr	r5, [r0]
 214 001e 2146     		mov	r1, r4
 215 0020 FFF7FEFF 		bl	ip_reass_free_complete_datagram
 216 0024 2846     		mov	r0, r5
 217 0026 0028     		cmp	r0, #0
 218 0028 EFD1     		bne	.L55
 219 002a F6E7     		b	.L50
 220              	.L60:
 221              		.align	2
 222              	.L59:
 223 002c 00000000 		.word	.LANCHOR0
 224              		.size	ip_reass_tmr, .-ip_reass_tmr
 225              		.section	.text.ip_reass,"ax",%progbits
 226              		.align	2
 227              		.global	ip_reass
 228              		.thumb
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnseHgC.s 			page 5


 229              		.thumb_func
 230              		.type	ip_reass, %function
 231              	ip_reass:
 232              		@ args = 0, pretend = 0, frame = 16
 233              		@ frame_needed = 0, uses_anonymous_args = 0
 234 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 235 0004 DFF85CB3 		ldr	fp, .L139+4
 236 0008 4668     		ldr	r6, [r0, #4]
 237 000a BBF83230 		ldrh	r3, [fp, #50]
 238 000e 85B0     		sub	sp, sp, #20
 239 0010 0133     		adds	r3, r3, #1
 240 0012 ABF83230 		strh	r3, [fp, #50]	@ movhi
 241 0016 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 242 0018 0746     		mov	r7, r0
 243 001a 03F00F03 		and	r3, r3, #15
 244 001e 052B     		cmp	r3, #5
 245 0020 40F0E080 		bne	.L132
 246 0024 F088     		ldrh	r0, [r6, #6]	@ unaligned
 247 0026 FFF7FEFF 		bl	lwip_ntohs
 248 002a 0190     		str	r0, [sp, #4]
 249 002c 7088     		ldrh	r0, [r6, #2]	@ unaligned
 250 002e FFF7FEFF 		bl	lwip_ntohs
 251 0032 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 252 0034 0290     		str	r0, [sp, #8]
 253 0036 3846     		mov	r0, r7
 254 0038 0393     		str	r3, [sp, #12]
 255 003a FFF7FEFF 		bl	pbuf_clen
 256 003e DFF82883 		ldr	r8, .L139+8
 257 0042 8246     		mov	r10, r0
 258 0044 B8F80010 		ldrh	r1, [r8]
 259 0048 0144     		add	r1, r1, r0
 260 004a 0329     		cmp	r1, #3
 261 004c 00F3DB80 		bgt	.L133
 262              	.L64:
 263 0050 DFF80C93 		ldr	r9, .L139
 264 0054 D9F80040 		ldr	r4, [r9]
 265 0058 94B3     		cbz	r4, .L66
 266 005a F068     		ldr	r0, [r6, #12]	@ unaligned
 267 005c 0025     		movs	r5, #0
 268 005e 03E0     		b	.L70
 269              	.L67:
 270 0060 2368     		ldr	r3, [r4]
 271 0062 2546     		mov	r5, r4
 272 0064 63B3     		cbz	r3, .L66
 273 0066 1C46     		mov	r4, r3
 274              	.L70:
 275 0068 6369     		ldr	r3, [r4, #20]
 276 006a 8342     		cmp	r3, r0
 277 006c F8D1     		bne	.L67
 278 006e 3269     		ldr	r2, [r6, #16]	@ unaligned
 279 0070 A369     		ldr	r3, [r4, #24]
 280 0072 9342     		cmp	r3, r2
 281 0074 F4D1     		bne	.L67
 282 0076 A289     		ldrh	r2, [r4, #12]
 283 0078 B388     		ldrh	r3, [r6, #4]	@ unaligned
 284 007a 9A42     		cmp	r2, r3
 285 007c F0D1     		bne	.L67
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnseHgC.s 			page 6


 286 007e BBF84610 		ldrh	r1, [fp, #70]
 287 0082 0131     		adds	r1, r1, #1
 288 0084 ABF84610 		strh	r1, [fp, #70]	@ movhi
 289 0088 F088     		ldrh	r0, [r6, #6]	@ unaligned
 290 008a FFF7FEFF 		bl	lwip_ntohs
 291 008e C0F30C00 		ubfx	r0, r0, #0, #13
 292 0092 0028     		cmp	r0, #0
 293 0094 39D1     		bne	.L69
 294 0096 E089     		ldrh	r0, [r4, #14]
 295 0098 FFF7FEFF 		bl	lwip_ntohs
 296 009c C0F30C00 		ubfx	r0, r0, #0, #13
 297 00a0 98B3     		cbz	r0, .L69
 298 00a2 3168     		ldr	r1, [r6]	@ unaligned
 299 00a4 D6F804E0 		ldr	lr, [r6, #4]	@ unaligned
 300 00a8 B068     		ldr	r0, [r6, #8]	@ unaligned
 301 00aa D6F80CC0 		ldr	ip, [r6, #12]	@ unaligned
 302 00ae A160     		str	r1, [r4, #8]	@ unaligned
 303 00b0 C4F80CE0 		str	lr, [r4, #12]	@ unaligned
 304 00b4 2061     		str	r0, [r4, #16]	@ unaligned
 305 00b6 C4F814C0 		str	ip, [r4, #20]	@ unaligned
 306 00ba 3169     		ldr	r1, [r6, #16]	@ unaligned
 307 00bc A161     		str	r1, [r4, #24]	@ unaligned
 308 00be 24E0     		b	.L69
 309              	.L66:
 310 00c0 0420     		movs	r0, #4
 311 00c2 FFF7FEFF 		bl	memp_malloc
 312 00c6 0346     		mov	r3, r0
 313 00c8 0028     		cmp	r0, #0
 314 00ca 00F02781 		beq	.L134
 315              	.L95:
 316 00ce 1846     		mov	r0, r3
 317 00d0 0021     		movs	r1, #0
 318 00d2 2022     		movs	r2, #32
 319 00d4 0093     		str	r3, [sp]
 320 00d6 FFF7FEFF 		bl	memset
 321 00da 009B     		ldr	r3, [sp]
 322 00dc D9F80020 		ldr	r2, [r9]
 323 00e0 0321     		movs	r1, #3
 324 00e2 1A60     		str	r2, [r3]
 325 00e4 D977     		strb	r1, [r3, #31]
 326 00e6 D6F800E0 		ldr	lr, [r6]	@ unaligned
 327 00ea 7568     		ldr	r5, [r6, #4]	@ unaligned
 328 00ec B068     		ldr	r0, [r6, #8]	@ unaligned
 329 00ee F168     		ldr	r1, [r6, #12]	@ unaligned
 330 00f0 DD60     		str	r5, [r3, #12]	@ unaligned
 331 00f2 C3F808E0 		str	lr, [r3, #8]	@ unaligned
 332 00f6 1861     		str	r0, [r3, #16]	@ unaligned
 333 00f8 5961     		str	r1, [r3, #20]	@ unaligned
 334 00fa D6F810E0 		ldr	lr, [r6, #16]	@ unaligned
 335 00fe 2546     		mov	r5, r4
 336 0100 C9F80030 		str	r3, [r9]
 337 0104 1C46     		mov	r4, r3
 338 0106 C3F818E0 		str	lr, [r3, #24]	@ unaligned
 339              	.L69:
 340 010a B8F80020 		ldrh	r2, [r8]
 341 010e 0AEB0203 		add	r3, r10, r2
 342 0112 A8F80030 		strh	r3, [r8]	@ movhi
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnseHgC.s 			page 7


 343 0116 F388     		ldrh	r3, [r6, #6]	@ unaligned
 344 0118 9906     		lsls	r1, r3, #26
 345 011a 10D4     		bmi	.L73
 346 011c 0399     		ldr	r1, [sp, #12]
 347 011e A27F     		ldrb	r2, [r4, #30]	@ zero_extendqisi2
 348 0120 01F00F03 		and	r3, r1, #15
 349 0124 0299     		ldr	r1, [sp, #8]
 350 0126 C3EB8333 		rsb	r3, r3, r3, lsl #14
 351 012a 01EB830B 		add	fp, r1, r3, lsl #2
 352 012e 019B     		ldr	r3, [sp, #4]
 353 0130 0BEBC30A 		add	r10, fp, r3, lsl #3
 354 0134 42F00103 		orr	r3, r2, #1
 355 0138 A4F81CA0 		strh	r10, [r4, #28]	@ movhi
 356 013c A377     		strb	r3, [r4, #30]
 357              	.L73:
 358 013e 7E68     		ldr	r6, [r7, #4]
 359 0140 7088     		ldrh	r0, [r6, #2]	@ unaligned
 360 0142 FFF7FEFF 		bl	lwip_ntohs
 361 0146 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 362 0148 03F00F03 		and	r3, r3, #15
 363 014c C3EB8333 		rsb	r3, r3, r3, lsl #14
 364 0150 00EB830B 		add	fp, r0, r3, lsl #2
 365 0154 F088     		ldrh	r0, [r6, #6]	@ unaligned
 366 0156 FFF7FEFF 		bl	lwip_ntohs
 367 015a D7F804A0 		ldr	r10, [r7, #4]
 368 015e 0023     		movs	r3, #0
 369 0160 C0F30C00 		ubfx	r0, r0, #0, #13
 370 0164 C600     		lsls	r6, r0, #3
 371 0166 1FFA8BFB 		uxth	fp, fp
 372 016a 8AF80030 		strb	r3, [r10]
 373 016e 8AF80130 		strb	r3, [r10, #1]
 374 0172 8AF80230 		strb	r3, [r10, #2]
 375 0176 8AF80330 		strb	r3, [r10, #3]
 376 017a 6368     		ldr	r3, [r4, #4]
 377 017c B344     		add	fp, fp, r6
 378 017e 1FFA8BFB 		uxth	fp, fp
 379 0182 AAF806B0 		strh	fp, [r10, #6]	@ unaligned
 380 0186 AAF80460 		strh	r6, [r10, #4]	@ unaligned
 381 018a 002B     		cmp	r3, #0
 382 018c 00F0D880 		beq	.L74
 383 0190 5A68     		ldr	r2, [r3, #4]
 384 0192 9188     		ldrh	r1, [r2, #4]	@ unaligned
 385 0194 8E42     		cmp	r6, r1
 386 0196 C0F0CD80 		bcc	.L75
 387 019a 49D0     		beq	.L76
 388 019c D388     		ldrh	r3, [r2, #6]	@ unaligned
 389 019e B342     		cmp	r3, r6
 390 01a0 46D8     		bhi	.L76
 391 01a2 4FF0010C 		mov	ip, #1
 392 01a6 0DE0     		b	.L77
 393              	.L81:
 394 01a8 4B68     		ldr	r3, [r1, #4]
 395 01aa 9888     		ldrh	r0, [r3, #4]	@ unaligned
 396 01ac 8642     		cmp	r6, r0
 397 01ae 38D3     		bcc	.L135
 398 01b0 3ED0     		beq	.L76
 399 01b2 D988     		ldrh	r1, [r3, #6]	@ unaligned
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnseHgC.s 			page 8


 400 01b4 B142     		cmp	r1, r6
 401 01b6 3BD8     		bhi	.L76
 402 01b8 D188     		ldrh	r1, [r2, #6]	@ unaligned
 403 01ba 1A46     		mov	r2, r3
 404 01bc 8142     		cmp	r1, r0
 405 01be 18BF     		it	ne
 406 01c0 4FF0000C 		movne	ip, #0
 407              	.L77:
 408 01c4 1168     		ldr	r1, [r2]	@ unaligned
 409 01c6 0029     		cmp	r1, #0
 410 01c8 EED1     		bne	.L81
 411 01ca D388     		ldrh	r3, [r2, #6]	@ unaligned
 412 01cc 1760     		str	r7, [r2]	@ unaligned
 413 01ce B342     		cmp	r3, r6
 414 01d0 3CD0     		beq	.L97
 415 01d2 A37F     		ldrb	r3, [r4, #30]	@ zero_extendqisi2
 416 01d4 13F00103 		ands	r3, r3, #1
 417 01d8 00F0BF80 		beq	.L136
 418              	.L86:
 419 01dc 0020     		movs	r0, #0
 420              	.L138:
 421 01de 05B0     		add	sp, sp, #20
 422              		@ sp needed
 423 01e0 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 424              	.L132:
 425 01e4 BBF84430 		ldrh	r3, [fp, #68]
 426 01e8 0133     		adds	r3, r3, #1
 427 01ea ABF84430 		strh	r3, [fp, #68]	@ movhi
 428              	.L63:
 429 01ee BBF83630 		ldrh	r3, [fp, #54]
 430 01f2 3846     		mov	r0, r7
 431 01f4 0133     		adds	r3, r3, #1
 432 01f6 ABF83630 		strh	r3, [fp, #54]	@ movhi
 433 01fa FFF7FEFF 		bl	pbuf_free
 434 01fe 0020     		movs	r0, #0
 435              	.L126:
 436 0200 05B0     		add	sp, sp, #20
 437              		@ sp needed
 438 0202 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 439              	.L133:
 440 0206 3046     		mov	r0, r6
 441 0208 5146     		mov	r1, r10
 442 020a FFF7FEFF 		bl	ip_reass_remove_oldest_datagram
 443 020e 0028     		cmp	r0, #0
 444 0210 00F08A80 		beq	.L72
 445 0214 B8F80010 		ldrh	r1, [r8]
 446 0218 5144     		add	r1, r1, r10
 447 021a 0329     		cmp	r1, #3
 448 021c 7FF718AF 		ble	.L64
 449 0220 82E0     		b	.L72
 450              	.L135:
 451 0222 CAF80010 		str	r1, [r10]	@ unaligned
 452 0226 D388     		ldrh	r3, [r2, #6]	@ unaligned
 453 0228 B342     		cmp	r3, r6
 454 022a 01D8     		bhi	.L76
 455 022c 8345     		cmp	fp, r0
 456 022e 0CD9     		bls	.L137
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnseHgC.s 			page 9


 457              	.L76:
 458 0230 3846     		mov	r0, r7
 459 0232 B8F80040 		ldrh	r4, [r8]
 460 0236 FFF7FEFF 		bl	pbuf_clen
 461 023a 241A     		subs	r4, r4, r0
 462 023c 3846     		mov	r0, r7
 463 023e A8F80040 		strh	r4, [r8]	@ movhi
 464 0242 FFF7FEFF 		bl	pbuf_free
 465 0246 0020     		movs	r0, #0
 466 0248 C9E7     		b	.L138
 467              	.L137:
 468 024a 1760     		str	r7, [r2]	@ unaligned
 469              	.L97:
 470 024c A37F     		ldrb	r3, [r4, #30]	@ zero_extendqisi2
 471 024e DB07     		lsls	r3, r3, #31
 472 0250 C4D5     		bpl	.L86
 473 0252 BCF1000F 		cmp	ip, #0
 474 0256 C1D0     		beq	.L86
 475              	.L83:
 476 0258 6368     		ldr	r3, [r4, #4]
 477 025a 5F68     		ldr	r7, [r3, #4]
 478 025c BB88     		ldrh	r3, [r7, #4]	@ unaligned
 479 025e 002B     		cmp	r3, #0
 480 0260 BCD1     		bne	.L86
 481 0262 DAF80030 		ldr	r3, [r10]	@ unaligned
 482 0266 7BB1     		cbz	r3, .L87
 483 0268 5B68     		ldr	r3, [r3, #4]
 484 026a BAF80610 		ldrh	r1, [r10, #6]	@ unaligned
 485 026e 9A88     		ldrh	r2, [r3, #4]	@ unaligned
 486 0270 9142     		cmp	r1, r2
 487 0272 06D0     		beq	.L88
 488 0274 B2E7     		b	.L86
 489              	.L89:
 490 0276 5268     		ldr	r2, [r2, #4]
 491 0278 D888     		ldrh	r0, [r3, #6]	@ unaligned
 492 027a 9188     		ldrh	r1, [r2, #4]	@ unaligned
 493 027c 1346     		mov	r3, r2
 494 027e 8842     		cmp	r0, r1
 495 0280 ACD1     		bne	.L86
 496              	.L88:
 497 0282 1A68     		ldr	r2, [r3]	@ unaligned
 498 0284 002A     		cmp	r2, #0
 499 0286 F6D1     		bne	.L89
 500              	.L87:
 501 0288 A28B     		ldrh	r2, [r4, #28]
 502 028a 2346     		mov	r3, r4
 503 028c 1432     		adds	r2, r2, #20
 504 028e A283     		strh	r2, [r4, #28]	@ movhi
 505 0290 53F8082F 		ldr	r2, [r3, #8]!	@ unaligned
 506 0294 3E68     		ldr	r6, [r7]	@ unaligned
 507 0296 D3F804E0 		ldr	lr, [r3, #4]	@ unaligned
 508 029a 9868     		ldr	r0, [r3, #8]	@ unaligned
 509 029c D968     		ldr	r1, [r3, #12]	@ unaligned
 510 029e C7F804E0 		str	lr, [r7, #4]	@ unaligned
 511 02a2 F960     		str	r1, [r7, #12]	@ unaligned
 512 02a4 B860     		str	r0, [r7, #8]	@ unaligned
 513 02a6 3A60     		str	r2, [r7]	@ unaligned
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnseHgC.s 			page 10


 514 02a8 1A69     		ldr	r2, [r3, #16]	@ unaligned
 515 02aa 3A61     		str	r2, [r7, #16]	@ unaligned
 516 02ac A08B     		ldrh	r0, [r4, #28]
 517 02ae FFF7FEFF 		bl	lwip_htons
 518 02b2 0023     		movs	r3, #0
 519 02b4 7880     		strh	r0, [r7, #2]	@ unaligned
 520 02b6 BB71     		strb	r3, [r7, #6]
 521 02b8 FB71     		strb	r3, [r7, #7]
 522 02ba BB72     		strb	r3, [r7, #10]
 523 02bc FB72     		strb	r3, [r7, #11]
 524 02be 3846     		mov	r0, r7
 525 02c0 1421     		movs	r1, #20
 526 02c2 FFF7FEFF 		bl	inet_chksum
 527 02c6 D4F804A0 		ldr	r10, [r4, #4]
 528 02ca 7881     		strh	r0, [r7, #10]	@ unaligned
 529 02cc 66B1     		cbz	r6, .L98
 530              	.L99:
 531 02ce 7768     		ldr	r7, [r6, #4]
 532 02d0 3046     		mov	r0, r6
 533 02d2 6FF01301 		mvn	r1, #19
 534 02d6 FFF7FEFF 		bl	pbuf_header
 535 02da 3146     		mov	r1, r6
 536 02dc 5046     		mov	r0, r10
 537 02de FFF7FEFF 		bl	pbuf_cat
 538 02e2 3E68     		ldr	r6, [r7]	@ unaligned
 539 02e4 002E     		cmp	r6, #0
 540 02e6 F2D1     		bne	.L99
 541              	.L98:
 542 02e8 D9F80030 		ldr	r3, [r9]
 543 02ec 1C4A     		ldr	r2, .L139
 544 02ee 9C42     		cmp	r4, r3
 545 02f0 2368     		ldr	r3, [r4]
 546 02f2 2146     		mov	r1, r4
 547 02f4 18BF     		it	ne
 548 02f6 2B60     		strne	r3, [r5]
 549 02f8 4FF00400 		mov	r0, #4
 550 02fc 08BF     		it	eq
 551 02fe 1360     		streq	r3, [r2]
 552 0300 FFF7FEFF 		bl	memp_free
 553 0304 5046     		mov	r0, r10
 554 0306 B8F80040 		ldrh	r4, [r8]
 555 030a FFF7FEFF 		bl	pbuf_clen
 556 030e 201A     		subs	r0, r4, r0
 557 0310 A8F80000 		strh	r0, [r8]	@ movhi
 558 0314 5046     		mov	r0, r10
 559 0316 05B0     		add	sp, sp, #20
 560              		@ sp needed
 561 0318 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 562              	.L134:
 563 031c 3046     		mov	r0, r6
 564 031e 5146     		mov	r1, r10
 565 0320 FFF7FEFF 		bl	ip_reass_remove_oldest_datagram
 566 0324 8245     		cmp	r10, r0
 567 0326 10DD     		ble	.L71
 568              	.L72:
 569 0328 BBF83C30 		ldrh	r3, [fp, #60]
 570 032c 0133     		adds	r3, r3, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnseHgC.s 			page 11


 571 032e ABF83C30 		strh	r3, [fp, #60]	@ movhi
 572 0332 5CE7     		b	.L63
 573              	.L75:
 574 0334 CAF80030 		str	r3, [r10]	@ unaligned
 575 0338 4FF0010C 		mov	ip, #1
 576 033c 6760     		str	r7, [r4, #4]
 577 033e 85E7     		b	.L97
 578              	.L74:
 579 0340 A37F     		ldrb	r3, [r4, #30]	@ zero_extendqisi2
 580 0342 6760     		str	r7, [r4, #4]
 581 0344 DA07     		lsls	r2, r3, #31
 582 0346 87D4     		bmi	.L83
 583 0348 48E7     		b	.L86
 584              	.L71:
 585 034a 0420     		movs	r0, #4
 586 034c FFF7FEFF 		bl	memp_malloc
 587 0350 0346     		mov	r3, r0
 588 0352 0028     		cmp	r0, #0
 589 0354 7FF4BBAE 		bne	.L95
 590 0358 E6E7     		b	.L72
 591              	.L136:
 592 035a 1846     		mov	r0, r3
 593 035c 50E7     		b	.L126
 594              	.L140:
 595 035e 00BF     		.align	2
 596              	.L139:
 597 0360 00000000 		.word	.LANCHOR0
 598 0364 00000000 		.word	lwip_stats
 599 0368 00000000 		.word	.LANCHOR1
 600              		.size	ip_reass, .-ip_reass
 601              		.section	.text.ip_frag,"ax",%progbits
 602              		.align	2
 603              		.global	ip_frag
 604              		.thumb
 605              		.thumb_func
 606              		.type	ip_frag, %function
 607              	ip_frag:
 608              		@ args = 0, pretend = 0, frame = 48
 609              		@ frame_needed = 0, uses_anonymous_args = 0
 610 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 611 0004 D0F80490 		ldr	r9, [r0, #4]
 612 0008 8FB0     		sub	sp, sp, #60
 613 000a 0891     		str	r1, [sp, #32]
 614 000c 0446     		mov	r4, r0
 615 000e B9F80600 		ldrh	r0, [r9, #6]	@ unaligned
 616 0012 8D8D     		ldrh	r5, [r1, #44]
 617 0014 0C92     		str	r2, [sp, #48]
 618 0016 FFF7FEFF 		bl	lwip_ntohs
 619 001a 2289     		ldrh	r2, [r4, #8]
 620 001c 00F40053 		and	r3, r0, #8192
 621 0020 143A     		subs	r2, r2, #20
 622 0022 9BB2     		uxth	r3, r3
 623 0024 92B2     		uxth	r2, r2
 624 0026 0592     		str	r2, [sp, #20]
 625 0028 0A93     		str	r3, [sp, #40]
 626 002a B5F11403 		subs	r3, r5, #20
 627 002e 48BF     		it	mi
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnseHgC.s 			page 12


 628 0030 A5F10D03 		submi	r3, r5, #13
 629 0034 059F     		ldr	r7, [sp, #20]
 630 0036 C0F30C00 		ubfx	r0, r0, #0, #13
 631 003a C3F3CF03 		ubfx	r3, r3, #3, #16
 632 003e 0690     		str	r0, [sp, #24]
 633 0040 0993     		str	r3, [sp, #36]
 634 0042 002F     		cmp	r7, #0
 635 0044 00F0C080 		beq	.L152
 636 0048 099F     		ldr	r7, [sp, #36]
 637 004a 133D     		subs	r5, r5, #19
 638 004c FB00     		lsls	r3, r7, #3
 639 004e 9BB2     		uxth	r3, r3
 640 0050 DFF87C81 		ldr	r8, .L169+4
 641 0054 0B95     		str	r5, [sp, #44]
 642 0056 0D93     		str	r3, [sp, #52]
 643 0058 0025     		movs	r5, #0
 644 005a 1426     		movs	r6, #20
 645              	.L153:
 646 005c 069F     		ldr	r7, [sp, #24]
 647 005e 0B99     		ldr	r1, [sp, #44]
 648 0060 C7F30C03 		ubfx	r3, r7, #0, #13
 649 0064 0A9F     		ldr	r7, [sp, #40]
 650 0066 0220     		movs	r0, #2
 651 0068 3B43     		orrs	r3, r3, r7
 652 006a 059F     		ldr	r7, [sp, #20]
 653 006c 0793     		str	r3, [sp, #28]
 654 006e 8F42     		cmp	r7, r1
 655 0070 AABF     		itet	ge
 656 0072 0D9F     		ldrge	r7, [sp, #52]
 657 0074 059F     		ldrlt	r7, [sp, #20]
 658 0076 43F40053 		orrge	r3, r3, #8192
 659 007a 4FF01401 		mov	r1, #20
 660 007e 4FF00002 		mov	r2, #0
 661 0082 0497     		str	r7, [sp, #16]
 662 0084 A8BF     		it	ge
 663 0086 0793     		strge	r3, [sp, #28]
 664 0088 FFF7FEFF 		bl	pbuf_alloc
 665 008c 0746     		mov	r7, r0
 666 008e 0028     		cmp	r0, #0
 667 0090 00F09880 		beq	.L155
 668 0094 4368     		ldr	r3, [r0, #4]
 669 0096 D9F80020 		ldr	r2, [r9]	@ unaligned
 670 009a D9F80C10 		ldr	r1, [r9, #12]	@ unaligned
 671 009e D9F804E0 		ldr	lr, [r9, #4]	@ unaligned
 672 00a2 D9F80800 		ldr	r0, [r9, #8]	@ unaligned
 673 00a6 1A60     		str	r2, [r3]	@ unaligned
 674 00a8 C3F804E0 		str	lr, [r3, #4]	@ unaligned
 675 00ac 9860     		str	r0, [r3, #8]	@ unaligned
 676 00ae D960     		str	r1, [r3, #12]	@ unaligned
 677 00b0 D9F81020 		ldr	r2, [r9, #16]	@ unaligned
 678 00b4 1A61     		str	r2, [r3, #16]	@ unaligned
 679 00b6 6268     		ldr	r2, [r4, #4]
 680 00b8 6389     		ldrh	r3, [r4, #10]
 681 00ba 3244     		add	r2, r2, r6
 682 00bc 7968     		ldr	r1, [r7, #4]
 683 00be 9B1B     		subs	r3, r3, r6
 684 00c0 6260     		str	r2, [r4, #4]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnseHgC.s 			page 13


 685 00c2 049A     		ldr	r2, [sp, #16]
 686 00c4 9BB2     		uxth	r3, r3
 687 00c6 0391     		str	r1, [sp, #12]
 688 00c8 6381     		strh	r3, [r4, #10]	@ movhi
 689 00ca 002A     		cmp	r2, #0
 690 00cc 31D0     		beq	.L146
 691 00ce 1646     		mov	r6, r2
 692 00d0 1D46     		mov	r5, r3
 693 00d2 0297     		str	r7, [sp, #8]
 694 00d4 02E0     		b	.L147
 695              	.L166:
 696 00d6 2468     		ldr	r4, [r4]
 697 00d8 56B3     		cbz	r6, .L165
 698              	.L149:
 699 00da 6589     		ldrh	r5, [r4, #10]
 700              	.L147:
 701 00dc B542     		cmp	r5, r6
 702 00de 28BF     		it	cs
 703 00e0 3546     		movcs	r5, r6
 704 00e2 ADB2     		uxth	r5, r5
 705 00e4 002D     		cmp	r5, #0
 706 00e6 F6D0     		beq	.L166
 707 00e8 0520     		movs	r0, #5
 708 00ea FFF7FEFF 		bl	memp_malloc
 709 00ee 8346     		mov	fp, r0
 710 00f0 0346     		mov	r3, r0
 711 00f2 2946     		mov	r1, r5
 712 00f4 0222     		movs	r2, #2
 713 00f6 0320     		movs	r0, #3
 714 00f8 BBF1000F 		cmp	fp, #0
 715 00fc 4CD0     		beq	.L167
 716 00fe 6768     		ldr	r7, [r4, #4]
 717 0100 0195     		str	r5, [sp, #4]
 718 0102 0097     		str	r7, [sp]
 719 0104 FFF7FEFF 		bl	pbuf_alloced_custom
 720 0108 8246     		mov	r10, r0
 721 010a 2046     		mov	r0, r4
 722 010c BAF1000F 		cmp	r10, #0
 723 0110 4BD0     		beq	.L168
 724 0112 761B     		subs	r6, r6, r5
 725 0114 FFF7FEFF 		bl	pbuf_ref
 726 0118 B6B2     		uxth	r6, r6
 727 011a CBF81440 		str	r4, [fp, #20]
 728 011e CBF81080 		str	r8, [fp, #16]
 729 0122 5146     		mov	r1, r10
 730 0124 0298     		ldr	r0, [sp, #8]
 731 0126 FFF7FEFF 		bl	pbuf_cat
 732 012a 0EB1     		cbz	r6, .L165
 733 012c 2468     		ldr	r4, [r4]
 734 012e D4E7     		b	.L149
 735              	.L165:
 736 0130 029F     		ldr	r7, [sp, #8]
 737              	.L146:
 738 0132 0798     		ldr	r0, [sp, #28]
 739 0134 FFF7FEFF 		bl	lwip_htons
 740 0138 0499     		ldr	r1, [sp, #16]
 741 013a 039A     		ldr	r2, [sp, #12]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnseHgC.s 			page 14


 742 013c 01F11403 		add	r3, r1, #20
 743 0140 D080     		strh	r0, [r2, #6]	@ unaligned
 744 0142 98B2     		uxth	r0, r3
 745 0144 FFF7FEFF 		bl	lwip_htons
 746 0148 0399     		ldr	r1, [sp, #12]
 747 014a 0023     		movs	r3, #0
 748 014c 4880     		strh	r0, [r1, #2]	@ unaligned
 749 014e 8B72     		strb	r3, [r1, #10]
 750 0150 CB72     		strb	r3, [r1, #11]
 751 0152 0846     		mov	r0, r1
 752 0154 1421     		movs	r1, #20
 753 0156 FFF7FEFF 		bl	inet_chksum
 754 015a 089A     		ldr	r2, [sp, #32]
 755 015c 0399     		ldr	r1, [sp, #12]
 756 015e 5369     		ldr	r3, [r2, #20]
 757 0160 4881     		strh	r0, [r1, #10]	@ unaligned
 758 0162 3946     		mov	r1, r7
 759 0164 1046     		mov	r0, r2
 760 0166 0C9A     		ldr	r2, [sp, #48]
 761 0168 9847     		blx	r3
 762 016a 184A     		ldr	r2, .L169
 763 016c 3846     		mov	r0, r7
 764 016e 138E     		ldrh	r3, [r2, #48]
 765 0170 0133     		adds	r3, r3, #1
 766 0172 1386     		strh	r3, [r2, #48]	@ movhi
 767 0174 FFF7FEFF 		bl	pbuf_free
 768 0178 059F     		ldr	r7, [sp, #20]
 769 017a 0499     		ldr	r1, [sp, #16]
 770 017c 069B     		ldr	r3, [sp, #24]
 771 017e C1EB070B 		rsb	fp, r1, r7
 772 0182 1FFA8BF7 		uxth	r7, fp
 773 0186 0597     		str	r7, [sp, #20]
 774 0188 099F     		ldr	r7, [sp, #36]
 775 018a 3B44     		add	r3, r3, r7
 776 018c 059F     		ldr	r7, [sp, #20]
 777 018e 9BB2     		uxth	r3, r3
 778 0190 0693     		str	r3, [sp, #24]
 779 0192 CFB1     		cbz	r7, .L152
 780 0194 2E46     		mov	r6, r5
 781 0196 61E7     		b	.L153
 782              	.L167:
 783 0198 029F     		ldr	r7, [sp, #8]
 784 019a 3846     		mov	r0, r7
 785 019c FFF7FEFF 		bl	pbuf_free
 786 01a0 FF20     		movs	r0, #255
 787              	.L144:
 788 01a2 40B2     		sxtb	r0, r0
 789 01a4 0FB0     		add	sp, sp, #60
 790              		@ sp needed
 791 01a6 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 792              	.L168:
 793 01aa 029F     		ldr	r7, [sp, #8]
 794 01ac 5946     		mov	r1, fp
 795 01ae 0520     		movs	r0, #5
 796 01b0 FFF7FEFF 		bl	memp_free
 797 01b4 3846     		mov	r0, r7
 798 01b6 FFF7FEFF 		bl	pbuf_free
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnseHgC.s 			page 15


 799 01ba FF20     		movs	r0, #255
 800 01bc 40B2     		sxtb	r0, r0
 801 01be 0FB0     		add	sp, sp, #60
 802              		@ sp needed
 803 01c0 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 804              	.L155:
 805 01c4 FF20     		movs	r0, #255
 806 01c6 ECE7     		b	.L144
 807              	.L152:
 808 01c8 0020     		movs	r0, #0
 809 01ca EAE7     		b	.L144
 810              	.L170:
 811              		.align	2
 812              	.L169:
 813 01cc 00000000 		.word	lwip_stats
 814 01d0 00000000 		.word	ipfrag_free_pbuf_custom
 815              		.size	ip_frag, .-ip_frag
 816              		.section	.bss.reassdatagrams,"aw",%nobits
 817              		.align	2
 818              		.set	.LANCHOR0,. + 0
 819              		.type	reassdatagrams, %object
 820              		.size	reassdatagrams, 4
 821              	reassdatagrams:
 822 0000 00000000 		.space	4
 823              		.section	.bss.ip_reass_pbufcount,"aw",%nobits
 824              		.align	1
 825              		.set	.LANCHOR1,. + 0
 826              		.type	ip_reass_pbufcount, %object
 827              		.size	ip_reass_pbufcount, 2
 828              	ip_reass_pbufcount:
 829 0000 0000     		.space	2
 830              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
