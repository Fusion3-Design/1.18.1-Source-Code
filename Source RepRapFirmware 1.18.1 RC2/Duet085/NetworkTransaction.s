ARM GAS  C:\Users\George\AppData\Local\Temp\ccymkz22.s 			page 1


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
  14              		.file	"NetworkTransaction.cpp"
  15              		.section	.text.conn_sent,"ax",%progbits
  16              		.align	2
  17              		.thumb
  18              		.thumb_func
  19              		.type	conn_sent, %function
  20              	conn_sent:
  21              		@ args = 0, pretend = 0, frame = 0
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23 0000 10B5     		push	{r4, lr}
  24 0002 0E4C     		ldr	r4, .L7
  25 0004 2368     		ldr	r3, [r4]
  26 0006 8342     		cmp	r3, r0
  27 0008 07D0     		beq	.L6
  28 000a 0D4B     		ldr	r3, .L7+4
  29 000c 0221     		movs	r1, #2
  30 000e 1868     		ldr	r0, [r3]
  31 0010 0C4A     		ldr	r2, .L7+8
  32 0012 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
  33              	.L4:
  34 0016 0020     		movs	r0, #0
  35 0018 10BD     		pop	{r4, pc}
  36              	.L6:
  37 001a 0B4B     		ldr	r3, .L7+12
  38 001c 1888     		ldrh	r0, [r3]
  39 001e 9042     		cmp	r0, r2
  40 0020 03D9     		bls	.L3
  41 0022 821A     		subs	r2, r0, r2
  42 0024 1A80     		strh	r2, [r3]	@ movhi
  43 0026 0020     		movs	r0, #0
  44 0028 10BD     		pop	{r4, pc}
  45              	.L3:
  46 002a 0846     		mov	r0, r1
  47 002c 0222     		movs	r2, #2
  48 002e 0021     		movs	r1, #0
  49 0030 FFF7FEFF 		bl	tcp_poll
  50 0034 0023     		movs	r3, #0
  51 0036 2360     		str	r3, [r4]
  52 0038 EDE7     		b	.L4
  53              	.L8:
  54 003a 00BF     		.align	2
  55              	.L7:
  56 003c 00000000 		.word	sendingConnection
  57 0040 00000000 		.word	reprap
ARM GAS  C:\Users\George\AppData\Local\Temp\ccymkz22.s 			page 2


  58 0044 00000000 		.word	.LC0
  59 0048 00000000 		.word	sentDataOutstanding
  60              		.size	conn_sent, .-conn_sent
  61              		.section	.text.conn_poll,"ax",%progbits
  62              		.align	2
  63              		.thumb
  64              		.thumb_func
  65              		.type	conn_poll, %function
  66              	conn_poll:
  67              		@ args = 0, pretend = 0, frame = 0
  68              		@ frame_needed = 0, uses_anonymous_args = 0
  69 0000 30B5     		push	{r4, r5, lr}
  70 0002 3C4B     		ldr	r3, .L36
  71 0004 83B0     		sub	sp, sp, #12
  72 0006 1B68     		ldr	r3, [r3]
  73 0008 0C46     		mov	r4, r1
  74 000a 8342     		cmp	r3, r0
  75 000c 09D0     		beq	.L31
  76 000e 3A4B     		ldr	r3, .L36+4
  77 0010 0221     		movs	r1, #2
  78 0012 1868     		ldr	r0, [r3]
  79 0014 394A     		ldr	r2, .L36+8
  80 0016 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
  81              	.L30:
  82 001a 0020     		movs	r0, #0
  83              	.L12:
  84 001c 40B2     		sxtb	r0, r0
  85 001e 03B0     		add	sp, sp, #12
  86              		@ sp needed
  87 0020 30BD     		pop	{r4, r5, pc}
  88              	.L31:
  89 0022 374A     		ldr	r2, .L36+12
  90 0024 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
  91 0026 0133     		adds	r3, r3, #1
  92 0028 DBB2     		uxtb	r3, r3
  93 002a 082B     		cmp	r3, #8
  94 002c 1370     		strb	r3, [r2]
  95 002e 3CD0     		beq	.L32
  96 0030 344D     		ldr	r5, .L36+16
  97 0032 95F90030 		ldrsb	r3, [r5]
  98 0036 D3B9     		cbnz	r3, .L33
  99              	.L14:
 100 0038 334D     		ldr	r5, .L36+20
 101 003a 95F90030 		ldrsb	r3, [r5]
 102 003e 002B     		cmp	r3, #0
 103 0040 EBD0     		beq	.L30
 104 0042 2046     		mov	r0, r4
 105 0044 FFF7FEFF 		bl	tcp_output
 106 0048 10F1090F 		cmn	r0, #9
 107 004c 0346     		mov	r3, r0
 108 004e 2870     		strb	r0, [r5]
 109 0050 3ADB     		blt	.L34
 110 0052 0028     		cmp	r0, #0
 111 0054 E1D0     		beq	.L30
 112 0056 284A     		ldr	r2, .L36+4
 113 0058 B2F84010 		ldrh	r1, [r2, #64]
 114 005c 8907     		lsls	r1, r1, #30
ARM GAS  C:\Users\George\AppData\Local\Temp\ccymkz22.s 			page 3


 115 005e DCD5     		bpl	.L30
 116 0060 1068     		ldr	r0, [r2]
 117 0062 0221     		movs	r1, #2
 118 0064 294A     		ldr	r2, .L36+24
 119 0066 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 120 006a 0020     		movs	r0, #0
 121 006c D6E7     		b	.L12
 122              	.L33:
 123 006e 284A     		ldr	r2, .L36+28
 124 0070 2849     		ldr	r1, .L36+32
 125 0072 294B     		ldr	r3, .L36+36
 126 0074 1288     		ldrh	r2, [r2]
 127 0076 0988     		ldrh	r1, [r1]
 128 0078 1B68     		ldr	r3, [r3]
 129 007a 891A     		subs	r1, r1, r2
 130 007c 1944     		add	r1, r1, r3
 131 007e 2046     		mov	r0, r4
 132 0080 0023     		movs	r3, #0
 133 0082 FFF7FEFF 		bl	tcp_write
 134 0086 10F1090F 		cmn	r0, #9
 135 008a 0346     		mov	r3, r0
 136 008c 2870     		strb	r0, [r5]
 137 008e 26DB     		blt	.L35
 138 0090 0028     		cmp	r0, #0
 139 0092 D1D0     		beq	.L14
 140 0094 184A     		ldr	r2, .L36+4
 141 0096 B2F84010 		ldrh	r1, [r2, #64]
 142 009a 8807     		lsls	r0, r1, #30
 143 009c CCD5     		bpl	.L14
 144 009e 1068     		ldr	r0, [r2]
 145 00a0 0221     		movs	r1, #2
 146 00a2 1E4A     		ldr	r2, .L36+40
 147 00a4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 148 00a8 C6E7     		b	.L14
 149              	.L32:
 150 00aa 1D4B     		ldr	r3, .L36+44
 151 00ac 1249     		ldr	r1, .L36+4
 152 00ae 0022     		movs	r2, #0
 153 00b0 0868     		ldr	r0, [r1]
 154 00b2 CDE90023 		strd	r2, [sp]
 155 00b6 0221     		movs	r1, #2
 156 00b8 1A4A     		ldr	r2, .L36+48
 157 00ba FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 158 00be 2046     		mov	r0, r4
 159 00c0 FFF7FEFF 		bl	tcp_abort
 160 00c4 F620     		movs	r0, #246
 161 00c6 A9E7     		b	.L12
 162              	.L34:
 163 00c8 0B4A     		ldr	r2, .L36+4
 164 00ca 0221     		movs	r1, #2
 165 00cc 1068     		ldr	r0, [r2]
 166 00ce 164A     		ldr	r2, .L36+52
 167 00d0 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 168 00d4 2046     		mov	r0, r4
 169 00d6 FFF7FEFF 		bl	tcp_abort
 170 00da F620     		movs	r0, #246
 171 00dc 9EE7     		b	.L12
ARM GAS  C:\Users\George\AppData\Local\Temp\ccymkz22.s 			page 4


 172              	.L35:
 173 00de 064A     		ldr	r2, .L36+4
 174 00e0 0221     		movs	r1, #2
 175 00e2 1068     		ldr	r0, [r2]
 176 00e4 114A     		ldr	r2, .L36+56
 177 00e6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 178 00ea 2046     		mov	r0, r4
 179 00ec FFF7FEFF 		bl	tcp_abort
 180 00f0 F620     		movs	r0, #246
 181 00f2 93E7     		b	.L12
 182              	.L37:
 183              		.align	2
 184              	.L36:
 185 00f4 00000000 		.word	sendingConnection
 186 00f8 00000000 		.word	reprap
 187 00fc D0000000 		.word	.LC4
 188 0100 00000000 		.word	sendingRetries
 189 0104 00000000 		.word	writeResult
 190 0108 00000000 		.word	outputResult
 191 010c 28010000 		.word	.LC6
 192 0110 00000000 		.word	sentDataOutstanding
 193 0114 00000000 		.word	sendingWindowSize
 194 0118 00000000 		.word	sendingWindow
 195 011c F8000000 		.word	.LC5
 196 0120 00001040 		.word	1074790400
 197 0124 28000000 		.word	.LC1
 198 0128 98000000 		.word	.LC3
 199 012c 60000000 		.word	.LC2
 200              		.size	conn_poll, .-conn_poll
 201              		.section	.text._ZN18NetworkTransactionC2EPS_,"ax",%progbits
 202              		.align	2
 203              		.global	_ZN18NetworkTransactionC2EPS_
 204              		.thumb
 205              		.thumb_func
 206              		.type	_ZN18NetworkTransactionC2EPS_, %function
 207              	_ZN18NetworkTransactionC2EPS_:
 208              		@ args = 0, pretend = 0, frame = 0
 209              		@ frame_needed = 0, uses_anonymous_args = 0
 210 0000 38B5     		push	{r3, r4, r5, lr}
 211 0002 0446     		mov	r4, r0
 212 0004 0025     		movs	r5, #0
 213 0006 4160     		str	r1, [r0, #4]
 214 0008 84F82450 		strb	r5, [r4, #36]
 215 000c 1420     		movs	r0, #20
 216 000e FFF7FEFF 		bl	_Znwj
 217 0012 0346     		mov	r3, r0
 218 0014 0560     		str	r5, [r0]
 219 0016 2046     		mov	r0, r4
 220 0018 E361     		str	r3, [r4, #28]
 221 001a 38BD     		pop	{r3, r4, r5, pc}
 222              		.size	_ZN18NetworkTransactionC2EPS_, .-_ZN18NetworkTransactionC2EPS_
 223              		.global	_ZN18NetworkTransactionC1EPS_
 224              		.thumb_set _ZN18NetworkTransactionC1EPS_,_ZN18NetworkTransactionC2EPS_
 225              		.section	.text._ZN18NetworkTransaction3SetEP4pbufP15ConnectionState17TransactionStatus,"ax",%progb
 226              		.align	2
 227              		.global	_ZN18NetworkTransaction3SetEP4pbufP15ConnectionState17TransactionStatus
 228              		.thumb
ARM GAS  C:\Users\George\AppData\Local\Temp\ccymkz22.s 			page 5


 229              		.thumb_func
 230              		.type	_ZN18NetworkTransaction3SetEP4pbufP15ConnectionState17TransactionStatus, %function
 231              	_ZN18NetworkTransaction3SetEP4pbufP15ConnectionState17TransactionStatus:
 232              		@ args = 0, pretend = 0, frame = 0
 233              		@ frame_needed = 0, uses_anonymous_args = 0
 234              		@ link register save eliminated.
 235 0000 10B4     		push	{r4}
 236 0002 0024     		movs	r4, #0
 237 0004 80F82430 		strb	r3, [r0, #36]
 238 0008 4461     		str	r4, [r0, #20]
 239 000a 0462     		str	r4, [r0, #32]
 240 000c 8461     		str	r4, [r0, #24]
 241 000e 80F82540 		strb	r4, [r0, #37]
 242 0012 0260     		str	r2, [r0]
 243 0014 8460     		str	r4, [r0, #8]
 244 0016 0161     		str	r1, [r0, #16]
 245 0018 80F82640 		strb	r4, [r0, #38]
 246 001c C160     		str	r1, [r0, #12]
 247 001e 5DF8044B 		ldr	r4, [sp], #4
 248 0022 7047     		bx	lr
 249              		.size	_ZN18NetworkTransaction3SetEP4pbufP15ConnectionState17TransactionStatus, .-_ZN18NetworkTrans
 250              		.section	.text._ZN18NetworkTransaction4ReadERc,"ax",%progbits
 251              		.align	2
 252              		.global	_ZN18NetworkTransaction4ReadERc
 253              		.thumb
 254              		.thumb_func
 255              		.type	_ZN18NetworkTransaction4ReadERc, %function
 256              	_ZN18NetworkTransaction4ReadERc:
 257              		@ args = 0, pretend = 0, frame = 0
 258              		@ frame_needed = 0, uses_anonymous_args = 0
 259              		@ link register save eliminated.
 260 0000 0369     		ldr	r3, [r0, #16]
 261 0002 10B4     		push	{r4}
 262 0004 93B1     		cbz	r3, .L44
 263 0006 4269     		ldr	r2, [r0, #20]
 264 0008 5B68     		ldr	r3, [r3, #4]
 265 000a 541C     		adds	r4, r2, #1
 266 000c 4461     		str	r4, [r0, #20]
 267 000e 9B5C     		ldrb	r3, [r3, r2]	@ zero_extendqisi2
 268 0010 0B70     		strb	r3, [r1]
 269 0012 0369     		ldr	r3, [r0, #16]
 270 0014 4269     		ldr	r2, [r0, #20]
 271 0016 5989     		ldrh	r1, [r3, #10]
 272 0018 5DF8044B 		ldr	r4, [sp], #4
 273 001c 8A42     		cmp	r2, r1
 274 001e 01BF     		itttt	eq
 275 0020 1B68     		ldreq	r3, [r3]
 276 0022 0022     		moveq	r2, #0
 277 0024 0361     		streq	r3, [r0, #16]
 278 0026 4261     		streq	r2, [r0, #20]
 279 0028 0120     		movs	r0, #1
 280 002a 7047     		bx	lr
 281              	.L44:
 282 002c 0B70     		strb	r3, [r1]
 283 002e 1846     		mov	r0, r3
 284 0030 5DF8044B 		ldr	r4, [sp], #4
 285 0034 7047     		bx	lr
ARM GAS  C:\Users\George\AppData\Local\Temp\ccymkz22.s 			page 6


 286              		.size	_ZN18NetworkTransaction4ReadERc, .-_ZN18NetworkTransaction4ReadERc
 287 0036 00BF     		.section	.text._ZN18NetworkTransaction10ReadBufferERPKcRj,"ax",%progbits
 288              		.align	2
 289              		.global	_ZN18NetworkTransaction10ReadBufferERPKcRj
 290              		.thumb
 291              		.thumb_func
 292              		.type	_ZN18NetworkTransaction10ReadBufferERPKcRj, %function
 293              	_ZN18NetworkTransaction10ReadBufferERPKcRj:
 294              		@ args = 0, pretend = 0, frame = 0
 295              		@ frame_needed = 0, uses_anonymous_args = 0
 296              		@ link register save eliminated.
 297 0000 0346     		mov	r3, r0
 298 0002 0069     		ldr	r0, [r0, #16]
 299 0004 70B4     		push	{r4, r5, r6}
 300 0006 B8B1     		cbz	r0, .L49
 301 0008 5C69     		ldr	r4, [r3, #20]
 302 000a 4589     		ldrh	r5, [r0, #10]
 303 000c AC42     		cmp	r4, r5
 304 000e 0DD2     		bcs	.L53
 305              	.L48:
 306 0010 4068     		ldr	r0, [r0, #4]
 307 0012 0025     		movs	r5, #0
 308 0014 2044     		add	r0, r0, r4
 309 0016 0860     		str	r0, [r1]
 310 0018 1969     		ldr	r1, [r3, #16]
 311 001a 0120     		movs	r0, #1
 312 001c 4E89     		ldrh	r6, [r1, #10]
 313 001e 0968     		ldr	r1, [r1]
 314 0020 341B     		subs	r4, r6, r4
 315 0022 1460     		str	r4, [r2]
 316 0024 5D61     		str	r5, [r3, #20]
 317 0026 1961     		str	r1, [r3, #16]
 318 0028 70BC     		pop	{r4, r5, r6}
 319 002a 7047     		bx	lr
 320              	.L53:
 321 002c 0068     		ldr	r0, [r0]
 322 002e 0024     		movs	r4, #0
 323 0030 1861     		str	r0, [r3, #16]
 324 0032 5C61     		str	r4, [r3, #20]
 325 0034 0028     		cmp	r0, #0
 326 0036 EBD1     		bne	.L48
 327              	.L49:
 328 0038 0020     		movs	r0, #0
 329 003a 70BC     		pop	{r4, r5, r6}
 330 003c 7047     		bx	lr
 331              		.size	_ZN18NetworkTransaction10ReadBufferERPKcRj, .-_ZN18NetworkTransaction10ReadBufferERPKcRj
 332 003e 00BF     		.section	.text._ZN18NetworkTransaction5WriteEc,"ax",%progbits
 333              		.align	2
 334              		.global	_ZN18NetworkTransaction5WriteEc
 335              		.thumb
 336              		.thumb_func
 337              		.type	_ZN18NetworkTransaction5WriteEc, %function
 338              	_ZN18NetworkTransaction5WriteEc:
 339              		@ args = 0, pretend = 0, frame = 8
 340              		@ frame_needed = 0, uses_anonymous_args = 0
 341 0000 10B5     		push	{r4, lr}
 342 0002 0368     		ldr	r3, [r0]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccymkz22.s 			page 7


 343 0004 82B0     		sub	sp, sp, #8
 344 0006 0446     		mov	r4, r0
 345 0008 5BB1     		cbz	r3, .L54
 346 000a 1B68     		ldr	r3, [r3]
 347 000c 4BB1     		cbz	r3, .L54
 348 000e 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 349 0012 33B1     		cbz	r3, .L54
 350 0014 8069     		ldr	r0, [r0, #24]
 351 0016 30B1     		cbz	r0, .L60
 352              	.L59:
 353 0018 02B0     		add	sp, sp, #8
 354              		@ sp needed
 355 001a BDE81040 		pop	{r4, lr}
 356 001e FFF7FEBF 		b	_ZN12OutputBuffer3catEc
 357              	.L54:
 358 0022 02B0     		add	sp, sp, #8
 359              		@ sp needed
 360 0024 10BD     		pop	{r4, pc}
 361              	.L60:
 362 0026 04F11800 		add	r0, r4, #24
 363 002a 0191     		str	r1, [sp, #4]
 364 002c FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 365 0030 0199     		ldr	r1, [sp, #4]
 366 0032 0028     		cmp	r0, #0
 367 0034 F5D0     		beq	.L54
 368 0036 A069     		ldr	r0, [r4, #24]
 369 0038 EEE7     		b	.L59
 370              		.size	_ZN18NetworkTransaction5WriteEc, .-_ZN18NetworkTransaction5WriteEc
 371 003a 00BF     		.section	.text._ZN18NetworkTransaction5WriteEPKc,"ax",%progbits
 372              		.align	2
 373              		.global	_ZN18NetworkTransaction5WriteEPKc
 374              		.thumb
 375              		.thumb_func
 376              		.type	_ZN18NetworkTransaction5WriteEPKc, %function
 377              	_ZN18NetworkTransaction5WriteEPKc:
 378              		@ args = 0, pretend = 0, frame = 8
 379              		@ frame_needed = 0, uses_anonymous_args = 0
 380 0000 10B5     		push	{r4, lr}
 381 0002 0368     		ldr	r3, [r0]
 382 0004 82B0     		sub	sp, sp, #8
 383 0006 0446     		mov	r4, r0
 384 0008 5BB1     		cbz	r3, .L67
 385 000a 1B68     		ldr	r3, [r3]
 386 000c 4BB1     		cbz	r3, .L67
 387 000e 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 388 0012 33B1     		cbz	r3, .L67
 389 0014 8069     		ldr	r0, [r0, #24]
 390 0016 30B1     		cbz	r0, .L73
 391              	.L72:
 392 0018 02B0     		add	sp, sp, #8
 393              		@ sp needed
 394 001a BDE81040 		pop	{r4, lr}
 395 001e FFF7FEBF 		b	_ZN12OutputBuffer3catEPKc
 396              	.L67:
 397 0022 02B0     		add	sp, sp, #8
 398              		@ sp needed
 399 0024 10BD     		pop	{r4, pc}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccymkz22.s 			page 8


 400              	.L73:
 401 0026 04F11800 		add	r0, r4, #24
 402 002a 0191     		str	r1, [sp, #4]
 403 002c FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 404 0030 0199     		ldr	r1, [sp, #4]
 405 0032 0028     		cmp	r0, #0
 406 0034 F5D0     		beq	.L67
 407 0036 A069     		ldr	r0, [r4, #24]
 408 0038 EEE7     		b	.L72
 409              		.size	_ZN18NetworkTransaction5WriteEPKc, .-_ZN18NetworkTransaction5WriteEPKc
 410 003a 00BF     		.section	.text._ZN18NetworkTransaction5WriteEPKcj,"ax",%progbits
 411              		.align	2
 412              		.global	_ZN18NetworkTransaction5WriteEPKcj
 413              		.thumb
 414              		.thumb_func
 415              		.type	_ZN18NetworkTransaction5WriteEPKcj, %function
 416              	_ZN18NetworkTransaction5WriteEPKcj:
 417              		@ args = 0, pretend = 0, frame = 8
 418              		@ frame_needed = 0, uses_anonymous_args = 0
 419 0000 10B5     		push	{r4, lr}
 420 0002 0368     		ldr	r3, [r0]
 421 0004 82B0     		sub	sp, sp, #8
 422 0006 0446     		mov	r4, r0
 423 0008 5BB1     		cbz	r3, .L80
 424 000a 1B68     		ldr	r3, [r3]
 425 000c 4BB1     		cbz	r3, .L80
 426 000e 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 427 0012 33B1     		cbz	r3, .L80
 428 0014 8069     		ldr	r0, [r0, #24]
 429 0016 30B1     		cbz	r0, .L86
 430              	.L85:
 431 0018 02B0     		add	sp, sp, #8
 432              		@ sp needed
 433 001a BDE81040 		pop	{r4, lr}
 434 001e FFF7FEBF 		b	_ZN12OutputBuffer3catEPKcj
 435              	.L80:
 436 0022 02B0     		add	sp, sp, #8
 437              		@ sp needed
 438 0024 10BD     		pop	{r4, pc}
 439              	.L86:
 440 0026 04F11800 		add	r0, r4, #24
 441 002a 0191     		str	r1, [sp, #4]
 442 002c 0092     		str	r2, [sp]
 443 002e FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 444 0032 0199     		ldr	r1, [sp, #4]
 445 0034 009A     		ldr	r2, [sp]
 446 0036 0028     		cmp	r0, #0
 447 0038 F3D0     		beq	.L80
 448 003a A069     		ldr	r0, [r4, #24]
 449 003c ECE7     		b	.L85
 450              		.size	_ZN18NetworkTransaction5WriteEPKcj, .-_ZN18NetworkTransaction5WriteEPKcj
 451 003e 00BF     		.section	.text._ZN18NetworkTransaction5WriteE9StringRef,"ax",%progbits
 452              		.align	2
 453              		.global	_ZN18NetworkTransaction5WriteE9StringRef
 454              		.thumb
 455              		.thumb_func
 456              		.type	_ZN18NetworkTransaction5WriteE9StringRef, %function
ARM GAS  C:\Users\George\AppData\Local\Temp\ccymkz22.s 			page 9


 457              	_ZN18NetworkTransaction5WriteE9StringRef:
 458              		@ args = 0, pretend = 0, frame = 8
 459              		@ frame_needed = 0, uses_anonymous_args = 0
 460 0000 30B5     		push	{r4, r5, lr}
 461 0002 83B0     		sub	sp, sp, #12
 462 0004 0546     		mov	r5, r0
 463 0006 6846     		mov	r0, sp
 464 0008 8DE80600 		stmia	sp, {r1, r2}
 465 000c 0C46     		mov	r4, r1
 466 000e FFF7FEFF 		bl	_ZNK9StringRef6strlenEv
 467 0012 2146     		mov	r1, r4
 468 0014 0246     		mov	r2, r0
 469 0016 2846     		mov	r0, r5
 470 0018 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKcj
 471 001c 03B0     		add	sp, sp, #12
 472              		@ sp needed
 473 001e 30BD     		pop	{r4, r5, pc}
 474              		.size	_ZN18NetworkTransaction5WriteE9StringRef, .-_ZN18NetworkTransaction5WriteE9StringRef
 475              		.section	.text._ZN18NetworkTransaction5WriteEP12OutputBuffer,"ax",%progbits
 476              		.align	2
 477              		.global	_ZN18NetworkTransaction5WriteEP12OutputBuffer
 478              		.thumb
 479              		.thumb_func
 480              		.type	_ZN18NetworkTransaction5WriteEP12OutputBuffer, %function
 481              	_ZN18NetworkTransaction5WriteEP12OutputBuffer:
 482              		@ args = 0, pretend = 0, frame = 0
 483              		@ frame_needed = 0, uses_anonymous_args = 0
 484              		@ link register save eliminated.
 485 0000 0368     		ldr	r3, [r0]
 486 0002 0A46     		mov	r2, r1
 487 0004 3BB1     		cbz	r3, .L95
 488 0006 1B68     		ldr	r3, [r3]
 489 0008 2BB1     		cbz	r3, .L95
 490 000a 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 491 000e 13B1     		cbz	r3, .L95
 492 0010 C069     		ldr	r0, [r0, #28]
 493 0012 FFF7FEBF 		b	_ZN11OutputStack4PushEP12OutputBuffer
 494              	.L95:
 495 0016 1046     		mov	r0, r2
 496 0018 FFF7FEBF 		b	_ZN12OutputBuffer10ReleaseAllEPS_
 497              		.size	_ZN18NetworkTransaction5WriteEP12OutputBuffer, .-_ZN18NetworkTransaction5WriteEP12OutputBuff
 498              		.section	.text._ZN18NetworkTransaction5WriteEP11OutputStack,"ax",%progbits
 499              		.align	2
 500              		.global	_ZN18NetworkTransaction5WriteEP11OutputStack
 501              		.thumb
 502              		.thumb_func
 503              		.type	_ZN18NetworkTransaction5WriteEP11OutputStack, %function
 504              	_ZN18NetworkTransaction5WriteEP11OutputStack:
 505              		@ args = 0, pretend = 0, frame = 0
 506              		@ frame_needed = 0, uses_anonymous_args = 0
 507              		@ link register save eliminated.
 508 0000 0A46     		mov	r2, r1
 509 0002 61B1     		cbz	r1, .L103
 510 0004 0368     		ldr	r3, [r0]
 511 0006 3BB1     		cbz	r3, .L105
 512 0008 1B68     		ldr	r3, [r3]
 513 000a 2BB1     		cbz	r3, .L105
ARM GAS  C:\Users\George\AppData\Local\Temp\ccymkz22.s 			page 10


 514 000c 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 515 0010 13B1     		cbz	r3, .L105
 516 0012 C069     		ldr	r0, [r0, #28]
 517 0014 FFF7FEBF 		b	_ZN11OutputStack6AppendEPS_
 518              	.L105:
 519 0018 1046     		mov	r0, r2
 520 001a FFF7FEBF 		b	_ZN11OutputStack10ReleaseAllEv
 521              	.L103:
 522 001e 7047     		bx	lr
 523              		.size	_ZN18NetworkTransaction5WriteEP11OutputStack, .-_ZN18NetworkTransaction5WriteEP11OutputStack
 524              		.section	.text._ZN18NetworkTransaction6PrintfEPKcz,"ax",%progbits
 525              		.align	2
 526              		.global	_ZN18NetworkTransaction6PrintfEPKcz
 527              		.thumb
 528              		.thumb_func
 529              		.type	_ZN18NetworkTransaction6PrintfEPKcz, %function
 530              	_ZN18NetworkTransaction6PrintfEPKcz:
 531              		@ args = 4, pretend = 12, frame = 8
 532              		@ frame_needed = 0, uses_anonymous_args = 1
 533 0000 0EB4     		push	{r1, r2, r3}
 534 0002 10B5     		push	{r4, lr}
 535 0004 0368     		ldr	r3, [r0]
 536 0006 83B0     		sub	sp, sp, #12
 537 0008 0446     		mov	r4, r0
 538 000a 63B1     		cbz	r3, .L113
 539 000c 1B68     		ldr	r3, [r3]
 540 000e 53B1     		cbz	r3, .L113
 541 0010 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 542 0014 3BB1     		cbz	r3, .L113
 543 0016 8069     		ldr	r0, [r0, #24]
 544 0018 50B1     		cbz	r0, .L126
 545              	.L116:
 546 001a 06AB     		add	r3, sp, #24
 547 001c 1A46     		mov	r2, r3
 548 001e 0599     		ldr	r1, [sp, #20]
 549 0020 0193     		str	r3, [sp, #4]
 550 0022 FFF7FEFF 		bl	_ZN12OutputBuffer7vprintfEPKcSt9__va_list
 551              	.L113:
 552 0026 03B0     		add	sp, sp, #12
 553              		@ sp needed
 554 0028 BDE81040 		pop	{r4, lr}
 555 002c 03B0     		add	sp, sp, #12
 556 002e 7047     		bx	lr
 557              	.L126:
 558 0030 04F11800 		add	r0, r4, #24
 559 0034 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 560 0038 0028     		cmp	r0, #0
 561 003a F4D0     		beq	.L113
 562 003c A069     		ldr	r0, [r4, #24]
 563 003e ECE7     		b	.L116
 564              		.size	_ZN18NetworkTransaction6PrintfEPKcz, .-_ZN18NetworkTransaction6PrintfEPKcz
 565              		.section	.text._ZN18NetworkTransaction14SetFileToWriteEP9FileStore,"ax",%progbits
 566              		.align	2
 567              		.global	_ZN18NetworkTransaction14SetFileToWriteEP9FileStore
 568              		.thumb
 569              		.thumb_func
 570              		.type	_ZN18NetworkTransaction14SetFileToWriteEP9FileStore, %function
ARM GAS  C:\Users\George\AppData\Local\Temp\ccymkz22.s 			page 11


 571              	_ZN18NetworkTransaction14SetFileToWriteEP9FileStore:
 572              		@ args = 0, pretend = 0, frame = 0
 573              		@ frame_needed = 0, uses_anonymous_args = 0
 574              		@ link register save eliminated.
 575 0000 0368     		ldr	r3, [r0]
 576 0002 23B1     		cbz	r3, .L128
 577 0004 1B68     		ldr	r3, [r3]
 578 0006 13B1     		cbz	r3, .L128
 579 0008 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 580 000c 23B9     		cbnz	r3, .L138
 581              	.L128:
 582 000e 11B1     		cbz	r1, .L139
 583 0010 0846     		mov	r0, r1
 584 0012 FFF7FEBF 		b	_ZN9FileStore5CloseEv
 585              	.L139:
 586 0016 7047     		bx	lr
 587              	.L138:
 588 0018 0162     		str	r1, [r0, #32]
 589 001a 7047     		bx	lr
 590              		.size	_ZN18NetworkTransaction14SetFileToWriteEP9FileStore, .-_ZN18NetworkTransaction14SetFileToWri
 591              		.section	.text._ZN18NetworkTransaction4SendEv,"ax",%progbits
 592              		.align	2
 593              		.global	_ZN18NetworkTransaction4SendEv
 594              		.thumb
 595              		.thumb_func
 596              		.type	_ZN18NetworkTransaction4SendEv, %function
 597              	_ZN18NetworkTransaction4SendEv:
 598              		@ args = 0, pretend = 0, frame = 0
 599              		@ frame_needed = 0, uses_anonymous_args = 0
 600 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 601 0004 90F82530 		ldrb	r3, [r0, #37]	@ zero_extendqisi2
 602 0008 0746     		mov	r7, r0
 603 000a 03F0FF06 		and	r6, r3, #255
 604 000e 002B     		cmp	r3, #0
 605 0010 40F09980 		bne	.L141
 606 0014 8369     		ldr	r3, [r0, #24]
 607 0016 DFF86C81 		ldr	r8, .L167
 608 001a 40F66835 		movw	r5, #2920
 609              	.L142:
 610 001e 1846     		mov	r0, r3
 611 0020 5BB3     		cbz	r3, .L145
 612 0022 002D     		cmp	r5, #0
 613 0024 40D0     		beq	.L147
 614 0026 D3F89020 		ldr	r2, [r3, #144]
 615 002a D3F88C40 		ldr	r4, [r3, #140]
 616 002e D8F80030 		ldr	r3, [r8]
 617 0032 A41A     		subs	r4, r4, r2
 618 0034 AC42     		cmp	r4, r5
 619 0036 28BF     		it	cs
 620 0038 2C46     		movcs	r4, r5
 621 003a 2146     		mov	r1, r4
 622 003c 03EB0609 		add	r9, r3, r6
 623 0040 FFF7FEFF 		bl	_ZN12OutputBuffer4ReadEj
 624 0044 2246     		mov	r2, r4
 625 0046 0146     		mov	r1, r0
 626 0048 4846     		mov	r0, r9
 627 004a FFF7FEFF 		bl	memcpy
ARM GAS  C:\Users\George\AppData\Local\Temp\ccymkz22.s 			page 12


 628 004e BB69     		ldr	r3, [r7, #24]
 629 0050 2D1B     		subs	r5, r5, r4
 630 0052 D3F88C10 		ldr	r1, [r3, #140]
 631 0056 D3F89020 		ldr	r2, [r3, #144]
 632 005a 2644     		add	r6, r6, r4
 633 005c 9142     		cmp	r1, r2
 634 005e DED1     		bne	.L142
 635 0060 1846     		mov	r0, r3
 636 0062 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 637 0066 0346     		mov	r3, r0
 638 0068 B861     		str	r0, [r7, #24]
 639 006a 0028     		cmp	r0, #0
 640 006c D7D1     		bne	.L142
 641 006e F869     		ldr	r0, [r7, #28]
 642 0070 FFF7FEFF 		bl	_ZN11OutputStack3PopEv
 643 0074 0346     		mov	r3, r0
 644 0076 B861     		str	r0, [r7, #24]
 645 0078 D1E7     		b	.L142
 646              	.L145:
 647 007a ADB1     		cbz	r5, .L147
 648 007c 3B6A     		ldr	r3, [r7, #32]
 649 007e 9BB1     		cbz	r3, .L147
 650 0080 35F00305 		bics	r5, r5, #3
 651 0084 10D0     		beq	.L147
 652 0086 3F4B     		ldr	r3, .L167
 653 0088 386A     		ldr	r0, [r7, #32]
 654 008a 1968     		ldr	r1, [r3]
 655 008c 2A46     		mov	r2, r5
 656 008e 3144     		add	r1, r1, r6
 657 0090 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 658 0094 0028     		cmp	r0, #0
 659 0096 C8BF     		it	gt
 660 0098 3618     		addgt	r6, r6, r0
 661 009a 8542     		cmp	r5, r0
 662 009c 04D0     		beq	.L147
 663 009e 386A     		ldr	r0, [r7, #32]
 664 00a0 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 665 00a4 0023     		movs	r3, #0
 666 00a6 3B62     		str	r3, [r7, #32]
 667              	.L147:
 668 00a8 3B68     		ldr	r3, [r7]
 669 00aa 96B9     		cbnz	r6, .L150
 670 00ac 1C7D     		ldrb	r4, [r3, #20]	@ zero_extendqisi2
 671 00ae 2CB1     		cbz	r4, .L164
 672              	.L151:
 673 00b0 BA68     		ldr	r2, [r7, #8]
 674 00b2 0124     		movs	r4, #1
 675 00b4 DA60     		str	r2, [r3, #12]
 676              	.L162:
 677 00b6 2046     		mov	r0, r4
 678 00b8 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 679              	.L164:
 680 00bc BA68     		ldr	r2, [r7, #8]
 681 00be 002A     		cmp	r2, #0
 682 00c0 F6D1     		bne	.L151
 683 00c2 1868     		ldr	r0, [r3]
 684 00c4 3146     		mov	r1, r6
ARM GAS  C:\Users\George\AppData\Local\Temp\ccymkz22.s 			page 13


 685 00c6 FFF7FEFF 		bl	tcp_recv
 686 00ca 0123     		movs	r3, #1
 687 00cc 87F82530 		strb	r3, [r7, #37]
 688 00d0 F1E7     		b	.L162
 689              	.L150:
 690 00d2 2C49     		ldr	r1, .L167
 691 00d4 B6B2     		uxth	r6, r6
 692 00d6 1868     		ldr	r0, [r3]
 693 00d8 3246     		mov	r2, r6
 694 00da 0023     		movs	r3, #0
 695 00dc 0968     		ldr	r1, [r1]
 696 00de FFF7FEFF 		bl	tcp_write
 697 00e2 294B     		ldr	r3, .L167+4
 698 00e4 10F1090F 		cmn	r0, #9
 699 00e8 1870     		strb	r0, [r3]
 700 00ea 36DB     		blt	.L165
 701 00ec 3B68     		ldr	r3, [r7]
 702 00ee 1868     		ldr	r0, [r3]
 703 00f0 FFF7FEFF 		bl	tcp_output
 704 00f4 254A     		ldr	r2, .L167+8
 705 00f6 10F1090F 		cmn	r0, #9
 706 00fa 0346     		mov	r3, r0
 707 00fc 1070     		strb	r0, [r2]
 708 00fe 3BDB     		blt	.L166
 709 0100 48B1     		cbz	r0, .L155
 710 0102 234A     		ldr	r2, .L167+12
 711 0104 B2F84010 		ldrh	r1, [r2, #64]
 712 0108 8907     		lsls	r1, r1, #30
 713 010a 04D5     		bpl	.L155
 714 010c 1068     		ldr	r0, [r2]
 715 010e 0221     		movs	r1, #2
 716 0110 204A     		ldr	r2, .L167+16
 717 0112 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 718              	.L155:
 719 0116 3B68     		ldr	r3, [r7]
 720 0118 0222     		movs	r2, #2
 721 011a 1868     		ldr	r0, [r3]
 722 011c 1E49     		ldr	r1, .L167+20
 723 011e FFF7FEFF 		bl	tcp_poll
 724 0122 3B68     		ldr	r3, [r7]
 725 0124 1D49     		ldr	r1, .L167+24
 726 0126 1868     		ldr	r0, [r3]
 727 0128 FFF7FEFF 		bl	tcp_sent
 728 012c 1C49     		ldr	r1, .L167+28
 729 012e 3D68     		ldr	r5, [r7]
 730 0130 0024     		movs	r4, #0
 731 0132 1C48     		ldr	r0, .L167+32
 732 0134 1C4A     		ldr	r2, .L167+36
 733 0136 1D4B     		ldr	r3, .L167+40
 734 0138 0C70     		strb	r4, [r1]
 735 013a 0560     		str	r5, [r0]
 736 013c 1680     		strh	r6, [r2]	@ movhi
 737 013e 1E80     		strh	r6, [r3]	@ movhi
 738 0140 2046     		mov	r0, r4
 739 0142 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 740              	.L141:
 741 0146 124B     		ldr	r3, .L167+12
ARM GAS  C:\Users\George\AppData\Local\Temp\ccymkz22.s 			page 14


 742 0148 0168     		ldr	r1, [r0]
 743 014a 0122     		movs	r2, #1
 744 014c 5868     		ldr	r0, [r3, #4]
 745 014e 0024     		movs	r4, #0
 746 0150 FFF7FEFF 		bl	_ZN7Network16ConnectionClosedEP15ConnectionStateb
 747 0154 2046     		mov	r0, r4
 748 0156 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 749              	.L165:
 750 015a 0D4A     		ldr	r2, .L167+12
 751 015c 0346     		mov	r3, r0
 752 015e 1068     		ldr	r0, [r2]
 753 0160 134A     		ldr	r2, .L167+44
 754 0162 0221     		movs	r1, #2
 755              	.L163:
 756 0164 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 757 0168 3B68     		ldr	r3, [r7]
 758 016a 0024     		movs	r4, #0
 759 016c 1868     		ldr	r0, [r3]
 760 016e FFF7FEFF 		bl	tcp_abort
 761 0172 2046     		mov	r0, r4
 762 0174 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 763              	.L166:
 764 0178 054A     		ldr	r2, .L167+12
 765 017a 0221     		movs	r1, #2
 766 017c 1068     		ldr	r0, [r2]
 767 017e 0D4A     		ldr	r2, .L167+48
 768 0180 F0E7     		b	.L163
 769              	.L168:
 770 0182 00BF     		.align	2
 771              	.L167:
 772 0184 00000000 		.word	sendingWindow
 773 0188 00000000 		.word	writeResult
 774 018c 00000000 		.word	outputResult
 775 0190 00000000 		.word	reprap
 776 0194 28010000 		.word	.LC6
 777 0198 00000000 		.word	conn_poll
 778 019c 00000000 		.word	conn_sent
 779 01a0 00000000 		.word	sendingRetries
 780 01a4 00000000 		.word	sendingConnection
 781 01a8 00000000 		.word	sentDataOutstanding
 782 01ac 00000000 		.word	sendingWindowSize
 783 01b0 58010000 		.word	.LC7
 784 01b4 8C010000 		.word	.LC8
 785              		.size	_ZN18NetworkTransaction4SendEv, .-_ZN18NetworkTransaction4SendEv
 786              		.section	.text._ZNK18NetworkTransaction11GetRemoteIPEv,"ax",%progbits
 787              		.align	2
 788              		.global	_ZNK18NetworkTransaction11GetRemoteIPEv
 789              		.thumb
 790              		.thumb_func
 791              		.type	_ZNK18NetworkTransaction11GetRemoteIPEv, %function
 792              	_ZNK18NetworkTransaction11GetRemoteIPEv:
 793              		@ args = 0, pretend = 0, frame = 0
 794              		@ frame_needed = 0, uses_anonymous_args = 0
 795              		@ link register save eliminated.
 796 0000 0068     		ldr	r0, [r0]
 797 0002 00B1     		cbz	r0, .L170
 798 0004 8068     		ldr	r0, [r0, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccymkz22.s 			page 15


 799              	.L170:
 800 0006 7047     		bx	lr
 801              		.size	_ZNK18NetworkTransaction11GetRemoteIPEv, .-_ZNK18NetworkTransaction11GetRemoteIPEv
 802              		.section	.text._ZNK18NetworkTransaction13GetRemotePortEv,"ax",%progbits
 803              		.align	2
 804              		.global	_ZNK18NetworkTransaction13GetRemotePortEv
 805              		.thumb
 806              		.thumb_func
 807              		.type	_ZNK18NetworkTransaction13GetRemotePortEv, %function
 808              	_ZNK18NetworkTransaction13GetRemotePortEv:
 809              		@ args = 0, pretend = 0, frame = 0
 810              		@ frame_needed = 0, uses_anonymous_args = 0
 811              		@ link register save eliminated.
 812 0000 0068     		ldr	r0, [r0]
 813 0002 00B1     		cbz	r0, .L173
 814 0004 C088     		ldrh	r0, [r0, #6]
 815              	.L173:
 816 0006 7047     		bx	lr
 817              		.size	_ZNK18NetworkTransaction13GetRemotePortEv, .-_ZNK18NetworkTransaction13GetRemotePortEv
 818              		.section	.text._ZNK18NetworkTransaction12GetLocalPortEv,"ax",%progbits
 819              		.align	2
 820              		.global	_ZNK18NetworkTransaction12GetLocalPortEv
 821              		.thumb
 822              		.thumb_func
 823              		.type	_ZNK18NetworkTransaction12GetLocalPortEv, %function
 824              	_ZNK18NetworkTransaction12GetLocalPortEv:
 825              		@ args = 0, pretend = 0, frame = 0
 826              		@ frame_needed = 0, uses_anonymous_args = 0
 827              		@ link register save eliminated.
 828 0000 0068     		ldr	r0, [r0]
 829 0002 00B1     		cbz	r0, .L176
 830 0004 8088     		ldrh	r0, [r0, #4]
 831              	.L176:
 832 0006 7047     		bx	lr
 833              		.size	_ZNK18NetworkTransaction12GetLocalPortEv, .-_ZNK18NetworkTransaction12GetLocalPortEv
 834              		.section	.text._ZN18NetworkTransaction5CloseEv,"ax",%progbits
 835              		.align	2
 836              		.global	_ZN18NetworkTransaction5CloseEv
 837              		.thumb
 838              		.thumb_func
 839              		.type	_ZN18NetworkTransaction5CloseEv, %function
 840              	_ZN18NetworkTransaction5CloseEv:
 841              		@ args = 0, pretend = 0, frame = 0
 842              		@ frame_needed = 0, uses_anonymous_args = 0
 843 0000 10B5     		push	{r4, lr}
 844 0002 0368     		ldr	r3, [r0]
 845 0004 0446     		mov	r4, r0
 846 0006 0021     		movs	r1, #0
 847 0008 1868     		ldr	r0, [r3]
 848 000a FFF7FEFF 		bl	tcp_recv
 849 000e 0123     		movs	r3, #1
 850 0010 84F82530 		strb	r3, [r4, #37]
 851 0014 10BD     		pop	{r4, pc}
 852              		.size	_ZN18NetworkTransaction5CloseEv, .-_ZN18NetworkTransaction5CloseEv
 853 0016 00BF     		.section	.text._ZN18NetworkTransaction8FreePbufEv,"ax",%progbits
 854              		.align	2
 855              		.global	_ZN18NetworkTransaction8FreePbufEv
ARM GAS  C:\Users\George\AppData\Local\Temp\ccymkz22.s 			page 16


 856              		.thumb
 857              		.thumb_func
 858              		.type	_ZN18NetworkTransaction8FreePbufEv, %function
 859              	_ZN18NetworkTransaction8FreePbufEv:
 860              		@ args = 0, pretend = 0, frame = 0
 861              		@ frame_needed = 0, uses_anonymous_args = 0
 862 0000 0368     		ldr	r3, [r0]
 863 0002 10B5     		push	{r4, lr}
 864 0004 0446     		mov	r4, r0
 865 0006 73B1     		cbz	r3, .L180
 866 0008 1A68     		ldr	r2, [r3]
 867 000a 62B1     		cbz	r2, .L180
 868 000c C068     		ldr	r0, [r0, #12]
 869 000e 98B1     		cbz	r0, .L191
 870 0010 94F82620 		ldrb	r2, [r4, #38]	@ zero_extendqisi2
 871 0014 4AB9     		cbnz	r2, .L182
 872 0016 1B68     		ldr	r3, [r3]
 873 0018 0189     		ldrh	r1, [r0, #8]
 874 001a 1846     		mov	r0, r3
 875 001c FFF7FEFF 		bl	tcp_recved
 876 0020 0123     		movs	r3, #1
 877 0022 84F82630 		strb	r3, [r4, #38]
 878              	.L180:
 879 0026 E068     		ldr	r0, [r4, #12]
 880 0028 28B1     		cbz	r0, .L179
 881              	.L182:
 882 002a FFF7FEFF 		bl	pbuf_free
 883 002e 0023     		movs	r3, #0
 884 0030 2361     		str	r3, [r4, #16]
 885 0032 E360     		str	r3, [r4, #12]
 886 0034 10BD     		pop	{r4, pc}
 887              	.L179:
 888 0036 10BD     		pop	{r4, pc}
 889              	.L191:
 890 0038 10BD     		pop	{r4, pc}
 891              		.size	_ZN18NetworkTransaction8FreePbufEv, .-_ZN18NetworkTransaction8FreePbufEv
 892 003a 00BF     		.section	.text._ZN18NetworkTransaction5DeferE12DeferralMode,"ax",%progbits
 893              		.align	2
 894              		.global	_ZN18NetworkTransaction5DeferE12DeferralMode
 895              		.thumb
 896              		.thumb_func
 897              		.type	_ZN18NetworkTransaction5DeferE12DeferralMode, %function
 898              	_ZN18NetworkTransaction5DeferE12DeferralMode:
 899              		@ args = 0, pretend = 0, frame = 0
 900              		@ frame_needed = 0, uses_anonymous_args = 0
 901 0000 0129     		cmp	r1, #1
 902 0002 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 903 0006 0D46     		mov	r5, r1
 904 0008 0446     		mov	r4, r0
 905 000a 39D0     		beq	.L216
 906 000c 0229     		cmp	r1, #2
 907 000e 55D0     		beq	.L217
 908              	.L195:
 909 0010 2D4A     		ldr	r2, .L222
 910 0012 0523     		movs	r3, #5
 911 0014 5768     		ldr	r7, [r2, #4]
 912 0016 84F82430 		strb	r3, [r4, #36]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccymkz22.s 			page 17


 913 001a FA68     		ldr	r2, [r7, #12]
 914 001c 42B1     		cbz	r2, .L199
 915 001e 9442     		cmp	r4, r2
 916 0020 03D1     		bne	.L203
 917 0022 4EE0     		b	.L221
 918              	.L204:
 919 0024 9C42     		cmp	r4, r3
 920 0026 28D0     		beq	.L202
 921 0028 1A46     		mov	r2, r3
 922              	.L203:
 923 002a 5368     		ldr	r3, [r2, #4]
 924 002c 002B     		cmp	r3, #0
 925 002e F9D1     		bne	.L204
 926              	.L199:
 927 0030 07F10C08 		add	r8, r7, #12
 928 0034 4146     		mov	r1, r8
 929 0036 3846     		mov	r0, r7
 930 0038 2246     		mov	r2, r4
 931 003a FFF7FEFF 		bl	_ZN7Network17AppendTransactionEPVP18NetworkTransactionS1_
 932 003e FB68     		ldr	r3, [r7, #12]
 933 0040 9C42     		cmp	r4, r3
 934 0042 18D0     		beq	.L192
 935 0044 0026     		movs	r6, #0
 936 0046 04E0     		b	.L210
 937              	.L206:
 938 0048 5A68     		ldr	r2, [r3, #4]
 939 004a 1E46     		mov	r6, r3
 940 004c 1346     		mov	r3, r2
 941              	.L208:
 942 004e A342     		cmp	r3, r4
 943 0050 0FD0     		beq	.L219
 944              	.L210:
 945 0052 1D68     		ldr	r5, [r3]
 946 0054 2268     		ldr	r2, [r4]
 947 0056 9542     		cmp	r5, r2
 948 0058 F6D1     		bne	.L206
 949 005a 1A46     		mov	r2, r3
 950 005c 3846     		mov	r0, r7
 951 005e 4146     		mov	r1, r8
 952 0060 5D68     		ldr	r5, [r3, #4]
 953 0062 26B3     		cbz	r6, .L220
 954 0064 5B68     		ldr	r3, [r3, #4]
 955 0066 7360     		str	r3, [r6, #4]
 956 0068 FFF7FEFF 		bl	_ZN7Network17AppendTransactionEPVP18NetworkTransactionS1_
 957 006c 2B46     		mov	r3, r5
 958 006e A342     		cmp	r3, r4
 959 0070 EFD1     		bne	.L210
 960              	.L219:
 961 0072 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 962              	.L192:
 963 0076 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 964              	.L202:
 965 007a 6368     		ldr	r3, [r4, #4]
 966 007c 5360     		str	r3, [r2, #4]
 967 007e D7E7     		b	.L199
 968              	.L216:
 969 0080 C268     		ldr	r2, [r0, #12]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccymkz22.s 			page 18


 970 0082 0368     		ldr	r3, [r0]
 971 0084 0021     		movs	r1, #0
 972 0086 0261     		str	r2, [r0, #16]
 973 0088 4161     		str	r1, [r0, #20]
 974 008a 002B     		cmp	r3, #0
 975 008c C0D0     		beq	.L195
 976 008e 1968     		ldr	r1, [r3]
 977 0090 0029     		cmp	r1, #0
 978 0092 BDD0     		beq	.L195
 979 0094 002A     		cmp	r2, #0
 980 0096 BBD0     		beq	.L195
 981 0098 94F82610 		ldrb	r1, [r4, #38]	@ zero_extendqisi2
 982 009c 0029     		cmp	r1, #0
 983 009e B7D1     		bne	.L195
 984 00a0 1868     		ldr	r0, [r3]
 985 00a2 1189     		ldrh	r1, [r2, #8]
 986 00a4 FFF7FEFF 		bl	tcp_recved
 987 00a8 84F82650 		strb	r5, [r4, #38]
 988 00ac B0E7     		b	.L195
 989              	.L220:
 990 00ae 5968     		ldr	r1, [r3, #4]
 991 00b0 F960     		str	r1, [r7, #12]
 992 00b2 4146     		mov	r1, r8
 993 00b4 FFF7FEFF 		bl	_ZN7Network17AppendTransactionEPVP18NetworkTransactionS1_
 994 00b8 2B46     		mov	r3, r5
 995 00ba C8E7     		b	.L208
 996              	.L217:
 997 00bc FFF7FEFF 		bl	_ZN18NetworkTransaction8FreePbufEv
 998 00c0 A6E7     		b	.L195
 999              	.L221:
 1000 00c2 6368     		ldr	r3, [r4, #4]
 1001 00c4 FB60     		str	r3, [r7, #12]
 1002 00c6 B3E7     		b	.L199
 1003              	.L223:
 1004              		.align	2
 1005              	.L222:
 1006 00c8 00000000 		.word	reprap
 1007              		.size	_ZN18NetworkTransaction5DeferE12DeferralMode, .-_ZN18NetworkTransaction5DeferE12DeferralMode
 1008              		.section	.text._ZN18NetworkTransaction7DiscardEv.part.7,"ax",%progbits
 1009              		.align	2
 1010              		.thumb
 1011              		.thumb_func
 1012              		.type	_ZN18NetworkTransaction7DiscardEv.part.7, %function
 1013              	_ZN18NetworkTransaction7DiscardEv.part.7:
 1014              		@ args = 0, pretend = 0, frame = 0
 1015              		@ frame_needed = 0, uses_anonymous_args = 0
 1016 0000 38B5     		push	{r3, r4, r5, lr}
 1017 0002 0446     		mov	r4, r0
 1018 0004 FFF7FEFF 		bl	_ZN18NetworkTransaction8FreePbufEv
 1019 0008 236A     		ldr	r3, [r4, #32]
 1020 000a 23B1     		cbz	r3, .L225
 1021 000c 206A     		ldr	r0, [r4, #32]
 1022 000e FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1023 0012 0023     		movs	r3, #0
 1024 0014 2362     		str	r3, [r4, #32]
 1025              	.L225:
 1026 0016 A069     		ldr	r0, [r4, #24]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccymkz22.s 			page 19


 1027 0018 214D     		ldr	r5, .L248
 1028 001a FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllEPS_
 1029 001e E069     		ldr	r0, [r4, #28]
 1030 0020 FFF7FEFF 		bl	_ZN11OutputStack10ReleaseAllEv
 1031 0024 6A68     		ldr	r2, [r5, #4]
 1032 0026 D168     		ldr	r1, [r2, #12]
 1033 0028 41B1     		cbz	r1, .L237
 1034 002a 8C42     		cmp	r4, r1
 1035 002c 03D1     		bne	.L230
 1036 002e 33E0     		b	.L247
 1037              	.L231:
 1038 0030 9C42     		cmp	r4, r3
 1039 0032 13D0     		beq	.L229
 1040 0034 1946     		mov	r1, r3
 1041              	.L230:
 1042 0036 4B68     		ldr	r3, [r1, #4]
 1043 0038 002B     		cmp	r3, #0
 1044 003a F9D1     		bne	.L231
 1045              	.L237:
 1046 003c 1046     		mov	r0, r2
 1047              	.L226:
 1048 003e 00F10801 		add	r1, r0, #8
 1049 0042 2246     		mov	r2, r4
 1050 0044 FFF7FEFF 		bl	_ZN7Network17AppendTransactionEPVP18NetworkTransactionS1_
 1051 0048 2168     		ldr	r1, [r4]
 1052 004a 19B1     		cbz	r1, .L232
 1053 004c 94F82430 		ldrb	r3, [r4, #36]	@ zero_extendqisi2
 1054 0050 042B     		cmp	r3, #4
 1055 0052 07D0     		beq	.L245
 1056              	.L232:
 1057 0054 0023     		movs	r3, #0
 1058 0056 84F82430 		strb	r3, [r4, #36]
 1059 005a 38BD     		pop	{r3, r4, r5, pc}
 1060              	.L229:
 1061 005c 6368     		ldr	r3, [r4, #4]
 1062 005e 4B60     		str	r3, [r1, #4]
 1063 0060 6868     		ldr	r0, [r5, #4]
 1064 0062 ECE7     		b	.L226
 1065              	.L245:
 1066 0064 0023     		movs	r3, #0
 1067 0066 84F82430 		strb	r3, [r4, #36]
 1068 006a B5F84030 		ldrh	r3, [r5, #64]
 1069 006e 0C4A     		ldr	r2, .L248
 1070 0070 9B07     		lsls	r3, r3, #30
 1071 0072 05D4     		bmi	.L246
 1072 0074 6868     		ldr	r0, [r5, #4]
 1073 0076 0022     		movs	r2, #0
 1074 0078 BDE83840 		pop	{r3, r4, r5, lr}
 1075 007c FFF7FEBF 		b	_ZN7Network16ConnectionClosedEP15ConnectionStateb
 1076              	.L246:
 1077 0080 1068     		ldr	r0, [r2]
 1078 0082 0221     		movs	r1, #2
 1079 0084 074A     		ldr	r2, .L248+4
 1080 0086 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1081 008a 2168     		ldr	r1, [r4]
 1082 008c 6868     		ldr	r0, [r5, #4]
 1083 008e 0022     		movs	r2, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccymkz22.s 			page 20


 1084 0090 BDE83840 		pop	{r3, r4, r5, lr}
 1085 0094 FFF7FEBF 		b	_ZN7Network16ConnectionClosedEP15ConnectionStateb
 1086              	.L247:
 1087 0098 6368     		ldr	r3, [r4, #4]
 1088 009a 1046     		mov	r0, r2
 1089 009c D360     		str	r3, [r2, #12]
 1090 009e CEE7     		b	.L226
 1091              	.L249:
 1092              		.align	2
 1093              	.L248:
 1094 00a0 00000000 		.word	reprap
 1095 00a4 C0010000 		.word	.LC9
 1096              		.size	_ZN18NetworkTransaction7DiscardEv.part.7, .-_ZN18NetworkTransaction7DiscardEv.part.7
 1097              		.section	.text._ZN18NetworkTransaction7DiscardEv,"ax",%progbits
 1098              		.align	2
 1099              		.global	_ZN18NetworkTransaction7DiscardEv
 1100              		.thumb
 1101              		.thumb_func
 1102              		.type	_ZN18NetworkTransaction7DiscardEv, %function
 1103              	_ZN18NetworkTransaction7DiscardEv:
 1104              		@ args = 0, pretend = 0, frame = 0
 1105              		@ frame_needed = 0, uses_anonymous_args = 0
 1106              		@ link register save eliminated.
 1107 0000 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 1108 0004 03B9     		cbnz	r3, .L252
 1109 0006 7047     		bx	lr
 1110              	.L252:
 1111 0008 FFF7FEBF 		b	_ZN18NetworkTransaction7DiscardEv.part.7
 1112              		.size	_ZN18NetworkTransaction7DiscardEv, .-_ZN18NetworkTransaction7DiscardEv
 1113              		.section	.text._ZN18NetworkTransaction6CommitEb,"ax",%progbits
 1114              		.align	2
 1115              		.global	_ZN18NetworkTransaction6CommitEb
 1116              		.thumb
 1117              		.thumb_func
 1118              		.type	_ZN18NetworkTransaction6CommitEb, %function
 1119              	_ZN18NetworkTransaction6CommitEb:
 1120              		@ args = 0, pretend = 0, frame = 0
 1121              		@ frame_needed = 0, uses_anonymous_args = 0
 1122 0000 0368     		ldr	r3, [r0]
 1123 0002 70B5     		push	{r4, r5, r6, lr}
 1124 0004 0446     		mov	r4, r0
 1125 0006 0D46     		mov	r5, r1
 1126 0008 2BB3     		cbz	r3, .L254
 1127 000a 1B68     		ldr	r3, [r3]
 1128 000c 1BB3     		cbz	r3, .L254
 1129 000e 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 1130 0012 03B3     		cbz	r3, .L254
 1131 0014 FFF7FEFF 		bl	_ZN18NetworkTransaction8FreePbufEv
 1132 0018 2168     		ldr	r1, [r4]
 1133 001a A369     		ldr	r3, [r4, #24]
 1134 001c 0D75     		strb	r5, [r1, #20]
 1135 001e 002B     		cmp	r3, #0
 1136 0020 49D0     		beq	.L301
 1137              	.L282:
 1138 0022 0323     		movs	r3, #3
 1139 0024 84F82430 		strb	r3, [r4, #36]
 1140 0028 0DB3     		cbz	r5, .L256
ARM GAS  C:\Users\George\AppData\Local\Temp\ccymkz22.s 			page 21


 1141 002a 344E     		ldr	r6, .L311
 1142 002c 7368     		ldr	r3, [r6, #4]
 1143 002e DA68     		ldr	r2, [r3, #12]
 1144 0030 42B1     		cbz	r2, .L258
 1145 0032 9442     		cmp	r4, r2
 1146 0034 03D1     		bne	.L262
 1147 0036 51E0     		b	.L309
 1148              	.L263:
 1149 0038 9C42     		cmp	r4, r3
 1150 003a 15D0     		beq	.L261
 1151 003c 1A46     		mov	r2, r3
 1152              	.L262:
 1153 003e 5368     		ldr	r3, [r2, #4]
 1154 0040 002B     		cmp	r3, #0
 1155 0042 F9D1     		bne	.L263
 1156              	.L258:
 1157 0044 CB68     		ldr	r3, [r1, #12]
 1158 0046 0BB9     		cbnz	r3, .L299
 1159 0048 4BE0     		b	.L310
 1160              	.L277:
 1161 004a 9B68     		ldr	r3, [r3, #8]
 1162              	.L299:
 1163 004c 9A68     		ldr	r2, [r3, #8]
 1164 004e 002A     		cmp	r2, #0
 1165 0050 FBD1     		bne	.L277
 1166 0052 9C60     		str	r4, [r3, #8]
 1167 0054 70BD     		pop	{r4, r5, r6, pc}
 1168              	.L254:
 1169 0056 94F82430 		ldrb	r3, [r4, #36]	@ zero_extendqisi2
 1170 005a 03B9     		cbnz	r3, .L303
 1171 005c 70BD     		pop	{r4, r5, r6, pc}
 1172              	.L303:
 1173 005e 2046     		mov	r0, r4
 1174 0060 BDE87040 		pop	{r4, r5, r6, lr}
 1175 0064 FFF7FEBF 		b	_ZN18NetworkTransaction7DiscardEv.part.7
 1176              	.L261:
 1177 0068 6368     		ldr	r3, [r4, #4]
 1178 006a 5360     		str	r3, [r2, #4]
 1179 006c EAE7     		b	.L258
 1180              	.L256:
 1181 006e 234E     		ldr	r6, .L311
 1182 0070 0868     		ldr	r0, [r1]
 1183 0072 2946     		mov	r1, r5
 1184 0074 FFF7FEFF 		bl	tcp_recv
 1185 0078 7368     		ldr	r3, [r6, #4]
 1186 007a 2168     		ldr	r1, [r4]
 1187 007c D868     		ldr	r0, [r3, #12]
 1188 007e 0028     		cmp	r0, #0
 1189 0080 E0D0     		beq	.L258
 1190 0082 0368     		ldr	r3, [r0]
 1191 0084 8B42     		cmp	r3, r1
 1192 0086 07D0     		beq	.L304
 1193              	.L266:
 1194 0088 4368     		ldr	r3, [r0, #4]
 1195 008a 0546     		mov	r5, r0
 1196 008c 1846     		mov	r0, r3
 1197 008e 0028     		cmp	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccymkz22.s 			page 22


 1198 0090 D8D0     		beq	.L258
 1199              	.L300:
 1200 0092 0368     		ldr	r3, [r0]
 1201 0094 8B42     		cmp	r3, r1
 1202 0096 F7D1     		bne	.L266
 1203              	.L304:
 1204 0098 A042     		cmp	r0, r4
 1205 009a 12D0     		beq	.L305
 1206 009c 90F82420 		ldrb	r2, [r0, #36]	@ zero_extendqisi2
 1207 00a0 2AB9     		cbnz	r2, .L306
 1208              	.L271:
 1209 00a2 ADB1     		cbz	r5, .L307
 1210 00a4 6868     		ldr	r0, [r5, #4]
 1211 00a6 1946     		mov	r1, r3
 1212 00a8 0028     		cmp	r0, #0
 1213 00aa F2D1     		bne	.L300
 1214 00ac CAE7     		b	.L258
 1215              	.L306:
 1216 00ae FFF7FEFF 		bl	_ZN18NetworkTransaction7DiscardEv.part.7
 1217 00b2 2368     		ldr	r3, [r4]
 1218 00b4 F5E7     		b	.L271
 1219              	.L301:
 1220 00b6 E069     		ldr	r0, [r4, #28]
 1221 00b8 FFF7FEFF 		bl	_ZN11OutputStack3PopEv
 1222 00bc 2168     		ldr	r1, [r4]
 1223 00be A061     		str	r0, [r4, #24]
 1224 00c0 AFE7     		b	.L282
 1225              	.L305:
 1226 00c2 BDB1     		cbz	r5, .L308
 1227 00c4 6368     		ldr	r3, [r4, #4]
 1228 00c6 6B60     		str	r3, [r5, #4]
 1229              	.L269:
 1230 00c8 6068     		ldr	r0, [r4, #4]
 1231 00ca 0028     		cmp	r0, #0
 1232 00cc E1D1     		bne	.L300
 1233 00ce B9E7     		b	.L258
 1234              	.L307:
 1235 00d0 7268     		ldr	r2, [r6, #4]
 1236 00d2 1946     		mov	r1, r3
 1237 00d4 D068     		ldr	r0, [r2, #12]
 1238 00d6 0028     		cmp	r0, #0
 1239 00d8 DBD1     		bne	.L300
 1240 00da B3E7     		b	.L258
 1241              	.L309:
 1242 00dc 6268     		ldr	r2, [r4, #4]
 1243 00de DA60     		str	r2, [r3, #12]
 1244 00e0 B0E7     		b	.L258
 1245              	.L310:
 1246 00e2 7068     		ldr	r0, [r6, #4]
 1247 00e4 CC60     		str	r4, [r1, #12]
 1248 00e6 2246     		mov	r2, r4
 1249 00e8 00F11001 		add	r1, r0, #16
 1250 00ec BDE87040 		pop	{r4, r5, r6, lr}
 1251 00f0 FFF7FEBF 		b	_ZN7Network17AppendTransactionEPVP18NetworkTransactionS1_
 1252              	.L308:
 1253 00f4 7368     		ldr	r3, [r6, #4]
 1254 00f6 6268     		ldr	r2, [r4, #4]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccymkz22.s 			page 23


 1255 00f8 DA60     		str	r2, [r3, #12]
 1256 00fa E5E7     		b	.L269
 1257              	.L312:
 1258              		.align	2
 1259              	.L311:
 1260 00fc 00000000 		.word	reprap
 1261              		.size	_ZN18NetworkTransaction6CommitEb, .-_ZN18NetworkTransaction6CommitEb
 1262              		.section	.text._ZNK18NetworkTransaction11IsConnectedEv,"ax",%progbits
 1263              		.align	2
 1264              		.global	_ZNK18NetworkTransaction11IsConnectedEv
 1265              		.thumb
 1266              		.thumb_func
 1267              		.type	_ZNK18NetworkTransaction11IsConnectedEv, %function
 1268              	_ZNK18NetworkTransaction11IsConnectedEv:
 1269              		@ args = 0, pretend = 0, frame = 0
 1270              		@ frame_needed = 0, uses_anonymous_args = 0
 1271              		@ link register save eliminated.
 1272 0000 0068     		ldr	r0, [r0]
 1273 0002 18B1     		cbz	r0, .L314
 1274 0004 0068     		ldr	r0, [r0]
 1275 0006 0030     		adds	r0, r0, #0
 1276 0008 18BF     		it	ne
 1277 000a 0120     		movne	r0, #1
 1278              	.L314:
 1279 000c 7047     		bx	lr
 1280              		.size	_ZNK18NetworkTransaction11IsConnectedEv, .-_ZNK18NetworkTransaction11IsConnectedEv
 1281 000e 00BF     		.section	.rodata.str1.4,"aMS",%progbits,1
 1282              		.align	2
 1283              	.LC0:
 1284 0000 4E657477 		.ascii	"Network: Mismatched pcb in conn_sent!\012\000"
 1284      6F726B3A 
 1284      204D6973 
 1284      6D617463 
 1284      68656420 
 1285 0027 00       		.space	1
 1286              	.LC1:
 1287 0028 4E657477 		.ascii	"Network: Could not transmit data after %.1f seconds"
 1287      6F726B3A 
 1287      20436F75 
 1287      6C64206E 
 1287      6F742074 
 1288 005b 0A00     		.ascii	"\012\000"
 1289 005d 000000   		.space	3
 1290              	.LC2:
 1291 0060 4E657477 		.ascii	"Network: Failed to write data in conn_poll (code %d"
 1291      6F726B3A 
 1291      20466169 
 1291      6C656420 
 1291      746F2077 
 1292 0093 290A00   		.ascii	")\012\000"
 1293 0096 0000     		.space	2
 1294              	.LC3:
 1295 0098 4E657477 		.ascii	"Network: Failed to output data in conn_poll (code %"
 1295      6F726B3A 
 1295      20466169 
 1295      6C656420 
 1295      746F206F 
ARM GAS  C:\Users\George\AppData\Local\Temp\ccymkz22.s 			page 24


 1296 00cb 64290A00 		.ascii	"d)\012\000"
 1297 00cf 00       		.space	1
 1298              	.LC4:
 1299 00d0 4E657477 		.ascii	"Network: Mismatched pcb in conn_poll!\012\000"
 1299      6F726B3A 
 1299      204D6973 
 1299      6D617463 
 1299      68656420 
 1300 00f7 00       		.space	1
 1301              	.LC5:
 1302 00f8 4E657477 		.ascii	"Network: tcp_write resulted in error code %d\012\000"
 1302      6F726B3A 
 1302      20746370 
 1302      5F777269 
 1302      74652072 
 1303 0126 0000     		.space	2
 1304              	.LC6:
 1305 0128 4E657477 		.ascii	"Network: tcp_output resulted in error code %d\012\000"
 1305      6F726B3A 
 1305      20746370 
 1305      5F6F7574 
 1305      70757420 
 1306 0157 00       		.space	1
 1307              	.LC7:
 1308 0158 4E657477 		.ascii	"Network: Failed to write data in Send (code %d)\012"
 1308      6F726B3A 
 1308      20466169 
 1308      6C656420 
 1308      746F2077 
 1309 0188 00       		.ascii	"\000"
 1310 0189 000000   		.space	3
 1311              	.LC8:
 1312 018c 4E657477 		.ascii	"Network: Failed to output data in Send (code %d)\012"
 1312      6F726B3A 
 1312      20466169 
 1312      6C656420 
 1312      746F206F 
 1313 01bd 00       		.ascii	"\000"
 1314 01be 0000     		.space	2
 1315              	.LC9:
 1316 01c0 4E657477 		.ascii	"Network: Discard() is handling a graceful disconnec"
 1316      6F726B3A 
 1316      20446973 
 1316      63617264 
 1316      28292069 
 1317 01f3 740A00   		.ascii	"t\012\000"
 1318 01f6 0000     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1319              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1320              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1321              	_ZL28cpu_irq_prev_interrupt_state:
 1322 0000 00       		.space	1
 1323              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1324              		.align	2
 1325              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1326              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1327              	_ZL32cpu_irq_critical_section_counter:
 1328 0000 00000000 		.space	4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccymkz22.s 			page 25


 1329              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
