ARM GAS  C:\Users\George\AppData\Local\Temp\ccA3PZ0m.s 			page 1


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
  14              		.file	"GCodeInput.cpp"
  15              		.section	.text._ZN16StreamGCodeInput5ResetEv,"ax",%progbits
  16              		.align	2
  17              		.global	_ZN16StreamGCodeInput5ResetEv
  18              		.thumb
  19              		.thumb_func
  20              		.type	_ZN16StreamGCodeInput5ResetEv, %function
  21              	_ZN16StreamGCodeInput5ResetEv:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 10B5     		push	{r4, lr}
  25 0002 0446     		mov	r4, r0
  26 0004 03E0     		b	.L2
  27              	.L3:
  28 0006 6068     		ldr	r0, [r4, #4]
  29 0008 0368     		ldr	r3, [r0]
  30 000a 5B69     		ldr	r3, [r3, #20]
  31 000c 9847     		blx	r3
  32              	.L2:
  33 000e 6068     		ldr	r0, [r4, #4]
  34 0010 0368     		ldr	r3, [r0]
  35 0012 1B69     		ldr	r3, [r3, #16]
  36 0014 9847     		blx	r3
  37 0016 0028     		cmp	r0, #0
  38 0018 F5DC     		bgt	.L3
  39 001a 10BD     		pop	{r4, pc}
  40              		.size	_ZN16StreamGCodeInput5ResetEv, .-_ZN16StreamGCodeInput5ResetEv
  41              		.section	.text._ZNK16StreamGCodeInput11BytesCachedEv,"ax",%progbits
  42              		.align	2
  43              		.global	_ZNK16StreamGCodeInput11BytesCachedEv
  44              		.thumb
  45              		.thumb_func
  46              		.type	_ZNK16StreamGCodeInput11BytesCachedEv, %function
  47              	_ZNK16StreamGCodeInput11BytesCachedEv:
  48              		@ args = 0, pretend = 0, frame = 0
  49              		@ frame_needed = 0, uses_anonymous_args = 0
  50 0000 08B5     		push	{r3, lr}
  51 0002 4068     		ldr	r0, [r0, #4]
  52 0004 0368     		ldr	r3, [r0]
  53 0006 1B69     		ldr	r3, [r3, #16]
  54 0008 9847     		blx	r3
  55 000a 08BD     		pop	{r3, pc}
  56              		.size	_ZNK16StreamGCodeInput11BytesCachedEv, .-_ZNK16StreamGCodeInput11BytesCachedEv
  57              		.section	.text._ZN17RegularGCodeInput5ResetEv,"ax",%progbits
ARM GAS  C:\Users\George\AppData\Local\Temp\ccA3PZ0m.s 			page 2


  58              		.align	2
  59              		.global	_ZN17RegularGCodeInput5ResetEv
  60              		.thumb
  61              		.thumb_func
  62              		.type	_ZN17RegularGCodeInput5ResetEv, %function
  63              	_ZN17RegularGCodeInput5ResetEv:
  64              		@ args = 0, pretend = 0, frame = 0
  65              		@ frame_needed = 0, uses_anonymous_args = 0
  66              		@ link register save eliminated.
  67 0000 0023     		movs	r3, #0
  68 0002 8360     		str	r3, [r0, #8]
  69 0004 C0F81431 		str	r3, [r0, #276]
  70 0008 C0F81031 		str	r3, [r0, #272]
  71 000c 7047     		bx	lr
  72              		.size	_ZN17RegularGCodeInput5ResetEv, .-_ZN17RegularGCodeInput5ResetEv
  73 000e 00BF     		.section	.text._ZNK17RegularGCodeInput11BytesCachedEv,"ax",%progbits
  74              		.align	2
  75              		.global	_ZNK17RegularGCodeInput11BytesCachedEv
  76              		.thumb
  77              		.thumb_func
  78              		.type	_ZNK17RegularGCodeInput11BytesCachedEv, %function
  79              	_ZNK17RegularGCodeInput11BytesCachedEv:
  80              		@ args = 0, pretend = 0, frame = 0
  81              		@ frame_needed = 0, uses_anonymous_args = 0
  82              		@ link register save eliminated.
  83 0000 D0F81021 		ldr	r2, [r0, #272]
  84 0004 D0F81431 		ldr	r3, [r0, #276]
  85 0008 9A42     		cmp	r2, r3
  86 000a 38BF     		it	cc
  87 000c 02F58072 		addcc	r2, r2, #256
  88 0010 D01A     		subs	r0, r2, r3
  89 0012 7047     		bx	lr
  90              		.size	_ZNK17RegularGCodeInput11BytesCachedEv, .-_ZNK17RegularGCodeInput11BytesCachedEv
  91              		.section	.text._ZN14FileGCodeInput5ResetEv,"ax",%progbits
  92              		.align	2
  93              		.global	_ZN14FileGCodeInput5ResetEv
  94              		.thumb
  95              		.thumb_func
  96              		.type	_ZN14FileGCodeInput5ResetEv, %function
  97              	_ZN14FileGCodeInput5ResetEv:
  98              		@ args = 0, pretend = 0, frame = 0
  99              		@ frame_needed = 0, uses_anonymous_args = 0
 100              		@ link register save eliminated.
 101 0000 0023     		movs	r3, #0
 102 0002 C0F81831 		str	r3, [r0, #280]
 103 0006 8360     		str	r3, [r0, #8]
 104 0008 C0F81431 		str	r3, [r0, #276]
 105 000c C0F81031 		str	r3, [r0, #272]
 106 0010 7047     		bx	lr
 107              		.size	_ZN14FileGCodeInput5ResetEv, .-_ZN14FileGCodeInput5ResetEv
 108 0012 00BF     		.section	.text._ZN16StreamGCodeInput10FillBufferEP11GCodeBuffer,"ax",%progbits
 109              		.align	2
 110              		.global	_ZN16StreamGCodeInput10FillBufferEP11GCodeBuffer
 111              		.thumb
 112              		.thumb_func
 113              		.type	_ZN16StreamGCodeInput10FillBufferEP11GCodeBuffer, %function
 114              	_ZN16StreamGCodeInput10FillBufferEP11GCodeBuffer:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccA3PZ0m.s 			page 3


 115              		@ args = 0, pretend = 0, frame = 0
 116              		@ frame_needed = 0, uses_anonymous_args = 0
 117 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 118 0004 0646     		mov	r6, r0
 119 0006 4068     		ldr	r0, [r0, #4]
 120 0008 0D46     		mov	r5, r1
 121 000a 0368     		ldr	r3, [r0]
 122 000c 1B69     		ldr	r3, [r3, #16]
 123 000e 9847     		blx	r3
 124 0010 6328     		cmp	r0, #99
 125 0012 22D9     		bls	.L13
 126 0014 4FF06408 		mov	r8, #100
 127              	.L15:
 128 0018 0024     		movs	r4, #0
 129 001a 1A4F     		ldr	r7, .L26
 130 001c DFF86890 		ldr	r9, .L26+4
 131 0020 05E0     		b	.L14
 132              	.L17:
 133 0022 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEc
 134 0026 E0B9     		cbnz	r0, .L25
 135 0028 0134     		adds	r4, r4, #1
 136 002a 4445     		cmp	r4, r8
 137 002c 12D2     		bcs	.L19
 138              	.L14:
 139 002e 7068     		ldr	r0, [r6, #4]
 140 0030 0368     		ldr	r3, [r0]
 141 0032 5B69     		ldr	r3, [r3, #20]
 142 0034 9847     		blx	r3
 143 0036 D5F88430 		ldr	r3, [r5, #132]
 144 003a C2B2     		uxtb	r2, r0
 145 003c BB42     		cmp	r3, r7
 146 003e 1146     		mov	r1, r2
 147 0040 2846     		mov	r0, r5
 148 0042 EED1     		bne	.L17
 149 0044 D9F81000 		ldr	r0, [r9, #16]
 150 0048 2946     		mov	r1, r5
 151 004a 0134     		adds	r4, r4, #1
 152 004c FFF7FEFF 		bl	_ZN6GCodes15WriteHTMLToFileER11GCodeBufferc
 153 0050 4445     		cmp	r4, r8
 154 0052 ECD3     		bcc	.L14
 155              	.L19:
 156 0054 0020     		movs	r0, #0
 157 0056 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 158              	.L13:
 159 005a 8046     		mov	r8, r0
 160 005c 0028     		cmp	r0, #0
 161 005e DBD1     		bne	.L15
 162 0060 F8E7     		b	.L19
 163              	.L25:
 164 0062 D5F88430 		ldr	r3, [r5, #132]
 165 0066 53B1     		cbz	r3, .L21
 166 0068 074B     		ldr	r3, .L26+4
 167 006a 2946     		mov	r1, r5
 168 006c 1869     		ldr	r0, [r3, #16]
 169 006e FFF7FEFF 		bl	_ZN6GCodes16WriteGCodeToFileER11GCodeBuffer
 170 0072 0023     		movs	r3, #0
 171 0074 C5F88030 		str	r3, [r5, #128]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccA3PZ0m.s 			page 4


 172 0078 0120     		movs	r0, #1
 173 007a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 174              	.L21:
 175 007e 0120     		movs	r0, #1
 176 0080 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 177              	.L27:
 178              		.align	2
 179              	.L26:
 180 0084 00000000 		.word	.LC0
 181 0088 00000000 		.word	reprap
 182              		.size	_ZN16StreamGCodeInput10FillBufferEP11GCodeBuffer, .-_ZN16StreamGCodeInput10FillBufferEP11GCo
 183              		.section	.text._ZN17RegularGCodeInput10FillBufferEP11GCodeBuffer,"ax",%progbits
 184              		.align	2
 185              		.global	_ZN17RegularGCodeInput10FillBufferEP11GCodeBuffer
 186              		.thumb
 187              		.thumb_func
 188              		.type	_ZN17RegularGCodeInput10FillBufferEP11GCodeBuffer, %function
 189              	_ZN17RegularGCodeInput10FillBufferEP11GCodeBuffer:
 190              		@ args = 0, pretend = 0, frame = 0
 191              		@ frame_needed = 0, uses_anonymous_args = 0
 192 0000 0368     		ldr	r3, [r0]
 193 0002 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 194 0006 9B68     		ldr	r3, [r3, #8]
 195 0008 0446     		mov	r4, r0
 196 000a 8A46     		mov	r10, r1
 197 000c 9847     		blx	r3
 198 000e 6328     		cmp	r0, #99
 199 0010 2AD9     		bls	.L29
 200 0012 6427     		movs	r7, #100
 201              	.L31:
 202 0014 0025     		movs	r5, #0
 203 0016 A846     		mov	r8, r5
 204 0018 1E4E     		ldr	r6, .L43
 205 001a DFF87C90 		ldr	r9, .L43+4
 206 001e 05E0     		b	.L30
 207              	.L34:
 208 0020 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEc
 209 0024 20BB     		cbnz	r0, .L42
 210 0026 0135     		adds	r5, r5, #1
 211 0028 BD42     		cmp	r5, r7
 212 002a 1AD2     		bcs	.L36
 213              	.L30:
 214 002c D4F81411 		ldr	r1, [r4, #276]
 215 0030 D4F80C21 		ldr	r2, [r4, #268]
 216 0034 4B1C     		adds	r3, r1, #1
 217 0036 C4F81431 		str	r3, [r4, #276]
 218 003a B3F5807F 		cmp	r3, #256
 219 003e 525C     		ldrb	r2, [r2, r1]	@ zero_extendqisi2
 220 0040 08BF     		it	eq
 221 0042 C4F81481 		streq	r8, [r4, #276]
 222 0046 DAF88430 		ldr	r3, [r10, #132]
 223 004a 5046     		mov	r0, r10
 224 004c B342     		cmp	r3, r6
 225 004e 1146     		mov	r1, r2
 226 0050 E6D1     		bne	.L34
 227 0052 D9F81000 		ldr	r0, [r9, #16]
 228 0056 5146     		mov	r1, r10
ARM GAS  C:\Users\George\AppData\Local\Temp\ccA3PZ0m.s 			page 5


 229 0058 0135     		adds	r5, r5, #1
 230 005a FFF7FEFF 		bl	_ZN6GCodes15WriteHTMLToFileER11GCodeBufferc
 231 005e BD42     		cmp	r5, r7
 232 0060 E4D3     		bcc	.L30
 233              	.L36:
 234 0062 0020     		movs	r0, #0
 235 0064 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 236              	.L29:
 237 0068 0746     		mov	r7, r0
 238 006a 0028     		cmp	r0, #0
 239 006c D2D1     		bne	.L31
 240 006e F8E7     		b	.L36
 241              	.L42:
 242 0070 DAF88430 		ldr	r3, [r10, #132]
 243 0074 53B1     		cbz	r3, .L38
 244 0076 084B     		ldr	r3, .L43+4
 245 0078 5146     		mov	r1, r10
 246 007a 1869     		ldr	r0, [r3, #16]
 247 007c FFF7FEFF 		bl	_ZN6GCodes16WriteGCodeToFileER11GCodeBuffer
 248 0080 0023     		movs	r3, #0
 249 0082 CAF88030 		str	r3, [r10, #128]
 250 0086 0120     		movs	r0, #1
 251 0088 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 252              	.L38:
 253 008c 0120     		movs	r0, #1
 254 008e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 255              	.L44:
 256 0092 00BF     		.align	2
 257              	.L43:
 258 0094 00000000 		.word	.LC0
 259 0098 00000000 		.word	reprap
 260              		.size	_ZN17RegularGCodeInput10FillBufferEP11GCodeBuffer, .-_ZN17RegularGCodeInput10FillBufferEP11G
 261              		.section	.text._ZN17RegularGCodeInputC2Eb,"ax",%progbits
 262              		.align	2
 263              		.global	_ZN17RegularGCodeInputC2Eb
 264              		.thumb
 265              		.thumb_func
 266              		.type	_ZN17RegularGCodeInputC2Eb, %function
 267              	_ZN17RegularGCodeInputC2Eb:
 268              		@ args = 0, pretend = 0, frame = 0
 269              		@ frame_needed = 0, uses_anonymous_args = 0
 270              		@ link register save eliminated.
 271 0000 30B4     		push	{r4, r5}
 272 0002 074D     		ldr	r5, .L46
 273 0004 0022     		movs	r2, #0
 274 0006 00F10C04 		add	r4, r0, #12
 275 000a 0560     		str	r5, [r0]
 276 000c C0F80C41 		str	r4, [r0, #268]
 277 0010 0171     		strb	r1, [r0, #4]
 278 0012 8260     		str	r2, [r0, #8]
 279 0014 C0F81021 		str	r2, [r0, #272]
 280 0018 C0F81421 		str	r2, [r0, #276]
 281 001c 30BC     		pop	{r4, r5}
 282 001e 7047     		bx	lr
 283              	.L47:
 284              		.align	2
 285              	.L46:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccA3PZ0m.s 			page 6


 286 0020 08000000 		.word	.LANCHOR0+8
 287              		.size	_ZN17RegularGCodeInputC2Eb, .-_ZN17RegularGCodeInputC2Eb
 288              		.global	_ZN17RegularGCodeInputC1Eb
 289              		.thumb_set _ZN17RegularGCodeInputC1Eb,_ZN17RegularGCodeInputC2Eb
 290              		.section	.text._ZN17RegularGCodeInput3PutE11MessageTypec,"ax",%progbits
 291              		.align	2
 292              		.global	_ZN17RegularGCodeInput3PutE11MessageTypec
 293              		.thumb
 294              		.thumb_func
 295              		.type	_ZN17RegularGCodeInput3PutE11MessageTypec, %function
 296              	_ZN17RegularGCodeInput3PutE11MessageTypec:
 297              		@ args = 0, pretend = 0, frame = 0
 298              		@ frame_needed = 0, uses_anonymous_args = 0
 299 0000 38B5     		push	{r3, r4, r5, lr}
 300 0002 0446     		mov	r4, r0
 301 0004 D0F81401 		ldr	r0, [r0, #276]
 302 0008 D4F81031 		ldr	r3, [r4, #272]
 303 000c 0138     		subs	r0, r0, #1
 304 000e C01A     		subs	r0, r0, r3
 305 0010 10F0FF0F 		tst	r0, #255
 306 0014 1DD0     		beq	.L48
 307 0016 A068     		ldr	r0, [r4, #8]
 308 0018 0828     		cmp	r0, #8
 309 001a 24D8     		bhi	.L51
 310 001c DFE800F0 		tbb	[pc, r0]
 311              	.L53:
 312 0020 45       		.byte	(.L52-.L53)/2
 313 0021 1A       		.byte	(.L54-.L53)/2
 314 0022 1D       		.byte	(.L55-.L53)/2
 315 0023 26       		.byte	(.L56-.L53)/2
 316 0024 05       		.byte	(.L57-.L53)/2
 317 0025 3B       		.byte	(.L58-.L53)/2
 318 0026 40       		.byte	(.L59-.L53)/2
 319 0027 2B       		.byte	(.L60-.L53)/2
 320 0028 4D       		.byte	(.L61-.L53)/2
 321 0029 00       		.align	1
 322              	.L57:
 323 002a 312A     		cmp	r2, #49
 324 002c 59D0     		beq	.L84
 325 002e 322A     		cmp	r2, #50
 326 0030 33D1     		bne	.L67
 327 0032 0621     		movs	r1, #6
 328 0034 A160     		str	r1, [r4, #8]
 329              	.L70:
 330 0036 D4F80C11 		ldr	r1, [r4, #268]
 331 003a 581C     		adds	r0, r3, #1
 332 003c C4F81001 		str	r0, [r4, #272]
 333 0040 CA54     		strb	r2, [r1, r3]
 334 0042 D4F81031 		ldr	r3, [r4, #272]
 335 0046 B3F5807F 		cmp	r3, #256
 336 004a 04BF     		itt	eq
 337 004c 0023     		moveq	r3, #0
 338 004e C4F81031 		streq	r3, [r4, #272]
 339              	.L48:
 340 0052 38BD     		pop	{r3, r4, r5, pc}
 341              	.L54:
 342 0054 2179     		ldrb	r1, [r4, #4]	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccA3PZ0m.s 			page 7


 343 0056 0029     		cmp	r1, #0
 344 0058 3ED1     		bne	.L85
 345              	.L55:
 346 005a 002A     		cmp	r2, #0
 347 005c 39D0     		beq	.L64
 348 005e 0D2A     		cmp	r2, #13
 349 0060 37D0     		beq	.L64
 350 0062 0A2A     		cmp	r2, #10
 351 0064 35D0     		beq	.L64
 352              	.L51:
 353 0066 0228     		cmp	r0, #2
 354 0068 F3D0     		beq	.L48
 355 006a E4E7     		b	.L70
 356              	.L56:
 357 006c 312A     		cmp	r2, #49
 358 006e E2D1     		bne	.L70
 359 0070 0421     		movs	r1, #4
 360 0072 A160     		str	r1, [r4, #8]
 361 0074 DFE7     		b	.L70
 362              	.L60:
 363 0076 202A     		cmp	r2, #32
 364 0078 01D9     		bls	.L68
 365 007a 3B2A     		cmp	r2, #59
 366 007c 0DD1     		bne	.L67
 367              	.L68:
 368 007e 1C4D     		ldr	r5, .L87
 369 0080 2846     		mov	r0, r5
 370 0082 FFF7FEFF 		bl	_ZN6RepRap13EmergencyStopEv
 371 0086 2869     		ldr	r0, [r5, #16]
 372 0088 FFF7FEFF 		bl	_ZN6GCodes5ResetEv
 373 008c 2368     		ldr	r3, [r4]
 374 008e 2046     		mov	r0, r4
 375 0090 1B68     		ldr	r3, [r3]
 376 0092 9847     		blx	r3
 377 0094 38BD     		pop	{r3, r4, r5, pc}
 378              	.L58:
 379 0096 322A     		cmp	r2, #50
 380 0098 26D0     		beq	.L86
 381              	.L67:
 382 009a 0121     		movs	r1, #1
 383 009c A160     		str	r1, [r4, #8]
 384 009e CAE7     		b	.L70
 385              	.L59:
 386 00a0 322A     		cmp	r2, #50
 387 00a2 FAD1     		bne	.L67
 388 00a4 0821     		movs	r1, #8
 389 00a6 A160     		str	r1, [r4, #8]
 390 00a8 C5E7     		b	.L70
 391              	.L52:
 392 00aa 202A     		cmp	r2, #32
 393 00ac D1D9     		bls	.L48
 394 00ae 4D2A     		cmp	r2, #77
 395 00b0 14BF     		ite	ne
 396 00b2 0120     		movne	r0, #1
 397 00b4 0320     		moveq	r0, #3
 398 00b6 A060     		str	r0, [r4, #8]
 399 00b8 D5E7     		b	.L51
ARM GAS  C:\Users\George\AppData\Local\Temp\ccA3PZ0m.s 			page 8


 400              	.L61:
 401 00ba 202A     		cmp	r2, #32
 402 00bc 01D9     		bls	.L69
 403 00be 3B2A     		cmp	r2, #59
 404 00c0 B9D1     		bne	.L70
 405              	.L69:
 406 00c2 0B48     		ldr	r0, .L87
 407 00c4 FFF7FEFF 		bl	_ZN6RepRap11DiagnosticsE11MessageType
 408 00c8 2368     		ldr	r3, [r4]
 409 00ca 2046     		mov	r0, r4
 410 00cc 1B68     		ldr	r3, [r3]
 411 00ce 9847     		blx	r3
 412 00d0 38BD     		pop	{r3, r4, r5, pc}
 413              	.L64:
 414 00d2 0021     		movs	r1, #0
 415 00d4 A160     		str	r1, [r4, #8]
 416 00d6 AEE7     		b	.L70
 417              	.L85:
 418 00d8 3B2A     		cmp	r2, #59
 419 00da BED1     		bne	.L55
 420 00dc 0223     		movs	r3, #2
 421 00de A360     		str	r3, [r4, #8]
 422 00e0 38BD     		pop	{r3, r4, r5, pc}
 423              	.L84:
 424 00e2 0521     		movs	r1, #5
 425 00e4 A160     		str	r1, [r4, #8]
 426 00e6 A6E7     		b	.L70
 427              	.L86:
 428 00e8 0721     		movs	r1, #7
 429 00ea A160     		str	r1, [r4, #8]
 430 00ec A3E7     		b	.L70
 431              	.L88:
 432 00ee 00BF     		.align	2
 433              	.L87:
 434 00f0 00000000 		.word	reprap
 435              		.size	_ZN17RegularGCodeInput3PutE11MessageTypec, .-_ZN17RegularGCodeInput3PutE11MessageTypec
 436              		.section	.text._ZN17RegularGCodeInput3PutE11MessageTypePKcj,"ax",%progbits
 437              		.align	2
 438              		.global	_ZN17RegularGCodeInput3PutE11MessageTypePKcj
 439              		.thumb
 440              		.thumb_func
 441              		.type	_ZN17RegularGCodeInput3PutE11MessageTypePKcj, %function
 442              	_ZN17RegularGCodeInput3PutE11MessageTypePKcj:
 443              		@ args = 0, pretend = 0, frame = 0
 444              		@ frame_needed = 0, uses_anonymous_args = 0
 445 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 446 0002 D0F81441 		ldr	r4, [r0, #276]
 447 0006 0546     		mov	r5, r0
 448 0008 D0F81001 		ldr	r0, [r0, #272]
 449 000c 013C     		subs	r4, r4, #1
 450 000e 201A     		subs	r0, r4, r0
 451 0010 C0B2     		uxtb	r0, r0
 452 0012 8342     		cmp	r3, r0
 453 0014 0E46     		mov	r6, r1
 454 0016 0AD8     		bhi	.L89
 455 0018 4BB1     		cbz	r3, .L89
 456 001a 1446     		mov	r4, r2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccA3PZ0m.s 			page 9


 457 001c D718     		adds	r7, r2, r3
 458              	.L92:
 459 001e 14F8012B 		ldrb	r2, [r4], #1	@ zero_extendqisi2
 460 0022 2846     		mov	r0, r5
 461 0024 3146     		mov	r1, r6
 462 0026 FFF7FEFF 		bl	_ZN17RegularGCodeInput3PutE11MessageTypec
 463 002a BC42     		cmp	r4, r7
 464 002c F7D1     		bne	.L92
 465              	.L89:
 466 002e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 467              		.size	_ZN17RegularGCodeInput3PutE11MessageTypePKcj, .-_ZN17RegularGCodeInput3PutE11MessageTypePKcj
 468              		.section	.text._ZN17RegularGCodeInput3PutE11MessageTypePKc,"ax",%progbits
 469              		.align	2
 470              		.global	_ZN17RegularGCodeInput3PutE11MessageTypePKc
 471              		.thumb
 472              		.thumb_func
 473              		.type	_ZN17RegularGCodeInput3PutE11MessageTypePKc, %function
 474              	_ZN17RegularGCodeInput3PutE11MessageTypePKc:
 475              		@ args = 0, pretend = 0, frame = 0
 476              		@ frame_needed = 0, uses_anonymous_args = 0
 477 0000 70B5     		push	{r4, r5, r6, lr}
 478 0002 0546     		mov	r5, r0
 479 0004 1046     		mov	r0, r2
 480 0006 1446     		mov	r4, r2
 481 0008 0E46     		mov	r6, r1
 482 000a FFF7FEFF 		bl	strlen
 483 000e 3146     		mov	r1, r6
 484 0010 431C     		adds	r3, r0, #1
 485 0012 2246     		mov	r2, r4
 486 0014 2846     		mov	r0, r5
 487 0016 BDE87040 		pop	{r4, r5, r6, lr}
 488 001a FFF7FEBF 		b	_ZN17RegularGCodeInput3PutE11MessageTypePKcj
 489              		.size	_ZN17RegularGCodeInput3PutE11MessageTypePKc, .-_ZN17RegularGCodeInput3PutE11MessageTypePKc
 490 001e 00BF     		.section	.text._ZNK17RegularGCodeInput15BufferSpaceLeftEv,"ax",%progbits
 491              		.align	2
 492              		.global	_ZNK17RegularGCodeInput15BufferSpaceLeftEv
 493              		.thumb
 494              		.thumb_func
 495              		.type	_ZNK17RegularGCodeInput15BufferSpaceLeftEv, %function
 496              	_ZNK17RegularGCodeInput15BufferSpaceLeftEv:
 497              		@ args = 0, pretend = 0, frame = 0
 498              		@ frame_needed = 0, uses_anonymous_args = 0
 499              		@ link register save eliminated.
 500 0000 D0F81421 		ldr	r2, [r0, #276]
 501 0004 D0F81031 		ldr	r3, [r0, #272]
 502 0008 501E     		subs	r0, r2, #1
 503 000a C01A     		subs	r0, r0, r3
 504 000c C0B2     		uxtb	r0, r0
 505 000e 7047     		bx	lr
 506              		.size	_ZNK17RegularGCodeInput15BufferSpaceLeftEv, .-_ZNK17RegularGCodeInput15BufferSpaceLeftEv
 507              		.section	.text._ZN14FileGCodeInput12ReadFromFileER8FileData,"ax",%progbits
 508              		.align	2
 509              		.global	_ZN14FileGCodeInput12ReadFromFileER8FileData
 510              		.thumb
 511              		.thumb_func
 512              		.type	_ZN14FileGCodeInput12ReadFromFileER8FileData, %function
 513              	_ZN14FileGCodeInput12ReadFromFileER8FileData:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccA3PZ0m.s 			page 10


 514              		@ args = 0, pretend = 0, frame = 256
 515              		@ frame_needed = 0, uses_anonymous_args = 0
 516 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 517 0002 0368     		ldr	r3, [r0]
 518 0004 C1B0     		sub	sp, sp, #260
 519 0006 9B68     		ldr	r3, [r3, #8]
 520 0008 0446     		mov	r4, r0
 521 000a 0F46     		mov	r7, r1
 522 000c 9847     		blx	r3
 523 000e D4F81861 		ldr	r6, [r4, #280]
 524 0012 0546     		mov	r5, r0
 525 0014 3868     		ldr	r0, [r7]
 526 0016 4EB1     		cbz	r6, .L100
 527 0018 8642     		cmp	r6, r0
 528 001a 07D0     		beq	.L100
 529 001c 002D     		cmp	r5, #0
 530 001e 3AD1     		bne	.L112
 531              	.L101:
 532 0020 0023     		movs	r3, #0
 533 0022 A360     		str	r3, [r4, #8]
 534 0024 C4F81431 		str	r3, [r4, #276]
 535 0028 C4F81031 		str	r3, [r4, #272]
 536              	.L100:
 537 002c 7F2D     		cmp	r5, #127
 538 002e C4F81801 		str	r0, [r4, #280]
 539 0032 2BD8     		bhi	.L102
 540 0034 D4F81421 		ldr	r2, [r4, #276]
 541 0038 D4F81031 		ldr	r3, [r4, #272]
 542 003c 9A42     		cmp	r2, r3
 543 003e 37D0     		beq	.L103
 544 0040 013A     		subs	r2, r2, #1
 545 0042 D21A     		subs	r2, r2, r3
 546 0044 02F0FC02 		and	r2, r2, #252
 547              	.L104:
 548 0048 6946     		mov	r1, sp
 549 004a FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 550 004e 061E     		subs	r6, r0, #0
 551 0050 1CDD     		ble	.L102
 552 0052 D4F81031 		ldr	r3, [r4, #272]
 553 0056 D4F80C01 		ldr	r0, [r4, #268]
 554 005a C3F58075 		rsb	r5, r3, #256
 555 005e B542     		cmp	r5, r6
 556 0060 6946     		mov	r1, sp
 557 0062 1844     		add	r0, r0, r3
 558 0064 20DA     		bge	.L113
 559 0066 2A46     		mov	r2, r5
 560 0068 FFF7FEFF 		bl	memcpy
 561 006c 00A9     		add	r1, sp, #0
 562 006e 2944     		add	r1, r1, r5
 563 0070 721B     		subs	r2, r6, r5
 564 0072 D4F80C01 		ldr	r0, [r4, #268]
 565 0076 FFF7FEFF 		bl	memcpy
 566              	.L107:
 567 007a D4F81031 		ldr	r3, [r4, #272]
 568 007e 0120     		movs	r0, #1
 569 0080 3344     		add	r3, r3, r6
 570 0082 DBB2     		uxtb	r3, r3
ARM GAS  C:\Users\George\AppData\Local\Temp\ccA3PZ0m.s 			page 11


 571 0084 C4F81031 		str	r3, [r4, #272]
 572 0088 41B0     		add	sp, sp, #260
 573              		@ sp needed
 574 008a F0BD     		pop	{r4, r5, r6, r7, pc}
 575              	.L102:
 576 008c 281C     		adds	r0, r5, #0
 577 008e 18BF     		it	ne
 578 0090 0120     		movne	r0, #1
 579 0092 41B0     		add	sp, sp, #260
 580              		@ sp needed
 581 0094 F0BD     		pop	{r4, r5, r6, r7, pc}
 582              	.L112:
 583 0096 3046     		mov	r0, r6
 584 0098 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 585 009c 411B     		subs	r1, r0, r5
 586 009e 3046     		mov	r0, r6
 587 00a0 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 588 00a4 3868     		ldr	r0, [r7]
 589 00a6 BBE7     		b	.L101
 590              	.L113:
 591 00a8 3246     		mov	r2, r6
 592 00aa FFF7FEFF 		bl	memcpy
 593 00ae E4E7     		b	.L107
 594              	.L103:
 595 00b0 0023     		movs	r3, #0
 596 00b2 C4F81031 		str	r3, [r4, #272]
 597 00b6 C4F81431 		str	r3, [r4, #276]
 598 00ba FC22     		movs	r2, #252
 599 00bc C4E7     		b	.L104
 600              		.size	_ZN14FileGCodeInput12ReadFromFileER8FileData, .-_ZN14FileGCodeInput12ReadFromFileER8FileData
 601              		.weak	_ZTV10GCodeInput
 602 00be 00BF     		.section	.rodata._ZTV10GCodeInput,"aG",%progbits,_ZTV10GCodeInput,comdat
 603              		.align	3
 604              		.type	_ZTV10GCodeInput, %object
 605              		.size	_ZTV10GCodeInput, 20
 606              	_ZTV10GCodeInput:
 607 0000 00000000 		.word	0
 608 0004 00000000 		.word	0
 609 0008 00000000 		.word	__cxa_pure_virtual
 610 000c 00000000 		.word	__cxa_pure_virtual
 611 0010 00000000 		.word	__cxa_pure_virtual
 612              		.global	_ZTV16StreamGCodeInput
 613              		.global	_ZTV17RegularGCodeInput
 614              		.global	_ZTV14FileGCodeInput
 615 0014 00000000 		.section	.rodata._ZTV14FileGCodeInput,"a",%progbits
 616              		.align	3
 617              		.type	_ZTV14FileGCodeInput, %object
 618              		.size	_ZTV14FileGCodeInput, 20
 619              	_ZTV14FileGCodeInput:
 620 0000 00000000 		.word	0
 621 0004 00000000 		.word	0
 622 0008 00000000 		.word	_ZN14FileGCodeInput5ResetEv
 623 000c 00000000 		.word	_ZN17RegularGCodeInput10FillBufferEP11GCodeBuffer
 624 0010 00000000 		.word	_ZNK17RegularGCodeInput11BytesCachedEv
 625 0014 00000000 		.section	.rodata._ZTV17RegularGCodeInput,"a",%progbits
 626              		.align	3
 627              		.set	.LANCHOR0,. + 0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccA3PZ0m.s 			page 12


 628              		.type	_ZTV17RegularGCodeInput, %object
 629              		.size	_ZTV17RegularGCodeInput, 20
 630              	_ZTV17RegularGCodeInput:
 631 0000 00000000 		.word	0
 632 0004 00000000 		.word	0
 633 0008 00000000 		.word	_ZN17RegularGCodeInput5ResetEv
 634 000c 00000000 		.word	_ZN17RegularGCodeInput10FillBufferEP11GCodeBuffer
 635 0010 00000000 		.word	_ZNK17RegularGCodeInput11BytesCachedEv
 636 0014 00000000 		.section	.rodata._ZTV16StreamGCodeInput,"a",%progbits
 637              		.align	3
 638              		.type	_ZTV16StreamGCodeInput, %object
 639              		.size	_ZTV16StreamGCodeInput, 20
 640              	_ZTV16StreamGCodeInput:
 641 0000 00000000 		.word	0
 642 0004 00000000 		.word	0
 643 0008 00000000 		.word	_ZN16StreamGCodeInput5ResetEv
 644 000c 00000000 		.word	_ZN16StreamGCodeInput10FillBufferEP11GCodeBuffer
 645 0010 00000000 		.word	_ZNK16StreamGCodeInput11BytesCachedEv
 646 0014 00000000 		.section	.rodata.str1.4,"aMS",%progbits,1
 647              		.align	2
 648              	.LC0:
 649 0000 303A2F77 		.ascii	"0:/www/\000"
 649      77772F00 
 650              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 651              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 652              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 653              	_ZL28cpu_irq_prev_interrupt_state:
 654 0000 00       		.space	1
 655              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 656              		.align	2
 657              		.type	_ZL32cpu_irq_critical_section_counter, %object
 658              		.size	_ZL32cpu_irq_critical_section_counter, 4
 659              	_ZL32cpu_irq_critical_section_counter:
 660 0000 00000000 		.space	4
 661              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
