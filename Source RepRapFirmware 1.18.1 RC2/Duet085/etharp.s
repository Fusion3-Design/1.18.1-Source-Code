ARM GAS  C:\Users\George\AppData\Local\Temp\ccflMX0D.s 			page 1


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
  14              		.file	"etharp.c"
  15              		.section	.text.etharp_find_entry,"ax",%progbits
  16              		.align	2
  17              		.thumb
  18              		.thumb_func
  19              		.type	etharp_find_entry, %function
  20              	etharp_find_entry:
  21              		@ args = 0, pretend = 0, frame = 16
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  24 0004 494C     		ldr	r4, .L43
  25 0006 85B0     		sub	sp, sp, #20
  26 0008 0023     		movs	r3, #0
  27 000a 4FF0100C 		mov	ip, #16
  28 000e A4F11208 		sub	r8, r4, #18
  29 0012 0646     		mov	r6, r0
  30 0014 0291     		str	r1, [sp, #8]
  31 0016 4246     		mov	r2, r8
  32 0018 9946     		mov	r9, r3
  33 001a 0393     		str	r3, [sp, #12]
  34 001c E246     		mov	r10, ip
  35 001e E346     		mov	fp, ip
  36 0020 CDF804C0 		str	ip, [sp, #4]
  37 0024 0093     		str	r3, [sp]
  38 0026 06E0     		b	.L10
  39              	.L4:
  40 0028 0133     		adds	r3, r3, #1
  41 002a 102B     		cmp	r3, #16
  42 002c 04F11404 		add	r4, r4, #20
  43 0030 02F11402 		add	r2, r2, #20
  44 0034 1AD0     		beq	.L37
  45              	.L10:
  46 0036 019D     		ldr	r5, [sp, #4]
  47 0038 D9B2     		uxtb	r1, r3
  48 003a 102D     		cmp	r5, #16
  49 003c 907C     		ldrb	r0, [r2, #18]	@ zero_extendqisi2
  50 003e 2FD0     		beq	.L38
  51 0040 0028     		cmp	r0, #0
  52 0042 F1D0     		beq	.L4
  53              	.L3:
  54 0044 26B1     		cbz	r6, .L5
  55 0046 3768     		ldr	r7, [r6]
  56 0048 54F80E5C 		ldr	r5, [r4, #-14]
  57 004c AF42     		cmp	r7, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\ccflMX0D.s 			page 2


  58 004e 5CD0     		beq	.L39
  59              	.L5:
  60 0050 0128     		cmp	r0, #1
  61 0052 29D0     		beq	.L40
  62 0054 D07C     		ldrb	r0, [r2, #19]	@ zero_extendqisi2
  63 0056 0133     		adds	r3, r3, #1
  64 0058 4845     		cmp	r0, r9
  65 005a 24BF     		itt	cs
  66 005c 8A46     		movcs	r10, r1
  67 005e 8146     		movcs	r9, r0
  68 0060 102B     		cmp	r3, #16
  69 0062 04F11404 		add	r4, r4, #20
  70 0066 02F11402 		add	r2, r2, #20
  71 006a E4D1     		bne	.L10
  72              	.L37:
  73 006c 029B     		ldr	r3, [sp, #8]
  74 006e 019D     		ldr	r5, [sp, #4]
  75 0070 9A07     		lsls	r2, r3, #30
  76 0072 58D4     		bmi	.L21
  77 0074 6CB2     		sxtb	r4, r5
  78 0076 102C     		cmp	r4, #16
  79 0078 27D0     		beq	.L41
  80 007a EDB2     		uxtb	r5, r5
  81              	.L13:
  82 007c A300     		lsls	r3, r4, #2
  83 007e 26B1     		cbz	r6, .L18
  84 0080 3168     		ldr	r1, [r6]
  85 0082 1A19     		adds	r2, r3, r4
  86 0084 08EB8202 		add	r2, r8, r2, lsl #2
  87 0088 5160     		str	r1, [r2, #4]
  88              	.L18:
  89 008a 2344     		add	r3, r3, r4
  90 008c 08EB8308 		add	r8, r8, r3, lsl #2
  91 0090 0023     		movs	r3, #0
  92 0092 E8B2     		uxtb	r0, r5
  93 0094 88F81330 		strb	r3, [r8, #19]
  94              	.L6:
  95 0098 40B2     		sxtb	r0, r0
  96 009a 05B0     		add	sp, sp, #20
  97              		@ sp needed
  98 009c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
  99              	.L38:
 100 00a0 0028     		cmp	r0, #0
 101 00a2 CFD1     		bne	.L3
 102 00a4 0191     		str	r1, [sp, #4]
 103 00a6 BFE7     		b	.L4
 104              	.L40:
 105 00a8 54F8120C 		ldr	r0, [r4, #-18]
 106 00ac 30B1     		cbz	r0, .L8
 107 00ae D07C     		ldrb	r0, [r2, #19]	@ zero_extendqisi2
 108 00b0 009D     		ldr	r5, [sp]
 109 00b2 A842     		cmp	r0, r5
 110 00b4 B8D3     		bcc	.L4
 111 00b6 8C46     		mov	ip, r1
 112 00b8 0090     		str	r0, [sp]
 113 00ba B5E7     		b	.L4
 114              	.L8:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccflMX0D.s 			page 3


 115 00bc D07C     		ldrb	r0, [r2, #19]	@ zero_extendqisi2
 116 00be 039F     		ldr	r7, [sp, #12]
 117 00c0 B842     		cmp	r0, r7
 118 00c2 B1D3     		bcc	.L4
 119 00c4 8B46     		mov	fp, r1
 120 00c6 0390     		str	r0, [sp, #12]
 121 00c8 AEE7     		b	.L4
 122              	.L41:
 123 00ca DB07     		lsls	r3, r3, #31
 124 00cc 2BD5     		bpl	.L21
 125 00ce BAF1100F 		cmp	r10, #16
 126 00d2 1FD1     		bne	.L42
 127 00d4 BBF1100F 		cmp	fp, #16
 128 00d8 1FD0     		beq	.L16
 129 00da 5FFA8BF5 		uxtb	r5, fp
 130              	.L15:
 131 00de AF00     		lsls	r7, r5, #2
 132 00e0 07EB0509 		add	r9, r7, r5
 133 00e4 4FEA8909 		lsl	r9, r9, #2
 134 00e8 58F80900 		ldr	r0, [r8, r9]
 135 00ec 2C46     		mov	r4, r5
 136 00ee DFF840A0 		ldr	r10, .L43+4
 137 00f2 20B1     		cbz	r0, .L17
 138 00f4 FFF7FEFF 		bl	pbuf_free
 139 00f8 0023     		movs	r3, #0
 140 00fa 4AF80930 		str	r3, [r10, r9]
 141              	.L17:
 142 00fe 7B19     		adds	r3, r7, r5
 143 0100 08EB8303 		add	r3, r8, r3, lsl #2
 144 0104 0022     		movs	r2, #0
 145 0106 9A74     		strb	r2, [r3, #18]
 146 0108 B8E7     		b	.L13
 147              	.L39:
 148 010a C8B2     		uxtb	r0, r1
 149 010c 40B2     		sxtb	r0, r0
 150 010e 05B0     		add	sp, sp, #20
 151              		@ sp needed
 152 0110 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 153              	.L42:
 154 0114 5FFA8AF5 		uxtb	r5, r10
 155 0118 E1E7     		b	.L15
 156              	.L16:
 157 011a BCF1100F 		cmp	ip, #16
 158 011e 02D0     		beq	.L21
 159 0120 5FFA8CF5 		uxtb	r5, ip
 160 0124 DBE7     		b	.L15
 161              	.L21:
 162 0126 FF20     		movs	r0, #255
 163 0128 B6E7     		b	.L6
 164              	.L44:
 165 012a 00BF     		.align	2
 166              	.L43:
 167 012c 12000000 		.word	.LANCHOR0+18
 168 0130 00000000 		.word	.LANCHOR0
 169              		.size	etharp_find_entry, .-etharp_find_entry
 170              		.section	.text.etharp_send_ip,"ax",%progbits
 171              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccflMX0D.s 			page 4


 172              		.thumb
 173              		.thumb_func
 174              		.type	etharp_send_ip, %function
 175              	etharp_send_ip:
 176              		@ args = 0, pretend = 0, frame = 0
 177              		@ frame_needed = 0, uses_anonymous_args = 0
 178 0000 70B5     		push	{r4, r5, r6, lr}
 179 0002 4C68     		ldr	r4, [r1, #4]
 180 0004 1D68     		ldr	r5, [r3]	@ unaligned
 181 0006 C4F80250 		str	r5, [r4, #2]	@ unaligned
 182 000a 9B88     		ldrh	r3, [r3, #4]	@ unaligned
 183 000c 0825     		movs	r5, #8
 184 000e E380     		strh	r3, [r4, #6]	@ unaligned
 185 0010 1668     		ldr	r6, [r2]	@ unaligned
 186 0012 0023     		movs	r3, #0
 187 0014 A660     		str	r6, [r4, #8]	@ unaligned
 188 0016 9288     		ldrh	r2, [r2, #4]	@ unaligned
 189 0018 E373     		strb	r3, [r4, #15]
 190 001a A281     		strh	r2, [r4, #12]	@ unaligned
 191 001c A573     		strb	r5, [r4, #14]
 192 001e 8369     		ldr	r3, [r0, #24]
 193 0020 9847     		blx	r3
 194 0022 70BD     		pop	{r4, r5, r6, pc}
 195              		.size	etharp_send_ip, .-etharp_send_ip
 196              		.section	.text.etharp_tmr,"ax",%progbits
 197              		.align	2
 198              		.global	etharp_tmr
 199              		.thumb
 200              		.thumb_func
 201              		.type	etharp_tmr, %function
 202              	etharp_tmr:
 203              		@ args = 0, pretend = 0, frame = 0
 204              		@ frame_needed = 0, uses_anonymous_args = 0
 205 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 206 0004 174D     		ldr	r5, .L61
 207 0006 4FF00008 		mov	r8, #0
 208 000a A5F11204 		sub	r4, r5, #18
 209 000e 04F5A076 		add	r6, r4, #320
 210 0012 0227     		movs	r7, #2
 211 0014 09E0     		b	.L54
 212              	.L60:
 213 0016 012B     		cmp	r3, #1
 214 0018 21D0     		beq	.L58
 215 001a 032B     		cmp	r3, #3
 216 001c 08BF     		it	eq
 217 001e A774     		strbeq	r7, [r4, #18]
 218              	.L48:
 219 0020 1434     		adds	r4, r4, #20
 220 0022 B442     		cmp	r4, r6
 221 0024 05F11405 		add	r5, r5, #20
 222 0028 17D0     		beq	.L59
 223              	.L54:
 224 002a A37C     		ldrb	r3, [r4, #18]	@ zero_extendqisi2
 225 002c 002B     		cmp	r3, #0
 226 002e F7D0     		beq	.L48
 227 0030 E27C     		ldrb	r2, [r4, #19]	@ zero_extendqisi2
 228 0032 0132     		adds	r2, r2, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccflMX0D.s 			page 5


 229 0034 D2B2     		uxtb	r2, r2
 230 0036 EF2A     		cmp	r2, #239
 231 0038 E274     		strb	r2, [r4, #19]
 232 003a ECD9     		bls	.L60
 233              	.L49:
 234 003c 55F8123C 		ldr	r3, [r5, #-18]
 235 0040 1846     		mov	r0, r3
 236 0042 1BB1     		cbz	r3, .L52
 237 0044 FFF7FEFF 		bl	pbuf_free
 238 0048 45F8128C 		str	r8, [r5, #-18]
 239              	.L52:
 240 004c 84F81280 		strb	r8, [r4, #18]
 241 0050 1434     		adds	r4, r4, #20
 242 0052 B442     		cmp	r4, r6
 243 0054 05F11405 		add	r5, r5, #20
 244 0058 E7D1     		bne	.L54
 245              	.L59:
 246 005a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 247              	.L58:
 248 005e 012A     		cmp	r2, #1
 249 0060 ECD8     		bhi	.L49
 250 0062 DDE7     		b	.L48
 251              	.L62:
 252              		.align	2
 253              	.L61:
 254 0064 12000000 		.word	.LANCHOR0+18
 255              		.size	etharp_tmr, .-etharp_tmr
 256              		.section	.text.etharp_cleanup_netif,"ax",%progbits
 257              		.align	2
 258              		.global	etharp_cleanup_netif
 259              		.thumb
 260              		.thumb_func
 261              		.type	etharp_cleanup_netif, %function
 262              	etharp_cleanup_netif:
 263              		@ args = 0, pretend = 0, frame = 0
 264              		@ frame_needed = 0, uses_anonymous_args = 0
 265 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 266 0002 0E4C     		ldr	r4, .L75
 267 0004 0646     		mov	r6, r0
 268 0006 04F5A075 		add	r5, r4, #320
 269 000a 0027     		movs	r7, #0
 270 000c 02E0     		b	.L67
 271              	.L64:
 272 000e 1434     		adds	r4, r4, #20
 273 0010 AC42     		cmp	r4, r5
 274 0012 11D0     		beq	.L74
 275              	.L67:
 276 0014 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 277 0016 002B     		cmp	r3, #0
 278 0018 F9D0     		beq	.L64
 279 001a 2368     		ldr	r3, [r4]
 280 001c B342     		cmp	r3, r6
 281 001e F6D1     		bne	.L64
 282 0020 54F8083C 		ldr	r3, [r4, #-8]
 283 0024 1846     		mov	r0, r3
 284 0026 1BB1     		cbz	r3, .L65
 285 0028 FFF7FEFF 		bl	pbuf_free
ARM GAS  C:\Users\George\AppData\Local\Temp\ccflMX0D.s 			page 6


 286 002c 44F8087C 		str	r7, [r4, #-8]
 287              	.L65:
 288 0030 A772     		strb	r7, [r4, #10]
 289 0032 1434     		adds	r4, r4, #20
 290 0034 AC42     		cmp	r4, r5
 291 0036 EDD1     		bne	.L67
 292              	.L74:
 293 0038 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 294              	.L76:
 295 003a 00BF     		.align	2
 296              	.L75:
 297 003c 08000000 		.word	.LANCHOR0+8
 298              		.size	etharp_cleanup_netif, .-etharp_cleanup_netif
 299              		.section	.text.etharp_find_addr,"ax",%progbits
 300              		.align	2
 301              		.global	etharp_find_addr
 302              		.thumb
 303              		.thumb_func
 304              		.type	etharp_find_addr, %function
 305              	etharp_find_addr:
 306              		@ args = 0, pretend = 0, frame = 0
 307              		@ frame_needed = 0, uses_anonymous_args = 0
 308 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 309 0002 0846     		mov	r0, r1
 310 0004 0221     		movs	r1, #2
 311 0006 1746     		mov	r7, r2
 312 0008 1E46     		mov	r6, r3
 313 000a FFF7FEFF 		bl	etharp_find_entry
 314 000e 0028     		cmp	r0, #0
 315 0010 0EDB     		blt	.L80
 316 0012 00EB8004 		add	r4, r0, r0, lsl #2
 317 0016 074D     		ldr	r5, .L81
 318 0018 A400     		lsls	r4, r4, #2
 319 001a 2919     		adds	r1, r5, r4
 320 001c 8B7C     		ldrb	r3, [r1, #18]	@ zero_extendqisi2
 321 001e 012B     		cmp	r3, #1
 322 0020 06D9     		bls	.L80
 323 0022 01F10C04 		add	r4, r1, #12
 324 0026 0431     		adds	r1, r1, #4
 325 0028 3C60     		str	r4, [r7]
 326 002a 3160     		str	r1, [r6]
 327              	.L78:
 328 002c 40B2     		sxtb	r0, r0
 329 002e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 330              	.L80:
 331 0030 FF20     		movs	r0, #255
 332 0032 FBE7     		b	.L78
 333              	.L82:
 334              		.align	2
 335              	.L81:
 336 0034 00000000 		.word	.LANCHOR0
 337              		.size	etharp_find_addr, .-etharp_find_addr
 338              		.section	.text.etharp_request,"ax",%progbits
 339              		.align	2
 340              		.global	etharp_request
 341              		.thumb
 342              		.thumb_func
ARM GAS  C:\Users\George\AppData\Local\Temp\ccflMX0D.s 			page 7


 343              		.type	etharp_request, %function
 344              	etharp_request:
 345              		@ args = 0, pretend = 0, frame = 0
 346              		@ frame_needed = 0, uses_anonymous_args = 0
 347 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 348 0004 0022     		movs	r2, #0
 349 0006 0546     		mov	r5, r0
 350 0008 8846     		mov	r8, r1
 351 000a 0320     		movs	r0, #3
 352 000c 2C21     		movs	r1, #44
 353 000e FFF7FEFF 		bl	pbuf_alloc
 354 0012 05F12F07 		add	r7, r5, #47
 355 0016 0646     		mov	r6, r0
 356 0018 05F10409 		add	r9, r5, #4
 357 001c 0028     		cmp	r0, #0
 358 001e 3ED0     		beq	.L86
 359 0020 0120     		movs	r0, #1
 360 0022 7468     		ldr	r4, [r6, #4]
 361 0024 FFF7FEFF 		bl	lwip_htons
 362 0028 204A     		ldr	r2, .L87
 363 002a E082     		strh	r0, [r4, #22]	@ unaligned
 364 002c 3968     		ldr	r1, [r7]	@ unaligned
 365 002e 1068     		ldr	r0, [r2]	@ unaligned
 366 0030 1F4B     		ldr	r3, .L87+4
 367 0032 A161     		str	r1, [r4, #24]	@ unaligned
 368 0034 B7F804E0 		ldrh	lr, [r7, #4]	@ unaligned
 369 0038 9188     		ldrh	r1, [r2, #4]	@ unaligned
 370 003a C4F82200 		str	r0, [r4, #34]	@ unaligned
 371 003e 9A88     		ldrh	r2, [r3, #4]	@ unaligned
 372 0040 1868     		ldr	r0, [r3]	@ unaligned
 373 0042 A4F81CE0 		strh	lr, [r4, #28]	@ unaligned
 374 0046 E184     		strh	r1, [r4, #38]	@ unaligned
 375 0048 C4F80200 		str	r0, [r4, #2]	@ unaligned
 376 004c E280     		strh	r2, [r4, #6]	@ unaligned
 377 004e 3A68     		ldr	r2, [r7]	@ unaligned
 378 0050 0620     		movs	r0, #6
 379 0052 A260     		str	r2, [r4, #8]	@ unaligned
 380 0054 BA88     		ldrh	r2, [r7, #4]	@ unaligned
 381 0056 0423     		movs	r3, #4
 382 0058 A281     		strh	r2, [r4, #12]	@ unaligned
 383 005a D9F80020 		ldr	r2, [r9]	@ unaligned
 384 005e 0121     		movs	r1, #1
 385 0060 C4F81E20 		str	r2, [r4, #30]	@ unaligned
 386 0064 D8F80070 		ldr	r7, [r8]	@ unaligned
 387 0068 0022     		movs	r2, #0
 388 006a 6375     		strb	r3, [r4, #21]
 389 006c 2075     		strb	r0, [r4, #20]
 390 006e 0823     		movs	r3, #8
 391 0070 A762     		str	r7, [r4, #40]	@ unaligned
 392 0072 AF69     		ldr	r7, [r5, #24]
 393 0074 6174     		strb	r1, [r4, #17]
 394 0076 E073     		strb	r0, [r4, #15]
 395 0078 2274     		strb	r2, [r4, #16]
 396 007a E274     		strb	r2, [r4, #19]
 397 007c A374     		strb	r3, [r4, #18]
 398 007e A373     		strb	r3, [r4, #14]
 399 0080 3146     		mov	r1, r6
ARM GAS  C:\Users\George\AppData\Local\Temp\ccflMX0D.s 			page 8


 400 0082 2846     		mov	r0, r5
 401 0084 B847     		blx	r7
 402 0086 0B4B     		ldr	r3, .L87+8
 403 0088 0446     		mov	r4, r0
 404 008a 1A8B     		ldrh	r2, [r3, #24]
 405 008c 3046     		mov	r0, r6
 406 008e 0132     		adds	r2, r2, #1
 407 0090 1A83     		strh	r2, [r3, #24]	@ movhi
 408 0092 FFF7FEFF 		bl	pbuf_free
 409 0096 2046     		mov	r0, r4
 410              	.L85:
 411 0098 40B2     		sxtb	r0, r0
 412 009a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 413              	.L86:
 414 009e 054B     		ldr	r3, .L87+8
 415 00a0 FF20     		movs	r0, #255
 416 00a2 9A8C     		ldrh	r2, [r3, #36]
 417 00a4 0132     		adds	r2, r2, #1
 418 00a6 9A84     		strh	r2, [r3, #36]	@ movhi
 419 00a8 F6E7     		b	.L85
 420              	.L88:
 421 00aa 00BF     		.align	2
 422              	.L87:
 423 00ac 00000000 		.word	.LANCHOR1
 424 00b0 00000000 		.word	.LANCHOR2
 425 00b4 00000000 		.word	lwip_stats
 426              		.size	etharp_request, .-etharp_request
 427              		.section	.text.etharp_output_to_arp_index,"ax",%progbits
 428              		.align	2
 429              		.thumb
 430              		.thumb_func
 431              		.type	etharp_output_to_arp_index, %function
 432              	etharp_output_to_arp_index:
 433              		@ args = 0, pretend = 0, frame = 8
 434              		@ frame_needed = 0, uses_anonymous_args = 0
 435 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 436 0004 9500     		lsls	r5, r2, #2
 437 0006 144C     		ldr	r4, .L94
 438 0008 AB18     		adds	r3, r5, r2
 439 000a 04EB8303 		add	r3, r4, r3, lsl #2
 440 000e 93F812C0 		ldrb	ip, [r3, #18]	@ zero_extendqisi2
 441 0012 82B0     		sub	sp, sp, #8
 442 0014 BCF1020F 		cmp	ip, #2
 443 0018 03F11006 		add	r6, r3, #16
 444 001c 0F46     		mov	r7, r1
 445 001e 8046     		mov	r8, r0
 446 0020 0CD0     		beq	.L93
 447              	.L91:
 448 0022 2A44     		add	r2, r2, r5
 449 0024 04EB8203 		add	r3, r4, r2, lsl #2
 450 0028 4046     		mov	r0, r8
 451 002a 0C33     		adds	r3, r3, #12
 452 002c 3946     		mov	r1, r7
 453 002e 08F12F02 		add	r2, r8, #47
 454 0032 02B0     		add	sp, sp, #8
 455              		@ sp needed
 456 0034 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccflMX0D.s 			page 9


 457 0038 FFF7FEBF 		b	etharp_send_ip
 458              	.L93:
 459 003c D97C     		ldrb	r1, [r3, #19]	@ zero_extendqisi2
 460 003e E329     		cmp	r1, #227
 461 0040 EFD9     		bls	.L91
 462 0042 191D     		adds	r1, r3, #4
 463 0044 0192     		str	r2, [sp, #4]
 464 0046 FFF7FEFF 		bl	etharp_request
 465 004a 019A     		ldr	r2, [sp, #4]
 466 004c 0028     		cmp	r0, #0
 467 004e E8D1     		bne	.L91
 468 0050 0323     		movs	r3, #3
 469 0052 B370     		strb	r3, [r6, #2]
 470 0054 E5E7     		b	.L91
 471              	.L95:
 472 0056 00BF     		.align	2
 473              	.L94:
 474 0058 00000000 		.word	.LANCHOR0
 475              		.size	etharp_output_to_arp_index, .-etharp_output_to_arp_index
 476              		.section	.text.etharp_query,"ax",%progbits
 477              		.align	2
 478              		.global	etharp_query
 479              		.thumb
 480              		.thumb_func
 481              		.type	etharp_query, %function
 482              	etharp_query:
 483              		@ args = 0, pretend = 0, frame = 0
 484              		@ frame_needed = 0, uses_anonymous_args = 0
 485 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 486 0004 0646     		mov	r6, r0
 487 0006 0C46     		mov	r4, r1
 488 0008 0868     		ldr	r0, [r1]
 489 000a 3146     		mov	r1, r6
 490 000c 1746     		mov	r7, r2
 491 000e FFF7FEFF 		bl	ip4_addr_isbroadcast
 492 0012 0028     		cmp	r0, #0
 493 0014 44D1     		bne	.L114
 494 0016 2368     		ldr	r3, [r4]
 495 0018 03F0F002 		and	r2, r3, #240
 496 001c E02A     		cmp	r2, #224
 497 001e 3FD0     		beq	.L114
 498 0020 002B     		cmp	r3, #0
 499 0022 3DD0     		beq	.L114
 500 0024 2046     		mov	r0, r4
 501 0026 0121     		movs	r1, #1
 502 0028 FFF7FEFF 		bl	etharp_find_entry
 503 002c 051E     		subs	r5, r0, #0
 504 002e 2EDB     		blt	.L130
 505 0030 4FEA8509 		lsl	r9, r5, #2
 506 0034 DFF8E480 		ldr	r8, .L134+8
 507 0038 09EB0502 		add	r2, r9, r5
 508 003c 08EB8202 		add	r2, r8, r2, lsl #2
 509 0040 937C     		ldrb	r3, [r2, #18]	@ zero_extendqisi2
 510 0042 1032     		adds	r2, r2, #16
 511 0044 83B1     		cbz	r3, .L131
 512 0046 012B     		cmp	r3, #1
 513 0048 10D0     		beq	.L100
ARM GAS  C:\Users\George\AppData\Local\Temp\ccflMX0D.s 			page 10


 514 004a 6FB3     		cbz	r7, .L132
 515              	.L102:
 516 004c 314C     		ldr	r4, .L134
 517 004e A944     		add	r9, r9, r5
 518 0050 08EB8903 		add	r3, r8, r9, lsl #2
 519 0054 2570     		strb	r5, [r4]
 520 0056 3046     		mov	r0, r6
 521 0058 3946     		mov	r1, r7
 522 005a 06F12F02 		add	r2, r6, #47
 523 005e 0C33     		adds	r3, r3, #12
 524 0060 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 525 0064 FFF7FEBF 		b	etharp_send_ip
 526              	.L131:
 527 0068 0123     		movs	r3, #1
 528 006a 9370     		strb	r3, [r2, #2]
 529              	.L100:
 530 006c 2146     		mov	r1, r4
 531 006e 3046     		mov	r0, r6
 532 0070 FFF7FEFF 		bl	etharp_request
 533 0074 3FB1     		cbz	r7, .L117
 534 0076 09EB0503 		add	r3, r9, r5
 535 007a 08EB8303 		add	r3, r8, r3, lsl #2
 536 007e 9B7C     		ldrb	r3, [r3, #18]	@ zero_extendqisi2
 537 0080 012B     		cmp	r3, #1
 538 0082 E3D8     		bhi	.L102
 539 0084 16D0     		beq	.L133
 540              	.L117:
 541 0086 0546     		mov	r5, r0
 542              	.L97:
 543 0088 68B2     		sxtb	r0, r5
 544 008a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 545              	.L130:
 546 008e 002F     		cmp	r7, #0
 547 0090 FAD0     		beq	.L97
 548 0092 214B     		ldr	r3, .L134+4
 549 0094 68B2     		sxtb	r0, r5
 550 0096 9A8C     		ldrh	r2, [r3, #36]
 551 0098 0132     		adds	r2, r2, #1
 552 009a 9A84     		strh	r2, [r3, #36]	@ movhi
 553 009c BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 554              	.L114:
 555 00a0 F225     		movs	r5, #242
 556 00a2 68B2     		sxtb	r0, r5
 557 00a4 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 558              	.L132:
 559 00a8 3046     		mov	r0, r6
 560 00aa 2146     		mov	r1, r4
 561 00ac BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 562 00b0 FFF7FEBF 		b	etharp_request
 563              	.L133:
 564 00b4 3B7B     		ldrb	r3, [r7, #12]	@ zero_extendqisi2
 565 00b6 3C46     		mov	r4, r7
 566 00b8 012B     		cmp	r3, #1
 567 00ba 03D0     		beq	.L105
 568 00bc 15E0     		b	.L104
 569              	.L106:
 570 00be 237B     		ldrb	r3, [r4, #12]	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccflMX0D.s 			page 11


 571 00c0 012B     		cmp	r3, #1
 572 00c2 12D1     		bne	.L104
 573              	.L105:
 574 00c4 2468     		ldr	r4, [r4]
 575 00c6 002C     		cmp	r4, #0
 576 00c8 F9D1     		bne	.L106
 577 00ca 3846     		mov	r0, r7
 578 00cc FFF7FEFF 		bl	pbuf_ref
 579 00d0 3C46     		mov	r4, r7
 580              	.L108:
 581 00d2 09EB0503 		add	r3, r9, r5
 582 00d6 58F82300 		ldr	r0, [r8, r3, lsl #2]
 583 00da 08B1     		cbz	r0, .L110
 584 00dc FFF7FEFF 		bl	pbuf_free
 585              	.L110:
 586 00e0 4D44     		add	r5, r5, r9
 587 00e2 48F82540 		str	r4, [r8, r5, lsl #2]
 588 00e6 0025     		movs	r5, #0
 589 00e8 CEE7     		b	.L97
 590              	.L104:
 591 00ea 2189     		ldrh	r1, [r4, #8]
 592 00ec 0320     		movs	r0, #3
 593 00ee 0022     		movs	r2, #0
 594 00f0 FFF7FEFF 		bl	pbuf_alloc
 595 00f4 0446     		mov	r4, r0
 596 00f6 38B1     		cbz	r0, .L109
 597 00f8 3946     		mov	r1, r7
 598 00fa FFF7FEFF 		bl	pbuf_copy
 599 00fe 0028     		cmp	r0, #0
 600 0100 E7D0     		beq	.L108
 601 0102 2046     		mov	r0, r4
 602 0104 FFF7FEFF 		bl	pbuf_free
 603              	.L109:
 604 0108 034B     		ldr	r3, .L134+4
 605 010a FF25     		movs	r5, #255
 606 010c 9A8C     		ldrh	r2, [r3, #36]
 607 010e 0132     		adds	r2, r2, #1
 608 0110 9A84     		strh	r2, [r3, #36]	@ movhi
 609 0112 B9E7     		b	.L97
 610              	.L135:
 611              		.align	2
 612              	.L134:
 613 0114 00000000 		.word	.LANCHOR3
 614 0118 00000000 		.word	lwip_stats
 615 011c 00000000 		.word	.LANCHOR0
 616              		.size	etharp_query, .-etharp_query
 617              		.section	.text.etharp_output,"ax",%progbits
 618              		.align	2
 619              		.global	etharp_output
 620              		.thumb
 621              		.thumb_func
 622              		.type	etharp_output, %function
 623              	etharp_output:
 624              		@ args = 0, pretend = 0, frame = 8
 625              		@ frame_needed = 0, uses_anonymous_args = 0
 626 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 627 0004 8846     		mov	r8, r1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccflMX0D.s 			page 12


 628 0006 83B0     		sub	sp, sp, #12
 629 0008 8146     		mov	r9, r0
 630 000a 1021     		movs	r1, #16
 631 000c 4046     		mov	r0, r8
 632 000e 1646     		mov	r6, r2
 633 0010 FFF7FEFF 		bl	pbuf_header
 634 0014 0028     		cmp	r0, #0
 635 0016 72D1     		bne	.L153
 636 0018 3068     		ldr	r0, [r6]
 637 001a 4946     		mov	r1, r9
 638 001c FFF7FEFF 		bl	ip4_addr_isbroadcast
 639 0020 0028     		cmp	r0, #0
 640 0022 3FD1     		bne	.L147
 641 0024 3368     		ldr	r3, [r6]
 642 0026 03F0F002 		and	r2, r3, #240
 643 002a E02A     		cmp	r2, #224
 644 002c 45D0     		beq	.L154
 645 002e D9F80410 		ldr	r1, [r9, #4]
 646 0032 D9F80820 		ldr	r2, [r9, #8]
 647 0036 5940     		eors	r1, r1, r3
 648 0038 1142     		tst	r1, r2
 649 003a 0AD0     		beq	.L141
 650 003c 9BB2     		uxth	r3, r3
 651 003e 4FF6A962 		movw	r2, #65193
 652 0042 9342     		cmp	r3, r2
 653 0044 05D0     		beq	.L141
 654 0046 D9F80C30 		ldr	r3, [r9, #12]
 655 004a 09F10C06 		add	r6, r9, #12
 656 004e 002B     		cmp	r3, #0
 657 0050 5BD0     		beq	.L148
 658              	.L141:
 659 0052 334F     		ldr	r7, .L156
 660 0054 334B     		ldr	r3, .L156+4
 661 0056 3A78     		ldrb	r2, [r7]	@ zero_extendqisi2
 662 0058 02EB8201 		add	r1, r2, r2, lsl #2
 663 005c 03EB8103 		add	r3, r3, r1, lsl #2
 664 0060 997C     		ldrb	r1, [r3, #18]	@ zero_extendqisi2
 665 0062 0129     		cmp	r1, #1
 666 0064 03D9     		bls	.L142
 667 0066 5968     		ldr	r1, [r3, #4]
 668 0068 3368     		ldr	r3, [r6]
 669 006a 8B42     		cmp	r3, r1
 670 006c 4FD0     		beq	.L143
 671              	.L142:
 672 006e 2E4C     		ldr	r4, .L156+8
 673 0070 0023     		movs	r3, #0
 674              	.L144:
 675 0072 2578     		ldrb	r5, [r4]	@ zero_extendqisi2
 676 0074 5FFA83FE 		uxtb	lr, r3
 677 0078 012D     		cmp	r5, #1
 678 007a 03F10103 		add	r3, r3, #1
 679 007e 04D9     		bls	.L145
 680 0080 3268     		ldr	r2, [r6]
 681 0082 54F80E5C 		ldr	r5, [r4, #-14]
 682 0086 AA42     		cmp	r2, r5
 683 0088 2CD0     		beq	.L155
 684              	.L145:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccflMX0D.s 			page 13


 685 008a 102B     		cmp	r3, #16
 686 008c 04F11404 		add	r4, r4, #20
 687 0090 EFD1     		bne	.L144
 688 0092 4846     		mov	r0, r9
 689 0094 3146     		mov	r1, r6
 690 0096 4246     		mov	r2, r8
 691 0098 FFF7FEFF 		bl	etharp_query
 692              	.L138:
 693 009c 40B2     		sxtb	r0, r0
 694 009e 03B0     		add	sp, sp, #12
 695              		@ sp needed
 696 00a0 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 697              	.L147:
 698 00a4 214B     		ldr	r3, .L156+12
 699              	.L139:
 700 00a6 4846     		mov	r0, r9
 701 00a8 4146     		mov	r1, r8
 702 00aa 09F12F02 		add	r2, r9, #47
 703 00ae FFF7FEFF 		bl	etharp_send_ip
 704 00b2 40B2     		sxtb	r0, r0
 705 00b4 03B0     		add	sp, sp, #12
 706              		@ sp needed
 707 00b6 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 708              	.L154:
 709 00ba 7578     		ldrb	r5, [r6, #1]	@ zero_extendqisi2
 710 00bc B478     		ldrb	r4, [r6, #2]	@ zero_extendqisi2
 711 00be F178     		ldrb	r1, [r6, #3]	@ zero_extendqisi2
 712 00c0 5E23     		movs	r3, #94
 713 00c2 05F07F05 		and	r5, r5, #127
 714 00c6 0122     		movs	r2, #1
 715 00c8 8DF80230 		strb	r3, [sp, #2]
 716 00cc 8DF80100 		strb	r0, [sp, #1]
 717 00d0 8DF80350 		strb	r5, [sp, #3]
 718 00d4 8DF80440 		strb	r4, [sp, #4]
 719 00d8 8DF80510 		strb	r1, [sp, #5]
 720 00dc 8DF80020 		strb	r2, [sp]
 721 00e0 6B46     		mov	r3, sp
 722 00e2 E0E7     		b	.L139
 723              	.L155:
 724 00e4 5FFA8EFE 		uxtb	lr, lr
 725 00e8 7246     		mov	r2, lr
 726 00ea 4846     		mov	r0, r9
 727 00ec 4146     		mov	r1, r8
 728 00ee 87F800E0 		strb	lr, [r7]
 729 00f2 FFF7FEFF 		bl	etharp_output_to_arp_index
 730 00f6 40B2     		sxtb	r0, r0
 731 00f8 03B0     		add	sp, sp, #12
 732              		@ sp needed
 733 00fa BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 734              	.L153:
 735 00fe 0C4B     		ldr	r3, .L156+16
 736 0100 FE20     		movs	r0, #254
 737 0102 5A89     		ldrh	r2, [r3, #10]
 738 0104 0132     		adds	r2, r2, #1
 739 0106 5A81     		strh	r2, [r3, #10]	@ movhi
 740 0108 C8E7     		b	.L138
 741              	.L148:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccflMX0D.s 			page 14


 742 010a FC20     		movs	r0, #252
 743 010c C6E7     		b	.L138
 744              	.L143:
 745 010e 084B     		ldr	r3, .L156+16
 746 0110 4846     		mov	r0, r9
 747 0112 DC8D     		ldrh	r4, [r3, #46]
 748 0114 4146     		mov	r1, r8
 749 0116 0134     		adds	r4, r4, #1
 750 0118 DC85     		strh	r4, [r3, #46]	@ movhi
 751 011a FFF7FEFF 		bl	etharp_output_to_arp_index
 752 011e BDE7     		b	.L138
 753              	.L157:
 754              		.align	2
 755              	.L156:
 756 0120 00000000 		.word	.LANCHOR3
 757 0124 00000000 		.word	.LANCHOR0
 758 0128 12000000 		.word	.LANCHOR0+18
 759 012c 00000000 		.word	.LANCHOR2
 760 0130 00000000 		.word	lwip_stats
 761              		.size	etharp_output, .-etharp_output
 762              		.section	.text.ethernet_input,"ax",%progbits
 763              		.align	2
 764              		.global	ethernet_input
 765              		.thumb
 766              		.thumb_func
 767              		.type	ethernet_input, %function
 768              	ethernet_input:
 769              		@ args = 0, pretend = 0, frame = 24
 770              		@ frame_needed = 0, uses_anonymous_args = 0
 771 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 772 0004 4789     		ldrh	r7, [r0, #10]
 773 0006 87B0     		sub	sp, sp, #28
 774 0008 102F     		cmp	r7, #16
 775 000a 0446     		mov	r4, r0
 776 000c 0E46     		mov	r6, r1
 777 000e 17D9     		bls	.L198
 778 0010 4568     		ldr	r5, [r0, #4]
 779 0012 AB78     		ldrb	r3, [r5, #2]	@ zero_extendqisi2
 780 0014 B5F80E80 		ldrh	r8, [r5, #14]	@ unaligned
 781 0018 D907     		lsls	r1, r3, #31
 782 001a 0BD5     		bpl	.L161
 783 001c 012B     		cmp	r3, #1
 784 001e 45D0     		beq	.L201
 785 0020 A81C     		adds	r0, r5, #2
 786 0022 7C49     		ldr	r1, .L205
 787 0024 0622     		movs	r2, #6
 788 0026 FFF7FEFF 		bl	memcmp
 789 002a 18B9     		cbnz	r0, .L161
 790 002c 637B     		ldrb	r3, [r4, #13]	@ zero_extendqisi2
 791 002e 43F00803 		orr	r3, r3, #8
 792 0032 6373     		strb	r3, [r4, #13]
 793              	.L161:
 794 0034 B8F1080F 		cmp	r8, #8
 795 0038 28D0     		beq	.L164
 796 003a B8F5C16F 		cmp	r8, #1544
 797 003e 0DD0     		beq	.L165
 798              	.L198:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccflMX0D.s 			page 15


 799 0040 754B     		ldr	r3, .L205+4
 800 0042 198D     		ldrh	r1, [r3, #40]
 801 0044 DA8B     		ldrh	r2, [r3, #30]
 802 0046 0131     		adds	r1, r1, #1
 803 0048 0132     		adds	r2, r2, #1
 804 004a 1985     		strh	r1, [r3, #40]	@ movhi
 805 004c DA83     		strh	r2, [r3, #30]	@ movhi
 806              	.L160:
 807 004e 2046     		mov	r0, r4
 808 0050 FFF7FEFF 		bl	pbuf_free
 809              	.L199:
 810 0054 0020     		movs	r0, #0
 811 0056 07B0     		add	sp, sp, #28
 812              		@ sp needed
 813 0058 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 814              	.L165:
 815 005c 96F83530 		ldrb	r3, [r6, #53]	@ zero_extendqisi2
 816 0060 9B06     		lsls	r3, r3, #26
 817 0062 F4D5     		bpl	.L160
 818 0064 2B2F     		cmp	r7, #43
 819 0066 2CD9     		bls	.L202
 820 0068 2B8A     		ldrh	r3, [r5, #16]	@ unaligned
 821 006a B3F5807F 		cmp	r3, #256
 822 006e 02D1     		bne	.L171
 823 0070 2B7D     		ldrb	r3, [r5, #20]	@ zero_extendqisi2
 824 0072 062B     		cmp	r3, #6
 825 0074 30D0     		beq	.L203
 826              	.L171:
 827 0076 684B     		ldr	r3, .L205+4
 828 0078 2046     		mov	r0, r4
 829 007a 198D     		ldrh	r1, [r3, #40]
 830 007c DA8B     		ldrh	r2, [r3, #30]
 831 007e 0131     		adds	r1, r1, #1
 832 0080 0132     		adds	r2, r2, #1
 833 0082 1985     		strh	r1, [r3, #40]	@ movhi
 834 0084 DA83     		strh	r2, [r3, #30]	@ movhi
 835 0086 FFF7FEFF 		bl	pbuf_free
 836 008a E3E7     		b	.L199
 837              	.L164:
 838 008c 96F83530 		ldrb	r3, [r6, #53]	@ zero_extendqisi2
 839 0090 9A06     		lsls	r2, r3, #26
 840 0092 DCD5     		bpl	.L160
 841 0094 2046     		mov	r0, r4
 842 0096 6FF00F01 		mvn	r1, #15
 843 009a FFF7FEFF 		bl	pbuf_header
 844 009e 0028     		cmp	r0, #0
 845 00a0 D5D1     		bne	.L160
 846 00a2 2046     		mov	r0, r4
 847 00a4 3146     		mov	r1, r6
 848 00a6 FFF7FEFF 		bl	ip_input
 849 00aa D3E7     		b	.L199
 850              	.L201:
 851 00ac EB78     		ldrb	r3, [r5, #3]	@ zero_extendqisi2
 852 00ae 002B     		cmp	r3, #0
 853 00b0 C0D1     		bne	.L161
 854 00b2 2B79     		ldrb	r3, [r5, #4]	@ zero_extendqisi2
 855 00b4 5E2B     		cmp	r3, #94
ARM GAS  C:\Users\George\AppData\Local\Temp\ccflMX0D.s 			page 16


 856 00b6 BDD1     		bne	.L161
 857 00b8 437B     		ldrb	r3, [r0, #13]	@ zero_extendqisi2
 858 00ba 43F01003 		orr	r3, r3, #16
 859 00be 4373     		strb	r3, [r0, #13]
 860 00c0 B8E7     		b	.L161
 861              	.L202:
 862 00c2 554B     		ldr	r3, .L205+4
 863 00c4 2046     		mov	r0, r4
 864 00c6 598C     		ldrh	r1, [r3, #34]
 865 00c8 DA8B     		ldrh	r2, [r3, #30]
 866 00ca 0131     		adds	r1, r1, #1
 867 00cc 0132     		adds	r2, r2, #1
 868 00ce 5984     		strh	r1, [r3, #34]	@ movhi
 869 00d0 DA83     		strh	r2, [r3, #30]	@ movhi
 870 00d2 FFF7FEFF 		bl	pbuf_free
 871 00d6 BDE7     		b	.L199
 872              	.L203:
 873 00d8 6B7D     		ldrb	r3, [r5, #21]	@ zero_extendqisi2
 874 00da 042B     		cmp	r3, #4
 875 00dc CBD1     		bne	.L171
 876 00de 6B8A     		ldrh	r3, [r5, #18]	@ unaligned
 877 00e0 082B     		cmp	r3, #8
 878 00e2 C8D1     		bne	.L171
 879 00e4 DFF830A1 		ldr	r10, .L205+4
 880 00e8 AB46     		mov	fp, r5
 881 00ea BAF81A20 		ldrh	r2, [r10, #26]
 882 00ee 7368     		ldr	r3, [r6, #4]
 883 00f0 0132     		adds	r2, r2, #1
 884 00f2 AAF81A20 		strh	r2, [r10, #26]	@ movhi
 885 00f6 5BF81E0F 		ldr	r0, [fp, #30]!	@ unaligned
 886 00fa 321D     		adds	r2, r6, #4
 887 00fc 0490     		str	r0, [sp, #16]	@ unaligned
 888 00fe A86A     		ldr	r0, [r5, #40]	@ unaligned
 889 0100 0392     		str	r2, [sp, #12]
 890 0102 0590     		str	r0, [sp, #20]	@ unaligned
 891 0104 002B     		cmp	r3, #0
 892 0106 50D0     		beq	.L173
 893 0108 059A     		ldr	r2, [sp, #20]
 894 010a 05F11807 		add	r7, r5, #24
 895 010e 9342     		cmp	r3, r2
 896 0110 07BF     		ittee	eq
 897 0112 4FF00109 		moveq	r9, #1
 898 0116 4A46     		moveq	r2, r9
 899 0118 4FF00009 		movne	r9, #0
 900 011c 0222     		movne	r2, #2
 901              	.L174:
 902 011e 0498     		ldr	r0, [sp, #16]
 903 0120 06F12F08 		add	r8, r6, #47
 904 0124 0028     		cmp	r0, #0
 905 0126 34D0     		beq	.L176
 906 0128 3146     		mov	r1, r6
 907 012a 0192     		str	r2, [sp, #4]
 908 012c FFF7FEFF 		bl	ip4_addr_isbroadcast
 909 0130 019A     		ldr	r2, [sp, #4]
 910 0132 0346     		mov	r3, r0
 911 0134 68BB     		cbnz	r0, .L176
 912 0136 0499     		ldr	r1, [sp, #16]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccflMX0D.s 			page 17


 913 0138 01F0F001 		and	r1, r1, #240
 914 013c E029     		cmp	r1, #224
 915 013e 28D0     		beq	.L176
 916 0140 1146     		mov	r1, r2
 917 0142 04A8     		add	r0, sp, #16
 918 0144 0193     		str	r3, [sp, #4]
 919 0146 FFF7FEFF 		bl	etharp_find_entry
 920 014a 0028     		cmp	r0, #0
 921 014c 019B     		ldr	r3, [sp, #4]
 922 014e 20DB     		blt	.L176
 923 0150 00EB8000 		add	r0, r0, r0, lsl #2
 924 0154 8000     		lsls	r0, r0, #2
 925 0156 DFF8C4E0 		ldr	lr, .L205+8
 926 015a 0146     		mov	r1, r0
 927 015c 7144     		add	r1, r1, lr
 928 015e 0090     		str	r0, [sp]
 929 0160 0220     		movs	r0, #2
 930 0162 8874     		strb	r0, [r1, #18]
 931 0164 8E60     		str	r6, [r1, #8]
 932 0166 3868     		ldr	r0, [r7]	@ unaligned
 933 0168 009A     		ldr	r2, [sp]
 934 016a 5EF80220 		ldr	r2, [lr, r2]
 935 016e C860     		str	r0, [r1, #12]	@ unaligned
 936 0170 B888     		ldrh	r0, [r7, #4]	@ unaligned
 937 0172 0292     		str	r2, [sp, #8]
 938 0174 0882     		strh	r0, [r1, #16]	@ unaligned
 939 0176 CB74     		strb	r3, [r1, #19]
 940 0178 5AB1     		cbz	r2, .L176
 941 017a 1146     		mov	r1, r2
 942 017c 009A     		ldr	r2, [sp]
 943 017e 3046     		mov	r0, r6
 944 0180 4EF80230 		str	r3, [lr, r2]
 945 0184 4246     		mov	r2, r8
 946 0186 3B46     		mov	r3, r7
 947 0188 FFF7FEFF 		bl	etharp_send_ip
 948 018c 0298     		ldr	r0, [sp, #8]
 949 018e FFF7FEFF 		bl	pbuf_free
 950              	.L176:
 951 0192 EB8A     		ldrh	r3, [r5, #22]	@ unaligned
 952 0194 B3F5807F 		cmp	r3, #256
 953 0198 12D0     		beq	.L179
 954 019a B3F5007F 		cmp	r3, #512
 955 019e 09D1     		bne	.L204
 956 01a0 3046     		mov	r0, r6
 957 01a2 04A9     		add	r1, sp, #16
 958 01a4 FFF7FEFF 		bl	dhcp_arp_reply
 959 01a8 51E7     		b	.L160
 960              	.L173:
 961 01aa 9946     		mov	r9, r3
 962 01ac 05F11807 		add	r7, r5, #24
 963 01b0 0222     		movs	r2, #2
 964 01b2 B4E7     		b	.L174
 965              	.L204:
 966 01b4 BAF82C30 		ldrh	r3, [r10, #44]
 967 01b8 0133     		adds	r3, r3, #1
 968 01ba AAF82C30 		strh	r3, [r10, #44]	@ movhi
 969 01be 46E7     		b	.L160
ARM GAS  C:\Users\George\AppData\Local\Temp\ccflMX0D.s 			page 18


 970              	.L179:
 971 01c0 B9F1000F 		cmp	r9, #0
 972 01c4 3FF443AF 		beq	.L160
 973 01c8 0220     		movs	r0, #2
 974 01ca FFF7FEFF 		bl	lwip_htons
 975 01ce E882     		strh	r0, [r5, #22]	@ unaligned
 976 01d0 DBF80030 		ldr	r3, [fp]	@ unaligned
 977 01d4 039A     		ldr	r2, [sp, #12]
 978 01d6 AB62     		str	r3, [r5, #40]	@ unaligned
 979 01d8 1368     		ldr	r3, [r2]	@ unaligned
 980 01da 3046     		mov	r0, r6
 981 01dc C5F81E30 		str	r3, [r5, #30]	@ unaligned
 982 01e0 3B68     		ldr	r3, [r7]	@ unaligned
 983 01e2 2146     		mov	r1, r4
 984 01e4 C5F82230 		str	r3, [r5, #34]	@ unaligned
 985 01e8 BB88     		ldrh	r3, [r7, #4]	@ unaligned
 986 01ea EB84     		strh	r3, [r5, #38]	@ unaligned
 987 01ec 3B68     		ldr	r3, [r7]	@ unaligned
 988 01ee C5F80230 		str	r3, [r5, #2]	@ unaligned
 989 01f2 BB88     		ldrh	r3, [r7, #4]	@ unaligned
 990 01f4 EB80     		strh	r3, [r5, #6]	@ unaligned
 991 01f6 D8F80030 		ldr	r3, [r8]	@ unaligned
 992 01fa 3B60     		str	r3, [r7]	@ unaligned
 993 01fc B8F80430 		ldrh	r3, [r8, #4]	@ unaligned
 994 0200 BB80     		strh	r3, [r7, #4]	@ unaligned
 995 0202 D8F80030 		ldr	r3, [r8]	@ unaligned
 996 0206 AB60     		str	r3, [r5, #8]	@ unaligned
 997 0208 B8F80430 		ldrh	r3, [r8, #4]	@ unaligned
 998 020c AB81     		strh	r3, [r5, #12]	@ unaligned
 999 020e B369     		ldr	r3, [r6, #24]
 1000 0210 9847     		blx	r3
 1001 0212 1CE7     		b	.L160
 1002              	.L206:
 1003              		.align	2
 1004              	.L205:
 1005 0214 00000000 		.word	.LANCHOR2
 1006 0218 00000000 		.word	lwip_stats
 1007 021c 00000000 		.word	.LANCHOR0
 1008              		.size	ethernet_input, .-ethernet_input
 1009              		.global	ethzero
 1010              		.global	ethbroadcast
 1011              		.section	.bss.etharp_cached_entry,"aw",%nobits
 1012              		.set	.LANCHOR3,. + 0
 1013              		.type	etharp_cached_entry, %object
 1014              		.size	etharp_cached_entry, 1
 1015              	etharp_cached_entry:
 1016 0000 00       		.space	1
 1017              		.section	.bss.arp_table,"aw",%nobits
 1018              		.align	2
 1019              		.set	.LANCHOR0,. + 0
 1020              		.type	arp_table, %object
 1021              		.size	arp_table, 320
 1022              	arp_table:
 1023 0000 00000000 		.space	320
 1023      00000000 
 1023      00000000 
 1023      00000000 
ARM GAS  C:\Users\George\AppData\Local\Temp\ccflMX0D.s 			page 19


 1023      00000000 
 1024              		.section	.rodata.ethbroadcast,"a",%progbits
 1025              		.align	2
 1026              		.set	.LANCHOR2,. + 0
 1027              		.type	ethbroadcast, %object
 1028              		.size	ethbroadcast, 6
 1029              	ethbroadcast:
 1030 0000 FF       		.byte	-1
 1031 0001 FF       		.byte	-1
 1032 0002 FF       		.byte	-1
 1033 0003 FF       		.byte	-1
 1034 0004 FF       		.byte	-1
 1035 0005 FF       		.byte	-1
 1036 0006 0000     		.section	.rodata.ethzero,"a",%progbits
 1037              		.align	2
 1038              		.set	.LANCHOR1,. + 0
 1039              		.type	ethzero, %object
 1040              		.size	ethzero, 6
 1041              	ethzero:
 1042 0000 00000000 		.space	6
 1042      0000
 1043 0006 0000     		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
