ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 1


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
  15              		.file	"SX1509.cpp"
  16              		.section	.text._ZN6SX1509C2Ev,"ax",%progbits
  17              		.align	2
  18              		.global	_ZN6SX1509C2Ev
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN6SX1509C2Ev, %function
  22              	_ZN6SX1509C2Ev:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 0022     		movs	r2, #0
  27 0002 4260     		str	r2, [r0, #4]
  28 0004 7047     		bx	lr
  29              		.size	_ZN6SX1509C2Ev, .-_ZN6SX1509C2Ev
  30              		.global	_ZN6SX1509C1Ev
  31              		.thumb_set _ZN6SX1509C1Ev,_ZN6SX1509C2Ev
  32 0006 00BF     		.section	.text._ZN6SX15096getRowEt,"ax",%progbits
  33              		.align	2
  34              		.global	_ZN6SX15096getRowEt
  35              		.thumb
  36              		.thumb_func
  37              		.type	_ZN6SX15096getRowEt, %function
  38              	_ZN6SX15096getRowEt:
  39              		@ args = 0, pretend = 0, frame = 0
  40              		@ frame_needed = 0, uses_anonymous_args = 0
  41              		@ link register save eliminated.
  42 0000 C9B2     		uxtb	r1, r1
  43 0002 0023     		movs	r3, #0
  44              	.L4:
  45 0004 21FA03F2 		lsr	r2, r1, r3
  46 0008 12F00102 		ands	r2, r2, #1
  47 000c D8B2     		uxtb	r0, r3
  48 000e 03F10103 		add	r3, r3, #1
  49 0012 02D1     		bne	.L3
  50 0014 082B     		cmp	r3, #8
  51 0016 F5D1     		bne	.L4
  52 0018 1046     		mov	r0, r2
  53              	.L3:
  54 001a 7047     		bx	lr
  55              		.size	_ZN6SX15096getRowEt, .-_ZN6SX15096getRowEt
  56              		.section	.text._ZN6SX15096getColEt,"ax",%progbits
  57              		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 2


  58              		.global	_ZN6SX15096getColEt
  59              		.thumb
  60              		.thumb_func
  61              		.type	_ZN6SX15096getColEt, %function
  62              	_ZN6SX15096getColEt:
  63              		@ args = 0, pretend = 0, frame = 0
  64              		@ frame_needed = 0, uses_anonymous_args = 0
  65              		@ link register save eliminated.
  66 0000 090A     		lsrs	r1, r1, #8
  67 0002 0023     		movs	r3, #0
  68              	.L11:
  69 0004 21FA03F2 		lsr	r2, r1, r3
  70 0008 12F00102 		ands	r2, r2, #1
  71 000c D8B2     		uxtb	r0, r3
  72 000e 03F10103 		add	r3, r3, #1
  73 0012 02D1     		bne	.L10
  74 0014 082B     		cmp	r3, #8
  75 0016 F5D1     		bne	.L11
  76 0018 1046     		mov	r0, r2
  77              	.L10:
  78 001a 7047     		bx	lr
  79              		.size	_ZN6SX15096getColEt, .-_ZN6SX15096getColEt
  80              		.global	__aeabi_f2d
  81              		.global	__aeabi_ddiv
  82              		.global	__aeabi_d2iz
  83              		.global	__aeabi_i2d
  84              		.global	__aeabi_dmul
  85              		.global	__aeabi_ui2d
  86              		.global	__aeabi_d2f
  87              		.section	.text._ZN6SX150921calculateLEDTRegisterEi,"ax",%progbits
  88              		.align	2
  89              		.global	_ZN6SX150921calculateLEDTRegisterEi
  90              		.thumb
  91              		.thumb_func
  92              		.type	_ZN6SX150921calculateLEDTRegisterEi, %function
  93              	_ZN6SX150921calculateLEDTRegisterEi:
  94              		@ args = 0, pretend = 0, frame = 0
  95              		@ frame_needed = 0, uses_anonymous_args = 0
  96 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
  97 0004 4468     		ldr	r4, [r0, #4]
  98 0006 2DED028B 		fstmfdd	sp!, {d8}
  99 000a 002C     		cmp	r4, #0
 100 000c 00F08A80 		beq	.L23
 101 0010 07EE101A 		fmsr	s14, r1	@ int
 102 0014 B8EEC78A 		fsitos	s16, s14
 103 0018 18EE100A 		fmrs	r0, s16
 104 001c FFF7FEFF 		bl	__aeabi_f2d
 105 0020 0022     		movs	r2, #0
 106 0022 5D4B     		ldr	r3, .L32+40
 107 0024 FFF7FEFF 		bl	__aeabi_ddiv
 108 0028 07EE904A 		fmsr	s15, r4	@ int
 109 002c F8EE677A 		fuitos	s15, s15
 110 0030 0646     		mov	r6, r0
 111 0032 17EE900A 		fmrs	r0, s15
 112 0036 0F46     		mov	r7, r1
 113 0038 FFF7FEFF 		bl	__aeabi_f2d
 114 003c 0246     		mov	r2, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 3


 115 003e 0B46     		mov	r3, r1
 116 0040 4BA1     		adr	r1, .L32
 117 0042 D1E90001 		ldrd	r0, [r1]
 118 0046 FFF7FEFF 		bl	__aeabi_ddiv
 119 004a 0246     		mov	r2, r0
 120 004c 0B46     		mov	r3, r1
 121 004e 3046     		mov	r0, r6
 122 0050 3946     		mov	r1, r7
 123 0052 FFF7FEFF 		bl	__aeabi_ddiv
 124 0056 FFF7FEFF 		bl	__aeabi_d2iz
 125 005a 0028     		cmp	r0, #0
 126 005c 0546     		mov	r5, r0
 127 005e B8BF     		it	lt
 128 0060 C51D     		addlt	r5, r0, #7
 129 0062 0E28     		cmp	r0, #14
 130 0064 8346     		mov	fp, r0
 131 0066 4FEAE505 		asr	r5, r5, #3
 132 006a 4BDD     		ble	.L28
 133 006c 0FF20819 		adr	r9, .L32+8
 134 0070 D9E90089 		ldrd	r8, [r9]
 135 0074 4FF00F0B 		mov	fp, #15
 136              	.L19:
 137 0078 1E2D     		cmp	r5, #30
 138 007a 4DDC     		bgt	.L26
 139              	.L31:
 140 007c 102D     		cmp	r5, #16
 141 007e 64DC     		bgt	.L29
 142 0080 3FA7     		adr	r7, .L32+16
 143 0082 D7E90067 		ldrd	r6, [r7]
 144 0086 4FF0100A 		mov	r10, #16
 145              	.L21:
 146 008a 2046     		mov	r0, r4
 147 008c FFF7FEFF 		bl	__aeabi_ui2d
 148 0090 0446     		mov	r4, r0
 149 0092 0D46     		mov	r5, r1
 150 0094 2246     		mov	r2, r4
 151 0096 2B46     		mov	r3, r5
 152 0098 4046     		mov	r0, r8
 153 009a 4946     		mov	r1, r9
 154 009c FFF7FEFF 		bl	__aeabi_ddiv
 155 00a0 0022     		movs	r2, #0
 156 00a2 3D4B     		ldr	r3, .L32+40
 157 00a4 FFF7FEFF 		bl	__aeabi_dmul
 158 00a8 FFF7FEFF 		bl	__aeabi_d2f
 159 00ac 07EE100A 		fmsr	s14, r0
 160 00b0 77EE487A 		fsubs	s15, s14, s16
 161 00b4 2246     		mov	r2, r4
 162 00b6 FDEEE77A 		ftosizs	s15, s15
 163 00ba 2B46     		mov	r3, r5
 164 00bc 3046     		mov	r0, r6
 165 00be 3946     		mov	r1, r7
 166 00c0 17EE904A 		fmrs	r4, s15	@ int
 167 00c4 FFF7FEFF 		bl	__aeabi_ddiv
 168 00c8 334B     		ldr	r3, .L32+40
 169 00ca 0022     		movs	r2, #0
 170 00cc FFF7FEFF 		bl	__aeabi_dmul
 171 00d0 FFF7FEFF 		bl	__aeabi_d2f
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 4


 172 00d4 07EE900A 		fmsr	s15, r0
 173 00d8 37EEC88A 		fsubs	s16, s15, s16
 174 00dc 002C     		cmp	r4, #0
 175 00de B8BF     		it	lt
 176 00e0 6442     		rsblt	r4, r4, #0
 177 00e2 BDEEC88A 		ftosizs	s16, s16
 178 00e6 18EE103A 		fmrs	r3, s16	@ int
 179 00ea BDEC028B 		fldmfdd	sp!, {d8}
 180 00ee 002B     		cmp	r3, #0
 181 00f0 B8BF     		it	lt
 182 00f2 5B42     		rsblt	r3, r3, #0
 183 00f4 9C42     		cmp	r4, r3
 184 00f6 B4BF     		ite	lt
 185 00f8 5FFA8BF0 		uxtblt	r0, fp
 186 00fc 5FFA8AF0 		uxtbge	r0, r10
 187 0100 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 188              	.L28:
 189 0104 0128     		cmp	r0, #1
 190 0106 12DC     		bgt	.L30
 191 0108 1E2D     		cmp	r5, #30
 192 010a 0FF26409 		adr	r9, .L32
 193 010e D9E90089 		ldrd	r8, [r9]
 194 0112 4FF0010B 		mov	fp, #1
 195 0116 B1DD     		ble	.L31
 196              	.L26:
 197 0118 1BA7     		adr	r7, .L32+24
 198 011a D7E90067 		ldrd	r6, [r7]
 199 011e 4FF01F0A 		mov	r10, #31
 200 0122 B2E7     		b	.L21
 201              	.L23:
 202 0124 BDEC028B 		fldmfdd	sp!, {d8}
 203 0128 2046     		mov	r0, r4
 204 012a BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 205              	.L30:
 206 012e FFF7FEFF 		bl	__aeabi_i2d
 207 0132 0022     		movs	r2, #0
 208 0134 194B     		ldr	r3, .L32+44
 209 0136 FFF7FEFF 		bl	__aeabi_dmul
 210 013a 15A3     		adr	r3, .L32+32
 211 013c D3E90023 		ldrd	r2, [r3]
 212 0140 FFF7FEFF 		bl	__aeabi_dmul
 213 0144 8046     		mov	r8, r0
 214 0146 8946     		mov	r9, r1
 215 0148 96E7     		b	.L19
 216              	.L29:
 217 014a 2846     		mov	r0, r5
 218 014c FFF7FEFF 		bl	__aeabi_i2d
 219 0150 0022     		movs	r2, #0
 220 0152 4FF08143 		mov	r3, #1082130432
 221 0156 FFF7FEFF 		bl	__aeabi_dmul
 222 015a 0DA3     		adr	r3, .L32+32
 223 015c D3E90023 		ldrd	r2, [r3]
 224 0160 FFF7FEFF 		bl	__aeabi_dmul
 225 0164 AA46     		mov	r10, r5
 226 0166 0646     		mov	r6, r0
 227 0168 0F46     		mov	r7, r1
 228 016a 8EE7     		b	.L21
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 5


 229              	.L33:
 230 016c AFF30080 		.align	3
 231              	.L32:
 232 0170 00000000 		.word	0
 233 0174 00E0CF40 		.word	1087365120
 234 0178 00000000 		.word	0
 235 017c 00E20D41 		.word	1091428864
 236 0180 00000000 		.word	0
 237 0184 00E03F41 		.word	1094705152
 238 0188 00000000 		.word	0
 239 018c 00E14E41 		.word	1095688448
 240 0190 00000000 		.word	0
 241 0194 00E06F40 		.word	1081073664
 242 0198 00408F40 		.word	1083129856
 243 019c 00005040 		.word	1078984704
 244              		.size	_ZN6SX150921calculateLEDTRegisterEi, .-_ZN6SX150921calculateLEDTRegisterEi
 245              		.global	__aeabi_dsub
 246              		.section	.text._ZN6SX150922calculateSlopeRegisterEihh,"ax",%progbits
 247              		.align	2
 248              		.global	_ZN6SX150922calculateSlopeRegisterEihh
 249              		.thumb
 250              		.thumb_func
 251              		.type	_ZN6SX150922calculateSlopeRegisterEihh, %function
 252              	_ZN6SX150922calculateSlopeRegisterEihh:
 253              		@ args = 0, pretend = 0, frame = 8
 254              		@ frame_needed = 0, uses_anonymous_args = 0
 255 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 256 0002 4668     		ldr	r6, [r0, #4]
 257 0004 83B0     		sub	sp, sp, #12
 258 0006 0F46     		mov	r7, r1
 259 0008 002E     		cmp	r6, #0
 260 000a 00F08380 		beq	.L42
 261 000e 06EE102A 		fmsr	s12, r2	@ int
 262 0012 B8EE466A 		fuitos	s12, s12
 263 0016 0193     		str	r3, [sp, #4]
 264 0018 16EE100A 		fmrs	r0, s12
 265 001c FFF7FEFF 		bl	__aeabi_f2d
 266 0020 019B     		ldr	r3, [sp, #4]
 267 0022 06EE903A 		fmsr	s13, r3	@ int
 268 0026 F8EE666A 		fuitos	s13, s13
 269 002a 0446     		mov	r4, r0
 270 002c 16EE900A 		fmrs	r0, s13
 271 0030 0D46     		mov	r5, r1
 272 0032 FFF7FEFF 		bl	__aeabi_f2d
 273 0036 0022     		movs	r2, #0
 274 0038 3B4B     		ldr	r3, .L50+8
 275 003a FFF7FEFF 		bl	__aeabi_dmul
 276 003e 0246     		mov	r2, r0
 277 0040 0B46     		mov	r3, r1
 278 0042 2046     		mov	r0, r4
 279 0044 2946     		mov	r1, r5
 280 0046 FFF7FEFF 		bl	__aeabi_dsub
 281 004a 35A3     		adr	r3, .L50
 282 004c D3E90023 		ldrd	r2, [r3]
 283 0050 FFF7FEFF 		bl	__aeabi_dmul
 284 0054 07EE906A 		fmsr	s15, r6	@ int
 285 0058 F8EE677A 		fuitos	s15, s15
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 6


 286 005c 0446     		mov	r4, r0
 287 005e 17EE900A 		fmrs	r0, s15
 288 0062 0D46     		mov	r5, r1
 289 0064 FFF7FEFF 		bl	__aeabi_f2d
 290 0068 0246     		mov	r2, r0
 291 006a 0B46     		mov	r3, r1
 292 006c 2046     		mov	r0, r4
 293 006e 2946     		mov	r1, r5
 294 0070 FFF7FEFF 		bl	__aeabi_ddiv
 295 0074 FFF7FEFF 		bl	__aeabi_d2f
 296 0078 06EE107A 		fmsr	s12, r7	@ int
 297 007c DFED2B6A 		flds	s13, .L50+12
 298 0080 F8EEC67A 		fsitos	s15, s12
 299 0084 07EE100A 		fmsr	s14, r0
 300 0088 C7EEA66A 		fdivs	s13, s15, s13
 301 008c C6EE876A 		fdivs	s13, s13, s14
 302 0090 FDEEE66A 		ftosizs	s13, s13
 303 0094 16EE903A 		fmrs	r3, s13	@ int
 304 0098 16EE902A 		fmrs	r2, s13	@ int
 305 009c 002B     		cmp	r3, #0
 306 009e B8BF     		it	lt
 307 00a0 03F10F02 		addlt	r2, r3, #15
 308 00a4 0E2B     		cmp	r3, #14
 309 00a6 4FEA2212 		asr	r2, r2, #4
 310 00aa 29DD     		ble	.L47
 311 00ac F2EE0E6A 		fconsts	s13, #46
 312 00b0 0F23     		movs	r3, #15
 313              	.L38:
 314 00b2 1E2A     		cmp	r2, #30
 315 00b4 2CDC     		bgt	.L45
 316              	.L49:
 317 00b6 102A     		cmp	r2, #16
 318 00b8 D8BF     		it	le
 319 00ba 1022     		movle	r2, #16
 320              	.L40:
 321 00bc 27EE267A 		fmuls	s14, s14, s13
 322 00c0 DFED1A6A 		flds	s13, .L50+12
 323 00c4 27EE267A 		fmuls	s14, s14, s13
 324 00c8 B0EE676A 		fcpys	s12, s15
 325 00cc F3EE006A 		fconsts	s13, #48
 326 00d0 97EE266A 		vfnms.f32	s12, s14, s13
 327 00d4 77EE677A 		fsubs	s15, s14, s15
 328 00d8 FDEEC66A 		ftosizs	s13, s12
 329 00dc FDEEE77A 		ftosizs	s15, s15
 330 00e0 16EE901A 		fmrs	r1, s13	@ int
 331 00e4 17EE904A 		fmrs	r4, s15	@ int
 332 00e8 0029     		cmp	r1, #0
 333 00ea B8BF     		it	lt
 334 00ec 4942     		rsblt	r1, r1, #0
 335 00ee 002C     		cmp	r4, #0
 336 00f0 B8BF     		it	lt
 337 00f2 6442     		rsblt	r4, r4, #0
 338 00f4 8C42     		cmp	r4, r1
 339 00f6 B4BF     		ite	lt
 340 00f8 D8B2     		uxtblt	r0, r3
 341 00fa D0B2     		uxtbge	r0, r2
 342 00fc 03B0     		add	sp, sp, #12
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 7


 343              		@ sp needed
 344 00fe F0BD     		pop	{r4, r5, r6, r7, pc}
 345              	.L47:
 346 0100 012B     		cmp	r3, #1
 347 0102 0ADC     		bgt	.L48
 348 0104 1E2A     		cmp	r2, #30
 349 0106 F7EE006A 		fconsts	s13, #112
 350 010a 4FF00103 		mov	r3, #1
 351 010e D2DD     		ble	.L49
 352              	.L45:
 353 0110 1F22     		movs	r2, #31
 354 0112 D3E7     		b	.L40
 355              	.L42:
 356 0114 3046     		mov	r0, r6
 357 0116 03B0     		add	sp, sp, #12
 358              		@ sp needed
 359 0118 F0BD     		pop	{r4, r5, r6, r7, pc}
 360              	.L48:
 361 011a F8EEE66A 		fsitos	s13, s13
 362 011e C8E7     		b	.L38
 363              	.L51:
 364              		.align	3
 365              	.L50:
 366 0120 00000000 		.word	0
 367 0124 00E06F40 		.word	1081073664
 368 0128 00001040 		.word	1074790400
 369 012c 00007A44 		.word	1148846080
 370              		.size	_ZN6SX150922calculateSlopeRegisterEihh, .-_ZN6SX150922calculateSlopeRegisterEihh
 371              		.section	.text._ZN6SX15098readByteEh,"ax",%progbits
 372              		.align	2
 373              		.global	_ZN6SX15098readByteEh
 374              		.thumb
 375              		.thumb_func
 376              		.type	_ZN6SX15098readByteEh, %function
 377              	_ZN6SX15098readByteEh:
 378              		@ args = 0, pretend = 0, frame = 0
 379              		@ frame_needed = 0, uses_anonymous_args = 0
 380 0000 38B5     		push	{r3, r4, r5, lr}
 381 0002 0446     		mov	r4, r0
 382 0004 0D46     		mov	r5, r1
 383 0006 1148     		ldr	r0, .L63
 384 0008 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 385 000a FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 386 000e 2946     		mov	r1, r5
 387 0010 0E48     		ldr	r0, .L63
 388 0012 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 389 0016 0D48     		ldr	r0, .L63
 390 0018 FFF7FEFF 		bl	_ZN7TwoWire15endTransmissionEv
 391 001c 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 392 001e 0B48     		ldr	r0, .L63
 393 0020 0122     		movs	r2, #1
 394 0022 FFF7FEFF 		bl	_ZN7TwoWire11requestFromEhh
 395 0026 4FF47A74 		mov	r4, #1000
 396              	.L57:
 397 002a 0848     		ldr	r0, .L63
 398 002c FFF7FEFF 		bl	_ZN7TwoWire9availableEv
 399 0030 0028     		cmp	r0, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 8


 400 0032 02DD     		ble	.L61
 401 0034 2CB9     		cbnz	r4, .L62
 402              	.L58:
 403 0036 2046     		mov	r0, r4
 404 0038 38BD     		pop	{r3, r4, r5, pc}
 405              	.L61:
 406 003a 002C     		cmp	r4, #0
 407 003c FBD0     		beq	.L58
 408 003e 013C     		subs	r4, r4, #1
 409 0040 F3E7     		b	.L57
 410              	.L62:
 411 0042 0248     		ldr	r0, .L63
 412 0044 FFF7FEFF 		bl	_ZN7TwoWire4readEv
 413 0048 C0B2     		uxtb	r0, r0
 414 004a 38BD     		pop	{r3, r4, r5, pc}
 415              	.L64:
 416              		.align	2
 417              	.L63:
 418 004c 00000000 		.word	Wire
 419              		.size	_ZN6SX15098readByteEh, .-_ZN6SX15098readByteEh
 420              		.section	.text._ZN6SX150911digitalReadEh,"ax",%progbits
 421              		.align	2
 422              		.global	_ZN6SX150911digitalReadEh
 423              		.thumb
 424              		.thumb_func
 425              		.type	_ZN6SX150911digitalReadEh, %function
 426              	_ZN6SX150911digitalReadEh:
 427              		@ args = 0, pretend = 0, frame = 0
 428              		@ frame_needed = 0, uses_anonymous_args = 0
 429 0000 0729     		cmp	r1, #7
 430 0002 10B5     		push	{r4, lr}
 431 0004 0C46     		mov	r4, r1
 432 0006 06D8     		bhi	.L68
 433 0008 1121     		movs	r1, #17
 434 000a FFF7FEFF 		bl	_ZN6SX15098readByteEh
 435 000e E040     		lsrs	r0, r0, r4
 436 0010 00F00100 		and	r0, r0, #1
 437 0014 10BD     		pop	{r4, pc}
 438              	.L68:
 439 0016 1021     		movs	r1, #16
 440 0018 FFF7FEFF 		bl	_ZN6SX15098readByteEh
 441 001c 083C     		subs	r4, r4, #8
 442 001e E040     		lsrs	r0, r0, r4
 443 0020 00F00100 		and	r0, r0, #1
 444 0024 10BD     		pop	{r4, pc}
 445              		.size	_ZN6SX150911digitalReadEh, .-_ZN6SX150911digitalReadEh
 446 0026 00BF     		.section	.text._ZN6SX15098readWordEh,"ax",%progbits
 447              		.align	2
 448              		.global	_ZN6SX15098readWordEh
 449              		.thumb
 450              		.thumb_func
 451              		.type	_ZN6SX15098readWordEh, %function
 452              	_ZN6SX15098readWordEh:
 453              		@ args = 0, pretend = 0, frame = 0
 454              		@ frame_needed = 0, uses_anonymous_args = 0
 455 0000 38B5     		push	{r3, r4, r5, lr}
 456 0002 0446     		mov	r4, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 9


 457 0004 0D46     		mov	r5, r1
 458 0006 1548     		ldr	r0, .L80
 459 0008 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 460 000a FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 461 000e 2946     		mov	r1, r5
 462 0010 1248     		ldr	r0, .L80
 463 0012 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 464 0016 1148     		ldr	r0, .L80
 465 0018 FFF7FEFF 		bl	_ZN7TwoWire15endTransmissionEv
 466 001c 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 467 001e 0F48     		ldr	r0, .L80
 468 0020 0222     		movs	r2, #2
 469 0022 FFF7FEFF 		bl	_ZN7TwoWire11requestFromEhh
 470 0026 4FF4FA64 		mov	r4, #2000
 471              	.L74:
 472 002a 0C48     		ldr	r0, .L80
 473 002c FFF7FEFF 		bl	_ZN7TwoWire9availableEv
 474 0030 0128     		cmp	r0, #1
 475 0032 02DD     		ble	.L78
 476 0034 2CB9     		cbnz	r4, .L79
 477              	.L75:
 478 0036 2046     		mov	r0, r4
 479 0038 38BD     		pop	{r3, r4, r5, pc}
 480              	.L78:
 481 003a 002C     		cmp	r4, #0
 482 003c FBD0     		beq	.L75
 483 003e 013C     		subs	r4, r4, #1
 484 0040 F3E7     		b	.L74
 485              	.L79:
 486 0042 0648     		ldr	r0, .L80
 487 0044 FFF7FEFF 		bl	_ZN7TwoWire4readEv
 488 0048 0446     		mov	r4, r0
 489 004a 0448     		ldr	r0, .L80
 490 004c FFF7FEFF 		bl	_ZN7TwoWire4readEv
 491 0050 C0B2     		uxtb	r0, r0
 492 0052 40EA0424 		orr	r4, r0, r4, lsl #8
 493 0056 A0B2     		uxth	r0, r4
 494 0058 38BD     		pop	{r3, r4, r5, pc}
 495              	.L81:
 496 005a 00BF     		.align	2
 497              	.L80:
 498 005c 00000000 		.word	Wire
 499              		.size	_ZN6SX15098readWordEh, .-_ZN6SX15098readWordEh
 500              		.section	.text._ZN6SX150914digitalReadAllEv,"ax",%progbits
 501              		.align	2
 502              		.global	_ZN6SX150914digitalReadAllEv
 503              		.thumb
 504              		.thumb_func
 505              		.type	_ZN6SX150914digitalReadAllEv, %function
 506              	_ZN6SX150914digitalReadAllEv:
 507              		@ args = 0, pretend = 0, frame = 0
 508              		@ frame_needed = 0, uses_anonymous_args = 0
 509              		@ link register save eliminated.
 510 0000 1021     		movs	r1, #16
 511 0002 FFF7FEBF 		b	_ZN6SX15098readWordEh
 512              		.size	_ZN6SX150914digitalReadAllEv, .-_ZN6SX150914digitalReadAllEv
 513 0006 00BF     		.section	.text._ZN6SX150910readKeypadEv,"ax",%progbits
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 10


 514              		.align	2
 515              		.global	_ZN6SX150910readKeypadEv
 516              		.thumb
 517              		.thumb_func
 518              		.type	_ZN6SX150910readKeypadEv, %function
 519              	_ZN6SX150910readKeypadEv:
 520              		@ args = 0, pretend = 0, frame = 0
 521              		@ frame_needed = 0, uses_anonymous_args = 0
 522 0000 08B5     		push	{r3, lr}
 523 0002 2721     		movs	r1, #39
 524 0004 FFF7FEFF 		bl	_ZN6SX15098readWordEh
 525 0008 C043     		mvns	r0, r0
 526 000a 80B2     		uxth	r0, r0
 527 000c 08BD     		pop	{r3, pc}
 528              		.size	_ZN6SX150910readKeypadEv, .-_ZN6SX150910readKeypadEv
 529 000e 00BF     		.section	.text._ZN6SX15099readDwordEh,"ax",%progbits
 530              		.align	2
 531              		.global	_ZN6SX15099readDwordEh
 532              		.thumb
 533              		.thumb_func
 534              		.type	_ZN6SX15099readDwordEh, %function
 535              	_ZN6SX15099readDwordEh:
 536              		@ args = 0, pretend = 0, frame = 0
 537              		@ frame_needed = 0, uses_anonymous_args = 0
 538 0000 38B5     		push	{r3, r4, r5, lr}
 539 0002 0446     		mov	r4, r0
 540 0004 0D46     		mov	r5, r1
 541 0006 1C48     		ldr	r0, .L94
 542 0008 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 543 000a FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 544 000e 2946     		mov	r1, r5
 545 0010 1948     		ldr	r0, .L94
 546 0012 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 547 0016 1848     		ldr	r0, .L94
 548 0018 FFF7FEFF 		bl	_ZN7TwoWire15endTransmissionEv
 549 001c 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 550 001e 1648     		ldr	r0, .L94
 551 0020 0422     		movs	r2, #4
 552 0022 FFF7FEFF 		bl	_ZN7TwoWire11requestFromEhh
 553 0026 1448     		ldr	r0, .L94
 554 0028 FFF7FEFF 		bl	_ZN7TwoWire9availableEv
 555 002c 0328     		cmp	r0, #3
 556 002e 4FF4FA64 		mov	r4, #2000
 557 0032 07DC     		bgt	.L85
 558              	.L93:
 559 0034 F4B1     		cbz	r4, .L90
 560 0036 1048     		ldr	r0, .L94
 561 0038 FFF7FEFF 		bl	_ZN7TwoWire9availableEv
 562 003c 0328     		cmp	r0, #3
 563 003e 04F1FF34 		add	r4, r4, #-1
 564 0042 F7DD     		ble	.L93
 565              	.L85:
 566 0044 B4B1     		cbz	r4, .L90
 567 0046 0C48     		ldr	r0, .L94
 568 0048 FFF7FEFF 		bl	_ZN7TwoWire4readEv
 569 004c C4B2     		uxtb	r4, r0
 570 004e 0A48     		ldr	r0, .L94
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 11


 571 0050 FFF7FEFF 		bl	_ZN7TwoWire4readEv
 572 0054 2402     		lsls	r4, r4, #8
 573 0056 C0B2     		uxtb	r0, r0
 574 0058 0443     		orrs	r4, r4, r0
 575 005a 0748     		ldr	r0, .L94
 576 005c FFF7FEFF 		bl	_ZN7TwoWire4readEv
 577 0060 2402     		lsls	r4, r4, #8
 578 0062 C0B2     		uxtb	r0, r0
 579 0064 0443     		orrs	r4, r4, r0
 580 0066 0448     		ldr	r0, .L94
 581 0068 FFF7FEFF 		bl	_ZN7TwoWire4readEv
 582 006c 2402     		lsls	r4, r4, #8
 583 006e C0B2     		uxtb	r0, r0
 584 0070 2043     		orrs	r0, r0, r4
 585 0072 38BD     		pop	{r3, r4, r5, pc}
 586              	.L90:
 587 0074 2046     		mov	r0, r4
 588 0076 38BD     		pop	{r3, r4, r5, pc}
 589              	.L95:
 590              		.align	2
 591              	.L94:
 592 0078 00000000 		.word	Wire
 593              		.size	_ZN6SX15099readDwordEh, .-_ZN6SX15099readDwordEh
 594              		.section	.text._ZN6SX15099readBytesEhPhh,"ax",%progbits
 595              		.align	2
 596              		.global	_ZN6SX15099readBytesEhPhh
 597              		.thumb
 598              		.thumb_func
 599              		.type	_ZN6SX15099readBytesEhPhh, %function
 600              	_ZN6SX15099readBytesEhPhh:
 601              		@ args = 0, pretend = 0, frame = 0
 602              		@ frame_needed = 0, uses_anonymous_args = 0
 603 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 604 0002 0646     		mov	r6, r0
 605 0004 0F46     		mov	r7, r1
 606 0006 1248     		ldr	r0, .L102
 607 0008 3178     		ldrb	r1, [r6]	@ zero_extendqisi2
 608 000a 1446     		mov	r4, r2
 609 000c 1D46     		mov	r5, r3
 610 000e FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 611 0012 3946     		mov	r1, r7
 612 0014 0E48     		ldr	r0, .L102
 613 0016 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 614 001a 0D48     		ldr	r0, .L102
 615 001c FFF7FEFF 		bl	_ZN7TwoWire15endTransmissionEv
 616 0020 3178     		ldrb	r1, [r6]	@ zero_extendqisi2
 617 0022 0B48     		ldr	r0, .L102
 618 0024 2A46     		mov	r2, r5
 619 0026 FFF7FEFF 		bl	_ZN7TwoWire11requestFromEhh
 620              	.L98:
 621 002a 0948     		ldr	r0, .L102
 622 002c FFF7FEFF 		bl	_ZN7TwoWire9availableEv
 623 0030 A842     		cmp	r0, r5
 624 0032 FADB     		blt	.L98
 625 0034 55B1     		cbz	r5, .L96
 626 0036 013D     		subs	r5, r5, #1
 627 0038 54FA85F5 		uxtab	r5, r4, r5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 12


 628 003c 013C     		subs	r4, r4, #1
 629              	.L101:
 630 003e 0448     		ldr	r0, .L102
 631 0040 FFF7FEFF 		bl	_ZN7TwoWire4readEv
 632 0044 04F8010F 		strb	r0, [r4, #1]!
 633 0048 AC42     		cmp	r4, r5
 634 004a F8D1     		bne	.L101
 635              	.L96:
 636 004c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 637              	.L103:
 638 004e 00BF     		.align	2
 639              	.L102:
 640 0050 00000000 		.word	Wire
 641              		.size	_ZN6SX15099readBytesEhPhh, .-_ZN6SX15099readBytesEhPhh
 642              		.section	.text._ZN6SX15099writeByteEhh,"ax",%progbits
 643              		.align	2
 644              		.global	_ZN6SX15099writeByteEhh
 645              		.thumb
 646              		.thumb_func
 647              		.type	_ZN6SX15099writeByteEhh, %function
 648              	_ZN6SX15099writeByteEhh:
 649              		@ args = 0, pretend = 0, frame = 0
 650              		@ frame_needed = 0, uses_anonymous_args = 0
 651 0000 70B5     		push	{r4, r5, r6, lr}
 652 0002 0A4C     		ldr	r4, .L105
 653 0004 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 654 0006 0D46     		mov	r5, r1
 655 0008 2046     		mov	r0, r4
 656 000a 1946     		mov	r1, r3
 657 000c 1646     		mov	r6, r2
 658 000e FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 659 0012 2946     		mov	r1, r5
 660 0014 2046     		mov	r0, r4
 661 0016 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 662 001a 2046     		mov	r0, r4
 663 001c 3146     		mov	r1, r6
 664 001e FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 665 0022 2046     		mov	r0, r4
 666 0024 BDE87040 		pop	{r4, r5, r6, lr}
 667 0028 FFF7FEBF 		b	_ZN7TwoWire15endTransmissionEv
 668              	.L106:
 669              		.align	2
 670              	.L105:
 671 002c 00000000 		.word	Wire
 672              		.size	_ZN6SX15099writeByteEhh, .-_ZN6SX15099writeByteEhh
 673              		.section	.text._ZN6SX15095resetEv,"ax",%progbits
 674              		.align	2
 675              		.global	_ZN6SX15095resetEv
 676              		.thumb
 677              		.thumb_func
 678              		.type	_ZN6SX15095resetEv, %function
 679              	_ZN6SX15095resetEv:
 680              		@ args = 0, pretend = 0, frame = 0
 681              		@ frame_needed = 0, uses_anonymous_args = 0
 682 0000 10B5     		push	{r4, lr}
 683 0002 7D21     		movs	r1, #125
 684 0004 0446     		mov	r4, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 13


 685 0006 1222     		movs	r2, #18
 686 0008 FFF7FEFF 		bl	_ZN6SX15099writeByteEhh
 687 000c 2046     		mov	r0, r4
 688 000e 7D21     		movs	r1, #125
 689 0010 3422     		movs	r2, #52
 690 0012 BDE81040 		pop	{r4, lr}
 691 0016 FFF7FEBF 		b	_ZN6SX15099writeByteEhh
 692              		.size	_ZN6SX15095resetEv, .-_ZN6SX15095resetEv
 693 001a 00BF     		.section	.text._ZN6SX150911analogWriteEhh,"ax",%progbits
 694              		.align	2
 695              		.global	_ZN6SX150911analogWriteEhh
 696              		.thumb
 697              		.thumb_func
 698              		.type	_ZN6SX150911analogWriteEhh, %function
 699              	_ZN6SX150911analogWriteEhh:
 700              		@ args = 0, pretend = 0, frame = 0
 701              		@ frame_needed = 0, uses_anonymous_args = 0
 702              		@ link register save eliminated.
 703 0000 024B     		ldr	r3, .L109
 704 0002 D243     		mvns	r2, r2
 705 0004 D2B2     		uxtb	r2, r2
 706 0006 595C     		ldrb	r1, [r3, r1]	@ zero_extendqisi2
 707 0008 FFF7FEBF 		b	_ZN6SX15099writeByteEhh
 708              	.L110:
 709              		.align	2
 710              	.L109:
 711 000c 00000000 		.word	.LANCHOR0
 712              		.size	_ZN6SX150911analogWriteEhh, .-_ZN6SX150911analogWriteEhh
 713              		.section	.text._ZN6SX150914debounceConfigEh,"ax",%progbits
 714              		.align	2
 715              		.global	_ZN6SX150914debounceConfigEh
 716              		.thumb
 717              		.thumb_func
 718              		.type	_ZN6SX150914debounceConfigEh, %function
 719              	_ZN6SX150914debounceConfigEh:
 720              		@ args = 0, pretend = 0, frame = 0
 721              		@ frame_needed = 0, uses_anonymous_args = 0
 722 0000 38B5     		push	{r3, r4, r5, lr}
 723 0002 0D46     		mov	r5, r1
 724 0004 1F21     		movs	r1, #31
 725 0006 0446     		mov	r4, r0
 726 0008 FFF7FEFF 		bl	_ZN6SX15098readByteEh
 727 000c 10F0700F 		tst	r0, #112
 728 0010 15D0     		beq	.L114
 729              	.L112:
 730 0012 2046     		mov	r0, r4
 731 0014 1E21     		movs	r1, #30
 732 0016 FFF7FEFF 		bl	_ZN6SX15098readByteEh
 733 001a 10F0600F 		tst	r0, #96
 734 001e 06D1     		bne	.L113
 735 0020 40F04002 		orr	r2, r0, #64
 736 0024 D2B2     		uxtb	r2, r2
 737 0026 2046     		mov	r0, r4
 738 0028 1E21     		movs	r1, #30
 739 002a FFF7FEFF 		bl	_ZN6SX15099writeByteEhh
 740              	.L113:
 741 002e 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 14


 742 0030 05F00702 		and	r2, r5, #7
 743 0034 2221     		movs	r1, #34
 744 0036 BDE83840 		pop	{r3, r4, r5, lr}
 745 003a FFF7FEBF 		b	_ZN6SX15099writeByteEhh
 746              	.L114:
 747 003e 40F01002 		orr	r2, r0, #16
 748 0042 D2B2     		uxtb	r2, r2
 749 0044 2046     		mov	r0, r4
 750 0046 1F21     		movs	r1, #31
 751 0048 FFF7FEFF 		bl	_ZN6SX15099writeByteEhh
 752 004c E1E7     		b	.L112
 753              		.size	_ZN6SX150914debounceConfigEh, .-_ZN6SX150914debounceConfigEh
 754 004e 00BF     		.section	.text._ZN6SX150912debounceTimeEh,"ax",%progbits
 755              		.align	2
 756              		.global	_ZN6SX150912debounceTimeEh
 757              		.thumb
 758              		.thumb_func
 759              		.type	_ZN6SX150912debounceTimeEh, %function
 760              	_ZN6SX150912debounceTimeEh:
 761              		@ args = 0, pretend = 0, frame = 0
 762              		@ frame_needed = 0, uses_anonymous_args = 0
 763              		@ link register save eliminated.
 764 0000 0723     		movs	r3, #7
 765              	.L120:
 766 0002 21FA03F2 		lsr	r2, r1, r3
 767 0006 12F00102 		ands	r2, r2, #1
 768 000a 05D1     		bne	.L123
 769 000c 13F1FF33 		adds	r3, r3, #-1
 770 0010 F7D2     		bcs	.L120
 771 0012 1146     		mov	r1, r2
 772 0014 FFF7FEBF 		b	_ZN6SX150914debounceConfigEh
 773              	.L123:
 774 0018 591C     		adds	r1, r3, #1
 775 001a C9B2     		uxtb	r1, r1
 776 001c 0729     		cmp	r1, #7
 777 001e 28BF     		it	cs
 778 0020 0721     		movcs	r1, #7
 779 0022 FFF7FEBF 		b	_ZN6SX150914debounceConfigEh
 780              		.size	_ZN6SX150912debounceTimeEh, .-_ZN6SX150912debounceTimeEh
 781              		.global	__aeabi_d2uiz
 782 0026 00BF     		.section	.text._ZN6SX15095clockEh,"ax",%progbits
 783              		.align	2
 784              		.global	_ZN6SX15095clockEh
 785              		.thumb
 786              		.thumb_func
 787              		.type	_ZN6SX15095clockEh, %function
 788              	_ZN6SX15095clockEh:
 789              		@ args = 0, pretend = 0, frame = 0
 790              		@ frame_needed = 0, uses_anonymous_args = 0
 791 0000 38B5     		push	{r3, r4, r5, lr}
 792 0002 5122     		movs	r2, #81
 793 0004 0D46     		mov	r5, r1
 794 0006 1E21     		movs	r1, #30
 795 0008 0446     		mov	r4, r0
 796 000a FFF7FEFF 		bl	_ZN6SX15099writeByteEhh
 797 000e 062D     		cmp	r5, #6
 798 0010 04D8     		bhi	.L127
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 15


 799 0012 012D     		cmp	r5, #1
 800 0014 14D8     		bhi	.L129
 801 0016 1648     		ldr	r0, .L130+8
 802 0018 1025     		movs	r5, #16
 803 001a 02E0     		b	.L126
 804              	.L127:
 805 001c 7025     		movs	r5, #112
 806 001e 47F61220 		movw	r0, #31250
 807              	.L126:
 808 0022 6060     		str	r0, [r4, #4]
 809 0024 1F21     		movs	r1, #31
 810 0026 2046     		mov	r0, r4
 811 0028 FFF7FEFF 		bl	_ZN6SX15098readByteEh
 812 002c 00F08C00 		and	r0, r0, #140
 813 0030 40EA0502 		orr	r2, r0, r5
 814 0034 1F21     		movs	r1, #31
 815 0036 2046     		mov	r0, r4
 816 0038 BDE83840 		pop	{r3, r4, r5, lr}
 817 003c FFF7FEBF 		b	_ZN6SX15099writeByteEhh
 818              	.L129:
 819 0040 6B1E     		subs	r3, r5, #1
 820 0042 0120     		movs	r0, #1
 821 0044 9840     		lsls	r0, r0, r3
 822 0046 FFF7FEFF 		bl	__aeabi_ui2d
 823 004a 0246     		mov	r2, r0
 824 004c 0B46     		mov	r3, r1
 825 004e 06A1     		adr	r1, .L130
 826 0050 D1E90001 		ldrd	r0, [r1]
 827 0054 FFF7FEFF 		bl	__aeabi_ddiv
 828 0058 2D01     		lsls	r5, r5, #4
 829 005a FFF7FEFF 		bl	__aeabi_d2uiz
 830 005e EDB2     		uxtb	r5, r5
 831 0060 DFE7     		b	.L126
 832              	.L131:
 833 0062 00BFAFF3 		.align	3
 833      0080
 834              	.L130:
 835 0068 00000000 		.word	0
 836 006c 80843E41 		.word	1094616192
 837 0070 80841E00 		.word	2000000
 838              		.size	_ZN6SX15095clockEh, .-_ZN6SX15095clockEh
 839 0074 AFF30080 		.section	.text._ZN6SX15099writeWordEht,"ax",%progbits
 840              		.align	2
 841              		.global	_ZN6SX15099writeWordEht
 842              		.thumb
 843              		.thumb_func
 844              		.type	_ZN6SX15099writeWordEht, %function
 845              	_ZN6SX15099writeWordEht:
 846              		@ args = 0, pretend = 0, frame = 0
 847              		@ frame_needed = 0, uses_anonymous_args = 0
 848 0000 70B5     		push	{r4, r5, r6, lr}
 849 0002 0C4C     		ldr	r4, .L133
 850 0004 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 851 0006 0E46     		mov	r6, r1
 852 0008 2046     		mov	r0, r4
 853 000a 1946     		mov	r1, r3
 854 000c 1546     		mov	r5, r2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 16


 855 000e FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 856 0012 3146     		mov	r1, r6
 857 0014 2046     		mov	r0, r4
 858 0016 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 859 001a 290A     		lsrs	r1, r5, #8
 860 001c 2046     		mov	r0, r4
 861 001e FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 862 0022 2046     		mov	r0, r4
 863 0024 E9B2     		uxtb	r1, r5
 864 0026 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 865 002a 2046     		mov	r0, r4
 866 002c BDE87040 		pop	{r4, r5, r6, lr}
 867 0030 FFF7FEBF 		b	_ZN7TwoWire15endTransmissionEv
 868              	.L134:
 869              		.align	2
 870              	.L133:
 871 0034 00000000 		.word	Wire
 872              		.size	_ZN6SX15099writeWordEht, .-_ZN6SX15099writeWordEht
 873              		.section	.text._ZN6SX150913setBitsInWordEht,"ax",%progbits
 874              		.align	2
 875              		.global	_ZN6SX150913setBitsInWordEht
 876              		.thumb
 877              		.thumb_func
 878              		.type	_ZN6SX150913setBitsInWordEht, %function
 879              	_ZN6SX150913setBitsInWordEht:
 880              		@ args = 0, pretend = 0, frame = 0
 881              		@ frame_needed = 0, uses_anonymous_args = 0
 882 0000 70B5     		push	{r4, r5, r6, lr}
 883 0002 1646     		mov	r6, r2
 884 0004 0546     		mov	r5, r0
 885 0006 0C46     		mov	r4, r1
 886 0008 FFF7FEFF 		bl	_ZN6SX15098readWordEh
 887 000c 40EA0602 		orr	r2, r0, r6
 888 0010 2146     		mov	r1, r4
 889 0012 2846     		mov	r0, r5
 890 0014 92B2     		uxth	r2, r2
 891 0016 BDE87040 		pop	{r4, r5, r6, lr}
 892 001a FFF7FEBF 		b	_ZN6SX15099writeWordEht
 893              		.size	_ZN6SX150913setBitsInWordEht, .-_ZN6SX150913setBitsInWordEht
 894 001e 00BF     		.section	.text._ZN6SX150915clearBitsInWordEht,"ax",%progbits
 895              		.align	2
 896              		.global	_ZN6SX150915clearBitsInWordEht
 897              		.thumb
 898              		.thumb_func
 899              		.type	_ZN6SX150915clearBitsInWordEht, %function
 900              	_ZN6SX150915clearBitsInWordEht:
 901              		@ args = 0, pretend = 0, frame = 0
 902              		@ frame_needed = 0, uses_anonymous_args = 0
 903 0000 70B5     		push	{r4, r5, r6, lr}
 904 0002 1646     		mov	r6, r2
 905 0004 0546     		mov	r5, r0
 906 0006 0C46     		mov	r4, r1
 907 0008 FFF7FEFF 		bl	_ZN6SX15098readWordEh
 908 000c 20EA0602 		bic	r2, r0, r6
 909 0010 2146     		mov	r1, r4
 910 0012 2846     		mov	r0, r5
 911 0014 92B2     		uxth	r2, r2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 17


 912 0016 BDE87040 		pop	{r4, r5, r6, lr}
 913 001a FFF7FEBF 		b	_ZN6SX15099writeWordEht
 914              		.size	_ZN6SX150915clearBitsInWordEht, .-_ZN6SX150915clearBitsInWordEht
 915 001e 00BF     		.section	.text._ZN6SX150912digitalWriteEhb,"ax",%progbits
 916              		.align	2
 917              		.global	_ZN6SX150912digitalWriteEhb
 918              		.thumb
 919              		.thumb_func
 920              		.type	_ZN6SX150912digitalWriteEhb, %function
 921              	_ZN6SX150912digitalWriteEhb:
 922              		@ args = 0, pretend = 0, frame = 0
 923              		@ frame_needed = 0, uses_anonymous_args = 0
 924              		@ link register save eliminated.
 925 0000 0123     		movs	r3, #1
 926 0002 2AB9     		cbnz	r2, .L139
 927 0004 03FA01F2 		lsl	r2, r3, r1
 928 0008 92B2     		uxth	r2, r2
 929 000a 1021     		movs	r1, #16
 930 000c FFF7FEBF 		b	_ZN6SX150915clearBitsInWordEht
 931              	.L139:
 932 0010 03FA01F2 		lsl	r2, r3, r1
 933 0014 92B2     		uxth	r2, r2
 934 0016 1021     		movs	r1, #16
 935 0018 FFF7FEBF 		b	_ZN6SX150913setBitsInWordEht
 936              		.size	_ZN6SX150912digitalWriteEhb, .-_ZN6SX150912digitalWriteEhb
 937              		.section	.text._ZN6SX150921ledDriverInitMultipleEtbb,"ax",%progbits
 938              		.align	2
 939              		.global	_ZN6SX150921ledDriverInitMultipleEtbb
 940              		.thumb
 941              		.thumb_func
 942              		.type	_ZN6SX150921ledDriverInitMultipleEtbb, %function
 943              	_ZN6SX150921ledDriverInitMultipleEtbb:
 944              		@ args = 0, pretend = 0, frame = 0
 945              		@ frame_needed = 0, uses_anonymous_args = 0
 946 0000 70B5     		push	{r4, r5, r6, lr}
 947 0002 0D46     		mov	r5, r1
 948 0004 1646     		mov	r6, r2
 949 0006 0446     		mov	r4, r0
 950 0008 0A21     		movs	r1, #10
 951 000a 2A46     		mov	r2, r5
 952 000c 63B3     		cbz	r3, .L141
 953 000e FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht
 954              	.L142:
 955 0012 2046     		mov	r0, r4
 956 0014 0021     		movs	r1, #0
 957 0016 2A46     		mov	r2, r5
 958 0018 FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht
 959 001c 2046     		mov	r0, r4
 960 001e 0621     		movs	r1, #6
 961 0020 2A46     		mov	r2, r5
 962 0022 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 963 0026 2046     		mov	r0, r4
 964 0028 0821     		movs	r1, #8
 965 002a 2A46     		mov	r2, r5
 966 002c FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 967 0030 2046     		mov	r0, r4
 968 0032 0E21     		movs	r1, #14
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 18


 969 0034 2A46     		mov	r2, r5
 970 0036 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 971 003a 2046     		mov	r0, r4
 972 003c 1F21     		movs	r1, #31
 973 003e FFF7FEFF 		bl	_ZN6SX15098readByteEh
 974 0042 A6B9     		cbnz	r6, .L145
 975 0044 00F07702 		and	r2, r0, #119
 976              	.L144:
 977 0048 2046     		mov	r0, r4
 978 004a 1F21     		movs	r1, #31
 979 004c FFF7FEFF 		bl	_ZN6SX15099writeByteEhh
 980 0050 2046     		mov	r0, r4
 981 0052 2A46     		mov	r2, r5
 982 0054 2021     		movs	r1, #32
 983 0056 FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht
 984 005a 2046     		mov	r0, r4
 985 005c 2A46     		mov	r2, r5
 986 005e 1021     		movs	r1, #16
 987 0060 BDE87040 		pop	{r4, r5, r6, lr}
 988 0064 FFF7FEBF 		b	_ZN6SX150915clearBitsInWordEht
 989              	.L141:
 990 0068 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 991 006c D1E7     		b	.L142
 992              	.L145:
 993 006e 60F07702 		orn	r2, r0, #119
 994 0072 D2B2     		uxtb	r2, r2
 995 0074 E8E7     		b	.L144
 996              		.size	_ZN6SX150921ledDriverInitMultipleEtbb, .-_ZN6SX150921ledDriverInitMultipleEtbb
 997 0076 00BF     		.section	.text._ZN6SX150913ledDriverInitEhbb,"ax",%progbits
 998              		.align	2
 999              		.global	_ZN6SX150913ledDriverInitEhbb
 1000              		.thumb
 1001              		.thumb_func
 1002              		.type	_ZN6SX150913ledDriverInitEhbb, %function
 1003              	_ZN6SX150913ledDriverInitEhbb:
 1004              		@ args = 0, pretend = 0, frame = 0
 1005              		@ frame_needed = 0, uses_anonymous_args = 0
 1006              		@ link register save eliminated.
 1007 0000 10B4     		push	{r4}
 1008 0002 0124     		movs	r4, #1
 1009 0004 04FA01F1 		lsl	r1, r4, r1
 1010 0008 89B2     		uxth	r1, r1
 1011 000a 5DF8044B 		ldr	r4, [sp], #4
 1012 000e FFF7FEBF 		b	_ZN6SX150921ledDriverInitMultipleEtbb
 1013              		.size	_ZN6SX150913ledDriverInitEhbb, .-_ZN6SX150913ledDriverInitEhbb
 1014 0012 00BF     		.section	.text._ZN6SX150910setupBlinkEhhhhhhhbb,"ax",%progbits
 1015              		.align	2
 1016              		.global	_ZN6SX150910setupBlinkEhhhhhhhbb
 1017              		.thumb
 1018              		.thumb_func
 1019              		.type	_ZN6SX150910setupBlinkEhhhhhhhbb, %function
 1020              	_ZN6SX150910setupBlinkEhhhhhhhbb:
 1021              		@ args = 24, pretend = 0, frame = 0
 1022              		@ frame_needed = 0, uses_anonymous_args = 0
 1023 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1024 0004 0C46     		mov	r4, r1
 1025 0006 0121     		movs	r1, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 19


 1026 0008 A140     		lsls	r1, r1, r4
 1027 000a 9346     		mov	fp, r2
 1028 000c 9846     		mov	r8, r3
 1029 000e 89B2     		uxth	r1, r1
 1030 0010 9DF83820 		ldrb	r2, [sp, #56]	@ zero_extendqisi2
 1031 0014 9DF83C30 		ldrb	r3, [sp, #60]	@ zero_extendqisi2
 1032 0018 9DF82860 		ldrb	r6, [sp, #40]	@ zero_extendqisi2
 1033 001c 9DF82C70 		ldrb	r7, [sp, #44]	@ zero_extendqisi2
 1034 0020 9DF830A0 		ldrb	r10, [sp, #48]	@ zero_extendqisi2
 1035 0024 9DF83490 		ldrb	r9, [sp, #52]	@ zero_extendqisi2
 1036 0028 0546     		mov	r5, r0
 1037 002a FFF7FEFF 		bl	_ZN6SX150921ledDriverInitMultipleEtbb
 1038 002e 174B     		ldr	r3, .L153
 1039 0030 0BF01F02 		and	r2, fp, #31
 1040 0034 195D     		ldrb	r1, [r3, r4]	@ zero_extendqisi2
 1041 0036 2846     		mov	r0, r5
 1042 0038 FFF7FEFF 		bl	_ZN6SX15099writeByteEhh
 1043 003c 144B     		ldr	r3, .L153+4
 1044 003e 08F01F02 		and	r2, r8, #31
 1045 0042 07F00707 		and	r7, r7, #7
 1046 0046 195D     		ldrb	r1, [r3, r4]	@ zero_extendqisi2
 1047 0048 47EAC202 		orr	r2, r7, r2, lsl #3
 1048 004c 2846     		mov	r0, r5
 1049 004e FFF7FEFF 		bl	_ZN6SX15099writeByteEhh
 1050 0052 104B     		ldr	r3, .L153+8
 1051 0054 3246     		mov	r2, r6
 1052 0056 195D     		ldrb	r1, [r3, r4]	@ zero_extendqisi2
 1053 0058 2846     		mov	r0, r5
 1054 005a FFF7FEFF 		bl	_ZN6SX15099writeByteEhh
 1055 005e 0E4B     		ldr	r3, .L153+12
 1056 0060 195D     		ldrb	r1, [r3, r4]	@ zero_extendqisi2
 1057 0062 FF29     		cmp	r1, #255
 1058 0064 04D0     		beq	.L148
 1059 0066 0AF01F02 		and	r2, r10, #31
 1060 006a 2846     		mov	r0, r5
 1061 006c FFF7FEFF 		bl	_ZN6SX15099writeByteEhh
 1062              	.L148:
 1063 0070 0A4B     		ldr	r3, .L153+16
 1064 0072 195D     		ldrb	r1, [r3, r4]	@ zero_extendqisi2
 1065 0074 FF29     		cmp	r1, #255
 1066 0076 06D0     		beq	.L147
 1067 0078 2846     		mov	r0, r5
 1068 007a 09F01F02 		and	r2, r9, #31
 1069 007e BDE8F84F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1070 0082 FFF7FEBF 		b	_ZN6SX15099writeByteEhh
 1071              	.L147:
 1072 0086 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1073              	.L154:
 1074 008a 00BF     		.align	2
 1075              	.L153:
 1076 008c 00000000 		.word	.LANCHOR1
 1077 0090 00000000 		.word	.LANCHOR2
 1078 0094 00000000 		.word	.LANCHOR0
 1079 0098 00000000 		.word	.LANCHOR3
 1080 009c 00000000 		.word	.LANCHOR4
 1081              		.size	_ZN6SX150910setupBlinkEhhhhhhhbb, .-_ZN6SX150910setupBlinkEhhhhhhhbb
 1082              		.section	.text._ZN6SX15095blinkEhmmhh,"ax",%progbits
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 20


 1083              		.align	2
 1084              		.global	_ZN6SX15095blinkEhmmhh
 1085              		.thumb
 1086              		.thumb_func
 1087              		.type	_ZN6SX15095blinkEhmmhh, %function
 1088              	_ZN6SX15095blinkEhmmhh:
 1089              		@ args = 8, pretend = 0, frame = 0
 1090              		@ frame_needed = 0, uses_anonymous_args = 0
 1091 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1092 0004 0E46     		mov	r6, r1
 1093 0006 86B0     		sub	sp, sp, #24
 1094 0008 1146     		mov	r1, r2
 1095 000a 1C46     		mov	r4, r3
 1096 000c 0546     		mov	r5, r0
 1097 000e FFF7FEFF 		bl	_ZN6SX150921calculateLEDTRegisterEi
 1098 0012 2146     		mov	r1, r4
 1099 0014 8046     		mov	r8, r0
 1100 0016 2846     		mov	r0, r5
 1101 0018 FFF7FEFF 		bl	_ZN6SX150921calculateLEDTRegisterEi
 1102 001c 0024     		movs	r4, #0
 1103 001e 9DF83020 		ldrb	r2, [sp, #48]	@ zero_extendqisi2
 1104 0022 9DF83470 		ldrb	r7, [sp, #52]	@ zero_extendqisi2
 1105 0026 0092     		str	r2, [sp]
 1106 0028 0346     		mov	r3, r0
 1107 002a 3146     		mov	r1, r6
 1108 002c 4246     		mov	r2, r8
 1109 002e 2846     		mov	r0, r5
 1110 0030 0197     		str	r7, [sp, #4]
 1111 0032 0294     		str	r4, [sp, #8]
 1112 0034 0394     		str	r4, [sp, #12]
 1113 0036 0494     		str	r4, [sp, #16]
 1114 0038 0594     		str	r4, [sp, #20]
 1115 003a FFF7FEFF 		bl	_ZN6SX150910setupBlinkEhhhhhhhbb
 1116 003e 06B0     		add	sp, sp, #24
 1117              		@ sp needed
 1118 0040 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1119              		.size	_ZN6SX15095blinkEhmmhh, .-_ZN6SX15095blinkEhmmhh
 1120              		.section	.text._ZN6SX15097breatheEhmmmmhhbb,"ax",%progbits
 1121              		.align	2
 1122              		.global	_ZN6SX15097breatheEhmmmmhhbb
 1123              		.thumb
 1124              		.thumb_func
 1125              		.type	_ZN6SX15097breatheEhmmmmhhbb, %function
 1126              	_ZN6SX15097breatheEhmmmmhhbb:
 1127              		@ args = 24, pretend = 0, frame = 8
 1128              		@ frame_needed = 0, uses_anonymous_args = 0
 1129 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1130 0004 83B0     		sub	sp, sp, #12
 1131 0006 8946     		mov	r9, r1
 1132 0008 9DF83C60 		ldrb	r6, [sp, #60]	@ zero_extendqisi2
 1133 000c 9DF84040 		ldrb	r4, [sp, #64]	@ zero_extendqisi2
 1134 0010 0094     		str	r4, [sp]
 1135 0012 062E     		cmp	r6, #6
 1136 0014 9DF84440 		ldrb	r4, [sp, #68]	@ zero_extendqisi2
 1137 0018 0194     		str	r4, [sp, #4]
 1138 001a 1146     		mov	r1, r2
 1139 001c 88BF     		it	hi
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 21


 1140 001e 0726     		movhi	r6, #7
 1141 0020 0446     		mov	r4, r0
 1142 0022 9A46     		mov	r10, r3
 1143 0024 FFF7FEFF 		bl	_ZN6SX150921calculateLEDTRegisterEi
 1144 0028 5146     		mov	r1, r10
 1145 002a 8346     		mov	fp, r0
 1146 002c 2046     		mov	r0, r4
 1147 002e FFF7FEFF 		bl	_ZN6SX150921calculateLEDTRegisterEi
 1148 0032 9DF83850 		ldrb	r5, [sp, #56]	@ zero_extendqisi2
 1149 0036 0C9F     		ldr	r7, [sp, #48]
 1150 0038 DDF83480 		ldr	r8, [sp, #52]
 1151 003c 8246     		mov	r10, r0
 1152 003e 3946     		mov	r1, r7
 1153 0040 2A46     		mov	r2, r5
 1154 0042 3346     		mov	r3, r6
 1155 0044 2046     		mov	r0, r4
 1156 0046 FFF7FEFF 		bl	_ZN6SX150922calculateSlopeRegisterEihh
 1157 004a 4146     		mov	r1, r8
 1158 004c 0746     		mov	r7, r0
 1159 004e 2A46     		mov	r2, r5
 1160 0050 3346     		mov	r3, r6
 1161 0052 2046     		mov	r0, r4
 1162 0054 FFF7FEFF 		bl	_ZN6SX150922calculateSlopeRegisterEihh
 1163 0058 0099     		ldr	r1, [sp]
 1164 005a 1091     		str	r1, [sp, #64]
 1165 005c 0199     		ldr	r1, [sp, #4]
 1166 005e 0F90     		str	r0, [sp, #60]
 1167 0060 1191     		str	r1, [sp, #68]
 1168 0062 5A46     		mov	r2, fp
 1169 0064 5346     		mov	r3, r10
 1170 0066 2046     		mov	r0, r4
 1171 0068 4946     		mov	r1, r9
 1172 006a 0E97     		str	r7, [sp, #56]
 1173 006c 0C95     		str	r5, [sp, #48]
 1174 006e 0D96     		str	r6, [sp, #52]
 1175 0070 03B0     		add	sp, sp, #12
 1176              		@ sp needed
 1177 0072 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1178 0076 FFF7FEBF 		b	_ZN6SX150910setupBlinkEhhhhhhhbb
 1179              		.size	_ZN6SX15097breatheEhmmmmhhbb, .-_ZN6SX15097breatheEhmmmmhhbb
 1180 007a 00BF     		.section	.text._ZN6SX150915pinModeMultipleEt7PinMode,"ax",%progbits
 1181              		.align	2
 1182              		.global	_ZN6SX150915pinModeMultipleEt7PinMode
 1183              		.thumb
 1184              		.thumb_func
 1185              		.type	_ZN6SX150915pinModeMultipleEt7PinMode, %function
 1186              	_ZN6SX150915pinModeMultipleEt7PinMode:
 1187              		@ args = 0, pretend = 0, frame = 0
 1188              		@ frame_needed = 0, uses_anonymous_args = 0
 1189 0000 70B5     		push	{r4, r5, r6, lr}
 1190 0002 0546     		mov	r5, r0
 1191 0004 0C46     		mov	r4, r1
 1192 0006 0B2A     		cmp	r2, #11
 1193 0008 00F2CD80 		bhi	.L161
 1194 000c DFE812F0 		tbh	[pc, r2, lsl #1]
 1195              	.L164:
 1196 0010 1200     		.2byte	(.L163-.L164)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 22


 1197 0012 2C00     		.2byte	(.L165-.L164)/2
 1198 0014 4600     		.2byte	(.L166-.L164)/2
 1199 0016 6000     		.2byte	(.L167-.L164)/2
 1200 0018 7F00     		.2byte	(.L168-.L164)/2
 1201 001a CB00     		.2byte	(.L161-.L164)/2
 1202 001c CB00     		.2byte	(.L161-.L164)/2
 1203 001e 9300     		.2byte	(.L169-.L164)/2
 1204 0020 9300     		.2byte	(.L169-.L164)/2
 1205 0022 9900     		.2byte	(.L170-.L164)/2
 1206 0024 B200     		.2byte	(.L171-.L164)/2
 1207 0026 0C00     		.2byte	(.L172-.L164)/2
 1208              	.L172:
 1209 0028 0022     		movs	r2, #0
 1210 002a 0123     		movs	r3, #1
 1211 002c BDE87040 		pop	{r4, r5, r6, lr}
 1212 0030 FFF7FEBF 		b	_ZN6SX150921ledDriverInitMultipleEtbb
 1213              	.L163:
 1214 0034 2246     		mov	r2, r4
 1215 0036 2021     		movs	r1, #32
 1216 0038 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 1217 003c 2846     		mov	r0, r5
 1218 003e 2246     		mov	r2, r4
 1219 0040 0021     		movs	r1, #0
 1220 0042 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 1221 0046 2846     		mov	r0, r5
 1222 0048 2246     		mov	r2, r4
 1223 004a 0E21     		movs	r1, #14
 1224 004c FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht
 1225 0050 2846     		mov	r0, r5
 1226 0052 2246     		mov	r2, r4
 1227 0054 0621     		movs	r1, #6
 1228 0056 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 1229 005a 2846     		mov	r0, r5
 1230 005c 2246     		mov	r2, r4
 1231 005e 0821     		movs	r1, #8
 1232 0060 BDE87040 		pop	{r4, r5, r6, lr}
 1233 0064 FFF7FEBF 		b	_ZN6SX150915clearBitsInWordEht
 1234              	.L165:
 1235 0068 2246     		mov	r2, r4
 1236 006a 2021     		movs	r1, #32
 1237 006c FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 1238 0070 2846     		mov	r0, r5
 1239 0072 2246     		mov	r2, r4
 1240 0074 0021     		movs	r1, #0
 1241 0076 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 1242 007a 2846     		mov	r0, r5
 1243 007c 2246     		mov	r2, r4
 1244 007e 0E21     		movs	r1, #14
 1245 0080 FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht
 1246 0084 2846     		mov	r0, r5
 1247 0086 2246     		mov	r2, r4
 1248 0088 0821     		movs	r1, #8
 1249 008a FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 1250 008e 2846     		mov	r0, r5
 1251 0090 2246     		mov	r2, r4
 1252 0092 0621     		movs	r1, #6
 1253 0094 BDE87040 		pop	{r4, r5, r6, lr}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 23


 1254 0098 FFF7FEBF 		b	_ZN6SX150913setBitsInWordEht
 1255              	.L166:
 1256 009c 2246     		mov	r2, r4
 1257 009e 2021     		movs	r1, #32
 1258 00a0 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 1259 00a4 2846     		mov	r0, r5
 1260 00a6 2246     		mov	r2, r4
 1261 00a8 0021     		movs	r1, #0
 1262 00aa FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 1263 00ae 2846     		mov	r0, r5
 1264 00b0 2246     		mov	r2, r4
 1265 00b2 0E21     		movs	r1, #14
 1266 00b4 FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht
 1267 00b8 2846     		mov	r0, r5
 1268 00ba 2246     		mov	r2, r4
 1269 00bc 0621     		movs	r1, #6
 1270 00be FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 1271 00c2 2846     		mov	r0, r5
 1272 00c4 2246     		mov	r2, r4
 1273 00c6 0821     		movs	r1, #8
 1274 00c8 BDE87040 		pop	{r4, r5, r6, lr}
 1275 00cc FFF7FEBF 		b	_ZN6SX150913setBitsInWordEht
 1276              	.L167:
 1277 00d0 2021     		movs	r1, #32
 1278 00d2 2246     		mov	r2, r4
 1279 00d4 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 1280 00d8 2846     		mov	r0, r5
 1281 00da 0621     		movs	r1, #6
 1282 00dc 2246     		mov	r2, r4
 1283 00de FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 1284 00e2 2846     		mov	r0, r5
 1285 00e4 0821     		movs	r1, #8
 1286 00e6 2246     		mov	r2, r4
 1287 00e8 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 1288 00ec 2846     		mov	r0, r5
 1289 00ee 1021     		movs	r1, #16
 1290 00f0 2246     		mov	r2, r4
 1291 00f2 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 1292              	.L173:
 1293 00f6 2846     		mov	r0, r5
 1294 00f8 0A21     		movs	r1, #10
 1295 00fa 2246     		mov	r2, r4
 1296 00fc FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 1297              	.L174:
 1298 0100 2846     		mov	r0, r5
 1299 0102 2246     		mov	r2, r4
 1300 0104 0E21     		movs	r1, #14
 1301 0106 BDE87040 		pop	{r4, r5, r6, lr}
 1302 010a FFF7FEBF 		b	_ZN6SX150915clearBitsInWordEht
 1303              	.L168:
 1304 010e 2246     		mov	r2, r4
 1305 0110 2021     		movs	r1, #32
 1306 0112 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 1307 0116 2846     		mov	r0, r5
 1308 0118 2246     		mov	r2, r4
 1309 011a 0621     		movs	r1, #6
 1310 011c FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 24


 1311 0120 2846     		mov	r0, r5
 1312 0122 2246     		mov	r2, r4
 1313 0124 0821     		movs	r1, #8
 1314 0126 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 1315 012a 2846     		mov	r0, r5
 1316 012c 1021     		movs	r1, #16
 1317 012e 2246     		mov	r2, r4
 1318 0130 FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht
 1319 0134 DFE7     		b	.L173
 1320              	.L169:
 1321 0136 0022     		movs	r2, #0
 1322 0138 1346     		mov	r3, r2
 1323 013a BDE87040 		pop	{r4, r5, r6, lr}
 1324 013e FFF7FEBF 		b	_ZN6SX150921ledDriverInitMultipleEtbb
 1325              	.L170:
 1326 0142 2246     		mov	r2, r4
 1327 0144 2021     		movs	r1, #32
 1328 0146 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 1329 014a 2846     		mov	r0, r5
 1330 014c 2246     		mov	r2, r4
 1331 014e 0621     		movs	r1, #6
 1332 0150 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 1333 0154 2846     		mov	r0, r5
 1334 0156 2246     		mov	r2, r4
 1335 0158 0821     		movs	r1, #8
 1336 015a FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 1337 015e 2846     		mov	r0, r5
 1338 0160 2246     		mov	r2, r4
 1339 0162 1021     		movs	r1, #16
 1340 0164 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 1341 0168 2846     		mov	r0, r5
 1342 016a 0A21     		movs	r1, #10
 1343 016c 2246     		mov	r2, r4
 1344 016e FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht
 1345 0172 C5E7     		b	.L174
 1346              	.L171:
 1347 0174 2246     		mov	r2, r4
 1348 0176 2021     		movs	r1, #32
 1349 0178 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 1350 017c 2846     		mov	r0, r5
 1351 017e 2246     		mov	r2, r4
 1352 0180 0621     		movs	r1, #6
 1353 0182 FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 1354 0186 2846     		mov	r0, r5
 1355 0188 2246     		mov	r2, r4
 1356 018a 0821     		movs	r1, #8
 1357 018c FFF7FEFF 		bl	_ZN6SX150915clearBitsInWordEht
 1358 0190 2846     		mov	r0, r5
 1359 0192 2246     		mov	r2, r4
 1360 0194 1021     		movs	r1, #16
 1361 0196 FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht
 1362 019a 2846     		mov	r0, r5
 1363 019c 0A21     		movs	r1, #10
 1364 019e 2246     		mov	r2, r4
 1365 01a0 FFF7FEFF 		bl	_ZN6SX150913setBitsInWordEht
 1366 01a4 ACE7     		b	.L174
 1367              	.L161:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 25


 1368 01a6 70BD     		pop	{r4, r5, r6, pc}
 1369              		.size	_ZN6SX150915pinModeMultipleEt7PinMode, .-_ZN6SX150915pinModeMultipleEt7PinMode
 1370              		.section	.text._ZN6SX15097pinModeEh7PinMode,"ax",%progbits
 1371              		.align	2
 1372              		.global	_ZN6SX15097pinModeEh7PinMode
 1373              		.thumb
 1374              		.thumb_func
 1375              		.type	_ZN6SX15097pinModeEh7PinMode, %function
 1376              	_ZN6SX15097pinModeEh7PinMode:
 1377              		@ args = 0, pretend = 0, frame = 0
 1378              		@ frame_needed = 0, uses_anonymous_args = 0
 1379              		@ link register save eliminated.
 1380 0000 0123     		movs	r3, #1
 1381 0002 03FA01F1 		lsl	r1, r3, r1
 1382 0006 89B2     		uxth	r1, r1
 1383 0008 FFF7FEBF 		b	_ZN6SX150915pinModeMultipleEt7PinMode
 1384              		.size	_ZN6SX15097pinModeEh7PinMode, .-_ZN6SX15097pinModeEh7PinMode
 1385              		.section	.text._ZN6SX150911debouncePinEh,"ax",%progbits
 1386              		.align	2
 1387              		.global	_ZN6SX150911debouncePinEh
 1388              		.thumb
 1389              		.thumb_func
 1390              		.type	_ZN6SX150911debouncePinEh, %function
 1391              	_ZN6SX150911debouncePinEh:
 1392              		@ args = 0, pretend = 0, frame = 0
 1393              		@ frame_needed = 0, uses_anonymous_args = 0
 1394 0000 38B5     		push	{r3, r4, r5, lr}
 1395 0002 0D46     		mov	r5, r1
 1396 0004 2321     		movs	r1, #35
 1397 0006 0446     		mov	r4, r0
 1398 0008 FFF7FEFF 		bl	_ZN6SX15098readWordEh
 1399 000c 0123     		movs	r3, #1
 1400 000e 03FA05F5 		lsl	r5, r3, r5
 1401 0012 40EA0502 		orr	r2, r0, r5
 1402 0016 92B2     		uxth	r2, r2
 1403 0018 2046     		mov	r0, r4
 1404 001a 2321     		movs	r1, #35
 1405 001c BDE83840 		pop	{r3, r4, r5, lr}
 1406 0020 FFF7FEBF 		b	_ZN6SX15099writeWordEht
 1407              		.size	_ZN6SX150911debouncePinEh, .-_ZN6SX150911debouncePinEh
 1408              		.section	.text._ZN6SX150914debounceKeypadEhhh,"ax",%progbits
 1409              		.align	2
 1410              		.global	_ZN6SX150914debounceKeypadEhhh
 1411              		.thumb
 1412              		.thumb_func
 1413              		.type	_ZN6SX150914debounceKeypadEhhh, %function
 1414              	_ZN6SX150914debounceKeypadEhhh:
 1415              		@ args = 0, pretend = 0, frame = 0
 1416              		@ frame_needed = 0, uses_anonymous_args = 0
 1417 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1418 0002 1646     		mov	r6, r2
 1419 0004 1F46     		mov	r7, r3
 1420 0006 0546     		mov	r5, r0
 1421 0008 0024     		movs	r4, #0
 1422 000a FFF7FEFF 		bl	_ZN6SX150912debounceTimeEh
 1423 000e 3EB1     		cbz	r6, .L180
 1424              	.L181:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 26


 1425 0010 2146     		mov	r1, r4
 1426 0012 0134     		adds	r4, r4, #1
 1427 0014 2846     		mov	r0, r5
 1428 0016 E4B2     		uxtb	r4, r4
 1429 0018 FFF7FEFF 		bl	_ZN6SX150911debouncePinEh
 1430 001c B442     		cmp	r4, r6
 1431 001e F7D1     		bne	.L181
 1432              	.L180:
 1433 0020 FE1D     		adds	r6, r7, #7
 1434 0022 0024     		movs	r4, #0
 1435              	.L179:
 1436 0024 2146     		mov	r1, r4
 1437 0026 0134     		adds	r4, r4, #1
 1438 0028 2846     		mov	r0, r5
 1439 002a E4B2     		uxtb	r4, r4
 1440 002c FFF7FEFF 		bl	_ZN6SX150911debouncePinEh
 1441 0030 B442     		cmp	r4, r6
 1442 0032 F7DD     		ble	.L179
 1443 0034 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1444              		.size	_ZN6SX150914debounceKeypadEhhh, .-_ZN6SX150914debounceKeypadEhhh
 1445 0036 00BF     		.section	.text._ZN6SX150915interruptSourceEb,"ax",%progbits
 1446              		.align	2
 1447              		.global	_ZN6SX150915interruptSourceEb
 1448              		.thumb
 1449              		.thumb_func
 1450              		.type	_ZN6SX150915interruptSourceEb, %function
 1451              	_ZN6SX150915interruptSourceEb:
 1452              		@ args = 0, pretend = 0, frame = 0
 1453              		@ frame_needed = 0, uses_anonymous_args = 0
 1454 0000 70B5     		push	{r4, r5, r6, lr}
 1455 0002 0D46     		mov	r5, r1
 1456 0004 1821     		movs	r1, #24
 1457 0006 0646     		mov	r6, r0
 1458 0008 FFF7FEFF 		bl	_ZN6SX15098readWordEh
 1459 000c 0446     		mov	r4, r0
 1460 000e 2DB1     		cbz	r5, .L184
 1461 0010 3046     		mov	r0, r6
 1462 0012 1821     		movs	r1, #24
 1463 0014 4FF6FF72 		movw	r2, #65535
 1464 0018 FFF7FEFF 		bl	_ZN6SX15099writeWordEht
 1465              	.L184:
 1466 001c 2046     		mov	r0, r4
 1467 001e 70BD     		pop	{r4, r5, r6, pc}
 1468              		.size	_ZN6SX150915interruptSourceEb, .-_ZN6SX150915interruptSourceEb
 1469              		.section	.text._ZN6SX15096keypadEhhjhh,"ax",%progbits
 1470              		.align	2
 1471              		.global	_ZN6SX15096keypadEhhjhh
 1472              		.thumb
 1473              		.thumb_func
 1474              		.type	_ZN6SX15096keypadEhhjhh, %function
 1475              	_ZN6SX15096keypadEhhjhh:
 1476              		@ args = 8, pretend = 0, frame = 0
 1477              		@ frame_needed = 0, uses_anonymous_args = 0
 1478 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1479 0004 0D46     		mov	r5, r1
 1480 0006 0E21     		movs	r1, #14
 1481 0008 9246     		mov	r10, r2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 27


 1482 000a 9946     		mov	r9, r3
 1483 000c 0646     		mov	r6, r0
 1484 000e 9DF82080 		ldrb	r8, [sp, #32]	@ zero_extendqisi2
 1485 0012 9DF82470 		ldrb	r7, [sp, #36]	@ zero_extendqisi2
 1486 0016 FFF7FEFF 		bl	_ZN6SX15098readWordEh
 1487 001a 0446     		mov	r4, r0
 1488 001c 55B1     		cbz	r5, .L189
 1489 001e 0023     		movs	r3, #0
 1490 0020 0121     		movs	r1, #1
 1491              	.L190:
 1492 0022 01FA03F2 		lsl	r2, r1, r3
 1493 0026 0133     		adds	r3, r3, #1
 1494 0028 24EA0204 		bic	r4, r4, r2
 1495 002c DAB2     		uxtb	r2, r3
 1496 002e 9542     		cmp	r5, r2
 1497 0030 A4B2     		uxth	r4, r4
 1498 0032 F6D8     		bhi	.L190
 1499              	.L189:
 1500 0034 4FEA4A01 		lsl	r1, r10, #1
 1501 0038 0829     		cmp	r1, #8
 1502 003a 0BDD     		ble	.L191
 1503 003c 0822     		movs	r2, #8
 1504 003e 1346     		mov	r3, r2
 1505 0040 0120     		movs	r0, #1
 1506              	.L192:
 1507 0042 0133     		adds	r3, r3, #1
 1508 0044 00FA02F2 		lsl	r2, r0, r2
 1509 0048 DBB2     		uxtb	r3, r3
 1510 004a 1443     		orrs	r4, r4, r2
 1511 004c 8B42     		cmp	r3, r1
 1512 004e A4B2     		uxth	r4, r4
 1513 0050 1A46     		mov	r2, r3
 1514 0052 F6DB     		blt	.L192
 1515              	.L191:
 1516 0054 2246     		mov	r2, r4
 1517 0056 3046     		mov	r0, r6
 1518 0058 0E21     		movs	r1, #14
 1519 005a FFF7FEFF 		bl	_ZN6SX15099writeWordEht
 1520 005e 3046     		mov	r0, r6
 1521 0060 0B21     		movs	r1, #11
 1522 0062 FFF7FEFF 		bl	_ZN6SX15098readByteEh
 1523 0066 0246     		mov	r2, r0
 1524 0068 4DB1     		cbz	r5, .L193
 1525 006a 0024     		movs	r4, #0
 1526 006c 0121     		movs	r1, #1
 1527              	.L194:
 1528 006e 01FA04F3 		lsl	r3, r1, r4
 1529 0072 0134     		adds	r4, r4, #1
 1530 0074 1A43     		orrs	r2, r2, r3
 1531 0076 E3B2     		uxtb	r3, r4
 1532 0078 9D42     		cmp	r5, r3
 1533 007a D2B2     		uxtb	r2, r2
 1534 007c F7D8     		bhi	.L194
 1535              	.L193:
 1536 007e 3046     		mov	r0, r6
 1537 0080 0B21     		movs	r1, #11
 1538 0082 FFF7FEFF 		bl	_ZN6SX15099writeByteEhh
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 28


 1539 0086 3046     		mov	r0, r6
 1540 0088 0621     		movs	r1, #6
 1541 008a FFF7FEFF 		bl	_ZN6SX15098readByteEh
 1542 008e 0246     		mov	r2, r0
 1543 0090 BAF1000F 		cmp	r10, #0
 1544 0094 09D0     		beq	.L195
 1545 0096 0024     		movs	r4, #0
 1546 0098 0121     		movs	r1, #1
 1547              	.L196:
 1548 009a 01FA04F3 		lsl	r3, r1, r4
 1549 009e 0134     		adds	r4, r4, #1
 1550 00a0 1A43     		orrs	r2, r2, r3
 1551 00a2 E3B2     		uxtb	r3, r4
 1552 00a4 9A45     		cmp	r10, r3
 1553 00a6 D2B2     		uxtb	r2, r2
 1554 00a8 F7D8     		bhi	.L196
 1555              	.L195:
 1556 00aa 3046     		mov	r0, r6
 1557 00ac 0621     		movs	r1, #6
 1558 00ae FFF7FEFF 		bl	_ZN6SX15099writeByteEhh
 1559 00b2 3F2F     		cmp	r7, #63
 1560 00b4 0CD8     		bhi	.L203
 1561 00b6 012F     		cmp	r7, #1
 1562 00b8 38BF     		it	cc
 1563 00ba 0127     		movcc	r7, #1
 1564 00bc B8F1800F 		cmp	r8, #128
 1565 00c0 0BD2     		bcs	.L205
 1566              	.L219:
 1567 00c2 B8F1010F 		cmp	r8, #1
 1568 00c6 2FD8     		bhi	.L218
 1569 00c8 4FF00108 		mov	r8, #1
 1570 00cc 0027     		movs	r7, #0
 1571 00ce 06E0     		b	.L199
 1572              	.L203:
 1573 00d0 B8F1800F 		cmp	r8, #128
 1574 00d4 4FF04007 		mov	r7, #64
 1575 00d8 F3D3     		bcc	.L219
 1576              	.L205:
 1577 00da 4FF08008 		mov	r8, #128
 1578              	.L199:
 1579 00de 5346     		mov	r3, r10
 1580 00e0 3946     		mov	r1, r7
 1581 00e2 3046     		mov	r0, r6
 1582 00e4 2A46     		mov	r2, r5
 1583 00e6 FFF7FEFF 		bl	_ZN6SX150914debounceKeypadEhhh
 1584 00ea 0723     		movs	r3, #7
 1585              	.L202:
 1586 00ec 28FA03F2 		lsr	r2, r8, r3
 1587 00f0 D207     		lsls	r2, r2, #31
 1588 00f2 D9B2     		uxtb	r1, r3
 1589 00f4 02D4     		bmi	.L201
 1590 00f6 013B     		subs	r3, r3, #1
 1591 00f8 F8D1     		bne	.L202
 1592 00fa 1946     		mov	r1, r3
 1593              	.L201:
 1594 00fc 41EA0902 		orr	r2, r1, r9
 1595 0100 3046     		mov	r0, r6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 29


 1596 0102 D2B2     		uxtb	r2, r2
 1597 0104 2521     		movs	r1, #37
 1598 0106 013D     		subs	r5, r5, #1
 1599 0108 0AF1FF3A 		add	r10, r10, #-1
 1600 010c FFF7FEFF 		bl	_ZN6SX15099writeByteEhh
 1601 0110 0AF0070A 		and	r10, r10, #7
 1602 0114 05F00702 		and	r2, r5, #7
 1603 0118 4AEAC202 		orr	r2, r10, r2, lsl #3
 1604 011c 3046     		mov	r0, r6
 1605 011e 2621     		movs	r1, #38
 1606 0120 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 1607 0124 FFF7FEBF 		b	_ZN6SX15099writeByteEhh
 1608              	.L218:
 1609 0128 B845     		cmp	r8, r7
 1610 012a D8D8     		bhi	.L199
 1611 012c 4FEA5807 		lsr	r7, r8, #1
 1612 0130 D5E7     		b	.L199
 1613              		.size	_ZN6SX15096keypadEhhjhh, .-_ZN6SX15096keypadEhhjhh
 1614 0132 00BF     		.section	.text._ZN6SX15095beginEh,"ax",%progbits
 1615              		.align	2
 1616              		.global	_ZN6SX15095beginEh
 1617              		.thumb
 1618              		.thumb_func
 1619              		.type	_ZN6SX15095beginEh, %function
 1620              	_ZN6SX15095beginEh:
 1621              		@ args = 0, pretend = 0, frame = 0
 1622              		@ frame_needed = 0, uses_anonymous_args = 0
 1623 0000 10B5     		push	{r4, lr}
 1624 0002 0446     		mov	r4, r0
 1625 0004 0D48     		ldr	r0, .L224
 1626 0006 2170     		strb	r1, [r4]
 1627 0008 FFF7FEFF 		bl	_ZN7TwoWire5beginEv
 1628 000c 2046     		mov	r0, r4
 1629 000e FFF7FEFF 		bl	_ZN6SX15095resetEv
 1630 0012 2046     		mov	r0, r4
 1631 0014 1321     		movs	r1, #19
 1632 0016 FFF7FEFF 		bl	_ZN6SX15098readWordEh
 1633 001a B0F57F4F 		cmp	r0, #65280
 1634 001e 01D0     		beq	.L223
 1635 0020 0020     		movs	r0, #0
 1636 0022 10BD     		pop	{r4, pc}
 1637              	.L223:
 1638 0024 2046     		mov	r0, r4
 1639 0026 0521     		movs	r1, #5
 1640 0028 FFF7FEFF 		bl	_ZN6SX15095clockEh
 1641 002c 2046     		mov	r0, r4
 1642 002e 6921     		movs	r1, #105
 1643 0030 4FF6FF72 		movw	r2, #65535
 1644 0034 FFF7FEFF 		bl	_ZN6SX15099writeWordEht
 1645 0038 0120     		movs	r0, #1
 1646 003a 10BD     		pop	{r4, pc}
 1647              	.L225:
 1648              		.align	2
 1649              	.L224:
 1650 003c 00000000 		.word	Wire
 1651              		.size	_ZN6SX15095beginEh, .-_ZN6SX15095beginEh
 1652              		.section	.text._ZN6SX150914checkInterruptEh,"ax",%progbits
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 30


 1653              		.align	2
 1654              		.global	_ZN6SX150914checkInterruptEh
 1655              		.thumb
 1656              		.thumb_func
 1657              		.type	_ZN6SX150914checkInterruptEh, %function
 1658              	_ZN6SX150914checkInterruptEh:
 1659              		@ args = 0, pretend = 0, frame = 0
 1660              		@ frame_needed = 0, uses_anonymous_args = 0
 1661 0000 10B5     		push	{r4, lr}
 1662 0002 0C46     		mov	r4, r1
 1663 0004 1821     		movs	r1, #24
 1664 0006 FFF7FEFF 		bl	_ZN6SX15098readWordEh
 1665 000a E040     		lsrs	r0, r0, r4
 1666 000c 00F00100 		and	r0, r0, #1
 1667 0010 10BD     		pop	{r4, pc}
 1668              		.size	_ZN6SX150914checkInterruptEh, .-_ZN6SX150914checkInterruptEh
 1669 0012 00BF     		.section	.text._ZN6SX150910writeDwordEhm,"ax",%progbits
 1670              		.align	2
 1671              		.global	_ZN6SX150910writeDwordEhm
 1672              		.thumb
 1673              		.thumb_func
 1674              		.type	_ZN6SX150910writeDwordEhm, %function
 1675              	_ZN6SX150910writeDwordEhm:
 1676              		@ args = 0, pretend = 0, frame = 0
 1677              		@ frame_needed = 0, uses_anonymous_args = 0
 1678 0000 70B5     		push	{r4, r5, r6, lr}
 1679 0002 114C     		ldr	r4, .L228
 1680 0004 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 1681 0006 0E46     		mov	r6, r1
 1682 0008 2046     		mov	r0, r4
 1683 000a 1946     		mov	r1, r3
 1684 000c 1546     		mov	r5, r2
 1685 000e FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 1686 0012 3146     		mov	r1, r6
 1687 0014 2046     		mov	r0, r4
 1688 0016 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 1689 001a 290E     		lsrs	r1, r5, #24
 1690 001c 2046     		mov	r0, r4
 1691 001e FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 1692 0022 C5F30741 		ubfx	r1, r5, #16, #8
 1693 0026 2046     		mov	r0, r4
 1694 0028 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 1695 002c C5F30721 		ubfx	r1, r5, #8, #8
 1696 0030 2046     		mov	r0, r4
 1697 0032 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 1698 0036 2046     		mov	r0, r4
 1699 0038 E9B2     		uxtb	r1, r5
 1700 003a FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 1701 003e 2046     		mov	r0, r4
 1702 0040 BDE87040 		pop	{r4, r5, r6, lr}
 1703 0044 FFF7FEBF 		b	_ZN7TwoWire15endTransmissionEv
 1704              	.L229:
 1705              		.align	2
 1706              	.L228:
 1707 0048 00000000 		.word	Wire
 1708              		.size	_ZN6SX150910writeDwordEhm, .-_ZN6SX150910writeDwordEhm
 1709              		.section	.text._ZN6SX150923enableInterruptMultipleEth,"ax",%progbits
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 31


 1710              		.align	2
 1711              		.global	_ZN6SX150923enableInterruptMultipleEth
 1712              		.thumb
 1713              		.thumb_func
 1714              		.type	_ZN6SX150923enableInterruptMultipleEth, %function
 1715              	_ZN6SX150923enableInterruptMultipleEth:
 1716              		@ args = 0, pretend = 0, frame = 0
 1717              		@ frame_needed = 0, uses_anonymous_args = 0
 1718 0000 023A     		subs	r2, r2, #2
 1719 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1720 0004 D3B2     		uxtb	r3, r2
 1721 0006 022B     		cmp	r3, #2
 1722 0008 98BF     		it	ls
 1723 000a 154A     		ldrls	r2, .L240
 1724 000c 0D46     		mov	r5, r1
 1725 000e 4FF01401 		mov	r1, #20
 1726 0012 98BF     		it	ls
 1727 0014 D65C     		ldrbls	r6, [r2, r3]	@ zero_extendqisi2
 1728 0016 0746     		mov	r7, r0
 1729 0018 88BF     		it	hi
 1730 001a 0026     		movhi	r6, #0
 1731 001c FFF7FEFF 		bl	_ZN6SX15099readDwordEh
 1732 0020 0023     		movs	r3, #0
 1733 0022 0246     		mov	r2, r0
 1734 0024 0320     		movs	r0, #3
 1735              	.L234:
 1736 0026 45FA03F4 		asr	r4, r5, r3
 1737 002a 14F0010F 		tst	r4, #1
 1738 002e 4FEA4304 		lsl	r4, r3, #1
 1739 0032 03F10103 		add	r3, r3, #1
 1740 0036 06D0     		beq	.L232
 1741 0038 00FA04F1 		lsl	r1, r0, r4
 1742 003c 22EA0102 		bic	r2, r2, r1
 1743 0040 06FA04F4 		lsl	r4, r6, r4
 1744 0044 2243     		orrs	r2, r2, r4
 1745              	.L232:
 1746 0046 102B     		cmp	r3, #16
 1747 0048 EDD1     		bne	.L234
 1748 004a 3846     		mov	r0, r7
 1749 004c 1421     		movs	r1, #20
 1750 004e FFF7FEFF 		bl	_ZN6SX150910writeDwordEhm
 1751 0052 3846     		mov	r0, r7
 1752 0054 2A46     		mov	r2, r5
 1753 0056 1221     		movs	r1, #18
 1754 0058 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 1755 005c FFF7FEBF 		b	_ZN6SX150915clearBitsInWordEht
 1756              	.L241:
 1757              		.align	2
 1758              	.L240:
 1759 0060 00000000 		.word	.LANCHOR5
 1760              		.size	_ZN6SX150923enableInterruptMultipleEth, .-_ZN6SX150923enableInterruptMultipleEth
 1761              		.section	.text._ZN6SX150915enableInterruptEhh,"ax",%progbits
 1762              		.align	2
 1763              		.global	_ZN6SX150915enableInterruptEhh
 1764              		.thumb
 1765              		.thumb_func
 1766              		.type	_ZN6SX150915enableInterruptEhh, %function
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 32


 1767              	_ZN6SX150915enableInterruptEhh:
 1768              		@ args = 0, pretend = 0, frame = 0
 1769              		@ frame_needed = 0, uses_anonymous_args = 0
 1770              		@ link register save eliminated.
 1771 0000 0123     		movs	r3, #1
 1772 0002 03FA01F1 		lsl	r1, r3, r1
 1773 0006 89B2     		uxth	r1, r1
 1774 0008 FFF7FEBF 		b	_ZN6SX150923enableInterruptMultipleEth
 1775              		.size	_ZN6SX150915enableInterruptEhh, .-_ZN6SX150915enableInterruptEhh
 1776              		.section	.text._ZN6SX150910writeBytesEhPhh,"ax",%progbits
 1777              		.align	2
 1778              		.global	_ZN6SX150910writeBytesEhPhh
 1779              		.thumb
 1780              		.thumb_func
 1781              		.type	_ZN6SX150910writeBytesEhPhh, %function
 1782              	_ZN6SX150910writeBytesEhPhh:
 1783              		@ args = 0, pretend = 0, frame = 0
 1784              		@ frame_needed = 0, uses_anonymous_args = 0
 1785 0000 70B5     		push	{r4, r5, r6, lr}
 1786 0002 0478     		ldrb	r4, [r0]	@ zero_extendqisi2
 1787 0004 0D48     		ldr	r0, .L247
 1788 0006 0E46     		mov	r6, r1
 1789 0008 2146     		mov	r1, r4
 1790 000a 1D46     		mov	r5, r3
 1791 000c 1446     		mov	r4, r2
 1792 000e FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 1793 0012 3146     		mov	r1, r6
 1794 0014 0948     		ldr	r0, .L247
 1795 0016 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 1796 001a 55B1     		cbz	r5, .L245
 1797 001c 013D     		subs	r5, r5, #1
 1798 001e 54FA85F5 		uxtab	r5, r4, r5
 1799 0022 013C     		subs	r4, r4, #1
 1800              	.L246:
 1801 0024 14F8011F 		ldrb	r1, [r4, #1]!	@ zero_extendqisi2
 1802 0028 0448     		ldr	r0, .L247
 1803 002a FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 1804 002e AC42     		cmp	r4, r5
 1805 0030 F8D1     		bne	.L246
 1806              	.L245:
 1807 0032 0248     		ldr	r0, .L247
 1808 0034 BDE87040 		pop	{r4, r5, r6, lr}
 1809 0038 FFF7FEBF 		b	_ZN7TwoWire15endTransmissionEv
 1810              	.L248:
 1811              		.align	2
 1812              	.L247:
 1813 003c 00000000 		.word	Wire
 1814              		.size	_ZN6SX150910writeBytesEhPhh, .-_ZN6SX150910writeBytesEhPhh
 1815              		.section	.rodata._ZL10REG_T_FALL,"a",%progbits
 1816              		.align	2
 1817              		.set	.LANCHOR4,. + 0
 1818              		.type	_ZL10REG_T_FALL, %object
 1819              		.size	_ZL10REG_T_FALL, 16
 1820              	_ZL10REG_T_FALL:
 1821 0000 FF       		.byte	-1
 1822 0001 FF       		.byte	-1
 1823 0002 FF       		.byte	-1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 33


 1824 0003 FF       		.byte	-1
 1825 0004 39       		.byte	57
 1826 0005 3E       		.byte	62
 1827 0006 43       		.byte	67
 1828 0007 48       		.byte	72
 1829 0008 FF       		.byte	-1
 1830 0009 FF       		.byte	-1
 1831 000a FF       		.byte	-1
 1832 000b FF       		.byte	-1
 1833 000c 59       		.byte	89
 1834 000d 5E       		.byte	94
 1835 000e 63       		.byte	99
 1836 000f 68       		.byte	104
 1837              		.section	.rodata.CSWTCH.76,"a",%progbits
 1838              		.align	2
 1839              		.set	.LANCHOR5,. + 0
 1840              		.type	CSWTCH.76, %object
 1841              		.size	CSWTCH.76, 3
 1842              	CSWTCH.76:
 1843 0000 03       		.byte	3
 1844 0001 02       		.byte	2
 1845 0002 01       		.byte	1
 1846 0003 00       		.section	.rodata._ZL10REG_T_RISE,"a",%progbits
 1847              		.align	2
 1848              		.set	.LANCHOR3,. + 0
 1849              		.type	_ZL10REG_T_RISE, %object
 1850              		.size	_ZL10REG_T_RISE, 16
 1851              	_ZL10REG_T_RISE:
 1852 0000 FF       		.byte	-1
 1853 0001 FF       		.byte	-1
 1854 0002 FF       		.byte	-1
 1855 0003 FF       		.byte	-1
 1856 0004 38       		.byte	56
 1857 0005 3D       		.byte	61
 1858 0006 42       		.byte	66
 1859 0007 47       		.byte	71
 1860 0008 FF       		.byte	-1
 1861 0009 FF       		.byte	-1
 1862 000a FF       		.byte	-1
 1863 000b FF       		.byte	-1
 1864 000c 58       		.byte	88
 1865 000d 5D       		.byte	93
 1866 000e 62       		.byte	98
 1867 000f 67       		.byte	103
 1868              		.section	.rodata._ZL8REG_I_ON,"a",%progbits
 1869              		.align	2
 1870              		.set	.LANCHOR0,. + 0
 1871              		.type	_ZL8REG_I_ON, %object
 1872              		.size	_ZL8REG_I_ON, 16
 1873              	_ZL8REG_I_ON:
 1874 0000 2A       		.byte	42
 1875 0001 2D       		.byte	45
 1876 0002 30       		.byte	48
 1877 0003 33       		.byte	51
 1878 0004 36       		.byte	54
 1879 0005 3B       		.byte	59
 1880 0006 40       		.byte	64
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 34


 1881 0007 45       		.byte	69
 1882 0008 4A       		.byte	74
 1883 0009 4D       		.byte	77
 1884 000a 50       		.byte	80
 1885 000b 53       		.byte	83
 1886 000c 56       		.byte	86
 1887 000d 5B       		.byte	91
 1888 000e 60       		.byte	96
 1889 000f 65       		.byte	101
 1890              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1891              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1892              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1893              	_ZL28cpu_irq_prev_interrupt_state:
 1894 0000 00       		.space	1
 1895              		.section	.rodata._ZL7REG_OFF,"a",%progbits
 1896              		.align	2
 1897              		.set	.LANCHOR2,. + 0
 1898              		.type	_ZL7REG_OFF, %object
 1899              		.size	_ZL7REG_OFF, 16
 1900              	_ZL7REG_OFF:
 1901 0000 2B       		.byte	43
 1902 0001 2E       		.byte	46
 1903 0002 31       		.byte	49
 1904 0003 34       		.byte	52
 1905 0004 37       		.byte	55
 1906 0005 3C       		.byte	60
 1907 0006 41       		.byte	65
 1908 0007 46       		.byte	70
 1909 0008 4B       		.byte	75
 1910 0009 4E       		.byte	78
 1911 000a 51       		.byte	81
 1912 000b 54       		.byte	84
 1913 000c 57       		.byte	87
 1914 000d 5C       		.byte	92
 1915 000e 61       		.byte	97
 1916 000f 66       		.byte	102
 1917              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1918              		.align	2
 1919              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1920              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1921              	_ZL32cpu_irq_critical_section_counter:
 1922 0000 00000000 		.space	4
 1923              		.section	.rodata._ZL8REG_T_ON,"a",%progbits
 1924              		.align	2
 1925              		.set	.LANCHOR1,. + 0
 1926              		.type	_ZL8REG_T_ON, %object
 1927              		.size	_ZL8REG_T_ON, 16
 1928              	_ZL8REG_T_ON:
 1929 0000 29       		.byte	41
 1930 0001 2C       		.byte	44
 1931 0002 2F       		.byte	47
 1932 0003 32       		.byte	50
 1933 0004 35       		.byte	53
 1934 0005 3A       		.byte	58
 1935 0006 3F       		.byte	63
 1936 0007 44       		.byte	68
 1937 0008 49       		.byte	73
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccTf6cxm.s 			page 35


 1938 0009 4C       		.byte	76
 1939 000a 4F       		.byte	79
 1940 000b 52       		.byte	82
 1941 000c 55       		.byte	85
 1942 000d 5A       		.byte	90
 1943 000e 5F       		.byte	95
 1944 000f 64       		.byte	100
 1945              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
