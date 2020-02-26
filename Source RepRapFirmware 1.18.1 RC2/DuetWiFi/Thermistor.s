ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccNJjD62.s 			page 1


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
  15              		.file	"Thermistor.cpp"
  16              		.global	__aeabi_f2d
  17              		.global	__aeabi_dadd
  18              		.global	__aeabi_dmul
  19              		.global	__aeabi_ddiv
  20              		.global	__aeabi_d2f
  21              		.global	__aeabi_dsub
  22              		.section	.text._ZNK10Thermistor15CalcTemperatureEl,"ax",%progbits
  23              		.align	2
  24              		.global	_ZNK10Thermistor15CalcTemperatureEl
  25              		.thumb
  26              		.thumb_func
  27              		.type	_ZNK10Thermistor15CalcTemperatureEl, %function
  28              	_ZNK10Thermistor15CalcTemperatureEl:
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  32 0002 2DED028B 		fstmfdd	sp!, {d8}
  33 0006 90F91130 		ldrsb	r3, [r0, #17]
  34 000a 03F50053 		add	r3, r3, #8192
  35 000e 5B1A     		subs	r3, r3, r1
  36 0010 08EE103A 		fmsr	s16, r3	@ int
  37 0014 B8EEC88A 		fsitos	s16, s16
  38 0018 F6EE007A 		fconsts	s15, #96
  39 001c 38EE678A 		fsubs	s16, s16, s15
  40 0020 0646     		mov	r6, r0
  41 0022 B5EEC08A 		fcmpezs	s16
  42 0026 F1EE10FA 		fmstat
  43 002a 0F46     		mov	r7, r1
  44 002c 56D9     		bls	.L4
  45 002e C068     		ldr	r0, [r0, #12]	@ float
  46 0030 FFF7FEFF 		bl	__aeabi_f2d
  47 0034 0446     		mov	r4, r0
  48 0036 96F91000 		ldrsb	r0, [r6, #16]
  49 003a 381A     		subs	r0, r7, r0
  50 003c 07EE900A 		fmsr	s15, r0	@ int
  51 0040 F8EEE77A 		fsitos	s15, s15
  52 0044 0D46     		mov	r5, r1
  53 0046 17EE900A 		fmrs	r0, s15
  54 004a FFF7FEFF 		bl	__aeabi_f2d
  55 004e 0022     		movs	r2, #0
  56 0050 294B     		ldr	r3, .L9+8
  57 0052 FFF7FEFF 		bl	__aeabi_dadd
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccNJjD62.s 			page 2


  58 0056 0246     		mov	r2, r0
  59 0058 0B46     		mov	r3, r1
  60 005a 2046     		mov	r0, r4
  61 005c 2946     		mov	r1, r5
  62 005e FFF7FEFF 		bl	__aeabi_dmul
  63 0062 0446     		mov	r4, r0
  64 0064 18EE100A 		fmrs	r0, s16
  65 0068 0D46     		mov	r5, r1
  66 006a FFF7FEFF 		bl	__aeabi_f2d
  67 006e 0246     		mov	r2, r0
  68 0070 0B46     		mov	r3, r1
  69 0072 2046     		mov	r0, r4
  70 0074 2946     		mov	r1, r5
  71 0076 FFF7FEFF 		bl	__aeabi_ddiv
  72 007a FFF7FEFF 		bl	__aeabi_d2f
  73 007e FFF7FEFF 		bl	__aeabi_f2d
  74 0082 FFF7FEFF 		bl	log
  75 0086 FFF7FEFF 		bl	__aeabi_d2f
  76 008a 96ED066A 		flds	s12, [r6, #24]
  77 008e D6ED057A 		flds	s15, [r6, #20]
  78 0092 D6ED026A 		flds	s13, [r6, #8]
  79 0096 07EE100A 		fmsr	s14, r0
  80 009a E6EE077A 		vfma.f32	s15, s12, s14
  81 009e 67EE266A 		fmuls	s13, s14, s13
  82 00a2 66EE876A 		fmuls	s13, s13, s14
  83 00a6 E6EE877A 		vfma.f32	s15, s13, s14
  84 00aa F5EEC07A 		fcmpezs	s15
  85 00ae F1EE10FA 		fmstat
  86 00b2 17DD     		ble	.L7
  87 00b4 17EE900A 		fmrs	r0, s15
  88 00b8 FFF7FEFF 		bl	__aeabi_f2d
  89 00bc 0246     		mov	r2, r0
  90 00be 0B46     		mov	r3, r1
  91 00c0 0020     		movs	r0, #0
  92 00c2 0E49     		ldr	r1, .L9+12
  93 00c4 FFF7FEFF 		bl	__aeabi_ddiv
  94 00c8 09A3     		adr	r3, .L9
  95 00ca D3E90023 		ldrd	r2, [r3]
  96 00ce FFF7FEFF 		bl	__aeabi_dsub
  97 00d2 FFF7FEFF 		bl	__aeabi_d2f
  98 00d6 BDEC028B 		fldmfdd	sp!, {d8}
  99 00da F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 100              	.L4:
 101 00dc BDEC028B 		fldmfdd	sp!, {d8}
 102 00e0 0748     		ldr	r0, .L9+16
 103 00e2 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 104              	.L7:
 105 00e4 BDEC028B 		fldmfdd	sp!, {d8}
 106 00e8 0648     		ldr	r0, .L9+20
 107 00ea F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 108              	.L10:
 109 00ec AFF30080 		.align	3
 110              	.L9:
 111 00f0 00000060 		.word	1610612736
 112 00f4 66127140 		.word	1081152102
 113 00f8 0000E03F 		.word	1071644672
 114 00fc 0000F03F 		.word	1072693248
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccNJjD62.s 			page 3


 115 0100 339388C3 		.word	-1014459597
 116 0104 0000FA44 		.word	1157234688
 117              		.size	_ZNK10Thermistor15CalcTemperatureEl, .-_ZNK10Thermistor15CalcTemperatureEl
 118              		.section	.text._ZNK10Thermistor14CalcAdcReadingEf,"ax",%progbits
 119              		.align	2
 120              		.global	_ZNK10Thermistor14CalcAdcReadingEf
 121              		.thumb
 122              		.thumb_func
 123              		.type	_ZNK10Thermistor14CalcAdcReadingEf, %function
 124              	_ZNK10Thermistor14CalcAdcReadingEf:
 125              		@ args = 0, pretend = 0, frame = 8
 126              		@ frame_needed = 0, uses_anonymous_args = 0
 127 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 128 0004 2DED028B 		fstmfdd	sp!, {d8}
 129 0008 8246     		mov	r10, r0
 130 000a 82B0     		sub	sp, sp, #8
 131 000c 8068     		ldr	r0, [r0, #8]	@ float
 132 000e 08EE101A 		fmsr	s16, r1
 133 0012 FFF7FEFF 		bl	__aeabi_f2d
 134 0016 0446     		mov	r4, r0
 135 0018 DAF81800 		ldr	r0, [r10, #24]	@ float
 136 001c 0D46     		mov	r5, r1
 137 001e FFF7FEFF 		bl	__aeabi_f2d
 138 0022 0022     		movs	r2, #0
 139 0024 0646     		mov	r6, r0
 140 0026 0F46     		mov	r7, r1
 141 0028 2046     		mov	r0, r4
 142 002a 2946     		mov	r1, r5
 143 002c 544B     		ldr	r3, .L17+8
 144 002e FFF7FEFF 		bl	__aeabi_dmul
 145 0032 0246     		mov	r2, r0
 146 0034 0B46     		mov	r3, r1
 147 0036 3046     		mov	r0, r6
 148 0038 3946     		mov	r1, r7
 149 003a FFF7FEFF 		bl	__aeabi_ddiv
 150 003e 0646     		mov	r6, r0
 151 0040 DAF81400 		ldr	r0, [r10, #20]	@ float
 152 0044 0F46     		mov	r7, r1
 153 0046 FFF7FEFF 		bl	__aeabi_f2d
 154 004a DFED4E7A 		flds	s15, .L17+12
 155 004e 78EE277A 		fadds	s15, s16, s15
 156 0052 8046     		mov	r8, r0
 157 0054 17EE900A 		fmrs	r0, s15
 158 0058 8946     		mov	r9, r1
 159 005a FFF7FEFF 		bl	__aeabi_f2d
 160 005e 0246     		mov	r2, r0
 161 0060 0B46     		mov	r3, r1
 162 0062 0020     		movs	r0, #0
 163 0064 4849     		ldr	r1, .L17+16
 164 0066 FFF7FEFF 		bl	__aeabi_ddiv
 165 006a 0246     		mov	r2, r0
 166 006c 0B46     		mov	r3, r1
 167 006e 4046     		mov	r0, r8
 168 0070 4946     		mov	r1, r9
 169 0072 FFF7FEFF 		bl	__aeabi_dsub
 170 0076 2246     		mov	r2, r4
 171 0078 8046     		mov	r8, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccNJjD62.s 			page 4


 172 007a 8946     		mov	r9, r1
 173 007c 2B46     		mov	r3, r5
 174 007e 2046     		mov	r0, r4
 175 0080 2946     		mov	r1, r5
 176 0082 FFF7FEFF 		bl	__aeabi_dadd
 177 0086 0246     		mov	r2, r0
 178 0088 0B46     		mov	r3, r1
 179 008a 4046     		mov	r0, r8
 180 008c 4946     		mov	r1, r9
 181 008e FFF7FEFF 		bl	__aeabi_ddiv
 182 0092 3246     		mov	r2, r6
 183 0094 0446     		mov	r4, r0
 184 0096 0D46     		mov	r5, r1
 185 0098 3B46     		mov	r3, r7
 186 009a 3046     		mov	r0, r6
 187 009c 3946     		mov	r1, r7
 188 009e FFF7FEFF 		bl	__aeabi_dmul
 189 00a2 2246     		mov	r2, r4
 190 00a4 8046     		mov	r8, r0
 191 00a6 8946     		mov	r9, r1
 192 00a8 2B46     		mov	r3, r5
 193 00aa 2046     		mov	r0, r4
 194 00ac 2946     		mov	r1, r5
 195 00ae FFF7FEFF 		bl	__aeabi_dmul
 196 00b2 3246     		mov	r2, r6
 197 00b4 CDE90001 		strd	r0, [sp]
 198 00b8 3B46     		mov	r3, r7
 199 00ba 4046     		mov	r0, r8
 200 00bc 4946     		mov	r1, r9
 201 00be FFF7FEFF 		bl	__aeabi_dmul
 202 00c2 DDE90023 		ldrd	r2, [sp]
 203 00c6 FFF7FEFF 		bl	__aeabi_dadd
 204 00ca FFF7FEFF 		bl	sqrt
 205 00ce 2246     		mov	r2, r4
 206 00d0 2B46     		mov	r3, r5
 207 00d2 8046     		mov	r8, r0
 208 00d4 8946     		mov	r9, r1
 209 00d6 FFF7FEFF 		bl	__aeabi_dsub
 210 00da 27A3     		adr	r3, .L17
 211 00dc D3E90023 		ldrd	r2, [r3]
 212 00e0 FFF7FEFF 		bl	pow
 213 00e4 2246     		mov	r2, r4
 214 00e6 0646     		mov	r6, r0
 215 00e8 0F46     		mov	r7, r1
 216 00ea 2B46     		mov	r3, r5
 217 00ec 4046     		mov	r0, r8
 218 00ee 4946     		mov	r1, r9
 219 00f0 FFF7FEFF 		bl	__aeabi_dadd
 220 00f4 20A3     		adr	r3, .L17
 221 00f6 D3E90023 		ldrd	r2, [r3]
 222 00fa FFF7FEFF 		bl	pow
 223 00fe 0246     		mov	r2, r0
 224 0100 0B46     		mov	r3, r1
 225 0102 3046     		mov	r0, r6
 226 0104 3946     		mov	r1, r7
 227 0106 FFF7FEFF 		bl	__aeabi_dsub
 228 010a FFF7FEFF 		bl	exp
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccNJjD62.s 			page 5


 229 010e FFF7FEFF 		bl	__aeabi_d2f
 230 0112 9AED037A 		flds	s14, [r10, #12]
 231 0116 9AF91120 		ldrsb	r2, [r10, #17]
 232 011a 9AF91030 		ldrsb	r3, [r10, #16]
 233 011e 07EE900A 		fmsr	s15, r0
 234 0122 37EE877A 		fadds	s14, s15, s14
 235 0126 02F50052 		add	r2, r2, #8192
 236 012a 87EE877A 		fdivs	s14, s15, s14
 237 012e D21A     		subs	r2, r2, r3
 238 0130 41F6FE71 		movw	r1, #8190
 239 0134 07EE902A 		fmsr	s15, r2	@ int
 240 0138 F8EEE77A 		fsitos	s15, s15
 241 013c 67EE877A 		fmuls	s15, s15, s14
 242 0140 FDEEE77A 		ftosizs	s15, s15
 243 0144 17EE902A 		fmrs	r2, s15	@ int
 244 0148 1344     		add	r3, r3, r2
 245 014a 8B42     		cmp	r3, r1
 246 014c 07DC     		bgt	.L14
 247 014e 002B     		cmp	r3, #0
 248 0150 0CDC     		bgt	.L16
 249 0152 0020     		movs	r0, #0
 250 0154 02B0     		add	sp, sp, #8
 251              		@ sp needed
 252 0156 BDEC028B 		fldmfdd	sp!, {d8}
 253 015a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 254              	.L14:
 255 015e 41F6FF70 		movw	r0, #8191
 256 0162 02B0     		add	sp, sp, #8
 257              		@ sp needed
 258 0164 BDEC028B 		fldmfdd	sp!, {d8}
 259 0168 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 260              	.L16:
 261 016c 1846     		mov	r0, r3
 262 016e 02B0     		add	sp, sp, #8
 263              		@ sp needed
 264 0170 BDEC028B 		fldmfdd	sp!, {d8}
 265 0174 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 266              	.L18:
 267              		.align	3
 268              	.L17:
 269 0178 55555555 		.word	1431655765
 270 017c 5555D53F 		.word	1070945621
 271 0180 00000840 		.word	1074266112
 272 0184 33938843 		.word	1133024051
 273 0188 0000F03F 		.word	1072693248
 274              		.size	_ZNK10Thermistor14CalcAdcReadingEf, .-_ZNK10Thermistor14CalcAdcReadingEf
 275 018c AFF30080 		.section	.text._ZN10Thermistor21CalcDerivedParametersEv,"ax",%progbits
 276              		.align	2
 277              		.global	_ZN10Thermistor21CalcDerivedParametersEv
 278              		.thumb
 279              		.thumb_func
 280              		.type	_ZN10Thermistor21CalcDerivedParametersEv, %function
 281              	_ZN10Thermistor21CalcDerivedParametersEv:
 282              		@ args = 0, pretend = 0, frame = 0
 283              		@ frame_needed = 0, uses_anonymous_args = 0
 284 0000 D0ED017A 		flds	s15, [r0, #4]
 285 0004 B7EE007A 		fconsts	s14, #112
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccNJjD62.s 			page 6


 286 0008 C7EE277A 		fdivs	s15, s14, s15
 287 000c 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 288 0010 8046     		mov	r8, r0
 289 0012 0068     		ldr	r0, [r0]	@ float
 290 0014 C8ED067A 		fsts	s15, [r8, #24]
 291 0018 FFF7FEFF 		bl	__aeabi_f2d
 292 001c FFF7FEFF 		bl	log
 293 0020 0446     		mov	r4, r0
 294 0022 0D46     		mov	r5, r1
 295 0024 D8F81800 		ldr	r0, [r8, #24]	@ float
 296 0028 FFF7FEFF 		bl	__aeabi_f2d
 297 002c 2246     		mov	r2, r4
 298 002e 2B46     		mov	r3, r5
 299 0030 FFF7FEFF 		bl	__aeabi_dmul
 300 0034 0246     		mov	r2, r0
 301 0036 0B46     		mov	r3, r1
 302 0038 11A1     		adr	r1, .L20
 303 003a D1E90001 		ldrd	r0, [r1]
 304 003e FFF7FEFF 		bl	__aeabi_dsub
 305 0042 0646     		mov	r6, r0
 306 0044 D8F80800 		ldr	r0, [r8, #8]	@ float
 307 0048 0F46     		mov	r7, r1
 308 004a FFF7FEFF 		bl	__aeabi_f2d
 309 004e 2246     		mov	r2, r4
 310 0050 2B46     		mov	r3, r5
 311 0052 FFF7FEFF 		bl	__aeabi_dmul
 312 0056 2246     		mov	r2, r4
 313 0058 2B46     		mov	r3, r5
 314 005a FFF7FEFF 		bl	__aeabi_dmul
 315 005e 2246     		mov	r2, r4
 316 0060 2B46     		mov	r3, r5
 317 0062 FFF7FEFF 		bl	__aeabi_dmul
 318 0066 0246     		mov	r2, r0
 319 0068 0B46     		mov	r3, r1
 320 006a 3046     		mov	r0, r6
 321 006c 3946     		mov	r1, r7
 322 006e FFF7FEFF 		bl	__aeabi_dsub
 323 0072 FFF7FEFF 		bl	__aeabi_d2f
 324 0076 C8F81400 		str	r0, [r8, #20]	@ float
 325 007a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 326              	.L21:
 327 007e 00BF     		.align	3
 328              	.L20:
 329 0080 45A725E6 		.word	-433739963
 330 0084 E1796B3F 		.word	1064008161
 331              		.size	_ZN10Thermistor21CalcDerivedParametersEv, .-_ZN10Thermistor21CalcDerivedParametersEv
 332              		.section	.text._ZN10Thermistor13SetParametersEffff,"ax",%progbits
 333              		.align	2
 334              		.global	_ZN10Thermistor13SetParametersEffff
 335              		.thumb
 336              		.thumb_func
 337              		.type	_ZN10Thermistor13SetParametersEffff, %function
 338              	_ZN10Thermistor13SetParametersEffff:
 339              		@ args = 4, pretend = 0, frame = 0
 340              		@ frame_needed = 0, uses_anonymous_args = 0
 341              		@ link register save eliminated.
 342 0000 30B4     		push	{r4, r5}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccNJjD62.s 			page 7


 343 0002 029D     		ldr	r5, [sp, #8]	@ float
 344 0004 C560     		str	r5, [r0, #12]	@ float
 345 0006 0160     		str	r1, [r0]	@ float
 346 0008 4260     		str	r2, [r0, #4]	@ float
 347 000a 8360     		str	r3, [r0, #8]	@ float
 348 000c 30BC     		pop	{r4, r5}
 349 000e FFF7FEBF 		b	_ZN10Thermistor21CalcDerivedParametersEv
 350              		.size	_ZN10Thermistor13SetParametersEffff, .-_ZN10Thermistor13SetParametersEffff
 351 0012 00BF     		.section	.text._ZN10ThermistorC2Ev,"ax",%progbits
 352              		.align	2
 353              		.global	_ZN10ThermistorC2Ev
 354              		.thumb
 355              		.thumb_func
 356              		.type	_ZN10ThermistorC2Ev, %function
 357              	_ZN10ThermistorC2Ev:
 358              		@ args = 0, pretend = 0, frame = 0
 359              		@ frame_needed = 0, uses_anonymous_args = 0
 360 0000 38B5     		push	{r3, r4, r5, lr}
 361 0002 084B     		ldr	r3, .L24
 362 0004 084A     		ldr	r2, .L24+4
 363 0006 0360     		str	r3, [r0]	@ float
 364 0008 0021     		movs	r1, #0
 365 000a 0023     		movs	r3, #0
 366 000c 074D     		ldr	r5, .L24+8
 367 000e 4560     		str	r5, [r0, #4]	@ float
 368 0010 0446     		mov	r4, r0
 369 0012 8160     		str	r1, [r0, #8]	@ float
 370 0014 C260     		str	r2, [r0, #12]	@ float
 371 0016 0374     		strb	r3, [r0, #16]
 372 0018 4374     		strb	r3, [r0, #17]
 373 001a FFF7FEFF 		bl	_ZN10Thermistor21CalcDerivedParametersEv
 374 001e 2046     		mov	r0, r4
 375 0020 38BD     		pop	{r3, r4, r5, pc}
 376              	.L25:
 377 0022 00BF     		.align	2
 378              	.L24:
 379 0024 0050C347 		.word	1203982336
 380 0028 00E09245 		.word	1167253504
 381 002c 00208945 		.word	1166614528
 382              		.size	_ZN10ThermistorC2Ev, .-_ZN10ThermistorC2Ev
 383              		.global	_ZN10ThermistorC1Ev
 384              		.thumb_set _ZN10ThermistorC1Ev,_ZN10ThermistorC2Ev
 385              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 386              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 387              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 388              	_ZL28cpu_irq_prev_interrupt_state:
 389 0000 00       		.space	1
 390              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 391              		.align	2
 392              		.type	_ZL32cpu_irq_critical_section_counter, %object
 393              		.size	_ZL32cpu_irq_critical_section_counter, 4
 394              	_ZL32cpu_irq_critical_section_counter:
 395 0000 00000000 		.space	4
 396              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
