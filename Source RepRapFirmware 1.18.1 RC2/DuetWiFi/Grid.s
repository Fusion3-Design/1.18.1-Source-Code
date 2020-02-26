ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 1


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
  15              		.file	"Grid.cpp"
  16              		.section	.text._ZN14GridDefinitionC2Ev,"ax",%progbits
  17              		.align	2
  18              		.global	_ZN14GridDefinitionC2Ev
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN14GridDefinitionC2Ev, %function
  22              	_ZN14GridDefinitionC2Ev:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 30B4     		push	{r4, r5}
  27 0002 094A     		ldr	r2, .L2
  28 0004 0949     		ldr	r1, .L2+4
  29 0006 0A4D     		ldr	r5, .L2+8
  30 0008 0262     		str	r2, [r0, #32]	@ float
  31 000a 0024     		movs	r4, #0
  32 000c 0022     		movs	r2, #0
  33 000e 4561     		str	r5, [r0, #20]	@ float
  34 0010 0460     		str	r4, [r0]	@ float
  35 0012 8460     		str	r4, [r0, #8]	@ float
  36 0014 4160     		str	r1, [r0, #4]	@ float
  37 0016 C160     		str	r1, [r0, #12]	@ float
  38 0018 0161     		str	r1, [r0, #16]	@ float
  39 001a 8261     		str	r2, [r0, #24]
  40 001c C261     		str	r2, [r0, #28]
  41 001e 80F82420 		strb	r2, [r0, #36]
  42 0022 30BC     		pop	{r4, r5}
  43 0024 7047     		bx	lr
  44              	.L3:
  45 0026 00BF     		.align	2
  46              	.L2:
  47 0028 CDCC4C3D 		.word	1028443341
  48 002c 000080BF 		.word	-1082130432
  49 0030 0000A041 		.word	1101004800
  50              		.size	_ZN14GridDefinitionC2Ev, .-_ZN14GridDefinitionC2Ev
  51              		.global	_ZN14GridDefinitionC1Ev
  52              		.thumb_set _ZN14GridDefinitionC1Ev,_ZN14GridDefinitionC2Ev
  53              		.section	.text._ZN14GridDefinitionC2EPKfS1_ff,"ax",%progbits
  54              		.align	2
  55              		.global	_ZN14GridDefinitionC2EPKfS1_ff
  56              		.thumb
  57              		.thumb_func
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 2


  58              		.type	_ZN14GridDefinitionC2EPKfS1_ff, %function
  59              	_ZN14GridDefinitionC2EPKfS1_ff:
  60              		@ args = 4, pretend = 0, frame = 0
  61              		@ frame_needed = 0, uses_anonymous_args = 0
  62              		@ link register save eliminated.
  63 0000 DDED007A 		flds	s15, [sp]
  64 0004 D1ED005A 		flds	s11, [r1]
  65 0008 B7EE007A 		fconsts	s14, #112
  66 000c C7EE274A 		fdivs	s9, s14, s15
  67 0010 C0ED005A 		fsts	s11, [r0]
  68 0014 91ED015A 		flds	s10, [r1, #4]
  69 0018 80ED015A 		fsts	s10, [r0, #4]
  70 001c D2ED006A 		flds	s13, [r2]
  71 0020 75EE655A 		fsubs	s11, s10, s11
  72 0024 C0ED026A 		fsts	s13, [r0, #8]
  73 0028 92ED016A 		flds	s12, [r2, #4]
  74 002c C0ED057A 		fsts	s15, [r0, #20]
  75 0030 F4EEC75A 		fcmpes	s11, s14
  76 0034 F1EE10FA 		fmstat
  77 0038 04EE103A 		fmsr	s8, r3
  78 003c 80ED036A 		fsts	s12, [r0, #12]
  79 0040 C0ED084A 		fsts	s9, [r0, #32]
  80 0044 0361     		str	r3, [r0, #16]	@ float
  81 0046 32DB     		blt	.L5
  82 0048 9FED295A 		flds	s10, .L26
  83 004c F4EEC57A 		fcmpes	s15, s10
  84 0050 F1EE10FA 		fmstat
  85 0054 2BDB     		blt	.L5
  86 0056 64EEA55A 		fmuls	s11, s9, s11
  87 005a 76EE666A 		fsubs	s13, s12, s13
  88 005e FCEEE55A 		ftouizs	s11, s11
  89 0062 F4EEC76A 		fcmpes	s13, s14
  90 0066 15EE901A 		fmrs	r1, s11	@ int
  91 006a F1EE10FA 		fmstat
  92 006e 01F10103 		add	r3, r1, #1
  93 0072 8361     		str	r3, [r0, #24]
  94 0074 2DDB     		blt	.L8
  95 0076 64EEA66A 		fmuls	s13, s9, s13
  96 007a FCEEE66A 		ftouizs	s13, s13
  97 007e 16EE901A 		fmrs	r1, s13	@ int
  98 0082 4A1C     		adds	r2, r1, #1
  99 0084 02FB03F1 		mul	r1, r2, r3
 100 0088 0139     		subs	r1, r1, #1
 101 008a B1F5DC7F 		cmp	r1, #440
 102 008e C261     		str	r2, [r0, #28]
 103 0090 21D8     		bhi	.L11
 104 0092 B5EEC04A 		fcmpezs	s8
 105 0096 F1EE10FA 		fmstat
 106 009a 04D4     		bmi	.L14
 107 009c B4EEC74A 		fcmpes	s8, s14
 108 00a0 F1EE10FA 		fmstat
 109 00a4 17DB     		blt	.L11
 110              	.L14:
 111 00a6 292B     		cmp	r3, #41
 112 00a8 15D8     		bhi	.L11
 113 00aa 0123     		movs	r3, #1
 114 00ac 14E0     		b	.L16
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 3


 115              	.L5:
 116 00ae 76EE666A 		fsubs	s13, s12, s13
 117 00b2 B7EE007A 		fconsts	s14, #112
 118 00b6 F4EEC76A 		fcmpes	s13, s14
 119 00ba 0023     		movs	r3, #0
 120 00bc F1EE10FA 		fmstat
 121 00c0 8361     		str	r3, [r0, #24]
 122 00c2 06DB     		blt	.L8
 123 00c4 9FED0A7A 		flds	s14, .L26
 124 00c8 F4EEC77A 		fcmpes	s15, s14
 125 00cc F1EE10FA 		fmstat
 126 00d0 05DA     		bge	.L25
 127              	.L8:
 128 00d2 0023     		movs	r3, #0
 129 00d4 C361     		str	r3, [r0, #28]
 130              	.L11:
 131 00d6 0023     		movs	r3, #0
 132              	.L16:
 133 00d8 80F82430 		strb	r3, [r0, #36]
 134 00dc 7047     		bx	lr
 135              	.L25:
 136 00de 64EEA66A 		fmuls	s13, s9, s13
 137 00e2 FCEEE66A 		ftouizs	s13, s13
 138 00e6 16EE902A 		fmrs	r2, s13	@ int
 139 00ea 531C     		adds	r3, r2, #1
 140 00ec C361     		str	r3, [r0, #28]
 141 00ee F2E7     		b	.L11
 142              	.L27:
 143              		.align	2
 144              	.L26:
 145 00f0 CDCCCC3D 		.word	1036831949
 146              		.size	_ZN14GridDefinitionC2EPKfS1_ff, .-_ZN14GridDefinitionC2EPKfS1_ff
 147              		.global	_ZN14GridDefinitionC1EPKfS1_ff
 148              		.thumb_set _ZN14GridDefinitionC1EPKfS1_ff,_ZN14GridDefinitionC2EPKfS1_ff
 149              		.section	.text._ZN14GridDefinition13CheckValidityEv,"ax",%progbits
 150              		.align	2
 151              		.global	_ZN14GridDefinition13CheckValidityEv
 152              		.thumb
 153              		.thumb_func
 154              		.type	_ZN14GridDefinition13CheckValidityEv, %function
 155              	_ZN14GridDefinition13CheckValidityEv:
 156              		@ args = 0, pretend = 0, frame = 0
 157              		@ frame_needed = 0, uses_anonymous_args = 0
 158              		@ link register save eliminated.
 159 0000 8369     		ldr	r3, [r0, #24]
 160 0002 C269     		ldr	r2, [r0, #28]
 161 0004 02FB03F2 		mul	r2, r2, r3
 162 0008 013A     		subs	r2, r2, #1
 163 000a B2F5DC7F 		cmp	r2, #440
 164 000e 14D8     		bhi	.L34
 165 0010 D0ED047A 		flds	s15, [r0, #16]
 166 0014 F5EEC07A 		fcmpezs	s15
 167 0018 F1EE10FA 		fmstat
 168 001c 06D4     		bmi	.L30
 169 001e B7EE007A 		fconsts	s14, #112
 170 0022 F4EEC77A 		fcmpes	s15, s14
 171 0026 F1EE10FA 		fmstat
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 4


 172 002a 06DB     		blt	.L34
 173              	.L30:
 174 002c 292B     		cmp	r3, #41
 175 002e 8CBF     		ite	hi
 176 0030 0023     		movhi	r3, #0
 177 0032 0123     		movls	r3, #1
 178 0034 80F82430 		strb	r3, [r0, #36]
 179 0038 7047     		bx	lr
 180              	.L34:
 181 003a 0023     		movs	r3, #0
 182 003c 80F82430 		strb	r3, [r0, #36]
 183 0040 7047     		bx	lr
 184              		.size	_ZN14GridDefinition13CheckValidityEv, .-_ZN14GridDefinition13CheckValidityEv
 185 0042 00BF     		.section	.text._ZNK14GridDefinition14GetXCoordinateEj,"ax",%progbits
 186              		.align	2
 187              		.global	_ZNK14GridDefinition14GetXCoordinateEj
 188              		.thumb
 189              		.thumb_func
 190              		.type	_ZNK14GridDefinition14GetXCoordinateEj, %function
 191              	_ZNK14GridDefinition14GetXCoordinateEj:
 192              		@ args = 0, pretend = 0, frame = 0
 193              		@ frame_needed = 0, uses_anonymous_args = 0
 194              		@ link register save eliminated.
 195 0000 06EE101A 		fmsr	s12, r1	@ int
 196 0004 90ED057A 		flds	s14, [r0, #20]
 197 0008 D0ED007A 		flds	s15, [r0]
 198 000c F8EE466A 		fuitos	s13, s12
 199 0010 E6EE877A 		vfma.f32	s15, s13, s14
 200 0014 17EE900A 		fmrs	r0, s15
 201 0018 7047     		bx	lr
 202              		.size	_ZNK14GridDefinition14GetXCoordinateEj, .-_ZNK14GridDefinition14GetXCoordinateEj
 203 001a 00BF     		.section	.text._ZNK14GridDefinition14GetYCoordinateEj,"ax",%progbits
 204              		.align	2
 205              		.global	_ZNK14GridDefinition14GetYCoordinateEj
 206              		.thumb
 207              		.thumb_func
 208              		.type	_ZNK14GridDefinition14GetYCoordinateEj, %function
 209              	_ZNK14GridDefinition14GetYCoordinateEj:
 210              		@ args = 0, pretend = 0, frame = 0
 211              		@ frame_needed = 0, uses_anonymous_args = 0
 212              		@ link register save eliminated.
 213 0000 06EE101A 		fmsr	s12, r1	@ int
 214 0004 90ED057A 		flds	s14, [r0, #20]
 215 0008 D0ED027A 		flds	s15, [r0, #8]
 216 000c F8EE466A 		fuitos	s13, s12
 217 0010 E6EE877A 		vfma.f32	s15, s13, s14
 218 0014 17EE900A 		fmrs	r0, s15
 219 0018 7047     		bx	lr
 220              		.size	_ZNK14GridDefinition14GetYCoordinateEj, .-_ZNK14GridDefinition14GetYCoordinateEj
 221 001a 00BF     		.section	.text._ZNK14GridDefinition10IsInRadiusEff,"ax",%progbits
 222              		.align	2
 223              		.global	_ZNK14GridDefinition10IsInRadiusEff
 224              		.thumb
 225              		.thumb_func
 226              		.type	_ZNK14GridDefinition10IsInRadiusEff, %function
 227              	_ZNK14GridDefinition10IsInRadiusEff:
 228              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 5


 229              		@ frame_needed = 0, uses_anonymous_args = 0
 230              		@ link register save eliminated.
 231 0000 D0ED047A 		flds	s15, [r0, #16]
 232 0004 F5EEC07A 		fcmpezs	s15
 233 0008 F1EE10FA 		fmstat
 234 000c 06EE901A 		fmsr	s13, r1
 235 0010 07EE102A 		fmsr	s14, r2
 236 0014 0DD4     		bmi	.L39
 237 0016 27EE077A 		fmuls	s14, s14, s14
 238 001a 67EEA77A 		fmuls	s15, s15, s15
 239 001e A6EEA67A 		vfma.f32	s14, s13, s13
 240 0022 B4EEE77A 		fcmpes	s14, s15
 241 0026 F1EE10FA 		fmstat
 242 002a 54BF     		ite	pl
 243 002c 0020     		movpl	r0, #0
 244 002e 0120     		movmi	r0, #1
 245 0030 7047     		bx	lr
 246              	.L39:
 247 0032 0120     		movs	r0, #1
 248 0034 7047     		bx	lr
 249              		.size	_ZNK14GridDefinition10IsInRadiusEff, .-_ZNK14GridDefinition10IsInRadiusEff
 250              		.global	__aeabi_f2d
 251 0036 00BF     		.section	.text._ZNK14GridDefinition15PrintParametersER9StringRef,"ax",%progbits
 252              		.align	2
 253              		.global	_ZNK14GridDefinition15PrintParametersER9StringRef
 254              		.thumb
 255              		.thumb_func
 256              		.type	_ZNK14GridDefinition15PrintParametersER9StringRef, %function
 257              	_ZNK14GridDefinition15PrintParametersER9StringRef:
 258              		@ args = 0, pretend = 0, frame = 0
 259              		@ frame_needed = 0, uses_anonymous_args = 0
 260 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 261 0002 0646     		mov	r6, r0
 262 0004 8DB0     		sub	sp, sp, #52
 263 0006 0068     		ldr	r0, [r0]	@ float
 264 0008 0F46     		mov	r7, r1
 265 000a FFF7FEFF 		bl	__aeabi_f2d
 266 000e 0446     		mov	r4, r0
 267 0010 7068     		ldr	r0, [r6, #4]	@ float
 268 0012 0D46     		mov	r5, r1
 269 0014 FFF7FEFF 		bl	__aeabi_f2d
 270 0018 CDE90001 		strd	r0, [sp]
 271 001c B068     		ldr	r0, [r6, #8]	@ float
 272 001e FFF7FEFF 		bl	__aeabi_f2d
 273 0022 CDE90201 		strd	r0, [sp, #8]
 274 0026 F068     		ldr	r0, [r6, #12]	@ float
 275 0028 FFF7FEFF 		bl	__aeabi_f2d
 276 002c CDE90401 		strd	r0, [sp, #16]
 277 0030 3069     		ldr	r0, [r6, #16]	@ float
 278 0032 FFF7FEFF 		bl	__aeabi_f2d
 279 0036 CDE90601 		strd	r0, [sp, #24]
 280 003a 7069     		ldr	r0, [r6, #20]	@ float
 281 003c FFF7FEFF 		bl	__aeabi_f2d
 282 0040 F369     		ldr	r3, [r6, #28]
 283 0042 B669     		ldr	r6, [r6, #24]
 284 0044 06FB03F6 		mul	r6, r6, r3
 285 0048 CDE90801 		strd	r0, [sp, #32]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 6


 286 004c 2246     		mov	r2, r4
 287 004e 2B46     		mov	r3, r5
 288 0050 3846     		mov	r0, r7
 289 0052 0A96     		str	r6, [sp, #40]
 290 0054 0249     		ldr	r1, .L41
 291 0056 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 292 005a 0DB0     		add	sp, sp, #52
 293              		@ sp needed
 294 005c F0BD     		pop	{r4, r5, r6, r7, pc}
 295              	.L42:
 296 005e 00BF     		.align	2
 297              	.L41:
 298 0060 00000000 		.word	.LC0
 299              		.size	_ZNK14GridDefinition15PrintParametersER9StringRef, .-_ZNK14GridDefinition15PrintParametersER
 300              		.section	.text._ZNK14GridDefinition25WriteHeadingAndParametersER9StringRef,"ax",%progbits
 301              		.align	2
 302              		.global	_ZNK14GridDefinition25WriteHeadingAndParametersER9StringRef
 303              		.thumb
 304              		.thumb_func
 305              		.type	_ZNK14GridDefinition25WriteHeadingAndParametersER9StringRef, %function
 306              	_ZNK14GridDefinition25WriteHeadingAndParametersER9StringRef:
 307              		@ args = 0, pretend = 0, frame = 0
 308              		@ frame_needed = 0, uses_anonymous_args = 0
 309 0000 70B5     		push	{r4, r5, r6, lr}
 310 0002 174B     		ldr	r3, .L44
 311 0004 8EB0     		sub	sp, sp, #56
 312 0006 0446     		mov	r4, r0
 313 0008 0068     		ldr	r0, [r0]	@ float
 314 000a 1E68     		ldr	r6, [r3]
 315 000c 0D46     		mov	r5, r1
 316 000e FFF7FEFF 		bl	__aeabi_f2d
 317 0012 CDE90001 		strd	r0, [sp]
 318 0016 6068     		ldr	r0, [r4, #4]	@ float
 319 0018 FFF7FEFF 		bl	__aeabi_f2d
 320 001c CDE90201 		strd	r0, [sp, #8]
 321 0020 A068     		ldr	r0, [r4, #8]	@ float
 322 0022 FFF7FEFF 		bl	__aeabi_f2d
 323 0026 CDE90401 		strd	r0, [sp, #16]
 324 002a E068     		ldr	r0, [r4, #12]	@ float
 325 002c FFF7FEFF 		bl	__aeabi_f2d
 326 0030 CDE90601 		strd	r0, [sp, #24]
 327 0034 2069     		ldr	r0, [r4, #16]	@ float
 328 0036 FFF7FEFF 		bl	__aeabi_f2d
 329 003a CDE90801 		strd	r0, [sp, #32]
 330 003e 6069     		ldr	r0, [r4, #20]	@ float
 331 0040 FFF7FEFF 		bl	__aeabi_f2d
 332 0044 A269     		ldr	r2, [r4, #24]
 333 0046 E369     		ldr	r3, [r4, #28]
 334 0048 0D93     		str	r3, [sp, #52]
 335 004a CDE90A01 		strd	r0, [sp, #40]
 336 004e 0C92     		str	r2, [sp, #48]
 337 0050 2846     		mov	r0, r5
 338 0052 3246     		mov	r2, r6
 339 0054 0349     		ldr	r1, .L44+4
 340 0056 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 341 005a 0EB0     		add	sp, sp, #56
 342              		@ sp needed
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 7


 343 005c 70BD     		pop	{r4, r5, r6, pc}
 344              	.L45:
 345 005e 00BF     		.align	2
 346              	.L44:
 347 0060 00000000 		.word	.LANCHOR0
 348 0064 40000000 		.word	.LC1
 349              		.size	_ZNK14GridDefinition25WriteHeadingAndParametersER9StringRef, .-_ZNK14GridDefinition25WriteHe
 350              		.section	.text._ZN14GridDefinition12CheckHeadingERK9StringRef,"ax",%progbits
 351              		.align	2
 352              		.global	_ZN14GridDefinition12CheckHeadingERK9StringRef
 353              		.thumb
 354              		.thumb_func
 355              		.type	_ZN14GridDefinition12CheckHeadingERK9StringRef, %function
 356              	_ZN14GridDefinition12CheckHeadingERK9StringRef:
 357              		@ args = 0, pretend = 0, frame = 0
 358              		@ frame_needed = 0, uses_anonymous_args = 0
 359              		@ link register save eliminated.
 360 0000 024B     		ldr	r3, .L47
 361 0002 0068     		ldr	r0, [r0]
 362 0004 1968     		ldr	r1, [r3]
 363 0006 FFF7FEBF 		b	_Z16StringStartsWithPKcS0_
 364              	.L48:
 365 000a 00BF     		.align	2
 366              	.L47:
 367 000c 00000000 		.word	.LANCHOR0
 368              		.size	_ZN14GridDefinition12CheckHeadingERK9StringRef, .-_ZN14GridDefinition12CheckHeadingERK9Strin
 369              		.section	.text._ZN14GridDefinition14ReadParametersERK9StringRef,"ax",%progbits
 370              		.align	2
 371              		.global	_ZN14GridDefinition14ReadParametersERK9StringRef
 372              		.thumb
 373              		.thumb_func
 374              		.type	_ZN14GridDefinition14ReadParametersERK9StringRef, %function
 375              	_ZN14GridDefinition14ReadParametersERK9StringRef:
 376              		@ args = 0, pretend = 0, frame = 0
 377              		@ frame_needed = 0, uses_anonymous_args = 0
 378 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 379 0002 0446     		mov	r4, r0
 380 0004 87B0     		sub	sp, sp, #28
 381 0006 04F1080E 		add	lr, r4, #8
 382 000a 04F11802 		add	r2, r4, #24
 383 000e 04F11C03 		add	r3, r4, #28
 384 0012 04F10C07 		add	r7, r4, #12
 385 0016 04F11006 		add	r6, r4, #16
 386 001a 04F11405 		add	r5, r4, #20
 387 001e 0868     		ldr	r0, [r1]
 388 0020 0492     		str	r2, [sp, #16]
 389 0022 0593     		str	r3, [sp, #20]
 390 0024 1D49     		ldr	r1, .L58
 391 0026 CDF800E0 		str	lr, [sp]
 392 002a 231D     		adds	r3, r4, #4
 393 002c 0197     		str	r7, [sp, #4]
 394 002e 0296     		str	r6, [sp, #8]
 395 0030 0395     		str	r5, [sp, #12]
 396 0032 2246     		mov	r2, r4
 397 0034 FFF7FEFF 		bl	sscanf
 398 0038 B0F10803 		subs	r3, r0, #8
 399 003c 5842     		rsbs	r0, r3, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 8


 400 003e 5841     		adcs	r0, r0, r3
 401 0040 D0B1     		cbz	r0, .L50
 402 0042 A369     		ldr	r3, [r4, #24]
 403 0044 E269     		ldr	r2, [r4, #28]
 404 0046 02FB03F2 		mul	r2, r2, r3
 405 004a 013A     		subs	r2, r2, #1
 406 004c B2F5DC7F 		cmp	r2, #440
 407 0050 16D8     		bhi	.L57
 408 0052 D4ED047A 		flds	s15, [r4, #16]
 409 0056 F5EEC07A 		fcmpezs	s15
 410 005a F1EE10FA 		fmstat
 411 005e 06D4     		bmi	.L52
 412 0060 B7EE007A 		fconsts	s14, #112
 413 0064 F4EEC77A 		fcmpes	s15, s14
 414 0068 F1EE10FA 		fmstat
 415 006c 08DB     		blt	.L57
 416              	.L52:
 417 006e 292B     		cmp	r3, #41
 418 0070 8CBF     		ite	hi
 419 0072 0023     		movhi	r3, #0
 420 0074 0123     		movls	r3, #1
 421 0076 04E0     		b	.L51
 422              	.L50:
 423 0078 84F82400 		strb	r0, [r4, #36]
 424 007c 07B0     		add	sp, sp, #28
 425              		@ sp needed
 426 007e F0BD     		pop	{r4, r5, r6, r7, pc}
 427              	.L57:
 428 0080 0023     		movs	r3, #0
 429              	.L51:
 430 0082 D4ED057A 		flds	s15, [r4, #20]
 431 0086 84F82430 		strb	r3, [r4, #36]
 432 008a B7EE007A 		fconsts	s14, #112
 433 008e C7EE277A 		fdivs	s15, s14, s15
 434 0092 C4ED087A 		fsts	s15, [r4, #32]
 435 0096 07B0     		add	sp, sp, #28
 436              		@ sp needed
 437 0098 F0BD     		pop	{r4, r5, r6, r7, pc}
 438              	.L59:
 439 009a 00BF     		.align	2
 440              	.L58:
 441 009c 68000000 		.word	.LC2
 442              		.size	_ZN14GridDefinition14ReadParametersERK9StringRef, .-_ZN14GridDefinition14ReadParametersERK9S
 443              		.global	__aeabi_dmul
 444              		.global	__aeabi_dadd
 445              		.global	__aeabi_d2f
 446              		.section	.text._ZNK14GridDefinition10PrintErrorEffR9StringRef,"ax",%progbits
 447              		.align	2
 448              		.global	_ZNK14GridDefinition10PrintErrorEffR9StringRef
 449              		.thumb
 450              		.thumb_func
 451              		.type	_ZNK14GridDefinition10PrintErrorEffR9StringRef, %function
 452              	_ZNK14GridDefinition10PrintErrorEffR9StringRef:
 453              		@ args = 0, pretend = 0, frame = 0
 454              		@ frame_needed = 0, uses_anonymous_args = 0
 455 0000 70B5     		push	{r4, r5, r6, lr}
 456 0002 90ED057A 		flds	s14, [r0, #20]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 9


 457 0006 DFED527A 		flds	s15, .L84
 458 000a B4EEE77A 		fcmpes	s14, s15
 459 000e F1EE10FA 		fmstat
 460 0012 2DED048B 		fstmfdd	sp!, {d8, d9}
 461 0016 1E46     		mov	r6, r3
 462 0018 08EE101A 		fmsr	s16, r1
 463 001c 06EE902A 		fmsr	s13, r2
 464 0020 53D4     		bmi	.L78
 465 0022 8369     		ldr	r3, [r0, #24]
 466 0024 002B     		cmp	r3, #0
 467 0026 6DD0     		beq	.L79
 468 0028 C269     		ldr	r2, [r0, #28]
 469 002a 002A     		cmp	r2, #0
 470 002c 55D0     		beq	.L80
 471 002e 292B     		cmp	r3, #41
 472 0030 02D8     		bhi	.L65
 473 0032 B2F5DD7F 		cmp	r2, #442
 474 0036 58D3     		bcc	.L81
 475              	.L65:
 476 0038 78EE268A 		fadds	s17, s16, s13
 477 003c 28EE269A 		fmuls	s18, s16, s13
 478 0040 68EEA89A 		fmuls	s19, s17, s17
 479 0044 19EE900A 		fmrs	r0, s19
 480 0048 FFF7FEFF 		bl	__aeabi_f2d
 481 004c 0446     		mov	r4, r0
 482 004e 19EE100A 		fmrs	r0, s18
 483 0052 0D46     		mov	r5, r1
 484 0054 FFF7FEFF 		bl	__aeabi_f2d
 485 0058 0022     		movs	r2, #0
 486 005a 3E4B     		ldr	r3, .L84+4
 487 005c FFF7FEFF 		bl	__aeabi_dmul
 488 0060 0246     		mov	r2, r0
 489 0062 0B46     		mov	r3, r1
 490 0064 2046     		mov	r0, r4
 491 0066 2946     		mov	r1, r5
 492 0068 FFF7FEFF 		bl	__aeabi_dadd
 493 006c FFF7FEFF 		bl	__aeabi_d2f
 494 0070 07EE100A 		fmsr	s14, r0
 495 0074 F1EEC77A 		fsqrts	s15, s14
 496 0078 F4EE677A 		fcmps	s15, s15
 497 007c F1EE10FA 		fmstat
 498 0080 4BD1     		bne	.L82
 499              	.L69:
 500 0082 77EEA87A 		fadds	s15, s15, s17
 501 0086 9FED347A 		flds	s14, .L84+8
 502 008a C7EE877A 		fdivs	s15, s15, s14
 503 008e F4EE677A 		fcmps	s15, s15
 504 0092 F1EE10FA 		fmstat
 505 0096 3DD6     		bvs	.L83
 506 0098 9FED307A 		flds	s14, .L84+12
 507 009c 88EE078A 		fdivs	s16, s16, s14
 508 00a0 F4EEC87A 		fcmpes	s15, s16
 509 00a4 F1EE10FA 		fmstat
 510 00a8 D4BF     		ite	le
 511 00aa 18EE100A 		fmrsle	r0, s16
 512 00ae 17EE900A 		fmrsgt	r0, s15
 513              	.L67:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 10


 514 00b2 FFF7FEFF 		bl	__aeabi_f2d
 515 00b6 BDEC048B 		fldmfdd	sp!, {d8-d9}
 516 00ba 0246     		mov	r2, r0
 517 00bc 0B46     		mov	r3, r1
 518 00be 3046     		mov	r0, r6
 519 00c0 2749     		ldr	r1, .L84+16
 520 00c2 BDE87040 		pop	{r4, r5, r6, lr}
 521 00c6 FFF7FEBF 		b	_ZN9StringRef4catfEPKcz
 522              	.L78:
 523 00ca BDEC048B 		fldmfdd	sp!, {d8-d9}
 524 00ce 1846     		mov	r0, r3
 525 00d0 2449     		ldr	r1, .L84+20
 526 00d2 BDE87040 		pop	{r4, r5, r6, lr}
 527 00d6 FFF7FEBF 		b	_ZN9StringRef3catEPKc
 528              	.L80:
 529 00da BDEC048B 		fldmfdd	sp!, {d8-d9}
 530 00de 3046     		mov	r0, r6
 531 00e0 2149     		ldr	r1, .L84+24
 532 00e2 BDE87040 		pop	{r4, r5, r6, lr}
 533 00e6 FFF7FEBF 		b	_ZN9StringRef3catEPKc
 534              	.L81:
 535 00ea 03FB02F3 		mul	r3, r3, r2
 536 00ee B3F5DD7F 		cmp	r3, #442
 537 00f2 A1D2     		bcs	.L65
 538 00f4 BDEC048B 		fldmfdd	sp!, {d8-d9}
 539 00f8 3046     		mov	r0, r6
 540 00fa 1C49     		ldr	r1, .L84+28
 541 00fc BDE87040 		pop	{r4, r5, r6, lr}
 542 0100 FFF7FEBF 		b	_ZN9StringRef3catEPKc
 543              	.L79:
 544 0104 BDEC048B 		fldmfdd	sp!, {d8-d9}
 545 0108 3046     		mov	r0, r6
 546 010a 1949     		ldr	r1, .L84+32
 547 010c BDE87040 		pop	{r4, r5, r6, lr}
 548 0110 FFF7FEBF 		b	_ZN9StringRef3catEPKc
 549              	.L83:
 550 0114 17EE900A 		fmrs	r0, s15
 551 0118 CBE7     		b	.L67
 552              	.L82:
 553 011a 19EE900A 		fmrs	r0, s19
 554 011e FFF7FEFF 		bl	__aeabi_f2d
 555 0122 0446     		mov	r4, r0
 556 0124 19EE100A 		fmrs	r0, s18
 557 0128 0D46     		mov	r5, r1
 558 012a FFF7FEFF 		bl	__aeabi_f2d
 559 012e 0022     		movs	r2, #0
 560 0130 084B     		ldr	r3, .L84+4
 561 0132 FFF7FEFF 		bl	__aeabi_dmul
 562 0136 0246     		mov	r2, r0
 563 0138 0B46     		mov	r3, r1
 564 013a 2046     		mov	r0, r4
 565 013c 2946     		mov	r1, r5
 566 013e FFF7FEFF 		bl	__aeabi_dadd
 567 0142 FFF7FEFF 		bl	__aeabi_d2f
 568 0146 FFF7FEFF 		bl	sqrtf
 569 014a 07EE900A 		fmsr	s15, r0
 570 014e 98E7     		b	.L69
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 11


 571              	.L85:
 572              		.align	2
 573              	.L84:
 574 0150 CDCCCC3D 		.word	1036831949
 575 0154 00809B40 		.word	1083932672
 576 0158 00005C44 		.word	1146880000
 577 015c 00002042 		.word	1109393408
 578 0160 C0000000 		.word	.LC6
 579 0164 84000000 		.word	.LC3
 580 0168 AC000000 		.word	.LC5
 581 016c FC000000 		.word	.LC7
 582 0170 98000000 		.word	.LC4
 583              		.size	_ZNK14GridDefinition10PrintErrorEffR9StringRef, .-_ZNK14GridDefinition10PrintErrorEffR9Strin
 584              		.section	.text._ZN9HeightMapC2EPf,"ax",%progbits
 585              		.align	2
 586              		.global	_ZN9HeightMapC2EPf
 587              		.thumb
 588              		.thumb_func
 589              		.type	_ZN9HeightMapC2EPf, %function
 590              	_ZN9HeightMapC2EPf:
 591              		@ args = 0, pretend = 0, frame = 0
 592              		@ frame_needed = 0, uses_anonymous_args = 0
 593              		@ link register save eliminated.
 594 0000 70B4     		push	{r4, r5, r6}
 595 0002 0022     		movs	r2, #0
 596 0004 0024     		movs	r4, #0
 597 0006 094D     		ldr	r5, .L87
 598 0008 094E     		ldr	r6, .L87+4
 599 000a 8162     		str	r1, [r0, #40]
 600 000c 0949     		ldr	r1, .L87+8
 601 000e 4661     		str	r6, [r0, #20]	@ float
 602 0010 0562     		str	r5, [r0, #32]	@ float
 603 0012 0460     		str	r4, [r0]	@ float
 604 0014 8460     		str	r4, [r0, #8]	@ float
 605 0016 4160     		str	r1, [r0, #4]	@ float
 606 0018 C160     		str	r1, [r0, #12]	@ float
 607 001a 0161     		str	r1, [r0, #16]	@ float
 608 001c 8261     		str	r2, [r0, #24]
 609 001e C261     		str	r2, [r0, #28]
 610 0020 80F82420 		strb	r2, [r0, #36]
 611 0024 80F86020 		strb	r2, [r0, #96]
 612 0028 70BC     		pop	{r4, r5, r6}
 613 002a 7047     		bx	lr
 614              	.L88:
 615              		.align	2
 616              	.L87:
 617 002c CDCC4C3D 		.word	1028443341
 618 0030 0000A041 		.word	1101004800
 619 0034 000080BF 		.word	-1082130432
 620              		.size	_ZN9HeightMapC2EPf, .-_ZN9HeightMapC2EPf
 621              		.global	_ZN9HeightMapC1EPf
 622              		.thumb_set _ZN9HeightMapC1EPf,_ZN9HeightMapC2EPf
 623              		.section	.text._ZN9HeightMap7SetGridERK14GridDefinition,"ax",%progbits
 624              		.align	2
 625              		.global	_ZN9HeightMap7SetGridERK14GridDefinition
 626              		.thumb
 627              		.thumb_func
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 12


 628              		.type	_ZN9HeightMap7SetGridERK14GridDefinition, %function
 629              	_ZN9HeightMap7SetGridERK14GridDefinition:
 630              		@ args = 0, pretend = 0, frame = 0
 631              		@ frame_needed = 0, uses_anonymous_args = 0
 632              		@ link register save eliminated.
 633 0000 F0B4     		push	{r4, r5, r6, r7}
 634 0002 0023     		movs	r3, #0
 635 0004 80F86030 		strb	r3, [r0, #96]
 636 0008 01F12002 		add	r2, r1, #32
 637 000c 0346     		mov	r3, r0
 638              	.L90:
 639 000e 0E68     		ldr	r6, [r1]	@ unaligned
 640 0010 4D68     		ldr	r5, [r1, #4]	@ unaligned
 641 0012 8C68     		ldr	r4, [r1, #8]	@ unaligned
 642 0014 CF68     		ldr	r7, [r1, #12]	@ unaligned
 643 0016 DF60     		str	r7, [r3, #12]	@ unaligned
 644 0018 1031     		adds	r1, r1, #16
 645 001a 9142     		cmp	r1, r2
 646 001c 1E60     		str	r6, [r3]	@ unaligned
 647 001e 5D60     		str	r5, [r3, #4]	@ unaligned
 648 0020 9C60     		str	r4, [r3, #8]	@ unaligned
 649 0022 03F11003 		add	r3, r3, #16
 650 0026 F2D1     		bne	.L90
 651 0028 0A68     		ldr	r2, [r1]	@ unaligned
 652 002a 1A60     		str	r2, [r3]	@ unaligned
 653 002c 0A79     		ldrb	r2, [r1, #4]	@ zero_extendqisi2
 654 002e 1A71     		strb	r2, [r3, #4]
 655 0030 0023     		movs	r3, #0
 656 0032 1946     		mov	r1, r3
 657              	.L92:
 658 0034 C218     		adds	r2, r0, r3
 659 0036 0433     		adds	r3, r3, #4
 660 0038 342B     		cmp	r3, #52
 661 003a D162     		str	r1, [r2, #44]
 662 003c FAD1     		bne	.L92
 663 003e F0BC     		pop	{r4, r5, r6, r7}
 664 0040 7047     		bx	lr
 665              		.size	_ZN9HeightMap7SetGridERK14GridDefinition, .-_ZN9HeightMap7SetGridERK14GridDefinition
 666 0042 00BF     		.section	.text._ZN9HeightMap16ClearGridHeightsEv,"ax",%progbits
 667              		.align	2
 668              		.global	_ZN9HeightMap16ClearGridHeightsEv
 669              		.thumb
 670              		.thumb_func
 671              		.type	_ZN9HeightMap16ClearGridHeightsEv, %function
 672              	_ZN9HeightMap16ClearGridHeightsEv:
 673              		@ args = 0, pretend = 0, frame = 0
 674              		@ frame_needed = 0, uses_anonymous_args = 0
 675              		@ link register save eliminated.
 676 0000 0023     		movs	r3, #0
 677 0002 1946     		mov	r1, r3
 678              	.L97:
 679 0004 C218     		adds	r2, r0, r3
 680 0006 0433     		adds	r3, r3, #4
 681 0008 342B     		cmp	r3, #52
 682 000a D162     		str	r1, [r2, #44]
 683 000c FAD1     		bne	.L97
 684 000e 7047     		bx	lr
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 13


 685              		.size	_ZN9HeightMap16ClearGridHeightsEv, .-_ZN9HeightMap16ClearGridHeightsEv
 686              		.section	.text._ZN9HeightMap13SetGridHeightEjjf,"ax",%progbits
 687              		.align	2
 688              		.global	_ZN9HeightMap13SetGridHeightEjjf
 689              		.thumb
 690              		.thumb_func
 691              		.type	_ZN9HeightMap13SetGridHeightEjjf, %function
 692              	_ZN9HeightMap13SetGridHeightEjjf:
 693              		@ args = 0, pretend = 0, frame = 0
 694              		@ frame_needed = 0, uses_anonymous_args = 0
 695              		@ link register save eliminated.
 696 0000 10B4     		push	{r4}
 697 0002 8469     		ldr	r4, [r0, #24]
 698 0004 04FB0212 		mla	r2, r4, r2, r1
 699 0008 B2F5DC7F 		cmp	r2, #440
 700 000c 0ED8     		bhi	.L99
 701 000e 816A     		ldr	r1, [r0, #40]
 702 0010 5409     		lsrs	r4, r2, #5
 703 0012 01EB8201 		add	r1, r1, r2, lsl #2
 704 0016 00EB8400 		add	r0, r0, r4, lsl #2
 705 001a 0B60     		str	r3, [r1]	@ float
 706 001c C36A     		ldr	r3, [r0, #44]
 707 001e 02F01F02 		and	r2, r2, #31
 708 0022 0121     		movs	r1, #1
 709 0024 01FA02F2 		lsl	r2, r1, r2
 710 0028 1343     		orrs	r3, r3, r2
 711 002a C362     		str	r3, [r0, #44]
 712              	.L99:
 713 002c 5DF8044B 		ldr	r4, [sp], #4
 714 0030 7047     		bx	lr
 715              		.size	_ZN9HeightMap13SetGridHeightEjjf, .-_ZN9HeightMap13SetGridHeightEjjf
 716              		.global	__aeabi_d2uiz
 717 0032 00BF     		.section	.text._ZNK9HeightMap18GetMinimumSegmentsEf,"ax",%progbits
 718              		.align	2
 719              		.global	_ZNK9HeightMap18GetMinimumSegmentsEf
 720              		.thumb
 721              		.thumb_func
 722              		.type	_ZNK9HeightMap18GetMinimumSegmentsEf, %function
 723              	_ZNK9HeightMap18GetMinimumSegmentsEf:
 724              		@ args = 0, pretend = 0, frame = 0
 725              		@ frame_needed = 0, uses_anonymous_args = 0
 726 0000 07EE901A 		fmsr	s15, r1
 727 0004 F5EEC07A 		fcmpezs	s15
 728 0008 F1EE10FA 		fmstat
 729 000c 08B5     		push	{r3, lr}
 730 000e 0FDD     		ble	.L106
 731 0010 90ED087A 		flds	s14, [r0, #32]
 732 0014 27EE877A 		fmuls	s14, s15, s14
 733 0018 17EE100A 		fmrs	r0, s14
 734 001c FFF7FEFF 		bl	__aeabi_f2d
 735 0020 05A3     		adr	r3, .L107
 736 0022 D3E90023 		ldrd	r2, [r3]
 737 0026 FFF7FEFF 		bl	__aeabi_dadd
 738 002a FFF7FEFF 		bl	__aeabi_d2uiz
 739 002e 08BD     		pop	{r3, pc}
 740              	.L106:
 741 0030 0120     		movs	r0, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 14


 742 0032 08BD     		pop	{r3, pc}
 743              	.L108:
 744 0034 AFF30080 		.align	3
 745              	.L107:
 746 0038 9A999999 		.word	-1717986918
 747 003c 9999D93F 		.word	1071225241
 748              		.size	_ZNK9HeightMap18GetMinimumSegmentsEf, .-_ZNK9HeightMap18GetMinimumSegmentsEf
 749              		.global	__aeabi_ui2d
 750              		.global	__aeabi_ddiv
 751              		.global	__aeabi_dsub
 752              		.section	.text._ZNK9HeightMap13GetStatisticsERfS0_,"ax",%progbits
 753              		.align	2
 754              		.global	_ZNK9HeightMap13GetStatisticsERfS0_
 755              		.thumb
 756              		.thumb_func
 757              		.type	_ZNK9HeightMap13GetStatisticsERfS0_, %function
 758              	_ZNK9HeightMap13GetStatisticsERfS0_:
 759              		@ args = 0, pretend = 0, frame = 24
 760              		@ frame_needed = 0, uses_anonymous_args = 0
 761 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 762 0004 87B0     		sub	sp, sp, #28
 763 0006 C369     		ldr	r3, [r0, #28]
 764 0008 0491     		str	r1, [sp, #16]
 765 000a 8169     		ldr	r1, [r0, #24]
 766 000c 0592     		str	r2, [sp, #20]
 767 000e 01FB03FB 		mul	fp, r1, r3
 768 0012 8146     		mov	r9, r0
 769 0014 BBF1000F 		cmp	fp, #0
 770 0018 3FD0     		beq	.L110
 771 001a 0026     		movs	r6, #0
 772 001c 0027     		movs	r7, #0
 773 001e CDE90267 		strd	r6, [sp, #8]
 774 0022 4FF00008 		mov	r8, #0
 775 0026 C246     		mov	r10, r8
 776 0028 4FF0010C 		mov	ip, #1
 777              	.L113:
 778 002c 4FEA5813 		lsr	r3, r8, #5
 779 0030 09EB8303 		add	r3, r9, r3, lsl #2
 780 0034 08F01F02 		and	r2, r8, #31
 781 0038 DB6A     		ldr	r3, [r3, #44]
 782 003a 0CFA02F2 		lsl	r2, ip, r2
 783 003e 1A42     		tst	r2, r3
 784 0040 24D0     		beq	.L111
 785 0042 D9F82830 		ldr	r3, [r9, #40]
 786 0046 03EB8803 		add	r3, r3, r8, lsl #2
 787 004a 0AF1010A 		add	r10, r10, #1
 788 004e 1868     		ldr	r0, [r3]	@ float
 789 0050 CDF804C0 		str	ip, [sp, #4]
 790 0054 FFF7FEFF 		bl	__aeabi_f2d
 791 0058 0446     		mov	r4, r0
 792 005a 0D46     		mov	r5, r1
 793 005c 2246     		mov	r2, r4
 794 005e DDE90201 		ldrd	r0, [sp, #8]
 795 0062 2B46     		mov	r3, r5
 796 0064 FFF7FEFF 		bl	__aeabi_dadd
 797 0068 2246     		mov	r2, r4
 798 006a CDE90201 		strd	r0, [sp, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 15


 799 006e 2B46     		mov	r3, r5
 800 0070 2046     		mov	r0, r4
 801 0072 2946     		mov	r1, r5
 802 0074 FFF7FEFF 		bl	__aeabi_dmul
 803 0078 0246     		mov	r2, r0
 804 007a 0B46     		mov	r3, r1
 805 007c 3046     		mov	r0, r6
 806 007e 3946     		mov	r1, r7
 807 0080 FFF7FEFF 		bl	__aeabi_dadd
 808 0084 DDF804C0 		ldr	ip, [sp, #4]
 809 0088 0646     		mov	r6, r0
 810 008a 0F46     		mov	r7, r1
 811              	.L111:
 812 008c 08F10108 		add	r8, r8, #1
 813 0090 D845     		cmp	r8, fp
 814 0092 CBD1     		bne	.L113
 815 0094 BAF1000F 		cmp	r10, #0
 816 0098 0AD1     		bne	.L114
 817              	.L110:
 818 009a 4FF0000A 		mov	r10, #0
 819 009e 0599     		ldr	r1, [sp, #20]
 820 00a0 049A     		ldr	r2, [sp, #16]
 821 00a2 0023     		movs	r3, #0
 822 00a4 5046     		mov	r0, r10
 823 00a6 0B60     		str	r3, [r1]	@ float
 824 00a8 1360     		str	r3, [r2]	@ float
 825 00aa 07B0     		add	sp, sp, #28
 826              		@ sp needed
 827 00ac BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 828              	.L114:
 829 00b0 5046     		mov	r0, r10
 830 00b2 FFF7FEFF 		bl	__aeabi_ui2d
 831 00b6 0446     		mov	r4, r0
 832 00b8 0D46     		mov	r5, r1
 833 00ba 2246     		mov	r2, r4
 834 00bc 2B46     		mov	r3, r5
 835 00be DDE90201 		ldrd	r0, [sp, #8]
 836 00c2 FFF7FEFF 		bl	__aeabi_ddiv
 837 00c6 FFF7FEFF 		bl	__aeabi_d2f
 838 00ca 0499     		ldr	r1, [sp, #16]
 839 00cc 2246     		mov	r2, r4
 840 00ce 2B46     		mov	r3, r5
 841 00d0 0860     		str	r0, [r1]	@ float
 842 00d2 3046     		mov	r0, r6
 843 00d4 3946     		mov	r1, r7
 844 00d6 FFF7FEFF 		bl	__aeabi_dmul
 845 00da 0446     		mov	r4, r0
 846 00dc 0D46     		mov	r5, r1
 847 00de DDE90201 		ldrd	r0, [sp, #8]
 848 00e2 0246     		mov	r2, r0
 849 00e4 0B46     		mov	r3, r1
 850 00e6 FFF7FEFF 		bl	__aeabi_dmul
 851 00ea 0246     		mov	r2, r0
 852 00ec 0B46     		mov	r3, r1
 853 00ee 2046     		mov	r0, r4
 854 00f0 2946     		mov	r1, r5
 855 00f2 FFF7FEFF 		bl	__aeabi_dsub
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 16


 856 00f6 FFF7FEFF 		bl	sqrt
 857 00fa FFF7FEFF 		bl	__aeabi_d2f
 858 00fe 07EE10AA 		fmsr	s14, r10	@ int
 859 0102 F8EE477A 		fuitos	s15, s14
 860 0106 07EE100A 		fmsr	s14, r0
 861 010a C7EE277A 		fdivs	s15, s14, s15
 862 010e 0599     		ldr	r1, [sp, #20]
 863 0110 5046     		mov	r0, r10
 864 0112 C1ED007A 		fsts	s15, [r1]
 865 0116 07B0     		add	sp, sp, #28
 866              		@ sp needed
 867 0118 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 868              		.size	_ZNK9HeightMap13GetStatisticsERfS0_, .-_ZNK9HeightMap13GetStatisticsERfS0_
 869              		.section	.text._ZNK9HeightMap10SaveToFileEP9FileStore,"ax",%progbits
 870              		.align	2
 871              		.global	_ZNK9HeightMap10SaveToFileEP9FileStore
 872              		.thumb
 873              		.thumb_func
 874              		.type	_ZNK9HeightMap10SaveToFileEP9FileStore, %function
 875              	_ZNK9HeightMap10SaveToFileEP9FileStore:
 876              		@ args = 0, pretend = 0, frame = 520
 877              		@ frame_needed = 0, uses_anonymous_args = 0
 878 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 879 0004 544A     		ldr	r2, .L153
 880 0006 554C     		ldr	r4, .L153+4
 881 0008 ADF5077D 		sub	sp, sp, #540
 882 000c 0646     		mov	r6, r0
 883 000e 4FF4FA70 		mov	r0, #500
 884 0012 09AB     		add	r3, sp, #36
 885 0014 0890     		str	r0, [sp, #32]
 886 0016 8A46     		mov	r10, r1
 887 0018 07A8     		add	r0, sp, #28
 888 001a 1168     		ldr	r1, [r2]
 889 001c 0793     		str	r3, [sp, #28]
 890 001e 0022     		movs	r2, #0
 891 0020 8DF82420 		strb	r2, [sp, #36]
 892 0024 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 893 0028 2068     		ldr	r0, [r4]
 894 002a FFF7FEFF 		bl	_ZNK8Platform13IsDateTimeSetEv
 895 002e 0028     		cmp	r0, #0
 896 0030 7AD1     		bne	.L150
 897 0032 06AF     		add	r7, sp, #24
 898              	.L123:
 899 0034 3A46     		mov	r2, r7
 900 0036 05A9     		add	r1, sp, #20
 901 0038 3046     		mov	r0, r6
 902 003a FFF7FEFF 		bl	_ZNK9HeightMap13GetStatisticsERfS0_
 903 003e 0598     		ldr	r0, [sp, #20]	@ float
 904 0040 FFF7FEFF 		bl	__aeabi_f2d
 905 0044 0446     		mov	r4, r0
 906 0046 3868     		ldr	r0, [r7]	@ float
 907 0048 0D46     		mov	r5, r1
 908 004a FFF7FEFF 		bl	__aeabi_f2d
 909 004e 2246     		mov	r2, r4
 910 0050 CDE90001 		strd	r0, [sp]
 911 0054 2B46     		mov	r3, r5
 912 0056 4249     		ldr	r1, .L153+8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 17


 913 0058 07A8     		add	r0, sp, #28
 914 005a FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 915 005e 5046     		mov	r0, r10
 916 0060 0799     		ldr	r1, [sp, #28]
 917 0062 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 918 0066 20B9     		cbnz	r0, .L124
 919              	.L126:
 920 0068 0120     		movs	r0, #1
 921 006a 0DF5077D 		add	sp, sp, #540
 922              		@ sp needed
 923 006e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 924              	.L124:
 925 0072 3046     		mov	r0, r6
 926 0074 07A9     		add	r1, sp, #28
 927 0076 FFF7FEFF 		bl	_ZNK14GridDefinition25WriteHeadingAndParametersER9StringRef
 928 007a 5046     		mov	r0, r10
 929 007c 0799     		ldr	r1, [sp, #28]
 930 007e FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 931 0082 0028     		cmp	r0, #0
 932 0084 F0D0     		beq	.L126
 933 0086 F369     		ldr	r3, [r6, #28]
 934 0088 002B     		cmp	r3, #0
 935 008a 43D0     		beq	.L134
 936 008c 4FF00009 		mov	r9, #0
 937 0090 4C46     		mov	r4, r9
 938 0092 CB46     		mov	fp, r9
 939              	.L135:
 940 0094 079B     		ldr	r3, [sp, #28]
 941 0096 83F800B0 		strb	fp, [r3]
 942 009a B369     		ldr	r3, [r6, #24]
 943 009c 5BB3     		cbz	r3, .L128
 944 009e A700     		lsls	r7, r4, #2
 945 00a0 0025     		movs	r5, #0
 946 00a2 4FF00108 		mov	r8, #1
 947 00a6 12E0     		b	.L129
 948              	.L152:
 949 00a8 B36A     		ldr	r3, [r6, #40]
 950 00aa 3B44     		add	r3, r3, r7
 951 00ac 0135     		adds	r5, r5, #1
 952 00ae 1868     		ldr	r0, [r3]	@ float
 953 00b0 FFF7FEFF 		bl	__aeabi_f2d
 954 00b4 0B46     		mov	r3, r1
 955 00b6 0246     		mov	r2, r0
 956 00b8 2A49     		ldr	r1, .L153+12
 957 00ba 07A8     		add	r0, sp, #28
 958 00bc FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 959 00c0 B369     		ldr	r3, [r6, #24]
 960 00c2 AB42     		cmp	r3, r5
 961 00c4 04F10104 		add	r4, r4, #1
 962 00c8 15D9     		bls	.L128
 963              	.L133:
 964 00ca 45BB     		cbnz	r5, .L151
 965              	.L130:
 966 00cc 0437     		adds	r7, r7, #4
 967              	.L129:
 968 00ce 6309     		lsrs	r3, r4, #5
 969 00d0 06EB8303 		add	r3, r6, r3, lsl #2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 18


 970 00d4 04F01F02 		and	r2, r4, #31
 971 00d8 DB6A     		ldr	r3, [r3, #44]
 972 00da 2349     		ldr	r1, .L153+16
 973 00dc 08FA02F2 		lsl	r2, r8, r2
 974 00e0 1A42     		tst	r2, r3
 975 00e2 07A8     		add	r0, sp, #28
 976 00e4 E0D1     		bne	.L152
 977 00e6 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 978 00ea B369     		ldr	r3, [r6, #24]
 979 00ec 0135     		adds	r5, r5, #1
 980 00ee AB42     		cmp	r3, r5
 981 00f0 04F10104 		add	r4, r4, #1
 982 00f4 E9D8     		bhi	.L133
 983              	.L128:
 984 00f6 0A21     		movs	r1, #10
 985 00f8 07A8     		add	r0, sp, #28
 986 00fa FFF7FEFF 		bl	_ZN9StringRef3catEc
 987 00fe 5046     		mov	r0, r10
 988 0100 0799     		ldr	r1, [sp, #28]
 989 0102 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 990 0106 0028     		cmp	r0, #0
 991 0108 AED0     		beq	.L126
 992 010a F369     		ldr	r3, [r6, #28]
 993 010c 09F10109 		add	r9, r9, #1
 994 0110 4B45     		cmp	r3, r9
 995 0112 BFD8     		bhi	.L135
 996              	.L134:
 997 0114 0020     		movs	r0, #0
 998 0116 0DF5077D 		add	sp, sp, #540
 999              		@ sp needed
 1000 011a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1001              	.L151:
 1002 011e 07A8     		add	r0, sp, #28
 1003 0120 2C21     		movs	r1, #44
 1004 0122 FFF7FEFF 		bl	_ZN9StringRef3catEc
 1005 0126 D1E7     		b	.L130
 1006              	.L150:
 1007 0128 2068     		ldr	r0, [r4]
 1008 012a FFF7FEFF 		bl	_ZNK8Platform11GetDateTimeEv
 1009 012e 06AF     		add	r7, sp, #24
 1010 0130 0690     		str	r0, [sp, #24]
 1011 0132 3846     		mov	r0, r7
 1012 0134 FFF7FEFF 		bl	gmtime
 1013 0138 C468     		ldr	r4, [r0, #12]
 1014 013a 4269     		ldr	r2, [r0, #20]
 1015 013c 0369     		ldr	r3, [r0, #16]
 1016 013e 0094     		str	r4, [sp]
 1017 0140 8468     		ldr	r4, [r0, #8]
 1018 0142 0194     		str	r4, [sp, #4]
 1019 0144 4068     		ldr	r0, [r0, #4]
 1020 0146 0290     		str	r0, [sp, #8]
 1021 0148 0849     		ldr	r1, .L153+20
 1022 014a 02F26C72 		addw	r2, r2, #1900
 1023 014e 07A8     		add	r0, sp, #28
 1024 0150 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 1025 0154 6EE7     		b	.L123
 1026              	.L154:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 19


 1027 0156 00BF     		.align	2
 1028              	.L153:
 1029 0158 00000000 		.word	.LANCHOR1
 1030 015c 00000000 		.word	reprap
 1031 0160 30010000 		.word	.LC9
 1032 0164 54010000 		.word	.LC10
 1033 0168 5C010000 		.word	.LC11
 1034 016c 08010000 		.word	.LC8
 1035              		.size	_ZNK9HeightMap10SaveToFileEP9FileStore, .-_ZNK9HeightMap10SaveToFileEP9FileStore
 1036              		.section	.text._ZN9HeightMap12UseHeightMapEb,"ax",%progbits
 1037              		.align	2
 1038              		.global	_ZN9HeightMap12UseHeightMapEb
 1039              		.thumb
 1040              		.thumb_func
 1041              		.type	_ZN9HeightMap12UseHeightMapEb, %function
 1042              	_ZN9HeightMap12UseHeightMapEb:
 1043              		@ args = 0, pretend = 0, frame = 0
 1044              		@ frame_needed = 0, uses_anonymous_args = 0
 1045              		@ link register save eliminated.
 1046 0000 09B1     		cbz	r1, .L156
 1047 0002 90F82410 		ldrb	r1, [r0, #36]	@ zero_extendqisi2
 1048              	.L156:
 1049 0006 80F86010 		strb	r1, [r0, #96]
 1050 000a 7047     		bx	lr
 1051              		.size	_ZN9HeightMap12UseHeightMapEb, .-_ZN9HeightMap12UseHeightMapEb
 1052              		.section	.text._ZNK9HeightMap13InterpolateXYEmmff,"ax",%progbits
 1053              		.align	2
 1054              		.global	_ZNK9HeightMap13InterpolateXYEmmff
 1055              		.thumb
 1056              		.thumb_func
 1057              		.type	_ZNK9HeightMap13InterpolateXYEmmff, %function
 1058              	_ZNK9HeightMap13InterpolateXYEmmff:
 1059              		@ args = 4, pretend = 0, frame = 0
 1060              		@ frame_needed = 0, uses_anonymous_args = 0
 1061 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1062 0004 2DED048B 		fstmfdd	sp!, {d8, d9}
 1063 0008 09EE103A 		fmsr	s18, r3
 1064 000c 8369     		ldr	r3, [r0, #24]
 1065 000e D0F82880 		ldr	r8, [r0, #40]
 1066 0012 DDED0C8A 		flds	s17, [sp, #48]
 1067 0016 02FB0312 		mla	r2, r2, r3, r1
 1068 001a 08EB8209 		add	r9, r8, r2, lsl #2
 1069 001e 02EB030A 		add	r10, r2, r3
 1070 0022 D9F80000 		ldr	r0, [r9]	@ float
 1071 0026 FFF7FEFF 		bl	__aeabi_f2d
 1072 002a 0446     		mov	r4, r0
 1073 002c 19EE100A 		fmrs	r0, s18
 1074 0030 0D46     		mov	r5, r1
 1075 0032 FFF7FEFF 		bl	__aeabi_f2d
 1076 0036 0246     		mov	r2, r0
 1077 0038 0B46     		mov	r3, r1
 1078 003a 0020     		movs	r0, #0
 1079 003c 2F49     		ldr	r1, .L159
 1080 003e FFF7FEFF 		bl	__aeabi_dsub
 1081 0042 0646     		mov	r6, r0
 1082 0044 18EE900A 		fmrs	r0, s17
 1083 0048 0F46     		mov	r7, r1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 20


 1084 004a FFF7FEFF 		bl	__aeabi_f2d
 1085 004e 0246     		mov	r2, r0
 1086 0050 0B46     		mov	r3, r1
 1087 0052 3046     		mov	r0, r6
 1088 0054 3946     		mov	r1, r7
 1089 0056 FFF7FEFF 		bl	__aeabi_dsub
 1090 005a 29EE288A 		fmuls	s16, s18, s17
 1091 005e 0646     		mov	r6, r0
 1092 0060 18EE100A 		fmrs	r0, s16
 1093 0064 0F46     		mov	r7, r1
 1094 0066 FFF7FEFF 		bl	__aeabi_f2d
 1095 006a 0246     		mov	r2, r0
 1096 006c 0B46     		mov	r3, r1
 1097 006e 3046     		mov	r0, r6
 1098 0070 3946     		mov	r1, r7
 1099 0072 FFF7FEFF 		bl	__aeabi_dadd
 1100 0076 0246     		mov	r2, r0
 1101 0078 0B46     		mov	r3, r1
 1102 007a 2046     		mov	r0, r4
 1103 007c 2946     		mov	r1, r5
 1104 007e FFF7FEFF 		bl	__aeabi_dmul
 1105 0082 39EE489A 		fsubs	s18, s18, s16
 1106 0086 D9ED017A 		flds	s15, [r9, #4]
 1107 008a 69EE277A 		fmuls	s15, s18, s15
 1108 008e 0446     		mov	r4, r0
 1109 0090 17EE900A 		fmrs	r0, s15
 1110 0094 0D46     		mov	r5, r1
 1111 0096 FFF7FEFF 		bl	__aeabi_f2d
 1112 009a 4FEA8A0A 		lsl	r10, r10, #2
 1113 009e 0246     		mov	r2, r0
 1114 00a0 0B46     		mov	r3, r1
 1115 00a2 D044     		add	r8, r8, r10
 1116 00a4 2046     		mov	r0, r4
 1117 00a6 2946     		mov	r1, r5
 1118 00a8 FFF7FEFF 		bl	__aeabi_dadd
 1119 00ac 78EEC88A 		fsubs	s17, s17, s16
 1120 00b0 D8ED007A 		flds	s15, [r8]
 1121 00b4 68EEA77A 		fmuls	s15, s17, s15
 1122 00b8 0446     		mov	r4, r0
 1123 00ba 17EE900A 		fmrs	r0, s15
 1124 00be 0D46     		mov	r5, r1
 1125 00c0 FFF7FEFF 		bl	__aeabi_f2d
 1126 00c4 0246     		mov	r2, r0
 1127 00c6 0B46     		mov	r3, r1
 1128 00c8 2046     		mov	r0, r4
 1129 00ca 2946     		mov	r1, r5
 1130 00cc FFF7FEFF 		bl	__aeabi_dadd
 1131 00d0 D8ED017A 		flds	s15, [r8, #4]
 1132 00d4 68EE277A 		fmuls	s15, s16, s15
 1133 00d8 0446     		mov	r4, r0
 1134 00da 17EE900A 		fmrs	r0, s15
 1135 00de 0D46     		mov	r5, r1
 1136 00e0 FFF7FEFF 		bl	__aeabi_f2d
 1137 00e4 0246     		mov	r2, r0
 1138 00e6 0B46     		mov	r3, r1
 1139 00e8 2046     		mov	r0, r4
 1140 00ea 2946     		mov	r1, r5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 21


 1141 00ec FFF7FEFF 		bl	__aeabi_dadd
 1142 00f0 FFF7FEFF 		bl	__aeabi_d2f
 1143 00f4 BDEC048B 		fldmfdd	sp!, {d8-d9}
 1144 00f8 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1145              	.L160:
 1146              		.align	2
 1147              	.L159:
 1148 00fc 0000F03F 		.word	1072693248
 1149              		.size	_ZNK9HeightMap13InterpolateXYEmmff, .-_ZNK9HeightMap13InterpolateXYEmmff
 1150              		.section	.text._ZNK9HeightMap26GetInterpolatedHeightErrorEff,"ax",%progbits
 1151              		.align	2
 1152              		.global	_ZNK9HeightMap26GetInterpolatedHeightErrorEff
 1153              		.thumb
 1154              		.thumb_func
 1155              		.type	_ZNK9HeightMap26GetInterpolatedHeightErrorEff, %function
 1156              	_ZNK9HeightMap26GetInterpolatedHeightErrorEff:
 1157              		@ args = 0, pretend = 0, frame = 0
 1158              		@ frame_needed = 0, uses_anonymous_args = 0
 1159 0000 10B5     		push	{r4, lr}
 1160 0002 2DED068B 		fstmfdd	sp!, {d8, d9, d10}
 1161 0006 90F86030 		ldrb	r3, [r0, #96]	@ zero_extendqisi2
 1162 000a 82B0     		sub	sp, sp, #8
 1163 000c 0446     		mov	r4, r0
 1164 000e 07EE101A 		fmsr	s14, r1
 1165 0012 07EE902A 		fmsr	s15, r2
 1166 0016 002B     		cmp	r3, #0
 1167 0018 72D0     		beq	.L167
 1168 001a 8269     		ldr	r2, [r0, #24]
 1169 001c D0ED006A 		flds	s13, [r0]
 1170 0020 90ED055A 		flds	s10, [r0, #20]
 1171 0024 C369     		ldr	r3, [r0, #28]
 1172 0026 DFED395A 		flds	s11, .L170
 1173 002a 90ED028A 		flds	s16, [r0, #8]
 1174 002e 90ED08AA 		flds	s20, [r0, #32]
 1175 0032 013A     		subs	r2, r2, #1
 1176 0034 04EE102A 		fmsr	s8, r2	@ int
 1177 0038 B8EE446A 		fuitos	s12, s8
 1178 003c F0EE664A 		fcpys	s9, s13
 1179 0040 E6EE054A 		vfma.f32	s9, s12, s10
 1180 0044 013B     		subs	r3, r3, #1
 1181 0046 04EE103A 		fmsr	s8, r3	@ int
 1182 004a F4EE476A 		fcmps	s13, s14
 1183 004e B0EE646A 		fcpys	s12, s9
 1184 0052 36EE656A 		fsubs	s12, s12, s11
 1185 0056 F8EE444A 		fuitos	s9, s8
 1186 005a F1EE10FA 		fmstat
 1187 005e C8BF     		it	gt
 1188 0060 B0EE667A 		fcpysgt	s14, s13
 1189 0064 B4EE678A 		fcmps	s16, s15
 1190 0068 F0EE488A 		fcpys	s17, s16
 1191 006c E5EE248A 		vfma.f32	s17, s10, s9
 1192 0070 F1EE10FA 		fmstat
 1193 0074 B4EEC67A 		fcmpes	s14, s12
 1194 0078 C8BF     		it	gt
 1195 007a F0EE487A 		fcpysgt	s15, s16
 1196 007e F1EE10FA 		fmstat
 1197 0082 D8BF     		it	le
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 22


 1198 0084 B0EE476A 		fcpysle	s12, s14
 1199 0088 76EE666A 		fsubs	s13, s12, s13
 1200 008c 78EEE58A 		fsubs	s17, s17, s11
 1201 0090 66EE8A9A 		fmuls	s19, s13, s20
 1202 0094 F4EEE87A 		fcmpes	s15, s17
 1203 0098 F1EE10FA 		fmstat
 1204 009c 19EE900A 		fmrs	r0, s19
 1205 00a0 D8BF     		it	le
 1206 00a2 F0EE678A 		fcpysle	s17, s15
 1207 00a6 FFF7FEFF 		bl	__aeabi_f2d
 1208 00aa FFF7FEFF 		bl	floor
 1209 00ae 38EEC88A 		fsubs	s16, s17, s16
 1210 00b2 FFF7FEFF 		bl	__aeabi_d2f
 1211 00b6 2AEE088A 		fmuls	s16, s20, s16
 1212 00ba 09EE100A 		fmsr	s18, r0
 1213 00be 18EE100A 		fmrs	r0, s16
 1214 00c2 FFF7FEFF 		bl	__aeabi_f2d
 1215 00c6 FFF7FEFF 		bl	floor
 1216 00ca FFF7FEFF 		bl	__aeabi_d2f
 1217 00ce 07EE900A 		fmsr	s15, r0
 1218 00d2 79EEC99A 		fsubs	s19, s19, s18
 1219 00d6 38EE678A 		fsubs	s16, s16, s15
 1220 00da BDEEC99A 		ftosizs	s18, s18
 1221 00de FDEEE77A 		ftosizs	s15, s15
 1222 00e2 2046     		mov	r0, r4
 1223 00e4 8DED008A 		fsts	s16, [sp]
 1224 00e8 19EE903A 		fmrs	r3, s19
 1225 00ec 19EE101A 		fmrs	r1, s18	@ int
 1226 00f0 17EE902A 		fmrs	r2, s15	@ int
 1227 00f4 FFF7FEFF 		bl	_ZNK9HeightMap13InterpolateXYEmmff
 1228 00f8 02B0     		add	sp, sp, #8
 1229              		@ sp needed
 1230 00fa BDEC068B 		fldmfdd	sp!, {d8-d10}
 1231 00fe 10BD     		pop	{r4, pc}
 1232              	.L167:
 1233 0100 0020     		movs	r0, #0
 1234 0102 02B0     		add	sp, sp, #8
 1235              		@ sp needed
 1236 0104 BDEC068B 		fldmfdd	sp!, {d8-d10}
 1237 0108 10BD     		pop	{r4, pc}
 1238              	.L171:
 1239 010a 00BF     		.align	2
 1240              	.L170:
 1241 010c 0AD7233C 		.word	1008981770
 1242              		.size	_ZNK9HeightMap26GetInterpolatedHeightErrorEff, .-_ZNK9HeightMap26GetInterpolatedHeightErrorE
 1243              		.section	.text._ZN9HeightMap18ExtrapolateMissingEv,"ax",%progbits
 1244              		.align	2
 1245              		.global	_ZN9HeightMap18ExtrapolateMissingEv
 1246              		.thumb
 1247              		.thumb_func
 1248              		.type	_ZN9HeightMap18ExtrapolateMissingEv, %function
 1249              	_ZN9HeightMap18ExtrapolateMissingEv:
 1250              		@ args = 0, pretend = 0, frame = 0
 1251              		@ frame_needed = 0, uses_anonymous_args = 0
 1252 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 1253 0004 C769     		ldr	r7, [r0, #28]
 1254 0006 2DED068B 		fstmfdd	sp!, {d8, d9, d10}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 23


 1255 000a 0446     		mov	r4, r0
 1256 000c 002F     		cmp	r7, #0
 1257 000e 00F01D81 		beq	.L172
 1258 0012 DFED945A 		flds	s11, .L217
 1259 0016 8069     		ldr	r0, [r0, #24]
 1260 0018 4FF00009 		mov	r9, #0
 1261 001c 03EE909A 		fmsr	s7, r9	@ int
 1262 0020 B0EE655A 		fcpys	s10, s11
 1263 0024 F0EE654A 		fcpys	s9, s11
 1264 0028 CC46     		mov	ip, r9
 1265 002a 4FF00108 		mov	r8, #1
 1266              	.L174:
 1267 002e 80B3     		cbz	r0, .L178
 1268 0030 4FEA8901 		lsl	r1, r9, #2
 1269 0034 4B46     		mov	r3, r9
 1270 0036 0022     		movs	r2, #0
 1271              	.L179:
 1272 0038 5D09     		lsrs	r5, r3, #5
 1273 003a 04EB8505 		add	r5, r4, r5, lsl #2
 1274 003e 03F01F06 		and	r6, r3, #31
 1275 0042 ED6A     		ldr	r5, [r5, #44]
 1276 0044 08FA06F6 		lsl	r6, r8, r6
 1277 0048 2E42     		tst	r6, r5
 1278 004a 03F10103 		add	r3, r3, #1
 1279 004e 1BD0     		beq	.L175
 1280 0050 02EE102A 		fmsr	s4, r2	@ int
 1281 0054 D4ED056A 		flds	s13, [r4, #20]
 1282 0058 94ED007A 		flds	s14, [r4]
 1283 005c D4ED027A 		flds	s15, [r4, #8]
 1284 0060 A56A     		ldr	r5, [r4, #40]
 1285 0062 B8EE636A 		fuitos	s12, s7
 1286 0066 B8EE424A 		fuitos	s8, s4
 1287 006a E6EE867A 		vfma.f32	s15, s13, s12
 1288 006e 0D44     		add	r5, r5, r1
 1289 0070 0CF1010C 		add	ip, ip, #1
 1290 0074 A6EE847A 		vfma.f32	s14, s13, s8
 1291 0078 D5ED006A 		flds	s13, [r5]
 1292 007c 74EE874A 		fadds	s9, s9, s14
 1293 0080 75EEA65A 		fadds	s11, s11, s13
 1294 0084 35EE275A 		fadds	s10, s10, s15
 1295              	.L175:
 1296 0088 0132     		adds	r2, r2, #1
 1297 008a 8242     		cmp	r2, r0
 1298 008c 01F10401 		add	r1, r1, #4
 1299 0090 D2D1     		bne	.L179
 1300              	.L178:
 1301 0092 13EE903A 		fmrs	r3, s7	@ int
 1302 0096 0133     		adds	r3, r3, #1
 1303 0098 BB42     		cmp	r3, r7
 1304 009a 03EE903A 		fmsr	s7, r3	@ int
 1305 009e 8144     		add	r9, r9, r0
 1306 00a0 C5D1     		bne	.L174
 1307 00a2 02EE10CA 		fmsr	s4, ip	@ int
 1308 00a6 F8EEC27A 		fsitos	s15, s4
 1309 00aa B7EE009A 		fconsts	s18, #112
 1310 00ae 89EE279A 		fdivs	s18, s18, s15
 1311 00b2 4FF00008 		mov	r8, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 24


 1312 00b6 4FF0010C 		mov	ip, #1
 1313 00ba 9FED6A6A 		flds	s12, .L217
 1314 00be 02EE908A 		fmsr	s5, r8	@ int
 1315 00c2 29EE248A 		fmuls	s16, s18, s9
 1316 00c6 69EE058A 		fmuls	s17, s18, s10
 1317 00ca F0EE464A 		fcpys	s9, s12
 1318 00ce 29EE259A 		fmuls	s18, s18, s11
 1319 00d2 B0EE464A 		fcpys	s8, s12
 1320 00d6 F0EE465A 		fcpys	s11, s12
 1321 00da B0EE465A 		fcpys	s10, s12
 1322              	.L191:
 1323 00de C0B3     		cbz	r0, .L183
 1324 00e0 4FEA8801 		lsl	r1, r8, #2
 1325 00e4 4346     		mov	r3, r8
 1326 00e6 0022     		movs	r2, #0
 1327              	.L184:
 1328 00e8 5D09     		lsrs	r5, r3, #5
 1329 00ea 04EB8505 		add	r5, r4, r5, lsl #2
 1330 00ee 03F01F06 		and	r6, r3, #31
 1331 00f2 ED6A     		ldr	r5, [r5, #44]
 1332 00f4 0CFA06F6 		lsl	r6, ip, r6
 1333 00f8 2E42     		tst	r6, r5
 1334 00fa 03F10103 		add	r3, r3, #1
 1335 00fe 23D0     		beq	.L180
 1336 0100 02EE102A 		fmsr	s4, r2	@ int
 1337 0104 D4ED056A 		flds	s13, [r4, #20]
 1338 0108 94ED007A 		flds	s14, [r4]
 1339 010c D4ED027A 		flds	s15, [r4, #8]
 1340 0110 A56A     		ldr	r5, [r4, #40]
 1341 0112 F8EE623A 		fuitos	s7, s5
 1342 0116 B8EE423A 		fuitos	s6, s4
 1343 011a E6EEA37A 		vfma.f32	s15, s13, s7
 1344 011e 0D44     		add	r5, r5, r1
 1345 0120 A6EE837A 		vfma.f32	s14, s13, s6
 1346 0124 D5ED006A 		flds	s13, [r5]
 1347 0128 37EE487A 		fsubs	s14, s14, s16
 1348 012c 77EEE87A 		fsubs	s15, s15, s17
 1349 0130 76EEC96A 		fsubs	s13, s13, s18
 1350 0134 A7EE075A 		vfma.f32	s10, s14, s14
 1351 0138 A7EE264A 		vfma.f32	s8, s14, s13
 1352 013c A7EEA66A 		vfma.f32	s12, s15, s13
 1353 0140 E7EE275A 		vfma.f32	s11, s14, s15
 1354 0144 E7EEA74A 		vfma.f32	s9, s15, s15
 1355              	.L180:
 1356 0148 0132     		adds	r2, r2, #1
 1357 014a 8242     		cmp	r2, r0
 1358 014c 01F10401 		add	r1, r1, #4
 1359 0150 CAD1     		bne	.L184
 1360              	.L183:
 1361 0152 12EE903A 		fmrs	r3, s5	@ int
 1362 0156 0133     		adds	r3, r3, #1
 1363 0158 BB42     		cmp	r3, r7
 1364 015a 02EE903A 		fmsr	s5, r3	@ int
 1365 015e 8044     		add	r8, r8, r0
 1366 0160 BDD1     		bne	.L191
 1367 0162 65EEE57A 		fnmuls	s15, s11, s11
 1368 0166 E5EE247A 		vfma.f32	s15, s10, s9
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 25


 1369 016a F5EEC07A 		fcmpezs	s15
 1370 016e F1EE10FA 		fmstat
 1371 0172 6BD9     		bls	.L172
 1372 0174 26EE455A 		fnmuls	s10, s12, s10
 1373 0178 64EEC44A 		fnmuls	s9, s9, s8
 1374 017c A5EE845A 		vfma.f32	s10, s11, s8
 1375 0180 E5EE864A 		vfma.f32	s9, s11, s12
 1376 0184 85EE27AA 		fdivs	s20, s10, s15
 1377 0188 C4EEA79A 		fdivs	s19, s9, s15
 1378 018c 6AEE0A7A 		fmuls	s15, s20, s20
 1379 0190 B7EE007A 		fconsts	s14, #112
 1380 0194 E9EEA97A 		vfma.f32	s15, s19, s19
 1381 0198 77EE877A 		fadds	s15, s15, s14
 1382 019c B1EEE75A 		fsqrts	s10, s15
 1383 01a0 B4EE455A 		fcmps	s10, s10
 1384 01a4 F1EE10FA 		fmstat
 1385 01a8 54D1     		bne	.L216
 1386              	.L185:
 1387 01aa F7EE007A 		fconsts	s15, #112
 1388 01ae C7EE857A 		fdivs	s15, s15, s10
 1389 01b2 2AEE274A 		fmuls	s8, s20, s15
 1390 01b6 69EEA74A 		fmuls	s9, s19, s15
 1391 01ba 68EE848A 		fmuls	s17, s17, s8
 1392 01be E8EE248A 		vfma.f32	s17, s16, s9
 1393 01c2 E9EE278A 		vfma.f32	s17, s18, s15
 1394 01c6 002F     		cmp	r7, #0
 1395 01c8 40D0     		beq	.L172
 1396 01ca 4FF00008 		mov	r8, #0
 1397 01ce 05EE908A 		fmsr	s11, r8	@ int
 1398 01d2 A669     		ldr	r6, [r4, #24]
 1399 01d4 4FF0010C 		mov	ip, #1
 1400              	.L186:
 1401 01d8 86B3     		cbz	r6, .L189
 1402 01da 4FEA8801 		lsl	r1, r8, #2
 1403 01de 4346     		mov	r3, r8
 1404 01e0 0022     		movs	r2, #0
 1405              	.L190:
 1406 01e2 5809     		lsrs	r0, r3, #5
 1407 01e4 04EB8000 		add	r0, r4, r0, lsl #2
 1408 01e8 03F01F05 		and	r5, r3, #31
 1409 01ec C06A     		ldr	r0, [r0, #44]
 1410 01ee 0CFA05F5 		lsl	r5, ip, r5
 1411 01f2 0542     		tst	r5, r0
 1412 01f4 03F10103 		add	r3, r3, #1
 1413 01f8 1BD1     		bne	.L187
 1414 01fa D4ED056A 		flds	s13, [r4, #20]
 1415 01fe D4ED027A 		flds	s15, [r4, #8]
 1416 0202 94ED007A 		flds	s14, [r4]
 1417 0206 A06A     		ldr	r0, [r4, #40]
 1418 0208 B8EE656A 		fuitos	s12, s11
 1419 020c 02EE102A 		fmsr	s4, r2	@ int
 1420 0210 E6EE867A 		vfma.f32	s15, s13, s12
 1421 0214 0844     		add	r0, r0, r1
 1422 0216 B8EE426A 		fuitos	s12, s4
 1423 021a 64EE277A 		fmuls	s15, s8, s15
 1424 021e A6EE867A 		vfma.f32	s14, s13, s12
 1425 0222 E4EE877A 		vfma.f32	s15, s9, s14
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 26


 1426 0226 78EEE77A 		fsubs	s15, s17, s15
 1427 022a 67EE857A 		fmuls	s15, s15, s10
 1428 022e C0ED007A 		fsts	s15, [r0]
 1429              	.L187:
 1430 0232 0132     		adds	r2, r2, #1
 1431 0234 B242     		cmp	r2, r6
 1432 0236 01F10401 		add	r1, r1, #4
 1433 023a D2D1     		bne	.L190
 1434              	.L189:
 1435 023c 15EE903A 		fmrs	r3, s11	@ int
 1436 0240 0133     		adds	r3, r3, #1
 1437 0242 BB42     		cmp	r3, r7
 1438 0244 05EE903A 		fmsr	s11, r3	@ int
 1439 0248 B044     		add	r8, r8, r6
 1440 024a C5D1     		bne	.L186
 1441              	.L172:
 1442 024c BDEC068B 		fldmfdd	sp!, {d8-d10}
 1443 0250 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1444              	.L216:
 1445 0254 17EE900A 		fmrs	r0, s15
 1446 0258 FFF7FEFF 		bl	sqrtf
 1447 025c E769     		ldr	r7, [r4, #28]
 1448 025e 05EE100A 		fmsr	s10, r0
 1449 0262 A2E7     		b	.L185
 1450              	.L218:
 1451              		.align	2
 1452              	.L217:
 1453 0264 00000000 		.word	0
 1454              		.size	_ZN9HeightMap18ExtrapolateMissingEv, .-_ZN9HeightMap18ExtrapolateMissingEv
 1455              		.section	.text._ZN9HeightMap12LoadFromFileEP9FileStoreR9StringRef,"ax",%progbits
 1456              		.align	2
 1457              		.global	_ZN9HeightMap12LoadFromFileEP9FileStoreR9StringRef
 1458              		.thumb
 1459              		.thumb_func
 1460              		.type	_ZN9HeightMap12LoadFromFileEP9FileStoreR9StringRef, %function
 1461              	_ZN9HeightMap12LoadFromFileEP9FileStoreR9StringRef:
 1462              		@ args = 0, pretend = 0, frame = 400
 1463              		@ frame_needed = 0, uses_anonymous_args = 0
 1464 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1465 0004 E5B0     		sub	sp, sp, #404
 1466 0006 11AE     		add	r6, sp, #68
 1467 0008 0025     		movs	r5, #0
 1468 000a 40F24B17 		movw	r7, #331
 1469 000e 8846     		mov	r8, r1
 1470 0010 2B46     		mov	r3, r5
 1471 0012 0446     		mov	r4, r0
 1472 0014 0192     		str	r2, [sp, #4]
 1473 0016 3570     		strb	r5, [r6]
 1474 0018 2946     		mov	r1, r5
 1475 001a 0596     		str	r6, [sp, #20]
 1476 001c 0697     		str	r7, [sp, #24]
 1477              	.L221:
 1478 001e E218     		adds	r2, r4, r3
 1479 0020 0433     		adds	r3, r3, #4
 1480 0022 342B     		cmp	r3, #52
 1481 0024 D162     		str	r1, [r2, #44]
 1482 0026 4FF00005 		mov	r5, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 27


 1483 002a F8D1     		bne	.L221
 1484 002c 864B     		ldr	r3, .L257
 1485 002e DFF83CE2 		ldr	lr, .L257+36
 1486 0032 DFF83CC2 		ldr	ip, .L257+40
 1487 0036 0D95     		str	r5, [sp, #52]
 1488 0038 0027     		movs	r7, #0
 1489 003a 4046     		mov	r0, r8
 1490 003c 3146     		mov	r1, r6
 1491 003e 40F24B12 		movw	r2, #331
 1492 0042 0E95     		str	r5, [sp, #56]
 1493 0044 8DF84050 		strb	r5, [sp, #64]
 1494 0048 CDF830C0 		str	ip, [sp, #48]	@ float
 1495 004c CDF83CE0 		str	lr, [sp, #60]	@ float
 1496 0050 0797     		str	r7, [sp, #28]	@ float
 1497 0052 0997     		str	r7, [sp, #36]	@ float
 1498 0054 0893     		str	r3, [sp, #32]	@ float
 1499 0056 0A93     		str	r3, [sp, #40]	@ float
 1500 0058 0B93     		str	r3, [sp, #44]	@ float
 1501 005a FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
 1502 005e A842     		cmp	r0, r5
 1503 0060 40F3C680 		ble	.L225
 1504 0064 794B     		ldr	r3, .L257+4
 1505 0066 3046     		mov	r0, r6
 1506 0068 1968     		ldr	r1, [r3]
 1507 006a FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1508 006e 0746     		mov	r7, r0
 1509 0070 0028     		cmp	r0, #0
 1510 0072 00F0B480 		beq	.L251
 1511 0076 4046     		mov	r0, r8
 1512 0078 3146     		mov	r1, r6
 1513 007a 40F24B12 		movw	r2, #331
 1514 007e FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
 1515 0082 0028     		cmp	r0, #0
 1516 0084 40F3B480 		ble	.L225
 1517 0088 714B     		ldr	r3, .L257+8
 1518 008a 0598     		ldr	r0, [sp, #20]
 1519 008c 1968     		ldr	r1, [r3]
 1520 008e FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1521 0092 8146     		mov	r9, r0
 1522 0094 0028     		cmp	r0, #0
 1523 0096 00F0B480 		beq	.L252
 1524 009a 4046     		mov	r0, r8
 1525 009c 3146     		mov	r1, r6
 1526 009e 40F24B12 		movw	r2, #331
 1527 00a2 FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
 1528 00a6 0028     		cmp	r0, #0
 1529 00a8 40F3A280 		ble	.L225
 1530 00ac 05A9     		add	r1, sp, #20
 1531 00ae 07A8     		add	r0, sp, #28
 1532 00b0 FFF7FEFF 		bl	_ZN14GridDefinition14ReadParametersERK9StringRef
 1533 00b4 0346     		mov	r3, r0
 1534 00b6 0028     		cmp	r0, #0
 1535 00b8 00F0B980 		beq	.L253
 1536 00bc 9DF84070 		ldrb	r7, [sp, #64]	@ zero_extendqisi2
 1537 00c0 002F     		cmp	r7, #0
 1538 00c2 00F0BA80 		beq	.L254
 1539 00c6 84F86050 		strb	r5, [r4, #96]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 28


 1540 00ca 0DF11C0C 		add	ip, sp, #28
 1541 00ce A646     		mov	lr, r4
 1542 00d0 0DF13C09 		add	r9, sp, #60
 1543              	.L229:
 1544 00d4 6546     		mov	r5, ip
 1545 00d6 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1546 00d8 4D45     		cmp	r5, r9
 1547 00da CEF80000 		str	r0, [lr]	@ unaligned
 1548 00de CEF80410 		str	r1, [lr, #4]	@ unaligned
 1549 00e2 CEF80820 		str	r2, [lr, #8]	@ unaligned
 1550 00e6 CEF80C30 		str	r3, [lr, #12]	@ unaligned
 1551 00ea AC46     		mov	ip, r5
 1552 00ec 0EF1100E 		add	lr, lr, #16
 1553 00f0 F0D1     		bne	.L229
 1554 00f2 2868     		ldr	r0, [r5]	@ unaligned
 1555 00f4 2A79     		ldrb	r2, [r5, #4]	@ zero_extendqisi2
 1556 00f6 8EF80420 		strb	r2, [lr, #4]
 1557 00fa 0023     		movs	r3, #0
 1558 00fc CEF80000 		str	r0, [lr]	@ unaligned
 1559 0100 1946     		mov	r1, r3
 1560              	.L231:
 1561 0102 E218     		adds	r2, r4, r3
 1562 0104 0433     		adds	r3, r3, #4
 1563 0106 342B     		cmp	r3, #52
 1564 0108 D162     		str	r1, [r2, #44]
 1565 010a FAD1     		bne	.L231
 1566 010c E369     		ldr	r3, [r4, #28]
 1567 010e 002B     		cmp	r3, #0
 1568 0110 60D0     		beq	.L235
 1569 0112 CDF80880 		str	r8, [sp, #8]
 1570 0116 4FF0000A 		mov	r10, #0
 1571 011a 0397     		str	r7, [sp, #12]
 1572 011c A046     		mov	r8, r4
 1573              	.L244:
 1574 011e 0298     		ldr	r0, [sp, #8]
 1575 0120 3146     		mov	r1, r6
 1576 0122 40F24B12 		movw	r2, #331
 1577 0126 FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
 1578 012a 0028     		cmp	r0, #0
 1579 012c 60DD     		ble	.L225
 1580 012e D8F81830 		ldr	r3, [r8, #24]
 1581 0132 002B     		cmp	r3, #0
 1582 0134 47D0     		beq	.L242
 1583 0136 0025     		movs	r5, #0
 1584 0138 2C46     		mov	r4, r5
 1585 013a B346     		mov	fp, r6
 1586 013c 10E0     		b	.L243
 1587              	.L255:
 1588 013e 9BF80130 		ldrb	r3, [fp, #1]	@ zero_extendqisi2
 1589 0142 2C2B     		cmp	r3, #44
 1590 0144 00D0     		beq	.L237
 1591 0146 7BB9     		cbnz	r3, .L236
 1592              	.L237:
 1593 0148 D8F81890 		ldr	r9, [r8, #24]
 1594 014c 2C2B     		cmp	r3, #44
 1595 014e 0BF1010B 		add	fp, fp, #1
 1596 0152 05F10105 		add	r5, r5, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 29


 1597 0156 08BF     		it	eq
 1598 0158 0BF1010B 		addeq	fp, fp, #1
 1599 015c 4D45     		cmp	r5, r9
 1600 015e 32D2     		bcs	.L242
 1601              	.L243:
 1602 0160 9BF80030 		ldrb	r3, [fp]	@ zero_extendqisi2
 1603 0164 302B     		cmp	r3, #48
 1604 0166 EAD0     		beq	.L255
 1605              	.L236:
 1606 0168 5846     		mov	r0, fp
 1607 016a 04A9     		add	r1, sp, #16
 1608 016c 0494     		str	r4, [sp, #16]
 1609 016e FFF7FEFF 		bl	strtod
 1610 0172 049F     		ldr	r7, [sp, #16]
 1611 0174 5F45     		cmp	r7, fp
 1612 0176 4CD0     		beq	.L256
 1613 0178 D8F81890 		ldr	r9, [r8, #24]
 1614 017c 09FB0A5B 		mla	fp, r9, r10, r5
 1615 0180 BBF5DC7F 		cmp	fp, #440
 1616 0184 15D8     		bhi	.L240
 1617 0186 D8F82830 		ldr	r3, [r8, #40]
 1618 018a 03EB8B03 		add	r3, r3, fp, lsl #2
 1619 018e 0093     		str	r3, [sp]
 1620 0190 FFF7FEFF 		bl	__aeabi_d2f
 1621 0194 009B     		ldr	r3, [sp]
 1622 0196 4FEA5B12 		lsr	r2, fp, #5
 1623 019a 08EB8202 		add	r2, r8, r2, lsl #2
 1624 019e 1860     		str	r0, [r3]	@ float
 1625 01a0 D36A     		ldr	r3, [r2, #44]
 1626 01a2 0BF01F0B 		and	fp, fp, #31
 1627 01a6 0121     		movs	r1, #1
 1628 01a8 01FA0BFB 		lsl	fp, r1, fp
 1629 01ac 43EA0B03 		orr	r3, r3, fp
 1630 01b0 D362     		str	r3, [r2, #44]
 1631              	.L240:
 1632 01b2 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 1633 01b4 BB46     		mov	fp, r7
 1634 01b6 2C2B     		cmp	r3, #44
 1635 01b8 05F10105 		add	r5, r5, #1
 1636 01bc 08BF     		it	eq
 1637 01be 0BF1010B 		addeq	fp, fp, #1
 1638 01c2 4D45     		cmp	r5, r9
 1639 01c4 CCD3     		bcc	.L243
 1640              	.L242:
 1641 01c6 D8F81C30 		ldr	r3, [r8, #28]
 1642 01ca 0AF1010A 		add	r10, r10, #1
 1643 01ce 5345     		cmp	r3, r10
 1644 01d0 A5D8     		bhi	.L244
 1645 01d2 4446     		mov	r4, r8
 1646              	.L235:
 1647 01d4 2046     		mov	r0, r4
 1648 01d6 FFF7FEFF 		bl	_ZN9HeightMap18ExtrapolateMissingEv
 1649 01da 0027     		movs	r7, #0
 1650 01dc 04E0     		b	.L223
 1651              	.L251:
 1652 01de 0198     		ldr	r0, [sp, #4]
 1653 01e0 1C49     		ldr	r1, .L257+12
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 30


 1654 01e2 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 1655 01e6 0127     		movs	r7, #1
 1656              	.L223:
 1657 01e8 3846     		mov	r0, r7
 1658 01ea 65B0     		add	sp, sp, #404
 1659              		@ sp needed
 1660 01ec BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1661              	.L225:
 1662 01f0 0198     		ldr	r0, [sp, #4]
 1663 01f2 1949     		ldr	r1, .L257+16
 1664 01f4 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 1665 01f8 0127     		movs	r7, #1
 1666 01fa 3846     		mov	r0, r7
 1667 01fc 65B0     		add	sp, sp, #404
 1668              		@ sp needed
 1669 01fe BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1670              	.L252:
 1671 0202 0198     		ldr	r0, [sp, #4]
 1672 0204 1549     		ldr	r1, .L257+20
 1673 0206 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 1674 020a 3846     		mov	r0, r7
 1675 020c 65B0     		add	sp, sp, #404
 1676              		@ sp needed
 1677 020e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1678              	.L256:
 1679 0212 C6EB0B03 		rsb	r3, r6, fp
 1680 0216 0133     		adds	r3, r3, #1
 1681 0218 0198     		ldr	r0, [sp, #4]
 1682 021a 1149     		ldr	r1, .L257+24
 1683 021c 039F     		ldr	r7, [sp, #12]
 1684 021e 0AF10302 		add	r2, r10, #3
 1685 0222 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 1686 0226 3846     		mov	r0, r7
 1687 0228 65B0     		add	sp, sp, #404
 1688              		@ sp needed
 1689 022a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1690              	.L253:
 1691 022e 0198     		ldr	r0, [sp, #4]
 1692 0230 0C49     		ldr	r1, .L257+28
 1693 0232 4F46     		mov	r7, r9
 1694 0234 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 1695 0238 D6E7     		b	.L223
 1696              	.L254:
 1697 023a 0198     		ldr	r0, [sp, #4]
 1698 023c 0A49     		ldr	r1, .L257+32
 1699 023e 1F46     		mov	r7, r3
 1700 0240 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 1701 0244 D0E7     		b	.L223
 1702              	.L258:
 1703 0246 00BF     		.align	2
 1704              	.L257:
 1705 0248 000080BF 		.word	-1082130432
 1706 024c 00000000 		.word	.LANCHOR1
 1707 0250 00000000 		.word	.LANCHOR0
 1708 0254 84010000 		.word	.LC13
 1709 0258 64010000 		.word	.LC12
 1710 025c AC010000 		.word	.LC14
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 31


 1711 0260 EC010000 		.word	.LC17
 1712 0264 BC010000 		.word	.LC15
 1713 0268 DC010000 		.word	.LC16
 1714 026c CDCC4C3D 		.word	1028443341
 1715 0270 0000A041 		.word	1101004800
 1716              		.size	_ZN9HeightMap12LoadFromFileEP9FileStoreR9StringRef, .-_ZN9HeightMap12LoadFromFileEP9FileStor
 1717              		.global	_ZN9HeightMap16HeightMapCommentE
 1718              		.global	_ZN14GridDefinition18HeightMapLabelLineE
 1719              		.section	.data._ZN14GridDefinition18HeightMapLabelLineE,"aw",%progbits
 1720              		.align	2
 1721              		.set	.LANCHOR0,. + 0
 1722              		.type	_ZN14GridDefinition18HeightMapLabelLineE, %object
 1723              		.size	_ZN14GridDefinition18HeightMapLabelLineE, 4
 1724              	_ZN14GridDefinition18HeightMapLabelLineE:
 1725 0000 38020000 		.word	.LC19
 1726              		.section	.rodata.str1.4,"aMS",%progbits,1
 1727              		.align	2
 1728              	.LC0:
 1729 0000 58252E31 		.ascii	"X%.1f:%.1f, Y%.1f:%.1f, radius %.1f, spacing %.1f, "
 1729      663A252E 
 1729      31662C20 
 1729      59252E31 
 1729      663A252E 
 1730 0033 25642070 		.ascii	"%d points\000"
 1730      6F696E74 
 1730      7300
 1731 003d 000000   		.space	3
 1732              	.LC1:
 1733 0040 25730A25 		.ascii	"%s\012%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%u,%u\012\000"
 1733      2E32662C 
 1733      252E3266 
 1733      2C252E32 
 1733      662C252E 
 1734              	.LC2:
 1735 0068 25662C25 		.ascii	"%f,%f,%f,%f,%f,%f,%lu,%lu\000"
 1735      662C2566 
 1735      2C25662C 
 1735      25662C25 
 1735      662C256C 
 1736 0082 0000     		.space	2
 1737              	.LC3:
 1738 0084 53706163 		.ascii	"Spacing too small\000"
 1738      696E6720 
 1738      746F6F20 
 1738      736D616C 
 1738      6C00
 1739 0096 0000     		.space	2
 1740              	.LC4:
 1741 0098 58207261 		.ascii	"X range too small\000"
 1741      6E676520 
 1741      746F6F20 
 1741      736D616C 
 1741      6C00
 1742 00aa 0000     		.space	2
 1743              	.LC5:
 1744 00ac 59207261 		.ascii	"Y range too small\000"
 1744      6E676520 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 32


 1744      746F6F20 
 1744      736D616C 
 1744      6C00
 1745 00be 0000     		.space	2
 1746              	.LC6:
 1747 00c0 546F6F20 		.ascii	"Too many grid points; suggest increase spacing to %"
 1747      6D616E79 
 1747      20677269 
 1747      6420706F 
 1747      696E7473 
 1748 00f3 2E31666D 		.ascii	".1fmm\000"
 1748      6D00
 1749 00f9 000000   		.space	3
 1750              	.LC7:
 1751 00fc 42616420 		.ascii	"Bad radius\000"
 1751      72616469 
 1751      757300
 1752 0107 00       		.space	1
 1753              	.LC8:
 1754 0108 2067656E 		.ascii	" generated at %04u-%02u-%02u %02u:%02u\000"
 1754      65726174 
 1754      65642061 
 1754      74202530 
 1754      34752D25 
 1755 012f 00       		.space	1
 1756              	.LC9:
 1757 0130 2C206D65 		.ascii	", mean error %.2f, deviation %.2f\012\000"
 1757      616E2065 
 1757      72726F72 
 1757      20252E32 
 1757      662C2064 
 1758 0153 00       		.space	1
 1759              	.LC10:
 1760 0154 25372E33 		.ascii	"%7.3f%\000"
 1760      662500
 1761 015b 00       		.space	1
 1762              	.LC11:
 1763 015c 20202020 		.ascii	"      0\000"
 1763      20203000 
 1764              	.LC12:
 1765 0164 6661696C 		.ascii	"failed to read line from file\000"
 1765      65642074 
 1765      6F207265 
 1765      6164206C 
 1765      696E6520 
 1766 0182 0000     		.space	2
 1767              	.LC13:
 1768 0184 62616420 		.ascii	"bad header line or wrong version header\000"
 1768      68656164 
 1768      6572206C 
 1768      696E6520 
 1768      6F722077 
 1769              	.LC14:
 1770 01ac 62616420 		.ascii	"bad label line\000"
 1770      6C616265 
 1770      6C206C69 
 1770      6E6500
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccnlg7I5.s 			page 33


 1771 01bb 00       		.space	1
 1772              	.LC15:
 1773 01bc 6661696C 		.ascii	"failed to parse grid parameters\000"
 1773      65642074 
 1773      6F207061 
 1773      72736520 
 1773      67726964 
 1774              	.LC16:
 1775 01dc 696E7661 		.ascii	"invalid grid\000"
 1775      6C696420 
 1775      67726964 
 1775      00
 1776 01e9 000000   		.space	3
 1777              	.LC17:
 1778 01ec 6E756D62 		.ascii	"number expected at line %u column %d\000"
 1778      65722065 
 1778      78706563 
 1778      74656420 
 1778      6174206C 
 1779 0211 000000   		.space	3
 1780              	.LC18:
 1781 0214 52657052 		.ascii	"RepRapFirmware height map file v1\000"
 1781      61704669 
 1781      726D7761 
 1781      72652068 
 1781      65696768 
 1782 0236 0000     		.space	2
 1783              	.LC19:
 1784 0238 786D696E 		.ascii	"xmin,xmax,ymin,ymax,radius,spacing,xnum,ynum\000"
 1784      2C786D61 
 1784      782C796D 
 1784      696E2C79 
 1784      6D61782C 
 1785 0265 000000   		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1786              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1787              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1788              	_ZL28cpu_irq_prev_interrupt_state:
 1789 0000 00       		.space	1
 1790              		.section	.data._ZN9HeightMap16HeightMapCommentE,"aw",%progbits
 1791              		.align	2
 1792              		.set	.LANCHOR1,. + 0
 1793              		.type	_ZN9HeightMap16HeightMapCommentE, %object
 1794              		.size	_ZN9HeightMap16HeightMapCommentE, 4
 1795              	_ZN9HeightMap16HeightMapCommentE:
 1796 0000 14020000 		.word	.LC18
 1797              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1798              		.align	2
 1799              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1800              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1801              	_ZL32cpu_irq_critical_section_counter:
 1802 0000 00000000 		.space	4
 1803              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
