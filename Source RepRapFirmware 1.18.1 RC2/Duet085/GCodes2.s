ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 1


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
  14              		.file	"GCodes2.cpp"
  15              		.global	__aeabi_fmul
  16              		.global	__aeabi_fadd
  17              		.section	.text._ZN6GCodes11HandleGcodeER11GCodeBufferR9StringRef,"ax",%progbits
  18              		.align	2
  19              		.global	_ZN6GCodes11HandleGcodeER11GCodeBufferR9StringRef
  20              		.thumb
  21              		.thumb_func
  22              		.type	_ZN6GCodes11HandleGcodeER11GCodeBufferR9StringRef, %function
  23              	_ZN6GCodes11HandleGcodeER11GCodeBufferR9StringRef:
  24              		@ args = 0, pretend = 0, frame = 8
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
  27 0004 0023     		movs	r3, #0
  28 0006 84B0     		sub	sp, sp, #16
  29 0008 0646     		mov	r6, r0
  30 000a 0846     		mov	r0, r1
  31 000c 8DF80F30 		strb	r3, [sp, #15]
  32 0010 0C46     		mov	r4, r1
  33 0012 1746     		mov	r7, r2
  34 0014 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
  35 0018 96F8A832 		ldrb	r3, [r6, #680]	@ zero_extendqisi2
  36 001c 0546     		mov	r5, r0
  37 001e 002B     		cmp	r3, #0
  38 0020 71D0     		beq	.L2
  39 0022 0428     		cmp	r0, #4
  40 0024 6FDD     		ble	.L2
  41 0026 0A28     		cmp	r0, #10
  42 0028 07D0     		beq	.L3
  43 002a A0F11403 		sub	r3, r0, #20
  44 002e 012B     		cmp	r3, #1
  45 0030 03D9     		bls	.L3
  46 0032 A0F15A03 		sub	r3, r0, #90
  47 0036 022B     		cmp	r3, #2
  48 0038 6CD8     		bhi	.L106
  49              	.L3:
  50 003a A368     		ldr	r3, [r4, #8]
  51 003c 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
  52 003e D206     		lsls	r2, r2, #27
  53 0040 68D4     		bmi	.L106
  54              	.L5:
  55 0042 5C2D     		cmp	r5, #92
  56 0044 00F24881 		bhi	.L46
  57 0048 DFE815F0 		tbh	[pc, r5, lsl #1]
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 2


  58              	.L49:
  59 004c F800     		.2byte	(.L7-.L49)/2
  60 004e F800     		.2byte	(.L7-.L49)/2
  61 0050 1B01     		.2byte	(.L22-.L49)/2
  62 0052 1B01     		.2byte	(.L22-.L49)/2
  63 0054 3901     		.2byte	(.L25-.L49)/2
  64 0056 4601     		.2byte	(.L46-.L49)/2
  65 0058 4601     		.2byte	(.L46-.L49)/2
  66 005a 4601     		.2byte	(.L46-.L49)/2
  67 005c 4601     		.2byte	(.L46-.L49)/2
  68 005e 4601     		.2byte	(.L46-.L49)/2
  69 0060 DC00     		.2byte	(.L26-.L49)/2
  70 0062 EA00     		.2byte	(.L29-.L49)/2
  71 0064 4601     		.2byte	(.L46-.L49)/2
  72 0066 4601     		.2byte	(.L46-.L49)/2
  73 0068 4601     		.2byte	(.L46-.L49)/2
  74 006a 4601     		.2byte	(.L46-.L49)/2
  75 006c 4601     		.2byte	(.L46-.L49)/2
  76 006e 4601     		.2byte	(.L46-.L49)/2
  77 0070 4601     		.2byte	(.L46-.L49)/2
  78 0072 4601     		.2byte	(.L46-.L49)/2
  79 0074 6800     		.2byte	(.L30-.L49)/2
  80 0076 7B00     		.2byte	(.L31-.L49)/2
  81 0078 4601     		.2byte	(.L46-.L49)/2
  82 007a 4601     		.2byte	(.L46-.L49)/2
  83 007c 4601     		.2byte	(.L46-.L49)/2
  84 007e 4601     		.2byte	(.L46-.L49)/2
  85 0080 4601     		.2byte	(.L46-.L49)/2
  86 0082 4601     		.2byte	(.L46-.L49)/2
  87 0084 8000     		.2byte	(.L32-.L49)/2
  88 0086 8C00     		.2byte	(.L33-.L49)/2
  89 0088 9700     		.2byte	(.L37-.L49)/2
  90 008a 5001     		.2byte	(.L6-.L49)/2
  91 008c AF00     		.2byte	(.L40-.L49)/2
  92 008e 4601     		.2byte	(.L46-.L49)/2
  93 0090 4601     		.2byte	(.L46-.L49)/2
  94 0092 4601     		.2byte	(.L46-.L49)/2
  95 0094 4601     		.2byte	(.L46-.L49)/2
  96 0096 4601     		.2byte	(.L46-.L49)/2
  97 0098 4601     		.2byte	(.L46-.L49)/2
  98 009a 4601     		.2byte	(.L46-.L49)/2
  99 009c 4601     		.2byte	(.L46-.L49)/2
 100 009e 4601     		.2byte	(.L46-.L49)/2
 101 00a0 4601     		.2byte	(.L46-.L49)/2
 102 00a2 4601     		.2byte	(.L46-.L49)/2
 103 00a4 4601     		.2byte	(.L46-.L49)/2
 104 00a6 4601     		.2byte	(.L46-.L49)/2
 105 00a8 4601     		.2byte	(.L46-.L49)/2
 106 00aa 4601     		.2byte	(.L46-.L49)/2
 107 00ac 4601     		.2byte	(.L46-.L49)/2
 108 00ae 4601     		.2byte	(.L46-.L49)/2
 109 00b0 4601     		.2byte	(.L46-.L49)/2
 110 00b2 4601     		.2byte	(.L46-.L49)/2
 111 00b4 4601     		.2byte	(.L46-.L49)/2
 112 00b6 4601     		.2byte	(.L46-.L49)/2
 113 00b8 4601     		.2byte	(.L46-.L49)/2
 114 00ba 4601     		.2byte	(.L46-.L49)/2
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 3


 115 00bc 4601     		.2byte	(.L46-.L49)/2
 116 00be 4601     		.2byte	(.L46-.L49)/2
 117 00c0 4601     		.2byte	(.L46-.L49)/2
 118 00c2 4601     		.2byte	(.L46-.L49)/2
 119 00c4 4601     		.2byte	(.L46-.L49)/2
 120 00c6 4601     		.2byte	(.L46-.L49)/2
 121 00c8 4601     		.2byte	(.L46-.L49)/2
 122 00ca 4601     		.2byte	(.L46-.L49)/2
 123 00cc 4601     		.2byte	(.L46-.L49)/2
 124 00ce 4601     		.2byte	(.L46-.L49)/2
 125 00d0 4601     		.2byte	(.L46-.L49)/2
 126 00d2 4601     		.2byte	(.L46-.L49)/2
 127 00d4 4601     		.2byte	(.L46-.L49)/2
 128 00d6 4601     		.2byte	(.L46-.L49)/2
 129 00d8 4601     		.2byte	(.L46-.L49)/2
 130 00da 4601     		.2byte	(.L46-.L49)/2
 131 00dc 4601     		.2byte	(.L46-.L49)/2
 132 00de 4601     		.2byte	(.L46-.L49)/2
 133 00e0 4601     		.2byte	(.L46-.L49)/2
 134 00e2 4601     		.2byte	(.L46-.L49)/2
 135 00e4 4601     		.2byte	(.L46-.L49)/2
 136 00e6 4601     		.2byte	(.L46-.L49)/2
 137 00e8 4601     		.2byte	(.L46-.L49)/2
 138 00ea 4601     		.2byte	(.L46-.L49)/2
 139 00ec 4601     		.2byte	(.L46-.L49)/2
 140 00ee 4601     		.2byte	(.L46-.L49)/2
 141 00f0 4601     		.2byte	(.L46-.L49)/2
 142 00f2 4601     		.2byte	(.L46-.L49)/2
 143 00f4 4601     		.2byte	(.L46-.L49)/2
 144 00f6 4601     		.2byte	(.L46-.L49)/2
 145 00f8 4601     		.2byte	(.L46-.L49)/2
 146 00fa 4601     		.2byte	(.L46-.L49)/2
 147 00fc 4601     		.2byte	(.L46-.L49)/2
 148 00fe 4601     		.2byte	(.L46-.L49)/2
 149 0100 D700     		.2byte	(.L43-.L49)/2
 150 0102 4101     		.2byte	(.L44-.L49)/2
 151 0104 1301     		.2byte	(.L45-.L49)/2
 152              	.L2:
 153 0106 A368     		ldr	r3, [r4, #8]
 154 0108 597C     		ldrb	r1, [r3, #17]	@ zero_extendqisi2
 155 010a C806     		lsls	r0, r1, #27
 156 010c 99D5     		bpl	.L5
 157 010e 1F2D     		cmp	r5, #31
 158 0110 00F0EC80 		beq	.L6
 159              	.L106:
 160 0114 0120     		movs	r0, #1
 161 0116 04B0     		add	sp, sp, #16
 162              		@ sp needed
 163 0118 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 164              	.L30:
 165 011c A54B     		ldr	r3, .L117
 166 011e C6F83032 		str	r3, [r6, #560]	@ float
 167              	.L54:
 168 0122 A368     		ldr	r3, [r4, #8]
 169 0124 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 170 0126 002B     		cmp	r3, #0
 171 0128 F4D1     		bne	.L106
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 4


 172 012a 3046     		mov	r0, r6
 173 012c 2146     		mov	r1, r4
 174 012e FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 175 0132 3046     		mov	r0, r6
 176 0134 2146     		mov	r1, r4
 177 0136 3B68     		ldr	r3, [r7]
 178 0138 9DF80F20 		ldrb	r2, [sp, #15]	@ zero_extendqisi2
 179 013c FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 180 0140 E8E7     		b	.L106
 181              	.L31:
 182 0142 4FF07E53 		mov	r3, #1065353216
 183 0146 C6F83032 		str	r3, [r6, #560]	@ float
 184 014a EAE7     		b	.L54
 185              	.L32:
 186 014c 3046     		mov	r0, r6
 187 014e 2146     		mov	r1, r4
 188 0150 3A46     		mov	r2, r7
 189 0152 0DF10F03 		add	r3, sp, #15
 190 0156 FFF7FEFF 		bl	_ZN6GCodes6DoHomeER11GCodeBufferR9StringRefRb
 191 015a 0028     		cmp	r0, #0
 192 015c E1D1     		bne	.L54
 193              	.L108:
 194 015e 04B0     		add	sp, sp, #16
 195              		@ sp needed
 196 0160 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 197              	.L33:
 198 0164 3046     		mov	r0, r6
 199 0166 2146     		mov	r1, r4
 200 0168 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 201 016c 0028     		cmp	r0, #0
 202 016e 40F0D680 		bne	.L109
 203              	.L23:
 204 0172 0020     		movs	r0, #0
 205 0174 04B0     		add	sp, sp, #16
 206              		@ sp needed
 207 0176 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 208              	.L37:
 209 017a 3046     		mov	r0, r6
 210 017c 2146     		mov	r1, r4
 211 017e FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 212 0182 0028     		cmp	r0, #0
 213 0184 F5D0     		beq	.L23
 214 0186 3046     		mov	r0, r6
 215 0188 FFF7FEFF 		bl	_ZN6GCodes17ClearBabySteppingEv
 216 018c 8A4B     		ldr	r3, .L117+4
 217 018e 9B68     		ldr	r3, [r3, #8]
 218 0190 93F86C34 		ldrb	r3, [r3, #1132]	@ zero_extendqisi2
 219 0194 002B     		cmp	r3, #0
 220 0196 40F03981 		bne	.L110
 221              	.L38:
 222 019a 3046     		mov	r0, r6
 223 019c 2146     		mov	r1, r4
 224 019e 3A46     		mov	r2, r7
 225 01a0 FFF7FEFF 		bl	_ZN6GCodes26SetSingleZProbeAtAPositionER11GCodeBufferR9StringRef
 226 01a4 0028     		cmp	r0, #0
 227 01a6 DAD0     		beq	.L108
 228 01a8 BBE7     		b	.L54
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 5


 229              	.L40:
 230 01aa 3046     		mov	r0, r6
 231 01ac 2146     		mov	r1, r4
 232 01ae FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 233 01b2 0028     		cmp	r0, #0
 234 01b4 DDD0     		beq	.L23
 235 01b6 804D     		ldr	r5, .L117+4
 236 01b8 3046     		mov	r0, r6
 237 01ba FFF7FEFF 		bl	_ZN6GCodes17ClearBabySteppingEv
 238 01be AB68     		ldr	r3, [r5, #8]
 239 01c0 7E4A     		ldr	r2, .L117+8
 240 01c2 0021     		movs	r1, #0
 241 01c4 93F86C34 		ldrb	r3, [r3, #1132]	@ zero_extendqisi2
 242 01c8 1268     		ldr	r2, [r2]
 243 01ca 3046     		mov	r0, r6
 244 01cc 0091     		str	r1, [sp]
 245 01ce 2146     		mov	r1, r4
 246 01d0 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 247 01d4 0028     		cmp	r0, #0
 248 01d6 A4D1     		bne	.L54
 249 01d8 D6F85C32 		ldr	r3, [r6, #604]
 250 01dc 03F00308 		and	r8, r3, #3
 251 01e0 B8F1030F 		cmp	r8, #3
 252 01e4 40F0A980 		bne	.L111
 253 01e8 C6F85402 		str	r0, [r6, #596]
 254 01ec A868     		ldr	r0, [r5, #8]
 255 01ee FFF7FEFF 		bl	_ZN4Move20SetIdentityTransformEv
 256 01f2 A368     		ldr	r3, [r4, #8]
 257 01f4 83F81080 		strb	r8, [r3, #16]
 258 01f8 93E7     		b	.L54
 259              	.L43:
 260 01fa 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 261 01fc 6FF34102 		bfc	r2, #1, #1
 262 0200 5A74     		strb	r2, [r3, #17]
 263 0202 8EE7     		b	.L54
 264              	.L26:
 265 0204 2046     		mov	r0, r4
 266 0206 5021     		movs	r1, #80
 267 0208 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 268 020c 0028     		cmp	r0, #0
 269 020e 76D0     		beq	.L27
 270 0210 3046     		mov	r0, r6
 271 0212 2146     		mov	r1, r4
 272 0214 3A46     		mov	r2, r7
 273 0216 FFF7FEFF 		bl	_ZN6GCodes18SetOrReportOffsetsER11GCodeBufferR9StringRef
 274 021a 0028     		cmp	r0, #0
 275 021c 81D1     		bne	.L54
 276 021e A8E7     		b	.L23
 277              	.L29:
 278 0220 3046     		mov	r0, r6
 279 0222 2146     		mov	r1, r4
 280 0224 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 281 0228 0028     		cmp	r0, #0
 282 022a A2D0     		beq	.L23
 283 022c 3046     		mov	r0, r6
 284 022e 2146     		mov	r1, r4
 285 0230 0022     		movs	r2, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 6


 286 0232 FFF7FEFF 		bl	_ZN6GCodes15RetractFilamentER11GCodeBufferb
 287 0236 0028     		cmp	r0, #0
 288 0238 91D0     		beq	.L108
 289 023a 72E7     		b	.L54
 290              	.L7:
 291 023c 3046     		mov	r0, r6
 292 023e 2146     		mov	r1, r4
 293 0240 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 294 0244 0028     		cmp	r0, #0
 295 0246 94D0     		beq	.L23
 296 0248 2046     		mov	r0, r4
 297 024a 5221     		movs	r1, #82
 298 024c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 299 0250 0028     		cmp	r0, #0
 300 0252 7AD1     		bne	.L112
 301              	.L9:
 302 0254 3046     		mov	r0, r6
 303 0256 2146     		mov	r1, r4
 304 0258 3A46     		mov	r2, r7
 305 025a FFF7FEFF 		bl	_ZN6GCodes9SetUpMoveER11GCodeBufferR9StringRef
 306 025e 0228     		cmp	r0, #2
 307 0260 00F0FE80 		beq	.L113
 308              	.L51:
 309 0264 0030     		adds	r0, r0, #0
 310 0266 18BF     		it	ne
 311 0268 0120     		movne	r0, #1
 312 026a 0028     		cmp	r0, #0
 313 026c 3FF477AF 		beq	.L108
 314 0270 57E7     		b	.L54
 315              	.L45:
 316 0272 3046     		mov	r0, r6
 317 0274 2146     		mov	r1, r4
 318 0276 FFF7FEFF 		bl	_ZN6GCodes12SetPositionsER11GCodeBuffer
 319 027a 0028     		cmp	r0, #0
 320 027c 3FF46FAF 		beq	.L108
 321 0280 4FE7     		b	.L54
 322              	.L22:
 323 0282 3046     		mov	r0, r6
 324 0284 2146     		mov	r1, r4
 325 0286 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 326 028a 0028     		cmp	r0, #0
 327 028c 3FF471AF 		beq	.L23
 328 0290 D6F8DC30 		ldr	r3, [r6, #220]
 329 0294 002B     		cmp	r3, #0
 330 0296 7FF46CAF 		bne	.L23
 331 029a A91E     		subs	r1, r5, #2
 332 029c 4A42     		rsbs	r2, r1, #0
 333 029e 4A41     		adcs	r2, r2, r1
 334 02a0 3046     		mov	r0, r6
 335 02a2 2146     		mov	r1, r4
 336 02a4 FFF7FEFF 		bl	_ZN6GCodes9DoArcMoveER11GCodeBufferb
 337 02a8 0028     		cmp	r0, #0
 338 02aa 3FF43AAF 		beq	.L54
 339 02ae 3846     		mov	r0, r7
 340 02b0 4349     		ldr	r1, .L117+12
 341 02b2 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 342 02b6 0123     		movs	r3, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 7


 343 02b8 8DF80F30 		strb	r3, [sp, #15]
 344 02bc 31E7     		b	.L54
 345              	.L25:
 346 02be 3046     		mov	r0, r6
 347 02c0 2146     		mov	r1, r4
 348 02c2 FFF7FEFF 		bl	_ZN6GCodes7DoDwellER11GCodeBuffer
 349 02c6 0028     		cmp	r0, #0
 350 02c8 3FF449AF 		beq	.L108
 351 02cc 29E7     		b	.L54
 352              	.L44:
 353 02ce 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 354 02d0 42F00202 		orr	r2, r2, #2
 355 02d4 5A74     		strb	r2, [r3, #17]
 356 02d6 24E7     		b	.L54
 357              	.L46:
 358 02d8 0123     		movs	r3, #1
 359 02da 3846     		mov	r0, r7
 360 02dc 3949     		ldr	r1, .L117+16
 361 02de 04F10C02 		add	r2, r4, #12
 362 02e2 8DF80F30 		strb	r3, [sp, #15]
 363 02e6 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 364 02ea 1AE7     		b	.L54
 365              	.L6:
 366 02ec 3046     		mov	r0, r6
 367 02ee 2146     		mov	r1, r4
 368 02f0 3A46     		mov	r2, r7
 369 02f2 FFF7FEFF 		bl	_ZN6GCodes14SetPrintZProbeER11GCodeBufferR9StringRef
 370 02f6 0028     		cmp	r0, #0
 371 02f8 3FF431AF 		beq	.L108
 372 02fc 11E7     		b	.L54
 373              	.L27:
 374 02fe 3046     		mov	r0, r6
 375 0300 2146     		mov	r1, r4
 376 0302 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 377 0306 0028     		cmp	r0, #0
 378 0308 3FF433AF 		beq	.L23
 379 030c 3046     		mov	r0, r6
 380 030e 2146     		mov	r1, r4
 381 0310 0122     		movs	r2, #1
 382 0312 FFF7FEFF 		bl	_ZN6GCodes15RetractFilamentER11GCodeBufferb
 383 0316 0028     		cmp	r0, #0
 384 0318 3FF421AF 		beq	.L108
 385 031c 01E7     		b	.L54
 386              	.L109:
 387 031e 2046     		mov	r0, r4
 388 0320 5321     		movs	r1, #83
 389 0322 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 390 0326 0028     		cmp	r0, #0
 391 0328 7ED1     		bne	.L114
 392              	.L34:
 393 032a 3046     		mov	r0, r6
 394 032c 2146     		mov	r1, r4
 395 032e 3A46     		mov	r2, r7
 396 0330 FFF7FEFF 		bl	_ZN6GCodes9ProbeGridER11GCodeBufferR9StringRef
 397 0334 8DF80F00 		strb	r0, [sp, #15]
 398 0338 F3E6     		b	.L54
 399              	.L111:
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 8


 400 033a 3846     		mov	r0, r7
 401 033c 2249     		ldr	r1, .L117+20
 402 033e FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 403 0342 0123     		movs	r3, #1
 404 0344 8DF80F30 		strb	r3, [sp, #15]
 405 0348 EBE6     		b	.L54
 406              	.L112:
 407 034a 2046     		mov	r0, r4
 408 034c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 409 0350 0128     		cmp	r0, #1
 410 0352 40F08980 		bne	.L10
 411 0356 06F59A79 		add	r9, r6, #308
 412              	.L11:
 413 035a D6F8DC50 		ldr	r5, [r6, #220]
 414 035e 002D     		cmp	r5, #0
 415 0360 7FF407AF 		bne	.L23
 416 0364 D6F88431 		ldr	r3, [r6, #388]
 417 0368 93B3     		cbz	r3, .L14
 418 036a A9F10409 		sub	r9, r9, #4
 419 036e B046     		mov	r8, r6
 420 0370 DFF858A0 		ldr	r10, .L117+24
 421 0374 0DE0     		b	.L53
 422              	.L12:
 423 0376 1846     		mov	r0, r3
 424 0378 59F8041F 		ldr	r1, [r9, #4]!	@ float
 425 037c FFF7FEFF 		bl	__aeabi_fadd
 426 0380 C8F88800 		str	r0, [r8, #136]	@ float
 427 0384 D6F88431 		ldr	r3, [r6, #388]
 428 0388 0135     		adds	r5, r5, #1
 429 038a AB42     		cmp	r3, r5
 430 038c 08F10408 		add	r8, r8, #4
 431 0390 1ED9     		bls	.L14
 432              	.L53:
 433 0392 2046     		mov	r0, r4
 434 0394 1AF80510 		ldrb	r1, [r10, r5]	@ zero_extendqisi2
 435 0398 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 436 039c 0023     		movs	r3, #0
 437 039e 0028     		cmp	r0, #0
 438 03a0 E9D0     		beq	.L12
 439 03a2 2046     		mov	r0, r4
 440 03a4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 441 03a8 D6F83012 		ldr	r1, [r6, #560]	@ float
 442 03ac FFF7FEFF 		bl	__aeabi_fmul
 443 03b0 0346     		mov	r3, r0
 444 03b2 E0E7     		b	.L12
 445              	.L118:
 446              		.align	2
 447              	.L117:
 448 03b4 3333CB41 		.word	1103835955
 449 03b8 00000000 		.word	reprap
 450 03bc 00000000 		.word	.LANCHOR0
 451 03c0 00000000 		.word	.LC0
 452 03c4 1C000000 		.word	.LC1
 453 03c8 60000000 		.word	.LC3
 454 03cc 00000000 		.word	_ZN6GCodes11axisLettersE
 455              	.L14:
 456 03d0 03F12102 		add	r2, r3, #33
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 9


 457 03d4 06EB8202 		add	r2, r6, r2, lsl #2
 458 03d8 0021     		movs	r1, #0
 459              	.L18:
 460 03da 0133     		adds	r3, r3, #1
 461 03dc 082B     		cmp	r3, #8
 462 03de 42F8041F 		str	r1, [r2, #4]!	@ float
 463 03e2 FAD9     		bls	.L18
 464 03e4 2046     		mov	r0, r4
 465 03e6 4621     		movs	r1, #70
 466 03e8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 467 03ec 88BB     		cbnz	r0, .L115
 468 03ee A368     		ldr	r3, [r4, #8]
 469 03f0 5868     		ldr	r0, [r3, #4]	@ float
 470              	.L19:
 471 03f2 4FF0FF31 		mov	r1, #-1
 472 03f6 0022     		movs	r2, #0
 473 03f8 0123     		movs	r3, #1
 474 03fa C6F8C400 		str	r0, [r6, #196]	@ float
 475 03fe C6F8C810 		str	r1, [r6, #200]
 476 0402 86F8D820 		strb	r2, [r6, #216]
 477 0406 C6F8DC30 		str	r3, [r6, #220]
 478 040a 8AE6     		b	.L54
 479              	.L110:
 480 040c 3046     		mov	r0, r6
 481 040e FFF7FEFF 		bl	_ZNK6GCodes15AllAxesAreHomedEv
 482 0412 0028     		cmp	r0, #0
 483 0414 7FF4C1AE 		bne	.L38
 484 0418 3846     		mov	r0, r7
 485 041a 1649     		ldr	r1, .L119
 486 041c FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 487 0420 0123     		movs	r3, #1
 488 0422 8DF80F30 		strb	r3, [sp, #15]
 489 0426 7CE6     		b	.L54
 490              	.L114:
 491 0428 2046     		mov	r0, r4
 492 042a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 493 042e 0028     		cmp	r0, #0
 494 0430 3FF47BAF 		beq	.L34
 495 0434 0128     		cmp	r0, #1
 496 0436 07D1     		bne	.L116
 497 0438 3046     		mov	r0, r6
 498 043a 2146     		mov	r1, r4
 499 043c 3A46     		mov	r2, r7
 500 043e FFF7FEFF 		bl	_ZNK6GCodes13LoadHeightMapER11GCodeBufferR9StringRef
 501 0442 8DF80F00 		strb	r0, [sp, #15]
 502 0446 6CE6     		b	.L54
 503              	.L116:
 504 0448 0B4B     		ldr	r3, .L119+4
 505 044a 9868     		ldr	r0, [r3, #8]
 506 044c FFF7FEFF 		bl	_ZN4Move20SetIdentityTransformEv
 507 0450 67E6     		b	.L54
 508              	.L115:
 509 0452 2046     		mov	r0, r4
 510 0454 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 511 0458 0849     		ldr	r1, .L119+8
 512 045a FFF7FEFF 		bl	__aeabi_fmul
 513 045e C8E7     		b	.L19
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 10


 514              	.L113:
 515 0460 A368     		ldr	r3, [r4, #8]
 516 0462 0122     		movs	r2, #1
 517 0464 1A74     		strb	r2, [r3, #16]
 518 0466 FDE6     		b	.L51
 519              	.L10:
 520 0468 0228     		cmp	r0, #2
 521 046a 7FF4F3AE 		bne	.L9
 522 046e 06F5AE79 		add	r9, r6, #348
 523 0472 72E7     		b	.L11
 524              	.L120:
 525              		.align	2
 526              	.L119:
 527 0474 30000000 		.word	.LC2
 528 0478 00000000 		.word	reprap
 529 047c 8988883C 		.word	1015580809
 530              		.size	_ZN6GCodes11HandleGcodeER11GCodeBufferR9StringRef, .-_ZN6GCodes11HandleGcodeER11GCodeBufferR
 531              		.global	__aeabi_fcmplt
 532              		.global	__aeabi_f2d
 533              		.global	__aeabi_fcmpgt
 534              		.global	__aeabi_fdiv
 535              		.global	__aeabi_fcmpun
 536              		.global	__aeabi_fsub
 537              		.global	__aeabi_dmul
 538              		.global	__aeabi_d2iz
 539              		.global	__aeabi_ui2f
 540              		.global	__aeabi_f2iz
 541              		.global	__aeabi_d2f
 542              		.global	__aeabi_d2uiz
 543              		.global	__aeabi_fcmpge
 544              		.global	__aeabi_dadd
 545              		.global	__aeabi_fcmple
 546              		.global	__aeabi_dcmplt
 547              		.section	.text._ZN6GCodes11HandleMcodeER11GCodeBufferR9StringRef,"ax",%progbits
 548              		.align	2
 549              		.global	_ZN6GCodes11HandleMcodeER11GCodeBufferR9StringRef
 550              		.thumb
 551              		.thumb_func
 552              		.type	_ZN6GCodes11HandleMcodeER11GCodeBufferR9StringRef, %function
 553              	_ZN6GCodes11HandleMcodeER11GCodeBufferR9StringRef:
 554              		@ args = 0, pretend = 0, frame = 312
 555              		@ frame_needed = 0, uses_anonymous_args = 0
 556 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 557 0004 0546     		mov	r5, r0
 558 0006 DBB0     		sub	sp, sp, #364
 559 0008 0846     		mov	r0, r1
 560 000a 0C46     		mov	r4, r1
 561 000c 1646     		mov	r6, r2
 562 000e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 563 0012 95F8A832 		ldrb	r3, [r5, #680]	@ zero_extendqisi2
 564 0016 8146     		mov	r9, r0
 565 0018 002B     		cmp	r3, #0
 566 001a 00F00F84 		beq	.L122
 567 001e A0F11403 		sub	r3, r0, #20
 568 0022 112B     		cmp	r3, #17
 569 0024 40F20A84 		bls	.L122
 570 0028 0128     		cmp	r0, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 11


 571 002a 13D9     		bls	.L123
 572 002c A0F15203 		sub	r3, r0, #82
 573 0030 012B     		cmp	r3, #1
 574 0032 0FD9     		bls	.L123
 575 0034 6928     		cmp	r0, #105
 576 0036 0DD0     		beq	.L123
 577 0038 A0F16F03 		sub	r3, r0, #111
 578 003c 012B     		cmp	r3, #1
 579 003e 09D9     		bls	.L123
 580 0040 7A28     		cmp	r0, #122
 581 0042 07D0     		beq	.L123
 582 0044 B0F5CC7F 		cmp	r0, #408
 583 0048 04D0     		beq	.L123
 584 004a 40F2E733 		movw	r3, #999
 585 004e 9842     		cmp	r0, r3
 586 0050 40F01184 		bne	.L1455
 587              	.L123:
 588 0054 A368     		ldr	r3, [r4, #8]
 589 0056 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 590 0058 D206     		lsls	r2, r2, #27
 591 005a 00F10C84 		bmi	.L1455
 592              	.L125:
 593 005e 40F2E732 		movw	r2, #999
 594 0062 9145     		cmp	r9, r2
 595 0064 02F24F82 		bhi	.L857
 596 0068 DFE819F0 		tbh	[pc, r9, lsl #1]
 597              	.L860:
 598 006c 7A0B     		.2byte	(.L131-.L860)/2
 599 006e 7A0B     		.2byte	(.L131-.L860)/2
 600 0070 4D12     		.2byte	(.L857-.L860)/2
 601 0072 4D12     		.2byte	(.L857-.L860)/2
 602 0074 4D12     		.2byte	(.L857-.L860)/2
 603 0076 4D12     		.2byte	(.L857-.L860)/2
 604 0078 4D12     		.2byte	(.L857-.L860)/2
 605 007a 4D12     		.2byte	(.L857-.L860)/2
 606 007c 4D12     		.2byte	(.L857-.L860)/2
 607 007e 4D12     		.2byte	(.L857-.L860)/2
 608 0080 4D12     		.2byte	(.L857-.L860)/2
 609 0082 4D12     		.2byte	(.L857-.L860)/2
 610 0084 4D12     		.2byte	(.L857-.L860)/2
 611 0086 4D12     		.2byte	(.L857-.L860)/2
 612 0088 4D12     		.2byte	(.L857-.L860)/2
 613 008a 4D12     		.2byte	(.L857-.L860)/2
 614 008c 4D12     		.2byte	(.L857-.L860)/2
 615 008e 4D12     		.2byte	(.L857-.L860)/2
 616 0090 EA09     		.2byte	(.L138-.L860)/2
 617 0092 4D12     		.2byte	(.L857-.L860)/2
 618 0094 260A     		.2byte	(.L154-.L860)/2
 619 0096 A00A     		.2byte	(.L170-.L860)/2
 620 0098 B90A     		.2byte	(.L173-.L860)/2
 621 009a D90A     		.2byte	(.L175-.L860)/2
 622 009c E90A     		.2byte	(.L183-.L860)/2
 623 009e 130B     		.2byte	(.L188-.L860)/2
 624 00a0 260B     		.2byte	(.L191-.L860)/2
 625 00a2 1D06     		.2byte	(.L197-.L860)/2
 626 00a4 A70E     		.2byte	(.L199-.L860)/2
 627 00a6 D10A     		.2byte	(.L202-.L860)/2
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 12


 628 00a8 C10E     		.2byte	(.L203-.L860)/2
 629 00aa 4D12     		.2byte	(.L857-.L860)/2
 630 00ac D90A     		.2byte	(.L175-.L860)/2
 631 00ae 4D12     		.2byte	(.L857-.L860)/2
 632 00b0 4D12     		.2byte	(.L857-.L860)/2
 633 00b2 4D12     		.2byte	(.L857-.L860)/2
 634 00b4 C509     		.2byte	(.L205-.L860)/2
 635 00b6 8111     		.2byte	(.L208-.L860)/2
 636 00b8 EF11     		.2byte	(.L216-.L860)/2
 637 00ba 4D12     		.2byte	(.L857-.L860)/2
 638 00bc 4D12     		.2byte	(.L857-.L860)/2
 639 00be 4D12     		.2byte	(.L857-.L860)/2
 640 00c0 8706     		.2byte	(.L219-.L860)/2
 641 00c2 4D12     		.2byte	(.L857-.L860)/2
 642 00c4 4D12     		.2byte	(.L857-.L860)/2
 643 00c6 4D12     		.2byte	(.L857-.L860)/2
 644 00c8 4D12     		.2byte	(.L857-.L860)/2
 645 00ca 4D12     		.2byte	(.L857-.L860)/2
 646 00cc 4D12     		.2byte	(.L857-.L860)/2
 647 00ce 4D12     		.2byte	(.L857-.L860)/2
 648 00d0 4D12     		.2byte	(.L857-.L860)/2
 649 00d2 4D12     		.2byte	(.L857-.L860)/2
 650 00d4 4D12     		.2byte	(.L857-.L860)/2
 651 00d6 4D12     		.2byte	(.L857-.L860)/2
 652 00d8 4D12     		.2byte	(.L857-.L860)/2
 653 00da 4D12     		.2byte	(.L857-.L860)/2
 654 00dc 4D12     		.2byte	(.L857-.L860)/2
 655 00de 4D12     		.2byte	(.L857-.L860)/2
 656 00e0 4D12     		.2byte	(.L857-.L860)/2
 657 00e2 4D12     		.2byte	(.L857-.L860)/2
 658 00e4 4D12     		.2byte	(.L857-.L860)/2
 659 00e6 4D12     		.2byte	(.L857-.L860)/2
 660 00e8 4D12     		.2byte	(.L857-.L860)/2
 661 00ea 4D12     		.2byte	(.L857-.L860)/2
 662 00ec 4D12     		.2byte	(.L857-.L860)/2
 663 00ee 4D12     		.2byte	(.L857-.L860)/2
 664 00f0 4D12     		.2byte	(.L857-.L860)/2
 665 00f2 4D12     		.2byte	(.L857-.L860)/2
 666 00f4 4D12     		.2byte	(.L857-.L860)/2
 667 00f6 4D12     		.2byte	(.L857-.L860)/2
 668 00f8 4D12     		.2byte	(.L857-.L860)/2
 669 00fa 4D12     		.2byte	(.L857-.L860)/2
 670 00fc 4D12     		.2byte	(.L857-.L860)/2
 671 00fe 4D12     		.2byte	(.L857-.L860)/2
 672 0100 4D12     		.2byte	(.L857-.L860)/2
 673 0102 4D12     		.2byte	(.L857-.L860)/2
 674 0104 4D12     		.2byte	(.L857-.L860)/2
 675 0106 4D12     		.2byte	(.L857-.L860)/2
 676 0108 4D12     		.2byte	(.L857-.L860)/2
 677 010a 4D12     		.2byte	(.L857-.L860)/2
 678 010c 350E     		.2byte	(.L228-.L860)/2
 679 010e 260E     		.2byte	(.L229-.L860)/2
 680 0110 D411     		.2byte	(.L230-.L860)/2
 681 0112 0E09     		.2byte	(.L231-.L860)/2
 682 0114 EA09     		.2byte	(.L138-.L860)/2
 683 0116 4A12     		.2byte	(.L998-.L860)/2
 684 0118 4D12     		.2byte	(.L857-.L860)/2
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 13


 685 011a 4D12     		.2byte	(.L857-.L860)/2
 686 011c 4D12     		.2byte	(.L857-.L860)/2
 687 011e 4D12     		.2byte	(.L857-.L860)/2
 688 0120 4D12     		.2byte	(.L857-.L860)/2
 689 0122 4D12     		.2byte	(.L857-.L860)/2
 690 0124 2809     		.2byte	(.L232-.L860)/2
 691 0126 4D12     		.2byte	(.L857-.L860)/2
 692 0128 4D12     		.2byte	(.L857-.L860)/2
 693 012a 4D12     		.2byte	(.L857-.L860)/2
 694 012c 4D12     		.2byte	(.L857-.L860)/2
 695 012e 4D12     		.2byte	(.L857-.L860)/2
 696 0130 5210     		.2byte	(.L252-.L860)/2
 697 0132 0312     		.2byte	(.L254-.L860)/2
 698 0134 4D12     		.2byte	(.L857-.L860)/2
 699 0136 3308     		.2byte	(.L255-.L860)/2
 700 0138 4A12     		.2byte	(.L998-.L860)/2
 701 013a 8D0F     		.2byte	(.L256-.L860)/2
 702 013c 9D0F     		.2byte	(.L257-.L860)/2
 703 013e 4F04     		.2byte	(.L261-.L860)/2
 704 0140 5604     		.2byte	(.L262-.L860)/2
 705 0142 C704     		.2byte	(.L290-.L860)/2
 706 0144 CF04     		.2byte	(.L291-.L860)/2
 707 0146 DA04     		.2byte	(.L292-.L860)/2
 708 0148 4A12     		.2byte	(.L998-.L860)/2
 709 014a 4806     		.2byte	(.L300-.L860)/2
 710 014c 2305     		.2byte	(.L303-.L860)/2
 711 014e 4D12     		.2byte	(.L857-.L860)/2
 712 0150 8A05     		.2byte	(.L304-.L860)/2
 713 0152 2905     		.2byte	(.L305-.L860)/2
 714 0154 3C05     		.2byte	(.L307-.L860)/2
 715 0156 3906     		.2byte	(.L323-.L860)/2
 716 0158 4D12     		.2byte	(.L857-.L860)/2
 717 015a 8D07     		.2byte	(.L325-.L860)/2
 718 015c 7F07     		.2byte	(.L329-.L860)/2
 719 015e 8607     		.2byte	(.L330-.L860)/2
 720 0160 A006     		.2byte	(.L331-.L860)/2
 721 0162 4D12     		.2byte	(.L857-.L860)/2
 722 0164 4D12     		.2byte	(.L857-.L860)/2
 723 0166 4D12     		.2byte	(.L857-.L860)/2
 724 0168 4D12     		.2byte	(.L857-.L860)/2
 725 016a 4D12     		.2byte	(.L857-.L860)/2
 726 016c 4D12     		.2byte	(.L857-.L860)/2
 727 016e 4D12     		.2byte	(.L857-.L860)/2
 728 0170 4D12     		.2byte	(.L857-.L860)/2
 729 0172 4D12     		.2byte	(.L857-.L860)/2
 730 0174 4D12     		.2byte	(.L857-.L860)/2
 731 0176 4D12     		.2byte	(.L857-.L860)/2
 732 0178 4D12     		.2byte	(.L857-.L860)/2
 733 017a 0908     		.2byte	(.L334-.L860)/2
 734 017c 4D12     		.2byte	(.L857-.L860)/2
 735 017e 4D12     		.2byte	(.L857-.L860)/2
 736 0180 4D12     		.2byte	(.L857-.L860)/2
 737 0182 4D12     		.2byte	(.L857-.L860)/2
 738 0184 BC07     		.2byte	(.L337-.L860)/2
 739 0186 DE07     		.2byte	(.L346-.L860)/2
 740 0188 4D12     		.2byte	(.L857-.L860)/2
 741 018a EA05     		.2byte	(.L357-.L860)/2
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 14


 742 018c 1106     		.2byte	(.L363-.L860)/2
 743 018e 4D12     		.2byte	(.L857-.L860)/2
 744 0190 4D12     		.2byte	(.L857-.L860)/2
 745 0192 4D12     		.2byte	(.L857-.L860)/2
 746 0194 4D12     		.2byte	(.L857-.L860)/2
 747 0196 4D12     		.2byte	(.L857-.L860)/2
 748 0198 4D12     		.2byte	(.L857-.L860)/2
 749 019a 4D12     		.2byte	(.L857-.L860)/2
 750 019c 4D12     		.2byte	(.L857-.L860)/2
 751 019e 4D12     		.2byte	(.L857-.L860)/2
 752 01a0 4D12     		.2byte	(.L857-.L860)/2
 753 01a2 4D12     		.2byte	(.L857-.L860)/2
 754 01a4 4D12     		.2byte	(.L857-.L860)/2
 755 01a6 4D12     		.2byte	(.L857-.L860)/2
 756 01a8 4D12     		.2byte	(.L857-.L860)/2
 757 01aa 4D12     		.2byte	(.L857-.L860)/2
 758 01ac 4D12     		.2byte	(.L857-.L860)/2
 759 01ae 4D12     		.2byte	(.L857-.L860)/2
 760 01b0 4D12     		.2byte	(.L857-.L860)/2
 761 01b2 4D12     		.2byte	(.L857-.L860)/2
 762 01b4 4D12     		.2byte	(.L857-.L860)/2
 763 01b6 4D12     		.2byte	(.L857-.L860)/2
 764 01b8 4D12     		.2byte	(.L857-.L860)/2
 765 01ba 4D12     		.2byte	(.L857-.L860)/2
 766 01bc 4D12     		.2byte	(.L857-.L860)/2
 767 01be 4D12     		.2byte	(.L857-.L860)/2
 768 01c0 4D12     		.2byte	(.L857-.L860)/2
 769 01c2 4D12     		.2byte	(.L857-.L860)/2
 770 01c4 4D12     		.2byte	(.L857-.L860)/2
 771 01c6 4D12     		.2byte	(.L857-.L860)/2
 772 01c8 4D12     		.2byte	(.L857-.L860)/2
 773 01ca 4D12     		.2byte	(.L857-.L860)/2
 774 01cc 4D12     		.2byte	(.L857-.L860)/2
 775 01ce 4D12     		.2byte	(.L857-.L860)/2
 776 01d0 4D12     		.2byte	(.L857-.L860)/2
 777 01d2 4D12     		.2byte	(.L857-.L860)/2
 778 01d4 4D12     		.2byte	(.L857-.L860)/2
 779 01d6 4D12     		.2byte	(.L857-.L860)/2
 780 01d8 4D12     		.2byte	(.L857-.L860)/2
 781 01da 4D12     		.2byte	(.L857-.L860)/2
 782 01dc 4D12     		.2byte	(.L857-.L860)/2
 783 01de 4D12     		.2byte	(.L857-.L860)/2
 784 01e0 4D12     		.2byte	(.L857-.L860)/2
 785 01e2 4D12     		.2byte	(.L857-.L860)/2
 786 01e4 4D12     		.2byte	(.L857-.L860)/2
 787 01e6 4D12     		.2byte	(.L857-.L860)/2
 788 01e8 AE0B     		.2byte	(.L364-.L860)/2
 789 01ea AE0B     		.2byte	(.L364-.L860)/2
 790 01ec 4D12     		.2byte	(.L857-.L860)/2
 791 01ee 4D12     		.2byte	(.L857-.L860)/2
 792 01f0 4D12     		.2byte	(.L857-.L860)/2
 793 01f2 4D12     		.2byte	(.L857-.L860)/2
 794 01f4 4D12     		.2byte	(.L857-.L860)/2
 795 01f6 4D12     		.2byte	(.L857-.L860)/2
 796 01f8 4D12     		.2byte	(.L857-.L860)/2
 797 01fa 4D12     		.2byte	(.L857-.L860)/2
 798 01fc 4D12     		.2byte	(.L857-.L860)/2
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 15


 799 01fe E40B     		.2byte	(.L861-.L860)/2
 800 0200 4D12     		.2byte	(.L857-.L860)/2
 801 0202 6F08     		.2byte	(.L862-.L860)/2
 802 0204 B608     		.2byte	(.L400-.L860)/2
 803 0206 4D12     		.2byte	(.L857-.L860)/2
 804 0208 BE0F     		.2byte	(.L403-.L860)/2
 805 020a C60F     		.2byte	(.L404-.L860)/2
 806 020c D706     		.2byte	(.L423-.L860)/2
 807 020e 4D12     		.2byte	(.L857-.L860)/2
 808 0210 4A12     		.2byte	(.L998-.L860)/2
 809 0212 4D12     		.2byte	(.L857-.L860)/2
 810 0214 4D12     		.2byte	(.L857-.L860)/2
 811 0216 4D12     		.2byte	(.L857-.L860)/2
 812 0218 4D12     		.2byte	(.L857-.L860)/2
 813 021a 4D12     		.2byte	(.L857-.L860)/2
 814 021c 4D12     		.2byte	(.L857-.L860)/2
 815 021e 4D12     		.2byte	(.L857-.L860)/2
 816 0220 4D12     		.2byte	(.L857-.L860)/2
 817 0222 4D12     		.2byte	(.L857-.L860)/2
 818 0224 5A0E     		.2byte	(.L435-.L860)/2
 819 0226 A711     		.2byte	(.L446-.L860)/2
 820 0228 4D12     		.2byte	(.L857-.L860)/2
 821 022a 4D12     		.2byte	(.L857-.L860)/2
 822 022c 4D12     		.2byte	(.L857-.L860)/2
 823 022e 4D12     		.2byte	(.L857-.L860)/2
 824 0230 AF09     		.2byte	(.L187-.L860)/2
 825 0232 4D12     		.2byte	(.L857-.L860)/2
 826 0234 4D12     		.2byte	(.L857-.L860)/2
 827 0236 4D12     		.2byte	(.L857-.L860)/2
 828 0238 4D12     		.2byte	(.L857-.L860)/2
 829 023a 4D12     		.2byte	(.L857-.L860)/2
 830 023c 4D12     		.2byte	(.L857-.L860)/2
 831 023e 4D12     		.2byte	(.L857-.L860)/2
 832 0240 4D12     		.2byte	(.L857-.L860)/2
 833 0242 4D12     		.2byte	(.L857-.L860)/2
 834 0244 4D12     		.2byte	(.L857-.L860)/2
 835 0246 4D12     		.2byte	(.L857-.L860)/2
 836 0248 4D12     		.2byte	(.L857-.L860)/2
 837 024a 4D12     		.2byte	(.L857-.L860)/2
 838 024c 4D12     		.2byte	(.L857-.L860)/2
 839 024e 4D12     		.2byte	(.L857-.L860)/2
 840 0250 4D12     		.2byte	(.L857-.L860)/2
 841 0252 4D12     		.2byte	(.L857-.L860)/2
 842 0254 4D12     		.2byte	(.L857-.L860)/2
 843 0256 4D12     		.2byte	(.L857-.L860)/2
 844 0258 4D12     		.2byte	(.L857-.L860)/2
 845 025a 4D12     		.2byte	(.L857-.L860)/2
 846 025c 4D12     		.2byte	(.L857-.L860)/2
 847 025e 4D12     		.2byte	(.L857-.L860)/2
 848 0260 4D12     		.2byte	(.L857-.L860)/2
 849 0262 4D12     		.2byte	(.L857-.L860)/2
 850 0264 4D12     		.2byte	(.L857-.L860)/2
 851 0266 4D12     		.2byte	(.L857-.L860)/2
 852 0268 4D12     		.2byte	(.L857-.L860)/2
 853 026a 4D12     		.2byte	(.L857-.L860)/2
 854 026c 4D12     		.2byte	(.L857-.L860)/2
 855 026e 4D12     		.2byte	(.L857-.L860)/2
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 16


 856 0270 4D12     		.2byte	(.L857-.L860)/2
 857 0272 4D12     		.2byte	(.L857-.L860)/2
 858 0274 4D12     		.2byte	(.L857-.L860)/2
 859 0276 4D12     		.2byte	(.L857-.L860)/2
 860 0278 4D12     		.2byte	(.L857-.L860)/2
 861 027a 4D12     		.2byte	(.L857-.L860)/2
 862 027c 4D12     		.2byte	(.L857-.L860)/2
 863 027e 4D12     		.2byte	(.L857-.L860)/2
 864 0280 4D12     		.2byte	(.L857-.L860)/2
 865 0282 4D12     		.2byte	(.L857-.L860)/2
 866 0284 4D12     		.2byte	(.L857-.L860)/2
 867 0286 4D12     		.2byte	(.L857-.L860)/2
 868 0288 4D12     		.2byte	(.L857-.L860)/2
 869 028a 4D12     		.2byte	(.L857-.L860)/2
 870 028c 4D12     		.2byte	(.L857-.L860)/2
 871 028e 4D12     		.2byte	(.L857-.L860)/2
 872 0290 4D12     		.2byte	(.L857-.L860)/2
 873 0292 4D12     		.2byte	(.L857-.L860)/2
 874 0294 4D12     		.2byte	(.L857-.L860)/2
 875 0296 4D12     		.2byte	(.L857-.L860)/2
 876 0298 4D12     		.2byte	(.L857-.L860)/2
 877 029a 4D12     		.2byte	(.L857-.L860)/2
 878 029c FA0D     		.2byte	(.L453-.L860)/2
 879 029e 4D12     		.2byte	(.L857-.L860)/2
 880 02a0 4D12     		.2byte	(.L857-.L860)/2
 881 02a2 4D12     		.2byte	(.L857-.L860)/2
 882 02a4 4D12     		.2byte	(.L857-.L860)/2
 883 02a6 4D12     		.2byte	(.L857-.L860)/2
 884 02a8 4D12     		.2byte	(.L857-.L860)/2
 885 02aa 4D12     		.2byte	(.L857-.L860)/2
 886 02ac 4D12     		.2byte	(.L857-.L860)/2
 887 02ae 4D12     		.2byte	(.L857-.L860)/2
 888 02b0 680D     		.2byte	(.L468-.L860)/2
 889 02b2 4D12     		.2byte	(.L857-.L860)/2
 890 02b4 4D12     		.2byte	(.L857-.L860)/2
 891 02b6 4D12     		.2byte	(.L857-.L860)/2
 892 02b8 4D12     		.2byte	(.L857-.L860)/2
 893 02ba 4D12     		.2byte	(.L857-.L860)/2
 894 02bc 4D12     		.2byte	(.L857-.L860)/2
 895 02be 4D12     		.2byte	(.L857-.L860)/2
 896 02c0 4D12     		.2byte	(.L857-.L860)/2
 897 02c2 4D12     		.2byte	(.L857-.L860)/2
 898 02c4 810D     		.2byte	(.L471-.L860)/2
 899 02c6 9412     		.2byte	(.L126-.L860)/2
 900 02c8 9B0D     		.2byte	(.L474-.L860)/2
 901 02ca B30D     		.2byte	(.L477-.L860)/2
 902 02cc 9106     		.2byte	(.L488-.L860)/2
 903 02ce 9E0C     		.2byte	(.L489-.L860)/2
 904 02d0 4D12     		.2byte	(.L857-.L860)/2
 905 02d2 8912     		.2byte	(.L127-.L860)/2
 906 02d4 4D12     		.2byte	(.L857-.L860)/2
 907 02d6 4D12     		.2byte	(.L857-.L860)/2
 908 02d8 4D12     		.2byte	(.L857-.L860)/2
 909 02da 4D12     		.2byte	(.L857-.L860)/2
 910 02dc 4D12     		.2byte	(.L857-.L860)/2
 911 02de 4D12     		.2byte	(.L857-.L860)/2
 912 02e0 4D12     		.2byte	(.L857-.L860)/2
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 17


 913 02e2 4D12     		.2byte	(.L857-.L860)/2
 914 02e4 4D12     		.2byte	(.L857-.L860)/2
 915 02e6 4D12     		.2byte	(.L857-.L860)/2
 916 02e8 4D12     		.2byte	(.L857-.L860)/2
 917 02ea 4D12     		.2byte	(.L857-.L860)/2
 918 02ec 4D12     		.2byte	(.L857-.L860)/2
 919 02ee 4D12     		.2byte	(.L857-.L860)/2
 920 02f0 4D12     		.2byte	(.L857-.L860)/2
 921 02f2 4D12     		.2byte	(.L857-.L860)/2
 922 02f4 4D12     		.2byte	(.L857-.L860)/2
 923 02f6 4D12     		.2byte	(.L857-.L860)/2
 924 02f8 4D12     		.2byte	(.L857-.L860)/2
 925 02fa 4D12     		.2byte	(.L857-.L860)/2
 926 02fc 4D12     		.2byte	(.L857-.L860)/2
 927 02fe 4D12     		.2byte	(.L857-.L860)/2
 928 0300 4D12     		.2byte	(.L857-.L860)/2
 929 0302 4D12     		.2byte	(.L857-.L860)/2
 930 0304 4D12     		.2byte	(.L857-.L860)/2
 931 0306 4D12     		.2byte	(.L857-.L860)/2
 932 0308 4D12     		.2byte	(.L857-.L860)/2
 933 030a 4D12     		.2byte	(.L857-.L860)/2
 934 030c 4D12     		.2byte	(.L857-.L860)/2
 935 030e 4D12     		.2byte	(.L857-.L860)/2
 936 0310 4D12     		.2byte	(.L857-.L860)/2
 937 0312 4D12     		.2byte	(.L857-.L860)/2
 938 0314 4D12     		.2byte	(.L857-.L860)/2
 939 0316 4D12     		.2byte	(.L857-.L860)/2
 940 0318 4D12     		.2byte	(.L857-.L860)/2
 941 031a 4D12     		.2byte	(.L857-.L860)/2
 942 031c 4D12     		.2byte	(.L857-.L860)/2
 943 031e 4D12     		.2byte	(.L857-.L860)/2
 944 0320 4D12     		.2byte	(.L857-.L860)/2
 945 0322 4D12     		.2byte	(.L857-.L860)/2
 946 0324 4D12     		.2byte	(.L857-.L860)/2
 947 0326 4D12     		.2byte	(.L857-.L860)/2
 948 0328 4D0C     		.2byte	(.L498-.L860)/2
 949 032a 4D12     		.2byte	(.L857-.L860)/2
 950 032c 4D12     		.2byte	(.L857-.L860)/2
 951 032e 4D12     		.2byte	(.L857-.L860)/2
 952 0330 4D12     		.2byte	(.L857-.L860)/2
 953 0332 4D12     		.2byte	(.L857-.L860)/2
 954 0334 4D12     		.2byte	(.L857-.L860)/2
 955 0336 4D12     		.2byte	(.L857-.L860)/2
 956 0338 4D12     		.2byte	(.L857-.L860)/2
 957 033a 4D12     		.2byte	(.L857-.L860)/2
 958 033c 4D12     		.2byte	(.L857-.L860)/2
 959 033e 4D12     		.2byte	(.L857-.L860)/2
 960 0340 4D12     		.2byte	(.L857-.L860)/2
 961 0342 4D12     		.2byte	(.L857-.L860)/2
 962 0344 4D12     		.2byte	(.L857-.L860)/2
 963 0346 4D12     		.2byte	(.L857-.L860)/2
 964 0348 4D12     		.2byte	(.L857-.L860)/2
 965 034a 4D12     		.2byte	(.L857-.L860)/2
 966 034c 4D12     		.2byte	(.L857-.L860)/2
 967 034e 4D12     		.2byte	(.L857-.L860)/2
 968 0350 4D12     		.2byte	(.L857-.L860)/2
 969 0352 4D12     		.2byte	(.L857-.L860)/2
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 18


 970 0354 4D12     		.2byte	(.L857-.L860)/2
 971 0356 4D12     		.2byte	(.L857-.L860)/2
 972 0358 950C     		.2byte	(.L523-.L860)/2
 973 035a 0E0C     		.2byte	(.L524-.L860)/2
 974 035c 1E0C     		.2byte	(.L525-.L860)/2
 975 035e 4D12     		.2byte	(.L857-.L860)/2
 976 0360 4D12     		.2byte	(.L857-.L860)/2
 977 0362 4D12     		.2byte	(.L857-.L860)/2
 978 0364 4D12     		.2byte	(.L857-.L860)/2
 979 0366 4D12     		.2byte	(.L857-.L860)/2
 980 0368 4D12     		.2byte	(.L857-.L860)/2
 981 036a 4D12     		.2byte	(.L857-.L860)/2
 982 036c 4D12     		.2byte	(.L857-.L860)/2
 983 036e 4D12     		.2byte	(.L857-.L860)/2
 984 0370 4D12     		.2byte	(.L857-.L860)/2
 985 0372 4D12     		.2byte	(.L857-.L860)/2
 986 0374 4D12     		.2byte	(.L857-.L860)/2
 987 0376 4D12     		.2byte	(.L857-.L860)/2
 988 0378 4D12     		.2byte	(.L857-.L860)/2
 989 037a 4D12     		.2byte	(.L857-.L860)/2
 990 037c 4D12     		.2byte	(.L857-.L860)/2
 991 037e 4D12     		.2byte	(.L857-.L860)/2
 992 0380 4D12     		.2byte	(.L857-.L860)/2
 993 0382 4D12     		.2byte	(.L857-.L860)/2
 994 0384 4D12     		.2byte	(.L857-.L860)/2
 995 0386 4D12     		.2byte	(.L857-.L860)/2
 996 0388 4D12     		.2byte	(.L857-.L860)/2
 997 038a 4D12     		.2byte	(.L857-.L860)/2
 998 038c 360C     		.2byte	(.L529-.L860)/2
 999 038e 410C     		.2byte	(.L530-.L860)/2
 1000 0390 DC08     		.2byte	(.L531-.L860)/2
 1001 0392 4D12     		.2byte	(.L857-.L860)/2
 1002 0394 E808     		.2byte	(.L532-.L860)/2
 1003 0396 4D12     		.2byte	(.L857-.L860)/2
 1004 0398 4D12     		.2byte	(.L857-.L860)/2
 1005 039a 4D12     		.2byte	(.L857-.L860)/2
 1006 039c 320D     		.2byte	(.L535-.L860)/2
 1007 039e 4D12     		.2byte	(.L857-.L860)/2
 1008 03a0 4D12     		.2byte	(.L857-.L860)/2
 1009 03a2 4D12     		.2byte	(.L857-.L860)/2
 1010 03a4 4D12     		.2byte	(.L857-.L860)/2
 1011 03a6 4D12     		.2byte	(.L857-.L860)/2
 1012 03a8 4D12     		.2byte	(.L857-.L860)/2
 1013 03aa 4D12     		.2byte	(.L857-.L860)/2
 1014 03ac 4D12     		.2byte	(.L857-.L860)/2
 1015 03ae 4D12     		.2byte	(.L857-.L860)/2
 1016 03b0 4D12     		.2byte	(.L857-.L860)/2
 1017 03b2 4D12     		.2byte	(.L857-.L860)/2
 1018 03b4 4D12     		.2byte	(.L857-.L860)/2
 1019 03b6 4D12     		.2byte	(.L857-.L860)/2
 1020 03b8 4D12     		.2byte	(.L857-.L860)/2
 1021 03ba 4D12     		.2byte	(.L857-.L860)/2
 1022 03bc 4D12     		.2byte	(.L857-.L860)/2
 1023 03be 4D12     		.2byte	(.L857-.L860)/2
 1024 03c0 4D12     		.2byte	(.L857-.L860)/2
 1025 03c2 4D12     		.2byte	(.L857-.L860)/2
 1026 03c4 4D12     		.2byte	(.L857-.L860)/2
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 19


 1027 03c6 4D12     		.2byte	(.L857-.L860)/2
 1028 03c8 4D12     		.2byte	(.L857-.L860)/2
 1029 03ca 4D12     		.2byte	(.L857-.L860)/2
 1030 03cc 4D12     		.2byte	(.L857-.L860)/2
 1031 03ce 4D12     		.2byte	(.L857-.L860)/2
 1032 03d0 4D12     		.2byte	(.L857-.L860)/2
 1033 03d2 4D12     		.2byte	(.L857-.L860)/2
 1034 03d4 4D12     		.2byte	(.L857-.L860)/2
 1035 03d6 4D12     		.2byte	(.L857-.L860)/2
 1036 03d8 4D12     		.2byte	(.L857-.L860)/2
 1037 03da 4D12     		.2byte	(.L857-.L860)/2
 1038 03dc 4D12     		.2byte	(.L857-.L860)/2
 1039 03de 4D12     		.2byte	(.L857-.L860)/2
 1040 03e0 4D12     		.2byte	(.L857-.L860)/2
 1041 03e2 4D12     		.2byte	(.L857-.L860)/2
 1042 03e4 4D12     		.2byte	(.L857-.L860)/2
 1043 03e6 4D12     		.2byte	(.L857-.L860)/2
 1044 03e8 4D12     		.2byte	(.L857-.L860)/2
 1045 03ea 4D12     		.2byte	(.L857-.L860)/2
 1046 03ec 4D12     		.2byte	(.L857-.L860)/2
 1047 03ee 4D12     		.2byte	(.L857-.L860)/2
 1048 03f0 4D12     		.2byte	(.L857-.L860)/2
 1049 03f2 4D12     		.2byte	(.L857-.L860)/2
 1050 03f4 4D12     		.2byte	(.L857-.L860)/2
 1051 03f6 4D12     		.2byte	(.L857-.L860)/2
 1052 03f8 4D12     		.2byte	(.L857-.L860)/2
 1053 03fa 4D12     		.2byte	(.L857-.L860)/2
 1054 03fc 4D12     		.2byte	(.L857-.L860)/2
 1055 03fe 4D12     		.2byte	(.L857-.L860)/2
 1056 0400 4D12     		.2byte	(.L857-.L860)/2
 1057 0402 4D12     		.2byte	(.L857-.L860)/2
 1058 0404 4D12     		.2byte	(.L857-.L860)/2
 1059 0406 4D12     		.2byte	(.L857-.L860)/2
 1060 0408 4D12     		.2byte	(.L857-.L860)/2
 1061 040a 4D12     		.2byte	(.L857-.L860)/2
 1062 040c 4D12     		.2byte	(.L857-.L860)/2
 1063 040e 4D12     		.2byte	(.L857-.L860)/2
 1064 0410 4D12     		.2byte	(.L857-.L860)/2
 1065 0412 4D12     		.2byte	(.L857-.L860)/2
 1066 0414 4D12     		.2byte	(.L857-.L860)/2
 1067 0416 4D12     		.2byte	(.L857-.L860)/2
 1068 0418 4D12     		.2byte	(.L857-.L860)/2
 1069 041a 4D12     		.2byte	(.L857-.L860)/2
 1070 041c 4D12     		.2byte	(.L857-.L860)/2
 1071 041e 4D12     		.2byte	(.L857-.L860)/2
 1072 0420 4D12     		.2byte	(.L857-.L860)/2
 1073 0422 4D12     		.2byte	(.L857-.L860)/2
 1074 0424 4D12     		.2byte	(.L857-.L860)/2
 1075 0426 4D12     		.2byte	(.L857-.L860)/2
 1076 0428 4D12     		.2byte	(.L857-.L860)/2
 1077 042a 4D12     		.2byte	(.L857-.L860)/2
 1078 042c 4D12     		.2byte	(.L857-.L860)/2
 1079 042e 4D12     		.2byte	(.L857-.L860)/2
 1080 0430 4D12     		.2byte	(.L857-.L860)/2
 1081 0432 4D12     		.2byte	(.L857-.L860)/2
 1082 0434 4D12     		.2byte	(.L857-.L860)/2
 1083 0436 4D12     		.2byte	(.L857-.L860)/2
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 20


 1084 0438 4D12     		.2byte	(.L857-.L860)/2
 1085 043a 4D12     		.2byte	(.L857-.L860)/2
 1086 043c 4D12     		.2byte	(.L857-.L860)/2
 1087 043e 4D12     		.2byte	(.L857-.L860)/2
 1088 0440 4D12     		.2byte	(.L857-.L860)/2
 1089 0442 4D12     		.2byte	(.L857-.L860)/2
 1090 0444 4D12     		.2byte	(.L857-.L860)/2
 1091 0446 4D12     		.2byte	(.L857-.L860)/2
 1092 0448 4D12     		.2byte	(.L857-.L860)/2
 1093 044a 4D12     		.2byte	(.L857-.L860)/2
 1094 044c 4D12     		.2byte	(.L857-.L860)/2
 1095 044e 4D12     		.2byte	(.L857-.L860)/2
 1096 0450 4D12     		.2byte	(.L857-.L860)/2
 1097 0452 4D12     		.2byte	(.L857-.L860)/2
 1098 0454 5E0D     		.2byte	(.L542-.L860)/2
 1099 0456 A70C     		.2byte	(.L543-.L860)/2
 1100 0458 B20C     		.2byte	(.L544-.L860)/2
 1101 045a CC0C     		.2byte	(.L545-.L860)/2
 1102 045c 4D12     		.2byte	(.L857-.L860)/2
 1103 045e 4D12     		.2byte	(.L857-.L860)/2
 1104 0460 4D12     		.2byte	(.L857-.L860)/2
 1105 0462 4D12     		.2byte	(.L857-.L860)/2
 1106 0464 4D12     		.2byte	(.L857-.L860)/2
 1107 0466 4D12     		.2byte	(.L857-.L860)/2
 1108 0468 4D12     		.2byte	(.L857-.L860)/2
 1109 046a 4D12     		.2byte	(.L857-.L860)/2
 1110 046c 4D12     		.2byte	(.L857-.L860)/2
 1111 046e 4D12     		.2byte	(.L857-.L860)/2
 1112 0470 4D12     		.2byte	(.L857-.L860)/2
 1113 0472 4D12     		.2byte	(.L857-.L860)/2
 1114 0474 4D12     		.2byte	(.L857-.L860)/2
 1115 0476 4D12     		.2byte	(.L857-.L860)/2
 1116 0478 4D12     		.2byte	(.L857-.L860)/2
 1117 047a 4D12     		.2byte	(.L857-.L860)/2
 1118 047c 4D12     		.2byte	(.L857-.L860)/2
 1119 047e 4D12     		.2byte	(.L857-.L860)/2
 1120 0480 4D12     		.2byte	(.L857-.L860)/2
 1121 0482 4D12     		.2byte	(.L857-.L860)/2
 1122 0484 4D12     		.2byte	(.L857-.L860)/2
 1123 0486 4D12     		.2byte	(.L857-.L860)/2
 1124 0488 4D12     		.2byte	(.L857-.L860)/2
 1125 048a 4D12     		.2byte	(.L857-.L860)/2
 1126 048c 4D12     		.2byte	(.L857-.L860)/2
 1127 048e 4D12     		.2byte	(.L857-.L860)/2
 1128 0490 4D12     		.2byte	(.L857-.L860)/2
 1129 0492 4D12     		.2byte	(.L857-.L860)/2
 1130 0494 4D12     		.2byte	(.L857-.L860)/2
 1131 0496 4D12     		.2byte	(.L857-.L860)/2
 1132 0498 4D12     		.2byte	(.L857-.L860)/2
 1133 049a 4D12     		.2byte	(.L857-.L860)/2
 1134 049c 4D12     		.2byte	(.L857-.L860)/2
 1135 049e 4D12     		.2byte	(.L857-.L860)/2
 1136 04a0 4D12     		.2byte	(.L857-.L860)/2
 1137 04a2 4D12     		.2byte	(.L857-.L860)/2
 1138 04a4 120D     		.2byte	(.L551-.L860)/2
 1139 04a6 4D12     		.2byte	(.L857-.L860)/2
 1140 04a8 4D12     		.2byte	(.L857-.L860)/2
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 21


 1141 04aa 4D12     		.2byte	(.L857-.L860)/2
 1142 04ac 4D12     		.2byte	(.L857-.L860)/2
 1143 04ae 4D12     		.2byte	(.L857-.L860)/2
 1144 04b0 4D12     		.2byte	(.L857-.L860)/2
 1145 04b2 4D12     		.2byte	(.L857-.L860)/2
 1146 04b4 4D12     		.2byte	(.L857-.L860)/2
 1147 04b6 4D12     		.2byte	(.L857-.L860)/2
 1148 04b8 6B06     		.2byte	(.L553-.L860)/2
 1149 04ba 7D06     		.2byte	(.L555-.L860)/2
 1150 04bc F10F     		.2byte	(.L557-.L860)/2
 1151 04be 2D10     		.2byte	(.L563-.L860)/2
 1152 04c0 480B     		.2byte	(.L565-.L860)/2
 1153 04c2 3F10     		.2byte	(.L567-.L860)/2
 1154 04c4 5A0B     		.2byte	(.L576-.L860)/2
 1155 04c6 3704     		.2byte	(.L581-.L860)/2
 1156 04c8 0A04     		.2byte	(.L128-.L860)/2
 1157 04ca 5508     		.2byte	(.L599-.L860)/2
 1158 04cc 730F     		.2byte	(.L602-.L860)/2
 1159 04ce 6B0F     		.2byte	(.L605-.L860)/2
 1160 04d0 BF11     		.2byte	(.L606-.L860)/2
 1161 04d2 EA0E     		.2byte	(.L608-.L860)/2
 1162 04d4 F30E     		.2byte	(.L609-.L860)/2
 1163 04d6 4D12     		.2byte	(.L857-.L860)/2
 1164 04d8 090F     		.2byte	(.L863-.L860)/2
 1165 04da 360F     		.2byte	(.L626-.L860)/2
 1166 04dc AF06     		.2byte	(.L634-.L860)/2
 1167 04de D810     		.2byte	(.L638-.L860)/2
 1168 04e0 A80F     		.2byte	(.L650-.L860)/2
 1169 04e2 5811     		.2byte	(.L656-.L860)/2
 1170 04e4 3D0E     		.2byte	(.L661-.L860)/2
 1171 04e6 480E     		.2byte	(.L665-.L860)/2
 1172 04e8 8210     		.2byte	(.L667-.L860)/2
 1173 04ea B410     		.2byte	(.L680-.L860)/2
 1174 04ec 4D12     		.2byte	(.L857-.L860)/2
 1175 04ee BB05     		.2byte	(.L688-.L860)/2
 1176 04f0 4D12     		.2byte	(.L857-.L860)/2
 1177 04f2 C505     		.2byte	(.L703-.L860)/2
 1178 04f4 4D12     		.2byte	(.L857-.L860)/2
 1179 04f6 5F09     		.2byte	(.L711-.L860)/2
 1180 04f8 5F09     		.2byte	(.L711-.L860)/2
 1181 04fa 4D12     		.2byte	(.L857-.L860)/2
 1182 04fc 6A09     		.2byte	(.L735-.L860)/2
 1183 04fe 4D12     		.2byte	(.L857-.L860)/2
 1184 0500 9A05     		.2byte	(.L768-.L860)/2
 1185 0502 4D12     		.2byte	(.L857-.L860)/2
 1186 0504 4D12     		.2byte	(.L857-.L860)/2
 1187 0506 4D12     		.2byte	(.L857-.L860)/2
 1188 0508 4D12     		.2byte	(.L857-.L860)/2
 1189 050a 4D12     		.2byte	(.L857-.L860)/2
 1190 050c 4D12     		.2byte	(.L857-.L860)/2
 1191 050e 4D12     		.2byte	(.L857-.L860)/2
 1192 0510 4D12     		.2byte	(.L857-.L860)/2
 1193 0512 4D12     		.2byte	(.L857-.L860)/2
 1194 0514 4D12     		.2byte	(.L857-.L860)/2
 1195 0516 4D12     		.2byte	(.L857-.L860)/2
 1196 0518 4D12     		.2byte	(.L857-.L860)/2
 1197 051a 4D12     		.2byte	(.L857-.L860)/2
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 22


 1198 051c 4D12     		.2byte	(.L857-.L860)/2
 1199 051e 4D12     		.2byte	(.L857-.L860)/2
 1200 0520 4D12     		.2byte	(.L857-.L860)/2
 1201 0522 4D12     		.2byte	(.L857-.L860)/2
 1202 0524 4D12     		.2byte	(.L857-.L860)/2
 1203 0526 4D12     		.2byte	(.L857-.L860)/2
 1204 0528 4D12     		.2byte	(.L857-.L860)/2
 1205 052a 4D12     		.2byte	(.L857-.L860)/2
 1206 052c 4D12     		.2byte	(.L857-.L860)/2
 1207 052e 4D12     		.2byte	(.L857-.L860)/2
 1208 0530 4D12     		.2byte	(.L857-.L860)/2
 1209 0532 4D12     		.2byte	(.L857-.L860)/2
 1210 0534 4D12     		.2byte	(.L857-.L860)/2
 1211 0536 4D12     		.2byte	(.L857-.L860)/2
 1212 0538 4D12     		.2byte	(.L857-.L860)/2
 1213 053a 4D12     		.2byte	(.L857-.L860)/2
 1214 053c 4D12     		.2byte	(.L857-.L860)/2
 1215 053e 4D12     		.2byte	(.L857-.L860)/2
 1216 0540 4D12     		.2byte	(.L857-.L860)/2
 1217 0542 4D12     		.2byte	(.L857-.L860)/2
 1218 0544 4D12     		.2byte	(.L857-.L860)/2
 1219 0546 4D12     		.2byte	(.L857-.L860)/2
 1220 0548 4D12     		.2byte	(.L857-.L860)/2
 1221 054a 4D12     		.2byte	(.L857-.L860)/2
 1222 054c 4D12     		.2byte	(.L857-.L860)/2
 1223 054e 4D12     		.2byte	(.L857-.L860)/2
 1224 0550 4D12     		.2byte	(.L857-.L860)/2
 1225 0552 4D12     		.2byte	(.L857-.L860)/2
 1226 0554 4D12     		.2byte	(.L857-.L860)/2
 1227 0556 4D12     		.2byte	(.L857-.L860)/2
 1228 0558 4D12     		.2byte	(.L857-.L860)/2
 1229 055a 4D12     		.2byte	(.L857-.L860)/2
 1230 055c 4D12     		.2byte	(.L857-.L860)/2
 1231 055e 4D12     		.2byte	(.L857-.L860)/2
 1232 0560 4D12     		.2byte	(.L857-.L860)/2
 1233 0562 4D12     		.2byte	(.L857-.L860)/2
 1234 0564 4D12     		.2byte	(.L857-.L860)/2
 1235 0566 4D12     		.2byte	(.L857-.L860)/2
 1236 0568 4D12     		.2byte	(.L857-.L860)/2
 1237 056a 4D12     		.2byte	(.L857-.L860)/2
 1238 056c 4D12     		.2byte	(.L857-.L860)/2
 1239 056e 4D12     		.2byte	(.L857-.L860)/2
 1240 0570 4D12     		.2byte	(.L857-.L860)/2
 1241 0572 4D12     		.2byte	(.L857-.L860)/2
 1242 0574 4D12     		.2byte	(.L857-.L860)/2
 1243 0576 4D12     		.2byte	(.L857-.L860)/2
 1244 0578 4D12     		.2byte	(.L857-.L860)/2
 1245 057a 4D12     		.2byte	(.L857-.L860)/2
 1246 057c 4D12     		.2byte	(.L857-.L860)/2
 1247 057e 4D12     		.2byte	(.L857-.L860)/2
 1248 0580 4D12     		.2byte	(.L857-.L860)/2
 1249 0582 4D12     		.2byte	(.L857-.L860)/2
 1250 0584 4D12     		.2byte	(.L857-.L860)/2
 1251 0586 4D12     		.2byte	(.L857-.L860)/2
 1252 0588 4D12     		.2byte	(.L857-.L860)/2
 1253 058a 4D12     		.2byte	(.L857-.L860)/2
 1254 058c 4D12     		.2byte	(.L857-.L860)/2
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 23


 1255 058e 4D12     		.2byte	(.L857-.L860)/2
 1256 0590 4D12     		.2byte	(.L857-.L860)/2
 1257 0592 4D12     		.2byte	(.L857-.L860)/2
 1258 0594 4D12     		.2byte	(.L857-.L860)/2
 1259 0596 4D12     		.2byte	(.L857-.L860)/2
 1260 0598 4D12     		.2byte	(.L857-.L860)/2
 1261 059a 4D12     		.2byte	(.L857-.L860)/2
 1262 059c 4D12     		.2byte	(.L857-.L860)/2
 1263 059e AE12     		.2byte	(.L129-.L860)/2
 1264 05a0 3413     		.2byte	(.L130-.L860)/2
 1265 05a2 B205     		.2byte	(.L794-.L860)/2
 1266 05a4 4D12     		.2byte	(.L857-.L860)/2
 1267 05a6 4D12     		.2byte	(.L857-.L860)/2
 1268 05a8 4D12     		.2byte	(.L857-.L860)/2
 1269 05aa 4D12     		.2byte	(.L857-.L860)/2
 1270 05ac 4D12     		.2byte	(.L857-.L860)/2
 1271 05ae 4D12     		.2byte	(.L857-.L860)/2
 1272 05b0 4D12     		.2byte	(.L857-.L860)/2
 1273 05b2 4D12     		.2byte	(.L857-.L860)/2
 1274 05b4 4D12     		.2byte	(.L857-.L860)/2
 1275 05b6 4D12     		.2byte	(.L857-.L860)/2
 1276 05b8 4D12     		.2byte	(.L857-.L860)/2
 1277 05ba 4D12     		.2byte	(.L857-.L860)/2
 1278 05bc 4D12     		.2byte	(.L857-.L860)/2
 1279 05be 4D12     		.2byte	(.L857-.L860)/2
 1280 05c0 4D12     		.2byte	(.L857-.L860)/2
 1281 05c2 4D12     		.2byte	(.L857-.L860)/2
 1282 05c4 4D12     		.2byte	(.L857-.L860)/2
 1283 05c6 4D12     		.2byte	(.L857-.L860)/2
 1284 05c8 4D12     		.2byte	(.L857-.L860)/2
 1285 05ca 4D12     		.2byte	(.L857-.L860)/2
 1286 05cc 4D12     		.2byte	(.L857-.L860)/2
 1287 05ce 4D12     		.2byte	(.L857-.L860)/2
 1288 05d0 4D12     		.2byte	(.L857-.L860)/2
 1289 05d2 4D12     		.2byte	(.L857-.L860)/2
 1290 05d4 4D12     		.2byte	(.L857-.L860)/2
 1291 05d6 4D12     		.2byte	(.L857-.L860)/2
 1292 05d8 4D12     		.2byte	(.L857-.L860)/2
 1293 05da 4D12     		.2byte	(.L857-.L860)/2
 1294 05dc 4D12     		.2byte	(.L857-.L860)/2
 1295 05de 4D12     		.2byte	(.L857-.L860)/2
 1296 05e0 4D12     		.2byte	(.L857-.L860)/2
 1297 05e2 4D12     		.2byte	(.L857-.L860)/2
 1298 05e4 4D12     		.2byte	(.L857-.L860)/2
 1299 05e6 4D12     		.2byte	(.L857-.L860)/2
 1300 05e8 4D12     		.2byte	(.L857-.L860)/2
 1301 05ea 4D12     		.2byte	(.L857-.L860)/2
 1302 05ec 4D12     		.2byte	(.L857-.L860)/2
 1303 05ee 4D12     		.2byte	(.L857-.L860)/2
 1304 05f0 4D12     		.2byte	(.L857-.L860)/2
 1305 05f2 4D12     		.2byte	(.L857-.L860)/2
 1306 05f4 4D12     		.2byte	(.L857-.L860)/2
 1307 05f6 4D12     		.2byte	(.L857-.L860)/2
 1308 05f8 4D12     		.2byte	(.L857-.L860)/2
 1309 05fa 4D12     		.2byte	(.L857-.L860)/2
 1310 05fc 4D12     		.2byte	(.L857-.L860)/2
 1311 05fe 4D12     		.2byte	(.L857-.L860)/2
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 24


 1312 0600 4D12     		.2byte	(.L857-.L860)/2
 1313 0602 4D12     		.2byte	(.L857-.L860)/2
 1314 0604 4D12     		.2byte	(.L857-.L860)/2
 1315 0606 4D12     		.2byte	(.L857-.L860)/2
 1316 0608 4D12     		.2byte	(.L857-.L860)/2
 1317 060a 4D12     		.2byte	(.L857-.L860)/2
 1318 060c 4D12     		.2byte	(.L857-.L860)/2
 1319 060e 4D12     		.2byte	(.L857-.L860)/2
 1320 0610 4D12     		.2byte	(.L857-.L860)/2
 1321 0612 4D12     		.2byte	(.L857-.L860)/2
 1322 0614 4D12     		.2byte	(.L857-.L860)/2
 1323 0616 4D12     		.2byte	(.L857-.L860)/2
 1324 0618 4D12     		.2byte	(.L857-.L860)/2
 1325 061a 4D12     		.2byte	(.L857-.L860)/2
 1326 061c 4D12     		.2byte	(.L857-.L860)/2
 1327 061e 4D12     		.2byte	(.L857-.L860)/2
 1328 0620 4D12     		.2byte	(.L857-.L860)/2
 1329 0622 4D12     		.2byte	(.L857-.L860)/2
 1330 0624 4D12     		.2byte	(.L857-.L860)/2
 1331 0626 4D12     		.2byte	(.L857-.L860)/2
 1332 0628 4D12     		.2byte	(.L857-.L860)/2
 1333 062a 4D12     		.2byte	(.L857-.L860)/2
 1334 062c 4D12     		.2byte	(.L857-.L860)/2
 1335 062e 4D12     		.2byte	(.L857-.L860)/2
 1336 0630 4D12     		.2byte	(.L857-.L860)/2
 1337 0632 4D12     		.2byte	(.L857-.L860)/2
 1338 0634 4D12     		.2byte	(.L857-.L860)/2
 1339 0636 4D12     		.2byte	(.L857-.L860)/2
 1340 0638 4D12     		.2byte	(.L857-.L860)/2
 1341 063a 4D12     		.2byte	(.L857-.L860)/2
 1342 063c 4D12     		.2byte	(.L857-.L860)/2
 1343 063e 4D12     		.2byte	(.L857-.L860)/2
 1344 0640 4D12     		.2byte	(.L857-.L860)/2
 1345 0642 4D12     		.2byte	(.L857-.L860)/2
 1346 0644 4D12     		.2byte	(.L857-.L860)/2
 1347 0646 4D12     		.2byte	(.L857-.L860)/2
 1348 0648 4D12     		.2byte	(.L857-.L860)/2
 1349 064a 4D12     		.2byte	(.L857-.L860)/2
 1350 064c 4D12     		.2byte	(.L857-.L860)/2
 1351 064e 4D12     		.2byte	(.L857-.L860)/2
 1352 0650 4D12     		.2byte	(.L857-.L860)/2
 1353 0652 4D12     		.2byte	(.L857-.L860)/2
 1354 0654 4D12     		.2byte	(.L857-.L860)/2
 1355 0656 4D12     		.2byte	(.L857-.L860)/2
 1356 0658 4D12     		.2byte	(.L857-.L860)/2
 1357 065a 4D12     		.2byte	(.L857-.L860)/2
 1358 065c 4D12     		.2byte	(.L857-.L860)/2
 1359 065e 4D12     		.2byte	(.L857-.L860)/2
 1360 0660 4D12     		.2byte	(.L857-.L860)/2
 1361 0662 4D12     		.2byte	(.L857-.L860)/2
 1362 0664 4D12     		.2byte	(.L857-.L860)/2
 1363 0666 4D12     		.2byte	(.L857-.L860)/2
 1364 0668 4D12     		.2byte	(.L857-.L860)/2
 1365 066a 4D12     		.2byte	(.L857-.L860)/2
 1366 066c 4D12     		.2byte	(.L857-.L860)/2
 1367 066e 4D12     		.2byte	(.L857-.L860)/2
 1368 0670 4D12     		.2byte	(.L857-.L860)/2
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 25


 1369 0672 4D12     		.2byte	(.L857-.L860)/2
 1370 0674 4D12     		.2byte	(.L857-.L860)/2
 1371 0676 4D12     		.2byte	(.L857-.L860)/2
 1372 0678 4D12     		.2byte	(.L857-.L860)/2
 1373 067a 4D12     		.2byte	(.L857-.L860)/2
 1374 067c 4D12     		.2byte	(.L857-.L860)/2
 1375 067e 4D12     		.2byte	(.L857-.L860)/2
 1376 0680 4D12     		.2byte	(.L857-.L860)/2
 1377 0682 4D12     		.2byte	(.L857-.L860)/2
 1378 0684 4D12     		.2byte	(.L857-.L860)/2
 1379 0686 4D12     		.2byte	(.L857-.L860)/2
 1380 0688 4D12     		.2byte	(.L857-.L860)/2
 1381 068a 4D12     		.2byte	(.L857-.L860)/2
 1382 068c 4D12     		.2byte	(.L857-.L860)/2
 1383 068e 4D12     		.2byte	(.L857-.L860)/2
 1384 0690 4D12     		.2byte	(.L857-.L860)/2
 1385 0692 4D12     		.2byte	(.L857-.L860)/2
 1386 0694 4D12     		.2byte	(.L857-.L860)/2
 1387 0696 4D12     		.2byte	(.L857-.L860)/2
 1388 0698 4D12     		.2byte	(.L857-.L860)/2
 1389 069a 4D12     		.2byte	(.L857-.L860)/2
 1390 069c 4D12     		.2byte	(.L857-.L860)/2
 1391 069e 4D12     		.2byte	(.L857-.L860)/2
 1392 06a0 4D12     		.2byte	(.L857-.L860)/2
 1393 06a2 4D12     		.2byte	(.L857-.L860)/2
 1394 06a4 4D12     		.2byte	(.L857-.L860)/2
 1395 06a6 4D12     		.2byte	(.L857-.L860)/2
 1396 06a8 4D12     		.2byte	(.L857-.L860)/2
 1397 06aa 4D12     		.2byte	(.L857-.L860)/2
 1398 06ac 4D12     		.2byte	(.L857-.L860)/2
 1399 06ae 4D12     		.2byte	(.L857-.L860)/2
 1400 06b0 4D12     		.2byte	(.L857-.L860)/2
 1401 06b2 4D12     		.2byte	(.L857-.L860)/2
 1402 06b4 4D12     		.2byte	(.L857-.L860)/2
 1403 06b6 4D12     		.2byte	(.L857-.L860)/2
 1404 06b8 4D12     		.2byte	(.L857-.L860)/2
 1405 06ba 4D12     		.2byte	(.L857-.L860)/2
 1406 06bc 4D12     		.2byte	(.L857-.L860)/2
 1407 06be 4D12     		.2byte	(.L857-.L860)/2
 1408 06c0 4D12     		.2byte	(.L857-.L860)/2
 1409 06c2 4D12     		.2byte	(.L857-.L860)/2
 1410 06c4 4D12     		.2byte	(.L857-.L860)/2
 1411 06c6 4D12     		.2byte	(.L857-.L860)/2
 1412 06c8 4D12     		.2byte	(.L857-.L860)/2
 1413 06ca 4D12     		.2byte	(.L857-.L860)/2
 1414 06cc 4D12     		.2byte	(.L857-.L860)/2
 1415 06ce 4D12     		.2byte	(.L857-.L860)/2
 1416 06d0 4D12     		.2byte	(.L857-.L860)/2
 1417 06d2 4D12     		.2byte	(.L857-.L860)/2
 1418 06d4 4D12     		.2byte	(.L857-.L860)/2
 1419 06d6 4D12     		.2byte	(.L857-.L860)/2
 1420 06d8 4D12     		.2byte	(.L857-.L860)/2
 1421 06da 4D12     		.2byte	(.L857-.L860)/2
 1422 06dc 4D12     		.2byte	(.L857-.L860)/2
 1423 06de 4D12     		.2byte	(.L857-.L860)/2
 1424 06e0 4D12     		.2byte	(.L857-.L860)/2
 1425 06e2 4D12     		.2byte	(.L857-.L860)/2
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 26


 1426 06e4 4D12     		.2byte	(.L857-.L860)/2
 1427 06e6 4D12     		.2byte	(.L857-.L860)/2
 1428 06e8 4D12     		.2byte	(.L857-.L860)/2
 1429 06ea 4D12     		.2byte	(.L857-.L860)/2
 1430 06ec 4D12     		.2byte	(.L857-.L860)/2
 1431 06ee 4D12     		.2byte	(.L857-.L860)/2
 1432 06f0 4D12     		.2byte	(.L857-.L860)/2
 1433 06f2 4D12     		.2byte	(.L857-.L860)/2
 1434 06f4 4D12     		.2byte	(.L857-.L860)/2
 1435 06f6 4D12     		.2byte	(.L857-.L860)/2
 1436 06f8 4D12     		.2byte	(.L857-.L860)/2
 1437 06fa 4D12     		.2byte	(.L857-.L860)/2
 1438 06fc 4D12     		.2byte	(.L857-.L860)/2
 1439 06fe 4D12     		.2byte	(.L857-.L860)/2
 1440 0700 4D12     		.2byte	(.L857-.L860)/2
 1441 0702 4D12     		.2byte	(.L857-.L860)/2
 1442 0704 4D12     		.2byte	(.L857-.L860)/2
 1443 0706 4D12     		.2byte	(.L857-.L860)/2
 1444 0708 4D12     		.2byte	(.L857-.L860)/2
 1445 070a 4D12     		.2byte	(.L857-.L860)/2
 1446 070c 4D12     		.2byte	(.L857-.L860)/2
 1447 070e 4D12     		.2byte	(.L857-.L860)/2
 1448 0710 4D12     		.2byte	(.L857-.L860)/2
 1449 0712 4D12     		.2byte	(.L857-.L860)/2
 1450 0714 4D12     		.2byte	(.L857-.L860)/2
 1451 0716 4D12     		.2byte	(.L857-.L860)/2
 1452 0718 4D12     		.2byte	(.L857-.L860)/2
 1453 071a 4D12     		.2byte	(.L857-.L860)/2
 1454 071c 4D12     		.2byte	(.L857-.L860)/2
 1455 071e 4D12     		.2byte	(.L857-.L860)/2
 1456 0720 4D12     		.2byte	(.L857-.L860)/2
 1457 0722 4D12     		.2byte	(.L857-.L860)/2
 1458 0724 4D12     		.2byte	(.L857-.L860)/2
 1459 0726 4D12     		.2byte	(.L857-.L860)/2
 1460 0728 4D12     		.2byte	(.L857-.L860)/2
 1461 072a 4D12     		.2byte	(.L857-.L860)/2
 1462 072c 4D12     		.2byte	(.L857-.L860)/2
 1463 072e 4D12     		.2byte	(.L857-.L860)/2
 1464 0730 4D12     		.2byte	(.L857-.L860)/2
 1465 0732 4D12     		.2byte	(.L857-.L860)/2
 1466 0734 4D12     		.2byte	(.L857-.L860)/2
 1467 0736 4D12     		.2byte	(.L857-.L860)/2
 1468 0738 4D12     		.2byte	(.L857-.L860)/2
 1469 073a 4D12     		.2byte	(.L857-.L860)/2
 1470 073c 4D12     		.2byte	(.L857-.L860)/2
 1471 073e 4D12     		.2byte	(.L857-.L860)/2
 1472 0740 4D12     		.2byte	(.L857-.L860)/2
 1473 0742 4D12     		.2byte	(.L857-.L860)/2
 1474 0744 4D12     		.2byte	(.L857-.L860)/2
 1475 0746 4D12     		.2byte	(.L857-.L860)/2
 1476 0748 4D12     		.2byte	(.L857-.L860)/2
 1477 074a 4D12     		.2byte	(.L857-.L860)/2
 1478 074c 4D12     		.2byte	(.L857-.L860)/2
 1479 074e 4D12     		.2byte	(.L857-.L860)/2
 1480 0750 4D12     		.2byte	(.L857-.L860)/2
 1481 0752 4D12     		.2byte	(.L857-.L860)/2
 1482 0754 4D12     		.2byte	(.L857-.L860)/2
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 27


 1483 0756 4D12     		.2byte	(.L857-.L860)/2
 1484 0758 4D12     		.2byte	(.L857-.L860)/2
 1485 075a 4D12     		.2byte	(.L857-.L860)/2
 1486 075c 4D12     		.2byte	(.L857-.L860)/2
 1487 075e 4D12     		.2byte	(.L857-.L860)/2
 1488 0760 4D12     		.2byte	(.L857-.L860)/2
 1489 0762 4D12     		.2byte	(.L857-.L860)/2
 1490 0764 4D12     		.2byte	(.L857-.L860)/2
 1491 0766 4D12     		.2byte	(.L857-.L860)/2
 1492 0768 4D12     		.2byte	(.L857-.L860)/2
 1493 076a 4D12     		.2byte	(.L857-.L860)/2
 1494 076c 4D12     		.2byte	(.L857-.L860)/2
 1495 076e 4D12     		.2byte	(.L857-.L860)/2
 1496 0770 4D12     		.2byte	(.L857-.L860)/2
 1497 0772 4D12     		.2byte	(.L857-.L860)/2
 1498 0774 4D12     		.2byte	(.L857-.L860)/2
 1499 0776 4D12     		.2byte	(.L857-.L860)/2
 1500 0778 4D12     		.2byte	(.L857-.L860)/2
 1501 077a 4D12     		.2byte	(.L857-.L860)/2
 1502 077c 4D12     		.2byte	(.L857-.L860)/2
 1503 077e 4807     		.2byte	(.L804-.L860)/2
 1504 0780 1612     		.2byte	(.L864-.L860)/2
 1505 0782 4D12     		.2byte	(.L857-.L860)/2
 1506 0784 4D12     		.2byte	(.L857-.L860)/2
 1507 0786 4D12     		.2byte	(.L857-.L860)/2
 1508 0788 4D12     		.2byte	(.L857-.L860)/2
 1509 078a 7807     		.2byte	(.L834-.L860)/2
 1510 078c E90D     		.2byte	(.L835-.L860)/2
 1511 078e 1612     		.2byte	(.L864-.L860)/2
 1512 0790 4D12     		.2byte	(.L857-.L860)/2
 1513 0792 4D12     		.2byte	(.L857-.L860)/2
 1514 0794 4D12     		.2byte	(.L857-.L860)/2
 1515 0796 4D12     		.2byte	(.L857-.L860)/2
 1516 0798 4D12     		.2byte	(.L857-.L860)/2
 1517 079a 4D12     		.2byte	(.L857-.L860)/2
 1518 079c 4D12     		.2byte	(.L857-.L860)/2
 1519 079e 4D12     		.2byte	(.L857-.L860)/2
 1520 07a0 4D12     		.2byte	(.L857-.L860)/2
 1521 07a2 4D12     		.2byte	(.L857-.L860)/2
 1522 07a4 4D12     		.2byte	(.L857-.L860)/2
 1523 07a6 4D12     		.2byte	(.L857-.L860)/2
 1524 07a8 4D12     		.2byte	(.L857-.L860)/2
 1525 07aa 4D12     		.2byte	(.L857-.L860)/2
 1526 07ac 4D12     		.2byte	(.L857-.L860)/2
 1527 07ae 4D12     		.2byte	(.L857-.L860)/2
 1528 07b0 4D12     		.2byte	(.L857-.L860)/2
 1529 07b2 4D12     		.2byte	(.L857-.L860)/2
 1530 07b4 4D12     		.2byte	(.L857-.L860)/2
 1531 07b6 4D12     		.2byte	(.L857-.L860)/2
 1532 07b8 4D12     		.2byte	(.L857-.L860)/2
 1533 07ba 4D12     		.2byte	(.L857-.L860)/2
 1534 07bc 4D12     		.2byte	(.L857-.L860)/2
 1535 07be 4D12     		.2byte	(.L857-.L860)/2
 1536 07c0 4D12     		.2byte	(.L857-.L860)/2
 1537 07c2 4D12     		.2byte	(.L857-.L860)/2
 1538 07c4 4D12     		.2byte	(.L857-.L860)/2
 1539 07c6 4D12     		.2byte	(.L857-.L860)/2
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 28


 1540 07c8 4D12     		.2byte	(.L857-.L860)/2
 1541 07ca 4D12     		.2byte	(.L857-.L860)/2
 1542 07cc 4D12     		.2byte	(.L857-.L860)/2
 1543 07ce 4D12     		.2byte	(.L857-.L860)/2
 1544 07d0 4D12     		.2byte	(.L857-.L860)/2
 1545 07d2 4D12     		.2byte	(.L857-.L860)/2
 1546 07d4 4D12     		.2byte	(.L857-.L860)/2
 1547 07d6 4D12     		.2byte	(.L857-.L860)/2
 1548 07d8 4D12     		.2byte	(.L857-.L860)/2
 1549 07da 4D12     		.2byte	(.L857-.L860)/2
 1550 07dc 4D12     		.2byte	(.L857-.L860)/2
 1551 07de 4D12     		.2byte	(.L857-.L860)/2
 1552 07e0 4D12     		.2byte	(.L857-.L860)/2
 1553 07e2 4D12     		.2byte	(.L857-.L860)/2
 1554 07e4 4D12     		.2byte	(.L857-.L860)/2
 1555 07e6 4D12     		.2byte	(.L857-.L860)/2
 1556 07e8 4D12     		.2byte	(.L857-.L860)/2
 1557 07ea 4D12     		.2byte	(.L857-.L860)/2
 1558 07ec 4D12     		.2byte	(.L857-.L860)/2
 1559 07ee 4D12     		.2byte	(.L857-.L860)/2
 1560 07f0 4D12     		.2byte	(.L857-.L860)/2
 1561 07f2 4D12     		.2byte	(.L857-.L860)/2
 1562 07f4 4D12     		.2byte	(.L857-.L860)/2
 1563 07f6 4D12     		.2byte	(.L857-.L860)/2
 1564 07f8 4D12     		.2byte	(.L857-.L860)/2
 1565 07fa 4D12     		.2byte	(.L857-.L860)/2
 1566 07fc 4D12     		.2byte	(.L857-.L860)/2
 1567 07fe 4D12     		.2byte	(.L857-.L860)/2
 1568 0800 4D12     		.2byte	(.L857-.L860)/2
 1569 0802 4D12     		.2byte	(.L857-.L860)/2
 1570 0804 4D12     		.2byte	(.L857-.L860)/2
 1571 0806 4D12     		.2byte	(.L857-.L860)/2
 1572 0808 4D12     		.2byte	(.L857-.L860)/2
 1573 080a 4D12     		.2byte	(.L857-.L860)/2
 1574 080c 4D12     		.2byte	(.L857-.L860)/2
 1575 080e 4D12     		.2byte	(.L857-.L860)/2
 1576 0810 4D12     		.2byte	(.L857-.L860)/2
 1577 0812 4D12     		.2byte	(.L857-.L860)/2
 1578 0814 4D12     		.2byte	(.L857-.L860)/2
 1579 0816 4D12     		.2byte	(.L857-.L860)/2
 1580 0818 4D12     		.2byte	(.L857-.L860)/2
 1581 081a 4D12     		.2byte	(.L857-.L860)/2
 1582 081c 4D12     		.2byte	(.L857-.L860)/2
 1583 081e 4D12     		.2byte	(.L857-.L860)/2
 1584 0820 4D12     		.2byte	(.L857-.L860)/2
 1585 0822 4D12     		.2byte	(.L857-.L860)/2
 1586 0824 4D12     		.2byte	(.L857-.L860)/2
 1587 0826 4D12     		.2byte	(.L857-.L860)/2
 1588 0828 4D12     		.2byte	(.L857-.L860)/2
 1589 082a 4D12     		.2byte	(.L857-.L860)/2
 1590 082c 4D12     		.2byte	(.L857-.L860)/2
 1591 082e 4D12     		.2byte	(.L857-.L860)/2
 1592 0830 4D12     		.2byte	(.L857-.L860)/2
 1593 0832 4D12     		.2byte	(.L857-.L860)/2
 1594 0834 4D12     		.2byte	(.L857-.L860)/2
 1595 0836 2007     		.2byte	(.L837-.L860)/2
 1596 0838 1905     		.2byte	(.L852-.L860)/2
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 29


 1597 083a 4808     		.2byte	(.L855-.L860)/2
 1598              	.L122:
 1599 083c A368     		ldr	r3, [r4, #8]
 1600 083e 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1601 0840 D006     		lsls	r0, r2, #27
 1602 0842 7FF50CAC 		bpl	.L125
 1603 0846 40F22D13 		movw	r3, #301
 1604 084a 9945     		cmp	r9, r3
 1605 084c 01F0A286 		beq	.L126
 1606 0850 40F23313 		movw	r3, #307
 1607 0854 9945     		cmp	r9, r3
 1608 0856 01F09286 		beq	.L127
 1609 085a 40F22E23 		movw	r3, #558
 1610 085e 9945     		cmp	r9, r3
 1611 0860 0ED0     		beq	.L128
 1612 0862 40F29923 		movw	r3, #665
 1613 0866 9945     		cmp	r9, r3
 1614 0868 01F0AE86 		beq	.L129
 1615 086c 40F29A23 		movw	r3, #666
 1616 0870 9945     		cmp	r9, r3
 1617 0872 01F02F87 		beq	.L130
 1618              	.L1455:
 1619 0876 0127     		movs	r7, #1
 1620              	.L1404:
 1621 0878 3846     		mov	r0, r7
 1622 087a 5BB0     		add	sp, sp, #364
 1623              		@ sp needed
 1624 087c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1625              	.L128:
 1626 0880 2968     		ldr	r1, [r5]
 1627 0882 D5F88421 		ldr	r2, [r5, #388]
 1628 0886 0DF15008 		add	r8, sp, #80
 1629 088a 0023     		movs	r3, #0
 1630 088c D1F89490 		ldr	r9, [r1, #148]
 1631 0890 88F80030 		strb	r3, [r8]
 1632 0894 002A     		cmp	r2, #0
 1633 0896 03F0DC87 		beq	.L962
 1634 089a 9A46     		mov	r10, r3
 1635 089c BC4F     		ldr	r7, .L1608
 1636 089e 9B46     		mov	fp, r3
 1637 08a0 06E0     		b	.L587
 1638              	.L584:
 1639 08a2 D5F88431 		ldr	r3, [r5, #388]
 1640 08a6 0AF1010A 		add	r10, r10, #1
 1641 08aa 5345     		cmp	r3, r10
 1642 08ac 41F28887 		bls	.L1456
 1643              	.L587:
 1644 08b0 2046     		mov	r0, r4
 1645 08b2 17F80A10 		ldrb	r1, [r7, r10]	@ zero_extendqisi2
 1646 08b6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1647 08ba 0028     		cmp	r0, #0
 1648 08bc F1D0     		beq	.L584
 1649 08be 2046     		mov	r0, r4
 1650 08c0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1651 08c4 0028     		cmp	r0, #0
 1652 08c6 42F3A683 		ble	.L585
 1653 08ca 4FF0010C 		mov	ip, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 30


 1654 08ce 0CFA0AF3 		lsl	r3, ip, r10
 1655 08d2 E346     		mov	fp, ip
 1656 08d4 49EA0309 		orr	r9, r9, r3
 1657 08d8 E3E7     		b	.L584
 1658              	.L581:
 1659 08da 2046     		mov	r0, r4
 1660 08dc 5021     		movs	r1, #80
 1661 08de FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1662 08e2 0028     		cmp	r0, #0
 1663 08e4 02F0D881 		beq	.L582
 1664 08e8 3046     		mov	r0, r6
 1665 08ea AA49     		ldr	r1, .L1608+4
 1666 08ec FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 1667 08f0 A368     		ldr	r3, [r4, #8]
 1668 08f2 0027     		movs	r7, #0
 1669              	.L755:
 1670 08f4 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 1671 08f6 002B     		cmp	r3, #0
 1672 08f8 01F02086 		beq	.L859
 1673 08fc 4FF00109 		mov	r9, #1
 1674              	.L858:
 1675 0900 4F46     		mov	r7, r9
 1676 0902 3846     		mov	r0, r7
 1677 0904 5BB0     		add	sp, sp, #364
 1678              		@ sp needed
 1679 0906 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1680              	.L261:
 1681 090a 2846     		mov	r0, r5
 1682 090c 3146     		mov	r1, r6
 1683 090e FFF7FEFF 		bl	_ZNK6GCodes25GenerateTemperatureReportER9StringRef
 1684 0912 0027     		movs	r7, #0
 1685 0914 A368     		ldr	r3, [r4, #8]
 1686 0916 EDE7     		b	.L755
 1687              	.L262:
 1688 0918 0DF14C09 		add	r9, sp, #76
 1689 091c 0027     		movs	r7, #0
 1690 091e 4A46     		mov	r2, r9
 1691 0920 12AB     		add	r3, sp, #72
 1692 0922 2046     		mov	r0, r4
 1693 0924 5021     		movs	r1, #80
 1694 0926 8DF84870 		strb	r7, [sp, #72]
 1695 092a C9F80070 		str	r7, [r9]
 1696 092e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 1697 0932 D9F80020 		ldr	r2, [r9]
 1698 0936 022A     		cmp	r2, #2
 1699 0938 03F2BA80 		bhi	.L1457
 1700 093c 2B68     		ldr	r3, [r5]
 1701 093e 02F13208 		add	r8, r2, #50
 1702 0942 03EB4818 		add	r8, r3, r8, lsl #5
 1703 0946 08F10407 		add	r7, r8, #4
 1704 094a 3B7F     		ldrb	r3, [r7, #28]	@ zero_extendqisi2
 1705 094c FF2B     		cmp	r3, #255
 1706 094e 03F0E584 		beq	.L1458
 1707 0952 2046     		mov	r0, r4
 1708 0954 4921     		movs	r1, #73
 1709 0956 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1710 095a 0028     		cmp	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 31


 1711 095c 43F01F86 		bne	.L1459
 1712 0960 8246     		mov	r10, r0
 1713              	.L266:
 1714 0962 2046     		mov	r0, r4
 1715 0964 4621     		movs	r1, #70
 1716 0966 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1717 096a 0028     		cmp	r0, #0
 1718 096c 43F00C86 		bne	.L1460
 1719              	.L268:
 1720 0970 2046     		mov	r0, r4
 1721 0972 5421     		movs	r1, #84
 1722 0974 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1723 0978 0028     		cmp	r0, #0
 1724 097a 43F0FD85 		bne	.L1461
 1725              	.L269:
 1726 097e 2046     		mov	r0, r4
 1727 0980 4221     		movs	r1, #66
 1728 0982 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1729 0986 0028     		cmp	r0, #0
 1730 0988 43F0EB85 		bne	.L1462
 1731              	.L270:
 1732 098c 2046     		mov	r0, r4
 1733 098e 4C21     		movs	r1, #76
 1734 0990 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1735 0994 0028     		cmp	r0, #0
 1736 0996 43F09886 		bne	.L1463
 1737              	.L271:
 1738 099a 2046     		mov	r0, r4
 1739 099c 4821     		movs	r1, #72
 1740 099e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1741 09a2 0028     		cmp	r0, #0
 1742 09a4 43F06586 		bne	.L1464
 1743              	.L272:
 1744 09a8 2046     		mov	r0, r4
 1745 09aa 5321     		movs	r1, #83
 1746 09ac FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1747 09b0 0028     		cmp	r0, #0
 1748 09b2 03F0D781 		beq	.L277
 1749 09b6 2046     		mov	r0, r4
 1750 09b8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1751 09bc 0146     		mov	r1, r0
 1752 09be 0746     		mov	r7, r0
 1753 09c0 FFF7FEFF 		bl	__aeabi_fcmpun
 1754 09c4 0028     		cmp	r0, #0
 1755 09c6 43F0F387 		bne	.L1452
 1756 09ca 3846     		mov	r0, r7
 1757 09cc 7249     		ldr	r1, .L1608+8
 1758 09ce FFF7FEFF 		bl	__aeabi_fcmplt
 1759 09d2 0028     		cmp	r0, #0
 1760 09d4 43F0E587 		bne	.L279
 1761 09d8 6F4A     		ldr	r2, .L1608+8
 1762              	.L278:
 1763 09da BAF1000F 		cmp	r10, #0
 1764 09de 04D1     		bne	.L280
 1765 09e0 9DF84830 		ldrb	r3, [sp, #72]	@ zero_extendqisi2
 1766 09e4 002B     		cmp	r3, #0
 1767 09e6 04F01D82 		beq	.L281
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 32


 1768              	.L280:
 1769 09ea D9F80010 		ldr	r1, [r9]
 1770 09ee 2868     		ldr	r0, [r5]
 1771 09f0 FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 1772              	.L264:
 1773 09f4 A368     		ldr	r3, [r4, #8]
 1774 09f6 0027     		movs	r7, #0
 1775 09f8 7CE7     		b	.L755
 1776              	.L290:
 1777 09fa 2868     		ldr	r0, [r5]
 1778 09fc 0021     		movs	r1, #0
 1779 09fe 0022     		movs	r2, #0
 1780 0a00 FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 1781 0a04 0027     		movs	r7, #0
 1782 0a06 A368     		ldr	r3, [r4, #8]
 1783 0a08 74E7     		b	.L755
 1784              	.L291:
 1785 0a0a 95F87D73 		ldrb	r7, [r5, #893]	@ zero_extendqisi2
 1786 0a0e 002F     		cmp	r7, #0
 1787 0a10 3FF470AF 		beq	.L755
 1788 0a14 0123     		movs	r3, #1
 1789 0a16 85F87E33 		strb	r3, [r5, #894]
 1790 0a1a A368     		ldr	r3, [r4, #8]
 1791 0a1c 0027     		movs	r7, #0
 1792 0a1e 69E7     		b	.L755
 1793              	.L292:
 1794 0a20 2046     		mov	r0, r4
 1795 0a22 5221     		movs	r1, #82
 1796 0a24 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1797 0a28 0746     		mov	r7, r0
 1798 0a2a 0028     		cmp	r0, #0
 1799 0a2c 02F05D82 		beq	.L293
 1800 0a30 A368     		ldr	r3, [r4, #8]
 1801 0a32 2046     		mov	r0, r4
 1802 0a34 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 1803 0a36 42F00802 		orr	r2, r2, #8
 1804 0a3a 5A74     		strb	r2, [r3, #17]
 1805 0a3c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1806 0a40 8046     		mov	r8, r0
 1807              	.L294:
 1808 0a42 2046     		mov	r0, r4
 1809 0a44 5421     		movs	r1, #84
 1810 0a46 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1811 0a4a 0028     		cmp	r0, #0
 1812 0a4c 02F08D83 		beq	.L296
 1813 0a50 2046     		mov	r0, r4
 1814 0a52 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1815 0a56 D4F88830 		ldr	r3, [r4, #136]
 1816 0a5a C118     		adds	r1, r0, r3
 1817 0a5c 4F48     		ldr	r0, .L1608+12
 1818 0a5e FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 1819 0a62 0746     		mov	r7, r0
 1820              	.L297:
 1821 0a64 4246     		mov	r2, r8
 1822 0a66 2846     		mov	r0, r5
 1823 0a68 3946     		mov	r1, r7
 1824 0a6a FFF7FEFF 		bl	_ZN6GCodes14SetToolHeatersEP4Toolf
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 33


 1825 0a6e 002F     		cmp	r7, #0
 1826 0a70 04F05780 		beq	.L1465
 1827 0a74 494B     		ldr	r3, .L1608+12
 1828 0a76 5B6A     		ldr	r3, [r3, #36]
 1829 0a78 9F42     		cmp	r7, r3
 1830 0a7a 03F05885 		beq	.L299
 1831 0a7e 2846     		mov	r0, r5
 1832 0a80 2146     		mov	r1, r4
 1833 0a82 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 1834 0a86 0028     		cmp	r0, #0
 1835 0a88 00F0A980 		beq	.L546
 1836 0a8c 7B68     		ldr	r3, [r7, #4]
 1837 0a8e 0822     		movs	r2, #8
 1838 0a90 C5F84832 		str	r3, [r5, #584]
 1839 0a94 A368     		ldr	r3, [r4, #8]
 1840 0a96 0027     		movs	r7, #0
 1841 0a98 1A74     		strb	r2, [r3, #16]
 1842 0a9a A368     		ldr	r3, [r4, #8]
 1843 0a9c 2AE7     		b	.L755
 1844              	.L852:
 1845 0a9e 2046     		mov	r0, r4
 1846 0aa0 5021     		movs	r1, #80
 1847 0aa2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1848 0aa6 0028     		cmp	r0, #0
 1849 0aa8 43F0B080 		bne	.L853
 1850 0aac 0746     		mov	r7, r0
 1851 0aae A368     		ldr	r3, [r4, #8]
 1852 0ab0 20E7     		b	.L755
 1853              	.L303:
 1854 0ab2 2846     		mov	r0, r5
 1855 0ab4 FFF7FEFF 		bl	_ZN6GCodes15DoEmergencyStopEv
 1856 0ab8 0027     		movs	r7, #0
 1857 0aba A368     		ldr	r3, [r4, #8]
 1858 0abc 1AE7     		b	.L755
 1859              	.L305:
 1860 0abe 2046     		mov	r0, r4
 1861 0ac0 5021     		movs	r1, #80
 1862 0ac2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1863 0ac6 0746     		mov	r7, r0
 1864 0ac8 0028     		cmp	r0, #0
 1865 0aca 02F04982 		beq	.L306
 1866 0ace 2046     		mov	r0, r4
 1867 0ad0 2F68     		ldr	r7, [r5]
 1868 0ad2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1869 0ad6 C1B2     		uxtb	r1, r0
 1870 0ad8 3846     		mov	r0, r7
 1871 0ada FFF7FEFF 		bl	_ZN8Platform12SetBoardTypeE9BoardType
 1872 0ade 0027     		movs	r7, #0
 1873 0ae0 A368     		ldr	r3, [r4, #8]
 1874 0ae2 07E7     		b	.L755
 1875              	.L307:
 1876 0ae4 2046     		mov	r0, r4
 1877 0ae6 5021     		movs	r1, #80
 1878 0ae8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1879 0aec 0028     		cmp	r0, #0
 1880 0aee 02F07F81 		beq	.L925
 1881 0af2 2046     		mov	r0, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 34


 1882 0af4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1883 0af8 95F87E33 		ldrb	r3, [r5, #894]	@ zero_extendqisi2
 1884 0afc D4F88810 		ldr	r1, [r4, #136]
 1885 0b00 002B     		cmp	r3, #0
 1886 0b02 03F08F86 		beq	.L1466
 1887              	.L309:
 1888 0b06 0127     		movs	r7, #1
 1889              	.L308:
 1890 0b08 2046     		mov	r0, r4
 1891 0b0a 4821     		movs	r1, #72
 1892 0b0c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1893 0b10 0028     		cmp	r0, #0
 1894 0b12 01F03A87 		beq	.L311
 1895 0b16 0DF15008 		add	r8, sp, #80
 1896 0b1a 0723     		movs	r3, #7
 1897 0b1c 4246     		mov	r2, r8
 1898 0b1e 2046     		mov	r0, r4
 1899 0b20 1AA9     		add	r1, sp, #104
 1900 0b22 C8F80030 		str	r3, [r8]
 1901 0b26 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 1902 0b2a 95F87E33 		ldrb	r3, [r5, #894]	@ zero_extendqisi2
 1903 0b2e 002B     		cmp	r3, #0
 1904 0b30 42F01383 		bne	.L315
 1905 0b34 D8F80020 		ldr	r2, [r8]
 1906 0b38 002A     		cmp	r2, #0
 1907 0b3a 02F00E83 		beq	.L315
 1908 0b3e DFF85CA0 		ldr	r10, .L1608+12
 1909 0b42 9946     		mov	r9, r3
 1910 0b44 0DF1640B 		add	fp, sp, #100
 1911 0b48 04E0     		b	.L317
 1912              	.L316:
 1913 0b4a D8F80030 		ldr	r3, [r8]
 1914 0b4e 4B45     		cmp	r3, r9
 1915 0b50 42F20383 		bls	.L315
 1916              	.L317:
 1917 0b54 5BF8041F 		ldr	r1, [fp, #4]!
 1918 0b58 DAF80C00 		ldr	r0, [r10, #12]
 1919 0b5c 49B2     		sxtb	r1, r1
 1920 0b5e 0122     		movs	r2, #1
 1921 0b60 09F10109 		add	r9, r9, #1
 1922 0b64 FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
 1923 0b68 0028     		cmp	r0, #0
 1924 0b6a EED1     		bne	.L316
 1925 0b6c 0746     		mov	r7, r0
 1926              	.L1412:
 1927 0b6e 2146     		mov	r1, r4
 1928 0b70 3246     		mov	r2, r6
 1929 0b72 2846     		mov	r0, r5
 1930 0b74 FFF7FEFF 		bl	_ZNK6GCodes14CheckReportDueER11GCodeBufferR9StringRef
 1931 0b78 0123     		movs	r3, #1
 1932 0b7a 85F87D33 		strb	r3, [r5, #893]
 1933 0b7e 7BE6     		b	.L1404
 1934              	.L304:
 1935 0b80 2846     		mov	r0, r5
 1936 0b82 3146     		mov	r1, r6
 1937 0b84 FFF7FEFF 		bl	_ZNK6GCodes21GetCurrentCoordinatesER9StringRef
 1938 0b88 0027     		movs	r7, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 35


 1939 0b8a A368     		ldr	r3, [r4, #8]
 1940 0b8c B2E6     		b	.L755
 1941              	.L1609:
 1942 0b8e 00BF     		.align	2
 1943              	.L1608:
 1944 0b90 00000000 		.word	_ZN6GCodes11axisLettersE
 1945 0b94 AC0D0000 		.word	.LC127
 1946 0b98 00007F43 		.word	1132396544
 1947 0b9c 00000000 		.word	reprap
 1948              	.L768:
 1949 0ba0 2046     		mov	r0, r4
 1950 0ba2 5021     		movs	r1, #80
 1951 0ba4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1952 0ba8 50B1     		cbz	r0, .L769
 1953 0baa 2046     		mov	r0, r4
 1954 0bac FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1955 0bb0 5321     		movs	r1, #83
 1956 0bb2 0746     		mov	r7, r0
 1957 0bb4 2046     		mov	r0, r4
 1958 0bb6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1959 0bba 0028     		cmp	r0, #0
 1960 0bbc 43F05686 		bne	.L1467
 1961              	.L769:
 1962 0bc0 B04B     		ldr	r3, .L1610
 1963 0bc2 3146     		mov	r1, r6
 1964 0bc4 5868     		ldr	r0, [r3, #4]
 1965 0bc6 FFF7FEFF 		bl	_ZNK7Network15ReportProtocolsER9StringRef
 1966 0bca 0027     		movs	r7, #0
 1967 0bcc A368     		ldr	r3, [r4, #8]
 1968 0bce 91E6     		b	.L755
 1969              	.L794:
 1970 0bd0 2846     		mov	r0, r5
 1971 0bd2 2146     		mov	r1, r4
 1972 0bd4 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 1973 0bd8 0028     		cmp	r0, #0
 1974 0bda 42F03982 		bne	.L1468
 1975              	.L546:
 1976 0bde 0027     		movs	r7, #0
 1977 0be0 4AE6     		b	.L1404
 1978              	.L688:
 1979 0be2 2046     		mov	r0, r4
 1980 0be4 5321     		movs	r1, #83
 1981 0be6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1982 0bea 0028     		cmp	r0, #0
 1983 0bec 42F07685 		bne	.L689
 1984 0bf0 0746     		mov	r7, r0
 1985 0bf2 A368     		ldr	r3, [r4, #8]
 1986 0bf4 7EE6     		b	.L755
 1987              	.L703:
 1988 0bf6 D5F88431 		ldr	r3, [r5, #388]
 1989 0bfa 0DF1680A 		add	r10, sp, #104
 1990 0bfe 4FF00008 		mov	r8, #0
 1991 0c02 8AF80080 		strb	r8, [r10]
 1992 0c06 002B     		cmp	r3, #0
 1993 0c08 03F02D80 		beq	.L709
 1994 0c0c 9E4F     		ldr	r7, .L1610+4
 1995 0c0e 05F5C679 		add	r9, r5, #396
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 36


 1996              	.L708:
 1997 0c12 4A46     		mov	r2, r9
 1998 0c14 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 1999 0c18 2046     		mov	r0, r4
 2000 0c1a 5346     		mov	r3, r10
 2001 0c1c FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 2002 0c20 D5F88421 		ldr	r2, [r5, #388]
 2003 0c24 08F10108 		add	r8, r8, #1
 2004 0c28 4245     		cmp	r2, r8
 2005 0c2a 09F10409 		add	r9, r9, #4
 2006 0c2e F0D8     		bhi	.L708
 2007 0c30 9AF80030 		ldrb	r3, [r10]	@ zero_extendqisi2
 2008 0c34 002B     		cmp	r3, #0
 2009 0c36 03F01680 		beq	.L709
 2010              	.L706:
 2011 0c3a A368     		ldr	r3, [r4, #8]
 2012 0c3c 0027     		movs	r7, #0
 2013 0c3e 59E6     		b	.L755
 2014              	.L357:
 2015 0c40 2046     		mov	r0, r4
 2016 0c42 4821     		movs	r1, #72
 2017 0c44 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2018 0c48 0028     		cmp	r0, #0
 2019 0c4a 42F02287 		bne	.L1469
 2020 0c4e 4FF00108 		mov	r8, #1
 2021              	.L358:
 2022 0c52 2046     		mov	r0, r4
 2023 0c54 5321     		movs	r1, #83
 2024 0c56 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2025 0c5a 0746     		mov	r7, r0
 2026 0c5c 0028     		cmp	r0, #0
 2027 0c5e 03F0DF80 		beq	.L359
 2028 0c62 2046     		mov	r0, r4
 2029 0c64 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2030 0c68 8849     		ldr	r1, .L1610+8
 2031 0c6a 0746     		mov	r7, r0
 2032 0c6c FFF7FEFF 		bl	__aeabi_fcmpgt
 2033 0c70 30B1     		cbz	r0, .L360
 2034 0c72 3846     		mov	r0, r7
 2035 0c74 8649     		ldr	r1, .L1610+12
 2036 0c76 FFF7FEFF 		bl	__aeabi_fcmplt
 2037 0c7a 0028     		cmp	r0, #0
 2038 0c7c 44F07D80 		bne	.L1470
 2039              	.L360:
 2040 0c80 3046     		mov	r0, r6
 2041 0c82 8449     		ldr	r1, .L1610+16
 2042 0c84 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 2043 0c88 0127     		movs	r7, #1
 2044 0c8a A368     		ldr	r3, [r4, #8]
 2045 0c8c 32E6     		b	.L755
 2046              	.L363:
 2047 0c8e 7D4A     		ldr	r2, .L1610
 2048 0c90 D068     		ldr	r0, [r2, #12]
 2049 0c92 90F92A10 		ldrsb	r1, [r0, #42]
 2050 0c96 0029     		cmp	r1, #0
 2051 0c98 C2F2B481 		blt	.L928
 2052 0c9c FFF7FEFF 		bl	_ZN4Heat7StandbyEa
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 37


 2053 0ca0 0027     		movs	r7, #0
 2054 0ca2 A368     		ldr	r3, [r4, #8]
 2055 0ca4 26E6     		b	.L755
 2056              	.L197:
 2057 0ca6 774B     		ldr	r3, .L1610
 2058 0ca8 DB69     		ldr	r3, [r3, #28]
 2059 0caa 1F7C     		ldrb	r7, [r3, #16]	@ zero_extendqisi2
 2060 0cac 002F     		cmp	r7, #0
 2061 0cae 02F0C380 		beq	.L198
 2062 0cb2 2B6C     		ldr	r3, [r5, #64]
 2063 0cb4 0027     		movs	r7, #0
 2064 0cb6 1868     		ldr	r0, [r3]
 2065 0cb8 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 2066 0cbc 8046     		mov	r8, r0
 2067 0cbe 8068     		ldr	r0, [r0, #8]
 2068 0cc0 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 2069 0cc4 8146     		mov	r9, r0
 2070 0cc6 D8F80800 		ldr	r0, [r8, #8]
 2071 0cca FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 2072 0cce 4A46     		mov	r2, r9
 2073 0cd0 0346     		mov	r3, r0
 2074 0cd2 7149     		ldr	r1, .L1610+20
 2075 0cd4 3046     		mov	r0, r6
 2076 0cd6 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 2077 0cda A368     		ldr	r3, [r4, #8]
 2078 0cdc 0AE6     		b	.L755
 2079              	.L323:
 2080 0cde 0121     		movs	r1, #1
 2081 0ce0 2046     		mov	r0, r4
 2082 0ce2 FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringEb
 2083 0ce6 6D4B     		ldr	r3, .L1610+24
 2084 0ce8 0027     		movs	r7, #0
 2085 0cea B842     		cmp	r0, r7
 2086 0cec 14BF     		ite	ne
 2087 0cee 0146     		movne	r1, r0
 2088 0cf0 1946     		moveq	r1, r3
 2089 0cf2 6448     		ldr	r0, .L1610
 2090 0cf4 FFF7FEFF 		bl	_ZN6RepRap10SetMessageEPKc
 2091 0cf8 A368     		ldr	r3, [r4, #8]
 2092 0cfa FBE5     		b	.L755
 2093              	.L300:
 2094 0cfc 2046     		mov	r0, r4
 2095 0cfe 5321     		movs	r1, #83
 2096 0d00 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2097 0d04 0746     		mov	r7, r0
 2098 0d06 0028     		cmp	r0, #0
 2099 0d08 02F07681 		beq	.L301
 2100 0d0c 2046     		mov	r0, r4
 2101 0d0e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2102 0d12 5021     		movs	r1, #80
 2103 0d14 10F10008 		adds	r8, r0, #0
 2104 0d18 2046     		mov	r0, r4
 2105 0d1a 18BF     		it	ne
 2106 0d1c 4FF00108 		movne	r8, #1
 2107 0d20 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2108 0d24 0746     		mov	r7, r0
 2109 0d26 0028     		cmp	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 38


 2110 0d28 03F0EA80 		beq	.L302
 2111 0d2c 2046     		mov	r0, r4
 2112 0d2e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2113 0d32 4246     		mov	r2, r8
 2114 0d34 C1B2     		uxtb	r1, r0
 2115 0d36 5348     		ldr	r0, .L1610
 2116 0d38 FFF7FEFF 		bl	_ZN6RepRap8SetDebugE6Moduleb
 2117 0d3c 0027     		movs	r7, #0
 2118 0d3e A368     		ldr	r3, [r4, #8]
 2119 0d40 D8E5     		b	.L755
 2120              	.L553:
 2121 0d42 2046     		mov	r0, r4
 2122 0d44 5021     		movs	r1, #80
 2123 0d46 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2124 0d4a 0746     		mov	r7, r0
 2125 0d4c 0028     		cmp	r0, #0
 2126 0d4e 02F04480 		beq	.L554
 2127 0d52 2046     		mov	r0, r4
 2128 0d54 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 2129 0d58 0146     		mov	r1, r0
 2130 0d5a 4A48     		ldr	r0, .L1610
 2131 0d5c FFF7FEFF 		bl	_ZN6RepRap7SetNameEPKc
 2132 0d60 0027     		movs	r7, #0
 2133 0d62 A368     		ldr	r3, [r4, #8]
 2134 0d64 C6E5     		b	.L755
 2135              	.L555:
 2136 0d66 2046     		mov	r0, r4
 2137 0d68 5021     		movs	r1, #80
 2138 0d6a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2139 0d6e 0028     		cmp	r0, #0
 2140 0d70 42F06E83 		bne	.L1471
 2141              	.L556:
 2142 0d74 A368     		ldr	r3, [r4, #8]
 2143 0d76 0027     		movs	r7, #0
 2144 0d78 BCE5     		b	.L755
 2145              	.L219:
 2146 0d7a 2046     		mov	r0, r4
 2147 0d7c 5021     		movs	r1, #80
 2148 0d7e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2149 0d82 0028     		cmp	r0, #0
 2150 0d84 42F03B83 		bne	.L220
 2151              	.L253:
 2152 0d88 A368     		ldr	r3, [r4, #8]
 2153 0d8a 0027     		movs	r7, #0
 2154 0d8c B2E5     		b	.L755
 2155              	.L488:
 2156 0d8e 3D4A     		ldr	r2, .L1610
 2157 0d90 D268     		ldr	r2, [r2, #12]
 2158 0d92 92F92A20 		ldrsb	r2, [r2, #42]
 2159 0d96 002A     		cmp	r2, #0
 2160 0d98 C2F23A81 		blt	.L952
 2161 0d9c 3346     		mov	r3, r6
 2162 0d9e 2846     		mov	r0, r5
 2163 0da0 2146     		mov	r1, r4
 2164 0da2 FFF7FEFF 		bl	_ZN6GCodes16SetPidParametersER11GCodeBufferiR9StringRef
 2165 0da6 0027     		movs	r7, #0
 2166 0da8 A368     		ldr	r3, [r4, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 39


 2167 0daa A3E5     		b	.L755
 2168              	.L331:
 2169 0dac 2046     		mov	r0, r4
 2170 0dae 5021     		movs	r1, #80
 2171 0db0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2172 0db4 0028     		cmp	r0, #0
 2173 0db6 42F00984 		bne	.L332
 2174              	.L333:
 2175 0dba 3248     		ldr	r0, .L1610
 2176 0dbc 94F88C10 		ldrb	r1, [r4, #140]	@ zero_extendqisi2
 2177 0dc0 FFF7FEFF 		bl	_ZN6RepRap11DiagnosticsE11MessageType
 2178 0dc4 0027     		movs	r7, #0
 2179 0dc6 A368     		ldr	r3, [r4, #8]
 2180 0dc8 94E5     		b	.L755
 2181              	.L634:
 2182 0dca 2046     		mov	r0, r4
 2183 0dcc 5021     		movs	r1, #80
 2184 0dce FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2185 0dd2 0028     		cmp	r0, #0
 2186 0dd4 CED0     		beq	.L556
 2187 0dd6 2046     		mov	r0, r4
 2188 0dd8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 2189 0ddc 0146     		mov	r1, r0
 2190 0dde 2948     		ldr	r0, .L1610
 2191 0de0 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 2192 0de4 0746     		mov	r7, r0
 2193 0de6 0028     		cmp	r0, #0
 2194 0de8 03F0B387 		beq	.L1472
 2195 0dec 2046     		mov	r0, r4
 2196 0dee 5321     		movs	r1, #83
 2197 0df0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2198 0df4 8646     		mov	lr, r0
 2199 0df6 0028     		cmp	r0, #0
 2200 0df8 44F01B80 		bne	.L1473
 2201 0dfc 97F8B800 		ldrb	r0, [r7, #184]	@ zero_extendqisi2
 2202 0e00 2749     		ldr	r1, .L1610+28
 2203 0e02 284B     		ldr	r3, .L1610+32
 2204 0e04 7A68     		ldr	r2, [r7, #4]
 2205 0e06 0028     		cmp	r0, #0
 2206 0e08 18BF     		it	ne
 2207 0e0a 0B46     		movne	r3, r1
 2208 0e0c 3046     		mov	r0, r6
 2209 0e0e 2649     		ldr	r1, .L1610+36
 2210 0e10 7746     		mov	r7, lr
 2211 0e12 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 2212 0e16 A368     		ldr	r3, [r4, #8]
 2213 0e18 6CE5     		b	.L755
 2214              	.L423:
 2215 0e1a 2046     		mov	r0, r4
 2216 0e1c 5321     		movs	r1, #83
 2217 0e1e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2218 0e22 0028     		cmp	r0, #0
 2219 0e24 42F08B86 		bne	.L1474
 2220 0e28 8246     		mov	r10, r0
 2221              	.L424:
 2222 0e2a D5F88431 		ldr	r3, [r5, #388]
 2223 0e2e 002B     		cmp	r3, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 40


 2224 0e30 02F05386 		beq	.L432
 2225 0e34 4FF00008 		mov	r8, #0
 2226 0e38 134F     		ldr	r7, .L1610+4
 2227 0e3a C146     		mov	r9, r8
 2228 0e3c 06E0     		b	.L431
 2229              	.L428:
 2230 0e3e D5F88431 		ldr	r3, [r5, #388]
 2231 0e42 08F10108 		add	r8, r8, #1
 2232 0e46 4345     		cmp	r3, r8
 2233 0e48 41F26B85 		bls	.L1475
 2234              	.L431:
 2235 0e4c 2046     		mov	r0, r4
 2236 0e4e 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 2237 0e52 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2238 0e56 0028     		cmp	r0, #0
 2239 0e58 F1D0     		beq	.L428
 2240 0e5a 2046     		mov	r0, r4
 2241 0e5c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2242 0e60 D5F83012 		ldr	r1, [r5, #560]	@ float
 2243 0e64 FFF7FEFF 		bl	__aeabi_fmul
 2244 0e68 4FF00109 		mov	r9, #1
 2245 0e6c 08F59C71 		add	r1, r8, #312
 2246 0e70 08F59972 		add	r2, r8, #306
 2247 0e74 2B68     		ldr	r3, [r5]
 2248 0e76 BAF1000F 		cmp	r10, #0
 2249 0e7a 01F05A85 		beq	.L429
 2250 0e7e 43F82100 		str	r0, [r3, r1, lsl #2]	@ float
 2251 0e82 DCE7     		b	.L428
 2252              	.L1611:
 2253              		.align	2
 2254              	.L1610:
 2255 0e84 00000000 		.word	reprap
 2256 0e88 00000000 		.word	_ZN6GCodes11axisLettersE
 2257 0e8c 000020C1 		.word	-1054867456
 2258 0e90 0000FA44 		.word	1157234688
 2259 0e94 44070000 		.word	.LC78
 2260 0e98 A4030000 		.word	.LC45
 2261 0e9c A4000000 		.word	.LC9
 2262 0ea0 F0000000 		.word	.LC17
 2263 0ea4 F8000000 		.word	.LC18
 2264 0ea8 440F0000 		.word	.LC138
 2265              	.L837:
 2266 0eac 2846     		mov	r0, r5
 2267 0eae 2146     		mov	r1, r4
 2268 0eb0 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2269 0eb4 0028     		cmp	r0, #0
 2270 0eb6 3FF492AE 		beq	.L546
 2271 0eba AB4B     		ldr	r3, .L1612+8
 2272 0ebc D868     		ldr	r0, [r3, #12]
 2273 0ebe FFF7FEFF 		bl	_ZN4Heat12SwitchOffAllEv
 2274 0ec2 2846     		mov	r0, r5
 2275 0ec4 FFF7FEFF 		bl	_ZN6GCodes13DisableDrivesEv
 2276 0ec8 95F80433 		ldrb	r3, [r5, #772]	@ zero_extendqisi2
 2277 0ecc 002B     		cmp	r3, #0
 2278 0ece 42F0BC87 		bne	.L838
 2279 0ed2 2046     		mov	r0, r4
 2280 0ed4 5321     		movs	r1, #83
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 41


 2281 0ed6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2282 0eda 0028     		cmp	r0, #0
 2283 0edc 43F07687 		bne	.L1476
 2284 0ee0 0123     		movs	r3, #1
 2285 0ee2 85F80433 		strb	r3, [r5, #772]
 2286              	.L849:
 2287 0ee6 2868     		ldr	r0, [r5]
 2288 0ee8 FFF7FEFF 		bl	_ZN8Platform32CheckFirmwareUpdatePrerequisitesEv
 2289 0eec 0028     		cmp	r0, #0
 2290 0eee 42F0AC87 		bne	.L838
 2291 0ef2 85F80403 		strb	r0, [r5, #772]
 2292 0ef6 0746     		mov	r7, r0
 2293 0ef8 A368     		ldr	r3, [r4, #8]
 2294 0efa FBE4     		b	.L755
 2295              	.L804:
 2296 0efc 2868     		ldr	r0, [r5]
 2297 0efe FFF7FEFF 		bl	_ZNK8Platform11GetDateTimeEv
 2298 0f02 1A90     		str	r0, [sp, #104]
 2299 0f04 1AA8     		add	r0, sp, #104
 2300 0f06 FFF7FEFF 		bl	gmtime
 2301 0f0a 5021     		movs	r1, #80
 2302 0f0c 0746     		mov	r7, r0
 2303 0f0e 2046     		mov	r0, r4
 2304 0f10 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2305 0f14 0028     		cmp	r0, #0
 2306 0f16 41F09687 		bne	.L1477
 2307 0f1a 2046     		mov	r0, r4
 2308 0f1c 5321     		movs	r1, #83
 2309 0f1e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2310 0f22 0028     		cmp	r0, #0
 2311 0f24 41F0AC87 		bne	.L902
 2312 0f28 F968     		ldr	r1, [r7, #12]
 2313 0f2a 7A69     		ldr	r2, [r7, #20]
 2314 0f2c 3B69     		ldr	r3, [r7, #16]
 2315 0f2e 0091     		str	r1, [sp]
 2316 0f30 B968     		ldr	r1, [r7, #8]
 2317 0f32 02F26C72 		addw	r2, r2, #1900
 2318 0f36 0191     		str	r1, [sp, #4]
 2319 0f38 7968     		ldr	r1, [r7, #4]
 2320 0f3a 0133     		adds	r3, r3, #1
 2321 0f3c 0291     		str	r1, [sp, #8]
 2322 0f3e 3968     		ldr	r1, [r7]
 2323 0f40 3046     		mov	r0, r6
 2324 0f42 0391     		str	r1, [sp, #12]
 2325 0f44 8949     		ldr	r1, .L1612+12
 2326 0f46 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 2327 0f4a 2868     		ldr	r0, [r5]
 2328 0f4c FFF7FEFF 		bl	_ZNK8Platform13IsDateTimeSetEv
 2329 0f50 0028     		cmp	r0, #0
 2330 0f52 03F06187 		beq	.L1478
 2331              	.L811:
 2332 0f56 A368     		ldr	r3, [r4, #8]
 2333 0f58 0027     		movs	r7, #0
 2334 0f5a CBE4     		b	.L755
 2335              	.L834:
 2336 0f5c 3046     		mov	r0, r6
 2337 0f5e 8449     		ldr	r1, .L1612+16
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 42


 2338 0f60 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 2339 0f64 0027     		movs	r7, #0
 2340 0f66 A368     		ldr	r3, [r4, #8]
 2341 0f68 C4E4     		b	.L755
 2342              	.L329:
 2343 0f6a 2846     		mov	r0, r5
 2344 0f6c 2146     		mov	r1, r4
 2345 0f6e FFF7FEFF 		bl	_ZN6GCodes4PushER11GCodeBuffer
 2346 0f72 0027     		movs	r7, #0
 2347 0f74 A368     		ldr	r3, [r4, #8]
 2348 0f76 BDE4     		b	.L755
 2349              	.L330:
 2350 0f78 2846     		mov	r0, r5
 2351 0f7a 2146     		mov	r1, r4
 2352 0f7c FFF7FEFF 		bl	_ZN6GCodes3PopER11GCodeBuffer
 2353 0f80 0027     		movs	r7, #0
 2354 0f82 A368     		ldr	r3, [r4, #8]
 2355 0f84 B6E4     		b	.L755
 2356              	.L325:
 2357 0f86 3046     		mov	r0, r6
 2358 0f88 7A49     		ldr	r1, .L1612+20
 2359 0f8a FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 2360 0f8e D5F88431 		ldr	r3, [r5, #388]
 2361 0f92 C3B1     		cbz	r3, .L327
 2362 0f94 784F     		ldr	r7, .L1612+24
 2363 0f96 4FF00008 		mov	r8, #0
 2364              	.L328:
 2365 0f9a 4146     		mov	r1, r8
 2366 0f9c 2868     		ldr	r0, [r5]
 2367 0f9e 17F80890 		ldrb	r9, [r7, r8]	@ zero_extendqisi2
 2368 0fa2 FFF7FEFF 		bl	_ZNK8Platform7StoppedEj
 2369 0fa6 0146     		mov	r1, r0
 2370 0fa8 2846     		mov	r0, r5
 2371 0faa FFF7FEFF 		bl	_ZN6GCodes22TranslateEndStopResultE10EndStopHit
 2372 0fae 4A46     		mov	r2, r9
 2373 0fb0 0346     		mov	r3, r0
 2374 0fb2 7249     		ldr	r1, .L1612+28
 2375 0fb4 3046     		mov	r0, r6
 2376 0fb6 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 2377 0fba D5F88431 		ldr	r3, [r5, #388]
 2378 0fbe 08F10108 		add	r8, r8, #1
 2379 0fc2 4345     		cmp	r3, r8
 2380 0fc4 E9D8     		bhi	.L328
 2381              	.L327:
 2382 0fc6 2868     		ldr	r0, [r5]
 2383 0fc8 FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 2384 0fcc 0146     		mov	r1, r0
 2385 0fce 2846     		mov	r0, r5
 2386 0fd0 FFF7FEFF 		bl	_ZN6GCodes22TranslateEndStopResultE10EndStopHit
 2387 0fd4 6A49     		ldr	r1, .L1612+32
 2388 0fd6 0246     		mov	r2, r0
 2389 0fd8 3046     		mov	r0, r6
 2390 0fda FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 2391 0fde 0027     		movs	r7, #0
 2392 0fe0 A368     		ldr	r3, [r4, #8]
 2393 0fe2 87E4     		b	.L755
 2394              	.L337:
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 43


 2395 0fe4 2046     		mov	r0, r4
 2396 0fe6 4821     		movs	r1, #72
 2397 0fe8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2398 0fec 0028     		cmp	r0, #0
 2399 0fee 42F0D885 		bne	.L1479
 2400 0ff2 DFF874A1 		ldr	r10, .L1612+8
 2401 0ff6 DAF80C30 		ldr	r3, [r10, #12]
 2402 0ffa 93F92A80 		ldrsb	r8, [r3, #42]
 2403 0ffe B8F1000F 		cmp	r8, #0
 2404 1002 C3F26E85 		blt	.L1480
 2405              	.L341:
 2406 1006 2046     		mov	r0, r4
 2407 1008 5321     		movs	r1, #83
 2408 100a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2409 100e 0028     		cmp	r0, #0
 2410 1010 42F0CC87 		bne	.L1481
 2411              	.L342:
 2412 1014 2046     		mov	r0, r4
 2413 1016 5221     		movs	r1, #82
 2414 1018 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2415 101c 0028     		cmp	r0, #0
 2416 101e 42F0B787 		bne	.L345
 2417 1022 0746     		mov	r7, r0
 2418 1024 A368     		ldr	r3, [r4, #8]
 2419 1026 65E4     		b	.L755
 2420              	.L346:
 2421 1028 2046     		mov	r0, r4
 2422 102a 4821     		movs	r1, #72
 2423 102c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2424 1030 0746     		mov	r7, r0
 2425 1032 2046     		mov	r0, r4
 2426 1034 002F     		cmp	r7, #0
 2427 1036 42F06B84 		bne	.L1482
 2428 103a 5321     		movs	r1, #83
 2429 103c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2430 1040 8146     		mov	r9, r0
 2431 1042 0028     		cmp	r0, #0
 2432 1044 01F03987 		beq	.L1483
 2433              	.L889:
 2434 1048 DFF81C91 		ldr	r9, .L1612+8
 2435 104c D9F80C30 		ldr	r3, [r9, #12]
 2436 1050 93F92B80 		ldrsb	r8, [r3, #43]
 2437 1054 B8F1FF3F 		cmp	r8, #-1
 2438 1058 03F0BC82 		beq	.L352
 2439 105c 2046     		mov	r0, r4
 2440 105e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2441 1062 4849     		ldr	r1, .L1612+36
 2442 1064 8246     		mov	r10, r0
 2443 1066 FFF7FEFF 		bl	__aeabi_fcmplt
 2444 106a 0028     		cmp	r0, #0
 2445 106c 03F0AA81 		beq	.L1411
 2446 1070 D9F80C00 		ldr	r0, [r9, #12]
 2447 1074 4146     		mov	r1, r8
 2448 1076 FFF7FEFF 		bl	_ZN4Heat9SwitchOffEa
 2449              	.L355:
 2450 107a A368     		ldr	r3, [r4, #8]
 2451 107c 3AE4     		b	.L755
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 44


 2452              	.L334:
 2453 107e 2046     		mov	r0, r4
 2454 1080 5321     		movs	r1, #83
 2455 1082 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2456 1086 0028     		cmp	r0, #0
 2457 1088 01F02F86 		beq	.L335
 2458 108c 2046     		mov	r0, r4
 2459 108e D5F80080 		ldr	r8, [r5]
 2460 1092 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2461 1096 FFF7FEFF 		bl	__aeabi_f2d
 2462 109a 31A3     		adr	r3, .L1612
 2463 109c D3E90023 		ldrd	r2, [r3]
 2464 10a0 FFF7FEFF 		bl	__aeabi_dmul
 2465 10a4 FFF7FEFF 		bl	__aeabi_d2f
 2466 10a8 0021     		movs	r1, #0
 2467 10aa 8146     		mov	r9, r0
 2468 10ac FFF7FEFF 		bl	__aeabi_fcmpgt
 2469 10b0 0028     		cmp	r0, #0
 2470 10b2 03F0D183 		beq	.L1484
 2471 10b6 4846     		mov	r0, r9
 2472 10b8 FFF7FEFF 		bl	__aeabi_f2d
 2473 10bc 324B     		ldr	r3, .L1612+40
 2474 10be 0022     		movs	r2, #0
 2475 10c0 FFF7FEFF 		bl	__aeabi_dmul
 2476 10c4 FFF7FEFF 		bl	__aeabi_d2uiz
 2477 10c8 C8F84006 		str	r0, [r8, #1600]
 2478 10cc A368     		ldr	r3, [r4, #8]
 2479 10ce 0027     		movs	r7, #0
 2480 10d0 10E4     		b	.L755
 2481              	.L255:
 2482 10d2 2846     		mov	r0, r5
 2483 10d4 2146     		mov	r1, r4
 2484 10d6 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 2485 10da 0028     		cmp	r0, #0
 2486 10dc 3FF47FAD 		beq	.L546
 2487 10e0 2846     		mov	r0, r5
 2488 10e2 2146     		mov	r1, r4
 2489 10e4 0022     		movs	r2, #0
 2490 10e6 FFF7FEFF 		bl	_ZN6GCodes15RetractFilamentER11GCodeBufferb
 2491 10ea 0027     		movs	r7, #0
 2492 10ec 8146     		mov	r9, r0
 2493              	.L172:
 2494 10ee B9F1000F 		cmp	r9, #0
 2495 10f2 3FF405AC 		beq	.L858
 2496              	.L1430:
 2497 10f6 A368     		ldr	r3, [r4, #8]
 2498 10f8 FFF7FCBB 		b	.L755
 2499              	.L855:
 2500 10fc 2846     		mov	r0, r5
 2501 10fe 2146     		mov	r1, r4
 2502 1100 4FF4FA72 		mov	r2, #500
 2503 1104 FFF7FEFF 		bl	_ZN6GCodes11DoDwellTimeER11GCodeBufferm
 2504 1108 0028     		cmp	r0, #0
 2505 110a 42F06C85 		bne	.L1485
 2506              	.L207:
 2507 110e 4FF00009 		mov	r9, #0
 2508 1112 FFF7F5BB 		b	.L858
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 45


 2509              	.L599:
 2510 1116 2046     		mov	r0, r4
 2511 1118 5021     		movs	r1, #80
 2512 111a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2513 111e 0028     		cmp	r0, #0
 2514 1120 42F0CA85 		bne	.L1486
 2515 1124 194F     		ldr	r7, .L1612+44
 2516              	.L600:
 2517 1126 1A4A     		ldr	r2, .L1612+48
 2518 1128 2846     		mov	r0, r5
 2519 112a 2146     		mov	r1, r4
 2520 112c 3B46     		mov	r3, r7
 2521 112e FFF7FEFF 		bl	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_
 2522 1132 3A46     		mov	r2, r7
 2523 1134 0028     		cmp	r0, #0
 2524 1136 01F03E86 		beq	.L601
 2525 113a 3046     		mov	r0, r6
 2526 113c 1549     		ldr	r1, .L1612+52
 2527 113e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 2528 1142 0027     		movs	r7, #0
 2529 1144 A368     		ldr	r3, [r4, #8]
 2530 1146 FFF7D5BB 		b	.L755
 2531              	.L862:
 2532 114a D5F88431 		ldr	r3, [r5, #388]
 2533 114e 002B     		cmp	r3, #0
 2534 1150 02F0C880 		beq	.L869
 2535 1154 4FF00008 		mov	r8, #0
 2536 1158 C146     		mov	r9, r8
 2537 115a 074F     		ldr	r7, .L1612+24
 2538 115c B246     		mov	r10, r6
 2539 115e 22E0     		b	.L870
 2540              	.L1613:
 2541              		.align	3
 2542              	.L1612:
 2543 1160 FCA9F1D2 		.word	-755914244
 2544 1164 4D62503F 		.word	1062232653
 2545 1168 00000000 		.word	reprap
 2546 116c 2C140000 		.word	.LC173
 2547 1170 B0140000 		.word	.LC178
 2548 1174 18060000 		.word	.LC67
 2549 1178 00000000 		.word	_ZN6GCodes11axisLettersE
 2550 117c 30060000 		.word	.LC69
 2551 1180 24060000 		.word	.LC68
 2552 1184 008088C3 		.word	-1014464512
 2553 1188 00408F40 		.word	1083129856
 2554 118c 04010000 		.word	.LC19
 2555 1190 380C0000 		.word	.LC112
 2556 1194 D4030000 		.word	.LC47
 2557              	.L386:
 2558 1198 D5F88431 		ldr	r3, [r5, #388]
 2559 119c 08F10108 		add	r8, r8, #1
 2560 11a0 4345     		cmp	r3, r8
 2561 11a2 41F2D283 		bls	.L1487
 2562              	.L870:
 2563 11a6 2046     		mov	r0, r4
 2564 11a8 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 2565 11ac FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 46


 2566 11b0 0028     		cmp	r0, #0
 2567 11b2 F1D0     		beq	.L386
 2568 11b4 2046     		mov	r0, r4
 2569 11b6 2E68     		ldr	r6, [r5]
 2570 11b8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2571 11bc D5F83012 		ldr	r1, [r5, #560]	@ float
 2572 11c0 FFF7FEFF 		bl	__aeabi_fmul
 2573 11c4 B649     		ldr	r1, .L1614
 2574 11c6 FFF7FEFF 		bl	__aeabi_fmul
 2575 11ca 08F13A03 		add	r3, r8, #58
 2576 11ce 46F82300 		str	r0, [r6, r3, lsl #2]	@ float
 2577 11d2 4FF00109 		mov	r9, #1
 2578 11d6 DFE7     		b	.L386
 2579              	.L400:
 2580 11d8 2046     		mov	r0, r4
 2581 11da 5021     		movs	r1, #80
 2582 11dc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2583 11e0 0028     		cmp	r0, #0
 2584 11e2 42F0E381 		bne	.L1488
 2585 11e6 2046     		mov	r0, r4
 2586 11e8 5421     		movs	r1, #84
 2587 11ea FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2588 11ee 0028     		cmp	r0, #0
 2589 11f0 42F0BD81 		bne	.L894
 2590 11f4 D5F800A0 		ldr	r10, [r5]
 2591 11f8 0746     		mov	r7, r0
 2592 11fa DAF83001 		ldr	r0, [r10, #304]	@ float
 2593 11fe FFF7FEFF 		bl	__aeabi_f2d
 2594 1202 8046     		mov	r8, r0
 2595 1204 DAF83401 		ldr	r0, [r10, #308]	@ float
 2596 1208 8946     		mov	r9, r1
 2597 120a FFF7FEFF 		bl	__aeabi_f2d
 2598 120e 4B46     		mov	r3, r9
 2599 1210 CDE90001 		strd	r0, [sp]
 2600 1214 4246     		mov	r2, r8
 2601 1216 3046     		mov	r0, r6
 2602 1218 A249     		ldr	r1, .L1614+4
 2603 121a FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 2604 121e A368     		ldr	r3, [r4, #8]
 2605 1220 FFF768BB 		b	.L755
 2606              	.L531:
 2607 1224 A04B     		ldr	r3, .L1614+8
 2608 1226 0027     		movs	r7, #0
 2609 1228 1A68     		ldr	r2, [r3]
 2610 122a 2846     		mov	r0, r5
 2611 122c 3B46     		mov	r3, r7
 2612 122e 0097     		str	r7, [sp]
 2613 1230 2146     		mov	r1, r4
 2614 1232 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 2615 1236 A368     		ldr	r3, [r4, #8]
 2616 1238 FFF75CBB 		b	.L755
 2617              	.L532:
 2618 123c 2046     		mov	r0, r4
 2619 123e 4E21     		movs	r1, #78
 2620 1240 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2621 1244 0028     		cmp	r0, #0
 2622 1246 42F01484 		bne	.L1489
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 47


 2623 124a 2046     		mov	r0, r4
 2624 124c 4421     		movs	r1, #68
 2625 124e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2626 1252 0028     		cmp	r0, #0
 2627 1254 42F00384 		bne	.L897
 2628 1258 D5F800A0 		ldr	r10, [r5]
 2629 125c 0746     		mov	r7, r0
 2630 125e DAF81407 		ldr	r0, [r10, #1812]	@ float
 2631 1262 FFF7FEFF 		bl	__aeabi_f2d
 2632 1266 8046     		mov	r8, r0
 2633 1268 DAF81807 		ldr	r0, [r10, #1816]	@ float
 2634 126c 8946     		mov	r9, r1
 2635 126e FFF7FEFF 		bl	__aeabi_f2d
 2636 1272 4B46     		mov	r3, r9
 2637 1274 CDE90001 		strd	r0, [sp]
 2638 1278 4246     		mov	r2, r8
 2639 127a 3046     		mov	r0, r6
 2640 127c 8B49     		ldr	r1, .L1614+12
 2641 127e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 2642 1282 A368     		ldr	r3, [r4, #8]
 2643 1284 FFF736BB 		b	.L755
 2644              	.L231:
 2645 1288 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2646 128a 12F00107 		ands	r7, r2, #1
 2647 128e 41F0B285 		bne	.L919
 2648 1292 0023     		movs	r3, #0
 2649 1294 C5F8A431 		str	r3, [r5, #420]	@ float
 2650 1298 C5F8A831 		str	r3, [r5, #424]	@ float
 2651 129c C5F8AC31 		str	r3, [r5, #428]	@ float
 2652 12a0 C5F8B031 		str	r3, [r5, #432]	@ float
 2653 12a4 C5F8B431 		str	r3, [r5, #436]	@ float
 2654 12a8 C5F8B831 		str	r3, [r5, #440]	@ float
 2655 12ac A368     		ldr	r3, [r4, #8]
 2656 12ae 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2657 12b0 42F00102 		orr	r2, r2, #1
 2658 12b4 5A74     		strb	r2, [r3, #17]
 2659 12b6 A368     		ldr	r3, [r4, #8]
 2660 12b8 FFF71CBB 		b	.L755
 2661              	.L232:
 2662 12bc 7C48     		ldr	r0, .L1614+16
 2663 12be 0DF1680A 		add	r10, sp, #104
 2664 12c2 8768     		ldr	r7, [r0, #8]
 2665 12c4 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 2666 12c8 5146     		mov	r1, r10
 2667 12ca 0346     		mov	r3, r0
 2668 12cc 0022     		movs	r2, #0
 2669 12ce 3846     		mov	r0, r7
 2670 12d0 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhm
 2671 12d4 D5F88431 		ldr	r3, [r5, #388]
 2672 12d8 002B     		cmp	r3, #0
 2673 12da 01F07B87 		beq	.L233
 2674 12de 4FF00008 		mov	r8, #0
 2675 12e2 744F     		ldr	r7, .L1614+20
 2676 12e4 C146     		mov	r9, r8
 2677 12e6 B346     		mov	fp, r6
 2678 12e8 06E0     		b	.L237
 2679              	.L234:
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 48


 2680 12ea D5F88431 		ldr	r3, [r5, #388]
 2681 12ee 08F10108 		add	r8, r8, #1
 2682 12f2 4345     		cmp	r3, r8
 2683 12f4 41F2DC83 		bls	.L1490
 2684              	.L237:
 2685 12f8 2046     		mov	r0, r4
 2686 12fa 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 2687 12fe FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2688 1302 0028     		cmp	r0, #0
 2689 1304 F1D0     		beq	.L234
 2690 1306 2846     		mov	r0, r5
 2691 1308 2146     		mov	r1, r4
 2692 130a FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2693 130e 0028     		cmp	r0, #0
 2694 1310 3FF465AC 		beq	.L546
 2695 1314 2046     		mov	r0, r4
 2696 1316 2E68     		ldr	r6, [r5]
 2697 1318 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2698 131c 08F14E03 		add	r3, r8, #78
 2699 1320 46F82300 		str	r0, [r6, r3, lsl #2]	@ float
 2700 1324 4FF00109 		mov	r9, #1
 2701 1328 DFE7     		b	.L234
 2702              	.L711:
 2703 132a 2046     		mov	r0, r4
 2704 132c 5421     		movs	r1, #84
 2705 132e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2706 1332 0028     		cmp	r0, #0
 2707 1334 42F03182 		bne	.L712
 2708 1338 0746     		mov	r7, r0
 2709 133a A368     		ldr	r3, [r4, #8]
 2710 133c FFF7DABA 		b	.L755
 2711              	.L735:
 2712 1340 2846     		mov	r0, r5
 2713 1342 2146     		mov	r1, r4
 2714 1344 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2715 1348 0028     		cmp	r0, #0
 2716 134a 3FF448AC 		beq	.L546
 2717 134e 4FF00008 		mov	r8, #0
 2718 1352 584F     		ldr	r7, .L1614+20
 2719 1354 4FF0000A 		mov	r10, #0
 2720 1358 C146     		mov	r9, r8
 2721 135a C346     		mov	fp, r8
 2722 135c 0D96     		str	r6, [sp, #52]
 2723 135e 05E0     		b	.L749
 2724              	.L736:
 2725 1360 08F10108 		add	r8, r8, #1
 2726 1364 B8F1060F 		cmp	r8, #6
 2727 1368 01F01684 		beq	.L1491
 2728              	.L749:
 2729 136c 2046     		mov	r0, r4
 2730 136e 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 2731 1372 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2732 1376 0028     		cmp	r0, #0
 2733 1378 F2D0     		beq	.L736
 2734 137a 1AAE     		add	r6, sp, #104
 2735 137c 3146     		mov	r1, r6
 2736 137e 0423     		movs	r3, #4
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 49


 2737 1380 2046     		mov	r0, r4
 2738 1382 13AA     		add	r2, sp, #76
 2739 1384 1393     		str	r3, [sp, #76]
 2740 1386 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 2741 138a 1399     		ldr	r1, [sp, #76]
 2742 138c 0DF1500B 		add	fp, sp, #80
 2743 1390 CBF80010 		str	r1, [fp]
 2744 1394 0029     		cmp	r1, #0
 2745 1396 01F02E84 		beq	.L744
 2746 139a 0023     		movs	r3, #0
 2747 139c 9E46     		mov	lr, r3
 2748              	.L742:
 2749 139e 56F82320 		ldr	r2, [r6, r3, lsl #2]
 2750 13a2 0BEB0300 		add	r0, fp, r3
 2751 13a6 082A     		cmp	r2, #8
 2752 13a8 03F10103 		add	r3, r3, #1
 2753 13ac 94BF     		ite	ls
 2754 13ae 0271     		strbls	r2, [r0, #4]
 2755 13b0 4FF0010E 		movhi	lr, #1
 2756 13b4 8B42     		cmp	r3, r1
 2757 13b6 F2D1     		bne	.L742
 2758 13b8 BEF1000F 		cmp	lr, #0
 2759 13bc 01F01B84 		beq	.L744
 2760 13c0 4FF00109 		mov	r9, #1
 2761              	.L743:
 2762 13c4 4FF0010B 		mov	fp, #1
 2763 13c8 CAE7     		b	.L736
 2764              	.L187:
 2765 13ca 2A6C     		ldr	r2, [r5, #64]
 2766 13cc 1268     		ldr	r2, [r2]
 2767 13ce A242     		cmp	r2, r4
 2768 13d0 18BF     		it	ne
 2769 13d2 0027     		movne	r7, #0
 2770 13d4 7FF48EAA 		bne	.L755
 2771 13d8 2846     		mov	r0, r5
 2772 13da 2146     		mov	r1, r4
 2773 13dc FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 2774 13e0 0028     		cmp	r0, #0
 2775 13e2 3FF4FCAB 		beq	.L546
 2776 13e6 2846     		mov	r0, r5
 2777 13e8 2146     		mov	r1, r4
 2778 13ea FFF7FEFF 		bl	_ZN6GCodes7DoPauseER11GCodeBuffer
 2779 13ee 0027     		movs	r7, #0
 2780 13f0 A368     		ldr	r3, [r4, #8]
 2781 13f2 FFF77FBA 		b	.L755
 2782              	.L205:
 2783 13f6 2846     		mov	r0, r5
 2784 13f8 2146     		mov	r1, r4
 2785 13fa FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 2786 13fe 0746     		mov	r7, r0
 2787 1400 0028     		cmp	r0, #0
 2788 1402 3FF4ECAB 		beq	.L546
 2789 1406 0121     		movs	r1, #1
 2790 1408 2046     		mov	r0, r4
 2791 140a FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringEb
 2792 140e 284B     		ldr	r3, .L1614+16
 2793 1410 0146     		mov	r1, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 50


 2794 1412 1AAA     		add	r2, sp, #104
 2795 1414 D869     		ldr	r0, [r3, #28]
 2796 1416 FFF7FEFF 		bl	_ZN12PrintMonitor19GetFileInfoResponseEPKcRP12OutputBuffer
 2797 141a 0028     		cmp	r0, #0
 2798 141c 3FF477AE 		beq	.L207
 2799 1420 1A98     		ldr	r0, [sp, #104]
 2800 1422 0A21     		movs	r1, #10
 2801 1424 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 2802 1428 2846     		mov	r0, r5
 2803 142a 2146     		mov	r1, r4
 2804 142c FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 2805 1430 2846     		mov	r0, r5
 2806 1432 2146     		mov	r1, r4
 2807 1434 1A9B     		ldr	r3, [sp, #104]
 2808 1436 0022     		movs	r2, #0
 2809 1438 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer
 2810 143c FFF71CBA 		b	.L1404
 2811              	.L138:
 2812 1440 2846     		mov	r0, r5
 2813 1442 2146     		mov	r1, r4
 2814 1444 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2815 1448 0028     		cmp	r0, #0
 2816 144a 3FF4C8AB 		beq	.L546
 2817 144e D5F88431 		ldr	r3, [r5, #388]
 2818 1452 002B     		cmp	r3, #0
 2819 1454 01F0B883 		beq	.L907
 2820 1458 4FF00008 		mov	r8, #0
 2821 145c 154F     		ldr	r7, .L1614+20
 2822 145e C146     		mov	r9, r8
 2823 1460 4FF0010A 		mov	r10, #1
 2824 1464 06E0     		b	.L142
 2825              	.L141:
 2826 1466 D5F88431 		ldr	r3, [r5, #388]
 2827 146a 08F10108 		add	r8, r8, #1
 2828 146e 4345     		cmp	r3, r8
 2829 1470 41F2AB83 		bls	.L140
 2830              	.L142:
 2831 1474 2046     		mov	r0, r4
 2832 1476 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 2833 147a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2834 147e 0028     		cmp	r0, #0
 2835 1480 F1D0     		beq	.L141
 2836 1482 0AFA08F2 		lsl	r2, r10, r8
 2837 1486 D5F85C32 		ldr	r3, [r5, #604]
 2838 148a 2868     		ldr	r0, [r5]
 2839 148c 23EA0203 		bic	r3, r3, r2
 2840 1490 C5F85C32 		str	r3, [r5, #604]
 2841 1494 4146     		mov	r1, r8
 2842 1496 FFF7FEFF 		bl	_ZN8Platform12DisableDriveEj
 2843 149a 4FF00109 		mov	r9, #1
 2844 149e E2E7     		b	.L141
 2845              	.L1615:
 2846              		.align	2
 2847              	.L1614:
 2848 14a0 8988883C 		.word	1015580809
 2849 14a4 C4070000 		.word	.LC84
 2850 14a8 00000000 		.word	.LANCHOR4
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 51


 2851 14ac F40B0000 		.word	.LC110
 2852 14b0 00000000 		.word	reprap
 2853 14b4 00000000 		.word	_ZN6GCodes11axisLettersE
 2854              	.L154:
 2855 14b8 2846     		mov	r0, r5
 2856 14ba 2146     		mov	r1, r4
 2857 14bc FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 2858 14c0 0646     		mov	r6, r0
 2859 14c2 0028     		cmp	r0, #0
 2860 14c4 3FF48BAB 		beq	.L546
 2861 14c8 2046     		mov	r0, r4
 2862 14ca 5321     		movs	r1, #83
 2863 14cc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2864 14d0 0028     		cmp	r0, #0
 2865 14d2 43F03682 		bne	.L1492
 2866 14d6 0746     		mov	r7, r0
 2867              	.L155:
 2868 14d8 2046     		mov	r0, r4
 2869 14da 5021     		movs	r1, #80
 2870 14dc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2871 14e0 0028     		cmp	r0, #0
 2872 14e2 43F02882 		bne	.L1493
 2873 14e6 DFF8DC92 		ldr	r9, .L1616+32
 2874              	.L156:
 2875 14ea 022F     		cmp	r7, #2
 2876 14ec 03F00B83 		beq	.L1494
 2877 14f0 0DF15008 		add	r8, sp, #80
 2878 14f4 4046     		mov	r0, r8
 2879 14f6 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2880 14fa 0746     		mov	r7, r0
 2881 14fc 0028     		cmp	r0, #0
 2882 14fe 3FF4BBA9 		beq	.L1404
 2883 1502 2868     		ldr	r0, [r5]
 2884 1504 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 2885 1508 0028     		cmp	r0, #0
 2886 150a 43F0CF86 		bne	.L1495
 2887              	.L161:
 2888 150e D8F80000 		ldr	r0, [r8]
 2889 1512 A449     		ldr	r1, .L1616
 2890 1514 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 2891              	.L874:
 2892 1518 6B6C     		ldr	r3, [r5, #68]
 2893 151a 1B68     		ldr	r3, [r3]
 2894 151c A342     		cmp	r3, r4
 2895 151e 03F08C87 		beq	.L162
 2896 1522 EB6B     		ldr	r3, [r5, #60]
 2897 1524 1B68     		ldr	r3, [r3]
 2898 1526 A342     		cmp	r3, r4
 2899 1528 03F08787 		beq	.L162
 2900 152c 0127     		movs	r7, #1
 2901              	.L163:
 2902 152e 2B68     		ldr	r3, [r5]
 2903 1530 0DF1680A 		add	r10, sp, #104
 2904 1534 4946     		mov	r1, r9
 2905 1536 D3F8B406 		ldr	r0, [r3, #1716]
 2906 153a 5246     		mov	r2, r10
 2907 153c FFF7FEFF 		bl	_ZN11MassStorage9FindFirstEPKcR8FileInfo
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 52


 2908 1540 0028     		cmp	r0, #0
 2909 1542 03F07387 		beq	.L164
 2910 1546 4FF02209 		mov	r9, #34
 2911              	.L167:
 2912 154a 4FF02C0E 		mov	lr, #44
 2913 154e 9649     		ldr	r1, .L1616+4
 2914 1550 2222     		movs	r2, #34
 2915 1552 0DF16903 		add	r3, sp, #105
 2916 1556 002F     		cmp	r7, #0
 2917 1558 00F0DF87 		beq	.L165
 2918 155c D8F80000 		ldr	r0, [r8]
 2919 1560 8DE80042 		stmia	sp, {r9, lr}
 2920 1564 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2921 1568 2B68     		ldr	r3, [r5]
 2922 156a 5146     		mov	r1, r10
 2923 156c D3F8B406 		ldr	r0, [r3, #1716]
 2924 1570 FFF7FEFF 		bl	_ZN11MassStorage8FindNextER8FileInfo
 2925 1574 0028     		cmp	r0, #0
 2926 1576 E8D1     		bne	.L167
 2927 1578 D8F80070 		ldr	r7, [r8]
 2928 157c 8346     		mov	fp, r0
 2929 157e 3846     		mov	r0, r7
 2930 1580 FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 2931 1584 411E     		subs	r1, r0, #1
 2932 1586 3846     		mov	r0, r7
 2933 1588 FFF7FEFF 		bl	_ZN12OutputBufferixEj
 2934 158c 80F800B0 		strb	fp, [r0]
 2935              	.L158:
 2936 1590 2846     		mov	r0, r5
 2937 1592 2146     		mov	r1, r4
 2938 1594 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 2939 1598 2846     		mov	r0, r5
 2940 159a 2146     		mov	r1, r4
 2941 159c D8F80030 		ldr	r3, [r8]
 2942 15a0 0022     		movs	r2, #0
 2943 15a2 3746     		mov	r7, r6
 2944 15a4 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer
 2945 15a8 FFF766B9 		b	.L1404
 2946              	.L170:
 2947 15ac 2846     		mov	r0, r5
 2948 15ae 2146     		mov	r1, r4
 2949 15b0 FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 2950 15b4 0028     		cmp	r0, #0
 2951 15b6 3FF412AB 		beq	.L546
 2952 15ba 2046     		mov	r0, r4
 2953 15bc 5021     		movs	r1, #80
 2954 15be FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2955 15c2 0028     		cmp	r0, #0
 2956 15c4 43F0C981 		bne	.L1496
 2957 15c8 0146     		mov	r1, r0
 2958              	.L171:
 2959 15ca 2B68     		ldr	r3, [r5]
 2960 15cc 3246     		mov	r2, r6
 2961 15ce D3F8B406 		ldr	r0, [r3, #1716]
 2962 15d2 0123     		movs	r3, #1
 2963 15d4 FFF7FEFF 		bl	_ZN11MassStorage5MountEjR9StringRefb
 2964 15d8 0027     		movs	r7, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 53


 2965 15da 8146     		mov	r9, r0
 2966 15dc 87E5     		b	.L172
 2967              	.L173:
 2968 15de 2846     		mov	r0, r5
 2969 15e0 2146     		mov	r1, r4
 2970 15e2 FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 2971 15e6 0028     		cmp	r0, #0
 2972 15e8 3FF4F9AA 		beq	.L546
 2973 15ec 2046     		mov	r0, r4
 2974 15ee 5021     		movs	r1, #80
 2975 15f0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2976 15f4 0028     		cmp	r0, #0
 2977 15f6 43F0AA81 		bne	.L1497
 2978 15fa 0146     		mov	r1, r0
 2979              	.L174:
 2980 15fc 2B68     		ldr	r3, [r5]
 2981 15fe 3246     		mov	r2, r6
 2982 1600 D3F8B406 		ldr	r0, [r3, #1716]
 2983 1604 FFF7FEFF 		bl	_ZN11MassStorage7UnmountEjR9StringRef
 2984 1608 0027     		movs	r7, #0
 2985 160a 8146     		mov	r9, r0
 2986 160c 6FE5     		b	.L172
 2987              	.L202:
 2988 160e 3046     		mov	r0, r6
 2989 1610 6649     		ldr	r1, .L1616+8
 2990 1612 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 2991 1616 0027     		movs	r7, #0
 2992 1618 A368     		ldr	r3, [r4, #8]
 2993 161a FFF76BB9 		b	.L755
 2994              	.L175:
 2995 161e 2B6C     		ldr	r3, [r5, #64]
 2996 1620 1868     		ldr	r0, [r3]
 2997 1622 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 2998 1626 8368     		ldr	r3, [r0, #8]
 2999 1628 002B     		cmp	r3, #0
 3000 162a 01F0A485 		beq	.L176
 3001 162e 3046     		mov	r0, r6
 3002 1630 5F49     		ldr	r1, .L1616+12
 3003 1632 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3004 1636 0127     		movs	r7, #1
 3005 1638 A368     		ldr	r3, [r4, #8]
 3006 163a FFF75BB9 		b	.L755
 3007              	.L183:
 3008 163e 2846     		mov	r0, r5
 3009 1640 2146     		mov	r1, r4
 3010 1642 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3011 1646 0028     		cmp	r0, #0
 3012 1648 3FF4C9AA 		beq	.L546
 3013 164c 95F88570 		ldrb	r7, [r5, #133]	@ zero_extendqisi2
 3014 1650 002F     		cmp	r7, #0
 3015 1652 42F0C486 		bne	.L1498
 3016 1656 D5F83832 		ldr	r3, [r5, #568]
 3017 165a 002B     		cmp	r3, #0
 3018 165c 03F0FB83 		beq	.L1499
 3019 1660 2B6C     		ldr	r3, [r5, #64]
 3020 1662 1868     		ldr	r0, [r3]
 3021 1664 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 54


 3022 1668 8046     		mov	r8, r0
 3023 166a 8068     		ldr	r0, [r0, #8]
 3024 166c 18B1     		cbz	r0, .L186
 3025 166e FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 3026 1672 C8F80870 		str	r7, [r8, #8]
 3027              	.L186:
 3028 1676 D5F83832 		ldr	r3, [r5, #568]
 3029 167a 4E4A     		ldr	r2, .L1616+16
 3030 167c C8F80830 		str	r3, [r8, #8]
 3031 1680 0027     		movs	r7, #0
 3032 1682 D069     		ldr	r0, [r2, #28]
 3033 1684 C5F83872 		str	r7, [r5, #568]
 3034 1688 FFF7FEFF 		bl	_ZN12PrintMonitor12StartedPrintEv
 3035 168c A368     		ldr	r3, [r4, #8]
 3036 168e FFF731B9 		b	.L755
 3037              	.L188:
 3038 1692 95F88570 		ldrb	r7, [r5, #133]	@ zero_extendqisi2
 3039 1696 002F     		cmp	r7, #0
 3040 1698 42F0CB80 		bne	.L1500
 3041 169c 454B     		ldr	r3, .L1616+16
 3042 169e DB69     		ldr	r3, [r3, #28]
 3043 16a0 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 3044 16a2 002B     		cmp	r3, #0
 3045 16a4 41F04185 		bne	.L190
 3046 16a8 3046     		mov	r0, r6
 3047 16aa 4349     		ldr	r1, .L1616+20
 3048 16ac FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3049 16b0 0127     		movs	r7, #1
 3050 16b2 A368     		ldr	r3, [r4, #8]
 3051 16b4 FFF71EB9 		b	.L755
 3052              	.L191:
 3053 16b8 2046     		mov	r0, r4
 3054 16ba 5321     		movs	r1, #83
 3055 16bc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3056 16c0 0028     		cmp	r0, #0
 3057 16c2 01F09B83 		beq	.L192
 3058 16c6 2046     		mov	r0, r4
 3059 16c8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3060 16cc 2B6C     		ldr	r3, [r5, #64]
 3061 16ce 8046     		mov	r8, r0
 3062 16d0 1868     		ldr	r0, [r3]
 3063 16d2 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 3064 16d6 8768     		ldr	r7, [r0, #8]
 3065 16d8 002F     		cmp	r7, #0
 3066 16da 02F01A87 		beq	.L193
 3067 16de 2B6C     		ldr	r3, [r5, #64]
 3068 16e0 1868     		ldr	r0, [r3]
 3069 16e2 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 3070 16e6 4146     		mov	r1, r8
 3071 16e8 8068     		ldr	r0, [r0, #8]
 3072 16ea FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 3073 16ee 0028     		cmp	r0, #0
 3074 16f0 03F02F82 		beq	.L194
 3075 16f4 A368     		ldr	r3, [r4, #8]
 3076 16f6 0027     		movs	r7, #0
 3077 16f8 FFF7FCB8 		b	.L755
 3078              	.L565:
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 55


 3079 16fc 2046     		mov	r0, r4
 3080 16fe 5021     		movs	r1, #80
 3081 1700 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3082 1704 0746     		mov	r7, r0
 3083 1706 0028     		cmp	r0, #0
 3084 1708 01F04283 		beq	.L566
 3085 170c 2846     		mov	r0, r5
 3086 170e 2146     		mov	r1, r4
 3087 1710 40F22A22 		movw	r2, #554
 3088 1714 FFF7FEFF 		bl	_ZN6GCodes18SetEthernetAddressER11GCodeBufferi
 3089 1718 0027     		movs	r7, #0
 3090 171a A368     		ldr	r3, [r4, #8]
 3091 171c FFF7EAB8 		b	.L755
 3092              	.L576:
 3093 1720 2046     		mov	r0, r4
 3094 1722 5321     		movs	r1, #83
 3095 1724 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3096 1728 0746     		mov	r7, r0
 3097 172a 0028     		cmp	r0, #0
 3098 172c 01F02A84 		beq	.L577
 3099 1730 2046     		mov	r0, r4
 3100 1732 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3101 1736 214F     		ldr	r7, .L1616+24
 3102 1738 8146     		mov	r9, r0
 3103 173a 4FF00008 		mov	r8, #0
 3104              	.L580:
 3105 173e 2046     		mov	r0, r4
 3106 1740 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 3107 1744 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3108 1748 0028     		cmp	r0, #0
 3109 174a 41F06C84 		bne	.L1501
 3110              	.L578:
 3111 174e 08F10108 		add	r8, r8, #1
 3112 1752 B8F1030F 		cmp	r8, #3
 3113 1756 F2D1     		bne	.L580
 3114 1758 A368     		ldr	r3, [r4, #8]
 3115 175a 0027     		movs	r7, #0
 3116 175c FFF7CAB8 		b	.L755
 3117              	.L131:
 3118 1760 2846     		mov	r0, r5
 3119 1762 2146     		mov	r1, r4
 3120 1764 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3121 1768 0028     		cmp	r0, #0
 3122 176a 3FF438AA 		beq	.L546
 3123 176e 95F88570 		ldrb	r7, [r5, #133]	@ zero_extendqisi2
 3124 1772 2846     		mov	r0, r5
 3125 1774 FFF7FEFF 		bl	_ZN6GCodes11CancelPrintEv
 3126 1778 002F     		cmp	r7, #0
 3127 177a 43F04F81 		bne	.L1502
 3128 177e B9F1000F 		cmp	r9, #0
 3129 1782 42F03385 		bne	.L134
 3130              	.L136:
 3131 1786 0E4A     		ldr	r2, .L1616+28
 3132 1788 A368     		ldr	r3, [r4, #8]
 3133 178a 1321     		movs	r1, #19
 3134 178c 1268     		ldr	r2, [r2]
 3135 178e 1974     		strb	r1, [r3, #16]
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 56


 3136              	.L873:
 3137 1790 0027     		movs	r7, #0
 3138 1792 3B46     		mov	r3, r7
 3139 1794 0097     		str	r7, [sp]
 3140 1796 2846     		mov	r0, r5
 3141 1798 2146     		mov	r1, r4
 3142 179a FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 3143 179e A368     		ldr	r3, [r4, #8]
 3144 17a0 FFF7A8B8 		b	.L755
 3145              	.L1617:
 3146              		.align	2
 3147              	.L1616:
 3148 17a4 5C150000 		.word	.LC184
 3149 17a8 00020000 		.word	.LC34
 3150 17ac 08040000 		.word	.LC49
 3151 17b0 18020000 		.word	.LC37
 3152 17b4 00000000 		.word	reprap
 3153 17b8 C0020000 		.word	.LC41
 3154 17bc 00000000 		.word	_ZN6GCodes11axisLettersE
 3155 17c0 00000000 		.word	.LANCHOR7
 3156 17c4 88000000 		.word	.LC4
 3157              	.L364:
 3158 17c8 DFF8E4A2 		ldr	r10, .L1618
 3159 17cc B9F1BF0F 		cmp	r9, #191
 3160 17d0 DAF80C20 		ldr	r2, [r10, #12]
 3161 17d4 0CBF     		ite	eq
 3162 17d6 92F82B70 		ldrbeq	r7, [r2, #43]	@ zero_extendqisi2
 3163 17da 92F82A70 		ldrbne	r7, [r2, #42]	@ zero_extendqisi2
 3164 17de 7FB2     		sxtb	r7, r7
 3165 17e0 002F     		cmp	r7, #0
 3166 17e2 C1F21284 		blt	.L929
 3167 17e6 2046     		mov	r0, r4
 3168 17e8 5221     		movs	r1, #82
 3169 17ea FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3170 17ee 8046     		mov	r8, r0
 3171 17f0 2046     		mov	r0, r4
 3172 17f2 B8F1000F 		cmp	r8, #0
 3173 17f6 02F0AA82 		beq	.L367
 3174 17fa FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3175 17fe 4FF00108 		mov	r8, #1
 3176              	.L368:
 3177 1802 0246     		mov	r2, r0
 3178 1804 3946     		mov	r1, r7
 3179 1806 DAF80C00 		ldr	r0, [r10, #12]
 3180 180a FFF7FEFF 		bl	_ZN4Heat20SetActiveTemperatureEaf
 3181 180e DAF80C00 		ldr	r0, [r10, #12]
 3182 1812 3946     		mov	r1, r7
 3183 1814 FFF7FEFF 		bl	_ZN4Heat8ActivateEa
 3184 1818 95F87E23 		ldrb	r2, [r5, #894]	@ zero_extendqisi2
 3185 181c A44B     		ldr	r3, .L1618
 3186 181e 002A     		cmp	r2, #0
 3187 1820 03F09F81 		beq	.L1503
 3188              	.L370:
 3189 1824 0027     		movs	r7, #0
 3190 1826 85F87D73 		strb	r7, [r5, #893]
 3191 182a 85F87E73 		strb	r7, [r5, #894]
 3192 182e A368     		ldr	r3, [r4, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 57


 3193 1830 FFF760B8 		b	.L755
 3194              	.L861:
 3195 1834 D5F88431 		ldr	r3, [r5, #388]
 3196 1838 002B     		cmp	r3, #0
 3197 183a 02F08B80 		beq	.L871
 3198 183e 4FF00008 		mov	r8, #0
 3199 1842 C246     		mov	r10, r8
 3200 1844 9B4F     		ldr	r7, .L1618+4
 3201 1846 B346     		mov	fp, r6
 3202 1848 06E0     		b	.L872
 3203              	.L372:
 3204 184a D5F88431 		ldr	r3, [r5, #388]
 3205 184e 08F10108 		add	r8, r8, #1
 3206 1852 4345     		cmp	r3, r8
 3207 1854 41F28980 		bls	.L1504
 3208              	.L872:
 3209 1858 2046     		mov	r0, r4
 3210 185a 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 3211 185e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3212 1862 0028     		cmp	r0, #0
 3213 1864 F1D0     		beq	.L372
 3214 1866 2046     		mov	r0, r4
 3215 1868 2E68     		ldr	r6, [r5]
 3216 186a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3217 186e D5F83012 		ldr	r1, [r5, #560]	@ float
 3218 1872 FFF7FEFF 		bl	__aeabi_fmul
 3219 1876 08F14209 		add	r9, r8, #66
 3220 187a 06EB8909 		add	r9, r6, r9, lsl #2
 3221 187e 4FF0010A 		mov	r10, #1
 3222 1882 C9F80400 		str	r0, [r9, #4]	@ float
 3223 1886 E0E7     		b	.L372
 3224              	.L524:
 3225 1888 2846     		mov	r0, r5
 3226 188a 2146     		mov	r1, r4
 3227 188c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3228 1890 0028     		cmp	r0, #0
 3229 1892 3FF4A4A9 		beq	.L546
 3230 1896 2846     		mov	r0, r5
 3231 1898 2146     		mov	r1, r4
 3232 189a 3246     		mov	r2, r6
 3233 189c FFF7FEFF 		bl	_ZNK6GCodes13LoadHeightMapER11GCodeBufferR9StringRef
 3234 18a0 A368     		ldr	r3, [r4, #8]
 3235 18a2 0746     		mov	r7, r0
 3236 18a4 FFF726B8 		b	.L755
 3237              	.L525:
 3238 18a8 814B     		ldr	r3, .L1618
 3239 18aa 2046     		mov	r0, r4
 3240 18ac 4821     		movs	r1, #72
 3241 18ae D3F80880 		ldr	r8, [r3, #8]
 3242 18b2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3243 18b6 0746     		mov	r7, r0
 3244 18b8 0028     		cmp	r0, #0
 3245 18ba 41F0BE85 		bne	.L1505
 3246 18be 98F8E433 		ldrb	r3, [r8, #996]	@ zero_extendqisi2
 3247 18c2 002B     		cmp	r3, #0
 3248 18c4 41F00984 		bne	.L1506
 3249              	.L527:
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 58


 3250 18c8 3046     		mov	r0, r6
 3251 18ca 7B49     		ldr	r1, .L1618+8
 3252 18cc FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3253 18d0 0027     		movs	r7, #0
 3254 18d2 A368     		ldr	r3, [r4, #8]
 3255 18d4 FFF70EB8 		b	.L755
 3256              	.L529:
 3257 18d8 2846     		mov	r0, r5
 3258 18da 2146     		mov	r1, r4
 3259 18dc FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3260 18e0 0028     		cmp	r0, #0
 3261 18e2 3FF47CA9 		beq	.L546
 3262 18e6 A368     		ldr	r3, [r4, #8]
 3263 18e8 0027     		movs	r7, #0
 3264 18ea FFF703B8 		b	.L755
 3265              	.L530:
 3266 18ee 734B     		ldr	r3, .L1618+12
 3267 18f0 0027     		movs	r7, #0
 3268 18f2 1A68     		ldr	r2, [r3]
 3269 18f4 2846     		mov	r0, r5
 3270 18f6 3B46     		mov	r3, r7
 3271 18f8 0097     		str	r7, [sp]
 3272 18fa 2146     		mov	r1, r4
 3273 18fc FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 3274 1900 A368     		ldr	r3, [r4, #8]
 3275 1902 FEF7F7BF 		b	.L755
 3276              	.L498:
 3277 1906 0DF14C09 		add	r9, sp, #76
 3278 190a 12AB     		add	r3, sp, #72
 3279 190c 4A46     		mov	r2, r9
 3280 190e 0027     		movs	r7, #0
 3281 1910 2046     		mov	r0, r4
 3282 1912 4921     		movs	r1, #73
 3283 1914 C9F80070 		str	r7, [r9]
 3284 1918 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 3285 191c D5F88431 		ldr	r3, [r5, #388]
 3286 1920 002B     		cmp	r3, #0
 3287 1922 02F05483 		beq	.L499
 3288 1926 BB46     		mov	fp, r7
 3289 1928 DA46     		mov	r10, fp
 3290 192a 624F     		ldr	r7, .L1618+4
 3291 192c 0D96     		str	r6, [sp, #52]
 3292 192e 06E0     		b	.L505
 3293              	.L500:
 3294 1930 D5F88431 		ldr	r3, [r5, #388]
 3295 1934 0BF1010B 		add	fp, fp, #1
 3296 1938 5B45     		cmp	r3, fp
 3297 193a 41F2A980 		bls	.L1507
 3298              	.L505:
 3299 193e 17F80B80 		ldrb	r8, [r7, fp]	@ zero_extendqisi2
 3300 1942 2046     		mov	r0, r4
 3301 1944 4146     		mov	r1, r8
 3302 1946 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3303 194a 0028     		cmp	r0, #0
 3304 194c F0D0     		beq	.L500
 3305 194e 2846     		mov	r0, r5
 3306 1950 2146     		mov	r1, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 59


 3307 1952 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3308 1956 0028     		cmp	r0, #0
 3309 1958 3FF441A9 		beq	.L546
 3310 195c 2046     		mov	r0, r4
 3311 195e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3312 1962 8246     		mov	r10, r0
 3313 1964 5946     		mov	r1, fp
 3314 1966 5246     		mov	r2, r10
 3315 1968 D9F80030 		ldr	r3, [r9]
 3316 196c 2846     		mov	r0, r5
 3317 196e FFF7FEFF 		bl	_ZNK6GCodes19ChangeMicrosteppingEjii
 3318 1972 4FF0010E 		mov	lr, #1
 3319 1976 0621     		movs	r1, #6
 3320 1978 514A     		ldr	r2, .L1618+16
 3321 197a 4346     		mov	r3, r8
 3322 197c 0028     		cmp	r0, #0
 3323 197e 00F0EA85 		beq	.L502
 3324 1982 0EFA0BF2 		lsl	r2, lr, fp
 3325 1986 D5F85C32 		ldr	r3, [r5, #604]
 3326 198a F246     		mov	r10, lr
 3327 198c 23EA0203 		bic	r3, r3, r2
 3328 1990 C5F85C32 		str	r3, [r5, #604]
 3329 1994 CCE7     		b	.L500
 3330              	.L523:
 3331 1996 2846     		mov	r0, r5
 3332 1998 2146     		mov	r1, r4
 3333 199a 3246     		mov	r2, r6
 3334 199c FFF7FEFF 		bl	_ZNK6GCodes13SaveHeightMapER11GCodeBufferR9StringRef
 3335 19a0 A368     		ldr	r3, [r4, #8]
 3336 19a2 0746     		mov	r7, r0
 3337 19a4 FEF7A6BF 		b	.L755
 3338              	.L489:
 3339 19a8 2846     		mov	r0, r5
 3340 19aa 2146     		mov	r1, r4
 3341 19ac 3246     		mov	r2, r6
 3342 19ae FFF7FEFF 		bl	_ZN6GCodes19SetHeaterParametersER11GCodeBufferR9StringRef
 3343 19b2 0027     		movs	r7, #0
 3344 19b4 A368     		ldr	r3, [r4, #8]
 3345 19b6 FEF79DBF 		b	.L755
 3346              	.L543:
 3347 19ba 0027     		movs	r7, #0
 3348 19bc 0123     		movs	r3, #1
 3349 19be 0097     		str	r7, [sp]
 3350 19c0 2846     		mov	r0, r5
 3351 19c2 2146     		mov	r1, r4
 3352 19c4 3F4A     		ldr	r2, .L1618+20
 3353 19c6 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 3354 19ca A368     		ldr	r3, [r4, #8]
 3355 19cc FEF792BF 		b	.L755
 3356              	.L544:
 3357 19d0 DFF8DC80 		ldr	r8, .L1618
 3358 19d4 0027     		movs	r7, #0
 3359 19d6 D8F80C00 		ldr	r0, [r8, #12]
 3360 19da FFF7FEFF 		bl	_ZN4Heat17ResetHeaterModelsEv
 3361 19de D8F80800 		ldr	r0, [r8, #8]
 3362 19e2 00F23440 		addw	r0, r0, #1076
 3363 19e6 FFF7FEFF 		bl	_ZN15DeltaParameters4InitEv
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 60


 3364 19ea 2868     		ldr	r0, [r5]
 3365 19ec FFF7FEFF 		bl	_ZN8Platform17SetZProbeDefaultsEv
 3366 19f0 0123     		movs	r3, #1
 3367 19f2 0093     		str	r3, [sp]
 3368 19f4 2846     		mov	r0, r5
 3369 19f6 2146     		mov	r1, r4
 3370 19f8 334A     		ldr	r2, .L1618+24
 3371 19fa FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 3372 19fe A368     		ldr	r3, [r4, #8]
 3373 1a00 FEF778BF 		b	.L755
 3374              	.L545:
 3375 1a04 2846     		mov	r0, r5
 3376 1a06 2146     		mov	r1, r4
 3377 1a08 FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 3378 1a0c 0028     		cmp	r0, #0
 3379 1a0e 3FF4E6A8 		beq	.L546
 3380 1a12 0DF15008 		add	r8, sp, #80
 3381 1a16 4046     		mov	r0, r8
 3382 1a18 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 3383 1a1c 0746     		mov	r7, r0
 3384 1a1e 0028     		cmp	r0, #0
 3385 1a20 3FF4DDA8 		beq	.L546
 3386 1a24 2868     		ldr	r0, [r5]
 3387 1a26 2949     		ldr	r1, .L1618+28
 3388 1a28 274A     		ldr	r2, .L1618+24
 3389 1a2a 0023     		movs	r3, #0
 3390 1a2c FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 3391 1a30 8146     		mov	r9, r0
 3392 1a32 0028     		cmp	r0, #0
 3393 1a34 03F04B85 		beq	.L1508
 3394 1a38 D8F80000 		ldr	r0, [r8]
 3395 1a3c FFF7FEFF 		bl	_ZN12OutputBuffer12GetBytesLeftEPKS_
 3396 1a40 0DF1680A 		add	r10, sp, #104
 3397 1a44 0646     		mov	r6, r0
 3398 1a46 0BE0     		b	.L548
 3399              	.L1509:
 3400 1a48 96B1     		cbz	r6, .L549
 3401 1a4a 8642     		cmp	r6, r0
 3402 1a4c 01F28180 		bhi	.L880
 3403 1a50 3046     		mov	r0, r6
 3404 1a52 0026     		movs	r6, #0
 3405              	.L881:
 3406 1a54 0246     		mov	r2, r0
 3407 1a56 5146     		mov	r1, r10
 3408 1a58 D8F80000 		ldr	r0, [r8]
 3409 1a5c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKcj
 3410              	.L548:
 3411 1a60 4846     		mov	r0, r9
 3412 1a62 5146     		mov	r1, r10
 3413 1a64 4FF48072 		mov	r2, #256
 3414 1a68 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 3415 1a6c 0028     		cmp	r0, #0
 3416 1a6e EBD1     		bne	.L1509
 3417              	.L549:
 3418 1a70 4846     		mov	r0, r9
 3419 1a72 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 3420 1a76 2846     		mov	r0, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 61


 3421 1a78 2146     		mov	r1, r4
 3422 1a7a FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 3423 1a7e 2846     		mov	r0, r5
 3424 1a80 2146     		mov	r1, r4
 3425 1a82 D8F80030 		ldr	r3, [r8]
 3426 1a86 0022     		movs	r2, #0
 3427 1a88 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer
 3428 1a8c FEF7F4BE 		b	.L1404
 3429              	.L551:
 3430 1a90 2046     		mov	r0, r4
 3431 1a92 5021     		movs	r1, #80
 3432 1a94 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3433 1a98 0746     		mov	r7, r0
 3434 1a9a 0028     		cmp	r0, #0
 3435 1a9c 01F00981 		beq	.L552
 3436 1aa0 2846     		mov	r0, r5
 3437 1aa2 2146     		mov	r1, r4
 3438 1aa4 FFF7FEFF 		bl	_ZN6GCodes13SetMACAddressER11GCodeBuffer
 3439 1aa8 0027     		movs	r7, #0
 3440 1aaa A368     		ldr	r3, [r4, #8]
 3441 1aac FEF722BF 		b	.L755
 3442              	.L1619:
 3443              		.align	2
 3444              	.L1618:
 3445 1ab0 00000000 		.word	reprap
 3446 1ab4 00000000 		.word	_ZN6GCodes11axisLettersE
 3447 1ab8 D40B0000 		.word	.LC109
 3448 1abc 00000000 		.word	.LANCHOR3
 3449 1ac0 200B0000 		.word	.LC102
 3450 1ac4 240C0000 		.word	.LC111
 3451 1ac8 04010000 		.word	.LC19
 3452 1acc 380C0000 		.word	.LC112
 3453              	.L535:
 3454 1ad0 2046     		mov	r0, r4
 3455 1ad2 5321     		movs	r1, #83
 3456 1ad4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3457 1ad8 0028     		cmp	r0, #0
 3458 1ada 41F03685 		bne	.L1510
 3459 1ade 0746     		mov	r7, r0
 3460              	.L536:
 3461 1ae0 2046     		mov	r0, r4
 3462 1ae2 5221     		movs	r1, #82
 3463 1ae4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3464 1ae8 0028     		cmp	r0, #0
 3465 1aea 41F02885 		bne	.L1511
 3466 1aee 4FF0FF32 		mov	r2, #-1
 3467              	.L537:
 3468 1af2 AB6C     		ldr	r3, [r5, #72]
 3469 1af4 1968     		ldr	r1, [r3]
 3470 1af6 A142     		cmp	r1, r4
 3471 1af8 02F02585 		beq	.L538
 3472              	.L540:
 3473 1afc 0223     		movs	r3, #2
 3474              	.L539:
 3475 1afe 3946     		mov	r1, r7
 3476 1b00 2846     		mov	r0, r5
 3477 1b02 FFF7FEFF 		bl	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 62


 3478 1b06 0746     		mov	r7, r0
 3479 1b08 0028     		cmp	r0, #0
 3480 1b0a 01F09E82 		beq	.L1512
 3481 1b0e 2846     		mov	r0, r5
 3482 1b10 2146     		mov	r1, r4
 3483 1b12 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 3484 1b16 3B46     		mov	r3, r7
 3485 1b18 2846     		mov	r0, r5
 3486 1b1a 2146     		mov	r1, r4
 3487 1b1c 0022     		movs	r2, #0
 3488 1b1e FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer
 3489 1b22 0127     		movs	r7, #1
 3490 1b24 FEF7A8BE 		b	.L1404
 3491              	.L542:
 3492 1b28 BB4B     		ldr	r3, .L1620+8
 3493 1b2a 2846     		mov	r0, r5
 3494 1b2c 1A68     		ldr	r2, [r3]
 3495 1b2e 3146     		mov	r1, r6
 3496 1b30 FFF7FEFF 		bl	_ZNK6GCodes23WriteConfigOverrideFileER9StringRefPKc
 3497 1b34 A368     		ldr	r3, [r4, #8]
 3498 1b36 0746     		mov	r7, r0
 3499 1b38 FEF7DCBE 		b	.L755
 3500              	.L468:
 3501 1b3c 2046     		mov	r0, r4
 3502 1b3e 5321     		movs	r1, #83
 3503 1b40 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3504 1b44 0746     		mov	r7, r0
 3505 1b46 0028     		cmp	r0, #0
 3506 1b48 01F04882 		beq	.L469
 3507 1b4c 2046     		mov	r0, r4
 3508 1b4e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3509 1b52 4FF07E51 		mov	r1, #1065353216
 3510 1b56 8046     		mov	r8, r0
 3511 1b58 20F00040 		bic	r0, r0, #-2147483648
 3512 1b5c FFF7FEFF 		bl	__aeabi_fcmple
 3513 1b60 0028     		cmp	r0, #0
 3514 1b62 42F02C85 		bne	.L470
 3515 1b66 0746     		mov	r7, r0
 3516 1b68 A368     		ldr	r3, [r4, #8]
 3517 1b6a FEF7C3BE 		b	.L755
 3518              	.L471:
 3519 1b6e 2046     		mov	r0, r4
 3520 1b70 5021     		movs	r1, #80
 3521 1b72 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3522 1b76 0028     		cmp	r0, #0
 3523 1b78 41F0F384 		bne	.L1513
 3524 1b7c 4FF47A77 		mov	r7, #1000
 3525              	.L472:
 3526 1b80 2046     		mov	r0, r4
 3527 1b82 5321     		movs	r1, #83
 3528 1b84 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3529 1b88 0028     		cmp	r0, #0
 3530 1b8a 41F0E484 		bne	.L1514
 3531 1b8e 41F2F811 		movw	r1, #4600
 3532              	.L473:
 3533 1b92 3A46     		mov	r2, r7
 3534 1b94 A148     		ldr	r0, .L1620+12
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 63


 3535 1b96 FFF7FEFF 		bl	_ZN6RepRap4BeepEii
 3536 1b9a 0027     		movs	r7, #0
 3537 1b9c A368     		ldr	r3, [r4, #8]
 3538 1b9e FEF7A9BE 		b	.L755
 3539              	.L474:
 3540 1ba2 2046     		mov	r0, r4
 3541 1ba4 5021     		movs	r1, #80
 3542 1ba6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3543 1baa 9C4B     		ldr	r3, .L1620+12
 3544 1bac 0746     		mov	r7, r0
 3545 1bae 0028     		cmp	r0, #0
 3546 1bb0 41F04786 		bne	.L1515
 3547 1bb4 D968     		ldr	r1, [r3, #12]
 3548 1bb6 9A4A     		ldr	r2, .L1620+16
 3549 1bb8 9A4B     		ldr	r3, .L1620+20
 3550 1bba 91F82910 		ldrb	r1, [r1, #41]	@ zero_extendqisi2
 3551 1bbe 3046     		mov	r0, r6
 3552 1bc0 0029     		cmp	r1, #0
 3553 1bc2 18BF     		it	ne
 3554 1bc4 1A46     		movne	r2, r3
 3555 1bc6 9849     		ldr	r1, .L1620+24
 3556 1bc8 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 3557 1bcc A368     		ldr	r3, [r4, #8]
 3558 1bce FEF791BE 		b	.L755
 3559              	.L477:
 3560 1bd2 2046     		mov	r0, r4
 3561 1bd4 4821     		movs	r1, #72
 3562 1bd6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3563 1bda 0746     		mov	r7, r0
 3564 1bdc 0028     		cmp	r0, #0
 3565 1bde 01F03080 		beq	.L478
 3566 1be2 2046     		mov	r0, r4
 3567 1be4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3568 1be8 5321     		movs	r1, #83
 3569 1bea 8046     		mov	r8, r0
 3570 1bec 2046     		mov	r0, r4
 3571 1bee FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3572 1bf2 0028     		cmp	r0, #0
 3573 1bf4 42F03085 		bne	.L1516
 3574 1bf8 884B     		ldr	r3, .L1620+12
 3575 1bfa DB68     		ldr	r3, [r3, #12]
 3576 1bfc 93F92A20 		ldrsb	r2, [r3, #42]
 3577 1c00 4245     		cmp	r2, r8
 3578 1c02 02F07687 		beq	.L949
 3579 1c06 93F92B30 		ldrsb	r3, [r3, #43]
 3580 1c0a 4345     		cmp	r3, r8
 3581 1c0c 03F03680 		beq	.L1517
 3582 1c10 DFF82892 		ldr	r9, .L1620+44
 3583              	.L480:
 3584 1c14 2046     		mov	r0, r4
 3585 1c16 5021     		movs	r1, #80
 3586 1c18 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3587 1c1c 0028     		cmp	r0, #0
 3588 1c1e 42F01F86 		bne	.L1518
 3589 1c22 4FF07E5A 		mov	r10, #1065353216
 3590              	.L481:
 3591 1c26 B8F1060F 		cmp	r8, #6
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 64


 3592 1c2a 42F22181 		bls	.L482
 3593 1c2e 3046     		mov	r0, r6
 3594 1c30 7E49     		ldr	r1, .L1620+28
 3595 1c32 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3596 1c36 0027     		movs	r7, #0
 3597 1c38 A368     		ldr	r3, [r4, #8]
 3598 1c3a FEF75BBE 		b	.L755
 3599              	.L835:
 3600 1c3e 2046     		mov	r0, r4
 3601 1c40 5321     		movs	r1, #83
 3602 1c42 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3603 1c46 0028     		cmp	r0, #0
 3604 1c48 01F01780 		beq	.L836
 3605 1c4c 2046     		mov	r0, r4
 3606 1c4e 2F68     		ldr	r7, [r5]
 3607 1c50 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3608 1c54 C7F82807 		str	r0, [r7, #1832]	@ float
 3609 1c58 A368     		ldr	r3, [r4, #8]
 3610 1c5a 0027     		movs	r7, #0
 3611 1c5c FEF74ABE 		b	.L755
 3612              	.L453:
 3613 1c60 2046     		mov	r0, r4
 3614 1c62 5021     		movs	r1, #80
 3615 1c64 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3616 1c68 0028     		cmp	r0, #0
 3617 1c6a 3FF483A8 		beq	.L556
 3618 1c6e 2046     		mov	r0, r4
 3619 1c70 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3620 1c74 0DF15008 		add	r8, sp, #80
 3621 1c78 0746     		mov	r7, r0
 3622 1c7a 0DF1680A 		add	r10, sp, #104
 3623 1c7e 2868     		ldr	r0, [r5]
 3624 1c80 3946     		mov	r1, r7
 3625 1c82 4346     		mov	r3, r8
 3626 1c84 CDF800A0 		str	r10, [sp]
 3627 1c88 0322     		movs	r2, #3
 3628 1c8a FFF7FEFF 		bl	_ZN8Platform14GetFirmwarePinEi9PinAccessRhRb
 3629 1c8e 0028     		cmp	r0, #0
 3630 1c90 02F0D284 		beq	.L455
 3631 1c94 2046     		mov	r0, r4
 3632 1c96 4921     		movs	r1, #73
 3633 1c98 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3634 1c9c 0028     		cmp	r0, #0
 3635 1c9e 43F04482 		bne	.L1519
 3636              	.L878:
 3637 1ca2 2046     		mov	r0, r4
 3638 1ca4 5321     		movs	r1, #83
 3639 1ca6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3640 1caa 0028     		cmp	r0, #0
 3641 1cac 43F04B82 		bne	.L1520
 3642              	.L458:
 3643 1cb0 A368     		ldr	r3, [r4, #8]
 3644 1cb2 0027     		movs	r7, #0
 3645 1cb4 FEF71EBE 		b	.L755
 3646              	.L229:
 3647 1cb8 2846     		mov	r0, r5
 3648 1cba 2146     		mov	r1, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 65


 3649 1cbc FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3650 1cc0 0028     		cmp	r0, #0
 3651 1cc2 3EF48CAF 		beq	.L546
 3652 1cc6 2868     		ldr	r0, [r5]
 3653 1cc8 0021     		movs	r1, #0
 3654 1cca FFF7FEFF 		bl	_ZN8Platform11SetAtxPowerEb
 3655 1cce 0027     		movs	r7, #0
 3656 1cd0 A368     		ldr	r3, [r4, #8]
 3657 1cd2 FEF70FBE 		b	.L755
 3658              	.L228:
 3659 1cd6 2868     		ldr	r0, [r5]
 3660 1cd8 0121     		movs	r1, #1
 3661 1cda FFF7FEFF 		bl	_ZN8Platform11SetAtxPowerEb
 3662 1cde 0027     		movs	r7, #0
 3663 1ce0 A368     		ldr	r3, [r4, #8]
 3664 1ce2 FEF707BE 		b	.L755
 3665              	.L661:
 3666 1ce6 2046     		mov	r0, r4
 3667 1ce8 4421     		movs	r1, #68
 3668 1cea FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3669 1cee 0028     		cmp	r0, #0
 3670 1cf0 41F0B983 		bne	.L662
 3671 1cf4 0746     		mov	r7, r0
 3672 1cf6 A368     		ldr	r3, [r4, #8]
 3673 1cf8 FEF7FCBD 		b	.L755
 3674              	.L665:
 3675 1cfc 2046     		mov	r0, r4
 3676 1cfe 5021     		movs	r1, #80
 3677 1d00 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3678 1d04 0028     		cmp	r0, #0
 3679 1d06 3FF435A8 		beq	.L556
 3680 1d0a 2046     		mov	r0, r4
 3681 1d0c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3682 1d10 0628     		cmp	r0, #6
 3683 1d12 0746     		mov	r7, r0
 3684 1d14 42F2A087 		bls	.L1521
 3685              	.L666:
 3686 1d18 A368     		ldr	r3, [r4, #8]
 3687 1d1a 0027     		movs	r7, #0
 3688 1d1c FEF7EABD 		b	.L755
 3689              	.L435:
 3690 1d20 2046     		mov	r0, r4
 3691 1d22 5321     		movs	r1, #83
 3692 1d24 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3693 1d28 0746     		mov	r7, r0
 3694 1d2a 0028     		cmp	r0, #0
 3695 1d2c 00F09187 		beq	.L436
 3696 1d30 2046     		mov	r0, r4
 3697 1d32 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3698 1d36 FFF7FEFF 		bl	__aeabi_f2d
 3699 1d3a 35A3     		adr	r3, .L1620
 3700 1d3c D3E90023 		ldrd	r2, [r3]
 3701 1d40 FFF7FEFF 		bl	__aeabi_dmul
 3702 1d44 4FF00052 		mov	r2, #536870912
 3703 1d48 394B     		ldr	r3, .L1620+32
 3704 1d4a FFF7FEFF 		bl	__aeabi_dmul
 3705 1d4e FFF7FEFF 		bl	__aeabi_d2f
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 66


 3706 1d52 0021     		movs	r1, #0
 3707 1d54 8246     		mov	r10, r0
 3708 1d56 FFF7FEFF 		bl	__aeabi_fcmpgt
 3709 1d5a 0028     		cmp	r0, #0
 3710 1d5c 03F08380 		beq	.L1421
 3711 1d60 5046     		mov	r0, r10
 3712 1d62 D5F86C12 		ldr	r1, [r5, #620]	@ float
 3713 1d66 FFF7FEFF 		bl	__aeabi_fdiv
 3714 1d6a 4FF00009 		mov	r9, #0
 3715 1d6e 8046     		mov	r8, r0
 3716              	.L444:
 3717 1d70 05EB0903 		add	r3, r5, r9
 3718 1d74 DB69     		ldr	r3, [r3, #28]
 3719 1d76 9F68     		ldr	r7, [r3, #8]
 3720 1d78 3FB1     		cbz	r7, .L442
 3721              	.L443:
 3722 1d7a 7868     		ldr	r0, [r7, #4]	@ float
 3723 1d7c 4146     		mov	r1, r8
 3724 1d7e FFF7FEFF 		bl	__aeabi_fmul
 3725 1d82 7860     		str	r0, [r7, #4]	@ float
 3726 1d84 3F68     		ldr	r7, [r7]
 3727 1d86 002F     		cmp	r7, #0
 3728 1d88 F7D1     		bne	.L443
 3729              	.L442:
 3730 1d8a 09F10409 		add	r9, r9, #4
 3731 1d8e B9F11C0F 		cmp	r9, #28
 3732 1d92 EDD1     		bne	.L444
 3733 1d94 D5F8DC30 		ldr	r3, [r5, #220]
 3734 1d98 4BB1     		cbz	r3, .L445
 3735 1d9a 95F8D730 		ldrb	r3, [r5, #215]	@ zero_extendqisi2
 3736 1d9e 33B9     		cbnz	r3, .L445
 3737 1da0 D5F8C400 		ldr	r0, [r5, #196]	@ float
 3738 1da4 4146     		mov	r1, r8
 3739 1da6 FFF7FEFF 		bl	__aeabi_fmul
 3740 1daa C5F8C400 		str	r0, [r5, #196]	@ float
 3741              	.L445:
 3742 1dae C5F86CA2 		str	r10, [r5, #620]	@ float
 3743 1db2 A368     		ldr	r3, [r4, #8]
 3744 1db4 0027     		movs	r7, #0
 3745 1db6 FEF79DBD 		b	.L755
 3746              	.L199:
 3747 1dba 2046     		mov	r0, r4
 3748 1dbc 0021     		movs	r1, #0
 3749 1dbe FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringEb
 3750 1dc2 0746     		mov	r7, r0
 3751 1dc4 0028     		cmp	r0, #0
 3752 1dc6 00F0FB86 		beq	.L204
 3753 1dca 1A4A     		ldr	r2, .L1620+36
 3754 1dcc 2846     		mov	r0, r5
 3755 1dce 2146     		mov	r1, r4
 3756 1dd0 3B46     		mov	r3, r7
 3757 1dd2 FFF7FEFF 		bl	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_
 3758 1dd6 3A46     		mov	r2, r7
 3759 1dd8 0028     		cmp	r0, #0
 3760 1dda 01F0B681 		beq	.L201
 3761 1dde 3046     		mov	r0, r6
 3762 1de0 1549     		ldr	r1, .L1620+40
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 67


 3763 1de2 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 3764 1de6 0027     		movs	r7, #0
 3765 1de8 A368     		ldr	r3, [r4, #8]
 3766 1dea FEF783BD 		b	.L755
 3767              	.L203:
 3768 1dee 2046     		mov	r0, r4
 3769 1df0 0021     		movs	r1, #0
 3770 1df2 FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringEb
 3771 1df6 0028     		cmp	r0, #0
 3772 1df8 00F0E286 		beq	.L204
 3773 1dfc 0146     		mov	r1, r0
 3774 1dfe 2846     		mov	r0, r5
 3775 1e00 FFF7FEFF 		bl	_ZN6GCodes10DeleteFileEPKc
 3776 1e04 0027     		movs	r7, #0
 3777 1e06 A368     		ldr	r3, [r4, #8]
 3778 1e08 FEF774BD 		b	.L755
 3779              	.L1621:
 3780 1e0c AFF30080 		.align	3
 3781              	.L1620:
 3782 1e10 7B14AE47 		.word	1202590843
 3783 1e14 E17A843F 		.word	1065646817
 3784 1e18 00000000 		.word	.LANCHOR5
 3785 1e1c 00000000 		.word	reprap
 3786 1e20 B0000000 		.word	.LC11
 3787 1e24 A8000000 		.word	.LC10
 3788 1e28 54090000 		.word	.LC93
 3789 1e2c 8C090000 		.word	.LC94
 3790 1e30 1111913F 		.word	1066471697
 3791 1e34 88000000 		.word	.LC4
 3792 1e38 D4030000 		.word	.LC47
 3793 1e3c 00004843 		.word	1128792064
 3794              	.L608:
 3795 1e40 2846     		mov	r0, r5
 3796 1e42 2146     		mov	r1, r4
 3797 1e44 3246     		mov	r2, r6
 3798 1e46 FFF7FEFF 		bl	_ZN6GCodes10ManageToolER11GCodeBufferR9StringRef
 3799 1e4a 0027     		movs	r7, #0
 3800 1e4c A368     		ldr	r3, [r4, #8]
 3801 1e4e FEF751BD 		b	.L755
 3802              	.L609:
 3803 1e52 2046     		mov	r0, r4
 3804 1e54 5321     		movs	r1, #83
 3805 1e56 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3806 1e5a 0746     		mov	r7, r0
 3807 1e5c 0028     		cmp	r0, #0
 3808 1e5e 41F0B686 		bne	.L1522
 3809 1e62 95F85A12 		ldrb	r1, [r5, #602]	@ zero_extendqisi2
 3810 1e66 B54B     		ldr	r3, .L1622
 3811 1e68 B54A     		ldr	r2, .L1622+4
 3812 1e6a 3046     		mov	r0, r6
 3813 1e6c 0029     		cmp	r1, #0
 3814 1e6e 18BF     		it	ne
 3815 1e70 1A46     		movne	r2, r3
 3816 1e72 B449     		ldr	r1, .L1622+8
 3817 1e74 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 3818 1e78 A368     		ldr	r3, [r4, #8]
 3819 1e7a FEF73BBD 		b	.L755
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 68


 3820              	.L863:
 3821 1e7e D5F88431 		ldr	r3, [r5, #388]
 3822 1e82 002B     		cmp	r3, #0
 3823 1e84 01F0EE81 		beq	.L867
 3824 1e88 4FF00008 		mov	r8, #0
 3825 1e8c C246     		mov	r10, r8
 3826 1e8e AE4F     		ldr	r7, .L1622+12
 3827 1e90 B346     		mov	fp, r6
 3828 1e92 06E0     		b	.L868
 3829              	.L612:
 3830 1e94 D5F88431 		ldr	r3, [r5, #388]
 3831 1e98 08F10108 		add	r8, r8, #1
 3832 1e9c 4345     		cmp	r3, r8
 3833 1e9e 40F28383 		bls	.L1523
 3834              	.L868:
 3835 1ea2 2046     		mov	r0, r4
 3836 1ea4 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 3837 1ea8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3838 1eac 0028     		cmp	r0, #0
 3839 1eae F1D0     		beq	.L612
 3840 1eb0 2046     		mov	r0, r4
 3841 1eb2 2E68     		ldr	r6, [r5]
 3842 1eb4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3843 1eb8 D5F83012 		ldr	r1, [r5, #560]	@ float
 3844 1ebc FFF7FEFF 		bl	__aeabi_fmul
 3845 1ec0 A249     		ldr	r1, .L1622+16
 3846 1ec2 FFF7FEFF 		bl	__aeabi_fmul
 3847 1ec6 08F15609 		add	r9, r8, #86
 3848 1eca 06EB8909 		add	r9, r6, r9, lsl #2
 3849 1ece 4FF0010A 		mov	r10, #1
 3850 1ed2 C9F80400 		str	r0, [r9, #4]	@ float
 3851 1ed6 DDE7     		b	.L612
 3852              	.L626:
 3853 1ed8 2046     		mov	r0, r4
 3854 1eda 5021     		movs	r1, #80
 3855 1edc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3856 1ee0 0028     		cmp	r0, #0
 3857 1ee2 3EF447AF 		beq	.L556
 3858 1ee6 2046     		mov	r0, r4
 3859 1ee8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3860 1eec 4FFA80F9 		sxtb	r9, r0
 3861 1ef0 4946     		mov	r1, r9
 3862 1ef2 9748     		ldr	r0, .L1622+20
 3863 1ef4 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 3864 1ef8 8346     		mov	fp, r0
 3865 1efa 0028     		cmp	r0, #0
 3866 1efc 02F0DC86 		beq	.L1524
 3867 1f00 2046     		mov	r0, r4
 3868 1f02 4521     		movs	r1, #69
 3869 1f04 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3870 1f08 8046     		mov	r8, r0
 3871 1f0a 0028     		cmp	r0, #0
 3872 1f0c 02F03486 		beq	.L628
 3873 1f10 DBF83870 		ldr	r7, [fp, #56]
 3874 1f14 14AA     		add	r2, sp, #80
 3875 1f16 0023     		movs	r3, #0
 3876 1f18 1AA9     		add	r1, sp, #104
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 69


 3877 1f1a 2046     		mov	r0, r4
 3878 1f1c 1497     		str	r7, [sp, #80]
 3879 1f1e FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 3880 1f22 149A     		ldr	r2, [sp, #80]
 3881 1f24 DBF83830 		ldr	r3, [fp, #56]
 3882 1f28 9A42     		cmp	r2, r3
 3883 1f2a 03F08E82 		beq	.L629
 3884 1f2e 3046     		mov	r0, r6
 3885 1f30 8849     		ldr	r1, .L1622+24
 3886 1f32 04F10C02 		add	r2, r4, #12
 3887 1f36 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 3888              	.L630:
 3889 1f3a A368     		ldr	r3, [r4, #8]
 3890 1f3c 0027     		movs	r7, #0
 3891 1f3e FEF7D9BC 		b	.L755
 3892              	.L605:
 3893 1f42 834B     		ldr	r3, .L1622+20
 3894 1f44 0027     		movs	r7, #0
 3895 1f46 9868     		ldr	r0, [r3, #8]
 3896 1f48 FFF7FEFF 		bl	_ZN4Move20SetIdentityTransformEv
 3897 1f4c A368     		ldr	r3, [r4, #8]
 3898 1f4e FEF7D1BC 		b	.L755
 3899              	.L602:
 3900 1f52 2046     		mov	r0, r4
 3901 1f54 5021     		movs	r1, #80
 3902 1f56 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3903 1f5a 0028     		cmp	r0, #0
 3904 1f5c 41F07985 		bne	.L1525
 3905 1f60 7D4F     		ldr	r7, .L1622+28
 3906              	.L603:
 3907 1f62 7E4A     		ldr	r2, .L1622+32
 3908 1f64 2846     		mov	r0, r5
 3909 1f66 2146     		mov	r1, r4
 3910 1f68 3B46     		mov	r3, r7
 3911 1f6a FFF7FEFF 		bl	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_
 3912 1f6e 3A46     		mov	r2, r7
 3913 1f70 0028     		cmp	r0, #0
 3914 1f72 00F0CE86 		beq	.L604
 3915 1f76 3046     		mov	r0, r6
 3916 1f78 7949     		ldr	r1, .L1622+36
 3917 1f7a FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 3918 1f7e 0027     		movs	r7, #0
 3919 1f80 A368     		ldr	r3, [r4, #8]
 3920 1f82 FEF7B7BC 		b	.L755
 3921              	.L256:
 3922 1f86 2846     		mov	r0, r5
 3923 1f88 2146     		mov	r1, r4
 3924 1f8a FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 3925 1f8e 0028     		cmp	r0, #0
 3926 1f90 3EF425AE 		beq	.L546
 3927 1f94 2846     		mov	r0, r5
 3928 1f96 2146     		mov	r1, r4
 3929 1f98 0122     		movs	r2, #1
 3930 1f9a FFF7FEFF 		bl	_ZN6GCodes15RetractFilamentER11GCodeBufferb
 3931 1f9e 0027     		movs	r7, #0
 3932 1fa0 8146     		mov	r9, r0
 3933 1fa2 FFF7A4B8 		b	.L172
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 70


 3934              	.L257:
 3935 1fa6 2046     		mov	r0, r4
 3936 1fa8 5321     		movs	r1, #83
 3937 1faa FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3938 1fae 0028     		cmp	r0, #0
 3939 1fb0 41F07982 		bne	.L258
 3940 1fb4 0746     		mov	r7, r0
 3941 1fb6 A368     		ldr	r3, [r4, #8]
 3942 1fb8 FEF79CBC 		b	.L755
 3943              	.L650:
 3944 1fbc 2046     		mov	r0, r4
 3945 1fbe 4821     		movs	r1, #72
 3946 1fc0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3947 1fc4 0746     		mov	r7, r0
 3948 1fc6 2046     		mov	r0, r4
 3949 1fc8 002F     		cmp	r7, #0
 3950 1fca 00F0FC86 		beq	.L651
 3951 1fce FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3952 1fd2 0023     		movs	r3, #0
 3953 1fd4 0628     		cmp	r0, #6
 3954 1fd6 0746     		mov	r7, r0
 3955 1fd8 8DF84C30 		strb	r3, [sp, #76]
 3956 1fdc 42F2F883 		bls	.L1526
 3957              	.L652:
 3958 1fe0 A368     		ldr	r3, [r4, #8]
 3959 1fe2 0027     		movs	r7, #0
 3960 1fe4 FEF786BC 		b	.L755
 3961              	.L403:
 3962 1fe8 2846     		mov	r0, r5
 3963 1fea 2146     		mov	r1, r4
 3964 1fec FFF7FEFF 		bl	_ZN6GCodes10OffsetAxesER11GCodeBuffer
 3965 1ff0 0027     		movs	r7, #0
 3966 1ff2 8146     		mov	r9, r0
 3967 1ff4 FFF77BB8 		b	.L172
 3968              	.L404:
 3969 1ff8 2046     		mov	r0, r4
 3970 1ffa 5321     		movs	r1, #83
 3971 1ffc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3972 2000 0028     		cmp	r0, #0
 3973 2002 41F05783 		bne	.L1527
 3974 2006 0746     		mov	r7, r0
 3975              	.L405:
 3976 2008 2046     		mov	r0, r4
 3977 200a 5221     		movs	r1, #82
 3978 200c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3979 2010 0028     		cmp	r0, #0
 3980 2012 41F03883 		bne	.L1528
 3981              	.L408:
 3982 2016 2046     		mov	r0, r4
 3983 2018 4621     		movs	r1, #70
 3984 201a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3985 201e 0028     		cmp	r0, #0
 3986 2020 41F01583 		bne	.L1529
 3987              	.L411:
 3988 2024 2046     		mov	r0, r4
 3989 2026 5421     		movs	r1, #84
 3990 2028 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 71


 3991 202c 0028     		cmp	r0, #0
 3992 202e 41F0DB82 		bne	.L1530
 3993 2032 2046     		mov	r0, r4
 3994 2034 5A21     		movs	r1, #90
 3995 2036 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3996 203a 0028     		cmp	r0, #0
 3997 203c 41F0F282 		bne	.L417
 3998 2040 002F     		cmp	r7, #0
 3999 2042 01F04D82 		beq	.L422
 4000              	.L418:
 4001 2046 A368     		ldr	r3, [r4, #8]
 4002 2048 0027     		movs	r7, #0
 4003 204a FEF753BC 		b	.L755
 4004              	.L557:
 4005 204e 2046     		mov	r0, r4
 4006 2050 5021     		movs	r1, #80
 4007 2052 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4008 2056 0028     		cmp	r0, #0
 4009 2058 41F0EB84 		bne	.L1531
 4010 205c 2046     		mov	r0, r4
 4011 205e 5321     		movs	r1, #83
 4012 2060 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4013 2064 8046     		mov	r8, r0
 4014 2066 0028     		cmp	r0, #0
 4015 2068 41F0D584 		bne	.L899
 4016 206c DFF8E090 		ldr	r9, .L1622+20
 4017 2070 2F68     		ldr	r7, [r5]
 4018 2072 D9F80400 		ldr	r0, [r9, #4]
 4019 2076 FFF7FEFF 		bl	_ZNK7Network12GetIPAddressEv
 4020 207a D9F80430 		ldr	r3, [r9, #4]
 4021 207e 97F89920 		ldrb	r2, [r7, #153]	@ zero_extendqisi2
 4022 2082 93F815E0 		ldrb	lr, [r3, #21]	@ zero_extendqisi2
 4023 2086 97F89830 		ldrb	r3, [r7, #152]	@ zero_extendqisi2
 4024 208a 0092     		str	r2, [sp]
 4025 208c 0146     		mov	r1, r0
 4026 208e 97F89A00 		ldrb	r0, [r7, #154]	@ zero_extendqisi2
 4027 2092 344A     		ldr	r2, .L1622+40
 4028 2094 0190     		str	r0, [sp, #4]
 4029 2096 97F89B00 		ldrb	r0, [r7, #155]	@ zero_extendqisi2
 4030 209a 334F     		ldr	r7, .L1622+44
 4031 209c 0290     		str	r0, [sp, #8]
 4032 209e 0878     		ldrb	r0, [r1]	@ zero_extendqisi2
 4033 20a0 BEF1000F 		cmp	lr, #0
 4034 20a4 18BF     		it	ne
 4035 20a6 3A46     		movne	r2, r7
 4036 20a8 0390     		str	r0, [sp, #12]
 4037 20aa 4878     		ldrb	r0, [r1, #1]	@ zero_extendqisi2
 4038 20ac 0490     		str	r0, [sp, #16]
 4039 20ae 8F78     		ldrb	r7, [r1, #2]	@ zero_extendqisi2
 4040 20b0 3046     		mov	r0, r6
 4041 20b2 0597     		str	r7, [sp, #20]
 4042 20b4 CF78     		ldrb	r7, [r1, #3]	@ zero_extendqisi2
 4043 20b6 2D49     		ldr	r1, .L1622+48
 4044 20b8 0697     		str	r7, [sp, #24]
 4045 20ba FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 4046 20be 4746     		mov	r7, r8
 4047 20c0 A368     		ldr	r3, [r4, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 72


 4048 20c2 FEF717BC 		b	.L755
 4049              	.L563:
 4050 20c6 2046     		mov	r0, r4
 4051 20c8 5021     		movs	r1, #80
 4052 20ca FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4053 20ce 0746     		mov	r7, r0
 4054 20d0 0028     		cmp	r0, #0
 4055 20d2 00F09B86 		beq	.L564
 4056 20d6 2846     		mov	r0, r5
 4057 20d8 2146     		mov	r1, r4
 4058 20da 40F22922 		movw	r2, #553
 4059 20de FFF7FEFF 		bl	_ZN6GCodes18SetEthernetAddressER11GCodeBufferi
 4060 20e2 0027     		movs	r7, #0
 4061 20e4 A368     		ldr	r3, [r4, #8]
 4062 20e6 FEF705BC 		b	.L755
 4063              	.L567:
 4064 20ea 2046     		mov	r0, r4
 4065 20ec 5021     		movs	r1, #80
 4066 20ee FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4067 20f2 0028     		cmp	r0, #0
 4068 20f4 00F01586 		beq	.L568
 4069 20f8 2046     		mov	r0, r4
 4070 20fa 2F68     		ldr	r7, [r5]
 4071 20fc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4072 2100 C1B2     		uxtb	r1, r0
 4073 2102 3846     		mov	r0, r7
 4074 2104 FFF7FEFF 		bl	_ZN8Platform12SetEmulatingE13Compatibility
 4075 2108 0027     		movs	r7, #0
 4076 210a A368     		ldr	r3, [r4, #8]
 4077 210c FEF7F2BB 		b	.L755
 4078              	.L252:
 4079 2110 2046     		mov	r0, r4
 4080 2112 5021     		movs	r1, #80
 4081 2114 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4082 2118 0028     		cmp	r0, #0
 4083 211a 3EF435AE 		beq	.L253
 4084 211e 2046     		mov	r0, r4
 4085 2120 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 4086 2124 0027     		movs	r7, #0
 4087 2126 0246     		mov	r2, r0
 4088 2128 0123     		movs	r3, #1
 4089 212a 0097     		str	r7, [sp]
 4090 212c 2846     		mov	r0, r5
 4091 212e 2146     		mov	r1, r4
 4092 2130 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 4093 2134 A368     		ldr	r3, [r4, #8]
 4094 2136 FEF7DDBB 		b	.L755
 4095              	.L1623:
 4096 213a 00BF     		.align	2
 4097              	.L1622:
 4098 213c 1C010000 		.word	.LC21
 4099 2140 A4000000 		.word	.LC9
 4100 2144 BC0E0000 		.word	.LC134
 4101 2148 00000000 		.word	_ZN6GCodes11axisLettersE
 4102 214c 8988883C 		.word	1015580809
 4103 2150 00000000 		.word	reprap
 4104 2154 FC0E0000 		.word	.LC136
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 73


 4105 2158 10010000 		.word	.LC20
 4106 215c 9C0E0000 		.word	.LC132
 4107 2160 D4030000 		.word	.LC47
 4108 2164 F8000000 		.word	.LC18
 4109 2168 F0000000 		.word	.LC17
 4110 216c 880C0000 		.word	.LC116
 4111              	.L667:
 4112 2170 2046     		mov	r0, r4
 4113 2172 5321     		movs	r1, #83
 4114 2174 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4115 2178 0028     		cmp	r0, #0
 4116 217a 41F04284 		bne	.L1532
 4117 217e 4FF0010A 		mov	r10, #1
 4118              	.L668:
 4119 2182 D5F88431 		ldr	r3, [r5, #388]
 4120 2186 002B     		cmp	r3, #0
 4121 2188 01F06983 		beq	.L675
 4122 218c 4FF00008 		mov	r8, #0
 4123 2190 BC4F     		ldr	r7, .L1624
 4124 2192 C146     		mov	r9, r8
 4125 2194 06E0     		b	.L674
 4126              	.L672:
 4127 2196 D5F88431 		ldr	r3, [r5, #388]
 4128 219a 08F10108 		add	r8, r8, #1
 4129 219e 4345     		cmp	r3, r8
 4130 21a0 40F2CB83 		bls	.L1533
 4131              	.L674:
 4132 21a4 2046     		mov	r0, r4
 4133 21a6 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 4134 21aa FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4135 21ae 0028     		cmp	r0, #0
 4136 21b0 F1D0     		beq	.L672
 4137 21b2 2046     		mov	r0, r4
 4138 21b4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4139 21b8 0328     		cmp	r0, #3
 4140 21ba ECD8     		bhi	.L672
 4141 21bc 2B68     		ldr	r3, [r5]
 4142 21be 08F59F71 		add	r1, r8, #318
 4143 21c2 03EB0802 		add	r2, r3, r8
 4144 21c6 43F82100 		str	r0, [r3, r1, lsl #2]
 4145 21ca 4FF00109 		mov	r9, #1
 4146 21ce 82F810A5 		strb	r10, [r2, #1296]
 4147 21d2 E0E7     		b	.L672
 4148              	.L680:
 4149 21d4 2046     		mov	r0, r4
 4150 21d6 5021     		movs	r1, #80
 4151 21d8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4152 21dc 0028     		cmp	r0, #0
 4153 21de 3EF4C9AD 		beq	.L556
 4154 21e2 2046     		mov	r0, r4
 4155 21e4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4156 21e8 0228     		cmp	r0, #2
 4157 21ea 8046     		mov	r8, r0
 4158 21ec 3FF694AD 		bhi	.L666
 4159 21f0 2046     		mov	r0, r4
 4160 21f2 4221     		movs	r1, #66
 4161 21f4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 74


 4162 21f8 0028     		cmp	r0, #0
 4163 21fa 43F0ED80 		bne	.L1534
 4164 21fe 0746     		mov	r7, r0
 4165              	.L681:
 4166 2200 2046     		mov	r0, r4
 4167 2202 5321     		movs	r1, #83
 4168 2204 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4169 2208 0028     		cmp	r0, #0
 4170 220a 43F0CB80 		bne	.L1535
 4171 220e 002F     		cmp	r7, #0
 4172 2210 03F03881 		beq	.L686
 4173 2214 0746     		mov	r7, r0
 4174 2216 A368     		ldr	r3, [r4, #8]
 4175 2218 FEF76CBB 		b	.L755
 4176              	.L638:
 4177 221c 2046     		mov	r0, r4
 4178 221e 5021     		movs	r1, #80
 4179 2220 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4180 2224 0028     		cmp	r0, #0
 4181 2226 3EF4A5AD 		beq	.L556
 4182 222a 2046     		mov	r0, r4
 4183 222c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4184 2230 0828     		cmp	r0, #8
 4185 2232 8046     		mov	r8, r0
 4186 2234 3FF670AD 		bhi	.L666
 4187 2238 2046     		mov	r0, r4
 4188 223a 5321     		movs	r1, #83
 4189 223c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4190 2240 0028     		cmp	r0, #0
 4191 2242 02F06F87 		beq	.L969
 4192 2246 2846     		mov	r0, r5
 4193 2248 2146     		mov	r1, r4
 4194 224a FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4195 224e 0028     		cmp	r0, #0
 4196 2250 3EF4C5AC 		beq	.L546
 4197 2254 2046     		mov	r0, r4
 4198 2256 2F68     		ldr	r7, [r5]
 4199 2258 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4200 225c 0030     		adds	r0, r0, #0
 4201 225e 4744     		add	r7, r7, r8
 4202 2260 18BF     		it	ne
 4203 2262 0120     		movne	r0, #1
 4204 2264 87F8CD00 		strb	r0, [r7, #205]
 4205 2268 4FF00109 		mov	r9, #1
 4206              	.L640:
 4207 226c 2046     		mov	r0, r4
 4208 226e 5221     		movs	r1, #82
 4209 2270 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4210 2274 B8B1     		cbz	r0, .L641
 4211 2276 2846     		mov	r0, r5
 4212 2278 2146     		mov	r1, r4
 4213 227a FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4214 227e 0028     		cmp	r0, #0
 4215 2280 3EF4ADAC 		beq	.L546
 4216 2284 2046     		mov	r0, r4
 4217 2286 2F68     		ldr	r7, [r5]
 4218 2288 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 75


 4219 228c 0030     		adds	r0, r0, #0
 4220 228e 18BF     		it	ne
 4221 2290 0120     		movne	r0, #1
 4222 2292 07EB0803 		add	r3, r7, r8
 4223 2296 83F8D600 		strb	r0, [r3, #214]
 4224 229a 4146     		mov	r1, r8
 4225 229c 3846     		mov	r0, r7
 4226 229e FFF7FEFF 		bl	_ZN8Platform13DisableDriverEj
 4227 22a2 4FF00109 		mov	r9, #1
 4228              	.L641:
 4229 22a6 2046     		mov	r0, r4
 4230 22a8 5421     		movs	r1, #84
 4231 22aa FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4232 22ae 50B1     		cbz	r0, .L642
 4233 22b0 2046     		mov	r0, r4
 4234 22b2 2F68     		ldr	r7, [r5]
 4235 22b4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 4236 22b8 4146     		mov	r1, r8
 4237 22ba 0246     		mov	r2, r0
 4238 22bc 3846     		mov	r0, r7
 4239 22be FFF7FEFF 		bl	_ZN8Platform19SetDriverStepTimingEjf
 4240 22c2 4FF00109 		mov	r9, #1
 4241              	.L642:
 4242 22c6 D5F88431 		ldr	r3, [r5, #388]
 4243 22ca 002B     		cmp	r3, #0
 4244 22cc 03F09E80 		beq	.L643
 4245 22d0 4FF0000A 		mov	r10, #0
 4246 22d4 6B4F     		ldr	r7, .L1624
 4247 22d6 D346     		mov	fp, r10
 4248              	.L646:
 4249 22d8 17F80A10 		ldrb	r1, [r7, r10]	@ zero_extendqisi2
 4250 22dc 2046     		mov	r0, r4
 4251 22de FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4252 22e2 D5F88431 		ldr	r3, [r5, #388]
 4253 22e6 0028     		cmp	r0, #0
 4254 22e8 0AF1010A 		add	r10, r10, #1
 4255 22ec 18BF     		it	ne
 4256 22ee 4FF0010B 		movne	fp, #1
 4257 22f2 5345     		cmp	r3, r10
 4258 22f4 F0D8     		bhi	.L646
 4259 22f6 2046     		mov	r0, r4
 4260 22f8 4521     		movs	r1, #69
 4261 22fa FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4262 22fe 0028     		cmp	r0, #0
 4263 2300 43F08B80 		bne	.L647
 4264 2304 BBF1000F 		cmp	fp, #0
 4265 2308 43F08780 		bne	.L647
 4266              	.L648:
 4267 230c B9F1000F 		cmp	r9, #0
 4268 2310 03F08681 		beq	.L649
 4269 2314 A368     		ldr	r3, [r4, #8]
 4270 2316 0027     		movs	r7, #0
 4271 2318 FEF7ECBA 		b	.L755
 4272              	.L656:
 4273 231c 2046     		mov	r0, r4
 4274 231e 5021     		movs	r1, #80
 4275 2320 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 76


 4276 2324 0028     		cmp	r0, #0
 4277 2326 00F08485 		beq	.L971
 4278 232a 2046     		mov	r0, r4
 4279 232c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4280 2330 0146     		mov	r1, r0
 4281 2332 8046     		mov	r8, r0
 4282 2334 2868     		ldr	r0, [r5]
 4283 2336 FFF7FEFF 		bl	_ZN8Platform28SetExtrusionAncilliaryPwmPinEi
 4284 233a 0746     		mov	r7, r0
 4285 233c 0028     		cmp	r0, #0
 4286 233e 02F08082 		beq	.L1536
 4287 2342 0127     		movs	r7, #1
 4288              	.L657:
 4289 2344 2046     		mov	r0, r4
 4290 2346 4621     		movs	r1, #70
 4291 2348 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4292 234c 0028     		cmp	r0, #0
 4293 234e 41F0F185 		bne	.L1537
 4294              	.L658:
 4295 2352 2046     		mov	r0, r4
 4296 2354 5321     		movs	r1, #83
 4297 2356 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4298 235a 0028     		cmp	r0, #0
 4299 235c 41F0E085 		bne	.L1538
 4300 2360 002F     		cmp	r7, #0
 4301 2362 01F0B385 		beq	.L660
 4302 2366 0746     		mov	r7, r0
 4303 2368 A368     		ldr	r3, [r4, #8]
 4304 236a FEF7C3BA 		b	.L755
 4305              	.L208:
 4306 236e 2046     		mov	r0, r4
 4307 2370 5321     		movs	r1, #83
 4308 2372 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4309 2376 0746     		mov	r7, r0
 4310 2378 0028     		cmp	r0, #0
 4311 237a 41F0A384 		bne	.L1539
 4312 237e 424B     		ldr	r3, .L1624+4
 4313 2380 95F8A882 		ldrb	r8, [r5, #680]	@ zero_extendqisi2
 4314 2384 9968     		ldr	r1, [r3, #8]
 4315 2386 414A     		ldr	r2, .L1624+8
 4316 2388 414B     		ldr	r3, .L1624+12
 4317 238a 886A     		ldr	r0, [r1, #40]	@ float
 4318 238c B8F1000F 		cmp	r8, #0
 4319 2390 0CBF     		ite	eq
 4320 2392 9046     		moveq	r8, r2
 4321 2394 9846     		movne	r8, r3
 4322 2396 FFF7FEFF 		bl	__aeabi_f2d
 4323 239a CDE90001 		strd	r0, [sp]
 4324 239e D5F8A402 		ldr	r0, [r5, #676]	@ float
 4325 23a2 FFF7FEFF 		bl	__aeabi_f2d
 4326 23a6 4246     		mov	r2, r8
 4327 23a8 CDE90201 		strd	r0, [sp, #8]
 4328 23ac 3046     		mov	r0, r6
 4329 23ae 3949     		ldr	r1, .L1624+16
 4330 23b0 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 4331 23b4 A368     		ldr	r3, [r4, #8]
 4332 23b6 FEF79DBA 		b	.L755
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 77


 4333              	.L446:
 4334 23ba 0DF1680A 		add	r10, sp, #104
 4335 23be 0027     		movs	r7, #0
 4336 23c0 14AB     		add	r3, sp, #80
 4337 23c2 5246     		mov	r2, r10
 4338 23c4 2046     		mov	r0, r4
 4339 23c6 4421     		movs	r1, #68
 4340 23c8 CAF80070 		str	r7, [r10]
 4341 23cc FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 4342 23d0 DAF80030 		ldr	r3, [r10]
 4343 23d4 BB42     		cmp	r3, r7
 4344 23d6 04DB     		blt	.L448
 4345 23d8 D5F88821 		ldr	r2, [r5, #392]
 4346 23dc 9342     		cmp	r3, r2
 4347 23de C1F23F86 		blt	.L1540
 4348              	.L448:
 4349 23e2 A368     		ldr	r3, [r4, #8]
 4350 23e4 0027     		movs	r7, #0
 4351 23e6 FEF785BA 		b	.L755
 4352              	.L606:
 4353 23ea 2046     		mov	r0, r4
 4354 23ec 5021     		movs	r1, #80
 4355 23ee FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4356 23f2 0028     		cmp	r0, #0
 4357 23f4 3EF4BEAC 		beq	.L556
 4358 23f8 2046     		mov	r0, r4
 4359 23fa FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4360 23fe 0628     		cmp	r0, #6
 4361 2400 02F22281 		bhi	.L607
 4362 2404 41B2     		sxtb	r1, r0
 4363 2406 2048     		ldr	r0, .L1624+4
 4364 2408 FFF7FEFF 		bl	_ZN6RepRap21ClearTemperatureFaultEa
 4365 240c 0027     		movs	r7, #0
 4366 240e A368     		ldr	r3, [r4, #8]
 4367 2410 FEF770BA 		b	.L755
 4368              	.L230:
 4369 2414 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 4370 2416 12F00107 		ands	r7, r2, #1
 4371 241a 3EF46BAA 		beq	.L755
 4372 241e 0023     		movs	r3, #0
 4373 2420 C5F8A431 		str	r3, [r5, #420]	@ float
 4374 2424 C5F8A831 		str	r3, [r5, #424]	@ float
 4375 2428 C5F8AC31 		str	r3, [r5, #428]	@ float
 4376 242c C5F8B031 		str	r3, [r5, #432]	@ float
 4377 2430 C5F8B431 		str	r3, [r5, #436]	@ float
 4378 2434 C5F8B831 		str	r3, [r5, #440]	@ float
 4379 2438 A368     		ldr	r3, [r4, #8]
 4380 243a 0027     		movs	r7, #0
 4381 243c 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 4382 243e 6FF30002 		bfc	r2, #0, #1
 4383 2442 5A74     		strb	r2, [r3, #17]
 4384 2444 A368     		ldr	r3, [r4, #8]
 4385 2446 FEF755BA 		b	.L755
 4386              	.L216:
 4387 244a 2846     		mov	r0, r5
 4388 244c 2146     		mov	r1, r4
 4389 244e FFF7FEFF 		bl	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 78


 4390 2452 0028     		cmp	r0, #0
 4391 2454 3EF4C3AB 		beq	.L546
 4392 2458 D5F80C33 		ldr	r3, [r5, #780]
 4393 245c 002B     		cmp	r3, #0
 4394 245e 02F06383 		beq	.L1541
 4395 2462 2846     		mov	r0, r5
 4396 2464 3146     		mov	r1, r6
 4397 2466 FFF7FEFF 		bl	_ZN6GCodes11AdvanceHashER9StringRef
 4398 246a 8146     		mov	r9, r0
 4399              	.L1454:
 4400 246c 0027     		movs	r7, #0
 4401 246e FEF73EBE 		b	.L172
 4402              	.L254:
 4403 2472 2846     		mov	r0, r5
 4404 2474 2146     		mov	r1, r4
 4405 2476 FFF7FEFF 		bl	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer
 4406 247a 0027     		movs	r7, #0
 4407 247c A368     		ldr	r3, [r4, #8]
 4408 247e FEF739BA 		b	.L755
 4409              	.L1625:
 4410 2482 00BF     		.align	2
 4411              	.L1624:
 4412 2484 00000000 		.word	_ZN6GCodes11axisLettersE
 4413 2488 00000000 		.word	reprap
 4414 248c 98000000 		.word	.LC6
 4415 2490 94000000 		.word	.LC5
 4416 2494 30040000 		.word	.LC50
 4417              	.L864:
 4418 2498 D5F88431 		ldr	r3, [r5, #388]
 4419 249c 002B     		cmp	r3, #0
 4420 249e 00F08E82 		beq	.L999
 4421 24a2 4FF00008 		mov	r8, #0
 4422 24a6 C246     		mov	r10, r8
 4423 24a8 BC4F     		ldr	r7, .L1626
 4424 24aa 40F2913B 		movw	fp, #913
 4425 24ae 06E0     		b	.L866
 4426              	.L813:
 4427 24b0 D5F88431 		ldr	r3, [r5, #388]
 4428 24b4 08F10108 		add	r8, r8, #1
 4429 24b8 4345     		cmp	r3, r8
 4430 24ba 40F28182 		bls	.L865
 4431              	.L866:
 4432 24be 2046     		mov	r0, r4
 4433 24c0 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 4434 24c4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4435 24c8 0028     		cmp	r0, #0
 4436 24ca F1D0     		beq	.L813
 4437 24cc 2846     		mov	r0, r5
 4438 24ce 2146     		mov	r1, r4
 4439 24d0 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4440 24d4 0028     		cmp	r0, #0
 4441 24d6 3EF482AB 		beq	.L546
 4442 24da 2046     		mov	r0, r4
 4443 24dc D5F800A0 		ldr	r10, [r5]
 4444 24e0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 4445 24e4 0246     		mov	r2, r0
 4446 24e6 5046     		mov	r0, r10
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 79


 4447 24e8 B9EB0B0A 		subs	r10, r9, fp
 4448 24ec DAF10003 		rsbs	r3, r10, #0
 4449 24f0 53EB0A03 		adcs	r3, r3, r10
 4450 24f4 4146     		mov	r1, r8
 4451 24f6 FFF7FEFF 		bl	_ZN8Platform15SetMotorCurrentEjfb
 4452 24fa 4FF0010A 		mov	r10, #1
 4453 24fe D7E7     		b	.L813
 4454              	.L998:
 4455 2500 0027     		movs	r7, #0
 4456 2502 FEF7F7B9 		b	.L755
 4457              	.L857:
 4458 2506 3046     		mov	r0, r6
 4459 2508 A549     		ldr	r1, .L1626+4
 4460 250a 04F10C02 		add	r2, r4, #12
 4461 250e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 4462 2512 0127     		movs	r7, #1
 4463 2514 A368     		ldr	r3, [r4, #8]
 4464 2516 FEF7EDB9 		b	.L755
 4465              	.L165:
 4466 251a A249     		ldr	r1, .L1626+8
 4467 251c D8F80000 		ldr	r0, [r8]
 4468 2520 0DF16902 		add	r2, sp, #105
 4469 2524 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 4470 2528 2B68     		ldr	r3, [r5]
 4471 252a 5146     		mov	r1, r10
 4472 252c D3F8B406 		ldr	r0, [r3, #1716]
 4473 2530 FFF7FEFF 		bl	_ZN11MassStorage8FindNextER8FileInfo
 4474 2534 0028     		cmp	r0, #0
 4475 2536 F0D1     		bne	.L165
 4476 2538 FFF72AB8 		b	.L158
 4477              	.L859:
 4478 253c 2371     		strb	r3, [r4, #4]
 4479 253e 2846     		mov	r0, r5
 4480 2540 2146     		mov	r1, r4
 4481 2542 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 4482 2546 2846     		mov	r0, r5
 4483 2548 2146     		mov	r1, r4
 4484 254a 3A46     		mov	r2, r7
 4485 254c 3368     		ldr	r3, [r6]
 4486 254e FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 4487 2552 FEF790B9 		b	.L1455
 4488              	.L502:
 4489 2556 CDF800A0 		str	r10, [sp]
 4490 255a D9F80060 		ldr	r6, [r9]
 4491 255e DFF858C2 		ldr	ip, .L1626+28
 4492 2562 DFF858E2 		ldr	lr, .L1626+32
 4493 2566 2868     		ldr	r0, [r5]
 4494 2568 002E     		cmp	r6, #0
 4495 256a 18BF     		it	ne
 4496 256c E646     		movne	lr, ip
 4497 256e CDF804E0 		str	lr, [sp, #4]
 4498 2572 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 4499 2576 4FF0010A 		mov	r10, #1
 4500 257a FFF7D9B9 		b	.L500
 4501              	.L127:
 4502 257e 2046     		mov	r0, r4
 4503 2580 4821     		movs	r1, #72
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 80


 4504 2582 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4505 2586 0028     		cmp	r0, #0
 4506 2588 41F0D981 		bne	.L490
 4507 258c 0746     		mov	r7, r0
 4508 258e A368     		ldr	r3, [r4, #8]
 4509 2590 FEF7B0B9 		b	.L755
 4510              	.L126:
 4511 2594 3346     		mov	r3, r6
 4512 2596 2846     		mov	r0, r5
 4513 2598 2146     		mov	r1, r4
 4514 259a 0122     		movs	r2, #1
 4515 259c FFF7FEFF 		bl	_ZN6GCodes16SetPidParametersER11GCodeBufferiR9StringRef
 4516 25a0 0027     		movs	r7, #0
 4517 25a2 A368     		ldr	r3, [r4, #8]
 4518 25a4 FEF7A6B9 		b	.L755
 4519              	.L1523:
 4520 25a8 2046     		mov	r0, r4
 4521 25aa 4521     		movs	r1, #69
 4522 25ac 5E46     		mov	r6, fp
 4523 25ae FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4524 25b2 0028     		cmp	r0, #0
 4525 25b4 40F05D86 		bne	.L886
 4526 25b8 BAF1000F 		cmp	r10, #0
 4527 25bc 01F0BA85 		beq	.L618
 4528 25c0 0746     		mov	r7, r0
 4529 25c2 A368     		ldr	r3, [r4, #8]
 4530 25c4 FEF796B9 		b	.L755
 4531              	.L129:
 4532 25c8 2846     		mov	r0, r5
 4533 25ca 2146     		mov	r1, r4
 4534 25cc FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4535 25d0 0028     		cmp	r0, #0
 4536 25d2 3EF404AB 		beq	.L546
 4537 25d6 7448     		ldr	r0, .L1626+12
 4538 25d8 0DF1680A 		add	r10, sp, #104
 4539 25dc 8768     		ldr	r7, [r0, #8]
 4540 25de FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 4541 25e2 5146     		mov	r1, r10
 4542 25e4 0346     		mov	r3, r0
 4543 25e6 0022     		movs	r2, #0
 4544 25e8 3846     		mov	r0, r7
 4545 25ea FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhm
 4546 25ee 2046     		mov	r0, r4
 4547 25f0 4C21     		movs	r1, #76
 4548 25f2 97F86CB4 		ldrb	fp, [r7, #1132]	@ zero_extendqisi2
 4549 25f6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4550 25fa 07F23449 		addw	r9, r7, #1076
 4551 25fe 0028     		cmp	r0, #0
 4552 2600 42F0BD81 		bne	.L1542
 4553 2604 8046     		mov	r8, r0
 4554              	.L773:
 4555 2606 2046     		mov	r0, r4
 4556 2608 5221     		movs	r1, #82
 4557 260a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4558 260e 0028     		cmp	r0, #0
 4559 2610 42F0A981 		bne	.L1543
 4560              	.L774:
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 81


 4561 2614 2046     		mov	r0, r4
 4562 2616 4221     		movs	r1, #66
 4563 2618 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4564 261c 0028     		cmp	r0, #0
 4565 261e 42F0D681 		bne	.L1544
 4566              	.L775:
 4567 2622 2046     		mov	r0, r4
 4568 2624 5821     		movs	r1, #88
 4569 2626 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4570 262a 0028     		cmp	r0, #0
 4571 262c 42F0C381 		bne	.L1545
 4572              	.L776:
 4573 2630 2046     		mov	r0, r4
 4574 2632 5921     		movs	r1, #89
 4575 2634 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4576 2638 0028     		cmp	r0, #0
 4577 263a 42F0D681 		bne	.L1546
 4578              	.L777:
 4579 263e 2046     		mov	r0, r4
 4580 2640 5A21     		movs	r1, #90
 4581 2642 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4582 2646 0028     		cmp	r0, #0
 4583 2648 41F0FF85 		bne	.L1547
 4584 264c 2046     		mov	r0, r4
 4585 264e 4821     		movs	r1, #72
 4586 2650 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4587 2654 0028     		cmp	r0, #0
 4588 2656 41F00586 		bne	.L779
 4589 265a B8F1000F 		cmp	r8, #0
 4590 265e 41F00986 		bne	.L780
 4591 2662 97F86C34 		ldrb	r3, [r7, #1132]	@ zero_extendqisi2
 4592 2666 002B     		cmp	r3, #0
 4593 2668 02F04782 		beq	.L785
 4594 266c D7F83C04 		ldr	r0, [r7, #1084]	@ float
 4595 2670 FFF7FEFF 		bl	__aeabi_f2d
 4596 2674 8046     		mov	r8, r0
 4597 2676 D7F84004 		ldr	r0, [r7, #1088]	@ float
 4598 267a 8946     		mov	r9, r1
 4599 267c FFF7FEFF 		bl	__aeabi_f2d
 4600 2680 CDE90001 		strd	r0, [sp]
 4601 2684 D7F86004 		ldr	r0, [r7, #1120]	@ float
 4602 2688 FFF7FEFF 		bl	__aeabi_f2d
 4603 268c CDE90201 		strd	r0, [sp, #8]
 4604 2690 D7F85C04 		ldr	r0, [r7, #1116]	@ float
 4605 2694 FFF7FEFF 		bl	__aeabi_f2d
 4606 2698 CDE90401 		strd	r0, [sp, #16]
 4607 269c D7F84404 		ldr	r0, [r7, #1092]	@ float
 4608 26a0 FFF7FEFF 		bl	__aeabi_f2d
 4609 26a4 CDE90601 		strd	r0, [sp, #24]
 4610 26a8 D7F84804 		ldr	r0, [r7, #1096]	@ float
 4611 26ac FFF7FEFF 		bl	__aeabi_f2d
 4612 26b0 CDE90801 		strd	r0, [sp, #32]
 4613 26b4 D7F84C04 		ldr	r0, [r7, #1100]	@ float
 4614 26b8 FFF7FEFF 		bl	__aeabi_f2d
 4615 26bc 4246     		mov	r2, r8
 4616 26be CDE90A01 		strd	r0, [sp, #40]
 4617 26c2 4B46     		mov	r3, r9
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 82


 4618 26c4 3046     		mov	r0, r6
 4619 26c6 3949     		ldr	r1, .L1626+16
 4620 26c8 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 4621              	.L784:
 4622 26cc A368     		ldr	r3, [r4, #8]
 4623 26ce 0027     		movs	r7, #0
 4624 26d0 FEF710B9 		b	.L755
 4625              	.L130:
 4626 26d4 2846     		mov	r0, r5
 4627 26d6 2146     		mov	r1, r4
 4628 26d8 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4629 26dc 0028     		cmp	r0, #0
 4630 26de 3EF47EAA 		beq	.L546
 4631 26e2 314B     		ldr	r3, .L1626+12
 4632 26e4 2046     		mov	r0, r4
 4633 26e6 5821     		movs	r1, #88
 4634 26e8 9F68     		ldr	r7, [r3, #8]
 4635 26ea FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4636 26ee 07F23448 		addw	r8, r7, #1076
 4637 26f2 0028     		cmp	r0, #0
 4638 26f4 42F0ED80 		bne	.L1548
 4639 26f8 8246     		mov	r10, r0
 4640              	.L786:
 4641 26fa 2046     		mov	r0, r4
 4642 26fc 5921     		movs	r1, #89
 4643 26fe FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4644 2702 0028     		cmp	r0, #0
 4645 2704 42F0D980 		bne	.L1549
 4646              	.L787:
 4647 2708 2046     		mov	r0, r4
 4648 270a 5A21     		movs	r1, #90
 4649 270c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4650 2710 0028     		cmp	r0, #0
 4651 2712 42F0C680 		bne	.L1550
 4652              	.L788:
 4653 2716 2046     		mov	r0, r4
 4654 2718 4121     		movs	r1, #65
 4655 271a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4656 271e 0028     		cmp	r0, #0
 4657 2720 41F06B85 		bne	.L1551
 4658 2724 2046     		mov	r0, r4
 4659 2726 4221     		movs	r1, #66
 4660 2728 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4661 272c 0028     		cmp	r0, #0
 4662 272e 41F07785 		bne	.L790
 4663 2732 BAF1000F 		cmp	r10, #0
 4664 2736 41F08185 		bne	.L791
 4665 273a D7F85004 		ldr	r0, [r7, #1104]	@ float
 4666 273e FFF7FEFF 		bl	__aeabi_f2d
 4667 2742 8046     		mov	r8, r0
 4668 2744 D7F85404 		ldr	r0, [r7, #1108]	@ float
 4669 2748 8946     		mov	r9, r1
 4670 274a FFF7FEFF 		bl	__aeabi_f2d
 4671 274e CDE90001 		strd	r0, [sp]
 4672 2752 D7F85804 		ldr	r0, [r7, #1112]	@ float
 4673 2756 FFF7FEFF 		bl	__aeabi_f2d
 4674 275a CDE90201 		strd	r0, [sp, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 83


 4675 275e D7F86404 		ldr	r0, [r7, #1124]	@ float
 4676 2762 FFF7FEFF 		bl	__aeabi_f2d
 4677 2766 0022     		movs	r2, #0
 4678 2768 114B     		ldr	r3, .L1626+20
 4679 276a FFF7FEFF 		bl	__aeabi_dmul
 4680 276e CDE90401 		strd	r0, [sp, #16]
 4681 2772 D7F86804 		ldr	r0, [r7, #1128]	@ float
 4682 2776 FFF7FEFF 		bl	__aeabi_f2d
 4683 277a 0022     		movs	r2, #0
 4684 277c 0C4B     		ldr	r3, .L1626+20
 4685 277e FFF7FEFF 		bl	__aeabi_dmul
 4686 2782 4B46     		mov	r3, r9
 4687 2784 CDE90601 		strd	r0, [sp, #24]
 4688 2788 4246     		mov	r2, r8
 4689 278a 3046     		mov	r0, r6
 4690 278c 0949     		ldr	r1, .L1626+24
 4691 278e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 4692 2792 5746     		mov	r7, r10
 4693 2794 A368     		ldr	r3, [r4, #8]
 4694 2796 FEF7ADB8 		b	.L755
 4695              	.L1627:
 4696 279a 00BF     		.align	2
 4697              	.L1626:
 4698 279c 00000000 		.word	_ZN6GCodes11axisLettersE
 4699 27a0 44150000 		.word	.LC183
 4700 27a4 0C020000 		.word	.LC35
 4701 27a8 00000000 		.word	reprap
 4702 27ac D4120000 		.word	.LC162
 4703 27b0 00005940 		.word	1079574528
 4704 27b4 58130000 		.word	.LC164
 4705 27b8 D4000000 		.word	.LC15
 4706 27bc A4000000 		.word	.LC9
 4707              	.L1456:
 4708 27c0 BBF1000F 		cmp	fp, #0
 4709 27c4 41F0B082 		bne	.L1552
 4710              	.L583:
 4711 27c8 2046     		mov	r0, r4
 4712 27ca 5021     		movs	r1, #80
 4713 27cc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4714 27d0 0028     		cmp	r0, #0
 4715 27d2 41F09E82 		bne	.L1553
 4716 27d6 0746     		mov	r7, r0
 4717              	.L588:
 4718 27d8 2868     		ldr	r0, [r5]
 4719 27da 0DF1680A 		add	r10, sp, #104
 4720 27de D0F89010 		ldr	r1, [r0, #144]
 4721 27e2 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersEl
 4722 27e6 D646     		mov	lr, r10
 4723 27e8 8446     		mov	ip, r0
 4724 27ea BCE80F00 		ldmia	ip!, {r0, r1, r2, r3}
 4725 27ee AEE80F00 		stmia	lr!, {r0, r1, r2, r3}
 4726 27f2 BCE80F00 		ldmia	ip!, {r0, r1, r2, r3}
 4727 27f6 AEE80F00 		stmia	lr!, {r0, r1, r2, r3}
 4728 27fa 9CE80F00 		ldmia	ip, {r0, r1, r2, r3}
 4729 27fe 8EE80F00 		stmia	lr, {r0, r1, r2, r3}
 4730 2802 2046     		mov	r0, r4
 4731 2804 4821     		movs	r1, #72
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 84


 4732 2806 20AA     		add	r2, sp, #128
 4733 2808 4346     		mov	r3, r8
 4734 280a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 4735 280e 2046     		mov	r0, r4
 4736 2810 4621     		movs	r1, #70
 4737 2812 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4738 2816 0028     		cmp	r0, #0
 4739 2818 41F08C82 		bne	.L1554
 4740              	.L589:
 4741 281c 2046     		mov	r0, r4
 4742 281e 5421     		movs	r1, #84
 4743 2820 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4744 2824 0028     		cmp	r0, #0
 4745 2826 41F01182 		bne	.L1555
 4746              	.L590:
 4747 282a 2046     		mov	r0, r4
 4748 282c 4921     		movs	r1, #73
 4749 282e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4750 2832 0028     		cmp	r0, #0
 4751 2834 41F04381 		bne	.L1556
 4752              	.L591:
 4753 2838 2046     		mov	r0, r4
 4754 283a 5221     		movs	r1, #82
 4755 283c 23AA     		add	r2, sp, #140
 4756 283e 4346     		mov	r3, r8
 4757 2840 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 4758 2844 4346     		mov	r3, r8
 4759 2846 2046     		mov	r0, r4
 4760 2848 5321     		movs	r1, #83
 4761 284a 24AA     		add	r2, sp, #144
 4762 284c FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 4763 2850 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 4764 2854 002B     		cmp	r3, #0
 4765 2856 59D1     		bne	.L1557
 4766              	.L592:
 4767 2858 BBF1000F 		cmp	fp, #0
 4768 285c 5DD1     		bne	.L594
 4769 285e 002F     		cmp	r7, #0
 4770 2860 5BD1     		bne	.L594
 4771 2862 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 4772 2866 002B     		cmp	r3, #0
 4773 2868 57D1     		bne	.L594
 4774 286a 2B68     		ldr	r3, [r5]
 4775 286c BA4A     		ldr	r2, .L1628
 4776 286e 9AF82C70 		ldrb	r7, [r10, #44]	@ zero_extendqisi2
 4777 2872 BA49     		ldr	r1, .L1628+4
 4778 2874 DAF81800 		ldr	r0, [r10, #24]	@ float
 4779 2878 D3F89080 		ldr	r8, [r3, #144]
 4780 287c 002F     		cmp	r7, #0
 4781 287e 0CBF     		ite	eq
 4782 2880 0F46     		moveq	r7, r1
 4783 2882 1746     		movne	r7, r2
 4784 2884 FFF7FEFF 		bl	__aeabi_f2d
 4785 2888 CDE90001 		strd	r0, [sp]
 4786 288c B449     		ldr	r1, .L1628+8
 4787 288e DAF81C00 		ldr	r0, [r10, #28]	@ float
 4788 2892 FFF7FEFF 		bl	__aeabi_fmul
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 85


 4789 2896 FFF7FEFF 		bl	__aeabi_f2iz
 4790 289a 0290     		str	r0, [sp, #8]
 4791 289c DAF82000 		ldr	r0, [r10, #32]	@ float
 4792 28a0 AF49     		ldr	r1, .L1628+8
 4793 28a2 FFF7FEFF 		bl	__aeabi_fmul
 4794 28a6 FFF7FEFF 		bl	__aeabi_f2iz
 4795 28aa 0390     		str	r0, [sp, #12]
 4796 28ac DAF82400 		ldr	r0, [r10, #36]	@ float
 4797 28b0 FFF7FEFF 		bl	__aeabi_f2d
 4798 28b4 3B46     		mov	r3, r7
 4799 28b6 CDE90401 		strd	r0, [sp, #16]
 4800 28ba 4246     		mov	r2, r8
 4801 28bc 3046     		mov	r0, r6
 4802 28be A949     		ldr	r1, .L1628+12
 4803 28c0 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 4804 28c4 2B68     		ldr	r3, [r5]
 4805 28c6 D3F89030 		ldr	r3, [r3, #144]
 4806 28ca 072B     		cmp	r3, #7
 4807 28cc 02F0F385 		beq	.L1558
 4808              	.L596:
 4809 28d0 3046     		mov	r0, r6
 4810 28d2 A549     		ldr	r1, .L1628+16
 4811 28d4 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 4812 28d8 D5F88421 		ldr	r2, [r5, #388]
 4813 28dc EAB1     		cbz	r2, .L594
 4814 28de DFF898A2 		ldr	r10, .L1628+32
 4815 28e2 0027     		movs	r7, #0
 4816 28e4 4FF00108 		mov	r8, #1
 4817 28e8 02E0     		b	.L598
 4818              	.L597:
 4819 28ea 0137     		adds	r7, r7, #1
 4820 28ec BA42     		cmp	r2, r7
 4821 28ee 14D9     		bls	.L594
 4822              	.L598:
 4823 28f0 08FA07F3 		lsl	r3, r8, r7
 4824 28f4 13EA090F 		tst	r3, r9
 4825 28f8 F7D0     		beq	.L597
 4826 28fa 1AF80720 		ldrb	r2, [r10, r7]	@ zero_extendqisi2
 4827 28fe 3046     		mov	r0, r6
 4828 2900 9A49     		ldr	r1, .L1628+20
 4829 2902 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 4830 2906 D5F88421 		ldr	r2, [r5, #388]
 4831 290a EEE7     		b	.L597
 4832              	.L1557:
 4833 290c 2868     		ldr	r0, [r5]
 4834 290e 5246     		mov	r2, r10
 4835 2910 D0F89010 		ldr	r1, [r0, #144]
 4836 2914 FFF7FEFF 		bl	_ZN8Platform19SetZProbeParametersElRK16ZProbeParameters
 4837 2918 9EE7     		b	.L592
 4838              	.L594:
 4839 291a A368     		ldr	r3, [r4, #8]
 4840 291c 0027     		movs	r7, #0
 4841 291e FDF7E9BF 		b	.L755
 4842              	.L1475:
 4843 2922 B9F1000F 		cmp	r9, #0
 4844 2926 01F0D880 		beq	.L432
 4845 292a A368     		ldr	r3, [r4, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 86


 4846 292c 0027     		movs	r7, #0
 4847 292e FDF7E1BF 		b	.L755
 4848              	.L429:
 4849 2932 43F82200 		str	r0, [r3, r2, lsl #2]	@ float
 4850 2936 FEF782BA 		b	.L428
 4851              	.L1533:
 4852 293a B9F1000F 		cmp	r9, #0
 4853 293e 00F08E87 		beq	.L675
 4854 2942 A368     		ldr	r3, [r4, #8]
 4855 2944 0027     		movs	r7, #0
 4856 2946 FDF7D5BF 		b	.L755
 4857              	.L1487:
 4858 294a 2046     		mov	r0, r4
 4859 294c 4521     		movs	r1, #69
 4860 294e 5646     		mov	r6, r10
 4861 2950 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4862 2954 0028     		cmp	r0, #0
 4863 2956 40F02885 		bne	.L893
 4864 295a B9F1000F 		cmp	r9, #0
 4865 295e 00F0C784 		beq	.L392
 4866 2962 0746     		mov	r7, r0
 4867 2964 A368     		ldr	r3, [r4, #8]
 4868 2966 FDF7C5BF 		b	.L755
 4869              	.L1504:
 4870 296a 2046     		mov	r0, r4
 4871 296c 4521     		movs	r1, #69
 4872 296e 5E46     		mov	r6, fp
 4873 2970 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4874 2974 0028     		cmp	r0, #0
 4875 2976 41F0ED80 		bne	.L892
 4876 297a BAF1000F 		cmp	r10, #0
 4877 297e 00F0F087 		beq	.L378
 4878 2982 0746     		mov	r7, r0
 4879 2984 A368     		ldr	r3, [r4, #8]
 4880 2986 FDF7B5BF 		b	.L755
 4881              	.L311:
 4882 298a 2046     		mov	r0, r4
 4883 298c 4321     		movs	r1, #67
 4884 298e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4885 2992 0028     		cmp	r0, #0
 4886 2994 00F0B683 		beq	.L318
 4887              	.L313:
 4888 2998 754B     		ldr	r3, .L1628+24
 4889 299a D868     		ldr	r0, [r3, #12]
 4890 299c 90F92B10 		ldrsb	r1, [r0, #43]
 4891 29a0 4A1C     		adds	r2, r1, #1
 4892 29a2 04D0     		beq	.L877
 4893 29a4 95F87E33 		ldrb	r3, [r5, #894]	@ zero_extendqisi2
 4894 29a8 002B     		cmp	r3, #0
 4895 29aa 02F08981 		beq	.L1559
 4896              	.L877:
 4897 29ae 0027     		movs	r7, #0
 4898 29b0 85F87D73 		strb	r7, [r5, #893]
 4899 29b4 85F87E73 		strb	r7, [r5, #894]
 4900 29b8 A368     		ldr	r3, [r4, #8]
 4901 29ba FDF79BBF 		b	.L755
 4902              	.L999:
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 87


 4903 29be 9A46     		mov	r10, r3
 4904              	.L865:
 4905 29c0 2046     		mov	r0, r4
 4906 29c2 4521     		movs	r1, #69
 4907 29c4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4908 29c8 0028     		cmp	r0, #0
 4909 29ca 41F07F83 		bne	.L1560
 4910              	.L815:
 4911 29ce 40F28A33 		movw	r3, #906
 4912 29d2 9945     		cmp	r9, r3
 4913 29d4 00F07784 		beq	.L1561
 4914 29d8 BAF1000F 		cmp	r10, #0
 4915 29dc 40F07E84 		bne	.L904
 4916 29e0 40F29133 		movw	r3, #913
 4917 29e4 9945     		cmp	r9, r3
 4918 29e6 02F0A581 		beq	.L995
 4919              	.L887:
 4920 29ea 6249     		ldr	r1, .L1628+28
 4921              	.L825:
 4922 29ec 3046     		mov	r0, r6
 4923 29ee FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 4924 29f2 D5F88431 		ldr	r3, [r5, #388]
 4925 29f6 FBB1     		cbz	r3, .L829
 4926 29f8 40F2913A 		movw	r10, #913
 4927 29fc B9EB0A0E 		subs	lr, r9, r10
 4928 2a00 DEF1000A 		rsbs	r10, lr, #0
 4929 2a04 5C4F     		ldr	r7, .L1628+32
 4930 2a06 5AEB0E0A 		adcs	r10, r10, lr
 4931 2a0a 4FF00008 		mov	r8, #0
 4932              	.L830:
 4933 2a0e 4146     		mov	r1, r8
 4934 2a10 5246     		mov	r2, r10
 4935 2a12 2868     		ldr	r0, [r5]
 4936 2a14 17F808B0 		ldrb	fp, [r7, r8]	@ zero_extendqisi2
 4937 2a18 FFF7FEFF 		bl	_ZNK8Platform15GetMotorCurrentEjb
 4938 2a1c FFF7FEFF 		bl	__aeabi_f2iz
 4939 2a20 5A46     		mov	r2, fp
 4940 2a22 0346     		mov	r3, r0
 4941 2a24 5549     		ldr	r1, .L1628+36
 4942 2a26 3046     		mov	r0, r6
 4943 2a28 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 4944 2a2c D5F88431 		ldr	r3, [r5, #388]
 4945 2a30 08F10108 		add	r8, r8, #1
 4946 2a34 4345     		cmp	r3, r8
 4947 2a36 EAD8     		bhi	.L830
 4948              	.L829:
 4949 2a38 3046     		mov	r0, r6
 4950 2a3a 5149     		ldr	r1, .L1628+40
 4951 2a3c FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 4952 2a40 D5F88831 		ldr	r3, [r5, #392]
 4953 2a44 DBB1     		cbz	r3, .L828
 4954 2a46 40F29138 		movw	r8, #913
 4955 2a4a B9EB0800 		subs	r0, r9, r8
 4956 2a4e D0F10008 		rsbs	r8, r0, #0
 4957 2a52 58EB0008 		adcs	r8, r8, r0
 4958 2a56 0027     		movs	r7, #0
 4959              	.L833:
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 88


 4960 2a58 D5F88411 		ldr	r1, [r5, #388]
 4961 2a5c 4246     		mov	r2, r8
 4962 2a5e 3944     		add	r1, r1, r7
 4963 2a60 2868     		ldr	r0, [r5]
 4964 2a62 FFF7FEFF 		bl	_ZNK8Platform15GetMotorCurrentEjb
 4965 2a66 FFF7FEFF 		bl	__aeabi_f2iz
 4966 2a6a 4649     		ldr	r1, .L1628+44
 4967 2a6c 0246     		mov	r2, r0
 4968 2a6e 3046     		mov	r0, r6
 4969 2a70 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 4970 2a74 D5F88831 		ldr	r3, [r5, #392]
 4971 2a78 0137     		adds	r7, r7, #1
 4972 2a7a BB42     		cmp	r3, r7
 4973 2a7c ECD8     		bhi	.L833
 4974              	.L828:
 4975 2a7e 40F28A33 		movw	r3, #906
 4976 2a82 9945     		cmp	r9, r3
 4977 2a84 02F0FB82 		beq	.L1562
 4978 2a88 A368     		ldr	r3, [r4, #8]
 4979 2a8a 0027     		movs	r7, #0
 4980 2a8c FDF732BF 		b	.L755
 4981              	.L1507:
 4982 2a90 2046     		mov	r0, r4
 4983 2a92 4521     		movs	r1, #69
 4984 2a94 0D9E     		ldr	r6, [sp, #52]
 4985 2a96 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4986 2a9a 0028     		cmp	r0, #0
 4987 2a9c 41F09E82 		bne	.L896
 4988 2aa0 BAF1000F 		cmp	r10, #0
 4989 2aa4 01F0AA84 		beq	.L514
 4990              	.L509:
 4991 2aa8 A368     		ldr	r3, [r4, #8]
 4992 2aaa 0027     		movs	r7, #0
 4993 2aac FDF722BF 		b	.L755
 4994              	.L1490:
 4995 2ab0 2046     		mov	r0, r4
 4996 2ab2 4521     		movs	r1, #69
 4997 2ab4 5E46     		mov	r6, fp
 4998 2ab6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4999 2aba 0028     		cmp	r0, #0
 5000 2abc 40F09183 		bne	.L888
 5001 2ac0 B9F1000F 		cmp	r9, #0
 5002 2ac4 40F0B083 		bne	.L241
 5003              	.L244:
 5004 2ac8 3046     		mov	r0, r6
 5005 2aca 2F49     		ldr	r1, .L1628+48
 5006 2acc FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 5007 2ad0 D5F88431 		ldr	r3, [r5, #388]
 5008 2ad4 BBB1     		cbz	r3, .L249
 5009 2ad6 284F     		ldr	r7, .L1628+32
 5010 2ad8 4FF00008 		mov	r8, #0
 5011              	.L250:
 5012 2adc 2B68     		ldr	r3, [r5]
 5013 2ade 08F14E02 		add	r2, r8, #78
 5014 2ae2 53F82200 		ldr	r0, [r3, r2, lsl #2]	@ float
 5015 2ae6 FFF7FEFF 		bl	__aeabi_f2d
 5016 2aea 17F80820 		ldrb	r2, [r7, r8]	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 89


 5017 2aee CDE90001 		strd	r0, [sp]
 5018 2af2 3046     		mov	r0, r6
 5019 2af4 2549     		ldr	r1, .L1628+52
 5020 2af6 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 5021 2afa D5F88431 		ldr	r3, [r5, #388]
 5022 2afe 08F10108 		add	r8, r8, #1
 5023 2b02 4345     		cmp	r3, r8
 5024 2b04 EAD8     		bhi	.L250
 5025              	.L249:
 5026 2b06 3046     		mov	r0, r6
 5027 2b08 2149     		ldr	r1, .L1628+56
 5028 2b0a FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 5029 2b0e D5F88831 		ldr	r3, [r5, #392]
 5030 2b12 D3B1     		cbz	r3, .L245
 5031 2b14 0027     		movs	r7, #0
 5032 2b16 4FF02008 		mov	r8, #32
 5033 2b1a 01E0     		b	.L251
 5034              	.L1563:
 5035 2b1c 4FF03A08 		mov	r8, #58
 5036              	.L251:
 5037 2b20 D5F88411 		ldr	r1, [r5, #388]
 5038 2b24 2B68     		ldr	r3, [r5]
 5039 2b26 3944     		add	r1, r1, r7
 5040 2b28 4E31     		adds	r1, r1, #78
 5041 2b2a 53F82100 		ldr	r0, [r3, r1, lsl #2]	@ float
 5042 2b2e FFF7FEFF 		bl	__aeabi_f2d
 5043 2b32 4246     		mov	r2, r8
 5044 2b34 CDE90001 		strd	r0, [sp]
 5045 2b38 3046     		mov	r0, r6
 5046 2b3a 1649     		ldr	r1, .L1628+60
 5047 2b3c FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 5048 2b40 D5F88831 		ldr	r3, [r5, #392]
 5049 2b44 0137     		adds	r7, r7, #1
 5050 2b46 BB42     		cmp	r3, r7
 5051 2b48 E8D8     		bhi	.L1563
 5052              	.L245:
 5053 2b4a A368     		ldr	r3, [r4, #8]
 5054 2b4c 0027     		movs	r7, #0
 5055 2b4e FDF7D1BE 		b	.L755
 5056              	.L880:
 5057 2b52 361A     		subs	r6, r6, r0
 5058 2b54 FEF77EBF 		b	.L881
 5059              	.L1629:
 5060              		.align	2
 5061              	.L1628:
 5062 2b58 9C000000 		.word	.LC7
 5063 2b5c A0000000 		.word	.LC8
 5064 2b60 00007042 		.word	1114636288
 5065 2b64 F80D0000 		.word	.LC128
 5066 2b68 840E0000 		.word	.LC130
 5067 2b6c 980E0000 		.word	.LC131
 5068 2b70 00000000 		.word	reprap
 5069 2b74 8C010000 		.word	.LC30
 5070 2b78 00000000 		.word	_ZN6GCodes11axisLettersE
 5071 2b7c 90140000 		.word	.LC175
 5072 2b80 940B0000 		.word	.LC105
 5073 2b84 98140000 		.word	.LC176
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 90


 5074 2b88 B4040000 		.word	.LC53
 5075 2b8c C4040000 		.word	.LC55
 5076 2b90 C0040000 		.word	.LC54
 5077 2b94 D0040000 		.word	.LC56
 5078              	.L1491:
 5079 2b98 2046     		mov	r0, r4
 5080 2b9a 4521     		movs	r1, #69
 5081 2b9c 0D9E     		ldr	r6, [sp, #52]
 5082 2b9e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5083 2ba2 0028     		cmp	r0, #0
 5084 2ba4 41F08084 		bne	.L1564
 5085 2ba8 B9F1000F 		cmp	r9, #0
 5086 2bac 41F0AF81 		bne	.L754
 5087 2bb0 BBF1000F 		cmp	fp, #0
 5088 2bb4 01F04A87 		beq	.L756
 5089 2bb8 4F46     		mov	r7, r9
 5090 2bba A368     		ldr	r3, [r4, #8]
 5091 2bbc FDF79ABE 		b	.L755
 5092              	.L204:
 5093 2bc0 A368     		ldr	r3, [r4, #8]
 5094 2bc2 0027     		movs	r7, #0
 5095 2bc4 FDF796BE 		b	.L755
 5096              	.L907:
 5097 2bc8 9946     		mov	r9, r3
 5098              	.L140:
 5099 2bca 2046     		mov	r0, r4
 5100 2bcc 4521     		movs	r1, #69
 5101 2bce FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5102 2bd2 0028     		cmp	r0, #0
 5103 2bd4 41F0BF83 		bne	.L1565
 5104 2bd8 0746     		mov	r7, r0
 5105              	.L143:
 5106 2bda 2046     		mov	r0, r4
 5107 2bdc 5321     		movs	r1, #83
 5108 2bde FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5109 2be2 0028     		cmp	r0, #0
 5110 2be4 41F0A683 		bne	.L1566
 5111 2be8 B9F1000F 		cmp	r9, #0
 5112 2bec 01F09C83 		beq	.L153
 5113 2bf0 A368     		ldr	r3, [r4, #8]
 5114 2bf2 FDF77FBE 		b	.L755
 5115              	.L744:
 5116 2bf6 D5F88431 		ldr	r3, [r5, #388]
 5117 2bfa 4345     		cmp	r3, r8
 5118 2bfc 08D8     		bhi	.L739
 5119              	.L747:
 5120 2bfe 03F12202 		add	r2, r3, #34
 5121 2c02 0133     		adds	r3, r3, #1
 5122 2c04 4345     		cmp	r3, r8
 5123 2c06 45F822A0 		str	r10, [r5, r2, lsl #2]	@ float
 5124 2c0a F8D9     		bls	.L747
 5125 2c0c C5F88431 		str	r3, [r5, #388]
 5126              	.L739:
 5127 2c10 2846     		mov	r0, r5
 5128 2c12 05F18801 		add	r1, r5, #136
 5129 2c16 0122     		movs	r2, #1
 5130 2c18 FFF7FEFF 		bl	_ZN6GCodes12SetPositionsEPKfb
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 91


 5131 2c1c 5A46     		mov	r2, fp
 5132 2c1e 2868     		ldr	r0, [r5]
 5133 2c20 4146     		mov	r1, r8
 5134 2c22 FFF7FEFF 		bl	_ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig
 5135 2c26 D5F88431 		ldr	r3, [r5, #388]
 5136 2c2a D5F88821 		ldr	r2, [r5, #392]
 5137 2c2e 1A44     		add	r2, r2, r3
 5138 2c30 092A     		cmp	r2, #9
 5139 2c32 7EF6C7AB 		bls	.L743
 5140 2c36 C3F10903 		rsb	r3, r3, #9
 5141 2c3a C5F88831 		str	r3, [r5, #392]
 5142 2c3e FEF7C1BB 		b	.L743
 5143              	.L478:
 5144 2c42 AF4B     		ldr	r3, .L1630
 5145 2c44 3146     		mov	r1, r6
 5146 2c46 D868     		ldr	r0, [r3, #12]
 5147 2c48 FFF7FEFF 		bl	_ZNK4Heat17GetAutoTuneStatusER9StringRef
 5148 2c4c A368     		ldr	r3, [r4, #8]
 5149 2c4e FDF751BE 		b	.L755
 5150              	.L436:
 5151 2c52 D5F86C02 		ldr	r0, [r5, #620]	@ float
 5152 2c56 AB49     		ldr	r1, .L1630+4
 5153 2c58 FFF7FEFF 		bl	__aeabi_fmul
 5154 2c5c FFF7FEFF 		bl	__aeabi_f2d
 5155 2c60 0022     		movs	r2, #0
 5156 2c62 A94B     		ldr	r3, .L1630+8
 5157 2c64 FFF7FEFF 		bl	__aeabi_dmul
 5158 2c68 0B46     		mov	r3, r1
 5159 2c6a 0246     		mov	r2, r0
 5160 2c6c A749     		ldr	r1, .L1630+12
 5161 2c6e 3046     		mov	r0, r6
 5162 2c70 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5163 2c74 A368     		ldr	r3, [r4, #8]
 5164 2c76 FDF73DBE 		b	.L755
 5165              	.L836:
 5166 2c7a 2B68     		ldr	r3, [r5]
 5167 2c7c 0746     		mov	r7, r0
 5168 2c7e D3F82807 		ldr	r0, [r3, #1832]	@ float
 5169 2c82 FFF7FEFF 		bl	__aeabi_f2d
 5170 2c86 0B46     		mov	r3, r1
 5171 2c88 0246     		mov	r2, r0
 5172 2c8a A149     		ldr	r1, .L1630+16
 5173 2c8c 3046     		mov	r0, r6
 5174 2c8e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5175 2c92 A368     		ldr	r3, [r4, #8]
 5176 2c94 FDF72EBE 		b	.L755
 5177              	.L582:
 5178 2c98 2146     		mov	r1, r4
 5179 2c9a 2846     		mov	r0, r5
 5180 2c9c FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 5181 2ca0 2846     		mov	r0, r5
 5182 2ca2 2146     		mov	r1, r4
 5183 2ca4 3246     		mov	r2, r6
 5184 2ca6 FFF7FEFF 		bl	_ZN6GCodes10DefineGridER11GCodeBufferR9StringRef
 5185 2caa A368     		ldr	r3, [r4, #8]
 5186 2cac 0746     		mov	r7, r0
 5187 2cae FDF721BE 		b	.L755
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 92


 5188              	.L552:
 5189 2cb2 2968     		ldr	r1, [r5]
 5190 2cb4 3046     		mov	r0, r6
 5191 2cb6 91F8A6E0 		ldrb	lr, [r1, #166]	@ zero_extendqisi2
 5192 2cba 91F8A530 		ldrb	r3, [r1, #165]	@ zero_extendqisi2
 5193 2cbe 91F8A420 		ldrb	r2, [r1, #164]	@ zero_extendqisi2
 5194 2cc2 CDF800E0 		str	lr, [sp]
 5195 2cc6 91F8A7E0 		ldrb	lr, [r1, #167]	@ zero_extendqisi2
 5196 2cca CDF804E0 		str	lr, [sp, #4]
 5197 2cce 91F8A8E0 		ldrb	lr, [r1, #168]	@ zero_extendqisi2
 5198 2cd2 CDF808E0 		str	lr, [sp, #8]
 5199 2cd6 91F8A9E0 		ldrb	lr, [r1, #169]	@ zero_extendqisi2
 5200 2cda 8E49     		ldr	r1, .L1630+20
 5201 2cdc CDF80CE0 		str	lr, [sp, #12]
 5202 2ce0 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5203 2ce4 A368     		ldr	r3, [r4, #8]
 5204 2ce6 FDF705BE 		b	.L755
 5205              	.L335:
 5206 2cea 2B68     		ldr	r3, [r5]
 5207 2cec 0746     		mov	r7, r0
 5208 2cee D3F84006 		ldr	r0, [r3, #1600]
 5209 2cf2 FFF7FEFF 		bl	__aeabi_ui2f
 5210 2cf6 8849     		ldr	r1, .L1630+24
 5211 2cf8 FFF7FEFF 		bl	__aeabi_fdiv
 5212 2cfc FFF7FEFF 		bl	__aeabi_f2d
 5213 2d00 0B46     		mov	r3, r1
 5214 2d02 0246     		mov	r2, r0
 5215 2d04 8549     		ldr	r1, .L1630+28
 5216 2d06 3046     		mov	r0, r6
 5217 2d08 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5218 2d0c A368     		ldr	r3, [r4, #8]
 5219 2d0e FDF7F1BD 		b	.L755
 5220              	.L604:
 5221 2d12 3046     		mov	r0, r6
 5222 2d14 8249     		ldr	r1, .L1630+32
 5223 2d16 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5224 2d1a 0127     		movs	r7, #1
 5225 2d1c A368     		ldr	r3, [r4, #8]
 5226 2d1e FDF7E9BD 		b	.L755
 5227              	.L568:
 5228 2d22 8049     		ldr	r1, .L1630+36
 5229 2d24 3046     		mov	r0, r6
 5230 2d26 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 5231 2d2a 2868     		ldr	r0, [r5]
 5232 2d2c FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 5233 2d30 0528     		cmp	r0, #5
 5234 2d32 02F20280 		bhi	.L569
 5235 2d36 DFE800F0 		tbb	[pc, r0]
 5236              	.L571:
 5237 2d3a 23       		.byte	(.L570-.L571)/2
 5238 2d3b 23       		.byte	(.L570-.L571)/2
 5239 2d3c 1B       		.byte	(.L572-.L571)/2
 5240 2d3d 13       		.byte	(.L573-.L571)/2
 5241 2d3e 0B       		.byte	(.L574-.L571)/2
 5242 2d3f 03       		.byte	(.L575-.L571)/2
 5243              		.align	1
 5244              	.L575:
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 93


 5245 2d40 3046     		mov	r0, r6
 5246 2d42 7949     		ldr	r1, .L1630+40
 5247 2d44 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 5248 2d48 0027     		movs	r7, #0
 5249 2d4a A368     		ldr	r3, [r4, #8]
 5250 2d4c FDF7D2BD 		b	.L755
 5251              	.L574:
 5252 2d50 3046     		mov	r0, r6
 5253 2d52 7649     		ldr	r1, .L1630+44
 5254 2d54 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 5255 2d58 0027     		movs	r7, #0
 5256 2d5a A368     		ldr	r3, [r4, #8]
 5257 2d5c FDF7CABD 		b	.L755
 5258              	.L573:
 5259 2d60 3046     		mov	r0, r6
 5260 2d62 7349     		ldr	r1, .L1630+48
 5261 2d64 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 5262 2d68 0027     		movs	r7, #0
 5263 2d6a A368     		ldr	r3, [r4, #8]
 5264 2d6c FDF7C2BD 		b	.L755
 5265              	.L572:
 5266 2d70 3046     		mov	r0, r6
 5267 2d72 7049     		ldr	r1, .L1630+52
 5268 2d74 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 5269 2d78 0027     		movs	r7, #0
 5270 2d7a A368     		ldr	r3, [r4, #8]
 5271 2d7c FDF7BABD 		b	.L755
 5272              	.L570:
 5273 2d80 3046     		mov	r0, r6
 5274 2d82 6D49     		ldr	r1, .L1630+56
 5275 2d84 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 5276 2d88 0027     		movs	r7, #0
 5277 2d8a A368     		ldr	r3, [r4, #8]
 5278 2d8c FDF7B2BD 		b	.L755
 5279              	.L566:
 5280 2d90 2968     		ldr	r1, [r5]
 5281 2d92 3046     		mov	r0, r6
 5282 2d94 91F8A2E0 		ldrb	lr, [r1, #162]	@ zero_extendqisi2
 5283 2d98 91F8A130 		ldrb	r3, [r1, #161]	@ zero_extendqisi2
 5284 2d9c 91F8A020 		ldrb	r2, [r1, #160]	@ zero_extendqisi2
 5285 2da0 CDF800E0 		str	lr, [sp]
 5286 2da4 91F8A310 		ldrb	r1, [r1, #163]	@ zero_extendqisi2
 5287 2da8 0191     		str	r1, [sp, #4]
 5288 2daa 6449     		ldr	r1, .L1630+60
 5289 2dac FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5290 2db0 A368     		ldr	r3, [r4, #8]
 5291 2db2 FDF79FBD 		b	.L755
 5292              	.L601:
 5293 2db6 3046     		mov	r0, r6
 5294 2db8 5949     		ldr	r1, .L1630+32
 5295 2dba FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5296 2dbe 0127     		movs	r7, #1
 5297 2dc0 A368     		ldr	r3, [r4, #8]
 5298 2dc2 FDF797BD 		b	.L755
 5299              	.L651:
 5300 2dc6 5321     		movs	r1, #83
 5301 2dc8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 94


 5302 2dcc 0028     		cmp	r0, #0
 5303 2dce 41F04984 		bne	.L655
 5304 2dd2 0746     		mov	r7, r0
 5305 2dd4 A368     		ldr	r3, [r4, #8]
 5306 2dd6 FDF78DBD 		b	.L755
 5307              	.L554:
 5308 2dda 4948     		ldr	r0, .L1630
 5309 2ddc FFF7FEFF 		bl	_ZNK6RepRap7GetNameEv
 5310 2de0 5749     		ldr	r1, .L1630+64
 5311 2de2 0246     		mov	r2, r0
 5312 2de4 3046     		mov	r0, r6
 5313 2de6 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5314 2dea A368     		ldr	r3, [r4, #8]
 5315 2dec FDF782BD 		b	.L755
 5316              	.L925:
 5317 2df0 0746     		mov	r7, r0
 5318 2df2 FDF789BE 		b	.L308
 5319              	.L919:
 5320 2df6 0027     		movs	r7, #0
 5321 2df8 FDF77CBD 		b	.L755
 5322              	.L192:
 5323 2dfc 3046     		mov	r0, r6
 5324 2dfe 5149     		ldr	r1, .L1630+68
 5325 2e00 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 5326 2e04 0127     		movs	r7, #1
 5327 2e06 A368     		ldr	r3, [r4, #8]
 5328 2e08 FDF774BD 		b	.L755
 5329              	.L564:
 5330 2e0c 2968     		ldr	r1, [r5]
 5331 2e0e 3046     		mov	r0, r6
 5332 2e10 91F89EE0 		ldrb	lr, [r1, #158]	@ zero_extendqisi2
 5333 2e14 91F89D30 		ldrb	r3, [r1, #157]	@ zero_extendqisi2
 5334 2e18 91F89C20 		ldrb	r2, [r1, #156]	@ zero_extendqisi2
 5335 2e1c CDF800E0 		str	lr, [sp]
 5336 2e20 91F89F10 		ldrb	r1, [r1, #159]	@ zero_extendqisi2
 5337 2e24 0191     		str	r1, [sp, #4]
 5338 2e26 4849     		ldr	r1, .L1630+72
 5339 2e28 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5340 2e2c A368     		ldr	r3, [r4, #8]
 5341 2e2e FDF761BD 		b	.L755
 5342              	.L971:
 5343 2e32 0746     		mov	r7, r0
 5344 2e34 FFF786BA 		b	.L657
 5345              	.L198:
 5346 2e38 3046     		mov	r0, r6
 5347 2e3a 4449     		ldr	r1, .L1630+76
 5348 2e3c FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 5349 2e40 A368     		ldr	r3, [r4, #8]
 5350 2e42 FDF757BD 		b	.L755
 5351              	.L1477:
 5352 2e46 2046     		mov	r0, r4
 5353 2e48 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 5354 2e4c 4049     		ldr	r1, .L1630+80
 5355 2e4e 3A46     		mov	r2, r7
 5356 2e50 FFF7FEFF 		bl	strptime
 5357 2e54 0028     		cmp	r0, #0
 5358 2e56 01F0D586 		beq	.L806
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 95


 5359 2e5a 3846     		mov	r0, r7
 5360 2e5c D5F80080 		ldr	r8, [r5]
 5361 2e60 FFF7FEFF 		bl	mktime
 5362 2e64 0146     		mov	r1, r0
 5363 2e66 4046     		mov	r0, r8
 5364 2e68 FFF7FEFF 		bl	_ZN8Platform7SetDateEl
 5365 2e6c 0028     		cmp	r0, #0
 5366 2e6e 01F09285 		beq	.L1567
 5367 2e72 2046     		mov	r0, r4
 5368 2e74 5321     		movs	r1, #83
 5369 2e76 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5370 2e7a 0028     		cmp	r0, #0
 5371 2e7c 3EF46BA8 		beq	.L811
 5372              	.L902:
 5373 2e80 2046     		mov	r0, r4
 5374 2e82 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 5375 2e86 3349     		ldr	r1, .L1630+84
 5376 2e88 3A46     		mov	r2, r7
 5377 2e8a FFF7FEFF 		bl	strptime
 5378 2e8e 0028     		cmp	r0, #0
 5379 2e90 02F02B81 		beq	.L809
 5380 2e94 3846     		mov	r0, r7
 5381 2e96 2F68     		ldr	r7, [r5]
 5382 2e98 FFF7FEFF 		bl	mktime
 5383 2e9c 0146     		mov	r1, r0
 5384 2e9e 3846     		mov	r0, r7
 5385 2ea0 FFF7FEFF 		bl	_ZN8Platform7SetTimeEl
 5386 2ea4 0028     		cmp	r0, #0
 5387 2ea6 7EF456A8 		bne	.L811
 5388 2eaa 3046     		mov	r0, r6
 5389 2eac 2A49     		ldr	r1, .L1630+88
 5390 2eae FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 5391              	.L808:
 5392 2eb2 A368     		ldr	r3, [r4, #8]
 5393 2eb4 0127     		movs	r7, #1
 5394 2eb6 FDF71DBD 		b	.L755
 5395              	.L1483:
 5396 2eba 114B     		ldr	r3, .L1630
 5397 2ebc D868     		ldr	r0, [r3, #12]
 5398 2ebe 90F92B80 		ldrsb	r8, [r0, #43]
 5399 2ec2 B8F1FF3F 		cmp	r8, #-1
 5400 2ec6 01F0A783 		beq	.L356
 5401 2eca 4146     		mov	r1, r8
 5402 2ecc FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 5403 2ed0 FFF7FEFF 		bl	__aeabi_f2d
 5404 2ed4 4246     		mov	r2, r8
 5405 2ed6 CDE90001 		strd	r0, [sp]
 5406 2eda 3046     		mov	r0, r6
 5407 2edc 1F49     		ldr	r1, .L1630+92
 5408 2ede FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5409 2ee2 4F46     		mov	r7, r9
 5410 2ee4 A368     		ldr	r3, [r4, #8]
 5411 2ee6 FDF705BD 		b	.L755
 5412              	.L293:
 5413 2eea 2046     		mov	r0, r4
 5414 2eec 5321     		movs	r1, #83
 5415 2eee FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 96


 5416 2ef2 0028     		cmp	r0, #0
 5417 2ef4 41F0CA84 		bne	.L295
 5418              	.L369:
 5419 2ef8 A368     		ldr	r3, [r4, #8]
 5420 2efa 0027     		movs	r7, #0
 5421 2efc FDF7FABC 		b	.L755
 5422              	.L1631:
 5423              		.align	2
 5424              	.L1630:
 5425 2f00 00000000 		.word	reprap
 5426 2f04 00007042 		.word	1114636288
 5427 2f08 00005940 		.word	1079574528
 5428 2f0c B0080000 		.word	.LC89
 5429 2f10 CC140000 		.word	.LC179
 5430 2f14 600C0000 		.word	.LC114
 5431 2f18 00007A44 		.word	1148846080
 5432 2f1c 3C060000 		.word	.LC70
 5433 2f20 E8030000 		.word	.LC48
 5434 2f24 0C0D0000 		.word	.LC119
 5435 2f28 5C0D0000 		.word	.LC124
 5436 2f2c 500D0000 		.word	.LC123
 5437 2f30 480D0000 		.word	.LC122
 5438 2f34 400D0000 		.word	.LC121
 5439 2f38 180D0000 		.word	.LC120
 5440 2f3c F40C0000 		.word	.LC118
 5441 2f40 780C0000 		.word	.LC115
 5442 2f44 60030000 		.word	.LC44
 5443 2f48 DC0C0000 		.word	.LC117
 5444 2f4c C0030000 		.word	.LC46
 5445 2f50 C4130000 		.word	.LC167
 5446 2f54 F8130000 		.word	.LC170
 5447 2f58 04140000 		.word	.LC171
 5448 2f5c D8060000 		.word	.LC75
 5449              	.L306:
 5450 2f60 2868     		ldr	r0, [r5]
 5451 2f62 FFF7FEFF 		bl	_ZNK8Platform20GetElectronicsStringEv
 5452 2f66 B34B     		ldr	r3, .L1632
 5453 2f68 B349     		ldr	r1, .L1632+4
 5454 2f6a 0090     		str	r0, [sp]
 5455 2f6c B34A     		ldr	r2, .L1632+8
 5456 2f6e 3046     		mov	r0, r6
 5457 2f70 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5458 2f74 3046     		mov	r0, r6
 5459 2f76 B249     		ldr	r1, .L1632+12
 5460 2f78 B24A     		ldr	r2, .L1632+16
 5461 2f7a FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 5462 2f7e A368     		ldr	r3, [r4, #8]
 5463 2f80 FDF7B8BC 		b	.L755
 5464              	.L577:
 5465 2f84 DFF8C882 		ldr	r8, .L1632+28
 5466 2f88 0146     		mov	r1, r0
 5467 2f8a D8F80800 		ldr	r0, [r8, #8]
 5468 2f8e FFF7FEFF 		bl	_ZNK4Move16AxisCompensationEa
 5469 2f92 0121     		movs	r1, #1
 5470 2f94 8146     		mov	r9, r0
 5471 2f96 D8F80800 		ldr	r0, [r8, #8]
 5472 2f9a FFF7FEFF 		bl	_ZNK4Move16AxisCompensationEa
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 97


 5473 2f9e 0221     		movs	r1, #2
 5474 2fa0 8346     		mov	fp, r0
 5475 2fa2 D8F80800 		ldr	r0, [r8, #8]
 5476 2fa6 FFF7FEFF 		bl	_ZNK4Move16AxisCompensationEa
 5477 2faa 8246     		mov	r10, r0
 5478 2fac 4846     		mov	r0, r9
 5479 2fae FFF7FEFF 		bl	__aeabi_f2d
 5480 2fb2 8046     		mov	r8, r0
 5481 2fb4 5846     		mov	r0, fp
 5482 2fb6 8946     		mov	r9, r1
 5483 2fb8 FFF7FEFF 		bl	__aeabi_f2d
 5484 2fbc CDE90001 		strd	r0, [sp]
 5485 2fc0 5046     		mov	r0, r10
 5486 2fc2 FFF7FEFF 		bl	__aeabi_f2d
 5487 2fc6 4B46     		mov	r3, r9
 5488 2fc8 CDE90201 		strd	r0, [sp, #8]
 5489 2fcc 4246     		mov	r2, r8
 5490 2fce 3046     		mov	r0, r6
 5491 2fd0 9D49     		ldr	r1, .L1632+20
 5492 2fd2 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5493 2fd6 A368     		ldr	r3, [r4, #8]
 5494 2fd8 FDF78CBC 		b	.L755
 5495              	.L469:
 5496 2fdc 2846     		mov	r0, r5
 5497 2fde FFF7FEFF 		bl	_ZNK6GCodes17GetBabyStepOffsetEv
 5498 2fe2 FFF7FEFF 		bl	__aeabi_f2d
 5499 2fe6 0B46     		mov	r3, r1
 5500 2fe8 0246     		mov	r2, r0
 5501 2fea 9849     		ldr	r1, .L1632+24
 5502 2fec 3046     		mov	r0, r6
 5503 2fee FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5504 2ff2 A368     		ldr	r3, [r4, #8]
 5505 2ff4 FDF77EBC 		b	.L755
 5506              	.L301:
 5507 2ff8 9548     		ldr	r0, .L1632+28
 5508 2ffa FFF7FEFF 		bl	_ZN6RepRap10PrintDebugEv
 5509 2ffe A368     		ldr	r3, [r4, #8]
 5510 3000 FDF778BC 		b	.L755
 5511              	.L928:
 5512 3004 0027     		movs	r7, #0
 5513 3006 FDF775BC 		b	.L755
 5514              	.L929:
 5515 300a 0027     		movs	r7, #0
 5516 300c FDF772BC 		b	.L755
 5517              	.L952:
 5518 3010 0027     		movs	r7, #0
 5519 3012 FDF76FBC 		b	.L755
 5520              	.L585:
 5521 3016 0120     		movs	r0, #1
 5522 3018 00FA0AF3 		lsl	r3, r0, r10
 5523 301c 8346     		mov	fp, r0
 5524 301e 29EA0309 		bic	r9, r9, r3
 5525 3022 FDF73EBC 		b	.L584
 5526              	.L1501:
 5527 3026 8A4A     		ldr	r2, .L1632+28
 5528 3028 2046     		mov	r0, r4
 5529 302a D2F808A0 		ldr	r10, [r2, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 98


 5530 302e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5531 3032 4946     		mov	r1, r9
 5532 3034 FFF7FEFF 		bl	__aeabi_fdiv
 5533 3038 4FFA88FB 		sxtb	fp, r8
 5534 303c 0246     		mov	r2, r0
 5535 303e 5946     		mov	r1, fp
 5536 3040 5046     		mov	r0, r10
 5537 3042 FFF7FEFF 		bl	_ZN4Move19SetAxisCompensationEaf
 5538 3046 FEF782BB 		b	.L578
 5539              	.L1512:
 5540 304a A368     		ldr	r3, [r4, #8]
 5541 304c FDF752BC 		b	.L755
 5542              	.L1468:
 5543 3050 7F48     		ldr	r0, .L1632+28
 5544 3052 0DF1680A 		add	r10, sp, #104
 5545 3056 8768     		ldr	r7, [r0, #8]
 5546 3058 0D97     		str	r7, [sp, #52]
 5547 305a FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 5548 305e 5146     		mov	r1, r10
 5549 3060 0346     		mov	r3, r0
 5550 3062 0022     		movs	r2, #0
 5551 3064 0D98     		ldr	r0, [sp, #52]
 5552 3066 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhm
 5553 306a 2046     		mov	r0, r4
 5554 306c 5321     		movs	r1, #83
 5555 306e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5556 3072 0028     		cmp	r0, #0
 5557 3074 41F03984 		bne	.L1568
 5558 3078 8146     		mov	r9, r0
 5559              	.L795:
 5560 307a D5F88431 		ldr	r3, [r5, #388]
 5561 307e E3B1     		cbz	r3, .L796
 5562 3080 744F     		ldr	r7, .L1632+32
 5563 3082 DDF83480 		ldr	r8, [sp, #52]
 5564 3086 4FF0000B 		mov	fp, #0
 5565 308a 05E0     		b	.L798
 5566              	.L797:
 5567 308c D5F88431 		ldr	r3, [r5, #388]
 5568 3090 08F10408 		add	r8, r8, #4
 5569 3094 5B45     		cmp	r3, fp
 5570 3096 10D9     		bls	.L796
 5571              	.L798:
 5572 3098 17F80B10 		ldrb	r1, [r7, fp]	@ zero_extendqisi2
 5573 309c 2046     		mov	r0, r4
 5574 309e 0BF1010B 		add	fp, fp, #1
 5575 30a2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5576 30a6 0028     		cmp	r0, #0
 5577 30a8 F0D0     		beq	.L797
 5578 30aa 2046     		mov	r0, r4
 5579 30ac FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5580 30b0 4FF00109 		mov	r9, #1
 5581 30b4 C8F8E405 		str	r0, [r8, #1508]	@ float
 5582 30b8 E8E7     		b	.L797
 5583              	.L796:
 5584 30ba B9F1000F 		cmp	r9, #0
 5585 30be 01F00781 		beq	.L799
 5586 30c2 2846     		mov	r0, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 99


 5587 30c4 5146     		mov	r1, r10
 5588 30c6 0122     		movs	r2, #1
 5589 30c8 FFF7FEFF 		bl	_ZN6GCodes12SetPositionsEPKfb
 5590 30cc 2846     		mov	r0, r5
 5591 30ce FFF7FEFF 		bl	_ZN6GCodes18SetAllAxesNotHomedEv
 5592              	.L800:
 5593 30d2 A368     		ldr	r3, [r4, #8]
 5594 30d4 0027     		movs	r7, #0
 5595 30d6 FDF70DBC 		b	.L755
 5596              	.L1506:
 5597 30da D8F8DC83 		ldr	r8, [r8, #988]	@ float
 5598 30de 0021     		movs	r1, #0
 5599 30e0 4046     		mov	r0, r8
 5600 30e2 FFF7FEFF 		bl	__aeabi_fcmpgt
 5601 30e6 0028     		cmp	r0, #0
 5602 30e8 3EF4EEAB 		beq	.L527
 5603 30ec 4046     		mov	r0, r8
 5604 30ee FFF7FEFF 		bl	__aeabi_f2d
 5605 30f2 0B46     		mov	r3, r1
 5606 30f4 0246     		mov	r2, r0
 5607 30f6 5849     		ldr	r1, .L1632+36
 5608 30f8 3046     		mov	r0, r6
 5609 30fa FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5610 30fe A368     		ldr	r3, [r4, #8]
 5611 3100 FDF7F8BB 		b	.L755
 5612              	.L318:
 5613 3104 002F     		cmp	r7, #0
 5614 3106 7FF452AC 		bne	.L877
 5615 310a 95F87E33 		ldrb	r3, [r5, #894]	@ zero_extendqisi2
 5616 310e 002B     		cmp	r3, #0
 5617 3110 7FF44DAC 		bne	.L877
 5618 3114 4E4B     		ldr	r3, .L1632+28
 5619 3116 0121     		movs	r1, #1
 5620 3118 D868     		ldr	r0, [r3, #12]
 5621 311a FFF7FEFF 		bl	_ZNK4Heat27AllHeatersAtSetTemperaturesEb
 5622 311e 0746     		mov	r7, r0
 5623 3120 0028     		cmp	r0, #0
 5624 3122 7FF444AC 		bne	.L877
 5625 3126 FDF722BD 		b	.L1412
 5626              	.L190:
 5627 312a 2B6C     		ldr	r3, [r5, #64]
 5628 312c 2846     		mov	r0, r5
 5629 312e 1968     		ldr	r1, [r3]
 5630 3130 FFF7FEFF 		bl	_ZN6GCodes12LockMovementERK11GCodeBuffer
 5631 3134 0028     		cmp	r0, #0
 5632 3136 3DF452AD 		beq	.L546
 5633 313a 2B6C     		ldr	r3, [r5, #64]
 5634 313c 2846     		mov	r0, r5
 5635 313e 1968     		ldr	r1, [r3]
 5636 3140 FFF7FEFF 		bl	_ZN6GCodes7DoPauseER11GCodeBuffer
 5637 3144 A368     		ldr	r3, [r4, #8]
 5638 3146 FDF7D5BB 		b	.L755
 5639              	.L201:
 5640 314a 3046     		mov	r0, r6
 5641 314c 4349     		ldr	r1, .L1632+40
 5642 314e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5643 3152 0127     		movs	r7, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 100


 5644 3154 A368     		ldr	r3, [r4, #8]
 5645 3156 FDF7CDBB 		b	.L755
 5646              	.L315:
 5647 315a 2046     		mov	r0, r4
 5648 315c 4321     		movs	r1, #67
 5649 315e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5650 3162 0028     		cmp	r0, #0
 5651 3164 7FF418AC 		bne	.L313
 5652 3168 21E4     		b	.L877
 5653              	.L296:
 5654 316a 3948     		ldr	r0, .L1632+28
 5655 316c FFF7FEFF 		bl	_ZNK6RepRap23GetCurrentOrDefaultToolEv
 5656 3170 0746     		mov	r7, r0
 5657 3172 FDF777BC 		b	.L297
 5658              	.L176:
 5659 3176 B9F1200F 		cmp	r9, #32
 5660 317a 01F08386 		beq	.L1569
 5661              	.L177:
 5662 317e 2046     		mov	r0, r4
 5663 3180 0021     		movs	r1, #0
 5664 3182 FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringEb
 5665 3186 0746     		mov	r7, r0
 5666 3188 0028     		cmp	r0, #0
 5667 318a 01F03085 		beq	.L1570
 5668 318e 2846     		mov	r0, r5
 5669 3190 3946     		mov	r1, r7
 5670 3192 FFF7FEFF 		bl	_ZN6GCodes16QueueFileToPrintEPKc
 5671 3196 D5F83832 		ldr	r3, [r5, #568]
 5672 319a 002B     		cmp	r3, #0
 5673 319c 02F0E381 		beq	.L178
 5674 31a0 DFF8ACA0 		ldr	r10, .L1632+28
 5675 31a4 3946     		mov	r1, r7
 5676 31a6 DAF81C00 		ldr	r0, [r10, #28]
 5677 31aa FFF7FEFF 		bl	_ZN12PrintMonitor13StartingPrintEPKc
 5678 31ae 2868     		ldr	r0, [r5]
 5679 31b0 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 5680 31b4 0228     		cmp	r0, #2
 5681 31b6 02F0C781 		beq	.L1571
 5682              	.L179:
 5683 31ba 3A46     		mov	r2, r7
 5684 31bc 3046     		mov	r0, r6
 5685 31be 2849     		ldr	r1, .L1632+44
 5686 31c0 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5687              	.L876:
 5688 31c4 B9F1200F 		cmp	r9, #32
 5689 31c8 02F0E681 		beq	.L181
 5690 31cc A368     		ldr	r3, [r4, #8]
 5691 31ce 0027     		movs	r7, #0
 5692 31d0 FDF790BB 		b	.L755
 5693              	.L233:
 5694 31d4 2046     		mov	r0, r4
 5695 31d6 4521     		movs	r1, #69
 5696 31d8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5697 31dc 0028     		cmp	r0, #0
 5698 31de 3FF473AC 		beq	.L244
 5699              	.L888:
 5700 31e2 2846     		mov	r0, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 101


 5701 31e4 2146     		mov	r1, r4
 5702 31e6 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 5703 31ea 0028     		cmp	r0, #0
 5704 31ec 3DF4F7AC 		beq	.L546
 5705 31f0 D5F88871 		ldr	r7, [r5, #392]
 5706 31f4 0DF15008 		add	r8, sp, #80
 5707 31f8 13AA     		add	r2, sp, #76
 5708 31fa 4146     		mov	r1, r8
 5709 31fc 2046     		mov	r0, r4
 5710 31fe 0123     		movs	r3, #1
 5711 3200 1397     		str	r7, [sp, #76]
 5712 3202 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 5713 3206 139F     		ldr	r7, [sp, #76]
 5714 3208 77B1     		cbz	r7, .L241
 5715 320a 2B68     		ldr	r3, [r5]
 5716 320c D5F88401 		ldr	r0, [r5, #388]
 5717 3210 BF00     		lsls	r7, r7, #2
 5718 3212 03EB8000 		add	r0, r3, r0, lsl #2
 5719 3216 0023     		movs	r3, #0
 5720              	.L243:
 5721 3218 58F80310 		ldr	r1, [r8, r3]	@ float
 5722 321c C218     		adds	r2, r0, r3
 5723 321e 0433     		adds	r3, r3, #4
 5724 3220 BB42     		cmp	r3, r7
 5725 3222 C2F83811 		str	r1, [r2, #312]	@ float
 5726 3226 F7D1     		bne	.L243
 5727              	.L241:
 5728 3228 5146     		mov	r1, r10
 5729 322a 2846     		mov	r0, r5
 5730 322c 0122     		movs	r2, #1
 5731 322e FFF7FEFF 		bl	_ZN6GCodes12SetPositionsEPKfb
 5732 3232 8AE4     		b	.L245
 5733              	.L1633:
 5734              		.align	2
 5735              	.L1632:
 5736 3234 E0050000 		.word	.LC64
 5737 3238 90050000 		.word	.LC62
 5738 323c C8050000 		.word	.LC63
 5739 3240 F8050000 		.word	.LC65
 5740 3244 0C060000 		.word	.LC66
 5741 3248 780D0000 		.word	.LC126
 5742 324c 34090000 		.word	.LC92
 5743 3250 00000000 		.word	reprap
 5744 3254 00000000 		.word	_ZN6GCodes11axisLettersE
 5745 3258 AC0B0000 		.word	.LC108
 5746 325c E8030000 		.word	.LC48
 5747 3260 88150000 		.word	.LC186
 5748              	.L867:
 5749 3264 2046     		mov	r0, r4
 5750 3266 4521     		movs	r1, #69
 5751 3268 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5752 326c 0028     		cmp	r0, #0
 5753 326e 00F06187 		beq	.L618
 5754              	.L886:
 5755 3272 D5F88871 		ldr	r7, [r5, #392]
 5756 3276 0DF1680A 		add	r10, sp, #104
 5757 327a 0123     		movs	r3, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 102


 5758 327c 14AA     		add	r2, sp, #80
 5759 327e 5146     		mov	r1, r10
 5760 3280 2046     		mov	r0, r4
 5761 3282 1497     		str	r7, [sp, #80]
 5762 3284 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 5763 3288 149B     		ldr	r3, [sp, #80]
 5764 328a C3B1     		cbz	r3, .L616
 5765 328c D5F88411 		ldr	r1, [r5, #388]
 5766 3290 2A68     		ldr	r2, [r5]
 5767 3292 D5F830B2 		ldr	fp, [r5, #560]	@ float
 5768 3296 4FEA8309 		lsl	r9, r3, #2
 5769 329a 02EB8108 		add	r8, r2, r1, lsl #2
 5770 329e 0027     		movs	r7, #0
 5771              	.L617:
 5772 32a0 5AF80710 		ldr	r1, [r10, r7]	@ float
 5773 32a4 5846     		mov	r0, fp
 5774 32a6 FFF7FEFF 		bl	__aeabi_fmul
 5775 32aa B649     		ldr	r1, .L1634
 5776 32ac FFF7FEFF 		bl	__aeabi_fmul
 5777 32b0 08EB0703 		add	r3, r8, r7
 5778 32b4 0437     		adds	r7, r7, #4
 5779 32b6 4F45     		cmp	r7, r9
 5780 32b8 C3F85C01 		str	r0, [r3, #348]	@ float
 5781 32bc F0D1     		bne	.L617
 5782              	.L616:
 5783 32be A368     		ldr	r3, [r4, #8]
 5784 32c0 0027     		movs	r7, #0
 5785 32c2 FDF717BB 		b	.L755
 5786              	.L1561:
 5787 32c6 2046     		mov	r0, r4
 5788 32c8 4921     		movs	r1, #73
 5789 32ca FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5790 32ce 0028     		cmp	r0, #0
 5791 32d0 41F0E185 		bne	.L821
 5792 32d4 BAF1000F 		cmp	r10, #0
 5793 32d8 3FF487AB 		beq	.L887
 5794              	.L904:
 5795 32dc A368     		ldr	r3, [r4, #8]
 5796 32de 0027     		movs	r7, #0
 5797 32e0 FDF708BB 		b	.L755
 5798              	.L869:
 5799 32e4 2046     		mov	r0, r4
 5800 32e6 4521     		movs	r1, #69
 5801 32e8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5802 32ec 0028     		cmp	r0, #0
 5803 32ee 5CD1     		bne	.L893
 5804              	.L392:
 5805 32f0 3046     		mov	r0, r6
 5806 32f2 A549     		ldr	r1, .L1634+4
 5807 32f4 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 5808 32f8 D5F88431 		ldr	r3, [r5, #388]
 5809 32fc 0BB3     		cbz	r3, .L396
 5810 32fe A34F     		ldr	r7, .L1634+8
 5811 3300 4FF00008 		mov	r8, #0
 5812 3304 A146     		mov	r9, r4
 5813              	.L397:
 5814 3306 D5F83002 		ldr	r0, [r5, #560]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 103


 5815 330a 9E49     		ldr	r1, .L1634
 5816 330c FFF7FEFF 		bl	__aeabi_fmul
 5817 3310 2C68     		ldr	r4, [r5]
 5818 3312 08F13A03 		add	r3, r8, #58
 5819 3316 0146     		mov	r1, r0
 5820 3318 54F82300 		ldr	r0, [r4, r3, lsl #2]	@ float
 5821 331c FFF7FEFF 		bl	__aeabi_fdiv
 5822 3320 FFF7FEFF 		bl	__aeabi_f2d
 5823 3324 17F80820 		ldrb	r2, [r7, r8]	@ zero_extendqisi2
 5824 3328 CDE90001 		strd	r0, [sp]
 5825 332c 3046     		mov	r0, r6
 5826 332e 9849     		ldr	r1, .L1634+12
 5827 3330 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 5828 3334 D5F88431 		ldr	r3, [r5, #388]
 5829 3338 08F10108 		add	r8, r8, #1
 5830 333c 4345     		cmp	r3, r8
 5831 333e E2D8     		bhi	.L397
 5832 3340 4C46     		mov	r4, r9
 5833              	.L396:
 5834 3342 3046     		mov	r0, r6
 5835 3344 9349     		ldr	r1, .L1634+16
 5836 3346 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 5837 334a D5F88871 		ldr	r7, [r5, #392]
 5838 334e 002F     		cmp	r7, #0
 5839 3350 01F0CC87 		beq	.L1572
 5840 3354 0027     		movs	r7, #0
 5841 3356 4FF02009 		mov	r9, #32
 5842 335a A246     		mov	r10, r4
 5843 335c 01E0     		b	.L399
 5844              	.L398:
 5845 335e 4FF03A09 		mov	r9, #58
 5846              	.L399:
 5847 3362 D5F88431 		ldr	r3, [r5, #388]
 5848 3366 D5F83002 		ldr	r0, [r5, #560]	@ float
 5849 336a 3B44     		add	r3, r3, r7
 5850 336c 8549     		ldr	r1, .L1634
 5851 336e 03F13A08 		add	r8, r3, #58
 5852 3372 FFF7FEFF 		bl	__aeabi_fmul
 5853 3376 2C68     		ldr	r4, [r5]
 5854 3378 0146     		mov	r1, r0
 5855 337a 54F82800 		ldr	r0, [r4, r8, lsl #2]	@ float
 5856 337e FFF7FEFF 		bl	__aeabi_fdiv
 5857 3382 FFF7FEFF 		bl	__aeabi_f2d
 5858 3386 4A46     		mov	r2, r9
 5859 3388 CDE90001 		strd	r0, [sp]
 5860 338c 3046     		mov	r0, r6
 5861 338e 8249     		ldr	r1, .L1634+20
 5862 3390 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 5863 3394 D5F88831 		ldr	r3, [r5, #392]
 5864 3398 0137     		adds	r7, r7, #1
 5865 339a BB42     		cmp	r3, r7
 5866 339c DFD8     		bhi	.L398
 5867 339e 5446     		mov	r4, r10
 5868 33a0 DAF80830 		ldr	r3, [r10, #8]
 5869 33a4 0027     		movs	r7, #0
 5870 33a6 FDF7A5BA 		b	.L755
 5871              	.L893:
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 104


 5872 33aa D5F88871 		ldr	r7, [r5, #392]
 5873 33ae 0DF1680A 		add	r10, sp, #104
 5874 33b2 0123     		movs	r3, #1
 5875 33b4 14AA     		add	r2, sp, #80
 5876 33b6 5146     		mov	r1, r10
 5877 33b8 2046     		mov	r0, r4
 5878 33ba 1497     		str	r7, [sp, #80]
 5879 33bc FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 5880 33c0 149B     		ldr	r3, [sp, #80]
 5881 33c2 C3B1     		cbz	r3, .L390
 5882 33c4 D5F88411 		ldr	r1, [r5, #388]
 5883 33c8 2A68     		ldr	r2, [r5]
 5884 33ca D5F830B2 		ldr	fp, [r5, #560]	@ float
 5885 33ce 4FEA8309 		lsl	r9, r3, #2
 5886 33d2 02EB8108 		add	r8, r2, r1, lsl #2
 5887 33d6 0027     		movs	r7, #0
 5888              	.L391:
 5889 33d8 5AF80710 		ldr	r1, [r10, r7]	@ float
 5890 33dc 5846     		mov	r0, fp
 5891 33de FFF7FEFF 		bl	__aeabi_fmul
 5892 33e2 6849     		ldr	r1, .L1634
 5893 33e4 FFF7FEFF 		bl	__aeabi_fmul
 5894 33e8 08EB0703 		add	r3, r8, r7
 5895 33ec 0437     		adds	r7, r7, #4
 5896 33ee 4F45     		cmp	r7, r9
 5897 33f0 C3F8E800 		str	r0, [r3, #232]	@ float
 5898 33f4 F0D1     		bne	.L391
 5899              	.L390:
 5900 33f6 A368     		ldr	r3, [r4, #8]
 5901 33f8 0027     		movs	r7, #0
 5902 33fa FDF77BBA 		b	.L755
 5903              	.L220:
 5904 33fe 2046     		mov	r0, r4
 5905 3400 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5906 3404 0DF15008 		add	r8, sp, #80
 5907 3408 0746     		mov	r7, r0
 5908 340a 0DF1680A 		add	r10, sp, #104
 5909 340e 2868     		ldr	r0, [r5]
 5910 3410 3946     		mov	r1, r7
 5911 3412 4346     		mov	r3, r8
 5912 3414 CDF800A0 		str	r10, [sp]
 5913 3418 0222     		movs	r2, #2
 5914 341a FFF7FEFF 		bl	_ZN8Platform14GetFirmwarePinEi9PinAccessRhRb
 5915 341e 0028     		cmp	r0, #0
 5916 3420 01F00281 		beq	.L221
 5917 3424 2046     		mov	r0, r4
 5918 3426 5321     		movs	r1, #83
 5919 3428 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5920 342c 0028     		cmp	r0, #0
 5921 342e 41F0CD86 		bne	.L1573
 5922 3432 0746     		mov	r7, r0
 5923              	.L222:
 5924 3434 A368     		ldr	r3, [r4, #8]
 5925 3436 FDF75DBA 		b	.L755
 5926              	.L1505:
 5927 343a 2046     		mov	r0, r4
 5928 343c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 105


 5929 3440 0146     		mov	r1, r0
 5930 3442 4046     		mov	r0, r8
 5931 3444 FFF7FEFF 		bl	_ZN4Move14SetTaperHeightEf
 5932 3448 0027     		movs	r7, #0
 5933 344a A368     		ldr	r3, [r4, #8]
 5934 344c FDF752BA 		b	.L755
 5935              	.L1471:
 5936 3450 2046     		mov	r0, r4
 5937 3452 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 5938 3456 0146     		mov	r1, r0
 5939 3458 5048     		ldr	r0, .L1634+24
 5940 345a FFF7FEFF 		bl	_ZN6RepRap11SetPasswordEPKc
 5941 345e 0027     		movs	r7, #0
 5942 3460 A368     		ldr	r3, [r4, #8]
 5943 3462 FDF747BA 		b	.L755
 5944              	.L662:
 5945 3466 2046     		mov	r0, r4
 5946 3468 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5947 346c 5321     		movs	r1, #83
 5948 346e 0746     		mov	r7, r0
 5949 3470 2046     		mov	r0, r4
 5950 3472 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5951 3476 0028     		cmp	r0, #0
 5952 3478 41F02E84 		bne	.L1574
 5953 347c 052F     		cmp	r7, #5
 5954 347e 2B68     		ldr	r3, [r5]
 5955 3480 9ABF     		itte	ls
 5956 3482 07F16002 		addls	r2, r7, #96
 5957 3486 53F82200 		ldrls	r0, [r3, r2, lsl #2]	@ float
 5958 348a 0020     		movhi	r0, #0
 5959 348c FFF7FEFF 		bl	__aeabi_f2d
 5960 3490 3A46     		mov	r2, r7
 5961 3492 CDE90001 		strd	r0, [sp]
 5962 3496 3046     		mov	r0, r6
 5963 3498 4149     		ldr	r1, .L1634+28
 5964 349a FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5965 349e 0027     		movs	r7, #0
 5966 34a0 A368     		ldr	r3, [r4, #8]
 5967 34a2 FDF727BA 		b	.L755
 5968              	.L258:
 5969 34a6 2046     		mov	r0, r4
 5970 34a8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 5971 34ac 5421     		movs	r1, #84
 5972 34ae 0746     		mov	r7, r0
 5973 34b0 2046     		mov	r0, r4
 5974 34b2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5975 34b6 0028     		cmp	r0, #0
 5976 34b8 01F04080 		beq	.L259
 5977 34bc 2046     		mov	r0, r4
 5978 34be FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5979 34c2 D4F88830 		ldr	r3, [r4, #136]
 5980 34c6 C118     		adds	r1, r0, r3
 5981 34c8 3448     		ldr	r0, .L1634+24
 5982 34ca FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 5983              	.L260:
 5984 34ce 0146     		mov	r1, r0
 5985 34d0 3A46     		mov	r2, r7
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 106


 5986 34d2 2846     		mov	r0, r5
 5987 34d4 FFF7FEFF 		bl	_ZN6GCodes14SetToolHeatersEP4Toolf
 5988 34d8 0027     		movs	r7, #0
 5989 34da A368     		ldr	r3, [r4, #8]
 5990 34dc FDF70ABA 		b	.L755
 5991              	.L422:
 5992 34e0 D5F8ACA2 		ldr	r10, [r5, #684]	@ float
 5993 34e4 5046     		mov	r0, r10
 5994 34e6 FFF7FEFF 		bl	__aeabi_f2d
 5995 34ea 8046     		mov	r8, r0
 5996 34ec 8946     		mov	r9, r1
 5997 34ee 5046     		mov	r0, r10
 5998 34f0 D5F8B012 		ldr	r1, [r5, #688]	@ float
 5999 34f4 FFF7FEFF 		bl	__aeabi_fadd
 6000 34f8 FFF7FEFF 		bl	__aeabi_f2d
 6001 34fc CDE90001 		strd	r0, [sp]
 6002 3500 2849     		ldr	r1, .L1634+32
 6003 3502 D5F8B402 		ldr	r0, [r5, #692]	@ float
 6004 3506 FFF7FEFF 		bl	__aeabi_fmul
 6005 350a FFF7FEFF 		bl	__aeabi_f2iz
 6006 350e 0290     		str	r0, [sp, #8]
 6007 3510 D5F8B802 		ldr	r0, [r5, #696]	@ float
 6008 3514 2349     		ldr	r1, .L1634+32
 6009 3516 FFF7FEFF 		bl	__aeabi_fmul
 6010 351a FFF7FEFF 		bl	__aeabi_f2iz
 6011 351e 0390     		str	r0, [sp, #12]
 6012 3520 D5F8BC02 		ldr	r0, [r5, #700]	@ float
 6013 3524 FFF7FEFF 		bl	__aeabi_f2d
 6014 3528 4B46     		mov	r3, r9
 6015 352a CDE90401 		strd	r0, [sp, #16]
 6016 352e 4246     		mov	r2, r8
 6017 3530 3046     		mov	r0, r6
 6018 3532 1D49     		ldr	r1, .L1634+36
 6019 3534 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 6020 3538 A368     		ldr	r3, [r4, #8]
 6021 353a FDF7DBB9 		b	.L755
 6022              	.L1511:
 6023 353e 2046     		mov	r0, r4
 6024 3540 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6025 3544 0246     		mov	r2, r0
 6026 3546 FEF7D4BA 		b	.L537
 6027              	.L1510:
 6028 354a 2046     		mov	r0, r4
 6029 354c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6030 3550 0746     		mov	r7, r0
 6031 3552 FEF7C5BA 		b	.L536
 6032              	.L1514:
 6033 3556 2046     		mov	r0, r4
 6034 3558 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6035 355c 0146     		mov	r1, r0
 6036 355e FEF718BB 		b	.L473
 6037              	.L1513:
 6038 3562 2046     		mov	r0, r4
 6039 3564 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6040 3568 0746     		mov	r7, r0
 6041 356a FEF709BB 		b	.L472
 6042              	.L894:
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 107


 6043 356e 2046     		mov	r0, r4
 6044 3570 2F68     		ldr	r7, [r5]
 6045 3572 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6046 3576 C7F83401 		str	r0, [r7, #308]	@ float
 6047 357a A368     		ldr	r3, [r4, #8]
 6048 357c 0027     		movs	r7, #0
 6049 357e FDF7B9B9 		b	.L755
 6050              	.L1635:
 6051 3582 00BF     		.align	2
 6052              	.L1634:
 6053 3584 8988883C 		.word	1015580809
 6054 3588 B0070000 		.word	.LC83
 6055 358c 00000000 		.word	_ZN6GCodes11axisLettersE
 6056 3590 9C070000 		.word	.LC81
 6057 3594 C0040000 		.word	.LC54
 6058 3598 A8070000 		.word	.LC82
 6059 359c 00000000 		.word	reprap
 6060 35a0 F0100000 		.word	.LC145
 6061 35a4 00007042 		.word	1114636288
 6062 35a8 0C080000 		.word	.LC85
 6063              	.L1488:
 6064 35ac 2046     		mov	r0, r4
 6065 35ae 2F68     		ldr	r7, [r5]
 6066 35b0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6067 35b4 5421     		movs	r1, #84
 6068 35b6 C7F83001 		str	r0, [r7, #304]	@ float
 6069 35ba 2046     		mov	r0, r4
 6070 35bc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6071 35c0 0028     		cmp	r0, #0
 6072 35c2 D4D1     		bne	.L894
 6073 35c4 0746     		mov	r7, r0
 6074 35c6 A368     		ldr	r3, [r4, #8]
 6075 35c8 FDF794B9 		b	.L755
 6076              	.L332:
 6077 35cc 2046     		mov	r0, r4
 6078 35ce FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6079 35d2 0146     		mov	r1, r0
 6080 35d4 0028     		cmp	r0, #0
 6081 35d6 3DF4F0AB 		beq	.L333
 6082 35da 2868     		ldr	r0, [r5]
 6083 35dc FFF7FEFF 		bl	_ZN8Platform14DiagnosticTestEi
 6084 35e0 0027     		movs	r7, #0
 6085 35e2 A368     		ldr	r3, [r4, #8]
 6086 35e4 FDF786B9 		b	.L755
 6087              	.L1530:
 6088 35e8 2046     		mov	r0, r4
 6089 35ea FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6090 35ee 0146     		mov	r1, r0
 6091 35f0 0746     		mov	r7, r0
 6092 35f2 FFF7FEFF 		bl	__aeabi_fcmpun
 6093 35f6 0028     		cmp	r0, #0
 6094 35f8 40F08587 		bne	.L937
 6095 35fc 3846     		mov	r0, r7
 6096 35fe B349     		ldr	r1, .L1636
 6097 3600 FFF7FEFF 		bl	__aeabi_fcmpgt
 6098 3604 0028     		cmp	r0, #0
 6099 3606 40F07E87 		bne	.L937
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 108


 6100 360a B048     		ldr	r0, .L1636
 6101              	.L415:
 6102 360c B049     		ldr	r1, .L1636+4
 6103 360e FFF7FEFF 		bl	__aeabi_fmul
 6104 3612 5A21     		movs	r1, #90
 6105 3614 C5F8B802 		str	r0, [r5, #696]	@ float
 6106 3618 2046     		mov	r0, r4
 6107 361a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6108 361e 0028     		cmp	r0, #0
 6109 3620 3EF411AD 		beq	.L418
 6110              	.L417:
 6111 3624 2046     		mov	r0, r4
 6112 3626 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6113 362a 0146     		mov	r1, r0
 6114 362c 0746     		mov	r7, r0
 6115 362e FFF7FEFF 		bl	__aeabi_fcmpun
 6116 3632 30B9     		cbnz	r0, .L420
 6117 3634 3846     		mov	r0, r7
 6118 3636 0021     		movs	r1, #0
 6119 3638 FFF7FEFF 		bl	__aeabi_fcmpgt
 6120 363c 0028     		cmp	r0, #0
 6121 363e 01F07683 		beq	.L1575
 6122              	.L420:
 6123 3642 C5F8BC72 		str	r7, [r5, #700]	@ float
 6124 3646 A368     		ldr	r3, [r4, #8]
 6125 3648 0027     		movs	r7, #0
 6126 364a FDF753B9 		b	.L755
 6127              	.L1529:
 6128 364e 2046     		mov	r0, r4
 6129 3650 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6130 3654 0146     		mov	r1, r0
 6131 3656 0746     		mov	r7, r0
 6132 3658 FFF7FEFF 		bl	__aeabi_fcmpun
 6133 365c 0028     		cmp	r0, #0
 6134 365e 40F05587 		bne	.L935
 6135 3662 3846     		mov	r0, r7
 6136 3664 9949     		ldr	r1, .L1636
 6137 3666 FFF7FEFF 		bl	__aeabi_fcmpgt
 6138 366a 0028     		cmp	r0, #0
 6139 366c 40F04E87 		bne	.L935
 6140 3670 9648     		ldr	r0, .L1636
 6141              	.L412:
 6142 3672 9749     		ldr	r1, .L1636+4
 6143 3674 FFF7FEFF 		bl	__aeabi_fmul
 6144 3678 0127     		movs	r7, #1
 6145 367a C5F8B402 		str	r0, [r5, #692]	@ float
 6146 367e C5F8B802 		str	r0, [r5, #696]	@ float
 6147 3682 FEF7CFBC 		b	.L411
 6148              	.L1528:
 6149 3686 2046     		mov	r0, r4
 6150 3688 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6151 368c D5F8AC32 		ldr	r3, [r5, #684]
 6152 3690 0146     		mov	r1, r0
 6153 3692 0746     		mov	r7, r0
 6154 3694 03F10048 		add	r8, r3, #-2147483648
 6155 3698 FFF7FEFF 		bl	__aeabi_fcmpun
 6156 369c 28B9     		cbnz	r0, .L409
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 109


 6157 369e 3846     		mov	r0, r7
 6158 36a0 4146     		mov	r1, r8
 6159 36a2 FFF7FEFF 		bl	__aeabi_fcmpgt
 6160 36a6 00B9     		cbnz	r0, .L409
 6161 36a8 4746     		mov	r7, r8
 6162              	.L409:
 6163 36aa C5F8B072 		str	r7, [r5, #688]	@ float
 6164 36ae 0127     		movs	r7, #1
 6165 36b0 FEF7B1BC 		b	.L408
 6166              	.L1527:
 6167 36b4 2046     		mov	r0, r4
 6168 36b6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6169 36ba 0146     		mov	r1, r0
 6170 36bc 0746     		mov	r7, r0
 6171 36be FFF7FEFF 		bl	__aeabi_fcmpun
 6172 36c2 30B9     		cbnz	r0, .L406
 6173 36c4 3846     		mov	r0, r7
 6174 36c6 0021     		movs	r1, #0
 6175 36c8 FFF7FEFF 		bl	__aeabi_fcmpgt
 6176 36cc 0028     		cmp	r0, #0
 6177 36ce 01F00083 		beq	.L1576
 6178              	.L406:
 6179 36d2 C5F8AC72 		str	r7, [r5, #684]	@ float
 6180 36d6 0127     		movs	r7, #1
 6181 36d8 FEF796BC 		b	.L405
 6182              	.L689:
 6183 36dc 2046     		mov	r0, r4
 6184 36de FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6185 36e2 0138     		subs	r0, r0, #1
 6186 36e4 0228     		cmp	r0, #2
 6187 36e6 96BF     		itet	ls
 6188 36e8 7A4B     		ldrls	r3, .L1636+8
 6189 36ea 4FF0000A 		movhi	r10, #0
 6190 36ee 53F820A0 		ldrls	r10, [r3, r0, lsl #2]
 6191 36f2 D5F88431 		ldr	r3, [r5, #388]
 6192 36f6 002B     		cmp	r3, #0
 6193 36f8 00F0E583 		beq	.L695
 6194 36fc 764F     		ldr	r7, .L1636+12
 6195 36fe 4FF00008 		mov	r8, #0
 6196 3702 06E0     		b	.L697
 6197              	.L696:
 6198 3704 D5F88431 		ldr	r3, [r5, #388]
 6199 3708 08F10108 		add	r8, r8, #1
 6200 370c 4345     		cmp	r3, r8
 6201 370e 40F2DA83 		bls	.L695
 6202              	.L697:
 6203 3712 2046     		mov	r0, r4
 6204 3714 17F80810 		ldrb	r1, [r7, r8]	@ zero_extendqisi2
 6205 3718 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6206 371c 0028     		cmp	r0, #0
 6207 371e F1D0     		beq	.L696
 6208 3720 2868     		ldr	r0, [r5]
 6209 3722 4146     		mov	r1, r8
 6210 3724 FFF7FEFF 		bl	_ZNK8Platform7StoppedEj
 6211 3728 8245     		cmp	r10, r0
 6212 372a EBD0     		beq	.L696
 6213 372c 4FF00009 		mov	r9, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 110


 6214              	.L692:
 6215 3730 0DF15008 		add	r8, sp, #80
 6216 3734 0623     		movs	r3, #6
 6217 3736 2046     		mov	r0, r4
 6218 3738 4521     		movs	r1, #69
 6219 373a C8F80030 		str	r3, [r8]
 6220 373e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6221 3742 0028     		cmp	r0, #0
 6222 3744 3EF492AE 		beq	.L1454
 6223 3748 1AA9     		add	r1, sp, #104
 6224 374a 2046     		mov	r0, r4
 6225 374c 4246     		mov	r2, r8
 6226 374e FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 6227 3752 D8F80070 		ldr	r7, [r8]
 6228 3756 002F     		cmp	r7, #0
 6229 3758 3DF4C9AC 		beq	.L172
 6230 375c 1A99     		ldr	r1, [sp, #104]
 6231 375e 0529     		cmp	r1, #5
 6232 3760 14D8     		bhi	.L700
 6233 3762 0DF1680B 		add	fp, sp, #104
 6234 3766 0027     		movs	r7, #0
 6235              	.L701:
 6236 3768 0331     		adds	r1, r1, #3
 6237 376a 2868     		ldr	r0, [r5]
 6238 376c FFF7FEFF 		bl	_ZNK8Platform7StoppedEj
 6239 3770 8245     		cmp	r10, r0
 6240 3772 07F10107 		add	r7, r7, #1
 6241 3776 7DF4CAAC 		bne	.L207
 6242 377a D8F80030 		ldr	r3, [r8]
 6243 377e BB42     		cmp	r3, r7
 6244 3780 7EF674AE 		bls	.L1454
 6245 3784 5BF8041F 		ldr	r1, [fp, #4]!
 6246 3788 0529     		cmp	r1, #5
 6247 378a EDD9     		bls	.L701
 6248              	.L700:
 6249 378c 3046     		mov	r0, r6
 6250 378e 5349     		ldr	r1, .L1636+16
 6251 3790 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 6252 3794 0127     		movs	r7, #1
 6253 3796 FDF7AEBC 		b	.L1430
 6254              	.L712:
 6255 379a 2046     		mov	r0, r4
 6256 379c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6257 37a0 0928     		cmp	r0, #9
 6258 37a2 8046     		mov	r8, r0
 6259 37a4 01F2AE82 		bhi	.L713
 6260 37a8 40F24623 		movw	r3, #582
 6261 37ac 9945     		cmp	r9, r3
 6262 37ae 01F0EF82 		beq	.L1577
 6263 37b2 2046     		mov	r0, r4
 6264 37b4 4321     		movs	r1, #67
 6265 37b6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6266 37ba 0028     		cmp	r0, #0
 6267 37bc 41F07384 		bne	.L1578
 6268 37c0 0622     		movs	r2, #6
 6269 37c2 02FB08F2 		mul	r2, r2, r8
 6270 37c6 02F53073 		add	r3, r2, #704
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 111


 6271 37ca 2B44     		add	r3, r3, r5
 6272 37cc 5988     		ldrh	r1, [r3, #2]
 6273 37ce 0233     		adds	r3, r3, #2
 6274 37d0 0029     		cmp	r1, #0
 6275 37d2 01F0F282 		beq	.L1579
 6276              	.L719:
 6277 37d6 2046     		mov	r0, r4
 6278 37d8 5321     		movs	r1, #83
 6279 37da FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6280 37de 0746     		mov	r7, r0
 6281 37e0 0028     		cmp	r0, #0
 6282 37e2 41F0F183 		bne	.L717
 6283 37e6 4246     		mov	r2, r8
 6284 37e8 3D49     		ldr	r1, .L1636+20
 6285 37ea 3046     		mov	r0, r6
 6286 37ec FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 6287 37f0 96E80600 		ldmia	r6, {r1, r2}
 6288 37f4 0623     		movs	r3, #6
 6289 37f6 03FB0858 		mla	r8, r3, r8, r5
 6290 37fa 2846     		mov	r0, r5
 6291 37fc B8F8C232 		ldrh	r3, [r8, #706]
 6292 3800 FFF7FEFF 		bl	_ZN6GCodes12ListTriggersE9StringReft
 6293 3804 3749     		ldr	r1, .L1636+24
 6294 3806 3046     		mov	r0, r6
 6295 3808 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 6296 380c 96E80600 		ldmia	r6, {r1, r2}
 6297 3810 B8F8C432 		ldrh	r3, [r8, #708]
 6298 3814 2846     		mov	r0, r5
 6299 3816 FFF7FEFF 		bl	_ZN6GCodes12ListTriggersE9StringReft
 6300 381a 3046     		mov	r0, r6
 6301 381c 3249     		ldr	r1, .L1636+28
 6302 381e FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 6303 3822 98F8C632 		ldrb	r3, [r8, #710]	@ zero_extendqisi2
 6304 3826 012B     		cmp	r3, #1
 6305 3828 01F0D486 		beq	.L734
 6306 382c A368     		ldr	r3, [r4, #8]
 6307 382e FDF761B8 		b	.L755
 6308              	.L1500:
 6309 3832 3046     		mov	r0, r6
 6310 3834 2D49     		ldr	r1, .L1636+32
 6311 3836 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 6312 383a 0127     		movs	r7, #1
 6313 383c A368     		ldr	r3, [r4, #8]
 6314 383e FDF759B8 		b	.L755
 6315              	.L1515:
 6316 3842 2046     		mov	r0, r4
 6317 3844 DF68     		ldr	r7, [r3, #12]
 6318 3846 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6319 384a 0028     		cmp	r0, #0
 6320 384c D4BF     		ite	le
 6321 384e 0020     		movle	r0, #0
 6322 3850 0120     		movgt	r0, #1
 6323 3852 87F82900 		strb	r0, [r7, #41]
 6324 3856 A368     		ldr	r3, [r4, #8]
 6325 3858 0027     		movs	r7, #0
 6326 385a FDF74BB8 		b	.L755
 6327              	.L675:
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 112


 6328 385e 3046     		mov	r0, r6
 6329 3860 2349     		ldr	r1, .L1636+36
 6330 3862 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 6331 3866 D5F88471 		ldr	r7, [r5, #388]
 6332 386a 002F     		cmp	r7, #0
 6333 386c 01F03A84 		beq	.L1580
 6334 3870 194F     		ldr	r7, .L1636+12
 6335 3872 DFF894A0 		ldr	r10, .L1636+60
 6336 3876 DFF89490 		ldr	r9, .L1636+64
 6337 387a 4FF00008 		mov	r8, #0
 6338 387e 10E0     		b	.L679
 6339              	.L1582:
 6340 3880 0129     		cmp	r1, #1
 6341 3882 21D0     		beq	.L976
 6342 3884 1B4B     		ldr	r3, .L1636+40
 6343 3886 1C48     		ldr	r0, .L1636+44
 6344 3888 C1B9     		cbnz	r1, .L676
 6345              	.L677:
 6346 388a 0090     		str	r0, [sp]
 6347 388c 1B49     		ldr	r1, .L1636+48
 6348 388e 3046     		mov	r0, r6
 6349 3890 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 6350 3894 D5F88431 		ldr	r3, [r5, #388]
 6351 3898 08F10108 		add	r8, r8, #1
 6352 389c 4345     		cmp	r3, r8
 6353 389e 40F20E83 		bls	.L1581
 6354              	.L679:
 6355 38a2 2B68     		ldr	r3, [r5]
 6356 38a4 08F59F72 		add	r2, r8, #318
 6357 38a8 53F82210 		ldr	r1, [r3, r2, lsl #2]
 6358 38ac 4344     		add	r3, r3, r8
 6359 38ae 0229     		cmp	r1, #2
 6360 38b0 93F810E5 		ldrb	lr, [r3, #1296]	@ zero_extendqisi2
 6361 38b4 17F80820 		ldrb	r2, [r7, r8]	@ zero_extendqisi2
 6362 38b8 E2D1     		bne	.L1582
 6363 38ba 114B     		ldr	r3, .L1636+52
 6364              	.L676:
 6365 38bc BEF1000F 		cmp	lr, #0
 6366 38c0 0CBF     		ite	eq
 6367 38c2 5046     		moveq	r0, r10
 6368 38c4 4846     		movne	r0, r9
 6369 38c6 E0E7     		b	.L677
 6370              	.L976:
 6371 38c8 0E4B     		ldr	r3, .L1636+56
 6372 38ca F7E7     		b	.L676
 6373              	.L1637:
 6374              		.align	2
 6375              	.L1636:
 6376 38cc 00007042 		.word	1114636288
 6377 38d0 8988883C 		.word	1015580809
 6378 38d4 00000000 		.word	.LANCHOR6
 6379 38d8 00000000 		.word	_ZN6GCodes11axisLettersE
 6380 38dc 94110000 		.word	.LC150
 6381 38e0 FC110000 		.word	.LC154
 6382 38e4 24120000 		.word	.LC155
 6383 38e8 3C120000 		.word	.LC156
 6384 38ec A0020000 		.word	.LC40
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 113


 6385 38f0 40110000 		.word	.LC147
 6386 38f4 24010000 		.word	.LC22
 6387 38f8 A4000000 		.word	.LC9
 6388 38fc 58110000 		.word	.LC148
 6389 3900 2C010000 		.word	.LC23
 6390 3904 38010000 		.word	.LC24
 6391 3908 40010000 		.word	.LC25
 6392 390c 44010000 		.word	.LC26
 6393              	.L1482:
 6394 3910 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6395 3914 0028     		cmp	r0, #0
 6396 3916 C1F2B581 		blt	.L1583
 6397 391a 0628     		cmp	r0, #6
 6398 391c 01F3AB82 		bgt	.L351
 6399 3920 C04B     		ldr	r3, .L1638
 6400 3922 0027     		movs	r7, #0
 6401 3924 DB68     		ldr	r3, [r3, #12]
 6402 3926 83F82B00 		strb	r0, [r3, #43]
 6403              	.L350:
 6404 392a 2046     		mov	r0, r4
 6405 392c 5321     		movs	r1, #83
 6406 392e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6407 3932 0028     		cmp	r0, #0
 6408 3934 7DF488AB 		bne	.L889
 6409 3938 A368     		ldr	r3, [r4, #8]
 6410 393a FCF7DBBF 		b	.L755
 6411              	.L490:
 6412 393e 2046     		mov	r0, r4
 6413 3940 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6414 3944 0628     		cmp	r0, #6
 6415 3946 8046     		mov	r8, r0
 6416 3948 40F2CA86 		bls	.L491
 6417 394c A368     		ldr	r3, [r4, #8]
 6418 394e 0027     		movs	r7, #0
 6419 3950 FCF7D0BF 		b	.L755
 6420              	.L871:
 6421 3954 2046     		mov	r0, r4
 6422 3956 4521     		movs	r1, #69
 6423 3958 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6424 395c 0028     		cmp	r0, #0
 6425 395e 40F0F980 		bne	.L892
 6426              	.L378:
 6427 3962 3046     		mov	r0, r6
 6428 3964 B049     		ldr	r1, .L1638+4
 6429 3966 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 6430 396a D5F88431 		ldr	r3, [r5, #388]
 6431 396e DBB1     		cbz	r3, .L382
 6432 3970 AE4F     		ldr	r7, .L1638+8
 6433 3972 4FF00008 		mov	r8, #0
 6434              	.L383:
 6435 3976 2B68     		ldr	r3, [r5]
 6436 3978 D5F83012 		ldr	r1, [r5, #560]	@ float
 6437 397c 03EB8803 		add	r3, r3, r8, lsl #2
 6438 3980 D3F80C01 		ldr	r0, [r3, #268]	@ float
 6439 3984 FFF7FEFF 		bl	__aeabi_fdiv
 6440 3988 FFF7FEFF 		bl	__aeabi_f2d
 6441 398c 17F80820 		ldrb	r2, [r7, r8]	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 114


 6442 3990 CDE90001 		strd	r0, [sp]
 6443 3994 3046     		mov	r0, r6
 6444 3996 A649     		ldr	r1, .L1638+12
 6445 3998 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 6446 399c D5F88431 		ldr	r3, [r5, #388]
 6447 39a0 08F10108 		add	r8, r8, #1
 6448 39a4 4345     		cmp	r3, r8
 6449 39a6 E6D8     		bhi	.L383
 6450              	.L382:
 6451 39a8 3046     		mov	r0, r6
 6452 39aa A249     		ldr	r1, .L1638+16
 6453 39ac FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 6454 39b0 D5F88871 		ldr	r7, [r5, #392]
 6455 39b4 002F     		cmp	r7, #0
 6456 39b6 01F05384 		beq	.L1584
 6457 39ba 0027     		movs	r7, #0
 6458 39bc 4FF02008 		mov	r8, #32
 6459 39c0 01E0     		b	.L385
 6460              	.L384:
 6461 39c2 4FF03A08 		mov	r8, #58
 6462              	.L385:
 6463 39c6 D5F88411 		ldr	r1, [r5, #388]
 6464 39ca 2B68     		ldr	r3, [r5]
 6465 39cc 3944     		add	r1, r1, r7
 6466 39ce 03EB8103 		add	r3, r3, r1, lsl #2
 6467 39d2 D3F80C01 		ldr	r0, [r3, #268]	@ float
 6468 39d6 D5F83012 		ldr	r1, [r5, #560]	@ float
 6469 39da FFF7FEFF 		bl	__aeabi_fdiv
 6470 39de FFF7FEFF 		bl	__aeabi_f2d
 6471 39e2 4246     		mov	r2, r8
 6472 39e4 CDE90001 		strd	r0, [sp]
 6473 39e8 3046     		mov	r0, r6
 6474 39ea 9349     		ldr	r1, .L1638+20
 6475 39ec FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 6476 39f0 D5F88831 		ldr	r3, [r5, #392]
 6477 39f4 0137     		adds	r7, r7, #1
 6478 39f6 BB42     		cmp	r3, r7
 6479 39f8 E3D8     		bhi	.L384
 6480 39fa A368     		ldr	r3, [r4, #8]
 6481 39fc 0027     		movs	r7, #0
 6482 39fe FCF779BF 		b	.L755
 6483              	.L1532:
 6484 3a02 2046     		mov	r0, r4
 6485 3a04 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6486 3a08 10F1000A 		adds	r10, r0, #0
 6487 3a0c 18BF     		it	ne
 6488 3a0e 4FF0010A 		movne	r10, #1
 6489 3a12 FEF7B6BB 		b	.L668
 6490              	.L899:
 6491 3a16 2046     		mov	r0, r4
 6492 3a18 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6493 3a1c 814B     		ldr	r3, .L1638
 6494 3a1e 0028     		cmp	r0, #0
 6495 3a20 00F09A85 		beq	.L560
 6496 3a24 5868     		ldr	r0, [r3, #4]
 6497 3a26 FFF7FEFF 		bl	_ZN7Network6EnableEv
 6498              	.L561:
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 115


 6499 3a2a A368     		ldr	r3, [r4, #8]
 6500 3a2c 0027     		movs	r7, #0
 6501 3a2e FCF761BF 		b	.L755
 6502              	.L1531:
 6503 3a32 2846     		mov	r0, r5
 6504 3a34 2146     		mov	r1, r4
 6505 3a36 4FF40A72 		mov	r2, #552
 6506 3a3a FFF7FEFF 		bl	_ZN6GCodes18SetEthernetAddressER11GCodeBufferi
 6507 3a3e 2046     		mov	r0, r4
 6508 3a40 5321     		movs	r1, #83
 6509 3a42 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6510 3a46 0028     		cmp	r0, #0
 6511 3a48 E5D1     		bne	.L899
 6512 3a4a 0746     		mov	r7, r0
 6513 3a4c A368     		ldr	r3, [r4, #8]
 6514 3a4e FCF751BF 		b	.L755
 6515              	.L1525:
 6516 3a52 2046     		mov	r0, r4
 6517 3a54 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 6518 3a58 0746     		mov	r7, r0
 6519 3a5a FEF782BA 		b	.L603
 6520              	.L897:
 6521 3a5e 2046     		mov	r0, r4
 6522 3a60 2F68     		ldr	r7, [r5]
 6523 3a62 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6524 3a66 C7F81807 		str	r0, [r7, #1816]	@ float
 6525 3a6a A368     		ldr	r3, [r4, #8]
 6526 3a6c 0027     		movs	r7, #0
 6527 3a6e FCF741BF 		b	.L755
 6528              	.L1489:
 6529 3a72 2046     		mov	r0, r4
 6530 3a74 2F68     		ldr	r7, [r5]
 6531 3a76 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6532 3a7a 4421     		movs	r1, #68
 6533 3a7c C7F81407 		str	r0, [r7, #1812]	@ float
 6534 3a80 2046     		mov	r0, r4
 6535 3a82 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6536 3a86 0028     		cmp	r0, #0
 6537 3a88 E9D1     		bne	.L897
 6538 3a8a 0746     		mov	r7, r0
 6539 3a8c A368     		ldr	r3, [r4, #8]
 6540 3a8e FCF731BF 		b	.L755
 6541              	.L1469:
 6542 3a92 2046     		mov	r0, r4
 6543 3a94 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6544 3a98 0628     		cmp	r0, #6
 6545 3a9a 8046     		mov	r8, r0
 6546 3a9c 7DF6D9A8 		bls	.L358
 6547 3aa0 3046     		mov	r0, r6
 6548 3aa2 6649     		ldr	r1, .L1638+24
 6549 3aa4 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 6550 3aa8 0127     		movs	r7, #1
 6551 3aaa A368     		ldr	r3, [r4, #8]
 6552 3aac FCF722BF 		b	.L755
 6553              	.L1457:
 6554 3ab0 3046     		mov	r0, r6
 6555 3ab2 6349     		ldr	r1, .L1638+28
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 116


 6556 3ab4 0223     		movs	r3, #2
 6557 3ab6 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 6558 3aba FCF79BBF 		b	.L264
 6559              	.L1556:
 6560 3abe 2046     		mov	r0, r4
 6561 3ac0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6562 3ac4 0030     		adds	r0, r0, #0
 6563 3ac6 4FF00103 		mov	r3, #1
 6564 3aca 18BF     		it	ne
 6565 3acc 0120     		movne	r0, #1
 6566 3ace 8AF82C00 		strb	r0, [r10, #44]
 6567 3ad2 88F80030 		strb	r3, [r8]
 6568 3ad6 FEF7AFBE 		b	.L591
 6569              	.L432:
 6570 3ada 3046     		mov	r0, r6
 6571 3adc 5949     		ldr	r1, .L1638+32
 6572 3ade FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 6573 3ae2 D5F88471 		ldr	r7, [r5, #388]
 6574 3ae6 002F     		cmp	r7, #0
 6575 3ae8 01F0F681 		beq	.L1585
 6576 3aec 4F4F     		ldr	r7, .L1638+8
 6577 3aee 4FF00008 		mov	r8, #0
 6578 3af2 4FF02D0B 		mov	fp, #45
 6579 3af6 01E0     		b	.L434
 6580              	.L433:
 6581 3af8 4FF02C0B 		mov	fp, #44
 6582              	.L434:
 6583 3afc 2968     		ldr	r1, [r5]
 6584 3afe 17F808A0 		ldrb	r10, [r7, r8]	@ zero_extendqisi2
 6585 3b02 01EB8809 		add	r9, r1, r8, lsl #2
 6586 3b06 D9F8E004 		ldr	r0, [r9, #1248]	@ float
 6587 3b0a FFF7FEFF 		bl	__aeabi_f2d
 6588 3b0e CDE90001 		strd	r0, [sp]
 6589 3b12 D9F8C804 		ldr	r0, [r9, #1224]	@ float
 6590 3b16 FFF7FEFF 		bl	__aeabi_f2d
 6591 3b1a 5346     		mov	r3, r10
 6592 3b1c CDE90201 		strd	r0, [sp, #8]
 6593 3b20 5A46     		mov	r2, fp
 6594 3b22 3046     		mov	r0, r6
 6595 3b24 4849     		ldr	r1, .L1638+36
 6596 3b26 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 6597 3b2a D5F88431 		ldr	r3, [r5, #388]
 6598 3b2e 08F10108 		add	r8, r8, #1
 6599 3b32 4345     		cmp	r3, r8
 6600 3b34 E0D8     		bhi	.L433
 6601 3b36 A368     		ldr	r3, [r4, #8]
 6602 3b38 0027     		movs	r7, #0
 6603 3b3a FCF7DBBE 		b	.L755
 6604              	.L1474:
 6605 3b3e 2046     		mov	r0, r4
 6606 3b40 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6607 3b44 B0F1010B 		subs	fp, r0, #1
 6608 3b48 DBF1000A 		rsbs	r10, fp, #0
 6609 3b4c 5AEB0B0A 		adcs	r10, r10, fp
 6610 3b50 FDF76BB9 		b	.L424
 6611              	.L892:
 6612 3b54 D5F88871 		ldr	r7, [r5, #392]
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 117


 6613 3b58 0DF1680A 		add	r10, sp, #104
 6614 3b5c 0123     		movs	r3, #1
 6615 3b5e 14AA     		add	r2, sp, #80
 6616 3b60 5146     		mov	r1, r10
 6617 3b62 2046     		mov	r0, r4
 6618 3b64 1497     		str	r7, [sp, #80]
 6619 3b66 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 6620 3b6a 149B     		ldr	r3, [sp, #80]
 6621 3b6c ABB1     		cbz	r3, .L376
 6622 3b6e D5F88411 		ldr	r1, [r5, #388]
 6623 3b72 2A68     		ldr	r2, [r5]
 6624 3b74 D5F830B2 		ldr	fp, [r5, #560]	@ float
 6625 3b78 4FEA8309 		lsl	r9, r3, #2
 6626 3b7c 02EB8108 		add	r8, r2, r1, lsl #2
 6627 3b80 0027     		movs	r7, #0
 6628              	.L377:
 6629 3b82 5AF80700 		ldr	r0, [r10, r7]	@ float
 6630 3b86 5946     		mov	r1, fp
 6631 3b88 FFF7FEFF 		bl	__aeabi_fmul
 6632 3b8c 08EB0703 		add	r3, r8, r7
 6633 3b90 0437     		adds	r7, r7, #4
 6634 3b92 4F45     		cmp	r7, r9
 6635 3b94 C3F80C01 		str	r0, [r3, #268]	@ float
 6636 3b98 F3D1     		bne	.L377
 6637              	.L376:
 6638 3b9a A368     		ldr	r3, [r4, #8]
 6639 3b9c 0027     		movs	r7, #0
 6640 3b9e FCF7A9BE 		b	.L755
 6641              	.L1479:
 6642 3ba2 2046     		mov	r0, r4
 6643 3ba4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6644 3ba8 C0B2     		uxtb	r0, r0
 6645 3baa 4FFA80F8 		sxtb	r8, r0
 6646 3bae B8F1000F 		cmp	r8, #0
 6647 3bb2 C1F2F881 		blt	.L1586
 6648 3bb6 B8F1060F 		cmp	r8, #6
 6649 3bba 01F37580 		bgt	.L1587
 6650 3bbe DFF864A0 		ldr	r10, .L1638
 6651 3bc2 DAF80C30 		ldr	r3, [r10, #12]
 6652 3bc6 83F82A00 		strb	r0, [r3, #42]
 6653 3bca FDF71CBA 		b	.L341
 6654              	.L1522:
 6655 3bce 2046     		mov	r0, r4
 6656 3bd0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6657 3bd4 0030     		adds	r0, r0, #0
 6658 3bd6 18BF     		it	ne
 6659 3bd8 0120     		movne	r0, #1
 6660 3bda 85F85A02 		strb	r0, [r5, #602]
 6661 3bde A368     		ldr	r3, [r4, #8]
 6662 3be0 0027     		movs	r7, #0
 6663 3be2 FCF787BE 		b	.L755
 6664              	.L1485:
 6665 3be6 0F48     		ldr	r0, .L1638
 6666 3be8 FFF7FEFF 		bl	_ZN6RepRap13EmergencyStopEv
 6667 3bec 2046     		mov	r0, r4
 6668 3bee 5021     		movs	r1, #80
 6669 3bf0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 118


 6670 3bf4 0028     		cmp	r0, #0
 6671 3bf6 41F08E80 		bne	.L1588
 6672 3bfa 0146     		mov	r1, r0
 6673              	.L856:
 6674 3bfc 2868     		ldr	r0, [r5]
 6675 3bfe 0022     		movs	r2, #0
 6676 3c00 FFF7FEFF 		bl	_ZN8Platform13SoftwareResetEtPKm
 6677 3c04 0027     		movs	r7, #0
 6678 3c06 A368     		ldr	r3, [r4, #8]
 6679 3c08 FCF774BE 		b	.L755
 6680              	.L853:
 6681 3c0c 2046     		mov	r0, r4
 6682 3c0e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6683 3c12 0246     		mov	r2, r0
 6684 3c14 0028     		cmp	r0, #0
 6685 3c16 41F06D80 		bne	.L854
 6686 3c1a 0746     		mov	r7, r0
 6687 3c1c A368     		ldr	r3, [r4, #8]
 6688 3c1e FCF769BE 		b	.L755
 6689              	.L1639:
 6690 3c22 00BF     		.align	2
 6691              	.L1638:
 6692 3c24 00000000 		.word	reprap
 6693 3c28 8C070000 		.word	.LC80
 6694 3c2c 00000000 		.word	_ZN6GCodes11axisLettersE
 6695 3c30 9C070000 		.word	.LC81
 6696 3c34 C0040000 		.word	.LC54
 6697 3c38 A8070000 		.word	.LC82
 6698 3c3c 2C070000 		.word	.LC77
 6699 3c40 D8040000 		.word	.LC57
 6700 3c44 64080000 		.word	.LC86
 6701 3c48 74080000 		.word	.LC87
 6702              	.L1555:
 6703 3c4c 2046     		mov	r0, r4
 6704 3c4e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6705 3c52 BF49     		ldr	r1, .L1640+8
 6706 3c54 FFF7FEFF 		bl	__aeabi_fmul
 6707 3c58 0123     		movs	r3, #1
 6708 3c5a CAF82000 		str	r0, [r10, #32]	@ float
 6709 3c5e 88F80030 		strb	r3, [r8]
 6710 3c62 FEF7E2BD 		b	.L590
 6711              	.L709:
 6712 3c66 3046     		mov	r0, r6
 6713 3c68 BA49     		ldr	r1, .L1640+12
 6714 3c6a FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 6715 3c6e D5F88431 		ldr	r3, [r5, #388]
 6716 3c72 002B     		cmp	r3, #0
 6717 3c74 3CF4E1AF 		beq	.L706
 6718 3c78 B74F     		ldr	r7, .L1640+16
 6719 3c7a A946     		mov	r9, r5
 6720 3c7c 4FF00008 		mov	r8, #0
 6721 3c80 4FF03A0A 		mov	r10, #58
 6722 3c84 01E0     		b	.L710
 6723              	.L1589:
 6724 3c86 4FF02C0A 		mov	r10, #44
 6725              	.L710:
 6726 3c8a D9F88C01 		ldr	r0, [r9, #396]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 119


 6727 3c8e FFF7FEFF 		bl	__aeabi_f2d
 6728 3c92 17F80830 		ldrb	r3, [r7, r8]	@ zero_extendqisi2
 6729 3c96 CDE90001 		strd	r0, [sp]
 6730 3c9a 5246     		mov	r2, r10
 6731 3c9c 3046     		mov	r0, r6
 6732 3c9e AF49     		ldr	r1, .L1640+20
 6733 3ca0 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 6734 3ca4 D5F88431 		ldr	r3, [r5, #388]
 6735 3ca8 08F10108 		add	r8, r8, #1
 6736 3cac 4345     		cmp	r3, r8
 6737 3cae 09F10409 		add	r9, r9, #4
 6738 3cb2 E8D8     		bhi	.L1589
 6739 3cb4 FCF7C1BF 		b	.L706
 6740              	.L1486:
 6741 3cb8 2046     		mov	r0, r4
 6742 3cba FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 6743 3cbe 0746     		mov	r7, r0
 6744 3cc0 FDF731BA 		b	.L600
 6745              	.L1539:
 6746 3cc4 2846     		mov	r0, r5
 6747 3cc6 2146     		mov	r1, r4
 6748 3cc8 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 6749 3ccc 0028     		cmp	r0, #0
 6750 3cce 3CF486AF 		beq	.L546
 6751 3cd2 95F8A872 		ldrb	r7, [r5, #680]	@ zero_extendqisi2
 6752 3cd6 2046     		mov	r0, r4
 6753 3cd8 0037     		adds	r7, r7, #0
 6754 3cda 18BF     		it	ne
 6755 3cdc 0127     		movne	r7, #1
 6756 3cde FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6757 3ce2 DFF89082 		ldr	r8, .L1640+44
 6758 3ce6 C1B2     		uxtb	r1, r0
 6759 3ce8 85F8A812 		strb	r1, [r5, #680]
 6760 3cec D8F80800 		ldr	r0, [r8, #8]
 6761 3cf0 FFF7FEFF 		bl	_ZN4Move8SimulateEh
 6762 3cf4 95F8A832 		ldrb	r3, [r5, #680]	@ zero_extendqisi2
 6763 3cf8 002B     		cmp	r3, #0
 6764 3cfa 01F0A680 		beq	.L210
 6765 3cfe 0023     		movs	r3, #0
 6766 3d00 C5F8A432 		str	r3, [r5, #676]	@ float
 6767 3d04 002F     		cmp	r7, #0
 6768 3d06 01F00984 		beq	.L211
 6769 3d0a A368     		ldr	r3, [r4, #8]
 6770 3d0c 0027     		movs	r7, #0
 6771 3d0e FCF7F1BD 		b	.L755
 6772              	.L1553:
 6773 3d12 2046     		mov	r0, r4
 6774 3d14 2F68     		ldr	r7, [r5]
 6775 3d16 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6776 3d1a 0146     		mov	r1, r0
 6777 3d1c 3846     		mov	r0, r7
 6778 3d1e FFF7FEFF 		bl	_ZN8Platform13SetZProbeTypeEi
 6779 3d22 0127     		movs	r7, #1
 6780 3d24 FEF758BD 		b	.L588
 6781              	.L1552:
 6782 3d28 2868     		ldr	r0, [r5]
 6783 3d2a 4946     		mov	r1, r9
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 120


 6784 3d2c FFF7FEFF 		bl	_ZN8Platform13SetZProbeAxesEm
 6785 3d30 FEF74ABD 		b	.L583
 6786              	.L1554:
 6787 3d34 2046     		mov	r0, r4
 6788 3d36 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6789 3d3a 8549     		ldr	r1, .L1640+8
 6790 3d3c FFF7FEFF 		bl	__aeabi_fmul
 6791 3d40 0123     		movs	r3, #1
 6792 3d42 CAF81C00 		str	r0, [r10, #28]	@ float
 6793 3d46 88F80030 		strb	r3, [r8]
 6794 3d4a FEF767BD 		b	.L589
 6795              	.L367:
 6796 3d4e 5321     		movs	r1, #83
 6797 3d50 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6798 3d54 0028     		cmp	r0, #0
 6799 3d56 3FF4CFA8 		beq	.L369
 6800 3d5a 2046     		mov	r0, r4
 6801 3d5c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6802 3d60 FDF74FBD 		b	.L368
 6803              	.L277:
 6804 3d64 2046     		mov	r0, r4
 6805 3d66 5221     		movs	r1, #82
 6806 3d68 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6807 3d6c 0028     		cmp	r0, #0
 6808 3d6e 40F0F387 		bne	.L1590
 6809 3d72 BAF1000F 		cmp	r10, #0
 6810 3d76 7CF43DAE 		bne	.L264
 6811 3d7a D8F80400 		ldr	r0, [r8, #4]	@ float
 6812 3d7e FFF7FEFF 		bl	__aeabi_f2d
 6813 3d82 0022     		movs	r2, #0
 6814 3d84 764B     		ldr	r3, .L1640+24
 6815 3d86 FFF7FEFF 		bl	__aeabi_dmul
 6816 3d8a FFF7FEFF 		bl	__aeabi_d2iz
 6817 3d8e 8046     		mov	r8, r0
 6818 3d90 7868     		ldr	r0, [r7, #4]	@ float
 6819 3d92 FFF7FEFF 		bl	__aeabi_f2d
 6820 3d96 0022     		movs	r2, #0
 6821 3d98 714B     		ldr	r3, .L1640+24
 6822 3d9a FFF7FEFF 		bl	__aeabi_dmul
 6823 3d9e FFF7FEFF 		bl	__aeabi_d2iz
 6824 3da2 8346     		mov	fp, r0
 6825 3da4 3869     		ldr	r0, [r7, #16]
 6826 3da6 FFF7FEFF 		bl	__aeabi_ui2f
 6827 3daa 6E49     		ldr	r1, .L1640+28
 6828 3dac FFF7FEFF 		bl	__aeabi_fmul
 6829 3db0 FFF7FEFF 		bl	__aeabi_f2d
 6830 3db4 7A7F     		ldrb	r2, [r7, #29]	@ zero_extendqisi2
 6831 3db6 DFF8D0C1 		ldr	ip, .L1640+64
 6832 3dba DFF8D0E1 		ldr	lr, .L1640+68
 6833 3dbe D9F80090 		ldr	r9, [r9]
 6834 3dc2 002A     		cmp	r2, #0
 6835 3dc4 08BF     		it	eq
 6836 3dc6 E646     		moveq	lr, ip
 6837 3dc8 3B8B     		ldrh	r3, [r7, #24]
 6838 3dca 4A46     		mov	r2, r9
 6839 3dcc CDE90201 		strd	r0, [sp, #8]
 6840 3dd0 CDF80080 		str	r8, [sp]
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 121


 6841 3dd4 CDF804B0 		str	fp, [sp, #4]
 6842 3dd8 CDF810E0 		str	lr, [sp, #16]
 6843 3ddc 3046     		mov	r0, r6
 6844 3dde 6249     		ldr	r1, .L1640+32
 6845 3de0 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 6846 3de4 B7F81A80 		ldrh	r8, [r7, #26]
 6847 3de8 B8F1000F 		cmp	r8, #0
 6848 3dec 3CF402AE 		beq	.L264
 6849 3df0 B868     		ldr	r0, [r7, #8]	@ float
 6850 3df2 FFF7FEFF 		bl	__aeabi_f2iz
 6851 3df6 5D49     		ldr	r1, .L1640+36
 6852 3df8 0246     		mov	r2, r0
 6853 3dfa 3046     		mov	r0, r6
 6854 3dfc FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 6855              	.L289:
 6856 3e00 28FA0AF3 		lsr	r3, r8, r10
 6857 3e04 D907     		lsls	r1, r3, #31
 6858 3e06 04D5     		bpl	.L288
 6859 3e08 3046     		mov	r0, r6
 6860 3e0a 5949     		ldr	r1, .L1640+40
 6861 3e0c 5246     		mov	r2, r10
 6862 3e0e FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 6863              	.L288:
 6864 3e12 0AF1010A 		add	r10, r10, #1
 6865 3e16 BAF1070F 		cmp	r10, #7
 6866 3e1a F1D1     		bne	.L289
 6867 3e1c FCF7EABD 		b	.L264
 6868              	.L359:
 6869 3e20 544B     		ldr	r3, .L1640+44
 6870 3e22 4FFA88F1 		sxtb	r1, r8
 6871 3e26 D868     		ldr	r0, [r3, #12]
 6872 3e28 FFF7FEFF 		bl	_ZNK4Heat19GetTemperatureLimitEa
 6873 3e2c FFF7FEFF 		bl	__aeabi_f2d
 6874 3e30 4246     		mov	r2, r8
 6875 3e32 CDE90001 		strd	r0, [sp]
 6876 3e36 3046     		mov	r0, r6
 6877 3e38 4F49     		ldr	r1, .L1640+48
 6878 3e3a FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 6879 3e3e A368     		ldr	r3, [r4, #8]
 6880 3e40 FCF758BD 		b	.L755
 6881              	.L848:
 6882 3e44 F907     		lsls	r1, r7, #31
 6883 3e46 3DF54EA8 		bmi	.L849
 6884              	.L838:
 6885 3e4a 0123     		movs	r3, #1
 6886 3e4c 85F80533 		strb	r3, [r5, #773]
 6887 3e50 2846     		mov	r0, r5
 6888 3e52 2146     		mov	r1, r4
 6889 3e54 4FF47A72 		mov	r2, #1000
 6890 3e58 FFF7FEFF 		bl	_ZN6GCodes11DoDwellTimeER11GCodeBufferm
 6891 3e5c 0028     		cmp	r0, #0
 6892 3e5e 3CF4BEAE 		beq	.L546
 6893 3e62 A368     		ldr	r3, [r4, #8]
 6894 3e64 1122     		movs	r2, #17
 6895 3e66 1A74     		strb	r2, [r3, #16]
 6896 3e68 A368     		ldr	r3, [r4, #8]
 6897 3e6a 0027     		movs	r7, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 122


 6898 3e6c FCF742BD 		b	.L755
 6899              	.L482:
 6900 3e70 404F     		ldr	r7, .L1640+44
 6901 3e72 4FFA88F1 		sxtb	r1, r8
 6902 3e76 F868     		ldr	r0, [r7, #12]
 6903 3e78 FFF7FEFF 		bl	_ZNK4Heat19GetTemperatureLimitEa
 6904 3e7c 0146     		mov	r1, r0
 6905 3e7e 4846     		mov	r0, r9
 6906 3e80 FFF7FEFF 		bl	__aeabi_fcmpge
 6907 3e84 0028     		cmp	r0, #0
 6908 3e86 40F0B586 		bne	.L1591
 6909 3e8a 5046     		mov	r0, r10
 6910 3e8c FFF7FEFF 		bl	__aeabi_f2d
 6911 3e90 2DA3     		adr	r3, .L1640
 6912 3e92 D3E90023 		ldrd	r2, [r3]
 6913 3e96 FFF7FEFF 		bl	__aeabi_dcmplt
 6914 3e9a 40B9     		cbnz	r0, .L485
 6915 3e9c 5046     		mov	r0, r10
 6916 3e9e 4FF07E51 		mov	r1, #1065353216
 6917 3ea2 FFF7FEFF 		bl	__aeabi_fcmpgt
 6918 3ea6 8346     		mov	fp, r0
 6919 3ea8 0028     		cmp	r0, #0
 6920 3eaa 01F03282 		beq	.L1427
 6921              	.L485:
 6922 3eae 3046     		mov	r0, r6
 6923 3eb0 3249     		ldr	r1, .L1640+52
 6924 3eb2 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 6925 3eb6 0027     		movs	r7, #0
 6926 3eb8 A368     		ldr	r3, [r4, #8]
 6927 3eba FCF71BBD 		b	.L755
 6928              	.L1581:
 6929 3ebe A368     		ldr	r3, [r4, #8]
 6930 3ec0 0027     		movs	r7, #0
 6931 3ec2 FCF717BD 		b	.L755
 6932              	.L695:
 6933 3ec6 4FF00109 		mov	r9, #1
 6934 3eca 31E4     		b	.L692
 6935              	.L660:
 6936 3ecc D5F800A0 		ldr	r10, [r5]
 6937 3ed0 DAF8B804 		ldr	r0, [r10, #1208]	@ float
 6938 3ed4 FFF7FEFF 		bl	__aeabi_f2d
 6939 3ed8 8046     		mov	r8, r0
 6940 3eda DAF8BC04 		ldr	r0, [r10, #1212]	@ float
 6941 3ede 8946     		mov	r9, r1
 6942 3ee0 FFF7FEFF 		bl	__aeabi_f2d
 6943 3ee4 CDE90001 		strd	r0, [sp]
 6944 3ee8 DAF8C014 		ldr	r1, [r10, #1216]
 6945 3eec 4B46     		mov	r3, r9
 6946 3eee 0291     		str	r1, [sp, #8]
 6947 3ef0 4246     		mov	r2, r8
 6948 3ef2 3046     		mov	r0, r6
 6949 3ef4 2249     		ldr	r1, .L1640+56
 6950 3ef6 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 6951 3efa A368     		ldr	r3, [r4, #8]
 6952 3efc FCF7FABC 		b	.L755
 6953              	.L302:
 6954 3f00 4146     		mov	r1, r8
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 123


 6955 3f02 1C48     		ldr	r0, .L1640+44
 6956 3f04 FFF7FEFF 		bl	_ZN6RepRap8SetDebugEb
 6957 3f08 A368     		ldr	r3, [r4, #8]
 6958 3f0a FCF7F3BC 		b	.L755
 6959              	.L754:
 6960 3f0e 2868     		ldr	r0, [r5]
 6961 3f10 0621     		movs	r1, #6
 6962 3f12 1C4A     		ldr	r2, .L1640+60
 6963 3f14 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6964 3f18 0027     		movs	r7, #0
 6965 3f1a A368     		ldr	r3, [r4, #8]
 6966 3f1c FCF7EABC 		b	.L755
 6967              	.L1538:
 6968 3f20 2046     		mov	r0, r4
 6969 3f22 2F68     		ldr	r7, [r5]
 6970 3f24 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6971 3f28 C7F8B804 		str	r0, [r7, #1208]	@ float
 6972 3f2c A368     		ldr	r3, [r4, #8]
 6973 3f2e 0027     		movs	r7, #0
 6974 3f30 FCF7E0BC 		b	.L755
 6975              	.L1537:
 6976 3f34 2046     		mov	r0, r4
 6977 3f36 D5F80080 		ldr	r8, [r5]
 6978 3f3a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6979 3f3e C8F8BC04 		str	r0, [r8, #1212]	@ float
 6980 3f42 FEF706BA 		b	.L658
 6981              	.L1641:
 6982 3f46 00BF     		.align	3
 6983              	.L1640:
 6984 3f48 9A999999 		.word	-1717986918
 6985 3f4c 9999B93F 		.word	1069128089
 6986 3f50 8988883C 		.word	1015580809
 6987 3f54 B8110000 		.word	.LC151
 6988 3f58 00000000 		.word	_ZN6GCodes11axisLettersE
 6989 3f5c CC110000 		.word	.LC152
 6990 3f60 00005940 		.word	1079574528
 6991 3f64 6F12833A 		.word	981668463
 6992 3f68 28050000 		.word	.LC59
 6993 3f6c 70050000 		.word	.LC60
 6994 3f70 8C050000 		.word	.LC61
 6995 3f74 00000000 		.word	reprap
 6996 3f78 60070000 		.word	.LC79
 6997 3f7c F4090000 		.word	.LC96
 6998 3f80 BC100000 		.word	.LC144
 6999 3f84 88120000 		.word	.LC159
 7000 3f88 A0000000 		.word	.LC8
 7001 3f8c 9C000000 		.word	.LC7
 7002              	.L345:
 7003 3f90 2046     		mov	r0, r4
 7004 3f92 DAF80C70 		ldr	r7, [r10, #12]
 7005 3f96 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7006 3f9a 4146     		mov	r1, r8
 7007 3f9c 0246     		mov	r2, r0
 7008 3f9e 3846     		mov	r0, r7
 7009 3fa0 FFF7FEFF 		bl	_ZN4Heat21SetStandbyTemperatureEaf
 7010 3fa4 0027     		movs	r7, #0
 7011 3fa6 A368     		ldr	r3, [r4, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 124


 7012 3fa8 FCF7A4BC 		b	.L755
 7013              	.L1481:
 7014 3fac 2046     		mov	r0, r4
 7015 3fae FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7016 3fb2 BB49     		ldr	r1, .L1642+8
 7017 3fb4 0746     		mov	r7, r0
 7018 3fb6 FFF7FEFF 		bl	__aeabi_fcmplt
 7019 3fba 0028     		cmp	r0, #0
 7020 3fbc 00F02185 		beq	.L1410
 7021 3fc0 DAF80C00 		ldr	r0, [r10, #12]
 7022 3fc4 4146     		mov	r1, r8
 7023 3fc6 FFF7FEFF 		bl	_ZN4Heat9SwitchOffEa
 7024 3fca FDF723B8 		b	.L342
 7025              	.L499:
 7026 3fce 2046     		mov	r0, r4
 7027 3fd0 4521     		movs	r1, #69
 7028 3fd2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7029 3fd6 0028     		cmp	r0, #0
 7030 3fd8 00F01082 		beq	.L514
 7031              	.L896:
 7032 3fdc 2846     		mov	r0, r5
 7033 3fde 2146     		mov	r1, r4
 7034 3fe0 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 7035 3fe4 0028     		cmp	r0, #0
 7036 3fe6 3CF4FAAD 		beq	.L546
 7037 3fea 0DF15008 		add	r8, sp, #80
 7038 3fee D5F88831 		ldr	r3, [r5, #392]
 7039 3ff2 4246     		mov	r2, r8
 7040 3ff4 1AA9     		add	r1, sp, #104
 7041 3ff6 2046     		mov	r0, r4
 7042 3ff8 C8F80030 		str	r3, [r8]
 7043 3ffc FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 7044 4000 D8F80030 		ldr	r3, [r8]
 7045 4004 002B     		cmp	r3, #0
 7046 4006 3EF44FAD 		beq	.L509
 7047 400a DFF8BCB2 		ldr	fp, .L1642+48
 7048 400e 0DF1680A 		add	r10, sp, #104
 7049 4012 0027     		movs	r7, #0
 7050 4014 0D94     		str	r4, [sp, #52]
 7051              	.L513:
 7052 4016 D5F88411 		ldr	r1, [r5, #388]
 7053 401a 5AF8042B 		ldr	r2, [r10], #4
 7054 401e 3944     		add	r1, r1, r7
 7055 4020 D9F80030 		ldr	r3, [r9]
 7056 4024 2846     		mov	r0, r5
 7057 4026 FFF7FEFF 		bl	_ZNK6GCodes19ChangeMicrosteppingEjii
 7058 402a 3B46     		mov	r3, r7
 7059 402c 0621     		movs	r1, #6
 7060 402e 0137     		adds	r7, r7, #1
 7061 4030 9C4A     		ldr	r2, .L1642+12
 7062 4032 70B9     		cbnz	r0, .L510
 7063 4034 D9F80040 		ldr	r4, [r9]
 7064 4038 DFF890E2 		ldr	lr, .L1642+52
 7065 403c 2868     		ldr	r0, [r5]
 7066 403e 002C     		cmp	r4, #0
 7067 4040 08BF     		it	eq
 7068 4042 DE46     		moveq	lr, fp
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 125


 7069 4044 CDF804E0 		str	lr, [sp, #4]
 7070 4048 5AF8044C 		ldr	r4, [r10, #-4]
 7071 404c 0094     		str	r4, [sp]
 7072 404e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7073              	.L510:
 7074 4052 D8F80030 		ldr	r3, [r8]
 7075 4056 BB42     		cmp	r3, r7
 7076 4058 DDD8     		bhi	.L513
 7077 405a 0D9C     		ldr	r4, [sp, #52]
 7078 405c FEF724BD 		b	.L509
 7079              	.L1540:
 7080 4060 2046     		mov	r0, r4
 7081 4062 5321     		movs	r1, #83
 7082 4064 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7083 4068 0028     		cmp	r0, #0
 7084 406a 00F0AB85 		beq	.L450
 7085 406e 2046     		mov	r0, r4
 7086 4070 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7087 4074 8C49     		ldr	r1, .L1642+16
 7088 4076 FFF7FEFF 		bl	__aeabi_fdiv
 7089 407a 0021     		movs	r1, #0
 7090 407c 0746     		mov	r7, r0
 7091 407e FFF7FEFF 		bl	__aeabi_fcmpge
 7092 4082 0028     		cmp	r0, #0
 7093 4084 3EF4ADA9 		beq	.L448
 7094 4088 D5F8DC30 		ldr	r3, [r5, #220]
 7095 408c BBB1     		cbz	r3, .L452
 7096 408e 95F8D730 		ldrb	r3, [r5, #215]	@ zero_extendqisi2
 7097 4092 A3B9     		cbnz	r3, .L452
 7098 4094 DAF80030 		ldr	r3, [r10]
 7099 4098 D5F88421 		ldr	r2, [r5, #388]
 7100 409c 03F19C01 		add	r1, r3, #156
 7101 40a0 55F82110 		ldr	r1, [r5, r1, lsl #2]	@ float
 7102 40a4 1344     		add	r3, r3, r2
 7103 40a6 3846     		mov	r0, r7
 7104 40a8 05EB8308 		add	r8, r5, r3, lsl #2
 7105 40ac FFF7FEFF 		bl	__aeabi_fdiv
 7106 40b0 0146     		mov	r1, r0
 7107 40b2 D8F88800 		ldr	r0, [r8, #136]	@ float
 7108 40b6 FFF7FEFF 		bl	__aeabi_fmul
 7109 40ba C8F88800 		str	r0, [r8, #136]	@ float
 7110              	.L452:
 7111 40be DAF80030 		ldr	r3, [r10]
 7112 40c2 9C33     		adds	r3, r3, #156
 7113 40c4 45F82370 		str	r7, [r5, r3, lsl #2]	@ float
 7114 40c8 FEF78BB9 		b	.L448
 7115              	.L1560:
 7116 40cc 2846     		mov	r0, r5
 7117 40ce 2146     		mov	r1, r4
 7118 40d0 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 7119 40d4 0746     		mov	r7, r0
 7120 40d6 0028     		cmp	r0, #0
 7121 40d8 3CF4CEAB 		beq	.L1404
 7122 40dc 0DF15008 		add	r8, sp, #80
 7123 40e0 D5F88871 		ldr	r7, [r5, #392]
 7124 40e4 0123     		movs	r3, #1
 7125 40e6 4246     		mov	r2, r8
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 126


 7126 40e8 2046     		mov	r0, r4
 7127 40ea 1AA9     		add	r1, sp, #104
 7128 40ec C8F80070 		str	r7, [r8]
 7129 40f0 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 7130 40f4 D8F80030 		ldr	r3, [r8]
 7131 40f8 C3B1     		cbz	r3, .L818
 7132 40fa 40F2913B 		movw	fp, #913
 7133 40fe B9EB0B0C 		subs	ip, r9, fp
 7134 4102 DCF1000B 		rsbs	fp, ip, #0
 7135 4106 5BEB0C0B 		adcs	fp, fp, ip
 7136 410a 0DF1640A 		add	r10, sp, #100
 7137 410e 0027     		movs	r7, #0
 7138              	.L819:
 7139 4110 D5F88411 		ldr	r1, [r5, #388]
 7140 4114 5B46     		mov	r3, fp
 7141 4116 3944     		add	r1, r1, r7
 7142 4118 2868     		ldr	r0, [r5]
 7143 411a 5AF8042F 		ldr	r2, [r10, #4]!	@ float
 7144 411e FFF7FEFF 		bl	_ZN8Platform15SetMotorCurrentEjfb
 7145 4122 D8F80030 		ldr	r3, [r8]
 7146 4126 0137     		adds	r7, r7, #1
 7147 4128 BB42     		cmp	r3, r7
 7148 412a F1D8     		bhi	.L819
 7149              	.L818:
 7150 412c 4FF0010A 		mov	r10, #1
 7151 4130 FEF74DBC 		b	.L815
 7152              	.L618:
 7153 4134 3046     		mov	r0, r6
 7154 4136 5D49     		ldr	r1, .L1642+20
 7155 4138 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7156 413c D5F88431 		ldr	r3, [r5, #388]
 7157 4140 0BB3     		cbz	r3, .L622
 7158 4142 5B4F     		ldr	r7, .L1642+24
 7159 4144 4FF00008 		mov	r8, #0
 7160              	.L623:
 7161 4148 2B68     		ldr	r3, [r5]
 7162 414a D5F83002 		ldr	r0, [r5, #560]	@ float
 7163 414e 08F15609 		add	r9, r8, #86
 7164 4152 5849     		ldr	r1, .L1642+28
 7165 4154 03EB8909 		add	r9, r3, r9, lsl #2
 7166 4158 FFF7FEFF 		bl	__aeabi_fmul
 7167 415c 0146     		mov	r1, r0
 7168 415e D9F80400 		ldr	r0, [r9, #4]	@ float
 7169 4162 FFF7FEFF 		bl	__aeabi_fdiv
 7170 4166 FFF7FEFF 		bl	__aeabi_f2d
 7171 416a 17F80820 		ldrb	r2, [r7, r8]	@ zero_extendqisi2
 7172 416e CDE90001 		strd	r0, [sp]
 7173 4172 3046     		mov	r0, r6
 7174 4174 5049     		ldr	r1, .L1642+32
 7175 4176 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 7176 417a D5F88431 		ldr	r3, [r5, #388]
 7177 417e 08F10108 		add	r8, r8, #1
 7178 4182 4345     		cmp	r3, r8
 7179 4184 E0D8     		bhi	.L623
 7180              	.L622:
 7181 4186 3046     		mov	r0, r6
 7182 4188 4C49     		ldr	r1, .L1642+36
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 127


 7183 418a FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 7184 418e D5F88871 		ldr	r7, [r5, #392]
 7185 4192 002F     		cmp	r7, #0
 7186 4194 01F09280 		beq	.L1592
 7187 4198 0027     		movs	r7, #0
 7188 419a 4FF02008 		mov	r8, #32
 7189 419e 01E0     		b	.L625
 7190              	.L624:
 7191 41a0 4FF03A08 		mov	r8, #58
 7192              	.L625:
 7193 41a4 D5F88411 		ldr	r1, [r5, #388]
 7194 41a8 2B68     		ldr	r3, [r5]
 7195 41aa 3944     		add	r1, r1, r7
 7196 41ac D5F83002 		ldr	r0, [r5, #560]	@ float
 7197 41b0 01F15609 		add	r9, r1, #86
 7198 41b4 3F49     		ldr	r1, .L1642+28
 7199 41b6 03EB8909 		add	r9, r3, r9, lsl #2
 7200 41ba FFF7FEFF 		bl	__aeabi_fmul
 7201 41be 0146     		mov	r1, r0
 7202 41c0 D9F80400 		ldr	r0, [r9, #4]	@ float
 7203 41c4 FFF7FEFF 		bl	__aeabi_fdiv
 7204 41c8 FFF7FEFF 		bl	__aeabi_f2d
 7205 41cc 4246     		mov	r2, r8
 7206 41ce CDE90001 		strd	r0, [sp]
 7207 41d2 3046     		mov	r0, r6
 7208 41d4 3A49     		ldr	r1, .L1642+40
 7209 41d6 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 7210 41da D5F88831 		ldr	r3, [r5, #392]
 7211 41de 0137     		adds	r7, r7, #1
 7212 41e0 BB42     		cmp	r3, r7
 7213 41e2 DDD8     		bhi	.L624
 7214 41e4 A368     		ldr	r3, [r4, #8]
 7215 41e6 0027     		movs	r7, #0
 7216 41e8 FCF784BB 		b	.L755
 7217              	.L134:
 7218 41ec A368     		ldr	r3, [r4, #8]
 7219 41ee 354A     		ldr	r2, .L1642+44
 7220 41f0 1421     		movs	r1, #20
 7221 41f2 1974     		strb	r1, [r3, #16]
 7222 41f4 1268     		ldr	r2, [r2]
 7223 41f6 FDF7CBBA 		b	.L873
 7224              	.L1551:
 7225 41fa 2046     		mov	r0, r4
 7226 41fc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7227 4200 FFF7FEFF 		bl	__aeabi_f2d
 7228 4204 24A3     		adr	r3, .L1642
 7229 4206 D3E90023 		ldrd	r2, [r3]
 7230 420a FFF7FEFF 		bl	__aeabi_dmul
 7231 420e FFF7FEFF 		bl	__aeabi_d2f
 7232 4212 4221     		movs	r1, #66
 7233 4214 C7F86404 		str	r0, [r7, #1124]	@ float
 7234 4218 2046     		mov	r0, r4
 7235 421a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7236 421e 68B1     		cbz	r0, .L791
 7237              	.L790:
 7238 4220 2046     		mov	r0, r4
 7239 4222 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 128


 7240 4226 FFF7FEFF 		bl	__aeabi_f2d
 7241 422a 1BA3     		adr	r3, .L1642
 7242 422c D3E90023 		ldrd	r2, [r3]
 7243 4230 FFF7FEFF 		bl	__aeabi_dmul
 7244 4234 FFF7FEFF 		bl	__aeabi_d2f
 7245 4238 C7F86804 		str	r0, [r7, #1128]	@ float
 7246              	.L791:
 7247 423c 2846     		mov	r0, r5
 7248 423e FFF7FEFF 		bl	_ZN6GCodes18SetAllAxesNotHomedEv
 7249 4242 0027     		movs	r7, #0
 7250 4244 A368     		ldr	r3, [r4, #8]
 7251 4246 FCF755BB 		b	.L755
 7252              	.L1547:
 7253 424a 2046     		mov	r0, r4
 7254 424c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7255 4250 C7F84C04 		str	r0, [r7, #1100]	@ float
 7256 4254 4846     		mov	r0, r9
 7257 4256 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 7258 425a 2046     		mov	r0, r4
 7259 425c 4821     		movs	r1, #72
 7260 425e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 7261 4262 38B1     		cbz	r0, .L780
 7262              	.L779:
 7263 4264 2046     		mov	r0, r4
 7264 4266 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7265 426a C7F86004 		str	r0, [r7, #1120]	@ float
 7266 426e 4846     		mov	r0, r9
 7267 4270 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 7268              	.L780:
 7269 4274 97F86C34 		ldrb	r3, [r7, #1132]	@ zero_extendqisi2
 7270 4278 0022     		movs	r2, #0
 7271 427a 5B45     		cmp	r3, fp
 7272 427c C7F8E025 		str	r2, [r7, #1504]
 7273 4280 04D0     		beq	.L783
 7274 4282 5146     		mov	r1, r10
 7275 4284 2846     		mov	r0, r5
 7276 4286 0122     		movs	r2, #1
 7277 4288 FFF7FEFF 		bl	_ZN6GCodes12SetPositionsEPKfb
 7278              	.L783:
 7279 428c 2846     		mov	r0, r5
 7280 428e FFF7FEFF 		bl	_ZN6GCodes18SetAllAxesNotHomedEv
 7281 4292 FEF71BBA 		b	.L784
 7282              	.L1643:
 7283 4296 00BF     		.align	3
 7284              	.L1642:
 7285 4298 7B14AE47 		.word	1202590843
 7286 429c E17A843F 		.word	1065646817
 7287 42a0 008088C3 		.word	-1014464512
 7288 42a4 500B0000 		.word	.LC103
 7289 42a8 0000C842 		.word	1120403456
 7290 42ac E40E0000 		.word	.LC135
 7291 42b0 00000000 		.word	_ZN6GCodes11axisLettersE
 7292 42b4 8988883C 		.word	1015580809
 7293 42b8 9C070000 		.word	.LC81
 7294 42bc C0040000 		.word	.LC54
 7295 42c0 A8070000 		.word	.LC82
 7296 42c4 00000000 		.word	.LANCHOR8
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 129


 7297 42c8 A4000000 		.word	.LC9
 7298 42cc D4000000 		.word	.LC15
 7299              	.L799:
 7300 42d0 0D98     		ldr	r0, [sp, #52]
 7301 42d2 FFF7FEFF 		bl	_ZNK4Move17GetGeometryStringEv
 7302 42d6 C349     		ldr	r1, .L1644
 7303 42d8 0246     		mov	r2, r0
 7304 42da 3046     		mov	r0, r6
 7305 42dc FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 7306 42e0 D5F88431 		ldr	r3, [r5, #388]
 7307 42e4 002B     		cmp	r3, #0
 7308 42e6 3EF4F4AE 		beq	.L800
 7309 42ea BF4F     		ldr	r7, .L1644+4
 7310 42ec DDF834B0 		ldr	fp, [sp, #52]
 7311              	.L803:
 7312 42f0 DBF8E405 		ldr	r0, [fp, #1508]	@ float
 7313 42f4 FFF7FEFF 		bl	__aeabi_f2d
 7314 42f8 17F80920 		ldrb	r2, [r7, r9]	@ zero_extendqisi2
 7315 42fc CDE90001 		strd	r0, [sp]
 7316 4300 3046     		mov	r0, r6
 7317 4302 BA49     		ldr	r1, .L1644+8
 7318 4304 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 7319 4308 D5F88431 		ldr	r3, [r5, #388]
 7320 430c 09F10109 		add	r9, r9, #1
 7321 4310 4B45     		cmp	r3, r9
 7322 4312 0BF1040B 		add	fp, fp, #4
 7323 4316 EBD8     		bhi	.L803
 7324 4318 FEF7DBBE 		b	.L800
 7325              	.L1458:
 7326 431c 3046     		mov	r0, r6
 7327 431e B449     		ldr	r1, .L1644+12
 7328 4320 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 7329 4324 FCF766BB 		b	.L264
 7330              	.L153:
 7331 4328 2846     		mov	r0, r5
 7332 432a FFF7FEFF 		bl	_ZN6GCodes13DisableDrivesEv
 7333 432e A368     		ldr	r3, [r4, #8]
 7334 4330 FCF7E0BA 		b	.L755
 7335              	.L1566:
 7336 4334 2046     		mov	r0, r4
 7337 4336 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7338 433a 0021     		movs	r1, #0
 7339 433c 8046     		mov	r8, r0
 7340 433e FFF7FEFF 		bl	__aeabi_fcmplt
 7341 4342 0028     		cmp	r0, #0
 7342 4344 40F08187 		bne	.L1593
 7343 4348 AA4B     		ldr	r3, .L1644+16
 7344 434a 9B68     		ldr	r3, [r3, #8]
 7345 434c C3F82484 		str	r8, [r3, #1060]	@ float
 7346              	.L152:
 7347 4350 A368     		ldr	r3, [r4, #8]
 7348 4352 FCF7CFBA 		b	.L755
 7349              	.L1565:
 7350 4356 0DF15008 		add	r8, sp, #80
 7351 435a D5F88831 		ldr	r3, [r5, #392]
 7352 435e 4246     		mov	r2, r8
 7353 4360 1AA9     		add	r1, sp, #104
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 130


 7354 4362 2046     		mov	r0, r4
 7355 4364 C8F80030 		str	r3, [r8]
 7356 4368 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 7357 436c D8F80070 		ldr	r7, [r8]
 7358 4370 002F     		cmp	r7, #0
 7359 4372 3EF432AC 		beq	.L143
 7360 4376 1A9A     		ldr	r2, [sp, #104]
 7361 4378 002A     		cmp	r2, #0
 7362 437a C0F2D382 		blt	.L145
 7363 437e D5F88831 		ldr	r3, [r5, #392]
 7364 4382 9342     		cmp	r3, r2
 7365 4384 40F2CE82 		bls	.L145
 7366 4388 0DF16809 		add	r9, sp, #104
 7367 438c 0027     		movs	r7, #0
 7368 438e 09E0     		b	.L147
 7369              	.L148:
 7370 4390 59F8042F 		ldr	r2, [r9, #4]!
 7371 4394 002A     		cmp	r2, #0
 7372 4396 C0F2C582 		blt	.L145
 7373 439a D5F88831 		ldr	r3, [r5, #392]
 7374 439e 9A42     		cmp	r2, r3
 7375 43a0 80F0C082 		bcs	.L145
 7376              	.L147:
 7377 43a4 D5F88411 		ldr	r1, [r5, #388]
 7378 43a8 2868     		ldr	r0, [r5]
 7379 43aa 1144     		add	r1, r1, r2
 7380 43ac FFF7FEFF 		bl	_ZN8Platform12DisableDriveEj
 7381 43b0 D8F80030 		ldr	r3, [r8]
 7382 43b4 0137     		adds	r7, r7, #1
 7383 43b6 BB42     		cmp	r3, r7
 7384 43b8 EAD8     		bhi	.L148
 7385 43ba 4FF00109 		mov	r9, #1
 7386 43be 0027     		movs	r7, #0
 7387 43c0 FEF70BBC 		b	.L143
 7388              	.L1411:
 7389 43c4 D9F80C00 		ldr	r0, [r9, #12]
 7390 43c8 4146     		mov	r1, r8
 7391 43ca 5246     		mov	r2, r10
 7392 43cc FFF7FEFF 		bl	_ZN4Heat20SetActiveTemperatureEaf
 7393 43d0 D9F80C00 		ldr	r0, [r9, #12]
 7394 43d4 4146     		mov	r1, r8
 7395 43d6 FFF7FEFF 		bl	_ZN4Heat8ActivateEa
 7396 43da FCF74EBE 		b	.L355
 7397              	.L1498:
 7398 43de A368     		ldr	r3, [r4, #8]
 7399 43e0 854A     		ldr	r2, .L1644+20
 7400 43e2 0E21     		movs	r1, #14
 7401 43e4 0027     		movs	r7, #0
 7402 43e6 1974     		strb	r1, [r3, #16]
 7403 43e8 1268     		ldr	r2, [r2]
 7404 43ea 0123     		movs	r3, #1
 7405 43ec 2846     		mov	r0, r5
 7406 43ee 0097     		str	r7, [sp]
 7407 43f0 2146     		mov	r1, r4
 7408 43f2 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 7409 43f6 A368     		ldr	r3, [r4, #8]
 7410 43f8 FCF77CBA 		b	.L755
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 131


 7411              	.L514:
 7412 43fc 3046     		mov	r0, r6
 7413 43fe 7F49     		ldr	r1, .L1644+24
 7414 4400 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7415 4404 D5F88431 		ldr	r3, [r5, #388]
 7416 4408 1BB3     		cbz	r3, .L519
 7417 440a 774F     		ldr	r7, .L1644+4
 7418 440c DFF800B2 		ldr	fp, .L1644+44
 7419 4410 4FF00008 		mov	r8, #0
 7420 4414 0DF1680A 		add	r10, sp, #104
 7421              	.L520:
 7422 4418 4146     		mov	r1, r8
 7423 441a D9F80020 		ldr	r2, [r9]
 7424 441e 5346     		mov	r3, r10
 7425 4420 2868     		ldr	r0, [r5]
 7426 4422 FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjiRb
 7427 4426 9AF80010 		ldrb	r1, [r10]	@ zero_extendqisi2
 7428 442a DFF8E8C1 		ldr	ip, .L1644+48
 7429 442e 0346     		mov	r3, r0
 7430 4430 0029     		cmp	r1, #0
 7431 4432 08BF     		it	eq
 7432 4434 DC46     		moveq	ip, fp
 7433 4436 17F80820 		ldrb	r2, [r7, r8]	@ zero_extendqisi2
 7434 443a CDF800C0 		str	ip, [sp]
 7435 443e 3046     		mov	r0, r6
 7436 4440 6F49     		ldr	r1, .L1644+28
 7437 4442 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 7438 4446 D5F88431 		ldr	r3, [r5, #388]
 7439 444a 08F10108 		add	r8, r8, #1
 7440 444e 4345     		cmp	r3, r8
 7441 4450 E2D8     		bhi	.L520
 7442              	.L519:
 7443 4452 3046     		mov	r0, r6
 7444 4454 6B49     		ldr	r1, .L1644+32
 7445 4456 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 7446 445a D5F88831 		ldr	r3, [r5, #392]
 7447 445e 002B     		cmp	r3, #0
 7448 4460 3EF422AB 		beq	.L509
 7449 4464 DFF8A8B1 		ldr	fp, .L1644+44
 7450 4468 DFF8A881 		ldr	r8, .L1644+48
 7451 446c 0027     		movs	r7, #0
 7452 446e 0DF1680A 		add	r10, sp, #104
 7453              	.L522:
 7454 4472 D5F88411 		ldr	r1, [r5, #388]
 7455 4476 D9F80020 		ldr	r2, [r9]
 7456 447a 3944     		add	r1, r1, r7
 7457 447c 5346     		mov	r3, r10
 7458 447e 2868     		ldr	r0, [r5]
 7459 4480 FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjiRb
 7460 4484 9AF80030 		ldrb	r3, [r10]	@ zero_extendqisi2
 7461 4488 0246     		mov	r2, r0
 7462 448a 002B     		cmp	r3, #0
 7463 448c 0CBF     		ite	eq
 7464 448e 5B46     		moveq	r3, fp
 7465 4490 4346     		movne	r3, r8
 7466 4492 3046     		mov	r0, r6
 7467 4494 5C49     		ldr	r1, .L1644+36
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 132


 7468 4496 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 7469 449a D5F88831 		ldr	r3, [r5, #392]
 7470 449e 0137     		adds	r7, r7, #1
 7471 44a0 BB42     		cmp	r3, r7
 7472 44a2 E6D8     		bhi	.L522
 7473 44a4 FEF700BB 		b	.L509
 7474              	.L1564:
 7475 44a8 D5F88431 		ldr	r3, [r5, #388]
 7476 44ac 0DF15008 		add	r8, sp, #80
 7477 44b0 C3F10903 		rsb	r3, r3, #9
 7478 44b4 4246     		mov	r2, r8
 7479 44b6 2046     		mov	r0, r4
 7480 44b8 1AA9     		add	r1, sp, #104
 7481 44ba C8F80030 		str	r3, [r8]
 7482 44be FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 7483 44c2 D8F80030 		ldr	r3, [r8]
 7484 44c6 C5F88831 		str	r3, [r5, #392]
 7485 44ca A3B1     		cbz	r3, .L751
 7486 44cc 0DF1640A 		add	r10, sp, #100
 7487 44d0 0027     		movs	r7, #0
 7488 44d2 06E0     		b	.L753
 7489              	.L989:
 7490 44d4 4FF00109 		mov	r9, #1
 7491              	.L752:
 7492 44d8 D8F80030 		ldr	r3, [r8]
 7493 44dc 0137     		adds	r7, r7, #1
 7494 44de BB42     		cmp	r3, r7
 7495 44e0 09D9     		bls	.L751
 7496              	.L753:
 7497 44e2 5AF8042F 		ldr	r2, [r10, #4]!
 7498 44e6 082A     		cmp	r2, #8
 7499 44e8 F4D8     		bhi	.L989
 7500 44ea D2B2     		uxtb	r2, r2
 7501 44ec 2868     		ldr	r0, [r5]
 7502 44ee 3946     		mov	r1, r7
 7503 44f0 FFF7FEFF 		bl	_ZN8Platform17SetExtruderDriverEjh
 7504 44f4 F0E7     		b	.L752
 7505              	.L751:
 7506 44f6 B9F1000F 		cmp	r9, #0
 7507 44fa 7FF408AD 		bne	.L754
 7508 44fe 4F46     		mov	r7, r9
 7509 4500 A368     		ldr	r3, [r4, #8]
 7510 4502 FCF7F7B9 		b	.L755
 7511              	.L937:
 7512 4506 3846     		mov	r0, r7
 7513 4508 FFF780B8 		b	.L415
 7514              	.L935:
 7515 450c 3846     		mov	r0, r7
 7516 450e FFF7B0B8 		b	.L412
 7517              	.L193:
 7518 4512 D5F83802 		ldr	r0, [r5, #568]
 7519 4516 0028     		cmp	r0, #0
 7520 4518 00F0F386 		beq	.L195
 7521 451c 4146     		mov	r1, r8
 7522 451e FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 7523 4522 0028     		cmp	r0, #0
 7524 4524 00F0F884 		beq	.L196
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 133


 7525 4528 A368     		ldr	r3, [r4, #8]
 7526 452a FCF7E3B9 		b	.L755
 7527              	.L299:
 7528 452e A368     		ldr	r3, [r4, #8]
 7529 4530 0B22     		movs	r2, #11
 7530 4532 1A74     		strb	r2, [r3, #16]
 7531 4534 A368     		ldr	r3, [r4, #8]
 7532 4536 0027     		movs	r7, #0
 7533 4538 FCF7DCB9 		b	.L755
 7534              	.L259:
 7535 453c 2D48     		ldr	r0, .L1644+16
 7536 453e FFF7FEFF 		bl	_ZNK6RepRap23GetCurrentOrDefaultToolEv
 7537 4542 FEF7C4BF 		b	.L260
 7538              	.L538:
 7539 4546 85F87C73 		strb	r7, [r5, #892]
 7540 454a 1B68     		ldr	r3, [r3]
 7541 454c 9C42     		cmp	r4, r3
 7542 454e 7DF4D5AA 		bne	.L540
 7543 4552 0123     		movs	r3, #1
 7544 4554 FDF7D3BA 		b	.L539
 7545              	.L560:
 7546 4558 5868     		ldr	r0, [r3, #4]
 7547 455a FFF7FEFF 		bl	_ZN7Network7DisableEv
 7548 455e FFF764BA 		b	.L561
 7549              	.L1462:
 7550 4562 2046     		mov	r0, r4
 7551 4564 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7552 4568 0146     		mov	r1, r0
 7553 456a 3846     		mov	r0, r7
 7554 456c FFF7FEFF 		bl	_ZN3Fan11SetBlipTimeEf
 7555 4570 4FF0010A 		mov	r10, #1
 7556 4574 FCF70ABA 		b	.L270
 7557              	.L1461:
 7558 4578 2046     		mov	r0, r4
 7559 457a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7560 457e 4FF0010A 		mov	r10, #1
 7561 4582 B860     		str	r0, [r7, #8]	@ float
 7562 4584 FCF7FBB9 		b	.L269
 7563              	.L1460:
 7564 4588 2046     		mov	r0, r4
 7565 458a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7566 458e 0146     		mov	r1, r0
 7567 4590 3846     		mov	r0, r7
 7568 4592 FFF7FEFF 		bl	_ZN3Fan15SetPwmFrequencyEf
 7569 4596 4FF0010A 		mov	r10, #1
 7570 459a FCF7E9B9 		b	.L268
 7571              	.L1459:
 7572 459e 2046     		mov	r0, r4
 7573 45a0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7574 45a4 0028     		cmp	r0, #0
 7575 45a6 3846     		mov	r0, r7
 7576 45a8 C0F2A585 		blt	.L1594
 7577 45ac D4BF     		ite	le
 7578 45ae 0021     		movle	r1, #0
 7579 45b0 0121     		movgt	r1, #1
 7580 45b2 FFF7FEFF 		bl	_ZN3Fan11SetInvertedEb
 7581 45b6 4FF0010A 		mov	r10, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 134


 7582 45ba FCF7D2B9 		b	.L266
 7583              	.L470:
 7584 45be D5F88C02 		ldr	r0, [r5, #652]	@ float
 7585 45c2 4146     		mov	r1, r8
 7586 45c4 FFF7FEFF 		bl	__aeabi_fadd
 7587 45c8 C5F88C02 		str	r0, [r5, #652]	@ float
 7588 45cc A368     		ldr	r3, [r4, #8]
 7589 45ce 0027     		movs	r7, #0
 7590 45d0 FCF790B9 		b	.L755
 7591              	.L352:
 7592 45d4 3046     		mov	r0, r6
 7593 45d6 0D49     		ldr	r1, .L1644+40
 7594 45d8 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7595 45dc 0127     		movs	r7, #1
 7596 45de FCF74CBD 		b	.L355
 7597              	.L1645:
 7598 45e2 00BF     		.align	2
 7599              	.L1644:
 7600 45e4 94130000 		.word	.LC165
 7601 45e8 00000000 		.word	_ZN6GCodes11axisLettersE
 7602 45ec BC130000 		.word	.LC166
 7603 45f0 0C050000 		.word	.LC58
 7604 45f4 00000000 		.word	reprap
 7605 45f8 00000000 		.word	.LANCHOR2
 7606 45fc 800B0000 		.word	.LC104
 7607 4600 980B0000 		.word	.LC106
 7608 4604 940B0000 		.word	.LC105
 7609 4608 A40B0000 		.word	.LC107
 7610 460c B0060000 		.word	.LC74
 7611 4610 A4000000 		.word	.LC9
 7612 4614 E8000000 		.word	.LC16
 7613              	.L356:
 7614 4618 3046     		mov	r0, r6
 7615 461a B849     		ldr	r1, .L1646
 7616 461c FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7617 4620 4F46     		mov	r7, r9
 7618 4622 A368     		ldr	r3, [r4, #8]
 7619 4624 FCF766B9 		b	.L755
 7620              	.L221:
 7621 4628 3A46     		mov	r2, r7
 7622 462a 3046     		mov	r0, r6
 7623 462c B449     		ldr	r1, .L1646+4
 7624 462e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 7625 4632 0127     		movs	r7, #1
 7626 4634 FEF7FEBE 		b	.L222
 7627              	.L455:
 7628 4638 3B46     		mov	r3, r7
 7629 463a 2868     		ldr	r0, [r5]
 7630 463c 0621     		movs	r1, #6
 7631 463e B14A     		ldr	r2, .L1646+8
 7632 4640 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7633 4644 FDF734BB 		b	.L458
 7634              	.L607:
 7635 4648 3046     		mov	r0, r6
 7636 464a AF49     		ldr	r1, .L1646+12
 7637 464c FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7638 4650 0127     		movs	r7, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 135


 7639 4652 A368     		ldr	r3, [r4, #8]
 7640 4654 FCF74EB9 		b	.L755
 7641              	.L1516:
 7642 4658 2046     		mov	r0, r4
 7643 465a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7644 465e 8146     		mov	r9, r0
 7645 4660 FDF7D8BA 		b	.L480
 7646              	.L655:
 7647 4664 3046     		mov	r0, r6
 7648 4666 A949     		ldr	r1, .L1646+16
 7649 4668 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7650 466c A368     		ldr	r3, [r4, #8]
 7651 466e FCF741B9 		b	.L755
 7652              	.L1464:
 7653 4672 0723     		movs	r3, #7
 7654 4674 2046     		mov	r0, r4
 7655 4676 14AA     		add	r2, sp, #80
 7656 4678 1AA9     		add	r1, sp, #104
 7657 467a 1493     		str	r3, [sp, #80]
 7658 467c FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 7659 4680 1498     		ldr	r0, [sp, #80]
 7660 4682 0028     		cmp	r0, #0
 7661 4684 00F05D87 		beq	.L921
 7662 4688 1AAB     		add	r3, sp, #104
 7663 468a 03EB8000 		add	r0, r3, r0, lsl #2
 7664 468e 0021     		movs	r1, #0
 7665 4690 4FF0010E 		mov	lr, #1
 7666              	.L276:
 7667 4694 53F8042B 		ldr	r2, [r3], #4
 7668 4698 062A     		cmp	r2, #6
 7669 469a 03D8     		bhi	.L274
 7670 469c 0EFA02F2 		lsl	r2, lr, r2
 7671 46a0 1143     		orrs	r1, r1, r2
 7672 46a2 89B2     		uxth	r1, r1
 7673              	.L274:
 7674 46a4 8342     		cmp	r3, r0
 7675 46a6 F5D1     		bne	.L276
 7676 46a8 8A46     		mov	r10, r1
 7677 46aa 31B1     		cbz	r1, .L273
 7678 46ac 2868     		ldr	r0, [r5]
 7679 46ae D9F80010 		ldr	r1, [r9]
 7680 46b2 4FF07E52 		mov	r2, #1065353216
 7681 46b6 FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 7682              	.L273:
 7683 46ba 5146     		mov	r1, r10
 7684 46bc 3846     		mov	r0, r7
 7685 46be FFF7FEFF 		bl	_ZN3Fan19SetHeatersMonitoredEt
 7686 46c2 4FF0010A 		mov	r10, #1
 7687 46c6 FCF76FB9 		b	.L272
 7688              	.L1463:
 7689 46ca 2046     		mov	r0, r4
 7690 46cc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7691 46d0 0146     		mov	r1, r0
 7692 46d2 3846     		mov	r0, r7
 7693 46d4 FFF7FEFF 		bl	_ZN3Fan11SetMinValueEf
 7694 46d8 4FF0010A 		mov	r10, #1
 7695 46dc FCF75DB9 		b	.L271
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 136


 7696              	.L491:
 7697 46e0 DFF838A2 		ldr	r10, .L1646+32
 7698 46e4 4FEA8009 		lsl	r9, r0, #2
 7699 46e8 DAF80C30 		ldr	r3, [r10, #12]
 7700 46ec 4FF0000E 		mov	lr, #0
 7701 46f0 4B44     		add	r3, r3, r9
 7702 46f2 5F68     		ldr	r7, [r3, #4]
 7703 46f4 8DF83FE0 		strb	lr, [sp, #63]
 7704 46f8 BA6B     		ldr	r2, [r7, #56]	@ float
 7705 46fa 3B6B     		ldr	r3, [r7, #48]	@ float
 7706 46fc 786B     		ldr	r0, [r7, #52]	@ float
 7707 46fe 1292     		str	r2, [sp, #72]	@ float
 7708 4700 FA6B     		ldr	r2, [r7, #60]	@ float
 7709 4702 1093     		str	r3, [sp, #64]	@ float
 7710 4704 1392     		str	r2, [sp, #76]	@ float
 7711 4706 97F84110 		ldrb	r1, [r7, #65]	@ zero_extendqisi2
 7712 470a 10AA     		add	r2, sp, #64
 7713 470c 81F00101 		eor	r1, r1, #1
 7714 4710 0DF13F03 		add	r3, sp, #63
 7715 4714 1190     		str	r0, [sp, #68]	@ float
 7716 4716 1491     		str	r1, [sp, #80]
 7717 4718 2046     		mov	r0, r4
 7718 471a 4121     		movs	r1, #65
 7719 471c FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 7720 4720 2046     		mov	r0, r4
 7721 4722 11AA     		add	r2, sp, #68
 7722 4724 0DF13F03 		add	r3, sp, #63
 7723 4728 4321     		movs	r1, #67
 7724 472a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 7725 472e 2046     		mov	r0, r4
 7726 4730 12AA     		add	r2, sp, #72
 7727 4732 0DF13F03 		add	r3, sp, #63
 7728 4736 4421     		movs	r1, #68
 7729 4738 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 7730 473c 2046     		mov	r0, r4
 7731 473e 14AA     		add	r2, sp, #80
 7732 4740 0DF13F03 		add	r3, sp, #63
 7733 4744 4221     		movs	r1, #66
 7734 4746 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 7735 474a 0DF13F03 		add	r3, sp, #63
 7736 474e 2046     		mov	r0, r4
 7737 4750 13AA     		add	r2, sp, #76
 7738 4752 5321     		movs	r1, #83
 7739 4754 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 7740 4758 9DF83F30 		ldrb	r3, [sp, #63]	@ zero_extendqisi2
 7741 475c 002B     		cmp	r3, #0
 7742 475e 40F0C183 		bne	.L1595
 7743 4762 97F84030 		ldrb	r3, [r7, #64]	@ zero_extendqisi2
 7744 4766 002B     		cmp	r3, #0
 7745 4768 00F01586 		beq	.L1596
 7746 476c 97F84130 		ldrb	r3, [r7, #65]	@ zero_extendqisi2
 7747 4770 002B     		cmp	r3, #0
 7748 4772 00F0B483 		beq	.L953
 7749 4776 97F84290 		ldrb	r9, [r7, #66]	@ zero_extendqisi2
 7750 477a 654A     		ldr	r2, .L1646+20
 7751 477c 654B     		ldr	r3, .L1646+24
 7752 477e B9F1000F 		cmp	r9, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 137


 7753 4782 0CBF     		ite	eq
 7754 4784 9146     		moveq	r9, r2
 7755 4786 9946     		movne	r9, r3
 7756              	.L496:
 7757 4788 386B     		ldr	r0, [r7, #48]	@ float
 7758 478a FFF7FEFF 		bl	__aeabi_f2d
 7759 478e CDE90001 		strd	r0, [sp]
 7760 4792 786B     		ldr	r0, [r7, #52]	@ float
 7761 4794 FFF7FEFF 		bl	__aeabi_f2d
 7762 4798 CDE90201 		strd	r0, [sp, #8]
 7763 479c B86B     		ldr	r0, [r7, #56]	@ float
 7764 479e FFF7FEFF 		bl	__aeabi_f2d
 7765 47a2 CDE90401 		strd	r0, [sp, #16]
 7766 47a6 F86B     		ldr	r0, [r7, #60]	@ float
 7767 47a8 FFF7FEFF 		bl	__aeabi_f2d
 7768 47ac CDF82090 		str	r9, [sp, #32]
 7769 47b0 CDE90601 		strd	r0, [sp, #24]
 7770 47b4 4246     		mov	r2, r8
 7771 47b6 3046     		mov	r0, r6
 7772 47b8 5749     		ldr	r1, .L1646+28
 7773 47ba FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 7774 47be 97F84130 		ldrb	r3, [r7, #65]	@ zero_extendqisi2
 7775 47c2 002B     		cmp	r3, #0
 7776 47c4 40F0B085 		bne	.L1597
 7777              	.L494:
 7778 47c8 A368     		ldr	r3, [r4, #8]
 7779 47ca 0027     		movs	r7, #0
 7780 47cc FCF792B8 		b	.L755
 7781              	.L1526:
 7782 47d0 DFF84891 		ldr	r9, .L1646+32
 7783 47d4 4FEA8008 		lsl	r8, r0, #2
 7784 47d8 D9F80C30 		ldr	r3, [r9, #12]
 7785 47dc 1AAA     		add	r2, sp, #104
 7786 47de 4344     		add	r3, r3, r8
 7787 47e0 5B68     		ldr	r3, [r3, #4]
 7788 47e2 2046     		mov	r0, r4
 7789 47e4 1969     		ldr	r1, [r3, #16]	@ float
 7790 47e6 1491     		str	r1, [sp, #80]	@ float
 7791 47e8 D3F814E0 		ldr	lr, [r3, #20]	@ float
 7792 47ec 5021     		movs	r1, #80
 7793 47ee 13AB     		add	r3, sp, #76
 7794 47f0 CDF868E0 		str	lr, [sp, #104]	@ float
 7795 47f4 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 7796 47f8 13AB     		add	r3, sp, #76
 7797 47fa 2046     		mov	r0, r4
 7798 47fc 14AA     		add	r2, sp, #80
 7799 47fe 5421     		movs	r1, #84
 7800 4800 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 7801 4804 9DF84C30 		ldrb	r3, [sp, #76]	@ zero_extendqisi2
 7802 4808 002B     		cmp	r3, #0
 7803 480a 00F07A84 		beq	.L653
 7804 480e D9F80C30 		ldr	r3, [r9, #12]
 7805 4812 1A99     		ldr	r1, [sp, #104]	@ float
 7806 4814 9844     		add	r8, r8, r3
 7807 4816 D8F80430 		ldr	r3, [r8, #4]
 7808 481a 149A     		ldr	r2, [sp, #80]	@ float
 7809 481c 5961     		str	r1, [r3, #20]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 138


 7810 481e 1A61     		str	r2, [r3, #16]	@ float
 7811 4820 FDF7DEBB 		b	.L652
 7812              	.L1466:
 7813 4824 0144     		add	r1, r1, r0
 7814 4826 3D48     		ldr	r0, .L1646+32
 7815 4828 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 7816 482c 0122     		movs	r2, #1
 7817 482e 0146     		mov	r1, r0
 7818 4830 2846     		mov	r0, r5
 7819 4832 FFF7FEFF 		bl	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb
 7820 4836 0746     		mov	r7, r0
 7821 4838 0028     		cmp	r0, #0
 7822 483a 7CF464A9 		bne	.L309
 7823 483e FCF796B9 		b	.L1412
 7824              	.L1536:
 7825 4842 4246     		mov	r2, r8
 7826 4844 3046     		mov	r0, r6
 7827 4846 3649     		ldr	r1, .L1646+36
 7828 4848 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 7829 484c A368     		ldr	r3, [r4, #8]
 7830 484e FCF751B8 		b	.L755
 7831              	.L962:
 7832 4852 9346     		mov	fp, r2
 7833 4854 FDF7B8BF 		b	.L583
 7834              	.L1484:
 7835 4858 0746     		mov	r7, r0
 7836 485a A368     		ldr	r3, [r4, #8]
 7837 485c FCF74AB8 		b	.L755
 7838              	.L1518:
 7839 4860 2046     		mov	r0, r4
 7840 4862 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7841 4866 8246     		mov	r10, r0
 7842 4868 FDF7DDB9 		b	.L481
 7843              	.L1467:
 7844 486c 2046     		mov	r0, r4
 7845 486e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7846 4872 0128     		cmp	r0, #1
 7847 4874 00F07A83 		beq	.L1598
 7848 4878 284B     		ldr	r3, .L1646+32
 7849 487a 3946     		mov	r1, r7
 7850 487c 5868     		ldr	r0, [r3, #4]
 7851 487e 3246     		mov	r2, r6
 7852 4880 FFF7FEFF 		bl	_ZN7Network15DisableProtocolEiR9StringRef
 7853 4884 0027     		movs	r7, #0
 7854 4886 A368     		ldr	r3, [r4, #8]
 7855 4888 FCF734B8 		b	.L755
 7856              	.L295:
 7857 488c A368     		ldr	r3, [r4, #8]
 7858 488e 2046     		mov	r0, r4
 7859 4890 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 7860 4892 67F3C302 		bfi	r2, r7, #3, #1
 7861 4896 5A74     		strb	r2, [r3, #17]
 7862 4898 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7863 489c 8046     		mov	r8, r0
 7864 489e FCF7D0B8 		b	.L294
 7865              	.L1550:
 7866 48a2 2046     		mov	r0, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 139


 7867 48a4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7868 48a8 C7F85804 		str	r0, [r7, #1112]	@ float
 7869 48ac 4046     		mov	r0, r8
 7870 48ae FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 7871 48b2 4FF0010A 		mov	r10, #1
 7872 48b6 FDF72EBF 		b	.L788
 7873              	.L1549:
 7874 48ba 2046     		mov	r0, r4
 7875 48bc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7876 48c0 C7F85404 		str	r0, [r7, #1108]	@ float
 7877 48c4 4046     		mov	r0, r8
 7878 48c6 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 7879 48ca 4FF0010A 		mov	r10, #1
 7880 48ce FDF71BBF 		b	.L787
 7881              	.L1548:
 7882 48d2 2046     		mov	r0, r4
 7883 48d4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7884 48d8 C7F85004 		str	r0, [r7, #1104]	@ float
 7885 48dc 4046     		mov	r0, r8
 7886 48de FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 7887 48e2 4FF0010A 		mov	r10, #1
 7888 48e6 FDF708BF 		b	.L786
 7889              	.L1568:
 7890 48ea 2046     		mov	r0, r4
 7891 48ec FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7892 48f0 4FF00109 		mov	r9, #1
 7893 48f4 C7F8E005 		str	r0, [r7, #1504]
 7894 48f8 FEF7BFBB 		b	.L795
 7895              	.L1647:
 7896              		.align	2
 7897              	.L1646:
 7898 48fc 00070000 		.word	.LC76
 7899 4900 88040000 		.word	.LC52
 7900 4904 04090000 		.word	.LC91
 7901 4908 A40E0000 		.word	.LC133
 7902 490c 44100000 		.word	.LC142
 7903 4910 B8000000 		.word	.LC12
 7904 4914 C8000000 		.word	.LC14
 7905 4918 440A0000 		.word	.LC99
 7906 491c 00000000 		.word	reprap
 7907 4920 78100000 		.word	.LC143
 7908              	.L145:
 7909 4924 3046     		mov	r0, r6
 7910 4926 BA49     		ldr	r1, .L1648
 7911 4928 4FF00109 		mov	r9, #1
 7912 492c FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 7913 4930 4F46     		mov	r7, r9
 7914 4932 FEF752B9 		b	.L143
 7915              	.L1493:
 7916 4936 2046     		mov	r0, r4
 7917 4938 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 7918 493c 8146     		mov	r9, r0
 7919 493e FCF7D4BD 		b	.L156
 7920              	.L1492:
 7921 4942 2046     		mov	r0, r4
 7922 4944 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7923 4948 0746     		mov	r7, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 140


 7924 494a FCF7C5BD 		b	.L155
 7925              	.L1497:
 7926 494e 2046     		mov	r0, r4
 7927 4950 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7928 4954 0146     		mov	r1, r0
 7929 4956 FCF751BE 		b	.L174
 7930              	.L1496:
 7931 495a 2046     		mov	r0, r4
 7932 495c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 7933 4960 0146     		mov	r1, r0
 7934 4962 FCF732BE 		b	.L171
 7935              	.L1543:
 7936 4966 2046     		mov	r0, r4
 7937 4968 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7938 496c C7F84004 		str	r0, [r7, #1088]	@ float
 7939 4970 4846     		mov	r0, r9
 7940 4972 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 7941 4976 4FF00108 		mov	r8, #1
 7942 497a FDF74BBE 		b	.L774
 7943              	.L1542:
 7944 497e 2046     		mov	r0, r4
 7945 4980 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7946 4984 C7F83C04 		str	r0, [r7, #1084]	@ float
 7947 4988 4846     		mov	r0, r9
 7948 498a FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 7949 498e 4FF00108 		mov	r8, #1
 7950 4992 FDF738BE 		b	.L773
 7951              	.L1567:
 7952 4996 3046     		mov	r0, r6
 7953 4998 9E49     		ldr	r1, .L1648+4
 7954 499a FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7955 499e FEF788BA 		b	.L808
 7956              	.L279:
 7957 49a2 3846     		mov	r0, r7
 7958 49a4 0021     		movs	r1, #0
 7959 49a6 FFF7FEFF 		bl	__aeabi_fcmpgt
 7960 49aa 0028     		cmp	r0, #0
 7961 49ac 00F06483 		beq	.L1439
 7962              	.L1452:
 7963 49b0 3A46     		mov	r2, r7
 7964 49b2 FCF712B8 		b	.L278
 7965              	.L1545:
 7966 49b6 2046     		mov	r0, r4
 7967 49b8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7968 49bc C7F84404 		str	r0, [r7, #1092]	@ float
 7969 49c0 4846     		mov	r0, r9
 7970 49c2 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 7971 49c6 4FF00108 		mov	r8, #1
 7972 49ca FDF731BE 		b	.L776
 7973              	.L1544:
 7974 49ce 2046     		mov	r0, r4
 7975 49d0 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7976 49d4 0146     		mov	r1, r0
 7977 49d6 C7F85C04 		str	r0, [r7, #1116]	@ float
 7978 49da FFF7FEFF 		bl	__aeabi_fmul
 7979 49de 4FF00108 		mov	r8, #1
 7980 49e2 C7F88804 		str	r0, [r7, #1160]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 141


 7981 49e6 FDF71CBE 		b	.L775
 7982              	.L1546:
 7983 49ea 2046     		mov	r0, r4
 7984 49ec FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 7985 49f0 C7F84804 		str	r0, [r7, #1096]	@ float
 7986 49f4 4846     		mov	r0, r9
 7987 49f6 FFF7FEFF 		bl	_ZN15DeltaParameters6RecalcEv
 7988 49fa 4FF00108 		mov	r8, #1
 7989 49fe FDF71EBE 		b	.L777
 7990              	.L1410:
 7991 4a02 DAF80C00 		ldr	r0, [r10, #12]
 7992 4a06 4146     		mov	r1, r8
 7993 4a08 3A46     		mov	r2, r7
 7994 4a0a FFF7FEFF 		bl	_ZN4Heat20SetActiveTemperatureEaf
 7995 4a0e DAF80C00 		ldr	r0, [r10, #12]
 7996 4a12 4146     		mov	r1, r8
 7997 4a14 FFF7FEFF 		bl	_ZN4Heat8ActivateEa
 7998 4a18 FCF7FCBA 		b	.L342
 7999              	.L1502:
 8000 4a1c 3046     		mov	r0, r6
 8001 4a1e 7E49     		ldr	r1, .L1648+8
 8002 4a20 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8003 4a24 B9F1000F 		cmp	r9, #0
 8004 4a28 7FF4E0AB 		bne	.L134
 8005 4a2c 7B4B     		ldr	r3, .L1648+12
 8006 4a2e CDF80090 		str	r9, [sp]
 8007 4a32 1A68     		ldr	r2, [r3]
 8008 4a34 2846     		mov	r0, r5
 8009 4a36 2146     		mov	r1, r4
 8010 4a38 4B46     		mov	r3, r9
 8011 4a3a FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 8012 4a3e 0028     		cmp	r0, #0
 8013 4a40 3CF4A1AE 		beq	.L136
 8014 4a44 4F46     		mov	r7, r9
 8015 4a46 A368     		ldr	r3, [r4, #8]
 8016 4a48 FBF754BF 		b	.L755
 8017              	.L756:
 8018 4a4c 3046     		mov	r0, r6
 8019 4a4e 7449     		ldr	r1, .L1648+16
 8020 4a50 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8021 4a54 D5F88431 		ldr	r3, [r5, #388]
 8022 4a58 2BB3     		cbz	r3, .L762
 8023 4a5a DA46     		mov	r10, fp
 8024              	.L765:
 8025 4a5c 2021     		movs	r1, #32
 8026 4a5e 3046     		mov	r0, r6
 8027 4a60 FFF7FEFF 		bl	_ZN9StringRef3catEc
 8028 4a64 2B68     		ldr	r3, [r5]
 8029 4a66 0AF13C09 		add	r9, r10, #60
 8030 4a6a 53F83910 		ldr	r1, [r3, r9, lsl #3]
 8031 4a6e 17F80A20 		ldrb	r2, [r7, r10]	@ zero_extendqisi2
 8032 4a72 03EBC909 		add	r9, r3, r9, lsl #3
 8033 4a76 81B1     		cbz	r1, .L763
 8034 4a78 4FF00008 		mov	r8, #0
 8035              	.L764:
 8036 4a7c 09EB0803 		add	r3, r9, r8
 8037 4a80 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 142


 8038 4a82 3046     		mov	r0, r6
 8039 4a84 6749     		ldr	r1, .L1648+20
 8040 4a86 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 8041 4a8a D9F80030 		ldr	r3, [r9]
 8042 4a8e 08F10108 		add	r8, r8, #1
 8043 4a92 4345     		cmp	r3, r8
 8044 4a94 01D9     		bls	.L763
 8045 4a96 3A22     		movs	r2, #58
 8046 4a98 F0E7     		b	.L764
 8047              	.L763:
 8048 4a9a D5F88431 		ldr	r3, [r5, #388]
 8049 4a9e 0AF1010A 		add	r10, r10, #1
 8050 4aa2 5345     		cmp	r3, r10
 8051 4aa4 DAD8     		bhi	.L765
 8052              	.L762:
 8053 4aa6 3046     		mov	r0, r6
 8054 4aa8 2021     		movs	r1, #32
 8055 4aaa FFF7FEFF 		bl	_ZN9StringRef3catEc
 8056 4aae D5F88871 		ldr	r7, [r5, #392]
 8057 4ab2 002F     		cmp	r7, #0
 8058 4ab4 00F0A784 		beq	.L1599
 8059 4ab8 0027     		movs	r7, #0
 8060 4aba 4522     		movs	r2, #69
 8061 4abc 00E0     		b	.L767
 8062              	.L766:
 8063 4abe 3A22     		movs	r2, #58
 8064              	.L767:
 8065 4ac0 2B68     		ldr	r3, [r5]
 8066 4ac2 3046     		mov	r0, r6
 8067 4ac4 3B44     		add	r3, r3, r7
 8068 4ac6 93F81032 		ldrb	r3, [r3, #528]	@ zero_extendqisi2
 8069 4aca 5649     		ldr	r1, .L1648+20
 8070 4acc FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 8071 4ad0 D5F88831 		ldr	r3, [r5, #392]
 8072 4ad4 0137     		adds	r7, r7, #1
 8073 4ad6 BB42     		cmp	r3, r7
 8074 4ad8 F1D8     		bhi	.L766
 8075 4ada A368     		ldr	r3, [r4, #8]
 8076 4adc 0027     		movs	r7, #0
 8077 4ade FBF709BF 		b	.L755
 8078              	.L1480:
 8079 4ae2 3046     		mov	r0, r6
 8080 4ae4 5049     		ldr	r1, .L1648+24
 8081 4ae6 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8082 4aea 0127     		movs	r7, #1
 8083 4aec A368     		ldr	r3, [r4, #8]
 8084 4aee FBF701BF 		b	.L755
 8085              	.L949:
 8086 4af2 DFF86091 		ldr	r9, .L1648+68
 8087 4af6 FDF78DB8 		b	.L480
 8088              	.L785:
 8089 4afa 3046     		mov	r0, r6
 8090 4afc 4B49     		ldr	r1, .L1648+28
 8091 4afe FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8092 4b02 FDF7E3BD 		b	.L784
 8093              	.L1494:
 8094 4b06 4946     		mov	r1, r9
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 143


 8095 4b08 0122     		movs	r2, #1
 8096 4b0a 4948     		ldr	r0, .L1648+32
 8097 4b0c FFF7FEFF 		bl	_ZN6RepRap16GetFilesResponseEPKcb
 8098 4b10 0DF15008 		add	r8, sp, #80
 8099 4b14 0A21     		movs	r1, #10
 8100 4b16 C8F80000 		str	r0, [r8]
 8101 4b1a FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 8102 4b1e FCF737BD 		b	.L158
 8103              	.L1465:
 8104 4b22 A368     		ldr	r3, [r4, #8]
 8105 4b24 FBF7E6BE 		b	.L755
 8106              	.L1541:
 8107 4b28 0121     		movs	r1, #1
 8108 4b2a 2046     		mov	r0, r4
 8109 4b2c FFF7FEFF 		bl	_ZN11GCodeBuffer22GetUnprecedentedStringEb
 8110 4b30 0746     		mov	r7, r0
 8111 4b32 3946     		mov	r1, r7
 8112 4b34 2846     		mov	r0, r5
 8113 4b36 FFF7FEFF 		bl	_ZN6GCodes9StartHashEPKc
 8114 4b3a 0028     		cmp	r0, #0
 8115 4b3c 7CF4E7AA 		bne	.L207
 8116 4b40 3A46     		mov	r2, r7
 8117 4b42 3046     		mov	r0, r6
 8118 4b44 3B49     		ldr	r1, .L1648+36
 8119 4b46 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8120 4b4a 0127     		movs	r7, #1
 8121 4b4c A368     		ldr	r3, [r4, #8]
 8122 4b4e FBF7D1BE 		b	.L755
 8123              	.L194:
 8124 4b52 3046     		mov	r0, r6
 8125 4b54 3849     		ldr	r1, .L1648+40
 8126 4b56 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8127 4b5a 0127     		movs	r7, #1
 8128 4b5c A368     		ldr	r3, [r4, #8]
 8129 4b5e FBF7C9BE 		b	.L755
 8130              	.L1503:
 8131 4b62 3946     		mov	r1, r7
 8132 4b64 D868     		ldr	r0, [r3, #12]
 8133 4b66 4246     		mov	r2, r8
 8134 4b68 FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
 8135 4b6c 0746     		mov	r7, r0
 8136 4b6e 0028     		cmp	r0, #0
 8137 4b70 7CF458AE 		bne	.L370
 8138 4b74 FBF7FBBF 		b	.L1412
 8139              	.L628:
 8140 4b78 4A46     		mov	r2, r9
 8141 4b7a 3046     		mov	r0, r6
 8142 4b7c 2F49     		ldr	r1, .L1648+44
 8143 4b7e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8144 4b82 DBF83830 		ldr	r3, [fp, #56]
 8145 4b86 002B     		cmp	r3, #0
 8146 4b88 00F02085 		beq	.L1600
 8147 4b8c 0BF11C09 		add	r9, fp, #28
 8148 4b90 4FF0200A 		mov	r10, #32
 8149 4b94 5F46     		mov	r7, fp
 8150 4b96 01E0     		b	.L633
 8151              	.L632:
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 144


 8152 4b98 4FF03A0A 		mov	r10, #58
 8153              	.L633:
 8154 4b9c 59F8040F 		ldr	r0, [r9, #4]!	@ float
 8155 4ba0 FFF7FEFF 		bl	__aeabi_f2d
 8156 4ba4 5246     		mov	r2, r10
 8157 4ba6 CDE90001 		strd	r0, [sp]
 8158 4baa 3046     		mov	r0, r6
 8159 4bac 2449     		ldr	r1, .L1648+48
 8160 4bae FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 8161 4bb2 BB6B     		ldr	r3, [r7, #56]
 8162 4bb4 08F10108 		add	r8, r8, #1
 8163 4bb8 9845     		cmp	r8, r3
 8164 4bba EDD3     		bcc	.L632
 8165 4bbc A368     		ldr	r3, [r4, #8]
 8166 4bbe 0027     		movs	r7, #0
 8167 4bc0 FBF798BE 		b	.L755
 8168              	.L450:
 8169 4bc4 DAF80070 		ldr	r7, [r10]
 8170 4bc8 07F19C03 		add	r3, r7, #156
 8171 4bcc 55F82300 		ldr	r0, [r5, r3, lsl #2]	@ float
 8172 4bd0 FFF7FEFF 		bl	__aeabi_f2d
 8173 4bd4 0022     		movs	r2, #0
 8174 4bd6 1B4B     		ldr	r3, .L1648+52
 8175 4bd8 FFF7FEFF 		bl	__aeabi_dmul
 8176 4bdc 3A46     		mov	r2, r7
 8177 4bde CDE90001 		strd	r0, [sp]
 8178 4be2 3046     		mov	r0, r6
 8179 4be4 1849     		ldr	r1, .L1648+56
 8180 4be6 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8181 4bea FDF7FABB 		b	.L448
 8182              	.L1570:
 8183 4bee A368     		ldr	r3, [r4, #8]
 8184 4bf0 FBF780BE 		b	.L755
 8185              	.L1591:
 8186 4bf4 3046     		mov	r0, r6
 8187 4bf6 1549     		ldr	r1, .L1648+60
 8188 4bf8 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8189 4bfc 0027     		movs	r7, #0
 8190 4bfe A368     		ldr	r3, [r4, #8]
 8191 4c00 FBF778BE 		b	.L755
 8192              	.L806:
 8193 4c04 3046     		mov	r0, r6
 8194 4c06 1249     		ldr	r1, .L1648+64
 8195 4c08 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8196 4c0c FEF751B9 		b	.L808
 8197              	.L1649:
 8198              		.align	2
 8199              	.L1648:
 8200 4c10 B4010000 		.word	.LC32
 8201 4c14 D0130000 		.word	.LC168
 8202 4c18 A4010000 		.word	.LC31
 8203 4c1c 00000000 		.word	.LANCHOR1
 8204 4c20 B8120000 		.word	.LC160
 8205 4c24 CC120000 		.word	.LC161
 8206 4c28 78060000 		.word	.LC72
 8207 4c2c 38130000 		.word	.LC163
 8208 4c30 00000000 		.word	reprap
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 145


 8209 4c34 70040000 		.word	.LC51
 8210 4c38 F8020000 		.word	.LC42
 8211 4c3c 300F0000 		.word	.LC137
 8212 4c40 D0040000 		.word	.LC56
 8213 4c44 00005940 		.word	1079574528
 8214 4c48 D0080000 		.word	.LC90
 8215 4c4c B0090000 		.word	.LC95
 8216 4c50 E4130000 		.word	.LC169
 8217 4c54 00009642 		.word	1117126656
 8218              	.L1521:
 8219 4c58 B34B     		ldr	r3, .L1650
 8220 4c5a 0146     		mov	r1, r0
 8221 4c5c D868     		ldr	r0, [r3, #12]
 8222 4c5e FFF7FEFF 		bl	_ZNK4Heat13GetAveragePWMEj
 8223 4c62 FFF7FEFF 		bl	__aeabi_f2d
 8224 4c66 3A46     		mov	r2, r7
 8225 4c68 CDE90001 		strd	r0, [sp]
 8226 4c6c 3046     		mov	r0, r6
 8227 4c6e AF49     		ldr	r1, .L1650+4
 8228 4c70 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8229 4c74 0027     		movs	r7, #0
 8230 4c76 A368     		ldr	r3, [r4, #8]
 8231 4c78 FBF73CBE 		b	.L755
 8232              	.L1517:
 8233 4c7c DFF8E492 		ldr	r9, .L1650+60
 8234 4c80 FCF7C8BF 		b	.L480
 8235              	.L1583:
 8236 4c84 DFF8A0A2 		ldr	r10, .L1650
 8237 4c88 DAF80C00 		ldr	r0, [r10, #12]
 8238 4c8c 90F92B10 		ldrsb	r1, [r0, #43]
 8239 4c90 4B1C     		adds	r3, r1, #1
 8240 4c92 01D0     		beq	.L349
 8241 4c94 FFF7FEFF 		bl	_ZN4Heat9SwitchOffEa
 8242              	.L349:
 8243 4c98 DAF80C30 		ldr	r3, [r10, #12]
 8244 4c9c FF22     		movs	r2, #255
 8245 4c9e 83F82B20 		strb	r2, [r3, #43]
 8246 4ca2 0027     		movs	r7, #0
 8247 4ca4 FEF741BE 		b	.L350
 8248              	.L1587:
 8249 4ca8 3046     		mov	r0, r6
 8250 4caa A149     		ldr	r1, .L1650+8
 8251 4cac FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8252 4cb0 0127     		movs	r7, #1
 8253 4cb2 A368     		ldr	r3, [r4, #8]
 8254 4cb4 FBF71EBE 		b	.L755
 8255              	.L1524:
 8256 4cb8 0746     		mov	r7, r0
 8257 4cba A368     		ldr	r3, [r4, #8]
 8258 4cbc FBF71ABE 		b	.L755
 8259              	.L1559:
 8260 4cc0 0122     		movs	r2, #1
 8261 4cc2 FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
 8262 4cc6 0746     		mov	r7, r0
 8263 4cc8 0028     		cmp	r0, #0
 8264 4cca 7DF470AE 		bne	.L877
 8265 4cce FBF74EBF 		b	.L1412
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 146


 8266              	.L1576:
 8267 4cd2 0027     		movs	r7, #0
 8268 4cd4 FEF7FDBC 		b	.L406
 8269              	.L1574:
 8270 4cd8 2046     		mov	r0, r4
 8271 4cda D5F80080 		ldr	r8, [r5]
 8272 4cde FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8273 4ce2 3946     		mov	r1, r7
 8274 4ce4 0246     		mov	r2, r0
 8275 4ce6 4046     		mov	r0, r8
 8276 4ce8 FFF7FEFF 		bl	_ZN8Platform18SetPressureAdvanceEjf
 8277 4cec 0027     		movs	r7, #0
 8278 4cee A368     		ldr	r3, [r4, #8]
 8279 4cf0 FBF700BE 		b	.L755
 8280              	.L854:
 8281 4cf4 3046     		mov	r0, r6
 8282 4cf6 8F49     		ldr	r1, .L1650+12
 8283 4cf8 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8284 4cfc 0027     		movs	r7, #0
 8285 4cfe A368     		ldr	r3, [r4, #8]
 8286 4d00 FBF7F8BD 		b	.L755
 8287              	.L713:
 8288 4d04 2868     		ldr	r0, [r5]
 8289 4d06 0621     		movs	r1, #6
 8290 4d08 8B4A     		ldr	r2, .L1650+16
 8291 4d0a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8292 4d0e 0027     		movs	r7, #0
 8293 4d10 A368     		ldr	r3, [r4, #8]
 8294 4d12 FBF7EFBD 		b	.L755
 8295              	.L1588:
 8296 4d16 2046     		mov	r0, r4
 8297 4d18 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 8298 4d1c 8749     		ldr	r1, .L1650+20
 8299 4d1e FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 8300 4d22 0028     		cmp	r0, #0
 8301 4d24 0CBF     		ite	eq
 8302 4d26 0021     		moveq	r1, #0
 8303 4d28 1021     		movne	r1, #16
 8304 4d2a FEF767BF 		b	.L856
 8305              	.L1575:
 8306 4d2e 0027     		movs	r7, #0
 8307 4d30 FEF787BC 		b	.L420
 8308              	.L995:
 8309 4d34 8249     		ldr	r1, .L1650+24
 8310 4d36 FDF759BE 		b	.L825
 8311              	.L569:
 8312 4d3a 2868     		ldr	r0, [r5]
 8313 4d3c FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 8314 4d40 8049     		ldr	r1, .L1650+28
 8315 4d42 0246     		mov	r2, r0
 8316 4d44 3046     		mov	r0, r6
 8317 4d46 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 8318 4d4a 0027     		movs	r7, #0
 8319 4d4c A368     		ldr	r3, [r4, #8]
 8320 4d4e FBF7D1BD 		b	.L755
 8321              	.L1472:
 8322 4d52 A368     		ldr	r3, [r4, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 147


 8323 4d54 FBF7CEBD 		b	.L755
 8324              	.L1590:
 8325 4d58 2046     		mov	r0, r4
 8326 4d5a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8327 4d5e 0028     		cmp	r0, #0
 8328 4d60 FBF648AE 		blt	.L264
 8329 4d64 0128     		cmp	r0, #1
 8330 4d66 40F3AC82 		ble	.L283
 8331 4d6a 0228     		cmp	r0, #2
 8332 4d6c 7BF442AE 		bne	.L264
 8333 4d70 2846     		mov	r0, r5
 8334 4d72 FFF7FEFF 		bl	_ZN6GCodes17SetMappedFanSpeedEv
 8335 4d76 FBF73DBE 		b	.L264
 8336              	.L1470:
 8337 4d7a 6B4B     		ldr	r3, .L1650
 8338 4d7c 3A46     		mov	r2, r7
 8339 4d7e D868     		ldr	r0, [r3, #12]
 8340 4d80 4FFA88F1 		sxtb	r1, r8
 8341 4d84 FFF7FEFF 		bl	_ZN4Heat19SetTemperatureLimitEaf
 8342 4d88 0027     		movs	r7, #0
 8343 4d8a A368     		ldr	r3, [r4, #8]
 8344 4d8c FBF7B2BD 		b	.L755
 8345              	.L1577:
 8346 4d90 2868     		ldr	r0, [r5]
 8347 4d92 FFF7FEFF 		bl	_ZNK8Platform19GetAllEndstopStatesEv
 8348 4d96 0623     		movs	r3, #6
 8349 4d98 03FB0853 		mla	r3, r3, r8, r5
 8350 4d9c B3F8C222 		ldrh	r2, [r3, #706]
 8351 4da0 03F53073 		add	r3, r3, #704
 8352 4da4 1042     		tst	r0, r2
 8353 4da6 40F09081 		bne	.L715
 8354 4daa 9B88     		ldrh	r3, [r3, #4]
 8355 4dac 8343     		bics	r3, r3, r0
 8356 4dae 40F08C81 		bne	.L715
 8357 4db2 1F46     		mov	r7, r3
 8358 4db4 A368     		ldr	r3, [r4, #8]
 8359 4db6 FBF79DBD 		b	.L755
 8360              	.L1579:
 8361 4dba 5B88     		ldrh	r3, [r3, #2]
 8362 4dbc 002B     		cmp	r3, #0
 8363 4dbe 7EF40AAD 		bne	.L719
 8364 4dc2 2A44     		add	r2, r2, r5
 8365 4dc4 82F8C632 		strb	r3, [r2, #710]
 8366 4dc8 FEF705BD 		b	.L719
 8367              	.L1476:
 8368 4dcc 0323     		movs	r3, #3
 8369 4dce 14AA     		add	r2, sp, #80
 8370 4dd0 1AA9     		add	r1, sp, #104
 8371 4dd2 2046     		mov	r0, r4
 8372 4dd4 1493     		str	r3, [sp, #80]
 8373 4dd6 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 8374 4dda 149F     		ldr	r7, [sp, #80]
 8375 4ddc A7B1     		cbz	r7, .L841
 8376 4dde 1A9B     		ldr	r3, [sp, #104]
 8377 4de0 002B     		cmp	r3, #0
 8378 4de2 40F00783 		bne	.L842
 8379 4de6 95F80423 		ldrb	r2, [r5, #772]	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 148


 8380 4dea 1AA8     		add	r0, sp, #104
 8381 4dec 1946     		mov	r1, r3
 8382 4dee 04E0     		b	.L845
 8383              	.L846:
 8384 4df0 50F8043F 		ldr	r3, [r0, #4]!
 8385 4df4 002B     		cmp	r3, #0
 8386 4df6 40F0FB82 		bne	.L1601
 8387              	.L845:
 8388 4dfa 0131     		adds	r1, r1, #1
 8389 4dfc B942     		cmp	r1, r7
 8390 4dfe 42F00102 		orr	r2, r2, #1
 8391 4e02 F5D1     		bne	.L846
 8392 4e04 85F80423 		strb	r2, [r5, #772]
 8393              	.L841:
 8394 4e08 95F80473 		ldrb	r7, [r5, #772]	@ zero_extendqisi2
 8395 4e0c 002F     		cmp	r7, #0
 8396 4e0e 7FF419A8 		bne	.L848
 8397 4e12 A368     		ldr	r3, [r4, #8]
 8398 4e14 FBF76EBD 		b	.L755
 8399              	.L1478:
 8400 4e18 3046     		mov	r0, r6
 8401 4e1a 4B49     		ldr	r1, .L1650+32
 8402 4e1c FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 8403 4e20 FCF799B8 		b	.L811
 8404              	.L281:
 8405 4e24 C5F86822 		str	r2, [r5, #616]	@ float
 8406 4e28 2846     		mov	r0, r5
 8407 4e2a FFF7FEFF 		bl	_ZN6GCodes17SetMappedFanSpeedEv
 8408 4e2e FBF7E1BD 		b	.L264
 8409              	.L1473:
 8410 4e32 2046     		mov	r0, r4
 8411 4e34 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8412 4e38 0030     		adds	r0, r0, #0
 8413 4e3a 18BF     		it	ne
 8414 4e3c 0120     		movne	r0, #1
 8415 4e3e 87F8B800 		strb	r0, [r7, #184]
 8416 4e42 A368     		ldr	r3, [r4, #8]
 8417 4e44 0027     		movs	r7, #0
 8418 4e46 FBF755BD 		b	.L755
 8419              	.L210:
 8420 4e4a 002F     		cmp	r7, #0
 8421 4e4c 40F00383 		bne	.L212
 8422 4e50 A368     		ldr	r3, [r4, #8]
 8423 4e52 FBF74FBD 		b	.L755
 8424              	.L1499:
 8425 4e56 3046     		mov	r0, r6
 8426 4e58 3C49     		ldr	r1, .L1650+36
 8427 4e5a FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8428 4e5e 0127     		movs	r7, #1
 8429 4e60 A368     		ldr	r3, [r4, #8]
 8430 4e62 FBF747BD 		b	.L755
 8431              	.L1421:
 8432 4e66 3046     		mov	r0, r6
 8433 4e68 3949     		ldr	r1, .L1650+40
 8434 4e6a FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8435 4e6e 0127     		movs	r7, #1
 8436 4e70 A368     		ldr	r3, [r4, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 149


 8437 4e72 FBF73FBD 		b	.L755
 8438              	.L351:
 8439 4e76 3046     		mov	r0, r6
 8440 4e78 3649     		ldr	r1, .L1650+44
 8441 4e7a FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8442 4e7e 0127     		movs	r7, #1
 8443 4e80 FEF753BD 		b	.L350
 8444              	.L1569:
 8445 4e84 2846     		mov	r0, r5
 8446 4e86 2146     		mov	r1, r4
 8447 4e88 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8448 4e8c 0028     		cmp	r0, #0
 8449 4e8e 7EF476A9 		bne	.L177
 8450 4e92 FBF7A4BE 		b	.L546
 8451              	.L821:
 8452 4e96 2046     		mov	r0, r4
 8453 4e98 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8454 4e9c 0021     		movs	r1, #0
 8455 4e9e 0746     		mov	r7, r0
 8456 4ea0 FFF7FEFF 		bl	__aeabi_fcmpge
 8457 4ea4 20B1     		cbz	r0, .L823
 8458 4ea6 3846     		mov	r0, r7
 8459 4ea8 2B49     		ldr	r1, .L1650+48
 8460 4eaa FFF7FEFF 		bl	__aeabi_fcmple
 8461 4eae 38B9     		cbnz	r0, .L1602
 8462              	.L823:
 8463 4eb0 BAF1000F 		cmp	r10, #0
 8464 4eb4 3DF499AD 		beq	.L887
 8465 4eb8 A368     		ldr	r3, [r4, #8]
 8466 4eba 0027     		movs	r7, #0
 8467 4ebc FBF71ABD 		b	.L755
 8468              	.L1602:
 8469 4ec0 3846     		mov	r0, r7
 8470 4ec2 2549     		ldr	r1, .L1650+48
 8471 4ec4 FFF7FEFF 		bl	__aeabi_fdiv
 8472 4ec8 0146     		mov	r1, r0
 8473 4eca 2868     		ldr	r0, [r5]
 8474 4ecc FFF7FEFF 		bl	_ZN8Platform20SetIdleCurrentFactorEf
 8475 4ed0 0027     		movs	r7, #0
 8476 4ed2 A368     		ldr	r3, [r4, #8]
 8477 4ed4 FBF70EBD 		b	.L755
 8478              	.L1585:
 8479 4ed8 A368     		ldr	r3, [r4, #8]
 8480 4eda FBF70BBD 		b	.L755
 8481              	.L953:
 8482 4ede DFF88890 		ldr	r9, .L1650+64
 8483 4ee2 51E4     		b	.L496
 8484              	.L1595:
 8485 4ee4 1499     		ldr	r1, [sp, #80]
 8486 4ee6 DAF80C20 		ldr	r2, [r10, #12]
 8487 4eea D1F10101 		rsbs	r1, r1, #1
 8488 4eee 139B     		ldr	r3, [sp, #76]	@ float
 8489 4ef0 38BF     		it	cc
 8490 4ef2 0021     		movcc	r1, #0
 8491 4ef4 0191     		str	r1, [sp, #4]
 8492 4ef6 9144     		add	r9, r9, r2
 8493 4ef8 0093     		str	r3, [sp]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 150


 8494 4efa D9F80400 		ldr	r0, [r9, #4]
 8495 4efe 1099     		ldr	r1, [sp, #64]	@ float
 8496 4f00 119A     		ldr	r2, [sp, #68]	@ float
 8497 4f02 129B     		ldr	r3, [sp, #72]	@ float
 8498 4f04 FFF7FEFF 		bl	_ZN3PID8SetModelEffffb
 8499 4f08 0028     		cmp	r0, #0
 8500 4f0a 7FF45DAC 		bne	.L494
 8501 4f0e 3046     		mov	r0, r6
 8502 4f10 1249     		ldr	r1, .L1650+52
 8503 4f12 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8504 4f16 57E4     		b	.L494
 8505              	.L196:
 8506 4f18 3046     		mov	r0, r6
 8507 4f1a 1149     		ldr	r1, .L1650+56
 8508 4f1c FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8509 4f20 0127     		movs	r7, #1
 8510 4f22 A368     		ldr	r3, [r4, #8]
 8511 4f24 FBF7E6BC 		b	.L755
 8512              	.L1651:
 8513              		.align	2
 8514              	.L1650:
 8515 4f28 00000000 		.word	reprap
 8516 4f2c 24110000 		.word	.LC146
 8517 4f30 60060000 		.word	.LC71
 8518 4f34 20150000 		.word	.LC181
 8519 4f38 68120000 		.word	.LC158
 8520 4f3c 3C150000 		.word	.LC182
 8521 4f40 6C010000 		.word	.LC29
 8522 4f44 680D0000 		.word	.LC125
 8523 4f48 64140000 		.word	.LC174
 8524 4f4c 74020000 		.word	.LC39
 8525 4f50 90080000 		.word	.LC88
 8526 4f54 90060000 		.word	.LC73
 8527 4f58 0000C842 		.word	1120403456
 8528 4f5c 100A0000 		.word	.LC97
 8529 4f60 F8020000 		.word	.LC42
 8530 4f64 00004842 		.word	1112014848
 8531 4f68 BC000000 		.word	.LC13
 8532              	.L1598:
 8533 4f6c 2046     		mov	r0, r4
 8534 4f6e 5221     		movs	r1, #82
 8535 4f70 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8536 4f74 0028     		cmp	r0, #0
 8537 4f76 40F0B481 		bne	.L1603
 8538 4f7a 4FF0FF38 		mov	r8, #-1
 8539              	.L771:
 8540 4f7e 2046     		mov	r0, r4
 8541 4f80 5421     		movs	r1, #84
 8542 4f82 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8543 4f86 0028     		cmp	r0, #0
 8544 4f88 40F0A681 		bne	.L1604
 8545 4f8c 4FF0FF33 		mov	r3, #-1
 8546              	.L772:
 8547 4f90 B948     		ldr	r0, .L1652+16
 8548 4f92 0096     		str	r6, [sp]
 8549 4f94 3946     		mov	r1, r7
 8550 4f96 4246     		mov	r2, r8
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 151


 8551 4f98 4068     		ldr	r0, [r0, #4]
 8552 4f9a FFF7FEFF 		bl	_ZN7Network14EnableProtocolEiiiR9StringRef
 8553 4f9e 0027     		movs	r7, #0
 8554 4fa0 A368     		ldr	r3, [r4, #8]
 8555 4fa2 FBF7A7BC 		b	.L755
 8556              	.L1586:
 8557 4fa6 DFF8D082 		ldr	r8, .L1652+16
 8558 4faa 0027     		movs	r7, #0
 8559 4fac D8F80C00 		ldr	r0, [r8, #12]
 8560 4fb0 90F92A10 		ldrsb	r1, [r0, #42]
 8561 4fb4 FFF7FEFF 		bl	_ZN4Heat9SwitchOffEa
 8562 4fb8 D8F80C30 		ldr	r3, [r8, #12]
 8563 4fbc FF22     		movs	r2, #255
 8564 4fbe 83F82A20 		strb	r2, [r3, #42]
 8565 4fc2 A368     		ldr	r3, [r4, #8]
 8566 4fc4 FBF796BC 		b	.L755
 8567              	.L717:
 8568 4fc8 2046     		mov	r0, r4
 8569 4fca FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8570 4fce D5F88431 		ldr	r3, [r5, #388]
 8571 4fd2 8346     		mov	fp, r0
 8572 4fd4 002B     		cmp	r3, #0
 8573 4fd6 00F0CF82 		beq	.L986
 8574 4fda 4FF0000A 		mov	r10, #0
 8575 4fde A74F     		ldr	r7, .L1652+20
 8576 4fe0 D146     		mov	r9, r10
 8577 4fe2 0122     		movs	r2, #1
 8578              	.L723:
 8579 4fe4 2046     		mov	r0, r4
 8580 4fe6 17F80A10 		ldrb	r1, [r7, r10]	@ zero_extendqisi2
 8581 4fea 0C92     		str	r2, [sp, #48]
 8582 4fec FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8583 4ff0 0C9A     		ldr	r2, [sp, #48]
 8584 4ff2 28B1     		cbz	r0, .L722
 8585 4ff4 02FA0AF3 		lsl	r3, r2, r10
 8586 4ff8 49EA0309 		orr	r9, r9, r3
 8587 4ffc 1FFA89F9 		uxth	r9, r9
 8588              	.L722:
 8589 5000 D5F88431 		ldr	r3, [r5, #388]
 8590 5004 0AF1010A 		add	r10, r10, #1
 8591 5008 5345     		cmp	r3, r10
 8592 500a EBD8     		bhi	.L723
 8593              	.L721:
 8594 500c 2046     		mov	r0, r4
 8595 500e 4521     		movs	r1, #69
 8596 5010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8597 5014 A0B9     		cbnz	r0, .L1605
 8598              	.L724:
 8599 5016 BBF1000F 		cmp	fp, #0
 8600 501a 00F07582 		beq	.L729
 8601 501e BBF1010F 		cmp	fp, #1
 8602 5022 00F06782 		beq	.L730
 8603 5026 BBF1FF3F 		cmp	fp, #-1
 8604 502a 00F05882 		beq	.L1606
 8605 502e 2868     		ldr	r0, [r5]
 8606 5030 0621     		movs	r1, #6
 8607 5032 934A     		ldr	r2, .L1652+24
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 152


 8608 5034 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8609              	.L733:
 8610 5038 A368     		ldr	r3, [r4, #8]
 8611 503a 0027     		movs	r7, #0
 8612 503c FBF75ABC 		b	.L755
 8613              	.L1605:
 8614 5040 0DF1680A 		add	r10, sp, #104
 8615 5044 0623     		movs	r3, #6
 8616 5046 5146     		mov	r1, r10
 8617 5048 2046     		mov	r0, r4
 8618 504a 14AA     		add	r2, sp, #80
 8619 504c 1493     		str	r3, [sp, #80]
 8620 504e FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 8621 5052 1498     		ldr	r0, [sp, #80]
 8622 5054 0023     		movs	r3, #0
 8623 5056 0121     		movs	r1, #1
 8624              	.L725:
 8625 5058 8342     		cmp	r3, r0
 8626 505a DCD0     		beq	.L724
 8627 505c 5AF82320 		ldr	r2, [r10, r3, lsl #2]
 8628 5060 0133     		adds	r3, r3, #1
 8629 5062 052A     		cmp	r2, #5
 8630 5064 02F10307 		add	r7, r2, #3
 8631 5068 F6D8     		bhi	.L725
 8632 506a 01FA07F2 		lsl	r2, r1, r7
 8633 506e 49EA0209 		orr	r9, r9, r2
 8634 5072 1FFA89F9 		uxth	r9, r9
 8635 5076 EFE7     		b	.L725
 8636              	.L1439:
 8637 5078 0022     		movs	r2, #0
 8638 507a FBF7AEBC 		b	.L278
 8639              	.L1562:
 8640 507e 2B68     		ldr	r3, [r5]
 8641 5080 0027     		movs	r7, #0
 8642 5082 D3F84402 		ldr	r0, [r3, #580]	@ float
 8643 5086 FFF7FEFF 		bl	__aeabi_f2d
 8644 508a 7E4B     		ldr	r3, .L1652+28
 8645 508c 0022     		movs	r2, #0
 8646 508e FFF7FEFF 		bl	__aeabi_dmul
 8647 5092 FFF7FEFF 		bl	__aeabi_d2iz
 8648 5096 7C49     		ldr	r1, .L1652+32
 8649 5098 0246     		mov	r2, r0
 8650 509a 3046     		mov	r0, r6
 8651 509c FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 8652 50a0 A368     		ldr	r3, [r4, #8]
 8653 50a2 FBF727BC 		b	.L755
 8654              	.L1578:
 8655 50a6 2046     		mov	r0, r4
 8656 50a8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8657 50ac 0623     		movs	r3, #6
 8658 50ae 03FB0853 		mla	r3, r3, r8, r5
 8659 50b2 5321     		movs	r1, #83
 8660 50b4 83F8C602 		strb	r0, [r3, #710]
 8661 50b8 2046     		mov	r0, r4
 8662 50ba FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8663 50be 0028     		cmp	r0, #0
 8664 50c0 82D1     		bne	.L717
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 153


 8665 50c2 0746     		mov	r7, r0
 8666 50c4 A368     		ldr	r3, [r4, #8]
 8667 50c6 FBF715BC 		b	.L755
 8668              	.L715:
 8669 50ca 0123     		movs	r3, #1
 8670 50cc 03FA08F8 		lsl	r8, r3, r8
 8671 50d0 D5F80033 		ldr	r3, [r5, #768]
 8672 50d4 0027     		movs	r7, #0
 8673 50d6 43EA0803 		orr	r3, r3, r8
 8674 50da C5F80033 		str	r3, [r5, #768]
 8675 50de A368     		ldr	r3, [r4, #8]
 8676 50e0 FBF708BC 		b	.L755
 8677              	.L1580:
 8678 50e4 A368     		ldr	r3, [r4, #8]
 8679 50e6 FBF705BC 		b	.L755
 8680              	.L809:
 8681 50ea 3046     		mov	r0, r6
 8682 50ec 6749     		ldr	r1, .L1652+36
 8683 50ee FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8684 50f2 FDF7DEBE 		b	.L808
 8685              	.L1594:
 8686 50f6 FFF7FEFF 		bl	_ZN3Fan7DisableEv
 8687 50fa 4FF0010A 		mov	r10, #1
 8688 50fe FBF730BC 		b	.L266
 8689              	.L653:
 8690 5102 1498     		ldr	r0, [sp, #80]	@ float
 8691 5104 FFF7FEFF 		bl	__aeabi_f2d
 8692 5108 CDE90001 		strd	r0, [sp]
 8693 510c 1A98     		ldr	r0, [sp, #104]	@ float
 8694 510e FFF7FEFF 		bl	__aeabi_f2d
 8695 5112 3A46     		mov	r2, r7
 8696 5114 CDE90201 		strd	r0, [sp, #8]
 8697 5118 3046     		mov	r0, r6
 8698 511a 5D49     		ldr	r1, .L1652+40
 8699 511c FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8700 5120 FCF75EBF 		b	.L652
 8701              	.L969:
 8702 5124 8146     		mov	r9, r0
 8703 5126 FDF7A1B8 		b	.L640
 8704              	.L1519:
 8705 512a 2046     		mov	r0, r4
 8706 512c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8707 5130 0028     		cmp	r0, #0
 8708 5132 7CF7B6AD 		ble	.L878
 8709 5136 9AF80030 		ldrb	r3, [r10]	@ zero_extendqisi2
 8710 513a 83F00103 		eor	r3, r3, #1
 8711 513e 8AF80030 		strb	r3, [r10]
 8712 5142 FCF7AEBD 		b	.L878
 8713              	.L1520:
 8714 5146 2046     		mov	r0, r4
 8715 5148 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8716 514c 0021     		movs	r1, #0
 8717 514e 0746     		mov	r7, r0
 8718 5150 FFF7FEFF 		bl	__aeabi_fcmplt
 8719 5154 0028     		cmp	r0, #0
 8720 5156 70D1     		bne	.L1607
 8721 5158 3846     		mov	r0, r7
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 154


 8722 515a 4E49     		ldr	r1, .L1652+44
 8723 515c FFF7FEFF 		bl	__aeabi_fcmplt
 8724 5160 0028     		cmp	r0, #0
 8725 5162 62D0     		beq	.L1424
 8726 5164 3846     		mov	r0, r7
 8727 5166 3946     		mov	r1, r7
 8728 5168 FFF7FEFF 		bl	__aeabi_fcmpun
 8729 516c 28B9     		cbnz	r0, .L943
 8730 516e 3846     		mov	r0, r7
 8731 5170 4949     		ldr	r1, .L1652+48
 8732 5172 FFF7FEFF 		bl	__aeabi_fcmplt
 8733 5176 0028     		cmp	r0, #0
 8734 5178 6ED0     		beq	.L1425
 8735              	.L943:
 8736 517a 3846     		mov	r0, r7
 8737              	.L464:
 8738 517c FFF7FEFF 		bl	__aeabi_f2d
 8739 5180 39A3     		adr	r3, .L1652
 8740 5182 D3E90023 		ldrd	r2, [r3]
 8741 5186 FFF7FEFF 		bl	__aeabi_dmul
 8742 518a 0022     		movs	r2, #0
 8743 518c 434B     		ldr	r3, .L1652+52
 8744 518e FFF7FEFF 		bl	__aeabi_dadd
 8745 5192 FFF7FEFF 		bl	__aeabi_d2f
 8746 5196 0746     		mov	r7, r0
 8747              	.L466:
 8748 5198 3846     		mov	r0, r7
 8749 519a FFF7FEFF 		bl	__aeabi_f2d
 8750 519e 34A3     		adr	r3, .L1652+8
 8751 51a0 D3E90023 		ldrd	r2, [r3]
 8752 51a4 FFF7FEFF 		bl	__aeabi_dmul
 8753 51a8 FFF7FEFF 		bl	__aeabi_d2f
 8754 51ac 9AF80030 		ldrb	r3, [r10]	@ zero_extendqisi2
 8755 51b0 0146     		mov	r1, r0
 8756 51b2 23B1     		cbz	r3, .L467
 8757 51b4 4FF07E50 		mov	r0, #1065353216
 8758 51b8 FFF7FEFF 		bl	__aeabi_fsub
 8759 51bc 0146     		mov	r1, r0
 8760              	.L467:
 8761 51be 98F80000 		ldrb	r0, [r8]	@ zero_extendqisi2
 8762              	.L1453:
 8763 51c2 3222     		movs	r2, #50
 8764 51c4 FFF7FEFF 		bl	_Z9AnalogOuthft
 8765 51c8 FCF772BD 		b	.L458
 8766              	.L1573:
 8767 51cc 2046     		mov	r0, r4
 8768 51ce FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 8769 51d2 4FF07E51 		mov	r1, #1065353216
 8770 51d6 0746     		mov	r7, r0
 8771 51d8 FFF7FEFF 		bl	__aeabi_fcmpgt
 8772 51dc 20B1     		cbz	r0, .L223
 8773 51de 3846     		mov	r0, r7
 8774 51e0 2F49     		ldr	r1, .L1652+56
 8775 51e2 FFF7FEFF 		bl	__aeabi_fdiv
 8776 51e6 0746     		mov	r7, r0
 8777              	.L223:
 8778 51e8 3846     		mov	r0, r7
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 155


 8779 51ea 3946     		mov	r1, r7
 8780 51ec FFF7FEFF 		bl	__aeabi_fcmpun
 8781 51f0 40B9     		cbnz	r0, .L225
 8782 51f2 3846     		mov	r0, r7
 8783 51f4 4FF07E51 		mov	r1, #1065353216
 8784 51f8 FFF7FEFF 		bl	__aeabi_fcmplt
 8785 51fc 0028     		cmp	r0, #0
 8786 51fe 78D1     		bne	.L226
 8787 5200 4FF07E57 		mov	r7, #1065353216
 8788              	.L225:
 8789 5204 9AF80030 		ldrb	r3, [r10]	@ zero_extendqisi2
 8790 5208 2BB1     		cbz	r3, .L227
 8791 520a 3946     		mov	r1, r7
 8792 520c 4FF07E50 		mov	r0, #1065353216
 8793 5210 FFF7FEFF 		bl	__aeabi_fsub
 8794 5214 0746     		mov	r7, r0
 8795              	.L227:
 8796 5216 3946     		mov	r1, r7
 8797 5218 98F80000 		ldrb	r0, [r8]	@ zero_extendqisi2
 8798 521c 4FF4FA72 		mov	r2, #500
 8799 5220 FFF7FEFF 		bl	_Z9AnalogOuthft
 8800 5224 0027     		movs	r7, #0
 8801 5226 FEF705B9 		b	.L222
 8802              	.L1424:
 8803 522a 3846     		mov	r0, r7
 8804 522c 1D49     		ldr	r1, .L1652+60
 8805 522e FFF7FEFF 		bl	__aeabi_fcmpgt
 8806 5232 0028     		cmp	r0, #0
 8807 5234 B0D0     		beq	.L466
 8808 5236 1B4F     		ldr	r7, .L1652+60
 8809 5238 AEE7     		b	.L466
 8810              	.L1607:
 8811 523a 9AF80030 		ldrb	r3, [r10]	@ zero_extendqisi2
 8812 523e 98F80000 		ldrb	r0, [r8]	@ zero_extendqisi2
 8813 5242 5BB1     		cbz	r3, .L942
 8814 5244 4FF07E51 		mov	r1, #1065353216
 8815 5248 BBE7     		b	.L1453
 8816              	.L1593:
 8817 524a 3046     		mov	r0, r6
 8818 524c 1649     		ldr	r1, .L1652+64
 8819 524e FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8820 5252 0127     		movs	r7, #1
 8821 5254 FFF77CB8 		b	.L152
 8822              	.L1425:
 8823 5258 0F48     		ldr	r0, .L1652+48
 8824 525a 8FE7     		b	.L464
 8825              	.L942:
 8826 525c 0021     		movs	r1, #0
 8827 525e B0E7     		b	.L1453
 8828              	.L1584:
 8829 5260 A368     		ldr	r3, [r4, #8]
 8830 5262 FBF747BB 		b	.L755
 8831              	.L1653:
 8832 5266 00BF     		.align	3
 8833              	.L1652:
 8834 5268 F5499FF4 		.word	-190887435
 8835 526c 499F2440 		.word	1076141897
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 156


 8836 5270 2D431CEB 		.word	-350469331
 8837 5274 E2360A3F 		.word	1057634018
 8838 5278 00000000 		.word	reprap
 8839 527c 00000000 		.word	_ZN6GCodes11axisLettersE
 8840 5280 D8110000 		.word	.LC153
 8841 5284 00005940 		.word	1079574528
 8842 5288 9C140000 		.word	.LC177
 8843 528c 18140000 		.word	.LC172
 8844 5290 00100000 		.word	.LC141
 8845 5294 00000844 		.word	1141374976
 8846 5298 00003443 		.word	1127481344
 8847 529c 00008140 		.word	1082195968
 8848 52a0 00007F43 		.word	1132396544
 8849 52a4 00001645 		.word	1159069696
 8850 52a8 DC010000 		.word	.LC33
 8851              	.L1495:
 8852 52ac 2868     		ldr	r0, [r5]
 8853 52ae FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 8854 52b2 0128     		cmp	r0, #1
 8855 52b4 7CF430A9 		bne	.L874
 8856 52b8 FCF729B9 		b	.L161
 8857              	.L1592:
 8858 52bc A368     		ldr	r3, [r4, #8]
 8859 52be FBF719BB 		b	.L755
 8860              	.L283:
 8861 52c2 D9F80010 		ldr	r1, [r9]
 8862 52c6 2868     		ldr	r0, [r5]
 8863 52c8 01F19803 		add	r3, r1, #152
 8864 52cc 55F82320 		ldr	r2, [r5, r3, lsl #2]	@ float
 8865 52d0 FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 8866 52d4 FBF78EBB 		b	.L264
 8867              	.L1604:
 8868 52d8 2046     		mov	r0, r4
 8869 52da FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8870 52de 0346     		mov	r3, r0
 8871 52e0 56E6     		b	.L772
 8872              	.L1603:
 8873 52e2 2046     		mov	r0, r4
 8874 52e4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8875 52e8 8046     		mov	r8, r0
 8876 52ea 48E6     		b	.L771
 8877              	.L1572:
 8878 52ec A368     		ldr	r3, [r4, #8]
 8879 52ee FBF701BB 		b	.L755
 8880              	.L226:
 8881 52f2 3846     		mov	r0, r7
 8882 52f4 0021     		movs	r1, #0
 8883 52f6 FFF7FEFF 		bl	__aeabi_fcmpgt
 8884 52fa 0028     		cmp	r0, #0
 8885 52fc 82D1     		bne	.L225
 8886 52fe 0027     		movs	r7, #0
 8887 5300 80E7     		b	.L225
 8888              	.L195:
 8889 5302 3046     		mov	r0, r6
 8890 5304 B749     		ldr	r1, .L1654
 8891 5306 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8892 530a 0127     		movs	r7, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 157


 8893 530c A368     		ldr	r3, [r4, #8]
 8894 530e FBF7F1BA 		b	.L755
 8895              	.L1427:
 8896 5312 0096     		str	r6, [sp]
 8897 5314 F868     		ldr	r0, [r7, #12]
 8898 5316 5346     		mov	r3, r10
 8899 5318 4146     		mov	r1, r8
 8900 531a 4A46     		mov	r2, r9
 8901 531c FFF7FEFF 		bl	_ZN4Heat13StartAutoTuneEjffR9StringRef
 8902 5320 5F46     		mov	r7, fp
 8903 5322 A368     		ldr	r3, [r4, #8]
 8904 5324 FBF7E6BA 		b	.L755
 8905              	.L1597:
 8906 5328 3037     		adds	r7, r7, #48
 8907 532a 0022     		movs	r2, #0
 8908 532c 3946     		mov	r1, r7
 8909 532e 1AA8     		add	r0, sp, #104
 8910 5330 FFF7FEFF 		bl	_ZNK5FopDt20GetM301PidParametersEb
 8911 5334 1A98     		ldr	r0, [sp, #104]	@ float
 8912 5336 FFF7FEFF 		bl	__aeabi_f2d
 8913 533a 8046     		mov	r8, r0
 8914 533c 1B98     		ldr	r0, [sp, #108]	@ float
 8915 533e 8946     		mov	r9, r1
 8916 5340 FFF7FEFF 		bl	__aeabi_f2d
 8917 5344 CDE90001 		strd	r0, [sp]
 8918 5348 1C98     		ldr	r0, [sp, #112]	@ float
 8919 534a FFF7FEFF 		bl	__aeabi_f2d
 8920 534e 4B46     		mov	r3, r9
 8921 5350 CDE90201 		strd	r0, [sp, #8]
 8922 5354 4246     		mov	r2, r8
 8923 5356 3046     		mov	r0, r6
 8924 5358 A349     		ldr	r1, .L1654+4
 8925 535a FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 8926 535e 0122     		movs	r2, #1
 8927 5360 1AA8     		add	r0, sp, #104
 8928 5362 3946     		mov	r1, r7
 8929 5364 FFF7FEFF 		bl	_ZNK5FopDt20GetM301PidParametersEb
 8930 5368 1A98     		ldr	r0, [sp, #104]	@ float
 8931 536a FFF7FEFF 		bl	__aeabi_f2d
 8932 536e 8046     		mov	r8, r0
 8933 5370 1B98     		ldr	r0, [sp, #108]	@ float
 8934 5372 8946     		mov	r9, r1
 8935 5374 FFF7FEFF 		bl	__aeabi_f2d
 8936 5378 CDE90001 		strd	r0, [sp]
 8937 537c 1C98     		ldr	r0, [sp, #112]	@ float
 8938 537e FFF7FEFF 		bl	__aeabi_f2d
 8939 5382 4246     		mov	r2, r8
 8940 5384 CDE90201 		strd	r0, [sp, #8]
 8941 5388 4B46     		mov	r3, r9
 8942 538a 3046     		mov	r0, r6
 8943 538c 9749     		ldr	r1, .L1654+8
 8944 538e FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 8945 5392 FFF719BA 		b	.L494
 8946              	.L1596:
 8947 5396 4246     		mov	r2, r8
 8948 5398 3046     		mov	r0, r6
 8949 539a 9549     		ldr	r1, .L1654+12
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 158


 8950 539c FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8951 53a0 FFF712BA 		b	.L494
 8952              	.L1535:
 8953 53a4 2046     		mov	r0, r4
 8954 53a6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8955 53aa 4146     		mov	r1, r8
 8956 53ac 0746     		mov	r7, r0
 8957 53ae 0246     		mov	r2, r0
 8958 53b0 2868     		ldr	r0, [r5]
 8959 53b2 FFF7FEFF 		bl	_ZN8Platform18SetCommsPropertiesEjm
 8960 53b6 B8F1000F 		cmp	r8, #0
 8961 53ba 00F04A81 		beq	.L684
 8962 53be B8F1010F 		cmp	r8, #1
 8963 53c2 05D1     		bne	.L683
 8964 53c4 AB6C     		ldr	r3, [r5, #72]
 8965 53c6 07F00107 		and	r7, r7, #1
 8966 53ca 1B68     		ldr	r3, [r3]
 8967 53cc 83F87D70 		strb	r7, [r3, #125]
 8968              	.L683:
 8969 53d0 A368     		ldr	r3, [r4, #8]
 8970 53d2 0027     		movs	r7, #0
 8971 53d4 FBF78EBA 		b	.L755
 8972              	.L1534:
 8973 53d8 2046     		mov	r0, r4
 8974 53da 2F68     		ldr	r7, [r5]
 8975 53dc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8976 53e0 4146     		mov	r1, r8
 8977 53e2 0246     		mov	r2, r0
 8978 53e4 3846     		mov	r0, r7
 8979 53e6 FFF7FEFF 		bl	_ZN8Platform11SetBaudRateEjm
 8980 53ea 0127     		movs	r7, #1
 8981 53ec FCF708BF 		b	.L681
 8982              	.L1601:
 8983 53f0 85F80423 		strb	r2, [r5, #772]
 8984              	.L842:
 8985 53f4 2868     		ldr	r0, [r5]
 8986 53f6 0621     		movs	r1, #6
 8987 53f8 7E4A     		ldr	r2, .L1654+16
 8988 53fa FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 8989 53fe 0023     		movs	r3, #0
 8990 5400 85F80433 		strb	r3, [r5, #772]
 8991 5404 00E5     		b	.L841
 8992              	.L1599:
 8993 5406 A368     		ldr	r3, [r4, #8]
 8994 5408 FBF774BA 		b	.L755
 8995              	.L643:
 8996 540c 2046     		mov	r0, r4
 8997 540e 4521     		movs	r1, #69
 8998 5410 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8999 5414 0028     		cmp	r0, #0
 9000 5416 3CF479AF 		beq	.L648
 9001              	.L647:
 9002 541a 2868     		ldr	r0, [r5]
 9003 541c 0621     		movs	r1, #6
 9004 541e 764A     		ldr	r2, .L1654+20
 9005 5420 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 9006 5424 0027     		movs	r7, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 159


 9007 5426 A368     		ldr	r3, [r4, #8]
 9008 5428 FBF764BA 		b	.L755
 9009              	.L164:
 9010 542c D8F80000 		ldr	r0, [r8]
 9011 5430 7249     		ldr	r1, .L1654+24
 9012 5432 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 9013 5436 FCF7ABB8 		b	.L158
 9014              	.L162:
 9015 543a 2868     		ldr	r0, [r5]
 9016 543c FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 9017 5440 871E     		subs	r7, r0, #2
 9018 5442 18BF     		it	ne
 9019 5444 0127     		movne	r7, #1
 9020 5446 FCF772B8 		b	.L163
 9021              	.L629:
 9022 544a 5846     		mov	r0, fp
 9023 544c 1AA9     		add	r1, sp, #104
 9024 544e FFF7FEFF 		bl	_ZN4Tool9DefineMixEPKf
 9025 5452 FCF772BD 		b	.L630
 9026              	.L212:
 9027 5456 2846     		mov	r0, r5
 9028 5458 05F58671 		add	r1, r5, #268
 9029 545c 0122     		movs	r2, #1
 9030 545e FFF7FEFF 		bl	_ZN6GCodes12SetPositionsEPKfb
 9031 5462 0927     		movs	r7, #9
 9032 5464 2B46     		mov	r3, r5
 9033              	.L214:
 9034 5466 D3F80C21 		ldr	r2, [r3, #268]	@ float
 9035 546a 013F     		subs	r7, r7, #1
 9036 546c C3F88820 		str	r2, [r3, #136]	@ float
 9037 5470 03F10403 		add	r3, r3, #4
 9038 5474 F7D1     		bne	.L214
 9039 5476 A368     		ldr	r3, [r4, #8]
 9040 5478 D5F83021 		ldr	r2, [r5, #304]	@ float
 9041 547c 5A60     		str	r2, [r3, #4]	@ float
 9042 547e A368     		ldr	r3, [r4, #8]
 9043 5480 FBF738BA 		b	.L755
 9044              	.L686:
 9045 5484 4146     		mov	r1, r8
 9046 5486 2868     		ldr	r0, [r5]
 9047 5488 FFF7FEFF 		bl	_ZNK8Platform18GetCommsPropertiesEj
 9048 548c 4146     		mov	r1, r8
 9049 548e 8146     		mov	r9, r0
 9050 5490 2868     		ldr	r0, [r5]
 9051 5492 FFF7FEFF 		bl	_ZNK8Platform11GetBaudRateEj
 9052 5496 5A4A     		ldr	r2, .L1654+28
 9053 5498 5A49     		ldr	r1, .L1654+32
 9054 549a 19F0010F 		tst	r9, #1
 9055 549e 18BF     		it	ne
 9056 54a0 1146     		movne	r1, r2
 9057 54a2 0346     		mov	r3, r0
 9058 54a4 0091     		str	r1, [sp]
 9059 54a6 4246     		mov	r2, r8
 9060 54a8 3046     		mov	r0, r6
 9061 54aa 5749     		ldr	r1, .L1654+36
 9062 54ac FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 9063 54b0 A368     		ldr	r3, [r4, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 160


 9064 54b2 FBF71FBA 		b	.L755
 9065              	.L1558:
 9066 54b6 DAF82800 		ldr	r0, [r10, #40]	@ float
 9067 54ba FFF7FEFF 		bl	__aeabi_f2d
 9068 54be 0246     		mov	r2, r0
 9069 54c0 0B46     		mov	r3, r1
 9070 54c2 3046     		mov	r0, r6
 9071 54c4 5149     		ldr	r1, .L1654+40
 9072 54c6 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 9073 54ca FDF701BA 		b	.L596
 9074              	.L1508:
 9075 54ce 3046     		mov	r0, r6
 9076 54d0 4F49     		ldr	r1, .L1654+44
 9077 54d2 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 9078 54d6 0127     		movs	r7, #1
 9079 54d8 A368     		ldr	r3, [r4, #8]
 9080 54da FBF70BBA 		b	.L755
 9081              	.L1606:
 9082 54de 0623     		movs	r3, #6
 9083 54e0 03FB0853 		mla	r3, r3, r8, r5
 9084 54e4 B9F1000F 		cmp	r9, #0
 9085 54e8 48D1     		bne	.L732
 9086 54ea A3F8C492 		strh	r9, [r3, #708]	@ movhi
 9087 54ee A3F8C292 		strh	r9, [r3, #706]	@ movhi
 9088 54f2 A1E5     		b	.L733
 9089              	.L730:
 9090 54f4 0623     		movs	r3, #6
 9091 54f6 03FB0853 		mla	r3, r3, r8, r5
 9092 54fa B3F8C222 		ldrh	r2, [r3, #706]
 9093 54fe 49EA0209 		orr	r9, r9, r2
 9094 5502 A3F8C292 		strh	r9, [r3, #706]	@ movhi
 9095 5506 97E5     		b	.L733
 9096              	.L729:
 9097 5508 0623     		movs	r3, #6
 9098 550a 03FB0853 		mla	r3, r3, r8, r5
 9099 550e B3F8C422 		ldrh	r2, [r3, #708]
 9100 5512 49EA0209 		orr	r9, r9, r2
 9101 5516 A3F8C492 		strh	r9, [r3, #708]	@ movhi
 9102 551a 8DE5     		b	.L733
 9103              	.L211:
 9104 551c 4046     		mov	r0, r8
 9105 551e D8F80890 		ldr	r9, [r8, #8]
 9106 5522 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 9107 5526 05F58671 		add	r1, r5, #268
 9108 552a 0346     		mov	r3, r0
 9109 552c 3A46     		mov	r2, r7
 9110 552e 4846     		mov	r0, r9
 9111 5530 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhm
 9112 5534 A368     		ldr	r3, [r4, #8]
 9113 5536 5B68     		ldr	r3, [r3, #4]	@ float
 9114 5538 C5F83031 		str	r3, [r5, #304]	@ float
 9115 553c A368     		ldr	r3, [r4, #8]
 9116 553e FBF7D9B9 		b	.L755
 9117              	.L921:
 9118 5542 8246     		mov	r10, r0
 9119 5544 FFF7B9B8 		b	.L273
 9120              	.L1571:
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 161


 9121 5548 6B6C     		ldr	r3, [r5, #68]
 9122 554a 1B68     		ldr	r3, [r3]
 9123 554c A342     		cmp	r3, r4
 9124 554e 04D0     		beq	.L180
 9125 5550 EB6B     		ldr	r3, [r5, #60]
 9126 5552 1B68     		ldr	r3, [r3]
 9127 5554 A342     		cmp	r3, r4
 9128 5556 7DF430AE 		bne	.L179
 9129              	.L180:
 9130 555a 3046     		mov	r0, r6
 9131 555c 2D49     		ldr	r1, .L1654+48
 9132 555e FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 9133 5562 FDF72FBE 		b	.L876
 9134              	.L178:
 9135 5566 3A46     		mov	r2, r7
 9136 5568 3046     		mov	r0, r6
 9137 556a 2B49     		ldr	r1, .L1654+52
 9138 556c 1F46     		mov	r7, r3
 9139 556e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 9140 5572 A368     		ldr	r3, [r4, #8]
 9141 5574 FBF7BEB9 		b	.L755
 9142              	.L986:
 9143 5578 9946     		mov	r9, r3
 9144 557a 47E5     		b	.L721
 9145              	.L732:
 9146 557c B3F8C212 		ldrh	r1, [r3, #706]
 9147 5580 B3F8C402 		ldrh	r0, [r3, #708]
 9148 5584 6FEA0902 		mvn	r2, r9
 9149 5588 92B2     		uxth	r2, r2
 9150 558a 1140     		ands	r1, r1, r2
 9151 558c 0240     		ands	r2, r2, r0
 9152 558e A3F8C212 		strh	r1, [r3, #706]	@ movhi
 9153 5592 A3F8C422 		strh	r2, [r3, #708]	@ movhi
 9154 5596 4FE5     		b	.L733
 9155              	.L181:
 9156 5598 2B6C     		ldr	r3, [r5, #64]
 9157 559a 1868     		ldr	r0, [r3]
 9158 559c FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 9159 55a0 8046     		mov	r8, r0
 9160 55a2 8068     		ldr	r0, [r0, #8]
 9161 55a4 20B1     		cbz	r0, .L182
 9162 55a6 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 9163 55aa 0023     		movs	r3, #0
 9164 55ac C8F80830 		str	r3, [r8, #8]
 9165              	.L182:
 9166 55b0 D5F83832 		ldr	r3, [r5, #568]
 9167 55b4 0027     		movs	r7, #0
 9168 55b6 C8F80830 		str	r3, [r8, #8]
 9169 55ba DAF81C00 		ldr	r0, [r10, #28]
 9170 55be C5F83872 		str	r7, [r5, #568]
 9171 55c2 FFF7FEFF 		bl	_ZN12PrintMonitor12StartedPrintEv
 9172 55c6 A368     		ldr	r3, [r4, #8]
 9173 55c8 FBF794B9 		b	.L755
 9174              	.L1600:
 9175 55cc 1F46     		mov	r7, r3
 9176 55ce A368     		ldr	r3, [r4, #8]
 9177 55d0 FBF790B9 		b	.L755
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 162


 9178              	.L734:
 9179 55d4 3046     		mov	r0, r6
 9180 55d6 1149     		ldr	r1, .L1654+56
 9181 55d8 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 9182 55dc A368     		ldr	r3, [r4, #8]
 9183 55de FBF789B9 		b	.L755
 9184              	.L1655:
 9185 55e2 00BF     		.align	2
 9186              	.L1654:
 9187 55e4 20030000 		.word	.LC43
 9188 55e8 9C0A0000 		.word	.LC100
 9189 55ec E00A0000 		.word	.LC101
 9190 55f0 2C0A0000 		.word	.LC98
 9191 55f4 00150000 		.word	.LC180
 9192 55f8 5C0F0000 		.word	.LC139
 9193 55fc 10020000 		.word	.LC36
 9194 5600 4C010000 		.word	.LC27
 9195 5604 58010000 		.word	.LC28
 9196 5608 6C110000 		.word	.LC149
 9197 560c 6C0E0000 		.word	.LC129
 9198 5610 400C0000 		.word	.LC113
 9199 5614 6C150000 		.word	.LC185
 9200 5618 5C020000 		.word	.LC38
 9201 561c 4C120000 		.word	.LC157
 9202              	.L649:
 9203 5620 2868     		ldr	r0, [r5]
 9204 5622 4146     		mov	r1, r8
 9205 5624 00EB0803 		add	r3, r0, r8
 9206 5628 93F8D670 		ldrb	r7, [r3, #214]	@ zero_extendqisi2
 9207 562c 93F8CDA0 		ldrb	r10, [r3, #205]	@ zero_extendqisi2
 9208 5630 FFF7FEFF 		bl	_ZNK8Platform19GetDriverStepTimingEj
 9209 5634 0097     		str	r7, [sp]
 9210 5636 FFF7FEFF 		bl	__aeabi_f2d
 9211 563a 4346     		mov	r3, r8
 9212 563c CDE90201 		strd	r0, [sp, #8]
 9213 5640 5246     		mov	r2, r10
 9214 5642 3046     		mov	r0, r6
 9215 5644 0649     		ldr	r1, .L1656
 9216 5646 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 9217 564a 4F46     		mov	r7, r9
 9218 564c A368     		ldr	r3, [r4, #8]
 9219 564e FBF751B9 		b	.L755
 9220              	.L684:
 9221 5652 6B6C     		ldr	r3, [r5, #68]
 9222 5654 07F00107 		and	r7, r7, #1
 9223 5658 1B68     		ldr	r3, [r3]
 9224 565a 83F87D70 		strb	r7, [r3, #125]
 9225 565e B7E6     		b	.L683
 9226              	.L1657:
 9227              		.align	2
 9228              	.L1656:
 9229 5660 A00F0000 		.word	.LC140
 9230              		.size	_ZN6GCodes11HandleMcodeER11GCodeBufferR9StringRef, .-_ZN6GCodes11HandleMcodeER11GCodeBufferR
 9231 5664 AFF30080 		.section	.text._ZN6GCodes11HandleTcodeER11GCodeBufferR9StringRef,"ax",%progbits
 9232              		.align	2
 9233              		.global	_ZN6GCodes11HandleTcodeER11GCodeBufferR9StringRef
 9234              		.thumb
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 163


 9235              		.thumb_func
 9236              		.type	_ZN6GCodes11HandleTcodeER11GCodeBufferR9StringRef, %function
 9237              	_ZN6GCodes11HandleTcodeER11GCodeBufferR9StringRef:
 9238              		@ args = 0, pretend = 0, frame = 0
 9239              		@ frame_needed = 0, uses_anonymous_args = 0
 9240 0000 70B5     		push	{r4, r5, r6, lr}
 9241 0002 8B68     		ldr	r3, [r1, #8]
 9242 0004 0D46     		mov	r5, r1
 9243 0006 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 9244 0008 0646     		mov	r6, r0
 9245 000a DB06     		lsls	r3, r3, #27
 9246 000c 02D5     		bpl	.L1673
 9247 000e 0124     		movs	r4, #1
 9248              	.L1667:
 9249 0010 2046     		mov	r0, r4
 9250 0012 70BD     		pop	{r4, r5, r6, pc}
 9251              	.L1673:
 9252 0014 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 9253 0018 0446     		mov	r4, r0
 9254 001a 0028     		cmp	r0, #0
 9255 001c F8D0     		beq	.L1667
 9256 001e 2846     		mov	r0, r5
 9257 0020 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 9258 0024 C6F84802 		str	r0, [r6, #584]
 9259 0028 D5F88820 		ldr	r2, [r5, #136]
 9260 002c 3346     		mov	r3, r6
 9261 002e 1044     		add	r0, r0, r2
 9262 0030 C6F84802 		str	r0, [r6, #584]
 9263 0034 0922     		movs	r2, #9
 9264              	.L1661:
 9265 0036 D3F88810 		ldr	r1, [r3, #136]	@ float
 9266 003a 013A     		subs	r2, r2, #1
 9267 003c C3F85C11 		str	r1, [r3, #348]	@ float
 9268 0040 03F10403 		add	r3, r3, #4
 9269 0044 F7D1     		bne	.L1661
 9270 0046 AA68     		ldr	r2, [r5, #8]
 9271 0048 96F8A832 		ldrb	r3, [r6, #680]	@ zero_extendqisi2
 9272 004c 5268     		ldr	r2, [r2, #4]	@ float
 9273 004e C6F88021 		str	r2, [r6, #384]	@ float
 9274 0052 4BB9     		cbnz	r3, .L1662
 9275 0054 0A4B     		ldr	r3, .L1674
 9276 0056 5B6A     		ldr	r3, [r3, #36]
 9277 0058 13B1     		cbz	r3, .L1663
 9278 005a 5B68     		ldr	r3, [r3, #4]
 9279 005c 9842     		cmp	r0, r3
 9280 005e 03D0     		beq	.L1662
 9281              	.L1663:
 9282 0060 AB68     		ldr	r3, [r5, #8]
 9283 0062 0422     		movs	r2, #4
 9284 0064 1A74     		strb	r2, [r3, #16]
 9285 0066 D3E7     		b	.L1667
 9286              	.L1662:
 9287 0068 3046     		mov	r0, r6
 9288 006a 2946     		mov	r1, r5
 9289 006c FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 9290 0070 3046     		mov	r0, r6
 9291 0072 2946     		mov	r1, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 164


 9292 0074 0022     		movs	r2, #0
 9293 0076 034B     		ldr	r3, .L1674+4
 9294 0078 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 9295 007c 2046     		mov	r0, r4
 9296 007e 70BD     		pop	{r4, r5, r6, pc}
 9297              	.L1675:
 9298              		.align	2
 9299              	.L1674:
 9300 0080 00000000 		.word	reprap
 9301 0084 A4000000 		.word	.LC9
 9302              		.size	_ZN6GCodes11HandleTcodeER11GCodeBufferR9StringRef, .-_ZN6GCodes11HandleTcodeER11GCodeBufferR
 9303              		.section	.text._ZN6GCodes9ActOnCodeER11GCodeBufferR9StringRef,"ax",%progbits
 9304              		.align	2
 9305              		.global	_ZN6GCodes9ActOnCodeER11GCodeBufferR9StringRef
 9306              		.thumb
 9307              		.thumb_func
 9308              		.type	_ZN6GCodes9ActOnCodeER11GCodeBufferR9StringRef, %function
 9309              	_ZN6GCodes9ActOnCodeER11GCodeBufferR9StringRef:
 9310              		@ args = 0, pretend = 0, frame = 0
 9311              		@ frame_needed = 0, uses_anonymous_args = 0
 9312 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 9313 0004 0746     		mov	r7, r0
 9314 0006 0846     		mov	r0, r1
 9315 0008 0C46     		mov	r4, r1
 9316 000a 9046     		mov	r8, r2
 9317 000c FFF7FEFF 		bl	_ZNK11GCodeBuffer7IsEmptyEv
 9318 0010 0646     		mov	r6, r0
 9319 0012 98B9     		cbnz	r0, .L1684
 9320 0014 94F88D30 		ldrb	r3, [r4, #141]	@ zero_extendqisi2
 9321 0018 A3B9     		cbnz	r3, .L1690
 9322              	.L1678:
 9323 001a 2046     		mov	r0, r4
 9324 001c FFF7FEFF 		bl	_ZN11GCodeBuffer16GetCommandLetterEv
 9325 0020 4D28     		cmp	r0, #77
 9326 0022 20D0     		beq	.L1681
 9327 0024 5428     		cmp	r0, #84
 9328 0026 2CD0     		beq	.L1682
 9329 0028 4728     		cmp	r0, #71
 9330 002a 23D0     		beq	.L1691
 9331 002c 3846     		mov	r0, r7
 9332 002e 2146     		mov	r1, r4
 9333 0030 0022     		movs	r2, #0
 9334 0032 174B     		ldr	r3, .L1692
 9335 0034 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 9336 0038 0125     		movs	r5, #1
 9337 003a 00E0     		b	.L1688
 9338              	.L1684:
 9339 003c 0125     		movs	r5, #1
 9340              	.L1688:
 9341 003e 2846     		mov	r0, r5
 9342 0040 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 9343              	.L1690:
 9344 0044 D7F80803 		ldr	r0, [r7, #776]
 9345 0048 2146     		mov	r1, r4
 9346 004a D7F8DC20 		ldr	r2, [r7, #220]
 9347 004e FFF7FEFF 		bl	_ZN10GCodeQueue9QueueCodeER11GCodeBufferm
 9348 0052 0546     		mov	r5, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 165


 9349 0054 0028     		cmp	r0, #0
 9350 0056 E0D0     		beq	.L1678
 9351 0058 3846     		mov	r0, r7
 9352 005a 2146     		mov	r1, r4
 9353 005c 3246     		mov	r2, r6
 9354 005e 0C4B     		ldr	r3, .L1692
 9355 0060 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 9356 0064 EBE7     		b	.L1688
 9357              	.L1681:
 9358 0066 3846     		mov	r0, r7
 9359 0068 2146     		mov	r1, r4
 9360 006a 4246     		mov	r2, r8
 9361 006c BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 9362 0070 FFF7FEBF 		b	_ZN6GCodes11HandleMcodeER11GCodeBufferR9StringRef
 9363              	.L1691:
 9364 0074 3846     		mov	r0, r7
 9365 0076 2146     		mov	r1, r4
 9366 0078 4246     		mov	r2, r8
 9367 007a BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 9368 007e FFF7FEBF 		b	_ZN6GCodes11HandleGcodeER11GCodeBufferR9StringRef
 9369              	.L1682:
 9370 0082 3846     		mov	r0, r7
 9371 0084 2146     		mov	r1, r4
 9372 0086 4246     		mov	r2, r8
 9373 0088 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 9374 008c FFF7FEBF 		b	_ZN6GCodes11HandleTcodeER11GCodeBufferR9StringRef
 9375              	.L1693:
 9376              		.align	2
 9377              	.L1692:
 9378 0090 A4000000 		.word	.LC9
 9379              		.size	_ZN6GCodes9ActOnCodeER11GCodeBufferR9StringRef, .-_ZN6GCodes9ActOnCodeER11GCodeBufferR9Strin
 9380              		.global	RETRACTPROBE_G
 9381              		.global	DEPLOYPROBE_G
 9382              		.global	CONFIG_OVERRIDE_G
 9383              		.global	SLEEP_G
 9384              		.global	STOP_G
 9385              		.global	CANCEL_G
 9386              		.global	RESUME_G
 9387              		.global	BED_EQUATION_G
 9388              		.section	.data.BED_EQUATION_G,"aw",%progbits
 9389              		.align	2
 9390              		.set	.LANCHOR0,. + 0
 9391              		.type	BED_EQUATION_G, %object
 9392              		.size	BED_EQUATION_G, 4
 9393              	BED_EQUATION_G:
 9394 0000 F0150000 		.word	.LC193
 9395              		.section	.data.SLEEP_G,"aw",%progbits
 9396              		.align	2
 9397              		.set	.LANCHOR8,. + 0
 9398              		.type	SLEEP_G, %object
 9399              		.size	SLEEP_G, 4
 9400              	SLEEP_G:
 9401 0000 C8150000 		.word	.LC189
 9402              		.section	.data.STOP_G,"aw",%progbits
 9403              		.align	2
 9404              		.set	.LANCHOR7,. + 0
 9405              		.type	STOP_G, %object
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 166


 9406              		.size	STOP_G, 4
 9407              	STOP_G:
 9408 0000 D0150000 		.word	.LC190
 9409              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 9410              		.align	2
 9411              		.type	_ZL32cpu_irq_critical_section_counter, %object
 9412              		.size	_ZL32cpu_irq_critical_section_counter, 4
 9413              	_ZL32cpu_irq_critical_section_counter:
 9414 0000 00000000 		.space	4
 9415              		.section	.data.CANCEL_G,"aw",%progbits
 9416              		.align	2
 9417              		.set	.LANCHOR1,. + 0
 9418              		.type	CANCEL_G, %object
 9419              		.size	CANCEL_G, 4
 9420              	CANCEL_G:
 9421 0000 D8150000 		.word	.LC191
 9422              		.section	.rodata.str1.4,"aMS",%progbits,1
 9423              		.align	2
 9424              	.LC0:
 9425 0000 496E7661 		.ascii	"Invalid G2 or G3 command\000"
 9425      6C696420 
 9425      4732206F 
 9425      72204733 
 9425      20636F6D 
 9426 0019 000000   		.space	3
 9427              	.LC1:
 9428 001c 696E7661 		.ascii	"invalid G Code: %s\000"
 9428      6C696420 
 9428      4720436F 
 9428      64653A20 
 9428      257300
 9429 002f 00       		.space	1
 9430              	.LC2:
 9431 0030 4D757374 		.ascii	"Must home a delta printer before bed probing\000"
 9431      20686F6D 
 9431      65206120 
 9431      64656C74 
 9431      61207072 
 9432 005d 000000   		.space	3
 9433              	.LC3:
 9434 0060 4D757374 		.ascii	"Must home X and Y before bed probing\000"
 9434      20686F6D 
 9434      65205820 
 9434      616E6420 
 9434      59206265 
 9435 0085 000000   		.space	3
 9436              	.LC4:
 9437 0088 303A2F67 		.ascii	"0:/gcodes/\000"
 9437      636F6465 
 9437      732F00
 9438 0093 00       		.space	1
 9439              	.LC5:
 9440 0094 6F6E00   		.ascii	"on\000"
 9441 0097 00       		.space	1
 9442              	.LC6:
 9443 0098 6F666600 		.ascii	"off\000"
 9444              	.LC7:
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 167


 9445 009c 79657300 		.ascii	"yes\000"
 9446              	.LC8:
 9447 00a0 6E6F00   		.ascii	"no\000"
 9448 00a3 00       		.space	1
 9449              	.LC9:
 9450 00a4 00       		.ascii	"\000"
 9451 00a5 000000   		.space	3
 9452              	.LC10:
 9453 00a8 616C6C6F 		.ascii	"allowed\000"
 9453      77656400 
 9454              	.LC11:
 9455 00b0 64656E69 		.ascii	"denied\000"
 9455      656400
 9456 00b7 00       		.space	1
 9457              	.LC12:
 9458 00b8 50494400 		.ascii	"PID\000"
 9459              	.LC13:
 9460 00bc 62616E67 		.ascii	"bang-bang\000"
 9460      2D62616E 
 9460      6700
 9461 00c6 0000     		.space	2
 9462              	.LC14:
 9463 00c8 63757374 		.ascii	"custom PID\000"
 9463      6F6D2050 
 9463      494400
 9464 00d3 00       		.space	1
 9465              	.LC15:
 9466 00d4 20776974 		.ascii	" with interpolation\000"
 9466      6820696E 
 9466      74657270 
 9466      6F6C6174 
 9466      696F6E00 
 9467              	.LC16:
 9468 00e8 286F6E29 		.ascii	"(on)\000"
 9468      00
 9469 00ed 000000   		.space	3
 9470              	.LC17:
 9471 00f0 656E6162 		.ascii	"enabled\000"
 9471      6C656400 
 9472              	.LC18:
 9473 00f8 64697361 		.ascii	"disabled\000"
 9473      626C6564 
 9473      00
 9474 0101 000000   		.space	3
 9475              	.LC19:
 9476 0104 636F6E66 		.ascii	"config.g\000"
 9476      69672E67 
 9476      00
 9477 010d 000000   		.space	3
 9478              	.LC20:
 9479 0110 72657072 		.ascii	"reprap.htm\000"
 9479      61702E68 
 9479      746D00
 9480 011b 00       		.space	1
 9481              	.LC21:
 9482 011c 6E6F7420 		.ascii	"not \000"
 9482      00
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 168


 9483 0121 000000   		.space	3
 9484              	.LC22:
 9485 0124 6E6F6E65 		.ascii	"none\000"
 9485      00
 9486 0129 000000   		.space	3
 9487              	.LC23:
 9488 012c 68696768 		.ascii	"high end\000"
 9488      20656E64 
 9488      00
 9489 0135 000000   		.space	3
 9490              	.LC24:
 9491 0138 6C6F7720 		.ascii	"low end\000"
 9491      656E6400 
 9492              	.LC25:
 9493 0140 6C6F7700 		.ascii	"low\000"
 9494              	.LC26:
 9495 0144 68696768 		.ascii	"high\000"
 9495      00
 9496 0149 000000   		.space	3
 9497              	.LC27:
 9498 014c 72657175 		.ascii	"requires\000"
 9498      69726573 
 9498      00
 9499 0155 000000   		.space	3
 9500              	.LC28:
 9501 0158 646F6573 		.ascii	"does not require\000"
 9501      206E6F74 
 9501      20726571 
 9501      75697265 
 9501      00
 9502 0169 000000   		.space	3
 9503              	.LC29:
 9504 016c 4D6F746F 		.ascii	"Motor current % of normal - \000"
 9504      72206375 
 9504      7272656E 
 9504      74202520 
 9504      6F66206E 
 9505 0189 000000   		.space	3
 9506              	.LC30:
 9507 018c 4D6F746F 		.ascii	"Motor current (mA) - \000"
 9507      72206375 
 9507      7272656E 
 9507      7420286D 
 9507      4129202D 
 9508 01a2 0000     		.space	2
 9509              	.LC31:
 9510 01a4 5072696E 		.ascii	"Print cancelled\000"
 9510      74206361 
 9510      6E63656C 
 9510      6C656400 
 9511              	.LC32:
 9512 01b4 496E7661 		.ascii	"Invalid extruder number specified: %ld\000"
 9512      6C696420 
 9512      65787472 
 9512      75646572 
 9512      206E756D 
 9513 01db 00       		.space	1
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 169


 9514              	.LC33:
 9515 01dc 49646C65 		.ascii	"Idle timeouts cannot be negative!\000"
 9515      2074696D 
 9515      656F7574 
 9515      73206361 
 9515      6E6E6F74 
 9516 01fe 0000     		.space	2
 9517              	.LC34:
 9518 0200 25632573 		.ascii	"%c%s%c%c\000"
 9518      25632563 
 9518      00
 9519 0209 000000   		.space	3
 9520              	.LC35:
 9521 020c 25730A00 		.ascii	"%s\012\000"
 9522              	.LC36:
 9523 0210 4E4F4E45 		.ascii	"NONE\012\000"
 9523      0A00
 9524 0216 0000     		.space	2
 9525              	.LC37:
 9526 0218 43616E6E 		.ascii	"Cannot set file to print, because a file is already"
 9526      6F742073 
 9526      65742066 
 9526      696C6520 
 9526      746F2070 
 9527 024b 20626569 		.ascii	" being printed\000"
 9527      6E672070 
 9527      72696E74 
 9527      656400
 9528 025a 0000     		.space	2
 9529              	.LC38:
 9530 025c 4661696C 		.ascii	"Failed to open file %s\000"
 9530      65642074 
 9530      6F206F70 
 9530      656E2066 
 9530      696C6520 
 9531 0273 00       		.space	1
 9532              	.LC39:
 9533 0274 43616E6E 		.ascii	"Cannot print, because no file is selected!\000"
 9533      6F742070 
 9533      72696E74 
 9533      2C206265 
 9533      63617573 
 9534 029f 00       		.space	1
 9535              	.LC40:
 9536 02a0 5072696E 		.ascii	"Printing is already paused!!\000"
 9536      74696E67 
 9536      20697320 
 9536      616C7265 
 9536      61647920 
 9537 02bd 000000   		.space	3
 9538              	.LC41:
 9539 02c0 43616E6E 		.ascii	"Cannot pause print, because no file is being printe"
 9539      6F742070 
 9539      61757365 
 9539      20707269 
 9539      6E742C20 
 9540 02f3 642100   		.ascii	"d!\000"
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 170


 9541 02f6 0000     		.space	2
 9542              	.LC42:
 9543 02f8 54686520 		.ascii	"The specified SD position is invalid!\000"
 9543      73706563 
 9543      69666965 
 9543      64205344 
 9543      20706F73 
 9544 031e 0000     		.space	2
 9545              	.LC43:
 9546 0320 43616E6E 		.ascii	"Cannot set SD file position, because no print is in"
 9546      6F742073 
 9546      65742053 
 9546      44206669 
 9546      6C652070 
 9547 0353 2070726F 		.ascii	" progress!\000"
 9547      67726573 
 9547      732100
 9548 035e 0000     		.space	2
 9549              	.LC44:
 9550 0360 596F7520 		.ascii	"You must specify the SD position in bytes using the"
 9550      6D757374 
 9550      20737065 
 9550      63696679 
 9550      20746865 
 9551 0393 20532070 		.ascii	" S parameter.\000"
 9551      6172616D 
 9551      65746572 
 9551      2E00
 9552 03a1 000000   		.space	3
 9553              	.LC45:
 9554 03a4 53442070 		.ascii	"SD printing byte %lu/%lu\000"
 9554      72696E74 
 9554      696E6720 
 9554      62797465 
 9554      20256C75 
 9555 03bd 000000   		.space	3
 9556              	.LC46:
 9557 03c0 4E6F7420 		.ascii	"Not SD printing.\000"
 9557      53442070 
 9557      72696E74 
 9557      696E672E 
 9557      00
 9558 03d1 000000   		.space	3
 9559              	.LC47:
 9560 03d4 57726974 		.ascii	"Writing to file: %s\000"
 9560      696E6720 
 9560      746F2066 
 9560      696C653A 
 9560      20257300 
 9561              	.LC48:
 9562 03e8 43616E27 		.ascii	"Can't open file %s for writing.\000"
 9562      74206F70 
 9562      656E2066 
 9562      696C6520 
 9562      25732066 
 9563              	.LC49:
 9564 0408 47436F64 		.ascii	"GCode end-of-file being interpreted.\000"
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 171


 9564      6520656E 
 9564      642D6F66 
 9564      2D66696C 
 9564      65206265 
 9565 042d 000000   		.space	3
 9566              	.LC50:
 9567 0430 53696D75 		.ascii	"Simulation mode: %s, move time: %.1f sec, other tim"
 9567      6C617469 
 9567      6F6E206D 
 9567      6F64653A 
 9567      2025732C 
 9568 0463 653A2025 		.ascii	"e: %.1f sec\000"
 9568      2E316620 
 9568      73656300 
 9569 046f 00       		.space	1
 9570              	.LC51:
 9571 0470 43616E6E 		.ascii	"Cannot open file: %s\000"
 9571      6F74206F 
 9571      70656E20 
 9571      66696C65 
 9571      3A202573 
 9572 0485 000000   		.space	3
 9573              	.LC52:
 9574 0488 4C6F6769 		.ascii	"Logical pin %d is not available for writing\000"
 9574      63616C20 
 9574      70696E20 
 9574      25642069 
 9574      73206E6F 
 9575              	.LC53:
 9576 04b4 53746570 		.ascii	"Steps/mm: \000"
 9576      732F6D6D 
 9576      3A2000
 9577 04bf 00       		.space	1
 9578              	.LC54:
 9579 04c0 453A00   		.ascii	"E:\000"
 9580 04c3 00       		.space	1
 9581              	.LC55:
 9582 04c4 25633A20 		.ascii	"%c: %.3f, \000"
 9582      252E3366 
 9582      2C2000
 9583 04cf 00       		.space	1
 9584              	.LC56:
 9585 04d0 2563252E 		.ascii	"%c%.3f\000"
 9585      336600
 9586 04d7 00       		.space	1
 9587              	.LC57:
 9588 04d8 46616E20 		.ascii	"Fan number %d is invalid, must be between 0 and %u\000"
 9588      6E756D62 
 9588      65722025 
 9588      64206973 
 9588      20696E76 
 9589 050b 00       		.space	1
 9590              	.LC58:
 9591 050c 46616E20 		.ascii	"Fan number %d is disabled\000"
 9591      6E756D62 
 9591      65722025 
 9591      64206973 
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 172


 9591      20646973 
 9592 0526 0000     		.space	2
 9593              	.LC59:
 9594 0528 46616E25 		.ascii	"Fan%i frequency: %dHz, speed: %d%%, min: %d%%, blip"
 9594      69206672 
 9594      65717565 
 9594      6E63793A 
 9594      20256448 
 9595 055b 3A20252E 		.ascii	": %.2f, inverted: %s\000"
 9595      32662C20 
 9595      696E7665 
 9595      72746564 
 9595      3A202573 
 9596              	.LC60:
 9597 0570 2C207472 		.ascii	", trigger: %dC, heaters:\000"
 9597      69676765 
 9597      723A2025 
 9597      64432C20 
 9597      68656174 
 9598 0589 000000   		.space	3
 9599              	.LC61:
 9600 058c 20257500 		.ascii	" %u\000"
 9601              	.LC62:
 9602 0590 4649524D 		.ascii	"FIRMWARE_NAME: %s FIRMWARE_VERSION: %s ELECTRONICS:"
 9602      57415245 
 9602      5F4E414D 
 9602      453A2025 
 9602      73204649 
 9603 05c3 20257300 		.ascii	" %s\000"
 9604 05c7 00       		.space	1
 9605              	.LC63:
 9606 05c8 52657052 		.ascii	"RepRapFirmware for Duet\000"
 9606      61704669 
 9606      726D7761 
 9606      72652066 
 9606      6F722044 
 9607              	.LC64:
 9608 05e0 46757369 		.ascii	"Fusionware 1.18.1 RC1\000"
 9608      6F6E7761 
 9608      72652031 
 9608      2E31382E 
 9608      31205243 
 9609 05f6 0000     		.space	2
 9610              	.LC65:
 9611 05f8 20464952 		.ascii	" FIRMWARE_DATE: %s\000"
 9611      4D574152 
 9611      455F4441 
 9611      54453A20 
 9611      257300
 9612 060b 00       		.space	1
 9613              	.LC66:
 9614 060c 32303137 		.ascii	"2017-05-15\000"
 9614      2D30352D 
 9614      313500
 9615 0617 00       		.space	1
 9616              	.LC67:
 9617 0618 456E6473 		.ascii	"Endstops - \000"
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 173


 9617      746F7073 
 9617      202D2000 
 9618              	.LC68:
 9619 0624 5A207072 		.ascii	"Z probe: %s\000"
 9619      6F62653A 
 9619      20257300 
 9620              	.LC69:
 9621 0630 25633A20 		.ascii	"%c: %s, \000"
 9621      25732C20 
 9621      00
 9622 0639 000000   		.space	3
 9623              	.LC70:
 9624 063c 48656174 		.ascii	"Heat sample time is %.3f seconds\000"
 9624      2073616D 
 9624      706C6520 
 9624      74696D65 
 9624      20697320 
 9625 065d 000000   		.space	3
 9626              	.LC71:
 9627 0660 496E7661 		.ascii	"Invalid heater number!\000"
 9627      6C696420 
 9627      68656174 
 9627      6572206E 
 9627      756D6265 
 9628 0677 00       		.space	1
 9629              	.LC72:
 9630 0678 486F7420 		.ascii	"Hot bed is not present!\000"
 9630      62656420 
 9630      6973206E 
 9630      6F742070 
 9630      72657365 
 9631              	.LC73:
 9632 0690 42616420 		.ascii	"Bad heater number specified!\000"
 9632      68656174 
 9632      6572206E 
 9632      756D6265 
 9632      72207370 
 9633 06ad 000000   		.space	3
 9634              	.LC74:
 9635 06b0 4E6F2063 		.ascii	"No chamber heater has been set up yet!\000"
 9635      68616D62 
 9635      65722068 
 9635      65617465 
 9635      72206861 
 9636 06d7 00       		.space	1
 9637              	.LC75:
 9638 06d8 4368616D 		.ascii	"Chamber heater %d is currently at %.1fC\000"
 9638      62657220 
 9638      68656174 
 9638      65722025 
 9638      64206973 
 9639              	.LC76:
 9640 0700 4E6F2063 		.ascii	"No chamber heater has been configured yet.\000"
 9640      68616D62 
 9640      65722068 
 9640      65617465 
 9640      72206861 
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 174


 9641 072b 00       		.space	1
 9642              	.LC77:
 9643 072c 496E7661 		.ascii	"Invalid heater number\000"
 9643      6C696420 
 9643      68656174 
 9643      6572206E 
 9643      756D6265 
 9644 0742 0000     		.space	2
 9645              	.LC78:
 9646 0744 496E7661 		.ascii	"Invalid temperature limit\000"
 9646      6C696420 
 9646      74656D70 
 9646      65726174 
 9646      75726520 
 9647 075e 0000     		.space	2
 9648              	.LC79:
 9649 0760 54656D70 		.ascii	"Temperature limit for heater %d is %.1fC\000"
 9649      65726174 
 9649      75726520 
 9649      6C696D69 
 9649      7420666F 
 9650 0789 000000   		.space	3
 9651              	.LC80:
 9652 078c 41636365 		.ascii	"Accelerations: \000"
 9652      6C657261 
 9652      74696F6E 
 9652      733A2000 
 9653              	.LC81:
 9654 079c 25633A20 		.ascii	"%c: %.1f, \000"
 9654      252E3166 
 9654      2C2000
 9655 07a7 00       		.space	1
 9656              	.LC82:
 9657 07a8 2563252E 		.ascii	"%c%.1f\000"
 9657      316600
 9658 07af 00       		.space	1
 9659              	.LC83:
 9660 07b0 4D617869 		.ascii	"Maximum feedrates: \000"
 9660      6D756D20 
 9660      66656564 
 9660      72617465 
 9660      733A2000 
 9661              	.LC84:
 9662 07c4 4D617869 		.ascii	"Maximum printing acceleration %.1f, maximum travel "
 9662      6D756D20 
 9662      7072696E 
 9662      74696E67 
 9662      20616363 
 9663 07f7 61636365 		.ascii	"acceleration %.1f\000"
 9663      6C657261 
 9663      74696F6E 
 9663      20252E31 
 9663      6600
 9664 0809 000000   		.space	3
 9665              	.LC85:
 9666 080c 52657472 		.ascii	"Retraction/un-retraction settings: length %.2f/%.2f"
 9666      61637469 
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 175


 9666      6F6E2F75 
 9666      6E2D7265 
 9666      74726163 
 9667 083f 6D6D2C20 		.ascii	"mm, speed %d/%dmm/min, Z hop %.2fmm\000"
 9667      73706565 
 9667      64202564 
 9667      2F25646D 
 9667      6D2F6D69 
 9668 0863 00       		.space	1
 9669              	.LC86:
 9670 0864 41786973 		.ascii	"Axis limits \000"
 9670      206C696D 
 9670      69747320 
 9670      00
 9671 0871 000000   		.space	3
 9672              	.LC87:
 9673 0874 25632025 		.ascii	"%c %c: %.1f min, %.1f max\000"
 9673      633A2025 
 9673      2E316620 
 9673      6D696E2C 
 9673      20252E31 
 9674 088e 0000     		.space	2
 9675              	.LC88:
 9676 0890 496E7661 		.ascii	"Invalid speed factor specified.\000"
 9676      6C696420 
 9676      73706565 
 9676      64206661 
 9676      63746F72 
 9677              	.LC89:
 9678 08b0 53706565 		.ascii	"Speed factor override: %.1f%%\000"
 9678      64206661 
 9678      63746F72 
 9678      206F7665 
 9678      72726964 
 9679 08ce 0000     		.space	2
 9680              	.LC90:
 9681 08d0 45787472 		.ascii	"Extrusion factor override for extruder %d: %.1f%%\000"
 9681      7573696F 
 9681      6E206661 
 9681      63746F72 
 9681      206F7665 
 9682 0902 0000     		.space	2
 9683              	.LC91:
 9684 0904 4572726F 		.ascii	"Error: Invalid servo index %d in M280 command\012\000"
 9684      723A2049 
 9684      6E76616C 
 9684      69642073 
 9684      6572766F 
 9685 0933 00       		.space	1
 9686              	.LC92:
 9687 0934 42616279 		.ascii	"Baby stepping offset is %.3fmm\000"
 9687      20737465 
 9687      7070696E 
 9687      67206F66 
 9687      66736574 
 9688 0953 00       		.space	1
 9689              	.LC93:
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 176


 9690 0954 436F6C64 		.ascii	"Cold extrusion is %s, use M302 P[1/0] to allow/deny"
 9690      20657874 
 9690      72757369 
 9690      6F6E2069 
 9690      73202573 
 9691 0987 20697400 		.ascii	" it\000"
 9692 098b 00       		.space	1
 9693              	.LC94:
 9694 098c 42616420 		.ascii	"Bad heater number in M303 command\000"
 9694      68656174 
 9694      6572206E 
 9694      756D6265 
 9694      7220696E 
 9695 09ae 0000     		.space	2
 9696              	.LC95:
 9697 09b0 54617267 		.ascii	"Target temperature must be below temperature limit "
 9697      65742074 
 9697      656D7065 
 9697      72617475 
 9697      7265206D 
 9698 09e3 666F7220 		.ascii	"for this heater\000"
 9698      74686973 
 9698      20686561 
 9698      74657200 
 9699 09f3 00       		.space	1
 9700              	.LC96:
 9701 09f4 496E7661 		.ascii	"Invalid PWM in M303 command\000"
 9701      6C696420 
 9701      50574D20 
 9701      696E204D 
 9701      33303320 
 9702              	.LC97:
 9703 0a10 4572726F 		.ascii	"Error: bad model parameters\000"
 9703      723A2062 
 9703      6164206D 
 9703      6F64656C 
 9703      20706172 
 9704              	.LC98:
 9705 0a2c 48656174 		.ascii	"Heater %u is disabled\000"
 9705      65722025 
 9705      75206973 
 9705      20646973 
 9705      61626C65 
 9706 0a42 0000     		.space	2
 9707              	.LC99:
 9708 0a44 48656174 		.ascii	"Heater %u model: gain %.1f, time constant %.1f, dea"
 9708      65722025 
 9708      75206D6F 
 9708      64656C3A 
 9708      20676169 
 9709 0a77 64207469 		.ascii	"d time %.1f, max PWM %.2f, mode: %s\000"
 9709      6D652025 
 9709      2E31662C 
 9709      206D6178 
 9709      2050574D 
 9710 0a9b 00       		.space	1
 9711              	.LC100:
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 177


 9712 0a9c 0A436F6D 		.ascii	"\012Computed PID parameters for setpoint change: P%"
 9712      70757465 
 9712      64205049 
 9712      44207061 
 9712      72616D65 
 9713 0acc 2E31662C 		.ascii	".1f, I%.3f, D%.1f\000"
 9713      2049252E 
 9713      33662C20 
 9713      44252E31 
 9713      6600
 9714 0ade 0000     		.space	2
 9715              	.LC101:
 9716 0ae0 0A436F6D 		.ascii	"\012Computed PID parameters for load change: P%.1f,"
 9716      70757465 
 9716      64205049 
 9716      44207061 
 9716      72616D65 
 9717 0b10 2049252E 		.ascii	" I%.3f, D%.1f\000"
 9717      33662C20 
 9717      44252E31 
 9717      6600
 9718 0b1e 0000     		.space	2
 9719              	.LC102:
 9720 0b20 44726976 		.ascii	"Drive %c does not support %dx microstepping%s\012\000"
 9720      65202563 
 9720      20646F65 
 9720      73206E6F 
 9720      74207375 
 9721 0b4f 00       		.space	1
 9722              	.LC103:
 9723 0b50 44726976 		.ascii	"Drive E%u does not support %dx microstepping%s\012\000"
 9723      65204525 
 9723      7520646F 
 9723      6573206E 
 9723      6F742073 
 9724              	.LC104:
 9725 0b80 4D696372 		.ascii	"Microstepping - \000"
 9725      6F737465 
 9725      7070696E 
 9725      67202D20 
 9725      00
 9726 0b91 000000   		.space	3
 9727              	.LC105:
 9728 0b94 4500     		.ascii	"E\000"
 9729 0b96 0000     		.space	2
 9730              	.LC106:
 9731 0b98 25633A25 		.ascii	"%c:%d%s, \000"
 9731      6425732C 
 9731      2000
 9732 0ba2 0000     		.space	2
 9733              	.LC107:
 9734 0ba4 3A256425 		.ascii	":%d%s\000"
 9734      7300
 9735 0baa 0000     		.space	2
 9736              	.LC108:
 9737 0bac 42656420 		.ascii	"Bed compensation taper height is %.1fmm\000"
 9737      636F6D70 
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 178


 9737      656E7361 
 9737      74696F6E 
 9737      20746170 
 9738              	.LC109:
 9739 0bd4 42656420 		.ascii	"Bed compensation is not tapered\000"
 9739      636F6D70 
 9739      656E7361 
 9739      74696F6E 
 9739      20697320 
 9740              	.LC110:
 9741 0bf4 46696C61 		.ascii	"Filament width: %.2fmm, nozzle diameter: %.2fmm\000"
 9741      6D656E74 
 9741      20776964 
 9741      74683A20 
 9741      252E3266 
 9742              	.LC111:
 9743 0c24 636F6E66 		.ascii	"config-override.g\000"
 9743      69672D6F 
 9743      76657272 
 9743      6964652E 
 9743      6700
 9744 0c36 0000     		.space	2
 9745              	.LC112:
 9746 0c38 303A2F73 		.ascii	"0:/sys/\000"
 9746      79732F00 
 9747              	.LC113:
 9748 0c40 436F6E66 		.ascii	"Configuration file not found!\000"
 9748      69677572 
 9748      6174696F 
 9748      6E206669 
 9748      6C65206E 
 9749 0c5e 0000     		.space	2
 9750              	.LC114:
 9751 0c60 4D41433A 		.ascii	"MAC: %x:%x:%x:%x:%x:%x\000"
 9751      2025783A 
 9751      25783A25 
 9751      783A2578 
 9751      3A25783A 
 9752 0c77 00       		.space	1
 9753              	.LC115:
 9754 0c78 52657052 		.ascii	"RepRap name: %s\000"
 9754      6170206E 
 9754      616D653A 
 9754      20257300 
 9755              	.LC116:
 9756 0c88 4E657477 		.ascii	"Network is %s, configured IP address: %d.%d.%d.%d, "
 9756      6F726B20 
 9756      69732025 
 9756      732C2063 
 9756      6F6E6669 
 9757 0cbb 61637475 		.ascii	"actual IP address: %d.%d.%d.%d\000"
 9757      616C2049 
 9757      50206164 
 9757      64726573 
 9757      733A2025 
 9758 0cda 0000     		.space	2
 9759              	.LC117:
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 179


 9760 0cdc 4E657420 		.ascii	"Net mask: %d.%d.%d.%d \000"
 9760      6D61736B 
 9760      3A202564 
 9760      2E25642E 
 9760      25642E25 
 9761 0cf3 00       		.space	1
 9762              	.LC118:
 9763 0cf4 47617465 		.ascii	"Gateway: %d.%d.%d.%d \000"
 9763      7761793A 
 9763      2025642E 
 9763      25642E25 
 9763      642E2564 
 9764 0d0a 0000     		.space	2
 9765              	.LC119:
 9766 0d0c 456D756C 		.ascii	"Emulating \000"
 9766      6174696E 
 9766      672000
 9767 0d17 00       		.space	1
 9768              	.LC120:
 9769 0d18 52657052 		.ascii	"RepRap Firmware (i.e. in native mode)\000"
 9769      61702046 
 9769      69726D77 
 9769      61726520 
 9769      28692E65 
 9770 0d3e 0000     		.space	2
 9771              	.LC121:
 9772 0d40 4D61726C 		.ascii	"Marlin\000"
 9772      696E00
 9773 0d47 00       		.space	1
 9774              	.LC122:
 9775 0d48 54656163 		.ascii	"Teacup\000"
 9775      757000
 9776 0d4f 00       		.space	1
 9777              	.LC123:
 9778 0d50 53707269 		.ascii	"Sprinter\000"
 9778      6E746572 
 9778      00
 9779 0d59 000000   		.space	3
 9780              	.LC124:
 9781 0d5c 52657065 		.ascii	"Repetier\000"
 9781      74696572 
 9781      00
 9782 0d65 000000   		.space	3
 9783              	.LC125:
 9784 0d68 556E6B6E 		.ascii	"Unknown: (%d)\000"
 9784      6F776E3A 
 9784      20282564 
 9784      2900
 9785 0d76 0000     		.space	2
 9786              	.LC126:
 9787 0d78 41786973 		.ascii	"Axis compensations - XY: %.5f, YZ: %.5f, ZX: %.5f\000"
 9787      20636F6D 
 9787      70656E73 
 9787      6174696F 
 9787      6E73202D 
 9788 0daa 0000     		.space	2
 9789              	.LC127:
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 180


 9790 0dac 4572726F 		.ascii	"Error: M557 P parameter is no longer supported. use"
 9790      723A204D 
 9790      35353720 
 9790      50207061 
 9790      72616D65 
 9791 0ddf 20612062 		.ascii	" a bed.g file instead.\012\000"
 9791      65642E67 
 9791      2066696C 
 9791      6520696E 
 9791      73746561 
 9792 0df7 00       		.space	1
 9793              	.LC128:
 9794 0df8 5A205072 		.ascii	"Z Probe type %d, invert %s, dive height %.1fmm, pro"
 9794      6F626520 
 9794      74797065 
 9794      2025642C 
 9794      20696E76 
 9795 0e2b 62652073 		.ascii	"be speed %dmm/min, travel speed %dmm/min, recovery "
 9795      70656564 
 9795      2025646D 
 9795      6D2F6D69 
 9795      6E2C2074 
 9796 0e5e 74696D65 		.ascii	"time %.2f sec\000"
 9796      20252E32 
 9796      66207365 
 9796      6300
 9797              	.LC129:
 9798 0e6c 2C206578 		.ascii	", extra parameter %.2f\000"
 9798      74726120 
 9798      70617261 
 9798      6D657465 
 9798      7220252E 
 9799 0e83 00       		.space	1
 9800              	.LC130:
 9801 0e84 2C207573 		.ascii	", used for axes:\000"
 9801      65642066 
 9801      6F722061 
 9801      7865733A 
 9801      00
 9802 0e95 000000   		.space	3
 9803              	.LC131:
 9804 0e98 20256300 		.ascii	" %c\000"
 9805              	.LC132:
 9806 0e9c 303A2F77 		.ascii	"0:/www/\000"
 9806      77772F00 
 9807              	.LC133:
 9808 0ea4 496E7661 		.ascii	"Invalid heater number.\012\000"
 9808      6C696420 
 9808      68656174 
 9808      6572206E 
 9808      756D6265 
 9809              	.LC134:
 9810 0ebc 4D6F7665 		.ascii	"Movement outside the bed is %spermitted\000"
 9810      6D656E74 
 9810      206F7574 
 9810      73696465 
 9810      20746865 
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 181


 9811              	.LC135:
 9812 0ee4 4D617869 		.ascii	"Maximum jerk rates: \000"
 9812      6D756D20 
 9812      6A65726B 
 9812      20726174 
 9812      65733A20 
 9813 0ef9 000000   		.space	3
 9814              	.LC136:
 9815 0efc 53657474 		.ascii	"Setting mix ratios - wrong number of E drives: %s\000"
 9815      696E6720 
 9815      6D697820 
 9815      72617469 
 9815      6F73202D 
 9816 0f2e 0000     		.space	2
 9817              	.LC137:
 9818 0f30 546F6F6C 		.ascii	"Tool %d mix ratios:\000"
 9818      20256420 
 9818      6D697820 
 9818      72617469 
 9818      6F733A00 
 9819              	.LC138:
 9820 0f44 546F6F6C 		.ascii	"Tool %d mixing is %s\000"
 9820      20256420 
 9820      6D697869 
 9820      6E672069 
 9820      73202573 
 9821 0f59 000000   		.space	3
 9822              	.LC139:
 9823 0f5c 4572726F 		.ascii	"Error: M569 no longer accepts XYZE parameters; use "
 9823      723A204D 
 9823      35363920 
 9823      6E6F206C 
 9823      6F6E6765 
 9824 0f8f 4D353834 		.ascii	"M584 instead\012\000"
 9824      20696E73 
 9824      74656164 
 9824      0A00
 9825 0f9d 000000   		.space	3
 9826              	.LC140:
 9827 0fa0 41202564 		.ascii	"A %d sends drive %u forwards, a %d enables it, and "
 9827      2073656E 
 9827      64732064 
 9827      72697665 
 9827      20257520 
 9828 0fd3 74686520 		.ascii	"the minimum pulse width is %.1f microseconds\000"
 9828      6D696E69 
 9828      6D756D20 
 9828      70756C73 
 9828      65207769 
 9829              	.LC141:
 9830 1000 48656174 		.ascii	"Heater %u allowed excursion %.1fC, fault trigger ti"
 9830      65722025 
 9830      7520616C 
 9830      6C6F7765 
 9830      64206578 
 9831 1033 6D652025 		.ascii	"me %.1f seconds\000"
 9831      2E316620 
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 182


 9831      7365636F 
 9831      6E647300 
 9832 1043 00       		.space	1
 9833              	.LC142:
 9834 1044 4D353730 		.ascii	"M570 S parameter is no longer required or supported"
 9834      20532070 
 9834      6172616D 
 9834      65746572 
 9834      20697320 
 9835 1077 00       		.ascii	"\000"
 9836              	.LC143:
 9837 1078 4C6F6769 		.ascii	"Logical pin %d is already in use or not available f"
 9837      63616C20 
 9837      70696E20 
 9837      25642069 
 9837      7320616C 
 9838 10ab 6F722075 		.ascii	"or use by M571\000"
 9838      73652062 
 9838      79204D35 
 9838      373100
 9839 10ba 0000     		.space	2
 9840              	.LC144:
 9841 10bc 45787472 		.ascii	"Extrusion ancillary PWM %.3f at %.1fHz on pin %u\000"
 9841      7573696F 
 9841      6E20616E 
 9841      63696C6C 
 9841      61727920 
 9842 10ed 000000   		.space	3
 9843              	.LC145:
 9844 10f0 50726573 		.ascii	"Pressure advance for extruder %u is %.3f seconds\000"
 9844      73757265 
 9844      20616476 
 9844      616E6365 
 9844      20666F72 
 9845 1121 000000   		.space	3
 9846              	.LC146:
 9847 1124 41766572 		.ascii	"Average heater %d PWM: %.3f\000"
 9847      61676520 
 9847      68656174 
 9847      65722025 
 9847      64205057 
 9848              	.LC147:
 9849 1140 456E6473 		.ascii	"Endstop configuration:\000"
 9849      746F7020 
 9849      636F6E66 
 9849      69677572 
 9849      6174696F 
 9850 1157 00       		.space	1
 9851              	.LC148:
 9852 1158 20256320 		.ascii	" %c %s (active %s),\000"
 9852      25732028 
 9852      61637469 
 9852      76652025 
 9852      73292C00 
 9853              	.LC149:
 9854 116c 4368616E 		.ascii	"Channel %d: baud rate %d, %s checksum\000"
 9854      6E656C20 
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 183


 9854      25643A20 
 9854      62617564 
 9854      20726174 
 9855 1192 0000     		.space	2
 9856              	.LC150:
 9857 1194 496E7661 		.ascii	"Invalid extruder drive specified!\000"
 9857      6C696420 
 9857      65787472 
 9857      75646572 
 9857      20647269 
 9858 11b6 0000     		.space	2
 9859              	.LC151:
 9860 11b8 41786973 		.ascii	"Axis scale factors\000"
 9860      20736361 
 9860      6C652066 
 9860      6163746F 
 9860      727300
 9861 11cb 00       		.space	1
 9862              	.LC152:
 9863 11cc 25632025 		.ascii	"%c %c: %.3f\000"
 9863      633A2025 
 9863      2E336600 
 9864              	.LC153:
 9865 11d8 42616420 		.ascii	"Bad S parameter in M581 command\012\000"
 9865      53207061 
 9865      72616D65 
 9865      74657220 
 9865      696E204D 
 9866 11f9 000000   		.space	3
 9867              	.LC154:
 9868 11fc 54726967 		.ascii	"Trigger %u fires on a rising edge on \000"
 9868      67657220 
 9868      25752066 
 9868      69726573 
 9868      206F6E20 
 9869 1222 0000     		.space	2
 9870              	.LC155:
 9871 1224 206F7220 		.ascii	" or a falling edge on \000"
 9871      61206661 
 9871      6C6C696E 
 9871      67206564 
 9871      6765206F 
 9872 123b 00       		.space	1
 9873              	.LC156:
 9874 123c 20656E64 		.ascii	" endstop inputs\000"
 9874      73746F70 
 9874      20696E70 
 9874      75747300 
 9875              	.LC157:
 9876 124c 20776865 		.ascii	" when printing from SD card\000"
 9876      6E207072 
 9876      696E7469 
 9876      6E672066 
 9876      726F6D20 
 9877              	.LC158:
 9878 1268 54726967 		.ascii	"Trigger number out of range\012\000"
 9878      67657220 
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 184


 9878      6E756D62 
 9878      6572206F 
 9878      7574206F 
 9879 1285 000000   		.space	3
 9880              	.LC159:
 9881 1288 4572726F 		.ascii	"Error: invalid drive number in M584 command\012\000"
 9881      723A2069 
 9881      6E76616C 
 9881      69642064 
 9881      72697665 
 9882 12b5 000000   		.space	3
 9883              	.LC160:
 9884 12b8 44726976 		.ascii	"Driver assignments:\000"
 9884      65722061 
 9884      73736967 
 9884      6E6D656E 
 9884      74733A00 
 9885              	.LC161:
 9886 12cc 25632575 		.ascii	"%c%u\000"
 9886      00
 9887 12d1 000000   		.space	3
 9888              	.LC162:
 9889 12d4 44696167 		.ascii	"Diagonal %.3f, delta radius %.3f, homed height %.3f"
 9889      6F6E616C 
 9889      20252E33 
 9889      662C2064 
 9889      656C7461 
 9890 1307 2C206265 		.ascii	", bed radius %.1f, X %.3f\302\260, Y %.3f\302\260, "
 9890      64207261 
 9890      64697573 
 9890      20252E31 
 9890      662C2058 
 9891 132e 5A20252E 		.ascii	"Z %.3f\302\260\000"
 9891      3366C2B0 
 9891      00
 9892 1337 00       		.space	1
 9893              	.LC163:
 9894 1338 5072696E 		.ascii	"Printer is not in delta mode\000"
 9894      74657220 
 9894      6973206E 
 9894      6F742069 
 9894      6E206465 
 9895 1355 000000   		.space	3
 9896              	.LC164:
 9897 1358 456E6473 		.ascii	"Endstop adjustments X%.2f Y%.2f Z%.2f, tilt X%.2f%%"
 9897      746F7020 
 9897      61646A75 
 9897      73746D65 
 9897      6E747320 
 9898 138b 2059252E 		.ascii	" Y%.2f%%\000"
 9898      32662525 
 9898      00
 9899              	.LC165:
 9900 1394 5072696E 		.ascii	"Printer mode is %s with axis factors\000"
 9900      74657220 
 9900      6D6F6465 
 9900      20697320 
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 185


 9900      25732077 
 9901 13b9 000000   		.space	3
 9902              	.LC166:
 9903 13bc 2025633A 		.ascii	" %c:%f\000"
 9903      256600
 9904 13c3 00       		.space	1
 9905              	.LC167:
 9906 13c4 25592D25 		.ascii	"%Y-%m-%d\000"
 9906      6D2D2564 
 9906      00
 9907 13cd 000000   		.space	3
 9908              	.LC168:
 9909 13d0 436F756C 		.ascii	"Could not set date\000"
 9909      64206E6F 
 9909      74207365 
 9909      74206461 
 9909      746500
 9910 13e3 00       		.space	1
 9911              	.LC169:
 9912 13e4 496E7661 		.ascii	"Invalid date format\000"
 9912      6C696420 
 9912      64617465 
 9912      20666F72 
 9912      6D617400 
 9913              	.LC170:
 9914 13f8 25483A25 		.ascii	"%H:%M:%S\000"
 9914      4D3A2553 
 9914      00
 9915 1401 000000   		.space	3
 9916              	.LC171:
 9917 1404 436F756C 		.ascii	"Could not set time\000"
 9917      64206E6F 
 9917      74207365 
 9917      74207469 
 9917      6D6500
 9918 1417 00       		.space	1
 9919              	.LC172:
 9920 1418 496E7661 		.ascii	"Invalid time format\000"
 9920      6C696420 
 9920      74696D65 
 9920      20666F72 
 9920      6D617400 
 9921              	.LC173:
 9922 142c 43757272 		.ascii	"Current date and time: %04u-%02u-%02u %02u:%02u:%02"
 9922      656E7420 
 9922      64617465 
 9922      20616E64 
 9922      2074696D 
 9923 145f 7500     		.ascii	"u\000"
 9924 1461 000000   		.space	3
 9925              	.LC174:
 9926 1464 0A576172 		.ascii	"\012Warning: RTC has not been configured yet!\000"
 9926      6E696E67 
 9926      3A205254 
 9926      43206861 
 9926      73206E6F 
 9927 148f 00       		.space	1
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 186


 9928              	.LC175:
 9929 1490 25633A25 		.ascii	"%c:%d, \000"
 9929      642C2000 
 9930              	.LC176:
 9931 1498 3A256400 		.ascii	":%d\000"
 9932              	.LC177:
 9933 149c 2C206964 		.ascii	", idle factor %d%%\000"
 9933      6C652066 
 9933      6163746F 
 9933      72202564 
 9933      252500
 9934 14af 00       		.space	1
 9935              	.LC178:
 9936 14b0 4D393131 		.ascii	"M911 not implemented yet\000"
 9936      206E6F74 
 9936      20696D70 
 9936      6C656D65 
 9936      6E746564 
 9937 14c9 000000   		.space	3
 9938              	.LC179:
 9939 14cc 4D435520 		.ascii	"MCU temperature calibration adjustment is %.1f\302\260"
 9939      74656D70 
 9939      65726174 
 9939      75726520 
 9939      63616C69 
 9940 14fc 4300     		.ascii	"C\000"
 9941 14fe 0000     		.space	2
 9942              	.LC180:
 9943 1500 496E7661 		.ascii	"Invalid module number '%ld'\012\000"
 9943      6C696420 
 9943      6D6F6475 
 9943      6C65206E 
 9943      756D6265 
 9944 151d 000000   		.space	3
 9945              	.LC181:
 9946 1520 43686563 		.ascii	"Checksum error on line %d\000"
 9946      6B73756D 
 9946      20657272 
 9946      6F72206F 
 9946      6E206C69 
 9947 153a 0000     		.space	2
 9948              	.LC182:
 9949 153c 45524153 		.ascii	"ERASE\000"
 9949      4500
 9950 1542 0000     		.space	2
 9951              	.LC183:
 9952 1544 756E7375 		.ascii	"unsupported command: %s\000"
 9952      70706F72 
 9952      74656420 
 9952      636F6D6D 
 9952      616E643A 
 9953              	.LC184:
 9954 155c 47436F64 		.ascii	"GCode files:\012\000"
 9954      65206669 
 9954      6C65733A 
 9954      0A00
 9955 156a 0000     		.space	2
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 187


 9956              	.LC185:
 9957 156c 46696C65 		.ascii	"File opened\012File selected\000"
 9957      206F7065 
 9957      6E65640A 
 9957      46696C65 
 9957      2073656C 
 9958 1586 0000     		.space	2
 9959              	.LC186:
 9960 1588 46696C65 		.ascii	"File %s selected for printing\000"
 9960      20257320 
 9960      73656C65 
 9960      63746564 
 9960      20666F72 
 9961 15a6 0000     		.space	2
 9962              	.LC187:
 9963 15a8 72657472 		.ascii	"retractprobe.g\000"
 9963      61637470 
 9963      726F6265 
 9963      2E6700
 9964 15b7 00       		.space	1
 9965              	.LC188:
 9966 15b8 6465706C 		.ascii	"deployprobe.g\000"
 9966      6F797072 
 9966      6F62652E 
 9966      6700
 9967 15c6 0000     		.space	2
 9968              	.LC189:
 9969 15c8 736C6565 		.ascii	"sleep.g\000"
 9969      702E6700 
 9970              	.LC190:
 9971 15d0 73746F70 		.ascii	"stop.g\000"
 9971      2E6700
 9972 15d7 00       		.space	1
 9973              	.LC191:
 9974 15d8 63616E63 		.ascii	"cancel.g\000"
 9974      656C2E67 
 9974      00
 9975 15e1 000000   		.space	3
 9976              	.LC192:
 9977 15e4 72657375 		.ascii	"resume.g\000"
 9977      6D652E67 
 9977      00
 9978 15ed 000000   		.space	3
 9979              	.LC193:
 9980 15f0 6265642E 		.ascii	"bed.g\000"
 9980      6700
 9981 15f6 0000     		.section	.data.RETRACTPROBE_G,"aw",%progbits
 9982              		.align	2
 9983              		.set	.LANCHOR4,. + 0
 9984              		.type	RETRACTPROBE_G, %object
 9985              		.size	RETRACTPROBE_G, 4
 9986              	RETRACTPROBE_G:
 9987 0000 A8150000 		.word	.LC187
 9988              		.section	.rodata.CSWTCH.624,"a",%progbits
 9989              		.align	2
 9990              		.set	.LANCHOR6,. + 0
 9991              		.type	CSWTCH.624, %object
ARM GAS  C:\Users\George\AppData\Local\Temp\cciIaPce.s 			page 188


 9992              		.size	CSWTCH.624, 12
 9993              	CSWTCH.624:
 9994 0000 01000000 		.word	1
 9995 0004 02000000 		.word	2
 9996 0008 03000000 		.word	3
 9997              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 9998              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 9999              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 10000              	_ZL28cpu_irq_prev_interrupt_state:
 10001 0000 00       		.space	1
 10002              		.section	.data.CONFIG_OVERRIDE_G,"aw",%progbits
 10003              		.align	2
 10004              		.set	.LANCHOR5,. + 0
 10005              		.type	CONFIG_OVERRIDE_G, %object
 10006              		.size	CONFIG_OVERRIDE_G, 4
 10007              	CONFIG_OVERRIDE_G:
 10008 0000 240C0000 		.word	.LC111
 10009              		.section	.data.RESUME_G,"aw",%progbits
 10010              		.align	2
 10011              		.set	.LANCHOR2,. + 0
 10012              		.type	RESUME_G, %object
 10013              		.size	RESUME_G, 4
 10014              	RESUME_G:
 10015 0000 E4150000 		.word	.LC192
 10016              		.section	.data.DEPLOYPROBE_G,"aw",%progbits
 10017              		.align	2
 10018              		.set	.LANCHOR3,. + 0
 10019              		.type	DEPLOYPROBE_G, %object
 10020              		.size	DEPLOYPROBE_G, 4
 10021              	DEPLOYPROBE_G:
 10022 0000 B8150000 		.word	.LC188
 10023              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
