ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 1


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
  14              		.file	"Grid.cpp"
  15              		.section	.text._ZN14GridDefinitionC2Ev,"ax",%progbits
  16              		.align	2
  17              		.global	_ZN14GridDefinitionC2Ev
  18              		.thumb
  19              		.thumb_func
  20              		.type	_ZN14GridDefinitionC2Ev, %function
  21              	_ZN14GridDefinitionC2Ev:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 70B4     		push	{r4, r5, r6}
  26 0002 0949     		ldr	r1, .L2
  27 0004 094E     		ldr	r6, .L2+4
  28 0006 0A4D     		ldr	r5, .L2+8
  29 0008 0024     		movs	r4, #0
  30 000a 0022     		movs	r2, #0
  31 000c 0460     		str	r4, [r0]	@ float
  32 000e 8460     		str	r4, [r0, #8]	@ float
  33 0010 4661     		str	r6, [r0, #20]	@ float
  34 0012 0562     		str	r5, [r0, #32]	@ float
  35 0014 4160     		str	r1, [r0, #4]	@ float
  36 0016 C160     		str	r1, [r0, #12]	@ float
  37 0018 0161     		str	r1, [r0, #16]	@ float
  38 001a 8261     		str	r2, [r0, #24]
  39 001c C261     		str	r2, [r0, #28]
  40 001e 80F82420 		strb	r2, [r0, #36]
  41 0022 70BC     		pop	{r4, r5, r6}
  42 0024 7047     		bx	lr
  43              	.L3:
  44 0026 00BF     		.align	2
  45              	.L2:
  46 0028 000080BF 		.word	-1082130432
  47 002c 0000A041 		.word	1101004800
  48 0030 CDCC4C3D 		.word	1028443341
  49              		.size	_ZN14GridDefinitionC2Ev, .-_ZN14GridDefinitionC2Ev
  50              		.global	_ZN14GridDefinitionC1Ev
  51              		.thumb_set _ZN14GridDefinitionC1Ev,_ZN14GridDefinitionC2Ev
  52              		.global	__aeabi_fdiv
  53              		.global	__aeabi_fsub
  54              		.global	__aeabi_fcmpge
  55              		.global	__aeabi_fmul
  56              		.global	__aeabi_f2uiz
  57              		.global	__aeabi_fcmplt
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 2


  58              		.section	.text._ZN14GridDefinitionC2EPKfS1_ff,"ax",%progbits
  59              		.align	2
  60              		.global	_ZN14GridDefinitionC2EPKfS1_ff
  61              		.thumb
  62              		.thumb_func
  63              		.type	_ZN14GridDefinitionC2EPKfS1_ff, %function
  64              	_ZN14GridDefinitionC2EPKfS1_ff:
  65              		@ args = 4, pretend = 0, frame = 0
  66              		@ frame_needed = 0, uses_anonymous_args = 0
  67 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
  68 0004 D1F80090 		ldr	r9, [r1]	@ float
  69 0008 0A9D     		ldr	r5, [sp, #40]	@ float
  70 000a C0F80090 		str	r9, [r0]	@ float
  71 000e D1F80480 		ldr	r8, [r1, #4]	@ float
  72 0012 0446     		mov	r4, r0
  73 0014 C0F80480 		str	r8, [r0, #4]	@ float
  74 0018 1668     		ldr	r6, [r2]	@ float
  75 001a 2946     		mov	r1, r5
  76 001c 8660     		str	r6, [r0, #8]	@ float
  77 001e 5768     		ldr	r7, [r2, #4]	@ float
  78 0020 9B46     		mov	fp, r3
  79 0022 C760     		str	r7, [r0, #12]	@ float
  80 0024 2361     		str	r3, [r4, #16]	@ float
  81 0026 4561     		str	r5, [r0, #20]	@ float
  82 0028 4FF07E50 		mov	r0, #1065353216
  83 002c FFF7FEFF 		bl	__aeabi_fdiv
  84 0030 8246     		mov	r10, r0
  85 0032 4946     		mov	r1, r9
  86 0034 4046     		mov	r0, r8
  87 0036 C4F820A0 		str	r10, [r4, #32]	@ float
  88 003a FFF7FEFF 		bl	__aeabi_fsub
  89 003e 4FF07E51 		mov	r1, #1065353216
  90 0042 8046     		mov	r8, r0
  91 0044 FFF7FEFF 		bl	__aeabi_fcmpge
  92 0048 90B3     		cbz	r0, .L5
  93 004a 2846     		mov	r0, r5
  94 004c 2949     		ldr	r1, .L26
  95 004e FFF7FEFF 		bl	__aeabi_fcmpge
  96 0052 68B3     		cbz	r0, .L5
  97 0054 4146     		mov	r1, r8
  98 0056 5046     		mov	r0, r10
  99 0058 FFF7FEFF 		bl	__aeabi_fmul
 100 005c FFF7FEFF 		bl	__aeabi_f2uiz
 101 0060 451C     		adds	r5, r0, #1
 102 0062 3146     		mov	r1, r6
 103 0064 A561     		str	r5, [r4, #24]
 104 0066 3846     		mov	r0, r7
 105 0068 FFF7FEFF 		bl	__aeabi_fsub
 106 006c 4FF07E51 		mov	r1, #1065353216
 107 0070 0646     		mov	r6, r0
 108 0072 FFF7FEFF 		bl	__aeabi_fcmpge
 109 0076 60B3     		cbz	r0, .L8
 110 0078 3146     		mov	r1, r6
 111 007a 5046     		mov	r0, r10
 112 007c FFF7FEFF 		bl	__aeabi_fmul
 113 0080 FFF7FEFF 		bl	__aeabi_f2uiz
 114 0084 0130     		adds	r0, r0, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 3


 115 0086 00FB05F3 		mul	r3, r0, r5
 116 008a 013B     		subs	r3, r3, #1
 117 008c 782B     		cmp	r3, #120
 118 008e E061     		str	r0, [r4, #28]
 119 0090 21D8     		bhi	.L11
 120 0092 5846     		mov	r0, fp
 121 0094 0021     		movs	r1, #0
 122 0096 FFF7FEFF 		bl	__aeabi_fcmplt
 123 009a 28B9     		cbnz	r0, .L14
 124 009c 5846     		mov	r0, fp
 125 009e 4FF07E51 		mov	r1, #1065353216
 126 00a2 FFF7FEFF 		bl	__aeabi_fcmpge
 127 00a6 B0B1     		cbz	r0, .L11
 128              	.L14:
 129 00a8 152D     		cmp	r5, #21
 130 00aa 14D8     		bhi	.L11
 131 00ac 0123     		movs	r3, #1
 132 00ae 13E0     		b	.L16
 133              	.L5:
 134 00b0 0023     		movs	r3, #0
 135 00b2 3146     		mov	r1, r6
 136 00b4 3846     		mov	r0, r7
 137 00b6 A361     		str	r3, [r4, #24]
 138 00b8 FFF7FEFF 		bl	__aeabi_fsub
 139 00bc 4FF07E51 		mov	r1, #1065353216
 140 00c0 0646     		mov	r6, r0
 141 00c2 FFF7FEFF 		bl	__aeabi_fcmpge
 142 00c6 20B1     		cbz	r0, .L8
 143 00c8 2846     		mov	r0, r5
 144 00ca 0A49     		ldr	r1, .L26
 145 00cc FFF7FEFF 		bl	__aeabi_fcmpge
 146 00d0 38B9     		cbnz	r0, .L25
 147              	.L8:
 148 00d2 0023     		movs	r3, #0
 149 00d4 E361     		str	r3, [r4, #28]
 150              	.L11:
 151 00d6 0023     		movs	r3, #0
 152              	.L16:
 153 00d8 84F82430 		strb	r3, [r4, #36]
 154 00dc 2046     		mov	r0, r4
 155 00de BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 156              	.L25:
 157 00e2 3146     		mov	r1, r6
 158 00e4 5046     		mov	r0, r10
 159 00e6 FFF7FEFF 		bl	__aeabi_fmul
 160 00ea FFF7FEFF 		bl	__aeabi_f2uiz
 161 00ee 0130     		adds	r0, r0, #1
 162 00f0 E061     		str	r0, [r4, #28]
 163 00f2 F0E7     		b	.L11
 164              	.L27:
 165              		.align	2
 166              	.L26:
 167 00f4 CDCCCC3D 		.word	1036831949
 168              		.size	_ZN14GridDefinitionC2EPKfS1_ff, .-_ZN14GridDefinitionC2EPKfS1_ff
 169              		.global	_ZN14GridDefinitionC1EPKfS1_ff
 170              		.thumb_set _ZN14GridDefinitionC1EPKfS1_ff,_ZN14GridDefinitionC2EPKfS1_ff
 171              		.section	.text._ZN14GridDefinition13CheckValidityEv,"ax",%progbits
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 4


 172              		.align	2
 173              		.global	_ZN14GridDefinition13CheckValidityEv
 174              		.thumb
 175              		.thumb_func
 176              		.type	_ZN14GridDefinition13CheckValidityEv, %function
 177              	_ZN14GridDefinition13CheckValidityEv:
 178              		@ args = 0, pretend = 0, frame = 0
 179              		@ frame_needed = 0, uses_anonymous_args = 0
 180 0000 70B5     		push	{r4, r5, r6, lr}
 181 0002 C369     		ldr	r3, [r0, #28]
 182 0004 8569     		ldr	r5, [r0, #24]
 183 0006 0446     		mov	r4, r0
 184 0008 03FB05F3 		mul	r3, r3, r5
 185 000c 013B     		subs	r3, r3, #1
 186 000e 782B     		cmp	r3, #120
 187 0010 12D8     		bhi	.L32
 188 0012 0669     		ldr	r6, [r0, #16]	@ float
 189 0014 0021     		movs	r1, #0
 190 0016 3046     		mov	r0, r6
 191 0018 FFF7FEFF 		bl	__aeabi_fcmplt
 192 001c 28B9     		cbnz	r0, .L30
 193 001e 3046     		mov	r0, r6
 194 0020 4FF07E51 		mov	r1, #1065353216
 195 0024 FFF7FEFF 		bl	__aeabi_fcmpge
 196 0028 50B1     		cbz	r0, .L34
 197              	.L30:
 198 002a 152D     		cmp	r5, #21
 199 002c 8CBF     		ite	hi
 200 002e 0025     		movhi	r5, #0
 201 0030 0125     		movls	r5, #1
 202 0032 84F82450 		strb	r5, [r4, #36]
 203 0036 70BD     		pop	{r4, r5, r6, pc}
 204              	.L32:
 205 0038 0025     		movs	r5, #0
 206              	.L29:
 207 003a 84F82450 		strb	r5, [r4, #36]
 208 003e 70BD     		pop	{r4, r5, r6, pc}
 209              	.L34:
 210 0040 0546     		mov	r5, r0
 211 0042 FAE7     		b	.L29
 212              		.size	_ZN14GridDefinition13CheckValidityEv, .-_ZN14GridDefinition13CheckValidityEv
 213              		.global	__aeabi_ui2f
 214              		.global	__aeabi_fadd
 215              		.section	.text._ZNK14GridDefinition14GetXCoordinateEj,"ax",%progbits
 216              		.align	2
 217              		.global	_ZNK14GridDefinition14GetXCoordinateEj
 218              		.thumb
 219              		.thumb_func
 220              		.type	_ZNK14GridDefinition14GetXCoordinateEj, %function
 221              	_ZNK14GridDefinition14GetXCoordinateEj:
 222              		@ args = 0, pretend = 0, frame = 0
 223              		@ frame_needed = 0, uses_anonymous_args = 0
 224 0000 10B5     		push	{r4, lr}
 225 0002 0446     		mov	r4, r0
 226 0004 0846     		mov	r0, r1
 227 0006 FFF7FEFF 		bl	__aeabi_ui2f
 228 000a 6169     		ldr	r1, [r4, #20]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 5


 229 000c FFF7FEFF 		bl	__aeabi_fmul
 230 0010 2168     		ldr	r1, [r4]	@ float
 231 0012 FFF7FEFF 		bl	__aeabi_fadd
 232 0016 10BD     		pop	{r4, pc}
 233              		.size	_ZNK14GridDefinition14GetXCoordinateEj, .-_ZNK14GridDefinition14GetXCoordinateEj
 234              		.section	.text._ZNK14GridDefinition14GetYCoordinateEj,"ax",%progbits
 235              		.align	2
 236              		.global	_ZNK14GridDefinition14GetYCoordinateEj
 237              		.thumb
 238              		.thumb_func
 239              		.type	_ZNK14GridDefinition14GetYCoordinateEj, %function
 240              	_ZNK14GridDefinition14GetYCoordinateEj:
 241              		@ args = 0, pretend = 0, frame = 0
 242              		@ frame_needed = 0, uses_anonymous_args = 0
 243 0000 10B5     		push	{r4, lr}
 244 0002 0446     		mov	r4, r0
 245 0004 0846     		mov	r0, r1
 246 0006 FFF7FEFF 		bl	__aeabi_ui2f
 247 000a 6169     		ldr	r1, [r4, #20]	@ float
 248 000c FFF7FEFF 		bl	__aeabi_fmul
 249 0010 A168     		ldr	r1, [r4, #8]	@ float
 250 0012 FFF7FEFF 		bl	__aeabi_fadd
 251 0016 10BD     		pop	{r4, pc}
 252              		.size	_ZNK14GridDefinition14GetYCoordinateEj, .-_ZNK14GridDefinition14GetYCoordinateEj
 253              		.section	.text._ZNK14GridDefinition10IsInRadiusEff,"ax",%progbits
 254              		.align	2
 255              		.global	_ZNK14GridDefinition10IsInRadiusEff
 256              		.thumb
 257              		.thumb_func
 258              		.type	_ZNK14GridDefinition10IsInRadiusEff, %function
 259              	_ZNK14GridDefinition10IsInRadiusEff:
 260              		@ args = 0, pretend = 0, frame = 0
 261              		@ frame_needed = 0, uses_anonymous_args = 0
 262 0000 70B5     		push	{r4, r5, r6, lr}
 263 0002 0469     		ldr	r4, [r0, #16]	@ float
 264 0004 0E46     		mov	r6, r1
 265 0006 2046     		mov	r0, r4
 266 0008 0021     		movs	r1, #0
 267 000a 1546     		mov	r5, r2
 268 000c FFF7FEFF 		bl	__aeabi_fcmplt
 269 0010 E8B9     		cbnz	r0, .L40
 270 0012 3146     		mov	r1, r6
 271 0014 3046     		mov	r0, r6
 272 0016 FFF7FEFF 		bl	__aeabi_fmul
 273 001a 2946     		mov	r1, r5
 274 001c 0646     		mov	r6, r0
 275 001e 2846     		mov	r0, r5
 276 0020 FFF7FEFF 		bl	__aeabi_fmul
 277 0024 0146     		mov	r1, r0
 278 0026 3046     		mov	r0, r6
 279 0028 FFF7FEFF 		bl	__aeabi_fadd
 280 002c 2146     		mov	r1, r4
 281 002e 0546     		mov	r5, r0
 282 0030 2046     		mov	r0, r4
 283 0032 FFF7FEFF 		bl	__aeabi_fmul
 284 0036 0146     		mov	r1, r0
 285 0038 2846     		mov	r0, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 6


 286 003a FFF7FEFF 		bl	__aeabi_fcmplt
 287 003e 4FF00103 		mov	r3, #1
 288 0042 08B1     		cbz	r0, .L41
 289 0044 D8B2     		uxtb	r0, r3
 290 0046 70BD     		pop	{r4, r5, r6, pc}
 291              	.L41:
 292 0048 0346     		mov	r3, r0
 293 004a D8B2     		uxtb	r0, r3
 294 004c 70BD     		pop	{r4, r5, r6, pc}
 295              	.L40:
 296 004e 0120     		movs	r0, #1
 297 0050 70BD     		pop	{r4, r5, r6, pc}
 298              		.size	_ZNK14GridDefinition10IsInRadiusEff, .-_ZNK14GridDefinition10IsInRadiusEff
 299              		.global	__aeabi_f2d
 300 0052 00BF     		.section	.text._ZNK14GridDefinition15PrintParametersER9StringRef,"ax",%progbits
 301              		.align	2
 302              		.global	_ZNK14GridDefinition15PrintParametersER9StringRef
 303              		.thumb
 304              		.thumb_func
 305              		.type	_ZNK14GridDefinition15PrintParametersER9StringRef, %function
 306              	_ZNK14GridDefinition15PrintParametersER9StringRef:
 307              		@ args = 0, pretend = 0, frame = 0
 308              		@ frame_needed = 0, uses_anonymous_args = 0
 309 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 310 0002 0646     		mov	r6, r0
 311 0004 8DB0     		sub	sp, sp, #52
 312 0006 0068     		ldr	r0, [r0]	@ float
 313 0008 0F46     		mov	r7, r1
 314 000a FFF7FEFF 		bl	__aeabi_f2d
 315 000e 0446     		mov	r4, r0
 316 0010 7068     		ldr	r0, [r6, #4]	@ float
 317 0012 0D46     		mov	r5, r1
 318 0014 FFF7FEFF 		bl	__aeabi_f2d
 319 0018 CDE90001 		strd	r0, [sp]
 320 001c B068     		ldr	r0, [r6, #8]	@ float
 321 001e FFF7FEFF 		bl	__aeabi_f2d
 322 0022 CDE90201 		strd	r0, [sp, #8]
 323 0026 F068     		ldr	r0, [r6, #12]	@ float
 324 0028 FFF7FEFF 		bl	__aeabi_f2d
 325 002c CDE90401 		strd	r0, [sp, #16]
 326 0030 3069     		ldr	r0, [r6, #16]	@ float
 327 0032 FFF7FEFF 		bl	__aeabi_f2d
 328 0036 CDE90601 		strd	r0, [sp, #24]
 329 003a 7069     		ldr	r0, [r6, #20]	@ float
 330 003c FFF7FEFF 		bl	__aeabi_f2d
 331 0040 F369     		ldr	r3, [r6, #28]
 332 0042 B669     		ldr	r6, [r6, #24]
 333 0044 2246     		mov	r2, r4
 334 0046 06FB03F6 		mul	r6, r6, r3
 335 004a CDE90801 		strd	r0, [sp, #32]
 336 004e 2B46     		mov	r3, r5
 337 0050 3846     		mov	r0, r7
 338 0052 0A96     		str	r6, [sp, #40]
 339 0054 0249     		ldr	r1, .L43
 340 0056 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 341 005a 0DB0     		add	sp, sp, #52
 342              		@ sp needed
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 7


 343 005c F0BD     		pop	{r4, r5, r6, r7, pc}
 344              	.L44:
 345 005e 00BF     		.align	2
 346              	.L43:
 347 0060 00000000 		.word	.LC0
 348              		.size	_ZNK14GridDefinition15PrintParametersER9StringRef, .-_ZNK14GridDefinition15PrintParametersER
 349              		.section	.text._ZNK14GridDefinition25WriteHeadingAndParametersER9StringRef,"ax",%progbits
 350              		.align	2
 351              		.global	_ZNK14GridDefinition25WriteHeadingAndParametersER9StringRef
 352              		.thumb
 353              		.thumb_func
 354              		.type	_ZNK14GridDefinition25WriteHeadingAndParametersER9StringRef, %function
 355              	_ZNK14GridDefinition25WriteHeadingAndParametersER9StringRef:
 356              		@ args = 0, pretend = 0, frame = 0
 357              		@ frame_needed = 0, uses_anonymous_args = 0
 358 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 359 0002 174B     		ldr	r3, .L46
 360 0004 8FB0     		sub	sp, sp, #60
 361 0006 0446     		mov	r4, r0
 362 0008 0068     		ldr	r0, [r0]	@ float
 363 000a 1E68     		ldr	r6, [r3]
 364 000c 0D46     		mov	r5, r1
 365 000e FFF7FEFF 		bl	__aeabi_f2d
 366 0012 CDE90001 		strd	r0, [sp]
 367 0016 6068     		ldr	r0, [r4, #4]	@ float
 368 0018 FFF7FEFF 		bl	__aeabi_f2d
 369 001c CDE90201 		strd	r0, [sp, #8]
 370 0020 A068     		ldr	r0, [r4, #8]	@ float
 371 0022 FFF7FEFF 		bl	__aeabi_f2d
 372 0026 CDE90401 		strd	r0, [sp, #16]
 373 002a E068     		ldr	r0, [r4, #12]	@ float
 374 002c FFF7FEFF 		bl	__aeabi_f2d
 375 0030 CDE90601 		strd	r0, [sp, #24]
 376 0034 2069     		ldr	r0, [r4, #16]	@ float
 377 0036 FFF7FEFF 		bl	__aeabi_f2d
 378 003a CDE90801 		strd	r0, [sp, #32]
 379 003e 6069     		ldr	r0, [r4, #20]	@ float
 380 0040 FFF7FEFF 		bl	__aeabi_f2d
 381 0044 A769     		ldr	r7, [r4, #24]
 382 0046 E369     		ldr	r3, [r4, #28]
 383 0048 3246     		mov	r2, r6
 384 004a CDE90A01 		strd	r0, [sp, #40]
 385 004e 0C97     		str	r7, [sp, #48]
 386 0050 2846     		mov	r0, r5
 387 0052 0D93     		str	r3, [sp, #52]
 388 0054 0349     		ldr	r1, .L46+4
 389 0056 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 390 005a 0FB0     		add	sp, sp, #60
 391              		@ sp needed
 392 005c F0BD     		pop	{r4, r5, r6, r7, pc}
 393              	.L47:
 394 005e 00BF     		.align	2
 395              	.L46:
 396 0060 00000000 		.word	.LANCHOR0
 397 0064 40000000 		.word	.LC1
 398              		.size	_ZNK14GridDefinition25WriteHeadingAndParametersER9StringRef, .-_ZNK14GridDefinition25WriteHe
 399              		.section	.text._ZN14GridDefinition12CheckHeadingERK9StringRef,"ax",%progbits
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 8


 400              		.align	2
 401              		.global	_ZN14GridDefinition12CheckHeadingERK9StringRef
 402              		.thumb
 403              		.thumb_func
 404              		.type	_ZN14GridDefinition12CheckHeadingERK9StringRef, %function
 405              	_ZN14GridDefinition12CheckHeadingERK9StringRef:
 406              		@ args = 0, pretend = 0, frame = 0
 407              		@ frame_needed = 0, uses_anonymous_args = 0
 408              		@ link register save eliminated.
 409 0000 024B     		ldr	r3, .L49
 410 0002 0068     		ldr	r0, [r0]
 411 0004 1968     		ldr	r1, [r3]
 412 0006 FFF7FEBF 		b	_Z16StringStartsWithPKcS0_
 413              	.L50:
 414 000a 00BF     		.align	2
 415              	.L49:
 416 000c 00000000 		.word	.LANCHOR0
 417              		.size	_ZN14GridDefinition12CheckHeadingERK9StringRef, .-_ZN14GridDefinition12CheckHeadingERK9Strin
 418              		.section	.text._ZN14GridDefinition14ReadParametersERK9StringRef,"ax",%progbits
 419              		.align	2
 420              		.global	_ZN14GridDefinition14ReadParametersERK9StringRef
 421              		.thumb
 422              		.thumb_func
 423              		.type	_ZN14GridDefinition14ReadParametersERK9StringRef, %function
 424              	_ZN14GridDefinition14ReadParametersERK9StringRef:
 425              		@ args = 0, pretend = 0, frame = 0
 426              		@ frame_needed = 0, uses_anonymous_args = 0
 427 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 428 0002 0446     		mov	r4, r0
 429 0004 87B0     		sub	sp, sp, #28
 430 0006 0868     		ldr	r0, [r1]
 431 0008 04F11005 		add	r5, r4, #16
 432 000c 04F11401 		add	r1, r4, #20
 433 0010 04F11802 		add	r2, r4, #24
 434 0014 04F11C03 		add	r3, r4, #28
 435 0018 04F10807 		add	r7, r4, #8
 436 001c 04F10C06 		add	r6, r4, #12
 437 0020 0295     		str	r5, [sp, #8]
 438 0022 0391     		str	r1, [sp, #12]
 439 0024 0492     		str	r2, [sp, #16]
 440 0026 0593     		str	r3, [sp, #20]
 441 0028 0097     		str	r7, [sp]
 442 002a 231D     		adds	r3, r4, #4
 443 002c 0196     		str	r6, [sp, #4]
 444 002e 2246     		mov	r2, r4
 445 0030 1949     		ldr	r1, .L60
 446 0032 FFF7FEFF 		bl	sscanf
 447 0036 B0F10803 		subs	r3, r0, #8
 448 003a 5D42     		rsbs	r5, r3, #0
 449 003c 5D41     		adcs	r5, r5, r3
 450 003e BDB1     		cbz	r5, .L52
 451 0040 A669     		ldr	r6, [r4, #24]
 452 0042 E369     		ldr	r3, [r4, #28]
 453 0044 03FB06F3 		mul	r3, r3, r6
 454 0048 013B     		subs	r3, r3, #1
 455 004a 782B     		cmp	r3, #120
 456 004c 15D8     		bhi	.L57
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 9


 457 004e 2769     		ldr	r7, [r4, #16]	@ float
 458 0050 0021     		movs	r1, #0
 459 0052 3846     		mov	r0, r7
 460 0054 FFF7FEFF 		bl	__aeabi_fcmplt
 461 0058 28B9     		cbnz	r0, .L54
 462 005a 3846     		mov	r0, r7
 463 005c 4FF07E51 		mov	r1, #1065353216
 464 0060 FFF7FEFF 		bl	__aeabi_fcmpge
 465 0064 A8B1     		cbz	r0, .L59
 466              	.L54:
 467 0066 152E     		cmp	r6, #21
 468 0068 8CBF     		ite	hi
 469 006a 0026     		movhi	r6, #0
 470 006c 0126     		movls	r6, #1
 471 006e 05E0     		b	.L53
 472              	.L52:
 473 0070 2846     		mov	r0, r5
 474 0072 84F82450 		strb	r5, [r4, #36]
 475 0076 07B0     		add	sp, sp, #28
 476              		@ sp needed
 477 0078 F0BD     		pop	{r4, r5, r6, r7, pc}
 478              	.L57:
 479 007a 0026     		movs	r6, #0
 480              	.L53:
 481 007c 84F82460 		strb	r6, [r4, #36]
 482 0080 6169     		ldr	r1, [r4, #20]	@ float
 483 0082 4FF07E50 		mov	r0, #1065353216
 484 0086 FFF7FEFF 		bl	__aeabi_fdiv
 485 008a 2062     		str	r0, [r4, #32]	@ float
 486 008c 2846     		mov	r0, r5
 487 008e 07B0     		add	sp, sp, #28
 488              		@ sp needed
 489 0090 F0BD     		pop	{r4, r5, r6, r7, pc}
 490              	.L59:
 491 0092 0646     		mov	r6, r0
 492 0094 F2E7     		b	.L53
 493              	.L61:
 494 0096 00BF     		.align	2
 495              	.L60:
 496 0098 68000000 		.word	.LC2
 497              		.size	_ZN14GridDefinition14ReadParametersERK9StringRef, .-_ZN14GridDefinition14ReadParametersERK9S
 498              		.global	__aeabi_fcmpgt
 499              		.global	__aeabi_dmul
 500              		.global	__aeabi_dadd
 501              		.global	__aeabi_d2f
 502              		.global	__aeabi_fcmpun
 503              		.section	.text._ZNK14GridDefinition10PrintErrorEffR9StringRef,"ax",%progbits
 504              		.align	2
 505              		.global	_ZNK14GridDefinition10PrintErrorEffR9StringRef
 506              		.thumb
 507              		.thumb_func
 508              		.type	_ZNK14GridDefinition10PrintErrorEffR9StringRef, %function
 509              	_ZNK14GridDefinition10PrintErrorEffR9StringRef:
 510              		@ args = 0, pretend = 0, frame = 0
 511              		@ frame_needed = 0, uses_anonymous_args = 0
 512 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 513 0004 0446     		mov	r4, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 10


 514 0006 0F46     		mov	r7, r1
 515 0008 4069     		ldr	r0, [r0, #20]	@ float
 516 000a 3749     		ldr	r1, .L84
 517 000c 9046     		mov	r8, r2
 518 000e 1E46     		mov	r6, r3
 519 0010 FFF7FEFF 		bl	__aeabi_fcmplt
 520 0014 0028     		cmp	r0, #0
 521 0016 49D1     		bne	.L80
 522 0018 A369     		ldr	r3, [r4, #24]
 523 001a 002B     		cmp	r3, #0
 524 001c 5ED0     		beq	.L81
 525 001e E269     		ldr	r2, [r4, #28]
 526 0020 002A     		cmp	r2, #0
 527 0022 49D0     		beq	.L82
 528 0024 152B     		cmp	r3, #21
 529 0026 01D8     		bhi	.L67
 530 0028 792A     		cmp	r2, #121
 531 002a 4BD9     		bls	.L83
 532              	.L67:
 533 002c 4146     		mov	r1, r8
 534 002e 3846     		mov	r0, r7
 535 0030 FFF7FEFF 		bl	__aeabi_fadd
 536 0034 0146     		mov	r1, r0
 537 0036 8146     		mov	r9, r0
 538 0038 FFF7FEFF 		bl	__aeabi_fmul
 539 003c FFF7FEFF 		bl	__aeabi_f2d
 540 0040 0446     		mov	r4, r0
 541 0042 0D46     		mov	r5, r1
 542 0044 3846     		mov	r0, r7
 543 0046 4146     		mov	r1, r8
 544 0048 FFF7FEFF 		bl	__aeabi_fmul
 545 004c FFF7FEFF 		bl	__aeabi_f2d
 546 0050 0022     		movs	r2, #0
 547 0052 264B     		ldr	r3, .L84+4
 548 0054 FFF7FEFF 		bl	__aeabi_dmul
 549 0058 0246     		mov	r2, r0
 550 005a 0B46     		mov	r3, r1
 551 005c 2046     		mov	r0, r4
 552 005e 2946     		mov	r1, r5
 553 0060 FFF7FEFF 		bl	__aeabi_dadd
 554 0064 FFF7FEFF 		bl	__aeabi_d2f
 555 0068 FFF7FEFF 		bl	sqrtf
 556 006c 4946     		mov	r1, r9
 557 006e FFF7FEFF 		bl	__aeabi_fadd
 558 0072 1F49     		ldr	r1, .L84+8
 559 0074 FFF7FEFF 		bl	__aeabi_fdiv
 560 0078 0146     		mov	r1, r0
 561 007a 0446     		mov	r4, r0
 562 007c FFF7FEFF 		bl	__aeabi_fcmpun
 563 0080 50BB     		cbnz	r0, .L73
 564 0082 1C49     		ldr	r1, .L84+12
 565 0084 3846     		mov	r0, r7
 566 0086 FFF7FEFF 		bl	__aeabi_fdiv
 567 008a 0546     		mov	r5, r0
 568 008c 2946     		mov	r1, r5
 569 008e 2046     		mov	r0, r4
 570 0090 FFF7FEFF 		bl	__aeabi_fcmpgt
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 11


 571 0094 00BB     		cbnz	r0, .L73
 572 0096 2846     		mov	r0, r5
 573              	.L69:
 574 0098 FFF7FEFF 		bl	__aeabi_f2d
 575 009c 0246     		mov	r2, r0
 576 009e 0B46     		mov	r3, r1
 577 00a0 3046     		mov	r0, r6
 578 00a2 1549     		ldr	r1, .L84+16
 579 00a4 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 580 00a8 FFF7FEBF 		b	_ZN9StringRef4catfEPKcz
 581              	.L80:
 582 00ac 3046     		mov	r0, r6
 583 00ae 1349     		ldr	r1, .L84+20
 584 00b0 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 585 00b4 FFF7FEBF 		b	_ZN9StringRef3catEPKc
 586              	.L82:
 587 00b8 3046     		mov	r0, r6
 588 00ba 1149     		ldr	r1, .L84+24
 589 00bc BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 590 00c0 FFF7FEBF 		b	_ZN9StringRef3catEPKc
 591              	.L83:
 592 00c4 03FB02F3 		mul	r3, r3, r2
 593 00c8 792B     		cmp	r3, #121
 594 00ca AFD8     		bhi	.L67
 595 00cc 3046     		mov	r0, r6
 596 00ce 0D49     		ldr	r1, .L84+28
 597 00d0 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 598 00d4 FFF7FEBF 		b	_ZN9StringRef3catEPKc
 599              	.L73:
 600 00d8 2046     		mov	r0, r4
 601 00da DDE7     		b	.L69
 602              	.L81:
 603 00dc 3046     		mov	r0, r6
 604 00de 0A49     		ldr	r1, .L84+32
 605 00e0 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 606 00e4 FFF7FEBF 		b	_ZN9StringRef3catEPKc
 607              	.L85:
 608              		.align	2
 609              	.L84:
 610 00e8 CDCCCC3D 		.word	1036831949
 611 00ec 00007E40 		.word	1081999360
 612 00f0 00007043 		.word	1131413504
 613 00f4 0000A041 		.word	1101004800
 614 00f8 C0000000 		.word	.LC6
 615 00fc 84000000 		.word	.LC3
 616 0100 AC000000 		.word	.LC5
 617 0104 FC000000 		.word	.LC7
 618 0108 98000000 		.word	.LC4
 619              		.size	_ZNK14GridDefinition10PrintErrorEffR9StringRef, .-_ZNK14GridDefinition10PrintErrorEffR9Strin
 620              		.section	.text._ZN9HeightMapC2EPf,"ax",%progbits
 621              		.align	2
 622              		.global	_ZN9HeightMapC2EPf
 623              		.thumb
 624              		.thumb_func
 625              		.type	_ZN9HeightMapC2EPf, %function
 626              	_ZN9HeightMapC2EPf:
 627              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 12


 628              		@ frame_needed = 0, uses_anonymous_args = 0
 629              		@ link register save eliminated.
 630 0000 F0B4     		push	{r4, r5, r6, r7}
 631 0002 0A4C     		ldr	r4, .L87
 632 0004 0A4F     		ldr	r7, .L87+4
 633 0006 0B4E     		ldr	r6, .L87+8
 634 0008 0022     		movs	r2, #0
 635 000a 0025     		movs	r5, #0
 636 000c 0560     		str	r5, [r0]	@ float
 637 000e 8560     		str	r5, [r0, #8]	@ float
 638 0010 4761     		str	r7, [r0, #20]	@ float
 639 0012 0662     		str	r6, [r0, #32]	@ float
 640 0014 4460     		str	r4, [r0, #4]	@ float
 641 0016 C460     		str	r4, [r0, #12]	@ float
 642 0018 0461     		str	r4, [r0, #16]	@ float
 643 001a 8162     		str	r1, [r0, #40]
 644 001c 8261     		str	r2, [r0, #24]
 645 001e C261     		str	r2, [r0, #28]
 646 0020 80F82420 		strb	r2, [r0, #36]
 647 0024 80F83820 		strb	r2, [r0, #56]
 648 0028 F0BC     		pop	{r4, r5, r6, r7}
 649 002a 7047     		bx	lr
 650              	.L88:
 651              		.align	2
 652              	.L87:
 653 002c 000080BF 		.word	-1082130432
 654 0030 0000A041 		.word	1101004800
 655 0034 CDCC4C3D 		.word	1028443341
 656              		.size	_ZN9HeightMapC2EPf, .-_ZN9HeightMapC2EPf
 657              		.global	_ZN9HeightMapC1EPf
 658              		.thumb_set _ZN9HeightMapC1EPf,_ZN9HeightMapC2EPf
 659              		.section	.text._ZN9HeightMap7SetGridERK14GridDefinition,"ax",%progbits
 660              		.align	2
 661              		.global	_ZN9HeightMap7SetGridERK14GridDefinition
 662              		.thumb
 663              		.thumb_func
 664              		.type	_ZN9HeightMap7SetGridERK14GridDefinition, %function
 665              	_ZN9HeightMap7SetGridERK14GridDefinition:
 666              		@ args = 0, pretend = 0, frame = 0
 667              		@ frame_needed = 0, uses_anonymous_args = 0
 668              		@ link register save eliminated.
 669 0000 F0B4     		push	{r4, r5, r6, r7}
 670 0002 0023     		movs	r3, #0
 671 0004 80F83830 		strb	r3, [r0, #56]
 672 0008 01F12002 		add	r2, r1, #32
 673 000c 0346     		mov	r3, r0
 674              	.L90:
 675 000e 0F68     		ldr	r7, [r1]	@ unaligned
 676 0010 4E68     		ldr	r6, [r1, #4]	@ unaligned
 677 0012 8D68     		ldr	r5, [r1, #8]	@ unaligned
 678 0014 CC68     		ldr	r4, [r1, #12]	@ unaligned
 679 0016 1031     		adds	r1, r1, #16
 680 0018 9142     		cmp	r1, r2
 681 001a 1F60     		str	r7, [r3]	@ unaligned
 682 001c 5E60     		str	r6, [r3, #4]	@ unaligned
 683 001e 9D60     		str	r5, [r3, #8]	@ unaligned
 684 0020 DC60     		str	r4, [r3, #12]	@ unaligned
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 13


 685 0022 03F11003 		add	r3, r3, #16
 686 0026 F2D1     		bne	.L90
 687 0028 0C68     		ldr	r4, [r1]	@ unaligned
 688 002a 0022     		movs	r2, #0
 689 002c 1C60     		str	r4, [r3]	@ unaligned
 690 002e 0979     		ldrb	r1, [r1, #4]	@ zero_extendqisi2
 691 0030 F0BC     		pop	{r4, r5, r6, r7}
 692 0032 1971     		strb	r1, [r3, #4]
 693 0034 C262     		str	r2, [r0, #44]
 694 0036 0263     		str	r2, [r0, #48]
 695 0038 4263     		str	r2, [r0, #52]
 696 003a 7047     		bx	lr
 697              		.size	_ZN9HeightMap7SetGridERK14GridDefinition, .-_ZN9HeightMap7SetGridERK14GridDefinition
 698              		.section	.text._ZN9HeightMap16ClearGridHeightsEv,"ax",%progbits
 699              		.align	2
 700              		.global	_ZN9HeightMap16ClearGridHeightsEv
 701              		.thumb
 702              		.thumb_func
 703              		.type	_ZN9HeightMap16ClearGridHeightsEv, %function
 704              	_ZN9HeightMap16ClearGridHeightsEv:
 705              		@ args = 0, pretend = 0, frame = 0
 706              		@ frame_needed = 0, uses_anonymous_args = 0
 707              		@ link register save eliminated.
 708 0000 0023     		movs	r3, #0
 709 0002 C362     		str	r3, [r0, #44]
 710 0004 0363     		str	r3, [r0, #48]
 711 0006 4363     		str	r3, [r0, #52]
 712 0008 7047     		bx	lr
 713              		.size	_ZN9HeightMap16ClearGridHeightsEv, .-_ZN9HeightMap16ClearGridHeightsEv
 714 000a 00BF     		.section	.text._ZN9HeightMap13SetGridHeightEjjf,"ax",%progbits
 715              		.align	2
 716              		.global	_ZN9HeightMap13SetGridHeightEjjf
 717              		.thumb
 718              		.thumb_func
 719              		.type	_ZN9HeightMap13SetGridHeightEjjf, %function
 720              	_ZN9HeightMap13SetGridHeightEjjf:
 721              		@ args = 0, pretend = 0, frame = 0
 722              		@ frame_needed = 0, uses_anonymous_args = 0
 723              		@ link register save eliminated.
 724 0000 30B4     		push	{r4, r5}
 725 0002 8469     		ldr	r4, [r0, #24]
 726 0004 04FB0212 		mla	r2, r4, r2, r1
 727 0008 782A     		cmp	r2, #120
 728 000a 0CD8     		bhi	.L93
 729 000c 02F01F01 		and	r1, r2, #31
 730 0010 0124     		movs	r4, #1
 731 0012 8C40     		lsls	r4, r4, r1
 732 0014 816A     		ldr	r1, [r0, #40]
 733 0016 5509     		lsrs	r5, r2, #5
 734 0018 41F82230 		str	r3, [r1, r2, lsl #2]	@ float
 735 001c 00EB8500 		add	r0, r0, r5, lsl #2
 736 0020 C36A     		ldr	r3, [r0, #44]
 737 0022 2343     		orrs	r3, r3, r4
 738 0024 C362     		str	r3, [r0, #44]
 739              	.L93:
 740 0026 30BC     		pop	{r4, r5}
 741 0028 7047     		bx	lr
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 14


 742              		.size	_ZN9HeightMap13SetGridHeightEjjf, .-_ZN9HeightMap13SetGridHeightEjjf
 743              		.global	__aeabi_d2uiz
 744 002a 00BF     		.section	.text._ZNK9HeightMap18GetMinimumSegmentsEf,"ax",%progbits
 745              		.align	2
 746              		.global	_ZNK9HeightMap18GetMinimumSegmentsEf
 747              		.thumb
 748              		.thumb_func
 749              		.type	_ZNK9HeightMap18GetMinimumSegmentsEf, %function
 750              	_ZNK9HeightMap18GetMinimumSegmentsEf:
 751              		@ args = 0, pretend = 0, frame = 0
 752              		@ frame_needed = 0, uses_anonymous_args = 0
 753 0000 38B5     		push	{r3, r4, r5, lr}
 754 0002 0C46     		mov	r4, r1
 755 0004 0546     		mov	r5, r0
 756 0006 0021     		movs	r1, #0
 757 0008 2046     		mov	r0, r4
 758 000a FFF7FEFF 		bl	__aeabi_fcmpgt
 759 000e 68B1     		cbz	r0, .L100
 760 0010 296A     		ldr	r1, [r5, #32]	@ float
 761 0012 2046     		mov	r0, r4
 762 0014 FFF7FEFF 		bl	__aeabi_fmul
 763 0018 FFF7FEFF 		bl	__aeabi_f2d
 764 001c 04A3     		adr	r3, .L101
 765 001e D3E90023 		ldrd	r2, [r3]
 766 0022 FFF7FEFF 		bl	__aeabi_dadd
 767 0026 FFF7FEFF 		bl	__aeabi_d2uiz
 768 002a 38BD     		pop	{r3, r4, r5, pc}
 769              	.L100:
 770 002c 0120     		movs	r0, #1
 771 002e 38BD     		pop	{r3, r4, r5, pc}
 772              	.L102:
 773              		.align	3
 774              	.L101:
 775 0030 9A999999 		.word	-1717986918
 776 0034 9999D93F 		.word	1071225241
 777              		.size	_ZNK9HeightMap18GetMinimumSegmentsEf, .-_ZNK9HeightMap18GetMinimumSegmentsEf
 778              		.global	__aeabi_ui2d
 779              		.global	__aeabi_ddiv
 780              		.global	__aeabi_dsub
 781              		.section	.text._ZNK9HeightMap13GetStatisticsERfS0_,"ax",%progbits
 782              		.align	2
 783              		.global	_ZNK9HeightMap13GetStatisticsERfS0_
 784              		.thumb
 785              		.thumb_func
 786              		.type	_ZNK9HeightMap13GetStatisticsERfS0_, %function
 787              	_ZNK9HeightMap13GetStatisticsERfS0_:
 788              		@ args = 0, pretend = 0, frame = 24
 789              		@ frame_needed = 0, uses_anonymous_args = 0
 790 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 791 0004 C369     		ldr	r3, [r0, #28]
 792 0006 8146     		mov	r9, r0
 793 0008 8069     		ldr	r0, [r0, #24]
 794 000a 87B0     		sub	sp, sp, #28
 795 000c 00FB03FB 		mul	fp, r0, r3
 796 0010 0491     		str	r1, [sp, #16]
 797 0012 0592     		str	r2, [sp, #20]
 798 0014 BBF1000F 		cmp	fp, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 15


 799 0018 3ED0     		beq	.L104
 800 001a 0026     		movs	r6, #0
 801 001c 0027     		movs	r7, #0
 802 001e CDE90267 		strd	r6, [sp, #8]
 803 0022 4FF00008 		mov	r8, #0
 804 0026 C246     		mov	r10, r8
 805 0028 4FF0010C 		mov	ip, #1
 806              	.L107:
 807 002c 08F01F02 		and	r2, r8, #31
 808 0030 0CFA02F2 		lsl	r2, ip, r2
 809 0034 4FEA5813 		lsr	r3, r8, #5
 810 0038 09EB8303 		add	r3, r9, r3, lsl #2
 811 003c DB6A     		ldr	r3, [r3, #44]
 812 003e 1A42     		tst	r2, r3
 813 0040 23D0     		beq	.L105
 814 0042 D9F82830 		ldr	r3, [r9, #40]
 815 0046 0AF1010A 		add	r10, r10, #1
 816 004a 53F82800 		ldr	r0, [r3, r8, lsl #2]	@ float
 817 004e CDF804C0 		str	ip, [sp, #4]
 818 0052 FFF7FEFF 		bl	__aeabi_f2d
 819 0056 0446     		mov	r4, r0
 820 0058 0D46     		mov	r5, r1
 821 005a 2246     		mov	r2, r4
 822 005c DDE90201 		ldrd	r0, [sp, #8]
 823 0060 2B46     		mov	r3, r5
 824 0062 FFF7FEFF 		bl	__aeabi_dadd
 825 0066 2246     		mov	r2, r4
 826 0068 CDE90201 		strd	r0, [sp, #8]
 827 006c 2B46     		mov	r3, r5
 828 006e 2046     		mov	r0, r4
 829 0070 2946     		mov	r1, r5
 830 0072 FFF7FEFF 		bl	__aeabi_dmul
 831 0076 0246     		mov	r2, r0
 832 0078 0B46     		mov	r3, r1
 833 007a 3046     		mov	r0, r6
 834 007c 3946     		mov	r1, r7
 835 007e FFF7FEFF 		bl	__aeabi_dadd
 836 0082 DDF804C0 		ldr	ip, [sp, #4]
 837 0086 0646     		mov	r6, r0
 838 0088 0F46     		mov	r7, r1
 839              	.L105:
 840 008a 08F10108 		add	r8, r8, #1
 841 008e D845     		cmp	r8, fp
 842 0090 CCD1     		bne	.L107
 843 0092 BAF1000F 		cmp	r10, #0
 844 0096 0AD1     		bne	.L108
 845              	.L104:
 846 0098 4FF0000A 		mov	r10, #0
 847 009c 0599     		ldr	r1, [sp, #20]
 848 009e 049A     		ldr	r2, [sp, #16]
 849 00a0 0023     		movs	r3, #0
 850 00a2 5046     		mov	r0, r10
 851 00a4 0B60     		str	r3, [r1]	@ float
 852 00a6 1360     		str	r3, [r2]	@ float
 853 00a8 07B0     		add	sp, sp, #28
 854              		@ sp needed
 855 00aa BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 16


 856              	.L108:
 857 00ae 5046     		mov	r0, r10
 858 00b0 FFF7FEFF 		bl	__aeabi_ui2d
 859 00b4 0446     		mov	r4, r0
 860 00b6 0D46     		mov	r5, r1
 861 00b8 2246     		mov	r2, r4
 862 00ba 2B46     		mov	r3, r5
 863 00bc DDE90201 		ldrd	r0, [sp, #8]
 864 00c0 FFF7FEFF 		bl	__aeabi_ddiv
 865 00c4 FFF7FEFF 		bl	__aeabi_d2f
 866 00c8 0499     		ldr	r1, [sp, #16]
 867 00ca 2246     		mov	r2, r4
 868 00cc 2B46     		mov	r3, r5
 869 00ce 0860     		str	r0, [r1]	@ float
 870 00d0 3046     		mov	r0, r6
 871 00d2 3946     		mov	r1, r7
 872 00d4 FFF7FEFF 		bl	__aeabi_dmul
 873 00d8 0446     		mov	r4, r0
 874 00da 0D46     		mov	r5, r1
 875 00dc DDE90201 		ldrd	r0, [sp, #8]
 876 00e0 0246     		mov	r2, r0
 877 00e2 0B46     		mov	r3, r1
 878 00e4 FFF7FEFF 		bl	__aeabi_dmul
 879 00e8 0246     		mov	r2, r0
 880 00ea 0B46     		mov	r3, r1
 881 00ec 2046     		mov	r0, r4
 882 00ee 2946     		mov	r1, r5
 883 00f0 FFF7FEFF 		bl	__aeabi_dsub
 884 00f4 FFF7FEFF 		bl	sqrt
 885 00f8 FFF7FEFF 		bl	__aeabi_d2f
 886 00fc 0446     		mov	r4, r0
 887 00fe 5046     		mov	r0, r10
 888 0100 FFF7FEFF 		bl	__aeabi_ui2f
 889 0104 0146     		mov	r1, r0
 890 0106 2046     		mov	r0, r4
 891 0108 FFF7FEFF 		bl	__aeabi_fdiv
 892 010c 059A     		ldr	r2, [sp, #20]
 893 010e 1060     		str	r0, [r2]	@ float
 894 0110 5046     		mov	r0, r10
 895 0112 07B0     		add	sp, sp, #28
 896              		@ sp needed
 897 0114 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 898              		.size	_ZNK9HeightMap13GetStatisticsERfS0_, .-_ZNK9HeightMap13GetStatisticsERfS0_
 899              		.section	.text._ZNK9HeightMap10SaveToFileEP9FileStore,"ax",%progbits
 900              		.align	2
 901              		.global	_ZNK9HeightMap10SaveToFileEP9FileStore
 902              		.thumb
 903              		.thumb_func
 904              		.type	_ZNK9HeightMap10SaveToFileEP9FileStore, %function
 905              	_ZNK9HeightMap10SaveToFileEP9FileStore:
 906              		@ args = 0, pretend = 0, frame = 520
 907              		@ frame_needed = 0, uses_anonymous_args = 0
 908 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 909 0004 534B     		ldr	r3, .L147
 910 0006 ADF5077D 		sub	sp, sp, #540
 911 000a 534C     		ldr	r4, .L147+4
 912 000c 0022     		movs	r2, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 17


 913 000e 0646     		mov	r6, r0
 914 0010 8A46     		mov	r10, r1
 915 0012 4FF4FA75 		mov	r5, #500
 916 0016 1968     		ldr	r1, [r3]
 917 0018 07A8     		add	r0, sp, #28
 918 001a 09AB     		add	r3, sp, #36
 919 001c 0895     		str	r5, [sp, #32]
 920 001e 0793     		str	r3, [sp, #28]
 921 0020 8DF82420 		strb	r2, [sp, #36]
 922 0024 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 923 0028 2068     		ldr	r0, [r4]
 924 002a FFF7FEFF 		bl	_ZNK8Platform13IsDateTimeSetEv
 925 002e 0028     		cmp	r0, #0
 926 0030 78D1     		bne	.L144
 927 0032 06AF     		add	r7, sp, #24
 928              	.L117:
 929 0034 3A46     		mov	r2, r7
 930 0036 05A9     		add	r1, sp, #20
 931 0038 3046     		mov	r0, r6
 932 003a FFF7FEFF 		bl	_ZNK9HeightMap13GetStatisticsERfS0_
 933 003e 0598     		ldr	r0, [sp, #20]	@ float
 934 0040 FFF7FEFF 		bl	__aeabi_f2d
 935 0044 0446     		mov	r4, r0
 936 0046 3868     		ldr	r0, [r7]	@ float
 937 0048 0D46     		mov	r5, r1
 938 004a FFF7FEFF 		bl	__aeabi_f2d
 939 004e 2246     		mov	r2, r4
 940 0050 CDE90001 		strd	r0, [sp]
 941 0054 2B46     		mov	r3, r5
 942 0056 4149     		ldr	r1, .L147+8
 943 0058 07A8     		add	r0, sp, #28
 944 005a FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 945 005e 5046     		mov	r0, r10
 946 0060 0799     		ldr	r1, [sp, #28]
 947 0062 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 948 0066 20B9     		cbnz	r0, .L118
 949              	.L120:
 950 0068 0120     		movs	r0, #1
 951 006a 0DF5077D 		add	sp, sp, #540
 952              		@ sp needed
 953 006e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 954              	.L118:
 955 0072 3046     		mov	r0, r6
 956 0074 07A9     		add	r1, sp, #28
 957 0076 FFF7FEFF 		bl	_ZNK14GridDefinition25WriteHeadingAndParametersER9StringRef
 958 007a 5046     		mov	r0, r10
 959 007c 0799     		ldr	r1, [sp, #28]
 960 007e FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 961 0082 0028     		cmp	r0, #0
 962 0084 F0D0     		beq	.L120
 963 0086 F369     		ldr	r3, [r6, #28]
 964 0088 002B     		cmp	r3, #0
 965 008a 41D0     		beq	.L128
 966 008c 4FF00009 		mov	r9, #0
 967 0090 4C46     		mov	r4, r9
 968 0092 CB46     		mov	fp, r9
 969              	.L129:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 18


 970 0094 079B     		ldr	r3, [sp, #28]
 971 0096 83F800B0 		strb	fp, [r3]
 972 009a B369     		ldr	r3, [r6, #24]
 973 009c 4BB3     		cbz	r3, .L122
 974 009e A700     		lsls	r7, r4, #2
 975 00a0 0025     		movs	r5, #0
 976 00a2 4FF00108 		mov	r8, #1
 977 00a6 10E0     		b	.L123
 978              	.L146:
 979 00a8 B36A     		ldr	r3, [r6, #40]
 980 00aa 0135     		adds	r5, r5, #1
 981 00ac D859     		ldr	r0, [r3, r7]	@ float
 982 00ae FFF7FEFF 		bl	__aeabi_f2d
 983 00b2 0B46     		mov	r3, r1
 984 00b4 0246     		mov	r2, r0
 985 00b6 2A49     		ldr	r1, .L147+12
 986 00b8 07A8     		add	r0, sp, #28
 987 00ba FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 988 00be B369     		ldr	r3, [r6, #24]
 989 00c0 0134     		adds	r4, r4, #1
 990 00c2 AB42     		cmp	r3, r5
 991 00c4 15D9     		bls	.L122
 992              	.L127:
 993 00c6 45BB     		cbnz	r5, .L145
 994              	.L124:
 995 00c8 0437     		adds	r7, r7, #4
 996              	.L123:
 997 00ca 04F01F02 		and	r2, r4, #31
 998 00ce 08FA02F2 		lsl	r2, r8, r2
 999 00d2 6309     		lsrs	r3, r4, #5
 1000 00d4 06EB8303 		add	r3, r6, r3, lsl #2
 1001 00d8 DB6A     		ldr	r3, [r3, #44]
 1002 00da 2249     		ldr	r1, .L147+16
 1003 00dc 1A42     		tst	r2, r3
 1004 00de 07A8     		add	r0, sp, #28
 1005 00e0 E2D1     		bne	.L146
 1006 00e2 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 1007 00e6 B369     		ldr	r3, [r6, #24]
 1008 00e8 0135     		adds	r5, r5, #1
 1009 00ea AB42     		cmp	r3, r5
 1010 00ec 04F10104 		add	r4, r4, #1
 1011 00f0 E9D8     		bhi	.L127
 1012              	.L122:
 1013 00f2 0A21     		movs	r1, #10
 1014 00f4 07A8     		add	r0, sp, #28
 1015 00f6 FFF7FEFF 		bl	_ZN9StringRef3catEc
 1016 00fa 5046     		mov	r0, r10
 1017 00fc 0799     		ldr	r1, [sp, #28]
 1018 00fe FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 1019 0102 0028     		cmp	r0, #0
 1020 0104 B0D0     		beq	.L120
 1021 0106 F369     		ldr	r3, [r6, #28]
 1022 0108 09F10109 		add	r9, r9, #1
 1023 010c 4B45     		cmp	r3, r9
 1024 010e C1D8     		bhi	.L129
 1025              	.L128:
 1026 0110 0020     		movs	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 19


 1027 0112 0DF5077D 		add	sp, sp, #540
 1028              		@ sp needed
 1029 0116 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1030              	.L145:
 1031 011a 07A8     		add	r0, sp, #28
 1032 011c 2C21     		movs	r1, #44
 1033 011e FFF7FEFF 		bl	_ZN9StringRef3catEc
 1034 0122 D1E7     		b	.L124
 1035              	.L144:
 1036 0124 2068     		ldr	r0, [r4]
 1037 0126 FFF7FEFF 		bl	_ZNK8Platform11GetDateTimeEv
 1038 012a 06AF     		add	r7, sp, #24
 1039 012c 0690     		str	r0, [sp, #24]
 1040 012e 3846     		mov	r0, r7
 1041 0130 FFF7FEFF 		bl	gmtime
 1042 0134 C168     		ldr	r1, [r0, #12]
 1043 0136 4269     		ldr	r2, [r0, #20]
 1044 0138 0369     		ldr	r3, [r0, #16]
 1045 013a 0091     		str	r1, [sp]
 1046 013c 8168     		ldr	r1, [r0, #8]
 1047 013e 02F26C72 		addw	r2, r2, #1900
 1048 0142 0191     		str	r1, [sp, #4]
 1049 0144 4168     		ldr	r1, [r0, #4]
 1050 0146 07A8     		add	r0, sp, #28
 1051 0148 0291     		str	r1, [sp, #8]
 1052 014a 0749     		ldr	r1, .L147+20
 1053 014c FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 1054 0150 70E7     		b	.L117
 1055              	.L148:
 1056 0152 00BF     		.align	2
 1057              	.L147:
 1058 0154 00000000 		.word	.LANCHOR1
 1059 0158 00000000 		.word	reprap
 1060 015c 30010000 		.word	.LC9
 1061 0160 54010000 		.word	.LC10
 1062 0164 5C010000 		.word	.LC11
 1063 0168 08010000 		.word	.LC8
 1064              		.size	_ZNK9HeightMap10SaveToFileEP9FileStore, .-_ZNK9HeightMap10SaveToFileEP9FileStore
 1065              		.section	.text._ZN9HeightMap12UseHeightMapEb,"ax",%progbits
 1066              		.align	2
 1067              		.global	_ZN9HeightMap12UseHeightMapEb
 1068              		.thumb
 1069              		.thumb_func
 1070              		.type	_ZN9HeightMap12UseHeightMapEb, %function
 1071              	_ZN9HeightMap12UseHeightMapEb:
 1072              		@ args = 0, pretend = 0, frame = 0
 1073              		@ frame_needed = 0, uses_anonymous_args = 0
 1074              		@ link register save eliminated.
 1075 0000 09B1     		cbz	r1, .L150
 1076 0002 90F82410 		ldrb	r1, [r0, #36]	@ zero_extendqisi2
 1077              	.L150:
 1078 0006 80F83810 		strb	r1, [r0, #56]
 1079 000a 7047     		bx	lr
 1080              		.size	_ZN9HeightMap12UseHeightMapEb, .-_ZN9HeightMap12UseHeightMapEb
 1081              		.section	.text._ZNK9HeightMap13InterpolateXYEmmff,"ax",%progbits
 1082              		.align	2
 1083              		.global	_ZNK9HeightMap13InterpolateXYEmmff
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 20


 1084              		.thumb
 1085              		.thumb_func
 1086              		.type	_ZNK9HeightMap13InterpolateXYEmmff, %function
 1087              	_ZNK9HeightMap13InterpolateXYEmmff:
 1088              		@ args = 4, pretend = 0, frame = 16
 1089              		@ frame_needed = 0, uses_anonymous_args = 0
 1090 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1091 0004 85B0     		sub	sp, sp, #20
 1092 0006 D0F818A0 		ldr	r10, [r0, #24]
 1093 000a DDF838B0 		ldr	fp, [sp, #56]	@ float
 1094 000e 02FB0A18 		mla	r8, r2, r10, r1
 1095 0012 0446     		mov	r4, r0
 1096 0014 5946     		mov	r1, fp
 1097 0016 1846     		mov	r0, r3
 1098 0018 9946     		mov	r9, r3
 1099 001a FFF7FEFF 		bl	__aeabi_fmul
 1100 001e A76A     		ldr	r7, [r4, #40]
 1101 0020 4FEA880C 		lsl	ip, r8, #2
 1102 0024 0646     		mov	r6, r0
 1103 0026 57F82800 		ldr	r0, [r7, r8, lsl #2]	@ float
 1104 002a CDF804C0 		str	ip, [sp, #4]
 1105 002e FFF7FEFF 		bl	__aeabi_f2d
 1106 0032 CDE90201 		strd	r0, [sp, #8]
 1107 0036 4846     		mov	r0, r9
 1108 0038 FFF7FEFF 		bl	__aeabi_f2d
 1109 003c 0246     		mov	r2, r0
 1110 003e 0B46     		mov	r3, r1
 1111 0040 0020     		movs	r0, #0
 1112 0042 3149     		ldr	r1, .L153
 1113 0044 FFF7FEFF 		bl	__aeabi_dsub
 1114 0048 0446     		mov	r4, r0
 1115 004a 5846     		mov	r0, fp
 1116 004c 0D46     		mov	r5, r1
 1117 004e FFF7FEFF 		bl	__aeabi_f2d
 1118 0052 0246     		mov	r2, r0
 1119 0054 0B46     		mov	r3, r1
 1120 0056 2046     		mov	r0, r4
 1121 0058 2946     		mov	r1, r5
 1122 005a FFF7FEFF 		bl	__aeabi_dsub
 1123 005e 0446     		mov	r4, r0
 1124 0060 3046     		mov	r0, r6
 1125 0062 0D46     		mov	r5, r1
 1126 0064 FFF7FEFF 		bl	__aeabi_f2d
 1127 0068 0246     		mov	r2, r0
 1128 006a 0B46     		mov	r3, r1
 1129 006c 2046     		mov	r0, r4
 1130 006e 2946     		mov	r1, r5
 1131 0070 FFF7FEFF 		bl	__aeabi_dadd
 1132 0074 DDF804C0 		ldr	ip, [sp, #4]
 1133 0078 0246     		mov	r2, r0
 1134 007a 0B46     		mov	r3, r1
 1135 007c BC44     		add	ip, ip, r7
 1136 007e DDE90201 		ldrd	r0, [sp, #8]
 1137 0082 CDF804C0 		str	ip, [sp, #4]
 1138 0086 FFF7FEFF 		bl	__aeabi_dmul
 1139 008a 0446     		mov	r4, r0
 1140 008c 0D46     		mov	r5, r1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 21


 1141 008e 4846     		mov	r0, r9
 1142 0090 3146     		mov	r1, r6
 1143 0092 FFF7FEFF 		bl	__aeabi_fsub
 1144 0096 DDF804C0 		ldr	ip, [sp, #4]
 1145 009a D044     		add	r8, r8, r10
 1146 009c DCF80410 		ldr	r1, [ip, #4]	@ float
 1147 00a0 FFF7FEFF 		bl	__aeabi_fmul
 1148 00a4 FFF7FEFF 		bl	__aeabi_f2d
 1149 00a8 0246     		mov	r2, r0
 1150 00aa 0B46     		mov	r3, r1
 1151 00ac 2046     		mov	r0, r4
 1152 00ae 2946     		mov	r1, r5
 1153 00b0 FFF7FEFF 		bl	__aeabi_dadd
 1154 00b4 0446     		mov	r4, r0
 1155 00b6 0D46     		mov	r5, r1
 1156 00b8 5846     		mov	r0, fp
 1157 00ba 3146     		mov	r1, r6
 1158 00bc FFF7FEFF 		bl	__aeabi_fsub
 1159 00c0 57F82810 		ldr	r1, [r7, r8, lsl #2]	@ float
 1160 00c4 FFF7FEFF 		bl	__aeabi_fmul
 1161 00c8 FFF7FEFF 		bl	__aeabi_f2d
 1162 00cc 0246     		mov	r2, r0
 1163 00ce 0B46     		mov	r3, r1
 1164 00d0 2046     		mov	r0, r4
 1165 00d2 2946     		mov	r1, r5
 1166 00d4 FFF7FEFF 		bl	__aeabi_dadd
 1167 00d8 4FEA8808 		lsl	r8, r8, #2
 1168 00dc B844     		add	r8, r8, r7
 1169 00de 0446     		mov	r4, r0
 1170 00e0 0D46     		mov	r5, r1
 1171 00e2 3046     		mov	r0, r6
 1172 00e4 D8F80410 		ldr	r1, [r8, #4]	@ float
 1173 00e8 FFF7FEFF 		bl	__aeabi_fmul
 1174 00ec FFF7FEFF 		bl	__aeabi_f2d
 1175 00f0 0246     		mov	r2, r0
 1176 00f2 0B46     		mov	r3, r1
 1177 00f4 2046     		mov	r0, r4
 1178 00f6 2946     		mov	r1, r5
 1179 00f8 FFF7FEFF 		bl	__aeabi_dadd
 1180 00fc FFF7FEFF 		bl	__aeabi_d2f
 1181 0100 05B0     		add	sp, sp, #20
 1182              		@ sp needed
 1183 0102 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1184              	.L154:
 1185 0106 00BF     		.align	2
 1186              	.L153:
 1187 0108 0000F03F 		.word	1072693248
 1188              		.size	_ZNK9HeightMap13InterpolateXYEmmff, .-_ZNK9HeightMap13InterpolateXYEmmff
 1189              		.global	__aeabi_f2iz
 1190              		.section	.text._ZNK9HeightMap26GetInterpolatedHeightErrorEff,"ax",%progbits
 1191              		.align	2
 1192              		.global	_ZNK9HeightMap26GetInterpolatedHeightErrorEff
 1193              		.thumb
 1194              		.thumb_func
 1195              		.type	_ZNK9HeightMap26GetInterpolatedHeightErrorEff, %function
 1196              	_ZNK9HeightMap26GetInterpolatedHeightErrorEff:
 1197              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 22


 1198              		@ frame_needed = 0, uses_anonymous_args = 0
 1199 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1200 0004 90F83830 		ldrb	r3, [r0, #56]	@ zero_extendqisi2
 1201 0008 83B0     		sub	sp, sp, #12
 1202 000a 0446     		mov	r4, r0
 1203 000c 0E46     		mov	r6, r1
 1204 000e 1546     		mov	r5, r2
 1205 0010 002B     		cmp	r3, #0
 1206 0012 7ED0     		beq	.L161
 1207 0014 8069     		ldr	r0, [r0, #24]
 1208 0016 D4F81490 		ldr	r9, [r4, #20]	@ float
 1209 001a 0138     		subs	r0, r0, #1
 1210 001c FFF7FEFF 		bl	__aeabi_ui2f
 1211 0020 4946     		mov	r1, r9
 1212 0022 FFF7FEFF 		bl	__aeabi_fmul
 1213 0026 D4F80080 		ldr	r8, [r4]	@ float
 1214 002a 0146     		mov	r1, r0
 1215 002c 4046     		mov	r0, r8
 1216 002e FFF7FEFF 		bl	__aeabi_fadd
 1217 0032 8346     		mov	fp, r0
 1218 0034 E069     		ldr	r0, [r4, #28]
 1219 0036 A768     		ldr	r7, [r4, #8]	@ float
 1220 0038 0138     		subs	r0, r0, #1
 1221 003a FFF7FEFF 		bl	__aeabi_ui2f
 1222 003e 0146     		mov	r1, r0
 1223 0040 4846     		mov	r0, r9
 1224 0042 FFF7FEFF 		bl	__aeabi_fmul
 1225 0046 0146     		mov	r1, r0
 1226 0048 3846     		mov	r0, r7
 1227 004a FFF7FEFF 		bl	__aeabi_fadd
 1228 004e 3146     		mov	r1, r6
 1229 0050 8246     		mov	r10, r0
 1230 0052 4046     		mov	r0, r8
 1231 0054 FFF7FEFF 		bl	__aeabi_fcmpgt
 1232 0058 00B1     		cbz	r0, .L157
 1233 005a 4646     		mov	r6, r8
 1234              	.L157:
 1235 005c 3846     		mov	r0, r7
 1236 005e 2946     		mov	r1, r5
 1237 0060 FFF7FEFF 		bl	__aeabi_fcmpgt
 1238 0064 00B1     		cbz	r0, .L158
 1239 0066 3D46     		mov	r5, r7
 1240              	.L158:
 1241 0068 2C49     		ldr	r1, .L166
 1242 006a 5846     		mov	r0, fp
 1243 006c FFF7FEFF 		bl	__aeabi_fsub
 1244 0070 8146     		mov	r9, r0
 1245 0072 4946     		mov	r1, r9
 1246 0074 3046     		mov	r0, r6
 1247 0076 FFF7FEFF 		bl	__aeabi_fcmpgt
 1248 007a 0028     		cmp	r0, #0
 1249 007c 47D0     		beq	.L164
 1250              	.L159:
 1251 007e 2749     		ldr	r1, .L166
 1252 0080 5046     		mov	r0, r10
 1253 0082 FFF7FEFF 		bl	__aeabi_fsub
 1254 0086 0646     		mov	r6, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 23


 1255 0088 3146     		mov	r1, r6
 1256 008a 2846     		mov	r0, r5
 1257 008c FFF7FEFF 		bl	__aeabi_fcmpgt
 1258 0090 0028     		cmp	r0, #0
 1259 0092 3AD0     		beq	.L165
 1260              	.L160:
 1261 0094 256A     		ldr	r5, [r4, #32]	@ float
 1262 0096 4146     		mov	r1, r8
 1263 0098 4846     		mov	r0, r9
 1264 009a FFF7FEFF 		bl	__aeabi_fsub
 1265 009e 2946     		mov	r1, r5
 1266 00a0 FFF7FEFF 		bl	__aeabi_fmul
 1267 00a4 8346     		mov	fp, r0
 1268 00a6 FFF7FEFF 		bl	__aeabi_f2d
 1269 00aa FFF7FEFF 		bl	floor
 1270 00ae FFF7FEFF 		bl	__aeabi_d2f
 1271 00b2 3946     		mov	r1, r7
 1272 00b4 8046     		mov	r8, r0
 1273 00b6 3046     		mov	r0, r6
 1274 00b8 FFF7FEFF 		bl	__aeabi_fsub
 1275 00bc 0146     		mov	r1, r0
 1276 00be 2846     		mov	r0, r5
 1277 00c0 FFF7FEFF 		bl	__aeabi_fmul
 1278 00c4 8246     		mov	r10, r0
 1279 00c6 FFF7FEFF 		bl	__aeabi_f2d
 1280 00ca FFF7FEFF 		bl	floor
 1281 00ce FFF7FEFF 		bl	__aeabi_d2f
 1282 00d2 0546     		mov	r5, r0
 1283 00d4 4046     		mov	r0, r8
 1284 00d6 FFF7FEFF 		bl	__aeabi_f2iz
 1285 00da 8146     		mov	r9, r0
 1286 00dc 2846     		mov	r0, r5
 1287 00de FFF7FEFF 		bl	__aeabi_f2iz
 1288 00e2 4146     		mov	r1, r8
 1289 00e4 0746     		mov	r7, r0
 1290 00e6 5846     		mov	r0, fp
 1291 00e8 FFF7FEFF 		bl	__aeabi_fsub
 1292 00ec 2946     		mov	r1, r5
 1293 00ee 0646     		mov	r6, r0
 1294 00f0 5046     		mov	r0, r10
 1295 00f2 FFF7FEFF 		bl	__aeabi_fsub
 1296 00f6 4946     		mov	r1, r9
 1297 00f8 0090     		str	r0, [sp]	@ float
 1298 00fa 3A46     		mov	r2, r7
 1299 00fc 3346     		mov	r3, r6
 1300 00fe 2046     		mov	r0, r4
 1301 0100 FFF7FEFF 		bl	_ZNK9HeightMap13InterpolateXYEmmff
 1302 0104 03B0     		add	sp, sp, #12
 1303              		@ sp needed
 1304 0106 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1305              	.L165:
 1306 010a 2E46     		mov	r6, r5
 1307 010c C2E7     		b	.L160
 1308              	.L164:
 1309 010e B146     		mov	r9, r6
 1310 0110 B5E7     		b	.L159
 1311              	.L161:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 24


 1312 0112 0020     		movs	r0, #0
 1313 0114 03B0     		add	sp, sp, #12
 1314              		@ sp needed
 1315 0116 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1316              	.L167:
 1317 011a 00BF     		.align	2
 1318              	.L166:
 1319 011c 0AD7233C 		.word	1008981770
 1320              		.size	_ZNK9HeightMap26GetInterpolatedHeightErrorEff, .-_ZNK9HeightMap26GetInterpolatedHeightErrorE
 1321              		.global	__aeabi_fcmple
 1322              		.global	__aeabi_i2f
 1323              		.section	.text._ZN9HeightMap18ExtrapolateMissingEv,"ax",%progbits
 1324              		.align	2
 1325              		.global	_ZN9HeightMap18ExtrapolateMissingEv
 1326              		.thumb
 1327              		.thumb_func
 1328              		.type	_ZN9HeightMap18ExtrapolateMissingEv, %function
 1329              	_ZN9HeightMap18ExtrapolateMissingEv:
 1330              		@ args = 0, pretend = 0, frame = 48
 1331              		@ frame_needed = 0, uses_anonymous_args = 0
 1332 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1333 0004 C269     		ldr	r2, [r0, #28]
 1334 0006 8DB0     		sub	sp, sp, #52
 1335 0008 0446     		mov	r4, r0
 1336 000a 0B92     		str	r2, [sp, #44]
 1337 000c 002A     		cmp	r2, #0
 1338 000e 00F0C781 		beq	.L168
 1339 0012 0023     		movs	r3, #0
 1340 0014 D0F818B0 		ldr	fp, [r0, #24]
 1341 0018 0022     		movs	r2, #0
 1342 001a 9A46     		mov	r10, r3
 1343 001c 0493     		str	r3, [sp, #16]
 1344 001e 0393     		str	r3, [sp, #12]
 1345 0020 0292     		str	r2, [sp, #8]	@ float
 1346 0022 5B46     		mov	r3, fp
 1347 0024 9146     		mov	r9, r2
 1348 0026 D346     		mov	fp, r10
 1349 0028 4FF0010C 		mov	ip, #1
 1350 002c 9246     		mov	r10, r2
 1351              	.L170:
 1352 002e 002B     		cmp	r3, #0
 1353 0030 3FD0     		beq	.L174
 1354 0032 049A     		ldr	r2, [sp, #16]
 1355 0034 0026     		movs	r6, #0
 1356 0036 9700     		lsls	r7, r2, #2
 1357 0038 1546     		mov	r5, r2
 1358              	.L175:
 1359 003a 05F01F00 		and	r0, r5, #31
 1360 003e 0CFA00F0 		lsl	r0, ip, r0
 1361 0042 6909     		lsrs	r1, r5, #5
 1362 0044 04EB8101 		add	r1, r4, r1, lsl #2
 1363 0048 C96A     		ldr	r1, [r1, #44]
 1364 004a 0135     		adds	r5, r5, #1
 1365 004c 0842     		tst	r0, r1
 1366 004e 2BD0     		beq	.L171
 1367 0050 3046     		mov	r0, r6
 1368 0052 D4F81480 		ldr	r8, [r4, #20]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 25


 1369 0056 8DE80810 		stmia	sp, {r3, ip}
 1370 005a FFF7FEFF 		bl	__aeabi_ui2f
 1371 005e 0146     		mov	r1, r0
 1372 0060 4046     		mov	r0, r8
 1373 0062 FFF7FEFF 		bl	__aeabi_fmul
 1374 0066 2168     		ldr	r1, [r4]	@ float
 1375 0068 FFF7FEFF 		bl	__aeabi_fadd
 1376 006c 0146     		mov	r1, r0
 1377 006e 4846     		mov	r0, r9
 1378 0070 FFF7FEFF 		bl	__aeabi_fadd
 1379 0074 8146     		mov	r9, r0
 1380 0076 0398     		ldr	r0, [sp, #12]
 1381 0078 FFF7FEFF 		bl	__aeabi_ui2f
 1382 007c 0146     		mov	r1, r0
 1383 007e 4046     		mov	r0, r8
 1384 0080 FFF7FEFF 		bl	__aeabi_fmul
 1385 0084 A168     		ldr	r1, [r4, #8]	@ float
 1386 0086 FFF7FEFF 		bl	__aeabi_fadd
 1387 008a 0146     		mov	r1, r0
 1388 008c 0298     		ldr	r0, [sp, #8]	@ float
 1389 008e FFF7FEFF 		bl	__aeabi_fadd
 1390 0092 A16A     		ldr	r1, [r4, #40]
 1391 0094 0290     		str	r0, [sp, #8]	@ float
 1392 0096 C959     		ldr	r1, [r1, r7]	@ float
 1393 0098 5046     		mov	r0, r10
 1394 009a FFF7FEFF 		bl	__aeabi_fadd
 1395 009e 9DE80810 		ldmia	sp, {r3, ip}
 1396 00a2 0BF1010B 		add	fp, fp, #1
 1397 00a6 8246     		mov	r10, r0
 1398              	.L171:
 1399 00a8 0136     		adds	r6, r6, #1
 1400 00aa 9E42     		cmp	r6, r3
 1401 00ac 07F10407 		add	r7, r7, #4
 1402 00b0 C3D1     		bne	.L175
 1403              	.L174:
 1404 00b2 039A     		ldr	r2, [sp, #12]
 1405 00b4 0132     		adds	r2, r2, #1
 1406 00b6 0392     		str	r2, [sp, #12]
 1407 00b8 049A     		ldr	r2, [sp, #16]
 1408 00ba 0398     		ldr	r0, [sp, #12]
 1409 00bc 1A44     		add	r2, r2, r3
 1410 00be 0492     		str	r2, [sp, #16]
 1411 00c0 0B9A     		ldr	r2, [sp, #44]
 1412 00c2 9042     		cmp	r0, r2
 1413 00c4 B3D1     		bne	.L170
 1414 00c6 5246     		mov	r2, r10
 1415 00c8 DA46     		mov	r10, fp
 1416 00ca 5046     		mov	r0, r10
 1417 00cc 0192     		str	r2, [sp, #4]
 1418 00ce 9B46     		mov	fp, r3
 1419 00d0 FFF7FEFF 		bl	__aeabi_i2f
 1420 00d4 0146     		mov	r1, r0
 1421 00d6 4FF07E50 		mov	r0, #1065353216
 1422 00da FFF7FEFF 		bl	__aeabi_fdiv
 1423 00de 4946     		mov	r1, r9
 1424 00e0 0546     		mov	r5, r0
 1425 00e2 FFF7FEFF 		bl	__aeabi_fmul
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 26


 1426 00e6 0023     		movs	r3, #0
 1427 00e8 0299     		ldr	r1, [sp, #8]	@ float
 1428 00ea 0990     		str	r0, [sp, #36]	@ float
 1429 00ec 2846     		mov	r0, r5
 1430 00ee 0093     		str	r3, [sp]
 1431 00f0 FFF7FEFF 		bl	__aeabi_fmul
 1432 00f4 019A     		ldr	r2, [sp, #4]
 1433 00f6 0890     		str	r0, [sp, #32]	@ float
 1434 00f8 1146     		mov	r1, r2
 1435 00fa 2846     		mov	r0, r5
 1436 00fc 0022     		movs	r2, #0
 1437 00fe 0A92     		str	r2, [sp, #40]
 1438 0100 FFF7FEFF 		bl	__aeabi_fmul
 1439 0104 009B     		ldr	r3, [sp]
 1440 0106 0A9A     		ldr	r2, [sp, #40]
 1441 0108 0790     		str	r0, [sp, #28]	@ float
 1442 010a 0692     		str	r2, [sp, #24]
 1443 010c 0493     		str	r3, [sp, #16]	@ float
 1444 010e 0593     		str	r3, [sp, #20]	@ float
 1445 0110 0293     		str	r3, [sp, #8]	@ float
 1446 0112 0393     		str	r3, [sp, #12]	@ float
 1447 0114 0122     		movs	r2, #1
 1448              	.L186:
 1449 0116 BBF1000F 		cmp	fp, #0
 1450 011a 68D0     		beq	.L179
 1451 011c 0A98     		ldr	r0, [sp, #40]
 1452 011e 0026     		movs	r6, #0
 1453 0120 8700     		lsls	r7, r0, #2
 1454 0122 0546     		mov	r5, r0
 1455              	.L180:
 1456 0124 05F01F00 		and	r0, r5, #31
 1457 0128 02FA00F0 		lsl	r0, r2, r0
 1458 012c 6909     		lsrs	r1, r5, #5
 1459 012e 04EB8101 		add	r1, r4, r1, lsl #2
 1460 0132 C96A     		ldr	r1, [r1, #44]
 1461 0134 0135     		adds	r5, r5, #1
 1462 0136 0842     		tst	r0, r1
 1463 0138 54D0     		beq	.L176
 1464 013a 3046     		mov	r0, r6
 1465 013c D4F81480 		ldr	r8, [r4, #20]	@ float
 1466 0140 0192     		str	r2, [sp, #4]
 1467 0142 0093     		str	r3, [sp]
 1468 0144 FFF7FEFF 		bl	__aeabi_ui2f
 1469 0148 0146     		mov	r1, r0
 1470 014a 4046     		mov	r0, r8
 1471 014c FFF7FEFF 		bl	__aeabi_fmul
 1472 0150 2168     		ldr	r1, [r4]	@ float
 1473 0152 FFF7FEFF 		bl	__aeabi_fadd
 1474 0156 0999     		ldr	r1, [sp, #36]	@ float
 1475 0158 FFF7FEFF 		bl	__aeabi_fsub
 1476 015c 8146     		mov	r9, r0
 1477 015e 0698     		ldr	r0, [sp, #24]
 1478 0160 FFF7FEFF 		bl	__aeabi_ui2f
 1479 0164 0146     		mov	r1, r0
 1480 0166 4046     		mov	r0, r8
 1481 0168 FFF7FEFF 		bl	__aeabi_fmul
 1482 016c A168     		ldr	r1, [r4, #8]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 27


 1483 016e FFF7FEFF 		bl	__aeabi_fadd
 1484 0172 0899     		ldr	r1, [sp, #32]	@ float
 1485 0174 FFF7FEFF 		bl	__aeabi_fsub
 1486 0178 8046     		mov	r8, r0
 1487 017a A06A     		ldr	r0, [r4, #40]
 1488 017c 0799     		ldr	r1, [sp, #28]	@ float
 1489 017e C059     		ldr	r0, [r0, r7]	@ float
 1490 0180 FFF7FEFF 		bl	__aeabi_fsub
 1491 0184 4946     		mov	r1, r9
 1492 0186 8246     		mov	r10, r0
 1493 0188 4846     		mov	r0, r9
 1494 018a FFF7FEFF 		bl	__aeabi_fmul
 1495 018e 0146     		mov	r1, r0
 1496 0190 0398     		ldr	r0, [sp, #12]	@ float
 1497 0192 FFF7FEFF 		bl	__aeabi_fadd
 1498 0196 4146     		mov	r1, r8
 1499 0198 0390     		str	r0, [sp, #12]	@ float
 1500 019a 4846     		mov	r0, r9
 1501 019c FFF7FEFF 		bl	__aeabi_fmul
 1502 01a0 0146     		mov	r1, r0
 1503 01a2 0298     		ldr	r0, [sp, #8]	@ float
 1504 01a4 FFF7FEFF 		bl	__aeabi_fadd
 1505 01a8 5146     		mov	r1, r10
 1506 01aa 0290     		str	r0, [sp, #8]	@ float
 1507 01ac 4846     		mov	r0, r9
 1508 01ae FFF7FEFF 		bl	__aeabi_fmul
 1509 01b2 0146     		mov	r1, r0
 1510 01b4 0598     		ldr	r0, [sp, #20]	@ float
 1511 01b6 FFF7FEFF 		bl	__aeabi_fadd
 1512 01ba 4146     		mov	r1, r8
 1513 01bc 0590     		str	r0, [sp, #20]	@ float
 1514 01be 4046     		mov	r0, r8
 1515 01c0 FFF7FEFF 		bl	__aeabi_fmul
 1516 01c4 0146     		mov	r1, r0
 1517 01c6 0498     		ldr	r0, [sp, #16]	@ float
 1518 01c8 FFF7FEFF 		bl	__aeabi_fadd
 1519 01cc 5146     		mov	r1, r10
 1520 01ce 0490     		str	r0, [sp, #16]	@ float
 1521 01d0 4046     		mov	r0, r8
 1522 01d2 FFF7FEFF 		bl	__aeabi_fmul
 1523 01d6 009B     		ldr	r3, [sp]
 1524 01d8 0146     		mov	r1, r0
 1525 01da 1846     		mov	r0, r3
 1526 01dc FFF7FEFF 		bl	__aeabi_fadd
 1527 01e0 019A     		ldr	r2, [sp, #4]
 1528 01e2 0346     		mov	r3, r0
 1529              	.L176:
 1530 01e4 0136     		adds	r6, r6, #1
 1531 01e6 5E45     		cmp	r6, fp
 1532 01e8 07F10407 		add	r7, r7, #4
 1533 01ec 9AD1     		bne	.L180
 1534              	.L179:
 1535 01ee 0A99     		ldr	r1, [sp, #40]
 1536 01f0 0698     		ldr	r0, [sp, #24]
 1537 01f2 5944     		add	r1, r1, fp
 1538 01f4 0A91     		str	r1, [sp, #40]
 1539 01f6 0B99     		ldr	r1, [sp, #44]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 28


 1540 01f8 0130     		adds	r0, r0, #1
 1541 01fa 8842     		cmp	r0, r1
 1542 01fc 0690     		str	r0, [sp, #24]
 1543 01fe 8AD1     		bne	.L186
 1544 0200 0499     		ldr	r1, [sp, #16]	@ float
 1545 0202 0398     		ldr	r0, [sp, #12]	@ float
 1546 0204 0093     		str	r3, [sp]
 1547 0206 FFF7FEFF 		bl	__aeabi_fmul
 1548 020a 0546     		mov	r5, r0
 1549 020c 0298     		ldr	r0, [sp, #8]	@ float
 1550 020e 0146     		mov	r1, r0
 1551 0210 FFF7FEFF 		bl	__aeabi_fmul
 1552 0214 0146     		mov	r1, r0
 1553 0216 2846     		mov	r0, r5
 1554 0218 FFF7FEFF 		bl	__aeabi_fsub
 1555 021c 0021     		movs	r1, #0
 1556 021e 0546     		mov	r5, r0
 1557 0220 FFF7FEFF 		bl	__aeabi_fcmple
 1558 0224 009B     		ldr	r3, [sp]
 1559 0226 0646     		mov	r6, r0
 1560 0228 0028     		cmp	r0, #0
 1561 022a 40F0B980 		bne	.L168
 1562 022e 1946     		mov	r1, r3
 1563 0230 0298     		ldr	r0, [sp, #8]	@ float
 1564 0232 FFF7FEFF 		bl	__aeabi_fmul
 1565 0236 0499     		ldr	r1, [sp, #16]	@ float
 1566 0238 0746     		mov	r7, r0
 1567 023a 0598     		ldr	r0, [sp, #20]	@ float
 1568 023c FFF7FEFF 		bl	__aeabi_fmul
 1569 0240 0146     		mov	r1, r0
 1570 0242 3846     		mov	r0, r7
 1571 0244 FFF7FEFF 		bl	__aeabi_fsub
 1572 0248 2946     		mov	r1, r5
 1573 024a FFF7FEFF 		bl	__aeabi_fdiv
 1574 024e 0599     		ldr	r1, [sp, #20]	@ float
 1575 0250 0746     		mov	r7, r0
 1576 0252 0298     		ldr	r0, [sp, #8]	@ float
 1577 0254 FFF7FEFF 		bl	__aeabi_fmul
 1578 0258 009B     		ldr	r3, [sp]
 1579 025a 8046     		mov	r8, r0
 1580 025c 1946     		mov	r1, r3
 1581 025e 0398     		ldr	r0, [sp, #12]	@ float
 1582 0260 FFF7FEFF 		bl	__aeabi_fmul
 1583 0264 0146     		mov	r1, r0
 1584 0266 4046     		mov	r0, r8
 1585 0268 FFF7FEFF 		bl	__aeabi_fsub
 1586 026c 2946     		mov	r1, r5
 1587 026e FFF7FEFF 		bl	__aeabi_fdiv
 1588 0272 3946     		mov	r1, r7
 1589 0274 8046     		mov	r8, r0
 1590 0276 3846     		mov	r0, r7
 1591 0278 FFF7FEFF 		bl	__aeabi_fmul
 1592 027c 4146     		mov	r1, r8
 1593 027e 0546     		mov	r5, r0
 1594 0280 4046     		mov	r0, r8
 1595 0282 FFF7FEFF 		bl	__aeabi_fmul
 1596 0286 0146     		mov	r1, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 29


 1597 0288 2846     		mov	r0, r5
 1598 028a FFF7FEFF 		bl	__aeabi_fadd
 1599 028e 4FF07E51 		mov	r1, #1065353216
 1600 0292 FFF7FEFF 		bl	__aeabi_fadd
 1601 0296 FFF7FEFF 		bl	sqrtf
 1602 029a 0146     		mov	r1, r0
 1603 029c 0390     		str	r0, [sp, #12]	@ float
 1604 029e 4FF07E50 		mov	r0, #1065353216
 1605 02a2 FFF7FEFF 		bl	__aeabi_fdiv
 1606 02a6 0546     		mov	r5, r0
 1607 02a8 2946     		mov	r1, r5
 1608 02aa 3846     		mov	r0, r7
 1609 02ac FFF7FEFF 		bl	__aeabi_fmul
 1610 02b0 2946     		mov	r1, r5
 1611 02b2 0490     		str	r0, [sp, #16]	@ float
 1612 02b4 4046     		mov	r0, r8
 1613 02b6 FFF7FEFF 		bl	__aeabi_fmul
 1614 02ba 0499     		ldr	r1, [sp, #16]	@ float
 1615 02bc 0590     		str	r0, [sp, #20]	@ float
 1616 02be 0998     		ldr	r0, [sp, #36]	@ float
 1617 02c0 FFF7FEFF 		bl	__aeabi_fmul
 1618 02c4 0599     		ldr	r1, [sp, #20]	@ float
 1619 02c6 0746     		mov	r7, r0
 1620 02c8 0898     		ldr	r0, [sp, #32]	@ float
 1621 02ca FFF7FEFF 		bl	__aeabi_fmul
 1622 02ce 0146     		mov	r1, r0
 1623 02d0 3846     		mov	r0, r7
 1624 02d2 FFF7FEFF 		bl	__aeabi_fadd
 1625 02d6 2946     		mov	r1, r5
 1626 02d8 0746     		mov	r7, r0
 1627 02da 0798     		ldr	r0, [sp, #28]	@ float
 1628 02dc FFF7FEFF 		bl	__aeabi_fmul
 1629 02e0 0146     		mov	r1, r0
 1630 02e2 3846     		mov	r0, r7
 1631 02e4 FFF7FEFF 		bl	__aeabi_fadd
 1632 02e8 E269     		ldr	r2, [r4, #28]
 1633 02ea 0690     		str	r0, [sp, #24]	@ float
 1634 02ec 0892     		str	r2, [sp, #32]
 1635 02ee 002A     		cmp	r2, #0
 1636 02f0 56D0     		beq	.L168
 1637 02f2 D4F818B0 		ldr	fp, [r4, #24]
 1638 02f6 0796     		str	r6, [sp, #28]
 1639 02f8 0296     		str	r6, [sp, #8]
 1640 02fa 4FF0010A 		mov	r10, #1
 1641 02fe D946     		mov	r9, fp
 1642              	.L181:
 1643 0300 B9F1000F 		cmp	r9, #0
 1644 0304 43D0     		beq	.L184
 1645 0306 079B     		ldr	r3, [sp, #28]
 1646 0308 0025     		movs	r5, #0
 1647 030a 4FEA830B 		lsl	fp, r3, #2
 1648 030e 1E46     		mov	r6, r3
 1649 0310 D846     		mov	r8, fp
 1650              	.L185:
 1651 0312 06F01F07 		and	r7, r6, #31
 1652 0316 0AFA07F7 		lsl	r7, r10, r7
 1653 031a 7109     		lsrs	r1, r6, #5
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 30


 1654 031c 04EB8101 		add	r1, r4, r1, lsl #2
 1655 0320 C96A     		ldr	r1, [r1, #44]
 1656 0322 2846     		mov	r0, r5
 1657 0324 0F42     		tst	r7, r1
 1658 0326 05F10105 		add	r5, r5, #1
 1659 032a 06F10106 		add	r6, r6, #1
 1660 032e 2AD1     		bne	.L182
 1661 0330 FFF7FEFF 		bl	__aeabi_ui2f
 1662 0334 6769     		ldr	r7, [r4, #20]	@ float
 1663 0336 0146     		mov	r1, r0
 1664 0338 3846     		mov	r0, r7
 1665 033a FFF7FEFF 		bl	__aeabi_fmul
 1666 033e 2168     		ldr	r1, [r4]	@ float
 1667 0340 FFF7FEFF 		bl	__aeabi_fadd
 1668 0344 0146     		mov	r1, r0
 1669 0346 0498     		ldr	r0, [sp, #16]	@ float
 1670 0348 FFF7FEFF 		bl	__aeabi_fmul
 1671 034c 8346     		mov	fp, r0
 1672 034e 0298     		ldr	r0, [sp, #8]
 1673 0350 FFF7FEFF 		bl	__aeabi_ui2f
 1674 0354 0146     		mov	r1, r0
 1675 0356 3846     		mov	r0, r7
 1676 0358 FFF7FEFF 		bl	__aeabi_fmul
 1677 035c A168     		ldr	r1, [r4, #8]	@ float
 1678 035e FFF7FEFF 		bl	__aeabi_fadd
 1679 0362 0146     		mov	r1, r0
 1680 0364 0598     		ldr	r0, [sp, #20]	@ float
 1681 0366 FFF7FEFF 		bl	__aeabi_fmul
 1682 036a 0146     		mov	r1, r0
 1683 036c 5846     		mov	r0, fp
 1684 036e FFF7FEFF 		bl	__aeabi_fadd
 1685 0372 0146     		mov	r1, r0
 1686 0374 0698     		ldr	r0, [sp, #24]	@ float
 1687 0376 FFF7FEFF 		bl	__aeabi_fsub
 1688 037a 0399     		ldr	r1, [sp, #12]	@ float
 1689 037c FFF7FEFF 		bl	__aeabi_fmul
 1690 0380 A16A     		ldr	r1, [r4, #40]
 1691 0382 41F80800 		str	r0, [r1, r8]	@ float
 1692              	.L182:
 1693 0386 4D45     		cmp	r5, r9
 1694 0388 08F10408 		add	r8, r8, #4
 1695 038c C1D1     		bne	.L185
 1696              	.L184:
 1697 038e 079A     		ldr	r2, [sp, #28]
 1698 0390 029B     		ldr	r3, [sp, #8]
 1699 0392 4A44     		add	r2, r2, r9
 1700 0394 0792     		str	r2, [sp, #28]
 1701 0396 089A     		ldr	r2, [sp, #32]
 1702 0398 0133     		adds	r3, r3, #1
 1703 039a 9342     		cmp	r3, r2
 1704 039c 0293     		str	r3, [sp, #8]
 1705 039e AFD1     		bne	.L181
 1706              	.L168:
 1707 03a0 0DB0     		add	sp, sp, #52
 1708              		@ sp needed
 1709 03a2 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1710              		.size	_ZN9HeightMap18ExtrapolateMissingEv, .-_ZN9HeightMap18ExtrapolateMissingEv
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 31


 1711 03a6 00BF     		.section	.text._ZN9HeightMap12LoadFromFileEP9FileStoreR9StringRef,"ax",%progbits
 1712              		.align	2
 1713              		.global	_ZN9HeightMap12LoadFromFileEP9FileStoreR9StringRef
 1714              		.thumb
 1715              		.thumb_func
 1716              		.type	_ZN9HeightMap12LoadFromFileEP9FileStoreR9StringRef, %function
 1717              	_ZN9HeightMap12LoadFromFileEP9FileStoreR9StringRef:
 1718              		@ args = 0, pretend = 0, frame = 240
 1719              		@ frame_needed = 0, uses_anonymous_args = 0
 1720 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1721 0004 BDB0     		sub	sp, sp, #244
 1722 0006 0024     		movs	r4, #0
 1723 0008 874B     		ldr	r3, .L240
 1724 000a 11AF     		add	r7, sp, #68
 1725 000c AB26     		movs	r6, #171
 1726 000e DFF83CC2 		ldr	ip, .L240+36
 1727 0012 DFF83C82 		ldr	r8, .L240+40
 1728 0016 4FF0000E 		mov	lr, #0
 1729 001a 0192     		str	r2, [sp, #4]
 1730 001c C462     		str	r4, [r0, #44]
 1731 001e 0463     		str	r4, [r0, #48]
 1732 0020 4463     		str	r4, [r0, #52]
 1733 0022 0546     		mov	r5, r0
 1734 0024 8A46     		mov	r10, r1
 1735 0026 0846     		mov	r0, r1
 1736 0028 3246     		mov	r2, r6
 1737 002a 3946     		mov	r1, r7
 1738 002c 8DF84440 		strb	r4, [sp, #68]
 1739 0030 0D94     		str	r4, [sp, #52]
 1740 0032 0E94     		str	r4, [sp, #56]
 1741 0034 8DF84040 		strb	r4, [sp, #64]
 1742 0038 0597     		str	r7, [sp, #20]
 1743 003a 0696     		str	r6, [sp, #24]
 1744 003c CDF81CE0 		str	lr, [sp, #28]	@ float
 1745 0040 CDF824E0 		str	lr, [sp, #36]	@ float
 1746 0044 0893     		str	r3, [sp, #32]	@ float
 1747 0046 0A93     		str	r3, [sp, #40]	@ float
 1748 0048 0B93     		str	r3, [sp, #44]	@ float
 1749 004a CDF83080 		str	r8, [sp, #48]	@ float
 1750 004e CDF83CC0 		str	ip, [sp, #60]	@ float
 1751 0052 FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
 1752 0056 A042     		cmp	r0, r4
 1753 0058 40F3B980 		ble	.L212
 1754 005c 734B     		ldr	r3, .L240+4
 1755 005e 3846     		mov	r0, r7
 1756 0060 1968     		ldr	r1, [r3]
 1757 0062 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1758 0066 8046     		mov	r8, r0
 1759 0068 0028     		cmp	r0, #0
 1760 006a 00F0A680 		beq	.L234
 1761 006e 5046     		mov	r0, r10
 1762 0070 3946     		mov	r1, r7
 1763 0072 3246     		mov	r2, r6
 1764 0074 FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
 1765 0078 0028     		cmp	r0, #0
 1766 007a 40F3A880 		ble	.L212
 1767 007e 6C4B     		ldr	r3, .L240+8
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 32


 1768 0080 0598     		ldr	r0, [sp, #20]
 1769 0082 1968     		ldr	r1, [r3]
 1770 0084 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 1771 0088 8146     		mov	r9, r0
 1772 008a 0028     		cmp	r0, #0
 1773 008c 00F0A980 		beq	.L235
 1774 0090 3246     		mov	r2, r6
 1775 0092 5046     		mov	r0, r10
 1776 0094 3946     		mov	r1, r7
 1777 0096 FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
 1778 009a 0028     		cmp	r0, #0
 1779 009c 40F39780 		ble	.L212
 1780 00a0 07A8     		add	r0, sp, #28
 1781 00a2 05A9     		add	r1, sp, #20
 1782 00a4 FFF7FEFF 		bl	_ZN14GridDefinition14ReadParametersERK9StringRef
 1783 00a8 0346     		mov	r3, r0
 1784 00aa 0028     		cmp	r0, #0
 1785 00ac 00F0B080 		beq	.L236
 1786 00b0 9DF84080 		ldrb	r8, [sp, #64]	@ zero_extendqisi2
 1787 00b4 B8F1000F 		cmp	r8, #0
 1788 00b8 00F0B080 		beq	.L237
 1789 00bc 85F83840 		strb	r4, [r5, #56]
 1790 00c0 0DF11C0E 		add	lr, sp, #28
 1791 00c4 2E46     		mov	r6, r5
 1792 00c6 0DF13C0C 		add	ip, sp, #60
 1793              	.L216:
 1794 00ca 7446     		mov	r4, lr
 1795 00cc 0FCC     		ldmia	r4!, {r0, r1, r2, r3}
 1796 00ce 6445     		cmp	r4, ip
 1797 00d0 3060     		str	r0, [r6]	@ unaligned
 1798 00d2 7160     		str	r1, [r6, #4]	@ unaligned
 1799 00d4 B260     		str	r2, [r6, #8]	@ unaligned
 1800 00d6 F360     		str	r3, [r6, #12]	@ unaligned
 1801 00d8 A646     		mov	lr, r4
 1802 00da 06F11006 		add	r6, r6, #16
 1803 00de F4D1     		bne	.L216
 1804 00e0 2379     		ldrb	r3, [r4, #4]	@ zero_extendqisi2
 1805 00e2 2068     		ldr	r0, [r4]	@ unaligned
 1806 00e4 3371     		strb	r3, [r6, #4]
 1807 00e6 3060     		str	r0, [r6]	@ unaligned
 1808 00e8 EA69     		ldr	r2, [r5, #28]
 1809 00ea 0023     		movs	r3, #0
 1810 00ec EB62     		str	r3, [r5, #44]
 1811 00ee 2B63     		str	r3, [r5, #48]
 1812 00f0 6B63     		str	r3, [r5, #52]
 1813 00f2 002A     		cmp	r2, #0
 1814 00f4 5BD0     		beq	.L220
 1815 00f6 CDF80C80 		str	r8, [sp, #12]
 1816 00fa 9946     		mov	r9, r3
 1817 00fc A846     		mov	r8, r5
 1818 00fe CDF808A0 		str	r10, [sp, #8]
 1819              	.L229:
 1820 0102 0298     		ldr	r0, [sp, #8]
 1821 0104 3946     		mov	r1, r7
 1822 0106 AB22     		movs	r2, #171
 1823 0108 FFF7FEFF 		bl	_ZN9FileStore8ReadLineEPcj
 1824 010c 0028     		cmp	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 33


 1825 010e 5EDD     		ble	.L212
 1826 0110 D8F81830 		ldr	r3, [r8, #24]
 1827 0114 002B     		cmp	r3, #0
 1828 0116 43D0     		beq	.L227
 1829 0118 0024     		movs	r4, #0
 1830 011a BB46     		mov	fp, r7
 1831 011c 0125     		movs	r5, #1
 1832 011e 10E0     		b	.L228
 1833              	.L238:
 1834 0120 9BF80130 		ldrb	r3, [fp, #1]	@ zero_extendqisi2
 1835 0124 2C2B     		cmp	r3, #44
 1836 0126 00D0     		beq	.L222
 1837 0128 7BB9     		cbnz	r3, .L221
 1838              	.L222:
 1839 012a D8F818A0 		ldr	r10, [r8, #24]
 1840 012e 2C2B     		cmp	r3, #44
 1841 0130 0BF1010B 		add	fp, fp, #1
 1842 0134 04F10104 		add	r4, r4, #1
 1843 0138 08BF     		it	eq
 1844 013a 0BF1010B 		addeq	fp, fp, #1
 1845 013e 5445     		cmp	r4, r10
 1846 0140 2ED2     		bcs	.L227
 1847              	.L228:
 1848 0142 9BF80030 		ldrb	r3, [fp]	@ zero_extendqisi2
 1849 0146 302B     		cmp	r3, #48
 1850 0148 EAD0     		beq	.L238
 1851              	.L221:
 1852 014a 0023     		movs	r3, #0
 1853 014c 5846     		mov	r0, fp
 1854 014e 04A9     		add	r1, sp, #16
 1855 0150 0493     		str	r3, [sp, #16]
 1856 0152 FFF7FEFF 		bl	strtod
 1857 0156 049E     		ldr	r6, [sp, #16]
 1858 0158 5E45     		cmp	r6, fp
 1859 015a 4AD0     		beq	.L239
 1860 015c D8F818A0 		ldr	r10, [r8, #24]
 1861 0160 0AFB094B 		mla	fp, r10, r9, r4
 1862 0164 BBF1780F 		cmp	fp, #120
 1863 0168 10D8     		bhi	.L225
 1864 016a FFF7FEFF 		bl	__aeabi_d2f
 1865 016e 0BF01F01 		and	r1, fp, #31
 1866 0172 05FA01F1 		lsl	r1, r5, r1
 1867 0176 D8F82820 		ldr	r2, [r8, #40]
 1868 017a 4FEA5B13 		lsr	r3, fp, #5
 1869 017e 42F82B00 		str	r0, [r2, fp, lsl #2]	@ float
 1870 0182 08EB8303 		add	r3, r8, r3, lsl #2
 1871 0186 DA6A     		ldr	r2, [r3, #44]
 1872 0188 0A43     		orrs	r2, r2, r1
 1873 018a DA62     		str	r2, [r3, #44]
 1874              	.L225:
 1875 018c 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 1876 018e B346     		mov	fp, r6
 1877 0190 2C2B     		cmp	r3, #44
 1878 0192 04F10104 		add	r4, r4, #1
 1879 0196 08BF     		it	eq
 1880 0198 0BF1010B 		addeq	fp, fp, #1
 1881 019c 5445     		cmp	r4, r10
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 34


 1882 019e D0D3     		bcc	.L228
 1883              	.L227:
 1884 01a0 D8F81C30 		ldr	r3, [r8, #28]
 1885 01a4 09F10109 		add	r9, r9, #1
 1886 01a8 4B45     		cmp	r3, r9
 1887 01aa AAD8     		bhi	.L229
 1888 01ac 4546     		mov	r5, r8
 1889              	.L220:
 1890 01ae 2846     		mov	r0, r5
 1891 01b0 FFF7FEFF 		bl	_ZN9HeightMap18ExtrapolateMissingEv
 1892 01b4 4FF00008 		mov	r8, #0
 1893 01b8 05E0     		b	.L210
 1894              	.L234:
 1895 01ba 0198     		ldr	r0, [sp, #4]
 1896 01bc 1D49     		ldr	r1, .L240+12
 1897 01be FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 1898 01c2 4FF00108 		mov	r8, #1
 1899              	.L210:
 1900 01c6 4046     		mov	r0, r8
 1901 01c8 3DB0     		add	sp, sp, #244
 1902              		@ sp needed
 1903 01ca BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1904              	.L212:
 1905 01ce 0198     		ldr	r0, [sp, #4]
 1906 01d0 1949     		ldr	r1, .L240+16
 1907 01d2 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 1908 01d6 4FF00108 		mov	r8, #1
 1909 01da 4046     		mov	r0, r8
 1910 01dc 3DB0     		add	sp, sp, #244
 1911              		@ sp needed
 1912 01de BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1913              	.L235:
 1914 01e2 0198     		ldr	r0, [sp, #4]
 1915 01e4 1549     		ldr	r1, .L240+20
 1916 01e6 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 1917 01ea 4046     		mov	r0, r8
 1918 01ec 3DB0     		add	sp, sp, #244
 1919              		@ sp needed
 1920 01ee BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1921              	.L239:
 1922 01f2 C7EB0B03 		rsb	r3, r7, fp
 1923 01f6 0133     		adds	r3, r3, #1
 1924 01f8 0198     		ldr	r0, [sp, #4]
 1925 01fa 09F10302 		add	r2, r9, #3
 1926 01fe 1049     		ldr	r1, .L240+24
 1927 0200 DDF80C80 		ldr	r8, [sp, #12]
 1928 0204 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 1929 0208 4046     		mov	r0, r8
 1930 020a 3DB0     		add	sp, sp, #244
 1931              		@ sp needed
 1932 020c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1933              	.L236:
 1934 0210 0198     		ldr	r0, [sp, #4]
 1935 0212 0C49     		ldr	r1, .L240+28
 1936 0214 C846     		mov	r8, r9
 1937 0216 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 1938 021a D4E7     		b	.L210
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 35


 1939              	.L237:
 1940 021c 0198     		ldr	r0, [sp, #4]
 1941 021e 0A49     		ldr	r1, .L240+32
 1942 0220 9846     		mov	r8, r3
 1943 0222 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 1944 0226 CEE7     		b	.L210
 1945              	.L241:
 1946              		.align	2
 1947              	.L240:
 1948 0228 000080BF 		.word	-1082130432
 1949 022c 00000000 		.word	.LANCHOR1
 1950 0230 00000000 		.word	.LANCHOR0
 1951 0234 84010000 		.word	.LC13
 1952 0238 64010000 		.word	.LC12
 1953 023c AC010000 		.word	.LC14
 1954 0240 EC010000 		.word	.LC17
 1955 0244 BC010000 		.word	.LC15
 1956 0248 DC010000 		.word	.LC16
 1957 024c CDCC4C3D 		.word	1028443341
 1958 0250 0000A041 		.word	1101004800
 1959              		.size	_ZN9HeightMap12LoadFromFileEP9FileStoreR9StringRef, .-_ZN9HeightMap12LoadFromFileEP9FileStor
 1960              		.global	_ZN9HeightMap16HeightMapCommentE
 1961              		.global	_ZN14GridDefinition18HeightMapLabelLineE
 1962              		.section	.data._ZN14GridDefinition18HeightMapLabelLineE,"aw",%progbits
 1963              		.align	2
 1964              		.set	.LANCHOR0,. + 0
 1965              		.type	_ZN14GridDefinition18HeightMapLabelLineE, %object
 1966              		.size	_ZN14GridDefinition18HeightMapLabelLineE, 4
 1967              	_ZN14GridDefinition18HeightMapLabelLineE:
 1968 0000 38020000 		.word	.LC19
 1969              		.section	.rodata.str1.4,"aMS",%progbits,1
 1970              		.align	2
 1971              	.LC0:
 1972 0000 58252E31 		.ascii	"X%.1f:%.1f, Y%.1f:%.1f, radius %.1f, spacing %.1f, "
 1972      663A252E 
 1972      31662C20 
 1972      59252E31 
 1972      663A252E 
 1973 0033 25642070 		.ascii	"%d points\000"
 1973      6F696E74 
 1973      7300
 1974 003d 000000   		.space	3
 1975              	.LC1:
 1976 0040 25730A25 		.ascii	"%s\012%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%u,%u\012\000"
 1976      2E32662C 
 1976      252E3266 
 1976      2C252E32 
 1976      662C252E 
 1977              	.LC2:
 1978 0068 25662C25 		.ascii	"%f,%f,%f,%f,%f,%f,%lu,%lu\000"
 1978      662C2566 
 1978      2C25662C 
 1978      25662C25 
 1978      662C256C 
 1979 0082 0000     		.space	2
 1980              	.LC3:
 1981 0084 53706163 		.ascii	"Spacing too small\000"
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 36


 1981      696E6720 
 1981      746F6F20 
 1981      736D616C 
 1981      6C00
 1982 0096 0000     		.space	2
 1983              	.LC4:
 1984 0098 58207261 		.ascii	"X range too small\000"
 1984      6E676520 
 1984      746F6F20 
 1984      736D616C 
 1984      6C00
 1985 00aa 0000     		.space	2
 1986              	.LC5:
 1987 00ac 59207261 		.ascii	"Y range too small\000"
 1987      6E676520 
 1987      746F6F20 
 1987      736D616C 
 1987      6C00
 1988 00be 0000     		.space	2
 1989              	.LC6:
 1990 00c0 546F6F20 		.ascii	"Too many grid points; suggest increase spacing to %"
 1990      6D616E79 
 1990      20677269 
 1990      6420706F 
 1990      696E7473 
 1991 00f3 2E31666D 		.ascii	".1fmm\000"
 1991      6D00
 1992 00f9 000000   		.space	3
 1993              	.LC7:
 1994 00fc 42616420 		.ascii	"Bad radius\000"
 1994      72616469 
 1994      757300
 1995 0107 00       		.space	1
 1996              	.LC8:
 1997 0108 2067656E 		.ascii	" generated at %04u-%02u-%02u %02u:%02u\000"
 1997      65726174 
 1997      65642061 
 1997      74202530 
 1997      34752D25 
 1998 012f 00       		.space	1
 1999              	.LC9:
 2000 0130 2C206D65 		.ascii	", mean error %.2f, deviation %.2f\012\000"
 2000      616E2065 
 2000      72726F72 
 2000      20252E32 
 2000      662C2064 
 2001 0153 00       		.space	1
 2002              	.LC10:
 2003 0154 25372E33 		.ascii	"%7.3f%\000"
 2003      662500
 2004 015b 00       		.space	1
 2005              	.LC11:
 2006 015c 20202020 		.ascii	"      0\000"
 2006      20203000 
 2007              	.LC12:
 2008 0164 6661696C 		.ascii	"failed to read line from file\000"
 2008      65642074 
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 37


 2008      6F207265 
 2008      6164206C 
 2008      696E6520 
 2009 0182 0000     		.space	2
 2010              	.LC13:
 2011 0184 62616420 		.ascii	"bad header line or wrong version header\000"
 2011      68656164 
 2011      6572206C 
 2011      696E6520 
 2011      6F722077 
 2012              	.LC14:
 2013 01ac 62616420 		.ascii	"bad label line\000"
 2013      6C616265 
 2013      6C206C69 
 2013      6E6500
 2014 01bb 00       		.space	1
 2015              	.LC15:
 2016 01bc 6661696C 		.ascii	"failed to parse grid parameters\000"
 2016      65642074 
 2016      6F207061 
 2016      72736520 
 2016      67726964 
 2017              	.LC16:
 2018 01dc 696E7661 		.ascii	"invalid grid\000"
 2018      6C696420 
 2018      67726964 
 2018      00
 2019 01e9 000000   		.space	3
 2020              	.LC17:
 2021 01ec 6E756D62 		.ascii	"number expected at line %u column %d\000"
 2021      65722065 
 2021      78706563 
 2021      74656420 
 2021      6174206C 
 2022 0211 000000   		.space	3
 2023              	.LC18:
 2024 0214 52657052 		.ascii	"RepRapFirmware height map file v1\000"
 2024      61704669 
 2024      726D7761 
 2024      72652068 
 2024      65696768 
 2025 0236 0000     		.space	2
 2026              	.LC19:
 2027 0238 786D696E 		.ascii	"xmin,xmax,ymin,ymax,radius,spacing,xnum,ynum\000"
 2027      2C786D61 
 2027      782C796D 
 2027      696E2C79 
 2027      6D61782C 
 2028 0265 000000   		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 2029              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 2030              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 2031              	_ZL28cpu_irq_prev_interrupt_state:
 2032 0000 00       		.space	1
 2033              		.section	.data._ZN9HeightMap16HeightMapCommentE,"aw",%progbits
 2034              		.align	2
 2035              		.set	.LANCHOR1,. + 0
 2036              		.type	_ZN9HeightMap16HeightMapCommentE, %object
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLqo49e.s 			page 38


 2037              		.size	_ZN9HeightMap16HeightMapCommentE, 4
 2038              	_ZN9HeightMap16HeightMapCommentE:
 2039 0000 14020000 		.word	.LC18
 2040              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 2041              		.align	2
 2042              		.type	_ZL32cpu_irq_critical_section_counter, %object
 2043              		.size	_ZL32cpu_irq_critical_section_counter, 4
 2044              	_ZL32cpu_irq_critical_section_counter:
 2045 0000 00000000 		.space	4
 2046              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
