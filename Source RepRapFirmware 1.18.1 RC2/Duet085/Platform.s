ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 1


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
  14              		.file	"Platform.cpp"
  15              		.section	.text._Z12FanInterruptv,"ax",%progbits
  16              		.align	2
  17              		.global	_Z12FanInterruptv
  18              		.thumb
  19              		.thumb_func
  20              		.type	_Z12FanInterruptv, %function
  21              	_Z12FanInterruptv:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 38B5     		push	{r3, r4, r5, lr}
  25 0002 094C     		ldr	r4, .L5
  26 0004 2368     		ldr	r3, [r4]
  27 0006 0133     		adds	r3, r3, #1
  28 0008 202B     		cmp	r3, #32
  29 000a 2360     		str	r3, [r4]
  30 000c 00D0     		beq	.L4
  31 000e 38BD     		pop	{r3, r4, r5, pc}
  32              	.L4:
  33 0010 FFF7FEFF 		bl	micros
  34 0014 054B     		ldr	r3, .L5+4
  35 0016 0649     		ldr	r1, .L5+8
  36 0018 1D68     		ldr	r5, [r3]
  37 001a 0022     		movs	r2, #0
  38 001c 451B     		subs	r5, r0, r5
  39 001e 0D60     		str	r5, [r1]
  40 0020 2260     		str	r2, [r4]
  41 0022 1860     		str	r0, [r3]
  42 0024 38BD     		pop	{r3, r4, r5, pc}
  43              	.L6:
  44 0026 00BF     		.align	2
  45              	.L5:
  46 0028 00000000 		.word	.LANCHOR0
  47 002c 00000000 		.word	.LANCHOR1
  48 0030 00000000 		.word	.LANCHOR2
  49              		.size	_Z12FanInterruptv, .-_Z12FanInterruptv
  50              		.global	__aeabi_fmul
  51              		.global	__aeabi_f2d
  52              		.global	__aeabi_dmul
  53              		.global	__aeabi_dadd
  54              		.global	__aeabi_ddiv
  55              		.global	__aeabi_d2uiz
  56              		.global	__aeabi_d2f
  57              		.global	__aeabi_fcmpun
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 2


  58              		.global	__aeabi_fcmpgt
  59              		.global	__aeabi_fdiv
  60              		.section	.text._ZN8Platform18UpdateMotorCurrentEj.part.26,"ax",%progbits
  61              		.align	2
  62              		.thumb
  63              		.thumb_func
  64              		.type	_ZN8Platform18UpdateMotorCurrentEj.part.26, %function
  65              	_ZN8Platform18UpdateMotorCurrentEj.part.26:
  66              		@ args = 0, pretend = 0, frame = 8
  67              		@ frame_needed = 0, uses_anonymous_args = 0
  68 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  69 0004 00EB0109 		add	r9, r0, r1
  70 0008 99F8C420 		ldrb	r2, [r9, #196]	@ zero_extendqisi2
  71 000c 00EB8103 		add	r3, r0, r1, lsl #2
  72 0010 012A     		cmp	r2, #1
  73 0012 0646     		mov	r6, r0
  74 0014 83B0     		sub	sp, sp, #12
  75 0016 0F46     		mov	r7, r1
  76 0018 D3F89801 		ldr	r0, [r3, #408]	@ float
  77 001c 14BF     		ite	ne
  78 001e D3F8BC11 		ldrne	r1, [r3, #444]	@ float
  79 0022 D6F84412 		ldreq	r1, [r6, #580]	@ float
  80 0026 FFF7FEFF 		bl	__aeabi_fmul
  81 002a FFF7FEFF 		bl	__aeabi_f2d
  82 002e 8246     		mov	r10, r0
  83 0030 D6F85802 		ldr	r0, [r6, #600]	@ float
  84 0034 8B46     		mov	fp, r1
  85 0036 FFF7FEFF 		bl	__aeabi_f2d
  86 003a 4BA3     		adr	r3, .L25
  87 003c D3E90023 		ldrd	r2, [r3]
  88 0040 CDE90001 		strd	r0, [sp]
  89 0044 5046     		mov	r0, r10
  90 0046 5946     		mov	r1, fp
  91 0048 FFF7FEFF 		bl	__aeabi_dmul
  92 004c 0022     		movs	r2, #0
  93 004e 4A4B     		ldr	r3, .L25+16
  94 0050 FFF7FEFF 		bl	__aeabi_dmul
  95 0054 DDE90023 		ldrd	r2, [sp]
  96 0058 FFF7FEFF 		bl	__aeabi_dmul
  97 005c D6F85C82 		ldr	r8, [r6, #604]	@ float
  98 0060 0446     		mov	r4, r0
  99 0062 0D46     		mov	r5, r1
 100 0064 4046     		mov	r0, r8
 101 0066 4FF07C51 		mov	r1, #1056964608
 102 006a FFF7FEFF 		bl	__aeabi_fmul
 103 006e FFF7FEFF 		bl	__aeabi_f2d
 104 0072 0246     		mov	r2, r0
 105 0074 0B46     		mov	r3, r1
 106 0076 2046     		mov	r0, r4
 107 0078 2946     		mov	r1, r5
 108 007a FFF7FEFF 		bl	__aeabi_dadd
 109 007e 0446     		mov	r4, r0
 110 0080 4046     		mov	r0, r8
 111 0082 0D46     		mov	r5, r1
 112 0084 FFF7FEFF 		bl	__aeabi_f2d
 113 0088 0246     		mov	r2, r0
 114 008a 0B46     		mov	r3, r1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 3


 115 008c 2046     		mov	r0, r4
 116 008e 2946     		mov	r1, r5
 117 0090 FFF7FEFF 		bl	__aeabi_ddiv
 118 0094 FFF7FEFF 		bl	__aeabi_d2uiz
 119 0098 032F     		cmp	r7, #3
 120 009a 84B2     		uxth	r4, r0
 121 009c 4ED9     		bls	.L22
 122 009e 96F8AB30 		ldrb	r3, [r6, #171]	@ zero_extendqisi2
 123 00a2 032B     		cmp	r3, #3
 124 00a4 15D0     		beq	.L23
 125 00a6 072F     		cmp	r7, #7
 126 00a8 02D9     		bls	.L24
 127 00aa 03B0     		add	sp, sp, #12
 128              		@ sp needed
 129 00ac BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 130              	.L24:
 131 00b0 06F24B26 		addw	r6, r6, #587
 132              	.L20:
 133 00b4 3046     		mov	r0, r6
 134 00b6 99F84E12 		ldrb	r1, [r9, #590]	@ zero_extendqisi2
 135 00ba 2246     		mov	r2, r4
 136 00bc FFF7FEFF 		bl	_ZN7MCP446119setNonVolatileWiperEht
 137 00c0 99F84E12 		ldrb	r1, [r9, #590]	@ zero_extendqisi2
 138 00c4 3046     		mov	r0, r6
 139              	.L21:
 140 00c6 2246     		mov	r2, r4
 141 00c8 03B0     		add	sp, sp, #12
 142              		@ sp needed
 143 00ca BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 144 00ce FFF7FEBF 		b	_ZN7MCP446116setVolatileWiperEht
 145              	.L23:
 146 00d2 042F     		cmp	r7, #4
 147 00d4 35D1     		bne	.L12
 148 00d6 26A3     		adr	r3, .L25+8
 149 00d8 D3E90023 		ldrd	r2, [r3]
 150 00dc 5046     		mov	r0, r10
 151 00de 5946     		mov	r1, fp
 152 00e0 FFF7FEFF 		bl	__aeabi_dmul
 153 00e4 0246     		mov	r2, r0
 154 00e6 0B46     		mov	r3, r1
 155 00e8 DDE90001 		ldrd	r0, [sp]
 156 00ec FFF7FEFF 		bl	__aeabi_dmul
 157 00f0 0446     		mov	r4, r0
 158 00f2 D6F86402 		ldr	r0, [r6, #612]	@ float
 159 00f6 0D46     		mov	r5, r1
 160 00f8 FFF7FEFF 		bl	__aeabi_f2d
 161 00fc 0246     		mov	r2, r0
 162 00fe 0B46     		mov	r3, r1
 163 0100 2046     		mov	r0, r4
 164 0102 2946     		mov	r1, r5
 165 0104 FFF7FEFF 		bl	__aeabi_dadd
 166 0108 FFF7FEFF 		bl	__aeabi_d2f
 167 010c 0146     		mov	r1, r0
 168 010e 0446     		mov	r4, r0
 169 0110 FFF7FEFF 		bl	__aeabi_fcmpun
 170 0114 20B9     		cbnz	r0, .L16
 171 0116 2046     		mov	r0, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 4


 172 0118 0021     		movs	r1, #0
 173 011a FFF7FEFF 		bl	__aeabi_fcmpgt
 174 011e F0B1     		cbz	r0, .L19
 175              	.L16:
 176 0120 2046     		mov	r0, r4
 177              	.L13:
 178 0122 D6F86012 		ldr	r1, [r6, #608]	@ float
 179 0126 FFF7FEFF 		bl	__aeabi_fdiv
 180 012a 4FF47A72 		mov	r2, #1000
 181 012e 0146     		mov	r1, r0
 182 0130 4220     		movs	r0, #66
 183 0132 03B0     		add	sp, sp, #12
 184              		@ sp needed
 185 0134 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 186 0138 FFF7FEBF 		b	_Z9AnalogOuthft
 187              	.L22:
 188 013c 06F51276 		add	r6, r6, #584
 189 0140 B8E7     		b	.L20
 190              	.L12:
 191 0142 013F     		subs	r7, r7, #1
 192 0144 3744     		add	r7, r7, r6
 193 0146 06F24B26 		addw	r6, r6, #587
 194 014a 97F84E12 		ldrb	r1, [r7, #590]	@ zero_extendqisi2
 195 014e 3046     		mov	r0, r6
 196 0150 2246     		mov	r2, r4
 197 0152 FFF7FEFF 		bl	_ZN7MCP446119setNonVolatileWiperEht
 198 0156 3046     		mov	r0, r6
 199 0158 97F84E12 		ldrb	r1, [r7, #590]	@ zero_extendqisi2
 200 015c B3E7     		b	.L21
 201              	.L19:
 202 015e 0020     		movs	r0, #0
 203 0160 DFE7     		b	.L13
 204              	.L26:
 205 0162 00BFAFF3 		.align	3
 205      0080
 206              	.L25:
 207 0168 FCA9F1D2 		.word	-755914244
 208 016c 4D62D03F 		.word	1070621261
 209 0170 FCA9F1D2 		.word	-755914244
 210 0174 4D62803F 		.word	1065378381
 211 0178 00002040 		.word	1075838976
 212              		.size	_ZN8Platform18UpdateMotorCurrentEj.part.26, .-_ZN8Platform18UpdateMotorCurrentEj.part.26
 213 017c AFF30080 		.section	.text._Z10UrgentInitv,"ax",%progbits
 214              		.align	2
 215              		.global	_Z10UrgentInitv
 216              		.thumb
 217              		.thumb_func
 218              		.type	_Z10UrgentInitv, %function
 219              	_Z10UrgentInitv:
 220              		@ args = 0, pretend = 0, frame = 0
 221              		@ frame_needed = 0, uses_anonymous_args = 0
 222              		@ link register save eliminated.
 223 0000 7047     		bx	lr
 224              		.size	_Z10UrgentInitv, .-_Z10UrgentInitv
 225 0002 00BF     		.section	.text.setup,"ax",%progbits
 226              		.align	2
 227              		.global	setup
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 5


 228              		.thumb
 229              		.thumb_func
 230              		.type	setup, %function
 231              	setup:
 232              		@ args = 0, pretend = 0, frame = 0
 233              		@ frame_needed = 0, uses_anonymous_args = 0
 234 0000 08B5     		push	{r3, lr}
 235 0002 0020     		movs	r0, #0
 236 0004 FFF7FEFF 		bl	sbrk
 237 0008 6A46     		mov	r2, sp
 238 000a 00F11003 		add	r3, r0, #16
 239 000e 9A42     		cmp	r2, r3
 240 0010 06D9     		bls	.L30
 241 0012 ADF11002 		sub	r2, sp, #16
 242 0016 A523     		movs	r3, #165
 243              	.L31:
 244 0018 00F8013B 		strb	r3, [r0], #1
 245 001c 9042     		cmp	r0, r2
 246 001e FBD1     		bne	.L31
 247              	.L30:
 248 0020 064B     		ldr	r3, .L33
 249 0022 074A     		ldr	r2, .L33+4
 250 0024 5869     		ldr	r0, [r3, #20]
 251 0026 0749     		ldr	r1, .L33+8
 252 0028 40F01000 		orr	r0, r0, #16
 253 002c 5861     		str	r0, [r3, #20]
 254 002e 0648     		ldr	r0, .L33+12
 255 0030 9160     		str	r1, [r2, #8]
 256 0032 BDE80840 		pop	{r3, lr}
 257 0036 FFF7FEBF 		b	_ZN6RepRap4InitEv
 258              	.L34:
 259 003a 00BF     		.align	2
 260              	.L33:
 261 003c 00ED00E0 		.word	-536810240
 262 0040 001A0E40 		.word	1074665984
 263 0044 010000A5 		.word	-1526726655
 264 0048 00000000 		.word	reprap
 265              		.size	setup, .-setup
 266              		.section	.text.loop,"ax",%progbits
 267              		.align	2
 268              		.global	loop
 269              		.thumb
 270              		.thumb_func
 271              		.type	loop, %function
 272              	loop:
 273              		@ args = 0, pretend = 0, frame = 0
 274              		@ frame_needed = 0, uses_anonymous_args = 0
 275              		@ link register save eliminated.
 276 0000 0148     		ldr	r0, .L36
 277 0002 FFF7FEBF 		b	_ZN6RepRap4SpinEv
 278              	.L37:
 279 0006 00BF     		.align	2
 280              	.L36:
 281 0008 00000000 		.word	reprap
 282              		.size	loop, .-loop
 283              		.section	.text.sysTickHook,"ax",%progbits
 284              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 6


 285              		.global	sysTickHook
 286              		.thumb
 287              		.thumb_func
 288              		.type	sysTickHook, %function
 289              	sysTickHook:
 290              		@ args = 0, pretend = 0, frame = 0
 291              		@ frame_needed = 0, uses_anonymous_args = 0
 292 0000 08B5     		push	{r3, lr}
 293 0002 0248     		ldr	r0, .L39
 294 0004 FFF7FEFF 		bl	_ZN6RepRap4TickEv
 295 0008 0020     		movs	r0, #0
 296 000a 08BD     		pop	{r3, pc}
 297              	.L40:
 298              		.align	2
 299              	.L39:
 300 000c 00000000 		.word	reprap
 301              		.size	sysTickHook, .-sysTickHook
 302              		.section	.text.HardFault_Handler,"ax",%progbits
 303              		.align	2
 304              		.global	HardFault_Handler
 305              		.thumb
 306              		.thumb_func
 307              		.type	HardFault_Handler, %function
 308              	HardFault_Handler:
 309              		@ Naked Function: prologue and epilogue provided by programmer.
 310              		@ args = 0, pretend = 0, frame = 0
 311              		@ frame_needed = 0, uses_anonymous_args = 0
 312              	@ 166 "../src/Platform.cpp" 1
 313 0000 1EF0040F 		 tst lr, #4                                                
 314 0004 0CBF     	 ite eq                                                    
 315 0006 EFF30880 	 mrseq r0, msp                                             
 316 000a EFF30980 	 mrsne r0, psp                                             
 317 000e 8169     	 ldr r1, [r0, #24]                                         
 318 0010 004A     	 ldr r2, handler2_address_const                            
 319 0012 1047     	 bx r2                                                     
 320 0014 00000000 	 handler2_address_const: .word prvGetRegistersFromStack    
 321              	
 322              	@ 0 "" 2
 323              		.thumb
 324              		.size	HardFault_Handler, .-HardFault_Handler
 325              		.section	.text._ZN16ZProbeParameters4InitEf,"ax",%progbits
 326              		.align	2
 327              		.global	_ZN16ZProbeParameters4InitEf
 328              		.thumb
 329              		.thumb_func
 330              		.type	_ZN16ZProbeParameters4InitEf, %function
 331              	_ZN16ZProbeParameters4InitEf:
 332              		@ args = 0, pretend = 0, frame = 0
 333              		@ frame_needed = 0, uses_anonymous_args = 0
 334              		@ link register save eliminated.
 335 0000 F0B4     		push	{r4, r5, r6, r7}
 336 0002 0C4A     		ldr	r2, .L43
 337 0004 0C4E     		ldr	r6, .L43+4
 338 0006 0D4D     		ldr	r5, .L43+8
 339 0008 0023     		movs	r3, #0
 340 000a 4FF08044 		mov	r4, #1073741824
 341 000e 0027     		movs	r7, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 7


 342 0010 4FF4C87C 		mov	ip, #400
 343 0014 0661     		str	r6, [r0, #16]	@ float
 344 0016 8561     		str	r5, [r0, #24]	@ float
 345 0018 C461     		str	r4, [r0, #28]	@ float
 346 001a 80F82C70 		strb	r7, [r0, #44]
 347 001e C160     		str	r1, [r0, #12]	@ float
 348 0020 C0F800C0 		str	ip, [r0]
 349 0024 0262     		str	r2, [r0, #32]	@ float
 350 0026 8360     		str	r3, [r0, #8]	@ float
 351 0028 4360     		str	r3, [r0, #4]	@ float
 352 002a 4361     		str	r3, [r0, #20]	@ float
 353 002c 8362     		str	r3, [r0, #40]	@ float
 354 002e 4362     		str	r3, [r0, #36]	@ float
 355 0030 F0BC     		pop	{r4, r5, r6, r7}
 356 0032 7047     		bx	lr
 357              	.L44:
 358              		.align	2
 359              	.L43:
 360 0034 0000C842 		.word	1120403456
 361 0038 0000A041 		.word	1101004800
 362 003c 0000A040 		.word	1084227584
 363              		.size	_ZN16ZProbeParameters4InitEf, .-_ZN16ZProbeParameters4InitEf
 364              		.global	__aeabi_fsub
 365              		.global	__aeabi_fadd
 366              		.section	.text._ZNK16ZProbeParameters13GetStopHeightEf,"ax",%progbits
 367              		.align	2
 368              		.global	_ZNK16ZProbeParameters13GetStopHeightEf
 369              		.thumb
 370              		.thumb_func
 371              		.type	_ZNK16ZProbeParameters13GetStopHeightEf, %function
 372              	_ZNK16ZProbeParameters13GetStopHeightEf:
 373              		@ args = 0, pretend = 0, frame = 0
 374              		@ frame_needed = 0, uses_anonymous_args = 0
 375 0000 10B5     		push	{r4, lr}
 376 0002 0446     		mov	r4, r0
 377 0004 0846     		mov	r0, r1
 378 0006 2169     		ldr	r1, [r4, #16]	@ float
 379 0008 FFF7FEFF 		bl	__aeabi_fsub
 380 000c 6169     		ldr	r1, [r4, #20]	@ float
 381 000e FFF7FEFF 		bl	__aeabi_fmul
 382 0012 E168     		ldr	r1, [r4, #12]	@ float
 383 0014 FFF7FEFF 		bl	__aeabi_fadd
 384 0018 10BD     		pop	{r4, pc}
 385              		.size	_ZNK16ZProbeParameters13GetStopHeightEf, .-_ZNK16ZProbeParameters13GetStopHeightEf
 386 001a 00BF     		.section	.text._ZNK16ZProbeParameters15WriteParametersEP9FileStorej,"ax",%progbits
 387              		.align	2
 388              		.global	_ZNK16ZProbeParameters15WriteParametersEP9FileStorej
 389              		.thumb
 390              		.thumb_func
 391              		.type	_ZNK16ZProbeParameters15WriteParametersEP9FileStorej, %function
 392              	_ZNK16ZProbeParameters15WriteParametersEP9FileStorej:
 393              		@ args = 0, pretend = 0, frame = 0
 394              		@ frame_needed = 0, uses_anonymous_args = 0
 395 0000 70B5     		push	{r4, r5, r6, lr}
 396 0002 0446     		mov	r4, r0
 397 0004 86B0     		sub	sp, sp, #24
 398 0006 4068     		ldr	r0, [r0, #4]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 8


 399 0008 1646     		mov	r6, r2
 400 000a 0D46     		mov	r5, r1
 401 000c FFF7FEFF 		bl	__aeabi_f2d
 402 0010 CDE90001 		strd	r0, [sp]
 403 0014 A068     		ldr	r0, [r4, #8]	@ float
 404 0016 FFF7FEFF 		bl	__aeabi_f2d
 405 001a CDE90201 		strd	r0, [sp, #8]
 406 001e E068     		ldr	r0, [r4, #12]	@ float
 407 0020 FFF7FEFF 		bl	__aeabi_f2d
 408 0024 2368     		ldr	r3, [r4]
 409 0026 074C     		ldr	r4, .L47
 410 0028 CDE90401 		strd	r0, [sp, #16]
 411 002c 3246     		mov	r2, r6
 412 002e 2046     		mov	r0, r4
 413 0030 0549     		ldr	r1, .L47+4
 414 0032 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 415 0036 2168     		ldr	r1, [r4]
 416 0038 2846     		mov	r0, r5
 417 003a 06B0     		add	sp, sp, #24
 418              		@ sp needed
 419 003c BDE87040 		pop	{r4, r5, r6, lr}
 420 0040 FFF7FEBF 		b	_ZN9FileStore5WriteEPKc
 421              	.L48:
 422              		.align	2
 423              	.L47:
 424 0044 00000000 		.word	scratchString
 425 0048 00000000 		.word	.LC7
 426              		.size	_ZNK16ZProbeParameters15WriteParametersEP9FileStorej, .-_ZNK16ZProbeParameters15WriteParamet
 427              		.section	.text._ZN8PlatformC2Ev,"ax",%progbits
 428              		.align	2
 429              		.global	_ZN8PlatformC2Ev
 430              		.thumb
 431              		.thumb_func
 432              		.type	_ZN8PlatformC2Ev, %function
 433              	_ZN8PlatformC2Ev:
 434              		@ args = 0, pretend = 0, frame = 0
 435              		@ frame_needed = 0, uses_anonymous_args = 0
 436 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 437 0002 0122     		movs	r2, #1
 438 0004 0023     		movs	r3, #0
 439 0006 80F8AB20 		strb	r2, [r0, #171]
 440 000a 80F8BC30 		strb	r3, [r0, #188]
 441 000e C0F8C030 		str	r3, [r0, #192]
 442 0012 0546     		mov	r5, r0
 443 0014 00F51270 		add	r0, r0, #584
 444 0018 FFF7FEFF 		bl	_ZN7MCP4461C1Ev
 445 001c 05F24B20 		addw	r0, r5, #587
 446 0020 FFF7FEFF 		bl	_ZN7MCP4461C1Ev
 447              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 448 0024 EFF31084 		MRS r4, primask
 449              	@ 0 "" 2
 450              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 451 0028 72B6     		cpsid i
 452              	@ 0 "" 2
 453              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 454 002a BFF35F8F 		dmb
 455              	@ 0 "" 2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 9


 456              		.thumb
 457 002e 4A48     		ldr	r0, .L69
 458 0030 0022     		movs	r2, #0
 459 0032 0270     		strb	r2, [r0]
 460 0034 1346     		mov	r3, r2
 461 0036 C5F88022 		str	r2, [r5, #640]
 462 003a 1146     		mov	r1, r2
 463 003c C5F87C22 		str	r2, [r5, #636]
 464 0040 85F88422 		strb	r2, [r5, #644]
 465              	.L51:
 466 0044 05EB4302 		add	r2, r5, r3, lsl #1
 467 0048 0133     		adds	r3, r3, #1
 468 004a 082B     		cmp	r3, #8
 469 004c A2F86C12 		strh	r1, [r2, #620]	@ movhi
 470 0050 F8D1     		bne	.L51
 471 0052 24B9     		cbnz	r4, .L52
 472 0054 0123     		movs	r3, #1
 473 0056 0370     		strb	r3, [r0]
 474              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 475 0058 BFF35F8F 		dmb
 476              	@ 0 "" 2
 477              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 478 005c 62B6     		cpsie i
 479              	@ 0 "" 2
 480              		.thumb
 481              	.L52:
 482              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 483 005e EFF31084 		MRS r4, primask
 484              	@ 0 "" 2
 485              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 486 0062 72B6     		cpsid i
 487              	@ 0 "" 2
 488              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 489 0064 BFF35F8F 		dmb
 490              	@ 0 "" 2
 491              		.thumb
 492 0068 0022     		movs	r2, #0
 493 006a 0270     		strb	r2, [r0]
 494 006c 1346     		mov	r3, r2
 495 006e C5F89C22 		str	r2, [r5, #668]
 496 0072 1146     		mov	r1, r2
 497 0074 C5F89822 		str	r2, [r5, #664]
 498 0078 85F8A022 		strb	r2, [r5, #672]
 499              	.L54:
 500 007c 05EB4302 		add	r2, r5, r3, lsl #1
 501 0080 0133     		adds	r3, r3, #1
 502 0082 082B     		cmp	r3, #8
 503 0084 A2F88812 		strh	r1, [r2, #648]	@ movhi
 504 0088 F8D1     		bne	.L54
 505 008a 24B9     		cbnz	r4, .L55
 506 008c 0123     		movs	r3, #1
 507 008e 0370     		strb	r3, [r0]
 508              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 509 0090 BFF35F8F 		dmb
 510              	@ 0 "" 2
 511              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 512 0094 62B6     		cpsie i
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 10


 513              	@ 0 "" 2
 514              		.thumb
 515              	.L55:
 516 0096 05F52972 		add	r2, r5, #676
 517 009a 05F59766 		add	r6, r5, #1208
 518 009e 0024     		movs	r4, #0
 519 00a0 0127     		movs	r7, #1
 520              	.L60:
 521              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 522 00a2 EFF31081 		MRS r1, primask
 523              	@ 0 "" 2
 524              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 525 00a6 72B6     		cpsid i
 526              	@ 0 "" 2
 527              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 528 00a8 BFF35F8F 		dmb
 529              	@ 0 "" 2
 530              		.thumb
 531 00ac 0023     		movs	r3, #0
 532 00ae 0470     		strb	r4, [r0]
 533 00b0 5464     		str	r4, [r2, #68]
 534 00b2 1464     		str	r4, [r2, #64]
 535 00b4 82F84840 		strb	r4, [r2, #72]
 536              	.L57:
 537 00b8 22F81340 		strh	r4, [r2, r3, lsl #1]	@ movhi
 538 00bc 0133     		adds	r3, r3, #1
 539 00be 202B     		cmp	r3, #32
 540 00c0 FAD1     		bne	.L57
 541 00c2 19B9     		cbnz	r1, .L58
 542 00c4 0770     		strb	r7, [r0]
 543              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 544 00c6 BFF35F8F 		dmb
 545              	@ 0 "" 2
 546              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 547 00ca 62B6     		cpsie i
 548              	@ 0 "" 2
 549              		.thumb
 550              	.L58:
 551 00cc 4C32     		adds	r2, r2, #76
 552 00ce B242     		cmp	r2, r6
 553 00d0 E7D1     		bne	.L60
 554 00d2 05F22454 		addw	r4, r5, #1316
 555 00d6 05F5BD66 		add	r6, r5, #1512
 556              	.L62:
 557 00da 2046     		mov	r0, r4
 558 00dc 1C34     		adds	r4, r4, #28
 559 00de FFF7FEFF 		bl	_ZN10ThermistorC1Ev
 560 00e2 B442     		cmp	r4, r6
 561 00e4 F9D1     		bne	.L62
 562 00e6 0024     		movs	r4, #0
 563 00e8 C5F8AC46 		str	r4, [r5, #1708]
 564 00ec 85F8E046 		strb	r4, [r5, #1760]
 565 00f0 85F80847 		strb	r4, [r5, #1800]
 566 00f4 C5F81047 		str	r4, [r5, #1808]
 567 00f8 1420     		movs	r0, #20
 568 00fa FFF7FEFF 		bl	_Znwj
 569 00fe 0346     		mov	r3, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 11


 570 0100 0460     		str	r4, [r0]
 571 0102 C5F89C36 		str	r3, [r5, #1692]
 572 0106 1420     		movs	r0, #20
 573 0108 FFF7FEFF 		bl	_Znwj
 574 010c 0346     		mov	r3, r0
 575 010e 0460     		str	r4, [r0]
 576 0110 C5F8A036 		str	r3, [r5, #1696]
 577 0114 1420     		movs	r0, #20
 578 0116 FFF7FEFF 		bl	_Znwj
 579 011a 0346     		mov	r3, r0
 580 011c 0460     		str	r4, [r0]
 581 011e C5F8A436 		str	r3, [r5, #1700]
 582 0122 4FF49E60 		mov	r0, #1264
 583 0126 FFF7FEFF 		bl	_Znwj
 584 012a 2946     		mov	r1, r5
 585 012c 0646     		mov	r6, r0
 586 012e 2C46     		mov	r4, r5
 587 0130 FFF7FEFF 		bl	_ZN11MassStorageC1EP8Platform
 588 0134 05F12807 		add	r7, r5, #40
 589 0138 C5F8B466 		str	r6, [r5, #1716]
 590              	.L64:
 591 013c 3020     		movs	r0, #48
 592 013e FFF7FEFF 		bl	_Znwj
 593 0142 2946     		mov	r1, r5
 594 0144 0646     		mov	r6, r0
 595 0146 0434     		adds	r4, r4, #4
 596 0148 FFF7FEFF 		bl	_ZN9FileStoreC1EP8Platform
 597 014c C4F8B466 		str	r6, [r4, #1716]
 598 0150 BC42     		cmp	r4, r7
 599 0152 F3D1     		bne	.L64
 600 0154 2846     		mov	r0, r5
 601 0156 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 602              	.L70:
 603              		.align	2
 604              	.L69:
 605 0158 00000000 		.word	g_interrupt_enabled
 606              		.size	_ZN8PlatformC2Ev, .-_ZN8PlatformC2Ev
 607              		.global	_ZN8PlatformC1Ev
 608              		.thumb_set _ZN8PlatformC1Ev,_ZN8PlatformC2Ev
 609              		.section	.text._ZN8Platform15InvalidateFilesEPK5FATFS,"ax",%progbits
 610              		.align	2
 611              		.global	_ZN8Platform15InvalidateFilesEPK5FATFS
 612              		.thumb
 613              		.thumb_func
 614              		.type	_ZN8Platform15InvalidateFilesEPK5FATFS, %function
 615              	_ZN8Platform15InvalidateFilesEPK5FATFS:
 616              		@ args = 0, pretend = 0, frame = 0
 617              		@ frame_needed = 0, uses_anonymous_args = 0
 618 0000 70B5     		push	{r4, r5, r6, lr}
 619 0002 0646     		mov	r6, r0
 620 0004 0D46     		mov	r5, r1
 621 0006 0024     		movs	r4, #0
 622              	.L73:
 623 0008 3319     		adds	r3, r6, r4
 624 000a D3F8B806 		ldr	r0, [r3, #1720]
 625 000e 0434     		adds	r4, r4, #4
 626 0010 2946     		mov	r1, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 12


 627 0012 FFF7FEFF 		bl	_ZN9FileStore10InvalidateEPK5FATFS
 628 0016 282C     		cmp	r4, #40
 629 0018 F6D1     		bne	.L73
 630 001a 70BD     		pop	{r4, r5, r6, pc}
 631              		.size	_ZN8Platform15InvalidateFilesEPK5FATFS, .-_ZN8Platform15InvalidateFilesEPK5FATFS
 632              		.section	.text._ZNK8Platform11AnyFileOpenEPK5FATFS,"ax",%progbits
 633              		.align	2
 634              		.global	_ZNK8Platform11AnyFileOpenEPK5FATFS
 635              		.thumb
 636              		.thumb_func
 637              		.type	_ZNK8Platform11AnyFileOpenEPK5FATFS, %function
 638              	_ZNK8Platform11AnyFileOpenEPK5FATFS:
 639              		@ args = 0, pretend = 0, frame = 0
 640              		@ frame_needed = 0, uses_anonymous_args = 0
 641 0000 70B5     		push	{r4, r5, r6, lr}
 642 0002 0646     		mov	r6, r0
 643 0004 0D46     		mov	r5, r1
 644 0006 0024     		movs	r4, #0
 645              	.L76:
 646 0008 3319     		adds	r3, r6, r4
 647 000a D3F8B806 		ldr	r0, [r3, #1720]
 648 000e 2946     		mov	r1, r5
 649 0010 0434     		adds	r4, r4, #4
 650 0012 FFF7FEFF 		bl	_ZNK9FileStore8IsOpenOnEPK5FATFS
 651 0016 10B9     		cbnz	r0, .L77
 652 0018 282C     		cmp	r4, #40
 653 001a F5D1     		bne	.L76
 654 001c 70BD     		pop	{r4, r5, r6, pc}
 655              	.L77:
 656 001e 0120     		movs	r0, #1
 657 0020 70BD     		pop	{r4, r5, r6, pc}
 658              		.size	_ZNK8Platform11AnyFileOpenEPK5FATFS, .-_ZNK8Platform11AnyFileOpenEPK5FATFS
 659 0022 00BF     		.section	.text._ZN8Platform19SetThermistorNumberEjj,"ax",%progbits
 660              		.align	2
 661              		.global	_ZN8Platform19SetThermistorNumberEjj
 662              		.thumb
 663              		.thumb_func
 664              		.type	_ZN8Platform19SetThermistorNumberEjj, %function
 665              	_ZN8Platform19SetThermistorNumberEjj:
 666              		@ args = 0, pretend = 0, frame = 0
 667              		@ frame_needed = 0, uses_anonymous_args = 0
 668 0000 A2F16403 		sub	r3, r2, #100
 669 0004 10B5     		push	{r4, lr}
 670 0006 032B     		cmp	r3, #3
 671 0008 0C46     		mov	r4, r1
 672 000a 00EB8101 		add	r1, r0, r1, lsl #2
 673 000e C1F8E426 		str	r2, [r1, #1764]
 674 0012 15D9     		bls	.L82
 675 0014 C83A     		subs	r2, r2, #200
 676 0016 032A     		cmp	r2, #3
 677 0018 06D9     		bls	.L83
 678              	.L81:
 679 001a 0F4B     		ldr	r3, .L84
 680 001c 61B2     		sxtb	r1, r4
 681 001e D868     		ldr	r0, [r3, #12]
 682 0020 BDE81040 		pop	{r4, lr}
 683 0024 FFF7FEBF 		b	_ZN4Heat10ResetFaultEa
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 13


 684              	.L83:
 685 0028 02EB8203 		add	r3, r2, r2, lsl #2
 686 002c 00EB8303 		add	r3, r0, r3, lsl #2
 687 0030 0244     		add	r2, r2, r0
 688 0032 92F83816 		ldrb	r1, [r2, #1592]	@ zero_extendqisi2
 689 0036 03F5BD60 		add	r0, r3, #1512
 690 003a FFF7FEFF 		bl	_ZN17TemperatureSensor7InitRtdEh
 691 003e ECE7     		b	.L81
 692              	.L82:
 693 0040 03EB8301 		add	r1, r3, r3, lsl #2
 694 0044 054A     		ldr	r2, .L84+4
 695 0046 00EB8100 		add	r0, r0, r1, lsl #2
 696 004a 00F5BD60 		add	r0, r0, #1512
 697 004e D15C     		ldrb	r1, [r2, r3]	@ zero_extendqisi2
 698 0050 FFF7FEFF 		bl	_ZN17TemperatureSensor16InitThermocoupleEh
 699 0054 E1E7     		b	.L81
 700              	.L85:
 701 0056 00BF     		.align	2
 702              	.L84:
 703 0058 00000000 		.word	reprap
 704 005c 00000000 		.word	.LANCHOR3
 705              		.size	_ZN8Platform19SetThermistorNumberEjj, .-_ZN8Platform19SetThermistorNumberEjj
 706              		.section	.text._ZNK8Platform19GetThermistorNumberEj,"ax",%progbits
 707              		.align	2
 708              		.global	_ZNK8Platform19GetThermistorNumberEj
 709              		.thumb
 710              		.thumb_func
 711              		.type	_ZNK8Platform19GetThermistorNumberEj, %function
 712              	_ZNK8Platform19GetThermistorNumberEj:
 713              		@ args = 0, pretend = 0, frame = 0
 714              		@ frame_needed = 0, uses_anonymous_args = 0
 715              		@ link register save eliminated.
 716 0000 00EB8101 		add	r1, r0, r1, lsl #2
 717 0004 D1F8E406 		ldr	r0, [r1, #1764]
 718 0008 7047     		bx	lr
 719              		.size	_ZNK8Platform19GetThermistorNumberEj, .-_ZNK8Platform19GetThermistorNumberEj
 720 000a 00BF     		.section	.text._ZN8Platform17SetZProbeDefaultsEv,"ax",%progbits
 721              		.align	2
 722              		.global	_ZN8Platform17SetZProbeDefaultsEv
 723              		.thumb
 724              		.thumb_func
 725              		.type	_ZN8Platform17SetZProbeDefaultsEv, %function
 726              	_ZN8Platform17SetZProbeDefaultsEv:
 727              		@ args = 0, pretend = 0, frame = 0
 728              		@ frame_needed = 0, uses_anonymous_args = 0
 729              		@ link register save eliminated.
 730 0000 F0B4     		push	{r4, r5, r6, r7}
 731 0002 1C4A     		ldr	r2, .L88
 732 0004 1C4D     		ldr	r5, .L88+4
 733 0006 1D4C     		ldr	r4, .L88+8
 734 0008 DFF874C0 		ldr	ip, .L88+12
 735 000c 0023     		movs	r3, #0
 736 000e 4FF4C877 		mov	r7, #400
 737 0012 0026     		movs	r6, #0
 738 0014 4FF08041 		mov	r1, #1073741824
 739 0018 0760     		str	r7, [r0]
 740 001a 0763     		str	r7, [r0, #48]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 14


 741 001c 0766     		str	r7, [r0, #96]
 742 001e 0561     		str	r5, [r0, #16]	@ float
 743 0020 0564     		str	r5, [r0, #64]	@ float
 744 0022 0567     		str	r5, [r0, #112]	@ float
 745 0024 8461     		str	r4, [r0, #24]	@ float
 746 0026 8464     		str	r4, [r0, #72]	@ float
 747 0028 8467     		str	r4, [r0, #120]	@ float
 748 002a 80F82C60 		strb	r6, [r0, #44]
 749 002e 80F85C60 		strb	r6, [r0, #92]
 750 0032 8360     		str	r3, [r0, #8]	@ float
 751 0034 4360     		str	r3, [r0, #4]	@ float
 752 0036 C360     		str	r3, [r0, #12]	@ float
 753 0038 4361     		str	r3, [r0, #20]	@ float
 754 003a 8362     		str	r3, [r0, #40]	@ float
 755 003c 4362     		str	r3, [r0, #36]	@ float
 756 003e 8363     		str	r3, [r0, #56]	@ float
 757 0040 4363     		str	r3, [r0, #52]	@ float
 758 0042 4364     		str	r3, [r0, #68]	@ float
 759 0044 8365     		str	r3, [r0, #88]	@ float
 760 0046 4365     		str	r3, [r0, #84]	@ float
 761 0048 8366     		str	r3, [r0, #104]	@ float
 762 004a 4366     		str	r3, [r0, #100]	@ float
 763 004c 4367     		str	r3, [r0, #116]	@ float
 764 004e C161     		str	r1, [r0, #28]	@ float
 765 0050 C164     		str	r1, [r0, #76]	@ float
 766 0052 C167     		str	r1, [r0, #124]	@ float
 767 0054 0262     		str	r2, [r0, #32]	@ float
 768 0056 0265     		str	r2, [r0, #80]	@ float
 769 0058 C0F88020 		str	r2, [r0, #128]	@ float
 770 005c C0F83CC0 		str	ip, [r0, #60]	@ float
 771 0060 C0F86CC0 		str	ip, [r0, #108]	@ float
 772 0064 80F88C60 		strb	r6, [r0, #140]
 773 0068 C0F88830 		str	r3, [r0, #136]	@ float
 774 006c C0F88430 		str	r3, [r0, #132]	@ float
 775 0070 F0BC     		pop	{r4, r5, r6, r7}
 776 0072 7047     		bx	lr
 777              	.L89:
 778              		.align	2
 779              	.L88:
 780 0074 0000C842 		.word	1120403456
 781 0078 0000A041 		.word	1101004800
 782 007c 0000A040 		.word	1084227584
 783 0080 3333333F 		.word	1060320051
 784              		.size	_ZN8Platform17SetZProbeDefaultsEv, .-_ZN8Platform17SetZProbeDefaultsEv
 785              		.section	.text._ZN8Platform10InitZProbeEv,"ax",%progbits
 786              		.align	2
 787              		.global	_ZN8Platform10InitZProbeEv
 788              		.thumb
 789              		.thumb_func
 790              		.type	_ZN8Platform10InitZProbeEv, %function
 791              	_ZN8Platform10InitZProbeEv:
 792              		@ args = 0, pretend = 0, frame = 0
 793              		@ frame_needed = 0, uses_anonymous_args = 0
 794 0000 38B5     		push	{r3, r4, r5, lr}
 795 0002 0446     		mov	r4, r0
 796              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 797 0004 EFF31085 		MRS r5, primask
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 15


 798              	@ 0 "" 2
 799              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 800 0008 72B6     		cpsid i
 801              	@ 0 "" 2
 802              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 803 000a BFF35F8F 		dmb
 804              	@ 0 "" 2
 805              		.thumb
 806 000e 4948     		ldr	r0, .L110
 807 0010 0022     		movs	r2, #0
 808 0012 0270     		strb	r2, [r0]
 809 0014 1346     		mov	r3, r2
 810 0016 C4F88022 		str	r2, [r4, #640]
 811 001a 1146     		mov	r1, r2
 812 001c C4F87C22 		str	r2, [r4, #636]
 813 0020 84F88422 		strb	r2, [r4, #644]
 814              	.L92:
 815 0024 04EB4302 		add	r2, r4, r3, lsl #1
 816 0028 0133     		adds	r3, r3, #1
 817 002a 082B     		cmp	r3, #8
 818 002c A2F86C12 		strh	r1, [r2, #620]	@ movhi
 819 0030 F8D1     		bne	.L92
 820 0032 25B9     		cbnz	r5, .L93
 821 0034 0123     		movs	r3, #1
 822 0036 0370     		strb	r3, [r0]
 823              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 824 0038 BFF35F8F 		dmb
 825              	@ 0 "" 2
 826              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 827 003c 62B6     		cpsie i
 828              	@ 0 "" 2
 829              		.thumb
 830              	.L93:
 831              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 832 003e EFF31085 		MRS r5, primask
 833              	@ 0 "" 2
 834              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 835 0042 72B6     		cpsid i
 836              	@ 0 "" 2
 837              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 838 0044 BFF35F8F 		dmb
 839              	@ 0 "" 2
 840              		.thumb
 841 0048 0022     		movs	r2, #0
 842 004a 0270     		strb	r2, [r0]
 843 004c 1346     		mov	r3, r2
 844 004e C4F89C22 		str	r2, [r4, #668]
 845 0052 1146     		mov	r1, r2
 846 0054 C4F89822 		str	r2, [r4, #664]
 847 0058 84F8A022 		strb	r2, [r4, #672]
 848              	.L95:
 849 005c 04EB4302 		add	r2, r4, r3, lsl #1
 850 0060 0133     		adds	r3, r3, #1
 851 0062 082B     		cmp	r3, #8
 852 0064 A2F88812 		strh	r1, [r2, #648]	@ movhi
 853 0068 F8D1     		bne	.L95
 854 006a 25B9     		cbnz	r5, .L96
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 16


 855 006c 0123     		movs	r3, #1
 856 006e 0370     		strb	r3, [r0]
 857              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 858 0070 BFF35F8F 		dmb
 859              	@ 0 "" 2
 860              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 861 0074 62B6     		cpsie i
 862              	@ 0 "" 2
 863              		.thumb
 864              	.L96:
 865 0076 94F8AB20 		ldrb	r2, [r4, #171]	@ zero_extendqisi2
 866 007a D4F89030 		ldr	r3, [r4, #144]
 867 007e 023A     		subs	r2, r2, #2
 868 0080 012A     		cmp	r2, #1
 869 0082 8CBF     		ite	hi
 870 0084 3422     		movhi	r2, #52
 871 0086 6822     		movls	r2, #104
 872 0088 013B     		subs	r3, r3, #1
 873 008a 84F86922 		strb	r2, [r4, #617]
 874 008e 062B     		cmp	r3, #6
 875 0090 05D8     		bhi	.L104
 876 0092 DFE803F0 		tbb	[pc, r3]
 877              	.L100:
 878 0096 25       		.byte	(.L99-.L100)/2
 879 0097 25       		.byte	(.L99-.L100)/2
 880 0098 38       		.byte	(.L101-.L100)/2
 881 0099 41       		.byte	(.L102-.L100)/2
 882 009a 04       		.byte	(.L104-.L100)/2
 883 009b 17       		.byte	(.L103-.L100)/2
 884 009c 04       		.byte	(.L104-.L100)/2
 885 009d 00       		.align	1
 886              	.L104:
 887 009e 94F90707 		ldrsb	r0, [r4, #1799]
 888 00a2 0021     		movs	r1, #0
 889 00a4 FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 890 00a8 94F86802 		ldrb	r0, [r4, #616]	@ zero_extendqisi2
 891              	.L109:
 892 00ac 0121     		movs	r1, #1
 893              	.L108:
 894 00ae 0022     		movs	r2, #0
 895 00b0 FFF7FEFF 		bl	pinModeDuet
 896 00b4 94F86902 		ldrb	r0, [r4, #617]	@ zero_extendqisi2
 897 00b8 0321     		movs	r1, #3
 898 00ba 0022     		movs	r2, #0
 899 00bc BDE83840 		pop	{r3, r4, r5, lr}
 900 00c0 FFF7FEBF 		b	pinModeDuet
 901              	.L103:
 902 00c4 94F90707 		ldrsb	r0, [r4, #1799]
 903 00c8 0021     		movs	r1, #0
 904 00ca FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 905 00ce 94F86802 		ldrb	r0, [r4, #616]	@ zero_extendqisi2
 906 00d2 0121     		movs	r1, #1
 907 00d4 0022     		movs	r2, #0
 908 00d6 FFF7FEFF 		bl	pinModeDuet
 909 00da 94F8E300 		ldrb	r0, [r4, #227]	@ zero_extendqisi2
 910 00de E5E7     		b	.L109
 911              	.L99:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 17


 912 00e0 94F90707 		ldrsb	r0, [r4, #1799]
 913 00e4 0121     		movs	r1, #1
 914 00e6 FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 915 00ea 94F86802 		ldrb	r0, [r4, #616]	@ zero_extendqisi2
 916 00ee 0521     		movs	r1, #5
 917 00f0 0022     		movs	r2, #0
 918 00f2 FFF7FEFF 		bl	pinModeDuet
 919 00f6 94F86902 		ldrb	r0, [r4, #617]	@ zero_extendqisi2
 920 00fa 0421     		movs	r1, #4
 921 00fc 0022     		movs	r2, #0
 922 00fe BDE83840 		pop	{r3, r4, r5, lr}
 923 0102 FFF7FEBF 		b	pinModeDuet
 924              	.L101:
 925 0106 94F90707 		ldrsb	r0, [r4, #1799]
 926 010a 0121     		movs	r1, #1
 927 010c FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 928 0110 94F86802 		ldrb	r0, [r4, #616]	@ zero_extendqisi2
 929 0114 0521     		movs	r1, #5
 930 0116 CAE7     		b	.L108
 931              	.L102:
 932 0118 94F90707 		ldrsb	r0, [r4, #1799]
 933 011c 0021     		movs	r1, #0
 934 011e FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 935 0122 94F86802 		ldrb	r0, [r4, #616]	@ zero_extendqisi2
 936 0126 0121     		movs	r1, #1
 937 0128 0022     		movs	r2, #0
 938 012a FFF7FEFF 		bl	pinModeDuet
 939 012e 94F8E200 		ldrb	r0, [r4, #226]	@ zero_extendqisi2
 940 0132 BBE7     		b	.L109
 941              	.L111:
 942              		.align	2
 943              	.L110:
 944 0134 00000000 		.word	g_interrupt_enabled
 945              		.size	_ZN8Platform10InitZProbeEv, .-_ZN8Platform10InitZProbeEv
 946              		.section	.text._ZNK8Platform16GetZProbeReadingEv,"ax",%progbits
 947              		.align	2
 948              		.global	_ZNK8Platform16GetZProbeReadingEv
 949              		.thumb
 950              		.thumb_func
 951              		.type	_ZNK8Platform16GetZProbeReadingEv, %function
 952              	_ZNK8Platform16GetZProbeReadingEv:
 953              		@ args = 0, pretend = 0, frame = 0
 954              		@ frame_needed = 0, uses_anonymous_args = 0
 955              		@ link register save eliminated.
 956 0000 90F88432 		ldrb	r3, [r0, #644]	@ zero_extendqisi2
 957 0004 10B4     		push	{r4}
 958 0006 13B1     		cbz	r3, .L113
 959 0008 90F8A032 		ldrb	r3, [r0, #672]	@ zero_extendqisi2
 960 000c 8BB9     		cbnz	r3, .L114
 961              	.L113:
 962 000e D0F89020 		ldr	r2, [r0, #144]
 963 0012 0023     		movs	r3, #0
 964              	.L116:
 965 0014 013A     		subs	r2, r2, #1
 966 0016 062A     		cmp	r2, #6
 967 0018 1CD9     		bls	.L126
 968              	.L123:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 18


 969 001a 90F82C20 		ldrb	r2, [r0, #44]	@ zero_extendqisi2
 970 001e 1AB9     		cbnz	r2, .L136
 971              	.L127:
 972 0020 1846     		mov	r0, r3
 973              	.L135:
 974 0022 5DF8044B 		ldr	r4, [sp], #4
 975 0026 7047     		bx	lr
 976              	.L136:
 977 0028 C3F57A70 		rsb	r0, r3, #1000
 978 002c 5DF8044B 		ldr	r4, [sp], #4
 979 0030 7047     		bx	lr
 980              	.L114:
 981 0032 D0F89010 		ldr	r1, [r0, #144]
 982 0036 4A1E     		subs	r2, r1, #1
 983 0038 062A     		cmp	r2, #6
 984 003a 31D8     		bhi	.L128
 985 003c DFE802F0 		tbb	[pc, r2]
 986              	.L125:
 987 0040 28       		.byte	(.L115-.L125)/2
 988 0041 1F       		.byte	(.L117-.L125)/2
 989 0042 28       		.byte	(.L115-.L125)/2
 990 0043 28       		.byte	(.L115-.L125)/2
 991 0044 28       		.byte	(.L115-.L125)/2
 992 0045 28       		.byte	(.L115-.L125)/2
 993 0046 04       		.byte	(.L120-.L125)/2
 994 0047 00       		.align	1
 995              	.L120:
 996 0048 D0F88032 		ldr	r3, [r0, #640]
 997 004c D0F89C12 		ldr	r1, [r0, #668]
 998 0050 0B44     		add	r3, r3, r1
 999 0052 9B09     		lsrs	r3, r3, #6
 1000              	.L126:
 1001 0054 0121     		movs	r1, #1
 1002 0056 01FA02F2 		lsl	r2, r1, r2
 1003 005a 12F0440F 		tst	r2, #68
 1004 005e 08D1     		bne	.L122
 1005 0060 12F0130F 		tst	r2, #19
 1006 0064 D9D0     		beq	.L123
 1007 0066 3030     		adds	r0, r0, #48
 1008 0068 90F82C20 		ldrb	r2, [r0, #44]	@ zero_extendqisi2
 1009 006c 002A     		cmp	r2, #0
 1010 006e D7D0     		beq	.L127
 1011 0070 DAE7     		b	.L136
 1012              	.L122:
 1013 0072 6030     		adds	r0, r0, #96
 1014 0074 90F82C20 		ldrb	r2, [r0, #44]	@ zero_extendqisi2
 1015 0078 002A     		cmp	r2, #0
 1016 007a D1D0     		beq	.L127
 1017 007c D4E7     		b	.L136
 1018              	.L117:
 1019 007e D0F88012 		ldr	r1, [r0, #640]
 1020 0082 D0F89C32 		ldr	r3, [r0, #668]
 1021 0086 CB1A     		subs	r3, r1, r3
 1022 0088 48BF     		it	mi
 1023 008a 1F33     		addmi	r3, r3, #31
 1024 008c 5B11     		asrs	r3, r3, #5
 1025 008e E1E7     		b	.L126
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 19


 1026              	.L115:
 1027 0090 D0F88032 		ldr	r3, [r0, #640]
 1028 0094 D0F89C42 		ldr	r4, [r0, #668]
 1029 0098 0A46     		mov	r2, r1
 1030 009a 2344     		add	r3, r3, r4
 1031 009c 9B09     		lsrs	r3, r3, #6
 1032 009e B9E7     		b	.L116
 1033              	.L128:
 1034 00a0 0020     		movs	r0, #0
 1035 00a2 BEE7     		b	.L135
 1036              		.size	_ZNK8Platform16GetZProbeReadingEv, .-_ZNK8Platform16GetZProbeReadingEv
 1037              		.section	.text._ZN8Platform24GetZProbeSecondaryValuesERiS0_,"ax",%progbits
 1038              		.align	2
 1039              		.global	_ZN8Platform24GetZProbeSecondaryValuesERiS0_
 1040              		.thumb
 1041              		.thumb_func
 1042              		.type	_ZN8Platform24GetZProbeSecondaryValuesERiS0_, %function
 1043              	_ZN8Platform24GetZProbeSecondaryValuesERiS0_:
 1044              		@ args = 0, pretend = 0, frame = 0
 1045              		@ frame_needed = 0, uses_anonymous_args = 0
 1046              		@ link register save eliminated.
 1047 0000 90F88432 		ldrb	r3, [r0, #644]	@ zero_extendqisi2
 1048 0004 63B1     		cbz	r3, .L144
 1049 0006 90F8A032 		ldrb	r3, [r0, #672]	@ zero_extendqisi2
 1050 000a 4BB1     		cbz	r3, .L144
 1051 000c D0F89030 		ldr	r3, [r0, #144]
 1052 0010 022B     		cmp	r3, #2
 1053 0012 05D1     		bne	.L144
 1054 0014 D0F88032 		ldr	r3, [r0, #640]
 1055 0018 0120     		movs	r0, #1
 1056 001a 5B09     		lsrs	r3, r3, #5
 1057 001c 0B60     		str	r3, [r1]
 1058 001e 7047     		bx	lr
 1059              	.L144:
 1060 0020 0020     		movs	r0, #0
 1061 0022 7047     		bx	lr
 1062              		.size	_ZN8Platform24GetZProbeSecondaryValuesERiS0_, .-_ZN8Platform24GetZProbeSecondaryValuesERiS0_
 1063              		.section	.text._ZN8Platform13SetZProbeAxesEm,"ax",%progbits
 1064              		.align	2
 1065              		.global	_ZN8Platform13SetZProbeAxesEm
 1066              		.thumb
 1067              		.thumb_func
 1068              		.type	_ZN8Platform13SetZProbeAxesEm, %function
 1069              	_ZN8Platform13SetZProbeAxesEm:
 1070              		@ args = 0, pretend = 0, frame = 0
 1071              		@ frame_needed = 0, uses_anonymous_args = 0
 1072              		@ link register save eliminated.
 1073 0000 C0F89410 		str	r1, [r0, #148]
 1074 0004 7047     		bx	lr
 1075              		.size	_ZN8Platform13SetZProbeAxesEm, .-_ZN8Platform13SetZProbeAxesEm
 1076 0006 00BF     		.section	.text._ZNK8Platform19GetZProbeDiveHeightEv,"ax",%progbits
 1077              		.align	2
 1078              		.global	_ZNK8Platform19GetZProbeDiveHeightEv
 1079              		.thumb
 1080              		.thumb_func
 1081              		.type	_ZNK8Platform19GetZProbeDiveHeightEv, %function
 1082              	_ZNK8Platform19GetZProbeDiveHeightEv:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 20


 1083              		@ args = 0, pretend = 0, frame = 0
 1084              		@ frame_needed = 0, uses_anonymous_args = 0
 1085              		@ link register save eliminated.
 1086 0000 D0F89030 		ldr	r3, [r0, #144]
 1087 0004 013B     		subs	r3, r3, #1
 1088 0006 062B     		cmp	r3, #6
 1089 0008 08D8     		bhi	.L149
 1090 000a 0122     		movs	r2, #1
 1091 000c 02FA03F3 		lsl	r3, r2, r3
 1092 0010 13F0440F 		tst	r3, #68
 1093 0014 04D1     		bne	.L148
 1094 0016 13F0130F 		tst	r3, #19
 1095 001a 04D1     		bne	.L153
 1096              	.L149:
 1097 001c 8069     		ldr	r0, [r0, #24]	@ float
 1098 001e 7047     		bx	lr
 1099              	.L148:
 1100 0020 6030     		adds	r0, r0, #96
 1101 0022 8069     		ldr	r0, [r0, #24]	@ float
 1102 0024 7047     		bx	lr
 1103              	.L153:
 1104 0026 3030     		adds	r0, r0, #48
 1105 0028 8069     		ldr	r0, [r0, #24]	@ float
 1106 002a 7047     		bx	lr
 1107              		.size	_ZNK8Platform19GetZProbeDiveHeightEv, .-_ZNK8Platform19GetZProbeDiveHeightEv
 1108              		.section	.text._ZNK8Platform20GetZProbeTravelSpeedEv,"ax",%progbits
 1109              		.align	2
 1110              		.global	_ZNK8Platform20GetZProbeTravelSpeedEv
 1111              		.thumb
 1112              		.thumb_func
 1113              		.type	_ZNK8Platform20GetZProbeTravelSpeedEv, %function
 1114              	_ZNK8Platform20GetZProbeTravelSpeedEv:
 1115              		@ args = 0, pretend = 0, frame = 0
 1116              		@ frame_needed = 0, uses_anonymous_args = 0
 1117              		@ link register save eliminated.
 1118 0000 D0F89030 		ldr	r3, [r0, #144]
 1119 0004 013B     		subs	r3, r3, #1
 1120 0006 062B     		cmp	r3, #6
 1121 0008 08D8     		bhi	.L157
 1122 000a 0122     		movs	r2, #1
 1123 000c 02FA03F3 		lsl	r3, r2, r3
 1124 0010 13F0440F 		tst	r3, #68
 1125 0014 04D1     		bne	.L156
 1126 0016 13F0130F 		tst	r3, #19
 1127 001a 04D1     		bne	.L161
 1128              	.L157:
 1129 001c 006A     		ldr	r0, [r0, #32]	@ float
 1130 001e 7047     		bx	lr
 1131              	.L156:
 1132 0020 6030     		adds	r0, r0, #96
 1133 0022 006A     		ldr	r0, [r0, #32]	@ float
 1134 0024 7047     		bx	lr
 1135              	.L161:
 1136 0026 3030     		adds	r0, r0, #48
 1137 0028 006A     		ldr	r0, [r0, #32]	@ float
 1138 002a 7047     		bx	lr
 1139              		.size	_ZNK8Platform20GetZProbeTravelSpeedEv, .-_ZNK8Platform20GetZProbeTravelSpeedEv
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 21


 1140              		.section	.text._ZN8Platform13SetZProbeTypeEi,"ax",%progbits
 1141              		.align	2
 1142              		.global	_ZN8Platform13SetZProbeTypeEi
 1143              		.thumb
 1144              		.thumb_func
 1145              		.type	_ZN8Platform13SetZProbeTypeEi, %function
 1146              	_ZN8Platform13SetZProbeTypeEi:
 1147              		@ args = 0, pretend = 0, frame = 0
 1148              		@ frame_needed = 0, uses_anonymous_args = 0
 1149              		@ link register save eliminated.
 1150 0000 0729     		cmp	r1, #7
 1151 0002 88BF     		it	hi
 1152 0004 0021     		movhi	r1, #0
 1153 0006 C0F89010 		str	r1, [r0, #144]
 1154 000a FFF7FEBF 		b	_ZN8Platform10InitZProbeEv
 1155              		.size	_ZN8Platform13SetZProbeTypeEi, .-_ZN8Platform13SetZProbeTypeEi
 1156 000e 00BF     		.section	.text._ZN8Platform10SetProbingEb,"ax",%progbits
 1157              		.align	2
 1158              		.global	_ZN8Platform10SetProbingEb
 1159              		.thumb
 1160              		.thumb_func
 1161              		.type	_ZN8Platform10SetProbingEb, %function
 1162              	_ZN8Platform10SetProbingEb:
 1163              		@ args = 0, pretend = 0, frame = 0
 1164              		@ frame_needed = 0, uses_anonymous_args = 0
 1165              		@ link register save eliminated.
 1166 0000 D0F89030 		ldr	r3, [r0, #144]
 1167 0004 032B     		cmp	r3, #3
 1168 0006 00DC     		bgt	.L167
 1169 0008 7047     		bx	lr
 1170              	.L167:
 1171 000a 90F86902 		ldrb	r0, [r0, #617]	@ zero_extendqisi2
 1172 000e FFF7FEBF 		b	digitalWrite
 1173              		.size	_ZN8Platform10SetProbingEb, .-_ZN8Platform10SetProbingEb
 1174 0012 00BF     		.section	.text._ZNK8Platform19GetZProbeParametersEl,"ax",%progbits
 1175              		.align	2
 1176              		.global	_ZNK8Platform19GetZProbeParametersEl
 1177              		.thumb
 1178              		.thumb_func
 1179              		.type	_ZNK8Platform19GetZProbeParametersEl, %function
 1180              	_ZNK8Platform19GetZProbeParametersEl:
 1181              		@ args = 0, pretend = 0, frame = 0
 1182              		@ frame_needed = 0, uses_anonymous_args = 0
 1183              		@ link register save eliminated.
 1184 0000 0139     		subs	r1, r1, #1
 1185 0002 0629     		cmp	r1, #6
 1186 0004 08D8     		bhi	.L171
 1187 0006 0123     		movs	r3, #1
 1188 0008 03FA01F1 		lsl	r1, r3, r1
 1189 000c 11F0440F 		tst	r1, #68
 1190 0010 03D1     		bne	.L170
 1191 0012 11F0130F 		tst	r1, #19
 1192 0016 02D1     		bne	.L175
 1193              	.L171:
 1194 0018 7047     		bx	lr
 1195              	.L170:
 1196 001a 6030     		adds	r0, r0, #96
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 22


 1197 001c 7047     		bx	lr
 1198              	.L175:
 1199 001e 3030     		adds	r0, r0, #48
 1200 0020 7047     		bx	lr
 1201              		.size	_ZNK8Platform19GetZProbeParametersEl, .-_ZNK8Platform19GetZProbeParametersEl
 1202 0022 00BF     		.section	.text._ZN8Platform19SetZProbeParametersElRK16ZProbeParameters,"ax",%progbits
 1203              		.align	2
 1204              		.global	_ZN8Platform19SetZProbeParametersElRK16ZProbeParameters
 1205              		.thumb
 1206              		.thumb_func
 1207              		.type	_ZN8Platform19SetZProbeParametersElRK16ZProbeParameters, %function
 1208              	_ZN8Platform19SetZProbeParametersElRK16ZProbeParameters:
 1209              		@ args = 0, pretend = 0, frame = 0
 1210              		@ frame_needed = 0, uses_anonymous_args = 0
 1211              		@ link register save eliminated.
 1212 0000 0139     		subs	r1, r1, #1
 1213 0002 0629     		cmp	r1, #6
 1214 0004 30B4     		push	{r4, r5}
 1215 0006 08D8     		bhi	.L177
 1216 0008 0123     		movs	r3, #1
 1217 000a 03FA01F1 		lsl	r1, r3, r1
 1218 000e 11F0440F 		tst	r1, #68
 1219 0012 0ED1     		bne	.L178
 1220 0014 11F0130F 		tst	r1, #19
 1221 0018 0FD1     		bne	.L184
 1222              	.L177:
 1223 001a 1546     		mov	r5, r2
 1224 001c 0446     		mov	r4, r0
 1225              	.L183:
 1226 001e 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1227 0020 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 1228 0022 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1229 0024 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 1230 0026 95E80F00 		ldmia	r5, {r0, r1, r2, r3}
 1231 002a 84E80F00 		stmia	r4, {r0, r1, r2, r3}
 1232 002e 30BC     		pop	{r4, r5}
 1233 0030 7047     		bx	lr
 1234              	.L178:
 1235 0032 1546     		mov	r5, r2
 1236 0034 00F16004 		add	r4, r0, #96
 1237 0038 F1E7     		b	.L183
 1238              	.L184:
 1239 003a 1546     		mov	r5, r2
 1240 003c 00F13004 		add	r4, r0, #48
 1241 0040 EDE7     		b	.L183
 1242              		.size	_ZN8Platform19SetZProbeParametersElRK16ZProbeParameters, .-_ZN8Platform19SetZProbeParameters
 1243              		.global	__aeabi_fcmplt
 1244              		.global	__aeabi_fcmple
 1245              		.global	__aeabi_fcmpge
 1246 0042 00BF     		.section	.text._ZNK8Platform22IsAccessibleProbePointEff,"ax",%progbits
 1247              		.align	2
 1248              		.global	_ZNK8Platform22IsAccessibleProbePointEff
 1249              		.thumb
 1250              		.thumb_func
 1251              		.type	_ZNK8Platform22IsAccessibleProbePointEff, %function
 1252              	_ZNK8Platform22IsAccessibleProbePointEff:
 1253              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 23


 1254              		@ frame_needed = 0, uses_anonymous_args = 0
 1255 0000 D0F89030 		ldr	r3, [r0, #144]
 1256 0004 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1257 0008 013B     		subs	r3, r3, #1
 1258 000a 062B     		cmp	r3, #6
 1259 000c 0446     		mov	r4, r0
 1260 000e 1546     		mov	r5, r2
 1261 0010 14D8     		bhi	.L186
 1262 0012 0126     		movs	r6, #1
 1263 0014 9E40     		lsls	r6, r6, r3
 1264 0016 16F04408 		ands	r8, r6, #68
 1265 001a 0CD0     		beq	.L216
 1266 001c 00F16003 		add	r3, r0, #96
 1267              	.L189:
 1268 0020 0846     		mov	r0, r1
 1269 0022 5968     		ldr	r1, [r3, #4]	@ float
 1270 0024 FFF7FEFF 		bl	__aeabi_fsub
 1271 0028 0746     		mov	r7, r0
 1272 002a B8F1000F 		cmp	r8, #0
 1273 002e 53D0     		beq	.L217
 1274 0030 04F16003 		add	r3, r4, #96
 1275 0034 08E0     		b	.L191
 1276              	.L216:
 1277 0036 16F0130F 		tst	r6, #19
 1278 003a 48D1     		bne	.L218
 1279              	.L186:
 1280 003c 0846     		mov	r0, r1
 1281 003e 6168     		ldr	r1, [r4, #4]	@ float
 1282 0040 FFF7FEFF 		bl	__aeabi_fsub
 1283 0044 0746     		mov	r7, r0
 1284              	.L190:
 1285 0046 2346     		mov	r3, r4
 1286              	.L191:
 1287 0048 2846     		mov	r0, r5
 1288 004a 9968     		ldr	r1, [r3, #8]	@ float
 1289 004c FFF7FEFF 		bl	__aeabi_fsub
 1290 0050 244B     		ldr	r3, .L220
 1291 0052 8046     		mov	r8, r0
 1292 0054 9E68     		ldr	r6, [r3, #8]
 1293 0056 96F86C54 		ldrb	r5, [r6, #1132]	@ zero_extendqisi2
 1294 005a FDB9     		cbnz	r5, .L219
 1295 005c D4F8E004 		ldr	r0, [r4, #1248]	@ float
 1296 0060 3946     		mov	r1, r7
 1297 0062 FFF7FEFF 		bl	__aeabi_fcmple
 1298 0066 B0B1     		cbz	r0, .L212
 1299 0068 4046     		mov	r0, r8
 1300 006a D4F8E414 		ldr	r1, [r4, #1252]	@ float
 1301 006e FFF7FEFF 		bl	__aeabi_fcmpge
 1302 0072 80B1     		cbz	r0, .L212
 1303 0074 3946     		mov	r1, r7
 1304 0076 D4F8C804 		ldr	r0, [r4, #1224]	@ float
 1305 007a FFF7FEFF 		bl	__aeabi_fcmpge
 1306 007e 48B3     		cbz	r0, .L210
 1307 0080 4046     		mov	r0, r8
 1308 0082 D4F8CC14 		ldr	r1, [r4, #1228]	@ float
 1309 0086 FFF7FEFF 		bl	__aeabi_fcmple
 1310 008a 4FF00103 		mov	r3, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 24


 1311 008e D0B1     		cbz	r0, .L215
 1312              	.L198:
 1313 0090 D8B2     		uxtb	r0, r3
 1314 0092 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1315              	.L212:
 1316 0096 2846     		mov	r0, r5
 1317 0098 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1318              	.L219:
 1319 009c 3946     		mov	r1, r7
 1320 009e 3846     		mov	r0, r7
 1321 00a0 FFF7FEFF 		bl	__aeabi_fmul
 1322 00a4 4146     		mov	r1, r8
 1323 00a6 0446     		mov	r4, r0
 1324 00a8 4046     		mov	r0, r8
 1325 00aa FFF7FEFF 		bl	__aeabi_fmul
 1326 00ae 0146     		mov	r1, r0
 1327 00b0 2046     		mov	r0, r4
 1328 00b2 FFF7FEFF 		bl	__aeabi_fadd
 1329 00b6 D6F88814 		ldr	r1, [r6, #1160]	@ float
 1330 00ba FFF7FEFF 		bl	__aeabi_fcmplt
 1331 00be 4FF00103 		mov	r3, #1
 1332 00c2 0028     		cmp	r0, #0
 1333 00c4 E4D1     		bne	.L198
 1334              	.L215:
 1335 00c6 0346     		mov	r3, r0
 1336 00c8 D8B2     		uxtb	r0, r3
 1337 00ca BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1338              	.L218:
 1339 00ce 00F13003 		add	r3, r0, #48
 1340 00d2 A5E7     		b	.L189
 1341              	.L210:
 1342 00d4 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1343              	.L217:
 1344 00d8 16F0130F 		tst	r6, #19
 1345 00dc B3D0     		beq	.L190
 1346 00de 04F13003 		add	r3, r4, #48
 1347 00e2 B1E7     		b	.L191
 1348              	.L221:
 1349              		.align	2
 1350              	.L220:
 1351 00e4 00000000 		.word	reprap
 1352              		.size	_ZNK8Platform22IsAccessibleProbePointEff, .-_ZNK8Platform22IsAccessibleProbePointEff
 1353              		.section	.text._ZNK8Platform17MustHomeXYBeforeZEv,"ax",%progbits
 1354              		.align	2
 1355              		.global	_ZNK8Platform17MustHomeXYBeforeZEv
 1356              		.thumb
 1357              		.thumb_func
 1358              		.type	_ZNK8Platform17MustHomeXYBeforeZEv, %function
 1359              	_ZNK8Platform17MustHomeXYBeforeZEv:
 1360              		@ args = 0, pretend = 0, frame = 0
 1361              		@ frame_needed = 0, uses_anonymous_args = 0
 1362              		@ link register save eliminated.
 1363 0000 D0F89030 		ldr	r3, [r0, #144]
 1364 0004 23B1     		cbz	r3, .L224
 1365 0006 D0F89400 		ldr	r0, [r0, #148]
 1366 000a C0F38000 		ubfx	r0, r0, #2, #1
 1367 000e 7047     		bx	lr
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 25


 1368              	.L224:
 1369 0010 1846     		mov	r0, r3
 1370 0012 7047     		bx	lr
 1371              		.size	_ZNK8Platform17MustHomeXYBeforeZEv, .-_ZNK8Platform17MustHomeXYBeforeZEv
 1372              		.global	__aeabi_ui2f
 1373              		.section	.text._ZN8Platform4TimeEv,"ax",%progbits
 1374              		.align	2
 1375              		.global	_ZN8Platform4TimeEv
 1376              		.thumb
 1377              		.thumb_func
 1378              		.type	_ZN8Platform4TimeEv, %function
 1379              	_ZN8Platform4TimeEv:
 1380              		@ args = 0, pretend = 0, frame = 0
 1381              		@ frame_needed = 0, uses_anonymous_args = 0
 1382 0000 70B5     		push	{r4, r5, r6, lr}
 1383 0002 0446     		mov	r4, r0
 1384 0004 FFF7FEFF 		bl	micros
 1385 0008 D4F8B830 		ldr	r3, [r4, #184]
 1386 000c 0646     		mov	r6, r0
 1387 000e 9E42     		cmp	r6, r3
 1388 0010 D4F8B400 		ldr	r0, [r4, #180]	@ float
 1389 0014 0AD2     		bcs	.L227
 1390 0016 FFF7FEFF 		bl	__aeabi_f2d
 1391 001a 11A3     		adr	r3, .L228
 1392 001c D3E90023 		ldrd	r2, [r3]
 1393 0020 FFF7FEFF 		bl	__aeabi_dadd
 1394 0024 FFF7FEFF 		bl	__aeabi_d2f
 1395 0028 C4F8B400 		str	r0, [r4, #180]	@ float
 1396              	.L227:
 1397 002c C4F8B860 		str	r6, [r4, #184]
 1398 0030 FFF7FEFF 		bl	__aeabi_f2d
 1399 0034 0446     		mov	r4, r0
 1400 0036 3046     		mov	r0, r6
 1401 0038 0D46     		mov	r5, r1
 1402 003a FFF7FEFF 		bl	__aeabi_ui2f
 1403 003e FFF7FEFF 		bl	__aeabi_f2d
 1404 0042 09A3     		adr	r3, .L228+8
 1405 0044 D3E90023 		ldrd	r2, [r3]
 1406 0048 FFF7FEFF 		bl	__aeabi_dmul
 1407 004c 0246     		mov	r2, r0
 1408 004e 0B46     		mov	r3, r1
 1409 0050 2046     		mov	r0, r4
 1410 0052 2946     		mov	r1, r5
 1411 0054 FFF7FEFF 		bl	__aeabi_dadd
 1412 0058 FFF7FEFF 		bl	__aeabi_d2f
 1413 005c 70BD     		pop	{r4, r5, r6, pc}
 1414              	.L229:
 1415 005e 00BF     		.align	3
 1416              	.L228:
 1417 0060 8DEDB5A0 		.word	-1598689907
 1418 0064 F7C6B040 		.word	1085327095
 1419 0068 8DEDB5A0 		.word	-1598689907
 1420 006c F7C6B03E 		.word	1051772663
 1421              		.size	_ZN8Platform4TimeEv, .-_ZN8Platform4TimeEv
 1422              		.section	.text._ZNK8Platform9EmulatingEv,"ax",%progbits
 1423              		.align	2
 1424              		.global	_ZNK8Platform9EmulatingEv
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 26


 1425              		.thumb
 1426              		.thumb_func
 1427              		.type	_ZNK8Platform9EmulatingEv, %function
 1428              	_ZNK8Platform9EmulatingEv:
 1429              		@ args = 0, pretend = 0, frame = 0
 1430              		@ frame_needed = 0, uses_anonymous_args = 0
 1431              		@ link register save eliminated.
 1432 0000 90F8AA00 		ldrb	r0, [r0, #170]	@ zero_extendqisi2
 1433 0004 0128     		cmp	r0, #1
 1434 0006 08BF     		it	eq
 1435 0008 0020     		moveq	r0, #0
 1436 000a 7047     		bx	lr
 1437              		.size	_ZNK8Platform9EmulatingEv, .-_ZNK8Platform9EmulatingEv
 1438              		.section	.text._ZN8Platform20UpdateNetworkAddressEPhPKh,"ax",%progbits
 1439              		.align	2
 1440              		.global	_ZN8Platform20UpdateNetworkAddressEPhPKh
 1441              		.thumb
 1442              		.thumb_func
 1443              		.type	_ZN8Platform20UpdateNetworkAddressEPhPKh, %function
 1444              	_ZN8Platform20UpdateNetworkAddressEPhPKh:
 1445              		@ args = 0, pretend = 0, frame = 0
 1446              		@ frame_needed = 0, uses_anonymous_args = 0
 1447              		@ link register save eliminated.
 1448 0000 0023     		movs	r3, #0
 1449              	.L235:
 1450 0002 D05C     		ldrb	r0, [r2, r3]	@ zero_extendqisi2
 1451 0004 C854     		strb	r0, [r1, r3]
 1452 0006 0133     		adds	r3, r3, #1
 1453 0008 042B     		cmp	r3, #4
 1454 000a FAD1     		bne	.L235
 1455 000c 7047     		bx	lr
 1456              		.size	_ZN8Platform20UpdateNetworkAddressEPhPKh, .-_ZN8Platform20UpdateNetworkAddressEPhPKh
 1457 000e 00BF     		.section	.text._ZN8Platform12SetIPAddressEPh,"ax",%progbits
 1458              		.align	2
 1459              		.global	_ZN8Platform12SetIPAddressEPh
 1460              		.thumb
 1461              		.thumb_func
 1462              		.type	_ZN8Platform12SetIPAddressEPh, %function
 1463              	_ZN8Platform12SetIPAddressEPh:
 1464              		@ args = 0, pretend = 0, frame = 0
 1465              		@ frame_needed = 0, uses_anonymous_args = 0
 1466              		@ link register save eliminated.
 1467 0000 9830     		adds	r0, r0, #152
 1468 0002 0023     		movs	r3, #0
 1469              	.L239:
 1470 0004 CA5C     		ldrb	r2, [r1, r3]	@ zero_extendqisi2
 1471 0006 C254     		strb	r2, [r0, r3]
 1472 0008 0133     		adds	r3, r3, #1
 1473 000a 042B     		cmp	r3, #4
 1474 000c FAD1     		bne	.L239
 1475 000e 7047     		bx	lr
 1476              		.size	_ZN8Platform12SetIPAddressEPh, .-_ZN8Platform12SetIPAddressEPh
 1477              		.section	.text._ZN8Platform10SetGateWayEPh,"ax",%progbits
 1478              		.align	2
 1479              		.global	_ZN8Platform10SetGateWayEPh
 1480              		.thumb
 1481              		.thumb_func
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 27


 1482              		.type	_ZN8Platform10SetGateWayEPh, %function
 1483              	_ZN8Platform10SetGateWayEPh:
 1484              		@ args = 0, pretend = 0, frame = 0
 1485              		@ frame_needed = 0, uses_anonymous_args = 0
 1486              		@ link register save eliminated.
 1487 0000 A030     		adds	r0, r0, #160
 1488 0002 0023     		movs	r3, #0
 1489              	.L243:
 1490 0004 CA5C     		ldrb	r2, [r1, r3]	@ zero_extendqisi2
 1491 0006 C254     		strb	r2, [r0, r3]
 1492 0008 0133     		adds	r3, r3, #1
 1493 000a 042B     		cmp	r3, #4
 1494 000c FAD1     		bne	.L243
 1495 000e 7047     		bx	lr
 1496              		.size	_ZN8Platform10SetGateWayEPh, .-_ZN8Platform10SetGateWayEPh
 1497              		.section	.text._ZN8Platform10SetNetMaskEPh,"ax",%progbits
 1498              		.align	2
 1499              		.global	_ZN8Platform10SetNetMaskEPh
 1500              		.thumb
 1501              		.thumb_func
 1502              		.type	_ZN8Platform10SetNetMaskEPh, %function
 1503              	_ZN8Platform10SetNetMaskEPh:
 1504              		@ args = 0, pretend = 0, frame = 0
 1505              		@ frame_needed = 0, uses_anonymous_args = 0
 1506              		@ link register save eliminated.
 1507 0000 9C30     		adds	r0, r0, #156
 1508 0002 0023     		movs	r3, #0
 1509              	.L247:
 1510 0004 CA5C     		ldrb	r2, [r1, r3]	@ zero_extendqisi2
 1511 0006 C254     		strb	r2, [r0, r3]
 1512 0008 0133     		adds	r3, r3, #1
 1513 000a 042B     		cmp	r3, #4
 1514 000c FAD1     		bne	.L247
 1515 000e 7047     		bx	lr
 1516              		.size	_ZN8Platform10SetNetMaskEPh, .-_ZN8Platform10SetNetMaskEPh
 1517              		.section	.text.TC4_Handler,"ax",%progbits
 1518              		.align	2
 1519              		.global	TC4_Handler
 1520              		.thumb
 1521              		.thumb_func
 1522              		.type	TC4_Handler, %function
 1523              	TC4_Handler:
 1524              		@ args = 0, pretend = 0, frame = 0
 1525              		@ frame_needed = 0, uses_anonymous_args = 0
 1526 0000 08B5     		push	{r3, lr}
 1527 0002 0548     		ldr	r0, .L250
 1528 0004 0121     		movs	r1, #1
 1529 0006 FFF7FEFF 		bl	tc_get_status
 1530 000a 044B     		ldr	r3, .L250+4
 1531 000c 5868     		ldr	r0, [r3, #4]
 1532 000e BDE80840 		pop	{r3, lr}
 1533 0012 FFF7FEBF 		b	_ZN7Network9InterruptEv
 1534              	.L251:
 1535 0016 00BF     		.align	2
 1536              	.L250:
 1537 0018 00400840 		.word	1074282496
 1538 001c 00000000 		.word	reprap
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 28


 1539              		.size	TC4_Handler, .-TC4_Handler
 1540              		.section	.text._ZN8Platform20InitialiseInterruptsEv,"ax",%progbits
 1541              		.align	2
 1542              		.global	_ZN8Platform20InitialiseInterruptsEv
 1543              		.thumb
 1544              		.thumb_func
 1545              		.type	_ZN8Platform20InitialiseInterruptsEv, %function
 1546              	_ZN8Platform20InitialiseInterruptsEv:
 1547              		@ args = 0, pretend = 0, frame = 0
 1548              		@ frame_needed = 0, uses_anonymous_args = 0
 1549 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1550 0004 2D4B     		ldr	r3, .L257
 1551 0006 2E4D     		ldr	r5, .L257+4
 1552 0008 0026     		movs	r6, #0
 1553 000a 4FF01008 		mov	r8, #16
 1554 000e 2D4C     		ldr	r4, .L257+8
 1555 0010 83F82360 		strb	r6, [r3, #35]
 1556 0014 0746     		mov	r7, r0
 1557 0016 85F80883 		strb	r8, [r5, #776]
 1558 001a 3046     		mov	r0, r6
 1559 001c FFF7FEFF 		bl	pmc_set_writeprotect
 1560 0020 1E20     		movs	r0, #30
 1561 0022 FFF7FEFF 		bl	pmc_enable_periph_clk
 1562 0026 48F20302 		movw	r2, #32771
 1563 002a 3146     		mov	r1, r6
 1564 002c 2046     		mov	r0, r4
 1565 002e FFF7FEFF 		bl	tc_init
 1566 0032 4FF0FF33 		mov	r3, #-1
 1567 0036 A362     		str	r3, [r4, #40]
 1568 0038 2046     		mov	r0, r4
 1569 003a 3146     		mov	r1, r6
 1570 003c FFF7FEFF 		bl	tc_start
 1571 0040 3146     		mov	r1, r6
 1572 0042 2046     		mov	r0, r4
 1573 0044 FFF7FEFF 		bl	tc_get_status
 1574 0048 4FF08043 		mov	r3, #1073741824
 1575 004c 2022     		movs	r2, #32
 1576 004e 85F81E23 		strb	r2, [r5, #798]
 1577 0052 1F20     		movs	r0, #31
 1578 0054 2B60     		str	r3, [r5]
 1579 0056 FFF7FEFF 		bl	pmc_enable_periph_clk
 1580 005a 2046     		mov	r0, r4
 1581 005c 0121     		movs	r1, #1
 1582 005e 4CF20102 		movw	r2, #49153
 1583 0062 FFF7FEFF 		bl	tc_init
 1584 0066 2046     		mov	r0, r4
 1585 0068 0121     		movs	r1, #1
 1586 006a 174A     		ldr	r2, .L257+12
 1587 006c FFF7FEFF 		bl	tc_write_ra
 1588 0070 164A     		ldr	r2, .L257+16
 1589 0072 2046     		mov	r0, r4
 1590 0074 0121     		movs	r1, #1
 1591 0076 FFF7FEFF 		bl	tc_write_rc
 1592 007a 2046     		mov	r0, r4
 1593 007c 0121     		movs	r1, #1
 1594 007e FFF7FEFF 		bl	tc_start
 1595 0082 6FF01001 		mvn	r1, #16
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 29


 1596 0086 4022     		movs	r2, #64
 1597 0088 4FF00043 		mov	r3, #-2147483648
 1598 008c C4F86480 		str	r8, [r4, #100]
 1599 0090 A166     		str	r1, [r4, #104]
 1600 0092 85F81F23 		strb	r2, [r5, #799]
 1601 0096 2B60     		str	r3, [r5]
 1602 0098 97F88406 		ldrb	r0, [r7, #1668]	@ zero_extendqisi2
 1603 009c FF28     		cmp	r0, #255
 1604 009e 03D0     		beq	.L253
 1605 00a0 0B49     		ldr	r1, .L257+20
 1606 00a2 0322     		movs	r2, #3
 1607 00a4 FFF7FEFF 		bl	attachInterrupt
 1608              	.L253:
 1609 00a8 0023     		movs	r3, #0
 1610 00aa 0122     		movs	r2, #1
 1611 00ac 87F80837 		strb	r3, [r7, #1800]
 1612 00b0 C7F80C37 		str	r3, [r7, #1804]
 1613 00b4 87F8BC20 		strb	r2, [r7, #188]
 1614 00b8 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1615              	.L258:
 1616              		.align	2
 1617              	.L257:
 1618 00bc 00ED00E0 		.word	-536810240
 1619 00c0 00E100E0 		.word	-536813312
 1620 00c4 00400840 		.word	1074282496
 1621 00c8 BD010500 		.word	328125
 1622 00cc 7A030A00 		.word	656250
 1623 00d0 00000000 		.word	_Z12FanInterruptv
 1624              		.size	_ZN8Platform20InitialiseInterruptsEv, .-_ZN8Platform20InitialiseInterruptsEv
 1625              		.section	.text._ZNK8Platform13GetStackUsageEPmS0_S0_,"ax",%progbits
 1626              		.align	2
 1627              		.global	_ZNK8Platform13GetStackUsageEPmS0_S0_
 1628              		.thumb
 1629              		.thumb_func
 1630              		.type	_ZNK8Platform13GetStackUsageEPmS0_S0_, %function
 1631              	_ZNK8Platform13GetStackUsageEPmS0_S0_:
 1632              		@ args = 0, pretend = 0, frame = 0
 1633              		@ frame_needed = 0, uses_anonymous_args = 0
 1634 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1635 0004 0020     		movs	r0, #0
 1636 0006 9246     		mov	r10, r2
 1637 0008 8946     		mov	r9, r1
 1638 000a 9846     		mov	r8, r3
 1639 000c FFF7FEFF 		bl	sbrk
 1640 0010 6A46     		mov	r2, sp
 1641 0012 9042     		cmp	r0, r2
 1642 0014 23D2     		bcs	.L266
 1643 0016 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 1644 0018 A52B     		cmp	r3, #165
 1645 001a 20D1     		bne	.L266
 1646 001c 441C     		adds	r4, r0, #1
 1647 001e 6F46     		mov	r7, sp
 1648 0020 02E0     		b	.L261
 1649              	.L277:
 1650 0022 2E78     		ldrb	r6, [r5]	@ zero_extendqisi2
 1651 0024 A52E     		cmp	r6, #165
 1652 0026 04D1     		bne	.L260
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 30


 1653              	.L261:
 1654 0028 BC42     		cmp	r4, r7
 1655 002a 2546     		mov	r5, r4
 1656 002c 04F10104 		add	r4, r4, #1
 1657 0030 F7D1     		bne	.L277
 1658              	.L260:
 1659 0032 B9F1000F 		cmp	r9, #0
 1660 0036 03D0     		beq	.L262
 1661 0038 0A4B     		ldr	r3, .L278
 1662 003a 9A1A     		subs	r2, r3, r2
 1663 003c C9F80020 		str	r2, [r9]
 1664              	.L262:
 1665 0040 BAF1000F 		cmp	r10, #0
 1666 0044 03D0     		beq	.L263
 1667 0046 074B     		ldr	r3, .L278
 1668 0048 5B1B     		subs	r3, r3, r5
 1669 004a CAF80030 		str	r3, [r10]
 1670              	.L263:
 1671 004e B8F1000F 		cmp	r8, #0
 1672 0052 02D0     		beq	.L259
 1673 0054 2D1A     		subs	r5, r5, r0
 1674 0056 C8F80050 		str	r5, [r8]
 1675              	.L259:
 1676 005a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1677              	.L266:
 1678 005e 0546     		mov	r5, r0
 1679 0060 E7E7     		b	.L260
 1680              	.L279:
 1681 0062 00BF     		.align	2
 1682              	.L278:
 1683 0064 00000000 		.word	_estack
 1684              		.size	_ZNK8Platform13GetStackUsageEPmS0_S0_, .-_ZNK8Platform13GetStackUsageEPmS0_S0_
 1685              		.section	.text._ZN8Platform14GetTemperatureEjR16TemperatureError,"ax",%progbits
 1686              		.align	2
 1687              		.global	_ZN8Platform14GetTemperatureEjR16TemperatureError
 1688              		.thumb
 1689              		.thumb_func
 1690              		.type	_ZN8Platform14GetTemperatureEjR16TemperatureError, %function
 1691              	_ZN8Platform14GetTemperatureEjR16TemperatureError:
 1692              		@ args = 0, pretend = 0, frame = 8
 1693              		@ frame_needed = 0, uses_anonymous_args = 0
 1694 0000 30B5     		push	{r4, r5, lr}
 1695 0002 CBB2     		uxtb	r3, r1
 1696 0004 00EB8303 		add	r3, r0, r3, lsl #2
 1697 0008 D3F8E436 		ldr	r3, [r3, #1764]
 1698 000c 83B0     		sub	sp, sp, #12
 1699 000e 062B     		cmp	r3, #6
 1700 0010 1446     		mov	r4, r2
 1701 0012 0CD8     		bhi	.L281
 1702 0014 4C23     		movs	r3, #76
 1703 0016 03FB0103 		mla	r3, r3, r1, r0
 1704 001a 93F8EC22 		ldrb	r2, [r3, #748]	@ zero_extendqisi2
 1705 001e 03F52973 		add	r3, r3, #676
 1706 0022 82B9     		cbnz	r2, .L296
 1707 0024 2648     		ldr	r0, .L299
 1708 0026 0923     		movs	r3, #9
 1709 0028 2370     		strb	r3, [r4]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 31


 1710 002a 03B0     		add	sp, sp, #12
 1711              		@ sp needed
 1712 002c 30BD     		pop	{r4, r5, pc}
 1713              	.L281:
 1714 002e A3F16402 		sub	r2, r3, #100
 1715 0032 032A     		cmp	r2, #3
 1716 0034 1AD9     		bls	.L297
 1717 0036 C83B     		subs	r3, r3, #200
 1718 0038 032B     		cmp	r3, #3
 1719 003a 2AD9     		bls	.L298
 1720 003c 0B23     		movs	r3, #11
 1721 003e 2048     		ldr	r0, .L299
 1722 0040 2370     		strb	r3, [r4]
 1723              	.L286:
 1724 0042 03B0     		add	sp, sp, #12
 1725              		@ sp needed
 1726 0044 30BD     		pop	{r4, r5, pc}
 1727              	.L296:
 1728 0046 C1EBC101 		rsb	r1, r1, r1, lsl #3
 1729 004a 5B6C     		ldr	r3, [r3, #68]
 1730 004c 00EB8100 		add	r0, r0, r1, lsl #2
 1731 0050 00F22450 		addw	r0, r0, #1316
 1732 0054 1909     		lsrs	r1, r3, #4
 1733 0056 FFF7FEFF 		bl	_ZNK10Thermistor15CalcTemperatureEl
 1734 005a 1A49     		ldr	r1, .L299+4
 1735 005c 0546     		mov	r5, r0
 1736 005e FFF7FEFF 		bl	__aeabi_fcmplt
 1737 0062 48B3     		cbz	r0, .L294
 1738 0064 0423     		movs	r3, #4
 1739 0066 2370     		strb	r3, [r4]
 1740 0068 1748     		ldr	r0, .L299+8
 1741 006a EAE7     		b	.L286
 1742              	.L297:
 1743 006c 00EB8101 		add	r1, r0, r1, lsl #2
 1744 0070 D1F8E436 		ldr	r3, [r1, #1764]
 1745 0074 01A9     		add	r1, sp, #4
 1746 0076 643B     		subs	r3, r3, #100
 1747 0078 03EB8303 		add	r3, r3, r3, lsl #2
 1748 007c 00EB8300 		add	r0, r0, r3, lsl #2
 1749 0080 00F5BD60 		add	r0, r0, #1512
 1750 0084 FFF7FEFF 		bl	_ZN17TemperatureSensor26GetThermocoupleTemperatureEPf
 1751 0088 2070     		strb	r0, [r4]
 1752 008a 98B9     		cbnz	r0, .L292
 1753              	.L295:
 1754 008c 0198     		ldr	r0, [sp, #4]	@ float
 1755 008e 03B0     		add	sp, sp, #12
 1756              		@ sp needed
 1757 0090 30BD     		pop	{r4, r5, pc}
 1758              	.L298:
 1759 0092 00EB8101 		add	r1, r0, r1, lsl #2
 1760 0096 D1F8E436 		ldr	r3, [r1, #1764]
 1761 009a 01A9     		add	r1, sp, #4
 1762 009c C83B     		subs	r3, r3, #200
 1763 009e 03EB8303 		add	r3, r3, r3, lsl #2
 1764 00a2 00EB8300 		add	r0, r0, r3, lsl #2
 1765 00a6 00F5BD60 		add	r0, r0, #1512
 1766 00aa FFF7FEFF 		bl	_ZN17TemperatureSensor17GetRtdTemperatureEPf
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 32


 1767 00ae 2070     		strb	r0, [r4]
 1768 00b0 0028     		cmp	r0, #0
 1769 00b2 EBD0     		beq	.L295
 1770              	.L292:
 1771 00b4 0248     		ldr	r0, .L299
 1772 00b6 C4E7     		b	.L286
 1773              	.L294:
 1774 00b8 2070     		strb	r0, [r4]
 1775 00ba 2846     		mov	r0, r5
 1776 00bc C1E7     		b	.L286
 1777              	.L300:
 1778 00be 00BF     		.align	2
 1779              	.L299:
 1780 00c0 0000FA44 		.word	1157234688
 1781 00c4 0000A0C0 		.word	-1063256064
 1782 00c8 339388C3 		.word	-1014459597
 1783              		.size	_ZN8Platform14GetTemperatureEjR16TemperatureError, .-_ZN8Platform14GetTemperatureEjR16Temper
 1784              		.section	.text._ZN8Platform20GetZProbeTemperatureEv,"ax",%progbits
 1785              		.align	2
 1786              		.global	_ZN8Platform20GetZProbeTemperatureEv
 1787              		.thumb
 1788              		.thumb_func
 1789              		.type	_ZN8Platform20GetZProbeTemperatureEv, %function
 1790              	_ZN8Platform20GetZProbeTemperatureEv:
 1791              		@ args = 0, pretend = 0, frame = 8
 1792              		@ frame_needed = 0, uses_anonymous_args = 0
 1793 0000 00B5     		push	{lr}
 1794 0002 094B     		ldr	r3, .L305
 1795 0004 83B0     		sub	sp, sp, #12
 1796 0006 DB68     		ldr	r3, [r3, #12]
 1797 0008 93F92A10 		ldrsb	r1, [r3, #42]
 1798 000c 0029     		cmp	r1, #0
 1799 000e 06DB     		blt	.L304
 1800 0010 0DF10702 		add	r2, sp, #7
 1801 0014 FFF7FEFF 		bl	_ZN8Platform14GetTemperatureEjR16TemperatureError
 1802 0018 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 1803 001c 03B1     		cbz	r3, .L302
 1804              	.L304:
 1805 001e 0348     		ldr	r0, .L305+4
 1806              	.L302:
 1807 0020 03B0     		add	sp, sp, #12
 1808              		@ sp needed
 1809 0022 5DF804FB 		ldr	pc, [sp], #4
 1810              	.L306:
 1811 0026 00BF     		.align	2
 1812              	.L305:
 1813 0028 00000000 		.word	reprap
 1814 002c 0000C841 		.word	1103626240
 1815              		.size	_ZN8Platform20GetZProbeTemperatureEv, .-_ZN8Platform20GetZProbeTemperatureEv
 1816              		.section	.text._ZN8Platform16ZProbeStopHeightEv,"ax",%progbits
 1817              		.align	2
 1818              		.global	_ZN8Platform16ZProbeStopHeightEv
 1819              		.thumb
 1820              		.thumb_func
 1821              		.type	_ZN8Platform16ZProbeStopHeightEv, %function
 1822              	_ZN8Platform16ZProbeStopHeightEv:
 1823              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 33


 1824              		@ frame_needed = 0, uses_anonymous_args = 0
 1825 0000 D0F89030 		ldr	r3, [r0, #144]
 1826 0004 10B5     		push	{r4, lr}
 1827 0006 013B     		subs	r3, r3, #1
 1828 0008 062B     		cmp	r3, #6
 1829 000a 08D8     		bhi	.L308
 1830 000c 0122     		movs	r2, #1
 1831 000e 02FA03F3 		lsl	r3, r2, r3
 1832 0012 13F0440F 		tst	r3, #68
 1833 0016 0FD1     		bne	.L309
 1834 0018 13F0130F 		tst	r3, #19
 1835 001c 0FD1     		bne	.L314
 1836              	.L308:
 1837 001e 0446     		mov	r4, r0
 1838              	.L310:
 1839 0020 FFF7FEFF 		bl	_ZN8Platform20GetZProbeTemperatureEv
 1840 0024 2169     		ldr	r1, [r4, #16]	@ float
 1841 0026 FFF7FEFF 		bl	__aeabi_fsub
 1842 002a 6169     		ldr	r1, [r4, #20]	@ float
 1843 002c FFF7FEFF 		bl	__aeabi_fmul
 1844 0030 E168     		ldr	r1, [r4, #12]	@ float
 1845 0032 FFF7FEFF 		bl	__aeabi_fadd
 1846 0036 10BD     		pop	{r4, pc}
 1847              	.L309:
 1848 0038 00F16004 		add	r4, r0, #96
 1849 003c F0E7     		b	.L310
 1850              	.L314:
 1851 003e 00F13004 		add	r4, r0, #48
 1852 0042 EDE7     		b	.L310
 1853              		.size	_ZN8Platform16ZProbeStopHeightEv, .-_ZN8Platform16ZProbeStopHeightEv
 1854              		.section	.text._ZN8Platform23GetZProbeStartingHeightEv,"ax",%progbits
 1855              		.align	2
 1856              		.global	_ZN8Platform23GetZProbeStartingHeightEv
 1857              		.thumb
 1858              		.thumb_func
 1859              		.type	_ZN8Platform23GetZProbeStartingHeightEv, %function
 1860              	_ZN8Platform23GetZProbeStartingHeightEv:
 1861              		@ args = 0, pretend = 0, frame = 0
 1862              		@ frame_needed = 0, uses_anonymous_args = 0
 1863 0000 38B5     		push	{r3, r4, r5, lr}
 1864 0002 D0F89030 		ldr	r3, [r0, #144]
 1865 0006 013B     		subs	r3, r3, #1
 1866 0008 062B     		cmp	r3, #6
 1867 000a 08D8     		bhi	.L316
 1868 000c 0122     		movs	r2, #1
 1869 000e 02FA03F3 		lsl	r3, r2, r3
 1870 0012 13F0440F 		tst	r3, #68
 1871 0016 1ED1     		bne	.L317
 1872 0018 13F0130F 		tst	r3, #19
 1873 001c 23D1     		bne	.L328
 1874              	.L316:
 1875 001e 0446     		mov	r4, r0
 1876              	.L318:
 1877 0020 A569     		ldr	r5, [r4, #24]	@ float
 1878 0022 FFF7FEFF 		bl	_ZN8Platform20GetZProbeTemperatureEv
 1879 0026 2169     		ldr	r1, [r4, #16]	@ float
 1880 0028 FFF7FEFF 		bl	__aeabi_fsub
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 34


 1881 002c 6169     		ldr	r1, [r4, #20]	@ float
 1882 002e FFF7FEFF 		bl	__aeabi_fmul
 1883 0032 E168     		ldr	r1, [r4, #12]	@ float
 1884 0034 FFF7FEFF 		bl	__aeabi_fadd
 1885 0038 0146     		mov	r1, r0
 1886 003a 0446     		mov	r4, r0
 1887 003c FFF7FEFF 		bl	__aeabi_fcmpun
 1888 0040 20B9     		cbnz	r0, .L321
 1889 0042 2046     		mov	r0, r4
 1890 0044 0021     		movs	r1, #0
 1891 0046 FFF7FEFF 		bl	__aeabi_fcmpgt
 1892 004a 38B1     		cbz	r0, .L327
 1893              	.L321:
 1894 004c 2146     		mov	r1, r4
 1895 004e 2846     		mov	r0, r5
 1896 0050 FFF7FEFF 		bl	__aeabi_fadd
 1897 0054 38BD     		pop	{r3, r4, r5, pc}
 1898              	.L317:
 1899 0056 00F16004 		add	r4, r0, #96
 1900 005a E1E7     		b	.L318
 1901              	.L327:
 1902 005c 0021     		movs	r1, #0
 1903 005e 2846     		mov	r0, r5
 1904 0060 FFF7FEFF 		bl	__aeabi_fadd
 1905 0064 38BD     		pop	{r3, r4, r5, pc}
 1906              	.L328:
 1907 0066 00F13004 		add	r4, r0, #48
 1908 006a D9E7     		b	.L318
 1909              		.size	_ZN8Platform23GetZProbeStartingHeightEv, .-_ZN8Platform23GetZProbeStartingHeightEv
 1910              		.section	.text._ZN8Platform12AnyHeaterHotEtf,"ax",%progbits
 1911              		.align	2
 1912              		.global	_ZN8Platform12AnyHeaterHotEtf
 1913              		.thumb
 1914              		.thumb_func
 1915              		.type	_ZN8Platform12AnyHeaterHotEtf, %function
 1916              	_ZN8Platform12AnyHeaterHotEtf:
 1917              		@ args = 0, pretend = 0, frame = 8
 1918              		@ frame_needed = 0, uses_anonymous_args = 0
 1919 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1920 0004 1E4E     		ldr	r6, .L347
 1921 0006 83B0     		sub	sp, sp, #12
 1922 0008 0746     		mov	r7, r0
 1923 000a 0D46     		mov	r5, r1
 1924 000c 9046     		mov	r8, r2
 1925 000e 0024     		movs	r4, #0
 1926 0010 0BE0     		b	.L335
 1927              	.L346:
 1928 0012 F368     		ldr	r3, [r6, #12]
 1929 0014 93F92A20 		ldrsb	r2, [r3, #42]
 1930 0018 9442     		cmp	r4, r2
 1931 001a 2ED0     		beq	.L338
 1932 001c 93F92B20 		ldrsb	r2, [r3, #43]
 1933 0020 9442     		cmp	r4, r2
 1934 0022 2AD0     		beq	.L338
 1935              	.L330:
 1936 0024 0134     		adds	r4, r4, #1
 1937 0026 072C     		cmp	r4, #7
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 35


 1938 0028 23D0     		beq	.L345
 1939              	.L335:
 1940 002a 45FA04F3 		asr	r3, r5, r4
 1941 002e DB07     		lsls	r3, r3, #31
 1942 0030 F8D5     		bpl	.L330
 1943 0032 F38D     		ldrh	r3, [r6, #46]
 1944 0034 A342     		cmp	r3, r4
 1945 0036 ECD9     		bls	.L346
 1946 0038 F068     		ldr	r0, [r6, #12]
 1947              	.L332:
 1948 003a 2146     		mov	r1, r4
 1949 003c FFF7FEFF 		bl	_ZNK4Heat8IsTuningEj
 1950 0040 98B9     		cbnz	r0, .L333
 1951 0042 3846     		mov	r0, r7
 1952 0044 2146     		mov	r1, r4
 1953 0046 0DF10702 		add	r2, sp, #7
 1954 004a FFF7FEFF 		bl	_ZN8Platform14GetTemperatureEjR16TemperatureError
 1955 004e 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 1956 0052 8146     		mov	r9, r0
 1957 0054 4BB9     		cbnz	r3, .L333
 1958 0056 4146     		mov	r1, r8
 1959 0058 FFF7FEFF 		bl	__aeabi_fcmpge
 1960 005c 28B9     		cbnz	r0, .L333
 1961 005e 4846     		mov	r0, r9
 1962 0060 0849     		ldr	r1, .L347+4
 1963 0062 FFF7FEFF 		bl	__aeabi_fcmplt
 1964 0066 0028     		cmp	r0, #0
 1965 0068 DCD0     		beq	.L330
 1966              	.L333:
 1967 006a 0120     		movs	r0, #1
 1968 006c 03B0     		add	sp, sp, #12
 1969              		@ sp needed
 1970 006e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1971              	.L345:
 1972 0072 0020     		movs	r0, #0
 1973 0074 03B0     		add	sp, sp, #12
 1974              		@ sp needed
 1975 0076 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1976              	.L338:
 1977 007a 1846     		mov	r0, r3
 1978 007c DDE7     		b	.L332
 1979              	.L348:
 1980 007e 00BF     		.align	2
 1981              	.L347:
 1982 0080 00000000 		.word	reprap
 1983 0084 000020C1 		.word	-1054867456
 1984              		.size	_ZN8Platform12AnyHeaterHotEtf, .-_ZN8Platform12AnyHeaterHotEtf
 1985              		.section	.text._ZN8Platform9SetHeaterEjf,"ax",%progbits
 1986              		.align	2
 1987              		.global	_ZN8Platform9SetHeaterEjf
 1988              		.thumb
 1989              		.thumb_func
 1990              		.type	_ZN8Platform9SetHeaterEjf, %function
 1991              	_ZN8Platform9SetHeaterEjf:
 1992              		@ args = 0, pretend = 0, frame = 0
 1993              		@ frame_needed = 0, uses_anonymous_args = 0
 1994 0000 70B5     		push	{r4, r5, r6, lr}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 36


 1995 0002 4418     		adds	r4, r0, r1
 1996 0004 94F81D35 		ldrb	r3, [r4, #1309]	@ zero_extendqisi2
 1997 0008 1546     		mov	r5, r2
 1998 000a FF2B     		cmp	r3, #255
 1999 000c 16D0     		beq	.L349
 2000 000e 0C4B     		ldr	r3, .L353
 2001 0010 49B2     		sxtb	r1, r1
 2002 0012 D868     		ldr	r0, [r3, #12]
 2003 0014 FFF7FEFF 		bl	_ZNK4Heat10UseSlowPwmEa
 2004 0018 2946     		mov	r1, r5
 2005 001a 0028     		cmp	r0, #0
 2006 001c 4FF07E50 		mov	r0, #1065353216
 2007 0020 94F81D65 		ldrb	r6, [r4, #1309]	@ zero_extendqisi2
 2008 0024 0CBF     		ite	eq
 2009 0026 FA24     		moveq	r4, #250
 2010 0028 0A24     		movne	r4, #10
 2011 002a FFF7FEFF 		bl	__aeabi_fsub
 2012 002e 2246     		mov	r2, r4
 2013 0030 0146     		mov	r1, r0
 2014 0032 3046     		mov	r0, r6
 2015 0034 BDE87040 		pop	{r4, r5, r6, lr}
 2016 0038 FFF7FEBF 		b	_Z9AnalogOuthft
 2017              	.L349:
 2018 003c 70BD     		pop	{r4, r5, r6, pc}
 2019              	.L354:
 2020 003e 00BF     		.align	2
 2021              	.L353:
 2022 0040 00000000 		.word	reprap
 2023              		.size	_ZN8Platform9SetHeaterEjf, .-_ZN8Platform9SetHeaterEjf
 2024              		.section	.text._ZN8Platform23UpdateConfiguredHeatersEv,"ax",%progbits
 2025              		.align	2
 2026              		.global	_ZN8Platform23UpdateConfiguredHeatersEv
 2027              		.thumb
 2028              		.thumb_func
 2029              		.type	_ZN8Platform23UpdateConfiguredHeatersEv, %function
 2030              	_ZN8Platform23UpdateConfiguredHeatersEv:
 2031              		@ args = 0, pretend = 0, frame = 0
 2032              		@ frame_needed = 0, uses_anonymous_args = 0
 2033 0000 70B5     		push	{r4, r5, r6, lr}
 2034 0002 164B     		ldr	r3, .L364
 2035 0004 0022     		movs	r2, #0
 2036 0006 DB68     		ldr	r3, [r3, #12]
 2037 0008 C0F83C26 		str	r2, [r0, #1596]
 2038 000c 93F92A20 		ldrsb	r2, [r3, #42]
 2039 0010 0546     		mov	r5, r0
 2040 0012 002A     		cmp	r2, #0
 2041 0014 04DB     		blt	.L356
 2042 0016 0121     		movs	r1, #1
 2043 0018 01FA02F2 		lsl	r2, r1, r2
 2044 001c C0F83C26 		str	r2, [r0, #1596]
 2045              	.L356:
 2046 0020 93F92B30 		ldrsb	r3, [r3, #43]
 2047 0024 002B     		cmp	r3, #0
 2048 0026 07DB     		blt	.L357
 2049 0028 0122     		movs	r2, #1
 2050 002a 02FA03F3 		lsl	r3, r2, r3
 2051 002e D5F83C26 		ldr	r2, [r5, #1596]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 37


 2052 0032 1A43     		orrs	r2, r2, r3
 2053 0034 C5F83C26 		str	r2, [r5, #1596]
 2054              	.L357:
 2055 0038 0024     		movs	r4, #0
 2056 003a 0126     		movs	r6, #1
 2057              	.L360:
 2058 003c 0748     		ldr	r0, .L364
 2059 003e 61B2     		sxtb	r1, r4
 2060 0040 FFF7FEFF 		bl	_ZNK6RepRap22IsHeaterAssignedToToolEa
 2061 0044 30B1     		cbz	r0, .L358
 2062 0046 06FA04F2 		lsl	r2, r6, r4
 2063 004a D5F83C36 		ldr	r3, [r5, #1596]
 2064 004e 1343     		orrs	r3, r3, r2
 2065 0050 C5F83C36 		str	r3, [r5, #1596]
 2066              	.L358:
 2067 0054 0134     		adds	r4, r4, #1
 2068 0056 072C     		cmp	r4, #7
 2069 0058 F0D1     		bne	.L360
 2070 005a 70BD     		pop	{r4, r5, r6, pc}
 2071              	.L365:
 2072              		.align	2
 2073              	.L364:
 2074 005c 00000000 		.word	reprap
 2075              		.size	_ZN8Platform23UpdateConfiguredHeatersEv, .-_ZN8Platform23UpdateConfiguredHeatersEv
 2076              		.section	.text._ZNK8Platform19GetAllEndstopStatesEv,"ax",%progbits
 2077              		.align	2
 2078              		.global	_ZNK8Platform19GetAllEndstopStatesEv
 2079              		.thumb
 2080              		.thumb_func
 2081              		.type	_ZNK8Platform19GetAllEndstopStatesEv, %function
 2082              	_ZNK8Platform19GetAllEndstopStatesEv:
 2083              		@ args = 0, pretend = 0, frame = 0
 2084              		@ frame_needed = 0, uses_anonymous_args = 0
 2085 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2086 0002 0024     		movs	r4, #0
 2087 0004 0546     		mov	r5, r0
 2088 0006 2646     		mov	r6, r4
 2089 0008 0127     		movs	r7, #1
 2090              	.L370:
 2091 000a 2B19     		adds	r3, r5, r4
 2092 000c 93F8DF30 		ldrb	r3, [r3, #223]	@ zero_extendqisi2
 2093 0010 FF2B     		cmp	r3, #255
 2094 0012 1846     		mov	r0, r3
 2095 0014 05D0     		beq	.L371
 2096 0016 FFF7FEFF 		bl	digitalRead
 2097 001a 10B1     		cbz	r0, .L371
 2098 001c 07FA04F3 		lsl	r3, r7, r4
 2099 0020 1E43     		orrs	r6, r6, r3
 2100              	.L371:
 2101 0022 0134     		adds	r4, r4, #1
 2102 0024 092C     		cmp	r4, #9
 2103 0026 F0D1     		bne	.L370
 2104 0028 3046     		mov	r0, r6
 2105 002a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2106              		.size	_ZNK8Platform19GetAllEndstopStatesEv, .-_ZNK8Platform19GetAllEndstopStatesEv
 2107              		.section	.text._ZNK8Platform15GetZProbeResultEv,"ax",%progbits
 2108              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 38


 2109              		.global	_ZNK8Platform15GetZProbeResultEv
 2110              		.thumb
 2111              		.thumb_func
 2112              		.type	_ZNK8Platform15GetZProbeResultEv, %function
 2113              	_ZNK8Platform15GetZProbeResultEv:
 2114              		@ args = 0, pretend = 0, frame = 0
 2115              		@ frame_needed = 0, uses_anonymous_args = 0
 2116 0000 10B5     		push	{r4, lr}
 2117 0002 0446     		mov	r4, r0
 2118 0004 FFF7FEFF 		bl	_ZNK8Platform16GetZProbeReadingEv
 2119 0008 D4F89030 		ldr	r3, [r4, #144]
 2120 000c 013B     		subs	r3, r3, #1
 2121 000e 062B     		cmp	r3, #6
 2122 0010 08D8     		bhi	.L379
 2123 0012 0122     		movs	r2, #1
 2124 0014 02FA03F3 		lsl	r3, r2, r3
 2125 0018 13F0440F 		tst	r3, #68
 2126 001c 0FD1     		bne	.L378
 2127 001e 13F0130F 		tst	r3, #19
 2128 0022 12D1     		bne	.L386
 2129              	.L379:
 2130 0024 2368     		ldr	r3, [r4]
 2131 0026 9842     		cmp	r0, r3
 2132 0028 0DDA     		bge	.L381
 2133              	.L387:
 2134 002a 00EB8000 		add	r0, r0, r0, lsl #2
 2135 002e 03EBC303 		add	r3, r3, r3, lsl #3
 2136 0032 B3EB400F 		cmp	r3, r0, lsl #1
 2137 0036 CCBF     		ite	gt
 2138 0038 0020     		movgt	r0, #0
 2139 003a 0320     		movle	r0, #3
 2140 003c 10BD     		pop	{r4, pc}
 2141              	.L378:
 2142 003e 6034     		adds	r4, r4, #96
 2143 0040 2368     		ldr	r3, [r4]
 2144 0042 9842     		cmp	r0, r3
 2145 0044 F1DB     		blt	.L387
 2146              	.L381:
 2147 0046 0120     		movs	r0, #1
 2148 0048 10BD     		pop	{r4, pc}
 2149              	.L386:
 2150 004a 3034     		adds	r4, r4, #48
 2151 004c EAE7     		b	.L379
 2152              		.size	_ZNK8Platform15GetZProbeResultEv, .-_ZNK8Platform15GetZProbeResultEv
 2153 004e 00BF     		.section	.text._ZNK8Platform7StoppedEj,"ax",%progbits
 2154              		.align	2
 2155              		.global	_ZNK8Platform7StoppedEj
 2156              		.thumb
 2157              		.thumb_func
 2158              		.type	_ZNK8Platform7StoppedEj, %function
 2159              	_ZNK8Platform7StoppedEj:
 2160              		@ args = 0, pretend = 0, frame = 0
 2161              		@ frame_needed = 0, uses_anonymous_args = 0
 2162 0000 0829     		cmp	r1, #8
 2163 0002 70B5     		push	{r4, r5, r6, lr}
 2164 0004 25D8     		bhi	.L391
 2165 0006 4418     		adds	r4, r0, r1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 39


 2166 0008 94F8DF20 		ldrb	r2, [r4, #223]	@ zero_extendqisi2
 2167 000c FF2A     		cmp	r2, #255
 2168 000e 20D0     		beq	.L391
 2169 0010 174D     		ldr	r5, .L406
 2170 0012 2D69     		ldr	r5, [r5, #16]
 2171 0014 D5F88451 		ldr	r5, [r5, #388]
 2172 0018 A942     		cmp	r1, r5
 2173 001a 1CD2     		bcs	.L404
 2174 001c 00EB8105 		add	r5, r0, r1, lsl #2
 2175 0020 D5F8F864 		ldr	r6, [r5, #1272]
 2176 0024 76B9     		cbnz	r6, .L393
 2177 0026 D0F89020 		ldr	r2, [r0, #144]
 2178 002a 002A     		cmp	r2, #0
 2179 002c 11DD     		ble	.L391
 2180 002e 0122     		movs	r2, #1
 2181 0030 02FA01F1 		lsl	r1, r2, r1
 2182 0034 D0F89430 		ldr	r3, [r0, #148]
 2183 0038 1942     		tst	r1, r3
 2184 003a 0AD0     		beq	.L391
 2185 003c BDE87040 		pop	{r4, r5, r6, lr}
 2186 0040 FFF7FEBF 		b	_ZNK8Platform15GetZProbeResultEv
 2187              	.L393:
 2188 0044 1046     		mov	r0, r2
 2189 0046 FFF7FEFF 		bl	digitalRead
 2190 004a 94F81035 		ldrb	r3, [r4, #1296]	@ zero_extendqisi2
 2191 004e 8342     		cmp	r3, r0
 2192 0050 08D0     		beq	.L405
 2193              	.L391:
 2194 0052 0020     		movs	r0, #0
 2195 0054 70BD     		pop	{r4, r5, r6, pc}
 2196              	.L404:
 2197 0056 1046     		mov	r0, r2
 2198 0058 FFF7FEFF 		bl	digitalRead
 2199 005c 08B1     		cbz	r0, .L403
 2200              	.L395:
 2201 005e 0220     		movs	r0, #2
 2202 0060 70BD     		pop	{r4, r5, r6, pc}
 2203              	.L403:
 2204 0062 70BD     		pop	{r4, r5, r6, pc}
 2205              	.L405:
 2206 0064 D5F8F834 		ldr	r3, [r5, #1272]
 2207 0068 022B     		cmp	r3, #2
 2208 006a F8D0     		beq	.L395
 2209 006c 0120     		movs	r0, #1
 2210 006e 70BD     		pop	{r4, r5, r6, pc}
 2211              	.L407:
 2212              		.align	2
 2213              	.L406:
 2214 0070 00000000 		.word	reprap
 2215              		.size	_ZNK8Platform7StoppedEj, .-_ZNK8Platform7StoppedEj
 2216              		.section	.text._ZNK8Platform21WriteZProbeParametersEP9FileStore,"ax",%progbits
 2217              		.align	2
 2218              		.global	_ZNK8Platform21WriteZProbeParametersEP9FileStore
 2219              		.thumb
 2220              		.thumb_func
 2221              		.type	_ZNK8Platform21WriteZProbeParametersEP9FileStore, %function
 2222              	_ZNK8Platform21WriteZProbeParametersEP9FileStore:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 40


 2223              		@ args = 0, pretend = 0, frame = 0
 2224              		@ frame_needed = 0, uses_anonymous_args = 0
 2225 0000 38B5     		push	{r3, r4, r5, lr}
 2226 0002 0C46     		mov	r4, r1
 2227 0004 0546     		mov	r5, r0
 2228 0006 0F49     		ldr	r1, .L422
 2229 0008 2046     		mov	r0, r4
 2230 000a FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 2231 000e 08B9     		cbnz	r0, .L421
 2232              	.L414:
 2233 0010 0020     		movs	r0, #0
 2234 0012 38BD     		pop	{r3, r4, r5, pc}
 2235              	.L421:
 2236 0014 05F13000 		add	r0, r5, #48
 2237 0018 2146     		mov	r1, r4
 2238 001a 0122     		movs	r2, #1
 2239 001c FFF7FEFF 		bl	_ZNK16ZProbeParameters15WriteParametersEP9FileStorej
 2240 0020 0028     		cmp	r0, #0
 2241 0022 F5D0     		beq	.L414
 2242 0024 05F16000 		add	r0, r5, #96
 2243 0028 2146     		mov	r1, r4
 2244 002a 0322     		movs	r2, #3
 2245 002c FFF7FEFF 		bl	_ZNK16ZProbeParameters15WriteParametersEP9FileStorej
 2246 0030 0028     		cmp	r0, #0
 2247 0032 EDD0     		beq	.L414
 2248 0034 2846     		mov	r0, r5
 2249 0036 2146     		mov	r1, r4
 2250 0038 0422     		movs	r2, #4
 2251 003a BDE83840 		pop	{r3, r4, r5, lr}
 2252 003e FFF7FEBF 		b	_ZNK16ZProbeParameters15WriteParametersEP9FileStorej
 2253              	.L423:
 2254 0042 00BF     		.align	2
 2255              	.L422:
 2256 0044 20000000 		.word	.LC8
 2257              		.size	_ZNK8Platform21WriteZProbeParametersEP9FileStore, .-_ZNK8Platform21WriteZProbeParametersEP9F
 2258              		.section	.text._ZN8Platform12SetDirectionEjb,"ax",%progbits
 2259              		.align	2
 2260              		.global	_ZN8Platform12SetDirectionEjb
 2261              		.thumb
 2262              		.thumb_func
 2263              		.type	_ZN8Platform12SetDirectionEjb, %function
 2264              	_ZN8Platform12SetDirectionEjb:
 2265              		@ args = 0, pretend = 0, frame = 0
 2266              		@ frame_needed = 0, uses_anonymous_args = 0
 2267 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2268 0004 1E4B     		ldr	r3, .L435
 2269 0006 0646     		mov	r6, r0
 2270 0008 1B69     		ldr	r3, [r3, #16]
 2271 000a 1746     		mov	r7, r2
 2272 000c D3F88451 		ldr	r5, [r3, #388]
 2273 0010 A942     		cmp	r1, r5
 2274 0012 1BD2     		bcs	.L425
 2275 0014 00EBC105 		add	r5, r0, r1, lsl #3
 2276 0018 D5F8E031 		ldr	r3, [r5, #480]
 2277 001c C3B1     		cbz	r3, .L424
 2278 001e DFF86480 		ldr	r8, .L435+4
 2279 0022 0024     		movs	r4, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 41


 2280              	.L431:
 2281 0024 2B19     		adds	r3, r5, r4
 2282 0026 93F8E431 		ldrb	r3, [r3, #484]	@ zero_extendqisi2
 2283 002a F218     		adds	r2, r6, r3
 2284 002c 92F8CD10 		ldrb	r1, [r2, #205]	@ zero_extendqisi2
 2285 0030 0FB9     		cbnz	r7, .L429
 2286 0032 81F00101 		eor	r1, r1, #1
 2287              	.L429:
 2288 0036 18F80300 		ldrb	r0, [r8, r3]	@ zero_extendqisi2
 2289 003a FFF7FEFF 		bl	digitalWrite
 2290 003e D5F8E031 		ldr	r3, [r5, #480]
 2291 0042 0134     		adds	r4, r4, #1
 2292 0044 A342     		cmp	r3, r4
 2293 0046 EDD8     		bhi	.L431
 2294 0048 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2295              	.L425:
 2296 004c 0829     		cmp	r1, #8
 2297 004e 01D9     		bls	.L434
 2298              	.L424:
 2299 0050 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2300              	.L434:
 2301 0054 4D1B     		subs	r5, r1, r5
 2302 0056 0544     		add	r5, r5, r0
 2303 0058 95F81032 		ldrb	r3, [r5, #528]	@ zero_extendqisi2
 2304 005c 1E44     		add	r6, r6, r3
 2305 005e 96F8CD10 		ldrb	r1, [r6, #205]	@ zero_extendqisi2
 2306 0062 2AB1     		cbz	r2, .L432
 2307 0064 074A     		ldr	r2, .L435+4
 2308 0066 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 2309 006a D05C     		ldrb	r0, [r2, r3]	@ zero_extendqisi2
 2310 006c FFF7FEBF 		b	digitalWrite
 2311              	.L432:
 2312 0070 044A     		ldr	r2, .L435+4
 2313 0072 81F00101 		eor	r1, r1, #1
 2314 0076 D05C     		ldrb	r0, [r2, r3]	@ zero_extendqisi2
 2315 0078 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 2316 007c FFF7FEBF 		b	digitalWrite
 2317              	.L436:
 2318              		.align	2
 2319              	.L435:
 2320 0080 00000000 		.word	reprap
 2321 0084 00000000 		.word	.LANCHOR4
 2322              		.size	_ZN8Platform12SetDirectionEjb, .-_ZN8Platform12SetDirectionEjb
 2323              		.section	.text._ZN8Platform12EnableDriverEj,"ax",%progbits
 2324              		.align	2
 2325              		.global	_ZN8Platform12EnableDriverEj
 2326              		.thumb
 2327              		.thumb_func
 2328              		.type	_ZN8Platform12EnableDriverEj, %function
 2329              	_ZN8Platform12EnableDriverEj:
 2330              		@ args = 0, pretend = 0, frame = 0
 2331              		@ frame_needed = 0, uses_anonymous_args = 0
 2332 0000 0829     		cmp	r1, #8
 2333 0002 38B5     		push	{r3, r4, r5, lr}
 2334 0004 0C46     		mov	r4, r1
 2335 0006 0546     		mov	r5, r0
 2336 0008 11D8     		bhi	.L437
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 42


 2337 000a 0D44     		add	r5, r5, r1
 2338 000c 95F8C430 		ldrb	r3, [r5, #196]	@ zero_extendqisi2
 2339 0010 022B     		cmp	r3, #2
 2340 0012 0CD0     		beq	.L437
 2341 0014 0223     		movs	r3, #2
 2342 0016 85F8C430 		strb	r3, [r5, #196]
 2343 001a FFF7FEFF 		bl	_ZN8Platform18UpdateMotorCurrentEj.part.26
 2344 001e 044B     		ldr	r3, .L440
 2345 0020 95F8D610 		ldrb	r1, [r5, #214]	@ zero_extendqisi2
 2346 0024 185D     		ldrb	r0, [r3, r4]	@ zero_extendqisi2
 2347 0026 BDE83840 		pop	{r3, r4, r5, lr}
 2348 002a FFF7FEBF 		b	digitalWrite
 2349              	.L437:
 2350 002e 38BD     		pop	{r3, r4, r5, pc}
 2351              	.L441:
 2352              		.align	2
 2353              	.L440:
 2354 0030 00000000 		.word	.LANCHOR5
 2355              		.size	_ZN8Platform12EnableDriverEj, .-_ZN8Platform12EnableDriverEj
 2356              		.section	.text._ZN8Platform13DisableDriverEj,"ax",%progbits
 2357              		.align	2
 2358              		.global	_ZN8Platform13DisableDriverEj
 2359              		.thumb
 2360              		.thumb_func
 2361              		.type	_ZN8Platform13DisableDriverEj, %function
 2362              	_ZN8Platform13DisableDriverEj:
 2363              		@ args = 0, pretend = 0, frame = 0
 2364              		@ frame_needed = 0, uses_anonymous_args = 0
 2365 0000 0829     		cmp	r1, #8
 2366 0002 10B5     		push	{r4, lr}
 2367 0004 0B46     		mov	r3, r1
 2368 0006 0BD8     		bhi	.L442
 2369 0008 4418     		adds	r4, r0, r1
 2370 000a 94F8D610 		ldrb	r1, [r4, #214]	@ zero_extendqisi2
 2371 000e 054A     		ldr	r2, .L444
 2372 0010 81F00101 		eor	r1, r1, #1
 2373 0014 D05C     		ldrb	r0, [r2, r3]	@ zero_extendqisi2
 2374 0016 FFF7FEFF 		bl	digitalWrite
 2375 001a 0023     		movs	r3, #0
 2376 001c 84F8C430 		strb	r3, [r4, #196]
 2377              	.L442:
 2378 0020 10BD     		pop	{r4, pc}
 2379              	.L445:
 2380 0022 00BF     		.align	2
 2381              	.L444:
 2382 0024 00000000 		.word	.LANCHOR5
 2383              		.size	_ZN8Platform13DisableDriverEj, .-_ZN8Platform13DisableDriverEj
 2384              		.section	.text._ZN8Platform11EnableDriveEj,"ax",%progbits
 2385              		.align	2
 2386              		.global	_ZN8Platform11EnableDriveEj
 2387              		.thumb
 2388              		.thumb_func
 2389              		.type	_ZN8Platform11EnableDriveEj, %function
 2390              	_ZN8Platform11EnableDriveEj:
 2391              		@ args = 0, pretend = 0, frame = 0
 2392              		@ frame_needed = 0, uses_anonymous_args = 0
 2393 0000 70B5     		push	{r4, r5, r6, lr}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 43


 2394 0002 124B     		ldr	r3, .L453
 2395 0004 0646     		mov	r6, r0
 2396 0006 1B69     		ldr	r3, [r3, #16]
 2397 0008 D3F88451 		ldr	r5, [r3, #388]
 2398 000c A942     		cmp	r1, r5
 2399 000e 11D2     		bcs	.L447
 2400 0010 00EBC105 		add	r5, r0, r1, lsl #3
 2401 0014 D5F8E031 		ldr	r3, [r5, #480]
 2402 0018 73B1     		cbz	r3, .L446
 2403 001a 0024     		movs	r4, #0
 2404              	.L451:
 2405 001c 2B19     		adds	r3, r5, r4
 2406 001e 93F8E411 		ldrb	r1, [r3, #484]	@ zero_extendqisi2
 2407 0022 3046     		mov	r0, r6
 2408 0024 FFF7FEFF 		bl	_ZN8Platform12EnableDriverEj
 2409 0028 D5F8E031 		ldr	r3, [r5, #480]
 2410 002c 0134     		adds	r4, r4, #1
 2411 002e A342     		cmp	r3, r4
 2412 0030 F4D8     		bhi	.L451
 2413 0032 70BD     		pop	{r4, r5, r6, pc}
 2414              	.L447:
 2415 0034 0829     		cmp	r1, #8
 2416 0036 00D9     		bls	.L452
 2417              	.L446:
 2418 0038 70BD     		pop	{r4, r5, r6, pc}
 2419              	.L452:
 2420 003a 4D1B     		subs	r5, r1, r5
 2421 003c 2E44     		add	r6, r6, r5
 2422 003e 96F81012 		ldrb	r1, [r6, #528]	@ zero_extendqisi2
 2423 0042 BDE87040 		pop	{r4, r5, r6, lr}
 2424 0046 FFF7FEBF 		b	_ZN8Platform12EnableDriverEj
 2425              	.L454:
 2426 004a 00BF     		.align	2
 2427              	.L453:
 2428 004c 00000000 		.word	reprap
 2429              		.size	_ZN8Platform11EnableDriveEj, .-_ZN8Platform11EnableDriveEj
 2430              		.section	.text._ZN8Platform12DisableDriveEj,"ax",%progbits
 2431              		.align	2
 2432              		.global	_ZN8Platform12DisableDriveEj
 2433              		.thumb
 2434              		.thumb_func
 2435              		.type	_ZN8Platform12DisableDriveEj, %function
 2436              	_ZN8Platform12DisableDriveEj:
 2437              		@ args = 0, pretend = 0, frame = 0
 2438              		@ frame_needed = 0, uses_anonymous_args = 0
 2439 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 2440 0004 1F4B     		ldr	r3, .L463
 2441 0006 0646     		mov	r6, r0
 2442 0008 1B69     		ldr	r3, [r3, #16]
 2443 000a D3F88451 		ldr	r5, [r3, #388]
 2444 000e A942     		cmp	r1, r5
 2445 0010 12D2     		bcs	.L456
 2446 0012 00EBC105 		add	r5, r0, r1, lsl #3
 2447 0016 D5F8E021 		ldr	r2, [r5, #480]
 2448 001a 0AB3     		cbz	r2, .L455
 2449 001c 0024     		movs	r4, #0
 2450 001e DFF86880 		ldr	r8, .L463+4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 44


 2451 0022 2746     		mov	r7, r4
 2452              	.L461:
 2453 0024 2B19     		adds	r3, r5, r4
 2454 0026 93F8E431 		ldrb	r3, [r3, #484]	@ zero_extendqisi2
 2455 002a 0134     		adds	r4, r4, #1
 2456 002c 082B     		cmp	r3, #8
 2457 002e 19D9     		bls	.L462
 2458              	.L459:
 2459 0030 A242     		cmp	r2, r4
 2460 0032 F7D8     		bhi	.L461
 2461 0034 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 2462              	.L456:
 2463 0038 0829     		cmp	r1, #8
 2464 003a 11D8     		bhi	.L455
 2465 003c 4D1B     		subs	r5, r1, r5
 2466 003e 0544     		add	r5, r5, r0
 2467 0040 95F81032 		ldrb	r3, [r5, #528]	@ zero_extendqisi2
 2468 0044 082B     		cmp	r3, #8
 2469 0046 0BD8     		bhi	.L455
 2470 0048 1E44     		add	r6, r6, r3
 2471 004a 96F8D610 		ldrb	r1, [r6, #214]	@ zero_extendqisi2
 2472 004e 0E4A     		ldr	r2, .L463+4
 2473 0050 81F00101 		eor	r1, r1, #1
 2474 0054 D05C     		ldrb	r0, [r2, r3]	@ zero_extendqisi2
 2475 0056 FFF7FEFF 		bl	digitalWrite
 2476 005a 0023     		movs	r3, #0
 2477 005c 86F8C430 		strb	r3, [r6, #196]
 2478              	.L455:
 2479 0060 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 2480              	.L462:
 2481 0064 06EB0309 		add	r9, r6, r3
 2482 0068 99F8D610 		ldrb	r1, [r9, #214]	@ zero_extendqisi2
 2483 006c 18F80300 		ldrb	r0, [r8, r3]	@ zero_extendqisi2
 2484 0070 81F00101 		eor	r1, r1, #1
 2485 0074 FFF7FEFF 		bl	digitalWrite
 2486 0078 89F8C470 		strb	r7, [r9, #196]
 2487 007c D5F8E021 		ldr	r2, [r5, #480]
 2488 0080 D6E7     		b	.L459
 2489              	.L464:
 2490 0082 00BF     		.align	2
 2491              	.L463:
 2492 0084 00000000 		.word	reprap
 2493 0088 00000000 		.word	.LANCHOR5
 2494              		.size	_ZN8Platform12DisableDriveEj, .-_ZN8Platform12DisableDriveEj
 2495              		.section	.text._ZN8Platform14SetDriversIdleEv,"ax",%progbits
 2496              		.align	2
 2497              		.global	_ZN8Platform14SetDriversIdleEv
 2498              		.thumb
 2499              		.thumb_func
 2500              		.type	_ZN8Platform14SetDriversIdleEv, %function
 2501              	_ZN8Platform14SetDriversIdleEv:
 2502              		@ args = 0, pretend = 0, frame = 0
 2503              		@ frame_needed = 0, uses_anonymous_args = 0
 2504 0000 70B5     		push	{r4, r5, r6, lr}
 2505 0002 0546     		mov	r5, r0
 2506 0004 0024     		movs	r4, #0
 2507 0006 0126     		movs	r6, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 45


 2508 0008 02E0     		b	.L468
 2509              	.L466:
 2510 000a 0134     		adds	r4, r4, #1
 2511 000c 092C     		cmp	r4, #9
 2512 000e 0DD0     		beq	.L469
 2513              	.L468:
 2514 0010 2B19     		adds	r3, r5, r4
 2515 0012 93F8C420 		ldrb	r2, [r3, #196]	@ zero_extendqisi2
 2516 0016 022A     		cmp	r2, #2
 2517 0018 F7D1     		bne	.L466
 2518 001a 2146     		mov	r1, r4
 2519 001c 83F8C460 		strb	r6, [r3, #196]
 2520 0020 2846     		mov	r0, r5
 2521 0022 0134     		adds	r4, r4, #1
 2522 0024 FFF7FEFF 		bl	_ZN8Platform18UpdateMotorCurrentEj.part.26
 2523 0028 092C     		cmp	r4, #9
 2524 002a F1D1     		bne	.L468
 2525              	.L469:
 2526 002c 70BD     		pop	{r4, r5, r6, pc}
 2527              		.size	_ZN8Platform14SetDriversIdleEv, .-_ZN8Platform14SetDriversIdleEv
 2528 002e 00BF     		.section	.text._ZN8Platform16SetDriverCurrentEjfb,"ax",%progbits
 2529              		.align	2
 2530              		.global	_ZN8Platform16SetDriverCurrentEjfb
 2531              		.thumb
 2532              		.thumb_func
 2533              		.type	_ZN8Platform16SetDriverCurrentEjfb, %function
 2534              	_ZN8Platform16SetDriverCurrentEjfb:
 2535              		@ args = 0, pretend = 0, frame = 0
 2536              		@ frame_needed = 0, uses_anonymous_args = 0
 2537 0000 0829     		cmp	r1, #8
 2538 0002 70B5     		push	{r4, r5, r6, lr}
 2539 0004 0C46     		mov	r4, r1
 2540 0006 0546     		mov	r5, r0
 2541 0008 1FD8     		bhi	.L470
 2542 000a 4BB9     		cbnz	r3, .L474
 2543 000c 01F16603 		add	r3, r1, #102
 2544 0010 40F82320 		str	r2, [r0, r3, lsl #2]	@ float
 2545 0014 2146     		mov	r1, r4
 2546 0016 2846     		mov	r0, r5
 2547 0018 BDE87040 		pop	{r4, r5, r6, lr}
 2548 001c FFF7FEBF 		b	_ZN8Platform18UpdateMotorCurrentEj.part.26
 2549              	.L474:
 2550 0020 1046     		mov	r0, r2
 2551 0022 01F16E06 		add	r6, r1, #110
 2552 0026 FFF7FEFF 		bl	__aeabi_f2d
 2553 002a 09A3     		adr	r3, .L475
 2554 002c D3E90023 		ldrd	r2, [r3]
 2555 0030 FFF7FEFF 		bl	__aeabi_dmul
 2556 0034 FFF7FEFF 		bl	__aeabi_d2f
 2557 0038 05EB8606 		add	r6, r5, r6, lsl #2
 2558 003c 7060     		str	r0, [r6, #4]	@ float
 2559 003e 2146     		mov	r1, r4
 2560 0040 2846     		mov	r0, r5
 2561 0042 BDE87040 		pop	{r4, r5, r6, lr}
 2562 0046 FFF7FEBF 		b	_ZN8Platform18UpdateMotorCurrentEj.part.26
 2563              	.L470:
 2564 004a 70BD     		pop	{r4, r5, r6, pc}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 46


 2565              	.L476:
 2566 004c AFF30080 		.align	3
 2567              	.L475:
 2568 0050 7B14AE47 		.word	1202590843
 2569 0054 E17A843F 		.word	1065646817
 2570              		.size	_ZN8Platform16SetDriverCurrentEjfb, .-_ZN8Platform16SetDriverCurrentEjfb
 2571              		.section	.text._ZN8Platform15SetMotorCurrentEjfb,"ax",%progbits
 2572              		.align	2
 2573              		.global	_ZN8Platform15SetMotorCurrentEjfb
 2574              		.thumb
 2575              		.thumb_func
 2576              		.type	_ZN8Platform15SetMotorCurrentEjfb, %function
 2577              	_ZN8Platform15SetMotorCurrentEjfb:
 2578              		@ args = 0, pretend = 0, frame = 0
 2579              		@ frame_needed = 0, uses_anonymous_args = 0
 2580 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 2581 0004 304C     		ldr	r4, .L490+8
 2582 0006 0746     		mov	r7, r0
 2583 0008 2469     		ldr	r4, [r4, #16]
 2584 000a 9146     		mov	r9, r2
 2585 000c D4F88461 		ldr	r6, [r4, #388]
 2586 0010 9846     		mov	r8, r3
 2587 0012 B142     		cmp	r1, r6
 2588 0014 0FD2     		bcs	.L478
 2589 0016 00EBC106 		add	r6, r0, r1, lsl #3
 2590 001a D6F8E011 		ldr	r1, [r6, #480]
 2591 001e 91B1     		cbz	r1, .L477
 2592 0020 0024     		movs	r4, #0
 2593              	.L485:
 2594 0022 3519     		adds	r5, r6, r4
 2595 0024 95F8E451 		ldrb	r5, [r5, #484]	@ zero_extendqisi2
 2596 0028 082D     		cmp	r5, #8
 2597 002a 0ED9     		bls	.L488
 2598              	.L481:
 2599 002c 0134     		adds	r4, r4, #1
 2600 002e A142     		cmp	r1, r4
 2601 0030 F7D8     		bhi	.L485
 2602 0032 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2603              	.L478:
 2604 0036 0829     		cmp	r1, #8
 2605 0038 05D8     		bhi	.L477
 2606 003a 8E1B     		subs	r6, r1, r6
 2607 003c 0644     		add	r6, r6, r0
 2608 003e 96F81042 		ldrb	r4, [r6, #528]	@ zero_extendqisi2
 2609 0042 082C     		cmp	r4, #8
 2610 0044 20D9     		bls	.L489
 2611              	.L477:
 2612 0046 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2613              	.L488:
 2614 004a 05F16E03 		add	r3, r5, #110
 2615 004e 07EB830A 		add	r10, r7, r3, lsl #2
 2616 0052 4846     		mov	r0, r9
 2617 0054 05F16603 		add	r3, r5, #102
 2618 0058 B8F1000F 		cmp	r8, #0
 2619 005c 11D0     		beq	.L482
 2620 005e FFF7FEFF 		bl	__aeabi_f2d
 2621 0062 17A3     		adr	r3, .L490
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 47


 2622 0064 D3E90023 		ldrd	r2, [r3]
 2623 0068 FFF7FEFF 		bl	__aeabi_dmul
 2624 006c FFF7FEFF 		bl	__aeabi_d2f
 2625 0070 CAF80400 		str	r0, [r10, #4]	@ float
 2626              	.L483:
 2627 0074 2946     		mov	r1, r5
 2628 0076 3846     		mov	r0, r7
 2629 0078 FFF7FEFF 		bl	_ZN8Platform18UpdateMotorCurrentEj.part.26
 2630 007c D6F8E011 		ldr	r1, [r6, #480]
 2631 0080 D4E7     		b	.L481
 2632              	.L482:
 2633 0082 47F82390 		str	r9, [r7, r3, lsl #2]	@ float
 2634 0086 F5E7     		b	.L483
 2635              	.L489:
 2636 0088 A3B1     		cbz	r3, .L486
 2637 008a 1046     		mov	r0, r2
 2638 008c FFF7FEFF 		bl	__aeabi_f2d
 2639 0090 0BA3     		adr	r3, .L490
 2640 0092 D3E90023 		ldrd	r2, [r3]
 2641 0096 FFF7FEFF 		bl	__aeabi_dmul
 2642 009a FFF7FEFF 		bl	__aeabi_d2f
 2643 009e 04F16E05 		add	r5, r4, #110
 2644 00a2 07EB8505 		add	r5, r7, r5, lsl #2
 2645 00a6 6860     		str	r0, [r5, #4]	@ float
 2646              	.L487:
 2647 00a8 3846     		mov	r0, r7
 2648 00aa 2146     		mov	r1, r4
 2649 00ac BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 2650 00b0 FFF7FEBF 		b	_ZN8Platform18UpdateMotorCurrentEj.part.26
 2651              	.L486:
 2652 00b4 04F16603 		add	r3, r4, #102
 2653 00b8 47F82320 		str	r2, [r7, r3, lsl #2]	@ float
 2654 00bc F4E7     		b	.L487
 2655              	.L491:
 2656 00be 00BF     		.align	3
 2657              	.L490:
 2658 00c0 7B14AE47 		.word	1202590843
 2659 00c4 E17A843F 		.word	1065646817
 2660 00c8 00000000 		.word	reprap
 2661              		.size	_ZN8Platform15SetMotorCurrentEjfb, .-_ZN8Platform15SetMotorCurrentEjfb
 2662 00cc AFF30080 		.section	.text._ZN8Platform18UpdateMotorCurrentEj,"ax",%progbits
 2663              		.align	2
 2664              		.global	_ZN8Platform18UpdateMotorCurrentEj
 2665              		.thumb
 2666              		.thumb_func
 2667              		.type	_ZN8Platform18UpdateMotorCurrentEj, %function
 2668              	_ZN8Platform18UpdateMotorCurrentEj:
 2669              		@ args = 0, pretend = 0, frame = 0
 2670              		@ frame_needed = 0, uses_anonymous_args = 0
 2671              		@ link register save eliminated.
 2672 0000 0829     		cmp	r1, #8
 2673 0002 01D8     		bhi	.L492
 2674 0004 FFF7FEBF 		b	_ZN8Platform18UpdateMotorCurrentEj.part.26
 2675              	.L492:
 2676 0008 7047     		bx	lr
 2677              		.size	_ZN8Platform18UpdateMotorCurrentEj, .-_ZN8Platform18UpdateMotorCurrentEj
 2678 000a 00BF     		.section	.text._ZNK8Platform15GetMotorCurrentEjb,"ax",%progbits
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 48


 2679              		.align	2
 2680              		.global	_ZNK8Platform15GetMotorCurrentEjb
 2681              		.thumb
 2682              		.thumb_func
 2683              		.type	_ZNK8Platform15GetMotorCurrentEjb, %function
 2684              	_ZNK8Platform15GetMotorCurrentEjb:
 2685              		@ args = 0, pretend = 0, frame = 0
 2686              		@ frame_needed = 0, uses_anonymous_args = 0
 2687 0000 0829     		cmp	r1, #8
 2688 0002 08B5     		push	{r3, lr}
 2689 0004 19D8     		bhi	.L500
 2690 0006 124B     		ldr	r3, .L502
 2691 0008 1B69     		ldr	r3, [r3, #16]
 2692 000a D3F88431 		ldr	r3, [r3, #388]
 2693 000e 9942     		cmp	r1, r3
 2694 0010 15D3     		bcc	.L501
 2695 0012 CB1A     		subs	r3, r1, r3
 2696 0014 0344     		add	r3, r3, r0
 2697 0016 93F81032 		ldrb	r3, [r3, #528]	@ zero_extendqisi2
 2698              	.L497:
 2699 001a 082B     		cmp	r3, #8
 2700 001c 0DD8     		bhi	.L500
 2701 001e 9AB1     		cbz	r2, .L498
 2702 0020 00EB8300 		add	r0, r0, r3, lsl #2
 2703 0024 D0F8BC01 		ldr	r0, [r0, #444]	@ float
 2704 0028 FFF7FEFF 		bl	__aeabi_f2d
 2705 002c 0022     		movs	r2, #0
 2706 002e 094B     		ldr	r3, .L502+4
 2707 0030 FFF7FEFF 		bl	__aeabi_dmul
 2708 0034 FFF7FEFF 		bl	__aeabi_d2f
 2709 0038 08BD     		pop	{r3, pc}
 2710              	.L500:
 2711 003a 0020     		movs	r0, #0
 2712 003c 08BD     		pop	{r3, pc}
 2713              	.L501:
 2714 003e 00EBC101 		add	r1, r0, r1, lsl #3
 2715 0042 91F8E431 		ldrb	r3, [r1, #484]	@ zero_extendqisi2
 2716 0046 E8E7     		b	.L497
 2717              	.L498:
 2718 0048 6633     		adds	r3, r3, #102
 2719 004a 50F82300 		ldr	r0, [r0, r3, lsl #2]	@ float
 2720 004e 08BD     		pop	{r3, pc}
 2721              	.L503:
 2722              		.align	2
 2723              	.L502:
 2724 0050 00000000 		.word	reprap
 2725 0054 00005940 		.word	1079574528
 2726              		.size	_ZNK8Platform15GetMotorCurrentEjb, .-_ZNK8Platform15GetMotorCurrentEjb
 2727              		.section	.text._ZN8Platform20SetIdleCurrentFactorEf,"ax",%progbits
 2728              		.align	2
 2729              		.global	_ZN8Platform20SetIdleCurrentFactorEf
 2730              		.thumb
 2731              		.thumb_func
 2732              		.type	_ZN8Platform20SetIdleCurrentFactorEf, %function
 2733              	_ZN8Platform20SetIdleCurrentFactorEf:
 2734              		@ args = 0, pretend = 0, frame = 0
 2735              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 49


 2736 0000 38B5     		push	{r3, r4, r5, lr}
 2737 0002 0546     		mov	r5, r0
 2738 0004 C0F84412 		str	r1, [r0, #580]	@ float
 2739 0008 0024     		movs	r4, #0
 2740 000a 02E0     		b	.L507
 2741              	.L505:
 2742 000c 0134     		adds	r4, r4, #1
 2743 000e 092C     		cmp	r4, #9
 2744 0010 0BD0     		beq	.L508
 2745              	.L507:
 2746 0012 2B19     		adds	r3, r5, r4
 2747 0014 93F8C430 		ldrb	r3, [r3, #196]	@ zero_extendqisi2
 2748 0018 012B     		cmp	r3, #1
 2749 001a F7D1     		bne	.L505
 2750 001c 2146     		mov	r1, r4
 2751 001e 2846     		mov	r0, r5
 2752 0020 0134     		adds	r4, r4, #1
 2753 0022 FFF7FEFF 		bl	_ZN8Platform18UpdateMotorCurrentEj.part.26
 2754 0026 092C     		cmp	r4, #9
 2755 0028 F3D1     		bne	.L507
 2756              	.L508:
 2757 002a 38BD     		pop	{r3, r4, r5, pc}
 2758              		.size	_ZN8Platform20SetIdleCurrentFactorEf, .-_ZN8Platform20SetIdleCurrentFactorEf
 2759              		.section	.text._ZN8Platform22SetDriverMicrosteppingEjii,"ax",%progbits
 2760              		.align	2
 2761              		.global	_ZN8Platform22SetDriverMicrosteppingEjii
 2762              		.thumb
 2763              		.thumb_func
 2764              		.type	_ZN8Platform22SetDriverMicrosteppingEjii, %function
 2765              	_ZN8Platform22SetDriverMicrosteppingEjii:
 2766              		@ args = 0, pretend = 0, frame = 0
 2767              		@ frame_needed = 0, uses_anonymous_args = 0
 2768              		@ link register save eliminated.
 2769 0000 0829     		cmp	r1, #8
 2770 0002 04D8     		bhi	.L511
 2771 0004 B2F11003 		subs	r3, r2, #16
 2772 0008 5842     		rsbs	r0, r3, #0
 2773 000a 5841     		adcs	r0, r0, r3
 2774 000c 7047     		bx	lr
 2775              	.L511:
 2776 000e 0020     		movs	r0, #0
 2777 0010 7047     		bx	lr
 2778              		.size	_ZN8Platform22SetDriverMicrosteppingEjii, .-_ZN8Platform22SetDriverMicrosteppingEjii
 2779 0012 00BF     		.section	.text._ZN8Platform16SetMicrosteppingEjii,"ax",%progbits
 2780              		.align	2
 2781              		.global	_ZN8Platform16SetMicrosteppingEjii
 2782              		.thumb
 2783              		.thumb_func
 2784              		.type	_ZN8Platform16SetMicrosteppingEjii, %function
 2785              	_ZN8Platform16SetMicrosteppingEjii:
 2786              		@ args = 0, pretend = 0, frame = 0
 2787              		@ frame_needed = 0, uses_anonymous_args = 0
 2788              		@ link register save eliminated.
 2789 0000 10B4     		push	{r4}
 2790 0002 1C4B     		ldr	r3, .L524
 2791 0004 1B69     		ldr	r3, [r3, #16]
 2792 0006 D3F88431 		ldr	r3, [r3, #388]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 50


 2793 000a 9942     		cmp	r1, r3
 2794 000c 19D2     		bcs	.L513
 2795 000e 01F13C03 		add	r3, r1, #60
 2796 0012 50F83330 		ldr	r3, [r0, r3, lsl #3]
 2797 0016 4BB3     		cbz	r3, .L517
 2798 0018 C900     		lsls	r1, r1, #3
 2799 001a 03F2E313 		addw	r3, r3, #483
 2800 001e 0344     		add	r3, r3, r0
 2801 0020 0844     		add	r0, r0, r1
 2802 0022 1944     		add	r1, r1, r3
 2803 0024 00F2E313 		addw	r3, r0, #483
 2804 0028 0120     		movs	r0, #1
 2805              	.L516:
 2806 002a 13F8014F 		ldrb	r4, [r3, #1]!	@ zero_extendqisi2
 2807 002e 082C     		cmp	r4, #8
 2808 0030 1AD8     		bhi	.L518
 2809 0032 102A     		cmp	r2, #16
 2810 0034 18BF     		it	ne
 2811 0036 0020     		movne	r0, #0
 2812              	.L515:
 2813 0038 8B42     		cmp	r3, r1
 2814 003a F6D1     		bne	.L516
 2815 003c 5DF8044B 		ldr	r4, [sp], #4
 2816 0040 7047     		bx	lr
 2817              	.L513:
 2818 0042 0829     		cmp	r1, #8
 2819 0044 0CD8     		bhi	.L522
 2820 0046 C91A     		subs	r1, r1, r3
 2821 0048 0844     		add	r0, r0, r1
 2822 004a 90F81032 		ldrb	r3, [r0, #528]	@ zero_extendqisi2
 2823 004e 082B     		cmp	r3, #8
 2824 0050 06D8     		bhi	.L522
 2825 0052 B2F11003 		subs	r3, r2, #16
 2826 0056 5842     		rsbs	r0, r3, #0
 2827 0058 5841     		adcs	r0, r0, r3
 2828 005a 5DF8044B 		ldr	r4, [sp], #4
 2829 005e 7047     		bx	lr
 2830              	.L522:
 2831 0060 0020     		movs	r0, #0
 2832 0062 5DF8044B 		ldr	r4, [sp], #4
 2833 0066 7047     		bx	lr
 2834              	.L518:
 2835 0068 0020     		movs	r0, #0
 2836 006a E5E7     		b	.L515
 2837              	.L517:
 2838 006c 0120     		movs	r0, #1
 2839 006e 5DF8044B 		ldr	r4, [sp], #4
 2840 0072 7047     		bx	lr
 2841              	.L525:
 2842              		.align	2
 2843              	.L524:
 2844 0074 00000000 		.word	reprap
 2845              		.size	_ZN8Platform16SetMicrosteppingEjii, .-_ZN8Platform16SetMicrosteppingEjii
 2846              		.section	.text._ZNK8Platform22GetDriverMicrosteppingEjiRb,"ax",%progbits
 2847              		.align	2
 2848              		.global	_ZNK8Platform22GetDriverMicrosteppingEjiRb
 2849              		.thumb
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 51


 2850              		.thumb_func
 2851              		.type	_ZNK8Platform22GetDriverMicrosteppingEjiRb, %function
 2852              	_ZNK8Platform22GetDriverMicrosteppingEjiRb:
 2853              		@ args = 0, pretend = 0, frame = 0
 2854              		@ frame_needed = 0, uses_anonymous_args = 0
 2855              		@ link register save eliminated.
 2856 0000 0022     		movs	r2, #0
 2857 0002 1A70     		strb	r2, [r3]
 2858 0004 1020     		movs	r0, #16
 2859 0006 7047     		bx	lr
 2860              		.size	_ZNK8Platform22GetDriverMicrosteppingEjiRb, .-_ZNK8Platform22GetDriverMicrosteppingEjiRb
 2861              		.section	.text._ZNK8Platform16GetMicrosteppingEjiRb,"ax",%progbits
 2862              		.align	2
 2863              		.global	_ZNK8Platform16GetMicrosteppingEjiRb
 2864              		.thumb
 2865              		.thumb_func
 2866              		.type	_ZNK8Platform16GetMicrosteppingEjiRb, %function
 2867              	_ZNK8Platform16GetMicrosteppingEjiRb:
 2868              		@ args = 0, pretend = 0, frame = 0
 2869              		@ frame_needed = 0, uses_anonymous_args = 0
 2870              		@ link register save eliminated.
 2871 0000 0022     		movs	r2, #0
 2872 0002 1A70     		strb	r2, [r3]
 2873 0004 1020     		movs	r0, #16
 2874 0006 7047     		bx	lr
 2875              		.size	_ZNK8Platform16GetMicrosteppingEjiRb, .-_ZNK8Platform16GetMicrosteppingEjiRb
 2876              		.section	.text._ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig,"ax",%progbits
 2877              		.align	2
 2878              		.global	_ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig
 2879              		.thumb
 2880              		.thumb_func
 2881              		.type	_ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig, %function
 2882              	_ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig:
 2883              		@ args = 0, pretend = 0, frame = 0
 2884              		@ frame_needed = 0, uses_anonymous_args = 0
 2885              		@ link register save eliminated.
 2886 0000 01F13C03 		add	r3, r1, #60
 2887 0004 00EBC303 		add	r3, r0, r3, lsl #3
 2888 0008 2DE9F001 		push	{r4, r5, r6, r7, r8}
 2889 000c 8C46     		mov	ip, r1
 2890 000e 0746     		mov	r7, r0
 2891 0010 92E80300 		ldmia	r2, {r0, r1}
 2892 0014 83E80300 		stmia	r3, {r0, r1}
 2893 0018 1468     		ldr	r4, [r2]
 2894 001a BCB1     		cbz	r4, .L529
 2895 001c DFF84480 		ldr	r8, .L535+8
 2896 0020 0E4D     		ldr	r5, .L535
 2897 0022 0F48     		ldr	r0, .L535+4
 2898 0024 1119     		adds	r1, r2, r4
 2899 0026 0024     		movs	r4, #0
 2900              	.L532:
 2901 0028 1379     		ldrb	r3, [r2, #4]	@ zero_extendqisi2
 2902 002a 0132     		adds	r2, r2, #1
 2903 002c 18F80330 		ldrb	r3, [r8, r3]	@ zero_extendqisi2
 2904 0030 C3EBC303 		rsb	r3, r3, r3, lsl #3
 2905 0034 55F82360 		ldr	r6, [r5, r3, lsl #2]
 2906 0038 05EB8303 		add	r3, r5, r3, lsl #2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 52


 2907 003c 5B68     		ldr	r3, [r3, #4]
 2908 003e 8642     		cmp	r6, r0
 2909 0040 08BF     		it	eq
 2910 0042 5B00     		lsleq	r3, r3, #1
 2911 0044 8A42     		cmp	r2, r1
 2912 0046 44EA0304 		orr	r4, r4, r3
 2913 004a EDD1     		bne	.L532
 2914              	.L529:
 2915 004c 0CF1860C 		add	ip, ip, #134
 2916 0050 47F82C40 		str	r4, [r7, ip, lsl #2]
 2917 0054 BDE8F001 		pop	{r4, r5, r6, r7, r8}
 2918 0058 7047     		bx	lr
 2919              	.L536:
 2920 005a 00BF     		.align	2
 2921              	.L535:
 2922 005c 00000000 		.word	g_APinDescription
 2923 0060 000E0E40 		.word	1074662912
 2924 0064 00000000 		.word	.LANCHOR6
 2925              		.size	_ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig, .-_ZN8Platform20SetAxisDriversCon
 2926              		.section	.text._ZN8Platform17SetExtruderDriverEjh,"ax",%progbits
 2927              		.align	2
 2928              		.global	_ZN8Platform17SetExtruderDriverEjh
 2929              		.thumb
 2930              		.thumb_func
 2931              		.type	_ZN8Platform17SetExtruderDriverEjh, %function
 2932              	_ZN8Platform17SetExtruderDriverEjh:
 2933              		@ args = 0, pretend = 0, frame = 0
 2934              		@ frame_needed = 0, uses_anonymous_args = 0
 2935              		@ link register save eliminated.
 2936 0000 70B4     		push	{r4, r5, r6}
 2937 0002 0D4B     		ldr	r3, .L540
 2938 0004 0D4D     		ldr	r5, .L540+4
 2939 0006 9B5C     		ldrb	r3, [r3, r2]	@ zero_extendqisi2
 2940 0008 4618     		adds	r6, r0, r1
 2941 000a 0D4C     		ldr	r4, .L540+8
 2942 000c 2D69     		ldr	r5, [r5, #16]
 2943 000e C3EBC303 		rsb	r3, r3, r3, lsl #3
 2944 0012 86F81022 		strb	r2, [r6, #528]
 2945 0016 9B00     		lsls	r3, r3, #2
 2946 0018 D5F88461 		ldr	r6, [r5, #388]
 2947 001c 094A     		ldr	r2, .L540+12
 2948 001e 1D59     		ldr	r5, [r3, r4]
 2949 0020 2344     		add	r3, r3, r4
 2950 0022 5B68     		ldr	r3, [r3, #4]
 2951 0024 3144     		add	r1, r1, r6
 2952 0026 9542     		cmp	r5, r2
 2953 0028 08BF     		it	eq
 2954 002a 5B00     		lsleq	r3, r3, #1
 2955 002c 8631     		adds	r1, r1, #134
 2956 002e 40F82130 		str	r3, [r0, r1, lsl #2]
 2957 0032 70BC     		pop	{r4, r5, r6}
 2958 0034 7047     		bx	lr
 2959              	.L541:
 2960 0036 00BF     		.align	2
 2961              	.L540:
 2962 0038 00000000 		.word	.LANCHOR6
 2963 003c 00000000 		.word	reprap
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 53


 2964 0040 00000000 		.word	g_APinDescription
 2965 0044 000E0E40 		.word	1074662912
 2966              		.size	_ZN8Platform17SetExtruderDriverEjh, .-_ZN8Platform17SetExtruderDriverEjh
 2967              		.section	.text._ZN8Platform19SetDriverStepTimingEjf,"ax",%progbits
 2968              		.align	2
 2969              		.global	_ZN8Platform19SetDriverStepTimingEjf
 2970              		.thumb
 2971              		.thumb_func
 2972              		.type	_ZN8Platform19SetDriverStepTimingEjf, %function
 2973              	_ZN8Platform19SetDriverStepTimingEjf:
 2974              		@ args = 0, pretend = 0, frame = 0
 2975              		@ frame_needed = 0, uses_anonymous_args = 0
 2976 0000 70B5     		push	{r4, r5, r6, lr}
 2977 0002 0446     		mov	r4, r0
 2978 0004 0E46     		mov	r6, r1
 2979 0006 1046     		mov	r0, r2
 2980 0008 2749     		ldr	r1, .L553+16
 2981 000a 1546     		mov	r5, r2
 2982 000c FFF7FEFF 		bl	__aeabi_fcmplt
 2983 0010 98B1     		cbz	r0, .L552
 2984 0012 264A     		ldr	r2, .L553+20
 2985 0014 264B     		ldr	r3, .L553+24
 2986 0016 925D     		ldrb	r2, [r2, r6]	@ zero_extendqisi2
 2987 0018 2649     		ldr	r1, .L553+28
 2988 001a C2EBC202 		rsb	r2, r2, r2, lsl #3
 2989 001e 9200     		lsls	r2, r2, #2
 2990 0020 D058     		ldr	r0, [r2, r3]
 2991 0022 1344     		add	r3, r3, r2
 2992 0024 5A68     		ldr	r2, [r3, #4]
 2993 0026 8842     		cmp	r0, r1
 2994 0028 D4F84032 		ldr	r3, [r4, #576]
 2995 002c 08BF     		it	eq
 2996 002e 5200     		lsleq	r2, r2, #1
 2997 0030 23EA0203 		bic	r3, r3, r2
 2998 0034 C4F84032 		str	r3, [r4, #576]
 2999 0038 70BD     		pop	{r4, r5, r6, pc}
 3000              	.L552:
 3001 003a 1F49     		ldr	r1, .L553+32
 3002 003c 2846     		mov	r0, r5
 3003 003e FFF7FEFF 		bl	__aeabi_fmul
 3004 0042 FFF7FEFF 		bl	__aeabi_f2d
 3005 0046 14A3     		adr	r3, .L553
 3006 0048 D3E90023 		ldrd	r2, [r3]
 3007 004c FFF7FEFF 		bl	__aeabi_ddiv
 3008 0050 13A3     		adr	r3, .L553+8
 3009 0052 D3E90023 		ldrd	r2, [r3]
 3010 0056 FFF7FEFF 		bl	__aeabi_dadd
 3011 005a FFF7FEFF 		bl	__aeabi_d2uiz
 3012 005e 134A     		ldr	r2, .L553+20
 3013 0060 D4F83C32 		ldr	r3, [r4, #572]
 3014 0064 925D     		ldrb	r2, [r2, r6]	@ zero_extendqisi2
 3015 0066 9842     		cmp	r0, r3
 3016 0068 C2EBC202 		rsb	r2, r2, r2, lsl #3
 3017 006c 104B     		ldr	r3, .L553+24
 3018 006e 4FEA8202 		lsl	r2, r2, #2
 3019 0072 88BF     		it	hi
 3020 0074 C4F83C02 		strhi	r0, [r4, #572]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 54


 3021 0078 0E49     		ldr	r1, .L553+28
 3022 007a D058     		ldr	r0, [r2, r3]
 3023 007c 1344     		add	r3, r3, r2
 3024 007e 5A68     		ldr	r2, [r3, #4]
 3025 0080 8842     		cmp	r0, r1
 3026 0082 D4F84032 		ldr	r3, [r4, #576]
 3027 0086 08BF     		it	eq
 3028 0088 5200     		lsleq	r2, r2, #1
 3029 008a 1343     		orrs	r3, r3, r2
 3030 008c C4F84032 		str	r3, [r4, #576]
 3031 0090 70BD     		pop	{r4, r5, r6, pc}
 3032              	.L554:
 3033 0092 00BFAFF3 		.align	3
 3033      0080
 3034              	.L553:
 3035 0098 00000000 		.word	0
 3036 009c 80842E41 		.word	1093567616
 3037 00a0 AE47E17A 		.word	2061584302
 3038 00a4 14AEEF3F 		.word	1072672276
 3039 00a8 CDCC4C3E 		.word	1045220557
 3040 00ac 00000000 		.word	.LANCHOR6
 3041 00b0 00000000 		.word	g_APinDescription
 3042 00b4 000E0E40 		.word	1074662912
 3043 00b8 A0372049 		.word	1226848160
 3044              		.size	_ZN8Platform19SetDriverStepTimingEjf, .-_ZN8Platform19SetDriverStepTimingEjf
 3045 00bc AFF30080 		.section	.text._ZNK8Platform19GetDriverStepTimingEj,"ax",%progbits
 3046              		.align	2
 3047              		.global	_ZNK8Platform19GetDriverStepTimingEj
 3048              		.thumb
 3049              		.thumb_func
 3050              		.type	_ZNK8Platform19GetDriverStepTimingEj, %function
 3051              	_ZNK8Platform19GetDriverStepTimingEj:
 3052              		@ args = 0, pretend = 0, frame = 0
 3053              		@ frame_needed = 0, uses_anonymous_args = 0
 3054 0000 174A     		ldr	r2, .L560+16
 3055 0002 38B5     		push	{r3, r4, r5, lr}
 3056 0004 525C     		ldrb	r2, [r2, r1]	@ zero_extendqisi2
 3057 0006 174B     		ldr	r3, .L560+20
 3058 0008 C2EBC202 		rsb	r2, r2, r2, lsl #3
 3059 000c 9200     		lsls	r2, r2, #2
 3060 000e D458     		ldr	r4, [r2, r3]
 3061 0010 1549     		ldr	r1, .L560+24
 3062 0012 1344     		add	r3, r3, r2
 3063 0014 5B68     		ldr	r3, [r3, #4]
 3064 0016 8C42     		cmp	r4, r1
 3065 0018 D0F84052 		ldr	r5, [r0, #576]
 3066 001c 08BF     		it	eq
 3067 001e 5B00     		lsleq	r3, r3, #1
 3068 0020 2B42     		tst	r3, r5
 3069 0022 12D0     		beq	.L559
 3070 0024 D0F83C02 		ldr	r0, [r0, #572]
 3071 0028 FFF7FEFF 		bl	__aeabi_ui2f
 3072 002c FFF7FEFF 		bl	__aeabi_f2d
 3073 0030 07A3     		adr	r3, .L560
 3074 0032 D3E90023 		ldrd	r2, [r3]
 3075 0036 FFF7FEFF 		bl	__aeabi_dmul
 3076 003a 07A3     		adr	r3, .L560+8
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 55


 3077 003c D3E90023 		ldrd	r2, [r3]
 3078 0040 FFF7FEFF 		bl	__aeabi_ddiv
 3079 0044 FFF7FEFF 		bl	__aeabi_d2f
 3080 0048 38BD     		pop	{r3, r4, r5, pc}
 3081              	.L559:
 3082 004a 0020     		movs	r0, #0
 3083 004c 38BD     		pop	{r3, r4, r5, pc}
 3084              	.L561:
 3085 004e 00BF     		.align	3
 3086              	.L560:
 3087 0050 00000000 		.word	0
 3088 0054 80842E41 		.word	1093567616
 3089 0058 00000000 		.word	0
 3090 005c F4062441 		.word	1092880116
 3091 0060 00000000 		.word	.LANCHOR6
 3092 0064 00000000 		.word	g_APinDescription
 3093 0068 000E0E40 		.word	1074662912
 3094              		.size	_ZNK8Platform19GetDriverStepTimingEj, .-_ZNK8Platform19GetDriverStepTimingEj
 3095 006c AFF30080 		.section	.text._ZNK8Platform11GetFanValueEj,"ax",%progbits
 3096              		.align	2
 3097              		.global	_ZNK8Platform11GetFanValueEj
 3098              		.thumb
 3099              		.thumb_func
 3100              		.type	_ZNK8Platform11GetFanValueEj, %function
 3101              	_ZNK8Platform11GetFanValueEj:
 3102              		@ args = 0, pretend = 0, frame = 0
 3103              		@ frame_needed = 0, uses_anonymous_args = 0
 3104              		@ link register save eliminated.
 3105 0000 0129     		cmp	r1, #1
 3106 0002 9ABF     		itte	ls
 3107 0004 00EB4111 		addls	r1, r0, r1, lsl #5
 3108 0008 D1F84406 		ldrls	r0, [r1, #1604]	@ float
 3109 000c 0048     		ldrhi	r0, .L565
 3110 000e 7047     		bx	lr
 3111              	.L566:
 3112              		.align	2
 3113              	.L565:
 3114 0010 000080BF 		.word	-1082130432
 3115              		.size	_ZNK8Platform11GetFanValueEj, .-_ZNK8Platform11GetFanValueEj
 3116              		.section	.text._ZN8Platform11SetFanValueEjf,"ax",%progbits
 3117              		.align	2
 3118              		.global	_ZN8Platform11SetFanValueEjf
 3119              		.thumb
 3120              		.thumb_func
 3121              		.type	_ZN8Platform11SetFanValueEjf, %function
 3122              	_ZN8Platform11SetFanValueEjf:
 3123              		@ args = 0, pretend = 0, frame = 0
 3124              		@ frame_needed = 0, uses_anonymous_args = 0
 3125              		@ link register save eliminated.
 3126 0000 0129     		cmp	r1, #1
 3127 0002 00D9     		bls	.L569
 3128 0004 7047     		bx	lr
 3129              	.L569:
 3130 0006 00EB4110 		add	r0, r0, r1, lsl #5
 3131 000a 00F24460 		addw	r0, r0, #1604
 3132 000e 1146     		mov	r1, r2
 3133 0010 FFF7FEBF 		b	_ZN3Fan8SetValueEf
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 56


 3134              		.size	_ZN8Platform11SetFanValueEjf, .-_ZN8Platform11SetFanValueEjf
 3135              		.section	.text._ZN8Platform15EnableSharedFanEb,"ax",%progbits
 3136              		.align	2
 3137              		.global	_ZN8Platform15EnableSharedFanEb
 3138              		.thumb
 3139              		.thumb_func
 3140              		.type	_ZN8Platform15EnableSharedFanEb, %function
 3141              	_ZN8Platform15EnableSharedFanEb:
 3142              		@ args = 0, pretend = 0, frame = 0
 3143              		@ frame_needed = 0, uses_anonymous_args = 0
 3144              		@ link register save eliminated.
 3145 0000 0029     		cmp	r1, #0
 3146 0002 00F26460 		addw	r0, r0, #1636
 3147 0006 0CBF     		ite	eq
 3148 0008 FF21     		moveq	r1, #255
 3149 000a 6D21     		movne	r1, #109
 3150 000c 0022     		movs	r2, #0
 3151 000e FFF7FEBF 		b	_ZN3Fan4InitEhb
 3152              		.size	_ZN8Platform15EnableSharedFanEb, .-_ZN8Platform15EnableSharedFanEb
 3153 0012 00BF     		.section	.text._ZN8Platform9GetFanRPMEv,"ax",%progbits
 3154              		.align	2
 3155              		.global	_ZN8Platform9GetFanRPMEv
 3156              		.thumb
 3157              		.thumb_func
 3158              		.type	_ZN8Platform9GetFanRPMEv, %function
 3159              	_ZN8Platform9GetFanRPMEv:
 3160              		@ args = 0, pretend = 0, frame = 0
 3161              		@ frame_needed = 0, uses_anonymous_args = 0
 3162 0000 10B5     		push	{r4, lr}
 3163 0002 0A4C     		ldr	r4, .L577
 3164 0004 2368     		ldr	r3, [r4]
 3165 0006 0BB9     		cbnz	r3, .L574
 3166              	.L576:
 3167 0008 0020     		movs	r0, #0
 3168 000a 10BD     		pop	{r4, pc}
 3169              	.L574:
 3170 000c FFF7FEFF 		bl	micros
 3171 0010 074A     		ldr	r2, .L577+4
 3172 0012 084B     		ldr	r3, .L577+8
 3173 0014 1268     		ldr	r2, [r2]
 3174 0016 801A     		subs	r0, r0, r2
 3175 0018 9842     		cmp	r0, r3
 3176 001a F5D8     		bhi	.L576
 3177 001c 2368     		ldr	r3, [r4]
 3178 001e 0648     		ldr	r0, .L577+12
 3179 0020 B0FBF3F0 		udiv	r0, r0, r3
 3180 0024 FFF7FEFF 		bl	__aeabi_ui2f
 3181 0028 10BD     		pop	{r4, pc}
 3182              	.L578:
 3183 002a 00BF     		.align	2
 3184              	.L577:
 3185 002c 00000000 		.word	.LANCHOR2
 3186 0030 00000000 		.word	.LANCHOR1
 3187 0034 BFC62D00 		.word	2999999
 3188 0038 00703839 		.word	960000000
 3189              		.size	_ZN8Platform9GetFanRPMEv, .-_ZN8Platform9GetFanRPMEv
 3190              		.section	.text._ZNK8Platform20FansHardwareInvertedEj,"ax",%progbits
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 57


 3191              		.align	2
 3192              		.global	_ZNK8Platform20FansHardwareInvertedEj
 3193              		.thumb
 3194              		.thumb_func
 3195              		.type	_ZNK8Platform20FansHardwareInvertedEj, %function
 3196              	_ZNK8Platform20FansHardwareInvertedEj:
 3197              		@ args = 0, pretend = 0, frame = 0
 3198              		@ frame_needed = 0, uses_anonymous_args = 0
 3199              		@ link register save eliminated.
 3200 0000 39B9     		cbnz	r1, .L581
 3201 0002 90F8AB00 		ldrb	r0, [r0, #171]	@ zero_extendqisi2
 3202 0006 0138     		subs	r0, r0, #1
 3203 0008 0128     		cmp	r0, #1
 3204 000a 8CBF     		ite	hi
 3205 000c 0020     		movhi	r0, #0
 3206 000e 0120     		movls	r0, #1
 3207 0010 7047     		bx	lr
 3208              	.L581:
 3209 0012 0020     		movs	r0, #0
 3210 0014 7047     		bx	lr
 3211              		.size	_ZNK8Platform20FansHardwareInvertedEj, .-_ZNK8Platform20FansHardwareInvertedEj
 3212 0016 00BF     		.section	.text._ZN8Platform8InitFansEv,"ax",%progbits
 3213              		.align	2
 3214              		.global	_ZN8Platform8InitFansEv
 3215              		.thumb
 3216              		.thumb_func
 3217              		.type	_ZN8Platform8InitFansEv, %function
 3218              	_ZN8Platform8InitFansEv:
 3219              		@ args = 0, pretend = 0, frame = 0
 3220              		@ frame_needed = 0, uses_anonymous_args = 0
 3221 0000 90F8AB20 		ldrb	r2, [r0, #171]	@ zero_extendqisi2
 3222 0004 38B5     		push	{r3, r4, r5, lr}
 3223 0006 013A     		subs	r2, r2, #1
 3224 0008 012A     		cmp	r2, #1
 3225 000a 0446     		mov	r4, r0
 3226 000c 8CBF     		ite	hi
 3227 000e 0022     		movhi	r2, #0
 3228 0010 0122     		movls	r2, #1
 3229 0012 04F26465 		addw	r5, r4, #1636
 3230 0016 00F24460 		addw	r0, r0, #1604
 3231 001a 6221     		movs	r1, #98
 3232 001c FFF7FEFF 		bl	_ZN3Fan4InitEhb
 3233 0020 2846     		mov	r0, r5
 3234 0022 0022     		movs	r2, #0
 3235 0024 6D21     		movs	r1, #109
 3236 0026 FFF7FEFF 		bl	_ZN3Fan4InitEhb
 3237 002a 2846     		mov	r0, r5
 3238 002c 4FF07E51 		mov	r1, #1065353216
 3239 0030 FFF7FEFF 		bl	_ZN3Fan8SetValueEf
 3240 0034 1720     		movs	r0, #23
 3241 0036 0023     		movs	r3, #0
 3242 0038 84F88406 		strb	r0, [r4, #1668]
 3243 003c C4F88836 		str	r3, [r4, #1672]	@ float
 3244 0040 0121     		movs	r1, #1
 3245 0042 40F2DC52 		movw	r2, #1500
 3246 0046 BDE83840 		pop	{r3, r4, r5, lr}
 3247 004a FFF7FEBF 		b	pinModeDuet
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 58


 3248              		.size	_ZN8Platform8InitFansEv, .-_ZN8Platform8InitFansEv
 3249 004e 00BF     		.section	.text._ZN8Platform13SetMACAddressEPh,"ax",%progbits
 3250              		.align	2
 3251              		.global	_ZN8Platform13SetMACAddressEPh
 3252              		.thumb
 3253              		.thumb_func
 3254              		.type	_ZN8Platform13SetMACAddressEPh, %function
 3255              	_ZN8Platform13SetMACAddressEPh:
 3256              		@ args = 0, pretend = 0, frame = 0
 3257              		@ frame_needed = 0, uses_anonymous_args = 0
 3258              		@ link register save eliminated.
 3259 0000 10B4     		push	{r4}
 3260 0002 0023     		movs	r3, #0
 3261              	.L585:
 3262 0004 CC5C     		ldrb	r4, [r1, r3]	@ zero_extendqisi2
 3263 0006 C218     		adds	r2, r0, r3
 3264 0008 0133     		adds	r3, r3, #1
 3265 000a 062B     		cmp	r3, #6
 3266 000c 82F8A440 		strb	r4, [r2, #164]
 3267 0010 F8D1     		bne	.L585
 3268 0012 5DF8044B 		ldr	r4, [sp], #4
 3269 0016 7047     		bx	lr
 3270              		.size	_ZN8Platform13SetMACAddressEPh, .-_ZN8Platform13SetMACAddressEPh
 3271              		.section	.text._ZN8Platform14AppendAuxReplyEPKc,"ax",%progbits
 3272              		.align	2
 3273              		.global	_ZN8Platform14AppendAuxReplyEPKc
 3274              		.thumb
 3275              		.thumb_func
 3276              		.type	_ZN8Platform14AppendAuxReplyEPKc, %function
 3277              	_ZN8Platform14AppendAuxReplyEPKc:
 3278              		@ args = 0, pretend = 0, frame = 16
 3279              		@ frame_needed = 0, uses_anonymous_args = 0
 3280 0000 10B5     		push	{r4, lr}
 3281 0002 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 3282 0004 84B0     		sub	sp, sp, #16
 3283 0006 0446     		mov	r4, r0
 3284 0008 73B1     		cbz	r3, .L587
 3285 000a 90F8A826 		ldrb	r2, [r0, #1704]	@ zero_extendqisi2
 3286 000e 5AB1     		cbz	r2, .L587
 3287 0010 7B2B     		cmp	r3, #123
 3288 0012 0BD0     		beq	.L603
 3289 0014 D4F8AC06 		ldr	r0, [r4, #1708]
 3290 0018 C0B1     		cbz	r0, .L604
 3291              	.L593:
 3292 001a D4F8B036 		ldr	r3, [r4, #1712]
 3293 001e 0133     		adds	r3, r3, #1
 3294 0020 C4F8B036 		str	r3, [r4, #1712]
 3295 0024 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3296              	.L587:
 3297 0028 04B0     		add	sp, sp, #16
 3298              		@ sp needed
 3299 002a 10BD     		pop	{r4, pc}
 3300              	.L603:
 3301 002c 03A8     		add	r0, sp, #12
 3302 002e 0191     		str	r1, [sp, #4]
 3303 0030 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 3304 0034 0199     		ldr	r1, [sp, #4]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 59


 3305 0036 0028     		cmp	r0, #0
 3306 0038 F6D0     		beq	.L587
 3307 003a 0398     		ldr	r0, [sp, #12]
 3308 003c FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 3309 0040 D4F89C06 		ldr	r0, [r4, #1692]
 3310 0044 0399     		ldr	r1, [sp, #12]
 3311 0046 FFF7FEFF 		bl	_ZN11OutputStack4PushEP12OutputBuffer
 3312 004a EDE7     		b	.L587
 3313              	.L604:
 3314 004c 04F2AC60 		addw	r0, r4, #1708
 3315 0050 0191     		str	r1, [sp, #4]
 3316 0052 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 3317 0056 0199     		ldr	r1, [sp, #4]
 3318 0058 0028     		cmp	r0, #0
 3319 005a E5D0     		beq	.L587
 3320 005c D4F8AC06 		ldr	r0, [r4, #1708]
 3321 0060 DBE7     		b	.L593
 3322              		.size	_ZN8Platform14AppendAuxReplyEPKc, .-_ZN8Platform14AppendAuxReplyEPKc
 3323 0062 00BF     		.section	.text._ZN8Platform14AppendAuxReplyEP12OutputBuffer,"ax",%progbits
 3324              		.align	2
 3325              		.global	_ZN8Platform14AppendAuxReplyEP12OutputBuffer
 3326              		.thumb
 3327              		.thumb_func
 3328              		.type	_ZN8Platform14AppendAuxReplyEP12OutputBuffer, %function
 3329              	_ZN8Platform14AppendAuxReplyEP12OutputBuffer:
 3330              		@ args = 0, pretend = 0, frame = 0
 3331              		@ frame_needed = 0, uses_anonymous_args = 0
 3332 0000 38B5     		push	{r3, r4, r5, lr}
 3333 0002 0C46     		mov	r4, r1
 3334 0004 0546     		mov	r5, r0
 3335 0006 19B1     		cbz	r1, .L606
 3336 0008 0846     		mov	r0, r1
 3337 000a FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 3338 000e 20B9     		cbnz	r0, .L620
 3339              	.L606:
 3340 0010 2046     		mov	r0, r4
 3341 0012 BDE83840 		pop	{r3, r4, r5, lr}
 3342 0016 FFF7FEBF 		b	_ZN12OutputBuffer10ReleaseAllEPS_
 3343              	.L620:
 3344 001a 95F8A836 		ldrb	r3, [r5, #1704]	@ zero_extendqisi2
 3345 001e 002B     		cmp	r3, #0
 3346 0020 F6D0     		beq	.L606
 3347 0022 2046     		mov	r0, r4
 3348 0024 0021     		movs	r1, #0
 3349 0026 FFF7FEFF 		bl	_ZN12OutputBufferixEj
 3350 002a 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 3351 002c 7B2B     		cmp	r3, #123
 3352 002e 0FD0     		beq	.L621
 3353 0030 D5F8B036 		ldr	r3, [r5, #1712]
 3354 0034 D5F8AC06 		ldr	r0, [r5, #1708]
 3355 0038 0133     		adds	r3, r3, #1
 3356 003a C5F8B036 		str	r3, [r5, #1712]
 3357 003e 20B1     		cbz	r0, .L622
 3358 0040 2146     		mov	r1, r4
 3359 0042 BDE83840 		pop	{r3, r4, r5, lr}
 3360 0046 FFF7FEBF 		b	_ZN12OutputBuffer6AppendEPS_
 3361              	.L622:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 60


 3362 004a C5F8AC46 		str	r4, [r5, #1708]
 3363 004e 38BD     		pop	{r3, r4, r5, pc}
 3364              	.L621:
 3365 0050 D5F89C06 		ldr	r0, [r5, #1692]
 3366 0054 2146     		mov	r1, r4
 3367 0056 BDE83840 		pop	{r3, r4, r5, lr}
 3368 005a FFF7FEBF 		b	_ZN11OutputStack4PushEP12OutputBuffer
 3369              		.size	_ZN8Platform14AppendAuxReplyEP12OutputBuffer, .-_ZN8Platform14AppendAuxReplyEP12OutputBuffer
 3370 005e 00BF     		.section	.text._ZNK8Platform8AtxPowerEv,"ax",%progbits
 3371              		.align	2
 3372              		.global	_ZNK8Platform8AtxPowerEv
 3373              		.thumb
 3374              		.thumb_func
 3375              		.type	_ZNK8Platform8AtxPowerEv, %function
 3376              	_ZNK8Platform8AtxPowerEv:
 3377              		@ args = 0, pretend = 0, frame = 0
 3378              		@ frame_needed = 0, uses_anonymous_args = 0
 3379              		@ link register save eliminated.
 3380 0000 0C20     		movs	r0, #12
 3381 0002 FFF7FEBF 		b	digitalRead
 3382              		.size	_ZNK8Platform8AtxPowerEv, .-_ZNK8Platform8AtxPowerEv
 3383 0006 00BF     		.section	.text._ZN8Platform11SetAtxPowerEb,"ax",%progbits
 3384              		.align	2
 3385              		.global	_ZN8Platform11SetAtxPowerEb
 3386              		.thumb
 3387              		.thumb_func
 3388              		.type	_ZN8Platform11SetAtxPowerEb, %function
 3389              	_ZN8Platform11SetAtxPowerEb:
 3390              		@ args = 0, pretend = 0, frame = 0
 3391              		@ frame_needed = 0, uses_anonymous_args = 0
 3392              		@ link register save eliminated.
 3393 0000 0C20     		movs	r0, #12
 3394 0002 FFF7FEBF 		b	digitalWrite
 3395              		.size	_ZN8Platform11SetAtxPowerEb, .-_ZN8Platform11SetAtxPowerEb
 3396 0006 00BF     		.section	.text._ZN8Platform18SetPressureAdvanceEjf,"ax",%progbits
 3397              		.align	2
 3398              		.global	_ZN8Platform18SetPressureAdvanceEjf
 3399              		.thumb
 3400              		.thumb_func
 3401              		.type	_ZN8Platform18SetPressureAdvanceEjf, %function
 3402              	_ZN8Platform18SetPressureAdvanceEjf:
 3403              		@ args = 0, pretend = 0, frame = 0
 3404              		@ frame_needed = 0, uses_anonymous_args = 0
 3405              		@ link register save eliminated.
 3406 0000 0529     		cmp	r1, #5
 3407 0002 9CBF     		itt	ls
 3408 0004 6031     		addls	r1, r1, #96
 3409 0006 40F82120 		strls	r2, [r0, r1, lsl #2]	@ float
 3410 000a 7047     		bx	lr
 3411              		.size	_ZN8Platform18SetPressureAdvanceEjf, .-_ZN8Platform18SetPressureAdvanceEjf
 3412              		.section	.text._ZNK8Platform15ActualInstantDvEj,"ax",%progbits
 3413              		.align	2
 3414              		.global	_ZNK8Platform15ActualInstantDvEj
 3415              		.thumb
 3416              		.thumb_func
 3417              		.type	_ZNK8Platform15ActualInstantDvEj, %function
 3418              	_ZNK8Platform15ActualInstantDvEj:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 61


 3419              		@ args = 0, pretend = 0, frame = 0
 3420              		@ frame_needed = 0, uses_anonymous_args = 0
 3421 0000 38B5     		push	{r3, r4, r5, lr}
 3422 0002 194B     		ldr	r3, .L634+8
 3423 0004 00EB8102 		add	r2, r0, r1, lsl #2
 3424 0008 1B69     		ldr	r3, [r3, #16]
 3425 000a D2F85C41 		ldr	r4, [r2, #348]	@ float
 3426 000e D3F88431 		ldr	r3, [r3, #388]
 3427 0012 9942     		cmp	r1, r3
 3428 0014 1FD3     		bcc	.L632
 3429 0016 CB1A     		subs	r3, r1, r3
 3430 0018 6033     		adds	r3, r3, #96
 3431 001a 50F82350 		ldr	r5, [r0, r3, lsl #2]	@ float
 3432 001e 0021     		movs	r1, #0
 3433 0020 2846     		mov	r0, r5
 3434 0022 FFF7FEFF 		bl	__aeabi_fcmple
 3435 0026 B0B9     		cbnz	r0, .L632
 3436 0028 2846     		mov	r0, r5
 3437 002a FFF7FEFF 		bl	__aeabi_f2d
 3438 002e 0246     		mov	r2, r0
 3439 0030 0B46     		mov	r3, r1
 3440 0032 0BA1     		adr	r1, .L634
 3441 0034 D1E90001 		ldrd	r0, [r1]
 3442 0038 FFF7FEFF 		bl	__aeabi_ddiv
 3443 003c FFF7FEFF 		bl	__aeabi_d2f
 3444 0040 2146     		mov	r1, r4
 3445 0042 0546     		mov	r5, r0
 3446 0044 2046     		mov	r0, r4
 3447 0046 FFF7FEFF 		bl	__aeabi_fcmpun
 3448 004a 20B9     		cbnz	r0, .L632
 3449 004c 2046     		mov	r0, r4
 3450 004e 2946     		mov	r1, r5
 3451 0050 FFF7FEFF 		bl	__aeabi_fcmplt
 3452 0054 00B1     		cbz	r0, .L628
 3453              	.L632:
 3454 0056 2546     		mov	r5, r4
 3455              	.L628:
 3456 0058 2846     		mov	r0, r5
 3457 005a 38BD     		pop	{r3, r4, r5, pc}
 3458              	.L635:
 3459 005c AFF30080 		.align	3
 3460              	.L634:
 3461 0060 7B14AE47 		.word	1202590843
 3462 0064 E17A843F 		.word	1065646817
 3463 0068 00000000 		.word	reprap
 3464              		.size	_ZNK8Platform15ActualInstantDvEj, .-_ZNK8Platform15ActualInstantDvEj
 3465 006c AFF30080 		.section	.text._ZNK8Platform11GetBaudRateEj,"ax",%progbits
 3466              		.align	2
 3467              		.global	_ZNK8Platform11GetBaudRateEj
 3468              		.thumb
 3469              		.thumb_func
 3470              		.type	_ZNK8Platform11GetBaudRateEj, %function
 3471              	_ZNK8Platform11GetBaudRateEj:
 3472              		@ args = 0, pretend = 0, frame = 0
 3473              		@ frame_needed = 0, uses_anonymous_args = 0
 3474              		@ link register save eliminated.
 3475 0000 0229     		cmp	r1, #2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 62


 3476 0002 9ABF     		itte	ls
 3477 0004 00EB8101 		addls	r1, r0, r1, lsl #2
 3478 0008 D1F88C06 		ldrls	r0, [r1, #1676]
 3479 000c 0020     		movhi	r0, #0
 3480 000e 7047     		bx	lr
 3481              		.size	_ZNK8Platform11GetBaudRateEj, .-_ZNK8Platform11GetBaudRateEj
 3482              		.section	.text._ZNK8Platform18GetCommsPropertiesEj,"ax",%progbits
 3483              		.align	2
 3484              		.global	_ZNK8Platform18GetCommsPropertiesEj
 3485              		.thumb
 3486              		.thumb_func
 3487              		.type	_ZNK8Platform18GetCommsPropertiesEj, %function
 3488              	_ZNK8Platform18GetCommsPropertiesEj:
 3489              		@ args = 0, pretend = 0, frame = 0
 3490              		@ frame_needed = 0, uses_anonymous_args = 0
 3491              		@ link register save eliminated.
 3492 0000 0229     		cmp	r1, #2
 3493 0002 9ABF     		itte	ls
 3494 0004 0918     		addls	r1, r1, r0
 3495 0006 91F89806 		ldrbls	r0, [r1, #1688]	@ zero_extendqisi2
 3496 000a 0020     		movhi	r0, #0
 3497 000c 7047     		bx	lr
 3498              		.size	_ZNK8Platform18GetCommsPropertiesEj, .-_ZNK8Platform18GetCommsPropertiesEj
 3499 000e 00BF     		.section	.text._ZN8Platform12SetBoardTypeE9BoardType,"ax",%progbits
 3500              		.align	2
 3501              		.global	_ZN8Platform12SetBoardTypeE9BoardType
 3502              		.thumb
 3503              		.thumb_func
 3504              		.type	_ZN8Platform12SetBoardTypeE9BoardType, %function
 3505              	_ZN8Platform12SetBoardTypeE9BoardType:
 3506              		@ args = 0, pretend = 0, frame = 0
 3507              		@ frame_needed = 0, uses_anonymous_args = 0
 3508 0000 38B5     		push	{r3, r4, r5, lr}
 3509 0002 0D46     		mov	r5, r1
 3510 0004 0446     		mov	r4, r0
 3511 0006 69B1     		cbz	r1, .L648
 3512 0008 84F8AB10 		strb	r1, [r4, #171]
 3513              	.L645:
 3514 000c 94F8BC30 		ldrb	r3, [r4, #188]	@ zero_extendqisi2
 3515 0010 03B9     		cbnz	r3, .L649
 3516 0012 38BD     		pop	{r3, r4, r5, pc}
 3517              	.L649:
 3518 0014 2046     		mov	r0, r4
 3519 0016 FFF7FEFF 		bl	_ZN8Platform10InitZProbeEv
 3520 001a 2046     		mov	r0, r4
 3521 001c BDE83840 		pop	{r3, r4, r5, lr}
 3522 0020 FFF7FEBF 		b	_ZN8Platform8InitFansEv
 3523              	.L648:
 3524 0024 2A46     		mov	r2, r5
 3525 0026 0121     		movs	r1, #1
 3526 0028 4220     		movs	r0, #66
 3527 002a FFF7FEFF 		bl	pinModeDuet
 3528 002e 4220     		movs	r0, #66
 3529 0030 FFF7FEFF 		bl	digitalRead
 3530 0034 0028     		cmp	r0, #0
 3531 0036 0CBF     		ite	eq
 3532 0038 0323     		moveq	r3, #3
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 63


 3533 003a 0123     		movne	r3, #1
 3534 003c 2946     		mov	r1, r5
 3535 003e 84F8AB30 		strb	r3, [r4, #171]
 3536 0042 2A46     		mov	r2, r5
 3537 0044 4220     		movs	r0, #66
 3538 0046 FFF7FEFF 		bl	pinModeDuet
 3539 004a DFE7     		b	.L645
 3540              		.size	_ZN8Platform12SetBoardTypeE9BoardType, .-_ZN8Platform12SetBoardTypeE9BoardType
 3541              		.section	.text._ZNK8Platform20GetElectronicsStringEv,"ax",%progbits
 3542              		.align	2
 3543              		.global	_ZNK8Platform20GetElectronicsStringEv
 3544              		.thumb
 3545              		.thumb_func
 3546              		.type	_ZNK8Platform20GetElectronicsStringEv, %function
 3547              	_ZNK8Platform20GetElectronicsStringEv:
 3548              		@ args = 0, pretend = 0, frame = 0
 3549              		@ frame_needed = 0, uses_anonymous_args = 0
 3550              		@ link register save eliminated.
 3551 0000 90F8AB30 		ldrb	r3, [r0, #171]	@ zero_extendqisi2
 3552 0004 013B     		subs	r3, r3, #1
 3553 0006 DBB2     		uxtb	r3, r3
 3554 0008 022B     		cmp	r3, #2
 3555 000a 9ABF     		itte	ls
 3556 000c 024A     		ldrls	r2, .L653
 3557 000e 52F82300 		ldrls	r0, [r2, r3, lsl #2]
 3558 0012 0248     		ldrhi	r0, .L653+4
 3559 0014 7047     		bx	lr
 3560              	.L654:
 3561 0016 00BF     		.align	2
 3562              	.L653:
 3563 0018 00000000 		.word	.LANCHOR7
 3564 001c 38000000 		.word	.LC9
 3565              		.size	_ZNK8Platform20GetElectronicsStringEv, .-_ZNK8Platform20GetElectronicsStringEv
 3566              		.section	.text._ZNK8Platform14GetBoardStringEv,"ax",%progbits
 3567              		.align	2
 3568              		.global	_ZNK8Platform14GetBoardStringEv
 3569              		.thumb
 3570              		.thumb_func
 3571              		.type	_ZNK8Platform14GetBoardStringEv, %function
 3572              	_ZNK8Platform14GetBoardStringEv:
 3573              		@ args = 0, pretend = 0, frame = 0
 3574              		@ frame_needed = 0, uses_anonymous_args = 0
 3575              		@ link register save eliminated.
 3576 0000 90F8AB30 		ldrb	r3, [r0, #171]	@ zero_extendqisi2
 3577 0004 013B     		subs	r3, r3, #1
 3578 0006 DBB2     		uxtb	r3, r3
 3579 0008 022B     		cmp	r3, #2
 3580 000a 9ABF     		itte	ls
 3581 000c 024A     		ldrls	r2, .L658
 3582 000e 52F82300 		ldrls	r0, [r2, r3, lsl #2]
 3583 0012 0248     		ldrhi	r0, .L658+4
 3584 0014 7047     		bx	lr
 3585              	.L659:
 3586 0016 00BF     		.align	2
 3587              	.L658:
 3588 0018 00000000 		.word	.LANCHOR8
 3589 001c 48000000 		.word	.LC10
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 64


 3590              		.size	_ZNK8Platform14GetBoardStringEv, .-_ZNK8Platform14GetBoardStringEv
 3591              		.section	.text._ZN8Platform14GetFirmwarePinEi9PinAccessRhRb,"ax",%progbits
 3592              		.align	2
 3593              		.global	_ZN8Platform14GetFirmwarePinEi9PinAccessRhRb
 3594              		.thumb
 3595              		.thumb_func
 3596              		.type	_ZN8Platform14GetFirmwarePinEi9PinAccessRhRb, %function
 3597              	_ZN8Platform14GetFirmwarePinEi9PinAccessRhRb:
 3598              		@ args = 4, pretend = 0, frame = 0
 3599              		@ frame_needed = 0, uses_anonymous_args = 0
 3600 0000 70B5     		push	{r4, r5, r6, lr}
 3601 0002 049D     		ldr	r5, [sp, #16]
 3602 0004 FF26     		movs	r6, #255
 3603 0006 0024     		movs	r4, #0
 3604 0008 4529     		cmp	r1, #69
 3605 000a 1E70     		strb	r6, [r3]
 3606 000c 2C70     		strb	r4, [r5]
 3607 000e 09D8     		bhi	.L679
 3608 0010 0629     		cmp	r1, #6
 3609 0012 1ED8     		bhi	.L663
 3610 0014 314C     		ldr	r4, .L685
 3611 0016 E468     		ldr	r4, [r4, #12]
 3612 0018 04EB8104 		add	r4, r4, r1, lsl #2
 3613 001c 6468     		ldr	r4, [r4, #4]
 3614 001e 94F84040 		ldrb	r4, [r4, #64]	@ zero_extendqisi2
 3615 0022 A4B3     		cbz	r4, .L681
 3616              	.L679:
 3617 0024 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 3618              	.L662:
 3619 0026 FF2C     		cmp	r4, #255
 3620 0028 23D0     		beq	.L669
 3621 002a 012A     		cmp	r2, #1
 3622 002c 25D0     		beq	.L682
 3623 002e 023A     		subs	r2, r2, #2
 3624 0030 012A     		cmp	r2, #1
 3625 0032 27D9     		bls	.L683
 3626 0034 4618     		adds	r6, r0, r1
 3627              	.L680:
 3628 0036 0125     		movs	r5, #1
 3629              	.L667:
 3630 0038 96F93437 		ldrsb	r3, [r6, #1844]
 3631 003c 69B2     		sxtb	r1, r5
 3632 003e 8B42     		cmp	r3, r1
 3633 0040 19D0     		beq	.L675
 3634 0042 2046     		mov	r0, r4
 3635 0044 0022     		movs	r2, #0
 3636 0046 FFF7FEFF 		bl	pinModeDuet
 3637 004a 86F83457 		strb	r5, [r6, #1844]
 3638 004e 0120     		movs	r0, #1
 3639 0050 70BD     		pop	{r4, r5, r6, pc}
 3640              	.L663:
 3641 0052 A1F11404 		sub	r4, r1, #20
 3642 0056 012C     		cmp	r4, #1
 3643 0058 22D9     		bls	.L684
 3644 005a 2729     		cmp	r1, #39
 3645 005c E2DD     		ble	.L679
 3646 005e 3029     		cmp	r1, #48
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 65


 3647 0060 33DC     		bgt	.L666
 3648 0062 002A     		cmp	r2, #0
 3649 0064 DED1     		bne	.L679
 3650 0066 4618     		adds	r6, r0, r1
 3651 0068 96F8B740 		ldrb	r4, [r6, #183]	@ zero_extendqisi2
 3652 006c FF2C     		cmp	r4, #255
 3653 006e 1C70     		strb	r4, [r3]
 3654 0070 E1D1     		bne	.L680
 3655              	.L669:
 3656 0072 0020     		movs	r0, #0
 3657 0074 70BD     		pop	{r4, r5, r6, pc}
 3658              	.L675:
 3659 0076 0120     		movs	r0, #1
 3660 0078 70BD     		pop	{r4, r5, r6, pc}
 3661              	.L682:
 3662 007a 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 3663 007c 4618     		adds	r6, r0, r1
 3664 007e 6BB1     		cbz	r3, .L672
 3665 0080 0425     		movs	r5, #4
 3666 0082 D9E7     		b	.L667
 3667              	.L683:
 3668 0084 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 3669 0086 4618     		adds	r6, r0, r1
 3670 0088 EBB1     		cbz	r3, .L674
 3671 008a 0825     		movs	r5, #8
 3672 008c D4E7     		b	.L667
 3673              	.L681:
 3674 008e 4618     		adds	r6, r0, r1
 3675 0090 96F81D65 		ldrb	r6, [r6, #1309]	@ zero_extendqisi2
 3676 0094 0124     		movs	r4, #1
 3677 0096 1E70     		strb	r6, [r3]
 3678 0098 2C70     		strb	r4, [r5]
 3679 009a C3E7     		b	.L679
 3680              	.L672:
 3681 009c 0325     		movs	r5, #3
 3682 009e CBE7     		b	.L667
 3683              	.L684:
 3684 00a0 00EB4116 		add	r6, r0, r1, lsl #5
 3685 00a4 96F8E063 		ldrb	r6, [r6, #992]	@ zero_extendqisi2
 3686 00a8 FF2E     		cmp	r6, #255
 3687 00aa BBD1     		bne	.L679
 3688 00ac 0C4E     		ldr	r6, .L685+4
 3689 00ae 345D     		ldrb	r4, [r6, r4]	@ zero_extendqisi2
 3690 00b0 1C70     		strb	r4, [r3]
 3691 00b2 90F8AB40 		ldrb	r4, [r0, #171]	@ zero_extendqisi2
 3692 00b6 013C     		subs	r4, r4, #1
 3693 00b8 012C     		cmp	r4, #1
 3694 00ba 8CBF     		ite	hi
 3695 00bc 0024     		movhi	r4, #0
 3696 00be 0124     		movls	r4, #1
 3697 00c0 2C70     		strb	r4, [r5]
 3698 00c2 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 3699 00c4 AFE7     		b	.L662
 3700              	.L674:
 3701 00c6 0725     		movs	r5, #7
 3702 00c8 B6E7     		b	.L667
 3703              	.L666:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 66


 3704 00ca 3B29     		cmp	r1, #59
 3705 00cc AADD     		ble	.L679
 3706 00ce 054C     		ldr	r4, .L685+8
 3707 00d0 0C44     		add	r4, r4, r1
 3708 00d2 14F83C4C 		ldrb	r4, [r4, #-60]	@ zero_extendqisi2
 3709 00d6 1C70     		strb	r4, [r3]
 3710 00d8 A5E7     		b	.L662
 3711              	.L686:
 3712 00da 00BF     		.align	2
 3713              	.L685:
 3714 00dc 00000000 		.word	reprap
 3715 00e0 00000000 		.word	.LANCHOR9
 3716 00e4 00000000 		.word	.LANCHOR10
 3717              		.size	_ZN8Platform14GetFirmwarePinEi9PinAccessRhRb, .-_ZN8Platform14GetFirmwarePinEi9PinAccessRhRb
 3718              		.section	.text._ZN8Platform28SetExtrusionAncilliaryPwmPinEi,"ax",%progbits
 3719              		.align	2
 3720              		.global	_ZN8Platform28SetExtrusionAncilliaryPwmPinEi
 3721              		.thumb
 3722              		.thumb_func
 3723              		.type	_ZN8Platform28SetExtrusionAncilliaryPwmPinEi, %function
 3724              	_ZN8Platform28SetExtrusionAncilliaryPwmPinEi:
 3725              		@ args = 0, pretend = 0, frame = 0
 3726              		@ frame_needed = 0, uses_anonymous_args = 0
 3727 0000 00B5     		push	{lr}
 3728 0002 00F2C542 		addw	r2, r0, #1221
 3729 0006 83B0     		sub	sp, sp, #12
 3730 0008 0092     		str	r2, [sp]
 3731 000a 00F2C443 		addw	r3, r0, #1220
 3732 000e 0222     		movs	r2, #2
 3733 0010 FFF7FEFF 		bl	_ZN8Platform14GetFirmwarePinEi9PinAccessRhRb
 3734 0014 03B0     		add	sp, sp, #12
 3735              		@ sp needed
 3736 0016 5DF804FB 		ldr	pc, [sp], #4
 3737              		.size	_ZN8Platform28SetExtrusionAncilliaryPwmPinEi, .-_ZN8Platform28SetExtrusionAncilliaryPwmPinEi
 3738              		.global	__aeabi_dsub
 3739 001a 00BF     		.section	.text._ZNK8Platform18GetMcuTemperaturesERfS0_S0_,"ax",%progbits
 3740              		.align	2
 3741              		.global	_ZNK8Platform18GetMcuTemperaturesERfS0_S0_
 3742              		.thumb
 3743              		.thumb_func
 3744              		.type	_ZNK8Platform18GetMcuTemperaturesERfS0_S0_, %function
 3745              	_ZNK8Platform18GetMcuTemperaturesERfS0_S0_:
 3746              		@ args = 0, pretend = 0, frame = 0
 3747              		@ frame_needed = 0, uses_anonymous_args = 0
 3748 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 3749 0004 0746     		mov	r7, r0
 3750 0006 B0F82207 		ldrh	r0, [r0, #1826]
 3751 000a 9046     		mov	r8, r2
 3752 000c 1E46     		mov	r6, r3
 3753 000e 8946     		mov	r9, r1
 3754 0010 FFF7FEFF 		bl	__aeabi_ui2f
 3755 0014 FFF7FEFF 		bl	__aeabi_f2d
 3756 0018 41A3     		adr	r3, .L689
 3757 001a D3E90023 		ldrd	r2, [r3]
 3758 001e FFF7FEFF 		bl	__aeabi_dmul
 3759 0022 FFF7FEFF 		bl	__aeabi_d2f
 3760 0026 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 67


 3761 002a 3FA3     		adr	r3, .L689+8
 3762 002c D3E90023 		ldrd	r2, [r3]
 3763 0030 FFF7FEFF 		bl	__aeabi_dsub
 3764 0034 3EA3     		adr	r3, .L689+16
 3765 0036 D3E90023 		ldrd	r2, [r3]
 3766 003a FFF7FEFF 		bl	__aeabi_dmul
 3767 003e 0022     		movs	r2, #0
 3768 0040 3D4B     		ldr	r3, .L689+24
 3769 0042 FFF7FEFF 		bl	__aeabi_dadd
 3770 0046 0446     		mov	r4, r0
 3771 0048 D7F82807 		ldr	r0, [r7, #1832]	@ float
 3772 004c 0D46     		mov	r5, r1
 3773 004e FFF7FEFF 		bl	__aeabi_f2d
 3774 0052 0246     		mov	r2, r0
 3775 0054 0B46     		mov	r3, r1
 3776 0056 2046     		mov	r0, r4
 3777 0058 2946     		mov	r1, r5
 3778 005a FFF7FEFF 		bl	__aeabi_dadd
 3779 005e FFF7FEFF 		bl	__aeabi_d2f
 3780 0062 C9F80000 		str	r0, [r9]	@ float
 3781 0066 B7F81E07 		ldrh	r0, [r7, #1822]
 3782 006a FFF7FEFF 		bl	__aeabi_ui2f
 3783 006e FFF7FEFF 		bl	__aeabi_f2d
 3784 0072 2BA3     		adr	r3, .L689
 3785 0074 D3E90023 		ldrd	r2, [r3]
 3786 0078 FFF7FEFF 		bl	__aeabi_dmul
 3787 007c FFF7FEFF 		bl	__aeabi_d2f
 3788 0080 FFF7FEFF 		bl	__aeabi_f2d
 3789 0084 28A3     		adr	r3, .L689+8
 3790 0086 D3E90023 		ldrd	r2, [r3]
 3791 008a FFF7FEFF 		bl	__aeabi_dsub
 3792 008e 28A3     		adr	r3, .L689+16
 3793 0090 D3E90023 		ldrd	r2, [r3]
 3794 0094 FFF7FEFF 		bl	__aeabi_dmul
 3795 0098 0022     		movs	r2, #0
 3796 009a 274B     		ldr	r3, .L689+24
 3797 009c FFF7FEFF 		bl	__aeabi_dadd
 3798 00a0 0446     		mov	r4, r0
 3799 00a2 D7F82807 		ldr	r0, [r7, #1832]	@ float
 3800 00a6 0D46     		mov	r5, r1
 3801 00a8 FFF7FEFF 		bl	__aeabi_f2d
 3802 00ac 0246     		mov	r2, r0
 3803 00ae 0B46     		mov	r3, r1
 3804 00b0 2046     		mov	r0, r4
 3805 00b2 2946     		mov	r1, r5
 3806 00b4 FFF7FEFF 		bl	__aeabi_dadd
 3807 00b8 FFF7FEFF 		bl	__aeabi_d2f
 3808 00bc C8F80000 		str	r0, [r8]	@ float
 3809 00c0 B7F82007 		ldrh	r0, [r7, #1824]
 3810 00c4 FFF7FEFF 		bl	__aeabi_ui2f
 3811 00c8 FFF7FEFF 		bl	__aeabi_f2d
 3812 00cc 14A3     		adr	r3, .L689
 3813 00ce D3E90023 		ldrd	r2, [r3]
 3814 00d2 FFF7FEFF 		bl	__aeabi_dmul
 3815 00d6 FFF7FEFF 		bl	__aeabi_d2f
 3816 00da FFF7FEFF 		bl	__aeabi_f2d
 3817 00de 12A3     		adr	r3, .L689+8
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 68


 3818 00e0 D3E90023 		ldrd	r2, [r3]
 3819 00e4 FFF7FEFF 		bl	__aeabi_dsub
 3820 00e8 11A3     		adr	r3, .L689+16
 3821 00ea D3E90023 		ldrd	r2, [r3]
 3822 00ee FFF7FEFF 		bl	__aeabi_dmul
 3823 00f2 0022     		movs	r2, #0
 3824 00f4 104B     		ldr	r3, .L689+24
 3825 00f6 FFF7FEFF 		bl	__aeabi_dadd
 3826 00fa 0446     		mov	r4, r0
 3827 00fc D7F82807 		ldr	r0, [r7, #1832]	@ float
 3828 0100 0D46     		mov	r5, r1
 3829 0102 FFF7FEFF 		bl	__aeabi_f2d
 3830 0106 0246     		mov	r2, r0
 3831 0108 0B46     		mov	r3, r1
 3832 010a 2046     		mov	r0, r4
 3833 010c 2946     		mov	r1, r5
 3834 010e FFF7FEFF 		bl	__aeabi_dadd
 3835 0112 FFF7FEFF 		bl	__aeabi_d2f
 3836 0116 3060     		str	r0, [r6]	@ float
 3837 0118 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 3838              	.L690:
 3839 011c AFF30080 		.align	3
 3840              	.L689:
 3841 0120 66666666 		.word	1717986918
 3842 0124 66664A3F 		.word	1061840486
 3843 0128 9A999999 		.word	-1717986918
 3844 012c 9999E93F 		.word	1072273817
 3845 0130 E8909A60 		.word	1620742376
 3846 0134 BC957740 		.word	1081578940
 3847 0138 00003B40 		.word	1077608448
 3848              		.size	_ZNK8Platform18GetMcuTemperaturesERfS0_S0_, .-_ZNK8Platform18GetMcuTemperaturesERfS0_S0_
 3849 013c AFF30080 		.section	.text._ZNK8Platform13IsDateTimeSetEv,"ax",%progbits
 3850              		.align	2
 3851              		.global	_ZNK8Platform13IsDateTimeSetEv
 3852              		.thumb
 3853              		.thumb_func
 3854              		.type	_ZNK8Platform13IsDateTimeSetEv, %function
 3855              	_ZNK8Platform13IsDateTimeSetEv:
 3856              		@ args = 0, pretend = 0, frame = 0
 3857              		@ frame_needed = 0, uses_anonymous_args = 0
 3858              		@ link register save eliminated.
 3859 0000 D0F82C07 		ldr	r0, [r0, #1836]
 3860 0004 0030     		adds	r0, r0, #0
 3861 0006 18BF     		it	ne
 3862 0008 0120     		movne	r0, #1
 3863 000a 7047     		bx	lr
 3864              		.size	_ZNK8Platform13IsDateTimeSetEv, .-_ZNK8Platform13IsDateTimeSetEv
 3865              		.section	.text._ZNK8Platform11GetDateTimeEv,"ax",%progbits
 3866              		.align	2
 3867              		.global	_ZNK8Platform11GetDateTimeEv
 3868              		.thumb
 3869              		.thumb_func
 3870              		.type	_ZNK8Platform11GetDateTimeEv, %function
 3871              	_ZNK8Platform11GetDateTimeEv:
 3872              		@ args = 0, pretend = 0, frame = 0
 3873              		@ frame_needed = 0, uses_anonymous_args = 0
 3874              		@ link register save eliminated.
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 69


 3875 0000 D0F82C07 		ldr	r0, [r0, #1836]
 3876 0004 7047     		bx	lr
 3877              		.size	_ZNK8Platform11GetDateTimeEv, .-_ZNK8Platform11GetDateTimeEv
 3878 0006 00BF     		.section	.text._ZN8Platform11SetDateTimeEl,"ax",%progbits
 3879              		.align	2
 3880              		.global	_ZN8Platform11SetDateTimeEl
 3881              		.thumb
 3882              		.thumb_func
 3883              		.type	_ZN8Platform11SetDateTimeEl, %function
 3884              	_ZN8Platform11SetDateTimeEl:
 3885              		@ args = 0, pretend = 0, frame = 48
 3886              		@ frame_needed = 0, uses_anonymous_args = 0
 3887 0000 30B5     		push	{r4, r5, lr}
 3888 0002 8DB0     		sub	sp, sp, #52
 3889 0004 0CAB     		add	r3, sp, #48
 3890 0006 43F82C1D 		str	r1, [r3, #-44]!
 3891 000a 0546     		mov	r5, r0
 3892 000c 03A9     		add	r1, sp, #12
 3893 000e 1846     		mov	r0, r3
 3894 0010 FFF7FEFF 		bl	gmtime_r
 3895 0014 041C     		adds	r4, r0, #0
 3896 0016 18BF     		it	ne
 3897 0018 0124     		movne	r4, #1
 3898 001a 34B1     		cbz	r4, .L694
 3899 001c 019B     		ldr	r3, [sp, #4]
 3900 001e C5F82C37 		str	r3, [r5, #1836]
 3901 0022 FFF7FEFF 		bl	millis
 3902 0026 C5F83007 		str	r0, [r5, #1840]
 3903              	.L694:
 3904 002a 2046     		mov	r0, r4
 3905 002c 0DB0     		add	sp, sp, #52
 3906              		@ sp needed
 3907 002e 30BD     		pop	{r4, r5, pc}
 3908              		.size	_ZN8Platform11SetDateTimeEl, .-_ZN8Platform11SetDateTimeEl
 3909              		.section	.text._ZN8Platform7SetDateEl,"ax",%progbits
 3910              		.align	2
 3911              		.global	_ZN8Platform7SetDateEl
 3912              		.thumb
 3913              		.thumb_func
 3914              		.type	_ZN8Platform7SetDateEl, %function
 3915              	_ZN8Platform7SetDateEl:
 3916              		@ args = 0, pretend = 0, frame = 80
 3917              		@ frame_needed = 0, uses_anonymous_args = 0
 3918 0000 30B5     		push	{r4, r5, lr}
 3919 0002 95B0     		sub	sp, sp, #84
 3920 0004 14AB     		add	r3, sp, #80
 3921 0006 43F84C1D 		str	r1, [r3, #-76]!
 3922 000a 0546     		mov	r5, r0
 3923 000c 02A9     		add	r1, sp, #8
 3924 000e 1846     		mov	r0, r3
 3925 0010 FFF7FEFF 		bl	gmtime_r
 3926 0014 041C     		adds	r4, r0, #0
 3927 0016 18BF     		it	ne
 3928 0018 0124     		movne	r4, #1
 3929 001a 4CB1     		cbz	r4, .L706
 3930 001c D5F82C37 		ldr	r3, [r5, #1836]
 3931 0020 4BB9     		cbnz	r3, .L714
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 70


 3932              	.L700:
 3933 0022 019B     		ldr	r3, [sp, #4]
 3934 0024 C5F82C37 		str	r3, [r5, #1836]
 3935 0028 FFF7FEFF 		bl	millis
 3936 002c C5F83007 		str	r0, [r5, #1840]
 3937              	.L706:
 3938 0030 2046     		mov	r0, r4
 3939 0032 15B0     		add	sp, sp, #84
 3940              		@ sp needed
 3941 0034 30BD     		pop	{r4, r5, pc}
 3942              	.L714:
 3943 0036 05F22C70 		addw	r0, r5, #1836
 3944 003a 0BA9     		add	r1, sp, #44
 3945 003c FFF7FEFF 		bl	gmtime_r
 3946 0040 0028     		cmp	r0, #0
 3947 0042 EED0     		beq	.L700
 3948 0044 0D99     		ldr	r1, [sp, #52]
 3949 0046 0C9A     		ldr	r2, [sp, #48]
 3950 0048 0B9B     		ldr	r3, [sp, #44]
 3951 004a 02A8     		add	r0, sp, #8
 3952 004c 0491     		str	r1, [sp, #16]
 3953 004e 0392     		str	r2, [sp, #12]
 3954 0050 0293     		str	r3, [sp, #8]
 3955 0052 FFF7FEFF 		bl	mktime
 3956 0056 C5F82C07 		str	r0, [r5, #1836]
 3957 005a 2046     		mov	r0, r4
 3958 005c 15B0     		add	sp, sp, #84
 3959              		@ sp needed
 3960 005e 30BD     		pop	{r4, r5, pc}
 3961              		.size	_ZN8Platform7SetDateEl, .-_ZN8Platform7SetDateEl
 3962              		.section	.text._ZN8Platform7SetTimeEl,"ax",%progbits
 3963              		.align	2
 3964              		.global	_ZN8Platform7SetTimeEl
 3965              		.thumb
 3966              		.thumb_func
 3967              		.type	_ZN8Platform7SetTimeEl, %function
 3968              	_ZN8Platform7SetTimeEl:
 3969              		@ args = 0, pretend = 0, frame = 80
 3970              		@ frame_needed = 0, uses_anonymous_args = 0
 3971 0000 30B5     		push	{r4, r5, lr}
 3972 0002 95B0     		sub	sp, sp, #84
 3973 0004 14AB     		add	r3, sp, #80
 3974 0006 43F84C1D 		str	r1, [r3, #-76]!
 3975 000a 0546     		mov	r5, r0
 3976 000c 02A9     		add	r1, sp, #8
 3977 000e 1846     		mov	r0, r3
 3978 0010 FFF7FEFF 		bl	gmtime_r
 3979 0014 041C     		adds	r4, r0, #0
 3980 0016 18BF     		it	ne
 3981 0018 0124     		movne	r4, #1
 3982 001a 4CB1     		cbz	r4, .L723
 3983 001c D5F82C37 		ldr	r3, [r5, #1836]
 3984 0020 4BB9     		cbnz	r3, .L731
 3985              	.L717:
 3986 0022 019B     		ldr	r3, [sp, #4]
 3987 0024 C5F82C37 		str	r3, [r5, #1836]
 3988              	.L719:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 71


 3989 0028 FFF7FEFF 		bl	millis
 3990 002c C5F83007 		str	r0, [r5, #1840]
 3991              	.L723:
 3992 0030 2046     		mov	r0, r4
 3993 0032 15B0     		add	sp, sp, #84
 3994              		@ sp needed
 3995 0034 30BD     		pop	{r4, r5, pc}
 3996              	.L731:
 3997 0036 0BA9     		add	r1, sp, #44
 3998 0038 05F22C70 		addw	r0, r5, #1836
 3999 003c FFF7FEFF 		bl	gmtime_r
 4000 0040 0028     		cmp	r0, #0
 4001 0042 EED0     		beq	.L717
 4002 0044 0499     		ldr	r1, [sp, #16]
 4003 0046 039A     		ldr	r2, [sp, #12]
 4004 0048 029B     		ldr	r3, [sp, #8]
 4005 004a 0BA8     		add	r0, sp, #44
 4006 004c 0D91     		str	r1, [sp, #52]
 4007 004e 0C92     		str	r2, [sp, #48]
 4008 0050 0B93     		str	r3, [sp, #44]
 4009 0052 FFF7FEFF 		bl	mktime
 4010 0056 C5F82C07 		str	r0, [r5, #1836]
 4011 005a E5E7     		b	.L719
 4012              		.size	_ZN8Platform7SetTimeEl, .-_ZN8Platform7SetTimeEl
 4013              		.section	.text.TC3_Handler,"ax",%progbits
 4014              		.align	2
 4015              		.global	TC3_Handler
 4016              		.thumb
 4017              		.thumb_func
 4018              		.type	TC3_Handler, %function
 4019              	TC3_Handler:
 4020              		@ args = 0, pretend = 0, frame = 0
 4021              		@ frame_needed = 0, uses_anonymous_args = 0
 4022 0000 10B5     		push	{r4, lr}
 4023 0002 0B4A     		ldr	r2, .L744
 4024 0004 0B4B     		ldr	r3, .L744+4
 4025 0006 9468     		ldr	r4, [r2, #8]
 4026 0008 0422     		movs	r2, #4
 4027 000a 9A62     		str	r2, [r3, #40]
 4028 000c 2368     		ldr	r3, [r4]
 4029 000e 2BB1     		cbz	r3, .L733
 4030              	.L735:
 4031 0010 2068     		ldr	r0, [r4]
 4032 0012 FFF7FEFF 		bl	_ZN3DDA4StepEv
 4033 0016 0028     		cmp	r0, #0
 4034 0018 FAD1     		bne	.L735
 4035 001a 10BD     		pop	{r4, pc}
 4036              	.L733:
 4037 001c 94F8DC35 		ldrb	r3, [r4, #1500]	@ zero_extendqisi2
 4038 0020 03B9     		cbnz	r3, .L743
 4039 0022 10BD     		pop	{r4, pc}
 4040              	.L743:
 4041 0024 2046     		mov	r0, r4
 4042 0026 BDE81040 		pop	{r4, lr}
 4043 002a FFF7FEBF 		b	_ZN4Move19DeltaProbeInterruptEv
 4044              	.L745:
 4045 002e 00BF     		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 72


 4046              	.L744:
 4047 0030 00000000 		.word	reprap
 4048 0034 00400840 		.word	1074282496
 4049              		.size	TC3_Handler, .-TC3_Handler
 4050              		.section	.text._ZN8Platform17ScheduleInterruptEm,"ax",%progbits
 4051              		.align	2
 4052              		.global	_ZN8Platform17ScheduleInterruptEm
 4053              		.thumb
 4054              		.thumb_func
 4055              		.type	_ZN8Platform17ScheduleInterruptEm, %function
 4056              	_ZN8Platform17ScheduleInterruptEm:
 4057              		@ args = 0, pretend = 0, frame = 0
 4058              		@ frame_needed = 0, uses_anonymous_args = 0
 4059 0000 38B5     		push	{r3, r4, r5, lr}
 4060 0002 0A4C     		ldr	r4, .L749
 4061 0004 0246     		mov	r2, r0
 4062 0006 0546     		mov	r5, r0
 4063 0008 0021     		movs	r1, #0
 4064 000a 2046     		mov	r0, r4
 4065 000c FFF7FEFF 		bl	tc_write_ra
 4066 0010 2046     		mov	r0, r4
 4067 0012 0021     		movs	r1, #0
 4068 0014 FFF7FEFF 		bl	tc_get_status
 4069 0018 2369     		ldr	r3, [r4, #16]
 4070 001a ED1A     		subs	r5, r5, r3
 4071 001c 052D     		cmp	r5, #5
 4072 001e C3BF     		ittte	gt
 4073 0020 0423     		movgt	r3, #4
 4074 0022 0020     		movgt	r0, #0
 4075 0024 6362     		strgt	r3, [r4, #36]
 4076 0026 0120     		movle	r0, #1
 4077 0028 38BD     		pop	{r3, r4, r5, pc}
 4078              	.L750:
 4079 002a 00BF     		.align	2
 4080              	.L749:
 4081 002c 00400840 		.word	1074282496
 4082              		.size	_ZN8Platform17ScheduleInterruptEm, .-_ZN8Platform17ScheduleInterruptEm
 4083              		.section	.text._ZN8Platform20DisableStepInterruptEv,"ax",%progbits
 4084              		.align	2
 4085              		.global	_ZN8Platform20DisableStepInterruptEv
 4086              		.thumb
 4087              		.thumb_func
 4088              		.type	_ZN8Platform20DisableStepInterruptEv, %function
 4089              	_ZN8Platform20DisableStepInterruptEv:
 4090              		@ args = 0, pretend = 0, frame = 0
 4091              		@ frame_needed = 0, uses_anonymous_args = 0
 4092              		@ link register save eliminated.
 4093 0000 014B     		ldr	r3, .L752
 4094 0002 0422     		movs	r2, #4
 4095 0004 9A62     		str	r2, [r3, #40]
 4096 0006 7047     		bx	lr
 4097              	.L753:
 4098              		.align	2
 4099              	.L752:
 4100 0008 00400840 		.word	1074282496
 4101              		.size	_ZN8Platform20DisableStepInterruptEv, .-_ZN8Platform20DisableStepInterruptEv
 4102              		.section	.text._ZN8Platform4TickEv,"ax",%progbits
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 73


 4103              		.align	2
 4104              		.global	_ZN8Platform4TickEv
 4105              		.thumb
 4106              		.thumb_func
 4107              		.type	_ZN8Platform4TickEv, %function
 4108              	_ZN8Platform4TickEv:
 4109              		@ args = 0, pretend = 0, frame = 0
 4110              		@ frame_needed = 0, uses_anonymous_args = 0
 4111 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 4112 0002 90F80837 		ldrb	r3, [r0, #1800]	@ zero_extendqisi2
 4113 0006 0446     		mov	r4, r0
 4114 0008 013B     		subs	r3, r3, #1
 4115 000a 032B     		cmp	r3, #3
 4116 000c 20D8     		bhi	.L755
 4117 000e DFE803F0 		tbb	[pc, r3]
 4118              	.L757:
 4119 0012 56       		.byte	(.L756-.L757)/2
 4120 0013 41       		.byte	(.L758-.L757)/2
 4121 0014 56       		.byte	(.L756-.L757)/2
 4122 0015 2D       		.byte	(.L759-.L757)/2
 4123              		.align	1
 4124              	.L826:
 4125 0016 90F8E200 		ldrb	r0, [r0, #226]	@ zero_extendqisi2
 4126 001a FFF7FEFF 		bl	digitalRead
 4127 001e 0028     		cmp	r0, #0
 4128 0020 40F0EC80 		bne	.L805
 4129              	.L796:
 4130 0024 0020     		movs	r0, #0
 4131 0026 0646     		mov	r6, r0
 4132              	.L797:
 4133 0028 D4F89822 		ldr	r2, [r4, #664]
 4134 002c D4F89C12 		ldr	r1, [r4, #668]
 4135 0030 04EB4203 		add	r3, r4, r2, lsl #1
 4136 0034 B3F88852 		ldrh	r5, [r3, #648]
 4137 0038 0132     		adds	r2, r2, #1
 4138 003a 491B     		subs	r1, r1, r5
 4139 003c 0844     		add	r0, r0, r1
 4140 003e 082A     		cmp	r2, #8
 4141 0040 C4F89C02 		str	r0, [r4, #668]
 4142 0044 A3F88862 		strh	r6, [r3, #648]	@ movhi
 4143 0048 00F02B81 		beq	.L800
 4144 004c C4F89822 		str	r2, [r4, #664]
 4145              	.L755:
 4146 0050 D4F89030 		ldr	r3, [r4, #144]
 4147 0054 022B     		cmp	r3, #2
 4148 0056 00F0C480 		beq	.L825
 4149              	.L801:
 4150 005a 0123     		movs	r3, #1
 4151 005c 84F80837 		strb	r3, [r4, #1800]
 4152 0060 4FF0FF30 		mov	r0, #-1
 4153 0064 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 4154 0068 FFF7FEBF 		b	_Z23AnalogInStartConversionm
 4155              	.L759:
 4156 006c D0F89030 		ldr	r3, [r0, #144]
 4157 0070 052B     		cmp	r3, #5
 4158 0072 00F0BC80 		beq	.L793
 4159 0076 062B     		cmp	r3, #6
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 74


 4160 0078 00F01A81 		beq	.L794
 4161 007c 042B     		cmp	r3, #4
 4162 007e CAD0     		beq	.L826
 4163 0080 90F90707 		ldrsb	r0, [r0, #1799]
 4164 0084 FFF7FEFF 		bl	_Z19AnalogInReadChannel19AnalogChannelNumber
 4165 0088 B0F57A6F 		cmp	r0, #4000
 4166 008c 80F0B680 		bcs	.L805
 4167 0090 0646     		mov	r6, r0
 4168 0092 C9E7     		b	.L797
 4169              	.L758:
 4170 0094 D0F89030 		ldr	r3, [r0, #144]
 4171 0098 052B     		cmp	r3, #5
 4172 009a 00F0B380 		beq	.L782
 4173 009e 062B     		cmp	r3, #6
 4174 00a0 00F00E81 		beq	.L783
 4175 00a4 042B     		cmp	r3, #4
 4176 00a6 00F0E680 		beq	.L827
 4177 00aa 90F90707 		ldrsb	r0, [r0, #1799]
 4178 00ae FFF7FEFF 		bl	_Z19AnalogInReadChannel19AnalogChannelNumber
 4179 00b2 B0F57A6F 		cmp	r0, #4000
 4180 00b6 80F0E480 		bcs	.L804
 4181 00ba 0646     		mov	r6, r0
 4182 00bc A9E0     		b	.L786
 4183              	.L756:
 4184 00be D0F80C37 		ldr	r3, [r0, #1804]
 4185 00c2 DAB2     		uxtb	r2, r3
 4186 00c4 00EB8202 		add	r2, r0, r2, lsl #2
 4187 00c8 D2F8E426 		ldr	r2, [r2, #1764]
 4188 00cc 062A     		cmp	r2, #6
 4189 00ce 69D9     		bls	.L828
 4190              	.L760:
 4191 00d0 0121     		movs	r1, #1
 4192 00d2 9940     		lsls	r1, r1, r3
 4193 00d4 D4F83C26 		ldr	r2, [r4, #1596]
 4194 00d8 1142     		tst	r1, r2
 4195 00da 45D1     		bne	.L829
 4196              	.L802:
 4197 00dc 0133     		adds	r3, r3, #1
 4198 00de 072B     		cmp	r3, #7
 4199 00e0 08BF     		it	eq
 4200 00e2 0023     		moveq	r3, #0
 4201 00e4 C4F80C37 		str	r3, [r4, #1804]
 4202 00e8 D4F89030 		ldr	r3, [r4, #144]
 4203 00ec 022B     		cmp	r3, #2
 4204 00ee 30D0     		beq	.L767
 4205 00f0 94F80827 		ldrb	r2, [r4, #1800]	@ zero_extendqisi2
 4206 00f4 012A     		cmp	r2, #1
 4207 00f6 0CBF     		ite	eq
 4208 00f8 04F51B75 		addeq	r5, r4, #620
 4209 00fc 04F52275 		addne	r5, r4, #648
 4210 0100 052B     		cmp	r3, #5
 4211 0102 00F0AE80 		beq	.L771
 4212 0106 062B     		cmp	r3, #6
 4213 0108 00F0E180 		beq	.L772
 4214 010c 042B     		cmp	r3, #4
 4215 010e 09D0     		beq	.L830
 4216 0110 94F90707 		ldrsb	r0, [r4, #1799]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 75


 4217 0114 FFF7FEFF 		bl	_Z19AnalogInReadChannel19AnalogChannelNumber
 4218 0118 B0F57A6F 		cmp	r0, #4000
 4219 011c 80F0A880 		bcs	.L803
 4220              	.L822:
 4221 0120 0746     		mov	r7, r0
 4222 0122 08E0     		b	.L775
 4223              	.L830:
 4224 0124 94F8E200 		ldrb	r0, [r4, #226]	@ zero_extendqisi2
 4225 0128 FFF7FEFF 		bl	digitalRead
 4226 012c 0028     		cmp	r0, #0
 4227 012e 40F09F80 		bne	.L803
 4228              	.L774:
 4229 0132 0020     		movs	r0, #0
 4230 0134 0746     		mov	r7, r0
 4231              	.L775:
 4232 0136 2B69     		ldr	r3, [r5, #16]
 4233 0138 6969     		ldr	r1, [r5, #20]
 4234 013a 35F81360 		ldrh	r6, [r5, r3, lsl #1]
 4235 013e 5A1C     		adds	r2, r3, #1
 4236 0140 891B     		subs	r1, r1, r6
 4237 0142 0844     		add	r0, r0, r1
 4238 0144 082A     		cmp	r2, #8
 4239 0146 6861     		str	r0, [r5, #20]
 4240 0148 25F81370 		strh	r7, [r5, r3, lsl #1]	@ movhi
 4241 014c 00F09D80 		beq	.L778
 4242 0150 2A61     		str	r2, [r5, #16]
 4243              	.L767:
 4244 0152 94F80837 		ldrb	r3, [r4, #1800]	@ zero_extendqisi2
 4245 0156 4FF0FF30 		mov	r0, #-1
 4246 015a 0133     		adds	r3, r3, #1
 4247 015c 84F80837 		strb	r3, [r4, #1800]
 4248 0160 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 4249 0164 FFF7FEBF 		b	_Z23AnalogInStartConversionm
 4250              	.L829:
 4251 0168 FFF7FEFF 		bl	millis
 4252 016c 644B     		ldr	r3, .L833
 4253 016e 0546     		mov	r5, r0
 4254 0170 D4F80C17 		ldr	r1, [r4, #1804]
 4255 0174 D868     		ldr	r0, [r3, #12]
 4256 0176 FFF7FEFF 		bl	_ZNK4Heat17GetLastSampleTimeEj
 4257 017a 41F28833 		movw	r3, #5000
 4258 017e 281A     		subs	r0, r5, r0
 4259 0180 9842     		cmp	r0, r3
 4260 0182 40F2AC80 		bls	.L831
 4261 0186 0022     		movs	r2, #0
 4262 0188 2046     		mov	r0, r4
 4263 018a D4F80C17 		ldr	r1, [r4, #1804]
 4264 018e FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjf
 4265 0192 D4F8C020 		ldr	r2, [r4, #192]
 4266 0196 D4F80C37 		ldr	r3, [r4, #1804]
 4267 019a 42F00102 		orr	r2, r2, #1
 4268 019e C4F8C020 		str	r2, [r4, #192]
 4269 01a2 9BE7     		b	.L802
 4270              	.L828:
 4271 01a4 4C25     		movs	r5, #76
 4272 01a6 00EB8302 		add	r2, r0, r3, lsl #2
 4273 01aa 05FB0303 		mla	r3, r5, r3, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 76


 4274 01ae D2F8E426 		ldr	r2, [r2, #1764]
 4275 01b2 03F52975 		add	r5, r3, #676
 4276 01b6 8318     		adds	r3, r0, r2
 4277 01b8 93F90007 		ldrsb	r0, [r3, #1792]
 4278 01bc FFF7FEFF 		bl	_Z19AnalogInReadChannel19AnalogChannelNumber
 4279 01c0 2B6C     		ldr	r3, [r5, #64]
 4280 01c2 696C     		ldr	r1, [r5, #68]
 4281 01c4 35F81360 		ldrh	r6, [r5, r3, lsl #1]
 4282 01c8 5A1C     		adds	r2, r3, #1
 4283 01ca 891B     		subs	r1, r1, r6
 4284 01cc 0144     		add	r1, r1, r0
 4285 01ce 202A     		cmp	r2, #32
 4286 01d0 6964     		str	r1, [r5, #68]
 4287 01d2 25F81300 		strh	r0, [r5, r3, lsl #1]	@ movhi
 4288 01d6 2A64     		str	r2, [r5, #64]
 4289 01d8 00F08A80 		beq	.L761
 4290 01dc D4F80C37 		ldr	r3, [r4, #1804]
 4291 01e0 76E7     		b	.L760
 4292              	.L825:
 4293 01e2 94F86902 		ldrb	r0, [r4, #617]	@ zero_extendqisi2
 4294 01e6 0121     		movs	r1, #1
 4295 01e8 FFF7FEFF 		bl	digitalWrite
 4296 01ec 35E7     		b	.L801
 4297              	.L793:
 4298 01ee 90F86802 		ldrb	r0, [r0, #616]	@ zero_extendqisi2
 4299 01f2 FFF7FEFF 		bl	digitalRead
 4300 01f6 0028     		cmp	r0, #0
 4301 01f8 3FF414AF 		beq	.L796
 4302              	.L805:
 4303 01fc 4FF47A60 		mov	r0, #4000
 4304 0200 0646     		mov	r6, r0
 4305 0202 11E7     		b	.L797
 4306              	.L782:
 4307 0204 90F86802 		ldrb	r0, [r0, #616]	@ zero_extendqisi2
 4308 0208 FFF7FEFF 		bl	digitalRead
 4309 020c C8BB     		cbnz	r0, .L804
 4310              	.L785:
 4311 020e 0020     		movs	r0, #0
 4312 0210 0646     		mov	r6, r0
 4313              	.L786:
 4314 0212 D4F87C22 		ldr	r2, [r4, #636]
 4315 0216 D4F88012 		ldr	r1, [r4, #640]
 4316 021a 04EB4203 		add	r3, r4, r2, lsl #1
 4317 021e B3F86C52 		ldrh	r5, [r3, #620]
 4318 0222 0132     		adds	r2, r2, #1
 4319 0224 491B     		subs	r1, r1, r5
 4320 0226 0844     		add	r0, r0, r1
 4321 0228 082A     		cmp	r2, #8
 4322 022a C4F88002 		str	r0, [r4, #640]
 4323 022e A3F86C62 		strh	r6, [r3, #620]	@ movhi
 4324 0232 2FD0     		beq	.L789
 4325 0234 C4F87C22 		str	r2, [r4, #636]
 4326              	.L790:
 4327 0238 D4F89030 		ldr	r3, [r4, #144]
 4328 023c 022B     		cmp	r3, #2
 4329 023e 51D0     		beq	.L832
 4330              	.L791:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 77


 4331 0240 94F91C07 		ldrsb	r0, [r4, #1820]
 4332 0244 FFF7FEFF 		bl	_Z19AnalogInReadChannel19AnalogChannelNumber
 4333 0248 94F80837 		ldrb	r3, [r4, #1800]	@ zero_extendqisi2
 4334 024c A4F81E07 		strh	r0, [r4, #1822]	@ movhi
 4335 0250 0133     		adds	r3, r3, #1
 4336 0252 84F80837 		strb	r3, [r4, #1800]
 4337 0256 4FF0FF30 		mov	r0, #-1
 4338 025a BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 4339 025e FFF7FEBF 		b	_Z23AnalogInStartConversionm
 4340              	.L771:
 4341 0262 94F86802 		ldrb	r0, [r4, #616]	@ zero_extendqisi2
 4342 0266 FFF7FEFF 		bl	digitalRead
 4343 026a 0028     		cmp	r0, #0
 4344 026c 3FF461AF 		beq	.L774
 4345              	.L803:
 4346 0270 4FF47A60 		mov	r0, #4000
 4347 0274 54E7     		b	.L822
 4348              	.L827:
 4349 0276 90F8E200 		ldrb	r0, [r0, #226]	@ zero_extendqisi2
 4350 027a FFF7FEFF 		bl	digitalRead
 4351 027e 0028     		cmp	r0, #0
 4352 0280 C5D0     		beq	.L785
 4353              	.L804:
 4354 0282 4FF47A60 		mov	r0, #4000
 4355 0286 0646     		mov	r6, r0
 4356 0288 C3E7     		b	.L786
 4357              	.L778:
 4358 028a 0022     		movs	r2, #0
 4359 028c 0123     		movs	r3, #1
 4360 028e 2A61     		str	r2, [r5, #16]
 4361 0290 2B76     		strb	r3, [r5, #24]
 4362 0292 5EE7     		b	.L767
 4363              	.L789:
 4364 0294 0022     		movs	r2, #0
 4365 0296 0123     		movs	r3, #1
 4366 0298 C4F87C22 		str	r2, [r4, #636]
 4367 029c 84F88432 		strb	r3, [r4, #644]
 4368 02a0 CAE7     		b	.L790
 4369              	.L800:
 4370 02a2 0022     		movs	r2, #0
 4371 02a4 0123     		movs	r3, #1
 4372 02a6 C4F89822 		str	r2, [r4, #664]
 4373 02aa 84F8A032 		strb	r3, [r4, #672]
 4374 02ae CFE6     		b	.L755
 4375              	.L794:
 4376 02b0 90F8E300 		ldrb	r0, [r0, #227]	@ zero_extendqisi2
 4377 02b4 FFF7FEFF 		bl	digitalRead
 4378 02b8 0028     		cmp	r0, #0
 4379 02ba 3FF4B3AE 		beq	.L796
 4380 02be 9DE7     		b	.L805
 4381              	.L783:
 4382 02c0 90F8E300 		ldrb	r0, [r0, #227]	@ zero_extendqisi2
 4383 02c4 FFF7FEFF 		bl	digitalRead
 4384 02c8 0028     		cmp	r0, #0
 4385 02ca A0D0     		beq	.L785
 4386 02cc D9E7     		b	.L804
 4387              	.L772:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 78


 4388 02ce 94F8E300 		ldrb	r0, [r4, #227]	@ zero_extendqisi2
 4389 02d2 FFF7FEFF 		bl	digitalRead
 4390 02d6 0028     		cmp	r0, #0
 4391 02d8 3FF42BAF 		beq	.L774
 4392 02dc C8E7     		b	.L803
 4393              	.L831:
 4394 02de D4F80C37 		ldr	r3, [r4, #1804]
 4395 02e2 FBE6     		b	.L802
 4396              	.L832:
 4397 02e4 94F86902 		ldrb	r0, [r4, #617]	@ zero_extendqisi2
 4398 02e8 0021     		movs	r1, #0
 4399 02ea FFF7FEFF 		bl	digitalWrite
 4400 02ee A7E7     		b	.L791
 4401              	.L761:
 4402 02f0 0021     		movs	r1, #0
 4403 02f2 0122     		movs	r2, #1
 4404 02f4 D4F80C37 		ldr	r3, [r4, #1804]
 4405 02f8 2964     		str	r1, [r5, #64]
 4406 02fa 85F84820 		strb	r2, [r5, #72]
 4407 02fe E7E6     		b	.L760
 4408              	.L834:
 4409              		.align	2
 4410              	.L833:
 4411 0300 00000000 		.word	reprap
 4412              		.size	_ZN8Platform4TickEv, .-_ZN8Platform4TickEv
 4413              		.section	.text._ZN8Platform4InitEv,"ax",%progbits
 4414              		.align	2
 4415              		.global	_ZN8Platform4InitEv
 4416              		.thumb
 4417              		.thumb_func
 4418              		.type	_ZN8Platform4InitEv, %function
 4419              	_ZN8Platform4InitEv:
 4420              		@ args = 0, pretend = 0, frame = 0
 4421              		@ frame_needed = 0, uses_anonymous_args = 0
 4422 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 4423 0004 0022     		movs	r2, #0
 4424 0006 0546     		mov	r5, r0
 4425 0008 83B0     		sub	sp, sp, #12
 4426 000a 0321     		movs	r1, #3
 4427 000c 0C20     		movs	r0, #12
 4428 000e FFF7FEFF 		bl	pinModeDuet
 4429 0012 2846     		mov	r0, r5
 4430 0014 0021     		movs	r1, #0
 4431 0016 FFF7FEFF 		bl	_ZN8Platform12SetBoardTypeE9BoardType
 4432 001a 0024     		movs	r4, #0
 4433 001c 4FF46142 		mov	r2, #57600
 4434 0020 0123     		movs	r3, #1
 4435 0022 4FF4E131 		mov	r1, #115200
 4436 0026 C5F89026 		str	r2, [r5, #1680]
 4437 002a 85F89936 		strb	r3, [r5, #1689]
 4438 002e C5F88C16 		str	r1, [r5, #1676]
 4439 0032 D748     		ldr	r0, .L866
 4440 0034 C5F82C47 		str	r4, [r5, #1836]
 4441 0038 85F89846 		strb	r4, [r5, #1688]
 4442 003c 85F8A846 		strb	r4, [r5, #1704]
 4443 0040 C5F8B046 		str	r4, [r5, #1712]
 4444 0044 FFF7FEFF 		bl	_ZN9SerialCDC5beginEm
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 79


 4445 0048 D5F89016 		ldr	r1, [r5, #1680]
 4446 004c D148     		ldr	r0, .L866+4
 4447 004e FFF7FEFF 		bl	_ZN9UARTClass5beginEm
 4448 0052 D5F89416 		ldr	r1, [r5, #1684]
 4449 0056 D048     		ldr	r0, .L866+8
 4450 0058 FFF7FEFF 		bl	_ZN10USARTClass5beginEm
 4451 005c CF4A     		ldr	r2, .L866+12
 4452 005e D04B     		ldr	r3, .L866+16
 4453 0060 1068     		ldr	r0, [r2]	@ unaligned
 4454 0062 D04A     		ldr	r2, .L866+20
 4455 0064 C5F89800 		str	r0, [r5, #152]	@ unaligned
 4456 0068 1868     		ldr	r0, [r3]	@ unaligned
 4457 006a CF4B     		ldr	r3, .L866+24
 4458 006c C5F89C00 		str	r0, [r5, #156]	@ unaligned
 4459 0070 1068     		ldr	r0, [r2]	@ unaligned
 4460 0072 9988     		ldrh	r1, [r3, #4]	@ unaligned
 4461 0074 C5F8A000 		str	r0, [r5, #160]	@ unaligned
 4462 0078 1868     		ldr	r0, [r3]	@ unaligned
 4463 007a 0222     		movs	r2, #2
 4464 007c 0523     		movs	r3, #5
 4465 007e C5F8A400 		str	r0, [r5, #164]	@ unaligned
 4466 0082 A5F8A810 		strh	r1, [r5, #168]	@ unaligned
 4467 0086 85F8AA20 		strb	r2, [r5, #170]
 4468 008a C5F89430 		str	r3, [r5, #148]
 4469 008e 2846     		mov	r0, r5
 4470 0090 C5F89040 		str	r4, [r5, #144]
 4471 0094 FFF7FEFF 		bl	_ZN8Platform17SetZProbeDefaultsEv
 4472 0098 0023     		movs	r3, #0
 4473 009a C5F8B840 		str	r4, [r5, #184]
 4474 009e C5F8B430 		str	r3, [r5, #180]	@ float
 4475 00a2 2846     		mov	r0, r5
 4476 00a4 FFF7FEFF 		bl	_ZN8Platform4TimeEv
 4477 00a8 C5F8AC00 		str	r0, [r5, #172]	@ float
 4478 00ac C5F8B000 		str	r0, [r5, #176]	@ float
 4479 00b0 D5F8B406 		ldr	r0, [r5, #1716]
 4480 00b4 FFF7FEFF 		bl	_ZN11MassStorage4InitEv
 4481              	.L837:
 4482 00b8 2B19     		adds	r3, r5, r4
 4483 00ba D3F8B806 		ldr	r0, [r3, #1720]
 4484 00be 0434     		adds	r4, r4, #4
 4485 00c0 FFF7FEFF 		bl	_ZN9FileStore4InitEv
 4486 00c4 282C     		cmp	r4, #40
 4487 00c6 F7D1     		bne	.L837
 4488 00c8 0123     		movs	r3, #1
 4489 00ca 85F8E036 		strb	r3, [r5, #1760]
 4490 00ce 05F51270 		add	r0, r5, #584
 4491 00d2 FFF7FEFF 		bl	_ZN7MCP44615beginEv
 4492 00d6 05F24B20 		addw	r0, r5, #587
 4493 00da 2E21     		movs	r1, #46
 4494 00dc FFF7FEFF 		bl	_ZN7MCP446117setMCP4461AddressEh
 4495 00e0 B24B     		ldr	r3, .L866+28
 4496 00e2 B34F     		ldr	r7, .L866+32
 4497 00e4 03CB     		ldmia	r3!, {r0, r1}
 4498 00e6 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 4499 00e8 C5F8DF00 		str	r0, [r5, #223]	@ unaligned
 4500 00ec 07F1200E 		add	lr, r7, #32
 4501 00f0 85F8E720 		strb	r2, [r5, #231]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 80


 4502 00f4 C5F8E310 		str	r1, [r5, #227]	@ unaligned
 4503 00f8 05F1E806 		add	r6, r5, #232
 4504              	.L838:
 4505 00fc 3C46     		mov	r4, r7
 4506 00fe 0FCC     		ldmia	r4!, {r0, r1, r2, r3}
 4507 0100 7445     		cmp	r4, lr
 4508 0102 3060     		str	r0, [r6]	@ unaligned
 4509 0104 7160     		str	r1, [r6, #4]	@ unaligned
 4510 0106 B260     		str	r2, [r6, #8]	@ unaligned
 4511 0108 F360     		str	r3, [r6, #12]	@ unaligned
 4512 010a 2746     		mov	r7, r4
 4513 010c 06F11006 		add	r6, r6, #16
 4514 0110 F4D1     		bne	.L838
 4515 0112 2068     		ldr	r0, [r4]	@ unaligned
 4516 0114 A74F     		ldr	r7, .L866+36
 4517 0116 3060     		str	r0, [r6]	@ unaligned
 4518 0118 07F1200E 		add	lr, r7, #32
 4519 011c 05F58674 		add	r4, r5, #268
 4520              	.L839:
 4521 0120 3E46     		mov	r6, r7
 4522 0122 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 4523 0124 7645     		cmp	r6, lr
 4524 0126 2060     		str	r0, [r4]	@ unaligned
 4525 0128 6160     		str	r1, [r4, #4]	@ unaligned
 4526 012a A260     		str	r2, [r4, #8]	@ unaligned
 4527 012c E360     		str	r3, [r4, #12]	@ unaligned
 4528 012e 3746     		mov	r7, r6
 4529 0130 04F11004 		add	r4, r4, #16
 4530 0134 F4D1     		bne	.L839
 4531 0136 3068     		ldr	r0, [r6]	@ unaligned
 4532 0138 9F4F     		ldr	r7, .L866+40
 4533 013a 2060     		str	r0, [r4]	@ unaligned
 4534 013c 07F1200E 		add	lr, r7, #32
 4535 0140 05F59C74 		add	r4, r5, #312
 4536              	.L840:
 4537 0144 3E46     		mov	r6, r7
 4538 0146 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 4539 0148 7645     		cmp	r6, lr
 4540 014a 2060     		str	r0, [r4]	@ unaligned
 4541 014c 6160     		str	r1, [r4, #4]	@ unaligned
 4542 014e A260     		str	r2, [r4, #8]	@ unaligned
 4543 0150 E360     		str	r3, [r4, #12]	@ unaligned
 4544 0152 3746     		mov	r7, r6
 4545 0154 04F11004 		add	r4, r4, #16
 4546 0158 F4D1     		bne	.L840
 4547 015a 3068     		ldr	r0, [r6]	@ unaligned
 4548 015c 974F     		ldr	r7, .L866+44
 4549 015e 2060     		str	r0, [r4]	@ unaligned
 4550 0160 07F1200E 		add	lr, r7, #32
 4551 0164 05F5AE74 		add	r4, r5, #348
 4552              	.L841:
 4553 0168 3E46     		mov	r6, r7
 4554 016a 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 4555 016c 7645     		cmp	r6, lr
 4556 016e 2060     		str	r0, [r4]	@ unaligned
 4557 0170 6160     		str	r1, [r4, #4]	@ unaligned
 4558 0172 A260     		str	r2, [r4, #8]	@ unaligned
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 81


 4559 0174 E360     		str	r3, [r4, #12]	@ unaligned
 4560 0176 3746     		mov	r7, r6
 4561 0178 04F11004 		add	r4, r4, #16
 4562 017c F4D1     		bne	.L841
 4563 017e DFF87CC2 		ldr	ip, .L866+108
 4564 0182 3068     		ldr	r0, [r6]	@ unaligned
 4565 0184 DFF878E2 		ldr	lr, .L866+112
 4566 0188 8D4E     		ldr	r6, .L866+48
 4567 018a 8E4F     		ldr	r7, .L866+52
 4568 018c 8E4B     		ldr	r3, .L866+56
 4569 018e DFF87482 		ldr	r8, .L866+116
 4570 0192 0A22     		movs	r2, #10
 4571 0194 2060     		str	r0, [r4]	@ unaligned
 4572 0196 C5F85CC2 		str	ip, [r5, #604]	@ float
 4573 019a 03CB     		ldmia	r3!, {r0, r1}
 4574 019c C5F860E2 		str	lr, [r5, #608]	@ float
 4575 01a0 C5F85212 		str	r1, [r5, #594]	@ unaligned
 4576 01a4 85F86822 		strb	r2, [r5, #616]
 4577 01a8 C5F83461 		str	r6, [r5, #308]	@ float
 4578 01ac C5F84E02 		str	r0, [r5, #590]	@ unaligned
 4579 01b0 C5F83061 		str	r6, [r5, #304]	@ float
 4580 01b4 1046     		mov	r0, r2
 4581 01b6 C5F86472 		str	r7, [r5, #612]	@ float
 4582 01ba C5F85882 		str	r8, [r5, #600]	@ float
 4583 01be FFF7FEFF 		bl	_Z15PinToAdcChannelm
 4584 01c2 85F80707 		strb	r0, [r5, #1799]
 4585 01c6 2846     		mov	r0, r5
 4586 01c8 FFF7FEFF 		bl	_ZN8Platform10InitZProbeEv
 4587 01cc 7F4E     		ldr	r6, .L866+60
 4588 01ce DFF838E2 		ldr	lr, .L866+120
 4589 01d2 7F4C     		ldr	r4, .L866+64
 4590 01d4 05F59C6C 		add	ip, r5, #1248
 4591 01d8 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 4592 01da C5F8C804 		str	r0, [r5, #1224]	@ unaligned
 4593 01de C5F8CC14 		str	r1, [r5, #1228]	@ unaligned
 4594 01e2 C5F8D024 		str	r2, [r5, #1232]	@ unaligned
 4595 01e6 C5F8D434 		str	r3, [r5, #1236]	@ unaligned
 4596 01ea 03CE     		ldmia	r6!, {r0, r1}
 4597 01ec C5F8D804 		str	r0, [r5, #1240]	@ unaligned
 4598 01f0 C5F8DC14 		str	r1, [r5, #1244]	@ unaligned
 4599 01f4 0FCC     		ldmia	r4!, {r0, r1, r2, r3}
 4600 01f6 C5F8E004 		str	r0, [r5, #1248]	@ unaligned
 4601 01fa CCF80410 		str	r1, [ip, #4]	@ unaligned
 4602 01fe CCF80820 		str	r2, [ip, #8]	@ unaligned
 4603 0202 03CC     		ldmia	r4!, {r0, r1}
 4604 0204 CCF80C30 		str	r3, [ip, #12]	@ unaligned
 4605 0208 CCF81000 		str	r0, [ip, #16]	@ unaligned
 4606 020c CCF81410 		str	r1, [ip, #20]	@ unaligned
 4607 0210 0D20     		movs	r0, #13
 4608 0212 0121     		movs	r1, #1
 4609 0214 C5F844E2 		str	lr, [r5, #580]	@ float
 4610 0218 FFF7FEFF 		bl	setPullup
 4611 021c 6D4E     		ldr	r6, .L866+68
 4612 021e 6E4C     		ldr	r4, .L866+72
 4613 0220 6E49     		ldr	r1, .L866+76
 4614 0222 6F48     		ldr	r0, .L866+80
 4615 0224 4FF0FF32 		mov	r2, #-1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 82


 4616 0228 DFF8E0B1 		ldr	fp, .L866+124
 4617 022c C1F8A420 		str	r2, [r1, #164]
 4618 0230 A946     		mov	r9, r5
 4619 0232 C6F8A420 		str	r2, [r6, #164]
 4620 0236 2F46     		mov	r7, r5
 4621 0238 C4F8A420 		str	r2, [r4, #164]
 4622 023c 2E46     		mov	r6, r5
 4623 023e C0F8A420 		str	r2, [r0, #164]
 4624 0242 0024     		movs	r4, #0
 4625              	.L848:
 4626 0244 0021     		movs	r1, #0
 4627 0246 0123     		movs	r3, #1
 4628 0248 052C     		cmp	r4, #5
 4629 024a E2B2     		uxtb	r2, r4
 4630 024c 87F8D610 		strb	r1, [r7, #214]
 4631 0250 87F8CD30 		strb	r3, [r7, #205]
 4632 0254 0CD8     		bhi	.L843
 4633 0256 601E     		subs	r0, r4, #1
 4634 0258 4142     		rsbs	r1, r0, #0
 4635 025a 4141     		adcs	r1, r1, r0
 4636 025c 022C     		cmp	r4, #2
 4637 025e C9F8E031 		str	r3, [r9, #480]
 4638 0262 89F8E421 		strb	r2, [r9, #484]
 4639 0266 C6F8F814 		str	r1, [r6, #1272]
 4640 026a 87F81035 		strb	r3, [r7, #1296]
 4641 026e 04D9     		bls	.L844
 4642              	.L843:
 4643 0270 87F80D22 		strb	r2, [r7, #525]
 4644 0274 0022     		movs	r2, #0
 4645 0276 C6F87421 		str	r2, [r6, #372]	@ float
 4646              	.L844:
 4647 027a 5A4B     		ldr	r3, .L866+84
 4648 027c 574A     		ldr	r2, .L866+76
 4649 027e 185D     		ldrb	r0, [r3, r4]	@ zero_extendqisi2
 4650 0280 0321     		movs	r1, #3
 4651 0282 C0EBC008 		rsb	r8, r0, r0, lsl #3
 4652 0286 5BF82830 		ldr	r3, [fp, r8, lsl #2]
 4653 028a 0BEB880A 		add	r10, fp, r8, lsl #2
 4654 028e 9342     		cmp	r3, r2
 4655 0290 DAF80430 		ldr	r3, [r10, #4]
 4656 0294 4FF00002 		mov	r2, #0
 4657 0298 08BF     		it	eq
 4658 029a 5B00     		lsleq	r3, r3, #1
 4659 029c C6F81832 		str	r3, [r6, #536]
 4660 02a0 FFF7FEFF 		bl	pinModeDuet
 4661 02a4 504B     		ldr	r3, .L866+88
 4662 02a6 0321     		movs	r1, #3
 4663 02a8 185D     		ldrb	r0, [r3, r4]	@ zero_extendqisi2
 4664 02aa 0022     		movs	r2, #0
 4665 02ac FFF7FEFF 		bl	pinModeDuet
 4666 02b0 4E4A     		ldr	r2, .L866+92
 4667 02b2 0421     		movs	r1, #4
 4668 02b4 105D     		ldrb	r0, [r2, r4]	@ zero_extendqisi2
 4669 02b6 0022     		movs	r2, #0
 4670 02b8 FFF7FEFF 		bl	pinModeDuet
 4671 02bc 5BF82820 		ldr	r2, [fp, r8, lsl #2]
 4672 02c0 DAF80410 		ldr	r1, [r10, #4]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 83


 4673 02c4 2B19     		adds	r3, r5, r4
 4674 02c6 0134     		adds	r4, r4, #1
 4675 02c8 C2F8A010 		str	r1, [r2, #160]
 4676 02cc 4FF00008 		mov	r8, #0
 4677 02d0 0021     		movs	r1, #0
 4678 02d2 4FF07E52 		mov	r2, #1065353216
 4679 02d6 092C     		cmp	r4, #9
 4680 02d8 C6F89811 		str	r1, [r6, #408]	@ float
 4681 02dc C6F8BC21 		str	r2, [r6, #444]	@ float
 4682 02e0 07F10107 		add	r7, r7, #1
 4683 02e4 09F10809 		add	r9, r9, #8
 4684 02e8 06F10406 		add	r6, r6, #4
 4685 02ec 83F8C480 		strb	r8, [r3, #196]
 4686 02f0 A8D1     		bne	.L848
 4687 02f2 3F4A     		ldr	r2, .L866+96
 4688 02f4 3F4B     		ldr	r3, .L866+100
 4689 02f6 1068     		ldr	r0, [r2]	@ unaligned
 4690 02f8 95F8ABA0 		ldrb	r10, [r5, #171]	@ zero_extendqisi2
 4691 02fc C5F81605 		str	r0, [r5, #1302]	@ unaligned
 4692 0300 3D4C     		ldr	r4, .L866+104
 4693 0302 1868     		ldr	r0, [r3]	@ unaligned
 4694 0304 0AF1FF3A 		add	r10, r10, #-1
 4695 0308 6226     		movs	r6, #98
 4696 030a BAF1010F 		cmp	r10, #1
 4697 030e B2F804E0 		ldrh	lr, [r2, #4]	@ unaligned
 4698 0312 9779     		ldrb	r7, [r2, #6]	@ zero_extendqisi2
 4699 0314 DFF8F890 		ldr	r9, .L866+128
 4700 0318 C5F8B814 		str	r1, [r5, #1208]	@ float
 4701 031c 85F8C464 		strb	r6, [r5, #1220]
 4702 0320 9979     		ldrb	r1, [r3, #6]	@ zero_extendqisi2
 4703 0322 9E88     		ldrh	r6, [r3, #4]	@ unaligned
 4704 0324 C5F81D05 		str	r0, [r5, #1309]	@ unaligned
 4705 0328 2068     		ldr	r0, [r4]	@ unaligned
 4706 032a 8CBF     		ite	hi
 4707 032c 4FF0000A 		movhi	r10, #0
 4708 0330 4FF0010A 		movls	r10, #1
 4709 0334 0124     		movs	r4, #1
 4710 0336 4FF0140C 		mov	ip, #20
 4711 033a 4FF4FA72 		mov	r2, #500
 4712 033e C5F8C0C4 		str	ip, [r5, #1216]
 4713 0342 A5F81AE5 		strh	lr, [r5, #1306]	@ unaligned
 4714 0346 C5F84026 		str	r2, [r5, #1600]
 4715 034a C5F83C82 		str	r8, [r5, #572]
 4716 034e C5F84082 		str	r8, [r5, #576]
 4717 0352 85F8C5A4 		strb	r10, [r5, #1221]
 4718 0356 C5F8BC94 		str	r9, [r5, #1212]	@ float
 4719 035a 85F81C75 		strb	r7, [r5, #1308]
 4720 035e A5F82165 		strh	r6, [r5, #1313]	@ unaligned
 4721 0362 85F82315 		strb	r1, [r5, #1315]
 4722 0366 C5F83806 		str	r0, [r5, #1592]	@ unaligned
 4723 036a 2146     		mov	r1, r4
 4724 036c C5F83C46 		str	r4, [r5, #1596]
 4725 0370 4D20     		movs	r0, #77
 4726 0372 FFF7FEFF 		bl	setPullup
 4727 0376 2146     		mov	r1, r4
 4728 0378 5720     		movs	r0, #87
 4729 037a FFF7FEFF 		bl	setPullup
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 84


 4730 037e 2146     		mov	r1, r4
 4731 0380 1020     		movs	r0, #16
 4732 0382 FFF7FEFF 		bl	setPullup
 4733 0386 2146     		mov	r1, r4
 4734 0388 1120     		movs	r0, #17
 4735 038a FFF7FEFF 		bl	setPullup
 4736 038e 41E0     		b	.L867
 4737              	.L868:
 4738              		.align	2
 4739              	.L866:
 4740 0390 00000000 		.word	SerialUSB
 4741 0394 00000000 		.word	Serial
 4742 0398 00000000 		.word	Serial1
 4743 039c 00000000 		.word	.LANCHOR11
 4744 03a0 00000000 		.word	.LANCHOR12
 4745 03a4 00000000 		.word	.LANCHOR13
 4746 03a8 00000000 		.word	.LANCHOR14
 4747 03ac 00000000 		.word	.LANCHOR15
 4748 03b0 00000000 		.word	.LANCHOR16
 4749 03b4 00000000 		.word	.LANCHOR17
 4750 03b8 00000000 		.word	.LANCHOR18
 4751 03bc 00000000 		.word	.LANCHOR19
 4752 03c0 00401C46 		.word	1176256512
 4753 03c4 CDCCCCBC 		.word	-1127428915
 4754 03c8 00000000 		.word	.LANCHOR20
 4755 03cc 00000000 		.word	.LANCHOR21
 4756 03d0 00000000 		.word	.LANCHOR22
 4757 03d4 00100E40 		.word	1074663424
 4758 03d8 00120E40 		.word	1074663936
 4759 03dc 000E0E40 		.word	1074662912
 4760 03e0 00140E40 		.word	1074664448
 4761 03e4 00000000 		.word	.LANCHOR6
 4762 03e8 00000000 		.word	.LANCHOR4
 4763 03ec 00000000 		.word	.LANCHOR5
 4764 03f0 00000000 		.word	.LANCHOR23
 4765 03f4 00000000 		.word	.LANCHOR24
 4766 03f8 00000000 		.word	.LANCHOR3
 4767 03fc B113CB3F 		.word	1070273457
 4768 0400 AE470140 		.word	1073825710
 4769 0404 CDCCCC3D 		.word	1036831949
 4770 0408 9A99993E 		.word	1050253722
 4771 040c 00000000 		.word	g_APinDescription
 4772 0410 0000FA43 		.word	1140457472
 4773              	.L867:
 4774 0414 DFF82891 		ldr	r9, .L869+20
 4775 0418 DFF828A1 		ldr	r10, .L869+24
 4776 041c 4746     		mov	r7, r8
 4777 041e 05F52974 		add	r4, r5, #676
 4778 0422 05F22458 		addw	r8, r5, #1316
 4779 0426 2E46     		mov	r6, r5
 4780              	.L855:
 4781 0428 96F81D05 		ldrb	r0, [r6, #1309]	@ zero_extendqisi2
 4782 042c FF28     		cmp	r0, #255
 4783 042e 03D0     		beq	.L849
 4784 0430 0421     		movs	r1, #4
 4785 0432 0022     		movs	r2, #0
 4786 0434 FFF7FEFF 		bl	pinModeDuet
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 85


 4787              	.L849:
 4788 0438 96F81605 		ldrb	r0, [r6, #1302]	@ zero_extendqisi2
 4789 043c FFF7FEFF 		bl	_Z15PinToAdcChannelm
 4790 0440 0022     		movs	r2, #0
 4791 0442 8346     		mov	fp, r0
 4792 0444 0521     		movs	r1, #5
 4793 0446 96F81605 		ldrb	r0, [r6, #1302]	@ zero_extendqisi2
 4794 044a FFF7FEFF 		bl	pinModeDuet
 4795 044e 5846     		mov	r0, fp
 4796 0450 0121     		movs	r1, #1
 4797 0452 86F800B7 		strb	fp, [r6, #1792]
 4798 0456 FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 4799 045a 2846     		mov	r0, r5
 4800 045c 3946     		mov	r1, r7
 4801 045e 3A46     		mov	r2, r7
 4802 0460 FFF7FEFF 		bl	_ZN8Platform19SetThermistorNumberEjj
 4803 0464 002F     		cmp	r7, #0
 4804 0466 5ED0     		beq	.L865
 4805 0468 3049     		ldr	r1, .L869
 4806 046a 314A     		ldr	r2, .L869+4
 4807              	.L850:
 4808 046c CDF800A0 		str	r10, [sp]	@ float
 4809 0470 4046     		mov	r0, r8
 4810 0472 0023     		movs	r3, #0
 4811 0474 FFF7FEFF 		bl	_ZN10Thermistor13SetParametersEffff
 4812              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 4813 0478 EFF31080 		MRS r0, primask
 4814              	@ 0 "" 2
 4815              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 4816 047c 72B6     		cpsid i
 4817              	@ 0 "" 2
 4818              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 4819 047e BFF35F8F 		dmb
 4820              	@ 0 "" 2
 4821              		.thumb
 4822 0482 0021     		movs	r1, #0
 4823 0484 89F80010 		strb	r1, [r9]
 4824 0488 0B46     		mov	r3, r1
 4825 048a 6164     		str	r1, [r4, #68]
 4826 048c 0A46     		mov	r2, r1
 4827 048e 2164     		str	r1, [r4, #64]
 4828 0490 84F84810 		strb	r1, [r4, #72]
 4829              	.L852:
 4830 0494 24F81320 		strh	r2, [r4, r3, lsl #1]	@ movhi
 4831 0498 0133     		adds	r3, r3, #1
 4832 049a 202B     		cmp	r3, #32
 4833 049c FAD1     		bne	.L852
 4834 049e 28B9     		cbnz	r0, .L853
 4835 04a0 0123     		movs	r3, #1
 4836 04a2 89F80030 		strb	r3, [r9]
 4837              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 4838 04a6 BFF35F8F 		dmb
 4839              	@ 0 "" 2
 4840              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 4841 04aa 62B6     		cpsie i
 4842              	@ 0 "" 2
 4843              		.thumb
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 86


 4844              	.L853:
 4845 04ac 0137     		adds	r7, r7, #1
 4846 04ae 072F     		cmp	r7, #7
 4847 04b0 06F10106 		add	r6, r6, #1
 4848 04b4 04F14C04 		add	r4, r4, #76
 4849 04b8 08F11C08 		add	r8, r8, #28
 4850 04bc B4D1     		bne	.L855
 4851 04be 2846     		mov	r0, r5
 4852 04c0 FFF7FEFF 		bl	_ZN8Platform8InitFansEv
 4853 04c4 1B4B     		ldr	r3, .L869+8
 4854 04c6 4FF07C52 		mov	r2, #1056964608
 4855 04ca C5F81827 		str	r2, [r5, #1816]	@ float
 4856 04ce C5F81437 		str	r3, [r5, #1812]	@ float
 4857 04d2 FFF7FEFF 		bl	_Z24GetTemperatureAdcChannelv
 4858 04d6 0121     		movs	r1, #1
 4859 04d8 85F81C07 		strb	r0, [r5, #1820]
 4860 04dc FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 4861 04e0 0023     		movs	r3, #0
 4862 04e2 0020     		movs	r0, #0
 4863 04e4 40F6FF71 		movw	r1, #4095
 4864 04e8 5022     		movs	r2, #80
 4865 04ea C5F82807 		str	r0, [r5, #1832]	@ float
 4866 04ee A5F82037 		strh	r3, [r5, #1824]	@ movhi
 4867 04f2 A5F81E37 		strh	r3, [r5, #1822]	@ movhi
 4868 04f6 A5F82217 		strh	r1, [r5, #1826]	@ movhi
 4869 04fa A5F82427 		strh	r2, [r5, #1828]	@ movhi
 4870 04fe 4FF0FF31 		mov	r1, #-1
 4871 0502 4622     		movs	r2, #70
 4872 0504 05F23470 		addw	r0, r5, #1844
 4873 0508 FFF7FEFF 		bl	memset
 4874 050c 2846     		mov	r0, r5
 4875 050e FFF7FEFF 		bl	_ZN8Platform4TimeEv
 4876 0512 C5F8AC00 		str	r0, [r5, #172]	@ float
 4877 0516 C5F8B000 		str	r0, [r5, #176]	@ float
 4878 051a 2846     		mov	r0, r5
 4879 051c 03B0     		add	sp, sp, #12
 4880              		@ sp needed
 4881 051e BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 4882 0522 FFF7FEBF 		b	_ZN8Platform20InitialiseInterruptsEv
 4883              	.L865:
 4884 0526 0449     		ldr	r1, .L869+12
 4885 0528 044A     		ldr	r2, .L869+16
 4886 052a 9FE7     		b	.L850
 4887              	.L870:
 4888              		.align	2
 4889              	.L869:
 4890 052c 0050C347 		.word	1203982336
 4891 0530 00208945 		.word	1166614528
 4892 0534 0000E03F 		.word	1071644672
 4893 0538 00401C46 		.word	1176256512
 4894 053c 00407945 		.word	1165574144
 4895 0540 00000000 		.word	g_interrupt_enabled
 4896 0544 00007A44 		.word	1148846080
 4897              		.size	_ZN8Platform4InitEv, .-_ZN8Platform4InitEv
 4898              		.section	.text._ZN8Platform4ExitEv,"ax",%progbits
 4899              		.align	2
 4900              		.global	_ZN8Platform4ExitEv
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 87


 4901              		.thumb
 4902              		.thumb_func
 4903              		.type	_ZN8Platform4ExitEv, %function
 4904              	_ZN8Platform4ExitEv:
 4905              		@ args = 0, pretend = 0, frame = 0
 4906              		@ frame_needed = 0, uses_anonymous_args = 0
 4907 0000 70B5     		push	{r4, r5, r6, lr}
 4908 0002 0646     		mov	r6, r0
 4909 0004 0446     		mov	r4, r0
 4910 0006 0025     		movs	r5, #0
 4911 0008 01E0     		b	.L887
 4912              	.L877:
 4913 000a FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 4914              	.L887:
 4915 000e D4F8B806 		ldr	r0, [r4, #1720]
 4916 0012 90F82D30 		ldrb	r3, [r0, #45]	@ zero_extendqisi2
 4917 0016 002B     		cmp	r3, #0
 4918 0018 F7D1     		bne	.L877
 4919 001a 0135     		adds	r5, r5, #1
 4920 001c 0A2D     		cmp	r5, #10
 4921 001e 04F10404 		add	r4, r4, #4
 4922 0022 F4D1     		bne	.L887
 4923 0024 D6F8AC06 		ldr	r0, [r6, #1708]
 4924 0028 28B1     		cbz	r0, .L878
 4925              	.L879:
 4926 002a FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 4927 002e C6F8AC06 		str	r0, [r6, #1708]
 4928 0032 0028     		cmp	r0, #0
 4929 0034 F9D1     		bne	.L879
 4930              	.L878:
 4931 0036 0023     		movs	r3, #0
 4932 0038 86F8BC30 		strb	r3, [r6, #188]
 4933 003c 0548     		ldr	r0, .L888
 4934 003e FFF7FEFF 		bl	_ZN9SerialCDC3endEv
 4935 0042 0548     		ldr	r0, .L888+4
 4936 0044 FFF7FEFF 		bl	_ZN9UARTClass3endEv
 4937 0048 BDE87040 		pop	{r4, r5, r6, lr}
 4938 004c 0348     		ldr	r0, .L888+8
 4939 004e FFF7FEBF 		b	_ZN9UARTClass3endEv
 4940              	.L889:
 4941 0052 00BF     		.align	2
 4942              	.L888:
 4943 0054 00000000 		.word	SerialUSB
 4944 0058 00000000 		.word	Serial
 4945 005c 00000000 		.word	Serial1
 4946              		.size	_ZN8Platform4ExitEv, .-_ZN8Platform4ExitEv
 4947              		.section	.text._ZN8Platform12ResetChannelEj,"ax",%progbits
 4948              		.align	2
 4949              		.global	_ZN8Platform12ResetChannelEj
 4950              		.thumb
 4951              		.thumb_func
 4952              		.type	_ZN8Platform12ResetChannelEj, %function
 4953              	_ZN8Platform12ResetChannelEj:
 4954              		@ args = 0, pretend = 0, frame = 0
 4955              		@ frame_needed = 0, uses_anonymous_args = 0
 4956 0000 0129     		cmp	r1, #1
 4957 0002 10B5     		push	{r4, lr}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 88


 4958 0004 0446     		mov	r4, r0
 4959 0006 17D0     		beq	.L892
 4960 0008 0CD3     		bcc	.L893
 4961 000a 0229     		cmp	r1, #2
 4962 000c 09D1     		bne	.L896
 4963 000e 0F48     		ldr	r0, .L897
 4964 0010 FFF7FEFF 		bl	_ZN9UARTClass3endEv
 4965 0014 D4F89416 		ldr	r1, [r4, #1684]
 4966 0018 0C48     		ldr	r0, .L897
 4967 001a BDE81040 		pop	{r4, lr}
 4968 001e FFF7FEBF 		b	_ZN10USARTClass5beginEm
 4969              	.L896:
 4970 0022 10BD     		pop	{r4, pc}
 4971              	.L893:
 4972 0024 0A48     		ldr	r0, .L897+4
 4973 0026 FFF7FEFF 		bl	_ZN9SerialCDC3endEv
 4974 002a D4F88C16 		ldr	r1, [r4, #1676]
 4975 002e 0848     		ldr	r0, .L897+4
 4976 0030 BDE81040 		pop	{r4, lr}
 4977 0034 FFF7FEBF 		b	_ZN9SerialCDC5beginEm
 4978              	.L892:
 4979 0038 0648     		ldr	r0, .L897+8
 4980 003a FFF7FEFF 		bl	_ZN9UARTClass3endEv
 4981 003e D4F89016 		ldr	r1, [r4, #1680]
 4982 0042 0448     		ldr	r0, .L897+8
 4983 0044 BDE81040 		pop	{r4, lr}
 4984 0048 FFF7FEBF 		b	_ZN9UARTClass5beginEm
 4985              	.L898:
 4986              		.align	2
 4987              	.L897:
 4988 004c 00000000 		.word	Serial1
 4989 0050 00000000 		.word	SerialUSB
 4990 0054 00000000 		.word	Serial
 4991              		.size	_ZN8Platform12ResetChannelEj, .-_ZN8Platform12ResetChannelEj
 4992              		.section	.text._ZN8Platform11SetBaudRateEjm,"ax",%progbits
 4993              		.align	2
 4994              		.global	_ZN8Platform11SetBaudRateEjm
 4995              		.thumb
 4996              		.thumb_func
 4997              		.type	_ZN8Platform11SetBaudRateEjm, %function
 4998              	_ZN8Platform11SetBaudRateEjm:
 4999              		@ args = 0, pretend = 0, frame = 0
 5000              		@ frame_needed = 0, uses_anonymous_args = 0
 5001              		@ link register save eliminated.
 5002 0000 0229     		cmp	r1, #2
 5003 0002 10B4     		push	{r4}
 5004 0004 02D9     		bls	.L901
 5005 0006 5DF8044B 		ldr	r4, [sp], #4
 5006 000a 7047     		bx	lr
 5007              	.L901:
 5008 000c 00EB8103 		add	r3, r0, r1, lsl #2
 5009 0010 C3F88C26 		str	r2, [r3, #1676]
 5010 0014 5DF8044B 		ldr	r4, [sp], #4
 5011 0018 FFF7FEBF 		b	_ZN8Platform12ResetChannelEj
 5012              		.size	_ZN8Platform11SetBaudRateEjm, .-_ZN8Platform11SetBaudRateEjm
 5013              		.section	.text._ZN8Platform18SetCommsPropertiesEjm,"ax",%progbits
 5014              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 89


 5015              		.global	_ZN8Platform18SetCommsPropertiesEjm
 5016              		.thumb
 5017              		.thumb_func
 5018              		.type	_ZN8Platform18SetCommsPropertiesEjm, %function
 5019              	_ZN8Platform18SetCommsPropertiesEjm:
 5020              		@ args = 0, pretend = 0, frame = 0
 5021              		@ frame_needed = 0, uses_anonymous_args = 0
 5022              		@ link register save eliminated.
 5023 0000 0229     		cmp	r1, #2
 5024 0002 10B4     		push	{r4}
 5025 0004 0B46     		mov	r3, r1
 5026 0006 02D9     		bls	.L904
 5027 0008 5DF8044B 		ldr	r4, [sp], #4
 5028 000c 7047     		bx	lr
 5029              	.L904:
 5030 000e 0344     		add	r3, r3, r0
 5031 0010 83F89826 		strb	r2, [r3, #1688]
 5032 0014 5DF8044B 		ldr	r4, [sp], #4
 5033 0018 FFF7FEBF 		b	_ZN8Platform12ResetChannelEj
 5034              		.size	_ZN8Platform18SetCommsPropertiesEjm, .-_ZN8Platform18SetCommsPropertiesEjm
 5035              		.section	.text._ZN8Platform13FlushMessagesEv,"ax",%progbits
 5036              		.align	2
 5037              		.global	_ZN8Platform13FlushMessagesEv
 5038              		.thumb
 5039              		.thumb_func
 5040              		.type	_ZN8Platform13FlushMessagesEv, %function
 5041              	_ZN8Platform13FlushMessagesEv:
 5042              		@ args = 0, pretend = 0, frame = 0
 5043              		@ frame_needed = 0, uses_anonymous_args = 0
 5044 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 5045 0004 0446     		mov	r4, r0
 5046 0006 D0F89C06 		ldr	r0, [r0, #1692]
 5047 000a FFF7FEFF 		bl	_ZNK11OutputStack12GetFirstItemEv
 5048 000e 0546     		mov	r5, r0
 5049 0010 90B1     		cbz	r0, .L907
 5050 0012 5E4F     		ldr	r7, .L933
 5051 0014 3846     		mov	r0, r7
 5052 0016 FFF7FEFF 		bl	_ZNK9UARTClass8canWriteEv
 5053 001a D5F88C30 		ldr	r3, [r5, #140]
 5054 001e D5F89060 		ldr	r6, [r5, #144]
 5055 0022 C6EB0308 		rsb	r8, r6, r3
 5056 0026 4045     		cmp	r0, r8
 5057 0028 38BF     		it	cc
 5058 002a 8046     		movcc	r8, r0
 5059 002c B8F1000F 		cmp	r8, #0
 5060 0030 73D1     		bne	.L927
 5061              	.L908:
 5062 0032 9E42     		cmp	r6, r3
 5063 0034 00F09880 		beq	.L928
 5064              	.L907:
 5065 0038 D4F8A006 		ldr	r0, [r4, #1696]
 5066 003c FFF7FEFF 		bl	_ZNK11OutputStack12GetFirstItemEv
 5067 0040 0546     		mov	r5, r0
 5068 0042 90B1     		cbz	r0, .L911
 5069 0044 524F     		ldr	r7, .L933+4
 5070 0046 3846     		mov	r0, r7
 5071 0048 FFF7FEFF 		bl	_ZNK9UARTClass8canWriteEv
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 90


 5072 004c D5F88C30 		ldr	r3, [r5, #140]
 5073 0050 D5F89060 		ldr	r6, [r5, #144]
 5074 0054 C6EB0308 		rsb	r8, r6, r3
 5075 0058 4045     		cmp	r0, r8
 5076 005a 38BF     		it	cc
 5077 005c 8046     		movcc	r8, r0
 5078 005e B8F1000F 		cmp	r8, #0
 5079 0062 4BD1     		bne	.L929
 5080              	.L912:
 5081 0064 9E42     		cmp	r6, r3
 5082 0066 00F08880 		beq	.L930
 5083              	.L911:
 5084 006a D4F8A406 		ldr	r0, [r4, #1700]
 5085 006e FFF7FEFF 		bl	_ZNK11OutputStack12GetFirstItemEv
 5086 0072 0546     		mov	r5, r0
 5087 0074 E8B1     		cbz	r0, .L915
 5088 0076 474E     		ldr	r6, .L933+8
 5089 0078 3046     		mov	r0, r6
 5090 007a FFF7FEFF 		bl	_ZNK9SerialCDCcvbEv
 5091 007e 0746     		mov	r7, r0
 5092 0080 F8B1     		cbz	r0, .L931
 5093 0082 3046     		mov	r0, r6
 5094 0084 FFF7FEFF 		bl	_ZNK9SerialCDC8canWriteEv
 5095 0088 D5F88C30 		ldr	r3, [r5, #140]
 5096 008c D5F89070 		ldr	r7, [r5, #144]
 5097 0090 C7EB0308 		rsb	r8, r7, r3
 5098 0094 4045     		cmp	r0, r8
 5099 0096 38BF     		it	cc
 5100 0098 8046     		movcc	r8, r0
 5101 009a B8F1000F 		cmp	r8, #0
 5102 009e 54D1     		bne	.L932
 5103              	.L917:
 5104 00a0 9F42     		cmp	r7, r3
 5105 00a2 49D0     		beq	.L918
 5106 00a4 FFF7FEFF 		bl	millis
 5107 00a8 AB68     		ldr	r3, [r5, #8]
 5108 00aa C01A     		subs	r0, r0, r3
 5109 00ac B0F57A7F 		cmp	r0, #1000
 5110 00b0 42D8     		bhi	.L918
 5111              	.L915:
 5112 00b2 D4F89C06 		ldr	r0, [r4, #1692]
 5113 00b6 FFF7FEFF 		bl	_ZNK11OutputStack12GetFirstItemEv
 5114 00ba 80B1     		cbz	r0, .L920
 5115              	.L922:
 5116 00bc 0120     		movs	r0, #1
 5117 00be BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 5118              	.L931:
 5119 00c2 2846     		mov	r0, r5
 5120 00c4 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllEPS_
 5121 00c8 D4F8A406 		ldr	r0, [r4, #1700]
 5122 00cc 3946     		mov	r1, r7
 5123 00ce FFF7FEFF 		bl	_ZN11OutputStack12SetFirstItemEP12OutputBuffer
 5124 00d2 D4F89C06 		ldr	r0, [r4, #1692]
 5125 00d6 FFF7FEFF 		bl	_ZNK11OutputStack12GetFirstItemEv
 5126 00da 0028     		cmp	r0, #0
 5127 00dc EED1     		bne	.L922
 5128              	.L920:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 91


 5129 00de D4F8A006 		ldr	r0, [r4, #1696]
 5130 00e2 FFF7FEFF 		bl	_ZNK11OutputStack12GetFirstItemEv
 5131 00e6 0028     		cmp	r0, #0
 5132 00e8 E8D1     		bne	.L922
 5133 00ea D4F8A406 		ldr	r0, [r4, #1700]
 5134 00ee FFF7FEFF 		bl	_ZNK11OutputStack12GetFirstItemEv
 5135 00f2 0030     		adds	r0, r0, #0
 5136 00f4 18BF     		it	ne
 5137 00f6 0120     		movne	r0, #1
 5138 00f8 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 5139              	.L929:
 5140 00fc 4146     		mov	r1, r8
 5141 00fe 2846     		mov	r0, r5
 5142 0100 FFF7FEFF 		bl	_ZN12OutputBuffer4ReadEj
 5143 0104 3B68     		ldr	r3, [r7]
 5144 0106 0146     		mov	r1, r0
 5145 0108 DB68     		ldr	r3, [r3, #12]
 5146 010a 4246     		mov	r2, r8
 5147 010c 3846     		mov	r0, r7
 5148 010e 9847     		blx	r3
 5149 0110 D5F88C30 		ldr	r3, [r5, #140]
 5150 0114 D5F89060 		ldr	r6, [r5, #144]
 5151 0118 A4E7     		b	.L912
 5152              	.L927:
 5153 011a 4146     		mov	r1, r8
 5154 011c 2846     		mov	r0, r5
 5155 011e FFF7FEFF 		bl	_ZN12OutputBuffer4ReadEj
 5156 0122 3B68     		ldr	r3, [r7]
 5157 0124 0146     		mov	r1, r0
 5158 0126 DB68     		ldr	r3, [r3, #12]
 5159 0128 4246     		mov	r2, r8
 5160 012a 3846     		mov	r0, r7
 5161 012c 9847     		blx	r3
 5162 012e D5F88C30 		ldr	r3, [r5, #140]
 5163 0132 D5F89060 		ldr	r6, [r5, #144]
 5164 0136 7CE7     		b	.L908
 5165              	.L918:
 5166 0138 2846     		mov	r0, r5
 5167 013a FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 5168 013e 0146     		mov	r1, r0
 5169 0140 D4F8A406 		ldr	r0, [r4, #1700]
 5170 0144 FFF7FEFF 		bl	_ZN11OutputStack12SetFirstItemEP12OutputBuffer
 5171 0148 B3E7     		b	.L915
 5172              	.L932:
 5173 014a 4146     		mov	r1, r8
 5174 014c 2846     		mov	r0, r5
 5175 014e FFF7FEFF 		bl	_ZN12OutputBuffer4ReadEj
 5176 0152 3368     		ldr	r3, [r6]
 5177 0154 0146     		mov	r1, r0
 5178 0156 DB68     		ldr	r3, [r3, #12]
 5179 0158 4246     		mov	r2, r8
 5180 015a 3046     		mov	r0, r6
 5181 015c 9847     		blx	r3
 5182 015e D5F88C30 		ldr	r3, [r5, #140]
 5183 0162 D5F89070 		ldr	r7, [r5, #144]
 5184 0166 9BE7     		b	.L917
 5185              	.L928:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 92


 5186 0168 2846     		mov	r0, r5
 5187 016a FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 5188 016e 0146     		mov	r1, r0
 5189 0170 D4F89C06 		ldr	r0, [r4, #1692]
 5190 0174 FFF7FEFF 		bl	_ZN11OutputStack12SetFirstItemEP12OutputBuffer
 5191 0178 5EE7     		b	.L907
 5192              	.L930:
 5193 017a 2846     		mov	r0, r5
 5194 017c FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 5195 0180 0146     		mov	r1, r0
 5196 0182 D4F8A006 		ldr	r0, [r4, #1696]
 5197 0186 FFF7FEFF 		bl	_ZN11OutputStack12SetFirstItemEP12OutputBuffer
 5198 018a 6EE7     		b	.L911
 5199              	.L934:
 5200              		.align	2
 5201              	.L933:
 5202 018c 00000000 		.word	Serial
 5203 0190 00000000 		.word	Serial1
 5204 0194 00000000 		.word	SerialUSB
 5205              		.size	_ZN8Platform13FlushMessagesEv, .-_ZN8Platform13FlushMessagesEv
 5206              		.section	.text._ZN8Platform13SoftwareResetEtPKm,"ax",%progbits
 5207              		.align	2
 5208              		.global	_ZN8Platform13SoftwareResetEtPKm
 5209              		.thumb
 5210              		.thumb_func
 5211              		.type	_ZN8Platform13SoftwareResetEtPKm, %function
 5212              	_ZN8Platform13SoftwareResetEtPKm:
 5213              		@ args = 0, pretend = 0, frame = 504
 5214              		@ frame_needed = 0, uses_anonymous_args = 0
 5215 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 5216 0004 0C46     		mov	r4, r1
 5217 0006 FFB0     		sub	sp, sp, #508
 5218 0008 8146     		mov	r9, r0
 5219 000a 3F48     		ldr	r0, .L976
 5220 000c 9046     		mov	r8, r2
 5221 000e FFF7FEFF 		bl	wdt_restart
 5222 0012 102C     		cmp	r4, #16
 5223 0014 52D0     		beq	.L971
 5224 0016 002C     		cmp	r4, #0
 5225 0018 5BD1     		bne	.L970
 5226 001a 3C4D     		ldr	r5, .L976+4
 5227              	.L938:
 5228 001c 95F83230 		ldrb	r3, [r5, #50]	@ zero_extendqisi2
 5229 0020 01AF     		add	r7, sp, #4
 5230 0022 3946     		mov	r1, r7
 5231 0024 0020     		movs	r0, #0
 5232 0026 4FF4FA72 		mov	r2, #500
 5233 002a 1C43     		orrs	r4, r4, r3
 5234 002c 0526     		movs	r6, #5
 5235 002e FFF7FEFF 		bl	_ZN15DueFlashStorage4readEmPvm
 5236 0032 64A9     		add	r1, sp, #400
 5237              	.L950:
 5238 0034 701E     		subs	r0, r6, #1
 5239 0036 01F16402 		add	r2, r1, #100
 5240 003a 0B46     		mov	r3, r1
 5241 003c 01E0     		b	.L944
 5242              	.L973:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 93


 5243 003e 9342     		cmp	r3, r2
 5244 0040 37D0     		beq	.L972
 5245              	.L944:
 5246 0042 53F8045F 		ldr	r5, [r3, #4]!
 5247 0046 0135     		adds	r5, r5, #1
 5248 0048 F9D0     		beq	.L973
 5249 004a 052E     		cmp	r6, #5
 5250 004c 39D0     		beq	.L974
 5251              	.L949:
 5252 004e 6423     		movs	r3, #100
 5253 0050 03FB06F6 		mul	r6, r3, r6
 5254 0054 0021     		movs	r1, #0
 5255 0056 BD19     		adds	r5, r7, r6
 5256 0058 47F6075E 		movw	lr, #32007
 5257 005c 2B1D     		adds	r3, r5, #4
 5258 005e 0A46     		mov	r2, r1
 5259 0060 27F806E0 		strh	lr, [r7, r6]	@ movhi
 5260 0064 4846     		mov	r0, r9
 5261 0066 6C80     		strh	r4, [r5, #2]	@ movhi
 5262 0068 FFF7FEFF 		bl	_ZNK8Platform13GetStackUsageEPmS0_S0_
 5263 006c 284B     		ldr	r3, .L976+8
 5264 006e DA6A     		ldr	r2, [r3, #44]
 5265 0070 AA60     		str	r2, [r5, #8]
 5266 0072 9A6A     		ldr	r2, [r3, #40]
 5267 0074 EA60     		str	r2, [r5, #12]
 5268 0076 5A68     		ldr	r2, [r3, #4]
 5269 0078 2A61     		str	r2, [r5, #16]
 5270 007a 9B6B     		ldr	r3, [r3, #56]
 5271 007c 6B61     		str	r3, [r5, #20]
 5272 007e B8F1000F 		cmp	r8, #0
 5273 0082 09D0     		beq	.L946
 5274 0084 C5F81880 		str	r8, [r5, #24]
 5275 0088 0023     		movs	r3, #0
 5276              	.L947:
 5277 008a 58F80310 		ldr	r1, [r8, r3]
 5278 008e EA18     		adds	r2, r5, r3
 5279 0090 0433     		adds	r3, r3, #4
 5280 0092 482B     		cmp	r3, #72
 5281 0094 D161     		str	r1, [r2, #28]
 5282 0096 F8D1     		bne	.L947
 5283              	.L946:
 5284 0098 3946     		mov	r1, r7
 5285 009a 0020     		movs	r0, #0
 5286 009c 4FF4FA72 		mov	r2, #500
 5287 00a0 FFF7FEFF 		bl	_ZN15DueFlashStorage5writeEmPKvm
 5288              	.L937:
 5289 00a4 1B4B     		ldr	r3, .L976+12
 5290 00a6 4FF02542 		mov	r2, #-1526726656
 5291 00aa 9A60     		str	r2, [r3, #8]
 5292 00ac FFF7FEFF 		bl	Reset
 5293              	.L948:
 5294 00b0 FEE7     		b	.L948
 5295              	.L972:
 5296 00b2 6439     		subs	r1, r1, #100
 5297 00b4 0646     		mov	r6, r0
 5298 00b6 0028     		cmp	r0, #0
 5299 00b8 C9D0     		beq	.L949
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 94


 5300 00ba BBE7     		b	.L950
 5301              	.L971:
 5302 00bc FFF7FEFF 		bl	EraseAndReset
 5303 00c0 F0E7     		b	.L937
 5304              	.L974:
 5305 00c2 3846     		mov	r0, r7
 5306 00c4 FF21     		movs	r1, #255
 5307 00c6 4FF4FA72 		mov	r2, #500
 5308 00ca FFF7FEFF 		bl	memset
 5309 00ce 0026     		movs	r6, #0
 5310 00d0 BDE7     		b	.L949
 5311              	.L970:
 5312 00d2 1148     		ldr	r0, .L976+16
 5313 00d4 FFF7FEFF 		bl	_ZNK9SerialCDC8canWriteEv
 5314 00d8 08B9     		cbnz	r0, .L939
 5315 00da 44F48044 		orr	r4, r4, #16384
 5316              	.L939:
 5317 00de 0B4D     		ldr	r5, .L976+4
 5318 00e0 6868     		ldr	r0, [r5, #4]
 5319 00e2 FFF7FEFF 		bl	_ZNK7Network6InLwipEv
 5320 00e6 08B1     		cbz	r0, .L940
 5321 00e8 44F40054 		orr	r4, r4, #8192
 5322              	.L940:
 5323 00ec 0B48     		ldr	r0, .L976+20
 5324 00ee FFF7FEFF 		bl	_ZNK9UARTClass8canWriteEv
 5325 00f2 10B9     		cbnz	r0, .L975
 5326              	.L941:
 5327 00f4 44F40064 		orr	r4, r4, #2048
 5328 00f8 90E7     		b	.L938
 5329              	.L975:
 5330 00fa 0948     		ldr	r0, .L976+24
 5331 00fc FFF7FEFF 		bl	_ZNK9UARTClass8canWriteEv
 5332 0100 0028     		cmp	r0, #0
 5333 0102 F7D0     		beq	.L941
 5334 0104 8AE7     		b	.L938
 5335              	.L977:
 5336 0106 00BF     		.align	2
 5337              	.L976:
 5338 0108 501A0E40 		.word	1074666064
 5339 010c 00000000 		.word	reprap
 5340 0110 00ED00E0 		.word	-536810240
 5341 0114 001A0E40 		.word	1074665984
 5342 0118 00000000 		.word	SerialUSB
 5343 011c 00000000 		.word	Serial
 5344 0120 00000000 		.word	Serial1
 5345              		.size	_ZN8Platform13SoftwareResetEtPKm, .-_ZN8Platform13SoftwareResetEtPKm
 5346              		.section	.text.prvGetRegistersFromStack,"ax",%progbits
 5347              		.align	2
 5348              		.global	prvGetRegistersFromStack
 5349              		.thumb
 5350              		.thumb_func
 5351              		.type	prvGetRegistersFromStack, %function
 5352              	prvGetRegistersFromStack:
 5353              		@ Volatile: function does not return.
 5354              		@ args = 0, pretend = 0, frame = 0
 5355              		@ frame_needed = 0, uses_anonymous_args = 0
 5356 0000 08B5     		push	{r3, lr}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 95


 5357 0002 034B     		ldr	r3, .L979
 5358 0004 00F11402 		add	r2, r0, #20
 5359 0008 3021     		movs	r1, #48
 5360 000a 1868     		ldr	r0, [r3]
 5361 000c FFF7FEFF 		bl	_ZN8Platform13SoftwareResetEtPKm
 5362              	.L980:
 5363              		.align	2
 5364              	.L979:
 5365 0010 00000000 		.word	reprap
 5366              		.size	prvGetRegistersFromStack, .-prvGetRegistersFromStack
 5367              		.section	.text.NMI_Handler,"ax",%progbits
 5368              		.align	2
 5369              		.global	NMI_Handler
 5370              		.thumb
 5371              		.thumb_func
 5372              		.type	NMI_Handler, %function
 5373              	NMI_Handler:
 5374              		@ Volatile: function does not return.
 5375              		@ args = 0, pretend = 0, frame = 0
 5376              		@ frame_needed = 0, uses_anonymous_args = 0
 5377 0000 08B5     		push	{r3, lr}
 5378 0002 034B     		ldr	r3, .L982
 5379 0004 2021     		movs	r1, #32
 5380 0006 1868     		ldr	r0, [r3]
 5381 0008 0022     		movs	r2, #0
 5382 000a FFF7FEFF 		bl	_ZN8Platform13SoftwareResetEtPKm
 5383              	.L983:
 5384 000e 00BF     		.align	2
 5385              	.L982:
 5386 0010 00000000 		.word	reprap
 5387              		.size	NMI_Handler, .-NMI_Handler
 5388              		.section	.text.SVC_Handler,"ax",%progbits
 5389              		.align	2
 5390              		.global	SVC_Handler
 5391              		.thumb
 5392              		.thumb_func
 5393              		.type	SVC_Handler, %function
 5394              	SVC_Handler:
 5395              		@ Volatile: function does not return.
 5396              		@ args = 0, pretend = 0, frame = 0
 5397              		@ frame_needed = 0, uses_anonymous_args = 0
 5398 0000 08B5     		push	{r3, lr}
 5399 0002 034B     		ldr	r3, .L985
 5400 0004 7021     		movs	r1, #112
 5401 0006 1868     		ldr	r0, [r3]
 5402 0008 0022     		movs	r2, #0
 5403 000a FFF7FEFF 		bl	_ZN8Platform13SoftwareResetEtPKm
 5404              	.L986:
 5405 000e 00BF     		.align	2
 5406              	.L985:
 5407 0010 00000000 		.word	reprap
 5408              		.size	SVC_Handler, .-SVC_Handler
 5409              		.section	.text.DebugMon_Handler,"ax",%progbits
 5410              		.align	2
 5411              		.global	DebugMon_Handler
 5412              		.thumb
 5413              		.thumb_func
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 96


 5414              		.type	DebugMon_Handler, %function
 5415              	DebugMon_Handler:
 5416              		@ Volatile: function does not return.
 5417              		@ args = 0, pretend = 0, frame = 0
 5418              		@ frame_needed = 0, uses_anonymous_args = 0
 5419 0000 08B5     		push	{r3, lr}
 5420 0002 034B     		ldr	r3, .L988
 5421 0004 7021     		movs	r1, #112
 5422 0006 1868     		ldr	r0, [r3]
 5423 0008 0022     		movs	r2, #0
 5424 000a FFF7FEFF 		bl	_ZN8Platform13SoftwareResetEtPKm
 5425              	.L989:
 5426 000e 00BF     		.align	2
 5427              	.L988:
 5428 0010 00000000 		.word	reprap
 5429              		.size	DebugMon_Handler, .-DebugMon_Handler
 5430              		.section	.text.PendSV_Handler,"ax",%progbits
 5431              		.align	2
 5432              		.global	PendSV_Handler
 5433              		.thumb
 5434              		.thumb_func
 5435              		.type	PendSV_Handler, %function
 5436              	PendSV_Handler:
 5437              		@ Volatile: function does not return.
 5438              		@ args = 0, pretend = 0, frame = 0
 5439              		@ frame_needed = 0, uses_anonymous_args = 0
 5440 0000 08B5     		push	{r3, lr}
 5441 0002 034B     		ldr	r3, .L991
 5442 0004 7021     		movs	r1, #112
 5443 0006 1868     		ldr	r0, [r3]
 5444 0008 0022     		movs	r2, #0
 5445 000a FFF7FEFF 		bl	_ZN8Platform13SoftwareResetEtPKm
 5446              	.L992:
 5447 000e 00BF     		.align	2
 5448              	.L991:
 5449 0010 00000000 		.word	reprap
 5450              		.size	PendSV_Handler, .-PendSV_Handler
 5451              		.section	.text._ZN8Platform7MessageE11MessageTypePKc,"ax",%progbits
 5452              		.align	2
 5453              		.global	_ZN8Platform7MessageE11MessageTypePKc
 5454              		.thumb
 5455              		.thumb_func
 5456              		.type	_ZN8Platform7MessageE11MessageTypePKc, %function
 5457              	_ZN8Platform7MessageE11MessageTypePKc:
 5458              		@ args = 0, pretend = 0, frame = 8
 5459              		@ frame_needed = 0, uses_anonymous_args = 0
 5460 0000 30B5     		push	{r4, r5, lr}
 5461 0002 0546     		mov	r5, r0
 5462 0004 83B0     		sub	sp, sp, #12
 5463 0006 1446     		mov	r4, r2
 5464 0008 0729     		cmp	r1, #7
 5465 000a 53D8     		bhi	.L994
 5466 000c DFE801F0 		tbb	[pc, r1]
 5467              	.L996:
 5468 0010 0D       		.byte	(.L995-.L996)/2
 5469 0011 12       		.byte	(.L997-.L996)/2
 5470 0012 1D       		.byte	(.L998-.L996)/2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 97


 5471 0013 43       		.byte	(.L999-.L996)/2
 5472 0014 35       		.byte	(.L1000-.L996)/2
 5473 0015 3C       		.byte	(.L1001-.L996)/2
 5474 0016 52       		.byte	(.L994-.L996)/2
 5475 0017 04       		.byte	(.L1002-.L996)/2
 5476              		.align	1
 5477              	.L1002:
 5478 0018 0221     		movs	r1, #2
 5479 001a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5480 001e 2846     		mov	r0, r5
 5481 0020 2146     		mov	r1, r4
 5482 0022 FFF7FEFF 		bl	_ZN8Platform14SendAuxMessageEPKc
 5483              	.L993:
 5484 0026 03B0     		add	sp, sp, #12
 5485              		@ sp needed
 5486 0028 30BD     		pop	{r4, r5, pc}
 5487              	.L995:
 5488 002a 1146     		mov	r1, r2
 5489 002c FFF7FEFF 		bl	_ZN8Platform14AppendAuxReplyEPKc
 5490 0030 03B0     		add	sp, sp, #12
 5491              		@ sp needed
 5492 0032 30BD     		pop	{r4, r5, pc}
 5493              	.L997:
 5494 0034 D0F8A006 		ldr	r0, [r0, #1696]
 5495 0038 0368     		ldr	r3, [r0]
 5496 003a 002B     		cmp	r3, #0
 5497 003c 4ED0     		beq	.L1004
 5498 003e FFF7FEFF 		bl	_ZNK11OutputStack11GetLastItemEv
 5499 0042 2146     		mov	r1, r4
 5500 0044 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 5501 0048 EDE7     		b	.L993
 5502              	.L998:
 5503 004a D0F8A406 		ldr	r0, [r0, #1700]
 5504 004e FFF7FEFF 		bl	_ZNK11OutputStack11GetLastItemEv
 5505 0052 0190     		str	r0, [sp, #4]
 5506 0054 10B1     		cbz	r0, .L1007
 5507 0056 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 5508 005a 53B1     		cbz	r3, .L1008
 5509              	.L1007:
 5510 005c 01A8     		add	r0, sp, #4
 5511 005e FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 5512 0062 0028     		cmp	r0, #0
 5513 0064 DFD0     		beq	.L993
 5514 0066 D5F8A406 		ldr	r0, [r5, #1700]
 5515 006a 0199     		ldr	r1, [sp, #4]
 5516 006c FFF7FEFF 		bl	_ZN11OutputStack4PushEP12OutputBuffer
 5517 0070 0198     		ldr	r0, [sp, #4]
 5518              	.L1008:
 5519 0072 2146     		mov	r1, r4
 5520 0074 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 5521 0078 D5E7     		b	.L993
 5522              	.L1000:
 5523 007a 1F4B     		ldr	r3, .L1020
 5524 007c 0021     		movs	r1, #0
 5525 007e 5869     		ldr	r0, [r3, #20]
 5526 0080 FFF7FEFF 		bl	_ZN9Webserver16HandleGCodeReplyE9WebSourcePKc
 5527 0084 03B0     		add	sp, sp, #12
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 98


 5528              		@ sp needed
 5529 0086 30BD     		pop	{r4, r5, pc}
 5530              	.L1001:
 5531 0088 1B4B     		ldr	r3, .L1020
 5532 008a 0121     		movs	r1, #1
 5533 008c 5869     		ldr	r0, [r3, #20]
 5534 008e FFF7FEFF 		bl	_ZN9Webserver16HandleGCodeReplyE9WebSourcePKc
 5535 0092 03B0     		add	sp, sp, #12
 5536              		@ sp needed
 5537 0094 30BD     		pop	{r4, r5, pc}
 5538              	.L999:
 5539 0096 42B1     		cbz	r2, .L1006
 5540 0098 1046     		mov	r0, r2
 5541 009a FFF7FEFF 		bl	strlen
 5542 009e 0246     		mov	r2, r0
 5543 00a0 1648     		ldr	r0, .L1020+4
 5544 00a2 2146     		mov	r1, r4
 5545 00a4 0368     		ldr	r3, [r0]
 5546 00a6 DC68     		ldr	r4, [r3, #12]
 5547 00a8 A047     		blx	r4
 5548              	.L1006:
 5549 00aa 1448     		ldr	r0, .L1020+4
 5550 00ac FFF7FEFF 		bl	_ZN9SerialCDC5flushEv
 5551 00b0 03B0     		add	sp, sp, #12
 5552              		@ sp needed
 5553 00b2 30BD     		pop	{r4, r5, pc}
 5554              	.L994:
 5555 00b4 0421     		movs	r1, #4
 5556 00b6 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5557 00ba 2846     		mov	r0, r5
 5558 00bc 2246     		mov	r2, r4
 5559 00be 0521     		movs	r1, #5
 5560 00c0 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5561 00c4 2846     		mov	r0, r5
 5562 00c6 2246     		mov	r2, r4
 5563 00c8 0221     		movs	r1, #2
 5564 00ca FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5565 00ce 2846     		mov	r0, r5
 5566 00d0 2246     		mov	r2, r4
 5567 00d2 0021     		movs	r1, #0
 5568 00d4 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5569 00d8 03B0     		add	sp, sp, #12
 5570              		@ sp needed
 5571 00da 30BD     		pop	{r4, r5, pc}
 5572              	.L1004:
 5573 00dc 42B1     		cbz	r2, .L1005
 5574 00de 1046     		mov	r0, r2
 5575 00e0 FFF7FEFF 		bl	strlen
 5576 00e4 0246     		mov	r2, r0
 5577 00e6 0648     		ldr	r0, .L1020+8
 5578 00e8 2146     		mov	r1, r4
 5579 00ea 0368     		ldr	r3, [r0]
 5580 00ec DC68     		ldr	r4, [r3, #12]
 5581 00ee A047     		blx	r4
 5582              	.L1005:
 5583 00f0 0348     		ldr	r0, .L1020+8
 5584 00f2 FFF7FEFF 		bl	_ZN9UARTClass5flushEv
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 99


 5585 00f6 96E7     		b	.L993
 5586              	.L1021:
 5587              		.align	2
 5588              	.L1020:
 5589 00f8 00000000 		.word	reprap
 5590 00fc 00000000 		.word	SerialUSB
 5591 0100 00000000 		.word	Serial1
 5592              		.size	_ZN8Platform7MessageE11MessageTypePKc, .-_ZN8Platform7MessageE11MessageTypePKc
 5593              		.section	.text._ZN8Platform12SetEmulatingE13Compatibility,"ax",%progbits
 5594              		.align	2
 5595              		.global	_ZN8Platform12SetEmulatingE13Compatibility
 5596              		.thumb
 5597              		.thumb_func
 5598              		.type	_ZN8Platform12SetEmulatingE13Compatibility, %function
 5599              	_ZN8Platform12SetEmulatingE13Compatibility:
 5600              		@ args = 0, pretend = 0, frame = 0
 5601              		@ frame_needed = 0, uses_anonymous_args = 0
 5602              		@ link register save eliminated.
 5603 0000 0229     		cmp	r1, #2
 5604 0002 05D8     		bhi	.L1026
 5605 0004 0129     		cmp	r1, #1
 5606 0006 08BF     		it	eq
 5607 0008 0021     		moveq	r1, #0
 5608 000a 80F8AA10 		strb	r1, [r0, #170]
 5609 000e 7047     		bx	lr
 5610              	.L1026:
 5611 0010 0621     		movs	r1, #6
 5612 0012 014A     		ldr	r2, .L1027
 5613 0014 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 5614              	.L1028:
 5615              		.align	2
 5616              	.L1027:
 5617 0018 50000000 		.word	.LC11
 5618              		.size	_ZN8Platform12SetEmulatingE13Compatibility, .-_ZN8Platform12SetEmulatingE13Compatibility
 5619              		.section	.text._ZN8Platform12GetFileStoreEPKcS1_b,"ax",%progbits
 5620              		.align	2
 5621              		.global	_ZN8Platform12GetFileStoreEPKcS1_b
 5622              		.thumb
 5623              		.thumb_func
 5624              		.type	_ZN8Platform12GetFileStoreEPKcS1_b, %function
 5625              	_ZN8Platform12GetFileStoreEPKcS1_b:
 5626              		@ args = 0, pretend = 0, frame = 0
 5627              		@ frame_needed = 0, uses_anonymous_args = 0
 5628 0000 2DE9B841 		push	{r3, r4, r5, r7, r8, lr}
 5629 0004 8046     		mov	r8, r0
 5630 0006 90F8E006 		ldrb	r0, [r0, #1760]	@ zero_extendqisi2
 5631 000a 78B1     		cbz	r0, .L1040
 5632 000c 4446     		mov	r4, r8
 5633 000e 0025     		movs	r5, #0
 5634              	.L1035:
 5635 0010 D4F8B806 		ldr	r0, [r4, #1720]
 5636 0014 0434     		adds	r4, r4, #4
 5637 0016 90F82D70 		ldrb	r7, [r0, #45]	@ zero_extendqisi2
 5638 001a 57B1     		cbz	r7, .L1041
 5639 001c 0135     		adds	r5, r5, #1
 5640 001e 0A2D     		cmp	r5, #10
 5641 0020 F6D1     		bne	.L1035
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 100


 5642 0022 4046     		mov	r0, r8
 5643 0024 0221     		movs	r1, #2
 5644 0026 094A     		ldr	r2, .L1042
 5645 0028 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5646              	.L1040:
 5647 002c 0020     		movs	r0, #0
 5648 002e BDE8B881 		pop	{r3, r4, r5, r7, r8, pc}
 5649              	.L1041:
 5650 0032 FFF7FEFF 		bl	_ZN9FileStore4OpenEPKcS1_b
 5651 0036 0028     		cmp	r0, #0
 5652 0038 F8D0     		beq	.L1040
 5653 003a 05F5D775 		add	r5, r5, #430
 5654 003e 58F82500 		ldr	r0, [r8, r5, lsl #2]
 5655 0042 0123     		movs	r3, #1
 5656 0044 80F82D30 		strb	r3, [r0, #45]
 5657 0048 BDE8B881 		pop	{r3, r4, r5, r7, r8, pc}
 5658              	.L1043:
 5659              		.align	2
 5660              	.L1042:
 5661 004c 7C000000 		.word	.LC12
 5662              		.size	_ZN8Platform12GetFileStoreEPKcS1_b, .-_ZN8Platform12GetFileStoreEPKcS1_b
 5663              		.section	.text._ZN8Platform8MessageFE11MessageTypePKcSt9__va_list,"ax",%progbits
 5664              		.align	2
 5665              		.global	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list
 5666              		.thumb
 5667              		.thumb_func
 5668              		.type	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list, %function
 5669              	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list:
 5670              		@ args = 0, pretend = 0, frame = 264
 5671              		@ frame_needed = 0, uses_anonymous_args = 0
 5672 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 5673 0002 C3B0     		sub	sp, sp, #268
 5674 0004 0D46     		mov	r5, r1
 5675 0006 0646     		mov	r6, r0
 5676 0008 1146     		mov	r1, r2
 5677 000a 02AC     		add	r4, sp, #8
 5678 000c 1A46     		mov	r2, r3
 5679 000e 4FF48077 		mov	r7, #256
 5680 0012 0023     		movs	r3, #0
 5681 0014 6846     		mov	r0, sp
 5682 0016 8DF80830 		strb	r3, [sp, #8]
 5683 001a 8DE89000 		stmia	sp, {r4, r7}
 5684 001e FFF7FEFF 		bl	_ZN9StringRef7vprintfEPKcSt9__va_list
 5685 0022 3046     		mov	r0, r6
 5686 0024 2946     		mov	r1, r5
 5687 0026 2246     		mov	r2, r4
 5688 0028 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5689 002c 43B0     		add	sp, sp, #268
 5690              		@ sp needed
 5691 002e F0BD     		pop	{r4, r5, r6, r7, pc}
 5692              		.size	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list, .-_ZN8Platform8MessageFE11MessageTypePKc
 5693              		.section	.text._ZN8Platform8MessageFE11MessageTypePKcz,"ax",%progbits
 5694              		.align	2
 5695              		.global	_ZN8Platform8MessageFE11MessageTypePKcz
 5696              		.thumb
 5697              		.thumb_func
 5698              		.type	_ZN8Platform8MessageFE11MessageTypePKcz, %function
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 101


 5699              	_ZN8Platform8MessageFE11MessageTypePKcz:
 5700              		@ args = 4, pretend = 8, frame = 272
 5701              		@ frame_needed = 0, uses_anonymous_args = 1
 5702 0000 0CB4     		push	{r2, r3}
 5703 0002 F0B5     		push	{r4, r5, r6, r7, lr}
 5704 0004 C5B0     		sub	sp, sp, #276
 5705 0006 4AAB     		add	r3, sp, #296
 5706 0008 53F8042B 		ldr	r2, [r3], #4
 5707 000c 4FF4807E 		mov	lr, #256
 5708 0010 0646     		mov	r6, r0
 5709 0012 0D46     		mov	r5, r1
 5710 0014 04AC     		add	r4, sp, #16
 5711 0016 1146     		mov	r1, r2
 5712 0018 02A8     		add	r0, sp, #8
 5713 001a 1A46     		mov	r2, r3
 5714 001c 0027     		movs	r7, #0
 5715 001e 0193     		str	r3, [sp, #4]
 5716 0020 CDF80CE0 		str	lr, [sp, #12]
 5717 0024 0294     		str	r4, [sp, #8]
 5718 0026 8DF81070 		strb	r7, [sp, #16]
 5719 002a FFF7FEFF 		bl	_ZN9StringRef7vprintfEPKcSt9__va_list
 5720 002e 3046     		mov	r0, r6
 5721 0030 2946     		mov	r1, r5
 5722 0032 2246     		mov	r2, r4
 5723 0034 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5724 0038 45B0     		add	sp, sp, #276
 5725              		@ sp needed
 5726 003a BDE8F040 		pop	{r4, r5, r6, r7, lr}
 5727 003e 02B0     		add	sp, sp, #8
 5728 0040 7047     		bx	lr
 5729              		.size	_ZN8Platform8MessageFE11MessageTypePKcz, .-_ZN8Platform8MessageFE11MessageTypePKcz
 5730 0042 00BF     		.section	.text._ZN8Platform7MessageE11MessageTypeP12OutputBuffer,"ax",%progbits
 5731              		.align	2
 5732              		.global	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 5733              		.thumb
 5734              		.thumb_func
 5735              		.type	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer, %function
 5736              	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer:
 5737              		@ args = 0, pretend = 0, frame = 8
 5738              		@ frame_needed = 0, uses_anonymous_args = 0
 5739 0000 30B5     		push	{r4, r5, lr}
 5740 0002 0546     		mov	r5, r0
 5741 0004 83B0     		sub	sp, sp, #12
 5742 0006 1446     		mov	r4, r2
 5743 0008 0729     		cmp	r1, #7
 5744 000a 57D8     		bhi	.L1047
 5745 000c DFE801F0 		tbb	[pc, r1]
 5746              	.L1049:
 5747 0010 3F       		.byte	(.L1048-.L1049)/2
 5748 0011 46       		.byte	(.L1050-.L1049)/2
 5749 0012 04       		.byte	(.L1051-.L1049)/2
 5750 0013 0F       		.byte	(.L1052-.L1049)/2
 5751 0014 24       		.byte	(.L1053-.L1049)/2
 5752 0015 4E       		.byte	(.L1054-.L1049)/2
 5753 0016 2C       		.byte	(.L1055-.L1049)/2
 5754 0017 04       		.byte	(.L1051-.L1049)/2
 5755              		.align	1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 102


 5756              	.L1051:
 5757 0018 3148     		ldr	r0, .L1066
 5758 001a FFF7FEFF 		bl	_ZNK9SerialCDCcvbEv
 5759 001e 0028     		cmp	r0, #0
 5760 0020 5AD1     		bne	.L1060
 5761 0022 2046     		mov	r0, r4
 5762 0024 03B0     		add	sp, sp, #12
 5763              		@ sp needed
 5764 0026 BDE83040 		pop	{r4, r5, lr}
 5765 002a FFF7FEBF 		b	_ZN12OutputBuffer10ReleaseAllEPS_
 5766              	.L1052:
 5767 002e 8AB1     		cbz	r2, .L1046
 5768 0030 2B4D     		ldr	r5, .L1066
 5769              	.L1059:
 5770 0032 2B68     		ldr	r3, [r5]
 5771 0034 04F10C01 		add	r1, r4, #12
 5772 0038 D4F88C20 		ldr	r2, [r4, #140]
 5773 003c DB68     		ldr	r3, [r3, #12]
 5774 003e 2848     		ldr	r0, .L1066
 5775 0040 9847     		blx	r3
 5776 0042 2748     		ldr	r0, .L1066
 5777 0044 FFF7FEFF 		bl	_ZN9SerialCDC5flushEv
 5778 0048 2046     		mov	r0, r4
 5779 004a FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 5780 004e 0446     		mov	r4, r0
 5781 0050 0028     		cmp	r0, #0
 5782 0052 EED1     		bne	.L1059
 5783              	.L1046:
 5784 0054 03B0     		add	sp, sp, #12
 5785              		@ sp needed
 5786 0056 30BD     		pop	{r4, r5, pc}
 5787              	.L1053:
 5788 0058 224B     		ldr	r3, .L1066+4
 5789 005a 0021     		movs	r1, #0
 5790 005c 5869     		ldr	r0, [r3, #20]
 5791 005e 03B0     		add	sp, sp, #12
 5792              		@ sp needed
 5793 0060 BDE83040 		pop	{r4, r5, lr}
 5794 0064 FFF7FEBF 		b	_ZN9Webserver16HandleGCodeReplyE9WebSourceP12OutputBuffer
 5795              	.L1055:
 5796 0068 1046     		mov	r0, r2
 5797 006a 0321     		movs	r1, #3
 5798 006c FFF7FEFF 		bl	_ZN12OutputBuffer18IncreaseReferencesEj
 5799 0070 2846     		mov	r0, r5
 5800 0072 0421     		movs	r1, #4
 5801 0074 2246     		mov	r2, r4
 5802 0076 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 5803 007a 2846     		mov	r0, r5
 5804 007c 0521     		movs	r1, #5
 5805 007e 2246     		mov	r2, r4
 5806 0080 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 5807 0084 2846     		mov	r0, r5
 5808 0086 0221     		movs	r1, #2
 5809 0088 2246     		mov	r2, r4
 5810 008a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 5811              	.L1048:
 5812 008e 2846     		mov	r0, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 103


 5813 0090 2146     		mov	r1, r4
 5814 0092 03B0     		add	sp, sp, #12
 5815              		@ sp needed
 5816 0094 BDE83040 		pop	{r4, r5, lr}
 5817 0098 FFF7FEBF 		b	_ZN8Platform14AppendAuxReplyEP12OutputBuffer
 5818              	.L1050:
 5819 009c D0F8A006 		ldr	r0, [r0, #1696]
 5820              	.L1064:
 5821 00a0 2146     		mov	r1, r4
 5822 00a2 03B0     		add	sp, sp, #12
 5823              		@ sp needed
 5824 00a4 BDE83040 		pop	{r4, r5, lr}
 5825 00a8 FFF7FEBF 		b	_ZN11OutputStack4PushEP12OutputBuffer
 5826              	.L1054:
 5827 00ac 0D4B     		ldr	r3, .L1066+4
 5828 00ae 0121     		movs	r1, #1
 5829 00b0 5869     		ldr	r0, [r3, #20]
 5830 00b2 03B0     		add	sp, sp, #12
 5831              		@ sp needed
 5832 00b4 BDE83040 		pop	{r4, r5, lr}
 5833 00b8 FFF7FEBF 		b	_ZN9Webserver16HandleGCodeReplyE9WebSourceP12OutputBuffer
 5834              	.L1047:
 5835 00bc 1046     		mov	r0, r2
 5836 00be 0191     		str	r1, [sp, #4]
 5837 00c0 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllEPS_
 5838 00c4 0199     		ldr	r1, [sp, #4]
 5839 00c6 084A     		ldr	r2, .L1066+8
 5840 00c8 0B46     		mov	r3, r1
 5841 00ca 2846     		mov	r0, r5
 5842 00cc 0221     		movs	r1, #2
 5843 00ce 03B0     		add	sp, sp, #12
 5844              		@ sp needed
 5845 00d0 BDE83040 		pop	{r4, r5, lr}
 5846 00d4 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 5847              	.L1060:
 5848 00d8 D5F8A406 		ldr	r0, [r5, #1700]
 5849 00dc E0E7     		b	.L1064
 5850              	.L1067:
 5851 00de 00BF     		.align	2
 5852              	.L1066:
 5853 00e0 00000000 		.word	SerialUSB
 5854 00e4 00000000 		.word	reprap
 5855 00e8 9C000000 		.word	.LC13
 5856              		.size	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer, .-_ZN8Platform7MessageE11MessageTypeP12Ou
 5857              		.section	.text._ZN8Platform14SendAuxMessageEPKc,"ax",%progbits
 5858              		.align	2
 5859              		.global	_ZN8Platform14SendAuxMessageEPKc
 5860              		.thumb
 5861              		.thumb_func
 5862              		.type	_ZN8Platform14SendAuxMessageEPKc, %function
 5863              	_ZN8Platform14SendAuxMessageEPKc:
 5864              		@ args = 0, pretend = 0, frame = 8
 5865              		@ frame_needed = 0, uses_anonymous_args = 0
 5866 0000 70B5     		push	{r4, r5, r6, lr}
 5867 0002 84B0     		sub	sp, sp, #16
 5868 0004 0546     		mov	r5, r0
 5869 0006 03A8     		add	r0, sp, #12
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 104


 5870 0008 0C46     		mov	r4, r1
 5871 000a FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 5872 000e B8B1     		cbz	r0, .L1068
 5873 0010 0C49     		ldr	r1, .L1073
 5874 0012 0398     		ldr	r0, [sp, #12]
 5875 0014 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 5876 0018 2046     		mov	r0, r4
 5877 001a FFF7FEFF 		bl	strlen
 5878 001e 0126     		movs	r6, #1
 5879 0020 0246     		mov	r2, r0
 5880 0022 2146     		mov	r1, r4
 5881 0024 0023     		movs	r3, #0
 5882 0026 0398     		ldr	r0, [sp, #12]
 5883 0028 0096     		str	r6, [sp]
 5884 002a FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 5885 002e 0649     		ldr	r1, .L1073+4
 5886 0030 0398     		ldr	r0, [sp, #12]
 5887 0032 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 5888 0036 2846     		mov	r0, r5
 5889 0038 0021     		movs	r1, #0
 5890 003a 039A     		ldr	r2, [sp, #12]
 5891 003c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 5892              	.L1068:
 5893 0040 04B0     		add	sp, sp, #16
 5894              		@ sp needed
 5895 0042 70BD     		pop	{r4, r5, r6, pc}
 5896              	.L1074:
 5897              		.align	2
 5898              	.L1073:
 5899 0044 CC000000 		.word	.LC14
 5900 0048 D8000000 		.word	.LC15
 5901              		.size	_ZN8Platform14SendAuxMessageEPKc, .-_ZN8Platform14SendAuxMessageEPKc
 5902              		.section	.text._ZN8Platform32CheckFirmwareUpdatePrerequisitesEv,"ax",%progbits
 5903              		.align	2
 5904              		.global	_ZN8Platform32CheckFirmwareUpdatePrerequisitesEv
 5905              		.thumb
 5906              		.thumb_func
 5907              		.type	_ZN8Platform32CheckFirmwareUpdatePrerequisitesEv, %function
 5908              	_ZN8Platform32CheckFirmwareUpdatePrerequisitesEv:
 5909              		@ args = 0, pretend = 0, frame = 8
 5910              		@ frame_needed = 0, uses_anonymous_args = 0
 5911 0000 70B5     		push	{r4, r5, r6, lr}
 5912 0002 1D49     		ldr	r1, .L1081
 5913 0004 82B0     		sub	sp, sp, #8
 5914 0006 1D4A     		ldr	r2, .L1081+4
 5915 0008 0023     		movs	r3, #0
 5916 000a 0546     		mov	r5, r0
 5917 000c FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 5918 0010 0446     		mov	r4, r0
 5919 0012 38B3     		cbz	r0, .L1080
 5920 0014 01A9     		add	r1, sp, #4
 5921 0016 0422     		movs	r2, #4
 5922 0018 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 5923 001c 0646     		mov	r6, r0
 5924 001e 2046     		mov	r0, r4
 5925 0020 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 5926 0024 042E     		cmp	r6, #4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 105


 5927 0026 03D1     		bne	.L1078
 5928 0028 154A     		ldr	r2, .L1081+8
 5929 002a 019B     		ldr	r3, [sp, #4]
 5930 002c 9342     		cmp	r3, r2
 5931 002e 09D0     		beq	.L1079
 5932              	.L1078:
 5933 0030 2846     		mov	r0, r5
 5934 0032 0621     		movs	r1, #6
 5935 0034 134A     		ldr	r2, .L1081+12
 5936 0036 114B     		ldr	r3, .L1081+4
 5937 0038 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 5938 003c 0024     		movs	r4, #0
 5939              	.L1077:
 5940 003e 2046     		mov	r0, r4
 5941 0040 02B0     		add	sp, sp, #8
 5942              		@ sp needed
 5943 0042 70BD     		pop	{r4, r5, r6, pc}
 5944              	.L1079:
 5945 0044 D5F8B406 		ldr	r0, [r5, #1716]
 5946 0048 0B49     		ldr	r1, .L1081
 5947 004a 0F4A     		ldr	r2, .L1081+16
 5948 004c FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
 5949 0050 0446     		mov	r4, r0
 5950 0052 0028     		cmp	r0, #0
 5951 0054 F3D1     		bne	.L1077
 5952 0056 2846     		mov	r0, r5
 5953 0058 0621     		movs	r1, #6
 5954 005a 0C4A     		ldr	r2, .L1081+20
 5955 005c 0A4B     		ldr	r3, .L1081+16
 5956 005e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 5957 0062 ECE7     		b	.L1077
 5958              	.L1080:
 5959 0064 2846     		mov	r0, r5
 5960 0066 0621     		movs	r1, #6
 5961 0068 094A     		ldr	r2, .L1081+24
 5962 006a 044B     		ldr	r3, .L1081+4
 5963 006c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 5964 0070 2046     		mov	r0, r4
 5965 0072 02B0     		add	sp, sp, #8
 5966              		@ sp needed
 5967 0074 70BD     		pop	{r4, r5, r6, pc}
 5968              	.L1082:
 5969 0076 00BF     		.align	2
 5970              	.L1081:
 5971 0078 DC000000 		.word	.LC16
 5972 007c E4000000 		.word	.LC17
 5973 0080 00800820 		.word	537427968
 5974 0084 20010000 		.word	.LC19
 5975 0088 60010000 		.word	.LC20
 5976 008c 68010000 		.word	.LC21
 5977 0090 F8000000 		.word	.LC18
 5978              		.size	_ZN8Platform32CheckFirmwareUpdatePrerequisitesEv, .-_ZN8Platform32CheckFirmwareUpdatePrerequ
 5979              		.section	.text._ZN8Platform4BeepEii,"ax",%progbits
 5980              		.align	2
 5981              		.global	_ZN8Platform4BeepEii
 5982              		.thumb
 5983              		.thumb_func
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 106


 5984              		.type	_ZN8Platform4BeepEii, %function
 5985              	_ZN8Platform4BeepEii:
 5986              		@ args = 0, pretend = 0, frame = 0
 5987              		@ frame_needed = 0, uses_anonymous_args = 0
 5988 0000 00B5     		push	{lr}
 5989 0002 83B0     		sub	sp, sp, #12
 5990 0004 0B46     		mov	r3, r1
 5991 0006 0092     		str	r2, [sp]
 5992 0008 0021     		movs	r1, #0
 5993 000a 034A     		ldr	r2, .L1084
 5994 000c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 5995 0010 03B0     		add	sp, sp, #12
 5996              		@ sp needed
 5997 0012 5DF804FB 		ldr	pc, [sp], #4
 5998              	.L1085:
 5999 0016 00BF     		.align	2
 6000              	.L1084:
 6001 0018 A4010000 		.word	.LC22
 6002              		.size	_ZN8Platform4BeepEii, .-_ZN8Platform4BeepEii
 6003              		.section	.text._ZN8Platform14DiagnosticTestEi,"ax",%progbits
 6004              		.align	2
 6005              		.global	_ZN8Platform14DiagnosticTestEi
 6006              		.thumb
 6007              		.thumb_func
 6008              		.type	_ZN8Platform14DiagnosticTestEi, %function
 6009              	_ZN8Platform14DiagnosticTestEi:
 6010              		@ args = 0, pretend = 0, frame = 8
 6011              		@ frame_needed = 0, uses_anonymous_args = 0
 6012 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 6013 0004 40F2EA33 		movw	r3, #1002
 6014 0008 9942     		cmp	r1, r3
 6015 000a 8BB0     		sub	sp, sp, #44
 6016 000c 0646     		mov	r6, r0
 6017 000e 00F08B80 		beq	.L1088
 6018 0012 11DD     		ble	.L1102
 6019 0014 B1F57B7F 		cmp	r1, #1004
 6020 0018 7FD0     		beq	.L1093
 6021 001a 2BDB     		blt	.L1094
 6022 001c 40F2ED33 		movw	r3, #1005
 6023 0020 9942     		cmp	r1, r3
 6024 0022 1CD0     		beq	.L1095
 6025 0024 40F2EE33 		movw	r3, #1006
 6026 0028 9942     		cmp	r1, r3
 6027 002a 0DD1     		bne	.L1086
 6028 002c 4648     		ldr	r0, .L1104+16
 6029 002e 0BB0     		add	sp, sp, #44
 6030              		@ sp needed
 6031 0030 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 6032 0034 FFF7FEBF 		b	_ZN6RepRap9ReadDwordEPKc
 6033              	.L1102:
 6034 0038 6629     		cmp	r1, #102
 6035 003a 21D0     		beq	.L1090
 6036 003c 40F2E933 		movw	r3, #1001
 6037 0040 9942     		cmp	r1, r3
 6038 0042 04D0     		beq	.L1091
 6039 0044 6429     		cmp	r1, #100
 6040 0046 63D0     		beq	.L1103
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 107


 6041              	.L1086:
 6042 0048 0BB0     		add	sp, sp, #44
 6043              		@ sp needed
 6044 004a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6045              	.L1091:
 6046 004e 3F4B     		ldr	r3, .L1104+20
 6047 0050 1A68     		ldr	r2, [r3]
 6048 0052 22F00202 		bic	r2, r2, #2
 6049 0056 1A60     		str	r2, [r3]
 6050 0058 0BB0     		add	sp, sp, #44
 6051              		@ sp needed
 6052 005a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6053              	.L1095:
 6054 005e 3C4B     		ldr	r3, .L1104+24
 6055 0060 3C48     		ldr	r0, .L1104+28
 6056 0062 5A69     		ldr	r2, [r3, #20]
 6057 0064 42F00802 		orr	r2, r2, #8
 6058 0068 5A61     		str	r2, [r3, #20]
 6059 006a 0BB0     		add	sp, sp, #44
 6060              		@ sp needed
 6061 006c BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 6062 0070 FFF7FEBF 		b	_ZN6RepRap9ReadDwordEPKc
 6063              	.L1094:
 6064 0074 3848     		ldr	r0, .L1104+32
 6065 0076 0BB0     		add	sp, sp, #44
 6066              		@ sp needed
 6067 0078 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 6068 007c FFF7FEBF 		b	debugPrintf
 6069              	.L1090:
 6070 0080 364C     		ldr	r4, .L1104+36
 6071 0082 2DA1     		adr	r1, .L1104
 6072 0084 D1E90001 		ldrd	r0, [r1]
 6073 0088 2569     		ldr	r5, [r4, #16]
 6074 008a FFF7FEFF 		bl	_Z7isqrt64y
 6075 008e 2369     		ldr	r3, [r4, #16]
 6076 0090 8346     		mov	fp, r0
 6077 0092 2BA1     		adr	r1, .L1104+8
 6078 0094 D1E90001 		ldrd	r0, [r1]
 6079 0098 C5EB0308 		rsb	r8, r5, r3
 6080 009c 2569     		ldr	r5, [r4, #16]
 6081 009e FFF7FEFF 		bl	_Z7isqrt64y
 6082 00a2 2F4F     		ldr	r7, .L1104+40
 6083 00a4 2369     		ldr	r3, [r4, #16]
 6084 00a6 8246     		mov	r10, r0
 6085 00a8 5B1B     		subs	r3, r3, r5
 6086 00aa 07FB08F0 		mul	r0, r7, r8
 6087 00ae 0993     		str	r3, [sp, #36]
 6088 00b0 FFF7FEFF 		bl	__aeabi_ui2f
 6089 00b4 2B49     		ldr	r1, .L1104+44
 6090 00b6 FFF7FEFF 		bl	__aeabi_fdiv
 6091 00ba FFF7FEFF 		bl	__aeabi_f2d
 6092 00be 099B     		ldr	r3, [sp, #36]
 6093 00c0 294A     		ldr	r2, .L1104+48
 6094 00c2 DFF8AC90 		ldr	r9, .L1104+56
 6095 00c6 DFF8AC80 		ldr	r8, .L1104+60
 6096 00ca 0446     		mov	r4, r0
 6097 00cc 07FB03F0 		mul	r0, r7, r3
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 108


 6098 00d0 0D46     		mov	r5, r1
 6099 00d2 9345     		cmp	fp, r2
 6100 00d4 14BF     		ite	ne
 6101 00d6 4F46     		movne	r7, r9
 6102 00d8 4746     		moveq	r7, r8
 6103 00da FFF7FEFF 		bl	__aeabi_ui2f
 6104 00de 2149     		ldr	r1, .L1104+44
 6105 00e0 FFF7FEFF 		bl	__aeabi_fdiv
 6106 00e4 FFF7FEFF 		bl	__aeabi_f2d
 6107 00e8 4AF2C543 		movw	r3, #42181
 6108 00ec 9A45     		cmp	r10, r3
 6109 00ee 14BF     		ite	ne
 6110 00f0 4B46     		movne	r3, r9
 6111 00f2 4346     		moveq	r3, r8
 6112 00f4 CDE90401 		strd	r0, [sp, #16]
 6113 00f8 0297     		str	r7, [sp, #8]
 6114 00fa CDE90045 		strd	r4, [sp]
 6115 00fe 3046     		mov	r0, r6
 6116 0100 0693     		str	r3, [sp, #24]
 6117 0102 0621     		movs	r1, #6
 6118 0104 194A     		ldr	r2, .L1104+52
 6119 0106 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6120 010a 0BB0     		add	sp, sp, #44
 6121              		@ sp needed
 6122 010c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6123              	.L1103:
 6124 0110 0BB0     		add	sp, sp, #44
 6125              		@ sp needed
 6126 0112 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 6127 0116 FFF7FEBF 		b	_ZN3DDA10PrintMovesEv
 6128              	.L1093:
 6129 011a 0120     		movs	r0, #1
 6130 011c 0021     		movs	r1, #0
 6131 011e 0BB0     		add	sp, sp, #44
 6132              		@ sp needed
 6133 0120 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 6134 0124 FFF7FEBF 		b	_ZN6RepRap8DoDivideEmm
 6135              	.L1088:
 6136 0128 C0F81017 		str	r1, [r0, #1808]
 6137 012c 0BB0     		add	sp, sp, #44
 6138              		@ sp needed
 6139 012e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6140              	.L1105:
 6141 0132 00BFAFF3 		.align	3
 6141      0080
 6142              	.L1104:
 6143 0138 890604B0 		.word	-1341913463
 6144 013c C7B51E33 		.word	857650631
 6145 0140 99FF0C6A 		.word	1779236761
 6146 0144 00000000 		.word	0
 6147 0148 00002020 		.word	538968064
 6148 014c 10E000E0 		.word	-536813552
 6149 0150 00ED00E0 		.word	-536810240
 6150 0154 01000000 		.word	.LANCHOR25+1
 6151 0158 D4010000 		.word	.LC25
 6152 015c 00400840 		.word	1074282496
 6153 0160 40420F00 		.word	1000000
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 109


 6154 0164 A0372049 		.word	1226848160
 6155 0168 3DAC6572 		.word	1919265853
 6156 016c E8010000 		.word	.LC26
 6157 0170 CC010000 		.word	.LC24
 6158 0174 C8010000 		.word	.LC23
 6159              		.size	_ZN8Platform14DiagnosticTestEi, .-_ZN8Platform14DiagnosticTestEi
 6160              		.section	.text._ZN8Platform11ClassReportERf,"ax",%progbits
 6161              		.align	2
 6162              		.global	_ZN8Platform11ClassReportERf
 6163              		.thumb
 6164              		.thumb_func
 6165              		.type	_ZN8Platform11ClassReportERf, %function
 6166              	_ZN8Platform11ClassReportERf:
 6167              		@ args = 0, pretend = 0, frame = 0
 6168              		@ frame_needed = 0, uses_anonymous_args = 0
 6169 0000 70B5     		push	{r4, r5, r6, lr}
 6170 0002 114B     		ldr	r3, .L1113
 6171 0004 0D46     		mov	r5, r1
 6172 0006 93F83240 		ldrb	r4, [r3, #50]	@ zero_extendqisi2
 6173 000a B3F84030 		ldrh	r3, [r3, #64]
 6174 000e 0646     		mov	r6, r0
 6175 0010 2341     		asrs	r3, r3, r4
 6176 0012 DB07     		lsls	r3, r3, #31
 6177 0014 00D4     		bmi	.L1112
 6178              	.L1106:
 6179 0016 70BD     		pop	{r4, r5, r6, pc}
 6180              	.L1112:
 6181 0018 FFF7FEFF 		bl	_ZN8Platform4TimeEv
 6182 001c 2968     		ldr	r1, [r5]	@ float
 6183 001e FFF7FEFF 		bl	__aeabi_fsub
 6184 0022 0A49     		ldr	r1, .L1113+4
 6185 0024 FFF7FEFF 		bl	__aeabi_fcmpge
 6186 0028 0028     		cmp	r0, #0
 6187 002a F4D0     		beq	.L1106
 6188 002c 3046     		mov	r0, r6
 6189 002e FFF7FEFF 		bl	_ZN8Platform4TimeEv
 6190 0032 074B     		ldr	r3, .L1113+8
 6191 0034 2860     		str	r0, [r5]	@ float
 6192 0036 53F82430 		ldr	r3, [r3, r4, lsl #2]
 6193 003a 3046     		mov	r0, r6
 6194 003c 0221     		movs	r1, #2
 6195 003e 054A     		ldr	r2, .L1113+12
 6196 0040 BDE87040 		pop	{r4, r5, r6, lr}
 6197 0044 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 6198              	.L1114:
 6199              		.align	2
 6200              	.L1113:
 6201 0048 00000000 		.word	reprap
 6202 004c 00009643 		.word	1133903872
 6203 0050 00000000 		.word	moduleName
 6204 0054 1C020000 		.word	.LC27
 6205              		.size	_ZN8Platform11ClassReportERf, .-_ZN8Platform11ClassReportERf
 6206              		.section	.text._ZN8Platform4SpinEv,"ax",%progbits
 6207              		.align	2
 6208              		.global	_ZN8Platform4SpinEv
 6209              		.thumb
 6210              		.thumb_func
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 110


 6211              		.type	_ZN8Platform4SpinEv, %function
 6212              	_ZN8Platform4SpinEv:
 6213              		@ args = 0, pretend = 0, frame = 0
 6214              		@ frame_needed = 0, uses_anonymous_args = 0
 6215 0000 38B5     		push	{r3, r4, r5, lr}
 6216 0002 90F8BC30 		ldrb	r3, [r0, #188]	@ zero_extendqisi2
 6217 0006 0446     		mov	r4, r0
 6218 0008 002B     		cmp	r3, #0
 6219 000a 52D0     		beq	.L1115
 6220 000c 0025     		movs	r5, #0
 6221 000e 01E0     		b	.L1119
 6222              	.L1117:
 6223 0010 282D     		cmp	r5, #40
 6224 0012 0BD0     		beq	.L1133
 6225              	.L1119:
 6226 0014 6319     		adds	r3, r4, r5
 6227 0016 D3F8B806 		ldr	r0, [r3, #1720]
 6228 001a 0435     		adds	r5, r5, #4
 6229 001c 90F82C30 		ldrb	r3, [r0, #44]	@ zero_extendqisi2
 6230 0020 002B     		cmp	r3, #0
 6231 0022 F5D0     		beq	.L1117
 6232 0024 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 6233 0028 282D     		cmp	r5, #40
 6234 002a F3D1     		bne	.L1119
 6235              	.L1133:
 6236 002c 2046     		mov	r0, r4
 6237 002e FFF7FEFF 		bl	_ZN8Platform13FlushMessagesEv
 6238 0032 04F24460 		addw	r0, r4, #1604
 6239 0036 FFF7FEFF 		bl	_ZN3Fan5CheckEv
 6240 003a 04F26460 		addw	r0, r4, #1636
 6241 003e FFF7FEFF 		bl	_ZN3Fan5CheckEv
 6242 0042 B4F81E37 		ldrh	r3, [r4, #1822]
 6243 0046 B4F82027 		ldrh	r2, [r4, #1824]
 6244 004a 9A42     		cmp	r2, r3
 6245 004c B4F82227 		ldrh	r2, [r4, #1826]
 6246 0050 38BF     		it	cc
 6247 0052 A4F82037 		strhcc	r3, [r4, #1824]	@ movhi
 6248 0056 9A42     		cmp	r2, r3
 6249 0058 02D9     		bls	.L1121
 6250 005a 0BB1     		cbz	r3, .L1121
 6251 005c A4F82237 		strh	r3, [r4, #1826]	@ movhi
 6252              	.L1121:
 6253 0060 D4F81037 		ldr	r3, [r4, #1808]
 6254 0064 40F2EA32 		movw	r2, #1002
 6255 0068 9342     		cmp	r3, r2
 6256 006a 09D0     		beq	.L1123
 6257 006c D4F82C37 		ldr	r3, [r4, #1836]
 6258 0070 3BB9     		cbnz	r3, .L1134
 6259              	.L1125:
 6260 0072 2046     		mov	r0, r4
 6261 0074 04F1B001 		add	r1, r4, #176
 6262 0078 BDE83840 		pop	{r3, r4, r5, lr}
 6263 007c FFF7FEBF 		b	_ZN8Platform11ClassReportERf
 6264              	.L1123:
 6265 0080 FEE7     		b	.L1123
 6266              	.L1134:
 6267 0082 FFF7FEFF 		bl	millis
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 111


 6268 0086 D4F83037 		ldr	r3, [r4, #1840]
 6269 008a C01A     		subs	r0, r0, r3
 6270 008c B0F57A7F 		cmp	r0, #1000
 6271 0090 EFD3     		bcc	.L1125
 6272 0092 D4F82C27 		ldr	r2, [r4, #1836]
 6273 0096 03F57A73 		add	r3, r3, #1000
 6274 009a 0132     		adds	r2, r2, #1
 6275 009c C4F83037 		str	r3, [r4, #1840]
 6276 00a0 C4F82C27 		str	r2, [r4, #1836]
 6277 00a4 2046     		mov	r0, r4
 6278 00a6 04F1B001 		add	r1, r4, #176
 6279 00aa BDE83840 		pop	{r3, r4, r5, lr}
 6280 00ae FFF7FEBF 		b	_ZN8Platform11ClassReportERf
 6281              	.L1115:
 6282 00b2 38BD     		pop	{r3, r4, r5, pc}
 6283              		.size	_ZN8Platform4SpinEv, .-_ZN8Platform4SpinEv
 6284              		.section	.text._ZN8Platform14UpdateFirmwareEv,"ax",%progbits
 6285              		.align	2
 6286              		.global	_ZN8Platform14UpdateFirmwareEv
 6287              		.thumb
 6288              		.thumb_func
 6289              		.type	_ZN8Platform14UpdateFirmwareEv, %function
 6290              	_ZN8Platform14UpdateFirmwareEv:
 6291              		@ args = 0, pretend = 0, frame = 256
 6292              		@ frame_needed = 0, uses_anonymous_args = 0
 6293 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 6294 0004 8349     		ldr	r1, .L1167
 6295 0006 C2B0     		sub	sp, sp, #264
 6296 0008 834A     		ldr	r2, .L1167+4
 6297 000a 0023     		movs	r3, #0
 6298 000c 8246     		mov	r10, r0
 6299 000e FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 6300 0012 8146     		mov	r9, r0
 6301 0014 0028     		cmp	r0, #0
 6302 0016 00F0EB80 		beq	.L1162
 6303 001a 8048     		ldr	r0, .L1167+8
 6304 001c FFF7FEFF 		bl	_ZN6RepRap13EmergencyStopEv
 6305 0020 7F4E     		ldr	r6, .L1167+12
 6306 0022 DFF83482 		ldr	r8, .L1167+68
 6307 0026 4FF47024 		mov	r4, #983040
 6308 002a 18E0     		b	.L1144
 6309              	.L1151:
 6310 002c 7D4B     		ldr	r3, .L1167+16
 6311              	.L1140:
 6312 002e 0122     		movs	r2, #1
 6313 0030 88F80020 		strb	r2, [r8]
 6314              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 6315 0034 BFF35F8F 		dmb
 6316              	@ 0 "" 2
 6317              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 6318 0038 62B6     		cpsie i
 6319              	@ 0 "" 2
 6320              		.thumb
 6321 003a 0028     		cmp	r0, #0
 6322 003c 40F0C580 		bne	.L1163
 6323 0040 2A46     		mov	r2, r5
 6324 0042 2046     		mov	r0, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 112


 6325 0044 02A9     		add	r1, sp, #8
 6326 0046 FFF7FEFF 		bl	memcmp
 6327 004a 0028     		cmp	r0, #0
 6328 004c 40F0C780 		bne	.L1164
 6329 0050 754B     		ldr	r3, .L1167+20
 6330 0052 04F58074 		add	r4, r4, #256
 6331 0056 9C42     		cmp	r4, r3
 6332 0058 06F58076 		add	r6, r6, #256
 6333 005c 59D0     		beq	.L1165
 6334              	.L1144:
 6335 005e 4846     		mov	r0, r9
 6336 0060 02A9     		add	r1, sp, #8
 6337 0062 4FF48072 		mov	r2, #256
 6338 0066 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 6339 006a 051E     		subs	r5, r0, #0
 6340 006c 29DD     		ble	.L1138
 6341 006e B5F5807F 		cmp	r5, #256
 6342 0072 06D0     		beq	.L1139
 6343 0074 02A8     		add	r0, sp, #8
 6344 0076 2844     		add	r0, r0, r5
 6345 0078 0021     		movs	r1, #0
 6346 007a C5F58072 		rsb	r2, r5, #256
 6347 007e FFF7FEFF 		bl	memset
 6348              	.L1139:
 6349              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 6350 0082 72B6     		cpsid i
 6351              	@ 0 "" 2
 6352              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 6353 0084 BFF35F8F 		dmb
 6354              	@ 0 "" 2
 6355              		.thumb
 6356 0088 0027     		movs	r7, #0
 6357 008a 3A46     		mov	r2, r7
 6358 008c 2046     		mov	r0, r4
 6359 008e 3146     		mov	r1, r6
 6360 0090 3B46     		mov	r3, r7
 6361 0092 88F80070 		strb	r7, [r8]
 6362 0096 FFF7FEFF 		bl	flash_unlock
 6363 009a 0028     		cmp	r0, #0
 6364 009c C6D1     		bne	.L1151
 6365 009e 2046     		mov	r0, r4
 6366 00a0 02A9     		add	r1, sp, #8
 6367 00a2 4FF48072 		mov	r2, #256
 6368 00a6 0123     		movs	r3, #1
 6369 00a8 FFF7FEFF 		bl	flash_write
 6370 00ac 0028     		cmp	r0, #0
 6371 00ae 40F0AE80 		bne	.L1152
 6372 00b2 0346     		mov	r3, r0
 6373 00b4 0246     		mov	r2, r0
 6374 00b6 3146     		mov	r1, r6
 6375 00b8 2046     		mov	r0, r4
 6376 00ba FFF7FEFF 		bl	flash_lock
 6377 00be 5B4B     		ldr	r3, .L1167+24
 6378 00c0 B5E7     		b	.L1140
 6379              	.L1138:
 6380 00c2 0023     		movs	r3, #0
 6381 00c4 0293     		str	r3, [sp, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 113


 6382              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 6383 00c6 72B6     		cpsid i
 6384              	@ 0 "" 2
 6385              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 6386 00c8 BFF35F8F 		dmb
 6387              	@ 0 "" 2
 6388              		.thumb
 6389 00cc 0025     		movs	r5, #0
 6390 00ce 3146     		mov	r1, r6
 6391 00d0 2A46     		mov	r2, r5
 6392 00d2 2B46     		mov	r3, r5
 6393 00d4 2046     		mov	r0, r4
 6394 00d6 88F80050 		strb	r5, [r8]
 6395 00da FFF7FEFF 		bl	flash_unlock
 6396 00de 02A9     		add	r1, sp, #8
 6397 00e0 2046     		mov	r0, r4
 6398 00e2 4FF48072 		mov	r2, #256
 6399 00e6 0123     		movs	r3, #1
 6400 00e8 FFF7FEFF 		bl	flash_write
 6401 00ec 2B46     		mov	r3, r5
 6402 00ee 2046     		mov	r0, r4
 6403 00f0 3146     		mov	r1, r6
 6404 00f2 2A46     		mov	r2, r5
 6405 00f4 FFF7FEFF 		bl	flash_lock
 6406 00f8 0123     		movs	r3, #1
 6407 00fa 88F80030 		strb	r3, [r8]
 6408              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 6409 00fe BFF35F8F 		dmb
 6410              	@ 0 "" 2
 6411              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 6412 0102 62B6     		cpsie i
 6413              	@ 0 "" 2
 6414              		.thumb
 6415 0104 484B     		ldr	r3, .L1167+20
 6416 0106 04F58074 		add	r4, r4, #256
 6417 010a 9C42     		cmp	r4, r3
 6418 010c 06F58076 		add	r6, r6, #256
 6419 0110 A5D1     		bne	.L1144
 6420              	.L1165:
 6421 0112 4846     		mov	r0, r9
 6422 0114 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 6423 0118 5046     		mov	r0, r10
 6424 011a 0721     		movs	r1, #7
 6425 011c 444A     		ldr	r2, .L1167+28
 6426 011e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6427 0122 FFF7FEFF 		bl	millis
 6428 0126 0446     		mov	r4, r0
 6429              	.L1146:
 6430 0128 5046     		mov	r0, r10
 6431 012a FFF7FEFF 		bl	_ZN8Platform13FlushMessagesEv
 6432 012e 0028     		cmp	r0, #0
 6433 0130 66D1     		bne	.L1166
 6434              	.L1145:
 6435 0132 3A48     		ldr	r0, .L1167+8
 6436 0134 FFF7FEFF 		bl	_ZN6RepRap4ExitEv
 6437 0138 3E4B     		ldr	r3, .L1167+32
 6438 013a 0422     		movs	r2, #4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 114


 6439 013c 1A60     		str	r2, [r3]
 6440              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 6441 013e 72B6     		cpsid i
 6442              	@ 0 "" 2
 6443              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 6444 0140 BFF35F8F 		dmb
 6445              	@ 0 "" 2
 6446              		.thumb
 6447 0144 0023     		movs	r3, #0
 6448 0146 88F80030 		strb	r3, [r8]
 6449 014a 4FF0FF31 		mov	r1, #-1
 6450              	.L1150:
 6451 014e 9A00     		lsls	r2, r3, #2
 6452 0150 02F16042 		add	r2, r2, #-536870912
 6453 0154 0133     		adds	r3, r3, #1
 6454 0156 02F56142 		add	r2, r2, #57600
 6455 015a 082B     		cmp	r3, #8
 6456 015c C2F88010 		str	r1, [r2, #128]
 6457 0160 C2F88011 		str	r1, [r2, #384]
 6458 0164 F3D1     		bne	.L1150
 6459 0166 4FF47023 		mov	r3, #983040
 6460 016a 1D68     		ldr	r5, [r3]
 6461 016c 324B     		ldr	r3, .L1167+36
 6462 016e 05F11A02 		add	r2, r5, #26
 6463 0172 9A42     		cmp	r2, r3
 6464 0174 0AD8     		bhi	.L1148
 6465 0176 314C     		ldr	r4, .L1167+40
 6466 0178 0FCC     		ldmia	r4!, {r0, r1, r2, r3}
 6467 017a 2860     		str	r0, [r5]	@ unaligned
 6468 017c 6960     		str	r1, [r5, #4]	@ unaligned
 6469 017e 03CC     		ldmia	r4!, {r0, r1}
 6470 0180 2488     		ldrh	r4, [r4]	@ unaligned
 6471 0182 AA60     		str	r2, [r5, #8]	@ unaligned
 6472 0184 EB60     		str	r3, [r5, #12]	@ unaligned
 6473 0186 2C83     		strh	r4, [r5, #24]	@ unaligned
 6474 0188 2861     		str	r0, [r5, #16]	@ unaligned
 6475 018a 6961     		str	r1, [r5, #20]	@ unaligned
 6476              	.L1148:
 6477 018c 2C48     		ldr	r0, .L1167+44
 6478 018e FFF7FEFF 		bl	wdt_restart
 6479              	@ 445 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 6480 0192 BFF34F8F 		dsb
 6481              	@ 0 "" 2
 6482              	@ 434 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 6483 0196 BFF36F8F 		isb
 6484              	@ 0 "" 2
 6485              		.thumb
 6486 019a 2A4B     		ldr	r3, .L1167+48
 6487 019c 4FF47022 		mov	r2, #983040
 6488 01a0 9A60     		str	r2, [r3, #8]
 6489              	@ 445 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 6490 01a2 BFF34F8F 		dsb
 6491              	@ 0 "" 2
 6492              	@ 434 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 6493 01a6 BFF36F8F 		isb
 6494              	@ 0 "" 2
 6495              		.thumb
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 115


 6496 01aa 0123     		movs	r3, #1
 6497 01ac 88F80030 		strb	r3, [r8]
 6498              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 6499 01b0 BFF35F8F 		dmb
 6500              	@ 0 "" 2
 6501              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 6502 01b4 62B6     		cpsie i
 6503              	@ 0 "" 2
 6504              	@ 1015 "../src/Platform.cpp" 1
 6505 01b6 1346     		mov r3, r2
 6506              	@ 0 "" 2
 6507              	@ 1016 "../src/Platform.cpp" 1
 6508 01b8 D3F800D0 		ldr sp, [r3]
 6509              	@ 0 "" 2
 6510              	@ 1017 "../src/Platform.cpp" 1
 6511 01bc 5968     		ldr r1, [r3, #4]
 6512              	@ 0 "" 2
 6513              	@ 1018 "../src/Platform.cpp" 1
 6514 01be 41F00101 		orr r1, r1, #1
 6515              	@ 0 "" 2
 6516              	@ 1019 "../src/Platform.cpp" 1
 6517 01c2 0847     		bx r1
 6518              	@ 0 "" 2
 6519              		.thumb
 6520 01c4 42B0     		add	sp, sp, #264
 6521              		@ sp needed
 6522 01c6 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 6523              	.L1163:
 6524 01ca 8DE81100 		stmia	sp, {r0, r4}
 6525 01ce 0721     		movs	r1, #7
 6526 01d0 5046     		mov	r0, r10
 6527 01d2 1D4A     		ldr	r2, .L1167+52
 6528 01d4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6529 01d8 42B0     		add	sp, sp, #264
 6530              		@ sp needed
 6531 01da BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 6532              	.L1164:
 6533 01de 5046     		mov	r0, r10
 6534 01e0 2346     		mov	r3, r4
 6535 01e2 0721     		movs	r1, #7
 6536 01e4 194A     		ldr	r2, .L1167+56
 6537 01e6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6538 01ea 42B0     		add	sp, sp, #264
 6539              		@ sp needed
 6540 01ec BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 6541              	.L1162:
 6542 01f0 5046     		mov	r0, r10
 6543 01f2 0721     		movs	r1, #7
 6544 01f4 164A     		ldr	r2, .L1167+60
 6545 01f6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6546 01fa 42B0     		add	sp, sp, #264
 6547              		@ sp needed
 6548 01fc BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 6549              	.L1166:
 6550 0200 FFF7FEFF 		bl	millis
 6551 0204 001B     		subs	r0, r0, r4
 6552 0206 B0F5FA6F 		cmp	r0, #2000
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 116


 6553 020a 92D2     		bcs	.L1145
 6554 020c 8CE7     		b	.L1146
 6555              	.L1152:
 6556 020e 114B     		ldr	r3, .L1167+64
 6557 0210 0DE7     		b	.L1140
 6558              	.L1168:
 6559 0212 00BF     		.align	2
 6560              	.L1167:
 6561 0214 DC000000 		.word	.LC16
 6562 0218 60010000 		.word	.LC20
 6563 021c 00000000 		.word	reprap
 6564 0220 FF000F00 		.word	983295
 6565 0224 30020000 		.word	.LC28
 6566 0228 00FC0F00 		.word	1047552
 6567 022c 38020000 		.word	.LC29
 6568 0230 C8020000 		.word	.LC34
 6569 0234 10E000E0 		.word	-536813552
 6570 0238 00800820 		.word	537427968
 6571 023c E0020000 		.word	.LC35
 6572 0240 501A0E40 		.word	1074666064
 6573 0244 00ED00E0 		.word	-536810240
 6574 0248 58020000 		.word	.LC32
 6575 024c 8C020000 		.word	.LC33
 6576 0250 48020000 		.word	.LC31
 6577 0254 40020000 		.word	.LC30
 6578 0258 00000000 		.word	g_interrupt_enabled
 6579              		.size	_ZN8Platform14UpdateFirmwareEv, .-_ZN8Platform14UpdateFirmwareEv
 6580              		.global	__aeabi_f2uiz
 6581              		.section	.text._ZN8Platform11DiagnosticsE11MessageType,"ax",%progbits
 6582              		.align	2
 6583              		.global	_ZN8Platform11DiagnosticsE11MessageType
 6584              		.thumb
 6585              		.thumb_func
 6586              		.type	_ZN8Platform11DiagnosticsE11MessageType, %function
 6587              	_ZN8Platform11DiagnosticsE11MessageType:
 6588              		@ args = 0, pretend = 0, frame = 584
 6589              		@ frame_needed = 0, uses_anonymous_args = 0
 6590 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 6591 0004 B84A     		ldr	r2, .L1195+32
 6592 0006 ADF5187D 		sub	sp, sp, #608
 6593 000a 0646     		mov	r6, r0
 6594 000c 0F46     		mov	r7, r1
 6595 000e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6596 0012 11A8     		add	r0, sp, #68
 6597 0014 FFF7FEFF 		bl	mallinfo
 6598 0018 3046     		mov	r0, r6
 6599 001a 3946     		mov	r1, r7
 6600 001c B34A     		ldr	r2, .L1195+36
 6601 001e B44B     		ldr	r3, .L1195+40
 6602 0020 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6603 0024 3046     		mov	r0, r6
 6604 0026 3946     		mov	r1, r7
 6605 0028 189B     		ldr	r3, [sp, #96]
 6606 002a B24A     		ldr	r2, .L1195+44
 6607 002c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6608 0030 3046     		mov	r0, r6
 6609 0032 3946     		mov	r1, r7
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 117


 6610 0034 199B     		ldr	r3, [sp, #100]
 6611 0036 B04A     		ldr	r2, .L1195+48
 6612 0038 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6613 003c 3046     		mov	r0, r6
 6614 003e 06A9     		add	r1, sp, #24
 6615 0040 07AA     		add	r2, sp, #28
 6616 0042 08AB     		add	r3, sp, #32
 6617 0044 FFF7FEFF 		bl	_ZNK8Platform13GetStackUsageEPmS0_S0_
 6618 0048 079A     		ldr	r2, [sp, #28]
 6619 004a 069B     		ldr	r3, [sp, #24]
 6620 004c 0092     		str	r2, [sp]
 6621 004e 3046     		mov	r0, r6
 6622 0050 3946     		mov	r1, r7
 6623 0052 AA4A     		ldr	r2, .L1195+52
 6624 0054 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6625 0058 3946     		mov	r1, r7
 6626 005a 089B     		ldr	r3, [sp, #32]
 6627 005c A84A     		ldr	r2, .L1195+56
 6628 005e 3046     		mov	r0, r6
 6629 0060 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6630 0064 3046     		mov	r0, r6
 6631 0066 FFF7FEFF 		bl	_ZN8Platform4TimeEv
 6632 006a FFF7FEFF 		bl	__aeabi_f2uiz
 6633 006e A54D     		ldr	r5, .L1195+60
 6634 0070 0DF1240C 		add	ip, sp, #36
 6635 0074 A5FB0018 		umull	r1, r8, r5, r0
 6636 0078 A34D     		ldr	r5, .L1195+64
 6637 007a 6446     		mov	r4, ip
 6638 007c 8646     		mov	lr, r0
 6639 007e 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 6640 0080 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 6641 0082 95E80F00 		ldmia	r5, {r0, r1, r2, r3}
 6642 0086 4FF4616A 		mov	r10, #3600
 6643 008a 4FEAD825 		lsr	r5, r8, #11
 6644 008e 0AFB15EA 		mls	r10, r10, r5, lr
 6645 0092 DFF8A882 		ldr	r8, .L1195+116
 6646 0096 84E80F00 		stmia	r4, {r0, r1, r2, r3}
 6647 009a DFF8A492 		ldr	r9, .L1195+120
 6648 009e A8FB0E23 		umull	r2, r3, r8, lr
 6649 00a2 D9F80020 		ldr	r2, [r9]
 6650 00a6 A8FB0A18 		umull	r1, r8, r8, r10
 6651 00aa 5B09     		lsrs	r3, r3, #5
 6652 00ac C2F30222 		ubfx	r2, r2, #8, #3
 6653 00b0 5CF82220 		ldr	r2, [ip, r2, lsl #2]
 6654 00b4 C3EB0313 		rsb	r3, r3, r3, lsl #4
 6655 00b8 AEEB8303 		sub	r3, lr, r3, lsl #2
 6656 00bc 4FEA5811 		lsr	r1, r8, #5
 6657 00c0 8DE80A00 		stmia	sp, {r1, r3}
 6658 00c4 0292     		str	r2, [sp, #8]
 6659 00c6 2B46     		mov	r3, r5
 6660 00c8 3046     		mov	r0, r6
 6661 00ca 3946     		mov	r1, r7
 6662 00cc 8F4A     		ldr	r2, .L1195+68
 6663 00ce FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6664 00d2 0021     		movs	r1, #0
 6665 00d4 4FF4FA72 		mov	r2, #500
 6666 00d8 1BA8     		add	r0, sp, #108
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 118


 6667 00da FFF7FEFF 		bl	memset
 6668 00de 1BA9     		add	r1, sp, #108
 6669 00e0 0020     		movs	r0, #0
 6670 00e2 4FF4FA72 		mov	r2, #500
 6671 00e6 FFF7FEFF 		bl	_ZN15DueFlashStorage4readEmPvm
 6672 00ea 4FF00409 		mov	r9, #4
 6673 00ee 1BAB     		add	r3, sp, #108
 6674 00f0 4FF6FF71 		movw	r1, #65535
 6675              	.L1170:
 6676 00f4 B3F89021 		ldrh	r2, [r3, #400]
 6677 00f8 643B     		subs	r3, r3, #100
 6678 00fa 8A42     		cmp	r2, r1
 6679 00fc 40F04281 		bne	.L1194
 6680 0100 19F1FF39 		adds	r9, r9, #-1
 6681 0104 F6D2     		bcs	.L1170
 6682 0106 3046     		mov	r0, r6
 6683 0108 3946     		mov	r1, r7
 6684 010a 814A     		ldr	r2, .L1195+72
 6685 010c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6686              	.L1184:
 6687 0110 3046     		mov	r0, r6
 6688 0112 3946     		mov	r1, r7
 6689 0114 7F4A     		ldr	r2, .L1195+76
 6690 0116 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6691              	.L1177:
 6692 011a 7F4A     		ldr	r2, .L1195+80
 6693 011c D6F8C030 		ldr	r3, [r6, #192]
 6694 0120 3046     		mov	r0, r6
 6695 0122 3946     		mov	r1, r7
 6696 0124 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6697 0128 0022     		movs	r2, #0
 6698 012a 1346     		mov	r3, r2
 6699              	.L1180:
 6700 012c B118     		adds	r1, r6, r2
 6701 012e D1F8B816 		ldr	r1, [r1, #1720]
 6702 0132 0432     		adds	r2, r2, #4
 6703 0134 91F82D10 		ldrb	r1, [r1, #45]	@ zero_extendqisi2
 6704 0138 01B9     		cbnz	r1, .L1178
 6705 013a 0133     		adds	r3, r3, #1
 6706              	.L1178:
 6707 013c 282A     		cmp	r2, #40
 6708 013e F5D1     		bne	.L1180
 6709 0140 764A     		ldr	r2, .L1195+84
 6710 0142 3946     		mov	r1, r7
 6711 0144 3046     		mov	r0, r6
 6712 0146 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6713 014a 0020     		movs	r0, #0
 6714 014c FFF7FEFF 		bl	sd_mmc_card_detected
 6715 0150 734C     		ldr	r4, .L1195+88
 6716 0152 744B     		ldr	r3, .L1195+92
 6717 0154 0028     		cmp	r0, #0
 6718 0156 18BF     		it	ne
 6719 0158 1C46     		movne	r4, r3
 6720 015a FFF7FEFF 		bl	hsmci_get_speed
 6721 015e FFF7FEFF 		bl	__aeabi_ui2f
 6722 0162 FFF7FEFF 		bl	__aeabi_f2d
 6723 0166 58A3     		adr	r3, .L1195
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 119


 6724 0168 D3E90023 		ldrd	r2, [r3]
 6725 016c FFF7FEFF 		bl	__aeabi_ddiv
 6726 0170 2346     		mov	r3, r4
 6727 0172 6D4A     		ldr	r2, .L1195+96
 6728 0174 CDE90001 		strd	r0, [sp]
 6729 0178 3946     		mov	r1, r7
 6730 017a 3046     		mov	r0, r6
 6731 017c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6732 0180 FFF7FEFF 		bl	_ZN9FileStore27GetAndClearLongestWriteTimeEv
 6733 0184 FFF7FEFF 		bl	__aeabi_f2d
 6734 0188 684A     		ldr	r2, .L1195+100
 6735 018a CDE90001 		strd	r0, [sp]
 6736 018e 3046     		mov	r0, r6
 6737 0190 3946     		mov	r1, r7
 6738 0192 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6739 0196 D6F82807 		ldr	r0, [r6, #1832]	@ float
 6740 019a FFF7FEFF 		bl	__aeabi_f2d
 6741 019e 0446     		mov	r4, r0
 6742 01a0 B6F82207 		ldrh	r0, [r6, #1826]
 6743 01a4 0D46     		mov	r5, r1
 6744 01a6 FFF7FEFF 		bl	__aeabi_ui2f
 6745 01aa FFF7FEFF 		bl	__aeabi_f2d
 6746 01ae 48A3     		adr	r3, .L1195+8
 6747 01b0 D3E90023 		ldrd	r2, [r3]
 6748 01b4 FFF7FEFF 		bl	__aeabi_dmul
 6749 01b8 FFF7FEFF 		bl	__aeabi_d2f
 6750 01bc FFF7FEFF 		bl	__aeabi_f2d
 6751 01c0 45A3     		adr	r3, .L1195+16
 6752 01c2 D3E90023 		ldrd	r2, [r3]
 6753 01c6 FFF7FEFF 		bl	__aeabi_dsub
 6754 01ca 45A3     		adr	r3, .L1195+24
 6755 01cc D3E90023 		ldrd	r2, [r3]
 6756 01d0 FFF7FEFF 		bl	__aeabi_dmul
 6757 01d4 0022     		movs	r2, #0
 6758 01d6 564B     		ldr	r3, .L1195+104
 6759 01d8 FFF7FEFF 		bl	__aeabi_dadd
 6760 01dc 2246     		mov	r2, r4
 6761 01de 2B46     		mov	r3, r5
 6762 01e0 FFF7FEFF 		bl	__aeabi_dadd
 6763 01e4 FFF7FEFF 		bl	__aeabi_d2f
 6764 01e8 FFF7FEFF 		bl	__aeabi_f2d
 6765 01ec CDE90001 		strd	r0, [sp]
 6766 01f0 B6F81E07 		ldrh	r0, [r6, #1822]
 6767 01f4 FFF7FEFF 		bl	__aeabi_ui2f
 6768 01f8 FFF7FEFF 		bl	__aeabi_f2d
 6769 01fc 34A3     		adr	r3, .L1195+8
 6770 01fe D3E90023 		ldrd	r2, [r3]
 6771 0202 FFF7FEFF 		bl	__aeabi_dmul
 6772 0206 FFF7FEFF 		bl	__aeabi_d2f
 6773 020a FFF7FEFF 		bl	__aeabi_f2d
 6774 020e 32A3     		adr	r3, .L1195+16
 6775 0210 D3E90023 		ldrd	r2, [r3]
 6776 0214 FFF7FEFF 		bl	__aeabi_dsub
 6777 0218 31A3     		adr	r3, .L1195+24
 6778 021a D3E90023 		ldrd	r2, [r3]
 6779 021e FFF7FEFF 		bl	__aeabi_dmul
 6780 0222 0022     		movs	r2, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 120


 6781 0224 424B     		ldr	r3, .L1195+104
 6782 0226 FFF7FEFF 		bl	__aeabi_dadd
 6783 022a 0246     		mov	r2, r0
 6784 022c 0B46     		mov	r3, r1
 6785 022e 2046     		mov	r0, r4
 6786 0230 2946     		mov	r1, r5
 6787 0232 FFF7FEFF 		bl	__aeabi_dadd
 6788 0236 FFF7FEFF 		bl	__aeabi_d2f
 6789 023a FFF7FEFF 		bl	__aeabi_f2d
 6790 023e CDE90201 		strd	r0, [sp, #8]
 6791 0242 B6F82007 		ldrh	r0, [r6, #1824]
 6792 0246 FFF7FEFF 		bl	__aeabi_ui2f
 6793 024a FFF7FEFF 		bl	__aeabi_f2d
 6794 024e 20A3     		adr	r3, .L1195+8
 6795 0250 D3E90023 		ldrd	r2, [r3]
 6796 0254 FFF7FEFF 		bl	__aeabi_dmul
 6797 0258 FFF7FEFF 		bl	__aeabi_d2f
 6798 025c FFF7FEFF 		bl	__aeabi_f2d
 6799 0260 1DA3     		adr	r3, .L1195+16
 6800 0262 D3E90023 		ldrd	r2, [r3]
 6801 0266 FFF7FEFF 		bl	__aeabi_dsub
 6802 026a 1DA3     		adr	r3, .L1195+24
 6803 026c D3E90023 		ldrd	r2, [r3]
 6804 0270 FFF7FEFF 		bl	__aeabi_dmul
 6805 0274 0022     		movs	r2, #0
 6806 0276 2E4B     		ldr	r3, .L1195+104
 6807 0278 FFF7FEFF 		bl	__aeabi_dadd
 6808 027c 0B46     		mov	r3, r1
 6809 027e 0246     		mov	r2, r0
 6810 0280 2946     		mov	r1, r5
 6811 0282 2046     		mov	r0, r4
 6812 0284 FFF7FEFF 		bl	__aeabi_dadd
 6813 0288 FFF7FEFF 		bl	__aeabi_d2f
 6814 028c FFF7FEFF 		bl	__aeabi_f2d
 6815 0290 284A     		ldr	r2, .L1195+108
 6816 0292 CDE90401 		strd	r0, [sp, #16]
 6817 0296 3046     		mov	r0, r6
 6818 0298 3946     		mov	r1, r7
 6819 029a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6820 029e B6F81E37 		ldrh	r3, [r6, #1822]
 6821 02a2 3046     		mov	r0, r6
 6822 02a4 3946     		mov	r1, r7
 6823 02a6 A6F82037 		strh	r3, [r6, #1824]	@ movhi
 6824 02aa A6F82237 		strh	r3, [r6, #1826]	@ movhi
 6825 02ae 224A     		ldr	r2, .L1195+112
 6826 02b0 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6827 02b4 06F22C70 		addw	r0, r6, #1836
 6828 02b8 1BA9     		add	r1, sp, #108
 6829 02ba FFF7FEFF 		bl	gmtime_r
 6830 02be 0028     		cmp	r0, #0
 6831 02c0 5AD0     		beq	.L1182
 6832 02c2 3FE0     		b	.L1196
 6833              	.L1197:
 6834 02c4 AFF30080 		.align	3
 6835              	.L1195:
 6836 02c8 00000000 		.word	0
 6837 02cc 80842E41 		.word	1093567616
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 121


 6838 02d0 66666666 		.word	1717986918
 6839 02d4 66664A3F 		.word	1061840486
 6840 02d8 9A999999 		.word	-1717986918
 6841 02dc 9999E93F 		.word	1072273817
 6842 02e0 E8909A60 		.word	1620742376
 6843 02e4 BC957740 		.word	1081578940
 6844 02e8 18030000 		.word	.LC38
 6845 02ec 2C030000 		.word	.LC39
 6846 02f0 0000F9DF 		.word	_end-537329664
 6847 02f4 44030000 		.word	.LC40
 6848 02f8 5C030000 		.word	.LC41
 6849 02fc 78030000 		.word	.LC42
 6850 0300 A0030000 		.word	.LC43
 6851 0304 C5B3A291 		.word	-1851608123
 6852 0308 00000000 		.word	.LANCHOR26
 6853 030c B4030000 		.word	.LC45
 6854 0310 90050000 		.word	.LC59
 6855 0314 8C040000 		.word	.LC50
 6856 0318 9C040000 		.word	.LC51
 6857 031c B0040000 		.word	.LC52
 6858 0320 08030000 		.word	.LC37
 6859 0324 FC020000 		.word	.LC36
 6860 0328 C8040000 		.word	.LC53
 6861 032c F8040000 		.word	.LC54
 6862 0330 00003B40 		.word	1077608448
 6863 0334 24050000 		.word	.LC55
 6864 0338 58050000 		.word	.LC56
 6865 033c 89888888 		.word	-2004318071
 6866 0340 041A0E40 		.word	1074665988
 6867              	.L1196:
 6868 0344 1F98     		ldr	r0, [sp, #124]
 6869 0346 1B9A     		ldr	r2, [sp, #108]
 6870 0348 209B     		ldr	r3, [sp, #128]
 6871 034a 1CA9     		add	r1, sp, #112
 6872 034c 32C9     		ldmia	r1, {r1, r4, r5}
 6873 034e 0492     		str	r2, [sp, #16]
 6874 0350 421C     		adds	r2, r0, #1
 6875 0352 0092     		str	r2, [sp]
 6876 0354 0391     		str	r1, [sp, #12]
 6877 0356 3046     		mov	r0, r6
 6878 0358 03F26C73 		addw	r3, r3, #1900
 6879 035c 0195     		str	r5, [sp, #4]
 6880 035e 0294     		str	r4, [sp, #8]
 6881 0360 3946     		mov	r1, r7
 6882 0362 324A     		ldr	r2, .L1198
 6883 0364 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6884              	.L1183:
 6885 0368 3946     		mov	r1, r7
 6886 036a 3148     		ldr	r0, .L1198+4
 6887 036c FFF7FEFF 		bl	_ZN6RepRap6TimingE11MessageType
 6888 0370 0DF5187D 		add	sp, sp, #608
 6889              		@ sp needed
 6890 0374 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 6891              	.L1182:
 6892 0378 3046     		mov	r0, r6
 6893 037a 3946     		mov	r1, r7
 6894 037c 2D4A     		ldr	r2, .L1198+8
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 122


 6895 037e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6896 0382 F1E7     		b	.L1183
 6897              	.L1194:
 6898 0384 4FF06408 		mov	r8, #100
 6899 0388 08FB09F8 		mul	r8, r8, r9
 6900 038c 3946     		mov	r1, r7
 6901 038e 2A4A     		ldr	r2, .L1198+12
 6902 0390 3046     		mov	r0, r6
 6903 0392 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6904 0396 1BAB     		add	r3, sp, #108
 6905 0398 33F80820 		ldrh	r2, [r3, r8]
 6906 039c 47F60753 		movw	r3, #32007
 6907 03a0 1BA9     		add	r1, sp, #108
 6908 03a2 9A42     		cmp	r2, r3
 6909 03a4 8844     		add	r8, r8, r1
 6910 03a6 7FF4B3AE 		bne	.L1184
 6911 03aa D8F80850 		ldr	r5, [r8, #8]
 6912 03ae D8F80C40 		ldr	r4, [r8, #12]
 6913 03b2 08F11000 		add	r0, r8, #16
 6914 03b6 07C8     		ldmia	r0, {r0, r1, r2}
 6915 03b8 B8F80230 		ldrh	r3, [r8, #2]
 6916 03bc 0290     		str	r0, [sp, #8]
 6917 03be 0391     		str	r1, [sp, #12]
 6918 03c0 0492     		str	r2, [sp, #16]
 6919 03c2 0095     		str	r5, [sp]
 6920 03c4 0194     		str	r4, [sp, #4]
 6921 03c6 3046     		mov	r0, r6
 6922 03c8 3946     		mov	r1, r7
 6923 03ca 1C4A     		ldr	r2, .L1198+16
 6924 03cc FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6925 03d0 D8F81830 		ldr	r3, [r8, #24]
 6926 03d4 0133     		adds	r3, r3, #1
 6927 03d6 15D0     		beq	.L1174
 6928 03d8 194A     		ldr	r2, .L1198+20
 6929 03da 0023     		movs	r3, #0
 6930 03dc 1268     		ldr	r2, [r2]
 6931 03de 1C46     		mov	r4, r3
 6932 03e0 1370     		strb	r3, [r2]
 6933              	.L1176:
 6934 03e2 174D     		ldr	r5, .L1198+20
 6935 03e4 08EB0403 		add	r3, r8, r4
 6936 03e8 2846     		mov	r0, r5
 6937 03ea DA69     		ldr	r2, [r3, #28]
 6938 03ec 0434     		adds	r4, r4, #4
 6939 03ee 1549     		ldr	r1, .L1198+24
 6940 03f0 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 6941 03f4 482C     		cmp	r4, #72
 6942 03f6 F4D1     		bne	.L1176
 6943 03f8 2B68     		ldr	r3, [r5]
 6944 03fa 3046     		mov	r0, r6
 6945 03fc 3946     		mov	r1, r7
 6946 03fe 124A     		ldr	r2, .L1198+28
 6947 0400 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6948              	.L1174:
 6949 0404 1BAA     		add	r2, sp, #108
 6950 0406 6423     		movs	r3, #100
 6951 0408 03FB0923 		mla	r3, r3, r9, r2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 123


 6952 040c 5888     		ldrh	r0, [r3, #2]
 6953 040e 5A68     		ldr	r2, [r3, #4]
 6954 0410 0E49     		ldr	r1, .L1198+32
 6955 0412 00F00F00 		and	r0, r0, #15
 6956 0416 51F82030 		ldr	r3, [r1, r0, lsl #2]
 6957 041a 8DE80402 		stmia	sp, {r2, r9}
 6958 041e 3046     		mov	r0, r6
 6959 0420 3946     		mov	r1, r7
 6960 0422 0B4A     		ldr	r2, .L1198+36
 6961 0424 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6962 0428 77E6     		b	.L1177
 6963              	.L1199:
 6964 042a 00BF     		.align	2
 6965              	.L1198:
 6966 042c 64050000 		.word	.LC57
 6967 0430 00000000 		.word	reprap
 6968 0434 84050000 		.word	.LC58
 6969 0438 90050000 		.word	.LC59
 6970 043c E0030000 		.word	.LC46
 6971 0440 00000000 		.word	scratchString
 6972 0444 28040000 		.word	.LC47
 6973 0448 30040000 		.word	.LC48
 6974 044c 00000000 		.word	moduleName
 6975 0450 3C040000 		.word	.LC49
 6976              		.size	_ZN8Platform11DiagnosticsE11MessageType, .-_ZN8Platform11DiagnosticsE11MessageType
 6977 0454 AFF30080 		.section	.rodata
 6978              		.align	2
 6979              		.set	.LANCHOR26,. + 0
 6980              	.LC44:
 6981 0000 E8050000 		.word	.LC0
 6982 0004 F4050000 		.word	.LC1
 6983 0008 FC050000 		.word	.LC2
 6984 000c 08060000 		.word	.LC3
 6985 0010 14060000 		.word	.LC4
 6986 0014 24060000 		.word	.LC5
 6987 0018 24060000 		.word	.LC5
 6988 001c 24060000 		.word	.LC5
 6989              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 6990              		.align	2
 6991              		.type	_ZL32cpu_irq_critical_section_counter, %object
 6992              		.size	_ZL32cpu_irq_critical_section_counter, 4
 6993              	_ZL32cpu_irq_critical_section_counter:
 6994 0000 00000000 		.space	4
 6995              		.section	.rodata._ZL17DefaultMacAddress,"a",%progbits
 6996              		.align	2
 6997              		.set	.LANCHOR14,. + 0
 6998              		.type	_ZL17DefaultMacAddress, %object
 6999              		.size	_ZL17DefaultMacAddress, 6
 7000              	_ZL17DefaultMacAddress:
 7001 0000 BE       		.byte	-66
 7002 0001 EF       		.byte	-17
 7003 0002 DE       		.byte	-34
 7004 0003 AD       		.byte	-83
 7005 0004 FE       		.byte	-2
 7006 0005 ED       		.byte	-19
 7007 0006 0000     		.section	.rodata._ZL11AXIS_MAXIMA,"a",%progbits
 7008              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 124


 7009              		.set	.LANCHOR21,. + 0
 7010              		.type	_ZL11AXIS_MAXIMA, %object
 7011              		.size	_ZL11AXIS_MAXIMA, 24
 7012              	_ZL11AXIS_MAXIMA:
 7013 0000 00006643 		.word	1130758144
 7014 0004 00005243 		.word	1129447424
 7015 0008 00004843 		.word	1128792064
 7016 000c 00000000 		.word	0
 7017 0010 00000000 		.word	0
 7018 0014 00000000 		.word	0
 7019              		.section	.rodata._ZL20DRIVE_STEPS_PER_UNIT,"a",%progbits
 7020              		.align	2
 7021              		.set	.LANCHOR18,. + 0
 7022              		.type	_ZL20DRIVE_STEPS_PER_UNIT, %object
 7023              		.size	_ZL20DRIVE_STEPS_PER_UNIT, 36
 7024              	_ZL20DRIVE_STEPS_PER_UNIT:
 7025 0000 5EFAAE42 		.word	1118763614
 7026 0004 5EFAAE42 		.word	1118763614
 7027 0008 00007A45 		.word	1165623296
 7028 000c 0000D243 		.word	1137836032
 7029 0010 0000D243 		.word	1137836032
 7030 0014 0000D243 		.word	1137836032
 7031 0018 0000D243 		.word	1137836032
 7032 001c 0000D243 		.word	1137836032
 7033 0020 0000D243 		.word	1137836032
 7034              		.section	.rodata._ZL14DefaultGateway,"a",%progbits
 7035              		.align	2
 7036              		.set	.LANCHOR13,. + 0
 7037              		.type	_ZL14DefaultGateway, %object
 7038              		.size	_ZL14DefaultGateway, 4
 7039              	_ZL14DefaultGateway:
 7040 0000 00000000 		.space	4
 7041              		.section	.rodata._ZL13MAX_FEEDRATES,"a",%progbits
 7042              		.align	2
 7043              		.set	.LANCHOR16,. + 0
 7044              		.type	_ZL13MAX_FEEDRATES, %object
 7045              		.size	_ZL13MAX_FEEDRATES, 36
 7046              	_ZL13MAX_FEEDRATES:
 7047 0000 0000C842 		.word	1120403456
 7048 0004 0000C842 		.word	1120403456
 7049 0008 00004040 		.word	1077936128
 7050 000c 0000A041 		.word	1101004800
 7051 0010 0000A041 		.word	1101004800
 7052 0014 0000A041 		.word	1101004800
 7053 0018 0000A041 		.word	1101004800
 7054 001c 0000A041 		.word	1101004800
 7055 0020 0000A041 		.word	1101004800
 7056              		.section	.rodata.CSWTCH.341,"a",%progbits
 7057              		.align	2
 7058              		.set	.LANCHOR7,. + 0
 7059              		.type	CSWTCH.341, %object
 7060              		.size	CSWTCH.341, 12
 7061              	CSWTCH.341:
 7062 0000 C4050000 		.word	.LC63
 7063 0004 D0050000 		.word	.LC64
 7064 0008 DC050000 		.word	.LC65
 7065              		.section	.rodata.CSWTCH.343,"a",%progbits
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 125


 7066              		.align	2
 7067              		.set	.LANCHOR8,. + 0
 7068              		.type	CSWTCH.343, %object
 7069              		.size	CSWTCH.343, 12
 7070              	CSWTCH.343:
 7071 0000 AC050000 		.word	.LC60
 7072 0004 B4050000 		.word	.LC61
 7073 0008 BC050000 		.word	.LC62
 7074              		.section	.rodata._ZL13SpecialPinMap,"a",%progbits
 7075              		.align	2
 7076              		.set	.LANCHOR10,. + 0
 7077              		.type	_ZL13SpecialPinMap, %object
 7078              		.size	_ZL13SpecialPinMap, 10
 7079              	_ZL13SpecialPinMap:
 7080 0000 13       		.byte	19
 7081 0001 12       		.byte	18
 7082 0002 11       		.byte	17
 7083 0003 10       		.byte	16
 7084 0004 17       		.byte	23
 7085 0005 14       		.byte	20
 7086 0006 15       		.byte	21
 7087 0007 43       		.byte	67
 7088 0008 34       		.byte	52
 7089 0009 24       		.byte	36
 7090 000a 0000     		.section	.rodata._ZL14DIRECTION_PINS,"a",%progbits
 7091              		.align	2
 7092              		.set	.LANCHOR4,. + 0
 7093              		.type	_ZL14DIRECTION_PINS, %object
 7094              		.size	_ZL14DIRECTION_PINS, 9
 7095              	_ZL14DIRECTION_PINS:
 7096 0000 0F       		.byte	15
 7097 0001 1A       		.byte	26
 7098 0002 04       		.byte	4
 7099 0003 5F       		.byte	95
 7100 0004 23       		.byte	35
 7101 0005 35       		.byte	53
 7102 0006 33       		.byte	51
 7103 0007 30       		.byte	48
 7104 0008 67       		.byte	103
 7105 0009 000000   		.section	.rodata._ZL14DefaultNetMask,"a",%progbits
 7106              		.align	2
 7107              		.set	.LANCHOR12,. + 0
 7108              		.type	_ZL14DefaultNetMask, %object
 7109              		.size	_ZL14DefaultNetMask, 4
 7110              	_ZL14DefaultNetMask:
 7111 0000 FF       		.byte	-1
 7112 0001 FF       		.byte	-1
 7113 0002 FF       		.byte	-1
 7114 0003 00       		.byte	0
 7115              		.section	.rodata._ZL11AXIS_MINIMA,"a",%progbits
 7116              		.align	2
 7117              		.set	.LANCHOR22,. + 0
 7118              		.type	_ZL11AXIS_MINIMA, %object
 7119              		.size	_ZL11AXIS_MINIMA, 24
 7120              	_ZL11AXIS_MINIMA:
 7121 0000 00000000 		.space	24
 7121      00000000 
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 126


 7121      00000000 
 7121      00000000 
 7121      00000000 
 7122              		.section	.rodata._ZL15TEMP_SENSE_PINS,"a",%progbits
 7123              		.align	2
 7124              		.set	.LANCHOR23,. + 0
 7125              		.type	_ZL15TEMP_SENSE_PINS, %object
 7126              		.size	_ZL15TEMP_SENSE_PINS, 7
 7127              	_ZL15TEMP_SENSE_PINS:
 7128 0000 05       		.byte	5
 7129 0001 04       		.byte	4
 7130 0002 00       		.byte	0
 7131 0003 07       		.byte	7
 7132 0004 08       		.byte	8
 7133 0005 09       		.byte	9
 7134 0006 0B       		.byte	11
 7135 0007 00       		.section	.rodata._ZL12HEAT_ON_PINS,"a",%progbits
 7136              		.align	2
 7137              		.set	.LANCHOR24,. + 0
 7138              		.type	_ZL12HEAT_ON_PINS, %object
 7139              		.size	_ZL12HEAT_ON_PINS, 7
 7140              	_ZL12HEAT_ON_PINS:
 7141 0000 06       		.byte	6
 7142 0001 61       		.byte	97
 7143 0002 63       		.byte	99
 7144 0003 07       		.byte	7
 7145 0004 08       		.byte	8
 7146 0005 09       		.byte	9
 7147 0006 6D       		.byte	109
 7148 0007 00       		.section	.rodata.str1.4,"aMS",%progbits,1
 7149              		.align	2
 7150              	.LC7:
 7151 0000 47333120 		.ascii	"G31 T%u P%d X%.1f Y%.1f Z%.2f\012\000"
 7151      54257520 
 7151      50256420 
 7151      58252E31 
 7151      66205925 
 7152 001f 00       		.space	1
 7153              	.LC8:
 7154 0020 3B205A20 		.ascii	"; Z probe parameters\012\000"
 7154      70726F62 
 7154      65207061 
 7154      72616D65 
 7154      74657273 
 7155 0036 0000     		.space	2
 7156              	.LC9:
 7157 0038 556E6964 		.ascii	"Unidentified\000"
 7157      656E7469 
 7157      66696564 
 7157      00
 7158 0045 000000   		.space	3
 7159              	.LC10:
 7160 0048 756E6B6E 		.ascii	"unknown\000"
 7160      6F776E00 
 7161              	.LC11:
 7162 0050 41747465 		.ascii	"Attempt to emulate unsupported firmware.\012\000"
 7162      6D707420 
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 127


 7162      746F2065 
 7162      6D756C61 
 7162      74652075 
 7163 007a 0000     		.space	2
 7164              	.LC12:
 7165 007c 4D617820 		.ascii	"Max open file count exceeded.\012\000"
 7165      6F70656E 
 7165      2066696C 
 7165      6520636F 
 7165      756E7420 
 7166 009b 00       		.space	1
 7167              	.LC13:
 7168 009c 4572726F 		.ascii	"Error: Unsupported Message call for type %u!\012\000"
 7168      723A2055 
 7168      6E737570 
 7168      706F7274 
 7168      6564204D 
 7169 00ca 0000     		.space	2
 7170              	.LC14:
 7171 00cc 7B226D65 		.ascii	"{\"message\":\000"
 7171      73736167 
 7171      65223A00 
 7172              	.LC15:
 7173 00d8 7D0A00   		.ascii	"}\012\000"
 7174 00db 00       		.space	1
 7175              	.LC16:
 7176 00dc 303A2F73 		.ascii	"0:/sys/\000"
 7176      79732F00 
 7177              	.LC17:
 7178 00e4 52657052 		.ascii	"RepRapFirmware.bin\000"
 7178      61704669 
 7178      726D7761 
 7178      72652E62 
 7178      696E00
 7179 00f7 00       		.space	1
 7180              	.LC18:
 7181 00f8 4572726F 		.ascii	"Error: Firmware binary \"%s\" not found\012\000"
 7181      723A2046 
 7181      69726D77 
 7181      61726520 
 7181      62696E61 
 7182 011f 00       		.space	1
 7183              	.LC19:
 7184 0120 4572726F 		.ascii	"Error: Firmware binary \"%s\" is not valid for this"
 7184      723A2046 
 7184      69726D77 
 7184      61726520 
 7184      62696E61 
 7185 0151 20656C65 		.ascii	" electronics\012\000"
 7185      6374726F 
 7185      6E696373 
 7185      0A00
 7186 015f 00       		.space	1
 7187              	.LC20:
 7188 0160 6961702E 		.ascii	"iap.bin\000"
 7188      62696E00 
 7189              	.LC21:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 128


 7190 0168 4572726F 		.ascii	"Error: In-application programming binary \"%s\" not"
 7190      723A2049 
 7190      6E2D6170 
 7190      706C6963 
 7190      6174696F 
 7191 0199 20666F75 		.ascii	" found\012\000"
 7191      6E640A00 
 7192 01a1 000000   		.space	3
 7193              	.LC22:
 7194 01a4 7B226265 		.ascii	"{\"beep_freq\":%d,\"beep_length\":%d}\012\000"
 7194      65705F66 
 7194      72657122 
 7194      3A25642C 
 7194      22626565 
 7195 01c7 00       		.space	1
 7196              	.LC23:
 7197 01c8 6F6B00   		.ascii	"ok\000"
 7198 01cb 00       		.space	1
 7199              	.LC24:
 7200 01cc 4552524F 		.ascii	"ERROR\000"
 7200      5200
 7201 01d2 0000     		.space	2
 7202              	.LC25:
 7203 01d4 44696167 		.ascii	"Diagnostic Test\012\000"
 7203      6E6F7374 
 7203      69632054 
 7203      6573740A 
 7203      00
 7204 01e5 000000   		.space	3
 7205              	.LC26:
 7206 01e8 53717561 		.ascii	"Square roots: 64-bit %.1fus %s, 32-bit %.1fus %s\012"
 7206      72652072 
 7206      6F6F7473 
 7206      3A203634 
 7206      2D626974 
 7207 0219 00       		.ascii	"\000"
 7208 021a 0000     		.space	2
 7209              	.LC27:
 7210 021c 436C6173 		.ascii	"Class %s spinning.\012\000"
 7210      73202573 
 7210      20737069 
 7210      6E6E696E 
 7210      672E0A00 
 7211              	.LC28:
 7212 0230 756E6C6F 		.ascii	"unlock\000"
 7212      636B00
 7213 0237 00       		.space	1
 7214              	.LC29:
 7215 0238 6C6F636B 		.ascii	"lock\000"
 7215      00
 7216 023d 000000   		.space	3
 7217              	.LC30:
 7218 0240 77726974 		.ascii	"write\000"
 7218      6500
 7219 0246 0000     		.space	2
 7220              	.LC31:
 7221 0248 49415020 		.ascii	"IAP not found\012\000"
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 129


 7221      6E6F7420 
 7221      666F756E 
 7221      640A00
 7222 0257 00       		.space	1
 7223              	.LC32:
 7224 0258 4572726F 		.ascii	"Error: Flash %s failed, code=%u, address=0x%08x\012"
 7224      723A2046 
 7224      6C617368 
 7224      20257320 
 7224      6661696C 
 7225 0288 00       		.ascii	"\000"
 7226 0289 000000   		.space	3
 7227              	.LC33:
 7228 028c 4572726F 		.ascii	"Error: Verify during flash write failed, address=0x"
 7228      723A2056 
 7228      65726966 
 7228      79206475 
 7228      72696E67 
 7229 02bf 25303878 		.ascii	"%08x\012\000"
 7229      0A00
 7230 02c5 000000   		.space	3
 7231              	.LC34:
 7232 02c8 55706461 		.ascii	"Updating main firmware\012\000"
 7232      74696E67 
 7232      206D6169 
 7232      6E206669 
 7232      726D7761 
 7233              	.LC35:
 7234 02e0 303A2F73 		.ascii	"0:/sys/RepRapFirmware.bin\000"
 7234      79732F52 
 7234      65705261 
 7234      70466972 
 7234      6D776172 
 7235 02fa 0000     		.space	2
 7236              	.LC36:
 7237 02fc 64657465 		.ascii	"detected\000"
 7237      63746564 
 7237      00
 7238 0305 000000   		.space	3
 7239              	.LC37:
 7240 0308 6E6F7420 		.ascii	"not detected\000"
 7240      64657465 
 7240      63746564 
 7240      00
 7241 0315 000000   		.space	3
 7242              	.LC38:
 7243 0318 3D3D3D20 		.ascii	"=== Platform ===\012\000"
 7243      506C6174 
 7243      666F726D 
 7243      203D3D3D 
 7243      0A00
 7244 032a 0000     		.space	2
 7245              	.LC39:
 7246 032c 53746174 		.ascii	"Static ram used: %d\012\000"
 7246      69632072 
 7246      616D2075 
 7246      7365643A 
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 130


 7246      2025640A 
 7247 0341 000000   		.space	3
 7248              	.LC40:
 7249 0344 44796E61 		.ascii	"Dynamic ram used: %d\012\000"
 7249      6D696320 
 7249      72616D20 
 7249      75736564 
 7249      3A202564 
 7250 035a 0000     		.space	2
 7251              	.LC41:
 7252 035c 52656379 		.ascii	"Recycled dynamic ram: %d\012\000"
 7252      636C6564 
 7252      2064796E 
 7252      616D6963 
 7252      2072616D 
 7253 0376 0000     		.space	2
 7254              	.LC42:
 7255 0378 53746163 		.ascii	"Stack ram used: %u current, %u maximum\012\000"
 7255      6B207261 
 7255      6D207573 
 7255      65643A20 
 7255      25752063 
 7256              	.LC43:
 7257 03a0 4E657665 		.ascii	"Never used ram: %u\012\000"
 7257      72207573 
 7257      65642072 
 7257      616D3A20 
 7257      25750A00 
 7258              	.LC45:
 7259 03b4 4C617374 		.ascii	"Last reset %02d:%02d:%02d ago, cause: %s\012\000"
 7259      20726573 
 7259      65742025 
 7259      3032643A 
 7259      25303264 
 7260 03de 0000     		.space	2
 7261              	.LC46:
 7262 03e0 30782530 		.ascii	"0x%04x, HFSR 0x%08x, CFSR 0x%08x, ICSR 0x%08x, BFAR"
 7262      34782C20 
 7262      48465352 
 7262      20307825 
 7262      3038782C 
 7263 0413 20307825 		.ascii	" 0x%08x, SP 0x%08x\012\000"
 7263      3038782C 
 7263      20535020 
 7263      30782530 
 7263      38780A00 
 7264 0427 00       		.space	1
 7265              	.LC47:
 7266 0428 20253038 		.ascii	" %08x\000"
 7266      7800
 7267 042e 0000     		.space	2
 7268              	.LC48:
 7269 0430 53746163 		.ascii	"Stack:%s\012\000"
 7269      6B3A2573 
 7269      0A00
 7270 043a 0000     		.space	2
 7271              	.LC49:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 131


 7272 043c 5370696E 		.ascii	"Spinning module during software reset: %s, availabl"
 7272      6E696E67 
 7272      206D6F64 
 7272      756C6520 
 7272      64757269 
 7273 046f 65205241 		.ascii	"e RAM %u bytes (slot %d)\012\000"
 7273      4D202575 
 7273      20627974 
 7273      65732028 
 7273      736C6F74 
 7274 0489 000000   		.space	3
 7275              	.LC50:
 7276 048c 6E6F7420 		.ascii	"not available\012\000"
 7276      61766169 
 7276      6C61626C 
 7276      650A00
 7277 049b 00       		.space	1
 7278              	.LC51:
 7279 049c 4572726F 		.ascii	"Error status: %u\012\000"
 7279      72207374 
 7279      61747573 
 7279      3A202575 
 7279      0A00
 7280 04ae 0000     		.space	2
 7281              	.LC52:
 7282 04b0 46726565 		.ascii	"Free file entries: %u\012\000"
 7282      2066696C 
 7282      6520656E 
 7282      74726965 
 7282      733A2025 
 7283 04c7 00       		.space	1
 7284              	.LC53:
 7285 04c8 53442063 		.ascii	"SD card 0 %s, interface speed: %.1fMBytes/sec\012\000"
 7285      61726420 
 7285      30202573 
 7285      2C20696E 
 7285      74657266 
 7286 04f7 00       		.space	1
 7287              	.LC54:
 7288 04f8 53442063 		.ascii	"SD card longest block write time: %.1fms\012\000"
 7288      61726420 
 7288      6C6F6E67 
 7288      65737420 
 7288      626C6F63 
 7289 0522 0000     		.space	2
 7290              	.LC55:
 7291 0524 4D435520 		.ascii	"MCU temperature: min %.1f, current %.1f, max %.1f\012"
 7291      74656D70 
 7291      65726174 
 7291      7572653A 
 7291      206D696E 
 7292 0556 00       		.ascii	"\000"
 7293 0557 00       		.space	1
 7294              	.LC56:
 7295 0558 44617465 		.ascii	"Date/time: \000"
 7295      2F74696D 
 7295      653A2000 
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 132


 7296              	.LC57:
 7297 0564 25303475 		.ascii	"%04u-%02u-%02u %02u:%02u:%02u\012\000"
 7297      2D253032 
 7297      752D2530 
 7297      32752025 
 7297      3032753A 
 7298 0583 00       		.space	1
 7299              	.LC58:
 7300 0584 6E6F7420 		.ascii	"not set\012\000"
 7300      7365740A 
 7300      00
 7301 058d 000000   		.space	3
 7302              	.LC59:
 7303 0590 4C617374 		.ascii	"Last software reset code \000"
 7303      20736F66 
 7303      74776172 
 7303      65207265 
 7303      73657420 
 7304 05aa 0000     		.space	2
 7305              	.LC60:
 7306 05ac 64756574 		.ascii	"duet06\000"
 7306      303600
 7307 05b3 00       		.space	1
 7308              	.LC61:
 7309 05b4 64756574 		.ascii	"duet07\000"
 7309      303700
 7310 05bb 00       		.space	1
 7311              	.LC62:
 7312 05bc 64756574 		.ascii	"duet085\000"
 7312      30383500 
 7313              	.LC63:
 7314 05c4 44756574 		.ascii	"Duet 0.6\000"
 7314      20302E36 
 7314      00
 7315 05cd 000000   		.space	3
 7316              	.LC64:
 7317 05d0 44756574 		.ascii	"Duet 0.7\000"
 7317      20302E37 
 7317      00
 7318 05d9 000000   		.space	3
 7319              	.LC65:
 7320 05dc 44756574 		.ascii	"Duet 0.85\000"
 7320      20302E38 
 7320      3500
 7321 05e6 0000     		.space	2
 7322              	.LC0:
 7323 05e8 706F7765 		.ascii	"power up\000"
 7323      72207570 
 7323      00
 7324 05f1 000000   		.space	3
 7325              	.LC1:
 7326 05f4 6261636B 		.ascii	"backup\000"
 7326      757000
 7327 05fb 00       		.space	1
 7328              	.LC2:
 7329 05fc 77617463 		.ascii	"watchdog\000"
 7329      68646F67 
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 133


 7329      00
 7330 0605 000000   		.space	3
 7331              	.LC3:
 7332 0608 736F6674 		.ascii	"software\000"
 7332      77617265 
 7332      00
 7333 0611 000000   		.space	3
 7334              	.LC4:
 7335 0614 72657365 		.ascii	"reset button\000"
 7335      74206275 
 7335      74746F6E 
 7335      00
 7336 0621 000000   		.space	3
 7337              	.LC5:
 7338 0624 3F00     		.ascii	"?\000"
 7339 0626 0000     		.section	.bss._ZL11fanInterval,"aw",%nobits
 7340              		.align	2
 7341              		.set	.LANCHOR2,. + 0
 7342              		.type	_ZL11fanInterval, %object
 7343              		.size	_ZL11fanInterval, 4
 7344              	_ZL11fanInterval:
 7345 0000 00000000 		.space	4
 7346              		.section	.rodata._ZL13ACCELERATIONS,"a",%progbits
 7347              		.align	2
 7348              		.set	.LANCHOR17,. + 0
 7349              		.type	_ZL13ACCELERATIONS, %object
 7350              		.size	_ZL13ACCELERATIONS, 36
 7351              	_ZL13ACCELERATIONS:
 7352 0000 0000FA43 		.word	1140457472
 7353 0004 0000FA43 		.word	1140457472
 7354 0008 0000A041 		.word	1101004800
 7355 000c 00007A43 		.word	1132068864
 7356 0010 00007A43 		.word	1132068864
 7357 0014 00007A43 		.word	1132068864
 7358 0018 00007A43 		.word	1132068864
 7359 001c 00007A43 		.word	1132068864
 7360 0020 00007A43 		.word	1132068864
 7361              		.section	.rodata._ZL9POT_WIPES,"a",%progbits
 7362              		.align	2
 7363              		.set	.LANCHOR20,. + 0
 7364              		.type	_ZL9POT_WIPES, %object
 7365              		.size	_ZL9POT_WIPES, 8
 7366              	_ZL9POT_WIPES:
 7367 0000 01       		.byte	1
 7368 0001 03       		.byte	3
 7369 0002 02       		.byte	2
 7370 0003 00       		.byte	0
 7371 0004 01       		.byte	1
 7372 0005 03       		.byte	3
 7373 0006 02       		.byte	2
 7374 0007 00       		.byte	0
 7375              		.section	.rodata._ZL19SpiTempSensorCsPins,"a",%progbits
 7376              		.align	2
 7377              		.set	.LANCHOR3,. + 0
 7378              		.type	_ZL19SpiTempSensorCsPins, %object
 7379              		.size	_ZL19SpiTempSensorCsPins, 4
 7380              	_ZL19SpiTempSensorCsPins:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 134


 7381 0000 4D       		.byte	77
 7382 0001 57       		.byte	87
 7383 0002 10       		.byte	16
 7384 0003 11       		.byte	17
 7385              		.section	.rodata._ZL13END_STOP_PINS,"a",%progbits
 7386              		.align	2
 7387              		.set	.LANCHOR15,. + 0
 7388              		.type	_ZL13END_STOP_PINS, %object
 7389              		.size	_ZL13END_STOP_PINS, 9
 7390              	_ZL13END_STOP_PINS:
 7391 0000 0B       		.byte	11
 7392 0001 1C       		.byte	28
 7393 0002 3C       		.byte	60
 7394 0003 1F       		.byte	31
 7395 0004 18       		.byte	24
 7396 0005 2E       		.byte	46
 7397 0006 2D       		.byte	45
 7398 0007 2C       		.byte	44
 7399 0008 65       		.byte	101
 7400 0009 000000   		.section	.rodata._ZL16DefaultIpAddress,"a",%progbits
 7401              		.align	2
 7402              		.set	.LANCHOR11,. + 0
 7403              		.type	_ZL16DefaultIpAddress, %object
 7404              		.size	_ZL16DefaultIpAddress, 4
 7405              	_ZL16DefaultIpAddress:
 7406 0000 00000000 		.space	4
 7407              		.section	.rodata._ZL9STEP_PINS,"a",%progbits
 7408              		.align	2
 7409              		.set	.LANCHOR6,. + 0
 7410              		.type	_ZL9STEP_PINS, %object
 7411              		.size	_ZL9STEP_PINS, 9
 7412              	_ZL9STEP_PINS:
 7413 0000 0E       		.byte	14
 7414 0001 19       		.byte	25
 7415 0002 05       		.byte	5
 7416 0003 5E       		.byte	94
 7417 0004 29       		.byte	41
 7418 0005 27       		.byte	39
 7419 0006 60       		.byte	96
 7420 0007 31       		.byte	49
 7421 0008 66       		.byte	102
 7422 0009 000000   		.section	.rodata._ZL16COOLING_FAN_PINS,"a",%progbits
 7423              		.align	2
 7424              		.set	.LANCHOR9,. + 0
 7425              		.type	_ZL16COOLING_FAN_PINS, %object
 7426              		.size	_ZL16COOLING_FAN_PINS, 2
 7427              	_ZL16COOLING_FAN_PINS:
 7428 0000 62       		.byte	98
 7429 0001 6D       		.byte	109
 7430 0002 0000     		.section	.bss._ZL17fanInterruptCount,"aw",%nobits
 7431              		.align	2
 7432              		.set	.LANCHOR0,. + 0
 7433              		.type	_ZL17fanInterruptCount, %object
 7434              		.size	_ZL17fanInterruptCount, 4
 7435              	_ZL17fanInterruptCount:
 7436 0000 00000000 		.space	4
 7437              		.section	.bss._ZL16fanLastResetTime,"aw",%nobits
ARM GAS  C:\Users\George\AppData\Local\Temp\ccasWiJK.s 			page 135


 7438              		.align	2
 7439              		.set	.LANCHOR1,. + 0
 7440              		.type	_ZL16fanLastResetTime, %object
 7441              		.size	_ZL16fanLastResetTime, 4
 7442              	_ZL16fanLastResetTime:
 7443 0000 00000000 		.space	4
 7444              		.section	.rodata._ZL11INSTANT_DVS,"a",%progbits
 7445              		.align	2
 7446              		.set	.LANCHOR19,. + 0
 7447              		.type	_ZL11INSTANT_DVS, %object
 7448              		.size	_ZL11INSTANT_DVS, 36
 7449              	_ZL11INSTANT_DVS:
 7450 0000 00007041 		.word	1097859072
 7451 0004 00007041 		.word	1097859072
 7452 0008 CDCC4C3E 		.word	1045220557
 7453 000c 00000040 		.word	1073741824
 7454 0010 00000040 		.word	1073741824
 7455 0014 00000040 		.word	1073741824
 7456 0018 00000040 		.word	1073741824
 7457 001c 00000040 		.word	1073741824
 7458 0020 00000040 		.word	1073741824
 7459              		.section	.rodata._ZZN8Platform14DiagnosticTestEiE5dummy,"a",%progbits
 7460              		.align	2
 7461              		.set	.LANCHOR25,. + 0
 7462              		.type	_ZZN8Platform14DiagnosticTestEiE5dummy, %object
 7463              		.size	_ZZN8Platform14DiagnosticTestEiE5dummy, 8
 7464              	_ZZN8Platform14DiagnosticTestEiE5dummy:
 7465 0000 00000000 		.space	8
 7465      00000000 
 7466              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 7467              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 7468              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 7469              	_ZL28cpu_irq_prev_interrupt_state:
 7470 0000 00       		.space	1
 7471              		.section	.rodata._ZL11ENABLE_PINS,"a",%progbits
 7472              		.align	2
 7473              		.set	.LANCHOR5,. + 0
 7474              		.type	_ZL11ENABLE_PINS, %object
 7475              		.size	_ZL11ENABLE_PINS, 9
 7476              	_ZL11ENABLE_PINS:
 7477 0000 1D       		.byte	29
 7478 0001 1B       		.byte	27
 7479 0002 5D       		.byte	93
 7480 0003 5C       		.byte	92
 7481 0004 25       		.byte	37
 7482 0005 64       		.byte	100
 7483 0006 32       		.byte	50
 7484 0007 2F       		.byte	47
 7485 0008 69       		.byte	105
 7486 0009 000000   		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
