ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccw8DRNT.s 			page 1


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
  15              		.file	"Socket.cpp"
  16              		.section	.text._ZN6SocketC2Ev,"ax",%progbits
  17              		.align	2
  18              		.global	_ZN6SocketC2Ev
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN6SocketC2Ev, %function
  22              	_ZN6SocketC2Ev:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 0022     		movs	r2, #0
  27 0002 8260     		str	r2, [r0, #8]
  28 0004 C260     		str	r2, [r0, #12]
  29 0006 C274     		strb	r2, [r0, #19]
  30 0008 7047     		bx	lr
  31              		.size	_ZN6SocketC2Ev, .-_ZN6SocketC2Ev
  32              		.global	_ZN6SocketC1Ev
  33              		.thumb_set _ZN6SocketC1Ev,_ZN6SocketC2Ev
  34 000a 00BF     		.section	.text._ZN6Socket6ReInitEv,"ax",%progbits
  35              		.align	2
  36              		.global	_ZN6Socket6ReInitEv
  37              		.thumb
  38              		.thumb_func
  39              		.type	_ZN6Socket6ReInitEv, %function
  40              	_ZN6Socket6ReInitEv:
  41              		@ args = 0, pretend = 0, frame = 0
  42              		@ frame_needed = 0, uses_anonymous_args = 0
  43 0000 10B5     		push	{r4, lr}
  44 0002 0446     		mov	r4, r0
  45 0004 C068     		ldr	r0, [r0, #12]
  46 0006 20B1     		cbz	r0, .L6
  47              	.L7:
  48 0008 FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
  49 000c E060     		str	r0, [r4, #12]
  50 000e 0028     		cmp	r0, #0
  51 0010 FAD1     		bne	.L7
  52              	.L6:
  53 0012 A068     		ldr	r0, [r4, #8]
  54 0014 18B1     		cbz	r0, .L5
  55 0016 FFF7FEFF 		bl	_ZN18NetworkTransaction7ReleaseEv
  56 001a 0023     		movs	r3, #0
  57 001c A360     		str	r3, [r4, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccw8DRNT.s 			page 2


  58              	.L5:
  59 001e 0121     		movs	r1, #1
  60 0020 0023     		movs	r3, #0
  61 0022 2174     		strb	r1, [r4, #16]
  62 0024 E174     		strb	r1, [r4, #19]
  63 0026 6374     		strb	r3, [r4, #17]
  64 0028 2375     		strb	r3, [r4, #20]
  65 002a A07C     		ldrb	r0, [r4, #18]	@ zero_extendqisi2
  66 002c 2288     		ldrh	r2, [r4]
  67 002e BDE81040 		pop	{r4, lr}
  68 0032 FFF7FEBF 		b	_Z6sockethhth
  69              		.size	_ZN6Socket6ReInitEv, .-_ZN6Socket6ReInitEv
  70 0036 00BF     		.section	.text._ZN6Socket4InitEht,"ax",%progbits
  71              		.align	2
  72              		.global	_ZN6Socket4InitEht
  73              		.thumb
  74              		.thumb_func
  75              		.type	_ZN6Socket4InitEht, %function
  76              	_ZN6Socket4InitEht:
  77              		@ args = 0, pretend = 0, frame = 0
  78              		@ frame_needed = 0, uses_anonymous_args = 0
  79              		@ link register save eliminated.
  80 0000 8174     		strb	r1, [r0, #18]
  81 0002 0280     		strh	r2, [r0]	@ movhi
  82 0004 FFF7FEBF 		b	_ZN6Socket6ReInitEv
  83              		.size	_ZN6Socket4InitEht, .-_ZN6Socket4InitEht
  84              		.section	.text._ZN6Socket5CloseEv,"ax",%progbits
  85              		.align	2
  86              		.global	_ZN6Socket5CloseEv
  87              		.thumb
  88              		.thumb_func
  89              		.type	_ZN6Socket5CloseEv, %function
  90              	_ZN6Socket5CloseEv:
  91              		@ args = 0, pretend = 0, frame = 0
  92              		@ frame_needed = 0, uses_anonymous_args = 0
  93              		@ link register save eliminated.
  94 0000 807C     		ldrb	r0, [r0, #18]	@ zero_extendqisi2
  95 0002 FFF7FEBF 		b	_Z16disconnectNoWaith
  96              		.size	_ZN6Socket5CloseEv, .-_ZN6Socket5CloseEv
  97 0006 00BF     		.section	.text._ZN6Socket18ReleaseTransactionEv,"ax",%progbits
  98              		.align	2
  99              		.global	_ZN6Socket18ReleaseTransactionEv
 100              		.thumb
 101              		.thumb_func
 102              		.type	_ZN6Socket18ReleaseTransactionEv, %function
 103              	_ZN6Socket18ReleaseTransactionEv:
 104              		@ args = 0, pretend = 0, frame = 0
 105              		@ frame_needed = 0, uses_anonymous_args = 0
 106 0000 10B5     		push	{r4, lr}
 107 0002 0446     		mov	r4, r0
 108 0004 8068     		ldr	r0, [r0, #8]
 109 0006 18B1     		cbz	r0, .L14
 110 0008 FFF7FEFF 		bl	_ZN18NetworkTransaction7ReleaseEv
 111 000c 0023     		movs	r3, #0
 112 000e A360     		str	r3, [r4, #8]
 113              	.L14:
 114 0010 10BD     		pop	{r4, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccw8DRNT.s 			page 3


 115              		.size	_ZN6Socket18ReleaseTransactionEv, .-_ZN6Socket18ReleaseTransactionEv
 116 0012 00BF     		.section	.text._ZN6Socket9TerminateEv,"ax",%progbits
 117              		.align	2
 118              		.global	_ZN6Socket9TerminateEv
 119              		.thumb
 120              		.thumb_func
 121              		.type	_ZN6Socket9TerminateEv, %function
 122              	_ZN6Socket9TerminateEv:
 123              		@ args = 0, pretend = 0, frame = 0
 124              		@ frame_needed = 0, uses_anonymous_args = 0
 125 0000 C37C     		ldrb	r3, [r0, #19]	@ zero_extendqisi2
 126 0002 10B5     		push	{r4, lr}
 127 0004 0446     		mov	r4, r0
 128 0006 03B9     		cbnz	r3, .L30
 129 0008 10BD     		pop	{r4, pc}
 130              	.L30:
 131 000a 807C     		ldrb	r0, [r0, #18]	@ zero_extendqisi2
 132 000c FFF7FEFF 		bl	_Z16disconnectNoWaith
 133 0010 E068     		ldr	r0, [r4, #12]
 134 0012 0123     		movs	r3, #1
 135 0014 6374     		strb	r3, [r4, #17]
 136 0016 E374     		strb	r3, [r4, #19]
 137 0018 20B1     		cbz	r0, .L25
 138              	.L26:
 139 001a FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 140 001e E060     		str	r0, [r4, #12]
 141 0020 0028     		cmp	r0, #0
 142 0022 FAD1     		bne	.L26
 143              	.L25:
 144 0024 A068     		ldr	r0, [r4, #8]
 145 0026 20B1     		cbz	r0, .L31
 146 0028 FFF7FEFF 		bl	_ZN18NetworkTransaction7ReleaseEv
 147 002c 0023     		movs	r3, #0
 148 002e A360     		str	r3, [r4, #8]
 149 0030 10BD     		pop	{r4, pc}
 150              	.L31:
 151 0032 10BD     		pop	{r4, pc}
 152              		.size	_ZN6Socket9TerminateEv, .-_ZN6Socket9TerminateEv
 153              		.section	.text._ZN6Socket19TerminateAndDisableEv,"ax",%progbits
 154              		.align	2
 155              		.global	_ZN6Socket19TerminateAndDisableEv
 156              		.thumb
 157              		.thumb_func
 158              		.type	_ZN6Socket19TerminateAndDisableEv, %function
 159              	_ZN6Socket19TerminateAndDisableEv:
 160              		@ args = 0, pretend = 0, frame = 0
 161              		@ frame_needed = 0, uses_anonymous_args = 0
 162 0000 10B5     		push	{r4, lr}
 163 0002 0446     		mov	r4, r0
 164 0004 FFF7FEFF 		bl	_ZN6Socket9TerminateEv
 165 0008 0023     		movs	r3, #0
 166 000a E374     		strb	r3, [r4, #19]
 167 000c 10BD     		pop	{r4, pc}
 168              		.size	_ZN6Socket19TerminateAndDisableEv, .-_ZN6Socket19TerminateAndDisableEv
 169 000e 00BF     		.section	.text._ZNK6Socket11IsConnectedEv,"ax",%progbits
 170              		.align	2
 171              		.global	_ZNK6Socket11IsConnectedEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccw8DRNT.s 			page 4


 172              		.thumb
 173              		.thumb_func
 174              		.type	_ZNK6Socket11IsConnectedEv, %function
 175              	_ZNK6Socket11IsConnectedEv:
 176              		@ args = 0, pretend = 0, frame = 0
 177              		@ frame_needed = 0, uses_anonymous_args = 0
 178 0000 C37C     		ldrb	r3, [r0, #19]	@ zero_extendqisi2
 179 0002 10B5     		push	{r4, lr}
 180 0004 0BB9     		cbnz	r3, .L37
 181 0006 1846     		mov	r0, r3
 182 0008 10BD     		pop	{r4, pc}
 183              	.L37:
 184 000a 807C     		ldrb	r0, [r0, #18]	@ zero_extendqisi2
 185 000c 0124     		movs	r4, #1
 186 000e 04EB8000 		add	r0, r4, r0, lsl #2
 187 0012 C000     		lsls	r0, r0, #3
 188 0014 00F54070 		add	r0, r0, #768
 189 0018 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 190 001c 1728     		cmp	r0, #23
 191 001e 04D0     		beq	.L36
 192 0020 B0F11C03 		subs	r3, r0, #28
 193 0024 5842     		rsbs	r0, r3, #0
 194 0026 5841     		adcs	r0, r0, r3
 195 0028 10BD     		pop	{r4, pc}
 196              	.L36:
 197 002a 2046     		mov	r0, r4
 198 002c 10BD     		pop	{r4, pc}
 199              		.size	_ZNK6Socket11IsConnectedEv, .-_ZNK6Socket11IsConnectedEv
 200 002e 00BF     		.section	.text._ZNK6Socket17HasMoreDataToReadEv,"ax",%progbits
 201              		.align	2
 202              		.global	_ZNK6Socket17HasMoreDataToReadEv
 203              		.thumb
 204              		.thumb_func
 205              		.type	_ZNK6Socket17HasMoreDataToReadEv, %function
 206              	_ZNK6Socket17HasMoreDataToReadEv:
 207              		@ args = 0, pretend = 0, frame = 0
 208              		@ frame_needed = 0, uses_anonymous_args = 0
 209 0000 10B5     		push	{r4, lr}
 210 0002 0446     		mov	r4, r0
 211 0004 C07C     		ldrb	r0, [r0, #19]	@ zero_extendqisi2
 212 0006 28B1     		cbz	r0, .L39
 213 0008 E068     		ldr	r0, [r4, #12]
 214 000a 20B1     		cbz	r0, .L41
 215 000c FFF7FEFF 		bl	_ZNK13NetworkBuffer14TotalRemainingEv
 216 0010 08B1     		cbz	r0, .L41
 217 0012 0120     		movs	r0, #1
 218              	.L39:
 219 0014 10BD     		pop	{r4, pc}
 220              	.L41:
 221 0016 A07C     		ldrb	r0, [r4, #18]	@ zero_extendqisi2
 222 0018 4001     		lsls	r0, r0, #5
 223 001a 00F54270 		add	r0, r0, #776
 224 001e FFF7FEFF 		bl	_Z12WIZCHIP_READm
 225 0022 B0F11703 		subs	r3, r0, #23
 226 0026 5842     		rsbs	r0, r3, #0
 227 0028 5841     		adcs	r0, r0, r3
 228 002a 10BD     		pop	{r4, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccw8DRNT.s 			page 5


 229              		.size	_ZNK6Socket17HasMoreDataToReadEv, .-_ZNK6Socket17HasMoreDataToReadEv
 230              		.section	.text._ZNK6Socket8CanWriteEv,"ax",%progbits
 231              		.align	2
 232              		.global	_ZNK6Socket8CanWriteEv
 233              		.thumb
 234              		.thumb_func
 235              		.type	_ZNK6Socket8CanWriteEv, %function
 236              	_ZNK6Socket8CanWriteEv:
 237              		@ args = 0, pretend = 0, frame = 0
 238              		@ frame_needed = 0, uses_anonymous_args = 0
 239 0000 C37C     		ldrb	r3, [r0, #19]	@ zero_extendqisi2
 240 0002 10B5     		push	{r4, lr}
 241 0004 0BB9     		cbnz	r3, .L50
 242 0006 1846     		mov	r0, r3
 243 0008 10BD     		pop	{r4, pc}
 244              	.L50:
 245 000a 807C     		ldrb	r0, [r0, #18]	@ zero_extendqisi2
 246 000c 0124     		movs	r4, #1
 247 000e 04EB8000 		add	r0, r4, r0, lsl #2
 248 0012 C000     		lsls	r0, r0, #3
 249 0014 00F54070 		add	r0, r0, #768
 250 0018 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 251 001c 1728     		cmp	r0, #23
 252 001e 04D0     		beq	.L49
 253 0020 B0F11C03 		subs	r3, r0, #28
 254 0024 5842     		rsbs	r0, r3, #0
 255 0026 5841     		adcs	r0, r0, r3
 256 0028 10BD     		pop	{r4, pc}
 257              	.L49:
 258 002a 2046     		mov	r0, r4
 259 002c 10BD     		pop	{r4, pc}
 260              		.size	_ZNK6Socket8CanWriteEv, .-_ZNK6Socket8CanWriteEv
 261 002e 00BF     		.section	.text._ZNK6Socket9IsSendingEv,"ax",%progbits
 262              		.align	2
 263              		.global	_ZNK6Socket9IsSendingEv
 264              		.thumb
 265              		.thumb_func
 266              		.type	_ZNK6Socket9IsSendingEv, %function
 267              	_ZNK6Socket9IsSendingEv:
 268              		@ args = 0, pretend = 0, frame = 0
 269              		@ frame_needed = 0, uses_anonymous_args = 0
 270              		@ link register save eliminated.
 271 0000 8068     		ldr	r0, [r0, #8]
 272 0002 08B1     		cbz	r0, .L52
 273 0004 FFF7FEBF 		b	_ZNK18NetworkTransaction9IsSendingEv
 274              	.L52:
 275 0008 7047     		bx	lr
 276              		.size	_ZNK6Socket9IsSendingEv, .-_ZNK6Socket9IsSendingEv
 277 000a 00BF     		.section	.text._ZN6Socket8ReadCharERc,"ax",%progbits
 278              		.align	2
 279              		.global	_ZN6Socket8ReadCharERc
 280              		.thumb
 281              		.thumb_func
 282              		.type	_ZN6Socket8ReadCharERc, %function
 283              	_ZN6Socket8ReadCharERc:
 284              		@ args = 0, pretend = 0, frame = 0
 285              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccw8DRNT.s 			page 6


 286 0000 70B5     		push	{r4, r5, r6, lr}
 287 0002 0546     		mov	r5, r0
 288 0004 C068     		ldr	r0, [r0, #12]
 289 0006 0E46     		mov	r6, r1
 290 0008 98B1     		cbz	r0, .L60
 291              	.L59:
 292 000a 4268     		ldr	r2, [r0, #4]
 293 000c 8368     		ldr	r3, [r0, #8]
 294 000e 9A42     		cmp	r2, r3
 295 0010 0AD0     		beq	.L64
 296 0012 3146     		mov	r1, r6
 297 0014 FFF7FEFF 		bl	_ZN13NetworkBuffer8ReadCharERc
 298 0018 0446     		mov	r4, r0
 299 001a E868     		ldr	r0, [r5, #12]
 300 001c 4168     		ldr	r1, [r0, #4]
 301 001e 8268     		ldr	r2, [r0, #8]
 302 0020 9142     		cmp	r1, r2
 303 0022 0AD0     		beq	.L61
 304 0024 2046     		mov	r0, r4
 305 0026 70BD     		pop	{r4, r5, r6, pc}
 306              	.L64:
 307 0028 FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 308 002c E860     		str	r0, [r5, #12]
 309 002e 0028     		cmp	r0, #0
 310 0030 EBD1     		bne	.L59
 311              	.L60:
 312 0032 0024     		movs	r4, #0
 313 0034 3470     		strb	r4, [r6]
 314 0036 2046     		mov	r0, r4
 315 0038 70BD     		pop	{r4, r5, r6, pc}
 316              	.L61:
 317 003a FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 318 003e E860     		str	r0, [r5, #12]
 319 0040 2046     		mov	r0, r4
 320 0042 70BD     		pop	{r4, r5, r6, pc}
 321              		.size	_ZN6Socket8ReadCharERc, .-_ZN6Socket8ReadCharERc
 322              		.section	.text._ZN6Socket10ReadBufferERPKcRj,"ax",%progbits
 323              		.align	2
 324              		.global	_ZN6Socket10ReadBufferERPKcRj
 325              		.thumb
 326              		.thumb_func
 327              		.type	_ZN6Socket10ReadBufferERPKcRj, %function
 328              	_ZN6Socket10ReadBufferERPKcRj:
 329              		@ args = 0, pretend = 0, frame = 0
 330              		@ frame_needed = 0, uses_anonymous_args = 0
 331 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 332 0002 0746     		mov	r7, r0
 333 0004 C068     		ldr	r0, [r0, #12]
 334 0006 0E46     		mov	r6, r1
 335 0008 1546     		mov	r5, r2
 336 000a D0B1     		cbz	r0, .L66
 337 000c 4268     		ldr	r2, [r0, #4]
 338 000e 8368     		ldr	r3, [r0, #8]
 339 0010 9A42     		cmp	r2, r3
 340 0012 09D0     		beq	.L76
 341              	.L68:
 342 0014 4FF40063 		mov	r3, #2048
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccw8DRNT.s 			page 7


 343 0018 2B60     		str	r3, [r5]
 344 001a 2946     		mov	r1, r5
 345 001c FFF7FEFF 		bl	_ZN13NetworkBuffer8TakeDataERj
 346 0020 0123     		movs	r3, #1
 347 0022 3060     		str	r0, [r6]
 348 0024 1846     		mov	r0, r3
 349 0026 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 350              	.L76:
 351 0028 FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 352 002c F860     		str	r0, [r7, #12]
 353 002e 40B1     		cbz	r0, .L66
 354              	.L70:
 355 0030 4468     		ldr	r4, [r0, #4]
 356 0032 8368     		ldr	r3, [r0, #8]
 357 0034 9C42     		cmp	r4, r3
 358 0036 EDD1     		bne	.L68
 359 0038 FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 360 003c F860     		str	r0, [r7, #12]
 361 003e 0028     		cmp	r0, #0
 362 0040 F6D1     		bne	.L70
 363              	.L66:
 364 0042 0023     		movs	r3, #0
 365 0044 1846     		mov	r0, r3
 366 0046 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 367              		.size	_ZN6Socket10ReadBufferERPKcRj, .-_ZN6Socket10ReadBufferERPKcRj
 368              		.section	.text._ZN6Socket11TrySendDataEv,"ax",%progbits
 369              		.align	2
 370              		.global	_ZN6Socket11TrySendDataEv
 371              		.thumb
 372              		.thumb_func
 373              		.type	_ZN6Socket11TrySendDataEv, %function
 374              	_ZN6Socket11TrySendDataEv:
 375              		@ args = 0, pretend = 0, frame = 8
 376              		@ frame_needed = 0, uses_anonymous_args = 0
 377 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 378 0002 047D     		ldrb	r4, [r0, #20]	@ zero_extendqisi2
 379 0004 83B0     		sub	sp, sp, #12
 380 0006 0646     		mov	r6, r0
 381 0008 002C     		cmp	r4, #0
 382 000a 3AD1     		bne	.L95
 383              	.L78:
 384 000c B368     		ldr	r3, [r6, #8]
 385 000e 9B69     		ldr	r3, [r3, #24]
 386 0010 072B     		cmp	r3, #7
 387 0012 32D0     		beq	.L88
 388 0014 B07C     		ldrb	r0, [r6, #18]	@ zero_extendqisi2
 389 0016 FFF7FEFF 		bl	_Z12getSn_TX_FSRh
 390 001a B77C     		ldrb	r7, [r6, #18]	@ zero_extendqisi2
 391 001c 7F01     		lsls	r7, r7, #5
 392 001e 0837     		adds	r7, r7, #8
 393 0020 0446     		mov	r4, r0
 394 0022 07F51050 		add	r0, r7, #9216
 395 0026 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 396 002a 0546     		mov	r5, r0
 397 002c 07F51450 		add	r0, r7, #9472
 398 0030 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 399 0034 00EB0520 		add	r0, r0, r5, lsl #8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccw8DRNT.s 			page 8


 400 0038 85B2     		uxth	r5, r0
 401 003a B4B1     		cbz	r4, .L81
 402 003c 0027     		movs	r7, #0
 403 003e 0AE0     		b	.L85
 404              	.L96:
 405 0040 BDF80420 		ldrh	r2, [sp, #4]
 406 0044 B07C     		ldrb	r0, [r6, #18]	@ zero_extendqisi2
 407 0046 FFF7FEFF 		bl	_Z16wiz_send_data_athPKhtt
 408 004a 019A     		ldr	r2, [sp, #4]
 409 004c 1544     		add	r5, r5, r2
 410 004e A41A     		subs	r4, r4, r2
 411 0050 ADB2     		uxth	r5, r5
 412 0052 2ED0     		beq	.L86
 413 0054 0127     		movs	r7, #1
 414              	.L85:
 415 0056 01A9     		add	r1, sp, #4
 416 0058 B068     		ldr	r0, [r6, #8]
 417 005a 0194     		str	r4, [sp, #4]
 418 005c FFF7FEFF 		bl	_ZN18NetworkTransaction13GetDataToSendERj
 419 0060 2B46     		mov	r3, r5
 420 0062 0146     		mov	r1, r0
 421 0064 0028     		cmp	r0, #0
 422 0066 EBD1     		bne	.L96
 423 0068 1FBB     		cbnz	r7, .L86
 424              	.L81:
 425 006a B368     		ldr	r3, [r6, #8]
 426 006c 9C69     		ldr	r4, [r3, #24]
 427 006e E31F     		subs	r3, r4, #7
 428 0070 5C42     		rsbs	r4, r3, #0
 429 0072 5C41     		adcs	r4, r4, r3
 430 0074 2046     		mov	r0, r4
 431 0076 03B0     		add	sp, sp, #12
 432              		@ sp needed
 433 0078 F0BD     		pop	{r4, r5, r6, r7, pc}
 434              	.L88:
 435 007a 0124     		movs	r4, #1
 436              	.L80:
 437 007c 2046     		mov	r0, r4
 438 007e 03B0     		add	sp, sp, #12
 439              		@ sp needed
 440 0080 F0BD     		pop	{r4, r5, r6, r7, pc}
 441              	.L95:
 442 0082 807C     		ldrb	r0, [r0, #18]	@ zero_extendqisi2
 443 0084 0427     		movs	r7, #4
 444 0086 0125     		movs	r5, #1
 445 0088 17FB0050 		smlabb	r0, r7, r0, r5
 446 008c C000     		lsls	r0, r0, #3
 447 008e 00F50070 		add	r0, r0, #512
 448 0092 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 449 0096 00F01003 		and	r3, r0, #16
 450 009a 03F0FF02 		and	r2, r3, #255
 451 009e BBB9     		cbnz	r3, .L97
 452 00a0 00F00800 		and	r0, r0, #8
 453 00a4 00F0FF03 		and	r3, r0, #255
 454 00a8 68B9     		cbnz	r0, .L98
 455 00aa 1C46     		mov	r4, r3
 456 00ac 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccw8DRNT.s 			page 9


 457 00ae 03B0     		add	sp, sp, #12
 458              		@ sp needed
 459 00b0 F0BD     		pop	{r4, r5, r6, r7, pc}
 460              	.L86:
 461 00b2 B07C     		ldrb	r0, [r6, #18]	@ zero_extendqisi2
 462 00b4 2021     		movs	r1, #32
 463 00b6 FFF7FEFF 		bl	_Z11ExecCommandhh
 464 00ba 0024     		movs	r4, #0
 465 00bc 0123     		movs	r3, #1
 466 00be 2046     		mov	r0, r4
 467 00c0 3375     		strb	r3, [r6, #20]
 468 00c2 03B0     		add	sp, sp, #12
 469              		@ sp needed
 470 00c4 F0BD     		pop	{r4, r5, r6, r7, pc}
 471              	.L98:
 472 00c6 3275     		strb	r2, [r6, #20]
 473 00c8 B07C     		ldrb	r0, [r6, #18]	@ zero_extendqisi2
 474 00ca FFF7FEFF 		bl	_Z16disconnectNoWaith
 475 00ce D5E7     		b	.L80
 476              	.L97:
 477 00d0 B07C     		ldrb	r0, [r6, #18]	@ zero_extendqisi2
 478 00d2 17FB0050 		smlabb	r0, r7, r0, r5
 479 00d6 C000     		lsls	r0, r0, #3
 480 00d8 00F50070 		add	r0, r0, #512
 481 00dc 1021     		movs	r1, #16
 482 00de FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 483 00e2 0023     		movs	r3, #0
 484 00e4 3375     		strb	r3, [r6, #20]
 485 00e6 91E7     		b	.L78
 486              		.size	_ZN6Socket11TrySendDataEv, .-_ZN6Socket11TrySendDataEv
 487              		.section	.text._ZN6Socket4PollEb,"ax",%progbits
 488              		.align	2
 489              		.global	_ZN6Socket4PollEb
 490              		.thumb
 491              		.thumb_func
 492              		.type	_ZN6Socket4PollEb, %function
 493              	_ZN6Socket4PollEb:
 494              		@ args = 0, pretend = 0, frame = 0
 495              		@ frame_needed = 0, uses_anonymous_args = 0
 496 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 497 0004 C37C     		ldrb	r3, [r0, #19]	@ zero_extendqisi2
 498 0006 0446     		mov	r4, r0
 499 0008 0D46     		mov	r5, r1
 500 000a 13B3     		cbz	r3, .L99
 501 000c 29B1     		cbz	r1, .L108
 502 000e C068     		ldr	r0, [r0, #12]
 503 0010 18B1     		cbz	r0, .L108
 504              	.L131:
 505 0012 4268     		ldr	r2, [r0, #4]
 506 0014 8368     		ldr	r3, [r0, #8]
 507 0016 9A42     		cmp	r2, r3
 508 0018 1DD0     		beq	.L190
 509              	.L108:
 510 001a A07C     		ldrb	r0, [r4, #18]	@ zero_extendqisi2
 511 001c 4001     		lsls	r0, r0, #5
 512 001e 00F54270 		add	r0, r0, #776
 513 0022 FFF7FEFF 		bl	_Z12WIZCHIP_READm
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccw8DRNT.s 			page 10


 514 0026 1C28     		cmp	r0, #28
 515 0028 13D8     		bhi	.L99
 516 002a DFE800F0 		tbb	[pc, r0]
 517              	.L104:
 518 002e 40       		.byte	(.L103-.L104)/2
 519 002f 12       		.byte	(.L99-.L104)/2
 520 0030 12       		.byte	(.L99-.L104)/2
 521 0031 12       		.byte	(.L99-.L104)/2
 522 0032 12       		.byte	(.L99-.L104)/2
 523 0033 12       		.byte	(.L99-.L104)/2
 524 0034 12       		.byte	(.L99-.L104)/2
 525 0035 12       		.byte	(.L99-.L104)/2
 526 0036 12       		.byte	(.L99-.L104)/2
 527 0037 12       		.byte	(.L99-.L104)/2
 528 0038 12       		.byte	(.L99-.L104)/2
 529 0039 12       		.byte	(.L99-.L104)/2
 530 003a 12       		.byte	(.L99-.L104)/2
 531 003b 12       		.byte	(.L99-.L104)/2
 532 003c 12       		.byte	(.L99-.L104)/2
 533 003d 12       		.byte	(.L99-.L104)/2
 534 003e 12       		.byte	(.L99-.L104)/2
 535 003f 12       		.byte	(.L99-.L104)/2
 536 0040 12       		.byte	(.L99-.L104)/2
 537 0041 0F       		.byte	(.L105-.L104)/2
 538 0042 12       		.byte	(.L99-.L104)/2
 539 0043 12       		.byte	(.L99-.L104)/2
 540 0044 12       		.byte	(.L99-.L104)/2
 541 0045 1A       		.byte	(.L106-.L104)/2
 542 0046 12       		.byte	(.L99-.L104)/2
 543 0047 12       		.byte	(.L99-.L104)/2
 544 0048 12       		.byte	(.L99-.L104)/2
 545 0049 12       		.byte	(.L99-.L104)/2
 546 004a 4C       		.byte	(.L107-.L104)/2
 547 004b 00       		.align	1
 548              	.L105:
 549 004c 2388     		ldrh	r3, [r4]
 550 004e 002B     		cmp	r3, #0
 551 0050 65D1     		bne	.L191
 552              	.L99:
 553 0052 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 554              	.L190:
 555 0056 FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 556 005a E060     		str	r0, [r4, #12]
 557 005c 0028     		cmp	r0, #0
 558 005e D8D1     		bne	.L131
 559 0060 DBE7     		b	.L108
 560              	.L106:
 561 0062 A07C     		ldrb	r0, [r4, #18]	@ zero_extendqisi2
 562 0064 0427     		movs	r7, #4
 563 0066 0126     		movs	r6, #1
 564 0068 17FB0060 		smlabb	r0, r7, r0, r6
 565 006c C000     		lsls	r0, r0, #3
 566 006e 00F50070 		add	r0, r0, #512
 567 0072 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 568 0076 C307     		lsls	r3, r0, #31
 569 0078 66D4     		bmi	.L192
 570              	.L112:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccw8DRNT.s 			page 11


 571 007a E37C     		ldrb	r3, [r4, #19]	@ zero_extendqisi2
 572 007c A07C     		ldrb	r0, [r4, #18]	@ zero_extendqisi2
 573 007e 022B     		cmp	r3, #2
 574 0080 00F0A180 		beq	.L113
 575              	.L114:
 576 0084 FFF7FEFF 		bl	_Z12getSn_RX_RSRh
 577 0088 0646     		mov	r6, r0
 578 008a 0028     		cmp	r0, #0
 579 008c 40F08280 		bne	.L193
 580              	.L118:
 581 0090 A368     		ldr	r3, [r4, #8]
 582 0092 002B     		cmp	r3, #0
 583 0094 4BD0     		beq	.L194
 584              	.L121:
 585 0096 002D     		cmp	r5, #0
 586 0098 DBD0     		beq	.L99
 587 009a A068     		ldr	r0, [r4, #8]
 588 009c 0028     		cmp	r0, #0
 589 009e D8D0     		beq	.L99
 590 00a0 FFF7FEFF 		bl	_ZNK18NetworkTransaction9IsSendingEv
 591 00a4 0028     		cmp	r0, #0
 592 00a6 40F09680 		bne	.L125
 593 00aa BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 594              	.L103:
 595 00ae 002D     		cmp	r5, #0
 596 00b0 CFD0     		beq	.L99
 597 00b2 624B     		ldr	r3, .L197
 598 00b4 2146     		mov	r1, r4
 599 00b6 5869     		ldr	r0, [r3, #20]
 600 00b8 FFF7FEFF 		bl	_ZN9Webserver14ConnectionLostEP6Socket
 601 00bc 2046     		mov	r0, r4
 602 00be BDE8F843 		pop	{r3, r4, r5, r6, r7, r8, r9, lr}
 603 00c2 FFF7FEBF 		b	_ZN6Socket6ReInitEv
 604              	.L107:
 605 00c6 A068     		ldr	r0, [r4, #8]
 606 00c8 0423     		movs	r3, #4
 607 00ca E374     		strb	r3, [r4, #19]
 608 00cc B0B1     		cbz	r0, .L130
 609 00ce FFF7FEFF 		bl	_ZNK18NetworkTransaction9IsSendingEv
 610 00d2 50B1     		cbz	r0, .L186
 611 00d4 2046     		mov	r0, r4
 612 00d6 FFF7FEFF 		bl	_ZN6Socket11TrySendDataEv
 613 00da 30B1     		cbz	r0, .L186
 614 00dc A068     		ldr	r0, [r4, #8]
 615 00de 68B1     		cbz	r0, .L130
 616 00e0 FFF7FEFF 		bl	_ZN18NetworkTransaction7ReleaseEv
 617 00e4 0023     		movs	r3, #0
 618 00e6 A360     		str	r3, [r4, #8]
 619 00e8 08E0     		b	.L130
 620              	.L186:
 621 00ea A068     		ldr	r0, [r4, #8]
 622 00ec 30B1     		cbz	r0, .L130
 623 00ee FFF7FEFF 		bl	_ZNK18NetworkTransaction9IsSendingEv
 624 00f2 0028     		cmp	r0, #0
 625 00f4 ADD1     		bne	.L99
 626 00f6 A368     		ldr	r3, [r4, #8]
 627 00f8 002B     		cmp	r3, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccw8DRNT.s 			page 12


 628 00fa AAD1     		bne	.L99
 629              	.L130:
 630 00fc 2046     		mov	r0, r4
 631 00fe FFF7FEFF 		bl	_ZNK6Socket17HasMoreDataToReadEv
 632 0102 0028     		cmp	r0, #0
 633 0104 00F08780 		beq	.L195
 634 0108 FFF7FEFF 		bl	_ZN18NetworkTransaction8AllocateEv
 635 010c A060     		str	r0, [r4, #8]
 636 010e 0028     		cmp	r0, #0
 637 0110 9FD0     		beq	.L99
 638 0112 2146     		mov	r1, r4
 639 0114 0222     		movs	r2, #2
 640 0116 BDE8F843 		pop	{r3, r4, r5, r6, r7, r8, r9, lr}
 641 011a FFF7FEBF 		b	_ZN18NetworkTransaction3SetEP6Socket17TransactionStatus
 642              	.L191:
 643 011e A07C     		ldrb	r0, [r4, #18]	@ zero_extendqisi2
 644 0120 0221     		movs	r1, #2
 645 0122 FFF7FEFF 		bl	_Z11ExecCommandhh
 646 0126 0223     		movs	r3, #2
 647 0128 E374     		strb	r3, [r4, #19]
 648 012a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 649              	.L194:
 650 012e E368     		ldr	r3, [r4, #12]
 651 0130 002B     		cmp	r3, #0
 652 0132 B0D0     		beq	.L121
 653 0134 FFF7FEFF 		bl	_ZN18NetworkTransaction8AllocateEv
 654 0138 A060     		str	r0, [r4, #8]
 655 013a 0028     		cmp	r0, #0
 656 013c ABD0     		beq	.L121
 657 013e 2146     		mov	r1, r4
 658 0140 0222     		movs	r2, #2
 659 0142 FFF7FEFF 		bl	_ZN18NetworkTransaction3SetEP6Socket17TransactionStatus
 660 0146 A6E7     		b	.L121
 661              	.L192:
 662 0148 A07C     		ldrb	r0, [r4, #18]	@ zero_extendqisi2
 663 014a 17FB0060 		smlabb	r0, r7, r0, r6
 664 014e C000     		lsls	r0, r0, #3
 665 0150 E119     		adds	r1, r4, r7
 666 0152 3A46     		mov	r2, r7
 667 0154 00F54060 		add	r0, r0, #3072
 668 0158 FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 669 015c 94F81280 		ldrb	r8, [r4, #18]	@ zero_extendqisi2
 670 0160 17FB0868 		smlabb	r8, r7, r8, r6
 671 0164 4FEAC808 		lsl	r8, r8, #3
 672 0168 08F58050 		add	r0, r8, #4096
 673 016c FFF7FEFF 		bl	_Z12WIZCHIP_READm
 674 0170 8146     		mov	r9, r0
 675 0172 08F58850 		add	r0, r8, #4352
 676 0176 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 677 017a A37C     		ldrb	r3, [r4, #18]	@ zero_extendqisi2
 678 017c 17FB0367 		smlabb	r7, r7, r3, r6
 679 0180 00EB0920 		add	r0, r0, r9, lsl #8
 680 0184 FF00     		lsls	r7, r7, #3
 681 0186 6080     		strh	r0, [r4, #2]	@ movhi
 682 0188 3146     		mov	r1, r6
 683 018a 07F50070 		add	r0, r7, #512
 684 018e FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccw8DRNT.s 			page 13


 685 0192 72E7     		b	.L112
 686              	.L193:
 687 0194 FFF7FEFF 		bl	_ZN13NetworkBuffer8AllocateEv
 688 0198 0746     		mov	r7, r0
 689 019a 0028     		cmp	r0, #0
 690 019c 3FF478AF 		beq	.L118
 691 01a0 A07C     		ldrb	r0, [r4, #18]	@ zero_extendqisi2
 692 01a2 07F10C01 		add	r1, r7, #12
 693 01a6 3246     		mov	r2, r6
 694 01a8 FFF7FEFF 		bl	_Z13wiz_recv_datahPht
 695 01ac A07C     		ldrb	r0, [r4, #18]	@ zero_extendqisi2
 696 01ae 4021     		movs	r1, #64
 697 01b0 FFF7FEFF 		bl	_Z11ExecCommandhh
 698 01b4 0023     		movs	r3, #0
 699 01b6 7E60     		str	r6, [r7, #4]
 700 01b8 BB60     		str	r3, [r7, #8]
 701 01ba 3946     		mov	r1, r7
 702 01bc 04F10C00 		add	r0, r4, #12
 703 01c0 FFF7FEFF 		bl	_ZN13NetworkBuffer12AppendToListEPPS_S0_
 704 01c4 64E7     		b	.L118
 705              	.L113:
 706 01c6 031F     		subs	r3, r0, #4
 707 01c8 022B     		cmp	r3, #2
 708 01ca 01D8     		bhi	.L115
 709 01cc A368     		ldr	r3, [r4, #8]
 710 01ce 53B3     		cbz	r3, .L196
 711              	.L115:
 712 01d0 0323     		movs	r3, #3
 713 01d2 E374     		strb	r3, [r4, #19]
 714 01d4 56E7     		b	.L114
 715              	.L125:
 716 01d6 2046     		mov	r0, r4
 717 01d8 FFF7FEFF 		bl	_ZN6Socket11TrySendDataEv
 718 01dc 0028     		cmp	r0, #0
 719 01de 3FF438AF 		beq	.L99
 720 01e2 A068     		ldr	r0, [r4, #8]
 721 01e4 057F     		ldrb	r5, [r0, #28]	@ zero_extendqisi2
 722 01e6 FFF7FEFF 		bl	_ZN18NetworkTransaction7ReleaseEv
 723 01ea 0023     		movs	r3, #0
 724 01ec A360     		str	r3, [r4, #8]
 725 01ee 002D     		cmp	r5, #0
 726 01f0 3FF42FAF 		beq	.L99
 727 01f4 A07C     		ldrb	r0, [r4, #18]	@ zero_extendqisi2
 728 01f6 0821     		movs	r1, #8
 729 01f8 FFF7FEFF 		bl	_Z11ExecCommandhh
 730 01fc E068     		ldr	r0, [r4, #12]
 731 01fe 0523     		movs	r3, #5
 732 0200 E374     		strb	r3, [r4, #19]
 733 0202 0028     		cmp	r0, #0
 734 0204 3FF425AF 		beq	.L99
 735              	.L126:
 736 0208 FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 737 020c E060     		str	r0, [r4, #12]
 738 020e 0028     		cmp	r0, #0
 739 0210 FAD1     		bne	.L126
 740 0212 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 741              	.L195:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccw8DRNT.s 			page 14


 742 0216 A07C     		ldrb	r0, [r4, #18]	@ zero_extendqisi2
 743 0218 0821     		movs	r1, #8
 744 021a FFF7FEFF 		bl	_Z11ExecCommandhh
 745 021e 0523     		movs	r3, #5
 746 0220 E374     		strb	r3, [r4, #19]
 747 0222 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 748              	.L196:
 749 0226 FFF7FEFF 		bl	_ZN18NetworkTransaction8AllocateEv
 750 022a A060     		str	r0, [r4, #8]
 751 022c 18B1     		cbz	r0, .L188
 752 022e 2146     		mov	r1, r4
 753 0230 0122     		movs	r2, #1
 754 0232 FFF7FEFF 		bl	_ZN18NetworkTransaction3SetEP6Socket17TransactionStatus
 755              	.L188:
 756 0236 A07C     		ldrb	r0, [r4, #18]	@ zero_extendqisi2
 757 0238 CAE7     		b	.L115
 758              	.L198:
 759 023a 00BF     		.align	2
 760              	.L197:
 761 023c 00000000 		.word	reprap
 762              		.size	_ZN6Socket4PollEb, .-_ZN6Socket4PollEb
 763              		.section	.text._ZN6Socket19DiscardReceivedDataEv,"ax",%progbits
 764              		.align	2
 765              		.global	_ZN6Socket19DiscardReceivedDataEv
 766              		.thumb
 767              		.thumb_func
 768              		.type	_ZN6Socket19DiscardReceivedDataEv, %function
 769              	_ZN6Socket19DiscardReceivedDataEv:
 770              		@ args = 0, pretend = 0, frame = 0
 771              		@ frame_needed = 0, uses_anonymous_args = 0
 772 0000 10B5     		push	{r4, lr}
 773 0002 0446     		mov	r4, r0
 774 0004 C068     		ldr	r0, [r0, #12]
 775 0006 20B1     		cbz	r0, .L199
 776              	.L202:
 777 0008 FFF7FEFF 		bl	_ZN13NetworkBuffer7ReleaseEv
 778 000c E060     		str	r0, [r4, #12]
 779 000e 0028     		cmp	r0, #0
 780 0010 FAD1     		bne	.L202
 781              	.L199:
 782 0012 10BD     		pop	{r4, pc}
 783              		.size	_ZN6Socket19DiscardReceivedDataEv, .-_ZN6Socket19DiscardReceivedDataEv
 784              		.section	.text._ZN6Socket16ResetDataPointerEv,"ax",%progbits
 785              		.align	2
 786              		.global	_ZN6Socket16ResetDataPointerEv
 787              		.thumb
 788              		.thumb_func
 789              		.type	_ZN6Socket16ResetDataPointerEv, %function
 790              	_ZN6Socket16ResetDataPointerEv:
 791              		@ args = 0, pretend = 0, frame = 0
 792              		@ frame_needed = 0, uses_anonymous_args = 0
 793              		@ link register save eliminated.
 794 0000 C368     		ldr	r3, [r0, #12]
 795 0002 0BB1     		cbz	r3, .L206
 796 0004 0022     		movs	r2, #0
 797 0006 9A60     		str	r2, [r3, #8]
 798              	.L206:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccw8DRNT.s 			page 15


 799 0008 7047     		bx	lr
 800              		.size	_ZN6Socket16ResetDataPointerEv, .-_ZN6Socket16ResetDataPointerEv
 801 000a 00BF     		.section	.text._ZN6Socket18AcquireTransactionEv,"ax",%progbits
 802              		.align	2
 803              		.global	_ZN6Socket18AcquireTransactionEv
 804              		.thumb
 805              		.thumb_func
 806              		.type	_ZN6Socket18AcquireTransactionEv, %function
 807              	_ZN6Socket18AcquireTransactionEv:
 808              		@ args = 0, pretend = 0, frame = 0
 809              		@ frame_needed = 0, uses_anonymous_args = 0
 810 0000 38B5     		push	{r3, r4, r5, lr}
 811 0002 8368     		ldr	r3, [r0, #8]
 812 0004 0446     		mov	r4, r0
 813 0006 23B1     		cbz	r3, .L212
 814 0008 9869     		ldr	r0, [r3, #24]
 815 000a 831F     		subs	r3, r0, #6
 816 000c 5842     		rsbs	r0, r3, #0
 817 000e 5841     		adcs	r0, r0, r3
 818 0010 38BD     		pop	{r3, r4, r5, pc}
 819              	.L212:
 820 0012 807C     		ldrb	r0, [r0, #18]	@ zero_extendqisi2
 821 0014 0125     		movs	r5, #1
 822 0016 05EB8000 		add	r0, r5, r0, lsl #2
 823 001a C000     		lsls	r0, r0, #3
 824 001c 00F54070 		add	r0, r0, #768
 825 0020 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 826 0024 1728     		cmp	r0, #23
 827 0026 01D0     		beq	.L214
 828              	.L215:
 829 0028 0020     		movs	r0, #0
 830 002a 38BD     		pop	{r3, r4, r5, pc}
 831              	.L214:
 832 002c FFF7FEFF 		bl	_ZN18NetworkTransaction8AllocateEv
 833 0030 A060     		str	r0, [r4, #8]
 834 0032 0028     		cmp	r0, #0
 835 0034 F8D0     		beq	.L215
 836 0036 2146     		mov	r1, r4
 837 0038 0622     		movs	r2, #6
 838 003a FFF7FEFF 		bl	_ZN18NetworkTransaction3SetEP6Socket17TransactionStatus
 839 003e 2846     		mov	r0, r5
 840 0040 38BD     		pop	{r3, r4, r5, pc}
 841              		.size	_ZN6Socket18AcquireTransactionEv, .-_ZN6Socket18AcquireTransactionEv
 842 0042 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 843              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 844              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 845              	_ZL28cpu_irq_prev_interrupt_state:
 846 0000 00       		.space	1
 847              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 848              		.align	2
 849              		.type	_ZL32cpu_irq_critical_section_counter, %object
 850              		.size	_ZL32cpu_irq_critical_section_counter, 4
 851              	_ZL32cpu_irq_critical_section_counter:
 852 0000 00000000 		.space	4
 853              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
