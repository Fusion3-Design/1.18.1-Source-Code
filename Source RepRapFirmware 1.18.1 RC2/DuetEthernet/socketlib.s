ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 1


   1              		.syntax unified
   2              		.cpu cortex-m4
   3              		.eabi_attribute 27, 3
   4              		.fpu fpv4-sp-d16
   5              		.eabi_attribute 20, 1
   6              		.eabi_attribute 21, 1
   7              		.eabi_attribute 23, 3
   8              		.eabi_attribute 24, 1
   9              		.eabi_attribute 25, 1
  10              		.eabi_attribute 26, 1
  11              		.eabi_attribute 30, 2
  12              		.eabi_attribute 34, 1
  13              		.eabi_attribute 18, 4
  14              		.thumb
  15              		.file	"socketlib.cpp"
  16              		.section	.text._Z11ExecCommandhh,"ax",%progbits
  17              		.align	2
  18              		.global	_Z11ExecCommandhh
  19              		.thumb
  20              		.thumb_func
  21              		.type	_Z11ExecCommandhh, %function
  22              	_Z11ExecCommandhh:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 4001     		lsls	r0, r0, #5
  26 0002 10B5     		push	{r4, lr}
  27 0004 00F58474 		add	r4, r0, #264
  28 0008 2046     		mov	r0, r4
  29 000a FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
  30              	.L3:
  31 000e 2046     		mov	r0, r4
  32 0010 FFF7FEFF 		bl	_Z12WIZCHIP_READm
  33 0014 0028     		cmp	r0, #0
  34 0016 FAD1     		bne	.L3
  35 0018 10BD     		pop	{r4, pc}
  36              		.size	_Z11ExecCommandhh, .-_Z11ExecCommandhh
  37 001a 00BF     		.section	.text._Z5closeh,"ax",%progbits
  38              		.align	2
  39              		.global	_Z5closeh
  40              		.thumb
  41              		.thumb_func
  42              		.type	_Z5closeh, %function
  43              	_Z5closeh:
  44              		@ args = 0, pretend = 0, frame = 0
  45              		@ frame_needed = 0, uses_anonymous_args = 0
  46 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  47 0002 0546     		mov	r5, r0
  48 0004 0126     		movs	r6, #1
  49 0006 06EB8504 		add	r4, r6, r5, lsl #2
  50 000a 1021     		movs	r1, #16
  51 000c E400     		lsls	r4, r4, #3
  52 000e FFF7FEFF 		bl	_Z11ExecCommandhh
  53 0012 04F50070 		add	r0, r4, #512
  54 0016 1F21     		movs	r1, #31
  55 0018 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
  56 001c 0E4A     		ldr	r2, .L8
  57 001e 0F4B     		ldr	r3, .L8+4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 2


  58 0020 1788     		ldrh	r7, [r2]
  59 0022 1888     		ldrh	r0, [r3]
  60 0024 DFF838C0 		ldr	ip, .L8+8
  61 0028 DFF838E0 		ldr	lr, .L8+12
  62 002c AE40     		lsls	r6, r6, r5
  63 002e F643     		mvns	r6, r6
  64 0030 0021     		movs	r1, #0
  65 0032 B6B2     		uxth	r6, r6
  66 0034 2CF81510 		strh	r1, [ip, r5, lsl #1]	@ movhi
  67 0038 0EF80510 		strb	r1, [lr, r5]
  68 003c 06EA0701 		and	r1, r6, r7
  69 0040 0640     		ands	r6, r6, r0
  70 0042 04F54074 		add	r4, r4, #768
  71 0046 1180     		strh	r1, [r2]	@ movhi
  72 0048 1E80     		strh	r6, [r3]	@ movhi
  73              	.L7:
  74 004a 2046     		mov	r0, r4
  75 004c FFF7FEFF 		bl	_Z12WIZCHIP_READm
  76 0050 0028     		cmp	r0, #0
  77 0052 FAD1     		bne	.L7
  78 0054 0120     		movs	r0, #1
  79 0056 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  80              	.L9:
  81              		.align	2
  82              	.L8:
  83 0058 00000000 		.word	.LANCHOR0
  84 005c 00000000 		.word	.LANCHOR1
  85 0060 00000000 		.word	.LANCHOR2
  86 0064 00000000 		.word	.LANCHOR3
  87              		.size	_Z5closeh, .-_Z5closeh
  88              		.section	.text._Z6sockethhth,"ax",%progbits
  89              		.align	2
  90              		.global	_Z6sockethhth
  91              		.thumb
  92              		.thumb_func
  93              		.type	_Z6sockethhth, %function
  94              	_Z6sockethhth:
  95              		@ args = 0, pretend = 0, frame = 8
  96              		@ frame_needed = 0, uses_anonymous_args = 0
  97 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
  98 0004 0229     		cmp	r1, #2
  99 0006 83B0     		sub	sp, sp, #12
 100 0008 0E46     		mov	r6, r1
 101 000a 0546     		mov	r5, r0
 102 000c 1446     		mov	r4, r2
 103 000e 1F46     		mov	r7, r3
 104 0010 12D0     		beq	.L12
 105 0012 0429     		cmp	r1, #4
 106 0014 10D0     		beq	.L12
 107 0016 0129     		cmp	r1, #1
 108 0018 04D0     		beq	.L42
 109 001a FB20     		movs	r0, #251
 110              	.L11:
 111 001c 40B2     		sxtb	r0, r0
 112 001e 03B0     		add	sp, sp, #12
 113              		@ sp needed
 114 0020 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 3


 115              	.L42:
 116 0024 4FF47060 		mov	r0, #3840
 117 0028 01A9     		add	r1, sp, #4
 118 002a 0422     		movs	r2, #4
 119 002c FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 120 0030 019B     		ldr	r3, [sp, #4]
 121 0032 FD20     		movs	r0, #253
 122 0034 002B     		cmp	r3, #0
 123 0036 F1D0     		beq	.L11
 124              	.L12:
 125 0038 7807     		lsls	r0, r7, #29
 126 003a 5BD4     		bmi	.L31
 127 003c 002F     		cmp	r7, #0
 128 003e 53D0     		beq	.L43
 129 0040 012E     		cmp	r6, #1
 130 0042 59D0     		beq	.L18
 131 0044 022E     		cmp	r6, #2
 132 0046 51D0     		beq	.L19
 133              	.L40:
 134 0048 5FFA87F9 		uxtb	r9, r7
 135              	.L16:
 136 004c 2846     		mov	r0, r5
 137 004e 4FEA4518 		lsl	r8, r5, #5
 138 0052 FFF7FEFF 		bl	_Z5closeh
 139 0056 08F10808 		add	r8, r8, #8
 140 005a 09F0F001 		and	r1, r9, #240
 141 005e 3143     		orrs	r1, r1, r6
 142 0060 4046     		mov	r0, r8
 143 0062 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 144 0066 54B9     		cbnz	r4, .L23
 145 0068 294B     		ldr	r3, .L45
 146 006a 1C88     		ldrh	r4, [r3]
 147 006c 621C     		adds	r2, r4, #1
 148 006e 92B2     		uxth	r2, r2
 149 0070 4FF6F071 		movw	r1, #65520
 150 0074 8A42     		cmp	r2, r1
 151 0076 08BF     		it	eq
 152 0078 4FF44042 		moveq	r2, #49152
 153 007c 1A80     		strh	r2, [r3]	@ movhi
 154              	.L23:
 155 007e 210A     		lsrs	r1, r4, #8
 156 0080 08F58060 		add	r0, r8, #1024
 157 0084 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 158 0088 E1B2     		uxtb	r1, r4
 159 008a 08F5A060 		add	r0, r8, #1280
 160 008e FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 161 0092 2846     		mov	r0, r5
 162 0094 0121     		movs	r1, #1
 163 0096 FFF7FEFF 		bl	_Z11ExecCommandhh
 164 009a 1E4A     		ldr	r2, .L45+4
 165 009c 1E4B     		ldr	r3, .L45+8
 166 009e B2F800C0 		ldrh	ip, [r2]
 167 00a2 B3F800E0 		ldrh	lr, [r3]
 168 00a6 1D4E     		ldr	r6, .L45+12
 169 00a8 1D4C     		ldr	r4, .L45+16
 170 00aa 0120     		movs	r0, #1
 171 00ac A840     		lsls	r0, r0, r5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 4


 172 00ae C043     		mvns	r0, r0
 173 00b0 80B2     		uxth	r0, r0
 174 00b2 07F00107 		and	r7, r7, #1
 175 00b6 00EA0C0C 		and	ip, r0, ip
 176 00ba 0021     		movs	r1, #0
 177 00bc AF40     		lsls	r7, r7, r5
 178 00be 47EA0C07 		orr	r7, r7, ip
 179 00c2 00EA0E00 		and	r0, r0, lr
 180 00c6 26F81510 		strh	r1, [r6, r5, lsl #1]	@ movhi
 181 00ca 6155     		strb	r1, [r4, r5]
 182 00cc 1780     		strh	r7, [r2]	@ movhi
 183 00ce 08F54074 		add	r4, r8, #768
 184 00d2 1880     		strh	r0, [r3]	@ movhi
 185              	.L26:
 186 00d4 2046     		mov	r0, r4
 187 00d6 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 188 00da 0028     		cmp	r0, #0
 189 00dc FAD0     		beq	.L26
 190 00de E8B2     		uxtb	r0, r5
 191 00e0 40B2     		sxtb	r0, r0
 192 00e2 03B0     		add	sp, sp, #12
 193              		@ sp needed
 194 00e4 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 195              	.L43:
 196 00e8 B946     		mov	r9, r7
 197 00ea AFE7     		b	.L16
 198              	.L19:
 199 00ec B906     		lsls	r1, r7, #26
 200 00ee 07D5     		bpl	.L44
 201 00f0 3B06     		lsls	r3, r7, #24
 202 00f2 A9D4     		bmi	.L40
 203              	.L31:
 204 00f4 FA20     		movs	r0, #250
 205 00f6 91E7     		b	.L11
 206              	.L18:
 207 00f8 17F0210F 		tst	r7, #33
 208 00fc A4D1     		bne	.L40
 209 00fe F9E7     		b	.L31
 210              	.L44:
 211 0100 FA06     		lsls	r2, r7, #27
 212 0102 5FFA87F9 		uxtb	r9, r7
 213 0106 A1D5     		bpl	.L16
 214 0108 19F0800F 		tst	r9, #128
 215 010c 9ED1     		bne	.L16
 216 010e F1E7     		b	.L31
 217              	.L46:
 218              		.align	2
 219              	.L45:
 220 0110 00000000 		.word	.LANCHOR4
 221 0114 00000000 		.word	.LANCHOR0
 222 0118 00000000 		.word	.LANCHOR1
 223 011c 00000000 		.word	.LANCHOR2
 224 0120 00000000 		.word	.LANCHOR3
 225              		.size	_Z6sockethhth, .-_Z6sockethhth
 226              		.section	.text._Z6listenh,"ax",%progbits
 227              		.align	2
 228              		.global	_Z6listenh
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 5


 229              		.thumb
 230              		.thumb_func
 231              		.type	_Z6listenh, %function
 232              	_Z6listenh:
 233              		@ args = 0, pretend = 0, frame = 0
 234              		@ frame_needed = 0, uses_anonymous_args = 0
 235 0000 70B5     		push	{r4, r5, r6, lr}
 236 0002 4401     		lsls	r4, r0, #5
 237 0004 0834     		adds	r4, r4, #8
 238 0006 0546     		mov	r5, r0
 239 0008 2046     		mov	r0, r4
 240 000a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 241 000e 00F00F06 		and	r6, r0, #15
 242 0012 012E     		cmp	r6, #1
 243 0014 13D1     		bne	.L49
 244 0016 04F54074 		add	r4, r4, #768
 245 001a 2046     		mov	r0, r4
 246 001c FFF7FEFF 		bl	_Z12WIZCHIP_READm
 247 0020 1328     		cmp	r0, #19
 248 0022 0FD1     		bne	.L50
 249 0024 2846     		mov	r0, r5
 250 0026 0221     		movs	r1, #2
 251 0028 FFF7FEFF 		bl	_Z11ExecCommandhh
 252 002c 2046     		mov	r0, r4
 253 002e FFF7FEFF 		bl	_Z12WIZCHIP_READm
 254 0032 1428     		cmp	r0, #20
 255 0034 08BF     		it	eq
 256 0036 3046     		moveq	r0, r6
 257 0038 07D1     		bne	.L52
 258              	.L48:
 259 003a 40B2     		sxtb	r0, r0
 260 003c 70BD     		pop	{r4, r5, r6, pc}
 261              	.L49:
 262 003e FB20     		movs	r0, #251
 263 0040 40B2     		sxtb	r0, r0
 264 0042 70BD     		pop	{r4, r5, r6, pc}
 265              	.L50:
 266 0044 FD20     		movs	r0, #253
 267 0046 40B2     		sxtb	r0, r0
 268 0048 70BD     		pop	{r4, r5, r6, pc}
 269              	.L52:
 270 004a 2846     		mov	r0, r5
 271 004c FFF7FEFF 		bl	_Z5closeh
 272 0050 FC20     		movs	r0, #252
 273 0052 F2E7     		b	.L48
 274              		.size	_Z6listenh, .-_Z6listenh
 275              		.section	.text._Z7connecthPht,"ax",%progbits
 276              		.align	2
 277              		.global	_Z7connecthPht
 278              		.thumb
 279              		.thumb_func
 280              		.type	_Z7connecthPht, %function
 281              	_Z7connecthPht:
 282              		@ args = 0, pretend = 0, frame = 0
 283              		@ frame_needed = 0, uses_anonymous_args = 0
 284 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 285 0004 4FF00408 		mov	r8, #4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 6


 286 0008 0125     		movs	r5, #1
 287 000a 18FB0055 		smlabb	r5, r8, r0, r5
 288 000e ED00     		lsls	r5, r5, #3
 289 0010 0746     		mov	r7, r0
 290 0012 2846     		mov	r0, r5
 291 0014 0E46     		mov	r6, r1
 292 0016 9146     		mov	r9, r2
 293 0018 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 294 001c 00F00F00 		and	r0, r0, #15
 295 0020 0128     		cmp	r0, #1
 296 0022 4CD1     		bne	.L57
 297 0024 05F54074 		add	r4, r5, #768
 298 0028 2046     		mov	r0, r4
 299 002a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 300 002e 1328     		cmp	r0, #19
 301 0030 55D1     		bne	.L58
 302 0032 3078     		ldrb	r0, [r6]	@ zero_extendqisi2
 303 0034 7378     		ldrb	r3, [r6, #1]	@ zero_extendqisi2
 304 0036 B178     		ldrb	r1, [r6, #2]	@ zero_extendqisi2
 305 0038 F278     		ldrb	r2, [r6, #3]	@ zero_extendqisi2
 306 003a 03EB0023 		add	r3, r3, r0, lsl #8
 307 003e 01EB0323 		add	r3, r1, r3, lsl #8
 308 0042 013A     		subs	r2, r2, #1
 309 0044 02EB0323 		add	r3, r2, r3, lsl #8
 310 0048 0333     		adds	r3, r3, #3
 311 004a 4CD8     		bhi	.L59
 312 004c B9F1000F 		cmp	r9, #0
 313 0050 47D0     		beq	.L60
 314 0052 4246     		mov	r2, r8
 315 0054 3146     		mov	r1, r6
 316 0056 05F54060 		add	r0, r5, #3072
 317 005a FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 318 005e 05F58050 		add	r0, r5, #4096
 319 0062 4FEA1921 		lsr	r1, r9, #8
 320 0066 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 321 006a 5FFA89F1 		uxtb	r1, r9
 322 006e 05F58850 		add	r0, r5, #4352
 323 0072 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 324 0076 3846     		mov	r0, r7
 325 0078 4146     		mov	r1, r8
 326 007a FFF7FEFF 		bl	_Z11ExecCommandhh
 327 007e 1B4B     		ldr	r3, .L67
 328 0080 1B88     		ldrh	r3, [r3]
 329 0082 43FA07F7 		asr	r7, r3, r7
 330 0086 FB07     		lsls	r3, r7, #31
 331 0088 15D4     		bmi	.L61
 332 008a 05F50075 		add	r5, r5, #512
 333 008e 08E0     		b	.L56
 334              	.L66:
 335 0090 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 336 0094 10F0080F 		tst	r0, #8
 337 0098 2046     		mov	r0, r4
 338 009a 14D1     		bne	.L64
 339 009c FFF7FEFF 		bl	_Z12WIZCHIP_READm
 340 00a0 C8B1     		cbz	r0, .L65
 341              	.L56:
 342 00a2 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 7


 343 00a4 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 344 00a8 1728     		cmp	r0, #23
 345 00aa 2846     		mov	r0, r5
 346 00ac F0D1     		bne	.L66
 347 00ae 0120     		movs	r0, #1
 348 00b0 40B2     		sxtb	r0, r0
 349 00b2 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 350              	.L61:
 351 00b6 0020     		movs	r0, #0
 352              	.L54:
 353 00b8 40B2     		sxtb	r0, r0
 354 00ba BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 355              	.L57:
 356 00be FB20     		movs	r0, #251
 357 00c0 40B2     		sxtb	r0, r0
 358 00c2 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 359              	.L64:
 360 00c6 2846     		mov	r0, r5
 361 00c8 0821     		movs	r1, #8
 362 00ca FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 363 00ce F320     		movs	r0, #243
 364 00d0 40B2     		sxtb	r0, r0
 365 00d2 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 366              	.L65:
 367 00d6 FC20     		movs	r0, #252
 368 00d8 40B2     		sxtb	r0, r0
 369 00da BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 370              	.L58:
 371 00de FD20     		movs	r0, #253
 372 00e0 EAE7     		b	.L54
 373              	.L60:
 374 00e2 F520     		movs	r0, #245
 375 00e4 E8E7     		b	.L54
 376              	.L59:
 377 00e6 F420     		movs	r0, #244
 378 00e8 E6E7     		b	.L54
 379              	.L68:
 380 00ea 00BF     		.align	2
 381              	.L67:
 382 00ec 00000000 		.word	.LANCHOR0
 383              		.size	_Z7connecthPht, .-_Z7connecthPht
 384              		.section	.text._Z10disconnecth,"ax",%progbits
 385              		.align	2
 386              		.global	_Z10disconnecth
 387              		.thumb
 388              		.thumb_func
 389              		.type	_Z10disconnecth, %function
 390              	_Z10disconnecth:
 391              		@ args = 0, pretend = 0, frame = 0
 392              		@ frame_needed = 0, uses_anonymous_args = 0
 393 0000 70B5     		push	{r4, r5, r6, lr}
 394 0002 4501     		lsls	r5, r0, #5
 395 0004 0835     		adds	r5, r5, #8
 396 0006 0646     		mov	r6, r0
 397 0008 2846     		mov	r0, r5
 398 000a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 399 000e 00F00F04 		and	r4, r0, #15
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 8


 400 0012 012C     		cmp	r4, #1
 401 0014 29D1     		bne	.L75
 402 0016 0821     		movs	r1, #8
 403 0018 3046     		mov	r0, r6
 404 001a FFF7FEFF 		bl	_Z11ExecCommandhh
 405 001e 144A     		ldr	r2, .L80
 406 0020 144B     		ldr	r3, .L80+4
 407 0022 1288     		ldrh	r2, [r2]
 408 0024 1988     		ldrh	r1, [r3]
 409 0026 B440     		lsls	r4, r4, r6
 410 0028 3241     		asrs	r2, r2, r6
 411 002a 21EA0404 		bic	r4, r1, r4
 412 002e D207     		lsls	r2, r2, #31
 413 0030 1C80     		strh	r4, [r3]	@ movhi
 414 0032 11D4     		bmi	.L78
 415 0034 05F54074 		add	r4, r5, #768
 416 0038 05F50075 		add	r5, r5, #512
 417 003c 04E0     		b	.L73
 418              	.L74:
 419 003e 2846     		mov	r0, r5
 420 0040 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 421 0044 0307     		lsls	r3, r0, #28
 422 0046 0AD4     		bmi	.L79
 423              	.L73:
 424 0048 2046     		mov	r0, r4
 425 004a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 426 004e 0028     		cmp	r0, #0
 427 0050 F5D1     		bne	.L74
 428 0052 0120     		movs	r0, #1
 429 0054 40B2     		sxtb	r0, r0
 430 0056 70BD     		pop	{r4, r5, r6, pc}
 431              	.L78:
 432 0058 0020     		movs	r0, #0
 433 005a 40B2     		sxtb	r0, r0
 434 005c 70BD     		pop	{r4, r5, r6, pc}
 435              	.L79:
 436 005e 3046     		mov	r0, r6
 437 0060 FFF7FEFF 		bl	_Z5closeh
 438 0064 F320     		movs	r0, #243
 439 0066 40B2     		sxtb	r0, r0
 440 0068 70BD     		pop	{r4, r5, r6, pc}
 441              	.L75:
 442 006a FB20     		movs	r0, #251
 443 006c 40B2     		sxtb	r0, r0
 444 006e 70BD     		pop	{r4, r5, r6, pc}
 445              	.L81:
 446              		.align	2
 447              	.L80:
 448 0070 00000000 		.word	.LANCHOR0
 449 0074 00000000 		.word	.LANCHOR1
 450              		.size	_Z10disconnecth, .-_Z10disconnecth
 451              		.section	.text._Z16disconnectNoWaith,"ax",%progbits
 452              		.align	2
 453              		.global	_Z16disconnectNoWaith
 454              		.thumb
 455              		.thumb_func
 456              		.type	_Z16disconnectNoWaith, %function
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 9


 457              	_Z16disconnectNoWaith:
 458              		@ args = 0, pretend = 0, frame = 0
 459              		@ frame_needed = 0, uses_anonymous_args = 0
 460              		@ link register save eliminated.
 461 0000 0821     		movs	r1, #8
 462 0002 FFF7FEBF 		b	_Z11ExecCommandhh
 463              		.size	_Z16disconnectNoWaith, .-_Z16disconnectNoWaith
 464 0006 00BF     		.section	.text._Z4sendhPht,"ax",%progbits
 465              		.align	2
 466              		.global	_Z4sendhPht
 467              		.thumb
 468              		.thumb_func
 469              		.type	_Z4sendhPht, %function
 470              	_Z4sendhPht:
 471              		@ args = 0, pretend = 0, frame = 0
 472              		@ frame_needed = 0, uses_anonymous_args = 0
 473 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 474 0004 4401     		lsls	r4, r0, #5
 475 0006 0834     		adds	r4, r4, #8
 476 0008 0546     		mov	r5, r0
 477 000a 2046     		mov	r0, r4
 478 000c 8B46     		mov	fp, r1
 479 000e 1746     		mov	r7, r2
 480 0010 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 481 0014 00F00F00 		and	r0, r0, #15
 482 0018 0128     		cmp	r0, #1
 483 001a 67D1     		bne	.L94
 484 001c 002F     		cmp	r7, #0
 485 001e 69D0     		beq	.L95
 486 0020 04F54076 		add	r6, r4, #768
 487 0024 3046     		mov	r0, r6
 488 0026 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 489 002a 1728     		cmp	r0, #23
 490 002c 01D0     		beq	.L85
 491 002e 1C28     		cmp	r0, #28
 492 0030 64D1     		bne	.L96
 493              	.L85:
 494 0032 DFF8E0A0 		ldr	r10, .L112
 495 0036 BAF80030 		ldrh	r3, [r10]
 496 003a 2B41     		asrs	r3, r3, r5
 497 003c D907     		lsls	r1, r3, #31
 498 003e 32D4     		bmi	.L109
 499              	.L86:
 500 0040 04F5F850 		add	r0, r4, #7936
 501 0044 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 502 0048 8002     		lsls	r0, r0, #10
 503 004a 83B2     		uxth	r3, r0
 504 004c 4FF00108 		mov	r8, #1
 505 0050 DFF8C490 		ldr	r9, .L112+4
 506 0054 BB42     		cmp	r3, r7
 507 0056 38BF     		it	cc
 508 0058 1F46     		movcc	r7, r3
 509 005a 08FA05F8 		lsl	r8, r8, r5
 510              	.L93:
 511 005e 2846     		mov	r0, r5
 512 0060 FFF7FEFF 		bl	_Z12getSn_TX_FSRh
 513 0064 0446     		mov	r4, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 10


 514 0066 3046     		mov	r0, r6
 515 0068 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 516 006c 1728     		cmp	r0, #23
 517 006e 01D0     		beq	.L89
 518 0070 1C28     		cmp	r0, #28
 519 0072 27D1     		bne	.L110
 520              	.L89:
 521 0074 B9F80030 		ldrh	r3, [r9]
 522 0078 18EA030F 		tst	r8, r3
 523 007c 1FD0     		beq	.L90
 524 007e A742     		cmp	r7, r4
 525 0080 1AD8     		bhi	.L91
 526              	.L92:
 527 0082 5946     		mov	r1, fp
 528 0084 2846     		mov	r0, r5
 529 0086 3A46     		mov	r2, r7
 530 0088 FFF7FEFF 		bl	_Z13wiz_send_datahPKht
 531 008c 2846     		mov	r0, r5
 532 008e 2021     		movs	r1, #32
 533 0090 FFF7FEFF 		bl	_Z11ExecCommandhh
 534 0094 BAF80030 		ldrh	r3, [r10]
 535 0098 48EA0308 		orr	r8, r8, r3
 536 009c 3846     		mov	r0, r7
 537 009e AAF80080 		strh	r8, [r10]	@ movhi
 538 00a2 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 539              	.L109:
 540 00a6 04F50078 		add	r8, r4, #512
 541 00aa 4046     		mov	r0, r8
 542 00ac FFF7FEFF 		bl	_Z12WIZCHIP_READm
 543 00b0 C206     		lsls	r2, r0, #27
 544 00b2 0ED4     		bmi	.L111
 545 00b4 0307     		lsls	r3, r0, #28
 546 00b6 25D4     		bmi	.L88
 547              	.L91:
 548 00b8 0020     		movs	r0, #0
 549 00ba BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 550              	.L90:
 551 00be A742     		cmp	r7, r4
 552 00c0 CDD8     		bhi	.L93
 553 00c2 DEE7     		b	.L92
 554              	.L110:
 555 00c4 2846     		mov	r0, r5
 556 00c6 FFF7FEFF 		bl	_Z5closeh
 557 00ca 6FF00600 		mvn	r0, #6
 558 00ce BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 559              	.L111:
 560 00d2 4046     		mov	r0, r8
 561 00d4 1021     		movs	r1, #16
 562 00d6 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 563 00da BAF80030 		ldrh	r3, [r10]
 564 00de 0122     		movs	r2, #1
 565 00e0 AA40     		lsls	r2, r2, r5
 566 00e2 23EA0203 		bic	r3, r3, r2
 567 00e6 AAF80030 		strh	r3, [r10]	@ movhi
 568 00ea A9E7     		b	.L86
 569              	.L94:
 570 00ec 6FF00400 		mvn	r0, #4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 11


 571 00f0 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 572              	.L95:
 573 00f4 6FF00D00 		mvn	r0, #13
 574 00f8 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 575              	.L96:
 576 00fc 6FF00600 		mvn	r0, #6
 577 0100 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 578              	.L88:
 579 0104 2846     		mov	r0, r5
 580 0106 FFF7FEFF 		bl	_Z5closeh
 581 010a 6FF00C00 		mvn	r0, #12
 582 010e BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 583              	.L113:
 584 0112 00BF     		.align	2
 585              	.L112:
 586 0114 00000000 		.word	.LANCHOR1
 587 0118 00000000 		.word	.LANCHOR0
 588              		.size	_Z4sendhPht, .-_Z4sendhPht
 589              		.section	.text._Z4recvhPht,"ax",%progbits
 590              		.align	2
 591              		.global	_Z4recvhPht
 592              		.thumb
 593              		.thumb_func
 594              		.type	_Z4recvhPht, %function
 595              	_Z4recvhPht:
 596              		@ args = 0, pretend = 0, frame = 8
 597              		@ frame_needed = 0, uses_anonymous_args = 0
 598 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 599 0004 4FEA4019 		lsl	r9, r0, #5
 600 0008 83B0     		sub	sp, sp, #12
 601 000a 09F10809 		add	r9, r9, #8
 602 000e 0446     		mov	r4, r0
 603 0010 4846     		mov	r0, r9
 604 0012 0091     		str	r1, [sp]
 605 0014 9246     		mov	r10, r2
 606 0016 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 607 001a 00F00F07 		and	r7, r0, #15
 608 001e 012F     		cmp	r7, #1
 609 0020 58D1     		bne	.L125
 610 0022 BAF1000F 		cmp	r10, #0
 611 0026 58D0     		beq	.L126
 612 0028 09F5F050 		add	r0, r9, #7680
 613 002c FFF7FEFF 		bl	_Z12WIZCHIP_READm
 614 0030 DFF8AC80 		ldr	r8, .L130
 615 0034 0190     		str	r0, [sp, #4]
 616 0036 09F54076 		add	r6, r9, #768
 617 003a A740     		lsls	r7, r7, r4
 618 003c 09F5F859 		add	r9, r9, #7936
 619              	.L116:
 620 0040 2046     		mov	r0, r4
 621 0042 FFF7FEFF 		bl	_Z12getSn_RX_RSRh
 622 0046 0546     		mov	r5, r0
 623 0048 3046     		mov	r0, r6
 624 004a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 625 004e 0346     		mov	r3, r0
 626 0050 172B     		cmp	r3, #23
 627 0052 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 12


 628 0054 14D0     		beq	.L117
 629 0056 1C2B     		cmp	r3, #28
 630 0058 34D1     		bne	.L118
 631 005a BDB9     		cbnz	r5, .L122
 632 005c FFF7FEFF 		bl	_Z12getSn_TX_FSRh
 633 0060 8346     		mov	fp, r0
 634 0062 4846     		mov	r0, r9
 635 0064 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 636 0068 8002     		lsls	r0, r0, #10
 637 006a 80B2     		uxth	r0, r0
 638 006c 8345     		cmp	fp, r0
 639 006e 29D0     		beq	.L118
 640 0070 B8F80030 		ldrh	r3, [r8]
 641 0074 1F42     		tst	r7, r3
 642 0076 E3D0     		beq	.L116
 643              	.L128:
 644 0078 2846     		mov	r0, r5
 645 007a 03B0     		add	sp, sp, #12
 646              		@ sp needed
 647 007c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 648              	.L117:
 649 0080 B8F80030 		ldrh	r3, [r8]
 650 0084 3B42     		tst	r3, r7
 651 0086 1AD0     		beq	.L121
 652 0088 002D     		cmp	r5, #0
 653 008a F5D0     		beq	.L128
 654              	.L122:
 655 008c 019B     		ldr	r3, [sp, #4]
 656 008e 0099     		ldr	r1, [sp]
 657 0090 4FEA832B 		lsl	fp, r3, #10
 658 0094 1FFA8BFB 		uxth	fp, fp
 659 0098 D345     		cmp	fp, r10
 660 009a 38BF     		it	cc
 661 009c DA46     		movcc	r10, fp
 662 009e AA45     		cmp	r10, r5
 663 00a0 38BF     		it	cc
 664 00a2 5546     		movcc	r5, r10
 665 00a4 ADB2     		uxth	r5, r5
 666 00a6 2A46     		mov	r2, r5
 667 00a8 2046     		mov	r0, r4
 668 00aa FFF7FEFF 		bl	_Z13wiz_recv_datahPht
 669 00ae 2046     		mov	r0, r4
 670 00b0 4021     		movs	r1, #64
 671 00b2 FFF7FEFF 		bl	_Z11ExecCommandhh
 672 00b6 2846     		mov	r0, r5
 673              	.L129:
 674 00b8 03B0     		add	sp, sp, #12
 675              		@ sp needed
 676 00ba BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 677              	.L121:
 678 00be 002D     		cmp	r5, #0
 679 00c0 BED0     		beq	.L116
 680 00c2 E3E7     		b	.L122
 681              	.L118:
 682 00c4 2046     		mov	r0, r4
 683 00c6 FFF7FEFF 		bl	_Z5closeh
 684 00ca 6FF00600 		mvn	r0, #6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 13


 685 00ce 03B0     		add	sp, sp, #12
 686              		@ sp needed
 687 00d0 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 688              	.L125:
 689 00d4 6FF00400 		mvn	r0, #4
 690 00d8 EEE7     		b	.L129
 691              	.L126:
 692 00da 6FF00D00 		mvn	r0, #13
 693 00de EBE7     		b	.L129
 694              	.L131:
 695              		.align	2
 696              	.L130:
 697 00e0 00000000 		.word	.LANCHOR0
 698              		.size	_Z4recvhPht, .-_Z4recvhPht
 699              		.section	.text._Z6sendtohPKhtS0_t,"ax",%progbits
 700              		.align	2
 701              		.global	_Z6sendtohPKhtS0_t
 702              		.thumb
 703              		.thumb_func
 704              		.type	_Z6sendtohPKhtS0_t, %function
 705              	_Z6sendtohPKhtS0_t:
 706              		@ args = 4, pretend = 0, frame = 0
 707              		@ frame_needed = 0, uses_anonymous_args = 0
 708 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 709 0004 4FEA401A 		lsl	r10, r0, #5
 710 0008 0AF1080A 		add	r10, r10, #8
 711 000c 0546     		mov	r5, r0
 712 000e 5046     		mov	r0, r10
 713 0010 8B46     		mov	fp, r1
 714 0012 9046     		mov	r8, r2
 715 0014 1C46     		mov	r4, r3
 716 0016 BDF82870 		ldrh	r7, [sp, #40]
 717 001a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 718 001e 00F00F00 		and	r0, r0, #15
 719 0022 0228     		cmp	r0, #2
 720 0024 01D0     		beq	.L134
 721 0026 0428     		cmp	r0, #4
 722 0028 7ED1     		bne	.L158
 723              	.L134:
 724 002a B8F1000F 		cmp	r8, #0
 725 002e 7FD0     		beq	.L143
 726 0030 2078     		ldrb	r0, [r4]	@ zero_extendqisi2
 727 0032 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 728 0034 A178     		ldrb	r1, [r4, #2]	@ zero_extendqisi2
 729 0036 E278     		ldrb	r2, [r4, #3]	@ zero_extendqisi2
 730 0038 03EB0023 		add	r3, r3, r0, lsl #8
 731 003c 01EB0323 		add	r3, r1, r3, lsl #8
 732 0040 02EB0323 		add	r3, r2, r3, lsl #8
 733 0044 002B     		cmp	r3, #0
 734 0046 77D0     		beq	.L144
 735 0048 002F     		cmp	r7, #0
 736 004a 65D0     		beq	.L145
 737 004c 0AF54076 		add	r6, r10, #768
 738 0050 3046     		mov	r0, r6
 739 0052 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 740 0056 4228     		cmp	r0, #66
 741 0058 01D0     		beq	.L135
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 14


 742 005a 2228     		cmp	r0, #34
 743 005c 60D1     		bne	.L146
 744              	.L135:
 745 005e 0422     		movs	r2, #4
 746 0060 2146     		mov	r1, r4
 747 0062 0AF54060 		add	r0, r10, #3072
 748 0066 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 749 006a 390A     		lsrs	r1, r7, #8
 750 006c 0AF58050 		add	r0, r10, #4096
 751 0070 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 752 0074 F9B2     		uxtb	r1, r7
 753 0076 0AF58850 		add	r0, r10, #4352
 754 007a FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 755 007e 0AF5F850 		add	r0, r10, #7936
 756 0082 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 757 0086 8002     		lsls	r0, r0, #10
 758 0088 87B2     		uxth	r7, r0
 759 008a 0123     		movs	r3, #1
 760 008c DFF8B090 		ldr	r9, .L162
 761 0090 4745     		cmp	r7, r8
 762 0092 28BF     		it	cs
 763 0094 4746     		movcs	r7, r8
 764 0096 03FA05F8 		lsl	r8, r3, r5
 765              	.L138:
 766 009a 2846     		mov	r0, r5
 767 009c FFF7FEFF 		bl	_Z12getSn_TX_FSRh
 768 00a0 0446     		mov	r4, r0
 769 00a2 3046     		mov	r0, r6
 770 00a4 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 771 00a8 38B3     		cbz	r0, .L147
 772 00aa B9F80030 		ldrh	r3, [r9]
 773 00ae 18EA030F 		tst	r8, r3
 774 00b2 1FD0     		beq	.L136
 775 00b4 A742     		cmp	r7, r4
 776 00b6 24D8     		bhi	.L159
 777              	.L137:
 778 00b8 3A46     		mov	r2, r7
 779 00ba 5946     		mov	r1, fp
 780 00bc 2846     		mov	r0, r5
 781 00be FFF7FEFF 		bl	_Z13wiz_send_datahPKht
 782 00c2 0AF5007A 		add	r10, r10, #512
 783 00c6 2846     		mov	r0, r5
 784 00c8 2021     		movs	r1, #32
 785 00ca FFF7FEFF 		bl	_Z11ExecCommandhh
 786 00ce 5046     		mov	r0, r10
 787 00d0 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 788 00d4 C206     		lsls	r2, r0, #27
 789 00d6 06D4     		bmi	.L160
 790              	.L139:
 791 00d8 0307     		lsls	r3, r0, #28
 792 00da 15D4     		bmi	.L161
 793 00dc 5046     		mov	r0, r10
 794 00de FFF7FEFF 		bl	_Z12WIZCHIP_READm
 795 00e2 C206     		lsls	r2, r0, #27
 796 00e4 F8D5     		bpl	.L139
 797              	.L160:
 798 00e6 5046     		mov	r0, r10
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 15


 799 00e8 1021     		movs	r1, #16
 800 00ea FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 801 00ee 3846     		mov	r0, r7
 802 00f0 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 803              	.L136:
 804 00f4 A742     		cmp	r7, r4
 805 00f6 D0D8     		bhi	.L138
 806 00f8 DEE7     		b	.L137
 807              	.L147:
 808 00fa 6FF00300 		mvn	r0, #3
 809 00fe BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 810              	.L159:
 811 0102 0020     		movs	r0, #0
 812 0104 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 813              	.L161:
 814 0108 5046     		mov	r0, r10
 815 010a 0821     		movs	r1, #8
 816 010c FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 817 0110 6FF00C00 		mvn	r0, #12
 818 0114 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 819              	.L145:
 820 0118 6FF00A00 		mvn	r0, #10
 821 011c BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 822              	.L146:
 823 0120 6FF00600 		mvn	r0, #6
 824 0124 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 825              	.L158:
 826 0128 6FF00400 		mvn	r0, #4
 827 012c BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 828              	.L143:
 829 0130 6FF00D00 		mvn	r0, #13
 830 0134 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 831              	.L144:
 832 0138 6FF00B00 		mvn	r0, #11
 833 013c BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 834              	.L163:
 835              		.align	2
 836              	.L162:
 837 0140 00000000 		.word	.LANCHOR0
 838              		.size	_Z6sendtohPKhtS0_t, .-_Z6sendtohPKhtS0_t
 839              		.section	.text._Z8recvfromhPhtS_Pt,"ax",%progbits
 840              		.align	2
 841              		.global	_Z8recvfromhPhtS_Pt
 842              		.thumb
 843              		.thumb_func
 844              		.type	_Z8recvfromhPhtS_Pt, %function
 845              	_Z8recvfromhPhtS_Pt:
 846              		@ args = 4, pretend = 0, frame = 16
 847              		@ frame_needed = 0, uses_anonymous_args = 0
 848 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 849 0004 4501     		lsls	r5, r0, #5
 850 0006 85B0     		sub	sp, sp, #20
 851 0008 0835     		adds	r5, r5, #8
 852 000a 0446     		mov	r4, r0
 853 000c 2846     		mov	r0, r5
 854 000e 0193     		str	r3, [sp, #4]
 855 0010 0091     		str	r1, [sp]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 16


 856 0012 9246     		mov	r10, r2
 857 0014 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 858 0018 00F00F03 		and	r3, r0, #15
 859 001c 022B     		cmp	r3, #2
 860 001e 8146     		mov	r9, r0
 861 0020 02D0     		beq	.L166
 862 0022 042B     		cmp	r3, #4
 863 0024 40F0B480 		bne	.L192
 864              	.L166:
 865 0028 BAF1000F 		cmp	r10, #0
 866 002c 00F0B380 		beq	.L180
 867 0030 DFF87881 		ldr	r8, .L201+4
 868 0034 38F81430 		ldrh	r3, [r8, r4, lsl #1]
 869 0038 002B     		cmp	r3, #0
 870 003a 3DD1     		bne	.L181
 871 003c 0126     		movs	r6, #1
 872 003e 5A4F     		ldr	r7, .L201
 873 0040 05F54075 		add	r5, r5, #768
 874 0044 A640     		lsls	r6, r6, r4
 875              	.L169:
 876 0046 2046     		mov	r0, r4
 877 0048 FFF7FEFF 		bl	_Z12getSn_RX_RSRh
 878 004c 8346     		mov	fp, r0
 879 004e 2846     		mov	r0, r5
 880 0050 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 881 0054 0028     		cmp	r0, #0
 882 0056 00F09680 		beq	.L182
 883 005a 3A88     		ldrh	r2, [r7]
 884 005c 1642     		tst	r6, r2
 885 005e 54D0     		beq	.L168
 886 0060 BBF1000F 		cmp	fp, #0
 887 0064 24D0     		beq	.L183
 888 0066 09F00709 		and	r9, r9, #7
 889 006a B9F1020F 		cmp	r9, #2
 890 006e 2AD1     		bne	.L198
 891              	.L171:
 892 0070 38F81430 		ldrh	r3, [r8, r4, lsl #1]
 893 0074 4D4E     		ldr	r6, .L201+4
 894 0076 002B     		cmp	r3, #0
 895 0078 55D0     		beq	.L194
 896              	.L196:
 897 007a 4D4D     		ldr	r5, .L201+8
 898              	.L175:
 899 007c 5345     		cmp	r3, r10
 900 007e 34BF     		ite	cc
 901 0080 9B46     		movcc	fp, r3
 902 0082 D346     		movcs	fp, r10
 903 0084 0099     		ldr	r1, [sp]
 904 0086 5A46     		mov	r2, fp
 905 0088 2046     		mov	r0, r4
 906 008a FFF7FEFF 		bl	_Z13wiz_recv_datahPht
 907              	.L174:
 908 008e 2046     		mov	r0, r4
 909 0090 4021     		movs	r1, #64
 910 0092 FFF7FEFF 		bl	_Z11ExecCommandhh
 911 0096 38F81420 		ldrh	r2, [r8, r4, lsl #1]
 912 009a CBEB0202 		rsb	r2, fp, r2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 17


 913 009e 92B2     		uxth	r2, r2
 914 00a0 28F81420 		strh	r2, [r8, r4, lsl #1]	@ movhi
 915 00a4 002A     		cmp	r2, #0
 916 00a6 34D0     		beq	.L177
 917 00a8 2A5D     		ldrb	r2, [r5, r4]	@ zero_extendqisi2
 918 00aa 42F00102 		orr	r2, r2, #1
 919 00ae 2A55     		strb	r2, [r5, r4]
 920              	.L183:
 921 00b0 5846     		mov	r0, fp
 922              	.L165:
 923 00b2 05B0     		add	sp, sp, #20
 924              		@ sp needed
 925 00b4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 926              	.L181:
 927 00b8 4FF0000B 		mov	fp, #0
 928              	.L167:
 929 00bc 09F00709 		and	r9, r9, #7
 930 00c0 B9F1020F 		cmp	r9, #2
 931 00c4 D4D0     		beq	.L171
 932              	.L198:
 933 00c6 B9F1040F 		cmp	r9, #4
 934 00ca 24D1     		bne	.L199
 935 00cc 38F81430 		ldrh	r3, [r8, r4, lsl #1]
 936 00d0 364D     		ldr	r5, .L201+4
 937 00d2 002B     		cmp	r3, #0
 938 00d4 D1D1     		bne	.L196
 939 00d6 0222     		movs	r2, #2
 940 00d8 2046     		mov	r0, r4
 941 00da 02A9     		add	r1, sp, #8
 942 00dc FFF7FEFF 		bl	_Z13wiz_recv_datahPht
 943 00e0 2046     		mov	r0, r4
 944 00e2 4021     		movs	r1, #64
 945 00e4 FFF7FEFF 		bl	_Z11ExecCommandhh
 946 00e8 9DF80820 		ldrb	r2, [sp, #8]	@ zero_extendqisi2
 947 00ec 9DF80930 		ldrb	r3, [sp, #9]	@ zero_extendqisi2
 948 00f0 03EB0223 		add	r3, r3, r2, lsl #8
 949 00f4 9BB2     		uxth	r3, r3
 950 00f6 40F2EA52 		movw	r2, #1514
 951 00fa 9342     		cmp	r3, r2
 952 00fc 25F81430 		strh	r3, [r5, r4, lsl #1]	@ movhi
 953 0100 4CD8     		bhi	.L200
 954 0102 2B4D     		ldr	r5, .L201+8
 955 0104 8022     		movs	r2, #128
 956 0106 2A55     		strb	r2, [r5, r4]
 957 0108 B8E7     		b	.L175
 958              	.L168:
 959 010a BBF1000F 		cmp	fp, #0
 960 010e 9AD0     		beq	.L169
 961 0110 D4E7     		b	.L167
 962              	.L177:
 963 0112 2A55     		strb	r2, [r5, r4]
 964 0114 CCE7     		b	.L183
 965              	.L199:
 966 0116 2046     		mov	r0, r4
 967 0118 5946     		mov	r1, fp
 968 011a FFF7FEFF 		bl	_Z15wiz_recv_ignoreht
 969 011e 244D     		ldr	r5, .L201+8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 18


 970 0120 28F814B0 		strh	fp, [r8, r4, lsl #1]	@ movhi
 971 0124 B3E7     		b	.L174
 972              	.L194:
 973 0126 0822     		movs	r2, #8
 974 0128 2046     		mov	r0, r4
 975 012a 02A9     		add	r1, sp, #8
 976 012c FFF7FEFF 		bl	_Z13wiz_recv_datahPht
 977 0130 2046     		mov	r0, r4
 978 0132 4021     		movs	r1, #64
 979 0134 FFF7FEFF 		bl	_Z11ExecCommandhh
 980 0138 9DF80E00 		ldrb	r0, [sp, #14]	@ zero_extendqisi2
 981 013c 9DF80F30 		ldrb	r3, [sp, #15]	@ zero_extendqisi2
 982 0140 DDF804C0 		ldr	ip, [sp, #4]
 983 0144 9DF80D20 		ldrb	r2, [sp, #13]	@ zero_extendqisi2
 984 0148 9DF80C10 		ldrb	r1, [sp, #12]	@ zero_extendqisi2
 985 014c 9DF80870 		ldrb	r7, [sp, #8]	@ zero_extendqisi2
 986 0150 174D     		ldr	r5, .L201+8
 987 0152 8CF80070 		strb	r7, [ip]
 988 0156 03EB0023 		add	r3, r3, r0, lsl #8
 989 015a 9DF80B00 		ldrb	r0, [sp, #11]	@ zero_extendqisi2
 990 015e 8CF80300 		strb	r0, [ip, #3]
 991 0162 0E98     		ldr	r0, [sp, #56]
 992 0164 9DF809E0 		ldrb	lr, [sp, #9]	@ zero_extendqisi2
 993 0168 9DF80A70 		ldrb	r7, [sp, #10]	@ zero_extendqisi2
 994 016c 8CF801E0 		strb	lr, [ip, #1]
 995 0170 02EB0121 		add	r1, r2, r1, lsl #8
 996 0174 9BB2     		uxth	r3, r3
 997 0176 8022     		movs	r2, #128
 998 0178 8CF80270 		strb	r7, [ip, #2]
 999 017c 26F81430 		strh	r3, [r6, r4, lsl #1]	@ movhi
 1000 0180 0180     		strh	r1, [r0]	@ movhi
 1001 0182 2A55     		strb	r2, [r5, r4]
 1002 0184 7AE7     		b	.L175
 1003              	.L182:
 1004 0186 6FF00300 		mvn	r0, #3
 1005 018a 05B0     		add	sp, sp, #20
 1006              		@ sp needed
 1007 018c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1008              	.L192:
 1009 0190 6FF00400 		mvn	r0, #4
 1010 0194 8DE7     		b	.L165
 1011              	.L180:
 1012 0196 6FF00D00 		mvn	r0, #13
 1013 019a 8AE7     		b	.L165
 1014              	.L200:
 1015 019c 2046     		mov	r0, r4
 1016 019e FFF7FEFF 		bl	_Z5closeh
 1017 01a2 6FF47A70 		mvn	r0, #1000
 1018 01a6 84E7     		b	.L165
 1019              	.L202:
 1020              		.align	2
 1021              	.L201:
 1022 01a8 00000000 		.word	.LANCHOR0
 1023 01ac 00000000 		.word	.LANCHOR2
 1024 01b0 00000000 		.word	.LANCHOR3
 1025              		.size	_Z8recvfromhPhtS_Pt, .-_Z8recvfromhPhtS_Pt
 1026              		.section	.text._Z9ctlsocketh12ctlsock_typePv,"ax",%progbits
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 19


 1027              		.align	2
 1028              		.global	_Z9ctlsocketh12ctlsock_typePv
 1029              		.thumb
 1030              		.thumb_func
 1031              		.type	_Z9ctlsocketh12ctlsock_typePv, %function
 1032              	_Z9ctlsocketh12ctlsock_typePv:
 1033              		@ args = 0, pretend = 0, frame = 0
 1034              		@ frame_needed = 0, uses_anonymous_args = 0
 1035 0000 38B5     		push	{r3, r4, r5, lr}
 1036 0002 1446     		mov	r4, r2
 1037 0004 0729     		cmp	r1, #7
 1038 0006 70D8     		bhi	.L218
 1039 0008 DFE801F0 		tbb	[pc, r1]
 1040              	.L206:
 1041 000c 12       		.byte	(.L205-.L206)/2
 1042 000d 21       		.byte	(.L207-.L206)/2
 1043 000e 2B       		.byte	(.L208-.L206)/2
 1044 000f 38       		.byte	(.L209-.L206)/2
 1045 0010 45       		.byte	(.L210-.L206)/2
 1046 0011 53       		.byte	(.L211-.L206)/2
 1047 0012 61       		.byte	(.L212-.L206)/2
 1048 0013 04       		.byte	(.L213-.L206)/2
 1049              		.align	1
 1050              	.L213:
 1051 0014 0125     		movs	r5, #1
 1052 0016 05EB8000 		add	r0, r5, r0, lsl #2
 1053 001a C000     		lsls	r0, r0, #3
 1054 001c 00F53050 		add	r0, r0, #11264
 1055 0020 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1056 0024 00F01F00 		and	r0, r0, #31
 1057 0028 2070     		strb	r0, [r4]
 1058 002a 2846     		mov	r0, r5
 1059              	.L204:
 1060 002c 40B2     		sxtb	r0, r0
 1061 002e 38BD     		pop	{r3, r4, r5, pc}
 1062              	.L205:
 1063 0030 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 1064 0032 012B     		cmp	r3, #1
 1065 0034 5BD0     		beq	.L219
 1066 0036 002B     		cmp	r3, #0
 1067 0038 57D1     		bne	.L218
 1068 003a 314A     		ldr	r2, .L220
 1069 003c 0123     		movs	r3, #1
 1070 003e 1188     		ldrh	r1, [r2]
 1071 0040 03FA00F0 		lsl	r0, r3, r0
 1072 0044 21EA0000 		bic	r0, r1, r0
 1073 0048 1080     		strh	r0, [r2]	@ movhi
 1074 004a 1846     		mov	r0, r3
 1075 004c EEE7     		b	.L204
 1076              	.L207:
 1077 004e 2C4B     		ldr	r3, .L220
 1078 0050 1B88     		ldrh	r3, [r3]
 1079 0052 43FA00F0 		asr	r0, r3, r0
 1080 0056 00F00100 		and	r0, r0, #1
 1081 005a 1070     		strb	r0, [r2]
 1082 005c 0120     		movs	r0, #1
 1083 005e 40B2     		sxtb	r0, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 20


 1084 0060 38BD     		pop	{r3, r4, r5, pc}
 1085              	.L208:
 1086 0062 0125     		movs	r5, #1
 1087 0064 05EB8000 		add	r0, r5, r0, lsl #2
 1088 0068 C000     		lsls	r0, r0, #3
 1089 006a 00F5F850 		add	r0, r0, #7936
 1090 006e FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1091 0072 8002     		lsls	r0, r0, #10
 1092 0074 2080     		strh	r0, [r4]	@ movhi
 1093 0076 2846     		mov	r0, r5
 1094 0078 40B2     		sxtb	r0, r0
 1095 007a 38BD     		pop	{r3, r4, r5, pc}
 1096              	.L209:
 1097 007c 0125     		movs	r5, #1
 1098 007e 05EB8000 		add	r0, r5, r0, lsl #2
 1099 0082 C000     		lsls	r0, r0, #3
 1100 0084 00F5F050 		add	r0, r0, #7680
 1101 0088 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1102 008c 8002     		lsls	r0, r0, #10
 1103 008e 2080     		strh	r0, [r4]	@ movhi
 1104 0090 2846     		mov	r0, r5
 1105 0092 40B2     		sxtb	r0, r0
 1106 0094 38BD     		pop	{r3, r4, r5, pc}
 1107              	.L210:
 1108 0096 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 1109 0098 1F29     		cmp	r1, #31
 1110 009a 26D8     		bhi	.L218
 1111 009c 0124     		movs	r4, #1
 1112 009e 04EB8000 		add	r0, r4, r0, lsl #2
 1113 00a2 C000     		lsls	r0, r0, #3
 1114 00a4 00F50070 		add	r0, r0, #512
 1115 00a8 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1116 00ac 2046     		mov	r0, r4
 1117 00ae 40B2     		sxtb	r0, r0
 1118 00b0 38BD     		pop	{r3, r4, r5, pc}
 1119              	.L211:
 1120 00b2 0125     		movs	r5, #1
 1121 00b4 05EB8000 		add	r0, r5, r0, lsl #2
 1122 00b8 C000     		lsls	r0, r0, #3
 1123 00ba 00F50070 		add	r0, r0, #512
 1124 00be FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1125 00c2 00F01F00 		and	r0, r0, #31
 1126 00c6 2070     		strb	r0, [r4]
 1127 00c8 2846     		mov	r0, r5
 1128 00ca 40B2     		sxtb	r0, r0
 1129 00cc 38BD     		pop	{r3, r4, r5, pc}
 1130              	.L212:
 1131 00ce 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 1132 00d0 1F29     		cmp	r1, #31
 1133 00d2 0AD8     		bhi	.L218
 1134 00d4 0124     		movs	r4, #1
 1135 00d6 04EB8000 		add	r0, r4, r0, lsl #2
 1136 00da C000     		lsls	r0, r0, #3
 1137 00dc 00F53050 		add	r0, r0, #11264
 1138 00e0 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1139 00e4 2046     		mov	r0, r4
 1140 00e6 40B2     		sxtb	r0, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 21


 1141 00e8 38BD     		pop	{r3, r4, r5, pc}
 1142              	.L218:
 1143 00ea F620     		movs	r0, #246
 1144 00ec 9EE7     		b	.L204
 1145              	.L219:
 1146 00ee 044A     		ldr	r2, .L220
 1147 00f0 1188     		ldrh	r1, [r2]
 1148 00f2 03FA00F0 		lsl	r0, r3, r0
 1149 00f6 0143     		orrs	r1, r1, r0
 1150 00f8 1180     		strh	r1, [r2]	@ movhi
 1151 00fa 1846     		mov	r0, r3
 1152 00fc 96E7     		b	.L204
 1153              	.L221:
 1154 00fe 00BF     		.align	2
 1155              	.L220:
 1156 0100 00000000 		.word	.LANCHOR0
 1157              		.size	_Z9ctlsocketh12ctlsock_typePv, .-_Z9ctlsocketh12ctlsock_typePv
 1158              		.section	.text._Z10setsockopth12sockopt_typePv,"ax",%progbits
 1159              		.align	2
 1160              		.global	_Z10setsockopth12sockopt_typePv
 1161              		.thumb
 1162              		.thumb_func
 1163              		.type	_Z10setsockopth12sockopt_typePv, %function
 1164              	_Z10setsockopth12sockopt_typePv:
 1165              		@ args = 0, pretend = 0, frame = 8
 1166              		@ frame_needed = 0, uses_anonymous_args = 0
 1167 0000 70B5     		push	{r4, r5, r6, lr}
 1168 0002 0139     		subs	r1, r1, #1
 1169 0004 82B0     		sub	sp, sp, #8
 1170 0006 0629     		cmp	r1, #6
 1171 0008 00F29780 		bhi	.L237
 1172 000c DFE801F0 		tbb	[pc, r1]
 1173              	.L225:
 1174 0010 19       		.byte	(.L224-.L225)/2
 1175 0011 26       		.byte	(.L226-.L225)/2
 1176 0012 33       		.byte	(.L227-.L225)/2
 1177 0013 46       		.byte	(.L228-.L225)/2
 1178 0014 55       		.byte	(.L229-.L225)/2
 1179 0015 68       		.byte	(.L230-.L225)/2
 1180 0016 04       		.byte	(.L231-.L225)/2
 1181 0017 00       		.align	1
 1182              	.L231:
 1183 0018 4001     		lsls	r0, r0, #5
 1184 001a 00F10805 		add	r5, r0, #8
 1185 001e 2846     		mov	r0, r5
 1186 0020 0192     		str	r2, [sp, #4]
 1187 0022 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1188 0026 00F00F04 		and	r4, r0, #15
 1189 002a 012C     		cmp	r4, #1
 1190 002c 019A     		ldr	r2, [sp, #4]
 1191 002e 7AD1     		bne	.L236
 1192 0030 05F53C50 		add	r0, r5, #12032
 1193 0034 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 1194 0036 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1195 003a 2046     		mov	r0, r4
 1196              	.L223:
 1197 003c 40B2     		sxtb	r0, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 22


 1198 003e 02B0     		add	sp, sp, #8
 1199              		@ sp needed
 1200 0040 70BD     		pop	{r4, r5, r6, pc}
 1201              	.L224:
 1202 0042 0124     		movs	r4, #1
 1203 0044 04EB8000 		add	r0, r4, r0, lsl #2
 1204 0048 C000     		lsls	r0, r0, #3
 1205 004a 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 1206 004c 00F5B050 		add	r0, r0, #5632
 1207 0050 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1208 0054 2046     		mov	r0, r4
 1209 0056 40B2     		sxtb	r0, r0
 1210 0058 02B0     		add	sp, sp, #8
 1211              		@ sp needed
 1212 005a 70BD     		pop	{r4, r5, r6, pc}
 1213              	.L226:
 1214 005c 0124     		movs	r4, #1
 1215 005e 04EB8000 		add	r0, r4, r0, lsl #2
 1216 0062 C000     		lsls	r0, r0, #3
 1217 0064 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 1218 0066 00F5A850 		add	r0, r0, #5376
 1219 006a FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1220 006e 2046     		mov	r0, r4
 1221 0070 40B2     		sxtb	r0, r0
 1222 0072 02B0     		add	sp, sp, #8
 1223              		@ sp needed
 1224 0074 70BD     		pop	{r4, r5, r6, pc}
 1225              	.L227:
 1226 0076 0124     		movs	r4, #1
 1227 0078 1588     		ldrh	r5, [r2]
 1228 007a 04EB8000 		add	r0, r4, r0, lsl #2
 1229 007e C600     		lsls	r6, r0, #3
 1230 0080 06F59050 		add	r0, r6, #4608
 1231 0084 290A     		lsrs	r1, r5, #8
 1232 0086 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1233 008a 06F59850 		add	r0, r6, #4864
 1234 008e E9B2     		uxtb	r1, r5
 1235 0090 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1236 0094 2046     		mov	r0, r4
 1237 0096 40B2     		sxtb	r0, r0
 1238 0098 02B0     		add	sp, sp, #8
 1239              		@ sp needed
 1240 009a 70BD     		pop	{r4, r5, r6, pc}
 1241              	.L228:
 1242 009c 0423     		movs	r3, #4
 1243 009e 0124     		movs	r4, #1
 1244 00a0 13FB0040 		smlabb	r0, r3, r0, r4
 1245 00a4 C000     		lsls	r0, r0, #3
 1246 00a6 1146     		mov	r1, r2
 1247 00a8 00F54060 		add	r0, r0, #3072
 1248 00ac 1A46     		mov	r2, r3
 1249 00ae FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 1250 00b2 2046     		mov	r0, r4
 1251 00b4 40B2     		sxtb	r0, r0
 1252 00b6 02B0     		add	sp, sp, #8
 1253              		@ sp needed
 1254 00b8 70BD     		pop	{r4, r5, r6, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 23


 1255              	.L229:
 1256 00ba 0124     		movs	r4, #1
 1257 00bc 1588     		ldrh	r5, [r2]
 1258 00be 04EB8000 		add	r0, r4, r0, lsl #2
 1259 00c2 C600     		lsls	r6, r0, #3
 1260 00c4 06F58050 		add	r0, r6, #4096
 1261 00c8 290A     		lsrs	r1, r5, #8
 1262 00ca FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1263 00ce 06F58850 		add	r0, r6, #4352
 1264 00d2 E9B2     		uxtb	r1, r5
 1265 00d4 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1266 00d8 2046     		mov	r0, r4
 1267 00da 40B2     		sxtb	r0, r0
 1268 00dc 02B0     		add	sp, sp, #8
 1269              		@ sp needed
 1270 00de 70BD     		pop	{r4, r5, r6, pc}
 1271              	.L230:
 1272 00e0 4501     		lsls	r5, r0, #5
 1273 00e2 0835     		adds	r5, r5, #8
 1274 00e4 2846     		mov	r0, r5
 1275 00e6 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1276 00ea 00F00F00 		and	r0, r0, #15
 1277 00ee 0128     		cmp	r0, #1
 1278 00f0 19D1     		bne	.L236
 1279 00f2 05F53C50 		add	r0, r5, #12032
 1280 00f6 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1281 00fa E0B9     		cbnz	r0, .L238
 1282 00fc 05F58074 		add	r4, r5, #256
 1283 0100 2046     		mov	r0, r4
 1284 0102 2221     		movs	r1, #34
 1285 0104 05F50075 		add	r5, r5, #512
 1286 0108 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1287 010c 04E0     		b	.L233
 1288              	.L235:
 1289 010e 2846     		mov	r0, r5
 1290 0110 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1291 0114 0307     		lsls	r3, r0, #28
 1292 0116 08D4     		bmi	.L240
 1293              	.L233:
 1294 0118 2046     		mov	r0, r4
 1295 011a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1296 011e 0028     		cmp	r0, #0
 1297 0120 F5D1     		bne	.L235
 1298 0122 0120     		movs	r0, #1
 1299 0124 8AE7     		b	.L223
 1300              	.L236:
 1301 0126 FB20     		movs	r0, #251
 1302 0128 88E7     		b	.L223
 1303              	.L240:
 1304 012a 2846     		mov	r0, r5
 1305 012c 0821     		movs	r1, #8
 1306 012e FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1307 0132 F320     		movs	r0, #243
 1308 0134 82E7     		b	.L223
 1309              	.L238:
 1310 0136 FE20     		movs	r0, #254
 1311 0138 80E7     		b	.L223
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 24


 1312              	.L237:
 1313 013a F620     		movs	r0, #246
 1314 013c 7EE7     		b	.L223
 1315              		.size	_Z10setsockopth12sockopt_typePv, .-_Z10setsockopth12sockopt_typePv
 1316 013e 00BF     		.section	.text._Z10getsockopth12sockopt_typePv,"ax",%progbits
 1317              		.align	2
 1318              		.global	_Z10getsockopth12sockopt_typePv
 1319              		.thumb
 1320              		.thumb_func
 1321              		.type	_Z10getsockopth12sockopt_typePv, %function
 1322              	_Z10getsockopth12sockopt_typePv:
 1323              		@ args = 0, pretend = 0, frame = 0
 1324              		@ frame_needed = 0, uses_anonymous_args = 0
 1325 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1326 0002 0446     		mov	r4, r0
 1327 0004 1546     		mov	r5, r2
 1328 0006 0C29     		cmp	r1, #12
 1329 0008 00F29980 		bhi	.L259
 1330 000c DFE801F0 		tbb	[pc, r1]
 1331              	.L244:
 1332 0010 34       		.byte	(.L243-.L244)/2
 1333 0011 3F       		.byte	(.L245-.L244)/2
 1334 0012 4A       		.byte	(.L246-.L244)/2
 1335 0013 55       		.byte	(.L247-.L244)/2
 1336 0014 64       		.byte	(.L248-.L244)/2
 1337 0015 70       		.byte	(.L249-.L244)/2
 1338 0016 97       		.byte	(.L259-.L244)/2
 1339 0017 82       		.byte	(.L250-.L244)/2
 1340 0018 92       		.byte	(.L251-.L244)/2
 1341 0019 07       		.byte	(.L252-.L244)/2
 1342 001a 0E       		.byte	(.L253-.L244)/2
 1343 001b 19       		.byte	(.L254-.L244)/2
 1344 001c 27       		.byte	(.L255-.L244)/2
 1345 001d 00       		.align	1
 1346              	.L252:
 1347 001e 2046     		mov	r0, r4
 1348 0020 FFF7FEFF 		bl	_Z12getSn_RX_RSRh
 1349 0024 0123     		movs	r3, #1
 1350 0026 2880     		strh	r0, [r5]	@ movhi
 1351              	.L242:
 1352 0028 58B2     		sxtb	r0, r3
 1353 002a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1354              	.L253:
 1355 002c 0126     		movs	r6, #1
 1356 002e 06EB8004 		add	r4, r6, r0, lsl #2
 1357 0032 E000     		lsls	r0, r4, #3
 1358 0034 00F54070 		add	r0, r0, #768
 1359 0038 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1360 003c 3346     		mov	r3, r6
 1361 003e 2870     		strb	r0, [r5]
 1362 0040 F2E7     		b	.L242
 1363              	.L254:
 1364 0042 0126     		movs	r6, #1
 1365 0044 06EB8000 		add	r0, r6, r0, lsl #2
 1366 0048 C000     		lsls	r0, r0, #3
 1367 004a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1368 004e B042     		cmp	r0, r6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 25


 1369 0050 E5D0     		beq	.L252
 1370 0052 3D4B     		ldr	r3, .L260
 1371 0054 33F81430 		ldrh	r3, [r3, r4, lsl #1]
 1372 0058 2B80     		strh	r3, [r5]	@ movhi
 1373 005a 3346     		mov	r3, r6
 1374 005c E4E7     		b	.L242
 1375              	.L255:
 1376 005e 4001     		lsls	r0, r0, #5
 1377 0060 0830     		adds	r0, r0, #8
 1378 0062 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1379 0066 00F00F00 		and	r0, r0, #15
 1380 006a 0128     		cmp	r0, #1
 1381 006c 69D1     		bne	.L258
 1382 006e 374A     		ldr	r2, .L260+4
 1383 0070 125D     		ldrb	r2, [r2, r4]	@ zero_extendqisi2
 1384 0072 2A70     		strb	r2, [r5]
 1385 0074 0346     		mov	r3, r0
 1386 0076 D7E7     		b	.L242
 1387              	.L243:
 1388 0078 0126     		movs	r6, #1
 1389 007a 06EB8000 		add	r0, r6, r0, lsl #2
 1390 007e C000     		lsls	r0, r0, #3
 1391 0080 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1392 0084 20F00F00 		bic	r0, r0, #15
 1393 0088 2870     		strb	r0, [r5]
 1394 008a 3346     		mov	r3, r6
 1395 008c CCE7     		b	.L242
 1396              	.L245:
 1397 008e 0126     		movs	r6, #1
 1398 0090 06EB8004 		add	r4, r6, r0, lsl #2
 1399 0094 E000     		lsls	r0, r4, #3
 1400 0096 00F5B050 		add	r0, r0, #5632
 1401 009a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1402 009e 3346     		mov	r3, r6
 1403 00a0 2870     		strb	r0, [r5]
 1404 00a2 C1E7     		b	.L242
 1405              	.L246:
 1406 00a4 0126     		movs	r6, #1
 1407 00a6 06EB8004 		add	r4, r6, r0, lsl #2
 1408 00aa E000     		lsls	r0, r4, #3
 1409 00ac 00F5A850 		add	r0, r0, #5376
 1410 00b0 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1411 00b4 3346     		mov	r3, r6
 1412 00b6 2870     		strb	r0, [r5]
 1413 00b8 B6E7     		b	.L242
 1414              	.L247:
 1415 00ba 0126     		movs	r6, #1
 1416 00bc 06EB8004 		add	r4, r6, r0, lsl #2
 1417 00c0 E400     		lsls	r4, r4, #3
 1418 00c2 04F59050 		add	r0, r4, #4608
 1419 00c6 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1420 00ca 04F59850 		add	r0, r4, #4864
 1421 00ce FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1422 00d2 3346     		mov	r3, r6
 1423 00d4 2870     		strb	r0, [r5]
 1424 00d6 A7E7     		b	.L242
 1425              	.L248:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 26


 1426 00d8 0422     		movs	r2, #4
 1427 00da 0126     		movs	r6, #1
 1428 00dc 12FB0064 		smlabb	r4, r2, r0, r6
 1429 00e0 E000     		lsls	r0, r4, #3
 1430 00e2 2946     		mov	r1, r5
 1431 00e4 00F54060 		add	r0, r0, #3072
 1432 00e8 FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 1433 00ec 3346     		mov	r3, r6
 1434 00ee 9BE7     		b	.L242
 1435              	.L249:
 1436 00f0 0126     		movs	r6, #1
 1437 00f2 06EB8004 		add	r4, r6, r0, lsl #2
 1438 00f6 E400     		lsls	r4, r4, #3
 1439 00f8 04F58050 		add	r0, r4, #4096
 1440 00fc FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1441 0100 0746     		mov	r7, r0
 1442 0102 04F58850 		add	r0, r4, #4352
 1443 0106 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1444 010a 00EB0720 		add	r0, r0, r7, lsl #8
 1445 010e 2880     		strh	r0, [r5]	@ movhi
 1446 0110 3346     		mov	r3, r6
 1447 0112 89E7     		b	.L242
 1448              	.L250:
 1449 0114 4401     		lsls	r4, r0, #5
 1450 0116 0834     		adds	r4, r4, #8
 1451 0118 2046     		mov	r0, r4
 1452 011a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1453 011e 00F00F06 		and	r6, r0, #15
 1454 0122 012E     		cmp	r6, #1
 1455 0124 0DD1     		bne	.L258
 1456 0126 04F53C50 		add	r0, r4, #12032
 1457 012a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1458 012e 3346     		mov	r3, r6
 1459 0130 2880     		strh	r0, [r5]	@ movhi
 1460 0132 79E7     		b	.L242
 1461              	.L251:
 1462 0134 FFF7FEFF 		bl	_Z12getSn_TX_FSRh
 1463 0138 0123     		movs	r3, #1
 1464 013a 2880     		strh	r0, [r5]	@ movhi
 1465 013c 74E7     		b	.L242
 1466              	.L259:
 1467 013e FE23     		movs	r3, #254
 1468 0140 72E7     		b	.L242
 1469              	.L258:
 1470 0142 FB23     		movs	r3, #251
 1471 0144 70E7     		b	.L242
 1472              	.L261:
 1473 0146 00BF     		.align	2
 1474              	.L260:
 1475 0148 00000000 		.word	.LANCHOR2
 1476 014c 00000000 		.word	.LANCHOR3
 1477              		.size	_Z10getsockopth12sockopt_typePv, .-_Z10getsockopth12sockopt_typePv
 1478              		.global	sock_pack_info
 1479              		.section	.bss._ZL12sock_io_mode,"aw",%nobits
 1480              		.align	1
 1481              		.set	.LANCHOR0,. + 0
 1482              		.type	_ZL12sock_io_mode, %object
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccQqtq6s.s 			page 27


 1483              		.size	_ZL12sock_io_mode, 2
 1484              	_ZL12sock_io_mode:
 1485 0000 0000     		.space	2
 1486              		.section	.bss._ZL15sock_is_sending,"aw",%nobits
 1487              		.align	1
 1488              		.set	.LANCHOR1,. + 0
 1489              		.type	_ZL15sock_is_sending, %object
 1490              		.size	_ZL15sock_is_sending, 2
 1491              	_ZL15sock_is_sending:
 1492 0000 0000     		.space	2
 1493              		.section	.bss._ZL18sock_remained_size,"aw",%nobits
 1494              		.align	2
 1495              		.set	.LANCHOR2,. + 0
 1496              		.type	_ZL18sock_remained_size, %object
 1497              		.size	_ZL18sock_remained_size, 16
 1498              	_ZL18sock_remained_size:
 1499 0000 00000000 		.space	16
 1499      00000000 
 1499      00000000 
 1499      00000000 
 1500              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1501              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1502              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1503              	_ZL28cpu_irq_prev_interrupt_state:
 1504 0000 00       		.space	1
 1505              		.section	.bss.sock_pack_info,"aw",%nobits
 1506              		.align	2
 1507              		.set	.LANCHOR3,. + 0
 1508              		.type	sock_pack_info, %object
 1509              		.size	sock_pack_info, 8
 1510              	sock_pack_info:
 1511 0000 00000000 		.space	8
 1511      00000000 
 1512              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1513              		.align	2
 1514              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1515              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1516              	_ZL32cpu_irq_critical_section_counter:
 1517 0000 00000000 		.space	4
 1518              		.section	.data._ZL13sock_any_port,"aw",%progbits
 1519              		.align	1
 1520              		.set	.LANCHOR4,. + 0
 1521              		.type	_ZL13sock_any_port, %object
 1522              		.size	_ZL13sock_any_port, 2
 1523              	_ZL13sock_any_port:
 1524 0000 00C0     		.short	-16384
 1525              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
