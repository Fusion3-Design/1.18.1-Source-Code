ARM GAS  C:\Users\George\AppData\Local\Temp\ccX70EGl.s 			page 1


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
  14              		.file	"Fan.cpp"
  15              		.global	__aeabi_fcmpun
  16              		.global	__aeabi_fmul
  17              		.global	__aeabi_f2uiz
  18              		.global	__aeabi_fcmpgt
  19              		.section	.text._ZN3Fan11SetBlipTimeEf,"ax",%progbits
  20              		.align	2
  21              		.global	_ZN3Fan11SetBlipTimeEf
  22              		.thumb
  23              		.thumb_func
  24              		.type	_ZN3Fan11SetBlipTimeEf, %function
  25              	_ZN3Fan11SetBlipTimeEf:
  26              		@ args = 0, pretend = 0, frame = 0
  27              		@ frame_needed = 0, uses_anonymous_args = 0
  28 0000 38B5     		push	{r3, r4, r5, lr}
  29 0002 0546     		mov	r5, r0
  30 0004 0846     		mov	r0, r1
  31 0006 0C46     		mov	r4, r1
  32 0008 FFF7FEFF 		bl	__aeabi_fcmpun
  33 000c 20B9     		cbnz	r0, .L5
  34 000e 2046     		mov	r0, r4
  35 0010 0021     		movs	r1, #0
  36 0012 FFF7FEFF 		bl	__aeabi_fcmpgt
  37 0016 28B1     		cbz	r0, .L4
  38              	.L5:
  39 0018 0349     		ldr	r1, .L8
  40 001a 2046     		mov	r0, r4
  41 001c FFF7FEFF 		bl	__aeabi_fmul
  42 0020 FFF7FEFF 		bl	__aeabi_f2uiz
  43              	.L4:
  44 0024 2861     		str	r0, [r5, #16]
  45 0026 38BD     		pop	{r3, r4, r5, pc}
  46              	.L9:
  47              		.align	2
  48              	.L8:
  49 0028 00007A44 		.word	1148846080
  50              		.size	_ZN3Fan11SetBlipTimeEf, .-_ZN3Fan11SetBlipTimeEf
  51              		.global	__aeabi_fsub
  52              		.global	__aeabi_fcmpeq
  53              		.section	.text._ZN3Fan14SetHardwarePwmEf,"ax",%progbits
  54              		.align	2
  55              		.global	_ZN3Fan14SetHardwarePwmEf
  56              		.thumb
  57              		.thumb_func
ARM GAS  C:\Users\George\AppData\Local\Temp\ccX70EGl.s 			page 2


  58              		.type	_ZN3Fan14SetHardwarePwmEf, %function
  59              	_ZN3Fan14SetHardwarePwmEf:
  60              		@ args = 0, pretend = 0, frame = 0
  61              		@ frame_needed = 0, uses_anonymous_args = 0
  62 0000 70B5     		push	{r4, r5, r6, lr}
  63 0002 067F     		ldrb	r6, [r0, #28]	@ zero_extendqisi2
  64 0004 0446     		mov	r4, r0
  65 0006 FF2E     		cmp	r6, #255
  66 0008 0D46     		mov	r5, r1
  67 000a 10D0     		beq	.L10
  68 000c 427F     		ldrb	r2, [r0, #29]	@ zero_extendqisi2
  69 000e 837F     		ldrb	r3, [r0, #30]	@ zero_extendqisi2
  70 0010 0AB1     		cbz	r2, .L12
  71 0012 83F00103 		eor	r3, r3, #1
  72              	.L12:
  73 0016 2BB1     		cbz	r3, .L13
  74 0018 2946     		mov	r1, r5
  75 001a 4FF07E50 		mov	r0, #1065353216
  76 001e FFF7FEFF 		bl	__aeabi_fsub
  77 0022 0546     		mov	r5, r0
  78              	.L13:
  79 0024 E068     		ldr	r0, [r4, #12]	@ float
  80 0026 2946     		mov	r1, r5
  81 0028 FFF7FEFF 		bl	__aeabi_fcmpeq
  82 002c 00B1     		cbz	r0, .L25
  83              	.L10:
  84 002e 70BD     		pop	{r4, r5, r6, pc}
  85              	.L25:
  86 0030 E560     		str	r5, [r4, #12]	@ float
  87 0032 3046     		mov	r0, r6
  88 0034 2946     		mov	r1, r5
  89 0036 228B     		ldrh	r2, [r4, #24]
  90 0038 BDE87040 		pop	{r4, r5, r6, lr}
  91 003c FFF7FEBF 		b	_Z9AnalogOuthft
  92              		.size	_ZN3Fan14SetHardwarePwmEf, .-_ZN3Fan14SetHardwarePwmEf
  93              		.global	__aeabi_fcmplt
  94              		.section	.text._ZN3Fan7RefreshEv,"ax",%progbits
  95              		.align	2
  96              		.global	_ZN3Fan7RefreshEv
  97              		.thumb
  98              		.thumb_func
  99              		.type	_ZN3Fan7RefreshEv, %function
 100              	_ZN3Fan7RefreshEv:
 101              		@ args = 0, pretend = 0, frame = 0
 102              		@ frame_needed = 0, uses_anonymous_args = 0
 103 0000 418B     		ldrh	r1, [r0, #26]
 104 0002 70B5     		push	{r4, r5, r6, lr}
 105 0004 0446     		mov	r4, r0
 106 0006 39BB     		cbnz	r1, .L27
 107 0008 0668     		ldr	r6, [r0]	@ float
 108              	.L28:
 109 000a 3046     		mov	r0, r6
 110 000c 0021     		movs	r1, #0
 111 000e FFF7FEFF 		bl	__aeabi_fcmpgt
 112 0012 0028     		cmp	r0, #0
 113 0014 40D0     		beq	.L41
 114              	.L30:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccX70EGl.s 			page 3


 115 0016 6568     		ldr	r5, [r4, #4]	@ float
 116 0018 3146     		mov	r1, r6
 117 001a 2846     		mov	r0, r5
 118 001c FFF7FEFF 		bl	__aeabi_fcmpgt
 119 0020 38B1     		cbz	r0, .L42
 120 0022 E37F     		ldrb	r3, [r4, #31]	@ zero_extendqisi2
 121 0024 4BB9     		cbnz	r3, .L43
 122              	.L29:
 123 0026 2046     		mov	r0, r4
 124 0028 2946     		mov	r1, r5
 125 002a BDE87040 		pop	{r4, r5, r6, lr}
 126 002e FFF7FEBF 		b	_ZN3Fan14SetHardwarePwmEf
 127              	.L42:
 128 0032 E37F     		ldrb	r3, [r4, #31]	@ zero_extendqisi2
 129 0034 3546     		mov	r5, r6
 130 0036 002B     		cmp	r3, #0
 131 0038 F5D0     		beq	.L29
 132              	.L43:
 133 003a FFF7FEFF 		bl	millis
 134 003e 6269     		ldr	r2, [r4, #20]
 135 0040 2369     		ldr	r3, [r4, #16]
 136 0042 801A     		subs	r0, r0, r2
 137 0044 9842     		cmp	r0, r3
 138 0046 1FD3     		bcc	.L36
 139 0048 0023     		movs	r3, #0
 140 004a E377     		strb	r3, [r4, #31]
 141 004c 2046     		mov	r0, r4
 142 004e 2946     		mov	r1, r5
 143 0050 BDE87040 		pop	{r4, r5, r6, lr}
 144 0054 FFF7FEBF 		b	_ZN3Fan14SetHardwarePwmEf
 145              	.L27:
 146 0058 104B     		ldr	r3, .L44
 147 005a A268     		ldr	r2, [r4, #8]	@ float
 148 005c 1868     		ldr	r0, [r3]
 149 005e FFF7FEFF 		bl	_ZN8Platform12AnyHeaterHotEtf
 150 0062 50B1     		cbz	r0, .L33
 151 0064 2668     		ldr	r6, [r4]	@ float
 152 0066 4FF07C51 		mov	r1, #1056964608
 153 006a 3046     		mov	r0, r6
 154 006c FFF7FEFF 		bl	__aeabi_fcmplt
 155 0070 0028     		cmp	r0, #0
 156 0072 CAD0     		beq	.L28
 157 0074 4FF07C56 		mov	r6, #1056964608
 158 0078 CDE7     		b	.L30
 159              	.L33:
 160 007a 0025     		movs	r5, #0
 161 007c 2046     		mov	r0, r4
 162 007e 2946     		mov	r1, r5
 163 0080 BDE87040 		pop	{r4, r5, r6, lr}
 164 0084 FFF7FEBF 		b	_ZN3Fan14SetHardwarePwmEf
 165              	.L36:
 166 0088 4FF07E55 		mov	r5, #1065353216
 167 008c 2046     		mov	r0, r4
 168 008e 2946     		mov	r1, r5
 169 0090 BDE87040 		pop	{r4, r5, r6, lr}
 170 0094 FFF7FEBF 		b	_ZN3Fan14SetHardwarePwmEf
 171              	.L41:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccX70EGl.s 			page 4


 172 0098 3546     		mov	r5, r6
 173 009a C4E7     		b	.L29
 174              	.L45:
 175              		.align	2
 176              	.L44:
 177 009c 00000000 		.word	reprap
 178              		.size	_ZN3Fan7RefreshEv, .-_ZN3Fan7RefreshEv
 179              		.section	.text._ZN3Fan4InitEhb,"ax",%progbits
 180              		.align	2
 181              		.global	_ZN3Fan4InitEhb
 182              		.thumb
 183              		.thumb_func
 184              		.type	_ZN3Fan4InitEhb, %function
 185              	_ZN3Fan4InitEhb:
 186              		@ args = 0, pretend = 0, frame = 0
 187              		@ frame_needed = 0, uses_anonymous_args = 0
 188              		@ link register save eliminated.
 189 0000 2DE9F003 		push	{r4, r5, r6, r7, r8, r9}
 190 0004 DFF83C80 		ldr	r8, .L47+8
 191 0008 0C4E     		ldr	r6, .L47
 192 000a 0D4D     		ldr	r5, .L47+4
 193 000c 0024     		movs	r4, #0
 194 000e 4FF00009 		mov	r9, #0
 195 0012 FA27     		movs	r7, #250
 196 0014 4FF0640C 		mov	ip, #100
 197 0018 C0F80090 		str	r9, [r0]	@ float
 198 001c C0F80480 		str	r8, [r0, #4]	@ float
 199 0020 0783     		strh	r7, [r0, #24]	@ movhi
 200 0022 8660     		str	r6, [r0, #8]	@ float
 201 0024 C560     		str	r5, [r0, #12]	@ float
 202 0026 C477     		strb	r4, [r0, #31]
 203 0028 4477     		strb	r4, [r0, #29]
 204 002a 4483     		strh	r4, [r0, #26]	@ movhi
 205 002c 0177     		strb	r1, [r0, #28]
 206 002e 8277     		strb	r2, [r0, #30]
 207 0030 C0F810C0 		str	ip, [r0, #16]
 208 0034 BDE8F003 		pop	{r4, r5, r6, r7, r8, r9}
 209 0038 FFF7FEBF 		b	_ZN3Fan7RefreshEv
 210              	.L48:
 211              		.align	2
 212              	.L47:
 213 003c 00003442 		.word	1110704128
 214 0040 000080BF 		.word	-1082130432
 215 0044 CDCCCC3D 		.word	1036831949
 216              		.size	_ZN3Fan4InitEhb, .-_ZN3Fan4InitEhb
 217              		.section	.text._ZN3Fan11SetInvertedEb,"ax",%progbits
 218              		.align	2
 219              		.global	_ZN3Fan11SetInvertedEb
 220              		.thumb
 221              		.thumb_func
 222              		.type	_ZN3Fan11SetInvertedEb, %function
 223              	_ZN3Fan11SetInvertedEb:
 224              		@ args = 0, pretend = 0, frame = 0
 225              		@ frame_needed = 0, uses_anonymous_args = 0
 226              		@ link register save eliminated.
 227 0000 4177     		strb	r1, [r0, #29]
 228 0002 FFF7FEBF 		b	_ZN3Fan7RefreshEv
ARM GAS  C:\Users\George\AppData\Local\Temp\ccX70EGl.s 			page 5


 229              		.size	_ZN3Fan11SetInvertedEb, .-_ZN3Fan11SetInvertedEb
 230 0006 00BF     		.section	.text._ZN3Fan19SetHeatersMonitoredEt,"ax",%progbits
 231              		.align	2
 232              		.global	_ZN3Fan19SetHeatersMonitoredEt
 233              		.thumb
 234              		.thumb_func
 235              		.type	_ZN3Fan19SetHeatersMonitoredEt, %function
 236              	_ZN3Fan19SetHeatersMonitoredEt:
 237              		@ args = 0, pretend = 0, frame = 0
 238              		@ frame_needed = 0, uses_anonymous_args = 0
 239              		@ link register save eliminated.
 240 0000 4183     		strh	r1, [r0, #26]	@ movhi
 241 0002 FFF7FEBF 		b	_ZN3Fan7RefreshEv
 242              		.size	_ZN3Fan19SetHeatersMonitoredEt, .-_ZN3Fan19SetHeatersMonitoredEt
 243              		.global	__aeabi_fdiv
 244 0006 00BF     		.section	.text._ZN3Fan8SetValueEf,"ax",%progbits
 245              		.align	2
 246              		.global	_ZN3Fan8SetValueEf
 247              		.thumb
 248              		.thumb_func
 249              		.type	_ZN3Fan8SetValueEf, %function
 250              	_ZN3Fan8SetValueEf:
 251              		@ args = 0, pretend = 0, frame = 0
 252              		@ frame_needed = 0, uses_anonymous_args = 0
 253 0000 38B5     		push	{r3, r4, r5, lr}
 254 0002 0C46     		mov	r4, r1
 255 0004 0546     		mov	r5, r0
 256 0006 4FF07E51 		mov	r1, #1065353216
 257 000a 2046     		mov	r0, r4
 258 000c FFF7FEFF 		bl	__aeabi_fcmpgt
 259 0010 20B1     		cbz	r0, .L52
 260 0012 2046     		mov	r0, r4
 261 0014 2349     		ldr	r1, .L78
 262 0016 FFF7FEFF 		bl	__aeabi_fdiv
 263 001a 0446     		mov	r4, r0
 264              	.L52:
 265 001c 2046     		mov	r0, r4
 266 001e 2146     		mov	r1, r4
 267 0020 FFF7FEFF 		bl	__aeabi_fcmpun
 268 0024 C0B9     		cbnz	r0, .L54
 269 0026 2046     		mov	r0, r4
 270 0028 4FF07E51 		mov	r1, #1065353216
 271 002c FFF7FEFF 		bl	__aeabi_fcmplt
 272 0030 30BB     		cbnz	r0, .L55
 273 0032 4FF07E54 		mov	r4, #1065353216
 274              	.L56:
 275 0036 2868     		ldr	r0, [r5]	@ float
 276 0038 0021     		movs	r1, #0
 277 003a FFF7FEFF 		bl	__aeabi_fcmpeq
 278 003e 28B1     		cbz	r0, .L57
 279 0040 2046     		mov	r0, r4
 280 0042 4FF07E51 		mov	r1, #1065353216
 281 0046 FFF7FEFF 		bl	__aeabi_fcmplt
 282 004a 08BB     		cbnz	r0, .L77
 283              	.L57:
 284 004c 2C60     		str	r4, [r5]	@ float
 285 004e 2846     		mov	r0, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\ccX70EGl.s 			page 6


 286 0050 BDE83840 		pop	{r3, r4, r5, lr}
 287 0054 FFF7FEBF 		b	_ZN3Fan7RefreshEv
 288              	.L54:
 289 0058 2868     		ldr	r0, [r5]	@ float
 290 005a 0021     		movs	r1, #0
 291 005c FFF7FEFF 		bl	__aeabi_fcmpeq
 292 0060 0028     		cmp	r0, #0
 293 0062 F3D0     		beq	.L57
 294 0064 2046     		mov	r0, r4
 295 0066 0021     		movs	r1, #0
 296 0068 FFF7FEFF 		bl	__aeabi_fcmpgt
 297 006c 0028     		cmp	r0, #0
 298 006e EDD0     		beq	.L57
 299 0070 2046     		mov	r0, r4
 300 0072 4FF07E51 		mov	r1, #1065353216
 301 0076 FFF7FEFF 		bl	__aeabi_fcmplt
 302 007a 0028     		cmp	r0, #0
 303 007c E6D0     		beq	.L57
 304 007e 07E0     		b	.L77
 305              	.L55:
 306 0080 2046     		mov	r0, r4
 307 0082 0021     		movs	r1, #0
 308 0084 FFF7FEFF 		bl	__aeabi_fcmpgt
 309 0088 0028     		cmp	r0, #0
 310 008a D4D1     		bne	.L56
 311 008c 0024     		movs	r4, #0
 312 008e DDE7     		b	.L57
 313              	.L77:
 314 0090 2B69     		ldr	r3, [r5, #16]
 315 0092 002B     		cmp	r3, #0
 316 0094 DAD0     		beq	.L57
 317 0096 0123     		movs	r3, #1
 318 0098 EB77     		strb	r3, [r5, #31]
 319 009a FFF7FEFF 		bl	millis
 320 009e 6861     		str	r0, [r5, #20]
 321 00a0 D4E7     		b	.L57
 322              	.L79:
 323 00a2 00BF     		.align	2
 324              	.L78:
 325 00a4 00007F43 		.word	1132396544
 326              		.size	_ZN3Fan8SetValueEf, .-_ZN3Fan8SetValueEf
 327              		.section	.text._ZN3Fan11SetMinValueEf,"ax",%progbits
 328              		.align	2
 329              		.global	_ZN3Fan11SetMinValueEf
 330              		.thumb
 331              		.thumb_func
 332              		.type	_ZN3Fan11SetMinValueEf, %function
 333              	_ZN3Fan11SetMinValueEf:
 334              		@ args = 0, pretend = 0, frame = 0
 335              		@ frame_needed = 0, uses_anonymous_args = 0
 336 0000 38B5     		push	{r3, r4, r5, lr}
 337 0002 0C46     		mov	r4, r1
 338 0004 0546     		mov	r5, r0
 339 0006 4FF07E51 		mov	r1, #1065353216
 340 000a 2046     		mov	r0, r4
 341 000c FFF7FEFF 		bl	__aeabi_fcmpgt
 342 0010 20B1     		cbz	r0, .L81
ARM GAS  C:\Users\George\AppData\Local\Temp\ccX70EGl.s 			page 7


 343 0012 2046     		mov	r0, r4
 344 0014 0F49     		ldr	r1, .L91
 345 0016 FFF7FEFF 		bl	__aeabi_fdiv
 346 001a 0446     		mov	r4, r0
 347              	.L81:
 348 001c 2046     		mov	r0, r4
 349 001e 2146     		mov	r1, r4
 350 0020 FFF7FEFF 		bl	__aeabi_fcmpun
 351 0024 38B9     		cbnz	r0, .L83
 352 0026 2046     		mov	r0, r4
 353 0028 4FF07E51 		mov	r1, #1065353216
 354 002c FFF7FEFF 		bl	__aeabi_fcmplt
 355 0030 38B9     		cbnz	r0, .L84
 356 0032 4FF07E54 		mov	r4, #1065353216
 357              	.L83:
 358 0036 6C60     		str	r4, [r5, #4]	@ float
 359 0038 2846     		mov	r0, r5
 360 003a BDE83840 		pop	{r3, r4, r5, lr}
 361 003e FFF7FEBF 		b	_ZN3Fan7RefreshEv
 362              	.L84:
 363 0042 2046     		mov	r0, r4
 364 0044 0021     		movs	r1, #0
 365 0046 FFF7FEFF 		bl	__aeabi_fcmpgt
 366 004a 0028     		cmp	r0, #0
 367 004c F3D1     		bne	.L83
 368 004e 0024     		movs	r4, #0
 369 0050 F1E7     		b	.L83
 370              	.L92:
 371 0052 00BF     		.align	2
 372              	.L91:
 373 0054 00007F43 		.word	1132396544
 374              		.size	_ZN3Fan11SetMinValueEf, .-_ZN3Fan11SetMinValueEf
 375              		.section	.text._ZN3Fan15SetPwmFrequencyEf,"ax",%progbits
 376              		.align	2
 377              		.global	_ZN3Fan15SetPwmFrequencyEf
 378              		.thumb
 379              		.thumb_func
 380              		.type	_ZN3Fan15SetPwmFrequencyEf, %function
 381              	_ZN3Fan15SetPwmFrequencyEf:
 382              		@ args = 0, pretend = 0, frame = 0
 383              		@ frame_needed = 0, uses_anonymous_args = 0
 384 0000 38B5     		push	{r3, r4, r5, lr}
 385 0002 0446     		mov	r4, r0
 386 0004 0846     		mov	r0, r1
 387 0006 0D46     		mov	r5, r1
 388 0008 FFF7FEFF 		bl	__aeabi_fcmpun
 389 000c 50B9     		cbnz	r0, .L98
 390 000e 2846     		mov	r0, r5
 391 0010 0D49     		ldr	r1, .L102
 392 0012 FFF7FEFF 		bl	__aeabi_fcmplt
 393 0016 50B1     		cbz	r0, .L100
 394 0018 2846     		mov	r0, r5
 395 001a 4FF07E51 		mov	r1, #1065353216
 396 001e FFF7FEFF 		bl	__aeabi_fcmpgt
 397 0022 70B1     		cbz	r0, .L101
 398              	.L98:
 399 0024 2846     		mov	r0, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\ccX70EGl.s 			page 8


 400 0026 FFF7FEFF 		bl	__aeabi_f2uiz
 401 002a 80B2     		uxth	r0, r0
 402 002c 01E0     		b	.L96
 403              	.L100:
 404 002e 4FF6FF70 		movw	r0, #65535
 405              	.L96:
 406 0032 064B     		ldr	r3, .L102+4
 407 0034 2083     		strh	r0, [r4, #24]	@ movhi
 408 0036 E360     		str	r3, [r4, #12]	@ float
 409 0038 2046     		mov	r0, r4
 410 003a BDE83840 		pop	{r3, r4, r5, lr}
 411 003e FFF7FEBF 		b	_ZN3Fan7RefreshEv
 412              	.L101:
 413 0042 0120     		movs	r0, #1
 414 0044 F5E7     		b	.L96
 415              	.L103:
 416 0046 00BF     		.align	2
 417              	.L102:
 418 0048 00FF7F47 		.word	1199570688
 419 004c 000080BF 		.word	-1082130432
 420              		.size	_ZN3Fan15SetPwmFrequencyEf, .-_ZN3Fan15SetPwmFrequencyEf
 421              		.section	.text._ZN3Fan5CheckEv,"ax",%progbits
 422              		.align	2
 423              		.global	_ZN3Fan5CheckEv
 424              		.thumb
 425              		.thumb_func
 426              		.type	_ZN3Fan5CheckEv, %function
 427              	_ZN3Fan5CheckEv:
 428              		@ args = 0, pretend = 0, frame = 0
 429              		@ frame_needed = 0, uses_anonymous_args = 0
 430              		@ link register save eliminated.
 431 0000 438B     		ldrh	r3, [r0, #26]
 432 0002 0BB9     		cbnz	r3, .L105
 433 0004 C37F     		ldrb	r3, [r0, #31]	@ zero_extendqisi2
 434 0006 0BB1     		cbz	r3, .L104
 435              	.L105:
 436 0008 FFF7FEBF 		b	_ZN3Fan7RefreshEv
 437              	.L104:
 438 000c 7047     		bx	lr
 439              		.size	_ZN3Fan5CheckEv, .-_ZN3Fan5CheckEv
 440 000e 00BF     		.section	.text._ZN3Fan7DisableEv,"ax",%progbits
 441              		.align	2
 442              		.global	_ZN3Fan7DisableEv
 443              		.thumb
 444              		.thumb_func
 445              		.type	_ZN3Fan7DisableEv, %function
 446              	_ZN3Fan7DisableEv:
 447              		@ args = 0, pretend = 0, frame = 0
 448              		@ frame_needed = 0, uses_anonymous_args = 0
 449 0000 037F     		ldrb	r3, [r0, #28]	@ zero_extendqisi2
 450 0002 10B5     		push	{r4, lr}
 451 0004 FF2B     		cmp	r3, #255
 452 0006 0446     		mov	r4, r0
 453 0008 06D0     		beq	.L108
 454 000a 054A     		ldr	r2, .L112
 455 000c 0023     		movs	r3, #0
 456 000e C260     		str	r2, [r0, #12]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\ccX70EGl.s 			page 9


 457 0010 4377     		strb	r3, [r0, #29]
 458 0012 0021     		movs	r1, #0
 459 0014 FFF7FEFF 		bl	_ZN3Fan14SetHardwarePwmEf
 460              	.L108:
 461 0018 FF23     		movs	r3, #255
 462 001a 2377     		strb	r3, [r4, #28]
 463 001c 10BD     		pop	{r4, pc}
 464              	.L113:
 465 001e 00BF     		.align	2
 466              	.L112:
 467 0020 000080BF 		.word	-1082130432
 468              		.size	_ZN3Fan7DisableEv, .-_ZN3Fan7DisableEv
 469              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 470              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 471              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 472              	_ZL28cpu_irq_prev_interrupt_state:
 473 0000 00       		.space	1
 474              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 475              		.align	2
 476              		.type	_ZL32cpu_irq_critical_section_counter, %object
 477              		.size	_ZL32cpu_irq_critical_section_counter, 4
 478              	_ZL32cpu_irq_critical_section_counter:
 479 0000 00000000 		.space	4
 480              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
