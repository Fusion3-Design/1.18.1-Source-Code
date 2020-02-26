ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXU9mMK.s 			page 1


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
  15              		.file	"Heat.cpp"
  16              		.section	.text._ZN4HeatC2EP8Platform,"ax",%progbits
  17              		.align	2
  18              		.global	_ZN4HeatC2EP8Platform
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN4HeatC2EP8Platform, %function
  22              	_ZN4HeatC2EP8Platform:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  26 0002 0024     		movs	r4, #0
  27 0004 FF23     		movs	r3, #255
  28 0006 0646     		mov	r6, r0
  29 0008 0160     		str	r1, [r0]
  30 000a 80F82C40 		strb	r4, [r0, #44]
  31 000e 80F82D40 		strb	r4, [r0, #45]
  32 0012 80F82E40 		strb	r4, [r0, #46]
  33 0016 80F82F30 		strb	r3, [r0, #47]
  34 001a 80F83030 		strb	r3, [r0, #48]
  35 001e 80F83130 		strb	r3, [r0, #49]
  36 0022 051F     		subs	r5, r0, #4
  37              	.L3:
  38 0024 7820     		movs	r0, #120
  39 0026 FFF7FEFF 		bl	_Znwj
  40 002a 0435     		adds	r5, r5, #4
  41 002c 62B2     		sxtb	r2, r4
  42 002e 3168     		ldr	r1, [r6]
  43 0030 0134     		adds	r4, r4, #1
  44 0032 0746     		mov	r7, r0
  45 0034 FFF7FEFF 		bl	_ZN3PIDC1EP8Platforma
  46 0038 082C     		cmp	r4, #8
  47 003a 6F60     		str	r7, [r5, #4]
  48 003c F2D1     		bne	.L3
  49 003e 3046     		mov	r0, r6
  50 0040 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  51              		.size	_ZN4HeatC2EP8Platform, .-_ZN4HeatC2EP8Platform
  52              		.global	_ZN4HeatC1EP8Platform
  53              		.thumb_set _ZN4HeatC1EP8Platform,_ZN4HeatC2EP8Platform
  54 0042 00BF     		.section	.text._ZN4Heat17ResetHeaterModelsEv,"ax",%progbits
  55              		.align	2
  56              		.global	_ZN4Heat17ResetHeaterModelsEv
  57              		.thumb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXU9mMK.s 			page 2


  58              		.thumb_func
  59              		.type	_ZN4Heat17ResetHeaterModelsEv, %function
  60              	_ZN4Heat17ResetHeaterModelsEv:
  61              		@ args = 0, pretend = 0, frame = 0
  62              		@ frame_needed = 0, uses_anonymous_args = 0
  63 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
  64 0004 051F     		subs	r5, r0, #4
  65 0006 83B0     		sub	sp, sp, #12
  66 0008 0024     		movs	r4, #0
  67 000a 4FF07E58 		mov	r8, #1065353216
  68 000e 4FF00109 		mov	r9, #1
  69              	.L10:
  70 0012 0435     		adds	r5, r5, #4
  71 0014 6E68     		ldr	r6, [r5, #4]
  72 0016 0E49     		ldr	r1, .L15
  73 0018 96F84070 		ldrb	r7, [r6, #64]	@ zero_extendqisi2
  74 001c 0D4A     		ldr	r2, .L15+4
  75 001e 0E4B     		ldr	r3, .L15+8
  76 0020 3046     		mov	r0, r6
  77 0022 37B1     		cbz	r7, .L6
  78 0024 CDF80080 		str	r8, [sp]	@ float
  79 0028 4CB1     		cbz	r4, .L14
  80 002a CDF80490 		str	r9, [sp, #4]
  81 002e FFF7FEFF 		bl	_ZN3PID8SetModelEffffb
  82              	.L6:
  83 0032 0134     		adds	r4, r4, #1
  84 0034 082C     		cmp	r4, #8
  85 0036 ECD1     		bne	.L10
  86 0038 03B0     		add	sp, sp, #12
  87              		@ sp needed
  88 003a BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
  89              	.L14:
  90 003e 0194     		str	r4, [sp, #4]
  91 0040 0649     		ldr	r1, .L15+12
  92 0042 074A     		ldr	r2, .L15+16
  93 0044 074B     		ldr	r3, .L15+20
  94 0046 FFF7FEFF 		bl	_ZN3PID8SetModelEffffb
  95 004a 0124     		movs	r4, #1
  96 004c E1E7     		b	.L10
  97              	.L16:
  98 004e 00BF     		.align	2
  99              	.L15:
 100 0050 0000AA43 		.word	1135214592
 101 0054 00000C43 		.word	1124859904
 102 0058 0000B040 		.word	1085276160
 103 005c 0000B442 		.word	1119092736
 104 0060 00002F44 		.word	1143930880
 105 0064 00002041 		.word	1092616192
 106              		.size	_ZN4Heat17ResetHeaterModelsEv, .-_ZN4Heat17ResetHeaterModelsEv
 107              		.section	.text._ZN4Heat4InitEv,"ax",%progbits
 108              		.align	2
 109              		.global	_ZN4Heat4InitEv
 110              		.thumb
 111              		.thumb_func
 112              		.type	_ZN4Heat4InitEv, %function
 113              	_ZN4Heat4InitEv:
 114              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXU9mMK.s 			page 3


 115              		@ frame_needed = 0, uses_anonymous_args = 0
 116 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 117 0004 194F     		ldr	r7, .L23
 118 0006 DFF88080 		ldr	r8, .L23+28
 119 000a 82B0     		sub	sp, sp, #8
 120 000c 0646     		mov	r6, r0
 121 000e 0024     		movs	r4, #0
 122              	.L21:
 123 0010 0125     		movs	r5, #1
 124 0012 FCB1     		cbz	r4, .L22
 125              	.L18:
 126 0014 06EB8403 		add	r3, r6, r4, lsl #2
 127 0018 1549     		ldr	r1, .L23+4
 128 001a 5868     		ldr	r0, [r3, #4]
 129 001c 154A     		ldr	r2, .L23+8
 130 001e 0097     		str	r7, [sp]	@ float
 131 0020 0195     		str	r5, [sp, #4]
 132 0022 0134     		adds	r4, r4, #1
 133 0024 144B     		ldr	r3, .L23+12
 134 0026 FFF7FEFF 		bl	_ZN3PID4InitEffffb
 135 002a 082C     		cmp	r4, #8
 136 002c F0D1     		bne	.L21
 137 002e FFF7FEFF 		bl	millis
 138 0032 3368     		ldr	r3, [r6]
 139 0034 D3F80C27 		ldr	r2, [r3, #1804]
 140 0038 801A     		subs	r0, r0, r2
 141 003a 7062     		str	r0, [r6, #36]
 142 003c 1846     		mov	r0, r3
 143 003e FFF7FEFF 		bl	_ZN8Platform4TimeEv
 144 0042 0023     		movs	r3, #0
 145 0044 B062     		str	r0, [r6, #40]	@ float
 146 0046 86F82C50 		strb	r5, [r6, #44]
 147 004a 86F82D30 		strb	r3, [r6, #45]
 148 004e 02B0     		add	sp, sp, #8
 149              		@ sp needed
 150 0050 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 151              	.L22:
 152 0054 7068     		ldr	r0, [r6, #4]
 153 0056 0949     		ldr	r1, .L23+16
 154 0058 0194     		str	r4, [sp, #4]
 155 005a CDF80080 		str	r8, [sp]	@ float
 156 005e 084A     		ldr	r2, .L23+20
 157 0060 084B     		ldr	r3, .L23+24
 158 0062 FFF7FEFF 		bl	_ZN3PID4InitEffffb
 159 0066 2C46     		mov	r4, r5
 160 0068 D4E7     		b	.L18
 161              	.L24:
 162 006a 00BF     		.align	2
 163              	.L23:
 164 006c 00008343 		.word	1132658688
 165 0070 0000AA43 		.word	1135214592
 166 0074 00000C43 		.word	1124859904
 167 0078 0000B040 		.word	1085276160
 168 007c 0000B442 		.word	1119092736
 169 0080 00002F44 		.word	1143930880
 170 0084 00002041 		.word	1092616192
 171 0088 0000FA42 		.word	1123680256
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXU9mMK.s 			page 4


 172              		.size	_ZN4Heat4InitEv, .-_ZN4Heat4InitEv
 173              		.section	.text._ZN4Heat4ExitEv,"ax",%progbits
 174              		.align	2
 175              		.global	_ZN4Heat4ExitEv
 176              		.thumb
 177              		.thumb_func
 178              		.type	_ZN4Heat4ExitEv, %function
 179              	_ZN4Heat4ExitEv:
 180              		@ args = 0, pretend = 0, frame = 0
 181              		@ frame_needed = 0, uses_anonymous_args = 0
 182 0000 38B5     		push	{r3, r4, r5, lr}
 183 0002 0546     		mov	r5, r0
 184 0004 0024     		movs	r4, #0
 185              	.L27:
 186 0006 2B19     		adds	r3, r5, r4
 187 0008 0434     		adds	r4, r4, #4
 188 000a 5868     		ldr	r0, [r3, #4]
 189 000c FFF7FEFF 		bl	_ZN3PID9SwitchOffEv
 190 0010 202C     		cmp	r4, #32
 191 0012 F8D1     		bne	.L27
 192 0014 2868     		ldr	r0, [r5]
 193 0016 044A     		ldr	r2, .L28
 194 0018 0221     		movs	r1, #2
 195 001a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 196 001e 0023     		movs	r3, #0
 197 0020 85F82C30 		strb	r3, [r5, #44]
 198 0024 38BD     		pop	{r3, r4, r5, pc}
 199              	.L29:
 200 0026 00BF     		.align	2
 201              	.L28:
 202 0028 00000000 		.word	.LC0
 203              		.size	_ZN4Heat4ExitEv, .-_ZN4Heat4ExitEv
 204              		.section	.text._ZN4Heat4SpinEv,"ax",%progbits
 205              		.align	2
 206              		.global	_ZN4Heat4SpinEv
 207              		.thumb
 208              		.thumb_func
 209              		.type	_ZN4Heat4SpinEv, %function
 210              	_ZN4Heat4SpinEv:
 211              		@ args = 0, pretend = 0, frame = 0
 212              		@ frame_needed = 0, uses_anonymous_args = 0
 213 0000 38B5     		push	{r3, r4, r5, lr}
 214 0002 90F82C30 		ldrb	r3, [r0, #44]	@ zero_extendqisi2
 215 0006 0546     		mov	r5, r0
 216 0008 33B9     		cbnz	r3, .L31
 217              	.L38:
 218 000a 2868     		ldr	r0, [r5]
 219              	.L32:
 220 000c 05F12801 		add	r1, r5, #40
 221 0010 BDE83840 		pop	{r3, r4, r5, lr}
 222 0014 FFF7FEBF 		b	_ZN8Platform11ClassReportERf
 223              	.L31:
 224 0018 FFF7FEFF 		bl	millis
 225 001c 0346     		mov	r3, r0
 226 001e 2868     		ldr	r0, [r5]
 227 0020 696A     		ldr	r1, [r5, #36]
 228 0022 D0F80C27 		ldr	r2, [r0, #1804]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXU9mMK.s 			page 5


 229 0026 591A     		subs	r1, r3, r1
 230 0028 9142     		cmp	r1, r2
 231 002a EFD3     		bcc	.L32
 232 002c 6B62     		str	r3, [r5, #36]
 233 002e 0024     		movs	r4, #0
 234              	.L34:
 235 0030 2B19     		adds	r3, r5, r4
 236 0032 0434     		adds	r4, r4, #4
 237 0034 5868     		ldr	r0, [r3, #4]
 238 0036 FFF7FEFF 		bl	_ZN3PID4SpinEv
 239 003a 202C     		cmp	r4, #32
 240 003c F8D1     		bne	.L34
 241 003e 95F83020 		ldrb	r2, [r5, #48]	@ zero_extendqisi2
 242 0042 53B2     		sxtb	r3, r2
 243 0044 591C     		adds	r1, r3, #1
 244 0046 E0D0     		beq	.L38
 245 0048 05EB8303 		add	r3, r5, r3, lsl #2
 246 004c 5B68     		ldr	r3, [r3, #4]
 247 004e 93F87430 		ldrb	r3, [r3, #116]	@ zero_extendqisi2
 248 0052 042B     		cmp	r3, #4
 249 0054 D9D8     		bhi	.L38
 250 0056 FF23     		movs	r3, #255
 251 0058 85F83120 		strb	r2, [r5, #49]
 252 005c 85F83030 		strb	r3, [r5, #48]
 253 0060 D3E7     		b	.L38
 254              		.size	_ZN4Heat4SpinEv, .-_ZN4Heat4SpinEv
 255              		.global	__aeabi_f2d
 256 0062 00BF     		.section	.text._ZN4Heat11DiagnosticsE11MessageType,"ax",%progbits
 257              		.align	2
 258              		.global	_ZN4Heat11DiagnosticsE11MessageType
 259              		.thumb
 260              		.thumb_func
 261              		.type	_ZN4Heat11DiagnosticsE11MessageType, %function
 262              	_ZN4Heat11DiagnosticsE11MessageType:
 263              		@ args = 0, pretend = 0, frame = 0
 264              		@ frame_needed = 0, uses_anonymous_args = 0
 265 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 266 0004 0646     		mov	r6, r0
 267 0006 82B0     		sub	sp, sp, #8
 268 0008 96F92F40 		ldrsb	r4, [r6, #47]
 269 000c 0068     		ldr	r0, [r0]
 270 000e 96F92E30 		ldrsb	r3, [r6, #46]
 271 0012 114A     		ldr	r2, .L47
 272 0014 0094     		str	r4, [sp]
 273 0016 8846     		mov	r8, r1
 274 0018 351F     		subs	r5, r6, #4
 275 001a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 276 001e 0024     		movs	r4, #0
 277 0020 02E0     		b	.L42
 278              	.L40:
 279 0022 0134     		adds	r4, r4, #1
 280 0024 082C     		cmp	r4, #8
 281 0026 14D0     		beq	.L46
 282              	.L42:
 283 0028 0435     		adds	r5, r5, #4
 284 002a 6B68     		ldr	r3, [r5, #4]
 285 002c 93F87520 		ldrb	r2, [r3, #117]	@ zero_extendqisi2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXU9mMK.s 			page 6


 286 0030 002A     		cmp	r2, #0
 287 0032 F6D0     		beq	.L40
 288 0034 D86D     		ldr	r0, [r3, #92]	@ float
 289 0036 3768     		ldr	r7, [r6]
 290 0038 FFF7FEFF 		bl	__aeabi_f2d
 291 003c 2346     		mov	r3, r4
 292 003e CDE90001 		strd	r0, [sp]
 293 0042 064A     		ldr	r2, .L47+4
 294 0044 3846     		mov	r0, r7
 295 0046 4146     		mov	r1, r8
 296 0048 0134     		adds	r4, r4, #1
 297 004a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 298 004e 082C     		cmp	r4, #8
 299 0050 EAD1     		bne	.L42
 300              	.L46:
 301 0052 02B0     		add	sp, sp, #8
 302              		@ sp needed
 303 0054 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 304              	.L48:
 305              		.align	2
 306              	.L47:
 307 0058 14000000 		.word	.LC1
 308 005c 48000000 		.word	.LC2
 309              		.size	_ZN4Heat11DiagnosticsE11MessageType, .-_ZN4Heat11DiagnosticsE11MessageType
 310              		.section	.text._ZNK4Heat22HeaterAtSetTemperatureEab,"ax",%progbits
 311              		.align	2
 312              		.global	_ZNK4Heat22HeaterAtSetTemperatureEab
 313              		.thumb
 314              		.thumb_func
 315              		.type	_ZNK4Heat22HeaterAtSetTemperatureEab, %function
 316              	_ZNK4Heat22HeaterAtSetTemperatureEab:
 317              		@ args = 0, pretend = 0, frame = 0
 318              		@ frame_needed = 0, uses_anonymous_args = 0
 319              		@ link register save eliminated.
 320 0000 CBB2     		uxtb	r3, r1
 321 0002 072B     		cmp	r3, #7
 322 0004 06D8     		bhi	.L57
 323 0006 00EB8101 		add	r1, r0, r1, lsl #2
 324 000a 4B68     		ldr	r3, [r1, #4]
 325 000c 93F87410 		ldrb	r1, [r3, #116]	@ zero_extendqisi2
 326 0010 0129     		cmp	r1, #1
 327 0012 01D8     		bhi	.L61
 328              	.L57:
 329 0014 0120     		movs	r0, #1
 330 0016 7047     		bx	lr
 331              	.L61:
 332 0018 93F87510 		ldrb	r1, [r3, #117]	@ zero_extendqisi2
 333 001c 93ED067A 		flds	s14, [r3, #24]
 334 0020 D9B9     		cbnz	r1, .L62
 335 0022 D3ED027A 		flds	s15, [r3, #8]
 336              	.L52:
 337 0026 DFED0F6A 		flds	s13, .L63
 338 002a F4EEE67A 		fcmpes	s15, s13
 339 002e F1EE10FA 		fmstat
 340 0032 EFD4     		bmi	.L57
 341 0034 37EE676A 		fsubs	s12, s14, s15
 342 0038 F0EE046A 		fconsts	s13, #4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXU9mMK.s 			page 7


 343 003c B0EEC66A 		fabss	s12, s12
 344 0040 B4EEE66A 		fcmpes	s12, s13
 345 0044 F1EE10FA 		fmstat
 346 0048 E4D9     		bls	.L57
 347 004a F4EEC77A 		fcmpes	s15, s14
 348 004e F1EE10FA 		fmstat
 349 0052 05D5     		bpl	.L60
 350 0054 82F00100 		eor	r0, r2, #1
 351 0058 7047     		bx	lr
 352              	.L62:
 353 005a D3ED017A 		flds	s15, [r3, #4]
 354 005e E2E7     		b	.L52
 355              	.L60:
 356 0060 0020     		movs	r0, #0
 357 0062 7047     		bx	lr
 358              	.L64:
 359              		.align	2
 360              	.L63:
 361 0064 00002042 		.word	1109393408
 362              		.size	_ZNK4Heat22HeaterAtSetTemperatureEab, .-_ZNK4Heat22HeaterAtSetTemperatureEab
 363              		.section	.text._ZNK4Heat27AllHeatersAtSetTemperaturesEb,"ax",%progbits
 364              		.align	2
 365              		.global	_ZNK4Heat27AllHeatersAtSetTemperaturesEb
 366              		.thumb
 367              		.thumb_func
 368              		.type	_ZNK4Heat27AllHeatersAtSetTemperaturesEb, %function
 369              	_ZNK4Heat27AllHeatersAtSetTemperaturesEb:
 370              		@ args = 0, pretend = 0, frame = 0
 371              		@ frame_needed = 0, uses_anonymous_args = 0
 372 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 373 0002 0646     		mov	r6, r0
 374 0004 0F46     		mov	r7, r1
 375 0006 0024     		movs	r4, #0
 376              	.L68:
 377 0008 65B2     		sxtb	r5, r4
 378 000a 2946     		mov	r1, r5
 379 000c 3046     		mov	r0, r6
 380 000e 0122     		movs	r2, #1
 381 0010 0134     		adds	r4, r4, #1
 382 0012 FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
 383 0016 20B9     		cbnz	r0, .L66
 384 0018 3FB9     		cbnz	r7, .L70
 385 001a 96F92E30 		ldrsb	r3, [r6, #46]
 386 001e AB42     		cmp	r3, r5
 387 0020 04D1     		bne	.L71
 388              	.L66:
 389 0022 082C     		cmp	r4, #8
 390 0024 F0D1     		bne	.L68
 391 0026 0120     		movs	r0, #1
 392 0028 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 393              	.L70:
 394 002a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 395              	.L71:
 396 002c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 397              		.size	_ZNK4Heat27AllHeatersAtSetTemperaturesEb, .-_ZNK4Heat27AllHeatersAtSetTemperaturesEb
 398 002e 00BF     		.section	.text._ZNK4Heat9GetStatusEa,"ax",%progbits
 399              		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXU9mMK.s 			page 8


 400              		.global	_ZNK4Heat9GetStatusEa
 401              		.thumb
 402              		.thumb_func
 403              		.type	_ZNK4Heat9GetStatusEa, %function
 404              	_ZNK4Heat9GetStatusEa:
 405              		@ args = 0, pretend = 0, frame = 0
 406              		@ frame_needed = 0, uses_anonymous_args = 0
 407              		@ link register save eliminated.
 408 0000 CBB2     		uxtb	r3, r1
 409 0002 072B     		cmp	r3, #7
 410 0004 0DD8     		bhi	.L76
 411 0006 00EB8101 		add	r1, r0, r1, lsl #2
 412 000a 4A68     		ldr	r2, [r1, #4]
 413 000c 92F87430 		ldrb	r3, [r2, #116]	@ zero_extendqisi2
 414 0010 2BB1     		cbz	r3, .L75
 415 0012 012B     		cmp	r3, #1
 416 0014 05D0     		beq	.L76
 417 0016 042B     		cmp	r3, #4
 418 0018 05D9     		bls	.L79
 419 001a 0420     		movs	r0, #4
 420 001c 7047     		bx	lr
 421              	.L75:
 422 001e 0320     		movs	r0, #3
 423 0020 7047     		bx	lr
 424              	.L76:
 425 0022 0020     		movs	r0, #0
 426 0024 7047     		bx	lr
 427              	.L79:
 428 0026 92F87530 		ldrb	r3, [r2, #117]	@ zero_extendqisi2
 429 002a 002B     		cmp	r3, #0
 430 002c 0CBF     		ite	eq
 431 002e 0120     		moveq	r0, #1
 432 0030 0220     		movne	r0, #2
 433 0032 7047     		bx	lr
 434              		.size	_ZNK4Heat9GetStatusEa, .-_ZNK4Heat9GetStatusEa
 435              		.section	.text._ZN4Heat20SetActiveTemperatureEaf,"ax",%progbits
 436              		.align	2
 437              		.global	_ZN4Heat20SetActiveTemperatureEaf
 438              		.thumb
 439              		.thumb_func
 440              		.type	_ZN4Heat20SetActiveTemperatureEaf, %function
 441              	_ZN4Heat20SetActiveTemperatureEaf:
 442              		@ args = 0, pretend = 0, frame = 0
 443              		@ frame_needed = 0, uses_anonymous_args = 0
 444              		@ link register save eliminated.
 445 0000 CBB2     		uxtb	r3, r1
 446 0002 072B     		cmp	r3, #7
 447 0004 00D9     		bls	.L82
 448 0006 7047     		bx	lr
 449              	.L82:
 450 0008 00EB8100 		add	r0, r0, r1, lsl #2
 451 000c 1146     		mov	r1, r2	@ float
 452 000e 4068     		ldr	r0, [r0, #4]
 453 0010 FFF7FEBF 		b	_ZN3PID20SetActiveTemperatureEf
 454              		.size	_ZN4Heat20SetActiveTemperatureEaf, .-_ZN4Heat20SetActiveTemperatureEaf
 455              		.section	.text._ZNK4Heat20GetActiveTemperatureEa,"ax",%progbits
 456              		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXU9mMK.s 			page 9


 457              		.global	_ZNK4Heat20GetActiveTemperatureEa
 458              		.thumb
 459              		.thumb_func
 460              		.type	_ZNK4Heat20GetActiveTemperatureEa, %function
 461              	_ZNK4Heat20GetActiveTemperatureEa:
 462              		@ args = 0, pretend = 0, frame = 0
 463              		@ frame_needed = 0, uses_anonymous_args = 0
 464              		@ link register save eliminated.
 465 0000 CBB2     		uxtb	r3, r1
 466 0002 072B     		cmp	r3, #7
 467 0004 9DBF     		ittte	ls
 468 0006 00EB8101 		addls	r1, r0, r1, lsl #2
 469 000a 4B68     		ldrls	r3, [r1, #4]
 470 000c 5868     		ldrls	r0, [r3, #4]	@ float
 471 000e 0148     		ldrhi	r0, .L86
 472 0010 7047     		bx	lr
 473              	.L87:
 474 0012 00BF     		.align	2
 475              	.L86:
 476 0014 339388C3 		.word	-1014459597
 477              		.size	_ZNK4Heat20GetActiveTemperatureEa, .-_ZNK4Heat20GetActiveTemperatureEa
 478              		.section	.text._ZN4Heat21SetStandbyTemperatureEaf,"ax",%progbits
 479              		.align	2
 480              		.global	_ZN4Heat21SetStandbyTemperatureEaf
 481              		.thumb
 482              		.thumb_func
 483              		.type	_ZN4Heat21SetStandbyTemperatureEaf, %function
 484              	_ZN4Heat21SetStandbyTemperatureEaf:
 485              		@ args = 0, pretend = 0, frame = 0
 486              		@ frame_needed = 0, uses_anonymous_args = 0
 487              		@ link register save eliminated.
 488 0000 CBB2     		uxtb	r3, r1
 489 0002 072B     		cmp	r3, #7
 490 0004 00D9     		bls	.L90
 491 0006 7047     		bx	lr
 492              	.L90:
 493 0008 00EB8100 		add	r0, r0, r1, lsl #2
 494 000c 1146     		mov	r1, r2	@ float
 495 000e 4068     		ldr	r0, [r0, #4]
 496 0010 FFF7FEBF 		b	_ZN3PID21SetStandbyTemperatureEf
 497              		.size	_ZN4Heat21SetStandbyTemperatureEaf, .-_ZN4Heat21SetStandbyTemperatureEaf
 498              		.section	.text._ZNK4Heat21GetStandbyTemperatureEa,"ax",%progbits
 499              		.align	2
 500              		.global	_ZNK4Heat21GetStandbyTemperatureEa
 501              		.thumb
 502              		.thumb_func
 503              		.type	_ZNK4Heat21GetStandbyTemperatureEa, %function
 504              	_ZNK4Heat21GetStandbyTemperatureEa:
 505              		@ args = 0, pretend = 0, frame = 0
 506              		@ frame_needed = 0, uses_anonymous_args = 0
 507              		@ link register save eliminated.
 508 0000 CBB2     		uxtb	r3, r1
 509 0002 072B     		cmp	r3, #7
 510 0004 9DBF     		ittte	ls
 511 0006 00EB8101 		addls	r1, r0, r1, lsl #2
 512 000a 4B68     		ldrls	r3, [r1, #4]
 513 000c 9868     		ldrls	r0, [r3, #8]	@ float
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXU9mMK.s 			page 10


 514 000e 0148     		ldrhi	r0, .L94
 515 0010 7047     		bx	lr
 516              	.L95:
 517 0012 00BF     		.align	2
 518              	.L94:
 519 0014 339388C3 		.word	-1014459597
 520              		.size	_ZNK4Heat21GetStandbyTemperatureEa, .-_ZNK4Heat21GetStandbyTemperatureEa
 521              		.section	.text._ZN4Heat19SetTemperatureLimitEaf,"ax",%progbits
 522              		.align	2
 523              		.global	_ZN4Heat19SetTemperatureLimitEaf
 524              		.thumb
 525              		.thumb_func
 526              		.type	_ZN4Heat19SetTemperatureLimitEaf, %function
 527              	_ZN4Heat19SetTemperatureLimitEaf:
 528              		@ args = 0, pretend = 0, frame = 0
 529              		@ frame_needed = 0, uses_anonymous_args = 0
 530              		@ link register save eliminated.
 531 0000 CBB2     		uxtb	r3, r1
 532 0002 072B     		cmp	r3, #7
 533 0004 03D8     		bhi	.L96
 534 0006 00EB8101 		add	r1, r0, r1, lsl #2
 535 000a 4B68     		ldr	r3, [r1, #4]
 536 000c DA60     		str	r2, [r3, #12]	@ float
 537              	.L96:
 538 000e 7047     		bx	lr
 539              		.size	_ZN4Heat19SetTemperatureLimitEaf, .-_ZN4Heat19SetTemperatureLimitEaf
 540              		.section	.text._ZNK4Heat19GetTemperatureLimitEa,"ax",%progbits
 541              		.align	2
 542              		.global	_ZNK4Heat19GetTemperatureLimitEa
 543              		.thumb
 544              		.thumb_func
 545              		.type	_ZNK4Heat19GetTemperatureLimitEa, %function
 546              	_ZNK4Heat19GetTemperatureLimitEa:
 547              		@ args = 0, pretend = 0, frame = 0
 548              		@ frame_needed = 0, uses_anonymous_args = 0
 549              		@ link register save eliminated.
 550 0000 CBB2     		uxtb	r3, r1
 551 0002 072B     		cmp	r3, #7
 552 0004 9DBF     		ittte	ls
 553 0006 00EB8101 		addls	r1, r0, r1, lsl #2
 554 000a 4B68     		ldrls	r3, [r1, #4]
 555 000c D868     		ldrls	r0, [r3, #12]	@ float
 556 000e 0148     		ldrhi	r0, .L101
 557 0010 7047     		bx	lr
 558              	.L102:
 559 0012 00BF     		.align	2
 560              	.L101:
 561 0014 339388C3 		.word	-1014459597
 562              		.size	_ZNK4Heat19GetTemperatureLimitEa, .-_ZNK4Heat19GetTemperatureLimitEa
 563              		.section	.text._ZNK4Heat14GetTemperatureEa,"ax",%progbits
 564              		.align	2
 565              		.global	_ZNK4Heat14GetTemperatureEa
 566              		.thumb
 567              		.thumb_func
 568              		.type	_ZNK4Heat14GetTemperatureEa, %function
 569              	_ZNK4Heat14GetTemperatureEa:
 570              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXU9mMK.s 			page 11


 571              		@ frame_needed = 0, uses_anonymous_args = 0
 572              		@ link register save eliminated.
 573 0000 CBB2     		uxtb	r3, r1
 574 0002 072B     		cmp	r3, #7
 575 0004 9DBF     		ittte	ls
 576 0006 00EB8101 		addls	r1, r0, r1, lsl #2
 577 000a 4B68     		ldrls	r3, [r1, #4]
 578 000c 9869     		ldrls	r0, [r3, #24]	@ float
 579 000e 0148     		ldrhi	r0, .L106
 580 0010 7047     		bx	lr
 581              	.L107:
 582 0012 00BF     		.align	2
 583              	.L106:
 584 0014 339388C3 		.word	-1014459597
 585              		.size	_ZNK4Heat14GetTemperatureEa, .-_ZNK4Heat14GetTemperatureEa
 586              		.section	.text._ZN4Heat8ActivateEa,"ax",%progbits
 587              		.align	2
 588              		.global	_ZN4Heat8ActivateEa
 589              		.thumb
 590              		.thumb_func
 591              		.type	_ZN4Heat8ActivateEa, %function
 592              	_ZN4Heat8ActivateEa:
 593              		@ args = 0, pretend = 0, frame = 0
 594              		@ frame_needed = 0, uses_anonymous_args = 0
 595              		@ link register save eliminated.
 596 0000 CBB2     		uxtb	r3, r1
 597 0002 072B     		cmp	r3, #7
 598 0004 00D9     		bls	.L110
 599 0006 7047     		bx	lr
 600              	.L110:
 601 0008 00EB8101 		add	r1, r0, r1, lsl #2
 602 000c 4868     		ldr	r0, [r1, #4]
 603 000e FFF7FEBF 		b	_ZN3PID8ActivateEv
 604              		.size	_ZN4Heat8ActivateEa, .-_ZN4Heat8ActivateEa
 605 0012 00BF     		.section	.text._ZN4Heat9SwitchOffEa,"ax",%progbits
 606              		.align	2
 607              		.global	_ZN4Heat9SwitchOffEa
 608              		.thumb
 609              		.thumb_func
 610              		.type	_ZN4Heat9SwitchOffEa, %function
 611              	_ZN4Heat9SwitchOffEa:
 612              		@ args = 0, pretend = 0, frame = 0
 613              		@ frame_needed = 0, uses_anonymous_args = 0
 614              		@ link register save eliminated.
 615 0000 CBB2     		uxtb	r3, r1
 616 0002 072B     		cmp	r3, #7
 617 0004 00D9     		bls	.L113
 618 0006 7047     		bx	lr
 619              	.L113:
 620 0008 00EB8101 		add	r1, r0, r1, lsl #2
 621 000c 4868     		ldr	r0, [r1, #4]
 622 000e FFF7FEBF 		b	_ZN3PID9SwitchOffEv
 623              		.size	_ZN4Heat9SwitchOffEa, .-_ZN4Heat9SwitchOffEa
 624 0012 00BF     		.section	.text._ZN4Heat12SwitchOffAllEv,"ax",%progbits
 625              		.align	2
 626              		.global	_ZN4Heat12SwitchOffAllEv
 627              		.thumb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXU9mMK.s 			page 12


 628              		.thumb_func
 629              		.type	_ZN4Heat12SwitchOffAllEv, %function
 630              	_ZN4Heat12SwitchOffAllEv:
 631              		@ args = 0, pretend = 0, frame = 0
 632              		@ frame_needed = 0, uses_anonymous_args = 0
 633 0000 38B5     		push	{r3, r4, r5, lr}
 634 0002 0546     		mov	r5, r0
 635 0004 0024     		movs	r4, #0
 636              	.L116:
 637 0006 2B19     		adds	r3, r5, r4
 638 0008 0434     		adds	r4, r4, #4
 639 000a 5868     		ldr	r0, [r3, #4]
 640 000c FFF7FEFF 		bl	_ZN3PID9SwitchOffEv
 641 0010 202C     		cmp	r4, #32
 642 0012 F8D1     		bne	.L116
 643 0014 38BD     		pop	{r3, r4, r5, pc}
 644              		.size	_ZN4Heat12SwitchOffAllEv, .-_ZN4Heat12SwitchOffAllEv
 645 0016 00BF     		.section	.text._ZN4Heat7StandbyEa,"ax",%progbits
 646              		.align	2
 647              		.global	_ZN4Heat7StandbyEa
 648              		.thumb
 649              		.thumb_func
 650              		.type	_ZN4Heat7StandbyEa, %function
 651              	_ZN4Heat7StandbyEa:
 652              		@ args = 0, pretend = 0, frame = 0
 653              		@ frame_needed = 0, uses_anonymous_args = 0
 654              		@ link register save eliminated.
 655 0000 CBB2     		uxtb	r3, r1
 656 0002 072B     		cmp	r3, #7
 657 0004 00D9     		bls	.L119
 658 0006 7047     		bx	lr
 659              	.L119:
 660 0008 00EB8101 		add	r1, r0, r1, lsl #2
 661 000c 4868     		ldr	r0, [r1, #4]
 662 000e FFF7FEBF 		b	_ZN3PID7StandbyEv
 663              		.size	_ZN4Heat7StandbyEa, .-_ZN4Heat7StandbyEa
 664 0012 00BF     		.section	.text._ZN4Heat10ResetFaultEa,"ax",%progbits
 665              		.align	2
 666              		.global	_ZN4Heat10ResetFaultEa
 667              		.thumb
 668              		.thumb_func
 669              		.type	_ZN4Heat10ResetFaultEa, %function
 670              	_ZN4Heat10ResetFaultEa:
 671              		@ args = 0, pretend = 0, frame = 0
 672              		@ frame_needed = 0, uses_anonymous_args = 0
 673              		@ link register save eliminated.
 674 0000 CBB2     		uxtb	r3, r1
 675 0002 072B     		cmp	r3, #7
 676 0004 00D9     		bls	.L122
 677 0006 7047     		bx	lr
 678              	.L122:
 679 0008 00EB8101 		add	r1, r0, r1, lsl #2
 680 000c 4868     		ldr	r0, [r1, #4]
 681 000e FFF7FEBF 		b	_ZN3PID10ResetFaultEv
 682              		.size	_ZN4Heat10ResetFaultEa, .-_ZN4Heat10ResetFaultEa
 683 0012 00BF     		.section	.text._ZNK4Heat13GetAveragePWMEj,"ax",%progbits
 684              		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXU9mMK.s 			page 13


 685              		.global	_ZNK4Heat13GetAveragePWMEj
 686              		.thumb
 687              		.thumb_func
 688              		.type	_ZNK4Heat13GetAveragePWMEj, %function
 689              	_ZNK4Heat13GetAveragePWMEj:
 690              		@ args = 0, pretend = 0, frame = 0
 691              		@ frame_needed = 0, uses_anonymous_args = 0
 692              		@ link register save eliminated.
 693 0000 00EB8101 		add	r1, r0, r1, lsl #2
 694 0004 4868     		ldr	r0, [r1, #4]
 695 0006 FFF7FEBF 		b	_ZNK3PID13GetAveragePWMEv
 696              		.size	_ZNK4Heat13GetAveragePWMEj, .-_ZNK4Heat13GetAveragePWMEj
 697 000a 00BF     		.section	.text._ZNK4Heat17GetLastSampleTimeEj,"ax",%progbits
 698              		.align	2
 699              		.global	_ZNK4Heat17GetLastSampleTimeEj
 700              		.thumb
 701              		.thumb_func
 702              		.type	_ZNK4Heat17GetLastSampleTimeEj, %function
 703              	_ZNK4Heat17GetLastSampleTimeEj:
 704              		@ args = 0, pretend = 0, frame = 0
 705              		@ frame_needed = 0, uses_anonymous_args = 0
 706              		@ link register save eliminated.
 707 0000 00EB8101 		add	r1, r0, r1, lsl #2
 708 0004 4B68     		ldr	r3, [r1, #4]
 709 0006 D86E     		ldr	r0, [r3, #108]
 710 0008 7047     		bx	lr
 711              		.size	_ZNK4Heat17GetLastSampleTimeEj, .-_ZNK4Heat17GetLastSampleTimeEj
 712 000a 00BF     		.section	.text._ZNK4Heat10UseSlowPwmEa,"ax",%progbits
 713              		.align	2
 714              		.global	_ZNK4Heat10UseSlowPwmEa
 715              		.thumb
 716              		.thumb_func
 717              		.type	_ZNK4Heat10UseSlowPwmEa, %function
 718              	_ZNK4Heat10UseSlowPwmEa:
 719              		@ args = 0, pretend = 0, frame = 0
 720              		@ frame_needed = 0, uses_anonymous_args = 0
 721              		@ link register save eliminated.
 722 0000 90F92E30 		ldrsb	r3, [r0, #46]
 723 0004 8B42     		cmp	r3, r1
 724 0006 05D0     		beq	.L127
 725 0008 90F92F00 		ldrsb	r0, [r0, #47]
 726 000c 431A     		subs	r3, r0, r1
 727 000e 5842     		rsbs	r0, r3, #0
 728 0010 5841     		adcs	r0, r0, r3
 729 0012 7047     		bx	lr
 730              	.L127:
 731 0014 0120     		movs	r0, #1
 732 0016 7047     		bx	lr
 733              		.size	_ZNK4Heat10UseSlowPwmEa, .-_ZNK4Heat10UseSlowPwmEa
 734              		.section	.text._ZN4Heat13StartAutoTuneEjffR9StringRef,"ax",%progbits
 735              		.align	2
 736              		.global	_ZN4Heat13StartAutoTuneEjffR9StringRef
 737              		.thumb
 738              		.thumb_func
 739              		.type	_ZN4Heat13StartAutoTuneEjffR9StringRef, %function
 740              	_ZN4Heat13StartAutoTuneEjffR9StringRef:
 741              		@ args = 4, pretend = 0, frame = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXU9mMK.s 			page 14


 742              		@ frame_needed = 0, uses_anonymous_args = 0
 743              		@ link register save eliminated.
 744 0000 30B4     		push	{r4, r5}
 745 0002 90F93040 		ldrsb	r4, [r0, #48]
 746 0006 029D     		ldr	r5, [sp, #8]
 747 0008 B4F1FF3F 		cmp	r4, #-1
 748 000c 06D0     		beq	.L130
 749 000e 2846     		mov	r0, r5
 750 0010 0A46     		mov	r2, r1
 751 0012 2346     		mov	r3, r4
 752 0014 0749     		ldr	r1, .L131
 753 0016 30BC     		pop	{r4, r5}
 754 0018 FFF7FEBF 		b	_ZN9StringRef6printfEPKcz
 755              	.L130:
 756 001c 00EB8104 		add	r4, r0, r1, lsl #2
 757 0020 80F83010 		strb	r1, [r0, #48]
 758 0024 6068     		ldr	r0, [r4, #4]
 759 0026 1146     		mov	r1, r2	@ float
 760 0028 1A46     		mov	r2, r3	@ float
 761 002a 2B46     		mov	r3, r5
 762 002c 30BC     		pop	{r4, r5}
 763 002e FFF7FEBF 		b	_ZN3PID13StartAutoTuneEffR9StringRef
 764              	.L132:
 765 0032 00BF     		.align	2
 766              	.L131:
 767 0034 6C000000 		.word	.LC3
 768              		.size	_ZN4Heat13StartAutoTuneEjffR9StringRef, .-_ZN4Heat13StartAutoTuneEjffR9StringRef
 769              		.section	.text._ZNK4Heat8IsTuningEj,"ax",%progbits
 770              		.align	2
 771              		.global	_ZNK4Heat8IsTuningEj
 772              		.thumb
 773              		.thumb_func
 774              		.type	_ZNK4Heat8IsTuningEj, %function
 775              	_ZNK4Heat8IsTuningEj:
 776              		@ args = 0, pretend = 0, frame = 0
 777              		@ frame_needed = 0, uses_anonymous_args = 0
 778              		@ link register save eliminated.
 779 0000 00EB8101 		add	r1, r0, r1, lsl #2
 780 0004 4B68     		ldr	r3, [r1, #4]
 781 0006 93F87400 		ldrb	r0, [r3, #116]	@ zero_extendqisi2
 782 000a 0428     		cmp	r0, #4
 783 000c 94BF     		ite	ls
 784 000e 0020     		movls	r0, #0
 785 0010 0120     		movhi	r0, #1
 786 0012 7047     		bx	lr
 787              		.size	_ZNK4Heat8IsTuningEj, .-_ZNK4Heat8IsTuningEj
 788              		.section	.text._ZNK4Heat17GetAutoTuneStatusER9StringRef,"ax",%progbits
 789              		.align	2
 790              		.global	_ZNK4Heat17GetAutoTuneStatusER9StringRef
 791              		.thumb
 792              		.thumb_func
 793              		.type	_ZNK4Heat17GetAutoTuneStatusER9StringRef, %function
 794              	_ZNK4Heat17GetAutoTuneStatusER9StringRef:
 795              		@ args = 0, pretend = 0, frame = 0
 796              		@ frame_needed = 0, uses_anonymous_args = 0
 797              		@ link register save eliminated.
 798 0000 90F93030 		ldrsb	r3, [r0, #48]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXU9mMK.s 			page 15


 799 0004 5A1C     		adds	r2, r3, #1
 800 0006 04D0     		beq	.L137
 801              	.L135:
 802 0008 00EB8303 		add	r3, r0, r3, lsl #2
 803 000c 5868     		ldr	r0, [r3, #4]
 804 000e FFF7FEBF 		b	_ZN3PID17GetAutoTuneStatusER9StringRef
 805              	.L137:
 806 0012 90F93130 		ldrsb	r3, [r0, #49]
 807 0016 5A1C     		adds	r2, r3, #1
 808 0018 F6D1     		bne	.L135
 809 001a 0846     		mov	r0, r1
 810 001c 0149     		ldr	r1, .L138
 811 001e FFF7FEBF 		b	_ZN9StringRef4copyEPKc
 812              	.L139:
 813 0022 00BF     		.align	2
 814              	.L138:
 815 0024 B8000000 		.word	.LC4
 816              		.size	_ZNK4Heat17GetAutoTuneStatusER9StringRef, .-_ZNK4Heat17GetAutoTuneStatusER9StringRef
 817              		.section	.text._ZNK4Heat26GetHighestTemperatureLimitEv,"ax",%progbits
 818              		.align	2
 819              		.global	_ZNK4Heat26GetHighestTemperatureLimitEv
 820              		.thumb
 821              		.thumb_func
 822              		.type	_ZNK4Heat26GetHighestTemperatureLimitEv, %function
 823              	_ZNK4Heat26GetHighestTemperatureLimitEv:
 824              		@ args = 0, pretend = 0, frame = 0
 825              		@ frame_needed = 0, uses_anonymous_args = 0
 826              		@ link register save eliminated.
 827 0000 10B4     		push	{r4}
 828 0002 144B     		ldr	r3, .L150
 829 0004 DFED147A 		flds	s15, .L150+4
 830 0008 D98D     		ldrh	r1, [r3, #46]
 831 000a 0023     		movs	r3, #0
 832 000c 0AE0     		b	.L143
 833              	.L149:
 834 000e 90F92E40 		ldrsb	r4, [r0, #46]
 835 0012 A342     		cmp	r3, r4
 836 0014 0AD0     		beq	.L141
 837 0016 90F92F40 		ldrsb	r4, [r0, #47]
 838 001a A342     		cmp	r3, r4
 839 001c 06D0     		beq	.L141
 840 001e 0133     		adds	r3, r3, #1
 841 0020 082B     		cmp	r3, #8
 842 0022 11D0     		beq	.L148
 843              	.L143:
 844 0024 9942     		cmp	r1, r3
 845 0026 00EB8302 		add	r2, r0, r3, lsl #2
 846 002a F0D9     		bls	.L149
 847              	.L141:
 848 002c 5268     		ldr	r2, [r2, #4]
 849 002e 92ED037A 		flds	s14, [r2, #12]
 850 0032 B4EE677A 		fcmps	s14, s15
 851 0036 F1EE10FA 		fmstat
 852 003a 03F10103 		add	r3, r3, #1
 853 003e C8BF     		it	gt
 854 0040 F0EE477A 		fcpysgt	s15, s14
 855 0044 082B     		cmp	r3, #8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXU9mMK.s 			page 16


 856 0046 EDD1     		bne	.L143
 857              	.L148:
 858 0048 17EE900A 		fmrs	r0, s15
 859 004c 5DF8044B 		ldr	r4, [sp], #4
 860 0050 7047     		bx	lr
 861              	.L151:
 862 0052 00BF     		.align	2
 863              	.L150:
 864 0054 00000000 		.word	reprap
 865 0058 339388C3 		.word	-1014459597
 866              		.size	_ZNK4Heat26GetHighestTemperatureLimitEv, .-_ZNK4Heat26GetHighestTemperatureLimitEv
 867              		.section	.text._ZN4Heat20SetM301PidParametersEjRK17M301PidParameters,"ax",%progbits
 868              		.align	2
 869              		.global	_ZN4Heat20SetM301PidParametersEjRK17M301PidParameters
 870              		.thumb
 871              		.thumb_func
 872              		.type	_ZN4Heat20SetM301PidParametersEjRK17M301PidParameters, %function
 873              	_ZN4Heat20SetM301PidParametersEjRK17M301PidParameters:
 874              		@ args = 0, pretend = 0, frame = 0
 875              		@ frame_needed = 0, uses_anonymous_args = 0
 876              		@ link register save eliminated.
 877 0000 00EB8100 		add	r0, r0, r1, lsl #2
 878 0004 1146     		mov	r1, r2
 879 0006 4068     		ldr	r0, [r0, #4]
 880 0008 3030     		adds	r0, r0, #48
 881 000a FFF7FEBF 		b	_ZN5FopDt20SetM301PidParametersERK17M301PidParameters
 882              		.size	_ZN4Heat20SetM301PidParametersEjRK17M301PidParameters, .-_ZN4Heat20SetM301PidParametersEjRK1
 883 000e 00BF     		.section	.text._ZNK4Heat20WriteModelParametersEP9FileStore,"ax",%progbits
 884              		.align	2
 885              		.global	_ZNK4Heat20WriteModelParametersEP9FileStore
 886              		.thumb
 887              		.thumb_func
 888              		.type	_ZNK4Heat20WriteModelParametersEP9FileStore, %function
 889              	_ZNK4Heat20WriteModelParametersEP9FileStore:
 890              		@ args = 0, pretend = 0, frame = 0
 891              		@ frame_needed = 0, uses_anonymous_args = 0
 892 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 893 0004 0F46     		mov	r7, r1
 894 0006 0546     		mov	r5, r0
 895 0008 0E49     		ldr	r1, .L168
 896 000a 3846     		mov	r0, r7
 897 000c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 898 0010 8046     		mov	r8, r0
 899 0012 90B1     		cbz	r0, .L157
 900 0014 043D     		subs	r5, r5, #4
 901 0016 0124     		movs	r4, #1
 902 0018 01E0     		b	.L158
 903              	.L156:
 904 001a 092C     		cmp	r4, #9
 905 001c 0FD0     		beq	.L155
 906              	.L158:
 907 001e 0435     		adds	r5, r5, #4
 908 0020 6868     		ldr	r0, [r5, #4]
 909 0022 90F84060 		ldrb	r6, [r0, #64]	@ zero_extendqisi2
 910 0026 621E     		subs	r2, r4, #1
 911 0028 0134     		adds	r4, r4, #1
 912 002a 002E     		cmp	r6, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXU9mMK.s 			page 17


 913 002c F5D0     		beq	.L156
 914 002e 3030     		adds	r0, r0, #48
 915 0030 3946     		mov	r1, r7
 916 0032 FFF7FEFF 		bl	_ZNK5FopDt15WriteParametersEP9FileStorej
 917 0036 0028     		cmp	r0, #0
 918 0038 EFD1     		bne	.L156
 919              	.L157:
 920 003a 4FF00008 		mov	r8, #0
 921              	.L155:
 922 003e 4046     		mov	r0, r8
 923 0040 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 924              	.L169:
 925              		.align	2
 926              	.L168:
 927 0044 D8000000 		.word	.LC5
 928              		.size	_ZNK4Heat20WriteModelParametersEP9FileStore, .-_ZNK4Heat20WriteModelParametersEP9FileStore
 929              		.section	.rodata.str1.4,"aMS",%progbits,1
 930              		.align	2
 931              	.LC0:
 932 0000 48656174 		.ascii	"Heat class exited.\012\000"
 932      20636C61 
 932      73732065 
 932      78697465 
 932      642E0A00 
 933              	.LC1:
 934 0014 3D3D3D20 		.ascii	"=== Heat ===\012Bed heater = %d, chamber heater = %"
 934      48656174 
 934      203D3D3D 
 934      0A426564 
 934      20686561 
 935 0044 640A00   		.ascii	"d\012\000"
 936 0047 00       		.space	1
 937              	.LC2:
 938 0048 48656174 		.ascii	"Heater %d is on, I-accum = %.1f\012\000"
 938      65722025 
 938      64206973 
 938      206F6E2C 
 938      20492D61 
 939 0069 000000   		.space	3
 940              	.LC3:
 941 006c 4572726F 		.ascii	"Error: cannot start auto tuning heater %u because h"
 941      723A2063 
 941      616E6E6F 
 941      74207374 
 941      61727420 
 942 009f 65617465 		.ascii	"eater %d is being tuned\000"
 942      72202564 
 942      20697320 
 942      6265696E 
 942      67207475 
 943 00b7 00       		.space	1
 944              	.LC4:
 945 00b8 4E6F2068 		.ascii	"No heater has been tuned yet\000"
 945      65617465 
 945      72206861 
 945      73206265 
 945      656E2074 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXU9mMK.s 			page 18


 946 00d5 000000   		.space	3
 947              	.LC5:
 948 00d8 3B204865 		.ascii	"; Heater model parameters\012\000"
 948      61746572 
 948      206D6F64 
 948      656C2070 
 948      6172616D 
 949 00f3 00       		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 950              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 951              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 952              	_ZL28cpu_irq_prev_interrupt_state:
 953 0000 00       		.space	1
 954              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 955              		.align	2
 956              		.type	_ZL32cpu_irq_critical_section_counter, %object
 957              		.size	_ZL32cpu_irq_critical_section_counter, 4
 958              	_ZL32cpu_irq_critical_section_counter:
 959 0000 00000000 		.space	4
 960              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
