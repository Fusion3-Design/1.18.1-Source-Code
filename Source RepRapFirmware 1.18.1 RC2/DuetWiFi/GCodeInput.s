ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc85K4bc.s 			page 1


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
  15              		.file	"GCodeInput.cpp"
  16              		.section	.text._ZN16StreamGCodeInput5ResetEv,"ax",%progbits
  17              		.align	2
  18              		.global	_ZN16StreamGCodeInput5ResetEv
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN16StreamGCodeInput5ResetEv, %function
  22              	_ZN16StreamGCodeInput5ResetEv:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 10B5     		push	{r4, lr}
  26 0002 0446     		mov	r4, r0
  27 0004 03E0     		b	.L2
  28              	.L3:
  29 0006 6068     		ldr	r0, [r4, #4]
  30 0008 0368     		ldr	r3, [r0]
  31 000a 5B69     		ldr	r3, [r3, #20]
  32 000c 9847     		blx	r3
  33              	.L2:
  34 000e 6068     		ldr	r0, [r4, #4]
  35 0010 0368     		ldr	r3, [r0]
  36 0012 1B69     		ldr	r3, [r3, #16]
  37 0014 9847     		blx	r3
  38 0016 0028     		cmp	r0, #0
  39 0018 F5DC     		bgt	.L3
  40 001a 10BD     		pop	{r4, pc}
  41              		.size	_ZN16StreamGCodeInput5ResetEv, .-_ZN16StreamGCodeInput5ResetEv
  42              		.section	.text._ZNK16StreamGCodeInput11BytesCachedEv,"ax",%progbits
  43              		.align	2
  44              		.global	_ZNK16StreamGCodeInput11BytesCachedEv
  45              		.thumb
  46              		.thumb_func
  47              		.type	_ZNK16StreamGCodeInput11BytesCachedEv, %function
  48              	_ZNK16StreamGCodeInput11BytesCachedEv:
  49              		@ args = 0, pretend = 0, frame = 0
  50              		@ frame_needed = 0, uses_anonymous_args = 0
  51 0000 08B5     		push	{r3, lr}
  52 0002 4068     		ldr	r0, [r0, #4]
  53 0004 0368     		ldr	r3, [r0]
  54 0006 1B69     		ldr	r3, [r3, #16]
  55 0008 9847     		blx	r3
  56 000a 08BD     		pop	{r3, pc}
  57              		.size	_ZNK16StreamGCodeInput11BytesCachedEv, .-_ZNK16StreamGCodeInput11BytesCachedEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc85K4bc.s 			page 2


  58              		.section	.text._ZN17RegularGCodeInput5ResetEv,"ax",%progbits
  59              		.align	2
  60              		.global	_ZN17RegularGCodeInput5ResetEv
  61              		.thumb
  62              		.thumb_func
  63              		.type	_ZN17RegularGCodeInput5ResetEv, %function
  64              	_ZN17RegularGCodeInput5ResetEv:
  65              		@ args = 0, pretend = 0, frame = 0
  66              		@ frame_needed = 0, uses_anonymous_args = 0
  67              		@ link register save eliminated.
  68 0000 0023     		movs	r3, #0
  69 0002 8360     		str	r3, [r0, #8]
  70 0004 C0F81431 		str	r3, [r0, #276]
  71 0008 C0F81031 		str	r3, [r0, #272]
  72 000c 7047     		bx	lr
  73              		.size	_ZN17RegularGCodeInput5ResetEv, .-_ZN17RegularGCodeInput5ResetEv
  74 000e 00BF     		.section	.text._ZNK17RegularGCodeInput11BytesCachedEv,"ax",%progbits
  75              		.align	2
  76              		.global	_ZNK17RegularGCodeInput11BytesCachedEv
  77              		.thumb
  78              		.thumb_func
  79              		.type	_ZNK17RegularGCodeInput11BytesCachedEv, %function
  80              	_ZNK17RegularGCodeInput11BytesCachedEv:
  81              		@ args = 0, pretend = 0, frame = 0
  82              		@ frame_needed = 0, uses_anonymous_args = 0
  83              		@ link register save eliminated.
  84 0000 D0F81021 		ldr	r2, [r0, #272]
  85 0004 D0F81431 		ldr	r3, [r0, #276]
  86 0008 9A42     		cmp	r2, r3
  87 000a 38BF     		it	cc
  88 000c 02F58072 		addcc	r2, r2, #256
  89 0010 D01A     		subs	r0, r2, r3
  90 0012 7047     		bx	lr
  91              		.size	_ZNK17RegularGCodeInput11BytesCachedEv, .-_ZNK17RegularGCodeInput11BytesCachedEv
  92              		.section	.text._ZN14FileGCodeInput5ResetEv,"ax",%progbits
  93              		.align	2
  94              		.global	_ZN14FileGCodeInput5ResetEv
  95              		.thumb
  96              		.thumb_func
  97              		.type	_ZN14FileGCodeInput5ResetEv, %function
  98              	_ZN14FileGCodeInput5ResetEv:
  99              		@ args = 0, pretend = 0, frame = 0
 100              		@ frame_needed = 0, uses_anonymous_args = 0
 101              		@ link register save eliminated.
 102 0000 0023     		movs	r3, #0
 103 0002 C0F81831 		str	r3, [r0, #280]
 104 0006 8360     		str	r3, [r0, #8]
 105 0008 C0F81431 		str	r3, [r0, #276]
 106 000c C0F81031 		str	r3, [r0, #272]
 107 0010 7047     		bx	lr
 108              		.size	_ZN14FileGCodeInput5ResetEv, .-_ZN14FileGCodeInput5ResetEv
 109 0012 00BF     		.section	.text._ZN16StreamGCodeInput10FillBufferEP11GCodeBuffer,"ax",%progbits
 110              		.align	2
 111              		.global	_ZN16StreamGCodeInput10FillBufferEP11GCodeBuffer
 112              		.thumb
 113              		.thumb_func
 114              		.type	_ZN16StreamGCodeInput10FillBufferEP11GCodeBuffer, %function
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc85K4bc.s 			page 3


 115              	_ZN16StreamGCodeInput10FillBufferEP11GCodeBuffer:
 116              		@ args = 0, pretend = 0, frame = 0
 117              		@ frame_needed = 0, uses_anonymous_args = 0
 118 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 119 0004 0646     		mov	r6, r0
 120 0006 4068     		ldr	r0, [r0, #4]
 121 0008 0368     		ldr	r3, [r0]
 122 000a 1B69     		ldr	r3, [r3, #16]
 123 000c 0D46     		mov	r5, r1
 124 000e 9847     		blx	r3
 125 0010 6328     		cmp	r0, #99
 126 0012 22D9     		bls	.L13
 127 0014 4FF06408 		mov	r8, #100
 128              	.L15:
 129 0018 0024     		movs	r4, #0
 130 001a 1A4F     		ldr	r7, .L26
 131 001c DFF86890 		ldr	r9, .L26+4
 132 0020 05E0     		b	.L14
 133              	.L17:
 134 0022 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEc
 135 0026 E0B9     		cbnz	r0, .L25
 136 0028 0134     		adds	r4, r4, #1
 137 002a 4445     		cmp	r4, r8
 138 002c 12D2     		bcs	.L19
 139              	.L14:
 140 002e 7068     		ldr	r0, [r6, #4]
 141 0030 0368     		ldr	r3, [r0]
 142 0032 5B69     		ldr	r3, [r3, #20]
 143 0034 9847     		blx	r3
 144 0036 D5F88430 		ldr	r3, [r5, #132]
 145 003a C2B2     		uxtb	r2, r0
 146 003c BB42     		cmp	r3, r7
 147 003e 1146     		mov	r1, r2
 148 0040 2846     		mov	r0, r5
 149 0042 EED1     		bne	.L17
 150 0044 D9F81000 		ldr	r0, [r9, #16]
 151 0048 2946     		mov	r1, r5
 152 004a 0134     		adds	r4, r4, #1
 153 004c FFF7FEFF 		bl	_ZN6GCodes15WriteHTMLToFileER11GCodeBufferc
 154 0050 4445     		cmp	r4, r8
 155 0052 ECD3     		bcc	.L14
 156              	.L19:
 157 0054 0020     		movs	r0, #0
 158 0056 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 159              	.L13:
 160 005a 8046     		mov	r8, r0
 161 005c 0028     		cmp	r0, #0
 162 005e DBD1     		bne	.L15
 163 0060 F8E7     		b	.L19
 164              	.L25:
 165 0062 D5F88430 		ldr	r3, [r5, #132]
 166 0066 53B1     		cbz	r3, .L21
 167 0068 074B     		ldr	r3, .L26+4
 168 006a 2946     		mov	r1, r5
 169 006c 1869     		ldr	r0, [r3, #16]
 170 006e FFF7FEFF 		bl	_ZN6GCodes16WriteGCodeToFileER11GCodeBuffer
 171 0072 0023     		movs	r3, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc85K4bc.s 			page 4


 172 0074 C5F88030 		str	r3, [r5, #128]
 173 0078 0120     		movs	r0, #1
 174 007a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 175              	.L21:
 176 007e 0120     		movs	r0, #1
 177 0080 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 178              	.L27:
 179              		.align	2
 180              	.L26:
 181 0084 00000000 		.word	.LC0
 182 0088 00000000 		.word	reprap
 183              		.size	_ZN16StreamGCodeInput10FillBufferEP11GCodeBuffer, .-_ZN16StreamGCodeInput10FillBufferEP11GCo
 184              		.section	.text._ZN17RegularGCodeInput10FillBufferEP11GCodeBuffer,"ax",%progbits
 185              		.align	2
 186              		.global	_ZN17RegularGCodeInput10FillBufferEP11GCodeBuffer
 187              		.thumb
 188              		.thumb_func
 189              		.type	_ZN17RegularGCodeInput10FillBufferEP11GCodeBuffer, %function
 190              	_ZN17RegularGCodeInput10FillBufferEP11GCodeBuffer:
 191              		@ args = 0, pretend = 0, frame = 0
 192              		@ frame_needed = 0, uses_anonymous_args = 0
 193 0000 0368     		ldr	r3, [r0]
 194 0002 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 195 0006 9B68     		ldr	r3, [r3, #8]
 196 0008 0446     		mov	r4, r0
 197 000a 8A46     		mov	r10, r1
 198 000c 9847     		blx	r3
 199 000e 6328     		cmp	r0, #99
 200 0010 2AD9     		bls	.L29
 201 0012 6427     		movs	r7, #100
 202              	.L31:
 203 0014 0025     		movs	r5, #0
 204 0016 A846     		mov	r8, r5
 205 0018 1E4E     		ldr	r6, .L43
 206 001a DFF87C90 		ldr	r9, .L43+4
 207 001e 05E0     		b	.L30
 208              	.L34:
 209 0020 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEc
 210 0024 20BB     		cbnz	r0, .L42
 211 0026 0135     		adds	r5, r5, #1
 212 0028 BD42     		cmp	r5, r7
 213 002a 1AD2     		bcs	.L36
 214              	.L30:
 215 002c D4F81411 		ldr	r1, [r4, #276]
 216 0030 D4F80C21 		ldr	r2, [r4, #268]
 217 0034 4B1C     		adds	r3, r1, #1
 218 0036 C4F81431 		str	r3, [r4, #276]
 219 003a B3F5807F 		cmp	r3, #256
 220 003e 525C     		ldrb	r2, [r2, r1]	@ zero_extendqisi2
 221 0040 08BF     		it	eq
 222 0042 C4F81481 		streq	r8, [r4, #276]
 223 0046 DAF88430 		ldr	r3, [r10, #132]
 224 004a B342     		cmp	r3, r6
 225 004c 5046     		mov	r0, r10
 226 004e 1146     		mov	r1, r2
 227 0050 E6D1     		bne	.L34
 228 0052 D9F81000 		ldr	r0, [r9, #16]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc85K4bc.s 			page 5


 229 0056 5146     		mov	r1, r10
 230 0058 0135     		adds	r5, r5, #1
 231 005a FFF7FEFF 		bl	_ZN6GCodes15WriteHTMLToFileER11GCodeBufferc
 232 005e BD42     		cmp	r5, r7
 233 0060 E4D3     		bcc	.L30
 234              	.L36:
 235 0062 0020     		movs	r0, #0
 236 0064 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 237              	.L29:
 238 0068 0746     		mov	r7, r0
 239 006a 0028     		cmp	r0, #0
 240 006c D2D1     		bne	.L31
 241 006e F8E7     		b	.L36
 242              	.L42:
 243 0070 DAF88430 		ldr	r3, [r10, #132]
 244 0074 53B1     		cbz	r3, .L38
 245 0076 084B     		ldr	r3, .L43+4
 246 0078 5146     		mov	r1, r10
 247 007a 1869     		ldr	r0, [r3, #16]
 248 007c FFF7FEFF 		bl	_ZN6GCodes16WriteGCodeToFileER11GCodeBuffer
 249 0080 0023     		movs	r3, #0
 250 0082 CAF88030 		str	r3, [r10, #128]
 251 0086 0120     		movs	r0, #1
 252 0088 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 253              	.L38:
 254 008c 0120     		movs	r0, #1
 255 008e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 256              	.L44:
 257 0092 00BF     		.align	2
 258              	.L43:
 259 0094 00000000 		.word	.LC0
 260 0098 00000000 		.word	reprap
 261              		.size	_ZN17RegularGCodeInput10FillBufferEP11GCodeBuffer, .-_ZN17RegularGCodeInput10FillBufferEP11G
 262              		.section	.text._ZN17RegularGCodeInputC2Eb,"ax",%progbits
 263              		.align	2
 264              		.global	_ZN17RegularGCodeInputC2Eb
 265              		.thumb
 266              		.thumb_func
 267              		.type	_ZN17RegularGCodeInputC2Eb, %function
 268              	_ZN17RegularGCodeInputC2Eb:
 269              		@ args = 0, pretend = 0, frame = 0
 270              		@ frame_needed = 0, uses_anonymous_args = 0
 271              		@ link register save eliminated.
 272 0000 0022     		movs	r2, #0
 273 0002 10B4     		push	{r4}
 274 0004 074C     		ldr	r4, .L46
 275 0006 0171     		strb	r1, [r0, #4]
 276 0008 00F10C01 		add	r1, r0, #12
 277 000c 0460     		str	r4, [r0]
 278 000e C0F80C11 		str	r1, [r0, #268]
 279 0012 8260     		str	r2, [r0, #8]
 280 0014 C0F81021 		str	r2, [r0, #272]
 281 0018 C0F81421 		str	r2, [r0, #276]
 282 001c 5DF8044B 		ldr	r4, [sp], #4
 283 0020 7047     		bx	lr
 284              	.L47:
 285 0022 00BF     		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc85K4bc.s 			page 6


 286              	.L46:
 287 0024 08000000 		.word	.LANCHOR0+8
 288              		.size	_ZN17RegularGCodeInputC2Eb, .-_ZN17RegularGCodeInputC2Eb
 289              		.global	_ZN17RegularGCodeInputC1Eb
 290              		.thumb_set _ZN17RegularGCodeInputC1Eb,_ZN17RegularGCodeInputC2Eb
 291              		.section	.text._ZN17RegularGCodeInput3PutE11MessageTypec,"ax",%progbits
 292              		.align	2
 293              		.global	_ZN17RegularGCodeInput3PutE11MessageTypec
 294              		.thumb
 295              		.thumb_func
 296              		.type	_ZN17RegularGCodeInput3PutE11MessageTypec, %function
 297              	_ZN17RegularGCodeInput3PutE11MessageTypec:
 298              		@ args = 0, pretend = 0, frame = 0
 299              		@ frame_needed = 0, uses_anonymous_args = 0
 300 0000 38B5     		push	{r3, r4, r5, lr}
 301 0002 0446     		mov	r4, r0
 302 0004 D0F81401 		ldr	r0, [r0, #276]
 303 0008 D4F81031 		ldr	r3, [r4, #272]
 304 000c 0138     		subs	r0, r0, #1
 305 000e C01A     		subs	r0, r0, r3
 306 0010 10F0FF0F 		tst	r0, #255
 307 0014 1DD0     		beq	.L48
 308 0016 A068     		ldr	r0, [r4, #8]
 309 0018 0828     		cmp	r0, #8
 310 001a 24D8     		bhi	.L51
 311 001c DFE800F0 		tbb	[pc, r0]
 312              	.L53:
 313 0020 45       		.byte	(.L52-.L53)/2
 314 0021 1A       		.byte	(.L54-.L53)/2
 315 0022 1D       		.byte	(.L55-.L53)/2
 316 0023 26       		.byte	(.L56-.L53)/2
 317 0024 05       		.byte	(.L57-.L53)/2
 318 0025 3B       		.byte	(.L58-.L53)/2
 319 0026 40       		.byte	(.L59-.L53)/2
 320 0027 2B       		.byte	(.L60-.L53)/2
 321 0028 4D       		.byte	(.L61-.L53)/2
 322 0029 00       		.align	1
 323              	.L57:
 324 002a 312A     		cmp	r2, #49
 325 002c 59D0     		beq	.L84
 326 002e 322A     		cmp	r2, #50
 327 0030 33D1     		bne	.L67
 328 0032 0621     		movs	r1, #6
 329 0034 A160     		str	r1, [r4, #8]
 330              	.L70:
 331 0036 D4F80C11 		ldr	r1, [r4, #268]
 332 003a 581C     		adds	r0, r3, #1
 333 003c C4F81001 		str	r0, [r4, #272]
 334 0040 CA54     		strb	r2, [r1, r3]
 335 0042 D4F81031 		ldr	r3, [r4, #272]
 336 0046 B3F5807F 		cmp	r3, #256
 337 004a 04BF     		itt	eq
 338 004c 0023     		moveq	r3, #0
 339 004e C4F81031 		streq	r3, [r4, #272]
 340              	.L48:
 341 0052 38BD     		pop	{r3, r4, r5, pc}
 342              	.L54:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc85K4bc.s 			page 7


 343 0054 2179     		ldrb	r1, [r4, #4]	@ zero_extendqisi2
 344 0056 0029     		cmp	r1, #0
 345 0058 3ED1     		bne	.L85
 346              	.L55:
 347 005a 002A     		cmp	r2, #0
 348 005c 39D0     		beq	.L64
 349 005e 0D2A     		cmp	r2, #13
 350 0060 37D0     		beq	.L64
 351 0062 0A2A     		cmp	r2, #10
 352 0064 35D0     		beq	.L64
 353              	.L51:
 354 0066 0228     		cmp	r0, #2
 355 0068 F3D0     		beq	.L48
 356 006a E4E7     		b	.L70
 357              	.L56:
 358 006c 312A     		cmp	r2, #49
 359 006e E2D1     		bne	.L70
 360 0070 0421     		movs	r1, #4
 361 0072 A160     		str	r1, [r4, #8]
 362 0074 DFE7     		b	.L70
 363              	.L60:
 364 0076 202A     		cmp	r2, #32
 365 0078 01D9     		bls	.L68
 366 007a 3B2A     		cmp	r2, #59
 367 007c 0DD1     		bne	.L67
 368              	.L68:
 369 007e 1C4D     		ldr	r5, .L87
 370 0080 2846     		mov	r0, r5
 371 0082 FFF7FEFF 		bl	_ZN6RepRap13EmergencyStopEv
 372 0086 2869     		ldr	r0, [r5, #16]
 373 0088 FFF7FEFF 		bl	_ZN6GCodes5ResetEv
 374 008c 2368     		ldr	r3, [r4]
 375 008e 2046     		mov	r0, r4
 376 0090 1B68     		ldr	r3, [r3]
 377 0092 9847     		blx	r3
 378 0094 38BD     		pop	{r3, r4, r5, pc}
 379              	.L58:
 380 0096 322A     		cmp	r2, #50
 381 0098 26D0     		beq	.L86
 382              	.L67:
 383 009a 0121     		movs	r1, #1
 384 009c A160     		str	r1, [r4, #8]
 385 009e CAE7     		b	.L70
 386              	.L59:
 387 00a0 322A     		cmp	r2, #50
 388 00a2 FAD1     		bne	.L67
 389 00a4 0821     		movs	r1, #8
 390 00a6 A160     		str	r1, [r4, #8]
 391 00a8 C5E7     		b	.L70
 392              	.L52:
 393 00aa 202A     		cmp	r2, #32
 394 00ac D1D9     		bls	.L48
 395 00ae 4D2A     		cmp	r2, #77
 396 00b0 14BF     		ite	ne
 397 00b2 0120     		movne	r0, #1
 398 00b4 0320     		moveq	r0, #3
 399 00b6 A060     		str	r0, [r4, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc85K4bc.s 			page 8


 400 00b8 D5E7     		b	.L51
 401              	.L61:
 402 00ba 202A     		cmp	r2, #32
 403 00bc 01D9     		bls	.L69
 404 00be 3B2A     		cmp	r2, #59
 405 00c0 B9D1     		bne	.L70
 406              	.L69:
 407 00c2 0B48     		ldr	r0, .L87
 408 00c4 FFF7FEFF 		bl	_ZN6RepRap11DiagnosticsE11MessageType
 409 00c8 2368     		ldr	r3, [r4]
 410 00ca 2046     		mov	r0, r4
 411 00cc 1B68     		ldr	r3, [r3]
 412 00ce 9847     		blx	r3
 413 00d0 38BD     		pop	{r3, r4, r5, pc}
 414              	.L64:
 415 00d2 0021     		movs	r1, #0
 416 00d4 A160     		str	r1, [r4, #8]
 417 00d6 AEE7     		b	.L70
 418              	.L85:
 419 00d8 3B2A     		cmp	r2, #59
 420 00da BED1     		bne	.L55
 421 00dc 0223     		movs	r3, #2
 422 00de A360     		str	r3, [r4, #8]
 423 00e0 38BD     		pop	{r3, r4, r5, pc}
 424              	.L84:
 425 00e2 0521     		movs	r1, #5
 426 00e4 A160     		str	r1, [r4, #8]
 427 00e6 A6E7     		b	.L70
 428              	.L86:
 429 00e8 0721     		movs	r1, #7
 430 00ea A160     		str	r1, [r4, #8]
 431 00ec A3E7     		b	.L70
 432              	.L88:
 433 00ee 00BF     		.align	2
 434              	.L87:
 435 00f0 00000000 		.word	reprap
 436              		.size	_ZN17RegularGCodeInput3PutE11MessageTypec, .-_ZN17RegularGCodeInput3PutE11MessageTypec
 437              		.section	.text._ZN17RegularGCodeInput3PutE11MessageTypePKcj,"ax",%progbits
 438              		.align	2
 439              		.global	_ZN17RegularGCodeInput3PutE11MessageTypePKcj
 440              		.thumb
 441              		.thumb_func
 442              		.type	_ZN17RegularGCodeInput3PutE11MessageTypePKcj, %function
 443              	_ZN17RegularGCodeInput3PutE11MessageTypePKcj:
 444              		@ args = 0, pretend = 0, frame = 0
 445              		@ frame_needed = 0, uses_anonymous_args = 0
 446 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 447 0002 D0F81441 		ldr	r4, [r0, #276]
 448 0006 0546     		mov	r5, r0
 449 0008 D0F81001 		ldr	r0, [r0, #272]
 450 000c 013C     		subs	r4, r4, #1
 451 000e 201A     		subs	r0, r4, r0
 452 0010 C0B2     		uxtb	r0, r0
 453 0012 8342     		cmp	r3, r0
 454 0014 0E46     		mov	r6, r1
 455 0016 0AD8     		bhi	.L89
 456 0018 4BB1     		cbz	r3, .L89
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc85K4bc.s 			page 9


 457 001a 1446     		mov	r4, r2
 458 001c D718     		adds	r7, r2, r3
 459              	.L92:
 460 001e 14F8012B 		ldrb	r2, [r4], #1	@ zero_extendqisi2
 461 0022 2846     		mov	r0, r5
 462 0024 3146     		mov	r1, r6
 463 0026 FFF7FEFF 		bl	_ZN17RegularGCodeInput3PutE11MessageTypec
 464 002a BC42     		cmp	r4, r7
 465 002c F7D1     		bne	.L92
 466              	.L89:
 467 002e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 468              		.size	_ZN17RegularGCodeInput3PutE11MessageTypePKcj, .-_ZN17RegularGCodeInput3PutE11MessageTypePKcj
 469              		.section	.text._ZN17RegularGCodeInput3PutE11MessageTypePKc,"ax",%progbits
 470              		.align	2
 471              		.global	_ZN17RegularGCodeInput3PutE11MessageTypePKc
 472              		.thumb
 473              		.thumb_func
 474              		.type	_ZN17RegularGCodeInput3PutE11MessageTypePKc, %function
 475              	_ZN17RegularGCodeInput3PutE11MessageTypePKc:
 476              		@ args = 0, pretend = 0, frame = 0
 477              		@ frame_needed = 0, uses_anonymous_args = 0
 478 0000 70B5     		push	{r4, r5, r6, lr}
 479 0002 0546     		mov	r5, r0
 480 0004 1046     		mov	r0, r2
 481 0006 1446     		mov	r4, r2
 482 0008 0E46     		mov	r6, r1
 483 000a FFF7FEFF 		bl	strlen
 484 000e 3146     		mov	r1, r6
 485 0010 431C     		adds	r3, r0, #1
 486 0012 2246     		mov	r2, r4
 487 0014 2846     		mov	r0, r5
 488 0016 BDE87040 		pop	{r4, r5, r6, lr}
 489 001a FFF7FEBF 		b	_ZN17RegularGCodeInput3PutE11MessageTypePKcj
 490              		.size	_ZN17RegularGCodeInput3PutE11MessageTypePKc, .-_ZN17RegularGCodeInput3PutE11MessageTypePKc
 491 001e 00BF     		.section	.text._ZNK17RegularGCodeInput15BufferSpaceLeftEv,"ax",%progbits
 492              		.align	2
 493              		.global	_ZNK17RegularGCodeInput15BufferSpaceLeftEv
 494              		.thumb
 495              		.thumb_func
 496              		.type	_ZNK17RegularGCodeInput15BufferSpaceLeftEv, %function
 497              	_ZNK17RegularGCodeInput15BufferSpaceLeftEv:
 498              		@ args = 0, pretend = 0, frame = 0
 499              		@ frame_needed = 0, uses_anonymous_args = 0
 500              		@ link register save eliminated.
 501 0000 D0F81421 		ldr	r2, [r0, #276]
 502 0004 D0F81031 		ldr	r3, [r0, #272]
 503 0008 501E     		subs	r0, r2, #1
 504 000a C01A     		subs	r0, r0, r3
 505 000c C0B2     		uxtb	r0, r0
 506 000e 7047     		bx	lr
 507              		.size	_ZNK17RegularGCodeInput15BufferSpaceLeftEv, .-_ZNK17RegularGCodeInput15BufferSpaceLeftEv
 508              		.section	.text._ZN14FileGCodeInput12ReadFromFileER8FileData,"ax",%progbits
 509              		.align	2
 510              		.global	_ZN14FileGCodeInput12ReadFromFileER8FileData
 511              		.thumb
 512              		.thumb_func
 513              		.type	_ZN14FileGCodeInput12ReadFromFileER8FileData, %function
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc85K4bc.s 			page 10


 514              	_ZN14FileGCodeInput12ReadFromFileER8FileData:
 515              		@ args = 0, pretend = 0, frame = 256
 516              		@ frame_needed = 0, uses_anonymous_args = 0
 517 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 518 0002 0368     		ldr	r3, [r0]
 519 0004 0446     		mov	r4, r0
 520 0006 C1B0     		sub	sp, sp, #260
 521 0008 9B68     		ldr	r3, [r3, #8]
 522 000a 0F46     		mov	r7, r1
 523 000c 9847     		blx	r3
 524 000e D4F81861 		ldr	r6, [r4, #280]
 525 0012 0546     		mov	r5, r0
 526 0014 3868     		ldr	r0, [r7]
 527 0016 4EB1     		cbz	r6, .L100
 528 0018 8642     		cmp	r6, r0
 529 001a 07D0     		beq	.L100
 530 001c 002D     		cmp	r5, #0
 531 001e 3AD1     		bne	.L112
 532              	.L101:
 533 0020 0023     		movs	r3, #0
 534 0022 A360     		str	r3, [r4, #8]
 535 0024 C4F81431 		str	r3, [r4, #276]
 536 0028 C4F81031 		str	r3, [r4, #272]
 537              	.L100:
 538 002c 7F2D     		cmp	r5, #127
 539 002e C4F81801 		str	r0, [r4, #280]
 540 0032 2BD8     		bhi	.L102
 541 0034 D4F81421 		ldr	r2, [r4, #276]
 542 0038 D4F81031 		ldr	r3, [r4, #272]
 543 003c 9A42     		cmp	r2, r3
 544 003e 37D0     		beq	.L103
 545 0040 013A     		subs	r2, r2, #1
 546 0042 D21A     		subs	r2, r2, r3
 547 0044 02F0FC02 		and	r2, r2, #252
 548              	.L104:
 549 0048 6946     		mov	r1, sp
 550 004a FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 551 004e 061E     		subs	r6, r0, #0
 552 0050 1CDD     		ble	.L102
 553 0052 D4F81031 		ldr	r3, [r4, #272]
 554 0056 D4F80C01 		ldr	r0, [r4, #268]
 555 005a C3F58075 		rsb	r5, r3, #256
 556 005e B542     		cmp	r5, r6
 557 0060 6946     		mov	r1, sp
 558 0062 1844     		add	r0, r0, r3
 559 0064 20DA     		bge	.L113
 560 0066 2A46     		mov	r2, r5
 561 0068 FFF7FEFF 		bl	memcpy
 562 006c 00A9     		add	r1, sp, #0
 563 006e 2944     		add	r1, r1, r5
 564 0070 721B     		subs	r2, r6, r5
 565 0072 D4F80C01 		ldr	r0, [r4, #268]
 566 0076 FFF7FEFF 		bl	memcpy
 567              	.L107:
 568 007a D4F81031 		ldr	r3, [r4, #272]
 569 007e 3344     		add	r3, r3, r6
 570 0080 DBB2     		uxtb	r3, r3
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc85K4bc.s 			page 11


 571 0082 0120     		movs	r0, #1
 572 0084 C4F81031 		str	r3, [r4, #272]
 573 0088 41B0     		add	sp, sp, #260
 574              		@ sp needed
 575 008a F0BD     		pop	{r4, r5, r6, r7, pc}
 576              	.L102:
 577 008c 281C     		adds	r0, r5, #0
 578 008e 18BF     		it	ne
 579 0090 0120     		movne	r0, #1
 580 0092 41B0     		add	sp, sp, #260
 581              		@ sp needed
 582 0094 F0BD     		pop	{r4, r5, r6, r7, pc}
 583              	.L112:
 584 0096 3046     		mov	r0, r6
 585 0098 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 586 009c 411B     		subs	r1, r0, r5
 587 009e 3046     		mov	r0, r6
 588 00a0 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 589 00a4 3868     		ldr	r0, [r7]
 590 00a6 BBE7     		b	.L101
 591              	.L113:
 592 00a8 3246     		mov	r2, r6
 593 00aa FFF7FEFF 		bl	memcpy
 594 00ae E4E7     		b	.L107
 595              	.L103:
 596 00b0 0023     		movs	r3, #0
 597 00b2 C4F81031 		str	r3, [r4, #272]
 598 00b6 C4F81431 		str	r3, [r4, #276]
 599 00ba FC22     		movs	r2, #252
 600 00bc C4E7     		b	.L104
 601              		.size	_ZN14FileGCodeInput12ReadFromFileER8FileData, .-_ZN14FileGCodeInput12ReadFromFileER8FileData
 602              		.weak	_ZTV10GCodeInput
 603 00be 00BF     		.section	.rodata._ZTV10GCodeInput,"aG",%progbits,_ZTV10GCodeInput,comdat
 604              		.align	3
 605              		.type	_ZTV10GCodeInput, %object
 606              		.size	_ZTV10GCodeInput, 20
 607              	_ZTV10GCodeInput:
 608 0000 00000000 		.word	0
 609 0004 00000000 		.word	0
 610 0008 00000000 		.word	__cxa_pure_virtual
 611 000c 00000000 		.word	__cxa_pure_virtual
 612 0010 00000000 		.word	__cxa_pure_virtual
 613              		.global	_ZTV16StreamGCodeInput
 614              		.global	_ZTV17RegularGCodeInput
 615              		.global	_ZTV14FileGCodeInput
 616 0014 00000000 		.section	.rodata._ZTV14FileGCodeInput,"a",%progbits
 617              		.align	3
 618              		.type	_ZTV14FileGCodeInput, %object
 619              		.size	_ZTV14FileGCodeInput, 20
 620              	_ZTV14FileGCodeInput:
 621 0000 00000000 		.word	0
 622 0004 00000000 		.word	0
 623 0008 00000000 		.word	_ZN14FileGCodeInput5ResetEv
 624 000c 00000000 		.word	_ZN17RegularGCodeInput10FillBufferEP11GCodeBuffer
 625 0010 00000000 		.word	_ZNK17RegularGCodeInput11BytesCachedEv
 626 0014 00000000 		.section	.rodata._ZTV17RegularGCodeInput,"a",%progbits
 627              		.align	3
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc85K4bc.s 			page 12


 628              		.set	.LANCHOR0,. + 0
 629              		.type	_ZTV17RegularGCodeInput, %object
 630              		.size	_ZTV17RegularGCodeInput, 20
 631              	_ZTV17RegularGCodeInput:
 632 0000 00000000 		.word	0
 633 0004 00000000 		.word	0
 634 0008 00000000 		.word	_ZN17RegularGCodeInput5ResetEv
 635 000c 00000000 		.word	_ZN17RegularGCodeInput10FillBufferEP11GCodeBuffer
 636 0010 00000000 		.word	_ZNK17RegularGCodeInput11BytesCachedEv
 637 0014 00000000 		.section	.rodata._ZTV16StreamGCodeInput,"a",%progbits
 638              		.align	3
 639              		.type	_ZTV16StreamGCodeInput, %object
 640              		.size	_ZTV16StreamGCodeInput, 20
 641              	_ZTV16StreamGCodeInput:
 642 0000 00000000 		.word	0
 643 0004 00000000 		.word	0
 644 0008 00000000 		.word	_ZN16StreamGCodeInput5ResetEv
 645 000c 00000000 		.word	_ZN16StreamGCodeInput10FillBufferEP11GCodeBuffer
 646 0010 00000000 		.word	_ZNK16StreamGCodeInput11BytesCachedEv
 647 0014 00000000 		.section	.rodata.str1.4,"aMS",%progbits,1
 648              		.align	2
 649              	.LC0:
 650 0000 303A2F77 		.ascii	"0:/www/\000"
 650      77772F00 
 651              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 652              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 653              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 654              	_ZL28cpu_irq_prev_interrupt_state:
 655 0000 00       		.space	1
 656              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 657              		.align	2
 658              		.type	_ZL32cpu_irq_critical_section_counter, %object
 659              		.size	_ZL32cpu_irq_critical_section_counter, 4
 660              	_ZL32cpu_irq_critical_section_counter:
 661 0000 00000000 		.space	4
 662              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
