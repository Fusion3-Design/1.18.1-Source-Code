ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 1


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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 2


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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 3


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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 4


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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 5


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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 6


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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 7


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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 8


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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 9


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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 10


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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 11


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
 603 0068 02F2F981 		bhi	.L865
 604 006c DFE819F0 		tbh	[pc, r9, lsl #1]
 605              	.L868:
 606 0070 4D0F     		.2byte	(.L134-.L868)/2
 607 0072 4D0F     		.2byte	(.L134-.L868)/2
 608 0074 F711     		.2byte	(.L865-.L868)/2
 609 0076 F711     		.2byte	(.L865-.L868)/2
 610 0078 F711     		.2byte	(.L865-.L868)/2
 611 007a F711     		.2byte	(.L865-.L868)/2
 612 007c F711     		.2byte	(.L865-.L868)/2
 613 007e F711     		.2byte	(.L865-.L868)/2
 614 0080 F711     		.2byte	(.L865-.L868)/2
 615 0082 F711     		.2byte	(.L865-.L868)/2
 616 0084 F711     		.2byte	(.L865-.L868)/2
 617 0086 F711     		.2byte	(.L865-.L868)/2
 618 0088 F711     		.2byte	(.L865-.L868)/2
 619 008a F711     		.2byte	(.L865-.L868)/2
 620 008c F711     		.2byte	(.L865-.L868)/2
 621 008e F711     		.2byte	(.L865-.L868)/2
 622 0090 F711     		.2byte	(.L865-.L868)/2
 623 0092 F711     		.2byte	(.L865-.L868)/2
 624 0094 D30A     		.2byte	(.L141-.L868)/2
 625 0096 F711     		.2byte	(.L865-.L868)/2
 626 0098 0D10     		.2byte	(.L157-.L868)/2
 627 009a DA0F     		.2byte	(.L173-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 12


 628 009c F40F     		.2byte	(.L176-.L868)/2
 629 009e 890B     		.2byte	(.L178-.L868)/2
 630 00a0 280D     		.2byte	(.L186-.L868)/2
 631 00a2 0D0D     		.2byte	(.L191-.L868)/2
 632 00a4 520D     		.2byte	(.L194-.L868)/2
 633 00a6 3606     		.2byte	(.L200-.L868)/2
 634 00a8 DF10     		.2byte	(.L202-.L868)/2
 635 00aa A00E     		.2byte	(.L205-.L868)/2
 636 00ac F910     		.2byte	(.L206-.L868)/2
 637 00ae F711     		.2byte	(.L865-.L868)/2
 638 00b0 890B     		.2byte	(.L178-.L868)/2
 639 00b2 F711     		.2byte	(.L865-.L868)/2
 640 00b4 F711     		.2byte	(.L865-.L868)/2
 641 00b6 F711     		.2byte	(.L865-.L868)/2
 642 00b8 190B     		.2byte	(.L208-.L868)/2
 643 00ba 3E0B     		.2byte	(.L211-.L868)/2
 644 00bc 640B     		.2byte	(.L219-.L868)/2
 645 00be F711     		.2byte	(.L865-.L868)/2
 646 00c0 F711     		.2byte	(.L865-.L868)/2
 647 00c2 F711     		.2byte	(.L865-.L868)/2
 648 00c4 BB06     		.2byte	(.L222-.L868)/2
 649 00c6 F711     		.2byte	(.L865-.L868)/2
 650 00c8 F711     		.2byte	(.L865-.L868)/2
 651 00ca F711     		.2byte	(.L865-.L868)/2
 652 00cc F711     		.2byte	(.L865-.L868)/2
 653 00ce F711     		.2byte	(.L865-.L868)/2
 654 00d0 F711     		.2byte	(.L865-.L868)/2
 655 00d2 F711     		.2byte	(.L865-.L868)/2
 656 00d4 F711     		.2byte	(.L865-.L868)/2
 657 00d6 F711     		.2byte	(.L865-.L868)/2
 658 00d8 F711     		.2byte	(.L865-.L868)/2
 659 00da F711     		.2byte	(.L865-.L868)/2
 660 00dc F711     		.2byte	(.L865-.L868)/2
 661 00de F711     		.2byte	(.L865-.L868)/2
 662 00e0 F711     		.2byte	(.L865-.L868)/2
 663 00e2 F711     		.2byte	(.L865-.L868)/2
 664 00e4 F711     		.2byte	(.L865-.L868)/2
 665 00e6 F711     		.2byte	(.L865-.L868)/2
 666 00e8 F711     		.2byte	(.L865-.L868)/2
 667 00ea F711     		.2byte	(.L865-.L868)/2
 668 00ec F711     		.2byte	(.L865-.L868)/2
 669 00ee F711     		.2byte	(.L865-.L868)/2
 670 00f0 F711     		.2byte	(.L865-.L868)/2
 671 00f2 F711     		.2byte	(.L865-.L868)/2
 672 00f4 F711     		.2byte	(.L865-.L868)/2
 673 00f6 F711     		.2byte	(.L865-.L868)/2
 674 00f8 F711     		.2byte	(.L865-.L868)/2
 675 00fa F711     		.2byte	(.L865-.L868)/2
 676 00fc F711     		.2byte	(.L865-.L868)/2
 677 00fe F711     		.2byte	(.L865-.L868)/2
 678 0100 F711     		.2byte	(.L865-.L868)/2
 679 0102 F711     		.2byte	(.L865-.L868)/2
 680 0104 F711     		.2byte	(.L865-.L868)/2
 681 0106 F711     		.2byte	(.L865-.L868)/2
 682 0108 F711     		.2byte	(.L865-.L868)/2
 683 010a F711     		.2byte	(.L865-.L868)/2
 684 010c F711     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 13


 685 010e F711     		.2byte	(.L865-.L868)/2
 686 0110 C506     		.2byte	(.L231-.L868)/2
 687 0112 AF0A     		.2byte	(.L232-.L868)/2
 688 0114 BE0A     		.2byte	(.L233-.L868)/2
 689 0116 9B0A     		.2byte	(.L236-.L868)/2
 690 0118 D30A     		.2byte	(.L141-.L868)/2
 691 011a F411     		.2byte	(.L1006-.L868)/2
 692 011c F711     		.2byte	(.L865-.L868)/2
 693 011e F711     		.2byte	(.L865-.L868)/2
 694 0120 F711     		.2byte	(.L865-.L868)/2
 695 0122 F711     		.2byte	(.L865-.L868)/2
 696 0124 F711     		.2byte	(.L865-.L868)/2
 697 0126 F711     		.2byte	(.L865-.L868)/2
 698 0128 BC0C     		.2byte	(.L239-.L868)/2
 699 012a F711     		.2byte	(.L865-.L868)/2
 700 012c F711     		.2byte	(.L865-.L868)/2
 701 012e F711     		.2byte	(.L865-.L868)/2
 702 0130 F711     		.2byte	(.L865-.L868)/2
 703 0132 F711     		.2byte	(.L865-.L868)/2
 704 0134 A70C     		.2byte	(.L259-.L868)/2
 705 0136 200D     		.2byte	(.L261-.L868)/2
 706 0138 F711     		.2byte	(.L865-.L868)/2
 707 013a 2D09     		.2byte	(.L262-.L868)/2
 708 013c F411     		.2byte	(.L1006-.L868)/2
 709 013e F30C     		.2byte	(.L263-.L868)/2
 710 0140 020D     		.2byte	(.L264-.L868)/2
 711 0142 5204     		.2byte	(.L268-.L868)/2
 712 0144 5904     		.2byte	(.L269-.L868)/2
 713 0146 CC04     		.2byte	(.L297-.L868)/2
 714 0148 D404     		.2byte	(.L298-.L868)/2
 715 014a DF04     		.2byte	(.L299-.L868)/2
 716 014c F411     		.2byte	(.L1006-.L868)/2
 717 014e 2705     		.2byte	(.L307-.L868)/2
 718 0150 4A05     		.2byte	(.L310-.L868)/2
 719 0152 F711     		.2byte	(.L865-.L868)/2
 720 0154 5005     		.2byte	(.L311-.L868)/2
 721 0156 4707     		.2byte	(.L312-.L868)/2
 722 0158 5907     		.2byte	(.L315-.L868)/2
 723 015a 5206     		.2byte	(.L331-.L868)/2
 724 015c F711     		.2byte	(.L865-.L868)/2
 725 015e BD07     		.2byte	(.L333-.L868)/2
 726 0160 B607     		.2byte	(.L337-.L868)/2
 727 0162 EC07     		.2byte	(.L338-.L868)/2
 728 0164 A707     		.2byte	(.L339-.L868)/2
 729 0166 F711     		.2byte	(.L865-.L868)/2
 730 0168 F711     		.2byte	(.L865-.L868)/2
 731 016a F711     		.2byte	(.L865-.L868)/2
 732 016c F711     		.2byte	(.L865-.L868)/2
 733 016e F711     		.2byte	(.L865-.L868)/2
 734 0170 F711     		.2byte	(.L865-.L868)/2
 735 0172 F711     		.2byte	(.L865-.L868)/2
 736 0174 F711     		.2byte	(.L865-.L868)/2
 737 0176 F711     		.2byte	(.L865-.L868)/2
 738 0178 F711     		.2byte	(.L865-.L868)/2
 739 017a F711     		.2byte	(.L865-.L868)/2
 740 017c F711     		.2byte	(.L865-.L868)/2
 741 017e CF08     		.2byte	(.L342-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 14


 742 0180 F711     		.2byte	(.L865-.L868)/2
 743 0182 F711     		.2byte	(.L865-.L868)/2
 744 0184 F711     		.2byte	(.L865-.L868)/2
 745 0186 F711     		.2byte	(.L865-.L868)/2
 746 0188 AC08     		.2byte	(.L345-.L868)/2
 747 018a 5B09     		.2byte	(.L354-.L868)/2
 748 018c F711     		.2byte	(.L865-.L868)/2
 749 018e FE05     		.2byte	(.L365-.L868)/2
 750 0190 2A06     		.2byte	(.L371-.L868)/2
 751 0192 F711     		.2byte	(.L865-.L868)/2
 752 0194 F711     		.2byte	(.L865-.L868)/2
 753 0196 F711     		.2byte	(.L865-.L868)/2
 754 0198 F711     		.2byte	(.L865-.L868)/2
 755 019a F711     		.2byte	(.L865-.L868)/2
 756 019c F711     		.2byte	(.L865-.L868)/2
 757 019e F711     		.2byte	(.L865-.L868)/2
 758 01a0 F711     		.2byte	(.L865-.L868)/2
 759 01a2 F711     		.2byte	(.L865-.L868)/2
 760 01a4 F711     		.2byte	(.L865-.L868)/2
 761 01a6 F711     		.2byte	(.L865-.L868)/2
 762 01a8 F711     		.2byte	(.L865-.L868)/2
 763 01aa F711     		.2byte	(.L865-.L868)/2
 764 01ac F711     		.2byte	(.L865-.L868)/2
 765 01ae F711     		.2byte	(.L865-.L868)/2
 766 01b0 F711     		.2byte	(.L865-.L868)/2
 767 01b2 F711     		.2byte	(.L865-.L868)/2
 768 01b4 F711     		.2byte	(.L865-.L868)/2
 769 01b6 F711     		.2byte	(.L865-.L868)/2
 770 01b8 F711     		.2byte	(.L865-.L868)/2
 771 01ba F711     		.2byte	(.L865-.L868)/2
 772 01bc F711     		.2byte	(.L865-.L868)/2
 773 01be F711     		.2byte	(.L865-.L868)/2
 774 01c0 F711     		.2byte	(.L865-.L868)/2
 775 01c2 F711     		.2byte	(.L865-.L868)/2
 776 01c4 F711     		.2byte	(.L865-.L868)/2
 777 01c6 F711     		.2byte	(.L865-.L868)/2
 778 01c8 F711     		.2byte	(.L865-.L868)/2
 779 01ca F711     		.2byte	(.L865-.L868)/2
 780 01cc F711     		.2byte	(.L865-.L868)/2
 781 01ce F711     		.2byte	(.L865-.L868)/2
 782 01d0 F711     		.2byte	(.L865-.L868)/2
 783 01d2 F711     		.2byte	(.L865-.L868)/2
 784 01d4 F711     		.2byte	(.L865-.L868)/2
 785 01d6 F711     		.2byte	(.L865-.L868)/2
 786 01d8 F711     		.2byte	(.L865-.L868)/2
 787 01da F711     		.2byte	(.L865-.L868)/2
 788 01dc F711     		.2byte	(.L865-.L868)/2
 789 01de F711     		.2byte	(.L865-.L868)/2
 790 01e0 F711     		.2byte	(.L865-.L868)/2
 791 01e2 F711     		.2byte	(.L865-.L868)/2
 792 01e4 F711     		.2byte	(.L865-.L868)/2
 793 01e6 F711     		.2byte	(.L865-.L868)/2
 794 01e8 F711     		.2byte	(.L865-.L868)/2
 795 01ea F711     		.2byte	(.L865-.L868)/2
 796 01ec A90B     		.2byte	(.L372-.L868)/2
 797 01ee A90B     		.2byte	(.L372-.L868)/2
 798 01f0 F711     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 15


 799 01f2 F711     		.2byte	(.L865-.L868)/2
 800 01f4 F711     		.2byte	(.L865-.L868)/2
 801 01f6 F711     		.2byte	(.L865-.L868)/2
 802 01f8 F711     		.2byte	(.L865-.L868)/2
 803 01fa F711     		.2byte	(.L865-.L868)/2
 804 01fc F711     		.2byte	(.L865-.L868)/2
 805 01fe F711     		.2byte	(.L865-.L868)/2
 806 0200 F711     		.2byte	(.L865-.L868)/2
 807 0202 E00B     		.2byte	(.L869-.L868)/2
 808 0204 F711     		.2byte	(.L865-.L868)/2
 809 0206 8A09     		.2byte	(.L870-.L868)/2
 810 0208 B809     		.2byte	(.L408-.L868)/2
 811 020a F711     		.2byte	(.L865-.L868)/2
 812 020c DE09     		.2byte	(.L411-.L868)/2
 813 020e E509     		.2byte	(.L412-.L868)/2
 814 0210 2E08     		.2byte	(.L431-.L868)/2
 815 0212 F711     		.2byte	(.L865-.L868)/2
 816 0214 F411     		.2byte	(.L1006-.L868)/2
 817 0216 F711     		.2byte	(.L865-.L868)/2
 818 0218 F711     		.2byte	(.L865-.L868)/2
 819 021a F711     		.2byte	(.L865-.L868)/2
 820 021c F711     		.2byte	(.L865-.L868)/2
 821 021e F711     		.2byte	(.L865-.L868)/2
 822 0220 F711     		.2byte	(.L865-.L868)/2
 823 0222 F711     		.2byte	(.L865-.L868)/2
 824 0224 F711     		.2byte	(.L865-.L868)/2
 825 0226 F711     		.2byte	(.L865-.L868)/2
 826 0228 0A0C     		.2byte	(.L443-.L868)/2
 827 022a 660C     		.2byte	(.L454-.L868)/2
 828 022c F711     		.2byte	(.L865-.L868)/2
 829 022e F711     		.2byte	(.L865-.L868)/2
 830 0230 F711     		.2byte	(.L865-.L868)/2
 831 0232 F711     		.2byte	(.L865-.L868)/2
 832 0234 030B     		.2byte	(.L190-.L868)/2
 833 0236 F711     		.2byte	(.L865-.L868)/2
 834 0238 F711     		.2byte	(.L865-.L868)/2
 835 023a F711     		.2byte	(.L865-.L868)/2
 836 023c F711     		.2byte	(.L865-.L868)/2
 837 023e F711     		.2byte	(.L865-.L868)/2
 838 0240 F711     		.2byte	(.L865-.L868)/2
 839 0242 F711     		.2byte	(.L865-.L868)/2
 840 0244 F711     		.2byte	(.L865-.L868)/2
 841 0246 F711     		.2byte	(.L865-.L868)/2
 842 0248 F711     		.2byte	(.L865-.L868)/2
 843 024a F711     		.2byte	(.L865-.L868)/2
 844 024c F711     		.2byte	(.L865-.L868)/2
 845 024e F711     		.2byte	(.L865-.L868)/2
 846 0250 F711     		.2byte	(.L865-.L868)/2
 847 0252 F711     		.2byte	(.L865-.L868)/2
 848 0254 F711     		.2byte	(.L865-.L868)/2
 849 0256 F711     		.2byte	(.L865-.L868)/2
 850 0258 F711     		.2byte	(.L865-.L868)/2
 851 025a F711     		.2byte	(.L865-.L868)/2
 852 025c F711     		.2byte	(.L865-.L868)/2
 853 025e F711     		.2byte	(.L865-.L868)/2
 854 0260 F711     		.2byte	(.L865-.L868)/2
 855 0262 F711     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 16


 856 0264 F711     		.2byte	(.L865-.L868)/2
 857 0266 F711     		.2byte	(.L865-.L868)/2
 858 0268 F711     		.2byte	(.L865-.L868)/2
 859 026a F711     		.2byte	(.L865-.L868)/2
 860 026c F711     		.2byte	(.L865-.L868)/2
 861 026e F711     		.2byte	(.L865-.L868)/2
 862 0270 F711     		.2byte	(.L865-.L868)/2
 863 0272 F711     		.2byte	(.L865-.L868)/2
 864 0274 F711     		.2byte	(.L865-.L868)/2
 865 0276 F711     		.2byte	(.L865-.L868)/2
 866 0278 F711     		.2byte	(.L865-.L868)/2
 867 027a F711     		.2byte	(.L865-.L868)/2
 868 027c F711     		.2byte	(.L865-.L868)/2
 869 027e F711     		.2byte	(.L865-.L868)/2
 870 0280 F711     		.2byte	(.L865-.L868)/2
 871 0282 F711     		.2byte	(.L865-.L868)/2
 872 0284 F711     		.2byte	(.L865-.L868)/2
 873 0286 F711     		.2byte	(.L865-.L868)/2
 874 0288 F711     		.2byte	(.L865-.L868)/2
 875 028a F711     		.2byte	(.L865-.L868)/2
 876 028c F711     		.2byte	(.L865-.L868)/2
 877 028e F711     		.2byte	(.L865-.L868)/2
 878 0290 F711     		.2byte	(.L865-.L868)/2
 879 0292 F711     		.2byte	(.L865-.L868)/2
 880 0294 F711     		.2byte	(.L865-.L868)/2
 881 0296 F711     		.2byte	(.L865-.L868)/2
 882 0298 F711     		.2byte	(.L865-.L868)/2
 883 029a F711     		.2byte	(.L865-.L868)/2
 884 029c F711     		.2byte	(.L865-.L868)/2
 885 029e F711     		.2byte	(.L865-.L868)/2
 886 02a0 B310     		.2byte	(.L461-.L868)/2
 887 02a2 F711     		.2byte	(.L865-.L868)/2
 888 02a4 F711     		.2byte	(.L865-.L868)/2
 889 02a6 F711     		.2byte	(.L865-.L868)/2
 890 02a8 F711     		.2byte	(.L865-.L868)/2
 891 02aa F711     		.2byte	(.L865-.L868)/2
 892 02ac F711     		.2byte	(.L865-.L868)/2
 893 02ae F711     		.2byte	(.L865-.L868)/2
 894 02b0 F711     		.2byte	(.L865-.L868)/2
 895 02b2 F711     		.2byte	(.L865-.L868)/2
 896 02b4 A60D     		.2byte	(.L476-.L868)/2
 897 02b6 F711     		.2byte	(.L865-.L868)/2
 898 02b8 F711     		.2byte	(.L865-.L868)/2
 899 02ba F711     		.2byte	(.L865-.L868)/2
 900 02bc F711     		.2byte	(.L865-.L868)/2
 901 02be F711     		.2byte	(.L865-.L868)/2
 902 02c0 F711     		.2byte	(.L865-.L868)/2
 903 02c2 F711     		.2byte	(.L865-.L868)/2
 904 02c4 F711     		.2byte	(.L865-.L868)/2
 905 02c6 F711     		.2byte	(.L865-.L868)/2
 906 02c8 C10D     		.2byte	(.L479-.L868)/2
 907 02ca 3D12     		.2byte	(.L129-.L868)/2
 908 02cc DB0D     		.2byte	(.L482-.L868)/2
 909 02ce 000E     		.2byte	(.L485-.L868)/2
 910 02d0 CC06     		.2byte	(.L496-.L868)/2
 911 02d2 DB06     		.2byte	(.L497-.L868)/2
 912 02d4 F711     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 17


 913 02d6 3212     		.2byte	(.L130-.L868)/2
 914 02d8 F711     		.2byte	(.L865-.L868)/2
 915 02da F711     		.2byte	(.L865-.L868)/2
 916 02dc F711     		.2byte	(.L865-.L868)/2
 917 02de F711     		.2byte	(.L865-.L868)/2
 918 02e0 F711     		.2byte	(.L865-.L868)/2
 919 02e2 F711     		.2byte	(.L865-.L868)/2
 920 02e4 F711     		.2byte	(.L865-.L868)/2
 921 02e6 F711     		.2byte	(.L865-.L868)/2
 922 02e8 F711     		.2byte	(.L865-.L868)/2
 923 02ea F711     		.2byte	(.L865-.L868)/2
 924 02ec F711     		.2byte	(.L865-.L868)/2
 925 02ee F711     		.2byte	(.L865-.L868)/2
 926 02f0 F711     		.2byte	(.L865-.L868)/2
 927 02f2 F711     		.2byte	(.L865-.L868)/2
 928 02f4 F711     		.2byte	(.L865-.L868)/2
 929 02f6 F711     		.2byte	(.L865-.L868)/2
 930 02f8 F711     		.2byte	(.L865-.L868)/2
 931 02fa F711     		.2byte	(.L865-.L868)/2
 932 02fc F711     		.2byte	(.L865-.L868)/2
 933 02fe F711     		.2byte	(.L865-.L868)/2
 934 0300 F711     		.2byte	(.L865-.L868)/2
 935 0302 F711     		.2byte	(.L865-.L868)/2
 936 0304 F711     		.2byte	(.L865-.L868)/2
 937 0306 F711     		.2byte	(.L865-.L868)/2
 938 0308 F711     		.2byte	(.L865-.L868)/2
 939 030a F711     		.2byte	(.L865-.L868)/2
 940 030c F711     		.2byte	(.L865-.L868)/2
 941 030e F711     		.2byte	(.L865-.L868)/2
 942 0310 F711     		.2byte	(.L865-.L868)/2
 943 0312 F711     		.2byte	(.L865-.L868)/2
 944 0314 F711     		.2byte	(.L865-.L868)/2
 945 0316 F711     		.2byte	(.L865-.L868)/2
 946 0318 F711     		.2byte	(.L865-.L868)/2
 947 031a F711     		.2byte	(.L865-.L868)/2
 948 031c F711     		.2byte	(.L865-.L868)/2
 949 031e F711     		.2byte	(.L865-.L868)/2
 950 0320 F711     		.2byte	(.L865-.L868)/2
 951 0322 F711     		.2byte	(.L865-.L868)/2
 952 0324 F711     		.2byte	(.L865-.L868)/2
 953 0326 F711     		.2byte	(.L865-.L868)/2
 954 0328 F711     		.2byte	(.L865-.L868)/2
 955 032a F711     		.2byte	(.L865-.L868)/2
 956 032c E306     		.2byte	(.L506-.L868)/2
 957 032e F711     		.2byte	(.L865-.L868)/2
 958 0330 F711     		.2byte	(.L865-.L868)/2
 959 0332 F711     		.2byte	(.L865-.L868)/2
 960 0334 F711     		.2byte	(.L865-.L868)/2
 961 0336 F711     		.2byte	(.L865-.L868)/2
 962 0338 F711     		.2byte	(.L865-.L868)/2
 963 033a F711     		.2byte	(.L865-.L868)/2
 964 033c F711     		.2byte	(.L865-.L868)/2
 965 033e F711     		.2byte	(.L865-.L868)/2
 966 0340 F711     		.2byte	(.L865-.L868)/2
 967 0342 F711     		.2byte	(.L865-.L868)/2
 968 0344 F711     		.2byte	(.L865-.L868)/2
 969 0346 F711     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 18


 970 0348 F711     		.2byte	(.L865-.L868)/2
 971 034a F711     		.2byte	(.L865-.L868)/2
 972 034c F711     		.2byte	(.L865-.L868)/2
 973 034e F711     		.2byte	(.L865-.L868)/2
 974 0350 F711     		.2byte	(.L865-.L868)/2
 975 0352 F711     		.2byte	(.L865-.L868)/2
 976 0354 F711     		.2byte	(.L865-.L868)/2
 977 0356 F711     		.2byte	(.L865-.L868)/2
 978 0358 F711     		.2byte	(.L865-.L868)/2
 979 035a F711     		.2byte	(.L865-.L868)/2
 980 035c 3F07     		.2byte	(.L531-.L868)/2
 981 035e 990B     		.2byte	(.L532-.L868)/2
 982 0360 8710     		.2byte	(.L533-.L868)/2
 983 0362 F711     		.2byte	(.L865-.L868)/2
 984 0364 F711     		.2byte	(.L865-.L868)/2
 985 0366 F711     		.2byte	(.L865-.L868)/2
 986 0368 F711     		.2byte	(.L865-.L868)/2
 987 036a F711     		.2byte	(.L865-.L868)/2
 988 036c F711     		.2byte	(.L865-.L868)/2
 989 036e F711     		.2byte	(.L865-.L868)/2
 990 0370 F711     		.2byte	(.L865-.L868)/2
 991 0372 F711     		.2byte	(.L865-.L868)/2
 992 0374 F711     		.2byte	(.L865-.L868)/2
 993 0376 F711     		.2byte	(.L865-.L868)/2
 994 0378 F711     		.2byte	(.L865-.L868)/2
 995 037a F711     		.2byte	(.L865-.L868)/2
 996 037c F711     		.2byte	(.L865-.L868)/2
 997 037e F711     		.2byte	(.L865-.L868)/2
 998 0380 F711     		.2byte	(.L865-.L868)/2
 999 0382 F711     		.2byte	(.L865-.L868)/2
 1000 0384 F711     		.2byte	(.L865-.L868)/2
 1001 0386 F711     		.2byte	(.L865-.L868)/2
 1002 0388 F711     		.2byte	(.L865-.L868)/2
 1003 038a F711     		.2byte	(.L865-.L868)/2
 1004 038c F711     		.2byte	(.L865-.L868)/2
 1005 038e F711     		.2byte	(.L865-.L868)/2
 1006 0390 1F0F     		.2byte	(.L537-.L868)/2
 1007 0392 9F10     		.2byte	(.L538-.L868)/2
 1008 0394 4F09     		.2byte	(.L539-.L868)/2
 1009 0396 F711     		.2byte	(.L865-.L868)/2
 1010 0398 7511     		.2byte	(.L540-.L868)/2
 1011 039a F711     		.2byte	(.L865-.L868)/2
 1012 039c F711     		.2byte	(.L865-.L868)/2
 1013 039e F711     		.2byte	(.L865-.L868)/2
 1014 03a0 AE0F     		.2byte	(.L543-.L868)/2
 1015 03a2 F711     		.2byte	(.L865-.L868)/2
 1016 03a4 F711     		.2byte	(.L865-.L868)/2
 1017 03a6 F711     		.2byte	(.L865-.L868)/2
 1018 03a8 F711     		.2byte	(.L865-.L868)/2
 1019 03aa F711     		.2byte	(.L865-.L868)/2
 1020 03ac F711     		.2byte	(.L865-.L868)/2
 1021 03ae F711     		.2byte	(.L865-.L868)/2
 1022 03b0 F711     		.2byte	(.L865-.L868)/2
 1023 03b2 F711     		.2byte	(.L865-.L868)/2
 1024 03b4 F711     		.2byte	(.L865-.L868)/2
 1025 03b6 F711     		.2byte	(.L865-.L868)/2
 1026 03b8 F711     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 19


 1027 03ba F711     		.2byte	(.L865-.L868)/2
 1028 03bc F711     		.2byte	(.L865-.L868)/2
 1029 03be F711     		.2byte	(.L865-.L868)/2
 1030 03c0 F711     		.2byte	(.L865-.L868)/2
 1031 03c2 F711     		.2byte	(.L865-.L868)/2
 1032 03c4 F711     		.2byte	(.L865-.L868)/2
 1033 03c6 F711     		.2byte	(.L865-.L868)/2
 1034 03c8 F711     		.2byte	(.L865-.L868)/2
 1035 03ca F711     		.2byte	(.L865-.L868)/2
 1036 03cc F711     		.2byte	(.L865-.L868)/2
 1037 03ce F711     		.2byte	(.L865-.L868)/2
 1038 03d0 F711     		.2byte	(.L865-.L868)/2
 1039 03d2 F711     		.2byte	(.L865-.L868)/2
 1040 03d4 F711     		.2byte	(.L865-.L868)/2
 1041 03d6 F711     		.2byte	(.L865-.L868)/2
 1042 03d8 F711     		.2byte	(.L865-.L868)/2
 1043 03da F711     		.2byte	(.L865-.L868)/2
 1044 03dc F711     		.2byte	(.L865-.L868)/2
 1045 03de F711     		.2byte	(.L865-.L868)/2
 1046 03e0 F711     		.2byte	(.L865-.L868)/2
 1047 03e2 F711     		.2byte	(.L865-.L868)/2
 1048 03e4 F711     		.2byte	(.L865-.L868)/2
 1049 03e6 F711     		.2byte	(.L865-.L868)/2
 1050 03e8 F711     		.2byte	(.L865-.L868)/2
 1051 03ea F711     		.2byte	(.L865-.L868)/2
 1052 03ec F711     		.2byte	(.L865-.L868)/2
 1053 03ee F711     		.2byte	(.L865-.L868)/2
 1054 03f0 F711     		.2byte	(.L865-.L868)/2
 1055 03f2 F711     		.2byte	(.L865-.L868)/2
 1056 03f4 F711     		.2byte	(.L865-.L868)/2
 1057 03f6 F711     		.2byte	(.L865-.L868)/2
 1058 03f8 F711     		.2byte	(.L865-.L868)/2
 1059 03fa F711     		.2byte	(.L865-.L868)/2
 1060 03fc F711     		.2byte	(.L865-.L868)/2
 1061 03fe F711     		.2byte	(.L865-.L868)/2
 1062 0400 F711     		.2byte	(.L865-.L868)/2
 1063 0402 F711     		.2byte	(.L865-.L868)/2
 1064 0404 F711     		.2byte	(.L865-.L868)/2
 1065 0406 F711     		.2byte	(.L865-.L868)/2
 1066 0408 F711     		.2byte	(.L865-.L868)/2
 1067 040a F711     		.2byte	(.L865-.L868)/2
 1068 040c F711     		.2byte	(.L865-.L868)/2
 1069 040e F711     		.2byte	(.L865-.L868)/2
 1070 0410 F711     		.2byte	(.L865-.L868)/2
 1071 0412 F711     		.2byte	(.L865-.L868)/2
 1072 0414 F711     		.2byte	(.L865-.L868)/2
 1073 0416 F711     		.2byte	(.L865-.L868)/2
 1074 0418 F711     		.2byte	(.L865-.L868)/2
 1075 041a F711     		.2byte	(.L865-.L868)/2
 1076 041c F711     		.2byte	(.L865-.L868)/2
 1077 041e F711     		.2byte	(.L865-.L868)/2
 1078 0420 F711     		.2byte	(.L865-.L868)/2
 1079 0422 F711     		.2byte	(.L865-.L868)/2
 1080 0424 F711     		.2byte	(.L865-.L868)/2
 1081 0426 F711     		.2byte	(.L865-.L868)/2
 1082 0428 F711     		.2byte	(.L865-.L868)/2
 1083 042a F711     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 20


 1084 042c F711     		.2byte	(.L865-.L868)/2
 1085 042e F711     		.2byte	(.L865-.L868)/2
 1086 0430 F711     		.2byte	(.L865-.L868)/2
 1087 0432 F711     		.2byte	(.L865-.L868)/2
 1088 0434 F711     		.2byte	(.L865-.L868)/2
 1089 0436 F711     		.2byte	(.L865-.L868)/2
 1090 0438 F711     		.2byte	(.L865-.L868)/2
 1091 043a F711     		.2byte	(.L865-.L868)/2
 1092 043c F711     		.2byte	(.L865-.L868)/2
 1093 043e F711     		.2byte	(.L865-.L868)/2
 1094 0440 F711     		.2byte	(.L865-.L868)/2
 1095 0442 F711     		.2byte	(.L865-.L868)/2
 1096 0444 F711     		.2byte	(.L865-.L868)/2
 1097 0446 F711     		.2byte	(.L865-.L868)/2
 1098 0448 F711     		.2byte	(.L865-.L868)/2
 1099 044a F711     		.2byte	(.L865-.L868)/2
 1100 044c F711     		.2byte	(.L865-.L868)/2
 1101 044e F711     		.2byte	(.L865-.L868)/2
 1102 0450 F711     		.2byte	(.L865-.L868)/2
 1103 0452 F711     		.2byte	(.L865-.L868)/2
 1104 0454 F711     		.2byte	(.L865-.L868)/2
 1105 0456 F711     		.2byte	(.L865-.L868)/2
 1106 0458 9E11     		.2byte	(.L550-.L868)/2
 1107 045a 5F0E     		.2byte	(.L551-.L868)/2
 1108 045c 5E11     		.2byte	(.L552-.L868)/2
 1109 045e 0811     		.2byte	(.L553-.L868)/2
 1110 0460 F711     		.2byte	(.L865-.L868)/2
 1111 0462 F711     		.2byte	(.L865-.L868)/2
 1112 0464 F711     		.2byte	(.L865-.L868)/2
 1113 0466 F711     		.2byte	(.L865-.L868)/2
 1114 0468 F711     		.2byte	(.L865-.L868)/2
 1115 046a F711     		.2byte	(.L865-.L868)/2
 1116 046c F711     		.2byte	(.L865-.L868)/2
 1117 046e F711     		.2byte	(.L865-.L868)/2
 1118 0470 F711     		.2byte	(.L865-.L868)/2
 1119 0472 F711     		.2byte	(.L865-.L868)/2
 1120 0474 F711     		.2byte	(.L865-.L868)/2
 1121 0476 F711     		.2byte	(.L865-.L868)/2
 1122 0478 F711     		.2byte	(.L865-.L868)/2
 1123 047a F711     		.2byte	(.L865-.L868)/2
 1124 047c F711     		.2byte	(.L865-.L868)/2
 1125 047e F711     		.2byte	(.L865-.L868)/2
 1126 0480 F711     		.2byte	(.L865-.L868)/2
 1127 0482 F711     		.2byte	(.L865-.L868)/2
 1128 0484 F711     		.2byte	(.L865-.L868)/2
 1129 0486 F711     		.2byte	(.L865-.L868)/2
 1130 0488 F711     		.2byte	(.L865-.L868)/2
 1131 048a F711     		.2byte	(.L865-.L868)/2
 1132 048c F711     		.2byte	(.L865-.L868)/2
 1133 048e F711     		.2byte	(.L865-.L868)/2
 1134 0490 F711     		.2byte	(.L865-.L868)/2
 1135 0492 F711     		.2byte	(.L865-.L868)/2
 1136 0494 F711     		.2byte	(.L865-.L868)/2
 1137 0496 F711     		.2byte	(.L865-.L868)/2
 1138 0498 F711     		.2byte	(.L865-.L868)/2
 1139 049a F711     		.2byte	(.L865-.L868)/2
 1140 049c F711     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 21


 1141 049e F711     		.2byte	(.L865-.L868)/2
 1142 04a0 F711     		.2byte	(.L865-.L868)/2
 1143 04a2 F711     		.2byte	(.L865-.L868)/2
 1144 04a4 F711     		.2byte	(.L865-.L868)/2
 1145 04a6 F711     		.2byte	(.L865-.L868)/2
 1146 04a8 4E11     		.2byte	(.L559-.L868)/2
 1147 04aa F711     		.2byte	(.L865-.L868)/2
 1148 04ac F711     		.2byte	(.L865-.L868)/2
 1149 04ae F711     		.2byte	(.L865-.L868)/2
 1150 04b0 F711     		.2byte	(.L865-.L868)/2
 1151 04b2 F711     		.2byte	(.L865-.L868)/2
 1152 04b4 F711     		.2byte	(.L865-.L868)/2
 1153 04b6 F711     		.2byte	(.L865-.L868)/2
 1154 04b8 F711     		.2byte	(.L865-.L868)/2
 1155 04ba F711     		.2byte	(.L865-.L868)/2
 1156 04bc 6106     		.2byte	(.L561-.L868)/2
 1157 04be 7306     		.2byte	(.L563-.L868)/2
 1158 04c0 7D06     		.2byte	(.L565-.L868)/2
 1159 04c2 8E0E     		.2byte	(.L571-.L868)/2
 1160 04c4 770B     		.2byte	(.L573-.L868)/2
 1161 04c6 6F0F     		.2byte	(.L575-.L868)/2
 1162 04c8 2A0F     		.2byte	(.L584-.L868)/2
 1163 04ca 3804     		.2byte	(.L589-.L868)/2
 1164 04cc 0C04     		.2byte	(.L131-.L868)/2
 1165 04ce F908     		.2byte	(.L607-.L868)/2
 1166 04d0 1309     		.2byte	(.L610-.L868)/2
 1167 04d2 420E     		.2byte	(.L613-.L868)/2
 1168 04d4 4A0E     		.2byte	(.L614-.L868)/2
 1169 04d6 390E     		.2byte	(.L616-.L868)/2
 1170 04d8 090F     		.2byte	(.L617-.L868)/2
 1171 04da F711     		.2byte	(.L865-.L868)/2
 1172 04dc A80E     		.2byte	(.L871-.L868)/2
 1173 04de D60E     		.2byte	(.L634-.L868)/2
 1174 04e0 F307     		.2byte	(.L642-.L868)/2
 1175 04e2 1D08     		.2byte	(.L646-.L868)/2
 1176 04e4 3B0A     		.2byte	(.L658-.L868)/2
 1177 04e6 720A     		.2byte	(.L664-.L868)/2
 1178 04e8 100A     		.2byte	(.L669-.L868)/2
 1179 04ea 1B0A     		.2byte	(.L673-.L868)/2
 1180 04ec 740D     		.2byte	(.L675-.L868)/2
 1181 04ee 6A0E     		.2byte	(.L688-.L868)/2
 1182 04f0 F711     		.2byte	(.L865-.L868)/2
 1183 04f2 7805     		.2byte	(.L696-.L868)/2
 1184 04f4 F711     		.2byte	(.L865-.L868)/2
 1185 04f6 8A05     		.2byte	(.L711-.L868)/2
 1186 04f8 F711     		.2byte	(.L865-.L868)/2
 1187 04fa AF05     		.2byte	(.L719-.L868)/2
 1188 04fc AF05     		.2byte	(.L719-.L868)/2
 1189 04fe F711     		.2byte	(.L865-.L868)/2
 1190 0500 B905     		.2byte	(.L743-.L868)/2
 1191 0502 F711     		.2byte	(.L865-.L868)/2
 1192 0504 5705     		.2byte	(.L776-.L868)/2
 1193 0506 F711     		.2byte	(.L865-.L868)/2
 1194 0508 F711     		.2byte	(.L865-.L868)/2
 1195 050a F711     		.2byte	(.L865-.L868)/2
 1196 050c F711     		.2byte	(.L865-.L868)/2
 1197 050e F711     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 22


 1198 0510 F711     		.2byte	(.L865-.L868)/2
 1199 0512 F711     		.2byte	(.L865-.L868)/2
 1200 0514 F711     		.2byte	(.L865-.L868)/2
 1201 0516 F711     		.2byte	(.L865-.L868)/2
 1202 0518 F711     		.2byte	(.L865-.L868)/2
 1203 051a F711     		.2byte	(.L865-.L868)/2
 1204 051c F711     		.2byte	(.L865-.L868)/2
 1205 051e F711     		.2byte	(.L865-.L868)/2
 1206 0520 F711     		.2byte	(.L865-.L868)/2
 1207 0522 F711     		.2byte	(.L865-.L868)/2
 1208 0524 F711     		.2byte	(.L865-.L868)/2
 1209 0526 F711     		.2byte	(.L865-.L868)/2
 1210 0528 F711     		.2byte	(.L865-.L868)/2
 1211 052a F711     		.2byte	(.L865-.L868)/2
 1212 052c F711     		.2byte	(.L865-.L868)/2
 1213 052e F711     		.2byte	(.L865-.L868)/2
 1214 0530 F711     		.2byte	(.L865-.L868)/2
 1215 0532 F711     		.2byte	(.L865-.L868)/2
 1216 0534 F711     		.2byte	(.L865-.L868)/2
 1217 0536 F711     		.2byte	(.L865-.L868)/2
 1218 0538 F711     		.2byte	(.L865-.L868)/2
 1219 053a F711     		.2byte	(.L865-.L868)/2
 1220 053c F711     		.2byte	(.L865-.L868)/2
 1221 053e F711     		.2byte	(.L865-.L868)/2
 1222 0540 F711     		.2byte	(.L865-.L868)/2
 1223 0542 F711     		.2byte	(.L865-.L868)/2
 1224 0544 F711     		.2byte	(.L865-.L868)/2
 1225 0546 F711     		.2byte	(.L865-.L868)/2
 1226 0548 F711     		.2byte	(.L865-.L868)/2
 1227 054a F711     		.2byte	(.L865-.L868)/2
 1228 054c F711     		.2byte	(.L865-.L868)/2
 1229 054e F711     		.2byte	(.L865-.L868)/2
 1230 0550 F711     		.2byte	(.L865-.L868)/2
 1231 0552 F711     		.2byte	(.L865-.L868)/2
 1232 0554 F711     		.2byte	(.L865-.L868)/2
 1233 0556 F711     		.2byte	(.L865-.L868)/2
 1234 0558 F711     		.2byte	(.L865-.L868)/2
 1235 055a F711     		.2byte	(.L865-.L868)/2
 1236 055c F711     		.2byte	(.L865-.L868)/2
 1237 055e F711     		.2byte	(.L865-.L868)/2
 1238 0560 F711     		.2byte	(.L865-.L868)/2
 1239 0562 F711     		.2byte	(.L865-.L868)/2
 1240 0564 F711     		.2byte	(.L865-.L868)/2
 1241 0566 F711     		.2byte	(.L865-.L868)/2
 1242 0568 F711     		.2byte	(.L865-.L868)/2
 1243 056a F711     		.2byte	(.L865-.L868)/2
 1244 056c F711     		.2byte	(.L865-.L868)/2
 1245 056e F711     		.2byte	(.L865-.L868)/2
 1246 0570 F711     		.2byte	(.L865-.L868)/2
 1247 0572 F711     		.2byte	(.L865-.L868)/2
 1248 0574 F711     		.2byte	(.L865-.L868)/2
 1249 0576 F711     		.2byte	(.L865-.L868)/2
 1250 0578 F711     		.2byte	(.L865-.L868)/2
 1251 057a F711     		.2byte	(.L865-.L868)/2
 1252 057c F711     		.2byte	(.L865-.L868)/2
 1253 057e F711     		.2byte	(.L865-.L868)/2
 1254 0580 F711     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 23


 1255 0582 F711     		.2byte	(.L865-.L868)/2
 1256 0584 F711     		.2byte	(.L865-.L868)/2
 1257 0586 F711     		.2byte	(.L865-.L868)/2
 1258 0588 F711     		.2byte	(.L865-.L868)/2
 1259 058a F711     		.2byte	(.L865-.L868)/2
 1260 058c F711     		.2byte	(.L865-.L868)/2
 1261 058e F711     		.2byte	(.L865-.L868)/2
 1262 0590 F711     		.2byte	(.L865-.L868)/2
 1263 0592 F711     		.2byte	(.L865-.L868)/2
 1264 0594 F711     		.2byte	(.L865-.L868)/2
 1265 0596 F711     		.2byte	(.L865-.L868)/2
 1266 0598 F711     		.2byte	(.L865-.L868)/2
 1267 059a F711     		.2byte	(.L865-.L868)/2
 1268 059c F711     		.2byte	(.L865-.L868)/2
 1269 059e F711     		.2byte	(.L865-.L868)/2
 1270 05a0 F711     		.2byte	(.L865-.L868)/2
 1271 05a2 4712     		.2byte	(.L132-.L868)/2
 1272 05a4 D412     		.2byte	(.L133-.L868)/2
 1273 05a6 6F05     		.2byte	(.L802-.L868)/2
 1274 05a8 F711     		.2byte	(.L865-.L868)/2
 1275 05aa F711     		.2byte	(.L865-.L868)/2
 1276 05ac F711     		.2byte	(.L865-.L868)/2
 1277 05ae F711     		.2byte	(.L865-.L868)/2
 1278 05b0 F711     		.2byte	(.L865-.L868)/2
 1279 05b2 F711     		.2byte	(.L865-.L868)/2
 1280 05b4 F711     		.2byte	(.L865-.L868)/2
 1281 05b6 F711     		.2byte	(.L865-.L868)/2
 1282 05b8 F711     		.2byte	(.L865-.L868)/2
 1283 05ba F711     		.2byte	(.L865-.L868)/2
 1284 05bc F711     		.2byte	(.L865-.L868)/2
 1285 05be F711     		.2byte	(.L865-.L868)/2
 1286 05c0 F711     		.2byte	(.L865-.L868)/2
 1287 05c2 F711     		.2byte	(.L865-.L868)/2
 1288 05c4 F711     		.2byte	(.L865-.L868)/2
 1289 05c6 F711     		.2byte	(.L865-.L868)/2
 1290 05c8 F711     		.2byte	(.L865-.L868)/2
 1291 05ca F711     		.2byte	(.L865-.L868)/2
 1292 05cc F711     		.2byte	(.L865-.L868)/2
 1293 05ce F711     		.2byte	(.L865-.L868)/2
 1294 05d0 F711     		.2byte	(.L865-.L868)/2
 1295 05d2 F711     		.2byte	(.L865-.L868)/2
 1296 05d4 F711     		.2byte	(.L865-.L868)/2
 1297 05d6 F711     		.2byte	(.L865-.L868)/2
 1298 05d8 F711     		.2byte	(.L865-.L868)/2
 1299 05da F711     		.2byte	(.L865-.L868)/2
 1300 05dc F711     		.2byte	(.L865-.L868)/2
 1301 05de F711     		.2byte	(.L865-.L868)/2
 1302 05e0 F711     		.2byte	(.L865-.L868)/2
 1303 05e2 F711     		.2byte	(.L865-.L868)/2
 1304 05e4 F711     		.2byte	(.L865-.L868)/2
 1305 05e6 F711     		.2byte	(.L865-.L868)/2
 1306 05e8 F711     		.2byte	(.L865-.L868)/2
 1307 05ea F711     		.2byte	(.L865-.L868)/2
 1308 05ec F711     		.2byte	(.L865-.L868)/2
 1309 05ee F711     		.2byte	(.L865-.L868)/2
 1310 05f0 F711     		.2byte	(.L865-.L868)/2
 1311 05f2 F711     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 24


 1312 05f4 F711     		.2byte	(.L865-.L868)/2
 1313 05f6 F711     		.2byte	(.L865-.L868)/2
 1314 05f8 F711     		.2byte	(.L865-.L868)/2
 1315 05fa F711     		.2byte	(.L865-.L868)/2
 1316 05fc F711     		.2byte	(.L865-.L868)/2
 1317 05fe F711     		.2byte	(.L865-.L868)/2
 1318 0600 F711     		.2byte	(.L865-.L868)/2
 1319 0602 F711     		.2byte	(.L865-.L868)/2
 1320 0604 F711     		.2byte	(.L865-.L868)/2
 1321 0606 F711     		.2byte	(.L865-.L868)/2
 1322 0608 F711     		.2byte	(.L865-.L868)/2
 1323 060a F711     		.2byte	(.L865-.L868)/2
 1324 060c F711     		.2byte	(.L865-.L868)/2
 1325 060e F711     		.2byte	(.L865-.L868)/2
 1326 0610 F711     		.2byte	(.L865-.L868)/2
 1327 0612 F711     		.2byte	(.L865-.L868)/2
 1328 0614 F711     		.2byte	(.L865-.L868)/2
 1329 0616 F711     		.2byte	(.L865-.L868)/2
 1330 0618 F711     		.2byte	(.L865-.L868)/2
 1331 061a F711     		.2byte	(.L865-.L868)/2
 1332 061c F711     		.2byte	(.L865-.L868)/2
 1333 061e F711     		.2byte	(.L865-.L868)/2
 1334 0620 F711     		.2byte	(.L865-.L868)/2
 1335 0622 F711     		.2byte	(.L865-.L868)/2
 1336 0624 F711     		.2byte	(.L865-.L868)/2
 1337 0626 F711     		.2byte	(.L865-.L868)/2
 1338 0628 F711     		.2byte	(.L865-.L868)/2
 1339 062a F711     		.2byte	(.L865-.L868)/2
 1340 062c F711     		.2byte	(.L865-.L868)/2
 1341 062e F711     		.2byte	(.L865-.L868)/2
 1342 0630 F711     		.2byte	(.L865-.L868)/2
 1343 0632 F711     		.2byte	(.L865-.L868)/2
 1344 0634 F711     		.2byte	(.L865-.L868)/2
 1345 0636 F711     		.2byte	(.L865-.L868)/2
 1346 0638 F711     		.2byte	(.L865-.L868)/2
 1347 063a F711     		.2byte	(.L865-.L868)/2
 1348 063c F711     		.2byte	(.L865-.L868)/2
 1349 063e F711     		.2byte	(.L865-.L868)/2
 1350 0640 F711     		.2byte	(.L865-.L868)/2
 1351 0642 F711     		.2byte	(.L865-.L868)/2
 1352 0644 F711     		.2byte	(.L865-.L868)/2
 1353 0646 F711     		.2byte	(.L865-.L868)/2
 1354 0648 F711     		.2byte	(.L865-.L868)/2
 1355 064a F711     		.2byte	(.L865-.L868)/2
 1356 064c F711     		.2byte	(.L865-.L868)/2
 1357 064e F711     		.2byte	(.L865-.L868)/2
 1358 0650 F711     		.2byte	(.L865-.L868)/2
 1359 0652 F711     		.2byte	(.L865-.L868)/2
 1360 0654 F711     		.2byte	(.L865-.L868)/2
 1361 0656 F711     		.2byte	(.L865-.L868)/2
 1362 0658 F711     		.2byte	(.L865-.L868)/2
 1363 065a F711     		.2byte	(.L865-.L868)/2
 1364 065c F711     		.2byte	(.L865-.L868)/2
 1365 065e F711     		.2byte	(.L865-.L868)/2
 1366 0660 F711     		.2byte	(.L865-.L868)/2
 1367 0662 F711     		.2byte	(.L865-.L868)/2
 1368 0664 F711     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 25


 1369 0666 F711     		.2byte	(.L865-.L868)/2
 1370 0668 F711     		.2byte	(.L865-.L868)/2
 1371 066a F711     		.2byte	(.L865-.L868)/2
 1372 066c F711     		.2byte	(.L865-.L868)/2
 1373 066e F711     		.2byte	(.L865-.L868)/2
 1374 0670 F711     		.2byte	(.L865-.L868)/2
 1375 0672 F711     		.2byte	(.L865-.L868)/2
 1376 0674 F711     		.2byte	(.L865-.L868)/2
 1377 0676 F711     		.2byte	(.L865-.L868)/2
 1378 0678 F711     		.2byte	(.L865-.L868)/2
 1379 067a F711     		.2byte	(.L865-.L868)/2
 1380 067c F711     		.2byte	(.L865-.L868)/2
 1381 067e F711     		.2byte	(.L865-.L868)/2
 1382 0680 F711     		.2byte	(.L865-.L868)/2
 1383 0682 F711     		.2byte	(.L865-.L868)/2
 1384 0684 F711     		.2byte	(.L865-.L868)/2
 1385 0686 F711     		.2byte	(.L865-.L868)/2
 1386 0688 F711     		.2byte	(.L865-.L868)/2
 1387 068a F711     		.2byte	(.L865-.L868)/2
 1388 068c F711     		.2byte	(.L865-.L868)/2
 1389 068e F711     		.2byte	(.L865-.L868)/2
 1390 0690 F711     		.2byte	(.L865-.L868)/2
 1391 0692 F711     		.2byte	(.L865-.L868)/2
 1392 0694 F711     		.2byte	(.L865-.L868)/2
 1393 0696 F711     		.2byte	(.L865-.L868)/2
 1394 0698 F711     		.2byte	(.L865-.L868)/2
 1395 069a F711     		.2byte	(.L865-.L868)/2
 1396 069c F711     		.2byte	(.L865-.L868)/2
 1397 069e F711     		.2byte	(.L865-.L868)/2
 1398 06a0 F711     		.2byte	(.L865-.L868)/2
 1399 06a2 F711     		.2byte	(.L865-.L868)/2
 1400 06a4 F711     		.2byte	(.L865-.L868)/2
 1401 06a6 F711     		.2byte	(.L865-.L868)/2
 1402 06a8 F711     		.2byte	(.L865-.L868)/2
 1403 06aa F711     		.2byte	(.L865-.L868)/2
 1404 06ac F711     		.2byte	(.L865-.L868)/2
 1405 06ae F711     		.2byte	(.L865-.L868)/2
 1406 06b0 F711     		.2byte	(.L865-.L868)/2
 1407 06b2 F711     		.2byte	(.L865-.L868)/2
 1408 06b4 F711     		.2byte	(.L865-.L868)/2
 1409 06b6 F711     		.2byte	(.L865-.L868)/2
 1410 06b8 F711     		.2byte	(.L865-.L868)/2
 1411 06ba F711     		.2byte	(.L865-.L868)/2
 1412 06bc F711     		.2byte	(.L865-.L868)/2
 1413 06be F711     		.2byte	(.L865-.L868)/2
 1414 06c0 F711     		.2byte	(.L865-.L868)/2
 1415 06c2 F711     		.2byte	(.L865-.L868)/2
 1416 06c4 F711     		.2byte	(.L865-.L868)/2
 1417 06c6 F711     		.2byte	(.L865-.L868)/2
 1418 06c8 F711     		.2byte	(.L865-.L868)/2
 1419 06ca F711     		.2byte	(.L865-.L868)/2
 1420 06cc F711     		.2byte	(.L865-.L868)/2
 1421 06ce F711     		.2byte	(.L865-.L868)/2
 1422 06d0 F711     		.2byte	(.L865-.L868)/2
 1423 06d2 F711     		.2byte	(.L865-.L868)/2
 1424 06d4 F711     		.2byte	(.L865-.L868)/2
 1425 06d6 F711     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 26


 1426 06d8 F711     		.2byte	(.L865-.L868)/2
 1427 06da F711     		.2byte	(.L865-.L868)/2
 1428 06dc F711     		.2byte	(.L865-.L868)/2
 1429 06de F711     		.2byte	(.L865-.L868)/2
 1430 06e0 F711     		.2byte	(.L865-.L868)/2
 1431 06e2 F711     		.2byte	(.L865-.L868)/2
 1432 06e4 F711     		.2byte	(.L865-.L868)/2
 1433 06e6 F711     		.2byte	(.L865-.L868)/2
 1434 06e8 F711     		.2byte	(.L865-.L868)/2
 1435 06ea F711     		.2byte	(.L865-.L868)/2
 1436 06ec F711     		.2byte	(.L865-.L868)/2
 1437 06ee F711     		.2byte	(.L865-.L868)/2
 1438 06f0 F711     		.2byte	(.L865-.L868)/2
 1439 06f2 F711     		.2byte	(.L865-.L868)/2
 1440 06f4 F711     		.2byte	(.L865-.L868)/2
 1441 06f6 F711     		.2byte	(.L865-.L868)/2
 1442 06f8 F711     		.2byte	(.L865-.L868)/2
 1443 06fa F711     		.2byte	(.L865-.L868)/2
 1444 06fc F711     		.2byte	(.L865-.L868)/2
 1445 06fe F711     		.2byte	(.L865-.L868)/2
 1446 0700 F711     		.2byte	(.L865-.L868)/2
 1447 0702 F711     		.2byte	(.L865-.L868)/2
 1448 0704 F711     		.2byte	(.L865-.L868)/2
 1449 0706 F711     		.2byte	(.L865-.L868)/2
 1450 0708 F711     		.2byte	(.L865-.L868)/2
 1451 070a F711     		.2byte	(.L865-.L868)/2
 1452 070c F711     		.2byte	(.L865-.L868)/2
 1453 070e F711     		.2byte	(.L865-.L868)/2
 1454 0710 F711     		.2byte	(.L865-.L868)/2
 1455 0712 F711     		.2byte	(.L865-.L868)/2
 1456 0714 F711     		.2byte	(.L865-.L868)/2
 1457 0716 F711     		.2byte	(.L865-.L868)/2
 1458 0718 F711     		.2byte	(.L865-.L868)/2
 1459 071a F711     		.2byte	(.L865-.L868)/2
 1460 071c F711     		.2byte	(.L865-.L868)/2
 1461 071e F711     		.2byte	(.L865-.L868)/2
 1462 0720 F711     		.2byte	(.L865-.L868)/2
 1463 0722 F711     		.2byte	(.L865-.L868)/2
 1464 0724 F711     		.2byte	(.L865-.L868)/2
 1465 0726 F711     		.2byte	(.L865-.L868)/2
 1466 0728 F711     		.2byte	(.L865-.L868)/2
 1467 072a F711     		.2byte	(.L865-.L868)/2
 1468 072c F711     		.2byte	(.L865-.L868)/2
 1469 072e F711     		.2byte	(.L865-.L868)/2
 1470 0730 F711     		.2byte	(.L865-.L868)/2
 1471 0732 F711     		.2byte	(.L865-.L868)/2
 1472 0734 F711     		.2byte	(.L865-.L868)/2
 1473 0736 F711     		.2byte	(.L865-.L868)/2
 1474 0738 F711     		.2byte	(.L865-.L868)/2
 1475 073a F711     		.2byte	(.L865-.L868)/2
 1476 073c F711     		.2byte	(.L865-.L868)/2
 1477 073e F711     		.2byte	(.L865-.L868)/2
 1478 0740 F711     		.2byte	(.L865-.L868)/2
 1479 0742 F711     		.2byte	(.L865-.L868)/2
 1480 0744 F711     		.2byte	(.L865-.L868)/2
 1481 0746 F711     		.2byte	(.L865-.L868)/2
 1482 0748 F711     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 27


 1483 074a F711     		.2byte	(.L865-.L868)/2
 1484 074c F711     		.2byte	(.L865-.L868)/2
 1485 074e F711     		.2byte	(.L865-.L868)/2
 1486 0750 F711     		.2byte	(.L865-.L868)/2
 1487 0752 F711     		.2byte	(.L865-.L868)/2
 1488 0754 F711     		.2byte	(.L865-.L868)/2
 1489 0756 F711     		.2byte	(.L865-.L868)/2
 1490 0758 F711     		.2byte	(.L865-.L868)/2
 1491 075a F711     		.2byte	(.L865-.L868)/2
 1492 075c F711     		.2byte	(.L865-.L868)/2
 1493 075e F711     		.2byte	(.L865-.L868)/2
 1494 0760 F711     		.2byte	(.L865-.L868)/2
 1495 0762 F711     		.2byte	(.L865-.L868)/2
 1496 0764 F711     		.2byte	(.L865-.L868)/2
 1497 0766 F711     		.2byte	(.L865-.L868)/2
 1498 0768 F711     		.2byte	(.L865-.L868)/2
 1499 076a F711     		.2byte	(.L865-.L868)/2
 1500 076c F711     		.2byte	(.L865-.L868)/2
 1501 076e F711     		.2byte	(.L865-.L868)/2
 1502 0770 F711     		.2byte	(.L865-.L868)/2
 1503 0772 F711     		.2byte	(.L865-.L868)/2
 1504 0774 F711     		.2byte	(.L865-.L868)/2
 1505 0776 F711     		.2byte	(.L865-.L868)/2
 1506 0778 F711     		.2byte	(.L865-.L868)/2
 1507 077a F711     		.2byte	(.L865-.L868)/2
 1508 077c F711     		.2byte	(.L865-.L868)/2
 1509 077e F711     		.2byte	(.L865-.L868)/2
 1510 0780 F711     		.2byte	(.L865-.L868)/2
 1511 0782 6708     		.2byte	(.L812-.L868)/2
 1512 0784 C011     		.2byte	(.L872-.L868)/2
 1513 0786 F711     		.2byte	(.L865-.L868)/2
 1514 0788 F711     		.2byte	(.L865-.L868)/2
 1515 078a F711     		.2byte	(.L865-.L868)/2
 1516 078c F711     		.2byte	(.L865-.L868)/2
 1517 078e AB10     		.2byte	(.L842-.L868)/2
 1518 0790 9C0F     		.2byte	(.L843-.L868)/2
 1519 0792 C011     		.2byte	(.L872-.L868)/2
 1520 0794 F711     		.2byte	(.L865-.L868)/2
 1521 0796 F711     		.2byte	(.L865-.L868)/2
 1522 0798 F711     		.2byte	(.L865-.L868)/2
 1523 079a F711     		.2byte	(.L865-.L868)/2
 1524 079c F711     		.2byte	(.L865-.L868)/2
 1525 079e F711     		.2byte	(.L865-.L868)/2
 1526 07a0 F711     		.2byte	(.L865-.L868)/2
 1527 07a2 F711     		.2byte	(.L865-.L868)/2
 1528 07a4 F711     		.2byte	(.L865-.L868)/2
 1529 07a6 F711     		.2byte	(.L865-.L868)/2
 1530 07a8 F711     		.2byte	(.L865-.L868)/2
 1531 07aa F711     		.2byte	(.L865-.L868)/2
 1532 07ac F711     		.2byte	(.L865-.L868)/2
 1533 07ae F711     		.2byte	(.L865-.L868)/2
 1534 07b0 F711     		.2byte	(.L865-.L868)/2
 1535 07b2 F711     		.2byte	(.L865-.L868)/2
 1536 07b4 F711     		.2byte	(.L865-.L868)/2
 1537 07b6 F711     		.2byte	(.L865-.L868)/2
 1538 07b8 F711     		.2byte	(.L865-.L868)/2
 1539 07ba F711     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 28


 1540 07bc F711     		.2byte	(.L865-.L868)/2
 1541 07be F711     		.2byte	(.L865-.L868)/2
 1542 07c0 F711     		.2byte	(.L865-.L868)/2
 1543 07c2 F711     		.2byte	(.L865-.L868)/2
 1544 07c4 F711     		.2byte	(.L865-.L868)/2
 1545 07c6 F711     		.2byte	(.L865-.L868)/2
 1546 07c8 F711     		.2byte	(.L865-.L868)/2
 1547 07ca F711     		.2byte	(.L865-.L868)/2
 1548 07cc F711     		.2byte	(.L865-.L868)/2
 1549 07ce F711     		.2byte	(.L865-.L868)/2
 1550 07d0 F711     		.2byte	(.L865-.L868)/2
 1551 07d2 F711     		.2byte	(.L865-.L868)/2
 1552 07d4 F711     		.2byte	(.L865-.L868)/2
 1553 07d6 F711     		.2byte	(.L865-.L868)/2
 1554 07d8 F711     		.2byte	(.L865-.L868)/2
 1555 07da F711     		.2byte	(.L865-.L868)/2
 1556 07dc F711     		.2byte	(.L865-.L868)/2
 1557 07de F711     		.2byte	(.L865-.L868)/2
 1558 07e0 F711     		.2byte	(.L865-.L868)/2
 1559 07e2 F711     		.2byte	(.L865-.L868)/2
 1560 07e4 F711     		.2byte	(.L865-.L868)/2
 1561 07e6 F711     		.2byte	(.L865-.L868)/2
 1562 07e8 F711     		.2byte	(.L865-.L868)/2
 1563 07ea F711     		.2byte	(.L865-.L868)/2
 1564 07ec F711     		.2byte	(.L865-.L868)/2
 1565 07ee F711     		.2byte	(.L865-.L868)/2
 1566 07f0 F711     		.2byte	(.L865-.L868)/2
 1567 07f2 F711     		.2byte	(.L865-.L868)/2
 1568 07f4 F711     		.2byte	(.L865-.L868)/2
 1569 07f6 F711     		.2byte	(.L865-.L868)/2
 1570 07f8 F711     		.2byte	(.L865-.L868)/2
 1571 07fa F711     		.2byte	(.L865-.L868)/2
 1572 07fc F711     		.2byte	(.L865-.L868)/2
 1573 07fe F711     		.2byte	(.L865-.L868)/2
 1574 0800 F711     		.2byte	(.L865-.L868)/2
 1575 0802 F711     		.2byte	(.L865-.L868)/2
 1576 0804 F711     		.2byte	(.L865-.L868)/2
 1577 0806 F711     		.2byte	(.L865-.L868)/2
 1578 0808 F711     		.2byte	(.L865-.L868)/2
 1579 080a F711     		.2byte	(.L865-.L868)/2
 1580 080c F711     		.2byte	(.L865-.L868)/2
 1581 080e F711     		.2byte	(.L865-.L868)/2
 1582 0810 F711     		.2byte	(.L865-.L868)/2
 1583 0812 F711     		.2byte	(.L865-.L868)/2
 1584 0814 F711     		.2byte	(.L865-.L868)/2
 1585 0816 F711     		.2byte	(.L865-.L868)/2
 1586 0818 F711     		.2byte	(.L865-.L868)/2
 1587 081a F711     		.2byte	(.L865-.L868)/2
 1588 081c F711     		.2byte	(.L865-.L868)/2
 1589 081e F711     		.2byte	(.L865-.L868)/2
 1590 0820 F711     		.2byte	(.L865-.L868)/2
 1591 0822 F711     		.2byte	(.L865-.L868)/2
 1592 0824 F711     		.2byte	(.L865-.L868)/2
 1593 0826 F711     		.2byte	(.L865-.L868)/2
 1594 0828 F711     		.2byte	(.L865-.L868)/2
 1595 082a F711     		.2byte	(.L865-.L868)/2
 1596 082c F711     		.2byte	(.L865-.L868)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 29


 1597 082e F711     		.2byte	(.L865-.L868)/2
 1598 0830 F711     		.2byte	(.L865-.L868)/2
 1599 0832 F711     		.2byte	(.L865-.L868)/2
 1600 0834 F711     		.2byte	(.L865-.L868)/2
 1601 0836 F711     		.2byte	(.L865-.L868)/2
 1602 0838 F711     		.2byte	(.L865-.L868)/2
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
 1613 0850 01F04B86 		beq	.L129
 1614 0854 40F23313 		movw	r3, #307
 1615 0858 9945     		cmp	r9, r3
 1616 085a 01F03B86 		beq	.L130
 1617 085e 40F22E23 		movw	r3, #558
 1618 0862 9945     		cmp	r9, r3
 1619 0864 10D0     		beq	.L131
 1620 0866 40F29923 		movw	r3, #665
 1621 086a 9945     		cmp	r9, r3
 1622 086c 01F04786 		beq	.L132
 1623 0870 40F29A23 		movw	r3, #666
 1624 0874 9945     		cmp	r9, r3
 1625 0876 01F0CF86 		beq	.L133
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
 1642 089e 03F08A86 		beq	.L970
 1643 08a2 9A46     		mov	r10, r3
 1644 08a4 B34F     		ldr	r7, .L1610
 1645 08a6 9B46     		mov	fp, r3
 1646 08a8 06E0     		b	.L595
 1647              	.L592:
 1648 08aa D5F8B031 		ldr	r3, [r5, #432]
 1649 08ae 0AF1010A 		add	r10, r10, #1
 1650 08b2 5345     		cmp	r3, r10
 1651 08b4 41F23887 		bls	.L1462
 1652              	.L595:
 1653 08b8 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 30


 1654 08ba 17F80A10 		ldrb	r1, [r7, r10]	@ zero_extendqisi2
 1655 08be FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1656 08c2 0028     		cmp	r0, #0
 1657 08c4 F1D0     		beq	.L592
 1658 08c6 2046     		mov	r0, r4
 1659 08c8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1660 08cc 0028     		cmp	r0, #0
 1661 08ce 42F37B83 		ble	.L593
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
 1672 08ea 02F0A182 		beq	.L590
 1673 08ee 3046     		mov	r0, r6
 1674 08f0 A149     		ldr	r1, .L1610+4
 1675 08f2 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 1676 08f6 A368     		ldr	r3, [r4, #8]
 1677 08f8 0027     		movs	r7, #0
 1678              	.L763:
 1679 08fa 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 1680 08fc 002B     		cmp	r3, #0
 1681 08fe 01F0C885 		beq	.L867
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
 1709 0942 02F25085 		bhi	.L1463
 1710 0946 2B68     		ldr	r3, [r5]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 31


 1711 0948 5701     		lsls	r7, r2, #5
 1712 094a 07F5E267 		add	r7, r7, #1808
 1713 094e 1F44     		add	r7, r7, r3
 1714 0950 3B7F     		ldrb	r3, [r7, #28]	@ zero_extendqisi2
 1715 0952 FF2B     		cmp	r3, #255
 1716 0954 03F0A984 		beq	.L1464
 1717 0958 2046     		mov	r0, r4
 1718 095a 4921     		movs	r1, #73
 1719 095c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1720 0960 0028     		cmp	r0, #0
 1721 0962 43F04E87 		bne	.L1465
 1722 0966 8046     		mov	r8, r0
 1723              	.L273:
 1724 0968 2046     		mov	r0, r4
 1725 096a 4621     		movs	r1, #70
 1726 096c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1727 0970 0028     		cmp	r0, #0
 1728 0972 43F03B87 		bne	.L1466
 1729              	.L275:
 1730 0976 2046     		mov	r0, r4
 1731 0978 5421     		movs	r1, #84
 1732 097a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1733 097e 0028     		cmp	r0, #0
 1734 0980 43F02C87 		bne	.L1467
 1735              	.L276:
 1736 0984 2046     		mov	r0, r4
 1737 0986 4221     		movs	r1, #66
 1738 0988 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1739 098c 0028     		cmp	r0, #0
 1740 098e 43F01A87 		bne	.L1468
 1741              	.L277:
 1742 0992 2046     		mov	r0, r4
 1743 0994 4C21     		movs	r1, #76
 1744 0996 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1745 099a 0028     		cmp	r0, #0
 1746 099c 43F07887 		bne	.L1469
 1747              	.L278:
 1748 09a0 2046     		mov	r0, r4
 1749 09a2 4821     		movs	r1, #72
 1750 09a4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1751 09a8 0028     		cmp	r0, #0
 1752 09aa 43F0B186 		bne	.L1470
 1753              	.L279:
 1754 09ae 2046     		mov	r0, r4
 1755 09b0 5321     		movs	r1, #83
 1756 09b2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1757 09b6 0028     		cmp	r0, #0
 1758 09b8 03F0B781 		beq	.L284
 1759 09bc 2046     		mov	r0, r4
 1760 09be FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1761 09c2 07EE900A 		fmsr	s15, r0
 1762 09c6 F4EE677A 		fcmps	s15, s15
 1763 09ca F1EE10FA 		fmstat
 1764 09ce 09D6     		bvs	.L285
 1765 09d0 9FED6A7A 		flds	s14, .L1610+8
 1766 09d4 F4EEC77A 		fcmpes	s15, s14
 1767 09d8 F1EE10FA 		fmstat
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 32


 1768 09dc 04F15D80 		bmi	.L286
 1769 09e0 F0EE477A 		fcpys	s15, s14
 1770              	.L285:
 1771 09e4 B8F1000F 		cmp	r8, #0
 1772 09e8 04D1     		bne	.L287
 1773 09ea 9DF84430 		ldrb	r3, [sp, #68]	@ zero_extendqisi2
 1774 09ee 002B     		cmp	r3, #0
 1775 09f0 04F02C82 		beq	.L288
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
 1808 0a3a 02F0C580 		beq	.L300
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
 1821 0a5a 02F06283 		beq	.L303
 1822 0a5e 2046     		mov	r0, r4
 1823 0a60 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1824 0a64 D4F88830 		ldr	r3, [r4, #136]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 33


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
 1835 0a7e 04F09E80 		beq	.L1471
 1836 0a82 3F4B     		ldr	r3, .L1610+12
 1837 0a84 5B6A     		ldr	r3, [r3, #36]
 1838 0a86 9F42     		cmp	r7, r3
 1839 0a88 03F05585 		beq	.L306
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
 1858 0ab4 43F03780 		bne	.L861
 1859 0ab8 0746     		mov	r7, r0
 1860 0aba A368     		ldr	r3, [r4, #8]
 1861 0abc 1DE7     		b	.L763
 1862              	.L307:
 1863 0abe 2046     		mov	r0, r4
 1864 0ac0 5321     		movs	r1, #83
 1865 0ac2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1866 0ac6 0746     		mov	r7, r0
 1867 0ac8 0028     		cmp	r0, #0
 1868 0aca 02F0C580 		beq	.L308
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
 1879 0aea 03F0CA81 		beq	.L309
 1880 0aee 2046     		mov	r0, r4
 1881 0af0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 34


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
 1914 0b3a 43F0D985 		bne	.L1472
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
 1928 0b58 42F05382 		bne	.L1473
 1929              	.L554:
 1930 0b5c 0027     		movs	r7, #0
 1931 0b5e 8DE6     		b	.L1420
 1932              	.L696:
 1933 0b60 2046     		mov	r0, r4
 1934 0b62 5321     		movs	r1, #83
 1935 0b64 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1936 0b68 0028     		cmp	r0, #0
 1937 0b6a 42F07E85 		bne	.L697
 1938 0b6e 0746     		mov	r7, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 35


 1939 0b70 A368     		ldr	r3, [r4, #8]
 1940 0b72 C2E6     		b	.L763
 1941              	.L1611:
 1942              		.align	2
 1943              	.L1610:
 1944 0b74 00000000 		.word	_ZN6GCodes11axisLettersE
 1945 0b78 BC0D0000 		.word	.LC128
 1946 0b7c 00007F43 		.word	1132396544
 1947 0b80 00000000 		.word	reprap
 1948              	.L711:
 1949 0b84 0DF1680A 		add	r10, sp, #104
 1950 0b88 D5F8B031 		ldr	r3, [r5, #432]
 1951 0b8c 4FF00008 		mov	r8, #0
 1952 0b90 8AF80080 		strb	r8, [r10]
 1953 0b94 002B     		cmp	r3, #0
 1954 0b96 02F0D187 		beq	.L717
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
 1970 0bc4 02F0BA87 		beq	.L717
 1971              	.L714:
 1972 0bc8 A368     		ldr	r3, [r4, #8]
 1973 0bca 0027     		movs	r7, #0
 1974 0bcc 95E6     		b	.L763
 1975              	.L719:
 1976 0bce 2046     		mov	r0, r4
 1977 0bd0 5421     		movs	r1, #84
 1978 0bd2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1979 0bd6 0028     		cmp	r0, #0
 1980 0bd8 42F0C385 		bne	.L720
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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 36


 1996              	.L744:
 1997 0bfe 08F10108 		add	r8, r8, #1
 1998 0c02 B8F1060F 		cmp	r8, #6
 1999 0c06 01F08B87 		beq	.L1474
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
 2017 0c36 01F0A187 		beq	.L752
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
 2032 0c5e 01F08D87 		beq	.L752
 2033 0c62 4FF00109 		mov	r9, #1
 2034              	.L751:
 2035 0c66 4FF0010A 		mov	r10, #1
 2036 0c6a C8E7     		b	.L744
 2037              	.L365:
 2038 0c6c 2046     		mov	r0, r4
 2039 0c6e 4821     		movs	r1, #72
 2040 0c70 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2041 0c74 0028     		cmp	r0, #0
 2042 0c76 42F05F86 		bne	.L1475
 2043 0c7a 4FF00108 		mov	r8, #1
 2044              	.L366:
 2045 0c7e 2046     		mov	r0, r4
 2046 0c80 5321     		movs	r1, #83
 2047 0c82 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2048 0c86 0746     		mov	r7, r0
 2049 0c88 0028     		cmp	r0, #0
 2050 0c8a 03F01181 		beq	.L367
 2051 0c8e 2046     		mov	r0, r4
 2052 0c90 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 37


 2053 0c94 07EE900A 		fmsr	s15, r0
 2054 0c98 BAEE047A 		fconsts	s14, #164
 2055 0c9c F4EEC77A 		fcmpes	s15, s14
 2056 0ca0 F1EE10FA 		fmstat
 2057 0ca4 07DD     		ble	.L368
 2058 0ca6 9FED707A 		flds	s14, .L1612+8
 2059 0caa F4EEC77A 		fcmpes	s15, s14
 2060 0cae F1EE10FA 		fmstat
 2061 0cb2 04F13381 		bmi	.L1476
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
 2074 0cce C2F27281 		blt	.L936
 2075 0cd2 FFF7FEFF 		bl	_ZN4Heat7StandbyEa
 2076 0cd6 0027     		movs	r7, #0
 2077 0cd8 A368     		ldr	r3, [r4, #8]
 2078 0cda 0EE6     		b	.L763
 2079              	.L200:
 2080 0cdc 644B     		ldr	r3, .L1612+16
 2081 0cde DB69     		ldr	r3, [r3, #28]
 2082 0ce0 1F7C     		ldrb	r7, [r3, #16]	@ zero_extendqisi2
 2083 0ce2 002F     		cmp	r7, #0
 2084 0ce4 01F0F887 		beq	.L201
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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 38


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
 2122 0d3e 02F08780 		beq	.L562
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
 2136 0d60 42F0D686 		bne	.L1477
 2137              	.L564:
 2138 0d64 A368     		ldr	r3, [r4, #8]
 2139 0d66 0027     		movs	r7, #0
 2140 0d68 C7E5     		b	.L763
 2141              	.L565:
 2142 0d6a 2046     		mov	r0, r4
 2143 0d6c 5021     		movs	r1, #80
 2144 0d6e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2145 0d72 0028     		cmp	r0, #0
 2146 0d74 42F0D483 		bne	.L1478
 2147 0d78 2046     		mov	r0, r4
 2148 0d7a 5321     		movs	r1, #83
 2149 0d7c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2150 0d80 8146     		mov	r9, r0
 2151 0d82 0028     		cmp	r0, #0
 2152 0d84 42F0BE83 		bne	.L907
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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 39


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
 2191 0df0 42F07287 		bne	.L223
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
 2208 0e12 C2F2D680 		blt	.L960
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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 40


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
 2235 0e52 03F07180 		beq	.L507
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
 2247 0e6c 54070000 		.word	.LC79
 2248 0e70 00000000 		.word	reprap
 2249 0e74 A4030000 		.word	.LC45
 2250 0e78 A4000000 		.word	.LC9
 2251 0e7c F8000000 		.word	.LC18
 2252 0e80 F0000000 		.word	.LC17
 2253 0e84 980C0000 		.word	.LC117
 2254              	.L508:
 2255 0e88 D5F8B031 		ldr	r3, [r5, #432]
 2256 0e8c 0BF1010B 		add	fp, fp, #1
 2257 0e90 5B45     		cmp	r3, fp
 2258 0e92 41F2BE85 		bls	.L1479
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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 41


 2281 0ed0 B34A     		ldr	r2, .L1614
 2282 0ed2 4346     		mov	r3, r8
 2283 0ed4 0EFA0BFC 		lsl	ip, lr, fp
 2284 0ed8 0028     		cmp	r0, #0
 2285 0eda 01F0E782 		beq	.L510
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
 2304 0f08 01F06986 		beq	.L313
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
 2319 0f2c 02F00E80 		beq	.L933
 2320 0f30 2046     		mov	r0, r4
 2321 0f32 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2322 0f36 95F8D633 		ldrb	r3, [r5, #982]	@ zero_extendqisi2
 2323 0f3a D4F88810 		ldr	r1, [r4, #136]
 2324 0f3e 002B     		cmp	r3, #0
 2325 0f40 03F03284 		beq	.L1480
 2326              	.L317:
 2327 0f44 0127     		movs	r7, #1
 2328              	.L316:
 2329 0f46 2046     		mov	r0, r4
 2330 0f48 4821     		movs	r1, #72
 2331 0f4a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2332 0f4e 0028     		cmp	r0, #0
 2333 0f50 01F04585 		beq	.L319
 2334 0f54 0DF14C08 		add	r8, sp, #76
 2335 0f58 0823     		movs	r3, #8
 2336 0f5a 4246     		mov	r2, r8
 2337 0f5c 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 42


 2338 0f5e 1AA9     		add	r1, sp, #104
 2339 0f60 C8F80030 		str	r3, [r8]
 2340 0f64 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 2341 0f68 95F8D633 		ldrb	r3, [r5, #982]	@ zero_extendqisi2
 2342 0f6c 002B     		cmp	r3, #0
 2343 0f6e 42F0D080 		bne	.L323
 2344 0f72 D8F80020 		ldr	r2, [r8]
 2345 0f76 002A     		cmp	r2, #0
 2346 0f78 02F0CB80 		beq	.L323
 2347 0f7c DFF824A2 		ldr	r10, .L1614+4
 2348 0f80 9946     		mov	r9, r3
 2349 0f82 0DF1640B 		add	fp, sp, #100
 2350 0f86 04E0     		b	.L325
 2351              	.L324:
 2352 0f88 D8F80030 		ldr	r3, [r8]
 2353 0f8c 4B45     		cmp	r3, r9
 2354 0f8e 42F2C080 		bls	.L323
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
 2378 0fc8 42F03583 		bne	.L340
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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 43


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
 2451 1076 03F09A86 		beq	.L1481
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 44


 2452 107a 2046     		mov	r0, r4
 2453 107c 5321     		movs	r1, #83
 2454 107e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2455 1082 8646     		mov	lr, r0
 2456 1084 0028     		cmp	r0, #0
 2457 1086 43F03687 		bne	.L1482
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
 2481 10c2 43F2C285 		bls	.L647
 2482              	.L674:
 2483 10c6 A368     		ldr	r3, [r4, #8]
 2484 10c8 0027     		movs	r7, #0
 2485 10ca 16E4     		b	.L763
 2486              	.L431:
 2487 10cc 2046     		mov	r0, r4
 2488 10ce 5321     		movs	r1, #83
 2489 10d0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2490 10d4 0028     		cmp	r0, #0
 2491 10d6 42F07A82 		bne	.L1483
 2492 10da 8246     		mov	r10, r0
 2493              	.L432:
 2494 10dc D5F8B031 		ldr	r3, [r5, #432]
 2495 10e0 002B     		cmp	r3, #0
 2496 10e2 02F03F82 		beq	.L440
 2497 10e6 4FF00008 		mov	r8, #0
 2498 10ea 304F     		ldr	r7, .L1614+12
 2499 10ec C146     		mov	r9, r8
 2500 10ee 06E0     		b	.L439
 2501              	.L436:
 2502 10f0 D5F8B031 		ldr	r3, [r5, #432]
 2503 10f4 08F10108 		add	r8, r8, #1
 2504 10f8 4345     		cmp	r3, r8
 2505 10fa 41F2D883 		bls	.L1484
 2506              	.L439:
 2507 10fe 2046     		mov	r0, r4
 2508 1100 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 45


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
 2520 112a 01F0C883 		beq	.L437
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
 2537 1158 41F08485 		bne	.L1485
 2538 115c 2046     		mov	r0, r4
 2539 115e 5321     		movs	r1, #83
 2540 1160 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2541 1164 0028     		cmp	r0, #0
 2542 1166 41F09A85 		bne	.L910
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
 2561 1194 03F05486 		beq	.L1486
 2562              	.L819:
 2563 1198 A368     		ldr	r3, [r4, #8]
 2564 119a 0027     		movs	r7, #0
 2565 119c FFF7ADBB 		b	.L763
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 46


 2566              	.L1615:
 2567              		.align	2
 2568              	.L1614:
 2569 11a0 300B0000 		.word	.LC103
 2570 11a4 00000000 		.word	reprap
 2571 11a8 28060000 		.word	.LC68
 2572 11ac 00000000 		.word	_ZN6GCodes11axisLettersE
 2573 11b0 40060000 		.word	.LC70
 2574 11b4 34060000 		.word	.LC69
 2575 11b8 F0000000 		.word	.LC17
 2576 11bc F8000000 		.word	.LC18
 2577 11c0 540F0000 		.word	.LC139
 2578 11c4 3C140000 		.word	.LC174
 2579              	.L345:
 2580 11c8 2046     		mov	r0, r4
 2581 11ca 4821     		movs	r1, #72
 2582 11cc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2583 11d0 0028     		cmp	r0, #0
 2584 11d2 42F01283 		bne	.L1487
 2585 11d6 DFF86CA3 		ldr	r10, .L1616+44
 2586 11da DAF80C30 		ldr	r3, [r10, #12]
 2587 11de 93F92E80 		ldrsb	r8, [r3, #46]
 2588 11e2 B8F1000F 		cmp	r8, #0
 2589 11e6 C3F20685 		blt	.L1488
 2590              	.L349:
 2591 11ea 2046     		mov	r0, r4
 2592 11ec 5321     		movs	r1, #83
 2593 11ee FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2594 11f2 0028     		cmp	r0, #0
 2595 11f4 42F06287 		bne	.L1489
 2596              	.L350:
 2597 11f8 2046     		mov	r0, r4
 2598 11fa 5221     		movs	r1, #82
 2599 11fc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2600 1200 0028     		cmp	r0, #0
 2601 1202 42F04D87 		bne	.L353
 2602 1206 0746     		mov	r7, r0
 2603 1208 A368     		ldr	r3, [r4, #8]
 2604 120a FFF776BB 		b	.L763
 2605              	.L342:
 2606 120e 2046     		mov	r0, r4
 2607 1210 5321     		movs	r1, #83
 2608 1212 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2609 1216 0028     		cmp	r0, #0
 2610 1218 01F07385 		beq	.L343
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
 2622 1242 43F3CC81 		ble	.L1490
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 47


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
 2637 126c 42F07481 		bne	.L1491
 2638 1270 AA4F     		ldr	r7, .L1616+4
 2639              	.L608:
 2640 1272 AB4A     		ldr	r2, .L1616+8
 2641 1274 2846     		mov	r0, r5
 2642 1276 2146     		mov	r1, r4
 2643 1278 3B46     		mov	r3, r7
 2644 127a FFF7FEFF 		bl	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_
 2645 127e 3A46     		mov	r2, r7
 2646 1280 0028     		cmp	r0, #0
 2647 1282 01F0C784 		beq	.L609
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
 2659 12a0 42F09B80 		bne	.L1492
 2660 12a4 A04F     		ldr	r7, .L1616+16
 2661              	.L611:
 2662 12a6 A14A     		ldr	r2, .L1616+20
 2663 12a8 2846     		mov	r0, r5
 2664 12aa 2146     		mov	r1, r4
 2665 12ac 3B46     		mov	r3, r7
 2666 12ae FFF7FEFF 		bl	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_
 2667 12b2 3A46     		mov	r2, r7
 2668 12b4 0028     		cmp	r0, #0
 2669 12b6 01F07686 		beq	.L612
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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 48


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
 2700 1302 42F09380 		bne	.L1493
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
 2722 1334 42F08D80 		bne	.L1494
 2723 1338 5321     		movs	r1, #83
 2724 133a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2725 133e 8146     		mov	r9, r0
 2726 1340 0028     		cmp	r0, #0
 2727 1342 01F0F784 		beq	.L1495
 2728              	.L897:
 2729 1346 DFF8FC91 		ldr	r9, .L1616+44
 2730 134a D9F80C30 		ldr	r3, [r9, #12]
 2731 134e 93F92F80 		ldrsb	r8, [r3, #47]
 2732 1352 B8F1FF3F 		cmp	r8, #-1
 2733 1356 03F0F580 		beq	.L360
 2734 135a 2046     		mov	r0, r4
 2735 135c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2736 1360 9FED747A 		flds	s14, .L1616+28
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 49


 2737 1364 07EE900A 		fmsr	s15, r0
 2738 1368 F4EEC77A 		fcmpes	s15, s14
 2739 136c F1EE10FA 		fmstat
 2740 1370 D9F80C00 		ldr	r0, [r9, #12]
 2741 1374 4146     		mov	r1, r8
 2742 1376 43F14380 		bpl	.L1427
 2743 137a FFF7FEFF 		bl	_ZN4Heat9SwitchOffEa
 2744              	.L363:
 2745 137e A368     		ldr	r3, [r4, #8]
 2746 1380 FFF7BBBA 		b	.L763
 2747              	.L870:
 2748 1384 D5F8B031 		ldr	r3, [r5, #432]
 2749 1388 002B     		cmp	r3, #0
 2750 138a 02F04C82 		beq	.L877
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
 2761 13a8 41F27182 		bls	.L1496
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
 2784 13ea 42F00581 		bne	.L1497
 2785 13ee 2046     		mov	r0, r4
 2786 13f0 5421     		movs	r1, #84
 2787 13f2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2788 13f6 0746     		mov	r7, r0
 2789 13f8 0028     		cmp	r0, #0
 2790 13fa 42F0F380 		bne	.L902
 2791 13fe D5F800A0 		ldr	r10, [r5]
 2792 1402 DAF84001 		ldr	r0, [r10, #320]	@ float
 2793 1406 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 50


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
 2818 1444 41F09487 		bne	.L1498
 2819 1448 0746     		mov	r7, r0
 2820              	.L413:
 2821 144a 2046     		mov	r0, r4
 2822 144c 5221     		movs	r1, #82
 2823 144e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2824 1452 0028     		cmp	r0, #0
 2825 1454 41F07287 		bne	.L1499
 2826              	.L416:
 2827 1458 2046     		mov	r0, r4
 2828 145a 4621     		movs	r1, #70
 2829 145c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2830 1460 0028     		cmp	r0, #0
 2831 1462 41F04D87 		bne	.L1500
 2832              	.L419:
 2833 1466 2046     		mov	r0, r4
 2834 1468 5421     		movs	r1, #84
 2835 146a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2836 146e 0028     		cmp	r0, #0
 2837 1470 41F00D87 		bne	.L1501
 2838 1474 2046     		mov	r0, r4
 2839 1476 5A21     		movs	r1, #90
 2840 1478 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2841 147c 0028     		cmp	r0, #0
 2842 147e 41F02687 		bne	.L425
 2843 1482 002F     		cmp	r7, #0
 2844 1484 02F06782 		beq	.L430
 2845              	.L426:
 2846 1488 A368     		ldr	r3, [r4, #8]
 2847 148a 0027     		movs	r7, #0
 2848 148c FFF735BA 		b	.L763
 2849              	.L669:
 2850 1490 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 51


 2851 1492 4421     		movs	r1, #68
 2852 1494 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2853 1498 0028     		cmp	r0, #0
 2854 149a 42F09D83 		bne	.L670
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
 2889 14f4 01F09683 		beq	.L659
 2890 14f8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2891 14fc 0023     		movs	r3, #0
 2892 14fe 0728     		cmp	r0, #7
 2893 1500 0746     		mov	r7, r0
 2894 1502 8DF84830 		strb	r3, [sp, #72]
 2895 1506 43F29981 		bls	.L1502
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
 2905 1520 480C0000 		.word	.LC113
 2906 1524 D4030000 		.word	.LC47
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 52


 2907 1528 10010000 		.word	.LC20
 2908 152c AC0E0000 		.word	.LC133
 2909 1530 00000000 		.word	.LANCHOR4
 2910 1534 008088C3 		.word	-1014464512
 2911 1538 00000000 		.word	_ZN6GCodes11axisLettersE
 2912 153c 8988883C 		.word	1015580809
 2913 1540 D4070000 		.word	.LC85
 2914 1544 00000000 		.word	reprap
 2915 1548 34110000 		.word	.LC147
 2916 154c FCA9F1D2 		.word	-755914244
 2917 1550 4D62503F 		.word	1062232653
 2918              	.L664:
 2919 1554 2046     		mov	r0, r4
 2920 1556 5021     		movs	r1, #80
 2921 1558 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2922 155c 0028     		cmp	r0, #0
 2923 155e 01F00184 		beq	.L979
 2924 1562 2046     		mov	r0, r4
 2925 1564 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2926 1568 0146     		mov	r1, r0
 2927 156a 8046     		mov	r8, r0
 2928 156c 2868     		ldr	r0, [r5]
 2929 156e FFF7FEFF 		bl	_ZN8Platform28SetExtrusionAncilliaryPwmPinEi
 2930 1572 0746     		mov	r7, r0
 2931 1574 0028     		cmp	r0, #0
 2932 1576 02F0EC87 		beq	.L1503
 2933 157a 0127     		movs	r7, #1
 2934              	.L665:
 2935 157c 2046     		mov	r0, r4
 2936 157e 4621     		movs	r1, #70
 2937 1580 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2938 1584 0028     		cmp	r0, #0
 2939 1586 42F0CC84 		bne	.L1504
 2940              	.L666:
 2941 158a 2046     		mov	r0, r4
 2942 158c 5321     		movs	r1, #83
 2943 158e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2944 1592 0028     		cmp	r0, #0
 2945 1594 42F0BA84 		bne	.L1505
 2946 1598 002F     		cmp	r7, #0
 2947 159a 02F09B84 		beq	.L668
 2948 159e 0746     		mov	r7, r0
 2949 15a0 A368     		ldr	r3, [r4, #8]
 2950 15a2 FFF7AAB9 		b	.L763
 2951              	.L236:
 2952 15a6 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2953 15a8 D007     		lsls	r0, r2, #31
 2954 15aa 01F14E84 		bmi	.L927
 2955 15ae 0022     		movs	r2, #0
 2956 15b0 05F5E873 		add	r3, r5, #464
 2957 15b4 0727     		movs	r7, #7
 2958              	.L238:
 2959 15b6 013F     		subs	r7, r7, #1
 2960 15b8 43F8042B 		str	r2, [r3], #4	@ float
 2961 15bc FBD1     		bne	.L238
 2962 15be A368     		ldr	r3, [r4, #8]
 2963 15c0 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 53


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
 3005 162a 01F09082 		beq	.L915
 3006 162e 4FF00008 		mov	r8, #0
 3007 1632 BB4F     		ldr	r7, .L1618+8
 3008 1634 C146     		mov	r9, r8
 3009 1636 4FF0010A 		mov	r10, #1
 3010 163a 06E0     		b	.L145
 3011              	.L144:
 3012 163c D5F8B031 		ldr	r3, [r5, #432]
 3013 1640 08F10108 		add	r8, r8, #1
 3014 1644 4345     		cmp	r3, r8
 3015 1646 41F28382 		bls	.L143
 3016              	.L145:
 3017 164a 2046     		mov	r0, r4
 3018 164c 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 3019 1650 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3020 1654 0028     		cmp	r0, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 54


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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 55


 3078              	.L211:
 3079 16ec 2046     		mov	r0, r4
 3080 16ee 5321     		movs	r1, #83
 3081 16f0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3082 16f4 0746     		mov	r7, r0
 3083 16f6 0028     		cmp	r0, #0
 3084 16f8 42F08E82 		bne	.L1506
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
 3114 174c 03F0DE81 		beq	.L1507
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
 3127 176a 01F00984 		beq	.L574
 3128 176e 2846     		mov	r0, r5
 3129 1770 2146     		mov	r1, r4
 3130 1772 40F22A22 		movw	r2, #554
 3131 1776 FFF7FEFF 		bl	_ZN6GCodes18SetEthernetAddressER11GCodeBufferi
 3132 177a 0027     		movs	r7, #0
 3133 177c A368     		ldr	r3, [r4, #8]
 3134 177e FFF7BCB8 		b	.L763
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 56


 3135              	.L178:
 3136 1782 2B6C     		ldr	r3, [r5, #64]
 3137 1784 1868     		ldr	r0, [r3]
 3138 1786 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 3139 178a 8368     		ldr	r3, [r0, #8]
 3140 178c 002B     		cmp	r3, #0
 3141 178e 01F0CE84 		beq	.L179
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
 3170 17dc C1F2EE83 		blt	.L937
 3171 17e0 2046     		mov	r0, r4
 3172 17e2 5221     		movs	r1, #82
 3173 17e4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3174 17e8 8046     		mov	r8, r0
 3175 17ea 2046     		mov	r0, r4
 3176 17ec B8F1000F 		cmp	r8, #0
 3177 17f0 02F09082 		beq	.L375
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
 3191 181c 03F08B81 		beq	.L1508
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 57


 3192              	.L378:
 3193 1820 0027     		movs	r7, #0
 3194 1822 85F8D573 		strb	r7, [r5, #981]
 3195 1826 85F8D673 		strb	r7, [r5, #982]
 3196 182a A368     		ldr	r3, [r4, #8]
 3197 182c FFF765B8 		b	.L763
 3198              	.L869:
 3199 1830 D5F8B031 		ldr	r3, [r5, #432]
 3200 1834 002B     		cmp	r3, #0
 3201 1836 02F0C180 		beq	.L879
 3202 183a 4FF00008 		mov	r8, #0
 3203 183e C146     		mov	r9, r8
 3204 1840 374F     		ldr	r7, .L1618+8
 3205 1842 B246     		mov	r10, r6
 3206 1844 06E0     		b	.L880
 3207              	.L380:
 3208 1846 D5F8B031 		ldr	r3, [r5, #432]
 3209 184a 08F10108 		add	r8, r8, #1
 3210 184e 4345     		cmp	r3, r8
 3211 1850 41F23E80 		bls	.L1509
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
 3234 1890 01F05F83 		beq	.L444
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
 3248 18c2 43F33783 		ble	.L1432
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 58


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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 59


 3306 1960 C2F23383 		blt	.L1510
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
 3317 197a B74B     		ldr	r3, .L1620
 3318 197c D868     		ldr	r0, [r3, #12]
 3319 197e FFF7FEFF 		bl	_ZN4Heat12SwitchOffAllEv
 3320 1982 2846     		mov	r0, r5
 3321 1984 FFF7FEFF 		bl	_ZN6GCodes13DisableDrivesEv
 3322 1988 95F85C83 		ldrb	r8, [r5, #860]	@ zero_extendqisi2
 3323 198c B8F1000F 		cmp	r8, #0
 3324 1990 42F0A883 		bne	.L846
 3325 1994 2046     		mov	r0, r4
 3326 1996 5321     		movs	r1, #83
 3327 1998 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3328 199c 0028     		cmp	r0, #0
 3329 199e 43F07F82 		bne	.L1511
 3330 19a2 0120     		movs	r0, #1
 3331 19a4 85F85C03 		strb	r0, [r5, #860]
 3332              	.L856:
 3333 19a8 FFF7FEFF 		bl	_ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEh
 3334 19ac 0028     		cmp	r0, #0
 3335 19ae 43F0E884 		bne	.L857
 3336 19b2 85F85C03 		strb	r0, [r5, #860]
 3337 19b6 0746     		mov	r7, r0
 3338 19b8 A368     		ldr	r3, [r4, #8]
 3339 19ba FEF79EBF 		b	.L763
 3340              	.L259:
 3341 19be 2046     		mov	r0, r4
 3342 19c0 5021     		movs	r1, #80
 3343 19c2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3344 19c6 0028     		cmp	r0, #0
 3345 19c8 3FF414AA 		beq	.L260
 3346 19cc 2046     		mov	r0, r4
 3347 19ce FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 3348 19d2 0027     		movs	r7, #0
 3349 19d4 0246     		mov	r2, r0
 3350 19d6 0123     		movs	r3, #1
 3351 19d8 0097     		str	r7, [sp]
 3352 19da 2846     		mov	r0, r5
 3353 19dc 2146     		mov	r1, r4
 3354 19de FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 3355 19e2 A368     		ldr	r3, [r4, #8]
 3356 19e4 FEF789BF 		b	.L763
 3357              	.L239:
 3358 19e8 9B48     		ldr	r0, .L1620
 3359 19ea 8768     		ldr	r7, [r0, #8]
 3360 19ec FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 3361 19f0 0DF1680A 		add	r10, sp, #104
 3362 19f4 0346     		mov	r3, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 60


 3363 19f6 5146     		mov	r1, r10
 3364 19f8 3846     		mov	r0, r7
 3365 19fa 0022     		movs	r2, #0
 3366 19fc FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhm
 3367 1a00 D5F8B031 		ldr	r3, [r5, #432]
 3368 1a04 002B     		cmp	r3, #0
 3369 1a06 01F0C183 		beq	.L240
 3370 1a0a 4FF00008 		mov	r8, #0
 3371 1a0e 934F     		ldr	r7, .L1620+4
 3372 1a10 C346     		mov	fp, r8
 3373 1a12 B146     		mov	r9, r6
 3374 1a14 06E0     		b	.L244
 3375              	.L241:
 3376 1a16 D5F8B031 		ldr	r3, [r5, #432]
 3377 1a1a 08F10108 		add	r8, r8, #1
 3378 1a1e 4345     		cmp	r3, r8
 3379 1a20 41F20780 		bls	.L1512
 3380              	.L244:
 3381 1a24 2046     		mov	r0, r4
 3382 1a26 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 3383 1a2a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3384 1a2e 0028     		cmp	r0, #0
 3385 1a30 F1D0     		beq	.L241
 3386 1a32 2846     		mov	r0, r5
 3387 1a34 2146     		mov	r1, r4
 3388 1a36 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3389 1a3a 0028     		cmp	r0, #0
 3390 1a3c 3FF48EA8 		beq	.L554
 3391 1a40 2E68     		ldr	r6, [r5]
 3392 1a42 2046     		mov	r0, r4
 3393 1a44 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3394 1a48 06EB8806 		add	r6, r6, r8, lsl #2
 3395 1a4c 4FF0010B 		mov	fp, #1
 3396 1a50 C6F84801 		str	r0, [r6, #328]	@ float
 3397 1a54 DFE7     		b	.L241
 3398              	.L263:
 3399 1a56 2846     		mov	r0, r5
 3400 1a58 2146     		mov	r1, r4
 3401 1a5a FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 3402 1a5e 0028     		cmp	r0, #0
 3403 1a60 3FF47CA8 		beq	.L554
 3404 1a64 2846     		mov	r0, r5
 3405 1a66 2146     		mov	r1, r4
 3406 1a68 0122     		movs	r2, #1
 3407 1a6a FFF7FEFF 		bl	_ZN6GCodes15RetractFilamentER11GCodeBufferb
 3408 1a6e 8146     		mov	r9, r0
 3409              	.L1460:
 3410 1a70 0027     		movs	r7, #0
 3411 1a72 38E4     		b	.L175
 3412              	.L264:
 3413 1a74 2046     		mov	r0, r4
 3414 1a76 5321     		movs	r1, #83
 3415 1a78 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3416 1a7c 0028     		cmp	r0, #0
 3417 1a7e 42F08680 		bne	.L265
 3418 1a82 0746     		mov	r7, r0
 3419 1a84 A368     		ldr	r3, [r4, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 61


 3420 1a86 FEF738BF 		b	.L763
 3421              	.L191:
 3422 1a8a 95F8A170 		ldrb	r7, [r5, #161]	@ zero_extendqisi2
 3423 1a8e 002F     		cmp	r7, #0
 3424 1a90 42F09A80 		bne	.L1513
 3425 1a94 704B     		ldr	r3, .L1620
 3426 1a96 DB69     		ldr	r3, [r3, #28]
 3427 1a98 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 3428 1a9a 002B     		cmp	r3, #0
 3429 1a9c 41F0F782 		bne	.L193
 3430 1aa0 3046     		mov	r0, r6
 3431 1aa2 6F49     		ldr	r1, .L1620+8
 3432 1aa4 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3433 1aa8 0127     		movs	r7, #1
 3434 1aaa A368     		ldr	r3, [r4, #8]
 3435 1aac FEF725BF 		b	.L763
 3436              	.L261:
 3437 1ab0 2846     		mov	r0, r5
 3438 1ab2 2146     		mov	r1, r4
 3439 1ab4 FFF7FEFF 		bl	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer
 3440 1ab8 0027     		movs	r7, #0
 3441 1aba A368     		ldr	r3, [r4, #8]
 3442 1abc FEF71DBF 		b	.L763
 3443              	.L186:
 3444 1ac0 2846     		mov	r0, r5
 3445 1ac2 2146     		mov	r1, r4
 3446 1ac4 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3447 1ac8 0028     		cmp	r0, #0
 3448 1aca 3FF447A8 		beq	.L554
 3449 1ace 95F8A170 		ldrb	r7, [r5, #161]	@ zero_extendqisi2
 3450 1ad2 002F     		cmp	r7, #0
 3451 1ad4 42F09F84 		bne	.L1514
 3452 1ad8 D5F87432 		ldr	r3, [r5, #628]
 3453 1adc 002B     		cmp	r3, #0
 3454 1ade 03F03182 		beq	.L1515
 3455 1ae2 2B6C     		ldr	r3, [r5, #64]
 3456 1ae4 1868     		ldr	r0, [r3]
 3457 1ae6 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 3458 1aea 8046     		mov	r8, r0
 3459 1aec 8068     		ldr	r0, [r0, #8]
 3460 1aee 18B1     		cbz	r0, .L189
 3461 1af0 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 3462 1af4 C8F80870 		str	r7, [r8, #8]
 3463              	.L189:
 3464 1af8 D5F87432 		ldr	r3, [r5, #628]
 3465 1afc 564A     		ldr	r2, .L1620
 3466 1afe C8F80830 		str	r3, [r8, #8]
 3467 1b02 0027     		movs	r7, #0
 3468 1b04 D069     		ldr	r0, [r2, #28]
 3469 1b06 C5F87472 		str	r7, [r5, #628]
 3470 1b0a FFF7FEFF 		bl	_ZN12PrintMonitor12StartedPrintEv
 3471 1b0e A368     		ldr	r3, [r4, #8]
 3472 1b10 FEF7F3BE 		b	.L763
 3473              	.L194:
 3474 1b14 2046     		mov	r0, r4
 3475 1b16 5321     		movs	r1, #83
 3476 1b18 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 62


 3477 1b1c 0028     		cmp	r0, #0
 3478 1b1e 01F0A281 		beq	.L195
 3479 1b22 2046     		mov	r0, r4
 3480 1b24 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3481 1b28 2B6C     		ldr	r3, [r5, #64]
 3482 1b2a 8046     		mov	r8, r0
 3483 1b2c 1868     		ldr	r0, [r3]
 3484 1b2e FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 3485 1b32 8768     		ldr	r7, [r0, #8]
 3486 1b34 002F     		cmp	r7, #0
 3487 1b36 02F0F084 		beq	.L196
 3488 1b3a 2B6C     		ldr	r3, [r5, #64]
 3489 1b3c 1868     		ldr	r0, [r3]
 3490 1b3e FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 3491 1b42 4146     		mov	r1, r8
 3492 1b44 8068     		ldr	r0, [r0, #8]
 3493 1b46 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 3494 1b4a 0028     		cmp	r0, #0
 3495 1b4c 02F0D687 		beq	.L197
 3496 1b50 A368     		ldr	r3, [r4, #8]
 3497 1b52 0027     		movs	r7, #0
 3498 1b54 FEF7D1BE 		b	.L763
 3499              	.L675:
 3500 1b58 2046     		mov	r0, r4
 3501 1b5a 5321     		movs	r1, #83
 3502 1b5c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3503 1b60 0028     		cmp	r0, #0
 3504 1b62 41F0C584 		bne	.L1516
 3505 1b66 4FF0010A 		mov	r10, #1
 3506              	.L676:
 3507 1b6a D5F8B031 		ldr	r3, [r5, #432]
 3508 1b6e 002B     		cmp	r3, #0
 3509 1b70 01F08684 		beq	.L683
 3510 1b74 4FF00008 		mov	r8, #0
 3511 1b78 384F     		ldr	r7, .L1620+4
 3512 1b7a C146     		mov	r9, r8
 3513 1b7c 06E0     		b	.L682
 3514              	.L680:
 3515 1b7e D5F8B031 		ldr	r3, [r5, #432]
 3516 1b82 08F10108 		add	r8, r8, #1
 3517 1b86 4345     		cmp	r3, r8
 3518 1b88 40F2B286 		bls	.L1517
 3519              	.L682:
 3520 1b8c 2046     		mov	r0, r4
 3521 1b8e 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 3522 1b92 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3523 1b96 0028     		cmp	r0, #0
 3524 1b98 F1D0     		beq	.L680
 3525 1b9a 2046     		mov	r0, r4
 3526 1b9c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3527 1ba0 0328     		cmp	r0, #3
 3528 1ba2 ECD8     		bhi	.L680
 3529 1ba4 2B68     		ldr	r3, [r5]
 3530 1ba6 08F5AA71 		add	r1, r8, #340
 3531 1baa 03EB0802 		add	r2, r3, r8
 3532 1bae 43F82100 		str	r0, [r3, r1, lsl #2]
 3533 1bb2 4FF00109 		mov	r9, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 63


 3534 1bb6 82F868A5 		strb	r10, [r2, #1384]
 3535 1bba E0E7     		b	.L680
 3536              	.L476:
 3537 1bbc 2046     		mov	r0, r4
 3538 1bbe 5321     		movs	r1, #83
 3539 1bc0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3540 1bc4 0746     		mov	r7, r0
 3541 1bc6 0028     		cmp	r0, #0
 3542 1bc8 01F08D80 		beq	.L477
 3543 1bcc 2046     		mov	r0, r4
 3544 1bce FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3545 1bd2 07EE900A 		fmsr	s15, r0
 3546 1bd6 B7EE007A 		fconsts	s14, #112
 3547 1bda F0EEE76A 		fabss	s13, s15
 3548 1bde F4EEC76A 		fcmpes	s13, s14
 3549 1be2 F1EE10FA 		fmstat
 3550 1be6 42F2F084 		bls	.L478
 3551 1bea A368     		ldr	r3, [r4, #8]
 3552 1bec 0027     		movs	r7, #0
 3553 1bee FEF784BE 		b	.L763
 3554              	.L479:
 3555 1bf2 2046     		mov	r0, r4
 3556 1bf4 5021     		movs	r1, #80
 3557 1bf6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3558 1bfa 0028     		cmp	r0, #0
 3559 1bfc 41F0A684 		bne	.L1518
 3560 1c00 4FF47A77 		mov	r7, #1000
 3561              	.L480:
 3562 1c04 2046     		mov	r0, r4
 3563 1c06 5321     		movs	r1, #83
 3564 1c08 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3565 1c0c 0028     		cmp	r0, #0
 3566 1c0e 41F09784 		bne	.L1519
 3567 1c12 41F2F811 		movw	r1, #4600
 3568              	.L481:
 3569 1c16 3A46     		mov	r2, r7
 3570 1c18 0F48     		ldr	r0, .L1620
 3571 1c1a FFF7FEFF 		bl	_ZN6RepRap4BeepEii
 3572 1c1e 0027     		movs	r7, #0
 3573 1c20 A368     		ldr	r3, [r4, #8]
 3574 1c22 FEF76ABE 		b	.L763
 3575              	.L482:
 3576 1c26 2046     		mov	r0, r4
 3577 1c28 5021     		movs	r1, #80
 3578 1c2a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3579 1c2e 0A4B     		ldr	r3, .L1620
 3580 1c30 0746     		mov	r7, r0
 3581 1c32 0028     		cmp	r0, #0
 3582 1c34 41F05E87 		bne	.L1520
 3583 1c38 D968     		ldr	r1, [r3, #12]
 3584 1c3a 0A4A     		ldr	r2, .L1620+12
 3585 1c3c 91F82D00 		ldrb	r0, [r1, #45]	@ zero_extendqisi2
 3586 1c40 094B     		ldr	r3, .L1620+16
 3587 1c42 0A49     		ldr	r1, .L1620+20
 3588 1c44 0028     		cmp	r0, #0
 3589 1c46 18BF     		it	ne
 3590 1c48 1A46     		movne	r2, r3
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 64


 3591 1c4a 3046     		mov	r0, r6
 3592 1c4c FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 3593 1c50 A368     		ldr	r3, [r4, #8]
 3594 1c52 FEF752BE 		b	.L763
 3595              	.L1621:
 3596 1c56 00BF     		.align	2
 3597              	.L1620:
 3598 1c58 00000000 		.word	reprap
 3599 1c5c 00000000 		.word	_ZN6GCodes11axisLettersE
 3600 1c60 C0020000 		.word	.LC41
 3601 1c64 B0000000 		.word	.LC11
 3602 1c68 A8000000 		.word	.LC10
 3603 1c6c 64090000 		.word	.LC94
 3604              	.L485:
 3605 1c70 2046     		mov	r0, r4
 3606 1c72 4821     		movs	r1, #72
 3607 1c74 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3608 1c78 0746     		mov	r7, r0
 3609 1c7a 0028     		cmp	r0, #0
 3610 1c7c 01F0FB80 		beq	.L486
 3611 1c80 2046     		mov	r0, r4
 3612 1c82 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3613 1c86 5321     		movs	r1, #83
 3614 1c88 8046     		mov	r8, r0
 3615 1c8a 2046     		mov	r0, r4
 3616 1c8c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3617 1c90 0028     		cmp	r0, #0
 3618 1c92 42F07784 		bne	.L1521
 3619 1c96 B74B     		ldr	r3, .L1622
 3620 1c98 DB68     		ldr	r3, [r3, #12]
 3621 1c9a 93F92E20 		ldrsb	r2, [r3, #46]
 3622 1c9e 4245     		cmp	r2, r8
 3623 1ca0 02F09087 		beq	.L957
 3624 1ca4 93F92F30 		ldrsb	r3, [r3, #47]
 3625 1ca8 DFEDB38A 		flds	s17, .L1622+4
 3626 1cac DFEDB37A 		flds	s15, .L1622+8
 3627 1cb0 4345     		cmp	r3, r8
 3628 1cb2 08BF     		it	eq
 3629 1cb4 F0EE678A 		fcpyseq	s17, s15
 3630              	.L488:
 3631 1cb8 2046     		mov	r0, r4
 3632 1cba 5021     		movs	r1, #80
 3633 1cbc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3634 1cc0 0028     		cmp	r0, #0
 3635 1cc2 42F06684 		bne	.L1522
 3636 1cc6 B7EE008A 		fconsts	s16, #112
 3637              	.L489:
 3638 1cca B8F1070F 		cmp	r8, #7
 3639 1cce 42F2AF80 		bls	.L490
 3640 1cd2 3046     		mov	r0, r6
 3641 1cd4 AA49     		ldr	r1, .L1622+12
 3642 1cd6 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3643 1cda 0027     		movs	r7, #0
 3644 1cdc A368     		ldr	r3, [r4, #8]
 3645 1cde FEF70CBE 		b	.L763
 3646              	.L616:
 3647 1ce2 2846     		mov	r0, r5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 65


 3648 1ce4 2146     		mov	r1, r4
 3649 1ce6 3246     		mov	r2, r6
 3650 1ce8 FFF7FEFF 		bl	_ZN6GCodes10ManageToolER11GCodeBufferR9StringRef
 3651 1cec 0027     		movs	r7, #0
 3652 1cee A368     		ldr	r3, [r4, #8]
 3653 1cf0 FEF703BE 		b	.L763
 3654              	.L613:
 3655 1cf4 9F4B     		ldr	r3, .L1622
 3656 1cf6 9868     		ldr	r0, [r3, #8]
 3657 1cf8 FFF7FEFF 		bl	_ZN4Move20SetIdentityTransformEv
 3658 1cfc 0027     		movs	r7, #0
 3659 1cfe A368     		ldr	r3, [r4, #8]
 3660 1d00 FEF7FBBD 		b	.L763
 3661              	.L614:
 3662 1d04 2046     		mov	r0, r4
 3663 1d06 5021     		movs	r1, #80
 3664 1d08 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3665 1d0c 0028     		cmp	r0, #0
 3666 1d0e 3FF429A8 		beq	.L564
 3667 1d12 2046     		mov	r0, r4
 3668 1d14 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3669 1d18 0728     		cmp	r0, #7
 3670 1d1a 02F28285 		bhi	.L615
 3671 1d1e 41B2     		sxtb	r1, r0
 3672 1d20 9448     		ldr	r0, .L1622
 3673 1d22 FFF7FEFF 		bl	_ZN6RepRap21ClearTemperatureFaultEa
 3674 1d26 0027     		movs	r7, #0
 3675 1d28 A368     		ldr	r3, [r4, #8]
 3676 1d2a FEF7E6BD 		b	.L763
 3677              	.L551:
 3678 1d2e 0027     		movs	r7, #0
 3679 1d30 0123     		movs	r3, #1
 3680 1d32 0097     		str	r7, [sp]
 3681 1d34 2846     		mov	r0, r5
 3682 1d36 2146     		mov	r1, r4
 3683 1d38 924A     		ldr	r2, .L1622+16
 3684 1d3a FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 3685 1d3e A368     		ldr	r3, [r4, #8]
 3686 1d40 FEF7DBBD 		b	.L763
 3687              	.L688:
 3688 1d44 2046     		mov	r0, r4
 3689 1d46 5021     		movs	r1, #80
 3690 1d48 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3691 1d4c 0028     		cmp	r0, #0
 3692 1d4e 3FF409A8 		beq	.L564
 3693 1d52 2046     		mov	r0, r4
 3694 1d54 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3695 1d58 0128     		cmp	r0, #1
 3696 1d5a 8046     		mov	r8, r0
 3697 1d5c 3FF6B3A9 		bhi	.L674
 3698 1d60 2046     		mov	r0, r4
 3699 1d62 4221     		movs	r1, #66
 3700 1d64 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3701 1d68 0028     		cmp	r0, #0
 3702 1d6a 43F04284 		bne	.L1523
 3703 1d6e 0746     		mov	r7, r0
 3704              	.L689:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 66


 3705 1d70 2046     		mov	r0, r4
 3706 1d72 5321     		movs	r1, #83
 3707 1d74 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3708 1d78 0028     		cmp	r0, #0
 3709 1d7a 43F02384 		bne	.L1524
 3710 1d7e 002F     		cmp	r7, #0
 3711 1d80 03F04384 		beq	.L694
 3712 1d84 0746     		mov	r7, r0
 3713 1d86 A368     		ldr	r3, [r4, #8]
 3714 1d88 FEF7B7BD 		b	.L763
 3715              	.L571:
 3716 1d8c 2046     		mov	r0, r4
 3717 1d8e 5021     		movs	r1, #80
 3718 1d90 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3719 1d94 0746     		mov	r7, r0
 3720 1d96 0028     		cmp	r0, #0
 3721 1d98 01F01E80 		beq	.L572
 3722 1d9c 2846     		mov	r0, r5
 3723 1d9e 2146     		mov	r1, r4
 3724 1da0 40F22922 		movw	r2, #553
 3725 1da4 FFF7FEFF 		bl	_ZN6GCodes18SetEthernetAddressER11GCodeBufferi
 3726 1da8 0027     		movs	r7, #0
 3727 1daa A368     		ldr	r3, [r4, #8]
 3728 1dac FEF7A5BD 		b	.L763
 3729              	.L205:
 3730 1db0 3046     		mov	r0, r6
 3731 1db2 7549     		ldr	r1, .L1622+20
 3732 1db4 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3733 1db8 0027     		movs	r7, #0
 3734 1dba A368     		ldr	r3, [r4, #8]
 3735 1dbc FEF79DBD 		b	.L763
 3736              	.L871:
 3737 1dc0 D5F8B031 		ldr	r3, [r5, #432]
 3738 1dc4 002B     		cmp	r3, #0
 3739 1dc6 01F00F82 		beq	.L875
 3740 1dca 4FF00008 		mov	r8, #0
 3741 1dce C246     		mov	r10, r8
 3742 1dd0 6E4F     		ldr	r7, .L1622+24
 3743 1dd2 9FED6F8A 		flds	s16, .L1622+28
 3744 1dd6 B146     		mov	r9, r6
 3745 1dd8 06E0     		b	.L876
 3746              	.L620:
 3747 1dda D5F8B031 		ldr	r3, [r5, #432]
 3748 1dde 08F10108 		add	r8, r8, #1
 3749 1de2 4345     		cmp	r3, r8
 3750 1de4 40F29084 		bls	.L1525
 3751              	.L876:
 3752 1de8 2046     		mov	r0, r4
 3753 1dea 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 3754 1dee FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3755 1df2 0028     		cmp	r0, #0
 3756 1df4 F1D0     		beq	.L620
 3757 1df6 2046     		mov	r0, r4
 3758 1df8 2E68     		ldr	r6, [r5]
 3759 1dfa FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3760 1dfe D5ED9B7A 		flds	s15, [r5, #620]
 3761 1e02 06EE900A 		fmsr	s13, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 67


 3762 1e06 66EEA77A 		fmuls	s15, s13, s15
 3763 1e0a 06EB8803 		add	r3, r6, r8, lsl #2
 3764 1e0e 67EE887A 		fmuls	s15, s15, s16
 3765 1e12 4FF0010A 		mov	r10, #1
 3766 1e16 C3ED5C7A 		fsts	s15, [r3, #368]
 3767 1e1a DEE7     		b	.L620
 3768              	.L634:
 3769 1e1c 2046     		mov	r0, r4
 3770 1e1e 5021     		movs	r1, #80
 3771 1e20 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3772 1e24 0028     		cmp	r0, #0
 3773 1e26 3EF49DAF 		beq	.L564
 3774 1e2a 2046     		mov	r0, r4
 3775 1e2c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3776 1e30 4FFA80F9 		sxtb	r9, r0
 3777 1e34 4946     		mov	r1, r9
 3778 1e36 4F48     		ldr	r0, .L1622
 3779 1e38 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 3780 1e3c 0746     		mov	r7, r0
 3781 1e3e 0028     		cmp	r0, #0
 3782 1e40 02F07D87 		beq	.L1526
 3783 1e44 2046     		mov	r0, r4
 3784 1e46 4521     		movs	r1, #69
 3785 1e48 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3786 1e4c 8046     		mov	r8, r0
 3787 1e4e 0028     		cmp	r0, #0
 3788 1e50 02F07D86 		beq	.L636
 3789 1e54 3B6C     		ldr	r3, [r7, #64]
 3790 1e56 1393     		str	r3, [sp, #76]
 3791 1e58 13AA     		add	r2, sp, #76
 3792 1e5a 0023     		movs	r3, #0
 3793 1e5c 1AA9     		add	r1, sp, #104
 3794 1e5e 2046     		mov	r0, r4
 3795 1e60 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 3796 1e64 139A     		ldr	r2, [sp, #76]
 3797 1e66 3B6C     		ldr	r3, [r7, #64]
 3798 1e68 9A42     		cmp	r2, r3
 3799 1e6a 03F05B82 		beq	.L637
 3800 1e6e 3046     		mov	r0, r6
 3801 1e70 4849     		ldr	r1, .L1622+32
 3802 1e72 04F10C02 		add	r2, r4, #12
 3803 1e76 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 3804              	.L638:
 3805 1e7a A368     		ldr	r3, [r4, #8]
 3806 1e7c 0027     		movs	r7, #0
 3807 1e7e FEF73CBD 		b	.L763
 3808              	.L617:
 3809 1e82 2046     		mov	r0, r4
 3810 1e84 5321     		movs	r1, #83
 3811 1e86 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3812 1e8a 0746     		mov	r7, r0
 3813 1e8c 0028     		cmp	r0, #0
 3814 1e8e 41F0E083 		bne	.L1527
 3815 1e92 95F89602 		ldrb	r0, [r5, #662]	@ zero_extendqisi2
 3816 1e96 404B     		ldr	r3, .L1622+36
 3817 1e98 404A     		ldr	r2, .L1622+40
 3818 1e9a 4149     		ldr	r1, .L1622+44
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 68


 3819 1e9c 0028     		cmp	r0, #0
 3820 1e9e 18BF     		it	ne
 3821 1ea0 1A46     		movne	r2, r3
 3822 1ea2 3046     		mov	r0, r6
 3823 1ea4 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 3824 1ea8 A368     		ldr	r3, [r4, #8]
 3825 1eaa FEF726BD 		b	.L763
 3826              	.L537:
 3827 1eae 2846     		mov	r0, r5
 3828 1eb0 2146     		mov	r1, r4
 3829 1eb2 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3830 1eb6 0028     		cmp	r0, #0
 3831 1eb8 3EF450AE 		beq	.L554
 3832 1ebc A368     		ldr	r3, [r4, #8]
 3833 1ebe 0027     		movs	r7, #0
 3834 1ec0 FEF71BBD 		b	.L763
 3835              	.L584:
 3836 1ec4 2046     		mov	r0, r4
 3837 1ec6 5321     		movs	r1, #83
 3838 1ec8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3839 1ecc 0746     		mov	r7, r0
 3840 1ece 0028     		cmp	r0, #0
 3841 1ed0 01F01080 		beq	.L585
 3842 1ed4 2046     		mov	r0, r4
 3843 1ed6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3844 1eda 2C4F     		ldr	r7, .L1622+24
 3845 1edc DFF89490 		ldr	r9, .L1622
 3846 1ee0 08EE100A 		fmsr	s16, r0
 3847 1ee4 4FF00008 		mov	r8, #0
 3848              	.L588:
 3849 1ee8 2046     		mov	r0, r4
 3850 1eea 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 3851 1eee FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3852 1ef2 0028     		cmp	r0, #0
 3853 1ef4 41F07080 		bne	.L1528
 3854              	.L586:
 3855 1ef8 08F10108 		add	r8, r8, #1
 3856 1efc B8F1030F 		cmp	r8, #3
 3857 1f00 F2D1     		bne	.L588
 3858 1f02 A368     		ldr	r3, [r4, #8]
 3859 1f04 0027     		movs	r7, #0
 3860 1f06 FEF7F8BC 		b	.L763
 3861              	.L134:
 3862 1f0a 2846     		mov	r0, r5
 3863 1f0c 2146     		mov	r1, r4
 3864 1f0e FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3865 1f12 0028     		cmp	r0, #0
 3866 1f14 3EF422AE 		beq	.L554
 3867 1f18 95F8A170 		ldrb	r7, [r5, #161]	@ zero_extendqisi2
 3868 1f1c 2846     		mov	r0, r5
 3869 1f1e FFF7FEFF 		bl	_ZN6GCodes11CancelPrintEv
 3870 1f22 002F     		cmp	r7, #0
 3871 1f24 42F09B85 		bne	.L1529
 3872 1f28 B9F1000F 		cmp	r9, #0
 3873 1f2c 42F08B81 		bne	.L137
 3874              	.L139:
 3875 1f30 1C4A     		ldr	r2, .L1622+48
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 69


 3876 1f32 A368     		ldr	r3, [r4, #8]
 3877 1f34 1268     		ldr	r2, [r2]
 3878 1f36 1321     		movs	r1, #19
 3879 1f38 1974     		strb	r1, [r3, #16]
 3880              	.L881:
 3881 1f3a 0027     		movs	r7, #0
 3882 1f3c 3B46     		mov	r3, r7
 3883 1f3e 0097     		str	r7, [sp]
 3884 1f40 2846     		mov	r0, r5
 3885 1f42 2146     		mov	r1, r4
 3886 1f44 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 3887 1f48 A368     		ldr	r3, [r4, #8]
 3888 1f4a FEF7D6BC 		b	.L763
 3889              	.L575:
 3890 1f4e 2046     		mov	r0, r4
 3891 1f50 5021     		movs	r1, #80
 3892 1f52 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3893 1f56 0028     		cmp	r0, #0
 3894 1f58 00F00787 		beq	.L576
 3895 1f5c 2046     		mov	r0, r4
 3896 1f5e 2F68     		ldr	r7, [r5]
 3897 1f60 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3898 1f64 C1B2     		uxtb	r1, r0
 3899 1f66 3846     		mov	r0, r7
 3900 1f68 FFF7FEFF 		bl	_ZN8Platform12SetEmulatingE13Compatibility
 3901 1f6c 0027     		movs	r7, #0
 3902 1f6e A368     		ldr	r3, [r4, #8]
 3903 1f70 FEF7C3BC 		b	.L763
 3904              	.L1623:
 3905              		.align	2
 3906              	.L1622:
 3907 1f74 00000000 		.word	reprap
 3908 1f78 00004843 		.word	1128792064
 3909 1f7c 00004842 		.word	1112014848
 3910 1f80 9C090000 		.word	.LC95
 3911 1f84 340C0000 		.word	.LC112
 3912 1f88 08040000 		.word	.LC49
 3913 1f8c 00000000 		.word	_ZN6GCodes11axisLettersE
 3914 1f90 8988883C 		.word	1015580809
 3915 1f94 0C0F0000 		.word	.LC137
 3916 1f98 1C010000 		.word	.LC21
 3917 1f9c A4000000 		.word	.LC9
 3918 1fa0 CC0E0000 		.word	.LC135
 3919 1fa4 00000000 		.word	.LANCHOR7
 3920              	.L843:
 3921 1fa8 2046     		mov	r0, r4
 3922 1faa 5321     		movs	r1, #83
 3923 1fac FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3924 1fb0 0028     		cmp	r0, #0
 3925 1fb2 00F04186 		beq	.L844
 3926 1fb6 2F68     		ldr	r7, [r5]
 3927 1fb8 2046     		mov	r0, r4
 3928 1fba FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3929 1fbe 07F6B403 		addw	r3, r7, #2228
 3930 1fc2 0027     		movs	r7, #0
 3931 1fc4 1860     		str	r0, [r3]	@ float
 3932 1fc6 A368     		ldr	r3, [r4, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 70


 3933 1fc8 FEF797BC 		b	.L763
 3934              	.L543:
 3935 1fcc 2046     		mov	r0, r4
 3936 1fce 5321     		movs	r1, #83
 3937 1fd0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3938 1fd4 0028     		cmp	r0, #0
 3939 1fd6 41F0EF81 		bne	.L1530
 3940 1fda 0746     		mov	r7, r0
 3941              	.L544:
 3942 1fdc 2046     		mov	r0, r4
 3943 1fde 5221     		movs	r1, #82
 3944 1fe0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3945 1fe4 0028     		cmp	r0, #0
 3946 1fe6 41F0E181 		bne	.L1531
 3947 1fea 4FF0FF32 		mov	r2, #-1
 3948              	.L545:
 3949 1fee AB6C     		ldr	r3, [r5, #72]
 3950 1ff0 1968     		ldr	r1, [r3]
 3951 1ff2 A142     		cmp	r1, r4
 3952 1ff4 02F0BD82 		beq	.L546
 3953              	.L548:
 3954 1ff8 0223     		movs	r3, #2
 3955              	.L547:
 3956 1ffa 3946     		mov	r1, r7
 3957 1ffc 2846     		mov	r0, r5
 3958 1ffe FFF7FEFF 		bl	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource
 3959 2002 0746     		mov	r7, r0
 3960 2004 0028     		cmp	r0, #0
 3961 2006 00F0F987 		beq	.L1532
 3962 200a 2846     		mov	r0, r5
 3963 200c 2146     		mov	r1, r4
 3964 200e FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 3965 2012 3B46     		mov	r3, r7
 3966 2014 2846     		mov	r0, r5
 3967 2016 2146     		mov	r1, r4
 3968 2018 0022     		movs	r2, #0
 3969 201a FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer
 3970 201e 0127     		movs	r7, #1
 3971 2020 FEF72CBC 		b	.L1420
 3972              	.L173:
 3973 2024 2846     		mov	r0, r5
 3974 2026 2146     		mov	r1, r4
 3975 2028 FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 3976 202c 0028     		cmp	r0, #0
 3977 202e 3EF495AD 		beq	.L554
 3978 2032 2046     		mov	r0, r4
 3979 2034 5021     		movs	r1, #80
 3980 2036 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3981 203a 0028     		cmp	r0, #0
 3982 203c 42F02785 		bne	.L1533
 3983 2040 0146     		mov	r1, r0
 3984              	.L174:
 3985 2042 2B68     		ldr	r3, [r5]
 3986 2044 3246     		mov	r2, r6
 3987 2046 D3F83C08 		ldr	r0, [r3, #2108]
 3988 204a 0123     		movs	r3, #1
 3989 204c FFF7FEFF 		bl	_ZN11MassStorage5MountEjR9StringRefb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 71


 3990 2050 0027     		movs	r7, #0
 3991 2052 8146     		mov	r9, r0
 3992 2054 FFF747B9 		b	.L175
 3993              	.L176:
 3994 2058 2846     		mov	r0, r5
 3995 205a 2146     		mov	r1, r4
 3996 205c FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 3997 2060 0028     		cmp	r0, #0
 3998 2062 3EF47BAD 		beq	.L554
 3999 2066 2046     		mov	r0, r4
 4000 2068 5021     		movs	r1, #80
 4001 206a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4002 206e 0028     		cmp	r0, #0
 4003 2070 42F03E85 		bne	.L1534
 4004 2074 0146     		mov	r1, r0
 4005              	.L177:
 4006 2076 2B68     		ldr	r3, [r5]
 4007 2078 3246     		mov	r2, r6
 4008 207a D3F83C08 		ldr	r0, [r3, #2108]
 4009 207e FFF7FEFF 		bl	_ZN11MassStorage7UnmountEjR9StringRef
 4010 2082 0027     		movs	r7, #0
 4011 2084 8146     		mov	r9, r0
 4012 2086 FFF72EB9 		b	.L175
 4013              	.L157:
 4014 208a 2846     		mov	r0, r5
 4015 208c 2146     		mov	r1, r4
 4016 208e FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 4017 2092 0646     		mov	r6, r0
 4018 2094 0028     		cmp	r0, #0
 4019 2096 3EF461AD 		beq	.L554
 4020 209a 2046     		mov	r0, r4
 4021 209c 5321     		movs	r1, #83
 4022 209e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4023 20a2 0028     		cmp	r0, #0
 4024 20a4 42F07684 		bne	.L1535
 4025 20a8 0746     		mov	r7, r0
 4026              	.L158:
 4027 20aa 2046     		mov	r0, r4
 4028 20ac 5021     		movs	r1, #80
 4029 20ae FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4030 20b2 0028     		cmp	r0, #0
 4031 20b4 42F06884 		bne	.L1536
 4032 20b8 DFF81C93 		ldr	r9, .L1624+24
 4033              	.L159:
 4034 20bc 022F     		cmp	r7, #2
 4035 20be 02F07085 		beq	.L1537
 4036 20c2 0DF14C08 		add	r8, sp, #76
 4037 20c6 4046     		mov	r0, r8
 4038 20c8 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 4039 20cc 0746     		mov	r7, r0
 4040 20ce 0028     		cmp	r0, #0
 4041 20d0 3EF4D4AB 		beq	.L1420
 4042 20d4 2868     		ldr	r0, [r5]
 4043 20d6 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 4044 20da 0028     		cmp	r0, #0
 4045 20dc 43F04081 		bne	.L1538
 4046              	.L164:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 72


 4047 20e0 D8F80000 		ldr	r0, [r8]
 4048 20e4 B649     		ldr	r1, .L1624
 4049 20e6 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 4050              	.L882:
 4051 20ea 6B6C     		ldr	r3, [r5, #68]
 4052 20ec 1B68     		ldr	r3, [r3]
 4053 20ee A342     		cmp	r3, r4
 4054 20f0 03F07D81 		beq	.L165
 4055 20f4 EB6B     		ldr	r3, [r5, #60]
 4056 20f6 1B68     		ldr	r3, [r3]
 4057 20f8 A342     		cmp	r3, r4
 4058 20fa 03F07881 		beq	.L165
 4059 20fe 0127     		movs	r7, #1
 4060              	.L166:
 4061 2100 2B68     		ldr	r3, [r5]
 4062 2102 0DF1680A 		add	r10, sp, #104
 4063 2106 4946     		mov	r1, r9
 4064 2108 D3F83C08 		ldr	r0, [r3, #2108]
 4065 210c 5246     		mov	r2, r10
 4066 210e FFF7FEFF 		bl	_ZN11MassStorage9FindFirstEPKcR8FileInfo
 4067 2112 0028     		cmp	r0, #0
 4068 2114 03F06481 		beq	.L167
 4069 2118 4FF02209 		mov	r9, #34
 4070              	.L170:
 4071 211c 4FF02C0E 		mov	lr, #44
 4072 2120 A849     		ldr	r1, .L1624+4
 4073 2122 2222     		movs	r2, #34
 4074 2124 0DF16903 		add	r3, sp, #105
 4075 2128 002F     		cmp	r7, #0
 4076 212a 00F0A281 		beq	.L168
 4077 212e D8F80000 		ldr	r0, [r8]
 4078 2132 8DE80042 		stmia	sp, {r9, lr}
 4079 2136 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4080 213a 2B68     		ldr	r3, [r5]
 4081 213c 5146     		mov	r1, r10
 4082 213e D3F83C08 		ldr	r0, [r3, #2108]
 4083 2142 FFF7FEFF 		bl	_ZN11MassStorage8FindNextER8FileInfo
 4084 2146 0028     		cmp	r0, #0
 4085 2148 E8D1     		bne	.L170
 4086 214a D8F80070 		ldr	r7, [r8]
 4087 214e 8346     		mov	fp, r0
 4088 2150 3846     		mov	r0, r7
 4089 2152 FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 4090 2156 411E     		subs	r1, r0, #1
 4091 2158 3846     		mov	r0, r7
 4092 215a FFF7FEFF 		bl	_ZN12OutputBufferixEj
 4093 215e 80F800B0 		strb	fp, [r0]
 4094              	.L161:
 4095 2162 2846     		mov	r0, r5
 4096 2164 2146     		mov	r1, r4
 4097 2166 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 4098 216a 2846     		mov	r0, r5
 4099 216c 2146     		mov	r1, r4
 4100 216e D8F80030 		ldr	r3, [r8]
 4101 2172 0022     		movs	r2, #0
 4102 2174 3746     		mov	r7, r6
 4103 2176 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 73


 4104 217a FEF77FBB 		b	.L1420
 4105              	.L533:
 4106 217e 924B     		ldr	r3, .L1624+8
 4107 2180 2046     		mov	r0, r4
 4108 2182 4821     		movs	r1, #72
 4109 2184 D3F80880 		ldr	r8, [r3, #8]
 4110 2188 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4111 218c 0746     		mov	r7, r0
 4112 218e 0028     		cmp	r0, #0
 4113 2190 41F07280 		bne	.L1539
 4114 2194 98F80C3A 		ldrb	r3, [r8, #2572]	@ zero_extendqisi2
 4115 2198 002B     		cmp	r3, #0
 4116 219a 40F09B87 		bne	.L1540
 4117              	.L535:
 4118 219e 3046     		mov	r0, r6
 4119 21a0 8A49     		ldr	r1, .L1624+12
 4120 21a2 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 4121 21a6 0027     		movs	r7, #0
 4122 21a8 A368     		ldr	r3, [r4, #8]
 4123 21aa FEF7A6BB 		b	.L763
 4124              	.L538:
 4125 21ae 884B     		ldr	r3, .L1624+16
 4126 21b0 0027     		movs	r7, #0
 4127 21b2 1A68     		ldr	r2, [r3]
 4128 21b4 0097     		str	r7, [sp]
 4129 21b6 3B46     		mov	r3, r7
 4130 21b8 2846     		mov	r0, r5
 4131 21ba 2146     		mov	r1, r4
 4132 21bc FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 4133 21c0 A368     		ldr	r3, [r4, #8]
 4134 21c2 FEF79ABB 		b	.L763
 4135              	.L842:
 4136 21c6 3046     		mov	r0, r6
 4137 21c8 8249     		ldr	r1, .L1624+20
 4138 21ca FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 4139 21ce 0027     		movs	r7, #0
 4140 21d0 A368     		ldr	r3, [r4, #8]
 4141 21d2 FEF792BB 		b	.L763
 4142              	.L461:
 4143 21d6 2046     		mov	r0, r4
 4144 21d8 5021     		movs	r1, #80
 4145 21da FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4146 21de 0028     		cmp	r0, #0
 4147 21e0 3EF4C0AD 		beq	.L564
 4148 21e4 2046     		mov	r0, r4
 4149 21e6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4150 21ea 0DF14C08 		add	r8, sp, #76
 4151 21ee 0746     		mov	r7, r0
 4152 21f0 0DF1680A 		add	r10, sp, #104
 4153 21f4 2868     		ldr	r0, [r5]
 4154 21f6 CDF800A0 		str	r10, [sp]
 4155 21fa 3946     		mov	r1, r7
 4156 21fc 4346     		mov	r3, r8
 4157 21fe 0322     		movs	r2, #3
 4158 2200 FFF7FEFF 		bl	_ZN8Platform14GetFirmwarePinEi9PinAccessRhRb
 4159 2204 0028     		cmp	r0, #0
 4160 2206 02F0EE81 		beq	.L463
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 74


 4161 220a 2046     		mov	r0, r4
 4162 220c 4921     		movs	r1, #73
 4163 220e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4164 2212 0028     		cmp	r0, #0
 4165 2214 42F0C386 		bne	.L1541
 4166              	.L886:
 4167 2218 2046     		mov	r0, r4
 4168 221a 5321     		movs	r1, #83
 4169 221c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4170 2220 0028     		cmp	r0, #0
 4171 2222 42F0CA86 		bne	.L1542
 4172              	.L466:
 4173 2226 A368     		ldr	r3, [r4, #8]
 4174 2228 0027     		movs	r7, #0
 4175 222a FEF766BB 		b	.L763
 4176              	.L202:
 4177 222e 2046     		mov	r0, r4
 4178 2230 0021     		movs	r1, #0
 4179 2232 FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringEb
 4180 2236 0746     		mov	r7, r0
 4181 2238 0028     		cmp	r0, #0
 4182 223a 00F08484 		beq	.L207
 4183 223e 664A     		ldr	r2, .L1624+24
 4184 2240 2846     		mov	r0, r5
 4185 2242 2146     		mov	r1, r4
 4186 2244 3B46     		mov	r3, r7
 4187 2246 FFF7FEFF 		bl	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_
 4188 224a 3A46     		mov	r2, r7
 4189 224c 0028     		cmp	r0, #0
 4190 224e 00F05887 		beq	.L204
 4191 2252 3046     		mov	r0, r6
 4192 2254 6149     		ldr	r1, .L1624+28
 4193 2256 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 4194 225a 0027     		movs	r7, #0
 4195 225c A368     		ldr	r3, [r4, #8]
 4196 225e FEF74CBB 		b	.L763
 4197              	.L206:
 4198 2262 2046     		mov	r0, r4
 4199 2264 0021     		movs	r1, #0
 4200 2266 FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringEb
 4201 226a 0028     		cmp	r0, #0
 4202 226c 00F06B84 		beq	.L207
 4203 2270 0146     		mov	r1, r0
 4204 2272 2846     		mov	r0, r5
 4205 2274 FFF7FEFF 		bl	_ZN6GCodes10DeleteFileEPKc
 4206 2278 0027     		movs	r7, #0
 4207 227a A368     		ldr	r3, [r4, #8]
 4208 227c FEF73DBB 		b	.L763
 4209              	.L553:
 4210 2280 2846     		mov	r0, r5
 4211 2282 2146     		mov	r1, r4
 4212 2284 FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 4213 2288 0028     		cmp	r0, #0
 4214 228a 3EF467AC 		beq	.L554
 4215 228e 0DF14C08 		add	r8, sp, #76
 4216 2292 4046     		mov	r0, r8
 4217 2294 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 75


 4218 2298 0746     		mov	r7, r0
 4219 229a 0028     		cmp	r0, #0
 4220 229c 3EF45EAC 		beq	.L554
 4221 22a0 2868     		ldr	r0, [r5]
 4222 22a2 4F49     		ldr	r1, .L1624+32
 4223 22a4 4F4A     		ldr	r2, .L1624+36
 4224 22a6 0023     		movs	r3, #0
 4225 22a8 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 4226 22ac 8146     		mov	r9, r0
 4227 22ae 0028     		cmp	r0, #0
 4228 22b0 03F0E381 		beq	.L1543
 4229 22b4 D8F80000 		ldr	r0, [r8]
 4230 22b8 FFF7FEFF 		bl	_ZN12OutputBuffer12GetBytesLeftEPKS_
 4231 22bc 0DF1680A 		add	r10, sp, #104
 4232 22c0 0646     		mov	r6, r0
 4233 22c2 0BE0     		b	.L556
 4234              	.L1544:
 4235 22c4 96B1     		cbz	r6, .L557
 4236 22c6 8642     		cmp	r6, r0
 4237 22c8 00F20684 		bhi	.L888
 4238 22cc 3046     		mov	r0, r6
 4239 22ce 0026     		movs	r6, #0
 4240              	.L889:
 4241 22d0 0246     		mov	r2, r0
 4242 22d2 5146     		mov	r1, r10
 4243 22d4 D8F80000 		ldr	r0, [r8]
 4244 22d8 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKcj
 4245              	.L556:
 4246 22dc 4846     		mov	r0, r9
 4247 22de 5146     		mov	r1, r10
 4248 22e0 4FF48072 		mov	r2, #256
 4249 22e4 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 4250 22e8 0028     		cmp	r0, #0
 4251 22ea EBD1     		bne	.L1544
 4252              	.L557:
 4253 22ec 4846     		mov	r0, r9
 4254 22ee FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 4255 22f2 2846     		mov	r0, r5
 4256 22f4 2146     		mov	r1, r4
 4257 22f6 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 4258 22fa 2846     		mov	r0, r5
 4259 22fc 2146     		mov	r1, r4
 4260 22fe D8F80030 		ldr	r3, [r8]
 4261 2302 0022     		movs	r2, #0
 4262 2304 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer
 4263 2308 FEF7B8BA 		b	.L1420
 4264              	.L559:
 4265 230c 2046     		mov	r0, r4
 4266 230e 5021     		movs	r1, #80
 4267 2310 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4268 2314 8646     		mov	lr, r0
 4269 2316 0028     		cmp	r0, #0
 4270 2318 00F07185 		beq	.L560
 4271 231c 2846     		mov	r0, r5
 4272 231e 2146     		mov	r1, r4
 4273 2320 FFF7FEFF 		bl	_ZN6GCodes13SetMACAddressER11GCodeBuffer
 4274 2324 0027     		movs	r7, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 76


 4275 2326 A368     		ldr	r3, [r4, #8]
 4276 2328 FEF7E7BA 		b	.L763
 4277              	.L552:
 4278 232c 264F     		ldr	r7, .L1624+8
 4279 232e F868     		ldr	r0, [r7, #12]
 4280 2330 FFF7FEFF 		bl	_ZN4Heat17ResetHeaterModelsEv
 4281 2334 B868     		ldr	r0, [r7, #8]
 4282 2336 00F68420 		addw	r0, r0, #2692
 4283 233a FFF7FEFF 		bl	_ZN15DeltaParameters4InitEv
 4284 233e 2868     		ldr	r0, [r5]
 4285 2340 FFF7FEFF 		bl	_ZN8Platform17SetZProbeDefaultsEv
 4286 2344 0123     		movs	r3, #1
 4287 2346 0093     		str	r3, [sp]
 4288 2348 2846     		mov	r0, r5
 4289 234a 2146     		mov	r1, r4
 4290 234c 254A     		ldr	r2, .L1624+36
 4291 234e FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 4292 2352 0027     		movs	r7, #0
 4293 2354 A368     		ldr	r3, [r4, #8]
 4294 2356 FEF7D0BA 		b	.L763
 4295              	.L540:
 4296 235a 2046     		mov	r0, r4
 4297 235c 4E21     		movs	r1, #78
 4298 235e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4299 2362 0028     		cmp	r0, #0
 4300 2364 41F05180 		bne	.L1545
 4301 2368 2046     		mov	r0, r4
 4302 236a 4421     		movs	r1, #68
 4303 236c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4304 2370 0028     		cmp	r0, #0
 4305 2372 41F03F80 		bne	.L905
 4306 2376 D5F800A0 		ldr	r10, [r5]
 4307 237a 0AF50A63 		add	r3, r10, #2208
 4308 237e 0746     		mov	r7, r0
 4309 2380 1868     		ldr	r0, [r3]	@ float
 4310 2382 FFF7FEFF 		bl	__aeabi_f2d
 4311 2386 0AF6A40A 		addw	r10, r10, #2212
 4312 238a 8046     		mov	r8, r0
 4313 238c DAF80000 		ldr	r0, [r10]	@ float
 4314 2390 8946     		mov	r9, r1
 4315 2392 FFF7FEFF 		bl	__aeabi_f2d
 4316 2396 4B46     		mov	r3, r9
 4317 2398 CDE90001 		strd	r0, [sp]
 4318 239c 4246     		mov	r2, r8
 4319 239e 3046     		mov	r0, r6
 4320 23a0 1149     		ldr	r1, .L1624+40
 4321 23a2 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 4322 23a6 A368     		ldr	r3, [r4, #8]
 4323 23a8 FEF7A7BA 		b	.L763
 4324              	.L550:
 4325 23ac 0F4B     		ldr	r3, .L1624+44
 4326 23ae 2846     		mov	r0, r5
 4327 23b0 1A68     		ldr	r2, [r3]
 4328 23b2 3146     		mov	r1, r6
 4329 23b4 FFF7FEFF 		bl	_ZNK6GCodes23WriteConfigOverrideFileER9StringRefPKc
 4330 23b8 A368     		ldr	r3, [r4, #8]
 4331 23ba 0746     		mov	r7, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 77


 4332 23bc FEF79DBA 		b	.L763
 4333              	.L1625:
 4334              		.align	2
 4335              	.L1624:
 4336 23c0 6C150000 		.word	.LC185
 4337 23c4 00020000 		.word	.LC34
 4338 23c8 00000000 		.word	reprap
 4339 23cc E40B0000 		.word	.LC110
 4340 23d0 00000000 		.word	.LANCHOR3
 4341 23d4 C0140000 		.word	.LC179
 4342 23d8 88000000 		.word	.LC4
 4343 23dc D4030000 		.word	.LC47
 4344 23e0 480C0000 		.word	.LC113
 4345 23e4 04010000 		.word	.LC19
 4346 23e8 040C0000 		.word	.LC111
 4347 23ec 00000000 		.word	.LANCHOR5
 4348              	.L872:
 4349 23f0 D5F8B031 		ldr	r3, [r5, #432]
 4350 23f4 002B     		cmp	r3, #0
 4351 23f6 00F08382 		beq	.L1007
 4352 23fa 4FF00008 		mov	r8, #0
 4353 23fe C246     		mov	r10, r8
 4354 2400 B84F     		ldr	r7, .L1626
 4355 2402 40F2913B 		movw	fp, #913
 4356 2406 06E0     		b	.L874
 4357              	.L821:
 4358 2408 D5F8B031 		ldr	r3, [r5, #432]
 4359 240c 08F10108 		add	r8, r8, #1
 4360 2410 4345     		cmp	r3, r8
 4361 2412 40F27682 		bls	.L873
 4362              	.L874:
 4363 2416 2046     		mov	r0, r4
 4364 2418 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 4365 241c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4366 2420 0028     		cmp	r0, #0
 4367 2422 F1D0     		beq	.L821
 4368 2424 2846     		mov	r0, r5
 4369 2426 2146     		mov	r1, r4
 4370 2428 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4371 242c 0028     		cmp	r0, #0
 4372 242e 3EF495AB 		beq	.L554
 4373 2432 2046     		mov	r0, r4
 4374 2434 D5F800A0 		ldr	r10, [r5]
 4375 2438 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 4376 243c 0246     		mov	r2, r0	@ float
 4377 243e 5046     		mov	r0, r10
 4378 2440 B9EB0B0A 		subs	r10, r9, fp
 4379 2444 DAF10003 		rsbs	r3, r10, #0
 4380 2448 53EB0A03 		adcs	r3, r3, r10
 4381 244c 4146     		mov	r1, r8
 4382 244e FFF7FEFF 		bl	_ZN8Platform15SetMotorCurrentEjfb
 4383 2452 4FF0010A 		mov	r10, #1
 4384 2456 D7E7     		b	.L821
 4385              	.L1006:
 4386 2458 0027     		movs	r7, #0
 4387 245a FEF74EBA 		b	.L763
 4388              	.L865:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 78


 4389 245e 3046     		mov	r0, r6
 4390 2460 A149     		ldr	r1, .L1626+4
 4391 2462 04F10C02 		add	r2, r4, #12
 4392 2466 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 4393 246a 0127     		movs	r7, #1
 4394 246c A368     		ldr	r3, [r4, #8]
 4395 246e FEF744BA 		b	.L763
 4396              	.L168:
 4397 2472 9E49     		ldr	r1, .L1626+8
 4398 2474 D8F80000 		ldr	r0, [r8]
 4399 2478 0DF16902 		add	r2, sp, #105
 4400 247c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4401 2480 2B68     		ldr	r3, [r5]
 4402 2482 5146     		mov	r1, r10
 4403 2484 D3F83C08 		ldr	r0, [r3, #2108]
 4404 2488 FFF7FEFF 		bl	_ZN11MassStorage8FindNextER8FileInfo
 4405 248c 0028     		cmp	r0, #0
 4406 248e F0D1     		bne	.L168
 4407 2490 67E6     		b	.L161
 4408              	.L867:
 4409 2492 2371     		strb	r3, [r4, #4]
 4410 2494 2846     		mov	r0, r5
 4411 2496 2146     		mov	r1, r4
 4412 2498 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 4413 249c 2846     		mov	r0, r5
 4414 249e 2146     		mov	r1, r4
 4415 24a0 3A46     		mov	r2, r7
 4416 24a2 3368     		ldr	r3, [r6]
 4417 24a4 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 4418 24a8 FEF7E7B9 		b	.L1461
 4419              	.L510:
 4420 24ac CDF800A0 		str	r10, [sp]
 4421 24b0 D9F80060 		ldr	r6, [r9]
 4422 24b4 DFF848C2 		ldr	ip, .L1626+28
 4423 24b8 DFF848E2 		ldr	lr, .L1626+32
 4424 24bc 2868     		ldr	r0, [r5]
 4425 24be 002E     		cmp	r6, #0
 4426 24c0 18BF     		it	ne
 4427 24c2 E646     		movne	lr, ip
 4428 24c4 CDF804E0 		str	lr, [sp, #4]
 4429 24c8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 4430 24cc 4FF0010A 		mov	r10, #1
 4431 24d0 FEF7DABC 		b	.L508
 4432              	.L130:
 4433 24d4 2046     		mov	r0, r4
 4434 24d6 4821     		movs	r1, #72
 4435 24d8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4436 24dc 0028     		cmp	r0, #0
 4437 24de 40F07187 		bne	.L498
 4438 24e2 0746     		mov	r7, r0
 4439 24e4 A368     		ldr	r3, [r4, #8]
 4440 24e6 FEF708BA 		b	.L763
 4441              	.L129:
 4442 24ea 3346     		mov	r3, r6
 4443 24ec 2846     		mov	r0, r5
 4444 24ee 2146     		mov	r1, r4
 4445 24f0 0122     		movs	r2, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 79


 4446 24f2 FFF7FEFF 		bl	_ZN6GCodes16SetPidParametersER11GCodeBufferiR9StringRef
 4447 24f6 0027     		movs	r7, #0
 4448 24f8 A368     		ldr	r3, [r4, #8]
 4449 24fa FEF7FEB9 		b	.L763
 4450              	.L132:
 4451 24fe 2846     		mov	r0, r5
 4452 2500 2146     		mov	r1, r4
 4453 2502 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4454 2506 0028     		cmp	r0, #0
 4455 2508 3EF428AB 		beq	.L554
 4456 250c 7848     		ldr	r0, .L1626+12
 4457 250e 8768     		ldr	r7, [r0, #8]
 4458 2510 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 4459 2514 0DF1680A 		add	r10, sp, #104
 4460 2518 0346     		mov	r3, r0
 4461 251a 5146     		mov	r1, r10
 4462 251c 3846     		mov	r0, r7
 4463 251e 0022     		movs	r2, #0
 4464 2520 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhm
 4465 2524 2046     		mov	r0, r4
 4466 2526 4C21     		movs	r1, #76
 4467 2528 97F8BCBA 		ldrb	fp, [r7, #2748]	@ zero_extendqisi2
 4468 252c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4469 2530 07F68428 		addw	r8, r7, #2692
 4470 2534 0028     		cmp	r0, #0
 4471 2536 42F01582 		bne	.L1546
 4472 253a 8146     		mov	r9, r0
 4473              	.L781:
 4474 253c 2046     		mov	r0, r4
 4475 253e 5221     		movs	r1, #82
 4476 2540 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4477 2544 0028     		cmp	r0, #0
 4478 2546 42F00182 		bne	.L1547
 4479              	.L782:
 4480 254a 2046     		mov	r0, r4
 4481 254c 4221     		movs	r1, #66
 4482 254e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4483 2552 0028     		cmp	r0, #0
 4484 2554 42F0E881 		bne	.L1548
 4485              	.L783:
 4486 2558 2046     		mov	r0, r4
 4487 255a 5821     		movs	r1, #88
 4488 255c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4489 2560 0028     		cmp	r0, #0
 4490 2562 42F0D581 		bne	.L1549
 4491              	.L784:
 4492 2566 2046     		mov	r0, r4
 4493 2568 5921     		movs	r1, #89
 4494 256a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4495 256e 0028     		cmp	r0, #0
 4496 2570 42F0C281 		bne	.L1550
 4497              	.L785:
 4498 2574 2046     		mov	r0, r4
 4499 2576 5A21     		movs	r1, #90
 4500 2578 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4501 257c 0028     		cmp	r0, #0
 4502 257e 41F03C86 		bne	.L1551
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 80


 4503 2582 2046     		mov	r0, r4
 4504 2584 4821     		movs	r1, #72
 4505 2586 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4506 258a 0028     		cmp	r0, #0
 4507 258c 41F04286 		bne	.L787
 4508 2590 B9F1000F 		cmp	r9, #0
 4509 2594 41F04686 		bne	.L788
 4510 2598 97F8BC3A 		ldrb	r3, [r7, #2748]	@ zero_extendqisi2
 4511 259c 002B     		cmp	r3, #0
 4512 259e 02F0FA82 		beq	.L793
 4513 25a2 07F68C23 		addw	r3, r7, #2700
 4514 25a6 1868     		ldr	r0, [r3]	@ float
 4515 25a8 FFF7FEFF 		bl	__aeabi_f2d
 4516 25ac 07F52963 		add	r3, r7, #2704
 4517 25b0 8046     		mov	r8, r0
 4518 25b2 1868     		ldr	r0, [r3]	@ float
 4519 25b4 8946     		mov	r9, r1
 4520 25b6 FFF7FEFF 		bl	__aeabi_f2d
 4521 25ba CDE90001 		strd	r0, [sp]
 4522 25be 07F52B63 		add	r3, r7, #2736
 4523 25c2 1868     		ldr	r0, [r3]	@ float
 4524 25c4 FFF7FEFF 		bl	__aeabi_f2d
 4525 25c8 CDE90201 		strd	r0, [sp, #8]
 4526 25cc 07F6AC23 		addw	r3, r7, #2732
 4527 25d0 1868     		ldr	r0, [r3]	@ float
 4528 25d2 FFF7FEFF 		bl	__aeabi_f2d
 4529 25d6 CDE90401 		strd	r0, [sp, #16]
 4530 25da 07F69423 		addw	r3, r7, #2708
 4531 25de 1868     		ldr	r0, [r3]	@ float
 4532 25e0 FFF7FEFF 		bl	__aeabi_f2d
 4533 25e4 CDE90601 		strd	r0, [sp, #24]
 4534 25e8 07F69823 		addw	r3, r7, #2712
 4535 25ec 07F69C27 		addw	r7, r7, #2716
 4536 25f0 1868     		ldr	r0, [r3]	@ float
 4537 25f2 FFF7FEFF 		bl	__aeabi_f2d
 4538 25f6 CDE90801 		strd	r0, [sp, #32]
 4539 25fa 3868     		ldr	r0, [r7]	@ float
 4540 25fc FFF7FEFF 		bl	__aeabi_f2d
 4541 2600 4246     		mov	r2, r8
 4542 2602 CDE90A01 		strd	r0, [sp, #40]
 4543 2606 4B46     		mov	r3, r9
 4544 2608 3046     		mov	r0, r6
 4545 260a 3A49     		ldr	r1, .L1626+16
 4546 260c FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 4547              	.L792:
 4548 2610 A368     		ldr	r3, [r4, #8]
 4549 2612 0027     		movs	r7, #0
 4550 2614 FEF771B9 		b	.L763
 4551              	.L133:
 4552 2618 2846     		mov	r0, r5
 4553 261a 2146     		mov	r1, r4
 4554 261c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4555 2620 0028     		cmp	r0, #0
 4556 2622 3EF49BAA 		beq	.L554
 4557 2626 324B     		ldr	r3, .L1626+12
 4558 2628 2046     		mov	r0, r4
 4559 262a 5821     		movs	r1, #88
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 81


 4560 262c D3F808B0 		ldr	fp, [r3, #8]
 4561 2630 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4562 2634 0BF6842A 		addw	r10, fp, #2692
 4563 2638 0028     		cmp	r0, #0
 4564 263a 42F05281 		bne	.L1552
 4565 263e 0746     		mov	r7, r0
 4566              	.L794:
 4567 2640 2046     		mov	r0, r4
 4568 2642 5921     		movs	r1, #89
 4569 2644 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4570 2648 0028     		cmp	r0, #0
 4571 264a 42F03F81 		bne	.L1553
 4572              	.L795:
 4573 264e 2046     		mov	r0, r4
 4574 2650 5A21     		movs	r1, #90
 4575 2652 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4576 2656 0028     		cmp	r0, #0
 4577 2658 42F02D81 		bne	.L1554
 4578              	.L796:
 4579 265c 2046     		mov	r0, r4
 4580 265e 4121     		movs	r1, #65
 4581 2660 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4582 2664 0028     		cmp	r0, #0
 4583 2666 41F0F585 		bne	.L1555
 4584 266a 2046     		mov	r0, r4
 4585 266c 4221     		movs	r1, #66
 4586 266e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4587 2672 0028     		cmp	r0, #0
 4588 2674 41F00286 		bne	.L798
 4589 2678 002F     		cmp	r7, #0
 4590 267a 41F00F86 		bne	.L799
 4591 267e DAF81C00 		ldr	r0, [r10, #28]	@ float
 4592 2682 FFF7FEFF 		bl	__aeabi_f2d
 4593 2686 8046     		mov	r8, r0
 4594 2688 DAF82000 		ldr	r0, [r10, #32]	@ float
 4595 268c 8946     		mov	r9, r1
 4596 268e FFF7FEFF 		bl	__aeabi_f2d
 4597 2692 CDE90001 		strd	r0, [sp]
 4598 2696 DAF82400 		ldr	r0, [r10, #36]	@ float
 4599 269a FFF7FEFF 		bl	__aeabi_f2d
 4600 269e CDE90201 		strd	r0, [sp, #8]
 4601 26a2 0BF6B423 		addw	r3, fp, #2740
 4602 26a6 0BF6B82B 		addw	fp, fp, #2744
 4603 26aa 1868     		ldr	r0, [r3]	@ float
 4604 26ac FFF7FEFF 		bl	__aeabi_f2d
 4605 26b0 0022     		movs	r2, #0
 4606 26b2 114B     		ldr	r3, .L1626+20
 4607 26b4 FFF7FEFF 		bl	__aeabi_dmul
 4608 26b8 CDE90401 		strd	r0, [sp, #16]
 4609 26bc DBF80000 		ldr	r0, [fp]	@ float
 4610 26c0 FFF7FEFF 		bl	__aeabi_f2d
 4611 26c4 0022     		movs	r2, #0
 4612 26c6 0C4B     		ldr	r3, .L1626+20
 4613 26c8 FFF7FEFF 		bl	__aeabi_dmul
 4614 26cc 4B46     		mov	r3, r9
 4615 26ce CDE90601 		strd	r0, [sp, #24]
 4616 26d2 4246     		mov	r2, r8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 82


 4617 26d4 3046     		mov	r0, r6
 4618 26d6 0949     		ldr	r1, .L1626+24
 4619 26d8 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 4620 26dc A368     		ldr	r3, [r4, #8]
 4621 26de FEF70CB9 		b	.L763
 4622              	.L1627:
 4623 26e2 00BF     		.align	2
 4624              	.L1626:
 4625 26e4 00000000 		.word	_ZN6GCodes11axisLettersE
 4626 26e8 54150000 		.word	.LC184
 4627 26ec 0C020000 		.word	.LC35
 4628 26f0 00000000 		.word	reprap
 4629 26f4 E4120000 		.word	.LC163
 4630 26f8 00005940 		.word	1079574528
 4631 26fc 68130000 		.word	.LC165
 4632 2700 D4000000 		.word	.LC15
 4633 2704 A4000000 		.word	.LC9
 4634              	.L1525:
 4635 2708 2046     		mov	r0, r4
 4636 270a 4521     		movs	r1, #69
 4637 270c 4E46     		mov	r6, r9
 4638 270e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4639 2712 0028     		cmp	r0, #0
 4640 2714 40F06F85 		bne	.L894
 4641 2718 BAF1000F 		cmp	r10, #0
 4642 271c 01F01085 		beq	.L626
 4643 2720 0746     		mov	r7, r0
 4644 2722 A368     		ldr	r3, [r4, #8]
 4645 2724 FEF7E9B8 		b	.L763
 4646              	.L1462:
 4647 2728 BBF1000F 		cmp	fp, #0
 4648 272c 40F03886 		bne	.L1556
 4649              	.L591:
 4650 2730 2046     		mov	r0, r4
 4651 2732 5021     		movs	r1, #80
 4652 2734 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4653 2738 0028     		cmp	r0, #0
 4654 273a 41F0C282 		bne	.L1557
 4655 273e 0746     		mov	r7, r0
 4656              	.L596:
 4657 2740 2868     		ldr	r0, [r5]
 4658 2742 D0F89010 		ldr	r1, [r0, #144]
 4659 2746 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersEl
 4660 274a 8446     		mov	ip, r0
 4661 274c BCE80F00 		ldmia	ip!, {r0, r1, r2, r3}
 4662 2750 0DF1680A 		add	r10, sp, #104
 4663 2754 D646     		mov	lr, r10
 4664 2756 AEE80F00 		stmia	lr!, {r0, r1, r2, r3}
 4665 275a BCE80F00 		ldmia	ip!, {r0, r1, r2, r3}
 4666 275e AEE80F00 		stmia	lr!, {r0, r1, r2, r3}
 4667 2762 9CE80F00 		ldmia	ip, {r0, r1, r2, r3}
 4668 2766 8EE80F00 		stmia	lr, {r0, r1, r2, r3}
 4669 276a 2046     		mov	r0, r4
 4670 276c 4821     		movs	r1, #72
 4671 276e 20AA     		add	r2, sp, #128
 4672 2770 4346     		mov	r3, r8
 4673 2772 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 83


 4674 2776 2046     		mov	r0, r4
 4675 2778 4621     		movs	r1, #70
 4676 277a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4677 277e 0028     		cmp	r0, #0
 4678 2780 41F08F82 		bne	.L1558
 4679              	.L597:
 4680 2784 2046     		mov	r0, r4
 4681 2786 5421     		movs	r1, #84
 4682 2788 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4683 278c 0028     		cmp	r0, #0
 4684 278e 41F07882 		bne	.L1559
 4685              	.L598:
 4686 2792 2046     		mov	r0, r4
 4687 2794 4921     		movs	r1, #73
 4688 2796 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4689 279a 0028     		cmp	r0, #0
 4690 279c 41F06382 		bne	.L1560
 4691              	.L599:
 4692 27a0 2046     		mov	r0, r4
 4693 27a2 5221     		movs	r1, #82
 4694 27a4 23AA     		add	r2, sp, #140
 4695 27a6 4346     		mov	r3, r8
 4696 27a8 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 4697 27ac 4346     		mov	r3, r8
 4698 27ae 2046     		mov	r0, r4
 4699 27b0 5321     		movs	r1, #83
 4700 27b2 24AA     		add	r2, sp, #144
 4701 27b4 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 4702 27b8 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 4703 27bc 002B     		cmp	r3, #0
 4704 27be 5BD1     		bne	.L1561
 4705              	.L600:
 4706 27c0 BBF1000F 		cmp	fp, #0
 4707 27c4 5FD1     		bne	.L602
 4708 27c6 002F     		cmp	r7, #0
 4709 27c8 5DD1     		bne	.L602
 4710 27ca 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 4711 27ce 002B     		cmp	r3, #0
 4712 27d0 59D1     		bne	.L602
 4713 27d2 2B68     		ldr	r3, [r5]
 4714 27d4 9AF82C70 		ldrb	r7, [r10, #44]	@ zero_extendqisi2
 4715 27d8 C14A     		ldr	r2, .L1628
 4716 27da C249     		ldr	r1, .L1628+4
 4717 27dc DAF81800 		ldr	r0, [r10, #24]	@ float
 4718 27e0 D3F89080 		ldr	r8, [r3, #144]
 4719 27e4 002F     		cmp	r7, #0
 4720 27e6 0CBF     		ite	eq
 4721 27e8 0F46     		moveq	r7, r1
 4722 27ea 1746     		movne	r7, r2
 4723 27ec FFF7FEFF 		bl	__aeabi_f2d
 4724 27f0 DAED086A 		flds	s13, [r10, #32]
 4725 27f4 9AED077A 		flds	s14, [r10, #28]
 4726 27f8 DFEDBB7A 		flds	s15, .L1628+8
 4727 27fc CDE90001 		strd	r0, [sp]
 4728 2800 27EE277A 		fmuls	s14, s14, s15
 4729 2804 66EEA77A 		fmuls	s15, s13, s15
 4730 2808 BDEEC77A 		ftosizs	s14, s14
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 84


 4731 280c FDEEE77A 		ftosizs	s15, s15
 4732 2810 DAF82400 		ldr	r0, [r10, #36]	@ float
 4733 2814 8DED027A 		fsts	s14, [sp, #8]	@ int
 4734 2818 CDED037A 		fsts	s15, [sp, #12]	@ int
 4735 281c FFF7FEFF 		bl	__aeabi_f2d
 4736 2820 3B46     		mov	r3, r7
 4737 2822 CDE90401 		strd	r0, [sp, #16]
 4738 2826 4246     		mov	r2, r8
 4739 2828 3046     		mov	r0, r6
 4740 282a B049     		ldr	r1, .L1628+12
 4741 282c FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 4742 2830 2B68     		ldr	r3, [r5]
 4743 2832 D3F89030 		ldr	r3, [r3, #144]
 4744 2836 072B     		cmp	r3, #7
 4745 2838 02F02686 		beq	.L1562
 4746              	.L604:
 4747 283c 3046     		mov	r0, r6
 4748 283e AC49     		ldr	r1, .L1628+16
 4749 2840 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 4750 2844 D5F8B021 		ldr	r2, [r5, #432]
 4751 2848 EAB1     		cbz	r2, .L602
 4752 284a DFF8B0A2 		ldr	r10, .L1628+28
 4753 284e 0027     		movs	r7, #0
 4754 2850 4FF00108 		mov	r8, #1
 4755 2854 02E0     		b	.L606
 4756              	.L605:
 4757 2856 0137     		adds	r7, r7, #1
 4758 2858 BA42     		cmp	r2, r7
 4759 285a 14D9     		bls	.L602
 4760              	.L606:
 4761 285c 08FA07F3 		lsl	r3, r8, r7
 4762 2860 13EA090F 		tst	r3, r9
 4763 2864 F7D0     		beq	.L605
 4764 2866 1AF80720 		ldrb	r2, [r10, r7]	@ zero_extendqisi2
 4765 286a A249     		ldr	r1, .L1628+20
 4766 286c 3046     		mov	r0, r6
 4767 286e FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 4768 2872 D5F8B021 		ldr	r2, [r5, #432]
 4769 2876 EEE7     		b	.L605
 4770              	.L1561:
 4771 2878 2868     		ldr	r0, [r5]
 4772 287a 5246     		mov	r2, r10
 4773 287c D0F89010 		ldr	r1, [r0, #144]
 4774 2880 FFF7FEFF 		bl	_ZN8Platform19SetZProbeParametersElRK16ZProbeParameters
 4775 2884 9CE7     		b	.L600
 4776              	.L602:
 4777 2886 A368     		ldr	r3, [r4, #8]
 4778 2888 0027     		movs	r7, #0
 4779 288a FEF736B8 		b	.L763
 4780              	.L1496:
 4781 288e 2046     		mov	r0, r4
 4782 2890 4521     		movs	r1, #69
 4783 2892 4E46     		mov	r6, r9
 4784 2894 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4785 2898 0028     		cmp	r0, #0
 4786 289a 41F02780 		bne	.L901
 4787 289e BAF1000F 		cmp	r10, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 85


 4788 28a2 00F0C687 		beq	.L400
 4789 28a6 0746     		mov	r7, r0
 4790 28a8 A368     		ldr	r3, [r4, #8]
 4791 28aa FEF726B8 		b	.L763
 4792              	.L1484:
 4793 28ae B9F1000F 		cmp	r9, #0
 4794 28b2 00F05786 		beq	.L440
 4795 28b6 A368     		ldr	r3, [r4, #8]
 4796 28b8 0027     		movs	r7, #0
 4797 28ba FEF71EB8 		b	.L763
 4798              	.L437:
 4799 28be 2A68     		ldr	r2, [r5]
 4800 28c0 02EB8303 		add	r3, r2, r3, lsl #2
 4801 28c4 C3ED007A 		fsts	s15, [r3]
 4802 28c8 4FF00109 		mov	r9, #1
 4803 28cc FEF710BC 		b	.L436
 4804              	.L1509:
 4805 28d0 2046     		mov	r0, r4
 4806 28d2 4521     		movs	r1, #69
 4807 28d4 5646     		mov	r6, r10
 4808 28d6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4809 28da 0028     		cmp	r0, #0
 4810 28dc 41F0E880 		bne	.L900
 4811 28e0 B9F1000F 		cmp	r9, #0
 4812 28e4 01F07080 		beq	.L386
 4813 28e8 0746     		mov	r7, r0
 4814 28ea A368     		ldr	r3, [r4, #8]
 4815 28ec FEF705B8 		b	.L763
 4816              	.L1517:
 4817 28f0 B9F1000F 		cmp	r9, #0
 4818 28f4 00F0C485 		beq	.L683
 4819 28f8 A368     		ldr	r3, [r4, #8]
 4820 28fa 0027     		movs	r7, #0
 4821 28fc FDF7FDBF 		b	.L763
 4822              	.L1007:
 4823 2900 9A46     		mov	r10, r3
 4824              	.L873:
 4825 2902 2046     		mov	r0, r4
 4826 2904 4521     		movs	r1, #69
 4827 2906 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4828 290a 0028     		cmp	r0, #0
 4829 290c 41F09483 		bne	.L1563
 4830              	.L823:
 4831 2910 40F28A33 		movw	r3, #906
 4832 2914 9945     		cmp	r9, r3
 4833 2916 00F07F86 		beq	.L1564
 4834 291a BAF1000F 		cmp	r10, #0
 4835 291e 40F08686 		bne	.L912
 4836 2922 40F29133 		movw	r3, #913
 4837 2926 9945     		cmp	r9, r3
 4838 2928 02F01D82 		beq	.L1003
 4839              	.L895:
 4840 292c 7249     		ldr	r1, .L1628+24
 4841              	.L833:
 4842 292e 3046     		mov	r0, r6
 4843 2930 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 4844 2934 D5F8B031 		ldr	r3, [r5, #432]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 86


 4845 2938 13B3     		cbz	r3, .L837
 4846 293a 40F2913A 		movw	r10, #913
 4847 293e B9EB0A0E 		subs	lr, r9, r10
 4848 2942 DEF1000A 		rsbs	r10, lr, #0
 4849 2946 6D4F     		ldr	r7, .L1628+28
 4850 2948 5AEB0E0A 		adcs	r10, r10, lr
 4851 294c 4FF00008 		mov	r8, #0
 4852              	.L838:
 4853 2950 4146     		mov	r1, r8
 4854 2952 5246     		mov	r2, r10
 4855 2954 2868     		ldr	r0, [r5]
 4856 2956 17F808B0 		ldrb	fp, [r7, r8]	@ zero_extendqisi2
 4857 295a FFF7FEFF 		bl	_ZNK8Platform15GetMotorCurrentEjb
 4858 295e 06EE900A 		fmsr	s13, r0
 4859 2962 FDEEE66A 		ftosizs	s13, s13
 4860 2966 5A46     		mov	r2, fp
 4861 2968 16EE903A 		fmrs	r3, s13	@ int
 4862 296c 3046     		mov	r0, r6
 4863 296e 6449     		ldr	r1, .L1628+32
 4864 2970 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 4865 2974 D5F8B031 		ldr	r3, [r5, #432]
 4866 2978 08F10108 		add	r8, r8, #1
 4867 297c 4345     		cmp	r3, r8
 4868 297e E7D8     		bhi	.L838
 4869              	.L837:
 4870 2980 3046     		mov	r0, r6
 4871 2982 6049     		ldr	r1, .L1628+36
 4872 2984 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 4873 2988 D5F8B431 		ldr	r3, [r5, #436]
 4874 298c F3B1     		cbz	r3, .L836
 4875 298e 40F29138 		movw	r8, #913
 4876 2992 B9EB0800 		subs	r0, r9, r8
 4877 2996 D0F10008 		rsbs	r8, r0, #0
 4878 299a 58EB0008 		adcs	r8, r8, r0
 4879 299e 0027     		movs	r7, #0
 4880              	.L841:
 4881 29a0 D5F8B011 		ldr	r1, [r5, #432]
 4882 29a4 2868     		ldr	r0, [r5]
 4883 29a6 3944     		add	r1, r1, r7
 4884 29a8 4246     		mov	r2, r8
 4885 29aa FFF7FEFF 		bl	_ZNK8Platform15GetMotorCurrentEjb
 4886 29ae 07EE100A 		fmsr	s14, r0
 4887 29b2 BDEEC77A 		ftosizs	s14, s14
 4888 29b6 5449     		ldr	r1, .L1628+40
 4889 29b8 17EE102A 		fmrs	r2, s14	@ int
 4890 29bc 3046     		mov	r0, r6
 4891 29be FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 4892 29c2 D5F8B431 		ldr	r3, [r5, #436]
 4893 29c6 0137     		adds	r7, r7, #1
 4894 29c8 BB42     		cmp	r3, r7
 4895 29ca E9D8     		bhi	.L841
 4896              	.L836:
 4897 29cc 40F28A33 		movw	r3, #906
 4898 29d0 9945     		cmp	r9, r3
 4899 29d2 02F08A84 		beq	.L1565
 4900 29d6 A368     		ldr	r3, [r4, #8]
 4901 29d8 0027     		movs	r7, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 87


 4902 29da FDF78EBF 		b	.L763
 4903              	.L319:
 4904 29de 2046     		mov	r0, r4
 4905 29e0 4321     		movs	r1, #67
 4906 29e2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4907 29e6 0028     		cmp	r0, #0
 4908 29e8 00F06183 		beq	.L326
 4909              	.L321:
 4910 29ec 474B     		ldr	r3, .L1628+44
 4911 29ee D868     		ldr	r0, [r3, #12]
 4912 29f0 90F92F10 		ldrsb	r1, [r0, #47]
 4913 29f4 4A1C     		adds	r2, r1, #1
 4914 29f6 04D0     		beq	.L885
 4915 29f8 95F8D633 		ldrb	r3, [r5, #982]	@ zero_extendqisi2
 4916 29fc 002B     		cmp	r3, #0
 4917 29fe 02F0F081 		beq	.L1566
 4918              	.L885:
 4919 2a02 0027     		movs	r7, #0
 4920 2a04 85F8D573 		strb	r7, [r5, #981]
 4921 2a08 85F8D673 		strb	r7, [r5, #982]
 4922 2a0c A368     		ldr	r3, [r4, #8]
 4923 2a0e FDF774BF 		b	.L763
 4924              	.L1479:
 4925 2a12 2046     		mov	r0, r4
 4926 2a14 4521     		movs	r1, #69
 4927 2a16 0D9E     		ldr	r6, [sp, #52]
 4928 2a18 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4929 2a1c 0028     		cmp	r0, #0
 4930 2a1e 41F09282 		bne	.L904
 4931 2a22 BAF1000F 		cmp	r10, #0
 4932 2a26 01F02385 		beq	.L522
 4933              	.L517:
 4934 2a2a A368     		ldr	r3, [r4, #8]
 4935 2a2c 0027     		movs	r7, #0
 4936 2a2e FDF764BF 		b	.L763
 4937              	.L1512:
 4938 2a32 2046     		mov	r0, r4
 4939 2a34 4521     		movs	r1, #69
 4940 2a36 4E46     		mov	r6, r9
 4941 2a38 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4942 2a3c 0028     		cmp	r0, #0
 4943 2a3e 40F0AC83 		bne	.L896
 4944 2a42 BBF1000F 		cmp	fp, #0
 4945 2a46 40F0C983 		bne	.L248
 4946              	.L251:
 4947 2a4a 3046     		mov	r0, r6
 4948 2a4c 3049     		ldr	r1, .L1628+48
 4949 2a4e FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 4950 2a52 D5F8B031 		ldr	r3, [r5, #432]
 4951 2a56 C3B1     		cbz	r3, .L256
 4952 2a58 284F     		ldr	r7, .L1628+28
 4953 2a5a 4FF00008 		mov	r8, #0
 4954              	.L257:
 4955 2a5e 2B68     		ldr	r3, [r5]
 4956 2a60 17F80890 		ldrb	r9, [r7, r8]	@ zero_extendqisi2
 4957 2a64 03EB8803 		add	r3, r3, r8, lsl #2
 4958 2a68 08F10108 		add	r8, r8, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 88


 4959 2a6c D3F84801 		ldr	r0, [r3, #328]	@ float
 4960 2a70 FFF7FEFF 		bl	__aeabi_f2d
 4961 2a74 4A46     		mov	r2, r9
 4962 2a76 CDE90001 		strd	r0, [sp]
 4963 2a7a 3046     		mov	r0, r6
 4964 2a7c 2549     		ldr	r1, .L1628+52
 4965 2a7e FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 4966 2a82 D5F8B031 		ldr	r3, [r5, #432]
 4967 2a86 4345     		cmp	r3, r8
 4968 2a88 E9D8     		bhi	.L257
 4969              	.L256:
 4970 2a8a 3046     		mov	r0, r6
 4971 2a8c 2249     		ldr	r1, .L1628+56
 4972 2a8e FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 4973 2a92 D5F8B431 		ldr	r3, [r5, #436]
 4974 2a96 DBB1     		cbz	r3, .L252
 4975 2a98 0027     		movs	r7, #0
 4976 2a9a 4FF02008 		mov	r8, #32
 4977 2a9e 01E0     		b	.L258
 4978              	.L1567:
 4979 2aa0 4FF03A08 		mov	r8, #58
 4980              	.L258:
 4981 2aa4 D5F8B011 		ldr	r1, [r5, #432]
 4982 2aa8 2B68     		ldr	r3, [r5]
 4983 2aaa 3944     		add	r1, r1, r7
 4984 2aac 03EB8103 		add	r3, r3, r1, lsl #2
 4985 2ab0 0137     		adds	r7, r7, #1
 4986 2ab2 D3F84801 		ldr	r0, [r3, #328]	@ float
 4987 2ab6 FFF7FEFF 		bl	__aeabi_f2d
 4988 2aba 4246     		mov	r2, r8
 4989 2abc CDE90001 		strd	r0, [sp]
 4990 2ac0 3046     		mov	r0, r6
 4991 2ac2 1649     		ldr	r1, .L1628+60
 4992 2ac4 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 4993 2ac8 D5F8B431 		ldr	r3, [r5, #436]
 4994 2acc BB42     		cmp	r3, r7
 4995 2ace E7D8     		bhi	.L1567
 4996              	.L252:
 4997 2ad0 A368     		ldr	r3, [r4, #8]
 4998 2ad2 0027     		movs	r7, #0
 4999 2ad4 FDF711BF 		b	.L763
 5000              	.L888:
 5001 2ad8 361A     		subs	r6, r6, r0
 5002 2ada FFF7F9BB 		b	.L889
 5003              	.L1629:
 5004 2ade 00BF     		.align	2
 5005              	.L1628:
 5006 2ae0 9C000000 		.word	.LC7
 5007 2ae4 A0000000 		.word	.LC8
 5008 2ae8 00007042 		.word	1114636288
 5009 2aec 080E0000 		.word	.LC129
 5010 2af0 940E0000 		.word	.LC131
 5011 2af4 A80E0000 		.word	.LC132
 5012 2af8 8C010000 		.word	.LC30
 5013 2afc 00000000 		.word	_ZN6GCodes11axisLettersE
 5014 2b00 A0140000 		.word	.LC176
 5015 2b04 A40B0000 		.word	.LC106
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 89


 5016 2b08 A8140000 		.word	.LC177
 5017 2b0c 00000000 		.word	reprap
 5018 2b10 B4040000 		.word	.LC53
 5019 2b14 C4040000 		.word	.LC55
 5020 2b18 C0040000 		.word	.LC54
 5021 2b1c D0040000 		.word	.LC56
 5022              	.L1474:
 5023 2b20 2046     		mov	r0, r4
 5024 2b22 4521     		movs	r1, #69
 5025 2b24 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5026 2b28 0028     		cmp	r0, #0
 5027 2b2a 41F03A84 		bne	.L1568
 5028 2b2e B9F1000F 		cmp	r9, #0
 5029 2b32 41F0B481 		bne	.L762
 5030 2b36 BAF1000F 		cmp	r10, #0
 5031 2b3a 01F03C87 		beq	.L764
 5032 2b3e 4F46     		mov	r7, r9
 5033 2b40 A368     		ldr	r3, [r4, #8]
 5034 2b42 FDF7DABE 		b	.L763
 5035              	.L207:
 5036 2b46 A368     		ldr	r3, [r4, #8]
 5037 2b48 0027     		movs	r7, #0
 5038 2b4a FDF7D6BE 		b	.L763
 5039              	.L915:
 5040 2b4e 9946     		mov	r9, r3
 5041              	.L143:
 5042 2b50 2046     		mov	r0, r4
 5043 2b52 4521     		movs	r1, #69
 5044 2b54 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5045 2b58 0028     		cmp	r0, #0
 5046 2b5a 41F0EB83 		bne	.L1569
 5047 2b5e 0746     		mov	r7, r0
 5048              	.L146:
 5049 2b60 2046     		mov	r0, r4
 5050 2b62 5321     		movs	r1, #83
 5051 2b64 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5052 2b68 0028     		cmp	r0, #0
 5053 2b6a 41F0D083 		bne	.L1570
 5054 2b6e B9F1000F 		cmp	r9, #0
 5055 2b72 01F0C683 		beq	.L156
 5056 2b76 A368     		ldr	r3, [r4, #8]
 5057 2b78 FDF7BFBE 		b	.L763
 5058              	.L752:
 5059 2b7c D5F8B031 		ldr	r3, [r5, #432]
 5060 2b80 4345     		cmp	r3, r8
 5061 2b82 08D8     		bhi	.L747
 5062              	.L755:
 5063 2b84 05EB8301 		add	r1, r5, r3, lsl #2
 5064 2b88 0133     		adds	r3, r3, #1
 5065 2b8a 4345     		cmp	r3, r8
 5066 2b8c 81ED298A 		fsts	s16, [r1, #164]
 5067 2b90 F8D9     		bls	.L755
 5068 2b92 C5F8B031 		str	r3, [r5, #432]
 5069              	.L747:
 5070 2b96 2846     		mov	r0, r5
 5071 2b98 05F1A401 		add	r1, r5, #164
 5072 2b9c 0122     		movs	r2, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 90


 5073 2b9e FFF7FEFF 		bl	_ZN6GCodes12SetPositionsEPKfb
 5074 2ba2 5246     		mov	r2, r10
 5075 2ba4 2868     		ldr	r0, [r5]
 5076 2ba6 4146     		mov	r1, r8
 5077 2ba8 FFF7FEFF 		bl	_ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig
 5078 2bac D5F8B031 		ldr	r3, [r5, #432]
 5079 2bb0 D5F8B421 		ldr	r2, [r5, #436]
 5080 2bb4 1A44     		add	r2, r2, r3
 5081 2bb6 0A2A     		cmp	r2, #10
 5082 2bb8 7EF655A8 		bls	.L751
 5083 2bbc C3F10A03 		rsb	r3, r3, #10
 5084 2bc0 C5F8B431 		str	r3, [r5, #436]
 5085 2bc4 FEF74FB8 		b	.L751
 5086              	.L300:
 5087 2bc8 2046     		mov	r0, r4
 5088 2bca 5321     		movs	r1, #83
 5089 2bcc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5090 2bd0 0028     		cmp	r0, #0
 5091 2bd2 41F0E584 		bne	.L302
 5092              	.L377:
 5093 2bd6 A368     		ldr	r3, [r4, #8]
 5094 2bd8 0027     		movs	r7, #0
 5095 2bda FDF78EBE 		b	.L763
 5096              	.L313:
 5097 2bde 2868     		ldr	r0, [r5]
 5098 2be0 FFF7FEFF 		bl	_ZNK8Platform20GetElectronicsStringEv
 5099 2be4 A849     		ldr	r1, .L1630
 5100 2be6 0090     		str	r0, [sp]
 5101 2be8 A84A     		ldr	r2, .L1630+4
 5102 2bea A94B     		ldr	r3, .L1630+8
 5103 2bec 3046     		mov	r0, r6
 5104 2bee FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5105 2bf2 FFF7FEFF 		bl	_ZN13DuetExpansion21GetExpansionBoardNameEv
 5106 2bf6 20B1     		cbz	r0, .L314
 5107 2bf8 0246     		mov	r2, r0
 5108 2bfa A649     		ldr	r1, .L1630+12
 5109 2bfc 3046     		mov	r0, r6
 5110 2bfe FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 5111              	.L314:
 5112 2c02 3046     		mov	r0, r6
 5113 2c04 A449     		ldr	r1, .L1630+16
 5114 2c06 A54A     		ldr	r2, .L1630+20
 5115 2c08 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 5116 2c0c 0027     		movs	r7, #0
 5117 2c0e A368     		ldr	r3, [r4, #8]
 5118 2c10 FDF773BE 		b	.L763
 5119              	.L609:
 5120 2c14 3046     		mov	r0, r6
 5121 2c16 A249     		ldr	r1, .L1630+24
 5122 2c18 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5123 2c1c 0127     		movs	r7, #1
 5124 2c1e A368     		ldr	r3, [r4, #8]
 5125 2c20 FDF76BBE 		b	.L763
 5126              	.L659:
 5127 2c24 5321     		movs	r1, #83
 5128 2c26 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5129 2c2a 0028     		cmp	r0, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 91


 5130 2c2c 41F0C684 		bne	.L663
 5131 2c30 0746     		mov	r7, r0
 5132 2c32 A368     		ldr	r3, [r4, #8]
 5133 2c34 FDF761BE 		b	.L763
 5134              	.L844:
 5135 2c38 2B68     		ldr	r3, [r5]
 5136 2c3a 03F6B403 		addw	r3, r3, #2228
 5137 2c3e 0746     		mov	r7, r0
 5138 2c40 1868     		ldr	r0, [r3]	@ float
 5139 2c42 FFF7FEFF 		bl	__aeabi_f2d
 5140 2c46 0B46     		mov	r3, r1
 5141 2c48 0246     		mov	r2, r0
 5142 2c4a 9649     		ldr	r1, .L1630+28
 5143 2c4c 3046     		mov	r0, r6
 5144 2c4e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5145 2c52 A368     		ldr	r3, [r4, #8]
 5146 2c54 FDF751BE 		b	.L763
 5147              	.L308:
 5148 2c58 9348     		ldr	r0, .L1630+32
 5149 2c5a FFF7FEFF 		bl	_ZN6RepRap10PrintDebugEv
 5150 2c5e A368     		ldr	r3, [r4, #8]
 5151 2c60 FDF74BBE 		b	.L763
 5152              	.L1485:
 5153 2c64 2046     		mov	r0, r4
 5154 2c66 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 5155 2c6a 9049     		ldr	r1, .L1630+36
 5156 2c6c 3A46     		mov	r2, r7
 5157 2c6e FFF7FEFF 		bl	strptime
 5158 2c72 0028     		cmp	r0, #0
 5159 2c74 02F07D80 		beq	.L814
 5160 2c78 3846     		mov	r0, r7
 5161 2c7a D5F80080 		ldr	r8, [r5]
 5162 2c7e FFF7FEFF 		bl	mktime
 5163 2c82 0146     		mov	r1, r0
 5164 2c84 4046     		mov	r0, r8
 5165 2c86 FFF7FEFF 		bl	_ZN8Platform7SetDateEl
 5166 2c8a 0028     		cmp	r0, #0
 5167 2c8c 01F07686 		beq	.L1571
 5168 2c90 2046     		mov	r0, r4
 5169 2c92 5321     		movs	r1, #83
 5170 2c94 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5171 2c98 0028     		cmp	r0, #0
 5172 2c9a 3EF47DAA 		beq	.L819
 5173              	.L910:
 5174 2c9e 2046     		mov	r0, r4
 5175 2ca0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 5176 2ca4 8249     		ldr	r1, .L1630+40
 5177 2ca6 3A46     		mov	r2, r7
 5178 2ca8 FFF7FEFF 		bl	strptime
 5179 2cac 0028     		cmp	r0, #0
 5180 2cae 02F05181 		beq	.L817
 5181 2cb2 3846     		mov	r0, r7
 5182 2cb4 2F68     		ldr	r7, [r5]
 5183 2cb6 FFF7FEFF 		bl	mktime
 5184 2cba 0146     		mov	r1, r0
 5185 2cbc 3846     		mov	r0, r7
 5186 2cbe FFF7FEFF 		bl	_ZN8Platform7SetTimeEl
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 92


 5187 2cc2 0028     		cmp	r0, #0
 5188 2cc4 7EF468AA 		bne	.L819
 5189 2cc8 3046     		mov	r0, r6
 5190 2cca 7A49     		ldr	r1, .L1630+44
 5191 2ccc FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 5192              	.L816:
 5193 2cd0 A368     		ldr	r3, [r4, #8]
 5194 2cd2 0127     		movs	r7, #1
 5195 2cd4 FDF711BE 		b	.L763
 5196              	.L201:
 5197 2cd8 3046     		mov	r0, r6
 5198 2cda 7749     		ldr	r1, .L1630+48
 5199 2cdc FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 5200 2ce0 A368     		ldr	r3, [r4, #8]
 5201 2ce2 FDF70ABE 		b	.L763
 5202              	.L477:
 5203 2ce6 2846     		mov	r0, r5
 5204 2ce8 FFF7FEFF 		bl	_ZNK6GCodes17GetBabyStepOffsetEv
 5205 2cec FFF7FEFF 		bl	__aeabi_f2d
 5206 2cf0 0B46     		mov	r3, r1
 5207 2cf2 0246     		mov	r2, r0
 5208 2cf4 7149     		ldr	r1, .L1630+52
 5209 2cf6 3046     		mov	r0, r6
 5210 2cf8 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5211 2cfc A368     		ldr	r3, [r4, #8]
 5212 2cfe FDF7FCBD 		b	.L763
 5213              	.L343:
 5214 2d02 2B68     		ldr	r3, [r5]
 5215 2d04 DFED6E7A 		flds	s15, .L1630+56
 5216 2d08 D3F80C37 		ldr	r3, [r3, #1804]
 5217 2d0c 07EE103A 		fmsr	s14, r3	@ int
 5218 2d10 B8EE477A 		fuitos	s14, s14
 5219 2d14 0746     		mov	r7, r0
 5220 2d16 C7EE277A 		fdivs	s15, s14, s15
 5221 2d1a 17EE900A 		fmrs	r0, s15
 5222 2d1e FFF7FEFF 		bl	__aeabi_f2d
 5223 2d22 0B46     		mov	r3, r1
 5224 2d24 0246     		mov	r2, r0
 5225 2d26 6749     		ldr	r1, .L1630+60
 5226 2d28 3046     		mov	r0, r6
 5227 2d2a FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5228 2d2e A368     		ldr	r3, [r4, #8]
 5229 2d30 FDF7E3BD 		b	.L763
 5230              	.L1495:
 5231 2d34 5C4B     		ldr	r3, .L1630+32
 5232 2d36 D868     		ldr	r0, [r3, #12]
 5233 2d38 90F92F80 		ldrsb	r8, [r0, #47]
 5234 2d3c B8F1FF3F 		cmp	r8, #-1
 5235 2d40 01F00F84 		beq	.L364
 5236 2d44 4146     		mov	r1, r8
 5237 2d46 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 5238 2d4a FFF7FEFF 		bl	__aeabi_f2d
 5239 2d4e 4246     		mov	r2, r8
 5240 2d50 CDE90001 		strd	r0, [sp]
 5241 2d54 3046     		mov	r0, r6
 5242 2d56 5C49     		ldr	r1, .L1630+64
 5243 2d58 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 93


 5244 2d5c 4F46     		mov	r7, r9
 5245 2d5e A368     		ldr	r3, [r4, #8]
 5246 2d60 FDF7CBBD 		b	.L763
 5247              	.L979:
 5248 2d64 0746     		mov	r7, r0
 5249 2d66 FEF709BC 		b	.L665
 5250              	.L576:
 5251 2d6a 3046     		mov	r0, r6
 5252 2d6c 5749     		ldr	r1, .L1630+68
 5253 2d6e FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 5254 2d72 2868     		ldr	r0, [r5]
 5255 2d74 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 5256 2d78 0528     		cmp	r0, #5
 5257 2d7a 02F20080 		bhi	.L577
 5258 2d7e DFE800F0 		tbb	[pc, r0]
 5259              	.L579:
 5260 2d82 23       		.byte	(.L578-.L579)/2
 5261 2d83 23       		.byte	(.L578-.L579)/2
 5262 2d84 1B       		.byte	(.L580-.L579)/2
 5263 2d85 13       		.byte	(.L581-.L579)/2
 5264 2d86 0B       		.byte	(.L582-.L579)/2
 5265 2d87 03       		.byte	(.L583-.L579)/2
 5266              		.align	1
 5267              	.L583:
 5268 2d88 3046     		mov	r0, r6
 5269 2d8a 5149     		ldr	r1, .L1630+72
 5270 2d8c FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 5271 2d90 0027     		movs	r7, #0
 5272 2d92 A368     		ldr	r3, [r4, #8]
 5273 2d94 FDF7B1BD 		b	.L763
 5274              	.L582:
 5275 2d98 3046     		mov	r0, r6
 5276 2d9a 4E49     		ldr	r1, .L1630+76
 5277 2d9c FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 5278 2da0 0027     		movs	r7, #0
 5279 2da2 A368     		ldr	r3, [r4, #8]
 5280 2da4 FDF7A9BD 		b	.L763
 5281              	.L581:
 5282 2da8 3046     		mov	r0, r6
 5283 2daa 4B49     		ldr	r1, .L1630+80
 5284 2dac FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 5285 2db0 0027     		movs	r7, #0
 5286 2db2 A368     		ldr	r3, [r4, #8]
 5287 2db4 FDF7A1BD 		b	.L763
 5288              	.L580:
 5289 2db8 3046     		mov	r0, r6
 5290 2dba 4849     		ldr	r1, .L1630+84
 5291 2dbc FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 5292 2dc0 0027     		movs	r7, #0
 5293 2dc2 A368     		ldr	r3, [r4, #8]
 5294 2dc4 FDF799BD 		b	.L763
 5295              	.L578:
 5296 2dc8 3046     		mov	r0, r6
 5297 2dca 4549     		ldr	r1, .L1630+88
 5298 2dcc FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 5299 2dd0 0027     		movs	r7, #0
 5300 2dd2 A368     		ldr	r3, [r4, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 94


 5301 2dd4 FDF791BD 		b	.L763
 5302              	.L572:
 5303 2dd8 2868     		ldr	r0, [r5]
 5304 2dda 4249     		ldr	r1, .L1630+92
 5305 2ddc 90F89EE0 		ldrb	lr, [r0, #158]	@ zero_extendqisi2
 5306 2de0 90F89D30 		ldrb	r3, [r0, #157]	@ zero_extendqisi2
 5307 2de4 90F89C20 		ldrb	r2, [r0, #156]	@ zero_extendqisi2
 5308 2de8 CDF800E0 		str	lr, [sp]
 5309 2dec 90F89F00 		ldrb	r0, [r0, #159]	@ zero_extendqisi2
 5310 2df0 0190     		str	r0, [sp, #4]
 5311 2df2 3046     		mov	r0, r6
 5312 2df4 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5313 2df8 A368     		ldr	r3, [r4, #8]
 5314 2dfa FDF77EBD 		b	.L763
 5315              	.L560:
 5316 2dfe 2F68     		ldr	r7, [r5]
 5317 2e00 3949     		ldr	r1, .L1630+96
 5318 2e02 97F8A600 		ldrb	r0, [r7, #166]	@ zero_extendqisi2
 5319 2e06 97F8A530 		ldrb	r3, [r7, #165]	@ zero_extendqisi2
 5320 2e0a 97F8A420 		ldrb	r2, [r7, #164]	@ zero_extendqisi2
 5321 2e0e 0090     		str	r0, [sp]
 5322 2e10 97F8A700 		ldrb	r0, [r7, #167]	@ zero_extendqisi2
 5323 2e14 0190     		str	r0, [sp, #4]
 5324 2e16 97F8A800 		ldrb	r0, [r7, #168]	@ zero_extendqisi2
 5325 2e1a 0290     		str	r0, [sp, #8]
 5326 2e1c 97F8A900 		ldrb	r0, [r7, #169]	@ zero_extendqisi2
 5327 2e20 0390     		str	r0, [sp, #12]
 5328 2e22 3046     		mov	r0, r6
 5329 2e24 7746     		mov	r7, lr
 5330 2e26 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5331 2e2a A368     		ldr	r3, [r4, #8]
 5332 2e2c FDF765BD 		b	.L763
 5333              	.L590:
 5334 2e30 2146     		mov	r1, r4
 5335 2e32 2846     		mov	r0, r5
 5336 2e34 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 5337 2e38 2846     		mov	r0, r5
 5338 2e3a 2146     		mov	r1, r4
 5339 2e3c 3246     		mov	r2, r6
 5340 2e3e FFF7FEFF 		bl	_ZN6GCodes10DefineGridER11GCodeBufferR9StringRef
 5341 2e42 A368     		ldr	r3, [r4, #8]
 5342 2e44 0746     		mov	r7, r0
 5343 2e46 FDF758BD 		b	.L763
 5344              	.L927:
 5345 2e4a 0027     		movs	r7, #0
 5346 2e4c FDF755BD 		b	.L763
 5347              	.L562:
 5348 2e50 1548     		ldr	r0, .L1630+32
 5349 2e52 FFF7FEFF 		bl	_ZNK6RepRap7GetNameEv
 5350 2e56 2549     		ldr	r1, .L1630+100
 5351 2e58 0246     		mov	r2, r0
 5352 2e5a 3046     		mov	r0, r6
 5353 2e5c FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5354 2e60 A368     		ldr	r3, [r4, #8]
 5355 2e62 FDF74ABD 		b	.L763
 5356              	.L195:
 5357 2e66 3046     		mov	r0, r6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 95


 5358 2e68 2149     		ldr	r1, .L1630+104
 5359 2e6a FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 5360 2e6e 0127     		movs	r7, #1
 5361 2e70 A368     		ldr	r3, [r4, #8]
 5362 2e72 FDF742BD 		b	.L763
 5363              	.L486:
 5364 2e76 0C4B     		ldr	r3, .L1630+32
 5365 2e78 3146     		mov	r1, r6
 5366 2e7a D868     		ldr	r0, [r3, #12]
 5367 2e7c FFF7FEFF 		bl	_ZNK4Heat17GetAutoTuneStatusER9StringRef
 5368 2e80 A368     		ldr	r3, [r4, #8]
 5369 2e82 FDF73ABD 		b	.L763
 5370              	.L1631:
 5371 2e86 00BF     		.align	2
 5372              	.L1630:
 5373 2e88 90050000 		.word	.LC62
 5374 2e8c C8050000 		.word	.LC63
 5375 2e90 E8050000 		.word	.LC64
 5376 2e94 00060000 		.word	.LC65
 5377 2e98 08060000 		.word	.LC66
 5378 2e9c 1C060000 		.word	.LC67
 5379 2ea0 E8030000 		.word	.LC48
 5380 2ea4 DC140000 		.word	.LC180
 5381 2ea8 00000000 		.word	reprap
 5382 2eac D4130000 		.word	.LC168
 5383 2eb0 08140000 		.word	.LC171
 5384 2eb4 14140000 		.word	.LC172
 5385 2eb8 C0030000 		.word	.LC46
 5386 2ebc 44090000 		.word	.LC93
 5387 2ec0 00007A44 		.word	1148846080
 5388 2ec4 4C060000 		.word	.LC71
 5389 2ec8 E8060000 		.word	.LC76
 5390 2ecc 1C0D0000 		.word	.LC120
 5391 2ed0 6C0D0000 		.word	.LC125
 5392 2ed4 600D0000 		.word	.LC124
 5393 2ed8 580D0000 		.word	.LC123
 5394 2edc 500D0000 		.word	.LC122
 5395 2ee0 280D0000 		.word	.LC121
 5396 2ee4 EC0C0000 		.word	.LC118
 5397 2ee8 700C0000 		.word	.LC115
 5398 2eec 880C0000 		.word	.LC116
 5399 2ef0 60030000 		.word	.LC44
 5400              	.L585:
 5401 2ef4 DFF86483 		ldr	r8, .L1632+24
 5402 2ef8 0146     		mov	r1, r0
 5403 2efa D8F80800 		ldr	r0, [r8, #8]
 5404 2efe FFF7FEFF 		bl	_ZNK4Move16AxisCompensationEa
 5405 2f02 0121     		movs	r1, #1
 5406 2f04 8146     		mov	r9, r0	@ float
 5407 2f06 D8F80800 		ldr	r0, [r8, #8]
 5408 2f0a FFF7FEFF 		bl	_ZNK4Move16AxisCompensationEa
 5409 2f0e 0221     		movs	r1, #2
 5410 2f10 8346     		mov	fp, r0	@ float
 5411 2f12 D8F80800 		ldr	r0, [r8, #8]
 5412 2f16 FFF7FEFF 		bl	_ZNK4Move16AxisCompensationEa
 5413 2f1a 8246     		mov	r10, r0	@ float
 5414 2f1c 4846     		mov	r0, r9	@ float
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 96


 5415 2f1e FFF7FEFF 		bl	__aeabi_f2d
 5416 2f22 8046     		mov	r8, r0
 5417 2f24 5846     		mov	r0, fp	@ float
 5418 2f26 8946     		mov	r9, r1
 5419 2f28 FFF7FEFF 		bl	__aeabi_f2d
 5420 2f2c CDE90001 		strd	r0, [sp]
 5421 2f30 5046     		mov	r0, r10	@ float
 5422 2f32 FFF7FEFF 		bl	__aeabi_f2d
 5423 2f36 4B46     		mov	r3, r9
 5424 2f38 CDE90201 		strd	r0, [sp, #8]
 5425 2f3c 4246     		mov	r2, r8
 5426 2f3e 3046     		mov	r0, r6
 5427 2f40 C049     		ldr	r1, .L1632
 5428 2f42 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5429 2f46 A368     		ldr	r3, [r4, #8]
 5430 2f48 FDF7D7BC 		b	.L763
 5431              	.L933:
 5432 2f4c 0746     		mov	r7, r0
 5433 2f4e FDF7FABF 		b	.L316
 5434              	.L444:
 5435 2f52 95EDB07A 		flds	s14, [r5, #704]
 5436 2f56 DFEDBC7A 		flds	s15, .L1632+4
 5437 2f5a 67EE277A 		fmuls	s15, s14, s15
 5438 2f5e 17EE900A 		fmrs	r0, s15
 5439 2f62 FFF7FEFF 		bl	__aeabi_f2d
 5440 2f66 0022     		movs	r2, #0
 5441 2f68 B84B     		ldr	r3, .L1632+8
 5442 2f6a FFF7FEFF 		bl	__aeabi_dmul
 5443 2f6e 0B46     		mov	r3, r1
 5444 2f70 0246     		mov	r2, r0
 5445 2f72 B749     		ldr	r1, .L1632+12
 5446 2f74 3046     		mov	r0, r6
 5447 2f76 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5448 2f7a A368     		ldr	r3, [r4, #8]
 5449 2f7c FDF7BDBC 		b	.L763
 5450              	.L574:
 5451 2f80 2868     		ldr	r0, [r5]
 5452 2f82 B449     		ldr	r1, .L1632+16
 5453 2f84 90F8A2E0 		ldrb	lr, [r0, #162]	@ zero_extendqisi2
 5454 2f88 90F8A130 		ldrb	r3, [r0, #161]	@ zero_extendqisi2
 5455 2f8c 90F8A020 		ldrb	r2, [r0, #160]	@ zero_extendqisi2
 5456 2f90 CDF800E0 		str	lr, [sp]
 5457 2f94 90F8A300 		ldrb	r0, [r0, #163]	@ zero_extendqisi2
 5458 2f98 0190     		str	r0, [sp, #4]
 5459 2f9a 3046     		mov	r0, r6
 5460 2f9c FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5461 2fa0 A368     		ldr	r3, [r4, #8]
 5462 2fa2 FDF7AABC 		b	.L763
 5463              	.L612:
 5464 2fa6 3046     		mov	r0, r6
 5465 2fa8 AB49     		ldr	r1, .L1632+20
 5466 2faa FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5467 2fae 0127     		movs	r7, #1
 5468 2fb0 A368     		ldr	r3, [r4, #8]
 5469 2fb2 FDF7A2BC 		b	.L763
 5470              	.L936:
 5471 2fb6 0027     		movs	r7, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 97


 5472 2fb8 FDF79FBC 		b	.L763
 5473              	.L937:
 5474 2fbc 0027     		movs	r7, #0
 5475 2fbe FDF79CBC 		b	.L763
 5476              	.L960:
 5477 2fc2 0027     		movs	r7, #0
 5478 2fc4 FDF799BC 		b	.L763
 5479              	.L593:
 5480 2fc8 0121     		movs	r1, #1
 5481 2fca 01FA0AF3 		lsl	r3, r1, r10
 5482 2fce 29EA0309 		bic	r9, r9, r3
 5483 2fd2 8B46     		mov	fp, r1
 5484 2fd4 FDF769BC 		b	.L592
 5485              	.L1528:
 5486 2fd8 2046     		mov	r0, r4
 5487 2fda D9F808A0 		ldr	r10, [r9, #8]
 5488 2fde FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5489 2fe2 06EE900A 		fmsr	s13, r0
 5490 2fe6 C6EE887A 		fdivs	s15, s13, s16
 5491 2fea 4FFA88F1 		sxtb	r1, r8
 5492 2fee 5046     		mov	r0, r10
 5493 2ff0 17EE902A 		fmrs	r2, s15
 5494 2ff4 FFF7FEFF 		bl	_ZN4Move19SetAxisCompensationEaf
 5495 2ff8 FEF77EBF 		b	.L586
 5496              	.L1532:
 5497 2ffc A368     		ldr	r3, [r4, #8]
 5498 2ffe FDF77CBC 		b	.L763
 5499              	.L1473:
 5500 3002 9648     		ldr	r0, .L1632+24
 5501 3004 8168     		ldr	r1, [r0, #8]
 5502 3006 0D91     		str	r1, [sp, #52]
 5503 3008 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 5504 300c 0DF1680A 		add	r10, sp, #104
 5505 3010 0346     		mov	r3, r0
 5506 3012 5146     		mov	r1, r10
 5507 3014 0D98     		ldr	r0, [sp, #52]
 5508 3016 0022     		movs	r2, #0
 5509 3018 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhm
 5510 301c 2046     		mov	r0, r4
 5511 301e 5321     		movs	r1, #83
 5512 3020 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5513 3024 0028     		cmp	r0, #0
 5514 3026 41F04385 		bne	.L1572
 5515 302a 8146     		mov	r9, r0
 5516              	.L803:
 5517 302c D5F8B031 		ldr	r3, [r5, #432]
 5518 3030 EBB1     		cbz	r3, .L804
 5519 3032 0D98     		ldr	r0, [sp, #52]
 5520 3034 8A4F     		ldr	r7, .L1632+28
 5521 3036 00F63448 		addw	r8, r0, #3124
 5522 303a 4FF0000B 		mov	fp, #0
 5523 303e 05E0     		b	.L806
 5524              	.L805:
 5525 3040 D5F8B031 		ldr	r3, [r5, #432]
 5526 3044 5B45     		cmp	r3, fp
 5527 3046 08F10408 		add	r8, r8, #4
 5528 304a 10D9     		bls	.L804
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 98


 5529              	.L806:
 5530 304c 17F80B10 		ldrb	r1, [r7, fp]	@ zero_extendqisi2
 5531 3050 2046     		mov	r0, r4
 5532 3052 0BF1010B 		add	fp, fp, #1
 5533 3056 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5534 305a 0028     		cmp	r0, #0
 5535 305c F0D0     		beq	.L805
 5536 305e 2046     		mov	r0, r4
 5537 3060 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5538 3064 4FF00109 		mov	r9, #1
 5539 3068 C8F80000 		str	r0, [r8]	@ float
 5540 306c E8E7     		b	.L805
 5541              	.L804:
 5542 306e B9F1000F 		cmp	r9, #0
 5543 3072 01F02081 		beq	.L807
 5544 3076 2846     		mov	r0, r5
 5545 3078 5146     		mov	r1, r10
 5546 307a 0122     		movs	r2, #1
 5547 307c FFF7FEFF 		bl	_ZN6GCodes12SetPositionsEPKfb
 5548 3080 2846     		mov	r0, r5
 5549 3082 FFF7FEFF 		bl	_ZN6GCodes18SetAllAxesNotHomedEv
 5550              	.L808:
 5551 3086 A368     		ldr	r3, [r4, #8]
 5552 3088 0027     		movs	r7, #0
 5553 308a FDF736BC 		b	.L763
 5554              	.L193:
 5555 308e 2B6C     		ldr	r3, [r5, #64]
 5556 3090 2846     		mov	r0, r5
 5557 3092 1968     		ldr	r1, [r3]
 5558 3094 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 5559 3098 0028     		cmp	r0, #0
 5560 309a 3DF45FAD 		beq	.L554
 5561 309e 2B6C     		ldr	r3, [r5, #64]
 5562 30a0 2846     		mov	r0, r5
 5563 30a2 1968     		ldr	r1, [r3]
 5564 30a4 FFF7FEFF 		bl	_ZN6GCodes7DoPauseER11GCodeBuffer
 5565 30a8 A368     		ldr	r3, [r4, #8]
 5566 30aa FDF726BC 		b	.L763
 5567              	.L326:
 5568 30ae 002F     		cmp	r7, #0
 5569 30b0 7FF4A7AC 		bne	.L885
 5570 30b4 95F8D633 		ldrb	r3, [r5, #982]	@ zero_extendqisi2
 5571 30b8 002B     		cmp	r3, #0
 5572 30ba 7FF4A2AC 		bne	.L885
 5573 30be 674B     		ldr	r3, .L1632+24
 5574 30c0 0121     		movs	r1, #1
 5575 30c2 D868     		ldr	r0, [r3, #12]
 5576 30c4 FFF7FEFF 		bl	_ZNK4Heat27AllHeatersAtSetTemperaturesEb
 5577 30c8 0746     		mov	r7, r0
 5578 30ca 0028     		cmp	r0, #0
 5579 30cc 7FF499AC 		bne	.L885
 5580 30d0 FDF76CBF 		b	.L1428
 5581              	.L1540:
 5582 30d4 08F60428 		addw	r8, r8, #2564
 5583 30d8 D8ED007A 		flds	s15, [r8]
 5584 30dc F5EEC07A 		fcmpezs	s15
 5585 30e0 F1EE10FA 		fmstat
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 99


 5586 30e4 7FF75BA8 		ble	.L535
 5587 30e8 17EE900A 		fmrs	r0, s15
 5588 30ec FFF7FEFF 		bl	__aeabi_f2d
 5589 30f0 0B46     		mov	r3, r1
 5590 30f2 0246     		mov	r2, r0
 5591 30f4 5B49     		ldr	r1, .L1632+32
 5592 30f6 3046     		mov	r0, r6
 5593 30f8 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5594 30fc A368     		ldr	r3, [r4, #8]
 5595 30fe FDF7FCBB 		b	.L763
 5596              	.L204:
 5597 3102 3046     		mov	r0, r6
 5598 3104 5449     		ldr	r1, .L1632+20
 5599 3106 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5600 310a 0127     		movs	r7, #1
 5601 310c A368     		ldr	r3, [r4, #8]
 5602 310e FDF7F4BB 		b	.L763
 5603              	.L323:
 5604 3112 2046     		mov	r0, r4
 5605 3114 4321     		movs	r1, #67
 5606 3116 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5607 311a 0028     		cmp	r0, #0
 5608 311c 7FF466AC 		bne	.L321
 5609 3120 6FE4     		b	.L885
 5610              	.L303:
 5611 3122 4E48     		ldr	r0, .L1632+24
 5612 3124 FFF7FEFF 		bl	_ZNK6RepRap23GetCurrentOrDefaultToolEv
 5613 3128 0746     		mov	r7, r0
 5614 312a FDF7A2BC 		b	.L304
 5615              	.L179:
 5616 312e B9F1200F 		cmp	r9, #32
 5617 3132 02F0EE80 		beq	.L1573
 5618              	.L180:
 5619 3136 2046     		mov	r0, r4
 5620 3138 0021     		movs	r1, #0
 5621 313a FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringEb
 5622 313e 0746     		mov	r7, r0
 5623 3140 0028     		cmp	r0, #0
 5624 3142 01F01386 		beq	.L1574
 5625 3146 2846     		mov	r0, r5
 5626 3148 3946     		mov	r1, r7
 5627 314a FFF7FEFF 		bl	_ZN6GCodes16QueueFileToPrintEPKc
 5628 314e D5F87432 		ldr	r3, [r5, #628]
 5629 3152 002B     		cmp	r3, #0
 5630 3154 02F0FB80 		beq	.L181
 5631 3158 DFF800A1 		ldr	r10, .L1632+24
 5632 315c 3946     		mov	r1, r7
 5633 315e DAF81C00 		ldr	r0, [r10, #28]
 5634 3162 FFF7FEFF 		bl	_ZN12PrintMonitor13StartingPrintEPKc
 5635 3166 2868     		ldr	r0, [r5]
 5636 3168 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 5637 316c 0228     		cmp	r0, #2
 5638 316e 02F0DF80 		beq	.L1575
 5639              	.L182:
 5640 3172 3A46     		mov	r2, r7
 5641 3174 3046     		mov	r0, r6
 5642 3176 3C49     		ldr	r1, .L1632+36
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 100


 5643 3178 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5644              	.L884:
 5645 317c B9F1200F 		cmp	r9, #32
 5646 3180 02F0BE82 		beq	.L184
 5647 3184 A368     		ldr	r3, [r4, #8]
 5648 3186 0027     		movs	r7, #0
 5649 3188 FDF7B7BB 		b	.L763
 5650              	.L240:
 5651 318c 2046     		mov	r0, r4
 5652 318e 4521     		movs	r1, #69
 5653 3190 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5654 3194 0028     		cmp	r0, #0
 5655 3196 3FF458AC 		beq	.L251
 5656              	.L896:
 5657 319a 2846     		mov	r0, r5
 5658 319c 2146     		mov	r1, r4
 5659 319e FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 5660 31a2 0028     		cmp	r0, #0
 5661 31a4 3DF4DAAC 		beq	.L554
 5662 31a8 D5F8B431 		ldr	r3, [r5, #436]
 5663 31ac 1293     		str	r3, [sp, #72]
 5664 31ae 2046     		mov	r0, r4
 5665 31b0 12AA     		add	r2, sp, #72
 5666 31b2 13A9     		add	r1, sp, #76
 5667 31b4 0123     		movs	r3, #1
 5668 31b6 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 5669 31ba 1298     		ldr	r0, [sp, #72]
 5670 31bc 70B1     		cbz	r0, .L248
 5671 31be D5F8B011 		ldr	r1, [r5, #432]
 5672 31c2 2A68     		ldr	r2, [r5]
 5673 31c4 13AB     		add	r3, sp, #76
 5674 31c6 5231     		adds	r1, r1, #82
 5675 31c8 03EB8000 		add	r0, r3, r0, lsl #2
 5676 31cc 02EB8102 		add	r2, r2, r1, lsl #2
 5677              	.L250:
 5678 31d0 53F8041B 		ldr	r1, [r3], #4	@ float
 5679 31d4 42F8041B 		str	r1, [r2], #4	@ float
 5680 31d8 8342     		cmp	r3, r0
 5681 31da F9D1     		bne	.L250
 5682              	.L248:
 5683 31dc 5146     		mov	r1, r10
 5684 31de 2846     		mov	r0, r5
 5685 31e0 0122     		movs	r2, #1
 5686 31e2 FFF7FEFF 		bl	_ZN6GCodes12SetPositionsEPKfb
 5687 31e6 73E4     		b	.L252
 5688              	.L875:
 5689 31e8 2046     		mov	r0, r4
 5690 31ea 4521     		movs	r1, #69
 5691 31ec FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5692 31f0 0028     		cmp	r0, #0
 5693 31f2 00F0A587 		beq	.L626
 5694              	.L894:
 5695 31f6 D5F8B431 		ldr	r3, [r5, #436]
 5696 31fa 1393     		str	r3, [sp, #76]
 5697 31fc 1AA9     		add	r1, sp, #104
 5698 31fe 13AA     		add	r2, sp, #76
 5699 3200 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 101


 5700 3202 0123     		movs	r3, #1
 5701 3204 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 5702 3208 1399     		ldr	r1, [sp, #76]
 5703 320a B1B1     		cbz	r1, .L624
 5704 320c D5F8B001 		ldr	r0, [r5, #432]
 5705 3210 2A68     		ldr	r2, [r5]
 5706 3212 D5ED9B6A 		flds	s13, [r5, #620]
 5707 3216 9FED167A 		flds	s14, .L1632+44
 5708 321a 1AAB     		add	r3, sp, #104
 5709 321c 5C30     		adds	r0, r0, #92
 5710 321e 03EB8101 		add	r1, r3, r1, lsl #2
 5711 3222 02EB8002 		add	r2, r2, r0, lsl #2
 5712              	.L625:
 5713 3226 F3EC017A 		fldmias	r3!, {s15}
 5714 322a 67EEA67A 		fmuls	s15, s15, s13
 5715 322e 8B42     		cmp	r3, r1
 5716 3230 67EE877A 		fmuls	s15, s15, s14
 5717 3234 E2EC017A 		fstmias	r2!, {s15}
 5718 3238 F5D1     		bne	.L625
 5719              	.L624:
 5720 323a A368     		ldr	r3, [r4, #8]
 5721 323c 0027     		movs	r7, #0
 5722 323e FDF75CBB 		b	.L763
 5723              	.L1633:
 5724 3242 00BF     		.align	2
 5725              	.L1632:
 5726 3244 880D0000 		.word	.LC127
 5727 3248 00007042 		.word	1114636288
 5728 324c 00005940 		.word	1079574528
 5729 3250 C0080000 		.word	.LC90
 5730 3254 040D0000 		.word	.LC119
 5731 3258 E8030000 		.word	.LC48
 5732 325c 00000000 		.word	reprap
 5733 3260 00000000 		.word	_ZN6GCodes11axisLettersE
 5734 3264 BC0B0000 		.word	.LC109
 5735 3268 98150000 		.word	.LC187
 5736 326c 00007042 		.word	1114636288
 5737 3270 8988883C 		.word	1015580809
 5738 3274 00000000 		.word	0
 5739              	.L1539:
 5740 3278 2046     		mov	r0, r4
 5741 327a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5742 327e 0146     		mov	r1, r0	@ float
 5743 3280 4046     		mov	r0, r8
 5744 3282 FFF7FEFF 		bl	_ZN4Move14SetTaperHeightEf
 5745 3286 0027     		movs	r7, #0
 5746 3288 A368     		ldr	r3, [r4, #8]
 5747 328a FDF736BB 		b	.L763
 5748              	.L1501:
 5749 328e 2046     		mov	r0, r4
 5750 3290 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5751 3294 07EE900A 		fmsr	s15, r0
 5752 3298 F4EE677A 		fcmps	s15, s15
 5753 329c F1EE10FA 		fmstat
 5754 32a0 08D6     		bvs	.L423
 5755 32a2 1FED0E7A 		flds	s14, .L1632+40
 5756 32a6 F4EEC77A 		fcmpes	s15, s14
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 102


 5757 32aa F1EE10FA 		fmstat
 5758 32ae D8BF     		it	le
 5759 32b0 F0EE477A 		fcpysle	s15, s14
 5760              	.L423:
 5761 32b4 1FED127A 		flds	s14, .L1632+44
 5762 32b8 67EE877A 		fmuls	s15, s15, s14
 5763 32bc 2046     		mov	r0, r4
 5764 32be C5EDC47A 		fsts	s15, [r5, #784]
 5765 32c2 5A21     		movs	r1, #90
 5766 32c4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5767 32c8 0028     		cmp	r0, #0
 5768 32ca 3EF4DDA8 		beq	.L426
 5769              	.L425:
 5770 32ce 2046     		mov	r0, r4
 5771 32d0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5772 32d4 07EE900A 		fmsr	s15, r0
 5773 32d8 F4EE677A 		fcmps	s15, s15
 5774 32dc F1EE10FA 		fmstat
 5775 32e0 08D6     		bvs	.L428
 5776 32e2 F5EEC07A 		fcmpezs	s15
 5777 32e6 1FED1D7A 		flds	s14, .L1632+48
 5778 32ea F1EE10FA 		fmstat
 5779 32ee D8BF     		it	le
 5780 32f0 F0EE477A 		fcpysle	s15, s14
 5781              	.L428:
 5782 32f4 C5EDC57A 		fsts	s15, [r5, #788]
 5783 32f8 A368     		ldr	r3, [r4, #8]
 5784 32fa 0027     		movs	r7, #0
 5785 32fc FDF7FDBA 		b	.L763
 5786              	.L1500:
 5787 3300 2046     		mov	r0, r4
 5788 3302 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5789 3306 07EE900A 		fmsr	s15, r0
 5790 330a F4EE677A 		fcmps	s15, s15
 5791 330e F1EE10FA 		fmstat
 5792 3312 08D6     		bvs	.L420
 5793 3314 1FED2B7A 		flds	s14, .L1632+40
 5794 3318 F4EEC77A 		fcmpes	s15, s14
 5795 331c F1EE10FA 		fmstat
 5796 3320 D8BF     		it	le
 5797 3322 F0EE477A 		fcpysle	s15, s14
 5798              	.L420:
 5799 3326 1FED2E7A 		flds	s14, .L1632+44
 5800 332a 67EE877A 		fmuls	s15, s15, s14
 5801 332e 0127     		movs	r7, #1
 5802 3330 C5EDC37A 		fsts	s15, [r5, #780]
 5803 3334 C5EDC47A 		fsts	s15, [r5, #784]
 5804 3338 FEF795B8 		b	.L419
 5805              	.L1499:
 5806 333c 2046     		mov	r0, r4
 5807 333e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5808 3342 07EE900A 		fmsr	s15, r0
 5809 3346 95EDC17A 		flds	s14, [r5, #772]
 5810 334a F4EE677A 		fcmps	s15, s15
 5811 334e F1EE10FA 		fmstat
 5812 3352 B1EE477A 		fnegs	s14, s14
 5813 3356 06D6     		bvs	.L417
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 103


 5814 3358 F4EEC77A 		fcmpes	s15, s14
 5815 335c F1EE10FA 		fmstat
 5816 3360 D8BF     		it	le
 5817 3362 F0EE477A 		fcpysle	s15, s14
 5818              	.L417:
 5819 3366 C5EDC27A 		fsts	s15, [r5, #776]
 5820 336a 0127     		movs	r7, #1
 5821 336c FEF774B8 		b	.L416
 5822              	.L1498:
 5823 3370 2046     		mov	r0, r4
 5824 3372 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5825 3376 07EE900A 		fmsr	s15, r0
 5826 337a F4EE677A 		fcmps	s15, s15
 5827 337e F1EE10FA 		fmstat
 5828 3382 08D6     		bvs	.L414
 5829 3384 F5EEC07A 		fcmpezs	s15
 5830 3388 1FED467A 		flds	s14, .L1632+48
 5831 338c F1EE10FA 		fmstat
 5832 3390 D8BF     		it	le
 5833 3392 F0EE477A 		fcpysle	s15, s14
 5834              	.L414:
 5835 3396 C5EDC17A 		fsts	s15, [r5, #772]
 5836 339a 0127     		movs	r7, #1
 5837 339c FEF755B8 		b	.L413
 5838              	.L1556:
 5839 33a0 2868     		ldr	r0, [r5]
 5840 33a2 4946     		mov	r1, r9
 5841 33a4 FFF7FEFF 		bl	_ZN8Platform13SetZProbeAxesEm
 5842 33a8 FFF7C2B9 		b	.L591
 5843              	.L1531:
 5844 33ac 2046     		mov	r0, r4
 5845 33ae FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5846 33b2 0246     		mov	r2, r0
 5847 33b4 FEF71BBE 		b	.L545
 5848              	.L1530:
 5849 33b8 2046     		mov	r0, r4
 5850 33ba FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5851 33be 0746     		mov	r7, r0
 5852 33c0 FEF70CBE 		b	.L544
 5853              	.L498:
 5854 33c4 2046     		mov	r0, r4
 5855 33c6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5856 33ca 0728     		cmp	r0, #7
 5857 33cc 8046     		mov	r8, r0
 5858 33ce 41F21281 		bls	.L499
 5859 33d2 A368     		ldr	r3, [r4, #8]
 5860 33d4 0027     		movs	r7, #0
 5861 33d6 FDF790BA 		b	.L763
 5862              	.L1492:
 5863 33da 2046     		mov	r0, r4
 5864 33dc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 5865 33e0 0746     		mov	r7, r0
 5866 33e2 FDF760BF 		b	.L611
 5867              	.L1463:
 5868 33e6 3046     		mov	r0, r6
 5869 33e8 AA49     		ldr	r1, .L1634
 5870 33ea 0823     		movs	r3, #8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 104


 5871 33ec FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5872 33f0 FDF707BB 		b	.L271
 5873              	.L905:
 5874 33f4 2F68     		ldr	r7, [r5]
 5875 33f6 2046     		mov	r0, r4
 5876 33f8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5877 33fc 07F6A403 		addw	r3, r7, #2212
 5878 3400 0027     		movs	r7, #0
 5879 3402 1860     		str	r0, [r3]	@ float
 5880 3404 A368     		ldr	r3, [r4, #8]
 5881 3406 FDF778BA 		b	.L763
 5882              	.L1545:
 5883 340a 2F68     		ldr	r7, [r5]
 5884 340c 2046     		mov	r0, r4
 5885 340e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5886 3412 07F50A67 		add	r7, r7, #2208
 5887 3416 4421     		movs	r1, #68
 5888 3418 3860     		str	r0, [r7]	@ float
 5889 341a 2046     		mov	r0, r4
 5890 341c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5891 3420 0028     		cmp	r0, #0
 5892 3422 E7D1     		bne	.L905
 5893 3424 0746     		mov	r7, r0
 5894 3426 A368     		ldr	r3, [r4, #8]
 5895 3428 FDF767BA 		b	.L763
 5896              	.L1493:
 5897 342c 9A48     		ldr	r0, .L1634+4
 5898 342e FFF7FEFF 		bl	_ZN6RepRap13EmergencyStopEv
 5899 3432 2046     		mov	r0, r4
 5900 3434 5021     		movs	r1, #80
 5901 3436 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5902 343a 0028     		cmp	r0, #0
 5903 343c 41F0AB84 		bne	.L1576
 5904 3440 0146     		mov	r1, r0
 5905              	.L864:
 5906 3442 2868     		ldr	r0, [r5]
 5907 3444 0022     		movs	r2, #0
 5908 3446 FFF7FEFF 		bl	_ZN8Platform13SoftwareResetEtPKm
 5909 344a 0027     		movs	r7, #0
 5910 344c A368     		ldr	r3, [r4, #8]
 5911 344e FDF754BA 		b	.L763
 5912              	.L1494:
 5913 3452 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5914 3456 0028     		cmp	r0, #0
 5915 3458 C1F2DD83 		blt	.L1577
 5916 345c 0728     		cmp	r0, #7
 5917 345e 01F35685 		bgt	.L359
 5918 3462 8D4B     		ldr	r3, .L1634+4
 5919 3464 DB68     		ldr	r3, [r3, #12]
 5920 3466 0027     		movs	r7, #0
 5921 3468 83F82F00 		strb	r0, [r3, #47]
 5922              	.L358:
 5923 346c 2046     		mov	r0, r4
 5924 346e 5321     		movs	r1, #83
 5925 3470 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5926 3474 0028     		cmp	r0, #0
 5927 3476 7DF466AF 		bne	.L897
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 105


 5928 347a A368     		ldr	r3, [r4, #8]
 5929 347c FDF73DBA 		b	.L763
 5930              	.L683:
 5931 3480 3046     		mov	r0, r6
 5932 3482 8649     		ldr	r1, .L1634+8
 5933 3484 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 5934 3488 D5F8B071 		ldr	r7, [r5, #432]
 5935 348c 002F     		cmp	r7, #0
 5936 348e 01F0A986 		beq	.L1578
 5937 3492 834F     		ldr	r7, .L1634+12
 5938 3494 DFF82CA2 		ldr	r10, .L1634+48
 5939 3498 DFF82C92 		ldr	r9, .L1634+52
 5940 349c 4FF00008 		mov	r8, #0
 5941 34a0 0EE0     		b	.L687
 5942              	.L1580:
 5943 34a2 0129     		cmp	r1, #1
 5944 34a4 22D0     		beq	.L984
 5945 34a6 D9B9     		cbnz	r1, .L684
 5946              	.L685:
 5947 34a8 0090     		str	r0, [sp]
 5948 34aa 7E49     		ldr	r1, .L1634+16
 5949 34ac 3046     		mov	r0, r6
 5950 34ae FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 5951 34b2 D5F8B031 		ldr	r3, [r5, #432]
 5952 34b6 08F10108 		add	r8, r8, #1
 5953 34ba 4345     		cmp	r3, r8
 5954 34bc 40F2EB84 		bls	.L1579
 5955              	.L687:
 5956 34c0 2968     		ldr	r1, [r5]
 5957 34c2 17F80820 		ldrb	r2, [r7, r8]	@ zero_extendqisi2
 5958 34c6 784B     		ldr	r3, .L1634+20
 5959 34c8 7848     		ldr	r0, .L1634+24
 5960 34ca 08F5AA7C 		add	ip, r8, #340
 5961 34ce 01EB080E 		add	lr, r1, r8
 5962 34d2 51F82C10 		ldr	r1, [r1, ip, lsl #2]
 5963 34d6 9EF868E5 		ldrb	lr, [lr, #1384]	@ zero_extendqisi2
 5964 34da 0229     		cmp	r1, #2
 5965 34dc E1D1     		bne	.L1580
 5966 34de 744B     		ldr	r3, .L1634+28
 5967              	.L684:
 5968 34e0 BEF1000F 		cmp	lr, #0
 5969 34e4 0CBF     		ite	eq
 5970 34e6 5046     		moveq	r0, r10
 5971 34e8 4846     		movne	r0, r9
 5972 34ea DDE7     		b	.L685
 5973              	.L984:
 5974 34ec 714B     		ldr	r3, .L1634+32
 5975 34ee F7E7     		b	.L684
 5976              	.L1516:
 5977 34f0 2046     		mov	r0, r4
 5978 34f2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5979 34f6 10F1000A 		adds	r10, r0, #0
 5980 34fa 18BF     		it	ne
 5981 34fc 4FF0010A 		movne	r10, #1
 5982 3500 FEF733BB 		b	.L676
 5983              	.L907:
 5984 3504 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 106


 5985 3506 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5986 350a 634B     		ldr	r3, .L1634+4
 5987 350c 0028     		cmp	r0, #0
 5988 350e 01F0EA80 		beq	.L568
 5989 3512 5868     		ldr	r0, [r3, #4]
 5990 3514 FFF7FEFF 		bl	_ZN7Network6EnableEv
 5991              	.L569:
 5992 3518 A368     		ldr	r3, [r4, #8]
 5993 351a 0027     		movs	r7, #0
 5994 351c FDF7EDB9 		b	.L763
 5995              	.L1478:
 5996 3520 2846     		mov	r0, r5
 5997 3522 2146     		mov	r1, r4
 5998 3524 4FF40A72 		mov	r2, #552
 5999 3528 FFF7FEFF 		bl	_ZN6GCodes18SetEthernetAddressER11GCodeBufferi
 6000 352c 2046     		mov	r0, r4
 6001 352e 5321     		movs	r1, #83
 6002 3530 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6003 3534 0028     		cmp	r0, #0
 6004 3536 E5D1     		bne	.L907
 6005 3538 0746     		mov	r7, r0
 6006 353a A368     		ldr	r3, [r4, #8]
 6007 353c FDF7DDB9 		b	.L763
 6008              	.L1519:
 6009 3540 2046     		mov	r0, r4
 6010 3542 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6011 3546 0146     		mov	r1, r0
 6012 3548 FEF765BB 		b	.L481
 6013              	.L1518:
 6014 354c 2046     		mov	r0, r4
 6015 354e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6016 3552 0746     		mov	r7, r0
 6017 3554 FEF756BB 		b	.L480
 6018              	.L1491:
 6019 3558 2046     		mov	r0, r4
 6020 355a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 6021 355e 0746     		mov	r7, r0
 6022 3560 FDF787BE 		b	.L608
 6023              	.L440:
 6024 3564 3046     		mov	r0, r6
 6025 3566 5449     		ldr	r1, .L1634+36
 6026 3568 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 6027 356c D5F8B071 		ldr	r7, [r5, #432]
 6028 3570 002F     		cmp	r7, #0
 6029 3572 01F0B786 		beq	.L1581
 6030 3576 4A4F     		ldr	r7, .L1634+12
 6031 3578 4FF00008 		mov	r8, #0
 6032 357c 4FF02D0B 		mov	fp, #45
 6033 3580 01E0     		b	.L442
 6034              	.L441:
 6035 3582 4FF02C0B 		mov	fp, #44
 6036              	.L442:
 6037 3586 2968     		ldr	r1, [r5]
 6038 3588 17F808A0 		ldrb	r10, [r7, r8]	@ zero_extendqisi2
 6039 358c 01EB8809 		add	r9, r1, r8, lsl #2
 6040 3590 09F5A763 		add	r3, r9, #1336
 6041 3594 09F5A469 		add	r9, r9, #1312
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 107


 6042 3598 1868     		ldr	r0, [r3]	@ float
 6043 359a FFF7FEFF 		bl	__aeabi_f2d
 6044 359e CDE90001 		strd	r0, [sp]
 6045 35a2 D9F80000 		ldr	r0, [r9]	@ float
 6046 35a6 FFF7FEFF 		bl	__aeabi_f2d
 6047 35aa 5346     		mov	r3, r10
 6048 35ac CDE90201 		strd	r0, [sp, #8]
 6049 35b0 5A46     		mov	r2, fp
 6050 35b2 3046     		mov	r0, r6
 6051 35b4 4149     		ldr	r1, .L1634+40
 6052 35b6 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 6053 35ba D5F8B031 		ldr	r3, [r5, #432]
 6054 35be 08F10108 		add	r8, r8, #1
 6055 35c2 4345     		cmp	r3, r8
 6056 35c4 DDD8     		bhi	.L441
 6057 35c6 A368     		ldr	r3, [r4, #8]
 6058 35c8 0027     		movs	r7, #0
 6059 35ca FDF796B9 		b	.L763
 6060              	.L1483:
 6061 35ce 2046     		mov	r0, r4
 6062 35d0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6063 35d4 B0F1010B 		subs	fp, r0, #1
 6064 35d8 DBF1000A 		rsbs	r10, fp, #0
 6065 35dc 5AEB0B0A 		adcs	r10, r10, fp
 6066 35e0 FDF77CBD 		b	.L432
 6067              	.L902:
 6068 35e4 2046     		mov	r0, r4
 6069 35e6 2F68     		ldr	r7, [r5]
 6070 35e8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6071 35ec C7F84401 		str	r0, [r7, #324]	@ float
 6072 35f0 A368     		ldr	r3, [r4, #8]
 6073 35f2 0027     		movs	r7, #0
 6074 35f4 FDF781B9 		b	.L763
 6075              	.L1497:
 6076 35f8 2046     		mov	r0, r4
 6077 35fa 2F68     		ldr	r7, [r5]
 6078 35fc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6079 3600 5421     		movs	r1, #84
 6080 3602 C7F84001 		str	r0, [r7, #320]	@ float
 6081 3606 2046     		mov	r0, r4
 6082 3608 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6083 360c 0028     		cmp	r0, #0
 6084 360e E9D1     		bne	.L902
 6085 3610 0746     		mov	r7, r0
 6086 3612 A368     		ldr	r3, [r4, #8]
 6087 3614 FDF771B9 		b	.L763
 6088              	.L1564:
 6089 3618 2046     		mov	r0, r4
 6090 361a 4921     		movs	r1, #73
 6091 361c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6092 3620 0028     		cmp	r0, #0
 6093 3622 41F03885 		bne	.L829
 6094 3626 BAF1000F 		cmp	r10, #0
 6095 362a 3FF47FA9 		beq	.L895
 6096              	.L912:
 6097 362e A368     		ldr	r3, [r4, #8]
 6098 3630 0027     		movs	r7, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 108


 6099 3632 FDF762B9 		b	.L763
 6100              	.L340:
 6101 3636 2046     		mov	r0, r4
 6102 3638 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6103 363c 0146     		mov	r1, r0
 6104 363e 0028     		cmp	r0, #0
 6105 3640 3DF4C4AC 		beq	.L341
 6106 3644 2868     		ldr	r0, [r5]
 6107 3646 FFF7FEFF 		bl	_ZN8Platform14DiagnosticTestEi
 6108 364a 0027     		movs	r7, #0
 6109 364c A368     		ldr	r3, [r4, #8]
 6110 364e FDF754B9 		b	.L763
 6111              	.L1527:
 6112 3652 2046     		mov	r0, r4
 6113 3654 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6114 3658 0030     		adds	r0, r0, #0
 6115 365a 18BF     		it	ne
 6116 365c 0120     		movne	r0, #1
 6117 365e 85F89602 		strb	r0, [r5, #662]
 6118 3662 A368     		ldr	r3, [r4, #8]
 6119 3664 0027     		movs	r7, #0
 6120 3666 FDF748B9 		b	.L763
 6121              	.L697:
 6122 366a 2046     		mov	r0, r4
 6123 366c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6124 3670 0138     		subs	r0, r0, #1
 6125 3672 0228     		cmp	r0, #2
 6126 3674 9CBF     		itt	ls
 6127 3676 124B     		ldrls	r3, .L1634+44
 6128 3678 53F820A0 		ldrls	r10, [r3, r0, lsl #2]
 6129 367c D5F8B031 		ldr	r3, [r5, #432]
 6130 3680 88BF     		it	hi
 6131 3682 4FF0000A 		movhi	r10, #0
 6132 3686 002B     		cmp	r3, #0
 6133 3688 00F00284 		beq	.L703
 6134 368c 044F     		ldr	r7, .L1634+12
 6135 368e 4FF00008 		mov	r8, #0
 6136 3692 22E0     		b	.L705
 6137              	.L1635:
 6138              		.align	2
 6139              	.L1634:
 6140 3694 D8040000 		.word	.LC57
 6141 3698 00000000 		.word	reprap
 6142 369c 50110000 		.word	.LC148
 6143 36a0 00000000 		.word	_ZN6GCodes11axisLettersE
 6144 36a4 68110000 		.word	.LC149
 6145 36a8 24010000 		.word	.LC22
 6146 36ac A4000000 		.word	.LC9
 6147 36b0 2C010000 		.word	.LC23
 6148 36b4 38010000 		.word	.LC24
 6149 36b8 74080000 		.word	.LC87
 6150 36bc 84080000 		.word	.LC88
 6151 36c0 00000000 		.word	.LANCHOR6
 6152 36c4 40010000 		.word	.LC25
 6153 36c8 44010000 		.word	.LC26
 6154              	.L704:
 6155 36cc D5F8B031 		ldr	r3, [r5, #432]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 109


 6156 36d0 08F10108 		add	r8, r8, #1
 6157 36d4 4345     		cmp	r3, r8
 6158 36d6 40F2DB83 		bls	.L703
 6159              	.L705:
 6160 36da 2046     		mov	r0, r4
 6161 36dc 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 6162 36e0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6163 36e4 0028     		cmp	r0, #0
 6164 36e6 F1D0     		beq	.L704
 6165 36e8 2868     		ldr	r0, [r5]
 6166 36ea 4146     		mov	r1, r8
 6167 36ec FFF7FEFF 		bl	_ZNK8Platform7StoppedEj
 6168 36f0 8245     		cmp	r10, r0
 6169 36f2 EBD0     		beq	.L704
 6170 36f4 4FF00009 		mov	r9, #0
 6171              	.L700:
 6172 36f8 0DF14C08 		add	r8, sp, #76
 6173 36fc 0723     		movs	r3, #7
 6174 36fe 2046     		mov	r0, r4
 6175 3700 4521     		movs	r1, #69
 6176 3702 C8F80030 		str	r3, [r8]
 6177 3706 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6178 370a 0028     		cmp	r0, #0
 6179 370c 3EF4B0A9 		beq	.L1460
 6180 3710 1AA9     		add	r1, sp, #104
 6181 3712 2046     		mov	r0, r4
 6182 3714 4246     		mov	r2, r8
 6183 3716 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 6184 371a D8F80070 		ldr	r7, [r8]
 6185 371e 002F     		cmp	r7, #0
 6186 3720 3DF4E1AD 		beq	.L175
 6187 3724 1A99     		ldr	r1, [sp, #104]
 6188 3726 0629     		cmp	r1, #6
 6189 3728 14D8     		bhi	.L708
 6190 372a 0DF1680B 		add	fp, sp, #104
 6191 372e 0027     		movs	r7, #0
 6192              	.L709:
 6193 3730 0331     		adds	r1, r1, #3
 6194 3732 2868     		ldr	r0, [r5]
 6195 3734 FFF7FEFF 		bl	_ZNK8Platform7StoppedEj
 6196 3738 8245     		cmp	r10, r0
 6197 373a 07F10107 		add	r7, r7, #1
 6198 373e 7DF4E2AD 		bne	.L210
 6199 3742 D8F80030 		ldr	r3, [r8]
 6200 3746 BB42     		cmp	r3, r7
 6201 3748 7EF692A9 		bls	.L1460
 6202 374c 5BF8041F 		ldr	r1, [fp, #4]!
 6203 3750 0629     		cmp	r1, #6
 6204 3752 EDD9     		bls	.L709
 6205              	.L708:
 6206 3754 3046     		mov	r0, r6
 6207 3756 C749     		ldr	r1, .L1636
 6208 3758 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 6209 375c 0127     		movs	r7, #1
 6210 375e FDF7C6BD 		b	.L1440
 6211              	.L720:
 6212 3762 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 110


 6213 3764 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6214 3768 0928     		cmp	r0, #9
 6215 376a 8046     		mov	r8, r0
 6216 376c 01F23083 		bhi	.L721
 6217 3770 40F24623 		movw	r3, #582
 6218 3774 9945     		cmp	r9, r3
 6219 3776 01F07983 		beq	.L1582
 6220 377a 2046     		mov	r0, r4
 6221 377c 4321     		movs	r1, #67
 6222 377e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6223 3782 0028     		cmp	r0, #0
 6224 3784 41F07584 		bne	.L1583
 6225 3788 0622     		movs	r2, #6
 6226 378a 02FB08F2 		mul	r2, r2, r8
 6227 378e 02F54673 		add	r3, r2, #792
 6228 3792 2B44     		add	r3, r3, r5
 6229 3794 991C     		adds	r1, r3, #2
 6230 3796 5B88     		ldrh	r3, [r3, #2]
 6231 3798 002B     		cmp	r3, #0
 6232 379a 01F05E83 		beq	.L1584
 6233              	.L727:
 6234 379e 2046     		mov	r0, r4
 6235 37a0 5321     		movs	r1, #83
 6236 37a2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6237 37a6 0746     		mov	r7, r0
 6238 37a8 0028     		cmp	r0, #0
 6239 37aa 41F0C184 		bne	.L725
 6240 37ae 4246     		mov	r2, r8
 6241 37b0 B149     		ldr	r1, .L1636+4
 6242 37b2 3046     		mov	r0, r6
 6243 37b4 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 6244 37b8 0623     		movs	r3, #6
 6245 37ba 03FB0858 		mla	r8, r3, r8, r5
 6246 37be 96E80600 		ldmia	r6, {r1, r2}
 6247 37c2 B8F81A33 		ldrh	r3, [r8, #794]
 6248 37c6 2846     		mov	r0, r5
 6249 37c8 FFF7FEFF 		bl	_ZN6GCodes12ListTriggersE9StringReft
 6250 37cc AB49     		ldr	r1, .L1636+8
 6251 37ce 3046     		mov	r0, r6
 6252 37d0 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 6253 37d4 B8F81C33 		ldrh	r3, [r8, #796]
 6254 37d8 96E80600 		ldmia	r6, {r1, r2}
 6255 37dc 2846     		mov	r0, r5
 6256 37de FFF7FEFF 		bl	_ZN6GCodes12ListTriggersE9StringReft
 6257 37e2 3046     		mov	r0, r6
 6258 37e4 A649     		ldr	r1, .L1636+12
 6259 37e6 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 6260 37ea 98F81E33 		ldrb	r3, [r8, #798]	@ zero_extendqisi2
 6261 37ee 012B     		cmp	r3, #1
 6262 37f0 01F07B87 		beq	.L742
 6263 37f4 A368     		ldr	r3, [r4, #8]
 6264 37f6 FDF780B8 		b	.L763
 6265              	.L1487:
 6266 37fa 2046     		mov	r0, r4
 6267 37fc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6268 3800 C0B2     		uxtb	r0, r0
 6269 3802 4FFA80F8 		sxtb	r8, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 111


 6270 3806 B8F1000F 		cmp	r8, #0
 6271 380a C1F25A85 		blt	.L1585
 6272 380e B8F1070F 		cmp	r8, #7
 6273 3812 01F3F881 		bgt	.L1586
 6274 3816 DFF894A2 		ldr	r10, .L1636+56
 6275 381a DAF80C30 		ldr	r3, [r10, #12]
 6276 381e 83F82E00 		strb	r0, [r3, #46]
 6277 3822 FDF7E2BC 		b	.L349
 6278              	.L877:
 6279 3826 2046     		mov	r0, r4
 6280 3828 4521     		movs	r1, #69
 6281 382a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6282 382e 0028     		cmp	r0, #0
 6283 3830 5CD1     		bne	.L901
 6284              	.L400:
 6285 3832 3046     		mov	r0, r6
 6286 3834 9349     		ldr	r1, .L1636+16
 6287 3836 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 6288 383a D5F8B031 		ldr	r3, [r5, #432]
 6289 383e 13B3     		cbz	r3, .L404
 6290 3840 914F     		ldr	r7, .L1636+20
 6291 3842 9FED928A 		flds	s16, .L1636+24
 6292 3846 4FF00008 		mov	r8, #0
 6293              	.L405:
 6294 384a 2B68     		ldr	r3, [r5]
 6295 384c D5ED9B7A 		flds	s15, [r5, #620]
 6296 3850 17F80890 		ldrb	r9, [r7, r8]	@ zero_extendqisi2
 6297 3854 03EB8803 		add	r3, r3, r8, lsl #2
 6298 3858 93ED3C7A 		flds	s14, [r3, #240]
 6299 385c 67EE887A 		fmuls	s15, s15, s16
 6300 3860 08F10108 		add	r8, r8, #1
 6301 3864 87EE277A 		fdivs	s14, s14, s15
 6302 3868 17EE100A 		fmrs	r0, s14
 6303 386c FFF7FEFF 		bl	__aeabi_f2d
 6304 3870 4A46     		mov	r2, r9
 6305 3872 CDE90001 		strd	r0, [sp]
 6306 3876 3046     		mov	r0, r6
 6307 3878 8549     		ldr	r1, .L1636+28
 6308 387a FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 6309 387e D5F8B031 		ldr	r3, [r5, #432]
 6310 3882 4345     		cmp	r3, r8
 6311 3884 E1D8     		bhi	.L405
 6312              	.L404:
 6313 3886 3046     		mov	r0, r6
 6314 3888 8249     		ldr	r1, .L1636+32
 6315 388a FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 6316 388e D5F8B471 		ldr	r7, [r5, #436]
 6317 3892 002F     		cmp	r7, #0
 6318 3894 01F02186 		beq	.L1587
 6319 3898 9FED7C8A 		flds	s16, .L1636+24
 6320 389c 0027     		movs	r7, #0
 6321 389e 4FF02008 		mov	r8, #32
 6322 38a2 01E0     		b	.L407
 6323              	.L406:
 6324 38a4 4FF03A08 		mov	r8, #58
 6325              	.L407:
 6326 38a8 D5F8B011 		ldr	r1, [r5, #432]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 112


 6327 38ac 2B68     		ldr	r3, [r5]
 6328 38ae D5ED9B7A 		flds	s15, [r5, #620]
 6329 38b2 3944     		add	r1, r1, r7
 6330 38b4 03EB8103 		add	r3, r3, r1, lsl #2
 6331 38b8 93ED3C7A 		flds	s14, [r3, #240]
 6332 38bc 67EE887A 		fmuls	s15, s15, s16
 6333 38c0 0137     		adds	r7, r7, #1
 6334 38c2 87EE277A 		fdivs	s14, s14, s15
 6335 38c6 17EE100A 		fmrs	r0, s14
 6336 38ca FFF7FEFF 		bl	__aeabi_f2d
 6337 38ce 4246     		mov	r2, r8
 6338 38d0 CDE90001 		strd	r0, [sp]
 6339 38d4 3046     		mov	r0, r6
 6340 38d6 7049     		ldr	r1, .L1636+36
 6341 38d8 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 6342 38dc D5F8B431 		ldr	r3, [r5, #436]
 6343 38e0 BB42     		cmp	r3, r7
 6344 38e2 DFD8     		bhi	.L406
 6345 38e4 A368     		ldr	r3, [r4, #8]
 6346 38e6 0027     		movs	r7, #0
 6347 38e8 FDF707B8 		b	.L763
 6348              	.L901:
 6349 38ec D5F8B431 		ldr	r3, [r5, #436]
 6350 38f0 1393     		str	r3, [sp, #76]
 6351 38f2 1AA9     		add	r1, sp, #104
 6352 38f4 13AA     		add	r2, sp, #76
 6353 38f6 2046     		mov	r0, r4
 6354 38f8 0123     		movs	r3, #1
 6355 38fa FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 6356 38fe 1399     		ldr	r1, [sp, #76]
 6357 3900 B1B1     		cbz	r1, .L398
 6358 3902 D5F8B001 		ldr	r0, [r5, #432]
 6359 3906 2A68     		ldr	r2, [r5]
 6360 3908 D5ED9B6A 		flds	s13, [r5, #620]
 6361 390c 9FED5F7A 		flds	s14, .L1636+24
 6362 3910 1AAB     		add	r3, sp, #104
 6363 3912 3C30     		adds	r0, r0, #60
 6364 3914 03EB8101 		add	r1, r3, r1, lsl #2
 6365 3918 02EB8002 		add	r2, r2, r0, lsl #2
 6366              	.L399:
 6367 391c F3EC017A 		fldmias	r3!, {s15}
 6368 3920 67EEA67A 		fmuls	s15, s15, s13
 6369 3924 8B42     		cmp	r3, r1
 6370 3926 67EE877A 		fmuls	s15, s15, s14
 6371 392a E2EC017A 		fstmias	r2!, {s15}
 6372 392e F5D1     		bne	.L399
 6373              	.L398:
 6374 3930 A368     		ldr	r3, [r4, #8]
 6375 3932 0027     		movs	r7, #0
 6376 3934 FCF7E1BF 		b	.L763
 6377              	.L1475:
 6378 3938 2046     		mov	r0, r4
 6379 393a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6380 393e 0728     		cmp	r0, #7
 6381 3940 8046     		mov	r8, r0
 6382 3942 7DF69CA9 		bls	.L366
 6383 3946 3046     		mov	r0, r6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 113


 6384 3948 5449     		ldr	r1, .L1636+40
 6385 394a FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 6386 394e 0127     		movs	r7, #1
 6387 3950 A368     		ldr	r3, [r4, #8]
 6388 3952 FCF7D2BF 		b	.L763
 6389              	.L430:
 6390 3956 95EDC18A 		flds	s16, [r5, #772]
 6391 395a 18EE100A 		fmrs	r0, s16
 6392 395e FFF7FEFF 		bl	__aeabi_f2d
 6393 3962 D5EDC27A 		flds	s15, [r5, #776]
 6394 3966 78EE277A 		fadds	s15, s16, s15
 6395 396a 8046     		mov	r8, r0
 6396 396c 17EE900A 		fmrs	r0, s15
 6397 3970 8946     		mov	r9, r1
 6398 3972 FFF7FEFF 		bl	__aeabi_f2d
 6399 3976 D5EDC46A 		flds	s13, [r5, #784]
 6400 397a 95EDC37A 		flds	s14, [r5, #780]
 6401 397e DFED487A 		flds	s15, .L1636+44
 6402 3982 CDE90001 		strd	r0, [sp]
 6403 3986 27EE277A 		fmuls	s14, s14, s15
 6404 398a 66EEA77A 		fmuls	s15, s13, s15
 6405 398e BDEEC77A 		ftosizs	s14, s14
 6406 3992 FDEEE77A 		ftosizs	s15, s15
 6407 3996 D5F81403 		ldr	r0, [r5, #788]	@ float
 6408 399a 8DED027A 		fsts	s14, [sp, #8]	@ int
 6409 399e CDED037A 		fsts	s15, [sp, #12]	@ int
 6410 39a2 FFF7FEFF 		bl	__aeabi_f2d
 6411 39a6 4B46     		mov	r3, r9
 6412 39a8 CDE90401 		strd	r0, [sp, #16]
 6413 39ac 4246     		mov	r2, r8
 6414 39ae 3046     		mov	r0, r6
 6415 39b0 3C49     		ldr	r1, .L1636+48
 6416 39b2 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 6417 39b6 A368     		ldr	r3, [r4, #8]
 6418 39b8 FCF79FBF 		b	.L763
 6419              	.L879:
 6420 39bc 2046     		mov	r0, r4
 6421 39be 4521     		movs	r1, #69
 6422 39c0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6423 39c4 0028     		cmp	r0, #0
 6424 39c6 73D1     		bne	.L900
 6425              	.L386:
 6426 39c8 3046     		mov	r0, r6
 6427 39ca 3749     		ldr	r1, .L1636+52
 6428 39cc FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 6429 39d0 D5F8B031 		ldr	r3, [r5, #432]
 6430 39d4 F3B1     		cbz	r3, .L390
 6431 39d6 2C4F     		ldr	r7, .L1636+20
 6432 39d8 4FF00008 		mov	r8, #0
 6433              	.L391:
 6434 39dc 2B68     		ldr	r3, [r5]
 6435 39de D5ED9B7A 		flds	s15, [r5, #620]
 6436 39e2 17F80890 		ldrb	r9, [r7, r8]	@ zero_extendqisi2
 6437 39e6 03EB8803 		add	r3, r3, r8, lsl #2
 6438 39ea 93ED467A 		flds	s14, [r3, #280]
 6439 39ee C7EE277A 		fdivs	s15, s14, s15
 6440 39f2 08F10108 		add	r8, r8, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 114


 6441 39f6 17EE900A 		fmrs	r0, s15
 6442 39fa FFF7FEFF 		bl	__aeabi_f2d
 6443 39fe 4A46     		mov	r2, r9
 6444 3a00 CDE90001 		strd	r0, [sp]
 6445 3a04 3046     		mov	r0, r6
 6446 3a06 2249     		ldr	r1, .L1636+28
 6447 3a08 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 6448 3a0c D5F8B031 		ldr	r3, [r5, #432]
 6449 3a10 4345     		cmp	r3, r8
 6450 3a12 E3D8     		bhi	.L391
 6451              	.L390:
 6452 3a14 3046     		mov	r0, r6
 6453 3a16 1F49     		ldr	r1, .L1636+32
 6454 3a18 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 6455 3a1c D5F8B471 		ldr	r7, [r5, #436]
 6456 3a20 002F     		cmp	r7, #0
 6457 3a22 01F0AB84 		beq	.L1588
 6458 3a26 0027     		movs	r7, #0
 6459 3a28 4FF02008 		mov	r8, #32
 6460 3a2c 01E0     		b	.L393
 6461              	.L392:
 6462 3a2e 4FF03A08 		mov	r8, #58
 6463              	.L393:
 6464 3a32 D5F8B011 		ldr	r1, [r5, #432]
 6465 3a36 2B68     		ldr	r3, [r5]
 6466 3a38 D5ED9B7A 		flds	s15, [r5, #620]
 6467 3a3c 3944     		add	r1, r1, r7
 6468 3a3e 03EB8103 		add	r3, r3, r1, lsl #2
 6469 3a42 93ED467A 		flds	s14, [r3, #280]
 6470 3a46 C7EE277A 		fdivs	s15, s14, s15
 6471 3a4a 0137     		adds	r7, r7, #1
 6472 3a4c 17EE900A 		fmrs	r0, s15
 6473 3a50 FFF7FEFF 		bl	__aeabi_f2d
 6474 3a54 4246     		mov	r2, r8
 6475 3a56 CDE90001 		strd	r0, [sp]
 6476 3a5a 3046     		mov	r0, r6
 6477 3a5c 0E49     		ldr	r1, .L1636+36
 6478 3a5e FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 6479 3a62 D5F8B431 		ldr	r3, [r5, #436]
 6480 3a66 BB42     		cmp	r3, r7
 6481 3a68 E1D8     		bhi	.L392
 6482 3a6a A368     		ldr	r3, [r4, #8]
 6483 3a6c 0027     		movs	r7, #0
 6484 3a6e FCF744BF 		b	.L763
 6485              	.L1637:
 6486 3a72 00BF     		.align	2
 6487              	.L1636:
 6488 3a74 A4110000 		.word	.LC151
 6489 3a78 0C120000 		.word	.LC155
 6490 3a7c 34120000 		.word	.LC156
 6491 3a80 4C120000 		.word	.LC157
 6492 3a84 C0070000 		.word	.LC84
 6493 3a88 00000000 		.word	_ZN6GCodes11axisLettersE
 6494 3a8c 8988883C 		.word	1015580809
 6495 3a90 AC070000 		.word	.LC82
 6496 3a94 C0040000 		.word	.LC54
 6497 3a98 B8070000 		.word	.LC83
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 115


 6498 3a9c 3C070000 		.word	.LC78
 6499 3aa0 00007042 		.word	1114636288
 6500 3aa4 1C080000 		.word	.LC86
 6501 3aa8 9C070000 		.word	.LC81
 6502 3aac 00000000 		.word	reprap
 6503              	.L900:
 6504 3ab0 D5F8B431 		ldr	r3, [r5, #436]
 6505 3ab4 1393     		str	r3, [sp, #76]
 6506 3ab6 1AA9     		add	r1, sp, #104
 6507 3ab8 13AA     		add	r2, sp, #76
 6508 3aba 2046     		mov	r0, r4
 6509 3abc 0123     		movs	r3, #1
 6510 3abe FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 6511 3ac2 1399     		ldr	r1, [sp, #76]
 6512 3ac4 91B1     		cbz	r1, .L384
 6513 3ac6 D5F8B001 		ldr	r0, [r5, #432]
 6514 3aca 2A68     		ldr	r2, [r5]
 6515 3acc 95ED9B7A 		flds	s14, [r5, #620]
 6516 3ad0 1AAB     		add	r3, sp, #104
 6517 3ad2 4630     		adds	r0, r0, #70
 6518 3ad4 03EB8101 		add	r1, r3, r1, lsl #2
 6519 3ad8 02EB8002 		add	r2, r2, r0, lsl #2
 6520              	.L385:
 6521 3adc F3EC017A 		fldmias	r3!, {s15}
 6522 3ae0 67EE877A 		fmuls	s15, s15, s14
 6523 3ae4 8B42     		cmp	r3, r1
 6524 3ae6 E2EC017A 		fstmias	r2!, {s15}
 6525 3aea F7D1     		bne	.L385
 6526              	.L384:
 6527 3aec A368     		ldr	r3, [r4, #8]
 6528 3aee 0027     		movs	r7, #0
 6529 3af0 FCF703BF 		b	.L763
 6530              	.L1520:
 6531 3af4 2046     		mov	r0, r4
 6532 3af6 DF68     		ldr	r7, [r3, #12]
 6533 3af8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6534 3afc 0028     		cmp	r0, #0
 6535 3afe D4BF     		ite	le
 6536 3b00 0020     		movle	r0, #0
 6537 3b02 0120     		movgt	r0, #1
 6538 3b04 87F82D00 		strb	r0, [r7, #45]
 6539 3b08 A368     		ldr	r3, [r4, #8]
 6540 3b0a 0027     		movs	r7, #0
 6541 3b0c FCF7F5BE 		b	.L763
 6542              	.L1477:
 6543 3b10 2046     		mov	r0, r4
 6544 3b12 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 6545 3b16 0146     		mov	r1, r0
 6546 3b18 B748     		ldr	r0, .L1638
 6547 3b1a FFF7FEFF 		bl	_ZN6RepRap11SetPasswordEPKc
 6548 3b1e 0027     		movs	r7, #0
 6549 3b20 A368     		ldr	r3, [r4, #8]
 6550 3b22 FCF7EABE 		b	.L763
 6551              	.L861:
 6552 3b26 2046     		mov	r0, r4
 6553 3b28 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6554 3b2c 0246     		mov	r2, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 116


 6555 3b2e 0028     		cmp	r0, #0
 6556 3b30 41F0FD80 		bne	.L862
 6557 3b34 0746     		mov	r7, r0
 6558 3b36 A368     		ldr	r3, [r4, #8]
 6559 3b38 FCF7DFBE 		b	.L763
 6560              	.L717:
 6561 3b3c 3046     		mov	r0, r6
 6562 3b3e AF49     		ldr	r1, .L1638+4
 6563 3b40 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 6564 3b44 D5F8B031 		ldr	r3, [r5, #432]
 6565 3b48 002B     		cmp	r3, #0
 6566 3b4a 3DF43DA8 		beq	.L714
 6567 3b4e AC4F     		ldr	r7, .L1638+8
 6568 3b50 05F5DC79 		add	r9, r5, #440
 6569 3b54 4FF00008 		mov	r8, #0
 6570 3b58 4FF03A0B 		mov	fp, #58
 6571 3b5c 01E0     		b	.L718
 6572              	.L1589:
 6573 3b5e 4FF02C0B 		mov	fp, #44
 6574              	.L718:
 6575 3b62 59F8040B 		ldr	r0, [r9], #4	@ float
 6576 3b66 17F808A0 		ldrb	r10, [r7, r8]	@ zero_extendqisi2
 6577 3b6a FFF7FEFF 		bl	__aeabi_f2d
 6578 3b6e 5346     		mov	r3, r10
 6579 3b70 CDE90001 		strd	r0, [sp]
 6580 3b74 5A46     		mov	r2, fp
 6581 3b76 3046     		mov	r0, r6
 6582 3b78 A249     		ldr	r1, .L1638+12
 6583 3b7a FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 6584 3b7e D5F8B031 		ldr	r3, [r5, #432]
 6585 3b82 08F10108 		add	r8, r8, #1
 6586 3b86 4345     		cmp	r3, r8
 6587 3b88 E9D8     		bhi	.L1589
 6588 3b8a FDF71DB8 		b	.L714
 6589              	.L265:
 6590 3b8e 2046     		mov	r0, r4
 6591 3b90 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6592 3b94 5421     		movs	r1, #84
 6593 3b96 0746     		mov	r7, r0	@ float
 6594 3b98 2046     		mov	r0, r4
 6595 3b9a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6596 3b9e 0028     		cmp	r0, #0
 6597 3ba0 00F04786 		beq	.L266
 6598 3ba4 2046     		mov	r0, r4
 6599 3ba6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6600 3baa D4F88830 		ldr	r3, [r4, #136]
 6601 3bae C118     		adds	r1, r0, r3
 6602 3bb0 9148     		ldr	r0, .L1638
 6603 3bb2 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 6604              	.L267:
 6605 3bb6 0146     		mov	r1, r0
 6606 3bb8 3A46     		mov	r2, r7	@ float
 6607 3bba 2846     		mov	r0, r5
 6608 3bbc FFF7FEFF 		bl	_ZN6GCodes14SetToolHeatersEP4Toolf
 6609 3bc0 0027     		movs	r7, #0
 6610 3bc2 A368     		ldr	r3, [r4, #8]
 6611 3bc4 FCF799BE 		b	.L763
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 117


 6612              	.L1513:
 6613 3bc8 3046     		mov	r0, r6
 6614 3bca 8F49     		ldr	r1, .L1638+16
 6615 3bcc FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 6616 3bd0 0127     		movs	r7, #1
 6617 3bd2 A368     		ldr	r3, [r4, #8]
 6618 3bd4 FCF791BE 		b	.L763
 6619              	.L670:
 6620 3bd8 2046     		mov	r0, r4
 6621 3bda FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6622 3bde 5321     		movs	r1, #83
 6623 3be0 0746     		mov	r7, r0
 6624 3be2 2046     		mov	r0, r4
 6625 3be4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6626 3be8 0028     		cmp	r0, #0
 6627 3bea 41F0E380 		bne	.L1590
 6628 3bee 2B68     		ldr	r3, [r5]
 6629 3bf0 062F     		cmp	r7, #6
 6630 3bf2 96BF     		itet	ls
 6631 3bf4 03EB8703 		addls	r3, r3, r7, lsl #2
 6632 3bf8 0020     		movhi	r0, #0
 6633 3bfa D3F89801 		ldrls	r0, [r3, #408]	@ float
 6634 3bfe FFF7FEFF 		bl	__aeabi_f2d
 6635 3c02 3A46     		mov	r2, r7
 6636 3c04 CDE90001 		strd	r0, [sp]
 6637 3c08 3046     		mov	r0, r6
 6638 3c0a 8049     		ldr	r1, .L1638+20
 6639 3c0c FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 6640 3c10 0027     		movs	r7, #0
 6641 3c12 A368     		ldr	r3, [r4, #8]
 6642 3c14 FCF771BE 		b	.L763
 6643              	.L1506:
 6644 3c18 2846     		mov	r0, r5
 6645 3c1a 2146     		mov	r1, r4
 6646 3c1c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 6647 3c20 0028     		cmp	r0, #0
 6648 3c22 3CF49BAF 		beq	.L554
 6649 3c26 95F80073 		ldrb	r7, [r5, #768]	@ zero_extendqisi2
 6650 3c2a DFF8CC81 		ldr	r8, .L1638
 6651 3c2e 0037     		adds	r7, r7, #0
 6652 3c30 2046     		mov	r0, r4
 6653 3c32 18BF     		it	ne
 6654 3c34 0127     		movne	r7, #1
 6655 3c36 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6656 3c3a C1B2     		uxtb	r1, r0
 6657 3c3c 85F80013 		strb	r1, [r5, #768]
 6658 3c40 D8F80800 		ldr	r0, [r8, #8]
 6659 3c44 FFF7FEFF 		bl	_ZN4Move8SimulateEh
 6660 3c48 95F80033 		ldrb	r3, [r5, #768]	@ zero_extendqisi2
 6661 3c4c 002B     		cmp	r3, #0
 6662 3c4e 01F02181 		beq	.L213
 6663 3c52 0023     		movs	r3, #0
 6664 3c54 C5F8FC32 		str	r3, [r5, #764]	@ float
 6665 3c58 002F     		cmp	r7, #0
 6666 3c5a 01F02B84 		beq	.L214
 6667 3c5e A368     		ldr	r3, [r4, #8]
 6668 3c60 0027     		movs	r7, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 118


 6669 3c62 FCF74ABE 		b	.L763
 6670              	.L1560:
 6671 3c66 2046     		mov	r0, r4
 6672 3c68 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6673 3c6c 0030     		adds	r0, r0, #0
 6674 3c6e 4FF00103 		mov	r3, #1
 6675 3c72 18BF     		it	ne
 6676 3c74 0120     		movne	r0, #1
 6677 3c76 8AF82C00 		strb	r0, [r10, #44]
 6678 3c7a 88F80030 		strb	r3, [r8]
 6679 3c7e FEF78FBD 		b	.L599
 6680              	.L1559:
 6681 3c82 2046     		mov	r0, r4
 6682 3c84 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6683 3c88 DFED617A 		flds	s15, .L1638+24
 6684 3c8c 07EE100A 		fmsr	s14, r0
 6685 3c90 67EE277A 		fmuls	s15, s14, s15
 6686 3c94 0123     		movs	r3, #1
 6687 3c96 CAED087A 		fsts	s15, [r10, #32]
 6688 3c9a 88F80030 		strb	r3, [r8]
 6689 3c9e FEF778BD 		b	.L598
 6690              	.L1558:
 6691 3ca2 2046     		mov	r0, r4
 6692 3ca4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6693 3ca8 DFED597A 		flds	s15, .L1638+24
 6694 3cac 06EE900A 		fmsr	s13, r0
 6695 3cb0 66EEA77A 		fmuls	s15, s13, s15
 6696 3cb4 0123     		movs	r3, #1
 6697 3cb6 CAED077A 		fsts	s15, [r10, #28]
 6698 3cba 88F80030 		strb	r3, [r8]
 6699 3cbe FEF761BD 		b	.L597
 6700              	.L1557:
 6701 3cc2 2046     		mov	r0, r4
 6702 3cc4 2F68     		ldr	r7, [r5]
 6703 3cc6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6704 3cca 0146     		mov	r1, r0
 6705 3ccc 3846     		mov	r0, r7
 6706 3cce FFF7FEFF 		bl	_ZN8Platform13SetZProbeTypeEi
 6707 3cd2 0127     		movs	r7, #1
 6708 3cd4 FEF734BD 		b	.L596
 6709              	.L223:
 6710 3cd8 2046     		mov	r0, r4
 6711 3cda FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6712 3cde 0DF14C08 		add	r8, sp, #76
 6713 3ce2 0746     		mov	r7, r0
 6714 3ce4 0DF1680A 		add	r10, sp, #104
 6715 3ce8 2868     		ldr	r0, [r5]
 6716 3cea CDF800A0 		str	r10, [sp]
 6717 3cee 3946     		mov	r1, r7
 6718 3cf0 4346     		mov	r3, r8
 6719 3cf2 0222     		movs	r2, #2
 6720 3cf4 FFF7FEFF 		bl	_ZN8Platform14GetFirmwarePinEi9PinAccessRhRb
 6721 3cf8 0028     		cmp	r0, #0
 6722 3cfa 00F0D485 		beq	.L224
 6723 3cfe 2046     		mov	r0, r4
 6724 3d00 5321     		movs	r1, #83
 6725 3d02 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 119


 6726 3d06 0028     		cmp	r0, #0
 6727 3d08 41F0A282 		bne	.L1591
 6728 3d0c 0746     		mov	r7, r0
 6729              	.L225:
 6730 3d0e A368     		ldr	r3, [r4, #8]
 6731 3d10 FCF7F3BD 		b	.L763
 6732              	.L375:
 6733 3d14 5321     		movs	r1, #83
 6734 3d16 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6735 3d1a 0028     		cmp	r0, #0
 6736 3d1c 3EF45BAF 		beq	.L377
 6737 3d20 2046     		mov	r0, r4
 6738 3d22 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6739 3d26 FDF769BD 		b	.L376
 6740              	.L284:
 6741 3d2a 2046     		mov	r0, r4
 6742 3d2c 5221     		movs	r1, #82
 6743 3d2e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6744 3d32 0028     		cmp	r0, #0
 6745 3d34 41F00680 		bne	.L1592
 6746 3d38 B8F1000F 		cmp	r8, #0
 6747 3d3c 7CF461AE 		bne	.L271
 6748 3d40 3868     		ldr	r0, [r7]	@ float
 6749 3d42 D9F80090 		ldr	r9, [r9]
 6750 3d46 B7F818B0 		ldrh	fp, [r7, #24]
 6751 3d4a FFF7FEFF 		bl	__aeabi_f2d
 6752 3d4e 0022     		movs	r2, #0
 6753 3d50 304B     		ldr	r3, .L1638+28
 6754 3d52 FFF7FEFF 		bl	__aeabi_dmul
 6755 3d56 FFF7FEFF 		bl	__aeabi_d2iz
 6756 3d5a 8246     		mov	r10, r0
 6757 3d5c 7868     		ldr	r0, [r7, #4]	@ float
 6758 3d5e FFF7FEFF 		bl	__aeabi_f2d
 6759 3d62 0022     		movs	r2, #0
 6760 3d64 2B4B     		ldr	r3, .L1638+28
 6761 3d66 FFF7FEFF 		bl	__aeabi_dmul
 6762 3d6a FFF7FEFF 		bl	__aeabi_d2iz
 6763 3d6e D7ED046A 		flds	s13, [r7, #16]	@ int
 6764 3d72 DFED297A 		flds	s15, .L1638+32
 6765 3d76 0D90     		str	r0, [sp, #52]
 6766 3d78 B8EE667A 		fuitos	s14, s13
 6767 3d7c 67EE277A 		fmuls	s15, s14, s15
 6768 3d80 17EE900A 		fmrs	r0, s15
 6769 3d84 FFF7FEFF 		bl	__aeabi_f2d
 6770 3d88 97F81DC0 		ldrb	ip, [r7, #29]	@ zero_extendqisi2
 6771 3d8c 234B     		ldr	r3, .L1638+36
 6772 3d8e 244A     		ldr	r2, .L1638+40
 6773 3d90 CDF800A0 		str	r10, [sp]
 6774 3d94 BCF1000F 		cmp	ip, #0
 6775 3d98 0CBF     		ite	eq
 6776 3d9a 9E46     		moveq	lr, r3
 6777 3d9c 9646     		movne	lr, r2
 6778 3d9e 0D9B     		ldr	r3, [sp, #52]
 6779 3da0 0193     		str	r3, [sp, #4]
 6780 3da2 CDE90201 		strd	r0, [sp, #8]
 6781 3da6 4A46     		mov	r2, r9
 6782 3da8 5B46     		mov	r3, fp
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 120


 6783 3daa CDF810E0 		str	lr, [sp, #16]
 6784 3dae 3046     		mov	r0, r6
 6785 3db0 1C49     		ldr	r1, .L1638+44
 6786 3db2 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 6787 3db6 B7F81A90 		ldrh	r9, [r7, #26]
 6788 3dba B9F1000F 		cmp	r9, #0
 6789 3dbe 3CF420AE 		beq	.L271
 6790 3dc2 D7ED027A 		flds	s15, [r7, #8]
 6791 3dc6 1849     		ldr	r1, .L1638+48
 6792 3dc8 FDEEE77A 		ftosizs	s15, s15
 6793 3dcc 3046     		mov	r0, r6
 6794 3dce 17EE902A 		fmrs	r2, s15	@ int
 6795 3dd2 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 6796 3dd6 05E0     		b	.L296
 6797              	.L295:
 6798 3dd8 08F10108 		add	r8, r8, #1
 6799 3ddc B8F1080F 		cmp	r8, #8
 6800 3de0 3CF40FAE 		beq	.L271
 6801              	.L296:
 6802 3de4 29FA08F3 		lsr	r3, r9, r8
 6803 3de8 D907     		lsls	r1, r3, #31
 6804 3dea F5D5     		bpl	.L295
 6805 3dec 3046     		mov	r0, r6
 6806 3dee 0F49     		ldr	r1, .L1638+52
 6807 3df0 4246     		mov	r2, r8
 6808 3df2 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 6809 3df6 EFE7     		b	.L295
 6810              	.L1639:
 6811              		.align	2
 6812              	.L1638:
 6813 3df8 00000000 		.word	reprap
 6814 3dfc C8110000 		.word	.LC152
 6815 3e00 00000000 		.word	_ZN6GCodes11axisLettersE
 6816 3e04 DC110000 		.word	.LC153
 6817 3e08 A0020000 		.word	.LC40
 6818 3e0c 00110000 		.word	.LC146
 6819 3e10 8988883C 		.word	1015580809
 6820 3e14 00005940 		.word	1079574528
 6821 3e18 6F12833A 		.word	981668463
 6822 3e1c A0000000 		.word	.LC8
 6823 3e20 9C000000 		.word	.LC7
 6824 3e24 28050000 		.word	.LC59
 6825 3e28 70050000 		.word	.LC60
 6826 3e2c 8C050000 		.word	.LC61
 6827              	.L490:
 6828 3e30 B94F     		ldr	r7, .L1640+8
 6829 3e32 4FFA88F1 		sxtb	r1, r8
 6830 3e36 F868     		ldr	r0, [r7, #12]
 6831 3e38 FFF7FEFF 		bl	_ZNK4Heat19GetTemperatureLimitEa
 6832 3e3c 07EE100A 		fmsr	s14, r0
 6833 3e40 F4EEC78A 		fcmpes	s17, s14
 6834 3e44 F1EE10FA 		fmstat
 6835 3e48 80F2F786 		bge	.L1593
 6836 3e4c 18EE100A 		fmrs	r0, s16
 6837 3e50 FFF7FEFF 		bl	__aeabi_f2d
 6838 3e54 AEA3     		adr	r3, .L1640
 6839 3e56 D3E90023 		ldrd	r2, [r3]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 121


 6840 3e5a FFF7FEFF 		bl	__aeabi_dcmplt
 6841 3e5e 8646     		mov	lr, r0
 6842 3e60 38B9     		cbnz	r0, .L493
 6843 3e62 F7EE007A 		fconsts	s15, #112
 6844 3e66 B4EEE78A 		fcmpes	s16, s15
 6845 3e6a F1EE10FA 		fmstat
 6846 3e6e 41F39C83 		ble	.L1437
 6847              	.L493:
 6848 3e72 3046     		mov	r0, r6
 6849 3e74 A949     		ldr	r1, .L1640+12
 6850 3e76 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 6851 3e7a 0027     		movs	r7, #0
 6852 3e7c A368     		ldr	r3, [r4, #8]
 6853 3e7e FCF73CBD 		b	.L763
 6854              	.L309:
 6855 3e82 4146     		mov	r1, r8
 6856 3e84 A448     		ldr	r0, .L1640+8
 6857 3e86 FFF7FEFF 		bl	_ZN6RepRap8SetDebugEb
 6858 3e8a A368     		ldr	r3, [r4, #8]
 6859 3e8c FCF735BD 		b	.L763
 6860              	.L703:
 6861 3e90 4FF00109 		mov	r9, #1
 6862 3e94 30E4     		b	.L700
 6863              	.L1579:
 6864 3e96 A368     		ldr	r3, [r4, #8]
 6865 3e98 0027     		movs	r7, #0
 6866 3e9a FCF72EBD 		b	.L763
 6867              	.L762:
 6868 3e9e 2868     		ldr	r0, [r5]
 6869 3ea0 9F4A     		ldr	r2, .L1640+16
 6870 3ea2 0621     		movs	r1, #6
 6871 3ea4 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6872 3ea8 0027     		movs	r7, #0
 6873 3eaa A368     		ldr	r3, [r4, #8]
 6874 3eac FCF725BD 		b	.L763
 6875              	.L367:
 6876 3eb0 994B     		ldr	r3, .L1640+8
 6877 3eb2 4FFA88F1 		sxtb	r1, r8
 6878 3eb6 D868     		ldr	r0, [r3, #12]
 6879 3eb8 FFF7FEFF 		bl	_ZNK4Heat19GetTemperatureLimitEa
 6880 3ebc FFF7FEFF 		bl	__aeabi_f2d
 6881 3ec0 4246     		mov	r2, r8
 6882 3ec2 CDE90001 		strd	r0, [sp]
 6883 3ec6 3046     		mov	r0, r6
 6884 3ec8 9649     		ldr	r1, .L1640+20
 6885 3eca FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 6886 3ece A368     		ldr	r3, [r4, #8]
 6887 3ed0 FCF713BD 		b	.L763
 6888              	.L668:
 6889 3ed4 D5F800A0 		ldr	r10, [r5]
 6890 3ed8 0AF5A263 		add	r3, r10, #1296
 6891 3edc 1868     		ldr	r0, [r3]	@ float
 6892 3ede FFF7FEFF 		bl	__aeabi_f2d
 6893 3ee2 0AF21453 		addw	r3, r10, #1300
 6894 3ee6 8046     		mov	r8, r0
 6895 3ee8 1868     		ldr	r0, [r3]	@ float
 6896 3eea 8946     		mov	r9, r1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 122


 6897 3eec FFF7FEFF 		bl	__aeabi_f2d
 6898 3ef0 CDE90001 		strd	r0, [sp]
 6899 3ef4 DAF81835 		ldr	r3, [r10, #1304]
 6900 3ef8 0293     		str	r3, [sp, #8]
 6901 3efa 4246     		mov	r2, r8
 6902 3efc 4B46     		mov	r3, r9
 6903 3efe 3046     		mov	r0, r6
 6904 3f00 8949     		ldr	r1, .L1640+24
 6905 3f02 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 6906 3f06 A368     		ldr	r3, [r4, #8]
 6907 3f08 FCF7F7BC 		b	.L763
 6908              	.L1505:
 6909 3f0c 2F68     		ldr	r7, [r5]
 6910 3f0e 2046     		mov	r0, r4
 6911 3f10 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6912 3f14 07F5A263 		add	r3, r7, #1296
 6913 3f18 0027     		movs	r7, #0
 6914 3f1a 1860     		str	r0, [r3]	@ float
 6915 3f1c A368     		ldr	r3, [r4, #8]
 6916 3f1e FCF7ECBC 		b	.L763
 6917              	.L1504:
 6918 3f22 D5F80080 		ldr	r8, [r5]
 6919 3f26 2046     		mov	r0, r4
 6920 3f28 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6921 3f2c 08F21458 		addw	r8, r8, #1300
 6922 3f30 C8F80000 		str	r0, [r8]	@ float
 6923 3f34 FDF729BB 		b	.L666
 6924              	.L507:
 6925 3f38 2046     		mov	r0, r4
 6926 3f3a 4521     		movs	r1, #69
 6927 3f3c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6928 3f40 0028     		cmp	r0, #0
 6929 3f42 00F09582 		beq	.L522
 6930              	.L904:
 6931 3f46 2846     		mov	r0, r5
 6932 3f48 2146     		mov	r1, r4
 6933 3f4a FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 6934 3f4e 0028     		cmp	r0, #0
 6935 3f50 3CF404AE 		beq	.L554
 6936 3f54 0DF14C08 		add	r8, sp, #76
 6937 3f58 D5F8B431 		ldr	r3, [r5, #436]
 6938 3f5c C8F80030 		str	r3, [r8]
 6939 3f60 4246     		mov	r2, r8
 6940 3f62 1AA9     		add	r1, sp, #104
 6941 3f64 2046     		mov	r0, r4
 6942 3f66 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 6943 3f6a D8F80030 		ldr	r3, [r8]
 6944 3f6e 002B     		cmp	r3, #0
 6945 3f70 3EF45BAD 		beq	.L517
 6946 3f74 DFF8C0B1 		ldr	fp, .L1640+40
 6947 3f78 0D94     		str	r4, [sp, #52]
 6948 3f7a 0DF1680A 		add	r10, sp, #104
 6949 3f7e 0027     		movs	r7, #0
 6950              	.L521:
 6951 3f80 D5F8B011 		ldr	r1, [r5, #432]
 6952 3f84 5AF8042B 		ldr	r2, [r10], #4
 6953 3f88 D9F80030 		ldr	r3, [r9]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 123


 6954 3f8c 3944     		add	r1, r1, r7
 6955 3f8e 2846     		mov	r0, r5
 6956 3f90 FFF7FEFF 		bl	_ZNK6GCodes19ChangeMicrosteppingEjii
 6957 3f94 3B46     		mov	r3, r7
 6958 3f96 0621     		movs	r1, #6
 6959 3f98 0137     		adds	r7, r7, #1
 6960 3f9a 644A     		ldr	r2, .L1640+28
 6961 3f9c 70B9     		cbnz	r0, .L518
 6962 3f9e 5AF8044C 		ldr	r4, [r10, #-4]
 6963 3fa2 2868     		ldr	r0, [r5]
 6964 3fa4 0094     		str	r4, [sp]
 6965 3fa6 D9F80040 		ldr	r4, [r9]
 6966 3faa DFF890E1 		ldr	lr, .L1640+44
 6967 3fae 002C     		cmp	r4, #0
 6968 3fb0 08BF     		it	eq
 6969 3fb2 DE46     		moveq	lr, fp
 6970 3fb4 CDF804E0 		str	lr, [sp, #4]
 6971 3fb8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6972              	.L518:
 6973 3fbc D8F80030 		ldr	r3, [r8]
 6974 3fc0 BB42     		cmp	r3, r7
 6975 3fc2 DDD8     		bhi	.L521
 6976 3fc4 0D9C     		ldr	r4, [sp, #52]
 6977 3fc6 FEF730BD 		b	.L517
 6978              	.L1510:
 6979 3fca 2046     		mov	r0, r4
 6980 3fcc 5321     		movs	r1, #83
 6981 3fce FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6982 3fd2 0028     		cmp	r0, #0
 6983 3fd4 00F0FA85 		beq	.L458
 6984 3fd8 2046     		mov	r0, r4
 6985 3fda FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6986 3fde DFED547A 		flds	s15, .L1640+32
 6987 3fe2 06EE900A 		fmsr	s13, r0
 6988 3fe6 C6EEA77A 		fdivs	s15, s13, s15
 6989 3fea F5EEC07A 		fcmpezs	s15
 6990 3fee F1EE10FA 		fmstat
 6991 3ff2 FDF6B7AC 		blt	.L456
 6992 3ff6 D5F8FC30 		ldr	r3, [r5, #252]
 6993 3ffa ABB1     		cbz	r3, .L460
 6994 3ffc 95F8F730 		ldrb	r3, [r5, #247]	@ zero_extendqisi2
 6995 4000 93B9     		cbnz	r3, .L460
 6996 4002 DAF80030 		ldr	r3, [r10]
 6997 4006 D5F8B021 		ldr	r2, [r5, #432]
 6998 400a 05EB8301 		add	r1, r5, r3, lsl #2
 6999 400e 91EDB17A 		flds	s14, [r1, #708]
 7000 4012 87EE877A 		fdivs	s14, s15, s14
 7001 4016 1344     		add	r3, r3, r2
 7002 4018 05EB8303 		add	r3, r5, r3, lsl #2
 7003 401c D3ED296A 		flds	s13, [r3, #164]
 7004 4020 26EE877A 		fmuls	s14, s13, s14
 7005 4024 83ED297A 		fsts	s14, [r3, #164]
 7006              	.L460:
 7007 4028 DAF80030 		ldr	r3, [r10]
 7008 402c 05EB8303 		add	r3, r5, r3, lsl #2
 7009 4030 C3EDB17A 		fsts	s15, [r3, #708]
 7010 4034 FDF796BC 		b	.L456
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 124


 7011              	.L1563:
 7012 4038 2846     		mov	r0, r5
 7013 403a 2146     		mov	r1, r4
 7014 403c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 7015 4040 0746     		mov	r7, r0
 7016 4042 0028     		cmp	r0, #0
 7017 4044 3CF41AAC 		beq	.L1420
 7018 4048 0DF14C08 		add	r8, sp, #76
 7019 404c D5F8B431 		ldr	r3, [r5, #436]
 7020 4050 C8F80030 		str	r3, [r8]
 7021 4054 4246     		mov	r2, r8
 7022 4056 0123     		movs	r3, #1
 7023 4058 1AA9     		add	r1, sp, #104
 7024 405a 2046     		mov	r0, r4
 7025 405c FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 7026 4060 D8F80030 		ldr	r3, [r8]
 7027 4064 C3B1     		cbz	r3, .L826
 7028 4066 40F2913B 		movw	fp, #913
 7029 406a B9EB0B0C 		subs	ip, r9, fp
 7030 406e DCF1000B 		rsbs	fp, ip, #0
 7031 4072 0DF1680A 		add	r10, sp, #104
 7032 4076 5BEB0C0B 		adcs	fp, fp, ip
 7033 407a 0027     		movs	r7, #0
 7034              	.L827:
 7035 407c D5F8B011 		ldr	r1, [r5, #432]
 7036 4080 2868     		ldr	r0, [r5]
 7037 4082 5AF8042B 		ldr	r2, [r10], #4	@ float
 7038 4086 3944     		add	r1, r1, r7
 7039 4088 5B46     		mov	r3, fp
 7040 408a FFF7FEFF 		bl	_ZN8Platform15SetMotorCurrentEjfb
 7041 408e D8F80030 		ldr	r3, [r8]
 7042 4092 0137     		adds	r7, r7, #1
 7043 4094 BB42     		cmp	r3, r7
 7044 4096 F1D8     		bhi	.L827
 7045              	.L826:
 7046 4098 4FF0010A 		mov	r10, #1
 7047 409c FEF738BC 		b	.L823
 7048              	.L353:
 7049 40a0 2046     		mov	r0, r4
 7050 40a2 DAF80C70 		ldr	r7, [r10, #12]
 7051 40a6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7052 40aa 4146     		mov	r1, r8
 7053 40ac 0246     		mov	r2, r0	@ float
 7054 40ae 3846     		mov	r0, r7
 7055 40b0 FFF7FEFF 		bl	_ZN4Heat21SetStandbyTemperatureEaf
 7056 40b4 0027     		movs	r7, #0
 7057 40b6 A368     		ldr	r3, [r4, #8]
 7058 40b8 FCF71FBC 		b	.L763
 7059              	.L1489:
 7060 40bc 2046     		mov	r0, r4
 7061 40be FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7062 40c2 9FED1C7A 		flds	s14, .L1640+36
 7063 40c6 07EE900A 		fmsr	s15, r0
 7064 40ca F4EEC77A 		fcmpes	s15, s14
 7065 40ce F1EE10FA 		fmstat
 7066 40d2 DAF80C00 		ldr	r0, [r10, #12]
 7067 40d6 4146     		mov	r1, r8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 125


 7068 40d8 40F16284 		bpl	.L1426
 7069 40dc FFF7FEFF 		bl	_ZN4Heat9SwitchOffEa
 7070 40e0 FDF78AB8 		b	.L350
 7071              	.L846:
 7072 40e4 0123     		movs	r3, #1
 7073 40e6 85F85D33 		strb	r3, [r5, #861]
 7074 40ea 2846     		mov	r0, r5
 7075 40ec 2146     		mov	r1, r4
 7076 40ee 4FF47A72 		mov	r2, #1000
 7077 40f2 FFF7FEFF 		bl	_ZN6GCodes11DoDwellTimeER11GCodeBufferm
 7078 40f6 0028     		cmp	r0, #0
 7079 40f8 3CF430AD 		beq	.L554
 7080 40fc A368     		ldr	r3, [r4, #8]
 7081 40fe 1122     		movs	r2, #17
 7082 4100 1A74     		strb	r2, [r3, #16]
 7083 4102 A368     		ldr	r3, [r4, #8]
 7084 4104 0027     		movs	r7, #0
 7085 4106 FCF7F8BB 		b	.L763
 7086              	.L1641:
 7087 410a 00BFAFF3 		.align	3
 7087      0080
 7088              	.L1640:
 7089 4110 9A999999 		.word	-1717986918
 7090 4114 9999B93F 		.word	1069128089
 7091 4118 00000000 		.word	reprap
 7092 411c 040A0000 		.word	.LC97
 7093 4120 98120000 		.word	.LC160
 7094 4124 70070000 		.word	.LC80
 7095 4128 CC100000 		.word	.LC145
 7096 412c 600B0000 		.word	.LC104
 7097 4130 0000C842 		.word	1120403456
 7098 4134 008088C3 		.word	-1014464512
 7099 4138 A4000000 		.word	.LC9
 7100 413c D4000000 		.word	.LC15
 7101              	.L626:
 7102 4140 3046     		mov	r0, r6
 7103 4142 BF49     		ldr	r1, .L1642+8
 7104 4144 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7105 4148 D5F8B031 		ldr	r3, [r5, #432]
 7106 414c 13B3     		cbz	r3, .L630
 7107 414e BD4F     		ldr	r7, .L1642+12
 7108 4150 9FEDBD8A 		flds	s16, .L1642+16
 7109 4154 4FF00008 		mov	r8, #0
 7110              	.L631:
 7111 4158 2B68     		ldr	r3, [r5]
 7112 415a D5ED9B7A 		flds	s15, [r5, #620]
 7113 415e 17F80890 		ldrb	r9, [r7, r8]	@ zero_extendqisi2
 7114 4162 03EB8803 		add	r3, r3, r8, lsl #2
 7115 4166 93ED5C7A 		flds	s14, [r3, #368]
 7116 416a 67EE887A 		fmuls	s15, s15, s16
 7117 416e 08F10108 		add	r8, r8, #1
 7118 4172 87EE277A 		fdivs	s14, s14, s15
 7119 4176 17EE100A 		fmrs	r0, s14
 7120 417a FFF7FEFF 		bl	__aeabi_f2d
 7121 417e 4A46     		mov	r2, r9
 7122 4180 CDE90001 		strd	r0, [sp]
 7123 4184 3046     		mov	r0, r6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 126


 7124 4186 B149     		ldr	r1, .L1642+20
 7125 4188 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 7126 418c D5F8B031 		ldr	r3, [r5, #432]
 7127 4190 4345     		cmp	r3, r8
 7128 4192 E1D8     		bhi	.L631
 7129              	.L630:
 7130 4194 3046     		mov	r0, r6
 7131 4196 AE49     		ldr	r1, .L1642+24
 7132 4198 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 7133 419c D5F8B471 		ldr	r7, [r5, #436]
 7134 41a0 002F     		cmp	r7, #0
 7135 41a2 01F02C81 		beq	.L1594
 7136 41a6 9FEDA88A 		flds	s16, .L1642+16
 7137 41aa 0027     		movs	r7, #0
 7138 41ac 4FF02008 		mov	r8, #32
 7139 41b0 01E0     		b	.L633
 7140              	.L632:
 7141 41b2 4FF03A08 		mov	r8, #58
 7142              	.L633:
 7143 41b6 D5F8B011 		ldr	r1, [r5, #432]
 7144 41ba 2B68     		ldr	r3, [r5]
 7145 41bc D5ED9B7A 		flds	s15, [r5, #620]
 7146 41c0 3944     		add	r1, r1, r7
 7147 41c2 03EB8103 		add	r3, r3, r1, lsl #2
 7148 41c6 93ED5C7A 		flds	s14, [r3, #368]
 7149 41ca 67EE887A 		fmuls	s15, s15, s16
 7150 41ce 0137     		adds	r7, r7, #1
 7151 41d0 87EE277A 		fdivs	s14, s14, s15
 7152 41d4 17EE100A 		fmrs	r0, s14
 7153 41d8 FFF7FEFF 		bl	__aeabi_f2d
 7154 41dc 4246     		mov	r2, r8
 7155 41de CDE90001 		strd	r0, [sp]
 7156 41e2 3046     		mov	r0, r6
 7157 41e4 9B49     		ldr	r1, .L1642+28
 7158 41e6 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 7159 41ea D5F8B431 		ldr	r3, [r5, #436]
 7160 41ee BB42     		cmp	r3, r7
 7161 41f0 DFD8     		bhi	.L632
 7162 41f2 A368     		ldr	r3, [r4, #8]
 7163 41f4 0027     		movs	r7, #0
 7164 41f6 FCF780BB 		b	.L763
 7165              	.L1551:
 7166 41fa 2046     		mov	r0, r4
 7167 41fc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7168 4200 C8F81800 		str	r0, [r8, #24]	@ float
 7169 4204 4046     		mov	r0, r8
 7170 4206 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 7171 420a 2046     		mov	r0, r4
 7172 420c 4821     		movs	r1, #72
 7173 420e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7174 4212 38B1     		cbz	r0, .L788
 7175              	.L787:
 7176 4214 2046     		mov	r0, r4
 7177 4216 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7178 421a C8F82C00 		str	r0, [r8, #44]	@ float
 7179 421e 4046     		mov	r0, r8
 7180 4220 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 127


 7181              	.L788:
 7182 4224 97F8BC3A 		ldrb	r3, [r7, #2748]	@ zero_extendqisi2
 7183 4228 0022     		movs	r2, #0
 7184 422a 5B45     		cmp	r3, fp
 7185 422c C7F8302C 		str	r2, [r7, #3120]
 7186 4230 04D0     		beq	.L791
 7187 4232 5146     		mov	r1, r10
 7188 4234 2846     		mov	r0, r5
 7189 4236 0122     		movs	r2, #1
 7190 4238 FFF7FEFF 		bl	_ZN6GCodes12SetPositionsEPKfb
 7191              	.L791:
 7192 423c 2846     		mov	r0, r5
 7193 423e FFF7FEFF 		bl	_ZN6GCodes18SetAllAxesNotHomedEv
 7194 4242 FEF7E5B9 		b	.L792
 7195              	.L137:
 7196 4246 A368     		ldr	r3, [r4, #8]
 7197 4248 834A     		ldr	r2, .L1642+32
 7198 424a 1421     		movs	r1, #20
 7199 424c 1974     		strb	r1, [r3, #16]
 7200 424e 1268     		ldr	r2, [r2]
 7201 4250 FDF773BE 		b	.L881
 7202              	.L1555:
 7203 4254 2046     		mov	r0, r4
 7204 4256 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7205 425a FFF7FEFF 		bl	__aeabi_f2d
 7206 425e 76A3     		adr	r3, .L1642
 7207 4260 D3E90023 		ldrd	r2, [r3]
 7208 4264 FFF7FEFF 		bl	__aeabi_dmul
 7209 4268 FFF7FEFF 		bl	__aeabi_d2f
 7210 426c 0BF6B423 		addw	r3, fp, #2740
 7211 4270 4221     		movs	r1, #66
 7212 4272 1860     		str	r0, [r3]	@ float
 7213 4274 2046     		mov	r0, r4
 7214 4276 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7215 427a 78B1     		cbz	r0, .L799
 7216              	.L798:
 7217 427c 2046     		mov	r0, r4
 7218 427e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7219 4282 FFF7FEFF 		bl	__aeabi_f2d
 7220 4286 6CA3     		adr	r3, .L1642
 7221 4288 D3E90023 		ldrd	r2, [r3]
 7222 428c FFF7FEFF 		bl	__aeabi_dmul
 7223 4290 FFF7FEFF 		bl	__aeabi_d2f
 7224 4294 0BF6B82B 		addw	fp, fp, #2744
 7225 4298 CBF80000 		str	r0, [fp]	@ float
 7226              	.L799:
 7227 429c 2846     		mov	r0, r5
 7228 429e FFF7FEFF 		bl	_ZN6GCodes18SetAllAxesNotHomedEv
 7229 42a2 0027     		movs	r7, #0
 7230 42a4 A368     		ldr	r3, [r4, #8]
 7231 42a6 FCF728BB 		b	.L763
 7232              	.L1464:
 7233 42aa 3046     		mov	r0, r6
 7234 42ac 6B49     		ldr	r1, .L1642+36
 7235 42ae FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 7236 42b2 FCF7A6BB 		b	.L271
 7237              	.L807:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 128


 7238 42b6 0D98     		ldr	r0, [sp, #52]
 7239 42b8 FFF7FEFF 		bl	_ZNK4Move17GetGeometryStringEv
 7240 42bc 6849     		ldr	r1, .L1642+40
 7241 42be 0246     		mov	r2, r0
 7242 42c0 3046     		mov	r0, r6
 7243 42c2 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 7244 42c6 D5F8B031 		ldr	r3, [r5, #432]
 7245 42ca 002B     		cmp	r3, #0
 7246 42cc 3EF4DBAE 		beq	.L808
 7247 42d0 0D99     		ldr	r1, [sp, #52]
 7248 42d2 5C4F     		ldr	r7, .L1642+12
 7249 42d4 01F6344B 		addw	fp, r1, #3124
 7250              	.L811:
 7251 42d8 5BF8040B 		ldr	r0, [fp], #4	@ float
 7252 42dc 17F80980 		ldrb	r8, [r7, r9]	@ zero_extendqisi2
 7253 42e0 FFF7FEFF 		bl	__aeabi_f2d
 7254 42e4 4246     		mov	r2, r8
 7255 42e6 CDE90001 		strd	r0, [sp]
 7256 42ea 3046     		mov	r0, r6
 7257 42ec 5D49     		ldr	r1, .L1642+44
 7258 42ee FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 7259 42f2 D5F8B031 		ldr	r3, [r5, #432]
 7260 42f6 09F10109 		add	r9, r9, #1
 7261 42fa 4B45     		cmp	r3, r9
 7262 42fc ECD8     		bhi	.L811
 7263 42fe FEF7C2BE 		b	.L808
 7264              	.L156:
 7265 4302 2846     		mov	r0, r5
 7266 4304 FFF7FEFF 		bl	_ZN6GCodes13DisableDrivesEv
 7267 4308 A368     		ldr	r3, [r4, #8]
 7268 430a FCF7F6BA 		b	.L763
 7269              	.L1570:
 7270 430e 2046     		mov	r0, r4
 7271 4310 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7272 4314 07EE900A 		fmsr	s15, r0
 7273 4318 F5EEC07A 		fcmpezs	s15
 7274 431c F1EE10FA 		fmstat
 7275 4320 01F1B381 		bmi	.L1595
 7276 4324 504B     		ldr	r3, .L1642+48
 7277 4326 9B68     		ldr	r3, [r3, #8]
 7278 4328 03F67423 		addw	r3, r3, #2676
 7279 432c 1860     		str	r0, [r3]	@ float
 7280              	.L155:
 7281 432e A368     		ldr	r3, [r4, #8]
 7282 4330 FCF7E3BA 		b	.L763
 7283              	.L1569:
 7284 4334 0DF14C08 		add	r8, sp, #76
 7285 4338 D5F8B431 		ldr	r3, [r5, #436]
 7286 433c C8F80030 		str	r3, [r8]
 7287 4340 4246     		mov	r2, r8
 7288 4342 1AA9     		add	r1, sp, #104
 7289 4344 2046     		mov	r0, r4
 7290 4346 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 7291 434a D8F80070 		ldr	r7, [r8]
 7292 434e 002F     		cmp	r7, #0
 7293 4350 3EF406AC 		beq	.L146
 7294 4354 1A9A     		ldr	r2, [sp, #104]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 129


 7295 4356 002A     		cmp	r2, #0
 7296 4358 C0F27883 		blt	.L148
 7297 435c D5F8B431 		ldr	r3, [r5, #436]
 7298 4360 9A42     		cmp	r2, r3
 7299 4362 80F07383 		bcs	.L148
 7300 4366 0DF16809 		add	r9, sp, #104
 7301 436a 0027     		movs	r7, #0
 7302 436c 09E0     		b	.L150
 7303              	.L151:
 7304 436e 59F8042F 		ldr	r2, [r9, #4]!
 7305 4372 002A     		cmp	r2, #0
 7306 4374 C0F26A83 		blt	.L148
 7307 4378 D5F8B431 		ldr	r3, [r5, #436]
 7308 437c 9A42     		cmp	r2, r3
 7309 437e 80F06583 		bcs	.L148
 7310              	.L150:
 7311 4382 D5F8B011 		ldr	r1, [r5, #432]
 7312 4386 2868     		ldr	r0, [r5]
 7313 4388 1144     		add	r1, r1, r2
 7314 438a FFF7FEFF 		bl	_ZN8Platform12DisableDriveEj
 7315 438e D8F80030 		ldr	r3, [r8]
 7316 4392 0137     		adds	r7, r7, #1
 7317 4394 BB42     		cmp	r3, r7
 7318 4396 EAD8     		bhi	.L151
 7319 4398 4FF00109 		mov	r9, #1
 7320 439c 0027     		movs	r7, #0
 7321 439e FEF7DFBB 		b	.L146
 7322              	.L1568:
 7323 43a2 D5F8B031 		ldr	r3, [r5, #432]
 7324 43a6 0DF14C08 		add	r8, sp, #76
 7325 43aa C3F10A03 		rsb	r3, r3, #10
 7326 43ae 4246     		mov	r2, r8
 7327 43b0 2046     		mov	r0, r4
 7328 43b2 1AA9     		add	r1, sp, #104
 7329 43b4 C8F80030 		str	r3, [r8]
 7330 43b8 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 7331 43bc D8F80030 		ldr	r3, [r8]
 7332 43c0 C5F8B431 		str	r3, [r5, #436]
 7333 43c4 A3B1     		cbz	r3, .L759
 7334 43c6 0DF1640A 		add	r10, sp, #100
 7335 43ca 0027     		movs	r7, #0
 7336 43cc 06E0     		b	.L761
 7337              	.L997:
 7338 43ce 4FF00109 		mov	r9, #1
 7339              	.L760:
 7340 43d2 D8F80030 		ldr	r3, [r8]
 7341 43d6 0137     		adds	r7, r7, #1
 7342 43d8 BB42     		cmp	r3, r7
 7343 43da 09D9     		bls	.L759
 7344              	.L761:
 7345 43dc 5AF8042F 		ldr	r2, [r10, #4]!
 7346 43e0 092A     		cmp	r2, #9
 7347 43e2 F4D8     		bhi	.L997
 7348 43e4 D2B2     		uxtb	r2, r2
 7349 43e6 2868     		ldr	r0, [r5]
 7350 43e8 3946     		mov	r1, r7
 7351 43ea FFF7FEFF 		bl	_ZN8Platform17SetExtruderDriverEjh
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 130


 7352 43ee F0E7     		b	.L760
 7353              	.L759:
 7354 43f0 B9F1000F 		cmp	r9, #0
 7355 43f4 7FF453AD 		bne	.L762
 7356 43f8 4F46     		mov	r7, r9
 7357 43fa A368     		ldr	r3, [r4, #8]
 7358 43fc FCF77DBA 		b	.L763
 7359              	.L1427:
 7360 4400 17EE902A 		fmrs	r2, s15
 7361 4404 FFF7FEFF 		bl	_ZN4Heat20SetActiveTemperatureEaf
 7362 4408 D9F80C00 		ldr	r0, [r9, #12]
 7363 440c 4146     		mov	r1, r8
 7364 440e FFF7FEFF 		bl	_ZN4Heat8ActivateEa
 7365 4412 FCF7B4BF 		b	.L363
 7366              	.L1514:
 7367 4416 A368     		ldr	r3, [r4, #8]
 7368 4418 144A     		ldr	r2, .L1642+52
 7369 441a 0E21     		movs	r1, #14
 7370 441c 0027     		movs	r7, #0
 7371 441e 1974     		strb	r1, [r3, #16]
 7372 4420 1268     		ldr	r2, [r2]
 7373 4422 0097     		str	r7, [sp]
 7374 4424 0123     		movs	r3, #1
 7375 4426 2846     		mov	r0, r5
 7376 4428 2146     		mov	r1, r4
 7377 442a FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 7378 442e A368     		ldr	r3, [r4, #8]
 7379 4430 FCF763BA 		b	.L763
 7380              	.L1643:
 7381 4434 AFF30080 		.align	3
 7382              	.L1642:
 7383 4438 7B14AE47 		.word	1202590843
 7384 443c E17A843F 		.word	1065646817
 7385 4440 F40E0000 		.word	.LC136
 7386 4444 00000000 		.word	_ZN6GCodes11axisLettersE
 7387 4448 8988883C 		.word	1015580809
 7388 444c AC070000 		.word	.LC82
 7389 4450 C0040000 		.word	.LC54
 7390 4454 B8070000 		.word	.LC83
 7391 4458 00000000 		.word	.LANCHOR8
 7392 445c 0C050000 		.word	.LC58
 7393 4460 A4130000 		.word	.LC166
 7394 4464 CC130000 		.word	.LC167
 7395 4468 00000000 		.word	reprap
 7396 446c 00000000 		.word	.LANCHOR2
 7397              	.L522:
 7398 4470 3046     		mov	r0, r6
 7399 4472 BD49     		ldr	r1, .L1644
 7400 4474 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7401 4478 D5F8B031 		ldr	r3, [r5, #432]
 7402 447c 13B3     		cbz	r3, .L527
 7403 447e BB4F     		ldr	r7, .L1644+4
 7404 4480 DFF820B3 		ldr	fp, .L1644+60
 7405 4484 4FF00008 		mov	r8, #0
 7406 4488 0DF1680A 		add	r10, sp, #104
 7407              	.L528:
 7408 448c 4146     		mov	r1, r8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 131


 7409 448e D9F80020 		ldr	r2, [r9]
 7410 4492 2868     		ldr	r0, [r5]
 7411 4494 5346     		mov	r3, r10
 7412 4496 FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjiRb
 7413 449a 9AF800E0 		ldrb	lr, [r10]	@ zero_extendqisi2
 7414 449e 17F80820 		ldrb	r2, [r7, r8]	@ zero_extendqisi2
 7415 44a2 B349     		ldr	r1, .L1644+8
 7416 44a4 0346     		mov	r3, r0
 7417 44a6 B348     		ldr	r0, .L1644+12
 7418 44a8 BEF1000F 		cmp	lr, #0
 7419 44ac 08BF     		it	eq
 7420 44ae 5846     		moveq	r0, fp
 7421 44b0 0090     		str	r0, [sp]
 7422 44b2 3046     		mov	r0, r6
 7423 44b4 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 7424 44b8 D5F8B031 		ldr	r3, [r5, #432]
 7425 44bc 08F10108 		add	r8, r8, #1
 7426 44c0 4345     		cmp	r3, r8
 7427 44c2 E3D8     		bhi	.L528
 7428              	.L527:
 7429 44c4 3046     		mov	r0, r6
 7430 44c6 AC49     		ldr	r1, .L1644+16
 7431 44c8 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 7432 44cc D5F8B431 		ldr	r3, [r5, #436]
 7433 44d0 002B     		cmp	r3, #0
 7434 44d2 3EF4AAAA 		beq	.L517
 7435 44d6 DFF8CCB2 		ldr	fp, .L1644+60
 7436 44da DFF89882 		ldr	r8, .L1644+12
 7437 44de 0027     		movs	r7, #0
 7438 44e0 0DF1680A 		add	r10, sp, #104
 7439              	.L530:
 7440 44e4 D5F8B011 		ldr	r1, [r5, #432]
 7441 44e8 D9F80020 		ldr	r2, [r9]
 7442 44ec 2868     		ldr	r0, [r5]
 7443 44ee 3944     		add	r1, r1, r7
 7444 44f0 5346     		mov	r3, r10
 7445 44f2 FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjiRb
 7446 44f6 9AF80030 		ldrb	r3, [r10]	@ zero_extendqisi2
 7447 44fa A049     		ldr	r1, .L1644+20
 7448 44fc 002B     		cmp	r3, #0
 7449 44fe 0CBF     		ite	eq
 7450 4500 5B46     		moveq	r3, fp
 7451 4502 4346     		movne	r3, r8
 7452 4504 0246     		mov	r2, r0
 7453 4506 3046     		mov	r0, r6
 7454 4508 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 7455 450c D5F8B431 		ldr	r3, [r5, #436]
 7456 4510 0137     		adds	r7, r7, #1
 7457 4512 BB42     		cmp	r3, r7
 7458 4514 E6D8     		bhi	.L530
 7459 4516 FEF788BA 		b	.L517
 7460              	.L196:
 7461 451a D5F87402 		ldr	r0, [r5, #628]
 7462 451e 0028     		cmp	r0, #0
 7463 4520 00F04087 		beq	.L198
 7464 4524 4146     		mov	r1, r8
 7465 4526 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 132


 7466 452a 0028     		cmp	r0, #0
 7467 452c 00F0C186 		beq	.L199
 7468 4530 A368     		ldr	r3, [r4, #8]
 7469 4532 FCF7E2B9 		b	.L763
 7470              	.L306:
 7471 4536 A368     		ldr	r3, [r4, #8]
 7472 4538 0B22     		movs	r2, #11
 7473 453a 1A74     		strb	r2, [r3, #16]
 7474 453c A368     		ldr	r3, [r4, #8]
 7475 453e 0027     		movs	r7, #0
 7476 4540 FCF7DBB9 		b	.L763
 7477              	.L360:
 7478 4544 3046     		mov	r0, r6
 7479 4546 8E49     		ldr	r1, .L1644+24
 7480 4548 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7481 454c 0127     		movs	r7, #1
 7482 454e FCF716BF 		b	.L363
 7483              	.L1503:
 7484 4552 4246     		mov	r2, r8
 7485 4554 3046     		mov	r0, r6
 7486 4556 8B49     		ldr	r1, .L1644+28
 7487 4558 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 7488 455c A368     		ldr	r3, [r4, #8]
 7489 455e FCF7CCB9 		b	.L763
 7490              	.L364:
 7491 4562 3046     		mov	r0, r6
 7492 4564 8849     		ldr	r1, .L1644+32
 7493 4566 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7494 456a 4F46     		mov	r7, r9
 7495 456c A368     		ldr	r3, [r4, #8]
 7496 456e FCF7C4B9 		b	.L763
 7497              	.L546:
 7498 4572 85F8D473 		strb	r7, [r5, #980]
 7499 4576 1B68     		ldr	r3, [r3]
 7500 4578 9C42     		cmp	r4, r3
 7501 457a 7DF43DAD 		bne	.L548
 7502 457e 0123     		movs	r3, #1
 7503 4580 FDF73BBD 		b	.L547
 7504              	.L1521:
 7505 4584 2046     		mov	r0, r4
 7506 4586 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7507 458a 08EE900A 		fmsr	s17, r0
 7508 458e FDF793BB 		b	.L488
 7509              	.L1522:
 7510 4592 2046     		mov	r0, r4
 7511 4594 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7512 4598 08EE100A 		fmsr	s16, r0
 7513 459c FDF795BB 		b	.L489
 7514              	.L302:
 7515 45a0 A368     		ldr	r3, [r4, #8]
 7516 45a2 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 7517 45a4 67F3C302 		bfi	r2, r7, #3, #1
 7518 45a8 5A74     		strb	r2, [r3, #17]
 7519 45aa 2046     		mov	r0, r4
 7520 45ac FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7521 45b0 8046     		mov	r8, r0	@ float
 7522 45b2 FCF74DBA 		b	.L301
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 133


 7523              	.L970:
 7524 45b6 9346     		mov	fp, r2
 7525 45b8 FEF7BAB8 		b	.L591
 7526              	.L663:
 7527 45bc 3046     		mov	r0, r6
 7528 45be 7349     		ldr	r1, .L1644+36
 7529 45c0 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7530 45c4 A368     		ldr	r3, [r4, #8]
 7531 45c6 FCF798B9 		b	.L763
 7532              	.L478:
 7533 45ca 95EDB97A 		flds	s14, [r5, #740]
 7534 45ce 77EE277A 		fadds	s15, s14, s15
 7535 45d2 0027     		movs	r7, #0
 7536 45d4 C5EDB97A 		fsts	s15, [r5, #740]
 7537 45d8 A368     		ldr	r3, [r4, #8]
 7538 45da FCF78EB9 		b	.L763
 7539              	.L1490:
 7540 45de A368     		ldr	r3, [r4, #8]
 7541 45e0 0027     		movs	r7, #0
 7542 45e2 FCF78AB9 		b	.L763
 7543              	.L463:
 7544 45e6 3B46     		mov	r3, r7
 7545 45e8 2868     		ldr	r0, [r5]
 7546 45ea 694A     		ldr	r2, .L1644+40
 7547 45ec 0621     		movs	r1, #6
 7548 45ee FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7549 45f2 FDF718BE 		b	.L466
 7550              	.L499:
 7551 45f6 DFF8A8A1 		ldr	r10, .L1644+56
 7552 45fa DAF80C30 		ldr	r3, [r10, #12]
 7553 45fe 4FEA8009 		lsl	r9, r0, #2
 7554 4602 4B44     		add	r3, r3, r9
 7555 4604 4FF0000E 		mov	lr, #0
 7556 4608 5F68     		ldr	r7, [r3, #4]
 7557 460a 8DF83BE0 		strb	lr, [sp, #59]
 7558 460e BA6B     		ldr	r2, [r7, #56]	@ float
 7559 4610 3B6B     		ldr	r3, [r7, #48]	@ float
 7560 4612 786B     		ldr	r0, [r7, #52]	@ float
 7561 4614 1192     		str	r2, [sp, #68]	@ float
 7562 4616 FA6B     		ldr	r2, [r7, #60]	@ float
 7563 4618 1292     		str	r2, [sp, #72]	@ float
 7564 461a 97F84110 		ldrb	r1, [r7, #65]	@ zero_extendqisi2
 7565 461e 0F93     		str	r3, [sp, #60]	@ float
 7566 4620 81F00101 		eor	r1, r1, #1
 7567 4624 0FAA     		add	r2, sp, #60
 7568 4626 0DF13B03 		add	r3, sp, #59
 7569 462a 1090     		str	r0, [sp, #64]	@ float
 7570 462c 1391     		str	r1, [sp, #76]
 7571 462e 2046     		mov	r0, r4
 7572 4630 4121     		movs	r1, #65
 7573 4632 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 7574 4636 2046     		mov	r0, r4
 7575 4638 10AA     		add	r2, sp, #64
 7576 463a 0DF13B03 		add	r3, sp, #59
 7577 463e 4321     		movs	r1, #67
 7578 4640 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 7579 4644 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 134


 7580 4646 11AA     		add	r2, sp, #68
 7581 4648 0DF13B03 		add	r3, sp, #59
 7582 464c 4421     		movs	r1, #68
 7583 464e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 7584 4652 2046     		mov	r0, r4
 7585 4654 13AA     		add	r2, sp, #76
 7586 4656 0DF13B03 		add	r3, sp, #59
 7587 465a 4221     		movs	r1, #66
 7588 465c FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 7589 4660 0DF13B03 		add	r3, sp, #59
 7590 4664 2046     		mov	r0, r4
 7591 4666 12AA     		add	r2, sp, #72
 7592 4668 5321     		movs	r1, #83
 7593 466a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 7594 466e 9DF83B30 		ldrb	r3, [sp, #59]	@ zero_extendqisi2
 7595 4672 002B     		cmp	r3, #0
 7596 4674 40F07884 		bne	.L1596
 7597 4678 97F84030 		ldrb	r3, [r7, #64]	@ zero_extendqisi2
 7598 467c 002B     		cmp	r3, #0
 7599 467e 00F07987 		beq	.L1597
 7600 4682 97F84130 		ldrb	r3, [r7, #65]	@ zero_extendqisi2
 7601 4686 002B     		cmp	r3, #0
 7602 4688 00F06A84 		beq	.L961
 7603 468c 97F84290 		ldrb	r9, [r7, #66]	@ zero_extendqisi2
 7604 4690 404A     		ldr	r2, .L1644+44
 7605 4692 414B     		ldr	r3, .L1644+48
 7606 4694 B9F1000F 		cmp	r9, #0
 7607 4698 0CBF     		ite	eq
 7608 469a 9146     		moveq	r9, r2
 7609 469c 9946     		movne	r9, r3
 7610              	.L504:
 7611 469e 386B     		ldr	r0, [r7, #48]	@ float
 7612 46a0 FFF7FEFF 		bl	__aeabi_f2d
 7613 46a4 CDE90001 		strd	r0, [sp]
 7614 46a8 786B     		ldr	r0, [r7, #52]	@ float
 7615 46aa FFF7FEFF 		bl	__aeabi_f2d
 7616 46ae CDE90201 		strd	r0, [sp, #8]
 7617 46b2 B86B     		ldr	r0, [r7, #56]	@ float
 7618 46b4 FFF7FEFF 		bl	__aeabi_f2d
 7619 46b8 CDE90401 		strd	r0, [sp, #16]
 7620 46bc F86B     		ldr	r0, [r7, #60]	@ float
 7621 46be FFF7FEFF 		bl	__aeabi_f2d
 7622 46c2 CDF82090 		str	r9, [sp, #32]
 7623 46c6 CDE90601 		strd	r0, [sp, #24]
 7624 46ca 4246     		mov	r2, r8
 7625 46cc 3046     		mov	r0, r6
 7626 46ce 3349     		ldr	r1, .L1644+52
 7627 46d0 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 7628 46d4 97F84130 		ldrb	r3, [r7, #65]	@ zero_extendqisi2
 7629 46d8 002B     		cmp	r3, #0
 7630 46da 40F00187 		bne	.L1598
 7631              	.L502:
 7632 46de A368     		ldr	r3, [r4, #8]
 7633 46e0 0027     		movs	r7, #0
 7634 46e2 FCF70AB9 		b	.L763
 7635              	.L568:
 7636 46e6 5868     		ldr	r0, [r3, #4]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 135


 7637 46e8 FFF7FEFF 		bl	_ZN7Network7DisableEv
 7638 46ec FEF714BF 		b	.L569
 7639              	.L1472:
 7640 46f0 2046     		mov	r0, r4
 7641 46f2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7642 46f6 0128     		cmp	r0, #1
 7643 46f8 00F07785 		beq	.L1599
 7644 46fc 284B     		ldr	r3, .L1644+56
 7645 46fe 3946     		mov	r1, r7
 7646 4700 5868     		ldr	r0, [r3, #4]
 7647 4702 3246     		mov	r2, r6
 7648 4704 FFF7FEFF 		bl	_ZN7Network15DisableProtocolEiR9StringRef
 7649 4708 0027     		movs	r7, #0
 7650 470a A368     		ldr	r3, [r4, #8]
 7651 470c FCF7F5B8 		b	.L763
 7652              	.L1470:
 7653 4710 0823     		movs	r3, #8
 7654 4712 2046     		mov	r0, r4
 7655 4714 13AA     		add	r2, sp, #76
 7656 4716 1AA9     		add	r1, sp, #104
 7657 4718 1393     		str	r3, [sp, #76]
 7658 471a FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 7659 471e 1398     		ldr	r0, [sp, #76]
 7660 4720 0028     		cmp	r0, #0
 7661 4722 00F02886 		beq	.L929
 7662 4726 1AAB     		add	r3, sp, #104
 7663 4728 03EB8000 		add	r0, r3, r0, lsl #2
 7664 472c 0021     		movs	r1, #0
 7665 472e 4FF0010E 		mov	lr, #1
 7666              	.L283:
 7667 4732 53F8042B 		ldr	r2, [r3], #4
 7668 4736 072A     		cmp	r2, #7
 7669 4738 03D8     		bhi	.L281
 7670 473a 0EFA02F2 		lsl	r2, lr, r2
 7671 473e 1143     		orrs	r1, r1, r2
 7672 4740 89B2     		uxth	r1, r1
 7673              	.L281:
 7674 4742 8342     		cmp	r3, r0
 7675 4744 F5D1     		bne	.L283
 7676 4746 8846     		mov	r8, r1
 7677 4748 31B1     		cbz	r1, .L280
 7678 474a 2868     		ldr	r0, [r5]
 7679 474c D9F80010 		ldr	r1, [r9]
 7680 4750 4FF07E52 		mov	r2, #1065353216
 7681 4754 FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 7682              	.L280:
 7683 4758 4146     		mov	r1, r8
 7684 475a 3846     		mov	r0, r7
 7685 475c FFF7FEFF 		bl	_ZN3Fan19SetHeatersMonitoredEt
 7686 4760 4FF00108 		mov	r8, #1
 7687 4764 FCF723B9 		b	.L279
 7688              	.L1645:
 7689              		.align	2
 7690              	.L1644:
 7691 4768 900B0000 		.word	.LC105
 7692 476c 00000000 		.word	_ZN6GCodes11axisLettersE
 7693 4770 A80B0000 		.word	.LC107
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 136


 7694 4774 E8000000 		.word	.LC16
 7695 4778 A40B0000 		.word	.LC106
 7696 477c B40B0000 		.word	.LC108
 7697 4780 C0060000 		.word	.LC75
 7698 4784 88100000 		.word	.LC144
 7699 4788 10070000 		.word	.LC77
 7700 478c 54100000 		.word	.LC143
 7701 4790 14090000 		.word	.LC92
 7702 4794 B8000000 		.word	.LC12
 7703 4798 C8000000 		.word	.LC14
 7704 479c 540A0000 		.word	.LC100
 7705 47a0 00000000 		.word	reprap
 7706 47a4 A4000000 		.word	.LC9
 7707              	.L1480:
 7708 47a8 0144     		add	r1, r1, r0
 7709 47aa C748     		ldr	r0, .L1646
 7710 47ac FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 7711 47b0 0122     		movs	r2, #1
 7712 47b2 0146     		mov	r1, r0
 7713 47b4 2846     		mov	r0, r5
 7714 47b6 FFF7FEFF 		bl	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb
 7715 47ba 0746     		mov	r7, r0
 7716 47bc 0028     		cmp	r0, #0
 7717 47be 7CF4C1AB 		bne	.L317
 7718 47c2 FCF7F3BB 		b	.L1428
 7719              	.L1468:
 7720 47c6 2046     		mov	r0, r4
 7721 47c8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7722 47cc 0146     		mov	r1, r0	@ float
 7723 47ce 3846     		mov	r0, r7
 7724 47d0 FFF7FEFF 		bl	_ZN3Fan11SetBlipTimeEf
 7725 47d4 4FF00108 		mov	r8, #1
 7726 47d8 FCF7DBB8 		b	.L277
 7727              	.L1467:
 7728 47dc 2046     		mov	r0, r4
 7729 47de FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7730 47e2 4FF00108 		mov	r8, #1
 7731 47e6 B860     		str	r0, [r7, #8]	@ float
 7732 47e8 FCF7CCB8 		b	.L276
 7733              	.L1466:
 7734 47ec 2046     		mov	r0, r4
 7735 47ee FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7736 47f2 0146     		mov	r1, r0	@ float
 7737 47f4 3846     		mov	r0, r7
 7738 47f6 FFF7FEFF 		bl	_ZN3Fan15SetPwmFrequencyEf
 7739 47fa 4FF00108 		mov	r8, #1
 7740 47fe FCF7BAB8 		b	.L275
 7741              	.L1465:
 7742 4802 2046     		mov	r0, r4
 7743 4804 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7744 4808 0028     		cmp	r0, #0
 7745 480a 3846     		mov	r0, r7
 7746 480c C0F26784 		blt	.L1600
 7747 4810 D4BF     		ite	le
 7748 4812 0021     		movle	r1, #0
 7749 4814 0121     		movgt	r1, #1
 7750 4816 FFF7FEFF 		bl	_ZN3Fan11SetInvertedEb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 137


 7751 481a 4FF00108 		mov	r8, #1
 7752 481e FCF7A3B8 		b	.L273
 7753              	.L615:
 7754 4822 3046     		mov	r0, r6
 7755 4824 A949     		ldr	r1, .L1646+4
 7756 4826 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7757 482a 0127     		movs	r7, #1
 7758 482c A368     		ldr	r3, [r4, #8]
 7759 482e FCF764B8 		b	.L763
 7760              	.L266:
 7761 4832 A548     		ldr	r0, .L1646
 7762 4834 FFF7FEFF 		bl	_ZNK6RepRap23GetCurrentOrDefaultToolEv
 7763 4838 FFF7BDB9 		b	.L267
 7764              	.L1502:
 7765 483c DFF88892 		ldr	r9, .L1646
 7766 4840 D9F80C30 		ldr	r3, [r9, #12]
 7767 4844 4FEA8008 		lsl	r8, r0, #2
 7768 4848 4344     		add	r3, r3, r8
 7769 484a 2046     		mov	r0, r4
 7770 484c 5B68     		ldr	r3, [r3, #4]
 7771 484e 1A69     		ldr	r2, [r3, #16]	@ float
 7772 4850 1392     		str	r2, [sp, #76]	@ float
 7773 4852 D3F814E0 		ldr	lr, [r3, #20]	@ float
 7774 4856 CDF868E0 		str	lr, [sp, #104]	@ float
 7775 485a 1AAA     		add	r2, sp, #104
 7776 485c 5021     		movs	r1, #80
 7777 485e 12AB     		add	r3, sp, #72
 7778 4860 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 7779 4864 12AB     		add	r3, sp, #72
 7780 4866 2046     		mov	r0, r4
 7781 4868 13AA     		add	r2, sp, #76
 7782 486a 5421     		movs	r1, #84
 7783 486c FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 7784 4870 9DF84830 		ldrb	r3, [sp, #72]	@ zero_extendqisi2
 7785 4874 002B     		cmp	r3, #0
 7786 4876 00F0DA84 		beq	.L661
 7787 487a D9F80C30 		ldr	r3, [r9, #12]
 7788 487e 1A9A     		ldr	r2, [sp, #104]	@ float
 7789 4880 1399     		ldr	r1, [sp, #76]	@ float
 7790 4882 9844     		add	r8, r8, r3
 7791 4884 D8F80430 		ldr	r3, [r8, #4]
 7792 4888 1961     		str	r1, [r3, #16]	@ float
 7793 488a 5A61     		str	r2, [r3, #20]	@ float
 7794 488c FCF73DBE 		b	.L660
 7795              	.L1469:
 7796 4890 2046     		mov	r0, r4
 7797 4892 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7798 4896 0146     		mov	r1, r0	@ float
 7799 4898 3846     		mov	r0, r7
 7800 489a FFF7FEFF 		bl	_ZN3Fan11SetMinValueEf
 7801 489e 4FF00108 		mov	r8, #1
 7802 48a2 FCF77DB8 		b	.L278
 7803              	.L224:
 7804 48a6 3A46     		mov	r2, r7
 7805 48a8 3046     		mov	r0, r6
 7806 48aa 8949     		ldr	r1, .L1646+8
 7807 48ac FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 138


 7808 48b0 0127     		movs	r7, #1
 7809 48b2 FFF72CBA 		b	.L225
 7810              	.L1554:
 7811 48b6 2046     		mov	r0, r4
 7812 48b8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7813 48bc CAF82400 		str	r0, [r10, #36]	@ float
 7814 48c0 5046     		mov	r0, r10
 7815 48c2 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 7816 48c6 0127     		movs	r7, #1
 7817 48c8 FDF7C8BE 		b	.L796
 7818              	.L1553:
 7819 48cc 2046     		mov	r0, r4
 7820 48ce FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7821 48d2 CAF82000 		str	r0, [r10, #32]	@ float
 7822 48d6 5046     		mov	r0, r10
 7823 48d8 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 7824 48dc 0127     		movs	r7, #1
 7825 48de FDF7B6BE 		b	.L795
 7826              	.L1552:
 7827 48e2 2046     		mov	r0, r4
 7828 48e4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7829 48e8 CAF81C00 		str	r0, [r10, #28]	@ float
 7830 48ec 5046     		mov	r0, r10
 7831 48ee FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 7832 48f2 0127     		movs	r7, #1
 7833 48f4 FDF7A4BE 		b	.L794
 7834              	.L1550:
 7835 48f8 2046     		mov	r0, r4
 7836 48fa FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7837 48fe C8F81400 		str	r0, [r8, #20]	@ float
 7838 4902 4046     		mov	r0, r8
 7839 4904 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 7840 4908 4FF00109 		mov	r9, #1
 7841 490c FDF732BE 		b	.L785
 7842              	.L1549:
 7843 4910 2046     		mov	r0, r4
 7844 4912 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7845 4916 C8F81000 		str	r0, [r8, #16]	@ float
 7846 491a 4046     		mov	r0, r8
 7847 491c FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 7848 4920 4FF00109 		mov	r9, #1
 7849 4924 FDF71FBE 		b	.L784
 7850              	.L1548:
 7851 4928 2046     		mov	r0, r4
 7852 492a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7853 492e 07EE900A 		fmsr	s15, r0
 7854 4932 07F6AC22 		addw	r2, r7, #2732
 7855 4936 27EEA77A 		fmuls	s14, s15, s15
 7856 493a 07F6D823 		addw	r3, r7, #2776
 7857 493e 1060     		str	r0, [r2]	@ float
 7858 4940 4FF00109 		mov	r9, #1
 7859 4944 83ED007A 		fsts	s14, [r3]
 7860 4948 FDF706BE 		b	.L783
 7861              	.L1547:
 7862 494c 2046     		mov	r0, r4
 7863 494e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7864 4952 C8F80C00 		str	r0, [r8, #12]	@ float
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 139


 7865 4956 4046     		mov	r0, r8
 7866 4958 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 7867 495c 4FF00109 		mov	r9, #1
 7868 4960 FDF7F3BD 		b	.L782
 7869              	.L1546:
 7870 4964 2046     		mov	r0, r4
 7871 4966 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7872 496a C8F80800 		str	r0, [r8, #8]	@ float
 7873 496e 4046     		mov	r0, r8
 7874 4970 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 7875 4974 4FF00109 		mov	r9, #1
 7876 4978 FDF7E0BD 		b	.L781
 7877              	.L1571:
 7878 497c 3046     		mov	r0, r6
 7879 497e 5549     		ldr	r1, .L1646+12
 7880 4980 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7881 4984 FEF7A4B9 		b	.L816
 7882              	.L1536:
 7883 4988 2046     		mov	r0, r4
 7884 498a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 7885 498e 8146     		mov	r9, r0
 7886 4990 FDF794BB 		b	.L159
 7887              	.L1535:
 7888 4994 2046     		mov	r0, r4
 7889 4996 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7890 499a 0746     		mov	r7, r0
 7891 499c FDF785BB 		b	.L158
 7892              	.L1426:
 7893 49a0 17EE902A 		fmrs	r2, s15
 7894 49a4 FFF7FEFF 		bl	_ZN4Heat20SetActiveTemperatureEaf
 7895 49a8 DAF80C00 		ldr	r0, [r10, #12]
 7896 49ac 4146     		mov	r1, r8
 7897 49ae FFF7FEFF 		bl	_ZN4Heat8ActivateEa
 7898 49b2 FCF721BC 		b	.L350
 7899              	.L764:
 7900 49b6 3046     		mov	r0, r6
 7901 49b8 4749     		ldr	r1, .L1646+16
 7902 49ba FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7903 49be D5F8B031 		ldr	r3, [r5, #432]
 7904 49c2 2BB3     		cbz	r3, .L770
 7905              	.L773:
 7906 49c4 2021     		movs	r1, #32
 7907 49c6 3046     		mov	r0, r6
 7908 49c8 FFF7FEFF 		bl	_ZN9StringRef3catEc
 7909 49cc 2B68     		ldr	r3, [r5]
 7910 49ce 17F80A20 		ldrb	r2, [r7, r10]	@ zero_extendqisi2
 7911 49d2 0AF14001 		add	r1, r10, #64
 7912 49d6 03EBC103 		add	r3, r3, r1, lsl #3
 7913 49da 03F10409 		add	r9, r3, #4
 7914 49de 5B68     		ldr	r3, [r3, #4]
 7915 49e0 83B1     		cbz	r3, .L771
 7916 49e2 4FF00008 		mov	r8, #0
 7917              	.L772:
 7918 49e6 09EB0803 		add	r3, r9, r8
 7919 49ea 3C49     		ldr	r1, .L1646+20
 7920 49ec 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 7921 49ee 3046     		mov	r0, r6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 140


 7922 49f0 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 7923 49f4 D9F80030 		ldr	r3, [r9]
 7924 49f8 08F10108 		add	r8, r8, #1
 7925 49fc 4345     		cmp	r3, r8
 7926 49fe 01D9     		bls	.L771
 7927 4a00 3A22     		movs	r2, #58
 7928 4a02 F0E7     		b	.L772
 7929              	.L771:
 7930 4a04 D5F8B031 		ldr	r3, [r5, #432]
 7931 4a08 0AF1010A 		add	r10, r10, #1
 7932 4a0c 5345     		cmp	r3, r10
 7933 4a0e D9D8     		bhi	.L773
 7934              	.L770:
 7935 4a10 3046     		mov	r0, r6
 7936 4a12 2021     		movs	r1, #32
 7937 4a14 FFF7FEFF 		bl	_ZN9StringRef3catEc
 7938 4a18 D5F8B471 		ldr	r7, [r5, #436]
 7939 4a1c 002F     		cmp	r7, #0
 7940 4a1e 00F0A784 		beq	.L1601
 7941 4a22 0027     		movs	r7, #0
 7942 4a24 4522     		movs	r2, #69
 7943 4a26 00E0     		b	.L775
 7944              	.L774:
 7945 4a28 3A22     		movs	r2, #58
 7946              	.L775:
 7947 4a2a 2B68     		ldr	r3, [r5]
 7948 4a2c 2B49     		ldr	r1, .L1646+20
 7949 4a2e 3B44     		add	r3, r3, r7
 7950 4a30 3046     		mov	r0, r6
 7951 4a32 93F83432 		ldrb	r3, [r3, #564]	@ zero_extendqisi2
 7952 4a36 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 7953 4a3a D5F8B431 		ldr	r3, [r5, #436]
 7954 4a3e 0137     		adds	r7, r7, #1
 7955 4a40 BB42     		cmp	r3, r7
 7956 4a42 F1D8     		bhi	.L774
 7957 4a44 A368     		ldr	r3, [r4, #8]
 7958 4a46 0027     		movs	r7, #0
 7959 4a48 FBF757BF 		b	.L763
 7960              	.L148:
 7961 4a4c 3046     		mov	r0, r6
 7962 4a4e 2449     		ldr	r1, .L1646+24
 7963 4a50 4FF00109 		mov	r9, #1
 7964 4a54 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 7965 4a58 4F46     		mov	r7, r9
 7966 4a5a FEF781B8 		b	.L146
 7967              	.L1529:
 7968 4a5e 3046     		mov	r0, r6
 7969 4a60 2049     		ldr	r1, .L1646+28
 7970 4a62 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7971 4a66 B9F1000F 		cmp	r9, #0
 7972 4a6a 7FF4ECAB 		bne	.L137
 7973 4a6e 1E4B     		ldr	r3, .L1646+32
 7974 4a70 CDF80090 		str	r9, [sp]
 7975 4a74 1A68     		ldr	r2, [r3]
 7976 4a76 2846     		mov	r0, r5
 7977 4a78 2146     		mov	r1, r4
 7978 4a7a 4B46     		mov	r3, r9
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 141


 7979 4a7c FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 7980 4a80 0028     		cmp	r0, #0
 7981 4a82 3DF455AA 		beq	.L139
 7982 4a86 4F46     		mov	r7, r9
 7983 4a88 A368     		ldr	r3, [r4, #8]
 7984 4a8a FBF736BF 		b	.L763
 7985              	.L1533:
 7986 4a8e 2046     		mov	r0, r4
 7987 4a90 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7988 4a94 0146     		mov	r1, r0
 7989 4a96 FDF7D4BA 		b	.L174
 7990              	.L286:
 7991 4a9a F5EEC07A 		fcmpezs	s15
 7992 4a9e 9FED137A 		flds	s14, .L1646+36
 7993 4aa2 F1EE10FA 		fmstat
 7994 4aa6 D8BF     		it	le
 7995 4aa8 F0EE477A 		fcpysle	s15, s14
 7996 4aac FBF79ABF 		b	.L285
 7997              	.L1572:
 7998 4ab0 2046     		mov	r0, r4
 7999 4ab2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8000 4ab6 DDF834C0 		ldr	ip, [sp, #52]
 8001 4aba 4FF00109 		mov	r9, #1
 8002 4abe CCF8300C 		str	r0, [ip, #3120]
 8003 4ac2 FEF7B3BA 		b	.L803
 8004              	.L1647:
 8005 4ac6 00BF     		.align	2
 8006              	.L1646:
 8007 4ac8 00000000 		.word	reprap
 8008 4acc B40E0000 		.word	.LC134
 8009 4ad0 88040000 		.word	.LC52
 8010 4ad4 E0130000 		.word	.LC169
 8011 4ad8 C8120000 		.word	.LC161
 8012 4adc DC120000 		.word	.LC162
 8013 4ae0 B4010000 		.word	.LC32
 8014 4ae4 A4010000 		.word	.LC31
 8015 4ae8 00000000 		.word	.LANCHOR1
 8016 4aec 00000000 		.word	0
 8017              	.L1534:
 8018 4af0 2046     		mov	r0, r4
 8019 4af2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8020 4af6 0146     		mov	r1, r0
 8021 4af8 FDF7BDBA 		b	.L177
 8022              	.L197:
 8023 4afc 3046     		mov	r0, r6
 8024 4afe BD49     		ldr	r1, .L1648
 8025 4b00 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8026 4b04 0127     		movs	r7, #1
 8027 4b06 A368     		ldr	r3, [r4, #8]
 8028 4b08 FBF7F7BE 		b	.L763
 8029              	.L1507:
 8030 4b0c 0121     		movs	r1, #1
 8031 4b0e 2046     		mov	r0, r4
 8032 4b10 FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringEb
 8033 4b14 0746     		mov	r7, r0
 8034 4b16 3946     		mov	r1, r7
 8035 4b18 2846     		mov	r0, r5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 142


 8036 4b1a FFF7FEFF 		bl	_ZN6GCodes9StartHashEPKc
 8037 4b1e 0028     		cmp	r0, #0
 8038 4b20 7CF4F1AB 		bne	.L210
 8039 4b24 3A46     		mov	r2, r7
 8040 4b26 3046     		mov	r0, r6
 8041 4b28 B349     		ldr	r1, .L1648+4
 8042 4b2a FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8043 4b2e 0127     		movs	r7, #1
 8044 4b30 A368     		ldr	r3, [r4, #8]
 8045 4b32 FBF7E2BE 		b	.L763
 8046              	.L1508:
 8047 4b36 3946     		mov	r1, r7
 8048 4b38 D9F80C00 		ldr	r0, [r9, #12]
 8049 4b3c 4246     		mov	r2, r8
 8050 4b3e FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
 8051 4b42 0746     		mov	r7, r0
 8052 4b44 0028     		cmp	r0, #0
 8053 4b46 7CF46BAE 		bne	.L378
 8054 4b4a FCF72FBA 		b	.L1428
 8055              	.L636:
 8056 4b4e 4A46     		mov	r2, r9
 8057 4b50 3046     		mov	r0, r6
 8058 4b52 AA49     		ldr	r1, .L1648+8
 8059 4b54 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8060 4b58 3B6C     		ldr	r3, [r7, #64]
 8061 4b5a 002B     		cmp	r3, #0
 8062 4b5c 00F0CC85 		beq	.L1602
 8063 4b60 07F12409 		add	r9, r7, #36
 8064 4b64 4FF0200A 		mov	r10, #32
 8065 4b68 01E0     		b	.L641
 8066              	.L640:
 8067 4b6a 4FF03A0A 		mov	r10, #58
 8068              	.L641:
 8069 4b6e 59F8040B 		ldr	r0, [r9], #4	@ float
 8070 4b72 FFF7FEFF 		bl	__aeabi_f2d
 8071 4b76 5246     		mov	r2, r10
 8072 4b78 CDE90001 		strd	r0, [sp]
 8073 4b7c 3046     		mov	r0, r6
 8074 4b7e A049     		ldr	r1, .L1648+12
 8075 4b80 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 8076 4b84 3B6C     		ldr	r3, [r7, #64]
 8077 4b86 08F10108 		add	r8, r8, #1
 8078 4b8a 9845     		cmp	r8, r3
 8079 4b8c EDD3     		bcc	.L640
 8080 4b8e A368     		ldr	r3, [r4, #8]
 8081 4b90 0027     		movs	r7, #0
 8082 4b92 FBF7B2BE 		b	.L763
 8083              	.L793:
 8084 4b96 3046     		mov	r0, r6
 8085 4b98 9A49     		ldr	r1, .L1648+16
 8086 4b9a FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8087 4b9e FDF737BD 		b	.L792
 8088              	.L1537:
 8089 4ba2 4946     		mov	r1, r9
 8090 4ba4 0122     		movs	r2, #1
 8091 4ba6 9848     		ldr	r0, .L1648+20
 8092 4ba8 FFF7FEFF 		bl	_ZN6RepRap16GetFilesResponseEPKcb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 143


 8093 4bac 0DF14C08 		add	r8, sp, #76
 8094 4bb0 0A21     		movs	r1, #10
 8095 4bb2 C8F80000 		str	r0, [r8]
 8096 4bb6 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 8097 4bba FDF7D2BA 		b	.L161
 8098              	.L1471:
 8099 4bbe A368     		ldr	r3, [r4, #8]
 8100 4bc0 FBF79BBE 		b	.L763
 8101              	.L957:
 8102 4bc4 DFED918A 		flds	s17, .L1648+24
 8103 4bc8 FDF776B8 		b	.L488
 8104              	.L458:
 8105 4bcc DAF80070 		ldr	r7, [r10]
 8106 4bd0 05EB8703 		add	r3, r5, r7, lsl #2
 8107 4bd4 D3F8C402 		ldr	r0, [r3, #708]	@ float
 8108 4bd8 FFF7FEFF 		bl	__aeabi_f2d
 8109 4bdc 0022     		movs	r2, #0
 8110 4bde 8C4B     		ldr	r3, .L1648+28
 8111 4be0 FFF7FEFF 		bl	__aeabi_dmul
 8112 4be4 3A46     		mov	r2, r7
 8113 4be6 CDE90001 		strd	r0, [sp]
 8114 4bea 3046     		mov	r0, r6
 8115 4bec 8949     		ldr	r1, .L1648+32
 8116 4bee FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8117 4bf2 FCF7B7BE 		b	.L456
 8118              	.L1488:
 8119 4bf6 3046     		mov	r0, r6
 8120 4bf8 8749     		ldr	r1, .L1648+36
 8121 4bfa FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8122 4bfe 0127     		movs	r7, #1
 8123 4c00 A368     		ldr	r3, [r4, #8]
 8124 4c02 FBF77ABE 		b	.L763
 8125              	.L1586:
 8126 4c06 3046     		mov	r0, r6
 8127 4c08 8449     		ldr	r1, .L1648+40
 8128 4c0a FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8129 4c0e 0127     		movs	r7, #1
 8130 4c10 A368     		ldr	r3, [r4, #8]
 8131 4c12 FBF772BE 		b	.L763
 8132              	.L1577:
 8133 4c16 DFF8F0A1 		ldr	r10, .L1648+20
 8134 4c1a DAF80C00 		ldr	r0, [r10, #12]
 8135 4c1e 90F92F10 		ldrsb	r1, [r0, #47]
 8136 4c22 4B1C     		adds	r3, r1, #1
 8137 4c24 01D0     		beq	.L357
 8138 4c26 FFF7FEFF 		bl	_ZN4Heat9SwitchOffEa
 8139              	.L357:
 8140 4c2a DAF80C30 		ldr	r3, [r10, #12]
 8141 4c2e FF22     		movs	r2, #255
 8142 4c30 83F82F20 		strb	r2, [r3, #47]
 8143 4c34 0027     		movs	r7, #0
 8144 4c36 FEF719BC 		b	.L358
 8145              	.L1593:
 8146 4c3a 3046     		mov	r0, r6
 8147 4c3c 7849     		ldr	r1, .L1648+44
 8148 4c3e FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8149 4c42 0027     		movs	r7, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 144


 8150 4c44 A368     		ldr	r3, [r4, #8]
 8151 4c46 FBF758BE 		b	.L763
 8152              	.L647:
 8153 4c4a 2046     		mov	r0, r4
 8154 4c4c 5321     		movs	r1, #83
 8155 4c4e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8156 4c52 0028     		cmp	r0, #0
 8157 4c54 00F0C482 		beq	.L977
 8158 4c58 2846     		mov	r0, r5
 8159 4c5a 2146     		mov	r1, r4
 8160 4c5c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8161 4c60 0028     		cmp	r0, #0
 8162 4c62 3BF47BAF 		beq	.L554
 8163 4c66 2046     		mov	r0, r4
 8164 4c68 2F68     		ldr	r7, [r5]
 8165 4c6a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8166 4c6e 4744     		add	r7, r7, r8
 8167 4c70 0030     		adds	r0, r0, #0
 8168 4c72 18BF     		it	ne
 8169 4c74 0120     		movne	r0, #1
 8170 4c76 87F8D200 		strb	r0, [r7, #210]
 8171 4c7a 4FF00109 		mov	r9, #1
 8172              	.L648:
 8173 4c7e 2046     		mov	r0, r4
 8174 4c80 5221     		movs	r1, #82
 8175 4c82 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8176 4c86 B8B1     		cbz	r0, .L649
 8177 4c88 2846     		mov	r0, r5
 8178 4c8a 2146     		mov	r1, r4
 8179 4c8c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8180 4c90 0028     		cmp	r0, #0
 8181 4c92 3BF463AF 		beq	.L554
 8182 4c96 2046     		mov	r0, r4
 8183 4c98 2F68     		ldr	r7, [r5]
 8184 4c9a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8185 4c9e 07EB0803 		add	r3, r7, r8
 8186 4ca2 0030     		adds	r0, r0, #0
 8187 4ca4 18BF     		it	ne
 8188 4ca6 0120     		movne	r0, #1
 8189 4ca8 83F8DC00 		strb	r0, [r3, #220]
 8190 4cac 4146     		mov	r1, r8
 8191 4cae 3846     		mov	r0, r7
 8192 4cb0 FFF7FEFF 		bl	_ZN8Platform13DisableDriverEj
 8193 4cb4 4FF00109 		mov	r9, #1
 8194              	.L649:
 8195 4cb8 2046     		mov	r0, r4
 8196 4cba 5421     		movs	r1, #84
 8197 4cbc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8198 4cc0 50B1     		cbz	r0, .L650
 8199 4cc2 2046     		mov	r0, r4
 8200 4cc4 2F68     		ldr	r7, [r5]
 8201 4cc6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8202 4cca 4146     		mov	r1, r8
 8203 4ccc 0246     		mov	r2, r0	@ float
 8204 4cce 3846     		mov	r0, r7
 8205 4cd0 FFF7FEFF 		bl	_ZN8Platform19SetDriverStepTimingEjf
 8206 4cd4 4FF00109 		mov	r9, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 145


 8207              	.L650:
 8208 4cd8 D5F8B031 		ldr	r3, [r5, #432]
 8209 4cdc 002B     		cmp	r3, #0
 8210 4cde 00F09B83 		beq	.L651
 8211 4ce2 4FF0000A 		mov	r10, #0
 8212 4ce6 4F4F     		ldr	r7, .L1648+48
 8213 4ce8 D346     		mov	fp, r10
 8214              	.L654:
 8215 4cea 17F80A10 		ldrb	r1, [r7, r10]	@ zero_extendqisi2
 8216 4cee 2046     		mov	r0, r4
 8217 4cf0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8218 4cf4 D5F8B031 		ldr	r3, [r5, #432]
 8219 4cf8 0028     		cmp	r0, #0
 8220 4cfa 0AF1010A 		add	r10, r10, #1
 8221 4cfe 18BF     		it	ne
 8222 4d00 4FF0010B 		movne	fp, #1
 8223 4d04 5345     		cmp	r3, r10
 8224 4d06 F0D8     		bhi	.L654
 8225 4d08 2046     		mov	r0, r4
 8226 4d0a 4521     		movs	r1, #69
 8227 4d0c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8228 4d10 0028     		cmp	r0, #0
 8229 4d12 40F08883 		bne	.L655
 8230 4d16 BBF1000F 		cmp	fp, #0
 8231 4d1a 40F08483 		bne	.L655
 8232              	.L656:
 8233 4d1e B9F1000F 		cmp	r9, #0
 8234 4d22 00F0C984 		beq	.L657
 8235 4d26 A368     		ldr	r3, [r4, #8]
 8236 4d28 0027     		movs	r7, #0
 8237 4d2a FBF7E6BD 		b	.L763
 8238              	.L862:
 8239 4d2e 3046     		mov	r0, r6
 8240 4d30 3D49     		ldr	r1, .L1648+52
 8241 4d32 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8242 4d36 0027     		movs	r7, #0
 8243 4d38 A368     		ldr	r3, [r4, #8]
 8244 4d3a FBF7DEBD 		b	.L763
 8245              	.L1526:
 8246 4d3e A368     		ldr	r3, [r4, #8]
 8247 4d40 FBF7DBBD 		b	.L763
 8248              	.L1592:
 8249 4d44 2046     		mov	r0, r4
 8250 4d46 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8251 4d4a 0028     		cmp	r0, #0
 8252 4d4c FBF659AE 		blt	.L271
 8253 4d50 0128     		cmp	r0, #1
 8254 4d52 40F37183 		ble	.L290
 8255 4d56 0228     		cmp	r0, #2
 8256 4d58 7BF453AE 		bne	.L271
 8257 4d5c 2846     		mov	r0, r5
 8258 4d5e FFF7FEFF 		bl	_ZN6GCodes17SetMappedFanSpeedEv
 8259 4d62 FBF74EBE 		b	.L271
 8260              	.L1003:
 8261 4d66 3149     		ldr	r1, .L1648+56
 8262 4d68 FDF7E1BD 		b	.L833
 8263              	.L1574:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 146


 8264 4d6c A368     		ldr	r3, [r4, #8]
 8265 4d6e FBF7C4BD 		b	.L763
 8266              	.L814:
 8267 4d72 3046     		mov	r0, r6
 8268 4d74 2E49     		ldr	r1, .L1648+60
 8269 4d76 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8270 4d7a FDF7A9BF 		b	.L816
 8271              	.L577:
 8272 4d7e 2868     		ldr	r0, [r5]
 8273 4d80 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 8274 4d84 2B49     		ldr	r1, .L1648+64
 8275 4d86 0246     		mov	r2, r0
 8276 4d88 3046     		mov	r0, r6
 8277 4d8a FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 8278 4d8e 0027     		movs	r7, #0
 8279 4d90 A368     		ldr	r3, [r4, #8]
 8280 4d92 FBF7B2BD 		b	.L763
 8281              	.L1576:
 8282 4d96 2046     		mov	r0, r4
 8283 4d98 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 8284 4d9c 2649     		ldr	r1, .L1648+68
 8285 4d9e FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 8286 4da2 0028     		cmp	r0, #0
 8287 4da4 0CBF     		ite	eq
 8288 4da6 0021     		moveq	r1, #0
 8289 4da8 1021     		movne	r1, #16
 8290 4daa FEF74ABB 		b	.L864
 8291              	.L1481:
 8292 4dae A368     		ldr	r3, [r4, #8]
 8293 4db0 FBF7A3BD 		b	.L763
 8294              	.L1590:
 8295 4db4 2046     		mov	r0, r4
 8296 4db6 D5F80080 		ldr	r8, [r5]
 8297 4dba FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8298 4dbe 3946     		mov	r1, r7
 8299 4dc0 0246     		mov	r2, r0	@ float
 8300 4dc2 4046     		mov	r0, r8
 8301 4dc4 FFF7FEFF 		bl	_ZN8Platform18SetPressureAdvanceEjf
 8302 4dc8 0027     		movs	r7, #0
 8303 4dca A368     		ldr	r3, [r4, #8]
 8304 4dcc FBF795BD 		b	.L763
 8305              	.L721:
 8306 4dd0 2868     		ldr	r0, [r5]
 8307 4dd2 1A4A     		ldr	r2, .L1648+72
 8308 4dd4 0621     		movs	r1, #6
 8309 4dd6 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8310 4dda 0027     		movs	r7, #0
 8311 4ddc A368     		ldr	r3, [r4, #8]
 8312 4dde FBF78CBD 		b	.L763
 8313              	.L1566:
 8314 4de2 0122     		movs	r2, #1
 8315 4de4 FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
 8316 4de8 0746     		mov	r7, r0
 8317 4dea 0028     		cmp	r0, #0
 8318 4dec 7DF409AE 		bne	.L885
 8319 4df0 FCF7DCB8 		b	.L1428
 8320              	.L1649:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 147


 8321              		.align	2
 8322              	.L1648:
 8323 4df4 F8020000 		.word	.LC42
 8324 4df8 70040000 		.word	.LC51
 8325 4dfc 400F0000 		.word	.LC138
 8326 4e00 D0040000 		.word	.LC56
 8327 4e04 48130000 		.word	.LC164
 8328 4e08 00000000 		.word	reprap
 8329 4e0c 00009642 		.word	1117126656
 8330 4e10 00005940 		.word	1079574528
 8331 4e14 E0080000 		.word	.LC91
 8332 4e18 88060000 		.word	.LC73
 8333 4e1c 70060000 		.word	.LC72
 8334 4e20 C0090000 		.word	.LC96
 8335 4e24 00000000 		.word	_ZN6GCodes11axisLettersE
 8336 4e28 30150000 		.word	.LC182
 8337 4e2c 6C010000 		.word	.LC29
 8338 4e30 F4130000 		.word	.LC170
 8339 4e34 780D0000 		.word	.LC126
 8340 4e38 4C150000 		.word	.LC183
 8341 4e3c 78120000 		.word	.LC159
 8342              	.L1486:
 8343 4e40 3046     		mov	r0, r6
 8344 4e42 AF49     		ldr	r1, .L1650+16
 8345 4e44 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 8346 4e48 FCF7A6B9 		b	.L819
 8347              	.L288:
 8348 4e4c C5EDAF7A 		fsts	s15, [r5, #700]
 8349 4e50 2846     		mov	r0, r5
 8350 4e52 FFF7FEFF 		bl	_ZN6GCodes17SetMappedFanSpeedEv
 8351 4e56 FBF7D4BD 		b	.L271
 8352              	.L1584:
 8353 4e5a 4B88     		ldrh	r3, [r1, #2]
 8354 4e5c 002B     		cmp	r3, #0
 8355 4e5e 7EF49EAC 		bne	.L727
 8356 4e62 2A44     		add	r2, r2, r5
 8357 4e64 82F81E33 		strb	r3, [r2, #798]
 8358 4e68 FEF799BC 		b	.L727
 8359              	.L1582:
 8360 4e6c 2868     		ldr	r0, [r5]
 8361 4e6e FFF7FEFF 		bl	_ZNK8Platform19GetAllEndstopStatesEv
 8362 4e72 0623     		movs	r3, #6
 8363 4e74 03FB0853 		mla	r3, r3, r8, r5
 8364 4e78 03F54673 		add	r3, r3, #792
 8365 4e7c 5A88     		ldrh	r2, [r3, #2]
 8366 4e7e 1042     		tst	r0, r2
 8367 4e80 40F0EA80 		bne	.L723
 8368 4e84 9B88     		ldrh	r3, [r3, #4]
 8369 4e86 8343     		bics	r3, r3, r0
 8370 4e88 40F0E680 		bne	.L723
 8371 4e8c 1F46     		mov	r7, r3
 8372 4e8e A368     		ldr	r3, [r4, #8]
 8373 4e90 FBF733BD 		b	.L763
 8374              	.L213:
 8375 4e94 002F     		cmp	r7, #0
 8376 4e96 40F08D82 		bne	.L215
 8377 4e9a A368     		ldr	r3, [r4, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 148


 8378 4e9c FBF72DBD 		b	.L763
 8379              	.L1511:
 8380 4ea0 0323     		movs	r3, #3
 8381 4ea2 13AA     		add	r2, sp, #76
 8382 4ea4 1AA9     		add	r1, sp, #104
 8383 4ea6 2046     		mov	r0, r4
 8384 4ea8 1393     		str	r3, [sp, #76]
 8385 4eaa FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 8386 4eae 139F     		ldr	r7, [sp, #76]
 8387 4eb0 C7B1     		cbz	r7, .L849
 8388 4eb2 1A9B     		ldr	r3, [sp, #104]
 8389 4eb4 032B     		cmp	r3, #3
 8390 4eb6 00F26683 		bhi	.L850
 8391 4eba 95F85C23 		ldrb	r2, [r5, #860]	@ zero_extendqisi2
 8392 4ebe 1AA8     		add	r0, sp, #104
 8393 4ec0 4146     		mov	r1, r8
 8394 4ec2 4FF0010C 		mov	ip, #1
 8395 4ec6 04E0     		b	.L853
 8396              	.L854:
 8397 4ec8 50F8043F 		ldr	r3, [r0, #4]!
 8398 4ecc 032B     		cmp	r3, #3
 8399 4ece 00F25883 		bhi	.L1603
 8400              	.L853:
 8401 4ed2 0CFA03F3 		lsl	r3, ip, r3
 8402 4ed6 0131     		adds	r1, r1, #1
 8403 4ed8 1A43     		orrs	r2, r2, r3
 8404 4eda B942     		cmp	r1, r7
 8405 4edc D2B2     		uxtb	r2, r2
 8406 4ede F3D1     		bne	.L854
 8407 4ee0 85F85C23 		strb	r2, [r5, #860]
 8408              	.L849:
 8409 4ee4 95F85C03 		ldrb	r0, [r5, #860]	@ zero_extendqisi2
 8410 4ee8 0028     		cmp	r0, #0
 8411 4eea 7CF45DAD 		bne	.L856
 8412 4eee 0746     		mov	r7, r0
 8413 4ef0 A368     		ldr	r3, [r4, #8]
 8414 4ef2 FBF702BD 		b	.L763
 8415              	.L1482:
 8416 4ef6 2046     		mov	r0, r4
 8417 4ef8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8418 4efc 0030     		adds	r0, r0, #0
 8419 4efe 18BF     		it	ne
 8420 4f00 0120     		movne	r0, #1
 8421 4f02 87F8CC00 		strb	r0, [r7, #204]
 8422 4f06 A368     		ldr	r3, [r4, #8]
 8423 4f08 0027     		movs	r7, #0
 8424 4f0a FBF7F6BC 		b	.L763
 8425              	.L359:
 8426 4f0e 3046     		mov	r0, r6
 8427 4f10 7C49     		ldr	r1, .L1650+20
 8428 4f12 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8429 4f16 0127     		movs	r7, #1
 8430 4f18 FEF7A8BA 		b	.L358
 8431              	.L1476:
 8432 4f1c 7A4B     		ldr	r3, .L1650+24
 8433 4f1e 4FFA88F1 		sxtb	r1, r8
 8434 4f22 D868     		ldr	r0, [r3, #12]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 149


 8435 4f24 17EE902A 		fmrs	r2, s15
 8436 4f28 FFF7FEFF 		bl	_ZN4Heat19SetTemperatureLimitEaf
 8437 4f2c 0027     		movs	r7, #0
 8438 4f2e A368     		ldr	r3, [r4, #8]
 8439 4f30 FBF7E3BC 		b	.L763
 8440              	.L1432:
 8441 4f34 3046     		mov	r0, r6
 8442 4f36 7549     		ldr	r1, .L1650+28
 8443 4f38 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8444 4f3c 0127     		movs	r7, #1
 8445 4f3e A368     		ldr	r3, [r4, #8]
 8446 4f40 FBF7DBBC 		b	.L763
 8447              	.L1515:
 8448 4f44 3046     		mov	r0, r6
 8449 4f46 7249     		ldr	r1, .L1650+32
 8450 4f48 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8451 4f4c 0127     		movs	r7, #1
 8452 4f4e A368     		ldr	r3, [r4, #8]
 8453 4f50 FBF7D3BC 		b	.L763
 8454              	.L817:
 8455 4f54 3046     		mov	r0, r6
 8456 4f56 6F49     		ldr	r1, .L1650+36
 8457 4f58 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8458 4f5c FDF7B8BE 		b	.L816
 8459              	.L961:
 8460 4f60 DFF8C891 		ldr	r9, .L1650+60
 8461 4f64 FFF79BBB 		b	.L504
 8462              	.L1596:
 8463 4f68 139B     		ldr	r3, [sp, #76]
 8464 4f6a DAF80C20 		ldr	r2, [r10, #12]
 8465 4f6e 1298     		ldr	r0, [sp, #72]	@ float
 8466 4f70 0090     		str	r0, [sp]	@ float
 8467 4f72 D3F10103 		rsbs	r3, r3, #1
 8468 4f76 38BF     		it	cc
 8469 4f78 0023     		movcc	r3, #0
 8470 4f7a 9144     		add	r9, r9, r2
 8471 4f7c 0193     		str	r3, [sp, #4]
 8472 4f7e 0F99     		ldr	r1, [sp, #60]	@ float
 8473 4f80 D9F80400 		ldr	r0, [r9, #4]
 8474 4f84 109A     		ldr	r2, [sp, #64]	@ float
 8475 4f86 119B     		ldr	r3, [sp, #68]	@ float
 8476 4f88 FFF7FEFF 		bl	_ZN3PID8SetModelEffffb
 8477 4f8c 0028     		cmp	r0, #0
 8478 4f8e 7FF4A6AB 		bne	.L502
 8479 4f92 3046     		mov	r0, r6
 8480 4f94 6049     		ldr	r1, .L1650+40
 8481 4f96 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8482 4f9a FFF7A0BB 		b	.L502
 8483              	.L1541:
 8484 4f9e 2046     		mov	r0, r4
 8485 4fa0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8486 4fa4 0028     		cmp	r0, #0
 8487 4fa6 7DF737A9 		ble	.L886
 8488 4faa 9AF80030 		ldrb	r3, [r10]	@ zero_extendqisi2
 8489 4fae 83F00103 		eor	r3, r3, #1
 8490 4fb2 8AF80030 		strb	r3, [r10]
 8491 4fb6 FDF72FB9 		b	.L886
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 150


 8492              	.L1542:
 8493 4fba 2046     		mov	r0, r4
 8494 4fbc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8495 4fc0 07EE900A 		fmsr	s15, r0
 8496 4fc4 F5EEC07A 		fcmpezs	s15
 8497 4fc8 F1EE10FA 		fmstat
 8498 4fcc 00F1BF82 		bmi	.L1604
 8499 4fd0 9FED527A 		flds	s14, .L1650+44
 8500 4fd4 F4EEC77A 		fcmpes	s15, s14
 8501 4fd8 F1EE10FA 		fmstat
 8502 4fdc 40F16082 		bpl	.L1435
 8503 4fe0 F4EE677A 		fcmps	s15, s15
 8504 4fe4 F1EE10FA 		fmstat
 8505 4fe8 08D6     		bvs	.L472
 8506 4fea 9FED4D7A 		flds	s14, .L1650+48
 8507 4fee F4EEC77A 		fcmpes	s15, s14
 8508 4ff2 F1EE10FA 		fmstat
 8509 4ff6 58BF     		it	pl
 8510 4ff8 F0EE477A 		fcpyspl	s15, s14
 8511              	.L472:
 8512 4ffc 17EE900A 		fmrs	r0, s15
 8513 5000 FFF7FEFF 		bl	__aeabi_f2d
 8514 5004 3AA3     		adr	r3, .L1650
 8515 5006 D3E90023 		ldrd	r2, [r3]
 8516 500a FFF7FEFF 		bl	__aeabi_dmul
 8517 500e 0022     		movs	r2, #0
 8518 5010 444B     		ldr	r3, .L1650+52
 8519 5012 FFF7FEFF 		bl	__aeabi_dadd
 8520 5016 FFF7FEFF 		bl	__aeabi_d2f
 8521 501a 07EE900A 		fmsr	s15, r0
 8522              	.L474:
 8523 501e 17EE900A 		fmrs	r0, s15
 8524 5022 FFF7FEFF 		bl	__aeabi_f2d
 8525 5026 34A3     		adr	r3, .L1650+8
 8526 5028 D3E90023 		ldrd	r2, [r3]
 8527 502c FFF7FEFF 		bl	__aeabi_dmul
 8528 5030 FFF7FEFF 		bl	__aeabi_d2f
 8529 5034 9AF80030 		ldrb	r3, [r10]	@ zero_extendqisi2
 8530 5038 07EE900A 		fmsr	s15, r0
 8531 503c 1BB1     		cbz	r3, .L475
 8532 503e B7EE007A 		fconsts	s14, #112
 8533 5042 77EE677A 		fsubs	s15, s14, s15
 8534              	.L475:
 8535 5046 98F80000 		ldrb	r0, [r8]	@ zero_extendqisi2
 8536 504a 17EE901A 		fmrs	r1, s15
 8537 504e 3222     		movs	r2, #50
 8538 5050 FFF7FEFF 		bl	_ZN8Platform11WriteAnalogEhft
 8539 5054 FDF7E7B8 		b	.L466
 8540              	.L723:
 8541 5058 D5F85833 		ldr	r3, [r5, #856]
 8542 505c 0122     		movs	r2, #1
 8543 505e 02FA08F8 		lsl	r8, r2, r8
 8544 5062 43EA0803 		orr	r3, r3, r8
 8545 5066 C5F85833 		str	r3, [r5, #856]
 8546 506a A368     		ldr	r3, [r4, #8]
 8547 506c 0027     		movs	r7, #0
 8548 506e FBF744BC 		b	.L763
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 151


 8549              	.L1583:
 8550 5072 2046     		mov	r0, r4
 8551 5074 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8552 5078 0623     		movs	r3, #6
 8553 507a 03FB0853 		mla	r3, r3, r8, r5
 8554 507e 5321     		movs	r1, #83
 8555 5080 83F81E03 		strb	r0, [r3, #798]
 8556 5084 2046     		mov	r0, r4
 8557 5086 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8558 508a 0028     		cmp	r0, #0
 8559 508c 50D1     		bne	.L725
 8560 508e 0746     		mov	r7, r0
 8561 5090 A368     		ldr	r3, [r4, #8]
 8562 5092 FBF732BC 		b	.L763
 8563              	.L829:
 8564 5096 2046     		mov	r0, r4
 8565 5098 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8566 509c 07EE900A 		fmsr	s15, r0
 8567 50a0 F5EEC07A 		fcmpezs	s15
 8568 50a4 F1EE10FA 		fmstat
 8569 50a8 06DB     		blt	.L831
 8570 50aa 9FED1F7A 		flds	s14, .L1650+56
 8571 50ae F4EEC77A 		fcmpes	s15, s14
 8572 50b2 F1EE10FA 		fmstat
 8573 50b6 07D9     		bls	.L1605
 8574              	.L831:
 8575 50b8 BAF1000F 		cmp	r10, #0
 8576 50bc 3DF436AC 		beq	.L895
 8577 50c0 A368     		ldr	r3, [r4, #8]
 8578 50c2 0027     		movs	r7, #0
 8579 50c4 FBF719BC 		b	.L763
 8580              	.L1605:
 8581 50c8 87EE877A 		fdivs	s14, s15, s14
 8582 50cc 2868     		ldr	r0, [r5]
 8583 50ce 0027     		movs	r7, #0
 8584 50d0 17EE101A 		fmrs	r1, s14
 8585 50d4 FFF7FEFF 		bl	_ZN8Platform20SetIdleCurrentFactorEf
 8586 50d8 A368     		ldr	r3, [r4, #8]
 8587 50da FBF70EBC 		b	.L763
 8588              	.L1600:
 8589 50de FFF7FEFF 		bl	_ZN3Fan7DisableEv
 8590 50e2 4FF00108 		mov	r8, #1
 8591 50e6 FBF73FBC 		b	.L273
 8592              	.L1651:
 8593 50ea 00BFAFF3 		.align	3
 8593      0080
 8594              	.L1650:
 8595 50f0 F5499FF4 		.word	-190887435
 8596 50f4 499F2440 		.word	1076141897
 8597 50f8 2D431CEB 		.word	-350469331
 8598 50fc E2360A3F 		.word	1057634018
 8599 5100 74140000 		.word	.LC175
 8600 5104 A0060000 		.word	.LC74
 8601 5108 00000000 		.word	reprap
 8602 510c A0080000 		.word	.LC89
 8603 5110 74020000 		.word	.LC39
 8604 5114 28140000 		.word	.LC173
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 152


 8605 5118 200A0000 		.word	.LC98
 8606 511c 00000844 		.word	1141374976
 8607 5120 00003443 		.word	1127481344
 8608 5124 00008140 		.word	1082195968
 8609 5128 0000C842 		.word	1120403456
 8610 512c BC000000 		.word	.LC13
 8611              	.L725:
 8612 5130 2046     		mov	r0, r4
 8613 5132 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8614 5136 D5F8B031 		ldr	r3, [r5, #432]
 8615 513a 8346     		mov	fp, r0
 8616 513c 002B     		cmp	r3, #0
 8617 513e 00F0AB82 		beq	.L994
 8618 5142 4FF0000A 		mov	r10, #0
 8619 5146 C24F     		ldr	r7, .L1652
 8620 5148 D146     		mov	r9, r10
 8621 514a 0122     		movs	r2, #1
 8622              	.L731:
 8623 514c 17F80A10 		ldrb	r1, [r7, r10]	@ zero_extendqisi2
 8624 5150 0C92     		str	r2, [sp, #48]
 8625 5152 2046     		mov	r0, r4
 8626 5154 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8627 5158 0C9A     		ldr	r2, [sp, #48]
 8628 515a 02FA0AF3 		lsl	r3, r2, r10
 8629 515e 49EA0303 		orr	r3, r9, r3
 8630 5162 0AF1010A 		add	r10, r10, #1
 8631 5166 08B1     		cbz	r0, .L730
 8632 5168 1FFA83F9 		uxth	r9, r3
 8633              	.L730:
 8634 516c D5F8B031 		ldr	r3, [r5, #432]
 8635 5170 5345     		cmp	r3, r10
 8636 5172 EBD8     		bhi	.L731
 8637              	.L729:
 8638 5174 2046     		mov	r0, r4
 8639 5176 4521     		movs	r1, #69
 8640 5178 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8641 517c A0B9     		cbnz	r0, .L1606
 8642              	.L732:
 8643 517e BBF1000F 		cmp	fp, #0
 8644 5182 00F07082 		beq	.L737
 8645 5186 BBF1010F 		cmp	fp, #1
 8646 518a 00F06282 		beq	.L738
 8647 518e BBF1FF3F 		cmp	fp, #-1
 8648 5192 00F05382 		beq	.L1607
 8649 5196 2868     		ldr	r0, [r5]
 8650 5198 AE4A     		ldr	r2, .L1652+4
 8651 519a 0621     		movs	r1, #6
 8652 519c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8653              	.L741:
 8654 51a0 A368     		ldr	r3, [r4, #8]
 8655 51a2 0027     		movs	r7, #0
 8656 51a4 FBF7A9BB 		b	.L763
 8657              	.L1606:
 8658 51a8 0DF1680A 		add	r10, sp, #104
 8659 51ac 0723     		movs	r3, #7
 8660 51ae 5146     		mov	r1, r10
 8661 51b0 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 153


 8662 51b2 13AA     		add	r2, sp, #76
 8663 51b4 1393     		str	r3, [sp, #76]
 8664 51b6 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 8665 51ba 1398     		ldr	r0, [sp, #76]
 8666 51bc 0023     		movs	r3, #0
 8667 51be 0121     		movs	r1, #1
 8668              	.L733:
 8669 51c0 8342     		cmp	r3, r0
 8670 51c2 DCD0     		beq	.L732
 8671 51c4 5AF82320 		ldr	r2, [r10, r3, lsl #2]
 8672 51c8 062A     		cmp	r2, #6
 8673 51ca 02F10302 		add	r2, r2, #3
 8674 51ce 05D8     		bhi	.L734
 8675 51d0 01FA02F2 		lsl	r2, r1, r2
 8676 51d4 49EA0209 		orr	r9, r9, r2
 8677 51d8 1FFA89F9 		uxth	r9, r9
 8678              	.L734:
 8679 51dc 0133     		adds	r3, r3, #1
 8680 51de EFE7     		b	.L733
 8681              	.L977:
 8682 51e0 8146     		mov	r9, r0
 8683 51e2 4CE5     		b	.L648
 8684              	.L1578:
 8685 51e4 A368     		ldr	r3, [r4, #8]
 8686 51e6 FBF788BB 		b	.L763
 8687              	.L1599:
 8688 51ea 2046     		mov	r0, r4
 8689 51ec 5221     		movs	r1, #82
 8690 51ee FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8691 51f2 0028     		cmp	r0, #0
 8692 51f4 40F0D481 		bne	.L1608
 8693 51f8 4FF0FF38 		mov	r8, #-1
 8694              	.L779:
 8695 51fc 2046     		mov	r0, r4
 8696 51fe 5421     		movs	r1, #84
 8697 5200 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8698 5204 0028     		cmp	r0, #0
 8699 5206 40F0C781 		bne	.L1609
 8700 520a 4FF0FF30 		mov	r0, #-1
 8701              	.L780:
 8702 520e DFF874E2 		ldr	lr, .L1652+52
 8703 5212 0096     		str	r6, [sp]
 8704 5214 031C     		adds	r3, r0, #0
 8705 5216 3946     		mov	r1, r7
 8706 5218 18BF     		it	ne
 8707 521a 0123     		movne	r3, #1
 8708 521c 4246     		mov	r2, r8
 8709 521e DEF80400 		ldr	r0, [lr, #4]
 8710 5222 FFF7FEFF 		bl	_ZN7Network14EnableProtocolEiibR9StringRef
 8711 5226 0027     		movs	r7, #0
 8712 5228 A368     		ldr	r3, [r4, #8]
 8713 522a FBF766BB 		b	.L763
 8714              	.L661:
 8715 522e 1398     		ldr	r0, [sp, #76]	@ float
 8716 5230 FFF7FEFF 		bl	__aeabi_f2d
 8717 5234 CDE90001 		strd	r0, [sp]
 8718 5238 1A98     		ldr	r0, [sp, #104]	@ float
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 154


 8719 523a FFF7FEFF 		bl	__aeabi_f2d
 8720 523e 3A46     		mov	r2, r7
 8721 5240 CDE90201 		strd	r0, [sp, #8]
 8722 5244 3046     		mov	r0, r6
 8723 5246 8449     		ldr	r1, .L1652+8
 8724 5248 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8725 524c FCF75DB9 		b	.L660
 8726              	.L1591:
 8727 5250 2046     		mov	r0, r4
 8728 5252 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8729 5256 07EE900A 		fmsr	s15, r0
 8730 525a B7EE007A 		fconsts	s14, #112
 8731 525e F4EEC77A 		fcmpes	s15, s14
 8732 5262 F1EE10FA 		fmstat
 8733 5266 C4BF     		itt	gt
 8734 5268 9FED7C7A 		fldsgt	s14, .L1652+12
 8735 526c C7EE877A 		fdivsgt	s15, s15, s14
 8736 5270 F4EE677A 		fcmps	s15, s15
 8737 5274 F1EE10FA 		fmstat
 8738 5278 09D6     		bvs	.L228
 8739 527a B7EE007A 		fconsts	s14, #112
 8740 527e F4EEC77A 		fcmpes	s15, s14
 8741 5282 F1EE10FA 		fmstat
 8742 5286 00F1BD80 		bmi	.L229
 8743 528a F0EE477A 		fcpys	s15, s14
 8744              	.L228:
 8745 528e 9AF80030 		ldrb	r3, [r10]	@ zero_extendqisi2
 8746 5292 1BB1     		cbz	r3, .L230
 8747 5294 B7EE007A 		fconsts	s14, #112
 8748 5298 77EE677A 		fsubs	s15, s14, s15
 8749              	.L230:
 8750 529c 98F80000 		ldrb	r0, [r8]	@ zero_extendqisi2
 8751 52a0 17EE901A 		fmrs	r1, s15
 8752 52a4 4FF4FA72 		mov	r2, #500
 8753 52a8 FFF7FEFF 		bl	_ZN8Platform11WriteAnalogEhft
 8754 52ac 0027     		movs	r7, #0
 8755 52ae FEF72EBD 		b	.L225
 8756              	.L199:
 8757 52b2 3046     		mov	r0, r6
 8758 52b4 6A49     		ldr	r1, .L1652+16
 8759 52b6 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8760 52ba 0127     		movs	r7, #1
 8761 52bc A368     		ldr	r3, [r4, #8]
 8762 52be FBF71CBB 		b	.L763
 8763              	.L1585:
 8764 52c2 DFF8C081 		ldr	r8, .L1652+52
 8765 52c6 D8F80C00 		ldr	r0, [r8, #12]
 8766 52ca 90F92E10 		ldrsb	r1, [r0, #46]
 8767 52ce FFF7FEFF 		bl	_ZN4Heat9SwitchOffEa
 8768 52d2 D8F80C30 		ldr	r3, [r8, #12]
 8769 52d6 FF22     		movs	r2, #255
 8770 52d8 83F82E20 		strb	r2, [r3, #46]
 8771 52dc 0027     		movs	r7, #0
 8772 52de A368     		ldr	r3, [r4, #8]
 8773 52e0 FBF70BBB 		b	.L763
 8774              	.L1581:
 8775 52e4 A368     		ldr	r3, [r4, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 155


 8776 52e6 FBF708BB 		b	.L763
 8777              	.L1565:
 8778 52ea 2B68     		ldr	r3, [r5]
 8779 52ec D3F86C02 		ldr	r0, [r3, #620]	@ float
 8780 52f0 FFF7FEFF 		bl	__aeabi_f2d
 8781 52f4 5B4B     		ldr	r3, .L1652+20
 8782 52f6 0022     		movs	r2, #0
 8783 52f8 FFF7FEFF 		bl	__aeabi_dmul
 8784 52fc FFF7FEFF 		bl	__aeabi_d2iz
 8785 5300 5949     		ldr	r1, .L1652+24
 8786 5302 0246     		mov	r2, r0
 8787 5304 3046     		mov	r0, r6
 8788 5306 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 8789 530a 0027     		movs	r7, #0
 8790 530c A368     		ldr	r3, [r4, #8]
 8791 530e FBF7F4BA 		b	.L763
 8792              	.L1573:
 8793 5312 2846     		mov	r0, r5
 8794 5314 2146     		mov	r1, r4
 8795 5316 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8796 531a 0028     		cmp	r0, #0
 8797 531c 7DF40BAF 		bne	.L180
 8798 5320 FBF71CBC 		b	.L554
 8799              	.L637:
 8800 5324 3846     		mov	r0, r7
 8801 5326 1AA9     		add	r1, sp, #104
 8802 5328 FFF7FEFF 		bl	_ZN4Tool9DefineMixEPKf
 8803 532c FCF7A5BD 		b	.L638
 8804              	.L1575:
 8805 5330 6B6C     		ldr	r3, [r5, #68]
 8806 5332 1B68     		ldr	r3, [r3]
 8807 5334 A342     		cmp	r3, r4
 8808 5336 04D0     		beq	.L183
 8809 5338 EB6B     		ldr	r3, [r5, #60]
 8810 533a 1B68     		ldr	r3, [r3]
 8811 533c A342     		cmp	r3, r4
 8812 533e 7DF418AF 		bne	.L182
 8813              	.L183:
 8814 5342 3046     		mov	r0, r6
 8815 5344 4949     		ldr	r1, .L1652+28
 8816 5346 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8817 534a FDF717BF 		b	.L884
 8818              	.L181:
 8819 534e 3A46     		mov	r2, r7
 8820 5350 3046     		mov	r0, r6
 8821 5352 4749     		ldr	r1, .L1652+32
 8822 5354 1F46     		mov	r7, r3
 8823 5356 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8824 535a A368     		ldr	r3, [r4, #8]
 8825 535c FBF7CDBA 		b	.L763
 8826              	.L1538:
 8827 5360 2868     		ldr	r0, [r5]
 8828 5362 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 8829 5366 0128     		cmp	r0, #1
 8830 5368 7CF4BFAE 		bne	.L882
 8831 536c FCF7B8BE 		b	.L164
 8832              	.L1601:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 156


 8833 5370 A368     		ldr	r3, [r4, #8]
 8834 5372 FBF7C2BA 		b	.L763
 8835              	.L929:
 8836 5376 8046     		mov	r8, r0
 8837 5378 FFF7EEB9 		b	.L280
 8838              	.L1588:
 8839 537c A368     		ldr	r3, [r4, #8]
 8840 537e FBF7BCBA 		b	.L763
 8841              	.L857:
 8842 5382 95F85C33 		ldrb	r3, [r5, #860]	@ zero_extendqisi2
 8843 5386 D907     		lsls	r1, r3, #31
 8844 5388 7EF5ACAE 		bpl	.L846
 8845 538c 2868     		ldr	r0, [r5]
 8846 538e FFF7FEFF 		bl	_ZN8Platform32CheckFirmwareUpdatePrerequisitesEv
 8847 5392 0028     		cmp	r0, #0
 8848 5394 7EF4A6AE 		bne	.L846
 8849 5398 85F85C03 		strb	r0, [r5, #860]
 8850 539c 0746     		mov	r7, r0
 8851 539e A368     		ldr	r3, [r4, #8]
 8852 53a0 FBF7ABBA 		b	.L763
 8853              	.L198:
 8854 53a4 3046     		mov	r0, r6
 8855 53a6 3349     		ldr	r1, .L1652+36
 8856 53a8 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8857 53ac 0127     		movs	r7, #1
 8858 53ae A368     		ldr	r3, [r4, #8]
 8859 53b0 FBF7A3BA 		b	.L763
 8860              	.L215:
 8861 53b4 05F59677 		add	r7, r5, #300
 8862 53b8 3946     		mov	r1, r7
 8863 53ba 2846     		mov	r0, r5
 8864 53bc 0122     		movs	r2, #1
 8865 53be FFF7FEFF 		bl	_ZN6GCodes12SetPositionsEPKfb
 8866 53c2 3B46     		mov	r3, r7
 8867 53c4 0A27     		movs	r7, #10
 8868              	.L217:
 8869 53c6 53F8042B 		ldr	r2, [r3], #4	@ float
 8870 53ca 43F88C2C 		str	r2, [r3, #-140]	@ float
 8871 53ce 013F     		subs	r7, r7, #1
 8872 53d0 F9D1     		bne	.L217
 8873 53d2 A368     		ldr	r3, [r4, #8]
 8874 53d4 D5F85421 		ldr	r2, [r5, #340]	@ float
 8875 53d8 5A60     		str	r2, [r3, #4]	@ float
 8876 53da A368     		ldr	r3, [r4, #8]
 8877 53dc FBF78DBA 		b	.L763
 8878              	.L167:
 8879 53e0 D8F80000 		ldr	r0, [r8]
 8880 53e4 2449     		ldr	r1, .L1652+40
 8881 53e6 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 8882 53ea FCF7BABE 		b	.L161
 8883              	.L165:
 8884 53ee 2868     		ldr	r0, [r5]
 8885 53f0 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 8886 53f4 871E     		subs	r7, r0, #2
 8887 53f6 18BF     		it	ne
 8888 53f8 0127     		movne	r7, #1
 8889 53fa FCF781BE 		b	.L166
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 157


 8890              	.L1594:
 8891 53fe A368     		ldr	r3, [r4, #8]
 8892 5400 FBF77BBA 		b	.L763
 8893              	.L229:
 8894 5404 F5EEC07A 		fcmpezs	s15
 8895 5408 9FED1C7A 		flds	s14, .L1652+44
 8896 540c F1EE10FA 		fmstat
 8897 5410 D8BF     		it	le
 8898 5412 F0EE477A 		fcpysle	s15, s14
 8899 5416 3AE7     		b	.L228
 8900              	.L651:
 8901 5418 2046     		mov	r0, r4
 8902 541a 4521     		movs	r1, #69
 8903 541c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8904 5420 0028     		cmp	r0, #0
 8905 5422 3FF47CAC 		beq	.L656
 8906              	.L655:
 8907 5426 2868     		ldr	r0, [r5]
 8908 5428 154A     		ldr	r2, .L1652+48
 8909 542a 0621     		movs	r1, #6
 8910 542c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8911 5430 0027     		movs	r7, #0
 8912 5432 A368     		ldr	r3, [r4, #8]
 8913 5434 FBF761BA 		b	.L763
 8914              	.L290:
 8915 5438 D9F80010 		ldr	r1, [r9]
 8916 543c 2868     		ldr	r0, [r5]
 8917 543e 05EB8103 		add	r3, r5, r1, lsl #2
 8918 5442 D3F89C22 		ldr	r2, [r3, #668]	@ float
 8919 5446 FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 8920 544a FBF7DABA 		b	.L271
 8921              	.L1653:
 8922 544e 00BF     		.align	2
 8923              	.L1652:
 8924 5450 00000000 		.word	_ZN6GCodes11axisLettersE
 8925 5454 E8110000 		.word	.LC154
 8926 5458 10100000 		.word	.LC142
 8927 545c 00007F43 		.word	1132396544
 8928 5460 F8020000 		.word	.LC42
 8929 5464 00005940 		.word	1079574528
 8930 5468 AC140000 		.word	.LC178
 8931 546c 7C150000 		.word	.LC186
 8932 5470 5C020000 		.word	.LC38
 8933 5474 20030000 		.word	.LC43
 8934 5478 10020000 		.word	.LC36
 8935 547c 00000000 		.word	0
 8936 5480 6C0F0000 		.word	.LC140
 8937 5484 00000000 		.word	reprap
 8938              	.L1562:
 8939 5488 DAF82800 		ldr	r0, [r10, #40]	@ float
 8940 548c FFF7FEFF 		bl	__aeabi_f2d
 8941 5490 0246     		mov	r2, r0
 8942 5492 0B46     		mov	r3, r1
 8943 5494 3046     		mov	r0, r6
 8944 5496 A649     		ldr	r1, .L1654
 8945 5498 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 8946 549c FDF7CEB9 		b	.L604
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 158


 8947              	.L1435:
 8948 54a0 9FEDA47A 		flds	s14, .L1654+4
 8949 54a4 F4EE477A 		fcmps	s15, s14
 8950 54a8 F1EE10FA 		fmstat
 8951 54ac C8BF     		it	gt
 8952 54ae F0EE477A 		fcpysgt	s15, s14
 8953 54b2 B4E5     		b	.L474
 8954              	.L214:
 8955 54b4 4046     		mov	r0, r8
 8956 54b6 D8F80890 		ldr	r9, [r8, #8]
 8957 54ba FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 8958 54be 05F59671 		add	r1, r5, #300
 8959 54c2 0346     		mov	r3, r0
 8960 54c4 3A46     		mov	r2, r7
 8961 54c6 4846     		mov	r0, r9
 8962 54c8 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhm
 8963 54cc A368     		ldr	r3, [r4, #8]
 8964 54ce 5B68     		ldr	r3, [r3, #4]	@ float
 8965 54d0 C5F85431 		str	r3, [r5, #340]	@ float
 8966 54d4 A368     		ldr	r3, [r4, #8]
 8967 54d6 FBF710BA 		b	.L763
 8968              	.L1587:
 8969 54da A368     		ldr	r3, [r4, #8]
 8970 54dc FBF70DBA 		b	.L763
 8971              	.L1598:
 8972 54e0 3037     		adds	r7, r7, #48
 8973 54e2 0022     		movs	r2, #0
 8974 54e4 3946     		mov	r1, r7
 8975 54e6 1AA8     		add	r0, sp, #104
 8976 54e8 FFF7FEFF 		bl	_ZNK5FopDt20GetM301PidParametersEb
 8977 54ec 1A98     		ldr	r0, [sp, #104]	@ float
 8978 54ee FFF7FEFF 		bl	__aeabi_f2d
 8979 54f2 8046     		mov	r8, r0
 8980 54f4 1B98     		ldr	r0, [sp, #108]	@ float
 8981 54f6 8946     		mov	r9, r1
 8982 54f8 FFF7FEFF 		bl	__aeabi_f2d
 8983 54fc CDE90001 		strd	r0, [sp]
 8984 5500 1C98     		ldr	r0, [sp, #112]	@ float
 8985 5502 FFF7FEFF 		bl	__aeabi_f2d
 8986 5506 4B46     		mov	r3, r9
 8987 5508 CDE90201 		strd	r0, [sp, #8]
 8988 550c 4246     		mov	r2, r8
 8989 550e 3046     		mov	r0, r6
 8990 5510 8949     		ldr	r1, .L1654+8
 8991 5512 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 8992 5516 0122     		movs	r2, #1
 8993 5518 1AA8     		add	r0, sp, #104
 8994 551a 3946     		mov	r1, r7
 8995 551c FFF7FEFF 		bl	_ZNK5FopDt20GetM301PidParametersEb
 8996 5520 1A98     		ldr	r0, [sp, #104]	@ float
 8997 5522 FFF7FEFF 		bl	__aeabi_f2d
 8998 5526 8046     		mov	r8, r0
 8999 5528 1B98     		ldr	r0, [sp, #108]	@ float
 9000 552a 8946     		mov	r9, r1
 9001 552c FFF7FEFF 		bl	__aeabi_f2d
 9002 5530 CDE90001 		strd	r0, [sp]
 9003 5534 1C98     		ldr	r0, [sp, #112]	@ float
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 159


 9004 5536 FFF7FEFF 		bl	__aeabi_f2d
 9005 553a 4246     		mov	r2, r8
 9006 553c CDE90201 		strd	r0, [sp, #8]
 9007 5540 4B46     		mov	r3, r9
 9008 5542 3046     		mov	r0, r6
 9009 5544 7D49     		ldr	r1, .L1654+12
 9010 5546 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 9011 554a FFF7C8B8 		b	.L502
 9012              	.L1604:
 9013 554e 9AF80030 		ldrb	r3, [r10]	@ zero_extendqisi2
 9014 5552 9FED7B7A 		flds	s14, .L1654+16
 9015 5556 98F80000 		ldrb	r0, [r8]	@ zero_extendqisi2
 9016 555a 002B     		cmp	r3, #0
 9017 555c F7EE007A 		fconsts	s15, #112
 9018 5560 14BF     		ite	ne
 9019 5562 17EE901A 		fmrsne	r1, s15
 9020 5566 17EE101A 		fmrseq	r1, s14
 9021 556a 3222     		movs	r2, #50
 9022 556c FFF7FEFF 		bl	_ZN8Platform11WriteAnalogEhft
 9023 5570 FCF759BE 		b	.L466
 9024              	.L1597:
 9025 5574 4246     		mov	r2, r8
 9026 5576 3046     		mov	r0, r6
 9027 5578 7249     		ldr	r1, .L1654+20
 9028 557a FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 9029 557e FFF7AEB8 		b	.L502
 9030              	.L1603:
 9031 5582 85F85C23 		strb	r2, [r5, #860]
 9032              	.L850:
 9033 5586 2868     		ldr	r0, [r5]
 9034 5588 6F4A     		ldr	r2, .L1654+24
 9035 558a 0621     		movs	r1, #6
 9036 558c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 9037 5590 0023     		movs	r3, #0
 9038 5592 85F85C33 		strb	r3, [r5, #860]
 9039 5596 A5E4     		b	.L849
 9040              	.L1609:
 9041 5598 2046     		mov	r0, r4
 9042 559a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9043 559e 36E6     		b	.L780
 9044              	.L1608:
 9045 55a0 2046     		mov	r0, r4
 9046 55a2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9047 55a6 8046     		mov	r8, r0
 9048 55a8 28E6     		b	.L779
 9049              	.L1437:
 9050 55aa 0096     		str	r6, [sp]
 9051 55ac F868     		ldr	r0, [r7, #12]
 9052 55ae 18EE103A 		fmrs	r3, s16
 9053 55b2 4146     		mov	r1, r8
 9054 55b4 18EE902A 		fmrs	r2, s17
 9055 55b8 7746     		mov	r7, lr
 9056 55ba FFF7FEFF 		bl	_ZN4Heat13StartAutoTuneEjffR9StringRef
 9057 55be A368     		ldr	r3, [r4, #8]
 9058 55c0 FBF79BB9 		b	.L763
 9059              	.L1524:
 9060 55c4 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 160


 9061 55c6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9062 55ca 4146     		mov	r1, r8
 9063 55cc 0746     		mov	r7, r0
 9064 55ce 0246     		mov	r2, r0
 9065 55d0 2868     		ldr	r0, [r5]
 9066 55d2 FFF7FEFF 		bl	_ZN8Platform18SetCommsPropertiesEjm
 9067 55d6 B8F1010F 		cmp	r8, #1
 9068 55da 14BF     		ite	ne
 9069 55dc 6B6C     		ldrne	r3, [r5, #68]
 9070 55de AB6C     		ldreq	r3, [r5, #72]
 9071 55e0 1B68     		ldr	r3, [r3]
 9072 55e2 07F00107 		and	r7, r7, #1
 9073 55e6 83F87D70 		strb	r7, [r3, #125]
 9074 55ea A368     		ldr	r3, [r4, #8]
 9075 55ec 0027     		movs	r7, #0
 9076 55ee FBF784B9 		b	.L763
 9077              	.L1523:
 9078 55f2 2046     		mov	r0, r4
 9079 55f4 2F68     		ldr	r7, [r5]
 9080 55f6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9081 55fa 4146     		mov	r1, r8
 9082 55fc 0246     		mov	r2, r0
 9083 55fe 3846     		mov	r0, r7
 9084 5600 FFF7FEFF 		bl	_ZN8Platform11SetBaudRateEjm
 9085 5604 0127     		movs	r7, #1
 9086 5606 FCF7B3BB 		b	.L689
 9087              	.L694:
 9088 560a 4146     		mov	r1, r8
 9089 560c 2868     		ldr	r0, [r5]
 9090 560e FFF7FEFF 		bl	_ZNK8Platform18GetCommsPropertiesEj
 9091 5612 4146     		mov	r1, r8
 9092 5614 8146     		mov	r9, r0
 9093 5616 2868     		ldr	r0, [r5]
 9094 5618 FFF7FEFF 		bl	_ZNK8Platform11GetBaudRateEj
 9095 561c 4B4A     		ldr	r2, .L1654+28
 9096 561e 4C49     		ldr	r1, .L1654+32
 9097 5620 0346     		mov	r3, r0
 9098 5622 4C48     		ldr	r0, .L1654+36
 9099 5624 19F0010F 		tst	r9, #1
 9100 5628 18BF     		it	ne
 9101 562a 1046     		movne	r0, r2
 9102 562c 0090     		str	r0, [sp]
 9103 562e 4246     		mov	r2, r8
 9104 5630 3046     		mov	r0, r6
 9105 5632 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 9106 5636 A368     		ldr	r3, [r4, #8]
 9107 5638 FBF75FB9 		b	.L763
 9108              	.L1607:
 9109 563c 0623     		movs	r3, #6
 9110 563e 03FB0853 		mla	r3, r3, r8, r5
 9111 5642 B9F1000F 		cmp	r9, #0
 9112 5646 29D1     		bne	.L740
 9113 5648 A3F81C93 		strh	r9, [r3, #796]	@ movhi
 9114 564c A3F81A93 		strh	r9, [r3, #794]	@ movhi
 9115 5650 A6E5     		b	.L741
 9116              	.L738:
 9117 5652 0623     		movs	r3, #6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 161


 9118 5654 03FB0853 		mla	r3, r3, r8, r5
 9119 5658 B3F81A23 		ldrh	r2, [r3, #794]
 9120 565c 49EA0209 		orr	r9, r9, r2
 9121 5660 A3F81A93 		strh	r9, [r3, #794]	@ movhi
 9122 5664 9CE5     		b	.L741
 9123              	.L737:
 9124 5666 0623     		movs	r3, #6
 9125 5668 03FB0853 		mla	r3, r3, r8, r5
 9126 566c B3F81C23 		ldrh	r2, [r3, #796]
 9127 5670 49EA0209 		orr	r9, r9, r2
 9128 5674 A3F81C93 		strh	r9, [r3, #796]	@ movhi
 9129 5678 92E5     		b	.L741
 9130              	.L1543:
 9131 567a 3046     		mov	r0, r6
 9132 567c 3649     		ldr	r1, .L1654+40
 9133 567e FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 9134 5682 0127     		movs	r7, #1
 9135 5684 A368     		ldr	r3, [r4, #8]
 9136 5686 FBF738B9 		b	.L763
 9137              	.L1595:
 9138 568a 3046     		mov	r0, r6
 9139 568c 3349     		ldr	r1, .L1654+44
 9140 568e FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 9141 5692 0127     		movs	r7, #1
 9142 5694 FEF74BBE 		b	.L155
 9143              	.L994:
 9144 5698 9946     		mov	r9, r3
 9145 569a 6BE5     		b	.L729
 9146              	.L740:
 9147 569c B3F81A13 		ldrh	r1, [r3, #794]
 9148 56a0 B3F81C03 		ldrh	r0, [r3, #796]
 9149 56a4 6FEA0902 		mvn	r2, r9
 9150 56a8 92B2     		uxth	r2, r2
 9151 56aa 1140     		ands	r1, r1, r2
 9152 56ac 0240     		ands	r2, r2, r0
 9153 56ae A3F81A13 		strh	r1, [r3, #794]	@ movhi
 9154 56b2 A3F81C23 		strh	r2, [r3, #796]	@ movhi
 9155 56b6 73E5     		b	.L741
 9156              	.L657:
 9157 56b8 2868     		ldr	r0, [r5]
 9158 56ba 00EB0803 		add	r3, r0, r8
 9159 56be 4146     		mov	r1, r8
 9160 56c0 93F8DC70 		ldrb	r7, [r3, #220]	@ zero_extendqisi2
 9161 56c4 93F8D2A0 		ldrb	r10, [r3, #210]	@ zero_extendqisi2
 9162 56c8 FFF7FEFF 		bl	_ZNK8Platform19GetDriverStepTimingEj
 9163 56cc 0097     		str	r7, [sp]
 9164 56ce FFF7FEFF 		bl	__aeabi_f2d
 9165 56d2 4346     		mov	r3, r8
 9166 56d4 CDE90201 		strd	r0, [sp, #8]
 9167 56d8 5246     		mov	r2, r10
 9168 56da 3046     		mov	r0, r6
 9169 56dc 2049     		ldr	r1, .L1654+48
 9170 56de FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 9171 56e2 4F46     		mov	r7, r9
 9172 56e4 A368     		ldr	r3, [r4, #8]
 9173 56e6 FBF708B9 		b	.L763
 9174              	.L742:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 162


 9175 56ea 3046     		mov	r0, r6
 9176 56ec 1D49     		ldr	r1, .L1654+52
 9177 56ee FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 9178 56f2 A368     		ldr	r3, [r4, #8]
 9179 56f4 FBF701B9 		b	.L763
 9180              	.L1602:
 9181 56f8 1F46     		mov	r7, r3
 9182 56fa A368     		ldr	r3, [r4, #8]
 9183 56fc FBF7FDB8 		b	.L763
 9184              	.L184:
 9185 5700 2B6C     		ldr	r3, [r5, #64]
 9186 5702 1868     		ldr	r0, [r3]
 9187 5704 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 9188 5708 0746     		mov	r7, r0
 9189 570a 8068     		ldr	r0, [r0, #8]
 9190 570c 18B1     		cbz	r0, .L185
 9191 570e FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 9192 5712 0023     		movs	r3, #0
 9193 5714 BB60     		str	r3, [r7, #8]
 9194              	.L185:
 9195 5716 D5F87432 		ldr	r3, [r5, #628]
 9196 571a BB60     		str	r3, [r7, #8]
 9197 571c 0027     		movs	r7, #0
 9198 571e DAF81C00 		ldr	r0, [r10, #28]
 9199 5722 C5F87472 		str	r7, [r5, #628]
 9200 5726 FFF7FEFF 		bl	_ZN12PrintMonitor12StartedPrintEv
 9201 572a A368     		ldr	r3, [r4, #8]
 9202 572c FBF7E5B8 		b	.L763
 9203              	.L1655:
 9204              		.align	2
 9205              	.L1654:
 9206 5730 7C0E0000 		.word	.LC130
 9207 5734 00001645 		.word	1159069696
 9208 5738 AC0A0000 		.word	.LC101
 9209 573c F00A0000 		.word	.LC102
 9210 5740 00000000 		.word	0
 9211 5744 3C0A0000 		.word	.LC99
 9212 5748 10150000 		.word	.LC181
 9213 574c 4C010000 		.word	.LC27
 9214 5750 7C110000 		.word	.LC150
 9215 5754 58010000 		.word	.LC28
 9216 5758 500C0000 		.word	.LC114
 9217 575c DC010000 		.word	.LC33
 9218 5760 B00F0000 		.word	.LC141
 9219 5764 5C120000 		.word	.LC158
 9220              		.size	_ZN6GCodes11HandleMcodeER11GCodeBufferR9StringRef, .-_ZN6GCodes11HandleMcodeER11GCodeBufferR
 9221              		.section	.text._ZN6GCodes11HandleTcodeER11GCodeBufferR9StringRef,"ax",%progbits
 9222              		.align	2
 9223              		.global	_ZN6GCodes11HandleTcodeER11GCodeBufferR9StringRef
 9224              		.thumb
 9225              		.thumb_func
 9226              		.type	_ZN6GCodes11HandleTcodeER11GCodeBufferR9StringRef, %function
 9227              	_ZN6GCodes11HandleTcodeER11GCodeBufferR9StringRef:
 9228              		@ args = 0, pretend = 0, frame = 0
 9229              		@ frame_needed = 0, uses_anonymous_args = 0
 9230 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 9231 0002 8B68     		ldr	r3, [r1, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 163


 9232 0004 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 9233 0006 DB06     		lsls	r3, r3, #27
 9234 0008 0E46     		mov	r6, r1
 9235 000a 0746     		mov	r7, r0
 9236 000c 02D5     		bpl	.L1671
 9237 000e 0124     		movs	r4, #1
 9238              	.L1665:
 9239 0010 2046     		mov	r0, r4
 9240 0012 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 9241              	.L1671:
 9242 0014 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 9243 0018 0446     		mov	r4, r0
 9244 001a 0028     		cmp	r0, #0
 9245 001c F8D0     		beq	.L1665
 9246 001e 3046     		mov	r0, r6
 9247 0020 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9248 0024 C7F88402 		str	r0, [r7, #644]
 9249 0028 D6F88830 		ldr	r3, [r6, #136]
 9250 002c 1844     		add	r0, r0, r3
 9251 002e C7F88402 		str	r0, [r7, #644]
 9252 0032 07F1A402 		add	r2, r7, #164
 9253 0036 0A23     		movs	r3, #10
 9254              	.L1659:
 9255 0038 52F8045B 		ldr	r5, [r2], #4	@ float
 9256 003c C2F8DC50 		str	r5, [r2, #220]	@ float
 9257 0040 013B     		subs	r3, r3, #1
 9258 0042 F9D1     		bne	.L1659
 9259 0044 B268     		ldr	r2, [r6, #8]
 9260 0046 97F80033 		ldrb	r3, [r7, #768]	@ zero_extendqisi2
 9261 004a 5268     		ldr	r2, [r2, #4]	@ float
 9262 004c C7F8AC21 		str	r2, [r7, #428]	@ float
 9263 0050 4BB9     		cbnz	r3, .L1660
 9264 0052 0B4B     		ldr	r3, .L1672
 9265 0054 5B6A     		ldr	r3, [r3, #36]
 9266 0056 13B1     		cbz	r3, .L1661
 9267 0058 5B68     		ldr	r3, [r3, #4]
 9268 005a 9842     		cmp	r0, r3
 9269 005c 03D0     		beq	.L1660
 9270              	.L1661:
 9271 005e B368     		ldr	r3, [r6, #8]
 9272 0060 0422     		movs	r2, #4
 9273 0062 1A74     		strb	r2, [r3, #16]
 9274 0064 D4E7     		b	.L1665
 9275              	.L1660:
 9276 0066 3846     		mov	r0, r7
 9277 0068 3146     		mov	r1, r6
 9278 006a FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 9279 006e 3846     		mov	r0, r7
 9280 0070 3146     		mov	r1, r6
 9281 0072 0022     		movs	r2, #0
 9282 0074 034B     		ldr	r3, .L1672+4
 9283 0076 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 9284 007a 2046     		mov	r0, r4
 9285 007c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 9286              	.L1673:
 9287 007e 00BF     		.align	2
 9288              	.L1672:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 164


 9289 0080 00000000 		.word	reprap
 9290 0084 A4000000 		.word	.LC9
 9291              		.size	_ZN6GCodes11HandleTcodeER11GCodeBufferR9StringRef, .-_ZN6GCodes11HandleTcodeER11GCodeBufferR
 9292              		.section	.text._ZN6GCodes9ActOnCodeER11GCodeBufferR9StringRef,"ax",%progbits
 9293              		.align	2
 9294              		.global	_ZN6GCodes9ActOnCodeER11GCodeBufferR9StringRef
 9295              		.thumb
 9296              		.thumb_func
 9297              		.type	_ZN6GCodes9ActOnCodeER11GCodeBufferR9StringRef, %function
 9298              	_ZN6GCodes9ActOnCodeER11GCodeBufferR9StringRef:
 9299              		@ args = 0, pretend = 0, frame = 0
 9300              		@ frame_needed = 0, uses_anonymous_args = 0
 9301 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 9302 0004 0746     		mov	r7, r0
 9303 0006 0846     		mov	r0, r1
 9304 0008 0C46     		mov	r4, r1
 9305 000a 9046     		mov	r8, r2
 9306 000c FFF7FEFF 		bl	_ZNK11GCodeBuffer7IsEmptyEv
 9307 0010 0646     		mov	r6, r0
 9308 0012 98B9     		cbnz	r0, .L1682
 9309 0014 94F88D30 		ldrb	r3, [r4, #141]	@ zero_extendqisi2
 9310 0018 A3B9     		cbnz	r3, .L1688
 9311              	.L1676:
 9312 001a 2046     		mov	r0, r4
 9313 001c FFF7FEFF 		bl	_ZN11GCodeBuffer16GetCommandLetterEv
 9314 0020 4D28     		cmp	r0, #77
 9315 0022 20D0     		beq	.L1679
 9316 0024 5428     		cmp	r0, #84
 9317 0026 2CD0     		beq	.L1680
 9318 0028 4728     		cmp	r0, #71
 9319 002a 23D0     		beq	.L1689
 9320 002c 3846     		mov	r0, r7
 9321 002e 2146     		mov	r1, r4
 9322 0030 0022     		movs	r2, #0
 9323 0032 174B     		ldr	r3, .L1690
 9324 0034 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 9325 0038 0125     		movs	r5, #1
 9326 003a 00E0     		b	.L1686
 9327              	.L1682:
 9328 003c 0125     		movs	r5, #1
 9329              	.L1686:
 9330 003e 2846     		mov	r0, r5
 9331 0040 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 9332              	.L1688:
 9333 0044 D7F86003 		ldr	r0, [r7, #864]
 9334 0048 D7F8FC20 		ldr	r2, [r7, #252]
 9335 004c 2146     		mov	r1, r4
 9336 004e FFF7FEFF 		bl	_ZN10GCodeQueue9QueueCodeER11GCodeBufferm
 9337 0052 0546     		mov	r5, r0
 9338 0054 0028     		cmp	r0, #0
 9339 0056 E0D0     		beq	.L1676
 9340 0058 3846     		mov	r0, r7
 9341 005a 2146     		mov	r1, r4
 9342 005c 3246     		mov	r2, r6
 9343 005e 0C4B     		ldr	r3, .L1690
 9344 0060 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 9345 0064 EBE7     		b	.L1686
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 165


 9346              	.L1679:
 9347 0066 3846     		mov	r0, r7
 9348 0068 2146     		mov	r1, r4
 9349 006a 4246     		mov	r2, r8
 9350 006c BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 9351 0070 FFF7FEBF 		b	_ZN6GCodes11HandleMcodeER11GCodeBufferR9StringRef
 9352              	.L1689:
 9353 0074 3846     		mov	r0, r7
 9354 0076 2146     		mov	r1, r4
 9355 0078 4246     		mov	r2, r8
 9356 007a BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 9357 007e FFF7FEBF 		b	_ZN6GCodes11HandleGcodeER11GCodeBufferR9StringRef
 9358              	.L1680:
 9359 0082 3846     		mov	r0, r7
 9360 0084 2146     		mov	r1, r4
 9361 0086 4246     		mov	r2, r8
 9362 0088 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 9363 008c FFF7FEBF 		b	_ZN6GCodes11HandleTcodeER11GCodeBufferR9StringRef
 9364              	.L1691:
 9365              		.align	2
 9366              	.L1690:
 9367 0090 A4000000 		.word	.LC9
 9368              		.size	_ZN6GCodes9ActOnCodeER11GCodeBufferR9StringRef, .-_ZN6GCodes9ActOnCodeER11GCodeBufferR9Strin
 9369              		.global	RETRACTPROBE_G
 9370              		.global	DEPLOYPROBE_G
 9371              		.global	CONFIG_OVERRIDE_G
 9372              		.global	SLEEP_G
 9373              		.global	STOP_G
 9374              		.global	CANCEL_G
 9375              		.global	RESUME_G
 9376              		.global	BED_EQUATION_G
 9377              		.section	.data.BED_EQUATION_G,"aw",%progbits
 9378              		.align	2
 9379              		.set	.LANCHOR0,. + 0
 9380              		.type	BED_EQUATION_G, %object
 9381              		.size	BED_EQUATION_G, 4
 9382              	BED_EQUATION_G:
 9383 0000 00160000 		.word	.LC194
 9384              		.section	.data.SLEEP_G,"aw",%progbits
 9385              		.align	2
 9386              		.set	.LANCHOR8,. + 0
 9387              		.type	SLEEP_G, %object
 9388              		.size	SLEEP_G, 4
 9389              	SLEEP_G:
 9390 0000 D8150000 		.word	.LC190
 9391              		.section	.data.STOP_G,"aw",%progbits
 9392              		.align	2
 9393              		.set	.LANCHOR7,. + 0
 9394              		.type	STOP_G, %object
 9395              		.size	STOP_G, 4
 9396              	STOP_G:
 9397 0000 E0150000 		.word	.LC191
 9398              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 9399              		.align	2
 9400              		.type	_ZL32cpu_irq_critical_section_counter, %object
 9401              		.size	_ZL32cpu_irq_critical_section_counter, 4
 9402              	_ZL32cpu_irq_critical_section_counter:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 166


 9403 0000 00000000 		.space	4
 9404              		.section	.data.CANCEL_G,"aw",%progbits
 9405              		.align	2
 9406              		.set	.LANCHOR1,. + 0
 9407              		.type	CANCEL_G, %object
 9408              		.size	CANCEL_G, 4
 9409              	CANCEL_G:
 9410 0000 E8150000 		.word	.LC192
 9411              		.section	.rodata.str1.4,"aMS",%progbits,1
 9412              		.align	2
 9413              	.LC0:
 9414 0000 496E7661 		.ascii	"Invalid G2 or G3 command\000"
 9414      6C696420 
 9414      4732206F 
 9414      72204733 
 9414      20636F6D 
 9415 0019 000000   		.space	3
 9416              	.LC1:
 9417 001c 696E7661 		.ascii	"invalid G Code: %s\000"
 9417      6C696420 
 9417      4720436F 
 9417      64653A20 
 9417      257300
 9418 002f 00       		.space	1
 9419              	.LC2:
 9420 0030 4D757374 		.ascii	"Must home a delta printer before bed probing\000"
 9420      20686F6D 
 9420      65206120 
 9420      64656C74 
 9420      61207072 
 9421 005d 000000   		.space	3
 9422              	.LC3:
 9423 0060 4D757374 		.ascii	"Must home X and Y before bed probing\000"
 9423      20686F6D 
 9423      65205820 
 9423      616E6420 
 9423      59206265 
 9424 0085 000000   		.space	3
 9425              	.LC4:
 9426 0088 303A2F67 		.ascii	"0:/gcodes/\000"
 9426      636F6465 
 9426      732F00
 9427 0093 00       		.space	1
 9428              	.LC5:
 9429 0094 6F6E00   		.ascii	"on\000"
 9430 0097 00       		.space	1
 9431              	.LC6:
 9432 0098 6F666600 		.ascii	"off\000"
 9433              	.LC7:
 9434 009c 79657300 		.ascii	"yes\000"
 9435              	.LC8:
 9436 00a0 6E6F00   		.ascii	"no\000"
 9437 00a3 00       		.space	1
 9438              	.LC9:
 9439 00a4 00       		.ascii	"\000"
 9440 00a5 000000   		.space	3
 9441              	.LC10:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 167


 9442 00a8 616C6C6F 		.ascii	"allowed\000"
 9442      77656400 
 9443              	.LC11:
 9444 00b0 64656E69 		.ascii	"denied\000"
 9444      656400
 9445 00b7 00       		.space	1
 9446              	.LC12:
 9447 00b8 50494400 		.ascii	"PID\000"
 9448              	.LC13:
 9449 00bc 62616E67 		.ascii	"bang-bang\000"
 9449      2D62616E 
 9449      6700
 9450 00c6 0000     		.space	2
 9451              	.LC14:
 9452 00c8 63757374 		.ascii	"custom PID\000"
 9452      6F6D2050 
 9452      494400
 9453 00d3 00       		.space	1
 9454              	.LC15:
 9455 00d4 20776974 		.ascii	" with interpolation\000"
 9455      6820696E 
 9455      74657270 
 9455      6F6C6174 
 9455      696F6E00 
 9456              	.LC16:
 9457 00e8 286F6E29 		.ascii	"(on)\000"
 9457      00
 9458 00ed 000000   		.space	3
 9459              	.LC17:
 9460 00f0 656E6162 		.ascii	"enabled\000"
 9460      6C656400 
 9461              	.LC18:
 9462 00f8 64697361 		.ascii	"disabled\000"
 9462      626C6564 
 9462      00
 9463 0101 000000   		.space	3
 9464              	.LC19:
 9465 0104 636F6E66 		.ascii	"config.g\000"
 9465      69672E67 
 9465      00
 9466 010d 000000   		.space	3
 9467              	.LC20:
 9468 0110 72657072 		.ascii	"reprap.htm\000"
 9468      61702E68 
 9468      746D00
 9469 011b 00       		.space	1
 9470              	.LC21:
 9471 011c 6E6F7420 		.ascii	"not \000"
 9471      00
 9472 0121 000000   		.space	3
 9473              	.LC22:
 9474 0124 6E6F6E65 		.ascii	"none\000"
 9474      00
 9475 0129 000000   		.space	3
 9476              	.LC23:
 9477 012c 68696768 		.ascii	"high end\000"
 9477      20656E64 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 168


 9477      00
 9478 0135 000000   		.space	3
 9479              	.LC24:
 9480 0138 6C6F7720 		.ascii	"low end\000"
 9480      656E6400 
 9481              	.LC25:
 9482 0140 6C6F7700 		.ascii	"low\000"
 9483              	.LC26:
 9484 0144 68696768 		.ascii	"high\000"
 9484      00
 9485 0149 000000   		.space	3
 9486              	.LC27:
 9487 014c 72657175 		.ascii	"requires\000"
 9487      69726573 
 9487      00
 9488 0155 000000   		.space	3
 9489              	.LC28:
 9490 0158 646F6573 		.ascii	"does not require\000"
 9490      206E6F74 
 9490      20726571 
 9490      75697265 
 9490      00
 9491 0169 000000   		.space	3
 9492              	.LC29:
 9493 016c 4D6F746F 		.ascii	"Motor current % of normal - \000"
 9493      72206375 
 9493      7272656E 
 9493      74202520 
 9493      6F66206E 
 9494 0189 000000   		.space	3
 9495              	.LC30:
 9496 018c 4D6F746F 		.ascii	"Motor current (mA) - \000"
 9496      72206375 
 9496      7272656E 
 9496      7420286D 
 9496      4129202D 
 9497 01a2 0000     		.space	2
 9498              	.LC31:
 9499 01a4 5072696E 		.ascii	"Print cancelled\000"
 9499      74206361 
 9499      6E63656C 
 9499      6C656400 
 9500              	.LC32:
 9501 01b4 496E7661 		.ascii	"Invalid extruder number specified: %ld\000"
 9501      6C696420 
 9501      65787472 
 9501      75646572 
 9501      206E756D 
 9502 01db 00       		.space	1
 9503              	.LC33:
 9504 01dc 49646C65 		.ascii	"Idle timeouts cannot be negative!\000"
 9504      2074696D 
 9504      656F7574 
 9504      73206361 
 9504      6E6E6F74 
 9505 01fe 0000     		.space	2
 9506              	.LC34:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 169


 9507 0200 25632573 		.ascii	"%c%s%c%c\000"
 9507      25632563 
 9507      00
 9508 0209 000000   		.space	3
 9509              	.LC35:
 9510 020c 25730A00 		.ascii	"%s\012\000"
 9511              	.LC36:
 9512 0210 4E4F4E45 		.ascii	"NONE\012\000"
 9512      0A00
 9513 0216 0000     		.space	2
 9514              	.LC37:
 9515 0218 43616E6E 		.ascii	"Cannot set file to print, because a file is already"
 9515      6F742073 
 9515      65742066 
 9515      696C6520 
 9515      746F2070 
 9516 024b 20626569 		.ascii	" being printed\000"
 9516      6E672070 
 9516      72696E74 
 9516      656400
 9517 025a 0000     		.space	2
 9518              	.LC38:
 9519 025c 4661696C 		.ascii	"Failed to open file %s\000"
 9519      65642074 
 9519      6F206F70 
 9519      656E2066 
 9519      696C6520 
 9520 0273 00       		.space	1
 9521              	.LC39:
 9522 0274 43616E6E 		.ascii	"Cannot print, because no file is selected!\000"
 9522      6F742070 
 9522      72696E74 
 9522      2C206265 
 9522      63617573 
 9523 029f 00       		.space	1
 9524              	.LC40:
 9525 02a0 5072696E 		.ascii	"Printing is already paused!!\000"
 9525      74696E67 
 9525      20697320 
 9525      616C7265 
 9525      61647920 
 9526 02bd 000000   		.space	3
 9527              	.LC41:
 9528 02c0 43616E6E 		.ascii	"Cannot pause print, because no file is being printe"
 9528      6F742070 
 9528      61757365 
 9528      20707269 
 9528      6E742C20 
 9529 02f3 642100   		.ascii	"d!\000"
 9530 02f6 0000     		.space	2
 9531              	.LC42:
 9532 02f8 54686520 		.ascii	"The specified SD position is invalid!\000"
 9532      73706563 
 9532      69666965 
 9532      64205344 
 9532      20706F73 
 9533 031e 0000     		.space	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 170


 9534              	.LC43:
 9535 0320 43616E6E 		.ascii	"Cannot set SD file position, because no print is in"
 9535      6F742073 
 9535      65742053 
 9535      44206669 
 9535      6C652070 
 9536 0353 2070726F 		.ascii	" progress!\000"
 9536      67726573 
 9536      732100
 9537 035e 0000     		.space	2
 9538              	.LC44:
 9539 0360 596F7520 		.ascii	"You must specify the SD position in bytes using the"
 9539      6D757374 
 9539      20737065 
 9539      63696679 
 9539      20746865 
 9540 0393 20532070 		.ascii	" S parameter.\000"
 9540      6172616D 
 9540      65746572 
 9540      2E00
 9541 03a1 000000   		.space	3
 9542              	.LC45:
 9543 03a4 53442070 		.ascii	"SD printing byte %lu/%lu\000"
 9543      72696E74 
 9543      696E6720 
 9543      62797465 
 9543      20256C75 
 9544 03bd 000000   		.space	3
 9545              	.LC46:
 9546 03c0 4E6F7420 		.ascii	"Not SD printing.\000"
 9546      53442070 
 9546      72696E74 
 9546      696E672E 
 9546      00
 9547 03d1 000000   		.space	3
 9548              	.LC47:
 9549 03d4 57726974 		.ascii	"Writing to file: %s\000"
 9549      696E6720 
 9549      746F2066 
 9549      696C653A 
 9549      20257300 
 9550              	.LC48:
 9551 03e8 43616E27 		.ascii	"Can't open file %s for writing.\000"
 9551      74206F70 
 9551      656E2066 
 9551      696C6520 
 9551      25732066 
 9552              	.LC49:
 9553 0408 47436F64 		.ascii	"GCode end-of-file being interpreted.\000"
 9553      6520656E 
 9553      642D6F66 
 9553      2D66696C 
 9553      65206265 
 9554 042d 000000   		.space	3
 9555              	.LC50:
 9556 0430 53696D75 		.ascii	"Simulation mode: %s, move time: %.1f sec, other tim"
 9556      6C617469 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 171


 9556      6F6E206D 
 9556      6F64653A 
 9556      2025732C 
 9557 0463 653A2025 		.ascii	"e: %.1f sec\000"
 9557      2E316620 
 9557      73656300 
 9558 046f 00       		.space	1
 9559              	.LC51:
 9560 0470 43616E6E 		.ascii	"Cannot open file: %s\000"
 9560      6F74206F 
 9560      70656E20 
 9560      66696C65 
 9560      3A202573 
 9561 0485 000000   		.space	3
 9562              	.LC52:
 9563 0488 4C6F6769 		.ascii	"Logical pin %d is not available for writing\000"
 9563      63616C20 
 9563      70696E20 
 9563      25642069 
 9563      73206E6F 
 9564              	.LC53:
 9565 04b4 53746570 		.ascii	"Steps/mm: \000"
 9565      732F6D6D 
 9565      3A2000
 9566 04bf 00       		.space	1
 9567              	.LC54:
 9568 04c0 453A00   		.ascii	"E:\000"
 9569 04c3 00       		.space	1
 9570              	.LC55:
 9571 04c4 25633A20 		.ascii	"%c: %.3f, \000"
 9571      252E3366 
 9571      2C2000
 9572 04cf 00       		.space	1
 9573              	.LC56:
 9574 04d0 2563252E 		.ascii	"%c%.3f\000"
 9574      336600
 9575 04d7 00       		.space	1
 9576              	.LC57:
 9577 04d8 46616E20 		.ascii	"Fan number %d is invalid, must be between 0 and %u\000"
 9577      6E756D62 
 9577      65722025 
 9577      64206973 
 9577      20696E76 
 9578 050b 00       		.space	1
 9579              	.LC58:
 9580 050c 46616E20 		.ascii	"Fan number %d is disabled\000"
 9580      6E756D62 
 9580      65722025 
 9580      64206973 
 9580      20646973 
 9581 0526 0000     		.space	2
 9582              	.LC59:
 9583 0528 46616E25 		.ascii	"Fan%i frequency: %dHz, speed: %d%%, min: %d%%, blip"
 9583      69206672 
 9583      65717565 
 9583      6E63793A 
 9583      20256448 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 172


 9584 055b 3A20252E 		.ascii	": %.2f, inverted: %s\000"
 9584      32662C20 
 9584      696E7665 
 9584      72746564 
 9584      3A202573 
 9585              	.LC60:
 9586 0570 2C207472 		.ascii	", trigger: %dC, heaters:\000"
 9586      69676765 
 9586      723A2025 
 9586      64432C20 
 9586      68656174 
 9587 0589 000000   		.space	3
 9588              	.LC61:
 9589 058c 20257500 		.ascii	" %u\000"
 9590              	.LC62:
 9591 0590 4649524D 		.ascii	"FIRMWARE_NAME: %s FIRMWARE_VERSION: %s ELECTRONICS:"
 9591      57415245 
 9591      5F4E414D 
 9591      453A2025 
 9591      73204649 
 9592 05c3 20257300 		.ascii	" %s\000"
 9593 05c7 00       		.space	1
 9594              	.LC63:
 9595 05c8 52657052 		.ascii	"RepRapFirmware for Duet WiFi\000"
 9595      61704669 
 9595      726D7761 
 9595      72652066 
 9595      6F722044 
 9596 05e5 000000   		.space	3
 9597              	.LC64:
 9598 05e8 46757369 		.ascii	"Fusionware 1.18.1 RC1\000"
 9598      6F6E7761 
 9598      72652031 
 9598      2E31382E 
 9598      31205243 
 9599 05fe 0000     		.space	2
 9600              	.LC65:
 9601 0600 202B2025 		.ascii	" + %s\000"
 9601      7300
 9602 0606 0000     		.space	2
 9603              	.LC66:
 9604 0608 20464952 		.ascii	" FIRMWARE_DATE: %s\000"
 9604      4D574152 
 9604      455F4441 
 9604      54453A20 
 9604      257300
 9605 061b 00       		.space	1
 9606              	.LC67:
 9607 061c 32303137 		.ascii	"2017-05-15\000"
 9607      2D30352D 
 9607      313500
 9608 0627 00       		.space	1
 9609              	.LC68:
 9610 0628 456E6473 		.ascii	"Endstops - \000"
 9610      746F7073 
 9610      202D2000 
 9611              	.LC69:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 173


 9612 0634 5A207072 		.ascii	"Z probe: %s\000"
 9612      6F62653A 
 9612      20257300 
 9613              	.LC70:
 9614 0640 25633A20 		.ascii	"%c: %s, \000"
 9614      25732C20 
 9614      00
 9615 0649 000000   		.space	3
 9616              	.LC71:
 9617 064c 48656174 		.ascii	"Heat sample time is %.3f seconds\000"
 9617      2073616D 
 9617      706C6520 
 9617      74696D65 
 9617      20697320 
 9618 066d 000000   		.space	3
 9619              	.LC72:
 9620 0670 496E7661 		.ascii	"Invalid heater number!\000"
 9620      6C696420 
 9620      68656174 
 9620      6572206E 
 9620      756D6265 
 9621 0687 00       		.space	1
 9622              	.LC73:
 9623 0688 486F7420 		.ascii	"Hot bed is not present!\000"
 9623      62656420 
 9623      6973206E 
 9623      6F742070 
 9623      72657365 
 9624              	.LC74:
 9625 06a0 42616420 		.ascii	"Bad heater number specified!\000"
 9625      68656174 
 9625      6572206E 
 9625      756D6265 
 9625      72207370 
 9626 06bd 000000   		.space	3
 9627              	.LC75:
 9628 06c0 4E6F2063 		.ascii	"No chamber heater has been set up yet!\000"
 9628      68616D62 
 9628      65722068 
 9628      65617465 
 9628      72206861 
 9629 06e7 00       		.space	1
 9630              	.LC76:
 9631 06e8 4368616D 		.ascii	"Chamber heater %d is currently at %.1fC\000"
 9631      62657220 
 9631      68656174 
 9631      65722025 
 9631      64206973 
 9632              	.LC77:
 9633 0710 4E6F2063 		.ascii	"No chamber heater has been configured yet.\000"
 9633      68616D62 
 9633      65722068 
 9633      65617465 
 9633      72206861 
 9634 073b 00       		.space	1
 9635              	.LC78:
 9636 073c 496E7661 		.ascii	"Invalid heater number\000"
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 174


 9636      6C696420 
 9636      68656174 
 9636      6572206E 
 9636      756D6265 
 9637 0752 0000     		.space	2
 9638              	.LC79:
 9639 0754 496E7661 		.ascii	"Invalid temperature limit\000"
 9639      6C696420 
 9639      74656D70 
 9639      65726174 
 9639      75726520 
 9640 076e 0000     		.space	2
 9641              	.LC80:
 9642 0770 54656D70 		.ascii	"Temperature limit for heater %d is %.1fC\000"
 9642      65726174 
 9642      75726520 
 9642      6C696D69 
 9642      7420666F 
 9643 0799 000000   		.space	3
 9644              	.LC81:
 9645 079c 41636365 		.ascii	"Accelerations: \000"
 9645      6C657261 
 9645      74696F6E 
 9645      733A2000 
 9646              	.LC82:
 9647 07ac 25633A20 		.ascii	"%c: %.1f, \000"
 9647      252E3166 
 9647      2C2000
 9648 07b7 00       		.space	1
 9649              	.LC83:
 9650 07b8 2563252E 		.ascii	"%c%.1f\000"
 9650      316600
 9651 07bf 00       		.space	1
 9652              	.LC84:
 9653 07c0 4D617869 		.ascii	"Maximum feedrates: \000"
 9653      6D756D20 
 9653      66656564 
 9653      72617465 
 9653      733A2000 
 9654              	.LC85:
 9655 07d4 4D617869 		.ascii	"Maximum printing acceleration %.1f, maximum travel "
 9655      6D756D20 
 9655      7072696E 
 9655      74696E67 
 9655      20616363 
 9656 0807 61636365 		.ascii	"acceleration %.1f\000"
 9656      6C657261 
 9656      74696F6E 
 9656      20252E31 
 9656      6600
 9657 0819 000000   		.space	3
 9658              	.LC86:
 9659 081c 52657472 		.ascii	"Retraction/un-retraction settings: length %.2f/%.2f"
 9659      61637469 
 9659      6F6E2F75 
 9659      6E2D7265 
 9659      74726163 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 175


 9660 084f 6D6D2C20 		.ascii	"mm, speed %d/%dmm/min, Z hop %.2fmm\000"
 9660      73706565 
 9660      64202564 
 9660      2F25646D 
 9660      6D2F6D69 
 9661 0873 00       		.space	1
 9662              	.LC87:
 9663 0874 41786973 		.ascii	"Axis limits \000"
 9663      206C696D 
 9663      69747320 
 9663      00
 9664 0881 000000   		.space	3
 9665              	.LC88:
 9666 0884 25632025 		.ascii	"%c %c: %.1f min, %.1f max\000"
 9666      633A2025 
 9666      2E316620 
 9666      6D696E2C 
 9666      20252E31 
 9667 089e 0000     		.space	2
 9668              	.LC89:
 9669 08a0 496E7661 		.ascii	"Invalid speed factor specified.\000"
 9669      6C696420 
 9669      73706565 
 9669      64206661 
 9669      63746F72 
 9670              	.LC90:
 9671 08c0 53706565 		.ascii	"Speed factor override: %.1f%%\000"
 9671      64206661 
 9671      63746F72 
 9671      206F7665 
 9671      72726964 
 9672 08de 0000     		.space	2
 9673              	.LC91:
 9674 08e0 45787472 		.ascii	"Extrusion factor override for extruder %d: %.1f%%\000"
 9674      7573696F 
 9674      6E206661 
 9674      63746F72 
 9674      206F7665 
 9675 0912 0000     		.space	2
 9676              	.LC92:
 9677 0914 4572726F 		.ascii	"Error: Invalid servo index %d in M280 command\012\000"
 9677      723A2049 
 9677      6E76616C 
 9677      69642073 
 9677      6572766F 
 9678 0943 00       		.space	1
 9679              	.LC93:
 9680 0944 42616279 		.ascii	"Baby stepping offset is %.3fmm\000"
 9680      20737465 
 9680      7070696E 
 9680      67206F66 
 9680      66736574 
 9681 0963 00       		.space	1
 9682              	.LC94:
 9683 0964 436F6C64 		.ascii	"Cold extrusion is %s, use M302 P[1/0] to allow/deny"
 9683      20657874 
 9683      72757369 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 176


 9683      6F6E2069 
 9683      73202573 
 9684 0997 20697400 		.ascii	" it\000"
 9685 099b 00       		.space	1
 9686              	.LC95:
 9687 099c 42616420 		.ascii	"Bad heater number in M303 command\000"
 9687      68656174 
 9687      6572206E 
 9687      756D6265 
 9687      7220696E 
 9688 09be 0000     		.space	2
 9689              	.LC96:
 9690 09c0 54617267 		.ascii	"Target temperature must be below temperature limit "
 9690      65742074 
 9690      656D7065 
 9690      72617475 
 9690      7265206D 
 9691 09f3 666F7220 		.ascii	"for this heater\000"
 9691      74686973 
 9691      20686561 
 9691      74657200 
 9692 0a03 00       		.space	1
 9693              	.LC97:
 9694 0a04 496E7661 		.ascii	"Invalid PWM in M303 command\000"
 9694      6C696420 
 9694      50574D20 
 9694      696E204D 
 9694      33303320 
 9695              	.LC98:
 9696 0a20 4572726F 		.ascii	"Error: bad model parameters\000"
 9696      723A2062 
 9696      6164206D 
 9696      6F64656C 
 9696      20706172 
 9697              	.LC99:
 9698 0a3c 48656174 		.ascii	"Heater %u is disabled\000"
 9698      65722025 
 9698      75206973 
 9698      20646973 
 9698      61626C65 
 9699 0a52 0000     		.space	2
 9700              	.LC100:
 9701 0a54 48656174 		.ascii	"Heater %u model: gain %.1f, time constant %.1f, dea"
 9701      65722025 
 9701      75206D6F 
 9701      64656C3A 
 9701      20676169 
 9702 0a87 64207469 		.ascii	"d time %.1f, max PWM %.2f, mode: %s\000"
 9702      6D652025 
 9702      2E31662C 
 9702      206D6178 
 9702      2050574D 
 9703 0aab 00       		.space	1
 9704              	.LC101:
 9705 0aac 0A436F6D 		.ascii	"\012Computed PID parameters for setpoint change: P%"
 9705      70757465 
 9705      64205049 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 177


 9705      44207061 
 9705      72616D65 
 9706 0adc 2E31662C 		.ascii	".1f, I%.3f, D%.1f\000"
 9706      2049252E 
 9706      33662C20 
 9706      44252E31 
 9706      6600
 9707 0aee 0000     		.space	2
 9708              	.LC102:
 9709 0af0 0A436F6D 		.ascii	"\012Computed PID parameters for load change: P%.1f,"
 9709      70757465 
 9709      64205049 
 9709      44207061 
 9709      72616D65 
 9710 0b20 2049252E 		.ascii	" I%.3f, D%.1f\000"
 9710      33662C20 
 9710      44252E31 
 9710      6600
 9711 0b2e 0000     		.space	2
 9712              	.LC103:
 9713 0b30 44726976 		.ascii	"Drive %c does not support %dx microstepping%s\012\000"
 9713      65202563 
 9713      20646F65 
 9713      73206E6F 
 9713      74207375 
 9714 0b5f 00       		.space	1
 9715              	.LC104:
 9716 0b60 44726976 		.ascii	"Drive E%u does not support %dx microstepping%s\012\000"
 9716      65204525 
 9716      7520646F 
 9716      6573206E 
 9716      6F742073 
 9717              	.LC105:
 9718 0b90 4D696372 		.ascii	"Microstepping - \000"
 9718      6F737465 
 9718      7070696E 
 9718      67202D20 
 9718      00
 9719 0ba1 000000   		.space	3
 9720              	.LC106:
 9721 0ba4 4500     		.ascii	"E\000"
 9722 0ba6 0000     		.space	2
 9723              	.LC107:
 9724 0ba8 25633A25 		.ascii	"%c:%d%s, \000"
 9724      6425732C 
 9724      2000
 9725 0bb2 0000     		.space	2
 9726              	.LC108:
 9727 0bb4 3A256425 		.ascii	":%d%s\000"
 9727      7300
 9728 0bba 0000     		.space	2
 9729              	.LC109:
 9730 0bbc 42656420 		.ascii	"Bed compensation taper height is %.1fmm\000"
 9730      636F6D70 
 9730      656E7361 
 9730      74696F6E 
 9730      20746170 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 178


 9731              	.LC110:
 9732 0be4 42656420 		.ascii	"Bed compensation is not tapered\000"
 9732      636F6D70 
 9732      656E7361 
 9732      74696F6E 
 9732      20697320 
 9733              	.LC111:
 9734 0c04 46696C61 		.ascii	"Filament width: %.2fmm, nozzle diameter: %.2fmm\000"
 9734      6D656E74 
 9734      20776964 
 9734      74683A20 
 9734      252E3266 
 9735              	.LC112:
 9736 0c34 636F6E66 		.ascii	"config-override.g\000"
 9736      69672D6F 
 9736      76657272 
 9736      6964652E 
 9736      6700
 9737 0c46 0000     		.space	2
 9738              	.LC113:
 9739 0c48 303A2F73 		.ascii	"0:/sys/\000"
 9739      79732F00 
 9740              	.LC114:
 9741 0c50 436F6E66 		.ascii	"Configuration file not found!\000"
 9741      69677572 
 9741      6174696F 
 9741      6E206669 
 9741      6C65206E 
 9742 0c6e 0000     		.space	2
 9743              	.LC115:
 9744 0c70 4D41433A 		.ascii	"MAC: %x:%x:%x:%x:%x:%x\000"
 9744      2025783A 
 9744      25783A25 
 9744      783A2578 
 9744      3A25783A 
 9745 0c87 00       		.space	1
 9746              	.LC116:
 9747 0c88 52657052 		.ascii	"RepRap name: %s\000"
 9747      6170206E 
 9747      616D653A 
 9747      20257300 
 9748              	.LC117:
 9749 0c98 4E657477 		.ascii	"Network is %s, configured IP address: %d.%d.%d.%d, "
 9749      6F726B20 
 9749      69732025 
 9749      732C2063 
 9749      6F6E6669 
 9750 0ccb 61637475 		.ascii	"actual IP address: %d.%d.%d.%d\000"
 9750      616C2049 
 9750      50206164 
 9750      64726573 
 9750      733A2025 
 9751 0cea 0000     		.space	2
 9752              	.LC118:
 9753 0cec 4E657420 		.ascii	"Net mask: %d.%d.%d.%d \000"
 9753      6D61736B 
 9753      3A202564 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 179


 9753      2E25642E 
 9753      25642E25 
 9754 0d03 00       		.space	1
 9755              	.LC119:
 9756 0d04 47617465 		.ascii	"Gateway: %d.%d.%d.%d \000"
 9756      7761793A 
 9756      2025642E 
 9756      25642E25 
 9756      642E2564 
 9757 0d1a 0000     		.space	2
 9758              	.LC120:
 9759 0d1c 456D756C 		.ascii	"Emulating \000"
 9759      6174696E 
 9759      672000
 9760 0d27 00       		.space	1
 9761              	.LC121:
 9762 0d28 52657052 		.ascii	"RepRap Firmware (i.e. in native mode)\000"
 9762      61702046 
 9762      69726D77 
 9762      61726520 
 9762      28692E65 
 9763 0d4e 0000     		.space	2
 9764              	.LC122:
 9765 0d50 4D61726C 		.ascii	"Marlin\000"
 9765      696E00
 9766 0d57 00       		.space	1
 9767              	.LC123:
 9768 0d58 54656163 		.ascii	"Teacup\000"
 9768      757000
 9769 0d5f 00       		.space	1
 9770              	.LC124:
 9771 0d60 53707269 		.ascii	"Sprinter\000"
 9771      6E746572 
 9771      00
 9772 0d69 000000   		.space	3
 9773              	.LC125:
 9774 0d6c 52657065 		.ascii	"Repetier\000"
 9774      74696572 
 9774      00
 9775 0d75 000000   		.space	3
 9776              	.LC126:
 9777 0d78 556E6B6E 		.ascii	"Unknown: (%d)\000"
 9777      6F776E3A 
 9777      20282564 
 9777      2900
 9778 0d86 0000     		.space	2
 9779              	.LC127:
 9780 0d88 41786973 		.ascii	"Axis compensations - XY: %.5f, YZ: %.5f, ZX: %.5f\000"
 9780      20636F6D 
 9780      70656E73 
 9780      6174696F 
 9780      6E73202D 
 9781 0dba 0000     		.space	2
 9782              	.LC128:
 9783 0dbc 4572726F 		.ascii	"Error: M557 P parameter is no longer supported. use"
 9783      723A204D 
 9783      35353720 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 180


 9783      50207061 
 9783      72616D65 
 9784 0def 20612062 		.ascii	" a bed.g file instead.\012\000"
 9784      65642E67 
 9784      2066696C 
 9784      6520696E 
 9784      73746561 
 9785 0e07 00       		.space	1
 9786              	.LC129:
 9787 0e08 5A205072 		.ascii	"Z Probe type %d, invert %s, dive height %.1fmm, pro"
 9787      6F626520 
 9787      74797065 
 9787      2025642C 
 9787      20696E76 
 9788 0e3b 62652073 		.ascii	"be speed %dmm/min, travel speed %dmm/min, recovery "
 9788      70656564 
 9788      2025646D 
 9788      6D2F6D69 
 9788      6E2C2074 
 9789 0e6e 74696D65 		.ascii	"time %.2f sec\000"
 9789      20252E32 
 9789      66207365 
 9789      6300
 9790              	.LC130:
 9791 0e7c 2C206578 		.ascii	", extra parameter %.2f\000"
 9791      74726120 
 9791      70617261 
 9791      6D657465 
 9791      7220252E 
 9792 0e93 00       		.space	1
 9793              	.LC131:
 9794 0e94 2C207573 		.ascii	", used for axes:\000"
 9794      65642066 
 9794      6F722061 
 9794      7865733A 
 9794      00
 9795 0ea5 000000   		.space	3
 9796              	.LC132:
 9797 0ea8 20256300 		.ascii	" %c\000"
 9798              	.LC133:
 9799 0eac 303A2F77 		.ascii	"0:/www/\000"
 9799      77772F00 
 9800              	.LC134:
 9801 0eb4 496E7661 		.ascii	"Invalid heater number.\012\000"
 9801      6C696420 
 9801      68656174 
 9801      6572206E 
 9801      756D6265 
 9802              	.LC135:
 9803 0ecc 4D6F7665 		.ascii	"Movement outside the bed is %spermitted\000"
 9803      6D656E74 
 9803      206F7574 
 9803      73696465 
 9803      20746865 
 9804              	.LC136:
 9805 0ef4 4D617869 		.ascii	"Maximum jerk rates: \000"
 9805      6D756D20 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 181


 9805      6A65726B 
 9805      20726174 
 9805      65733A20 
 9806 0f09 000000   		.space	3
 9807              	.LC137:
 9808 0f0c 53657474 		.ascii	"Setting mix ratios - wrong number of E drives: %s\000"
 9808      696E6720 
 9808      6D697820 
 9808      72617469 
 9808      6F73202D 
 9809 0f3e 0000     		.space	2
 9810              	.LC138:
 9811 0f40 546F6F6C 		.ascii	"Tool %d mix ratios:\000"
 9811      20256420 
 9811      6D697820 
 9811      72617469 
 9811      6F733A00 
 9812              	.LC139:
 9813 0f54 546F6F6C 		.ascii	"Tool %d mixing is %s\000"
 9813      20256420 
 9813      6D697869 
 9813      6E672069 
 9813      73202573 
 9814 0f69 000000   		.space	3
 9815              	.LC140:
 9816 0f6c 4572726F 		.ascii	"Error: M569 no longer accepts XYZE parameters; use "
 9816      723A204D 
 9816      35363920 
 9816      6E6F206C 
 9816      6F6E6765 
 9817 0f9f 4D353834 		.ascii	"M584 instead\012\000"
 9817      20696E73 
 9817      74656164 
 9817      0A00
 9818 0fad 000000   		.space	3
 9819              	.LC141:
 9820 0fb0 41202564 		.ascii	"A %d sends drive %u forwards, a %d enables it, and "
 9820      2073656E 
 9820      64732064 
 9820      72697665 
 9820      20257520 
 9821 0fe3 74686520 		.ascii	"the minimum pulse width is %.1f microseconds\000"
 9821      6D696E69 
 9821      6D756D20 
 9821      70756C73 
 9821      65207769 
 9822              	.LC142:
 9823 1010 48656174 		.ascii	"Heater %u allowed excursion %.1fC, fault trigger ti"
 9823      65722025 
 9823      7520616C 
 9823      6C6F7765 
 9823      64206578 
 9824 1043 6D652025 		.ascii	"me %.1f seconds\000"
 9824      2E316620 
 9824      7365636F 
 9824      6E647300 
 9825 1053 00       		.space	1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 182


 9826              	.LC143:
 9827 1054 4D353730 		.ascii	"M570 S parameter is no longer required or supported"
 9827      20532070 
 9827      6172616D 
 9827      65746572 
 9827      20697320 
 9828 1087 00       		.ascii	"\000"
 9829              	.LC144:
 9830 1088 4C6F6769 		.ascii	"Logical pin %d is already in use or not available f"
 9830      63616C20 
 9830      70696E20 
 9830      25642069 
 9830      7320616C 
 9831 10bb 6F722075 		.ascii	"or use by M571\000"
 9831      73652062 
 9831      79204D35 
 9831      373100
 9832 10ca 0000     		.space	2
 9833              	.LC145:
 9834 10cc 45787472 		.ascii	"Extrusion ancillary PWM %.3f at %.1fHz on pin %u\000"
 9834      7573696F 
 9834      6E20616E 
 9834      63696C6C 
 9834      61727920 
 9835 10fd 000000   		.space	3
 9836              	.LC146:
 9837 1100 50726573 		.ascii	"Pressure advance for extruder %u is %.3f seconds\000"
 9837      73757265 
 9837      20616476 
 9837      616E6365 
 9837      20666F72 
 9838 1131 000000   		.space	3
 9839              	.LC147:
 9840 1134 41766572 		.ascii	"Average heater %d PWM: %.3f\000"
 9840      61676520 
 9840      68656174 
 9840      65722025 
 9840      64205057 
 9841              	.LC148:
 9842 1150 456E6473 		.ascii	"Endstop configuration:\000"
 9842      746F7020 
 9842      636F6E66 
 9842      69677572 
 9842      6174696F 
 9843 1167 00       		.space	1
 9844              	.LC149:
 9845 1168 20256320 		.ascii	" %c %s (active %s),\000"
 9845      25732028 
 9845      61637469 
 9845      76652025 
 9845      73292C00 
 9846              	.LC150:
 9847 117c 4368616E 		.ascii	"Channel %d: baud rate %d, %s checksum\000"
 9847      6E656C20 
 9847      25643A20 
 9847      62617564 
 9847      20726174 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 183


 9848 11a2 0000     		.space	2
 9849              	.LC151:
 9850 11a4 496E7661 		.ascii	"Invalid extruder drive specified!\000"
 9850      6C696420 
 9850      65787472 
 9850      75646572 
 9850      20647269 
 9851 11c6 0000     		.space	2
 9852              	.LC152:
 9853 11c8 41786973 		.ascii	"Axis scale factors\000"
 9853      20736361 
 9853      6C652066 
 9853      6163746F 
 9853      727300
 9854 11db 00       		.space	1
 9855              	.LC153:
 9856 11dc 25632025 		.ascii	"%c %c: %.3f\000"
 9856      633A2025 
 9856      2E336600 
 9857              	.LC154:
 9858 11e8 42616420 		.ascii	"Bad S parameter in M581 command\012\000"
 9858      53207061 
 9858      72616D65 
 9858      74657220 
 9858      696E204D 
 9859 1209 000000   		.space	3
 9860              	.LC155:
 9861 120c 54726967 		.ascii	"Trigger %u fires on a rising edge on \000"
 9861      67657220 
 9861      25752066 
 9861      69726573 
 9861      206F6E20 
 9862 1232 0000     		.space	2
 9863              	.LC156:
 9864 1234 206F7220 		.ascii	" or a falling edge on \000"
 9864      61206661 
 9864      6C6C696E 
 9864      67206564 
 9864      6765206F 
 9865 124b 00       		.space	1
 9866              	.LC157:
 9867 124c 20656E64 		.ascii	" endstop inputs\000"
 9867      73746F70 
 9867      20696E70 
 9867      75747300 
 9868              	.LC158:
 9869 125c 20776865 		.ascii	" when printing from SD card\000"
 9869      6E207072 
 9869      696E7469 
 9869      6E672066 
 9869      726F6D20 
 9870              	.LC159:
 9871 1278 54726967 		.ascii	"Trigger number out of range\012\000"
 9871      67657220 
 9871      6E756D62 
 9871      6572206F 
 9871      7574206F 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 184


 9872 1295 000000   		.space	3
 9873              	.LC160:
 9874 1298 4572726F 		.ascii	"Error: invalid drive number in M584 command\012\000"
 9874      723A2069 
 9874      6E76616C 
 9874      69642064 
 9874      72697665 
 9875 12c5 000000   		.space	3
 9876              	.LC161:
 9877 12c8 44726976 		.ascii	"Driver assignments:\000"
 9877      65722061 
 9877      73736967 
 9877      6E6D656E 
 9877      74733A00 
 9878              	.LC162:
 9879 12dc 25632575 		.ascii	"%c%u\000"
 9879      00
 9880 12e1 000000   		.space	3
 9881              	.LC163:
 9882 12e4 44696167 		.ascii	"Diagonal %.3f, delta radius %.3f, homed height %.3f"
 9882      6F6E616C 
 9882      20252E33 
 9882      662C2064 
 9882      656C7461 
 9883 1317 2C206265 		.ascii	", bed radius %.1f, X %.3f\302\260, Y %.3f\302\260, "
 9883      64207261 
 9883      64697573 
 9883      20252E31 
 9883      662C2058 
 9884 133e 5A20252E 		.ascii	"Z %.3f\302\260\000"
 9884      3366C2B0 
 9884      00
 9885 1347 00       		.space	1
 9886              	.LC164:
 9887 1348 5072696E 		.ascii	"Printer is not in delta mode\000"
 9887      74657220 
 9887      6973206E 
 9887      6F742069 
 9887      6E206465 
 9888 1365 000000   		.space	3
 9889              	.LC165:
 9890 1368 456E6473 		.ascii	"Endstop adjustments X%.2f Y%.2f Z%.2f, tilt X%.2f%%"
 9890      746F7020 
 9890      61646A75 
 9890      73746D65 
 9890      6E747320 
 9891 139b 2059252E 		.ascii	" Y%.2f%%\000"
 9891      32662525 
 9891      00
 9892              	.LC166:
 9893 13a4 5072696E 		.ascii	"Printer mode is %s with axis factors\000"
 9893      74657220 
 9893      6D6F6465 
 9893      20697320 
 9893      25732077 
 9894 13c9 000000   		.space	3
 9895              	.LC167:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 185


 9896 13cc 2025633A 		.ascii	" %c:%f\000"
 9896      256600
 9897 13d3 00       		.space	1
 9898              	.LC168:
 9899 13d4 25592D25 		.ascii	"%Y-%m-%d\000"
 9899      6D2D2564 
 9899      00
 9900 13dd 000000   		.space	3
 9901              	.LC169:
 9902 13e0 436F756C 		.ascii	"Could not set date\000"
 9902      64206E6F 
 9902      74207365 
 9902      74206461 
 9902      746500
 9903 13f3 00       		.space	1
 9904              	.LC170:
 9905 13f4 496E7661 		.ascii	"Invalid date format\000"
 9905      6C696420 
 9905      64617465 
 9905      20666F72 
 9905      6D617400 
 9906              	.LC171:
 9907 1408 25483A25 		.ascii	"%H:%M:%S\000"
 9907      4D3A2553 
 9907      00
 9908 1411 000000   		.space	3
 9909              	.LC172:
 9910 1414 436F756C 		.ascii	"Could not set time\000"
 9910      64206E6F 
 9910      74207365 
 9910      74207469 
 9910      6D6500
 9911 1427 00       		.space	1
 9912              	.LC173:
 9913 1428 496E7661 		.ascii	"Invalid time format\000"
 9913      6C696420 
 9913      74696D65 
 9913      20666F72 
 9913      6D617400 
 9914              	.LC174:
 9915 143c 43757272 		.ascii	"Current date and time: %04u-%02u-%02u %02u:%02u:%02"
 9915      656E7420 
 9915      64617465 
 9915      20616E64 
 9915      2074696D 
 9916 146f 7500     		.ascii	"u\000"
 9917 1471 000000   		.space	3
 9918              	.LC175:
 9919 1474 0A576172 		.ascii	"\012Warning: RTC has not been configured yet!\000"
 9919      6E696E67 
 9919      3A205254 
 9919      43206861 
 9919      73206E6F 
 9920 149f 00       		.space	1
 9921              	.LC176:
 9922 14a0 25633A25 		.ascii	"%c:%d, \000"
 9922      642C2000 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 186


 9923              	.LC177:
 9924 14a8 3A256400 		.ascii	":%d\000"
 9925              	.LC178:
 9926 14ac 2C206964 		.ascii	", idle factor %d%%\000"
 9926      6C652066 
 9926      6163746F 
 9926      72202564 
 9926      252500
 9927 14bf 00       		.space	1
 9928              	.LC179:
 9929 14c0 4D393131 		.ascii	"M911 not implemented yet\000"
 9929      206E6F74 
 9929      20696D70 
 9929      6C656D65 
 9929      6E746564 
 9930 14d9 000000   		.space	3
 9931              	.LC180:
 9932 14dc 4D435520 		.ascii	"MCU temperature calibration adjustment is %.1f\302\260"
 9932      74656D70 
 9932      65726174 
 9932      75726520 
 9932      63616C69 
 9933 150c 4300     		.ascii	"C\000"
 9934 150e 0000     		.space	2
 9935              	.LC181:
 9936 1510 496E7661 		.ascii	"Invalid module number '%ld'\012\000"
 9936      6C696420 
 9936      6D6F6475 
 9936      6C65206E 
 9936      756D6265 
 9937 152d 000000   		.space	3
 9938              	.LC182:
 9939 1530 43686563 		.ascii	"Checksum error on line %d\000"
 9939      6B73756D 
 9939      20657272 
 9939      6F72206F 
 9939      6E206C69 
 9940 154a 0000     		.space	2
 9941              	.LC183:
 9942 154c 45524153 		.ascii	"ERASE\000"
 9942      4500
 9943 1552 0000     		.space	2
 9944              	.LC184:
 9945 1554 756E7375 		.ascii	"unsupported command: %s\000"
 9945      70706F72 
 9945      74656420 
 9945      636F6D6D 
 9945      616E643A 
 9946              	.LC185:
 9947 156c 47436F64 		.ascii	"GCode files:\012\000"
 9947      65206669 
 9947      6C65733A 
 9947      0A00
 9948 157a 0000     		.space	2
 9949              	.LC186:
 9950 157c 46696C65 		.ascii	"File opened\012File selected\000"
 9950      206F7065 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 187


 9950      6E65640A 
 9950      46696C65 
 9950      2073656C 
 9951 1596 0000     		.space	2
 9952              	.LC187:
 9953 1598 46696C65 		.ascii	"File %s selected for printing\000"
 9953      20257320 
 9953      73656C65 
 9953      63746564 
 9953      20666F72 
 9954 15b6 0000     		.space	2
 9955              	.LC188:
 9956 15b8 72657472 		.ascii	"retractprobe.g\000"
 9956      61637470 
 9956      726F6265 
 9956      2E6700
 9957 15c7 00       		.space	1
 9958              	.LC189:
 9959 15c8 6465706C 		.ascii	"deployprobe.g\000"
 9959      6F797072 
 9959      6F62652E 
 9959      6700
 9960 15d6 0000     		.space	2
 9961              	.LC190:
 9962 15d8 736C6565 		.ascii	"sleep.g\000"
 9962      702E6700 
 9963              	.LC191:
 9964 15e0 73746F70 		.ascii	"stop.g\000"
 9964      2E6700
 9965 15e7 00       		.space	1
 9966              	.LC192:
 9967 15e8 63616E63 		.ascii	"cancel.g\000"
 9967      656C2E67 
 9967      00
 9968 15f1 000000   		.space	3
 9969              	.LC193:
 9970 15f4 72657375 		.ascii	"resume.g\000"
 9970      6D652E67 
 9970      00
 9971 15fd 000000   		.space	3
 9972              	.LC194:
 9973 1600 6265642E 		.ascii	"bed.g\000"
 9973      6700
 9974 1606 0000     		.section	.data.RETRACTPROBE_G,"aw",%progbits
 9975              		.align	2
 9976              		.set	.LANCHOR4,. + 0
 9977              		.type	RETRACTPROBE_G, %object
 9978              		.size	RETRACTPROBE_G, 4
 9979              	RETRACTPROBE_G:
 9980 0000 B8150000 		.word	.LC188
 9981              		.section	.rodata.CSWTCH.625,"a",%progbits
 9982              		.align	2
 9983              		.set	.LANCHOR6,. + 0
 9984              		.type	CSWTCH.625, %object
 9985              		.size	CSWTCH.625, 12
 9986              	CSWTCH.625:
 9987 0000 01000000 		.word	1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc6G1M4x.s 			page 188


 9988 0004 02000000 		.word	2
 9989 0008 03000000 		.word	3
 9990              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 9991              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 9992              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 9993              	_ZL28cpu_irq_prev_interrupt_state:
 9994 0000 00       		.space	1
 9995              		.section	.data.CONFIG_OVERRIDE_G,"aw",%progbits
 9996              		.align	2
 9997              		.set	.LANCHOR5,. + 0
 9998              		.type	CONFIG_OVERRIDE_G, %object
 9999              		.size	CONFIG_OVERRIDE_G, 4
 10000              	CONFIG_OVERRIDE_G:
 10001 0000 340C0000 		.word	.LC112
 10002              		.section	.data.RESUME_G,"aw",%progbits
 10003              		.align	2
 10004              		.set	.LANCHOR2,. + 0
 10005              		.type	RESUME_G, %object
 10006              		.size	RESUME_G, 4
 10007              	RESUME_G:
 10008 0000 F4150000 		.word	.LC193
 10009              		.section	.data.DEPLOYPROBE_G,"aw",%progbits
 10010              		.align	2
 10011              		.set	.LANCHOR3,. + 0
 10012              		.type	DEPLOYPROBE_G, %object
 10013              		.size	DEPLOYPROBE_G, 4
 10014              	DEPLOYPROBE_G:
 10015 0000 C8150000 		.word	.LC189
 10016              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
