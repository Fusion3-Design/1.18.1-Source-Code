ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc2KKCbP.s 			page 1


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
  15              		.file	"NetworkTransaction.cpp"
  16              		.section	.text._ZNK18NetworkTransaction8CanWriteEv.part.8,"ax",%progbits
  17              		.align	2
  18              		.thumb
  19              		.thumb_func
  20              		.type	_ZNK18NetworkTransaction8CanWriteEv.part.8, %function
  21              	_ZNK18NetworkTransaction8CanWriteEv.part.8:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0068     		ldr	r0, [r0]
  26 0002 08B1     		cbz	r0, .L2
  27 0004 FFF7FEBF 		b	_ZNK6Socket8CanWriteEv
  28              	.L2:
  29 0008 7047     		bx	lr
  30              		.size	_ZNK18NetworkTransaction8CanWriteEv.part.8, .-_ZNK18NetworkTransaction8CanWriteEv.part.8
  31 000a 00BF     		.section	.text._ZN18NetworkTransactionC2EPS_,"ax",%progbits
  32              		.align	2
  33              		.global	_ZN18NetworkTransactionC2EPS_
  34              		.thumb
  35              		.thumb_func
  36              		.type	_ZN18NetworkTransactionC2EPS_, %function
  37              	_ZN18NetworkTransactionC2EPS_:
  38              		@ args = 0, pretend = 0, frame = 0
  39              		@ frame_needed = 0, uses_anonymous_args = 0
  40 0000 38B5     		push	{r3, r4, r5, lr}
  41 0002 0025     		movs	r5, #0
  42 0004 0446     		mov	r4, r0
  43 0006 4160     		str	r1, [r0, #4]
  44 0008 8560     		str	r5, [r0, #8]
  45 000a C560     		str	r5, [r0, #12]
  46 000c 1420     		movs	r0, #20
  47 000e FFF7FEFF 		bl	_Znwj
  48 0012 0346     		mov	r3, r0
  49 0014 2046     		mov	r0, r4
  50 0016 1D60     		str	r5, [r3]
  51 0018 2361     		str	r3, [r4, #16]
  52 001a 6561     		str	r5, [r4, #20]
  53 001c A561     		str	r5, [r4, #24]
  54 001e 38BD     		pop	{r3, r4, r5, pc}
  55              		.size	_ZN18NetworkTransactionC2EPS_, .-_ZN18NetworkTransactionC2EPS_
  56              		.global	_ZN18NetworkTransactionC1EPS_
  57              		.thumb_set _ZN18NetworkTransactionC1EPS_,_ZN18NetworkTransactionC2EPS_
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc2KKCbP.s 			page 2


  58              		.section	.text._ZN18NetworkTransaction3SetEP6Socket17TransactionStatus,"ax",%progbits
  59              		.align	2
  60              		.global	_ZN18NetworkTransaction3SetEP6Socket17TransactionStatus
  61              		.thumb
  62              		.thumb_func
  63              		.type	_ZN18NetworkTransaction3SetEP6Socket17TransactionStatus, %function
  64              	_ZN18NetworkTransaction3SetEP6Socket17TransactionStatus:
  65              		@ args = 0, pretend = 0, frame = 0
  66              		@ frame_needed = 0, uses_anonymous_args = 0
  67              		@ link register save eliminated.
  68 0000 0023     		movs	r3, #0
  69 0002 0160     		str	r1, [r0]
  70 0004 8261     		str	r2, [r0, #24]
  71 0006 4377     		strb	r3, [r0, #29]
  72 0008 7047     		bx	lr
  73              		.size	_ZN18NetworkTransaction3SetEP6Socket17TransactionStatus, .-_ZN18NetworkTransaction3SetEP6Soc
  74 000a 00BF     		.section	.text._ZNK18NetworkTransaction17HasMoreDataToReadEv,"ax",%progbits
  75              		.align	2
  76              		.global	_ZNK18NetworkTransaction17HasMoreDataToReadEv
  77              		.thumb
  78              		.thumb_func
  79              		.type	_ZNK18NetworkTransaction17HasMoreDataToReadEv, %function
  80              	_ZNK18NetworkTransaction17HasMoreDataToReadEv:
  81              		@ args = 0, pretend = 0, frame = 0
  82              		@ frame_needed = 0, uses_anonymous_args = 0
  83              		@ link register save eliminated.
  84 0000 0068     		ldr	r0, [r0]
  85 0002 08B1     		cbz	r0, .L7
  86 0004 FFF7FEBF 		b	_ZNK6Socket17HasMoreDataToReadEv
  87              	.L7:
  88 0008 7047     		bx	lr
  89              		.size	_ZNK18NetworkTransaction17HasMoreDataToReadEv, .-_ZNK18NetworkTransaction17HasMoreDataToRead
  90 000a 00BF     		.section	.text._ZNK18NetworkTransaction11IsConnectedEv,"ax",%progbits
  91              		.align	2
  92              		.global	_ZNK18NetworkTransaction11IsConnectedEv
  93              		.thumb
  94              		.thumb_func
  95              		.type	_ZNK18NetworkTransaction11IsConnectedEv, %function
  96              	_ZNK18NetworkTransaction11IsConnectedEv:
  97              		@ args = 0, pretend = 0, frame = 0
  98              		@ frame_needed = 0, uses_anonymous_args = 0
  99              		@ link register save eliminated.
 100 0000 0068     		ldr	r0, [r0]
 101 0002 08B1     		cbz	r0, .L9
 102 0004 FFF7FEBF 		b	_ZNK6Socket11IsConnectedEv
 103              	.L9:
 104 0008 7047     		bx	lr
 105              		.size	_ZNK18NetworkTransaction11IsConnectedEv, .-_ZNK18NetworkTransaction11IsConnectedEv
 106 000a 00BF     		.section	.text._ZNK18NetworkTransaction9IsSendingEv,"ax",%progbits
 107              		.align	2
 108              		.global	_ZNK18NetworkTransaction9IsSendingEv
 109              		.thumb
 110              		.thumb_func
 111              		.type	_ZNK18NetworkTransaction9IsSendingEv, %function
 112              	_ZNK18NetworkTransaction9IsSendingEv:
 113              		@ args = 0, pretend = 0, frame = 0
 114              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc2KKCbP.s 			page 3


 115              		@ link register save eliminated.
 116 0000 8069     		ldr	r0, [r0, #24]
 117 0002 0328     		cmp	r0, #3
 118 0004 03D0     		beq	.L12
 119 0006 C31F     		subs	r3, r0, #7
 120 0008 5842     		rsbs	r0, r3, #0
 121 000a 5841     		adcs	r0, r0, r3
 122 000c 7047     		bx	lr
 123              	.L12:
 124 000e 0120     		movs	r0, #1
 125 0010 7047     		bx	lr
 126              		.size	_ZNK18NetworkTransaction9IsSendingEv, .-_ZNK18NetworkTransaction9IsSendingEv
 127 0012 00BF     		.section	.text._ZNK18NetworkTransaction8CanWriteEv,"ax",%progbits
 128              		.align	2
 129              		.global	_ZNK18NetworkTransaction8CanWriteEv
 130              		.thumb
 131              		.thumb_func
 132              		.type	_ZNK18NetworkTransaction8CanWriteEv, %function
 133              	_ZNK18NetworkTransaction8CanWriteEv:
 134              		@ args = 0, pretend = 0, frame = 0
 135              		@ frame_needed = 0, uses_anonymous_args = 0
 136              		@ link register save eliminated.
 137 0000 8369     		ldr	r3, [r0, #24]
 138 0002 0BB1     		cbz	r3, .L14
 139 0004 FFF7FEBF 		b	_ZNK18NetworkTransaction8CanWriteEv.part.8
 140              	.L14:
 141 0008 1846     		mov	r0, r3
 142 000a 7047     		bx	lr
 143              		.size	_ZNK18NetworkTransaction8CanWriteEv, .-_ZNK18NetworkTransaction8CanWriteEv
 144              		.section	.text._ZN18NetworkTransaction4ReadERc,"ax",%progbits
 145              		.align	2
 146              		.global	_ZN18NetworkTransaction4ReadERc
 147              		.thumb
 148              		.thumb_func
 149              		.type	_ZN18NetworkTransaction4ReadERc, %function
 150              	_ZN18NetworkTransaction4ReadERc:
 151              		@ args = 0, pretend = 0, frame = 0
 152              		@ frame_needed = 0, uses_anonymous_args = 0
 153              		@ link register save eliminated.
 154 0000 0068     		ldr	r0, [r0]
 155 0002 08B1     		cbz	r0, .L19
 156 0004 FFF7FEBF 		b	_ZN6Socket8ReadCharERc
 157              	.L19:
 158 0008 0870     		strb	r0, [r1]
 159 000a 7047     		bx	lr
 160              		.size	_ZN18NetworkTransaction4ReadERc, .-_ZN18NetworkTransaction4ReadERc
 161              		.section	.text._ZN18NetworkTransaction10ReadBufferERPKcRj,"ax",%progbits
 162              		.align	2
 163              		.global	_ZN18NetworkTransaction10ReadBufferERPKcRj
 164              		.thumb
 165              		.thumb_func
 166              		.type	_ZN18NetworkTransaction10ReadBufferERPKcRj, %function
 167              	_ZN18NetworkTransaction10ReadBufferERPKcRj:
 168              		@ args = 0, pretend = 0, frame = 0
 169              		@ frame_needed = 0, uses_anonymous_args = 0
 170              		@ link register save eliminated.
 171 0000 0068     		ldr	r0, [r0]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc2KKCbP.s 			page 4


 172 0002 08B1     		cbz	r0, .L21
 173 0004 FFF7FEBF 		b	_ZN6Socket10ReadBufferERPKcRj
 174              	.L21:
 175 0008 7047     		bx	lr
 176              		.size	_ZN18NetworkTransaction10ReadBufferERPKcRj, .-_ZN18NetworkTransaction10ReadBufferERPKcRj
 177 000a 00BF     		.section	.text._ZN18NetworkTransaction5WriteEc,"ax",%progbits
 178              		.align	2
 179              		.global	_ZN18NetworkTransaction5WriteEc
 180              		.thumb
 181              		.thumb_func
 182              		.type	_ZN18NetworkTransaction5WriteEc, %function
 183              	_ZN18NetworkTransaction5WriteEc:
 184              		@ args = 0, pretend = 0, frame = 0
 185              		@ frame_needed = 0, uses_anonymous_args = 0
 186 0000 38B5     		push	{r3, r4, r5, lr}
 187 0002 8369     		ldr	r3, [r0, #24]
 188 0004 0446     		mov	r4, r0
 189 0006 0D46     		mov	r5, r1
 190 0008 03B9     		cbnz	r3, .L33
 191              	.L22:
 192 000a 38BD     		pop	{r3, r4, r5, pc}
 193              	.L33:
 194 000c FFF7FEFF 		bl	_ZNK18NetworkTransaction8CanWriteEv.part.8
 195 0010 0028     		cmp	r0, #0
 196 0012 FAD0     		beq	.L22
 197 0014 E068     		ldr	r0, [r4, #12]
 198 0016 20B1     		cbz	r0, .L34
 199              	.L26:
 200 0018 2946     		mov	r1, r5
 201 001a BDE83840 		pop	{r3, r4, r5, lr}
 202 001e FFF7FEBF 		b	_ZN12OutputBuffer3catEc
 203              	.L34:
 204 0022 04F10C00 		add	r0, r4, #12
 205 0026 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 206 002a 0028     		cmp	r0, #0
 207 002c EDD0     		beq	.L22
 208 002e E068     		ldr	r0, [r4, #12]
 209 0030 F2E7     		b	.L26
 210              		.size	_ZN18NetworkTransaction5WriteEc, .-_ZN18NetworkTransaction5WriteEc
 211 0032 00BF     		.section	.text._ZN18NetworkTransaction5WriteEPKc,"ax",%progbits
 212              		.align	2
 213              		.global	_ZN18NetworkTransaction5WriteEPKc
 214              		.thumb
 215              		.thumb_func
 216              		.type	_ZN18NetworkTransaction5WriteEPKc, %function
 217              	_ZN18NetworkTransaction5WriteEPKc:
 218              		@ args = 0, pretend = 0, frame = 0
 219              		@ frame_needed = 0, uses_anonymous_args = 0
 220 0000 38B5     		push	{r3, r4, r5, lr}
 221 0002 8369     		ldr	r3, [r0, #24]
 222 0004 0446     		mov	r4, r0
 223 0006 0D46     		mov	r5, r1
 224 0008 03B9     		cbnz	r3, .L46
 225              	.L35:
 226 000a 38BD     		pop	{r3, r4, r5, pc}
 227              	.L46:
 228 000c FFF7FEFF 		bl	_ZNK18NetworkTransaction8CanWriteEv.part.8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc2KKCbP.s 			page 5


 229 0010 0028     		cmp	r0, #0
 230 0012 FAD0     		beq	.L35
 231 0014 E068     		ldr	r0, [r4, #12]
 232 0016 20B1     		cbz	r0, .L47
 233              	.L39:
 234 0018 2946     		mov	r1, r5
 235 001a BDE83840 		pop	{r3, r4, r5, lr}
 236 001e FFF7FEBF 		b	_ZN12OutputBuffer3catEPKc
 237              	.L47:
 238 0022 04F10C00 		add	r0, r4, #12
 239 0026 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 240 002a 0028     		cmp	r0, #0
 241 002c EDD0     		beq	.L35
 242 002e E068     		ldr	r0, [r4, #12]
 243 0030 F2E7     		b	.L39
 244              		.size	_ZN18NetworkTransaction5WriteEPKc, .-_ZN18NetworkTransaction5WriteEPKc
 245 0032 00BF     		.section	.text._ZN18NetworkTransaction5WriteEPKcj,"ax",%progbits
 246              		.align	2
 247              		.global	_ZN18NetworkTransaction5WriteEPKcj
 248              		.thumb
 249              		.thumb_func
 250              		.type	_ZN18NetworkTransaction5WriteEPKcj, %function
 251              	_ZN18NetworkTransaction5WriteEPKcj:
 252              		@ args = 0, pretend = 0, frame = 0
 253              		@ frame_needed = 0, uses_anonymous_args = 0
 254 0000 8369     		ldr	r3, [r0, #24]
 255 0002 70B5     		push	{r4, r5, r6, lr}
 256 0004 0446     		mov	r4, r0
 257 0006 0E46     		mov	r6, r1
 258 0008 1546     		mov	r5, r2
 259 000a 03B9     		cbnz	r3, .L59
 260              	.L48:
 261 000c 70BD     		pop	{r4, r5, r6, pc}
 262              	.L59:
 263 000e FFF7FEFF 		bl	_ZNK18NetworkTransaction8CanWriteEv.part.8
 264 0012 0028     		cmp	r0, #0
 265 0014 FAD0     		beq	.L48
 266 0016 E068     		ldr	r0, [r4, #12]
 267 0018 28B1     		cbz	r0, .L60
 268              	.L52:
 269 001a 3146     		mov	r1, r6
 270 001c 2A46     		mov	r2, r5
 271 001e BDE87040 		pop	{r4, r5, r6, lr}
 272 0022 FFF7FEBF 		b	_ZN12OutputBuffer3catEPKcj
 273              	.L60:
 274 0026 04F10C00 		add	r0, r4, #12
 275 002a FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 276 002e 0028     		cmp	r0, #0
 277 0030 ECD0     		beq	.L48
 278 0032 E068     		ldr	r0, [r4, #12]
 279 0034 F1E7     		b	.L52
 280              		.size	_ZN18NetworkTransaction5WriteEPKcj, .-_ZN18NetworkTransaction5WriteEPKcj
 281 0036 00BF     		.section	.text._ZN18NetworkTransaction5WriteE9StringRef,"ax",%progbits
 282              		.align	2
 283              		.global	_ZN18NetworkTransaction5WriteE9StringRef
 284              		.thumb
 285              		.thumb_func
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc2KKCbP.s 			page 6


 286              		.type	_ZN18NetworkTransaction5WriteE9StringRef, %function
 287              	_ZN18NetworkTransaction5WriteE9StringRef:
 288              		@ args = 0, pretend = 0, frame = 8
 289              		@ frame_needed = 0, uses_anonymous_args = 0
 290 0000 30B5     		push	{r4, r5, lr}
 291 0002 83B0     		sub	sp, sp, #12
 292 0004 0546     		mov	r5, r0
 293 0006 6846     		mov	r0, sp
 294 0008 8DE80600 		stmia	sp, {r1, r2}
 295 000c 0C46     		mov	r4, r1
 296 000e FFF7FEFF 		bl	_ZNK9StringRef6strlenEv
 297 0012 2146     		mov	r1, r4
 298 0014 0246     		mov	r2, r0
 299 0016 2846     		mov	r0, r5
 300 0018 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKcj
 301 001c 03B0     		add	sp, sp, #12
 302              		@ sp needed
 303 001e 30BD     		pop	{r4, r5, pc}
 304              		.size	_ZN18NetworkTransaction5WriteE9StringRef, .-_ZN18NetworkTransaction5WriteE9StringRef
 305              		.section	.text._ZN18NetworkTransaction5WriteEP12OutputBuffer,"ax",%progbits
 306              		.align	2
 307              		.global	_ZN18NetworkTransaction5WriteEP12OutputBuffer
 308              		.thumb
 309              		.thumb_func
 310              		.type	_ZN18NetworkTransaction5WriteEP12OutputBuffer, %function
 311              	_ZN18NetworkTransaction5WriteEP12OutputBuffer:
 312              		@ args = 0, pretend = 0, frame = 0
 313              		@ frame_needed = 0, uses_anonymous_args = 0
 314 0000 38B5     		push	{r3, r4, r5, lr}
 315 0002 8369     		ldr	r3, [r0, #24]
 316 0004 0446     		mov	r4, r0
 317 0006 0D46     		mov	r5, r1
 318 0008 23B9     		cbnz	r3, .L70
 319              	.L63:
 320 000a 2846     		mov	r0, r5
 321 000c BDE83840 		pop	{r3, r4, r5, lr}
 322 0010 FFF7FEBF 		b	_ZN12OutputBuffer10ReleaseAllEPS_
 323              	.L70:
 324 0014 FFF7FEFF 		bl	_ZNK18NetworkTransaction8CanWriteEv.part.8
 325 0018 0028     		cmp	r0, #0
 326 001a F6D0     		beq	.L63
 327 001c 2069     		ldr	r0, [r4, #16]
 328 001e 2946     		mov	r1, r5
 329 0020 BDE83840 		pop	{r3, r4, r5, lr}
 330 0024 FFF7FEBF 		b	_ZN11OutputStack4PushEP12OutputBuffer
 331              		.size	_ZN18NetworkTransaction5WriteEP12OutputBuffer, .-_ZN18NetworkTransaction5WriteEP12OutputBuff
 332              		.section	.text._ZN18NetworkTransaction5WriteEP11OutputStack,"ax",%progbits
 333              		.align	2
 334              		.global	_ZN18NetworkTransaction5WriteEP11OutputStack
 335              		.thumb
 336              		.thumb_func
 337              		.type	_ZN18NetworkTransaction5WriteEP11OutputStack, %function
 338              	_ZN18NetworkTransaction5WriteEP11OutputStack:
 339              		@ args = 0, pretend = 0, frame = 8
 340              		@ frame_needed = 0, uses_anonymous_args = 0
 341 0000 10B5     		push	{r4, lr}
 342 0002 0446     		mov	r4, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc2KKCbP.s 			page 7


 343 0004 82B0     		sub	sp, sp, #8
 344 0006 99B1     		cbz	r1, .L71
 345 0008 8369     		ldr	r3, [r0, #24]
 346 000a 2BB9     		cbnz	r3, .L80
 347              	.L73:
 348 000c 0846     		mov	r0, r1
 349 000e 02B0     		add	sp, sp, #8
 350              		@ sp needed
 351 0010 BDE81040 		pop	{r4, lr}
 352 0014 FFF7FEBF 		b	_ZN11OutputStack10ReleaseAllEv
 353              	.L80:
 354 0018 0191     		str	r1, [sp, #4]
 355 001a FFF7FEFF 		bl	_ZNK18NetworkTransaction8CanWriteEv.part.8
 356 001e 0199     		ldr	r1, [sp, #4]
 357 0020 0028     		cmp	r0, #0
 358 0022 F3D0     		beq	.L73
 359 0024 2069     		ldr	r0, [r4, #16]
 360 0026 02B0     		add	sp, sp, #8
 361              		@ sp needed
 362 0028 BDE81040 		pop	{r4, lr}
 363 002c FFF7FEBF 		b	_ZN11OutputStack6AppendEPS_
 364              	.L71:
 365 0030 02B0     		add	sp, sp, #8
 366              		@ sp needed
 367 0032 10BD     		pop	{r4, pc}
 368              		.size	_ZN18NetworkTransaction5WriteEP11OutputStack, .-_ZN18NetworkTransaction5WriteEP11OutputStack
 369              		.section	.text._ZN18NetworkTransaction6PrintfEPKcz,"ax",%progbits
 370              		.align	2
 371              		.global	_ZN18NetworkTransaction6PrintfEPKcz
 372              		.thumb
 373              		.thumb_func
 374              		.type	_ZN18NetworkTransaction6PrintfEPKcz, %function
 375              	_ZN18NetworkTransaction6PrintfEPKcz:
 376              		@ args = 4, pretend = 12, frame = 8
 377              		@ frame_needed = 0, uses_anonymous_args = 1
 378 0000 0EB4     		push	{r1, r2, r3}
 379 0002 10B5     		push	{r4, lr}
 380 0004 8369     		ldr	r3, [r0, #24]
 381 0006 83B0     		sub	sp, sp, #12
 382 0008 0446     		mov	r4, r0
 383 000a 23B9     		cbnz	r3, .L92
 384              	.L81:
 385 000c 03B0     		add	sp, sp, #12
 386              		@ sp needed
 387 000e BDE81040 		pop	{r4, lr}
 388 0012 03B0     		add	sp, sp, #12
 389 0014 7047     		bx	lr
 390              	.L92:
 391 0016 FFF7FEFF 		bl	_ZNK18NetworkTransaction8CanWriteEv.part.8
 392 001a 0028     		cmp	r0, #0
 393 001c F6D0     		beq	.L81
 394 001e E068     		ldr	r0, [r4, #12]
 395 0020 50B1     		cbz	r0, .L93
 396              	.L83:
 397 0022 06AB     		add	r3, sp, #24
 398 0024 1A46     		mov	r2, r3
 399 0026 0599     		ldr	r1, [sp, #20]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc2KKCbP.s 			page 8


 400 0028 0193     		str	r3, [sp, #4]
 401 002a FFF7FEFF 		bl	_ZN12OutputBuffer7vprintfEPKcSt9__va_list
 402 002e 03B0     		add	sp, sp, #12
 403              		@ sp needed
 404 0030 BDE81040 		pop	{r4, lr}
 405 0034 03B0     		add	sp, sp, #12
 406 0036 7047     		bx	lr
 407              	.L93:
 408 0038 04F10C00 		add	r0, r4, #12
 409 003c FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 410 0040 0028     		cmp	r0, #0
 411 0042 E3D0     		beq	.L81
 412 0044 E068     		ldr	r0, [r4, #12]
 413 0046 ECE7     		b	.L83
 414              		.size	_ZN18NetworkTransaction6PrintfEPKcz, .-_ZN18NetworkTransaction6PrintfEPKcz
 415              		.section	.text._ZN18NetworkTransaction14SetFileToWriteEP9FileStore,"ax",%progbits
 416              		.align	2
 417              		.global	_ZN18NetworkTransaction14SetFileToWriteEP9FileStore
 418              		.thumb
 419              		.thumb_func
 420              		.type	_ZN18NetworkTransaction14SetFileToWriteEP9FileStore, %function
 421              	_ZN18NetworkTransaction14SetFileToWriteEP9FileStore:
 422              		@ args = 0, pretend = 0, frame = 0
 423              		@ frame_needed = 0, uses_anonymous_args = 0
 424 0000 38B5     		push	{r3, r4, r5, lr}
 425 0002 8369     		ldr	r3, [r0, #24]
 426 0004 0546     		mov	r5, r0
 427 0006 0C46     		mov	r4, r1
 428 0008 33B9     		cbnz	r3, .L106
 429              	.L95:
 430 000a 24B1     		cbz	r4, .L94
 431 000c 2046     		mov	r0, r4
 432 000e BDE83840 		pop	{r3, r4, r5, lr}
 433 0012 FFF7FEBF 		b	_ZN9FileStore5CloseEv
 434              	.L94:
 435 0016 38BD     		pop	{r3, r4, r5, pc}
 436              	.L106:
 437 0018 FFF7FEFF 		bl	_ZNK18NetworkTransaction8CanWriteEv.part.8
 438 001c 0028     		cmp	r0, #0
 439 001e F4D0     		beq	.L95
 440 0020 6C61     		str	r4, [r5, #20]
 441 0022 38BD     		pop	{r3, r4, r5, pc}
 442              		.size	_ZN18NetworkTransaction14SetFileToWriteEP9FileStore, .-_ZN18NetworkTransaction14SetFileToWri
 443              		.section	.text._ZN18NetworkTransaction13GetDataToSendERj,"ax",%progbits
 444              		.align	2
 445              		.global	_ZN18NetworkTransaction13GetDataToSendERj
 446              		.thumb
 447              		.thumb_func
 448              		.type	_ZN18NetworkTransaction13GetDataToSendERj, %function
 449              	_ZN18NetworkTransaction13GetDataToSendERj:
 450              		@ args = 0, pretend = 0, frame = 0
 451              		@ frame_needed = 0, uses_anonymous_args = 0
 452 0000 38B5     		push	{r3, r4, r5, lr}
 453 0002 0446     		mov	r4, r0
 454 0004 C068     		ldr	r0, [r0, #12]
 455 0006 0D46     		mov	r5, r1
 456 0008 D0B1     		cbz	r0, .L109
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc2KKCbP.s 			page 9


 457              	.L127:
 458 000a D0F80C21 		ldr	r2, [r0, #268]
 459 000e D0F81031 		ldr	r3, [r0, #272]
 460 0012 9A42     		cmp	r2, r3
 461 0014 09D0     		beq	.L110
 462 0016 2968     		ldr	r1, [r5]
 463 0018 D31A     		subs	r3, r2, r3
 464 001a 9942     		cmp	r1, r3
 465 001c 84BF     		itt	hi
 466 001e 2B60     		strhi	r3, [r5]
 467 0020 1946     		movhi	r1, r3
 468 0022 BDE83840 		pop	{r3, r4, r5, lr}
 469 0026 FFF7FEBF 		b	_ZN12OutputBuffer4ReadEj
 470              	.L110:
 471 002a FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 472 002e E060     		str	r0, [r4, #12]
 473 0030 0028     		cmp	r0, #0
 474 0032 EAD1     		bne	.L127
 475 0034 2069     		ldr	r0, [r4, #16]
 476 0036 FFF7FEFF 		bl	_ZN11OutputStack3PopEv
 477 003a E060     		str	r0, [r4, #12]
 478 003c 0028     		cmp	r0, #0
 479 003e E4D1     		bne	.L127
 480              	.L109:
 481 0040 6369     		ldr	r3, [r4, #20]
 482 0042 A068     		ldr	r0, [r4, #8]
 483 0044 53B3     		cbz	r3, .L112
 484 0046 60B3     		cbz	r0, .L135
 485              	.L125:
 486 0048 4268     		ldr	r2, [r0, #4]
 487 004a 8368     		ldr	r3, [r0, #8]
 488 004c 9A42     		cmp	r2, r3
 489 004e 0CD0     		beq	.L136
 490 0050 A068     		ldr	r0, [r4, #8]
 491 0052 4168     		ldr	r1, [r0, #4]
 492 0054 8368     		ldr	r3, [r0, #8]
 493              	.L126:
 494 0056 2A68     		ldr	r2, [r5]
 495 0058 CB1A     		subs	r3, r1, r3
 496 005a 9A42     		cmp	r2, r3
 497 005c 88BF     		it	hi
 498 005e 2B60     		strhi	r3, [r5]
 499 0060 2946     		mov	r1, r5
 500 0062 BDE83840 		pop	{r3, r4, r5, lr}
 501 0066 FFF7FEBF 		b	_ZN13NetworkBuffer8TakeDataERj
 502              	.L136:
 503 006a 6169     		ldr	r1, [r4, #20]
 504 006c F9B1     		cbz	r1, .L137
 505 006e FFF7FEFF 		bl	_ZN13NetworkBuffer12ReadFromFileEP9FileStore
 506 0072 B0F5006F 		cmp	r0, #2048
 507 0076 04D0     		beq	.L124
 508 0078 6069     		ldr	r0, [r4, #20]
 509 007a FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 510 007e 0023     		movs	r3, #0
 511 0080 6361     		str	r3, [r4, #20]
 512              	.L124:
 513 0082 A068     		ldr	r0, [r4, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc2KKCbP.s 			page 10


 514 0084 4168     		ldr	r1, [r0, #4]
 515 0086 8368     		ldr	r3, [r0, #8]
 516 0088 9942     		cmp	r1, r3
 517 008a E4D1     		bne	.L126
 518              	.L119:
 519 008c FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 520 0090 0023     		movs	r3, #0
 521 0092 A360     		str	r3, [r4, #8]
 522              	.L115:
 523 0094 0723     		movs	r3, #7
 524 0096 A361     		str	r3, [r4, #24]
 525              	.L131:
 526 0098 0020     		movs	r0, #0
 527 009a 38BD     		pop	{r3, r4, r5, pc}
 528              	.L112:
 529 009c 0028     		cmp	r0, #0
 530 009e D3D1     		bne	.L125
 531 00a0 F8E7     		b	.L115
 532              	.L135:
 533 00a2 FFF7FEFF 		bl	_ZN13NetworkBuffer8AllocateEv
 534 00a6 A060     		str	r0, [r4, #8]
 535 00a8 0028     		cmp	r0, #0
 536 00aa CDD1     		bne	.L125
 537 00ac F4E7     		b	.L131
 538              	.L137:
 539 00ae A068     		ldr	r0, [r4, #8]
 540 00b0 ECE7     		b	.L119
 541              		.size	_ZN18NetworkTransaction13GetDataToSendERj, .-_ZN18NetworkTransaction13GetDataToSendERj
 542 00b2 00BF     		.section	.text._ZN18NetworkTransaction6CommitEb,"ax",%progbits
 543              		.align	2
 544              		.global	_ZN18NetworkTransaction6CommitEb
 545              		.thumb
 546              		.thumb_func
 547              		.type	_ZN18NetworkTransaction6CommitEb, %function
 548              	_ZN18NetworkTransaction6CommitEb:
 549              		@ args = 0, pretend = 0, frame = 0
 550              		@ frame_needed = 0, uses_anonymous_args = 0
 551 0000 C368     		ldr	r3, [r0, #12]
 552 0002 81F00101 		eor	r1, r1, #1
 553 0006 10B5     		push	{r4, lr}
 554 0008 0446     		mov	r4, r0
 555 000a 0177     		strb	r1, [r0, #28]
 556 000c 13B1     		cbz	r3, .L140
 557 000e 0323     		movs	r3, #3
 558 0010 A361     		str	r3, [r4, #24]
 559 0012 10BD     		pop	{r4, pc}
 560              	.L140:
 561 0014 0069     		ldr	r0, [r0, #16]
 562 0016 FFF7FEFF 		bl	_ZN11OutputStack3PopEv
 563 001a 0323     		movs	r3, #3
 564 001c E060     		str	r0, [r4, #12]
 565 001e A361     		str	r3, [r4, #24]
 566 0020 10BD     		pop	{r4, pc}
 567              		.size	_ZN18NetworkTransaction6CommitEb, .-_ZN18NetworkTransaction6CommitEb
 568 0022 00BF     		.section	.text._ZN18NetworkTransaction5DeferE12DeferralMode,"ax",%progbits
 569              		.align	2
 570              		.global	_ZN18NetworkTransaction5DeferE12DeferralMode
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc2KKCbP.s 			page 11


 571              		.thumb
 572              		.thumb_func
 573              		.type	_ZN18NetworkTransaction5DeferE12DeferralMode, %function
 574              	_ZN18NetworkTransaction5DeferE12DeferralMode:
 575              		@ args = 0, pretend = 0, frame = 0
 576              		@ frame_needed = 0, uses_anonymous_args = 0
 577 0000 0129     		cmp	r1, #1
 578 0002 10B5     		push	{r4, lr}
 579 0004 0446     		mov	r4, r0
 580 0006 0ED0     		beq	.L144
 581 0008 0229     		cmp	r1, #2
 582 000a 08D0     		beq	.L145
 583              	.L143:
 584 000c 084A     		ldr	r2, .L146
 585 000e 0523     		movs	r3, #5
 586 0010 A361     		str	r3, [r4, #24]
 587 0012 2146     		mov	r1, r4
 588 0014 5068     		ldr	r0, [r2, #4]
 589 0016 BDE81040 		pop	{r4, lr}
 590 001a FFF7FEBF 		b	_ZN7Network5DeferEP18NetworkTransaction
 591              	.L145:
 592 001e 0068     		ldr	r0, [r0]
 593 0020 FFF7FEFF 		bl	_ZN6Socket19DiscardReceivedDataEv
 594 0024 F2E7     		b	.L143
 595              	.L144:
 596 0026 0068     		ldr	r0, [r0]
 597 0028 FFF7FEFF 		bl	_ZN6Socket16ResetDataPointerEv
 598 002c EEE7     		b	.L143
 599              	.L147:
 600 002e 00BF     		.align	2
 601              	.L146:
 602 0030 00000000 		.word	reprap
 603              		.size	_ZN18NetworkTransaction5DeferE12DeferralMode, .-_ZN18NetworkTransaction5DeferE12DeferralMode
 604              		.section	.text._ZN18NetworkTransaction7DiscardEv,"ax",%progbits
 605              		.align	2
 606              		.global	_ZN18NetworkTransaction7DiscardEv
 607              		.thumb
 608              		.thumb_func
 609              		.type	_ZN18NetworkTransaction7DiscardEv, %function
 610              	_ZN18NetworkTransaction7DiscardEv:
 611              		@ args = 0, pretend = 0, frame = 0
 612              		@ frame_needed = 0, uses_anonymous_args = 0
 613              		@ link register save eliminated.
 614 0000 0723     		movs	r3, #7
 615 0002 8361     		str	r3, [r0, #24]
 616 0004 0068     		ldr	r0, [r0]
 617 0006 FFF7FEBF 		b	_ZN6Socket18ReleaseTransactionEv
 618              		.size	_ZN18NetworkTransaction7DiscardEv, .-_ZN18NetworkTransaction7DiscardEv
 619 000a 00BF     		.section	.text._ZNK18NetworkTransaction11GetRemoteIPEv,"ax",%progbits
 620              		.align	2
 621              		.global	_ZNK18NetworkTransaction11GetRemoteIPEv
 622              		.thumb
 623              		.thumb_func
 624              		.type	_ZNK18NetworkTransaction11GetRemoteIPEv, %function
 625              	_ZNK18NetworkTransaction11GetRemoteIPEv:
 626              		@ args = 0, pretend = 0, frame = 0
 627              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc2KKCbP.s 			page 12


 628              		@ link register save eliminated.
 629 0000 0068     		ldr	r0, [r0]
 630 0002 00B1     		cbz	r0, .L150
 631 0004 4068     		ldr	r0, [r0, #4]
 632              	.L150:
 633 0006 7047     		bx	lr
 634              		.size	_ZNK18NetworkTransaction11GetRemoteIPEv, .-_ZNK18NetworkTransaction11GetRemoteIPEv
 635              		.section	.text._ZNK18NetworkTransaction13GetRemotePortEv,"ax",%progbits
 636              		.align	2
 637              		.global	_ZNK18NetworkTransaction13GetRemotePortEv
 638              		.thumb
 639              		.thumb_func
 640              		.type	_ZNK18NetworkTransaction13GetRemotePortEv, %function
 641              	_ZNK18NetworkTransaction13GetRemotePortEv:
 642              		@ args = 0, pretend = 0, frame = 0
 643              		@ frame_needed = 0, uses_anonymous_args = 0
 644              		@ link register save eliminated.
 645 0000 0068     		ldr	r0, [r0]
 646 0002 00B1     		cbz	r0, .L153
 647 0004 4088     		ldrh	r0, [r0, #2]
 648              	.L153:
 649 0006 7047     		bx	lr
 650              		.size	_ZNK18NetworkTransaction13GetRemotePortEv, .-_ZNK18NetworkTransaction13GetRemotePortEv
 651              		.section	.text._ZNK18NetworkTransaction12GetLocalPortEv,"ax",%progbits
 652              		.align	2
 653              		.global	_ZNK18NetworkTransaction12GetLocalPortEv
 654              		.thumb
 655              		.thumb_func
 656              		.type	_ZNK18NetworkTransaction12GetLocalPortEv, %function
 657              	_ZNK18NetworkTransaction12GetLocalPortEv:
 658              		@ args = 0, pretend = 0, frame = 0
 659              		@ frame_needed = 0, uses_anonymous_args = 0
 660              		@ link register save eliminated.
 661 0000 0068     		ldr	r0, [r0]
 662 0002 00B1     		cbz	r0, .L156
 663 0004 0088     		ldrh	r0, [r0]
 664              	.L156:
 665 0006 7047     		bx	lr
 666              		.size	_ZNK18NetworkTransaction12GetLocalPortEv, .-_ZNK18NetworkTransaction12GetLocalPortEv
 667              		.section	.text._ZN18NetworkTransaction20AllocateTransactionsEj,"ax",%progbits
 668              		.align	2
 669              		.global	_ZN18NetworkTransaction20AllocateTransactionsEj
 670              		.thumb
 671              		.thumb_func
 672              		.type	_ZN18NetworkTransaction20AllocateTransactionsEj, %function
 673              	_ZN18NetworkTransaction20AllocateTransactionsEj:
 674              		@ args = 0, pretend = 0, frame = 0
 675              		@ frame_needed = 0, uses_anonymous_args = 0
 676 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 677 0002 0D4F     		ldr	r7, .L169
 678 0004 3D68     		ldr	r5, [r7]
 679 0006 0646     		mov	r6, r0
 680 0008 05B1     		cbz	r5, .L168
 681              	.L158:
 682 000a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 683              	.L168:
 684 000c 0028     		cmp	r0, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc2KKCbP.s 			page 13


 685 000e FCD0     		beq	.L158
 686              	.L161:
 687 0010 2020     		movs	r0, #32
 688 0012 FFF7FEFF 		bl	_Znwj
 689 0016 3B68     		ldr	r3, [r7]
 690 0018 8560     		str	r5, [r0, #8]
 691 001a 0446     		mov	r4, r0
 692 001c C560     		str	r5, [r0, #12]
 693 001e 4360     		str	r3, [r0, #4]
 694 0020 1420     		movs	r0, #20
 695 0022 FFF7FEFF 		bl	_Znwj
 696 0026 013E     		subs	r6, r6, #1
 697 0028 0560     		str	r5, [r0]
 698 002a 2061     		str	r0, [r4, #16]
 699 002c 6561     		str	r5, [r4, #20]
 700 002e A561     		str	r5, [r4, #24]
 701 0030 3C60     		str	r4, [r7]
 702 0032 EDD1     		bne	.L161
 703 0034 E9E7     		b	.L158
 704              	.L170:
 705 0036 00BF     		.align	2
 706              	.L169:
 707 0038 00000000 		.word	.LANCHOR0
 708              		.size	_ZN18NetworkTransaction20AllocateTransactionsEj, .-_ZN18NetworkTransaction20AllocateTransact
 709              		.section	.text._ZN18NetworkTransaction8AllocateEv,"ax",%progbits
 710              		.align	2
 711              		.global	_ZN18NetworkTransaction8AllocateEv
 712              		.thumb
 713              		.thumb_func
 714              		.type	_ZN18NetworkTransaction8AllocateEv, %function
 715              	_ZN18NetworkTransaction8AllocateEv:
 716              		@ args = 0, pretend = 0, frame = 0
 717              		@ frame_needed = 0, uses_anonymous_args = 0
 718              		@ link register save eliminated.
 719 0000 044B     		ldr	r3, .L176
 720 0002 1868     		ldr	r0, [r3]
 721 0004 28B1     		cbz	r0, .L172
 722 0006 4268     		ldr	r2, [r0, #4]
 723 0008 1A60     		str	r2, [r3]
 724 000a 0023     		movs	r3, #0
 725 000c 4360     		str	r3, [r0, #4]
 726 000e 8360     		str	r3, [r0, #8]
 727 0010 4361     		str	r3, [r0, #20]
 728              	.L172:
 729 0012 7047     		bx	lr
 730              	.L177:
 731              		.align	2
 732              	.L176:
 733 0014 00000000 		.word	.LANCHOR0
 734              		.size	_ZN18NetworkTransaction8AllocateEv, .-_ZN18NetworkTransaction8AllocateEv
 735              		.section	.text._ZN18NetworkTransaction7ReleaseEv,"ax",%progbits
 736              		.align	2
 737              		.global	_ZN18NetworkTransaction7ReleaseEv
 738              		.thumb
 739              		.thumb_func
 740              		.type	_ZN18NetworkTransaction7ReleaseEv, %function
 741              	_ZN18NetworkTransaction7ReleaseEv:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc2KKCbP.s 			page 14


 742              		@ args = 0, pretend = 0, frame = 0
 743              		@ frame_needed = 0, uses_anonymous_args = 0
 744 0000 10B5     		push	{r4, lr}
 745 0002 0446     		mov	r4, r0
 746 0004 8068     		ldr	r0, [r0, #8]
 747 0006 18B1     		cbz	r0, .L179
 748 0008 FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 749 000c 0023     		movs	r3, #0
 750 000e A360     		str	r3, [r4, #8]
 751              	.L179:
 752 0010 6069     		ldr	r0, [r4, #20]
 753 0012 18B1     		cbz	r0, .L180
 754 0014 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 755 0018 0023     		movs	r3, #0
 756 001a 6361     		str	r3, [r4, #20]
 757              	.L180:
 758 001c E068     		ldr	r0, [r4, #12]
 759 001e FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllEPS_
 760 0022 2069     		ldr	r0, [r4, #16]
 761 0024 FFF7FEFF 		bl	_ZN11OutputStack10ReleaseAllEv
 762 0028 024B     		ldr	r3, .L187
 763 002a 6068     		ldr	r0, [r4, #4]
 764 002c 1A68     		ldr	r2, [r3]
 765 002e 6260     		str	r2, [r4, #4]
 766 0030 1C60     		str	r4, [r3]
 767 0032 10BD     		pop	{r4, pc}
 768              	.L188:
 769              		.align	2
 770              	.L187:
 771 0034 00000000 		.word	.LANCHOR0
 772              		.size	_ZN18NetworkTransaction7ReleaseEv, .-_ZN18NetworkTransaction7ReleaseEv
 773              		.global	_ZN18NetworkTransaction8freelistE
 774              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 775              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 776              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 777              	_ZL28cpu_irq_prev_interrupt_state:
 778 0000 00       		.space	1
 779              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 780              		.align	2
 781              		.type	_ZL32cpu_irq_critical_section_counter, %object
 782              		.size	_ZL32cpu_irq_critical_section_counter, 4
 783              	_ZL32cpu_irq_critical_section_counter:
 784 0000 00000000 		.space	4
 785              		.section	.bss._ZN18NetworkTransaction8freelistE,"aw",%nobits
 786              		.align	2
 787              		.set	.LANCHOR0,. + 0
 788              		.type	_ZN18NetworkTransaction8freelistE, %object
 789              		.size	_ZN18NetworkTransaction8freelistE, 4
 790              	_ZN18NetworkTransaction8freelistE:
 791 0000 00000000 		.space	4
 792              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
