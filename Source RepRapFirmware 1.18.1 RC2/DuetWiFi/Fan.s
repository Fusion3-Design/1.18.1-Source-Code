ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXDUkVD.s 			page 1


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
  15              		.file	"Fan.cpp"
  16              		.section	.text._ZN3Fan11SetBlipTimeEf,"ax",%progbits
  17              		.align	2
  18              		.global	_ZN3Fan11SetBlipTimeEf
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN3Fan11SetBlipTimeEf, %function
  22              	_ZN3Fan11SetBlipTimeEf:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 07EE901A 		fmsr	s15, r1
  27 0004 F4EE677A 		fcmps	s15, s15
  28 0008 F1EE10FA 		fmstat
  29 000c 04D6     		bvs	.L4
  30 000e F5EEC07A 		fcmpezs	s15
  31 0012 F1EE10FA 		fmstat
  32 0016 09DD     		ble	.L6
  33              	.L4:
  34 0018 9FED067A 		flds	s14, .L7
  35 001c 67EE877A 		fmuls	s15, s15, s14
  36 0020 FCEEE77A 		ftouizs	s15, s15
  37 0024 17EE903A 		fmrs	r3, s15	@ int
  38 0028 0361     		str	r3, [r0, #16]
  39 002a 7047     		bx	lr
  40              	.L6:
  41 002c 0023     		movs	r3, #0
  42 002e 0361     		str	r3, [r0, #16]
  43 0030 7047     		bx	lr
  44              	.L8:
  45 0032 00BF     		.align	2
  46              	.L7:
  47 0034 00007A44 		.word	1148846080
  48              		.size	_ZN3Fan11SetBlipTimeEf, .-_ZN3Fan11SetBlipTimeEf
  49              		.section	.text._ZN3Fan14SetHardwarePwmEf,"ax",%progbits
  50              		.align	2
  51              		.global	_ZN3Fan14SetHardwarePwmEf
  52              		.thumb
  53              		.thumb_func
  54              		.type	_ZN3Fan14SetHardwarePwmEf, %function
  55              	_ZN3Fan14SetHardwarePwmEf:
  56              		@ args = 0, pretend = 0, frame = 0
  57              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXDUkVD.s 			page 2


  58              		@ link register save eliminated.
  59 0000 037F     		ldrb	r3, [r0, #28]	@ zero_extendqisi2
  60 0002 FF2B     		cmp	r3, #255
  61 0004 07EE901A 		fmsr	s15, r1
  62 0008 10D0     		beq	.L9
  63 000a 417F     		ldrb	r1, [r0, #29]	@ zero_extendqisi2
  64 000c 827F     		ldrb	r2, [r0, #30]	@ zero_extendqisi2
  65 000e 09B1     		cbz	r1, .L11
  66 0010 82F00102 		eor	r2, r2, #1
  67              	.L11:
  68 0014 1AB1     		cbz	r2, .L12
  69 0016 B7EE007A 		fconsts	s14, #112
  70 001a 77EE677A 		fsubs	s15, s14, s15
  71              	.L12:
  72 001e 90ED037A 		flds	s14, [r0, #12]
  73 0022 B4EE677A 		fcmps	s14, s15
  74 0026 F1EE10FA 		fmstat
  75 002a 00D1     		bne	.L23
  76              	.L9:
  77 002c 7047     		bx	lr
  78              	.L23:
  79 002e C72B     		cmp	r3, #199
  80 0030 C0ED037A 		fsts	s15, [r0, #12]
  81 0034 028B     		ldrh	r2, [r0, #24]
  82 0036 04D8     		bhi	.L24
  83 0038 1846     		mov	r0, r3
  84 003a 17EE901A 		fmrs	r1, s15
  85 003e FFF7FEBF 		b	_Z9AnalogOuthft
  86              	.L24:
  87 0042 03F13800 		add	r0, r3, #56
  88 0046 C0B2     		uxtb	r0, r0
  89 0048 17EE901A 		fmrs	r1, s15
  90 004c FFF7FEBF 		b	_ZN13DuetExpansion9AnalogOutEhf
  91              		.size	_ZN3Fan14SetHardwarePwmEf, .-_ZN3Fan14SetHardwarePwmEf
  92              		.section	.text._ZN3Fan7RefreshEv,"ax",%progbits
  93              		.align	2
  94              		.global	_ZN3Fan7RefreshEv
  95              		.thumb
  96              		.thumb_func
  97              		.type	_ZN3Fan7RefreshEv, %function
  98              	_ZN3Fan7RefreshEv:
  99              		@ args = 0, pretend = 0, frame = 0
 100              		@ frame_needed = 0, uses_anonymous_args = 0
 101 0000 10B5     		push	{r4, lr}
 102 0002 418B     		ldrh	r1, [r0, #26]
 103 0004 2DED028B 		fstmfdd	sp!, {d8}
 104 0008 0446     		mov	r4, r0
 105 000a 21BB     		cbnz	r1, .L26
 106 000c D0ED007A 		flds	s15, [r0]
 107              	.L27:
 108 0010 F5EEC07A 		fcmpezs	s15
 109 0014 F1EE10FA 		fmstat
 110 0018 35DD     		ble	.L40
 111              	.L29:
 112 001a 94ED018A 		flds	s16, [r4, #4]
 113 001e E37F     		ldrb	r3, [r4, #31]	@ zero_extendqisi2
 114 0020 B4EEE78A 		fcmpes	s16, s15
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXDUkVD.s 			page 3


 115 0024 F1EE10FA 		fmstat
 116 0028 D8BF     		it	le
 117 002a B0EE678A 		fcpysle	s16, s15
 118 002e 43B9     		cbnz	r3, .L41
 119              	.L28:
 120 0030 18EE101A 		fmrs	r1, s16
 121 0034 BDEC028B 		fldmfdd	sp!, {d8}
 122 0038 2046     		mov	r0, r4
 123 003a BDE81040 		pop	{r4, lr}
 124 003e FFF7FEBF 		b	_ZN3Fan14SetHardwarePwmEf
 125              	.L41:
 126 0042 FFF7FEFF 		bl	millis
 127 0046 6269     		ldr	r2, [r4, #20]
 128 0048 2369     		ldr	r3, [r4, #16]
 129 004a 801A     		subs	r0, r0, r2
 130 004c 9842     		cmp	r0, r3
 131 004e 17D3     		bcc	.L35
 132 0050 0023     		movs	r3, #0
 133 0052 E377     		strb	r3, [r4, #31]
 134 0054 ECE7     		b	.L28
 135              	.L26:
 136 0056 0D4B     		ldr	r3, .L42
 137 0058 8268     		ldr	r2, [r0, #8]	@ float
 138 005a 1868     		ldr	r0, [r3]
 139 005c FFF7FEFF 		bl	_ZN8Platform12AnyHeaterHotEtf
 140 0060 58B1     		cbz	r0, .L32
 141 0062 D4ED007A 		flds	s15, [r4]
 142 0066 B6EE007A 		fconsts	s14, #96
 143 006a F4EEC77A 		fcmpes	s15, s14
 144 006e F1EE10FA 		fmstat
 145 0072 CDD5     		bpl	.L27
 146 0074 F0EE477A 		fcpys	s15, s14
 147 0078 CFE7     		b	.L29
 148              	.L32:
 149 007a 9FED058A 		flds	s16, .L42+4
 150 007e D7E7     		b	.L28
 151              	.L35:
 152 0080 B7EE008A 		fconsts	s16, #112
 153 0084 D4E7     		b	.L28
 154              	.L40:
 155 0086 B0EE678A 		fcpys	s16, s15
 156 008a D1E7     		b	.L28
 157              	.L43:
 158              		.align	2
 159              	.L42:
 160 008c 00000000 		.word	reprap
 161 0090 00000000 		.word	0
 162              		.size	_ZN3Fan7RefreshEv, .-_ZN3Fan7RefreshEv
 163              		.section	.text._ZN3Fan4InitEhb,"ax",%progbits
 164              		.align	2
 165              		.global	_ZN3Fan4InitEhb
 166              		.thumb
 167              		.thumb_func
 168              		.type	_ZN3Fan4InitEhb, %function
 169              	_ZN3Fan4InitEhb:
 170              		@ args = 0, pretend = 0, frame = 0
 171              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXDUkVD.s 			page 4


 172              		@ link register save eliminated.
 173 0000 2DE9F001 		push	{r4, r5, r6, r7, r8}
 174 0004 4FF0000C 		mov	ip, #0
 175 0008 0B4F     		ldr	r7, .L45
 176 000a 0C4E     		ldr	r6, .L45+4
 177 000c DFF83080 		ldr	r8, .L45+8
 178 0010 0177     		strb	r1, [r0, #28]
 179 0012 6425     		movs	r5, #100
 180 0014 0021     		movs	r1, #0
 181 0016 FA24     		movs	r4, #250
 182 0018 4760     		str	r7, [r0, #4]	@ float
 183 001a 0561     		str	r5, [r0, #16]
 184 001c 0483     		strh	r4, [r0, #24]	@ movhi
 185 001e 8660     		str	r6, [r0, #8]	@ float
 186 0020 C0F80C80 		str	r8, [r0, #12]	@ float
 187 0024 8277     		strb	r2, [r0, #30]
 188 0026 C0F800C0 		str	ip, [r0]	@ float
 189 002a C177     		strb	r1, [r0, #31]
 190 002c 4177     		strb	r1, [r0, #29]
 191 002e 4183     		strh	r1, [r0, #26]	@ movhi
 192 0030 BDE8F001 		pop	{r4, r5, r6, r7, r8}
 193 0034 FFF7FEBF 		b	_ZN3Fan7RefreshEv
 194              	.L46:
 195              		.align	2
 196              	.L45:
 197 0038 CDCCCC3D 		.word	1036831949
 198 003c 00003442 		.word	1110704128
 199 0040 000080BF 		.word	-1082130432
 200              		.size	_ZN3Fan4InitEhb, .-_ZN3Fan4InitEhb
 201              		.section	.text._ZN3Fan11SetInvertedEb,"ax",%progbits
 202              		.align	2
 203              		.global	_ZN3Fan11SetInvertedEb
 204              		.thumb
 205              		.thumb_func
 206              		.type	_ZN3Fan11SetInvertedEb, %function
 207              	_ZN3Fan11SetInvertedEb:
 208              		@ args = 0, pretend = 0, frame = 0
 209              		@ frame_needed = 0, uses_anonymous_args = 0
 210              		@ link register save eliminated.
 211 0000 4177     		strb	r1, [r0, #29]
 212 0002 FFF7FEBF 		b	_ZN3Fan7RefreshEv
 213              		.size	_ZN3Fan11SetInvertedEb, .-_ZN3Fan11SetInvertedEb
 214 0006 00BF     		.section	.text._ZN3Fan19SetHeatersMonitoredEt,"ax",%progbits
 215              		.align	2
 216              		.global	_ZN3Fan19SetHeatersMonitoredEt
 217              		.thumb
 218              		.thumb_func
 219              		.type	_ZN3Fan19SetHeatersMonitoredEt, %function
 220              	_ZN3Fan19SetHeatersMonitoredEt:
 221              		@ args = 0, pretend = 0, frame = 0
 222              		@ frame_needed = 0, uses_anonymous_args = 0
 223              		@ link register save eliminated.
 224 0000 4183     		strh	r1, [r0, #26]	@ movhi
 225 0002 FFF7FEBF 		b	_ZN3Fan7RefreshEv
 226              		.size	_ZN3Fan19SetHeatersMonitoredEt, .-_ZN3Fan19SetHeatersMonitoredEt
 227 0006 00BF     		.section	.text._ZN3Fan8SetValueEf,"ax",%progbits
 228              		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXDUkVD.s 			page 5


 229              		.global	_ZN3Fan8SetValueEf
 230              		.thumb
 231              		.thumb_func
 232              		.type	_ZN3Fan8SetValueEf, %function
 233              	_ZN3Fan8SetValueEf:
 234              		@ args = 0, pretend = 0, frame = 0
 235              		@ frame_needed = 0, uses_anonymous_args = 0
 236 0000 07EE901A 		fmsr	s15, r1
 237 0004 B7EE007A 		fconsts	s14, #112
 238 0008 F4EEC77A 		fcmpes	s15, s14
 239 000c F1EE10FA 		fmstat
 240 0010 C4BF     		itt	gt
 241 0012 9FED2C7A 		fldsgt	s14, .L73
 242 0016 C7EE877A 		fdivsgt	s15, s15, s14
 243 001a 10B5     		push	{r4, lr}
 244 001c 0446     		mov	r4, r0
 245 001e 2DED028B 		fstmfdd	sp!, {d8}
 246 0022 F4EE677A 		fcmps	s15, s15
 247 0026 F1EE10FA 		fmstat
 248 002a 1DD6     		bvs	.L52
 249 002c B7EE008A 		fconsts	s16, #112
 250 0030 F4EEC87A 		fcmpes	s15, s16
 251 0034 F1EE10FA 		fmstat
 252 0038 2FD4     		bmi	.L53
 253              	.L54:
 254 003a D4ED007A 		flds	s15, [r4]
 255 003e F5EE407A 		fcmpzs	s15
 256 0042 F1EE10FA 		fmstat
 257 0046 06D1     		bne	.L55
 258 0048 F7EE007A 		fconsts	s15, #112
 259 004c B4EEE78A 		fcmpes	s16, s15
 260 0050 F1EE10FA 		fmstat
 261 0054 29D4     		bmi	.L72
 262              	.L55:
 263 0056 84ED008A 		fsts	s16, [r4]
 264 005a BDEC028B 		fldmfdd	sp!, {d8}
 265 005e 2046     		mov	r0, r4
 266 0060 BDE81040 		pop	{r4, lr}
 267 0064 FFF7FEBF 		b	_ZN3Fan7RefreshEv
 268              	.L52:
 269 0068 90ED007A 		flds	s14, [r0]
 270 006c B5EE407A 		fcmpzs	s14
 271 0070 F1EE10FA 		fmstat
 272 0074 0ED1     		bne	.L60
 273 0076 F5EEC07A 		fcmpezs	s15
 274 007a F1EE10FA 		fmstat
 275 007e B0EE678A 		fcpys	s16, s15
 276 0082 E8DD     		ble	.L55
 277 0084 F7EE007A 		fconsts	s15, #112
 278 0088 B4EEE78A 		fcmpes	s16, s15
 279 008c F1EE10FA 		fmstat
 280 0090 E1D5     		bpl	.L55
 281 0092 0AE0     		b	.L72
 282              	.L60:
 283 0094 B0EE678A 		fcpys	s16, s15
 284 0098 DDE7     		b	.L55
 285              	.L53:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXDUkVD.s 			page 6


 286 009a F5EEC07A 		fcmpezs	s15
 287 009e F1EE10FA 		fmstat
 288 00a2 0BDD     		ble	.L71
 289 00a4 B0EE678A 		fcpys	s16, s15
 290 00a8 C7E7     		b	.L54
 291              	.L72:
 292 00aa 2369     		ldr	r3, [r4, #16]
 293 00ac 002B     		cmp	r3, #0
 294 00ae D2D0     		beq	.L55
 295 00b0 0123     		movs	r3, #1
 296 00b2 E377     		strb	r3, [r4, #31]
 297 00b4 FFF7FEFF 		bl	millis
 298 00b8 6061     		str	r0, [r4, #20]
 299 00ba CCE7     		b	.L55
 300              	.L71:
 301 00bc 9FED028A 		flds	s16, .L73+4
 302 00c0 C9E7     		b	.L55
 303              	.L74:
 304 00c2 00BF     		.align	2
 305              	.L73:
 306 00c4 00007F43 		.word	1132396544
 307 00c8 00000000 		.word	0
 308              		.size	_ZN3Fan8SetValueEf, .-_ZN3Fan8SetValueEf
 309              		.section	.text._ZN3Fan11SetMinValueEf,"ax",%progbits
 310              		.align	2
 311              		.global	_ZN3Fan11SetMinValueEf
 312              		.thumb
 313              		.thumb_func
 314              		.type	_ZN3Fan11SetMinValueEf, %function
 315              	_ZN3Fan11SetMinValueEf:
 316              		@ args = 0, pretend = 0, frame = 0
 317              		@ frame_needed = 0, uses_anonymous_args = 0
 318              		@ link register save eliminated.
 319 0000 07EE901A 		fmsr	s15, r1
 320 0004 B7EE007A 		fconsts	s14, #112
 321 0008 F4EEC77A 		fcmpes	s15, s14
 322 000c F1EE10FA 		fmstat
 323 0010 C4BF     		itt	gt
 324 0012 9FED137A 		fldsgt	s14, .L85
 325 0016 C7EE877A 		fdivsgt	s15, s15, s14
 326 001a F4EE677A 		fcmps	s15, s15
 327 001e F1EE10FA 		fmstat
 328 0022 17D6     		bvs	.L81
 329 0024 B7EE007A 		fconsts	s14, #112
 330 0028 F4EEC77A 		fcmpes	s15, s14
 331 002c F1EE10FA 		fmstat
 332 0030 03D4     		bmi	.L79
 333 0032 80ED017A 		fsts	s14, [r0, #4]
 334 0036 FFF7FEBF 		b	_ZN3Fan7RefreshEv
 335              	.L79:
 336 003a F5EEC07A 		fcmpezs	s15
 337 003e 9FED097A 		flds	s14, .L85+4
 338 0042 F1EE10FA 		fmstat
 339 0046 C8BF     		it	gt
 340 0048 B0EE677A 		fcpysgt	s14, s15
 341 004c 80ED017A 		fsts	s14, [r0, #4]
 342 0050 FFF7FEBF 		b	_ZN3Fan7RefreshEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXDUkVD.s 			page 7


 343              	.L81:
 344 0054 B0EE677A 		fcpys	s14, s15
 345 0058 80ED017A 		fsts	s14, [r0, #4]
 346 005c FFF7FEBF 		b	_ZN3Fan7RefreshEv
 347              	.L86:
 348              		.align	2
 349              	.L85:
 350 0060 00007F43 		.word	1132396544
 351 0064 00000000 		.word	0
 352              		.size	_ZN3Fan11SetMinValueEf, .-_ZN3Fan11SetMinValueEf
 353              		.section	.text._ZN3Fan15SetPwmFrequencyEf,"ax",%progbits
 354              		.align	2
 355              		.global	_ZN3Fan15SetPwmFrequencyEf
 356              		.thumb
 357              		.thumb_func
 358              		.type	_ZN3Fan15SetPwmFrequencyEf, %function
 359              	_ZN3Fan15SetPwmFrequencyEf:
 360              		@ args = 0, pretend = 0, frame = 0
 361              		@ frame_needed = 0, uses_anonymous_args = 0
 362              		@ link register save eliminated.
 363 0000 07EE901A 		fmsr	s15, r1
 364 0004 F4EE677A 		fcmps	s15, s15
 365 0008 F1EE10FA 		fmstat
 366 000c 0DD6     		bvs	.L91
 367 000e 9FED127A 		flds	s14, .L94
 368 0012 F4EEC77A 		fcmpes	s15, s14
 369 0016 F1EE10FA 		fmstat
 370 001a 10D5     		bpl	.L92
 371 001c B7EE007A 		fconsts	s14, #112
 372 0020 F4EEC77A 		fcmpes	s15, s14
 373 0024 F1EE10FA 		fmstat
 374 0028 10DD     		ble	.L93
 375              	.L91:
 376 002a FCEEE77A 		ftouizs	s15, s15
 377 002e 0B4B     		ldr	r3, .L94+4
 378 0030 C360     		str	r3, [r0, #12]	@ float
 379 0032 17EE902A 		fmrs	r2, s15	@ int
 380 0036 92B2     		uxth	r2, r2
 381 0038 0283     		strh	r2, [r0, #24]	@ movhi
 382 003a FFF7FEBF 		b	_ZN3Fan7RefreshEv
 383              	.L92:
 384 003e 4FF6FF72 		movw	r2, #65535
 385 0042 064B     		ldr	r3, .L94+4
 386 0044 0283     		strh	r2, [r0, #24]	@ movhi
 387 0046 C360     		str	r3, [r0, #12]	@ float
 388 0048 FFF7FEBF 		b	_ZN3Fan7RefreshEv
 389              	.L93:
 390 004c 0122     		movs	r2, #1
 391 004e 034B     		ldr	r3, .L94+4
 392 0050 0283     		strh	r2, [r0, #24]	@ movhi
 393 0052 C360     		str	r3, [r0, #12]	@ float
 394 0054 FFF7FEBF 		b	_ZN3Fan7RefreshEv
 395              	.L95:
 396              		.align	2
 397              	.L94:
 398 0058 00FF7F47 		.word	1199570688
 399 005c 000080BF 		.word	-1082130432
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXDUkVD.s 			page 8


 400              		.size	_ZN3Fan15SetPwmFrequencyEf, .-_ZN3Fan15SetPwmFrequencyEf
 401              		.section	.text._ZN3Fan5CheckEv,"ax",%progbits
 402              		.align	2
 403              		.global	_ZN3Fan5CheckEv
 404              		.thumb
 405              		.thumb_func
 406              		.type	_ZN3Fan5CheckEv, %function
 407              	_ZN3Fan5CheckEv:
 408              		@ args = 0, pretend = 0, frame = 0
 409              		@ frame_needed = 0, uses_anonymous_args = 0
 410              		@ link register save eliminated.
 411 0000 438B     		ldrh	r3, [r0, #26]
 412 0002 0BB9     		cbnz	r3, .L97
 413 0004 C37F     		ldrb	r3, [r0, #31]	@ zero_extendqisi2
 414 0006 0BB1     		cbz	r3, .L96
 415              	.L97:
 416 0008 FFF7FEBF 		b	_ZN3Fan7RefreshEv
 417              	.L96:
 418 000c 7047     		bx	lr
 419              		.size	_ZN3Fan5CheckEv, .-_ZN3Fan5CheckEv
 420 000e 00BF     		.section	.text._ZN3Fan7DisableEv,"ax",%progbits
 421              		.align	2
 422              		.global	_ZN3Fan7DisableEv
 423              		.thumb
 424              		.thumb_func
 425              		.type	_ZN3Fan7DisableEv, %function
 426              	_ZN3Fan7DisableEv:
 427              		@ args = 0, pretend = 0, frame = 0
 428              		@ frame_needed = 0, uses_anonymous_args = 0
 429 0000 037F     		ldrb	r3, [r0, #28]	@ zero_extendqisi2
 430 0002 FF2B     		cmp	r3, #255
 431 0004 10B5     		push	{r4, lr}
 432 0006 0446     		mov	r4, r0
 433 0008 06D0     		beq	.L100
 434 000a 0023     		movs	r3, #0
 435 000c 044A     		ldr	r2, .L104
 436 000e 4377     		strb	r3, [r0, #29]
 437 0010 C260     		str	r2, [r0, #12]	@ float
 438 0012 0021     		movs	r1, #0
 439 0014 FFF7FEFF 		bl	_ZN3Fan14SetHardwarePwmEf
 440              	.L100:
 441 0018 FF23     		movs	r3, #255
 442 001a 2377     		strb	r3, [r4, #28]
 443 001c 10BD     		pop	{r4, pc}
 444              	.L105:
 445 001e 00BF     		.align	2
 446              	.L104:
 447 0020 000080BF 		.word	-1082130432
 448              		.size	_ZN3Fan7DisableEv, .-_ZN3Fan7DisableEv
 449              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 450              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 451              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 452              	_ZL28cpu_irq_prev_interrupt_state:
 453 0000 00       		.space	1
 454              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 455              		.align	2
 456              		.type	_ZL32cpu_irq_critical_section_counter, %object
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccXDUkVD.s 			page 9


 457              		.size	_ZL32cpu_irq_critical_section_counter, 4
 458              	_ZL32cpu_irq_critical_section_counter:
 459 0000 00000000 		.space	4
 460              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
