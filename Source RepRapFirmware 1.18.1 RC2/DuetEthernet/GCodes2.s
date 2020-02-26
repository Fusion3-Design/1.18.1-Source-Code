ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 1


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
  15              		.file	"GCodes2.cpp"
  16              		.section	.text._ZN8Platform11WriteAnalogEhft,"axG",%progbits,_ZN8Platform11WriteAnalogEhft,comdat
  17              		.align	2
  18              		.weak	_ZN8Platform11WriteAnalogEhft
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN8Platform11WriteAnalogEhft, %function
  22              	_ZN8Platform11WriteAnalogEhft:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 C728     		cmp	r0, #199
  27 0002 01D8     		bhi	.L4
  28 0004 FFF7FEBF 		b	_Z9AnalogOuthft
  29              	.L4:
  30 0008 3830     		adds	r0, r0, #56
  31 000a C0B2     		uxtb	r0, r0
  32 000c FFF7FEBF 		b	_ZN13DuetExpansion9AnalogOutEhf
  33              		.size	_ZN8Platform11WriteAnalogEhft, .-_ZN8Platform11WriteAnalogEhft
  34              		.section	.text._ZN6GCodes11HandleGcodeER11GCodeBufferR9StringRef,"ax",%progbits
  35              		.align	2
  36              		.global	_ZN6GCodes11HandleGcodeER11GCodeBufferR9StringRef
  37              		.thumb
  38              		.thumb_func
  39              		.type	_ZN6GCodes11HandleGcodeER11GCodeBufferR9StringRef, %function
  40              	_ZN6GCodes11HandleGcodeER11GCodeBufferR9StringRef:
  41              		@ args = 0, pretend = 0, frame = 8
  42              		@ frame_needed = 0, uses_anonymous_args = 0
  43 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
  44 0004 84B0     		sub	sp, sp, #16
  45 0006 0023     		movs	r3, #0
  46 0008 0646     		mov	r6, r0
  47 000a 0846     		mov	r0, r1
  48 000c 8DF80F30 		strb	r3, [sp, #15]
  49 0010 0C46     		mov	r4, r1
  50 0012 1746     		mov	r7, r2
  51 0014 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
  52 0018 96F80033 		ldrb	r3, [r6, #768]	@ zero_extendqisi2
  53 001c 0546     		mov	r5, r0
  54 001e 002B     		cmp	r3, #0
  55 0020 71D0     		beq	.L6
  56 0022 0428     		cmp	r0, #4
  57 0024 6FDD     		ble	.L6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 2


  58 0026 0A28     		cmp	r0, #10
  59 0028 07D0     		beq	.L7
  60 002a A0F11403 		sub	r3, r0, #20
  61 002e 012B     		cmp	r3, #1
  62 0030 03D9     		bls	.L7
  63 0032 A0F15A03 		sub	r3, r0, #90
  64 0036 022B     		cmp	r3, #2
  65 0038 6CD8     		bhi	.L110
  66              	.L7:
  67 003a A368     		ldr	r3, [r4, #8]
  68 003c 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
  69 003e D206     		lsls	r2, r2, #27
  70 0040 68D4     		bmi	.L110
  71              	.L9:
  72 0042 5C2D     		cmp	r5, #92
  73 0044 00F24881 		bhi	.L50
  74 0048 DFE815F0 		tbh	[pc, r5, lsl #1]
  75              	.L53:
  76 004c F800     		.2byte	(.L11-.L53)/2
  77 004e F800     		.2byte	(.L11-.L53)/2
  78 0050 1B01     		.2byte	(.L26-.L53)/2
  79 0052 1B01     		.2byte	(.L26-.L53)/2
  80 0054 3901     		.2byte	(.L29-.L53)/2
  81 0056 4601     		.2byte	(.L50-.L53)/2
  82 0058 4601     		.2byte	(.L50-.L53)/2
  83 005a 4601     		.2byte	(.L50-.L53)/2
  84 005c 4601     		.2byte	(.L50-.L53)/2
  85 005e 4601     		.2byte	(.L50-.L53)/2
  86 0060 DC00     		.2byte	(.L30-.L53)/2
  87 0062 EA00     		.2byte	(.L33-.L53)/2
  88 0064 4601     		.2byte	(.L50-.L53)/2
  89 0066 4601     		.2byte	(.L50-.L53)/2
  90 0068 4601     		.2byte	(.L50-.L53)/2
  91 006a 4601     		.2byte	(.L50-.L53)/2
  92 006c 4601     		.2byte	(.L50-.L53)/2
  93 006e 4601     		.2byte	(.L50-.L53)/2
  94 0070 4601     		.2byte	(.L50-.L53)/2
  95 0072 4601     		.2byte	(.L50-.L53)/2
  96 0074 6800     		.2byte	(.L34-.L53)/2
  97 0076 7B00     		.2byte	(.L35-.L53)/2
  98 0078 4601     		.2byte	(.L50-.L53)/2
  99 007a 4601     		.2byte	(.L50-.L53)/2
 100 007c 4601     		.2byte	(.L50-.L53)/2
 101 007e 4601     		.2byte	(.L50-.L53)/2
 102 0080 4601     		.2byte	(.L50-.L53)/2
 103 0082 4601     		.2byte	(.L50-.L53)/2
 104 0084 8000     		.2byte	(.L36-.L53)/2
 105 0086 8C00     		.2byte	(.L37-.L53)/2
 106 0088 9700     		.2byte	(.L41-.L53)/2
 107 008a 5001     		.2byte	(.L10-.L53)/2
 108 008c AF00     		.2byte	(.L44-.L53)/2
 109 008e 4601     		.2byte	(.L50-.L53)/2
 110 0090 4601     		.2byte	(.L50-.L53)/2
 111 0092 4601     		.2byte	(.L50-.L53)/2
 112 0094 4601     		.2byte	(.L50-.L53)/2
 113 0096 4601     		.2byte	(.L50-.L53)/2
 114 0098 4601     		.2byte	(.L50-.L53)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 3


 115 009a 4601     		.2byte	(.L50-.L53)/2
 116 009c 4601     		.2byte	(.L50-.L53)/2
 117 009e 4601     		.2byte	(.L50-.L53)/2
 118 00a0 4601     		.2byte	(.L50-.L53)/2
 119 00a2 4601     		.2byte	(.L50-.L53)/2
 120 00a4 4601     		.2byte	(.L50-.L53)/2
 121 00a6 4601     		.2byte	(.L50-.L53)/2
 122 00a8 4601     		.2byte	(.L50-.L53)/2
 123 00aa 4601     		.2byte	(.L50-.L53)/2
 124 00ac 4601     		.2byte	(.L50-.L53)/2
 125 00ae 4601     		.2byte	(.L50-.L53)/2
 126 00b0 4601     		.2byte	(.L50-.L53)/2
 127 00b2 4601     		.2byte	(.L50-.L53)/2
 128 00b4 4601     		.2byte	(.L50-.L53)/2
 129 00b6 4601     		.2byte	(.L50-.L53)/2
 130 00b8 4601     		.2byte	(.L50-.L53)/2
 131 00ba 4601     		.2byte	(.L50-.L53)/2
 132 00bc 4601     		.2byte	(.L50-.L53)/2
 133 00be 4601     		.2byte	(.L50-.L53)/2
 134 00c0 4601     		.2byte	(.L50-.L53)/2
 135 00c2 4601     		.2byte	(.L50-.L53)/2
 136 00c4 4601     		.2byte	(.L50-.L53)/2
 137 00c6 4601     		.2byte	(.L50-.L53)/2
 138 00c8 4601     		.2byte	(.L50-.L53)/2
 139 00ca 4601     		.2byte	(.L50-.L53)/2
 140 00cc 4601     		.2byte	(.L50-.L53)/2
 141 00ce 4601     		.2byte	(.L50-.L53)/2
 142 00d0 4601     		.2byte	(.L50-.L53)/2
 143 00d2 4601     		.2byte	(.L50-.L53)/2
 144 00d4 4601     		.2byte	(.L50-.L53)/2
 145 00d6 4601     		.2byte	(.L50-.L53)/2
 146 00d8 4601     		.2byte	(.L50-.L53)/2
 147 00da 4601     		.2byte	(.L50-.L53)/2
 148 00dc 4601     		.2byte	(.L50-.L53)/2
 149 00de 4601     		.2byte	(.L50-.L53)/2
 150 00e0 4601     		.2byte	(.L50-.L53)/2
 151 00e2 4601     		.2byte	(.L50-.L53)/2
 152 00e4 4601     		.2byte	(.L50-.L53)/2
 153 00e6 4601     		.2byte	(.L50-.L53)/2
 154 00e8 4601     		.2byte	(.L50-.L53)/2
 155 00ea 4601     		.2byte	(.L50-.L53)/2
 156 00ec 4601     		.2byte	(.L50-.L53)/2
 157 00ee 4601     		.2byte	(.L50-.L53)/2
 158 00f0 4601     		.2byte	(.L50-.L53)/2
 159 00f2 4601     		.2byte	(.L50-.L53)/2
 160 00f4 4601     		.2byte	(.L50-.L53)/2
 161 00f6 4601     		.2byte	(.L50-.L53)/2
 162 00f8 4601     		.2byte	(.L50-.L53)/2
 163 00fa 4601     		.2byte	(.L50-.L53)/2
 164 00fc 4601     		.2byte	(.L50-.L53)/2
 165 00fe 4601     		.2byte	(.L50-.L53)/2
 166 0100 D700     		.2byte	(.L47-.L53)/2
 167 0102 4101     		.2byte	(.L48-.L53)/2
 168 0104 1301     		.2byte	(.L49-.L53)/2
 169              	.L6:
 170 0106 A368     		ldr	r3, [r4, #8]
 171 0108 597C     		ldrb	r1, [r3, #17]	@ zero_extendqisi2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 4


 172 010a C806     		lsls	r0, r1, #27
 173 010c 99D5     		bpl	.L9
 174 010e 1F2D     		cmp	r5, #31
 175 0110 00F0EC80 		beq	.L10
 176              	.L110:
 177 0114 0120     		movs	r0, #1
 178 0116 04B0     		add	sp, sp, #16
 179              		@ sp needed
 180 0118 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 181              	.L34:
 182 011c A44B     		ldr	r3, .L120
 183 011e C6F86C32 		str	r3, [r6, #620]	@ float
 184              	.L58:
 185 0122 A368     		ldr	r3, [r4, #8]
 186 0124 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 187 0126 002B     		cmp	r3, #0
 188 0128 F4D1     		bne	.L110
 189 012a 3046     		mov	r0, r6
 190 012c 2146     		mov	r1, r4
 191 012e FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 192 0132 3046     		mov	r0, r6
 193 0134 2146     		mov	r1, r4
 194 0136 3B68     		ldr	r3, [r7]
 195 0138 9DF80F20 		ldrb	r2, [sp, #15]	@ zero_extendqisi2
 196 013c FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 197 0140 E8E7     		b	.L110
 198              	.L35:
 199 0142 4FF07E53 		mov	r3, #1065353216
 200 0146 C6F86C32 		str	r3, [r6, #620]	@ float
 201 014a EAE7     		b	.L58
 202              	.L36:
 203 014c 3046     		mov	r0, r6
 204 014e 2146     		mov	r1, r4
 205 0150 3A46     		mov	r2, r7
 206 0152 0DF10F03 		add	r3, sp, #15
 207 0156 FFF7FEFF 		bl	_ZN6GCodes6DoHomeER11GCodeBufferR9StringRefRb
 208 015a 0028     		cmp	r0, #0
 209 015c E1D1     		bne	.L58
 210              	.L111:
 211 015e 04B0     		add	sp, sp, #16
 212              		@ sp needed
 213 0160 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 214              	.L37:
 215 0164 3046     		mov	r0, r6
 216 0166 2146     		mov	r1, r4
 217 0168 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 218 016c 0028     		cmp	r0, #0
 219 016e 40F0D680 		bne	.L112
 220              	.L27:
 221 0172 0020     		movs	r0, #0
 222 0174 04B0     		add	sp, sp, #16
 223              		@ sp needed
 224 0176 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 225              	.L41:
 226 017a 3046     		mov	r0, r6
 227 017c 2146     		mov	r1, r4
 228 017e FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 5


 229 0182 0028     		cmp	r0, #0
 230 0184 F5D0     		beq	.L27
 231 0186 3046     		mov	r0, r6
 232 0188 FFF7FEFF 		bl	_ZN6GCodes17ClearBabySteppingEv
 233 018c 894B     		ldr	r3, .L120+4
 234 018e 9B68     		ldr	r3, [r3, #8]
 235 0190 93F8BC3A 		ldrb	r3, [r3, #2748]	@ zero_extendqisi2
 236 0194 002B     		cmp	r3, #0
 237 0196 40F03981 		bne	.L113
 238              	.L42:
 239 019a 3046     		mov	r0, r6
 240 019c 2146     		mov	r1, r4
 241 019e 3A46     		mov	r2, r7
 242 01a0 FFF7FEFF 		bl	_ZN6GCodes26SetSingleZProbeAtAPositionER11GCodeBufferR9StringRef
 243 01a4 0028     		cmp	r0, #0
 244 01a6 DAD0     		beq	.L111
 245 01a8 BBE7     		b	.L58
 246              	.L44:
 247 01aa 3046     		mov	r0, r6
 248 01ac 2146     		mov	r1, r4
 249 01ae FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 250 01b2 0028     		cmp	r0, #0
 251 01b4 DDD0     		beq	.L27
 252 01b6 7F4D     		ldr	r5, .L120+4
 253 01b8 3046     		mov	r0, r6
 254 01ba FFF7FEFF 		bl	_ZN6GCodes17ClearBabySteppingEv
 255 01be AB68     		ldr	r3, [r5, #8]
 256 01c0 7D4A     		ldr	r2, .L120+8
 257 01c2 93F8BC3A 		ldrb	r3, [r3, #2748]	@ zero_extendqisi2
 258 01c6 1268     		ldr	r2, [r2]
 259 01c8 0021     		movs	r1, #0
 260 01ca 0091     		str	r1, [sp]
 261 01cc 3046     		mov	r0, r6
 262 01ce 2146     		mov	r1, r4
 263 01d0 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 264 01d4 0028     		cmp	r0, #0
 265 01d6 A4D1     		bne	.L58
 266 01d8 D6F89832 		ldr	r3, [r6, #664]
 267 01dc 03F00308 		and	r8, r3, #3
 268 01e0 B8F1030F 		cmp	r8, #3
 269 01e4 40F0A980 		bne	.L114
 270 01e8 C6F89002 		str	r0, [r6, #656]
 271 01ec A868     		ldr	r0, [r5, #8]
 272 01ee FFF7FEFF 		bl	_ZN4Move20SetIdentityTransformEv
 273 01f2 A368     		ldr	r3, [r4, #8]
 274 01f4 83F81080 		strb	r8, [r3, #16]
 275 01f8 93E7     		b	.L58
 276              	.L47:
 277 01fa 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 278 01fc 6FF34102 		bfc	r2, #1, #1
 279 0200 5A74     		strb	r2, [r3, #17]
 280 0202 8EE7     		b	.L58
 281              	.L30:
 282 0204 2046     		mov	r0, r4
 283 0206 5021     		movs	r1, #80
 284 0208 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 285 020c 0028     		cmp	r0, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 6


 286 020e 76D0     		beq	.L31
 287 0210 3046     		mov	r0, r6
 288 0212 2146     		mov	r1, r4
 289 0214 3A46     		mov	r2, r7
 290 0216 FFF7FEFF 		bl	_ZN6GCodes18SetOrReportOffsetsER11GCodeBufferR9StringRef
 291 021a 0028     		cmp	r0, #0
 292 021c 81D1     		bne	.L58
 293 021e A8E7     		b	.L27
 294              	.L33:
 295 0220 3046     		mov	r0, r6
 296 0222 2146     		mov	r1, r4
 297 0224 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 298 0228 0028     		cmp	r0, #0
 299 022a A2D0     		beq	.L27
 300 022c 3046     		mov	r0, r6
 301 022e 2146     		mov	r1, r4
 302 0230 0022     		movs	r2, #0
 303 0232 FFF7FEFF 		bl	_ZN6GCodes15RetractFilamentER11GCodeBufferb
 304 0236 0028     		cmp	r0, #0
 305 0238 91D0     		beq	.L111
 306 023a 72E7     		b	.L58
 307              	.L11:
 308 023c 3046     		mov	r0, r6
 309 023e 2146     		mov	r1, r4
 310 0240 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 311 0244 0028     		cmp	r0, #0
 312 0246 94D0     		beq	.L27
 313 0248 2046     		mov	r0, r4
 314 024a 5221     		movs	r1, #82
 315 024c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 316 0250 0028     		cmp	r0, #0
 317 0252 7AD1     		bne	.L115
 318              	.L13:
 319 0254 3046     		mov	r0, r6
 320 0256 2146     		mov	r1, r4
 321 0258 3A46     		mov	r2, r7
 322 025a FFF7FEFF 		bl	_ZN6GCodes9SetUpMoveER11GCodeBufferR9StringRef
 323 025e 0228     		cmp	r0, #2
 324 0260 00F00181 		beq	.L116
 325              	.L55:
 326 0264 0030     		adds	r0, r0, #0
 327 0266 18BF     		it	ne
 328 0268 0120     		movne	r0, #1
 329 026a 0028     		cmp	r0, #0
 330 026c 3FF477AF 		beq	.L111
 331 0270 57E7     		b	.L58
 332              	.L49:
 333 0272 3046     		mov	r0, r6
 334 0274 2146     		mov	r1, r4
 335 0276 FFF7FEFF 		bl	_ZN6GCodes12SetPositionsER11GCodeBuffer
 336 027a 0028     		cmp	r0, #0
 337 027c 3FF46FAF 		beq	.L111
 338 0280 4FE7     		b	.L58
 339              	.L26:
 340 0282 3046     		mov	r0, r6
 341 0284 2146     		mov	r1, r4
 342 0286 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 7


 343 028a 0028     		cmp	r0, #0
 344 028c 3FF471AF 		beq	.L27
 345 0290 D6F8FC30 		ldr	r3, [r6, #252]
 346 0294 002B     		cmp	r3, #0
 347 0296 7FF46CAF 		bne	.L27
 348 029a A91E     		subs	r1, r5, #2
 349 029c 4A42     		rsbs	r2, r1, #0
 350 029e 4A41     		adcs	r2, r2, r1
 351 02a0 3046     		mov	r0, r6
 352 02a2 2146     		mov	r1, r4
 353 02a4 FFF7FEFF 		bl	_ZN6GCodes9DoArcMoveER11GCodeBufferb
 354 02a8 0028     		cmp	r0, #0
 355 02aa 3FF43AAF 		beq	.L58
 356 02ae 3846     		mov	r0, r7
 357 02b0 4249     		ldr	r1, .L120+12
 358 02b2 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 359 02b6 0123     		movs	r3, #1
 360 02b8 8DF80F30 		strb	r3, [sp, #15]
 361 02bc 31E7     		b	.L58
 362              	.L29:
 363 02be 3046     		mov	r0, r6
 364 02c0 2146     		mov	r1, r4
 365 02c2 FFF7FEFF 		bl	_ZN6GCodes7DoDwellER11GCodeBuffer
 366 02c6 0028     		cmp	r0, #0
 367 02c8 3FF449AF 		beq	.L111
 368 02cc 29E7     		b	.L58
 369              	.L48:
 370 02ce 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 371 02d0 42F00202 		orr	r2, r2, #2
 372 02d4 5A74     		strb	r2, [r3, #17]
 373 02d6 24E7     		b	.L58
 374              	.L50:
 375 02d8 0123     		movs	r3, #1
 376 02da 3846     		mov	r0, r7
 377 02dc 3849     		ldr	r1, .L120+16
 378 02de 8DF80F30 		strb	r3, [sp, #15]
 379 02e2 04F10C02 		add	r2, r4, #12
 380 02e6 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 381 02ea 1AE7     		b	.L58
 382              	.L10:
 383 02ec 3046     		mov	r0, r6
 384 02ee 2146     		mov	r1, r4
 385 02f0 3A46     		mov	r2, r7
 386 02f2 FFF7FEFF 		bl	_ZN6GCodes14SetPrintZProbeER11GCodeBufferR9StringRef
 387 02f6 0028     		cmp	r0, #0
 388 02f8 3FF431AF 		beq	.L111
 389 02fc 11E7     		b	.L58
 390              	.L31:
 391 02fe 3046     		mov	r0, r6
 392 0300 2146     		mov	r1, r4
 393 0302 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 394 0306 0028     		cmp	r0, #0
 395 0308 3FF433AF 		beq	.L27
 396 030c 3046     		mov	r0, r6
 397 030e 2146     		mov	r1, r4
 398 0310 0122     		movs	r2, #1
 399 0312 FFF7FEFF 		bl	_ZN6GCodes15RetractFilamentER11GCodeBufferb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 8


 400 0316 0028     		cmp	r0, #0
 401 0318 3FF421AF 		beq	.L111
 402 031c 01E7     		b	.L58
 403              	.L112:
 404 031e 2046     		mov	r0, r4
 405 0320 5321     		movs	r1, #83
 406 0322 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 407 0326 0028     		cmp	r0, #0
 408 0328 7ED1     		bne	.L117
 409              	.L38:
 410 032a 3046     		mov	r0, r6
 411 032c 2146     		mov	r1, r4
 412 032e 3A46     		mov	r2, r7
 413 0330 FFF7FEFF 		bl	_ZN6GCodes9ProbeGridER11GCodeBufferR9StringRef
 414 0334 8DF80F00 		strb	r0, [sp, #15]
 415 0338 F3E6     		b	.L58
 416              	.L114:
 417 033a 3846     		mov	r0, r7
 418 033c 2149     		ldr	r1, .L120+20
 419 033e FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 420 0342 0123     		movs	r3, #1
 421 0344 8DF80F30 		strb	r3, [sp, #15]
 422 0348 EBE6     		b	.L58
 423              	.L115:
 424 034a 2046     		mov	r0, r4
 425 034c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 426 0350 0128     		cmp	r0, #1
 427 0352 40F08C80 		bne	.L14
 428 0356 06F5AC79 		add	r9, r6, #344
 429              	.L15:
 430 035a D6F8FC50 		ldr	r5, [r6, #252]
 431 035e 002D     		cmp	r5, #0
 432 0360 7FF407AF 		bne	.L27
 433 0364 D6F8B031 		ldr	r3, [r6, #432]
 434 0368 93B3     		cbz	r3, .L18
 435 036a 06F1A408 		add	r8, r6, #164
 436 036e DFF85CA0 		ldr	r10, .L120+28
 437 0372 0AE0     		b	.L57
 438              	.L16:
 439 0374 B9EC017A 		fldmias	r9!, {s14}
 440 0378 77EE877A 		fadds	s15, s15, s14
 441 037c 0135     		adds	r5, r5, #1
 442 037e E8EC017A 		fstmias	r8!, {s15}
 443 0382 D6F8B031 		ldr	r3, [r6, #432]
 444 0386 AB42     		cmp	r3, r5
 445 0388 22D9     		bls	.L18
 446              	.L57:
 447 038a 2046     		mov	r0, r4
 448 038c 1AF80510 		ldrb	r1, [r10, r5]	@ zero_extendqisi2
 449 0390 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 450 0394 DFED0C7A 		flds	s15, .L120+24
 451 0398 0028     		cmp	r0, #0
 452 039a EBD0     		beq	.L16
 453 039c 2046     		mov	r0, r4
 454 039e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 455 03a2 D6ED9B7A 		flds	s15, [r6, #620]
 456 03a6 07EE100A 		fmsr	s14, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 9


 457 03aa 67EE277A 		fmuls	s15, s14, s15
 458 03ae E1E7     		b	.L16
 459              	.L121:
 460              		.align	2
 461              	.L120:
 462 03b0 3333CB41 		.word	1103835955
 463 03b4 00000000 		.word	reprap
 464 03b8 00000000 		.word	.LANCHOR0
 465 03bc 00000000 		.word	.LC0
 466 03c0 1C000000 		.word	.LC1
 467 03c4 60000000 		.word	.LC3
 468 03c8 00000000 		.word	0
 469 03cc 00000000 		.word	_ZN6GCodes11axisLettersE
 470              	.L18:
 471 03d0 06EB8302 		add	r2, r6, r3, lsl #2
 472 03d4 A432     		adds	r2, r2, #164
 473 03d6 0021     		movs	r1, #0
 474              	.L22:
 475 03d8 0133     		adds	r3, r3, #1
 476 03da 092B     		cmp	r3, #9
 477 03dc 42F8041B 		str	r1, [r2], #4	@ float
 478 03e0 FAD9     		bls	.L22
 479 03e2 2046     		mov	r0, r4
 480 03e4 4621     		movs	r1, #70
 481 03e6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 482 03ea 90BB     		cbnz	r0, .L118
 483 03ec A368     		ldr	r3, [r4, #8]
 484 03ee D3ED017A 		flds	s15, [r3, #4]
 485              	.L23:
 486 03f2 4FF0FF31 		mov	r1, #-1
 487 03f6 0022     		movs	r2, #0
 488 03f8 0123     		movs	r3, #1
 489 03fa C6ED397A 		fsts	s15, [r6, #228]
 490 03fe C6F8E810 		str	r1, [r6, #232]
 491 0402 86F8F820 		strb	r2, [r6, #248]
 492 0406 C6F8FC30 		str	r3, [r6, #252]
 493 040a 8AE6     		b	.L58
 494              	.L113:
 495 040c 3046     		mov	r0, r6
 496 040e FFF7FEFF 		bl	_ZNK6GCodes15AllAxesAreHomedEv
 497 0412 0028     		cmp	r0, #0
 498 0414 7FF4C1AE 		bne	.L42
 499 0418 3846     		mov	r0, r7
 500 041a 1849     		ldr	r1, .L122
 501 041c FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 502 0420 0123     		movs	r3, #1
 503 0422 8DF80F30 		strb	r3, [sp, #15]
 504 0426 7CE6     		b	.L58
 505              	.L117:
 506 0428 2046     		mov	r0, r4
 507 042a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 508 042e 0028     		cmp	r0, #0
 509 0430 3FF47BAF 		beq	.L38
 510 0434 0128     		cmp	r0, #1
 511 0436 07D1     		bne	.L119
 512 0438 3046     		mov	r0, r6
 513 043a 2146     		mov	r1, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 10


 514 043c 3A46     		mov	r2, r7
 515 043e FFF7FEFF 		bl	_ZNK6GCodes13LoadHeightMapER11GCodeBufferR9StringRef
 516 0442 8DF80F00 		strb	r0, [sp, #15]
 517 0446 6CE6     		b	.L58
 518              	.L119:
 519 0448 0D4B     		ldr	r3, .L122+4
 520 044a 9868     		ldr	r0, [r3, #8]
 521 044c FFF7FEFF 		bl	_ZN4Move20SetIdentityTransformEv
 522 0450 67E6     		b	.L58
 523              	.L118:
 524 0452 2046     		mov	r0, r4
 525 0454 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 526 0458 DFED0A7A 		flds	s15, .L122+8
 527 045c 07EE100A 		fmsr	s14, r0
 528 0460 67EE277A 		fmuls	s15, s14, s15
 529 0464 C5E7     		b	.L23
 530              	.L116:
 531 0466 A368     		ldr	r3, [r4, #8]
 532 0468 0122     		movs	r2, #1
 533 046a 1A74     		strb	r2, [r3, #16]
 534 046c FAE6     		b	.L55
 535              	.L14:
 536 046e 0228     		cmp	r0, #2
 537 0470 7FF4F0AE 		bne	.L13
 538 0474 06F5C279 		add	r9, r6, #388
 539 0478 6FE7     		b	.L15
 540              	.L123:
 541 047a 00BF     		.align	2
 542              	.L122:
 543 047c 30000000 		.word	.LC2
 544 0480 00000000 		.word	reprap
 545 0484 8988883C 		.word	1015580809
 546              		.size	_ZN6GCodes11HandleGcodeER11GCodeBufferR9StringRef, .-_ZN6GCodes11HandleGcodeER11GCodeBufferR
 547              		.global	__aeabi_f2d
 548              		.global	__aeabi_dmul
 549              		.global	__aeabi_d2iz
 550              		.global	__aeabi_d2f
 551              		.global	__aeabi_d2uiz
 552              		.global	__aeabi_dadd
 553              		.global	__aeabi_dcmplt
 554              		.section	.text._ZN6GCodes11HandleMcodeER11GCodeBufferR9StringRef,"ax",%progbits
 555              		.align	2
 556              		.global	_ZN6GCodes11HandleMcodeER11GCodeBufferR9StringRef
 557              		.thumb
 558              		.thumb_func
 559              		.type	_ZN6GCodes11HandleMcodeER11GCodeBufferR9StringRef, %function
 560              	_ZN6GCodes11HandleMcodeER11GCodeBufferR9StringRef:
 561              		@ args = 0, pretend = 0, frame = 312
 562              		@ frame_needed = 0, uses_anonymous_args = 0
 563 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 564 0004 2DED028B 		fstmfdd	sp!, {d8}
 565 0008 0546     		mov	r5, r0
 566 000a DBB0     		sub	sp, sp, #364
 567 000c 0846     		mov	r0, r1
 568 000e 0C46     		mov	r4, r1
 569 0010 1646     		mov	r6, r2
 570 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 11


 571 0016 95F80033 		ldrb	r3, [r5, #768]	@ zero_extendqisi2
 572 001a 8146     		mov	r9, r0
 573 001c 002B     		cmp	r3, #0
 574 001e 00F00F84 		beq	.L125
 575 0022 A0F11403 		sub	r3, r0, #20
 576 0026 112B     		cmp	r3, #17
 577 0028 40F20A84 		bls	.L125
 578 002c 0128     		cmp	r0, #1
 579 002e 13D9     		bls	.L126
 580 0030 A0F15203 		sub	r3, r0, #82
 581 0034 012B     		cmp	r3, #1
 582 0036 0FD9     		bls	.L126
 583 0038 6928     		cmp	r0, #105
 584 003a 0DD0     		beq	.L126
 585 003c A0F16F03 		sub	r3, r0, #111
 586 0040 012B     		cmp	r3, #1
 587 0042 09D9     		bls	.L126
 588 0044 7A28     		cmp	r0, #122
 589 0046 07D0     		beq	.L126
 590 0048 B0F5CC7F 		cmp	r0, #408
 591 004c 04D0     		beq	.L126
 592 004e 40F2E733 		movw	r3, #999
 593 0052 9842     		cmp	r0, r3
 594 0054 40F01184 		bne	.L1461
 595              	.L126:
 596 0058 A368     		ldr	r3, [r4, #8]
 597 005a 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 598 005c D206     		lsls	r2, r2, #27
 599 005e 00F10C84 		bmi	.L1461
 600              	.L128:
 601 0062 40F2E732 		movw	r2, #999
 602 0066 9145     		cmp	r9, r2
 603 0068 02F2F781 		bhi	.L865
 604 006c DFE819F0 		tbh	[pc, r9, lsl #1]
 605              	.L868:
 606 0070 4B0F     		.2byte	(.L134-.L868)/2
 607 0072 4B0F     		.2byte	(.L134-.L868)/2
 608 0074 F511     		.2byte	(.L865-.L868)/2
 609 0076 F511     		.2byte	(.L865-.L868)/2
 610 0078 F511     		.2byte	(.L865-.L868)/2
 611 007a F511     		.2byte	(.L865-.L868)/2
 612 007c F511     		.2byte	(.L865-.L868)/2
 613 007e F511     		.2byte	(.L865-.L868)/2
 614 0080 F511     		.2byte	(.L865-.L868)/2
 615 0082 F511     		.2byte	(.L865-.L868)/2
 616 0084 F511     		.2byte	(.L865-.L868)/2
 617 0086 F511     		.2byte	(.L865-.L868)/2
 618 0088 F511     		.2byte	(.L865-.L868)/2
 619 008a F511     		.2byte	(.L865-.L868)/2
 620 008c F511     		.2byte	(.L865-.L868)/2
 621 008e F511     		.2byte	(.L865-.L868)/2
 622 0090 F511     		.2byte	(.L865-.L868)/2
 623 0092 F511     		.2byte	(.L865-.L868)/2
 624 0094 D30A     		.2byte	(.L141-.L868)/2
 625 0096 F511     		.2byte	(.L865-.L868)/2
 626 0098 0B10     		.2byte	(.L157-.L868)/2
 627 009a D80F     		.2byte	(.L173-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 12


 628 009c F20F     		.2byte	(.L176-.L868)/2
 629 009e 890B     		.2byte	(.L178-.L868)/2
 630 00a0 270D     		.2byte	(.L186-.L868)/2
 631 00a2 0C0D     		.2byte	(.L191-.L868)/2
 632 00a4 510D     		.2byte	(.L194-.L868)/2
 633 00a6 3606     		.2byte	(.L200-.L868)/2
 634 00a8 DD10     		.2byte	(.L202-.L868)/2
 635 00aa 9E0E     		.2byte	(.L205-.L868)/2
 636 00ac F710     		.2byte	(.L206-.L868)/2
 637 00ae F511     		.2byte	(.L865-.L868)/2
 638 00b0 890B     		.2byte	(.L178-.L868)/2
 639 00b2 F511     		.2byte	(.L865-.L868)/2
 640 00b4 F511     		.2byte	(.L865-.L868)/2
 641 00b6 F511     		.2byte	(.L865-.L868)/2
 642 00b8 190B     		.2byte	(.L208-.L868)/2
 643 00ba 3E0B     		.2byte	(.L211-.L868)/2
 644 00bc 640B     		.2byte	(.L219-.L868)/2
 645 00be F511     		.2byte	(.L865-.L868)/2
 646 00c0 F511     		.2byte	(.L865-.L868)/2
 647 00c2 F511     		.2byte	(.L865-.L868)/2
 648 00c4 BB06     		.2byte	(.L222-.L868)/2
 649 00c6 F511     		.2byte	(.L865-.L868)/2
 650 00c8 F511     		.2byte	(.L865-.L868)/2
 651 00ca F511     		.2byte	(.L865-.L868)/2
 652 00cc F511     		.2byte	(.L865-.L868)/2
 653 00ce F511     		.2byte	(.L865-.L868)/2
 654 00d0 F511     		.2byte	(.L865-.L868)/2
 655 00d2 F511     		.2byte	(.L865-.L868)/2
 656 00d4 F511     		.2byte	(.L865-.L868)/2
 657 00d6 F511     		.2byte	(.L865-.L868)/2
 658 00d8 F511     		.2byte	(.L865-.L868)/2
 659 00da F511     		.2byte	(.L865-.L868)/2
 660 00dc F511     		.2byte	(.L865-.L868)/2
 661 00de F511     		.2byte	(.L865-.L868)/2
 662 00e0 F511     		.2byte	(.L865-.L868)/2
 663 00e2 F511     		.2byte	(.L865-.L868)/2
 664 00e4 F511     		.2byte	(.L865-.L868)/2
 665 00e6 F511     		.2byte	(.L865-.L868)/2
 666 00e8 F511     		.2byte	(.L865-.L868)/2
 667 00ea F511     		.2byte	(.L865-.L868)/2
 668 00ec F511     		.2byte	(.L865-.L868)/2
 669 00ee F511     		.2byte	(.L865-.L868)/2
 670 00f0 F511     		.2byte	(.L865-.L868)/2
 671 00f2 F511     		.2byte	(.L865-.L868)/2
 672 00f4 F511     		.2byte	(.L865-.L868)/2
 673 00f6 F511     		.2byte	(.L865-.L868)/2
 674 00f8 F511     		.2byte	(.L865-.L868)/2
 675 00fa F511     		.2byte	(.L865-.L868)/2
 676 00fc F511     		.2byte	(.L865-.L868)/2
 677 00fe F511     		.2byte	(.L865-.L868)/2
 678 0100 F511     		.2byte	(.L865-.L868)/2
 679 0102 F511     		.2byte	(.L865-.L868)/2
 680 0104 F511     		.2byte	(.L865-.L868)/2
 681 0106 F511     		.2byte	(.L865-.L868)/2
 682 0108 F511     		.2byte	(.L865-.L868)/2
 683 010a F511     		.2byte	(.L865-.L868)/2
 684 010c F511     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 13


 685 010e F511     		.2byte	(.L865-.L868)/2
 686 0110 C506     		.2byte	(.L231-.L868)/2
 687 0112 AF0A     		.2byte	(.L232-.L868)/2
 688 0114 BE0A     		.2byte	(.L233-.L868)/2
 689 0116 9B0A     		.2byte	(.L236-.L868)/2
 690 0118 D30A     		.2byte	(.L141-.L868)/2
 691 011a F211     		.2byte	(.L1006-.L868)/2
 692 011c F511     		.2byte	(.L865-.L868)/2
 693 011e F511     		.2byte	(.L865-.L868)/2
 694 0120 F511     		.2byte	(.L865-.L868)/2
 695 0122 F511     		.2byte	(.L865-.L868)/2
 696 0124 F511     		.2byte	(.L865-.L868)/2
 697 0126 F511     		.2byte	(.L865-.L868)/2
 698 0128 BB0C     		.2byte	(.L239-.L868)/2
 699 012a F511     		.2byte	(.L865-.L868)/2
 700 012c F511     		.2byte	(.L865-.L868)/2
 701 012e F511     		.2byte	(.L865-.L868)/2
 702 0130 F511     		.2byte	(.L865-.L868)/2
 703 0132 F511     		.2byte	(.L865-.L868)/2
 704 0134 A60C     		.2byte	(.L259-.L868)/2
 705 0136 1F0D     		.2byte	(.L261-.L868)/2
 706 0138 F511     		.2byte	(.L865-.L868)/2
 707 013a 2D09     		.2byte	(.L262-.L868)/2
 708 013c F211     		.2byte	(.L1006-.L868)/2
 709 013e F20C     		.2byte	(.L263-.L868)/2
 710 0140 010D     		.2byte	(.L264-.L868)/2
 711 0142 5204     		.2byte	(.L268-.L868)/2
 712 0144 5904     		.2byte	(.L269-.L868)/2
 713 0146 CC04     		.2byte	(.L297-.L868)/2
 714 0148 D404     		.2byte	(.L298-.L868)/2
 715 014a DF04     		.2byte	(.L299-.L868)/2
 716 014c F211     		.2byte	(.L1006-.L868)/2
 717 014e 2705     		.2byte	(.L307-.L868)/2
 718 0150 4A05     		.2byte	(.L310-.L868)/2
 719 0152 F511     		.2byte	(.L865-.L868)/2
 720 0154 5005     		.2byte	(.L311-.L868)/2
 721 0156 4707     		.2byte	(.L312-.L868)/2
 722 0158 5907     		.2byte	(.L315-.L868)/2
 723 015a 5206     		.2byte	(.L331-.L868)/2
 724 015c F511     		.2byte	(.L865-.L868)/2
 725 015e BD07     		.2byte	(.L333-.L868)/2
 726 0160 B607     		.2byte	(.L337-.L868)/2
 727 0162 EC07     		.2byte	(.L338-.L868)/2
 728 0164 A707     		.2byte	(.L339-.L868)/2
 729 0166 F511     		.2byte	(.L865-.L868)/2
 730 0168 F511     		.2byte	(.L865-.L868)/2
 731 016a F511     		.2byte	(.L865-.L868)/2
 732 016c F511     		.2byte	(.L865-.L868)/2
 733 016e F511     		.2byte	(.L865-.L868)/2
 734 0170 F511     		.2byte	(.L865-.L868)/2
 735 0172 F511     		.2byte	(.L865-.L868)/2
 736 0174 F511     		.2byte	(.L865-.L868)/2
 737 0176 F511     		.2byte	(.L865-.L868)/2
 738 0178 F511     		.2byte	(.L865-.L868)/2
 739 017a F511     		.2byte	(.L865-.L868)/2
 740 017c F511     		.2byte	(.L865-.L868)/2
 741 017e CF08     		.2byte	(.L342-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 14


 742 0180 F511     		.2byte	(.L865-.L868)/2
 743 0182 F511     		.2byte	(.L865-.L868)/2
 744 0184 F511     		.2byte	(.L865-.L868)/2
 745 0186 F511     		.2byte	(.L865-.L868)/2
 746 0188 AC08     		.2byte	(.L345-.L868)/2
 747 018a 5B09     		.2byte	(.L354-.L868)/2
 748 018c F511     		.2byte	(.L865-.L868)/2
 749 018e FE05     		.2byte	(.L365-.L868)/2
 750 0190 2A06     		.2byte	(.L371-.L868)/2
 751 0192 F511     		.2byte	(.L865-.L868)/2
 752 0194 F511     		.2byte	(.L865-.L868)/2
 753 0196 F511     		.2byte	(.L865-.L868)/2
 754 0198 F511     		.2byte	(.L865-.L868)/2
 755 019a F511     		.2byte	(.L865-.L868)/2
 756 019c F511     		.2byte	(.L865-.L868)/2
 757 019e F511     		.2byte	(.L865-.L868)/2
 758 01a0 F511     		.2byte	(.L865-.L868)/2
 759 01a2 F511     		.2byte	(.L865-.L868)/2
 760 01a4 F511     		.2byte	(.L865-.L868)/2
 761 01a6 F511     		.2byte	(.L865-.L868)/2
 762 01a8 F511     		.2byte	(.L865-.L868)/2
 763 01aa F511     		.2byte	(.L865-.L868)/2
 764 01ac F511     		.2byte	(.L865-.L868)/2
 765 01ae F511     		.2byte	(.L865-.L868)/2
 766 01b0 F511     		.2byte	(.L865-.L868)/2
 767 01b2 F511     		.2byte	(.L865-.L868)/2
 768 01b4 F511     		.2byte	(.L865-.L868)/2
 769 01b6 F511     		.2byte	(.L865-.L868)/2
 770 01b8 F511     		.2byte	(.L865-.L868)/2
 771 01ba F511     		.2byte	(.L865-.L868)/2
 772 01bc F511     		.2byte	(.L865-.L868)/2
 773 01be F511     		.2byte	(.L865-.L868)/2
 774 01c0 F511     		.2byte	(.L865-.L868)/2
 775 01c2 F511     		.2byte	(.L865-.L868)/2
 776 01c4 F511     		.2byte	(.L865-.L868)/2
 777 01c6 F511     		.2byte	(.L865-.L868)/2
 778 01c8 F511     		.2byte	(.L865-.L868)/2
 779 01ca F511     		.2byte	(.L865-.L868)/2
 780 01cc F511     		.2byte	(.L865-.L868)/2
 781 01ce F511     		.2byte	(.L865-.L868)/2
 782 01d0 F511     		.2byte	(.L865-.L868)/2
 783 01d2 F511     		.2byte	(.L865-.L868)/2
 784 01d4 F511     		.2byte	(.L865-.L868)/2
 785 01d6 F511     		.2byte	(.L865-.L868)/2
 786 01d8 F511     		.2byte	(.L865-.L868)/2
 787 01da F511     		.2byte	(.L865-.L868)/2
 788 01dc F511     		.2byte	(.L865-.L868)/2
 789 01de F511     		.2byte	(.L865-.L868)/2
 790 01e0 F511     		.2byte	(.L865-.L868)/2
 791 01e2 F511     		.2byte	(.L865-.L868)/2
 792 01e4 F511     		.2byte	(.L865-.L868)/2
 793 01e6 F511     		.2byte	(.L865-.L868)/2
 794 01e8 F511     		.2byte	(.L865-.L868)/2
 795 01ea F511     		.2byte	(.L865-.L868)/2
 796 01ec A90B     		.2byte	(.L372-.L868)/2
 797 01ee A90B     		.2byte	(.L372-.L868)/2
 798 01f0 F511     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 15


 799 01f2 F511     		.2byte	(.L865-.L868)/2
 800 01f4 F511     		.2byte	(.L865-.L868)/2
 801 01f6 F511     		.2byte	(.L865-.L868)/2
 802 01f8 F511     		.2byte	(.L865-.L868)/2
 803 01fa F511     		.2byte	(.L865-.L868)/2
 804 01fc F511     		.2byte	(.L865-.L868)/2
 805 01fe F511     		.2byte	(.L865-.L868)/2
 806 0200 F511     		.2byte	(.L865-.L868)/2
 807 0202 E00B     		.2byte	(.L869-.L868)/2
 808 0204 F511     		.2byte	(.L865-.L868)/2
 809 0206 8A09     		.2byte	(.L870-.L868)/2
 810 0208 B809     		.2byte	(.L408-.L868)/2
 811 020a F511     		.2byte	(.L865-.L868)/2
 812 020c DE09     		.2byte	(.L411-.L868)/2
 813 020e E509     		.2byte	(.L412-.L868)/2
 814 0210 2E08     		.2byte	(.L431-.L868)/2
 815 0212 F511     		.2byte	(.L865-.L868)/2
 816 0214 F211     		.2byte	(.L1006-.L868)/2
 817 0216 F511     		.2byte	(.L865-.L868)/2
 818 0218 F511     		.2byte	(.L865-.L868)/2
 819 021a F511     		.2byte	(.L865-.L868)/2
 820 021c F511     		.2byte	(.L865-.L868)/2
 821 021e F511     		.2byte	(.L865-.L868)/2
 822 0220 F511     		.2byte	(.L865-.L868)/2
 823 0222 F511     		.2byte	(.L865-.L868)/2
 824 0224 F511     		.2byte	(.L865-.L868)/2
 825 0226 F511     		.2byte	(.L865-.L868)/2
 826 0228 0A0C     		.2byte	(.L443-.L868)/2
 827 022a 660C     		.2byte	(.L454-.L868)/2
 828 022c F511     		.2byte	(.L865-.L868)/2
 829 022e F511     		.2byte	(.L865-.L868)/2
 830 0230 F511     		.2byte	(.L865-.L868)/2
 831 0232 F511     		.2byte	(.L865-.L868)/2
 832 0234 030B     		.2byte	(.L190-.L868)/2
 833 0236 F511     		.2byte	(.L865-.L868)/2
 834 0238 F511     		.2byte	(.L865-.L868)/2
 835 023a F511     		.2byte	(.L865-.L868)/2
 836 023c F511     		.2byte	(.L865-.L868)/2
 837 023e F511     		.2byte	(.L865-.L868)/2
 838 0240 F511     		.2byte	(.L865-.L868)/2
 839 0242 F511     		.2byte	(.L865-.L868)/2
 840 0244 F511     		.2byte	(.L865-.L868)/2
 841 0246 F511     		.2byte	(.L865-.L868)/2
 842 0248 F511     		.2byte	(.L865-.L868)/2
 843 024a F511     		.2byte	(.L865-.L868)/2
 844 024c F511     		.2byte	(.L865-.L868)/2
 845 024e F511     		.2byte	(.L865-.L868)/2
 846 0250 F511     		.2byte	(.L865-.L868)/2
 847 0252 F511     		.2byte	(.L865-.L868)/2
 848 0254 F511     		.2byte	(.L865-.L868)/2
 849 0256 F511     		.2byte	(.L865-.L868)/2
 850 0258 F511     		.2byte	(.L865-.L868)/2
 851 025a F511     		.2byte	(.L865-.L868)/2
 852 025c F511     		.2byte	(.L865-.L868)/2
 853 025e F511     		.2byte	(.L865-.L868)/2
 854 0260 F511     		.2byte	(.L865-.L868)/2
 855 0262 F511     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 16


 856 0264 F511     		.2byte	(.L865-.L868)/2
 857 0266 F511     		.2byte	(.L865-.L868)/2
 858 0268 F511     		.2byte	(.L865-.L868)/2
 859 026a F511     		.2byte	(.L865-.L868)/2
 860 026c F511     		.2byte	(.L865-.L868)/2
 861 026e F511     		.2byte	(.L865-.L868)/2
 862 0270 F511     		.2byte	(.L865-.L868)/2
 863 0272 F511     		.2byte	(.L865-.L868)/2
 864 0274 F511     		.2byte	(.L865-.L868)/2
 865 0276 F511     		.2byte	(.L865-.L868)/2
 866 0278 F511     		.2byte	(.L865-.L868)/2
 867 027a F511     		.2byte	(.L865-.L868)/2
 868 027c F511     		.2byte	(.L865-.L868)/2
 869 027e F511     		.2byte	(.L865-.L868)/2
 870 0280 F511     		.2byte	(.L865-.L868)/2
 871 0282 F511     		.2byte	(.L865-.L868)/2
 872 0284 F511     		.2byte	(.L865-.L868)/2
 873 0286 F511     		.2byte	(.L865-.L868)/2
 874 0288 F511     		.2byte	(.L865-.L868)/2
 875 028a F511     		.2byte	(.L865-.L868)/2
 876 028c F511     		.2byte	(.L865-.L868)/2
 877 028e F511     		.2byte	(.L865-.L868)/2
 878 0290 F511     		.2byte	(.L865-.L868)/2
 879 0292 F511     		.2byte	(.L865-.L868)/2
 880 0294 F511     		.2byte	(.L865-.L868)/2
 881 0296 F511     		.2byte	(.L865-.L868)/2
 882 0298 F511     		.2byte	(.L865-.L868)/2
 883 029a F511     		.2byte	(.L865-.L868)/2
 884 029c F511     		.2byte	(.L865-.L868)/2
 885 029e F511     		.2byte	(.L865-.L868)/2
 886 02a0 B110     		.2byte	(.L461-.L868)/2
 887 02a2 F511     		.2byte	(.L865-.L868)/2
 888 02a4 F511     		.2byte	(.L865-.L868)/2
 889 02a6 F511     		.2byte	(.L865-.L868)/2
 890 02a8 F511     		.2byte	(.L865-.L868)/2
 891 02aa F511     		.2byte	(.L865-.L868)/2
 892 02ac F511     		.2byte	(.L865-.L868)/2
 893 02ae F511     		.2byte	(.L865-.L868)/2
 894 02b0 F511     		.2byte	(.L865-.L868)/2
 895 02b2 F511     		.2byte	(.L865-.L868)/2
 896 02b4 A50D     		.2byte	(.L476-.L868)/2
 897 02b6 F511     		.2byte	(.L865-.L868)/2
 898 02b8 F511     		.2byte	(.L865-.L868)/2
 899 02ba F511     		.2byte	(.L865-.L868)/2
 900 02bc F511     		.2byte	(.L865-.L868)/2
 901 02be F511     		.2byte	(.L865-.L868)/2
 902 02c0 F511     		.2byte	(.L865-.L868)/2
 903 02c2 F511     		.2byte	(.L865-.L868)/2
 904 02c4 F511     		.2byte	(.L865-.L868)/2
 905 02c6 F511     		.2byte	(.L865-.L868)/2
 906 02c8 C00D     		.2byte	(.L479-.L868)/2
 907 02ca 3B12     		.2byte	(.L129-.L868)/2
 908 02cc DA0D     		.2byte	(.L482-.L868)/2
 909 02ce FE0D     		.2byte	(.L485-.L868)/2
 910 02d0 CC06     		.2byte	(.L496-.L868)/2
 911 02d2 DB06     		.2byte	(.L497-.L868)/2
 912 02d4 F511     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 17


 913 02d6 3012     		.2byte	(.L130-.L868)/2
 914 02d8 F511     		.2byte	(.L865-.L868)/2
 915 02da F511     		.2byte	(.L865-.L868)/2
 916 02dc F511     		.2byte	(.L865-.L868)/2
 917 02de F511     		.2byte	(.L865-.L868)/2
 918 02e0 F511     		.2byte	(.L865-.L868)/2
 919 02e2 F511     		.2byte	(.L865-.L868)/2
 920 02e4 F511     		.2byte	(.L865-.L868)/2
 921 02e6 F511     		.2byte	(.L865-.L868)/2
 922 02e8 F511     		.2byte	(.L865-.L868)/2
 923 02ea F511     		.2byte	(.L865-.L868)/2
 924 02ec F511     		.2byte	(.L865-.L868)/2
 925 02ee F511     		.2byte	(.L865-.L868)/2
 926 02f0 F511     		.2byte	(.L865-.L868)/2
 927 02f2 F511     		.2byte	(.L865-.L868)/2
 928 02f4 F511     		.2byte	(.L865-.L868)/2
 929 02f6 F511     		.2byte	(.L865-.L868)/2
 930 02f8 F511     		.2byte	(.L865-.L868)/2
 931 02fa F511     		.2byte	(.L865-.L868)/2
 932 02fc F511     		.2byte	(.L865-.L868)/2
 933 02fe F511     		.2byte	(.L865-.L868)/2
 934 0300 F511     		.2byte	(.L865-.L868)/2
 935 0302 F511     		.2byte	(.L865-.L868)/2
 936 0304 F511     		.2byte	(.L865-.L868)/2
 937 0306 F511     		.2byte	(.L865-.L868)/2
 938 0308 F511     		.2byte	(.L865-.L868)/2
 939 030a F511     		.2byte	(.L865-.L868)/2
 940 030c F511     		.2byte	(.L865-.L868)/2
 941 030e F511     		.2byte	(.L865-.L868)/2
 942 0310 F511     		.2byte	(.L865-.L868)/2
 943 0312 F511     		.2byte	(.L865-.L868)/2
 944 0314 F511     		.2byte	(.L865-.L868)/2
 945 0316 F511     		.2byte	(.L865-.L868)/2
 946 0318 F511     		.2byte	(.L865-.L868)/2
 947 031a F511     		.2byte	(.L865-.L868)/2
 948 031c F511     		.2byte	(.L865-.L868)/2
 949 031e F511     		.2byte	(.L865-.L868)/2
 950 0320 F511     		.2byte	(.L865-.L868)/2
 951 0322 F511     		.2byte	(.L865-.L868)/2
 952 0324 F511     		.2byte	(.L865-.L868)/2
 953 0326 F511     		.2byte	(.L865-.L868)/2
 954 0328 F511     		.2byte	(.L865-.L868)/2
 955 032a F511     		.2byte	(.L865-.L868)/2
 956 032c E306     		.2byte	(.L506-.L868)/2
 957 032e F511     		.2byte	(.L865-.L868)/2
 958 0330 F511     		.2byte	(.L865-.L868)/2
 959 0332 F511     		.2byte	(.L865-.L868)/2
 960 0334 F511     		.2byte	(.L865-.L868)/2
 961 0336 F511     		.2byte	(.L865-.L868)/2
 962 0338 F511     		.2byte	(.L865-.L868)/2
 963 033a F511     		.2byte	(.L865-.L868)/2
 964 033c F511     		.2byte	(.L865-.L868)/2
 965 033e F511     		.2byte	(.L865-.L868)/2
 966 0340 F511     		.2byte	(.L865-.L868)/2
 967 0342 F511     		.2byte	(.L865-.L868)/2
 968 0344 F511     		.2byte	(.L865-.L868)/2
 969 0346 F511     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 18


 970 0348 F511     		.2byte	(.L865-.L868)/2
 971 034a F511     		.2byte	(.L865-.L868)/2
 972 034c F511     		.2byte	(.L865-.L868)/2
 973 034e F511     		.2byte	(.L865-.L868)/2
 974 0350 F511     		.2byte	(.L865-.L868)/2
 975 0352 F511     		.2byte	(.L865-.L868)/2
 976 0354 F511     		.2byte	(.L865-.L868)/2
 977 0356 F511     		.2byte	(.L865-.L868)/2
 978 0358 F511     		.2byte	(.L865-.L868)/2
 979 035a F511     		.2byte	(.L865-.L868)/2
 980 035c 3F07     		.2byte	(.L531-.L868)/2
 981 035e 990B     		.2byte	(.L532-.L868)/2
 982 0360 8510     		.2byte	(.L533-.L868)/2
 983 0362 F511     		.2byte	(.L865-.L868)/2
 984 0364 F511     		.2byte	(.L865-.L868)/2
 985 0366 F511     		.2byte	(.L865-.L868)/2
 986 0368 F511     		.2byte	(.L865-.L868)/2
 987 036a F511     		.2byte	(.L865-.L868)/2
 988 036c F511     		.2byte	(.L865-.L868)/2
 989 036e F511     		.2byte	(.L865-.L868)/2
 990 0370 F511     		.2byte	(.L865-.L868)/2
 991 0372 F511     		.2byte	(.L865-.L868)/2
 992 0374 F511     		.2byte	(.L865-.L868)/2
 993 0376 F511     		.2byte	(.L865-.L868)/2
 994 0378 F511     		.2byte	(.L865-.L868)/2
 995 037a F511     		.2byte	(.L865-.L868)/2
 996 037c F511     		.2byte	(.L865-.L868)/2
 997 037e F511     		.2byte	(.L865-.L868)/2
 998 0380 F511     		.2byte	(.L865-.L868)/2
 999 0382 F511     		.2byte	(.L865-.L868)/2
 1000 0384 F511     		.2byte	(.L865-.L868)/2
 1001 0386 F511     		.2byte	(.L865-.L868)/2
 1002 0388 F511     		.2byte	(.L865-.L868)/2
 1003 038a F511     		.2byte	(.L865-.L868)/2
 1004 038c F511     		.2byte	(.L865-.L868)/2
 1005 038e F511     		.2byte	(.L865-.L868)/2
 1006 0390 1D0F     		.2byte	(.L537-.L868)/2
 1007 0392 9D10     		.2byte	(.L538-.L868)/2
 1008 0394 4F09     		.2byte	(.L539-.L868)/2
 1009 0396 F511     		.2byte	(.L865-.L868)/2
 1010 0398 7311     		.2byte	(.L540-.L868)/2
 1011 039a F511     		.2byte	(.L865-.L868)/2
 1012 039c F511     		.2byte	(.L865-.L868)/2
 1013 039e F511     		.2byte	(.L865-.L868)/2
 1014 03a0 AC0F     		.2byte	(.L543-.L868)/2
 1015 03a2 F511     		.2byte	(.L865-.L868)/2
 1016 03a4 F511     		.2byte	(.L865-.L868)/2
 1017 03a6 F511     		.2byte	(.L865-.L868)/2
 1018 03a8 F511     		.2byte	(.L865-.L868)/2
 1019 03aa F511     		.2byte	(.L865-.L868)/2
 1020 03ac F511     		.2byte	(.L865-.L868)/2
 1021 03ae F511     		.2byte	(.L865-.L868)/2
 1022 03b0 F511     		.2byte	(.L865-.L868)/2
 1023 03b2 F511     		.2byte	(.L865-.L868)/2
 1024 03b4 F511     		.2byte	(.L865-.L868)/2
 1025 03b6 F511     		.2byte	(.L865-.L868)/2
 1026 03b8 F511     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 19


 1027 03ba F511     		.2byte	(.L865-.L868)/2
 1028 03bc F511     		.2byte	(.L865-.L868)/2
 1029 03be F511     		.2byte	(.L865-.L868)/2
 1030 03c0 F511     		.2byte	(.L865-.L868)/2
 1031 03c2 F511     		.2byte	(.L865-.L868)/2
 1032 03c4 F511     		.2byte	(.L865-.L868)/2
 1033 03c6 F511     		.2byte	(.L865-.L868)/2
 1034 03c8 F511     		.2byte	(.L865-.L868)/2
 1035 03ca F511     		.2byte	(.L865-.L868)/2
 1036 03cc F511     		.2byte	(.L865-.L868)/2
 1037 03ce F511     		.2byte	(.L865-.L868)/2
 1038 03d0 F511     		.2byte	(.L865-.L868)/2
 1039 03d2 F511     		.2byte	(.L865-.L868)/2
 1040 03d4 F511     		.2byte	(.L865-.L868)/2
 1041 03d6 F511     		.2byte	(.L865-.L868)/2
 1042 03d8 F511     		.2byte	(.L865-.L868)/2
 1043 03da F511     		.2byte	(.L865-.L868)/2
 1044 03dc F511     		.2byte	(.L865-.L868)/2
 1045 03de F511     		.2byte	(.L865-.L868)/2
 1046 03e0 F511     		.2byte	(.L865-.L868)/2
 1047 03e2 F511     		.2byte	(.L865-.L868)/2
 1048 03e4 F511     		.2byte	(.L865-.L868)/2
 1049 03e6 F511     		.2byte	(.L865-.L868)/2
 1050 03e8 F511     		.2byte	(.L865-.L868)/2
 1051 03ea F511     		.2byte	(.L865-.L868)/2
 1052 03ec F511     		.2byte	(.L865-.L868)/2
 1053 03ee F511     		.2byte	(.L865-.L868)/2
 1054 03f0 F511     		.2byte	(.L865-.L868)/2
 1055 03f2 F511     		.2byte	(.L865-.L868)/2
 1056 03f4 F511     		.2byte	(.L865-.L868)/2
 1057 03f6 F511     		.2byte	(.L865-.L868)/2
 1058 03f8 F511     		.2byte	(.L865-.L868)/2
 1059 03fa F511     		.2byte	(.L865-.L868)/2
 1060 03fc F511     		.2byte	(.L865-.L868)/2
 1061 03fe F511     		.2byte	(.L865-.L868)/2
 1062 0400 F511     		.2byte	(.L865-.L868)/2
 1063 0402 F511     		.2byte	(.L865-.L868)/2
 1064 0404 F511     		.2byte	(.L865-.L868)/2
 1065 0406 F511     		.2byte	(.L865-.L868)/2
 1066 0408 F511     		.2byte	(.L865-.L868)/2
 1067 040a F511     		.2byte	(.L865-.L868)/2
 1068 040c F511     		.2byte	(.L865-.L868)/2
 1069 040e F511     		.2byte	(.L865-.L868)/2
 1070 0410 F511     		.2byte	(.L865-.L868)/2
 1071 0412 F511     		.2byte	(.L865-.L868)/2
 1072 0414 F511     		.2byte	(.L865-.L868)/2
 1073 0416 F511     		.2byte	(.L865-.L868)/2
 1074 0418 F511     		.2byte	(.L865-.L868)/2
 1075 041a F511     		.2byte	(.L865-.L868)/2
 1076 041c F511     		.2byte	(.L865-.L868)/2
 1077 041e F511     		.2byte	(.L865-.L868)/2
 1078 0420 F511     		.2byte	(.L865-.L868)/2
 1079 0422 F511     		.2byte	(.L865-.L868)/2
 1080 0424 F511     		.2byte	(.L865-.L868)/2
 1081 0426 F511     		.2byte	(.L865-.L868)/2
 1082 0428 F511     		.2byte	(.L865-.L868)/2
 1083 042a F511     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 20


 1084 042c F511     		.2byte	(.L865-.L868)/2
 1085 042e F511     		.2byte	(.L865-.L868)/2
 1086 0430 F511     		.2byte	(.L865-.L868)/2
 1087 0432 F511     		.2byte	(.L865-.L868)/2
 1088 0434 F511     		.2byte	(.L865-.L868)/2
 1089 0436 F511     		.2byte	(.L865-.L868)/2
 1090 0438 F511     		.2byte	(.L865-.L868)/2
 1091 043a F511     		.2byte	(.L865-.L868)/2
 1092 043c F511     		.2byte	(.L865-.L868)/2
 1093 043e F511     		.2byte	(.L865-.L868)/2
 1094 0440 F511     		.2byte	(.L865-.L868)/2
 1095 0442 F511     		.2byte	(.L865-.L868)/2
 1096 0444 F511     		.2byte	(.L865-.L868)/2
 1097 0446 F511     		.2byte	(.L865-.L868)/2
 1098 0448 F511     		.2byte	(.L865-.L868)/2
 1099 044a F511     		.2byte	(.L865-.L868)/2
 1100 044c F511     		.2byte	(.L865-.L868)/2
 1101 044e F511     		.2byte	(.L865-.L868)/2
 1102 0450 F511     		.2byte	(.L865-.L868)/2
 1103 0452 F511     		.2byte	(.L865-.L868)/2
 1104 0454 F511     		.2byte	(.L865-.L868)/2
 1105 0456 F511     		.2byte	(.L865-.L868)/2
 1106 0458 9C11     		.2byte	(.L550-.L868)/2
 1107 045a 5D0E     		.2byte	(.L551-.L868)/2
 1108 045c 5C11     		.2byte	(.L552-.L868)/2
 1109 045e 0611     		.2byte	(.L553-.L868)/2
 1110 0460 F511     		.2byte	(.L865-.L868)/2
 1111 0462 F511     		.2byte	(.L865-.L868)/2
 1112 0464 F511     		.2byte	(.L865-.L868)/2
 1113 0466 F511     		.2byte	(.L865-.L868)/2
 1114 0468 F511     		.2byte	(.L865-.L868)/2
 1115 046a F511     		.2byte	(.L865-.L868)/2
 1116 046c F511     		.2byte	(.L865-.L868)/2
 1117 046e F511     		.2byte	(.L865-.L868)/2
 1118 0470 F511     		.2byte	(.L865-.L868)/2
 1119 0472 F511     		.2byte	(.L865-.L868)/2
 1120 0474 F511     		.2byte	(.L865-.L868)/2
 1121 0476 F511     		.2byte	(.L865-.L868)/2
 1122 0478 F511     		.2byte	(.L865-.L868)/2
 1123 047a F511     		.2byte	(.L865-.L868)/2
 1124 047c F511     		.2byte	(.L865-.L868)/2
 1125 047e F511     		.2byte	(.L865-.L868)/2
 1126 0480 F511     		.2byte	(.L865-.L868)/2
 1127 0482 F511     		.2byte	(.L865-.L868)/2
 1128 0484 F511     		.2byte	(.L865-.L868)/2
 1129 0486 F511     		.2byte	(.L865-.L868)/2
 1130 0488 F511     		.2byte	(.L865-.L868)/2
 1131 048a F511     		.2byte	(.L865-.L868)/2
 1132 048c F511     		.2byte	(.L865-.L868)/2
 1133 048e F511     		.2byte	(.L865-.L868)/2
 1134 0490 F511     		.2byte	(.L865-.L868)/2
 1135 0492 F511     		.2byte	(.L865-.L868)/2
 1136 0494 F511     		.2byte	(.L865-.L868)/2
 1137 0496 F511     		.2byte	(.L865-.L868)/2
 1138 0498 F511     		.2byte	(.L865-.L868)/2
 1139 049a F511     		.2byte	(.L865-.L868)/2
 1140 049c F511     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 21


 1141 049e F511     		.2byte	(.L865-.L868)/2
 1142 04a0 F511     		.2byte	(.L865-.L868)/2
 1143 04a2 F511     		.2byte	(.L865-.L868)/2
 1144 04a4 F511     		.2byte	(.L865-.L868)/2
 1145 04a6 F511     		.2byte	(.L865-.L868)/2
 1146 04a8 4C11     		.2byte	(.L559-.L868)/2
 1147 04aa F511     		.2byte	(.L865-.L868)/2
 1148 04ac F511     		.2byte	(.L865-.L868)/2
 1149 04ae F511     		.2byte	(.L865-.L868)/2
 1150 04b0 F511     		.2byte	(.L865-.L868)/2
 1151 04b2 F511     		.2byte	(.L865-.L868)/2
 1152 04b4 F511     		.2byte	(.L865-.L868)/2
 1153 04b6 F511     		.2byte	(.L865-.L868)/2
 1154 04b8 F511     		.2byte	(.L865-.L868)/2
 1155 04ba F511     		.2byte	(.L865-.L868)/2
 1156 04bc 6106     		.2byte	(.L561-.L868)/2
 1157 04be 7306     		.2byte	(.L563-.L868)/2
 1158 04c0 7D06     		.2byte	(.L565-.L868)/2
 1159 04c2 8C0E     		.2byte	(.L571-.L868)/2
 1160 04c4 770B     		.2byte	(.L573-.L868)/2
 1161 04c6 6D0F     		.2byte	(.L575-.L868)/2
 1162 04c8 280F     		.2byte	(.L584-.L868)/2
 1163 04ca 3804     		.2byte	(.L589-.L868)/2
 1164 04cc 0C04     		.2byte	(.L131-.L868)/2
 1165 04ce F908     		.2byte	(.L607-.L868)/2
 1166 04d0 1309     		.2byte	(.L610-.L868)/2
 1167 04d2 400E     		.2byte	(.L613-.L868)/2
 1168 04d4 480E     		.2byte	(.L614-.L868)/2
 1169 04d6 370E     		.2byte	(.L616-.L868)/2
 1170 04d8 070F     		.2byte	(.L617-.L868)/2
 1171 04da F511     		.2byte	(.L865-.L868)/2
 1172 04dc A60E     		.2byte	(.L871-.L868)/2
 1173 04de D40E     		.2byte	(.L634-.L868)/2
 1174 04e0 F307     		.2byte	(.L642-.L868)/2
 1175 04e2 1D08     		.2byte	(.L646-.L868)/2
 1176 04e4 3B0A     		.2byte	(.L658-.L868)/2
 1177 04e6 720A     		.2byte	(.L664-.L868)/2
 1178 04e8 100A     		.2byte	(.L669-.L868)/2
 1179 04ea 1B0A     		.2byte	(.L673-.L868)/2
 1180 04ec 730D     		.2byte	(.L675-.L868)/2
 1181 04ee 680E     		.2byte	(.L688-.L868)/2
 1182 04f0 F511     		.2byte	(.L865-.L868)/2
 1183 04f2 7805     		.2byte	(.L696-.L868)/2
 1184 04f4 F511     		.2byte	(.L865-.L868)/2
 1185 04f6 8A05     		.2byte	(.L711-.L868)/2
 1186 04f8 F511     		.2byte	(.L865-.L868)/2
 1187 04fa AF05     		.2byte	(.L719-.L868)/2
 1188 04fc AF05     		.2byte	(.L719-.L868)/2
 1189 04fe F511     		.2byte	(.L865-.L868)/2
 1190 0500 B905     		.2byte	(.L743-.L868)/2
 1191 0502 F511     		.2byte	(.L865-.L868)/2
 1192 0504 5705     		.2byte	(.L776-.L868)/2
 1193 0506 F511     		.2byte	(.L865-.L868)/2
 1194 0508 F511     		.2byte	(.L865-.L868)/2
 1195 050a F511     		.2byte	(.L865-.L868)/2
 1196 050c F511     		.2byte	(.L865-.L868)/2
 1197 050e F511     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 22


 1198 0510 F511     		.2byte	(.L865-.L868)/2
 1199 0512 F511     		.2byte	(.L865-.L868)/2
 1200 0514 F511     		.2byte	(.L865-.L868)/2
 1201 0516 F511     		.2byte	(.L865-.L868)/2
 1202 0518 F511     		.2byte	(.L865-.L868)/2
 1203 051a F511     		.2byte	(.L865-.L868)/2
 1204 051c F511     		.2byte	(.L865-.L868)/2
 1205 051e F511     		.2byte	(.L865-.L868)/2
 1206 0520 F511     		.2byte	(.L865-.L868)/2
 1207 0522 F511     		.2byte	(.L865-.L868)/2
 1208 0524 F511     		.2byte	(.L865-.L868)/2
 1209 0526 F511     		.2byte	(.L865-.L868)/2
 1210 0528 F511     		.2byte	(.L865-.L868)/2
 1211 052a F511     		.2byte	(.L865-.L868)/2
 1212 052c F511     		.2byte	(.L865-.L868)/2
 1213 052e F511     		.2byte	(.L865-.L868)/2
 1214 0530 F511     		.2byte	(.L865-.L868)/2
 1215 0532 F511     		.2byte	(.L865-.L868)/2
 1216 0534 F511     		.2byte	(.L865-.L868)/2
 1217 0536 F511     		.2byte	(.L865-.L868)/2
 1218 0538 F511     		.2byte	(.L865-.L868)/2
 1219 053a F511     		.2byte	(.L865-.L868)/2
 1220 053c F511     		.2byte	(.L865-.L868)/2
 1221 053e F511     		.2byte	(.L865-.L868)/2
 1222 0540 F511     		.2byte	(.L865-.L868)/2
 1223 0542 F511     		.2byte	(.L865-.L868)/2
 1224 0544 F511     		.2byte	(.L865-.L868)/2
 1225 0546 F511     		.2byte	(.L865-.L868)/2
 1226 0548 F511     		.2byte	(.L865-.L868)/2
 1227 054a F511     		.2byte	(.L865-.L868)/2
 1228 054c F511     		.2byte	(.L865-.L868)/2
 1229 054e F511     		.2byte	(.L865-.L868)/2
 1230 0550 F511     		.2byte	(.L865-.L868)/2
 1231 0552 F511     		.2byte	(.L865-.L868)/2
 1232 0554 F511     		.2byte	(.L865-.L868)/2
 1233 0556 F511     		.2byte	(.L865-.L868)/2
 1234 0558 F511     		.2byte	(.L865-.L868)/2
 1235 055a F511     		.2byte	(.L865-.L868)/2
 1236 055c F511     		.2byte	(.L865-.L868)/2
 1237 055e F511     		.2byte	(.L865-.L868)/2
 1238 0560 F511     		.2byte	(.L865-.L868)/2
 1239 0562 F511     		.2byte	(.L865-.L868)/2
 1240 0564 F511     		.2byte	(.L865-.L868)/2
 1241 0566 F511     		.2byte	(.L865-.L868)/2
 1242 0568 F511     		.2byte	(.L865-.L868)/2
 1243 056a F511     		.2byte	(.L865-.L868)/2
 1244 056c F511     		.2byte	(.L865-.L868)/2
 1245 056e F511     		.2byte	(.L865-.L868)/2
 1246 0570 F511     		.2byte	(.L865-.L868)/2
 1247 0572 F511     		.2byte	(.L865-.L868)/2
 1248 0574 F511     		.2byte	(.L865-.L868)/2
 1249 0576 F511     		.2byte	(.L865-.L868)/2
 1250 0578 F511     		.2byte	(.L865-.L868)/2
 1251 057a F511     		.2byte	(.L865-.L868)/2
 1252 057c F511     		.2byte	(.L865-.L868)/2
 1253 057e F511     		.2byte	(.L865-.L868)/2
 1254 0580 F511     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 23


 1255 0582 F511     		.2byte	(.L865-.L868)/2
 1256 0584 F511     		.2byte	(.L865-.L868)/2
 1257 0586 F511     		.2byte	(.L865-.L868)/2
 1258 0588 F511     		.2byte	(.L865-.L868)/2
 1259 058a F511     		.2byte	(.L865-.L868)/2
 1260 058c F511     		.2byte	(.L865-.L868)/2
 1261 058e F511     		.2byte	(.L865-.L868)/2
 1262 0590 F511     		.2byte	(.L865-.L868)/2
 1263 0592 F511     		.2byte	(.L865-.L868)/2
 1264 0594 F511     		.2byte	(.L865-.L868)/2
 1265 0596 F511     		.2byte	(.L865-.L868)/2
 1266 0598 F511     		.2byte	(.L865-.L868)/2
 1267 059a F511     		.2byte	(.L865-.L868)/2
 1268 059c F511     		.2byte	(.L865-.L868)/2
 1269 059e F511     		.2byte	(.L865-.L868)/2
 1270 05a0 F511     		.2byte	(.L865-.L868)/2
 1271 05a2 4512     		.2byte	(.L132-.L868)/2
 1272 05a4 D212     		.2byte	(.L133-.L868)/2
 1273 05a6 6F05     		.2byte	(.L802-.L868)/2
 1274 05a8 F511     		.2byte	(.L865-.L868)/2
 1275 05aa F511     		.2byte	(.L865-.L868)/2
 1276 05ac F511     		.2byte	(.L865-.L868)/2
 1277 05ae F511     		.2byte	(.L865-.L868)/2
 1278 05b0 F511     		.2byte	(.L865-.L868)/2
 1279 05b2 F511     		.2byte	(.L865-.L868)/2
 1280 05b4 F511     		.2byte	(.L865-.L868)/2
 1281 05b6 F511     		.2byte	(.L865-.L868)/2
 1282 05b8 F511     		.2byte	(.L865-.L868)/2
 1283 05ba F511     		.2byte	(.L865-.L868)/2
 1284 05bc F511     		.2byte	(.L865-.L868)/2
 1285 05be F511     		.2byte	(.L865-.L868)/2
 1286 05c0 F511     		.2byte	(.L865-.L868)/2
 1287 05c2 F511     		.2byte	(.L865-.L868)/2
 1288 05c4 F511     		.2byte	(.L865-.L868)/2
 1289 05c6 F511     		.2byte	(.L865-.L868)/2
 1290 05c8 F511     		.2byte	(.L865-.L868)/2
 1291 05ca F511     		.2byte	(.L865-.L868)/2
 1292 05cc F511     		.2byte	(.L865-.L868)/2
 1293 05ce F511     		.2byte	(.L865-.L868)/2
 1294 05d0 F511     		.2byte	(.L865-.L868)/2
 1295 05d2 F511     		.2byte	(.L865-.L868)/2
 1296 05d4 F511     		.2byte	(.L865-.L868)/2
 1297 05d6 F511     		.2byte	(.L865-.L868)/2
 1298 05d8 F511     		.2byte	(.L865-.L868)/2
 1299 05da F511     		.2byte	(.L865-.L868)/2
 1300 05dc F511     		.2byte	(.L865-.L868)/2
 1301 05de F511     		.2byte	(.L865-.L868)/2
 1302 05e0 F511     		.2byte	(.L865-.L868)/2
 1303 05e2 F511     		.2byte	(.L865-.L868)/2
 1304 05e4 F511     		.2byte	(.L865-.L868)/2
 1305 05e6 F511     		.2byte	(.L865-.L868)/2
 1306 05e8 F511     		.2byte	(.L865-.L868)/2
 1307 05ea F511     		.2byte	(.L865-.L868)/2
 1308 05ec F511     		.2byte	(.L865-.L868)/2
 1309 05ee F511     		.2byte	(.L865-.L868)/2
 1310 05f0 F511     		.2byte	(.L865-.L868)/2
 1311 05f2 F511     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 24


 1312 05f4 F511     		.2byte	(.L865-.L868)/2
 1313 05f6 F511     		.2byte	(.L865-.L868)/2
 1314 05f8 F511     		.2byte	(.L865-.L868)/2
 1315 05fa F511     		.2byte	(.L865-.L868)/2
 1316 05fc F511     		.2byte	(.L865-.L868)/2
 1317 05fe F511     		.2byte	(.L865-.L868)/2
 1318 0600 F511     		.2byte	(.L865-.L868)/2
 1319 0602 F511     		.2byte	(.L865-.L868)/2
 1320 0604 F511     		.2byte	(.L865-.L868)/2
 1321 0606 F511     		.2byte	(.L865-.L868)/2
 1322 0608 F511     		.2byte	(.L865-.L868)/2
 1323 060a F511     		.2byte	(.L865-.L868)/2
 1324 060c F511     		.2byte	(.L865-.L868)/2
 1325 060e F511     		.2byte	(.L865-.L868)/2
 1326 0610 F511     		.2byte	(.L865-.L868)/2
 1327 0612 F511     		.2byte	(.L865-.L868)/2
 1328 0614 F511     		.2byte	(.L865-.L868)/2
 1329 0616 F511     		.2byte	(.L865-.L868)/2
 1330 0618 F511     		.2byte	(.L865-.L868)/2
 1331 061a F511     		.2byte	(.L865-.L868)/2
 1332 061c F511     		.2byte	(.L865-.L868)/2
 1333 061e F511     		.2byte	(.L865-.L868)/2
 1334 0620 F511     		.2byte	(.L865-.L868)/2
 1335 0622 F511     		.2byte	(.L865-.L868)/2
 1336 0624 F511     		.2byte	(.L865-.L868)/2
 1337 0626 F511     		.2byte	(.L865-.L868)/2
 1338 0628 F511     		.2byte	(.L865-.L868)/2
 1339 062a F511     		.2byte	(.L865-.L868)/2
 1340 062c F511     		.2byte	(.L865-.L868)/2
 1341 062e F511     		.2byte	(.L865-.L868)/2
 1342 0630 F511     		.2byte	(.L865-.L868)/2
 1343 0632 F511     		.2byte	(.L865-.L868)/2
 1344 0634 F511     		.2byte	(.L865-.L868)/2
 1345 0636 F511     		.2byte	(.L865-.L868)/2
 1346 0638 F511     		.2byte	(.L865-.L868)/2
 1347 063a F511     		.2byte	(.L865-.L868)/2
 1348 063c F511     		.2byte	(.L865-.L868)/2
 1349 063e F511     		.2byte	(.L865-.L868)/2
 1350 0640 F511     		.2byte	(.L865-.L868)/2
 1351 0642 F511     		.2byte	(.L865-.L868)/2
 1352 0644 F511     		.2byte	(.L865-.L868)/2
 1353 0646 F511     		.2byte	(.L865-.L868)/2
 1354 0648 F511     		.2byte	(.L865-.L868)/2
 1355 064a F511     		.2byte	(.L865-.L868)/2
 1356 064c F511     		.2byte	(.L865-.L868)/2
 1357 064e F511     		.2byte	(.L865-.L868)/2
 1358 0650 F511     		.2byte	(.L865-.L868)/2
 1359 0652 F511     		.2byte	(.L865-.L868)/2
 1360 0654 F511     		.2byte	(.L865-.L868)/2
 1361 0656 F511     		.2byte	(.L865-.L868)/2
 1362 0658 F511     		.2byte	(.L865-.L868)/2
 1363 065a F511     		.2byte	(.L865-.L868)/2
 1364 065c F511     		.2byte	(.L865-.L868)/2
 1365 065e F511     		.2byte	(.L865-.L868)/2
 1366 0660 F511     		.2byte	(.L865-.L868)/2
 1367 0662 F511     		.2byte	(.L865-.L868)/2
 1368 0664 F511     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 25


 1369 0666 F511     		.2byte	(.L865-.L868)/2
 1370 0668 F511     		.2byte	(.L865-.L868)/2
 1371 066a F511     		.2byte	(.L865-.L868)/2
 1372 066c F511     		.2byte	(.L865-.L868)/2
 1373 066e F511     		.2byte	(.L865-.L868)/2
 1374 0670 F511     		.2byte	(.L865-.L868)/2
 1375 0672 F511     		.2byte	(.L865-.L868)/2
 1376 0674 F511     		.2byte	(.L865-.L868)/2
 1377 0676 F511     		.2byte	(.L865-.L868)/2
 1378 0678 F511     		.2byte	(.L865-.L868)/2
 1379 067a F511     		.2byte	(.L865-.L868)/2
 1380 067c F511     		.2byte	(.L865-.L868)/2
 1381 067e F511     		.2byte	(.L865-.L868)/2
 1382 0680 F511     		.2byte	(.L865-.L868)/2
 1383 0682 F511     		.2byte	(.L865-.L868)/2
 1384 0684 F511     		.2byte	(.L865-.L868)/2
 1385 0686 F511     		.2byte	(.L865-.L868)/2
 1386 0688 F511     		.2byte	(.L865-.L868)/2
 1387 068a F511     		.2byte	(.L865-.L868)/2
 1388 068c F511     		.2byte	(.L865-.L868)/2
 1389 068e F511     		.2byte	(.L865-.L868)/2
 1390 0690 F511     		.2byte	(.L865-.L868)/2
 1391 0692 F511     		.2byte	(.L865-.L868)/2
 1392 0694 F511     		.2byte	(.L865-.L868)/2
 1393 0696 F511     		.2byte	(.L865-.L868)/2
 1394 0698 F511     		.2byte	(.L865-.L868)/2
 1395 069a F511     		.2byte	(.L865-.L868)/2
 1396 069c F511     		.2byte	(.L865-.L868)/2
 1397 069e F511     		.2byte	(.L865-.L868)/2
 1398 06a0 F511     		.2byte	(.L865-.L868)/2
 1399 06a2 F511     		.2byte	(.L865-.L868)/2
 1400 06a4 F511     		.2byte	(.L865-.L868)/2
 1401 06a6 F511     		.2byte	(.L865-.L868)/2
 1402 06a8 F511     		.2byte	(.L865-.L868)/2
 1403 06aa F511     		.2byte	(.L865-.L868)/2
 1404 06ac F511     		.2byte	(.L865-.L868)/2
 1405 06ae F511     		.2byte	(.L865-.L868)/2
 1406 06b0 F511     		.2byte	(.L865-.L868)/2
 1407 06b2 F511     		.2byte	(.L865-.L868)/2
 1408 06b4 F511     		.2byte	(.L865-.L868)/2
 1409 06b6 F511     		.2byte	(.L865-.L868)/2
 1410 06b8 F511     		.2byte	(.L865-.L868)/2
 1411 06ba F511     		.2byte	(.L865-.L868)/2
 1412 06bc F511     		.2byte	(.L865-.L868)/2
 1413 06be F511     		.2byte	(.L865-.L868)/2
 1414 06c0 F511     		.2byte	(.L865-.L868)/2
 1415 06c2 F511     		.2byte	(.L865-.L868)/2
 1416 06c4 F511     		.2byte	(.L865-.L868)/2
 1417 06c6 F511     		.2byte	(.L865-.L868)/2
 1418 06c8 F511     		.2byte	(.L865-.L868)/2
 1419 06ca F511     		.2byte	(.L865-.L868)/2
 1420 06cc F511     		.2byte	(.L865-.L868)/2
 1421 06ce F511     		.2byte	(.L865-.L868)/2
 1422 06d0 F511     		.2byte	(.L865-.L868)/2
 1423 06d2 F511     		.2byte	(.L865-.L868)/2
 1424 06d4 F511     		.2byte	(.L865-.L868)/2
 1425 06d6 F511     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 26


 1426 06d8 F511     		.2byte	(.L865-.L868)/2
 1427 06da F511     		.2byte	(.L865-.L868)/2
 1428 06dc F511     		.2byte	(.L865-.L868)/2
 1429 06de F511     		.2byte	(.L865-.L868)/2
 1430 06e0 F511     		.2byte	(.L865-.L868)/2
 1431 06e2 F511     		.2byte	(.L865-.L868)/2
 1432 06e4 F511     		.2byte	(.L865-.L868)/2
 1433 06e6 F511     		.2byte	(.L865-.L868)/2
 1434 06e8 F511     		.2byte	(.L865-.L868)/2
 1435 06ea F511     		.2byte	(.L865-.L868)/2
 1436 06ec F511     		.2byte	(.L865-.L868)/2
 1437 06ee F511     		.2byte	(.L865-.L868)/2
 1438 06f0 F511     		.2byte	(.L865-.L868)/2
 1439 06f2 F511     		.2byte	(.L865-.L868)/2
 1440 06f4 F511     		.2byte	(.L865-.L868)/2
 1441 06f6 F511     		.2byte	(.L865-.L868)/2
 1442 06f8 F511     		.2byte	(.L865-.L868)/2
 1443 06fa F511     		.2byte	(.L865-.L868)/2
 1444 06fc F511     		.2byte	(.L865-.L868)/2
 1445 06fe F511     		.2byte	(.L865-.L868)/2
 1446 0700 F511     		.2byte	(.L865-.L868)/2
 1447 0702 F511     		.2byte	(.L865-.L868)/2
 1448 0704 F511     		.2byte	(.L865-.L868)/2
 1449 0706 F511     		.2byte	(.L865-.L868)/2
 1450 0708 F511     		.2byte	(.L865-.L868)/2
 1451 070a F511     		.2byte	(.L865-.L868)/2
 1452 070c F511     		.2byte	(.L865-.L868)/2
 1453 070e F511     		.2byte	(.L865-.L868)/2
 1454 0710 F511     		.2byte	(.L865-.L868)/2
 1455 0712 F511     		.2byte	(.L865-.L868)/2
 1456 0714 F511     		.2byte	(.L865-.L868)/2
 1457 0716 F511     		.2byte	(.L865-.L868)/2
 1458 0718 F511     		.2byte	(.L865-.L868)/2
 1459 071a F511     		.2byte	(.L865-.L868)/2
 1460 071c F511     		.2byte	(.L865-.L868)/2
 1461 071e F511     		.2byte	(.L865-.L868)/2
 1462 0720 F511     		.2byte	(.L865-.L868)/2
 1463 0722 F511     		.2byte	(.L865-.L868)/2
 1464 0724 F511     		.2byte	(.L865-.L868)/2
 1465 0726 F511     		.2byte	(.L865-.L868)/2
 1466 0728 F511     		.2byte	(.L865-.L868)/2
 1467 072a F511     		.2byte	(.L865-.L868)/2
 1468 072c F511     		.2byte	(.L865-.L868)/2
 1469 072e F511     		.2byte	(.L865-.L868)/2
 1470 0730 F511     		.2byte	(.L865-.L868)/2
 1471 0732 F511     		.2byte	(.L865-.L868)/2
 1472 0734 F511     		.2byte	(.L865-.L868)/2
 1473 0736 F511     		.2byte	(.L865-.L868)/2
 1474 0738 F511     		.2byte	(.L865-.L868)/2
 1475 073a F511     		.2byte	(.L865-.L868)/2
 1476 073c F511     		.2byte	(.L865-.L868)/2
 1477 073e F511     		.2byte	(.L865-.L868)/2
 1478 0740 F511     		.2byte	(.L865-.L868)/2
 1479 0742 F511     		.2byte	(.L865-.L868)/2
 1480 0744 F511     		.2byte	(.L865-.L868)/2
 1481 0746 F511     		.2byte	(.L865-.L868)/2
 1482 0748 F511     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 27


 1483 074a F511     		.2byte	(.L865-.L868)/2
 1484 074c F511     		.2byte	(.L865-.L868)/2
 1485 074e F511     		.2byte	(.L865-.L868)/2
 1486 0750 F511     		.2byte	(.L865-.L868)/2
 1487 0752 F511     		.2byte	(.L865-.L868)/2
 1488 0754 F511     		.2byte	(.L865-.L868)/2
 1489 0756 F511     		.2byte	(.L865-.L868)/2
 1490 0758 F511     		.2byte	(.L865-.L868)/2
 1491 075a F511     		.2byte	(.L865-.L868)/2
 1492 075c F511     		.2byte	(.L865-.L868)/2
 1493 075e F511     		.2byte	(.L865-.L868)/2
 1494 0760 F511     		.2byte	(.L865-.L868)/2
 1495 0762 F511     		.2byte	(.L865-.L868)/2
 1496 0764 F511     		.2byte	(.L865-.L868)/2
 1497 0766 F511     		.2byte	(.L865-.L868)/2
 1498 0768 F511     		.2byte	(.L865-.L868)/2
 1499 076a F511     		.2byte	(.L865-.L868)/2
 1500 076c F511     		.2byte	(.L865-.L868)/2
 1501 076e F511     		.2byte	(.L865-.L868)/2
 1502 0770 F511     		.2byte	(.L865-.L868)/2
 1503 0772 F511     		.2byte	(.L865-.L868)/2
 1504 0774 F511     		.2byte	(.L865-.L868)/2
 1505 0776 F511     		.2byte	(.L865-.L868)/2
 1506 0778 F511     		.2byte	(.L865-.L868)/2
 1507 077a F511     		.2byte	(.L865-.L868)/2
 1508 077c F511     		.2byte	(.L865-.L868)/2
 1509 077e F511     		.2byte	(.L865-.L868)/2
 1510 0780 F511     		.2byte	(.L865-.L868)/2
 1511 0782 6708     		.2byte	(.L812-.L868)/2
 1512 0784 BE11     		.2byte	(.L872-.L868)/2
 1513 0786 F511     		.2byte	(.L865-.L868)/2
 1514 0788 F511     		.2byte	(.L865-.L868)/2
 1515 078a F511     		.2byte	(.L865-.L868)/2
 1516 078c F511     		.2byte	(.L865-.L868)/2
 1517 078e A910     		.2byte	(.L842-.L868)/2
 1518 0790 9A0F     		.2byte	(.L843-.L868)/2
 1519 0792 BE11     		.2byte	(.L872-.L868)/2
 1520 0794 F511     		.2byte	(.L865-.L868)/2
 1521 0796 F511     		.2byte	(.L865-.L868)/2
 1522 0798 F511     		.2byte	(.L865-.L868)/2
 1523 079a F511     		.2byte	(.L865-.L868)/2
 1524 079c F511     		.2byte	(.L865-.L868)/2
 1525 079e F511     		.2byte	(.L865-.L868)/2
 1526 07a0 F511     		.2byte	(.L865-.L868)/2
 1527 07a2 F511     		.2byte	(.L865-.L868)/2
 1528 07a4 F511     		.2byte	(.L865-.L868)/2
 1529 07a6 F511     		.2byte	(.L865-.L868)/2
 1530 07a8 F511     		.2byte	(.L865-.L868)/2
 1531 07aa F511     		.2byte	(.L865-.L868)/2
 1532 07ac F511     		.2byte	(.L865-.L868)/2
 1533 07ae F511     		.2byte	(.L865-.L868)/2
 1534 07b0 F511     		.2byte	(.L865-.L868)/2
 1535 07b2 F511     		.2byte	(.L865-.L868)/2
 1536 07b4 F511     		.2byte	(.L865-.L868)/2
 1537 07b6 F511     		.2byte	(.L865-.L868)/2
 1538 07b8 F511     		.2byte	(.L865-.L868)/2
 1539 07ba F511     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 28


 1540 07bc F511     		.2byte	(.L865-.L868)/2
 1541 07be F511     		.2byte	(.L865-.L868)/2
 1542 07c0 F511     		.2byte	(.L865-.L868)/2
 1543 07c2 F511     		.2byte	(.L865-.L868)/2
 1544 07c4 F511     		.2byte	(.L865-.L868)/2
 1545 07c6 F511     		.2byte	(.L865-.L868)/2
 1546 07c8 F511     		.2byte	(.L865-.L868)/2
 1547 07ca F511     		.2byte	(.L865-.L868)/2
 1548 07cc F511     		.2byte	(.L865-.L868)/2
 1549 07ce F511     		.2byte	(.L865-.L868)/2
 1550 07d0 F511     		.2byte	(.L865-.L868)/2
 1551 07d2 F511     		.2byte	(.L865-.L868)/2
 1552 07d4 F511     		.2byte	(.L865-.L868)/2
 1553 07d6 F511     		.2byte	(.L865-.L868)/2
 1554 07d8 F511     		.2byte	(.L865-.L868)/2
 1555 07da F511     		.2byte	(.L865-.L868)/2
 1556 07dc F511     		.2byte	(.L865-.L868)/2
 1557 07de F511     		.2byte	(.L865-.L868)/2
 1558 07e0 F511     		.2byte	(.L865-.L868)/2
 1559 07e2 F511     		.2byte	(.L865-.L868)/2
 1560 07e4 F511     		.2byte	(.L865-.L868)/2
 1561 07e6 F511     		.2byte	(.L865-.L868)/2
 1562 07e8 F511     		.2byte	(.L865-.L868)/2
 1563 07ea F511     		.2byte	(.L865-.L868)/2
 1564 07ec F511     		.2byte	(.L865-.L868)/2
 1565 07ee F511     		.2byte	(.L865-.L868)/2
 1566 07f0 F511     		.2byte	(.L865-.L868)/2
 1567 07f2 F511     		.2byte	(.L865-.L868)/2
 1568 07f4 F511     		.2byte	(.L865-.L868)/2
 1569 07f6 F511     		.2byte	(.L865-.L868)/2
 1570 07f8 F511     		.2byte	(.L865-.L868)/2
 1571 07fa F511     		.2byte	(.L865-.L868)/2
 1572 07fc F511     		.2byte	(.L865-.L868)/2
 1573 07fe F511     		.2byte	(.L865-.L868)/2
 1574 0800 F511     		.2byte	(.L865-.L868)/2
 1575 0802 F511     		.2byte	(.L865-.L868)/2
 1576 0804 F511     		.2byte	(.L865-.L868)/2
 1577 0806 F511     		.2byte	(.L865-.L868)/2
 1578 0808 F511     		.2byte	(.L865-.L868)/2
 1579 080a F511     		.2byte	(.L865-.L868)/2
 1580 080c F511     		.2byte	(.L865-.L868)/2
 1581 080e F511     		.2byte	(.L865-.L868)/2
 1582 0810 F511     		.2byte	(.L865-.L868)/2
 1583 0812 F511     		.2byte	(.L865-.L868)/2
 1584 0814 F511     		.2byte	(.L865-.L868)/2
 1585 0816 F511     		.2byte	(.L865-.L868)/2
 1586 0818 F511     		.2byte	(.L865-.L868)/2
 1587 081a F511     		.2byte	(.L865-.L868)/2
 1588 081c F511     		.2byte	(.L865-.L868)/2
 1589 081e F511     		.2byte	(.L865-.L868)/2
 1590 0820 F511     		.2byte	(.L865-.L868)/2
 1591 0822 F511     		.2byte	(.L865-.L868)/2
 1592 0824 F511     		.2byte	(.L865-.L868)/2
 1593 0826 F511     		.2byte	(.L865-.L868)/2
 1594 0828 F511     		.2byte	(.L865-.L868)/2
 1595 082a F511     		.2byte	(.L865-.L868)/2
 1596 082c F511     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 29


 1597 082e F511     		.2byte	(.L865-.L868)/2
 1598 0830 F511     		.2byte	(.L865-.L868)/2
 1599 0832 F511     		.2byte	(.L865-.L868)/2
 1600 0834 F511     		.2byte	(.L865-.L868)/2
 1601 0836 F511     		.2byte	(.L865-.L868)/2
 1602 0838 F511     		.2byte	(.L865-.L868)/2
 1603 083a 7E0C     		.2byte	(.L845-.L868)/2
 1604 083c 1D05     		.2byte	(.L860-.L868)/2
 1605 083e 4209     		.2byte	(.L863-.L868)/2
 1606              	.L125:
 1607 0840 A368     		ldr	r3, [r4, #8]
 1608 0842 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1609 0844 D706     		lsls	r7, r2, #27
 1610 0846 7FF50CAC 		bpl	.L128
 1611 084a 40F22D13 		movw	r3, #301
 1612 084e 9945     		cmp	r9, r3
 1613 0850 01F04986 		beq	.L129
 1614 0854 40F23313 		movw	r3, #307
 1615 0858 9945     		cmp	r9, r3
 1616 085a 01F03986 		beq	.L130
 1617 085e 40F22E23 		movw	r3, #558
 1618 0862 9945     		cmp	r9, r3
 1619 0864 10D0     		beq	.L131
 1620 0866 40F29923 		movw	r3, #665
 1621 086a 9945     		cmp	r9, r3
 1622 086c 01F04586 		beq	.L132
 1623 0870 40F29A23 		movw	r3, #666
 1624 0874 9945     		cmp	r9, r3
 1625 0876 01F0CD86 		beq	.L133
 1626              	.L1461:
 1627 087a 0127     		movs	r7, #1
 1628              	.L1420:
 1629 087c 3846     		mov	r0, r7
 1630 087e 5BB0     		add	sp, sp, #364
 1631              		@ sp needed
 1632 0880 BDEC028B 		fldmfdd	sp!, {d8}
 1633 0884 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1634              	.L131:
 1635 0888 2B68     		ldr	r3, [r5]
 1636 088a D5F8B021 		ldr	r2, [r5, #432]
 1637 088e D3F89490 		ldr	r9, [r3, #148]
 1638 0892 0DF14C08 		add	r8, sp, #76
 1639 0896 0023     		movs	r3, #0
 1640 0898 88F80030 		strb	r3, [r8]
 1641 089c 002A     		cmp	r2, #0
 1642 089e 03F08686 		beq	.L970
 1643 08a2 9A46     		mov	r10, r3
 1644 08a4 B34F     		ldr	r7, .L1610
 1645 08a6 9B46     		mov	fp, r3
 1646 08a8 06E0     		b	.L595
 1647              	.L592:
 1648 08aa D5F8B031 		ldr	r3, [r5, #432]
 1649 08ae 0AF1010A 		add	r10, r10, #1
 1650 08b2 5345     		cmp	r3, r10
 1651 08b4 41F23687 		bls	.L1462
 1652              	.L595:
 1653 08b8 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 30


 1654 08ba 17F80A10 		ldrb	r1, [r7, r10]	@ zero_extendqisi2
 1655 08be FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1656 08c2 0028     		cmp	r0, #0
 1657 08c4 F1D0     		beq	.L592
 1658 08c6 2046     		mov	r0, r4
 1659 08c8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1660 08cc 0028     		cmp	r0, #0
 1661 08ce 42F37983 		ble	.L593
 1662 08d2 0120     		movs	r0, #1
 1663 08d4 00FA0AF3 		lsl	r3, r0, r10
 1664 08d8 49EA0309 		orr	r9, r9, r3
 1665 08dc 8346     		mov	fp, r0
 1666 08de E4E7     		b	.L592
 1667              	.L589:
 1668 08e0 2046     		mov	r0, r4
 1669 08e2 5021     		movs	r1, #80
 1670 08e4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1671 08e8 0028     		cmp	r0, #0
 1672 08ea 02F09F82 		beq	.L590
 1673 08ee 3046     		mov	r0, r6
 1674 08f0 A149     		ldr	r1, .L1610+4
 1675 08f2 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 1676 08f6 A368     		ldr	r3, [r4, #8]
 1677 08f8 0027     		movs	r7, #0
 1678              	.L763:
 1679 08fa 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 1680 08fc 002B     		cmp	r3, #0
 1681 08fe 01F0C685 		beq	.L867
 1682 0902 4FF00109 		mov	r9, #1
 1683              	.L866:
 1684 0906 4F46     		mov	r7, r9
 1685 0908 3846     		mov	r0, r7
 1686 090a 5BB0     		add	sp, sp, #364
 1687              		@ sp needed
 1688 090c BDEC028B 		fldmfdd	sp!, {d8}
 1689 0910 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1690              	.L268:
 1691 0914 2846     		mov	r0, r5
 1692 0916 3146     		mov	r1, r6
 1693 0918 FFF7FEFF 		bl	_ZNK6GCodes25GenerateTemperatureReportER9StringRef
 1694 091c 0027     		movs	r7, #0
 1695 091e A368     		ldr	r3, [r4, #8]
 1696 0920 EBE7     		b	.L763
 1697              	.L269:
 1698 0922 0DF14809 		add	r9, sp, #72
 1699 0926 0027     		movs	r7, #0
 1700 0928 4A46     		mov	r2, r9
 1701 092a 11AB     		add	r3, sp, #68
 1702 092c 2046     		mov	r0, r4
 1703 092e 5021     		movs	r1, #80
 1704 0930 8DF84470 		strb	r7, [sp, #68]
 1705 0934 C9F80070 		str	r7, [r9]
 1706 0938 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 1707 093c D9F80020 		ldr	r2, [r9]
 1708 0940 082A     		cmp	r2, #8
 1709 0942 02F24E85 		bhi	.L1463
 1710 0946 2B68     		ldr	r3, [r5]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 31


 1711 0948 5701     		lsls	r7, r2, #5
 1712 094a 07F5E267 		add	r7, r7, #1808
 1713 094e 1F44     		add	r7, r7, r3
 1714 0950 3B7F     		ldrb	r3, [r7, #28]	@ zero_extendqisi2
 1715 0952 FF2B     		cmp	r3, #255
 1716 0954 03F0A584 		beq	.L1464
 1717 0958 2046     		mov	r0, r4
 1718 095a 4921     		movs	r1, #73
 1719 095c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1720 0960 0028     		cmp	r0, #0
 1721 0962 43F04A87 		bne	.L1465
 1722 0966 8046     		mov	r8, r0
 1723              	.L273:
 1724 0968 2046     		mov	r0, r4
 1725 096a 4621     		movs	r1, #70
 1726 096c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1727 0970 0028     		cmp	r0, #0
 1728 0972 43F03787 		bne	.L1466
 1729              	.L275:
 1730 0976 2046     		mov	r0, r4
 1731 0978 5421     		movs	r1, #84
 1732 097a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1733 097e 0028     		cmp	r0, #0
 1734 0980 43F02887 		bne	.L1467
 1735              	.L276:
 1736 0984 2046     		mov	r0, r4
 1737 0986 4221     		movs	r1, #66
 1738 0988 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1739 098c 0028     		cmp	r0, #0
 1740 098e 43F01687 		bne	.L1468
 1741              	.L277:
 1742 0992 2046     		mov	r0, r4
 1743 0994 4C21     		movs	r1, #76
 1744 0996 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1745 099a 0028     		cmp	r0, #0
 1746 099c 43F07487 		bne	.L1469
 1747              	.L278:
 1748 09a0 2046     		mov	r0, r4
 1749 09a2 4821     		movs	r1, #72
 1750 09a4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1751 09a8 0028     		cmp	r0, #0
 1752 09aa 43F0AD86 		bne	.L1470
 1753              	.L279:
 1754 09ae 2046     		mov	r0, r4
 1755 09b0 5321     		movs	r1, #83
 1756 09b2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1757 09b6 0028     		cmp	r0, #0
 1758 09b8 03F0B581 		beq	.L284
 1759 09bc 2046     		mov	r0, r4
 1760 09be FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1761 09c2 07EE900A 		fmsr	s15, r0
 1762 09c6 F4EE677A 		fcmps	s15, s15
 1763 09ca F1EE10FA 		fmstat
 1764 09ce 09D6     		bvs	.L285
 1765 09d0 9FED6A7A 		flds	s14, .L1610+8
 1766 09d4 F4EEC77A 		fcmpes	s15, s14
 1767 09d8 F1EE10FA 		fmstat
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 32


 1768 09dc 04F15980 		bmi	.L286
 1769 09e0 F0EE477A 		fcpys	s15, s14
 1770              	.L285:
 1771 09e4 B8F1000F 		cmp	r8, #0
 1772 09e8 04D1     		bne	.L287
 1773 09ea 9DF84430 		ldrb	r3, [sp, #68]	@ zero_extendqisi2
 1774 09ee 002B     		cmp	r3, #0
 1775 09f0 04F02882 		beq	.L288
 1776              	.L287:
 1777 09f4 D9F80010 		ldr	r1, [r9]
 1778 09f8 2868     		ldr	r0, [r5]
 1779 09fa 17EE902A 		fmrs	r2, s15
 1780 09fe FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 1781              	.L271:
 1782 0a02 A368     		ldr	r3, [r4, #8]
 1783 0a04 0027     		movs	r7, #0
 1784 0a06 78E7     		b	.L763
 1785              	.L297:
 1786 0a08 2868     		ldr	r0, [r5]
 1787 0a0a 0022     		movs	r2, #0
 1788 0a0c 0021     		movs	r1, #0
 1789 0a0e FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 1790 0a12 0027     		movs	r7, #0
 1791 0a14 A368     		ldr	r3, [r4, #8]
 1792 0a16 70E7     		b	.L763
 1793              	.L298:
 1794 0a18 95F8D573 		ldrb	r7, [r5, #981]	@ zero_extendqisi2
 1795 0a1c 002F     		cmp	r7, #0
 1796 0a1e 3FF46CAF 		beq	.L763
 1797 0a22 0123     		movs	r3, #1
 1798 0a24 85F8D633 		strb	r3, [r5, #982]
 1799 0a28 A368     		ldr	r3, [r4, #8]
 1800 0a2a 0027     		movs	r7, #0
 1801 0a2c 65E7     		b	.L763
 1802              	.L299:
 1803 0a2e 2046     		mov	r0, r4
 1804 0a30 5221     		movs	r1, #82
 1805 0a32 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1806 0a36 0746     		mov	r7, r0
 1807 0a38 0028     		cmp	r0, #0
 1808 0a3a 02F0C380 		beq	.L300
 1809 0a3e A368     		ldr	r3, [r4, #8]
 1810 0a40 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1811 0a42 42F00802 		orr	r2, r2, #8
 1812 0a46 5A74     		strb	r2, [r3, #17]
 1813 0a48 2046     		mov	r0, r4
 1814 0a4a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1815 0a4e 8046     		mov	r8, r0	@ float
 1816              	.L301:
 1817 0a50 2046     		mov	r0, r4
 1818 0a52 5421     		movs	r1, #84
 1819 0a54 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1820 0a58 0028     		cmp	r0, #0
 1821 0a5a 02F06083 		beq	.L303
 1822 0a5e 2046     		mov	r0, r4
 1823 0a60 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1824 0a64 D4F88830 		ldr	r3, [r4, #136]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 33


 1825 0a68 C118     		adds	r1, r0, r3
 1826 0a6a 4548     		ldr	r0, .L1610+12
 1827 0a6c FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 1828 0a70 0746     		mov	r7, r0
 1829              	.L304:
 1830 0a72 4246     		mov	r2, r8	@ float
 1831 0a74 2846     		mov	r0, r5
 1832 0a76 3946     		mov	r1, r7
 1833 0a78 FFF7FEFF 		bl	_ZN6GCodes14SetToolHeatersEP4Toolf
 1834 0a7c 002F     		cmp	r7, #0
 1835 0a7e 04F09A80 		beq	.L1471
 1836 0a82 3F4B     		ldr	r3, .L1610+12
 1837 0a84 5B6A     		ldr	r3, [r3, #36]
 1838 0a86 9F42     		cmp	r7, r3
 1839 0a88 03F05185 		beq	.L306
 1840 0a8c 2846     		mov	r0, r5
 1841 0a8e 2146     		mov	r1, r4
 1842 0a90 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 1843 0a94 0028     		cmp	r0, #0
 1844 0a96 61D0     		beq	.L554
 1845 0a98 7B68     		ldr	r3, [r7, #4]
 1846 0a9a C5F88432 		str	r3, [r5, #644]
 1847 0a9e A368     		ldr	r3, [r4, #8]
 1848 0aa0 0822     		movs	r2, #8
 1849 0aa2 1A74     		strb	r2, [r3, #16]
 1850 0aa4 A368     		ldr	r3, [r4, #8]
 1851 0aa6 0027     		movs	r7, #0
 1852 0aa8 27E7     		b	.L763
 1853              	.L860:
 1854 0aaa 2046     		mov	r0, r4
 1855 0aac 5021     		movs	r1, #80
 1856 0aae FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1857 0ab2 0028     		cmp	r0, #0
 1858 0ab4 43F03580 		bne	.L861
 1859 0ab8 0746     		mov	r7, r0
 1860 0aba A368     		ldr	r3, [r4, #8]
 1861 0abc 1DE7     		b	.L763
 1862              	.L307:
 1863 0abe 2046     		mov	r0, r4
 1864 0ac0 5321     		movs	r1, #83
 1865 0ac2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1866 0ac6 0746     		mov	r7, r0
 1867 0ac8 0028     		cmp	r0, #0
 1868 0aca 02F0C380 		beq	.L308
 1869 0ace 2046     		mov	r0, r4
 1870 0ad0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1871 0ad4 5021     		movs	r1, #80
 1872 0ad6 10F10008 		adds	r8, r0, #0
 1873 0ada 2046     		mov	r0, r4
 1874 0adc 18BF     		it	ne
 1875 0ade 4FF00108 		movne	r8, #1
 1876 0ae2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1877 0ae6 0746     		mov	r7, r0
 1878 0ae8 0028     		cmp	r0, #0
 1879 0aea 03F0C881 		beq	.L309
 1880 0aee 2046     		mov	r0, r4
 1881 0af0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 34


 1882 0af4 4246     		mov	r2, r8
 1883 0af6 C1B2     		uxtb	r1, r0
 1884 0af8 2148     		ldr	r0, .L1610+12
 1885 0afa FFF7FEFF 		bl	_ZN6RepRap8SetDebugE6Moduleb
 1886 0afe 0027     		movs	r7, #0
 1887 0b00 A368     		ldr	r3, [r4, #8]
 1888 0b02 FAE6     		b	.L763
 1889              	.L310:
 1890 0b04 2846     		mov	r0, r5
 1891 0b06 FFF7FEFF 		bl	_ZN6GCodes15DoEmergencyStopEv
 1892 0b0a 0027     		movs	r7, #0
 1893 0b0c A368     		ldr	r3, [r4, #8]
 1894 0b0e F4E6     		b	.L763
 1895              	.L311:
 1896 0b10 2846     		mov	r0, r5
 1897 0b12 3146     		mov	r1, r6
 1898 0b14 FFF7FEFF 		bl	_ZNK6GCodes21GetCurrentCoordinatesER9StringRef
 1899 0b18 0027     		movs	r7, #0
 1900 0b1a A368     		ldr	r3, [r4, #8]
 1901 0b1c EDE6     		b	.L763
 1902              	.L776:
 1903 0b1e 2046     		mov	r0, r4
 1904 0b20 5021     		movs	r1, #80
 1905 0b22 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1906 0b26 50B1     		cbz	r0, .L777
 1907 0b28 2046     		mov	r0, r4
 1908 0b2a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1909 0b2e 5321     		movs	r1, #83
 1910 0b30 0746     		mov	r7, r0
 1911 0b32 2046     		mov	r0, r4
 1912 0b34 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1913 0b38 0028     		cmp	r0, #0
 1914 0b3a 43F0D585 		bne	.L1472
 1915              	.L777:
 1916 0b3e 104B     		ldr	r3, .L1610+12
 1917 0b40 3146     		mov	r1, r6
 1918 0b42 5868     		ldr	r0, [r3, #4]
 1919 0b44 FFF7FEFF 		bl	_ZNK7Network15ReportProtocolsER9StringRef
 1920 0b48 0027     		movs	r7, #0
 1921 0b4a A368     		ldr	r3, [r4, #8]
 1922 0b4c D5E6     		b	.L763
 1923              	.L802:
 1924 0b4e 2846     		mov	r0, r5
 1925 0b50 2146     		mov	r1, r4
 1926 0b52 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 1927 0b56 0028     		cmp	r0, #0
 1928 0b58 42F05182 		bne	.L1473
 1929              	.L554:
 1930 0b5c 0027     		movs	r7, #0
 1931 0b5e 8DE6     		b	.L1420
 1932              	.L696:
 1933 0b60 2046     		mov	r0, r4
 1934 0b62 5321     		movs	r1, #83
 1935 0b64 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1936 0b68 0028     		cmp	r0, #0
 1937 0b6a 42F07C85 		bne	.L697
 1938 0b6e 0746     		mov	r7, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 35


 1939 0b70 A368     		ldr	r3, [r4, #8]
 1940 0b72 C2E6     		b	.L763
 1941              	.L1611:
 1942              		.align	2
 1943              	.L1610:
 1944 0b74 00000000 		.word	_ZN6GCodes11axisLettersE
 1945 0b78 C00D0000 		.word	.LC128
 1946 0b7c 00007F43 		.word	1132396544
 1947 0b80 00000000 		.word	reprap
 1948              	.L711:
 1949 0b84 0DF1680A 		add	r10, sp, #104
 1950 0b88 D5F8B031 		ldr	r3, [r5, #432]
 1951 0b8c 4FF00008 		mov	r8, #0
 1952 0b90 8AF80080 		strb	r8, [r10]
 1953 0b94 002B     		cmp	r3, #0
 1954 0b96 02F0CF87 		beq	.L717
 1955 0b9a B14F     		ldr	r7, .L1612
 1956 0b9c 05F5DC79 		add	r9, r5, #440
 1957              	.L716:
 1958 0ba0 4A46     		mov	r2, r9
 1959 0ba2 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 1960 0ba6 2046     		mov	r0, r4
 1961 0ba8 5346     		mov	r3, r10
 1962 0baa FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1963 0bae D5F8B021 		ldr	r2, [r5, #432]
 1964 0bb2 08F10108 		add	r8, r8, #1
 1965 0bb6 4245     		cmp	r2, r8
 1966 0bb8 09F10409 		add	r9, r9, #4
 1967 0bbc F0D8     		bhi	.L716
 1968 0bbe 9AF80030 		ldrb	r3, [r10]	@ zero_extendqisi2
 1969 0bc2 002B     		cmp	r3, #0
 1970 0bc4 02F0B887 		beq	.L717
 1971              	.L714:
 1972 0bc8 A368     		ldr	r3, [r4, #8]
 1973 0bca 0027     		movs	r7, #0
 1974 0bcc 95E6     		b	.L763
 1975              	.L719:
 1976 0bce 2046     		mov	r0, r4
 1977 0bd0 5421     		movs	r1, #84
 1978 0bd2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1979 0bd6 0028     		cmp	r0, #0
 1980 0bd8 42F0C185 		bne	.L720
 1981 0bdc 0746     		mov	r7, r0
 1982 0bde A368     		ldr	r3, [r4, #8]
 1983 0be0 8BE6     		b	.L763
 1984              	.L743:
 1985 0be2 2846     		mov	r0, r5
 1986 0be4 2146     		mov	r1, r4
 1987 0be6 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 1988 0bea 0028     		cmp	r0, #0
 1989 0bec B6D0     		beq	.L554
 1990 0bee 4FF00008 		mov	r8, #0
 1991 0bf2 9B4F     		ldr	r7, .L1612
 1992 0bf4 9FED9B8A 		flds	s16, .L1612+4
 1993 0bf8 C146     		mov	r9, r8
 1994 0bfa C246     		mov	r10, r8
 1995 0bfc 05E0     		b	.L757
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 36


 1996              	.L744:
 1997 0bfe 08F10108 		add	r8, r8, #1
 1998 0c02 B8F1060F 		cmp	r8, #6
 1999 0c06 01F08987 		beq	.L1474
 2000              	.L757:
 2001 0c0a 2046     		mov	r0, r4
 2002 0c0c 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 2003 0c10 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2004 0c14 0028     		cmp	r0, #0
 2005 0c16 F2D0     		beq	.L744
 2006 0c18 0DF1680B 		add	fp, sp, #104
 2007 0c1c 5946     		mov	r1, fp
 2008 0c1e 0423     		movs	r3, #4
 2009 0c20 2046     		mov	r0, r4
 2010 0c22 12AA     		add	r2, sp, #72
 2011 0c24 1293     		str	r3, [sp, #72]
 2012 0c26 0DF14C0A 		add	r10, sp, #76
 2013 0c2a FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 2014 0c2e 1299     		ldr	r1, [sp, #72]
 2015 0c30 CAF80010 		str	r1, [r10]
 2016 0c34 0029     		cmp	r1, #0
 2017 0c36 01F09F87 		beq	.L752
 2018 0c3a 0023     		movs	r3, #0
 2019 0c3c 9E46     		mov	lr, r3
 2020              	.L750:
 2021 0c3e 5BF82320 		ldr	r2, [fp, r3, lsl #2]
 2022 0c42 092A     		cmp	r2, #9
 2023 0c44 98BF     		it	ls
 2024 0c46 0AEB0300 		addls	r0, r10, r3
 2025 0c4a 03F10103 		add	r3, r3, #1
 2026 0c4e 94BF     		ite	ls
 2027 0c50 0271     		strbls	r2, [r0, #4]
 2028 0c52 4FF0010E 		movhi	lr, #1
 2029 0c56 8B42     		cmp	r3, r1
 2030 0c58 F1D1     		bne	.L750
 2031 0c5a BEF1000F 		cmp	lr, #0
 2032 0c5e 01F08B87 		beq	.L752
 2033 0c62 4FF00109 		mov	r9, #1
 2034              	.L751:
 2035 0c66 4FF0010A 		mov	r10, #1
 2036 0c6a C8E7     		b	.L744
 2037              	.L365:
 2038 0c6c 2046     		mov	r0, r4
 2039 0c6e 4821     		movs	r1, #72
 2040 0c70 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2041 0c74 0028     		cmp	r0, #0
 2042 0c76 42F05D86 		bne	.L1475
 2043 0c7a 4FF00108 		mov	r8, #1
 2044              	.L366:
 2045 0c7e 2046     		mov	r0, r4
 2046 0c80 5321     		movs	r1, #83
 2047 0c82 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2048 0c86 0746     		mov	r7, r0
 2049 0c88 0028     		cmp	r0, #0
 2050 0c8a 03F00F81 		beq	.L367
 2051 0c8e 2046     		mov	r0, r4
 2052 0c90 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 37


 2053 0c94 07EE900A 		fmsr	s15, r0
 2054 0c98 BAEE047A 		fconsts	s14, #164
 2055 0c9c F4EEC77A 		fcmpes	s15, s14
 2056 0ca0 F1EE10FA 		fmstat
 2057 0ca4 07DD     		ble	.L368
 2058 0ca6 9FED707A 		flds	s14, .L1612+8
 2059 0caa F4EEC77A 		fcmpes	s15, s14
 2060 0cae F1EE10FA 		fmstat
 2061 0cb2 04F12B81 		bmi	.L1476
 2062              	.L368:
 2063 0cb6 3046     		mov	r0, r6
 2064 0cb8 6C49     		ldr	r1, .L1612+12
 2065 0cba FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 2066 0cbe 0127     		movs	r7, #1
 2067 0cc0 A368     		ldr	r3, [r4, #8]
 2068 0cc2 1AE6     		b	.L763
 2069              	.L371:
 2070 0cc4 6A4A     		ldr	r2, .L1612+16
 2071 0cc6 D068     		ldr	r0, [r2, #12]
 2072 0cc8 90F92E10 		ldrsb	r1, [r0, #46]
 2073 0ccc 0029     		cmp	r1, #0
 2074 0cce C2F27081 		blt	.L936
 2075 0cd2 FFF7FEFF 		bl	_ZN4Heat7StandbyEa
 2076 0cd6 0027     		movs	r7, #0
 2077 0cd8 A368     		ldr	r3, [r4, #8]
 2078 0cda 0EE6     		b	.L763
 2079              	.L200:
 2080 0cdc 644B     		ldr	r3, .L1612+16
 2081 0cde DB69     		ldr	r3, [r3, #28]
 2082 0ce0 1F7C     		ldrb	r7, [r3, #16]	@ zero_extendqisi2
 2083 0ce2 002F     		cmp	r7, #0
 2084 0ce4 01F0F687 		beq	.L201
 2085 0ce8 2B6C     		ldr	r3, [r5, #64]
 2086 0cea 1868     		ldr	r0, [r3]
 2087 0cec FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 2088 0cf0 8046     		mov	r8, r0
 2089 0cf2 8068     		ldr	r0, [r0, #8]
 2090 0cf4 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 2091 0cf8 8146     		mov	r9, r0
 2092 0cfa D8F80800 		ldr	r0, [r8, #8]
 2093 0cfe FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 2094 0d02 4A46     		mov	r2, r9
 2095 0d04 0346     		mov	r3, r0
 2096 0d06 5B49     		ldr	r1, .L1612+20
 2097 0d08 3046     		mov	r0, r6
 2098 0d0a FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 2099 0d0e 0027     		movs	r7, #0
 2100 0d10 A368     		ldr	r3, [r4, #8]
 2101 0d12 F2E5     		b	.L763
 2102              	.L331:
 2103 0d14 0121     		movs	r1, #1
 2104 0d16 2046     		mov	r0, r4
 2105 0d18 FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringEb
 2106 0d1c 564B     		ldr	r3, .L1612+24
 2107 0d1e 0028     		cmp	r0, #0
 2108 0d20 14BF     		ite	ne
 2109 0d22 0146     		movne	r1, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 38


 2110 0d24 1946     		moveq	r1, r3
 2111 0d26 5248     		ldr	r0, .L1612+16
 2112 0d28 FFF7FEFF 		bl	_ZN6RepRap10SetMessageEPKc
 2113 0d2c 0027     		movs	r7, #0
 2114 0d2e A368     		ldr	r3, [r4, #8]
 2115 0d30 E3E5     		b	.L763
 2116              	.L561:
 2117 0d32 2046     		mov	r0, r4
 2118 0d34 5021     		movs	r1, #80
 2119 0d36 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2120 0d3a 0746     		mov	r7, r0
 2121 0d3c 0028     		cmp	r0, #0
 2122 0d3e 02F08580 		beq	.L562
 2123 0d42 2046     		mov	r0, r4
 2124 0d44 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 2125 0d48 0146     		mov	r1, r0
 2126 0d4a 4948     		ldr	r0, .L1612+16
 2127 0d4c FFF7FEFF 		bl	_ZN6RepRap7SetNameEPKc
 2128 0d50 0027     		movs	r7, #0
 2129 0d52 A368     		ldr	r3, [r4, #8]
 2130 0d54 D1E5     		b	.L763
 2131              	.L563:
 2132 0d56 2046     		mov	r0, r4
 2133 0d58 5021     		movs	r1, #80
 2134 0d5a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2135 0d5e 0028     		cmp	r0, #0
 2136 0d60 42F0D486 		bne	.L1477
 2137              	.L564:
 2138 0d64 A368     		ldr	r3, [r4, #8]
 2139 0d66 0027     		movs	r7, #0
 2140 0d68 C7E5     		b	.L763
 2141              	.L565:
 2142 0d6a 2046     		mov	r0, r4
 2143 0d6c 5021     		movs	r1, #80
 2144 0d6e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2145 0d72 0028     		cmp	r0, #0
 2146 0d74 42F0D283 		bne	.L1478
 2147 0d78 2046     		mov	r0, r4
 2148 0d7a 5321     		movs	r1, #83
 2149 0d7c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2150 0d80 8146     		mov	r9, r0
 2151 0d82 0028     		cmp	r0, #0
 2152 0d84 42F0BC83 		bne	.L907
 2153 0d88 DFF8E4A0 		ldr	r10, .L1612+16
 2154 0d8c 2F68     		ldr	r7, [r5]
 2155 0d8e DAF80400 		ldr	r0, [r10, #4]
 2156 0d92 FFF7FEFF 		bl	_ZNK7Network12GetIPAddressEv
 2157 0d96 8046     		mov	r8, r0
 2158 0d98 DAF80400 		ldr	r0, [r10, #4]
 2159 0d9c FFF7FEFF 		bl	_ZNK7Network9IsEnabledEv
 2160 0da0 97F89920 		ldrb	r2, [r7, #153]	@ zero_extendqisi2
 2161 0da4 97F89830 		ldrb	r3, [r7, #152]	@ zero_extendqisi2
 2162 0da8 0092     		str	r2, [sp]
 2163 0daa 97F89A20 		ldrb	r2, [r7, #154]	@ zero_extendqisi2
 2164 0dae 0192     		str	r2, [sp, #4]
 2165 0db0 97F89B20 		ldrb	r2, [r7, #155]	@ zero_extendqisi2
 2166 0db4 0292     		str	r2, [sp, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 39


 2167 0db6 98F80020 		ldrb	r2, [r8]	@ zero_extendqisi2
 2168 0dba 0392     		str	r2, [sp, #12]
 2169 0dbc 98F80120 		ldrb	r2, [r8, #1]	@ zero_extendqisi2
 2170 0dc0 0492     		str	r2, [sp, #16]
 2171 0dc2 98F80270 		ldrb	r7, [r8, #2]	@ zero_extendqisi2
 2172 0dc6 2D49     		ldr	r1, .L1612+28
 2173 0dc8 2D4A     		ldr	r2, .L1612+32
 2174 0dca 0597     		str	r7, [sp, #20]
 2175 0dcc 0028     		cmp	r0, #0
 2176 0dce 08BF     		it	eq
 2177 0dd0 0A46     		moveq	r2, r1
 2178 0dd2 98F80310 		ldrb	r1, [r8, #3]	@ zero_extendqisi2
 2179 0dd6 0691     		str	r1, [sp, #24]
 2180 0dd8 3046     		mov	r0, r6
 2181 0dda 2A49     		ldr	r1, .L1612+36
 2182 0ddc FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 2183 0de0 4F46     		mov	r7, r9
 2184 0de2 A368     		ldr	r3, [r4, #8]
 2185 0de4 89E5     		b	.L763
 2186              	.L222:
 2187 0de6 2046     		mov	r0, r4
 2188 0de8 5021     		movs	r1, #80
 2189 0dea FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2190 0dee 0028     		cmp	r0, #0
 2191 0df0 42F07087 		bne	.L223
 2192              	.L260:
 2193 0df4 A368     		ldr	r3, [r4, #8]
 2194 0df6 0027     		movs	r7, #0
 2195 0df8 7FE5     		b	.L763
 2196              	.L231:
 2197 0dfa 2868     		ldr	r0, [r5]
 2198 0dfc 0121     		movs	r1, #1
 2199 0dfe FFF7FEFF 		bl	_ZN8Platform11SetAtxPowerEb
 2200 0e02 0027     		movs	r7, #0
 2201 0e04 A368     		ldr	r3, [r4, #8]
 2202 0e06 78E5     		b	.L763
 2203              	.L496:
 2204 0e08 194A     		ldr	r2, .L1612+16
 2205 0e0a D268     		ldr	r2, [r2, #12]
 2206 0e0c 92F92E20 		ldrsb	r2, [r2, #46]
 2207 0e10 002A     		cmp	r2, #0
 2208 0e12 C2F2D480 		blt	.L960
 2209 0e16 3346     		mov	r3, r6
 2210 0e18 2846     		mov	r0, r5
 2211 0e1a 2146     		mov	r1, r4
 2212 0e1c FFF7FEFF 		bl	_ZN6GCodes16SetPidParametersER11GCodeBufferiR9StringRef
 2213 0e20 0027     		movs	r7, #0
 2214 0e22 A368     		ldr	r3, [r4, #8]
 2215 0e24 69E5     		b	.L763
 2216              	.L497:
 2217 0e26 2846     		mov	r0, r5
 2218 0e28 2146     		mov	r1, r4
 2219 0e2a 3246     		mov	r2, r6
 2220 0e2c FFF7FEFF 		bl	_ZN6GCodes19SetHeaterParametersER11GCodeBufferR9StringRef
 2221 0e30 0027     		movs	r7, #0
 2222 0e32 A368     		ldr	r3, [r4, #8]
 2223 0e34 61E5     		b	.L763
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 40


 2224              	.L506:
 2225 0e36 0DF14809 		add	r9, sp, #72
 2226 0e3a 11AB     		add	r3, sp, #68
 2227 0e3c 4A46     		mov	r2, r9
 2228 0e3e 0027     		movs	r7, #0
 2229 0e40 2046     		mov	r0, r4
 2230 0e42 4921     		movs	r1, #73
 2231 0e44 C9F80070 		str	r7, [r9]
 2232 0e48 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 2233 0e4c D5F8B031 		ldr	r3, [r5, #432]
 2234 0e50 002B     		cmp	r3, #0
 2235 0e52 03F06F80 		beq	.L507
 2236 0e56 BB46     		mov	fp, r7
 2237 0e58 DA46     		mov	r10, fp
 2238 0e5a 014F     		ldr	r7, .L1612
 2239 0e5c 0D96     		str	r6, [sp, #52]
 2240 0e5e 1AE0     		b	.L513
 2241              	.L1613:
 2242              		.align	2
 2243              	.L1612:
 2244 0e60 00000000 		.word	_ZN6GCodes11axisLettersE
 2245 0e64 00000000 		.word	0
 2246 0e68 0000FA44 		.word	1157234688
 2247 0e6c 58070000 		.word	.LC79
 2248 0e70 00000000 		.word	reprap
 2249 0e74 A4030000 		.word	.LC45
 2250 0e78 A4000000 		.word	.LC9
 2251 0e7c F8000000 		.word	.LC18
 2252 0e80 F0000000 		.word	.LC17
 2253 0e84 9C0C0000 		.word	.LC117
 2254              	.L508:
 2255 0e88 D5F8B031 		ldr	r3, [r5, #432]
 2256 0e8c 0BF1010B 		add	fp, fp, #1
 2257 0e90 5B45     		cmp	r3, fp
 2258 0e92 41F2BC85 		bls	.L1479
 2259              	.L513:
 2260 0e96 17F80B80 		ldrb	r8, [r7, fp]	@ zero_extendqisi2
 2261 0e9a 2046     		mov	r0, r4
 2262 0e9c 4146     		mov	r1, r8
 2263 0e9e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2264 0ea2 0028     		cmp	r0, #0
 2265 0ea4 F0D0     		beq	.L508
 2266 0ea6 2846     		mov	r0, r5
 2267 0ea8 2146     		mov	r1, r4
 2268 0eaa FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2269 0eae 0028     		cmp	r0, #0
 2270 0eb0 3FF454AE 		beq	.L554
 2271 0eb4 2046     		mov	r0, r4
 2272 0eb6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2273 0eba 8246     		mov	r10, r0
 2274 0ebc 5946     		mov	r1, fp
 2275 0ebe 5246     		mov	r2, r10
 2276 0ec0 D9F80030 		ldr	r3, [r9]
 2277 0ec4 2846     		mov	r0, r5
 2278 0ec6 FFF7FEFF 		bl	_ZNK6GCodes19ChangeMicrosteppingEjii
 2279 0eca 4FF0010E 		mov	lr, #1
 2280 0ece 0621     		movs	r1, #6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 41


 2281 0ed0 B34A     		ldr	r2, .L1614
 2282 0ed2 4346     		mov	r3, r8
 2283 0ed4 0EFA0BFC 		lsl	ip, lr, fp
 2284 0ed8 0028     		cmp	r0, #0
 2285 0eda 01F0E582 		beq	.L510
 2286 0ede D5F89832 		ldr	r3, [r5, #664]
 2287 0ee2 23EA0C03 		bic	r3, r3, ip
 2288 0ee6 F246     		mov	r10, lr
 2289 0ee8 C5F89832 		str	r3, [r5, #664]
 2290 0eec CCE7     		b	.L508
 2291              	.L531:
 2292 0eee 2846     		mov	r0, r5
 2293 0ef0 2146     		mov	r1, r4
 2294 0ef2 3246     		mov	r2, r6
 2295 0ef4 FFF7FEFF 		bl	_ZNK6GCodes13SaveHeightMapER11GCodeBufferR9StringRef
 2296 0ef8 A368     		ldr	r3, [r4, #8]
 2297 0efa 0746     		mov	r7, r0
 2298 0efc FDE4     		b	.L763
 2299              	.L312:
 2300 0efe 2046     		mov	r0, r4
 2301 0f00 5021     		movs	r1, #80
 2302 0f02 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2303 0f06 0028     		cmp	r0, #0
 2304 0f08 01F06786 		beq	.L313
 2305 0f0c 2046     		mov	r0, r4
 2306 0f0e 2F68     		ldr	r7, [r5]
 2307 0f10 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2308 0f14 C1B2     		uxtb	r1, r0
 2309 0f16 3846     		mov	r0, r7
 2310 0f18 FFF7FEFF 		bl	_ZN8Platform12SetBoardTypeE9BoardType
 2311 0f1c 0027     		movs	r7, #0
 2312 0f1e A368     		ldr	r3, [r4, #8]
 2313 0f20 EBE4     		b	.L763
 2314              	.L315:
 2315 0f22 2046     		mov	r0, r4
 2316 0f24 5021     		movs	r1, #80
 2317 0f26 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2318 0f2a 0028     		cmp	r0, #0
 2319 0f2c 02F00C80 		beq	.L933
 2320 0f30 2046     		mov	r0, r4
 2321 0f32 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2322 0f36 95F8D633 		ldrb	r3, [r5, #982]	@ zero_extendqisi2
 2323 0f3a D4F88810 		ldr	r1, [r4, #136]
 2324 0f3e 002B     		cmp	r3, #0
 2325 0f40 03F02E84 		beq	.L1480
 2326              	.L317:
 2327 0f44 0127     		movs	r7, #1
 2328              	.L316:
 2329 0f46 2046     		mov	r0, r4
 2330 0f48 4821     		movs	r1, #72
 2331 0f4a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2332 0f4e 0028     		cmp	r0, #0
 2333 0f50 01F04385 		beq	.L319
 2334 0f54 0DF14C08 		add	r8, sp, #76
 2335 0f58 0823     		movs	r3, #8
 2336 0f5a 4246     		mov	r2, r8
 2337 0f5c 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 42


 2338 0f5e 1AA9     		add	r1, sp, #104
 2339 0f60 C8F80030 		str	r3, [r8]
 2340 0f64 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 2341 0f68 95F8D633 		ldrb	r3, [r5, #982]	@ zero_extendqisi2
 2342 0f6c 002B     		cmp	r3, #0
 2343 0f6e 42F0CE80 		bne	.L323
 2344 0f72 D8F80020 		ldr	r2, [r8]
 2345 0f76 002A     		cmp	r2, #0
 2346 0f78 02F0C980 		beq	.L323
 2347 0f7c DFF824A2 		ldr	r10, .L1614+4
 2348 0f80 9946     		mov	r9, r3
 2349 0f82 0DF1640B 		add	fp, sp, #100
 2350 0f86 04E0     		b	.L325
 2351              	.L324:
 2352 0f88 D8F80030 		ldr	r3, [r8]
 2353 0f8c 4B45     		cmp	r3, r9
 2354 0f8e 42F2BE80 		bls	.L323
 2355              	.L325:
 2356 0f92 5BF8041F 		ldr	r1, [fp, #4]!
 2357 0f96 DAF80C00 		ldr	r0, [r10, #12]
 2358 0f9a 49B2     		sxtb	r1, r1
 2359 0f9c 0122     		movs	r2, #1
 2360 0f9e 09F10109 		add	r9, r9, #1
 2361 0fa2 FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
 2362 0fa6 0028     		cmp	r0, #0
 2363 0fa8 EED1     		bne	.L324
 2364 0faa 0746     		mov	r7, r0
 2365              	.L1428:
 2366 0fac 2146     		mov	r1, r4
 2367 0fae 3246     		mov	r2, r6
 2368 0fb0 2846     		mov	r0, r5
 2369 0fb2 FFF7FEFF 		bl	_ZNK6GCodes14CheckReportDueER11GCodeBufferR9StringRef
 2370 0fb6 0123     		movs	r3, #1
 2371 0fb8 85F8D533 		strb	r3, [r5, #981]
 2372 0fbc 5EE4     		b	.L1420
 2373              	.L339:
 2374 0fbe 2046     		mov	r0, r4
 2375 0fc0 5021     		movs	r1, #80
 2376 0fc2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2377 0fc6 0028     		cmp	r0, #0
 2378 0fc8 42F03383 		bne	.L340
 2379              	.L341:
 2380 0fcc 7548     		ldr	r0, .L1614+4
 2381 0fce 94F88C10 		ldrb	r1, [r4, #140]	@ zero_extendqisi2
 2382 0fd2 FFF7FEFF 		bl	_ZN6RepRap11DiagnosticsE11MessageType
 2383 0fd6 0027     		movs	r7, #0
 2384 0fd8 A368     		ldr	r3, [r4, #8]
 2385 0fda 8EE4     		b	.L763
 2386              	.L337:
 2387 0fdc 2846     		mov	r0, r5
 2388 0fde 2146     		mov	r1, r4
 2389 0fe0 FFF7FEFF 		bl	_ZN6GCodes4PushER11GCodeBuffer
 2390 0fe4 0027     		movs	r7, #0
 2391 0fe6 A368     		ldr	r3, [r4, #8]
 2392 0fe8 87E4     		b	.L763
 2393              	.L333:
 2394 0fea 3046     		mov	r0, r6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 43


 2395 0fec 6E49     		ldr	r1, .L1614+8
 2396 0fee FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 2397 0ff2 D5F8B031 		ldr	r3, [r5, #432]
 2398 0ff6 C3B1     		cbz	r3, .L335
 2399 0ff8 6C4F     		ldr	r7, .L1614+12
 2400 0ffa 4FF00008 		mov	r8, #0
 2401              	.L336:
 2402 0ffe 4146     		mov	r1, r8
 2403 1000 2868     		ldr	r0, [r5]
 2404 1002 17F80890 		ldrb	r9, [r7, r8]	@ zero_extendqisi2
 2405 1006 FFF7FEFF 		bl	_ZNK8Platform7StoppedEj
 2406 100a 0146     		mov	r1, r0
 2407 100c 2846     		mov	r0, r5
 2408 100e FFF7FEFF 		bl	_ZN6GCodes22TranslateEndStopResultE10EndStopHit
 2409 1012 4A46     		mov	r2, r9
 2410 1014 0346     		mov	r3, r0
 2411 1016 6649     		ldr	r1, .L1614+16
 2412 1018 3046     		mov	r0, r6
 2413 101a FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 2414 101e D5F8B031 		ldr	r3, [r5, #432]
 2415 1022 08F10108 		add	r8, r8, #1
 2416 1026 4345     		cmp	r3, r8
 2417 1028 E9D8     		bhi	.L336
 2418              	.L335:
 2419 102a 2868     		ldr	r0, [r5]
 2420 102c FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 2421 1030 0146     		mov	r1, r0
 2422 1032 2846     		mov	r0, r5
 2423 1034 FFF7FEFF 		bl	_ZN6GCodes22TranslateEndStopResultE10EndStopHit
 2424 1038 5E49     		ldr	r1, .L1614+20
 2425 103a 0246     		mov	r2, r0
 2426 103c 3046     		mov	r0, r6
 2427 103e FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 2428 1042 0027     		movs	r7, #0
 2429 1044 A368     		ldr	r3, [r4, #8]
 2430 1046 58E4     		b	.L763
 2431              	.L338:
 2432 1048 2846     		mov	r0, r5
 2433 104a 2146     		mov	r1, r4
 2434 104c FFF7FEFF 		bl	_ZN6GCodes3PopER11GCodeBuffer
 2435 1050 0027     		movs	r7, #0
 2436 1052 A368     		ldr	r3, [r4, #8]
 2437 1054 51E4     		b	.L763
 2438              	.L642:
 2439 1056 2046     		mov	r0, r4
 2440 1058 5021     		movs	r1, #80
 2441 105a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2442 105e 0028     		cmp	r0, #0
 2443 1060 3FF480AE 		beq	.L564
 2444 1064 2046     		mov	r0, r4
 2445 1066 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2446 106a 0146     		mov	r1, r0
 2447 106c 4D48     		ldr	r0, .L1614+4
 2448 106e FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 2449 1072 0746     		mov	r7, r0
 2450 1074 0028     		cmp	r0, #0
 2451 1076 03F09686 		beq	.L1481
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 44


 2452 107a 2046     		mov	r0, r4
 2453 107c 5321     		movs	r1, #83
 2454 107e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2455 1082 8646     		mov	lr, r0
 2456 1084 0028     		cmp	r0, #0
 2457 1086 43F02E87 		bne	.L1482
 2458 108a 97F8CCC0 		ldrb	ip, [r7, #204]	@ zero_extendqisi2
 2459 108e 4A48     		ldr	r0, .L1614+24
 2460 1090 4A4B     		ldr	r3, .L1614+28
 2461 1092 7A68     		ldr	r2, [r7, #4]
 2462 1094 4A49     		ldr	r1, .L1614+32
 2463 1096 BCF1000F 		cmp	ip, #0
 2464 109a 18BF     		it	ne
 2465 109c 0346     		movne	r3, r0
 2466 109e 3046     		mov	r0, r6
 2467 10a0 7746     		mov	r7, lr
 2468 10a2 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 2469 10a6 A368     		ldr	r3, [r4, #8]
 2470 10a8 27E4     		b	.L763
 2471              	.L646:
 2472 10aa 2046     		mov	r0, r4
 2473 10ac 5021     		movs	r1, #80
 2474 10ae FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2475 10b2 0028     		cmp	r0, #0
 2476 10b4 3FF456AE 		beq	.L564
 2477 10b8 2046     		mov	r0, r4
 2478 10ba FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2479 10be 0928     		cmp	r0, #9
 2480 10c0 8046     		mov	r8, r0
 2481 10c2 43F2BE85 		bls	.L647
 2482              	.L674:
 2483 10c6 A368     		ldr	r3, [r4, #8]
 2484 10c8 0027     		movs	r7, #0
 2485 10ca 16E4     		b	.L763
 2486              	.L431:
 2487 10cc 2046     		mov	r0, r4
 2488 10ce 5321     		movs	r1, #83
 2489 10d0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2490 10d4 0028     		cmp	r0, #0
 2491 10d6 42F07882 		bne	.L1483
 2492 10da 8246     		mov	r10, r0
 2493              	.L432:
 2494 10dc D5F8B031 		ldr	r3, [r5, #432]
 2495 10e0 002B     		cmp	r3, #0
 2496 10e2 02F03D82 		beq	.L440
 2497 10e6 4FF00008 		mov	r8, #0
 2498 10ea 304F     		ldr	r7, .L1614+12
 2499 10ec C146     		mov	r9, r8
 2500 10ee 06E0     		b	.L439
 2501              	.L436:
 2502 10f0 D5F8B031 		ldr	r3, [r5, #432]
 2503 10f4 08F10108 		add	r8, r8, #1
 2504 10f8 4345     		cmp	r3, r8
 2505 10fa 41F2D683 		bls	.L1484
 2506              	.L439:
 2507 10fe 2046     		mov	r0, r4
 2508 1100 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 45


 2509 1104 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2510 1108 0028     		cmp	r0, #0
 2511 110a F1D0     		beq	.L436
 2512 110c 2046     		mov	r0, r4
 2513 110e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2514 1112 D5ED9B7A 		flds	s15, [r5, #620]
 2515 1116 07EE100A 		fmsr	s14, r0
 2516 111a 08F5A772 		add	r2, r8, #334
 2517 111e 08F5A473 		add	r3, r8, #328
 2518 1122 67EE277A 		fmuls	s15, s14, s15
 2519 1126 BAF1000F 		cmp	r10, #0
 2520 112a 01F0C683 		beq	.L437
 2521 112e 2B68     		ldr	r3, [r5]
 2522 1130 03EB8203 		add	r3, r3, r2, lsl #2
 2523 1134 C3ED007A 		fsts	s15, [r3]
 2524 1138 4FF00109 		mov	r9, #1
 2525 113c D8E7     		b	.L436
 2526              	.L812:
 2527 113e 2868     		ldr	r0, [r5]
 2528 1140 FFF7FEFF 		bl	_ZNK8Platform11GetDateTimeEv
 2529 1144 1A90     		str	r0, [sp, #104]
 2530 1146 1AA8     		add	r0, sp, #104
 2531 1148 FFF7FEFF 		bl	gmtime
 2532 114c 5021     		movs	r1, #80
 2533 114e 0746     		mov	r7, r0
 2534 1150 2046     		mov	r0, r4
 2535 1152 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2536 1156 0028     		cmp	r0, #0
 2537 1158 41F08285 		bne	.L1485
 2538 115c 2046     		mov	r0, r4
 2539 115e 5321     		movs	r1, #83
 2540 1160 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2541 1164 0028     		cmp	r0, #0
 2542 1166 41F09885 		bne	.L910
 2543 116a F968     		ldr	r1, [r7, #12]
 2544 116c 7A69     		ldr	r2, [r7, #20]
 2545 116e 3B69     		ldr	r3, [r7, #16]
 2546 1170 0091     		str	r1, [sp]
 2547 1172 B968     		ldr	r1, [r7, #8]
 2548 1174 0191     		str	r1, [sp, #4]
 2549 1176 7968     		ldr	r1, [r7, #4]
 2550 1178 0291     		str	r1, [sp, #8]
 2551 117a 3968     		ldr	r1, [r7]
 2552 117c 0391     		str	r1, [sp, #12]
 2553 117e 02F26C72 		addw	r2, r2, #1900
 2554 1182 0133     		adds	r3, r3, #1
 2555 1184 3046     		mov	r0, r6
 2556 1186 0F49     		ldr	r1, .L1614+36
 2557 1188 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 2558 118c 2868     		ldr	r0, [r5]
 2559 118e FFF7FEFF 		bl	_ZNK8Platform13IsDateTimeSetEv
 2560 1192 0028     		cmp	r0, #0
 2561 1194 03F05086 		beq	.L1486
 2562              	.L819:
 2563 1198 A368     		ldr	r3, [r4, #8]
 2564 119a 0027     		movs	r7, #0
 2565 119c FFF7ADBB 		b	.L763
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 46


 2566              	.L1615:
 2567              		.align	2
 2568              	.L1614:
 2569 11a0 340B0000 		.word	.LC103
 2570 11a4 00000000 		.word	reprap
 2571 11a8 2C060000 		.word	.LC68
 2572 11ac 00000000 		.word	_ZN6GCodes11axisLettersE
 2573 11b0 44060000 		.word	.LC70
 2574 11b4 38060000 		.word	.LC69
 2575 11b8 F0000000 		.word	.LC17
 2576 11bc F8000000 		.word	.LC18
 2577 11c0 580F0000 		.word	.LC139
 2578 11c4 40140000 		.word	.LC174
 2579              	.L345:
 2580 11c8 2046     		mov	r0, r4
 2581 11ca 4821     		movs	r1, #72
 2582 11cc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2583 11d0 0028     		cmp	r0, #0
 2584 11d2 42F01083 		bne	.L1487
 2585 11d6 DFF86CA3 		ldr	r10, .L1616+44
 2586 11da DAF80C30 		ldr	r3, [r10, #12]
 2587 11de 93F92E80 		ldrsb	r8, [r3, #46]
 2588 11e2 B8F1000F 		cmp	r8, #0
 2589 11e6 C3F20285 		blt	.L1488
 2590              	.L349:
 2591 11ea 2046     		mov	r0, r4
 2592 11ec 5321     		movs	r1, #83
 2593 11ee FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2594 11f2 0028     		cmp	r0, #0
 2595 11f4 42F06087 		bne	.L1489
 2596              	.L350:
 2597 11f8 2046     		mov	r0, r4
 2598 11fa 5221     		movs	r1, #82
 2599 11fc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2600 1200 0028     		cmp	r0, #0
 2601 1202 42F04B87 		bne	.L353
 2602 1206 0746     		mov	r7, r0
 2603 1208 A368     		ldr	r3, [r4, #8]
 2604 120a FFF776BB 		b	.L763
 2605              	.L342:
 2606 120e 2046     		mov	r0, r4
 2607 1210 5321     		movs	r1, #83
 2608 1212 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2609 1216 0028     		cmp	r0, #0
 2610 1218 01F07185 		beq	.L343
 2611 121c 2046     		mov	r0, r4
 2612 121e 2F68     		ldr	r7, [r5]
 2613 1220 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2614 1224 FFF7FEFF 		bl	__aeabi_f2d
 2615 1228 C8A3     		adr	r3, .L1616+52
 2616 122a D3E90023 		ldrd	r2, [r3]
 2617 122e FFF7FEFF 		bl	__aeabi_dmul
 2618 1232 FFF7FEFF 		bl	__aeabi_d2f
 2619 1236 06EE900A 		fmsr	s13, r0
 2620 123a F5EEC06A 		fcmpezs	s13
 2621 123e F1EE10FA 		fmstat
 2622 1242 43F3C881 		ble	.L1490
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 47


 2623 1246 FFF7FEFF 		bl	__aeabi_f2d
 2624 124a B34B     		ldr	r3, .L1616
 2625 124c 0022     		movs	r2, #0
 2626 124e FFF7FEFF 		bl	__aeabi_dmul
 2627 1252 FFF7FEFF 		bl	__aeabi_d2uiz
 2628 1256 C7F80C07 		str	r0, [r7, #1804]
 2629 125a A368     		ldr	r3, [r4, #8]
 2630 125c 0027     		movs	r7, #0
 2631 125e FFF74CBB 		b	.L763
 2632              	.L607:
 2633 1262 2046     		mov	r0, r4
 2634 1264 5021     		movs	r1, #80
 2635 1266 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2636 126a 0028     		cmp	r0, #0
 2637 126c 42F07281 		bne	.L1491
 2638 1270 AA4F     		ldr	r7, .L1616+4
 2639              	.L608:
 2640 1272 AB4A     		ldr	r2, .L1616+8
 2641 1274 2846     		mov	r0, r5
 2642 1276 2146     		mov	r1, r4
 2643 1278 3B46     		mov	r3, r7
 2644 127a FFF7FEFF 		bl	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_
 2645 127e 3A46     		mov	r2, r7
 2646 1280 0028     		cmp	r0, #0
 2647 1282 01F0C584 		beq	.L609
 2648 1286 3046     		mov	r0, r6
 2649 1288 A649     		ldr	r1, .L1616+12
 2650 128a FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 2651 128e 0027     		movs	r7, #0
 2652 1290 A368     		ldr	r3, [r4, #8]
 2653 1292 FFF732BB 		b	.L763
 2654              	.L610:
 2655 1296 2046     		mov	r0, r4
 2656 1298 5021     		movs	r1, #80
 2657 129a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2658 129e 0028     		cmp	r0, #0
 2659 12a0 42F09980 		bne	.L1492
 2660 12a4 A04F     		ldr	r7, .L1616+16
 2661              	.L611:
 2662 12a6 A14A     		ldr	r2, .L1616+20
 2663 12a8 2846     		mov	r0, r5
 2664 12aa 2146     		mov	r1, r4
 2665 12ac 3B46     		mov	r3, r7
 2666 12ae FFF7FEFF 		bl	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_
 2667 12b2 3A46     		mov	r2, r7
 2668 12b4 0028     		cmp	r0, #0
 2669 12b6 01F07486 		beq	.L612
 2670 12ba 3046     		mov	r0, r6
 2671 12bc 9949     		ldr	r1, .L1616+12
 2672 12be FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 2673 12c2 0027     		movs	r7, #0
 2674 12c4 A368     		ldr	r3, [r4, #8]
 2675 12c6 FFF718BB 		b	.L763
 2676              	.L262:
 2677 12ca 2846     		mov	r0, r5
 2678 12cc 2146     		mov	r1, r4
 2679 12ce FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 48


 2680 12d2 0028     		cmp	r0, #0
 2681 12d4 3FF442AC 		beq	.L554
 2682 12d8 2846     		mov	r0, r5
 2683 12da 2146     		mov	r1, r4
 2684 12dc 0022     		movs	r2, #0
 2685 12de FFF7FEFF 		bl	_ZN6GCodes15RetractFilamentER11GCodeBufferb
 2686 12e2 0027     		movs	r7, #0
 2687 12e4 8146     		mov	r9, r0
 2688              	.L175:
 2689 12e6 B9F1000F 		cmp	r9, #0
 2690 12ea 3FF40CAB 		beq	.L866
 2691              	.L1440:
 2692 12ee A368     		ldr	r3, [r4, #8]
 2693 12f0 FFF703BB 		b	.L763
 2694              	.L863:
 2695 12f4 2846     		mov	r0, r5
 2696 12f6 2146     		mov	r1, r4
 2697 12f8 4FF4FA72 		mov	r2, #500
 2698 12fc FFF7FEFF 		bl	_ZN6GCodes11DoDwellTimeER11GCodeBufferm
 2699 1300 0028     		cmp	r0, #0
 2700 1302 42F09180 		bne	.L1493
 2701              	.L210:
 2702 1306 4FF00009 		mov	r9, #0
 2703 130a FFF7FCBA 		b	.L866
 2704              	.L539:
 2705 130e 884B     		ldr	r3, .L1616+24
 2706 1310 0027     		movs	r7, #0
 2707 1312 1A68     		ldr	r2, [r3]
 2708 1314 0097     		str	r7, [sp]
 2709 1316 3B46     		mov	r3, r7
 2710 1318 2846     		mov	r0, r5
 2711 131a 2146     		mov	r1, r4
 2712 131c FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 2713 1320 A368     		ldr	r3, [r4, #8]
 2714 1322 FFF7EABA 		b	.L763
 2715              	.L354:
 2716 1326 2046     		mov	r0, r4
 2717 1328 4821     		movs	r1, #72
 2718 132a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2719 132e 0746     		mov	r7, r0
 2720 1330 2046     		mov	r0, r4
 2721 1332 002F     		cmp	r7, #0
 2722 1334 42F08B80 		bne	.L1494
 2723 1338 5321     		movs	r1, #83
 2724 133a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2725 133e 8146     		mov	r9, r0
 2726 1340 0028     		cmp	r0, #0
 2727 1342 01F0F584 		beq	.L1495
 2728              	.L897:
 2729 1346 DFF8FC91 		ldr	r9, .L1616+44
 2730 134a D9F80C30 		ldr	r3, [r9, #12]
 2731 134e 93F92F80 		ldrsb	r8, [r3, #47]
 2732 1352 B8F1FF3F 		cmp	r8, #-1
 2733 1356 03F0F180 		beq	.L360
 2734 135a 2046     		mov	r0, r4
 2735 135c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2736 1360 9FED747A 		flds	s14, .L1616+28
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 49


 2737 1364 07EE900A 		fmsr	s15, r0
 2738 1368 F4EEC77A 		fcmpes	s15, s14
 2739 136c F1EE10FA 		fmstat
 2740 1370 D9F80C00 		ldr	r0, [r9, #12]
 2741 1374 4146     		mov	r1, r8
 2742 1376 43F13F80 		bpl	.L1427
 2743 137a FFF7FEFF 		bl	_ZN4Heat9SwitchOffEa
 2744              	.L363:
 2745 137e A368     		ldr	r3, [r4, #8]
 2746 1380 FFF7BBBA 		b	.L763
 2747              	.L870:
 2748 1384 D5F8B031 		ldr	r3, [r5, #432]
 2749 1388 002B     		cmp	r3, #0
 2750 138a 02F04A82 		beq	.L877
 2751 138e 4FF00008 		mov	r8, #0
 2752 1392 C246     		mov	r10, r8
 2753 1394 684F     		ldr	r7, .L1616+32
 2754 1396 9FED698A 		flds	s16, .L1616+36
 2755 139a B146     		mov	r9, r6
 2756 139c 06E0     		b	.L878
 2757              	.L394:
 2758 139e D5F8B031 		ldr	r3, [r5, #432]
 2759 13a2 08F10108 		add	r8, r8, #1
 2760 13a6 4345     		cmp	r3, r8
 2761 13a8 41F26F82 		bls	.L1496
 2762              	.L878:
 2763 13ac 2046     		mov	r0, r4
 2764 13ae 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 2765 13b2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2766 13b6 0028     		cmp	r0, #0
 2767 13b8 F1D0     		beq	.L394
 2768 13ba 2046     		mov	r0, r4
 2769 13bc 2E68     		ldr	r6, [r5]
 2770 13be FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2771 13c2 D5ED9B7A 		flds	s15, [r5, #620]
 2772 13c6 06EE900A 		fmsr	s13, r0
 2773 13ca 66EEA77A 		fmuls	s15, s13, s15
 2774 13ce 06EB8803 		add	r3, r6, r8, lsl #2
 2775 13d2 67EE887A 		fmuls	s15, s15, s16
 2776 13d6 4FF0010A 		mov	r10, #1
 2777 13da C3ED3C7A 		fsts	s15, [r3, #240]
 2778 13de DEE7     		b	.L394
 2779              	.L408:
 2780 13e0 2046     		mov	r0, r4
 2781 13e2 5021     		movs	r1, #80
 2782 13e4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2783 13e8 0028     		cmp	r0, #0
 2784 13ea 42F00381 		bne	.L1497
 2785 13ee 2046     		mov	r0, r4
 2786 13f0 5421     		movs	r1, #84
 2787 13f2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2788 13f6 0746     		mov	r7, r0
 2789 13f8 0028     		cmp	r0, #0
 2790 13fa 42F0F180 		bne	.L902
 2791 13fe D5F800A0 		ldr	r10, [r5]
 2792 1402 DAF84001 		ldr	r0, [r10, #320]	@ float
 2793 1406 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 50


 2794 140a 8046     		mov	r8, r0
 2795 140c DAF84401 		ldr	r0, [r10, #324]	@ float
 2796 1410 8946     		mov	r9, r1
 2797 1412 FFF7FEFF 		bl	__aeabi_f2d
 2798 1416 4B46     		mov	r3, r9
 2799 1418 CDE90001 		strd	r0, [sp]
 2800 141c 4246     		mov	r2, r8
 2801 141e 3046     		mov	r0, r6
 2802 1420 4749     		ldr	r1, .L1616+40
 2803 1422 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 2804 1426 A368     		ldr	r3, [r4, #8]
 2805 1428 FFF767BA 		b	.L763
 2806              	.L411:
 2807 142c 2846     		mov	r0, r5
 2808 142e 2146     		mov	r1, r4
 2809 1430 FFF7FEFF 		bl	_ZN6GCodes10OffsetAxesER11GCodeBuffer
 2810 1434 0027     		movs	r7, #0
 2811 1436 8146     		mov	r9, r0
 2812 1438 55E7     		b	.L175
 2813              	.L412:
 2814 143a 2046     		mov	r0, r4
 2815 143c 5321     		movs	r1, #83
 2816 143e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2817 1442 0028     		cmp	r0, #0
 2818 1444 41F09287 		bne	.L1498
 2819 1448 0746     		mov	r7, r0
 2820              	.L413:
 2821 144a 2046     		mov	r0, r4
 2822 144c 5221     		movs	r1, #82
 2823 144e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2824 1452 0028     		cmp	r0, #0
 2825 1454 41F07087 		bne	.L1499
 2826              	.L416:
 2827 1458 2046     		mov	r0, r4
 2828 145a 4621     		movs	r1, #70
 2829 145c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2830 1460 0028     		cmp	r0, #0
 2831 1462 41F04B87 		bne	.L1500
 2832              	.L419:
 2833 1466 2046     		mov	r0, r4
 2834 1468 5421     		movs	r1, #84
 2835 146a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2836 146e 0028     		cmp	r0, #0
 2837 1470 41F00B87 		bne	.L1501
 2838 1474 2046     		mov	r0, r4
 2839 1476 5A21     		movs	r1, #90
 2840 1478 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2841 147c 0028     		cmp	r0, #0
 2842 147e 41F02487 		bne	.L425
 2843 1482 002F     		cmp	r7, #0
 2844 1484 02F06582 		beq	.L430
 2845              	.L426:
 2846 1488 A368     		ldr	r3, [r4, #8]
 2847 148a 0027     		movs	r7, #0
 2848 148c FFF735BA 		b	.L763
 2849              	.L669:
 2850 1490 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 51


 2851 1492 4421     		movs	r1, #68
 2852 1494 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2853 1498 0028     		cmp	r0, #0
 2854 149a 42F09B83 		bne	.L670
 2855 149e 0746     		mov	r7, r0
 2856 14a0 A368     		ldr	r3, [r4, #8]
 2857 14a2 FFF72ABA 		b	.L763
 2858              	.L673:
 2859 14a6 2046     		mov	r0, r4
 2860 14a8 5021     		movs	r1, #80
 2861 14aa FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2862 14ae 0028     		cmp	r0, #0
 2863 14b0 3FF458AC 		beq	.L564
 2864 14b4 2046     		mov	r0, r4
 2865 14b6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2866 14ba 0728     		cmp	r0, #7
 2867 14bc 0746     		mov	r7, r0
 2868 14be 3FF602AE 		bhi	.L674
 2869 14c2 204B     		ldr	r3, .L1616+44
 2870 14c4 0146     		mov	r1, r0
 2871 14c6 D868     		ldr	r0, [r3, #12]
 2872 14c8 FFF7FEFF 		bl	_ZNK4Heat13GetAveragePWMEj
 2873 14cc FFF7FEFF 		bl	__aeabi_f2d
 2874 14d0 3A46     		mov	r2, r7
 2875 14d2 CDE90001 		strd	r0, [sp]
 2876 14d6 3046     		mov	r0, r6
 2877 14d8 1B49     		ldr	r1, .L1616+48
 2878 14da FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 2879 14de 0027     		movs	r7, #0
 2880 14e0 A368     		ldr	r3, [r4, #8]
 2881 14e2 FFF70ABA 		b	.L763
 2882              	.L658:
 2883 14e6 2046     		mov	r0, r4
 2884 14e8 4821     		movs	r1, #72
 2885 14ea FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2886 14ee 0746     		mov	r7, r0
 2887 14f0 2046     		mov	r0, r4
 2888 14f2 002F     		cmp	r7, #0
 2889 14f4 01F09483 		beq	.L659
 2890 14f8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2891 14fc 0023     		movs	r3, #0
 2892 14fe 0728     		cmp	r0, #7
 2893 1500 0746     		mov	r7, r0
 2894 1502 8DF84830 		strb	r3, [sp, #72]
 2895 1506 43F29581 		bls	.L1502
 2896              	.L660:
 2897 150a A368     		ldr	r3, [r4, #8]
 2898 150c 0027     		movs	r7, #0
 2899 150e FFF7F4B9 		b	.L763
 2900              	.L1617:
 2901 1512 00BFAFF3 		.align	3
 2901      0080
 2902              	.L1616:
 2903 1518 00408F40 		.word	1083129856
 2904 151c 04010000 		.word	.LC19
 2905 1520 4C0C0000 		.word	.LC113
 2906 1524 D4030000 		.word	.LC47
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 52


 2907 1528 10010000 		.word	.LC20
 2908 152c B00E0000 		.word	.LC133
 2909 1530 00000000 		.word	.LANCHOR4
 2910 1534 008088C3 		.word	-1014464512
 2911 1538 00000000 		.word	_ZN6GCodes11axisLettersE
 2912 153c 8988883C 		.word	1015580809
 2913 1540 D8070000 		.word	.LC85
 2914 1544 00000000 		.word	reprap
 2915 1548 38110000 		.word	.LC147
 2916 154c FCA9F1D2 		.word	-755914244
 2917 1550 4D62503F 		.word	1062232653
 2918              	.L664:
 2919 1554 2046     		mov	r0, r4
 2920 1556 5021     		movs	r1, #80
 2921 1558 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2922 155c 0028     		cmp	r0, #0
 2923 155e 01F0FF83 		beq	.L979
 2924 1562 2046     		mov	r0, r4
 2925 1564 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2926 1568 0146     		mov	r1, r0
 2927 156a 8046     		mov	r8, r0
 2928 156c 2868     		ldr	r0, [r5]
 2929 156e FFF7FEFF 		bl	_ZN8Platform28SetExtrusionAncilliaryPwmPinEi
 2930 1572 0746     		mov	r7, r0
 2931 1574 0028     		cmp	r0, #0
 2932 1576 02F0E887 		beq	.L1503
 2933 157a 0127     		movs	r7, #1
 2934              	.L665:
 2935 157c 2046     		mov	r0, r4
 2936 157e 4621     		movs	r1, #70
 2937 1580 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2938 1584 0028     		cmp	r0, #0
 2939 1586 42F0CA84 		bne	.L1504
 2940              	.L666:
 2941 158a 2046     		mov	r0, r4
 2942 158c 5321     		movs	r1, #83
 2943 158e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2944 1592 0028     		cmp	r0, #0
 2945 1594 42F0B884 		bne	.L1505
 2946 1598 002F     		cmp	r7, #0
 2947 159a 02F09984 		beq	.L668
 2948 159e 0746     		mov	r7, r0
 2949 15a0 A368     		ldr	r3, [r4, #8]
 2950 15a2 FFF7AAB9 		b	.L763
 2951              	.L236:
 2952 15a6 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2953 15a8 D007     		lsls	r0, r2, #31
 2954 15aa 01F14C84 		bmi	.L927
 2955 15ae 0022     		movs	r2, #0
 2956 15b0 05F5E873 		add	r3, r5, #464
 2957 15b4 0727     		movs	r7, #7
 2958              	.L238:
 2959 15b6 013F     		subs	r7, r7, #1
 2960 15b8 43F8042B 		str	r2, [r3], #4	@ float
 2961 15bc FBD1     		bne	.L238
 2962 15be A368     		ldr	r3, [r4, #8]
 2963 15c0 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 53


 2964 15c2 42F00102 		orr	r2, r2, #1
 2965 15c6 5A74     		strb	r2, [r3, #17]
 2966 15c8 A368     		ldr	r3, [r4, #8]
 2967 15ca FFF796B9 		b	.L763
 2968              	.L232:
 2969 15ce 2846     		mov	r0, r5
 2970 15d0 2146     		mov	r1, r4
 2971 15d2 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2972 15d6 0028     		cmp	r0, #0
 2973 15d8 3FF4C0AA 		beq	.L554
 2974 15dc 2868     		ldr	r0, [r5]
 2975 15de 0021     		movs	r1, #0
 2976 15e0 FFF7FEFF 		bl	_ZN8Platform11SetAtxPowerEb
 2977 15e4 0027     		movs	r7, #0
 2978 15e6 A368     		ldr	r3, [r4, #8]
 2979 15e8 FFF787B9 		b	.L763
 2980              	.L233:
 2981 15ec 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2982 15ee 12F00107 		ands	r7, r2, #1
 2983 15f2 3FF482A9 		beq	.L763
 2984 15f6 0022     		movs	r2, #0
 2985 15f8 05F5E873 		add	r3, r5, #464
 2986 15fc 0727     		movs	r7, #7
 2987              	.L235:
 2988 15fe 013F     		subs	r7, r7, #1
 2989 1600 43F8042B 		str	r2, [r3], #4	@ float
 2990 1604 FBD1     		bne	.L235
 2991 1606 A368     		ldr	r3, [r4, #8]
 2992 1608 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2993 160a 67F30002 		bfi	r2, r7, #0, #1
 2994 160e 5A74     		strb	r2, [r3, #17]
 2995 1610 A368     		ldr	r3, [r4, #8]
 2996 1612 FFF772B9 		b	.L763
 2997              	.L141:
 2998 1616 2846     		mov	r0, r5
 2999 1618 2146     		mov	r1, r4
 3000 161a FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3001 161e 0028     		cmp	r0, #0
 3002 1620 3FF49CAA 		beq	.L554
 3003 1624 D5F8B031 		ldr	r3, [r5, #432]
 3004 1628 002B     		cmp	r3, #0
 3005 162a 01F08E82 		beq	.L915
 3006 162e 4FF00008 		mov	r8, #0
 3007 1632 BB4F     		ldr	r7, .L1618+8
 3008 1634 C146     		mov	r9, r8
 3009 1636 4FF0010A 		mov	r10, #1
 3010 163a 06E0     		b	.L145
 3011              	.L144:
 3012 163c D5F8B031 		ldr	r3, [r5, #432]
 3013 1640 08F10108 		add	r8, r8, #1
 3014 1644 4345     		cmp	r3, r8
 3015 1646 41F28182 		bls	.L143
 3016              	.L145:
 3017 164a 2046     		mov	r0, r4
 3018 164c 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 3019 1650 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3020 1654 0028     		cmp	r0, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 54


 3021 1656 F1D0     		beq	.L144
 3022 1658 D5F89832 		ldr	r3, [r5, #664]
 3023 165c 2868     		ldr	r0, [r5]
 3024 165e 0AFA08F2 		lsl	r2, r10, r8
 3025 1662 23EA0203 		bic	r3, r3, r2
 3026 1666 C5F89832 		str	r3, [r5, #664]
 3027 166a 4146     		mov	r1, r8
 3028 166c FFF7FEFF 		bl	_ZN8Platform12DisableDriveEj
 3029 1670 4FF00109 		mov	r9, #1
 3030 1674 E2E7     		b	.L144
 3031              	.L190:
 3032 1676 2A6C     		ldr	r2, [r5, #64]
 3033 1678 1268     		ldr	r2, [r2]
 3034 167a A242     		cmp	r2, r4
 3035 167c 18BF     		it	ne
 3036 167e 0027     		movne	r7, #0
 3037 1680 7FF43BA9 		bne	.L763
 3038 1684 2846     		mov	r0, r5
 3039 1686 2146     		mov	r1, r4
 3040 1688 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 3041 168c 0028     		cmp	r0, #0
 3042 168e 3FF465AA 		beq	.L554
 3043 1692 2846     		mov	r0, r5
 3044 1694 2146     		mov	r1, r4
 3045 1696 FFF7FEFF 		bl	_ZN6GCodes7DoPauseER11GCodeBuffer
 3046 169a 0027     		movs	r7, #0
 3047 169c A368     		ldr	r3, [r4, #8]
 3048 169e FFF72CB9 		b	.L763
 3049              	.L208:
 3050 16a2 2846     		mov	r0, r5
 3051 16a4 2146     		mov	r1, r4
 3052 16a6 FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 3053 16aa 0746     		mov	r7, r0
 3054 16ac 0028     		cmp	r0, #0
 3055 16ae 3FF455AA 		beq	.L554
 3056 16b2 0121     		movs	r1, #1
 3057 16b4 2046     		mov	r0, r4
 3058 16b6 FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringEb
 3059 16ba 9A4B     		ldr	r3, .L1618+12
 3060 16bc 0146     		mov	r1, r0
 3061 16be 1AAA     		add	r2, sp, #104
 3062 16c0 D869     		ldr	r0, [r3, #28]
 3063 16c2 FFF7FEFF 		bl	_ZN12PrintMonitor19GetFileInfoResponseEPKcRP12OutputBuffer
 3064 16c6 0028     		cmp	r0, #0
 3065 16c8 3FF41DAE 		beq	.L210
 3066 16cc 1A98     		ldr	r0, [sp, #104]
 3067 16ce 0A21     		movs	r1, #10
 3068 16d0 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 3069 16d4 2846     		mov	r0, r5
 3070 16d6 2146     		mov	r1, r4
 3071 16d8 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 3072 16dc 2846     		mov	r0, r5
 3073 16de 2146     		mov	r1, r4
 3074 16e0 1A9B     		ldr	r3, [sp, #104]
 3075 16e2 0022     		movs	r2, #0
 3076 16e4 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer
 3077 16e8 FFF7C8B8 		b	.L1420
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 55


 3078              	.L211:
 3079 16ec 2046     		mov	r0, r4
 3080 16ee 5321     		movs	r1, #83
 3081 16f0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3082 16f4 0746     		mov	r7, r0
 3083 16f6 0028     		cmp	r0, #0
 3084 16f8 42F08C82 		bne	.L1506
 3085 16fc 894B     		ldr	r3, .L1618+12
 3086 16fe 95F80083 		ldrb	r8, [r5, #768]	@ zero_extendqisi2
 3087 1702 9968     		ldr	r1, [r3, #8]
 3088 1704 884A     		ldr	r2, .L1618+16
 3089 1706 894B     		ldr	r3, .L1618+20
 3090 1708 886A     		ldr	r0, [r1, #40]	@ float
 3091 170a B8F1000F 		cmp	r8, #0
 3092 170e 0CBF     		ite	eq
 3093 1710 9046     		moveq	r8, r2
 3094 1712 9846     		movne	r8, r3
 3095 1714 FFF7FEFF 		bl	__aeabi_f2d
 3096 1718 CDE90001 		strd	r0, [sp]
 3097 171c D5F8FC02 		ldr	r0, [r5, #764]	@ float
 3098 1720 FFF7FEFF 		bl	__aeabi_f2d
 3099 1724 4246     		mov	r2, r8
 3100 1726 CDE90201 		strd	r0, [sp, #8]
 3101 172a 3046     		mov	r0, r6
 3102 172c 8049     		ldr	r1, .L1618+24
 3103 172e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 3104 1732 A368     		ldr	r3, [r4, #8]
 3105 1734 FFF7E1B8 		b	.L763
 3106              	.L219:
 3107 1738 2846     		mov	r0, r5
 3108 173a 2146     		mov	r1, r4
 3109 173c FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 3110 1740 0028     		cmp	r0, #0
 3111 1742 3FF40BAA 		beq	.L554
 3112 1746 D5F86433 		ldr	r3, [r5, #868]
 3113 174a 002B     		cmp	r3, #0
 3114 174c 03F0DA81 		beq	.L1507
 3115 1750 2846     		mov	r0, r5
 3116 1752 3146     		mov	r1, r6
 3117 1754 FFF7FEFF 		bl	_ZN6GCodes11AdvanceHashER9StringRef
 3118 1758 0027     		movs	r7, #0
 3119 175a 8146     		mov	r9, r0
 3120 175c C3E5     		b	.L175
 3121              	.L573:
 3122 175e 2046     		mov	r0, r4
 3123 1760 5021     		movs	r1, #80
 3124 1762 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3125 1766 0746     		mov	r7, r0
 3126 1768 0028     		cmp	r0, #0
 3127 176a 01F00784 		beq	.L574
 3128 176e 2846     		mov	r0, r5
 3129 1770 2146     		mov	r1, r4
 3130 1772 40F22A22 		movw	r2, #554
 3131 1776 FFF7FEFF 		bl	_ZN6GCodes18SetEthernetAddressER11GCodeBufferi
 3132 177a 0027     		movs	r7, #0
 3133 177c A368     		ldr	r3, [r4, #8]
 3134 177e FFF7BCB8 		b	.L763
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 56


 3135              	.L178:
 3136 1782 2B6C     		ldr	r3, [r5, #64]
 3137 1784 1868     		ldr	r0, [r3]
 3138 1786 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 3139 178a 8368     		ldr	r3, [r0, #8]
 3140 178c 002B     		cmp	r3, #0
 3141 178e 01F0CC84 		beq	.L179
 3142 1792 3046     		mov	r0, r6
 3143 1794 6749     		ldr	r1, .L1618+28
 3144 1796 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3145 179a 0127     		movs	r7, #1
 3146 179c A368     		ldr	r3, [r4, #8]
 3147 179e FFF7ACB8 		b	.L763
 3148              	.L532:
 3149 17a2 2846     		mov	r0, r5
 3150 17a4 2146     		mov	r1, r4
 3151 17a6 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3152 17aa 0028     		cmp	r0, #0
 3153 17ac 3FF4D6A9 		beq	.L554
 3154 17b0 2846     		mov	r0, r5
 3155 17b2 2146     		mov	r1, r4
 3156 17b4 3246     		mov	r2, r6
 3157 17b6 FFF7FEFF 		bl	_ZNK6GCodes13LoadHeightMapER11GCodeBufferR9StringRef
 3158 17ba A368     		ldr	r3, [r4, #8]
 3159 17bc 0746     		mov	r7, r0
 3160 17be FFF79CB8 		b	.L763
 3161              	.L372:
 3162 17c2 DFF860A1 		ldr	r10, .L1618+12
 3163 17c6 DAF80C20 		ldr	r2, [r10, #12]
 3164 17ca B9F1BF0F 		cmp	r9, #191
 3165 17ce 0CBF     		ite	eq
 3166 17d0 92F82F70 		ldrbeq	r7, [r2, #47]	@ zero_extendqisi2
 3167 17d4 92F82E70 		ldrbne	r7, [r2, #46]	@ zero_extendqisi2
 3168 17d8 7FB2     		sxtb	r7, r7
 3169 17da 002F     		cmp	r7, #0
 3170 17dc C1F2EC83 		blt	.L937
 3171 17e0 2046     		mov	r0, r4
 3172 17e2 5221     		movs	r1, #82
 3173 17e4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3174 17e8 8046     		mov	r8, r0
 3175 17ea 2046     		mov	r0, r4
 3176 17ec B8F1000F 		cmp	r8, #0
 3177 17f0 02F08E82 		beq	.L375
 3178 17f4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3179 17f8 4FF00108 		mov	r8, #1
 3180              	.L376:
 3181 17fc 0246     		mov	r2, r0	@ float
 3182 17fe 3946     		mov	r1, r7
 3183 1800 DAF80C00 		ldr	r0, [r10, #12]
 3184 1804 DFF81C91 		ldr	r9, .L1618+12
 3185 1808 FFF7FEFF 		bl	_ZN4Heat20SetActiveTemperatureEaf
 3186 180c DAF80C00 		ldr	r0, [r10, #12]
 3187 1810 3946     		mov	r1, r7
 3188 1812 FFF7FEFF 		bl	_ZN4Heat8ActivateEa
 3189 1816 95F8D633 		ldrb	r3, [r5, #982]	@ zero_extendqisi2
 3190 181a 002B     		cmp	r3, #0
 3191 181c 03F08781 		beq	.L1508
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 57


 3192              	.L378:
 3193 1820 0027     		movs	r7, #0
 3194 1822 85F8D573 		strb	r7, [r5, #981]
 3195 1826 85F8D673 		strb	r7, [r5, #982]
 3196 182a A368     		ldr	r3, [r4, #8]
 3197 182c FFF765B8 		b	.L763
 3198              	.L869:
 3199 1830 D5F8B031 		ldr	r3, [r5, #432]
 3200 1834 002B     		cmp	r3, #0
 3201 1836 02F0BF80 		beq	.L879
 3202 183a 4FF00008 		mov	r8, #0
 3203 183e C146     		mov	r9, r8
 3204 1840 374F     		ldr	r7, .L1618+8
 3205 1842 B246     		mov	r10, r6
 3206 1844 06E0     		b	.L880
 3207              	.L380:
 3208 1846 D5F8B031 		ldr	r3, [r5, #432]
 3209 184a 08F10108 		add	r8, r8, #1
 3210 184e 4345     		cmp	r3, r8
 3211 1850 41F23C80 		bls	.L1509
 3212              	.L880:
 3213 1854 2046     		mov	r0, r4
 3214 1856 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 3215 185a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3216 185e 0028     		cmp	r0, #0
 3217 1860 F1D0     		beq	.L380
 3218 1862 2046     		mov	r0, r4
 3219 1864 2E68     		ldr	r6, [r5]
 3220 1866 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3221 186a D5ED9B7A 		flds	s15, [r5, #620]
 3222 186e 07EE100A 		fmsr	s14, r0
 3223 1872 67EE277A 		fmuls	s15, s14, s15
 3224 1876 06EB8803 		add	r3, r6, r8, lsl #2
 3225 187a C3ED467A 		fsts	s15, [r3, #280]
 3226 187e 4FF00109 		mov	r9, #1
 3227 1882 E0E7     		b	.L380
 3228              	.L443:
 3229 1884 2046     		mov	r0, r4
 3230 1886 5321     		movs	r1, #83
 3231 1888 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3232 188c 0746     		mov	r7, r0
 3233 188e 0028     		cmp	r0, #0
 3234 1890 01F05D83 		beq	.L444
 3235 1894 2046     		mov	r0, r4
 3236 1896 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3237 189a FFF7FEFF 		bl	__aeabi_f2d
 3238 189e 1EA3     		adr	r3, .L1618
 3239 18a0 D3E90023 		ldrd	r2, [r3]
 3240 18a4 FFF7FEFF 		bl	__aeabi_dmul
 3241 18a8 4FF00052 		mov	r2, #536870912
 3242 18ac 224B     		ldr	r3, .L1618+32
 3243 18ae FFF7FEFF 		bl	__aeabi_dmul
 3244 18b2 FFF7FEFF 		bl	__aeabi_d2f
 3245 18b6 06EE900A 		fmsr	s13, r0
 3246 18ba F5EEC06A 		fcmpezs	s13
 3247 18be F1EE10FA 		fmstat
 3248 18c2 43F32F83 		ble	.L1432
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 58


 3249 18c6 95EDB07A 		flds	s14, [r5, #704]
 3250 18ca 86EE877A 		fdivs	s14, s13, s14
 3251 18ce 0022     		movs	r2, #0
 3252              	.L452:
 3253 18d0 AB18     		adds	r3, r5, r2
 3254 18d2 DB69     		ldr	r3, [r3, #28]
 3255 18d4 9B68     		ldr	r3, [r3, #8]
 3256 18d6 43B1     		cbz	r3, .L450
 3257              	.L451:
 3258 18d8 D3ED017A 		flds	s15, [r3, #4]
 3259 18dc 67EE877A 		fmuls	s15, s15, s14
 3260 18e0 C3ED017A 		fsts	s15, [r3, #4]
 3261 18e4 1B68     		ldr	r3, [r3]
 3262 18e6 002B     		cmp	r3, #0
 3263 18e8 F6D1     		bne	.L451
 3264              	.L450:
 3265 18ea 0432     		adds	r2, r2, #4
 3266 18ec 1C2A     		cmp	r2, #28
 3267 18ee EFD1     		bne	.L452
 3268 18f0 D5F8FC30 		ldr	r3, [r5, #252]
 3269 18f4 43B1     		cbz	r3, .L453
 3270 18f6 95F8F730 		ldrb	r3, [r5, #247]	@ zero_extendqisi2
 3271 18fa 2BB9     		cbnz	r3, .L453
 3272 18fc D5ED397A 		flds	s15, [r5, #228]
 3273 1900 27EE877A 		fmuls	s14, s15, s14
 3274 1904 85ED397A 		fsts	s14, [r5, #228]
 3275              	.L453:
 3276 1908 C5EDB06A 		fsts	s13, [r5, #704]
 3277 190c A368     		ldr	r3, [r4, #8]
 3278 190e 0027     		movs	r7, #0
 3279 1910 FEF7F3BF 		b	.L763
 3280              	.L1619:
 3281 1914 AFF30080 		.align	3
 3282              	.L1618:
 3283 1918 7B14AE47 		.word	1202590843
 3284 191c E17A843F 		.word	1065646817
 3285 1920 00000000 		.word	_ZN6GCodes11axisLettersE
 3286 1924 00000000 		.word	reprap
 3287 1928 98000000 		.word	.LC6
 3288 192c 94000000 		.word	.LC5
 3289 1930 30040000 		.word	.LC50
 3290 1934 18020000 		.word	.LC37
 3291 1938 1111913F 		.word	1066471697
 3292              	.L454:
 3293 193c 0DF1680A 		add	r10, sp, #104
 3294 1940 0027     		movs	r7, #0
 3295 1942 13AB     		add	r3, sp, #76
 3296 1944 5246     		mov	r2, r10
 3297 1946 2046     		mov	r0, r4
 3298 1948 4421     		movs	r1, #68
 3299 194a CAF80070 		str	r7, [r10]
 3300 194e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 3301 1952 DAF80030 		ldr	r3, [r10]
 3302 1956 BB42     		cmp	r3, r7
 3303 1958 04DB     		blt	.L456
 3304 195a D5F8B421 		ldr	r2, [r5, #436]
 3305 195e 9342     		cmp	r3, r2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 59


 3306 1960 C2F23183 		blt	.L1510
 3307              	.L456:
 3308 1964 A368     		ldr	r3, [r4, #8]
 3309 1966 0027     		movs	r7, #0
 3310 1968 FEF7C7BF 		b	.L763
 3311              	.L845:
 3312 196c 2846     		mov	r0, r5
 3313 196e 2146     		mov	r1, r4
 3314 1970 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3315 1974 0028     		cmp	r0, #0
 3316 1976 3FF4F1A8 		beq	.L554
 3317 197a B64B     		ldr	r3, .L1620
 3318 197c D868     		ldr	r0, [r3, #12]
 3319 197e FFF7FEFF 		bl	_ZN4Heat12SwitchOffAllEv
 3320 1982 2846     		mov	r0, r5
 3321 1984 FFF7FEFF 		bl	_ZN6GCodes13DisableDrivesEv
 3322 1988 95F85C33 		ldrb	r3, [r5, #860]	@ zero_extendqisi2
 3323 198c 002B     		cmp	r3, #0
 3324 198e 42F0A783 		bne	.L846
 3325 1992 2046     		mov	r0, r4
 3326 1994 5321     		movs	r1, #83
 3327 1996 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3328 199a 0028     		cmp	r0, #0
 3329 199c 43F07C82 		bne	.L1511
 3330 19a0 0120     		movs	r0, #1
 3331 19a2 85F85C03 		strb	r0, [r5, #860]
 3332              	.L856:
 3333 19a6 FFF7FEFF 		bl	_ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEh
 3334 19aa 0028     		cmp	r0, #0
 3335 19ac 43F0DC84 		bne	.L857
 3336 19b0 85F85C03 		strb	r0, [r5, #860]
 3337 19b4 0746     		mov	r7, r0
 3338 19b6 A368     		ldr	r3, [r4, #8]
 3339 19b8 FEF79FBF 		b	.L763
 3340              	.L259:
 3341 19bc 2046     		mov	r0, r4
 3342 19be 5021     		movs	r1, #80
 3343 19c0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3344 19c4 0028     		cmp	r0, #0
 3345 19c6 3FF415AA 		beq	.L260
 3346 19ca 2046     		mov	r0, r4
 3347 19cc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 3348 19d0 0027     		movs	r7, #0
 3349 19d2 0246     		mov	r2, r0
 3350 19d4 0123     		movs	r3, #1
 3351 19d6 0097     		str	r7, [sp]
 3352 19d8 2846     		mov	r0, r5
 3353 19da 2146     		mov	r1, r4
 3354 19dc FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 3355 19e0 A368     		ldr	r3, [r4, #8]
 3356 19e2 FEF78ABF 		b	.L763
 3357              	.L239:
 3358 19e6 9B48     		ldr	r0, .L1620
 3359 19e8 8768     		ldr	r7, [r0, #8]
 3360 19ea FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 3361 19ee 0DF1680A 		add	r10, sp, #104
 3362 19f2 0346     		mov	r3, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 60


 3363 19f4 5146     		mov	r1, r10
 3364 19f6 3846     		mov	r0, r7
 3365 19f8 0022     		movs	r2, #0
 3366 19fa FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhm
 3367 19fe D5F8B031 		ldr	r3, [r5, #432]
 3368 1a02 002B     		cmp	r3, #0
 3369 1a04 01F0C083 		beq	.L240
 3370 1a08 4FF00008 		mov	r8, #0
 3371 1a0c 924F     		ldr	r7, .L1620+4
 3372 1a0e C346     		mov	fp, r8
 3373 1a10 B146     		mov	r9, r6
 3374 1a12 06E0     		b	.L244
 3375              	.L241:
 3376 1a14 D5F8B031 		ldr	r3, [r5, #432]
 3377 1a18 08F10108 		add	r8, r8, #1
 3378 1a1c 4345     		cmp	r3, r8
 3379 1a1e 41F20680 		bls	.L1512
 3380              	.L244:
 3381 1a22 2046     		mov	r0, r4
 3382 1a24 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 3383 1a28 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3384 1a2c 0028     		cmp	r0, #0
 3385 1a2e F1D0     		beq	.L241
 3386 1a30 2846     		mov	r0, r5
 3387 1a32 2146     		mov	r1, r4
 3388 1a34 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3389 1a38 0028     		cmp	r0, #0
 3390 1a3a 3FF48FA8 		beq	.L554
 3391 1a3e 2E68     		ldr	r6, [r5]
 3392 1a40 2046     		mov	r0, r4
 3393 1a42 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3394 1a46 06EB8806 		add	r6, r6, r8, lsl #2
 3395 1a4a 4FF0010B 		mov	fp, #1
 3396 1a4e C6F84801 		str	r0, [r6, #328]	@ float
 3397 1a52 DFE7     		b	.L241
 3398              	.L263:
 3399 1a54 2846     		mov	r0, r5
 3400 1a56 2146     		mov	r1, r4
 3401 1a58 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 3402 1a5c 0028     		cmp	r0, #0
 3403 1a5e 3FF47DA8 		beq	.L554
 3404 1a62 2846     		mov	r0, r5
 3405 1a64 2146     		mov	r1, r4
 3406 1a66 0122     		movs	r2, #1
 3407 1a68 FFF7FEFF 		bl	_ZN6GCodes15RetractFilamentER11GCodeBufferb
 3408 1a6c 8146     		mov	r9, r0
 3409              	.L1460:
 3410 1a6e 0027     		movs	r7, #0
 3411 1a70 39E4     		b	.L175
 3412              	.L264:
 3413 1a72 2046     		mov	r0, r4
 3414 1a74 5321     		movs	r1, #83
 3415 1a76 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3416 1a7a 0028     		cmp	r0, #0
 3417 1a7c 42F08580 		bne	.L265
 3418 1a80 0746     		mov	r7, r0
 3419 1a82 A368     		ldr	r3, [r4, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 61


 3420 1a84 FEF739BF 		b	.L763
 3421              	.L191:
 3422 1a88 95F8A170 		ldrb	r7, [r5, #161]	@ zero_extendqisi2
 3423 1a8c 002F     		cmp	r7, #0
 3424 1a8e 42F09980 		bne	.L1513
 3425 1a92 704B     		ldr	r3, .L1620
 3426 1a94 DB69     		ldr	r3, [r3, #28]
 3427 1a96 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 3428 1a98 002B     		cmp	r3, #0
 3429 1a9a 41F0F682 		bne	.L193
 3430 1a9e 3046     		mov	r0, r6
 3431 1aa0 6E49     		ldr	r1, .L1620+8
 3432 1aa2 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3433 1aa6 0127     		movs	r7, #1
 3434 1aa8 A368     		ldr	r3, [r4, #8]
 3435 1aaa FEF726BF 		b	.L763
 3436              	.L261:
 3437 1aae 2846     		mov	r0, r5
 3438 1ab0 2146     		mov	r1, r4
 3439 1ab2 FFF7FEFF 		bl	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer
 3440 1ab6 0027     		movs	r7, #0
 3441 1ab8 A368     		ldr	r3, [r4, #8]
 3442 1aba FEF71EBF 		b	.L763
 3443              	.L186:
 3444 1abe 2846     		mov	r0, r5
 3445 1ac0 2146     		mov	r1, r4
 3446 1ac2 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3447 1ac6 0028     		cmp	r0, #0
 3448 1ac8 3FF448A8 		beq	.L554
 3449 1acc 95F8A170 		ldrb	r7, [r5, #161]	@ zero_extendqisi2
 3450 1ad0 002F     		cmp	r7, #0
 3451 1ad2 42F09C84 		bne	.L1514
 3452 1ad6 D5F87432 		ldr	r3, [r5, #628]
 3453 1ada 002B     		cmp	r3, #0
 3454 1adc 03F02A82 		beq	.L1515
 3455 1ae0 2B6C     		ldr	r3, [r5, #64]
 3456 1ae2 1868     		ldr	r0, [r3]
 3457 1ae4 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 3458 1ae8 8046     		mov	r8, r0
 3459 1aea 8068     		ldr	r0, [r0, #8]
 3460 1aec 18B1     		cbz	r0, .L189
 3461 1aee FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 3462 1af2 C8F80870 		str	r7, [r8, #8]
 3463              	.L189:
 3464 1af6 D5F87432 		ldr	r3, [r5, #628]
 3465 1afa 564A     		ldr	r2, .L1620
 3466 1afc C8F80830 		str	r3, [r8, #8]
 3467 1b00 0027     		movs	r7, #0
 3468 1b02 D069     		ldr	r0, [r2, #28]
 3469 1b04 C5F87472 		str	r7, [r5, #628]
 3470 1b08 FFF7FEFF 		bl	_ZN12PrintMonitor12StartedPrintEv
 3471 1b0c A368     		ldr	r3, [r4, #8]
 3472 1b0e FEF7F4BE 		b	.L763
 3473              	.L194:
 3474 1b12 2046     		mov	r0, r4
 3475 1b14 5321     		movs	r1, #83
 3476 1b16 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 62


 3477 1b1a 0028     		cmp	r0, #0
 3478 1b1c 01F0A181 		beq	.L195
 3479 1b20 2046     		mov	r0, r4
 3480 1b22 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3481 1b26 2B6C     		ldr	r3, [r5, #64]
 3482 1b28 8046     		mov	r8, r0
 3483 1b2a 1868     		ldr	r0, [r3]
 3484 1b2c FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 3485 1b30 8768     		ldr	r7, [r0, #8]
 3486 1b32 002F     		cmp	r7, #0
 3487 1b34 02F0ED84 		beq	.L196
 3488 1b38 2B6C     		ldr	r3, [r5, #64]
 3489 1b3a 1868     		ldr	r0, [r3]
 3490 1b3c FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 3491 1b40 4146     		mov	r1, r8
 3492 1b42 8068     		ldr	r0, [r0, #8]
 3493 1b44 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 3494 1b48 0028     		cmp	r0, #0
 3495 1b4a 02F0D387 		beq	.L197
 3496 1b4e A368     		ldr	r3, [r4, #8]
 3497 1b50 0027     		movs	r7, #0
 3498 1b52 FEF7D2BE 		b	.L763
 3499              	.L675:
 3500 1b56 2046     		mov	r0, r4
 3501 1b58 5321     		movs	r1, #83
 3502 1b5a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3503 1b5e 0028     		cmp	r0, #0
 3504 1b60 41F0C484 		bne	.L1516
 3505 1b64 4FF0010A 		mov	r10, #1
 3506              	.L676:
 3507 1b68 D5F8B031 		ldr	r3, [r5, #432]
 3508 1b6c 002B     		cmp	r3, #0
 3509 1b6e 01F08584 		beq	.L683
 3510 1b72 4FF00008 		mov	r8, #0
 3511 1b76 384F     		ldr	r7, .L1620+4
 3512 1b78 C146     		mov	r9, r8
 3513 1b7a 06E0     		b	.L682
 3514              	.L680:
 3515 1b7c D5F8B031 		ldr	r3, [r5, #432]
 3516 1b80 08F10108 		add	r8, r8, #1
 3517 1b84 4345     		cmp	r3, r8
 3518 1b86 40F2B186 		bls	.L1517
 3519              	.L682:
 3520 1b8a 2046     		mov	r0, r4
 3521 1b8c 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 3522 1b90 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3523 1b94 0028     		cmp	r0, #0
 3524 1b96 F1D0     		beq	.L680
 3525 1b98 2046     		mov	r0, r4
 3526 1b9a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3527 1b9e 0328     		cmp	r0, #3
 3528 1ba0 ECD8     		bhi	.L680
 3529 1ba2 2B68     		ldr	r3, [r5]
 3530 1ba4 08F5AA71 		add	r1, r8, #340
 3531 1ba8 03EB0802 		add	r2, r3, r8
 3532 1bac 43F82100 		str	r0, [r3, r1, lsl #2]
 3533 1bb0 4FF00109 		mov	r9, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 63


 3534 1bb4 82F868A5 		strb	r10, [r2, #1384]
 3535 1bb8 E0E7     		b	.L680
 3536              	.L476:
 3537 1bba 2046     		mov	r0, r4
 3538 1bbc 5321     		movs	r1, #83
 3539 1bbe FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3540 1bc2 0746     		mov	r7, r0
 3541 1bc4 0028     		cmp	r0, #0
 3542 1bc6 01F08C80 		beq	.L477
 3543 1bca 2046     		mov	r0, r4
 3544 1bcc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3545 1bd0 07EE900A 		fmsr	s15, r0
 3546 1bd4 B7EE007A 		fconsts	s14, #112
 3547 1bd8 F0EEE76A 		fabss	s13, s15
 3548 1bdc F4EEC76A 		fcmpes	s13, s14
 3549 1be0 F1EE10FA 		fmstat
 3550 1be4 42F2ED84 		bls	.L478
 3551 1be8 A368     		ldr	r3, [r4, #8]
 3552 1bea 0027     		movs	r7, #0
 3553 1bec FEF785BE 		b	.L763
 3554              	.L479:
 3555 1bf0 2046     		mov	r0, r4
 3556 1bf2 5021     		movs	r1, #80
 3557 1bf4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3558 1bf8 0028     		cmp	r0, #0
 3559 1bfa 41F0A584 		bne	.L1518
 3560 1bfe 4FF47A77 		mov	r7, #1000
 3561              	.L480:
 3562 1c02 2046     		mov	r0, r4
 3563 1c04 5321     		movs	r1, #83
 3564 1c06 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3565 1c0a 0028     		cmp	r0, #0
 3566 1c0c 41F09684 		bne	.L1519
 3567 1c10 41F2F811 		movw	r1, #4600
 3568              	.L481:
 3569 1c14 3A46     		mov	r2, r7
 3570 1c16 0F48     		ldr	r0, .L1620
 3571 1c18 FFF7FEFF 		bl	_ZN6RepRap4BeepEii
 3572 1c1c 0027     		movs	r7, #0
 3573 1c1e A368     		ldr	r3, [r4, #8]
 3574 1c20 FEF76BBE 		b	.L763
 3575              	.L482:
 3576 1c24 2046     		mov	r0, r4
 3577 1c26 5021     		movs	r1, #80
 3578 1c28 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3579 1c2c 094B     		ldr	r3, .L1620
 3580 1c2e 0746     		mov	r7, r0
 3581 1c30 0028     		cmp	r0, #0
 3582 1c32 41F05D87 		bne	.L1520
 3583 1c36 D968     		ldr	r1, [r3, #12]
 3584 1c38 094A     		ldr	r2, .L1620+12
 3585 1c3a 91F82D00 		ldrb	r0, [r1, #45]	@ zero_extendqisi2
 3586 1c3e 094B     		ldr	r3, .L1620+16
 3587 1c40 0949     		ldr	r1, .L1620+20
 3588 1c42 0028     		cmp	r0, #0
 3589 1c44 18BF     		it	ne
 3590 1c46 1A46     		movne	r2, r3
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 64


 3591 1c48 3046     		mov	r0, r6
 3592 1c4a FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 3593 1c4e A368     		ldr	r3, [r4, #8]
 3594 1c50 FEF753BE 		b	.L763
 3595              	.L1621:
 3596              		.align	2
 3597              	.L1620:
 3598 1c54 00000000 		.word	reprap
 3599 1c58 00000000 		.word	_ZN6GCodes11axisLettersE
 3600 1c5c C0020000 		.word	.LC41
 3601 1c60 B0000000 		.word	.LC11
 3602 1c64 A8000000 		.word	.LC10
 3603 1c68 68090000 		.word	.LC94
 3604              	.L485:
 3605 1c6c 2046     		mov	r0, r4
 3606 1c6e 4821     		movs	r1, #72
 3607 1c70 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3608 1c74 0746     		mov	r7, r0
 3609 1c76 0028     		cmp	r0, #0
 3610 1c78 01F0FB80 		beq	.L486
 3611 1c7c 2046     		mov	r0, r4
 3612 1c7e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3613 1c82 5321     		movs	r1, #83
 3614 1c84 8046     		mov	r8, r0
 3615 1c86 2046     		mov	r0, r4
 3616 1c88 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3617 1c8c 0028     		cmp	r0, #0
 3618 1c8e 42F07584 		bne	.L1521
 3619 1c92 B74B     		ldr	r3, .L1622
 3620 1c94 DB68     		ldr	r3, [r3, #12]
 3621 1c96 93F92E20 		ldrsb	r2, [r3, #46]
 3622 1c9a 4245     		cmp	r2, r8
 3623 1c9c 02F08E87 		beq	.L957
 3624 1ca0 93F92F30 		ldrsb	r3, [r3, #47]
 3625 1ca4 DFEDB38A 		flds	s17, .L1622+4
 3626 1ca8 DFEDB37A 		flds	s15, .L1622+8
 3627 1cac 4345     		cmp	r3, r8
 3628 1cae 08BF     		it	eq
 3629 1cb0 F0EE678A 		fcpyseq	s17, s15
 3630              	.L488:
 3631 1cb4 2046     		mov	r0, r4
 3632 1cb6 5021     		movs	r1, #80
 3633 1cb8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3634 1cbc 0028     		cmp	r0, #0
 3635 1cbe 42F06484 		bne	.L1522
 3636 1cc2 B7EE008A 		fconsts	s16, #112
 3637              	.L489:
 3638 1cc6 B8F1070F 		cmp	r8, #7
 3639 1cca 42F2AF80 		bls	.L490
 3640 1cce 3046     		mov	r0, r6
 3641 1cd0 AA49     		ldr	r1, .L1622+12
 3642 1cd2 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3643 1cd6 0027     		movs	r7, #0
 3644 1cd8 A368     		ldr	r3, [r4, #8]
 3645 1cda FEF70EBE 		b	.L763
 3646              	.L616:
 3647 1cde 2846     		mov	r0, r5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 65


 3648 1ce0 2146     		mov	r1, r4
 3649 1ce2 3246     		mov	r2, r6
 3650 1ce4 FFF7FEFF 		bl	_ZN6GCodes10ManageToolER11GCodeBufferR9StringRef
 3651 1ce8 0027     		movs	r7, #0
 3652 1cea A368     		ldr	r3, [r4, #8]
 3653 1cec FEF705BE 		b	.L763
 3654              	.L613:
 3655 1cf0 9F4B     		ldr	r3, .L1622
 3656 1cf2 9868     		ldr	r0, [r3, #8]
 3657 1cf4 FFF7FEFF 		bl	_ZN4Move20SetIdentityTransformEv
 3658 1cf8 0027     		movs	r7, #0
 3659 1cfa A368     		ldr	r3, [r4, #8]
 3660 1cfc FEF7FDBD 		b	.L763
 3661              	.L614:
 3662 1d00 2046     		mov	r0, r4
 3663 1d02 5021     		movs	r1, #80
 3664 1d04 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3665 1d08 0028     		cmp	r0, #0
 3666 1d0a 3FF42BA8 		beq	.L564
 3667 1d0e 2046     		mov	r0, r4
 3668 1d10 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3669 1d14 0728     		cmp	r0, #7
 3670 1d16 02F28085 		bhi	.L615
 3671 1d1a 41B2     		sxtb	r1, r0
 3672 1d1c 9448     		ldr	r0, .L1622
 3673 1d1e FFF7FEFF 		bl	_ZN6RepRap21ClearTemperatureFaultEa
 3674 1d22 0027     		movs	r7, #0
 3675 1d24 A368     		ldr	r3, [r4, #8]
 3676 1d26 FEF7E8BD 		b	.L763
 3677              	.L551:
 3678 1d2a 0027     		movs	r7, #0
 3679 1d2c 0123     		movs	r3, #1
 3680 1d2e 0097     		str	r7, [sp]
 3681 1d30 2846     		mov	r0, r5
 3682 1d32 2146     		mov	r1, r4
 3683 1d34 924A     		ldr	r2, .L1622+16
 3684 1d36 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 3685 1d3a A368     		ldr	r3, [r4, #8]
 3686 1d3c FEF7DDBD 		b	.L763
 3687              	.L688:
 3688 1d40 2046     		mov	r0, r4
 3689 1d42 5021     		movs	r1, #80
 3690 1d44 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3691 1d48 0028     		cmp	r0, #0
 3692 1d4a 3FF40BA8 		beq	.L564
 3693 1d4e 2046     		mov	r0, r4
 3694 1d50 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3695 1d54 0128     		cmp	r0, #1
 3696 1d56 8046     		mov	r8, r0
 3697 1d58 3FF6B5A9 		bhi	.L674
 3698 1d5c 2046     		mov	r0, r4
 3699 1d5e 4221     		movs	r1, #66
 3700 1d60 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3701 1d64 0028     		cmp	r0, #0
 3702 1d66 43F03C84 		bne	.L1523
 3703 1d6a 0746     		mov	r7, r0
 3704              	.L689:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 66


 3705 1d6c 2046     		mov	r0, r4
 3706 1d6e 5321     		movs	r1, #83
 3707 1d70 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3708 1d74 0028     		cmp	r0, #0
 3709 1d76 43F01D84 		bne	.L1524
 3710 1d7a 002F     		cmp	r7, #0
 3711 1d7c 03F03D84 		beq	.L694
 3712 1d80 0746     		mov	r7, r0
 3713 1d82 A368     		ldr	r3, [r4, #8]
 3714 1d84 FEF7B9BD 		b	.L763
 3715              	.L571:
 3716 1d88 2046     		mov	r0, r4
 3717 1d8a 5021     		movs	r1, #80
 3718 1d8c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3719 1d90 0746     		mov	r7, r0
 3720 1d92 0028     		cmp	r0, #0
 3721 1d94 01F01E80 		beq	.L572
 3722 1d98 2846     		mov	r0, r5
 3723 1d9a 2146     		mov	r1, r4
 3724 1d9c 40F22922 		movw	r2, #553
 3725 1da0 FFF7FEFF 		bl	_ZN6GCodes18SetEthernetAddressER11GCodeBufferi
 3726 1da4 0027     		movs	r7, #0
 3727 1da6 A368     		ldr	r3, [r4, #8]
 3728 1da8 FEF7A7BD 		b	.L763
 3729              	.L205:
 3730 1dac 3046     		mov	r0, r6
 3731 1dae 7549     		ldr	r1, .L1622+20
 3732 1db0 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3733 1db4 0027     		movs	r7, #0
 3734 1db6 A368     		ldr	r3, [r4, #8]
 3735 1db8 FEF79FBD 		b	.L763
 3736              	.L871:
 3737 1dbc D5F8B031 		ldr	r3, [r5, #432]
 3738 1dc0 002B     		cmp	r3, #0
 3739 1dc2 01F00F82 		beq	.L875
 3740 1dc6 4FF00008 		mov	r8, #0
 3741 1dca C246     		mov	r10, r8
 3742 1dcc 6E4F     		ldr	r7, .L1622+24
 3743 1dce 9FED6F8A 		flds	s16, .L1622+28
 3744 1dd2 B146     		mov	r9, r6
 3745 1dd4 06E0     		b	.L876
 3746              	.L620:
 3747 1dd6 D5F8B031 		ldr	r3, [r5, #432]
 3748 1dda 08F10108 		add	r8, r8, #1
 3749 1dde 4345     		cmp	r3, r8
 3750 1de0 40F29084 		bls	.L1525
 3751              	.L876:
 3752 1de4 2046     		mov	r0, r4
 3753 1de6 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 3754 1dea FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3755 1dee 0028     		cmp	r0, #0
 3756 1df0 F1D0     		beq	.L620
 3757 1df2 2046     		mov	r0, r4
 3758 1df4 2E68     		ldr	r6, [r5]
 3759 1df6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3760 1dfa D5ED9B7A 		flds	s15, [r5, #620]
 3761 1dfe 06EE900A 		fmsr	s13, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 67


 3762 1e02 66EEA77A 		fmuls	s15, s13, s15
 3763 1e06 06EB8803 		add	r3, r6, r8, lsl #2
 3764 1e0a 67EE887A 		fmuls	s15, s15, s16
 3765 1e0e 4FF0010A 		mov	r10, #1
 3766 1e12 C3ED5C7A 		fsts	s15, [r3, #368]
 3767 1e16 DEE7     		b	.L620
 3768              	.L634:
 3769 1e18 2046     		mov	r0, r4
 3770 1e1a 5021     		movs	r1, #80
 3771 1e1c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3772 1e20 0028     		cmp	r0, #0
 3773 1e22 3EF49FAF 		beq	.L564
 3774 1e26 2046     		mov	r0, r4
 3775 1e28 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3776 1e2c 4FFA80F9 		sxtb	r9, r0
 3777 1e30 4946     		mov	r1, r9
 3778 1e32 4F48     		ldr	r0, .L1622
 3779 1e34 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 3780 1e38 0746     		mov	r7, r0
 3781 1e3a 0028     		cmp	r0, #0
 3782 1e3c 02F07B87 		beq	.L1526
 3783 1e40 2046     		mov	r0, r4
 3784 1e42 4521     		movs	r1, #69
 3785 1e44 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3786 1e48 8046     		mov	r8, r0
 3787 1e4a 0028     		cmp	r0, #0
 3788 1e4c 02F07B86 		beq	.L636
 3789 1e50 3B6C     		ldr	r3, [r7, #64]
 3790 1e52 1393     		str	r3, [sp, #76]
 3791 1e54 13AA     		add	r2, sp, #76
 3792 1e56 0023     		movs	r3, #0
 3793 1e58 1AA9     		add	r1, sp, #104
 3794 1e5a 2046     		mov	r0, r4
 3795 1e5c FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 3796 1e60 139A     		ldr	r2, [sp, #76]
 3797 1e62 3B6C     		ldr	r3, [r7, #64]
 3798 1e64 9A42     		cmp	r2, r3
 3799 1e66 03F05082 		beq	.L637
 3800 1e6a 3046     		mov	r0, r6
 3801 1e6c 4849     		ldr	r1, .L1622+32
 3802 1e6e 04F10C02 		add	r2, r4, #12
 3803 1e72 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 3804              	.L638:
 3805 1e76 A368     		ldr	r3, [r4, #8]
 3806 1e78 0027     		movs	r7, #0
 3807 1e7a FEF73EBD 		b	.L763
 3808              	.L617:
 3809 1e7e 2046     		mov	r0, r4
 3810 1e80 5321     		movs	r1, #83
 3811 1e82 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3812 1e86 0746     		mov	r7, r0
 3813 1e88 0028     		cmp	r0, #0
 3814 1e8a 41F0E083 		bne	.L1527
 3815 1e8e 95F89602 		ldrb	r0, [r5, #662]	@ zero_extendqisi2
 3816 1e92 404B     		ldr	r3, .L1622+36
 3817 1e94 404A     		ldr	r2, .L1622+40
 3818 1e96 4149     		ldr	r1, .L1622+44
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 68


 3819 1e98 0028     		cmp	r0, #0
 3820 1e9a 18BF     		it	ne
 3821 1e9c 1A46     		movne	r2, r3
 3822 1e9e 3046     		mov	r0, r6
 3823 1ea0 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 3824 1ea4 A368     		ldr	r3, [r4, #8]
 3825 1ea6 FEF728BD 		b	.L763
 3826              	.L537:
 3827 1eaa 2846     		mov	r0, r5
 3828 1eac 2146     		mov	r1, r4
 3829 1eae FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3830 1eb2 0028     		cmp	r0, #0
 3831 1eb4 3EF452AE 		beq	.L554
 3832 1eb8 A368     		ldr	r3, [r4, #8]
 3833 1eba 0027     		movs	r7, #0
 3834 1ebc FEF71DBD 		b	.L763
 3835              	.L584:
 3836 1ec0 2046     		mov	r0, r4
 3837 1ec2 5321     		movs	r1, #83
 3838 1ec4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3839 1ec8 0746     		mov	r7, r0
 3840 1eca 0028     		cmp	r0, #0
 3841 1ecc 01F01080 		beq	.L585
 3842 1ed0 2046     		mov	r0, r4
 3843 1ed2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3844 1ed6 2C4F     		ldr	r7, .L1622+24
 3845 1ed8 DFF89490 		ldr	r9, .L1622
 3846 1edc 08EE100A 		fmsr	s16, r0
 3847 1ee0 4FF00008 		mov	r8, #0
 3848              	.L588:
 3849 1ee4 2046     		mov	r0, r4
 3850 1ee6 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 3851 1eea FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3852 1eee 0028     		cmp	r0, #0
 3853 1ef0 41F07080 		bne	.L1528
 3854              	.L586:
 3855 1ef4 08F10108 		add	r8, r8, #1
 3856 1ef8 B8F1030F 		cmp	r8, #3
 3857 1efc F2D1     		bne	.L588
 3858 1efe A368     		ldr	r3, [r4, #8]
 3859 1f00 0027     		movs	r7, #0
 3860 1f02 FEF7FABC 		b	.L763
 3861              	.L134:
 3862 1f06 2846     		mov	r0, r5
 3863 1f08 2146     		mov	r1, r4
 3864 1f0a FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3865 1f0e 0028     		cmp	r0, #0
 3866 1f10 3EF424AE 		beq	.L554
 3867 1f14 95F8A170 		ldrb	r7, [r5, #161]	@ zero_extendqisi2
 3868 1f18 2846     		mov	r0, r5
 3869 1f1a FFF7FEFF 		bl	_ZN6GCodes11CancelPrintEv
 3870 1f1e 002F     		cmp	r7, #0
 3871 1f20 42F09985 		bne	.L1529
 3872 1f24 B9F1000F 		cmp	r9, #0
 3873 1f28 42F08981 		bne	.L137
 3874              	.L139:
 3875 1f2c 1C4A     		ldr	r2, .L1622+48
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 69


 3876 1f2e A368     		ldr	r3, [r4, #8]
 3877 1f30 1268     		ldr	r2, [r2]
 3878 1f32 1321     		movs	r1, #19
 3879 1f34 1974     		strb	r1, [r3, #16]
 3880              	.L881:
 3881 1f36 0027     		movs	r7, #0
 3882 1f38 3B46     		mov	r3, r7
 3883 1f3a 0097     		str	r7, [sp]
 3884 1f3c 2846     		mov	r0, r5
 3885 1f3e 2146     		mov	r1, r4
 3886 1f40 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 3887 1f44 A368     		ldr	r3, [r4, #8]
 3888 1f46 FEF7D8BC 		b	.L763
 3889              	.L575:
 3890 1f4a 2046     		mov	r0, r4
 3891 1f4c 5021     		movs	r1, #80
 3892 1f4e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3893 1f52 0028     		cmp	r0, #0
 3894 1f54 00F00787 		beq	.L576
 3895 1f58 2046     		mov	r0, r4
 3896 1f5a 2F68     		ldr	r7, [r5]
 3897 1f5c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3898 1f60 C1B2     		uxtb	r1, r0
 3899 1f62 3846     		mov	r0, r7
 3900 1f64 FFF7FEFF 		bl	_ZN8Platform12SetEmulatingE13Compatibility
 3901 1f68 0027     		movs	r7, #0
 3902 1f6a A368     		ldr	r3, [r4, #8]
 3903 1f6c FEF7C5BC 		b	.L763
 3904              	.L1623:
 3905              		.align	2
 3906              	.L1622:
 3907 1f70 00000000 		.word	reprap
 3908 1f74 00004843 		.word	1128792064
 3909 1f78 00004842 		.word	1112014848
 3910 1f7c A0090000 		.word	.LC95
 3911 1f80 380C0000 		.word	.LC112
 3912 1f84 08040000 		.word	.LC49
 3913 1f88 00000000 		.word	_ZN6GCodes11axisLettersE
 3914 1f8c 8988883C 		.word	1015580809
 3915 1f90 100F0000 		.word	.LC137
 3916 1f94 1C010000 		.word	.LC21
 3917 1f98 A4000000 		.word	.LC9
 3918 1f9c D00E0000 		.word	.LC135
 3919 1fa0 00000000 		.word	.LANCHOR7
 3920              	.L843:
 3921 1fa4 2046     		mov	r0, r4
 3922 1fa6 5321     		movs	r1, #83
 3923 1fa8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3924 1fac 0028     		cmp	r0, #0
 3925 1fae 00F04186 		beq	.L844
 3926 1fb2 2F68     		ldr	r7, [r5]
 3927 1fb4 2046     		mov	r0, r4
 3928 1fb6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3929 1fba 07F6B403 		addw	r3, r7, #2228
 3930 1fbe 0027     		movs	r7, #0
 3931 1fc0 1860     		str	r0, [r3]	@ float
 3932 1fc2 A368     		ldr	r3, [r4, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 70


 3933 1fc4 FEF799BC 		b	.L763
 3934              	.L543:
 3935 1fc8 2046     		mov	r0, r4
 3936 1fca 5321     		movs	r1, #83
 3937 1fcc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3938 1fd0 0028     		cmp	r0, #0
 3939 1fd2 41F0EF81 		bne	.L1530
 3940 1fd6 0746     		mov	r7, r0
 3941              	.L544:
 3942 1fd8 2046     		mov	r0, r4
 3943 1fda 5221     		movs	r1, #82
 3944 1fdc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3945 1fe0 0028     		cmp	r0, #0
 3946 1fe2 41F0E181 		bne	.L1531
 3947 1fe6 4FF0FF32 		mov	r2, #-1
 3948              	.L545:
 3949 1fea AB6C     		ldr	r3, [r5, #72]
 3950 1fec 1968     		ldr	r1, [r3]
 3951 1fee A142     		cmp	r1, r4
 3952 1ff0 02F0BB82 		beq	.L546
 3953              	.L548:
 3954 1ff4 0223     		movs	r3, #2
 3955              	.L547:
 3956 1ff6 3946     		mov	r1, r7
 3957 1ff8 2846     		mov	r0, r5
 3958 1ffa FFF7FEFF 		bl	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource
 3959 1ffe 0746     		mov	r7, r0
 3960 2000 0028     		cmp	r0, #0
 3961 2002 00F0F987 		beq	.L1532
 3962 2006 2846     		mov	r0, r5
 3963 2008 2146     		mov	r1, r4
 3964 200a FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 3965 200e 3B46     		mov	r3, r7
 3966 2010 2846     		mov	r0, r5
 3967 2012 2146     		mov	r1, r4
 3968 2014 0022     		movs	r2, #0
 3969 2016 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer
 3970 201a 0127     		movs	r7, #1
 3971 201c FEF72EBC 		b	.L1420
 3972              	.L173:
 3973 2020 2846     		mov	r0, r5
 3974 2022 2146     		mov	r1, r4
 3975 2024 FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 3976 2028 0028     		cmp	r0, #0
 3977 202a 3EF497AD 		beq	.L554
 3978 202e 2046     		mov	r0, r4
 3979 2030 5021     		movs	r1, #80
 3980 2032 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3981 2036 0028     		cmp	r0, #0
 3982 2038 42F02585 		bne	.L1533
 3983 203c 0146     		mov	r1, r0
 3984              	.L174:
 3985 203e 2B68     		ldr	r3, [r5]
 3986 2040 3246     		mov	r2, r6
 3987 2042 D3F83C08 		ldr	r0, [r3, #2108]
 3988 2046 0123     		movs	r3, #1
 3989 2048 FFF7FEFF 		bl	_ZN11MassStorage5MountEjR9StringRefb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 71


 3990 204c 0027     		movs	r7, #0
 3991 204e 8146     		mov	r9, r0
 3992 2050 FFF749B9 		b	.L175
 3993              	.L176:
 3994 2054 2846     		mov	r0, r5
 3995 2056 2146     		mov	r1, r4
 3996 2058 FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 3997 205c 0028     		cmp	r0, #0
 3998 205e 3EF47DAD 		beq	.L554
 3999 2062 2046     		mov	r0, r4
 4000 2064 5021     		movs	r1, #80
 4001 2066 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4002 206a 0028     		cmp	r0, #0
 4003 206c 42F03C85 		bne	.L1534
 4004 2070 0146     		mov	r1, r0
 4005              	.L177:
 4006 2072 2B68     		ldr	r3, [r5]
 4007 2074 3246     		mov	r2, r6
 4008 2076 D3F83C08 		ldr	r0, [r3, #2108]
 4009 207a FFF7FEFF 		bl	_ZN11MassStorage7UnmountEjR9StringRef
 4010 207e 0027     		movs	r7, #0
 4011 2080 8146     		mov	r9, r0
 4012 2082 FFF730B9 		b	.L175
 4013              	.L157:
 4014 2086 2846     		mov	r0, r5
 4015 2088 2146     		mov	r1, r4
 4016 208a FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 4017 208e 0646     		mov	r6, r0
 4018 2090 0028     		cmp	r0, #0
 4019 2092 3EF463AD 		beq	.L554
 4020 2096 2046     		mov	r0, r4
 4021 2098 5321     		movs	r1, #83
 4022 209a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4023 209e 0028     		cmp	r0, #0
 4024 20a0 42F07484 		bne	.L1535
 4025 20a4 0746     		mov	r7, r0
 4026              	.L158:
 4027 20a6 2046     		mov	r0, r4
 4028 20a8 5021     		movs	r1, #80
 4029 20aa FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4030 20ae 0028     		cmp	r0, #0
 4031 20b0 42F06684 		bne	.L1536
 4032 20b4 DFF81C93 		ldr	r9, .L1624+24
 4033              	.L159:
 4034 20b8 022F     		cmp	r7, #2
 4035 20ba 02F06E85 		beq	.L1537
 4036 20be 0DF14C08 		add	r8, sp, #76
 4037 20c2 4046     		mov	r0, r8
 4038 20c4 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 4039 20c8 0746     		mov	r7, r0
 4040 20ca 0028     		cmp	r0, #0
 4041 20cc 3EF4D6AB 		beq	.L1420
 4042 20d0 2868     		ldr	r0, [r5]
 4043 20d2 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 4044 20d6 0028     		cmp	r0, #0
 4045 20d8 43F03581 		bne	.L1538
 4046              	.L164:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 72


 4047 20dc D8F80000 		ldr	r0, [r8]
 4048 20e0 B649     		ldr	r1, .L1624
 4049 20e2 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 4050              	.L882:
 4051 20e6 6B6C     		ldr	r3, [r5, #68]
 4052 20e8 1B68     		ldr	r3, [r3]
 4053 20ea A342     		cmp	r3, r4
 4054 20ec 03F07281 		beq	.L165
 4055 20f0 EB6B     		ldr	r3, [r5, #60]
 4056 20f2 1B68     		ldr	r3, [r3]
 4057 20f4 A342     		cmp	r3, r4
 4058 20f6 03F06D81 		beq	.L165
 4059 20fa 0127     		movs	r7, #1
 4060              	.L166:
 4061 20fc 2B68     		ldr	r3, [r5]
 4062 20fe 0DF1680A 		add	r10, sp, #104
 4063 2102 4946     		mov	r1, r9
 4064 2104 D3F83C08 		ldr	r0, [r3, #2108]
 4065 2108 5246     		mov	r2, r10
 4066 210a FFF7FEFF 		bl	_ZN11MassStorage9FindFirstEPKcR8FileInfo
 4067 210e 0028     		cmp	r0, #0
 4068 2110 03F05981 		beq	.L167
 4069 2114 4FF02209 		mov	r9, #34
 4070              	.L170:
 4071 2118 4FF02C0E 		mov	lr, #44
 4072 211c A849     		ldr	r1, .L1624+4
 4073 211e 2222     		movs	r2, #34
 4074 2120 0DF16903 		add	r3, sp, #105
 4075 2124 002F     		cmp	r7, #0
 4076 2126 00F0A281 		beq	.L168
 4077 212a D8F80000 		ldr	r0, [r8]
 4078 212e 8DE80042 		stmia	sp, {r9, lr}
 4079 2132 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4080 2136 2B68     		ldr	r3, [r5]
 4081 2138 5146     		mov	r1, r10
 4082 213a D3F83C08 		ldr	r0, [r3, #2108]
 4083 213e FFF7FEFF 		bl	_ZN11MassStorage8FindNextER8FileInfo
 4084 2142 0028     		cmp	r0, #0
 4085 2144 E8D1     		bne	.L170
 4086 2146 D8F80070 		ldr	r7, [r8]
 4087 214a 8346     		mov	fp, r0
 4088 214c 3846     		mov	r0, r7
 4089 214e FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 4090 2152 411E     		subs	r1, r0, #1
 4091 2154 3846     		mov	r0, r7
 4092 2156 FFF7FEFF 		bl	_ZN12OutputBufferixEj
 4093 215a 80F800B0 		strb	fp, [r0]
 4094              	.L161:
 4095 215e 2846     		mov	r0, r5
 4096 2160 2146     		mov	r1, r4
 4097 2162 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 4098 2166 2846     		mov	r0, r5
 4099 2168 2146     		mov	r1, r4
 4100 216a D8F80030 		ldr	r3, [r8]
 4101 216e 0022     		movs	r2, #0
 4102 2170 3746     		mov	r7, r6
 4103 2172 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 73


 4104 2176 FEF781BB 		b	.L1420
 4105              	.L533:
 4106 217a 924B     		ldr	r3, .L1624+8
 4107 217c 2046     		mov	r0, r4
 4108 217e 4821     		movs	r1, #72
 4109 2180 D3F80880 		ldr	r8, [r3, #8]
 4110 2184 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4111 2188 0746     		mov	r7, r0
 4112 218a 0028     		cmp	r0, #0
 4113 218c 41F07280 		bne	.L1539
 4114 2190 98F80C3A 		ldrb	r3, [r8, #2572]	@ zero_extendqisi2
 4115 2194 002B     		cmp	r3, #0
 4116 2196 40F09B87 		bne	.L1540
 4117              	.L535:
 4118 219a 3046     		mov	r0, r6
 4119 219c 8A49     		ldr	r1, .L1624+12
 4120 219e FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 4121 21a2 0027     		movs	r7, #0
 4122 21a4 A368     		ldr	r3, [r4, #8]
 4123 21a6 FEF7A8BB 		b	.L763
 4124              	.L538:
 4125 21aa 884B     		ldr	r3, .L1624+16
 4126 21ac 0027     		movs	r7, #0
 4127 21ae 1A68     		ldr	r2, [r3]
 4128 21b0 0097     		str	r7, [sp]
 4129 21b2 3B46     		mov	r3, r7
 4130 21b4 2846     		mov	r0, r5
 4131 21b6 2146     		mov	r1, r4
 4132 21b8 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 4133 21bc A368     		ldr	r3, [r4, #8]
 4134 21be FEF79CBB 		b	.L763
 4135              	.L842:
 4136 21c2 3046     		mov	r0, r6
 4137 21c4 8249     		ldr	r1, .L1624+20
 4138 21c6 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 4139 21ca 0027     		movs	r7, #0
 4140 21cc A368     		ldr	r3, [r4, #8]
 4141 21ce FEF794BB 		b	.L763
 4142              	.L461:
 4143 21d2 2046     		mov	r0, r4
 4144 21d4 5021     		movs	r1, #80
 4145 21d6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4146 21da 0028     		cmp	r0, #0
 4147 21dc 3EF4C2AD 		beq	.L564
 4148 21e0 2046     		mov	r0, r4
 4149 21e2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4150 21e6 0DF14C08 		add	r8, sp, #76
 4151 21ea 0746     		mov	r7, r0
 4152 21ec 0DF1680A 		add	r10, sp, #104
 4153 21f0 2868     		ldr	r0, [r5]
 4154 21f2 CDF800A0 		str	r10, [sp]
 4155 21f6 3946     		mov	r1, r7
 4156 21f8 4346     		mov	r3, r8
 4157 21fa 0322     		movs	r2, #3
 4158 21fc FFF7FEFF 		bl	_ZN8Platform14GetFirmwarePinEi9PinAccessRhRb
 4159 2200 0028     		cmp	r0, #0
 4160 2202 02F0EC81 		beq	.L463
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 74


 4161 2206 2046     		mov	r0, r4
 4162 2208 4921     		movs	r1, #73
 4163 220a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4164 220e 0028     		cmp	r0, #0
 4165 2210 42F0BD86 		bne	.L1541
 4166              	.L886:
 4167 2214 2046     		mov	r0, r4
 4168 2216 5321     		movs	r1, #83
 4169 2218 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4170 221c 0028     		cmp	r0, #0
 4171 221e 42F0C486 		bne	.L1542
 4172              	.L466:
 4173 2222 A368     		ldr	r3, [r4, #8]
 4174 2224 0027     		movs	r7, #0
 4175 2226 FEF768BB 		b	.L763
 4176              	.L202:
 4177 222a 2046     		mov	r0, r4
 4178 222c 0021     		movs	r1, #0
 4179 222e FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringEb
 4180 2232 0746     		mov	r7, r0
 4181 2234 0028     		cmp	r0, #0
 4182 2236 00F08484 		beq	.L207
 4183 223a 664A     		ldr	r2, .L1624+24
 4184 223c 2846     		mov	r0, r5
 4185 223e 2146     		mov	r1, r4
 4186 2240 3B46     		mov	r3, r7
 4187 2242 FFF7FEFF 		bl	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_
 4188 2246 3A46     		mov	r2, r7
 4189 2248 0028     		cmp	r0, #0
 4190 224a 00F05887 		beq	.L204
 4191 224e 3046     		mov	r0, r6
 4192 2250 6149     		ldr	r1, .L1624+28
 4193 2252 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 4194 2256 0027     		movs	r7, #0
 4195 2258 A368     		ldr	r3, [r4, #8]
 4196 225a FEF74EBB 		b	.L763
 4197              	.L206:
 4198 225e 2046     		mov	r0, r4
 4199 2260 0021     		movs	r1, #0
 4200 2262 FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringEb
 4201 2266 0028     		cmp	r0, #0
 4202 2268 00F06B84 		beq	.L207
 4203 226c 0146     		mov	r1, r0
 4204 226e 2846     		mov	r0, r5
 4205 2270 FFF7FEFF 		bl	_ZN6GCodes10DeleteFileEPKc
 4206 2274 0027     		movs	r7, #0
 4207 2276 A368     		ldr	r3, [r4, #8]
 4208 2278 FEF73FBB 		b	.L763
 4209              	.L553:
 4210 227c 2846     		mov	r0, r5
 4211 227e 2146     		mov	r1, r4
 4212 2280 FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 4213 2284 0028     		cmp	r0, #0
 4214 2286 3EF469AC 		beq	.L554
 4215 228a 0DF14C08 		add	r8, sp, #76
 4216 228e 4046     		mov	r0, r8
 4217 2290 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 75


 4218 2294 0746     		mov	r7, r0
 4219 2296 0028     		cmp	r0, #0
 4220 2298 3EF460AC 		beq	.L554
 4221 229c 2868     		ldr	r0, [r5]
 4222 229e 4F49     		ldr	r1, .L1624+32
 4223 22a0 4F4A     		ldr	r2, .L1624+36
 4224 22a2 0023     		movs	r3, #0
 4225 22a4 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 4226 22a8 8146     		mov	r9, r0
 4227 22aa 0028     		cmp	r0, #0
 4228 22ac 03F0DD81 		beq	.L1543
 4229 22b0 D8F80000 		ldr	r0, [r8]
 4230 22b4 FFF7FEFF 		bl	_ZN12OutputBuffer12GetBytesLeftEPKS_
 4231 22b8 0DF1680A 		add	r10, sp, #104
 4232 22bc 0646     		mov	r6, r0
 4233 22be 0BE0     		b	.L556
 4234              	.L1544:
 4235 22c0 96B1     		cbz	r6, .L557
 4236 22c2 8642     		cmp	r6, r0
 4237 22c4 00F20684 		bhi	.L888
 4238 22c8 3046     		mov	r0, r6
 4239 22ca 0026     		movs	r6, #0
 4240              	.L889:
 4241 22cc 0246     		mov	r2, r0
 4242 22ce 5146     		mov	r1, r10
 4243 22d0 D8F80000 		ldr	r0, [r8]
 4244 22d4 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKcj
 4245              	.L556:
 4246 22d8 4846     		mov	r0, r9
 4247 22da 5146     		mov	r1, r10
 4248 22dc 4FF48072 		mov	r2, #256
 4249 22e0 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 4250 22e4 0028     		cmp	r0, #0
 4251 22e6 EBD1     		bne	.L1544
 4252              	.L557:
 4253 22e8 4846     		mov	r0, r9
 4254 22ea FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 4255 22ee 2846     		mov	r0, r5
 4256 22f0 2146     		mov	r1, r4
 4257 22f2 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 4258 22f6 2846     		mov	r0, r5
 4259 22f8 2146     		mov	r1, r4
 4260 22fa D8F80030 		ldr	r3, [r8]
 4261 22fe 0022     		movs	r2, #0
 4262 2300 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer
 4263 2304 FEF7BABA 		b	.L1420
 4264              	.L559:
 4265 2308 2046     		mov	r0, r4
 4266 230a 5021     		movs	r1, #80
 4267 230c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4268 2310 8646     		mov	lr, r0
 4269 2312 0028     		cmp	r0, #0
 4270 2314 00F07185 		beq	.L560
 4271 2318 2846     		mov	r0, r5
 4272 231a 2146     		mov	r1, r4
 4273 231c FFF7FEFF 		bl	_ZN6GCodes13SetMACAddressER11GCodeBuffer
 4274 2320 0027     		movs	r7, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 76


 4275 2322 A368     		ldr	r3, [r4, #8]
 4276 2324 FEF7E9BA 		b	.L763
 4277              	.L552:
 4278 2328 264F     		ldr	r7, .L1624+8
 4279 232a F868     		ldr	r0, [r7, #12]
 4280 232c FFF7FEFF 		bl	_ZN4Heat17ResetHeaterModelsEv
 4281 2330 B868     		ldr	r0, [r7, #8]
 4282 2332 00F68420 		addw	r0, r0, #2692
 4283 2336 FFF7FEFF 		bl	_ZN15DeltaParameters4InitEv
 4284 233a 2868     		ldr	r0, [r5]
 4285 233c FFF7FEFF 		bl	_ZN8Platform17SetZProbeDefaultsEv
 4286 2340 0123     		movs	r3, #1
 4287 2342 0093     		str	r3, [sp]
 4288 2344 2846     		mov	r0, r5
 4289 2346 2146     		mov	r1, r4
 4290 2348 254A     		ldr	r2, .L1624+36
 4291 234a FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 4292 234e 0027     		movs	r7, #0
 4293 2350 A368     		ldr	r3, [r4, #8]
 4294 2352 FEF7D2BA 		b	.L763
 4295              	.L540:
 4296 2356 2046     		mov	r0, r4
 4297 2358 4E21     		movs	r1, #78
 4298 235a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4299 235e 0028     		cmp	r0, #0
 4300 2360 41F05180 		bne	.L1545
 4301 2364 2046     		mov	r0, r4
 4302 2366 4421     		movs	r1, #68
 4303 2368 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4304 236c 0028     		cmp	r0, #0
 4305 236e 41F03F80 		bne	.L905
 4306 2372 D5F800A0 		ldr	r10, [r5]
 4307 2376 0AF50A63 		add	r3, r10, #2208
 4308 237a 0746     		mov	r7, r0
 4309 237c 1868     		ldr	r0, [r3]	@ float
 4310 237e FFF7FEFF 		bl	__aeabi_f2d
 4311 2382 0AF6A40A 		addw	r10, r10, #2212
 4312 2386 8046     		mov	r8, r0
 4313 2388 DAF80000 		ldr	r0, [r10]	@ float
 4314 238c 8946     		mov	r9, r1
 4315 238e FFF7FEFF 		bl	__aeabi_f2d
 4316 2392 4B46     		mov	r3, r9
 4317 2394 CDE90001 		strd	r0, [sp]
 4318 2398 4246     		mov	r2, r8
 4319 239a 3046     		mov	r0, r6
 4320 239c 1149     		ldr	r1, .L1624+40
 4321 239e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 4322 23a2 A368     		ldr	r3, [r4, #8]
 4323 23a4 FEF7A9BA 		b	.L763
 4324              	.L550:
 4325 23a8 0F4B     		ldr	r3, .L1624+44
 4326 23aa 2846     		mov	r0, r5
 4327 23ac 1A68     		ldr	r2, [r3]
 4328 23ae 3146     		mov	r1, r6
 4329 23b0 FFF7FEFF 		bl	_ZNK6GCodes23WriteConfigOverrideFileER9StringRefPKc
 4330 23b4 A368     		ldr	r3, [r4, #8]
 4331 23b6 0746     		mov	r7, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 77


 4332 23b8 FEF79FBA 		b	.L763
 4333              	.L1625:
 4334              		.align	2
 4335              	.L1624:
 4336 23bc 70150000 		.word	.LC185
 4337 23c0 00020000 		.word	.LC34
 4338 23c4 00000000 		.word	reprap
 4339 23c8 E80B0000 		.word	.LC110
 4340 23cc 00000000 		.word	.LANCHOR3
 4341 23d0 C4140000 		.word	.LC179
 4342 23d4 88000000 		.word	.LC4
 4343 23d8 D4030000 		.word	.LC47
 4344 23dc 4C0C0000 		.word	.LC113
 4345 23e0 04010000 		.word	.LC19
 4346 23e4 080C0000 		.word	.LC111
 4347 23e8 00000000 		.word	.LANCHOR5
 4348              	.L872:
 4349 23ec D5F8B031 		ldr	r3, [r5, #432]
 4350 23f0 002B     		cmp	r3, #0
 4351 23f2 00F08382 		beq	.L1007
 4352 23f6 4FF00008 		mov	r8, #0
 4353 23fa C246     		mov	r10, r8
 4354 23fc B84F     		ldr	r7, .L1626
 4355 23fe 40F2913B 		movw	fp, #913
 4356 2402 06E0     		b	.L874
 4357              	.L821:
 4358 2404 D5F8B031 		ldr	r3, [r5, #432]
 4359 2408 08F10108 		add	r8, r8, #1
 4360 240c 4345     		cmp	r3, r8
 4361 240e 40F27682 		bls	.L873
 4362              	.L874:
 4363 2412 2046     		mov	r0, r4
 4364 2414 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 4365 2418 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4366 241c 0028     		cmp	r0, #0
 4367 241e F1D0     		beq	.L821
 4368 2420 2846     		mov	r0, r5
 4369 2422 2146     		mov	r1, r4
 4370 2424 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4371 2428 0028     		cmp	r0, #0
 4372 242a 3EF497AB 		beq	.L554
 4373 242e 2046     		mov	r0, r4
 4374 2430 D5F800A0 		ldr	r10, [r5]
 4375 2434 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 4376 2438 0246     		mov	r2, r0	@ float
 4377 243a 5046     		mov	r0, r10
 4378 243c B9EB0B0A 		subs	r10, r9, fp
 4379 2440 DAF10003 		rsbs	r3, r10, #0
 4380 2444 53EB0A03 		adcs	r3, r3, r10
 4381 2448 4146     		mov	r1, r8
 4382 244a FFF7FEFF 		bl	_ZN8Platform15SetMotorCurrentEjfb
 4383 244e 4FF0010A 		mov	r10, #1
 4384 2452 D7E7     		b	.L821
 4385              	.L1006:
 4386 2454 0027     		movs	r7, #0
 4387 2456 FEF750BA 		b	.L763
 4388              	.L865:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 78


 4389 245a 3046     		mov	r0, r6
 4390 245c A149     		ldr	r1, .L1626+4
 4391 245e 04F10C02 		add	r2, r4, #12
 4392 2462 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 4393 2466 0127     		movs	r7, #1
 4394 2468 A368     		ldr	r3, [r4, #8]
 4395 246a FEF746BA 		b	.L763
 4396              	.L168:
 4397 246e 9E49     		ldr	r1, .L1626+8
 4398 2470 D8F80000 		ldr	r0, [r8]
 4399 2474 0DF16902 		add	r2, sp, #105
 4400 2478 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4401 247c 2B68     		ldr	r3, [r5]
 4402 247e 5146     		mov	r1, r10
 4403 2480 D3F83C08 		ldr	r0, [r3, #2108]
 4404 2484 FFF7FEFF 		bl	_ZN11MassStorage8FindNextER8FileInfo
 4405 2488 0028     		cmp	r0, #0
 4406 248a F0D1     		bne	.L168
 4407 248c 67E6     		b	.L161
 4408              	.L867:
 4409 248e 2371     		strb	r3, [r4, #4]
 4410 2490 2846     		mov	r0, r5
 4411 2492 2146     		mov	r1, r4
 4412 2494 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 4413 2498 2846     		mov	r0, r5
 4414 249a 2146     		mov	r1, r4
 4415 249c 3A46     		mov	r2, r7
 4416 249e 3368     		ldr	r3, [r6]
 4417 24a0 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 4418 24a4 FEF7E9B9 		b	.L1461
 4419              	.L510:
 4420 24a8 CDF800A0 		str	r10, [sp]
 4421 24ac D9F80060 		ldr	r6, [r9]
 4422 24b0 DFF848C2 		ldr	ip, .L1626+28
 4423 24b4 DFF848E2 		ldr	lr, .L1626+32
 4424 24b8 2868     		ldr	r0, [r5]
 4425 24ba 002E     		cmp	r6, #0
 4426 24bc 18BF     		it	ne
 4427 24be E646     		movne	lr, ip
 4428 24c0 CDF804E0 		str	lr, [sp, #4]
 4429 24c4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 4430 24c8 4FF0010A 		mov	r10, #1
 4431 24cc FEF7DCBC 		b	.L508
 4432              	.L130:
 4433 24d0 2046     		mov	r0, r4
 4434 24d2 4821     		movs	r1, #72
 4435 24d4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4436 24d8 0028     		cmp	r0, #0
 4437 24da 40F07187 		bne	.L498
 4438 24de 0746     		mov	r7, r0
 4439 24e0 A368     		ldr	r3, [r4, #8]
 4440 24e2 FEF70ABA 		b	.L763
 4441              	.L129:
 4442 24e6 3346     		mov	r3, r6
 4443 24e8 2846     		mov	r0, r5
 4444 24ea 2146     		mov	r1, r4
 4445 24ec 0122     		movs	r2, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 79


 4446 24ee FFF7FEFF 		bl	_ZN6GCodes16SetPidParametersER11GCodeBufferiR9StringRef
 4447 24f2 0027     		movs	r7, #0
 4448 24f4 A368     		ldr	r3, [r4, #8]
 4449 24f6 FEF700BA 		b	.L763
 4450              	.L132:
 4451 24fa 2846     		mov	r0, r5
 4452 24fc 2146     		mov	r1, r4
 4453 24fe FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4454 2502 0028     		cmp	r0, #0
 4455 2504 3EF42AAB 		beq	.L554
 4456 2508 7848     		ldr	r0, .L1626+12
 4457 250a 8768     		ldr	r7, [r0, #8]
 4458 250c FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 4459 2510 0DF1680A 		add	r10, sp, #104
 4460 2514 0346     		mov	r3, r0
 4461 2516 5146     		mov	r1, r10
 4462 2518 3846     		mov	r0, r7
 4463 251a 0022     		movs	r2, #0
 4464 251c FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhm
 4465 2520 2046     		mov	r0, r4
 4466 2522 4C21     		movs	r1, #76
 4467 2524 97F8BCBA 		ldrb	fp, [r7, #2748]	@ zero_extendqisi2
 4468 2528 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4469 252c 07F68428 		addw	r8, r7, #2692
 4470 2530 0028     		cmp	r0, #0
 4471 2532 42F01382 		bne	.L1546
 4472 2536 8146     		mov	r9, r0
 4473              	.L781:
 4474 2538 2046     		mov	r0, r4
 4475 253a 5221     		movs	r1, #82
 4476 253c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4477 2540 0028     		cmp	r0, #0
 4478 2542 42F0FF81 		bne	.L1547
 4479              	.L782:
 4480 2546 2046     		mov	r0, r4
 4481 2548 4221     		movs	r1, #66
 4482 254a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4483 254e 0028     		cmp	r0, #0
 4484 2550 42F0E681 		bne	.L1548
 4485              	.L783:
 4486 2554 2046     		mov	r0, r4
 4487 2556 5821     		movs	r1, #88
 4488 2558 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4489 255c 0028     		cmp	r0, #0
 4490 255e 42F0D381 		bne	.L1549
 4491              	.L784:
 4492 2562 2046     		mov	r0, r4
 4493 2564 5921     		movs	r1, #89
 4494 2566 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4495 256a 0028     		cmp	r0, #0
 4496 256c 42F0C081 		bne	.L1550
 4497              	.L785:
 4498 2570 2046     		mov	r0, r4
 4499 2572 5A21     		movs	r1, #90
 4500 2574 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4501 2578 0028     		cmp	r0, #0
 4502 257a 41F03A86 		bne	.L1551
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 80


 4503 257e 2046     		mov	r0, r4
 4504 2580 4821     		movs	r1, #72
 4505 2582 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4506 2586 0028     		cmp	r0, #0
 4507 2588 41F04086 		bne	.L787
 4508 258c B9F1000F 		cmp	r9, #0
 4509 2590 41F04486 		bne	.L788
 4510 2594 97F8BC3A 		ldrb	r3, [r7, #2748]	@ zero_extendqisi2
 4511 2598 002B     		cmp	r3, #0
 4512 259a 02F0F882 		beq	.L793
 4513 259e 07F68C23 		addw	r3, r7, #2700
 4514 25a2 1868     		ldr	r0, [r3]	@ float
 4515 25a4 FFF7FEFF 		bl	__aeabi_f2d
 4516 25a8 07F52963 		add	r3, r7, #2704
 4517 25ac 8046     		mov	r8, r0
 4518 25ae 1868     		ldr	r0, [r3]	@ float
 4519 25b0 8946     		mov	r9, r1
 4520 25b2 FFF7FEFF 		bl	__aeabi_f2d
 4521 25b6 CDE90001 		strd	r0, [sp]
 4522 25ba 07F52B63 		add	r3, r7, #2736
 4523 25be 1868     		ldr	r0, [r3]	@ float
 4524 25c0 FFF7FEFF 		bl	__aeabi_f2d
 4525 25c4 CDE90201 		strd	r0, [sp, #8]
 4526 25c8 07F6AC23 		addw	r3, r7, #2732
 4527 25cc 1868     		ldr	r0, [r3]	@ float
 4528 25ce FFF7FEFF 		bl	__aeabi_f2d
 4529 25d2 CDE90401 		strd	r0, [sp, #16]
 4530 25d6 07F69423 		addw	r3, r7, #2708
 4531 25da 1868     		ldr	r0, [r3]	@ float
 4532 25dc FFF7FEFF 		bl	__aeabi_f2d
 4533 25e0 CDE90601 		strd	r0, [sp, #24]
 4534 25e4 07F69823 		addw	r3, r7, #2712
 4535 25e8 07F69C27 		addw	r7, r7, #2716
 4536 25ec 1868     		ldr	r0, [r3]	@ float
 4537 25ee FFF7FEFF 		bl	__aeabi_f2d
 4538 25f2 CDE90801 		strd	r0, [sp, #32]
 4539 25f6 3868     		ldr	r0, [r7]	@ float
 4540 25f8 FFF7FEFF 		bl	__aeabi_f2d
 4541 25fc 4246     		mov	r2, r8
 4542 25fe CDE90A01 		strd	r0, [sp, #40]
 4543 2602 4B46     		mov	r3, r9
 4544 2604 3046     		mov	r0, r6
 4545 2606 3A49     		ldr	r1, .L1626+16
 4546 2608 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 4547              	.L792:
 4548 260c A368     		ldr	r3, [r4, #8]
 4549 260e 0027     		movs	r7, #0
 4550 2610 FEF773B9 		b	.L763
 4551              	.L133:
 4552 2614 2846     		mov	r0, r5
 4553 2616 2146     		mov	r1, r4
 4554 2618 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4555 261c 0028     		cmp	r0, #0
 4556 261e 3EF49DAA 		beq	.L554
 4557 2622 324B     		ldr	r3, .L1626+12
 4558 2624 2046     		mov	r0, r4
 4559 2626 5821     		movs	r1, #88
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 81


 4560 2628 D3F808B0 		ldr	fp, [r3, #8]
 4561 262c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4562 2630 0BF6842A 		addw	r10, fp, #2692
 4563 2634 0028     		cmp	r0, #0
 4564 2636 42F05081 		bne	.L1552
 4565 263a 0746     		mov	r7, r0
 4566              	.L794:
 4567 263c 2046     		mov	r0, r4
 4568 263e 5921     		movs	r1, #89
 4569 2640 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4570 2644 0028     		cmp	r0, #0
 4571 2646 42F03D81 		bne	.L1553
 4572              	.L795:
 4573 264a 2046     		mov	r0, r4
 4574 264c 5A21     		movs	r1, #90
 4575 264e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4576 2652 0028     		cmp	r0, #0
 4577 2654 42F02B81 		bne	.L1554
 4578              	.L796:
 4579 2658 2046     		mov	r0, r4
 4580 265a 4121     		movs	r1, #65
 4581 265c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4582 2660 0028     		cmp	r0, #0
 4583 2662 41F0F385 		bne	.L1555
 4584 2666 2046     		mov	r0, r4
 4585 2668 4221     		movs	r1, #66
 4586 266a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4587 266e 0028     		cmp	r0, #0
 4588 2670 41F00086 		bne	.L798
 4589 2674 002F     		cmp	r7, #0
 4590 2676 41F00D86 		bne	.L799
 4591 267a DAF81C00 		ldr	r0, [r10, #28]	@ float
 4592 267e FFF7FEFF 		bl	__aeabi_f2d
 4593 2682 8046     		mov	r8, r0
 4594 2684 DAF82000 		ldr	r0, [r10, #32]	@ float
 4595 2688 8946     		mov	r9, r1
 4596 268a FFF7FEFF 		bl	__aeabi_f2d
 4597 268e CDE90001 		strd	r0, [sp]
 4598 2692 DAF82400 		ldr	r0, [r10, #36]	@ float
 4599 2696 FFF7FEFF 		bl	__aeabi_f2d
 4600 269a CDE90201 		strd	r0, [sp, #8]
 4601 269e 0BF6B423 		addw	r3, fp, #2740
 4602 26a2 0BF6B82B 		addw	fp, fp, #2744
 4603 26a6 1868     		ldr	r0, [r3]	@ float
 4604 26a8 FFF7FEFF 		bl	__aeabi_f2d
 4605 26ac 0022     		movs	r2, #0
 4606 26ae 114B     		ldr	r3, .L1626+20
 4607 26b0 FFF7FEFF 		bl	__aeabi_dmul
 4608 26b4 CDE90401 		strd	r0, [sp, #16]
 4609 26b8 DBF80000 		ldr	r0, [fp]	@ float
 4610 26bc FFF7FEFF 		bl	__aeabi_f2d
 4611 26c0 0022     		movs	r2, #0
 4612 26c2 0C4B     		ldr	r3, .L1626+20
 4613 26c4 FFF7FEFF 		bl	__aeabi_dmul
 4614 26c8 4B46     		mov	r3, r9
 4615 26ca CDE90601 		strd	r0, [sp, #24]
 4616 26ce 4246     		mov	r2, r8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 82


 4617 26d0 3046     		mov	r0, r6
 4618 26d2 0949     		ldr	r1, .L1626+24
 4619 26d4 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 4620 26d8 A368     		ldr	r3, [r4, #8]
 4621 26da FEF70EB9 		b	.L763
 4622              	.L1627:
 4623 26de 00BF     		.align	2
 4624              	.L1626:
 4625 26e0 00000000 		.word	_ZN6GCodes11axisLettersE
 4626 26e4 58150000 		.word	.LC184
 4627 26e8 0C020000 		.word	.LC35
 4628 26ec 00000000 		.word	reprap
 4629 26f0 E8120000 		.word	.LC163
 4630 26f4 00005940 		.word	1079574528
 4631 26f8 6C130000 		.word	.LC165
 4632 26fc D4000000 		.word	.LC15
 4633 2700 A4000000 		.word	.LC9
 4634              	.L1525:
 4635 2704 2046     		mov	r0, r4
 4636 2706 4521     		movs	r1, #69
 4637 2708 4E46     		mov	r6, r9
 4638 270a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4639 270e 0028     		cmp	r0, #0
 4640 2710 40F06F85 		bne	.L894
 4641 2714 BAF1000F 		cmp	r10, #0
 4642 2718 01F00E85 		beq	.L626
 4643 271c 0746     		mov	r7, r0
 4644 271e A368     		ldr	r3, [r4, #8]
 4645 2720 FEF7EBB8 		b	.L763
 4646              	.L1462:
 4647 2724 BBF1000F 		cmp	fp, #0
 4648 2728 40F03886 		bne	.L1556
 4649              	.L591:
 4650 272c 2046     		mov	r0, r4
 4651 272e 5021     		movs	r1, #80
 4652 2730 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4653 2734 0028     		cmp	r0, #0
 4654 2736 41F0C282 		bne	.L1557
 4655 273a 0746     		mov	r7, r0
 4656              	.L596:
 4657 273c 2868     		ldr	r0, [r5]
 4658 273e D0F89010 		ldr	r1, [r0, #144]
 4659 2742 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersEl
 4660 2746 8446     		mov	ip, r0
 4661 2748 BCE80F00 		ldmia	ip!, {r0, r1, r2, r3}
 4662 274c 0DF1680A 		add	r10, sp, #104
 4663 2750 D646     		mov	lr, r10
 4664 2752 AEE80F00 		stmia	lr!, {r0, r1, r2, r3}
 4665 2756 BCE80F00 		ldmia	ip!, {r0, r1, r2, r3}
 4666 275a AEE80F00 		stmia	lr!, {r0, r1, r2, r3}
 4667 275e 9CE80F00 		ldmia	ip, {r0, r1, r2, r3}
 4668 2762 8EE80F00 		stmia	lr, {r0, r1, r2, r3}
 4669 2766 2046     		mov	r0, r4
 4670 2768 4821     		movs	r1, #72
 4671 276a 20AA     		add	r2, sp, #128
 4672 276c 4346     		mov	r3, r8
 4673 276e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 83


 4674 2772 2046     		mov	r0, r4
 4675 2774 4621     		movs	r1, #70
 4676 2776 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4677 277a 0028     		cmp	r0, #0
 4678 277c 41F08F82 		bne	.L1558
 4679              	.L597:
 4680 2780 2046     		mov	r0, r4
 4681 2782 5421     		movs	r1, #84
 4682 2784 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4683 2788 0028     		cmp	r0, #0
 4684 278a 41F07882 		bne	.L1559
 4685              	.L598:
 4686 278e 2046     		mov	r0, r4
 4687 2790 4921     		movs	r1, #73
 4688 2792 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4689 2796 0028     		cmp	r0, #0
 4690 2798 41F06382 		bne	.L1560
 4691              	.L599:
 4692 279c 2046     		mov	r0, r4
 4693 279e 5221     		movs	r1, #82
 4694 27a0 23AA     		add	r2, sp, #140
 4695 27a2 4346     		mov	r3, r8
 4696 27a4 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 4697 27a8 4346     		mov	r3, r8
 4698 27aa 2046     		mov	r0, r4
 4699 27ac 5321     		movs	r1, #83
 4700 27ae 24AA     		add	r2, sp, #144
 4701 27b0 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 4702 27b4 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 4703 27b8 002B     		cmp	r3, #0
 4704 27ba 5BD1     		bne	.L1561
 4705              	.L600:
 4706 27bc BBF1000F 		cmp	fp, #0
 4707 27c0 5FD1     		bne	.L602
 4708 27c2 002F     		cmp	r7, #0
 4709 27c4 5DD1     		bne	.L602
 4710 27c6 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 4711 27ca 002B     		cmp	r3, #0
 4712 27cc 59D1     		bne	.L602
 4713 27ce 2B68     		ldr	r3, [r5]
 4714 27d0 9AF82C70 		ldrb	r7, [r10, #44]	@ zero_extendqisi2
 4715 27d4 C14A     		ldr	r2, .L1628
 4716 27d6 C249     		ldr	r1, .L1628+4
 4717 27d8 DAF81800 		ldr	r0, [r10, #24]	@ float
 4718 27dc D3F89080 		ldr	r8, [r3, #144]
 4719 27e0 002F     		cmp	r7, #0
 4720 27e2 0CBF     		ite	eq
 4721 27e4 0F46     		moveq	r7, r1
 4722 27e6 1746     		movne	r7, r2
 4723 27e8 FFF7FEFF 		bl	__aeabi_f2d
 4724 27ec DAED086A 		flds	s13, [r10, #32]
 4725 27f0 9AED077A 		flds	s14, [r10, #28]
 4726 27f4 DFEDBB7A 		flds	s15, .L1628+8
 4727 27f8 CDE90001 		strd	r0, [sp]
 4728 27fc 27EE277A 		fmuls	s14, s14, s15
 4729 2800 66EEA77A 		fmuls	s15, s13, s15
 4730 2804 BDEEC77A 		ftosizs	s14, s14
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 84


 4731 2808 FDEEE77A 		ftosizs	s15, s15
 4732 280c DAF82400 		ldr	r0, [r10, #36]	@ float
 4733 2810 8DED027A 		fsts	s14, [sp, #8]	@ int
 4734 2814 CDED037A 		fsts	s15, [sp, #12]	@ int
 4735 2818 FFF7FEFF 		bl	__aeabi_f2d
 4736 281c 3B46     		mov	r3, r7
 4737 281e CDE90401 		strd	r0, [sp, #16]
 4738 2822 4246     		mov	r2, r8
 4739 2824 3046     		mov	r0, r6
 4740 2826 B049     		ldr	r1, .L1628+12
 4741 2828 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 4742 282c 2B68     		ldr	r3, [r5]
 4743 282e D3F89030 		ldr	r3, [r3, #144]
 4744 2832 072B     		cmp	r3, #7
 4745 2834 02F0FE85 		beq	.L1562
 4746              	.L604:
 4747 2838 3046     		mov	r0, r6
 4748 283a AC49     		ldr	r1, .L1628+16
 4749 283c FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 4750 2840 D5F8B021 		ldr	r2, [r5, #432]
 4751 2844 EAB1     		cbz	r2, .L602
 4752 2846 DFF8B0A2 		ldr	r10, .L1628+28
 4753 284a 0027     		movs	r7, #0
 4754 284c 4FF00108 		mov	r8, #1
 4755 2850 02E0     		b	.L606
 4756              	.L605:
 4757 2852 0137     		adds	r7, r7, #1
 4758 2854 BA42     		cmp	r2, r7
 4759 2856 14D9     		bls	.L602
 4760              	.L606:
 4761 2858 08FA07F3 		lsl	r3, r8, r7
 4762 285c 13EA090F 		tst	r3, r9
 4763 2860 F7D0     		beq	.L605
 4764 2862 1AF80720 		ldrb	r2, [r10, r7]	@ zero_extendqisi2
 4765 2866 A249     		ldr	r1, .L1628+20
 4766 2868 3046     		mov	r0, r6
 4767 286a FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 4768 286e D5F8B021 		ldr	r2, [r5, #432]
 4769 2872 EEE7     		b	.L605
 4770              	.L1561:
 4771 2874 2868     		ldr	r0, [r5]
 4772 2876 5246     		mov	r2, r10
 4773 2878 D0F89010 		ldr	r1, [r0, #144]
 4774 287c FFF7FEFF 		bl	_ZN8Platform19SetZProbeParametersElRK16ZProbeParameters
 4775 2880 9CE7     		b	.L600
 4776              	.L602:
 4777 2882 A368     		ldr	r3, [r4, #8]
 4778 2884 0027     		movs	r7, #0
 4779 2886 FEF738B8 		b	.L763
 4780              	.L1496:
 4781 288a 2046     		mov	r0, r4
 4782 288c 4521     		movs	r1, #69
 4783 288e 4E46     		mov	r6, r9
 4784 2890 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4785 2894 0028     		cmp	r0, #0
 4786 2896 41F02780 		bne	.L901
 4787 289a BAF1000F 		cmp	r10, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 85


 4788 289e 00F0C687 		beq	.L400
 4789 28a2 0746     		mov	r7, r0
 4790 28a4 A368     		ldr	r3, [r4, #8]
 4791 28a6 FEF728B8 		b	.L763
 4792              	.L1484:
 4793 28aa B9F1000F 		cmp	r9, #0
 4794 28ae 00F05786 		beq	.L440
 4795 28b2 A368     		ldr	r3, [r4, #8]
 4796 28b4 0027     		movs	r7, #0
 4797 28b6 FEF720B8 		b	.L763
 4798              	.L437:
 4799 28ba 2A68     		ldr	r2, [r5]
 4800 28bc 02EB8303 		add	r3, r2, r3, lsl #2
 4801 28c0 C3ED007A 		fsts	s15, [r3]
 4802 28c4 4FF00109 		mov	r9, #1
 4803 28c8 FEF712BC 		b	.L436
 4804              	.L1509:
 4805 28cc 2046     		mov	r0, r4
 4806 28ce 4521     		movs	r1, #69
 4807 28d0 5646     		mov	r6, r10
 4808 28d2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4809 28d6 0028     		cmp	r0, #0
 4810 28d8 41F0E880 		bne	.L900
 4811 28dc B9F1000F 		cmp	r9, #0
 4812 28e0 01F07080 		beq	.L386
 4813 28e4 0746     		mov	r7, r0
 4814 28e6 A368     		ldr	r3, [r4, #8]
 4815 28e8 FEF707B8 		b	.L763
 4816              	.L1517:
 4817 28ec B9F1000F 		cmp	r9, #0
 4818 28f0 00F0C485 		beq	.L683
 4819 28f4 A368     		ldr	r3, [r4, #8]
 4820 28f6 0027     		movs	r7, #0
 4821 28f8 FDF7FFBF 		b	.L763
 4822              	.L1007:
 4823 28fc 9A46     		mov	r10, r3
 4824              	.L873:
 4825 28fe 2046     		mov	r0, r4
 4826 2900 4521     		movs	r1, #69
 4827 2902 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4828 2906 0028     		cmp	r0, #0
 4829 2908 41F09483 		bne	.L1563
 4830              	.L823:
 4831 290c 40F28A33 		movw	r3, #906
 4832 2910 9945     		cmp	r9, r3
 4833 2912 00F07F86 		beq	.L1564
 4834 2916 BAF1000F 		cmp	r10, #0
 4835 291a 40F08686 		bne	.L912
 4836 291e 40F29133 		movw	r3, #913
 4837 2922 9945     		cmp	r9, r3
 4838 2924 02F01B82 		beq	.L1003
 4839              	.L895:
 4840 2928 7249     		ldr	r1, .L1628+24
 4841              	.L833:
 4842 292a 3046     		mov	r0, r6
 4843 292c FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 4844 2930 D5F8B031 		ldr	r3, [r5, #432]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 86


 4845 2934 13B3     		cbz	r3, .L837
 4846 2936 40F2913A 		movw	r10, #913
 4847 293a B9EB0A0E 		subs	lr, r9, r10
 4848 293e DEF1000A 		rsbs	r10, lr, #0
 4849 2942 6D4F     		ldr	r7, .L1628+28
 4850 2944 5AEB0E0A 		adcs	r10, r10, lr
 4851 2948 4FF00008 		mov	r8, #0
 4852              	.L838:
 4853 294c 4146     		mov	r1, r8
 4854 294e 5246     		mov	r2, r10
 4855 2950 2868     		ldr	r0, [r5]
 4856 2952 17F808B0 		ldrb	fp, [r7, r8]	@ zero_extendqisi2
 4857 2956 FFF7FEFF 		bl	_ZNK8Platform15GetMotorCurrentEjb
 4858 295a 06EE900A 		fmsr	s13, r0
 4859 295e FDEEE66A 		ftosizs	s13, s13
 4860 2962 5A46     		mov	r2, fp
 4861 2964 16EE903A 		fmrs	r3, s13	@ int
 4862 2968 3046     		mov	r0, r6
 4863 296a 6449     		ldr	r1, .L1628+32
 4864 296c FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 4865 2970 D5F8B031 		ldr	r3, [r5, #432]
 4866 2974 08F10108 		add	r8, r8, #1
 4867 2978 4345     		cmp	r3, r8
 4868 297a E7D8     		bhi	.L838
 4869              	.L837:
 4870 297c 3046     		mov	r0, r6
 4871 297e 6049     		ldr	r1, .L1628+36
 4872 2980 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 4873 2984 D5F8B431 		ldr	r3, [r5, #436]
 4874 2988 F3B1     		cbz	r3, .L836
 4875 298a 40F29138 		movw	r8, #913
 4876 298e B9EB0800 		subs	r0, r9, r8
 4877 2992 D0F10008 		rsbs	r8, r0, #0
 4878 2996 58EB0008 		adcs	r8, r8, r0
 4879 299a 0027     		movs	r7, #0
 4880              	.L841:
 4881 299c D5F8B011 		ldr	r1, [r5, #432]
 4882 29a0 2868     		ldr	r0, [r5]
 4883 29a2 3944     		add	r1, r1, r7
 4884 29a4 4246     		mov	r2, r8
 4885 29a6 FFF7FEFF 		bl	_ZNK8Platform15GetMotorCurrentEjb
 4886 29aa 07EE100A 		fmsr	s14, r0
 4887 29ae BDEEC77A 		ftosizs	s14, s14
 4888 29b2 5449     		ldr	r1, .L1628+40
 4889 29b4 17EE102A 		fmrs	r2, s14	@ int
 4890 29b8 3046     		mov	r0, r6
 4891 29ba FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 4892 29be D5F8B431 		ldr	r3, [r5, #436]
 4893 29c2 0137     		adds	r7, r7, #1
 4894 29c4 BB42     		cmp	r3, r7
 4895 29c6 E9D8     		bhi	.L841
 4896              	.L836:
 4897 29c8 40F28A33 		movw	r3, #906
 4898 29cc 9945     		cmp	r9, r3
 4899 29ce 02F07F84 		beq	.L1565
 4900 29d2 A368     		ldr	r3, [r4, #8]
 4901 29d4 0027     		movs	r7, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 87


 4902 29d6 FDF790BF 		b	.L763
 4903              	.L319:
 4904 29da 2046     		mov	r0, r4
 4905 29dc 4321     		movs	r1, #67
 4906 29de FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4907 29e2 0028     		cmp	r0, #0
 4908 29e4 00F06183 		beq	.L326
 4909              	.L321:
 4910 29e8 474B     		ldr	r3, .L1628+44
 4911 29ea D868     		ldr	r0, [r3, #12]
 4912 29ec 90F92F10 		ldrsb	r1, [r0, #47]
 4913 29f0 4A1C     		adds	r2, r1, #1
 4914 29f2 04D0     		beq	.L885
 4915 29f4 95F8D633 		ldrb	r3, [r5, #982]	@ zero_extendqisi2
 4916 29f8 002B     		cmp	r3, #0
 4917 29fa 02F0EE81 		beq	.L1566
 4918              	.L885:
 4919 29fe 0027     		movs	r7, #0
 4920 2a00 85F8D573 		strb	r7, [r5, #981]
 4921 2a04 85F8D673 		strb	r7, [r5, #982]
 4922 2a08 A368     		ldr	r3, [r4, #8]
 4923 2a0a FDF776BF 		b	.L763
 4924              	.L1479:
 4925 2a0e 2046     		mov	r0, r4
 4926 2a10 4521     		movs	r1, #69
 4927 2a12 0D9E     		ldr	r6, [sp, #52]
 4928 2a14 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4929 2a18 0028     		cmp	r0, #0
 4930 2a1a 41F09282 		bne	.L904
 4931 2a1e BAF1000F 		cmp	r10, #0
 4932 2a22 01F02185 		beq	.L522
 4933              	.L517:
 4934 2a26 A368     		ldr	r3, [r4, #8]
 4935 2a28 0027     		movs	r7, #0
 4936 2a2a FDF766BF 		b	.L763
 4937              	.L1512:
 4938 2a2e 2046     		mov	r0, r4
 4939 2a30 4521     		movs	r1, #69
 4940 2a32 4E46     		mov	r6, r9
 4941 2a34 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4942 2a38 0028     		cmp	r0, #0
 4943 2a3a 40F0AC83 		bne	.L896
 4944 2a3e BBF1000F 		cmp	fp, #0
 4945 2a42 40F0C983 		bne	.L248
 4946              	.L251:
 4947 2a46 3046     		mov	r0, r6
 4948 2a48 3049     		ldr	r1, .L1628+48
 4949 2a4a FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 4950 2a4e D5F8B031 		ldr	r3, [r5, #432]
 4951 2a52 C3B1     		cbz	r3, .L256
 4952 2a54 284F     		ldr	r7, .L1628+28
 4953 2a56 4FF00008 		mov	r8, #0
 4954              	.L257:
 4955 2a5a 2B68     		ldr	r3, [r5]
 4956 2a5c 17F80890 		ldrb	r9, [r7, r8]	@ zero_extendqisi2
 4957 2a60 03EB8803 		add	r3, r3, r8, lsl #2
 4958 2a64 08F10108 		add	r8, r8, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 88


 4959 2a68 D3F84801 		ldr	r0, [r3, #328]	@ float
 4960 2a6c FFF7FEFF 		bl	__aeabi_f2d
 4961 2a70 4A46     		mov	r2, r9
 4962 2a72 CDE90001 		strd	r0, [sp]
 4963 2a76 3046     		mov	r0, r6
 4964 2a78 2549     		ldr	r1, .L1628+52
 4965 2a7a FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 4966 2a7e D5F8B031 		ldr	r3, [r5, #432]
 4967 2a82 4345     		cmp	r3, r8
 4968 2a84 E9D8     		bhi	.L257
 4969              	.L256:
 4970 2a86 3046     		mov	r0, r6
 4971 2a88 2249     		ldr	r1, .L1628+56
 4972 2a8a FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 4973 2a8e D5F8B431 		ldr	r3, [r5, #436]
 4974 2a92 DBB1     		cbz	r3, .L252
 4975 2a94 0027     		movs	r7, #0
 4976 2a96 4FF02008 		mov	r8, #32
 4977 2a9a 01E0     		b	.L258
 4978              	.L1567:
 4979 2a9c 4FF03A08 		mov	r8, #58
 4980              	.L258:
 4981 2aa0 D5F8B011 		ldr	r1, [r5, #432]
 4982 2aa4 2B68     		ldr	r3, [r5]
 4983 2aa6 3944     		add	r1, r1, r7
 4984 2aa8 03EB8103 		add	r3, r3, r1, lsl #2
 4985 2aac 0137     		adds	r7, r7, #1
 4986 2aae D3F84801 		ldr	r0, [r3, #328]	@ float
 4987 2ab2 FFF7FEFF 		bl	__aeabi_f2d
 4988 2ab6 4246     		mov	r2, r8
 4989 2ab8 CDE90001 		strd	r0, [sp]
 4990 2abc 3046     		mov	r0, r6
 4991 2abe 1649     		ldr	r1, .L1628+60
 4992 2ac0 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 4993 2ac4 D5F8B431 		ldr	r3, [r5, #436]
 4994 2ac8 BB42     		cmp	r3, r7
 4995 2aca E7D8     		bhi	.L1567
 4996              	.L252:
 4997 2acc A368     		ldr	r3, [r4, #8]
 4998 2ace 0027     		movs	r7, #0
 4999 2ad0 FDF713BF 		b	.L763
 5000              	.L888:
 5001 2ad4 361A     		subs	r6, r6, r0
 5002 2ad6 FFF7F9BB 		b	.L889
 5003              	.L1629:
 5004 2ada 00BF     		.align	2
 5005              	.L1628:
 5006 2adc 9C000000 		.word	.LC7
 5007 2ae0 A0000000 		.word	.LC8
 5008 2ae4 00007042 		.word	1114636288
 5009 2ae8 0C0E0000 		.word	.LC129
 5010 2aec 980E0000 		.word	.LC131
 5011 2af0 AC0E0000 		.word	.LC132
 5012 2af4 8C010000 		.word	.LC30
 5013 2af8 00000000 		.word	_ZN6GCodes11axisLettersE
 5014 2afc A4140000 		.word	.LC176
 5015 2b00 A80B0000 		.word	.LC106
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 89


 5016 2b04 AC140000 		.word	.LC177
 5017 2b08 00000000 		.word	reprap
 5018 2b0c B4040000 		.word	.LC53
 5019 2b10 C4040000 		.word	.LC55
 5020 2b14 C0040000 		.word	.LC54
 5021 2b18 D0040000 		.word	.LC56
 5022              	.L1474:
 5023 2b1c 2046     		mov	r0, r4
 5024 2b1e 4521     		movs	r1, #69
 5025 2b20 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5026 2b24 0028     		cmp	r0, #0
 5027 2b26 41F03884 		bne	.L1568
 5028 2b2a B9F1000F 		cmp	r9, #0
 5029 2b2e 41F0B481 		bne	.L762
 5030 2b32 BAF1000F 		cmp	r10, #0
 5031 2b36 01F03A87 		beq	.L764
 5032 2b3a 4F46     		mov	r7, r9
 5033 2b3c A368     		ldr	r3, [r4, #8]
 5034 2b3e FDF7DCBE 		b	.L763
 5035              	.L207:
 5036 2b42 A368     		ldr	r3, [r4, #8]
 5037 2b44 0027     		movs	r7, #0
 5038 2b46 FDF7D8BE 		b	.L763
 5039              	.L915:
 5040 2b4a 9946     		mov	r9, r3
 5041              	.L143:
 5042 2b4c 2046     		mov	r0, r4
 5043 2b4e 4521     		movs	r1, #69
 5044 2b50 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5045 2b54 0028     		cmp	r0, #0
 5046 2b56 41F0E983 		bne	.L1569
 5047 2b5a 0746     		mov	r7, r0
 5048              	.L146:
 5049 2b5c 2046     		mov	r0, r4
 5050 2b5e 5321     		movs	r1, #83
 5051 2b60 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5052 2b64 0028     		cmp	r0, #0
 5053 2b66 41F0CE83 		bne	.L1570
 5054 2b6a B9F1000F 		cmp	r9, #0
 5055 2b6e 01F0C483 		beq	.L156
 5056 2b72 A368     		ldr	r3, [r4, #8]
 5057 2b74 FDF7C1BE 		b	.L763
 5058              	.L752:
 5059 2b78 D5F8B031 		ldr	r3, [r5, #432]
 5060 2b7c 4345     		cmp	r3, r8
 5061 2b7e 08D8     		bhi	.L747
 5062              	.L755:
 5063 2b80 05EB8301 		add	r1, r5, r3, lsl #2
 5064 2b84 0133     		adds	r3, r3, #1
 5065 2b86 4345     		cmp	r3, r8
 5066 2b88 81ED298A 		fsts	s16, [r1, #164]
 5067 2b8c F8D9     		bls	.L755
 5068 2b8e C5F8B031 		str	r3, [r5, #432]
 5069              	.L747:
 5070 2b92 2846     		mov	r0, r5
 5071 2b94 05F1A401 		add	r1, r5, #164
 5072 2b98 0122     		movs	r2, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 90


 5073 2b9a FFF7FEFF 		bl	_ZN6GCodes12SetPositionsEPKfb
 5074 2b9e 5246     		mov	r2, r10
 5075 2ba0 2868     		ldr	r0, [r5]
 5076 2ba2 4146     		mov	r1, r8
 5077 2ba4 FFF7FEFF 		bl	_ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig
 5078 2ba8 D5F8B031 		ldr	r3, [r5, #432]
 5079 2bac D5F8B421 		ldr	r2, [r5, #436]
 5080 2bb0 1A44     		add	r2, r2, r3
 5081 2bb2 0A2A     		cmp	r2, #10
 5082 2bb4 7EF657A8 		bls	.L751
 5083 2bb8 C3F10A03 		rsb	r3, r3, #10
 5084 2bbc C5F8B431 		str	r3, [r5, #436]
 5085 2bc0 FEF751B8 		b	.L751
 5086              	.L300:
 5087 2bc4 2046     		mov	r0, r4
 5088 2bc6 5321     		movs	r1, #83
 5089 2bc8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5090 2bcc 0028     		cmp	r0, #0
 5091 2bce 41F0E384 		bne	.L302
 5092              	.L377:
 5093 2bd2 A368     		ldr	r3, [r4, #8]
 5094 2bd4 0027     		movs	r7, #0
 5095 2bd6 FDF790BE 		b	.L763
 5096              	.L313:
 5097 2bda 2868     		ldr	r0, [r5]
 5098 2bdc FFF7FEFF 		bl	_ZNK8Platform20GetElectronicsStringEv
 5099 2be0 A849     		ldr	r1, .L1630
 5100 2be2 0090     		str	r0, [sp]
 5101 2be4 A84A     		ldr	r2, .L1630+4
 5102 2be6 A94B     		ldr	r3, .L1630+8
 5103 2be8 3046     		mov	r0, r6
 5104 2bea FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5105 2bee FFF7FEFF 		bl	_ZN13DuetExpansion21GetExpansionBoardNameEv
 5106 2bf2 20B1     		cbz	r0, .L314
 5107 2bf4 0246     		mov	r2, r0
 5108 2bf6 A649     		ldr	r1, .L1630+12
 5109 2bf8 3046     		mov	r0, r6
 5110 2bfa FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 5111              	.L314:
 5112 2bfe 3046     		mov	r0, r6
 5113 2c00 A449     		ldr	r1, .L1630+16
 5114 2c02 A54A     		ldr	r2, .L1630+20
 5115 2c04 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 5116 2c08 0027     		movs	r7, #0
 5117 2c0a A368     		ldr	r3, [r4, #8]
 5118 2c0c FDF775BE 		b	.L763
 5119              	.L609:
 5120 2c10 3046     		mov	r0, r6
 5121 2c12 A249     		ldr	r1, .L1630+24
 5122 2c14 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5123 2c18 0127     		movs	r7, #1
 5124 2c1a A368     		ldr	r3, [r4, #8]
 5125 2c1c FDF76DBE 		b	.L763
 5126              	.L659:
 5127 2c20 5321     		movs	r1, #83
 5128 2c22 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5129 2c26 0028     		cmp	r0, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 91


 5130 2c28 41F0C484 		bne	.L663
 5131 2c2c 0746     		mov	r7, r0
 5132 2c2e A368     		ldr	r3, [r4, #8]
 5133 2c30 FDF763BE 		b	.L763
 5134              	.L844:
 5135 2c34 2B68     		ldr	r3, [r5]
 5136 2c36 03F6B403 		addw	r3, r3, #2228
 5137 2c3a 0746     		mov	r7, r0
 5138 2c3c 1868     		ldr	r0, [r3]	@ float
 5139 2c3e FFF7FEFF 		bl	__aeabi_f2d
 5140 2c42 0B46     		mov	r3, r1
 5141 2c44 0246     		mov	r2, r0
 5142 2c46 9649     		ldr	r1, .L1630+28
 5143 2c48 3046     		mov	r0, r6
 5144 2c4a FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5145 2c4e A368     		ldr	r3, [r4, #8]
 5146 2c50 FDF753BE 		b	.L763
 5147              	.L308:
 5148 2c54 9348     		ldr	r0, .L1630+32
 5149 2c56 FFF7FEFF 		bl	_ZN6RepRap10PrintDebugEv
 5150 2c5a A368     		ldr	r3, [r4, #8]
 5151 2c5c FDF74DBE 		b	.L763
 5152              	.L1485:
 5153 2c60 2046     		mov	r0, r4
 5154 2c62 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 5155 2c66 9049     		ldr	r1, .L1630+36
 5156 2c68 3A46     		mov	r2, r7
 5157 2c6a FFF7FEFF 		bl	strptime
 5158 2c6e 0028     		cmp	r0, #0
 5159 2c70 02F07B80 		beq	.L814
 5160 2c74 3846     		mov	r0, r7
 5161 2c76 D5F80080 		ldr	r8, [r5]
 5162 2c7a FFF7FEFF 		bl	mktime
 5163 2c7e 0146     		mov	r1, r0
 5164 2c80 4046     		mov	r0, r8
 5165 2c82 FFF7FEFF 		bl	_ZN8Platform7SetDateEl
 5166 2c86 0028     		cmp	r0, #0
 5167 2c88 01F07486 		beq	.L1571
 5168 2c8c 2046     		mov	r0, r4
 5169 2c8e 5321     		movs	r1, #83
 5170 2c90 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5171 2c94 0028     		cmp	r0, #0
 5172 2c96 3EF47FAA 		beq	.L819
 5173              	.L910:
 5174 2c9a 2046     		mov	r0, r4
 5175 2c9c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 5176 2ca0 8249     		ldr	r1, .L1630+40
 5177 2ca2 3A46     		mov	r2, r7
 5178 2ca4 FFF7FEFF 		bl	strptime
 5179 2ca8 0028     		cmp	r0, #0
 5180 2caa 02F04B81 		beq	.L817
 5181 2cae 3846     		mov	r0, r7
 5182 2cb0 2F68     		ldr	r7, [r5]
 5183 2cb2 FFF7FEFF 		bl	mktime
 5184 2cb6 0146     		mov	r1, r0
 5185 2cb8 3846     		mov	r0, r7
 5186 2cba FFF7FEFF 		bl	_ZN8Platform7SetTimeEl
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 92


 5187 2cbe 0028     		cmp	r0, #0
 5188 2cc0 7EF46AAA 		bne	.L819
 5189 2cc4 3046     		mov	r0, r6
 5190 2cc6 7A49     		ldr	r1, .L1630+44
 5191 2cc8 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 5192              	.L816:
 5193 2ccc A368     		ldr	r3, [r4, #8]
 5194 2cce 0127     		movs	r7, #1
 5195 2cd0 FDF713BE 		b	.L763
 5196              	.L201:
 5197 2cd4 3046     		mov	r0, r6
 5198 2cd6 7749     		ldr	r1, .L1630+48
 5199 2cd8 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 5200 2cdc A368     		ldr	r3, [r4, #8]
 5201 2cde FDF70CBE 		b	.L763
 5202              	.L477:
 5203 2ce2 2846     		mov	r0, r5
 5204 2ce4 FFF7FEFF 		bl	_ZNK6GCodes17GetBabyStepOffsetEv
 5205 2ce8 FFF7FEFF 		bl	__aeabi_f2d
 5206 2cec 0B46     		mov	r3, r1
 5207 2cee 0246     		mov	r2, r0
 5208 2cf0 7149     		ldr	r1, .L1630+52
 5209 2cf2 3046     		mov	r0, r6
 5210 2cf4 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5211 2cf8 A368     		ldr	r3, [r4, #8]
 5212 2cfa FDF7FEBD 		b	.L763
 5213              	.L343:
 5214 2cfe 2B68     		ldr	r3, [r5]
 5215 2d00 DFED6E7A 		flds	s15, .L1630+56
 5216 2d04 D3F80C37 		ldr	r3, [r3, #1804]
 5217 2d08 07EE103A 		fmsr	s14, r3	@ int
 5218 2d0c B8EE477A 		fuitos	s14, s14
 5219 2d10 0746     		mov	r7, r0
 5220 2d12 C7EE277A 		fdivs	s15, s14, s15
 5221 2d16 17EE900A 		fmrs	r0, s15
 5222 2d1a FFF7FEFF 		bl	__aeabi_f2d
 5223 2d1e 0B46     		mov	r3, r1
 5224 2d20 0246     		mov	r2, r0
 5225 2d22 6749     		ldr	r1, .L1630+60
 5226 2d24 3046     		mov	r0, r6
 5227 2d26 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5228 2d2a A368     		ldr	r3, [r4, #8]
 5229 2d2c FDF7E5BD 		b	.L763
 5230              	.L1495:
 5231 2d30 5C4B     		ldr	r3, .L1630+32
 5232 2d32 D868     		ldr	r0, [r3, #12]
 5233 2d34 90F92F80 		ldrsb	r8, [r0, #47]
 5234 2d38 B8F1FF3F 		cmp	r8, #-1
 5235 2d3c 01F00D84 		beq	.L364
 5236 2d40 4146     		mov	r1, r8
 5237 2d42 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 5238 2d46 FFF7FEFF 		bl	__aeabi_f2d
 5239 2d4a 4246     		mov	r2, r8
 5240 2d4c CDE90001 		strd	r0, [sp]
 5241 2d50 3046     		mov	r0, r6
 5242 2d52 5C49     		ldr	r1, .L1630+64
 5243 2d54 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 93


 5244 2d58 4F46     		mov	r7, r9
 5245 2d5a A368     		ldr	r3, [r4, #8]
 5246 2d5c FDF7CDBD 		b	.L763
 5247              	.L979:
 5248 2d60 0746     		mov	r7, r0
 5249 2d62 FEF70BBC 		b	.L665
 5250              	.L576:
 5251 2d66 3046     		mov	r0, r6
 5252 2d68 5749     		ldr	r1, .L1630+68
 5253 2d6a FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 5254 2d6e 2868     		ldr	r0, [r5]
 5255 2d70 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 5256 2d74 0528     		cmp	r0, #5
 5257 2d76 01F2FE87 		bhi	.L577
 5258 2d7a DFE800F0 		tbb	[pc, r0]
 5259              	.L579:
 5260 2d7e 23       		.byte	(.L578-.L579)/2
 5261 2d7f 23       		.byte	(.L578-.L579)/2
 5262 2d80 1B       		.byte	(.L580-.L579)/2
 5263 2d81 13       		.byte	(.L581-.L579)/2
 5264 2d82 0B       		.byte	(.L582-.L579)/2
 5265 2d83 03       		.byte	(.L583-.L579)/2
 5266              		.align	1
 5267              	.L583:
 5268 2d84 3046     		mov	r0, r6
 5269 2d86 5149     		ldr	r1, .L1630+72
 5270 2d88 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 5271 2d8c 0027     		movs	r7, #0
 5272 2d8e A368     		ldr	r3, [r4, #8]
 5273 2d90 FDF7B3BD 		b	.L763
 5274              	.L582:
 5275 2d94 3046     		mov	r0, r6
 5276 2d96 4E49     		ldr	r1, .L1630+76
 5277 2d98 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 5278 2d9c 0027     		movs	r7, #0
 5279 2d9e A368     		ldr	r3, [r4, #8]
 5280 2da0 FDF7ABBD 		b	.L763
 5281              	.L581:
 5282 2da4 3046     		mov	r0, r6
 5283 2da6 4B49     		ldr	r1, .L1630+80
 5284 2da8 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 5285 2dac 0027     		movs	r7, #0
 5286 2dae A368     		ldr	r3, [r4, #8]
 5287 2db0 FDF7A3BD 		b	.L763
 5288              	.L580:
 5289 2db4 3046     		mov	r0, r6
 5290 2db6 4849     		ldr	r1, .L1630+84
 5291 2db8 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 5292 2dbc 0027     		movs	r7, #0
 5293 2dbe A368     		ldr	r3, [r4, #8]
 5294 2dc0 FDF79BBD 		b	.L763
 5295              	.L578:
 5296 2dc4 3046     		mov	r0, r6
 5297 2dc6 4549     		ldr	r1, .L1630+88
 5298 2dc8 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 5299 2dcc 0027     		movs	r7, #0
 5300 2dce A368     		ldr	r3, [r4, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 94


 5301 2dd0 FDF793BD 		b	.L763
 5302              	.L572:
 5303 2dd4 2868     		ldr	r0, [r5]
 5304 2dd6 4249     		ldr	r1, .L1630+92
 5305 2dd8 90F89EE0 		ldrb	lr, [r0, #158]	@ zero_extendqisi2
 5306 2ddc 90F89D30 		ldrb	r3, [r0, #157]	@ zero_extendqisi2
 5307 2de0 90F89C20 		ldrb	r2, [r0, #156]	@ zero_extendqisi2
 5308 2de4 CDF800E0 		str	lr, [sp]
 5309 2de8 90F89F00 		ldrb	r0, [r0, #159]	@ zero_extendqisi2
 5310 2dec 0190     		str	r0, [sp, #4]
 5311 2dee 3046     		mov	r0, r6
 5312 2df0 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5313 2df4 A368     		ldr	r3, [r4, #8]
 5314 2df6 FDF780BD 		b	.L763
 5315              	.L560:
 5316 2dfa 2F68     		ldr	r7, [r5]
 5317 2dfc 3949     		ldr	r1, .L1630+96
 5318 2dfe 97F8A600 		ldrb	r0, [r7, #166]	@ zero_extendqisi2
 5319 2e02 97F8A530 		ldrb	r3, [r7, #165]	@ zero_extendqisi2
 5320 2e06 97F8A420 		ldrb	r2, [r7, #164]	@ zero_extendqisi2
 5321 2e0a 0090     		str	r0, [sp]
 5322 2e0c 97F8A700 		ldrb	r0, [r7, #167]	@ zero_extendqisi2
 5323 2e10 0190     		str	r0, [sp, #4]
 5324 2e12 97F8A800 		ldrb	r0, [r7, #168]	@ zero_extendqisi2
 5325 2e16 0290     		str	r0, [sp, #8]
 5326 2e18 97F8A900 		ldrb	r0, [r7, #169]	@ zero_extendqisi2
 5327 2e1c 0390     		str	r0, [sp, #12]
 5328 2e1e 3046     		mov	r0, r6
 5329 2e20 7746     		mov	r7, lr
 5330 2e22 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5331 2e26 A368     		ldr	r3, [r4, #8]
 5332 2e28 FDF767BD 		b	.L763
 5333              	.L590:
 5334 2e2c 2146     		mov	r1, r4
 5335 2e2e 2846     		mov	r0, r5
 5336 2e30 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 5337 2e34 2846     		mov	r0, r5
 5338 2e36 2146     		mov	r1, r4
 5339 2e38 3246     		mov	r2, r6
 5340 2e3a FFF7FEFF 		bl	_ZN6GCodes10DefineGridER11GCodeBufferR9StringRef
 5341 2e3e A368     		ldr	r3, [r4, #8]
 5342 2e40 0746     		mov	r7, r0
 5343 2e42 FDF75ABD 		b	.L763
 5344              	.L927:
 5345 2e46 0027     		movs	r7, #0
 5346 2e48 FDF757BD 		b	.L763
 5347              	.L562:
 5348 2e4c 1548     		ldr	r0, .L1630+32
 5349 2e4e FFF7FEFF 		bl	_ZNK6RepRap7GetNameEv
 5350 2e52 2549     		ldr	r1, .L1630+100
 5351 2e54 0246     		mov	r2, r0
 5352 2e56 3046     		mov	r0, r6
 5353 2e58 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5354 2e5c A368     		ldr	r3, [r4, #8]
 5355 2e5e FDF74CBD 		b	.L763
 5356              	.L195:
 5357 2e62 3046     		mov	r0, r6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 95


 5358 2e64 2149     		ldr	r1, .L1630+104
 5359 2e66 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 5360 2e6a 0127     		movs	r7, #1
 5361 2e6c A368     		ldr	r3, [r4, #8]
 5362 2e6e FDF744BD 		b	.L763
 5363              	.L486:
 5364 2e72 0C4B     		ldr	r3, .L1630+32
 5365 2e74 3146     		mov	r1, r6
 5366 2e76 D868     		ldr	r0, [r3, #12]
 5367 2e78 FFF7FEFF 		bl	_ZNK4Heat17GetAutoTuneStatusER9StringRef
 5368 2e7c A368     		ldr	r3, [r4, #8]
 5369 2e7e FDF73CBD 		b	.L763
 5370              	.L1631:
 5371 2e82 00BF     		.align	2
 5372              	.L1630:
 5373 2e84 90050000 		.word	.LC62
 5374 2e88 C8050000 		.word	.LC63
 5375 2e8c EC050000 		.word	.LC64
 5376 2e90 04060000 		.word	.LC65
 5377 2e94 0C060000 		.word	.LC66
 5378 2e98 20060000 		.word	.LC67
 5379 2e9c E8030000 		.word	.LC48
 5380 2ea0 E0140000 		.word	.LC180
 5381 2ea4 00000000 		.word	reprap
 5382 2ea8 D8130000 		.word	.LC168
 5383 2eac 0C140000 		.word	.LC171
 5384 2eb0 18140000 		.word	.LC172
 5385 2eb4 C0030000 		.word	.LC46
 5386 2eb8 48090000 		.word	.LC93
 5387 2ebc 00007A44 		.word	1148846080
 5388 2ec0 50060000 		.word	.LC71
 5389 2ec4 EC060000 		.word	.LC76
 5390 2ec8 200D0000 		.word	.LC120
 5391 2ecc 700D0000 		.word	.LC125
 5392 2ed0 640D0000 		.word	.LC124
 5393 2ed4 5C0D0000 		.word	.LC123
 5394 2ed8 540D0000 		.word	.LC122
 5395 2edc 2C0D0000 		.word	.LC121
 5396 2ee0 F00C0000 		.word	.LC118
 5397 2ee4 740C0000 		.word	.LC115
 5398 2ee8 8C0C0000 		.word	.LC116
 5399 2eec 60030000 		.word	.LC44
 5400              	.L585:
 5401 2ef0 DFF86483 		ldr	r8, .L1632+24
 5402 2ef4 0146     		mov	r1, r0
 5403 2ef6 D8F80800 		ldr	r0, [r8, #8]
 5404 2efa FFF7FEFF 		bl	_ZNK4Move16AxisCompensationEa
 5405 2efe 0121     		movs	r1, #1
 5406 2f00 8146     		mov	r9, r0	@ float
 5407 2f02 D8F80800 		ldr	r0, [r8, #8]
 5408 2f06 FFF7FEFF 		bl	_ZNK4Move16AxisCompensationEa
 5409 2f0a 0221     		movs	r1, #2
 5410 2f0c 8346     		mov	fp, r0	@ float
 5411 2f0e D8F80800 		ldr	r0, [r8, #8]
 5412 2f12 FFF7FEFF 		bl	_ZNK4Move16AxisCompensationEa
 5413 2f16 8246     		mov	r10, r0	@ float
 5414 2f18 4846     		mov	r0, r9	@ float
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 96


 5415 2f1a FFF7FEFF 		bl	__aeabi_f2d
 5416 2f1e 8046     		mov	r8, r0
 5417 2f20 5846     		mov	r0, fp	@ float
 5418 2f22 8946     		mov	r9, r1
 5419 2f24 FFF7FEFF 		bl	__aeabi_f2d
 5420 2f28 CDE90001 		strd	r0, [sp]
 5421 2f2c 5046     		mov	r0, r10	@ float
 5422 2f2e FFF7FEFF 		bl	__aeabi_f2d
 5423 2f32 4B46     		mov	r3, r9
 5424 2f34 CDE90201 		strd	r0, [sp, #8]
 5425 2f38 4246     		mov	r2, r8
 5426 2f3a 3046     		mov	r0, r6
 5427 2f3c C049     		ldr	r1, .L1632
 5428 2f3e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5429 2f42 A368     		ldr	r3, [r4, #8]
 5430 2f44 FDF7D9BC 		b	.L763
 5431              	.L933:
 5432 2f48 0746     		mov	r7, r0
 5433 2f4a FDF7FCBF 		b	.L316
 5434              	.L444:
 5435 2f4e 95EDB07A 		flds	s14, [r5, #704]
 5436 2f52 DFEDBC7A 		flds	s15, .L1632+4
 5437 2f56 67EE277A 		fmuls	s15, s14, s15
 5438 2f5a 17EE900A 		fmrs	r0, s15
 5439 2f5e FFF7FEFF 		bl	__aeabi_f2d
 5440 2f62 0022     		movs	r2, #0
 5441 2f64 B84B     		ldr	r3, .L1632+8
 5442 2f66 FFF7FEFF 		bl	__aeabi_dmul
 5443 2f6a 0B46     		mov	r3, r1
 5444 2f6c 0246     		mov	r2, r0
 5445 2f6e B749     		ldr	r1, .L1632+12
 5446 2f70 3046     		mov	r0, r6
 5447 2f72 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5448 2f76 A368     		ldr	r3, [r4, #8]
 5449 2f78 FDF7BFBC 		b	.L763
 5450              	.L574:
 5451 2f7c 2868     		ldr	r0, [r5]
 5452 2f7e B449     		ldr	r1, .L1632+16
 5453 2f80 90F8A2E0 		ldrb	lr, [r0, #162]	@ zero_extendqisi2
 5454 2f84 90F8A130 		ldrb	r3, [r0, #161]	@ zero_extendqisi2
 5455 2f88 90F8A020 		ldrb	r2, [r0, #160]	@ zero_extendqisi2
 5456 2f8c CDF800E0 		str	lr, [sp]
 5457 2f90 90F8A300 		ldrb	r0, [r0, #163]	@ zero_extendqisi2
 5458 2f94 0190     		str	r0, [sp, #4]
 5459 2f96 3046     		mov	r0, r6
 5460 2f98 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5461 2f9c A368     		ldr	r3, [r4, #8]
 5462 2f9e FDF7ACBC 		b	.L763
 5463              	.L612:
 5464 2fa2 3046     		mov	r0, r6
 5465 2fa4 AB49     		ldr	r1, .L1632+20
 5466 2fa6 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5467 2faa 0127     		movs	r7, #1
 5468 2fac A368     		ldr	r3, [r4, #8]
 5469 2fae FDF7A4BC 		b	.L763
 5470              	.L936:
 5471 2fb2 0027     		movs	r7, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 97


 5472 2fb4 FDF7A1BC 		b	.L763
 5473              	.L937:
 5474 2fb8 0027     		movs	r7, #0
 5475 2fba FDF79EBC 		b	.L763
 5476              	.L960:
 5477 2fbe 0027     		movs	r7, #0
 5478 2fc0 FDF79BBC 		b	.L763
 5479              	.L593:
 5480 2fc4 0121     		movs	r1, #1
 5481 2fc6 01FA0AF3 		lsl	r3, r1, r10
 5482 2fca 29EA0309 		bic	r9, r9, r3
 5483 2fce 8B46     		mov	fp, r1
 5484 2fd0 FDF76BBC 		b	.L592
 5485              	.L1528:
 5486 2fd4 2046     		mov	r0, r4
 5487 2fd6 D9F808A0 		ldr	r10, [r9, #8]
 5488 2fda FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5489 2fde 06EE900A 		fmsr	s13, r0
 5490 2fe2 C6EE887A 		fdivs	s15, s13, s16
 5491 2fe6 4FFA88F1 		sxtb	r1, r8
 5492 2fea 5046     		mov	r0, r10
 5493 2fec 17EE902A 		fmrs	r2, s15
 5494 2ff0 FFF7FEFF 		bl	_ZN4Move19SetAxisCompensationEaf
 5495 2ff4 FEF77EBF 		b	.L586
 5496              	.L1532:
 5497 2ff8 A368     		ldr	r3, [r4, #8]
 5498 2ffa FDF77EBC 		b	.L763
 5499              	.L1473:
 5500 2ffe 9648     		ldr	r0, .L1632+24
 5501 3000 8168     		ldr	r1, [r0, #8]
 5502 3002 0D91     		str	r1, [sp, #52]
 5503 3004 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 5504 3008 0DF1680A 		add	r10, sp, #104
 5505 300c 0346     		mov	r3, r0
 5506 300e 5146     		mov	r1, r10
 5507 3010 0D98     		ldr	r0, [sp, #52]
 5508 3012 0022     		movs	r2, #0
 5509 3014 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhm
 5510 3018 2046     		mov	r0, r4
 5511 301a 5321     		movs	r1, #83
 5512 301c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5513 3020 0028     		cmp	r0, #0
 5514 3022 41F04185 		bne	.L1572
 5515 3026 8146     		mov	r9, r0
 5516              	.L803:
 5517 3028 D5F8B031 		ldr	r3, [r5, #432]
 5518 302c EBB1     		cbz	r3, .L804
 5519 302e 0D98     		ldr	r0, [sp, #52]
 5520 3030 8A4F     		ldr	r7, .L1632+28
 5521 3032 00F63448 		addw	r8, r0, #3124
 5522 3036 4FF0000B 		mov	fp, #0
 5523 303a 05E0     		b	.L806
 5524              	.L805:
 5525 303c D5F8B031 		ldr	r3, [r5, #432]
 5526 3040 5B45     		cmp	r3, fp
 5527 3042 08F10408 		add	r8, r8, #4
 5528 3046 10D9     		bls	.L804
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 98


 5529              	.L806:
 5530 3048 17F80B10 		ldrb	r1, [r7, fp]	@ zero_extendqisi2
 5531 304c 2046     		mov	r0, r4
 5532 304e 0BF1010B 		add	fp, fp, #1
 5533 3052 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5534 3056 0028     		cmp	r0, #0
 5535 3058 F0D0     		beq	.L805
 5536 305a 2046     		mov	r0, r4
 5537 305c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5538 3060 4FF00109 		mov	r9, #1
 5539 3064 C8F80000 		str	r0, [r8]	@ float
 5540 3068 E8E7     		b	.L805
 5541              	.L804:
 5542 306a B9F1000F 		cmp	r9, #0
 5543 306e 01F01E81 		beq	.L807
 5544 3072 2846     		mov	r0, r5
 5545 3074 5146     		mov	r1, r10
 5546 3076 0122     		movs	r2, #1
 5547 3078 FFF7FEFF 		bl	_ZN6GCodes12SetPositionsEPKfb
 5548 307c 2846     		mov	r0, r5
 5549 307e FFF7FEFF 		bl	_ZN6GCodes18SetAllAxesNotHomedEv
 5550              	.L808:
 5551 3082 A368     		ldr	r3, [r4, #8]
 5552 3084 0027     		movs	r7, #0
 5553 3086 FDF738BC 		b	.L763
 5554              	.L193:
 5555 308a 2B6C     		ldr	r3, [r5, #64]
 5556 308c 2846     		mov	r0, r5
 5557 308e 1968     		ldr	r1, [r3]
 5558 3090 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 5559 3094 0028     		cmp	r0, #0
 5560 3096 3DF461AD 		beq	.L554
 5561 309a 2B6C     		ldr	r3, [r5, #64]
 5562 309c 2846     		mov	r0, r5
 5563 309e 1968     		ldr	r1, [r3]
 5564 30a0 FFF7FEFF 		bl	_ZN6GCodes7DoPauseER11GCodeBuffer
 5565 30a4 A368     		ldr	r3, [r4, #8]
 5566 30a6 FDF728BC 		b	.L763
 5567              	.L326:
 5568 30aa 002F     		cmp	r7, #0
 5569 30ac 7FF4A7AC 		bne	.L885
 5570 30b0 95F8D633 		ldrb	r3, [r5, #982]	@ zero_extendqisi2
 5571 30b4 002B     		cmp	r3, #0
 5572 30b6 7FF4A2AC 		bne	.L885
 5573 30ba 674B     		ldr	r3, .L1632+24
 5574 30bc 0121     		movs	r1, #1
 5575 30be D868     		ldr	r0, [r3, #12]
 5576 30c0 FFF7FEFF 		bl	_ZNK4Heat27AllHeatersAtSetTemperaturesEb
 5577 30c4 0746     		mov	r7, r0
 5578 30c6 0028     		cmp	r0, #0
 5579 30c8 7FF499AC 		bne	.L885
 5580 30cc FDF76EBF 		b	.L1428
 5581              	.L1540:
 5582 30d0 08F60428 		addw	r8, r8, #2564
 5583 30d4 D8ED007A 		flds	s15, [r8]
 5584 30d8 F5EEC07A 		fcmpezs	s15
 5585 30dc F1EE10FA 		fmstat
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 99


 5586 30e0 7FF75BA8 		ble	.L535
 5587 30e4 17EE900A 		fmrs	r0, s15
 5588 30e8 FFF7FEFF 		bl	__aeabi_f2d
 5589 30ec 0B46     		mov	r3, r1
 5590 30ee 0246     		mov	r2, r0
 5591 30f0 5B49     		ldr	r1, .L1632+32
 5592 30f2 3046     		mov	r0, r6
 5593 30f4 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5594 30f8 A368     		ldr	r3, [r4, #8]
 5595 30fa FDF7FEBB 		b	.L763
 5596              	.L204:
 5597 30fe 3046     		mov	r0, r6
 5598 3100 5449     		ldr	r1, .L1632+20
 5599 3102 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5600 3106 0127     		movs	r7, #1
 5601 3108 A368     		ldr	r3, [r4, #8]
 5602 310a FDF7F6BB 		b	.L763
 5603              	.L323:
 5604 310e 2046     		mov	r0, r4
 5605 3110 4321     		movs	r1, #67
 5606 3112 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5607 3116 0028     		cmp	r0, #0
 5608 3118 7FF466AC 		bne	.L321
 5609 311c 6FE4     		b	.L885
 5610              	.L303:
 5611 311e 4E48     		ldr	r0, .L1632+24
 5612 3120 FFF7FEFF 		bl	_ZNK6RepRap23GetCurrentOrDefaultToolEv
 5613 3124 0746     		mov	r7, r0
 5614 3126 FDF7A4BC 		b	.L304
 5615              	.L179:
 5616 312a B9F1200F 		cmp	r9, #32
 5617 312e 02F0E380 		beq	.L1573
 5618              	.L180:
 5619 3132 2046     		mov	r0, r4
 5620 3134 0021     		movs	r1, #0
 5621 3136 FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringEb
 5622 313a 0746     		mov	r7, r0
 5623 313c 0028     		cmp	r0, #0
 5624 313e 01F01186 		beq	.L1574
 5625 3142 2846     		mov	r0, r5
 5626 3144 3946     		mov	r1, r7
 5627 3146 FFF7FEFF 		bl	_ZN6GCodes16QueueFileToPrintEPKc
 5628 314a D5F87432 		ldr	r3, [r5, #628]
 5629 314e 002B     		cmp	r3, #0
 5630 3150 02F0F080 		beq	.L181
 5631 3154 DFF800A1 		ldr	r10, .L1632+24
 5632 3158 3946     		mov	r1, r7
 5633 315a DAF81C00 		ldr	r0, [r10, #28]
 5634 315e FFF7FEFF 		bl	_ZN12PrintMonitor13StartingPrintEPKc
 5635 3162 2868     		ldr	r0, [r5]
 5636 3164 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 5637 3168 0228     		cmp	r0, #2
 5638 316a 02F0D480 		beq	.L1575
 5639              	.L182:
 5640 316e 3A46     		mov	r2, r7
 5641 3170 3046     		mov	r0, r6
 5642 3172 3C49     		ldr	r1, .L1632+36
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 100


 5643 3174 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5644              	.L884:
 5645 3178 B9F1200F 		cmp	r9, #32
 5646 317c 02F0B882 		beq	.L184
 5647 3180 A368     		ldr	r3, [r4, #8]
 5648 3182 0027     		movs	r7, #0
 5649 3184 FDF7B9BB 		b	.L763
 5650              	.L240:
 5651 3188 2046     		mov	r0, r4
 5652 318a 4521     		movs	r1, #69
 5653 318c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5654 3190 0028     		cmp	r0, #0
 5655 3192 3FF458AC 		beq	.L251
 5656              	.L896:
 5657 3196 2846     		mov	r0, r5
 5658 3198 2146     		mov	r1, r4
 5659 319a FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 5660 319e 0028     		cmp	r0, #0
 5661 31a0 3DF4DCAC 		beq	.L554
 5662 31a4 D5F8B431 		ldr	r3, [r5, #436]
 5663 31a8 1293     		str	r3, [sp, #72]
 5664 31aa 2046     		mov	r0, r4
 5665 31ac 12AA     		add	r2, sp, #72
 5666 31ae 13A9     		add	r1, sp, #76
 5667 31b0 0123     		movs	r3, #1
 5668 31b2 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 5669 31b6 1298     		ldr	r0, [sp, #72]
 5670 31b8 70B1     		cbz	r0, .L248
 5671 31ba D5F8B011 		ldr	r1, [r5, #432]
 5672 31be 2A68     		ldr	r2, [r5]
 5673 31c0 13AB     		add	r3, sp, #76
 5674 31c2 5231     		adds	r1, r1, #82
 5675 31c4 03EB8000 		add	r0, r3, r0, lsl #2
 5676 31c8 02EB8102 		add	r2, r2, r1, lsl #2
 5677              	.L250:
 5678 31cc 53F8041B 		ldr	r1, [r3], #4	@ float
 5679 31d0 42F8041B 		str	r1, [r2], #4	@ float
 5680 31d4 8342     		cmp	r3, r0
 5681 31d6 F9D1     		bne	.L250
 5682              	.L248:
 5683 31d8 5146     		mov	r1, r10
 5684 31da 2846     		mov	r0, r5
 5685 31dc 0122     		movs	r2, #1
 5686 31de FFF7FEFF 		bl	_ZN6GCodes12SetPositionsEPKfb
 5687 31e2 73E4     		b	.L252
 5688              	.L875:
 5689 31e4 2046     		mov	r0, r4
 5690 31e6 4521     		movs	r1, #69
 5691 31e8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5692 31ec 0028     		cmp	r0, #0
 5693 31ee 00F0A387 		beq	.L626
 5694              	.L894:
 5695 31f2 D5F8B431 		ldr	r3, [r5, #436]
 5696 31f6 1393     		str	r3, [sp, #76]
 5697 31f8 1AA9     		add	r1, sp, #104
 5698 31fa 13AA     		add	r2, sp, #76
 5699 31fc 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 101


 5700 31fe 0123     		movs	r3, #1
 5701 3200 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 5702 3204 1399     		ldr	r1, [sp, #76]
 5703 3206 B1B1     		cbz	r1, .L624
 5704 3208 D5F8B001 		ldr	r0, [r5, #432]
 5705 320c 2A68     		ldr	r2, [r5]
 5706 320e D5ED9B6A 		flds	s13, [r5, #620]
 5707 3212 9FED167A 		flds	s14, .L1632+44
 5708 3216 1AAB     		add	r3, sp, #104
 5709 3218 5C30     		adds	r0, r0, #92
 5710 321a 03EB8101 		add	r1, r3, r1, lsl #2
 5711 321e 02EB8002 		add	r2, r2, r0, lsl #2
 5712              	.L625:
 5713 3222 F3EC017A 		fldmias	r3!, {s15}
 5714 3226 67EEA67A 		fmuls	s15, s15, s13
 5715 322a 8B42     		cmp	r3, r1
 5716 322c 67EE877A 		fmuls	s15, s15, s14
 5717 3230 E2EC017A 		fstmias	r2!, {s15}
 5718 3234 F5D1     		bne	.L625
 5719              	.L624:
 5720 3236 A368     		ldr	r3, [r4, #8]
 5721 3238 0027     		movs	r7, #0
 5722 323a FDF75EBB 		b	.L763
 5723              	.L1633:
 5724 323e 00BF     		.align	2
 5725              	.L1632:
 5726 3240 8C0D0000 		.word	.LC127
 5727 3244 00007042 		.word	1114636288
 5728 3248 00005940 		.word	1079574528
 5729 324c C4080000 		.word	.LC90
 5730 3250 080D0000 		.word	.LC119
 5731 3254 E8030000 		.word	.LC48
 5732 3258 00000000 		.word	reprap
 5733 325c 00000000 		.word	_ZN6GCodes11axisLettersE
 5734 3260 C00B0000 		.word	.LC109
 5735 3264 9C150000 		.word	.LC187
 5736 3268 00007042 		.word	1114636288
 5737 326c 8988883C 		.word	1015580809
 5738 3270 00000000 		.word	0
 5739              	.L1539:
 5740 3274 2046     		mov	r0, r4
 5741 3276 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5742 327a 0146     		mov	r1, r0	@ float
 5743 327c 4046     		mov	r0, r8
 5744 327e FFF7FEFF 		bl	_ZN4Move14SetTaperHeightEf
 5745 3282 0027     		movs	r7, #0
 5746 3284 A368     		ldr	r3, [r4, #8]
 5747 3286 FDF738BB 		b	.L763
 5748              	.L1501:
 5749 328a 2046     		mov	r0, r4
 5750 328c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5751 3290 07EE900A 		fmsr	s15, r0
 5752 3294 F4EE677A 		fcmps	s15, s15
 5753 3298 F1EE10FA 		fmstat
 5754 329c 08D6     		bvs	.L423
 5755 329e 1FED0E7A 		flds	s14, .L1632+40
 5756 32a2 F4EEC77A 		fcmpes	s15, s14
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 102


 5757 32a6 F1EE10FA 		fmstat
 5758 32aa D8BF     		it	le
 5759 32ac F0EE477A 		fcpysle	s15, s14
 5760              	.L423:
 5761 32b0 1FED127A 		flds	s14, .L1632+44
 5762 32b4 67EE877A 		fmuls	s15, s15, s14
 5763 32b8 2046     		mov	r0, r4
 5764 32ba C5EDC47A 		fsts	s15, [r5, #784]
 5765 32be 5A21     		movs	r1, #90
 5766 32c0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5767 32c4 0028     		cmp	r0, #0
 5768 32c6 3EF4DFA8 		beq	.L426
 5769              	.L425:
 5770 32ca 2046     		mov	r0, r4
 5771 32cc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5772 32d0 07EE900A 		fmsr	s15, r0
 5773 32d4 F4EE677A 		fcmps	s15, s15
 5774 32d8 F1EE10FA 		fmstat
 5775 32dc 08D6     		bvs	.L428
 5776 32de F5EEC07A 		fcmpezs	s15
 5777 32e2 1FED1D7A 		flds	s14, .L1632+48
 5778 32e6 F1EE10FA 		fmstat
 5779 32ea D8BF     		it	le
 5780 32ec F0EE477A 		fcpysle	s15, s14
 5781              	.L428:
 5782 32f0 C5EDC57A 		fsts	s15, [r5, #788]
 5783 32f4 A368     		ldr	r3, [r4, #8]
 5784 32f6 0027     		movs	r7, #0
 5785 32f8 FDF7FFBA 		b	.L763
 5786              	.L1500:
 5787 32fc 2046     		mov	r0, r4
 5788 32fe FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5789 3302 07EE900A 		fmsr	s15, r0
 5790 3306 F4EE677A 		fcmps	s15, s15
 5791 330a F1EE10FA 		fmstat
 5792 330e 08D6     		bvs	.L420
 5793 3310 1FED2B7A 		flds	s14, .L1632+40
 5794 3314 F4EEC77A 		fcmpes	s15, s14
 5795 3318 F1EE10FA 		fmstat
 5796 331c D8BF     		it	le
 5797 331e F0EE477A 		fcpysle	s15, s14
 5798              	.L420:
 5799 3322 1FED2E7A 		flds	s14, .L1632+44
 5800 3326 67EE877A 		fmuls	s15, s15, s14
 5801 332a 0127     		movs	r7, #1
 5802 332c C5EDC37A 		fsts	s15, [r5, #780]
 5803 3330 C5EDC47A 		fsts	s15, [r5, #784]
 5804 3334 FEF797B8 		b	.L419
 5805              	.L1499:
 5806 3338 2046     		mov	r0, r4
 5807 333a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5808 333e 07EE900A 		fmsr	s15, r0
 5809 3342 95EDC17A 		flds	s14, [r5, #772]
 5810 3346 F4EE677A 		fcmps	s15, s15
 5811 334a F1EE10FA 		fmstat
 5812 334e B1EE477A 		fnegs	s14, s14
 5813 3352 06D6     		bvs	.L417
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 103


 5814 3354 F4EEC77A 		fcmpes	s15, s14
 5815 3358 F1EE10FA 		fmstat
 5816 335c D8BF     		it	le
 5817 335e F0EE477A 		fcpysle	s15, s14
 5818              	.L417:
 5819 3362 C5EDC27A 		fsts	s15, [r5, #776]
 5820 3366 0127     		movs	r7, #1
 5821 3368 FEF776B8 		b	.L416
 5822              	.L1498:
 5823 336c 2046     		mov	r0, r4
 5824 336e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5825 3372 07EE900A 		fmsr	s15, r0
 5826 3376 F4EE677A 		fcmps	s15, s15
 5827 337a F1EE10FA 		fmstat
 5828 337e 08D6     		bvs	.L414
 5829 3380 F5EEC07A 		fcmpezs	s15
 5830 3384 1FED467A 		flds	s14, .L1632+48
 5831 3388 F1EE10FA 		fmstat
 5832 338c D8BF     		it	le
 5833 338e F0EE477A 		fcpysle	s15, s14
 5834              	.L414:
 5835 3392 C5EDC17A 		fsts	s15, [r5, #772]
 5836 3396 0127     		movs	r7, #1
 5837 3398 FEF757B8 		b	.L413
 5838              	.L1556:
 5839 339c 2868     		ldr	r0, [r5]
 5840 339e 4946     		mov	r1, r9
 5841 33a0 FFF7FEFF 		bl	_ZN8Platform13SetZProbeAxesEm
 5842 33a4 FFF7C2B9 		b	.L591
 5843              	.L1531:
 5844 33a8 2046     		mov	r0, r4
 5845 33aa FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5846 33ae 0246     		mov	r2, r0
 5847 33b0 FEF71BBE 		b	.L545
 5848              	.L1530:
 5849 33b4 2046     		mov	r0, r4
 5850 33b6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5851 33ba 0746     		mov	r7, r0
 5852 33bc FEF70CBE 		b	.L544
 5853              	.L498:
 5854 33c0 2046     		mov	r0, r4
 5855 33c2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5856 33c6 0728     		cmp	r0, #7
 5857 33c8 8046     		mov	r8, r0
 5858 33ca 41F21081 		bls	.L499
 5859 33ce A368     		ldr	r3, [r4, #8]
 5860 33d0 0027     		movs	r7, #0
 5861 33d2 FDF792BA 		b	.L763
 5862              	.L1492:
 5863 33d6 2046     		mov	r0, r4
 5864 33d8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 5865 33dc 0746     		mov	r7, r0
 5866 33de FDF762BF 		b	.L611
 5867              	.L1463:
 5868 33e2 3046     		mov	r0, r6
 5869 33e4 AA49     		ldr	r1, .L1634
 5870 33e6 0823     		movs	r3, #8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 104


 5871 33e8 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5872 33ec FDF709BB 		b	.L271
 5873              	.L905:
 5874 33f0 2F68     		ldr	r7, [r5]
 5875 33f2 2046     		mov	r0, r4
 5876 33f4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5877 33f8 07F6A403 		addw	r3, r7, #2212
 5878 33fc 0027     		movs	r7, #0
 5879 33fe 1860     		str	r0, [r3]	@ float
 5880 3400 A368     		ldr	r3, [r4, #8]
 5881 3402 FDF77ABA 		b	.L763
 5882              	.L1545:
 5883 3406 2F68     		ldr	r7, [r5]
 5884 3408 2046     		mov	r0, r4
 5885 340a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5886 340e 07F50A67 		add	r7, r7, #2208
 5887 3412 4421     		movs	r1, #68
 5888 3414 3860     		str	r0, [r7]	@ float
 5889 3416 2046     		mov	r0, r4
 5890 3418 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5891 341c 0028     		cmp	r0, #0
 5892 341e E7D1     		bne	.L905
 5893 3420 0746     		mov	r7, r0
 5894 3422 A368     		ldr	r3, [r4, #8]
 5895 3424 FDF769BA 		b	.L763
 5896              	.L1493:
 5897 3428 9A48     		ldr	r0, .L1634+4
 5898 342a FFF7FEFF 		bl	_ZN6RepRap13EmergencyStopEv
 5899 342e 2046     		mov	r0, r4
 5900 3430 5021     		movs	r1, #80
 5901 3432 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5902 3436 0028     		cmp	r0, #0
 5903 3438 41F0A984 		bne	.L1576
 5904 343c 0146     		mov	r1, r0
 5905              	.L864:
 5906 343e 2868     		ldr	r0, [r5]
 5907 3440 0022     		movs	r2, #0
 5908 3442 FFF7FEFF 		bl	_ZN8Platform13SoftwareResetEtPKm
 5909 3446 0027     		movs	r7, #0
 5910 3448 A368     		ldr	r3, [r4, #8]
 5911 344a FDF756BA 		b	.L763
 5912              	.L1494:
 5913 344e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5914 3452 0028     		cmp	r0, #0
 5915 3454 C1F2DB83 		blt	.L1577
 5916 3458 0728     		cmp	r0, #7
 5917 345a 01F35085 		bgt	.L359
 5918 345e 8D4B     		ldr	r3, .L1634+4
 5919 3460 DB68     		ldr	r3, [r3, #12]
 5920 3462 0027     		movs	r7, #0
 5921 3464 83F82F00 		strb	r0, [r3, #47]
 5922              	.L358:
 5923 3468 2046     		mov	r0, r4
 5924 346a 5321     		movs	r1, #83
 5925 346c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5926 3470 0028     		cmp	r0, #0
 5927 3472 7DF468AF 		bne	.L897
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 105


 5928 3476 A368     		ldr	r3, [r4, #8]
 5929 3478 FDF73FBA 		b	.L763
 5930              	.L683:
 5931 347c 3046     		mov	r0, r6
 5932 347e 8649     		ldr	r1, .L1634+8
 5933 3480 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 5934 3484 D5F8B071 		ldr	r7, [r5, #432]
 5935 3488 002F     		cmp	r7, #0
 5936 348a 01F0A386 		beq	.L1578
 5937 348e 834F     		ldr	r7, .L1634+12
 5938 3490 DFF82CA2 		ldr	r10, .L1634+48
 5939 3494 DFF82C92 		ldr	r9, .L1634+52
 5940 3498 4FF00008 		mov	r8, #0
 5941 349c 0EE0     		b	.L687
 5942              	.L1580:
 5943 349e 0129     		cmp	r1, #1
 5944 34a0 22D0     		beq	.L984
 5945 34a2 D9B9     		cbnz	r1, .L684
 5946              	.L685:
 5947 34a4 0090     		str	r0, [sp]
 5948 34a6 7E49     		ldr	r1, .L1634+16
 5949 34a8 3046     		mov	r0, r6
 5950 34aa FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 5951 34ae D5F8B031 		ldr	r3, [r5, #432]
 5952 34b2 08F10108 		add	r8, r8, #1
 5953 34b6 4345     		cmp	r3, r8
 5954 34b8 40F2EB84 		bls	.L1579
 5955              	.L687:
 5956 34bc 2968     		ldr	r1, [r5]
 5957 34be 17F80820 		ldrb	r2, [r7, r8]	@ zero_extendqisi2
 5958 34c2 784B     		ldr	r3, .L1634+20
 5959 34c4 7848     		ldr	r0, .L1634+24
 5960 34c6 08F5AA7C 		add	ip, r8, #340
 5961 34ca 01EB080E 		add	lr, r1, r8
 5962 34ce 51F82C10 		ldr	r1, [r1, ip, lsl #2]
 5963 34d2 9EF868E5 		ldrb	lr, [lr, #1384]	@ zero_extendqisi2
 5964 34d6 0229     		cmp	r1, #2
 5965 34d8 E1D1     		bne	.L1580
 5966 34da 744B     		ldr	r3, .L1634+28
 5967              	.L684:
 5968 34dc BEF1000F 		cmp	lr, #0
 5969 34e0 0CBF     		ite	eq
 5970 34e2 5046     		moveq	r0, r10
 5971 34e4 4846     		movne	r0, r9
 5972 34e6 DDE7     		b	.L685
 5973              	.L984:
 5974 34e8 714B     		ldr	r3, .L1634+32
 5975 34ea F7E7     		b	.L684
 5976              	.L1516:
 5977 34ec 2046     		mov	r0, r4
 5978 34ee FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5979 34f2 10F1000A 		adds	r10, r0, #0
 5980 34f6 18BF     		it	ne
 5981 34f8 4FF0010A 		movne	r10, #1
 5982 34fc FEF734BB 		b	.L676
 5983              	.L907:
 5984 3500 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 106


 5985 3502 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5986 3506 634B     		ldr	r3, .L1634+4
 5987 3508 0028     		cmp	r0, #0
 5988 350a 01F0E880 		beq	.L568
 5989 350e 5868     		ldr	r0, [r3, #4]
 5990 3510 FFF7FEFF 		bl	_ZN7Network6EnableEv
 5991              	.L569:
 5992 3514 A368     		ldr	r3, [r4, #8]
 5993 3516 0027     		movs	r7, #0
 5994 3518 FDF7EFB9 		b	.L763
 5995              	.L1478:
 5996 351c 2846     		mov	r0, r5
 5997 351e 2146     		mov	r1, r4
 5998 3520 4FF40A72 		mov	r2, #552
 5999 3524 FFF7FEFF 		bl	_ZN6GCodes18SetEthernetAddressER11GCodeBufferi
 6000 3528 2046     		mov	r0, r4
 6001 352a 5321     		movs	r1, #83
 6002 352c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6003 3530 0028     		cmp	r0, #0
 6004 3532 E5D1     		bne	.L907
 6005 3534 0746     		mov	r7, r0
 6006 3536 A368     		ldr	r3, [r4, #8]
 6007 3538 FDF7DFB9 		b	.L763
 6008              	.L1519:
 6009 353c 2046     		mov	r0, r4
 6010 353e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6011 3542 0146     		mov	r1, r0
 6012 3544 FEF766BB 		b	.L481
 6013              	.L1518:
 6014 3548 2046     		mov	r0, r4
 6015 354a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6016 354e 0746     		mov	r7, r0
 6017 3550 FEF757BB 		b	.L480
 6018              	.L1491:
 6019 3554 2046     		mov	r0, r4
 6020 3556 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 6021 355a 0746     		mov	r7, r0
 6022 355c FDF789BE 		b	.L608
 6023              	.L440:
 6024 3560 3046     		mov	r0, r6
 6025 3562 5449     		ldr	r1, .L1634+36
 6026 3564 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 6027 3568 D5F8B071 		ldr	r7, [r5, #432]
 6028 356c 002F     		cmp	r7, #0
 6029 356e 01F0AC86 		beq	.L1581
 6030 3572 4A4F     		ldr	r7, .L1634+12
 6031 3574 4FF00008 		mov	r8, #0
 6032 3578 4FF02D0B 		mov	fp, #45
 6033 357c 01E0     		b	.L442
 6034              	.L441:
 6035 357e 4FF02C0B 		mov	fp, #44
 6036              	.L442:
 6037 3582 2968     		ldr	r1, [r5]
 6038 3584 17F808A0 		ldrb	r10, [r7, r8]	@ zero_extendqisi2
 6039 3588 01EB8809 		add	r9, r1, r8, lsl #2
 6040 358c 09F5A763 		add	r3, r9, #1336
 6041 3590 09F5A469 		add	r9, r9, #1312
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 107


 6042 3594 1868     		ldr	r0, [r3]	@ float
 6043 3596 FFF7FEFF 		bl	__aeabi_f2d
 6044 359a CDE90001 		strd	r0, [sp]
 6045 359e D9F80000 		ldr	r0, [r9]	@ float
 6046 35a2 FFF7FEFF 		bl	__aeabi_f2d
 6047 35a6 5346     		mov	r3, r10
 6048 35a8 CDE90201 		strd	r0, [sp, #8]
 6049 35ac 5A46     		mov	r2, fp
 6050 35ae 3046     		mov	r0, r6
 6051 35b0 4149     		ldr	r1, .L1634+40
 6052 35b2 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 6053 35b6 D5F8B031 		ldr	r3, [r5, #432]
 6054 35ba 08F10108 		add	r8, r8, #1
 6055 35be 4345     		cmp	r3, r8
 6056 35c0 DDD8     		bhi	.L441
 6057 35c2 A368     		ldr	r3, [r4, #8]
 6058 35c4 0027     		movs	r7, #0
 6059 35c6 FDF798B9 		b	.L763
 6060              	.L1483:
 6061 35ca 2046     		mov	r0, r4
 6062 35cc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6063 35d0 B0F1010B 		subs	fp, r0, #1
 6064 35d4 DBF1000A 		rsbs	r10, fp, #0
 6065 35d8 5AEB0B0A 		adcs	r10, r10, fp
 6066 35dc FDF77EBD 		b	.L432
 6067              	.L902:
 6068 35e0 2046     		mov	r0, r4
 6069 35e2 2F68     		ldr	r7, [r5]
 6070 35e4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6071 35e8 C7F84401 		str	r0, [r7, #324]	@ float
 6072 35ec A368     		ldr	r3, [r4, #8]
 6073 35ee 0027     		movs	r7, #0
 6074 35f0 FDF783B9 		b	.L763
 6075              	.L1497:
 6076 35f4 2046     		mov	r0, r4
 6077 35f6 2F68     		ldr	r7, [r5]
 6078 35f8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6079 35fc 5421     		movs	r1, #84
 6080 35fe C7F84001 		str	r0, [r7, #320]	@ float
 6081 3602 2046     		mov	r0, r4
 6082 3604 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6083 3608 0028     		cmp	r0, #0
 6084 360a E9D1     		bne	.L902
 6085 360c 0746     		mov	r7, r0
 6086 360e A368     		ldr	r3, [r4, #8]
 6087 3610 FDF773B9 		b	.L763
 6088              	.L1564:
 6089 3614 2046     		mov	r0, r4
 6090 3616 4921     		movs	r1, #73
 6091 3618 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6092 361c 0028     		cmp	r0, #0
 6093 361e 41F03185 		bne	.L829
 6094 3622 BAF1000F 		cmp	r10, #0
 6095 3626 3FF47FA9 		beq	.L895
 6096              	.L912:
 6097 362a A368     		ldr	r3, [r4, #8]
 6098 362c 0027     		movs	r7, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 108


 6099 362e FDF764B9 		b	.L763
 6100              	.L340:
 6101 3632 2046     		mov	r0, r4
 6102 3634 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6103 3638 0146     		mov	r1, r0
 6104 363a 0028     		cmp	r0, #0
 6105 363c 3DF4C6AC 		beq	.L341
 6106 3640 2868     		ldr	r0, [r5]
 6107 3642 FFF7FEFF 		bl	_ZN8Platform14DiagnosticTestEi
 6108 3646 0027     		movs	r7, #0
 6109 3648 A368     		ldr	r3, [r4, #8]
 6110 364a FDF756B9 		b	.L763
 6111              	.L1527:
 6112 364e 2046     		mov	r0, r4
 6113 3650 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6114 3654 0030     		adds	r0, r0, #0
 6115 3656 18BF     		it	ne
 6116 3658 0120     		movne	r0, #1
 6117 365a 85F89602 		strb	r0, [r5, #662]
 6118 365e A368     		ldr	r3, [r4, #8]
 6119 3660 0027     		movs	r7, #0
 6120 3662 FDF74AB9 		b	.L763
 6121              	.L697:
 6122 3666 2046     		mov	r0, r4
 6123 3668 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6124 366c 0138     		subs	r0, r0, #1
 6125 366e 0228     		cmp	r0, #2
 6126 3670 9CBF     		itt	ls
 6127 3672 124B     		ldrls	r3, .L1634+44
 6128 3674 53F820A0 		ldrls	r10, [r3, r0, lsl #2]
 6129 3678 D5F8B031 		ldr	r3, [r5, #432]
 6130 367c 88BF     		it	hi
 6131 367e 4FF0000A 		movhi	r10, #0
 6132 3682 002B     		cmp	r3, #0
 6133 3684 00F00284 		beq	.L703
 6134 3688 044F     		ldr	r7, .L1634+12
 6135 368a 4FF00008 		mov	r8, #0
 6136 368e 22E0     		b	.L705
 6137              	.L1635:
 6138              		.align	2
 6139              	.L1634:
 6140 3690 D8040000 		.word	.LC57
 6141 3694 00000000 		.word	reprap
 6142 3698 54110000 		.word	.LC148
 6143 369c 00000000 		.word	_ZN6GCodes11axisLettersE
 6144 36a0 6C110000 		.word	.LC149
 6145 36a4 24010000 		.word	.LC22
 6146 36a8 A4000000 		.word	.LC9
 6147 36ac 2C010000 		.word	.LC23
 6148 36b0 38010000 		.word	.LC24
 6149 36b4 78080000 		.word	.LC87
 6150 36b8 88080000 		.word	.LC88
 6151 36bc 00000000 		.word	.LANCHOR6
 6152 36c0 40010000 		.word	.LC25
 6153 36c4 44010000 		.word	.LC26
 6154              	.L704:
 6155 36c8 D5F8B031 		ldr	r3, [r5, #432]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 109


 6156 36cc 08F10108 		add	r8, r8, #1
 6157 36d0 4345     		cmp	r3, r8
 6158 36d2 40F2DB83 		bls	.L703
 6159              	.L705:
 6160 36d6 2046     		mov	r0, r4
 6161 36d8 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 6162 36dc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6163 36e0 0028     		cmp	r0, #0
 6164 36e2 F1D0     		beq	.L704
 6165 36e4 2868     		ldr	r0, [r5]
 6166 36e6 4146     		mov	r1, r8
 6167 36e8 FFF7FEFF 		bl	_ZNK8Platform7StoppedEj
 6168 36ec 8245     		cmp	r10, r0
 6169 36ee EBD0     		beq	.L704
 6170 36f0 4FF00009 		mov	r9, #0
 6171              	.L700:
 6172 36f4 0DF14C08 		add	r8, sp, #76
 6173 36f8 0723     		movs	r3, #7
 6174 36fa 2046     		mov	r0, r4
 6175 36fc 4521     		movs	r1, #69
 6176 36fe C8F80030 		str	r3, [r8]
 6177 3702 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6178 3706 0028     		cmp	r0, #0
 6179 3708 3EF4B1A9 		beq	.L1460
 6180 370c 1AA9     		add	r1, sp, #104
 6181 370e 2046     		mov	r0, r4
 6182 3710 4246     		mov	r2, r8
 6183 3712 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 6184 3716 D8F80070 		ldr	r7, [r8]
 6185 371a 002F     		cmp	r7, #0
 6186 371c 3DF4E3AD 		beq	.L175
 6187 3720 1A99     		ldr	r1, [sp, #104]
 6188 3722 0629     		cmp	r1, #6
 6189 3724 14D8     		bhi	.L708
 6190 3726 0DF1680B 		add	fp, sp, #104
 6191 372a 0027     		movs	r7, #0
 6192              	.L709:
 6193 372c 0331     		adds	r1, r1, #3
 6194 372e 2868     		ldr	r0, [r5]
 6195 3730 FFF7FEFF 		bl	_ZNK8Platform7StoppedEj
 6196 3734 8245     		cmp	r10, r0
 6197 3736 07F10107 		add	r7, r7, #1
 6198 373a 7DF4E4AD 		bne	.L210
 6199 373e D8F80030 		ldr	r3, [r8]
 6200 3742 BB42     		cmp	r3, r7
 6201 3744 7EF693A9 		bls	.L1460
 6202 3748 5BF8041F 		ldr	r1, [fp, #4]!
 6203 374c 0629     		cmp	r1, #6
 6204 374e EDD9     		bls	.L709
 6205              	.L708:
 6206 3750 3046     		mov	r0, r6
 6207 3752 C749     		ldr	r1, .L1636
 6208 3754 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 6209 3758 0127     		movs	r7, #1
 6210 375a FDF7C8BD 		b	.L1440
 6211              	.L720:
 6212 375e 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 110


 6213 3760 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6214 3764 0928     		cmp	r0, #9
 6215 3766 8046     		mov	r8, r0
 6216 3768 01F22E83 		bhi	.L721
 6217 376c 40F24623 		movw	r3, #582
 6218 3770 9945     		cmp	r9, r3
 6219 3772 01F07783 		beq	.L1582
 6220 3776 2046     		mov	r0, r4
 6221 3778 4321     		movs	r1, #67
 6222 377a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6223 377e 0028     		cmp	r0, #0
 6224 3780 41F06F84 		bne	.L1583
 6225 3784 0622     		movs	r2, #6
 6226 3786 02FB08F2 		mul	r2, r2, r8
 6227 378a 02F54673 		add	r3, r2, #792
 6228 378e 2B44     		add	r3, r3, r5
 6229 3790 991C     		adds	r1, r3, #2
 6230 3792 5B88     		ldrh	r3, [r3, #2]
 6231 3794 002B     		cmp	r3, #0
 6232 3796 01F05C83 		beq	.L1584
 6233              	.L727:
 6234 379a 2046     		mov	r0, r4
 6235 379c 5321     		movs	r1, #83
 6236 379e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6237 37a2 0746     		mov	r7, r0
 6238 37a4 0028     		cmp	r0, #0
 6239 37a6 41F09784 		bne	.L725
 6240 37aa 4246     		mov	r2, r8
 6241 37ac B149     		ldr	r1, .L1636+4
 6242 37ae 3046     		mov	r0, r6
 6243 37b0 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 6244 37b4 0623     		movs	r3, #6
 6245 37b6 03FB0858 		mla	r8, r3, r8, r5
 6246 37ba 96E80600 		ldmia	r6, {r1, r2}
 6247 37be B8F81A33 		ldrh	r3, [r8, #794]
 6248 37c2 2846     		mov	r0, r5
 6249 37c4 FFF7FEFF 		bl	_ZN6GCodes12ListTriggersE9StringReft
 6250 37c8 AB49     		ldr	r1, .L1636+8
 6251 37ca 3046     		mov	r0, r6
 6252 37cc FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 6253 37d0 B8F81C33 		ldrh	r3, [r8, #796]
 6254 37d4 96E80600 		ldmia	r6, {r1, r2}
 6255 37d8 2846     		mov	r0, r5
 6256 37da FFF7FEFF 		bl	_ZN6GCodes12ListTriggersE9StringReft
 6257 37de 3046     		mov	r0, r6
 6258 37e0 A649     		ldr	r1, .L1636+12
 6259 37e2 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 6260 37e6 98F81E33 		ldrb	r3, [r8, #798]	@ zero_extendqisi2
 6261 37ea 012B     		cmp	r3, #1
 6262 37ec 01F07587 		beq	.L742
 6263 37f0 A368     		ldr	r3, [r4, #8]
 6264 37f2 FDF782B8 		b	.L763
 6265              	.L1487:
 6266 37f6 2046     		mov	r0, r4
 6267 37f8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6268 37fc C0B2     		uxtb	r0, r0
 6269 37fe 4FFA80F8 		sxtb	r8, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 111


 6270 3802 B8F1000F 		cmp	r8, #0
 6271 3806 C1F24F85 		blt	.L1585
 6272 380a B8F1070F 		cmp	r8, #7
 6273 380e 01F3F681 		bgt	.L1586
 6274 3812 DFF894A2 		ldr	r10, .L1636+56
 6275 3816 DAF80C30 		ldr	r3, [r10, #12]
 6276 381a 83F82E00 		strb	r0, [r3, #46]
 6277 381e FDF7E4BC 		b	.L349
 6278              	.L877:
 6279 3822 2046     		mov	r0, r4
 6280 3824 4521     		movs	r1, #69
 6281 3826 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6282 382a 0028     		cmp	r0, #0
 6283 382c 5CD1     		bne	.L901
 6284              	.L400:
 6285 382e 3046     		mov	r0, r6
 6286 3830 9349     		ldr	r1, .L1636+16
 6287 3832 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 6288 3836 D5F8B031 		ldr	r3, [r5, #432]
 6289 383a 13B3     		cbz	r3, .L404
 6290 383c 914F     		ldr	r7, .L1636+20
 6291 383e 9FED928A 		flds	s16, .L1636+24
 6292 3842 4FF00008 		mov	r8, #0
 6293              	.L405:
 6294 3846 2B68     		ldr	r3, [r5]
 6295 3848 D5ED9B7A 		flds	s15, [r5, #620]
 6296 384c 17F80890 		ldrb	r9, [r7, r8]	@ zero_extendqisi2
 6297 3850 03EB8803 		add	r3, r3, r8, lsl #2
 6298 3854 93ED3C7A 		flds	s14, [r3, #240]
 6299 3858 67EE887A 		fmuls	s15, s15, s16
 6300 385c 08F10108 		add	r8, r8, #1
 6301 3860 87EE277A 		fdivs	s14, s14, s15
 6302 3864 17EE100A 		fmrs	r0, s14
 6303 3868 FFF7FEFF 		bl	__aeabi_f2d
 6304 386c 4A46     		mov	r2, r9
 6305 386e CDE90001 		strd	r0, [sp]
 6306 3872 3046     		mov	r0, r6
 6307 3874 8549     		ldr	r1, .L1636+28
 6308 3876 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 6309 387a D5F8B031 		ldr	r3, [r5, #432]
 6310 387e 4345     		cmp	r3, r8
 6311 3880 E1D8     		bhi	.L405
 6312              	.L404:
 6313 3882 3046     		mov	r0, r6
 6314 3884 8249     		ldr	r1, .L1636+32
 6315 3886 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 6316 388a D5F8B471 		ldr	r7, [r5, #436]
 6317 388e 002F     		cmp	r7, #0
 6318 3890 01F0F985 		beq	.L1587
 6319 3894 9FED7C8A 		flds	s16, .L1636+24
 6320 3898 0027     		movs	r7, #0
 6321 389a 4FF02008 		mov	r8, #32
 6322 389e 01E0     		b	.L407
 6323              	.L406:
 6324 38a0 4FF03A08 		mov	r8, #58
 6325              	.L407:
 6326 38a4 D5F8B011 		ldr	r1, [r5, #432]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 112


 6327 38a8 2B68     		ldr	r3, [r5]
 6328 38aa D5ED9B7A 		flds	s15, [r5, #620]
 6329 38ae 3944     		add	r1, r1, r7
 6330 38b0 03EB8103 		add	r3, r3, r1, lsl #2
 6331 38b4 93ED3C7A 		flds	s14, [r3, #240]
 6332 38b8 67EE887A 		fmuls	s15, s15, s16
 6333 38bc 0137     		adds	r7, r7, #1
 6334 38be 87EE277A 		fdivs	s14, s14, s15
 6335 38c2 17EE100A 		fmrs	r0, s14
 6336 38c6 FFF7FEFF 		bl	__aeabi_f2d
 6337 38ca 4246     		mov	r2, r8
 6338 38cc CDE90001 		strd	r0, [sp]
 6339 38d0 3046     		mov	r0, r6
 6340 38d2 7049     		ldr	r1, .L1636+36
 6341 38d4 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 6342 38d8 D5F8B431 		ldr	r3, [r5, #436]
 6343 38dc BB42     		cmp	r3, r7
 6344 38de DFD8     		bhi	.L406
 6345 38e0 A368     		ldr	r3, [r4, #8]
 6346 38e2 0027     		movs	r7, #0
 6347 38e4 FDF709B8 		b	.L763
 6348              	.L901:
 6349 38e8 D5F8B431 		ldr	r3, [r5, #436]
 6350 38ec 1393     		str	r3, [sp, #76]
 6351 38ee 1AA9     		add	r1, sp, #104
 6352 38f0 13AA     		add	r2, sp, #76
 6353 38f2 2046     		mov	r0, r4
 6354 38f4 0123     		movs	r3, #1
 6355 38f6 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 6356 38fa 1399     		ldr	r1, [sp, #76]
 6357 38fc B1B1     		cbz	r1, .L398
 6358 38fe D5F8B001 		ldr	r0, [r5, #432]
 6359 3902 2A68     		ldr	r2, [r5]
 6360 3904 D5ED9B6A 		flds	s13, [r5, #620]
 6361 3908 9FED5F7A 		flds	s14, .L1636+24
 6362 390c 1AAB     		add	r3, sp, #104
 6363 390e 3C30     		adds	r0, r0, #60
 6364 3910 03EB8101 		add	r1, r3, r1, lsl #2
 6365 3914 02EB8002 		add	r2, r2, r0, lsl #2
 6366              	.L399:
 6367 3918 F3EC017A 		fldmias	r3!, {s15}
 6368 391c 67EEA67A 		fmuls	s15, s15, s13
 6369 3920 8B42     		cmp	r3, r1
 6370 3922 67EE877A 		fmuls	s15, s15, s14
 6371 3926 E2EC017A 		fstmias	r2!, {s15}
 6372 392a F5D1     		bne	.L399
 6373              	.L398:
 6374 392c A368     		ldr	r3, [r4, #8]
 6375 392e 0027     		movs	r7, #0
 6376 3930 FCF7E3BF 		b	.L763
 6377              	.L1475:
 6378 3934 2046     		mov	r0, r4
 6379 3936 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6380 393a 0728     		cmp	r0, #7
 6381 393c 8046     		mov	r8, r0
 6382 393e 7DF69EA9 		bls	.L366
 6383 3942 3046     		mov	r0, r6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 113


 6384 3944 5449     		ldr	r1, .L1636+40
 6385 3946 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 6386 394a 0127     		movs	r7, #1
 6387 394c A368     		ldr	r3, [r4, #8]
 6388 394e FCF7D4BF 		b	.L763
 6389              	.L430:
 6390 3952 95EDC18A 		flds	s16, [r5, #772]
 6391 3956 18EE100A 		fmrs	r0, s16
 6392 395a FFF7FEFF 		bl	__aeabi_f2d
 6393 395e D5EDC27A 		flds	s15, [r5, #776]
 6394 3962 78EE277A 		fadds	s15, s16, s15
 6395 3966 8046     		mov	r8, r0
 6396 3968 17EE900A 		fmrs	r0, s15
 6397 396c 8946     		mov	r9, r1
 6398 396e FFF7FEFF 		bl	__aeabi_f2d
 6399 3972 D5EDC46A 		flds	s13, [r5, #784]
 6400 3976 95EDC37A 		flds	s14, [r5, #780]
 6401 397a DFED487A 		flds	s15, .L1636+44
 6402 397e CDE90001 		strd	r0, [sp]
 6403 3982 27EE277A 		fmuls	s14, s14, s15
 6404 3986 66EEA77A 		fmuls	s15, s13, s15
 6405 398a BDEEC77A 		ftosizs	s14, s14
 6406 398e FDEEE77A 		ftosizs	s15, s15
 6407 3992 D5F81403 		ldr	r0, [r5, #788]	@ float
 6408 3996 8DED027A 		fsts	s14, [sp, #8]	@ int
 6409 399a CDED037A 		fsts	s15, [sp, #12]	@ int
 6410 399e FFF7FEFF 		bl	__aeabi_f2d
 6411 39a2 4B46     		mov	r3, r9
 6412 39a4 CDE90401 		strd	r0, [sp, #16]
 6413 39a8 4246     		mov	r2, r8
 6414 39aa 3046     		mov	r0, r6
 6415 39ac 3C49     		ldr	r1, .L1636+48
 6416 39ae FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 6417 39b2 A368     		ldr	r3, [r4, #8]
 6418 39b4 FCF7A1BF 		b	.L763
 6419              	.L879:
 6420 39b8 2046     		mov	r0, r4
 6421 39ba 4521     		movs	r1, #69
 6422 39bc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6423 39c0 0028     		cmp	r0, #0
 6424 39c2 73D1     		bne	.L900
 6425              	.L386:
 6426 39c4 3046     		mov	r0, r6
 6427 39c6 3749     		ldr	r1, .L1636+52
 6428 39c8 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 6429 39cc D5F8B031 		ldr	r3, [r5, #432]
 6430 39d0 F3B1     		cbz	r3, .L390
 6431 39d2 2C4F     		ldr	r7, .L1636+20
 6432 39d4 4FF00008 		mov	r8, #0
 6433              	.L391:
 6434 39d8 2B68     		ldr	r3, [r5]
 6435 39da D5ED9B7A 		flds	s15, [r5, #620]
 6436 39de 17F80890 		ldrb	r9, [r7, r8]	@ zero_extendqisi2
 6437 39e2 03EB8803 		add	r3, r3, r8, lsl #2
 6438 39e6 93ED467A 		flds	s14, [r3, #280]
 6439 39ea C7EE277A 		fdivs	s15, s14, s15
 6440 39ee 08F10108 		add	r8, r8, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 114


 6441 39f2 17EE900A 		fmrs	r0, s15
 6442 39f6 FFF7FEFF 		bl	__aeabi_f2d
 6443 39fa 4A46     		mov	r2, r9
 6444 39fc CDE90001 		strd	r0, [sp]
 6445 3a00 3046     		mov	r0, r6
 6446 3a02 2249     		ldr	r1, .L1636+28
 6447 3a04 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 6448 3a08 D5F8B031 		ldr	r3, [r5, #432]
 6449 3a0c 4345     		cmp	r3, r8
 6450 3a0e E3D8     		bhi	.L391
 6451              	.L390:
 6452 3a10 3046     		mov	r0, r6
 6453 3a12 1F49     		ldr	r1, .L1636+32
 6454 3a14 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 6455 3a18 D5F8B471 		ldr	r7, [r5, #436]
 6456 3a1c 002F     		cmp	r7, #0
 6457 3a1e 01F0A084 		beq	.L1588
 6458 3a22 0027     		movs	r7, #0
 6459 3a24 4FF02008 		mov	r8, #32
 6460 3a28 01E0     		b	.L393
 6461              	.L392:
 6462 3a2a 4FF03A08 		mov	r8, #58
 6463              	.L393:
 6464 3a2e D5F8B011 		ldr	r1, [r5, #432]
 6465 3a32 2B68     		ldr	r3, [r5]
 6466 3a34 D5ED9B7A 		flds	s15, [r5, #620]
 6467 3a38 3944     		add	r1, r1, r7
 6468 3a3a 03EB8103 		add	r3, r3, r1, lsl #2
 6469 3a3e 93ED467A 		flds	s14, [r3, #280]
 6470 3a42 C7EE277A 		fdivs	s15, s14, s15
 6471 3a46 0137     		adds	r7, r7, #1
 6472 3a48 17EE900A 		fmrs	r0, s15
 6473 3a4c FFF7FEFF 		bl	__aeabi_f2d
 6474 3a50 4246     		mov	r2, r8
 6475 3a52 CDE90001 		strd	r0, [sp]
 6476 3a56 3046     		mov	r0, r6
 6477 3a58 0E49     		ldr	r1, .L1636+36
 6478 3a5a FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 6479 3a5e D5F8B431 		ldr	r3, [r5, #436]
 6480 3a62 BB42     		cmp	r3, r7
 6481 3a64 E1D8     		bhi	.L392
 6482 3a66 A368     		ldr	r3, [r4, #8]
 6483 3a68 0027     		movs	r7, #0
 6484 3a6a FCF746BF 		b	.L763
 6485              	.L1637:
 6486 3a6e 00BF     		.align	2
 6487              	.L1636:
 6488 3a70 A8110000 		.word	.LC151
 6489 3a74 10120000 		.word	.LC155
 6490 3a78 38120000 		.word	.LC156
 6491 3a7c 50120000 		.word	.LC157
 6492 3a80 C4070000 		.word	.LC84
 6493 3a84 00000000 		.word	_ZN6GCodes11axisLettersE
 6494 3a88 8988883C 		.word	1015580809
 6495 3a8c B0070000 		.word	.LC82
 6496 3a90 C0040000 		.word	.LC54
 6497 3a94 BC070000 		.word	.LC83
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 115


 6498 3a98 40070000 		.word	.LC78
 6499 3a9c 00007042 		.word	1114636288
 6500 3aa0 20080000 		.word	.LC86
 6501 3aa4 A0070000 		.word	.LC81
 6502 3aa8 00000000 		.word	reprap
 6503              	.L900:
 6504 3aac D5F8B431 		ldr	r3, [r5, #436]
 6505 3ab0 1393     		str	r3, [sp, #76]
 6506 3ab2 1AA9     		add	r1, sp, #104
 6507 3ab4 13AA     		add	r2, sp, #76
 6508 3ab6 2046     		mov	r0, r4
 6509 3ab8 0123     		movs	r3, #1
 6510 3aba FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 6511 3abe 1399     		ldr	r1, [sp, #76]
 6512 3ac0 91B1     		cbz	r1, .L384
 6513 3ac2 D5F8B001 		ldr	r0, [r5, #432]
 6514 3ac6 2A68     		ldr	r2, [r5]
 6515 3ac8 95ED9B7A 		flds	s14, [r5, #620]
 6516 3acc 1AAB     		add	r3, sp, #104
 6517 3ace 4630     		adds	r0, r0, #70
 6518 3ad0 03EB8101 		add	r1, r3, r1, lsl #2
 6519 3ad4 02EB8002 		add	r2, r2, r0, lsl #2
 6520              	.L385:
 6521 3ad8 F3EC017A 		fldmias	r3!, {s15}
 6522 3adc 67EE877A 		fmuls	s15, s15, s14
 6523 3ae0 8B42     		cmp	r3, r1
 6524 3ae2 E2EC017A 		fstmias	r2!, {s15}
 6525 3ae6 F7D1     		bne	.L385
 6526              	.L384:
 6527 3ae8 A368     		ldr	r3, [r4, #8]
 6528 3aea 0027     		movs	r7, #0
 6529 3aec FCF705BF 		b	.L763
 6530              	.L1520:
 6531 3af0 2046     		mov	r0, r4
 6532 3af2 DF68     		ldr	r7, [r3, #12]
 6533 3af4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6534 3af8 0028     		cmp	r0, #0
 6535 3afa D4BF     		ite	le
 6536 3afc 0020     		movle	r0, #0
 6537 3afe 0120     		movgt	r0, #1
 6538 3b00 87F82D00 		strb	r0, [r7, #45]
 6539 3b04 A368     		ldr	r3, [r4, #8]
 6540 3b06 0027     		movs	r7, #0
 6541 3b08 FCF7F7BE 		b	.L763
 6542              	.L1477:
 6543 3b0c 2046     		mov	r0, r4
 6544 3b0e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 6545 3b12 0146     		mov	r1, r0
 6546 3b14 B748     		ldr	r0, .L1638
 6547 3b16 FFF7FEFF 		bl	_ZN6RepRap11SetPasswordEPKc
 6548 3b1a 0027     		movs	r7, #0
 6549 3b1c A368     		ldr	r3, [r4, #8]
 6550 3b1e FCF7ECBE 		b	.L763
 6551              	.L861:
 6552 3b22 2046     		mov	r0, r4
 6553 3b24 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6554 3b28 0246     		mov	r2, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 116


 6555 3b2a 0028     		cmp	r0, #0
 6556 3b2c 41F0FB80 		bne	.L862
 6557 3b30 0746     		mov	r7, r0
 6558 3b32 A368     		ldr	r3, [r4, #8]
 6559 3b34 FCF7E1BE 		b	.L763
 6560              	.L717:
 6561 3b38 3046     		mov	r0, r6
 6562 3b3a AF49     		ldr	r1, .L1638+4
 6563 3b3c FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 6564 3b40 D5F8B031 		ldr	r3, [r5, #432]
 6565 3b44 002B     		cmp	r3, #0
 6566 3b46 3DF43FA8 		beq	.L714
 6567 3b4a AC4F     		ldr	r7, .L1638+8
 6568 3b4c 05F5DC79 		add	r9, r5, #440
 6569 3b50 4FF00008 		mov	r8, #0
 6570 3b54 4FF03A0B 		mov	fp, #58
 6571 3b58 01E0     		b	.L718
 6572              	.L1589:
 6573 3b5a 4FF02C0B 		mov	fp, #44
 6574              	.L718:
 6575 3b5e 59F8040B 		ldr	r0, [r9], #4	@ float
 6576 3b62 17F808A0 		ldrb	r10, [r7, r8]	@ zero_extendqisi2
 6577 3b66 FFF7FEFF 		bl	__aeabi_f2d
 6578 3b6a 5346     		mov	r3, r10
 6579 3b6c CDE90001 		strd	r0, [sp]
 6580 3b70 5A46     		mov	r2, fp
 6581 3b72 3046     		mov	r0, r6
 6582 3b74 A249     		ldr	r1, .L1638+12
 6583 3b76 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 6584 3b7a D5F8B031 		ldr	r3, [r5, #432]
 6585 3b7e 08F10108 		add	r8, r8, #1
 6586 3b82 4345     		cmp	r3, r8
 6587 3b84 E9D8     		bhi	.L1589
 6588 3b86 FDF71FB8 		b	.L714
 6589              	.L265:
 6590 3b8a 2046     		mov	r0, r4
 6591 3b8c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6592 3b90 5421     		movs	r1, #84
 6593 3b92 0746     		mov	r7, r0	@ float
 6594 3b94 2046     		mov	r0, r4
 6595 3b96 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6596 3b9a 0028     		cmp	r0, #0
 6597 3b9c 00F04586 		beq	.L266
 6598 3ba0 2046     		mov	r0, r4
 6599 3ba2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6600 3ba6 D4F88830 		ldr	r3, [r4, #136]
 6601 3baa C118     		adds	r1, r0, r3
 6602 3bac 9148     		ldr	r0, .L1638
 6603 3bae FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 6604              	.L267:
 6605 3bb2 0146     		mov	r1, r0
 6606 3bb4 3A46     		mov	r2, r7	@ float
 6607 3bb6 2846     		mov	r0, r5
 6608 3bb8 FFF7FEFF 		bl	_ZN6GCodes14SetToolHeatersEP4Toolf
 6609 3bbc 0027     		movs	r7, #0
 6610 3bbe A368     		ldr	r3, [r4, #8]
 6611 3bc0 FCF79BBE 		b	.L763
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 117


 6612              	.L1513:
 6613 3bc4 3046     		mov	r0, r6
 6614 3bc6 8F49     		ldr	r1, .L1638+16
 6615 3bc8 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 6616 3bcc 0127     		movs	r7, #1
 6617 3bce A368     		ldr	r3, [r4, #8]
 6618 3bd0 FCF793BE 		b	.L763
 6619              	.L670:
 6620 3bd4 2046     		mov	r0, r4
 6621 3bd6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6622 3bda 5321     		movs	r1, #83
 6623 3bdc 0746     		mov	r7, r0
 6624 3bde 2046     		mov	r0, r4
 6625 3be0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6626 3be4 0028     		cmp	r0, #0
 6627 3be6 41F0E180 		bne	.L1590
 6628 3bea 2B68     		ldr	r3, [r5]
 6629 3bec 062F     		cmp	r7, #6
 6630 3bee 96BF     		itet	ls
 6631 3bf0 03EB8703 		addls	r3, r3, r7, lsl #2
 6632 3bf4 0020     		movhi	r0, #0
 6633 3bf6 D3F89801 		ldrls	r0, [r3, #408]	@ float
 6634 3bfa FFF7FEFF 		bl	__aeabi_f2d
 6635 3bfe 3A46     		mov	r2, r7
 6636 3c00 CDE90001 		strd	r0, [sp]
 6637 3c04 3046     		mov	r0, r6
 6638 3c06 8049     		ldr	r1, .L1638+20
 6639 3c08 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 6640 3c0c 0027     		movs	r7, #0
 6641 3c0e A368     		ldr	r3, [r4, #8]
 6642 3c10 FCF773BE 		b	.L763
 6643              	.L1506:
 6644 3c14 2846     		mov	r0, r5
 6645 3c16 2146     		mov	r1, r4
 6646 3c18 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 6647 3c1c 0028     		cmp	r0, #0
 6648 3c1e 3CF49DAF 		beq	.L554
 6649 3c22 95F80073 		ldrb	r7, [r5, #768]	@ zero_extendqisi2
 6650 3c26 DFF8CC81 		ldr	r8, .L1638
 6651 3c2a 0037     		adds	r7, r7, #0
 6652 3c2c 2046     		mov	r0, r4
 6653 3c2e 18BF     		it	ne
 6654 3c30 0127     		movne	r7, #1
 6655 3c32 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6656 3c36 C1B2     		uxtb	r1, r0
 6657 3c38 85F80013 		strb	r1, [r5, #768]
 6658 3c3c D8F80800 		ldr	r0, [r8, #8]
 6659 3c40 FFF7FEFF 		bl	_ZN4Move8SimulateEh
 6660 3c44 95F80033 		ldrb	r3, [r5, #768]	@ zero_extendqisi2
 6661 3c48 002B     		cmp	r3, #0
 6662 3c4a 01F01F81 		beq	.L213
 6663 3c4e 0023     		movs	r3, #0
 6664 3c50 C5F8FC32 		str	r3, [r5, #764]	@ float
 6665 3c54 002F     		cmp	r7, #0
 6666 3c56 01F00384 		beq	.L214
 6667 3c5a A368     		ldr	r3, [r4, #8]
 6668 3c5c 0027     		movs	r7, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 118


 6669 3c5e FCF74CBE 		b	.L763
 6670              	.L1560:
 6671 3c62 2046     		mov	r0, r4
 6672 3c64 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6673 3c68 0030     		adds	r0, r0, #0
 6674 3c6a 4FF00103 		mov	r3, #1
 6675 3c6e 18BF     		it	ne
 6676 3c70 0120     		movne	r0, #1
 6677 3c72 8AF82C00 		strb	r0, [r10, #44]
 6678 3c76 88F80030 		strb	r3, [r8]
 6679 3c7a FEF78FBD 		b	.L599
 6680              	.L1559:
 6681 3c7e 2046     		mov	r0, r4
 6682 3c80 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6683 3c84 DFED617A 		flds	s15, .L1638+24
 6684 3c88 07EE100A 		fmsr	s14, r0
 6685 3c8c 67EE277A 		fmuls	s15, s14, s15
 6686 3c90 0123     		movs	r3, #1
 6687 3c92 CAED087A 		fsts	s15, [r10, #32]
 6688 3c96 88F80030 		strb	r3, [r8]
 6689 3c9a FEF778BD 		b	.L598
 6690              	.L1558:
 6691 3c9e 2046     		mov	r0, r4
 6692 3ca0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6693 3ca4 DFED597A 		flds	s15, .L1638+24
 6694 3ca8 06EE900A 		fmsr	s13, r0
 6695 3cac 66EEA77A 		fmuls	s15, s13, s15
 6696 3cb0 0123     		movs	r3, #1
 6697 3cb2 CAED077A 		fsts	s15, [r10, #28]
 6698 3cb6 88F80030 		strb	r3, [r8]
 6699 3cba FEF761BD 		b	.L597
 6700              	.L1557:
 6701 3cbe 2046     		mov	r0, r4
 6702 3cc0 2F68     		ldr	r7, [r5]
 6703 3cc2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6704 3cc6 0146     		mov	r1, r0
 6705 3cc8 3846     		mov	r0, r7
 6706 3cca FFF7FEFF 		bl	_ZN8Platform13SetZProbeTypeEi
 6707 3cce 0127     		movs	r7, #1
 6708 3cd0 FEF734BD 		b	.L596
 6709              	.L223:
 6710 3cd4 2046     		mov	r0, r4
 6711 3cd6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6712 3cda 0DF14C08 		add	r8, sp, #76
 6713 3cde 0746     		mov	r7, r0
 6714 3ce0 0DF1680A 		add	r10, sp, #104
 6715 3ce4 2868     		ldr	r0, [r5]
 6716 3ce6 CDF800A0 		str	r10, [sp]
 6717 3cea 3946     		mov	r1, r7
 6718 3cec 4346     		mov	r3, r8
 6719 3cee 0222     		movs	r2, #2
 6720 3cf0 FFF7FEFF 		bl	_ZN8Platform14GetFirmwarePinEi9PinAccessRhRb
 6721 3cf4 0028     		cmp	r0, #0
 6722 3cf6 00F0D285 		beq	.L224
 6723 3cfa 2046     		mov	r0, r4
 6724 3cfc 5321     		movs	r1, #83
 6725 3cfe FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 119


 6726 3d02 0028     		cmp	r0, #0
 6727 3d04 41F09782 		bne	.L1591
 6728 3d08 0746     		mov	r7, r0
 6729              	.L225:
 6730 3d0a A368     		ldr	r3, [r4, #8]
 6731 3d0c FCF7F5BD 		b	.L763
 6732              	.L375:
 6733 3d10 5321     		movs	r1, #83
 6734 3d12 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6735 3d16 0028     		cmp	r0, #0
 6736 3d18 3EF45BAF 		beq	.L377
 6737 3d1c 2046     		mov	r0, r4
 6738 3d1e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6739 3d22 FDF76BBD 		b	.L376
 6740              	.L284:
 6741 3d26 2046     		mov	r0, r4
 6742 3d28 5221     		movs	r1, #82
 6743 3d2a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6744 3d2e 0028     		cmp	r0, #0
 6745 3d30 41F00480 		bne	.L1592
 6746 3d34 B8F1000F 		cmp	r8, #0
 6747 3d38 7CF463AE 		bne	.L271
 6748 3d3c 3868     		ldr	r0, [r7]	@ float
 6749 3d3e D9F80090 		ldr	r9, [r9]
 6750 3d42 B7F818B0 		ldrh	fp, [r7, #24]
 6751 3d46 FFF7FEFF 		bl	__aeabi_f2d
 6752 3d4a 0022     		movs	r2, #0
 6753 3d4c 304B     		ldr	r3, .L1638+28
 6754 3d4e FFF7FEFF 		bl	__aeabi_dmul
 6755 3d52 FFF7FEFF 		bl	__aeabi_d2iz
 6756 3d56 8246     		mov	r10, r0
 6757 3d58 7868     		ldr	r0, [r7, #4]	@ float
 6758 3d5a FFF7FEFF 		bl	__aeabi_f2d
 6759 3d5e 0022     		movs	r2, #0
 6760 3d60 2B4B     		ldr	r3, .L1638+28
 6761 3d62 FFF7FEFF 		bl	__aeabi_dmul
 6762 3d66 FFF7FEFF 		bl	__aeabi_d2iz
 6763 3d6a D7ED046A 		flds	s13, [r7, #16]	@ int
 6764 3d6e DFED297A 		flds	s15, .L1638+32
 6765 3d72 0D90     		str	r0, [sp, #52]
 6766 3d74 B8EE667A 		fuitos	s14, s13
 6767 3d78 67EE277A 		fmuls	s15, s14, s15
 6768 3d7c 17EE900A 		fmrs	r0, s15
 6769 3d80 FFF7FEFF 		bl	__aeabi_f2d
 6770 3d84 97F81DC0 		ldrb	ip, [r7, #29]	@ zero_extendqisi2
 6771 3d88 234B     		ldr	r3, .L1638+36
 6772 3d8a 244A     		ldr	r2, .L1638+40
 6773 3d8c CDF800A0 		str	r10, [sp]
 6774 3d90 BCF1000F 		cmp	ip, #0
 6775 3d94 0CBF     		ite	eq
 6776 3d96 9E46     		moveq	lr, r3
 6777 3d98 9646     		movne	lr, r2
 6778 3d9a 0D9B     		ldr	r3, [sp, #52]
 6779 3d9c 0193     		str	r3, [sp, #4]
 6780 3d9e CDE90201 		strd	r0, [sp, #8]
 6781 3da2 4A46     		mov	r2, r9
 6782 3da4 5B46     		mov	r3, fp
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 120


 6783 3da6 CDF810E0 		str	lr, [sp, #16]
 6784 3daa 3046     		mov	r0, r6
 6785 3dac 1C49     		ldr	r1, .L1638+44
 6786 3dae FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 6787 3db2 B7F81A90 		ldrh	r9, [r7, #26]
 6788 3db6 B9F1000F 		cmp	r9, #0
 6789 3dba 3CF422AE 		beq	.L271
 6790 3dbe D7ED027A 		flds	s15, [r7, #8]
 6791 3dc2 1849     		ldr	r1, .L1638+48
 6792 3dc4 FDEEE77A 		ftosizs	s15, s15
 6793 3dc8 3046     		mov	r0, r6
 6794 3dca 17EE902A 		fmrs	r2, s15	@ int
 6795 3dce FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 6796 3dd2 05E0     		b	.L296
 6797              	.L295:
 6798 3dd4 08F10108 		add	r8, r8, #1
 6799 3dd8 B8F1080F 		cmp	r8, #8
 6800 3ddc 3CF411AE 		beq	.L271
 6801              	.L296:
 6802 3de0 29FA08F3 		lsr	r3, r9, r8
 6803 3de4 D907     		lsls	r1, r3, #31
 6804 3de6 F5D5     		bpl	.L295
 6805 3de8 3046     		mov	r0, r6
 6806 3dea 0F49     		ldr	r1, .L1638+52
 6807 3dec 4246     		mov	r2, r8
 6808 3dee FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 6809 3df2 EFE7     		b	.L295
 6810              	.L1639:
 6811              		.align	2
 6812              	.L1638:
 6813 3df4 00000000 		.word	reprap
 6814 3df8 CC110000 		.word	.LC152
 6815 3dfc 00000000 		.word	_ZN6GCodes11axisLettersE
 6816 3e00 E0110000 		.word	.LC153
 6817 3e04 A0020000 		.word	.LC40
 6818 3e08 04110000 		.word	.LC146
 6819 3e0c 8988883C 		.word	1015580809
 6820 3e10 00005940 		.word	1079574528
 6821 3e14 6F12833A 		.word	981668463
 6822 3e18 A0000000 		.word	.LC8
 6823 3e1c 9C000000 		.word	.LC7
 6824 3e20 28050000 		.word	.LC59
 6825 3e24 70050000 		.word	.LC60
 6826 3e28 8C050000 		.word	.LC61
 6827              	.L490:
 6828 3e2c B84F     		ldr	r7, .L1640+8
 6829 3e2e 4FFA88F1 		sxtb	r1, r8
 6830 3e32 F868     		ldr	r0, [r7, #12]
 6831 3e34 FFF7FEFF 		bl	_ZNK4Heat19GetTemperatureLimitEa
 6832 3e38 07EE100A 		fmsr	s14, r0
 6833 3e3c F4EEC78A 		fcmpes	s17, s14
 6834 3e40 F1EE10FA 		fmstat
 6835 3e44 80F2F586 		bge	.L1593
 6836 3e48 18EE100A 		fmrs	r0, s16
 6837 3e4c FFF7FEFF 		bl	__aeabi_f2d
 6838 3e50 ADA3     		adr	r3, .L1640
 6839 3e52 D3E90023 		ldrd	r2, [r3]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 121


 6840 3e56 FFF7FEFF 		bl	__aeabi_dcmplt
 6841 3e5a 8646     		mov	lr, r0
 6842 3e5c 38B9     		cbnz	r0, .L493
 6843 3e5e F7EE007A 		fconsts	s15, #112
 6844 3e62 B4EEE78A 		fcmpes	s16, s15
 6845 3e66 F1EE10FA 		fmstat
 6846 3e6a 41F39683 		ble	.L1437
 6847              	.L493:
 6848 3e6e 3046     		mov	r0, r6
 6849 3e70 A849     		ldr	r1, .L1640+12
 6850 3e72 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 6851 3e76 0027     		movs	r7, #0
 6852 3e78 A368     		ldr	r3, [r4, #8]
 6853 3e7a FCF73EBD 		b	.L763
 6854              	.L309:
 6855 3e7e 4146     		mov	r1, r8
 6856 3e80 A348     		ldr	r0, .L1640+8
 6857 3e82 FFF7FEFF 		bl	_ZN6RepRap8SetDebugEb
 6858 3e86 A368     		ldr	r3, [r4, #8]
 6859 3e88 FCF737BD 		b	.L763
 6860              	.L703:
 6861 3e8c 4FF00109 		mov	r9, #1
 6862 3e90 30E4     		b	.L700
 6863              	.L1579:
 6864 3e92 A368     		ldr	r3, [r4, #8]
 6865 3e94 0027     		movs	r7, #0
 6866 3e96 FCF730BD 		b	.L763
 6867              	.L762:
 6868 3e9a 2868     		ldr	r0, [r5]
 6869 3e9c 9E4A     		ldr	r2, .L1640+16
 6870 3e9e 0621     		movs	r1, #6
 6871 3ea0 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6872 3ea4 0027     		movs	r7, #0
 6873 3ea6 A368     		ldr	r3, [r4, #8]
 6874 3ea8 FCF727BD 		b	.L763
 6875              	.L367:
 6876 3eac 984B     		ldr	r3, .L1640+8
 6877 3eae 4FFA88F1 		sxtb	r1, r8
 6878 3eb2 D868     		ldr	r0, [r3, #12]
 6879 3eb4 FFF7FEFF 		bl	_ZNK4Heat19GetTemperatureLimitEa
 6880 3eb8 FFF7FEFF 		bl	__aeabi_f2d
 6881 3ebc 4246     		mov	r2, r8
 6882 3ebe CDE90001 		strd	r0, [sp]
 6883 3ec2 3046     		mov	r0, r6
 6884 3ec4 9549     		ldr	r1, .L1640+20
 6885 3ec6 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 6886 3eca A368     		ldr	r3, [r4, #8]
 6887 3ecc FCF715BD 		b	.L763
 6888              	.L668:
 6889 3ed0 D5F800A0 		ldr	r10, [r5]
 6890 3ed4 0AF5A263 		add	r3, r10, #1296
 6891 3ed8 1868     		ldr	r0, [r3]	@ float
 6892 3eda FFF7FEFF 		bl	__aeabi_f2d
 6893 3ede 0AF21453 		addw	r3, r10, #1300
 6894 3ee2 8046     		mov	r8, r0
 6895 3ee4 1868     		ldr	r0, [r3]	@ float
 6896 3ee6 8946     		mov	r9, r1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 122


 6897 3ee8 FFF7FEFF 		bl	__aeabi_f2d
 6898 3eec CDE90001 		strd	r0, [sp]
 6899 3ef0 DAF81835 		ldr	r3, [r10, #1304]
 6900 3ef4 0293     		str	r3, [sp, #8]
 6901 3ef6 4246     		mov	r2, r8
 6902 3ef8 4B46     		mov	r3, r9
 6903 3efa 3046     		mov	r0, r6
 6904 3efc 8849     		ldr	r1, .L1640+24
 6905 3efe FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 6906 3f02 A368     		ldr	r3, [r4, #8]
 6907 3f04 FCF7F9BC 		b	.L763
 6908              	.L1505:
 6909 3f08 2F68     		ldr	r7, [r5]
 6910 3f0a 2046     		mov	r0, r4
 6911 3f0c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6912 3f10 07F5A263 		add	r3, r7, #1296
 6913 3f14 0027     		movs	r7, #0
 6914 3f16 1860     		str	r0, [r3]	@ float
 6915 3f18 A368     		ldr	r3, [r4, #8]
 6916 3f1a FCF7EEBC 		b	.L763
 6917              	.L1504:
 6918 3f1e D5F80080 		ldr	r8, [r5]
 6919 3f22 2046     		mov	r0, r4
 6920 3f24 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6921 3f28 08F21458 		addw	r8, r8, #1300
 6922 3f2c C8F80000 		str	r0, [r8]	@ float
 6923 3f30 FDF72BBB 		b	.L666
 6924              	.L507:
 6925 3f34 2046     		mov	r0, r4
 6926 3f36 4521     		movs	r1, #69
 6927 3f38 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6928 3f3c 0028     		cmp	r0, #0
 6929 3f3e 00F09382 		beq	.L522
 6930              	.L904:
 6931 3f42 2846     		mov	r0, r5
 6932 3f44 2146     		mov	r1, r4
 6933 3f46 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 6934 3f4a 0028     		cmp	r0, #0
 6935 3f4c 3CF406AE 		beq	.L554
 6936 3f50 0DF14C08 		add	r8, sp, #76
 6937 3f54 D5F8B431 		ldr	r3, [r5, #436]
 6938 3f58 C8F80030 		str	r3, [r8]
 6939 3f5c 4246     		mov	r2, r8
 6940 3f5e 1AA9     		add	r1, sp, #104
 6941 3f60 2046     		mov	r0, r4
 6942 3f62 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 6943 3f66 D8F80030 		ldr	r3, [r8]
 6944 3f6a 002B     		cmp	r3, #0
 6945 3f6c 3EF45BAD 		beq	.L517
 6946 3f70 DFF8BCB1 		ldr	fp, .L1640+40
 6947 3f74 0D94     		str	r4, [sp, #52]
 6948 3f76 0DF1680A 		add	r10, sp, #104
 6949 3f7a 0027     		movs	r7, #0
 6950              	.L521:
 6951 3f7c D5F8B011 		ldr	r1, [r5, #432]
 6952 3f80 5AF8042B 		ldr	r2, [r10], #4
 6953 3f84 D9F80030 		ldr	r3, [r9]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 123


 6954 3f88 3944     		add	r1, r1, r7
 6955 3f8a 2846     		mov	r0, r5
 6956 3f8c FFF7FEFF 		bl	_ZNK6GCodes19ChangeMicrosteppingEjii
 6957 3f90 3B46     		mov	r3, r7
 6958 3f92 0621     		movs	r1, #6
 6959 3f94 0137     		adds	r7, r7, #1
 6960 3f96 634A     		ldr	r2, .L1640+28
 6961 3f98 70B9     		cbnz	r0, .L518
 6962 3f9a 5AF8044C 		ldr	r4, [r10, #-4]
 6963 3f9e 2868     		ldr	r0, [r5]
 6964 3fa0 0094     		str	r4, [sp]
 6965 3fa2 D9F80040 		ldr	r4, [r9]
 6966 3fa6 DFF88CE1 		ldr	lr, .L1640+44
 6967 3faa 002C     		cmp	r4, #0
 6968 3fac 08BF     		it	eq
 6969 3fae DE46     		moveq	lr, fp
 6970 3fb0 CDF804E0 		str	lr, [sp, #4]
 6971 3fb4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6972              	.L518:
 6973 3fb8 D8F80030 		ldr	r3, [r8]
 6974 3fbc BB42     		cmp	r3, r7
 6975 3fbe DDD8     		bhi	.L521
 6976 3fc0 0D9C     		ldr	r4, [sp, #52]
 6977 3fc2 FEF730BD 		b	.L517
 6978              	.L1510:
 6979 3fc6 2046     		mov	r0, r4
 6980 3fc8 5321     		movs	r1, #83
 6981 3fca FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6982 3fce 0028     		cmp	r0, #0
 6983 3fd0 00F0F885 		beq	.L458
 6984 3fd4 2046     		mov	r0, r4
 6985 3fd6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6986 3fda DFED537A 		flds	s15, .L1640+32
 6987 3fde 06EE900A 		fmsr	s13, r0
 6988 3fe2 C6EEA77A 		fdivs	s15, s13, s15
 6989 3fe6 F5EEC07A 		fcmpezs	s15
 6990 3fea F1EE10FA 		fmstat
 6991 3fee FDF6B9AC 		blt	.L456
 6992 3ff2 D5F8FC30 		ldr	r3, [r5, #252]
 6993 3ff6 ABB1     		cbz	r3, .L460
 6994 3ff8 95F8F730 		ldrb	r3, [r5, #247]	@ zero_extendqisi2
 6995 3ffc 93B9     		cbnz	r3, .L460
 6996 3ffe DAF80030 		ldr	r3, [r10]
 6997 4002 D5F8B021 		ldr	r2, [r5, #432]
 6998 4006 05EB8301 		add	r1, r5, r3, lsl #2
 6999 400a 91EDB17A 		flds	s14, [r1, #708]
 7000 400e 87EE877A 		fdivs	s14, s15, s14
 7001 4012 1344     		add	r3, r3, r2
 7002 4014 05EB8303 		add	r3, r5, r3, lsl #2
 7003 4018 D3ED296A 		flds	s13, [r3, #164]
 7004 401c 26EE877A 		fmuls	s14, s13, s14
 7005 4020 83ED297A 		fsts	s14, [r3, #164]
 7006              	.L460:
 7007 4024 DAF80030 		ldr	r3, [r10]
 7008 4028 05EB8303 		add	r3, r5, r3, lsl #2
 7009 402c C3EDB17A 		fsts	s15, [r3, #708]
 7010 4030 FDF798BC 		b	.L456
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 124


 7011              	.L1563:
 7012 4034 2846     		mov	r0, r5
 7013 4036 2146     		mov	r1, r4
 7014 4038 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 7015 403c 0746     		mov	r7, r0
 7016 403e 0028     		cmp	r0, #0
 7017 4040 3CF41CAC 		beq	.L1420
 7018 4044 0DF14C08 		add	r8, sp, #76
 7019 4048 D5F8B431 		ldr	r3, [r5, #436]
 7020 404c C8F80030 		str	r3, [r8]
 7021 4050 4246     		mov	r2, r8
 7022 4052 0123     		movs	r3, #1
 7023 4054 1AA9     		add	r1, sp, #104
 7024 4056 2046     		mov	r0, r4
 7025 4058 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 7026 405c D8F80030 		ldr	r3, [r8]
 7027 4060 C3B1     		cbz	r3, .L826
 7028 4062 40F2913B 		movw	fp, #913
 7029 4066 B9EB0B0C 		subs	ip, r9, fp
 7030 406a DCF1000B 		rsbs	fp, ip, #0
 7031 406e 0DF1680A 		add	r10, sp, #104
 7032 4072 5BEB0C0B 		adcs	fp, fp, ip
 7033 4076 0027     		movs	r7, #0
 7034              	.L827:
 7035 4078 D5F8B011 		ldr	r1, [r5, #432]
 7036 407c 2868     		ldr	r0, [r5]
 7037 407e 5AF8042B 		ldr	r2, [r10], #4	@ float
 7038 4082 3944     		add	r1, r1, r7
 7039 4084 5B46     		mov	r3, fp
 7040 4086 FFF7FEFF 		bl	_ZN8Platform15SetMotorCurrentEjfb
 7041 408a D8F80030 		ldr	r3, [r8]
 7042 408e 0137     		adds	r7, r7, #1
 7043 4090 BB42     		cmp	r3, r7
 7044 4092 F1D8     		bhi	.L827
 7045              	.L826:
 7046 4094 4FF0010A 		mov	r10, #1
 7047 4098 FEF738BC 		b	.L823
 7048              	.L353:
 7049 409c 2046     		mov	r0, r4
 7050 409e DAF80C70 		ldr	r7, [r10, #12]
 7051 40a2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7052 40a6 4146     		mov	r1, r8
 7053 40a8 0246     		mov	r2, r0	@ float
 7054 40aa 3846     		mov	r0, r7
 7055 40ac FFF7FEFF 		bl	_ZN4Heat21SetStandbyTemperatureEaf
 7056 40b0 0027     		movs	r7, #0
 7057 40b2 A368     		ldr	r3, [r4, #8]
 7058 40b4 FCF721BC 		b	.L763
 7059              	.L1489:
 7060 40b8 2046     		mov	r0, r4
 7061 40ba FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7062 40be 9FED1B7A 		flds	s14, .L1640+36
 7063 40c2 07EE900A 		fmsr	s15, r0
 7064 40c6 F4EEC77A 		fcmpes	s15, s14
 7065 40ca F1EE10FA 		fmstat
 7066 40ce DAF80C00 		ldr	r0, [r10, #12]
 7067 40d2 4146     		mov	r1, r8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 125


 7068 40d4 40F16084 		bpl	.L1426
 7069 40d8 FFF7FEFF 		bl	_ZN4Heat9SwitchOffEa
 7070 40dc FDF78CB8 		b	.L350
 7071              	.L846:
 7072 40e0 0123     		movs	r3, #1
 7073 40e2 85F85D33 		strb	r3, [r5, #861]
 7074 40e6 2846     		mov	r0, r5
 7075 40e8 2146     		mov	r1, r4
 7076 40ea 4FF47A72 		mov	r2, #1000
 7077 40ee FFF7FEFF 		bl	_ZN6GCodes11DoDwellTimeER11GCodeBufferm
 7078 40f2 0028     		cmp	r0, #0
 7079 40f4 3CF432AD 		beq	.L554
 7080 40f8 A368     		ldr	r3, [r4, #8]
 7081 40fa 1122     		movs	r2, #17
 7082 40fc 1A74     		strb	r2, [r3, #16]
 7083 40fe A368     		ldr	r3, [r4, #8]
 7084 4100 0027     		movs	r7, #0
 7085 4102 FCF7FABB 		b	.L763
 7086              	.L1641:
 7087 4106 00BF     		.align	3
 7088              	.L1640:
 7089 4108 9A999999 		.word	-1717986918
 7090 410c 9999B93F 		.word	1069128089
 7091 4110 00000000 		.word	reprap
 7092 4114 080A0000 		.word	.LC97
 7093 4118 9C120000 		.word	.LC160
 7094 411c 74070000 		.word	.LC80
 7095 4120 D0100000 		.word	.LC145
 7096 4124 640B0000 		.word	.LC104
 7097 4128 0000C842 		.word	1120403456
 7098 412c 008088C3 		.word	-1014464512
 7099 4130 A4000000 		.word	.LC9
 7100 4134 D4000000 		.word	.LC15
 7101              	.L626:
 7102 4138 3046     		mov	r0, r6
 7103 413a BF49     		ldr	r1, .L1642+8
 7104 413c FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7105 4140 D5F8B031 		ldr	r3, [r5, #432]
 7106 4144 13B3     		cbz	r3, .L630
 7107 4146 BD4F     		ldr	r7, .L1642+12
 7108 4148 9FEDBD8A 		flds	s16, .L1642+16
 7109 414c 4FF00008 		mov	r8, #0
 7110              	.L631:
 7111 4150 2B68     		ldr	r3, [r5]
 7112 4152 D5ED9B7A 		flds	s15, [r5, #620]
 7113 4156 17F80890 		ldrb	r9, [r7, r8]	@ zero_extendqisi2
 7114 415a 03EB8803 		add	r3, r3, r8, lsl #2
 7115 415e 93ED5C7A 		flds	s14, [r3, #368]
 7116 4162 67EE887A 		fmuls	s15, s15, s16
 7117 4166 08F10108 		add	r8, r8, #1
 7118 416a 87EE277A 		fdivs	s14, s14, s15
 7119 416e 17EE100A 		fmrs	r0, s14
 7120 4172 FFF7FEFF 		bl	__aeabi_f2d
 7121 4176 4A46     		mov	r2, r9
 7122 4178 CDE90001 		strd	r0, [sp]
 7123 417c 3046     		mov	r0, r6
 7124 417e B149     		ldr	r1, .L1642+20
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 126


 7125 4180 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 7126 4184 D5F8B031 		ldr	r3, [r5, #432]
 7127 4188 4345     		cmp	r3, r8
 7128 418a E1D8     		bhi	.L631
 7129              	.L630:
 7130 418c 3046     		mov	r0, r6
 7131 418e AE49     		ldr	r1, .L1642+24
 7132 4190 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 7133 4194 D5F8B471 		ldr	r7, [r5, #436]
 7134 4198 002F     		cmp	r7, #0
 7135 419a 01F02381 		beq	.L1594
 7136 419e 9FEDA88A 		flds	s16, .L1642+16
 7137 41a2 0027     		movs	r7, #0
 7138 41a4 4FF02008 		mov	r8, #32
 7139 41a8 01E0     		b	.L633
 7140              	.L632:
 7141 41aa 4FF03A08 		mov	r8, #58
 7142              	.L633:
 7143 41ae D5F8B011 		ldr	r1, [r5, #432]
 7144 41b2 2B68     		ldr	r3, [r5]
 7145 41b4 D5ED9B7A 		flds	s15, [r5, #620]
 7146 41b8 3944     		add	r1, r1, r7
 7147 41ba 03EB8103 		add	r3, r3, r1, lsl #2
 7148 41be 93ED5C7A 		flds	s14, [r3, #368]
 7149 41c2 67EE887A 		fmuls	s15, s15, s16
 7150 41c6 0137     		adds	r7, r7, #1
 7151 41c8 87EE277A 		fdivs	s14, s14, s15
 7152 41cc 17EE100A 		fmrs	r0, s14
 7153 41d0 FFF7FEFF 		bl	__aeabi_f2d
 7154 41d4 4246     		mov	r2, r8
 7155 41d6 CDE90001 		strd	r0, [sp]
 7156 41da 3046     		mov	r0, r6
 7157 41dc 9B49     		ldr	r1, .L1642+28
 7158 41de FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 7159 41e2 D5F8B431 		ldr	r3, [r5, #436]
 7160 41e6 BB42     		cmp	r3, r7
 7161 41e8 DFD8     		bhi	.L632
 7162 41ea A368     		ldr	r3, [r4, #8]
 7163 41ec 0027     		movs	r7, #0
 7164 41ee FCF784BB 		b	.L763
 7165              	.L1551:
 7166 41f2 2046     		mov	r0, r4
 7167 41f4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7168 41f8 C8F81800 		str	r0, [r8, #24]	@ float
 7169 41fc 4046     		mov	r0, r8
 7170 41fe FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 7171 4202 2046     		mov	r0, r4
 7172 4204 4821     		movs	r1, #72
 7173 4206 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7174 420a 38B1     		cbz	r0, .L788
 7175              	.L787:
 7176 420c 2046     		mov	r0, r4
 7177 420e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7178 4212 C8F82C00 		str	r0, [r8, #44]	@ float
 7179 4216 4046     		mov	r0, r8
 7180 4218 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 7181              	.L788:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 127


 7182 421c 97F8BC3A 		ldrb	r3, [r7, #2748]	@ zero_extendqisi2
 7183 4220 0022     		movs	r2, #0
 7184 4222 5B45     		cmp	r3, fp
 7185 4224 C7F8302C 		str	r2, [r7, #3120]
 7186 4228 04D0     		beq	.L791
 7187 422a 5146     		mov	r1, r10
 7188 422c 2846     		mov	r0, r5
 7189 422e 0122     		movs	r2, #1
 7190 4230 FFF7FEFF 		bl	_ZN6GCodes12SetPositionsEPKfb
 7191              	.L791:
 7192 4234 2846     		mov	r0, r5
 7193 4236 FFF7FEFF 		bl	_ZN6GCodes18SetAllAxesNotHomedEv
 7194 423a FEF7E7B9 		b	.L792
 7195              	.L137:
 7196 423e A368     		ldr	r3, [r4, #8]
 7197 4240 834A     		ldr	r2, .L1642+32
 7198 4242 1421     		movs	r1, #20
 7199 4244 1974     		strb	r1, [r3, #16]
 7200 4246 1268     		ldr	r2, [r2]
 7201 4248 FDF775BE 		b	.L881
 7202              	.L1555:
 7203 424c 2046     		mov	r0, r4
 7204 424e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7205 4252 FFF7FEFF 		bl	__aeabi_f2d
 7206 4256 76A3     		adr	r3, .L1642
 7207 4258 D3E90023 		ldrd	r2, [r3]
 7208 425c FFF7FEFF 		bl	__aeabi_dmul
 7209 4260 FFF7FEFF 		bl	__aeabi_d2f
 7210 4264 0BF6B423 		addw	r3, fp, #2740
 7211 4268 4221     		movs	r1, #66
 7212 426a 1860     		str	r0, [r3]	@ float
 7213 426c 2046     		mov	r0, r4
 7214 426e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7215 4272 78B1     		cbz	r0, .L799
 7216              	.L798:
 7217 4274 2046     		mov	r0, r4
 7218 4276 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7219 427a FFF7FEFF 		bl	__aeabi_f2d
 7220 427e 6CA3     		adr	r3, .L1642
 7221 4280 D3E90023 		ldrd	r2, [r3]
 7222 4284 FFF7FEFF 		bl	__aeabi_dmul
 7223 4288 FFF7FEFF 		bl	__aeabi_d2f
 7224 428c 0BF6B82B 		addw	fp, fp, #2744
 7225 4290 CBF80000 		str	r0, [fp]	@ float
 7226              	.L799:
 7227 4294 2846     		mov	r0, r5
 7228 4296 FFF7FEFF 		bl	_ZN6GCodes18SetAllAxesNotHomedEv
 7229 429a 0027     		movs	r7, #0
 7230 429c A368     		ldr	r3, [r4, #8]
 7231 429e FCF72CBB 		b	.L763
 7232              	.L1464:
 7233 42a2 3046     		mov	r0, r6
 7234 42a4 6B49     		ldr	r1, .L1642+36
 7235 42a6 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 7236 42aa FCF7AABB 		b	.L271
 7237              	.L807:
 7238 42ae 0D98     		ldr	r0, [sp, #52]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 128


 7239 42b0 FFF7FEFF 		bl	_ZNK4Move17GetGeometryStringEv
 7240 42b4 6849     		ldr	r1, .L1642+40
 7241 42b6 0246     		mov	r2, r0
 7242 42b8 3046     		mov	r0, r6
 7243 42ba FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 7244 42be D5F8B031 		ldr	r3, [r5, #432]
 7245 42c2 002B     		cmp	r3, #0
 7246 42c4 3EF4DDAE 		beq	.L808
 7247 42c8 0D99     		ldr	r1, [sp, #52]
 7248 42ca 5C4F     		ldr	r7, .L1642+12
 7249 42cc 01F6344B 		addw	fp, r1, #3124
 7250              	.L811:
 7251 42d0 5BF8040B 		ldr	r0, [fp], #4	@ float
 7252 42d4 17F80980 		ldrb	r8, [r7, r9]	@ zero_extendqisi2
 7253 42d8 FFF7FEFF 		bl	__aeabi_f2d
 7254 42dc 4246     		mov	r2, r8
 7255 42de CDE90001 		strd	r0, [sp]
 7256 42e2 3046     		mov	r0, r6
 7257 42e4 5D49     		ldr	r1, .L1642+44
 7258 42e6 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 7259 42ea D5F8B031 		ldr	r3, [r5, #432]
 7260 42ee 09F10109 		add	r9, r9, #1
 7261 42f2 4B45     		cmp	r3, r9
 7262 42f4 ECD8     		bhi	.L811
 7263 42f6 FEF7C4BE 		b	.L808
 7264              	.L156:
 7265 42fa 2846     		mov	r0, r5
 7266 42fc FFF7FEFF 		bl	_ZN6GCodes13DisableDrivesEv
 7267 4300 A368     		ldr	r3, [r4, #8]
 7268 4302 FCF7FABA 		b	.L763
 7269              	.L1570:
 7270 4306 2046     		mov	r0, r4
 7271 4308 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7272 430c 07EE900A 		fmsr	s15, r0
 7273 4310 F5EEC07A 		fcmpezs	s15
 7274 4314 F1EE10FA 		fmstat
 7275 4318 01F1AF81 		bmi	.L1595
 7276 431c 504B     		ldr	r3, .L1642+48
 7277 431e 9B68     		ldr	r3, [r3, #8]
 7278 4320 03F67423 		addw	r3, r3, #2676
 7279 4324 1860     		str	r0, [r3]	@ float
 7280              	.L155:
 7281 4326 A368     		ldr	r3, [r4, #8]
 7282 4328 FCF7E7BA 		b	.L763
 7283              	.L1569:
 7284 432c 0DF14C08 		add	r8, sp, #76
 7285 4330 D5F8B431 		ldr	r3, [r5, #436]
 7286 4334 C8F80030 		str	r3, [r8]
 7287 4338 4246     		mov	r2, r8
 7288 433a 1AA9     		add	r1, sp, #104
 7289 433c 2046     		mov	r0, r4
 7290 433e FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 7291 4342 D8F80070 		ldr	r7, [r8]
 7292 4346 002F     		cmp	r7, #0
 7293 4348 3EF408AC 		beq	.L146
 7294 434c 1A9A     		ldr	r2, [sp, #104]
 7295 434e 002A     		cmp	r2, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 129


 7296 4350 C0F27883 		blt	.L148
 7297 4354 D5F8B431 		ldr	r3, [r5, #436]
 7298 4358 9A42     		cmp	r2, r3
 7299 435a 80F07383 		bcs	.L148
 7300 435e 0DF16809 		add	r9, sp, #104
 7301 4362 0027     		movs	r7, #0
 7302 4364 09E0     		b	.L150
 7303              	.L151:
 7304 4366 59F8042F 		ldr	r2, [r9, #4]!
 7305 436a 002A     		cmp	r2, #0
 7306 436c C0F26A83 		blt	.L148
 7307 4370 D5F8B431 		ldr	r3, [r5, #436]
 7308 4374 9A42     		cmp	r2, r3
 7309 4376 80F06583 		bcs	.L148
 7310              	.L150:
 7311 437a D5F8B011 		ldr	r1, [r5, #432]
 7312 437e 2868     		ldr	r0, [r5]
 7313 4380 1144     		add	r1, r1, r2
 7314 4382 FFF7FEFF 		bl	_ZN8Platform12DisableDriveEj
 7315 4386 D8F80030 		ldr	r3, [r8]
 7316 438a 0137     		adds	r7, r7, #1
 7317 438c BB42     		cmp	r3, r7
 7318 438e EAD8     		bhi	.L151
 7319 4390 4FF00109 		mov	r9, #1
 7320 4394 0027     		movs	r7, #0
 7321 4396 FEF7E1BB 		b	.L146
 7322              	.L1568:
 7323 439a D5F8B031 		ldr	r3, [r5, #432]
 7324 439e 0DF14C08 		add	r8, sp, #76
 7325 43a2 C3F10A03 		rsb	r3, r3, #10
 7326 43a6 4246     		mov	r2, r8
 7327 43a8 2046     		mov	r0, r4
 7328 43aa 1AA9     		add	r1, sp, #104
 7329 43ac C8F80030 		str	r3, [r8]
 7330 43b0 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 7331 43b4 D8F80030 		ldr	r3, [r8]
 7332 43b8 C5F8B431 		str	r3, [r5, #436]
 7333 43bc A3B1     		cbz	r3, .L759
 7334 43be 0DF1640A 		add	r10, sp, #100
 7335 43c2 0027     		movs	r7, #0
 7336 43c4 06E0     		b	.L761
 7337              	.L997:
 7338 43c6 4FF00109 		mov	r9, #1
 7339              	.L760:
 7340 43ca D8F80030 		ldr	r3, [r8]
 7341 43ce 0137     		adds	r7, r7, #1
 7342 43d0 BB42     		cmp	r3, r7
 7343 43d2 09D9     		bls	.L759
 7344              	.L761:
 7345 43d4 5AF8042F 		ldr	r2, [r10, #4]!
 7346 43d8 092A     		cmp	r2, #9
 7347 43da F4D8     		bhi	.L997
 7348 43dc D2B2     		uxtb	r2, r2
 7349 43de 2868     		ldr	r0, [r5]
 7350 43e0 3946     		mov	r1, r7
 7351 43e2 FFF7FEFF 		bl	_ZN8Platform17SetExtruderDriverEjh
 7352 43e6 F0E7     		b	.L760
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 130


 7353              	.L759:
 7354 43e8 B9F1000F 		cmp	r9, #0
 7355 43ec 7FF455AD 		bne	.L762
 7356 43f0 4F46     		mov	r7, r9
 7357 43f2 A368     		ldr	r3, [r4, #8]
 7358 43f4 FCF781BA 		b	.L763
 7359              	.L1427:
 7360 43f8 17EE902A 		fmrs	r2, s15
 7361 43fc FFF7FEFF 		bl	_ZN4Heat20SetActiveTemperatureEaf
 7362 4400 D9F80C00 		ldr	r0, [r9, #12]
 7363 4404 4146     		mov	r1, r8
 7364 4406 FFF7FEFF 		bl	_ZN4Heat8ActivateEa
 7365 440a FCF7B8BF 		b	.L363
 7366              	.L1514:
 7367 440e A368     		ldr	r3, [r4, #8]
 7368 4410 144A     		ldr	r2, .L1642+52
 7369 4412 0E21     		movs	r1, #14
 7370 4414 0027     		movs	r7, #0
 7371 4416 1974     		strb	r1, [r3, #16]
 7372 4418 1268     		ldr	r2, [r2]
 7373 441a 0097     		str	r7, [sp]
 7374 441c 0123     		movs	r3, #1
 7375 441e 2846     		mov	r0, r5
 7376 4420 2146     		mov	r1, r4
 7377 4422 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 7378 4426 A368     		ldr	r3, [r4, #8]
 7379 4428 FCF767BA 		b	.L763
 7380              	.L1643:
 7381 442c AFF30080 		.align	3
 7382              	.L1642:
 7383 4430 7B14AE47 		.word	1202590843
 7384 4434 E17A843F 		.word	1065646817
 7385 4438 F80E0000 		.word	.LC136
 7386 443c 00000000 		.word	_ZN6GCodes11axisLettersE
 7387 4440 8988883C 		.word	1015580809
 7388 4444 B0070000 		.word	.LC82
 7389 4448 C0040000 		.word	.LC54
 7390 444c BC070000 		.word	.LC83
 7391 4450 00000000 		.word	.LANCHOR8
 7392 4454 0C050000 		.word	.LC58
 7393 4458 A8130000 		.word	.LC166
 7394 445c D0130000 		.word	.LC167
 7395 4460 00000000 		.word	reprap
 7396 4464 00000000 		.word	.LANCHOR2
 7397              	.L522:
 7398 4468 3046     		mov	r0, r6
 7399 446a BD49     		ldr	r1, .L1644
 7400 446c FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7401 4470 D5F8B031 		ldr	r3, [r5, #432]
 7402 4474 13B3     		cbz	r3, .L527
 7403 4476 BB4F     		ldr	r7, .L1644+4
 7404 4478 DFF820B3 		ldr	fp, .L1644+60
 7405 447c 4FF00008 		mov	r8, #0
 7406 4480 0DF1680A 		add	r10, sp, #104
 7407              	.L528:
 7408 4484 4146     		mov	r1, r8
 7409 4486 D9F80020 		ldr	r2, [r9]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 131


 7410 448a 2868     		ldr	r0, [r5]
 7411 448c 5346     		mov	r3, r10
 7412 448e FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjiRb
 7413 4492 9AF800E0 		ldrb	lr, [r10]	@ zero_extendqisi2
 7414 4496 17F80820 		ldrb	r2, [r7, r8]	@ zero_extendqisi2
 7415 449a B349     		ldr	r1, .L1644+8
 7416 449c 0346     		mov	r3, r0
 7417 449e B348     		ldr	r0, .L1644+12
 7418 44a0 BEF1000F 		cmp	lr, #0
 7419 44a4 08BF     		it	eq
 7420 44a6 5846     		moveq	r0, fp
 7421 44a8 0090     		str	r0, [sp]
 7422 44aa 3046     		mov	r0, r6
 7423 44ac FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 7424 44b0 D5F8B031 		ldr	r3, [r5, #432]
 7425 44b4 08F10108 		add	r8, r8, #1
 7426 44b8 4345     		cmp	r3, r8
 7427 44ba E3D8     		bhi	.L528
 7428              	.L527:
 7429 44bc 3046     		mov	r0, r6
 7430 44be AC49     		ldr	r1, .L1644+16
 7431 44c0 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 7432 44c4 D5F8B431 		ldr	r3, [r5, #436]
 7433 44c8 002B     		cmp	r3, #0
 7434 44ca 3EF4ACAA 		beq	.L517
 7435 44ce DFF8CCB2 		ldr	fp, .L1644+60
 7436 44d2 DFF89882 		ldr	r8, .L1644+12
 7437 44d6 0027     		movs	r7, #0
 7438 44d8 0DF1680A 		add	r10, sp, #104
 7439              	.L530:
 7440 44dc D5F8B011 		ldr	r1, [r5, #432]
 7441 44e0 D9F80020 		ldr	r2, [r9]
 7442 44e4 2868     		ldr	r0, [r5]
 7443 44e6 3944     		add	r1, r1, r7
 7444 44e8 5346     		mov	r3, r10
 7445 44ea FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjiRb
 7446 44ee 9AF80030 		ldrb	r3, [r10]	@ zero_extendqisi2
 7447 44f2 A049     		ldr	r1, .L1644+20
 7448 44f4 002B     		cmp	r3, #0
 7449 44f6 0CBF     		ite	eq
 7450 44f8 5B46     		moveq	r3, fp
 7451 44fa 4346     		movne	r3, r8
 7452 44fc 0246     		mov	r2, r0
 7453 44fe 3046     		mov	r0, r6
 7454 4500 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 7455 4504 D5F8B431 		ldr	r3, [r5, #436]
 7456 4508 0137     		adds	r7, r7, #1
 7457 450a BB42     		cmp	r3, r7
 7458 450c E6D8     		bhi	.L530
 7459 450e FEF78ABA 		b	.L517
 7460              	.L196:
 7461 4512 D5F87402 		ldr	r0, [r5, #628]
 7462 4516 0028     		cmp	r0, #0
 7463 4518 00F03787 		beq	.L198
 7464 451c 4146     		mov	r1, r8
 7465 451e FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 7466 4522 0028     		cmp	r0, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 132


 7467 4524 00F0B886 		beq	.L199
 7468 4528 A368     		ldr	r3, [r4, #8]
 7469 452a FCF7E6B9 		b	.L763
 7470              	.L306:
 7471 452e A368     		ldr	r3, [r4, #8]
 7472 4530 0B22     		movs	r2, #11
 7473 4532 1A74     		strb	r2, [r3, #16]
 7474 4534 A368     		ldr	r3, [r4, #8]
 7475 4536 0027     		movs	r7, #0
 7476 4538 FCF7DFB9 		b	.L763
 7477              	.L360:
 7478 453c 3046     		mov	r0, r6
 7479 453e 8E49     		ldr	r1, .L1644+24
 7480 4540 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7481 4544 0127     		movs	r7, #1
 7482 4546 FCF71ABF 		b	.L363
 7483              	.L1503:
 7484 454a 4246     		mov	r2, r8
 7485 454c 3046     		mov	r0, r6
 7486 454e 8B49     		ldr	r1, .L1644+28
 7487 4550 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 7488 4554 A368     		ldr	r3, [r4, #8]
 7489 4556 FCF7D0B9 		b	.L763
 7490              	.L364:
 7491 455a 3046     		mov	r0, r6
 7492 455c 8849     		ldr	r1, .L1644+32
 7493 455e FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7494 4562 4F46     		mov	r7, r9
 7495 4564 A368     		ldr	r3, [r4, #8]
 7496 4566 FCF7C8B9 		b	.L763
 7497              	.L546:
 7498 456a 85F8D473 		strb	r7, [r5, #980]
 7499 456e 1B68     		ldr	r3, [r3]
 7500 4570 9C42     		cmp	r4, r3
 7501 4572 7DF43FAD 		bne	.L548
 7502 4576 0123     		movs	r3, #1
 7503 4578 FDF73DBD 		b	.L547
 7504              	.L1521:
 7505 457c 2046     		mov	r0, r4
 7506 457e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7507 4582 08EE900A 		fmsr	s17, r0
 7508 4586 FDF795BB 		b	.L488
 7509              	.L1522:
 7510 458a 2046     		mov	r0, r4
 7511 458c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7512 4590 08EE100A 		fmsr	s16, r0
 7513 4594 FDF797BB 		b	.L489
 7514              	.L302:
 7515 4598 A368     		ldr	r3, [r4, #8]
 7516 459a 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 7517 459c 67F3C302 		bfi	r2, r7, #3, #1
 7518 45a0 5A74     		strb	r2, [r3, #17]
 7519 45a2 2046     		mov	r0, r4
 7520 45a4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7521 45a8 8046     		mov	r8, r0	@ float
 7522 45aa FCF751BA 		b	.L301
 7523              	.L970:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 133


 7524 45ae 9346     		mov	fp, r2
 7525 45b0 FEF7BCB8 		b	.L591
 7526              	.L663:
 7527 45b4 3046     		mov	r0, r6
 7528 45b6 7349     		ldr	r1, .L1644+36
 7529 45b8 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7530 45bc A368     		ldr	r3, [r4, #8]
 7531 45be FCF79CB9 		b	.L763
 7532              	.L478:
 7533 45c2 95EDB97A 		flds	s14, [r5, #740]
 7534 45c6 77EE277A 		fadds	s15, s14, s15
 7535 45ca 0027     		movs	r7, #0
 7536 45cc C5EDB97A 		fsts	s15, [r5, #740]
 7537 45d0 A368     		ldr	r3, [r4, #8]
 7538 45d2 FCF792B9 		b	.L763
 7539              	.L1490:
 7540 45d6 A368     		ldr	r3, [r4, #8]
 7541 45d8 0027     		movs	r7, #0
 7542 45da FCF78EB9 		b	.L763
 7543              	.L463:
 7544 45de 3B46     		mov	r3, r7
 7545 45e0 2868     		ldr	r0, [r5]
 7546 45e2 694A     		ldr	r2, .L1644+40
 7547 45e4 0621     		movs	r1, #6
 7548 45e6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7549 45ea FDF71ABE 		b	.L466
 7550              	.L499:
 7551 45ee DFF8A8A1 		ldr	r10, .L1644+56
 7552 45f2 DAF80C30 		ldr	r3, [r10, #12]
 7553 45f6 4FEA8009 		lsl	r9, r0, #2
 7554 45fa 4B44     		add	r3, r3, r9
 7555 45fc 4FF0000E 		mov	lr, #0
 7556 4600 5F68     		ldr	r7, [r3, #4]
 7557 4602 8DF83BE0 		strb	lr, [sp, #59]
 7558 4606 BA6B     		ldr	r2, [r7, #56]	@ float
 7559 4608 3B6B     		ldr	r3, [r7, #48]	@ float
 7560 460a 786B     		ldr	r0, [r7, #52]	@ float
 7561 460c 1192     		str	r2, [sp, #68]	@ float
 7562 460e FA6B     		ldr	r2, [r7, #60]	@ float
 7563 4610 1292     		str	r2, [sp, #72]	@ float
 7564 4612 97F84110 		ldrb	r1, [r7, #65]	@ zero_extendqisi2
 7565 4616 0F93     		str	r3, [sp, #60]	@ float
 7566 4618 81F00101 		eor	r1, r1, #1
 7567 461c 0FAA     		add	r2, sp, #60
 7568 461e 0DF13B03 		add	r3, sp, #59
 7569 4622 1090     		str	r0, [sp, #64]	@ float
 7570 4624 1391     		str	r1, [sp, #76]
 7571 4626 2046     		mov	r0, r4
 7572 4628 4121     		movs	r1, #65
 7573 462a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 7574 462e 2046     		mov	r0, r4
 7575 4630 10AA     		add	r2, sp, #64
 7576 4632 0DF13B03 		add	r3, sp, #59
 7577 4636 4321     		movs	r1, #67
 7578 4638 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 7579 463c 2046     		mov	r0, r4
 7580 463e 11AA     		add	r2, sp, #68
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 134


 7581 4640 0DF13B03 		add	r3, sp, #59
 7582 4644 4421     		movs	r1, #68
 7583 4646 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 7584 464a 2046     		mov	r0, r4
 7585 464c 13AA     		add	r2, sp, #76
 7586 464e 0DF13B03 		add	r3, sp, #59
 7587 4652 4221     		movs	r1, #66
 7588 4654 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 7589 4658 0DF13B03 		add	r3, sp, #59
 7590 465c 2046     		mov	r0, r4
 7591 465e 12AA     		add	r2, sp, #72
 7592 4660 5321     		movs	r1, #83
 7593 4662 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 7594 4666 9DF83B30 		ldrb	r3, [sp, #59]	@ zero_extendqisi2
 7595 466a 002B     		cmp	r3, #0
 7596 466c 40F07484 		bne	.L1596
 7597 4670 97F84030 		ldrb	r3, [r7, #64]	@ zero_extendqisi2
 7598 4674 002B     		cmp	r3, #0
 7599 4676 00F07487 		beq	.L1597
 7600 467a 97F84130 		ldrb	r3, [r7, #65]	@ zero_extendqisi2
 7601 467e 002B     		cmp	r3, #0
 7602 4680 00F06684 		beq	.L961
 7603 4684 97F84290 		ldrb	r9, [r7, #66]	@ zero_extendqisi2
 7604 4688 404A     		ldr	r2, .L1644+44
 7605 468a 414B     		ldr	r3, .L1644+48
 7606 468c B9F1000F 		cmp	r9, #0
 7607 4690 0CBF     		ite	eq
 7608 4692 9146     		moveq	r9, r2
 7609 4694 9946     		movne	r9, r3
 7610              	.L504:
 7611 4696 386B     		ldr	r0, [r7, #48]	@ float
 7612 4698 FFF7FEFF 		bl	__aeabi_f2d
 7613 469c CDE90001 		strd	r0, [sp]
 7614 46a0 786B     		ldr	r0, [r7, #52]	@ float
 7615 46a2 FFF7FEFF 		bl	__aeabi_f2d
 7616 46a6 CDE90201 		strd	r0, [sp, #8]
 7617 46aa B86B     		ldr	r0, [r7, #56]	@ float
 7618 46ac FFF7FEFF 		bl	__aeabi_f2d
 7619 46b0 CDE90401 		strd	r0, [sp, #16]
 7620 46b4 F86B     		ldr	r0, [r7, #60]	@ float
 7621 46b6 FFF7FEFF 		bl	__aeabi_f2d
 7622 46ba CDF82090 		str	r9, [sp, #32]
 7623 46be CDE90601 		strd	r0, [sp, #24]
 7624 46c2 4246     		mov	r2, r8
 7625 46c4 3046     		mov	r0, r6
 7626 46c6 3349     		ldr	r1, .L1644+52
 7627 46c8 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 7628 46cc 97F84130 		ldrb	r3, [r7, #65]	@ zero_extendqisi2
 7629 46d0 002B     		cmp	r3, #0
 7630 46d2 40F0DB86 		bne	.L1598
 7631              	.L502:
 7632 46d6 A368     		ldr	r3, [r4, #8]
 7633 46d8 0027     		movs	r7, #0
 7634 46da FCF70EB9 		b	.L763
 7635              	.L568:
 7636 46de 5868     		ldr	r0, [r3, #4]
 7637 46e0 FFF7FEFF 		bl	_ZN7Network7DisableEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 135


 7638 46e4 FEF716BF 		b	.L569
 7639              	.L1472:
 7640 46e8 2046     		mov	r0, r4
 7641 46ea FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7642 46ee 0128     		cmp	r0, #1
 7643 46f0 00F07385 		beq	.L1599
 7644 46f4 284B     		ldr	r3, .L1644+56
 7645 46f6 3946     		mov	r1, r7
 7646 46f8 5868     		ldr	r0, [r3, #4]
 7647 46fa 3246     		mov	r2, r6
 7648 46fc FFF7FEFF 		bl	_ZN7Network15DisableProtocolEiR9StringRef
 7649 4700 0027     		movs	r7, #0
 7650 4702 A368     		ldr	r3, [r4, #8]
 7651 4704 FCF7F9B8 		b	.L763
 7652              	.L1470:
 7653 4708 0823     		movs	r3, #8
 7654 470a 2046     		mov	r0, r4
 7655 470c 13AA     		add	r2, sp, #76
 7656 470e 1AA9     		add	r1, sp, #104
 7657 4710 1393     		str	r3, [sp, #76]
 7658 4712 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 7659 4716 1398     		ldr	r0, [sp, #76]
 7660 4718 0028     		cmp	r0, #0
 7661 471a 00F01F86 		beq	.L929
 7662 471e 1AAB     		add	r3, sp, #104
 7663 4720 03EB8000 		add	r0, r3, r0, lsl #2
 7664 4724 0021     		movs	r1, #0
 7665 4726 4FF0010E 		mov	lr, #1
 7666              	.L283:
 7667 472a 53F8042B 		ldr	r2, [r3], #4
 7668 472e 072A     		cmp	r2, #7
 7669 4730 03D8     		bhi	.L281
 7670 4732 0EFA02F2 		lsl	r2, lr, r2
 7671 4736 1143     		orrs	r1, r1, r2
 7672 4738 89B2     		uxth	r1, r1
 7673              	.L281:
 7674 473a 8342     		cmp	r3, r0
 7675 473c F5D1     		bne	.L283
 7676 473e 8846     		mov	r8, r1
 7677 4740 31B1     		cbz	r1, .L280
 7678 4742 2868     		ldr	r0, [r5]
 7679 4744 D9F80010 		ldr	r1, [r9]
 7680 4748 4FF07E52 		mov	r2, #1065353216
 7681 474c FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 7682              	.L280:
 7683 4750 4146     		mov	r1, r8
 7684 4752 3846     		mov	r0, r7
 7685 4754 FFF7FEFF 		bl	_ZN3Fan19SetHeatersMonitoredEt
 7686 4758 4FF00108 		mov	r8, #1
 7687 475c FCF727B9 		b	.L279
 7688              	.L1645:
 7689              		.align	2
 7690              	.L1644:
 7691 4760 940B0000 		.word	.LC105
 7692 4764 00000000 		.word	_ZN6GCodes11axisLettersE
 7693 4768 AC0B0000 		.word	.LC107
 7694 476c E8000000 		.word	.LC16
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 136


 7695 4770 A80B0000 		.word	.LC106
 7696 4774 B80B0000 		.word	.LC108
 7697 4778 C4060000 		.word	.LC75
 7698 477c 8C100000 		.word	.LC144
 7699 4780 14070000 		.word	.LC77
 7700 4784 58100000 		.word	.LC143
 7701 4788 18090000 		.word	.LC92
 7702 478c B8000000 		.word	.LC12
 7703 4790 C8000000 		.word	.LC14
 7704 4794 580A0000 		.word	.LC100
 7705 4798 00000000 		.word	reprap
 7706 479c A4000000 		.word	.LC9
 7707              	.L1480:
 7708 47a0 0144     		add	r1, r1, r0
 7709 47a2 C748     		ldr	r0, .L1646
 7710 47a4 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 7711 47a8 0122     		movs	r2, #1
 7712 47aa 0146     		mov	r1, r0
 7713 47ac 2846     		mov	r0, r5
 7714 47ae FFF7FEFF 		bl	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb
 7715 47b2 0746     		mov	r7, r0
 7716 47b4 0028     		cmp	r0, #0
 7717 47b6 7CF4C5AB 		bne	.L317
 7718 47ba FCF7F7BB 		b	.L1428
 7719              	.L1468:
 7720 47be 2046     		mov	r0, r4
 7721 47c0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7722 47c4 0146     		mov	r1, r0	@ float
 7723 47c6 3846     		mov	r0, r7
 7724 47c8 FFF7FEFF 		bl	_ZN3Fan11SetBlipTimeEf
 7725 47cc 4FF00108 		mov	r8, #1
 7726 47d0 FCF7DFB8 		b	.L277
 7727              	.L1467:
 7728 47d4 2046     		mov	r0, r4
 7729 47d6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7730 47da 4FF00108 		mov	r8, #1
 7731 47de B860     		str	r0, [r7, #8]	@ float
 7732 47e0 FCF7D0B8 		b	.L276
 7733              	.L1466:
 7734 47e4 2046     		mov	r0, r4
 7735 47e6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7736 47ea 0146     		mov	r1, r0	@ float
 7737 47ec 3846     		mov	r0, r7
 7738 47ee FFF7FEFF 		bl	_ZN3Fan15SetPwmFrequencyEf
 7739 47f2 4FF00108 		mov	r8, #1
 7740 47f6 FCF7BEB8 		b	.L275
 7741              	.L1465:
 7742 47fa 2046     		mov	r0, r4
 7743 47fc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7744 4800 0028     		cmp	r0, #0
 7745 4802 3846     		mov	r0, r7
 7746 4804 C0F26284 		blt	.L1600
 7747 4808 D4BF     		ite	le
 7748 480a 0021     		movle	r1, #0
 7749 480c 0121     		movgt	r1, #1
 7750 480e FFF7FEFF 		bl	_ZN3Fan11SetInvertedEb
 7751 4812 4FF00108 		mov	r8, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 137


 7752 4816 FCF7A7B8 		b	.L273
 7753              	.L615:
 7754 481a 3046     		mov	r0, r6
 7755 481c A949     		ldr	r1, .L1646+4
 7756 481e FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7757 4822 0127     		movs	r7, #1
 7758 4824 A368     		ldr	r3, [r4, #8]
 7759 4826 FCF768B8 		b	.L763
 7760              	.L266:
 7761 482a A548     		ldr	r0, .L1646
 7762 482c FFF7FEFF 		bl	_ZNK6RepRap23GetCurrentOrDefaultToolEv
 7763 4830 FFF7BFB9 		b	.L267
 7764              	.L1502:
 7765 4834 DFF88892 		ldr	r9, .L1646
 7766 4838 D9F80C30 		ldr	r3, [r9, #12]
 7767 483c 4FEA8008 		lsl	r8, r0, #2
 7768 4840 4344     		add	r3, r3, r8
 7769 4842 2046     		mov	r0, r4
 7770 4844 5B68     		ldr	r3, [r3, #4]
 7771 4846 1A69     		ldr	r2, [r3, #16]	@ float
 7772 4848 1392     		str	r2, [sp, #76]	@ float
 7773 484a D3F814E0 		ldr	lr, [r3, #20]	@ float
 7774 484e CDF868E0 		str	lr, [sp, #104]	@ float
 7775 4852 1AAA     		add	r2, sp, #104
 7776 4854 5021     		movs	r1, #80
 7777 4856 12AB     		add	r3, sp, #72
 7778 4858 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 7779 485c 12AB     		add	r3, sp, #72
 7780 485e 2046     		mov	r0, r4
 7781 4860 13AA     		add	r2, sp, #76
 7782 4862 5421     		movs	r1, #84
 7783 4864 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 7784 4868 9DF84830 		ldrb	r3, [sp, #72]	@ zero_extendqisi2
 7785 486c 002B     		cmp	r3, #0
 7786 486e 00F0D184 		beq	.L661
 7787 4872 D9F80C30 		ldr	r3, [r9, #12]
 7788 4876 1A9A     		ldr	r2, [sp, #104]	@ float
 7789 4878 1399     		ldr	r1, [sp, #76]	@ float
 7790 487a 9844     		add	r8, r8, r3
 7791 487c D8F80430 		ldr	r3, [r8, #4]
 7792 4880 1961     		str	r1, [r3, #16]	@ float
 7793 4882 5A61     		str	r2, [r3, #20]	@ float
 7794 4884 FCF741BE 		b	.L660
 7795              	.L1469:
 7796 4888 2046     		mov	r0, r4
 7797 488a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7798 488e 0146     		mov	r1, r0	@ float
 7799 4890 3846     		mov	r0, r7
 7800 4892 FFF7FEFF 		bl	_ZN3Fan11SetMinValueEf
 7801 4896 4FF00108 		mov	r8, #1
 7802 489a FCF781B8 		b	.L278
 7803              	.L224:
 7804 489e 3A46     		mov	r2, r7
 7805 48a0 3046     		mov	r0, r6
 7806 48a2 8949     		ldr	r1, .L1646+8
 7807 48a4 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 7808 48a8 0127     		movs	r7, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 138


 7809 48aa FFF72EBA 		b	.L225
 7810              	.L1554:
 7811 48ae 2046     		mov	r0, r4
 7812 48b0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7813 48b4 CAF82400 		str	r0, [r10, #36]	@ float
 7814 48b8 5046     		mov	r0, r10
 7815 48ba FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 7816 48be 0127     		movs	r7, #1
 7817 48c0 FDF7CABE 		b	.L796
 7818              	.L1553:
 7819 48c4 2046     		mov	r0, r4
 7820 48c6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7821 48ca CAF82000 		str	r0, [r10, #32]	@ float
 7822 48ce 5046     		mov	r0, r10
 7823 48d0 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 7824 48d4 0127     		movs	r7, #1
 7825 48d6 FDF7B8BE 		b	.L795
 7826              	.L1552:
 7827 48da 2046     		mov	r0, r4
 7828 48dc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7829 48e0 CAF81C00 		str	r0, [r10, #28]	@ float
 7830 48e4 5046     		mov	r0, r10
 7831 48e6 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 7832 48ea 0127     		movs	r7, #1
 7833 48ec FDF7A6BE 		b	.L794
 7834              	.L1550:
 7835 48f0 2046     		mov	r0, r4
 7836 48f2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7837 48f6 C8F81400 		str	r0, [r8, #20]	@ float
 7838 48fa 4046     		mov	r0, r8
 7839 48fc FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 7840 4900 4FF00109 		mov	r9, #1
 7841 4904 FDF734BE 		b	.L785
 7842              	.L1549:
 7843 4908 2046     		mov	r0, r4
 7844 490a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7845 490e C8F81000 		str	r0, [r8, #16]	@ float
 7846 4912 4046     		mov	r0, r8
 7847 4914 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 7848 4918 4FF00109 		mov	r9, #1
 7849 491c FDF721BE 		b	.L784
 7850              	.L1548:
 7851 4920 2046     		mov	r0, r4
 7852 4922 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7853 4926 07EE900A 		fmsr	s15, r0
 7854 492a 07F6AC22 		addw	r2, r7, #2732
 7855 492e 27EEA77A 		fmuls	s14, s15, s15
 7856 4932 07F6D823 		addw	r3, r7, #2776
 7857 4936 1060     		str	r0, [r2]	@ float
 7858 4938 4FF00109 		mov	r9, #1
 7859 493c 83ED007A 		fsts	s14, [r3]
 7860 4940 FDF708BE 		b	.L783
 7861              	.L1547:
 7862 4944 2046     		mov	r0, r4
 7863 4946 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7864 494a C8F80C00 		str	r0, [r8, #12]	@ float
 7865 494e 4046     		mov	r0, r8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 139


 7866 4950 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 7867 4954 4FF00109 		mov	r9, #1
 7868 4958 FDF7F5BD 		b	.L782
 7869              	.L1546:
 7870 495c 2046     		mov	r0, r4
 7871 495e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7872 4962 C8F80800 		str	r0, [r8, #8]	@ float
 7873 4966 4046     		mov	r0, r8
 7874 4968 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 7875 496c 4FF00109 		mov	r9, #1
 7876 4970 FDF7E2BD 		b	.L781
 7877              	.L1571:
 7878 4974 3046     		mov	r0, r6
 7879 4976 5549     		ldr	r1, .L1646+12
 7880 4978 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7881 497c FEF7A6B9 		b	.L816
 7882              	.L1536:
 7883 4980 2046     		mov	r0, r4
 7884 4982 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 7885 4986 8146     		mov	r9, r0
 7886 4988 FDF796BB 		b	.L159
 7887              	.L1535:
 7888 498c 2046     		mov	r0, r4
 7889 498e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7890 4992 0746     		mov	r7, r0
 7891 4994 FDF787BB 		b	.L158
 7892              	.L1426:
 7893 4998 17EE902A 		fmrs	r2, s15
 7894 499c FFF7FEFF 		bl	_ZN4Heat20SetActiveTemperatureEaf
 7895 49a0 DAF80C00 		ldr	r0, [r10, #12]
 7896 49a4 4146     		mov	r1, r8
 7897 49a6 FFF7FEFF 		bl	_ZN4Heat8ActivateEa
 7898 49aa FCF725BC 		b	.L350
 7899              	.L764:
 7900 49ae 3046     		mov	r0, r6
 7901 49b0 4749     		ldr	r1, .L1646+16
 7902 49b2 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7903 49b6 D5F8B031 		ldr	r3, [r5, #432]
 7904 49ba 2BB3     		cbz	r3, .L770
 7905              	.L773:
 7906 49bc 2021     		movs	r1, #32
 7907 49be 3046     		mov	r0, r6
 7908 49c0 FFF7FEFF 		bl	_ZN9StringRef3catEc
 7909 49c4 2B68     		ldr	r3, [r5]
 7910 49c6 17F80A20 		ldrb	r2, [r7, r10]	@ zero_extendqisi2
 7911 49ca 0AF14001 		add	r1, r10, #64
 7912 49ce 03EBC103 		add	r3, r3, r1, lsl #3
 7913 49d2 03F10409 		add	r9, r3, #4
 7914 49d6 5B68     		ldr	r3, [r3, #4]
 7915 49d8 83B1     		cbz	r3, .L771
 7916 49da 4FF00008 		mov	r8, #0
 7917              	.L772:
 7918 49de 09EB0803 		add	r3, r9, r8
 7919 49e2 3C49     		ldr	r1, .L1646+20
 7920 49e4 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 7921 49e6 3046     		mov	r0, r6
 7922 49e8 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 140


 7923 49ec D9F80030 		ldr	r3, [r9]
 7924 49f0 08F10108 		add	r8, r8, #1
 7925 49f4 4345     		cmp	r3, r8
 7926 49f6 01D9     		bls	.L771
 7927 49f8 3A22     		movs	r2, #58
 7928 49fa F0E7     		b	.L772
 7929              	.L771:
 7930 49fc D5F8B031 		ldr	r3, [r5, #432]
 7931 4a00 0AF1010A 		add	r10, r10, #1
 7932 4a04 5345     		cmp	r3, r10
 7933 4a06 D9D8     		bhi	.L773
 7934              	.L770:
 7935 4a08 3046     		mov	r0, r6
 7936 4a0a 2021     		movs	r1, #32
 7937 4a0c FFF7FEFF 		bl	_ZN9StringRef3catEc
 7938 4a10 D5F8B471 		ldr	r7, [r5, #436]
 7939 4a14 002F     		cmp	r7, #0
 7940 4a16 00F09E84 		beq	.L1601
 7941 4a1a 0027     		movs	r7, #0
 7942 4a1c 4522     		movs	r2, #69
 7943 4a1e 00E0     		b	.L775
 7944              	.L774:
 7945 4a20 3A22     		movs	r2, #58
 7946              	.L775:
 7947 4a22 2B68     		ldr	r3, [r5]
 7948 4a24 2B49     		ldr	r1, .L1646+20
 7949 4a26 3B44     		add	r3, r3, r7
 7950 4a28 3046     		mov	r0, r6
 7951 4a2a 93F83432 		ldrb	r3, [r3, #564]	@ zero_extendqisi2
 7952 4a2e FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 7953 4a32 D5F8B431 		ldr	r3, [r5, #436]
 7954 4a36 0137     		adds	r7, r7, #1
 7955 4a38 BB42     		cmp	r3, r7
 7956 4a3a F1D8     		bhi	.L774
 7957 4a3c A368     		ldr	r3, [r4, #8]
 7958 4a3e 0027     		movs	r7, #0
 7959 4a40 FBF75BBF 		b	.L763
 7960              	.L148:
 7961 4a44 3046     		mov	r0, r6
 7962 4a46 2449     		ldr	r1, .L1646+24
 7963 4a48 4FF00109 		mov	r9, #1
 7964 4a4c FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 7965 4a50 4F46     		mov	r7, r9
 7966 4a52 FEF783B8 		b	.L146
 7967              	.L1529:
 7968 4a56 3046     		mov	r0, r6
 7969 4a58 2049     		ldr	r1, .L1646+28
 7970 4a5a FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7971 4a5e B9F1000F 		cmp	r9, #0
 7972 4a62 7FF4ECAB 		bne	.L137
 7973 4a66 1E4B     		ldr	r3, .L1646+32
 7974 4a68 CDF80090 		str	r9, [sp]
 7975 4a6c 1A68     		ldr	r2, [r3]
 7976 4a6e 2846     		mov	r0, r5
 7977 4a70 2146     		mov	r1, r4
 7978 4a72 4B46     		mov	r3, r9
 7979 4a74 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 141


 7980 4a78 0028     		cmp	r0, #0
 7981 4a7a 3DF457AA 		beq	.L139
 7982 4a7e 4F46     		mov	r7, r9
 7983 4a80 A368     		ldr	r3, [r4, #8]
 7984 4a82 FBF73ABF 		b	.L763
 7985              	.L1533:
 7986 4a86 2046     		mov	r0, r4
 7987 4a88 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7988 4a8c 0146     		mov	r1, r0
 7989 4a8e FDF7D6BA 		b	.L174
 7990              	.L286:
 7991 4a92 F5EEC07A 		fcmpezs	s15
 7992 4a96 9FED137A 		flds	s14, .L1646+36
 7993 4a9a F1EE10FA 		fmstat
 7994 4a9e D8BF     		it	le
 7995 4aa0 F0EE477A 		fcpysle	s15, s14
 7996 4aa4 FBF79EBF 		b	.L285
 7997              	.L1572:
 7998 4aa8 2046     		mov	r0, r4
 7999 4aaa FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8000 4aae DDF834C0 		ldr	ip, [sp, #52]
 8001 4ab2 4FF00109 		mov	r9, #1
 8002 4ab6 CCF8300C 		str	r0, [ip, #3120]
 8003 4aba FEF7B5BA 		b	.L803
 8004              	.L1647:
 8005 4abe 00BF     		.align	2
 8006              	.L1646:
 8007 4ac0 00000000 		.word	reprap
 8008 4ac4 B80E0000 		.word	.LC134
 8009 4ac8 88040000 		.word	.LC52
 8010 4acc E4130000 		.word	.LC169
 8011 4ad0 CC120000 		.word	.LC161
 8012 4ad4 E0120000 		.word	.LC162
 8013 4ad8 B4010000 		.word	.LC32
 8014 4adc A4010000 		.word	.LC31
 8015 4ae0 00000000 		.word	.LANCHOR1
 8016 4ae4 00000000 		.word	0
 8017              	.L1534:
 8018 4ae8 2046     		mov	r0, r4
 8019 4aea FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8020 4aee 0146     		mov	r1, r0
 8021 4af0 FDF7BFBA 		b	.L177
 8022              	.L197:
 8023 4af4 3046     		mov	r0, r6
 8024 4af6 BD49     		ldr	r1, .L1648
 8025 4af8 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8026 4afc 0127     		movs	r7, #1
 8027 4afe A368     		ldr	r3, [r4, #8]
 8028 4b00 FBF7FBBE 		b	.L763
 8029              	.L1507:
 8030 4b04 0121     		movs	r1, #1
 8031 4b06 2046     		mov	r0, r4
 8032 4b08 FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringEb
 8033 4b0c 0746     		mov	r7, r0
 8034 4b0e 3946     		mov	r1, r7
 8035 4b10 2846     		mov	r0, r5
 8036 4b12 FFF7FEFF 		bl	_ZN6GCodes9StartHashEPKc
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 142


 8037 4b16 0028     		cmp	r0, #0
 8038 4b18 7CF4F5AB 		bne	.L210
 8039 4b1c 3A46     		mov	r2, r7
 8040 4b1e 3046     		mov	r0, r6
 8041 4b20 B349     		ldr	r1, .L1648+4
 8042 4b22 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8043 4b26 0127     		movs	r7, #1
 8044 4b28 A368     		ldr	r3, [r4, #8]
 8045 4b2a FBF7E6BE 		b	.L763
 8046              	.L1508:
 8047 4b2e 3946     		mov	r1, r7
 8048 4b30 D9F80C00 		ldr	r0, [r9, #12]
 8049 4b34 4246     		mov	r2, r8
 8050 4b36 FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
 8051 4b3a 0746     		mov	r7, r0
 8052 4b3c 0028     		cmp	r0, #0
 8053 4b3e 7CF46FAE 		bne	.L378
 8054 4b42 FCF733BA 		b	.L1428
 8055              	.L636:
 8056 4b46 4A46     		mov	r2, r9
 8057 4b48 3046     		mov	r0, r6
 8058 4b4a AA49     		ldr	r1, .L1648+8
 8059 4b4c FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8060 4b50 3B6C     		ldr	r3, [r7, #64]
 8061 4b52 002B     		cmp	r3, #0
 8062 4b54 00F0C885 		beq	.L1602
 8063 4b58 07F12409 		add	r9, r7, #36
 8064 4b5c 4FF0200A 		mov	r10, #32
 8065 4b60 01E0     		b	.L641
 8066              	.L640:
 8067 4b62 4FF03A0A 		mov	r10, #58
 8068              	.L641:
 8069 4b66 59F8040B 		ldr	r0, [r9], #4	@ float
 8070 4b6a FFF7FEFF 		bl	__aeabi_f2d
 8071 4b6e 5246     		mov	r2, r10
 8072 4b70 CDE90001 		strd	r0, [sp]
 8073 4b74 3046     		mov	r0, r6
 8074 4b76 A049     		ldr	r1, .L1648+12
 8075 4b78 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 8076 4b7c 3B6C     		ldr	r3, [r7, #64]
 8077 4b7e 08F10108 		add	r8, r8, #1
 8078 4b82 9845     		cmp	r8, r3
 8079 4b84 EDD3     		bcc	.L640
 8080 4b86 A368     		ldr	r3, [r4, #8]
 8081 4b88 0027     		movs	r7, #0
 8082 4b8a FBF7B6BE 		b	.L763
 8083              	.L793:
 8084 4b8e 3046     		mov	r0, r6
 8085 4b90 9A49     		ldr	r1, .L1648+16
 8086 4b92 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8087 4b96 FDF739BD 		b	.L792
 8088              	.L1537:
 8089 4b9a 4946     		mov	r1, r9
 8090 4b9c 0122     		movs	r2, #1
 8091 4b9e 9848     		ldr	r0, .L1648+20
 8092 4ba0 FFF7FEFF 		bl	_ZN6RepRap16GetFilesResponseEPKcb
 8093 4ba4 0DF14C08 		add	r8, sp, #76
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 143


 8094 4ba8 0A21     		movs	r1, #10
 8095 4baa C8F80000 		str	r0, [r8]
 8096 4bae FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 8097 4bb2 FDF7D4BA 		b	.L161
 8098              	.L1471:
 8099 4bb6 A368     		ldr	r3, [r4, #8]
 8100 4bb8 FBF79FBE 		b	.L763
 8101              	.L957:
 8102 4bbc DFED918A 		flds	s17, .L1648+24
 8103 4bc0 FDF778B8 		b	.L488
 8104              	.L458:
 8105 4bc4 DAF80070 		ldr	r7, [r10]
 8106 4bc8 05EB8703 		add	r3, r5, r7, lsl #2
 8107 4bcc D3F8C402 		ldr	r0, [r3, #708]	@ float
 8108 4bd0 FFF7FEFF 		bl	__aeabi_f2d
 8109 4bd4 0022     		movs	r2, #0
 8110 4bd6 8C4B     		ldr	r3, .L1648+28
 8111 4bd8 FFF7FEFF 		bl	__aeabi_dmul
 8112 4bdc 3A46     		mov	r2, r7
 8113 4bde CDE90001 		strd	r0, [sp]
 8114 4be2 3046     		mov	r0, r6
 8115 4be4 8949     		ldr	r1, .L1648+32
 8116 4be6 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8117 4bea FCF7BBBE 		b	.L456
 8118              	.L1488:
 8119 4bee 3046     		mov	r0, r6
 8120 4bf0 8749     		ldr	r1, .L1648+36
 8121 4bf2 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8122 4bf6 0127     		movs	r7, #1
 8123 4bf8 A368     		ldr	r3, [r4, #8]
 8124 4bfa FBF77EBE 		b	.L763
 8125              	.L1586:
 8126 4bfe 3046     		mov	r0, r6
 8127 4c00 8449     		ldr	r1, .L1648+40
 8128 4c02 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8129 4c06 0127     		movs	r7, #1
 8130 4c08 A368     		ldr	r3, [r4, #8]
 8131 4c0a FBF776BE 		b	.L763
 8132              	.L1577:
 8133 4c0e DFF8F0A1 		ldr	r10, .L1648+20
 8134 4c12 DAF80C00 		ldr	r0, [r10, #12]
 8135 4c16 90F92F10 		ldrsb	r1, [r0, #47]
 8136 4c1a 4B1C     		adds	r3, r1, #1
 8137 4c1c 01D0     		beq	.L357
 8138 4c1e FFF7FEFF 		bl	_ZN4Heat9SwitchOffEa
 8139              	.L357:
 8140 4c22 DAF80C30 		ldr	r3, [r10, #12]
 8141 4c26 FF22     		movs	r2, #255
 8142 4c28 83F82F20 		strb	r2, [r3, #47]
 8143 4c2c 0027     		movs	r7, #0
 8144 4c2e FEF71BBC 		b	.L358
 8145              	.L1593:
 8146 4c32 3046     		mov	r0, r6
 8147 4c34 7849     		ldr	r1, .L1648+44
 8148 4c36 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8149 4c3a 0027     		movs	r7, #0
 8150 4c3c A368     		ldr	r3, [r4, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 144


 8151 4c3e FBF75CBE 		b	.L763
 8152              	.L647:
 8153 4c42 2046     		mov	r0, r4
 8154 4c44 5321     		movs	r1, #83
 8155 4c46 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8156 4c4a 0028     		cmp	r0, #0
 8157 4c4c 00F0C082 		beq	.L977
 8158 4c50 2846     		mov	r0, r5
 8159 4c52 2146     		mov	r1, r4
 8160 4c54 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8161 4c58 0028     		cmp	r0, #0
 8162 4c5a 3BF47FAF 		beq	.L554
 8163 4c5e 2046     		mov	r0, r4
 8164 4c60 2F68     		ldr	r7, [r5]
 8165 4c62 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8166 4c66 4744     		add	r7, r7, r8
 8167 4c68 0030     		adds	r0, r0, #0
 8168 4c6a 18BF     		it	ne
 8169 4c6c 0120     		movne	r0, #1
 8170 4c6e 87F8D200 		strb	r0, [r7, #210]
 8171 4c72 4FF00109 		mov	r9, #1
 8172              	.L648:
 8173 4c76 2046     		mov	r0, r4
 8174 4c78 5221     		movs	r1, #82
 8175 4c7a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8176 4c7e B8B1     		cbz	r0, .L649
 8177 4c80 2846     		mov	r0, r5
 8178 4c82 2146     		mov	r1, r4
 8179 4c84 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8180 4c88 0028     		cmp	r0, #0
 8181 4c8a 3BF467AF 		beq	.L554
 8182 4c8e 2046     		mov	r0, r4
 8183 4c90 2F68     		ldr	r7, [r5]
 8184 4c92 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8185 4c96 07EB0803 		add	r3, r7, r8
 8186 4c9a 0030     		adds	r0, r0, #0
 8187 4c9c 18BF     		it	ne
 8188 4c9e 0120     		movne	r0, #1
 8189 4ca0 83F8DC00 		strb	r0, [r3, #220]
 8190 4ca4 4146     		mov	r1, r8
 8191 4ca6 3846     		mov	r0, r7
 8192 4ca8 FFF7FEFF 		bl	_ZN8Platform13DisableDriverEj
 8193 4cac 4FF00109 		mov	r9, #1
 8194              	.L649:
 8195 4cb0 2046     		mov	r0, r4
 8196 4cb2 5421     		movs	r1, #84
 8197 4cb4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8198 4cb8 50B1     		cbz	r0, .L650
 8199 4cba 2046     		mov	r0, r4
 8200 4cbc 2F68     		ldr	r7, [r5]
 8201 4cbe FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8202 4cc2 4146     		mov	r1, r8
 8203 4cc4 0246     		mov	r2, r0	@ float
 8204 4cc6 3846     		mov	r0, r7
 8205 4cc8 FFF7FEFF 		bl	_ZN8Platform19SetDriverStepTimingEjf
 8206 4ccc 4FF00109 		mov	r9, #1
 8207              	.L650:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 145


 8208 4cd0 D5F8B031 		ldr	r3, [r5, #432]
 8209 4cd4 002B     		cmp	r3, #0
 8210 4cd6 00F09283 		beq	.L651
 8211 4cda 4FF0000A 		mov	r10, #0
 8212 4cde 4F4F     		ldr	r7, .L1648+48
 8213 4ce0 D346     		mov	fp, r10
 8214              	.L654:
 8215 4ce2 17F80A10 		ldrb	r1, [r7, r10]	@ zero_extendqisi2
 8216 4ce6 2046     		mov	r0, r4
 8217 4ce8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8218 4cec D5F8B031 		ldr	r3, [r5, #432]
 8219 4cf0 0028     		cmp	r0, #0
 8220 4cf2 0AF1010A 		add	r10, r10, #1
 8221 4cf6 18BF     		it	ne
 8222 4cf8 4FF0010B 		movne	fp, #1
 8223 4cfc 5345     		cmp	r3, r10
 8224 4cfe F0D8     		bhi	.L654
 8225 4d00 2046     		mov	r0, r4
 8226 4d02 4521     		movs	r1, #69
 8227 4d04 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8228 4d08 0028     		cmp	r0, #0
 8229 4d0a 40F07F83 		bne	.L655
 8230 4d0e BBF1000F 		cmp	fp, #0
 8231 4d12 40F07B83 		bne	.L655
 8232              	.L656:
 8233 4d16 B9F1000F 		cmp	r9, #0
 8234 4d1a 00F0C584 		beq	.L657
 8235 4d1e A368     		ldr	r3, [r4, #8]
 8236 4d20 0027     		movs	r7, #0
 8237 4d22 FBF7EABD 		b	.L763
 8238              	.L862:
 8239 4d26 3046     		mov	r0, r6
 8240 4d28 3D49     		ldr	r1, .L1648+52
 8241 4d2a FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8242 4d2e 0027     		movs	r7, #0
 8243 4d30 A368     		ldr	r3, [r4, #8]
 8244 4d32 FBF7E2BD 		b	.L763
 8245              	.L1526:
 8246 4d36 A368     		ldr	r3, [r4, #8]
 8247 4d38 FBF7DFBD 		b	.L763
 8248              	.L1592:
 8249 4d3c 2046     		mov	r0, r4
 8250 4d3e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8251 4d42 0028     		cmp	r0, #0
 8252 4d44 FBF65DAE 		blt	.L271
 8253 4d48 0128     		cmp	r0, #1
 8254 4d4a 40F36883 		ble	.L290
 8255 4d4e 0228     		cmp	r0, #2
 8256 4d50 7BF457AE 		bne	.L271
 8257 4d54 2846     		mov	r0, r5
 8258 4d56 FFF7FEFF 		bl	_ZN6GCodes17SetMappedFanSpeedEv
 8259 4d5a FBF752BE 		b	.L271
 8260              	.L1003:
 8261 4d5e 3149     		ldr	r1, .L1648+56
 8262 4d60 FDF7E3BD 		b	.L833
 8263              	.L1574:
 8264 4d64 A368     		ldr	r3, [r4, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 146


 8265 4d66 FBF7C8BD 		b	.L763
 8266              	.L814:
 8267 4d6a 3046     		mov	r0, r6
 8268 4d6c 2E49     		ldr	r1, .L1648+60
 8269 4d6e FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8270 4d72 FDF7ABBF 		b	.L816
 8271              	.L577:
 8272 4d76 2868     		ldr	r0, [r5]
 8273 4d78 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 8274 4d7c 2B49     		ldr	r1, .L1648+64
 8275 4d7e 0246     		mov	r2, r0
 8276 4d80 3046     		mov	r0, r6
 8277 4d82 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 8278 4d86 0027     		movs	r7, #0
 8279 4d88 A368     		ldr	r3, [r4, #8]
 8280 4d8a FBF7B6BD 		b	.L763
 8281              	.L1576:
 8282 4d8e 2046     		mov	r0, r4
 8283 4d90 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 8284 4d94 2649     		ldr	r1, .L1648+68
 8285 4d96 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 8286 4d9a 0028     		cmp	r0, #0
 8287 4d9c 0CBF     		ite	eq
 8288 4d9e 0021     		moveq	r1, #0
 8289 4da0 1021     		movne	r1, #16
 8290 4da2 FEF74CBB 		b	.L864
 8291              	.L1481:
 8292 4da6 A368     		ldr	r3, [r4, #8]
 8293 4da8 FBF7A7BD 		b	.L763
 8294              	.L1590:
 8295 4dac 2046     		mov	r0, r4
 8296 4dae D5F80080 		ldr	r8, [r5]
 8297 4db2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8298 4db6 3946     		mov	r1, r7
 8299 4db8 0246     		mov	r2, r0	@ float
 8300 4dba 4046     		mov	r0, r8
 8301 4dbc FFF7FEFF 		bl	_ZN8Platform18SetPressureAdvanceEjf
 8302 4dc0 0027     		movs	r7, #0
 8303 4dc2 A368     		ldr	r3, [r4, #8]
 8304 4dc4 FBF799BD 		b	.L763
 8305              	.L721:
 8306 4dc8 2868     		ldr	r0, [r5]
 8307 4dca 1A4A     		ldr	r2, .L1648+72
 8308 4dcc 0621     		movs	r1, #6
 8309 4dce FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8310 4dd2 0027     		movs	r7, #0
 8311 4dd4 A368     		ldr	r3, [r4, #8]
 8312 4dd6 FBF790BD 		b	.L763
 8313              	.L1566:
 8314 4dda 0122     		movs	r2, #1
 8315 4ddc FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
 8316 4de0 0746     		mov	r7, r0
 8317 4de2 0028     		cmp	r0, #0
 8318 4de4 7DF40BAE 		bne	.L885
 8319 4de8 FCF7E0B8 		b	.L1428
 8320              	.L1649:
 8321              		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 147


 8322              	.L1648:
 8323 4dec F8020000 		.word	.LC42
 8324 4df0 70040000 		.word	.LC51
 8325 4df4 440F0000 		.word	.LC138
 8326 4df8 D0040000 		.word	.LC56
 8327 4dfc 4C130000 		.word	.LC164
 8328 4e00 00000000 		.word	reprap
 8329 4e04 00009642 		.word	1117126656
 8330 4e08 00005940 		.word	1079574528
 8331 4e0c E4080000 		.word	.LC91
 8332 4e10 8C060000 		.word	.LC73
 8333 4e14 74060000 		.word	.LC72
 8334 4e18 C4090000 		.word	.LC96
 8335 4e1c 00000000 		.word	_ZN6GCodes11axisLettersE
 8336 4e20 34150000 		.word	.LC182
 8337 4e24 6C010000 		.word	.LC29
 8338 4e28 F8130000 		.word	.LC170
 8339 4e2c 7C0D0000 		.word	.LC126
 8340 4e30 50150000 		.word	.LC183
 8341 4e34 7C120000 		.word	.LC159
 8342              	.L1486:
 8343 4e38 3046     		mov	r0, r6
 8344 4e3a C949     		ldr	r1, .L1650+16
 8345 4e3c FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 8346 4e40 FCF7AAB9 		b	.L819
 8347              	.L288:
 8348 4e44 C5EDAF7A 		fsts	s15, [r5, #700]
 8349 4e48 2846     		mov	r0, r5
 8350 4e4a FFF7FEFF 		bl	_ZN6GCodes17SetMappedFanSpeedEv
 8351 4e4e FBF7D8BD 		b	.L271
 8352              	.L1584:
 8353 4e52 4B88     		ldrh	r3, [r1, #2]
 8354 4e54 002B     		cmp	r3, #0
 8355 4e56 7EF4A0AC 		bne	.L727
 8356 4e5a 2A44     		add	r2, r2, r5
 8357 4e5c 82F81E33 		strb	r3, [r2, #798]
 8358 4e60 FEF79BBC 		b	.L727
 8359              	.L1582:
 8360 4e64 2868     		ldr	r0, [r5]
 8361 4e66 FFF7FEFF 		bl	_ZNK8Platform19GetAllEndstopStatesEv
 8362 4e6a 0623     		movs	r3, #6
 8363 4e6c 03FB0853 		mla	r3, r3, r8, r5
 8364 4e70 03F54673 		add	r3, r3, #792
 8365 4e74 5A88     		ldrh	r2, [r3, #2]
 8366 4e76 1042     		tst	r0, r2
 8367 4e78 40F0E680 		bne	.L723
 8368 4e7c 9B88     		ldrh	r3, [r3, #4]
 8369 4e7e 8343     		bics	r3, r3, r0
 8370 4e80 40F0E280 		bne	.L723
 8371 4e84 1F46     		mov	r7, r3
 8372 4e86 A368     		ldr	r3, [r4, #8]
 8373 4e88 FBF737BD 		b	.L763
 8374              	.L213:
 8375 4e8c 002F     		cmp	r7, #0
 8376 4e8e 40F08482 		bne	.L215
 8377 4e92 A368     		ldr	r3, [r4, #8]
 8378 4e94 FBF731BD 		b	.L763
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 148


 8379              	.L1511:
 8380 4e98 0323     		movs	r3, #3
 8381 4e9a 13AA     		add	r2, sp, #76
 8382 4e9c 1AA9     		add	r1, sp, #104
 8383 4e9e 2046     		mov	r0, r4
 8384 4ea0 1393     		str	r3, [sp, #76]
 8385 4ea2 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 8386 4ea6 139F     		ldr	r7, [sp, #76]
 8387 4ea8 A7B1     		cbz	r7, .L849
 8388 4eaa 1A9B     		ldr	r3, [sp, #104]
 8389 4eac 002B     		cmp	r3, #0
 8390 4eae 40F06183 		bne	.L850
 8391 4eb2 95F85C23 		ldrb	r2, [r5, #860]	@ zero_extendqisi2
 8392 4eb6 1AA8     		add	r0, sp, #104
 8393 4eb8 1946     		mov	r1, r3
 8394 4eba 04E0     		b	.L853
 8395              	.L854:
 8396 4ebc 50F8043F 		ldr	r3, [r0, #4]!
 8397 4ec0 002B     		cmp	r3, #0
 8398 4ec2 40F05583 		bne	.L1603
 8399              	.L853:
 8400 4ec6 0131     		adds	r1, r1, #1
 8401 4ec8 B942     		cmp	r1, r7
 8402 4eca 42F00102 		orr	r2, r2, #1
 8403 4ece F5D1     		bne	.L854
 8404 4ed0 85F85C23 		strb	r2, [r5, #860]
 8405              	.L849:
 8406 4ed4 95F85C03 		ldrb	r0, [r5, #860]	@ zero_extendqisi2
 8407 4ed8 0028     		cmp	r0, #0
 8408 4eda 7CF464AD 		bne	.L856
 8409 4ede 0746     		mov	r7, r0
 8410 4ee0 A368     		ldr	r3, [r4, #8]
 8411 4ee2 FBF70ABD 		b	.L763
 8412              	.L1482:
 8413 4ee6 2046     		mov	r0, r4
 8414 4ee8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8415 4eec 0030     		adds	r0, r0, #0
 8416 4eee 18BF     		it	ne
 8417 4ef0 0120     		movne	r0, #1
 8418 4ef2 87F8CC00 		strb	r0, [r7, #204]
 8419 4ef6 A368     		ldr	r3, [r4, #8]
 8420 4ef8 0027     		movs	r7, #0
 8421 4efa FBF7FEBC 		b	.L763
 8422              	.L359:
 8423 4efe 3046     		mov	r0, r6
 8424 4f00 9849     		ldr	r1, .L1650+20
 8425 4f02 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8426 4f06 0127     		movs	r7, #1
 8427 4f08 FEF7AEBA 		b	.L358
 8428              	.L1476:
 8429 4f0c 964B     		ldr	r3, .L1650+24
 8430 4f0e 4FFA88F1 		sxtb	r1, r8
 8431 4f12 D868     		ldr	r0, [r3, #12]
 8432 4f14 17EE902A 		fmrs	r2, s15
 8433 4f18 FFF7FEFF 		bl	_ZN4Heat19SetTemperatureLimitEaf
 8434 4f1c 0027     		movs	r7, #0
 8435 4f1e A368     		ldr	r3, [r4, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 149


 8436 4f20 FBF7EBBC 		b	.L763
 8437              	.L1432:
 8438 4f24 3046     		mov	r0, r6
 8439 4f26 9149     		ldr	r1, .L1650+28
 8440 4f28 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8441 4f2c 0127     		movs	r7, #1
 8442 4f2e A368     		ldr	r3, [r4, #8]
 8443 4f30 FBF7E3BC 		b	.L763
 8444              	.L1515:
 8445 4f34 3046     		mov	r0, r6
 8446 4f36 8E49     		ldr	r1, .L1650+32
 8447 4f38 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8448 4f3c 0127     		movs	r7, #1
 8449 4f3e A368     		ldr	r3, [r4, #8]
 8450 4f40 FBF7DBBC 		b	.L763
 8451              	.L817:
 8452 4f44 3046     		mov	r0, r6
 8453 4f46 8B49     		ldr	r1, .L1650+36
 8454 4f48 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8455 4f4c FDF7BEBE 		b	.L816
 8456              	.L961:
 8457 4f50 DFF84092 		ldr	r9, .L1650+68
 8458 4f54 FFF79FBB 		b	.L504
 8459              	.L1596:
 8460 4f58 139B     		ldr	r3, [sp, #76]
 8461 4f5a DAF80C20 		ldr	r2, [r10, #12]
 8462 4f5e 1298     		ldr	r0, [sp, #72]	@ float
 8463 4f60 0090     		str	r0, [sp]	@ float
 8464 4f62 D3F10103 		rsbs	r3, r3, #1
 8465 4f66 38BF     		it	cc
 8466 4f68 0023     		movcc	r3, #0
 8467 4f6a 9144     		add	r9, r9, r2
 8468 4f6c 0193     		str	r3, [sp, #4]
 8469 4f6e 0F99     		ldr	r1, [sp, #60]	@ float
 8470 4f70 D9F80400 		ldr	r0, [r9, #4]
 8471 4f74 109A     		ldr	r2, [sp, #64]	@ float
 8472 4f76 119B     		ldr	r3, [sp, #68]	@ float
 8473 4f78 FFF7FEFF 		bl	_ZN3PID8SetModelEffffb
 8474 4f7c 0028     		cmp	r0, #0
 8475 4f7e 7FF4AAAB 		bne	.L502
 8476 4f82 3046     		mov	r0, r6
 8477 4f84 7C49     		ldr	r1, .L1650+40
 8478 4f86 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8479 4f8a FFF7A4BB 		b	.L502
 8480              	.L1541:
 8481 4f8e 2046     		mov	r0, r4
 8482 4f90 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8483 4f94 0028     		cmp	r0, #0
 8484 4f96 7DF73DA9 		ble	.L886
 8485 4f9a 9AF80030 		ldrb	r3, [r10]	@ zero_extendqisi2
 8486 4f9e 83F00103 		eor	r3, r3, #1
 8487 4fa2 8AF80030 		strb	r3, [r10]
 8488 4fa6 FDF735B9 		b	.L886
 8489              	.L1542:
 8490 4faa 2046     		mov	r0, r4
 8491 4fac FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8492 4fb0 07EE900A 		fmsr	s15, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 150


 8493 4fb4 F5EEC07A 		fcmpezs	s15
 8494 4fb8 F1EE10FA 		fmstat
 8495 4fbc 00F1BE82 		bmi	.L1604
 8496 4fc0 9FED6E7A 		flds	s14, .L1650+44
 8497 4fc4 F4EEC77A 		fcmpes	s15, s14
 8498 4fc8 F1EE10FA 		fmstat
 8499 4fcc 40F13E82 		bpl	.L1435
 8500 4fd0 F4EE677A 		fcmps	s15, s15
 8501 4fd4 F1EE10FA 		fmstat
 8502 4fd8 08D6     		bvs	.L472
 8503 4fda 9FED697A 		flds	s14, .L1650+48
 8504 4fde F4EEC77A 		fcmpes	s15, s14
 8505 4fe2 F1EE10FA 		fmstat
 8506 4fe6 58BF     		it	pl
 8507 4fe8 F0EE477A 		fcpyspl	s15, s14
 8508              	.L472:
 8509 4fec 17EE900A 		fmrs	r0, s15
 8510 4ff0 FFF7FEFF 		bl	__aeabi_f2d
 8511 4ff4 56A3     		adr	r3, .L1650
 8512 4ff6 D3E90023 		ldrd	r2, [r3]
 8513 4ffa FFF7FEFF 		bl	__aeabi_dmul
 8514 4ffe 0022     		movs	r2, #0
 8515 5000 604B     		ldr	r3, .L1650+52
 8516 5002 FFF7FEFF 		bl	__aeabi_dadd
 8517 5006 FFF7FEFF 		bl	__aeabi_d2f
 8518 500a 07EE900A 		fmsr	s15, r0
 8519              	.L474:
 8520 500e 17EE900A 		fmrs	r0, s15
 8521 5012 FFF7FEFF 		bl	__aeabi_f2d
 8522 5016 50A3     		adr	r3, .L1650+8
 8523 5018 D3E90023 		ldrd	r2, [r3]
 8524 501c FFF7FEFF 		bl	__aeabi_dmul
 8525 5020 FFF7FEFF 		bl	__aeabi_d2f
 8526 5024 9AF80030 		ldrb	r3, [r10]	@ zero_extendqisi2
 8527 5028 07EE900A 		fmsr	s15, r0
 8528 502c 1BB1     		cbz	r3, .L475
 8529 502e B7EE007A 		fconsts	s14, #112
 8530 5032 77EE677A 		fsubs	s15, s14, s15
 8531              	.L475:
 8532 5036 98F80000 		ldrb	r0, [r8]	@ zero_extendqisi2
 8533 503a 17EE901A 		fmrs	r1, s15
 8534 503e 3222     		movs	r2, #50
 8535 5040 FFF7FEFF 		bl	_ZN8Platform11WriteAnalogEhft
 8536 5044 FDF7EDB8 		b	.L466
 8537              	.L723:
 8538 5048 D5F85833 		ldr	r3, [r5, #856]
 8539 504c 0122     		movs	r2, #1
 8540 504e 02FA08F8 		lsl	r8, r2, r8
 8541 5052 43EA0803 		orr	r3, r3, r8
 8542 5056 C5F85833 		str	r3, [r5, #856]
 8543 505a A368     		ldr	r3, [r4, #8]
 8544 505c 0027     		movs	r7, #0
 8545 505e FBF74CBC 		b	.L763
 8546              	.L1583:
 8547 5062 2046     		mov	r0, r4
 8548 5064 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8549 5068 0623     		movs	r3, #6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 151


 8550 506a 03FB0853 		mla	r3, r3, r8, r5
 8551 506e 5321     		movs	r1, #83
 8552 5070 83F81E03 		strb	r0, [r3, #798]
 8553 5074 2046     		mov	r0, r4
 8554 5076 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8555 507a 68BB     		cbnz	r0, .L725
 8556 507c 0746     		mov	r7, r0
 8557 507e A368     		ldr	r3, [r4, #8]
 8558 5080 FBF73BBC 		b	.L763
 8559              	.L829:
 8560 5084 2046     		mov	r0, r4
 8561 5086 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8562 508a 07EE900A 		fmsr	s15, r0
 8563 508e F5EEC07A 		fcmpezs	s15
 8564 5092 F1EE10FA 		fmstat
 8565 5096 06DB     		blt	.L831
 8566 5098 9FED3B7A 		flds	s14, .L1650+56
 8567 509c F4EEC77A 		fcmpes	s15, s14
 8568 50a0 F1EE10FA 		fmstat
 8569 50a4 07D9     		bls	.L1605
 8570              	.L831:
 8571 50a6 BAF1000F 		cmp	r10, #0
 8572 50aa 3DF43DAC 		beq	.L895
 8573 50ae A368     		ldr	r3, [r4, #8]
 8574 50b0 0027     		movs	r7, #0
 8575 50b2 FBF722BC 		b	.L763
 8576              	.L1605:
 8577 50b6 87EE877A 		fdivs	s14, s15, s14
 8578 50ba 2868     		ldr	r0, [r5]
 8579 50bc 0027     		movs	r7, #0
 8580 50be 17EE101A 		fmrs	r1, s14
 8581 50c2 FFF7FEFF 		bl	_ZN8Platform20SetIdleCurrentFactorEf
 8582 50c6 A368     		ldr	r3, [r4, #8]
 8583 50c8 FBF717BC 		b	.L763
 8584              	.L1600:
 8585 50cc FFF7FEFF 		bl	_ZN3Fan7DisableEv
 8586 50d0 4FF00108 		mov	r8, #1
 8587 50d4 FBF748BC 		b	.L273
 8588              	.L725:
 8589 50d8 2046     		mov	r0, r4
 8590 50da FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8591 50de D5F8B031 		ldr	r3, [r5, #432]
 8592 50e2 8346     		mov	fp, r0
 8593 50e4 002B     		cmp	r3, #0
 8594 50e6 00F0CF82 		beq	.L994
 8595 50ea 4FF0000A 		mov	r10, #0
 8596 50ee 274F     		ldr	r7, .L1650+60
 8597 50f0 D146     		mov	r9, r10
 8598 50f2 0122     		movs	r2, #1
 8599              	.L731:
 8600 50f4 17F80A10 		ldrb	r1, [r7, r10]	@ zero_extendqisi2
 8601 50f8 0C92     		str	r2, [sp, #48]
 8602 50fa 2046     		mov	r0, r4
 8603 50fc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8604 5100 0C9A     		ldr	r2, [sp, #48]
 8605 5102 02FA0AF3 		lsl	r3, r2, r10
 8606 5106 49EA0303 		orr	r3, r9, r3
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 152


 8607 510a 0AF1010A 		add	r10, r10, #1
 8608 510e 08B1     		cbz	r0, .L730
 8609 5110 1FFA83F9 		uxth	r9, r3
 8610              	.L730:
 8611 5114 D5F8B031 		ldr	r3, [r5, #432]
 8612 5118 5345     		cmp	r3, r10
 8613 511a EBD8     		bhi	.L731
 8614              	.L729:
 8615 511c 2046     		mov	r0, r4
 8616 511e 4521     		movs	r1, #69
 8617 5120 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8618 5124 C0BB     		cbnz	r0, .L1606
 8619              	.L732:
 8620 5126 BBF1000F 		cmp	fp, #0
 8621 512a 00F09482 		beq	.L737
 8622 512e BBF1010F 		cmp	fp, #1
 8623 5132 00F08682 		beq	.L738
 8624 5136 BBF1FF3F 		cmp	fp, #-1
 8625 513a 00F07782 		beq	.L1607
 8626 513e 2868     		ldr	r0, [r5]
 8627 5140 134A     		ldr	r2, .L1650+64
 8628 5142 0621     		movs	r1, #6
 8629 5144 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8630              	.L741:
 8631 5148 A368     		ldr	r3, [r4, #8]
 8632 514a 0027     		movs	r7, #0
 8633 514c FBF7D5BB 		b	.L763
 8634              	.L1651:
 8635              		.align	3
 8636              	.L1650:
 8637 5150 F5499FF4 		.word	-190887435
 8638 5154 499F2440 		.word	1076141897
 8639 5158 2D431CEB 		.word	-350469331
 8640 515c E2360A3F 		.word	1057634018
 8641 5160 78140000 		.word	.LC175
 8642 5164 A4060000 		.word	.LC74
 8643 5168 00000000 		.word	reprap
 8644 516c A4080000 		.word	.LC89
 8645 5170 74020000 		.word	.LC39
 8646 5174 2C140000 		.word	.LC173
 8647 5178 240A0000 		.word	.LC98
 8648 517c 00000844 		.word	1141374976
 8649 5180 00003443 		.word	1127481344
 8650 5184 00008140 		.word	1082195968
 8651 5188 0000C842 		.word	1120403456
 8652 518c 00000000 		.word	_ZN6GCodes11axisLettersE
 8653 5190 EC110000 		.word	.LC154
 8654 5194 BC000000 		.word	.LC13
 8655              	.L1606:
 8656 5198 0DF1680A 		add	r10, sp, #104
 8657 519c 0723     		movs	r3, #7
 8658 519e 5146     		mov	r1, r10
 8659 51a0 2046     		mov	r0, r4
 8660 51a2 13AA     		add	r2, sp, #76
 8661 51a4 1393     		str	r3, [sp, #76]
 8662 51a6 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 8663 51aa 1398     		ldr	r0, [sp, #76]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 153


 8664 51ac 0023     		movs	r3, #0
 8665 51ae 0121     		movs	r1, #1
 8666              	.L733:
 8667 51b0 8342     		cmp	r3, r0
 8668 51b2 B8D0     		beq	.L732
 8669 51b4 5AF82320 		ldr	r2, [r10, r3, lsl #2]
 8670 51b8 062A     		cmp	r2, #6
 8671 51ba 02F10302 		add	r2, r2, #3
 8672 51be 05D8     		bhi	.L734
 8673 51c0 01FA02F2 		lsl	r2, r1, r2
 8674 51c4 49EA0209 		orr	r9, r9, r2
 8675 51c8 1FFA89F9 		uxth	r9, r9
 8676              	.L734:
 8677 51cc 0133     		adds	r3, r3, #1
 8678 51ce EFE7     		b	.L733
 8679              	.L977:
 8680 51d0 8146     		mov	r9, r0
 8681 51d2 50E5     		b	.L648
 8682              	.L1578:
 8683 51d4 A368     		ldr	r3, [r4, #8]
 8684 51d6 FBF790BB 		b	.L763
 8685              	.L1599:
 8686 51da 2046     		mov	r0, r4
 8687 51dc 5221     		movs	r1, #82
 8688 51de FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8689 51e2 0028     		cmp	r0, #0
 8690 51e4 40F0D481 		bne	.L1608
 8691 51e8 4FF0FF38 		mov	r8, #-1
 8692              	.L779:
 8693 51ec 2046     		mov	r0, r4
 8694 51ee 5421     		movs	r1, #84
 8695 51f0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8696 51f4 0028     		cmp	r0, #0
 8697 51f6 40F0C681 		bne	.L1609
 8698 51fa 4FF0FF33 		mov	r3, #-1
 8699              	.L780:
 8700 51fe BF48     		ldr	r0, .L1652
 8701 5200 0096     		str	r6, [sp]
 8702 5202 3946     		mov	r1, r7
 8703 5204 4246     		mov	r2, r8
 8704 5206 4068     		ldr	r0, [r0, #4]
 8705 5208 FFF7FEFF 		bl	_ZN7Network14EnableProtocolEiiiR9StringRef
 8706 520c 0027     		movs	r7, #0
 8707 520e A368     		ldr	r3, [r4, #8]
 8708 5210 FBF773BB 		b	.L763
 8709              	.L661:
 8710 5214 1398     		ldr	r0, [sp, #76]	@ float
 8711 5216 FFF7FEFF 		bl	__aeabi_f2d
 8712 521a CDE90001 		strd	r0, [sp]
 8713 521e 1A98     		ldr	r0, [sp, #104]	@ float
 8714 5220 FFF7FEFF 		bl	__aeabi_f2d
 8715 5224 3A46     		mov	r2, r7
 8716 5226 CDE90201 		strd	r0, [sp, #8]
 8717 522a 3046     		mov	r0, r6
 8718 522c B449     		ldr	r1, .L1652+4
 8719 522e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8720 5232 FCF76AB9 		b	.L660
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 154


 8721              	.L1591:
 8722 5236 2046     		mov	r0, r4
 8723 5238 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8724 523c 07EE900A 		fmsr	s15, r0
 8725 5240 B7EE007A 		fconsts	s14, #112
 8726 5244 F4EEC77A 		fcmpes	s15, s14
 8727 5248 F1EE10FA 		fmstat
 8728 524c C4BF     		itt	gt
 8729 524e 9FEDAD7A 		fldsgt	s14, .L1652+8
 8730 5252 C7EE877A 		fdivsgt	s15, s15, s14
 8731 5256 F4EE677A 		fcmps	s15, s15
 8732 525a F1EE10FA 		fmstat
 8733 525e 09D6     		bvs	.L228
 8734 5260 B7EE007A 		fconsts	s14, #112
 8735 5264 F4EEC77A 		fcmpes	s15, s14
 8736 5268 F1EE10FA 		fmstat
 8737 526c 00F1BD80 		bmi	.L229
 8738 5270 F0EE477A 		fcpys	s15, s14
 8739              	.L228:
 8740 5274 9AF80030 		ldrb	r3, [r10]	@ zero_extendqisi2
 8741 5278 1BB1     		cbz	r3, .L230
 8742 527a B7EE007A 		fconsts	s14, #112
 8743 527e 77EE677A 		fsubs	s15, s14, s15
 8744              	.L230:
 8745 5282 98F80000 		ldrb	r0, [r8]	@ zero_extendqisi2
 8746 5286 17EE901A 		fmrs	r1, s15
 8747 528a 4FF4FA72 		mov	r2, #500
 8748 528e FFF7FEFF 		bl	_ZN8Platform11WriteAnalogEhft
 8749 5292 0027     		movs	r7, #0
 8750 5294 FEF739BD 		b	.L225
 8751              	.L199:
 8752 5298 3046     		mov	r0, r6
 8753 529a 9B49     		ldr	r1, .L1652+12
 8754 529c FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8755 52a0 0127     		movs	r7, #1
 8756 52a2 A368     		ldr	r3, [r4, #8]
 8757 52a4 FBF729BB 		b	.L763
 8758              	.L1585:
 8759 52a8 DFF85082 		ldr	r8, .L1652
 8760 52ac D8F80C00 		ldr	r0, [r8, #12]
 8761 52b0 90F92E10 		ldrsb	r1, [r0, #46]
 8762 52b4 FFF7FEFF 		bl	_ZN4Heat9SwitchOffEa
 8763 52b8 D8F80C30 		ldr	r3, [r8, #12]
 8764 52bc FF22     		movs	r2, #255
 8765 52be 83F82E20 		strb	r2, [r3, #46]
 8766 52c2 0027     		movs	r7, #0
 8767 52c4 A368     		ldr	r3, [r4, #8]
 8768 52c6 FBF718BB 		b	.L763
 8769              	.L1581:
 8770 52ca A368     		ldr	r3, [r4, #8]
 8771 52cc FBF715BB 		b	.L763
 8772              	.L1565:
 8773 52d0 2B68     		ldr	r3, [r5]
 8774 52d2 D3F86C02 		ldr	r0, [r3, #620]	@ float
 8775 52d6 FFF7FEFF 		bl	__aeabi_f2d
 8776 52da 8C4B     		ldr	r3, .L1652+16
 8777 52dc 0022     		movs	r2, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 155


 8778 52de FFF7FEFF 		bl	__aeabi_dmul
 8779 52e2 FFF7FEFF 		bl	__aeabi_d2iz
 8780 52e6 8A49     		ldr	r1, .L1652+20
 8781 52e8 0246     		mov	r2, r0
 8782 52ea 3046     		mov	r0, r6
 8783 52ec FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 8784 52f0 0027     		movs	r7, #0
 8785 52f2 A368     		ldr	r3, [r4, #8]
 8786 52f4 FBF701BB 		b	.L763
 8787              	.L1573:
 8788 52f8 2846     		mov	r0, r5
 8789 52fa 2146     		mov	r1, r4
 8790 52fc FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8791 5300 0028     		cmp	r0, #0
 8792 5302 7DF416AF 		bne	.L180
 8793 5306 FBF729BC 		b	.L554
 8794              	.L637:
 8795 530a 3846     		mov	r0, r7
 8796 530c 1AA9     		add	r1, sp, #104
 8797 530e FFF7FEFF 		bl	_ZN4Tool9DefineMixEPKf
 8798 5312 FCF7B0BD 		b	.L638
 8799              	.L1575:
 8800 5316 6B6C     		ldr	r3, [r5, #68]
 8801 5318 1B68     		ldr	r3, [r3]
 8802 531a A342     		cmp	r3, r4
 8803 531c 04D0     		beq	.L183
 8804 531e EB6B     		ldr	r3, [r5, #60]
 8805 5320 1B68     		ldr	r3, [r3]
 8806 5322 A342     		cmp	r3, r4
 8807 5324 7DF423AF 		bne	.L182
 8808              	.L183:
 8809 5328 3046     		mov	r0, r6
 8810 532a 7A49     		ldr	r1, .L1652+24
 8811 532c FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8812 5330 FDF722BF 		b	.L884
 8813              	.L181:
 8814 5334 3A46     		mov	r2, r7
 8815 5336 3046     		mov	r0, r6
 8816 5338 7749     		ldr	r1, .L1652+28
 8817 533a 1F46     		mov	r7, r3
 8818 533c FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8819 5340 A368     		ldr	r3, [r4, #8]
 8820 5342 FBF7DABA 		b	.L763
 8821              	.L1538:
 8822 5346 2868     		ldr	r0, [r5]
 8823 5348 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 8824 534c 0128     		cmp	r0, #1
 8825 534e 7CF4CAAE 		bne	.L882
 8826 5352 FCF7C3BE 		b	.L164
 8827              	.L1601:
 8828 5356 A368     		ldr	r3, [r4, #8]
 8829 5358 FBF7CFBA 		b	.L763
 8830              	.L929:
 8831 535c 8046     		mov	r8, r0
 8832 535e FFF7F7B9 		b	.L280
 8833              	.L1588:
 8834 5362 A368     		ldr	r3, [r4, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 156


 8835 5364 FBF7C9BA 		b	.L763
 8836              	.L857:
 8837 5368 95F85C33 		ldrb	r3, [r5, #860]	@ zero_extendqisi2
 8838 536c D907     		lsls	r1, r3, #31
 8839 536e 7EF5B7AE 		bpl	.L846
 8840 5372 2868     		ldr	r0, [r5]
 8841 5374 FFF7FEFF 		bl	_ZN8Platform32CheckFirmwareUpdatePrerequisitesEv
 8842 5378 0028     		cmp	r0, #0
 8843 537a 7EF4B1AE 		bne	.L846
 8844 537e 85F85C03 		strb	r0, [r5, #860]
 8845 5382 0746     		mov	r7, r0
 8846 5384 A368     		ldr	r3, [r4, #8]
 8847 5386 FBF7B8BA 		b	.L763
 8848              	.L198:
 8849 538a 3046     		mov	r0, r6
 8850 538c 6349     		ldr	r1, .L1652+32
 8851 538e FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8852 5392 0127     		movs	r7, #1
 8853 5394 A368     		ldr	r3, [r4, #8]
 8854 5396 FBF7B0BA 		b	.L763
 8855              	.L215:
 8856 539a 05F59677 		add	r7, r5, #300
 8857 539e 3946     		mov	r1, r7
 8858 53a0 2846     		mov	r0, r5
 8859 53a2 0122     		movs	r2, #1
 8860 53a4 FFF7FEFF 		bl	_ZN6GCodes12SetPositionsEPKfb
 8861 53a8 3B46     		mov	r3, r7
 8862 53aa 0A27     		movs	r7, #10
 8863              	.L217:
 8864 53ac 53F8042B 		ldr	r2, [r3], #4	@ float
 8865 53b0 43F88C2C 		str	r2, [r3, #-140]	@ float
 8866 53b4 013F     		subs	r7, r7, #1
 8867 53b6 F9D1     		bne	.L217
 8868 53b8 A368     		ldr	r3, [r4, #8]
 8869 53ba D5F85421 		ldr	r2, [r5, #340]	@ float
 8870 53be 5A60     		str	r2, [r3, #4]	@ float
 8871 53c0 A368     		ldr	r3, [r4, #8]
 8872 53c2 FBF79ABA 		b	.L763
 8873              	.L167:
 8874 53c6 D8F80000 		ldr	r0, [r8]
 8875 53ca 5549     		ldr	r1, .L1652+36
 8876 53cc FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 8877 53d0 FCF7C5BE 		b	.L161
 8878              	.L165:
 8879 53d4 2868     		ldr	r0, [r5]
 8880 53d6 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 8881 53da 871E     		subs	r7, r0, #2
 8882 53dc 18BF     		it	ne
 8883 53de 0127     		movne	r7, #1
 8884 53e0 FCF78CBE 		b	.L166
 8885              	.L1594:
 8886 53e4 A368     		ldr	r3, [r4, #8]
 8887 53e6 FBF788BA 		b	.L763
 8888              	.L229:
 8889 53ea F5EEC07A 		fcmpezs	s15
 8890 53ee 9FED527A 		flds	s14, .L1652+60
 8891 53f2 F1EE10FA 		fmstat
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 157


 8892 53f6 D8BF     		it	le
 8893 53f8 F0EE477A 		fcpysle	s15, s14
 8894 53fc 3AE7     		b	.L228
 8895              	.L651:
 8896 53fe 2046     		mov	r0, r4
 8897 5400 4521     		movs	r1, #69
 8898 5402 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8899 5406 0028     		cmp	r0, #0
 8900 5408 3FF485AC 		beq	.L656
 8901              	.L655:
 8902 540c 2868     		ldr	r0, [r5]
 8903 540e 454A     		ldr	r2, .L1652+40
 8904 5410 0621     		movs	r1, #6
 8905 5412 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8906 5416 0027     		movs	r7, #0
 8907 5418 A368     		ldr	r3, [r4, #8]
 8908 541a FBF76EBA 		b	.L763
 8909              	.L290:
 8910 541e D9F80010 		ldr	r1, [r9]
 8911 5422 2868     		ldr	r0, [r5]
 8912 5424 05EB8103 		add	r3, r5, r1, lsl #2
 8913 5428 D3F89C22 		ldr	r2, [r3, #668]	@ float
 8914 542c FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 8915 5430 FBF7E7BA 		b	.L271
 8916              	.L1562:
 8917 5434 DAF82800 		ldr	r0, [r10, #40]	@ float
 8918 5438 FFF7FEFF 		bl	__aeabi_f2d
 8919 543c 0246     		mov	r2, r0
 8920 543e 0B46     		mov	r3, r1
 8921 5440 3046     		mov	r0, r6
 8922 5442 3949     		ldr	r1, .L1652+44
 8923 5444 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 8924 5448 FDF7F6B9 		b	.L604
 8925              	.L1435:
 8926 544c 9FED377A 		flds	s14, .L1652+48
 8927 5450 F4EE477A 		fcmps	s15, s14
 8928 5454 F1EE10FA 		fmstat
 8929 5458 C8BF     		it	gt
 8930 545a F0EE477A 		fcpysgt	s15, s14
 8931 545e D6E5     		b	.L474
 8932              	.L214:
 8933 5460 4046     		mov	r0, r8
 8934 5462 D8F80890 		ldr	r9, [r8, #8]
 8935 5466 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 8936 546a 05F59671 		add	r1, r5, #300
 8937 546e 0346     		mov	r3, r0
 8938 5470 3A46     		mov	r2, r7
 8939 5472 4846     		mov	r0, r9
 8940 5474 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhm
 8941 5478 A368     		ldr	r3, [r4, #8]
 8942 547a 5B68     		ldr	r3, [r3, #4]	@ float
 8943 547c C5F85431 		str	r3, [r5, #340]	@ float
 8944 5480 A368     		ldr	r3, [r4, #8]
 8945 5482 FBF73ABA 		b	.L763
 8946              	.L1587:
 8947 5486 A368     		ldr	r3, [r4, #8]
 8948 5488 FBF737BA 		b	.L763
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 158


 8949              	.L1598:
 8950 548c 3037     		adds	r7, r7, #48
 8951 548e 0022     		movs	r2, #0
 8952 5490 3946     		mov	r1, r7
 8953 5492 1AA8     		add	r0, sp, #104
 8954 5494 FFF7FEFF 		bl	_ZNK5FopDt20GetM301PidParametersEb
 8955 5498 1A98     		ldr	r0, [sp, #104]	@ float
 8956 549a FFF7FEFF 		bl	__aeabi_f2d
 8957 549e 8046     		mov	r8, r0
 8958 54a0 1B98     		ldr	r0, [sp, #108]	@ float
 8959 54a2 8946     		mov	r9, r1
 8960 54a4 FFF7FEFF 		bl	__aeabi_f2d
 8961 54a8 CDE90001 		strd	r0, [sp]
 8962 54ac 1C98     		ldr	r0, [sp, #112]	@ float
 8963 54ae FFF7FEFF 		bl	__aeabi_f2d
 8964 54b2 4B46     		mov	r3, r9
 8965 54b4 CDE90201 		strd	r0, [sp, #8]
 8966 54b8 4246     		mov	r2, r8
 8967 54ba 3046     		mov	r0, r6
 8968 54bc 1C49     		ldr	r1, .L1652+52
 8969 54be FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 8970 54c2 0122     		movs	r2, #1
 8971 54c4 1AA8     		add	r0, sp, #104
 8972 54c6 3946     		mov	r1, r7
 8973 54c8 FFF7FEFF 		bl	_ZNK5FopDt20GetM301PidParametersEb
 8974 54cc 1A98     		ldr	r0, [sp, #104]	@ float
 8975 54ce FFF7FEFF 		bl	__aeabi_f2d
 8976 54d2 8046     		mov	r8, r0
 8977 54d4 1B98     		ldr	r0, [sp, #108]	@ float
 8978 54d6 8946     		mov	r9, r1
 8979 54d8 FFF7FEFF 		bl	__aeabi_f2d
 8980 54dc CDE90001 		strd	r0, [sp]
 8981 54e0 1C98     		ldr	r0, [sp, #112]	@ float
 8982 54e2 FFF7FEFF 		bl	__aeabi_f2d
 8983 54e6 4246     		mov	r2, r8
 8984 54e8 CDE90201 		strd	r0, [sp, #8]
 8985 54ec 4B46     		mov	r3, r9
 8986 54ee 3046     		mov	r0, r6
 8987 54f0 1049     		ldr	r1, .L1652+56
 8988 54f2 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 8989 54f6 FFF7EEB8 		b	.L502
 8990              	.L1653:
 8991 54fa 00BF     		.align	2
 8992              	.L1652:
 8993 54fc 00000000 		.word	reprap
 8994 5500 14100000 		.word	.LC142
 8995 5504 00007F43 		.word	1132396544
 8996 5508 F8020000 		.word	.LC42
 8997 550c 00005940 		.word	1079574528
 8998 5510 B0140000 		.word	.LC178
 8999 5514 80150000 		.word	.LC186
 9000 5518 5C020000 		.word	.LC38
 9001 551c 20030000 		.word	.LC43
 9002 5520 10020000 		.word	.LC36
 9003 5524 700F0000 		.word	.LC140
 9004 5528 800E0000 		.word	.LC130
 9005 552c 00001645 		.word	1159069696
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 159


 9006 5530 B00A0000 		.word	.LC101
 9007 5534 F40A0000 		.word	.LC102
 9008 5538 00000000 		.word	0
 9009              	.L1604:
 9010 553c 9AF80030 		ldrb	r3, [r10]	@ zero_extendqisi2
 9011 5540 1FED037A 		flds	s14, .L1652+60
 9012 5544 98F80000 		ldrb	r0, [r8]	@ zero_extendqisi2
 9013 5548 002B     		cmp	r3, #0
 9014 554a F7EE007A 		fconsts	s15, #112
 9015 554e 14BF     		ite	ne
 9016 5550 17EE901A 		fmrsne	r1, s15
 9017 5554 17EE101A 		fmrseq	r1, s14
 9018 5558 3222     		movs	r2, #50
 9019 555a FFF7FEFF 		bl	_ZN8Platform11WriteAnalogEhft
 9020 555e FCF760BE 		b	.L466
 9021              	.L1597:
 9022 5562 4246     		mov	r2, r8
 9023 5564 3046     		mov	r0, r6
 9024 5566 6E49     		ldr	r1, .L1654
 9025 5568 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 9026 556c FFF7B3B8 		b	.L502
 9027              	.L1603:
 9028 5570 85F85C23 		strb	r2, [r5, #860]
 9029              	.L850:
 9030 5574 2868     		ldr	r0, [r5]
 9031 5576 6B4A     		ldr	r2, .L1654+4
 9032 5578 0621     		movs	r1, #6
 9033 557a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 9034 557e 0023     		movs	r3, #0
 9035 5580 85F85C33 		strb	r3, [r5, #860]
 9036 5584 A6E4     		b	.L849
 9037              	.L1609:
 9038 5586 2046     		mov	r0, r4
 9039 5588 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9040 558c 0346     		mov	r3, r0
 9041 558e 36E6     		b	.L780
 9042              	.L1608:
 9043 5590 2046     		mov	r0, r4
 9044 5592 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9045 5596 8046     		mov	r8, r0
 9046 5598 28E6     		b	.L779
 9047              	.L1437:
 9048 559a 0096     		str	r6, [sp]
 9049 559c F868     		ldr	r0, [r7, #12]
 9050 559e 18EE103A 		fmrs	r3, s16
 9051 55a2 4146     		mov	r1, r8
 9052 55a4 18EE902A 		fmrs	r2, s17
 9053 55a8 7746     		mov	r7, lr
 9054 55aa FFF7FEFF 		bl	_ZN4Heat13StartAutoTuneEjffR9StringRef
 9055 55ae A368     		ldr	r3, [r4, #8]
 9056 55b0 FBF7A3B9 		b	.L763
 9057              	.L1524:
 9058 55b4 2046     		mov	r0, r4
 9059 55b6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9060 55ba 4146     		mov	r1, r8
 9061 55bc 0746     		mov	r7, r0
 9062 55be 0246     		mov	r2, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 160


 9063 55c0 2868     		ldr	r0, [r5]
 9064 55c2 FFF7FEFF 		bl	_ZN8Platform18SetCommsPropertiesEjm
 9065 55c6 B8F1010F 		cmp	r8, #1
 9066 55ca 14BF     		ite	ne
 9067 55cc 6B6C     		ldrne	r3, [r5, #68]
 9068 55ce AB6C     		ldreq	r3, [r5, #72]
 9069 55d0 1B68     		ldr	r3, [r3]
 9070 55d2 07F00107 		and	r7, r7, #1
 9071 55d6 83F87D70 		strb	r7, [r3, #125]
 9072 55da A368     		ldr	r3, [r4, #8]
 9073 55dc 0027     		movs	r7, #0
 9074 55de FBF78CB9 		b	.L763
 9075              	.L1523:
 9076 55e2 2046     		mov	r0, r4
 9077 55e4 2F68     		ldr	r7, [r5]
 9078 55e6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9079 55ea 4146     		mov	r1, r8
 9080 55ec 0246     		mov	r2, r0
 9081 55ee 3846     		mov	r0, r7
 9082 55f0 FFF7FEFF 		bl	_ZN8Platform11SetBaudRateEjm
 9083 55f4 0127     		movs	r7, #1
 9084 55f6 FCF7B9BB 		b	.L689
 9085              	.L694:
 9086 55fa 4146     		mov	r1, r8
 9087 55fc 2868     		ldr	r0, [r5]
 9088 55fe FFF7FEFF 		bl	_ZNK8Platform18GetCommsPropertiesEj
 9089 5602 4146     		mov	r1, r8
 9090 5604 8146     		mov	r9, r0
 9091 5606 2868     		ldr	r0, [r5]
 9092 5608 FFF7FEFF 		bl	_ZNK8Platform11GetBaudRateEj
 9093 560c 464A     		ldr	r2, .L1654+8
 9094 560e 4749     		ldr	r1, .L1654+12
 9095 5610 0346     		mov	r3, r0
 9096 5612 4748     		ldr	r0, .L1654+16
 9097 5614 19F0010F 		tst	r9, #1
 9098 5618 18BF     		it	ne
 9099 561a 1046     		movne	r0, r2
 9100 561c 0090     		str	r0, [sp]
 9101 561e 4246     		mov	r2, r8
 9102 5620 3046     		mov	r0, r6
 9103 5622 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 9104 5626 A368     		ldr	r3, [r4, #8]
 9105 5628 FBF767B9 		b	.L763
 9106              	.L1607:
 9107 562c 0623     		movs	r3, #6
 9108 562e 03FB0853 		mla	r3, r3, r8, r5
 9109 5632 B9F1000F 		cmp	r9, #0
 9110 5636 29D1     		bne	.L740
 9111 5638 A3F81C93 		strh	r9, [r3, #796]	@ movhi
 9112 563c A3F81A93 		strh	r9, [r3, #794]	@ movhi
 9113 5640 82E5     		b	.L741
 9114              	.L738:
 9115 5642 0623     		movs	r3, #6
 9116 5644 03FB0853 		mla	r3, r3, r8, r5
 9117 5648 B3F81A23 		ldrh	r2, [r3, #794]
 9118 564c 49EA0209 		orr	r9, r9, r2
 9119 5650 A3F81A93 		strh	r9, [r3, #794]	@ movhi
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 161


 9120 5654 78E5     		b	.L741
 9121              	.L737:
 9122 5656 0623     		movs	r3, #6
 9123 5658 03FB0853 		mla	r3, r3, r8, r5
 9124 565c B3F81C23 		ldrh	r2, [r3, #796]
 9125 5660 49EA0209 		orr	r9, r9, r2
 9126 5664 A3F81C93 		strh	r9, [r3, #796]	@ movhi
 9127 5668 6EE5     		b	.L741
 9128              	.L1543:
 9129 566a 3046     		mov	r0, r6
 9130 566c 3149     		ldr	r1, .L1654+20
 9131 566e FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 9132 5672 0127     		movs	r7, #1
 9133 5674 A368     		ldr	r3, [r4, #8]
 9134 5676 FBF740B9 		b	.L763
 9135              	.L1595:
 9136 567a 3046     		mov	r0, r6
 9137 567c 2E49     		ldr	r1, .L1654+24
 9138 567e FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 9139 5682 0127     		movs	r7, #1
 9140 5684 FEF74FBE 		b	.L155
 9141              	.L994:
 9142 5688 9946     		mov	r9, r3
 9143 568a 47E5     		b	.L729
 9144              	.L740:
 9145 568c B3F81A13 		ldrh	r1, [r3, #794]
 9146 5690 B3F81C03 		ldrh	r0, [r3, #796]
 9147 5694 6FEA0902 		mvn	r2, r9
 9148 5698 92B2     		uxth	r2, r2
 9149 569a 1140     		ands	r1, r1, r2
 9150 569c 0240     		ands	r2, r2, r0
 9151 569e A3F81A13 		strh	r1, [r3, #794]	@ movhi
 9152 56a2 A3F81C23 		strh	r2, [r3, #796]	@ movhi
 9153 56a6 4FE5     		b	.L741
 9154              	.L657:
 9155 56a8 2868     		ldr	r0, [r5]
 9156 56aa 00EB0803 		add	r3, r0, r8
 9157 56ae 4146     		mov	r1, r8
 9158 56b0 93F8DC70 		ldrb	r7, [r3, #220]	@ zero_extendqisi2
 9159 56b4 93F8D2A0 		ldrb	r10, [r3, #210]	@ zero_extendqisi2
 9160 56b8 FFF7FEFF 		bl	_ZNK8Platform19GetDriverStepTimingEj
 9161 56bc 0097     		str	r7, [sp]
 9162 56be FFF7FEFF 		bl	__aeabi_f2d
 9163 56c2 4346     		mov	r3, r8
 9164 56c4 CDE90201 		strd	r0, [sp, #8]
 9165 56c8 5246     		mov	r2, r10
 9166 56ca 3046     		mov	r0, r6
 9167 56cc 1B49     		ldr	r1, .L1654+28
 9168 56ce FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 9169 56d2 4F46     		mov	r7, r9
 9170 56d4 A368     		ldr	r3, [r4, #8]
 9171 56d6 FBF710B9 		b	.L763
 9172              	.L742:
 9173 56da 3046     		mov	r0, r6
 9174 56dc 1849     		ldr	r1, .L1654+32
 9175 56de FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 9176 56e2 A368     		ldr	r3, [r4, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 162


 9177 56e4 FBF709B9 		b	.L763
 9178              	.L1602:
 9179 56e8 1F46     		mov	r7, r3
 9180 56ea A368     		ldr	r3, [r4, #8]
 9181 56ec FBF705B9 		b	.L763
 9182              	.L184:
 9183 56f0 2B6C     		ldr	r3, [r5, #64]
 9184 56f2 1868     		ldr	r0, [r3]
 9185 56f4 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 9186 56f8 0746     		mov	r7, r0
 9187 56fa 8068     		ldr	r0, [r0, #8]
 9188 56fc 18B1     		cbz	r0, .L185
 9189 56fe FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 9190 5702 0023     		movs	r3, #0
 9191 5704 BB60     		str	r3, [r7, #8]
 9192              	.L185:
 9193 5706 D5F87432 		ldr	r3, [r5, #628]
 9194 570a BB60     		str	r3, [r7, #8]
 9195 570c 0027     		movs	r7, #0
 9196 570e DAF81C00 		ldr	r0, [r10, #28]
 9197 5712 C5F87472 		str	r7, [r5, #628]
 9198 5716 FFF7FEFF 		bl	_ZN12PrintMonitor12StartedPrintEv
 9199 571a A368     		ldr	r3, [r4, #8]
 9200 571c FBF7EDB8 		b	.L763
 9201              	.L1655:
 9202              		.align	2
 9203              	.L1654:
 9204 5720 400A0000 		.word	.LC99
 9205 5724 14150000 		.word	.LC181
 9206 5728 4C010000 		.word	.LC27
 9207 572c 80110000 		.word	.LC150
 9208 5730 58010000 		.word	.LC28
 9209 5734 540C0000 		.word	.LC114
 9210 5738 DC010000 		.word	.LC33
 9211 573c B40F0000 		.word	.LC141
 9212 5740 60120000 		.word	.LC158
 9213              		.size	_ZN6GCodes11HandleMcodeER11GCodeBufferR9StringRef, .-_ZN6GCodes11HandleMcodeER11GCodeBufferR
 9214 5744 AFF30080 		.section	.text._ZN6GCodes11HandleTcodeER11GCodeBufferR9StringRef,"ax",%progbits
 9215              		.align	2
 9216              		.global	_ZN6GCodes11HandleTcodeER11GCodeBufferR9StringRef
 9217              		.thumb
 9218              		.thumb_func
 9219              		.type	_ZN6GCodes11HandleTcodeER11GCodeBufferR9StringRef, %function
 9220              	_ZN6GCodes11HandleTcodeER11GCodeBufferR9StringRef:
 9221              		@ args = 0, pretend = 0, frame = 0
 9222              		@ frame_needed = 0, uses_anonymous_args = 0
 9223 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 9224 0002 8B68     		ldr	r3, [r1, #8]
 9225 0004 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 9226 0006 DB06     		lsls	r3, r3, #27
 9227 0008 0E46     		mov	r6, r1
 9228 000a 0746     		mov	r7, r0
 9229 000c 02D5     		bpl	.L1671
 9230 000e 0124     		movs	r4, #1
 9231              	.L1665:
 9232 0010 2046     		mov	r0, r4
 9233 0012 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 163


 9234              	.L1671:
 9235 0014 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 9236 0018 0446     		mov	r4, r0
 9237 001a 0028     		cmp	r0, #0
 9238 001c F8D0     		beq	.L1665
 9239 001e 3046     		mov	r0, r6
 9240 0020 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9241 0024 C7F88402 		str	r0, [r7, #644]
 9242 0028 D6F88830 		ldr	r3, [r6, #136]
 9243 002c 1844     		add	r0, r0, r3
 9244 002e C7F88402 		str	r0, [r7, #644]
 9245 0032 07F1A402 		add	r2, r7, #164
 9246 0036 0A23     		movs	r3, #10
 9247              	.L1659:
 9248 0038 52F8045B 		ldr	r5, [r2], #4	@ float
 9249 003c C2F8DC50 		str	r5, [r2, #220]	@ float
 9250 0040 013B     		subs	r3, r3, #1
 9251 0042 F9D1     		bne	.L1659
 9252 0044 B268     		ldr	r2, [r6, #8]
 9253 0046 97F80033 		ldrb	r3, [r7, #768]	@ zero_extendqisi2
 9254 004a 5268     		ldr	r2, [r2, #4]	@ float
 9255 004c C7F8AC21 		str	r2, [r7, #428]	@ float
 9256 0050 4BB9     		cbnz	r3, .L1660
 9257 0052 0B4B     		ldr	r3, .L1672
 9258 0054 5B6A     		ldr	r3, [r3, #36]
 9259 0056 13B1     		cbz	r3, .L1661
 9260 0058 5B68     		ldr	r3, [r3, #4]
 9261 005a 9842     		cmp	r0, r3
 9262 005c 03D0     		beq	.L1660
 9263              	.L1661:
 9264 005e B368     		ldr	r3, [r6, #8]
 9265 0060 0422     		movs	r2, #4
 9266 0062 1A74     		strb	r2, [r3, #16]
 9267 0064 D4E7     		b	.L1665
 9268              	.L1660:
 9269 0066 3846     		mov	r0, r7
 9270 0068 3146     		mov	r1, r6
 9271 006a FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 9272 006e 3846     		mov	r0, r7
 9273 0070 3146     		mov	r1, r6
 9274 0072 0022     		movs	r2, #0
 9275 0074 034B     		ldr	r3, .L1672+4
 9276 0076 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 9277 007a 2046     		mov	r0, r4
 9278 007c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 9279              	.L1673:
 9280 007e 00BF     		.align	2
 9281              	.L1672:
 9282 0080 00000000 		.word	reprap
 9283 0084 A4000000 		.word	.LC9
 9284              		.size	_ZN6GCodes11HandleTcodeER11GCodeBufferR9StringRef, .-_ZN6GCodes11HandleTcodeER11GCodeBufferR
 9285              		.section	.text._ZN6GCodes9ActOnCodeER11GCodeBufferR9StringRef,"ax",%progbits
 9286              		.align	2
 9287              		.global	_ZN6GCodes9ActOnCodeER11GCodeBufferR9StringRef
 9288              		.thumb
 9289              		.thumb_func
 9290              		.type	_ZN6GCodes9ActOnCodeER11GCodeBufferR9StringRef, %function
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 164


 9291              	_ZN6GCodes9ActOnCodeER11GCodeBufferR9StringRef:
 9292              		@ args = 0, pretend = 0, frame = 0
 9293              		@ frame_needed = 0, uses_anonymous_args = 0
 9294 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 9295 0004 0746     		mov	r7, r0
 9296 0006 0846     		mov	r0, r1
 9297 0008 0C46     		mov	r4, r1
 9298 000a 9046     		mov	r8, r2
 9299 000c FFF7FEFF 		bl	_ZNK11GCodeBuffer7IsEmptyEv
 9300 0010 0646     		mov	r6, r0
 9301 0012 98B9     		cbnz	r0, .L1682
 9302 0014 94F88D30 		ldrb	r3, [r4, #141]	@ zero_extendqisi2
 9303 0018 A3B9     		cbnz	r3, .L1688
 9304              	.L1676:
 9305 001a 2046     		mov	r0, r4
 9306 001c FFF7FEFF 		bl	_ZN11GCodeBuffer16GetCommandLetterEv
 9307 0020 4D28     		cmp	r0, #77
 9308 0022 20D0     		beq	.L1679
 9309 0024 5428     		cmp	r0, #84
 9310 0026 2CD0     		beq	.L1680
 9311 0028 4728     		cmp	r0, #71
 9312 002a 23D0     		beq	.L1689
 9313 002c 3846     		mov	r0, r7
 9314 002e 2146     		mov	r1, r4
 9315 0030 0022     		movs	r2, #0
 9316 0032 174B     		ldr	r3, .L1690
 9317 0034 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 9318 0038 0125     		movs	r5, #1
 9319 003a 00E0     		b	.L1686
 9320              	.L1682:
 9321 003c 0125     		movs	r5, #1
 9322              	.L1686:
 9323 003e 2846     		mov	r0, r5
 9324 0040 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 9325              	.L1688:
 9326 0044 D7F86003 		ldr	r0, [r7, #864]
 9327 0048 D7F8FC20 		ldr	r2, [r7, #252]
 9328 004c 2146     		mov	r1, r4
 9329 004e FFF7FEFF 		bl	_ZN10GCodeQueue9QueueCodeER11GCodeBufferm
 9330 0052 0546     		mov	r5, r0
 9331 0054 0028     		cmp	r0, #0
 9332 0056 E0D0     		beq	.L1676
 9333 0058 3846     		mov	r0, r7
 9334 005a 2146     		mov	r1, r4
 9335 005c 3246     		mov	r2, r6
 9336 005e 0C4B     		ldr	r3, .L1690
 9337 0060 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 9338 0064 EBE7     		b	.L1686
 9339              	.L1679:
 9340 0066 3846     		mov	r0, r7
 9341 0068 2146     		mov	r1, r4
 9342 006a 4246     		mov	r2, r8
 9343 006c BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 9344 0070 FFF7FEBF 		b	_ZN6GCodes11HandleMcodeER11GCodeBufferR9StringRef
 9345              	.L1689:
 9346 0074 3846     		mov	r0, r7
 9347 0076 2146     		mov	r1, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 165


 9348 0078 4246     		mov	r2, r8
 9349 007a BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 9350 007e FFF7FEBF 		b	_ZN6GCodes11HandleGcodeER11GCodeBufferR9StringRef
 9351              	.L1680:
 9352 0082 3846     		mov	r0, r7
 9353 0084 2146     		mov	r1, r4
 9354 0086 4246     		mov	r2, r8
 9355 0088 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 9356 008c FFF7FEBF 		b	_ZN6GCodes11HandleTcodeER11GCodeBufferR9StringRef
 9357              	.L1691:
 9358              		.align	2
 9359              	.L1690:
 9360 0090 A4000000 		.word	.LC9
 9361              		.size	_ZN6GCodes9ActOnCodeER11GCodeBufferR9StringRef, .-_ZN6GCodes9ActOnCodeER11GCodeBufferR9Strin
 9362              		.global	RETRACTPROBE_G
 9363              		.global	DEPLOYPROBE_G
 9364              		.global	CONFIG_OVERRIDE_G
 9365              		.global	SLEEP_G
 9366              		.global	STOP_G
 9367              		.global	CANCEL_G
 9368              		.global	RESUME_G
 9369              		.global	BED_EQUATION_G
 9370              		.section	.data.BED_EQUATION_G,"aw",%progbits
 9371              		.align	2
 9372              		.set	.LANCHOR0,. + 0
 9373              		.type	BED_EQUATION_G, %object
 9374              		.size	BED_EQUATION_G, 4
 9375              	BED_EQUATION_G:
 9376 0000 04160000 		.word	.LC194
 9377              		.section	.data.SLEEP_G,"aw",%progbits
 9378              		.align	2
 9379              		.set	.LANCHOR8,. + 0
 9380              		.type	SLEEP_G, %object
 9381              		.size	SLEEP_G, 4
 9382              	SLEEP_G:
 9383 0000 DC150000 		.word	.LC190
 9384              		.section	.data.STOP_G,"aw",%progbits
 9385              		.align	2
 9386              		.set	.LANCHOR7,. + 0
 9387              		.type	STOP_G, %object
 9388              		.size	STOP_G, 4
 9389              	STOP_G:
 9390 0000 E4150000 		.word	.LC191
 9391              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 9392              		.align	2
 9393              		.type	_ZL32cpu_irq_critical_section_counter, %object
 9394              		.size	_ZL32cpu_irq_critical_section_counter, 4
 9395              	_ZL32cpu_irq_critical_section_counter:
 9396 0000 00000000 		.space	4
 9397              		.section	.data.CANCEL_G,"aw",%progbits
 9398              		.align	2
 9399              		.set	.LANCHOR1,. + 0
 9400              		.type	CANCEL_G, %object
 9401              		.size	CANCEL_G, 4
 9402              	CANCEL_G:
 9403 0000 EC150000 		.word	.LC192
 9404              		.section	.rodata.str1.4,"aMS",%progbits,1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 166


 9405              		.align	2
 9406              	.LC0:
 9407 0000 496E7661 		.ascii	"Invalid G2 or G3 command\000"
 9407      6C696420 
 9407      4732206F 
 9407      72204733 
 9407      20636F6D 
 9408 0019 000000   		.space	3
 9409              	.LC1:
 9410 001c 696E7661 		.ascii	"invalid G Code: %s\000"
 9410      6C696420 
 9410      4720436F 
 9410      64653A20 
 9410      257300
 9411 002f 00       		.space	1
 9412              	.LC2:
 9413 0030 4D757374 		.ascii	"Must home a delta printer before bed probing\000"
 9413      20686F6D 
 9413      65206120 
 9413      64656C74 
 9413      61207072 
 9414 005d 000000   		.space	3
 9415              	.LC3:
 9416 0060 4D757374 		.ascii	"Must home X and Y before bed probing\000"
 9416      20686F6D 
 9416      65205820 
 9416      616E6420 
 9416      59206265 
 9417 0085 000000   		.space	3
 9418              	.LC4:
 9419 0088 303A2F67 		.ascii	"0:/gcodes/\000"
 9419      636F6465 
 9419      732F00
 9420 0093 00       		.space	1
 9421              	.LC5:
 9422 0094 6F6E00   		.ascii	"on\000"
 9423 0097 00       		.space	1
 9424              	.LC6:
 9425 0098 6F666600 		.ascii	"off\000"
 9426              	.LC7:
 9427 009c 79657300 		.ascii	"yes\000"
 9428              	.LC8:
 9429 00a0 6E6F00   		.ascii	"no\000"
 9430 00a3 00       		.space	1
 9431              	.LC9:
 9432 00a4 00       		.ascii	"\000"
 9433 00a5 000000   		.space	3
 9434              	.LC10:
 9435 00a8 616C6C6F 		.ascii	"allowed\000"
 9435      77656400 
 9436              	.LC11:
 9437 00b0 64656E69 		.ascii	"denied\000"
 9437      656400
 9438 00b7 00       		.space	1
 9439              	.LC12:
 9440 00b8 50494400 		.ascii	"PID\000"
 9441              	.LC13:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 167


 9442 00bc 62616E67 		.ascii	"bang-bang\000"
 9442      2D62616E 
 9442      6700
 9443 00c6 0000     		.space	2
 9444              	.LC14:
 9445 00c8 63757374 		.ascii	"custom PID\000"
 9445      6F6D2050 
 9445      494400
 9446 00d3 00       		.space	1
 9447              	.LC15:
 9448 00d4 20776974 		.ascii	" with interpolation\000"
 9448      6820696E 
 9448      74657270 
 9448      6F6C6174 
 9448      696F6E00 
 9449              	.LC16:
 9450 00e8 286F6E29 		.ascii	"(on)\000"
 9450      00
 9451 00ed 000000   		.space	3
 9452              	.LC17:
 9453 00f0 656E6162 		.ascii	"enabled\000"
 9453      6C656400 
 9454              	.LC18:
 9455 00f8 64697361 		.ascii	"disabled\000"
 9455      626C6564 
 9455      00
 9456 0101 000000   		.space	3
 9457              	.LC19:
 9458 0104 636F6E66 		.ascii	"config.g\000"
 9458      69672E67 
 9458      00
 9459 010d 000000   		.space	3
 9460              	.LC20:
 9461 0110 72657072 		.ascii	"reprap.htm\000"
 9461      61702E68 
 9461      746D00
 9462 011b 00       		.space	1
 9463              	.LC21:
 9464 011c 6E6F7420 		.ascii	"not \000"
 9464      00
 9465 0121 000000   		.space	3
 9466              	.LC22:
 9467 0124 6E6F6E65 		.ascii	"none\000"
 9467      00
 9468 0129 000000   		.space	3
 9469              	.LC23:
 9470 012c 68696768 		.ascii	"high end\000"
 9470      20656E64 
 9470      00
 9471 0135 000000   		.space	3
 9472              	.LC24:
 9473 0138 6C6F7720 		.ascii	"low end\000"
 9473      656E6400 
 9474              	.LC25:
 9475 0140 6C6F7700 		.ascii	"low\000"
 9476              	.LC26:
 9477 0144 68696768 		.ascii	"high\000"
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 168


 9477      00
 9478 0149 000000   		.space	3
 9479              	.LC27:
 9480 014c 72657175 		.ascii	"requires\000"
 9480      69726573 
 9480      00
 9481 0155 000000   		.space	3
 9482              	.LC28:
 9483 0158 646F6573 		.ascii	"does not require\000"
 9483      206E6F74 
 9483      20726571 
 9483      75697265 
 9483      00
 9484 0169 000000   		.space	3
 9485              	.LC29:
 9486 016c 4D6F746F 		.ascii	"Motor current % of normal - \000"
 9486      72206375 
 9486      7272656E 
 9486      74202520 
 9486      6F66206E 
 9487 0189 000000   		.space	3
 9488              	.LC30:
 9489 018c 4D6F746F 		.ascii	"Motor current (mA) - \000"
 9489      72206375 
 9489      7272656E 
 9489      7420286D 
 9489      4129202D 
 9490 01a2 0000     		.space	2
 9491              	.LC31:
 9492 01a4 5072696E 		.ascii	"Print cancelled\000"
 9492      74206361 
 9492      6E63656C 
 9492      6C656400 
 9493              	.LC32:
 9494 01b4 496E7661 		.ascii	"Invalid extruder number specified: %ld\000"
 9494      6C696420 
 9494      65787472 
 9494      75646572 
 9494      206E756D 
 9495 01db 00       		.space	1
 9496              	.LC33:
 9497 01dc 49646C65 		.ascii	"Idle timeouts cannot be negative!\000"
 9497      2074696D 
 9497      656F7574 
 9497      73206361 
 9497      6E6E6F74 
 9498 01fe 0000     		.space	2
 9499              	.LC34:
 9500 0200 25632573 		.ascii	"%c%s%c%c\000"
 9500      25632563 
 9500      00
 9501 0209 000000   		.space	3
 9502              	.LC35:
 9503 020c 25730A00 		.ascii	"%s\012\000"
 9504              	.LC36:
 9505 0210 4E4F4E45 		.ascii	"NONE\012\000"
 9505      0A00
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 169


 9506 0216 0000     		.space	2
 9507              	.LC37:
 9508 0218 43616E6E 		.ascii	"Cannot set file to print, because a file is already"
 9508      6F742073 
 9508      65742066 
 9508      696C6520 
 9508      746F2070 
 9509 024b 20626569 		.ascii	" being printed\000"
 9509      6E672070 
 9509      72696E74 
 9509      656400
 9510 025a 0000     		.space	2
 9511              	.LC38:
 9512 025c 4661696C 		.ascii	"Failed to open file %s\000"
 9512      65642074 
 9512      6F206F70 
 9512      656E2066 
 9512      696C6520 
 9513 0273 00       		.space	1
 9514              	.LC39:
 9515 0274 43616E6E 		.ascii	"Cannot print, because no file is selected!\000"
 9515      6F742070 
 9515      72696E74 
 9515      2C206265 
 9515      63617573 
 9516 029f 00       		.space	1
 9517              	.LC40:
 9518 02a0 5072696E 		.ascii	"Printing is already paused!!\000"
 9518      74696E67 
 9518      20697320 
 9518      616C7265 
 9518      61647920 
 9519 02bd 000000   		.space	3
 9520              	.LC41:
 9521 02c0 43616E6E 		.ascii	"Cannot pause print, because no file is being printe"
 9521      6F742070 
 9521      61757365 
 9521      20707269 
 9521      6E742C20 
 9522 02f3 642100   		.ascii	"d!\000"
 9523 02f6 0000     		.space	2
 9524              	.LC42:
 9525 02f8 54686520 		.ascii	"The specified SD position is invalid!\000"
 9525      73706563 
 9525      69666965 
 9525      64205344 
 9525      20706F73 
 9526 031e 0000     		.space	2
 9527              	.LC43:
 9528 0320 43616E6E 		.ascii	"Cannot set SD file position, because no print is in"
 9528      6F742073 
 9528      65742053 
 9528      44206669 
 9528      6C652070 
 9529 0353 2070726F 		.ascii	" progress!\000"
 9529      67726573 
 9529      732100
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 170


 9530 035e 0000     		.space	2
 9531              	.LC44:
 9532 0360 596F7520 		.ascii	"You must specify the SD position in bytes using the"
 9532      6D757374 
 9532      20737065 
 9532      63696679 
 9532      20746865 
 9533 0393 20532070 		.ascii	" S parameter.\000"
 9533      6172616D 
 9533      65746572 
 9533      2E00
 9534 03a1 000000   		.space	3
 9535              	.LC45:
 9536 03a4 53442070 		.ascii	"SD printing byte %lu/%lu\000"
 9536      72696E74 
 9536      696E6720 
 9536      62797465 
 9536      20256C75 
 9537 03bd 000000   		.space	3
 9538              	.LC46:
 9539 03c0 4E6F7420 		.ascii	"Not SD printing.\000"
 9539      53442070 
 9539      72696E74 
 9539      696E672E 
 9539      00
 9540 03d1 000000   		.space	3
 9541              	.LC47:
 9542 03d4 57726974 		.ascii	"Writing to file: %s\000"
 9542      696E6720 
 9542      746F2066 
 9542      696C653A 
 9542      20257300 
 9543              	.LC48:
 9544 03e8 43616E27 		.ascii	"Can't open file %s for writing.\000"
 9544      74206F70 
 9544      656E2066 
 9544      696C6520 
 9544      25732066 
 9545              	.LC49:
 9546 0408 47436F64 		.ascii	"GCode end-of-file being interpreted.\000"
 9546      6520656E 
 9546      642D6F66 
 9546      2D66696C 
 9546      65206265 
 9547 042d 000000   		.space	3
 9548              	.LC50:
 9549 0430 53696D75 		.ascii	"Simulation mode: %s, move time: %.1f sec, other tim"
 9549      6C617469 
 9549      6F6E206D 
 9549      6F64653A 
 9549      2025732C 
 9550 0463 653A2025 		.ascii	"e: %.1f sec\000"
 9550      2E316620 
 9550      73656300 
 9551 046f 00       		.space	1
 9552              	.LC51:
 9553 0470 43616E6E 		.ascii	"Cannot open file: %s\000"
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 171


 9553      6F74206F 
 9553      70656E20 
 9553      66696C65 
 9553      3A202573 
 9554 0485 000000   		.space	3
 9555              	.LC52:
 9556 0488 4C6F6769 		.ascii	"Logical pin %d is not available for writing\000"
 9556      63616C20 
 9556      70696E20 
 9556      25642069 
 9556      73206E6F 
 9557              	.LC53:
 9558 04b4 53746570 		.ascii	"Steps/mm: \000"
 9558      732F6D6D 
 9558      3A2000
 9559 04bf 00       		.space	1
 9560              	.LC54:
 9561 04c0 453A00   		.ascii	"E:\000"
 9562 04c3 00       		.space	1
 9563              	.LC55:
 9564 04c4 25633A20 		.ascii	"%c: %.3f, \000"
 9564      252E3366 
 9564      2C2000
 9565 04cf 00       		.space	1
 9566              	.LC56:
 9567 04d0 2563252E 		.ascii	"%c%.3f\000"
 9567      336600
 9568 04d7 00       		.space	1
 9569              	.LC57:
 9570 04d8 46616E20 		.ascii	"Fan number %d is invalid, must be between 0 and %u\000"
 9570      6E756D62 
 9570      65722025 
 9570      64206973 
 9570      20696E76 
 9571 050b 00       		.space	1
 9572              	.LC58:
 9573 050c 46616E20 		.ascii	"Fan number %d is disabled\000"
 9573      6E756D62 
 9573      65722025 
 9573      64206973 
 9573      20646973 
 9574 0526 0000     		.space	2
 9575              	.LC59:
 9576 0528 46616E25 		.ascii	"Fan%i frequency: %dHz, speed: %d%%, min: %d%%, blip"
 9576      69206672 
 9576      65717565 
 9576      6E63793A 
 9576      20256448 
 9577 055b 3A20252E 		.ascii	": %.2f, inverted: %s\000"
 9577      32662C20 
 9577      696E7665 
 9577      72746564 
 9577      3A202573 
 9578              	.LC60:
 9579 0570 2C207472 		.ascii	", trigger: %dC, heaters:\000"
 9579      69676765 
 9579      723A2025 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 172


 9579      64432C20 
 9579      68656174 
 9580 0589 000000   		.space	3
 9581              	.LC61:
 9582 058c 20257500 		.ascii	" %u\000"
 9583              	.LC62:
 9584 0590 4649524D 		.ascii	"FIRMWARE_NAME: %s FIRMWARE_VERSION: %s ELECTRONICS:"
 9584      57415245 
 9584      5F4E414D 
 9584      453A2025 
 9584      73204649 
 9585 05c3 20257300 		.ascii	" %s\000"
 9586 05c7 00       		.space	1
 9587              	.LC63:
 9588 05c8 52657052 		.ascii	"RepRapFirmware for Duet Ethernet\000"
 9588      61704669 
 9588      726D7761 
 9588      72652066 
 9588      6F722044 
 9589 05e9 000000   		.space	3
 9590              	.LC64:
 9591 05ec 46757369 		.ascii	"Fusionware 1.18.1 RC2\000"
 9591      6F6E7761 
 9591      72652031 
 9591      2E31382E 
 9591      31205243 
 9592 0602 0000     		.space	2
 9593              	.LC65:
 9594 0604 202B2025 		.ascii	" + %s\000"
 9594      7300
 9595 060a 0000     		.space	2
 9596              	.LC66:
 9597 060c 20464952 		.ascii	" FIRMWARE_DATE: %s\000"
 9597      4D574152 
 9597      455F4441 
 9597      54453A20 
 9597      257300
 9598 061f 00       		.space	1
 9599              	.LC67:
 9600 0620 32303137 		.ascii	"2017-05-15\000"
 9600      2D30352D 
 9600      313500
 9601 062b 00       		.space	1
 9602              	.LC68:
 9603 062c 456E6473 		.ascii	"Endstops - \000"
 9603      746F7073 
 9603      202D2000 
 9604              	.LC69:
 9605 0638 5A207072 		.ascii	"Z probe: %s\000"
 9605      6F62653A 
 9605      20257300 
 9606              	.LC70:
 9607 0644 25633A20 		.ascii	"%c: %s, \000"
 9607      25732C20 
 9607      00
 9608 064d 000000   		.space	3
 9609              	.LC71:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 173


 9610 0650 48656174 		.ascii	"Heat sample time is %.3f seconds\000"
 9610      2073616D 
 9610      706C6520 
 9610      74696D65 
 9610      20697320 
 9611 0671 000000   		.space	3
 9612              	.LC72:
 9613 0674 496E7661 		.ascii	"Invalid heater number!\000"
 9613      6C696420 
 9613      68656174 
 9613      6572206E 
 9613      756D6265 
 9614 068b 00       		.space	1
 9615              	.LC73:
 9616 068c 486F7420 		.ascii	"Hot bed is not present!\000"
 9616      62656420 
 9616      6973206E 
 9616      6F742070 
 9616      72657365 
 9617              	.LC74:
 9618 06a4 42616420 		.ascii	"Bad heater number specified!\000"
 9618      68656174 
 9618      6572206E 
 9618      756D6265 
 9618      72207370 
 9619 06c1 000000   		.space	3
 9620              	.LC75:
 9621 06c4 4E6F2063 		.ascii	"No chamber heater has been set up yet!\000"
 9621      68616D62 
 9621      65722068 
 9621      65617465 
 9621      72206861 
 9622 06eb 00       		.space	1
 9623              	.LC76:
 9624 06ec 4368616D 		.ascii	"Chamber heater %d is currently at %.1fC\000"
 9624      62657220 
 9624      68656174 
 9624      65722025 
 9624      64206973 
 9625              	.LC77:
 9626 0714 4E6F2063 		.ascii	"No chamber heater has been configured yet.\000"
 9626      68616D62 
 9626      65722068 
 9626      65617465 
 9626      72206861 
 9627 073f 00       		.space	1
 9628              	.LC78:
 9629 0740 496E7661 		.ascii	"Invalid heater number\000"
 9629      6C696420 
 9629      68656174 
 9629      6572206E 
 9629      756D6265 
 9630 0756 0000     		.space	2
 9631              	.LC79:
 9632 0758 496E7661 		.ascii	"Invalid temperature limit\000"
 9632      6C696420 
 9632      74656D70 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 174


 9632      65726174 
 9632      75726520 
 9633 0772 0000     		.space	2
 9634              	.LC80:
 9635 0774 54656D70 		.ascii	"Temperature limit for heater %d is %.1fC\000"
 9635      65726174 
 9635      75726520 
 9635      6C696D69 
 9635      7420666F 
 9636 079d 000000   		.space	3
 9637              	.LC81:
 9638 07a0 41636365 		.ascii	"Accelerations: \000"
 9638      6C657261 
 9638      74696F6E 
 9638      733A2000 
 9639              	.LC82:
 9640 07b0 25633A20 		.ascii	"%c: %.1f, \000"
 9640      252E3166 
 9640      2C2000
 9641 07bb 00       		.space	1
 9642              	.LC83:
 9643 07bc 2563252E 		.ascii	"%c%.1f\000"
 9643      316600
 9644 07c3 00       		.space	1
 9645              	.LC84:
 9646 07c4 4D617869 		.ascii	"Maximum feedrates: \000"
 9646      6D756D20 
 9646      66656564 
 9646      72617465 
 9646      733A2000 
 9647              	.LC85:
 9648 07d8 4D617869 		.ascii	"Maximum printing acceleration %.1f, maximum travel "
 9648      6D756D20 
 9648      7072696E 
 9648      74696E67 
 9648      20616363 
 9649 080b 61636365 		.ascii	"acceleration %.1f\000"
 9649      6C657261 
 9649      74696F6E 
 9649      20252E31 
 9649      6600
 9650 081d 000000   		.space	3
 9651              	.LC86:
 9652 0820 52657472 		.ascii	"Retraction/un-retraction settings: length %.2f/%.2f"
 9652      61637469 
 9652      6F6E2F75 
 9652      6E2D7265 
 9652      74726163 
 9653 0853 6D6D2C20 		.ascii	"mm, speed %d/%dmm/min, Z hop %.2fmm\000"
 9653      73706565 
 9653      64202564 
 9653      2F25646D 
 9653      6D2F6D69 
 9654 0877 00       		.space	1
 9655              	.LC87:
 9656 0878 41786973 		.ascii	"Axis limits \000"
 9656      206C696D 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 175


 9656      69747320 
 9656      00
 9657 0885 000000   		.space	3
 9658              	.LC88:
 9659 0888 25632025 		.ascii	"%c %c: %.1f min, %.1f max\000"
 9659      633A2025 
 9659      2E316620 
 9659      6D696E2C 
 9659      20252E31 
 9660 08a2 0000     		.space	2
 9661              	.LC89:
 9662 08a4 496E7661 		.ascii	"Invalid speed factor specified.\000"
 9662      6C696420 
 9662      73706565 
 9662      64206661 
 9662      63746F72 
 9663              	.LC90:
 9664 08c4 53706565 		.ascii	"Speed factor override: %.1f%%\000"
 9664      64206661 
 9664      63746F72 
 9664      206F7665 
 9664      72726964 
 9665 08e2 0000     		.space	2
 9666              	.LC91:
 9667 08e4 45787472 		.ascii	"Extrusion factor override for extruder %d: %.1f%%\000"
 9667      7573696F 
 9667      6E206661 
 9667      63746F72 
 9667      206F7665 
 9668 0916 0000     		.space	2
 9669              	.LC92:
 9670 0918 4572726F 		.ascii	"Error: Invalid servo index %d in M280 command\012\000"
 9670      723A2049 
 9670      6E76616C 
 9670      69642073 
 9670      6572766F 
 9671 0947 00       		.space	1
 9672              	.LC93:
 9673 0948 42616279 		.ascii	"Baby stepping offset is %.3fmm\000"
 9673      20737465 
 9673      7070696E 
 9673      67206F66 
 9673      66736574 
 9674 0967 00       		.space	1
 9675              	.LC94:
 9676 0968 436F6C64 		.ascii	"Cold extrusion is %s, use M302 P[1/0] to allow/deny"
 9676      20657874 
 9676      72757369 
 9676      6F6E2069 
 9676      73202573 
 9677 099b 20697400 		.ascii	" it\000"
 9678 099f 00       		.space	1
 9679              	.LC95:
 9680 09a0 42616420 		.ascii	"Bad heater number in M303 command\000"
 9680      68656174 
 9680      6572206E 
 9680      756D6265 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 176


 9680      7220696E 
 9681 09c2 0000     		.space	2
 9682              	.LC96:
 9683 09c4 54617267 		.ascii	"Target temperature must be below temperature limit "
 9683      65742074 
 9683      656D7065 
 9683      72617475 
 9683      7265206D 
 9684 09f7 666F7220 		.ascii	"for this heater\000"
 9684      74686973 
 9684      20686561 
 9684      74657200 
 9685 0a07 00       		.space	1
 9686              	.LC97:
 9687 0a08 496E7661 		.ascii	"Invalid PWM in M303 command\000"
 9687      6C696420 
 9687      50574D20 
 9687      696E204D 
 9687      33303320 
 9688              	.LC98:
 9689 0a24 4572726F 		.ascii	"Error: bad model parameters\000"
 9689      723A2062 
 9689      6164206D 
 9689      6F64656C 
 9689      20706172 
 9690              	.LC99:
 9691 0a40 48656174 		.ascii	"Heater %u is disabled\000"
 9691      65722025 
 9691      75206973 
 9691      20646973 
 9691      61626C65 
 9692 0a56 0000     		.space	2
 9693              	.LC100:
 9694 0a58 48656174 		.ascii	"Heater %u model: gain %.1f, time constant %.1f, dea"
 9694      65722025 
 9694      75206D6F 
 9694      64656C3A 
 9694      20676169 
 9695 0a8b 64207469 		.ascii	"d time %.1f, max PWM %.2f, mode: %s\000"
 9695      6D652025 
 9695      2E31662C 
 9695      206D6178 
 9695      2050574D 
 9696 0aaf 00       		.space	1
 9697              	.LC101:
 9698 0ab0 0A436F6D 		.ascii	"\012Computed PID parameters for setpoint change: P%"
 9698      70757465 
 9698      64205049 
 9698      44207061 
 9698      72616D65 
 9699 0ae0 2E31662C 		.ascii	".1f, I%.3f, D%.1f\000"
 9699      2049252E 
 9699      33662C20 
 9699      44252E31 
 9699      6600
 9700 0af2 0000     		.space	2
 9701              	.LC102:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 177


 9702 0af4 0A436F6D 		.ascii	"\012Computed PID parameters for load change: P%.1f,"
 9702      70757465 
 9702      64205049 
 9702      44207061 
 9702      72616D65 
 9703 0b24 2049252E 		.ascii	" I%.3f, D%.1f\000"
 9703      33662C20 
 9703      44252E31 
 9703      6600
 9704 0b32 0000     		.space	2
 9705              	.LC103:
 9706 0b34 44726976 		.ascii	"Drive %c does not support %dx microstepping%s\012\000"
 9706      65202563 
 9706      20646F65 
 9706      73206E6F 
 9706      74207375 
 9707 0b63 00       		.space	1
 9708              	.LC104:
 9709 0b64 44726976 		.ascii	"Drive E%u does not support %dx microstepping%s\012\000"
 9709      65204525 
 9709      7520646F 
 9709      6573206E 
 9709      6F742073 
 9710              	.LC105:
 9711 0b94 4D696372 		.ascii	"Microstepping - \000"
 9711      6F737465 
 9711      7070696E 
 9711      67202D20 
 9711      00
 9712 0ba5 000000   		.space	3
 9713              	.LC106:
 9714 0ba8 4500     		.ascii	"E\000"
 9715 0baa 0000     		.space	2
 9716              	.LC107:
 9717 0bac 25633A25 		.ascii	"%c:%d%s, \000"
 9717      6425732C 
 9717      2000
 9718 0bb6 0000     		.space	2
 9719              	.LC108:
 9720 0bb8 3A256425 		.ascii	":%d%s\000"
 9720      7300
 9721 0bbe 0000     		.space	2
 9722              	.LC109:
 9723 0bc0 42656420 		.ascii	"Bed compensation taper height is %.1fmm\000"
 9723      636F6D70 
 9723      656E7361 
 9723      74696F6E 
 9723      20746170 
 9724              	.LC110:
 9725 0be8 42656420 		.ascii	"Bed compensation is not tapered\000"
 9725      636F6D70 
 9725      656E7361 
 9725      74696F6E 
 9725      20697320 
 9726              	.LC111:
 9727 0c08 46696C61 		.ascii	"Filament width: %.2fmm, nozzle diameter: %.2fmm\000"
 9727      6D656E74 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 178


 9727      20776964 
 9727      74683A20 
 9727      252E3266 
 9728              	.LC112:
 9729 0c38 636F6E66 		.ascii	"config-override.g\000"
 9729      69672D6F 
 9729      76657272 
 9729      6964652E 
 9729      6700
 9730 0c4a 0000     		.space	2
 9731              	.LC113:
 9732 0c4c 303A2F73 		.ascii	"0:/sys/\000"
 9732      79732F00 
 9733              	.LC114:
 9734 0c54 436F6E66 		.ascii	"Configuration file not found!\000"
 9734      69677572 
 9734      6174696F 
 9734      6E206669 
 9734      6C65206E 
 9735 0c72 0000     		.space	2
 9736              	.LC115:
 9737 0c74 4D41433A 		.ascii	"MAC: %x:%x:%x:%x:%x:%x\000"
 9737      2025783A 
 9737      25783A25 
 9737      783A2578 
 9737      3A25783A 
 9738 0c8b 00       		.space	1
 9739              	.LC116:
 9740 0c8c 52657052 		.ascii	"RepRap name: %s\000"
 9740      6170206E 
 9740      616D653A 
 9740      20257300 
 9741              	.LC117:
 9742 0c9c 4E657477 		.ascii	"Network is %s, configured IP address: %d.%d.%d.%d, "
 9742      6F726B20 
 9742      69732025 
 9742      732C2063 
 9742      6F6E6669 
 9743 0ccf 61637475 		.ascii	"actual IP address: %d.%d.%d.%d\000"
 9743      616C2049 
 9743      50206164 
 9743      64726573 
 9743      733A2025 
 9744 0cee 0000     		.space	2
 9745              	.LC118:
 9746 0cf0 4E657420 		.ascii	"Net mask: %d.%d.%d.%d \000"
 9746      6D61736B 
 9746      3A202564 
 9746      2E25642E 
 9746      25642E25 
 9747 0d07 00       		.space	1
 9748              	.LC119:
 9749 0d08 47617465 		.ascii	"Gateway: %d.%d.%d.%d \000"
 9749      7761793A 
 9749      2025642E 
 9749      25642E25 
 9749      642E2564 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 179


 9750 0d1e 0000     		.space	2
 9751              	.LC120:
 9752 0d20 456D756C 		.ascii	"Emulating \000"
 9752      6174696E 
 9752      672000
 9753 0d2b 00       		.space	1
 9754              	.LC121:
 9755 0d2c 52657052 		.ascii	"RepRap Firmware (i.e. in native mode)\000"
 9755      61702046 
 9755      69726D77 
 9755      61726520 
 9755      28692E65 
 9756 0d52 0000     		.space	2
 9757              	.LC122:
 9758 0d54 4D61726C 		.ascii	"Marlin\000"
 9758      696E00
 9759 0d5b 00       		.space	1
 9760              	.LC123:
 9761 0d5c 54656163 		.ascii	"Teacup\000"
 9761      757000
 9762 0d63 00       		.space	1
 9763              	.LC124:
 9764 0d64 53707269 		.ascii	"Sprinter\000"
 9764      6E746572 
 9764      00
 9765 0d6d 000000   		.space	3
 9766              	.LC125:
 9767 0d70 52657065 		.ascii	"Repetier\000"
 9767      74696572 
 9767      00
 9768 0d79 000000   		.space	3
 9769              	.LC126:
 9770 0d7c 556E6B6E 		.ascii	"Unknown: (%d)\000"
 9770      6F776E3A 
 9770      20282564 
 9770      2900
 9771 0d8a 0000     		.space	2
 9772              	.LC127:
 9773 0d8c 41786973 		.ascii	"Axis compensations - XY: %.5f, YZ: %.5f, ZX: %.5f\000"
 9773      20636F6D 
 9773      70656E73 
 9773      6174696F 
 9773      6E73202D 
 9774 0dbe 0000     		.space	2
 9775              	.LC128:
 9776 0dc0 4572726F 		.ascii	"Error: M557 P parameter is no longer supported. use"
 9776      723A204D 
 9776      35353720 
 9776      50207061 
 9776      72616D65 
 9777 0df3 20612062 		.ascii	" a bed.g file instead.\012\000"
 9777      65642E67 
 9777      2066696C 
 9777      6520696E 
 9777      73746561 
 9778 0e0b 00       		.space	1
 9779              	.LC129:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 180


 9780 0e0c 5A205072 		.ascii	"Z Probe type %d, invert %s, dive height %.1fmm, pro"
 9780      6F626520 
 9780      74797065 
 9780      2025642C 
 9780      20696E76 
 9781 0e3f 62652073 		.ascii	"be speed %dmm/min, travel speed %dmm/min, recovery "
 9781      70656564 
 9781      2025646D 
 9781      6D2F6D69 
 9781      6E2C2074 
 9782 0e72 74696D65 		.ascii	"time %.2f sec\000"
 9782      20252E32 
 9782      66207365 
 9782      6300
 9783              	.LC130:
 9784 0e80 2C206578 		.ascii	", extra parameter %.2f\000"
 9784      74726120 
 9784      70617261 
 9784      6D657465 
 9784      7220252E 
 9785 0e97 00       		.space	1
 9786              	.LC131:
 9787 0e98 2C207573 		.ascii	", used for axes:\000"
 9787      65642066 
 9787      6F722061 
 9787      7865733A 
 9787      00
 9788 0ea9 000000   		.space	3
 9789              	.LC132:
 9790 0eac 20256300 		.ascii	" %c\000"
 9791              	.LC133:
 9792 0eb0 303A2F77 		.ascii	"0:/www/\000"
 9792      77772F00 
 9793              	.LC134:
 9794 0eb8 496E7661 		.ascii	"Invalid heater number.\012\000"
 9794      6C696420 
 9794      68656174 
 9794      6572206E 
 9794      756D6265 
 9795              	.LC135:
 9796 0ed0 4D6F7665 		.ascii	"Movement outside the bed is %spermitted\000"
 9796      6D656E74 
 9796      206F7574 
 9796      73696465 
 9796      20746865 
 9797              	.LC136:
 9798 0ef8 4D617869 		.ascii	"Maximum jerk rates: \000"
 9798      6D756D20 
 9798      6A65726B 
 9798      20726174 
 9798      65733A20 
 9799 0f0d 000000   		.space	3
 9800              	.LC137:
 9801 0f10 53657474 		.ascii	"Setting mix ratios - wrong number of E drives: %s\000"
 9801      696E6720 
 9801      6D697820 
 9801      72617469 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 181


 9801      6F73202D 
 9802 0f42 0000     		.space	2
 9803              	.LC138:
 9804 0f44 546F6F6C 		.ascii	"Tool %d mix ratios:\000"
 9804      20256420 
 9804      6D697820 
 9804      72617469 
 9804      6F733A00 
 9805              	.LC139:
 9806 0f58 546F6F6C 		.ascii	"Tool %d mixing is %s\000"
 9806      20256420 
 9806      6D697869 
 9806      6E672069 
 9806      73202573 
 9807 0f6d 000000   		.space	3
 9808              	.LC140:
 9809 0f70 4572726F 		.ascii	"Error: M569 no longer accepts XYZE parameters; use "
 9809      723A204D 
 9809      35363920 
 9809      6E6F206C 
 9809      6F6E6765 
 9810 0fa3 4D353834 		.ascii	"M584 instead\012\000"
 9810      20696E73 
 9810      74656164 
 9810      0A00
 9811 0fb1 000000   		.space	3
 9812              	.LC141:
 9813 0fb4 41202564 		.ascii	"A %d sends drive %u forwards, a %d enables it, and "
 9813      2073656E 
 9813      64732064 
 9813      72697665 
 9813      20257520 
 9814 0fe7 74686520 		.ascii	"the minimum pulse width is %.1f microseconds\000"
 9814      6D696E69 
 9814      6D756D20 
 9814      70756C73 
 9814      65207769 
 9815              	.LC142:
 9816 1014 48656174 		.ascii	"Heater %u allowed excursion %.1fC, fault trigger ti"
 9816      65722025 
 9816      7520616C 
 9816      6C6F7765 
 9816      64206578 
 9817 1047 6D652025 		.ascii	"me %.1f seconds\000"
 9817      2E316620 
 9817      7365636F 
 9817      6E647300 
 9818 1057 00       		.space	1
 9819              	.LC143:
 9820 1058 4D353730 		.ascii	"M570 S parameter is no longer required or supported"
 9820      20532070 
 9820      6172616D 
 9820      65746572 
 9820      20697320 
 9821 108b 00       		.ascii	"\000"
 9822              	.LC144:
 9823 108c 4C6F6769 		.ascii	"Logical pin %d is already in use or not available f"
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 182


 9823      63616C20 
 9823      70696E20 
 9823      25642069 
 9823      7320616C 
 9824 10bf 6F722075 		.ascii	"or use by M571\000"
 9824      73652062 
 9824      79204D35 
 9824      373100
 9825 10ce 0000     		.space	2
 9826              	.LC145:
 9827 10d0 45787472 		.ascii	"Extrusion ancillary PWM %.3f at %.1fHz on pin %u\000"
 9827      7573696F 
 9827      6E20616E 
 9827      63696C6C 
 9827      61727920 
 9828 1101 000000   		.space	3
 9829              	.LC146:
 9830 1104 50726573 		.ascii	"Pressure advance for extruder %u is %.3f seconds\000"
 9830      73757265 
 9830      20616476 
 9830      616E6365 
 9830      20666F72 
 9831 1135 000000   		.space	3
 9832              	.LC147:
 9833 1138 41766572 		.ascii	"Average heater %d PWM: %.3f\000"
 9833      61676520 
 9833      68656174 
 9833      65722025 
 9833      64205057 
 9834              	.LC148:
 9835 1154 456E6473 		.ascii	"Endstop configuration:\000"
 9835      746F7020 
 9835      636F6E66 
 9835      69677572 
 9835      6174696F 
 9836 116b 00       		.space	1
 9837              	.LC149:
 9838 116c 20256320 		.ascii	" %c %s (active %s),\000"
 9838      25732028 
 9838      61637469 
 9838      76652025 
 9838      73292C00 
 9839              	.LC150:
 9840 1180 4368616E 		.ascii	"Channel %d: baud rate %d, %s checksum\000"
 9840      6E656C20 
 9840      25643A20 
 9840      62617564 
 9840      20726174 
 9841 11a6 0000     		.space	2
 9842              	.LC151:
 9843 11a8 496E7661 		.ascii	"Invalid extruder drive specified!\000"
 9843      6C696420 
 9843      65787472 
 9843      75646572 
 9843      20647269 
 9844 11ca 0000     		.space	2
 9845              	.LC152:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 183


 9846 11cc 41786973 		.ascii	"Axis scale factors\000"
 9846      20736361 
 9846      6C652066 
 9846      6163746F 
 9846      727300
 9847 11df 00       		.space	1
 9848              	.LC153:
 9849 11e0 25632025 		.ascii	"%c %c: %.3f\000"
 9849      633A2025 
 9849      2E336600 
 9850              	.LC154:
 9851 11ec 42616420 		.ascii	"Bad S parameter in M581 command\012\000"
 9851      53207061 
 9851      72616D65 
 9851      74657220 
 9851      696E204D 
 9852 120d 000000   		.space	3
 9853              	.LC155:
 9854 1210 54726967 		.ascii	"Trigger %u fires on a rising edge on \000"
 9854      67657220 
 9854      25752066 
 9854      69726573 
 9854      206F6E20 
 9855 1236 0000     		.space	2
 9856              	.LC156:
 9857 1238 206F7220 		.ascii	" or a falling edge on \000"
 9857      61206661 
 9857      6C6C696E 
 9857      67206564 
 9857      6765206F 
 9858 124f 00       		.space	1
 9859              	.LC157:
 9860 1250 20656E64 		.ascii	" endstop inputs\000"
 9860      73746F70 
 9860      20696E70 
 9860      75747300 
 9861              	.LC158:
 9862 1260 20776865 		.ascii	" when printing from SD card\000"
 9862      6E207072 
 9862      696E7469 
 9862      6E672066 
 9862      726F6D20 
 9863              	.LC159:
 9864 127c 54726967 		.ascii	"Trigger number out of range\012\000"
 9864      67657220 
 9864      6E756D62 
 9864      6572206F 
 9864      7574206F 
 9865 1299 000000   		.space	3
 9866              	.LC160:
 9867 129c 4572726F 		.ascii	"Error: invalid drive number in M584 command\012\000"
 9867      723A2069 
 9867      6E76616C 
 9867      69642064 
 9867      72697665 
 9868 12c9 000000   		.space	3
 9869              	.LC161:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 184


 9870 12cc 44726976 		.ascii	"Driver assignments:\000"
 9870      65722061 
 9870      73736967 
 9870      6E6D656E 
 9870      74733A00 
 9871              	.LC162:
 9872 12e0 25632575 		.ascii	"%c%u\000"
 9872      00
 9873 12e5 000000   		.space	3
 9874              	.LC163:
 9875 12e8 44696167 		.ascii	"Diagonal %.3f, delta radius %.3f, homed height %.3f"
 9875      6F6E616C 
 9875      20252E33 
 9875      662C2064 
 9875      656C7461 
 9876 131b 2C206265 		.ascii	", bed radius %.1f, X %.3f\302\260, Y %.3f\302\260, "
 9876      64207261 
 9876      64697573 
 9876      20252E31 
 9876      662C2058 
 9877 1342 5A20252E 		.ascii	"Z %.3f\302\260\000"
 9877      3366C2B0 
 9877      00
 9878 134b 00       		.space	1
 9879              	.LC164:
 9880 134c 5072696E 		.ascii	"Printer is not in delta mode\000"
 9880      74657220 
 9880      6973206E 
 9880      6F742069 
 9880      6E206465 
 9881 1369 000000   		.space	3
 9882              	.LC165:
 9883 136c 456E6473 		.ascii	"Endstop adjustments X%.2f Y%.2f Z%.2f, tilt X%.2f%%"
 9883      746F7020 
 9883      61646A75 
 9883      73746D65 
 9883      6E747320 
 9884 139f 2059252E 		.ascii	" Y%.2f%%\000"
 9884      32662525 
 9884      00
 9885              	.LC166:
 9886 13a8 5072696E 		.ascii	"Printer mode is %s with axis factors\000"
 9886      74657220 
 9886      6D6F6465 
 9886      20697320 
 9886      25732077 
 9887 13cd 000000   		.space	3
 9888              	.LC167:
 9889 13d0 2025633A 		.ascii	" %c:%f\000"
 9889      256600
 9890 13d7 00       		.space	1
 9891              	.LC168:
 9892 13d8 25592D25 		.ascii	"%Y-%m-%d\000"
 9892      6D2D2564 
 9892      00
 9893 13e1 000000   		.space	3
 9894              	.LC169:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 185


 9895 13e4 436F756C 		.ascii	"Could not set date\000"
 9895      64206E6F 
 9895      74207365 
 9895      74206461 
 9895      746500
 9896 13f7 00       		.space	1
 9897              	.LC170:
 9898 13f8 496E7661 		.ascii	"Invalid date format\000"
 9898      6C696420 
 9898      64617465 
 9898      20666F72 
 9898      6D617400 
 9899              	.LC171:
 9900 140c 25483A25 		.ascii	"%H:%M:%S\000"
 9900      4D3A2553 
 9900      00
 9901 1415 000000   		.space	3
 9902              	.LC172:
 9903 1418 436F756C 		.ascii	"Could not set time\000"
 9903      64206E6F 
 9903      74207365 
 9903      74207469 
 9903      6D6500
 9904 142b 00       		.space	1
 9905              	.LC173:
 9906 142c 496E7661 		.ascii	"Invalid time format\000"
 9906      6C696420 
 9906      74696D65 
 9906      20666F72 
 9906      6D617400 
 9907              	.LC174:
 9908 1440 43757272 		.ascii	"Current date and time: %04u-%02u-%02u %02u:%02u:%02"
 9908      656E7420 
 9908      64617465 
 9908      20616E64 
 9908      2074696D 
 9909 1473 7500     		.ascii	"u\000"
 9910 1475 000000   		.space	3
 9911              	.LC175:
 9912 1478 0A576172 		.ascii	"\012Warning: RTC has not been configured yet!\000"
 9912      6E696E67 
 9912      3A205254 
 9912      43206861 
 9912      73206E6F 
 9913 14a3 00       		.space	1
 9914              	.LC176:
 9915 14a4 25633A25 		.ascii	"%c:%d, \000"
 9915      642C2000 
 9916              	.LC177:
 9917 14ac 3A256400 		.ascii	":%d\000"
 9918              	.LC178:
 9919 14b0 2C206964 		.ascii	", idle factor %d%%\000"
 9919      6C652066 
 9919      6163746F 
 9919      72202564 
 9919      252500
 9920 14c3 00       		.space	1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 186


 9921              	.LC179:
 9922 14c4 4D393131 		.ascii	"M911 not implemented yet\000"
 9922      206E6F74 
 9922      20696D70 
 9922      6C656D65 
 9922      6E746564 
 9923 14dd 000000   		.space	3
 9924              	.LC180:
 9925 14e0 4D435520 		.ascii	"MCU temperature calibration adjustment is %.1f\302\260"
 9925      74656D70 
 9925      65726174 
 9925      75726520 
 9925      63616C69 
 9926 1510 4300     		.ascii	"C\000"
 9927 1512 0000     		.space	2
 9928              	.LC181:
 9929 1514 496E7661 		.ascii	"Invalid module number '%ld'\012\000"
 9929      6C696420 
 9929      6D6F6475 
 9929      6C65206E 
 9929      756D6265 
 9930 1531 000000   		.space	3
 9931              	.LC182:
 9932 1534 43686563 		.ascii	"Checksum error on line %d\000"
 9932      6B73756D 
 9932      20657272 
 9932      6F72206F 
 9932      6E206C69 
 9933 154e 0000     		.space	2
 9934              	.LC183:
 9935 1550 45524153 		.ascii	"ERASE\000"
 9935      4500
 9936 1556 0000     		.space	2
 9937              	.LC184:
 9938 1558 756E7375 		.ascii	"unsupported command: %s\000"
 9938      70706F72 
 9938      74656420 
 9938      636F6D6D 
 9938      616E643A 
 9939              	.LC185:
 9940 1570 47436F64 		.ascii	"GCode files:\012\000"
 9940      65206669 
 9940      6C65733A 
 9940      0A00
 9941 157e 0000     		.space	2
 9942              	.LC186:
 9943 1580 46696C65 		.ascii	"File opened\012File selected\000"
 9943      206F7065 
 9943      6E65640A 
 9943      46696C65 
 9943      2073656C 
 9944 159a 0000     		.space	2
 9945              	.LC187:
 9946 159c 46696C65 		.ascii	"File %s selected for printing\000"
 9946      20257320 
 9946      73656C65 
 9946      63746564 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 187


 9946      20666F72 
 9947 15ba 0000     		.space	2
 9948              	.LC188:
 9949 15bc 72657472 		.ascii	"retractprobe.g\000"
 9949      61637470 
 9949      726F6265 
 9949      2E6700
 9950 15cb 00       		.space	1
 9951              	.LC189:
 9952 15cc 6465706C 		.ascii	"deployprobe.g\000"
 9952      6F797072 
 9952      6F62652E 
 9952      6700
 9953 15da 0000     		.space	2
 9954              	.LC190:
 9955 15dc 736C6565 		.ascii	"sleep.g\000"
 9955      702E6700 
 9956              	.LC191:
 9957 15e4 73746F70 		.ascii	"stop.g\000"
 9957      2E6700
 9958 15eb 00       		.space	1
 9959              	.LC192:
 9960 15ec 63616E63 		.ascii	"cancel.g\000"
 9960      656C2E67 
 9960      00
 9961 15f5 000000   		.space	3
 9962              	.LC193:
 9963 15f8 72657375 		.ascii	"resume.g\000"
 9963      6D652E67 
 9963      00
 9964 1601 000000   		.space	3
 9965              	.LC194:
 9966 1604 6265642E 		.ascii	"bed.g\000"
 9966      6700
 9967 160a 0000     		.section	.data.RETRACTPROBE_G,"aw",%progbits
 9968              		.align	2
 9969              		.set	.LANCHOR4,. + 0
 9970              		.type	RETRACTPROBE_G, %object
 9971              		.size	RETRACTPROBE_G, 4
 9972              	RETRACTPROBE_G:
 9973 0000 BC150000 		.word	.LC188
 9974              		.section	.rodata.CSWTCH.624,"a",%progbits
 9975              		.align	2
 9976              		.set	.LANCHOR6,. + 0
 9977              		.type	CSWTCH.624, %object
 9978              		.size	CSWTCH.624, 12
 9979              	CSWTCH.624:
 9980 0000 01000000 		.word	1
 9981 0004 02000000 		.word	2
 9982 0008 03000000 		.word	3
 9983              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 9984              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 9985              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 9986              	_ZL28cpu_irq_prev_interrupt_state:
 9987 0000 00       		.space	1
 9988              		.section	.data.CONFIG_OVERRIDE_G,"aw",%progbits
 9989              		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccZSBrW7.s 			page 188


 9990              		.set	.LANCHOR5,. + 0
 9991              		.type	CONFIG_OVERRIDE_G, %object
 9992              		.size	CONFIG_OVERRIDE_G, 4
 9993              	CONFIG_OVERRIDE_G:
 9994 0000 380C0000 		.word	.LC112
 9995              		.section	.data.RESUME_G,"aw",%progbits
 9996              		.align	2
 9997              		.set	.LANCHOR2,. + 0
 9998              		.type	RESUME_G, %object
 9999              		.size	RESUME_G, 4
 10000              	RESUME_G:
 10001 0000 F8150000 		.word	.LC193
 10002              		.section	.data.DEPLOYPROBE_G,"aw",%progbits
 10003              		.align	2
 10004              		.set	.LANCHOR3,. + 0
 10005              		.type	DEPLOYPROBE_G, %object
 10006              		.size	DEPLOYPROBE_G, 4
 10007              	DEPLOYPROBE_G:
 10008 0000 CC150000 		.word	.LC189
 10009              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
