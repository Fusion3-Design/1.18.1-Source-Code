ARM GAS  C:\Users\George\AppData\Local\Temp\cciGS0dc.s 			page 1


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
  14              		.file	"mdns_responder.c"
  15              		.section	.text.setup_hostnames.constprop.8,"ax",%progbits
  16              		.align	2
  17              		.thumb
  18              		.thumb_func
  19              		.type	setup_hostnames.constprop.8, %function
  20              	setup_hostnames.constprop.8:
  21              		@ args = 0, pretend = 0, frame = 16
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  24 0004 384C     		ldr	r4, .L2
  25 0006 89B0     		sub	sp, sp, #36
  26 0008 A06A     		ldr	r0, [r4, #40]
  27 000a FFF7FEFF 		bl	strlen
  28 000e 1FFA80FA 		uxth	r10, r0
  29 0012 8046     		mov	r8, r0
  30 0014 0AF10800 		add	r0, r10, #8
  31 0018 80B2     		uxth	r0, r0
  32 001a FFF7FEFF 		bl	mem_malloc
  33 001e 334F     		ldr	r7, .L2+4
  34 0020 DFF8E0B0 		ldr	fp, .L2+28
  35 0024 324E     		ldr	r6, .L2+8
  36 0026 A36A     		ldr	r3, [r4, #40]
  37 0028 4246     		mov	r2, r8
  38 002a 5946     		mov	r1, fp
  39 002c 0097     		str	r7, [sp]
  40 002e 3060     		str	r0, [r6]
  41 0030 FFF7FEFF 		bl	sprintf
  42 0034 0AF10B00 		add	r0, r10, #11
  43 0038 80B2     		uxth	r0, r0
  44 003a FFF7FEFF 		bl	mem_malloc
  45 003e 94F83420 		ldrb	r2, [r4, #52]	@ zero_extendqisi2
  46 0042 A36A     		ldr	r3, [r4, #40]
  47 0044 8DE88400 		stmia	sp, {r2, r7}
  48 0048 2A49     		ldr	r1, .L2+12
  49 004a 08F10302 		add	r2, r8, #3
  50 004e 7060     		str	r0, [r6, #4]
  51 0050 FFF7FEFF 		bl	sprintf
  52 0054 94F831C0 		ldrb	ip, [r4, #49]	@ zero_extendqisi2
  53 0058 94F832E0 		ldrb	lr, [r4, #50]	@ zero_extendqisi2
  54 005c 94F83300 		ldrb	r0, [r4, #51]	@ zero_extendqisi2
  55 0060 94F83410 		ldrb	r1, [r4, #52]	@ zero_extendqisi2
  56 0064 05AD     		add	r5, sp, #20
  57 0066 8DE80050 		stmia	sp, {ip, lr}
ARM GAS  C:\Users\George\AppData\Local\Temp\cciGS0dc.s 			page 2


  58 006a 94F82F20 		ldrb	r2, [r4, #47]	@ zero_extendqisi2
  59 006e 94F83030 		ldrb	r3, [r4, #48]	@ zero_extendqisi2
  60 0072 0290     		str	r0, [sp, #8]
  61 0074 0391     		str	r1, [sp, #12]
  62 0076 2846     		mov	r0, r5
  63 0078 1F49     		ldr	r1, .L2+16
  64 007a FFF7FEFF 		bl	sprintf
  65 007e 2846     		mov	r0, r5
  66 0080 FFF7FEFF 		bl	strlen
  67 0084 8244     		add	r10, r10, r0
  68 0086 1FFA8AFA 		uxth	r10, r10
  69 008a 8146     		mov	r9, r0
  70 008c 0AF10900 		add	r0, r10, #9
  71 0090 80B2     		uxth	r0, r0
  72 0092 FFF7FEFF 		bl	mem_malloc
  73 0096 C844     		add	r8, r8, r9
  74 0098 08F10108 		add	r8, r8, #1
  75 009c A36A     		ldr	r3, [r4, #40]
  76 009e 4246     		mov	r2, r8
  77 00a0 1649     		ldr	r1, .L2+20
  78 00a2 8DE8A000 		stmia	sp, {r5, r7}
  79 00a6 B060     		str	r0, [r6, #8]
  80 00a8 FFF7FEFF 		bl	sprintf
  81 00ac 2846     		mov	r0, r5
  82 00ae FFF7FEFF 		bl	strlen
  83 00b2 0830     		adds	r0, r0, #8
  84 00b4 80B2     		uxth	r0, r0
  85 00b6 FFF7FEFF 		bl	mem_malloc
  86 00ba 5946     		mov	r1, fp
  87 00bc 4A46     		mov	r2, r9
  88 00be 2B46     		mov	r3, r5
  89 00c0 0097     		str	r7, [sp]
  90 00c2 F060     		str	r0, [r6, #12]
  91 00c4 FFF7FEFF 		bl	sprintf
  92 00c8 0AF10300 		add	r0, r10, #3
  93 00cc 80B2     		uxth	r0, r0
  94 00ce FFF7FEFF 		bl	mem_malloc
  95 00d2 A36A     		ldr	r3, [r4, #40]
  96 00d4 4246     		mov	r2, r8
  97 00d6 0095     		str	r5, [sp]
  98 00d8 0949     		ldr	r1, .L2+24
  99 00da 3061     		str	r0, [r6, #16]
 100 00dc FFF7FEFF 		bl	sprintf
 101 00e0 09B0     		add	sp, sp, #36
 102              		@ sp needed
 103 00e2 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 104              	.L3:
 105 00e6 00BF     		.align	2
 106              	.L2:
 107 00e8 00000000 		.word	gs_net_if
 108 00ec 00000000 		.word	.LANCHOR1
 109 00f0 00000000 		.word	.LANCHOR0
 110 00f4 08000000 		.word	.LC1
 111 00f8 14000000 		.word	.LC2
 112 00fc 30000000 		.word	.LC3
 113 0100 3C000000 		.word	.LC4
 114 0104 00000000 		.word	.LC0
ARM GAS  C:\Users\George\AppData\Local\Temp\cciGS0dc.s 			page 3


 115              		.size	setup_hostnames.constprop.8, .-setup_hostnames.constprop.8
 116              		.section	.text.populate_record.constprop.10,"ax",%progbits
 117              		.align	2
 118              		.thumb
 119              		.thumb_func
 120              		.type	populate_record.constprop.10, %function
 121              	populate_record.constprop.10:
 122              		@ args = 8, pretend = 0, frame = 8
 123              		@ frame_needed = 0, uses_anonymous_args = 0
 124 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 125 0004 0478     		ldrb	r4, [r0]	@ zero_extendqisi2
 126 0006 83B0     		sub	sp, sp, #12
 127 0008 0746     		mov	r7, r0
 128 000a 8B46     		mov	fp, r1
 129 000c 9246     		mov	r10, r2
 130 000e 451C     		adds	r5, r0, #1
 131 0010 BDF83080 		ldrh	r8, [sp, #48]
 132 0014 DDF83490 		ldr	r9, [sp, #52]
 133 0018 002C     		cmp	r4, #0
 134 001a 4CD0     		beq	.L11
 135 001c 14F0C00F 		tst	r4, #192
 136 0020 08BF     		it	eq
 137 0022 0126     		moveq	r6, #1
 138 0024 03D0     		beq	.L9
 139 0026 49E0     		b	.L17
 140              	.L10:
 141 0028 14F0C00F 		tst	r4, #192
 142 002c 40D1     		bne	.L16
 143              	.L9:
 144 002e 2544     		add	r5, r5, r4
 145 0030 3219     		adds	r2, r6, r4
 146 0032 2C78     		ldrb	r4, [r5]	@ zero_extendqisi2
 147 0034 561C     		adds	r6, r2, #1
 148 0036 0135     		adds	r5, r5, #1
 149 0038 002C     		cmp	r4, #0
 150 003a F5D1     		bne	.L10
 151 003c B5B2     		uxth	r5, r6
 152              	.L5:
 153 003e 08F10A01 		add	r1, r8, #10
 154 0042 3144     		add	r1, r1, r6
 155 0044 0020     		movs	r0, #0
 156 0046 89B2     		uxth	r1, r1
 157 0048 0246     		mov	r2, r0
 158 004a 0193     		str	r3, [sp, #4]
 159 004c FFF7FEFF 		bl	pbuf_alloc
 160 0050 3946     		mov	r1, r7
 161 0052 3246     		mov	r2, r6
 162 0054 0446     		mov	r4, r0
 163 0056 4068     		ldr	r0, [r0, #4]
 164 0058 FFF7FEFF 		bl	memcpy
 165 005c 5846     		mov	r0, fp
 166 005e 6768     		ldr	r7, [r4, #4]
 167 0060 FFF7FEFF 		bl	lwip_htons
 168 0064 B853     		strh	r0, [r7, r6]	@ unaligned
 169 0066 5046     		mov	r0, r10
 170 0068 FFF7FEFF 		bl	lwip_htons
 171 006c 3E44     		add	r6, r6, r7
ARM GAS  C:\Users\George\AppData\Local\Temp\cciGS0dc.s 			page 4


 172 006e 7080     		strh	r0, [r6, #2]	@ unaligned
 173 0070 4FF41670 		mov	r0, #600
 174 0074 FFF7FEFF 		bl	lwip_htonl
 175 0078 7060     		str	r0, [r6, #4]	@ unaligned
 176 007a 4046     		mov	r0, r8
 177 007c FFF7FEFF 		bl	lwip_htons
 178 0080 019B     		ldr	r3, [sp, #4]
 179 0082 4246     		mov	r2, r8
 180 0084 1946     		mov	r1, r3
 181 0086 3081     		strh	r0, [r6, #8]	@ unaligned
 182 0088 06F10A00 		add	r0, r6, #10
 183 008c FFF7FEFF 		bl	memcpy
 184 0090 B9F80830 		ldrh	r3, [r9, #8]
 185 0094 4846     		mov	r0, r9
 186 0096 0A33     		adds	r3, r3, #10
 187 0098 2146     		mov	r1, r4
 188 009a 1D44     		add	r5, r5, r3
 189 009c FFF7FEFF 		bl	pbuf_cat
 190 00a0 ADB2     		uxth	r5, r5
 191 00a2 45F44040 		orr	r0, r5, #49152
 192 00a6 03B0     		add	sp, sp, #12
 193              		@ sp needed
 194 00a8 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 195 00ac FFF7FEBF 		b	lwip_htons
 196              	.L16:
 197 00b0 961C     		adds	r6, r2, #2
 198 00b2 B5B2     		uxth	r5, r6
 199 00b4 C3E7     		b	.L5
 200              	.L11:
 201 00b6 0125     		movs	r5, #1
 202 00b8 2E46     		mov	r6, r5
 203 00ba C0E7     		b	.L5
 204              	.L17:
 205 00bc 0225     		movs	r5, #2
 206 00be 2E46     		mov	r6, r5
 207 00c0 BDE7     		b	.L5
 208              		.size	populate_record.constprop.10, .-populate_record.constprop.10
 209 00c2 00BF     		.section	.text.populate_header.constprop.11,"ax",%progbits
 210              		.align	2
 211              		.thumb
 212              		.thumb_func
 213              		.type	populate_header.constprop.11, %function
 214              	populate_header.constprop.11:
 215              		@ args = 0, pretend = 0, frame = 0
 216              		@ frame_needed = 0, uses_anonymous_args = 0
 217 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 218 0004 8046     		mov	r8, r0
 219 0006 0020     		movs	r0, #0
 220 0008 0246     		mov	r2, r0
 221 000a 0F46     		mov	r7, r1
 222 000c 0C21     		movs	r1, #12
 223 000e FFF7FEFF 		bl	pbuf_alloc
 224 0012 4468     		ldr	r4, [r0, #4]
 225 0014 0025     		movs	r5, #0
 226 0016 0646     		mov	r6, r0
 227 0018 2580     		strh	r5, [r4]	@ movhi
 228 001a 4FF40440 		mov	r0, #33792
ARM GAS  C:\Users\George\AppData\Local\Temp\cciGS0dc.s 			page 5


 229 001e FFF7FEFF 		bl	lwip_htons
 230 0022 A580     		strh	r5, [r4, #4]	@ movhi
 231 0024 6080     		strh	r0, [r4, #2]	@ movhi
 232 0026 1FFA88F0 		uxth	r0, r8
 233 002a FFF7FEFF 		bl	lwip_htons
 234 002e E080     		strh	r0, [r4, #6]	@ movhi
 235 0030 2846     		mov	r0, r5
 236 0032 FFF7FEFF 		bl	lwip_htons
 237 0036 2081     		strh	r0, [r4, #8]	@ movhi
 238 0038 B8B2     		uxth	r0, r7
 239 003a FFF7FEFF 		bl	lwip_htons
 240 003e 6081     		strh	r0, [r4, #10]	@ movhi
 241 0040 3046     		mov	r0, r6
 242 0042 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 243              		.size	populate_header.constprop.11, .-populate_header.constprop.11
 244 0046 00BF     		.section	.text.recv,"ax",%progbits
 245              		.align	2
 246              		.thumb
 247              		.thumb_func
 248              		.type	recv, %function
 249              	recv:
 250              		@ args = 4, pretend = 0, frame = 304
 251              		@ frame_needed = 1, uses_anonymous_args = 0
 252 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 253 0004 CFB0     		sub	sp, sp, #316
 254 0006 5168     		ldr	r1, [r2, #4]
 255 0008 02AF     		add	r7, sp, #8
 256 000a F860     		str	r0, [r7, #12]
 257 000c 4888     		ldrh	r0, [r1, #2]
 258 000e 7A61     		str	r2, [r7, #20]
 259 0010 B960     		str	r1, [r7, #8]
 260 0012 5489     		ldrh	r4, [r2, #10]
 261 0014 FFF7FEFF 		bl	lwip_ntohs
 262 0018 D7F808C0 		ldr	ip, [r7, #8]
 263 001c ACF80200 		strh	r0, [ip, #2]	@ movhi
 264 0020 BCF80400 		ldrh	r0, [ip, #4]
 265 0024 FFF7FEFF 		bl	lwip_ntohs
 266 0028 D7F808C0 		ldr	ip, [r7, #8]
 267 002c BCF80030 		ldrh	r3, [ip]
 268 0030 ACF80400 		strh	r0, [ip, #4]	@ movhi
 269 0034 63BB     		cbnz	r3, .L21
 270 0036 58B3     		cbz	r0, .L21
 271 0038 0C3C     		subs	r4, r4, #12
 272 003a 0CF10C01 		add	r1, ip, #12
 273 003e BC61     		str	r4, [r7, #24]
 274 0040 3B61     		str	r3, [r7, #16]
 275 0042 F961     		str	r1, [r7, #28]
 276              	.L47:
 277 0044 D7F814C0 		ldr	ip, [r7, #20]
 278 0048 FA69     		ldr	r2, [r7, #28]
 279 004a DCF80490 		ldr	r9, [ip, #4]
 280 004e BCF80AC0 		ldrh	ip, [ip, #10]
 281 0052 4FF0FF38 		mov	r8, #-1
 282 0056 09EB0C0B 		add	fp, r9, ip
 283 005a 0026     		movs	r6, #0
 284 005c 07F13003 		add	r3, r7, #48
 285              	.L23:
ARM GAS  C:\Users\George\AppData\Local\Temp\cciGS0dc.s 			page 6


 286 0060 551C     		adds	r5, r2, #1
 287 0062 AB45     		cmp	fp, r5
 288 0064 1478     		ldrb	r4, [r2]	@ zero_extendqisi2
 289 0066 11D3     		bcc	.L67
 290              	.L24:
 291 0068 14F0C00F 		tst	r4, #192
 292 006c 18D0     		beq	.L25
 293 006e 5278     		ldrb	r2, [r2, #1]	@ zero_extendqisi2
 294 0070 0236     		adds	r6, r6, #2
 295 0072 42EA0422 		orr	r2, r2, r4, lsl #8
 296 0076 C2F30D02 		ubfx	r2, r2, #0, #14
 297 007a 4A44     		add	r2, r2, r9
 298 007c 551C     		adds	r5, r2, #1
 299 007e B8F1FF3F 		cmp	r8, #-1
 300 0082 08BF     		it	eq
 301 0084 B046     		moveq	r8, r6
 302 0086 AB45     		cmp	fp, r5
 303 0088 1478     		ldrb	r4, [r2]	@ zero_extendqisi2
 304 008a EDD2     		bcs	.L24
 305              	.L67:
 306 008c 0022     		movs	r2, #0
 307 008e 1A70     		strb	r2, [r3]
 308              	.L21:
 309 0090 7869     		ldr	r0, [r7, #20]
 310 0092 FFF7FEFF 		bl	pbuf_free
 311 0096 07F59A77 		add	r7, r7, #308
 312 009a BD46     		mov	sp, r7
 313              		@ sp needed
 314 009c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 315              	.L25:
 316 00a0 03F1010A 		add	r10, r3, #1
 317 00a4 0136     		adds	r6, r6, #1
 318 00a6 1C70     		strb	r4, [r3]
 319 00a8 2946     		mov	r1, r5
 320 00aa 2246     		mov	r2, r4
 321 00ac 5046     		mov	r0, r10
 322 00ae 34B1     		cbz	r4, .L68
 323 00b0 FFF7FEFF 		bl	memcpy
 324 00b4 2644     		add	r6, r6, r4
 325 00b6 2A19     		adds	r2, r5, r4
 326 00b8 0AEB0403 		add	r3, r10, r4
 327 00bc D0E7     		b	.L23
 328              	.L68:
 329 00be FB69     		ldr	r3, [r7, #28]
 330 00c0 B8F1FF3F 		cmp	r8, #-1
 331 00c4 08BF     		it	eq
 332 00c6 B046     		moveq	r8, r6
 333 00c8 D7F81CC0 		ldr	ip, [r7, #28]
 334 00cc 4344     		add	r3, r3, r8
 335 00ce 5B78     		ldrb	r3, [r3, #1]	@ zero_extendqisi2
 336 00d0 1CF80820 		ldrb	r2, [ip, r8]	@ zero_extendqisi2
 337 00d4 08F1040A 		add	r10, r8, #4
 338 00d8 43EA0223 		orr	r3, r3, r2, lsl #8
 339 00dc 012B     		cmp	r3, #1
 340 00de 00F0F181 		beq	.L69
 341 00e2 0C2B     		cmp	r3, #12
 342 00e4 00F0CD80 		beq	.L70
ARM GAS  C:\Users\George\AppData\Local\Temp\cciGS0dc.s 			page 7


 343 00e8 212B     		cmp	r3, #33
 344 00ea 1CD0     		beq	.L44
 345 00ec 102B     		cmp	r3, #16
 346 00ee 1AD0     		beq	.L44
 347              	.L32:
 348 00f0 D7F818C0 		ldr	ip, [r7, #24]
 349 00f4 CAEB0C0C 		rsb	ip, r10, ip
 350 00f8 C7F818C0 		str	ip, [r7, #24]
 351 00fc B969     		ldr	r1, [r7, #24]
 352 00fe D7F81CC0 		ldr	ip, [r7, #28]
 353 0102 0029     		cmp	r1, #0
 354 0104 D444     		add	ip, ip, r10
 355 0106 C7F81CC0 		str	ip, [r7, #28]
 356 010a C1DD     		ble	.L21
 357 010c D7F808C0 		ldr	ip, [r7, #8]
 358 0110 BCF80430 		ldrh	r3, [ip, #4]
 359 0114 D7F810C0 		ldr	ip, [r7, #16]
 360 0118 0CF1010C 		add	ip, ip, #1
 361 011c 6345     		cmp	r3, ip
 362 011e C7F810C0 		str	ip, [r7, #16]
 363 0122 8FDC     		bgt	.L47
 364 0124 B4E7     		b	.L21
 365              	.L44:
 366 0126 D7F80CC0 		ldr	ip, [r7, #12]
 367 012a DCF81040 		ldr	r4, [ip, #16]
 368 012e 2046     		mov	r0, r4
 369 0130 FFF7FEFF 		bl	strlen
 370 0134 0546     		mov	r5, r0
 371 0136 2146     		mov	r1, r4
 372 0138 07F13000 		add	r0, r7, #48
 373 013c 2A46     		mov	r2, r5
 374 013e FFF7FEFF 		bl	strncasecmp
 375 0142 0028     		cmp	r0, #0
 376 0144 D4D0     		beq	.L32
 377 0146 D7F80CC0 		ldr	ip, [r7, #12]
 378 014a 07F1300B 		add	fp, r7, #48
 379 014e DCF81840 		ldr	r4, [ip, #24]
 380 0152 AB44     		add	fp, fp, r5
 381 0154 002C     		cmp	r4, #0
 382 0156 DCF81460 		ldr	r6, [ip, #20]
 383 015a C9DD     		ble	.L32
 384 015c 4FF00008 		mov	r8, #0
 385 0160 4546     		mov	r5, r8
 386 0162 03E0     		b	.L46
 387              	.L71:
 388 0164 A542     		cmp	r5, r4
 389 0166 08F10808 		add	r8, r8, #8
 390 016a C1D0     		beq	.L32
 391              	.L46:
 392 016c 5846     		mov	r0, fp
 393 016e 56F80810 		ldr	r1, [r6, r8]
 394 0172 0135     		adds	r5, r5, #1
 395 0174 FFF7FEFF 		bl	strcasecmp
 396 0178 0028     		cmp	r0, #0
 397 017a F3D1     		bne	.L71
 398 017c 0221     		movs	r1, #2
 399 017e 8146     		mov	r9, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\cciGS0dc.s 			page 8


 400 0180 0120     		movs	r0, #1
 401 0182 FFF7FEFF 		bl	populate_header.constprop.11
 402 0186 0446     		mov	r4, r0
 403 0188 4089     		ldrh	r0, [r0, #10]
 404 018a 6FEA8040 		mvn	r0, r0, lsl #18
 405 018e 6FEA9040 		mvn	r0, r0, lsr #18
 406 0192 80B2     		uxth	r0, r0
 407 0194 FFF7FEFF 		bl	lwip_htons
 408 0198 D7F80CC0 		ldr	ip, [r7, #12]
 409 019c 3885     		strh	r0, [r7, #40]	@ movhi
 410 019e DCF81000 		ldr	r0, [ip, #16]
 411 01a2 FFF7FEFF 		bl	strlen
 412 01a6 00F11402 		add	r2, r0, #20
 413 01aa 22F00702 		bic	r2, r2, #7
 414 01ae EC46     		mov	ip, sp
 415 01b0 0646     		mov	r6, r0
 416 01b2 ADEB020D 		sub	sp, sp, r2
 417 01b6 3220     		movs	r0, #50
 418 01b8 C7F804C0 		str	ip, [r7, #4]
 419 01bc FFF7FEFF 		bl	lwip_htons
 420 01c0 ADF80800 		strh	r0, [sp, #8]	@ unaligned
 421 01c4 4846     		mov	r0, r9
 422 01c6 FFF7FEFF 		bl	lwip_htons
 423 01ca D7F80CE0 		ldr	lr, [r7, #12]
 424 01ce 02AD     		add	r5, sp, #8
 425 01d0 DEF81420 		ldr	r2, [lr, #20]
 426 01d4 ADF80A00 		strh	r0, [sp, #10]	@ unaligned
 427 01d8 02EB0803 		add	r3, r2, r8
 428 01dc 9888     		ldrh	r0, [r3, #4]
 429 01de FFF7FEFF 		bl	lwip_htons
 430 01e2 FB68     		ldr	r3, [r7, #12]
 431 01e4 3246     		mov	r2, r6
 432 01e6 A880     		strh	r0, [r5, #4]	@ unaligned
 433 01e8 1969     		ldr	r1, [r3, #16]
 434 01ea 0DF10E00 		add	r0, sp, #14
 435 01ee FFF7FEFF 		bl	memcpy
 436 01f2 DFF828E3 		ldr	lr, .L74+4
 437 01f6 06F10D03 		add	r3, r6, #13
 438 01fa DEF80000 		ldr	r0, [lr]	@ unaligned
 439 01fe BEF80420 		ldrh	r2, [lr, #4]	@ unaligned
 440 0202 9EF80610 		ldrb	r1, [lr, #6]	@ zero_extendqisi2
 441 0206 2E44     		add	r6, r6, r5
 442 0208 1FFA83FE 		uxth	lr, r3
 443 020c C6F80600 		str	r0, [r6, #6]	@ unaligned
 444 0210 2B46     		mov	r3, r5
 445 0212 7281     		strh	r2, [r6, #10]	@ unaligned
 446 0214 3173     		strb	r1, [r6, #12]
 447 0216 0122     		movs	r2, #1
 448 0218 CDF800E0 		str	lr, [sp]
 449 021c 2121     		movs	r1, #33
 450 021e 0194     		str	r4, [sp, #4]
 451 0220 07F13000 		add	r0, r7, #48
 452 0224 FFF7FEFF 		bl	populate_record.constprop.10
 453 0228 7885     		strh	r0, [r7, #42]	@ movhi
 454 022a FFF7FEFF 		bl	lwip_ntohs
 455 022e 0630     		adds	r0, r0, #6
 456 0230 80B2     		uxth	r0, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\cciGS0dc.s 			page 9


 457 0232 FFF7FEFF 		bl	lwip_htons
 458 0236 0125     		movs	r5, #1
 459 0238 7885     		strh	r0, [r7, #42]	@ movhi
 460 023a 87F82490 		strb	r9, [r7, #36]
 461 023e 07F12403 		add	r3, r7, #36
 462 0242 0194     		str	r4, [sp, #4]
 463 0244 0095     		str	r5, [sp]
 464 0246 2A46     		mov	r2, r5
 465 0248 1021     		movs	r1, #16
 466 024a 07F12800 		add	r0, r7, #40
 467 024e FFF7FEFF 		bl	populate_record.constprop.10
 468 0252 F968     		ldr	r1, [r7, #12]
 469 0254 0422     		movs	r2, #4
 470 0256 4B6A     		ldr	r3, [r1, #36]
 471 0258 07F12A00 		add	r0, r7, #42
 472 025c 1344     		add	r3, r3, r2
 473 025e 0092     		str	r2, [sp]
 474 0260 2946     		mov	r1, r5
 475 0262 0194     		str	r4, [sp, #4]
 476 0264 2A46     		mov	r2, r5
 477 0266 FFF7FEFF 		bl	populate_record.constprop.10
 478 026a FA68     		ldr	r2, [r7, #12]
 479 026c 2146     		mov	r1, r4
 480 026e 106A     		ldr	r0, [r2, #32]
 481 0270 FFF7FEFF 		bl	udp_send
 482 0274 2046     		mov	r0, r4
 483 0276 FFF7FEFF 		bl	pbuf_free
 484 027a D7F804C0 		ldr	ip, [r7, #4]
 485 027e E546     		mov	sp, ip
 486 0280 36E7     		b	.L32
 487              	.L70:
 488 0282 A54B     		ldr	r3, .L74
 489 0284 07F13001 		add	r1, r7, #48
 490 0288 1868     		ldr	r0, [r3]
 491 028a FFF7FEFF 		bl	strcasecmp
 492 028e 0446     		mov	r4, r0
 493 0290 0028     		cmp	r0, #0
 494 0292 46D1     		bne	.L34
 495 0294 D7F80CC0 		ldr	ip, [r7, #12]
 496 0298 2146     		mov	r1, r4
 497 029a DCF81800 		ldr	r0, [ip, #24]
 498 029e FFF7FEFF 		bl	populate_header.constprop.11
 499 02a2 0546     		mov	r5, r0
 500 02a4 4089     		ldrh	r0, [r0, #10]
 501 02a6 07F12A06 		add	r6, r7, #42
 502 02aa 6FEA8040 		mvn	r0, r0, lsl #18
 503 02ae 6FEA9040 		mvn	r0, r0, lsr #18
 504 02b2 80B2     		uxth	r0, r0
 505 02b4 FFF7FEFF 		bl	lwip_htons
 506 02b8 D7F80CC0 		ldr	ip, [r7, #12]
 507 02bc 3080     		strh	r0, [r6]	@ movhi
 508 02be DCF81830 		ldr	r3, [ip, #24]
 509 02c2 002B     		cmp	r3, #0
 510 02c4 22DD     		ble	.L37
 511 02c6 D7F80CB0 		ldr	fp, [r7, #12]
 512 02ca A146     		mov	r9, r4
 513 02cc A846     		mov	r8, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\cciGS0dc.s 			page 10


 514 02ce 07F13004 		add	r4, r7, #48
 515              	.L38:
 516 02d2 DBF81430 		ldr	r3, [fp, #20]
 517 02d6 B9F1000F 		cmp	r9, #0
 518 02da 18BF     		it	ne
 519 02dc 3446     		movne	r4, r6
 520 02de 53F83950 		ldr	r5, [r3, r9, lsl #3]
 521 02e2 09F10109 		add	r9, r9, #1
 522 02e6 2846     		mov	r0, r5
 523 02e8 FFF7FEFF 		bl	strlen
 524 02ec 0130     		adds	r0, r0, #1
 525 02ee 83B2     		uxth	r3, r0
 526 02f0 0093     		str	r3, [sp]
 527 02f2 CDF80480 		str	r8, [sp, #4]
 528 02f6 2B46     		mov	r3, r5
 529 02f8 2046     		mov	r0, r4
 530 02fa 0C21     		movs	r1, #12
 531 02fc 0122     		movs	r2, #1
 532 02fe FFF7FEFF 		bl	populate_record.constprop.10
 533 0302 DBF81830 		ldr	r3, [fp, #24]
 534 0306 9945     		cmp	r9, r3
 535 0308 E3DB     		blt	.L38
 536 030a 4546     		mov	r5, r8
 537              	.L37:
 538 030c D7F80CC0 		ldr	ip, [r7, #12]
 539 0310 2946     		mov	r1, r5
 540 0312 DCF82000 		ldr	r0, [ip, #32]
 541 0316 FFF7FEFF 		bl	udp_send
 542 031a 2846     		mov	r0, r5
 543 031c FFF7FEFF 		bl	pbuf_free
 544 0320 E6E6     		b	.L32
 545              	.L34:
 546 0322 07F13103 		add	r3, r7, #49
 547 0326 1846     		mov	r0, r3
 548 0328 07F12C01 		add	r1, r7, #44
 549 032c 0A22     		movs	r2, #10
 550 032e FB62     		str	r3, [r7, #44]
 551 0330 FFF7FEFF 		bl	strtol
 552 0334 D7F80CC0 		ldr	ip, [r7, #12]
 553 0338 DCF82430 		ldr	r3, [ip, #36]
 554 033c DB79     		ldrb	r3, [r3, #7]	@ zero_extendqisi2
 555 033e 9842     		cmp	r0, r3
 556 0340 00F0EE80 		beq	.L72
 557              	.L39:
 558 0344 D7F80CC0 		ldr	ip, [r7, #12]
 559 0348 DCF81850 		ldr	r5, [ip, #24]
 560 034c DCF81480 		ldr	r8, [ip, #20]
 561 0350 002D     		cmp	r5, #0
 562 0352 7FF7CDAE 		ble	.L32
 563 0356 0024     		movs	r4, #0
 564 0358 2646     		mov	r6, r4
 565 035a 04E0     		b	.L50
 566              	.L73:
 567 035c AE42     		cmp	r6, r5
 568 035e 04F10804 		add	r4, r4, #8
 569 0362 3FF4C5AE 		beq	.L32
 570              	.L50:
ARM GAS  C:\Users\George\AppData\Local\Temp\cciGS0dc.s 			page 11


 571 0366 07F13000 		add	r0, r7, #48
 572 036a 58F80410 		ldr	r1, [r8, r4]
 573 036e 0136     		adds	r6, r6, #1
 574 0370 FFF7FEFF 		bl	strcasecmp
 575 0374 0028     		cmp	r0, #0
 576 0376 F1D1     		bne	.L73
 577 0378 8146     		mov	r9, r0
 578 037a 0321     		movs	r1, #3
 579 037c 0120     		movs	r0, #1
 580 037e FFF7FEFF 		bl	populate_header.constprop.11
 581 0382 0646     		mov	r6, r0
 582 0384 4089     		ldrh	r0, [r0, #10]
 583 0386 E846     		mov	r8, sp
 584 0388 6FEA8040 		mvn	r0, r0, lsl #18
 585 038c 6FEA9040 		mvn	r0, r0, lsr #18
 586 0390 80B2     		uxth	r0, r0
 587 0392 FFF7FEFF 		bl	lwip_htons
 588 0396 D7F80CC0 		ldr	ip, [r7, #12]
 589 039a 3885     		strh	r0, [r7, #40]	@ movhi
 590 039c DCF81010 		ldr	r1, [ip, #16]
 591 03a0 0846     		mov	r0, r1
 592 03a2 7960     		str	r1, [r7, #4]
 593 03a4 FFF7FEFF 		bl	strlen
 594 03a8 00F10903 		add	r3, r0, #9
 595 03ac 23F00703 		bic	r3, r3, #7
 596 03b0 ADEB030D 		sub	sp, sp, r3
 597 03b4 0546     		mov	r5, r0
 598 03b6 02AB     		add	r3, sp, #8
 599 03b8 6A1C     		adds	r2, r5, #1
 600 03ba 7968     		ldr	r1, [r7, #4]
 601 03bc 1846     		mov	r0, r3
 602 03be FFF7FEFF 		bl	memcpy
 603 03c2 398D     		ldrh	r1, [r7, #40]	@ unaligned
 604 03c4 AA1C     		adds	r2, r5, #2
 605 03c6 92B2     		uxth	r2, r2
 606 03c8 4153     		strh	r1, [r0, r5]	@ unaligned
 607 03ca 0346     		mov	r3, r0
 608 03cc 0C21     		movs	r1, #12
 609 03ce 8DE84400 		stmia	sp, {r2, r6}
 610 03d2 07F13000 		add	r0, r7, #48
 611 03d6 0122     		movs	r2, #1
 612 03d8 FFF7FEFF 		bl	populate_record.constprop.10
 613 03dc 05F11403 		add	r3, r5, #20
 614 03e0 23F00703 		bic	r3, r3, #7
 615 03e4 ADEB030D 		sub	sp, sp, r3
 616 03e8 7885     		strh	r0, [r7, #42]	@ movhi
 617 03ea 3220     		movs	r0, #50
 618 03ec FFF7FEFF 		bl	lwip_htons
 619 03f0 ADF80800 		strh	r0, [sp, #8]	@ unaligned
 620 03f4 4846     		mov	r0, r9
 621 03f6 FFF7FEFF 		bl	lwip_htons
 622 03fa D7F80CC0 		ldr	ip, [r7, #12]
 623 03fe 0DF10809 		add	r9, sp, #8
 624 0402 DCF81430 		ldr	r3, [ip, #20]
 625 0406 ADF80A00 		strh	r0, [sp, #10]	@ unaligned
 626 040a 2344     		add	r3, r3, r4
 627 040c 9888     		ldrh	r0, [r3, #4]
ARM GAS  C:\Users\George\AppData\Local\Temp\cciGS0dc.s 			page 12


 628 040e FFF7FEFF 		bl	lwip_htons
 629 0412 D7F80CC0 		ldr	ip, [r7, #12]
 630 0416 2A46     		mov	r2, r5
 631 0418 DCF81010 		ldr	r1, [ip, #16]
 632 041c A9F80400 		strh	r0, [r9, #4]	@ unaligned
 633 0420 0DF10E00 		add	r0, sp, #14
 634 0424 FFF7FEFF 		bl	memcpy
 635 0428 DFF8F0E0 		ldr	lr, .L74+4
 636 042c 05F10D03 		add	r3, r5, #13
 637 0430 DEF80000 		ldr	r0, [lr]	@ unaligned
 638 0434 BEF80440 		ldrh	r4, [lr, #4]	@ unaligned
 639 0438 9EF806E0 		ldrb	lr, [lr, #6]	@ zero_extendqisi2
 640 043c 1FFA83FC 		uxth	ip, r3
 641 0440 4D44     		add	r5, r5, r9
 642 0442 85F80CE0 		strb	lr, [r5, #12]
 643 0446 4B46     		mov	r3, r9
 644 0448 2121     		movs	r1, #33
 645 044a 0122     		movs	r2, #1
 646 044c C5F80600 		str	r0, [r5, #6]	@ unaligned
 647 0450 6C81     		strh	r4, [r5, #10]	@ unaligned
 648 0452 07F12A00 		add	r0, r7, #42
 649 0456 CDF800C0 		str	ip, [sp]
 650 045a 0196     		str	r6, [sp, #4]
 651 045c FFF7FEFF 		bl	populate_record.constprop.10
 652 0460 FFF7FEFF 		bl	lwip_ntohs
 653 0464 0630     		adds	r0, r0, #6
 654 0466 80B2     		uxth	r0, r0
 655 0468 FFF7FEFF 		bl	lwip_htons
 656 046c D7F80CC0 		ldr	ip, [r7, #12]
 657 0470 DCF81C40 		ldr	r4, [ip, #28]
 658 0474 2046     		mov	r0, r4
 659 0476 FFF7FEFF 		bl	strlen
 660 047a 0130     		adds	r0, r0, #1
 661 047c 83B2     		uxth	r3, r0
 662 047e 8DE84800 		stmia	sp, {r3, r6}
 663 0482 1021     		movs	r1, #16
 664 0484 2346     		mov	r3, r4
 665 0486 0122     		movs	r2, #1
 666 0488 07F12A00 		add	r0, r7, #42
 667 048c FFF7FEFF 		bl	populate_record.constprop.10
 668 0490 D7F80CC0 		ldr	ip, [r7, #12]
 669 0494 0422     		movs	r2, #4
 670 0496 DCF82430 		ldr	r3, [ip, #36]
 671 049a 0121     		movs	r1, #1
 672 049c 1344     		add	r3, r3, r2
 673 049e 0092     		str	r2, [sp]
 674 04a0 0196     		str	r6, [sp, #4]
 675 04a2 0A46     		mov	r2, r1
 676 04a4 07F12A00 		add	r0, r7, #42
 677 04a8 FFF7FEFF 		bl	populate_record.constprop.10
 678 04ac D7F80CC0 		ldr	ip, [r7, #12]
 679 04b0 3146     		mov	r1, r6
 680 04b2 DCF82000 		ldr	r0, [ip, #32]
 681 04b6 FFF7FEFF 		bl	udp_send
 682 04ba 3046     		mov	r0, r6
 683 04bc FFF7FEFF 		bl	pbuf_free
 684 04c0 C546     		mov	sp, r8
ARM GAS  C:\Users\George\AppData\Local\Temp\cciGS0dc.s 			page 13


 685 04c2 15E6     		b	.L32
 686              	.L69:
 687 04c4 FD68     		ldr	r5, [r7, #12]
 688              	.L49:
 689 04c6 2959     		ldr	r1, [r5, r4]
 690 04c8 07F13000 		add	r0, r7, #48
 691 04cc 0434     		adds	r4, r4, #4
 692 04ce FFF7FEFF 		bl	strcasecmp
 693 04d2 10B1     		cbz	r0, .L30
 694 04d4 102C     		cmp	r4, #16
 695 04d6 F6D1     		bne	.L49
 696 04d8 0AE6     		b	.L32
 697              	.L30:
 698 04da 0146     		mov	r1, r0
 699 04dc 0120     		movs	r0, #1
 700 04de FFF7FEFF 		bl	populate_header.constprop.11
 701 04e2 D7F80CC0 		ldr	ip, [r7, #12]
 702 04e6 0422     		movs	r2, #4
 703 04e8 DCF82430 		ldr	r3, [ip, #36]
 704 04ec 0121     		movs	r1, #1
 705 04ee 0446     		mov	r4, r0
 706 04f0 1344     		add	r3, r3, r2
 707 04f2 0190     		str	r0, [sp, #4]
 708 04f4 0092     		str	r2, [sp]
 709 04f6 07F13000 		add	r0, r7, #48
 710 04fa 0A46     		mov	r2, r1
 711 04fc FFF7FEFF 		bl	populate_record.constprop.10
 712 0500 D7F80CC0 		ldr	ip, [r7, #12]
 713 0504 2146     		mov	r1, r4
 714 0506 DCF82000 		ldr	r0, [ip, #32]
 715 050a FFF7FEFF 		bl	udp_send
 716 050e 2046     		mov	r0, r4
 717 0510 FFF7FEFF 		bl	pbuf_free
 718 0514 ECE5     		b	.L32
 719              	.L75:
 720 0516 00BF     		.align	2
 721              	.L74:
 722 0518 00000000 		.word	.LANCHOR2
 723 051c 54000000 		.word	.LC6
 724              	.L72:
 725 0520 FB6A     		ldr	r3, [r7, #44]
 726 0522 07F12C01 		add	r1, r7, #44
 727 0526 0133     		adds	r3, r3, #1
 728 0528 1846     		mov	r0, r3
 729 052a 0A22     		movs	r2, #10
 730 052c FB62     		str	r3, [r7, #44]
 731 052e FFF7FEFF 		bl	strtol
 732 0532 D7F80CC0 		ldr	ip, [r7, #12]
 733 0536 DCF82430 		ldr	r3, [ip, #36]
 734 053a 9B79     		ldrb	r3, [r3, #6]	@ zero_extendqisi2
 735 053c 9842     		cmp	r0, r3
 736 053e 7FF401AF 		bne	.L39
 737 0542 FB6A     		ldr	r3, [r7, #44]
 738 0544 07F12C01 		add	r1, r7, #44
 739 0548 0133     		adds	r3, r3, #1
 740 054a 1846     		mov	r0, r3
 741 054c 0A22     		movs	r2, #10
ARM GAS  C:\Users\George\AppData\Local\Temp\cciGS0dc.s 			page 14


 742 054e FB62     		str	r3, [r7, #44]
 743 0550 FFF7FEFF 		bl	strtol
 744 0554 D7F80CC0 		ldr	ip, [r7, #12]
 745 0558 DCF82430 		ldr	r3, [ip, #36]
 746 055c 5B79     		ldrb	r3, [r3, #5]	@ zero_extendqisi2
 747 055e 9842     		cmp	r0, r3
 748 0560 7FF4F0AE 		bne	.L39
 749 0564 FB6A     		ldr	r3, [r7, #44]
 750 0566 07F12C01 		add	r1, r7, #44
 751 056a 0133     		adds	r3, r3, #1
 752 056c 1846     		mov	r0, r3
 753 056e 0A22     		movs	r2, #10
 754 0570 FB62     		str	r3, [r7, #44]
 755 0572 FFF7FEFF 		bl	strtol
 756 0576 D7F80CC0 		ldr	ip, [r7, #12]
 757 057a DCF82430 		ldr	r3, [ip, #36]
 758 057e 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 759 0580 9842     		cmp	r0, r3
 760 0582 7FF4DFAE 		bne	.L39
 761 0586 2349     		ldr	r1, .L76
 762 0588 F86A     		ldr	r0, [r7, #44]
 763 058a FFF7FEFF 		bl	strcmp
 764 058e 0146     		mov	r1, r0
 765 0590 0028     		cmp	r0, #0
 766 0592 7FF4D7AE 		bne	.L39
 767 0596 0120     		movs	r0, #1
 768 0598 FFF7FEFF 		bl	populate_header.constprop.11
 769 059c D7F80CC0 		ldr	ip, [r7, #12]
 770 05a0 0446     		mov	r4, r0
 771 05a2 DCF81090 		ldr	r9, [ip, #16]
 772 05a6 6E46     		mov	r6, sp
 773 05a8 4846     		mov	r0, r9
 774 05aa FFF7FEFF 		bl	strlen
 775 05ae 00F10E03 		add	r3, r0, #14
 776 05b2 23F00703 		bic	r3, r3, #7
 777 05b6 ADEB030D 		sub	sp, sp, r3
 778 05ba 0546     		mov	r5, r0
 779 05bc 02AB     		add	r3, sp, #8
 780 05be 2A46     		mov	r2, r5
 781 05c0 4946     		mov	r1, r9
 782 05c2 1846     		mov	r0, r3
 783 05c4 FFF7FEFF 		bl	memcpy
 784 05c8 DFF84CE0 		ldr	lr, .L76+4
 785 05cc DFF848C0 		ldr	ip, .L76+4
 786 05d0 0346     		mov	r3, r0
 787 05d2 DEF80000 		ldr	r0, [lr]	@ unaligned
 788 05d6 9CF80610 		ldrb	r1, [ip, #6]	@ zero_extendqisi2
 789 05da BEF804E0 		ldrh	lr, [lr, #4]	@ unaligned
 790 05de EA1D     		adds	r2, r5, #7
 791 05e0 5851     		str	r0, [r3, r5]	@ unaligned
 792 05e2 92B2     		uxth	r2, r2
 793 05e4 1D44     		add	r5, r5, r3
 794 05e6 A5F804E0 		strh	lr, [r5, #4]	@ unaligned
 795 05ea A971     		strb	r1, [r5, #6]
 796 05ec 07F13000 		add	r0, r7, #48
 797 05f0 8DE81400 		stmia	sp, {r2, r4}
 798 05f4 0C21     		movs	r1, #12
ARM GAS  C:\Users\George\AppData\Local\Temp\cciGS0dc.s 			page 15


 799 05f6 0122     		movs	r2, #1
 800 05f8 FFF7FEFF 		bl	populate_record.constprop.10
 801 05fc D7F80CC0 		ldr	ip, [r7, #12]
 802 0600 2146     		mov	r1, r4
 803 0602 DCF82000 		ldr	r0, [ip, #32]
 804 0606 FFF7FEFF 		bl	udp_send
 805 060a 2046     		mov	r0, r4
 806 060c FFF7FEFF 		bl	pbuf_free
 807 0610 B546     		mov	sp, r6
 808 0612 6DE5     		b	.L32
 809              	.L77:
 810              		.align	2
 811              	.L76:
 812 0614 44000000 		.word	.LC5
 813 0618 54000000 		.word	.LC6
 814              		.size	recv, .-recv
 815              		.section	.text.mdns_responder_init,"ax",%progbits
 816              		.align	2
 817              		.global	mdns_responder_init
 818              		.thumb
 819              		.thumb_func
 820              		.type	mdns_responder_init, %function
 821              	mdns_responder_init:
 822              		@ args = 0, pretend = 0, frame = 8
 823              		@ frame_needed = 0, uses_anonymous_args = 0
 824 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 825 0004 4B4B     		ldr	r3, .L101
 826 0006 83B0     		sub	sp, sp, #12
 827 0008 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 828 000a 8046     		mov	r8, r0
 829 000c 8946     		mov	r9, r1
 830 000e 1546     		mov	r5, r2
 831 0010 44B1     		cbz	r4, .L79
 832 0012 494B     		ldr	r3, .L101+4
 833 0014 0020     		movs	r0, #0
 834 0016 C3F81480 		str	r8, [r3, #20]
 835 001a 9961     		str	r1, [r3, #24]
 836              	.L80:
 837 001c 40B2     		sxtb	r0, r0
 838 001e 03B0     		add	sp, sp, #12
 839              		@ sp needed
 840 0020 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 841              	.L79:
 842 0024 444F     		ldr	r7, .L101+4
 843 0026 454A     		ldr	r2, .L101+8
 844 0028 0126     		movs	r6, #1
 845 002a 3C60     		str	r4, [r7]
 846 002c 7C60     		str	r4, [r7, #4]
 847 002e BC60     		str	r4, [r7, #8]
 848 0030 FC60     		str	r4, [r7, #12]
 849 0032 3C61     		str	r4, [r7, #16]
 850 0034 7C61     		str	r4, [r7, #20]
 851 0036 BC61     		str	r4, [r7, #24]
 852 0038 FC61     		str	r4, [r7, #28]
 853 003a 3C62     		str	r4, [r7, #32]
 854 003c 1E70     		strb	r6, [r3]
 855 003e 7A62     		str	r2, [r7, #36]
ARM GAS  C:\Users\George\AppData\Local\Temp\cciGS0dc.s 			page 16


 856 0040 FFF7FEFF 		bl	setup_hostnames.constprop.8
 857 0044 2B68     		ldr	r3, [r5]
 858 0046 002B     		cmp	r3, #0
 859 0048 60D0     		beq	.L90
 860 004a 2E46     		mov	r6, r5
 861              	.L83:
 862 004c 1846     		mov	r0, r3
 863 004e FFF7FEFF 		bl	strlen
 864 0052 56F8043F 		ldr	r3, [r6, #4]!
 865 0056 0134     		adds	r4, r4, #1
 866 0058 0444     		add	r4, r4, r0
 867 005a 002B     		cmp	r3, #0
 868 005c F6D1     		bne	.L83
 869 005e 0134     		adds	r4, r4, #1
 870 0060 A0B2     		uxth	r0, r4
 871              	.L81:
 872 0062 FFF7FEFF 		bl	mem_malloc
 873 0066 F861     		str	r0, [r7, #28]
 874 0068 0446     		mov	r4, r0
 875 006a 2868     		ldr	r0, [r5]
 876 006c 043D     		subs	r5, r5, #4
 877 006e 68B1     		cbz	r0, .L86
 878              	.L87:
 879 0070 FFF7FEFF 		bl	strlen
 880 0074 2070     		strb	r0, [r4]
 881 0076 55F8041F 		ldr	r1, [r5, #4]!
 882 007a 0134     		adds	r4, r4, #1
 883 007c 0646     		mov	r6, r0
 884 007e 2046     		mov	r0, r4
 885 0080 FFF7FEFF 		bl	strcpy
 886 0084 6868     		ldr	r0, [r5, #4]
 887 0086 3444     		add	r4, r4, r6
 888 0088 0028     		cmp	r0, #0
 889 008a F1D1     		bne	.L87
 890              	.L86:
 891 008c 2C4B     		ldr	r3, .L101+12
 892 008e C7F81480 		str	r8, [r7, #20]
 893 0092 C7F81890 		str	r9, [r7, #24]
 894 0096 0193     		str	r3, [sp, #4]
 895 0098 FFF7FEFF 		bl	udp_new
 896 009c 264D     		ldr	r5, .L101+4
 897 009e 3862     		str	r0, [r7, #32]
 898 00a0 0028     		cmp	r0, #0
 899 00a2 3FD0     		beq	.L98
 900 00a4 FFF7FEFF 		bl	udp_new
 901 00a8 0446     		mov	r4, r0
 902 00aa 0028     		cmp	r0, #0
 903 00ac 3CD0     		beq	.L99
 904 00ae 01A9     		add	r1, sp, #4
 905 00b0 2448     		ldr	r0, .L101+16
 906 00b2 FFF7FEFF 		bl	igmp_joingroup
 907 00b6 0028     		cmp	r0, #0
 908 00b8 B0D1     		bne	.L80
 909 00ba 237A     		ldrb	r3, [r4, #8]	@ zero_extendqisi2
 910 00bc 2046     		mov	r0, r4
 911 00be 43F00403 		orr	r3, r3, #4
 912 00c2 2372     		strb	r3, [r4, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\cciGS0dc.s 			page 17


 913 00c4 2B6A     		ldr	r3, [r5, #32]
 914 00c6 1F49     		ldr	r1, .L101+16
 915 00c8 1E7A     		ldrb	r6, [r3, #8]	@ zero_extendqisi2
 916 00ca 41F2E942 		movw	r2, #5353
 917 00ce 46F00406 		orr	r6, r6, #4
 918 00d2 1E72     		strb	r6, [r3, #8]
 919 00d4 FFF7FEFF 		bl	udp_bind
 920 00d8 0646     		mov	r6, r0
 921 00da 60B9     		cbnz	r0, .L89
 922 00dc 2046     		mov	r0, r4
 923 00de 1A49     		ldr	r1, .L101+20
 924 00e0 2A46     		mov	r2, r5
 925 00e2 FFF7FEFF 		bl	udp_recv
 926 00e6 3146     		mov	r1, r6
 927 00e8 286A     		ldr	r0, [r5, #32]
 928 00ea 41F2E942 		movw	r2, #5353
 929 00ee FFF7FEFF 		bl	udp_bind
 930 00f2 0646     		mov	r6, r0
 931 00f4 60B1     		cbz	r0, .L100
 932              	.L89:
 933 00f6 2046     		mov	r0, r4
 934 00f8 FFF7FEFF 		bl	udp_remove
 935 00fc 386A     		ldr	r0, [r7, #32]
 936 00fe FFF7FEFF 		bl	udp_remove
 937 0102 3046     		mov	r0, r6
 938 0104 40B2     		sxtb	r0, r0
 939 0106 03B0     		add	sp, sp, #12
 940              		@ sp needed
 941 0108 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 942              	.L90:
 943 010c 3046     		mov	r0, r6
 944 010e A8E7     		b	.L81
 945              	.L100:
 946 0110 286A     		ldr	r0, [r5, #32]
 947 0112 01A9     		add	r1, sp, #4
 948 0114 41F2E942 		movw	r2, #5353
 949 0118 FFF7FEFF 		bl	udp_connect
 950 011c 0646     		mov	r6, r0
 951 011e 0028     		cmp	r0, #0
 952 0120 E9D1     		bne	.L89
 953 0122 7BE7     		b	.L80
 954              	.L98:
 955 0124 FF20     		movs	r0, #255
 956 0126 79E7     		b	.L80
 957              	.L99:
 958 0128 286A     		ldr	r0, [r5, #32]
 959 012a FFF7FEFF 		bl	udp_remove
 960 012e FF20     		movs	r0, #255
 961 0130 74E7     		b	.L80
 962              	.L102:
 963 0132 00BF     		.align	2
 964              	.L101:
 965 0134 00000000 		.word	.LANCHOR3
 966 0138 00000000 		.word	.LANCHOR0
 967 013c 00000000 		.word	gs_net_if
 968 0140 E00000FB 		.word	-83885856
 969 0144 00000000 		.word	ip_addr_any
ARM GAS  C:\Users\George\AppData\Local\Temp\cciGS0dc.s 			page 18


 970 0148 00000000 		.word	recv
 971              		.size	mdns_responder_init, .-mdns_responder_init
 972              		.section	.text.mdns_update_hostname,"ax",%progbits
 973              		.align	2
 974              		.global	mdns_update_hostname
 975              		.thumb
 976              		.thumb_func
 977              		.type	mdns_update_hostname, %function
 978              	mdns_update_hostname:
 979              		@ args = 0, pretend = 0, frame = 0
 980              		@ frame_needed = 0, uses_anonymous_args = 0
 981 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 982 0002 0D4E     		ldr	r6, .L114
 983 0004 0027     		movs	r7, #0
 984 0006 3446     		mov	r4, r6
 985 0008 06F11005 		add	r5, r6, #16
 986              	.L106:
 987 000c 54F8043B 		ldr	r3, [r4], #4
 988 0010 1846     		mov	r0, r3
 989 0012 1BB1     		cbz	r3, .L104
 990 0014 FFF7FEFF 		bl	mem_free
 991 0018 44F8047C 		str	r7, [r4, #-4]
 992              	.L104:
 993 001c AC42     		cmp	r4, r5
 994 001e F5D1     		bne	.L106
 995 0020 3069     		ldr	r0, [r6, #16]
 996 0022 054C     		ldr	r4, .L114
 997 0024 18B1     		cbz	r0, .L107
 998 0026 FFF7FEFF 		bl	mem_free
 999 002a 0023     		movs	r3, #0
 1000 002c 2361     		str	r3, [r4, #16]
 1001              	.L107:
 1002 002e BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 1003 0032 FFF7FEBF 		b	setup_hostnames.constprop.8
 1004              	.L115:
 1005 0036 00BF     		.align	2
 1006              	.L114:
 1007 0038 00000000 		.word	.LANCHOR0
 1008              		.size	mdns_update_hostname, .-mdns_update_hostname
 1009              		.section	.text.mdns_announce,"ax",%progbits
 1010              		.align	2
 1011              		.global	mdns_announce
 1012              		.thumb
 1013              		.thumb_func
 1014              		.type	mdns_announce, %function
 1015              	mdns_announce:
 1016              		@ args = 0, pretend = 0, frame = 0
 1017              		@ frame_needed = 0, uses_anonymous_args = 0
 1018 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1019 0004 0420     		movs	r0, #4
 1020 0006 83B0     		sub	sp, sp, #12
 1021 0008 0021     		movs	r1, #0
 1022 000a FFF7FEFF 		bl	populate_header.constprop.11
 1023 000e 104C     		ldr	r4, .L119
 1024 0010 0546     		mov	r5, r0
 1025 0012 04F11008 		add	r8, r4, #16
 1026 0016 04F10409 		add	r9, r4, #4
ARM GAS  C:\Users\George\AppData\Local\Temp\cciGS0dc.s 			page 19


 1027 001a 0427     		movs	r7, #4
 1028              	.L118:
 1029 001c D9F82430 		ldr	r3, [r9, #36]
 1030 0020 54F8040F 		ldr	r0, [r4, #4]!
 1031 0024 0097     		str	r7, [sp]
 1032 0026 0195     		str	r5, [sp, #4]
 1033 0028 0433     		adds	r3, r3, #4
 1034 002a 0121     		movs	r1, #1
 1035 002c 48F20102 		movw	r2, #32769
 1036 0030 FFF7FEFF 		bl	populate_record.constprop.10
 1037 0034 4445     		cmp	r4, r8
 1038 0036 074E     		ldr	r6, .L119+4
 1039 0038 F0D1     		bne	.L118
 1040 003a 306A     		ldr	r0, [r6, #32]
 1041 003c 2946     		mov	r1, r5
 1042 003e FFF7FEFF 		bl	udp_send
 1043 0042 2846     		mov	r0, r5
 1044 0044 03B0     		add	sp, sp, #12
 1045              		@ sp needed
 1046 0046 BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 1047 004a FFF7FEBF 		b	pbuf_free
 1048              	.L120:
 1049 004e 00BF     		.align	2
 1050              	.L119:
 1051 0050 FCFFFFFF 		.word	.LANCHOR0-4
 1052 0054 00000000 		.word	.LANCHOR0
 1053              		.size	mdns_announce, .-mdns_announce
 1054              		.global	all_services
 1055              		.section	.data.all_services,"aw",%progbits
 1056              		.align	2
 1057              		.set	.LANCHOR2,. + 0
 1058              		.type	all_services, %object
 1059              		.size	all_services, 4
 1060              	all_services:
 1061 0000 5C000000 		.word	.LC7
 1062              		.section	.bss.initialised.6167,"aw",%nobits
 1063              		.set	.LANCHOR3,. + 0
 1064              		.type	initialised.6167, %object
 1065              		.size	initialised.6167, 1
 1066              	initialised.6167:
 1067 0000 00       		.space	1
 1068              		.section	.bss.mdns_state,"aw",%nobits
 1069              		.align	2
 1070              		.set	.LANCHOR0,. + 0
 1071              		.type	mdns_state, %object
 1072              		.size	mdns_state, 40
 1073              	mdns_state:
 1074 0000 00000000 		.space	40
 1074      00000000 
 1074      00000000 
 1074      00000000 
 1074      00000000 
 1075              		.section	.rodata.str1.4,"aMS",%progbits,1
 1076              		.align	2
 1077              	.LC0:
 1078 0000 25632573 		.ascii	"%c%s%s\000"
 1078      257300
ARM GAS  C:\Users\George\AppData\Local\Temp\cciGS0dc.s 			page 20


 1079 0007 00       		.space	1
 1080              	.LC1:
 1081 0008 25632573 		.ascii	"%c%s-%02X%s\000"
 1081      2D253032 
 1081      58257300 
 1082              	.LC2:
 1083 0014 25303258 		.ascii	"%02X%02X%02X%02X%02X%02X\000"
 1083      25303258 
 1083      25303258 
 1083      25303258 
 1083      25303258 
 1084 002d 000000   		.space	3
 1085              	.LC3:
 1086 0030 25632573 		.ascii	"%c%s-%s%s\000"
 1086      2D257325 
 1086      7300
 1087 003a 0000     		.space	2
 1088              	.LC4:
 1089 003c 25632573 		.ascii	"%c%s-%s\000"
 1089      2D257300 
 1090              	.LC5:
 1091 0044 07696E2D 		.ascii	"\007in-addr\004arpa\000"
 1091      61646472 
 1091      04617270 
 1091      6100
 1092 0052 0000     		.space	2
 1093              	.LC6:
 1094 0054 056C6F63 		.ascii	"\005local\000"
 1094      616C00
 1095 005b 00       		.space	1
 1096              	.LC7:
 1097 005c 095F7365 		.ascii	"\011_services\007_dns-sd\004_udp\005local\000"
 1097      72766963 
 1097      6573075F 
 1097      646E732D 
 1097      7364045F 
 1098 007a 0000     		.section	.rodata.dotlocal,"a",%progbits
 1099              		.align	2
 1100              		.set	.LANCHOR1,. + 0
 1101              		.type	dotlocal, %object
 1102              		.size	dotlocal, 7
 1103              	dotlocal:
 1104 0000 056C6F63 		.ascii	"\005local\000"
 1104      616C00
 1105 0007 00       		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
