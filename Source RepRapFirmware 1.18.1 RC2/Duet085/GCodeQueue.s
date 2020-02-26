ARM GAS  C:\Users\George\AppData\Local\Temp\ccd9dtfw.s 			page 1


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
  14              		.file	"GCodeQueue.cpp"
  15              		.section	.text._ZN10GCodeQueueC2Ev,"ax",%progbits
  16              		.align	2
  17              		.global	_ZN10GCodeQueueC2Ev
  18              		.thumb
  19              		.thumb_func
  20              		.type	_ZN10GCodeQueueC2Ev, %function
  21              	_ZN10GCodeQueueC2Ev:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 38B5     		push	{r3, r4, r5, lr}
  25 0002 0023     		movs	r3, #0
  26 0004 0546     		mov	r5, r0
  27 0006 0360     		str	r3, [r0]
  28 0008 4360     		str	r3, [r0, #4]
  29 000a 0824     		movs	r4, #8
  30              	.L3:
  31 000c 7020     		movs	r0, #112
  32 000e FFF7FEFF 		bl	_Znwj
  33 0012 2B68     		ldr	r3, [r5]
  34 0014 013C     		subs	r4, r4, #1
  35 0016 0360     		str	r3, [r0]
  36 0018 2860     		str	r0, [r5]
  37 001a F7D1     		bne	.L3
  38 001c 2846     		mov	r0, r5
  39 001e 38BD     		pop	{r3, r4, r5, pc}
  40              		.size	_ZN10GCodeQueueC2Ev, .-_ZN10GCodeQueueC2Ev
  41              		.global	_ZN10GCodeQueueC1Ev
  42              		.thumb_set _ZN10GCodeQueueC1Ev,_ZN10GCodeQueueC2Ev
  43              		.section	.text._ZN10GCodeQueue9QueueCodeER11GCodeBufferm,"ax",%progbits
  44              		.align	2
  45              		.global	_ZN10GCodeQueue9QueueCodeER11GCodeBufferm
  46              		.thumb
  47              		.thumb_func
  48              		.type	_ZN10GCodeQueue9QueueCodeER11GCodeBufferm, %function
  49              	_ZN10GCodeQueue9QueueCodeER11GCodeBufferm:
  50              		@ args = 0, pretend = 0, frame = 104
  51              		@ frame_needed = 0, uses_anonymous_args = 0
  52 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
  53 0004 4A4B     		ldr	r3, .L52
  54 0006 9AB0     		sub	sp, sp, #104
  55 0008 9B68     		ldr	r3, [r3, #8]
  56 000a 8146     		mov	r9, r0
  57 000c D3F80076 		ldr	r7, [r3, #1536]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccd9dtfw.s 			page 2


  58 0010 D3F80436 		ldr	r3, [r3, #1540]
  59 0014 1744     		add	r7, r7, r2
  60 0016 9F42     		cmp	r7, r3
  61 0018 0D46     		mov	r5, r1
  62 001a 3FD0     		beq	.L8
  63 001c 0846     		mov	r0, r1
  64 001e FFF7FEFF 		bl	_ZN11GCodeBuffer16GetCommandLetterEv
  65 0022 4728     		cmp	r0, #71
  66 0024 35D0     		beq	.L9
  67 0026 4D28     		cmp	r0, #77
  68 0028 38D1     		bne	.L8
  69 002a 2846     		mov	r0, r5
  70 002c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
  71 0030 6828     		cmp	r0, #104
  72 0032 05D0     		beq	.L15
  73 0034 A0F18C03 		sub	r3, r0, #140
  74 0038 012B     		cmp	r3, #1
  75 003a 61D9     		bls	.L26
  76 003c 7528     		cmp	r0, #117
  77 003e 44D1     		bne	.L45
  78              	.L15:
  79 0040 D9F80060 		ldr	r6, [r9]
  80 0044 002E     		cmp	r6, #0
  81 0046 5DD0     		beq	.L46
  82 0048 341D     		adds	r4, r6, #4
  83 004a 4FF0010A 		mov	r10, #1
  84              	.L18:
  85 004e 3368     		ldr	r3, [r6]
  86 0050 2046     		mov	r0, r4
  87 0052 C9F80030 		str	r3, [r9]
  88 0056 D5F88830 		ldr	r3, [r5, #136]
  89 005a 05F10C01 		add	r1, r5, #12
  90 005e F366     		str	r3, [r6, #108]
  91 0060 6422     		movs	r2, #100
  92 0062 FFF7FEFF 		bl	strncpy
  93 0066 0023     		movs	r3, #0
  94 0068 86F86730 		strb	r3, [r6, #103]
  95 006c D9F80440 		ldr	r4, [r9, #4]
  96 0070 B766     		str	r7, [r6, #104]
  97 0072 0CB9     		cbnz	r4, .L22
  98 0074 41E0     		b	.L51
  99              	.L48:
 100 0076 1C46     		mov	r4, r3
 101              	.L22:
 102 0078 2368     		ldr	r3, [r4]
 103 007a 002B     		cmp	r3, #0
 104 007c FBD1     		bne	.L48
 105 007e 2660     		str	r6, [r4]
 106              	.L20:
 107 0080 0023     		movs	r3, #0
 108 0082 3360     		str	r3, [r6]
 109 0084 BAF1000F 		cmp	r10, #0
 110 0088 0CD0     		beq	.L49
 111              	.L25:
 112 008a 5046     		mov	r0, r10
 113 008c 1AB0     		add	sp, sp, #104
 114              		@ sp needed
ARM GAS  C:\Users\George\AppData\Local\Temp\ccd9dtfw.s 			page 3


 115 008e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 116              	.L9:
 117 0092 2846     		mov	r0, r5
 118 0094 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 119 0098 0A28     		cmp	r0, #10
 120 009a 0FD0     		beq	.L50
 121              	.L8:
 122 009c 0020     		movs	r0, #0
 123 009e 1AB0     		add	sp, sp, #104
 124              		@ sp needed
 125 00a0 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 126              	.L49:
 127 00a4 4246     		mov	r2, r8
 128 00a6 2846     		mov	r0, r5
 129 00a8 01A9     		add	r1, sp, #4
 130 00aa FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEPKcj
 131 00ae 0028     		cmp	r0, #0
 132 00b0 EBD1     		bne	.L25
 133 00b2 2846     		mov	r0, r5
 134 00b4 0A21     		movs	r1, #10
 135 00b6 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEc
 136 00ba E6E7     		b	.L25
 137              	.L50:
 138 00bc 2846     		mov	r0, r5
 139 00be 5021     		movs	r1, #80
 140 00c0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 141 00c4 0028     		cmp	r0, #0
 142 00c6 E9D0     		beq	.L8
 143 00c8 BAE7     		b	.L15
 144              	.L45:
 145 00ca A0F16A02 		sub	r2, r0, #106
 146 00ce 9028     		cmp	r0, #144
 147 00d0 18BF     		it	ne
 148 00d2 012A     		cmpne	r2, #1
 149 00d4 8CBF     		ite	hi
 150 00d6 0022     		movhi	r2, #0
 151 00d8 0122     		movls	r2, #1
 152 00da B0F5967F 		cmp	r0, #300
 153 00de AFD0     		beq	.L15
 154              	.L16:
 155 00e0 B0F58C7F 		cmp	r0, #280
 156 00e4 ACD0     		beq	.L15
 157 00e6 A0F17E03 		sub	r3, r0, #126
 158 00ea B0F5D27F 		cmp	r0, #420
 159 00ee 18BF     		it	ne
 160 00f0 012B     		cmpne	r3, #1
 161 00f2 A5D9     		bls	.L15
 162 00f4 002A     		cmp	r2, #0
 163 00f6 A3D1     		bne	.L15
 164 00f8 D0E7     		b	.L8
 165              	.L51:
 166 00fa C9F80460 		str	r6, [r9, #4]
 167 00fe BFE7     		b	.L20
 168              	.L26:
 169 0100 0122     		movs	r2, #1
 170 0102 EDE7     		b	.L16
 171              	.L46:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccd9dtfw.s 			page 4


 172 0104 D9F80460 		ldr	r6, [r9, #4]
 173 0108 341D     		adds	r4, r6, #4
 174 010a 2046     		mov	r0, r4
 175 010c FFF7FEFF 		bl	strlen
 176 0110 2146     		mov	r1, r4
 177 0112 0246     		mov	r2, r0
 178 0114 8046     		mov	r8, r0
 179 0116 01A8     		add	r0, sp, #4
 180 0118 FFF7FEFF 		bl	strncpy
 181 011c 0023     		movs	r3, #0
 182 011e 8DF86730 		strb	r3, [sp, #103]
 183 0122 3268     		ldr	r2, [r6]
 184 0124 9A46     		mov	r10, r3
 185 0126 C9F80420 		str	r2, [r9, #4]
 186 012a 3360     		str	r3, [r6]
 187 012c 8FE7     		b	.L18
 188              	.L53:
 189 012e 00BF     		.align	2
 190              	.L52:
 191 0130 00000000 		.word	reprap
 192              		.size	_ZN10GCodeQueue9QueueCodeER11GCodeBufferm, .-_ZN10GCodeQueue9QueueCodeER11GCodeBufferm
 193              		.section	.text._ZN10GCodeQueue12PurgeEntriesEv,"ax",%progbits
 194              		.align	2
 195              		.global	_ZN10GCodeQueue12PurgeEntriesEv
 196              		.thumb
 197              		.thumb_func
 198              		.type	_ZN10GCodeQueue12PurgeEntriesEv, %function
 199              	_ZN10GCodeQueue12PurgeEntriesEv:
 200              		@ args = 0, pretend = 0, frame = 0
 201              		@ frame_needed = 0, uses_anonymous_args = 0
 202              		@ link register save eliminated.
 203 0000 4368     		ldr	r3, [r0, #4]
 204 0002 30B4     		push	{r4, r5}
 205 0004 83B1     		cbz	r3, .L54
 206 0006 0E4D     		ldr	r5, .L65
 207 0008 0024     		movs	r4, #0
 208              	.L60:
 209 000a A968     		ldr	r1, [r5, #8]
 210 000c 9A6E     		ldr	r2, [r3, #104]
 211 000e D1F80016 		ldr	r1, [r1, #1536]
 212 0012 8A42     		cmp	r2, r1
 213 0014 0AD9     		bls	.L56
 214 0016 0168     		ldr	r1, [r0]
 215 0018 1A68     		ldr	r2, [r3]
 216 001a 1960     		str	r1, [r3]
 217 001c 0360     		str	r3, [r0]
 218 001e 54B1     		cbz	r4, .L64
 219 0020 1346     		mov	r3, r2
 220 0022 2260     		str	r2, [r4]
 221 0024 002B     		cmp	r3, #0
 222 0026 F0D1     		bne	.L60
 223              	.L54:
 224 0028 30BC     		pop	{r4, r5}
 225 002a 7047     		bx	lr
 226              	.L56:
 227 002c 1C46     		mov	r4, r3
 228 002e 1B68     		ldr	r3, [r3]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccd9dtfw.s 			page 5


 229 0030 002B     		cmp	r3, #0
 230 0032 EAD1     		bne	.L60
 231 0034 F8E7     		b	.L54
 232              	.L64:
 233 0036 1346     		mov	r3, r2
 234 0038 4260     		str	r2, [r0, #4]
 235 003a 002B     		cmp	r3, #0
 236 003c E5D1     		bne	.L60
 237 003e F3E7     		b	.L54
 238              	.L66:
 239              		.align	2
 240              	.L65:
 241 0040 00000000 		.word	reprap
 242              		.size	_ZN10GCodeQueue12PurgeEntriesEv, .-_ZN10GCodeQueue12PurgeEntriesEv
 243              		.section	.text._ZN10GCodeQueue5ClearEv,"ax",%progbits
 244              		.align	2
 245              		.global	_ZN10GCodeQueue5ClearEv
 246              		.thumb
 247              		.thumb_func
 248              		.type	_ZN10GCodeQueue5ClearEv, %function
 249              	_ZN10GCodeQueue5ClearEv:
 250              		@ args = 0, pretend = 0, frame = 0
 251              		@ frame_needed = 0, uses_anonymous_args = 0
 252              		@ link register save eliminated.
 253 0000 4368     		ldr	r3, [r0, #4]
 254 0002 4BB1     		cbz	r3, .L67
 255 0004 0168     		ldr	r1, [r0]
 256 0006 01E0     		b	.L70
 257              	.L74:
 258 0008 1946     		mov	r1, r3
 259 000a 1346     		mov	r3, r2
 260              	.L70:
 261 000c 1A68     		ldr	r2, [r3]
 262 000e 4260     		str	r2, [r0, #4]
 263 0010 1960     		str	r1, [r3]
 264 0012 0360     		str	r3, [r0]
 265 0014 002A     		cmp	r2, #0
 266 0016 F7D1     		bne	.L74
 267              	.L67:
 268 0018 7047     		bx	lr
 269              		.size	_ZN10GCodeQueue5ClearEv, .-_ZN10GCodeQueue5ClearEv
 270 001a 00BF     		.section	.text._ZN10GCodeQueue11DiagnosticsE11MessageType,"ax",%progbits
 271              		.align	2
 272              		.global	_ZN10GCodeQueue11DiagnosticsE11MessageType
 273              		.thumb
 274              		.thumb_func
 275              		.type	_ZN10GCodeQueue11DiagnosticsE11MessageType, %function
 276              	_ZN10GCodeQueue11DiagnosticsE11MessageType:
 277              		@ args = 0, pretend = 0, frame = 0
 278              		@ frame_needed = 0, uses_anonymous_args = 0
 279 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 280 0002 4268     		ldr	r2, [r0, #4]
 281 0004 0446     		mov	r4, r0
 282 0006 134B     		ldr	r3, .L84
 283 0008 1348     		ldr	r0, .L84+4
 284 000a 144E     		ldr	r6, .L84+8
 285 000c 002A     		cmp	r2, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccd9dtfw.s 			page 6


 286 000e 18BF     		it	ne
 287 0010 0346     		movne	r3, r0
 288 0012 83B0     		sub	sp, sp, #12
 289 0014 3068     		ldr	r0, [r6]
 290 0016 124A     		ldr	r2, .L84+12
 291 0018 0F46     		mov	r7, r1
 292 001a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 293 001e 6468     		ldr	r4, [r4, #4]
 294 0020 ACB1     		cbz	r4, .L75
 295 0022 0025     		movs	r5, #0
 296              	.L79:
 297 0024 A36E     		ldr	r3, [r4, #104]
 298 0026 3068     		ldr	r0, [r6]
 299 0028 0093     		str	r3, [sp]
 300 002a 3946     		mov	r1, r7
 301 002c 231D     		adds	r3, r4, #4
 302 002e 0D4A     		ldr	r2, .L84+16
 303 0030 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 304 0034 2468     		ldr	r4, [r4]
 305 0036 0135     		adds	r5, r5, #1
 306 0038 084B     		ldr	r3, .L84+8
 307 003a 002C     		cmp	r4, #0
 308 003c F2D1     		bne	.L79
 309 003e 0822     		movs	r2, #8
 310 0040 1868     		ldr	r0, [r3]
 311 0042 3946     		mov	r1, r7
 312 0044 0092     		str	r2, [sp]
 313 0046 2B46     		mov	r3, r5
 314 0048 074A     		ldr	r2, .L84+20
 315 004a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 316              	.L75:
 317 004e 03B0     		add	sp, sp, #12
 318              		@ sp needed
 319 0050 F0BD     		pop	{r4, r5, r6, r7, pc}
 320              	.L85:
 321 0052 00BF     		.align	2
 322              	.L84:
 323 0054 00000000 		.word	.LC0
 324 0058 08000000 		.word	.LC1
 325 005c 00000000 		.word	reprap
 326 0060 14000000 		.word	.LC2
 327 0064 28000000 		.word	.LC3
 328 0068 44000000 		.word	.LC4
 329              		.size	_ZN10GCodeQueue11DiagnosticsE11MessageType, .-_ZN10GCodeQueue11DiagnosticsE11MessageType
 330              		.section	.text._ZN10QueuedCode10AssignFromER11GCodeBuffer,"ax",%progbits
 331              		.align	2
 332              		.global	_ZN10QueuedCode10AssignFromER11GCodeBuffer
 333              		.thumb
 334              		.thumb_func
 335              		.type	_ZN10QueuedCode10AssignFromER11GCodeBuffer, %function
 336              	_ZN10QueuedCode10AssignFromER11GCodeBuffer:
 337              		@ args = 0, pretend = 0, frame = 0
 338              		@ frame_needed = 0, uses_anonymous_args = 0
 339 0000 10B5     		push	{r4, lr}
 340 0002 D1F88830 		ldr	r3, [r1, #136]
 341 0006 0446     		mov	r4, r0
 342 0008 C366     		str	r3, [r0, #108]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccd9dtfw.s 			page 7


 343 000a 0C31     		adds	r1, r1, #12
 344 000c 0430     		adds	r0, r0, #4
 345 000e 6422     		movs	r2, #100
 346 0010 FFF7FEFF 		bl	strncpy
 347 0014 0023     		movs	r3, #0
 348 0016 84F86730 		strb	r3, [r4, #103]
 349 001a 10BD     		pop	{r4, pc}
 350              		.size	_ZN10QueuedCode10AssignFromER11GCodeBuffer, .-_ZN10QueuedCode10AssignFromER11GCodeBuffer
 351              		.section	.text._ZN10QueuedCode8AssignToEP11GCodeBuffer,"ax",%progbits
 352              		.align	2
 353              		.global	_ZN10QueuedCode8AssignToEP11GCodeBuffer
 354              		.thumb
 355              		.thumb_func
 356              		.type	_ZN10QueuedCode8AssignToEP11GCodeBuffer, %function
 357              	_ZN10QueuedCode8AssignToEP11GCodeBuffer:
 358              		@ args = 0, pretend = 0, frame = 0
 359              		@ frame_needed = 0, uses_anonymous_args = 0
 360 0000 38B5     		push	{r3, r4, r5, lr}
 361 0002 C36E     		ldr	r3, [r0, #108]
 362 0004 051D     		adds	r5, r0, #4
 363 0006 C1F88830 		str	r3, [r1, #136]
 364 000a 2846     		mov	r0, r5
 365 000c 0C46     		mov	r4, r1
 366 000e FFF7FEFF 		bl	strlen
 367 0012 2946     		mov	r1, r5
 368 0014 0246     		mov	r2, r0
 369 0016 2046     		mov	r0, r4
 370 0018 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEPKcj
 371 001c 00B1     		cbz	r0, .L89
 372 001e 38BD     		pop	{r3, r4, r5, pc}
 373              	.L89:
 374 0020 2046     		mov	r0, r4
 375 0022 0A21     		movs	r1, #10
 376 0024 BDE83840 		pop	{r3, r4, r5, lr}
 377 0028 FFF7FEBF 		b	_ZN11GCodeBuffer3PutEc
 378              		.size	_ZN10QueuedCode8AssignToEP11GCodeBuffer, .-_ZN10QueuedCode8AssignToEP11GCodeBuffer
 379              		.section	.text._ZN10GCodeQueue10FillBufferEP11GCodeBuffer,"ax",%progbits
 380              		.align	2
 381              		.global	_ZN10GCodeQueue10FillBufferEP11GCodeBuffer
 382              		.thumb
 383              		.thumb_func
 384              		.type	_ZN10GCodeQueue10FillBufferEP11GCodeBuffer, %function
 385              	_ZN10GCodeQueue10FillBufferEP11GCodeBuffer:
 386              		@ args = 0, pretend = 0, frame = 0
 387              		@ frame_needed = 0, uses_anonymous_args = 0
 388 0000 38B5     		push	{r3, r4, r5, lr}
 389 0002 4468     		ldr	r4, [r0, #4]
 390 0004 0546     		mov	r5, r0
 391 0006 34B1     		cbz	r4, .L95
 392 0008 094A     		ldr	r2, .L96
 393 000a A36E     		ldr	r3, [r4, #104]
 394 000c 9268     		ldr	r2, [r2, #8]
 395 000e D2F80426 		ldr	r2, [r2, #1540]
 396 0012 9342     		cmp	r3, r2
 397 0014 01D9     		bls	.L92
 398              	.L95:
 399 0016 0020     		movs	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccd9dtfw.s 			page 8


 400 0018 38BD     		pop	{r3, r4, r5, pc}
 401              	.L92:
 402 001a 2046     		mov	r0, r4
 403 001c FFF7FEFF 		bl	_ZN10QueuedCode8AssignToEP11GCodeBuffer
 404 0020 6A68     		ldr	r2, [r5, #4]
 405 0022 2B68     		ldr	r3, [r5]
 406 0024 1268     		ldr	r2, [r2]
 407 0026 0120     		movs	r0, #1
 408 0028 6A60     		str	r2, [r5, #4]
 409 002a 2360     		str	r3, [r4]
 410 002c 2C60     		str	r4, [r5]
 411 002e 38BD     		pop	{r3, r4, r5, pc}
 412              	.L97:
 413              		.align	2
 414              	.L96:
 415 0030 00000000 		.word	reprap
 416              		.size	_ZN10GCodeQueue10FillBufferEP11GCodeBuffer, .-_ZN10GCodeQueue10FillBufferEP11GCodeBuffer
 417              		.section	.rodata.str1.4,"aMS",%progbits,1
 418              		.align	2
 419              	.LC0:
 420 0000 656D7074 		.ascii	"empty.\000"
 420      792E00
 421 0007 00       		.space	1
 422              	.LC1:
 423 0008 6E6F7420 		.ascii	"not empty:\000"
 423      656D7074 
 423      793A00
 424 0013 00       		.space	1
 425              	.LC2:
 426 0014 436F6465 		.ascii	"Code queue is %s\012\000"
 426      20717565 
 426      75652069 
 426      73202573 
 426      0A00
 427 0026 0000     		.space	2
 428              	.LC3:
 429 0028 51756575 		.ascii	"Queued '%s' for move %d\012\000"
 429      65642027 
 429      25732720 
 429      666F7220 
 429      6D6F7665 
 430 0041 000000   		.space	3
 431              	.LC4:
 432 0044 2564206F 		.ascii	"%d of %d codes have been queued.\012\000"
 432      66202564 
 432      20636F64 
 432      65732068 
 432      61766520 
 433 0066 0000     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 434              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 435              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 436              	_ZL28cpu_irq_prev_interrupt_state:
 437 0000 00       		.space	1
 438              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 439              		.align	2
 440              		.type	_ZL32cpu_irq_critical_section_counter, %object
 441              		.size	_ZL32cpu_irq_critical_section_counter, 4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccd9dtfw.s 			page 9


 442              	_ZL32cpu_irq_critical_section_counter:
 443 0000 00000000 		.space	4
 444              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
