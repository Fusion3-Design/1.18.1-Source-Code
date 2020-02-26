ARM GAS  C:\Users\George\AppData\Local\Temp\ccinrsxc.s 			page 1


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
  14              		.file	"Thermistor.cpp"
  15              		.global	__aeabi_i2f
  16              		.global	__aeabi_fsub
  17              		.global	__aeabi_fcmple
  18              		.global	__aeabi_f2d
  19              		.global	__aeabi_dadd
  20              		.global	__aeabi_dmul
  21              		.global	__aeabi_ddiv
  22              		.global	__aeabi_d2f
  23              		.global	__aeabi_fmul
  24              		.global	__aeabi_fadd
  25              		.global	__aeabi_fcmpgt
  26              		.global	__aeabi_dsub
  27              		.section	.text._ZNK10Thermistor15CalcTemperatureEl,"ax",%progbits
  28              		.align	2
  29              		.global	_ZNK10Thermistor15CalcTemperatureEl
  30              		.thumb
  31              		.thumb_func
  32              		.type	_ZNK10Thermistor15CalcTemperatureEl, %function
  33              	_ZNK10Thermistor15CalcTemperatureEl:
  34              		@ args = 0, pretend = 0, frame = 0
  35              		@ frame_needed = 0, uses_anonymous_args = 0
  36 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  37 0004 0646     		mov	r6, r0
  38 0006 90F91100 		ldrsb	r0, [r0, #17]
  39 000a 8846     		mov	r8, r1
  40 000c 00F50050 		add	r0, r0, #8192
  41 0010 401A     		subs	r0, r0, r1
  42 0012 FFF7FEFF 		bl	__aeabi_i2f
  43 0016 4FF07C51 		mov	r1, #1056964608
  44 001a FFF7FEFF 		bl	__aeabi_fsub
  45 001e 0021     		movs	r1, #0
  46 0020 0746     		mov	r7, r0
  47 0022 FFF7FEFF 		bl	__aeabi_fcmple
  48 0026 0028     		cmp	r0, #0
  49 0028 56D1     		bne	.L4
  50 002a F068     		ldr	r0, [r6, #12]	@ float
  51 002c FFF7FEFF 		bl	__aeabi_f2d
  52 0030 0446     		mov	r4, r0
  53 0032 96F91000 		ldrsb	r0, [r6, #16]
  54 0036 0D46     		mov	r5, r1
  55 0038 C0EB0800 		rsb	r0, r0, r8
  56 003c FFF7FEFF 		bl	__aeabi_i2f
  57 0040 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\George\AppData\Local\Temp\ccinrsxc.s 			page 2


  58 0044 0022     		movs	r2, #0
  59 0046 2A4B     		ldr	r3, .L9+8
  60 0048 FFF7FEFF 		bl	__aeabi_dadd
  61 004c 0246     		mov	r2, r0
  62 004e 0B46     		mov	r3, r1
  63 0050 2046     		mov	r0, r4
  64 0052 2946     		mov	r1, r5
  65 0054 FFF7FEFF 		bl	__aeabi_dmul
  66 0058 0446     		mov	r4, r0
  67 005a 3846     		mov	r0, r7
  68 005c 0D46     		mov	r5, r1
  69 005e FFF7FEFF 		bl	__aeabi_f2d
  70 0062 0246     		mov	r2, r0
  71 0064 0B46     		mov	r3, r1
  72 0066 2046     		mov	r0, r4
  73 0068 2946     		mov	r1, r5
  74 006a FFF7FEFF 		bl	__aeabi_ddiv
  75 006e FFF7FEFF 		bl	__aeabi_d2f
  76 0072 FFF7FEFF 		bl	__aeabi_f2d
  77 0076 FFF7FEFF 		bl	log
  78 007a FFF7FEFF 		bl	__aeabi_d2f
  79 007e B169     		ldr	r1, [r6, #24]	@ float
  80 0080 0446     		mov	r4, r0
  81 0082 FFF7FEFF 		bl	__aeabi_fmul
  82 0086 7169     		ldr	r1, [r6, #20]	@ float
  83 0088 FFF7FEFF 		bl	__aeabi_fadd
  84 008c B168     		ldr	r1, [r6, #8]	@ float
  85 008e 0546     		mov	r5, r0
  86 0090 2046     		mov	r0, r4
  87 0092 FFF7FEFF 		bl	__aeabi_fmul
  88 0096 2146     		mov	r1, r4
  89 0098 FFF7FEFF 		bl	__aeabi_fmul
  90 009c 2146     		mov	r1, r4
  91 009e FFF7FEFF 		bl	__aeabi_fmul
  92 00a2 0146     		mov	r1, r0
  93 00a4 2846     		mov	r0, r5
  94 00a6 FFF7FEFF 		bl	__aeabi_fadd
  95 00aa 0021     		movs	r1, #0
  96 00ac 0446     		mov	r4, r0
  97 00ae FFF7FEFF 		bl	__aeabi_fcmpgt
  98 00b2 A0B1     		cbz	r0, .L7
  99 00b4 2046     		mov	r0, r4
 100 00b6 FFF7FEFF 		bl	__aeabi_f2d
 101 00ba 0246     		mov	r2, r0
 102 00bc 0B46     		mov	r3, r1
 103 00be 0020     		movs	r0, #0
 104 00c0 0C49     		ldr	r1, .L9+12
 105 00c2 FFF7FEFF 		bl	__aeabi_ddiv
 106 00c6 08A3     		adr	r3, .L9
 107 00c8 D3E90023 		ldrd	r2, [r3]
 108 00cc FFF7FEFF 		bl	__aeabi_dsub
 109 00d0 FFF7FEFF 		bl	__aeabi_d2f
 110 00d4 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 111              	.L4:
 112 00d8 0748     		ldr	r0, .L9+16
 113 00da BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 114              	.L7:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccinrsxc.s 			page 3


 115 00de 0748     		ldr	r0, .L9+20
 116 00e0 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 117              	.L10:
 118 00e4 AFF30080 		.align	3
 119              	.L9:
 120 00e8 00000060 		.word	1610612736
 121 00ec 66127140 		.word	1081152102
 122 00f0 0000E03F 		.word	1071644672
 123 00f4 0000F03F 		.word	1072693248
 124 00f8 339388C3 		.word	-1014459597
 125 00fc 0000FA44 		.word	1157234688
 126              		.size	_ZNK10Thermistor15CalcTemperatureEl, .-_ZNK10Thermistor15CalcTemperatureEl
 127              		.global	__aeabi_fdiv
 128              		.global	__aeabi_f2iz
 129              		.section	.text._ZNK10Thermistor14CalcAdcReadingEf,"ax",%progbits
 130              		.align	2
 131              		.global	_ZNK10Thermistor14CalcAdcReadingEf
 132              		.thumb
 133              		.thumb_func
 134              		.type	_ZNK10Thermistor14CalcAdcReadingEf, %function
 135              	_ZNK10Thermistor14CalcAdcReadingEf:
 136              		@ args = 0, pretend = 0, frame = 8
 137              		@ frame_needed = 0, uses_anonymous_args = 0
 138 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 139 0004 8246     		mov	r10, r0
 140 0006 83B0     		sub	sp, sp, #12
 141 0008 8068     		ldr	r0, [r0, #8]	@ float
 142 000a 8B46     		mov	fp, r1
 143 000c FFF7FEFF 		bl	__aeabi_f2d
 144 0010 0446     		mov	r4, r0
 145 0012 DAF81800 		ldr	r0, [r10, #24]	@ float
 146 0016 0D46     		mov	r5, r1
 147 0018 FFF7FEFF 		bl	__aeabi_f2d
 148 001c 0022     		movs	r2, #0
 149 001e 0646     		mov	r6, r0
 150 0020 0F46     		mov	r7, r1
 151 0022 2046     		mov	r0, r4
 152 0024 2946     		mov	r1, r5
 153 0026 504B     		ldr	r3, .L16+8
 154 0028 FFF7FEFF 		bl	__aeabi_dmul
 155 002c 0246     		mov	r2, r0
 156 002e 0B46     		mov	r3, r1
 157 0030 3046     		mov	r0, r6
 158 0032 3946     		mov	r1, r7
 159 0034 FFF7FEFF 		bl	__aeabi_ddiv
 160 0038 0646     		mov	r6, r0
 161 003a DAF81400 		ldr	r0, [r10, #20]	@ float
 162 003e 0F46     		mov	r7, r1
 163 0040 FFF7FEFF 		bl	__aeabi_f2d
 164 0044 8046     		mov	r8, r0
 165 0046 8946     		mov	r9, r1
 166 0048 5846     		mov	r0, fp
 167 004a 4849     		ldr	r1, .L16+12
 168 004c FFF7FEFF 		bl	__aeabi_fadd
 169 0050 FFF7FEFF 		bl	__aeabi_f2d
 170 0054 0246     		mov	r2, r0
 171 0056 0B46     		mov	r3, r1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccinrsxc.s 			page 4


 172 0058 0020     		movs	r0, #0
 173 005a 4549     		ldr	r1, .L16+16
 174 005c FFF7FEFF 		bl	__aeabi_ddiv
 175 0060 0246     		mov	r2, r0
 176 0062 0B46     		mov	r3, r1
 177 0064 4046     		mov	r0, r8
 178 0066 4946     		mov	r1, r9
 179 0068 FFF7FEFF 		bl	__aeabi_dsub
 180 006c 2246     		mov	r2, r4
 181 006e 8046     		mov	r8, r0
 182 0070 8946     		mov	r9, r1
 183 0072 2B46     		mov	r3, r5
 184 0074 2046     		mov	r0, r4
 185 0076 2946     		mov	r1, r5
 186 0078 FFF7FEFF 		bl	__aeabi_dadd
 187 007c 0246     		mov	r2, r0
 188 007e 0B46     		mov	r3, r1
 189 0080 4046     		mov	r0, r8
 190 0082 4946     		mov	r1, r9
 191 0084 FFF7FEFF 		bl	__aeabi_ddiv
 192 0088 3246     		mov	r2, r6
 193 008a 0446     		mov	r4, r0
 194 008c 0D46     		mov	r5, r1
 195 008e 3B46     		mov	r3, r7
 196 0090 3046     		mov	r0, r6
 197 0092 3946     		mov	r1, r7
 198 0094 FFF7FEFF 		bl	__aeabi_dmul
 199 0098 2246     		mov	r2, r4
 200 009a 8046     		mov	r8, r0
 201 009c 8946     		mov	r9, r1
 202 009e 2B46     		mov	r3, r5
 203 00a0 2046     		mov	r0, r4
 204 00a2 2946     		mov	r1, r5
 205 00a4 FFF7FEFF 		bl	__aeabi_dmul
 206 00a8 3246     		mov	r2, r6
 207 00aa CDE90001 		strd	r0, [sp]
 208 00ae 3B46     		mov	r3, r7
 209 00b0 4046     		mov	r0, r8
 210 00b2 4946     		mov	r1, r9
 211 00b4 FFF7FEFF 		bl	__aeabi_dmul
 212 00b8 DDE90023 		ldrd	r2, [sp]
 213 00bc FFF7FEFF 		bl	__aeabi_dadd
 214 00c0 FFF7FEFF 		bl	sqrt
 215 00c4 2246     		mov	r2, r4
 216 00c6 2B46     		mov	r3, r5
 217 00c8 8046     		mov	r8, r0
 218 00ca 8946     		mov	r9, r1
 219 00cc FFF7FEFF 		bl	__aeabi_dsub
 220 00d0 23A3     		adr	r3, .L16
 221 00d2 D3E90023 		ldrd	r2, [r3]
 222 00d6 FFF7FEFF 		bl	pow
 223 00da 2246     		mov	r2, r4
 224 00dc 0646     		mov	r6, r0
 225 00de 2B46     		mov	r3, r5
 226 00e0 0F46     		mov	r7, r1
 227 00e2 4046     		mov	r0, r8
 228 00e4 4946     		mov	r1, r9
ARM GAS  C:\Users\George\AppData\Local\Temp\ccinrsxc.s 			page 5


 229 00e6 FFF7FEFF 		bl	__aeabi_dadd
 230 00ea 1DA3     		adr	r3, .L16
 231 00ec D3E90023 		ldrd	r2, [r3]
 232 00f0 FFF7FEFF 		bl	pow
 233 00f4 0B46     		mov	r3, r1
 234 00f6 0246     		mov	r2, r0
 235 00f8 3946     		mov	r1, r7
 236 00fa 3046     		mov	r0, r6
 237 00fc FFF7FEFF 		bl	__aeabi_dsub
 238 0100 FFF7FEFF 		bl	exp
 239 0104 FFF7FEFF 		bl	__aeabi_d2f
 240 0108 0446     		mov	r4, r0
 241 010a 9AF91100 		ldrsb	r0, [r10, #17]
 242 010e 9AF91050 		ldrsb	r5, [r10, #16]
 243 0112 00F50050 		add	r0, r0, #8192
 244 0116 401B     		subs	r0, r0, r5
 245 0118 FFF7FEFF 		bl	__aeabi_i2f
 246 011c DAF80C10 		ldr	r1, [r10, #12]	@ float
 247 0120 0646     		mov	r6, r0
 248 0122 2046     		mov	r0, r4
 249 0124 FFF7FEFF 		bl	__aeabi_fadd
 250 0128 0146     		mov	r1, r0
 251 012a 2046     		mov	r0, r4
 252 012c FFF7FEFF 		bl	__aeabi_fdiv
 253 0130 0146     		mov	r1, r0
 254 0132 3046     		mov	r0, r6
 255 0134 FFF7FEFF 		bl	__aeabi_fmul
 256 0138 FFF7FEFF 		bl	__aeabi_f2iz
 257 013c 41F6FE73 		movw	r3, #8190
 258 0140 2844     		add	r0, r0, r5
 259 0142 9842     		cmp	r0, r3
 260 0144 05DC     		bgt	.L14
 261 0146 0028     		cmp	r0, #0
 262 0148 00DC     		bgt	.L13
 263 014a 0020     		movs	r0, #0
 264              	.L13:
 265 014c 03B0     		add	sp, sp, #12
 266              		@ sp needed
 267 014e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 268              	.L14:
 269 0152 41F6FF70 		movw	r0, #8191
 270 0156 03B0     		add	sp, sp, #12
 271              		@ sp needed
 272 0158 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 273              	.L17:
 274 015c AFF30080 		.align	3
 275              	.L16:
 276 0160 55555555 		.word	1431655765
 277 0164 5555D53F 		.word	1070945621
 278 0168 00000840 		.word	1074266112
 279 016c 33938843 		.word	1133024051
 280 0170 0000F03F 		.word	1072693248
 281              		.size	_ZNK10Thermistor14CalcAdcReadingEf, .-_ZNK10Thermistor14CalcAdcReadingEf
 282 0174 AFF30080 		.section	.text._ZN10Thermistor21CalcDerivedParametersEv,"ax",%progbits
 283              		.align	2
 284              		.global	_ZN10Thermistor21CalcDerivedParametersEv
 285              		.thumb
ARM GAS  C:\Users\George\AppData\Local\Temp\ccinrsxc.s 			page 6


 286              		.thumb_func
 287              		.type	_ZN10Thermistor21CalcDerivedParametersEv, %function
 288              	_ZN10Thermistor21CalcDerivedParametersEv:
 289              		@ args = 0, pretend = 0, frame = 0
 290              		@ frame_needed = 0, uses_anonymous_args = 0
 291 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 292 0004 4168     		ldr	r1, [r0, #4]	@ float
 293 0006 8046     		mov	r8, r0
 294 0008 4FF07E50 		mov	r0, #1065353216
 295 000c FFF7FEFF 		bl	__aeabi_fdiv
 296 0010 C8F81800 		str	r0, [r8, #24]	@ float
 297 0014 D8F80000 		ldr	r0, [r8]	@ float
 298 0018 FFF7FEFF 		bl	__aeabi_f2d
 299 001c FFF7FEFF 		bl	log
 300 0020 0446     		mov	r4, r0
 301 0022 0D46     		mov	r5, r1
 302 0024 D8F81800 		ldr	r0, [r8, #24]	@ float
 303 0028 FFF7FEFF 		bl	__aeabi_f2d
 304 002c 2246     		mov	r2, r4
 305 002e 2B46     		mov	r3, r5
 306 0030 FFF7FEFF 		bl	__aeabi_dmul
 307 0034 0246     		mov	r2, r0
 308 0036 0B46     		mov	r3, r1
 309 0038 11A1     		adr	r1, .L19
 310 003a D1E90001 		ldrd	r0, [r1]
 311 003e FFF7FEFF 		bl	__aeabi_dsub
 312 0042 0646     		mov	r6, r0
 313 0044 D8F80800 		ldr	r0, [r8, #8]	@ float
 314 0048 0F46     		mov	r7, r1
 315 004a FFF7FEFF 		bl	__aeabi_f2d
 316 004e 2246     		mov	r2, r4
 317 0050 2B46     		mov	r3, r5
 318 0052 FFF7FEFF 		bl	__aeabi_dmul
 319 0056 2246     		mov	r2, r4
 320 0058 2B46     		mov	r3, r5
 321 005a FFF7FEFF 		bl	__aeabi_dmul
 322 005e 2246     		mov	r2, r4
 323 0060 2B46     		mov	r3, r5
 324 0062 FFF7FEFF 		bl	__aeabi_dmul
 325 0066 0246     		mov	r2, r0
 326 0068 0B46     		mov	r3, r1
 327 006a 3046     		mov	r0, r6
 328 006c 3946     		mov	r1, r7
 329 006e FFF7FEFF 		bl	__aeabi_dsub
 330 0072 FFF7FEFF 		bl	__aeabi_d2f
 331 0076 C8F81400 		str	r0, [r8, #20]	@ float
 332 007a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 333              	.L20:
 334 007e 00BF     		.align	3
 335              	.L19:
 336 0080 45A725E6 		.word	-433739963
 337 0084 E1796B3F 		.word	1064008161
 338              		.size	_ZN10Thermistor21CalcDerivedParametersEv, .-_ZN10Thermistor21CalcDerivedParametersEv
 339              		.section	.text._ZN10Thermistor13SetParametersEffff,"ax",%progbits
 340              		.align	2
 341              		.global	_ZN10Thermistor13SetParametersEffff
 342              		.thumb
ARM GAS  C:\Users\George\AppData\Local\Temp\ccinrsxc.s 			page 7


 343              		.thumb_func
 344              		.type	_ZN10Thermistor13SetParametersEffff, %function
 345              	_ZN10Thermistor13SetParametersEffff:
 346              		@ args = 4, pretend = 0, frame = 0
 347              		@ frame_needed = 0, uses_anonymous_args = 0
 348              		@ link register save eliminated.
 349 0000 30B4     		push	{r4, r5}
 350 0002 029D     		ldr	r5, [sp, #8]	@ float
 351 0004 0160     		str	r1, [r0]	@ float
 352 0006 C560     		str	r5, [r0, #12]	@ float
 353 0008 4260     		str	r2, [r0, #4]	@ float
 354 000a 8360     		str	r3, [r0, #8]	@ float
 355 000c 30BC     		pop	{r4, r5}
 356 000e FFF7FEBF 		b	_ZN10Thermistor21CalcDerivedParametersEv
 357              		.size	_ZN10Thermistor13SetParametersEffff, .-_ZN10Thermistor13SetParametersEffff
 358 0012 00BF     		.section	.text._ZN10ThermistorC2Ev,"ax",%progbits
 359              		.align	2
 360              		.global	_ZN10ThermistorC2Ev
 361              		.thumb
 362              		.thumb_func
 363              		.type	_ZN10ThermistorC2Ev, %function
 364              	_ZN10ThermistorC2Ev:
 365              		@ args = 0, pretend = 0, frame = 0
 366              		@ frame_needed = 0, uses_anonymous_args = 0
 367 0000 70B5     		push	{r4, r5, r6, lr}
 368 0002 084A     		ldr	r2, .L23
 369 0004 084E     		ldr	r6, .L23+4
 370 0006 094D     		ldr	r5, .L23+8
 371 0008 0023     		movs	r3, #0
 372 000a 0021     		movs	r1, #0
 373 000c 0446     		mov	r4, r0
 374 000e 0660     		str	r6, [r0]	@ float
 375 0010 4560     		str	r5, [r0, #4]	@ float
 376 0012 8160     		str	r1, [r0, #8]	@ float
 377 0014 C260     		str	r2, [r0, #12]	@ float
 378 0016 0374     		strb	r3, [r0, #16]
 379 0018 4374     		strb	r3, [r0, #17]
 380 001a FFF7FEFF 		bl	_ZN10Thermistor21CalcDerivedParametersEv
 381 001e 2046     		mov	r0, r4
 382 0020 70BD     		pop	{r4, r5, r6, pc}
 383              	.L24:
 384 0022 00BF     		.align	2
 385              	.L23:
 386 0024 00007A44 		.word	1148846080
 387 0028 0050C347 		.word	1203982336
 388 002c 00208945 		.word	1166614528
 389              		.size	_ZN10ThermistorC2Ev, .-_ZN10ThermistorC2Ev
 390              		.global	_ZN10ThermistorC1Ev
 391              		.thumb_set _ZN10ThermistorC1Ev,_ZN10ThermistorC2Ev
 392              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 393              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 394              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 395              	_ZL28cpu_irq_prev_interrupt_state:
 396 0000 00       		.space	1
 397              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 398              		.align	2
 399              		.type	_ZL32cpu_irq_critical_section_counter, %object
ARM GAS  C:\Users\George\AppData\Local\Temp\ccinrsxc.s 			page 8


 400              		.size	_ZL32cpu_irq_critical_section_counter, 4
 401              	_ZL32cpu_irq_critical_section_counter:
 402 0000 00000000 		.space	4
 403              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
