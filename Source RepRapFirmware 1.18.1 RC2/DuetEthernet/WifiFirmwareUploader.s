ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccaOMp2W.s 			page 1


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
  15              		.file	"WifiFirmwareUploader.cpp"
  16              		.section	.text._ZN20WifiFirmwareUploader7getDataEjPKhi.part.2,"ax",%progbits
  17              		.align	2
  18              		.thumb
  19              		.thumb_func
  20              		.type	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.2, %function
  21              	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.2:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0023     		movs	r3, #0
  26 0002 70B4     		push	{r4, r5, r6}
  27 0004 0A44     		add	r2, r2, r1
  28 0006 0428     		cmp	r0, #4
  29 0008 34BF     		ite	cc
  30 000a 0646     		movcc	r6, r0
  31 000c 0426     		movcs	r6, #4
  32 000e 1846     		mov	r0, r3
  33              	.L3:
  34 0010 D55C     		ldrb	r5, [r2, r3]	@ zero_extendqisi2
  35 0012 DC00     		lsls	r4, r3, #3
  36 0014 0133     		adds	r3, r3, #1
  37 0016 05FA04F4 		lsl	r4, r5, r4
  38 001a B342     		cmp	r3, r6
  39 001c 40EA0400 		orr	r0, r0, r4
  40 0020 F6D1     		bne	.L3
  41 0022 70BC     		pop	{r4, r5, r6}
  42 0024 7047     		bx	lr
  43              		.size	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.2, .-_ZN20WifiFirmwareUploader7getDataEjPKhi.pa
  44 0026 00BF     		.section	.text._ZN20WifiFirmwareUploader7putDataEmjPhi.part.3,"ax",%progbits
  45              		.align	2
  46              		.thumb
  47              		.thumb_func
  48              		.type	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.3, %function
  49              	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.3:
  50              		@ args = 0, pretend = 0, frame = 0
  51              		@ frame_needed = 0, uses_anonymous_args = 0
  52              		@ link register save eliminated.
  53 0000 1344     		add	r3, r3, r2
  54 0002 0429     		cmp	r1, #4
  55 0004 94BF     		ite	ls
  56 0006 5918     		addls	r1, r3, r1
  57 0008 191D     		addhi	r1, r3, #4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccaOMp2W.s 			page 2


  58              	.L8:
  59 000a 03F8010B 		strb	r0, [r3], #1
  60 000e 8B42     		cmp	r3, r1
  61 0010 4FEA1020 		lsr	r0, r0, #8
  62 0014 F9D1     		bne	.L8
  63 0016 7047     		bx	lr
  64              		.size	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.3, .-_ZN20WifiFirmwareUploader7putDataEmjPhi.pa
  65              		.section	.text._ZN20WifiFirmwareUploaderC2ER9UARTClass,"ax",%progbits
  66              		.align	2
  67              		.global	_ZN20WifiFirmwareUploaderC2ER9UARTClass
  68              		.thumb
  69              		.thumb_func
  70              		.type	_ZN20WifiFirmwareUploaderC2ER9UARTClass, %function
  71              	_ZN20WifiFirmwareUploaderC2ER9UARTClass:
  72              		@ args = 0, pretend = 0, frame = 0
  73              		@ frame_needed = 0, uses_anonymous_args = 0
  74              		@ link register save eliminated.
  75 0000 0022     		movs	r2, #0
  76 0002 80E80600 		stmia	r0, {r1, r2}
  77 0006 4262     		str	r2, [r0, #36]
  78 0008 7047     		bx	lr
  79              		.size	_ZN20WifiFirmwareUploaderC2ER9UARTClass, .-_ZN20WifiFirmwareUploaderC2ER9UARTClass
  80              		.global	_ZN20WifiFirmwareUploaderC1ER9UARTClass
  81              		.thumb_set _ZN20WifiFirmwareUploaderC1ER9UARTClass,_ZN20WifiFirmwareUploaderC2ER9UARTClass
  82 000a 00BF     		.section	.text._ZNK20WifiFirmwareUploader7IsReadyEv,"ax",%progbits
  83              		.align	2
  84              		.global	_ZNK20WifiFirmwareUploader7IsReadyEv
  85              		.thumb
  86              		.thumb_func
  87              		.type	_ZNK20WifiFirmwareUploader7IsReadyEv, %function
  88              	_ZNK20WifiFirmwareUploader7IsReadyEv:
  89              		@ args = 0, pretend = 0, frame = 0
  90              		@ frame_needed = 0, uses_anonymous_args = 0
  91              		@ link register save eliminated.
  92 0000 406A     		ldr	r0, [r0, #36]
  93 0002 D0F10100 		rsbs	r0, r0, #1
  94 0006 38BF     		it	cc
  95 0008 0020     		movcc	r0, #0
  96 000a 7047     		bx	lr
  97              		.size	_ZNK20WifiFirmwareUploader7IsReadyEv, .-_ZNK20WifiFirmwareUploader7IsReadyEv
  98              		.section	.text._ZN20WifiFirmwareUploader8MessageFEPKcz,"ax",%progbits
  99              		.align	2
 100              		.global	_ZN20WifiFirmwareUploader8MessageFEPKcz
 101              		.thumb
 102              		.thumb_func
 103              		.type	_ZN20WifiFirmwareUploader8MessageFEPKcz, %function
 104              	_ZN20WifiFirmwareUploader8MessageFEPKcz:
 105              		@ args = 4, pretend = 12, frame = 8
 106              		@ frame_needed = 0, uses_anonymous_args = 1
 107 0000 0EB4     		push	{r1, r2, r3}
 108 0002 00B5     		push	{lr}
 109 0004 82B0     		sub	sp, sp, #8
 110 0006 03AB     		add	r3, sp, #12
 111 0008 0649     		ldr	r1, .L13
 112 000a 53F8042B 		ldr	r2, [r3], #4
 113 000e 0868     		ldr	r0, [r1]
 114 0010 0193     		str	r3, [sp, #4]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccaOMp2W.s 			page 3


 115 0012 0721     		movs	r1, #7
 116 0014 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list
 117 0018 02B0     		add	sp, sp, #8
 118              		@ sp needed
 119 001a 5DF804EB 		ldr	lr, [sp], #4
 120 001e 03B0     		add	sp, sp, #12
 121 0020 7047     		bx	lr
 122              	.L14:
 123 0022 00BF     		.align	2
 124              	.L13:
 125 0024 00000000 		.word	reprap
 126              		.size	_ZN20WifiFirmwareUploader8MessageFEPKcz, .-_ZN20WifiFirmwareUploader8MessageFEPKcz
 127              		.section	.text._ZN20WifiFirmwareUploader10flushInputEv,"ax",%progbits
 128              		.align	2
 129              		.global	_ZN20WifiFirmwareUploader10flushInputEv
 130              		.thumb
 131              		.thumb_func
 132              		.type	_ZN20WifiFirmwareUploader10flushInputEv, %function
 133              	_ZN20WifiFirmwareUploader10flushInputEv:
 134              		@ args = 0, pretend = 0, frame = 0
 135              		@ frame_needed = 0, uses_anonymous_args = 0
 136 0000 10B5     		push	{r4, lr}
 137 0002 0446     		mov	r4, r0
 138 0004 03E0     		b	.L16
 139              	.L17:
 140 0006 2068     		ldr	r0, [r4]
 141 0008 0368     		ldr	r3, [r0]
 142 000a 5B69     		ldr	r3, [r3, #20]
 143 000c 9847     		blx	r3
 144              	.L16:
 145 000e 2068     		ldr	r0, [r4]
 146 0010 0368     		ldr	r3, [r0]
 147 0012 1B69     		ldr	r3, [r3, #16]
 148 0014 9847     		blx	r3
 149 0016 0028     		cmp	r0, #0
 150 0018 F5D1     		bne	.L17
 151 001a 10BD     		pop	{r4, pc}
 152              		.size	_ZN20WifiFirmwareUploader10flushInputEv, .-_ZN20WifiFirmwareUploader10flushInputEv
 153              		.section	.text._ZN20WifiFirmwareUploader7getDataEjPKhi,"ax",%progbits
 154              		.align	2
 155              		.global	_ZN20WifiFirmwareUploader7getDataEjPKhi
 156              		.thumb
 157              		.thumb_func
 158              		.type	_ZN20WifiFirmwareUploader7getDataEjPKhi, %function
 159              	_ZN20WifiFirmwareUploader7getDataEjPKhi:
 160              		@ args = 0, pretend = 0, frame = 0
 161              		@ frame_needed = 0, uses_anonymous_args = 0
 162              		@ link register save eliminated.
 163 0000 2AB1     		cbz	r2, .L19
 164 0002 21B1     		cbz	r1, .L19
 165 0004 0846     		mov	r0, r1
 166 0006 1146     		mov	r1, r2
 167 0008 1A46     		mov	r2, r3
 168 000a FFF7FEBF 		b	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.2
 169              	.L19:
 170 000e 0020     		movs	r0, #0
 171 0010 7047     		bx	lr
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccaOMp2W.s 			page 4


 172              		.size	_ZN20WifiFirmwareUploader7getDataEjPKhi, .-_ZN20WifiFirmwareUploader7getDataEjPKhi
 173 0012 00BF     		.section	.text._ZN20WifiFirmwareUploader7putDataEmjPhi,"ax",%progbits
 174              		.align	2
 175              		.global	_ZN20WifiFirmwareUploader7putDataEmjPhi
 176              		.thumb
 177              		.thumb_func
 178              		.type	_ZN20WifiFirmwareUploader7putDataEmjPhi, %function
 179              	_ZN20WifiFirmwareUploader7putDataEmjPhi:
 180              		@ args = 4, pretend = 0, frame = 0
 181              		@ frame_needed = 0, uses_anonymous_args = 0
 182              		@ link register save eliminated.
 183 0000 10B4     		push	{r4}
 184 0002 019C     		ldr	r4, [sp, #4]
 185 0004 43B1     		cbz	r3, .L24
 186 0006 3AB1     		cbz	r2, .L24
 187 0008 0846     		mov	r0, r1
 188 000a 1146     		mov	r1, r2
 189 000c 1A46     		mov	r2, r3
 190 000e 2346     		mov	r3, r4
 191 0010 5DF8044B 		ldr	r4, [sp], #4
 192 0014 FFF7FEBF 		b	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.3
 193              	.L24:
 194 0018 5DF8044B 		ldr	r4, [sp], #4
 195 001c 7047     		bx	lr
 196              		.size	_ZN20WifiFirmwareUploader7putDataEmjPhi, .-_ZN20WifiFirmwareUploader7putDataEmjPhi
 197 001e 00BF     		.section	.text._ZN20WifiFirmwareUploader8ReadByteERhb,"ax",%progbits
 198              		.align	2
 199              		.global	_ZN20WifiFirmwareUploader8ReadByteERhb
 200              		.thumb
 201              		.thumb_func
 202              		.type	_ZN20WifiFirmwareUploader8ReadByteERhb, %function
 203              	_ZN20WifiFirmwareUploader8ReadByteERhb:
 204              		@ args = 0, pretend = 0, frame = 0
 205              		@ frame_needed = 0, uses_anonymous_args = 0
 206 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 207 0002 0446     		mov	r4, r0
 208 0004 0068     		ldr	r0, [r0]
 209 0006 0568     		ldr	r5, [r0]
 210 0008 2B69     		ldr	r3, [r5, #16]
 211 000a 0E46     		mov	r6, r1
 212 000c 1546     		mov	r5, r2
 213 000e 9847     		blx	r3
 214 0010 00B9     		cbnz	r0, .L43
 215              	.L33:
 216 0012 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 217              	.L43:
 218 0014 2068     		ldr	r0, [r4]
 219 0016 0368     		ldr	r3, [r0]
 220 0018 5B69     		ldr	r3, [r3, #20]
 221 001a 9847     		blx	r3
 222 001c C7B2     		uxtb	r7, r0
 223 001e 3770     		strb	r7, [r6]
 224 0020 1DB1     		cbz	r5, .L38
 225 0022 C02F     		cmp	r7, #192
 226 0024 1ED0     		beq	.L37
 227 0026 DB2F     		cmp	r7, #219
 228 0028 01D0     		beq	.L44
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccaOMp2W.s 			page 5


 229              	.L38:
 230 002a 0120     		movs	r0, #1
 231 002c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 232              	.L44:
 233 002e 2068     		ldr	r0, [r4]
 234 0030 0368     		ldr	r3, [r0]
 235 0032 1B69     		ldr	r3, [r3, #16]
 236 0034 9847     		blx	r3
 237 0036 90B1     		cbz	r0, .L39
 238 0038 2068     		ldr	r0, [r4]
 239 003a 0368     		ldr	r3, [r0]
 240 003c 5B69     		ldr	r3, [r3, #20]
 241 003e 9847     		blx	r3
 242 0040 C0B2     		uxtb	r0, r0
 243 0042 DC28     		cmp	r0, #220
 244 0044 07D0     		beq	.L45
 245 0046 DD28     		cmp	r0, #221
 246 0048 15BF     		itete	ne
 247 004a 3070     		strbne	r0, [r6]
 248 004c 3770     		strbeq	r7, [r6]
 249 004e 6FF00200 		mvnne	r0, #2
 250 0052 0220     		moveq	r0, #2
 251 0054 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 252              	.L45:
 253 0056 C023     		movs	r3, #192
 254 0058 3370     		strb	r3, [r6]
 255 005a 0220     		movs	r0, #2
 256 005c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 257              	.L39:
 258 005e 6FF00100 		mvn	r0, #1
 259 0062 D6E7     		b	.L33
 260              	.L37:
 261 0064 4FF0FF30 		mov	r0, #-1
 262 0068 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 263              		.size	_ZN20WifiFirmwareUploader8ReadByteERhb, .-_ZN20WifiFirmwareUploader8ReadByteERhb
 264 006a 00BF     		.section	.text._ZN20WifiFirmwareUploader14writePacketRawEPKhj,"ax",%progbits
 265              		.align	2
 266              		.global	_ZN20WifiFirmwareUploader14writePacketRawEPKhj
 267              		.thumb
 268              		.thumb_func
 269              		.type	_ZN20WifiFirmwareUploader14writePacketRawEPKhj, %function
 270              	_ZN20WifiFirmwareUploader14writePacketRawEPKhj:
 271              		@ args = 0, pretend = 0, frame = 0
 272              		@ frame_needed = 0, uses_anonymous_args = 0
 273 0000 08B5     		push	{r3, lr}
 274 0002 0068     		ldr	r0, [r0]
 275 0004 0368     		ldr	r3, [r0]
 276 0006 DB68     		ldr	r3, [r3, #12]
 277 0008 9847     		blx	r3
 278 000a 08BD     		pop	{r3, pc}
 279              		.size	_ZN20WifiFirmwareUploader14writePacketRawEPKhj, .-_ZN20WifiFirmwareUploader14writePacketRawE
 280              		.section	.text._ZN20WifiFirmwareUploader10readPacketEhPmRjm,"ax",%progbits
 281              		.align	2
 282              		.global	_ZN20WifiFirmwareUploader10readPacketEhPmRjm
 283              		.thumb
 284              		.thumb_func
 285              		.type	_ZN20WifiFirmwareUploader10readPacketEhPmRjm, %function
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccaOMp2W.s 			page 6


 286              	_ZN20WifiFirmwareUploader10readPacketEhPmRjm:
 287              		@ args = 4, pretend = 0, frame = 24
 288              		@ frame_needed = 0, uses_anonymous_args = 0
 289 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 290 0004 87B0     		sub	sp, sp, #28
 291 0006 9946     		mov	r9, r3
 292 0008 0646     		mov	r6, r0
 293 000a 0191     		str	r1, [sp, #4]
 294 000c 0092     		str	r2, [sp]
 295 000e DDF84080 		ldr	r8, [sp, #64]
 296 0012 FFF7FEFF 		bl	millis
 297 0016 0023     		movs	r3, #0
 298 0018 0746     		mov	r7, r0
 299 001a 1C46     		mov	r4, r3
 300 001c C9F80030 		str	r3, [r9]
 301 0020 9A46     		mov	r10, r3
 302 0022 9B46     		mov	fp, r3
 303 0024 0125     		movs	r5, #1
 304              	.L60:
 305 0026 FFF7FEFF 		bl	millis
 306 002a C01B     		subs	r0, r0, r7
 307 002c 4045     		cmp	r0, r8
 308 002e 67D8     		bhi	.L61
 309 0030 3068     		ldr	r0, [r6]
 310 0032 0368     		ldr	r3, [r0]
 311 0034 1B69     		ldr	r3, [r3, #16]
 312 0036 9847     		blx	r3
 313 0038 A842     		cmp	r0, r5
 314 003a F4DB     		blt	.L60
 315 003c 032C     		cmp	r4, #3
 316 003e 72D8     		bhi	.L62
 317 0040 DFE804F0 		tbb	[pc, r4]
 318              	.L51:
 319 0044 1A       		.byte	(.L50-.L51)/2
 320 0045 02       		.byte	(.L52-.L51)/2
 321 0046 02       		.byte	(.L52-.L51)/2
 322 0047 1A       		.byte	(.L50-.L51)/2
 323              		.align	1
 324              	.L52:
 325 0048 3046     		mov	r0, r6
 326 004a 0DF10F01 		add	r1, sp, #15
 327 004e 0122     		movs	r2, #1
 328 0050 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8ReadByteERhb
 329 0054 431E     		subs	r3, r0, #1
 330 0056 012B     		cmp	r3, #1
 331 0058 5DD8     		bhi	.L77
 332 005a 012C     		cmp	r4, #1
 333 005c 2BD0     		beq	.L78
 334 005e 0AF1010A 		add	r10, r10, #1
 335 0062 D9F80030 		ldr	r3, [r9]
 336 0066 1FFA8AFA 		uxth	r10, r10
 337 006a 9A45     		cmp	r10, r3
 338 006c 28BF     		it	cs
 339 006e 0125     		movcs	r5, #1
 340 0070 2CBF     		ite	cs
 341 0072 0324     		movcs	r4, #3
 342 0074 0224     		movcc	r4, #2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccaOMp2W.s 			page 7


 343 0076 D6E7     		b	.L60
 344              	.L50:
 345 0078 3068     		ldr	r0, [r6]
 346 007a 0368     		ldr	r3, [r0]
 347 007c 5B69     		ldr	r3, [r3, #20]
 348 007e 9847     		blx	r3
 349 0080 C0B2     		uxtb	r0, r0
 350 0082 C028     		cmp	r0, #192
 351 0084 8DF80F00 		strb	r0, [sp, #15]
 352 0088 43D1     		bne	.L63
 353 008a 8CB1     		cbz	r4, .L79
 354 008c 04A9     		add	r1, sp, #16
 355 008e 0022     		movs	r2, #0
 356 0090 0120     		movs	r0, #1
 357 0092 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.2
 358 0096 0446     		mov	r4, r0
 359 0098 0120     		movs	r0, #1
 360 009a 04A9     		add	r1, sp, #16
 361 009c 0246     		mov	r2, r0
 362 009e E4B2     		uxtb	r4, r4
 363 00a0 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.2
 364 00a4 012C     		cmp	r4, #1
 365 00a6 2DD0     		beq	.L80
 366 00a8 0620     		movs	r0, #6
 367              	.L58:
 368 00aa 07B0     		add	sp, sp, #28
 369              		@ sp needed
 370 00ac BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 371              	.L79:
 372 00b0 0124     		movs	r4, #1
 373 00b2 0225     		movs	r5, #2
 374 00b4 B7E7     		b	.L60
 375              	.L78:
 376 00b6 0BF10102 		add	r2, fp, #1
 377 00ba 06AB     		add	r3, sp, #24
 378 00bc 5B44     		add	r3, r3, fp
 379 00be 1FFA82FB 		uxth	fp, r2
 380 00c2 BBF1070F 		cmp	fp, #7
 381 00c6 9DF80F20 		ldrb	r2, [sp, #15]	@ zero_extendqisi2
 382 00ca 03F8082C 		strb	r2, [r3, #-8]
 383 00ce AAD9     		bls	.L60
 384 00d0 0220     		movs	r0, #2
 385 00d2 0246     		mov	r2, r0
 386 00d4 04A9     		add	r1, sp, #16
 387 00d6 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.2
 388 00da 009B     		ldr	r3, [sp]
 389 00dc 84B2     		uxth	r4, r0
 390 00de C9F80040 		str	r4, [r9]
 391 00e2 33B1     		cbz	r3, .L56
 392 00e4 0420     		movs	r0, #4
 393 00e6 0246     		mov	r2, r0
 394 00e8 04A9     		add	r1, sp, #16
 395 00ea FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.2
 396 00ee 009B     		ldr	r3, [sp]
 397 00f0 1860     		str	r0, [r3]
 398              	.L56:
 399 00f2 002C     		cmp	r4, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccaOMp2W.s 			page 8


 400 00f4 08BF     		it	eq
 401 00f6 0125     		moveq	r5, #1
 402 00f8 0CBF     		ite	eq
 403 00fa 0324     		moveq	r4, #3
 404 00fc 0224     		movne	r4, #2
 405 00fe 92E7     		b	.L60
 406              	.L61:
 407 0100 0120     		movs	r0, #1
 408 0102 D2E7     		b	.L58
 409              	.L80:
 410 0104 019B     		ldr	r3, [sp, #4]
 411 0106 C0B2     		uxtb	r0, r0
 412 0108 9842     		cmp	r0, r3
 413 010a 14BF     		ite	ne
 414 010c 0620     		movne	r0, #6
 415 010e 0020     		moveq	r0, #0
 416 0110 CBE7     		b	.L58
 417              	.L63:
 418 0112 0720     		movs	r0, #7
 419 0114 C9E7     		b	.L58
 420              	.L77:
 421 0116 20B1     		cbz	r0, .L65
 422 0118 0230     		adds	r0, r0, #2
 423 011a 14BF     		ite	ne
 424 011c 0720     		movne	r0, #7
 425 011e 0920     		moveq	r0, #9
 426 0120 C3E7     		b	.L58
 427              	.L65:
 428 0122 0920     		movs	r0, #9
 429 0124 C1E7     		b	.L58
 430              	.L62:
 431 0126 0820     		movs	r0, #8
 432 0128 BFE7     		b	.L58
 433              		.size	_ZN20WifiFirmwareUploader10readPacketEhPmRjm, .-_ZN20WifiFirmwareUploader10readPacketEhPmRjm
 434 012a 00BF     		.section	.text._ZN20WifiFirmwareUploader11writePacketEPKhjS1_j,"ax",%progbits
 435              		.align	2
 436              		.global	_ZN20WifiFirmwareUploader11writePacketEPKhjS1_j
 437              		.thumb
 438              		.thumb_func
 439              		.type	_ZN20WifiFirmwareUploader11writePacketEPKhjS1_j, %function
 440              	_ZN20WifiFirmwareUploader11writePacketEPKhjS1_j:
 441              		@ args = 4, pretend = 0, frame = 0
 442              		@ frame_needed = 0, uses_anonymous_args = 0
 443 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 444 0004 0746     		mov	r7, r0
 445 0006 0068     		ldr	r0, [r0]
 446 0008 089D     		ldr	r5, [sp, #32]
 447 000a 8946     		mov	r9, r1
 448 000c 0168     		ldr	r1, [r0]
 449 000e 1646     		mov	r6, r2
 450 0010 8A68     		ldr	r2, [r1, #8]
 451 0012 C021     		movs	r1, #192
 452 0014 9846     		mov	r8, r3
 453 0016 9047     		blx	r2
 454 0018 26B9     		cbnz	r6, .L89
 455 001a 16E0     		b	.L88
 456              	.L87:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccaOMp2W.s 			page 9


 457 001c 9B68     		ldr	r3, [r3, #8]
 458 001e 9847     		blx	r3
 459              	.L86:
 460 0020 013E     		subs	r6, r6, #1
 461 0022 12D0     		beq	.L88
 462              	.L89:
 463 0024 19F8014B 		ldrb	r4, [r9], #1	@ zero_extendqisi2
 464 0028 3868     		ldr	r0, [r7]
 465 002a C02C     		cmp	r4, #192
 466 002c 0368     		ldr	r3, [r0]
 467 002e 2146     		mov	r1, r4
 468 0030 34D0     		beq	.L101
 469 0032 DB2C     		cmp	r4, #219
 470 0034 F2D1     		bne	.L87
 471 0036 2146     		mov	r1, r4
 472 0038 9B68     		ldr	r3, [r3, #8]
 473 003a 9847     		blx	r3
 474 003c 3868     		ldr	r0, [r7]
 475 003e 0368     		ldr	r3, [r0]
 476 0040 DD21     		movs	r1, #221
 477 0042 9B68     		ldr	r3, [r3, #8]
 478 0044 9847     		blx	r3
 479 0046 013E     		subs	r6, r6, #1
 480 0048 ECD1     		bne	.L89
 481              	.L88:
 482 004a 25B9     		cbnz	r5, .L93
 483 004c 16E0     		b	.L84
 484              	.L92:
 485 004e 9B68     		ldr	r3, [r3, #8]
 486 0050 9847     		blx	r3
 487              	.L91:
 488 0052 013D     		subs	r5, r5, #1
 489 0054 12D0     		beq	.L84
 490              	.L93:
 491 0056 18F8012B 		ldrb	r2, [r8], #1	@ zero_extendqisi2
 492 005a 3868     		ldr	r0, [r7]
 493 005c C02A     		cmp	r2, #192
 494 005e 0368     		ldr	r3, [r0]
 495 0060 1146     		mov	r1, r2
 496 0062 12D0     		beq	.L102
 497 0064 DB2A     		cmp	r2, #219
 498 0066 F2D1     		bne	.L92
 499 0068 1146     		mov	r1, r2
 500 006a 9B68     		ldr	r3, [r3, #8]
 501 006c 9847     		blx	r3
 502 006e 3868     		ldr	r0, [r7]
 503 0070 0368     		ldr	r3, [r0]
 504 0072 DD21     		movs	r1, #221
 505 0074 9B68     		ldr	r3, [r3, #8]
 506 0076 9847     		blx	r3
 507 0078 013D     		subs	r5, r5, #1
 508 007a ECD1     		bne	.L93
 509              	.L84:
 510 007c 3868     		ldr	r0, [r7]
 511 007e 0368     		ldr	r3, [r0]
 512 0080 C021     		movs	r1, #192
 513 0082 9B68     		ldr	r3, [r3, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccaOMp2W.s 			page 10


 514 0084 9847     		blx	r3
 515 0086 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 516              	.L102:
 517 008a 9B68     		ldr	r3, [r3, #8]
 518 008c DB21     		movs	r1, #219
 519 008e 9847     		blx	r3
 520 0090 3868     		ldr	r0, [r7]
 521 0092 0368     		ldr	r3, [r0]
 522 0094 DC21     		movs	r1, #220
 523 0096 9B68     		ldr	r3, [r3, #8]
 524 0098 9847     		blx	r3
 525 009a DAE7     		b	.L91
 526              	.L101:
 527 009c 9B68     		ldr	r3, [r3, #8]
 528 009e DB21     		movs	r1, #219
 529 00a0 9847     		blx	r3
 530 00a2 3868     		ldr	r0, [r7]
 531 00a4 0368     		ldr	r3, [r0]
 532 00a6 DC21     		movs	r1, #220
 533 00a8 9B68     		ldr	r3, [r3, #8]
 534 00aa 9847     		blx	r3
 535 00ac B8E7     		b	.L86
 536              		.size	_ZN20WifiFirmwareUploader11writePacketEPKhjS1_j, .-_ZN20WifiFirmwareUploader11writePacketEPK
 537 00ae 00BF     		.section	.text._ZN20WifiFirmwareUploader14writePacketRawEPKhjS1_j,"ax",%progbits
 538              		.align	2
 539              		.global	_ZN20WifiFirmwareUploader14writePacketRawEPKhjS1_j
 540              		.thumb
 541              		.thumb_func
 542              		.type	_ZN20WifiFirmwareUploader14writePacketRawEPKhjS1_j, %function
 543              	_ZN20WifiFirmwareUploader14writePacketRawEPKhjS1_j:
 544              		@ args = 4, pretend = 0, frame = 0
 545              		@ frame_needed = 0, uses_anonymous_args = 0
 546 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 547 0004 0446     		mov	r4, r0
 548 0006 0068     		ldr	r0, [r0]
 549 0008 089D     		ldr	r5, [sp, #32]
 550 000a 0F46     		mov	r7, r1
 551 000c 0168     		ldr	r1, [r0]
 552 000e 8E68     		ldr	r6, [r1, #8]
 553 0010 C021     		movs	r1, #192
 554 0012 9846     		mov	r8, r3
 555 0014 9146     		mov	r9, r2
 556 0016 B047     		blx	r6
 557 0018 2068     		ldr	r0, [r4]
 558 001a 0668     		ldr	r6, [r0]
 559 001c 3946     		mov	r1, r7
 560 001e 4A46     		mov	r2, r9
 561 0020 F368     		ldr	r3, [r6, #12]
 562 0022 9847     		blx	r3
 563 0024 2068     		ldr	r0, [r4]
 564 0026 0668     		ldr	r6, [r0]
 565 0028 4146     		mov	r1, r8
 566 002a F368     		ldr	r3, [r6, #12]
 567 002c 2A46     		mov	r2, r5
 568 002e 9847     		blx	r3
 569 0030 2068     		ldr	r0, [r4]
 570 0032 0368     		ldr	r3, [r0]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccaOMp2W.s 			page 11


 571 0034 C021     		movs	r1, #192
 572 0036 9B68     		ldr	r3, [r3, #8]
 573 0038 9847     		blx	r3
 574 003a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 575              		.size	_ZN20WifiFirmwareUploader14writePacketRawEPKhjS1_j, .-_ZN20WifiFirmwareUploader14writePacket
 576 003e 00BF     		.section	.text._ZN20WifiFirmwareUploader11sendCommandEhmPKhj,"ax",%progbits
 577              		.align	2
 578              		.global	_ZN20WifiFirmwareUploader11sendCommandEhmPKhj
 579              		.thumb
 580              		.thumb_func
 581              		.type	_ZN20WifiFirmwareUploader11sendCommandEhmPKhj, %function
 582              	_ZN20WifiFirmwareUploader11sendCommandEhmPKhj:
 583              		@ args = 4, pretend = 0, frame = 8
 584              		@ frame_needed = 0, uses_anonymous_args = 0
 585 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 586 0004 0546     		mov	r5, r0
 587 0006 84B0     		sub	sp, sp, #16
 588 0008 0020     		movs	r0, #0
 589 000a 0C46     		mov	r4, r1
 590 000c 1746     		mov	r7, r2
 591 000e 0121     		movs	r1, #1
 592 0010 02AA     		add	r2, sp, #8
 593 0012 9846     		mov	r8, r3
 594 0014 0346     		mov	r3, r0
 595 0016 0A9E     		ldr	r6, [sp, #40]
 596 0018 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.3
 597 001c 0121     		movs	r1, #1
 598 001e 0B46     		mov	r3, r1
 599 0020 2046     		mov	r0, r4
 600 0022 02AA     		add	r2, sp, #8
 601 0024 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.3
 602 0028 0221     		movs	r1, #2
 603 002a 0B46     		mov	r3, r1
 604 002c 3046     		mov	r0, r6
 605 002e 02AA     		add	r2, sp, #8
 606 0030 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.3
 607 0034 0421     		movs	r1, #4
 608 0036 0B46     		mov	r3, r1
 609 0038 3846     		mov	r0, r7
 610 003a 02AA     		add	r2, sp, #8
 611 003c FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.3
 612 0040 2846     		mov	r0, r5
 613 0042 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader10flushInputEv
 614 0046 082C     		cmp	r4, #8
 615 0048 0096     		str	r6, [sp]
 616 004a 2846     		mov	r0, r5
 617 004c 02A9     		add	r1, sp, #8
 618 004e 06D0     		beq	.L107
 619 0050 4346     		mov	r3, r8
 620 0052 0822     		movs	r2, #8
 621 0054 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader11writePacketEPKhjS1_j
 622 0058 04B0     		add	sp, sp, #16
 623              		@ sp needed
 624 005a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 625              	.L107:
 626 005e 2246     		mov	r2, r4
 627 0060 4346     		mov	r3, r8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccaOMp2W.s 			page 12


 628 0062 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader14writePacketRawEPKhjS1_j
 629 0066 04B0     		add	sp, sp, #16
 630              		@ sp needed
 631 0068 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 632              		.size	_ZN20WifiFirmwareUploader11sendCommandEhmPKhj, .-_ZN20WifiFirmwareUploader11sendCommandEhmPK
 633              		.section	.text._ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm,"ax",%progbits
 634              		.align	2
 635              		.global	_ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm
 636              		.thumb
 637              		.thumb_func
 638              		.type	_ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm, %function
 639              	_ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm:
 640              		@ args = 12, pretend = 0, frame = 8
 641              		@ frame_needed = 0, uses_anonymous_args = 0
 642 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 643 0002 85B0     		sub	sp, sp, #20
 644 0004 0746     		mov	r7, r0
 645 0006 0B9C     		ldr	r4, [sp, #44]
 646 0008 0093     		str	r3, [sp]
 647 000a 0E46     		mov	r6, r1
 648 000c 1346     		mov	r3, r2
 649 000e 0C9D     		ldr	r5, [sp, #48]
 650 0010 0A9A     		ldr	r2, [sp, #40]
 651 0012 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader11sendCommandEhmPKhj
 652 0016 0095     		str	r5, [sp]
 653 0018 3846     		mov	r0, r7
 654 001a 3146     		mov	r1, r6
 655 001c 2246     		mov	r2, r4
 656 001e 03AB     		add	r3, sp, #12
 657 0020 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader10readPacketEhPmRjm
 658 0024 18B9     		cbnz	r0, .L109
 659 0026 039B     		ldr	r3, [sp, #12]
 660 0028 022B     		cmp	r3, #2
 661 002a 18BF     		it	ne
 662 002c 0320     		movne	r0, #3
 663              	.L109:
 664 002e 05B0     		add	sp, sp, #20
 665              		@ sp needed
 666 0030 F0BD     		pop	{r4, r5, r6, r7, pc}
 667              		.size	_ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm, .-_ZN20WifiFirmwareUploader9doCommandEhPKhjmP
 668 0032 00BF     		.section	.text._ZN20WifiFirmwareUploader4SyncEt,"ax",%progbits
 669              		.align	2
 670              		.global	_ZN20WifiFirmwareUploader4SyncEt
 671              		.thumb
 672              		.thumb_func
 673              		.type	_ZN20WifiFirmwareUploader4SyncEt, %function
 674              	_ZN20WifiFirmwareUploader4SyncEt:
 675              		@ args = 0, pretend = 0, frame = 40
 676              		@ frame_needed = 0, uses_anonymous_args = 0
 677 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 678 0004 8EB0     		sub	sp, sp, #56
 679 0006 0646     		mov	r6, r0
 680 0008 8846     		mov	r8, r1
 681 000a 2422     		movs	r2, #36
 682 000c 5521     		movs	r1, #85
 683 000e 0024     		movs	r4, #0
 684 0010 05A8     		add	r0, sp, #20
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccaOMp2W.s 			page 13


 685 0012 FFF7FEFF 		bl	memset
 686 0016 0725     		movs	r5, #7
 687 0018 4FF0120E 		mov	lr, #18
 688 001c CDF80880 		str	r8, [sp, #8]
 689 0020 05AA     		add	r2, sp, #20
 690 0022 3046     		mov	r0, r6
 691 0024 0094     		str	r4, [sp]
 692 0026 0194     		str	r4, [sp, #4]
 693 0028 2027     		movs	r7, #32
 694 002a 0821     		movs	r1, #8
 695 002c 2423     		movs	r3, #36
 696 002e 8DF81450 		strb	r5, [sp, #20]
 697 0032 8DF81550 		strb	r5, [sp, #21]
 698 0036 8DF816E0 		strb	lr, [sp, #22]
 699 003a 8DF81770 		strb	r7, [sp, #23]
 700 003e FFF7FEFF 		bl	_ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm
 701 0042 0628     		cmp	r0, #6
 702 0044 0546     		mov	r5, r0
 703 0046 19D1     		bne	.L113
 704 0048 04AF     		add	r7, sp, #16
 705 004a 2246     		mov	r2, r4
 706 004c CDF80080 		str	r8, [sp]
 707 0050 3B46     		mov	r3, r7
 708 0052 3046     		mov	r0, r6
 709 0054 0821     		movs	r1, #8
 710 0056 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader10readPacketEhPmRjm
 711 005a 0924     		movs	r4, #9
 712 005c 0546     		mov	r5, r0
 713              	.L118:
 714 005e 062D     		cmp	r5, #6
 715 0060 3046     		mov	r0, r6
 716 0062 4FF00801 		mov	r1, #8
 717 0066 4FF00002 		mov	r2, #0
 718 006a 3B46     		mov	r3, r7
 719 006c 06D1     		bne	.L113
 720 006e CDF80080 		str	r8, [sp]
 721 0072 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader10readPacketEhPmRjm
 722 0076 013C     		subs	r4, r4, #1
 723 0078 0546     		mov	r5, r0
 724 007a F0D1     		bne	.L118
 725              	.L113:
 726 007c 7DB9     		cbnz	r5, .L120
 727 007e 04AF     		add	r7, sp, #16
 728 0080 4FF4FA74 		mov	r4, #500
 729 0084 02E0     		b	.L117
 730              	.L123:
 731 0086 049B     		ldr	r3, [sp, #16]
 732 0088 022B     		cmp	r3, #2
 733 008a 08D1     		bne	.L120
 734              	.L117:
 735 008c 0094     		str	r4, [sp]
 736 008e 3046     		mov	r0, r6
 737 0090 0821     		movs	r1, #8
 738 0092 0022     		movs	r2, #0
 739 0094 3B46     		mov	r3, r7
 740 0096 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader10readPacketEhPmRjm
 741 009a 0028     		cmp	r0, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccaOMp2W.s 			page 14


 742 009c F3D0     		beq	.L123
 743              	.L120:
 744 009e 2846     		mov	r0, r5
 745 00a0 0EB0     		add	sp, sp, #56
 746              		@ sp needed
 747 00a2 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 748              		.size	_ZN20WifiFirmwareUploader4SyncEt, .-_ZN20WifiFirmwareUploader4SyncEt
 749 00a6 00BF     		.section	.text._ZN20WifiFirmwareUploader10flashBeginEmm,"ax",%progbits
 750              		.align	2
 751              		.global	_ZN20WifiFirmwareUploader10flashBeginEmm
 752              		.thumb
 753              		.thumb_func
 754              		.type	_ZN20WifiFirmwareUploader10flashBeginEmm, %function
 755              	_ZN20WifiFirmwareUploader10flashBeginEmm:
 756              		@ args = 0, pretend = 0, frame = 16
 757              		@ frame_needed = 0, uses_anonymous_args = 0
 758 0000 70B5     		push	{r4, r5, r6, lr}
 759 0002 88B0     		sub	sp, sp, #32
 760 0004 1446     		mov	r4, r2
 761 0006 0546     		mov	r5, r0
 762 0008 0E46     		mov	r6, r1
 763 000a 1046     		mov	r0, r2
 764 000c 0421     		movs	r1, #4
 765 000e 04AA     		add	r2, sp, #16
 766 0010 0023     		movs	r3, #0
 767 0012 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.3
 768 0016 0421     		movs	r1, #4
 769 0018 04F2FF30 		addw	r0, r4, #1023
 770 001c 04AA     		add	r2, sp, #16
 771 001e 0B46     		mov	r3, r1
 772 0020 800A     		lsrs	r0, r0, #10
 773 0022 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.3
 774 0026 04AA     		add	r2, sp, #16
 775 0028 4FF48060 		mov	r0, #1024
 776 002c 0421     		movs	r1, #4
 777 002e 0823     		movs	r3, #8
 778 0030 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.3
 779 0034 26F47F70 		bic	r0, r6, #1020
 780 0038 04AA     		add	r2, sp, #16
 781 003a 20F00300 		bic	r0, r0, #3
 782 003e 0421     		movs	r1, #4
 783 0040 0C23     		movs	r3, #12
 784 0042 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.3
 785 0046 002C     		cmp	r4, #0
 786 0048 43F69821 		movw	r1, #15000
 787 004c 08BF     		it	eq
 788 004e 4FF4FA71 		moveq	r1, #500
 789 0052 0023     		movs	r3, #0
 790 0054 0291     		str	r1, [sp, #8]
 791 0056 0093     		str	r3, [sp]
 792 0058 0193     		str	r3, [sp, #4]
 793 005a 2846     		mov	r0, r5
 794 005c 04AA     		add	r2, sp, #16
 795 005e 0221     		movs	r1, #2
 796 0060 1023     		movs	r3, #16
 797 0062 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm
 798 0066 08B0     		add	sp, sp, #32
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccaOMp2W.s 			page 15


 799              		@ sp needed
 800 0068 70BD     		pop	{r4, r5, r6, pc}
 801              		.size	_ZN20WifiFirmwareUploader10flashBeginEmm, .-_ZN20WifiFirmwareUploader10flashBeginEmm
 802 006a 00BF     		.section	.text._ZN20WifiFirmwareUploader11flashFinishEb,"ax",%progbits
 803              		.align	2
 804              		.global	_ZN20WifiFirmwareUploader11flashFinishEb
 805              		.thumb
 806              		.thumb_func
 807              		.type	_ZN20WifiFirmwareUploader11flashFinishEb, %function
 808              	_ZN20WifiFirmwareUploader11flashFinishEb:
 809              		@ args = 0, pretend = 0, frame = 8
 810              		@ frame_needed = 0, uses_anonymous_args = 0
 811 0000 30B5     		push	{r4, r5, lr}
 812 0002 87B0     		sub	sp, sp, #28
 813 0004 0446     		mov	r4, r0
 814 0006 05AA     		add	r2, sp, #20
 815 0008 81F00100 		eor	r0, r1, #1
 816 000c 0023     		movs	r3, #0
 817 000e 0421     		movs	r1, #4
 818 0010 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.3
 819 0014 4FF4FA75 		mov	r5, #500
 820 0018 0023     		movs	r3, #0
 821 001a 0421     		movs	r1, #4
 822 001c 0093     		str	r3, [sp]
 823 001e 0193     		str	r3, [sp, #4]
 824 0020 2046     		mov	r0, r4
 825 0022 05AA     		add	r2, sp, #20
 826 0024 0295     		str	r5, [sp, #8]
 827 0026 0B46     		mov	r3, r1
 828 0028 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm
 829 002c 07B0     		add	sp, sp, #28
 830              		@ sp needed
 831 002e 30BD     		pop	{r4, r5, pc}
 832              		.size	_ZN20WifiFirmwareUploader11flashFinishEb, .-_ZN20WifiFirmwareUploader11flashFinishEb
 833              		.section	.text._ZN20WifiFirmwareUploader8checksumEPKhtt,"ax",%progbits
 834              		.align	2
 835              		.global	_ZN20WifiFirmwareUploader8checksumEPKhtt
 836              		.thumb
 837              		.thumb_func
 838              		.type	_ZN20WifiFirmwareUploader8checksumEPKhtt, %function
 839              	_ZN20WifiFirmwareUploader8checksumEPKhtt:
 840              		@ args = 0, pretend = 0, frame = 0
 841              		@ frame_needed = 0, uses_anonymous_args = 0
 842              		@ link register save eliminated.
 843 0000 0346     		mov	r3, r0
 844 0002 50B1     		cbz	r0, .L129
 845 0004 481E     		subs	r0, r1, #1
 846 0006 80B2     		uxth	r0, r0
 847 0008 39B1     		cbz	r1, .L129
 848 000a 0130     		adds	r0, r0, #1
 849 000c 1844     		add	r0, r0, r3
 850              	.L130:
 851 000e 13F8011B 		ldrb	r1, [r3], #1	@ zero_extendqisi2
 852 0012 8342     		cmp	r3, r0
 853 0014 82EA0102 		eor	r2, r2, r1
 854 0018 F9D1     		bne	.L130
 855              	.L129:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccaOMp2W.s 			page 16


 856 001a 1046     		mov	r0, r2
 857 001c 7047     		bx	lr
 858              		.size	_ZN20WifiFirmwareUploader8checksumEPKhtt, .-_ZN20WifiFirmwareUploader8checksumEPKhtt
 859 001e 00BF     		.section	.text._ZN20WifiFirmwareUploader15flashWriteBlockEtt,"ax",%progbits
 860              		.align	2
 861              		.global	_ZN20WifiFirmwareUploader15flashWriteBlockEtt
 862              		.thumb
 863              		.thumb_func
 864              		.type	_ZN20WifiFirmwareUploader15flashWriteBlockEtt, %function
 865              	_ZN20WifiFirmwareUploader15flashWriteBlockEtt:
 866              		@ args = 0, pretend = 0, frame = 1040
 867              		@ frame_needed = 0, uses_anonymous_args = 0
 868 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 869 0004 ADF5846D 		sub	sp, sp, #1056
 870 0008 0546     		mov	r5, r0
 871 000a 0023     		movs	r3, #0
 872 000c 4FF48060 		mov	r0, #1024
 873 0010 0F46     		mov	r7, r1
 874 0012 1646     		mov	r6, r2
 875 0014 0421     		movs	r1, #4
 876 0016 04AA     		add	r2, sp, #16
 877 0018 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.3
 878 001c 0421     		movs	r1, #4
 879 001e 0B46     		mov	r3, r1
 880 0020 2869     		ldr	r0, [r5, #16]
 881 0022 04AA     		add	r2, sp, #16
 882 0024 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.3
 883 0028 04AA     		add	r2, sp, #16
 884 002a 0020     		movs	r0, #0
 885 002c 0421     		movs	r1, #4
 886 002e 0823     		movs	r3, #8
 887 0030 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.3
 888 0034 04AA     		add	r2, sp, #16
 889 0036 0020     		movs	r0, #0
 890 0038 0421     		movs	r1, #4
 891 003a 0C23     		movs	r3, #12
 892 003c FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.3
 893 0040 6868     		ldr	r0, [r5, #4]
 894 0042 08A9     		add	r1, sp, #32
 895 0044 4FF48062 		mov	r2, #1024
 896 0048 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 897 004c B0F5806F 		cmp	r0, #1024
 898 0050 0446     		mov	r4, r0
 899 0052 14D0     		beq	.L139
 900 0054 6868     		ldr	r0, [r5, #4]
 901 0056 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 902 005a AB68     		ldr	r3, [r5, #8]
 903 005c 9842     		cmp	r0, r3
 904 005e 18BF     		it	ne
 905 0060 0420     		movne	r0, #4
 906 0062 03D0     		beq	.L156
 907              	.L140:
 908 0064 0DF5846D 		add	sp, sp, #1056
 909              		@ sp needed
 910 0068 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 911              	.L156:
 912 006c 04F11000 		add	r0, r4, #16
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccaOMp2W.s 			page 17


 913 0070 04AB     		add	r3, sp, #16
 914 0072 1844     		add	r0, r0, r3
 915 0074 C4F58062 		rsb	r2, r4, #1024
 916 0078 FF21     		movs	r1, #255
 917 007a FFF7FEFF 		bl	memset
 918              	.L139:
 919 007e 2B69     		ldr	r3, [r5, #16]
 920 0080 9DF82020 		ldrb	r2, [sp, #32]	@ zero_extendqisi2
 921 0084 03B3     		cbz	r3, .L141
 922              	.L142:
 923 0086 08AB     		add	r3, sp, #32
 924 0088 0DF21F41 		addw	r1, sp, #1055
 925 008c EF24     		movs	r4, #239
 926 008e 01E0     		b	.L145
 927              	.L157:
 928 0090 13F8012F 		ldrb	r2, [r3, #1]!	@ zero_extendqisi2
 929              	.L145:
 930 0094 8B42     		cmp	r3, r1
 931 0096 84EA0204 		eor	r4, r4, r2
 932 009a F9D1     		bne	.L157
 933 009c 0326     		movs	r6, #3
 934 009e 4FF00008 		mov	r8, #0
 935 00a2 C827     		movs	r7, #200
 936              	.L146:
 937 00a4 8DE81001 		stmia	sp, {r4, r8}
 938 00a8 0297     		str	r7, [sp, #8]
 939 00aa 2846     		mov	r0, r5
 940 00ac 0321     		movs	r1, #3
 941 00ae 04AA     		add	r2, sp, #16
 942 00b0 4FF48263 		mov	r3, #1040
 943 00b4 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader9doCommandEhPKhjmPmm
 944 00b8 0028     		cmp	r0, #0
 945 00ba D3D0     		beq	.L140
 946 00bc 013E     		subs	r6, r6, #1
 947 00be F1D1     		bne	.L146
 948 00c0 0DF5846D 		add	sp, sp, #1056
 949              		@ sp needed
 950 00c4 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 951              	.L141:
 952 00c8 EC68     		ldr	r4, [r5, #12]
 953 00ca 002C     		cmp	r4, #0
 954 00cc DBD1     		bne	.L142
 955 00ce E92A     		cmp	r2, #233
 956 00d0 D9D1     		bne	.L142
 957 00d2 002E     		cmp	r6, #0
 958 00d4 D7D0     		beq	.L142
 959 00d6 0DF12201 		add	r1, sp, #34
 960 00da 2246     		mov	r2, r4
 961 00dc 0220     		movs	r0, #2
 962 00de FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7getDataEjPKhi.part.2
 963 00e2 20EA0600 		bic	r0, r0, r6
 964 00e6 0DF12202 		add	r2, sp, #34
 965 00ea 3843     		orrs	r0, r0, r7
 966 00ec 2346     		mov	r3, r4
 967 00ee 0221     		movs	r1, #2
 968 00f0 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader7putDataEmjPhi.part.3
 969 00f4 9DF82020 		ldrb	r2, [sp, #32]	@ zero_extendqisi2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccaOMp2W.s 			page 18


 970 00f8 C5E7     		b	.L142
 971              		.size	_ZN20WifiFirmwareUploader15flashWriteBlockEtt, .-_ZN20WifiFirmwareUploader15flashWriteBlockE
 972 00fa 00BF     		.section	.text._ZN20WifiFirmwareUploader4SpinEv,"ax",%progbits
 973              		.align	2
 974              		.global	_ZN20WifiFirmwareUploader4SpinEv
 975              		.thumb
 976              		.thumb_func
 977              		.type	_ZN20WifiFirmwareUploader4SpinEv, %function
 978              	_ZN20WifiFirmwareUploader4SpinEv:
 979              		@ args = 0, pretend = 0, frame = 0
 980              		@ frame_needed = 0, uses_anonymous_args = 0
 981 0000 38B5     		push	{r3, r4, r5, lr}
 982 0002 436A     		ldr	r3, [r0, #36]
 983 0004 013B     		subs	r3, r3, #1
 984 0006 0446     		mov	r4, r0
 985 0008 042B     		cmp	r3, #4
 986 000a 0BD8     		bhi	.L158
 987 000c DFE803F0 		tbb	[pc, r3]
 988              	.L161:
 989 0010 25       		.byte	(.L160-.L161)/2
 990 0011 03       		.byte	(.L162-.L161)/2
 991 0012 4C       		.byte	(.L163-.L161)/2
 992 0013 7E       		.byte	(.L164-.L161)/2
 993 0014 0B       		.byte	(.L165-.L161)/2
 994 0015 00       		.align	1
 995              	.L162:
 996 0016 FFF7FEFF 		bl	millis
 997 001a E369     		ldr	r3, [r4, #28]
 998 001c C01A     		subs	r0, r0, r3
 999 001e 3128     		cmp	r0, #49
 1000 0020 00F29780 		bhi	.L188
 1001              	.L158:
 1002 0024 38BD     		pop	{r3, r4, r5, pc}
 1003              	.L165:
 1004 0026 4068     		ldr	r0, [r0, #4]
 1005 0028 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1006 002c 2068     		ldr	r0, [r4]
 1007 002e 0368     		ldr	r3, [r0]
 1008 0030 9B6A     		ldr	r3, [r3, #40]
 1009 0032 9847     		blx	r3
 1010 0034 A36A     		ldr	r3, [r4, #40]
 1011 0036 002B     		cmp	r3, #0
 1012 0038 78D1     		bne	.L178
 1013 003a 794D     		ldr	r5, .L194
 1014 003c 794A     		ldr	r2, .L194+4
 1015 003e 2868     		ldr	r0, [r5]
 1016 0040 0721     		movs	r1, #7
 1017 0042 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1018 0046 94F82C30 		ldrb	r3, [r4, #44]	@ zero_extendqisi2
 1019 004a 002B     		cmp	r3, #0
 1020 004c 40F08980 		bne	.L189
 1021              	.L187:
 1022 0050 FFF7FEFF 		bl	_ZN7Network9ResetWiFiEv
 1023              	.L180:
 1024 0054 0023     		movs	r3, #0
 1025 0056 6362     		str	r3, [r4, #36]
 1026 0058 38BD     		pop	{r3, r4, r5, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccaOMp2W.s 			page 19


 1027              	.L160:
 1028 005a 8369     		ldr	r3, [r0, #24]
 1029 005c 242B     		cmp	r3, #36
 1030 005e 00F0C980 		beq	.L190
 1031 0062 714A     		ldr	r2, .L194+8
 1032 0064 7148     		ldr	r0, .L194+12
 1033 0066 A2FB0312 		umull	r1, r2, r2, r3
 1034 006a 5208     		lsrs	r2, r2, #1
 1035 006c 02EBC201 		add	r1, r2, r2, lsl #3
 1036 0070 8B42     		cmp	r3, r1
 1037 0072 50F82250 		ldr	r5, [r0, r2, lsl #2]
 1038 0076 04D1     		bne	.L167
 1039 0078 2046     		mov	r0, r4
 1040 007a 6D49     		ldr	r1, .L194+16
 1041 007c 2A46     		mov	r2, r5
 1042 007e FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1043              	.L167:
 1044 0082 2068     		ldr	r0, [r4]
 1045 0084 0368     		ldr	r3, [r0]
 1046 0086 2946     		mov	r1, r5
 1047 0088 5B6A     		ldr	r3, [r3, #36]
 1048 008a 9847     		blx	r3
 1049 008c 0121     		movs	r1, #1
 1050 008e 2068     		ldr	r0, [r4]
 1051 0090 FFF7FEFF 		bl	_ZN9UARTClass20setInterruptPriorityEm
 1052 0094 0020     		movs	r0, #0
 1053 0096 FFF7FEFF 		bl	_ZN7Network18ResetWiFiForUploadEb
 1054 009a FFF7FEFF 		bl	millis
 1055 009e 0223     		movs	r3, #2
 1056 00a0 2062     		str	r0, [r4, #32]
 1057 00a2 E061     		str	r0, [r4, #28]
 1058 00a4 6362     		str	r3, [r4, #36]
 1059 00a6 38BD     		pop	{r3, r4, r5, pc}
 1060              	.L163:
 1061 00a8 FFF7FEFF 		bl	millis
 1062 00ac E369     		ldr	r3, [r4, #28]
 1063 00ae C01A     		subs	r0, r0, r3
 1064 00b0 0E28     		cmp	r0, #14
 1065 00b2 B7D9     		bls	.L158
 1066 00b4 A168     		ldr	r1, [r4, #8]
 1067 00b6 E268     		ldr	r2, [r4, #12]
 1068 00b8 01F6FF73 		addw	r3, r1, #4095
 1069 00bc C2F30332 		ubfx	r2, r2, #12, #4
 1070 00c0 1B0B     		lsrs	r3, r3, #12
 1071 00c2 C2F11002 		rsb	r2, r2, #16
 1072 00c6 9A42     		cmp	r2, r3
 1073 00c8 28BF     		it	cs
 1074 00ca 1A46     		movcs	r2, r3
 1075 00cc B3EB420F 		cmp	r3, r2, lsl #1
 1076 00d0 3CD2     		bcs	.L173
 1077 00d2 5D1C     		adds	r5, r3, #1
 1078 00d4 6D08     		lsrs	r5, r5, #1
 1079 00d6 2D03     		lsls	r5, r5, #12
 1080              	.L174:
 1081 00d8 0A46     		mov	r2, r1
 1082 00da 2046     		mov	r0, r4
 1083 00dc 5549     		ldr	r1, .L194+20
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccaOMp2W.s 			page 20


 1084 00de FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1085 00e2 2A46     		mov	r2, r5
 1086 00e4 2046     		mov	r0, r4
 1087 00e6 E168     		ldr	r1, [r4, #12]
 1088 00e8 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader10flashBeginEmm
 1089 00ec 0546     		mov	r5, r0
 1090 00ee A062     		str	r0, [r4, #40]
 1091 00f0 2046     		mov	r0, r4
 1092 00f2 2DBB     		cbnz	r5, .L175
 1093 00f4 5049     		ldr	r1, .L194+24
 1094 00f6 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1095 00fa 0523     		movs	r3, #5
 1096 00fc 6361     		str	r3, [r4, #20]
 1097 00fe 2561     		str	r5, [r4, #16]
 1098 0100 FFF7FEFF 		bl	millis
 1099 0104 0423     		movs	r3, #4
 1100 0106 E061     		str	r0, [r4, #28]
 1101 0108 6362     		str	r3, [r4, #36]
 1102 010a 38BD     		pop	{r3, r4, r5, pc}
 1103              	.L164:
 1104 010c FFF7FEFF 		bl	millis
 1105 0110 E369     		ldr	r3, [r4, #28]
 1106 0112 C01A     		subs	r0, r0, r3
 1107 0114 0E28     		cmp	r0, #14
 1108 0116 85D9     		bls	.L158
 1109 0118 A568     		ldr	r5, [r4, #8]
 1110 011a 2369     		ldr	r3, [r4, #16]
 1111 011c 05F2FF35 		addw	r5, r5, #1023
 1112 0120 AD0A     		lsrs	r5, r5, #10
 1113 0122 9D42     		cmp	r5, r3
 1114 0124 21D8     		bhi	.L191
 1115 0126 0523     		movs	r3, #5
 1116 0128 6362     		str	r3, [r4, #36]
 1117 012a 38BD     		pop	{r3, r4, r5, pc}
 1118              	.L178:
 1119 012c 3C49     		ldr	r1, .L194
 1120 012e 434A     		ldr	r2, .L194+28
 1121 0130 0868     		ldr	r0, [r1]
 1122 0132 52F82330 		ldr	r3, [r2, r3, lsl #2]
 1123 0136 424A     		ldr	r2, .L194+32
 1124 0138 0721     		movs	r1, #7
 1125 013a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1126 013e 87E7     		b	.L187
 1127              	.L175:
 1128 0140 4049     		ldr	r1, .L194+36
 1129 0142 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1130 0146 0523     		movs	r3, #5
 1131 0148 6362     		str	r3, [r4, #36]
 1132 014a 38BD     		pop	{r3, r4, r5, pc}
 1133              	.L173:
 1134 014c 9B1A     		subs	r3, r3, r2
 1135 014e 1D03     		lsls	r5, r3, #12
 1136 0150 C2E7     		b	.L174
 1137              	.L188:
 1138 0152 FFF7FEFF 		bl	millis
 1139 0156 236A     		ldr	r3, [r4, #32]
 1140 0158 C01A     		subs	r0, r0, r3
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccaOMp2W.s 			page 21


 1141 015a B0F5FA7F 		cmp	r0, #500
 1142 015e 24D2     		bcs	.L169
 1143 0160 38BD     		pop	{r3, r4, r5, pc}
 1144              	.L189:
 1145 0162 6868     		ldr	r0, [r5, #4]
 1146 0164 FFF7FEFF 		bl	_ZN7Network5StartEv
 1147 0168 74E7     		b	.L180
 1148              	.L191:
 1149 016a 0021     		movs	r1, #0
 1150 016c 0A46     		mov	r2, r1
 1151 016e 2046     		mov	r0, r4
 1152 0170 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader15flashWriteBlockEtt
 1153 0174 A062     		str	r0, [r4, #40]
 1154 0176 FFF7FEFF 		bl	millis
 1155 017a A36A     		ldr	r3, [r4, #40]
 1156 017c E061     		str	r0, [r4, #28]
 1157 017e 002B     		cmp	r3, #0
 1158 0180 46D1     		bne	.L192
 1159              	.L177:
 1160 0182 2369     		ldr	r3, [r4, #16]
 1161 0184 6169     		ldr	r1, [r4, #20]
 1162 0186 6422     		movs	r2, #100
 1163 0188 02FB03F2 		mul	r2, r2, r3
 1164 018c B2FBF5F2 		udiv	r2, r2, r5
 1165 0190 0133     		adds	r3, r3, #1
 1166 0192 8A42     		cmp	r2, r1
 1167 0194 2361     		str	r3, [r4, #16]
 1168 0196 FFF445AF 		bcc	.L158
 1169 019a 2046     		mov	r0, r4
 1170 019c 2A49     		ldr	r1, .L194+40
 1171 019e FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1172 01a2 6369     		ldr	r3, [r4, #20]
 1173 01a4 0533     		adds	r3, r3, #5
 1174 01a6 6361     		str	r3, [r4, #20]
 1175 01a8 38BD     		pop	{r3, r4, r5, pc}
 1176              	.L169:
 1177 01aa 4FF47A71 		mov	r1, #1000
 1178 01ae 2046     		mov	r0, r4
 1179 01b0 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader4SyncEt
 1180 01b4 0546     		mov	r5, r0
 1181 01b6 FFF7FEFF 		bl	millis
 1182 01ba E061     		str	r0, [r4, #28]
 1183 01bc 0DB3     		cbz	r5, .L193
 1184 01be A369     		ldr	r3, [r4, #24]
 1185 01c0 224A     		ldr	r2, .L194+44
 1186 01c2 0133     		adds	r3, r3, #1
 1187 01c4 A2FB0312 		umull	r1, r2, r2, r3
 1188 01c8 5208     		lsrs	r2, r2, #1
 1189 01ca 02EB4202 		add	r2, r2, r2, lsl #1
 1190 01ce 9342     		cmp	r3, r2
 1191 01d0 A361     		str	r3, [r4, #24]
 1192 01d2 7FF427AF 		bne	.L158
 1193 01d6 144A     		ldr	r2, .L194+8
 1194 01d8 A2FB0312 		umull	r1, r2, r2, r3
 1195 01dc 5208     		lsrs	r2, r2, #1
 1196 01de 02EBC202 		add	r2, r2, r2, lsl #3
 1197 01e2 9342     		cmp	r3, r2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccaOMp2W.s 			page 22


 1198 01e4 03D1     		bne	.L171
 1199 01e6 2046     		mov	r0, r4
 1200 01e8 1949     		ldr	r1, .L194+48
 1201 01ea FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1202              	.L171:
 1203 01ee 0123     		movs	r3, #1
 1204 01f0 6362     		str	r3, [r4, #36]
 1205 01f2 38BD     		pop	{r3, r4, r5, pc}
 1206              	.L190:
 1207 01f4 FFF7FEFF 		bl	_ZN7Network9ResetWiFiEv
 1208 01f8 0222     		movs	r2, #2
 1209 01fa 0523     		movs	r3, #5
 1210 01fc A262     		str	r2, [r4, #40]
 1211 01fe 6362     		str	r3, [r4, #36]
 1212 0200 38BD     		pop	{r3, r4, r5, pc}
 1213              	.L193:
 1214 0202 2046     		mov	r0, r4
 1215 0204 1349     		ldr	r1, .L194+52
 1216 0206 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1217 020a 0323     		movs	r3, #3
 1218 020c 6362     		str	r3, [r4, #36]
 1219 020e 38BD     		pop	{r3, r4, r5, pc}
 1220              	.L192:
 1221 0210 2046     		mov	r0, r4
 1222 0212 1149     		ldr	r1, .L194+56
 1223 0214 FFF7FEFF 		bl	_ZN20WifiFirmwareUploader8MessageFEPKcz
 1224 0218 0523     		movs	r3, #5
 1225 021a 6362     		str	r3, [r4, #36]
 1226 021c B1E7     		b	.L177
 1227              	.L195:
 1228 021e 00BF     		.align	2
 1229              	.L194:
 1230 0220 00000000 		.word	reprap
 1231 0224 A0000000 		.word	.LC8
 1232 0228 398EE338 		.word	954437177
 1233 022c 00000000 		.word	.LANCHOR0
 1234 0230 00000000 		.word	.LC0
 1235 0234 38000000 		.word	.LC3
 1236 0238 50000000 		.word	.LC4
 1237 023c 00000000 		.word	.LANCHOR1
 1238 0240 B4000000 		.word	.LC9
 1239 0244 64000000 		.word	.LC5
 1240 0248 90000000 		.word	.LC7
 1241 024c ABAAAAAA 		.word	-1431655765
 1242 0250 2C000000 		.word	.LC2
 1243 0254 20000000 		.word	.LC1
 1244 0258 74000000 		.word	.LC6
 1245              		.size	_ZN20WifiFirmwareUploader4SpinEv, .-_ZN20WifiFirmwareUploader4SpinEv
 1246              		.section	.text._ZN20WifiFirmwareUploader14SendUpdateFileEPKcS1_m,"ax",%progbits
 1247              		.align	2
 1248              		.global	_ZN20WifiFirmwareUploader14SendUpdateFileEPKcS1_m
 1249              		.thumb
 1250              		.thumb_func
 1251              		.type	_ZN20WifiFirmwareUploader14SendUpdateFileEPKcS1_m, %function
 1252              	_ZN20WifiFirmwareUploader14SendUpdateFileEPKcS1_m:
 1253              		@ args = 0, pretend = 0, frame = 0
 1254              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccaOMp2W.s 			page 23


 1255 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1256 0004 1A4E     		ldr	r6, .L201
 1257 0006 D6F80080 		ldr	r8, [r6]
 1258 000a 0F46     		mov	r7, r1
 1259 000c 0446     		mov	r4, r0
 1260 000e 1146     		mov	r1, r2
 1261 0010 9946     		mov	r9, r3
 1262 0012 4046     		mov	r0, r8
 1263 0014 3A46     		mov	r2, r7
 1264 0016 0023     		movs	r3, #0
 1265 0018 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 1266 001c 6060     		str	r0, [r4, #4]
 1267 001e F8B1     		cbz	r0, .L199
 1268 0020 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1269 0024 A060     		str	r0, [r4, #8]
 1270 0026 80B1     		cbz	r0, .L200
 1271 0028 7568     		ldr	r5, [r6, #4]
 1272 002a 2846     		mov	r0, r5
 1273 002c FFF7FEFF 		bl	_ZNK7Network9IsEnabledEv
 1274 0030 84F82C00 		strb	r0, [r4, #44]
 1275 0034 2846     		mov	r0, r5
 1276 0036 FFF7FEFF 		bl	_ZN7Network4StopEv
 1277 003a 0022     		movs	r2, #0
 1278 003c 0123     		movs	r3, #1
 1279 003e C4F80C90 		str	r9, [r4, #12]
 1280 0042 A261     		str	r2, [r4, #24]
 1281 0044 6362     		str	r3, [r4, #36]
 1282 0046 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1283              	.L200:
 1284 004a 6068     		ldr	r0, [r4, #4]
 1285 004c FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1286 0050 4046     		mov	r0, r8
 1287 0052 3B46     		mov	r3, r7
 1288 0054 0721     		movs	r1, #7
 1289 0056 074A     		ldr	r2, .L201+4
 1290 0058 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 1291 005c FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 1292              	.L199:
 1293 0060 4046     		mov	r0, r8
 1294 0062 3B46     		mov	r3, r7
 1295 0064 0721     		movs	r1, #7
 1296 0066 044A     		ldr	r2, .L201+8
 1297 0068 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 1298 006c FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 1299              	.L202:
 1300              		.align	2
 1301              	.L201:
 1302 0070 00000000 		.word	reprap
 1303 0074 F8000000 		.word	.LC11
 1304 0078 E0000000 		.word	.LC10
 1305              		.size	_ZN20WifiFirmwareUploader14SendUpdateFileEPKcS1_m, .-_ZN20WifiFirmwareUploader14SendUpdateFi
 1306              		.global	resultMessages
 1307              		.section	.data.resultMessages,"aw",%progbits
 1308              		.align	2
 1309              		.set	.LANCHOR1,. + 0
 1310              		.type	resultMessages, %object
 1311              		.size	resultMessages, 44
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccaOMp2W.s 			page 24


 1312              	resultMessages:
 1313 0000 14010000 		.word	.LC12
 1314 0004 18010000 		.word	.LC13
 1315 0008 20010000 		.word	.LC14
 1316 000c 2C010000 		.word	.LC15
 1317 0010 34010000 		.word	.LC16
 1318 0014 40010000 		.word	.LC17
 1319 0018 4C010000 		.word	.LC18
 1320 001c 58010000 		.word	.LC19
 1321 0020 68010000 		.word	.LC20
 1322 0024 74010000 		.word	.LC21
 1323 0028 80010000 		.word	.LC22
 1324              		.section	.rodata._ZL15uploadBaudRates,"a",%progbits
 1325              		.align	2
 1326              		.set	.LANCHOR0,. + 0
 1327              		.type	_ZL15uploadBaudRates, %object
 1328              		.size	_ZL15uploadBaudRates, 16
 1329              	_ZL15uploadBaudRates:
 1330 0000 00080700 		.word	460800
 1331 0004 00840300 		.word	230400
 1332 0008 00C20100 		.word	115200
 1333 000c 80240100 		.word	74880
 1334              		.section	.rodata.str1.4,"aMS",%progbits,1
 1335              		.align	2
 1336              	.LC0:
 1337 0000 54727969 		.ascii	"Trying to connect at %u baud: \000"
 1337      6E672074 
 1337      6F20636F 
 1337      6E6E6563 
 1337      74206174 
 1338 001f 00       		.space	1
 1339              	.LC1:
 1340 0020 20737563 		.ascii	" success\012\000"
 1340      63657373 
 1340      0A00
 1341 002a 0000     		.space	2
 1342              	.LC2:
 1343 002c 20666169 		.ascii	" failed\012\000"
 1343      6C65640A 
 1343      00
 1344 0035 000000   		.space	3
 1345              	.LC3:
 1346 0038 45726173 		.ascii	"Erasing %u bytes...\012\000"
 1346      696E6720 
 1346      25752062 
 1346      79746573 
 1346      2E2E2E0A 
 1347 004d 000000   		.space	3
 1348              	.LC4:
 1349 0050 55706C6F 		.ascii	"Uploading file...\012\000"
 1349      6164696E 
 1349      67206669 
 1349      6C652E2E 
 1349      2E0A00
 1350 0063 00       		.space	1
 1351              	.LC5:
 1352 0064 45726173 		.ascii	"Erase failed\012\000"
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccaOMp2W.s 			page 25


 1352      65206661 
 1352      696C6564 
 1352      0A00
 1353 0072 0000     		.space	2
 1354              	.LC6:
 1355 0074 466C6173 		.ascii	"Flash block upload failed\012\000"
 1355      6820626C 
 1355      6F636B20 
 1355      75706C6F 
 1355      61642066 
 1356 008f 00       		.space	1
 1357              	.LC7:
 1358 0090 25752525 		.ascii	"%u%% complete\012\000"
 1358      20636F6D 
 1358      706C6574 
 1358      650A00
 1359 009f 00       		.space	1
 1360              	.LC8:
 1361 00a0 55706C6F 		.ascii	"Upload successful\012\000"
 1361      61642073 
 1361      75636365 
 1361      73736675 
 1361      6C0A00
 1362 00b3 00       		.space	1
 1363              	.LC9:
 1364 00b4 4572726F 		.ascii	"Error: Installation failed due to %s error\012\000"
 1364      723A2049 
 1364      6E737461 
 1364      6C6C6174 
 1364      696F6E20 
 1365              	.LC10:
 1366 00e0 4661696C 		.ascii	"Failed to open file %s\012\000"
 1366      65642074 
 1366      6F206F70 
 1366      656E2066 
 1366      696C6520 
 1367              	.LC11:
 1368 00f8 55706C6F 		.ascii	"Upload file is empty %s\012\000"
 1368      61642066 
 1368      696C6520 
 1368      69732065 
 1368      6D707479 
 1369 0111 000000   		.space	3
 1370              	.LC12:
 1371 0114 6E6F00   		.ascii	"no\000"
 1372 0117 00       		.space	1
 1373              	.LC13:
 1374 0118 74696D65 		.ascii	"timeout\000"
 1374      6F757400 
 1375              	.LC14:
 1376 0120 636F6D6D 		.ascii	"comm write\000"
 1376      20777269 
 1376      746500
 1377 012b 00       		.space	1
 1378              	.LC15:
 1379 012c 636F6E6E 		.ascii	"connect\000"
 1379      65637400 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccaOMp2W.s 			page 26


 1380              	.LC16:
 1381 0134 62616420 		.ascii	"bad reply\000"
 1381      7265706C 
 1381      7900
 1382 013e 0000     		.space	2
 1383              	.LC17:
 1384 0140 66696C65 		.ascii	"file read\000"
 1384      20726561 
 1384      6400
 1385 014a 0000     		.space	2
 1386              	.LC18:
 1387 014c 656D7074 		.ascii	"empty file\000"
 1387      79206669 
 1387      6C6500
 1388 0157 00       		.space	1
 1389              	.LC19:
 1390 0158 72657370 		.ascii	"response header\000"
 1390      6F6E7365 
 1390      20686561 
 1390      64657200 
 1391              	.LC20:
 1392 0168 736C6970 		.ascii	"slip frame\000"
 1392      20667261 
 1392      6D6500
 1393 0173 00       		.space	1
 1394              	.LC21:
 1395 0174 736C6970 		.ascii	"slip state\000"
 1395      20737461 
 1395      746500
 1396 017f 00       		.space	1
 1397              	.LC22:
 1398 0180 736C6970 		.ascii	"slip data\000"
 1398      20646174 
 1398      6100
 1399 018a 0000     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1400              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1401              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1402              	_ZL28cpu_irq_prev_interrupt_state:
 1403 0000 00       		.space	1
 1404              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1405              		.align	2
 1406              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1407              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1408              	_ZL32cpu_irq_critical_section_counter:
 1409 0000 00000000 		.space	4
 1410              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
