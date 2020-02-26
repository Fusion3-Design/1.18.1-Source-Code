ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccG7qjoo.s 			page 1


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
  15              		.file	"GCodeQueue.cpp"
  16              		.section	.text._ZN10GCodeQueueC2Ev,"ax",%progbits
  17              		.align	2
  18              		.global	_ZN10GCodeQueueC2Ev
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN10GCodeQueueC2Ev, %function
  22              	_ZN10GCodeQueueC2Ev:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 38B5     		push	{r3, r4, r5, lr}
  26 0002 0023     		movs	r3, #0
  27 0004 0546     		mov	r5, r0
  28 0006 0360     		str	r3, [r0]
  29 0008 4360     		str	r3, [r0, #4]
  30 000a 0824     		movs	r4, #8
  31              	.L3:
  32 000c 7020     		movs	r0, #112
  33 000e FFF7FEFF 		bl	_Znwj
  34 0012 2B68     		ldr	r3, [r5]
  35 0014 0360     		str	r3, [r0]
  36 0016 013C     		subs	r4, r4, #1
  37 0018 2860     		str	r0, [r5]
  38 001a F7D1     		bne	.L3
  39 001c 2846     		mov	r0, r5
  40 001e 38BD     		pop	{r3, r4, r5, pc}
  41              		.size	_ZN10GCodeQueueC2Ev, .-_ZN10GCodeQueueC2Ev
  42              		.global	_ZN10GCodeQueueC1Ev
  43              		.thumb_set _ZN10GCodeQueueC1Ev,_ZN10GCodeQueueC2Ev
  44              		.section	.text._ZN10GCodeQueue9QueueCodeER11GCodeBufferm,"ax",%progbits
  45              		.align	2
  46              		.global	_ZN10GCodeQueue9QueueCodeER11GCodeBufferm
  47              		.thumb
  48              		.thumb_func
  49              		.type	_ZN10GCodeQueue9QueueCodeER11GCodeBufferm, %function
  50              	_ZN10GCodeQueue9QueueCodeER11GCodeBufferm:
  51              		@ args = 0, pretend = 0, frame = 104
  52              		@ frame_needed = 0, uses_anonymous_args = 0
  53 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
  54 0004 4A4B     		ldr	r3, .L52
  55 0006 9B68     		ldr	r3, [r3, #8]
  56 0008 D3F8507C 		ldr	r7, [r3, #3152]
  57 000c D3F8543C 		ldr	r3, [r3, #3156]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccG7qjoo.s 			page 2


  58 0010 1744     		add	r7, r7, r2
  59 0012 9F42     		cmp	r7, r3
  60 0014 9AB0     		sub	sp, sp, #104
  61 0016 8146     		mov	r9, r0
  62 0018 0D46     		mov	r5, r1
  63 001a 3FD0     		beq	.L8
  64 001c 0846     		mov	r0, r1
  65 001e FFF7FEFF 		bl	_ZN11GCodeBuffer16GetCommandLetterEv
  66 0022 4728     		cmp	r0, #71
  67 0024 35D0     		beq	.L9
  68 0026 4D28     		cmp	r0, #77
  69 0028 38D1     		bne	.L8
  70 002a 2846     		mov	r0, r5
  71 002c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
  72 0030 6828     		cmp	r0, #104
  73 0032 05D0     		beq	.L15
  74 0034 A0F18C03 		sub	r3, r0, #140
  75 0038 012B     		cmp	r3, #1
  76 003a 61D9     		bls	.L26
  77 003c 7528     		cmp	r0, #117
  78 003e 44D1     		bne	.L45
  79              	.L15:
  80 0040 D9F80060 		ldr	r6, [r9]
  81 0044 002E     		cmp	r6, #0
  82 0046 5DD0     		beq	.L46
  83 0048 341D     		adds	r4, r6, #4
  84 004a 4FF0010A 		mov	r10, #1
  85              	.L18:
  86 004e 3368     		ldr	r3, [r6]
  87 0050 C9F80030 		str	r3, [r9]
  88 0054 D5F88830 		ldr	r3, [r5, #136]
  89 0058 F366     		str	r3, [r6, #108]
  90 005a 2046     		mov	r0, r4
  91 005c 05F10C01 		add	r1, r5, #12
  92 0060 6422     		movs	r2, #100
  93 0062 FFF7FEFF 		bl	strncpy
  94 0066 0023     		movs	r3, #0
  95 0068 86F86730 		strb	r3, [r6, #103]
  96 006c D9F80440 		ldr	r4, [r9, #4]
  97 0070 B766     		str	r7, [r6, #104]
  98 0072 0CB9     		cbnz	r4, .L22
  99 0074 41E0     		b	.L51
 100              	.L48:
 101 0076 1C46     		mov	r4, r3
 102              	.L22:
 103 0078 2368     		ldr	r3, [r4]
 104 007a 002B     		cmp	r3, #0
 105 007c FBD1     		bne	.L48
 106 007e 2660     		str	r6, [r4]
 107              	.L20:
 108 0080 0023     		movs	r3, #0
 109 0082 3360     		str	r3, [r6]
 110 0084 BAF1000F 		cmp	r10, #0
 111 0088 0CD0     		beq	.L49
 112              	.L25:
 113 008a 5046     		mov	r0, r10
 114 008c 1AB0     		add	sp, sp, #104
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccG7qjoo.s 			page 3


 115              		@ sp needed
 116 008e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 117              	.L9:
 118 0092 2846     		mov	r0, r5
 119 0094 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 120 0098 0A28     		cmp	r0, #10
 121 009a 0FD0     		beq	.L50
 122              	.L8:
 123 009c 0020     		movs	r0, #0
 124 009e 1AB0     		add	sp, sp, #104
 125              		@ sp needed
 126 00a0 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 127              	.L49:
 128 00a4 4246     		mov	r2, r8
 129 00a6 2846     		mov	r0, r5
 130 00a8 01A9     		add	r1, sp, #4
 131 00aa FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEPKcj
 132 00ae 0028     		cmp	r0, #0
 133 00b0 EBD1     		bne	.L25
 134 00b2 2846     		mov	r0, r5
 135 00b4 0A21     		movs	r1, #10
 136 00b6 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEc
 137 00ba E6E7     		b	.L25
 138              	.L50:
 139 00bc 2846     		mov	r0, r5
 140 00be 5021     		movs	r1, #80
 141 00c0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 142 00c4 0028     		cmp	r0, #0
 143 00c6 E9D0     		beq	.L8
 144 00c8 BAE7     		b	.L15
 145              	.L45:
 146 00ca A0F16A02 		sub	r2, r0, #106
 147 00ce 9028     		cmp	r0, #144
 148 00d0 18BF     		it	ne
 149 00d2 012A     		cmpne	r2, #1
 150 00d4 8CBF     		ite	hi
 151 00d6 0022     		movhi	r2, #0
 152 00d8 0122     		movls	r2, #1
 153 00da B0F5967F 		cmp	r0, #300
 154 00de AFD0     		beq	.L15
 155              	.L16:
 156 00e0 B0F58C7F 		cmp	r0, #280
 157 00e4 ACD0     		beq	.L15
 158 00e6 A0F17E03 		sub	r3, r0, #126
 159 00ea B0F5D27F 		cmp	r0, #420
 160 00ee 18BF     		it	ne
 161 00f0 012B     		cmpne	r3, #1
 162 00f2 A5D9     		bls	.L15
 163 00f4 002A     		cmp	r2, #0
 164 00f6 A3D1     		bne	.L15
 165 00f8 D0E7     		b	.L8
 166              	.L51:
 167 00fa C9F80460 		str	r6, [r9, #4]
 168 00fe BFE7     		b	.L20
 169              	.L26:
 170 0100 0122     		movs	r2, #1
 171 0102 EDE7     		b	.L16
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccG7qjoo.s 			page 4


 172              	.L46:
 173 0104 D9F80460 		ldr	r6, [r9, #4]
 174 0108 341D     		adds	r4, r6, #4
 175 010a 2046     		mov	r0, r4
 176 010c FFF7FEFF 		bl	strlen
 177 0110 2146     		mov	r1, r4
 178 0112 0246     		mov	r2, r0
 179 0114 8046     		mov	r8, r0
 180 0116 01A8     		add	r0, sp, #4
 181 0118 FFF7FEFF 		bl	strncpy
 182 011c 0023     		movs	r3, #0
 183 011e 8DF86730 		strb	r3, [sp, #103]
 184 0122 3268     		ldr	r2, [r6]
 185 0124 C9F80420 		str	r2, [r9, #4]
 186 0128 9A46     		mov	r10, r3
 187 012a 3360     		str	r3, [r6]
 188 012c 8FE7     		b	.L18
 189              	.L53:
 190 012e 00BF     		.align	2
 191              	.L52:
 192 0130 00000000 		.word	reprap
 193              		.size	_ZN10GCodeQueue9QueueCodeER11GCodeBufferm, .-_ZN10GCodeQueue9QueueCodeER11GCodeBufferm
 194              		.section	.text._ZN10GCodeQueue12PurgeEntriesEv,"ax",%progbits
 195              		.align	2
 196              		.global	_ZN10GCodeQueue12PurgeEntriesEv
 197              		.thumb
 198              		.thumb_func
 199              		.type	_ZN10GCodeQueue12PurgeEntriesEv, %function
 200              	_ZN10GCodeQueue12PurgeEntriesEv:
 201              		@ args = 0, pretend = 0, frame = 0
 202              		@ frame_needed = 0, uses_anonymous_args = 0
 203              		@ link register save eliminated.
 204 0000 4368     		ldr	r3, [r0, #4]
 205 0002 30B4     		push	{r4, r5}
 206 0004 83B1     		cbz	r3, .L54
 207 0006 0E4D     		ldr	r5, .L65
 208 0008 0024     		movs	r4, #0
 209              	.L60:
 210 000a A968     		ldr	r1, [r5, #8]
 211 000c 9A6E     		ldr	r2, [r3, #104]
 212 000e D1F8501C 		ldr	r1, [r1, #3152]
 213 0012 8A42     		cmp	r2, r1
 214 0014 0AD9     		bls	.L56
 215 0016 0168     		ldr	r1, [r0]
 216 0018 1A68     		ldr	r2, [r3]
 217 001a 1960     		str	r1, [r3]
 218 001c 0360     		str	r3, [r0]
 219 001e 54B1     		cbz	r4, .L64
 220 0020 1346     		mov	r3, r2
 221 0022 2260     		str	r2, [r4]
 222 0024 002B     		cmp	r3, #0
 223 0026 F0D1     		bne	.L60
 224              	.L54:
 225 0028 30BC     		pop	{r4, r5}
 226 002a 7047     		bx	lr
 227              	.L56:
 228 002c 1C46     		mov	r4, r3
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccG7qjoo.s 			page 5


 229 002e 1B68     		ldr	r3, [r3]
 230 0030 002B     		cmp	r3, #0
 231 0032 EAD1     		bne	.L60
 232 0034 F8E7     		b	.L54
 233              	.L64:
 234 0036 1346     		mov	r3, r2
 235 0038 4260     		str	r2, [r0, #4]
 236 003a 002B     		cmp	r3, #0
 237 003c E5D1     		bne	.L60
 238 003e F3E7     		b	.L54
 239              	.L66:
 240              		.align	2
 241              	.L65:
 242 0040 00000000 		.word	reprap
 243              		.size	_ZN10GCodeQueue12PurgeEntriesEv, .-_ZN10GCodeQueue12PurgeEntriesEv
 244              		.section	.text._ZN10GCodeQueue5ClearEv,"ax",%progbits
 245              		.align	2
 246              		.global	_ZN10GCodeQueue5ClearEv
 247              		.thumb
 248              		.thumb_func
 249              		.type	_ZN10GCodeQueue5ClearEv, %function
 250              	_ZN10GCodeQueue5ClearEv:
 251              		@ args = 0, pretend = 0, frame = 0
 252              		@ frame_needed = 0, uses_anonymous_args = 0
 253              		@ link register save eliminated.
 254 0000 4368     		ldr	r3, [r0, #4]
 255 0002 4BB1     		cbz	r3, .L67
 256 0004 0168     		ldr	r1, [r0]
 257 0006 01E0     		b	.L70
 258              	.L74:
 259 0008 1946     		mov	r1, r3
 260 000a 1346     		mov	r3, r2
 261              	.L70:
 262 000c 1A68     		ldr	r2, [r3]
 263 000e 4260     		str	r2, [r0, #4]
 264 0010 1960     		str	r1, [r3]
 265 0012 0360     		str	r3, [r0]
 266 0014 002A     		cmp	r2, #0
 267 0016 F7D1     		bne	.L74
 268              	.L67:
 269 0018 7047     		bx	lr
 270              		.size	_ZN10GCodeQueue5ClearEv, .-_ZN10GCodeQueue5ClearEv
 271 001a 00BF     		.section	.text._ZN10GCodeQueue11DiagnosticsE11MessageType,"ax",%progbits
 272              		.align	2
 273              		.global	_ZN10GCodeQueue11DiagnosticsE11MessageType
 274              		.thumb
 275              		.thumb_func
 276              		.type	_ZN10GCodeQueue11DiagnosticsE11MessageType, %function
 277              	_ZN10GCodeQueue11DiagnosticsE11MessageType:
 278              		@ args = 0, pretend = 0, frame = 0
 279              		@ frame_needed = 0, uses_anonymous_args = 0
 280 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 281 0004 154B     		ldr	r3, .L84
 282 0006 4568     		ldr	r5, [r0, #4]
 283 0008 154F     		ldr	r7, .L84+4
 284 000a 164E     		ldr	r6, .L84+8
 285 000c 164A     		ldr	r2, .L84+12
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccG7qjoo.s 			page 6


 286 000e 0446     		mov	r4, r0
 287 0010 002D     		cmp	r5, #0
 288 0012 18BF     		it	ne
 289 0014 3B46     		movne	r3, r7
 290 0016 82B0     		sub	sp, sp, #8
 291 0018 3068     		ldr	r0, [r6]
 292 001a 0F46     		mov	r7, r1
 293 001c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 294 0020 6468     		ldr	r4, [r4, #4]
 295 0022 BCB1     		cbz	r4, .L75
 296 0024 0025     		movs	r5, #0
 297              	.L79:
 298 0026 A36E     		ldr	r3, [r4, #104]
 299 0028 0093     		str	r3, [sp]
 300 002a 3068     		ldr	r0, [r6]
 301 002c 0F4A     		ldr	r2, .L84+16
 302 002e DFF83480 		ldr	r8, .L84+8
 303 0032 231D     		adds	r3, r4, #4
 304 0034 3946     		mov	r1, r7
 305 0036 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 306 003a 2468     		ldr	r4, [r4]
 307 003c 0135     		adds	r5, r5, #1
 308 003e 002C     		cmp	r4, #0
 309 0040 F1D1     		bne	.L79
 310 0042 0824     		movs	r4, #8
 311 0044 D8F80000 		ldr	r0, [r8]
 312 0048 094A     		ldr	r2, .L84+20
 313 004a 0094     		str	r4, [sp]
 314 004c 3946     		mov	r1, r7
 315 004e 2B46     		mov	r3, r5
 316 0050 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 317              	.L75:
 318 0054 02B0     		add	sp, sp, #8
 319              		@ sp needed
 320 0056 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 321              	.L85:
 322 005a 00BF     		.align	2
 323              	.L84:
 324 005c 00000000 		.word	.LC0
 325 0060 08000000 		.word	.LC1
 326 0064 00000000 		.word	reprap
 327 0068 14000000 		.word	.LC2
 328 006c 28000000 		.word	.LC3
 329 0070 44000000 		.word	.LC4
 330              		.size	_ZN10GCodeQueue11DiagnosticsE11MessageType, .-_ZN10GCodeQueue11DiagnosticsE11MessageType
 331              		.section	.text._ZN10QueuedCode10AssignFromER11GCodeBuffer,"ax",%progbits
 332              		.align	2
 333              		.global	_ZN10QueuedCode10AssignFromER11GCodeBuffer
 334              		.thumb
 335              		.thumb_func
 336              		.type	_ZN10QueuedCode10AssignFromER11GCodeBuffer, %function
 337              	_ZN10QueuedCode10AssignFromER11GCodeBuffer:
 338              		@ args = 0, pretend = 0, frame = 0
 339              		@ frame_needed = 0, uses_anonymous_args = 0
 340 0000 10B5     		push	{r4, lr}
 341 0002 D1F88830 		ldr	r3, [r1, #136]
 342 0006 C366     		str	r3, [r0, #108]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccG7qjoo.s 			page 7


 343 0008 0446     		mov	r4, r0
 344 000a 0C31     		adds	r1, r1, #12
 345 000c 0430     		adds	r0, r0, #4
 346 000e 6422     		movs	r2, #100
 347 0010 FFF7FEFF 		bl	strncpy
 348 0014 0023     		movs	r3, #0
 349 0016 84F86730 		strb	r3, [r4, #103]
 350 001a 10BD     		pop	{r4, pc}
 351              		.size	_ZN10QueuedCode10AssignFromER11GCodeBuffer, .-_ZN10QueuedCode10AssignFromER11GCodeBuffer
 352              		.section	.text._ZN10QueuedCode8AssignToEP11GCodeBuffer,"ax",%progbits
 353              		.align	2
 354              		.global	_ZN10QueuedCode8AssignToEP11GCodeBuffer
 355              		.thumb
 356              		.thumb_func
 357              		.type	_ZN10QueuedCode8AssignToEP11GCodeBuffer, %function
 358              	_ZN10QueuedCode8AssignToEP11GCodeBuffer:
 359              		@ args = 0, pretend = 0, frame = 0
 360              		@ frame_needed = 0, uses_anonymous_args = 0
 361 0000 38B5     		push	{r3, r4, r5, lr}
 362 0002 C36E     		ldr	r3, [r0, #108]
 363 0004 C1F88830 		str	r3, [r1, #136]
 364 0008 051D     		adds	r5, r0, #4
 365 000a 2846     		mov	r0, r5
 366 000c 0C46     		mov	r4, r1
 367 000e FFF7FEFF 		bl	strlen
 368 0012 2946     		mov	r1, r5
 369 0014 0246     		mov	r2, r0
 370 0016 2046     		mov	r0, r4
 371 0018 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEPKcj
 372 001c 00B1     		cbz	r0, .L89
 373 001e 38BD     		pop	{r3, r4, r5, pc}
 374              	.L89:
 375 0020 2046     		mov	r0, r4
 376 0022 0A21     		movs	r1, #10
 377 0024 BDE83840 		pop	{r3, r4, r5, lr}
 378 0028 FFF7FEBF 		b	_ZN11GCodeBuffer3PutEc
 379              		.size	_ZN10QueuedCode8AssignToEP11GCodeBuffer, .-_ZN10QueuedCode8AssignToEP11GCodeBuffer
 380              		.section	.text._ZN10GCodeQueue10FillBufferEP11GCodeBuffer,"ax",%progbits
 381              		.align	2
 382              		.global	_ZN10GCodeQueue10FillBufferEP11GCodeBuffer
 383              		.thumb
 384              		.thumb_func
 385              		.type	_ZN10GCodeQueue10FillBufferEP11GCodeBuffer, %function
 386              	_ZN10GCodeQueue10FillBufferEP11GCodeBuffer:
 387              		@ args = 0, pretend = 0, frame = 0
 388              		@ frame_needed = 0, uses_anonymous_args = 0
 389 0000 38B5     		push	{r3, r4, r5, lr}
 390 0002 4468     		ldr	r4, [r0, #4]
 391 0004 0546     		mov	r5, r0
 392 0006 34B1     		cbz	r4, .L95
 393 0008 094A     		ldr	r2, .L96
 394 000a A36E     		ldr	r3, [r4, #104]
 395 000c 9268     		ldr	r2, [r2, #8]
 396 000e D2F8542C 		ldr	r2, [r2, #3156]
 397 0012 9342     		cmp	r3, r2
 398 0014 01D9     		bls	.L92
 399              	.L95:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccG7qjoo.s 			page 8


 400 0016 0020     		movs	r0, #0
 401 0018 38BD     		pop	{r3, r4, r5, pc}
 402              	.L92:
 403 001a 2046     		mov	r0, r4
 404 001c FFF7FEFF 		bl	_ZN10QueuedCode8AssignToEP11GCodeBuffer
 405 0020 6A68     		ldr	r2, [r5, #4]
 406 0022 2B68     		ldr	r3, [r5]
 407 0024 1268     		ldr	r2, [r2]
 408 0026 6A60     		str	r2, [r5, #4]
 409 0028 0120     		movs	r0, #1
 410 002a 2360     		str	r3, [r4]
 411 002c 2C60     		str	r4, [r5]
 412 002e 38BD     		pop	{r3, r4, r5, pc}
 413              	.L97:
 414              		.align	2
 415              	.L96:
 416 0030 00000000 		.word	reprap
 417              		.size	_ZN10GCodeQueue10FillBufferEP11GCodeBuffer, .-_ZN10GCodeQueue10FillBufferEP11GCodeBuffer
 418              		.section	.rodata.str1.4,"aMS",%progbits,1
 419              		.align	2
 420              	.LC0:
 421 0000 656D7074 		.ascii	"empty.\000"
 421      792E00
 422 0007 00       		.space	1
 423              	.LC1:
 424 0008 6E6F7420 		.ascii	"not empty:\000"
 424      656D7074 
 424      793A00
 425 0013 00       		.space	1
 426              	.LC2:
 427 0014 436F6465 		.ascii	"Code queue is %s\012\000"
 427      20717565 
 427      75652069 
 427      73202573 
 427      0A00
 428 0026 0000     		.space	2
 429              	.LC3:
 430 0028 51756575 		.ascii	"Queued '%s' for move %d\012\000"
 430      65642027 
 430      25732720 
 430      666F7220 
 430      6D6F7665 
 431 0041 000000   		.space	3
 432              	.LC4:
 433 0044 2564206F 		.ascii	"%d of %d codes have been queued.\012\000"
 433      66202564 
 433      20636F64 
 433      65732068 
 433      61766520 
 434 0066 0000     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 435              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 436              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 437              	_ZL28cpu_irq_prev_interrupt_state:
 438 0000 00       		.space	1
 439              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 440              		.align	2
 441              		.type	_ZL32cpu_irq_critical_section_counter, %object
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccG7qjoo.s 			page 9


 442              		.size	_ZL32cpu_irq_critical_section_counter, 4
 443              	_ZL32cpu_irq_critical_section_counter:
 444 0000 00000000 		.space	4
 445              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
