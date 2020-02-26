ARM GAS  C:\Users\George\AppData\Local\Temp\ccilJR3x.s 			page 1


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
  14              		.file	"DeltaParameters.cpp"
  15              		.section	.text._ZN15DeltaParameters4InitEv,"ax",%progbits
  16              		.align	2
  17              		.global	_ZN15DeltaParameters4InitEv
  18              		.thumb
  19              		.thumb_func
  20              		.type	_ZN15DeltaParameters4InitEv, %function
  21              	_ZN15DeltaParameters4InitEv:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0D49     		ldr	r1, .L2
  26 0002 0E4A     		ldr	r2, .L2+4
  27 0004 0023     		movs	r3, #0
  28 0006 10B4     		push	{r4}
  29 0008 0024     		movs	r4, #0
  30 000a 80F83840 		strb	r4, [r0, #56]
  31 000e 8162     		str	r1, [r0, #40]	@ float
  32 0010 C262     		str	r2, [r0, #44]	@ float
  33 0012 8360     		str	r3, [r0, #8]	@ float
  34 0014 C360     		str	r3, [r0, #12]	@ float
  35 0016 8361     		str	r3, [r0, #24]	@ float
  36 0018 4361     		str	r3, [r0, #20]	@ float
  37 001a 0361     		str	r3, [r0, #16]	@ float
  38 001c 4363     		str	r3, [r0, #52]	@ float
  39 001e 0363     		str	r3, [r0, #48]	@ float
  40 0020 C361     		str	r3, [r0, #28]	@ float
  41 0022 8364     		str	r3, [r0, #72]	@ float
  42 0024 C363     		str	r3, [r0, #60]	@ float
  43 0026 0362     		str	r3, [r0, #32]	@ float
  44 0028 C364     		str	r3, [r0, #76]	@ float
  45 002a 0364     		str	r3, [r0, #64]	@ float
  46 002c 4362     		str	r3, [r0, #36]	@ float
  47 002e 0365     		str	r3, [r0, #80]	@ float
  48 0030 4364     		str	r3, [r0, #68]	@ float
  49 0032 5DF8044B 		ldr	r4, [sp], #4
  50 0036 7047     		bx	lr
  51              	.L3:
  52              		.align	2
  53              	.L2:
  54 0038 00004842 		.word	1112014848
  55 003c 00004843 		.word	1128792064
  56              		.size	_ZN15DeltaParameters4InitEv, .-_ZN15DeltaParameters4InitEv
  57              		.global	__aeabi_fadd
ARM GAS  C:\Users\George\AppData\Local\Temp\ccilJR3x.s 			page 2


  58              		.global	__aeabi_fdiv
  59              		.global	__aeabi_fsub
  60              		.section	.text._ZN15DeltaParameters27NormaliseEndstopAdjustmentsEv,"ax",%progbits
  61              		.align	2
  62              		.global	_ZN15DeltaParameters27NormaliseEndstopAdjustmentsEv
  63              		.thumb
  64              		.thumb_func
  65              		.type	_ZN15DeltaParameters27NormaliseEndstopAdjustmentsEv, %function
  66              	_ZN15DeltaParameters27NormaliseEndstopAdjustmentsEv:
  67              		@ args = 0, pretend = 0, frame = 0
  68              		@ frame_needed = 0, uses_anonymous_args = 0
  69 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  70 0004 0446     		mov	r4, r0
  71 0006 076A     		ldr	r7, [r0, #32]	@ float
  72 0008 D0F81C80 		ldr	r8, [r0, #28]	@ float
  73 000c 666A     		ldr	r6, [r4, #36]	@ float
  74 000e 3946     		mov	r1, r7
  75 0010 4046     		mov	r0, r8
  76 0012 FFF7FEFF 		bl	__aeabi_fadd
  77 0016 3146     		mov	r1, r6
  78 0018 FFF7FEFF 		bl	__aeabi_fadd
  79 001c 0F49     		ldr	r1, .L5
  80 001e FFF7FEFF 		bl	__aeabi_fdiv
  81 0022 0546     		mov	r5, r0
  82 0024 2946     		mov	r1, r5
  83 0026 4046     		mov	r0, r8
  84 0028 FFF7FEFF 		bl	__aeabi_fsub
  85 002c 2946     		mov	r1, r5
  86 002e E061     		str	r0, [r4, #28]	@ float
  87 0030 3846     		mov	r0, r7
  88 0032 FFF7FEFF 		bl	__aeabi_fsub
  89 0036 2946     		mov	r1, r5
  90 0038 2062     		str	r0, [r4, #32]	@ float
  91 003a 3046     		mov	r0, r6
  92 003c FFF7FEFF 		bl	__aeabi_fsub
  93 0040 2946     		mov	r1, r5
  94 0042 6062     		str	r0, [r4, #36]	@ float
  95 0044 E06A     		ldr	r0, [r4, #44]	@ float
  96 0046 FFF7FEFF 		bl	__aeabi_fadd
  97 004a 2946     		mov	r1, r5
  98 004c E062     		str	r0, [r4, #44]	@ float
  99 004e A06D     		ldr	r0, [r4, #88]	@ float
 100 0050 FFF7FEFF 		bl	__aeabi_fadd
 101 0054 A065     		str	r0, [r4, #88]	@ float
 102 0056 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 103              	.L6:
 104 005a 00BF     		.align	2
 105              	.L5:
 106 005c 00004040 		.word	1077936128
 107              		.size	_ZN15DeltaParameters27NormaliseEndstopAdjustmentsEv, .-_ZN15DeltaParameters27NormaliseEndsto
 108              		.global	__aeabi_fmul
 109              		.global	__aeabi_f2d
 110              		.global	__aeabi_dadd
 111              		.global	__aeabi_d2f
 112              		.section	.text._ZNK15DeltaParameters9TransformEPKfj,"ax",%progbits
 113              		.align	2
 114              		.global	_ZNK15DeltaParameters9TransformEPKfj
ARM GAS  C:\Users\George\AppData\Local\Temp\ccilJR3x.s 			page 3


 115              		.thumb
 116              		.thumb_func
 117              		.type	_ZNK15DeltaParameters9TransformEPKfj, %function
 118              	_ZNK15DeltaParameters9TransformEPKfj:
 119              		@ args = 0, pretend = 0, frame = 0
 120              		@ frame_needed = 0, uses_anonymous_args = 0
 121 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 122 0004 00EB8204 		add	r4, r0, r2, lsl #2
 123 0008 0E46     		mov	r6, r1
 124 000a 0746     		mov	r7, r0
 125 000c 0868     		ldr	r0, [r1]	@ float
 126 000e E16B     		ldr	r1, [r4, #60]	@ float
 127 0010 FFF7FEFF 		bl	__aeabi_fsub
 128 0014 A16C     		ldr	r1, [r4, #72]	@ float
 129 0016 8046     		mov	r8, r0
 130 0018 7068     		ldr	r0, [r6, #4]	@ float
 131 001a FFF7FEFF 		bl	__aeabi_fsub
 132 001e 4146     		mov	r1, r8
 133 0020 0546     		mov	r5, r0
 134 0022 4046     		mov	r0, r8
 135 0024 FFF7FEFF 		bl	__aeabi_fmul
 136 0028 0146     		mov	r1, r0
 137 002a D7F88800 		ldr	r0, [r7, #136]	@ float
 138 002e FFF7FEFF 		bl	__aeabi_fsub
 139 0032 2946     		mov	r1, r5
 140 0034 0446     		mov	r4, r0
 141 0036 2846     		mov	r0, r5
 142 0038 FFF7FEFF 		bl	__aeabi_fmul
 143 003c 0146     		mov	r1, r0
 144 003e 2046     		mov	r0, r4
 145 0040 FFF7FEFF 		bl	__aeabi_fsub
 146 0044 FFF7FEFF 		bl	__aeabi_f2d
 147 0048 FFF7FEFF 		bl	sqrt
 148 004c 0446     		mov	r4, r0
 149 004e B068     		ldr	r0, [r6, #8]	@ float
 150 0050 0D46     		mov	r5, r1
 151 0052 FFF7FEFF 		bl	__aeabi_f2d
 152 0056 0246     		mov	r2, r0
 153 0058 0B46     		mov	r3, r1
 154 005a 2046     		mov	r0, r4
 155 005c 2946     		mov	r1, r5
 156 005e FFF7FEFF 		bl	__aeabi_dadd
 157 0062 0446     		mov	r4, r0
 158 0064 0D46     		mov	r5, r1
 159 0066 3068     		ldr	r0, [r6]	@ float
 160 0068 396B     		ldr	r1, [r7, #48]	@ float
 161 006a FFF7FEFF 		bl	__aeabi_fmul
 162 006e FFF7FEFF 		bl	__aeabi_f2d
 163 0072 0246     		mov	r2, r0
 164 0074 0B46     		mov	r3, r1
 165 0076 2046     		mov	r0, r4
 166 0078 2946     		mov	r1, r5
 167 007a FFF7FEFF 		bl	__aeabi_dadd
 168 007e 0446     		mov	r4, r0
 169 0080 0D46     		mov	r5, r1
 170 0082 7068     		ldr	r0, [r6, #4]	@ float
 171 0084 796B     		ldr	r1, [r7, #52]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\ccilJR3x.s 			page 4


 172 0086 FFF7FEFF 		bl	__aeabi_fmul
 173 008a FFF7FEFF 		bl	__aeabi_f2d
 174 008e 0246     		mov	r2, r0
 175 0090 0B46     		mov	r3, r1
 176 0092 2046     		mov	r0, r4
 177 0094 2946     		mov	r1, r5
 178 0096 FFF7FEFF 		bl	__aeabi_dadd
 179 009a FFF7FEFF 		bl	__aeabi_d2f
 180 009e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 181              		.size	_ZNK15DeltaParameters9TransformEPKfj, .-_ZNK15DeltaParameters9TransformEPKfj
 182 00a2 00BF     		.section	.text._ZNK15DeltaParameters16InverseTransformEfffPf,"ax",%progbits
 183              		.align	2
 184              		.global	_ZNK15DeltaParameters16InverseTransformEfffPf
 185              		.thumb
 186              		.thumb_func
 187              		.type	_ZNK15DeltaParameters16InverseTransformEfffPf, %function
 188              	_ZNK15DeltaParameters16InverseTransformEfffPf:
 189              		@ args = 4, pretend = 0, frame = 24
 190              		@ frame_needed = 0, uses_anonymous_args = 0
 191 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 192 0004 0746     		mov	r7, r0
 193 0006 87B0     		sub	sp, sp, #28
 194 0008 0846     		mov	r0, r1
 195 000a 1D46     		mov	r5, r3
 196 000c 9046     		mov	r8, r2
 197 000e 0E46     		mov	r6, r1
 198 0010 FFF7FEFF 		bl	__aeabi_fmul
 199 0014 796F     		ldr	r1, [r7, #116]	@ float
 200 0016 0090     		str	r0, [sp]
 201 0018 FFF7FEFF 		bl	__aeabi_fadd
 202 001c 4146     		mov	r1, r8
 203 001e 8146     		mov	r9, r0
 204 0020 4046     		mov	r0, r8
 205 0022 FFF7FEFF 		bl	__aeabi_fmul
 206 0026 B96F     		ldr	r1, [r7, #120]	@ float
 207 0028 FFF7FEFF 		bl	__aeabi_fadd
 208 002c 2946     		mov	r1, r5
 209 002e 0390     		str	r0, [sp, #12]	@ float
 210 0030 2846     		mov	r0, r5
 211 0032 FFF7FEFF 		bl	__aeabi_fmul
 212 0036 F96F     		ldr	r1, [r7, #124]	@ float
 213 0038 FFF7FEFF 		bl	__aeabi_fadd
 214 003c FA6D     		ldr	r2, [r7, #92]	@ float
 215 003e 0446     		mov	r4, r0
 216 0040 4946     		mov	r1, r9
 217 0042 1046     		mov	r0, r2
 218 0044 D7F860A0 		ldr	r10, [r7, #96]	@ float
 219 0048 0292     		str	r2, [sp, #8]
 220 004a FFF7FEFF 		bl	__aeabi_fmul
 221 004e 0399     		ldr	r1, [sp, #12]	@ float
 222 0050 8346     		mov	fp, r0
 223 0052 5046     		mov	r0, r10
 224 0054 FFF7FEFF 		bl	__aeabi_fmul
 225 0058 7B6E     		ldr	r3, [r7, #100]	@ float
 226 005a 0146     		mov	r1, r0
 227 005c 5846     		mov	r0, fp
 228 005e 0493     		str	r3, [sp, #16]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\ccilJR3x.s 			page 5


 229 0060 FFF7FEFF 		bl	__aeabi_fadd
 230 0064 2146     		mov	r1, r4
 231 0066 8346     		mov	fp, r0
 232 0068 0498     		ldr	r0, [sp, #16]	@ float
 233 006a FFF7FEFF 		bl	__aeabi_fmul
 234 006e 0146     		mov	r1, r0
 235 0070 5846     		mov	r0, fp
 236 0072 FFF7FEFF 		bl	__aeabi_fadd
 237 0076 BB6E     		ldr	r3, [r7, #104]	@ float
 238 0078 0590     		str	r0, [sp, #20]	@ float
 239 007a 4946     		mov	r1, r9
 240 007c 1846     		mov	r0, r3
 241 007e D7F86CB0 		ldr	fp, [r7, #108]	@ float
 242 0082 0193     		str	r3, [sp, #4]
 243 0084 FFF7FEFF 		bl	__aeabi_fmul
 244 0088 0399     		ldr	r1, [sp, #12]	@ float
 245 008a 8146     		mov	r9, r0
 246 008c 5846     		mov	r0, fp
 247 008e FFF7FEFF 		bl	__aeabi_fmul
 248 0092 0146     		mov	r1, r0
 249 0094 4846     		mov	r0, r9
 250 0096 FFF7FEFF 		bl	__aeabi_fadd
 251 009a D7F87090 		ldr	r9, [r7, #112]	@ float
 252 009e 0390     		str	r0, [sp, #12]	@ float
 253 00a0 2146     		mov	r1, r4
 254 00a2 4846     		mov	r0, r9
 255 00a4 FFF7FEFF 		bl	__aeabi_fmul
 256 00a8 0146     		mov	r1, r0
 257 00aa 0398     		ldr	r0, [sp, #12]	@ float
 258 00ac FFF7FEFF 		bl	__aeabi_fadd
 259 00b0 029A     		ldr	r2, [sp, #8]
 260 00b2 0390     		str	r0, [sp, #12]	@ float
 261 00b4 1146     		mov	r1, r2
 262 00b6 3046     		mov	r0, r6
 263 00b8 FFF7FEFF 		bl	__aeabi_fmul
 264 00bc 5146     		mov	r1, r10
 265 00be 0446     		mov	r4, r0
 266 00c0 4046     		mov	r0, r8
 267 00c2 FFF7FEFF 		bl	__aeabi_fmul
 268 00c6 0146     		mov	r1, r0
 269 00c8 2046     		mov	r0, r4
 270 00ca FFF7FEFF 		bl	__aeabi_fadd
 271 00ce 0499     		ldr	r1, [sp, #16]	@ float
 272 00d0 0446     		mov	r4, r0
 273 00d2 2846     		mov	r0, r5
 274 00d4 FFF7FEFF 		bl	__aeabi_fmul
 275 00d8 0146     		mov	r1, r0
 276 00da 2046     		mov	r0, r4
 277 00dc FFF7FEFF 		bl	__aeabi_fadd
 278 00e0 0146     		mov	r1, r0
 279 00e2 FFF7FEFF 		bl	__aeabi_fadd
 280 00e6 019B     		ldr	r3, [sp, #4]
 281 00e8 0446     		mov	r4, r0
 282 00ea 1946     		mov	r1, r3
 283 00ec 3046     		mov	r0, r6
 284 00ee FFF7FEFF 		bl	__aeabi_fmul
 285 00f2 5946     		mov	r1, fp
ARM GAS  C:\Users\George\AppData\Local\Temp\ccilJR3x.s 			page 6


 286 00f4 8246     		mov	r10, r0
 287 00f6 4046     		mov	r0, r8
 288 00f8 FFF7FEFF 		bl	__aeabi_fmul
 289 00fc 0146     		mov	r1, r0
 290 00fe 5046     		mov	r0, r10
 291 0100 FFF7FEFF 		bl	__aeabi_fadd
 292 0104 4946     		mov	r1, r9
 293 0106 8046     		mov	r8, r0
 294 0108 2846     		mov	r0, r5
 295 010a FFF7FEFF 		bl	__aeabi_fmul
 296 010e 0146     		mov	r1, r0
 297 0110 4046     		mov	r0, r8
 298 0112 FFF7FEFF 		bl	__aeabi_fadd
 299 0116 0146     		mov	r1, r0
 300 0118 FFF7FEFF 		bl	__aeabi_fadd
 301 011c 2146     		mov	r1, r4
 302 011e 0546     		mov	r5, r0
 303 0120 2046     		mov	r0, r4
 304 0122 FFF7FEFF 		bl	__aeabi_fmul
 305 0126 2946     		mov	r1, r5
 306 0128 8046     		mov	r8, r0
 307 012a 2846     		mov	r0, r5
 308 012c FFF7FEFF 		bl	__aeabi_fmul
 309 0130 0146     		mov	r1, r0
 310 0132 4046     		mov	r0, r8
 311 0134 D7F88480 		ldr	r8, [r7, #132]	@ float
 312 0138 FFF7FEFF 		bl	__aeabi_fadd
 313 013c 4146     		mov	r1, r8
 314 013e FFF7FEFF 		bl	__aeabi_fadd
 315 0142 2946     		mov	r1, r5
 316 0144 0490     		str	r0, [sp, #16]	@ float
 317 0146 0398     		ldr	r0, [sp, #12]	@ float
 318 0148 FFF7FEFF 		bl	__aeabi_fmul
 319 014c 2146     		mov	r1, r4
 320 014e 8246     		mov	r10, r0
 321 0150 0598     		ldr	r0, [sp, #20]	@ float
 322 0152 FFF7FEFF 		bl	__aeabi_fmul
 323 0156 0146     		mov	r1, r0
 324 0158 5046     		mov	r0, r10
 325 015a FFF7FEFF 		bl	__aeabi_fadd
 326 015e 4146     		mov	r1, r8
 327 0160 8246     		mov	r10, r0
 328 0162 3046     		mov	r0, r6
 329 0164 FFF7FEFF 		bl	__aeabi_fmul
 330 0168 0146     		mov	r1, r0
 331 016a 5046     		mov	r0, r10
 332 016c FFF7FEFF 		bl	__aeabi_fadd
 333 0170 D7F83CB0 		ldr	fp, [r7, #60]	@ float
 334 0174 D7F88060 		ldr	r6, [r7, #128]	@ float
 335 0178 8246     		mov	r10, r0
 336 017a 2946     		mov	r1, r5
 337 017c 5846     		mov	r0, fp
 338 017e FFF7FEFF 		bl	__aeabi_fmul
 339 0182 3146     		mov	r1, r6
 340 0184 FFF7FEFF 		bl	__aeabi_fmul
 341 0188 0146     		mov	r1, r0
 342 018a 5046     		mov	r0, r10
ARM GAS  C:\Users\George\AppData\Local\Temp\ccilJR3x.s 			page 7


 343 018c FFF7FEFF 		bl	__aeabi_fadd
 344 0190 D7F848A0 		ldr	r10, [r7, #72]	@ float
 345 0194 8146     		mov	r9, r0
 346 0196 2146     		mov	r1, r4
 347 0198 5046     		mov	r0, r10
 348 019a FFF7FEFF 		bl	__aeabi_fmul
 349 019e 0146     		mov	r1, r0
 350 01a0 3046     		mov	r0, r6
 351 01a2 FFF7FEFF 		bl	__aeabi_fmul
 352 01a6 0146     		mov	r1, r0
 353 01a8 4846     		mov	r0, r9
 354 01aa FFF7FEFF 		bl	__aeabi_fsub
 355 01ae 3146     		mov	r1, r6
 356 01b0 8146     		mov	r9, r0
 357 01b2 5846     		mov	r0, fp
 358 01b4 FFF7FEFF 		bl	__aeabi_fmul
 359 01b8 0399     		ldr	r1, [sp, #12]	@ float
 360 01ba FFF7FEFF 		bl	__aeabi_fadd
 361 01be 5146     		mov	r1, r10
 362 01c0 8346     		mov	fp, r0
 363 01c2 3046     		mov	r0, r6
 364 01c4 FFF7FEFF 		bl	__aeabi_fmul
 365 01c8 0146     		mov	r1, r0
 366 01ca 0598     		ldr	r0, [sp, #20]	@ float
 367 01cc FFF7FEFF 		bl	__aeabi_fsub
 368 01d0 4946     		mov	r1, r9
 369 01d2 8246     		mov	r10, r0
 370 01d4 4846     		mov	r0, r9
 371 01d6 FFF7FEFF 		bl	__aeabi_fmul
 372 01da 5946     		mov	r1, fp
 373 01dc 0646     		mov	r6, r0
 374 01de 5846     		mov	r0, fp
 375 01e0 FFF7FEFF 		bl	__aeabi_fmul
 376 01e4 5146     		mov	r1, r10
 377 01e6 8346     		mov	fp, r0
 378 01e8 5046     		mov	r0, r10
 379 01ea FFF7FEFF 		bl	__aeabi_fmul
 380 01ee 0146     		mov	r1, r0
 381 01f0 5846     		mov	r0, fp
 382 01f2 FFF7FEFF 		bl	__aeabi_fadd
 383 01f6 DDF800C0 		ldr	ip, [sp]
 384 01fa D7F88810 		ldr	r1, [r7, #136]	@ float
 385 01fe 8246     		mov	r10, r0
 386 0200 6046     		mov	r0, ip
 387 0202 FFF7FEFF 		bl	__aeabi_fsub
 388 0206 0146     		mov	r1, r0
 389 0208 4046     		mov	r0, r8
 390 020a FFF7FEFF 		bl	__aeabi_fmul
 391 020e 0146     		mov	r1, r0
 392 0210 5046     		mov	r0, r10
 393 0212 FFF7FEFF 		bl	__aeabi_fadd
 394 0216 0146     		mov	r1, r0
 395 0218 0498     		ldr	r0, [sp, #16]	@ float
 396 021a FFF7FEFF 		bl	__aeabi_fmul
 397 021e 0146     		mov	r1, r0
 398 0220 3046     		mov	r0, r6
 399 0222 FFF7FEFF 		bl	__aeabi_fsub
ARM GAS  C:\Users\George\AppData\Local\Temp\ccilJR3x.s 			page 8


 400 0226 109E     		ldr	r6, [sp, #64]
 401 0228 FFF7FEFF 		bl	sqrtf
 402 022c 0146     		mov	r1, r0
 403 022e 4846     		mov	r0, r9
 404 0230 FFF7FEFF 		bl	__aeabi_fsub
 405 0234 0499     		ldr	r1, [sp, #16]	@ float
 406 0236 FFF7FEFF 		bl	__aeabi_fdiv
 407 023a 8046     		mov	r8, r0
 408 023c 4146     		mov	r1, r8
 409 023e 2846     		mov	r0, r5
 410 0240 FFF7FEFF 		bl	__aeabi_fmul
 411 0244 0399     		ldr	r1, [sp, #12]	@ float
 412 0246 FFF7FEFF 		bl	__aeabi_fsub
 413 024a D7F88010 		ldr	r1, [r7, #128]	@ float
 414 024e FFF7FEFF 		bl	__aeabi_fdiv
 415 0252 4146     		mov	r1, r8
 416 0254 0546     		mov	r5, r0
 417 0256 3060     		str	r0, [r6]	@ float
 418 0258 2046     		mov	r0, r4
 419 025a FFF7FEFF 		bl	__aeabi_fmul
 420 025e 0146     		mov	r1, r0
 421 0260 0598     		ldr	r0, [sp, #20]	@ float
 422 0262 FFF7FEFF 		bl	__aeabi_fsub
 423 0266 D7F88010 		ldr	r1, [r7, #128]	@ float
 424 026a FFF7FEFF 		bl	__aeabi_fdiv
 425 026e 7060     		str	r0, [r6, #4]	@ float
 426 0270 396B     		ldr	r1, [r7, #48]	@ float
 427 0272 0446     		mov	r4, r0
 428 0274 2846     		mov	r0, r5
 429 0276 FFF7FEFF 		bl	__aeabi_fmul
 430 027a 796B     		ldr	r1, [r7, #52]	@ float
 431 027c 0546     		mov	r5, r0
 432 027e 2046     		mov	r0, r4
 433 0280 FFF7FEFF 		bl	__aeabi_fmul
 434 0284 0146     		mov	r1, r0
 435 0286 2846     		mov	r0, r5
 436 0288 FFF7FEFF 		bl	__aeabi_fadd
 437 028c 0146     		mov	r1, r0
 438 028e 4046     		mov	r0, r8
 439 0290 FFF7FEFF 		bl	__aeabi_fsub
 440 0294 B060     		str	r0, [r6, #8]	@ float
 441 0296 07B0     		add	sp, sp, #28
 442              		@ sp needed
 443 0298 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 444              		.size	_ZNK15DeltaParameters16InverseTransformEfffPf, .-_ZNK15DeltaParameters16InverseTransformEfff
 445              		.global	__aeabi_fcmpgt
 446              		.global	__aeabi_fcmplt
 447              		.global	__aeabi_dmul
 448              		.section	.text._ZN15DeltaParameters6RecalcEv,"ax",%progbits
 449              		.align	2
 450              		.global	_ZN15DeltaParameters6RecalcEv
 451              		.thumb
 452              		.thumb_func
 453              		.type	_ZN15DeltaParameters6RecalcEv, %function
 454              	_ZN15DeltaParameters6RecalcEv:
 455              		@ args = 0, pretend = 0, frame = 64
 456              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccilJR3x.s 			page 9


 457 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 458 0004 C468     		ldr	r4, [r0, #12]	@ float
 459 0006 93B0     		sub	sp, sp, #76
 460 0008 0646     		mov	r6, r0
 461 000a 0021     		movs	r1, #0
 462 000c 2046     		mov	r0, r4
 463 000e FFF7FEFF 		bl	__aeabi_fcmpgt
 464 0012 28B1     		cbz	r0, .L10
 465 0014 B768     		ldr	r7, [r6, #8]	@ float
 466 0016 2046     		mov	r0, r4
 467 0018 3946     		mov	r1, r7
 468 001a FFF7FEFF 		bl	__aeabi_fcmplt
 469 001e 28B9     		cbnz	r0, .L12
 470              	.L10:
 471 0020 0023     		movs	r3, #0
 472 0022 86F83830 		strb	r3, [r6, #56]
 473 0026 13B0     		add	sp, sp, #76
 474              		@ sp needed
 475 0028 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 476              	.L12:
 477 002c 0123     		movs	r3, #1
 478 002e 86F83830 		strb	r3, [r6, #56]
 479 0032 2046     		mov	r0, r4
 480 0034 FFF7FEFF 		bl	__aeabi_f2d
 481 0038 D6F80080 		ldr	r8, [r6]	@ float
 482 003c CDE90601 		strd	r0, [sp, #24]
 483 0040 3069     		ldr	r0, [r6, #16]	@ float
 484 0042 7F49     		ldr	r1, .L16
 485 0044 FFF7FEFF 		bl	__aeabi_fadd
 486 0048 4146     		mov	r1, r8
 487 004a FFF7FEFF 		bl	__aeabi_fmul
 488 004e FFF7FEFF 		bl	__aeabi_f2d
 489 0052 0446     		mov	r4, r0
 490 0054 0D46     		mov	r5, r1
 491 0056 FFF7FEFF 		bl	cos
 492 005a 0246     		mov	r2, r0
 493 005c 0B46     		mov	r3, r1
 494 005e DDE90601 		ldrd	r0, [sp, #24]
 495 0062 FFF7FEFF 		bl	__aeabi_dmul
 496 0066 FFF7FEFF 		bl	__aeabi_d2f
 497 006a 00F10043 		add	r3, r0, #-2147483648
 498 006e 0A93     		str	r3, [sp, #40]
 499 0070 0A9B     		ldr	r3, [sp, #40]	@ float
 500 0072 8146     		mov	r9, r0
 501 0074 F363     		str	r3, [r6, #60]	@ float
 502 0076 2046     		mov	r0, r4
 503 0078 2946     		mov	r1, r5
 504 007a FFF7FEFF 		bl	sin
 505 007e 0246     		mov	r2, r0
 506 0080 0B46     		mov	r3, r1
 507 0082 DDE90601 		ldrd	r0, [sp, #24]
 508 0086 FFF7FEFF 		bl	__aeabi_dmul
 509 008a FFF7FEFF 		bl	__aeabi_d2f
 510 008e 0B90     		str	r0, [sp, #44]	@ float
 511 0090 0B9B     		ldr	r3, [sp, #44]
 512 0092 7169     		ldr	r1, [r6, #20]	@ float
 513 0094 03F1004B 		add	fp, r3, #-2147483648
ARM GAS  C:\Users\George\AppData\Local\Temp\ccilJR3x.s 			page 10


 514 0098 C6F848B0 		str	fp, [r6, #72]	@ float
 515 009c 6848     		ldr	r0, .L16
 516 009e FFF7FEFF 		bl	__aeabi_fsub
 517 00a2 0146     		mov	r1, r0
 518 00a4 4046     		mov	r0, r8
 519 00a6 FFF7FEFF 		bl	__aeabi_fmul
 520 00aa FFF7FEFF 		bl	__aeabi_f2d
 521 00ae 0446     		mov	r4, r0
 522 00b0 0D46     		mov	r5, r1
 523 00b2 FFF7FEFF 		bl	cos
 524 00b6 0246     		mov	r2, r0
 525 00b8 0B46     		mov	r3, r1
 526 00ba DDE90601 		ldrd	r0, [sp, #24]
 527 00be FFF7FEFF 		bl	__aeabi_dmul
 528 00c2 FFF7FEFF 		bl	__aeabi_d2f
 529 00c6 2946     		mov	r1, r5
 530 00c8 8246     		mov	r10, r0
 531 00ca 3064     		str	r0, [r6, #64]	@ float
 532 00cc 2046     		mov	r0, r4
 533 00ce FFF7FEFF 		bl	sin
 534 00d2 0246     		mov	r2, r0
 535 00d4 0B46     		mov	r3, r1
 536 00d6 DDE90601 		ldrd	r0, [sp, #24]
 537 00da FFF7FEFF 		bl	__aeabi_dmul
 538 00de FFF7FEFF 		bl	__aeabi_d2f
 539 00e2 0990     		str	r0, [sp, #36]	@ float
 540 00e4 099B     		ldr	r3, [sp, #36]
 541 00e6 B169     		ldr	r1, [r6, #24]	@ float
 542 00e8 03F1004C 		add	ip, r3, #-2147483648
 543 00ec C6F84CC0 		str	ip, [r6, #76]	@ float
 544 00f0 4046     		mov	r0, r8
 545 00f2 CDF80CC0 		str	ip, [sp, #12]
 546 00f6 FFF7FEFF 		bl	__aeabi_fmul
 547 00fa FFF7FEFF 		bl	__aeabi_f2d
 548 00fe CDE90C01 		strd	r0, [sp, #48]
 549 0102 FFF7FEFF 		bl	sin
 550 0106 0246     		mov	r2, r0
 551 0108 0B46     		mov	r3, r1
 552 010a DDE90601 		ldrd	r0, [sp, #24]
 553 010e FFF7FEFF 		bl	__aeabi_dmul
 554 0112 FFF7FEFF 		bl	__aeabi_d2f
 555 0116 00F10045 		add	r5, r0, #-2147483648
 556 011a 8046     		mov	r8, r0
 557 011c DDE90C01 		ldrd	r0, [sp, #48]
 558 0120 7564     		str	r5, [r6, #68]	@ float
 559 0122 FFF7FEFF 		bl	cos
 560 0126 0246     		mov	r2, r0
 561 0128 0B46     		mov	r3, r1
 562 012a DDE90601 		ldrd	r0, [sp, #24]
 563 012e FFF7FEFF 		bl	__aeabi_dmul
 564 0132 FFF7FEFF 		bl	__aeabi_d2f
 565 0136 5146     		mov	r1, r10
 566 0138 0446     		mov	r4, r0
 567 013a 3065     		str	r0, [r6, #80]	@ float
 568 013c 2846     		mov	r0, r5
 569 013e FFF7FEFF 		bl	__aeabi_fsub
 570 0142 4946     		mov	r1, r9
ARM GAS  C:\Users\George\AppData\Local\Temp\ccilJR3x.s 			page 11


 571 0144 F065     		str	r0, [r6, #92]	@ float
 572 0146 4046     		mov	r0, r8
 573 0148 FFF7FEFF 		bl	__aeabi_fsub
 574 014c 0346     		mov	r3, r0
 575 014e 3366     		str	r3, [r6, #96]	@ float
 576 0150 5146     		mov	r1, r10
 577 0152 4846     		mov	r0, r9
 578 0154 0493     		str	r3, [sp, #16]
 579 0156 FFF7FEFF 		bl	__aeabi_fadd
 580 015a 2146     		mov	r1, r4
 581 015c 8146     		mov	r9, r0
 582 015e 7066     		str	r0, [r6, #100]	@ float
 583 0160 0998     		ldr	r0, [sp, #36]	@ float
 584 0162 FFF7FEFF 		bl	__aeabi_fadd
 585 0166 2146     		mov	r1, r4
 586 0168 B066     		str	r0, [r6, #104]	@ float
 587 016a 5846     		mov	r0, fp
 588 016c FFF7FEFF 		bl	__aeabi_fsub
 589 0170 0999     		ldr	r1, [sp, #36]	@ float
 590 0172 8046     		mov	r8, r0
 591 0174 F066     		str	r0, [r6, #108]	@ float
 592 0176 0B98     		ldr	r0, [sp, #44]	@ float
 593 0178 FFF7FEFF 		bl	__aeabi_fsub
 594 017c 0246     		mov	r2, r0
 595 017e 0A98     		ldr	r0, [sp, #40]	@ float
 596 0180 3267     		str	r2, [r6, #112]	@ float
 597 0182 0146     		mov	r1, r0
 598 0184 0592     		str	r2, [sp, #20]
 599 0186 FFF7FEFF 		bl	__aeabi_fmul
 600 018a 5946     		mov	r1, fp
 601 018c 0690     		str	r0, [sp, #24]	@ float
 602 018e 5846     		mov	r0, fp
 603 0190 FFF7FEFF 		bl	__aeabi_fmul
 604 0194 0146     		mov	r1, r0
 605 0196 0698     		ldr	r0, [sp, #24]	@ float
 606 0198 FFF7FEFF 		bl	__aeabi_fadd
 607 019c 5146     		mov	r1, r10
 608 019e 7067     		str	r0, [r6, #116]	@ float
 609 01a0 5046     		mov	r0, r10
 610 01a2 FFF7FEFF 		bl	__aeabi_fmul
 611 01a6 DDF80CC0 		ldr	ip, [sp, #12]
 612 01aa 8246     		mov	r10, r0
 613 01ac 6146     		mov	r1, ip
 614 01ae 6046     		mov	r0, ip
 615 01b0 FFF7FEFF 		bl	__aeabi_fmul
 616 01b4 0146     		mov	r1, r0
 617 01b6 5046     		mov	r0, r10
 618 01b8 FFF7FEFF 		bl	__aeabi_fadd
 619 01bc 2946     		mov	r1, r5
 620 01be B067     		str	r0, [r6, #120]	@ float
 621 01c0 2846     		mov	r0, r5
 622 01c2 FFF7FEFF 		bl	__aeabi_fmul
 623 01c6 2146     		mov	r1, r4
 624 01c8 0546     		mov	r5, r0
 625 01ca 2046     		mov	r0, r4
 626 01cc FFF7FEFF 		bl	__aeabi_fmul
 627 01d0 0146     		mov	r1, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccilJR3x.s 			page 12


 628 01d2 2846     		mov	r0, r5
 629 01d4 FFF7FEFF 		bl	__aeabi_fadd
 630 01d8 059A     		ldr	r2, [sp, #20]
 631 01da 049B     		ldr	r3, [sp, #16]
 632 01dc 1146     		mov	r1, r2
 633 01de F067     		str	r0, [r6, #124]	@ float
 634 01e0 1846     		mov	r0, r3
 635 01e2 FFF7FEFF 		bl	__aeabi_fmul
 636 01e6 4146     		mov	r1, r8
 637 01e8 0446     		mov	r4, r0
 638 01ea 4846     		mov	r0, r9
 639 01ec FFF7FEFF 		bl	__aeabi_fmul
 640 01f0 0146     		mov	r1, r0
 641 01f2 2046     		mov	r0, r4
 642 01f4 FFF7FEFF 		bl	__aeabi_fsub
 643 01f8 0146     		mov	r1, r0
 644 01fa FFF7FEFF 		bl	__aeabi_fadd
 645 01fe 0146     		mov	r1, r0
 646 0200 C6F88000 		str	r0, [r6, #128]	@ float
 647 0204 FFF7FEFF 		bl	__aeabi_fmul
 648 0208 3946     		mov	r1, r7
 649 020a C6F88400 		str	r0, [r6, #132]	@ float
 650 020e 3846     		mov	r0, r7
 651 0210 FFF7FEFF 		bl	__aeabi_fmul
 652 0214 0FAB     		add	r3, sp, #60
 653 0216 C6F88800 		str	r0, [r6, #136]	@ float
 654 021a 3A46     		mov	r2, r7
 655 021c 0093     		str	r3, [sp]
 656 021e 3046     		mov	r0, r6
 657 0220 3B46     		mov	r3, r7
 658 0222 3946     		mov	r1, r7
 659 0224 FFF7FEFF 		bl	_ZNK15DeltaParameters16InverseTransformEfffPf
 660 0228 F16A     		ldr	r1, [r6, #44]	@ float
 661 022a 3846     		mov	r0, r7
 662 022c FFF7FEFF 		bl	__aeabi_fadd
 663 0230 1199     		ldr	r1, [sp, #68]	@ float
 664 0232 FFF7FEFF 		bl	__aeabi_fsub
 665 0236 B065     		str	r0, [r6, #88]	@ float
 666 0238 13B0     		add	sp, sp, #76
 667              		@ sp needed
 668 023a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 669              	.L17:
 670 023e 00BF     		.align	2
 671              	.L16:
 672 0240 0000F041 		.word	1106247680
 673              		.size	_ZN15DeltaParameters6RecalcEv, .-_ZN15DeltaParameters6RecalcEv
 674              		.section	.text._ZN15DeltaParameters17ComputeDerivativeEjfff,"ax",%progbits
 675              		.align	2
 676              		.global	_ZN15DeltaParameters17ComputeDerivativeEjfff
 677              		.thumb
 678              		.thumb_func
 679              		.type	_ZN15DeltaParameters17ComputeDerivativeEjfff, %function
 680              	_ZN15DeltaParameters17ComputeDerivativeEjfff:
 681              		@ args = 4, pretend = 0, frame = 296
 682              		@ frame_needed = 0, uses_anonymous_args = 0
 683 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 684 0004 CDB0     		sub	sp, sp, #308
ARM GAS  C:\Users\George\AppData\Local\Temp\ccilJR3x.s 			page 13


 685 0006 0646     		mov	r6, r0
 686 0008 0D46     		mov	r5, r1
 687 000a 9046     		mov	r8, r2
 688 000c 0146     		mov	r1, r0
 689 000e 8C22     		movs	r2, #140
 690 0010 06A8     		add	r0, sp, #24
 691 0012 9946     		mov	r9, r3
 692 0014 549F     		ldr	r7, [sp, #336]	@ float
 693 0016 EC1E     		subs	r4, r5, #3
 694 0018 FFF7FEFF 		bl	memcpy
 695 001c 3146     		mov	r1, r6
 696 001e 29A8     		add	r0, sp, #164
 697 0020 8C22     		movs	r2, #140
 698 0022 FFF7FEFF 		bl	memcpy
 699 0026 032C     		cmp	r4, #3
 700 0028 00F28380 		bhi	.L19
 701 002c DFE804F0 		tbb	[pc, r4]
 702              	.L21:
 703 0030 5F       		.byte	(.L20-.L21)/2
 704 0031 36       		.byte	(.L22-.L21)/2
 705 0032 02       		.byte	(.L23-.L21)/2
 706 0033 70       		.byte	(.L24-.L21)/2
 707              		.align	1
 708              	.L23:
 709 0034 0B98     		ldr	r0, [sp, #44]	@ float
 710 0036 5E49     		ldr	r1, .L39
 711 0038 FFF7FEFF 		bl	__aeabi_fadd
 712 003c 5C49     		ldr	r1, .L39
 713 003e 0B90     		str	r0, [sp, #44]	@ float
 714 0040 2E98     		ldr	r0, [sp, #184]	@ float
 715 0042 FFF7FEFF 		bl	__aeabi_fsub
 716 0046 2E90     		str	r0, [sp, #184]	@ float
 717 0048 06A8     		add	r0, sp, #24
 718 004a FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 719 004e 29A8     		add	r0, sp, #164
 720 0050 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 721              	.L26:
 722 0054 012D     		cmp	r5, #1
 723 0056 33D1     		bne	.L28
 724              	.L38:
 725 0058 5549     		ldr	r1, .L39
 726 005a 4846     		mov	r0, r9
 727 005c FFF7FEFF 		bl	__aeabi_fadd
 728 0060 03AC     		add	r4, sp, #12
 729 0062 0246     		mov	r2, r0
 730 0064 0094     		str	r4, [sp]
 731 0066 06A8     		add	r0, sp, #24
 732 0068 4146     		mov	r1, r8
 733 006a 3B46     		mov	r3, r7
 734 006c FFF7FEFF 		bl	_ZNK15DeltaParameters16InverseTransformEfffPf
 735 0070 A668     		ldr	r6, [r4, #8]	@ float
 736              	.L29:
 737 0072 4F49     		ldr	r1, .L39
 738 0074 4846     		mov	r0, r9
 739 0076 FFF7FEFF 		bl	__aeabi_fsub
 740 007a 4146     		mov	r1, r8
 741 007c 0246     		mov	r2, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccilJR3x.s 			page 14


 742 007e 3B46     		mov	r3, r7
 743              	.L35:
 744 0080 29A8     		add	r0, sp, #164
 745 0082 0094     		str	r4, [sp]
 746 0084 FFF7FEFF 		bl	_ZNK15DeltaParameters16InverseTransformEfffPf
 747 0088 A168     		ldr	r1, [r4, #8]	@ float
 748 008a 3046     		mov	r0, r6
 749 008c FFF7FEFF 		bl	__aeabi_fsub
 750 0090 4849     		ldr	r1, .L39+4
 751 0092 FFF7FEFF 		bl	__aeabi_fdiv
 752 0096 4DB0     		add	sp, sp, #308
 753              		@ sp needed
 754 0098 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 755              	.L22:
 756 009c 0A98     		ldr	r0, [sp, #40]	@ float
 757 009e 4449     		ldr	r1, .L39
 758 00a0 FFF7FEFF 		bl	__aeabi_fadd
 759 00a4 4249     		ldr	r1, .L39
 760 00a6 0A90     		str	r0, [sp, #40]	@ float
 761 00a8 2D98     		ldr	r0, [sp, #180]	@ float
 762 00aa FFF7FEFF 		bl	__aeabi_fsub
 763 00ae 2D90     		str	r0, [sp, #180]	@ float
 764 00b0 06A8     		add	r0, sp, #24
 765 00b2 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 766 00b6 29A8     		add	r0, sp, #164
 767 00b8 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 768 00bc 012D     		cmp	r5, #1
 769 00be CBD0     		beq	.L38
 770              	.L28:
 771 00c0 022D     		cmp	r5, #2
 772 00c2 56D1     		bne	.L30
 773 00c4 3A49     		ldr	r1, .L39
 774 00c6 3846     		mov	r0, r7
 775 00c8 FFF7FEFF 		bl	__aeabi_fadd
 776 00cc 03AC     		add	r4, sp, #12
 777 00ce 0346     		mov	r3, r0
 778 00d0 0094     		str	r4, [sp]
 779 00d2 06A8     		add	r0, sp, #24
 780 00d4 4146     		mov	r1, r8
 781 00d6 4A46     		mov	r2, r9
 782 00d8 FFF7FEFF 		bl	_ZNK15DeltaParameters16InverseTransformEfffPf
 783 00dc A668     		ldr	r6, [r4, #8]	@ float
 784              	.L31:
 785 00de 3449     		ldr	r1, .L39
 786 00e0 3846     		mov	r0, r7
 787 00e2 FFF7FEFF 		bl	__aeabi_fsub
 788 00e6 4A46     		mov	r2, r9
 789 00e8 0346     		mov	r3, r0
 790 00ea 4146     		mov	r1, r8
 791 00ec C8E7     		b	.L35
 792              	.L20:
 793 00ee 0998     		ldr	r0, [sp, #36]	@ float
 794 00f0 2F49     		ldr	r1, .L39
 795 00f2 FFF7FEFF 		bl	__aeabi_fadd
 796 00f6 2E49     		ldr	r1, .L39
 797 00f8 0990     		str	r0, [sp, #36]	@ float
 798 00fa 2C98     		ldr	r0, [sp, #176]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\ccilJR3x.s 			page 15


 799 00fc FFF7FEFF 		bl	__aeabi_fsub
 800 0100 2C90     		str	r0, [sp, #176]	@ float
 801 0102 06A8     		add	r0, sp, #24
 802 0104 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 803 0108 29A8     		add	r0, sp, #164
 804 010a FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 805 010e A1E7     		b	.L26
 806              	.L24:
 807 0110 0898     		ldr	r0, [sp, #32]	@ float
 808 0112 2749     		ldr	r1, .L39
 809 0114 FFF7FEFF 		bl	__aeabi_fadd
 810 0118 2549     		ldr	r1, .L39
 811 011a 0890     		str	r0, [sp, #32]	@ float
 812 011c 2B98     		ldr	r0, [sp, #172]	@ float
 813 011e FFF7FEFF 		bl	__aeabi_fsub
 814 0122 2B90     		str	r0, [sp, #172]	@ float
 815 0124 06A8     		add	r0, sp, #24
 816 0126 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 817 012a 29A8     		add	r0, sp, #164
 818 012c FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 819 0130 90E7     		b	.L26
 820              	.L19:
 821 0132 002D     		cmp	r5, #0
 822 0134 8ED1     		bne	.L26
 823 0136 1E49     		ldr	r1, .L39
 824 0138 4046     		mov	r0, r8
 825 013a FFF7FEFF 		bl	__aeabi_fadd
 826 013e 03AC     		add	r4, sp, #12
 827 0140 0146     		mov	r1, r0
 828 0142 0094     		str	r4, [sp]
 829 0144 06A8     		add	r0, sp, #24
 830 0146 4A46     		mov	r2, r9
 831 0148 3B46     		mov	r3, r7
 832 014a FFF7FEFF 		bl	_ZNK15DeltaParameters16InverseTransformEfffPf
 833              	.L27:
 834 014e A668     		ldr	r6, [r4, #8]	@ float
 835 0150 3DB9     		cbnz	r5, .L34
 836 0152 1749     		ldr	r1, .L39
 837 0154 4046     		mov	r0, r8
 838 0156 FFF7FEFF 		bl	__aeabi_fsub
 839 015a 4A46     		mov	r2, r9
 840 015c 0146     		mov	r1, r0
 841 015e 3B46     		mov	r3, r7
 842 0160 8EE7     		b	.L35
 843              	.L34:
 844 0162 012D     		cmp	r5, #1
 845 0164 85D0     		beq	.L29
 846 0166 022D     		cmp	r5, #2
 847 0168 B9D0     		beq	.L31
 848 016a 4A46     		mov	r2, r9
 849 016c 4146     		mov	r1, r8
 850 016e 3B46     		mov	r3, r7
 851 0170 86E7     		b	.L35
 852              	.L30:
 853 0172 03AC     		add	r4, sp, #12
 854 0174 06A8     		add	r0, sp, #24
 855 0176 0094     		str	r4, [sp]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccilJR3x.s 			page 16


 856 0178 4146     		mov	r1, r8
 857 017a 4A46     		mov	r2, r9
 858 017c 3B46     		mov	r3, r7
 859 017e FFF7FEFF 		bl	_ZNK15DeltaParameters16InverseTransformEfffPf
 860 0182 072D     		cmp	r5, #7
 861 0184 08D1     		bne	.L32
 862 0186 2068     		ldr	r0, [r4]
 863 0188 B16A     		ldr	r1, [r6, #40]	@ float
 864 018a 00F10040 		add	r0, r0, #-2147483648
 865 018e FFF7FEFF 		bl	__aeabi_fdiv
 866 0192 4DB0     		add	sp, sp, #308
 867              		@ sp needed
 868 0194 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 869              	.L32:
 870 0198 082D     		cmp	r5, #8
 871 019a D8D1     		bne	.L27
 872 019c 6068     		ldr	r0, [r4, #4]
 873 019e B16A     		ldr	r1, [r6, #40]	@ float
 874 01a0 00F10040 		add	r0, r0, #-2147483648
 875 01a4 FFF7FEFF 		bl	__aeabi_fdiv
 876 01a8 4DB0     		add	sp, sp, #308
 877              		@ sp needed
 878 01aa BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 879              	.L40:
 880 01ae 00BF     		.align	2
 881              	.L39:
 882 01b0 CDCC4C3E 		.word	1045220557
 883 01b4 CDCCCC3E 		.word	1053609165
 884              		.size	_ZN15DeltaParameters17ComputeDerivativeEjfff, .-_ZN15DeltaParameters17ComputeDerivativeEjfff
 885              		.section	.text._ZN15DeltaParameters6AdjustEjPKf,"ax",%progbits
 886              		.align	2
 887              		.global	_ZN15DeltaParameters6AdjustEjPKf
 888              		.thumb
 889              		.thumb_func
 890              		.type	_ZN15DeltaParameters6AdjustEjPKf, %function
 891              	_ZN15DeltaParameters6AdjustEjPKf:
 892              		@ args = 0, pretend = 0, frame = 8
 893              		@ frame_needed = 0, uses_anonymous_args = 0
 894 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 895 0004 836D     		ldr	r3, [r0, #88]	@ float
 896 0006 C669     		ldr	r6, [r0, #28]	@ float
 897 0008 83B0     		sub	sp, sp, #12
 898 000a 0446     		mov	r4, r0
 899 000c 8946     		mov	r9, r1
 900 000e 1846     		mov	r0, r3
 901 0010 3146     		mov	r1, r6
 902 0012 1546     		mov	r5, r2
 903 0014 0193     		str	r3, [sp, #4]
 904 0016 FFF7FEFF 		bl	__aeabi_fadd
 905 001a 2968     		ldr	r1, [r5]	@ float
 906 001c 8246     		mov	r10, r0
 907 001e 3046     		mov	r0, r6
 908 0020 FFF7FEFF 		bl	__aeabi_fadd
 909 0024 E061     		str	r0, [r4, #28]	@ float
 910 0026 6968     		ldr	r1, [r5, #4]	@ float
 911 0028 8046     		mov	r8, r0
 912 002a 206A     		ldr	r0, [r4, #32]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\ccilJR3x.s 			page 17


 913 002c FFF7FEFF 		bl	__aeabi_fadd
 914 0030 2062     		str	r0, [r4, #32]	@ float
 915 0032 A968     		ldr	r1, [r5, #8]	@ float
 916 0034 0746     		mov	r7, r0
 917 0036 606A     		ldr	r0, [r4, #36]	@ float
 918 0038 FFF7FEFF 		bl	__aeabi_fadd
 919 003c 3946     		mov	r1, r7
 920 003e 8346     		mov	fp, r0
 921 0040 4046     		mov	r0, r8
 922 0042 FFF7FEFF 		bl	__aeabi_fadd
 923 0046 0146     		mov	r1, r0
 924 0048 5846     		mov	r0, fp
 925 004a FFF7FEFF 		bl	__aeabi_fadd
 926 004e 4449     		ldr	r1, .L53
 927 0050 FFF7FEFF 		bl	__aeabi_fdiv
 928 0054 0646     		mov	r6, r0
 929 0056 3146     		mov	r1, r6
 930 0058 4046     		mov	r0, r8
 931 005a FFF7FEFF 		bl	__aeabi_fsub
 932 005e 3146     		mov	r1, r6
 933 0060 E061     		str	r0, [r4, #28]	@ float
 934 0062 8046     		mov	r8, r0
 935 0064 3846     		mov	r0, r7
 936 0066 FFF7FEFF 		bl	__aeabi_fsub
 937 006a 3146     		mov	r1, r6
 938 006c 2062     		str	r0, [r4, #32]	@ float
 939 006e 5846     		mov	r0, fp
 940 0070 FFF7FEFF 		bl	__aeabi_fsub
 941 0074 E16A     		ldr	r1, [r4, #44]	@ float
 942 0076 6062     		str	r0, [r4, #36]	@ float
 943 0078 3046     		mov	r0, r6
 944 007a FFF7FEFF 		bl	__aeabi_fadd
 945 007e 019B     		ldr	r3, [sp, #4]
 946 0080 0746     		mov	r7, r0
 947 0082 3146     		mov	r1, r6
 948 0084 1846     		mov	r0, r3
 949 0086 E762     		str	r7, [r4, #44]	@ float
 950 0088 FFF7FEFF 		bl	__aeabi_fadd
 951 008c B9F1030F 		cmp	r9, #3
 952 0090 A065     		str	r0, [r4, #88]	@ float
 953 0092 5CD9     		bls	.L49
 954 0094 E068     		ldr	r0, [r4, #12]	@ float
 955 0096 E968     		ldr	r1, [r5, #12]	@ float
 956 0098 FFF7FEFF 		bl	__aeabi_fadd
 957 009c B9F1050F 		cmp	r9, #5
 958 00a0 E060     		str	r0, [r4, #12]	@ float
 959 00a2 37D9     		bls	.L44
 960 00a4 2969     		ldr	r1, [r5, #16]	@ float
 961 00a6 2069     		ldr	r0, [r4, #16]	@ float
 962 00a8 FFF7FEFF 		bl	__aeabi_fadd
 963 00ac 2061     		str	r0, [r4, #16]	@ float
 964 00ae 6969     		ldr	r1, [r5, #20]	@ float
 965 00b0 6069     		ldr	r0, [r4, #20]	@ float
 966 00b2 FFF7FEFF 		bl	__aeabi_fadd
 967 00b6 B9F1070F 		cmp	r9, #7
 968 00ba 6061     		str	r0, [r4, #20]	@ float
 969 00bc 4AD0     		beq	.L45
ARM GAS  C:\Users\George\AppData\Local\Temp\ccilJR3x.s 			page 18


 970 00be B9F1090F 		cmp	r9, #9
 971 00c2 0FD0     		beq	.L52
 972 00c4 B9F1080F 		cmp	r9, #8
 973 00c8 24D1     		bne	.L44
 974 00ca A66A     		ldr	r6, [r4, #40]	@ float
 975 00cc A869     		ldr	r0, [r5, #24]	@ float
 976 00ce 3146     		mov	r1, r6
 977 00d0 FFF7FEFF 		bl	__aeabi_fdiv
 978 00d4 0146     		mov	r1, r0
 979 00d6 206B     		ldr	r0, [r4, #48]	@ float
 980 00d8 FFF7FEFF 		bl	__aeabi_fadd
 981 00dc 2063     		str	r0, [r4, #48]	@ float
 982 00de 3146     		mov	r1, r6
 983 00e0 E869     		ldr	r0, [r5, #28]	@ float
 984 00e2 10E0     		b	.L51
 985              	.L52:
 986 00e4 A969     		ldr	r1, [r5, #24]	@ float
 987 00e6 A068     		ldr	r0, [r4, #8]	@ float
 988 00e8 FFF7FEFF 		bl	__aeabi_fadd
 989 00ec A66A     		ldr	r6, [r4, #40]	@ float
 990 00ee A060     		str	r0, [r4, #8]	@ float
 991 00f0 E869     		ldr	r0, [r5, #28]	@ float
 992 00f2 3146     		mov	r1, r6
 993 00f4 FFF7FEFF 		bl	__aeabi_fdiv
 994 00f8 0146     		mov	r1, r0
 995 00fa 206B     		ldr	r0, [r4, #48]	@ float
 996 00fc FFF7FEFF 		bl	__aeabi_fadd
 997 0100 2063     		str	r0, [r4, #48]	@ float
 998 0102 286A     		ldr	r0, [r5, #32]	@ float
 999 0104 3146     		mov	r1, r6
 1000              	.L51:
 1001 0106 FFF7FEFF 		bl	__aeabi_fdiv
 1002 010a 0146     		mov	r1, r0
 1003 010c 606B     		ldr	r0, [r4, #52]	@ float
 1004 010e FFF7FEFF 		bl	__aeabi_fadd
 1005 0112 6063     		str	r0, [r4, #52]	@ float
 1006              	.L44:
 1007 0114 2046     		mov	r0, r4
 1008 0116 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 1009 011a E76A     		ldr	r7, [r4, #44]	@ float
 1010 011c A66D     		ldr	r6, [r4, #88]	@ float
 1011 011e E169     		ldr	r1, [r4, #28]	@ float
 1012              	.L42:
 1013 0120 3046     		mov	r0, r6
 1014 0122 FFF7FEFF 		bl	__aeabi_fadd
 1015 0126 5146     		mov	r1, r10
 1016 0128 FFF7FEFF 		bl	__aeabi_fsub
 1017 012c 2968     		ldr	r1, [r5]	@ float
 1018 012e FFF7FEFF 		bl	__aeabi_fsub
 1019 0132 0546     		mov	r5, r0
 1020 0134 2946     		mov	r1, r5
 1021 0136 3846     		mov	r0, r7
 1022 0138 FFF7FEFF 		bl	__aeabi_fsub
 1023 013c 2946     		mov	r1, r5
 1024 013e E062     		str	r0, [r4, #44]	@ float
 1025 0140 3046     		mov	r0, r6
 1026 0142 FFF7FEFF 		bl	__aeabi_fsub
ARM GAS  C:\Users\George\AppData\Local\Temp\ccilJR3x.s 			page 19


 1027 0146 A065     		str	r0, [r4, #88]	@ float
 1028 0148 03B0     		add	sp, sp, #12
 1029              		@ sp needed
 1030 014a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1031              	.L49:
 1032 014e 4146     		mov	r1, r8
 1033 0150 0646     		mov	r6, r0
 1034 0152 E5E7     		b	.L42
 1035              	.L45:
 1036 0154 A068     		ldr	r0, [r4, #8]	@ float
 1037 0156 A969     		ldr	r1, [r5, #24]	@ float
 1038 0158 FFF7FEFF 		bl	__aeabi_fadd
 1039 015c A060     		str	r0, [r4, #8]	@ float
 1040 015e D9E7     		b	.L44
 1041              	.L54:
 1042              		.align	2
 1043              	.L53:
 1044 0160 00004040 		.word	1077936128
 1045              		.size	_ZN15DeltaParameters6AdjustEjPKf, .-_ZN15DeltaParameters6AdjustEjPKf
 1046              		.section	.text._ZNK15DeltaParameters15PrintParametersER9StringRef,"ax",%progbits
 1047              		.align	2
 1048              		.global	_ZNK15DeltaParameters15PrintParametersER9StringRef
 1049              		.thumb
 1050              		.thumb_func
 1051              		.type	_ZNK15DeltaParameters15PrintParametersER9StringRef, %function
 1052              	_ZNK15DeltaParameters15PrintParametersER9StringRef:
 1053              		@ args = 0, pretend = 0, frame = 0
 1054              		@ frame_needed = 0, uses_anonymous_args = 0
 1055 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1056 0002 0646     		mov	r6, r0
 1057 0004 95B0     		sub	sp, sp, #84
 1058 0006 C069     		ldr	r0, [r0, #28]	@ float
 1059 0008 0F46     		mov	r7, r1
 1060 000a FFF7FEFF 		bl	__aeabi_f2d
 1061 000e 0446     		mov	r4, r0
 1062 0010 306A     		ldr	r0, [r6, #32]	@ float
 1063 0012 0D46     		mov	r5, r1
 1064 0014 FFF7FEFF 		bl	__aeabi_f2d
 1065 0018 CDE90001 		strd	r0, [sp]
 1066 001c 706A     		ldr	r0, [r6, #36]	@ float
 1067 001e FFF7FEFF 		bl	__aeabi_f2d
 1068 0022 CDE90201 		strd	r0, [sp, #8]
 1069 0026 F06A     		ldr	r0, [r6, #44]	@ float
 1070 0028 FFF7FEFF 		bl	__aeabi_f2d
 1071 002c CDE90401 		strd	r0, [sp, #16]
 1072 0030 B068     		ldr	r0, [r6, #8]	@ float
 1073 0032 FFF7FEFF 		bl	__aeabi_f2d
 1074 0036 CDE90601 		strd	r0, [sp, #24]
 1075 003a F068     		ldr	r0, [r6, #12]	@ float
 1076 003c FFF7FEFF 		bl	__aeabi_f2d
 1077 0040 CDE90801 		strd	r0, [sp, #32]
 1078 0044 3069     		ldr	r0, [r6, #16]	@ float
 1079 0046 FFF7FEFF 		bl	__aeabi_f2d
 1080 004a CDE90A01 		strd	r0, [sp, #40]
 1081 004e 7069     		ldr	r0, [r6, #20]	@ float
 1082 0050 FFF7FEFF 		bl	__aeabi_f2d
 1083 0054 CDE90C01 		strd	r0, [sp, #48]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccilJR3x.s 			page 20


 1084 0058 B069     		ldr	r0, [r6, #24]	@ float
 1085 005a FFF7FEFF 		bl	__aeabi_f2d
 1086 005e CDE90E01 		strd	r0, [sp, #56]
 1087 0062 306B     		ldr	r0, [r6, #48]	@ float
 1088 0064 FFF7FEFF 		bl	__aeabi_f2d
 1089 0068 0022     		movs	r2, #0
 1090 006a 0B4B     		ldr	r3, .L56
 1091 006c FFF7FEFF 		bl	__aeabi_dmul
 1092 0070 CDE91001 		strd	r0, [sp, #64]
 1093 0074 706B     		ldr	r0, [r6, #52]	@ float
 1094 0076 FFF7FEFF 		bl	__aeabi_f2d
 1095 007a 0022     		movs	r2, #0
 1096 007c 064B     		ldr	r3, .L56
 1097 007e FFF7FEFF 		bl	__aeabi_dmul
 1098 0082 2246     		mov	r2, r4
 1099 0084 CDE91201 		strd	r0, [sp, #72]
 1100 0088 2B46     		mov	r3, r5
 1101 008a 3846     		mov	r0, r7
 1102 008c 0349     		ldr	r1, .L56+4
 1103 008e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 1104 0092 15B0     		add	sp, sp, #84
 1105              		@ sp needed
 1106 0094 F0BD     		pop	{r4, r5, r6, r7, pc}
 1107              	.L57:
 1108 0096 00BF     		.align	2
 1109              	.L56:
 1110 0098 00005940 		.word	1079574528
 1111 009c 00000000 		.word	.LC0
 1112              		.size	_ZNK15DeltaParameters15PrintParametersER9StringRef, .-_ZNK15DeltaParameters15PrintParameters
 1113              		.section	.text._ZNK15DeltaParameters15WriteParametersEP9FileStore,"ax",%progbits
 1114              		.align	2
 1115              		.global	_ZNK15DeltaParameters15WriteParametersEP9FileStore
 1116              		.thumb
 1117              		.thumb_func
 1118              		.type	_ZNK15DeltaParameters15WriteParametersEP9FileStore, %function
 1119              	_ZNK15DeltaParameters15WriteParametersEP9FileStore:
 1120              		@ args = 0, pretend = 0, frame = 0
 1121              		@ frame_needed = 0, uses_anonymous_args = 0
 1122 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1123 0004 90F83830 		ldrb	r3, [r0, #56]	@ zero_extendqisi2
 1124 0008 8CB0     		sub	sp, sp, #48
 1125 000a 0646     		mov	r6, r0
 1126 000c 0F46     		mov	r7, r1
 1127 000e 1BB9     		cbnz	r3, .L66
 1128 0010 0120     		movs	r0, #1
 1129 0012 0CB0     		add	sp, sp, #48
 1130              		@ sp needed
 1131 0014 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1132              	.L66:
 1133 0018 0846     		mov	r0, r1
 1134 001a 3449     		ldr	r1, .L67
 1135 001c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1136 0020 18B9     		cbnz	r0, .L60
 1137              	.L61:
 1138 0022 0020     		movs	r0, #0
 1139 0024 0CB0     		add	sp, sp, #48
 1140              		@ sp needed
ARM GAS  C:\Users\George\AppData\Local\Temp\ccilJR3x.s 			page 21


 1141 0026 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1142              	.L60:
 1143 002a B068     		ldr	r0, [r6, #8]	@ float
 1144 002c FFF7FEFF 		bl	__aeabi_f2d
 1145 0030 0446     		mov	r4, r0
 1146 0032 F068     		ldr	r0, [r6, #12]	@ float
 1147 0034 0D46     		mov	r5, r1
 1148 0036 FFF7FEFF 		bl	__aeabi_f2d
 1149 003a CDE90001 		strd	r0, [sp]
 1150 003e F06A     		ldr	r0, [r6, #44]	@ float
 1151 0040 FFF7FEFF 		bl	__aeabi_f2d
 1152 0044 CDE90201 		strd	r0, [sp, #8]
 1153 0048 B06A     		ldr	r0, [r6, #40]	@ float
 1154 004a FFF7FEFF 		bl	__aeabi_f2d
 1155 004e CDE90401 		strd	r0, [sp, #16]
 1156 0052 3069     		ldr	r0, [r6, #16]	@ float
 1157 0054 FFF7FEFF 		bl	__aeabi_f2d
 1158 0058 CDE90601 		strd	r0, [sp, #24]
 1159 005c 7069     		ldr	r0, [r6, #20]	@ float
 1160 005e FFF7FEFF 		bl	__aeabi_f2d
 1161 0062 CDE90801 		strd	r0, [sp, #32]
 1162 0066 B069     		ldr	r0, [r6, #24]	@ float
 1163 0068 FFF7FEFF 		bl	__aeabi_f2d
 1164 006c DFF88C80 		ldr	r8, .L67+16
 1165 0070 CDE90A01 		strd	r0, [sp, #40]
 1166 0074 2246     		mov	r2, r4
 1167 0076 1E49     		ldr	r1, .L67+4
 1168 0078 2B46     		mov	r3, r5
 1169 007a 4046     		mov	r0, r8
 1170 007c FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 1171 0080 3846     		mov	r0, r7
 1172 0082 D8F80010 		ldr	r1, [r8]
 1173 0086 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1174 008a 0028     		cmp	r0, #0
 1175 008c C9D0     		beq	.L61
 1176 008e F069     		ldr	r0, [r6, #28]	@ float
 1177 0090 FFF7FEFF 		bl	__aeabi_f2d
 1178 0094 0446     		mov	r4, r0
 1179 0096 306A     		ldr	r0, [r6, #32]	@ float
 1180 0098 0D46     		mov	r5, r1
 1181 009a FFF7FEFF 		bl	__aeabi_f2d
 1182 009e CDE90001 		strd	r0, [sp]
 1183 00a2 706A     		ldr	r0, [r6, #36]	@ float
 1184 00a4 FFF7FEFF 		bl	__aeabi_f2d
 1185 00a8 CDE90201 		strd	r0, [sp, #8]
 1186 00ac 306B     		ldr	r0, [r6, #48]	@ float
 1187 00ae FFF7FEFF 		bl	__aeabi_f2d
 1188 00b2 0022     		movs	r2, #0
 1189 00b4 0F4B     		ldr	r3, .L67+8
 1190 00b6 FFF7FEFF 		bl	__aeabi_dmul
 1191 00ba CDE90401 		strd	r0, [sp, #16]
 1192 00be 706B     		ldr	r0, [r6, #52]	@ float
 1193 00c0 FFF7FEFF 		bl	__aeabi_f2d
 1194 00c4 0022     		movs	r2, #0
 1195 00c6 0B4B     		ldr	r3, .L67+8
 1196 00c8 FFF7FEFF 		bl	__aeabi_dmul
 1197 00cc 2246     		mov	r2, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccilJR3x.s 			page 22


 1198 00ce CDE90601 		strd	r0, [sp, #24]
 1199 00d2 2B46     		mov	r3, r5
 1200 00d4 4046     		mov	r0, r8
 1201 00d6 0849     		ldr	r1, .L67+12
 1202 00d8 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 1203 00dc D8F80010 		ldr	r1, [r8]
 1204 00e0 3846     		mov	r0, r7
 1205 00e2 0CB0     		add	sp, sp, #48
 1206              		@ sp needed
 1207 00e4 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 1208 00e8 FFF7FEBF 		b	_ZN9FileStore5WriteEPKc
 1209              	.L68:
 1210              		.align	2
 1211              	.L67:
 1212 00ec 7C000000 		.word	.LC1
 1213 00f0 90000000 		.word	.LC2
 1214 00f4 00005940 		.word	1079574528
 1215 00f8 C0000000 		.word	.LC3
 1216 00fc 00000000 		.word	scratchString
 1217              		.size	_ZNK15DeltaParameters15WriteParametersEP9FileStore, .-_ZNK15DeltaParameters15WriteParameters
 1218              		.section	.rodata.str1.4,"aMS",%progbits,1
 1219              		.align	2
 1220              	.LC0:
 1221 0000 53746F70 		.ascii	"Stops X%.3f Y%.3f Z%.3f height %.3f diagonal %.3f r"
 1221      73205825 
 1221      2E336620 
 1221      59252E33 
 1221      66205A25 
 1222 0033 61646975 		.ascii	"adius %.3f xcorr %.2f ycorr %.2f zcorr %.2f xtilt %"
 1222      7320252E 
 1222      33662078 
 1222      636F7272 
 1222      20252E32 
 1223 0066 2E336625 		.ascii	".3f%% ytilt %.3f%%\012\000"
 1223      25207974 
 1223      696C7420 
 1223      252E3366 
 1223      25250A00 
 1224 007a 0000     		.space	2
 1225              	.LC1:
 1226 007c 3B204465 		.ascii	"; Delta parameters\012\000"
 1226      6C746120 
 1226      70617261 
 1226      6D657465 
 1226      72730A00 
 1227              	.LC2:
 1228 0090 4D363635 		.ascii	"M665 L%.3f R%.3f H%.3f B%.1f X%.3f Y%.3f Z%.3f\012\000"
 1228      204C252E 
 1228      33662052 
 1228      252E3366 
 1228      2048252E 
 1229              	.LC3:
 1230 00c0 4D363636 		.ascii	"M666 X%.3f Y%.3f Z%.3f A%.2f B%.2f\012\000"
 1230      2058252E 
 1230      33662059 
 1230      252E3366 
 1230      205A252E 
ARM GAS  C:\Users\George\AppData\Local\Temp\ccilJR3x.s 			page 23


 1231              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1232              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1233              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1234              	_ZL28cpu_irq_prev_interrupt_state:
 1235 0000 00       		.space	1
 1236              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1237              		.align	2
 1238              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1239              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1240              	_ZL32cpu_irq_critical_section_counter:
 1241 0000 00000000 		.space	4
 1242              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
