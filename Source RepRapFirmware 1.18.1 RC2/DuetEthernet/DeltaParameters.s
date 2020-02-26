ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0w4RH9.s 			page 1


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
  15              		.file	"DeltaParameters.cpp"
  16              		.section	.text._ZN15DeltaParameters4InitEv,"ax",%progbits
  17              		.align	2
  18              		.global	_ZN15DeltaParameters4InitEv
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN15DeltaParameters4InitEv, %function
  22              	_ZN15DeltaParameters4InitEv:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 0C4A     		ldr	r2, .L2
  27 0002 0D49     		ldr	r1, .L2+4
  28 0004 8262     		str	r2, [r0, #40]	@ float
  29 0006 0023     		movs	r3, #0
  30 0008 0022     		movs	r2, #0
  31 000a 80F83820 		strb	r2, [r0, #56]
  32 000e C162     		str	r1, [r0, #44]	@ float
  33 0010 8360     		str	r3, [r0, #8]	@ float
  34 0012 C360     		str	r3, [r0, #12]	@ float
  35 0014 8361     		str	r3, [r0, #24]	@ float
  36 0016 4361     		str	r3, [r0, #20]	@ float
  37 0018 0361     		str	r3, [r0, #16]	@ float
  38 001a 4363     		str	r3, [r0, #52]	@ float
  39 001c 0363     		str	r3, [r0, #48]	@ float
  40 001e C361     		str	r3, [r0, #28]	@ float
  41 0020 8364     		str	r3, [r0, #72]	@ float
  42 0022 C363     		str	r3, [r0, #60]	@ float
  43 0024 0362     		str	r3, [r0, #32]	@ float
  44 0026 C364     		str	r3, [r0, #76]	@ float
  45 0028 0364     		str	r3, [r0, #64]	@ float
  46 002a 4362     		str	r3, [r0, #36]	@ float
  47 002c 0365     		str	r3, [r0, #80]	@ float
  48 002e 4364     		str	r3, [r0, #68]	@ float
  49 0030 7047     		bx	lr
  50              	.L3:
  51 0032 00BF     		.align	2
  52              	.L2:
  53 0034 00004842 		.word	1112014848
  54 0038 00004843 		.word	1128792064
  55              		.size	_ZN15DeltaParameters4InitEv, .-_ZN15DeltaParameters4InitEv
  56              		.section	.text._ZN15DeltaParameters27NormaliseEndstopAdjustmentsEv,"ax",%progbits
  57              		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0w4RH9.s 			page 2


  58              		.global	_ZN15DeltaParameters27NormaliseEndstopAdjustmentsEv
  59              		.thumb
  60              		.thumb_func
  61              		.type	_ZN15DeltaParameters27NormaliseEndstopAdjustmentsEv, %function
  62              	_ZN15DeltaParameters27NormaliseEndstopAdjustmentsEv:
  63              		@ args = 0, pretend = 0, frame = 0
  64              		@ frame_needed = 0, uses_anonymous_args = 0
  65              		@ link register save eliminated.
  66 0000 90ED076A 		flds	s12, [r0, #28]
  67 0004 D0ED086A 		flds	s13, [r0, #32]
  68 0008 90ED097A 		flds	s14, [r0, #36]
  69 000c D0ED0B5A 		flds	s11, [r0, #44]
  70 0010 90ED165A 		flds	s10, [r0, #88]
  71 0014 76EE267A 		fadds	s15, s12, s13
  72 0018 F0EE084A 		fconsts	s9, #8
  73 001c 77EE877A 		fadds	s15, s15, s14
  74 0020 C7EEA47A 		fdivs	s15, s15, s9
  75 0024 36EE676A 		fsubs	s12, s12, s15
  76 0028 76EEE76A 		fsubs	s13, s13, s15
  77 002c 37EE677A 		fsubs	s14, s14, s15
  78 0030 75EEA75A 		fadds	s11, s11, s15
  79 0034 75EE277A 		fadds	s15, s10, s15
  80 0038 80ED076A 		fsts	s12, [r0, #28]
  81 003c C0ED086A 		fsts	s13, [r0, #32]
  82 0040 80ED097A 		fsts	s14, [r0, #36]
  83 0044 C0ED0B5A 		fsts	s11, [r0, #44]
  84 0048 C0ED167A 		fsts	s15, [r0, #88]
  85 004c 7047     		bx	lr
  86              		.size	_ZN15DeltaParameters27NormaliseEndstopAdjustmentsEv, .-_ZN15DeltaParameters27NormaliseEndsto
  87              		.global	__aeabi_f2d
  88              		.global	__aeabi_dadd
  89              		.global	__aeabi_d2f
  90 004e 00BF     		.section	.text._ZNK15DeltaParameters9TransformEPKfj,"ax",%progbits
  91              		.align	2
  92              		.global	_ZNK15DeltaParameters9TransformEPKfj
  93              		.thumb
  94              		.thumb_func
  95              		.type	_ZNK15DeltaParameters9TransformEPKfj, %function
  96              	_ZNK15DeltaParameters9TransformEPKfj:
  97              		@ args = 0, pretend = 0, frame = 0
  98              		@ frame_needed = 0, uses_anonymous_args = 0
  99 0000 00EB8202 		add	r2, r0, r2, lsl #2
 100 0004 D1ED005A 		flds	s11, [r1]
 101 0008 D2ED0F6A 		flds	s13, [r2, #60]
 102 000c D0ED227A 		flds	s15, [r0, #136]
 103 0010 91ED016A 		flds	s12, [r1, #4]
 104 0014 92ED127A 		flds	s14, [r2, #72]
 105 0018 75EEE66A 		fsubs	s13, s11, s13
 106 001c 36EE477A 		fsubs	s14, s12, s14
 107 0020 E6EEE67A 		vfms.f32	s15, s13, s13
 108 0024 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 109 0026 E7EE477A 		vfms.f32	s15, s14, s14
 110 002a 0746     		mov	r7, r0
 111 002c 0E46     		mov	r6, r1
 112 002e 17EE900A 		fmrs	r0, s15
 113 0032 FFF7FEFF 		bl	__aeabi_f2d
 114 0036 FFF7FEFF 		bl	sqrt
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0w4RH9.s 			page 3


 115 003a 0446     		mov	r4, r0
 116 003c B068     		ldr	r0, [r6, #8]	@ float
 117 003e 0D46     		mov	r5, r1
 118 0040 FFF7FEFF 		bl	__aeabi_f2d
 119 0044 0246     		mov	r2, r0
 120 0046 0B46     		mov	r3, r1
 121 0048 2046     		mov	r0, r4
 122 004a 2946     		mov	r1, r5
 123 004c FFF7FEFF 		bl	__aeabi_dadd
 124 0050 96ED007A 		flds	s14, [r6]
 125 0054 D7ED0C7A 		flds	s15, [r7, #48]
 126 0058 67EE277A 		fmuls	s15, s14, s15
 127 005c 0446     		mov	r4, r0
 128 005e 17EE900A 		fmrs	r0, s15
 129 0062 0D46     		mov	r5, r1
 130 0064 FFF7FEFF 		bl	__aeabi_f2d
 131 0068 0246     		mov	r2, r0
 132 006a 0B46     		mov	r3, r1
 133 006c 2046     		mov	r0, r4
 134 006e 2946     		mov	r1, r5
 135 0070 FFF7FEFF 		bl	__aeabi_dadd
 136 0074 96ED017A 		flds	s14, [r6, #4]
 137 0078 D7ED0D7A 		flds	s15, [r7, #52]
 138 007c 67EE277A 		fmuls	s15, s14, s15
 139 0080 0446     		mov	r4, r0
 140 0082 17EE900A 		fmrs	r0, s15
 141 0086 0D46     		mov	r5, r1
 142 0088 FFF7FEFF 		bl	__aeabi_f2d
 143 008c 0246     		mov	r2, r0
 144 008e 0B46     		mov	r3, r1
 145 0090 2046     		mov	r0, r4
 146 0092 2946     		mov	r1, r5
 147 0094 FFF7FEFF 		bl	__aeabi_dadd
 148 0098 FFF7FEFF 		bl	__aeabi_d2f
 149 009c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 150              		.size	_ZNK15DeltaParameters9TransformEPKfj, .-_ZNK15DeltaParameters9TransformEPKfj
 151 009e 00BF     		.section	.text._ZNK15DeltaParameters16InverseTransformEfffPf,"ax",%progbits
 152              		.align	2
 153              		.global	_ZNK15DeltaParameters16InverseTransformEfffPf
 154              		.thumb
 155              		.thumb_func
 156              		.type	_ZNK15DeltaParameters16InverseTransformEfffPf, %function
 157              	_ZNK15DeltaParameters16InverseTransformEfffPf:
 158              		@ args = 4, pretend = 0, frame = 0
 159              		@ frame_needed = 0, uses_anonymous_args = 0
 160 0000 38B5     		push	{r3, r4, r5, lr}
 161 0002 07EE102A 		fmsr	s14, r2
 162 0006 90ED1E4A 		flds	s8, [r0, #120]
 163 000a D0ED1D4A 		flds	s9, [r0, #116]
 164 000e 90ED170A 		flds	s0, [r0, #92]
 165 0012 D0ED1A0A 		flds	s1, [r0, #104]
 166 0016 D0ED1F5A 		flds	s11, [r0, #124]
 167 001a 90ED191A 		flds	s2, [r0, #100]
 168 001e D0ED1C1A 		flds	s3, [r0, #112]
 169 0022 90ED206A 		flds	s12, [r0, #128]
 170 0026 D0ED122A 		flds	s5, [r0, #72]
 171 002a 90ED0F2A 		flds	s4, [r0, #60]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0w4RH9.s 			page 4


 172 002e D0ED213A 		flds	s7, [r0, #132]
 173 0032 90ED223A 		flds	s6, [r0, #136]
 174 0036 2DED068B 		fstmfdd	sp!, {d8, d9, d10}
 175 003a 07EE901A 		fmsr	s15, r1
 176 003e A7EE074A 		vfma.f32	s8, s14, s14
 177 0042 0446     		mov	r4, r0
 178 0044 0A9D     		ldr	r5, [sp, #40]
 179 0046 D0ED188A 		flds	s17, [r0, #96]
 180 004a 90ED1B9A 		flds	s18, [r0, #108]
 181 004e 67EE286A 		fmuls	s13, s14, s17
 182 0052 E7EEA74A 		vfma.f32	s9, s15, s15
 183 0056 05EE103A 		fmsr	s10, r3
 184 005a E7EE806A 		vfma.f32	s13, s15, s0
 185 005e 27EE097A 		fmuls	s14, s14, s18
 186 0062 68EE848A 		fmuls	s17, s17, s8
 187 0066 E5EE055A 		vfma.f32	s11, s10, s10
 188 006a A7EEA07A 		vfma.f32	s14, s15, s1
 189 006e E0EE248A 		vfma.f32	s17, s0, s9
 190 0072 29EE049A 		fmuls	s18, s18, s8
 191 0076 E5EE016A 		vfma.f32	s13, s10, s2
 192 007a A0EEA49A 		vfma.f32	s18, s1, s9
 193 007e E1EE258A 		vfma.f32	s17, s2, s11
 194 0082 A5EE217A 		vfma.f32	s14, s10, s3
 195 0086 76EEA69A 		fadds	s19, s13, s13
 196 008a A1EEA59A 		vfma.f32	s18, s3, s11
 197 008e 37EE07AA 		fadds	s20, s14, s14
 198 0092 28EEA98A 		fmuls	s16, s17, s19
 199 0096 F1EE466A 		fnegs	s13, s12
 200 009a B0EE687A 		fcpys	s14, s17
 201 009e A6EEA27A 		vfma.f32	s14, s13, s5
 202 00a2 A9EE0A8A 		vfma.f32	s16, s18, s20
 203 00a6 F0EE495A 		fcpys	s11, s18
 204 00aa E2EE065A 		vfma.f32	s11, s4, s12
 205 00ae A7EEA38A 		vfma.f32	s16, s15, s7
 206 00b2 27EE077A 		fmuls	s14, s14, s14
 207 00b6 97EEA73A 		vfnms.f32	s6, s15, s15
 208 00ba 22EE0A2A 		fmuls	s4, s4, s20
 209 00be A5EEA57A 		vfma.f32	s14, s11, s11
 210 00c2 6AEE0A7A 		fmuls	s15, s20, s20
 211 00c6 A2EE068A 		vfma.f32	s16, s4, s12
 212 00ca E9EEA97A 		vfma.f32	s15, s19, s19
 213 00ce 62EEA92A 		fmuls	s5, s5, s19
 214 00d2 A3EE837A 		vfma.f32	s14, s7, s6
 215 00d6 77EEA3AA 		fadds	s21, s15, s7
 216 00da A6EEA28A 		vfma.f32	s16, s13, s5
 217 00de 27EE6A7A 		fnmuls	s14, s14, s21
 218 00e2 A8EE087A 		vfma.f32	s14, s16, s16
 219 00e6 F1EEC77A 		fsqrts	s15, s14
 220 00ea F4EE677A 		fcmps	s15, s15
 221 00ee F1EE10FA 		fmstat
 222 00f2 20D1     		bne	.L9
 223              	.L7:
 224 00f4 78EE677A 		fsubs	s15, s16, s15
 225 00f8 C7EEAA7A 		fdivs	s15, s15, s21
 226 00fc 9AEE279A 		vfnms.f32	s18, s20, s15
 227 0100 E9EEE78A 		vfms.f32	s17, s19, s15
 228 0104 89EE066A 		fdivs	s12, s18, s12
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0w4RH9.s 			page 5


 229 0108 85ED006A 		fsts	s12, [r5]
 230 010c 94ED207A 		flds	s14, [r4, #128]
 231 0110 C8EE878A 		fdivs	s17, s17, s14
 232 0114 C5ED018A 		fsts	s17, [r5, #4]
 233 0118 D4ED0D6A 		flds	s13, [r4, #52]
 234 011c 94ED0C7A 		flds	s14, [r4, #48]
 235 0120 68EEA68A 		fmuls	s17, s17, s13
 236 0124 E6EE078A 		vfma.f32	s17, s12, s14
 237 0128 77EEE88A 		fsubs	s17, s15, s17
 238 012c C5ED028A 		fsts	s17, [r5, #8]
 239 0130 BDEC068B 		fldmfdd	sp!, {d8-d10}
 240 0134 38BD     		pop	{r3, r4, r5, pc}
 241              	.L9:
 242 0136 17EE100A 		fmrs	r0, s14
 243 013a FFF7FEFF 		bl	sqrtf
 244 013e 94ED206A 		flds	s12, [r4, #128]
 245 0142 07EE900A 		fmsr	s15, r0
 246 0146 D5E7     		b	.L7
 247              		.size	_ZNK15DeltaParameters16InverseTransformEfffPf, .-_ZNK15DeltaParameters16InverseTransformEfff
 248              		.global	__aeabi_dmul
 249              		.section	.text._ZN15DeltaParameters6RecalcEv,"ax",%progbits
 250              		.align	2
 251              		.global	_ZN15DeltaParameters6RecalcEv
 252              		.thumb
 253              		.thumb_func
 254              		.type	_ZN15DeltaParameters6RecalcEv, %function
 255              	_ZN15DeltaParameters6RecalcEv:
 256              		@ args = 0, pretend = 0, frame = 16
 257              		@ frame_needed = 0, uses_anonymous_args = 0
 258 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 259 0004 D0ED037A 		flds	s15, [r0, #12]
 260 0008 2DED0A8B 		fstmfdd	sp!, {d8, d9, d10, d11, d12}
 261 000c F5EEC07A 		fcmpezs	s15
 262 0010 F1EE10FA 		fmstat
 263 0014 86B0     		sub	sp, sp, #24
 264 0016 8046     		mov	r8, r0
 265 0018 06DD     		ble	.L11
 266 001a 90ED028A 		flds	s16, [r0, #8]
 267 001e F4EEC87A 		fcmpes	s15, s16
 268 0022 F1EE10FA 		fmstat
 269 0026 07D4     		bmi	.L13
 270              	.L11:
 271 0028 0023     		movs	r3, #0
 272 002a 88F83830 		strb	r3, [r8, #56]
 273 002e 06B0     		add	sp, sp, #24
 274              		@ sp needed
 275 0030 BDEC0A8B 		fldmfdd	sp!, {d8-d12}
 276 0034 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 277              	.L13:
 278 0038 0123     		movs	r3, #1
 279 003a 80F83830 		strb	r3, [r0, #56]
 280 003e 17EE900A 		fmrs	r0, s15
 281 0042 FFF7FEFF 		bl	__aeabi_f2d
 282 0046 D8ED047A 		flds	s15, [r8, #16]
 283 004a 98ED009A 		flds	s18, [r8]
 284 004e F3EE0E8A 		fconsts	s17, #62
 285 0052 77EEA87A 		fadds	s15, s15, s17
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0w4RH9.s 			page 6


 286 0056 0446     		mov	r4, r0
 287 0058 67EE897A 		fmuls	s15, s15, s18
 288 005c 0D46     		mov	r5, r1
 289 005e 17EE900A 		fmrs	r0, s15
 290 0062 FFF7FEFF 		bl	__aeabi_f2d
 291 0066 0646     		mov	r6, r0
 292 0068 0F46     		mov	r7, r1
 293 006a FFF7FEFF 		bl	cos
 294 006e 0246     		mov	r2, r0
 295 0070 0B46     		mov	r3, r1
 296 0072 2046     		mov	r0, r4
 297 0074 2946     		mov	r1, r5
 298 0076 FFF7FEFF 		bl	__aeabi_dmul
 299 007a FFF7FEFF 		bl	__aeabi_d2f
 300 007e 0BEE900A 		fmsr	s23, r0
 301 0082 F1EE6BAA 		fnegs	s21, s23
 302 0086 3046     		mov	r0, r6
 303 0088 3946     		mov	r1, r7
 304 008a C8ED0FAA 		fsts	s21, [r8, #60]
 305 008e FFF7FEFF 		bl	sin
 306 0092 0246     		mov	r2, r0
 307 0094 0B46     		mov	r3, r1
 308 0096 2046     		mov	r0, r4
 309 0098 2946     		mov	r1, r5
 310 009a FFF7FEFF 		bl	__aeabi_dmul
 311 009e FFF7FEFF 		bl	__aeabi_d2f
 312 00a2 D8ED057A 		flds	s15, [r8, #20]
 313 00a6 78EEE78A 		fsubs	s17, s17, s15
 314 00aa 0CEE100A 		fmsr	s24, r0
 315 00ae 69EE288A 		fmuls	s17, s18, s17
 316 00b2 F1EE4C9A 		fnegs	s19, s24
 317 00b6 C8ED129A 		fsts	s19, [r8, #72]
 318 00ba 18EE900A 		fmrs	r0, s17
 319 00be FFF7FEFF 		bl	__aeabi_f2d
 320 00c2 0646     		mov	r6, r0
 321 00c4 0F46     		mov	r7, r1
 322 00c6 FFF7FEFF 		bl	cos
 323 00ca 0246     		mov	r2, r0
 324 00cc 0B46     		mov	r3, r1
 325 00ce 2046     		mov	r0, r4
 326 00d0 2946     		mov	r1, r5
 327 00d2 FFF7FEFF 		bl	__aeabi_dmul
 328 00d6 FFF7FEFF 		bl	__aeabi_d2f
 329 00da 08EE900A 		fmsr	s17, r0
 330 00de 3946     		mov	r1, r7
 331 00e0 C8ED108A 		fsts	s17, [r8, #64]
 332 00e4 3046     		mov	r0, r6
 333 00e6 FFF7FEFF 		bl	sin
 334 00ea 0246     		mov	r2, r0
 335 00ec 0B46     		mov	r3, r1
 336 00ee 2046     		mov	r0, r4
 337 00f0 2946     		mov	r1, r5
 338 00f2 FFF7FEFF 		bl	__aeabi_dmul
 339 00f6 FFF7FEFF 		bl	__aeabi_d2f
 340 00fa D8ED067A 		flds	s15, [r8, #24]
 341 00fe 0AEE100A 		fmsr	s20, r0
 342 0102 69EE277A 		fmuls	s15, s18, s15
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0w4RH9.s 			page 7


 343 0106 B1EE4ABA 		fnegs	s22, s20
 344 010a 17EE900A 		fmrs	r0, s15
 345 010e 88ED13BA 		fsts	s22, [r8, #76]
 346 0112 FFF7FEFF 		bl	__aeabi_f2d
 347 0116 0646     		mov	r6, r0
 348 0118 0F46     		mov	r7, r1
 349 011a FFF7FEFF 		bl	sin
 350 011e 0246     		mov	r2, r0
 351 0120 0B46     		mov	r3, r1
 352 0122 2046     		mov	r0, r4
 353 0124 2946     		mov	r1, r5
 354 0126 FFF7FEFF 		bl	__aeabi_dmul
 355 012a FFF7FEFF 		bl	__aeabi_d2f
 356 012e 0CEE900A 		fmsr	s25, r0
 357 0132 B1EE6C9A 		fnegs	s18, s25
 358 0136 3046     		mov	r0, r6
 359 0138 3946     		mov	r1, r7
 360 013a 88ED119A 		fsts	s18, [r8, #68]
 361 013e FFF7FEFF 		bl	cos
 362 0142 0246     		mov	r2, r0
 363 0144 0B46     		mov	r3, r1
 364 0146 2046     		mov	r0, r4
 365 0148 2946     		mov	r1, r5
 366 014a FFF7FEFF 		bl	__aeabi_dmul
 367 014e FFF7FEFF 		bl	__aeabi_d2f
 368 0152 07EE900A 		fmsr	s15, r0
 369 0156 7BEEA85A 		fadds	s11, s23, s17
 370 015a 39EEE76A 		fsubs	s12, s19, s15
 371 015e 3CEE4ACA 		fsubs	s24, s24, s20
 372 0162 7CEEEBBA 		fsubs	s23, s25, s23
 373 0166 26EE657A 		fnmuls	s14, s12, s11
 374 016a 67EEA76A 		fmuls	s13, s15, s15
 375 016e ABEE8C7A 		vfma.f32	s14, s23, s24
 376 0172 03AB     		add	r3, sp, #12
 377 0174 4046     		mov	r0, r8
 378 0176 2BEE0BBA 		fmuls	s22, s22, s22
 379 017a 69EEA99A 		fmuls	s19, s19, s19
 380 017e 37EE077A 		fadds	s14, s14, s14
 381 0182 A8EEA8BA 		vfma.f32	s22, s17, s17
 382 0186 E9EE096A 		vfma.f32	s13, s18, s18
 383 018a EAEEAA9A 		vfma.f32	s19, s21, s21
 384 018e 3AEE27AA 		fadds	s20, s20, s15
 385 0192 67EE074A 		fmuls	s9, s14, s14
 386 0196 28EE085A 		fmuls	s10, s16, s16
 387 019a 79EE688A 		fsubs	s17, s18, s17
 388 019e C8ED147A 		fsts	s15, [r8, #80]
 389 01a2 C8ED195A 		fsts	s11, [r8, #100]
 390 01a6 88ED1B6A 		fsts	s12, [r8, #108]
 391 01aa 18EE101A 		fmrs	r1, s16
 392 01ae 18EE102A 		fmrs	r2, s16
 393 01b2 C8ED178A 		fsts	s17, [r8, #92]
 394 01b6 C8ED18BA 		fsts	s23, [r8, #96]
 395 01ba 88ED1CCA 		fsts	s24, [r8, #112]
 396 01be 88ED1AAA 		fsts	s20, [r8, #104]
 397 01c2 C8ED1D9A 		fsts	s19, [r8, #116]
 398 01c6 88ED207A 		fsts	s14, [r8, #128]
 399 01ca C8ED214A 		fsts	s9, [r8, #132]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0w4RH9.s 			page 8


 400 01ce 88ED1EBA 		fsts	s22, [r8, #120]
 401 01d2 C8ED1F6A 		fsts	s13, [r8, #124]
 402 01d6 88ED225A 		fsts	s10, [r8, #136]
 403 01da 0093     		str	r3, [sp]
 404 01dc 18EE103A 		fmrs	r3, s16
 405 01e0 FFF7FEFF 		bl	_ZNK15DeltaParameters16InverseTransformEfffPf
 406 01e4 98ED0B7A 		flds	s14, [r8, #44]
 407 01e8 DDED057A 		flds	s15, [sp, #20]
 408 01ec 38EE078A 		fadds	s16, s16, s14
 409 01f0 38EE678A 		fsubs	s16, s16, s15
 410 01f4 88ED168A 		fsts	s16, [r8, #88]
 411 01f8 06B0     		add	sp, sp, #24
 412              		@ sp needed
 413 01fa BDEC0A8B 		fldmfdd	sp!, {d8-d12}
 414 01fe BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 415              		.size	_ZN15DeltaParameters6RecalcEv, .-_ZN15DeltaParameters6RecalcEv
 416              		.global	__aeabi_dsub
 417              		.global	__aeabi_ddiv
 418 0202 00BF     		.section	.text._ZN15DeltaParameters17ComputeDerivativeEjfff,"ax",%progbits
 419              		.align	2
 420              		.global	_ZN15DeltaParameters17ComputeDerivativeEjfff
 421              		.thumb
 422              		.thumb_func
 423              		.type	_ZN15DeltaParameters17ComputeDerivativeEjfff, %function
 424              	_ZN15DeltaParameters17ComputeDerivativeEjfff:
 425              		@ args = 4, pretend = 0, frame = 296
 426              		@ frame_needed = 0, uses_anonymous_args = 0
 427 0000 70B5     		push	{r4, r5, r6, lr}
 428 0002 2DED048B 		fstmfdd	sp!, {d8, d9}
 429 0006 0546     		mov	r5, r0
 430 0008 CCB0     		sub	sp, sp, #304
 431 000a 0C46     		mov	r4, r1
 432 000c 06A8     		add	r0, sp, #24
 433 000e 2946     		mov	r1, r5
 434 0010 08EE902A 		fmsr	s17, r2
 435 0014 8C22     		movs	r2, #140
 436 0016 09EE103A 		fmsr	s18, r3
 437 001a 9DED548A 		flds	s16, [sp, #336]
 438 001e FFF7FEFF 		bl	memcpy
 439 0022 2946     		mov	r1, r5
 440 0024 29A8     		add	r0, sp, #164
 441 0026 8C22     		movs	r2, #140
 442 0028 FFF7FEFF 		bl	memcpy
 443 002c E31E     		subs	r3, r4, #3
 444 002e 032B     		cmp	r3, #3
 445 0030 00F2A680 		bhi	.L17
 446 0034 DFE803F0 		tbb	[pc, r3]
 447              	.L19:
 448 0038 7A       		.byte	(.L18-.L19)/2
 449 0039 4D       		.byte	(.L20-.L19)/2
 450 003a 02       		.byte	(.L21-.L19)/2
 451 003b 8F       		.byte	(.L22-.L19)/2
 452              		.align	1
 453              	.L21:
 454 003c 9DED0B7A 		flds	s14, [sp, #44]
 455 0040 DDED2E6A 		flds	s13, [sp, #184]
 456 0044 DFED727A 		flds	s15, .L38+8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0w4RH9.s 			page 9


 457 0048 37EE277A 		fadds	s14, s14, s15
 458 004c 76EEE77A 		fsubs	s15, s13, s15
 459 0050 06A8     		add	r0, sp, #24
 460 0052 8DED0B7A 		fsts	s14, [sp, #44]
 461 0056 CDED2E7A 		fsts	s15, [sp, #184]
 462 005a FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 463 005e 29A8     		add	r0, sp, #164
 464 0060 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 465              	.L24:
 466 0064 012C     		cmp	r4, #1
 467 0066 4AD1     		bne	.L26
 468              	.L37:
 469 0068 DFED697A 		flds	s15, .L38+8
 470 006c 79EE277A 		fadds	s15, s18, s15
 471 0070 03AE     		add	r6, sp, #12
 472 0072 06A8     		add	r0, sp, #24
 473 0074 17EE902A 		fmrs	r2, s15
 474 0078 0096     		str	r6, [sp]
 475 007a 18EE901A 		fmrs	r1, s17
 476 007e 18EE103A 		fmrs	r3, s16
 477 0082 FFF7FEFF 		bl	_ZNK15DeltaParameters16InverseTransformEfffPf
 478 0086 B568     		ldr	r5, [r6, #8]	@ float
 479              	.L27:
 480 0088 DFED617A 		flds	s15, .L38+8
 481 008c 39EE679A 		fsubs	s18, s18, s15
 482              	.L33:
 483 0090 19EE102A 		fmrs	r2, s18
 484 0094 18EE103A 		fmrs	r3, s16
 485 0098 29A8     		add	r0, sp, #164
 486 009a 18EE901A 		fmrs	r1, s17
 487 009e 0096     		str	r6, [sp]
 488 00a0 FFF7FEFF 		bl	_ZNK15DeltaParameters16InverseTransformEfffPf
 489 00a4 2846     		mov	r0, r5	@ float
 490 00a6 FFF7FEFF 		bl	__aeabi_f2d
 491 00aa 0446     		mov	r4, r0
 492 00ac B068     		ldr	r0, [r6, #8]	@ float
 493 00ae 0D46     		mov	r5, r1
 494 00b0 FFF7FEFF 		bl	__aeabi_f2d
 495 00b4 0246     		mov	r2, r0
 496 00b6 0B46     		mov	r3, r1
 497 00b8 2046     		mov	r0, r4
 498 00ba 2946     		mov	r1, r5
 499 00bc FFF7FEFF 		bl	__aeabi_dsub
 500 00c0 51A3     		adr	r3, .L38
 501 00c2 D3E90023 		ldrd	r2, [r3]
 502 00c6 FFF7FEFF 		bl	__aeabi_ddiv
 503 00ca 4CB0     		add	sp, sp, #304
 504              		@ sp needed
 505 00cc BDEC048B 		fldmfdd	sp!, {d8-d9}
 506 00d0 70BD     		pop	{r4, r5, r6, pc}
 507              	.L20:
 508 00d2 DDED2D6A 		flds	s13, [sp, #180]
 509 00d6 9DED0A7A 		flds	s14, [sp, #40]
 510 00da DFED4D7A 		flds	s15, .L38+8
 511 00de 37EE277A 		fadds	s14, s14, s15
 512 00e2 76EEE77A 		fsubs	s15, s13, s15
 513 00e6 06A8     		add	r0, sp, #24
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0w4RH9.s 			page 10


 514 00e8 8DED0A7A 		fsts	s14, [sp, #40]
 515 00ec CDED2D7A 		fsts	s15, [sp, #180]
 516 00f0 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 517 00f4 29A8     		add	r0, sp, #164
 518 00f6 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 519 00fa 012C     		cmp	r4, #1
 520 00fc B4D0     		beq	.L37
 521              	.L26:
 522 00fe 022C     		cmp	r4, #2
 523 0100 5DD1     		bne	.L28
 524 0102 DFED437A 		flds	s15, .L38+8
 525 0106 78EE277A 		fadds	s15, s16, s15
 526 010a 03AE     		add	r6, sp, #12
 527 010c 06A8     		add	r0, sp, #24
 528 010e 17EE903A 		fmrs	r3, s15
 529 0112 0096     		str	r6, [sp]
 530 0114 18EE901A 		fmrs	r1, s17
 531 0118 19EE102A 		fmrs	r2, s18
 532 011c FFF7FEFF 		bl	_ZNK15DeltaParameters16InverseTransformEfffPf
 533 0120 B568     		ldr	r5, [r6, #8]	@ float
 534              	.L29:
 535 0122 DFED3B7A 		flds	s15, .L38+8
 536 0126 38EE678A 		fsubs	s16, s16, s15
 537 012a B1E7     		b	.L33
 538              	.L18:
 539 012c 9DED097A 		flds	s14, [sp, #36]
 540 0130 DDED2C6A 		flds	s13, [sp, #176]
 541 0134 DFED367A 		flds	s15, .L38+8
 542 0138 37EE277A 		fadds	s14, s14, s15
 543 013c 76EEE77A 		fsubs	s15, s13, s15
 544 0140 06A8     		add	r0, sp, #24
 545 0142 8DED097A 		fsts	s14, [sp, #36]
 546 0146 CDED2C7A 		fsts	s15, [sp, #176]
 547 014a FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 548 014e 29A8     		add	r0, sp, #164
 549 0150 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 550 0154 86E7     		b	.L24
 551              	.L22:
 552 0156 9DED087A 		flds	s14, [sp, #32]
 553 015a DDED2B6A 		flds	s13, [sp, #172]
 554 015e DFED2C7A 		flds	s15, .L38+8
 555 0162 37EE277A 		fadds	s14, s14, s15
 556 0166 76EEE77A 		fsubs	s15, s13, s15
 557 016a 06A8     		add	r0, sp, #24
 558 016c 8DED087A 		fsts	s14, [sp, #32]
 559 0170 CDED2B7A 		fsts	s15, [sp, #172]
 560 0174 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 561 0178 29A8     		add	r0, sp, #164
 562 017a FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 563 017e 71E7     		b	.L24
 564              	.L17:
 565 0180 002C     		cmp	r4, #0
 566 0182 7FF46FAF 		bne	.L24
 567 0186 DFED227A 		flds	s15, .L38+8
 568 018a 78EEA77A 		fadds	s15, s17, s15
 569 018e 03AE     		add	r6, sp, #12
 570 0190 06A8     		add	r0, sp, #24
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0w4RH9.s 			page 11


 571 0192 17EE901A 		fmrs	r1, s15
 572 0196 0096     		str	r6, [sp]
 573 0198 19EE102A 		fmrs	r2, s18
 574 019c 18EE103A 		fmrs	r3, s16
 575 01a0 FFF7FEFF 		bl	_ZNK15DeltaParameters16InverseTransformEfffPf
 576              	.L25:
 577 01a4 B568     		ldr	r5, [r6, #8]	@ float
 578 01a6 24B9     		cbnz	r4, .L32
 579 01a8 DFED197A 		flds	s15, .L38+8
 580 01ac 78EEE78A 		fsubs	s17, s17, s15
 581 01b0 6EE7     		b	.L33
 582              	.L32:
 583 01b2 012C     		cmp	r4, #1
 584 01b4 3FF468AF 		beq	.L27
 585 01b8 022C     		cmp	r4, #2
 586 01ba B2D0     		beq	.L29
 587 01bc 68E7     		b	.L33
 588              	.L28:
 589 01be 03AE     		add	r6, sp, #12
 590 01c0 06A8     		add	r0, sp, #24
 591 01c2 0096     		str	r6, [sp]
 592 01c4 18EE901A 		fmrs	r1, s17
 593 01c8 19EE102A 		fmrs	r2, s18
 594 01cc 18EE103A 		fmrs	r3, s16
 595 01d0 FFF7FEFF 		bl	_ZNK15DeltaParameters16InverseTransformEfffPf
 596 01d4 072C     		cmp	r4, #7
 597 01d6 0FD1     		bne	.L30
 598 01d8 96ED007A 		flds	s14, [r6]
 599              	.L36:
 600 01dc D5ED0A7A 		flds	s15, [r5, #40]
 601 01e0 B1EE477A 		fnegs	s14, s14
 602 01e4 C7EE277A 		fdivs	s15, s14, s15
 603 01e8 17EE900A 		fmrs	r0, s15
 604 01ec FFF7FEFF 		bl	__aeabi_f2d
 605 01f0 4CB0     		add	sp, sp, #304
 606              		@ sp needed
 607 01f2 BDEC048B 		fldmfdd	sp!, {d8-d9}
 608 01f6 70BD     		pop	{r4, r5, r6, pc}
 609              	.L30:
 610 01f8 082C     		cmp	r4, #8
 611 01fa D3D1     		bne	.L25
 612 01fc 96ED017A 		flds	s14, [r6, #4]
 613 0200 ECE7     		b	.L36
 614              	.L39:
 615 0202 00BFAFF3 		.align	3
 615      0080
 616              	.L38:
 617 0208 000000A0 		.word	-1610612736
 618 020c 9999D93F 		.word	1071225241
 619 0210 CDCC4C3E 		.word	1045220557
 620              		.size	_ZN15DeltaParameters17ComputeDerivativeEjfff, .-_ZN15DeltaParameters17ComputeDerivativeEjfff
 621 0214 AFF30080 		.section	.text._ZN15DeltaParameters6AdjustEjPKd,"ax",%progbits
 622              		.align	2
 623              		.global	_ZN15DeltaParameters6AdjustEjPKd
 624              		.thumb
 625              		.thumb_func
 626              		.type	_ZN15DeltaParameters6AdjustEjPKd, %function
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0w4RH9.s 			page 12


 627              	_ZN15DeltaParameters6AdjustEjPKd:
 628              		@ args = 0, pretend = 0, frame = 0
 629              		@ frame_needed = 0, uses_anonymous_args = 0
 630 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 631 0004 D0ED077A 		flds	s15, [r0, #28]
 632 0008 D2E90045 		ldrd	r4, [r2]
 633 000c 2DED068B 		fstmfdd	sp!, {d8, d9, d10}
 634 0010 D0ED168A 		flds	s17, [r0, #88]
 635 0014 8046     		mov	r8, r0
 636 0016 17EE900A 		fmrs	r0, s15
 637 001a 38EEA7AA 		fadds	s20, s17, s15
 638 001e 9146     		mov	r9, r2
 639 0020 0E46     		mov	r6, r1
 640 0022 FFF7FEFF 		bl	__aeabi_f2d
 641 0026 2246     		mov	r2, r4
 642 0028 2B46     		mov	r3, r5
 643 002a FFF7FEFF 		bl	__aeabi_dadd
 644 002e FFF7FEFF 		bl	__aeabi_d2f
 645 0032 09EE100A 		fmsr	s18, r0
 646 0036 D8F82000 		ldr	r0, [r8, #32]	@ float
 647 003a FFF7FEFF 		bl	__aeabi_f2d
 648 003e D9E90223 		ldrd	r2, [r9, #8]
 649 0042 FFF7FEFF 		bl	__aeabi_dadd
 650 0046 FFF7FEFF 		bl	__aeabi_d2f
 651 004a 09EE900A 		fmsr	s19, r0
 652 004e D8F82400 		ldr	r0, [r8, #36]	@ float
 653 0052 FFF7FEFF 		bl	__aeabi_f2d
 654 0056 D9E90423 		ldrd	r2, [r9, #16]
 655 005a FFF7FEFF 		bl	__aeabi_dadd
 656 005e FFF7FEFF 		bl	__aeabi_d2f
 657 0062 79EE297A 		fadds	s15, s18, s19
 658 0066 07EE100A 		fmsr	s14, r0
 659 006a 77EE277A 		fadds	s15, s14, s15
 660 006e F0EE086A 		fconsts	s13, #8
 661 0072 C7EEA67A 		fdivs	s15, s15, s13
 662 0076 032E     		cmp	r6, #3
 663 0078 98ED0B8A 		flds	s16, [r8, #44]
 664 007c 79EEE79A 		fsubs	s19, s19, s15
 665 0080 39EE679A 		fsubs	s18, s18, s15
 666 0084 37EE677A 		fsubs	s14, s14, s15
 667 0088 78EEA78A 		fadds	s17, s17, s15
 668 008c 37EE888A 		fadds	s16, s15, s16
 669 0090 C8ED089A 		fsts	s19, [r8, #32]
 670 0094 88ED079A 		fsts	s18, [r8, #28]
 671 0098 88ED097A 		fsts	s14, [r8, #36]
 672 009c C8ED168A 		fsts	s17, [r8, #88]
 673 00a0 88ED0B8A 		fsts	s16, [r8, #44]
 674 00a4 40F29E80 		bls	.L41
 675 00a8 D8F80C00 		ldr	r0, [r8, #12]	@ float
 676 00ac FFF7FEFF 		bl	__aeabi_f2d
 677 00b0 D9E90623 		ldrd	r2, [r9, #24]
 678 00b4 FFF7FEFF 		bl	__aeabi_dadd
 679 00b8 FFF7FEFF 		bl	__aeabi_d2f
 680 00bc 052E     		cmp	r6, #5
 681 00be C8F80C00 		str	r0, [r8, #12]	@ float
 682 00c2 40F28480 		bls	.L43
 683 00c6 D8F81000 		ldr	r0, [r8, #16]	@ float
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0w4RH9.s 			page 13


 684 00ca FFF7FEFF 		bl	__aeabi_f2d
 685 00ce D9E90823 		ldrd	r2, [r9, #32]
 686 00d2 FFF7FEFF 		bl	__aeabi_dadd
 687 00d6 FFF7FEFF 		bl	__aeabi_d2f
 688 00da C8F81000 		str	r0, [r8, #16]	@ float
 689 00de D8F81400 		ldr	r0, [r8, #20]	@ float
 690 00e2 FFF7FEFF 		bl	__aeabi_f2d
 691 00e6 D9E90A23 		ldrd	r2, [r9, #40]
 692 00ea FFF7FEFF 		bl	__aeabi_dadd
 693 00ee FFF7FEFF 		bl	__aeabi_d2f
 694 00f2 072E     		cmp	r6, #7
 695 00f4 C8F81400 		str	r0, [r8, #20]	@ float
 696 00f8 00F09080 		beq	.L44
 697 00fc 092E     		cmp	r6, #9
 698 00fe 28D0     		beq	.L50
 699 0100 082E     		cmp	r6, #8
 700 0102 64D1     		bne	.L43
 701 0104 D8F82800 		ldr	r0, [r8, #40]	@ float
 702 0108 FFF7FEFF 		bl	__aeabi_f2d
 703 010c 0446     		mov	r4, r0
 704 010e D8F83000 		ldr	r0, [r8, #48]	@ float
 705 0112 0D46     		mov	r5, r1
 706 0114 FFF7FEFF 		bl	__aeabi_f2d
 707 0118 2246     		mov	r2, r4
 708 011a 0646     		mov	r6, r0
 709 011c 0F46     		mov	r7, r1
 710 011e 2B46     		mov	r3, r5
 711 0120 D9E90C01 		ldrd	r0, [r9, #48]
 712 0124 FFF7FEFF 		bl	__aeabi_ddiv
 713 0128 0246     		mov	r2, r0
 714 012a 0B46     		mov	r3, r1
 715 012c 3046     		mov	r0, r6
 716 012e 3946     		mov	r1, r7
 717 0130 FFF7FEFF 		bl	__aeabi_dadd
 718 0134 FFF7FEFF 		bl	__aeabi_d2f
 719 0138 C8F83000 		str	r0, [r8, #48]	@ float
 720 013c D8F83400 		ldr	r0, [r8, #52]	@ float
 721 0140 FFF7FEFF 		bl	__aeabi_f2d
 722 0144 2246     		mov	r2, r4
 723 0146 0646     		mov	r6, r0
 724 0148 0F46     		mov	r7, r1
 725 014a 2B46     		mov	r3, r5
 726 014c D9E90E01 		ldrd	r0, [r9, #56]
 727 0150 31E0     		b	.L49
 728              	.L50:
 729 0152 D8F80800 		ldr	r0, [r8, #8]	@ float
 730 0156 FFF7FEFF 		bl	__aeabi_f2d
 731 015a D9E90C23 		ldrd	r2, [r9, #48]
 732 015e FFF7FEFF 		bl	__aeabi_dadd
 733 0162 FFF7FEFF 		bl	__aeabi_d2f
 734 0166 C8F80800 		str	r0, [r8, #8]	@ float
 735 016a D8F82800 		ldr	r0, [r8, #40]	@ float
 736 016e FFF7FEFF 		bl	__aeabi_f2d
 737 0172 0446     		mov	r4, r0
 738 0174 D8F83000 		ldr	r0, [r8, #48]	@ float
 739 0178 0D46     		mov	r5, r1
 740 017a FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0w4RH9.s 			page 14


 741 017e 2246     		mov	r2, r4
 742 0180 0646     		mov	r6, r0
 743 0182 0F46     		mov	r7, r1
 744 0184 2B46     		mov	r3, r5
 745 0186 D9E90E01 		ldrd	r0, [r9, #56]
 746 018a FFF7FEFF 		bl	__aeabi_ddiv
 747 018e 0246     		mov	r2, r0
 748 0190 0B46     		mov	r3, r1
 749 0192 3046     		mov	r0, r6
 750 0194 3946     		mov	r1, r7
 751 0196 FFF7FEFF 		bl	__aeabi_dadd
 752 019a FFF7FEFF 		bl	__aeabi_d2f
 753 019e C8F83000 		str	r0, [r8, #48]	@ float
 754 01a2 D8F83400 		ldr	r0, [r8, #52]	@ float
 755 01a6 FFF7FEFF 		bl	__aeabi_f2d
 756 01aa 0646     		mov	r6, r0
 757 01ac 0F46     		mov	r7, r1
 758 01ae D9E91001 		ldrd	r0, [r9, #64]
 759 01b2 2246     		mov	r2, r4
 760 01b4 2B46     		mov	r3, r5
 761              	.L49:
 762 01b6 FFF7FEFF 		bl	__aeabi_ddiv
 763 01ba 0246     		mov	r2, r0
 764 01bc 0B46     		mov	r3, r1
 765 01be 3046     		mov	r0, r6
 766 01c0 3946     		mov	r1, r7
 767 01c2 FFF7FEFF 		bl	__aeabi_dadd
 768 01c6 FFF7FEFF 		bl	__aeabi_d2f
 769 01ca C8F83400 		str	r0, [r8, #52]	@ float
 770              	.L43:
 771 01ce 4046     		mov	r0, r8
 772 01d0 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 773 01d4 D9E90045 		ldrd	r4, [r9]
 774 01d8 98ED0B8A 		flds	s16, [r8, #44]
 775 01dc D8ED168A 		flds	s17, [r8, #88]
 776 01e0 98ED079A 		flds	s18, [r8, #28]
 777              	.L41:
 778 01e4 38EE899A 		fadds	s18, s17, s18
 779 01e8 39EE4A9A 		fsubs	s18, s18, s20
 780 01ec 19EE100A 		fmrs	r0, s18
 781 01f0 FFF7FEFF 		bl	__aeabi_f2d
 782 01f4 2246     		mov	r2, r4
 783 01f6 2B46     		mov	r3, r5
 784 01f8 FFF7FEFF 		bl	__aeabi_dsub
 785 01fc FFF7FEFF 		bl	__aeabi_d2f
 786 0200 07EE100A 		fmsr	s14, r0
 787 0204 38EE478A 		fsubs	s16, s16, s14
 788 0208 78EEC78A 		fsubs	s17, s17, s14
 789 020c 88ED0B8A 		fsts	s16, [r8, #44]
 790 0210 C8ED168A 		fsts	s17, [r8, #88]
 791 0214 BDEC068B 		fldmfdd	sp!, {d8-d10}
 792 0218 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 793              	.L44:
 794 021c D8F80800 		ldr	r0, [r8, #8]	@ float
 795 0220 FFF7FEFF 		bl	__aeabi_f2d
 796 0224 D9E90C23 		ldrd	r2, [r9, #48]
 797 0228 FFF7FEFF 		bl	__aeabi_dadd
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0w4RH9.s 			page 15


 798 022c FFF7FEFF 		bl	__aeabi_d2f
 799 0230 C8F80800 		str	r0, [r8, #8]	@ float
 800 0234 CBE7     		b	.L43
 801              		.size	_ZN15DeltaParameters6AdjustEjPKd, .-_ZN15DeltaParameters6AdjustEjPKd
 802 0236 00BF     		.section	.text._ZNK15DeltaParameters15PrintParametersER9StringRef,"ax",%progbits
 803              		.align	2
 804              		.global	_ZNK15DeltaParameters15PrintParametersER9StringRef
 805              		.thumb
 806              		.thumb_func
 807              		.type	_ZNK15DeltaParameters15PrintParametersER9StringRef, %function
 808              	_ZNK15DeltaParameters15PrintParametersER9StringRef:
 809              		@ args = 0, pretend = 0, frame = 0
 810              		@ frame_needed = 0, uses_anonymous_args = 0
 811 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 812 0002 0646     		mov	r6, r0
 813 0004 95B0     		sub	sp, sp, #84
 814 0006 C069     		ldr	r0, [r0, #28]	@ float
 815 0008 0F46     		mov	r7, r1
 816 000a FFF7FEFF 		bl	__aeabi_f2d
 817 000e 0446     		mov	r4, r0
 818 0010 306A     		ldr	r0, [r6, #32]	@ float
 819 0012 0D46     		mov	r5, r1
 820 0014 FFF7FEFF 		bl	__aeabi_f2d
 821 0018 CDE90001 		strd	r0, [sp]
 822 001c 706A     		ldr	r0, [r6, #36]	@ float
 823 001e FFF7FEFF 		bl	__aeabi_f2d
 824 0022 CDE90201 		strd	r0, [sp, #8]
 825 0026 F06A     		ldr	r0, [r6, #44]	@ float
 826 0028 FFF7FEFF 		bl	__aeabi_f2d
 827 002c CDE90401 		strd	r0, [sp, #16]
 828 0030 B068     		ldr	r0, [r6, #8]	@ float
 829 0032 FFF7FEFF 		bl	__aeabi_f2d
 830 0036 CDE90601 		strd	r0, [sp, #24]
 831 003a F068     		ldr	r0, [r6, #12]	@ float
 832 003c FFF7FEFF 		bl	__aeabi_f2d
 833 0040 CDE90801 		strd	r0, [sp, #32]
 834 0044 3069     		ldr	r0, [r6, #16]	@ float
 835 0046 FFF7FEFF 		bl	__aeabi_f2d
 836 004a CDE90A01 		strd	r0, [sp, #40]
 837 004e 7069     		ldr	r0, [r6, #20]	@ float
 838 0050 FFF7FEFF 		bl	__aeabi_f2d
 839 0054 CDE90C01 		strd	r0, [sp, #48]
 840 0058 B069     		ldr	r0, [r6, #24]	@ float
 841 005a FFF7FEFF 		bl	__aeabi_f2d
 842 005e CDE90E01 		strd	r0, [sp, #56]
 843 0062 306B     		ldr	r0, [r6, #48]	@ float
 844 0064 FFF7FEFF 		bl	__aeabi_f2d
 845 0068 0022     		movs	r2, #0
 846 006a 0B4B     		ldr	r3, .L52
 847 006c FFF7FEFF 		bl	__aeabi_dmul
 848 0070 CDE91001 		strd	r0, [sp, #64]
 849 0074 706B     		ldr	r0, [r6, #52]	@ float
 850 0076 FFF7FEFF 		bl	__aeabi_f2d
 851 007a 0022     		movs	r2, #0
 852 007c 064B     		ldr	r3, .L52
 853 007e FFF7FEFF 		bl	__aeabi_dmul
 854 0082 2246     		mov	r2, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0w4RH9.s 			page 16


 855 0084 CDE91201 		strd	r0, [sp, #72]
 856 0088 2B46     		mov	r3, r5
 857 008a 3846     		mov	r0, r7
 858 008c 0349     		ldr	r1, .L52+4
 859 008e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 860 0092 15B0     		add	sp, sp, #84
 861              		@ sp needed
 862 0094 F0BD     		pop	{r4, r5, r6, r7, pc}
 863              	.L53:
 864 0096 00BF     		.align	2
 865              	.L52:
 866 0098 00005940 		.word	1079574528
 867 009c 00000000 		.word	.LC0
 868              		.size	_ZNK15DeltaParameters15PrintParametersER9StringRef, .-_ZNK15DeltaParameters15PrintParameters
 869              		.section	.text._ZNK15DeltaParameters15WriteParametersEP9FileStore,"ax",%progbits
 870              		.align	2
 871              		.global	_ZNK15DeltaParameters15WriteParametersEP9FileStore
 872              		.thumb
 873              		.thumb_func
 874              		.type	_ZNK15DeltaParameters15WriteParametersEP9FileStore, %function
 875              	_ZNK15DeltaParameters15WriteParametersEP9FileStore:
 876              		@ args = 0, pretend = 0, frame = 0
 877              		@ frame_needed = 0, uses_anonymous_args = 0
 878 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 879 0004 90F83830 		ldrb	r3, [r0, #56]	@ zero_extendqisi2
 880 0008 8CB0     		sub	sp, sp, #48
 881 000a 0646     		mov	r6, r0
 882 000c 0F46     		mov	r7, r1
 883 000e 1BB9     		cbnz	r3, .L62
 884 0010 0120     		movs	r0, #1
 885 0012 0CB0     		add	sp, sp, #48
 886              		@ sp needed
 887 0014 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 888              	.L62:
 889 0018 0846     		mov	r0, r1
 890 001a 3449     		ldr	r1, .L63
 891 001c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 892 0020 18B9     		cbnz	r0, .L56
 893              	.L57:
 894 0022 0020     		movs	r0, #0
 895 0024 0CB0     		add	sp, sp, #48
 896              		@ sp needed
 897 0026 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 898              	.L56:
 899 002a B068     		ldr	r0, [r6, #8]	@ float
 900 002c DFF8CC80 		ldr	r8, .L63+16
 901 0030 FFF7FEFF 		bl	__aeabi_f2d
 902 0034 0446     		mov	r4, r0
 903 0036 F068     		ldr	r0, [r6, #12]	@ float
 904 0038 0D46     		mov	r5, r1
 905 003a FFF7FEFF 		bl	__aeabi_f2d
 906 003e CDE90001 		strd	r0, [sp]
 907 0042 F06A     		ldr	r0, [r6, #44]	@ float
 908 0044 FFF7FEFF 		bl	__aeabi_f2d
 909 0048 CDE90201 		strd	r0, [sp, #8]
 910 004c B06A     		ldr	r0, [r6, #40]	@ float
 911 004e FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0w4RH9.s 			page 17


 912 0052 CDE90401 		strd	r0, [sp, #16]
 913 0056 3069     		ldr	r0, [r6, #16]	@ float
 914 0058 FFF7FEFF 		bl	__aeabi_f2d
 915 005c CDE90601 		strd	r0, [sp, #24]
 916 0060 7069     		ldr	r0, [r6, #20]	@ float
 917 0062 FFF7FEFF 		bl	__aeabi_f2d
 918 0066 CDE90801 		strd	r0, [sp, #32]
 919 006a B069     		ldr	r0, [r6, #24]	@ float
 920 006c FFF7FEFF 		bl	__aeabi_f2d
 921 0070 2246     		mov	r2, r4
 922 0072 CDE90A01 		strd	r0, [sp, #40]
 923 0076 2B46     		mov	r3, r5
 924 0078 1D49     		ldr	r1, .L63+4
 925 007a 4046     		mov	r0, r8
 926 007c FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 927 0080 3846     		mov	r0, r7
 928 0082 D8F80010 		ldr	r1, [r8]
 929 0086 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 930 008a 0028     		cmp	r0, #0
 931 008c C9D0     		beq	.L57
 932 008e F069     		ldr	r0, [r6, #28]	@ float
 933 0090 FFF7FEFF 		bl	__aeabi_f2d
 934 0094 0446     		mov	r4, r0
 935 0096 306A     		ldr	r0, [r6, #32]	@ float
 936 0098 0D46     		mov	r5, r1
 937 009a FFF7FEFF 		bl	__aeabi_f2d
 938 009e CDE90001 		strd	r0, [sp]
 939 00a2 706A     		ldr	r0, [r6, #36]	@ float
 940 00a4 FFF7FEFF 		bl	__aeabi_f2d
 941 00a8 CDE90201 		strd	r0, [sp, #8]
 942 00ac 306B     		ldr	r0, [r6, #48]	@ float
 943 00ae FFF7FEFF 		bl	__aeabi_f2d
 944 00b2 0022     		movs	r2, #0
 945 00b4 0F4B     		ldr	r3, .L63+8
 946 00b6 FFF7FEFF 		bl	__aeabi_dmul
 947 00ba CDE90401 		strd	r0, [sp, #16]
 948 00be 706B     		ldr	r0, [r6, #52]	@ float
 949 00c0 FFF7FEFF 		bl	__aeabi_f2d
 950 00c4 0022     		movs	r2, #0
 951 00c6 0B4B     		ldr	r3, .L63+8
 952 00c8 FFF7FEFF 		bl	__aeabi_dmul
 953 00cc 2246     		mov	r2, r4
 954 00ce CDE90601 		strd	r0, [sp, #24]
 955 00d2 2B46     		mov	r3, r5
 956 00d4 4046     		mov	r0, r8
 957 00d6 0849     		ldr	r1, .L63+12
 958 00d8 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 959 00dc D8F80010 		ldr	r1, [r8]
 960 00e0 3846     		mov	r0, r7
 961 00e2 0CB0     		add	sp, sp, #48
 962              		@ sp needed
 963 00e4 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 964 00e8 FFF7FEBF 		b	_ZN9FileStore5WriteEPKc
 965              	.L64:
 966              		.align	2
 967              	.L63:
 968 00ec 7C000000 		.word	.LC1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0w4RH9.s 			page 18


 969 00f0 90000000 		.word	.LC2
 970 00f4 00005940 		.word	1079574528
 971 00f8 C0000000 		.word	.LC3
 972 00fc 00000000 		.word	scratchString
 973              		.size	_ZNK15DeltaParameters15WriteParametersEP9FileStore, .-_ZNK15DeltaParameters15WriteParameters
 974              		.section	.rodata.str1.4,"aMS",%progbits,1
 975              		.align	2
 976              	.LC0:
 977 0000 53746F70 		.ascii	"Stops X%.3f Y%.3f Z%.3f height %.3f diagonal %.3f r"
 977      73205825 
 977      2E336620 
 977      59252E33 
 977      66205A25 
 978 0033 61646975 		.ascii	"adius %.3f xcorr %.2f ycorr %.2f zcorr %.2f xtilt %"
 978      7320252E 
 978      33662078 
 978      636F7272 
 978      20252E32 
 979 0066 2E336625 		.ascii	".3f%% ytilt %.3f%%\012\000"
 979      25207974 
 979      696C7420 
 979      252E3366 
 979      25250A00 
 980 007a 0000     		.space	2
 981              	.LC1:
 982 007c 3B204465 		.ascii	"; Delta parameters\012\000"
 982      6C746120 
 982      70617261 
 982      6D657465 
 982      72730A00 
 983              	.LC2:
 984 0090 4D363635 		.ascii	"M665 L%.3f R%.3f H%.3f B%.1f X%.3f Y%.3f Z%.3f\012\000"
 984      204C252E 
 984      33662052 
 984      252E3366 
 984      2048252E 
 985              	.LC3:
 986 00c0 4D363636 		.ascii	"M666 X%.3f Y%.3f Z%.3f A%.2f B%.2f\012\000"
 986      2058252E 
 986      33662059 
 986      252E3366 
 986      205A252E 
 987              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 988              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 989              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 990              	_ZL28cpu_irq_prev_interrupt_state:
 991 0000 00       		.space	1
 992              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 993              		.align	2
 994              		.type	_ZL32cpu_irq_critical_section_counter, %object
 995              		.size	_ZL32cpu_irq_critical_section_counter, 4
 996              	_ZL32cpu_irq_critical_section_counter:
 997 0000 00000000 		.space	4
 998              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
