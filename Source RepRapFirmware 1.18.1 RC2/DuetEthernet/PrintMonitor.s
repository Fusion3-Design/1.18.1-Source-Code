ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 1


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
  15              		.file	"PrintMonitor.cpp"
  16              		.global	__aeabi_d2f
  17              		.section	.text._ZNK12PrintMonitor15FindLayerHeightEPKcjRf.part.6,"ax",%progbits
  18              		.align	2
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZNK12PrintMonitor15FindLayerHeightEPKcjRf.part.6, %function
  22              	_ZNK12PrintMonitor15FindLayerHeightEPKcjRf.part.6:
  23              		@ args = 0, pretend = 0, frame = 8
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
  26 0004 1D4F     		ldr	r7, .L20
  27 0006 82B0     		sub	sp, sp, #8
  28 0008 8A46     		mov	r10, r1
  29 000a 00F10108 		add	r8, r0, #1
  30 000e 07F11409 		add	r9, r7, #20
  31              	.L11:
  32 0012 57F8046F 		ldr	r6, [r7, #4]!
  33 0016 4546     		mov	r5, r8
  34              	.L2:
  35 0018 2846     		mov	r0, r5
  36 001a 3146     		mov	r1, r6
  37 001c FFF7FEFF 		bl	strstr
  38 0020 0546     		mov	r5, r0
  39 0022 20B3     		cbz	r0, .L3
  40 0024 3046     		mov	r0, r6
  41 0026 FFF7FEFF 		bl	strlen
  42 002a 15F8013C 		ldrb	r3, [r5, #-1]	@ zero_extendqisi2
  43 002e 202B     		cmp	r3, #32
  44 0030 0544     		add	r5, r5, r0
  45 0032 03D0     		beq	.L6
  46 0034 3B2B     		cmp	r3, #59
  47 0036 01D0     		beq	.L6
  48 0038 092B     		cmp	r3, #9
  49 003a EDD1     		bne	.L2
  50              	.L6:
  51 003c 2C46     		mov	r4, r5
  52              	.L5:
  53 003e 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
  54 0040 0F48     		ldr	r0, .L20+4
  55 0042 2546     		mov	r5, r4
  56 0044 0134     		adds	r4, r4, #1
  57 0046 FFF7FEFF 		bl	strchr
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 2


  58 004a 0028     		cmp	r0, #0
  59 004c F7D1     		bne	.L5
  60 004e 2846     		mov	r0, r5
  61 0050 01A9     		add	r1, sp, #4
  62 0052 FFF7FEFF 		bl	strtod
  63 0056 019B     		ldr	r3, [sp, #4]
  64 0058 9D42     		cmp	r5, r3
  65 005a DDD0     		beq	.L2
  66 005c FFF7FEFF 		bl	__aeabi_d2f
  67 0060 0125     		movs	r5, #1
  68 0062 CAF80000 		str	r0, [r10]	@ float
  69 0066 2846     		mov	r0, r5
  70 0068 02B0     		add	sp, sp, #8
  71              		@ sp needed
  72 006a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  73              	.L3:
  74 006e 4F45     		cmp	r7, r9
  75 0070 CFD1     		bne	.L11
  76 0072 2846     		mov	r0, r5
  77 0074 02B0     		add	sp, sp, #8
  78              		@ sp needed
  79 0076 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  80              	.L21:
  81 007a 00BF     		.align	2
  82              	.L20:
  83 007c FCFFFFFF 		.word	.LANCHOR0-4
  84 0080 00000000 		.word	.LC0
  85              		.size	_ZNK12PrintMonitor15FindLayerHeightEPKcjRf.part.6, .-_ZNK12PrintMonitor15FindLayerHeightEPKc
  86              		.section	.text._ZNK12PrintMonitor16GetPrintDurationEv.part.7,"ax",%progbits
  87              		.align	2
  88              		.thumb
  89              		.thumb_func
  90              		.type	_ZNK12PrintMonitor16GetPrintDurationEv.part.7, %function
  91              	_ZNK12PrintMonitor16GetPrintDurationEv.part.7:
  92              		@ args = 0, pretend = 0, frame = 0
  93              		@ frame_needed = 0, uses_anonymous_args = 0
  94 0000 10B5     		push	{r4, lr}
  95 0002 0446     		mov	r4, r0
  96 0004 2DED028B 		fstmfdd	sp!, {d8}
  97 0008 0068     		ldr	r0, [r0]
  98 000a FFF7FEFF 		bl	_ZN8Platform4TimeEv
  99 000e 94ED058A 		flds	s16, [r4, #20]
 100 0012 D4ED067A 		flds	s15, [r4, #24]
 101 0016 94ED077A 		flds	s14, [r4, #28]
 102 001a 06EE900A 		fmsr	s13, r0
 103 001e F5EE407A 		fcmpzs	s15
 104 0022 36EEC88A 		fsubs	s16, s13, s16
 105 0026 F1EE10FA 		fmstat
 106 002a 38EE478A 		fsubs	s16, s16, s14
 107 002e 04D1     		bne	.L24
 108 0030 B0EE480A 		fcpys	s0, s16
 109 0034 BDEC028B 		fldmfdd	sp!, {d8}
 110 0038 10BD     		pop	{r4, pc}
 111              	.L24:
 112 003a 2068     		ldr	r0, [r4]
 113 003c FFF7FEFF 		bl	_ZN8Platform4TimeEv
 114 0040 D4ED067A 		flds	s15, [r4, #24]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 3


 115 0044 07EE100A 		fmsr	s14, r0
 116 0048 77EE677A 		fsubs	s15, s14, s15
 117 004c 38EE678A 		fsubs	s16, s16, s15
 118 0050 B0EE480A 		fcpys	s0, s16
 119 0054 BDEC028B 		fldmfdd	sp!, {d8}
 120 0058 10BD     		pop	{r4, pc}
 121              		.size	_ZNK12PrintMonitor16GetPrintDurationEv.part.7, .-_ZNK12PrintMonitor16GetPrintDurationEv.part
 122 005a 00BF     		.section	.text._ZN12PrintMonitorC2EP8PlatformP6GCodes,"ax",%progbits
 123              		.align	2
 124              		.global	_ZN12PrintMonitorC2EP8PlatformP6GCodes
 125              		.thumb
 126              		.thumb_func
 127              		.type	_ZN12PrintMonitorC2EP8PlatformP6GCodes, %function
 128              	_ZN12PrintMonitorC2EP8PlatformP6GCodes:
 129              		@ args = 0, pretend = 0, frame = 0
 130              		@ frame_needed = 0, uses_anonymous_args = 0
 131              		@ link register save eliminated.
 132 0000 10B4     		push	{r4}
 133 0002 0024     		movs	r4, #0
 134 0004 0160     		str	r1, [r0]
 135 0006 0021     		movs	r1, #0
 136 0008 4461     		str	r4, [r0, #20]	@ float
 137 000a 8461     		str	r4, [r0, #24]	@ float
 138 000c C461     		str	r4, [r0, #28]	@ float
 139 000e 8462     		str	r4, [r0, #40]	@ float
 140 0010 C462     		str	r4, [r0, #44]	@ float
 141 0012 0463     		str	r4, [r0, #48]	@ float
 142 0014 4463     		str	r4, [r0, #52]	@ float
 143 0016 8463     		str	r4, [r0, #56]	@ float
 144 0018 C463     		str	r4, [r0, #60]	@ float
 145 001a 0464     		str	r4, [r0, #64]	@ float
 146 001c C0F88440 		str	r4, [r0, #132]	@ float
 147 0020 4260     		str	r2, [r0, #4]
 148 0022 0174     		strb	r1, [r0, #16]
 149 0024 80F82010 		strb	r1, [r0, #32]
 150 0028 4162     		str	r1, [r0, #36]
 151 002a 4164     		str	r1, [r0, #68]
 152 002c 80F88810 		strb	r1, [r0, #136]
 153 0030 C0F8F010 		str	r1, [r0, #240]
 154 0034 C0F8C411 		str	r1, [r0, #452]
 155 0038 80F8C811 		strb	r1, [r0, #456]
 156 003c C0F89C12 		str	r1, [r0, #668]
 157 0040 C0F8A012 		str	r1, [r0, #672]
 158 0044 C0F8A412 		str	r1, [r0, #676]
 159 0048 80F83812 		strb	r1, [r0, #568]
 160 004c 5DF8044B 		ldr	r4, [sp], #4
 161 0050 7047     		bx	lr
 162              		.size	_ZN12PrintMonitorC2EP8PlatformP6GCodes, .-_ZN12PrintMonitorC2EP8PlatformP6GCodes
 163              		.global	_ZN12PrintMonitorC1EP8PlatformP6GCodes
 164              		.thumb_set _ZN12PrintMonitorC1EP8PlatformP6GCodes,_ZN12PrintMonitorC2EP8PlatformP6GCodes
 165 0052 00BF     		.section	.text._ZN12PrintMonitor4InitEv,"ax",%progbits
 166              		.align	2
 167              		.global	_ZN12PrintMonitor4InitEv
 168              		.thumb
 169              		.thumb_func
 170              		.type	_ZN12PrintMonitor4InitEv, %function
 171              	_ZN12PrintMonitor4InitEv:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 4


 172              		@ args = 0, pretend = 0, frame = 0
 173              		@ frame_needed = 0, uses_anonymous_args = 0
 174 0000 10B5     		push	{r4, lr}
 175 0002 0446     		mov	r4, r0
 176 0004 0068     		ldr	r0, [r0]
 177 0006 FFF7FEFF 		bl	_ZN8Platform4TimeEv
 178 000a A060     		str	r0, [r4, #8]	@ float
 179 000c FFF7FEFF 		bl	millis
 180 0010 E060     		str	r0, [r4, #12]
 181 0012 10BD     		pop	{r4, pc}
 182              		.size	_ZN12PrintMonitor4InitEv, .-_ZN12PrintMonitor4InitEv
 183              		.section	.text._ZNK12PrintMonitor17GetWarmUpDurationEv,"ax",%progbits
 184              		.align	2
 185              		.global	_ZNK12PrintMonitor17GetWarmUpDurationEv
 186              		.thumb
 187              		.thumb_func
 188              		.type	_ZNK12PrintMonitor17GetWarmUpDurationEv, %function
 189              	_ZNK12PrintMonitor17GetWarmUpDurationEv:
 190              		@ args = 0, pretend = 0, frame = 0
 191              		@ frame_needed = 0, uses_anonymous_args = 0
 192 0000 426A     		ldr	r2, [r0, #36]
 193 0002 08B5     		push	{r3, lr}
 194 0004 32B9     		cbnz	r2, .L32
 195 0006 90F82020 		ldrb	r2, [r0, #32]	@ zero_extendqisi2
 196 000a 0AB1     		cbz	r2, .L31
 197 000c 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 198 000e 1BB9     		cbnz	r3, .L33
 199              	.L31:
 200 0010 0020     		movs	r0, #0
 201 0012 08BD     		pop	{r3, pc}
 202              	.L32:
 203 0014 806A     		ldr	r0, [r0, #40]	@ float
 204 0016 08BD     		pop	{r3, pc}
 205              	.L33:
 206 0018 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.7
 207 001c 10EE100A 		fmrs	r0, s0
 208 0020 08BD     		pop	{r3, pc}
 209              		.size	_ZNK12PrintMonitor17GetWarmUpDurationEv, .-_ZNK12PrintMonitor17GetWarmUpDurationEv
 210 0022 00BF     		.section	.text._ZN12PrintMonitor12StartedPrintEv,"ax",%progbits
 211              		.align	2
 212              		.global	_ZN12PrintMonitor12StartedPrintEv
 213              		.thumb
 214              		.thumb_func
 215              		.type	_ZN12PrintMonitor12StartedPrintEv, %function
 216              	_ZN12PrintMonitor12StartedPrintEv:
 217              		@ args = 0, pretend = 0, frame = 0
 218              		@ frame_needed = 0, uses_anonymous_args = 0
 219 0000 10B5     		push	{r4, lr}
 220 0002 0123     		movs	r3, #1
 221 0004 0446     		mov	r4, r0
 222 0006 0374     		strb	r3, [r0, #16]
 223 0008 0068     		ldr	r0, [r0]
 224 000a FFF7FEFF 		bl	_ZN8Platform4TimeEv
 225 000e 6061     		str	r0, [r4, #20]	@ float
 226 0010 10BD     		pop	{r4, pc}
 227              		.size	_ZN12PrintMonitor12StartedPrintEv, .-_ZN12PrintMonitor12StartedPrintEv
 228 0012 00BF     		.section	.text._ZN12PrintMonitor14WarmUpCompleteEv,"ax",%progbits
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 5


 229              		.align	2
 230              		.global	_ZN12PrintMonitor14WarmUpCompleteEv
 231              		.thumb
 232              		.thumb_func
 233              		.type	_ZN12PrintMonitor14WarmUpCompleteEv, %function
 234              	_ZN12PrintMonitor14WarmUpCompleteEv:
 235              		@ args = 0, pretend = 0, frame = 0
 236              		@ frame_needed = 0, uses_anonymous_args = 0
 237 0000 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 238 0002 0022     		movs	r2, #0
 239 0004 10B5     		push	{r4, lr}
 240 0006 80F82020 		strb	r2, [r0, #32]
 241 000a 0446     		mov	r4, r0
 242 000c 23B9     		cbnz	r3, .L38
 243 000e 9FED050A 		flds	s0, .L39
 244 0012 84ED0A0A 		fsts	s0, [r4, #40]
 245 0016 10BD     		pop	{r4, pc}
 246              	.L38:
 247 0018 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.7
 248 001c 84ED0A0A 		fsts	s0, [r4, #40]
 249 0020 10BD     		pop	{r4, pc}
 250              	.L40:
 251 0022 00BF     		.align	2
 252              	.L39:
 253 0024 00000000 		.word	0
 254              		.size	_ZN12PrintMonitor14WarmUpCompleteEv, .-_ZN12PrintMonitor14WarmUpCompleteEv
 255              		.global	__aeabi_f2d
 256              		.global	__aeabi_dadd
 257              		.global	__aeabi_d2iz
 258              		.global	__aeabi_dsub
 259              		.section	.text._ZN12PrintMonitor18FirstLayerCompleteEv,"ax",%progbits
 260              		.align	2
 261              		.global	_ZN12PrintMonitor18FirstLayerCompleteEv
 262              		.thumb
 263              		.thumb_func
 264              		.type	_ZN12PrintMonitor18FirstLayerCompleteEv, %function
 265              	_ZN12PrintMonitor18FirstLayerCompleteEv:
 266              		@ args = 0, pretend = 0, frame = 0
 267              		@ frame_needed = 0, uses_anonymous_args = 0
 268 0000 4368     		ldr	r3, [r0, #4]
 269 0002 027C     		ldrb	r2, [r0, #16]	@ zero_extendqisi2
 270 0004 D3F80812 		ldr	r1, [r3, #520]	@ float
 271 0008 10B5     		push	{r4, lr}
 272 000a 0446     		mov	r4, r0
 273 000c 0163     		str	r1, [r0, #48]	@ float
 274 000e 002A     		cmp	r2, #0
 275 0010 3FD1     		bne	.L54
 276 0012 9FED270A 		flds	s0, .L55
 277 0016 1846     		mov	r0, r3
 278              	.L42:
 279 0018 D4ED0A7A 		flds	s15, [r4, #40]
 280 001c 30EE670A 		fsubs	s0, s0, s15
 281 0020 84ED0B0A 		fsts	s0, [r4, #44]
 282 0024 FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 283 0028 D4ED777A 		flds	s15, [r4, #476]
 284 002c 6063     		str	r0, [r4, #52]	@ float
 285 002e F5EEC07A 		fcmpezs	s15
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 6


 286 0032 F1EE10FA 		fmstat
 287 0036 2BDD     		ble	.L41
 288 0038 94ED807A 		flds	s14, [r4, #512]
 289 003c B5EEC07A 		fcmpezs	s14
 290 0040 F1EE10FA 		fmstat
 291 0044 24DD     		ble	.L41
 292 0046 D4ED766A 		flds	s13, [r4, #472]
 293 004a 77EEE67A 		fsubs	s15, s15, s13
 294 004e 87EE877A 		fdivs	s14, s15, s14
 295 0052 B5EEC07A 		fcmpezs	s14
 296 0056 F1EE10FA 		fmstat
 297 005a 17EE100A 		fmrs	r0, s14
 298 005e 1CDB     		blt	.L53
 299 0060 FFF7FEFF 		bl	__aeabi_f2d
 300 0064 0022     		movs	r2, #0
 301 0066 134B     		ldr	r3, .L55+4
 302 0068 FFF7FEFF 		bl	__aeabi_dadd
 303 006c FFF7FEFF 		bl	__aeabi_d2iz
 304 0070 0130     		adds	r0, r0, #1
 305              	.L48:
 306 0072 0138     		subs	r0, r0, #1
 307 0074 94ED0B6A 		flds	s12, [r4, #44]
 308 0078 07EE100A 		fmsr	s14, r0	@ int
 309 007c F5EE006A 		fconsts	s13, #80
 310 0080 B8EE477A 		fuitos	s14, s14
 311 0084 66EE267A 		fmuls	s15, s12, s13
 312 0088 67EE877A 		fmuls	s15, s15, s14
 313 008c C4ED217A 		fsts	s15, [r4, #132]
 314              	.L41:
 315 0090 10BD     		pop	{r4, pc}
 316              	.L54:
 317 0092 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.7
 318 0096 6068     		ldr	r0, [r4, #4]
 319 0098 BEE7     		b	.L42
 320              	.L53:
 321 009a FFF7FEFF 		bl	__aeabi_f2d
 322 009e 0022     		movs	r2, #0
 323 00a0 044B     		ldr	r3, .L55+4
 324 00a2 FFF7FEFF 		bl	__aeabi_dsub
 325 00a6 FFF7FEFF 		bl	__aeabi_d2iz
 326 00aa 0130     		adds	r0, r0, #1
 327 00ac E1E7     		b	.L48
 328              	.L56:
 329 00ae 00BF     		.align	2
 330              	.L55:
 331 00b0 00000000 		.word	0
 332 00b4 0000E03F 		.word	1071644672
 333              		.size	_ZN12PrintMonitor18FirstLayerCompleteEv, .-_ZN12PrintMonitor18FirstLayerCompleteEv
 334              		.section	.text._ZN12PrintMonitor13LayerCompleteEv,"ax",%progbits
 335              		.align	2
 336              		.global	_ZN12PrintMonitor13LayerCompleteEv
 337              		.thumb
 338              		.thumb_func
 339              		.type	_ZN12PrintMonitor13LayerCompleteEv, %function
 340              	_ZN12PrintMonitor13LayerCompleteEv:
 341              		@ args = 0, pretend = 0, frame = 0
 342              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 7


 343 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 344 0002 456C     		ldr	r5, [r0, #68]
 345 0004 4768     		ldr	r7, [r0, #4]
 346 0006 042D     		cmp	r5, #4
 347 0008 2DED028B 		fstmfdd	sp!, {d8}
 348 000c 0446     		mov	r4, r0
 349 000e 97ED828A 		flds	s16, [r7, #520]
 350 0012 1ED8     		bhi	.L58
 351 0014 002D     		cmp	r5, #0
 352 0016 40F08A80 		bne	.L59
 353 001a D0ED0C7A 		flds	s15, [r0, #48]
 354 001e 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 355 0020 78EE677A 		fsubs	s15, s16, s15
 356 0024 C0ED177A 		fsts	s15, [r0, #92]
 357 0028 002B     		cmp	r3, #0
 358 002a 40F0B080 		bne	.L93
 359 002e 9FED620A 		flds	s0, .L97
 360 0032 3846     		mov	r0, r7
 361              	.L60:
 362 0034 D4ED0A7A 		flds	s15, [r4, #40]
 363 0038 30EE670A 		fsubs	s0, s0, s15
 364 003c 84ED120A 		fsts	s0, [r4, #72]
 365              	.L61:
 366 0040 FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 367 0044 636C     		ldr	r3, [r4, #68]
 368 0046 04EB8505 		add	r5, r4, r5, lsl #2
 369 004a 0133     		adds	r3, r3, #1
 370 004c 2867     		str	r0, [r5, #112]	@ float
 371 004e 6364     		str	r3, [r4, #68]
 372 0050 22E0     		b	.L63
 373              	.L58:
 374 0052 0346     		mov	r3, r0
 375 0054 0422     		movs	r2, #4
 376              	.L65:
 377 0056 DE6C     		ldr	r6, [r3, #76]	@ float
 378 0058 1D6E     		ldr	r5, [r3, #96]	@ float
 379 005a 596F     		ldr	r1, [r3, #116]	@ float
 380 005c 9E64     		str	r6, [r3, #72]	@ float
 381 005e 013A     		subs	r2, r2, #1
 382 0060 DD65     		str	r5, [r3, #92]	@ float
 383 0062 1967     		str	r1, [r3, #112]	@ float
 384 0064 03F10403 		add	r3, r3, #4
 385 0068 F5D1     		bne	.L65
 386 006a 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 387 006c 002B     		cmp	r3, #0
 388 006e 40F08980 		bne	.L94
 389 0072 9FED510A 		flds	s0, .L97
 390 0076 3846     		mov	r0, r7
 391              	.L66:
 392 0078 94ED0E7A 		flds	s14, [r4, #56]
 393 007c D4ED0F7A 		flds	s15, [r4, #60]
 394 0080 30EE470A 		fsubs	s0, s0, s14
 395 0084 78EE677A 		fsubs	s15, s16, s15
 396 0088 84ED160A 		fsts	s0, [r4, #88]
 397 008c C4ED1B7A 		fsts	s15, [r4, #108]
 398 0090 FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 399 0094 C4F88000 		str	r0, [r4, #128]	@ float
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 8


 400              	.L63:
 401 0098 94ED777A 		flds	s14, [r4, #476]
 402 009c 84ED0F8A 		fsts	s16, [r4, #60]
 403 00a0 B5EEC07A 		fcmpezs	s14
 404 00a4 F1EE10FA 		fmstat
 405 00a8 3EDD     		ble	.L57
 406 00aa D4ED806A 		flds	s13, [r4, #512]
 407 00ae F5EEC06A 		fcmpezs	s13
 408 00b2 F1EE10FA 		fmstat
 409 00b6 37DD     		ble	.L57
 410 00b8 616C     		ldr	r1, [r4, #68]
 411 00ba 0429     		cmp	r1, #4
 412 00bc 4BD8     		bhi	.L83
 413 00be 94ED0B8A 		flds	s16, [r4, #44]
 414 00c2 F5EE007A 		fconsts	s15, #80
 415 00c6 28EE278A 		fmuls	s16, s16, s15
 416 00ca 0029     		cmp	r1, #0
 417 00cc 46D0     		beq	.L71
 418              	.L70:
 419 00ce 04EB8102 		add	r2, r4, r1, lsl #2
 420 00d2 4832     		adds	r2, r2, #72
 421 00d4 04F14803 		add	r3, r4, #72
 422              	.L73:
 423 00d8 F3EC017A 		fldmias	r3!, {s15}
 424 00dc 9342     		cmp	r3, r2
 425 00de 38EE278A 		fadds	s16, s16, s15
 426 00e2 F9D1     		bne	.L73
 427 00e4 0429     		cmp	r1, #4
 428 00e6 39D9     		bls	.L71
 429 00e8 07EE901A 		fmsr	s15, r1	@ int
 430 00ec F8EE678A 		fuitos	s17, s15
 431              	.L75:
 432 00f0 D4ED767A 		flds	s15, [r4, #472]
 433 00f4 37EE677A 		fsubs	s14, s14, s15
 434 00f8 C7EE266A 		fdivs	s13, s14, s13
 435 00fc F5EEC06A 		fcmpezs	s13
 436 0100 F1EE10FA 		fmstat
 437 0104 16EE900A 		fmrs	r0, s13
 438 0108 4BDB     		blt	.L92
 439 010a FFF7FEFF 		bl	__aeabi_f2d
 440 010e 0022     		movs	r2, #0
 441 0110 2A4B     		ldr	r3, .L97+4
 442 0112 FFF7FEFF 		bl	__aeabi_dadd
 443 0116 FFF7FEFF 		bl	__aeabi_d2iz
 444 011a 0130     		adds	r0, r0, #1
 445              	.L78:
 446 011c 636A     		ldr	r3, [r4, #36]
 447 011e 9842     		cmp	r0, r3
 448 0120 22D8     		bhi	.L95
 449 0122 274B     		ldr	r3, .L97+8
 450 0124 C4F88430 		str	r3, [r4, #132]	@ float
 451              	.L57:
 452 0128 BDEC028B 		fldmfdd	sp!, {d8}
 453 012c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 454              	.L59:
 455 012e D0ED0F7A 		flds	s15, [r0, #60]
 456 0132 78EE677A 		fsubs	s15, s16, s15
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 9


 457 0136 00EB8506 		add	r6, r0, r5, lsl #2
 458 013a C6ED177A 		fsts	s15, [r6, #92]
 459 013e 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 460 0140 53BB     		cbnz	r3, .L96
 461 0142 9FED1D0A 		flds	s0, .L97
 462 0146 3846     		mov	r0, r7
 463              	.L62:
 464 0148 D4ED0E7A 		flds	s15, [r4, #56]
 465 014c 30EE670A 		fsubs	s0, s0, s15
 466 0150 86ED120A 		fsts	s0, [r6, #72]
 467 0154 74E7     		b	.L61
 468              	.L83:
 469 0156 9FED188A 		flds	s16, .L97
 470 015a B8E7     		b	.L70
 471              	.L71:
 472 015c 0131     		adds	r1, r1, #1
 473 015e 07EE901A 		fmsr	s15, r1	@ int
 474 0162 F8EEE78A 		fsitos	s17, s15
 475 0166 C3E7     		b	.L75
 476              	.L95:
 477 0168 C8EE288A 		fdivs	s17, s16, s17
 478 016c C31A     		subs	r3, r0, r3
 479 016e 08EE103A 		fmsr	s16, r3	@ int
 480 0172 B8EE488A 		fuitos	s16, s16
 481 0176 28EE288A 		fmuls	s16, s16, s17
 482 017a 84ED218A 		fsts	s16, [r4, #132]
 483 017e BDEC028B 		fldmfdd	sp!, {d8}
 484 0182 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 485              	.L94:
 486 0184 2046     		mov	r0, r4
 487 0186 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.7
 488 018a 6068     		ldr	r0, [r4, #4]
 489 018c 74E7     		b	.L66
 490              	.L93:
 491 018e FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.7
 492 0192 656C     		ldr	r5, [r4, #68]
 493 0194 6068     		ldr	r0, [r4, #4]
 494 0196 4DE7     		b	.L60
 495              	.L96:
 496 0198 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.7
 497 019c 656C     		ldr	r5, [r4, #68]
 498 019e 6068     		ldr	r0, [r4, #4]
 499 01a0 D2E7     		b	.L62
 500              	.L92:
 501 01a2 FFF7FEFF 		bl	__aeabi_f2d
 502 01a6 0022     		movs	r2, #0
 503 01a8 044B     		ldr	r3, .L97+4
 504 01aa FFF7FEFF 		bl	__aeabi_dsub
 505 01ae FFF7FEFF 		bl	__aeabi_d2iz
 506 01b2 0130     		adds	r0, r0, #1
 507 01b4 B2E7     		b	.L78
 508              	.L98:
 509 01b6 00BF     		.align	2
 510              	.L97:
 511 01b8 00000000 		.word	0
 512 01bc 0000E03F 		.word	1071644672
 513 01c0 CDCCCC3D 		.word	1036831949
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 10


 514              		.size	_ZN12PrintMonitor13LayerCompleteEv, .-_ZN12PrintMonitor13LayerCompleteEv
 515              		.section	.text._ZN12PrintMonitor12StoppedPrintEv,"ax",%progbits
 516              		.align	2
 517              		.global	_ZN12PrintMonitor12StoppedPrintEv
 518              		.thumb
 519              		.thumb_func
 520              		.type	_ZN12PrintMonitor12StoppedPrintEv, %function
 521              	_ZN12PrintMonitor12StoppedPrintEv:
 522              		@ args = 0, pretend = 0, frame = 0
 523              		@ frame_needed = 0, uses_anonymous_args = 0
 524              		@ link register save eliminated.
 525 0000 0023     		movs	r3, #0
 526 0002 0022     		movs	r2, #0
 527 0004 80F8C821 		strb	r2, [r0, #456]
 528 0008 80F82020 		strb	r2, [r0, #32]
 529 000c 0274     		strb	r2, [r0, #16]
 530 000e 4264     		str	r2, [r0, #68]
 531 0010 4262     		str	r2, [r0, #36]
 532 0012 C361     		str	r3, [r0, #28]	@ float
 533 0014 8361     		str	r3, [r0, #24]	@ float
 534 0016 4363     		str	r3, [r0, #52]	@ float
 535 0018 0363     		str	r3, [r0, #48]	@ float
 536 001a C362     		str	r3, [r0, #44]	@ float
 537 001c 8362     		str	r3, [r0, #40]	@ float
 538 001e 4361     		str	r3, [r0, #20]	@ float
 539 0020 C0F88430 		str	r3, [r0, #132]	@ float
 540 0024 0364     		str	r3, [r0, #64]	@ float
 541 0026 C363     		str	r3, [r0, #60]	@ float
 542 0028 8363     		str	r3, [r0, #56]	@ float
 543 002a 7047     		bx	lr
 544              		.size	_ZN12PrintMonitor12StoppedPrintEv, .-_ZN12PrintMonitor12StoppedPrintEv
 545              		.section	.text._ZN12PrintMonitor11StopParsingEPKc,"ax",%progbits
 546              		.align	2
 547              		.global	_ZN12PrintMonitor11StopParsingEPKc
 548              		.thumb
 549              		.thumb_func
 550              		.type	_ZN12PrintMonitor11StopParsingEPKc, %function
 551              	_ZN12PrintMonitor11StopParsingEPKc:
 552              		@ args = 0, pretend = 0, frame = 0
 553              		@ frame_needed = 0, uses_anonymous_args = 0
 554 0000 90F88830 		ldrb	r3, [r0, #136]	@ zero_extendqisi2
 555 0004 10B5     		push	{r4, lr}
 556 0006 0446     		mov	r4, r0
 557 0008 03B9     		cbnz	r3, .L112
 558              	.L100:
 559 000a 10BD     		pop	{r4, pc}
 560              	.L112:
 561 000c 8930     		adds	r0, r0, #137
 562 000e FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 563 0012 78B1     		cbz	r0, .L113
 564 0014 94F83832 		ldrb	r3, [r4, #568]	@ zero_extendqisi2
 565 0018 1BB1     		cbz	r3, .L105
 566 001a 94F8C831 		ldrb	r3, [r4, #456]	@ zero_extendqisi2
 567 001e 002B     		cmp	r3, #0
 568 0020 F3D0     		beq	.L100
 569              	.L105:
 570 0022 0023     		movs	r3, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 11


 571 0024 84F88830 		strb	r3, [r4, #136]
 572 0028 D4F8F000 		ldr	r0, [r4, #240]
 573 002c BDE81040 		pop	{r4, lr}
 574 0030 FFF7FEBF 		b	_ZN9FileStore5CloseEv
 575              	.L113:
 576 0034 10BD     		pop	{r4, pc}
 577              		.size	_ZN12PrintMonitor11StopParsingEPKc, .-_ZN12PrintMonitor11StopParsingEPKc
 578              		.global	__aeabi_ddiv
 579              		.global	__aeabi_dmul
 580 0036 00BF     		.section	.text._ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod,"ax",%progbits
 581              		.align	2
 582              		.global	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 583              		.thumb
 584              		.thumb_func
 585              		.type	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod, %function
 586              	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod:
 587              		@ args = 0, pretend = 0, frame = 0
 588              		@ frame_needed = 0, uses_anonymous_args = 0
 589 0000 38B5     		push	{r3, r4, r5, lr}
 590 0002 90F8C831 		ldrb	r3, [r0, #456]	@ zero_extendqisi2
 591 0006 2DED048B 		fstmfdd	sp!, {d8, d9}
 592 000a 0446     		mov	r4, r0
 593 000c 0D46     		mov	r5, r1
 594 000e 002B     		cmp	r3, #0
 595 0010 37D0     		beq	.L166
 596 0012 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 597 0014 002B     		cmp	r3, #0
 598 0016 38D1     		bne	.L168
 599 0018 9FEDA40A 		flds	s0, .L173
 600 001c D4ED0A7A 		flds	s15, [r4, #40]
 601 0020 012D     		cmp	r5, #1
 602 0022 30EE678A 		fsubs	s16, s0, s15
 603 0026 38D0     		beq	.L118
 604              	.L171:
 605 0028 1CD3     		bcc	.L119
 606 002a 022D     		cmp	r5, #2
 607 002c 29D1     		bne	.L166
 608 002e 94ED218A 		flds	s16, [r4, #132]
 609 0032 B5EEC08A 		fcmpezs	s16
 610 0036 F1EE10FA 		fmstat
 611 003a 22DD     		ble	.L166
 612 003c 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 613 003e 002B     		cmp	r3, #0
 614 0040 40F0C680 		bne	.L169
 615 0044 9FED990A 		flds	s0, .L173
 616              	.L143:
 617 0048 D4ED0E7A 		flds	s15, [r4, #56]
 618 004c 30EE670A 		fsubs	s0, s0, s15
 619 0050 38EE408A 		fsubs	s16, s16, s0
 620 0054 B5EEC08A 		fcmpezs	s16
 621 0058 F1EE10FA 		fmstat
 622 005c 70DD     		ble	.L134
 623 005e 18EE100A 		fmrs	r0, s16
 624 0062 0FE0     		b	.L116
 625              	.L119:
 626 0064 636A     		ldr	r3, [r4, #36]
 627 0066 63B1     		cbz	r3, .L166
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 12


 628 0068 D4F8FC31 		ldr	r3, [r4, #508]
 629 006c 4BB1     		cbz	r3, .L166
 630 006e 904A     		ldr	r2, .L173+4
 631 0070 6368     		ldr	r3, [r4, #4]
 632 0072 1269     		ldr	r2, [r2, #16]
 633 0074 D3ED827A 		flds	s15, [r3, #520]
 634 0078 D2F8B031 		ldr	r3, [r2, #432]
 635 007c D3F10A03 		rsbs	r3, r3, #10
 636 0080 60D1     		bne	.L170
 637              	.L166:
 638 0082 0020     		movs	r0, #0
 639              	.L116:
 640 0084 BDEC048B 		fldmfdd	sp!, {d8-d9}
 641 0088 38BD     		pop	{r3, r4, r5, pc}
 642              	.L168:
 643 008a FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.7
 644 008e D4ED0A7A 		flds	s15, [r4, #40]
 645 0092 012D     		cmp	r5, #1
 646 0094 30EE678A 		fsubs	s16, s0, s15
 647 0098 C6D1     		bne	.L171
 648              	.L118:
 649 009a 6068     		ldr	r0, [r4, #4]
 650 009c FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 651 00a0 DFED847A 		flds	s15, .L173+8
 652 00a4 08EE900A 		fmsr	s17, r0
 653 00a8 F4EEE78A 		fcmpes	s17, s15
 654 00ac F1EE10FA 		fmstat
 655 00b0 E7D4     		bmi	.L166
 656 00b2 94F82030 		ldrb	r3, [r4, #32]	@ zero_extendqisi2
 657 00b6 002B     		cmp	r3, #0
 658 00b8 E3D1     		bne	.L166
 659 00ba F7EE007A 		fconsts	s15, #112
 660 00be F4EE678A 		fcmps	s17, s15
 661 00c2 F1EE10FA 		fmstat
 662 00c6 3BD0     		beq	.L134
 663 00c8 636C     		ldr	r3, [r4, #68]
 664 00ca 002B     		cmp	r3, #0
 665 00cc 40F0BA80 		bne	.L123
 666 00d0 D4ED0B7A 		flds	s15, [r4, #44]
 667 00d4 94ED0D9A 		flds	s18, [r4, #52]
 668              	.L124:
 669 00d8 9FED767A 		flds	s14, .L173+8
 670 00dc B4EEC79A 		fcmpes	s18, s14
 671 00e0 F1EE10FA 		fmstat
 672 00e4 78D5     		bpl	.L167
 673 00e6 18EE100A 		fmrs	r0, s16
 674 00ea FFF7FEFF 		bl	__aeabi_f2d
 675 00ee 0446     		mov	r4, r0
 676 00f0 18EE900A 		fmrs	r0, s17
 677 00f4 0D46     		mov	r5, r1
 678 00f6 FFF7FEFF 		bl	__aeabi_f2d
 679 00fa 0246     		mov	r2, r0
 680 00fc 0B46     		mov	r3, r1
 681 00fe 0020     		movs	r0, #0
 682 0100 6D49     		ldr	r1, .L173+12
 683 0102 FFF7FEFF 		bl	__aeabi_ddiv
 684 0106 0246     		mov	r2, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 13


 685 0108 0B46     		mov	r3, r1
 686 010a 2046     		mov	r0, r4
 687 010c 2946     		mov	r1, r5
 688 010e FFF7FEFF 		bl	__aeabi_dmul
 689 0112 2246     		mov	r2, r4
 690 0114 2B46     		mov	r3, r5
 691 0116 FFF7FEFF 		bl	__aeabi_dsub
 692 011a FFF7FEFF 		bl	__aeabi_d2f
 693 011e 05EE900A 		fmsr	s11, r0
 694 0122 F4EE655A 		fcmps	s11, s11
 695 0126 F1EE10FA 		fmstat
 696 012a ABD6     		bvs	.L116
 697 012c DFED637A 		flds	s15, .L173+16
 698 0130 F4EEE75A 		fcmpes	s11, s15
 699 0134 F1EE10FA 		fmstat
 700 0138 D8BF     		it	le
 701 013a 17EE900A 		fmrsle	r0, s15
 702 013e A1E7     		b	.L116
 703              	.L134:
 704 0140 5F48     		ldr	r0, .L173+20
 705 0142 9FE7     		b	.L116
 706              	.L170:
 707 0144 04EB8303 		add	r3, r4, r3, lsl #2
 708 0148 9FED587A 		flds	s14, .L173
 709 014c 03F5F072 		add	r2, r3, #480
 710 0150 04F5F073 		add	r3, r4, #480
 711              	.L131:
 712 0154 F3EC016A 		fldmias	r3!, {s13}
 713 0158 9342     		cmp	r3, r2
 714 015a 37EE267A 		fadds	s14, s14, s13
 715 015e F9D1     		bne	.L131
 716 0160 B5EEC07A 		fcmpezs	s14
 717 0164 F1EE10FA 		fmstat
 718 0168 8BDD     		ble	.L166
 719 016a DFED566A 		flds	s13, .L173+24
 720 016e 67EE266A 		fmuls	s13, s14, s13
 721 0172 F4EEE76A 		fcmpes	s13, s15
 722 0176 F1EE10FA 		fmstat
 723 017a 82D5     		bpl	.L166
 724 017c F4EEC77A 		fcmpes	s15, s14
 725 0180 F1EE10FA 		fmstat
 726 0184 DCDA     		bge	.L134
 727 0186 636C     		ldr	r3, [r4, #68]
 728 0188 002B     		cmp	r3, #0
 729 018a 71D0     		beq	.L135
 730 018c 04EB8302 		add	r2, r4, r3, lsl #2
 731 0190 DFED466A 		flds	s13, .L173
 732 0194 5C32     		adds	r2, r2, #92
 733 0196 5C34     		adds	r4, r4, #92
 734              	.L137:
 735 0198 F4EC015A 		fldmias	r4!, {s11}
 736 019c 14ED066A 		flds	s12, [r4, #-24]
 737 01a0 85EE866A 		fdivs	s12, s11, s12
 738 01a4 9442     		cmp	r4, r2
 739 01a6 76EE866A 		fadds	s13, s13, s12
 740 01aa F5D1     		bne	.L137
 741 01ac 05EE903A 		fmsr	s11, r3	@ int
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 14


 742 01b0 B8EE656A 		fuitos	s12, s11
 743 01b4 C6EE866A 		fdivs	s13, s13, s12
 744              	.L138:
 745 01b8 F5EE406A 		fcmpzs	s13
 746 01bc F1EE10FA 		fmstat
 747 01c0 62D0     		beq	.L139
 748 01c2 77EE677A 		fsubs	s15, s14, s15
 749 01c6 C7EEA67A 		fdivs	s15, s15, s13
 750 01ca 17EE900A 		fmrs	r0, s15
 751 01ce 59E7     		b	.L116
 752              	.L169:
 753 01d0 2046     		mov	r0, r4
 754 01d2 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.7
 755 01d6 37E7     		b	.L143
 756              	.L167:
 757 01d8 17EE900A 		fmrs	r0, s15
 758 01dc FFF7FEFF 		bl	__aeabi_f2d
 759 01e0 0446     		mov	r4, r0
 760 01e2 18EE900A 		fmrs	r0, s17
 761 01e6 0D46     		mov	r5, r1
 762 01e8 FFF7FEFF 		bl	__aeabi_f2d
 763 01ec 0246     		mov	r2, r0
 764 01ee 0B46     		mov	r3, r1
 765 01f0 0020     		movs	r0, #0
 766 01f2 3149     		ldr	r1, .L173+12
 767 01f4 FFF7FEFF 		bl	__aeabi_dsub
 768 01f8 0246     		mov	r2, r0
 769 01fa 0B46     		mov	r3, r1
 770 01fc 2046     		mov	r0, r4
 771 01fe 2946     		mov	r1, r5
 772 0200 FFF7FEFF 		bl	__aeabi_dmul
 773 0204 0446     		mov	r4, r0
 774 0206 19EE100A 		fmrs	r0, s18
 775 020a 0D46     		mov	r5, r1
 776 020c FFF7FEFF 		bl	__aeabi_f2d
 777 0210 0246     		mov	r2, r0
 778 0212 0B46     		mov	r3, r1
 779 0214 2046     		mov	r0, r4
 780 0216 2946     		mov	r1, r5
 781 0218 FFF7FEFF 		bl	__aeabi_ddiv
 782 021c FFF7FEFF 		bl	__aeabi_d2f
 783 0220 07EE100A 		fmsr	s14, r0
 784 0224 B4EE477A 		fcmps	s14, s14
 785 0228 F1EE10FA 		fmstat
 786 022c BFF52AAF 		bvs	.L116
 787 0230 DFED227A 		flds	s15, .L173+16
 788 0234 B4EEE77A 		fcmpes	s14, s15
 789 0238 F1EE10FA 		fmstat
 790 023c D8BF     		it	le
 791 023e 17EE900A 		fmrsle	r0, s15
 792 0242 1FE7     		b	.L116
 793              	.L123:
 794 0244 012B     		cmp	r3, #1
 795 0246 28D0     		beq	.L172
 796 0248 DFED187A 		flds	s15, .L173
 797 024c 04F14C02 		add	r2, r4, #76
 798              	.L127:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 15


 799 0250 B2EC017A 		fldmias	r2!, {s14}
 800 0254 0135     		adds	r5, r5, #1
 801 0256 AB42     		cmp	r3, r5
 802 0258 77EE877A 		fadds	s15, s15, s14
 803 025c F8D8     		bhi	.L127
 804 025e 04EB8303 		add	r3, r4, r3, lsl #2
 805 0262 93ED1B9A 		flds	s18, [r3, #108]
 806 0266 94ED1C7A 		flds	s14, [r4, #112]
 807 026a 39EE479A 		fsubs	s18, s18, s14
 808 026e 33E7     		b	.L124
 809              	.L135:
 810 0270 D4ED0B6A 		flds	s13, [r4, #44]
 811 0274 F5EEC06A 		fcmpezs	s13
 812 0278 F1EE10FA 		fmstat
 813 027c 04DD     		ble	.L139
 814 027e 94ED0C6A 		flds	s12, [r4, #48]
 815 0282 C6EE266A 		fdivs	s13, s12, s13
 816 0286 97E7     		b	.L138
 817              	.L139:
 818 0288 37EE677A 		fsubs	s14, s14, s15
 819 028c 27EE088A 		fmuls	s16, s14, s16
 820 0290 88EE278A 		fdivs	s16, s16, s15
 821 0294 18EE100A 		fmrs	r0, s16
 822 0298 F4E6     		b	.L116
 823              	.L172:
 824 029a 94ED1C9A 		flds	s18, [r4, #112]
 825 029e 94ED0D7A 		flds	s14, [r4, #52]
 826 02a2 D4ED127A 		flds	s15, [r4, #72]
 827 02a6 39EE479A 		fsubs	s18, s18, s14
 828 02aa 15E7     		b	.L124
 829              	.L174:
 830              		.align	2
 831              	.L173:
 832 02ac 00000000 		.word	0
 833 02b0 00000000 		.word	reprap
 834 02b4 6F12833A 		.word	981668463
 835 02b8 0000F03F 		.word	1072693248
 836 02bc CDCCCC3D 		.word	1036831949
 837 02c0 CDCCCC3D 		.word	1036831949
 838 02c4 0AD7233C 		.word	1008981770
 839              		.size	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod, .-_ZNK12PrintMonitor16Estimate
 840              		.global	__aeabi_dcmple
 841              		.section	.text._ZNK12PrintMonitor20FindFirstLayerHeightEPKcjRf,"ax",%progbits
 842              		.align	2
 843              		.global	_ZNK12PrintMonitor20FindFirstLayerHeightEPKcjRf
 844              		.thumb
 845              		.thumb_func
 846              		.type	_ZNK12PrintMonitor20FindFirstLayerHeightEPKcjRf, %function
 847              	_ZNK12PrintMonitor20FindFirstLayerHeightEPKcjRf:
 848              		@ args = 0, pretend = 0, frame = 8
 849              		@ frame_needed = 0, uses_anonymous_args = 0
 850 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 851 0004 2DED028B 		fstmfdd	sp!, {d8}
 852 0008 032A     		cmp	r2, #3
 853 000a 83B0     		sub	sp, sp, #12
 854 000c 8246     		mov	r10, r0
 855 000e 0D46     		mov	r5, r1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 16


 856 0010 1F46     		mov	r7, r3
 857 0012 50D9     		bls	.L178
 858 0014 0023     		movs	r3, #0
 859 0016 161F     		subs	r6, r2, #4
 860 0018 3B60     		str	r3, [r7]	@ float
 861 001a 4CD0     		beq	.L178
 862 001c 4FF0000B 		mov	fp, #0
 863 0020 D946     		mov	r9, fp
 864 0022 D846     		mov	r8, fp
 865 0024 5C46     		mov	r4, fp
 866 0026 07E0     		b	.L195
 867              	.L216:
 868 0028 B3F10A04 		subs	r4, r3, #10
 869 002c 18BF     		it	ne
 870 002e 0124     		movne	r4, #1
 871 0030 0BF1010B 		add	fp, fp, #1
 872              	.L180:
 873 0034 5E45     		cmp	r6, fp
 874 0036 0BD9     		bls	.L214
 875              	.L195:
 876 0038 15F80B30 		ldrb	r3, [r5, fp]	@ zero_extendqisi2
 877 003c 3B2B     		cmp	r3, #59
 878 003e 0DD0     		beq	.L215
 879 0040 002C     		cmp	r4, #0
 880 0042 F1D1     		bne	.L216
 881 0044 472B     		cmp	r3, #71
 882 0046 0DD0     		beq	.L182
 883 0048 0BF1010B 		add	fp, fp, #1
 884 004c 5E45     		cmp	r6, fp
 885 004e F3D8     		bhi	.L195
 886              	.L214:
 887 0050 4846     		mov	r0, r9
 888 0052 03B0     		add	sp, sp, #12
 889              		@ sp needed
 890 0054 BDEC028B 		fldmfdd	sp!, {d8}
 891 0058 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 892              	.L215:
 893 005c 0BF1010B 		add	fp, fp, #1
 894 0060 0124     		movs	r4, #1
 895 0062 E7E7     		b	.L180
 896              	.L182:
 897 0064 0BF10103 		add	r3, fp, #1
 898 0068 EA5C     		ldrb	r2, [r5, r3]	@ zero_extendqisi2
 899 006a B8F1000F 		cmp	r8, #0
 900 006e 03D0     		beq	.L183
 901 0070 392A     		cmp	r2, #57
 902 0072 36D0     		beq	.L217
 903              	.L200:
 904 0074 9B46     		mov	fp, r3
 905 0076 DDE7     		b	.L180
 906              	.L183:
 907 0078 392A     		cmp	r2, #57
 908 007a 22D0     		beq	.L218
 909 007c 303A     		subs	r2, r2, #48
 910 007e 012A     		cmp	r2, #1
 911 0080 F8D8     		bhi	.L200
 912 0082 05EB0B02 		add	r2, r5, fp
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 17


 913 0086 9278     		ldrb	r2, [r2, #2]	@ zero_extendqisi2
 914 0088 202A     		cmp	r2, #32
 915 008a F3D1     		bne	.L200
 916 008c 0BF10303 		add	r3, fp, #3
 917 0090 B342     		cmp	r3, r6
 918 0092 6CD2     		bcs	.L213
 919 0094 EA5C     		ldrb	r2, [r5, r3]	@ zero_extendqisi2
 920 0096 5A2A     		cmp	r2, #90
 921 0098 33D0     		beq	.L186
 922 009a 3B2A     		cmp	r2, #59
 923 009c 05D1     		bne	.L188
 924 009e 66E0     		b	.L213
 925              	.L194:
 926 00a0 EA5C     		ldrb	r2, [r5, r3]	@ zero_extendqisi2
 927 00a2 5A2A     		cmp	r2, #90
 928 00a4 2DD0     		beq	.L186
 929 00a6 3B2A     		cmp	r2, #59
 930 00a8 02D0     		beq	.L212
 931              	.L188:
 932 00aa 0133     		adds	r3, r3, #1
 933 00ac B342     		cmp	r3, r6
 934 00ae F7D3     		bcc	.L194
 935              	.L212:
 936 00b0 03F1010B 		add	fp, r3, #1
 937 00b4 BEE7     		b	.L180
 938              	.L178:
 939 00b6 0020     		movs	r0, #0
 940 00b8 03B0     		add	sp, sp, #12
 941              		@ sp needed
 942 00ba BDEC028B 		fldmfdd	sp!, {d8}
 943 00be BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 944              	.L218:
 945 00c2 AB44     		add	fp, fp, r5
 946 00c4 9BF80220 		ldrb	r2, [fp, #2]	@ zero_extendqisi2
 947 00c8 312A     		cmp	r2, #49
 948 00ca D3D1     		bne	.L200
 949 00cc 9BF80380 		ldrb	r8, [fp, #3]	@ zero_extendqisi2
 950 00d0 B8F1200F 		cmp	r8, #32
 951 00d4 9B46     		mov	fp, r3
 952 00d6 8CBF     		ite	hi
 953 00d8 4FF00008 		movhi	r8, #0
 954 00dc 4FF00108 		movls	r8, #1
 955 00e0 A8E7     		b	.L180
 956              	.L217:
 957 00e2 AB44     		add	fp, fp, r5
 958 00e4 9BF80220 		ldrb	r2, [fp, #2]	@ zero_extendqisi2
 959 00e8 302A     		cmp	r2, #48
 960 00ea C3D1     		bne	.L200
 961 00ec 9BF80380 		ldrb	r8, [fp, #3]	@ zero_extendqisi2
 962 00f0 B8F1200F 		cmp	r8, #32
 963 00f4 9B46     		mov	fp, r3
 964 00f6 94BF     		ite	ls
 965 00f8 4FF00008 		movls	r8, #0
 966 00fc 4FF00108 		movhi	r8, #1
 967 0100 98E7     		b	.L180
 968              	.L186:
 969 0102 03F1010B 		add	fp, r3, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 18


 970 0106 05EB0B00 		add	r0, r5, fp
 971 010a 0021     		movs	r1, #0
 972 010c FFF7FEFF 		bl	strtod
 973 0110 FFF7FEFF 		bl	__aeabi_d2f
 974 0114 D7ED007A 		flds	s15, [r7]
 975 0118 F5EE407A 		fcmpzs	s15
 976 011c F1EE10FA 		fmstat
 977 0120 08EE100A 		fmsr	s16, r0
 978 0124 04D0     		beq	.L190
 979 0126 B4EEE78A 		fcmpes	s16, s15
 980 012a F1EE10FA 		fmstat
 981 012e 81D5     		bpl	.L180
 982              	.L190:
 983 0130 18EE100A 		fmrs	r0, s16
 984 0134 FFF7FEFF 		bl	__aeabi_f2d
 985 0138 DAF80030 		ldr	r3, [r10]
 986 013c 03F6A403 		addw	r3, r3, #2212
 987 0140 CDE90001 		strd	r0, [sp]
 988 0144 1868     		ldr	r0, [r3]	@ float
 989 0146 FFF7FEFF 		bl	__aeabi_f2d
 990 014a 0022     		movs	r2, #0
 991 014c 094B     		ldr	r3, .L219
 992 014e FFF7FEFF 		bl	__aeabi_dmul
 993 0152 0246     		mov	r2, r0
 994 0154 0B46     		mov	r3, r1
 995 0156 DDE90001 		ldrd	r0, [sp]
 996 015a FFF7FEFF 		bl	__aeabi_dcmple
 997 015e 0028     		cmp	r0, #0
 998 0160 3FF468AF 		beq	.L180
 999 0164 87ED008A 		fsts	s16, [r7]
 1000 0168 4FF00109 		mov	r9, #1
 1001 016c 62E7     		b	.L180
 1002              	.L213:
 1003 016e 0BF1040B 		add	fp, fp, #4
 1004 0172 5FE7     		b	.L180
 1005              	.L220:
 1006              		.align	2
 1007              	.L219:
 1008 0174 00000840 		.word	1074266112
 1009              		.size	_ZNK12PrintMonitor20FindFirstLayerHeightEPKcjRf, .-_ZNK12PrintMonitor20FindFirstLayerHeightE
 1010              		.section	.text._ZNK12PrintMonitor10FindHeightEPKcjRf,"ax",%progbits
 1011              		.align	2
 1012              		.global	_ZNK12PrintMonitor10FindHeightEPKcjRf
 1013              		.thumb
 1014              		.thumb_func
 1015              		.type	_ZNK12PrintMonitor10FindHeightEPKcjRf, %function
 1016              	_ZNK12PrintMonitor10FindHeightEPKcjRf:
 1017              		@ args = 0, pretend = 0, frame = 0
 1018              		@ frame_needed = 0, uses_anonymous_args = 0
 1019 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1020 0004 4FF0000A 		mov	r10, #0
 1021 0008 8846     		mov	r8, r1
 1022 000a 1746     		mov	r7, r2
 1023 000c 9946     		mov	r9, r3
 1024 000e D346     		mov	fp, r10
 1025              	.L222:
 1026 0010 052F     		cmp	r7, #5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 19


 1027 0012 0AD9     		bls	.L223
 1028              	.L289:
 1029 0014 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 1030 0018 0D2B     		cmp	r3, #13
 1031 001a 06D0     		beq	.L223
 1032 001c 0A2B     		cmp	r3, #10
 1033 001e 04D0     		beq	.L223
 1034 0020 013F     		subs	r7, r7, #1
 1035 0022 052F     		cmp	r7, #5
 1036 0024 08F10108 		add	r8, r8, #1
 1037 0028 F4D8     		bhi	.L289
 1038              	.L223:
 1039 002a 4546     		mov	r5, r8
 1040 002c 3E46     		mov	r6, r7
 1041 002e 721E     		subs	r2, r6, #1
 1042 0030 6C78     		ldrb	r4, [r5, #1]	@ zero_extendqisi2
 1043 0032 042A     		cmp	r2, #4
 1044 0034 A4F10901 		sub	r1, r4, #9
 1045 0038 2AD9     		bls	.L250
 1046              	.L291:
 1047 003a 202C     		cmp	r4, #32
 1048 003c 20D0     		beq	.L228
 1049 003e 0129     		cmp	r1, #1
 1050 0040 1ED9     		bls	.L228
 1051 0042 0D2C     		cmp	r4, #13
 1052 0044 1CD0     		beq	.L228
 1053 0046 472C     		cmp	r4, #71
 1054 0048 05F10208 		add	r8, r5, #2
 1055 004c A6F10207 		sub	r7, r6, #2
 1056 0050 22D0     		beq	.L290
 1057 0052 3B2C     		cmp	r4, #59
 1058 0054 DCD1     		bne	.L222
 1059 0056 1F2F     		cmp	r7, #31
 1060 0058 DAD9     		bls	.L222
 1061 005a 4046     		mov	r0, r8
 1062 005c 5349     		ldr	r1, .L294
 1063 005e FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1064 0062 0446     		mov	r4, r0
 1065 0064 0028     		cmp	r0, #0
 1066 0066 D3D0     		beq	.L222
 1067 0068 05F11600 		add	r0, r5, #22
 1068 006c 0021     		movs	r1, #0
 1069 006e FFF7FEFF 		bl	strtod
 1070 0072 FFF7FEFF 		bl	__aeabi_d2f
 1071 0076 C9F80000 		str	r0, [r9]	@ float
 1072 007a 2046     		mov	r0, r4
 1073 007c BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1074              	.L228:
 1075 0080 0135     		adds	r5, r5, #1
 1076 0082 1646     		mov	r6, r2
 1077 0084 721E     		subs	r2, r6, #1
 1078 0086 6C78     		ldrb	r4, [r5, #1]	@ zero_extendqisi2
 1079 0088 042A     		cmp	r2, #4
 1080 008a A4F10901 		sub	r1, r4, #9
 1081 008e D4D8     		bhi	.L291
 1082              	.L250:
 1083 0090 5C46     		mov	r4, fp
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 20


 1084 0092 2046     		mov	r0, r4
 1085 0094 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1086              	.L290:
 1087 0098 AB78     		ldrb	r3, [r5, #2]	@ zero_extendqisi2
 1088 009a BAF1000F 		cmp	r10, #0
 1089 009e 10D0     		beq	.L230
 1090 00a0 392B     		cmp	r3, #57
 1091 00a2 B5D1     		bne	.L222
 1092 00a4 EB78     		ldrb	r3, [r5, #3]	@ zero_extendqisi2
 1093 00a6 302B     		cmp	r3, #48
 1094 00a8 B2D1     		bne	.L222
 1095 00aa 95F804A0 		ldrb	r10, [r5, #4]	@ zero_extendqisi2
 1096 00ae AAF1300A 		sub	r10, r10, #48
 1097 00b2 BAF1090F 		cmp	r10, #9
 1098 00b6 8CBF     		ite	hi
 1099 00b8 4FF0000A 		movhi	r10, #0
 1100 00bc 4FF0010A 		movls	r10, #1
 1101 00c0 A6E7     		b	.L222
 1102              	.L230:
 1103 00c2 A3F13002 		sub	r2, r3, #48
 1104 00c6 012A     		cmp	r2, #1
 1105 00c8 10D9     		bls	.L292
 1106 00ca 392B     		cmp	r3, #57
 1107 00cc A0D1     		bne	.L222
 1108 00ce EB78     		ldrb	r3, [r5, #3]	@ zero_extendqisi2
 1109 00d0 312B     		cmp	r3, #49
 1110 00d2 9DD1     		bne	.L222
 1111 00d4 95F804A0 		ldrb	r10, [r5, #4]	@ zero_extendqisi2
 1112 00d8 AAF1300A 		sub	r10, r10, #48
 1113 00dc BAF1090F 		cmp	r10, #9
 1114 00e0 94BF     		ite	ls
 1115 00e2 4FF0000A 		movls	r10, #0
 1116 00e6 4FF0010A 		movhi	r10, #1
 1117 00ea 91E7     		b	.L222
 1118              	.L292:
 1119 00ec EB78     		ldrb	r3, [r5, #3]	@ zero_extendqisi2
 1120 00ee A3F13002 		sub	r2, r3, #48
 1121 00f2 092A     		cmp	r2, #9
 1122 00f4 A6F10307 		sub	r7, r6, #3
 1123 00f8 05F10308 		add	r8, r5, #3
 1124 00fc 88D9     		bls	.L222
 1125 00fe 032F     		cmp	r7, #3
 1126 0100 93D0     		beq	.L223
 1127 0102 5A2B     		cmp	r3, #90
 1128 0104 1AD0     		beq	.L233
 1129 0106 3B2B     		cmp	r3, #59
 1130 0108 82D0     		beq	.L222
 1131 010a 0A2B     		cmp	r3, #10
 1132 010c 80D0     		beq	.L222
 1133 010e 0D2B     		cmp	r3, #13
 1134 0110 3FF47EAF 		beq	.L222
 1135 0114 0435     		adds	r5, r5, #4
 1136 0116 0CE0     		b	.L234
 1137              	.L244:
 1138 0118 15F8013B 		ldrb	r3, [r5], #1	@ zero_extendqisi2
 1139 011c 5A2B     		cmp	r3, #90
 1140 011e 0DD0     		beq	.L233
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 21


 1141 0120 3B2B     		cmp	r3, #59
 1142 0122 3FF475AF 		beq	.L222
 1143 0126 0A2B     		cmp	r3, #10
 1144 0128 3FF472AF 		beq	.L222
 1145 012c 0D2B     		cmp	r3, #13
 1146 012e 3FF46FAF 		beq	.L222
 1147              	.L234:
 1148 0132 013F     		subs	r7, r7, #1
 1149 0134 032F     		cmp	r7, #3
 1150 0136 A846     		mov	r8, r5
 1151 0138 EED1     		bne	.L244
 1152 013a 76E7     		b	.L223
 1153              	.L233:
 1154 013c 4446     		mov	r4, r8
 1155 013e 5A23     		movs	r3, #90
 1156 0140 09E0     		b	.L236
 1157              	.L293:
 1158 0142 3B2B     		cmp	r3, #59
 1159 0144 09D0     		beq	.L239
 1160 0146 013F     		subs	r7, r7, #1
 1161 0148 022F     		cmp	r7, #2
 1162 014a 04F10104 		add	r4, r4, #1
 1163 014e 12D9     		bls	.L237
 1164 0150 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 1165 0152 0A2B     		cmp	r3, #10
 1166 0154 23D0     		beq	.L238
 1167              	.L236:
 1168 0156 0D2B     		cmp	r3, #13
 1169 0158 F3D1     		bne	.L293
 1170              	.L239:
 1171 015a 2046     		mov	r0, r4
 1172 015c 1449     		ldr	r1, .L294+4
 1173 015e FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1174 0162 30B9     		cbnz	r0, .L243
 1175 0164 022F     		cmp	r7, #2
 1176 0166 0DD9     		bls	.L242
 1177              	.L249:
 1178 0168 2046     		mov	r0, r4
 1179 016a 1249     		ldr	r1, .L294+8
 1180 016c FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1181 0170 40B1     		cbz	r0, .L242
 1182              	.L243:
 1183 0172 A046     		mov	r8, r4
 1184 0174 4CE7     		b	.L222
 1185              	.L237:
 1186 0176 05D1     		bne	.L242
 1187 0178 2046     		mov	r0, r4
 1188 017a 0D49     		ldr	r1, .L294+4
 1189 017c FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1190 0180 0028     		cmp	r0, #0
 1191 0182 F6D1     		bne	.L243
 1192              	.L242:
 1193 0184 08F10100 		add	r0, r8, #1
 1194 0188 0021     		movs	r1, #0
 1195 018a FFF7FEFF 		bl	strtod
 1196 018e FFF7FEFF 		bl	__aeabi_d2f
 1197 0192 A046     		mov	r8, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 22


 1198 0194 C9F80000 		str	r0, [r9]	@ float
 1199 0198 4FF0010B 		mov	fp, #1
 1200 019c 38E7     		b	.L222
 1201              	.L238:
 1202 019e 2046     		mov	r0, r4
 1203 01a0 0349     		ldr	r1, .L294+4
 1204 01a2 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1205 01a6 0028     		cmp	r0, #0
 1206 01a8 E3D1     		bne	.L243
 1207 01aa DDE7     		b	.L249
 1208              	.L295:
 1209              		.align	2
 1210              	.L294:
 1211 01ac 00000000 		.word	.LANCHOR1
 1212 01b0 08000000 		.word	.LC1
 1213 01b4 0C000000 		.word	.LC2
 1214              		.size	_ZNK12PrintMonitor10FindHeightEPKcjRf, .-_ZNK12PrintMonitor10FindHeightEPKcjRf
 1215              		.section	.text._ZNK12PrintMonitor15FindLayerHeightEPKcjRf,"ax",%progbits
 1216              		.align	2
 1217              		.global	_ZNK12PrintMonitor15FindLayerHeightEPKcjRf
 1218              		.thumb
 1219              		.thumb_func
 1220              		.type	_ZNK12PrintMonitor15FindLayerHeightEPKcjRf, %function
 1221              	_ZNK12PrintMonitor15FindLayerHeightEPKcjRf:
 1222              		@ args = 0, pretend = 0, frame = 0
 1223              		@ frame_needed = 0, uses_anonymous_args = 0
 1224              		@ link register save eliminated.
 1225 0000 0878     		ldrb	r0, [r1]	@ zero_extendqisi2
 1226 0002 18B1     		cbz	r0, .L297
 1227 0004 0846     		mov	r0, r1
 1228 0006 1946     		mov	r1, r3
 1229 0008 FFF7FEBF 		b	_ZNK12PrintMonitor15FindLayerHeightEPKcjRf.part.6
 1230              	.L297:
 1231 000c 7047     		bx	lr
 1232              		.size	_ZNK12PrintMonitor15FindLayerHeightEPKcjRf, .-_ZNK12PrintMonitor15FindLayerHeightEPKcjRf
 1233 000e 00BF     		.section	.text._ZNK12PrintMonitor16FindFilamentUsedEPKcjPfj,"ax",%progbits
 1234              		.align	2
 1235              		.global	_ZNK12PrintMonitor16FindFilamentUsedEPKcjPfj
 1236              		.thumb
 1237              		.thumb_func
 1238              		.type	_ZNK12PrintMonitor16FindFilamentUsedEPKcjPfj, %function
 1239              	_ZNK12PrintMonitor16FindFilamentUsedEPKcjPfj:
 1240              		@ args = 4, pretend = 0, frame = 8
 1241              		@ frame_needed = 0, uses_anonymous_args = 0
 1242 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1243 0004 2DED028B 		fstmfdd	sp!, {d8}
 1244 0008 83B0     		sub	sp, sp, #12
 1245 000a 8246     		mov	r10, r0
 1246 000c 0E9F     		ldr	r7, [sp, #56]
 1247 000e 8B46     		mov	fp, r1
 1248 0010 9946     		mov	r9, r3
 1249 0012 002F     		cmp	r7, #0
 1250 0014 76D0     		beq	.L299
 1251 0016 9FED748A 		flds	s16, .L344+8
 1252 001a 0C46     		mov	r4, r1
 1253 001c 4FF00008 		mov	r8, #0
 1254              	.L300:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 23


 1255 0020 2046     		mov	r0, r4
 1256 0022 7249     		ldr	r1, .L344+12
 1257 0024 FFF7FEFF 		bl	strstr
 1258 0028 78B1     		cbz	r0, .L304
 1259 002a 00F10C06 		add	r6, r0, #12
 1260              	.L321:
 1261 002e 3578     		ldrb	r5, [r6]	@ zero_extendqisi2
 1262 0030 6F48     		ldr	r0, .L344+16
 1263 0032 2946     		mov	r1, r5
 1264 0034 3446     		mov	r4, r6
 1265 0036 0136     		adds	r6, r6, #1
 1266 0038 FFF7FEFF 		bl	strchr
 1267 003c 0028     		cmp	r0, #0
 1268 003e F6D1     		bne	.L321
 1269 0040 303D     		subs	r5, r5, #48
 1270 0042 092D     		cmp	r5, #9
 1271 0044 0AD9     		bls	.L338
 1272              	.L302:
 1273 0046 B845     		cmp	r8, r7
 1274 0048 EAD3     		bcc	.L300
 1275              	.L304:
 1276 004a B8F1000F 		cmp	r8, #0
 1277 004e 18D0     		beq	.L339
 1278              	.L337:
 1279 0050 4046     		mov	r0, r8
 1280 0052 03B0     		add	sp, sp, #12
 1281              		@ sp needed
 1282 0054 BDEC028B 		fldmfdd	sp!, {d8}
 1283 0058 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1284              	.L338:
 1285 005c 2046     		mov	r0, r4
 1286 005e 01A9     		add	r1, sp, #4
 1287 0060 FFF7FEFF 		bl	strtod
 1288 0064 FFF7FEFF 		bl	__aeabi_d2f
 1289 0068 09EB8802 		add	r2, r9, r8, lsl #2
 1290 006c 019B     		ldr	r3, [sp, #4]
 1291 006e 1060     		str	r0, [r2]	@ float
 1292 0070 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
 1293 0072 6D29     		cmp	r1, #109
 1294 0074 07EE900A 		fmsr	s15, r0
 1295 0078 00F0A080 		beq	.L340
 1296              	.L303:
 1297 007c 08F10108 		add	r8, r8, #1
 1298 0080 E1E7     		b	.L302
 1299              	.L339:
 1300 0082 5C46     		mov	r4, fp
 1301              	.L325:
 1302 0084 2046     		mov	r0, r4
 1303 0086 5B49     		ldr	r1, .L344+20
 1304 0088 FFF7FEFF 		bl	strstr
 1305 008c 78B1     		cbz	r0, .L308
 1306 008e 00F10F03 		add	r3, r0, #15
 1307              	.L322:
 1308 0092 1D78     		ldrb	r5, [r3]	@ zero_extendqisi2
 1309 0094 5648     		ldr	r0, .L344+16
 1310 0096 2946     		mov	r1, r5
 1311 0098 1C46     		mov	r4, r3
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 24


 1312 009a FFF7FEFF 		bl	strchr
 1313 009e 631C     		adds	r3, r4, #1
 1314 00a0 0028     		cmp	r0, #0
 1315 00a2 F6D1     		bne	.L322
 1316 00a4 303D     		subs	r5, r5, #48
 1317 00a6 092D     		cmp	r5, #9
 1318 00a8 70D9     		bls	.L341
 1319              	.L307:
 1320 00aa 4745     		cmp	r7, r8
 1321 00ac EAD8     		bhi	.L325
 1322              	.L308:
 1323 00ae 5E46     		mov	r6, fp
 1324 00b0 B8F1000F 		cmp	r8, #0
 1325 00b4 CCD1     		bne	.L337
 1326              	.L326:
 1327 00b6 3046     		mov	r0, r6
 1328 00b8 4F49     		ldr	r1, .L344+24
 1329 00ba FFF7FEFF 		bl	strstr
 1330 00be F0B1     		cbz	r0, .L318
 1331 00c0 457A     		ldrb	r5, [r0, #9]	@ zero_extendqisi2
 1332 00c2 A5F13003 		sub	r3, r5, #48
 1333 00c6 092B     		cmp	r3, #9
 1334 00c8 00F10904 		add	r4, r0, #9
 1335 00cc 0BD8     		bhi	.L315
 1336 00ce 00F10A03 		add	r3, r0, #10
 1337              	.L324:
 1338 00d2 1C46     		mov	r4, r3
 1339 00d4 0133     		adds	r3, r3, #1
 1340 00d6 2578     		ldrb	r5, [r4]	@ zero_extendqisi2
 1341 00d8 A5F13002 		sub	r2, r5, #48
 1342 00dc 092A     		cmp	r2, #9
 1343 00de F8D9     		bls	.L324
 1344 00e0 01E0     		b	.L315
 1345              	.L316:
 1346 00e2 14F8015F 		ldrb	r5, [r4, #1]!	@ zero_extendqisi2
 1347              	.L315:
 1348 00e6 4248     		ldr	r0, .L344+16
 1349 00e8 2946     		mov	r1, r5
 1350 00ea FFF7FEFF 		bl	strchr
 1351 00ee 2646     		mov	r6, r4
 1352 00f0 0028     		cmp	r0, #0
 1353 00f2 F6D1     		bne	.L316
 1354 00f4 303D     		subs	r5, r5, #48
 1355 00f6 092D     		cmp	r5, #9
 1356 00f8 54D9     		bls	.L342
 1357              	.L317:
 1358 00fa 4745     		cmp	r7, r8
 1359 00fc DBD8     		bhi	.L326
 1360              	.L318:
 1361 00fe B8F1000F 		cmp	r8, #0
 1362 0102 A5D1     		bne	.L337
 1363              	.L299:
 1364 0104 5846     		mov	r0, fp
 1365 0106 3D49     		ldr	r1, .L344+28
 1366 0108 FFF7FEFF 		bl	strstr
 1367 010c 0028     		cmp	r0, #0
 1368 010e 5DD0     		beq	.L343
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 25


 1369 0110 1A30     		adds	r0, r0, #26
 1370 0112 0021     		movs	r1, #0
 1371 0114 FFF7FEFF 		bl	strtod
 1372 0118 DAF80030 		ldr	r3, [r10]
 1373 011c 03F50A63 		add	r3, r3, #2208
 1374 0120 0646     		mov	r6, r0
 1375 0122 1868     		ldr	r0, [r3]	@ float
 1376 0124 0F46     		mov	r7, r1
 1377 0126 FFF7FEFF 		bl	__aeabi_f2d
 1378 012a 0022     		movs	r2, #0
 1379 012c 344B     		ldr	r3, .L344+32
 1380 012e FFF7FEFF 		bl	__aeabi_dmul
 1381 0132 0022     		movs	r2, #0
 1382 0134 0446     		mov	r4, r0
 1383 0136 0D46     		mov	r5, r1
 1384 0138 324B     		ldr	r3, .L344+36
 1385 013a 3046     		mov	r0, r6
 1386 013c 3946     		mov	r1, r7
 1387 013e FFF7FEFF 		bl	__aeabi_dmul
 1388 0142 FFF7FEFF 		bl	__aeabi_d2f
 1389 0146 FFF7FEFF 		bl	__aeabi_f2d
 1390 014a 25A3     		adr	r3, .L344
 1391 014c D3E90023 		ldrd	r2, [r3]
 1392 0150 0646     		mov	r6, r0
 1393 0152 0F46     		mov	r7, r1
 1394 0154 2046     		mov	r0, r4
 1395 0156 2946     		mov	r1, r5
 1396 0158 FFF7FEFF 		bl	__aeabi_dmul
 1397 015c 0246     		mov	r2, r0
 1398 015e 0B46     		mov	r3, r1
 1399 0160 2046     		mov	r0, r4
 1400 0162 2946     		mov	r1, r5
 1401 0164 FFF7FEFF 		bl	__aeabi_dmul
 1402 0168 0246     		mov	r2, r0
 1403 016a 0B46     		mov	r3, r1
 1404 016c 3046     		mov	r0, r6
 1405 016e 3946     		mov	r1, r7
 1406 0170 FFF7FEFF 		bl	__aeabi_ddiv
 1407 0174 FFF7FEFF 		bl	__aeabi_d2f
 1408 0178 4FF00108 		mov	r8, #1
 1409 017c C9F80000 		str	r0, [r9]	@ float
 1410 0180 4046     		mov	r0, r8
 1411 0182 03B0     		add	sp, sp, #12
 1412              		@ sp needed
 1413 0184 BDEC028B 		fldmfdd	sp!, {d8}
 1414 0188 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1415              	.L341:
 1416 018c 0146     		mov	r1, r0
 1417 018e 2046     		mov	r0, r4
 1418 0190 FFF7FEFF 		bl	strtod
 1419 0194 FFF7FEFF 		bl	__aeabi_d2f
 1420 0198 09EB8803 		add	r3, r9, r8, lsl #2
 1421 019c 08F10108 		add	r8, r8, #1
 1422 01a0 1860     		str	r0, [r3]	@ float
 1423 01a2 82E7     		b	.L307
 1424              	.L342:
 1425 01a4 0146     		mov	r1, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 26


 1426 01a6 2046     		mov	r0, r4
 1427 01a8 FFF7FEFF 		bl	strtod
 1428 01ac FFF7FEFF 		bl	__aeabi_d2f
 1429 01b0 09EB8803 		add	r3, r9, r8, lsl #2
 1430 01b4 08F10108 		add	r8, r8, #1
 1431 01b8 1860     		str	r0, [r3]	@ float
 1432 01ba 9EE7     		b	.L317
 1433              	.L340:
 1434 01bc 5B78     		ldrb	r3, [r3, #1]	@ zero_extendqisi2
 1435 01be 6D2B     		cmp	r3, #109
 1436 01c0 1CBF     		itt	ne
 1437 01c2 67EE887A 		fmulsne	s15, s15, s16
 1438 01c6 C2ED007A 		fstsne	s15, [r2]
 1439 01ca 57E7     		b	.L303
 1440              	.L343:
 1441 01cc 8046     		mov	r8, r0
 1442 01ce 4046     		mov	r0, r8
 1443 01d0 03B0     		add	sp, sp, #12
 1444              		@ sp needed
 1445 01d2 BDEC028B 		fldmfdd	sp!, {d8}
 1446 01d6 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1447              	.L345:
 1448 01da 00BFAFF3 		.align	3
 1448      0080
 1449              	.L344:
 1450 01e0 182D4454 		.word	1413754136
 1451 01e4 FB210940 		.word	1074340347
 1452 01e8 00007A44 		.word	1148846080
 1453 01ec 18000000 		.word	.LC4
 1454 01f0 10000000 		.word	.LC3
 1455 01f4 28000000 		.word	.LC5
 1456 01f8 54000000 		.word	.LC7
 1457 01fc 38000000 		.word	.LC6
 1458 0200 0000E03F 		.word	1071644672
 1459 0204 00408F40 		.word	1083129856
 1460              		.size	_ZNK12PrintMonitor16FindFilamentUsedEPKcjPfj, .-_ZNK12PrintMonitor16FindFilamentUsedEPKcjPfj
 1461              		.section	.text._ZN12PrintMonitor11GetFileInfoEPKcS1_R13GCodeFileInfo,"ax",%progbits
 1462              		.align	2
 1463              		.global	_ZN12PrintMonitor11GetFileInfoEPKcS1_R13GCodeFileInfo
 1464              		.thumb
 1465              		.thumb_func
 1466              		.type	_ZN12PrintMonitor11GetFileInfoEPKcS1_R13GCodeFileInfo, %function
 1467              	_ZN12PrintMonitor11GetFileInfoEPKcS1_R13GCodeFileInfo:
 1468              		@ args = 0, pretend = 0, frame = 4216
 1469              		@ frame_needed = 0, uses_anonymous_args = 0
 1470 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1471 0004 ADF5845D 		sub	sp, sp, #4224
 1472 0008 85B0     		sub	sp, sp, #20
 1473 000a 8146     		mov	r9, r0
 1474 000c 0993     		str	r3, [sp, #36]
 1475 000e 90F88830 		ldrb	r3, [r0, #136]	@ zero_extendqisi2
 1476 0012 0892     		str	r2, [sp, #32]
 1477 0014 0D46     		mov	r5, r1
 1478 0016 03F0FF07 		and	r7, r3, #255
 1479 001a 8BB9     		cbnz	r3, .L347
 1480 001c CE4E     		ldr	r6, .L472
 1481 001e 3368     		ldr	r3, [r6]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 27


 1482 0020 D3F83C08 		ldr	r0, [r3, #2108]
 1483 0024 FFF7FEFF 		bl	_ZN11MassStorage15DirectoryExistsEPKcS1_
 1484 0028 0446     		mov	r4, r0
 1485 002a 0028     		cmp	r0, #0
 1486 002c 00F06282 		beq	.L348
 1487 0030 0999     		ldr	r1, [sp, #36]
 1488 0032 0120     		movs	r0, #1
 1489 0034 0F70     		strb	r7, [r1]
 1490              	.L420:
 1491 0036 0DF5845D 		add	sp, sp, #4224
 1492 003a 05B0     		add	sp, sp, #20
 1493              		@ sp needed
 1494 003c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1495              	.L347:
 1496 0040 0898     		ldr	r0, [sp, #32]
 1497 0042 09F18901 		add	r1, r9, #137
 1498 0046 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1499 004a 0028     		cmp	r0, #0
 1500 004c F3D0     		beq	.L420
 1501              	.L394:
 1502 004e FFF7FEFF 		bl	millis
 1503 0052 99F88830 		ldrb	r3, [r9, #136]	@ zero_extendqisi2
 1504 0056 DFF80083 		ldr	r8, .L472
 1505 005a 012B     		cmp	r3, #1
 1506 005c 0746     		mov	r7, r0
 1507 005e 16D0     		beq	.L453
 1508              	.L356:
 1509 0060 99F88830 		ldrb	r3, [r9, #136]	@ zero_extendqisi2
 1510 0064 022B     		cmp	r3, #2
 1511 0066 00F0D680 		beq	.L454
 1512              	.L375:
 1513 006a 99F81030 		ldrb	r3, [r9, #16]	@ zero_extendqisi2
 1514 006e 2BB1     		cbz	r3, .L455
 1515              	.L391:
 1516 0070 0020     		movs	r0, #0
 1517 0072 0DF5845D 		add	sp, sp, #4224
 1518 0076 05B0     		add	sp, sp, #20
 1519              		@ sp needed
 1520 0078 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1521              	.L455:
 1522 007c FFF7FEFF 		bl	millis
 1523 0080 C01B     		subs	r0, r0, r7
 1524 0082 C728     		cmp	r0, #199
 1525 0084 F4D8     		bhi	.L391
 1526 0086 99F88830 		ldrb	r3, [r9, #136]	@ zero_extendqisi2
 1527 008a 012B     		cmp	r3, #1
 1528 008c E8D1     		bne	.L356
 1529              	.L453:
 1530 008e D9F8F000 		ldr	r0, [r9, #240]
 1531 0092 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1532 0096 0646     		mov	r6, r0
 1533 0098 D9F8F000 		ldr	r0, [r9, #240]
 1534 009c FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1535 00a0 361A     		subs	r6, r6, r0
 1536 00a2 B6F5805F 		cmp	r6, #4096
 1537 00a6 D9F8C441 		ldr	r4, [r9, #452]
 1538 00aa 2ABF     		itet	cs
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 28


 1539 00ac 4FF4805A 		movcs	r10, #4096
 1540 00b0 B246     		movcc	r10, r6
 1541 00b2 5646     		movcs	r6, r10
 1542 00b4 002C     		cmp	r4, #0
 1543 00b6 40F04681 		bne	.L456
 1544 00ba 3446     		mov	r4, r6
 1545 00bc 0AAD     		add	r5, sp, #40
 1546              	.L358:
 1547 00be FFF7FEFF 		bl	millis
 1548 00c2 D9F8C411 		ldr	r1, [r9, #452]
 1549 00c6 8346     		mov	fp, r0
 1550 00c8 2944     		add	r1, r1, r5
 1551 00ca D9F8F000 		ldr	r0, [r9, #240]
 1552 00ce 3246     		mov	r2, r6
 1553 00d0 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 1554 00d4 5045     		cmp	r0, r10
 1555 00d6 40F07D82 		bne	.L457
 1556 00da 0023     		movs	r3, #0
 1557 00dc 2B55     		strb	r3, [r5, r4]
 1558 00de FFF7FEFF 		bl	millis
 1559 00e2 D9F8A022 		ldr	r2, [r9, #672]
 1560 00e6 D9F82431 		ldr	r3, [r9, #292]
 1561 00ea CBEB0202 		rsb	r2, fp, r2
 1562 00ee 0244     		add	r2, r2, r0
 1563 00f0 8246     		mov	r10, r0
 1564 00f2 C9F8A022 		str	r2, [r9, #672]
 1565 00f6 002B     		cmp	r3, #0
 1566 00f8 00F03E81 		beq	.L458
 1567 00fc D9ED407A 		flds	s15, [r9, #256]
 1568 0100 F5EE407A 		fcmpzs	s15
 1569 0104 F1EE10FA 		fmstat
 1570 0108 4FF0010B 		mov	fp, #1
 1571 010c 00F05181 		beq	.L459
 1572              	.L362:
 1573 0110 D9ED4A7A 		flds	s15, [r9, #296]
 1574 0114 F5EE407A 		fcmpzs	s15
 1575 0118 F1EE10FA 		fmstat
 1576 011c 04D1     		bne	.L363
 1577 011e 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 1578 0120 002B     		cmp	r3, #0
 1579 0122 40F0AA81 		bne	.L460
 1580 0126 9B46     		mov	fp, r3
 1581              	.L363:
 1582 0128 99F82C31 		ldrb	r3, [r9, #300]	@ zero_extendqisi2
 1583 012c 7BBB     		cbnz	r3, .L365
 1584 012e 2846     		mov	r0, r5
 1585 0130 8A49     		ldr	r1, .L472+4
 1586 0132 FFF7FEFF 		bl	strstr
 1587 0136 0028     		cmp	r0, #0
 1588 0138 00F02D82 		beq	.L366
 1589 013c 884C     		ldr	r4, .L472+8
 1590 013e 00F10D02 		add	r2, r0, #13
 1591              	.L367:
 1592 0142 002A     		cmp	r2, #0
 1593 0144 00F0D880 		beq	.L370
 1594 0148 2146     		mov	r1, r4
 1595 014a 09F59670 		add	r0, r9, #300
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 29


 1596 014e 0692     		str	r2, [sp, #24]
 1597 0150 FFF7FEFF 		bl	strcpy
 1598 0154 2046     		mov	r0, r4
 1599 0156 FFF7FEFF 		bl	strlen
 1600 015a 3028     		cmp	r0, #48
 1601 015c 069A     		ldr	r2, [sp, #24]
 1602 015e 00F22682 		bhi	.L450
 1603 0162 1478     		ldrb	r4, [r2]	@ zero_extendqisi2
 1604 0164 1F2C     		cmp	r4, #31
 1605 0166 88BF     		it	hi
 1606 0168 1146     		movhi	r1, r2
 1607 016a 04D8     		bhi	.L372
 1608 016c 1FE2     		b	.L450
 1609              	.L461:
 1610 016e 11F8014F 		ldrb	r4, [r1, #1]!	@ zero_extendqisi2
 1611 0172 1F2C     		cmp	r4, #31
 1612 0174 06D9     		bls	.L371
 1613              	.L372:
 1614 0176 0130     		adds	r0, r0, #1
 1615 0178 09EB0002 		add	r2, r9, r0
 1616 017c 3128     		cmp	r0, #49
 1617 017e 82F82B41 		strb	r4, [r2, #299]
 1618 0182 F4D1     		bne	.L461
 1619              	.L371:
 1620 0184 0023     		movs	r3, #0
 1621 0186 82F82C31 		strb	r3, [r2, #300]
 1622 018a 99F82C31 		ldrb	r3, [r9, #300]	@ zero_extendqisi2
 1623              	.L365:
 1624 018e 002B     		cmp	r3, #0
 1625 0190 0CBF     		ite	eq
 1626 0192 0024     		moveq	r4, #0
 1627 0194 0BF00104 		andne	r4, fp, #1
 1628 0198 FFF7FEFF 		bl	millis
 1629 019c D9F89C22 		ldr	r2, [r9, #668]
 1630 01a0 CAEB0202 		rsb	r2, r10, r2
 1631 01a4 1044     		add	r0, r0, r2
 1632 01a6 C9F89C02 		str	r0, [r9, #668]
 1633 01aa D9F8F000 		ldr	r0, [r9, #240]
 1634 01ae FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1635 01b2 8246     		mov	r10, r0
 1636 01b4 002C     		cmp	r4, #0
 1637 01b6 00F0AD80 		beq	.L401
 1638              	.L373:
 1639 01ba B8F84030 		ldrh	r3, [r8, #64]
 1640 01be DA05     		lsls	r2, r3, #23
 1641 01c0 00F16381 		bmi	.L462
 1642              	.L396:
 1643 01c4 FFF7FEFF 		bl	millis
 1644 01c8 0546     		mov	r5, r0
 1645 01ca D9F8F000 		ldr	r0, [r9, #240]
 1646 01ce FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1647 01d2 D9F8F040 		ldr	r4, [r9, #240]
 1648 01d6 0646     		mov	r6, r0
 1649 01d8 2046     		mov	r0, r4
 1650 01da FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1651 01de 013E     		subs	r6, r6, #1
 1652 01e0 411E     		subs	r1, r0, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 30


 1653 01e2 C6F30B06 		ubfx	r6, r6, #0, #12
 1654 01e6 891B     		subs	r1, r1, r6
 1655 01e8 2046     		mov	r0, r4
 1656 01ea FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 1657 01ee FFF7FEFF 		bl	millis
 1658 01f2 0222     		movs	r2, #2
 1659 01f4 0023     		movs	r3, #0
 1660 01f6 89F88820 		strb	r2, [r9, #136]
 1661 01fa C9F89C32 		str	r3, [r9, #668]
 1662 01fe C9F8A032 		str	r3, [r9, #672]
 1663 0202 C9F8C431 		str	r3, [r9, #452]
 1664 0206 99F88830 		ldrb	r3, [r9, #136]	@ zero_extendqisi2
 1665 020a 401B     		subs	r0, r0, r5
 1666 020c 022B     		cmp	r3, #2
 1667 020e C9F8A402 		str	r0, [r9, #676]
 1668 0212 7FF42AAF 		bne	.L375
 1669              	.L454:
 1670 0216 D9F8F000 		ldr	r0, [r9, #240]
 1671 021a FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1672 021e 0646     		mov	r6, r0
 1673 0220 D9F8F000 		ldr	r0, [r9, #240]
 1674 0224 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1675 0228 C6EB000B 		rsb	fp, r6, r0
 1676 022c BBF5805F 		cmp	fp, #4096
 1677 0230 D9F8C441 		ldr	r4, [r9, #452]
 1678 0234 2ABF     		itet	cs
 1679 0236 4FF4805A 		movcs	r10, #4096
 1680 023a DA46     		movcc	r10, fp
 1681 023c D346     		movcs	fp, r10
 1682 023e 002C     		cmp	r4, #0
 1683 0240 40F09080 		bne	.L463
 1684 0244 5C46     		mov	r4, fp
 1685 0246 0AAD     		add	r5, sp, #40
 1686              	.L377:
 1687 0248 FFF7FEFF 		bl	millis
 1688 024c 5A46     		mov	r2, fp
 1689 024e 0790     		str	r0, [sp, #28]
 1690 0250 2946     		mov	r1, r5
 1691 0252 D9F8F000 		ldr	r0, [r9, #240]
 1692 0256 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 1693 025a 5045     		cmp	r0, r10
 1694 025c 40F0C581 		bne	.L464
 1695 0260 0023     		movs	r3, #0
 1696 0262 2B55     		strb	r3, [r5, r4]
 1697 0264 FFF7FEFF 		bl	millis
 1698 0268 D9F8A022 		ldr	r2, [r9, #672]
 1699 026c 0799     		ldr	r1, [sp, #28]
 1700 026e D9F82431 		ldr	r3, [r9, #292]
 1701 0272 521A     		subs	r2, r2, r1
 1702 0274 0244     		add	r2, r2, r0
 1703 0276 8246     		mov	r10, r0
 1704 0278 C9F8A022 		str	r2, [r9, #672]
 1705 027c 002B     		cmp	r3, #0
 1706 027e 00F0A280 		beq	.L465
 1707 0282 4FF0010B 		mov	fp, #1
 1708              	.L379:
 1709 0286 D9ED4A7A 		flds	s15, [r9, #296]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 31


 1710 028a F5EE407A 		fcmpzs	s15
 1711 028e F1EE10FA 		fmstat
 1712 0292 05D1     		bne	.L380
 1713 0294 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 1714 0296 002B     		cmp	r3, #0
 1715 0298 40F02381 		bne	.L381
 1716              	.L382:
 1717 029c 4FF0000B 		mov	fp, #0
 1718              	.L380:
 1719 02a0 D9ED417A 		flds	s15, [r9, #260]
 1720 02a4 F5EE407A 		fcmpzs	s15
 1721 02a8 F1EE10FA 		fmstat
 1722 02ac 00F0A180 		beq	.L383
 1723              	.L386:
 1724 02b0 FFF7FEFF 		bl	millis
 1725 02b4 D9F89C32 		ldr	r3, [r9, #668]
 1726 02b8 CAEB0303 		rsb	r3, r10, r3
 1727 02bc 1844     		add	r0, r0, r3
 1728 02be C9F89C02 		str	r0, [r9, #668]
 1729 02c2 BBF1000F 		cmp	fp, #0
 1730 02c6 02D1     		bne	.L384
 1731 02c8 002E     		cmp	r6, #0
 1732 02ca 40F0A880 		bne	.L466
 1733              	.L384:
 1734 02ce 224B     		ldr	r3, .L472
 1735 02d0 B3F84030 		ldrh	r3, [r3, #64]
 1736 02d4 DB05     		lsls	r3, r3, #23
 1737 02d6 00F1BA81 		bmi	.L467
 1738              	.L399:
 1739 02da 0023     		movs	r3, #0
 1740 02dc 89F88830 		strb	r3, [r9, #136]
 1741              	.L354:
 1742 02e0 D9F8F000 		ldr	r0, [r9, #240]
 1743 02e4 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1744 02e8 0998     		ldr	r0, [sp, #36]
 1745 02ea 09F1F401 		add	r1, r9, #244
 1746 02ee 6C22     		movs	r2, #108
 1747 02f0 FFF7FEFF 		bl	memcpy
 1748 02f4 0120     		movs	r0, #1
 1749 02f6 9EE6     		b	.L420
 1750              	.L370:
 1751 02f8 FFF7FEFF 		bl	millis
 1752 02fc D9F89C32 		ldr	r3, [r9, #668]
 1753 0300 CAEB0303 		rsb	r3, r10, r3
 1754 0304 1844     		add	r0, r0, r3
 1755 0306 C9F89C02 		str	r0, [r9, #668]
 1756 030a D9F8F000 		ldr	r0, [r9, #240]
 1757 030e FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1758 0312 8246     		mov	r10, r0
 1759              	.L401:
 1760 0314 BAF5005F 		cmp	r10, #8192
 1761 0318 BFF44FAF 		bcs	.L373
 1762 031c D9F8F000 		ldr	r0, [r9, #240]
 1763 0320 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1764 0324 5045     		cmp	r0, r10
 1765 0326 3FF448AF 		beq	.L373
 1766 032a 632E     		cmp	r6, #99
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 32


 1767 032c 40F23C81 		bls	.L410
 1768 0330 A6F16401 		sub	r1, r6, #100
 1769 0334 2944     		add	r1, r1, r5
 1770 0336 6422     		movs	r2, #100
 1771              	.L397:
 1772 0338 C9F8C421 		str	r2, [r9, #452]
 1773 033c 09F5B070 		add	r0, r9, #352
 1774 0340 FFF7FEFF 		bl	memcpy
 1775 0344 8CE6     		b	.L356
 1776              	.L456:
 1777 0346 0AAD     		add	r5, sp, #40
 1778 0348 2246     		mov	r2, r4
 1779 034a 2846     		mov	r0, r5
 1780 034c 09F5B071 		add	r1, r9, #352
 1781 0350 FFF7FEFF 		bl	memcpy
 1782 0354 3444     		add	r4, r4, r6
 1783 0356 B2E6     		b	.L358
 1784              	.L473:
 1785              		.align	2
 1786              	.L472:
 1787 0358 00000000 		.word	reprap
 1788 035c D4000000 		.word	.LC16
 1789 0360 60000000 		.word	.LC8
 1790              	.L463:
 1791 0364 0AAD     		add	r5, sp, #40
 1792 0366 2246     		mov	r2, r4
 1793 0368 05EB0B00 		add	r0, r5, fp
 1794 036c 09F5B071 		add	r1, r9, #352
 1795 0370 FFF7FEFF 		bl	memcpy
 1796 0374 5C44     		add	r4, r4, fp
 1797 0376 67E7     		b	.L377
 1798              	.L458:
 1799 0378 D8F81030 		ldr	r3, [r8, #16]
 1800 037c D3F8B031 		ldr	r3, [r3, #432]
 1801 0380 C3F10A03 		rsb	r3, r3, #10
 1802 0384 0093     		str	r3, [sp]
 1803 0386 4846     		mov	r0, r9
 1804 0388 2946     		mov	r1, r5
 1805 038a 2246     		mov	r2, r4
 1806 038c 09F58473 		add	r3, r9, #264
 1807 0390 FFF7FEFF 		bl	_ZNK12PrintMonitor16FindFilamentUsedEPKcjPfj
 1808 0394 D9ED407A 		flds	s15, [r9, #256]
 1809 0398 C9F82401 		str	r0, [r9, #292]
 1810 039c 10F1000B 		adds	fp, r0, #0
 1811 03a0 F5EE407A 		fcmpzs	s15
 1812 03a4 18BF     		it	ne
 1813 03a6 4FF0010B 		movne	fp, #1
 1814 03aa F1EE10FA 		fmstat
 1815 03ae 7FF4AFAE 		bne	.L362
 1816              	.L459:
 1817 03b2 2246     		mov	r2, r4
 1818 03b4 4846     		mov	r0, r9
 1819 03b6 2946     		mov	r1, r5
 1820 03b8 09F58073 		add	r3, r9, #256
 1821 03bc FFF7FEFF 		bl	_ZNK12PrintMonitor20FindFirstLayerHeightEPKcjRf
 1822 03c0 00EA0B0B 		and	fp, r0, fp
 1823 03c4 A4E6     		b	.L362
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 33


 1824              	.L465:
 1825 03c6 D8F81030 		ldr	r3, [r8, #16]
 1826 03ca D3F8B031 		ldr	r3, [r3, #432]
 1827 03ce C3F10A03 		rsb	r3, r3, #10
 1828 03d2 0093     		str	r3, [sp]
 1829 03d4 4846     		mov	r0, r9
 1830 03d6 2946     		mov	r1, r5
 1831 03d8 2246     		mov	r2, r4
 1832 03da 09F58473 		add	r3, r9, #264
 1833 03de FFF7FEFF 		bl	_ZNK12PrintMonitor16FindFilamentUsedEPKcjPfj
 1834 03e2 10F1000B 		adds	fp, r0, #0
 1835 03e6 C9F82401 		str	r0, [r9, #292]
 1836 03ea 18BF     		it	ne
 1837 03ec 4FF0010B 		movne	fp, #1
 1838 03f0 49E7     		b	.L379
 1839              	.L383:
 1840 03f2 4846     		mov	r0, r9
 1841 03f4 2946     		mov	r1, r5
 1842 03f6 2246     		mov	r2, r4
 1843 03f8 09F58273 		add	r3, r9, #260
 1844 03fc FFF7FEFF 		bl	_ZNK12PrintMonitor10FindHeightEPKcjRf
 1845 0400 0028     		cmp	r0, #0
 1846 0402 7FF455AF 		bne	.L386
 1847 0406 FFF7FEFF 		bl	millis
 1848 040a D9F89C32 		ldr	r3, [r9, #668]
 1849 040e CAEB0303 		rsb	r3, r10, r3
 1850 0412 1844     		add	r0, r0, r3
 1851 0414 C9F89C02 		str	r0, [r9, #668]
 1852 0418 002E     		cmp	r6, #0
 1853 041a 3FF458AF 		beq	.L384
 1854              	.L466:
 1855 041e D9F8F000 		ldr	r0, [r9, #240]
 1856 0422 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1857 0426 B14B     		ldr	r3, .L474
 1858 0428 801B     		subs	r0, r0, r6
 1859 042a 9842     		cmp	r0, r3
 1860 042c 3FF64FAF 		bhi	.L384
 1861 0430 FFF7FEFF 		bl	millis
 1862 0434 B6F5805F 		cmp	r6, #4096
 1863 0438 8246     		mov	r10, r0
 1864 043a C0F0AA80 		bcc	.L411
 1865 043e A6F58051 		sub	r1, r6, #4096
 1866              	.L400:
 1867 0442 D9F8F000 		ldr	r0, [r9, #240]
 1868 0446 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 1869 044a 0028     		cmp	r0, #0
 1870 044c 00F0D880 		beq	.L468
 1871 0450 FFF7FEFF 		bl	millis
 1872 0454 D9F8A432 		ldr	r3, [r9, #676]
 1873 0458 632C     		cmp	r4, #99
 1874 045a CAEB0303 		rsb	r3, r10, r3
 1875 045e 1844     		add	r0, r0, r3
 1876 0460 94BF     		ite	ls
 1877 0462 2246     		movls	r2, r4
 1878 0464 6422     		movhi	r2, #100
 1879 0466 C9F8A402 		str	r0, [r9, #676]
 1880 046a C9F8C421 		str	r2, [r9, #452]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 34


 1881 046e 2946     		mov	r1, r5
 1882 0470 09F5B070 		add	r0, r9, #352
 1883 0474 FFF7FEFF 		bl	memcpy
 1884 0478 F7E5     		b	.L375
 1885              	.L460:
 1886 047a 2846     		mov	r0, r5
 1887 047c 09F59471 		add	r1, r9, #296
 1888 0480 FFF7FEFF 		bl	_ZNK12PrintMonitor15FindLayerHeightEPKcjRf.part.6
 1889 0484 00EA0B0B 		and	fp, r0, fp
 1890 0488 4EE6     		b	.L363
 1891              	.L462:
 1892 048a D9F8F000 		ldr	r0, [r9, #240]
 1893 048e D9F80040 		ldr	r4, [r9]
 1894 0492 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1895 0496 D9EDA87A 		flds	s15, [r9, #672]	@ int
 1896 049a F8EE677A 		fuitos	s15, s15
 1897 049e 0546     		mov	r5, r0
 1898 04a0 17EE900A 		fmrs	r0, s15
 1899 04a4 FFF7FEFF 		bl	__aeabi_f2d
 1900 04a8 0022     		movs	r2, #0
 1901 04aa 914B     		ldr	r3, .L474+4
 1902 04ac FFF7FEFF 		bl	__aeabi_ddiv
 1903 04b0 D9F89C32 		ldr	r3, [r9, #668]
 1904 04b4 07EE903A 		fmsr	s15, r3	@ int
 1905 04b8 F8EE677A 		fuitos	s15, s15
 1906 04bc CDE90001 		strd	r0, [sp]
 1907 04c0 17EE900A 		fmrs	r0, s15
 1908 04c4 FFF7FEFF 		bl	__aeabi_f2d
 1909 04c8 0022     		movs	r2, #0
 1910 04ca 894B     		ldr	r3, .L474+4
 1911 04cc FFF7FEFF 		bl	__aeabi_ddiv
 1912 04d0 2B46     		mov	r3, r5
 1913 04d2 CDE90201 		strd	r0, [sp, #8]
 1914 04d6 874A     		ldr	r2, .L474+8
 1915 04d8 2046     		mov	r0, r4
 1916 04da 0221     		movs	r1, #2
 1917 04dc FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1918 04e0 70E6     		b	.L396
 1919              	.L381:
 1920 04e2 2846     		mov	r0, r5
 1921 04e4 09F59471 		add	r1, r9, #296
 1922 04e8 FFF7FEFF 		bl	_ZNK12PrintMonitor15FindLayerHeightEPKcjRf.part.6
 1923 04ec 0028     		cmp	r0, #0
 1924 04ee 7FF4D7AE 		bne	.L380
 1925 04f2 D3E6     		b	.L382
 1926              	.L348:
 1927 04f4 D9F80000 		ldr	r0, [r9]
 1928 04f8 089A     		ldr	r2, [sp, #32]
 1929 04fa 2946     		mov	r1, r5
 1930 04fc 2346     		mov	r3, r4
 1931 04fe FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 1932 0502 C9F8F000 		str	r0, [r9, #240]
 1933 0506 0028     		cmp	r0, #0
 1934 0508 60D0     		beq	.L469
 1935 050a 0899     		ldr	r1, [sp, #32]
 1936 050c 6422     		movs	r2, #100
 1937 050e 09F18900 		add	r0, r9, #137
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 35


 1938 0512 FFF7FEFF 		bl	strncpy
 1939 0516 0123     		movs	r3, #1
 1940 0518 89F8F430 		strb	r3, [r9, #244]
 1941 051c 89F8EC40 		strb	r4, [r9, #236]
 1942 0520 C9F8C441 		str	r4, [r9, #452]
 1943 0524 D9F8F000 		ldr	r0, [r9, #240]
 1944 0528 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1945 052c 3368     		ldr	r3, [r6]
 1946 052e C9F8F800 		str	r0, [r9, #248]
 1947 0532 2946     		mov	r1, r5
 1948 0534 D3F83C08 		ldr	r0, [r3, #2108]
 1949 0538 089A     		ldr	r2, [sp, #32]
 1950 053a FFF7FEFF 		bl	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_
 1951 053e 0023     		movs	r3, #0
 1952 0540 1946     		mov	r1, r3	@ float
 1953 0542 C9F80031 		str	r3, [r9, #256]	@ float
 1954 0546 C9F80431 		str	r3, [r9, #260]	@ float
 1955 054a C9F82831 		str	r3, [r9, #296]	@ float
 1956 054e C9F8FC00 		str	r0, [r9, #252]
 1957 0552 C9F82441 		str	r4, [r9, #292]
 1958 0556 89F82C41 		strb	r4, [r9, #300]
 1959 055a 09F58472 		add	r2, r9, #264
 1960 055e 0723     		movs	r3, #7
 1961              	.L352:
 1962 0560 013B     		subs	r3, r3, #1
 1963 0562 42F8041B 		str	r1, [r2], #4	@ float
 1964 0566 FBD1     		bne	.L352
 1965 0568 B6F84020 		ldrh	r2, [r6, #64]
 1966 056c D105     		lsls	r1, r2, #23
 1967 056e 21D4     		bmi	.L470
 1968              	.L353:
 1969 0570 D9F8F000 		ldr	r0, [r9, #240]
 1970 0574 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1971 0578 0028     		cmp	r0, #0
 1972 057a 3FF4B1AE 		beq	.L354
 1973 057e 0898     		ldr	r0, [sp, #32]
 1974 0580 5D49     		ldr	r1, .L474+12
 1975 0582 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1976 0586 0028     		cmp	r0, #0
 1977 0588 4ED0     		beq	.L471
 1978              	.L355:
 1979 058a 0123     		movs	r3, #1
 1980 058c 89F88830 		strb	r3, [r9, #136]
 1981 0590 5DE5     		b	.L394
 1982              	.L411:
 1983 0592 0021     		movs	r1, #0
 1984 0594 55E7     		b	.L400
 1985              	.L366:
 1986 0596 2846     		mov	r0, r5
 1987 0598 5849     		ldr	r1, .L474+16
 1988 059a FFF7FEFF 		bl	strstr
 1989 059e 0028     		cmp	r0, #0
 1990 05a0 38D0     		beq	.L368
 1991 05a2 821C     		adds	r2, r0, #2
 1992 05a4 564C     		ldr	r4, .L474+20
 1993 05a6 CCE5     		b	.L367
 1994              	.L410:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 36


 1995 05a8 3246     		mov	r2, r6
 1996 05aa 2946     		mov	r1, r5
 1997 05ac C4E6     		b	.L397
 1998              	.L450:
 1999 05ae 09EB0002 		add	r2, r9, r0
 2000 05b2 E7E5     		b	.L371
 2001              	.L470:
 2002 05b4 C9F89C32 		str	r3, [r9, #668]
 2003 05b8 C9F8A032 		str	r3, [r9, #672]
 2004 05bc D9F80000 		ldr	r0, [r9]
 2005 05c0 504A     		ldr	r2, .L474+24
 2006 05c2 089B     		ldr	r3, [sp, #32]
 2007 05c4 0221     		movs	r1, #2
 2008 05c6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2009 05ca D1E7     		b	.L353
 2010              	.L469:
 2011 05cc 099B     		ldr	r3, [sp, #36]
 2012 05ce 1870     		strb	r0, [r3]
 2013 05d0 0120     		movs	r0, #1
 2014 05d2 30E5     		b	.L420
 2015              	.L457:
 2016 05d4 089B     		ldr	r3, [sp, #32]
 2017 05d6 D9F80000 		ldr	r0, [r9]
 2018 05da 4B4A     		ldr	r2, .L474+28
 2019 05dc 0221     		movs	r1, #2
 2020 05de FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2021 05e2 0023     		movs	r3, #0
 2022 05e4 89F88830 		strb	r3, [r9, #136]
 2023 05e8 7AE6     		b	.L354
 2024              	.L464:
 2025 05ea 089B     		ldr	r3, [sp, #32]
 2026 05ec D9F80000 		ldr	r0, [r9]
 2027 05f0 464A     		ldr	r2, .L474+32
 2028 05f2 0221     		movs	r1, #2
 2029 05f4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2030 05f8 0023     		movs	r3, #0
 2031 05fa 89F88830 		strb	r3, [r9, #136]
 2032 05fe 6FE6     		b	.L354
 2033              	.L468:
 2034 0600 0646     		mov	r6, r0
 2035 0602 434A     		ldr	r2, .L474+36
 2036 0604 D9F80000 		ldr	r0, [r9]
 2037 0608 0221     		movs	r1, #2
 2038 060a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 2039 060e 89F88860 		strb	r6, [r9, #136]
 2040 0612 65E6     		b	.L354
 2041              	.L368:
 2042 0614 2846     		mov	r0, r5
 2043 0616 3F49     		ldr	r1, .L474+40
 2044 0618 FFF7FEFF 		bl	strstr
 2045 061c 0028     		cmp	r0, #0
 2046 061e 59D0     		beq	.L369
 2047 0620 00F10C02 		add	r2, r0, #12
 2048 0624 3C4C     		ldr	r4, .L474+44
 2049 0626 8CE5     		b	.L367
 2050              	.L471:
 2051 0628 0898     		ldr	r0, [sp, #32]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 37


 2052 062a 3C49     		ldr	r1, .L474+48
 2053 062c FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2054 0630 0028     		cmp	r0, #0
 2055 0632 AAD1     		bne	.L355
 2056 0634 0898     		ldr	r0, [sp, #32]
 2057 0636 3A49     		ldr	r1, .L474+52
 2058 0638 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2059 063c 0028     		cmp	r0, #0
 2060 063e A4D1     		bne	.L355
 2061 0640 0898     		ldr	r0, [sp, #32]
 2062 0642 3849     		ldr	r1, .L474+56
 2063 0644 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 2064 0648 0028     		cmp	r0, #0
 2065 064a 9ED1     		bne	.L355
 2066 064c 48E6     		b	.L354
 2067              	.L467:
 2068 064e D9F8F000 		ldr	r0, [r9, #240]
 2069 0652 D9F80040 		ldr	r4, [r9]
 2070 0656 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 2071 065a 0546     		mov	r5, r0
 2072 065c D9F8F000 		ldr	r0, [r9, #240]
 2073 0660 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 2074 0664 D9EDA87A 		flds	s15, [r9, #672]	@ int
 2075 0668 F8EE677A 		fuitos	s15, s15
 2076 066c 05F58055 		add	r5, r5, #4096
 2077 0670 2D1A     		subs	r5, r5, r0
 2078 0672 17EE900A 		fmrs	r0, s15
 2079 0676 FFF7FEFF 		bl	__aeabi_f2d
 2080 067a 0022     		movs	r2, #0
 2081 067c 1C4B     		ldr	r3, .L474+4
 2082 067e FFF7FEFF 		bl	__aeabi_ddiv
 2083 0682 D9F89C32 		ldr	r3, [r9, #668]
 2084 0686 07EE903A 		fmsr	s15, r3	@ int
 2085 068a F8EE677A 		fuitos	s15, s15
 2086 068e CDE90001 		strd	r0, [sp]
 2087 0692 17EE900A 		fmrs	r0, s15
 2088 0696 FFF7FEFF 		bl	__aeabi_f2d
 2089 069a 0022     		movs	r2, #0
 2090 069c 144B     		ldr	r3, .L474+4
 2091 069e FFF7FEFF 		bl	__aeabi_ddiv
 2092 06a2 D9F8A432 		ldr	r3, [r9, #676]
 2093 06a6 07EE903A 		fmsr	s15, r3	@ int
 2094 06aa F8EE677A 		fuitos	s15, s15
 2095 06ae CDE90201 		strd	r0, [sp, #8]
 2096 06b2 17EE900A 		fmrs	r0, s15
 2097 06b6 FFF7FEFF 		bl	__aeabi_f2d
 2098 06ba 0022     		movs	r2, #0
 2099 06bc 0C4B     		ldr	r3, .L474+4
 2100 06be FFF7FEFF 		bl	__aeabi_ddiv
 2101 06c2 2B46     		mov	r3, r5
 2102 06c4 CDE90401 		strd	r0, [sp, #16]
 2103 06c8 174A     		ldr	r2, .L474+60
 2104 06ca 2046     		mov	r0, r4
 2105 06cc 0221     		movs	r1, #2
 2106 06ce FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2107 06d2 02E6     		b	.L399
 2108              	.L369:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 38


 2109 06d4 2846     		mov	r0, r5
 2110 06d6 1549     		ldr	r1, .L474+64
 2111 06d8 FFF7FEFF 		bl	strstr
 2112 06dc 0028     		cmp	r0, #0
 2113 06de 3FF40BAE 		beq	.L370
 2114 06e2 074C     		ldr	r4, .L474+20
 2115 06e4 00F11002 		add	r2, r0, #16
 2116 06e8 2BE5     		b	.L367
 2117              	.L475:
 2118 06ea 00BF     		.align	2
 2119              	.L474:
 2120 06ec 7F1A0600 		.word	399999
 2121 06f0 00408F40 		.word	1083129856
 2122 06f4 14010000 		.word	.LC20
 2123 06f8 88000000 		.word	.LC11
 2124 06fc E4000000 		.word	.LC17
 2125 0700 60000000 		.word	.LC8
 2126 0704 70000000 		.word	.LC10
 2127 0708 A0000000 		.word	.LC15
 2128 070c 60010000 		.word	.LC21
 2129 0710 F0010000 		.word	.LC23
 2130 0714 F0000000 		.word	.LC18
 2131 0718 64000000 		.word	.LC9
 2132 071c 90000000 		.word	.LC12
 2133 0720 94000000 		.word	.LC13
 2134 0724 9C000000 		.word	.LC14
 2135 0728 94010000 		.word	.LC22
 2136 072c 00010000 		.word	.LC19
 2137              		.size	_ZN12PrintMonitor11GetFileInfoEPKcS1_R13GCodeFileInfo, .-_ZN12PrintMonitor11GetFileInfoEPKcS
 2138              		.global	__aeabi_dcmplt
 2139              		.section	.text._ZN12PrintMonitor4SpinEv,"ax",%progbits
 2140              		.align	2
 2141              		.global	_ZN12PrintMonitor4SpinEv
 2142              		.thumb
 2143              		.thumb_func
 2144              		.type	_ZN12PrintMonitor4SpinEv, %function
 2145              	_ZN12PrintMonitor4SpinEv:
 2146              		@ args = 0, pretend = 0, frame = 40
 2147              		@ frame_needed = 0, uses_anonymous_args = 0
 2148 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2149 0004 2DED028B 		fstmfdd	sp!, {d8}
 2150 0008 90F83832 		ldrb	r3, [r0, #568]	@ zero_extendqisi2
 2151 000c 8BB0     		sub	sp, sp, #44
 2152 000e 0646     		mov	r6, r0
 2153 0010 1BB1     		cbz	r3, .L477
 2154 0012 90F8C831 		ldrb	r3, [r0, #456]	@ zero_extendqisi2
 2155 0016 002B     		cmp	r3, #0
 2156 0018 6CD0     		beq	.L533
 2157              	.L477:
 2158 001a 7068     		ldr	r0, [r6, #4]
 2159 001c FFF7FEFF 		bl	_ZNK6GCodes9IsRunningEv
 2160 0020 A8B9     		cbnz	r0, .L479
 2161 0022 D6ED067A 		flds	s15, [r6, #24]
 2162 0026 F5EE407A 		fcmpzs	s15
 2163 002a F1EE10FA 		fmstat
 2164 002e 09D0     		beq	.L534
 2165              	.L480:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 39


 2166 0030 3146     		mov	r1, r6
 2167 0032 51F8080B 		ldr	r0, [r1], #8
 2168 0036 FFF7FEFF 		bl	_ZN8Platform11ClassReportERf
 2169 003a 0BB0     		add	sp, sp, #44
 2170              		@ sp needed
 2171 003c BDEC028B 		fldmfdd	sp!, {d8}
 2172 0040 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2173              	.L534:
 2174 0044 3068     		ldr	r0, [r6]
 2175 0046 FFF7FEFF 		bl	_ZN8Platform4TimeEv
 2176 004a B061     		str	r0, [r6, #24]	@ float
 2177 004c F0E7     		b	.L480
 2178              	.L479:
 2179 004e FFF7FEFF 		bl	millis
 2180 0052 337C     		ldrb	r3, [r6, #16]	@ zero_extendqisi2
 2181 0054 0746     		mov	r7, r0
 2182 0056 002B     		cmp	r3, #0
 2183 0058 42D0     		beq	.L484
 2184 005a F368     		ldr	r3, [r6, #12]
 2185 005c C31A     		subs	r3, r0, r3
 2186 005e C82B     		cmp	r3, #200
 2187 0060 3ED9     		bls	.L484
 2188 0062 D6ED067A 		flds	s15, [r6, #24]
 2189 0066 F5EE407A 		fcmpzs	s15
 2190 006a F1EE10FA 		fmstat
 2191 006e 4FF00004 		mov	r4, #0
 2192 0072 68D1     		bne	.L535
 2193              	.L504:
 2194 0074 746A     		ldr	r4, [r6, #36]
 2195 0076 002C     		cmp	r4, #0
 2196 0078 76D1     		bne	.L485
 2197 007a DFF8D481 		ldr	r8, .L541+4
 2198 007e 9FED738A 		flds	s16, .L541
 2199 0082 A246     		mov	r10, r4
 2200 0084 C146     		mov	r9, r8
 2201 0086 4FF0010B 		mov	fp, #1
 2202 008a 02E0     		b	.L490
 2203              	.L506:
 2204 008c 0134     		adds	r4, r4, #1
 2205 008e 082C     		cmp	r4, #8
 2206 0090 3CD0     		beq	.L536
 2207              	.L490:
 2208 0092 65B2     		sxtb	r5, r4
 2209 0094 2946     		mov	r1, r5
 2210 0096 D8F80C00 		ldr	r0, [r8, #12]
 2211 009a FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 2212 009e 0228     		cmp	r0, #2
 2213 00a0 F4D1     		bne	.L506
 2214 00a2 2946     		mov	r1, r5
 2215 00a4 D9F80C00 		ldr	r0, [r9, #12]
 2216 00a8 FFF7FEFF 		bl	_ZNK4Heat20GetActiveTemperatureEa
 2217 00ac 07EE900A 		fmsr	s15, r0
 2218 00b0 F4EEC87A 		fcmpes	s15, s16
 2219 00b4 F1EE10FA 		fmstat
 2220 00b8 2946     		mov	r1, r5
 2221 00ba 6548     		ldr	r0, .L541+4
 2222 00bc E6DD     		ble	.L506
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 40


 2223 00be 86F820B0 		strb	fp, [r6, #32]
 2224 00c2 FFF7FEFF 		bl	_ZNK6RepRap22IsHeaterAssignedToToolEa
 2225 00c6 0028     		cmp	r0, #0
 2226 00c8 E0D0     		beq	.L506
 2227 00ca 2946     		mov	r1, r5
 2228 00cc D9F80C00 		ldr	r0, [r9, #12]
 2229 00d0 0022     		movs	r2, #0
 2230 00d2 FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
 2231 00d6 0028     		cmp	r0, #0
 2232 00d8 32D0     		beq	.L493
 2233 00da 4FF0010A 		mov	r10, #1
 2234 00de D5E7     		b	.L506
 2235              	.L484:
 2236 00e0 3068     		ldr	r0, [r6]
 2237              	.L482:
 2238 00e2 06F10801 		add	r1, r6, #8
 2239 00e6 FFF7FEFF 		bl	_ZN8Platform11ClassReportERf
 2240 00ea 0BB0     		add	sp, sp, #44
 2241              		@ sp needed
 2242 00ec BDEC028B 		fldmfdd	sp!, {d8}
 2243 00f0 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2244              	.L533:
 2245 00f4 5749     		ldr	r1, .L541+8
 2246 00f6 00F50E72 		add	r2, r0, #568
 2247 00fa 00F5E673 		add	r3, r0, #460
 2248 00fe FFF7FEFF 		bl	_ZN12PrintMonitor11GetFileInfoEPKcS1_R13GCodeFileInfo
 2249 0102 86F8C801 		strb	r0, [r6, #456]
 2250 0106 0028     		cmp	r0, #0
 2251 0108 87D1     		bne	.L477
 2252 010a 91E7     		b	.L480
 2253              	.L536:
 2254 010c BAF1000F 		cmp	r10, #0
 2255 0110 16D0     		beq	.L493
 2256 0112 D8F80830 		ldr	r3, [r8, #8]
 2257 0116 9968     		ldr	r1, [r3, #8]
 2258 0118 5A68     		ldr	r2, [r3, #4]
 2259 011a 9142     		cmp	r1, r2
 2260 011c 0DD0     		beq	.L537
 2261              	.L491:
 2262 011e 337C     		ldrb	r3, [r6, #16]	@ zero_extendqisi2
 2263 0120 0022     		movs	r2, #0
 2264 0122 86F82020 		strb	r2, [r6, #32]
 2265 0126 002B     		cmp	r3, #0
 2266 0128 56D1     		bne	.L507
 2267 012a 9FED4B0A 		flds	s0, .L541+12
 2268              	.L508:
 2269 012e 0123     		movs	r3, #1
 2270 0130 86ED0A0A 		fsts	s0, [r6, #40]
 2271 0134 7362     		str	r3, [r6, #36]
 2272 0136 3068     		ldr	r0, [r6]
 2273 0138 03E0     		b	.L492
 2274              	.L537:
 2275 013a 1B68     		ldr	r3, [r3]
 2276 013c 002B     		cmp	r3, #0
 2277 013e EED1     		bne	.L491
 2278              	.L493:
 2279 0140 3068     		ldr	r0, [r6]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 41


 2280              	.L492:
 2281 0142 F760     		str	r7, [r6, #12]
 2282 0144 CDE7     		b	.L482
 2283              	.L535:
 2284 0146 3068     		ldr	r0, [r6]
 2285 0148 FFF7FEFF 		bl	_ZN8Platform4TimeEv
 2286 014c D6ED067A 		flds	s15, [r6, #24]
 2287 0150 96ED077A 		flds	s14, [r6, #28]
 2288 0154 B461     		str	r4, [r6, #24]	@ float
 2289 0156 06EE900A 		fmsr	s13, r0
 2290 015a 76EEE77A 		fsubs	s15, s13, s15
 2291 015e 77EE277A 		fadds	s15, s14, s15
 2292 0162 C6ED077A 		fsts	s15, [r6, #28]
 2293 0166 85E7     		b	.L504
 2294              	.L485:
 2295 0168 7068     		ldr	r0, [r6, #4]
 2296 016a FFF7FEFF 		bl	_ZNK6GCodes14DoingFileMacroEv
 2297 016e 0028     		cmp	r0, #0
 2298 0170 E6D1     		bne	.L493
 2299 0172 374C     		ldr	r4, .L541+4
 2300 0174 A068     		ldr	r0, [r4, #8]
 2301 0176 FFF7FEFF 		bl	_ZNK4Move11IsExtrudingEv
 2302 017a 0028     		cmp	r0, #0
 2303 017c E0D0     		beq	.L493
 2304 017e 2046     		mov	r0, r4
 2305 0180 A568     		ldr	r5, [r4, #8]
 2306 0182 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 2307 0186 6946     		mov	r1, sp
 2308 0188 0246     		mov	r2, r0
 2309 018a 2846     		mov	r0, r5
 2310 018c FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfm
 2311 0190 D6ED767A 		flds	s15, [r6, #472]
 2312 0194 F5EE407A 		fcmpzs	s15
 2313 0198 F1EE10FA 		fmstat
 2314 019c 20D1     		bne	.L538
 2315 019e DDF80890 		ldr	r9, [sp, #8]	@ float
 2316 01a2 D6F80080 		ldr	r8, [r6]
 2317 01a6 4846     		mov	r0, r9	@ float
 2318 01a8 FFF7FEFF 		bl	__aeabi_f2d
 2319 01ac 08F6A403 		addw	r3, r8, #2212
 2320 01b0 0446     		mov	r4, r0
 2321 01b2 1868     		ldr	r0, [r3]	@ float
 2322 01b4 0D46     		mov	r5, r1
 2323 01b6 FFF7FEFF 		bl	__aeabi_f2d
 2324 01ba 0022     		movs	r2, #0
 2325 01bc 274B     		ldr	r3, .L541+16
 2326 01be FFF7FEFF 		bl	__aeabi_dmul
 2327 01c2 0246     		mov	r2, r0
 2328 01c4 0B46     		mov	r3, r1
 2329 01c6 2046     		mov	r0, r4
 2330 01c8 2946     		mov	r1, r5
 2331 01ca FFF7FEFF 		bl	__aeabi_dcmplt
 2332 01ce 38B3     		cbz	r0, .L528
 2333 01d0 C6F8D891 		str	r9, [r6, #472]	@ float
 2334 01d4 4046     		mov	r0, r8
 2335 01d6 B4E7     		b	.L492
 2336              	.L507:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 42


 2337 01d8 3046     		mov	r0, r6
 2338 01da FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.7
 2339 01de A6E7     		b	.L508
 2340              	.L538:
 2341 01e0 736A     		ldr	r3, [r6, #36]
 2342 01e2 012B     		cmp	r3, #1
 2343 01e4 1ED0     		beq	.L539
 2344 01e6 D6ED106A 		flds	s13, [r6, #64]
 2345 01ea DFED1D7A 		flds	s15, .L541+20
 2346 01ee 9DED027A 		flds	s14, [sp, #8]
 2347 01f2 76EEA77A 		fadds	s15, s13, s15
 2348 01f6 B4EEE77A 		fcmpes	s14, s15
 2349 01fa F1EE10FA 		fmstat
 2350 01fe 9FDD     		ble	.L493
 2351 0200 3046     		mov	r0, r6
 2352 0202 FFF7FEFF 		bl	_ZN12PrintMonitor13LayerCompleteEv
 2353              	.L532:
 2354 0206 736A     		ldr	r3, [r6, #36]
 2355 0208 327C     		ldrb	r2, [r6, #16]	@ zero_extendqisi2
 2356 020a 0299     		ldr	r1, [sp, #8]	@ float
 2357 020c 3164     		str	r1, [r6, #64]	@ float
 2358 020e 0133     		adds	r3, r3, #1
 2359 0210 7362     		str	r3, [r6, #36]
 2360 0212 B2B9     		cbnz	r2, .L540
 2361 0214 9FED100A 		flds	s0, .L541+12
 2362              	.L502:
 2363 0218 86ED0E0A 		fsts	s0, [r6, #56]
 2364 021c 3068     		ldr	r0, [r6]
 2365 021e 90E7     		b	.L492
 2366              	.L528:
 2367 0220 4046     		mov	r0, r8
 2368 0222 8EE7     		b	.L492
 2369              	.L539:
 2370 0224 DFED0E6A 		flds	s13, .L541+20
 2371 0228 9DED027A 		flds	s14, [sp, #8]
 2372 022c 77EEA67A 		fadds	s15, s15, s13
 2373 0230 B4EEE77A 		fcmpes	s14, s15
 2374 0234 F1EE10FA 		fmstat
 2375 0238 82DD     		ble	.L493
 2376 023a 3046     		mov	r0, r6
 2377 023c FFF7FEFF 		bl	_ZN12PrintMonitor18FirstLayerCompleteEv
 2378 0240 E1E7     		b	.L532
 2379              	.L540:
 2380 0242 3046     		mov	r0, r6
 2381 0244 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.7
 2382 0248 E6E7     		b	.L502
 2383              	.L542:
 2384 024a 00BF     		.align	2
 2385              	.L541:
 2386 024c 00002042 		.word	1109393408
 2387 0250 00000000 		.word	reprap
 2388 0254 1C020000 		.word	.LC24
 2389 0258 00000000 		.word	0
 2390 025c 0000F83F 		.word	1073217536
 2391 0260 8FC2753C 		.word	1014350479
 2392              		.size	_ZN12PrintMonitor4SpinEv, .-_ZN12PrintMonitor4SpinEv
 2393              		.section	.text._ZN12PrintMonitor13StartingPrintEPKc,"ax",%progbits
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 43


 2394              		.align	2
 2395              		.global	_ZN12PrintMonitor13StartingPrintEPKc
 2396              		.thumb
 2397              		.thumb_func
 2398              		.type	_ZN12PrintMonitor13StartingPrintEPKc, %function
 2399              	_ZN12PrintMonitor13StartingPrintEPKc:
 2400              		@ args = 0, pretend = 0, frame = 0
 2401              		@ frame_needed = 0, uses_anonymous_args = 0
 2402 0000 38B5     		push	{r3, r4, r5, lr}
 2403 0002 0A46     		mov	r2, r1
 2404 0004 00F5E673 		add	r3, r0, #460
 2405 0008 0D46     		mov	r5, r1
 2406 000a 0849     		ldr	r1, .L544
 2407 000c 0446     		mov	r4, r0
 2408 000e FFF7FEFF 		bl	_ZN12PrintMonitor11GetFileInfoEPKcS1_R13GCodeFileInfo
 2409 0012 2946     		mov	r1, r5
 2410 0014 84F8C801 		strb	r0, [r4, #456]
 2411 0018 6422     		movs	r2, #100
 2412 001a 04F50E70 		add	r0, r4, #568
 2413 001e FFF7FEFF 		bl	strncpy
 2414 0022 0023     		movs	r3, #0
 2415 0024 84F89B32 		strb	r3, [r4, #667]
 2416 0028 38BD     		pop	{r3, r4, r5, pc}
 2417              	.L545:
 2418 002a 00BF     		.align	2
 2419              	.L544:
 2420 002c 1C020000 		.word	.LC24
 2421              		.size	_ZN12PrintMonitor13StartingPrintEPKc, .-_ZN12PrintMonitor13StartingPrintEPKc
 2422              		.section	.text._ZN12PrintMonitor19GetFileInfoResponseEPKcRP12OutputBuffer,"ax",%progbits
 2423              		.align	2
 2424              		.global	_ZN12PrintMonitor19GetFileInfoResponseEPKcRP12OutputBuffer
 2425              		.thumb
 2426              		.thumb_func
 2427              		.type	_ZN12PrintMonitor19GetFileInfoResponseEPKcRP12OutputBuffer, %function
 2428              	_ZN12PrintMonitor19GetFileInfoResponseEPKcRP12OutputBuffer:
 2429              		@ args = 0, pretend = 0, frame = 112
 2430              		@ frame_needed = 0, uses_anonymous_args = 0
 2431 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 2432 0004 1646     		mov	r6, r2
 2433 0006 A2B0     		sub	sp, sp, #136
 2434 0008 0446     		mov	r4, r0
 2435 000a 09B1     		cbz	r1, .L547
 2436 000c 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 2437 000e 5BB9     		cbnz	r3, .L588
 2438              	.L547:
 2439 0010 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 2440 0012 002B     		cmp	r3, #0
 2441 0014 6AD0     		beq	.L556
 2442 0016 94F8C831 		ldrb	r3, [r4, #456]	@ zero_extendqisi2
 2443 001a 002B     		cmp	r3, #0
 2444 001c 74D1     		bne	.L589
 2445              	.L557:
 2446 001e 0027     		movs	r7, #0
 2447              	.L572:
 2448 0020 3846     		mov	r0, r7
 2449 0022 22B0     		add	sp, sp, #136
 2450              		@ sp needed
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 44


 2451 0024 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2452              	.L588:
 2453 0028 0A46     		mov	r2, r1
 2454 002a 07AB     		add	r3, sp, #28
 2455 002c 7C49     		ldr	r1, .L593
 2456 002e FFF7FEFF 		bl	_ZN12PrintMonitor11GetFileInfoEPKcS1_R13GCodeFileInfo
 2457 0032 0746     		mov	r7, r0
 2458 0034 0028     		cmp	r0, #0
 2459 0036 F2D0     		beq	.L557
 2460 0038 9DF81C30 		ldrb	r3, [sp, #28]	@ zero_extendqisi2
 2461 003c 3046     		mov	r0, r6
 2462 003e 002B     		cmp	r3, #0
 2463 0040 00F0CC80 		beq	.L549
 2464 0044 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2465 0048 0028     		cmp	r0, #0
 2466 004a E8D0     		beq	.L557
 2467 004c 089A     		ldr	r2, [sp, #32]
 2468 004e 7549     		ldr	r1, .L593+4
 2469 0050 3068     		ldr	r0, [r6]
 2470 0052 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 2471 0056 09A8     		add	r0, sp, #36
 2472 0058 FFF7FEFF 		bl	gmtime
 2473 005c 4269     		ldr	r2, [r0, #20]
 2474 005e 502A     		cmp	r2, #80
 2475 0060 00F3CC80 		bgt	.L590
 2476              	.L550:
 2477 0064 0B98     		ldr	r0, [sp, #44]	@ float
 2478 0066 D6F80080 		ldr	r8, [r6]
 2479 006a FFF7FEFF 		bl	__aeabi_f2d
 2480 006e 0446     		mov	r4, r0
 2481 0070 0A98     		ldr	r0, [sp, #40]	@ float
 2482 0072 0D46     		mov	r5, r1
 2483 0074 FFF7FEFF 		bl	__aeabi_f2d
 2484 0078 CDE90001 		strd	r0, [sp]
 2485 007c 1498     		ldr	r0, [sp, #80]	@ float
 2486 007e FFF7FEFF 		bl	__aeabi_f2d
 2487 0082 2B46     		mov	r3, r5
 2488 0084 CDE90201 		strd	r0, [sp, #8]
 2489 0088 2246     		mov	r2, r4
 2490 008a 4046     		mov	r0, r8
 2491 008c 6649     		ldr	r1, .L593+8
 2492 008e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2493 0092 139B     		ldr	r3, [sp, #76]
 2494 0094 002B     		cmp	r3, #0
 2495 0096 00F0AC80 		beq	.L591
 2496 009a 0CAD     		add	r5, sp, #48
 2497 009c 0024     		movs	r4, #0
 2498 009e 4FF05B09 		mov	r9, #91
 2499 00a2 01E0     		b	.L553
 2500              	.L592:
 2501 00a4 4FF02C09 		mov	r9, #44
 2502              	.L553:
 2503 00a8 55F8040B 		ldr	r0, [r5], #4	@ float
 2504 00ac D6F80080 		ldr	r8, [r6]
 2505 00b0 FFF7FEFF 		bl	__aeabi_f2d
 2506 00b4 4A46     		mov	r2, r9
 2507 00b6 CDE90001 		strd	r0, [sp]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 45


 2508 00ba 4046     		mov	r0, r8
 2509 00bc 5B49     		ldr	r1, .L593+12
 2510 00be FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2511 00c2 139B     		ldr	r3, [sp, #76]
 2512 00c4 0134     		adds	r4, r4, #1
 2513 00c6 A342     		cmp	r3, r4
 2514 00c8 ECD8     		bhi	.L592
 2515              	.L552:
 2516 00ca 3068     		ldr	r0, [r6]
 2517 00cc 5849     		ldr	r1, .L593+16
 2518 00ce FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2519 00d2 0123     		movs	r3, #1
 2520 00d4 3068     		ldr	r0, [r6]
 2521 00d6 0093     		str	r3, [sp]
 2522 00d8 15A9     		add	r1, sp, #84
 2523 00da 3222     		movs	r2, #50
 2524 00dc 0023     		movs	r3, #0
 2525 00de FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 2526 00e2 3068     		ldr	r0, [r6]
 2527 00e4 5349     		ldr	r1, .L593+20
 2528 00e6 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2529 00ea 99E7     		b	.L572
 2530              	.L556:
 2531 00ec 3046     		mov	r0, r6
 2532 00ee FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2533 00f2 0746     		mov	r7, r0
 2534 00f4 0028     		cmp	r0, #0
 2535 00f6 93D0     		beq	.L572
 2536              	.L587:
 2537 00f8 3068     		ldr	r0, [r6]
 2538 00fa 4F49     		ldr	r1, .L593+24
 2539 00fc FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 2540 0100 3846     		mov	r0, r7
 2541 0102 22B0     		add	sp, sp, #136
 2542              		@ sp needed
 2543 0104 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2544              	.L589:
 2545 0108 3046     		mov	r0, r6
 2546 010a FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2547 010e 0746     		mov	r7, r0
 2548 0110 0028     		cmp	r0, #0
 2549 0112 84D0     		beq	.L557
 2550 0114 D4F8DC01 		ldr	r0, [r4, #476]	@ float
 2551 0118 3568     		ldr	r5, [r6]
 2552 011a D4F8D081 		ldr	r8, [r4, #464]
 2553 011e FFF7FEFF 		bl	__aeabi_f2d
 2554 0122 CDE90001 		strd	r0, [sp]
 2555 0126 D4F8D801 		ldr	r0, [r4, #472]	@ float
 2556 012a FFF7FEFF 		bl	__aeabi_f2d
 2557 012e CDE90201 		strd	r0, [sp, #8]
 2558 0132 D4F80002 		ldr	r0, [r4, #512]	@ float
 2559 0136 FFF7FEFF 		bl	__aeabi_f2d
 2560 013a 4246     		mov	r2, r8
 2561 013c CDE90401 		strd	r0, [sp, #16]
 2562 0140 2846     		mov	r0, r5
 2563 0142 3E49     		ldr	r1, .L593+28
 2564 0144 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 46


 2565 0148 D4F8FC31 		ldr	r3, [r4, #508]
 2566 014c 002B     		cmp	r3, #0
 2567 014e 4BD0     		beq	.L562
 2568 0150 04F5F078 		add	r8, r4, #480
 2569 0154 0025     		movs	r5, #0
 2570 0156 4FF05B0A 		mov	r10, #91
 2571 015a 01E0     		b	.L563
 2572              	.L560:
 2573 015c 4FF02C0A 		mov	r10, #44
 2574              	.L563:
 2575 0160 58F8040B 		ldr	r0, [r8], #4	@ float
 2576 0164 D6F80090 		ldr	r9, [r6]
 2577 0168 FFF7FEFF 		bl	__aeabi_f2d
 2578 016c 5246     		mov	r2, r10
 2579 016e CDE90001 		strd	r0, [sp]
 2580 0172 4846     		mov	r0, r9
 2581 0174 2D49     		ldr	r1, .L593+12
 2582 0176 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2583 017a D4F8FC31 		ldr	r3, [r4, #508]
 2584 017e 0135     		adds	r5, r5, #1
 2585 0180 AB42     		cmp	r3, r5
 2586 0182 EBD8     		bhi	.L560
 2587              	.L559:
 2588 0184 2A49     		ldr	r1, .L593+16
 2589 0186 3068     		ldr	r0, [r6]
 2590 0188 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2591 018c 0123     		movs	r3, #1
 2592 018e 3068     		ldr	r0, [r6]
 2593 0190 0093     		str	r3, [sp]
 2594 0192 3222     		movs	r2, #50
 2595 0194 04F50171 		add	r1, r4, #516
 2596 0198 0023     		movs	r3, #0
 2597 019a FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 2598 019e 227C     		ldrb	r2, [r4, #16]	@ zero_extendqisi2
 2599 01a0 3568     		ldr	r5, [r6]
 2600 01a2 32B1     		cbz	r2, .L561
 2601 01a4 2046     		mov	r0, r4
 2602 01a6 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.7
 2603 01aa BDEEC00A 		ftosizs	s0, s0
 2604 01ae 10EE102A 		fmrs	r2, s0	@ int
 2605              	.L561:
 2606 01b2 2846     		mov	r0, r5
 2607 01b4 2249     		ldr	r1, .L593+32
 2608 01b6 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2609 01ba 0123     		movs	r3, #1
 2610 01bc 3068     		ldr	r0, [r6]
 2611 01be 0093     		str	r3, [sp]
 2612 01c0 04F50E71 		add	r1, r4, #568
 2613 01c4 6422     		movs	r2, #100
 2614 01c6 0023     		movs	r3, #0
 2615 01c8 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 2616 01cc 3068     		ldr	r0, [r6]
 2617 01ce 7D21     		movs	r1, #125
 2618 01d0 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 2619 01d4 3846     		mov	r0, r7
 2620 01d6 22B0     		add	sp, sp, #136
 2621              		@ sp needed
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 47


 2622 01d8 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2623              	.L549:
 2624 01dc FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2625 01e0 0028     		cmp	r0, #0
 2626 01e2 3FF41CAF 		beq	.L557
 2627 01e6 87E7     		b	.L587
 2628              	.L562:
 2629 01e8 3068     		ldr	r0, [r6]
 2630 01ea 5B21     		movs	r1, #91
 2631 01ec FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 2632 01f0 C8E7     		b	.L559
 2633              	.L591:
 2634 01f2 3068     		ldr	r0, [r6]
 2635 01f4 5B21     		movs	r1, #91
 2636 01f6 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 2637 01fa 66E7     		b	.L552
 2638              	.L590:
 2639 01fc C168     		ldr	r1, [r0, #12]
 2640 01fe 0369     		ldr	r3, [r0, #16]
 2641 0200 0091     		str	r1, [sp]
 2642 0202 8168     		ldr	r1, [r0, #8]
 2643 0204 0191     		str	r1, [sp, #4]
 2644 0206 4168     		ldr	r1, [r0, #4]
 2645 0208 0291     		str	r1, [sp, #8]
 2646 020a 3468     		ldr	r4, [r6]
 2647 020c 0168     		ldr	r1, [r0]
 2648 020e 0391     		str	r1, [sp, #12]
 2649 0210 02F26C72 		addw	r2, r2, #1900
 2650 0214 0133     		adds	r3, r3, #1
 2651 0216 2046     		mov	r0, r4
 2652 0218 0A49     		ldr	r1, .L593+36
 2653 021a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2654 021e 21E7     		b	.L550
 2655              	.L594:
 2656              		.align	2
 2657              	.L593:
 2658 0220 28020000 		.word	.LC25
 2659 0224 2C020000 		.word	.LC26
 2660 0228 74020000 		.word	.LC28
 2661 022c BC020000 		.word	.LC29
 2662 0230 C4020000 		.word	.LC30
 2663 0234 D8020000 		.word	.LC31
 2664 0238 DC020000 		.word	.LC32
 2665 023c 08030000 		.word	.LC34
 2666 0240 E8020000 		.word	.LC33
 2667 0244 44020000 		.word	.LC27
 2668              		.size	_ZN12PrintMonitor19GetFileInfoResponseEPKcRP12OutputBuffer, .-_ZN12PrintMonitor19GetFileInfo
 2669              		.section	.text._ZNK12PrintMonitor16GetPrintDurationEv,"ax",%progbits
 2670              		.align	2
 2671              		.global	_ZNK12PrintMonitor16GetPrintDurationEv
 2672              		.thumb
 2673              		.thumb_func
 2674              		.type	_ZNK12PrintMonitor16GetPrintDurationEv, %function
 2675              	_ZNK12PrintMonitor16GetPrintDurationEv:
 2676              		@ args = 0, pretend = 0, frame = 0
 2677              		@ frame_needed = 0, uses_anonymous_args = 0
 2678 0000 08B5     		push	{r3, lr}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 48


 2679 0002 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 2680 0004 0BB9     		cbnz	r3, .L598
 2681 0006 0020     		movs	r0, #0
 2682 0008 08BD     		pop	{r3, pc}
 2683              	.L598:
 2684 000a FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv.part.7
 2685 000e 10EE100A 		fmrs	r0, s0
 2686 0012 08BD     		pop	{r3, pc}
 2687              		.size	_ZNK12PrintMonitor16GetPrintDurationEv, .-_ZNK12PrintMonitor16GetPrintDurationEv
 2688              		.section	.rodata._ZZNK12PrintMonitor10FindHeightEPKcjRfE21kisslicerHeightString,"a",%progbits
 2689              		.align	2
 2690              		.set	.LANCHOR1,. + 0
 2691              		.type	_ZZNK12PrintMonitor10FindHeightEPKcjRfE21kisslicerHeightString, %object
 2692              		.size	_ZZNK12PrintMonitor10FindHeightEPKcjRfE21kisslicerHeightString, 21
 2693              	_ZZNK12PrintMonitor10FindHeightEPKcjRfE21kisslicerHeightString:
 2694 0000 20454E44 		.ascii	" END_LAYER_OBJECT z=\000"
 2694      5F4C4159 
 2694      45525F4F 
 2694      424A4543 
 2694      54207A3D 
 2695 0015 000000   		.section	.rodata.str1.4,"aMS",%progbits,1
 2696              		.align	2
 2697              	.LC0:
 2698 0000 20093D3A 		.ascii	" \011=:,\000"
 2698      2C00
 2699 0006 0000     		.space	2
 2700              	.LC1:
 2701 0008 3B4500   		.ascii	";E\000"
 2702 000b 00       		.space	1
 2703              	.LC2:
 2704 000c 3B204500 		.ascii	"; E\000"
 2705              	.LC3:
 2706 0010 203A3D09 		.ascii	" :=\011\000"
 2706      00
 2707 0015 000000   		.space	3
 2708              	.LC4:
 2709 0018 696C616D 		.ascii	"ilament used\000"
 2709      656E7420 
 2709      75736564 
 2709      00
 2710 0025 000000   		.space	3
 2711              	.LC5:
 2712 0028 696C616D 		.ascii	"ilament length:\000"
 2712      656E7420 
 2712      6C656E67 
 2712      74683A00 
 2713              	.LC6:
 2714 0038 3B204573 		.ascii	"; Estimated Build Volume: \000"
 2714      74696D61 
 2714      74656420 
 2714      4275696C 
 2714      6420566F 
 2715 0053 00       		.space	1
 2716              	.LC7:
 2717 0054 3B202020 		.ascii	";    Ext \000"
 2717      20457874 
 2717      2000
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 49


 2718 005e 0000     		.space	2
 2719              	.LC8:
 2720 0060 00       		.ascii	"\000"
 2721 0061 000000   		.space	3
 2722              	.LC9:
 2723 0064 43757261 		.ascii	"Cura at \000"
 2723      20617420 
 2723      00
 2724 006d 000000   		.space	3
 2725              	.LC10:
 2726 0070 2D2D2050 		.ascii	"-- Parsing file %s --\012\000"
 2726      61727369 
 2726      6E672066 
 2726      696C6520 
 2726      2573202D 
 2727 0087 00       		.space	1
 2728              	.LC11:
 2729 0088 2E67636F 		.ascii	".gcode\000"
 2729      646500
 2730 008f 00       		.space	1
 2731              	.LC12:
 2732 0090 2E6700   		.ascii	".g\000"
 2733 0093 00       		.space	1
 2734              	.LC13:
 2735 0094 2E67636F 		.ascii	".gco\000"
 2735      00
 2736 0099 000000   		.space	3
 2737              	.LC14:
 2738 009c 2E676300 		.ascii	".gc\000"
 2739              	.LC15:
 2740 00a0 4572726F 		.ascii	"Error: Failed to read header of G-Code file \"%s\"\012"
 2740      723A2046 
 2740      61696C65 
 2740      6420746F 
 2740      20726561 
 2741 00d1 00       		.ascii	"\000"
 2742 00d2 0000     		.space	2
 2743              	.LC16:
 2744 00d4 67656E65 		.ascii	"generated by \000"
 2744      72617465 
 2744      64206279 
 2744      2000
 2745 00e2 0000     		.space	2
 2746              	.LC17:
 2747 00e4 3B204B49 		.ascii	"; KISSlicer\000"
 2747      53536C69 
 2747      63657200 
 2748              	.LC18:
 2749 00f0 3B536C69 		.ascii	";Sliced at: \000"
 2749      63656420 
 2749      61743A20 
 2749      00
 2750 00fd 000000   		.space	3
 2751              	.LC19:
 2752 0100 3B47656E 		.ascii	";Generated with \000"
 2752      65726174 
 2752      65642077 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 50


 2752      69746820 
 2752      00
 2753 0111 000000   		.space	3
 2754              	.LC20:
 2755 0114 48656164 		.ascii	"Header complete, processed %lu bytes, read time %.3"
 2755      65722063 
 2755      6F6D706C 
 2755      6574652C 
 2755      2070726F 
 2756 0147 66732C20 		.ascii	"fs, parse time %.3fs\012\000"
 2756      70617273 
 2756      65207469 
 2756      6D652025 
 2756      2E336673 
 2757 015d 000000   		.space	3
 2758              	.LC21:
 2759 0160 4572726F 		.ascii	"Error: Failed to read footer from G-Code file \"%s\""
 2759      723A2046 
 2759      61696C65 
 2759      6420746F 
 2759      20726561 
 2760 0192 0A00     		.ascii	"\012\000"
 2761              	.LC22:
 2762 0194 466F6F74 		.ascii	"Footer complete, processed %lu bytes, read time %.3"
 2762      65722063 
 2762      6F6D706C 
 2762      6574652C 
 2762      2070726F 
 2763 01c7 66732C20 		.ascii	"fs, parse time %.3fs, seek time %.3fs\012\000"
 2763      70617273 
 2763      65207469 
 2763      6D652025 
 2763      2E336673 
 2764 01ee 0000     		.space	2
 2765              	.LC23:
 2766 01f0 4572726F 		.ascii	"Error: Could not seek from end of file!\012\000"
 2766      723A2043 
 2766      6F756C64 
 2766      206E6F74 
 2766      20736565 
 2767 0219 000000   		.space	3
 2768              	.LC24:
 2769 021c 303A2F67 		.ascii	"0:/gcodes/\000"
 2769      636F6465 
 2769      732F00
 2770 0227 00       		.space	1
 2771              	.LC25:
 2772 0228 303A00   		.ascii	"0:\000"
 2773 022b 00       		.space	1
 2774              	.LC26:
 2775 022c 7B226572 		.ascii	"{\"err\":0,\"size\":%lu,\000"
 2775      72223A30 
 2775      2C227369 
 2775      7A65223A 
 2775      256C752C 
 2776 0241 000000   		.space	3
 2777              	.LC27:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 51


 2778 0244 226C6173 		.ascii	"\"lastModified\":\"%04u-%02u-%02uT%02u:%02u:%02u\","
 2778      744D6F64 
 2778      69666965 
 2778      64223A22 
 2778      25303475 
 2779 0273 00       		.ascii	"\000"
 2780              	.LC28:
 2781 0274 22686569 		.ascii	"\"height\":%.2f,\"firstLayerHeight\":%.2f,\"layerHe"
 2781      67687422 
 2781      3A252E32 
 2781      662C2266 
 2781      69727374 
 2782 02a2 69676874 		.ascii	"ight\":%.2f,\"filament\":\000"
 2782      223A252E 
 2782      32662C22 
 2782      66696C61 
 2782      6D656E74 
 2783 02b9 000000   		.space	3
 2784              	.LC29:
 2785 02bc 2563252E 		.ascii	"%c%.1f\000"
 2785      316600
 2786 02c3 00       		.space	1
 2787              	.LC30:
 2788 02c4 5D2C2267 		.ascii	"],\"generatedBy\":\000"
 2788      656E6572 
 2788      61746564 
 2788      4279223A 
 2788      00
 2789 02d5 000000   		.space	3
 2790              	.LC31:
 2791 02d8 7D00     		.ascii	"}\000"
 2792 02da 0000     		.space	2
 2793              	.LC32:
 2794 02dc 7B226572 		.ascii	"{\"err\":1}\000"
 2794      72223A31 
 2794      7D00
 2795 02e6 0000     		.space	2
 2796              	.LC33:
 2797 02e8 2C227072 		.ascii	",\"printDuration\":%d,\"fileName\":\000"
 2797      696E7444 
 2797      75726174 
 2797      696F6E22 
 2797      3A25642C 
 2798              	.LC34:
 2799 0308 7B226572 		.ascii	"{\"err\":0,\"size\":%lu,\"height\":%.2f,\"firstLaye"
 2799      72223A30 
 2799      2C227369 
 2799      7A65223A 
 2799      256C752C 
 2800 0334 72486569 		.ascii	"rHeight\":%.2f,\"layerHeight\":%.2f,\"filament\":\000"
 2800      67687422 
 2800      3A252E32 
 2800      662C226C 
 2800      61796572 
 2801 0361 000000   		.space	3
 2802              	.LC35:
 2803 0364 6C617965 		.ascii	"layer_height\000"
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccjtiCBn.s 			page 52


 2803      725F6865 
 2803      69676874 
 2803      00
 2804 0371 000000   		.space	3
 2805              	.LC36:
 2806 0374 4C617965 		.ascii	"Layer height\000"
 2806      72206865 
 2806      69676874 
 2806      00
 2807 0381 000000   		.space	3
 2808              	.LC37:
 2809 0384 6C617965 		.ascii	"layerHeight\000"
 2809      72486569 
 2809      67687400 
 2810              	.LC38:
 2811 0390 6C617965 		.ascii	"layer_thickness_mm\000"
 2811      725F7468 
 2811      69636B6E 
 2811      6573735F 
 2811      6D6D00
 2812 03a3 00       		.space	1
 2813              	.LC39:
 2814 03a4 6C617965 		.ascii	"layerThickness\000"
 2814      72546869 
 2814      636B6E65 
 2814      737300
 2815 03b3 00       		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 2816              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 2817              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 2818              	_ZL28cpu_irq_prev_interrupt_state:
 2819 0000 00       		.space	1
 2820              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 2821              		.align	2
 2822              		.type	_ZL32cpu_irq_critical_section_counter, %object
 2823              		.size	_ZL32cpu_irq_critical_section_counter, 4
 2824              	_ZL32cpu_irq_critical_section_counter:
 2825 0000 00000000 		.space	4
 2826              		.section	.rodata._ZZNK12PrintMonitor15FindLayerHeightEPKcjRfE18layerHeightStrings,"a",%progbits
 2827              		.align	2
 2828              		.set	.LANCHOR0,. + 0
 2829              		.type	_ZZNK12PrintMonitor15FindLayerHeightEPKcjRfE18layerHeightStrings, %object
 2830              		.size	_ZZNK12PrintMonitor15FindLayerHeightEPKcjRfE18layerHeightStrings, 20
 2831              	_ZZNK12PrintMonitor15FindLayerHeightEPKcjRfE18layerHeightStrings:
 2832 0000 64030000 		.word	.LC35
 2833 0004 74030000 		.word	.LC36
 2834 0008 84030000 		.word	.LC37
 2835 000c 90030000 		.word	.LC38
 2836 0010 A4030000 		.word	.LC39
 2837              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
