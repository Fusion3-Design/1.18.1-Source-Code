ARM GAS  C:\Users\George\AppData\Local\Temp\cc2FPSZk.s 			page 1


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
  14              		.file	"Heat.cpp"
  15              		.section	.text._ZN4HeatC2EP8Platform,"ax",%progbits
  16              		.align	2
  17              		.global	_ZN4HeatC2EP8Platform
  18              		.thumb
  19              		.thumb_func
  20              		.type	_ZN4HeatC2EP8Platform, %function
  21              	_ZN4HeatC2EP8Platform:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  25 0002 0024     		movs	r4, #0
  26 0004 FF23     		movs	r3, #255
  27 0006 0646     		mov	r6, r0
  28 0008 0160     		str	r1, [r0]
  29 000a 80F82840 		strb	r4, [r0, #40]
  30 000e 80F82940 		strb	r4, [r0, #41]
  31 0012 80F82A40 		strb	r4, [r0, #42]
  32 0016 80F82B30 		strb	r3, [r0, #43]
  33 001a 80F82C30 		strb	r3, [r0, #44]
  34 001e 80F82D30 		strb	r3, [r0, #45]
  35 0022 051F     		subs	r5, r0, #4
  36              	.L3:
  37 0024 7820     		movs	r0, #120
  38 0026 FFF7FEFF 		bl	_Znwj
  39 002a 62B2     		sxtb	r2, r4
  40 002c 3168     		ldr	r1, [r6]
  41 002e 0134     		adds	r4, r4, #1
  42 0030 0746     		mov	r7, r0
  43 0032 0435     		adds	r5, r5, #4
  44 0034 FFF7FEFF 		bl	_ZN3PIDC1EP8Platforma
  45 0038 072C     		cmp	r4, #7
  46 003a 6F60     		str	r7, [r5, #4]
  47 003c F2D1     		bne	.L3
  48 003e 3046     		mov	r0, r6
  49 0040 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  50              		.size	_ZN4HeatC2EP8Platform, .-_ZN4HeatC2EP8Platform
  51              		.global	_ZN4HeatC1EP8Platform
  52              		.thumb_set _ZN4HeatC1EP8Platform,_ZN4HeatC2EP8Platform
  53 0042 00BF     		.section	.text._ZN4Heat17ResetHeaterModelsEv,"ax",%progbits
  54              		.align	2
  55              		.global	_ZN4Heat17ResetHeaterModelsEv
  56              		.thumb
  57              		.thumb_func
ARM GAS  C:\Users\George\AppData\Local\Temp\cc2FPSZk.s 			page 2


  58              		.type	_ZN4Heat17ResetHeaterModelsEv, %function
  59              	_ZN4Heat17ResetHeaterModelsEv:
  60              		@ args = 0, pretend = 0, frame = 0
  61              		@ frame_needed = 0, uses_anonymous_args = 0
  62 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  63 0004 4FF07E58 		mov	r8, #1065353216
  64 0008 82B0     		sub	sp, sp, #8
  65 000a 051F     		subs	r5, r0, #4
  66 000c 0024     		movs	r4, #0
  67              	.L10:
  68 000e 0435     		adds	r5, r5, #4
  69 0010 6E68     		ldr	r6, [r5, #4]
  70 0012 4FF0010C 		mov	ip, #1
  71 0016 96F84070 		ldrb	r7, [r6, #64]	@ zero_extendqisi2
  72 001a 0D49     		ldr	r1, .L15
  73 001c 0D4A     		ldr	r2, .L15+4
  74 001e 0E4B     		ldr	r3, .L15+8
  75 0020 3046     		mov	r0, r6
  76 0022 37B1     		cbz	r7, .L6
  77 0024 CDF80080 		str	r8, [sp]	@ float
  78 0028 4CB1     		cbz	r4, .L14
  79 002a CDF804C0 		str	ip, [sp, #4]
  80 002e FFF7FEFF 		bl	_ZN3PID8SetModelEffffb
  81              	.L6:
  82 0032 0134     		adds	r4, r4, #1
  83 0034 072C     		cmp	r4, #7
  84 0036 EAD1     		bne	.L10
  85 0038 02B0     		add	sp, sp, #8
  86              		@ sp needed
  87 003a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  88              	.L14:
  89 003e 0194     		str	r4, [sp, #4]
  90 0040 0649     		ldr	r1, .L15+12
  91 0042 074A     		ldr	r2, .L15+16
  92 0044 074B     		ldr	r3, .L15+20
  93 0046 FFF7FEFF 		bl	_ZN3PID8SetModelEffffb
  94 004a 0124     		movs	r4, #1
  95 004c DFE7     		b	.L10
  96              	.L16:
  97 004e 00BF     		.align	2
  98              	.L15:
  99 0050 0000AA43 		.word	1135214592
 100 0054 00000C43 		.word	1124859904
 101 0058 0000B040 		.word	1085276160
 102 005c 0000B442 		.word	1119092736
 103 0060 00002F44 		.word	1143930880
 104 0064 00002041 		.word	1092616192
 105              		.size	_ZN4Heat17ResetHeaterModelsEv, .-_ZN4Heat17ResetHeaterModelsEv
 106              		.section	.text._ZN4Heat4InitEv,"ax",%progbits
 107              		.align	2
 108              		.global	_ZN4Heat4InitEv
 109              		.thumb
 110              		.thumb_func
 111              		.type	_ZN4Heat4InitEv, %function
 112              	_ZN4Heat4InitEv:
 113              		@ args = 0, pretend = 0, frame = 0
 114              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\cc2FPSZk.s 			page 3


 115 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 116 0002 1F4E     		ldr	r6, .L28
 117 0004 1F4F     		ldr	r7, .L28+4
 118 0006 83B0     		sub	sp, sp, #12
 119 0008 0546     		mov	r5, r0
 120 000a 0024     		movs	r4, #0
 121              	.L22:
 122 000c 14B3     		cbz	r4, .L26
 123 000e 062C     		cmp	r4, #6
 124 0010 2AD0     		beq	.L27
 125              	.L20:
 126 0012 05EB8403 		add	r3, r5, r4, lsl #2
 127 0016 5868     		ldr	r0, [r3, #4]
 128 0018 0123     		movs	r3, #1
 129 001a 1C44     		add	r4, r4, r3
 130 001c 0193     		str	r3, [sp, #4]
 131 001e 0096     		str	r6, [sp]	@ float
 132 0020 1949     		ldr	r1, .L28+8
 133 0022 1A4A     		ldr	r2, .L28+12
 134 0024 1A4B     		ldr	r3, .L28+16
 135 0026 FFF7FEFF 		bl	_ZN3PID4InitEffffb
 136 002a 072C     		cmp	r4, #7
 137 002c EED1     		bne	.L22
 138              	.L21:
 139 002e FFF7FEFF 		bl	millis
 140 0032 2B68     		ldr	r3, [r5]
 141 0034 D3F84026 		ldr	r2, [r3, #1600]
 142 0038 801A     		subs	r0, r0, r2
 143 003a 2862     		str	r0, [r5, #32]
 144 003c 1846     		mov	r0, r3
 145 003e FFF7FEFF 		bl	_ZN8Platform4TimeEv
 146 0042 0022     		movs	r2, #0
 147 0044 0123     		movs	r3, #1
 148 0046 6862     		str	r0, [r5, #36]	@ float
 149 0048 85F82920 		strb	r2, [r5, #41]
 150 004c 85F82830 		strb	r3, [r5, #40]
 151 0050 03B0     		add	sp, sp, #12
 152              		@ sp needed
 153 0052 F0BD     		pop	{r4, r5, r6, r7, pc}
 154              	.L26:
 155 0054 6868     		ldr	r0, [r5, #4]
 156 0056 0F49     		ldr	r1, .L28+20
 157 0058 0194     		str	r4, [sp, #4]
 158 005a 0097     		str	r7, [sp]	@ float
 159 005c 0E4A     		ldr	r2, .L28+24
 160 005e 0F4B     		ldr	r3, .L28+28
 161 0060 FFF7FEFF 		bl	_ZN3PID4InitEffffb
 162 0064 0124     		movs	r4, #1
 163 0066 D4E7     		b	.L20
 164              	.L27:
 165 0068 0D49     		ldr	r1, .L28+32
 166 006a 054B     		ldr	r3, .L28
 167 006c 0124     		movs	r4, #1
 168 006e E869     		ldr	r0, [r5, #28]
 169 0070 0A46     		mov	r2, r1
 170 0072 0093     		str	r3, [sp]	@ float
 171 0074 0194     		str	r4, [sp, #4]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc2FPSZk.s 			page 4


 172 0076 0B46     		mov	r3, r1
 173 0078 FFF7FEFF 		bl	_ZN3PID4InitEffffb
 174 007c D7E7     		b	.L21
 175              	.L29:
 176 007e 00BF     		.align	2
 177              	.L28:
 178 0080 00008343 		.word	1132658688
 179 0084 0000FA42 		.word	1123680256
 180 0088 0000AA43 		.word	1135214592
 181 008c 00000C43 		.word	1124859904
 182 0090 0000B040 		.word	1085276160
 183 0094 0000B442 		.word	1119092736
 184 0098 00002F44 		.word	1143930880
 185 009c 00002041 		.word	1092616192
 186 00a0 000080BF 		.word	-1082130432
 187              		.size	_ZN4Heat4InitEv, .-_ZN4Heat4InitEv
 188              		.section	.text._ZN4Heat4ExitEv,"ax",%progbits
 189              		.align	2
 190              		.global	_ZN4Heat4ExitEv
 191              		.thumb
 192              		.thumb_func
 193              		.type	_ZN4Heat4ExitEv, %function
 194              	_ZN4Heat4ExitEv:
 195              		@ args = 0, pretend = 0, frame = 0
 196              		@ frame_needed = 0, uses_anonymous_args = 0
 197 0000 38B5     		push	{r3, r4, r5, lr}
 198 0002 0546     		mov	r5, r0
 199 0004 0024     		movs	r4, #0
 200              	.L32:
 201 0006 2B19     		adds	r3, r5, r4
 202 0008 5868     		ldr	r0, [r3, #4]
 203 000a 0434     		adds	r4, r4, #4
 204 000c FFF7FEFF 		bl	_ZN3PID9SwitchOffEv
 205 0010 1C2C     		cmp	r4, #28
 206 0012 F8D1     		bne	.L32
 207 0014 2868     		ldr	r0, [r5]
 208 0016 0221     		movs	r1, #2
 209 0018 034A     		ldr	r2, .L33
 210 001a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 211 001e 0023     		movs	r3, #0
 212 0020 85F82830 		strb	r3, [r5, #40]
 213 0024 38BD     		pop	{r3, r4, r5, pc}
 214              	.L34:
 215 0026 00BF     		.align	2
 216              	.L33:
 217 0028 00000000 		.word	.LC0
 218              		.size	_ZN4Heat4ExitEv, .-_ZN4Heat4ExitEv
 219              		.section	.text._ZN4Heat4SpinEv,"ax",%progbits
 220              		.align	2
 221              		.global	_ZN4Heat4SpinEv
 222              		.thumb
 223              		.thumb_func
 224              		.type	_ZN4Heat4SpinEv, %function
 225              	_ZN4Heat4SpinEv:
 226              		@ args = 0, pretend = 0, frame = 0
 227              		@ frame_needed = 0, uses_anonymous_args = 0
 228 0000 38B5     		push	{r3, r4, r5, lr}
ARM GAS  C:\Users\George\AppData\Local\Temp\cc2FPSZk.s 			page 5


 229 0002 90F82830 		ldrb	r3, [r0, #40]	@ zero_extendqisi2
 230 0006 0446     		mov	r4, r0
 231 0008 33B9     		cbnz	r3, .L36
 232              	.L43:
 233 000a 2068     		ldr	r0, [r4]
 234              	.L37:
 235 000c 04F12401 		add	r1, r4, #36
 236 0010 BDE83840 		pop	{r3, r4, r5, lr}
 237 0014 FFF7FEBF 		b	_ZN8Platform11ClassReportERf
 238              	.L36:
 239 0018 FFF7FEFF 		bl	millis
 240 001c 0346     		mov	r3, r0
 241 001e 2068     		ldr	r0, [r4]
 242 0020 216A     		ldr	r1, [r4, #32]
 243 0022 D0F84026 		ldr	r2, [r0, #1600]
 244 0026 591A     		subs	r1, r3, r1
 245 0028 9142     		cmp	r1, r2
 246 002a EFD3     		bcc	.L37
 247 002c 2362     		str	r3, [r4, #32]
 248 002e 0025     		movs	r5, #0
 249              	.L39:
 250 0030 6319     		adds	r3, r4, r5
 251 0032 5868     		ldr	r0, [r3, #4]
 252 0034 0435     		adds	r5, r5, #4
 253 0036 FFF7FEFF 		bl	_ZN3PID4SpinEv
 254 003a 1C2D     		cmp	r5, #28
 255 003c F8D1     		bne	.L39
 256 003e 94F82C20 		ldrb	r2, [r4, #44]	@ zero_extendqisi2
 257 0042 53B2     		sxtb	r3, r2
 258 0044 591C     		adds	r1, r3, #1
 259 0046 E0D0     		beq	.L43
 260 0048 04EB8303 		add	r3, r4, r3, lsl #2
 261 004c 5B68     		ldr	r3, [r3, #4]
 262 004e 93F87430 		ldrb	r3, [r3, #116]	@ zero_extendqisi2
 263 0052 042B     		cmp	r3, #4
 264 0054 D9D8     		bhi	.L43
 265 0056 FF23     		movs	r3, #255
 266 0058 84F82D20 		strb	r2, [r4, #45]
 267 005c 84F82C30 		strb	r3, [r4, #44]
 268 0060 D3E7     		b	.L43
 269              		.size	_ZN4Heat4SpinEv, .-_ZN4Heat4SpinEv
 270              		.global	__aeabi_f2d
 271 0062 00BF     		.section	.text._ZN4Heat11DiagnosticsE11MessageType,"ax",%progbits
 272              		.align	2
 273              		.global	_ZN4Heat11DiagnosticsE11MessageType
 274              		.thumb
 275              		.thumb_func
 276              		.type	_ZN4Heat11DiagnosticsE11MessageType, %function
 277              	_ZN4Heat11DiagnosticsE11MessageType:
 278              		@ args = 0, pretend = 0, frame = 0
 279              		@ frame_needed = 0, uses_anonymous_args = 0
 280 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 281 0002 0646     		mov	r6, r0
 282 0004 96F92B20 		ldrsb	r2, [r6, #43]
 283 0008 83B0     		sub	sp, sp, #12
 284 000a 0068     		ldr	r0, [r0]
 285 000c 96F92A30 		ldrsb	r3, [r6, #42]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc2FPSZk.s 			page 6


 286 0010 0092     		str	r2, [sp]
 287 0012 104A     		ldr	r2, .L52
 288 0014 0F46     		mov	r7, r1
 289 0016 351F     		subs	r5, r6, #4
 290 0018 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 291 001c 0024     		movs	r4, #0
 292 001e 02E0     		b	.L47
 293              	.L45:
 294 0020 0134     		adds	r4, r4, #1
 295 0022 072C     		cmp	r4, #7
 296 0024 14D0     		beq	.L51
 297              	.L47:
 298 0026 0435     		adds	r5, r5, #4
 299 0028 6B68     		ldr	r3, [r5, #4]
 300 002a 93F87520 		ldrb	r2, [r3, #117]	@ zero_extendqisi2
 301 002e 002A     		cmp	r2, #0
 302 0030 F6D0     		beq	.L45
 303 0032 D86D     		ldr	r0, [r3, #92]	@ float
 304 0034 FFF7FEFF 		bl	__aeabi_f2d
 305 0038 3368     		ldr	r3, [r6]
 306 003a 074A     		ldr	r2, .L52+4
 307 003c CDE90001 		strd	r0, [sp]
 308 0040 1846     		mov	r0, r3
 309 0042 3946     		mov	r1, r7
 310 0044 2346     		mov	r3, r4
 311 0046 0134     		adds	r4, r4, #1
 312 0048 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 313 004c 072C     		cmp	r4, #7
 314 004e EAD1     		bne	.L47
 315              	.L51:
 316 0050 03B0     		add	sp, sp, #12
 317              		@ sp needed
 318 0052 F0BD     		pop	{r4, r5, r6, r7, pc}
 319              	.L53:
 320              		.align	2
 321              	.L52:
 322 0054 14000000 		.word	.LC1
 323 0058 48000000 		.word	.LC2
 324              		.size	_ZN4Heat11DiagnosticsE11MessageType, .-_ZN4Heat11DiagnosticsE11MessageType
 325              		.global	__aeabi_fcmplt
 326              		.global	__aeabi_fsub
 327              		.global	__aeabi_fcmple
 328              		.section	.text._ZNK4Heat22HeaterAtSetTemperatureEab,"ax",%progbits
 329              		.align	2
 330              		.global	_ZNK4Heat22HeaterAtSetTemperatureEab
 331              		.thumb
 332              		.thumb_func
 333              		.type	_ZNK4Heat22HeaterAtSetTemperatureEab, %function
 334              	_ZNK4Heat22HeaterAtSetTemperatureEab:
 335              		@ args = 0, pretend = 0, frame = 0
 336              		@ frame_needed = 0, uses_anonymous_args = 0
 337 0000 CBB2     		uxtb	r3, r1
 338 0002 062B     		cmp	r3, #6
 339 0004 70B5     		push	{r4, r5, r6, lr}
 340 0006 1446     		mov	r4, r2
 341 0008 06D8     		bhi	.L62
 342 000a 00EB8101 		add	r1, r0, r1, lsl #2
ARM GAS  C:\Users\George\AppData\Local\Temp\cc2FPSZk.s 			page 7


 343 000e 4B68     		ldr	r3, [r1, #4]
 344 0010 93F87420 		ldrb	r2, [r3, #116]	@ zero_extendqisi2
 345 0014 012A     		cmp	r2, #1
 346 0016 01D8     		bhi	.L66
 347              	.L62:
 348 0018 0120     		movs	r0, #1
 349              	.L55:
 350 001a 70BD     		pop	{r4, r5, r6, pc}
 351              	.L66:
 352 001c 93F87520 		ldrb	r2, [r3, #117]	@ zero_extendqisi2
 353 0020 9E69     		ldr	r6, [r3, #24]	@ float
 354 0022 D2B9     		cbnz	r2, .L67
 355 0024 9D68     		ldr	r5, [r3, #8]	@ float
 356              	.L57:
 357 0026 2846     		mov	r0, r5
 358 0028 0D49     		ldr	r1, .L68
 359 002a FFF7FEFF 		bl	__aeabi_fcmplt
 360 002e 0028     		cmp	r0, #0
 361 0030 F2D1     		bne	.L62
 362 0032 2946     		mov	r1, r5
 363 0034 3046     		mov	r0, r6
 364 0036 FFF7FEFF 		bl	__aeabi_fsub
 365 003a 0A49     		ldr	r1, .L68+4
 366 003c 20F00040 		bic	r0, r0, #-2147483648
 367 0040 FFF7FEFF 		bl	__aeabi_fcmple
 368 0044 0028     		cmp	r0, #0
 369 0046 E7D1     		bne	.L62
 370 0048 2846     		mov	r0, r5
 371 004a 3146     		mov	r1, r6
 372 004c FFF7FEFF 		bl	__aeabi_fcmplt
 373 0050 0028     		cmp	r0, #0
 374 0052 E2D0     		beq	.L55
 375 0054 84F00100 		eor	r0, r4, #1
 376 0058 70BD     		pop	{r4, r5, r6, pc}
 377              	.L67:
 378 005a 5D68     		ldr	r5, [r3, #4]	@ float
 379 005c E3E7     		b	.L57
 380              	.L69:
 381 005e 00BF     		.align	2
 382              	.L68:
 383 0060 00002042 		.word	1109393408
 384 0064 00002040 		.word	1075838976
 385              		.size	_ZNK4Heat22HeaterAtSetTemperatureEab, .-_ZNK4Heat22HeaterAtSetTemperatureEab
 386              		.section	.text._ZNK4Heat27AllHeatersAtSetTemperaturesEb,"ax",%progbits
 387              		.align	2
 388              		.global	_ZNK4Heat27AllHeatersAtSetTemperaturesEb
 389              		.thumb
 390              		.thumb_func
 391              		.type	_ZNK4Heat27AllHeatersAtSetTemperaturesEb, %function
 392              	_ZNK4Heat27AllHeatersAtSetTemperaturesEb:
 393              		@ args = 0, pretend = 0, frame = 0
 394              		@ frame_needed = 0, uses_anonymous_args = 0
 395 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 396 0002 0646     		mov	r6, r0
 397 0004 0F46     		mov	r7, r1
 398 0006 0024     		movs	r4, #0
 399              	.L73:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc2FPSZk.s 			page 8


 400 0008 65B2     		sxtb	r5, r4
 401 000a 2946     		mov	r1, r5
 402 000c 3046     		mov	r0, r6
 403 000e 0122     		movs	r2, #1
 404 0010 0134     		adds	r4, r4, #1
 405 0012 FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
 406 0016 20B9     		cbnz	r0, .L71
 407 0018 3FB9     		cbnz	r7, .L75
 408 001a 96F92A30 		ldrsb	r3, [r6, #42]
 409 001e AB42     		cmp	r3, r5
 410 0020 04D1     		bne	.L76
 411              	.L71:
 412 0022 072C     		cmp	r4, #7
 413 0024 F0D1     		bne	.L73
 414 0026 0120     		movs	r0, #1
 415 0028 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 416              	.L75:
 417 002a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 418              	.L76:
 419 002c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 420              		.size	_ZNK4Heat27AllHeatersAtSetTemperaturesEb, .-_ZNK4Heat27AllHeatersAtSetTemperaturesEb
 421 002e 00BF     		.section	.text._ZNK4Heat9GetStatusEa,"ax",%progbits
 422              		.align	2
 423              		.global	_ZNK4Heat9GetStatusEa
 424              		.thumb
 425              		.thumb_func
 426              		.type	_ZNK4Heat9GetStatusEa, %function
 427              	_ZNK4Heat9GetStatusEa:
 428              		@ args = 0, pretend = 0, frame = 0
 429              		@ frame_needed = 0, uses_anonymous_args = 0
 430              		@ link register save eliminated.
 431 0000 CBB2     		uxtb	r3, r1
 432 0002 062B     		cmp	r3, #6
 433 0004 0DD8     		bhi	.L81
 434 0006 00EB8101 		add	r1, r0, r1, lsl #2
 435 000a 4A68     		ldr	r2, [r1, #4]
 436 000c 92F87430 		ldrb	r3, [r2, #116]	@ zero_extendqisi2
 437 0010 2BB1     		cbz	r3, .L80
 438 0012 012B     		cmp	r3, #1
 439 0014 05D0     		beq	.L81
 440 0016 042B     		cmp	r3, #4
 441 0018 05D9     		bls	.L84
 442 001a 0420     		movs	r0, #4
 443 001c 7047     		bx	lr
 444              	.L80:
 445 001e 0320     		movs	r0, #3
 446 0020 7047     		bx	lr
 447              	.L81:
 448 0022 0020     		movs	r0, #0
 449 0024 7047     		bx	lr
 450              	.L84:
 451 0026 92F87530 		ldrb	r3, [r2, #117]	@ zero_extendqisi2
 452 002a 002B     		cmp	r3, #0
 453 002c 0CBF     		ite	eq
 454 002e 0120     		moveq	r0, #1
 455 0030 0220     		movne	r0, #2
 456 0032 7047     		bx	lr
ARM GAS  C:\Users\George\AppData\Local\Temp\cc2FPSZk.s 			page 9


 457              		.size	_ZNK4Heat9GetStatusEa, .-_ZNK4Heat9GetStatusEa
 458              		.section	.text._ZN4Heat20SetActiveTemperatureEaf,"ax",%progbits
 459              		.align	2
 460              		.global	_ZN4Heat20SetActiveTemperatureEaf
 461              		.thumb
 462              		.thumb_func
 463              		.type	_ZN4Heat20SetActiveTemperatureEaf, %function
 464              	_ZN4Heat20SetActiveTemperatureEaf:
 465              		@ args = 0, pretend = 0, frame = 0
 466              		@ frame_needed = 0, uses_anonymous_args = 0
 467              		@ link register save eliminated.
 468 0000 CBB2     		uxtb	r3, r1
 469 0002 062B     		cmp	r3, #6
 470 0004 00D9     		bls	.L87
 471 0006 7047     		bx	lr
 472              	.L87:
 473 0008 00EB8101 		add	r1, r0, r1, lsl #2
 474 000c 4868     		ldr	r0, [r1, #4]
 475 000e 1146     		mov	r1, r2
 476 0010 FFF7FEBF 		b	_ZN3PID20SetActiveTemperatureEf
 477              		.size	_ZN4Heat20SetActiveTemperatureEaf, .-_ZN4Heat20SetActiveTemperatureEaf
 478              		.section	.text._ZNK4Heat20GetActiveTemperatureEa,"ax",%progbits
 479              		.align	2
 480              		.global	_ZNK4Heat20GetActiveTemperatureEa
 481              		.thumb
 482              		.thumb_func
 483              		.type	_ZNK4Heat20GetActiveTemperatureEa, %function
 484              	_ZNK4Heat20GetActiveTemperatureEa:
 485              		@ args = 0, pretend = 0, frame = 0
 486              		@ frame_needed = 0, uses_anonymous_args = 0
 487              		@ link register save eliminated.
 488 0000 CBB2     		uxtb	r3, r1
 489 0002 062B     		cmp	r3, #6
 490 0004 9DBF     		ittte	ls
 491 0006 00EB8101 		addls	r1, r0, r1, lsl #2
 492 000a 4B68     		ldrls	r3, [r1, #4]
 493 000c 5868     		ldrls	r0, [r3, #4]	@ float
 494 000e 0148     		ldrhi	r0, .L91
 495 0010 7047     		bx	lr
 496              	.L92:
 497 0012 00BF     		.align	2
 498              	.L91:
 499 0014 339388C3 		.word	-1014459597
 500              		.size	_ZNK4Heat20GetActiveTemperatureEa, .-_ZNK4Heat20GetActiveTemperatureEa
 501              		.section	.text._ZN4Heat21SetStandbyTemperatureEaf,"ax",%progbits
 502              		.align	2
 503              		.global	_ZN4Heat21SetStandbyTemperatureEaf
 504              		.thumb
 505              		.thumb_func
 506              		.type	_ZN4Heat21SetStandbyTemperatureEaf, %function
 507              	_ZN4Heat21SetStandbyTemperatureEaf:
 508              		@ args = 0, pretend = 0, frame = 0
 509              		@ frame_needed = 0, uses_anonymous_args = 0
 510              		@ link register save eliminated.
 511 0000 CBB2     		uxtb	r3, r1
 512 0002 062B     		cmp	r3, #6
 513 0004 00D9     		bls	.L95
ARM GAS  C:\Users\George\AppData\Local\Temp\cc2FPSZk.s 			page 10


 514 0006 7047     		bx	lr
 515              	.L95:
 516 0008 00EB8101 		add	r1, r0, r1, lsl #2
 517 000c 4868     		ldr	r0, [r1, #4]
 518 000e 1146     		mov	r1, r2
 519 0010 FFF7FEBF 		b	_ZN3PID21SetStandbyTemperatureEf
 520              		.size	_ZN4Heat21SetStandbyTemperatureEaf, .-_ZN4Heat21SetStandbyTemperatureEaf
 521              		.section	.text._ZNK4Heat21GetStandbyTemperatureEa,"ax",%progbits
 522              		.align	2
 523              		.global	_ZNK4Heat21GetStandbyTemperatureEa
 524              		.thumb
 525              		.thumb_func
 526              		.type	_ZNK4Heat21GetStandbyTemperatureEa, %function
 527              	_ZNK4Heat21GetStandbyTemperatureEa:
 528              		@ args = 0, pretend = 0, frame = 0
 529              		@ frame_needed = 0, uses_anonymous_args = 0
 530              		@ link register save eliminated.
 531 0000 CBB2     		uxtb	r3, r1
 532 0002 062B     		cmp	r3, #6
 533 0004 9DBF     		ittte	ls
 534 0006 00EB8101 		addls	r1, r0, r1, lsl #2
 535 000a 4B68     		ldrls	r3, [r1, #4]
 536 000c 9868     		ldrls	r0, [r3, #8]	@ float
 537 000e 0148     		ldrhi	r0, .L99
 538 0010 7047     		bx	lr
 539              	.L100:
 540 0012 00BF     		.align	2
 541              	.L99:
 542 0014 339388C3 		.word	-1014459597
 543              		.size	_ZNK4Heat21GetStandbyTemperatureEa, .-_ZNK4Heat21GetStandbyTemperatureEa
 544              		.section	.text._ZN4Heat19SetTemperatureLimitEaf,"ax",%progbits
 545              		.align	2
 546              		.global	_ZN4Heat19SetTemperatureLimitEaf
 547              		.thumb
 548              		.thumb_func
 549              		.type	_ZN4Heat19SetTemperatureLimitEaf, %function
 550              	_ZN4Heat19SetTemperatureLimitEaf:
 551              		@ args = 0, pretend = 0, frame = 0
 552              		@ frame_needed = 0, uses_anonymous_args = 0
 553              		@ link register save eliminated.
 554 0000 CBB2     		uxtb	r3, r1
 555 0002 062B     		cmp	r3, #6
 556 0004 03D8     		bhi	.L101
 557 0006 00EB8101 		add	r1, r0, r1, lsl #2
 558 000a 4B68     		ldr	r3, [r1, #4]
 559 000c DA60     		str	r2, [r3, #12]	@ float
 560              	.L101:
 561 000e 7047     		bx	lr
 562              		.size	_ZN4Heat19SetTemperatureLimitEaf, .-_ZN4Heat19SetTemperatureLimitEaf
 563              		.section	.text._ZNK4Heat19GetTemperatureLimitEa,"ax",%progbits
 564              		.align	2
 565              		.global	_ZNK4Heat19GetTemperatureLimitEa
 566              		.thumb
 567              		.thumb_func
 568              		.type	_ZNK4Heat19GetTemperatureLimitEa, %function
 569              	_ZNK4Heat19GetTemperatureLimitEa:
 570              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\cc2FPSZk.s 			page 11


 571              		@ frame_needed = 0, uses_anonymous_args = 0
 572              		@ link register save eliminated.
 573 0000 CBB2     		uxtb	r3, r1
 574 0002 062B     		cmp	r3, #6
 575 0004 9DBF     		ittte	ls
 576 0006 00EB8101 		addls	r1, r0, r1, lsl #2
 577 000a 4B68     		ldrls	r3, [r1, #4]
 578 000c D868     		ldrls	r0, [r3, #12]	@ float
 579 000e 0148     		ldrhi	r0, .L106
 580 0010 7047     		bx	lr
 581              	.L107:
 582 0012 00BF     		.align	2
 583              	.L106:
 584 0014 339388C3 		.word	-1014459597
 585              		.size	_ZNK4Heat19GetTemperatureLimitEa, .-_ZNK4Heat19GetTemperatureLimitEa
 586              		.section	.text._ZNK4Heat14GetTemperatureEa,"ax",%progbits
 587              		.align	2
 588              		.global	_ZNK4Heat14GetTemperatureEa
 589              		.thumb
 590              		.thumb_func
 591              		.type	_ZNK4Heat14GetTemperatureEa, %function
 592              	_ZNK4Heat14GetTemperatureEa:
 593              		@ args = 0, pretend = 0, frame = 0
 594              		@ frame_needed = 0, uses_anonymous_args = 0
 595              		@ link register save eliminated.
 596 0000 CBB2     		uxtb	r3, r1
 597 0002 062B     		cmp	r3, #6
 598 0004 9DBF     		ittte	ls
 599 0006 00EB8101 		addls	r1, r0, r1, lsl #2
 600 000a 4B68     		ldrls	r3, [r1, #4]
 601 000c 9869     		ldrls	r0, [r3, #24]	@ float
 602 000e 0148     		ldrhi	r0, .L111
 603 0010 7047     		bx	lr
 604              	.L112:
 605 0012 00BF     		.align	2
 606              	.L111:
 607 0014 339388C3 		.word	-1014459597
 608              		.size	_ZNK4Heat14GetTemperatureEa, .-_ZNK4Heat14GetTemperatureEa
 609              		.section	.text._ZN4Heat8ActivateEa,"ax",%progbits
 610              		.align	2
 611              		.global	_ZN4Heat8ActivateEa
 612              		.thumb
 613              		.thumb_func
 614              		.type	_ZN4Heat8ActivateEa, %function
 615              	_ZN4Heat8ActivateEa:
 616              		@ args = 0, pretend = 0, frame = 0
 617              		@ frame_needed = 0, uses_anonymous_args = 0
 618              		@ link register save eliminated.
 619 0000 CBB2     		uxtb	r3, r1
 620 0002 062B     		cmp	r3, #6
 621 0004 00D9     		bls	.L115
 622 0006 7047     		bx	lr
 623              	.L115:
 624 0008 00EB8101 		add	r1, r0, r1, lsl #2
 625 000c 4868     		ldr	r0, [r1, #4]
 626 000e FFF7FEBF 		b	_ZN3PID8ActivateEv
 627              		.size	_ZN4Heat8ActivateEa, .-_ZN4Heat8ActivateEa
ARM GAS  C:\Users\George\AppData\Local\Temp\cc2FPSZk.s 			page 12


 628 0012 00BF     		.section	.text._ZN4Heat9SwitchOffEa,"ax",%progbits
 629              		.align	2
 630              		.global	_ZN4Heat9SwitchOffEa
 631              		.thumb
 632              		.thumb_func
 633              		.type	_ZN4Heat9SwitchOffEa, %function
 634              	_ZN4Heat9SwitchOffEa:
 635              		@ args = 0, pretend = 0, frame = 0
 636              		@ frame_needed = 0, uses_anonymous_args = 0
 637              		@ link register save eliminated.
 638 0000 CBB2     		uxtb	r3, r1
 639 0002 062B     		cmp	r3, #6
 640 0004 00D9     		bls	.L118
 641 0006 7047     		bx	lr
 642              	.L118:
 643 0008 00EB8101 		add	r1, r0, r1, lsl #2
 644 000c 4868     		ldr	r0, [r1, #4]
 645 000e FFF7FEBF 		b	_ZN3PID9SwitchOffEv
 646              		.size	_ZN4Heat9SwitchOffEa, .-_ZN4Heat9SwitchOffEa
 647 0012 00BF     		.section	.text._ZN4Heat12SwitchOffAllEv,"ax",%progbits
 648              		.align	2
 649              		.global	_ZN4Heat12SwitchOffAllEv
 650              		.thumb
 651              		.thumb_func
 652              		.type	_ZN4Heat12SwitchOffAllEv, %function
 653              	_ZN4Heat12SwitchOffAllEv:
 654              		@ args = 0, pretend = 0, frame = 0
 655              		@ frame_needed = 0, uses_anonymous_args = 0
 656 0000 38B5     		push	{r3, r4, r5, lr}
 657 0002 0546     		mov	r5, r0
 658 0004 0024     		movs	r4, #0
 659              	.L121:
 660 0006 2B19     		adds	r3, r5, r4
 661 0008 5868     		ldr	r0, [r3, #4]
 662 000a 0434     		adds	r4, r4, #4
 663 000c FFF7FEFF 		bl	_ZN3PID9SwitchOffEv
 664 0010 1C2C     		cmp	r4, #28
 665 0012 F8D1     		bne	.L121
 666 0014 38BD     		pop	{r3, r4, r5, pc}
 667              		.size	_ZN4Heat12SwitchOffAllEv, .-_ZN4Heat12SwitchOffAllEv
 668 0016 00BF     		.section	.text._ZN4Heat7StandbyEa,"ax",%progbits
 669              		.align	2
 670              		.global	_ZN4Heat7StandbyEa
 671              		.thumb
 672              		.thumb_func
 673              		.type	_ZN4Heat7StandbyEa, %function
 674              	_ZN4Heat7StandbyEa:
 675              		@ args = 0, pretend = 0, frame = 0
 676              		@ frame_needed = 0, uses_anonymous_args = 0
 677              		@ link register save eliminated.
 678 0000 CBB2     		uxtb	r3, r1
 679 0002 062B     		cmp	r3, #6
 680 0004 00D9     		bls	.L124
 681 0006 7047     		bx	lr
 682              	.L124:
 683 0008 00EB8101 		add	r1, r0, r1, lsl #2
 684 000c 4868     		ldr	r0, [r1, #4]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc2FPSZk.s 			page 13


 685 000e FFF7FEBF 		b	_ZN3PID7StandbyEv
 686              		.size	_ZN4Heat7StandbyEa, .-_ZN4Heat7StandbyEa
 687 0012 00BF     		.section	.text._ZN4Heat10ResetFaultEa,"ax",%progbits
 688              		.align	2
 689              		.global	_ZN4Heat10ResetFaultEa
 690              		.thumb
 691              		.thumb_func
 692              		.type	_ZN4Heat10ResetFaultEa, %function
 693              	_ZN4Heat10ResetFaultEa:
 694              		@ args = 0, pretend = 0, frame = 0
 695              		@ frame_needed = 0, uses_anonymous_args = 0
 696              		@ link register save eliminated.
 697 0000 CBB2     		uxtb	r3, r1
 698 0002 062B     		cmp	r3, #6
 699 0004 00D9     		bls	.L127
 700 0006 7047     		bx	lr
 701              	.L127:
 702 0008 00EB8101 		add	r1, r0, r1, lsl #2
 703 000c 4868     		ldr	r0, [r1, #4]
 704 000e FFF7FEBF 		b	_ZN3PID10ResetFaultEv
 705              		.size	_ZN4Heat10ResetFaultEa, .-_ZN4Heat10ResetFaultEa
 706 0012 00BF     		.section	.text._ZNK4Heat13GetAveragePWMEj,"ax",%progbits
 707              		.align	2
 708              		.global	_ZNK4Heat13GetAveragePWMEj
 709              		.thumb
 710              		.thumb_func
 711              		.type	_ZNK4Heat13GetAveragePWMEj, %function
 712              	_ZNK4Heat13GetAveragePWMEj:
 713              		@ args = 0, pretend = 0, frame = 0
 714              		@ frame_needed = 0, uses_anonymous_args = 0
 715              		@ link register save eliminated.
 716 0000 00EB8101 		add	r1, r0, r1, lsl #2
 717 0004 4868     		ldr	r0, [r1, #4]
 718 0006 FFF7FEBF 		b	_ZNK3PID13GetAveragePWMEv
 719              		.size	_ZNK4Heat13GetAveragePWMEj, .-_ZNK4Heat13GetAveragePWMEj
 720 000a 00BF     		.section	.text._ZNK4Heat17GetLastSampleTimeEj,"ax",%progbits
 721              		.align	2
 722              		.global	_ZNK4Heat17GetLastSampleTimeEj
 723              		.thumb
 724              		.thumb_func
 725              		.type	_ZNK4Heat17GetLastSampleTimeEj, %function
 726              	_ZNK4Heat17GetLastSampleTimeEj:
 727              		@ args = 0, pretend = 0, frame = 0
 728              		@ frame_needed = 0, uses_anonymous_args = 0
 729              		@ link register save eliminated.
 730 0000 00EB8101 		add	r1, r0, r1, lsl #2
 731 0004 4B68     		ldr	r3, [r1, #4]
 732 0006 D86E     		ldr	r0, [r3, #108]
 733 0008 7047     		bx	lr
 734              		.size	_ZNK4Heat17GetLastSampleTimeEj, .-_ZNK4Heat17GetLastSampleTimeEj
 735 000a 00BF     		.section	.text._ZNK4Heat10UseSlowPwmEa,"ax",%progbits
 736              		.align	2
 737              		.global	_ZNK4Heat10UseSlowPwmEa
 738              		.thumb
 739              		.thumb_func
 740              		.type	_ZNK4Heat10UseSlowPwmEa, %function
 741              	_ZNK4Heat10UseSlowPwmEa:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc2FPSZk.s 			page 14


 742              		@ args = 0, pretend = 0, frame = 0
 743              		@ frame_needed = 0, uses_anonymous_args = 0
 744              		@ link register save eliminated.
 745 0000 90F92A30 		ldrsb	r3, [r0, #42]
 746 0004 8B42     		cmp	r3, r1
 747 0006 05D0     		beq	.L132
 748 0008 90F92B00 		ldrsb	r0, [r0, #43]
 749 000c 431A     		subs	r3, r0, r1
 750 000e 5842     		rsbs	r0, r3, #0
 751 0010 5841     		adcs	r0, r0, r3
 752 0012 7047     		bx	lr
 753              	.L132:
 754 0014 0120     		movs	r0, #1
 755 0016 7047     		bx	lr
 756              		.size	_ZNK4Heat10UseSlowPwmEa, .-_ZNK4Heat10UseSlowPwmEa
 757              		.section	.text._ZN4Heat13StartAutoTuneEjffR9StringRef,"ax",%progbits
 758              		.align	2
 759              		.global	_ZN4Heat13StartAutoTuneEjffR9StringRef
 760              		.thumb
 761              		.thumb_func
 762              		.type	_ZN4Heat13StartAutoTuneEjffR9StringRef, %function
 763              	_ZN4Heat13StartAutoTuneEjffR9StringRef:
 764              		@ args = 4, pretend = 0, frame = 0
 765              		@ frame_needed = 0, uses_anonymous_args = 0
 766              		@ link register save eliminated.
 767 0000 30B4     		push	{r4, r5}
 768 0002 90F92C40 		ldrsb	r4, [r0, #44]
 769 0006 029D     		ldr	r5, [sp, #8]
 770 0008 B4F1FF3F 		cmp	r4, #-1
 771 000c 06D0     		beq	.L135
 772 000e 2846     		mov	r0, r5
 773 0010 0A46     		mov	r2, r1
 774 0012 2346     		mov	r3, r4
 775 0014 0749     		ldr	r1, .L136
 776 0016 30BC     		pop	{r4, r5}
 777 0018 FFF7FEBF 		b	_ZN9StringRef6printfEPKcz
 778              	.L135:
 779 001c 00EB8104 		add	r4, r0, r1, lsl #2
 780 0020 80F82C10 		strb	r1, [r0, #44]
 781 0024 6068     		ldr	r0, [r4, #4]
 782 0026 1146     		mov	r1, r2
 783 0028 1A46     		mov	r2, r3
 784 002a 2B46     		mov	r3, r5
 785 002c 30BC     		pop	{r4, r5}
 786 002e FFF7FEBF 		b	_ZN3PID13StartAutoTuneEffR9StringRef
 787              	.L137:
 788 0032 00BF     		.align	2
 789              	.L136:
 790 0034 6C000000 		.word	.LC3
 791              		.size	_ZN4Heat13StartAutoTuneEjffR9StringRef, .-_ZN4Heat13StartAutoTuneEjffR9StringRef
 792              		.section	.text._ZNK4Heat8IsTuningEj,"ax",%progbits
 793              		.align	2
 794              		.global	_ZNK4Heat8IsTuningEj
 795              		.thumb
 796              		.thumb_func
 797              		.type	_ZNK4Heat8IsTuningEj, %function
 798              	_ZNK4Heat8IsTuningEj:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc2FPSZk.s 			page 15


 799              		@ args = 0, pretend = 0, frame = 0
 800              		@ frame_needed = 0, uses_anonymous_args = 0
 801              		@ link register save eliminated.
 802 0000 00EB8101 		add	r1, r0, r1, lsl #2
 803 0004 4B68     		ldr	r3, [r1, #4]
 804 0006 93F87400 		ldrb	r0, [r3, #116]	@ zero_extendqisi2
 805 000a 0428     		cmp	r0, #4
 806 000c 94BF     		ite	ls
 807 000e 0020     		movls	r0, #0
 808 0010 0120     		movhi	r0, #1
 809 0012 7047     		bx	lr
 810              		.size	_ZNK4Heat8IsTuningEj, .-_ZNK4Heat8IsTuningEj
 811              		.section	.text._ZNK4Heat17GetAutoTuneStatusER9StringRef,"ax",%progbits
 812              		.align	2
 813              		.global	_ZNK4Heat17GetAutoTuneStatusER9StringRef
 814              		.thumb
 815              		.thumb_func
 816              		.type	_ZNK4Heat17GetAutoTuneStatusER9StringRef, %function
 817              	_ZNK4Heat17GetAutoTuneStatusER9StringRef:
 818              		@ args = 0, pretend = 0, frame = 0
 819              		@ frame_needed = 0, uses_anonymous_args = 0
 820              		@ link register save eliminated.
 821 0000 90F92C30 		ldrsb	r3, [r0, #44]
 822 0004 5A1C     		adds	r2, r3, #1
 823 0006 04D0     		beq	.L142
 824              	.L140:
 825 0008 00EB8303 		add	r3, r0, r3, lsl #2
 826 000c 5868     		ldr	r0, [r3, #4]
 827 000e FFF7FEBF 		b	_ZN3PID17GetAutoTuneStatusER9StringRef
 828              	.L142:
 829 0012 90F92D30 		ldrsb	r3, [r0, #45]
 830 0016 5A1C     		adds	r2, r3, #1
 831 0018 F6D1     		bne	.L140
 832 001a 0846     		mov	r0, r1
 833 001c 0149     		ldr	r1, .L143
 834 001e FFF7FEBF 		b	_ZN9StringRef4copyEPKc
 835              	.L144:
 836 0022 00BF     		.align	2
 837              	.L143:
 838 0024 B8000000 		.word	.LC4
 839              		.size	_ZNK4Heat17GetAutoTuneStatusER9StringRef, .-_ZNK4Heat17GetAutoTuneStatusER9StringRef
 840              		.global	__aeabi_fcmpgt
 841              		.section	.text._ZNK4Heat26GetHighestTemperatureLimitEv,"ax",%progbits
 842              		.align	2
 843              		.global	_ZNK4Heat26GetHighestTemperatureLimitEv
 844              		.thumb
 845              		.thumb_func
 846              		.type	_ZNK4Heat26GetHighestTemperatureLimitEv, %function
 847              	_ZNK4Heat26GetHighestTemperatureLimitEv:
 848              		@ args = 0, pretend = 0, frame = 0
 849              		@ frame_needed = 0, uses_anonymous_args = 0
 850 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 851 0004 124B     		ldr	r3, .L154
 852 0006 134F     		ldr	r7, .L154+4
 853 0008 B3F82E80 		ldrh	r8, [r3, #46]
 854 000c 0646     		mov	r6, r0
 855 000e 0024     		movs	r4, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cc2FPSZk.s 			page 16


 856 0010 0AE0     		b	.L148
 857              	.L153:
 858 0012 96F92A30 		ldrsb	r3, [r6, #42]
 859 0016 9C42     		cmp	r4, r3
 860 0018 08D0     		beq	.L146
 861 001a 96F92B30 		ldrsb	r3, [r6, #43]
 862 001e 9C42     		cmp	r4, r3
 863 0020 04D0     		beq	.L146
 864              	.L149:
 865 0022 0134     		adds	r4, r4, #1
 866 0024 072C     		cmp	r4, #7
 867 0026 0FD0     		beq	.L152
 868              	.L148:
 869 0028 A045     		cmp	r8, r4
 870 002a F2D9     		bls	.L153
 871              	.L146:
 872 002c 06EB8403 		add	r3, r6, r4, lsl #2
 873 0030 5B68     		ldr	r3, [r3, #4]
 874 0032 3946     		mov	r1, r7
 875 0034 DD68     		ldr	r5, [r3, #12]	@ float
 876 0036 2846     		mov	r0, r5
 877 0038 FFF7FEFF 		bl	__aeabi_fcmpgt
 878 003c 0028     		cmp	r0, #0
 879 003e F0D0     		beq	.L149
 880 0040 0134     		adds	r4, r4, #1
 881 0042 072C     		cmp	r4, #7
 882 0044 2F46     		mov	r7, r5
 883 0046 EFD1     		bne	.L148
 884              	.L152:
 885 0048 3846     		mov	r0, r7
 886 004a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 887              	.L155:
 888 004e 00BF     		.align	2
 889              	.L154:
 890 0050 00000000 		.word	reprap
 891 0054 339388C3 		.word	-1014459597
 892              		.size	_ZNK4Heat26GetHighestTemperatureLimitEv, .-_ZNK4Heat26GetHighestTemperatureLimitEv
 893              		.section	.text._ZN4Heat20SetM301PidParametersEjRK17M301PidParameters,"ax",%progbits
 894              		.align	2
 895              		.global	_ZN4Heat20SetM301PidParametersEjRK17M301PidParameters
 896              		.thumb
 897              		.thumb_func
 898              		.type	_ZN4Heat20SetM301PidParametersEjRK17M301PidParameters, %function
 899              	_ZN4Heat20SetM301PidParametersEjRK17M301PidParameters:
 900              		@ args = 0, pretend = 0, frame = 0
 901              		@ frame_needed = 0, uses_anonymous_args = 0
 902              		@ link register save eliminated.
 903 0000 00EB8101 		add	r1, r0, r1, lsl #2
 904 0004 4868     		ldr	r0, [r1, #4]
 905 0006 1146     		mov	r1, r2
 906 0008 3030     		adds	r0, r0, #48
 907 000a FFF7FEBF 		b	_ZN5FopDt20SetM301PidParametersERK17M301PidParameters
 908              		.size	_ZN4Heat20SetM301PidParametersEjRK17M301PidParameters, .-_ZN4Heat20SetM301PidParametersEjRK1
 909 000e 00BF     		.section	.text._ZNK4Heat20WriteModelParametersEP9FileStore,"ax",%progbits
 910              		.align	2
 911              		.global	_ZNK4Heat20WriteModelParametersEP9FileStore
 912              		.thumb
ARM GAS  C:\Users\George\AppData\Local\Temp\cc2FPSZk.s 			page 17


 913              		.thumb_func
 914              		.type	_ZNK4Heat20WriteModelParametersEP9FileStore, %function
 915              	_ZNK4Heat20WriteModelParametersEP9FileStore:
 916              		@ args = 0, pretend = 0, frame = 0
 917              		@ frame_needed = 0, uses_anonymous_args = 0
 918 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 919 0004 0F46     		mov	r7, r1
 920 0006 0546     		mov	r5, r0
 921 0008 0E49     		ldr	r1, .L172
 922 000a 3846     		mov	r0, r7
 923 000c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 924 0010 8046     		mov	r8, r0
 925 0012 90B1     		cbz	r0, .L161
 926 0014 043D     		subs	r5, r5, #4
 927 0016 0124     		movs	r4, #1
 928 0018 01E0     		b	.L162
 929              	.L160:
 930 001a 082C     		cmp	r4, #8
 931 001c 0FD0     		beq	.L159
 932              	.L162:
 933 001e 0435     		adds	r5, r5, #4
 934 0020 6868     		ldr	r0, [r5, #4]
 935 0022 621E     		subs	r2, r4, #1
 936 0024 90F84060 		ldrb	r6, [r0, #64]	@ zero_extendqisi2
 937 0028 0134     		adds	r4, r4, #1
 938 002a 002E     		cmp	r6, #0
 939 002c F5D0     		beq	.L160
 940 002e 3030     		adds	r0, r0, #48
 941 0030 3946     		mov	r1, r7
 942 0032 FFF7FEFF 		bl	_ZNK5FopDt15WriteParametersEP9FileStorej
 943 0036 0028     		cmp	r0, #0
 944 0038 EFD1     		bne	.L160
 945              	.L161:
 946 003a 4FF00008 		mov	r8, #0
 947              	.L159:
 948 003e 4046     		mov	r0, r8
 949 0040 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 950              	.L173:
 951              		.align	2
 952              	.L172:
 953 0044 D8000000 		.word	.LC5
 954              		.size	_ZNK4Heat20WriteModelParametersEP9FileStore, .-_ZNK4Heat20WriteModelParametersEP9FileStore
 955              		.section	.rodata.str1.4,"aMS",%progbits,1
 956              		.align	2
 957              	.LC0:
 958 0000 48656174 		.ascii	"Heat class exited.\012\000"
 958      20636C61 
 958      73732065 
 958      78697465 
 958      642E0A00 
 959              	.LC1:
 960 0014 3D3D3D20 		.ascii	"=== Heat ===\012Bed heater = %d, chamber heater = %"
 960      48656174 
 960      203D3D3D 
 960      0A426564 
 960      20686561 
 961 0044 640A00   		.ascii	"d\012\000"
ARM GAS  C:\Users\George\AppData\Local\Temp\cc2FPSZk.s 			page 18


 962 0047 00       		.space	1
 963              	.LC2:
 964 0048 48656174 		.ascii	"Heater %d is on, I-accum = %.1f\012\000"
 964      65722025 
 964      64206973 
 964      206F6E2C 
 964      20492D61 
 965 0069 000000   		.space	3
 966              	.LC3:
 967 006c 4572726F 		.ascii	"Error: cannot start auto tuning heater %u because h"
 967      723A2063 
 967      616E6E6F 
 967      74207374 
 967      61727420 
 968 009f 65617465 		.ascii	"eater %d is being tuned\000"
 968      72202564 
 968      20697320 
 968      6265696E 
 968      67207475 
 969 00b7 00       		.space	1
 970              	.LC4:
 971 00b8 4E6F2068 		.ascii	"No heater has been tuned yet\000"
 971      65617465 
 971      72206861 
 971      73206265 
 971      656E2074 
 972 00d5 000000   		.space	3
 973              	.LC5:
 974 00d8 3B204865 		.ascii	"; Heater model parameters\012\000"
 974      61746572 
 974      206D6F64 
 974      656C2070 
 974      6172616D 
 975 00f3 00       		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 976              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 977              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 978              	_ZL28cpu_irq_prev_interrupt_state:
 979 0000 00       		.space	1
 980              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 981              		.align	2
 982              		.type	_ZL32cpu_irq_critical_section_counter, %object
 983              		.size	_ZL32cpu_irq_critical_section_counter, 4
 984              	_ZL32cpu_irq_critical_section_counter:
 985 0000 00000000 		.space	4
 986              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
