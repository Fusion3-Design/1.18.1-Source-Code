ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 1


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
  14              		.file	"PrintMonitor.cpp"
  15              		.global	__aeabi_d2f
  16              		.section	.text._ZNK12PrintMonitor15FindLayerHeightEPKcjRf.part.6,"ax",%progbits
  17              		.align	2
  18              		.thumb
  19              		.thumb_func
  20              		.type	_ZNK12PrintMonitor15FindLayerHeightEPKcjRf.part.6, %function
  21              	_ZNK12PrintMonitor15FindLayerHeightEPKcjRf.part.6:
  22              		@ args = 0, pretend = 0, frame = 8
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
  25 0004 1D4F     		ldr	r7, .L20
  26 0006 82B0     		sub	sp, sp, #8
  27 0008 8A46     		mov	r10, r1
  28 000a 00F10108 		add	r8, r0, #1
  29 000e 07F11409 		add	r9, r7, #20
  30              	.L11:
  31 0012 57F8046F 		ldr	r6, [r7, #4]!
  32 0016 4546     		mov	r5, r8
  33              	.L2:
  34 0018 2846     		mov	r0, r5
  35 001a 3146     		mov	r1, r6
  36 001c FFF7FEFF 		bl	strstr
  37 0020 0546     		mov	r5, r0
  38 0022 20B3     		cbz	r0, .L3
  39 0024 3046     		mov	r0, r6
  40 0026 FFF7FEFF 		bl	strlen
  41 002a 15F8013C 		ldrb	r3, [r5, #-1]	@ zero_extendqisi2
  42 002e 0544     		add	r5, r5, r0
  43 0030 202B     		cmp	r3, #32
  44 0032 03D0     		beq	.L6
  45 0034 3B2B     		cmp	r3, #59
  46 0036 01D0     		beq	.L6
  47 0038 092B     		cmp	r3, #9
  48 003a EDD1     		bne	.L2
  49              	.L6:
  50 003c 2C46     		mov	r4, r5
  51              	.L5:
  52 003e 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
  53 0040 0F48     		ldr	r0, .L20+4
  54 0042 2546     		mov	r5, r4
  55 0044 0134     		adds	r4, r4, #1
  56 0046 FFF7FEFF 		bl	strchr
  57 004a 0028     		cmp	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 2


  58 004c F7D1     		bne	.L5
  59 004e 2846     		mov	r0, r5
  60 0050 01A9     		add	r1, sp, #4
  61 0052 FFF7FEFF 		bl	strtod
  62 0056 019B     		ldr	r3, [sp, #4]
  63 0058 9D42     		cmp	r5, r3
  64 005a DDD0     		beq	.L2
  65 005c FFF7FEFF 		bl	__aeabi_d2f
  66 0060 0125     		movs	r5, #1
  67 0062 CAF80000 		str	r0, [r10]	@ float
  68 0066 2846     		mov	r0, r5
  69 0068 02B0     		add	sp, sp, #8
  70              		@ sp needed
  71 006a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  72              	.L3:
  73 006e 4F45     		cmp	r7, r9
  74 0070 CFD1     		bne	.L11
  75 0072 2846     		mov	r0, r5
  76 0074 02B0     		add	sp, sp, #8
  77              		@ sp needed
  78 0076 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  79              	.L21:
  80 007a 00BF     		.align	2
  81              	.L20:
  82 007c FCFFFFFF 		.word	.LANCHOR0-4
  83 0080 00000000 		.word	.LC0
  84              		.size	_ZNK12PrintMonitor15FindLayerHeightEPKcjRf.part.6, .-_ZNK12PrintMonitor15FindLayerHeightEPKc
  85              		.global	__aeabi_fsub
  86              		.global	__aeabi_fcmpeq
  87              		.section	.text._ZNK12PrintMonitor16GetPrintDurationEv.part.7,"ax",%progbits
  88              		.align	2
  89              		.thumb
  90              		.thumb_func
  91              		.type	_ZNK12PrintMonitor16GetPrintDurationEv.part.7, %function
  92              	_ZNK12PrintMonitor16GetPrintDurationEv.part.7:
  93              		@ args = 0, pretend = 0, frame = 0
  94              		@ frame_needed = 0, uses_anonymous_args = 0
  95 0000 38B5     		push	{r3, r4, r5, lr}
  96 0002 0446     		mov	r4, r0
  97 0004 0068     		ldr	r0, [r0]
  98 0006 FFF7FEFF 		bl	_ZN8Platform4TimeEv
  99 000a 6169     		ldr	r1, [r4, #20]	@ float
 100 000c FFF7FEFF 		bl	__aeabi_fsub
 101 0010 E169     		ldr	r1, [r4, #28]	@ float
 102 0012 FFF7FEFF 		bl	__aeabi_fsub
 103 0016 0021     		movs	r1, #0
 104 0018 0546     		mov	r5, r0
 105 001a A069     		ldr	r0, [r4, #24]	@ float
 106 001c FFF7FEFF 		bl	__aeabi_fcmpeq
 107 0020 08B1     		cbz	r0, .L26
 108 0022 2846     		mov	r0, r5
 109 0024 38BD     		pop	{r3, r4, r5, pc}
 110              	.L26:
 111 0026 2068     		ldr	r0, [r4]
 112 0028 FFF7FEFF 		bl	_ZN8Platform4TimeEv
 113 002c A169     		ldr	r1, [r4, #24]	@ float
 114 002e FFF7FEFF 		bl	__aeabi_fsub
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 3


 115 0032 0146     		mov	r1, r0
 116 0034 2846     		mov	r0, r5
 117 0036 FFF7FEFF 		bl	__aeabi_fsub
 118 003a 0546     		mov	r5, r0
 119 003c 2846     		mov	r0, r5
 120 003e 38BD     		pop	{r3, r4, r5, pc}
 121              		.size	_ZNK12PrintMonitor16GetPrintDurationEv.part.7, .-_ZNK12PrintMonitor16GetPrintDurationEv.part
 122              		.section	.text._ZN12PrintMonitorC2EP8PlatformP6GCodes,"ax",%progbits
 123              		.align	2
 124              		.global	_ZN12PrintMonitorC2EP8PlatformP6GCodes
 125              		.thumb
 126              		.thumb_func
 127              		.type	_ZN12PrintMonitorC2EP8PlatformP6GCodes, %function
 128              	_ZN12PrintMonitorC2EP8PlatformP6GCodes:
 129              		@ args = 0, pretend = 0, frame = 0
 130              		@ frame_needed = 0, uses_anonymous_args = 0
 131              		@ link register save eliminated.
 132 0000 30B4     		push	{r4, r5}
 133 0002 0024     		movs	r4, #0
 134 0004 0025     		movs	r5, #0
 135 0006 4561     		str	r5, [r0, #20]	@ float
 136 0008 8561     		str	r5, [r0, #24]	@ float
 137 000a C561     		str	r5, [r0, #28]	@ float
 138 000c 8562     		str	r5, [r0, #40]	@ float
 139 000e C562     		str	r5, [r0, #44]	@ float
 140 0010 0563     		str	r5, [r0, #48]	@ float
 141 0012 4563     		str	r5, [r0, #52]	@ float
 142 0014 8563     		str	r5, [r0, #56]	@ float
 143 0016 C563     		str	r5, [r0, #60]	@ float
 144 0018 0564     		str	r5, [r0, #64]	@ float
 145 001a C0F88450 		str	r5, [r0, #132]	@ float
 146 001e 0474     		strb	r4, [r0, #16]
 147 0020 80F82040 		strb	r4, [r0, #32]
 148 0024 4462     		str	r4, [r0, #36]
 149 0026 4464     		str	r4, [r0, #68]
 150 0028 80F88840 		strb	r4, [r0, #136]
 151 002c C0F8F040 		str	r4, [r0, #240]
 152 0030 C0F8C041 		str	r4, [r0, #448]
 153 0034 80F8C441 		strb	r4, [r0, #452]
 154 0038 C0F89442 		str	r4, [r0, #660]
 155 003c C0F89842 		str	r4, [r0, #664]
 156 0040 C0F89C42 		str	r4, [r0, #668]
 157 0044 80F83042 		strb	r4, [r0, #560]
 158 0048 80E80600 		stmia	r0, {r1, r2}
 159 004c 30BC     		pop	{r4, r5}
 160 004e 7047     		bx	lr
 161              		.size	_ZN12PrintMonitorC2EP8PlatformP6GCodes, .-_ZN12PrintMonitorC2EP8PlatformP6GCodes
 162              		.global	_ZN12PrintMonitorC1EP8PlatformP6GCodes
 163              		.thumb_set _ZN12PrintMonitorC1EP8PlatformP6GCodes,_ZN12PrintMonitorC2EP8PlatformP6GCodes
 164              		.section	.text._ZN12PrintMonitor4InitEv,"ax",%progbits
 165              		.align	2
 166              		.global	_ZN12PrintMonitor4InitEv
 167              		.thumb
 168              		.thumb_func
 169              		.type	_ZN12PrintMonitor4InitEv, %function
 170              	_ZN12PrintMonitor4InitEv:
 171              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 4


 172              		@ frame_needed = 0, uses_anonymous_args = 0
 173 0000 10B5     		push	{r4, lr}
 174 0002 0446     		mov	r4, r0
 175 0004 0068     		ldr	r0, [r0]
 176 0006 FFF7FEFF 		bl	_ZN8Platform4TimeEv
 177 000a A060     		str	r0, [r4, #8]	@ float
 178 000c FFF7FEFF 		bl	millis
 179 0010 E060     		str	r0, [r4, #12]
 180 0012 10BD     		pop	{r4, pc}
 181              		.size	_ZN12PrintMonitor4InitEv, .-_ZN12PrintMonitor4InitEv
 182              		.section	.text._ZNK12PrintMonitor17GetWarmUpDurationEv,"ax",%progbits
 183              		.align	2
 184              		.global	_ZNK12PrintMonitor17GetWarmUpDurationEv
 185              		.thumb
 186              		.thumb_func
 187              		.type	_ZNK12PrintMonitor17GetWarmUpDurationEv, %function
 188              	_ZNK12PrintMonitor17GetWarmUpDurationEv:
 189              		@ args = 0, pretend = 0, frame = 0
 190              		@ frame_needed = 0, uses_anonymous_args = 0
 191              		@ link register save eliminated.
 192 0000 426A     		ldr	r2, [r0, #36]
 193 0002 32B9     		cbnz	r2, .L34
 194 0004 90F82020 		ldrb	r2, [r0, #32]	@ zero_extendqisi2
 195 0008 0AB1     		cbz	r2, .L33
 196 000a 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 197 000c 1BB9     		cbnz	r3, .L35
 198              	.L33:
 199 000e 0020     		movs	r0, #0
 200 0010 7047     		bx	lr
 201              	.L34:
 202 0012 806A     		ldr	r0, [r0, #40]	@ float
 203 0014 7047     		bx	lr
 204              	.L35:
 205 0016 FFF7FEBF 		b	_ZNK12PrintMonitor16GetPrintDurationEv.part.7
 206              		.size	_ZNK12PrintMonitor17GetWarmUpDurationEv, .-_ZNK12PrintMonitor17GetWarmUpDurationEv
 207              		.section	.text._ZN12PrintMonitor12StartedPrintEv,"ax",%progbits
 208              		.align	2
 209              		.global	_ZN12PrintMonitor12StartedPrintEv
 210              		.thumb
 211              		.thumb_func
 212              		.type	_ZN12PrintMonitor12StartedPrintEv, %function
 213              	_ZN12PrintMonitor12StartedPrintEv:
 214              		@ args = 0, pretend = 0, frame = 0
 215              		@ frame_needed = 0, uses_anonymous_args = 0
 216 0000 0123     		movs	r3, #1
 217 0002 10B5     		push	{r4, lr}
 218 0004 0446     		mov	r4, r0
 219 0006 0374     		strb	r3, [r0, #16]
 220 0008 0068     		ldr	r0, [r0]
 221 000a FFF7FEFF 		bl	_ZN8Platform4TimeEv
 222 000e 6061     		str	r0, [r4, #20]	@ float
 223 0010 10BD     		pop	{r4, pc}
 224              		.size	_ZN12PrintMonitor12StartedPrintEv, .-_ZN12PrintMonitor12StartedPrintEv
 225 0012 00BF     		.section	.text._ZN12PrintMonitor14WarmUpCompleteEv,"ax",%progbits
 226              		.align	2
 227              		.global	_ZN12PrintMonitor14WarmUpCompleteEv
 228              		.thumb
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 5


 229              		.thumb_func
 230              		.type	_ZN12PrintMonitor14WarmUpCompleteEv, %function
 231              	_ZN12PrintMonitor14WarmUpCompleteEv:
 232              		@ args = 0, pretend = 0, frame = 0
 233              		@ frame_needed = 0, uses_anonymous_args = 0
 234 0000 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 235 0002 0022     		movs	r2, #0
 236 0004 10B5     		push	{r4, lr}
 237 0006 0446     		mov	r4, r0
 238 0008 80F82020 		strb	r2, [r0, #32]
 239 000c 13B9     		cbnz	r3, .L40
 240 000e 0020     		movs	r0, #0
 241 0010 A062     		str	r0, [r4, #40]	@ float
 242 0012 10BD     		pop	{r4, pc}
 243              	.L40:
 244 0014 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.7
 245 0018 A062     		str	r0, [r4, #40]	@ float
 246 001a 10BD     		pop	{r4, pc}
 247              		.size	_ZN12PrintMonitor14WarmUpCompleteEv, .-_ZN12PrintMonitor14WarmUpCompleteEv
 248              		.global	__aeabi_fcmpgt
 249              		.global	__aeabi_fdiv
 250              		.global	__aeabi_fcmpge
 251              		.global	__aeabi_f2d
 252              		.global	__aeabi_dadd
 253              		.global	__aeabi_d2iz
 254              		.global	__aeabi_dsub
 255              		.global	__aeabi_fmul
 256              		.global	__aeabi_ui2f
 257              		.section	.text._ZN12PrintMonitor18FirstLayerCompleteEv,"ax",%progbits
 258              		.align	2
 259              		.global	_ZN12PrintMonitor18FirstLayerCompleteEv
 260              		.thumb
 261              		.thumb_func
 262              		.type	_ZN12PrintMonitor18FirstLayerCompleteEv, %function
 263              	_ZN12PrintMonitor18FirstLayerCompleteEv:
 264              		@ args = 0, pretend = 0, frame = 0
 265              		@ frame_needed = 0, uses_anonymous_args = 0
 266 0000 4368     		ldr	r3, [r0, #4]
 267 0002 027C     		ldrb	r2, [r0, #16]	@ zero_extendqisi2
 268 0004 D3F8D411 		ldr	r1, [r3, #468]	@ float
 269 0008 70B5     		push	{r4, r5, r6, lr}
 270 000a 0446     		mov	r4, r0
 271 000c 0163     		str	r1, [r0, #48]	@ float
 272 000e 002A     		cmp	r2, #0
 273 0010 3ED1     		bne	.L54
 274 0012 0020     		movs	r0, #0
 275 0014 1D46     		mov	r5, r3
 276              	.L42:
 277 0016 A16A     		ldr	r1, [r4, #40]	@ float
 278 0018 FFF7FEFF 		bl	__aeabi_fsub
 279 001c E062     		str	r0, [r4, #44]	@ float
 280 001e 2846     		mov	r0, r5
 281 0020 FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 282 0024 D4F8D851 		ldr	r5, [r4, #472]	@ float
 283 0028 6063     		str	r0, [r4, #52]	@ float
 284 002a 0021     		movs	r1, #0
 285 002c 2846     		mov	r0, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 6


 286 002e FFF7FEFF 		bl	__aeabi_fcmpgt
 287 0032 60B3     		cbz	r0, .L41
 288 0034 D4F8F861 		ldr	r6, [r4, #504]	@ float
 289 0038 0021     		movs	r1, #0
 290 003a 3046     		mov	r0, r6
 291 003c FFF7FEFF 		bl	__aeabi_fcmpgt
 292 0040 28B3     		cbz	r0, .L41
 293 0042 2846     		mov	r0, r5
 294 0044 D4F8D411 		ldr	r1, [r4, #468]	@ float
 295 0048 FFF7FEFF 		bl	__aeabi_fsub
 296 004c 3146     		mov	r1, r6
 297 004e FFF7FEFF 		bl	__aeabi_fdiv
 298 0052 0021     		movs	r1, #0
 299 0054 0546     		mov	r5, r0
 300 0056 FFF7FEFF 		bl	__aeabi_fcmpge
 301 005a E8B1     		cbz	r0, .L53
 302 005c 2846     		mov	r0, r5
 303 005e FFF7FEFF 		bl	__aeabi_f2d
 304 0062 0022     		movs	r2, #0
 305 0064 124B     		ldr	r3, .L55
 306 0066 FFF7FEFF 		bl	__aeabi_dadd
 307 006a FFF7FEFF 		bl	__aeabi_d2iz
 308 006e 461C     		adds	r6, r0, #1
 309              	.L48:
 310 0070 4FF07A51 		mov	r1, #1048576000
 311 0074 E06A     		ldr	r0, [r4, #44]	@ float
 312 0076 FFF7FEFF 		bl	__aeabi_fmul
 313 007a 0546     		mov	r5, r0
 314 007c 701E     		subs	r0, r6, #1
 315 007e FFF7FEFF 		bl	__aeabi_ui2f
 316 0082 0146     		mov	r1, r0
 317 0084 2846     		mov	r0, r5
 318 0086 FFF7FEFF 		bl	__aeabi_fmul
 319 008a C4F88400 		str	r0, [r4, #132]	@ float
 320              	.L41:
 321 008e 70BD     		pop	{r4, r5, r6, pc}
 322              	.L54:
 323 0090 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.7
 324 0094 6568     		ldr	r5, [r4, #4]
 325 0096 BEE7     		b	.L42
 326              	.L53:
 327 0098 2846     		mov	r0, r5
 328 009a FFF7FEFF 		bl	__aeabi_f2d
 329 009e 0022     		movs	r2, #0
 330 00a0 034B     		ldr	r3, .L55
 331 00a2 FFF7FEFF 		bl	__aeabi_dsub
 332 00a6 FFF7FEFF 		bl	__aeabi_d2iz
 333 00aa 461C     		adds	r6, r0, #1
 334 00ac E0E7     		b	.L48
 335              	.L56:
 336 00ae 00BF     		.align	2
 337              	.L55:
 338 00b0 0000E03F 		.word	1071644672
 339              		.size	_ZN12PrintMonitor18FirstLayerCompleteEv, .-_ZN12PrintMonitor18FirstLayerCompleteEv
 340              		.global	__aeabi_fadd
 341              		.section	.text._ZN12PrintMonitor13LayerCompleteEv,"ax",%progbits
 342              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 7


 343              		.global	_ZN12PrintMonitor13LayerCompleteEv
 344              		.thumb
 345              		.thumb_func
 346              		.type	_ZN12PrintMonitor13LayerCompleteEv, %function
 347              	_ZN12PrintMonitor13LayerCompleteEv:
 348              		@ args = 0, pretend = 0, frame = 0
 349              		@ frame_needed = 0, uses_anonymous_args = 0
 350 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 351 0004 456C     		ldr	r5, [r0, #68]
 352 0006 D0F80480 		ldr	r8, [r0, #4]
 353 000a 042D     		cmp	r5, #4
 354 000c 0446     		mov	r4, r0
 355 000e D8F8D471 		ldr	r7, [r8, #468]	@ float
 356 0012 1AD8     		bhi	.L58
 357 0014 3846     		mov	r0, r7
 358 0016 002D     		cmp	r5, #0
 359 0018 40F08880 		bne	.L59
 360 001c 216B     		ldr	r1, [r4, #48]	@ float
 361 001e FFF7FEFF 		bl	__aeabi_fsub
 362 0022 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 363 0024 E065     		str	r0, [r4, #92]	@ float
 364 0026 002B     		cmp	r3, #0
 365 0028 40F0AB80 		bne	.L92
 366 002c 0020     		movs	r0, #0
 367              	.L60:
 368 002e A16A     		ldr	r1, [r4, #40]	@ float
 369 0030 FFF7FEFF 		bl	__aeabi_fsub
 370 0034 A064     		str	r0, [r4, #72]	@ float
 371              	.L61:
 372 0036 4046     		mov	r0, r8
 373 0038 FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 374 003c 636C     		ldr	r3, [r4, #68]
 375 003e 1C35     		adds	r5, r5, #28
 376 0040 0133     		adds	r3, r3, #1
 377 0042 44F82500 		str	r0, [r4, r5, lsl #2]	@ float
 378 0046 6364     		str	r3, [r4, #68]
 379 0048 1FE0     		b	.L63
 380              	.L58:
 381 004a 0346     		mov	r3, r0
 382 004c 0422     		movs	r2, #4
 383              	.L65:
 384 004e DE6C     		ldr	r6, [r3, #76]	@ float
 385 0050 1D6E     		ldr	r5, [r3, #96]	@ float
 386 0052 596F     		ldr	r1, [r3, #116]	@ float
 387 0054 013A     		subs	r2, r2, #1
 388 0056 9E64     		str	r6, [r3, #72]	@ float
 389 0058 DD65     		str	r5, [r3, #92]	@ float
 390 005a 1967     		str	r1, [r3, #112]	@ float
 391 005c 03F10403 		add	r3, r3, #4
 392 0060 F5D1     		bne	.L65
 393 0062 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 394 0064 002B     		cmp	r3, #0
 395 0066 40F08780 		bne	.L93
 396 006a 0020     		movs	r0, #0
 397 006c 4546     		mov	r5, r8
 398              	.L66:
 399 006e A16B     		ldr	r1, [r4, #56]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 8


 400 0070 FFF7FEFF 		bl	__aeabi_fsub
 401 0074 E16B     		ldr	r1, [r4, #60]	@ float
 402 0076 A065     		str	r0, [r4, #88]	@ float
 403 0078 3846     		mov	r0, r7
 404 007a FFF7FEFF 		bl	__aeabi_fsub
 405 007e E066     		str	r0, [r4, #108]	@ float
 406 0080 2846     		mov	r0, r5
 407 0082 FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 408 0086 C4F88000 		str	r0, [r4, #128]	@ float
 409              	.L63:
 410 008a D4F8D891 		ldr	r9, [r4, #472]	@ float
 411 008e E763     		str	r7, [r4, #60]	@ float
 412 0090 4846     		mov	r0, r9
 413 0092 0021     		movs	r1, #0
 414 0094 FFF7FEFF 		bl	__aeabi_fcmpgt
 415 0098 0028     		cmp	r0, #0
 416 009a 45D0     		beq	.L57
 417 009c D4F8F8A1 		ldr	r10, [r4, #504]	@ float
 418 00a0 0021     		movs	r1, #0
 419 00a2 5046     		mov	r0, r10
 420 00a4 FFF7FEFF 		bl	__aeabi_fcmpgt
 421 00a8 0028     		cmp	r0, #0
 422 00aa 3DD0     		beq	.L57
 423 00ac D4F84480 		ldr	r8, [r4, #68]
 424 00b0 B8F1040F 		cmp	r8, #4
 425 00b4 48D8     		bhi	.L83
 426 00b6 E06A     		ldr	r0, [r4, #44]	@ float
 427 00b8 4FF07A51 		mov	r1, #1048576000
 428 00bc FFF7FEFF 		bl	__aeabi_fmul
 429 00c0 0646     		mov	r6, r0
 430 00c2 B8F1000F 		cmp	r8, #0
 431 00c6 41D0     		beq	.L71
 432              	.L70:
 433 00c8 2546     		mov	r5, r4
 434 00ca 04EB8807 		add	r7, r4, r8, lsl #2
 435              	.L73:
 436 00ce A96C     		ldr	r1, [r5, #72]	@ float
 437 00d0 3046     		mov	r0, r6
 438 00d2 FFF7FEFF 		bl	__aeabi_fadd
 439 00d6 0435     		adds	r5, r5, #4
 440 00d8 BD42     		cmp	r5, r7
 441 00da 0646     		mov	r6, r0
 442 00dc F7D1     		bne	.L73
 443 00de B8F1040F 		cmp	r8, #4
 444 00e2 33D9     		bls	.L71
 445 00e4 4046     		mov	r0, r8
 446 00e6 FFF7FEFF 		bl	__aeabi_ui2f
 447 00ea 0746     		mov	r7, r0
 448              	.L75:
 449 00ec D4F8D411 		ldr	r1, [r4, #468]	@ float
 450 00f0 4846     		mov	r0, r9
 451 00f2 FFF7FEFF 		bl	__aeabi_fsub
 452 00f6 5146     		mov	r1, r10
 453 00f8 FFF7FEFF 		bl	__aeabi_fdiv
 454 00fc 0021     		movs	r1, #0
 455 00fe 0546     		mov	r5, r0
 456 0100 FFF7FEFF 		bl	__aeabi_fcmpge
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 9


 457 0104 0028     		cmp	r0, #0
 458 0106 4AD0     		beq	.L91
 459 0108 2846     		mov	r0, r5
 460 010a FFF7FEFF 		bl	__aeabi_f2d
 461 010e 0022     		movs	r2, #0
 462 0110 284B     		ldr	r3, .L96
 463 0112 FFF7FEFF 		bl	__aeabi_dadd
 464 0116 FFF7FEFF 		bl	__aeabi_d2iz
 465 011a 421C     		adds	r2, r0, #1
 466              	.L78:
 467 011c 606A     		ldr	r0, [r4, #36]
 468 011e 8242     		cmp	r2, r0
 469 0120 1AD8     		bhi	.L94
 470 0122 254B     		ldr	r3, .L96+4
 471 0124 C4F88430 		str	r3, [r4, #132]	@ float
 472              	.L57:
 473 0128 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 474              	.L59:
 475 012c E16B     		ldr	r1, [r4, #60]	@ float
 476 012e FFF7FEFF 		bl	__aeabi_fsub
 477 0132 04EB8506 		add	r6, r4, r5, lsl #2
 478 0136 F065     		str	r0, [r6, #92]	@ float
 479 0138 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 480 013a 4BBB     		cbnz	r3, .L95
 481 013c 0020     		movs	r0, #0
 482              	.L62:
 483 013e A16B     		ldr	r1, [r4, #56]	@ float
 484 0140 FFF7FEFF 		bl	__aeabi_fsub
 485 0144 B064     		str	r0, [r6, #72]	@ float
 486 0146 76E7     		b	.L61
 487              	.L83:
 488 0148 0026     		movs	r6, #0
 489 014a BDE7     		b	.L70
 490              	.L71:
 491 014c 08F10100 		add	r0, r8, #1
 492 0150 FFF7FEFF 		bl	__aeabi_ui2f
 493 0154 0746     		mov	r7, r0
 494 0156 C9E7     		b	.L75
 495              	.L94:
 496 0158 101A     		subs	r0, r2, r0
 497 015a FFF7FEFF 		bl	__aeabi_ui2f
 498 015e 3946     		mov	r1, r7
 499 0160 0546     		mov	r5, r0
 500 0162 3046     		mov	r0, r6
 501 0164 FFF7FEFF 		bl	__aeabi_fdiv
 502 0168 0146     		mov	r1, r0
 503 016a 2846     		mov	r0, r5
 504 016c FFF7FEFF 		bl	__aeabi_fmul
 505 0170 C4F88400 		str	r0, [r4, #132]	@ float
 506 0174 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 507              	.L93:
 508 0178 2046     		mov	r0, r4
 509 017a FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.7
 510 017e 6568     		ldr	r5, [r4, #4]
 511 0180 75E7     		b	.L66
 512              	.L92:
 513 0182 2046     		mov	r0, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 10


 514 0184 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.7
 515 0188 656C     		ldr	r5, [r4, #68]
 516 018a D4F80480 		ldr	r8, [r4, #4]
 517 018e 4EE7     		b	.L60
 518              	.L95:
 519 0190 2046     		mov	r0, r4
 520 0192 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.7
 521 0196 656C     		ldr	r5, [r4, #68]
 522 0198 D4F80480 		ldr	r8, [r4, #4]
 523 019c CFE7     		b	.L62
 524              	.L91:
 525 019e 2846     		mov	r0, r5
 526 01a0 FFF7FEFF 		bl	__aeabi_f2d
 527 01a4 0022     		movs	r2, #0
 528 01a6 034B     		ldr	r3, .L96
 529 01a8 FFF7FEFF 		bl	__aeabi_dsub
 530 01ac FFF7FEFF 		bl	__aeabi_d2iz
 531 01b0 421C     		adds	r2, r0, #1
 532 01b2 B3E7     		b	.L78
 533              	.L97:
 534              		.align	2
 535              	.L96:
 536 01b4 0000E03F 		.word	1071644672
 537 01b8 CDCCCC3D 		.word	1036831949
 538              		.size	_ZN12PrintMonitor13LayerCompleteEv, .-_ZN12PrintMonitor13LayerCompleteEv
 539              		.section	.text._ZN12PrintMonitor12StoppedPrintEv,"ax",%progbits
 540              		.align	2
 541              		.global	_ZN12PrintMonitor12StoppedPrintEv
 542              		.thumb
 543              		.thumb_func
 544              		.type	_ZN12PrintMonitor12StoppedPrintEv, %function
 545              	_ZN12PrintMonitor12StoppedPrintEv:
 546              		@ args = 0, pretend = 0, frame = 0
 547              		@ frame_needed = 0, uses_anonymous_args = 0
 548              		@ link register save eliminated.
 549 0000 0023     		movs	r3, #0
 550 0002 0022     		movs	r2, #0
 551 0004 80F8C421 		strb	r2, [r0, #452]
 552 0008 80F82020 		strb	r2, [r0, #32]
 553 000c 0274     		strb	r2, [r0, #16]
 554 000e 4264     		str	r2, [r0, #68]
 555 0010 4262     		str	r2, [r0, #36]
 556 0012 C361     		str	r3, [r0, #28]	@ float
 557 0014 8361     		str	r3, [r0, #24]	@ float
 558 0016 4363     		str	r3, [r0, #52]	@ float
 559 0018 0363     		str	r3, [r0, #48]	@ float
 560 001a C362     		str	r3, [r0, #44]	@ float
 561 001c 8362     		str	r3, [r0, #40]	@ float
 562 001e 4361     		str	r3, [r0, #20]	@ float
 563 0020 C0F88430 		str	r3, [r0, #132]	@ float
 564 0024 0364     		str	r3, [r0, #64]	@ float
 565 0026 C363     		str	r3, [r0, #60]	@ float
 566 0028 8363     		str	r3, [r0, #56]	@ float
 567 002a 7047     		bx	lr
 568              		.size	_ZN12PrintMonitor12StoppedPrintEv, .-_ZN12PrintMonitor12StoppedPrintEv
 569              		.section	.text._ZN12PrintMonitor11StopParsingEPKc,"ax",%progbits
 570              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 11


 571              		.global	_ZN12PrintMonitor11StopParsingEPKc
 572              		.thumb
 573              		.thumb_func
 574              		.type	_ZN12PrintMonitor11StopParsingEPKc, %function
 575              	_ZN12PrintMonitor11StopParsingEPKc:
 576              		@ args = 0, pretend = 0, frame = 0
 577              		@ frame_needed = 0, uses_anonymous_args = 0
 578 0000 90F88830 		ldrb	r3, [r0, #136]	@ zero_extendqisi2
 579 0004 10B5     		push	{r4, lr}
 580 0006 0446     		mov	r4, r0
 581 0008 03B9     		cbnz	r3, .L111
 582              	.L99:
 583 000a 10BD     		pop	{r4, pc}
 584              	.L111:
 585 000c 8930     		adds	r0, r0, #137
 586 000e FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 587 0012 78B1     		cbz	r0, .L112
 588 0014 94F83032 		ldrb	r3, [r4, #560]	@ zero_extendqisi2
 589 0018 1BB1     		cbz	r3, .L104
 590 001a 94F8C431 		ldrb	r3, [r4, #452]	@ zero_extendqisi2
 591 001e 002B     		cmp	r3, #0
 592 0020 F3D0     		beq	.L99
 593              	.L104:
 594 0022 0023     		movs	r3, #0
 595 0024 84F88830 		strb	r3, [r4, #136]
 596 0028 D4F8F000 		ldr	r0, [r4, #240]
 597 002c BDE81040 		pop	{r4, lr}
 598 0030 FFF7FEBF 		b	_ZN9FileStore5CloseEv
 599              	.L112:
 600 0034 10BD     		pop	{r4, pc}
 601              		.size	_ZN12PrintMonitor11StopParsingEPKc, .-_ZN12PrintMonitor11StopParsingEPKc
 602              		.global	__aeabi_fcmplt
 603              		.global	__aeabi_ddiv
 604              		.global	__aeabi_dmul
 605              		.global	__aeabi_fcmpun
 606 0036 00BF     		.section	.text._ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod,"ax",%progbits
 607              		.align	2
 608              		.global	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 609              		.thumb
 610              		.thumb_func
 611              		.type	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod, %function
 612              	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod:
 613              		@ args = 0, pretend = 0, frame = 0
 614              		@ frame_needed = 0, uses_anonymous_args = 0
 615 0000 90F8C431 		ldrb	r3, [r0, #452]	@ zero_extendqisi2
 616 0004 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 617 0008 0446     		mov	r4, r0
 618 000a 0D46     		mov	r5, r1
 619 000c 002B     		cmp	r3, #0
 620 000e 35D0     		beq	.L164
 621 0010 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 622 0012 002B     		cmp	r3, #0
 623 0014 36D1     		bne	.L171
 624 0016 0020     		movs	r0, #0
 625 0018 A16A     		ldr	r1, [r4, #40]	@ float
 626 001a FFF7FEFF 		bl	__aeabi_fsub
 627 001e 012D     		cmp	r5, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 12


 628 0020 8046     		mov	r8, r0
 629 0022 37D0     		beq	.L117
 630              	.L174:
 631 0024 1BD3     		bcc	.L118
 632 0026 022D     		cmp	r5, #2
 633 0028 28D1     		bne	.L164
 634 002a D4F88450 		ldr	r5, [r4, #132]	@ float
 635 002e 0021     		movs	r1, #0
 636 0030 2846     		mov	r0, r5
 637 0032 FFF7FEFF 		bl	__aeabi_fcmpgt
 638 0036 08B3     		cbz	r0, .L164
 639 0038 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 640 003a 002B     		cmp	r3, #0
 641 003c 40F0BD80 		bne	.L172
 642 0040 0020     		movs	r0, #0
 643              	.L144:
 644 0042 A16B     		ldr	r1, [r4, #56]	@ float
 645 0044 FFF7FEFF 		bl	__aeabi_fsub
 646 0048 0146     		mov	r1, r0
 647 004a 2846     		mov	r0, r5
 648 004c FFF7FEFF 		bl	__aeabi_fsub
 649 0050 0021     		movs	r1, #0
 650 0052 0446     		mov	r4, r0
 651 0054 FFF7FEFF 		bl	__aeabi_fcmpgt
 652 0058 88B9     		cbnz	r0, .L115
 653              	.L168:
 654 005a 864C     		ldr	r4, .L176
 655 005c 0FE0     		b	.L115
 656              	.L118:
 657 005e 636A     		ldr	r3, [r4, #36]
 658 0060 63B1     		cbz	r3, .L164
 659 0062 D4F8F431 		ldr	r3, [r4, #500]
 660 0066 4BB1     		cbz	r3, .L164
 661 0068 834A     		ldr	r2, .L176+4
 662 006a 6368     		ldr	r3, [r4, #4]
 663 006c 1269     		ldr	r2, [r2, #16]
 664 006e D3F8D491 		ldr	r9, [r3, #468]	@ float
 665 0072 D2F88471 		ldr	r7, [r2, #388]
 666 0076 D7F10907 		rsbs	r7, r7, #9
 667 007a 53D1     		bne	.L173
 668              	.L164:
 669 007c 0024     		movs	r4, #0
 670              	.L115:
 671 007e 2046     		mov	r0, r4
 672 0080 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 673              	.L171:
 674 0084 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.7
 675 0088 A16A     		ldr	r1, [r4, #40]	@ float
 676 008a FFF7FEFF 		bl	__aeabi_fsub
 677 008e 012D     		cmp	r5, #1
 678 0090 8046     		mov	r8, r0
 679 0092 C7D1     		bne	.L174
 680              	.L117:
 681 0094 6068     		ldr	r0, [r4, #4]
 682 0096 FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 683 009a 7849     		ldr	r1, .L176+8
 684 009c 0746     		mov	r7, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 13


 685 009e FFF7FEFF 		bl	__aeabi_fcmplt
 686 00a2 0028     		cmp	r0, #0
 687 00a4 EAD1     		bne	.L164
 688 00a6 94F82030 		ldrb	r3, [r4, #32]	@ zero_extendqisi2
 689 00aa 002B     		cmp	r3, #0
 690 00ac E6D1     		bne	.L164
 691 00ae 3846     		mov	r0, r7
 692 00b0 4FF07E51 		mov	r1, #1065353216
 693 00b4 FFF7FEFF 		bl	__aeabi_fcmpeq
 694 00b8 0028     		cmp	r0, #0
 695 00ba CED1     		bne	.L168
 696 00bc 666C     		ldr	r6, [r4, #68]
 697 00be 002E     		cmp	r6, #0
 698 00c0 40F09F80 		bne	.L123
 699 00c4 D4F82C90 		ldr	r9, [r4, #44]	@ float
 700 00c8 666B     		ldr	r6, [r4, #52]	@ float
 701              	.L124:
 702 00ca 3046     		mov	r0, r6
 703 00cc 6B49     		ldr	r1, .L176+8
 704 00ce FFF7FEFF 		bl	__aeabi_fcmplt
 705 00d2 0028     		cmp	r0, #0
 706 00d4 75D0     		beq	.L166
 707 00d6 4046     		mov	r0, r8
 708 00d8 FFF7FEFF 		bl	__aeabi_f2d
 709 00dc 0446     		mov	r4, r0
 710 00de 3846     		mov	r0, r7
 711 00e0 0D46     		mov	r5, r1
 712 00e2 FFF7FEFF 		bl	__aeabi_f2d
 713 00e6 0246     		mov	r2, r0
 714 00e8 0B46     		mov	r3, r1
 715 00ea 0020     		movs	r0, #0
 716 00ec 6449     		ldr	r1, .L176+12
 717 00ee FFF7FEFF 		bl	__aeabi_ddiv
 718 00f2 0246     		mov	r2, r0
 719 00f4 0B46     		mov	r3, r1
 720 00f6 2046     		mov	r0, r4
 721 00f8 2946     		mov	r1, r5
 722 00fa FFF7FEFF 		bl	__aeabi_dmul
 723 00fe 2246     		mov	r2, r4
 724 0100 2B46     		mov	r3, r5
 725 0102 FFF7FEFF 		bl	__aeabi_dsub
 726              	.L170:
 727 0106 FFF7FEFF 		bl	__aeabi_d2f
 728 010a 0146     		mov	r1, r0
 729 010c 0446     		mov	r4, r0
 730 010e FFF7FEFF 		bl	__aeabi_fcmpun
 731 0112 0028     		cmp	r0, #0
 732 0114 B3D1     		bne	.L115
 733 0116 2046     		mov	r0, r4
 734 0118 5649     		ldr	r1, .L176
 735 011a FFF7FEFF 		bl	__aeabi_fcmpgt
 736 011e 0028     		cmp	r0, #0
 737 0120 9BD0     		beq	.L168
 738 0122 ACE7     		b	.L115
 739              	.L173:
 740 0124 0026     		movs	r6, #0
 741 0126 04EB8707 		add	r7, r4, r7, lsl #2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 14


 742 012a 2546     		mov	r5, r4
 743              	.L131:
 744 012c D5F8DC11 		ldr	r1, [r5, #476]	@ float
 745 0130 3046     		mov	r0, r6
 746 0132 FFF7FEFF 		bl	__aeabi_fadd
 747 0136 0435     		adds	r5, r5, #4
 748 0138 BD42     		cmp	r5, r7
 749 013a 0646     		mov	r6, r0
 750 013c F6D1     		bne	.L131
 751 013e 0021     		movs	r1, #0
 752 0140 FFF7FEFF 		bl	__aeabi_fcmpgt
 753 0144 0028     		cmp	r0, #0
 754 0146 99D0     		beq	.L164
 755 0148 4E49     		ldr	r1, .L176+16
 756 014a 3046     		mov	r0, r6
 757 014c FFF7FEFF 		bl	__aeabi_fmul
 758 0150 4946     		mov	r1, r9
 759 0152 FFF7FEFF 		bl	__aeabi_fcmplt
 760 0156 0028     		cmp	r0, #0
 761 0158 90D0     		beq	.L164
 762 015a 4846     		mov	r0, r9
 763 015c 3146     		mov	r1, r6
 764 015e FFF7FEFF 		bl	__aeabi_fcmpge
 765 0162 0028     		cmp	r0, #0
 766 0164 7FF479AF 		bne	.L168
 767 0168 676C     		ldr	r7, [r4, #68]
 768 016a 002F     		cmp	r7, #0
 769 016c 61D0     		beq	.L135
 770 016e 0025     		movs	r5, #0
 771 0170 04EB870A 		add	r10, r4, r7, lsl #2
 772              	.L137:
 773 0174 A16C     		ldr	r1, [r4, #72]	@ float
 774 0176 E06D     		ldr	r0, [r4, #92]	@ float
 775 0178 FFF7FEFF 		bl	__aeabi_fdiv
 776 017c 0146     		mov	r1, r0
 777 017e 2846     		mov	r0, r5
 778 0180 FFF7FEFF 		bl	__aeabi_fadd
 779 0184 0434     		adds	r4, r4, #4
 780 0186 5445     		cmp	r4, r10
 781 0188 0546     		mov	r5, r0
 782 018a F3D1     		bne	.L137
 783 018c 3846     		mov	r0, r7
 784 018e FFF7FEFF 		bl	__aeabi_ui2f
 785 0192 0146     		mov	r1, r0
 786 0194 2846     		mov	r0, r5
 787 0196 FFF7FEFF 		bl	__aeabi_fdiv
 788 019a 0446     		mov	r4, r0
 789              	.L138:
 790 019c 2046     		mov	r0, r4
 791 019e 0021     		movs	r1, #0
 792 01a0 FFF7FEFF 		bl	__aeabi_fcmpeq
 793 01a4 0028     		cmp	r0, #0
 794 01a6 50D1     		bne	.L139
 795 01a8 4946     		mov	r1, r9
 796 01aa 3046     		mov	r0, r6
 797 01ac FFF7FEFF 		bl	__aeabi_fsub
 798 01b0 2146     		mov	r1, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 15


 799 01b2 FFF7FEFF 		bl	__aeabi_fdiv
 800 01b6 0446     		mov	r4, r0
 801 01b8 61E7     		b	.L115
 802              	.L172:
 803 01ba 2046     		mov	r0, r4
 804 01bc FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.7
 805 01c0 3FE7     		b	.L144
 806              	.L166:
 807 01c2 4846     		mov	r0, r9
 808 01c4 FFF7FEFF 		bl	__aeabi_f2d
 809 01c8 0446     		mov	r4, r0
 810 01ca 3846     		mov	r0, r7
 811 01cc 0D46     		mov	r5, r1
 812 01ce FFF7FEFF 		bl	__aeabi_f2d
 813 01d2 0246     		mov	r2, r0
 814 01d4 0B46     		mov	r3, r1
 815 01d6 0020     		movs	r0, #0
 816 01d8 2949     		ldr	r1, .L176+12
 817 01da FFF7FEFF 		bl	__aeabi_dsub
 818 01de 0246     		mov	r2, r0
 819 01e0 0B46     		mov	r3, r1
 820 01e2 2046     		mov	r0, r4
 821 01e4 2946     		mov	r1, r5
 822 01e6 FFF7FEFF 		bl	__aeabi_dmul
 823 01ea 0446     		mov	r4, r0
 824 01ec 3046     		mov	r0, r6
 825 01ee 0D46     		mov	r5, r1
 826 01f0 FFF7FEFF 		bl	__aeabi_f2d
 827 01f4 0246     		mov	r2, r0
 828 01f6 0B46     		mov	r3, r1
 829 01f8 2046     		mov	r0, r4
 830 01fa 2946     		mov	r1, r5
 831 01fc FFF7FEFF 		bl	__aeabi_ddiv
 832 0200 81E7     		b	.L170
 833              	.L123:
 834 0202 012E     		cmp	r6, #1
 835 0204 2DD0     		beq	.L175
 836 0206 4FF00009 		mov	r9, #0
 837 020a A246     		mov	r10, r4
 838              	.L127:
 839 020c 4846     		mov	r0, r9
 840 020e DAF84C10 		ldr	r1, [r10, #76]	@ float
 841 0212 FFF7FEFF 		bl	__aeabi_fadd
 842 0216 0135     		adds	r5, r5, #1
 843 0218 AE42     		cmp	r6, r5
 844 021a 8146     		mov	r9, r0
 845 021c 0AF1040A 		add	r10, r10, #4
 846 0220 F4D8     		bhi	.L127
 847 0222 1B36     		adds	r6, r6, #27
 848 0224 54F82600 		ldr	r0, [r4, r6, lsl #2]	@ float
 849 0228 216F     		ldr	r1, [r4, #112]	@ float
 850 022a FFF7FEFF 		bl	__aeabi_fsub
 851 022e 0646     		mov	r6, r0
 852 0230 4BE7     		b	.L124
 853              	.L135:
 854 0232 E56A     		ldr	r5, [r4, #44]	@ float
 855 0234 0021     		movs	r1, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 16


 856 0236 2846     		mov	r0, r5
 857 0238 FFF7FEFF 		bl	__aeabi_fcmpgt
 858 023c 28B1     		cbz	r0, .L139
 859 023e 206B     		ldr	r0, [r4, #48]	@ float
 860 0240 2946     		mov	r1, r5
 861 0242 FFF7FEFF 		bl	__aeabi_fdiv
 862 0246 0446     		mov	r4, r0
 863 0248 A8E7     		b	.L138
 864              	.L139:
 865 024a 4946     		mov	r1, r9
 866 024c 3046     		mov	r0, r6
 867 024e FFF7FEFF 		bl	__aeabi_fsub
 868 0252 4146     		mov	r1, r8
 869 0254 FFF7FEFF 		bl	__aeabi_fmul
 870 0258 4946     		mov	r1, r9
 871 025a FFF7FEFF 		bl	__aeabi_fdiv
 872 025e 0446     		mov	r4, r0
 873 0260 0DE7     		b	.L115
 874              	.L175:
 875 0262 206F     		ldr	r0, [r4, #112]	@ float
 876 0264 616B     		ldr	r1, [r4, #52]	@ float
 877 0266 FFF7FEFF 		bl	__aeabi_fsub
 878 026a D4F84890 		ldr	r9, [r4, #72]	@ float
 879 026e 0646     		mov	r6, r0
 880 0270 2BE7     		b	.L124
 881              	.L177:
 882 0272 00BF     		.align	2
 883              	.L176:
 884 0274 CDCCCC3D 		.word	1036831949
 885 0278 00000000 		.word	reprap
 886 027c 6F12833A 		.word	981668463
 887 0280 0000F03F 		.word	1072693248
 888 0284 0AD7233C 		.word	1008981770
 889              		.size	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod, .-_ZNK12PrintMonitor16Estimate
 890              		.global	__aeabi_dcmple
 891              		.section	.text._ZNK12PrintMonitor20FindFirstLayerHeightEPKcjRf,"ax",%progbits
 892              		.align	2
 893              		.global	_ZNK12PrintMonitor20FindFirstLayerHeightEPKcjRf
 894              		.thumb
 895              		.thumb_func
 896              		.type	_ZNK12PrintMonitor20FindFirstLayerHeightEPKcjRf, %function
 897              	_ZNK12PrintMonitor20FindFirstLayerHeightEPKcjRf:
 898              		@ args = 0, pretend = 0, frame = 16
 899              		@ frame_needed = 0, uses_anonymous_args = 0
 900 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 901 0004 032A     		cmp	r2, #3
 902 0006 85B0     		sub	sp, sp, #20
 903 0008 8346     		mov	fp, r0
 904 000a 0D46     		mov	r5, r1
 905 000c 1F46     		mov	r7, r3
 906 000e 4ED9     		bls	.L181
 907 0010 0023     		movs	r3, #0
 908 0012 161F     		subs	r6, r2, #4
 909 0014 3B60     		str	r3, [r7]	@ float
 910 0016 4AD0     		beq	.L181
 911 0018 4FF0000A 		mov	r10, #0
 912 001c D146     		mov	r9, r10
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 17


 913 001e D046     		mov	r8, r10
 914 0020 5446     		mov	r4, r10
 915 0022 07E0     		b	.L198
 916              	.L219:
 917 0024 B3F10A04 		subs	r4, r3, #10
 918 0028 18BF     		it	ne
 919 002a 0124     		movne	r4, #1
 920 002c 0AF1010A 		add	r10, r10, #1
 921              	.L183:
 922 0030 5645     		cmp	r6, r10
 923 0032 0BD9     		bls	.L217
 924              	.L198:
 925 0034 15F80A30 		ldrb	r3, [r5, r10]	@ zero_extendqisi2
 926 0038 3B2B     		cmp	r3, #59
 927 003a 0BD0     		beq	.L218
 928 003c 002C     		cmp	r4, #0
 929 003e F1D1     		bne	.L219
 930 0040 472B     		cmp	r3, #71
 931 0042 0BD0     		beq	.L185
 932 0044 0AF1010A 		add	r10, r10, #1
 933 0048 5645     		cmp	r6, r10
 934 004a F3D8     		bhi	.L198
 935              	.L217:
 936 004c 4846     		mov	r0, r9
 937 004e 05B0     		add	sp, sp, #20
 938              		@ sp needed
 939 0050 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 940              	.L218:
 941 0054 0AF1010A 		add	r10, r10, #1
 942 0058 0124     		movs	r4, #1
 943 005a E9E7     		b	.L183
 944              	.L185:
 945 005c 0AF10103 		add	r3, r10, #1
 946 0060 EA5C     		ldrb	r2, [r5, r3]	@ zero_extendqisi2
 947 0062 B8F1000F 		cmp	r8, #0
 948 0066 03D0     		beq	.L186
 949 0068 392A     		cmp	r2, #57
 950 006a 34D0     		beq	.L220
 951              	.L203:
 952 006c 9A46     		mov	r10, r3
 953 006e DFE7     		b	.L183
 954              	.L186:
 955 0070 392A     		cmp	r2, #57
 956 0072 20D0     		beq	.L221
 957 0074 303A     		subs	r2, r2, #48
 958 0076 012A     		cmp	r2, #1
 959 0078 F8D8     		bhi	.L203
 960 007a 05EB0A02 		add	r2, r5, r10
 961 007e 9278     		ldrb	r2, [r2, #2]	@ zero_extendqisi2
 962 0080 202A     		cmp	r2, #32
 963 0082 F3D1     		bne	.L203
 964 0084 0AF10303 		add	r3, r10, #3
 965 0088 B342     		cmp	r3, r6
 966 008a 69D2     		bcs	.L216
 967 008c EA5C     		ldrb	r2, [r5, r3]	@ zero_extendqisi2
 968 008e 5A2A     		cmp	r2, #90
 969 0090 31D0     		beq	.L189
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 18


 970 0092 3B2A     		cmp	r2, #59
 971 0094 05D1     		bne	.L191
 972 0096 63E0     		b	.L216
 973              	.L197:
 974 0098 EA5C     		ldrb	r2, [r5, r3]	@ zero_extendqisi2
 975 009a 5A2A     		cmp	r2, #90
 976 009c 2BD0     		beq	.L189
 977 009e 3B2A     		cmp	r2, #59
 978 00a0 02D0     		beq	.L215
 979              	.L191:
 980 00a2 0133     		adds	r3, r3, #1
 981 00a4 B342     		cmp	r3, r6
 982 00a6 F7D3     		bcc	.L197
 983              	.L215:
 984 00a8 03F1010A 		add	r10, r3, #1
 985 00ac C0E7     		b	.L183
 986              	.L181:
 987 00ae 0020     		movs	r0, #0
 988 00b0 05B0     		add	sp, sp, #20
 989              		@ sp needed
 990 00b2 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 991              	.L221:
 992 00b6 AA44     		add	r10, r10, r5
 993 00b8 9AF80220 		ldrb	r2, [r10, #2]	@ zero_extendqisi2
 994 00bc 312A     		cmp	r2, #49
 995 00be D5D1     		bne	.L203
 996 00c0 9AF80380 		ldrb	r8, [r10, #3]	@ zero_extendqisi2
 997 00c4 9A46     		mov	r10, r3
 998 00c6 B8F1200F 		cmp	r8, #32
 999 00ca 8CBF     		ite	hi
 1000 00cc 4FF00008 		movhi	r8, #0
 1001 00d0 4FF00108 		movls	r8, #1
 1002 00d4 ACE7     		b	.L183
 1003              	.L220:
 1004 00d6 AA44     		add	r10, r10, r5
 1005 00d8 9AF80220 		ldrb	r2, [r10, #2]	@ zero_extendqisi2
 1006 00dc 302A     		cmp	r2, #48
 1007 00de C5D1     		bne	.L203
 1008 00e0 9AF80380 		ldrb	r8, [r10, #3]	@ zero_extendqisi2
 1009 00e4 9A46     		mov	r10, r3
 1010 00e6 B8F1200F 		cmp	r8, #32
 1011 00ea 94BF     		ite	ls
 1012 00ec 4FF00008 		movls	r8, #0
 1013 00f0 4FF00108 		movhi	r8, #1
 1014 00f4 9CE7     		b	.L183
 1015              	.L189:
 1016 00f6 03F1010A 		add	r10, r3, #1
 1017 00fa 05EB0A00 		add	r0, r5, r10
 1018 00fe 0021     		movs	r1, #0
 1019 0100 FFF7FEFF 		bl	strtod
 1020 0104 FFF7FEFF 		bl	__aeabi_d2f
 1021 0108 3B68     		ldr	r3, [r7]	@ float
 1022 010a 0190     		str	r0, [sp, #4]	@ float
 1023 010c 0021     		movs	r1, #0
 1024 010e 1846     		mov	r0, r3
 1025 0110 0093     		str	r3, [sp]
 1026 0112 FFF7FEFF 		bl	__aeabi_fcmpeq
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 19


 1027 0116 009B     		ldr	r3, [sp]
 1028 0118 28B9     		cbnz	r0, .L193
 1029 011a 1946     		mov	r1, r3
 1030 011c 0198     		ldr	r0, [sp, #4]	@ float
 1031 011e FFF7FEFF 		bl	__aeabi_fcmplt
 1032 0122 0028     		cmp	r0, #0
 1033 0124 84D0     		beq	.L183
 1034              	.L193:
 1035 0126 0198     		ldr	r0, [sp, #4]	@ float
 1036 0128 FFF7FEFF 		bl	__aeabi_f2d
 1037 012c DBF80030 		ldr	r3, [fp]
 1038 0130 CDE90201 		strd	r0, [sp, #8]
 1039 0134 D3F81807 		ldr	r0, [r3, #1816]	@ float
 1040 0138 FFF7FEFF 		bl	__aeabi_f2d
 1041 013c 0022     		movs	r2, #0
 1042 013e 0A4B     		ldr	r3, .L222
 1043 0140 FFF7FEFF 		bl	__aeabi_dmul
 1044 0144 0246     		mov	r2, r0
 1045 0146 0B46     		mov	r3, r1
 1046 0148 DDE90201 		ldrd	r0, [sp, #8]
 1047 014c FFF7FEFF 		bl	__aeabi_dcmple
 1048 0150 0028     		cmp	r0, #0
 1049 0152 3FF46DAF 		beq	.L183
 1050 0156 019B     		ldr	r3, [sp, #4]	@ float
 1051 0158 4FF00109 		mov	r9, #1
 1052 015c 3B60     		str	r3, [r7]	@ float
 1053 015e 67E7     		b	.L183
 1054              	.L216:
 1055 0160 0AF1040A 		add	r10, r10, #4
 1056 0164 64E7     		b	.L183
 1057              	.L223:
 1058 0166 00BF     		.align	2
 1059              	.L222:
 1060 0168 00000840 		.word	1074266112
 1061              		.size	_ZNK12PrintMonitor20FindFirstLayerHeightEPKcjRf, .-_ZNK12PrintMonitor20FindFirstLayerHeightE
 1062              		.section	.text._ZNK12PrintMonitor10FindHeightEPKcjRf,"ax",%progbits
 1063              		.align	2
 1064              		.global	_ZNK12PrintMonitor10FindHeightEPKcjRf
 1065              		.thumb
 1066              		.thumb_func
 1067              		.type	_ZNK12PrintMonitor10FindHeightEPKcjRf, %function
 1068              	_ZNK12PrintMonitor10FindHeightEPKcjRf:
 1069              		@ args = 0, pretend = 0, frame = 0
 1070              		@ frame_needed = 0, uses_anonymous_args = 0
 1071 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1072 0004 4FF0000A 		mov	r10, #0
 1073 0008 8846     		mov	r8, r1
 1074 000a 1746     		mov	r7, r2
 1075 000c 9946     		mov	r9, r3
 1076 000e D346     		mov	fp, r10
 1077              	.L225:
 1078 0010 052F     		cmp	r7, #5
 1079 0012 0AD9     		bls	.L226
 1080              	.L292:
 1081 0014 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 1082 0018 0D2B     		cmp	r3, #13
 1083 001a 06D0     		beq	.L226
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 20


 1084 001c 0A2B     		cmp	r3, #10
 1085 001e 04D0     		beq	.L226
 1086 0020 013F     		subs	r7, r7, #1
 1087 0022 052F     		cmp	r7, #5
 1088 0024 08F10108 		add	r8, r8, #1
 1089 0028 F4D8     		bhi	.L292
 1090              	.L226:
 1091 002a 4546     		mov	r5, r8
 1092 002c 3E46     		mov	r6, r7
 1093 002e 721E     		subs	r2, r6, #1
 1094 0030 6C78     		ldrb	r4, [r5, #1]	@ zero_extendqisi2
 1095 0032 042A     		cmp	r2, #4
 1096 0034 A4F10901 		sub	r1, r4, #9
 1097 0038 2AD9     		bls	.L253
 1098              	.L294:
 1099 003a 202C     		cmp	r4, #32
 1100 003c 20D0     		beq	.L231
 1101 003e 0129     		cmp	r1, #1
 1102 0040 1ED9     		bls	.L231
 1103 0042 0D2C     		cmp	r4, #13
 1104 0044 1CD0     		beq	.L231
 1105 0046 472C     		cmp	r4, #71
 1106 0048 05F10208 		add	r8, r5, #2
 1107 004c A6F10207 		sub	r7, r6, #2
 1108 0050 22D0     		beq	.L293
 1109 0052 3B2C     		cmp	r4, #59
 1110 0054 DCD1     		bne	.L225
 1111 0056 1F2F     		cmp	r7, #31
 1112 0058 DAD9     		bls	.L225
 1113 005a 4046     		mov	r0, r8
 1114 005c 5349     		ldr	r1, .L297
 1115 005e FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1116 0062 0446     		mov	r4, r0
 1117 0064 0028     		cmp	r0, #0
 1118 0066 D3D0     		beq	.L225
 1119 0068 05F11600 		add	r0, r5, #22
 1120 006c 0021     		movs	r1, #0
 1121 006e FFF7FEFF 		bl	strtod
 1122 0072 FFF7FEFF 		bl	__aeabi_d2f
 1123 0076 C9F80000 		str	r0, [r9]	@ float
 1124 007a 2046     		mov	r0, r4
 1125 007c BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1126              	.L231:
 1127 0080 0135     		adds	r5, r5, #1
 1128 0082 1646     		mov	r6, r2
 1129 0084 721E     		subs	r2, r6, #1
 1130 0086 6C78     		ldrb	r4, [r5, #1]	@ zero_extendqisi2
 1131 0088 042A     		cmp	r2, #4
 1132 008a A4F10901 		sub	r1, r4, #9
 1133 008e D4D8     		bhi	.L294
 1134              	.L253:
 1135 0090 5C46     		mov	r4, fp
 1136 0092 2046     		mov	r0, r4
 1137 0094 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1138              	.L293:
 1139 0098 AB78     		ldrb	r3, [r5, #2]	@ zero_extendqisi2
 1140 009a BAF1000F 		cmp	r10, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 21


 1141 009e 10D0     		beq	.L233
 1142 00a0 392B     		cmp	r3, #57
 1143 00a2 B5D1     		bne	.L225
 1144 00a4 EB78     		ldrb	r3, [r5, #3]	@ zero_extendqisi2
 1145 00a6 302B     		cmp	r3, #48
 1146 00a8 B2D1     		bne	.L225
 1147 00aa 95F804A0 		ldrb	r10, [r5, #4]	@ zero_extendqisi2
 1148 00ae AAF1300A 		sub	r10, r10, #48
 1149 00b2 BAF1090F 		cmp	r10, #9
 1150 00b6 8CBF     		ite	hi
 1151 00b8 4FF0000A 		movhi	r10, #0
 1152 00bc 4FF0010A 		movls	r10, #1
 1153 00c0 A6E7     		b	.L225
 1154              	.L233:
 1155 00c2 A3F13002 		sub	r2, r3, #48
 1156 00c6 012A     		cmp	r2, #1
 1157 00c8 10D9     		bls	.L295
 1158 00ca 392B     		cmp	r3, #57
 1159 00cc A0D1     		bne	.L225
 1160 00ce EB78     		ldrb	r3, [r5, #3]	@ zero_extendqisi2
 1161 00d0 312B     		cmp	r3, #49
 1162 00d2 9DD1     		bne	.L225
 1163 00d4 95F804A0 		ldrb	r10, [r5, #4]	@ zero_extendqisi2
 1164 00d8 AAF1300A 		sub	r10, r10, #48
 1165 00dc BAF1090F 		cmp	r10, #9
 1166 00e0 94BF     		ite	ls
 1167 00e2 4FF0000A 		movls	r10, #0
 1168 00e6 4FF0010A 		movhi	r10, #1
 1169 00ea 91E7     		b	.L225
 1170              	.L295:
 1171 00ec EB78     		ldrb	r3, [r5, #3]	@ zero_extendqisi2
 1172 00ee F71E     		subs	r7, r6, #3
 1173 00f0 A3F13002 		sub	r2, r3, #48
 1174 00f4 092A     		cmp	r2, #9
 1175 00f6 05F10308 		add	r8, r5, #3
 1176 00fa 89D9     		bls	.L225
 1177 00fc 032F     		cmp	r7, #3
 1178 00fe 94D0     		beq	.L226
 1179 0100 5A2B     		cmp	r3, #90
 1180 0102 1AD0     		beq	.L236
 1181 0104 3B2B     		cmp	r3, #59
 1182 0106 83D0     		beq	.L225
 1183 0108 0A2B     		cmp	r3, #10
 1184 010a 81D0     		beq	.L225
 1185 010c 0D2B     		cmp	r3, #13
 1186 010e 3FF47FAF 		beq	.L225
 1187 0112 0435     		adds	r5, r5, #4
 1188 0114 0CE0     		b	.L237
 1189              	.L247:
 1190 0116 15F8013B 		ldrb	r3, [r5], #1	@ zero_extendqisi2
 1191 011a 5A2B     		cmp	r3, #90
 1192 011c 0DD0     		beq	.L236
 1193 011e 3B2B     		cmp	r3, #59
 1194 0120 3FF476AF 		beq	.L225
 1195 0124 0A2B     		cmp	r3, #10
 1196 0126 3FF473AF 		beq	.L225
 1197 012a 0D2B     		cmp	r3, #13
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 22


 1198 012c 3FF470AF 		beq	.L225
 1199              	.L237:
 1200 0130 013F     		subs	r7, r7, #1
 1201 0132 032F     		cmp	r7, #3
 1202 0134 A846     		mov	r8, r5
 1203 0136 EED1     		bne	.L247
 1204 0138 77E7     		b	.L226
 1205              	.L236:
 1206 013a 4446     		mov	r4, r8
 1207 013c 5A23     		movs	r3, #90
 1208 013e 09E0     		b	.L239
 1209              	.L296:
 1210 0140 3B2B     		cmp	r3, #59
 1211 0142 09D0     		beq	.L242
 1212 0144 013F     		subs	r7, r7, #1
 1213 0146 022F     		cmp	r7, #2
 1214 0148 04F10104 		add	r4, r4, #1
 1215 014c 12D9     		bls	.L240
 1216 014e 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 1217 0150 0A2B     		cmp	r3, #10
 1218 0152 23D0     		beq	.L241
 1219              	.L239:
 1220 0154 0D2B     		cmp	r3, #13
 1221 0156 F3D1     		bne	.L296
 1222              	.L242:
 1223 0158 2046     		mov	r0, r4
 1224 015a 1549     		ldr	r1, .L297+4
 1225 015c FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1226 0160 30B9     		cbnz	r0, .L246
 1227 0162 022F     		cmp	r7, #2
 1228 0164 0DD9     		bls	.L245
 1229              	.L252:
 1230 0166 2046     		mov	r0, r4
 1231 0168 1249     		ldr	r1, .L297+8
 1232 016a FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1233 016e 40B1     		cbz	r0, .L245
 1234              	.L246:
 1235 0170 A046     		mov	r8, r4
 1236 0172 4DE7     		b	.L225
 1237              	.L240:
 1238 0174 05D1     		bne	.L245
 1239 0176 2046     		mov	r0, r4
 1240 0178 0D49     		ldr	r1, .L297+4
 1241 017a FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1242 017e 0028     		cmp	r0, #0
 1243 0180 F6D1     		bne	.L246
 1244              	.L245:
 1245 0182 08F10100 		add	r0, r8, #1
 1246 0186 0021     		movs	r1, #0
 1247 0188 FFF7FEFF 		bl	strtod
 1248 018c FFF7FEFF 		bl	__aeabi_d2f
 1249 0190 A046     		mov	r8, r4
 1250 0192 C9F80000 		str	r0, [r9]	@ float
 1251 0196 4FF0010B 		mov	fp, #1
 1252 019a 39E7     		b	.L225
 1253              	.L241:
 1254 019c 2046     		mov	r0, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 23


 1255 019e 0449     		ldr	r1, .L297+4
 1256 01a0 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1257 01a4 0028     		cmp	r0, #0
 1258 01a6 E3D1     		bne	.L246
 1259 01a8 DDE7     		b	.L252
 1260              	.L298:
 1261 01aa 00BF     		.align	2
 1262              	.L297:
 1263 01ac 00000000 		.word	.LANCHOR1
 1264 01b0 08000000 		.word	.LC1
 1265 01b4 0C000000 		.word	.LC2
 1266              		.size	_ZNK12PrintMonitor10FindHeightEPKcjRf, .-_ZNK12PrintMonitor10FindHeightEPKcjRf
 1267              		.section	.text._ZNK12PrintMonitor15FindLayerHeightEPKcjRf,"ax",%progbits
 1268              		.align	2
 1269              		.global	_ZNK12PrintMonitor15FindLayerHeightEPKcjRf
 1270              		.thumb
 1271              		.thumb_func
 1272              		.type	_ZNK12PrintMonitor15FindLayerHeightEPKcjRf, %function
 1273              	_ZNK12PrintMonitor15FindLayerHeightEPKcjRf:
 1274              		@ args = 0, pretend = 0, frame = 0
 1275              		@ frame_needed = 0, uses_anonymous_args = 0
 1276              		@ link register save eliminated.
 1277 0000 0878     		ldrb	r0, [r1]	@ zero_extendqisi2
 1278 0002 18B1     		cbz	r0, .L300
 1279 0004 0846     		mov	r0, r1
 1280 0006 1946     		mov	r1, r3
 1281 0008 FFF7FEBF 		b	_ZNK12PrintMonitor15FindLayerHeightEPKcjRf.part.6
 1282              	.L300:
 1283 000c 7047     		bx	lr
 1284              		.size	_ZNK12PrintMonitor15FindLayerHeightEPKcjRf, .-_ZNK12PrintMonitor15FindLayerHeightEPKcjRf
 1285 000e 00BF     		.section	.text._ZNK12PrintMonitor16FindFilamentUsedEPKcjPfj,"ax",%progbits
 1286              		.align	2
 1287              		.global	_ZNK12PrintMonitor16FindFilamentUsedEPKcjPfj
 1288              		.thumb
 1289              		.thumb_func
 1290              		.type	_ZNK12PrintMonitor16FindFilamentUsedEPKcjPfj, %function
 1291              	_ZNK12PrintMonitor16FindFilamentUsedEPKcjPfj:
 1292              		@ args = 4, pretend = 0, frame = 8
 1293              		@ frame_needed = 0, uses_anonymous_args = 0
 1294 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1295 0004 83B0     		sub	sp, sp, #12
 1296 0006 0C9F     		ldr	r7, [sp, #48]
 1297 0008 8246     		mov	r10, r0
 1298 000a 8B46     		mov	fp, r1
 1299 000c 9946     		mov	r9, r3
 1300 000e 002F     		cmp	r7, #0
 1301 0010 72D0     		beq	.L302
 1302 0012 0C46     		mov	r4, r1
 1303 0014 4FF00008 		mov	r8, #0
 1304              	.L303:
 1305 0018 2046     		mov	r0, r4
 1306 001a 6D49     		ldr	r1, .L347+8
 1307 001c FFF7FEFF 		bl	strstr
 1308 0020 78B1     		cbz	r0, .L307
 1309 0022 00F10C06 		add	r6, r0, #12
 1310              	.L324:
 1311 0026 3578     		ldrb	r5, [r6]	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 24


 1312 0028 6A48     		ldr	r0, .L347+12
 1313 002a 2946     		mov	r1, r5
 1314 002c 3446     		mov	r4, r6
 1315 002e 0136     		adds	r6, r6, #1
 1316 0030 FFF7FEFF 		bl	strchr
 1317 0034 0028     		cmp	r0, #0
 1318 0036 F6D1     		bne	.L324
 1319 0038 303D     		subs	r5, r5, #48
 1320 003a 092D     		cmp	r5, #9
 1321 003c 08D9     		bls	.L341
 1322              	.L305:
 1323 003e B845     		cmp	r8, r7
 1324 0040 EAD3     		bcc	.L303
 1325              	.L307:
 1326 0042 B8F1000F 		cmp	r8, #0
 1327 0046 15D0     		beq	.L342
 1328              	.L340:
 1329 0048 4046     		mov	r0, r8
 1330 004a 03B0     		add	sp, sp, #12
 1331              		@ sp needed
 1332 004c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1333              	.L341:
 1334 0050 2046     		mov	r0, r4
 1335 0052 01A9     		add	r1, sp, #4
 1336 0054 FFF7FEFF 		bl	strtod
 1337 0058 FFF7FEFF 		bl	__aeabi_d2f
 1338 005c 019B     		ldr	r3, [sp, #4]
 1339 005e 49F82800 		str	r0, [r9, r8, lsl #2]	@ float
 1340 0062 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 1341 0064 4FEA8805 		lsl	r5, r8, #2
 1342 0068 6D2A     		cmp	r2, #109
 1343 006a 00F09C80 		beq	.L343
 1344              	.L306:
 1345 006e 08F10108 		add	r8, r8, #1
 1346 0072 E4E7     		b	.L305
 1347              	.L342:
 1348 0074 5C46     		mov	r4, fp
 1349              	.L328:
 1350 0076 2046     		mov	r0, r4
 1351 0078 5749     		ldr	r1, .L347+16
 1352 007a FFF7FEFF 		bl	strstr
 1353 007e 78B1     		cbz	r0, .L311
 1354 0080 00F10F03 		add	r3, r0, #15
 1355              	.L325:
 1356 0084 1D78     		ldrb	r5, [r3]	@ zero_extendqisi2
 1357 0086 5348     		ldr	r0, .L347+12
 1358 0088 2946     		mov	r1, r5
 1359 008a 1C46     		mov	r4, r3
 1360 008c FFF7FEFF 		bl	strchr
 1361 0090 631C     		adds	r3, r4, #1
 1362 0092 0028     		cmp	r0, #0
 1363 0094 F6D1     		bne	.L325
 1364 0096 303D     		subs	r5, r5, #48
 1365 0098 092D     		cmp	r5, #9
 1366 009a 6ED9     		bls	.L344
 1367              	.L310:
 1368 009c 4745     		cmp	r7, r8
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 25


 1369 009e EAD8     		bhi	.L328
 1370              	.L311:
 1371 00a0 5E46     		mov	r6, fp
 1372 00a2 B8F1000F 		cmp	r8, #0
 1373 00a6 CFD1     		bne	.L340
 1374              	.L329:
 1375 00a8 3046     		mov	r0, r6
 1376 00aa 4C49     		ldr	r1, .L347+20
 1377 00ac FFF7FEFF 		bl	strstr
 1378 00b0 F8B1     		cbz	r0, .L321
 1379 00b2 457A     		ldrb	r5, [r0, #9]	@ zero_extendqisi2
 1380 00b4 00F10904 		add	r4, r0, #9
 1381 00b8 A5F13003 		sub	r3, r5, #48
 1382 00bc 092B     		cmp	r3, #9
 1383 00be 0CD8     		bhi	.L318
 1384 00c0 00F10A03 		add	r3, r0, #10
 1385              	.L327:
 1386 00c4 1D78     		ldrb	r5, [r3]	@ zero_extendqisi2
 1387 00c6 1C46     		mov	r4, r3
 1388 00c8 A5F13002 		sub	r2, r5, #48
 1389 00cc 092A     		cmp	r2, #9
 1390 00ce 03F10103 		add	r3, r3, #1
 1391 00d2 F7D9     		bls	.L327
 1392 00d4 01E0     		b	.L318
 1393              	.L319:
 1394 00d6 14F8015F 		ldrb	r5, [r4, #1]!	@ zero_extendqisi2
 1395              	.L318:
 1396 00da 3E48     		ldr	r0, .L347+12
 1397 00dc 2946     		mov	r1, r5
 1398 00de FFF7FEFF 		bl	strchr
 1399 00e2 2646     		mov	r6, r4
 1400 00e4 0028     		cmp	r0, #0
 1401 00e6 F6D1     		bne	.L319
 1402 00e8 303D     		subs	r5, r5, #48
 1403 00ea 092D     		cmp	r5, #9
 1404 00ec 50D9     		bls	.L345
 1405              	.L320:
 1406 00ee 4745     		cmp	r7, r8
 1407 00f0 DAD8     		bhi	.L329
 1408              	.L321:
 1409 00f2 B8F1000F 		cmp	r8, #0
 1410 00f6 A7D1     		bne	.L340
 1411              	.L302:
 1412 00f8 5846     		mov	r0, fp
 1413 00fa 3949     		ldr	r1, .L347+24
 1414 00fc FFF7FEFF 		bl	strstr
 1415 0100 0028     		cmp	r0, #0
 1416 0102 5AD0     		beq	.L346
 1417 0104 1A30     		adds	r0, r0, #26
 1418 0106 0021     		movs	r1, #0
 1419 0108 FFF7FEFF 		bl	strtod
 1420 010c DAF80030 		ldr	r3, [r10]
 1421 0110 0646     		mov	r6, r0
 1422 0112 D3F81407 		ldr	r0, [r3, #1812]	@ float
 1423 0116 0F46     		mov	r7, r1
 1424 0118 FFF7FEFF 		bl	__aeabi_f2d
 1425 011c 0022     		movs	r2, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 26


 1426 011e 314B     		ldr	r3, .L347+28
 1427 0120 FFF7FEFF 		bl	__aeabi_dmul
 1428 0124 0022     		movs	r2, #0
 1429 0126 0446     		mov	r4, r0
 1430 0128 0D46     		mov	r5, r1
 1431 012a 2F4B     		ldr	r3, .L347+32
 1432 012c 3046     		mov	r0, r6
 1433 012e 3946     		mov	r1, r7
 1434 0130 FFF7FEFF 		bl	__aeabi_dmul
 1435 0134 FFF7FEFF 		bl	__aeabi_d2f
 1436 0138 FFF7FEFF 		bl	__aeabi_f2d
 1437 013c 22A3     		adr	r3, .L347
 1438 013e D3E90023 		ldrd	r2, [r3]
 1439 0142 0646     		mov	r6, r0
 1440 0144 0F46     		mov	r7, r1
 1441 0146 2046     		mov	r0, r4
 1442 0148 2946     		mov	r1, r5
 1443 014a FFF7FEFF 		bl	__aeabi_dmul
 1444 014e 0246     		mov	r2, r0
 1445 0150 0B46     		mov	r3, r1
 1446 0152 2046     		mov	r0, r4
 1447 0154 2946     		mov	r1, r5
 1448 0156 FFF7FEFF 		bl	__aeabi_dmul
 1449 015a 0246     		mov	r2, r0
 1450 015c 0B46     		mov	r3, r1
 1451 015e 3046     		mov	r0, r6
 1452 0160 3946     		mov	r1, r7
 1453 0162 FFF7FEFF 		bl	__aeabi_ddiv
 1454 0166 FFF7FEFF 		bl	__aeabi_d2f
 1455 016a 4FF00108 		mov	r8, #1
 1456 016e C9F80000 		str	r0, [r9]	@ float
 1457 0172 4046     		mov	r0, r8
 1458 0174 03B0     		add	sp, sp, #12
 1459              		@ sp needed
 1460 0176 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1461              	.L344:
 1462 017a 0146     		mov	r1, r0
 1463 017c 2046     		mov	r0, r4
 1464 017e FFF7FEFF 		bl	strtod
 1465 0182 FFF7FEFF 		bl	__aeabi_d2f
 1466 0186 49F82800 		str	r0, [r9, r8, lsl #2]	@ float
 1467 018a 08F10108 		add	r8, r8, #1
 1468 018e 85E7     		b	.L310
 1469              	.L345:
 1470 0190 0146     		mov	r1, r0
 1471 0192 2046     		mov	r0, r4
 1472 0194 FFF7FEFF 		bl	strtod
 1473 0198 FFF7FEFF 		bl	__aeabi_d2f
 1474 019c 49F82800 		str	r0, [r9, r8, lsl #2]	@ float
 1475 01a0 08F10108 		add	r8, r8, #1
 1476 01a4 A3E7     		b	.L320
 1477              	.L343:
 1478 01a6 5B78     		ldrb	r3, [r3, #1]	@ zero_extendqisi2
 1479 01a8 6D2B     		cmp	r3, #109
 1480 01aa 3FF460AF 		beq	.L306
 1481 01ae 0F49     		ldr	r1, .L347+36
 1482 01b0 FFF7FEFF 		bl	__aeabi_fmul
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 27


 1483 01b4 49F80500 		str	r0, [r9, r5]	@ float
 1484 01b8 59E7     		b	.L306
 1485              	.L346:
 1486 01ba 8046     		mov	r8, r0
 1487 01bc 4046     		mov	r0, r8
 1488 01be 03B0     		add	sp, sp, #12
 1489              		@ sp needed
 1490 01c0 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1491              	.L348:
 1492 01c4 AFF30080 		.align	3
 1493              	.L347:
 1494 01c8 182D4454 		.word	1413754136
 1495 01cc FB210940 		.word	1074340347
 1496 01d0 18000000 		.word	.LC4
 1497 01d4 10000000 		.word	.LC3
 1498 01d8 28000000 		.word	.LC5
 1499 01dc 54000000 		.word	.LC7
 1500 01e0 38000000 		.word	.LC6
 1501 01e4 0000E03F 		.word	1071644672
 1502 01e8 00408F40 		.word	1083129856
 1503 01ec 00007A44 		.word	1148846080
 1504              		.size	_ZNK12PrintMonitor16FindFilamentUsedEPKcjPfj, .-_ZNK12PrintMonitor16FindFilamentUsedEPKcjPfj
 1505              		.section	.text._ZN12PrintMonitor11GetFileInfoEPKcS1_R13GCodeFileInfo,"ax",%progbits
 1506              		.align	2
 1507              		.global	_ZN12PrintMonitor11GetFileInfoEPKcS1_R13GCodeFileInfo
 1508              		.thumb
 1509              		.thumb_func
 1510              		.type	_ZN12PrintMonitor11GetFileInfoEPKcS1_R13GCodeFileInfo, %function
 1511              	_ZN12PrintMonitor11GetFileInfoEPKcS1_R13GCodeFileInfo:
 1512              		@ args = 0, pretend = 0, frame = 1144
 1513              		@ frame_needed = 0, uses_anonymous_args = 0
 1514 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1515 0004 8146     		mov	r9, r0
 1516 0006 90F88800 		ldrb	r0, [r0, #136]	@ zero_extendqisi2
 1517 000a ADF2944D 		subw	sp, sp, #1172
 1518 000e 0993     		str	r3, [sp, #36]
 1519 0010 00F0FF07 		and	r7, r0, #255
 1520 0014 0D46     		mov	r5, r1
 1521 0016 0892     		str	r2, [sp, #32]
 1522 0018 80B9     		cbnz	r0, .L350
 1523 001a CE4E     		ldr	r6, .L478
 1524 001c 3368     		ldr	r3, [r6]
 1525 001e D3F8B406 		ldr	r0, [r3, #1716]
 1526 0022 FFF7FEFF 		bl	_ZN11MassStorage15DirectoryExistsEPKcS1_
 1527 0026 0446     		mov	r4, r0
 1528 0028 0028     		cmp	r0, #0
 1529 002a 00F05782 		beq	.L351
 1530 002e 0999     		ldr	r1, [sp, #36]
 1531 0030 0120     		movs	r0, #1
 1532 0032 0F70     		strb	r7, [r1]
 1533              	.L427:
 1534 0034 0DF2944D 		addw	sp, sp, #1172
 1535              		@ sp needed
 1536 0038 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1537              	.L350:
 1538 003c 0898     		ldr	r0, [sp, #32]
 1539 003e 09F18901 		add	r1, r9, #137
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 28


 1540 0042 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1541 0046 0028     		cmp	r0, #0
 1542 0048 F4D0     		beq	.L427
 1543              	.L398:
 1544 004a FFF7FEFF 		bl	millis
 1545 004e 99F88830 		ldrb	r3, [r9, #136]	@ zero_extendqisi2
 1546 0052 DFF80083 		ldr	r8, .L478
 1547 0056 012B     		cmp	r3, #1
 1548 0058 0746     		mov	r7, r0
 1549 005a 15D0     		beq	.L459
 1550              	.L357:
 1551 005c 99F88830 		ldrb	r3, [r9, #136]	@ zero_extendqisi2
 1552 0060 022B     		cmp	r3, #2
 1553 0062 00F0D680 		beq	.L460
 1554              	.L378:
 1555 0066 99F81030 		ldrb	r3, [r9, #16]	@ zero_extendqisi2
 1556 006a 23B1     		cbz	r3, .L461
 1557              	.L395:
 1558 006c 0020     		movs	r0, #0
 1559 006e 0DF2944D 		addw	sp, sp, #1172
 1560              		@ sp needed
 1561 0072 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1562              	.L461:
 1563 0076 FFF7FEFF 		bl	millis
 1564 007a C01B     		subs	r0, r0, r7
 1565 007c C728     		cmp	r0, #199
 1566 007e F5D8     		bhi	.L395
 1567 0080 99F88830 		ldrb	r3, [r9, #136]	@ zero_extendqisi2
 1568 0084 012B     		cmp	r3, #1
 1569 0086 E9D1     		bne	.L357
 1570              	.L459:
 1571 0088 D9F8F000 		ldr	r0, [r9, #240]
 1572 008c FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1573 0090 0546     		mov	r5, r0
 1574 0092 D9F8F000 		ldr	r0, [r9, #240]
 1575 0096 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1576 009a 2D1A     		subs	r5, r5, r0
 1577 009c B5F5806F 		cmp	r5, #1024
 1578 00a0 D9F8C061 		ldr	r6, [r9, #448]
 1579 00a4 2ABF     		itet	cs
 1580 00a6 4FF4806A 		movcs	r10, #1024
 1581 00aa AA46     		movcc	r10, r5
 1582 00ac 5546     		movcs	r5, r10
 1583 00ae 002E     		cmp	r6, #0
 1584 00b0 40F04681 		bne	.L462
 1585 00b4 AB46     		mov	fp, r5
 1586 00b6 0AAC     		add	r4, sp, #40
 1587              	.L359:
 1588 00b8 FFF7FEFF 		bl	millis
 1589 00bc D9F8C011 		ldr	r1, [r9, #448]
 1590 00c0 0646     		mov	r6, r0
 1591 00c2 2144     		add	r1, r1, r4
 1592 00c4 D9F8F000 		ldr	r0, [r9, #240]
 1593 00c8 2A46     		mov	r2, r5
 1594 00ca FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 1595 00ce 5045     		cmp	r0, r10
 1596 00d0 40F07982 		bne	.L463
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 29


 1597 00d4 0023     		movs	r3, #0
 1598 00d6 04F80B30 		strb	r3, [r4, fp]
 1599 00da FFF7FEFF 		bl	millis
 1600 00de D9F89822 		ldr	r2, [r9, #664]
 1601 00e2 D9F82031 		ldr	r3, [r9, #288]
 1602 00e6 921B     		subs	r2, r2, r6
 1603 00e8 0244     		add	r2, r2, r0
 1604 00ea 8246     		mov	r10, r0
 1605 00ec C9F89822 		str	r2, [r9, #664]
 1606 00f0 002B     		cmp	r3, #0
 1607 00f2 00F03F81 		beq	.L464
 1608 00f6 D9F80001 		ldr	r0, [r9, #256]	@ float
 1609 00fa 0021     		movs	r1, #0
 1610 00fc 0126     		movs	r6, #1
 1611 00fe FFF7FEFF 		bl	__aeabi_fcmpeq
 1612 0102 0028     		cmp	r0, #0
 1613 0104 40F05181 		bne	.L465
 1614              	.L363:
 1615 0108 D9F82401 		ldr	r0, [r9, #292]	@ float
 1616 010c 0021     		movs	r1, #0
 1617 010e FFF7FEFF 		bl	__aeabi_fcmpeq
 1618 0112 20B1     		cbz	r0, .L365
 1619 0114 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 1620 0116 002B     		cmp	r3, #0
 1621 0118 40F0AA81 		bne	.L466
 1622 011c 1E46     		mov	r6, r3
 1623              	.L365:
 1624 011e 99F82831 		ldrb	r3, [r9, #296]	@ zero_extendqisi2
 1625 0122 93BB     		cbnz	r3, .L368
 1626 0124 2046     		mov	r0, r4
 1627 0126 8C49     		ldr	r1, .L478+4
 1628 0128 FFF7FEFF 		bl	strstr
 1629 012c 0028     		cmp	r0, #0
 1630 012e 00F02A82 		beq	.L369
 1631 0132 8A4B     		ldr	r3, .L478+8
 1632 0134 00F10D0B 		add	fp, r0, #13
 1633              	.L370:
 1634 0138 BBF1000F 		cmp	fp, #0
 1635 013c 00F0D980 		beq	.L373
 1636 0140 1946     		mov	r1, r3
 1637 0142 09F59470 		add	r0, r9, #296
 1638 0146 0693     		str	r3, [sp, #24]
 1639 0148 FFF7FEFF 		bl	strcpy
 1640 014c 069B     		ldr	r3, [sp, #24]
 1641 014e 1846     		mov	r0, r3
 1642 0150 FFF7FEFF 		bl	strlen
 1643 0154 3028     		cmp	r0, #48
 1644 0156 0346     		mov	r3, r0
 1645 0158 00F22282 		bhi	.L456
 1646 015c 9BF80020 		ldrb	r2, [fp]	@ zero_extendqisi2
 1647 0160 1F2A     		cmp	r2, #31
 1648 0162 88BF     		it	hi
 1649 0164 5846     		movhi	r0, fp
 1650 0166 04D8     		bhi	.L375
 1651 0168 1AE2     		b	.L456
 1652              	.L467:
 1653 016a 10F8012F 		ldrb	r2, [r0, #1]!	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 30


 1654 016e 1F2A     		cmp	r2, #31
 1655 0170 06D9     		bls	.L374
 1656              	.L375:
 1657 0172 0133     		adds	r3, r3, #1
 1658 0174 09EB0301 		add	r1, r9, r3
 1659 0178 312B     		cmp	r3, #49
 1660 017a 81F82721 		strb	r2, [r1, #295]
 1661 017e F4D1     		bne	.L467
 1662              	.L374:
 1663 0180 0023     		movs	r3, #0
 1664 0182 81F82831 		strb	r3, [r1, #296]
 1665 0186 99F82831 		ldrb	r3, [r9, #296]	@ zero_extendqisi2
 1666              	.L368:
 1667 018a 002B     		cmp	r3, #0
 1668 018c 0CBF     		ite	eq
 1669 018e 0026     		moveq	r6, #0
 1670 0190 06F00106 		andne	r6, r6, #1
 1671 0194 FFF7FEFF 		bl	millis
 1672 0198 D9F89422 		ldr	r2, [r9, #660]
 1673 019c CAEB0202 		rsb	r2, r10, r2
 1674 01a0 1044     		add	r0, r0, r2
 1675 01a2 C9F89402 		str	r0, [r9, #660]
 1676 01a6 D9F8F000 		ldr	r0, [r9, #240]
 1677 01aa FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1678 01ae 8246     		mov	r10, r0
 1679 01b0 002E     		cmp	r6, #0
 1680 01b2 00F0AC80 		beq	.L405
 1681              	.L376:
 1682 01b6 B8F84030 		ldrh	r3, [r8, #64]
 1683 01ba DA05     		lsls	r2, r3, #23
 1684 01bc 00F15F81 		bmi	.L468
 1685              	.L400:
 1686 01c0 FFF7FEFF 		bl	millis
 1687 01c4 0546     		mov	r5, r0
 1688 01c6 D9F8F000 		ldr	r0, [r9, #240]
 1689 01ca FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1690 01ce D9F8F040 		ldr	r4, [r9, #240]
 1691 01d2 0646     		mov	r6, r0
 1692 01d4 2046     		mov	r0, r4
 1693 01d6 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1694 01da 013E     		subs	r6, r6, #1
 1695 01dc 411E     		subs	r1, r0, #1
 1696 01de C6F30906 		ubfx	r6, r6, #0, #10
 1697 01e2 891B     		subs	r1, r1, r6
 1698 01e4 2046     		mov	r0, r4
 1699 01e6 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 1700 01ea FFF7FEFF 		bl	millis
 1701 01ee 0222     		movs	r2, #2
 1702 01f0 0023     		movs	r3, #0
 1703 01f2 89F88820 		strb	r2, [r9, #136]
 1704 01f6 C9F89432 		str	r3, [r9, #660]
 1705 01fa C9F89832 		str	r3, [r9, #664]
 1706 01fe C9F8C031 		str	r3, [r9, #448]
 1707 0202 99F88830 		ldrb	r3, [r9, #136]	@ zero_extendqisi2
 1708 0206 401B     		subs	r0, r0, r5
 1709 0208 022B     		cmp	r3, #2
 1710 020a C9F89C02 		str	r0, [r9, #668]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 31


 1711 020e 7FF42AAF 		bne	.L378
 1712              	.L460:
 1713 0212 D9F8F000 		ldr	r0, [r9, #240]
 1714 0216 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1715 021a 0646     		mov	r6, r0
 1716 021c D9F8F000 		ldr	r0, [r9, #240]
 1717 0220 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1718 0224 C6EB000B 		rsb	fp, r6, r0
 1719 0228 BBF5806F 		cmp	fp, #1024
 1720 022c D9F8C051 		ldr	r5, [r9, #448]
 1721 0230 2ABF     		itet	cs
 1722 0232 4FF4806A 		movcs	r10, #1024
 1723 0236 DA46     		movcc	r10, fp
 1724 0238 D346     		movcs	fp, r10
 1725 023a 002D     		cmp	r5, #0
 1726 023c 40F09080 		bne	.L469
 1727 0240 5D46     		mov	r5, fp
 1728 0242 0AAC     		add	r4, sp, #40
 1729              	.L380:
 1730 0244 FFF7FEFF 		bl	millis
 1731 0248 5A46     		mov	r2, fp
 1732 024a 0790     		str	r0, [sp, #28]
 1733 024c 2146     		mov	r1, r4
 1734 024e D9F8F000 		ldr	r0, [r9, #240]
 1735 0252 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 1736 0256 5045     		cmp	r0, r10
 1737 0258 40F0C081 		bne	.L470
 1738 025c 0023     		movs	r3, #0
 1739 025e 6355     		strb	r3, [r4, r5]
 1740 0260 FFF7FEFF 		bl	millis
 1741 0264 D9F89822 		ldr	r2, [r9, #664]
 1742 0268 0799     		ldr	r1, [sp, #28]
 1743 026a D9F82031 		ldr	r3, [r9, #288]
 1744 026e 521A     		subs	r2, r2, r1
 1745 0270 0244     		add	r2, r2, r0
 1746 0272 8246     		mov	r10, r0
 1747 0274 C9F89822 		str	r2, [r9, #664]
 1748 0278 002B     		cmp	r3, #0
 1749 027a 00F09F80 		beq	.L471
 1750 027e 4FF0010B 		mov	fp, #1
 1751              	.L382:
 1752 0282 D9F82401 		ldr	r0, [r9, #292]	@ float
 1753 0286 0021     		movs	r1, #0
 1754 0288 FFF7FEFF 		bl	__aeabi_fcmpeq
 1755 028c 28B1     		cbz	r0, .L383
 1756 028e 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 1757 0290 002B     		cmp	r3, #0
 1758 0292 40F01A81 		bne	.L385
 1759              	.L386:
 1760 0296 4FF0000B 		mov	fp, #0
 1761              	.L383:
 1762 029a D9F80401 		ldr	r0, [r9, #260]	@ float
 1763 029e 0021     		movs	r1, #0
 1764 02a0 FFF7FEFF 		bl	__aeabi_fcmpeq
 1765 02a4 0028     		cmp	r0, #0
 1766 02a6 40F09F80 		bne	.L387
 1767              	.L390:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 32


 1768 02aa FFF7FEFF 		bl	millis
 1769 02ae D9F89432 		ldr	r3, [r9, #660]
 1770 02b2 CAEB0303 		rsb	r3, r10, r3
 1771 02b6 1844     		add	r0, r0, r3
 1772 02b8 C9F89402 		str	r0, [r9, #660]
 1773 02bc BBF1000F 		cmp	fp, #0
 1774 02c0 02D1     		bne	.L388
 1775 02c2 002E     		cmp	r6, #0
 1776 02c4 40F0A680 		bne	.L472
 1777              	.L388:
 1778 02c8 224B     		ldr	r3, .L478
 1779 02ca B3F84030 		ldrh	r3, [r3, #64]
 1780 02ce DB05     		lsls	r3, r3, #23
 1781 02d0 00F1B681 		bmi	.L473
 1782              	.L403:
 1783 02d4 0023     		movs	r3, #0
 1784 02d6 89F88830 		strb	r3, [r9, #136]
 1785              	.L355:
 1786 02da D9F8F000 		ldr	r0, [r9, #240]
 1787 02de FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1788 02e2 0998     		ldr	r0, [sp, #36]
 1789 02e4 09F1F401 		add	r1, r9, #244
 1790 02e8 6822     		movs	r2, #104
 1791 02ea FFF7FEFF 		bl	memcpy
 1792 02ee 0120     		movs	r0, #1
 1793 02f0 A0E6     		b	.L427
 1794              	.L373:
 1795 02f2 FFF7FEFF 		bl	millis
 1796 02f6 D9F89432 		ldr	r3, [r9, #660]
 1797 02fa CAEB0303 		rsb	r3, r10, r3
 1798 02fe 1844     		add	r0, r0, r3
 1799 0300 C9F89402 		str	r0, [r9, #660]
 1800 0304 D9F8F000 		ldr	r0, [r9, #240]
 1801 0308 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1802 030c 8246     		mov	r10, r0
 1803              	.L405:
 1804 030e BAF5005F 		cmp	r10, #8192
 1805 0312 BFF450AF 		bcs	.L376
 1806 0316 D9F8F000 		ldr	r0, [r9, #240]
 1807 031a FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1808 031e 5045     		cmp	r0, r10
 1809 0320 3FF449AF 		beq	.L376
 1810 0324 632D     		cmp	r5, #99
 1811 0326 40F23881 		bls	.L414
 1812 032a A5F16401 		sub	r1, r5, #100
 1813 032e 2144     		add	r1, r1, r4
 1814 0330 6422     		movs	r2, #100
 1815              	.L401:
 1816 0332 C9F8C021 		str	r2, [r9, #448]
 1817 0336 09F5AE70 		add	r0, r9, #348
 1818 033a FFF7FEFF 		bl	memcpy
 1819 033e 8DE6     		b	.L357
 1820              	.L462:
 1821 0340 0AAC     		add	r4, sp, #40
 1822 0342 2046     		mov	r0, r4
 1823 0344 09F5AE71 		add	r1, r9, #348
 1824 0348 3246     		mov	r2, r6
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 33


 1825 034a FFF7FEFF 		bl	memcpy
 1826 034e 05EB060B 		add	fp, r5, r6
 1827 0352 B1E6     		b	.L359
 1828              	.L479:
 1829              		.align	2
 1830              	.L478:
 1831 0354 00000000 		.word	reprap
 1832 0358 D4000000 		.word	.LC16
 1833 035c 60000000 		.word	.LC8
 1834              	.L469:
 1835 0360 0AAC     		add	r4, sp, #40
 1836 0362 2A46     		mov	r2, r5
 1837 0364 04EB0B00 		add	r0, r4, fp
 1838 0368 09F5AE71 		add	r1, r9, #348
 1839 036c FFF7FEFF 		bl	memcpy
 1840 0370 5D44     		add	r5, r5, fp
 1841 0372 67E7     		b	.L380
 1842              	.L464:
 1843 0374 D8F81030 		ldr	r3, [r8, #16]
 1844 0378 2146     		mov	r1, r4
 1845 037a D3F88431 		ldr	r3, [r3, #388]
 1846 037e 4846     		mov	r0, r9
 1847 0380 C3F10903 		rsb	r3, r3, #9
 1848 0384 0093     		str	r3, [sp]
 1849 0386 5A46     		mov	r2, fp
 1850 0388 09F58473 		add	r3, r9, #264
 1851 038c FFF7FEFF 		bl	_ZNK12PrintMonitor16FindFilamentUsedEPKcjPfj
 1852 0390 0021     		movs	r1, #0
 1853 0392 061C     		adds	r6, r0, #0
 1854 0394 C9F82001 		str	r0, [r9, #288]
 1855 0398 D9F80001 		ldr	r0, [r9, #256]	@ float
 1856 039c 18BF     		it	ne
 1857 039e 0126     		movne	r6, #1
 1858 03a0 FFF7FEFF 		bl	__aeabi_fcmpeq
 1859 03a4 0028     		cmp	r0, #0
 1860 03a6 3FF4AFAE 		beq	.L363
 1861              	.L465:
 1862 03aa 5A46     		mov	r2, fp
 1863 03ac 4846     		mov	r0, r9
 1864 03ae 2146     		mov	r1, r4
 1865 03b0 09F58073 		add	r3, r9, #256
 1866 03b4 FFF7FEFF 		bl	_ZNK12PrintMonitor20FindFirstLayerHeightEPKcjRf
 1867 03b8 0640     		ands	r6, r6, r0
 1868 03ba A5E6     		b	.L363
 1869              	.L471:
 1870 03bc D8F81030 		ldr	r3, [r8, #16]
 1871 03c0 4846     		mov	r0, r9
 1872 03c2 D3F88431 		ldr	r3, [r3, #388]
 1873 03c6 2146     		mov	r1, r4
 1874 03c8 C3F10903 		rsb	r3, r3, #9
 1875 03cc 0093     		str	r3, [sp]
 1876 03ce 2A46     		mov	r2, r5
 1877 03d0 09F58473 		add	r3, r9, #264
 1878 03d4 FFF7FEFF 		bl	_ZNK12PrintMonitor16FindFilamentUsedEPKcjPfj
 1879 03d8 10F1000B 		adds	fp, r0, #0
 1880 03dc C9F82001 		str	r0, [r9, #288]
 1881 03e0 18BF     		it	ne
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 34


 1882 03e2 4FF0010B 		movne	fp, #1
 1883 03e6 4CE7     		b	.L382
 1884              	.L387:
 1885 03e8 4846     		mov	r0, r9
 1886 03ea 2146     		mov	r1, r4
 1887 03ec 2A46     		mov	r2, r5
 1888 03ee 09F58273 		add	r3, r9, #260
 1889 03f2 FFF7FEFF 		bl	_ZNK12PrintMonitor10FindHeightEPKcjRf
 1890 03f6 0028     		cmp	r0, #0
 1891 03f8 7FF457AF 		bne	.L390
 1892 03fc FFF7FEFF 		bl	millis
 1893 0400 D9F89432 		ldr	r3, [r9, #660]
 1894 0404 CAEB0303 		rsb	r3, r10, r3
 1895 0408 1844     		add	r0, r0, r3
 1896 040a C9F89402 		str	r0, [r9, #660]
 1897 040e 002E     		cmp	r6, #0
 1898 0410 3FF45AAF 		beq	.L388
 1899              	.L472:
 1900 0414 D9F8F000 		ldr	r0, [r9, #240]
 1901 0418 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1902 041c AA4B     		ldr	r3, .L480
 1903 041e 801B     		subs	r0, r0, r6
 1904 0420 9842     		cmp	r0, r3
 1905 0422 3FF651AF 		bhi	.L388
 1906 0426 FFF7FEFF 		bl	millis
 1907 042a B6F5806F 		cmp	r6, #1024
 1908 042e 8246     		mov	r10, r0
 1909 0430 C0F0A780 		bcc	.L415
 1910 0434 A6F58061 		sub	r1, r6, #1024
 1911              	.L404:
 1912 0438 D9F8F000 		ldr	r0, [r9, #240]
 1913 043c FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 1914 0440 0028     		cmp	r0, #0
 1915 0442 00F0D680 		beq	.L474
 1916 0446 FFF7FEFF 		bl	millis
 1917 044a D9F89C32 		ldr	r3, [r9, #668]
 1918 044e 632D     		cmp	r5, #99
 1919 0450 CAEB0303 		rsb	r3, r10, r3
 1920 0454 1844     		add	r0, r0, r3
 1921 0456 94BF     		ite	ls
 1922 0458 2A46     		movls	r2, r5
 1923 045a 6422     		movhi	r2, #100
 1924 045c C9F89C02 		str	r0, [r9, #668]
 1925 0460 C9F8C021 		str	r2, [r9, #448]
 1926 0464 2146     		mov	r1, r4
 1927 0466 09F5AE70 		add	r0, r9, #348
 1928 046a FFF7FEFF 		bl	memcpy
 1929 046e FAE5     		b	.L378
 1930              	.L466:
 1931 0470 2046     		mov	r0, r4
 1932 0472 09F59271 		add	r1, r9, #292
 1933 0476 FFF7FEFF 		bl	_ZNK12PrintMonitor15FindLayerHeightEPKcjRf.part.6
 1934 047a 0640     		ands	r6, r6, r0
 1935 047c 4FE6     		b	.L365
 1936              	.L468:
 1937 047e D9F8F000 		ldr	r0, [r9, #240]
 1938 0482 D9F80040 		ldr	r4, [r9]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 35


 1939 0486 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1940 048a 0546     		mov	r5, r0
 1941 048c D9F89802 		ldr	r0, [r9, #664]
 1942 0490 FFF7FEFF 		bl	__aeabi_ui2f
 1943 0494 FFF7FEFF 		bl	__aeabi_f2d
 1944 0498 0022     		movs	r2, #0
 1945 049a 8C4B     		ldr	r3, .L480+4
 1946 049c FFF7FEFF 		bl	__aeabi_ddiv
 1947 04a0 CDE90001 		strd	r0, [sp]
 1948 04a4 D9F89402 		ldr	r0, [r9, #660]
 1949 04a8 FFF7FEFF 		bl	__aeabi_ui2f
 1950 04ac FFF7FEFF 		bl	__aeabi_f2d
 1951 04b0 0022     		movs	r2, #0
 1952 04b2 864B     		ldr	r3, .L480+4
 1953 04b4 FFF7FEFF 		bl	__aeabi_ddiv
 1954 04b8 2B46     		mov	r3, r5
 1955 04ba CDE90201 		strd	r0, [sp, #8]
 1956 04be 844A     		ldr	r2, .L480+8
 1957 04c0 2046     		mov	r0, r4
 1958 04c2 0221     		movs	r1, #2
 1959 04c4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1960 04c8 7AE6     		b	.L400
 1961              	.L385:
 1962 04ca 2046     		mov	r0, r4
 1963 04cc 09F59271 		add	r1, r9, #292
 1964 04d0 FFF7FEFF 		bl	_ZNK12PrintMonitor15FindLayerHeightEPKcjRf.part.6
 1965 04d4 0028     		cmp	r0, #0
 1966 04d6 7FF4E0AE 		bne	.L383
 1967 04da DCE6     		b	.L386
 1968              	.L351:
 1969 04dc D9F80000 		ldr	r0, [r9]
 1970 04e0 2946     		mov	r1, r5
 1971 04e2 089A     		ldr	r2, [sp, #32]
 1972 04e4 2346     		mov	r3, r4
 1973 04e6 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 1974 04ea C9F8F000 		str	r0, [r9, #240]
 1975 04ee 0028     		cmp	r0, #0
 1976 04f0 65D0     		beq	.L475
 1977 04f2 0899     		ldr	r1, [sp, #32]
 1978 04f4 6422     		movs	r2, #100
 1979 04f6 09F18900 		add	r0, r9, #137
 1980 04fa FFF7FEFF 		bl	strncpy
 1981 04fe 0123     		movs	r3, #1
 1982 0500 89F8F430 		strb	r3, [r9, #244]
 1983 0504 89F8EC40 		strb	r4, [r9, #236]
 1984 0508 C9F8C041 		str	r4, [r9, #448]
 1985 050c D9F8F000 		ldr	r0, [r9, #240]
 1986 0510 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1987 0514 3368     		ldr	r3, [r6]
 1988 0516 C9F8F800 		str	r0, [r9, #248]
 1989 051a 2946     		mov	r1, r5
 1990 051c D3F8B406 		ldr	r0, [r3, #1716]
 1991 0520 089A     		ldr	r2, [sp, #32]
 1992 0522 FFF7FEFF 		bl	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_
 1993 0526 B6F84020 		ldrh	r2, [r6, #64]
 1994 052a 0023     		movs	r3, #0
 1995 052c D105     		lsls	r1, r2, #23
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 36


 1996 052e C9F8FC00 		str	r0, [r9, #252]
 1997 0532 C9F82041 		str	r4, [r9, #288]
 1998 0536 89F82841 		strb	r4, [r9, #296]
 1999 053a C9F80031 		str	r3, [r9, #256]	@ float
 2000 053e C9F80431 		str	r3, [r9, #260]	@ float
 2001 0542 C9F82431 		str	r3, [r9, #292]	@ float
 2002 0546 C9F80831 		str	r3, [r9, #264]	@ float
 2003 054a C9F80C31 		str	r3, [r9, #268]	@ float
 2004 054e C9F81031 		str	r3, [r9, #272]	@ float
 2005 0552 C9F81431 		str	r3, [r9, #276]	@ float
 2006 0556 C9F81831 		str	r3, [r9, #280]	@ float
 2007 055a C9F81C31 		str	r3, [r9, #284]	@ float
 2008 055e 22D4     		bmi	.L476
 2009              	.L354:
 2010 0560 D9F8F000 		ldr	r0, [r9, #240]
 2011 0564 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 2012 0568 0028     		cmp	r0, #0
 2013 056a 3FF4B6AE 		beq	.L355
 2014 056e 0898     		ldr	r0, [sp, #32]
 2015 0570 5849     		ldr	r1, .L480+12
 2016 0572 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2017 0576 0028     		cmp	r0, #0
 2018 0578 4FD0     		beq	.L477
 2019              	.L356:
 2020 057a 0123     		movs	r3, #1
 2021 057c 89F88830 		strb	r3, [r9, #136]
 2022 0580 63E5     		b	.L398
 2023              	.L415:
 2024 0582 0021     		movs	r1, #0
 2025 0584 58E7     		b	.L404
 2026              	.L369:
 2027 0586 2046     		mov	r0, r4
 2028 0588 5349     		ldr	r1, .L480+16
 2029 058a FFF7FEFF 		bl	strstr
 2030 058e 0028     		cmp	r0, #0
 2031 0590 39D0     		beq	.L371
 2032 0592 00F1020B 		add	fp, r0, #2
 2033 0596 514B     		ldr	r3, .L480+20
 2034 0598 CEE5     		b	.L370
 2035              	.L414:
 2036 059a 2A46     		mov	r2, r5
 2037 059c 2146     		mov	r1, r4
 2038 059e C8E6     		b	.L401
 2039              	.L456:
 2040 05a0 09EB0301 		add	r1, r9, r3
 2041 05a4 ECE5     		b	.L374
 2042              	.L476:
 2043 05a6 C9F89442 		str	r4, [r9, #660]
 2044 05aa C9F89842 		str	r4, [r9, #664]
 2045 05ae D9F80000 		ldr	r0, [r9]
 2046 05b2 0221     		movs	r1, #2
 2047 05b4 4A4A     		ldr	r2, .L480+24
 2048 05b6 089B     		ldr	r3, [sp, #32]
 2049 05b8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2050 05bc D0E7     		b	.L354
 2051              	.L475:
 2052 05be 099B     		ldr	r3, [sp, #36]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 37


 2053 05c0 1870     		strb	r0, [r3]
 2054 05c2 0120     		movs	r0, #1
 2055 05c4 36E5     		b	.L427
 2056              	.L463:
 2057 05c6 089B     		ldr	r3, [sp, #32]
 2058 05c8 D9F80000 		ldr	r0, [r9]
 2059 05cc 0221     		movs	r1, #2
 2060 05ce 454A     		ldr	r2, .L480+28
 2061 05d0 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2062 05d4 0023     		movs	r3, #0
 2063 05d6 89F88830 		strb	r3, [r9, #136]
 2064 05da 7EE6     		b	.L355
 2065              	.L470:
 2066 05dc 089B     		ldr	r3, [sp, #32]
 2067 05de D9F80000 		ldr	r0, [r9]
 2068 05e2 0221     		movs	r1, #2
 2069 05e4 404A     		ldr	r2, .L480+32
 2070 05e6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2071 05ea 0023     		movs	r3, #0
 2072 05ec 89F88830 		strb	r3, [r9, #136]
 2073 05f0 73E6     		b	.L355
 2074              	.L474:
 2075 05f2 0646     		mov	r6, r0
 2076 05f4 0221     		movs	r1, #2
 2077 05f6 D9F80000 		ldr	r0, [r9]
 2078 05fa 3C4A     		ldr	r2, .L480+36
 2079 05fc FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 2080 0600 89F88860 		strb	r6, [r9, #136]
 2081 0604 69E6     		b	.L355
 2082              	.L371:
 2083 0606 2046     		mov	r0, r4
 2084 0608 3949     		ldr	r1, .L480+40
 2085 060a FFF7FEFF 		bl	strstr
 2086 060e 0028     		cmp	r0, #0
 2087 0610 4FD0     		beq	.L372
 2088 0612 00F10C0B 		add	fp, r0, #12
 2089 0616 374B     		ldr	r3, .L480+44
 2090 0618 8EE5     		b	.L370
 2091              	.L477:
 2092 061a 0898     		ldr	r0, [sp, #32]
 2093 061c 3649     		ldr	r1, .L480+48
 2094 061e FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2095 0622 0028     		cmp	r0, #0
 2096 0624 A9D1     		bne	.L356
 2097 0626 0898     		ldr	r0, [sp, #32]
 2098 0628 3449     		ldr	r1, .L480+52
 2099 062a FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2100 062e 0028     		cmp	r0, #0
 2101 0630 A3D1     		bne	.L356
 2102 0632 0898     		ldr	r0, [sp, #32]
 2103 0634 3249     		ldr	r1, .L480+56
 2104 0636 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2105 063a 0028     		cmp	r0, #0
 2106 063c 9DD1     		bne	.L356
 2107 063e 4CE6     		b	.L355
 2108              	.L473:
 2109 0640 D9F8F000 		ldr	r0, [r9, #240]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 38


 2110 0644 D9F80040 		ldr	r4, [r9]
 2111 0648 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 2112 064c 0546     		mov	r5, r0
 2113 064e D9F8F000 		ldr	r0, [r9, #240]
 2114 0652 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 2115 0656 05F58065 		add	r5, r5, #1024
 2116 065a 2D1A     		subs	r5, r5, r0
 2117 065c D9F89802 		ldr	r0, [r9, #664]
 2118 0660 FFF7FEFF 		bl	__aeabi_ui2f
 2119 0664 FFF7FEFF 		bl	__aeabi_f2d
 2120 0668 0022     		movs	r2, #0
 2121 066a 184B     		ldr	r3, .L480+4
 2122 066c FFF7FEFF 		bl	__aeabi_ddiv
 2123 0670 CDE90001 		strd	r0, [sp]
 2124 0674 D9F89402 		ldr	r0, [r9, #660]
 2125 0678 FFF7FEFF 		bl	__aeabi_ui2f
 2126 067c FFF7FEFF 		bl	__aeabi_f2d
 2127 0680 0022     		movs	r2, #0
 2128 0682 124B     		ldr	r3, .L480+4
 2129 0684 FFF7FEFF 		bl	__aeabi_ddiv
 2130 0688 CDE90201 		strd	r0, [sp, #8]
 2131 068c D9F89C02 		ldr	r0, [r9, #668]
 2132 0690 FFF7FEFF 		bl	__aeabi_ui2f
 2133 0694 FFF7FEFF 		bl	__aeabi_f2d
 2134 0698 0022     		movs	r2, #0
 2135 069a 0C4B     		ldr	r3, .L480+4
 2136 069c FFF7FEFF 		bl	__aeabi_ddiv
 2137 06a0 2B46     		mov	r3, r5
 2138 06a2 CDE90401 		strd	r0, [sp, #16]
 2139 06a6 174A     		ldr	r2, .L480+60
 2140 06a8 2046     		mov	r0, r4
 2141 06aa 0221     		movs	r1, #2
 2142 06ac FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2143 06b0 10E6     		b	.L403
 2144              	.L372:
 2145 06b2 2046     		mov	r0, r4
 2146 06b4 1449     		ldr	r1, .L480+64
 2147 06b6 FFF7FEFF 		bl	strstr
 2148 06ba 0028     		cmp	r0, #0
 2149 06bc 3FF419AE 		beq	.L373
 2150 06c0 064B     		ldr	r3, .L480+20
 2151 06c2 00F1100B 		add	fp, r0, #16
 2152 06c6 37E5     		b	.L370
 2153              	.L481:
 2154              		.align	2
 2155              	.L480:
 2156 06c8 7F1A0600 		.word	399999
 2157 06cc 00408F40 		.word	1083129856
 2158 06d0 14010000 		.word	.LC20
 2159 06d4 88000000 		.word	.LC11
 2160 06d8 E4000000 		.word	.LC17
 2161 06dc 60000000 		.word	.LC8
 2162 06e0 70000000 		.word	.LC10
 2163 06e4 A0000000 		.word	.LC15
 2164 06e8 60010000 		.word	.LC21
 2165 06ec F0010000 		.word	.LC23
 2166 06f0 F0000000 		.word	.LC18
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 39


 2167 06f4 64000000 		.word	.LC9
 2168 06f8 90000000 		.word	.LC12
 2169 06fc 94000000 		.word	.LC13
 2170 0700 9C000000 		.word	.LC14
 2171 0704 94010000 		.word	.LC22
 2172 0708 00010000 		.word	.LC19
 2173              		.size	_ZN12PrintMonitor11GetFileInfoEPKcS1_R13GCodeFileInfo, .-_ZN12PrintMonitor11GetFileInfoEPKcS
 2174              		.global	__aeabi_dcmplt
 2175              		.section	.text._ZN12PrintMonitor4SpinEv,"ax",%progbits
 2176              		.align	2
 2177              		.global	_ZN12PrintMonitor4SpinEv
 2178              		.thumb
 2179              		.thumb_func
 2180              		.type	_ZN12PrintMonitor4SpinEv, %function
 2181              	_ZN12PrintMonitor4SpinEv:
 2182              		@ args = 0, pretend = 0, frame = 40
 2183              		@ frame_needed = 0, uses_anonymous_args = 0
 2184 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2185 0004 90F83032 		ldrb	r3, [r0, #560]	@ zero_extendqisi2
 2186 0008 8BB0     		sub	sp, sp, #44
 2187 000a 0646     		mov	r6, r0
 2188 000c 1BB1     		cbz	r3, .L483
 2189 000e 90F8C431 		ldrb	r3, [r0, #452]	@ zero_extendqisi2
 2190 0012 002B     		cmp	r3, #0
 2191 0014 58D0     		beq	.L541
 2192              	.L483:
 2193 0016 7068     		ldr	r0, [r6, #4]
 2194 0018 FFF7FEFF 		bl	_ZNK6GCodes9IsRunningEv
 2195 001c 88B9     		cbnz	r0, .L485
 2196 001e B069     		ldr	r0, [r6, #24]	@ float
 2197 0020 0021     		movs	r1, #0
 2198 0022 FFF7FEFF 		bl	__aeabi_fcmpeq
 2199 0026 38B9     		cbnz	r0, .L542
 2200              	.L486:
 2201 0028 3146     		mov	r1, r6
 2202 002a 51F8080B 		ldr	r0, [r1], #8
 2203 002e FFF7FEFF 		bl	_ZN8Platform11ClassReportERf
 2204 0032 0BB0     		add	sp, sp, #44
 2205              		@ sp needed
 2206 0034 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2207              	.L542:
 2208 0038 3068     		ldr	r0, [r6]
 2209 003a FFF7FEFF 		bl	_ZN8Platform4TimeEv
 2210 003e B061     		str	r0, [r6, #24]	@ float
 2211 0040 F2E7     		b	.L486
 2212              	.L485:
 2213 0042 FFF7FEFF 		bl	millis
 2214 0046 337C     		ldrb	r3, [r6, #16]	@ zero_extendqisi2
 2215 0048 0746     		mov	r7, r0
 2216 004a 002B     		cmp	r3, #0
 2217 004c 34D0     		beq	.L491
 2218 004e F368     		ldr	r3, [r6, #12]
 2219 0050 C31A     		subs	r3, r0, r3
 2220 0052 C82B     		cmp	r3, #200
 2221 0054 30D9     		bls	.L491
 2222 0056 0024     		movs	r4, #0
 2223 0058 B069     		ldr	r0, [r6, #24]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 40


 2224 005a 2146     		mov	r1, r4
 2225 005c FFF7FEFF 		bl	__aeabi_fcmpeq
 2226 0060 0028     		cmp	r0, #0
 2227 0062 60D0     		beq	.L543
 2228              	.L511:
 2229 0064 746A     		ldr	r4, [r6, #36]
 2230 0066 002C     		cmp	r4, #0
 2231 0068 6AD1     		bne	.L492
 2232 006a DFF8B481 		ldr	r8, .L549+8
 2233 006e A146     		mov	r9, r4
 2234 0070 C246     		mov	r10, r8
 2235 0072 4FF0010B 		mov	fp, #1
 2236              	.L497:
 2237 0076 65B2     		sxtb	r5, r4
 2238 0078 2946     		mov	r1, r5
 2239 007a D8F80C00 		ldr	r0, [r8, #12]
 2240 007e FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 2241 0082 0228     		cmp	r0, #2
 2242 0084 32D0     		beq	.L544
 2243              	.L513:
 2244 0086 0134     		adds	r4, r4, #1
 2245 0088 072C     		cmp	r4, #7
 2246 008a F4D1     		bne	.L497
 2247 008c B9F1000F 		cmp	r9, #0
 2248 0090 29D0     		beq	.L500
 2249 0092 D8F80830 		ldr	r3, [r8, #8]
 2250 0096 9968     		ldr	r1, [r3, #8]
 2251 0098 5A68     		ldr	r2, [r3, #4]
 2252 009a 9142     		cmp	r1, r2
 2253 009c 20D0     		beq	.L545
 2254              	.L498:
 2255 009e 337C     		ldrb	r3, [r6, #16]	@ zero_extendqisi2
 2256 00a0 0022     		movs	r2, #0
 2257 00a2 86F82020 		strb	r2, [r6, #32]
 2258 00a6 002B     		cmp	r3, #0
 2259 00a8 40F08180 		bne	.L514
 2260 00ac 0020     		movs	r0, #0
 2261              	.L515:
 2262 00ae 0123     		movs	r3, #1
 2263 00b0 B062     		str	r0, [r6, #40]	@ float
 2264 00b2 7362     		str	r3, [r6, #36]
 2265 00b4 3068     		ldr	r0, [r6]
 2266 00b6 17E0     		b	.L499
 2267              	.L491:
 2268 00b8 3068     		ldr	r0, [r6]
 2269              	.L489:
 2270 00ba 06F10801 		add	r1, r6, #8
 2271 00be FFF7FEFF 		bl	_ZN8Platform11ClassReportERf
 2272 00c2 0BB0     		add	sp, sp, #44
 2273              		@ sp needed
 2274 00c4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2275              	.L541:
 2276 00c8 5349     		ldr	r1, .L549
 2277 00ca 00F50C72 		add	r2, r0, #560
 2278 00ce 00F5E473 		add	r3, r0, #456
 2279 00d2 FFF7FEFF 		bl	_ZN12PrintMonitor11GetFileInfoEPKcS1_R13GCodeFileInfo
 2280 00d6 86F8C401 		strb	r0, [r6, #452]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 41


 2281 00da 0028     		cmp	r0, #0
 2282 00dc 9BD1     		bne	.L483
 2283 00de A3E7     		b	.L486
 2284              	.L545:
 2285 00e0 1B68     		ldr	r3, [r3]
 2286 00e2 002B     		cmp	r3, #0
 2287 00e4 DBD1     		bne	.L498
 2288              	.L500:
 2289 00e6 3068     		ldr	r0, [r6]
 2290              	.L499:
 2291 00e8 F760     		str	r7, [r6, #12]
 2292 00ea E6E7     		b	.L489
 2293              	.L544:
 2294 00ec 2946     		mov	r1, r5
 2295 00ee DAF80C00 		ldr	r0, [r10, #12]
 2296 00f2 FFF7FEFF 		bl	_ZNK4Heat20GetActiveTemperatureEa
 2297 00f6 4949     		ldr	r1, .L549+4
 2298 00f8 FFF7FEFF 		bl	__aeabi_fcmpgt
 2299 00fc 2946     		mov	r1, r5
 2300 00fe 0028     		cmp	r0, #0
 2301 0100 C1D0     		beq	.L513
 2302 0102 86F820B0 		strb	fp, [r6, #32]
 2303 0106 4648     		ldr	r0, .L549+8
 2304 0108 FFF7FEFF 		bl	_ZNK6RepRap22IsHeaterAssignedToToolEa
 2305 010c 0028     		cmp	r0, #0
 2306 010e BAD0     		beq	.L513
 2307 0110 2946     		mov	r1, r5
 2308 0112 DAF80C00 		ldr	r0, [r10, #12]
 2309 0116 0022     		movs	r2, #0
 2310 0118 FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
 2311 011c 0028     		cmp	r0, #0
 2312 011e E2D0     		beq	.L500
 2313 0120 4FF00109 		mov	r9, #1
 2314 0124 AFE7     		b	.L513
 2315              	.L543:
 2316 0126 3068     		ldr	r0, [r6]
 2317 0128 FFF7FEFF 		bl	_ZN8Platform4TimeEv
 2318 012c B169     		ldr	r1, [r6, #24]	@ float
 2319 012e FFF7FEFF 		bl	__aeabi_fsub
 2320 0132 0146     		mov	r1, r0
 2321 0134 F069     		ldr	r0, [r6, #28]	@ float
 2322 0136 FFF7FEFF 		bl	__aeabi_fadd
 2323 013a B461     		str	r4, [r6, #24]	@ float
 2324 013c F061     		str	r0, [r6, #28]	@ float
 2325 013e 91E7     		b	.L511
 2326              	.L492:
 2327 0140 7068     		ldr	r0, [r6, #4]
 2328 0142 FFF7FEFF 		bl	_ZNK6GCodes14DoingFileMacroEv
 2329 0146 0028     		cmp	r0, #0
 2330 0148 CDD1     		bne	.L500
 2331 014a 354C     		ldr	r4, .L549+8
 2332 014c A068     		ldr	r0, [r4, #8]
 2333 014e FFF7FEFF 		bl	_ZNK4Move11IsExtrudingEv
 2334 0152 0028     		cmp	r0, #0
 2335 0154 C7D0     		beq	.L500
 2336 0156 2046     		mov	r0, r4
 2337 0158 A568     		ldr	r5, [r4, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 42


 2338 015a FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 2339 015e 01A9     		add	r1, sp, #4
 2340 0160 0246     		mov	r2, r0
 2341 0162 2846     		mov	r0, r5
 2342 0164 FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfm
 2343 0168 D6F8D441 		ldr	r4, [r6, #468]	@ float
 2344 016c 0021     		movs	r1, #0
 2345 016e 2046     		mov	r0, r4
 2346 0170 FFF7FEFF 		bl	__aeabi_fcmpeq
 2347 0174 F8B1     		cbz	r0, .L546
 2348 0176 DDF80C90 		ldr	r9, [sp, #12]	@ float
 2349 017a D6F80080 		ldr	r8, [r6]
 2350 017e 4846     		mov	r0, r9
 2351 0180 FFF7FEFF 		bl	__aeabi_f2d
 2352 0184 0446     		mov	r4, r0
 2353 0186 D8F81807 		ldr	r0, [r8, #1816]	@ float
 2354 018a 0D46     		mov	r5, r1
 2355 018c FFF7FEFF 		bl	__aeabi_f2d
 2356 0190 0022     		movs	r2, #0
 2357 0192 244B     		ldr	r3, .L549+12
 2358 0194 FFF7FEFF 		bl	__aeabi_dmul
 2359 0198 0246     		mov	r2, r0
 2360 019a 0B46     		mov	r3, r1
 2361 019c 2046     		mov	r0, r4
 2362 019e 2946     		mov	r1, r5
 2363 01a0 FFF7FEFF 		bl	__aeabi_dcmplt
 2364 01a4 10B3     		cbz	r0, .L536
 2365 01a6 C6F8D491 		str	r9, [r6, #468]	@ float
 2366 01aa 4046     		mov	r0, r8
 2367 01ac 9CE7     		b	.L499
 2368              	.L514:
 2369 01ae 3046     		mov	r0, r6
 2370 01b0 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.7
 2371 01b4 7BE7     		b	.L515
 2372              	.L546:
 2373 01b6 736A     		ldr	r3, [r6, #36]
 2374 01b8 012B     		cmp	r3, #1
 2375 01ba 19D0     		beq	.L547
 2376 01bc 1A49     		ldr	r1, .L549+16
 2377 01be 306C     		ldr	r0, [r6, #64]	@ float
 2378 01c0 FFF7FEFF 		bl	__aeabi_fadd
 2379 01c4 0146     		mov	r1, r0
 2380 01c6 0398     		ldr	r0, [sp, #12]	@ float
 2381 01c8 FFF7FEFF 		bl	__aeabi_fcmpgt
 2382 01cc 0028     		cmp	r0, #0
 2383 01ce 8AD0     		beq	.L500
 2384 01d0 3046     		mov	r0, r6
 2385 01d2 FFF7FEFF 		bl	_ZN12PrintMonitor13LayerCompleteEv
 2386              	.L540:
 2387 01d6 736A     		ldr	r3, [r6, #36]
 2388 01d8 0399     		ldr	r1, [sp, #12]	@ float
 2389 01da 327C     		ldrb	r2, [r6, #16]	@ zero_extendqisi2
 2390 01dc 0133     		adds	r3, r3, #1
 2391 01de 7362     		str	r3, [r6, #36]
 2392 01e0 3164     		str	r1, [r6, #64]	@ float
 2393 01e2 A2B9     		cbnz	r2, .L548
 2394 01e4 0020     		movs	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 43


 2395              	.L509:
 2396 01e6 B063     		str	r0, [r6, #56]	@ float
 2397 01e8 3068     		ldr	r0, [r6]
 2398 01ea 7DE7     		b	.L499
 2399              	.L536:
 2400 01ec 4046     		mov	r0, r8
 2401 01ee 7BE7     		b	.L499
 2402              	.L547:
 2403 01f0 0D49     		ldr	r1, .L549+16
 2404 01f2 2046     		mov	r0, r4
 2405 01f4 FFF7FEFF 		bl	__aeabi_fadd
 2406 01f8 0146     		mov	r1, r0
 2407 01fa 0398     		ldr	r0, [sp, #12]	@ float
 2408 01fc FFF7FEFF 		bl	__aeabi_fcmpgt
 2409 0200 0028     		cmp	r0, #0
 2410 0202 3FF470AF 		beq	.L500
 2411 0206 3046     		mov	r0, r6
 2412 0208 FFF7FEFF 		bl	_ZN12PrintMonitor18FirstLayerCompleteEv
 2413 020c E3E7     		b	.L540
 2414              	.L548:
 2415 020e 3046     		mov	r0, r6
 2416 0210 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.7
 2417 0214 E7E7     		b	.L509
 2418              	.L550:
 2419 0216 00BF     		.align	2
 2420              	.L549:
 2421 0218 1C020000 		.word	.LC24
 2422 021c 00002042 		.word	1109393408
 2423 0220 00000000 		.word	reprap
 2424 0224 0000F83F 		.word	1073217536
 2425 0228 8FC2753C 		.word	1014350479
 2426              		.size	_ZN12PrintMonitor4SpinEv, .-_ZN12PrintMonitor4SpinEv
 2427              		.section	.text._ZN12PrintMonitor13StartingPrintEPKc,"ax",%progbits
 2428              		.align	2
 2429              		.global	_ZN12PrintMonitor13StartingPrintEPKc
 2430              		.thumb
 2431              		.thumb_func
 2432              		.type	_ZN12PrintMonitor13StartingPrintEPKc, %function
 2433              	_ZN12PrintMonitor13StartingPrintEPKc:
 2434              		@ args = 0, pretend = 0, frame = 0
 2435              		@ frame_needed = 0, uses_anonymous_args = 0
 2436 0000 38B5     		push	{r3, r4, r5, lr}
 2437 0002 0A46     		mov	r2, r1
 2438 0004 00F5E473 		add	r3, r0, #456
 2439 0008 0D46     		mov	r5, r1
 2440 000a 0849     		ldr	r1, .L552
 2441 000c 0446     		mov	r4, r0
 2442 000e FFF7FEFF 		bl	_ZN12PrintMonitor11GetFileInfoEPKcS1_R13GCodeFileInfo
 2443 0012 2946     		mov	r1, r5
 2444 0014 84F8C401 		strb	r0, [r4, #452]
 2445 0018 6422     		movs	r2, #100
 2446 001a 04F50C70 		add	r0, r4, #560
 2447 001e FFF7FEFF 		bl	strncpy
 2448 0022 0023     		movs	r3, #0
 2449 0024 84F89332 		strb	r3, [r4, #659]
 2450 0028 38BD     		pop	{r3, r4, r5, pc}
 2451              	.L553:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 44


 2452 002a 00BF     		.align	2
 2453              	.L552:
 2454 002c 1C020000 		.word	.LC24
 2455              		.size	_ZN12PrintMonitor13StartingPrintEPKc, .-_ZN12PrintMonitor13StartingPrintEPKc
 2456              		.global	__aeabi_f2iz
 2457              		.section	.text._ZN12PrintMonitor19GetFileInfoResponseEPKcRP12OutputBuffer,"ax",%progbits
 2458              		.align	2
 2459              		.global	_ZN12PrintMonitor19GetFileInfoResponseEPKcRP12OutputBuffer
 2460              		.thumb
 2461              		.thumb_func
 2462              		.type	_ZN12PrintMonitor19GetFileInfoResponseEPKcRP12OutputBuffer, %function
 2463              	_ZN12PrintMonitor19GetFileInfoResponseEPKcRP12OutputBuffer:
 2464              		@ args = 0, pretend = 0, frame = 104
 2465              		@ frame_needed = 0, uses_anonymous_args = 0
 2466 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 2467 0004 1646     		mov	r6, r2
 2468 0006 A1B0     		sub	sp, sp, #132
 2469 0008 0446     		mov	r4, r0
 2470 000a 09B1     		cbz	r1, .L555
 2471 000c 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 2472 000e 5BB9     		cbnz	r3, .L596
 2473              	.L555:
 2474 0010 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 2475 0012 002B     		cmp	r3, #0
 2476 0014 69D0     		beq	.L564
 2477 0016 94F8C431 		ldrb	r3, [r4, #452]	@ zero_extendqisi2
 2478 001a 002B     		cmp	r3, #0
 2479 001c 73D1     		bne	.L597
 2480              	.L565:
 2481 001e 0027     		movs	r7, #0
 2482              	.L580:
 2483 0020 3846     		mov	r0, r7
 2484 0022 21B0     		add	sp, sp, #132
 2485              		@ sp needed
 2486 0024 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2487              	.L596:
 2488 0028 0A46     		mov	r2, r1
 2489 002a 06AB     		add	r3, sp, #24
 2490 002c 7B49     		ldr	r1, .L601
 2491 002e FFF7FEFF 		bl	_ZN12PrintMonitor11GetFileInfoEPKcS1_R13GCodeFileInfo
 2492 0032 0746     		mov	r7, r0
 2493 0034 0028     		cmp	r0, #0
 2494 0036 F2D0     		beq	.L565
 2495 0038 9DF81830 		ldrb	r3, [sp, #24]	@ zero_extendqisi2
 2496 003c 3046     		mov	r0, r6
 2497 003e 002B     		cmp	r3, #0
 2498 0040 00F0C980 		beq	.L557
 2499 0044 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2500 0048 0028     		cmp	r0, #0
 2501 004a E8D0     		beq	.L565
 2502 004c 079A     		ldr	r2, [sp, #28]
 2503 004e 7449     		ldr	r1, .L601+4
 2504 0050 3068     		ldr	r0, [r6]
 2505 0052 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 2506 0056 08A8     		add	r0, sp, #32
 2507 0058 FFF7FEFF 		bl	gmtime
 2508 005c 4269     		ldr	r2, [r0, #20]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 45


 2509 005e 502A     		cmp	r2, #80
 2510 0060 00F3C980 		bgt	.L598
 2511              	.L558:
 2512 0064 0A98     		ldr	r0, [sp, #40]	@ float
 2513 0066 FFF7FEFF 		bl	__aeabi_f2d
 2514 006a 0446     		mov	r4, r0
 2515 006c 0998     		ldr	r0, [sp, #36]	@ float
 2516 006e 0D46     		mov	r5, r1
 2517 0070 FFF7FEFF 		bl	__aeabi_f2d
 2518 0074 CDE90001 		strd	r0, [sp]
 2519 0078 1298     		ldr	r0, [sp, #72]	@ float
 2520 007a FFF7FEFF 		bl	__aeabi_f2d
 2521 007e D6F800E0 		ldr	lr, [r6]
 2522 0082 2B46     		mov	r3, r5
 2523 0084 CDE90201 		strd	r0, [sp, #8]
 2524 0088 2246     		mov	r2, r4
 2525 008a 7046     		mov	r0, lr
 2526 008c 6549     		ldr	r1, .L601+8
 2527 008e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2528 0092 119B     		ldr	r3, [sp, #68]
 2529 0094 002B     		cmp	r3, #0
 2530 0096 00F0A980 		beq	.L599
 2531 009a 0AAD     		add	r5, sp, #40
 2532 009c 0024     		movs	r4, #0
 2533 009e 4FF05B08 		mov	r8, #91
 2534 00a2 01E0     		b	.L561
 2535              	.L600:
 2536 00a4 4FF02C08 		mov	r8, #44
 2537              	.L561:
 2538 00a8 55F8040F 		ldr	r0, [r5, #4]!	@ float
 2539 00ac FFF7FEFF 		bl	__aeabi_f2d
 2540 00b0 3368     		ldr	r3, [r6]
 2541 00b2 4246     		mov	r2, r8
 2542 00b4 CDE90001 		strd	r0, [sp]
 2543 00b8 1846     		mov	r0, r3
 2544 00ba 5B49     		ldr	r1, .L601+12
 2545 00bc FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2546 00c0 119B     		ldr	r3, [sp, #68]
 2547 00c2 0134     		adds	r4, r4, #1
 2548 00c4 A342     		cmp	r3, r4
 2549 00c6 EDD8     		bhi	.L600
 2550              	.L560:
 2551 00c8 3068     		ldr	r0, [r6]
 2552 00ca 5849     		ldr	r1, .L601+16
 2553 00cc FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2554 00d0 0123     		movs	r3, #1
 2555 00d2 3068     		ldr	r0, [r6]
 2556 00d4 13A9     		add	r1, sp, #76
 2557 00d6 0093     		str	r3, [sp]
 2558 00d8 3222     		movs	r2, #50
 2559 00da 0023     		movs	r3, #0
 2560 00dc FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 2561 00e0 3068     		ldr	r0, [r6]
 2562 00e2 5349     		ldr	r1, .L601+20
 2563 00e4 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2564 00e8 9AE7     		b	.L580
 2565              	.L564:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 46


 2566 00ea 3046     		mov	r0, r6
 2567 00ec FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2568 00f0 0746     		mov	r7, r0
 2569 00f2 0028     		cmp	r0, #0
 2570 00f4 94D0     		beq	.L580
 2571              	.L595:
 2572 00f6 3068     		ldr	r0, [r6]
 2573 00f8 4E49     		ldr	r1, .L601+24
 2574 00fa FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 2575 00fe 3846     		mov	r0, r7
 2576 0100 21B0     		add	sp, sp, #132
 2577              		@ sp needed
 2578 0102 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2579              	.L597:
 2580 0106 3046     		mov	r0, r6
 2581 0108 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2582 010c 0746     		mov	r7, r0
 2583 010e 0028     		cmp	r0, #0
 2584 0110 85D0     		beq	.L565
 2585 0112 D4F8D801 		ldr	r0, [r4, #472]	@ float
 2586 0116 FFF7FEFF 		bl	__aeabi_f2d
 2587 011a CDE90001 		strd	r0, [sp]
 2588 011e D4F8D401 		ldr	r0, [r4, #468]	@ float
 2589 0122 FFF7FEFF 		bl	__aeabi_f2d
 2590 0126 CDE90201 		strd	r0, [sp, #8]
 2591 012a D4F8F801 		ldr	r0, [r4, #504]	@ float
 2592 012e FFF7FEFF 		bl	__aeabi_f2d
 2593 0132 3368     		ldr	r3, [r6]
 2594 0134 D4F8CC21 		ldr	r2, [r4, #460]
 2595 0138 CDE90401 		strd	r0, [sp, #16]
 2596 013c 1846     		mov	r0, r3
 2597 013e 3E49     		ldr	r1, .L601+28
 2598 0140 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 2599 0144 D4F8F431 		ldr	r3, [r4, #500]
 2600 0148 002B     		cmp	r3, #0
 2601 014a 4AD0     		beq	.L570
 2602 014c A046     		mov	r8, r4
 2603 014e 0025     		movs	r5, #0
 2604 0150 4FF05B09 		mov	r9, #91
 2605 0154 01E0     		b	.L571
 2606              	.L568:
 2607 0156 4FF02C09 		mov	r9, #44
 2608              	.L571:
 2609 015a D8F8DC01 		ldr	r0, [r8, #476]	@ float
 2610 015e FFF7FEFF 		bl	__aeabi_f2d
 2611 0162 3368     		ldr	r3, [r6]
 2612 0164 4A46     		mov	r2, r9
 2613 0166 CDE90001 		strd	r0, [sp]
 2614 016a 1846     		mov	r0, r3
 2615 016c 2E49     		ldr	r1, .L601+12
 2616 016e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2617 0172 D4F8F431 		ldr	r3, [r4, #500]
 2618 0176 0135     		adds	r5, r5, #1
 2619 0178 AB42     		cmp	r3, r5
 2620 017a 08F10408 		add	r8, r8, #4
 2621 017e EAD8     		bhi	.L568
 2622              	.L567:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 47


 2623 0180 2A49     		ldr	r1, .L601+16
 2624 0182 3068     		ldr	r0, [r6]
 2625 0184 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2626 0188 0123     		movs	r3, #1
 2627 018a 3068     		ldr	r0, [r6]
 2628 018c 3222     		movs	r2, #50
 2629 018e 0093     		str	r3, [sp]
 2630 0190 04F5FE71 		add	r1, r4, #508
 2631 0194 0023     		movs	r3, #0
 2632 0196 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 2633 019a 227C     		ldrb	r2, [r4, #16]	@ zero_extendqisi2
 2634 019c 3568     		ldr	r5, [r6]
 2635 019e 2AB1     		cbz	r2, .L569
 2636 01a0 2046     		mov	r0, r4
 2637 01a2 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.7
 2638 01a6 FFF7FEFF 		bl	__aeabi_f2iz
 2639 01aa 0246     		mov	r2, r0
 2640              	.L569:
 2641 01ac 2846     		mov	r0, r5
 2642 01ae 2349     		ldr	r1, .L601+32
 2643 01b0 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2644 01b4 0123     		movs	r3, #1
 2645 01b6 3068     		ldr	r0, [r6]
 2646 01b8 04F50C71 		add	r1, r4, #560
 2647 01bc 0093     		str	r3, [sp]
 2648 01be 6422     		movs	r2, #100
 2649 01c0 0023     		movs	r3, #0
 2650 01c2 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 2651 01c6 3068     		ldr	r0, [r6]
 2652 01c8 7D21     		movs	r1, #125
 2653 01ca FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 2654 01ce 3846     		mov	r0, r7
 2655 01d0 21B0     		add	sp, sp, #132
 2656              		@ sp needed
 2657 01d2 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2658              	.L557:
 2659 01d6 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2660 01da 0028     		cmp	r0, #0
 2661 01dc 3FF41FAF 		beq	.L565
 2662 01e0 89E7     		b	.L595
 2663              	.L570:
 2664 01e2 3068     		ldr	r0, [r6]
 2665 01e4 5B21     		movs	r1, #91
 2666 01e6 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 2667 01ea C9E7     		b	.L567
 2668              	.L599:
 2669 01ec 3068     		ldr	r0, [r6]
 2670 01ee 5B21     		movs	r1, #91
 2671 01f0 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 2672 01f4 68E7     		b	.L560
 2673              	.L598:
 2674 01f6 C168     		ldr	r1, [r0, #12]
 2675 01f8 0369     		ldr	r3, [r0, #16]
 2676 01fa 0091     		str	r1, [sp]
 2677 01fc 8168     		ldr	r1, [r0, #8]
 2678 01fe 3468     		ldr	r4, [r6]
 2679 0200 0191     		str	r1, [sp, #4]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 48


 2680 0202 4168     		ldr	r1, [r0, #4]
 2681 0204 02F26C72 		addw	r2, r2, #1900
 2682 0208 0291     		str	r1, [sp, #8]
 2683 020a 0168     		ldr	r1, [r0]
 2684 020c 0133     		adds	r3, r3, #1
 2685 020e 0391     		str	r1, [sp, #12]
 2686 0210 2046     		mov	r0, r4
 2687 0212 0B49     		ldr	r1, .L601+36
 2688 0214 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2689 0218 24E7     		b	.L558
 2690              	.L602:
 2691 021a 00BF     		.align	2
 2692              	.L601:
 2693 021c 28020000 		.word	.LC25
 2694 0220 2C020000 		.word	.LC26
 2695 0224 74020000 		.word	.LC28
 2696 0228 BC020000 		.word	.LC29
 2697 022c C4020000 		.word	.LC30
 2698 0230 D8020000 		.word	.LC31
 2699 0234 DC020000 		.word	.LC32
 2700 0238 08030000 		.word	.LC34
 2701 023c E8020000 		.word	.LC33
 2702 0240 44020000 		.word	.LC27
 2703              		.size	_ZN12PrintMonitor19GetFileInfoResponseEPKcRP12OutputBuffer, .-_ZN12PrintMonitor19GetFileInfo
 2704              		.section	.text._ZNK12PrintMonitor16GetPrintDurationEv,"ax",%progbits
 2705              		.align	2
 2706              		.global	_ZNK12PrintMonitor16GetPrintDurationEv
 2707              		.thumb
 2708              		.thumb_func
 2709              		.type	_ZNK12PrintMonitor16GetPrintDurationEv, %function
 2710              	_ZNK12PrintMonitor16GetPrintDurationEv:
 2711              		@ args = 0, pretend = 0, frame = 0
 2712              		@ frame_needed = 0, uses_anonymous_args = 0
 2713              		@ link register save eliminated.
 2714 0000 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 2715 0002 0BB9     		cbnz	r3, .L605
 2716 0004 0020     		movs	r0, #0
 2717 0006 7047     		bx	lr
 2718              	.L605:
 2719 0008 FFF7FEBF 		b	_ZNK12PrintMonitor16GetPrintDurationEv.part.7
 2720              		.size	_ZNK12PrintMonitor16GetPrintDurationEv, .-_ZNK12PrintMonitor16GetPrintDurationEv
 2721              		.section	.rodata._ZZNK12PrintMonitor10FindHeightEPKcjRfE21kisslicerHeightString,"a",%progbits
 2722              		.align	2
 2723              		.set	.LANCHOR1,. + 0
 2724              		.type	_ZZNK12PrintMonitor10FindHeightEPKcjRfE21kisslicerHeightString, %object
 2725              		.size	_ZZNK12PrintMonitor10FindHeightEPKcjRfE21kisslicerHeightString, 21
 2726              	_ZZNK12PrintMonitor10FindHeightEPKcjRfE21kisslicerHeightString:
 2727 0000 20454E44 		.ascii	" END_LAYER_OBJECT z=\000"
 2727      5F4C4159 
 2727      45525F4F 
 2727      424A4543 
 2727      54207A3D 
 2728 0015 000000   		.section	.rodata.str1.4,"aMS",%progbits,1
 2729              		.align	2
 2730              	.LC0:
 2731 0000 20093D3A 		.ascii	" \011=:,\000"
 2731      2C00
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 49


 2732 0006 0000     		.space	2
 2733              	.LC1:
 2734 0008 3B4500   		.ascii	";E\000"
 2735 000b 00       		.space	1
 2736              	.LC2:
 2737 000c 3B204500 		.ascii	"; E\000"
 2738              	.LC3:
 2739 0010 203A3D09 		.ascii	" :=\011\000"
 2739      00
 2740 0015 000000   		.space	3
 2741              	.LC4:
 2742 0018 696C616D 		.ascii	"ilament used\000"
 2742      656E7420 
 2742      75736564 
 2742      00
 2743 0025 000000   		.space	3
 2744              	.LC5:
 2745 0028 696C616D 		.ascii	"ilament length:\000"
 2745      656E7420 
 2745      6C656E67 
 2745      74683A00 
 2746              	.LC6:
 2747 0038 3B204573 		.ascii	"; Estimated Build Volume: \000"
 2747      74696D61 
 2747      74656420 
 2747      4275696C 
 2747      6420566F 
 2748 0053 00       		.space	1
 2749              	.LC7:
 2750 0054 3B202020 		.ascii	";    Ext \000"
 2750      20457874 
 2750      2000
 2751 005e 0000     		.space	2
 2752              	.LC8:
 2753 0060 00       		.ascii	"\000"
 2754 0061 000000   		.space	3
 2755              	.LC9:
 2756 0064 43757261 		.ascii	"Cura at \000"
 2756      20617420 
 2756      00
 2757 006d 000000   		.space	3
 2758              	.LC10:
 2759 0070 2D2D2050 		.ascii	"-- Parsing file %s --\012\000"
 2759      61727369 
 2759      6E672066 
 2759      696C6520 
 2759      2573202D 
 2760 0087 00       		.space	1
 2761              	.LC11:
 2762 0088 2E67636F 		.ascii	".gcode\000"
 2762      646500
 2763 008f 00       		.space	1
 2764              	.LC12:
 2765 0090 2E6700   		.ascii	".g\000"
 2766 0093 00       		.space	1
 2767              	.LC13:
 2768 0094 2E67636F 		.ascii	".gco\000"
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 50


 2768      00
 2769 0099 000000   		.space	3
 2770              	.LC14:
 2771 009c 2E676300 		.ascii	".gc\000"
 2772              	.LC15:
 2773 00a0 4572726F 		.ascii	"Error: Failed to read header of G-Code file \"%s\"\012"
 2773      723A2046 
 2773      61696C65 
 2773      6420746F 
 2773      20726561 
 2774 00d1 00       		.ascii	"\000"
 2775 00d2 0000     		.space	2
 2776              	.LC16:
 2777 00d4 67656E65 		.ascii	"generated by \000"
 2777      72617465 
 2777      64206279 
 2777      2000
 2778 00e2 0000     		.space	2
 2779              	.LC17:
 2780 00e4 3B204B49 		.ascii	"; KISSlicer\000"
 2780      53536C69 
 2780      63657200 
 2781              	.LC18:
 2782 00f0 3B536C69 		.ascii	";Sliced at: \000"
 2782      63656420 
 2782      61743A20 
 2782      00
 2783 00fd 000000   		.space	3
 2784              	.LC19:
 2785 0100 3B47656E 		.ascii	";Generated with \000"
 2785      65726174 
 2785      65642077 
 2785      69746820 
 2785      00
 2786 0111 000000   		.space	3
 2787              	.LC20:
 2788 0114 48656164 		.ascii	"Header complete, processed %lu bytes, read time %.3"
 2788      65722063 
 2788      6F6D706C 
 2788      6574652C 
 2788      2070726F 
 2789 0147 66732C20 		.ascii	"fs, parse time %.3fs\012\000"
 2789      70617273 
 2789      65207469 
 2789      6D652025 
 2789      2E336673 
 2790 015d 000000   		.space	3
 2791              	.LC21:
 2792 0160 4572726F 		.ascii	"Error: Failed to read footer from G-Code file \"%s\""
 2792      723A2046 
 2792      61696C65 
 2792      6420746F 
 2792      20726561 
 2793 0192 0A00     		.ascii	"\012\000"
 2794              	.LC22:
 2795 0194 466F6F74 		.ascii	"Footer complete, processed %lu bytes, read time %.3"
 2795      65722063 
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 51


 2795      6F6D706C 
 2795      6574652C 
 2795      2070726F 
 2796 01c7 66732C20 		.ascii	"fs, parse time %.3fs, seek time %.3fs\012\000"
 2796      70617273 
 2796      65207469 
 2796      6D652025 
 2796      2E336673 
 2797 01ee 0000     		.space	2
 2798              	.LC23:
 2799 01f0 4572726F 		.ascii	"Error: Could not seek from end of file!\012\000"
 2799      723A2043 
 2799      6F756C64 
 2799      206E6F74 
 2799      20736565 
 2800 0219 000000   		.space	3
 2801              	.LC24:
 2802 021c 303A2F67 		.ascii	"0:/gcodes/\000"
 2802      636F6465 
 2802      732F00
 2803 0227 00       		.space	1
 2804              	.LC25:
 2805 0228 303A00   		.ascii	"0:\000"
 2806 022b 00       		.space	1
 2807              	.LC26:
 2808 022c 7B226572 		.ascii	"{\"err\":0,\"size\":%lu,\000"
 2808      72223A30 
 2808      2C227369 
 2808      7A65223A 
 2808      256C752C 
 2809 0241 000000   		.space	3
 2810              	.LC27:
 2811 0244 226C6173 		.ascii	"\"lastModified\":\"%04u-%02u-%02uT%02u:%02u:%02u\","
 2811      744D6F64 
 2811      69666965 
 2811      64223A22 
 2811      25303475 
 2812 0273 00       		.ascii	"\000"
 2813              	.LC28:
 2814 0274 22686569 		.ascii	"\"height\":%.2f,\"firstLayerHeight\":%.2f,\"layerHe"
 2814      67687422 
 2814      3A252E32 
 2814      662C2266 
 2814      69727374 
 2815 02a2 69676874 		.ascii	"ight\":%.2f,\"filament\":\000"
 2815      223A252E 
 2815      32662C22 
 2815      66696C61 
 2815      6D656E74 
 2816 02b9 000000   		.space	3
 2817              	.LC29:
 2818 02bc 2563252E 		.ascii	"%c%.1f\000"
 2818      316600
 2819 02c3 00       		.space	1
 2820              	.LC30:
 2821 02c4 5D2C2267 		.ascii	"],\"generatedBy\":\000"
 2821      656E6572 
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 52


 2821      61746564 
 2821      4279223A 
 2821      00
 2822 02d5 000000   		.space	3
 2823              	.LC31:
 2824 02d8 7D00     		.ascii	"}\000"
 2825 02da 0000     		.space	2
 2826              	.LC32:
 2827 02dc 7B226572 		.ascii	"{\"err\":1}\000"
 2827      72223A31 
 2827      7D00
 2828 02e6 0000     		.space	2
 2829              	.LC33:
 2830 02e8 2C227072 		.ascii	",\"printDuration\":%d,\"fileName\":\000"
 2830      696E7444 
 2830      75726174 
 2830      696F6E22 
 2830      3A25642C 
 2831              	.LC34:
 2832 0308 7B226572 		.ascii	"{\"err\":0,\"size\":%lu,\"height\":%.2f,\"firstLaye"
 2832      72223A30 
 2832      2C227369 
 2832      7A65223A 
 2832      256C752C 
 2833 0334 72486569 		.ascii	"rHeight\":%.2f,\"layerHeight\":%.2f,\"filament\":\000"
 2833      67687422 
 2833      3A252E32 
 2833      662C226C 
 2833      61796572 
 2834 0361 000000   		.space	3
 2835              	.LC35:
 2836 0364 6C617965 		.ascii	"layer_height\000"
 2836      725F6865 
 2836      69676874 
 2836      00
 2837 0371 000000   		.space	3
 2838              	.LC36:
 2839 0374 4C617965 		.ascii	"Layer height\000"
 2839      72206865 
 2839      69676874 
 2839      00
 2840 0381 000000   		.space	3
 2841              	.LC37:
 2842 0384 6C617965 		.ascii	"layerHeight\000"
 2842      72486569 
 2842      67687400 
 2843              	.LC38:
 2844 0390 6C617965 		.ascii	"layer_thickness_mm\000"
 2844      725F7468 
 2844      69636B6E 
 2844      6573735F 
 2844      6D6D00
 2845 03a3 00       		.space	1
 2846              	.LC39:
 2847 03a4 6C617965 		.ascii	"layerThickness\000"
 2847      72546869 
 2847      636B6E65 
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQQZyDO.s 			page 53


 2847      737300
 2848 03b3 00       		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 2849              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 2850              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 2851              	_ZL28cpu_irq_prev_interrupt_state:
 2852 0000 00       		.space	1
 2853              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 2854              		.align	2
 2855              		.type	_ZL32cpu_irq_critical_section_counter, %object
 2856              		.size	_ZL32cpu_irq_critical_section_counter, 4
 2857              	_ZL32cpu_irq_critical_section_counter:
 2858 0000 00000000 		.space	4
 2859              		.section	.rodata._ZZNK12PrintMonitor15FindLayerHeightEPKcjRfE18layerHeightStrings,"a",%progbits
 2860              		.align	2
 2861              		.set	.LANCHOR0,. + 0
 2862              		.type	_ZZNK12PrintMonitor15FindLayerHeightEPKcjRfE18layerHeightStrings, %object
 2863              		.size	_ZZNK12PrintMonitor15FindLayerHeightEPKcjRfE18layerHeightStrings, 20
 2864              	_ZZNK12PrintMonitor15FindLayerHeightEPKcjRfE18layerHeightStrings:
 2865 0000 64030000 		.word	.LC35
 2866 0004 74030000 		.word	.LC36
 2867 0008 84030000 		.word	.LC37
 2868 000c 90030000 		.word	.LC38
 2869 0010 A4030000 		.word	.LC39
 2870              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
