ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 1


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
  15              		.file	"Platform.cpp"
  16              		.section	.text._Z12FanInterruptv,"ax",%progbits
  17              		.align	2
  18              		.global	_Z12FanInterruptv
  19              		.thumb
  20              		.thumb_func
  21              		.type	_Z12FanInterruptv, %function
  22              	_Z12FanInterruptv:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 38B5     		push	{r3, r4, r5, lr}
  26 0002 094C     		ldr	r4, .L5
  27 0004 2368     		ldr	r3, [r4]
  28 0006 0133     		adds	r3, r3, #1
  29 0008 202B     		cmp	r3, #32
  30 000a 2360     		str	r3, [r4]
  31 000c 00D0     		beq	.L4
  32 000e 38BD     		pop	{r3, r4, r5, pc}
  33              	.L4:
  34 0010 FFF7FEFF 		bl	micros
  35 0014 054B     		ldr	r3, .L5+4
  36 0016 0649     		ldr	r1, .L5+8
  37 0018 1D68     		ldr	r5, [r3]
  38 001a 0022     		movs	r2, #0
  39 001c 451B     		subs	r5, r0, r5
  40 001e 0D60     		str	r5, [r1]
  41 0020 2260     		str	r2, [r4]
  42 0022 1860     		str	r0, [r3]
  43 0024 38BD     		pop	{r3, r4, r5, pc}
  44              	.L6:
  45 0026 00BF     		.align	2
  46              	.L5:
  47 0028 00000000 		.word	.LANCHOR0
  48 002c 00000000 		.word	.LANCHOR1
  49 0030 00000000 		.word	.LANCHOR2
  50              		.size	_Z12FanInterruptv, .-_Z12FanInterruptv
  51              		.section	.text._ZN8Platform13DisableDriverEj.part.26,"ax",%progbits
  52              		.align	2
  53              		.thumb
  54              		.thumb_func
  55              		.type	_ZN8Platform13DisableDriverEj.part.26, %function
  56              	_ZN8Platform13DisableDriverEj.part.26:
  57              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 2


  58              		@ frame_needed = 0, uses_anonymous_args = 0
  59 0000 0B46     		mov	r3, r1
  60 0002 D0F87012 		ldr	r1, [r0, #624]
  61 0006 9942     		cmp	r1, r3
  62 0008 10B5     		push	{r4, lr}
  63 000a 0246     		mov	r2, r0
  64 000c 08D9     		bls	.L8
  65 000e D418     		adds	r4, r2, r3
  66 0010 1846     		mov	r0, r3
  67 0012 0021     		movs	r1, #0
  68 0014 FFF7FEFF 		bl	_ZN7TMC266011EnableDriveEjb
  69 0018 0023     		movs	r3, #0
  70 001a 84F8C830 		strb	r3, [r4, #200]
  71 001e 10BD     		pop	{r4, pc}
  72              	.L8:
  73 0020 C418     		adds	r4, r0, r3
  74 0022 064A     		ldr	r2, .L10
  75 0024 94F8DC10 		ldrb	r1, [r4, #220]	@ zero_extendqisi2
  76 0028 D05C     		ldrb	r0, [r2, r3]	@ zero_extendqisi2
  77 002a 81F00101 		eor	r1, r1, #1
  78 002e FFF7FEFF 		bl	digitalWrite
  79 0032 0023     		movs	r3, #0
  80 0034 84F8C830 		strb	r3, [r4, #200]
  81 0038 10BD     		pop	{r4, pc}
  82              	.L11:
  83 003a 00BF     		.align	2
  84              	.L10:
  85 003c 00000000 		.word	.LANCHOR3
  86              		.size	_ZN8Platform13DisableDriverEj.part.26, .-_ZN8Platform13DisableDriverEj.part.26
  87              		.section	.text._ZN8Platform18UpdateMotorCurrentEj.part.27,"ax",%progbits
  88              		.align	2
  89              		.thumb
  90              		.thumb_func
  91              		.type	_ZN8Platform18UpdateMotorCurrentEj.part.27, %function
  92              	_ZN8Platform18UpdateMotorCurrentEj.part.27:
  93              		@ args = 0, pretend = 0, frame = 0
  94              		@ frame_needed = 0, uses_anonymous_args = 0
  95              		@ link register save eliminated.
  96 0000 4218     		adds	r2, r0, r1
  97 0002 00EB8103 		add	r3, r0, r1, lsl #2
  98 0006 92F8C820 		ldrb	r2, [r2, #200]	@ zero_extendqisi2
  99 000a D3ED6D7A 		flds	s15, [r3, #436]
 100 000e 012A     		cmp	r2, #1
 101 0010 18BF     		it	ne
 102 0012 93ED777A 		fldsne	s14, [r3, #476]
 103 0016 D0F87032 		ldr	r3, [r0, #624]
 104 001a 08BF     		it	eq
 105 001c 90ED9B7A 		fldseq	s14, [r0, #620]
 106 0020 9942     		cmp	r1, r3
 107 0022 67EE877A 		fmuls	s15, s15, s14
 108 0026 00D3     		bcc	.L16
 109 0028 7047     		bx	lr
 110              	.L16:
 111 002a 0846     		mov	r0, r1
 112 002c 17EE901A 		fmrs	r1, s15
 113 0030 FFF7FEBF 		b	_ZN7TMC266010SetCurrentEjf
 114              		.size	_ZN8Platform18UpdateMotorCurrentEj.part.27, .-_ZN8Platform18UpdateMotorCurrentEj.part.27
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 3


 115              		.section	.text._Z10UrgentInitv,"ax",%progbits
 116              		.align	2
 117              		.global	_Z10UrgentInitv
 118              		.thumb
 119              		.thumb_func
 120              		.type	_Z10UrgentInitv, %function
 121              	_Z10UrgentInitv:
 122              		@ args = 0, pretend = 0, frame = 0
 123              		@ frame_needed = 0, uses_anonymous_args = 0
 124 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 125 0002 0B4F     		ldr	r7, .L20
 126 0004 0B4E     		ldr	r6, .L20+4
 127 0006 0C4D     		ldr	r5, .L20+8
 128 0008 0024     		movs	r4, #0
 129              	.L19:
 130 000a 385D     		ldrb	r0, [r7, r4]	@ zero_extendqisi2
 131 000c 0321     		movs	r1, #3
 132 000e 0022     		movs	r2, #0
 133 0010 FFF7FEFF 		bl	pinModeDuet
 134 0014 305D     		ldrb	r0, [r6, r4]	@ zero_extendqisi2
 135 0016 0321     		movs	r1, #3
 136 0018 0022     		movs	r2, #0
 137 001a FFF7FEFF 		bl	pinModeDuet
 138 001e 285D     		ldrb	r0, [r5, r4]	@ zero_extendqisi2
 139 0020 0421     		movs	r1, #4
 140 0022 0134     		adds	r4, r4, #1
 141 0024 0022     		movs	r2, #0
 142 0026 FFF7FEFF 		bl	pinModeDuet
 143 002a 0A2C     		cmp	r4, #10
 144 002c EDD1     		bne	.L19
 145 002e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 146              	.L21:
 147              		.align	2
 148              	.L20:
 149 0030 00000000 		.word	.LANCHOR4
 150 0034 00000000 		.word	.LANCHOR5
 151 0038 00000000 		.word	.LANCHOR3
 152              		.size	_Z10UrgentInitv, .-_Z10UrgentInitv
 153              		.section	.text.setup,"ax",%progbits
 154              		.align	2
 155              		.global	setup
 156              		.thumb
 157              		.thumb_func
 158              		.type	setup, %function
 159              	setup:
 160              		@ args = 0, pretend = 0, frame = 0
 161              		@ frame_needed = 0, uses_anonymous_args = 0
 162 0000 10B5     		push	{r4, lr}
 163 0002 0020     		movs	r0, #0
 164 0004 FFF7FEFF 		bl	sbrk
 165 0008 6A46     		mov	r2, sp
 166 000a 00F11003 		add	r3, r0, #16
 167 000e 9A42     		cmp	r2, r3
 168 0010 06D9     		bls	.L24
 169 0012 ADF11002 		sub	r2, sp, #16
 170 0016 A523     		movs	r3, #165
 171              	.L25:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 4


 172 0018 00F8013B 		strb	r3, [r0], #1
 173 001c 9042     		cmp	r0, r2
 174 001e FBD1     		bne	.L25
 175              	.L24:
 176 0020 064B     		ldr	r3, .L27
 177 0022 074A     		ldr	r2, .L27+4
 178 0024 5C69     		ldr	r4, [r3, #20]
 179 0026 0749     		ldr	r1, .L27+8
 180 0028 0748     		ldr	r0, .L27+12
 181 002a 44F01004 		orr	r4, r4, #16
 182 002e 5C61     		str	r4, [r3, #20]
 183 0030 9160     		str	r1, [r2, #8]
 184 0032 BDE81040 		pop	{r4, lr}
 185 0036 FFF7FEBF 		b	_ZN6RepRap4InitEv
 186              	.L28:
 187 003a 00BF     		.align	2
 188              	.L27:
 189 003c 00ED00E0 		.word	-536810240
 190 0040 00180E40 		.word	1074665472
 191 0044 010000A5 		.word	-1526726655
 192 0048 00000000 		.word	reprap
 193              		.size	setup, .-setup
 194              		.section	.text.loop,"ax",%progbits
 195              		.align	2
 196              		.global	loop
 197              		.thumb
 198              		.thumb_func
 199              		.type	loop, %function
 200              	loop:
 201              		@ args = 0, pretend = 0, frame = 0
 202              		@ frame_needed = 0, uses_anonymous_args = 0
 203              		@ link register save eliminated.
 204 0000 0148     		ldr	r0, .L30
 205 0002 FFF7FEBF 		b	_ZN6RepRap4SpinEv
 206              	.L31:
 207 0006 00BF     		.align	2
 208              	.L30:
 209 0008 00000000 		.word	reprap
 210              		.size	loop, .-loop
 211              		.section	.text.sysTickHook,"ax",%progbits
 212              		.align	2
 213              		.global	sysTickHook
 214              		.thumb
 215              		.thumb_func
 216              		.type	sysTickHook, %function
 217              	sysTickHook:
 218              		@ args = 0, pretend = 0, frame = 0
 219              		@ frame_needed = 0, uses_anonymous_args = 0
 220 0000 08B5     		push	{r3, lr}
 221 0002 0248     		ldr	r0, .L33
 222 0004 FFF7FEFF 		bl	_ZN6RepRap4TickEv
 223 0008 0020     		movs	r0, #0
 224 000a 08BD     		pop	{r3, pc}
 225              	.L34:
 226              		.align	2
 227              	.L33:
 228 000c 00000000 		.word	reprap
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 5


 229              		.size	sysTickHook, .-sysTickHook
 230              		.section	.text.HardFault_Handler,"ax",%progbits
 231              		.align	2
 232              		.global	HardFault_Handler
 233              		.thumb
 234              		.thumb_func
 235              		.type	HardFault_Handler, %function
 236              	HardFault_Handler:
 237              		@ Naked Function: prologue and epilogue provided by programmer.
 238              		@ args = 0, pretend = 0, frame = 0
 239              		@ frame_needed = 0, uses_anonymous_args = 0
 240              	@ 166 "../src/Platform.cpp" 1
 241 0000 1EF0040F 		 tst lr, #4                                                
 242 0004 0CBF     	 ite eq                                                    
 243 0006 EFF30880 	 mrseq r0, msp                                             
 244 000a EFF30980 	 mrsne r0, psp                                             
 245 000e 8169     	 ldr r1, [r0, #24]                                         
 246 0010 004A     	 ldr r2, handler2_address_const                            
 247 0012 1047     	 bx r2                                                     
 248 0014 00000000 	 handler2_address_const: .word prvGetRegistersFromStack    
 249              	
 250              	@ 0 "" 2
 251              		.thumb
 252              		.size	HardFault_Handler, .-HardFault_Handler
 253              		.section	.text._ZN16ZProbeParameters4InitEf,"ax",%progbits
 254              		.align	2
 255              		.global	_ZN16ZProbeParameters4InitEf
 256              		.thumb
 257              		.thumb_func
 258              		.type	_ZN16ZProbeParameters4InitEf, %function
 259              	_ZN16ZProbeParameters4InitEf:
 260              		@ args = 0, pretend = 0, frame = 0
 261              		@ frame_needed = 0, uses_anonymous_args = 0
 262              		@ link register save eliminated.
 263 0000 F0B4     		push	{r4, r5, r6, r7}
 264 0002 0023     		movs	r3, #0
 265 0004 0B4C     		ldr	r4, .L37
 266 0006 0C4F     		ldr	r7, .L37+4
 267 0008 0C4E     		ldr	r6, .L37+8
 268 000a C160     		str	r1, [r0, #12]	@ float
 269 000c 4FF08045 		mov	r5, #1073741824
 270 0010 4FF4FA71 		mov	r1, #500
 271 0014 0022     		movs	r2, #0
 272 0016 0761     		str	r7, [r0, #16]	@ float
 273 0018 8661     		str	r6, [r0, #24]	@ float
 274 001a C561     		str	r5, [r0, #28]	@ float
 275 001c 0462     		str	r4, [r0, #32]	@ float
 276 001e 0160     		str	r1, [r0]
 277 0020 80F82C20 		strb	r2, [r0, #44]
 278 0024 8360     		str	r3, [r0, #8]	@ float
 279 0026 4360     		str	r3, [r0, #4]	@ float
 280 0028 4361     		str	r3, [r0, #20]	@ float
 281 002a 8362     		str	r3, [r0, #40]	@ float
 282 002c 4362     		str	r3, [r0, #36]	@ float
 283 002e F0BC     		pop	{r4, r5, r6, r7}
 284 0030 7047     		bx	lr
 285              	.L38:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 6


 286 0032 00BF     		.align	2
 287              	.L37:
 288 0034 0000C842 		.word	1120403456
 289 0038 0000A041 		.word	1101004800
 290 003c 0000A040 		.word	1084227584
 291              		.size	_ZN16ZProbeParameters4InitEf, .-_ZN16ZProbeParameters4InitEf
 292              		.section	.text._ZNK16ZProbeParameters13GetStopHeightEf,"ax",%progbits
 293              		.align	2
 294              		.global	_ZNK16ZProbeParameters13GetStopHeightEf
 295              		.thumb
 296              		.thumb_func
 297              		.type	_ZNK16ZProbeParameters13GetStopHeightEf, %function
 298              	_ZNK16ZProbeParameters13GetStopHeightEf:
 299              		@ args = 0, pretend = 0, frame = 0
 300              		@ frame_needed = 0, uses_anonymous_args = 0
 301              		@ link register save eliminated.
 302 0000 D0ED046A 		flds	s13, [r0, #16]
 303 0004 90ED057A 		flds	s14, [r0, #20]
 304 0008 D0ED037A 		flds	s15, [r0, #12]
 305 000c 06EE101A 		fmsr	s12, r1
 306 0010 76EE666A 		fsubs	s13, s12, s13
 307 0014 E6EE877A 		vfma.f32	s15, s13, s14
 308 0018 17EE900A 		fmrs	r0, s15
 309 001c 7047     		bx	lr
 310              		.size	_ZNK16ZProbeParameters13GetStopHeightEf, .-_ZNK16ZProbeParameters13GetStopHeightEf
 311              		.global	__aeabi_f2d
 312 001e 00BF     		.section	.text._ZNK16ZProbeParameters15WriteParametersEP9FileStorej,"ax",%progbits
 313              		.align	2
 314              		.global	_ZNK16ZProbeParameters15WriteParametersEP9FileStorej
 315              		.thumb
 316              		.thumb_func
 317              		.type	_ZNK16ZProbeParameters15WriteParametersEP9FileStorej, %function
 318              	_ZNK16ZProbeParameters15WriteParametersEP9FileStorej:
 319              		@ args = 0, pretend = 0, frame = 0
 320              		@ frame_needed = 0, uses_anonymous_args = 0
 321 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 322 0004 0446     		mov	r4, r0
 323 0006 86B0     		sub	sp, sp, #24
 324 0008 4068     		ldr	r0, [r0, #4]	@ float
 325 000a 2768     		ldr	r7, [r4]
 326 000c 0E4D     		ldr	r5, .L41
 327 000e 9046     		mov	r8, r2
 328 0010 0E46     		mov	r6, r1
 329 0012 FFF7FEFF 		bl	__aeabi_f2d
 330 0016 CDE90001 		strd	r0, [sp]
 331 001a A068     		ldr	r0, [r4, #8]	@ float
 332 001c FFF7FEFF 		bl	__aeabi_f2d
 333 0020 CDE90201 		strd	r0, [sp, #8]
 334 0024 E068     		ldr	r0, [r4, #12]	@ float
 335 0026 FFF7FEFF 		bl	__aeabi_f2d
 336 002a 3B46     		mov	r3, r7
 337 002c CDE90401 		strd	r0, [sp, #16]
 338 0030 4246     		mov	r2, r8
 339 0032 2846     		mov	r0, r5
 340 0034 0549     		ldr	r1, .L41+4
 341 0036 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 342 003a 2968     		ldr	r1, [r5]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 7


 343 003c 3046     		mov	r0, r6
 344 003e 06B0     		add	sp, sp, #24
 345              		@ sp needed
 346 0040 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 347 0044 FFF7FEBF 		b	_ZN9FileStore5WriteEPKc
 348              	.L42:
 349              		.align	2
 350              	.L41:
 351 0048 00000000 		.word	scratchString
 352 004c 00000000 		.word	.LC7
 353              		.size	_ZNK16ZProbeParameters15WriteParametersEP9FileStorej, .-_ZNK16ZProbeParameters15WriteParamet
 354              		.section	.text._ZN8PlatformC2Ev,"ax",%progbits
 355              		.align	2
 356              		.global	_ZN8PlatformC2Ev
 357              		.thumb
 358              		.thumb_func
 359              		.type	_ZN8PlatformC2Ev, %function
 360              	_ZN8PlatformC2Ev:
 361              		@ args = 0, pretend = 0, frame = 0
 362              		@ frame_needed = 0, uses_anonymous_args = 0
 363 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 364 0002 0122     		movs	r2, #1
 365 0004 0023     		movs	r3, #0
 366 0006 0546     		mov	r5, r0
 367 0008 80F8AB20 		strb	r2, [r0, #171]
 368 000c 80F8C030 		strb	r3, [r0, #192]
 369 0010 C0F8C430 		str	r3, [r0, #196]
 370              	@ 470 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 371 0014 EFF31084 		MRS r4, primask
 372              	@ 0 "" 2
 373              	@ 330 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 374 0018 72B6     		cpsid i
 375              	@ 0 "" 2
 376              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 377 001a BFF35F8F 		dmb
 378              	@ 0 "" 2
 379              		.thumb
 380 001e 4B48     		ldr	r0, .L63
 381 0020 0022     		movs	r2, #0
 382 0022 0270     		strb	r2, [r0]
 383 0024 1346     		mov	r3, r2
 384 0026 C5F88C22 		str	r2, [r5, #652]
 385 002a 1146     		mov	r1, r2
 386 002c C5F88822 		str	r2, [r5, #648]
 387 0030 85F89022 		strb	r2, [r5, #656]
 388              	.L45:
 389 0034 05EB4302 		add	r2, r5, r3, lsl #1
 390 0038 0133     		adds	r3, r3, #1
 391 003a 082B     		cmp	r3, #8
 392 003c A2F87812 		strh	r1, [r2, #632]	@ movhi
 393 0040 F8D1     		bne	.L45
 394 0042 24B9     		cbnz	r4, .L46
 395 0044 0123     		movs	r3, #1
 396 0046 0370     		strb	r3, [r0]
 397              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 398 0048 BFF35F8F 		dmb
 399              	@ 0 "" 2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 8


 400              	@ 319 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 401 004c 62B6     		cpsie i
 402              	@ 0 "" 2
 403              		.thumb
 404              	.L46:
 405              	@ 470 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 406 004e EFF31084 		MRS r4, primask
 407              	@ 0 "" 2
 408              	@ 330 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 409 0052 72B6     		cpsid i
 410              	@ 0 "" 2
 411              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 412 0054 BFF35F8F 		dmb
 413              	@ 0 "" 2
 414              		.thumb
 415 0058 0022     		movs	r2, #0
 416 005a 0270     		strb	r2, [r0]
 417 005c 1346     		mov	r3, r2
 418 005e C5F8A822 		str	r2, [r5, #680]
 419 0062 1146     		mov	r1, r2
 420 0064 C5F8A422 		str	r2, [r5, #676]
 421 0068 85F8AC22 		strb	r2, [r5, #684]
 422              	.L48:
 423 006c 05EB4302 		add	r2, r5, r3, lsl #1
 424 0070 0133     		adds	r3, r3, #1
 425 0072 082B     		cmp	r3, #8
 426 0074 A2F89412 		strh	r1, [r2, #660]	@ movhi
 427 0078 F8D1     		bne	.L48
 428 007a 24B9     		cbnz	r4, .L49
 429 007c 0123     		movs	r3, #1
 430 007e 0370     		strb	r3, [r0]
 431              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 432 0080 BFF35F8F 		dmb
 433              	@ 0 "" 2
 434              	@ 319 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 435 0084 62B6     		cpsie i
 436              	@ 0 "" 2
 437              		.thumb
 438              	.L49:
 439 0086 05F52C72 		add	r2, r5, #688
 440 008a 05F5A266 		add	r6, r5, #1296
 441 008e 0024     		movs	r4, #0
 442 0090 0127     		movs	r7, #1
 443              	.L54:
 444              	@ 470 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 445 0092 EFF31081 		MRS r1, primask
 446              	@ 0 "" 2
 447              	@ 330 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 448 0096 72B6     		cpsid i
 449              	@ 0 "" 2
 450              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 451 0098 BFF35F8F 		dmb
 452              	@ 0 "" 2
 453              		.thumb
 454 009c 0023     		movs	r3, #0
 455 009e 0470     		strb	r4, [r0]
 456 00a0 5464     		str	r4, [r2, #68]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 9


 457 00a2 1464     		str	r4, [r2, #64]
 458 00a4 82F84840 		strb	r4, [r2, #72]
 459              	.L51:
 460 00a8 22F81340 		strh	r4, [r2, r3, lsl #1]	@ movhi
 461 00ac 0133     		adds	r3, r3, #1
 462 00ae 202B     		cmp	r3, #32
 463 00b0 FAD1     		bne	.L51
 464 00b2 19B9     		cbnz	r1, .L52
 465 00b4 0770     		strb	r7, [r0]
 466              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 467 00b6 BFF35F8F 		dmb
 468              	@ 0 "" 2
 469              	@ 319 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 470 00ba 62B6     		cpsie i
 471              	@ 0 "" 2
 472              		.thumb
 473              	.L52:
 474 00bc 4C32     		adds	r2, r2, #76
 475 00be B242     		cmp	r2, r6
 476 00c0 E7D1     		bne	.L54
 477 00c2 05F5B064 		add	r4, r5, #1408
 478 00c6 05F5CC66 		add	r6, r5, #1632
 479              	.L56:
 480 00ca 2046     		mov	r0, r4
 481 00cc 1C34     		adds	r4, r4, #28
 482 00ce FFF7FEFF 		bl	_ZN10ThermistorC1Ev
 483 00d2 B442     		cmp	r4, r6
 484 00d4 F9D1     		bne	.L56
 485 00d6 0024     		movs	r4, #0
 486 00d8 C5F83448 		str	r4, [r5, #2100]
 487 00dc 85F86848 		strb	r4, [r5, #2152]
 488 00e0 85F89548 		strb	r4, [r5, #2197]
 489 00e4 C5F89C48 		str	r4, [r5, #2204]
 490 00e8 C5F8C848 		str	r4, [r5, #2248]
 491 00ec 1420     		movs	r0, #20
 492 00ee FFF7FEFF 		bl	_Znwj
 493 00f2 0346     		mov	r3, r0
 494 00f4 1420     		movs	r0, #20
 495 00f6 1C60     		str	r4, [r3]
 496 00f8 C5F82438 		str	r3, [r5, #2084]
 497 00fc FFF7FEFF 		bl	_Znwj
 498 0100 0346     		mov	r3, r0
 499 0102 1420     		movs	r0, #20
 500 0104 1C60     		str	r4, [r3]
 501 0106 C5F82838 		str	r3, [r5, #2088]
 502 010a FFF7FEFF 		bl	_Znwj
 503 010e 0346     		mov	r3, r0
 504 0110 4FF49E60 		mov	r0, #1264
 505 0114 1C60     		str	r4, [r3]
 506 0116 C5F82C38 		str	r3, [r5, #2092]
 507 011a FFF7FEFF 		bl	_Znwj
 508 011e 2946     		mov	r1, r5
 509 0120 0646     		mov	r6, r0
 510 0122 2C46     		mov	r4, r5
 511 0124 FFF7FEFF 		bl	_ZN11MassStorageC1EP8Platform
 512 0128 05F12807 		add	r7, r5, #40
 513 012c C5F83C68 		str	r6, [r5, #2108]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 10


 514              	.L58:
 515 0130 3020     		movs	r0, #48
 516 0132 FFF7FEFF 		bl	_Znwj
 517 0136 2946     		mov	r1, r5
 518 0138 0646     		mov	r6, r0
 519 013a 0434     		adds	r4, r4, #4
 520 013c FFF7FEFF 		bl	_ZN9FileStoreC1EP8Platform
 521 0140 C4F83C68 		str	r6, [r4, #2108]
 522 0144 BC42     		cmp	r4, r7
 523 0146 F3D1     		bne	.L58
 524 0148 2846     		mov	r0, r5
 525 014a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 526              	.L64:
 527              		.align	2
 528              	.L63:
 529 014c 00000000 		.word	g_interrupt_enabled
 530              		.size	_ZN8PlatformC2Ev, .-_ZN8PlatformC2Ev
 531              		.global	_ZN8PlatformC1Ev
 532              		.thumb_set _ZN8PlatformC1Ev,_ZN8PlatformC2Ev
 533              		.section	.text._ZN8Platform15InvalidateFilesEPK5FATFS,"ax",%progbits
 534              		.align	2
 535              		.global	_ZN8Platform15InvalidateFilesEPK5FATFS
 536              		.thumb
 537              		.thumb_func
 538              		.type	_ZN8Platform15InvalidateFilesEPK5FATFS, %function
 539              	_ZN8Platform15InvalidateFilesEPK5FATFS:
 540              		@ args = 0, pretend = 0, frame = 0
 541              		@ frame_needed = 0, uses_anonymous_args = 0
 542 0000 70B5     		push	{r4, r5, r6, lr}
 543 0002 0646     		mov	r6, r0
 544 0004 0D46     		mov	r5, r1
 545 0006 0024     		movs	r4, #0
 546              	.L67:
 547 0008 3319     		adds	r3, r6, r4
 548 000a 2946     		mov	r1, r5
 549 000c D3F84008 		ldr	r0, [r3, #2112]
 550 0010 0434     		adds	r4, r4, #4
 551 0012 FFF7FEFF 		bl	_ZN9FileStore10InvalidateEPK5FATFS
 552 0016 282C     		cmp	r4, #40
 553 0018 F6D1     		bne	.L67
 554 001a 70BD     		pop	{r4, r5, r6, pc}
 555              		.size	_ZN8Platform15InvalidateFilesEPK5FATFS, .-_ZN8Platform15InvalidateFilesEPK5FATFS
 556              		.section	.text._ZNK8Platform11AnyFileOpenEPK5FATFS,"ax",%progbits
 557              		.align	2
 558              		.global	_ZNK8Platform11AnyFileOpenEPK5FATFS
 559              		.thumb
 560              		.thumb_func
 561              		.type	_ZNK8Platform11AnyFileOpenEPK5FATFS, %function
 562              	_ZNK8Platform11AnyFileOpenEPK5FATFS:
 563              		@ args = 0, pretend = 0, frame = 0
 564              		@ frame_needed = 0, uses_anonymous_args = 0
 565 0000 70B5     		push	{r4, r5, r6, lr}
 566 0002 0646     		mov	r6, r0
 567 0004 0D46     		mov	r5, r1
 568 0006 0024     		movs	r4, #0
 569              	.L70:
 570 0008 3319     		adds	r3, r6, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 11


 571 000a 2946     		mov	r1, r5
 572 000c D3F84008 		ldr	r0, [r3, #2112]
 573 0010 0434     		adds	r4, r4, #4
 574 0012 FFF7FEFF 		bl	_ZNK9FileStore8IsOpenOnEPK5FATFS
 575 0016 10B9     		cbnz	r0, .L71
 576 0018 282C     		cmp	r4, #40
 577 001a F5D1     		bne	.L70
 578 001c 70BD     		pop	{r4, r5, r6, pc}
 579              	.L71:
 580 001e 0120     		movs	r0, #1
 581 0020 70BD     		pop	{r4, r5, r6, pc}
 582              		.size	_ZNK8Platform11AnyFileOpenEPK5FATFS, .-_ZNK8Platform11AnyFileOpenEPK5FATFS
 583 0022 00BF     		.section	.text._ZN8Platform19SetThermistorNumberEjj,"ax",%progbits
 584              		.align	2
 585              		.global	_ZN8Platform19SetThermistorNumberEjj
 586              		.thumb
 587              		.thumb_func
 588              		.type	_ZN8Platform19SetThermistorNumberEjj, %function
 589              	_ZN8Platform19SetThermistorNumberEjj:
 590              		@ args = 0, pretend = 0, frame = 0
 591              		@ frame_needed = 0, uses_anonymous_args = 0
 592 0000 10B5     		push	{r4, lr}
 593 0002 A2F16403 		sub	r3, r2, #100
 594 0006 0C46     		mov	r4, r1
 595 0008 00EB8101 		add	r1, r0, r1, lsl #2
 596 000c 072B     		cmp	r3, #7
 597 000e C1F86C28 		str	r2, [r1, #2156]
 598 0012 15D9     		bls	.L76
 599 0014 C83A     		subs	r2, r2, #200
 600 0016 072A     		cmp	r2, #7
 601 0018 06D9     		bls	.L77
 602              	.L75:
 603 001a 0F4B     		ldr	r3, .L78
 604 001c 61B2     		sxtb	r1, r4
 605 001e D868     		ldr	r0, [r3, #12]
 606 0020 BDE81040 		pop	{r4, lr}
 607 0024 FFF7FEBF 		b	_ZN4Heat10ResetFaultEa
 608              	.L77:
 609 0028 02EB8203 		add	r3, r2, r2, lsl #2
 610 002c 0244     		add	r2, r2, r0
 611 002e 00EB8300 		add	r0, r0, r3, lsl #2
 612 0032 00F5CC60 		add	r0, r0, #1632
 613 0036 92F80017 		ldrb	r1, [r2, #1792]	@ zero_extendqisi2
 614 003a FFF7FEFF 		bl	_ZN17TemperatureSensor7InitRtdEh
 615 003e ECE7     		b	.L75
 616              	.L76:
 617 0040 03EB8301 		add	r1, r3, r3, lsl #2
 618 0044 054A     		ldr	r2, .L78+4
 619 0046 00EB8100 		add	r0, r0, r1, lsl #2
 620 004a 00F5CC60 		add	r0, r0, #1632
 621 004e D15C     		ldrb	r1, [r2, r3]	@ zero_extendqisi2
 622 0050 FFF7FEFF 		bl	_ZN17TemperatureSensor16InitThermocoupleEh
 623 0054 E1E7     		b	.L75
 624              	.L79:
 625 0056 00BF     		.align	2
 626              	.L78:
 627 0058 00000000 		.word	reprap
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 12


 628 005c 00000000 		.word	.LANCHOR6
 629              		.size	_ZN8Platform19SetThermistorNumberEjj, .-_ZN8Platform19SetThermistorNumberEjj
 630              		.section	.text._ZNK8Platform19GetThermistorNumberEj,"ax",%progbits
 631              		.align	2
 632              		.global	_ZNK8Platform19GetThermistorNumberEj
 633              		.thumb
 634              		.thumb_func
 635              		.type	_ZNK8Platform19GetThermistorNumberEj, %function
 636              	_ZNK8Platform19GetThermistorNumberEj:
 637              		@ args = 0, pretend = 0, frame = 0
 638              		@ frame_needed = 0, uses_anonymous_args = 0
 639              		@ link register save eliminated.
 640 0000 00EB8101 		add	r1, r0, r1, lsl #2
 641 0004 D1F86C08 		ldr	r0, [r1, #2156]
 642 0008 7047     		bx	lr
 643              		.size	_ZNK8Platform19GetThermistorNumberEj, .-_ZNK8Platform19GetThermistorNumberEj
 644 000a 00BF     		.section	.text._ZN8Platform17SetZProbeDefaultsEv,"ax",%progbits
 645              		.align	2
 646              		.global	_ZN8Platform17SetZProbeDefaultsEv
 647              		.thumb
 648              		.thumb_func
 649              		.type	_ZN8Platform17SetZProbeDefaultsEv, %function
 650              	_ZN8Platform17SetZProbeDefaultsEv:
 651              		@ args = 0, pretend = 0, frame = 0
 652              		@ frame_needed = 0, uses_anonymous_args = 0
 653              		@ link register save eliminated.
 654 0000 F0B4     		push	{r4, r5, r6, r7}
 655 0002 0023     		movs	r3, #0
 656 0004 1B4C     		ldr	r4, .L82
 657 0006 1C4F     		ldr	r7, .L82+4
 658 0008 1C4E     		ldr	r6, .L82+8
 659 000a DFF874C0 		ldr	ip, .L82+12
 660 000e 0761     		str	r7, [r0, #16]	@ float
 661 0010 4FF08045 		mov	r5, #1073741824
 662 0014 4FF4FA71 		mov	r1, #500
 663 0018 0022     		movs	r2, #0
 664 001a 0764     		str	r7, [r0, #64]	@ float
 665 001c 0767     		str	r7, [r0, #112]	@ float
 666 001e 8661     		str	r6, [r0, #24]	@ float
 667 0020 8664     		str	r6, [r0, #72]	@ float
 668 0022 8667     		str	r6, [r0, #120]	@ float
 669 0024 C561     		str	r5, [r0, #28]	@ float
 670 0026 C564     		str	r5, [r0, #76]	@ float
 671 0028 C567     		str	r5, [r0, #124]	@ float
 672 002a 0462     		str	r4, [r0, #32]	@ float
 673 002c 0465     		str	r4, [r0, #80]	@ float
 674 002e C0F88040 		str	r4, [r0, #128]	@ float
 675 0032 8360     		str	r3, [r0, #8]	@ float
 676 0034 0160     		str	r1, [r0]
 677 0036 0163     		str	r1, [r0, #48]
 678 0038 0166     		str	r1, [r0, #96]
 679 003a 4360     		str	r3, [r0, #4]	@ float
 680 003c C360     		str	r3, [r0, #12]	@ float
 681 003e 4361     		str	r3, [r0, #20]	@ float
 682 0040 8362     		str	r3, [r0, #40]	@ float
 683 0042 4362     		str	r3, [r0, #36]	@ float
 684 0044 8363     		str	r3, [r0, #56]	@ float
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 13


 685 0046 4363     		str	r3, [r0, #52]	@ float
 686 0048 4364     		str	r3, [r0, #68]	@ float
 687 004a 8365     		str	r3, [r0, #88]	@ float
 688 004c 4365     		str	r3, [r0, #84]	@ float
 689 004e 8366     		str	r3, [r0, #104]	@ float
 690 0050 4366     		str	r3, [r0, #100]	@ float
 691 0052 4367     		str	r3, [r0, #116]	@ float
 692 0054 80F82C20 		strb	r2, [r0, #44]
 693 0058 80F85C20 		strb	r2, [r0, #92]
 694 005c C0F83CC0 		str	ip, [r0, #60]	@ float
 695 0060 C0F86CC0 		str	ip, [r0, #108]	@ float
 696 0064 C0F88830 		str	r3, [r0, #136]	@ float
 697 0068 80F88C20 		strb	r2, [r0, #140]
 698 006c C0F88430 		str	r3, [r0, #132]	@ float
 699 0070 F0BC     		pop	{r4, r5, r6, r7}
 700 0072 7047     		bx	lr
 701              	.L83:
 702              		.align	2
 703              	.L82:
 704 0074 0000C842 		.word	1120403456
 705 0078 0000A041 		.word	1101004800
 706 007c 0000A040 		.word	1084227584
 707 0080 3333333F 		.word	1060320051
 708              		.size	_ZN8Platform17SetZProbeDefaultsEv, .-_ZN8Platform17SetZProbeDefaultsEv
 709              		.section	.text._ZN8Platform10InitZProbeEv,"ax",%progbits
 710              		.align	2
 711              		.global	_ZN8Platform10InitZProbeEv
 712              		.thumb
 713              		.thumb_func
 714              		.type	_ZN8Platform10InitZProbeEv, %function
 715              	_ZN8Platform10InitZProbeEv:
 716              		@ args = 0, pretend = 0, frame = 0
 717              		@ frame_needed = 0, uses_anonymous_args = 0
 718 0000 38B5     		push	{r3, r4, r5, lr}
 719 0002 0446     		mov	r4, r0
 720              	@ 470 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 721 0004 EFF31085 		MRS r5, primask
 722              	@ 0 "" 2
 723              	@ 330 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 724 0008 72B6     		cpsid i
 725              	@ 0 "" 2
 726              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 727 000a BFF35F8F 		dmb
 728              	@ 0 "" 2
 729              		.thumb
 730 000e 4648     		ldr	r0, .L102
 731 0010 0022     		movs	r2, #0
 732 0012 0270     		strb	r2, [r0]
 733 0014 1346     		mov	r3, r2
 734 0016 C4F88C22 		str	r2, [r4, #652]
 735 001a 1146     		mov	r1, r2
 736 001c C4F88822 		str	r2, [r4, #648]
 737 0020 84F89022 		strb	r2, [r4, #656]
 738              	.L86:
 739 0024 04EB4302 		add	r2, r4, r3, lsl #1
 740 0028 0133     		adds	r3, r3, #1
 741 002a 082B     		cmp	r3, #8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 14


 742 002c A2F87812 		strh	r1, [r2, #632]	@ movhi
 743 0030 F8D1     		bne	.L86
 744 0032 25B9     		cbnz	r5, .L87
 745 0034 0123     		movs	r3, #1
 746 0036 0370     		strb	r3, [r0]
 747              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 748 0038 BFF35F8F 		dmb
 749              	@ 0 "" 2
 750              	@ 319 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 751 003c 62B6     		cpsie i
 752              	@ 0 "" 2
 753              		.thumb
 754              	.L87:
 755              	@ 470 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 756 003e EFF31085 		MRS r5, primask
 757              	@ 0 "" 2
 758              	@ 330 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 759 0042 72B6     		cpsid i
 760              	@ 0 "" 2
 761              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 762 0044 BFF35F8F 		dmb
 763              	@ 0 "" 2
 764              		.thumb
 765 0048 0022     		movs	r2, #0
 766 004a 0270     		strb	r2, [r0]
 767 004c 1346     		mov	r3, r2
 768 004e C4F8A822 		str	r2, [r4, #680]
 769 0052 1146     		mov	r1, r2
 770 0054 C4F8A422 		str	r2, [r4, #676]
 771 0058 84F8AC22 		strb	r2, [r4, #684]
 772              	.L89:
 773 005c 04EB4302 		add	r2, r4, r3, lsl #1
 774 0060 0133     		adds	r3, r3, #1
 775 0062 082B     		cmp	r3, #8
 776 0064 A2F89412 		strh	r1, [r2, #660]	@ movhi
 777 0068 F8D1     		bne	.L89
 778 006a 25B9     		cbnz	r5, .L90
 779 006c 0123     		movs	r3, #1
 780 006e 0370     		strb	r3, [r0]
 781              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 782 0070 BFF35F8F 		dmb
 783              	@ 0 "" 2
 784              	@ 319 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 785 0074 62B6     		cpsie i
 786              	@ 0 "" 2
 787              		.thumb
 788              	.L90:
 789 0076 D4F89030 		ldr	r3, [r4, #144]
 790 007a 2222     		movs	r2, #34
 791 007c 013B     		subs	r3, r3, #1
 792 007e 84F87522 		strb	r2, [r4, #629]
 793 0082 062B     		cmp	r3, #6
 794 0084 05D8     		bhi	.L97
 795 0086 DFE803F0 		tbb	[pc, r3]
 796              	.L93:
 797 008a 25       		.byte	(.L92-.L93)/2
 798 008b 25       		.byte	(.L92-.L93)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 15


 799 008c 38       		.byte	(.L94-.L93)/2
 800 008d 41       		.byte	(.L95-.L93)/2
 801 008e 04       		.byte	(.L97-.L93)/2
 802 008f 17       		.byte	(.L96-.L93)/2
 803 0090 04       		.byte	(.L97-.L93)/2
 804 0091 00       		.align	1
 805              	.L97:
 806 0092 94F99408 		ldrsb	r0, [r4, #2196]
 807 0096 0021     		movs	r1, #0
 808 0098 FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 809 009c 94F87402 		ldrb	r0, [r4, #628]	@ zero_extendqisi2
 810              	.L101:
 811 00a0 0121     		movs	r1, #1
 812              	.L100:
 813 00a2 0022     		movs	r2, #0
 814 00a4 FFF7FEFF 		bl	pinModeDuet
 815 00a8 94F87502 		ldrb	r0, [r4, #629]	@ zero_extendqisi2
 816 00ac 0321     		movs	r1, #3
 817 00ae 0022     		movs	r2, #0
 818 00b0 BDE83840 		pop	{r3, r4, r5, lr}
 819 00b4 FFF7FEBF 		b	pinModeDuet
 820              	.L96:
 821 00b8 94F99408 		ldrsb	r0, [r4, #2196]
 822 00bc 0021     		movs	r1, #0
 823 00be FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 824 00c2 94F87402 		ldrb	r0, [r4, #628]	@ zero_extendqisi2
 825 00c6 0121     		movs	r1, #1
 826 00c8 0022     		movs	r2, #0
 827 00ca FFF7FEFF 		bl	pinModeDuet
 828 00ce 94F8EA00 		ldrb	r0, [r4, #234]	@ zero_extendqisi2
 829 00d2 E5E7     		b	.L101
 830              	.L92:
 831 00d4 94F99408 		ldrsb	r0, [r4, #2196]
 832 00d8 0121     		movs	r1, #1
 833 00da FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 834 00de 94F87402 		ldrb	r0, [r4, #628]	@ zero_extendqisi2
 835 00e2 0521     		movs	r1, #5
 836 00e4 0022     		movs	r2, #0
 837 00e6 FFF7FEFF 		bl	pinModeDuet
 838 00ea 94F87502 		ldrb	r0, [r4, #629]	@ zero_extendqisi2
 839 00ee 0421     		movs	r1, #4
 840 00f0 0022     		movs	r2, #0
 841 00f2 BDE83840 		pop	{r3, r4, r5, lr}
 842 00f6 FFF7FEBF 		b	pinModeDuet
 843              	.L94:
 844 00fa 94F99408 		ldrsb	r0, [r4, #2196]
 845 00fe 0121     		movs	r1, #1
 846 0100 FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 847 0104 94F87402 		ldrb	r0, [r4, #628]	@ zero_extendqisi2
 848 0108 0521     		movs	r1, #5
 849 010a CAE7     		b	.L100
 850              	.L95:
 851 010c 94F99408 		ldrsb	r0, [r4, #2196]
 852 0110 0021     		movs	r1, #0
 853 0112 FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 854 0116 94F87402 		ldrb	r0, [r4, #628]	@ zero_extendqisi2
 855 011a 0121     		movs	r1, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 16


 856 011c 0022     		movs	r2, #0
 857 011e FFF7FEFF 		bl	pinModeDuet
 858 0122 94F8E900 		ldrb	r0, [r4, #233]	@ zero_extendqisi2
 859 0126 BBE7     		b	.L101
 860              	.L103:
 861              		.align	2
 862              	.L102:
 863 0128 00000000 		.word	g_interrupt_enabled
 864              		.size	_ZN8Platform10InitZProbeEv, .-_ZN8Platform10InitZProbeEv
 865              		.section	.text._ZNK8Platform16GetZProbeReadingEv,"ax",%progbits
 866              		.align	2
 867              		.global	_ZNK8Platform16GetZProbeReadingEv
 868              		.thumb
 869              		.thumb_func
 870              		.type	_ZNK8Platform16GetZProbeReadingEv, %function
 871              	_ZNK8Platform16GetZProbeReadingEv:
 872              		@ args = 0, pretend = 0, frame = 0
 873              		@ frame_needed = 0, uses_anonymous_args = 0
 874              		@ link register save eliminated.
 875 0000 90F89032 		ldrb	r3, [r0, #656]	@ zero_extendqisi2
 876 0004 13B1     		cbz	r3, .L105
 877 0006 90F8AC32 		ldrb	r3, [r0, #684]	@ zero_extendqisi2
 878 000a 6BB9     		cbnz	r3, .L106
 879              	.L105:
 880 000c D0F89020 		ldr	r2, [r0, #144]
 881 0010 0023     		movs	r3, #0
 882              	.L108:
 883 0012 013A     		subs	r2, r2, #1
 884 0014 062A     		cmp	r2, #6
 885 0016 18D9     		bls	.L118
 886              	.L115:
 887 0018 90F82C20 		ldrb	r2, [r0, #44]	@ zero_extendqisi2
 888 001c 12B1     		cbz	r2, .L119
 889              	.L128:
 890 001e C3F57A70 		rsb	r0, r3, #1000
 891 0022 7047     		bx	lr
 892              	.L119:
 893 0024 1846     		mov	r0, r3
 894 0026 7047     		bx	lr
 895              	.L106:
 896 0028 D0F89010 		ldr	r1, [r0, #144]
 897 002c 4A1E     		subs	r2, r1, #1
 898 002e 062A     		cmp	r2, #6
 899 0030 31D8     		bhi	.L120
 900 0032 DFE802F0 		tbb	[pc, r2]
 901              	.L117:
 902 0036 28       		.byte	(.L107-.L117)/2
 903 0037 1F       		.byte	(.L109-.L117)/2
 904 0038 28       		.byte	(.L107-.L117)/2
 905 0039 28       		.byte	(.L107-.L117)/2
 906 003a 28       		.byte	(.L107-.L117)/2
 907 003b 28       		.byte	(.L107-.L117)/2
 908 003c 04       		.byte	(.L112-.L117)/2
 909 003d 00       		.align	1
 910              	.L112:
 911 003e D0F88C32 		ldr	r3, [r0, #652]
 912 0042 D0F8A812 		ldr	r1, [r0, #680]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 17


 913 0046 0B44     		add	r3, r3, r1
 914 0048 9B09     		lsrs	r3, r3, #6
 915              	.L118:
 916 004a 0121     		movs	r1, #1
 917 004c 01FA02F2 		lsl	r2, r1, r2
 918 0050 12F0440F 		tst	r2, #68
 919 0054 08D1     		bne	.L114
 920 0056 12F0130F 		tst	r2, #19
 921 005a DDD0     		beq	.L115
 922 005c 3030     		adds	r0, r0, #48
 923 005e 90F82C20 		ldrb	r2, [r0, #44]	@ zero_extendqisi2
 924 0062 002A     		cmp	r2, #0
 925 0064 DED0     		beq	.L119
 926 0066 DAE7     		b	.L128
 927              	.L114:
 928 0068 6030     		adds	r0, r0, #96
 929 006a 90F82C20 		ldrb	r2, [r0, #44]	@ zero_extendqisi2
 930 006e 002A     		cmp	r2, #0
 931 0070 D8D0     		beq	.L119
 932 0072 D4E7     		b	.L128
 933              	.L109:
 934 0074 D0F88C12 		ldr	r1, [r0, #652]
 935 0078 D0F8A832 		ldr	r3, [r0, #680]
 936 007c CB1A     		subs	r3, r1, r3
 937 007e 48BF     		it	mi
 938 0080 1F33     		addmi	r3, r3, #31
 939 0082 5B11     		asrs	r3, r3, #5
 940 0084 E1E7     		b	.L118
 941              	.L107:
 942 0086 D0F88C32 		ldr	r3, [r0, #652]
 943 008a D0F8A822 		ldr	r2, [r0, #680]
 944 008e 1344     		add	r3, r3, r2
 945 0090 9B09     		lsrs	r3, r3, #6
 946 0092 0A46     		mov	r2, r1
 947 0094 BDE7     		b	.L108
 948              	.L120:
 949 0096 0020     		movs	r0, #0
 950 0098 7047     		bx	lr
 951              		.size	_ZNK8Platform16GetZProbeReadingEv, .-_ZNK8Platform16GetZProbeReadingEv
 952 009a 00BF     		.section	.text._ZN8Platform24GetZProbeSecondaryValuesERiS0_,"ax",%progbits
 953              		.align	2
 954              		.global	_ZN8Platform24GetZProbeSecondaryValuesERiS0_
 955              		.thumb
 956              		.thumb_func
 957              		.type	_ZN8Platform24GetZProbeSecondaryValuesERiS0_, %function
 958              	_ZN8Platform24GetZProbeSecondaryValuesERiS0_:
 959              		@ args = 0, pretend = 0, frame = 0
 960              		@ frame_needed = 0, uses_anonymous_args = 0
 961              		@ link register save eliminated.
 962 0000 90F89032 		ldrb	r3, [r0, #656]	@ zero_extendqisi2
 963 0004 63B1     		cbz	r3, .L136
 964 0006 90F8AC32 		ldrb	r3, [r0, #684]	@ zero_extendqisi2
 965 000a 4BB1     		cbz	r3, .L136
 966 000c D0F89030 		ldr	r3, [r0, #144]
 967 0010 022B     		cmp	r3, #2
 968 0012 05D1     		bne	.L136
 969 0014 D0F88C32 		ldr	r3, [r0, #652]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 18


 970 0018 5B09     		lsrs	r3, r3, #5
 971 001a 0B60     		str	r3, [r1]
 972 001c 0120     		movs	r0, #1
 973 001e 7047     		bx	lr
 974              	.L136:
 975 0020 0020     		movs	r0, #0
 976 0022 7047     		bx	lr
 977              		.size	_ZN8Platform24GetZProbeSecondaryValuesERiS0_, .-_ZN8Platform24GetZProbeSecondaryValuesERiS0_
 978              		.section	.text._ZN8Platform13SetZProbeAxesEm,"ax",%progbits
 979              		.align	2
 980              		.global	_ZN8Platform13SetZProbeAxesEm
 981              		.thumb
 982              		.thumb_func
 983              		.type	_ZN8Platform13SetZProbeAxesEm, %function
 984              	_ZN8Platform13SetZProbeAxesEm:
 985              		@ args = 0, pretend = 0, frame = 0
 986              		@ frame_needed = 0, uses_anonymous_args = 0
 987              		@ link register save eliminated.
 988 0000 C0F89410 		str	r1, [r0, #148]
 989 0004 7047     		bx	lr
 990              		.size	_ZN8Platform13SetZProbeAxesEm, .-_ZN8Platform13SetZProbeAxesEm
 991 0006 00BF     		.section	.text._ZNK8Platform19GetZProbeDiveHeightEv,"ax",%progbits
 992              		.align	2
 993              		.global	_ZNK8Platform19GetZProbeDiveHeightEv
 994              		.thumb
 995              		.thumb_func
 996              		.type	_ZNK8Platform19GetZProbeDiveHeightEv, %function
 997              	_ZNK8Platform19GetZProbeDiveHeightEv:
 998              		@ args = 0, pretend = 0, frame = 0
 999              		@ frame_needed = 0, uses_anonymous_args = 0
 1000              		@ link register save eliminated.
 1001 0000 D0F89030 		ldr	r3, [r0, #144]
 1002 0004 013B     		subs	r3, r3, #1
 1003 0006 062B     		cmp	r3, #6
 1004 0008 08D8     		bhi	.L141
 1005 000a 0122     		movs	r2, #1
 1006 000c 02FA03F3 		lsl	r3, r2, r3
 1007 0010 13F0440F 		tst	r3, #68
 1008 0014 04D1     		bne	.L140
 1009 0016 13F0130F 		tst	r3, #19
 1010 001a 04D1     		bne	.L145
 1011              	.L141:
 1012 001c 8069     		ldr	r0, [r0, #24]	@ float
 1013 001e 7047     		bx	lr
 1014              	.L140:
 1015 0020 6030     		adds	r0, r0, #96
 1016 0022 8069     		ldr	r0, [r0, #24]	@ float
 1017 0024 7047     		bx	lr
 1018              	.L145:
 1019 0026 3030     		adds	r0, r0, #48
 1020 0028 8069     		ldr	r0, [r0, #24]	@ float
 1021 002a 7047     		bx	lr
 1022              		.size	_ZNK8Platform19GetZProbeDiveHeightEv, .-_ZNK8Platform19GetZProbeDiveHeightEv
 1023              		.section	.text._ZNK8Platform20GetZProbeTravelSpeedEv,"ax",%progbits
 1024              		.align	2
 1025              		.global	_ZNK8Platform20GetZProbeTravelSpeedEv
 1026              		.thumb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 19


 1027              		.thumb_func
 1028              		.type	_ZNK8Platform20GetZProbeTravelSpeedEv, %function
 1029              	_ZNK8Platform20GetZProbeTravelSpeedEv:
 1030              		@ args = 0, pretend = 0, frame = 0
 1031              		@ frame_needed = 0, uses_anonymous_args = 0
 1032              		@ link register save eliminated.
 1033 0000 D0F89030 		ldr	r3, [r0, #144]
 1034 0004 013B     		subs	r3, r3, #1
 1035 0006 062B     		cmp	r3, #6
 1036 0008 08D8     		bhi	.L149
 1037 000a 0122     		movs	r2, #1
 1038 000c 02FA03F3 		lsl	r3, r2, r3
 1039 0010 13F0440F 		tst	r3, #68
 1040 0014 04D1     		bne	.L148
 1041 0016 13F0130F 		tst	r3, #19
 1042 001a 04D1     		bne	.L153
 1043              	.L149:
 1044 001c 006A     		ldr	r0, [r0, #32]	@ float
 1045 001e 7047     		bx	lr
 1046              	.L148:
 1047 0020 6030     		adds	r0, r0, #96
 1048 0022 006A     		ldr	r0, [r0, #32]	@ float
 1049 0024 7047     		bx	lr
 1050              	.L153:
 1051 0026 3030     		adds	r0, r0, #48
 1052 0028 006A     		ldr	r0, [r0, #32]	@ float
 1053 002a 7047     		bx	lr
 1054              		.size	_ZNK8Platform20GetZProbeTravelSpeedEv, .-_ZNK8Platform20GetZProbeTravelSpeedEv
 1055              		.section	.text._ZN8Platform13SetZProbeTypeEi,"ax",%progbits
 1056              		.align	2
 1057              		.global	_ZN8Platform13SetZProbeTypeEi
 1058              		.thumb
 1059              		.thumb_func
 1060              		.type	_ZN8Platform13SetZProbeTypeEi, %function
 1061              	_ZN8Platform13SetZProbeTypeEi:
 1062              		@ args = 0, pretend = 0, frame = 0
 1063              		@ frame_needed = 0, uses_anonymous_args = 0
 1064              		@ link register save eliminated.
 1065 0000 0729     		cmp	r1, #7
 1066 0002 88BF     		it	hi
 1067 0004 0021     		movhi	r1, #0
 1068 0006 C0F89010 		str	r1, [r0, #144]
 1069 000a FFF7FEBF 		b	_ZN8Platform10InitZProbeEv
 1070              		.size	_ZN8Platform13SetZProbeTypeEi, .-_ZN8Platform13SetZProbeTypeEi
 1071 000e 00BF     		.section	.text._ZN8Platform10SetProbingEb,"ax",%progbits
 1072              		.align	2
 1073              		.global	_ZN8Platform10SetProbingEb
 1074              		.thumb
 1075              		.thumb_func
 1076              		.type	_ZN8Platform10SetProbingEb, %function
 1077              	_ZN8Platform10SetProbingEb:
 1078              		@ args = 0, pretend = 0, frame = 0
 1079              		@ frame_needed = 0, uses_anonymous_args = 0
 1080              		@ link register save eliminated.
 1081 0000 D0F89030 		ldr	r3, [r0, #144]
 1082 0004 032B     		cmp	r3, #3
 1083 0006 00DC     		bgt	.L159
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 20


 1084 0008 7047     		bx	lr
 1085              	.L159:
 1086 000a 90F87502 		ldrb	r0, [r0, #629]	@ zero_extendqisi2
 1087 000e FFF7FEBF 		b	digitalWrite
 1088              		.size	_ZN8Platform10SetProbingEb, .-_ZN8Platform10SetProbingEb
 1089 0012 00BF     		.section	.text._ZNK8Platform19GetZProbeParametersEl,"ax",%progbits
 1090              		.align	2
 1091              		.global	_ZNK8Platform19GetZProbeParametersEl
 1092              		.thumb
 1093              		.thumb_func
 1094              		.type	_ZNK8Platform19GetZProbeParametersEl, %function
 1095              	_ZNK8Platform19GetZProbeParametersEl:
 1096              		@ args = 0, pretend = 0, frame = 0
 1097              		@ frame_needed = 0, uses_anonymous_args = 0
 1098              		@ link register save eliminated.
 1099 0000 0139     		subs	r1, r1, #1
 1100 0002 0629     		cmp	r1, #6
 1101 0004 08D8     		bhi	.L163
 1102 0006 0123     		movs	r3, #1
 1103 0008 03FA01F1 		lsl	r1, r3, r1
 1104 000c 11F0440F 		tst	r1, #68
 1105 0010 03D1     		bne	.L162
 1106 0012 11F0130F 		tst	r1, #19
 1107 0016 02D1     		bne	.L167
 1108              	.L163:
 1109 0018 7047     		bx	lr
 1110              	.L162:
 1111 001a 6030     		adds	r0, r0, #96
 1112 001c 7047     		bx	lr
 1113              	.L167:
 1114 001e 3030     		adds	r0, r0, #48
 1115 0020 7047     		bx	lr
 1116              		.size	_ZNK8Platform19GetZProbeParametersEl, .-_ZNK8Platform19GetZProbeParametersEl
 1117 0022 00BF     		.section	.text._ZN8Platform19SetZProbeParametersElRK16ZProbeParameters,"ax",%progbits
 1118              		.align	2
 1119              		.global	_ZN8Platform19SetZProbeParametersElRK16ZProbeParameters
 1120              		.thumb
 1121              		.thumb_func
 1122              		.type	_ZN8Platform19SetZProbeParametersElRK16ZProbeParameters, %function
 1123              	_ZN8Platform19SetZProbeParametersElRK16ZProbeParameters:
 1124              		@ args = 0, pretend = 0, frame = 0
 1125              		@ frame_needed = 0, uses_anonymous_args = 0
 1126              		@ link register save eliminated.
 1127 0000 0139     		subs	r1, r1, #1
 1128 0002 0629     		cmp	r1, #6
 1129 0004 30B4     		push	{r4, r5}
 1130 0006 0446     		mov	r4, r0
 1131 0008 08D8     		bhi	.L169
 1132 000a 0123     		movs	r3, #1
 1133 000c 03FA01F1 		lsl	r1, r3, r1
 1134 0010 11F0440F 		tst	r1, #68
 1135 0014 0DD1     		bne	.L170
 1136 0016 11F0130F 		tst	r1, #19
 1137 001a 0ED1     		bne	.L176
 1138              	.L169:
 1139 001c 1546     		mov	r5, r2
 1140 001e 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 21


 1141              	.L175:
 1142 0020 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 1143 0022 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1144 0024 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 1145 0026 95E80F00 		ldmia	r5, {r0, r1, r2, r3}
 1146 002a 84E80F00 		stmia	r4, {r0, r1, r2, r3}
 1147 002e 30BC     		pop	{r4, r5}
 1148 0030 7047     		bx	lr
 1149              	.L170:
 1150 0032 1546     		mov	r5, r2
 1151 0034 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1152 0036 6034     		adds	r4, r4, #96
 1153 0038 F2E7     		b	.L175
 1154              	.L176:
 1155 003a 1546     		mov	r5, r2
 1156 003c 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 1157 003e 3034     		adds	r4, r4, #48
 1158 0040 EEE7     		b	.L175
 1159              		.size	_ZN8Platform19SetZProbeParametersElRK16ZProbeParameters, .-_ZN8Platform19SetZProbeParameters
 1160 0042 00BF     		.section	.text._ZNK8Platform22IsAccessibleProbePointEff,"ax",%progbits
 1161              		.align	2
 1162              		.global	_ZNK8Platform22IsAccessibleProbePointEff
 1163              		.thumb
 1164              		.thumb_func
 1165              		.type	_ZNK8Platform22IsAccessibleProbePointEff, %function
 1166              	_ZNK8Platform22IsAccessibleProbePointEff:
 1167              		@ args = 0, pretend = 0, frame = 0
 1168              		@ frame_needed = 0, uses_anonymous_args = 0
 1169              		@ link register save eliminated.
 1170 0000 D0F89030 		ldr	r3, [r0, #144]
 1171 0004 013B     		subs	r3, r3, #1
 1172 0006 062B     		cmp	r3, #6
 1173 0008 07EE901A 		fmsr	s15, r1
 1174 000c 07EE102A 		fmsr	s14, r2
 1175 0010 13D8     		bhi	.L178
 1176 0012 0122     		movs	r2, #1
 1177 0014 02FA03F3 		lsl	r3, r2, r3
 1178 0018 13F04402 		ands	r2, r3, #68
 1179 001c 0AD0     		beq	.L205
 1180 001e 00F16001 		add	r1, r0, #96
 1181 0022 D1ED016A 		flds	s13, [r1, #4]
 1182 0026 77EEE67A 		fsubs	s15, s15, s13
 1183 002a 002A     		cmp	r2, #0
 1184 002c 54D0     		beq	.L206
 1185              	.L189:
 1186 002e 00F16002 		add	r2, r0, #96
 1187 0032 07E0     		b	.L183
 1188              	.L205:
 1189 0034 13F0130F 		tst	r3, #19
 1190 0038 46D1     		bne	.L207
 1191              	.L178:
 1192 003a D0ED016A 		flds	s13, [r0, #4]
 1193 003e 77EEE67A 		fsubs	s15, s15, s13
 1194              	.L182:
 1195 0042 0246     		mov	r2, r0
 1196              	.L183:
 1197 0044 274B     		ldr	r3, .L209
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 22


 1198 0046 D2ED026A 		flds	s13, [r2, #8]
 1199 004a 9A68     		ldr	r2, [r3, #8]
 1200 004c 92F8BC3A 		ldrb	r3, [r2, #2748]	@ zero_extendqisi2
 1201 0050 37EE667A 		fsubs	s14, s14, s13
 1202 0054 43BB     		cbnz	r3, .L208
 1203 0056 00F5A762 		add	r2, r0, #1336
 1204 005a D2ED006A 		flds	s13, [r2]
 1205 005e F4EEE76A 		fcmpes	s13, s15
 1206 0062 F1EE10FA 		fmstat
 1207 0066 1DD8     		bhi	.L203
 1208 0068 00F23C52 		addw	r2, r0, #1340
 1209 006c D2ED006A 		flds	s13, [r2]
 1210 0070 B4EEE67A 		fcmpes	s14, s13
 1211 0074 F1EE10FA 		fmstat
 1212 0078 14DB     		blt	.L203
 1213 007a 00F5A462 		add	r2, r0, #1312
 1214 007e D2ED006A 		flds	s13, [r2]
 1215 0082 F4EEE76A 		fcmpes	s13, s15
 1216 0086 F1EE10FA 		fmstat
 1217 008a 0BDB     		blt	.L203
 1218 008c 00F22450 		addw	r0, r0, #1316
 1219 0090 D0ED007A 		flds	s15, [r0]
 1220 0094 B4EEE77A 		fcmpes	s14, s15
 1221 0098 F1EE10FA 		fmstat
 1222 009c 8CBF     		ite	hi
 1223 009e 0020     		movhi	r0, #0
 1224 00a0 0120     		movls	r0, #1
 1225 00a2 7047     		bx	lr
 1226              	.L203:
 1227 00a4 1846     		mov	r0, r3
 1228 00a6 7047     		bx	lr
 1229              	.L208:
 1230 00a8 27EE077A 		fmuls	s14, s14, s14
 1231 00ac 02F6D822 		addw	r2, r2, #2776
 1232 00b0 A7EEA77A 		vfma.f32	s14, s15, s15
 1233 00b4 D2ED007A 		flds	s15, [r2]
 1234 00b8 B4EEE77A 		fcmpes	s14, s15
 1235 00bc F1EE10FA 		fmstat
 1236 00c0 54BF     		ite	pl
 1237 00c2 0020     		movpl	r0, #0
 1238 00c4 0120     		movmi	r0, #1
 1239 00c6 7047     		bx	lr
 1240              	.L207:
 1241 00c8 00F13001 		add	r1, r0, #48
 1242 00cc D1ED016A 		flds	s13, [r1, #4]
 1243 00d0 77EEE67A 		fsubs	s15, s15, s13
 1244 00d4 002A     		cmp	r2, #0
 1245 00d6 AAD1     		bne	.L189
 1246              	.L206:
 1247 00d8 13F0130F 		tst	r3, #19
 1248 00dc B1D0     		beq	.L182
 1249 00de 00F13002 		add	r2, r0, #48
 1250 00e2 AFE7     		b	.L183
 1251              	.L210:
 1252              		.align	2
 1253              	.L209:
 1254 00e4 00000000 		.word	reprap
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 23


 1255              		.size	_ZNK8Platform22IsAccessibleProbePointEff, .-_ZNK8Platform22IsAccessibleProbePointEff
 1256              		.section	.text._ZNK8Platform17MustHomeXYBeforeZEv,"ax",%progbits
 1257              		.align	2
 1258              		.global	_ZNK8Platform17MustHomeXYBeforeZEv
 1259              		.thumb
 1260              		.thumb_func
 1261              		.type	_ZNK8Platform17MustHomeXYBeforeZEv, %function
 1262              	_ZNK8Platform17MustHomeXYBeforeZEv:
 1263              		@ args = 0, pretend = 0, frame = 0
 1264              		@ frame_needed = 0, uses_anonymous_args = 0
 1265              		@ link register save eliminated.
 1266 0000 D0F89030 		ldr	r3, [r0, #144]
 1267 0004 23B1     		cbz	r3, .L213
 1268 0006 D0F89400 		ldr	r0, [r0, #148]
 1269 000a C0F38000 		ubfx	r0, r0, #2, #1
 1270 000e 7047     		bx	lr
 1271              	.L213:
 1272 0010 1846     		mov	r0, r3
 1273 0012 7047     		bx	lr
 1274              		.size	_ZNK8Platform17MustHomeXYBeforeZEv, .-_ZNK8Platform17MustHomeXYBeforeZEv
 1275              		.global	__aeabi_dadd
 1276              		.global	__aeabi_d2f
 1277              		.global	__aeabi_dmul
 1278              		.section	.text._ZN8Platform4TimeEv,"ax",%progbits
 1279              		.align	2
 1280              		.global	_ZN8Platform4TimeEv
 1281              		.thumb
 1282              		.thumb_func
 1283              		.type	_ZN8Platform4TimeEv, %function
 1284              	_ZN8Platform4TimeEv:
 1285              		@ args = 0, pretend = 0, frame = 0
 1286              		@ frame_needed = 0, uses_anonymous_args = 0
 1287 0000 70B5     		push	{r4, r5, r6, lr}
 1288 0002 0446     		mov	r4, r0
 1289 0004 FFF7FEFF 		bl	micros
 1290 0008 D4F8BC30 		ldr	r3, [r4, #188]
 1291 000c 0646     		mov	r6, r0
 1292 000e 9E42     		cmp	r6, r3
 1293 0010 D4F8B800 		ldr	r0, [r4, #184]	@ float
 1294 0014 0AD2     		bcs	.L216
 1295 0016 FFF7FEFF 		bl	__aeabi_f2d
 1296 001a 13A3     		adr	r3, .L217
 1297 001c D3E90023 		ldrd	r2, [r3]
 1298 0020 FFF7FEFF 		bl	__aeabi_dadd
 1299 0024 FFF7FEFF 		bl	__aeabi_d2f
 1300 0028 C4F8B800 		str	r0, [r4, #184]	@ float
 1301              	.L216:
 1302 002c C4F8BC60 		str	r6, [r4, #188]
 1303 0030 FFF7FEFF 		bl	__aeabi_f2d
 1304 0034 07EE906A 		fmsr	s15, r6	@ int
 1305 0038 F8EE677A 		fuitos	s15, s15
 1306 003c 0446     		mov	r4, r0
 1307 003e 17EE900A 		fmrs	r0, s15
 1308 0042 0D46     		mov	r5, r1
 1309 0044 FFF7FEFF 		bl	__aeabi_f2d
 1310 0048 09A3     		adr	r3, .L217+8
 1311 004a D3E90023 		ldrd	r2, [r3]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 24


 1312 004e FFF7FEFF 		bl	__aeabi_dmul
 1313 0052 0246     		mov	r2, r0
 1314 0054 0B46     		mov	r3, r1
 1315 0056 2046     		mov	r0, r4
 1316 0058 2946     		mov	r1, r5
 1317 005a FFF7FEFF 		bl	__aeabi_dadd
 1318 005e FFF7FEFF 		bl	__aeabi_d2f
 1319 0062 70BD     		pop	{r4, r5, r6, pc}
 1320              	.L218:
 1321 0064 AFF30080 		.align	3
 1322              	.L217:
 1323 0068 8DEDB5A0 		.word	-1598689907
 1324 006c F7C6B040 		.word	1085327095
 1325 0070 8DEDB5A0 		.word	-1598689907
 1326 0074 F7C6B03E 		.word	1051772663
 1327              		.size	_ZN8Platform4TimeEv, .-_ZN8Platform4TimeEv
 1328              		.section	.text._ZNK8Platform9EmulatingEv,"ax",%progbits
 1329              		.align	2
 1330              		.global	_ZNK8Platform9EmulatingEv
 1331              		.thumb
 1332              		.thumb_func
 1333              		.type	_ZNK8Platform9EmulatingEv, %function
 1334              	_ZNK8Platform9EmulatingEv:
 1335              		@ args = 0, pretend = 0, frame = 0
 1336              		@ frame_needed = 0, uses_anonymous_args = 0
 1337              		@ link register save eliminated.
 1338 0000 90F8AA00 		ldrb	r0, [r0, #170]	@ zero_extendqisi2
 1339 0004 0128     		cmp	r0, #1
 1340 0006 08BF     		it	eq
 1341 0008 0020     		moveq	r0, #0
 1342 000a 7047     		bx	lr
 1343              		.size	_ZNK8Platform9EmulatingEv, .-_ZNK8Platform9EmulatingEv
 1344              		.section	.text._ZN8Platform20UpdateNetworkAddressEPhPKh,"ax",%progbits
 1345              		.align	2
 1346              		.global	_ZN8Platform20UpdateNetworkAddressEPhPKh
 1347              		.thumb
 1348              		.thumb_func
 1349              		.type	_ZN8Platform20UpdateNetworkAddressEPhPKh, %function
 1350              	_ZN8Platform20UpdateNetworkAddressEPhPKh:
 1351              		@ args = 0, pretend = 0, frame = 0
 1352              		@ frame_needed = 0, uses_anonymous_args = 0
 1353              		@ link register save eliminated.
 1354 0000 0023     		movs	r3, #0
 1355              	.L224:
 1356 0002 D05C     		ldrb	r0, [r2, r3]	@ zero_extendqisi2
 1357 0004 C854     		strb	r0, [r1, r3]
 1358 0006 0133     		adds	r3, r3, #1
 1359 0008 042B     		cmp	r3, #4
 1360 000a FAD1     		bne	.L224
 1361 000c 7047     		bx	lr
 1362              		.size	_ZN8Platform20UpdateNetworkAddressEPhPKh, .-_ZN8Platform20UpdateNetworkAddressEPhPKh
 1363 000e 00BF     		.section	.text._ZN8Platform12SetIPAddressEPh,"ax",%progbits
 1364              		.align	2
 1365              		.global	_ZN8Platform12SetIPAddressEPh
 1366              		.thumb
 1367              		.thumb_func
 1368              		.type	_ZN8Platform12SetIPAddressEPh, %function
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 25


 1369              	_ZN8Platform12SetIPAddressEPh:
 1370              		@ args = 0, pretend = 0, frame = 0
 1371              		@ frame_needed = 0, uses_anonymous_args = 0
 1372              		@ link register save eliminated.
 1373 0000 9830     		adds	r0, r0, #152
 1374 0002 0023     		movs	r3, #0
 1375              	.L228:
 1376 0004 CA5C     		ldrb	r2, [r1, r3]	@ zero_extendqisi2
 1377 0006 C254     		strb	r2, [r0, r3]
 1378 0008 0133     		adds	r3, r3, #1
 1379 000a 042B     		cmp	r3, #4
 1380 000c FAD1     		bne	.L228
 1381 000e 7047     		bx	lr
 1382              		.size	_ZN8Platform12SetIPAddressEPh, .-_ZN8Platform12SetIPAddressEPh
 1383              		.section	.text._ZN8Platform10SetGateWayEPh,"ax",%progbits
 1384              		.align	2
 1385              		.global	_ZN8Platform10SetGateWayEPh
 1386              		.thumb
 1387              		.thumb_func
 1388              		.type	_ZN8Platform10SetGateWayEPh, %function
 1389              	_ZN8Platform10SetGateWayEPh:
 1390              		@ args = 0, pretend = 0, frame = 0
 1391              		@ frame_needed = 0, uses_anonymous_args = 0
 1392              		@ link register save eliminated.
 1393 0000 A030     		adds	r0, r0, #160
 1394 0002 0023     		movs	r3, #0
 1395              	.L232:
 1396 0004 CA5C     		ldrb	r2, [r1, r3]	@ zero_extendqisi2
 1397 0006 C254     		strb	r2, [r0, r3]
 1398 0008 0133     		adds	r3, r3, #1
 1399 000a 042B     		cmp	r3, #4
 1400 000c FAD1     		bne	.L232
 1401 000e 7047     		bx	lr
 1402              		.size	_ZN8Platform10SetGateWayEPh, .-_ZN8Platform10SetGateWayEPh
 1403              		.section	.text._ZN8Platform10SetNetMaskEPh,"ax",%progbits
 1404              		.align	2
 1405              		.global	_ZN8Platform10SetNetMaskEPh
 1406              		.thumb
 1407              		.thumb_func
 1408              		.type	_ZN8Platform10SetNetMaskEPh, %function
 1409              	_ZN8Platform10SetNetMaskEPh:
 1410              		@ args = 0, pretend = 0, frame = 0
 1411              		@ frame_needed = 0, uses_anonymous_args = 0
 1412              		@ link register save eliminated.
 1413 0000 9C30     		adds	r0, r0, #156
 1414 0002 0023     		movs	r3, #0
 1415              	.L236:
 1416 0004 CA5C     		ldrb	r2, [r1, r3]	@ zero_extendqisi2
 1417 0006 C254     		strb	r2, [r0, r3]
 1418 0008 0133     		adds	r3, r3, #1
 1419 000a 042B     		cmp	r3, #4
 1420 000c FAD1     		bne	.L236
 1421 000e 7047     		bx	lr
 1422              		.size	_ZN8Platform10SetNetMaskEPh, .-_ZN8Platform10SetNetMaskEPh
 1423              		.section	.text._ZN8Platform20InitialiseInterruptsEv,"ax",%progbits
 1424              		.align	2
 1425              		.global	_ZN8Platform20InitialiseInterruptsEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 26


 1426              		.thumb
 1427              		.thumb_func
 1428              		.type	_ZN8Platform20InitialiseInterruptsEv, %function
 1429              	_ZN8Platform20InitialiseInterruptsEv:
 1430              		@ args = 0, pretend = 0, frame = 0
 1431              		@ frame_needed = 0, uses_anonymous_args = 0
 1432 0000 70B5     		push	{r4, r5, r6, lr}
 1433 0002 1C49     		ldr	r1, .L243
 1434 0004 1C4E     		ldr	r6, .L243+4
 1435 0006 1D4C     		ldr	r4, .L243+8
 1436 0008 0023     		movs	r3, #0
 1437 000a 1022     		movs	r2, #16
 1438 000c 81F82330 		strb	r3, [r1, #35]
 1439 0010 0546     		mov	r5, r0
 1440 0012 86F80723 		strb	r2, [r6, #775]
 1441 0016 1846     		mov	r0, r3
 1442 0018 FFF7FEFF 		bl	pmc_set_writeprotect
 1443 001c 1720     		movs	r0, #23
 1444 001e FFF7FEFF 		bl	pmc_enable_periph_clk
 1445 0022 48F20302 		movw	r2, #32771
 1446 0026 2046     		mov	r0, r4
 1447 0028 0221     		movs	r1, #2
 1448 002a FFF7FEFF 		bl	tc_init
 1449 002e 4FF0FF33 		mov	r3, #-1
 1450 0032 C4F8A830 		str	r3, [r4, #168]
 1451 0036 2046     		mov	r0, r4
 1452 0038 0221     		movs	r1, #2
 1453 003a FFF7FEFF 		bl	tc_start
 1454 003e 2046     		mov	r0, r4
 1455 0040 0221     		movs	r1, #2
 1456 0042 FFF7FEFF 		bl	tc_get_status
 1457 0046 2022     		movs	r2, #32
 1458 0048 4FF40003 		mov	r3, #8388608
 1459 004c 86F81723 		strb	r2, [r6, #791]
 1460 0050 3360     		str	r3, [r6]
 1461 0052 95F81008 		ldrb	r0, [r5, #2064]	@ zero_extendqisi2
 1462 0056 FF28     		cmp	r0, #255
 1463 0058 03D0     		beq	.L239
 1464 005a 0949     		ldr	r1, .L243+12
 1465 005c 0322     		movs	r2, #3
 1466 005e FFF7FEFF 		bl	attachInterrupt
 1467              	.L239:
 1468 0062 0023     		movs	r3, #0
 1469 0064 0122     		movs	r2, #1
 1470 0066 85F89538 		strb	r3, [r5, #2197]
 1471 006a C5F89838 		str	r3, [r5, #2200]
 1472 006e 85F8C020 		strb	r2, [r5, #192]
 1473 0072 70BD     		pop	{r4, r5, r6, pc}
 1474              	.L244:
 1475              		.align	2
 1476              	.L243:
 1477 0074 00ED00E0 		.word	-536810240
 1478 0078 00E100E0 		.word	-536813312
 1479 007c 00000940 		.word	1074331648
 1480 0080 00000000 		.word	_Z12FanInterruptv
 1481              		.size	_ZN8Platform20InitialiseInterruptsEv, .-_ZN8Platform20InitialiseInterruptsEv
 1482              		.section	.text._ZNK8Platform13GetStackUsageEPmS0_S0_,"ax",%progbits
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 27


 1483              		.align	2
 1484              		.global	_ZNK8Platform13GetStackUsageEPmS0_S0_
 1485              		.thumb
 1486              		.thumb_func
 1487              		.type	_ZNK8Platform13GetStackUsageEPmS0_S0_, %function
 1488              	_ZNK8Platform13GetStackUsageEPmS0_S0_:
 1489              		@ args = 0, pretend = 0, frame = 0
 1490              		@ frame_needed = 0, uses_anonymous_args = 0
 1491 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1492 0004 0020     		movs	r0, #0
 1493 0006 9246     		mov	r10, r2
 1494 0008 8946     		mov	r9, r1
 1495 000a 9846     		mov	r8, r3
 1496 000c FFF7FEFF 		bl	sbrk
 1497 0010 6A46     		mov	r2, sp
 1498 0012 9042     		cmp	r0, r2
 1499 0014 23D2     		bcs	.L252
 1500 0016 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 1501 0018 A52B     		cmp	r3, #165
 1502 001a 20D1     		bne	.L252
 1503 001c 441C     		adds	r4, r0, #1
 1504 001e 6F46     		mov	r7, sp
 1505 0020 02E0     		b	.L247
 1506              	.L263:
 1507 0022 2E78     		ldrb	r6, [r5]	@ zero_extendqisi2
 1508 0024 A52E     		cmp	r6, #165
 1509 0026 04D1     		bne	.L246
 1510              	.L247:
 1511 0028 BC42     		cmp	r4, r7
 1512 002a 2546     		mov	r5, r4
 1513 002c 04F10104 		add	r4, r4, #1
 1514 0030 F7D1     		bne	.L263
 1515              	.L246:
 1516 0032 B9F1000F 		cmp	r9, #0
 1517 0036 03D0     		beq	.L248
 1518 0038 0A4B     		ldr	r3, .L264
 1519 003a 9A1A     		subs	r2, r3, r2
 1520 003c C9F80020 		str	r2, [r9]
 1521              	.L248:
 1522 0040 BAF1000F 		cmp	r10, #0
 1523 0044 03D0     		beq	.L249
 1524 0046 074B     		ldr	r3, .L264
 1525 0048 5B1B     		subs	r3, r3, r5
 1526 004a CAF80030 		str	r3, [r10]
 1527              	.L249:
 1528 004e B8F1000F 		cmp	r8, #0
 1529 0052 02D0     		beq	.L245
 1530 0054 2D1A     		subs	r5, r5, r0
 1531 0056 C8F80050 		str	r5, [r8]
 1532              	.L245:
 1533 005a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1534              	.L252:
 1535 005e 0546     		mov	r5, r0
 1536 0060 E7E7     		b	.L246
 1537              	.L265:
 1538 0062 00BF     		.align	2
 1539              	.L264:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 28


 1540 0064 00000000 		.word	_estack
 1541              		.size	_ZNK8Platform13GetStackUsageEPmS0_S0_, .-_ZNK8Platform13GetStackUsageEPmS0_S0_
 1542              		.section	.text._ZN8Platform14GetTemperatureEjR16TemperatureError,"ax",%progbits
 1543              		.align	2
 1544              		.global	_ZN8Platform14GetTemperatureEjR16TemperatureError
 1545              		.thumb
 1546              		.thumb_func
 1547              		.type	_ZN8Platform14GetTemperatureEjR16TemperatureError, %function
 1548              	_ZN8Platform14GetTemperatureEjR16TemperatureError:
 1549              		@ args = 0, pretend = 0, frame = 8
 1550              		@ frame_needed = 0, uses_anonymous_args = 0
 1551 0000 CBB2     		uxtb	r3, r1
 1552 0002 10B5     		push	{r4, lr}
 1553 0004 00EB8303 		add	r3, r0, r3, lsl #2
 1554 0008 82B0     		sub	sp, sp, #8
 1555 000a D3F86C38 		ldr	r3, [r3, #2156]
 1556 000e 072B     		cmp	r3, #7
 1557 0010 1446     		mov	r4, r2
 1558 0012 0CD8     		bhi	.L267
 1559 0014 4C23     		movs	r3, #76
 1560 0016 03FB0103 		mla	r3, r3, r1, r0
 1561 001a 03F52C73 		add	r3, r3, #688
 1562 001e 93F84820 		ldrb	r2, [r3, #72]	@ zero_extendqisi2
 1563 0022 82B9     		cbnz	r2, .L282
 1564 0024 2848     		ldr	r0, .L285
 1565 0026 0923     		movs	r3, #9
 1566 0028 2370     		strb	r3, [r4]
 1567 002a 02B0     		add	sp, sp, #8
 1568              		@ sp needed
 1569 002c 10BD     		pop	{r4, pc}
 1570              	.L267:
 1571 002e A3F16402 		sub	r2, r3, #100
 1572 0032 072A     		cmp	r2, #7
 1573 0034 1ED9     		bls	.L283
 1574 0036 C83B     		subs	r3, r3, #200
 1575 0038 072B     		cmp	r3, #7
 1576 003a 2ED9     		bls	.L284
 1577 003c 0B23     		movs	r3, #11
 1578 003e 2248     		ldr	r0, .L285
 1579 0040 2370     		strb	r3, [r4]
 1580              	.L272:
 1581 0042 02B0     		add	sp, sp, #8
 1582              		@ sp needed
 1583 0044 10BD     		pop	{r4, pc}
 1584              	.L282:
 1585 0046 C1EBC101 		rsb	r1, r1, r1, lsl #3
 1586 004a 5B6C     		ldr	r3, [r3, #68]
 1587 004c 00EB8100 		add	r0, r0, r1, lsl #2
 1588 0050 00F5B060 		add	r0, r0, #1408
 1589 0054 1909     		lsrs	r1, r3, #4
 1590 0056 FFF7FEFF 		bl	_ZNK10Thermistor15CalcTemperatureEl
 1591 005a 07EE900A 		fmsr	s15, r0
 1592 005e B9EE047A 		fconsts	s14, #148
 1593 0062 F4EEC77A 		fcmpes	s15, s14
 1594 0066 F1EE10FA 		fmstat
 1595 006a 29D5     		bpl	.L280
 1596 006c 0423     		movs	r3, #4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 29


 1597 006e 2370     		strb	r3, [r4]
 1598 0070 1648     		ldr	r0, .L285+4
 1599 0072 E6E7     		b	.L272
 1600              	.L283:
 1601 0074 00EB8103 		add	r3, r0, r1, lsl #2
 1602 0078 01A9     		add	r1, sp, #4
 1603 007a D3F86C38 		ldr	r3, [r3, #2156]
 1604 007e 643B     		subs	r3, r3, #100
 1605 0080 03EB8303 		add	r3, r3, r3, lsl #2
 1606 0084 00EB8300 		add	r0, r0, r3, lsl #2
 1607 0088 00F5CC60 		add	r0, r0, #1632
 1608 008c FFF7FEFF 		bl	_ZN17TemperatureSensor26GetThermocoupleTemperatureEPf
 1609 0090 2070     		strb	r0, [r4]
 1610 0092 98B9     		cbnz	r0, .L278
 1611              	.L281:
 1612 0094 0198     		ldr	r0, [sp, #4]	@ float
 1613 0096 02B0     		add	sp, sp, #8
 1614              		@ sp needed
 1615 0098 10BD     		pop	{r4, pc}
 1616              	.L284:
 1617 009a 00EB8103 		add	r3, r0, r1, lsl #2
 1618 009e 01A9     		add	r1, sp, #4
 1619 00a0 D3F86C38 		ldr	r3, [r3, #2156]
 1620 00a4 C83B     		subs	r3, r3, #200
 1621 00a6 03EB8303 		add	r3, r3, r3, lsl #2
 1622 00aa 00EB8300 		add	r0, r0, r3, lsl #2
 1623 00ae 00F5CC60 		add	r0, r0, #1632
 1624 00b2 FFF7FEFF 		bl	_ZN17TemperatureSensor17GetRtdTemperatureEPf
 1625 00b6 2070     		strb	r0, [r4]
 1626 00b8 0028     		cmp	r0, #0
 1627 00ba EBD0     		beq	.L281
 1628              	.L278:
 1629 00bc 0248     		ldr	r0, .L285
 1630 00be C0E7     		b	.L272
 1631              	.L280:
 1632 00c0 0023     		movs	r3, #0
 1633 00c2 2370     		strb	r3, [r4]
 1634 00c4 BDE7     		b	.L272
 1635              	.L286:
 1636 00c6 00BF     		.align	2
 1637              	.L285:
 1638 00c8 0000FA44 		.word	1157234688
 1639 00cc 339388C3 		.word	-1014459597
 1640              		.size	_ZN8Platform14GetTemperatureEjR16TemperatureError, .-_ZN8Platform14GetTemperatureEjR16Temper
 1641              		.section	.text._ZN8Platform20GetZProbeTemperatureEv,"ax",%progbits
 1642              		.align	2
 1643              		.global	_ZN8Platform20GetZProbeTemperatureEv
 1644              		.thumb
 1645              		.thumb_func
 1646              		.type	_ZN8Platform20GetZProbeTemperatureEv, %function
 1647              	_ZN8Platform20GetZProbeTemperatureEv:
 1648              		@ args = 0, pretend = 0, frame = 8
 1649              		@ frame_needed = 0, uses_anonymous_args = 0
 1650 0000 00B5     		push	{lr}
 1651 0002 0D4B     		ldr	r3, .L291
 1652 0004 DB68     		ldr	r3, [r3, #12]
 1653 0006 93F92E10 		ldrsb	r1, [r3, #46]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 30


 1654 000a 0029     		cmp	r1, #0
 1655 000c 83B0     		sub	sp, sp, #12
 1656 000e 0EDB     		blt	.L290
 1657 0010 0DF10702 		add	r2, sp, #7
 1658 0014 FFF7FEFF 		bl	_ZN8Platform14GetTemperatureEjR16TemperatureError
 1659 0018 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 1660 001c F3EE097A 		fconsts	s15, #57
 1661 0020 002B     		cmp	r3, #0
 1662 0022 18BF     		it	ne
 1663 0024 17EE900A 		fmrsne	r0, s15
 1664 0028 03B0     		add	sp, sp, #12
 1665              		@ sp needed
 1666 002a 5DF804FB 		ldr	pc, [sp], #4
 1667              	.L290:
 1668 002e 0348     		ldr	r0, .L291+4
 1669 0030 03B0     		add	sp, sp, #12
 1670              		@ sp needed
 1671 0032 5DF804FB 		ldr	pc, [sp], #4
 1672              	.L292:
 1673 0036 00BF     		.align	2
 1674              	.L291:
 1675 0038 00000000 		.word	reprap
 1676 003c 0000C841 		.word	1103626240
 1677              		.size	_ZN8Platform20GetZProbeTemperatureEv, .-_ZN8Platform20GetZProbeTemperatureEv
 1678              		.section	.text._ZN8Platform16ZProbeStopHeightEv,"ax",%progbits
 1679              		.align	2
 1680              		.global	_ZN8Platform16ZProbeStopHeightEv
 1681              		.thumb
 1682              		.thumb_func
 1683              		.type	_ZN8Platform16ZProbeStopHeightEv, %function
 1684              	_ZN8Platform16ZProbeStopHeightEv:
 1685              		@ args = 0, pretend = 0, frame = 0
 1686              		@ frame_needed = 0, uses_anonymous_args = 0
 1687 0000 D0F89030 		ldr	r3, [r0, #144]
 1688 0004 013B     		subs	r3, r3, #1
 1689 0006 062B     		cmp	r3, #6
 1690 0008 10B5     		push	{r4, lr}
 1691 000a 08D8     		bhi	.L294
 1692 000c 0122     		movs	r2, #1
 1693 000e 02FA03F3 		lsl	r3, r2, r3
 1694 0012 13F0440F 		tst	r3, #68
 1695 0016 14D1     		bne	.L295
 1696 0018 13F0130F 		tst	r3, #19
 1697 001c 14D1     		bne	.L300
 1698              	.L294:
 1699 001e 0446     		mov	r4, r0
 1700              	.L296:
 1701 0020 FFF7FEFF 		bl	_ZN8Platform20GetZProbeTemperatureEv
 1702 0024 D4ED046A 		flds	s13, [r4, #16]
 1703 0028 94ED057A 		flds	s14, [r4, #20]
 1704 002c D4ED037A 		flds	s15, [r4, #12]
 1705 0030 06EE100A 		fmsr	s12, r0
 1706 0034 76EE666A 		fsubs	s13, s12, s13
 1707 0038 E6EE877A 		vfma.f32	s15, s13, s14
 1708 003c 17EE900A 		fmrs	r0, s15
 1709 0040 10BD     		pop	{r4, pc}
 1710              	.L295:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 31


 1711 0042 00F16004 		add	r4, r0, #96
 1712 0046 EBE7     		b	.L296
 1713              	.L300:
 1714 0048 00F13004 		add	r4, r0, #48
 1715 004c E8E7     		b	.L296
 1716              		.size	_ZN8Platform16ZProbeStopHeightEv, .-_ZN8Platform16ZProbeStopHeightEv
 1717 004e 00BF     		.section	.text._ZN8Platform23GetZProbeStartingHeightEv,"ax",%progbits
 1718              		.align	2
 1719              		.global	_ZN8Platform23GetZProbeStartingHeightEv
 1720              		.thumb
 1721              		.thumb_func
 1722              		.type	_ZN8Platform23GetZProbeStartingHeightEv, %function
 1723              	_ZN8Platform23GetZProbeStartingHeightEv:
 1724              		@ args = 0, pretend = 0, frame = 0
 1725              		@ frame_needed = 0, uses_anonymous_args = 0
 1726 0000 10B5     		push	{r4, lr}
 1727 0002 D0F89030 		ldr	r3, [r0, #144]
 1728 0006 013B     		subs	r3, r3, #1
 1729 0008 062B     		cmp	r3, #6
 1730 000a 2DED028B 		fstmfdd	sp!, {d8}
 1731 000e 08D8     		bhi	.L302
 1732 0010 0122     		movs	r2, #1
 1733 0012 02FA03F3 		lsl	r3, r2, r3
 1734 0016 13F0440F 		tst	r3, #68
 1735 001a 28D1     		bne	.L303
 1736 001c 13F0130F 		tst	r3, #19
 1737 0020 28D1     		bne	.L313
 1738              	.L302:
 1739 0022 0446     		mov	r4, r0
 1740              	.L304:
 1741 0024 94ED068A 		flds	s16, [r4, #24]
 1742 0028 FFF7FEFF 		bl	_ZN8Platform20GetZProbeTemperatureEv
 1743 002c D4ED046A 		flds	s13, [r4, #16]
 1744 0030 94ED057A 		flds	s14, [r4, #20]
 1745 0034 D4ED037A 		flds	s15, [r4, #12]
 1746 0038 06EE100A 		fmsr	s12, r0
 1747 003c 76EE666A 		fsubs	s13, s12, s13
 1748 0040 E6EE877A 		vfma.f32	s15, s13, s14
 1749 0044 F4EE677A 		fcmps	s15, s15
 1750 0048 F1EE10FA 		fmstat
 1751 004c 08D6     		bvs	.L305
 1752 004e F5EEC07A 		fcmpezs	s15
 1753 0052 9FED0A7A 		flds	s14, .L314
 1754 0056 F1EE10FA 		fmstat
 1755 005a D8BF     		it	le
 1756 005c F0EE477A 		fcpysle	s15, s14
 1757              	.L305:
 1758 0060 78EE277A 		fadds	s15, s16, s15
 1759 0064 BDEC028B 		fldmfdd	sp!, {d8}
 1760 0068 17EE900A 		fmrs	r0, s15
 1761 006c 10BD     		pop	{r4, pc}
 1762              	.L303:
 1763 006e 00F16004 		add	r4, r0, #96
 1764 0072 D7E7     		b	.L304
 1765              	.L313:
 1766 0074 00F13004 		add	r4, r0, #48
 1767 0078 D4E7     		b	.L304
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 32


 1768              	.L315:
 1769 007a 00BF     		.align	2
 1770              	.L314:
 1771 007c 00000000 		.word	0
 1772              		.size	_ZN8Platform23GetZProbeStartingHeightEv, .-_ZN8Platform23GetZProbeStartingHeightEv
 1773              		.section	.text._ZN8Platform12AnyHeaterHotEtf,"ax",%progbits
 1774              		.align	2
 1775              		.global	_ZN8Platform12AnyHeaterHotEtf
 1776              		.thumb
 1777              		.thumb_func
 1778              		.type	_ZN8Platform12AnyHeaterHotEtf, %function
 1779              	_ZN8Platform12AnyHeaterHotEtf:
 1780              		@ args = 0, pretend = 0, frame = 8
 1781              		@ frame_needed = 0, uses_anonymous_args = 0
 1782 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1783 0002 2DED028B 		fstmfdd	sp!, {d8}
 1784 0006 214E     		ldr	r6, .L334
 1785 0008 83B0     		sub	sp, sp, #12
 1786 000a 08EE102A 		fmsr	s16, r2
 1787 000e 0746     		mov	r7, r0
 1788 0010 0D46     		mov	r5, r1
 1789 0012 0024     		movs	r4, #0
 1790 0014 FAEE048A 		fconsts	s17, #164
 1791 0018 0BE0     		b	.L322
 1792              	.L333:
 1793 001a F368     		ldr	r3, [r6, #12]
 1794 001c 93F92E20 		ldrsb	r2, [r3, #46]
 1795 0020 9442     		cmp	r4, r2
 1796 0022 31D0     		beq	.L325
 1797 0024 93F92F20 		ldrsb	r2, [r3, #47]
 1798 0028 9442     		cmp	r4, r2
 1799 002a 2DD0     		beq	.L325
 1800              	.L317:
 1801 002c 0134     		adds	r4, r4, #1
 1802 002e 082C     		cmp	r4, #8
 1803 0030 25D0     		beq	.L332
 1804              	.L322:
 1805 0032 45FA04F3 		asr	r3, r5, r4
 1806 0036 DB07     		lsls	r3, r3, #31
 1807 0038 F8D5     		bpl	.L317
 1808 003a F38D     		ldrh	r3, [r6, #46]
 1809 003c A342     		cmp	r3, r4
 1810 003e ECD9     		bls	.L333
 1811 0040 F068     		ldr	r0, [r6, #12]
 1812              	.L319:
 1813 0042 2146     		mov	r1, r4
 1814 0044 FFF7FEFF 		bl	_ZNK4Heat8IsTuningEj
 1815 0048 A0B9     		cbnz	r0, .L320
 1816 004a 3846     		mov	r0, r7
 1817 004c 2146     		mov	r1, r4
 1818 004e 0DF10702 		add	r2, sp, #7
 1819 0052 FFF7FEFF 		bl	_ZN8Platform14GetTemperatureEjR16TemperatureError
 1820 0056 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 1821 005a 07EE900A 		fmsr	s15, r0
 1822 005e 4BB9     		cbnz	r3, .L320
 1823 0060 F4EEC87A 		fcmpes	s15, s16
 1824 0064 F1EE10FA 		fmstat
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 33


 1825 0068 04DA     		bge	.L320
 1826 006a F4EEE87A 		fcmpes	s15, s17
 1827 006e F1EE10FA 		fmstat
 1828 0072 DBD5     		bpl	.L317
 1829              	.L320:
 1830 0074 0120     		movs	r0, #1
 1831 0076 03B0     		add	sp, sp, #12
 1832              		@ sp needed
 1833 0078 BDEC028B 		fldmfdd	sp!, {d8}
 1834 007c F0BD     		pop	{r4, r5, r6, r7, pc}
 1835              	.L332:
 1836 007e 0020     		movs	r0, #0
 1837 0080 03B0     		add	sp, sp, #12
 1838              		@ sp needed
 1839 0082 BDEC028B 		fldmfdd	sp!, {d8}
 1840 0086 F0BD     		pop	{r4, r5, r6, r7, pc}
 1841              	.L325:
 1842 0088 1846     		mov	r0, r3
 1843 008a DAE7     		b	.L319
 1844              	.L335:
 1845              		.align	2
 1846              	.L334:
 1847 008c 00000000 		.word	reprap
 1848              		.size	_ZN8Platform12AnyHeaterHotEtf, .-_ZN8Platform12AnyHeaterHotEtf
 1849              		.section	.text._ZN8Platform9SetHeaterEjf,"ax",%progbits
 1850              		.align	2
 1851              		.global	_ZN8Platform9SetHeaterEjf
 1852              		.thumb
 1853              		.thumb_func
 1854              		.type	_ZN8Platform9SetHeaterEjf, %function
 1855              	_ZN8Platform9SetHeaterEjf:
 1856              		@ args = 0, pretend = 0, frame = 0
 1857              		@ frame_needed = 0, uses_anonymous_args = 0
 1858 0000 10B5     		push	{r4, lr}
 1859 0002 2DED028B 		fstmfdd	sp!, {d8}
 1860 0006 4418     		adds	r4, r0, r1
 1861 0008 08EE102A 		fmsr	s16, r2
 1862 000c 94F87635 		ldrb	r3, [r4, #1398]	@ zero_extendqisi2
 1863 0010 FF2B     		cmp	r3, #255
 1864 0012 24D0     		beq	.L336
 1865 0014 134B     		ldr	r3, .L342
 1866 0016 49B2     		sxtb	r1, r1
 1867 0018 D868     		ldr	r0, [r3, #12]
 1868 001a FFF7FEFF 		bl	_ZNK4Heat10UseSlowPwmEa
 1869 001e 94F87635 		ldrb	r3, [r4, #1398]	@ zero_extendqisi2
 1870 0022 0028     		cmp	r0, #0
 1871 0024 F7EE007A 		fconsts	s15, #112
 1872 0028 0CBF     		ite	eq
 1873 002a FA22     		moveq	r2, #250
 1874 002c 0A22     		movne	r2, #10
 1875 002e C72B     		cmp	r3, #199
 1876 0030 37EEC88A 		fsubs	s16, s15, s16
 1877 0034 08D8     		bhi	.L341
 1878 0036 18EE101A 		fmrs	r1, s16
 1879 003a BDEC028B 		fldmfdd	sp!, {d8}
 1880 003e 1846     		mov	r0, r3
 1881 0040 BDE81040 		pop	{r4, lr}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 34


 1882 0044 FFF7FEBF 		b	_Z9AnalogOuthft
 1883              	.L341:
 1884 0048 18EE101A 		fmrs	r1, s16
 1885 004c BDEC028B 		fldmfdd	sp!, {d8}
 1886 0050 03F13800 		add	r0, r3, #56
 1887 0054 C0B2     		uxtb	r0, r0
 1888 0056 BDE81040 		pop	{r4, lr}
 1889 005a FFF7FEBF 		b	_ZN13DuetExpansion9AnalogOutEhf
 1890              	.L336:
 1891 005e BDEC028B 		fldmfdd	sp!, {d8}
 1892 0062 10BD     		pop	{r4, pc}
 1893              	.L343:
 1894              		.align	2
 1895              	.L342:
 1896 0064 00000000 		.word	reprap
 1897              		.size	_ZN8Platform9SetHeaterEjf, .-_ZN8Platform9SetHeaterEjf
 1898              		.section	.text._ZN8Platform23UpdateConfiguredHeatersEv,"ax",%progbits
 1899              		.align	2
 1900              		.global	_ZN8Platform23UpdateConfiguredHeatersEv
 1901              		.thumb
 1902              		.thumb_func
 1903              		.type	_ZN8Platform23UpdateConfiguredHeatersEv, %function
 1904              	_ZN8Platform23UpdateConfiguredHeatersEv:
 1905              		@ args = 0, pretend = 0, frame = 0
 1906              		@ frame_needed = 0, uses_anonymous_args = 0
 1907 0000 70B5     		push	{r4, r5, r6, lr}
 1908 0002 164B     		ldr	r3, .L353
 1909 0004 0022     		movs	r2, #0
 1910 0006 DB68     		ldr	r3, [r3, #12]
 1911 0008 C0F80827 		str	r2, [r0, #1800]
 1912 000c 93F92E20 		ldrsb	r2, [r3, #46]
 1913 0010 002A     		cmp	r2, #0
 1914 0012 0546     		mov	r5, r0
 1915 0014 04DB     		blt	.L345
 1916 0016 0121     		movs	r1, #1
 1917 0018 01FA02F2 		lsl	r2, r1, r2
 1918 001c C0F80827 		str	r2, [r0, #1800]
 1919              	.L345:
 1920 0020 93F92F30 		ldrsb	r3, [r3, #47]
 1921 0024 002B     		cmp	r3, #0
 1922 0026 07DB     		blt	.L346
 1923 0028 D5F80827 		ldr	r2, [r5, #1800]
 1924 002c 0121     		movs	r1, #1
 1925 002e 01FA03F3 		lsl	r3, r1, r3
 1926 0032 1A43     		orrs	r2, r2, r3
 1927 0034 C5F80827 		str	r2, [r5, #1800]
 1928              	.L346:
 1929 0038 0024     		movs	r4, #0
 1930 003a 0126     		movs	r6, #1
 1931              	.L349:
 1932 003c 61B2     		sxtb	r1, r4
 1933 003e 0748     		ldr	r0, .L353
 1934 0040 FFF7FEFF 		bl	_ZNK6RepRap22IsHeaterAssignedToToolEa
 1935 0044 06FA04F3 		lsl	r3, r6, r4
 1936 0048 0134     		adds	r4, r4, #1
 1937 004a 20B1     		cbz	r0, .L347
 1938 004c D5F80827 		ldr	r2, [r5, #1800]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 35


 1939 0050 1343     		orrs	r3, r3, r2
 1940 0052 C5F80837 		str	r3, [r5, #1800]
 1941              	.L347:
 1942 0056 082C     		cmp	r4, #8
 1943 0058 F0D1     		bne	.L349
 1944 005a 70BD     		pop	{r4, r5, r6, pc}
 1945              	.L354:
 1946              		.align	2
 1947              	.L353:
 1948 005c 00000000 		.word	reprap
 1949              		.size	_ZN8Platform23UpdateConfiguredHeatersEv, .-_ZN8Platform23UpdateConfiguredHeatersEv
 1950              		.section	.text._ZNK8Platform19GetAllEndstopStatesEv,"ax",%progbits
 1951              		.align	2
 1952              		.global	_ZNK8Platform19GetAllEndstopStatesEv
 1953              		.thumb
 1954              		.thumb_func
 1955              		.type	_ZNK8Platform19GetAllEndstopStatesEv, %function
 1956              	_ZNK8Platform19GetAllEndstopStatesEv:
 1957              		@ args = 0, pretend = 0, frame = 0
 1958              		@ frame_needed = 0, uses_anonymous_args = 0
 1959 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1960 0002 0024     		movs	r4, #0
 1961 0004 0546     		mov	r5, r0
 1962 0006 2646     		mov	r6, r4
 1963 0008 0127     		movs	r7, #1
 1964 000a 08E0     		b	.L361
 1965              	.L357:
 1966 000c FFF7FEFF 		bl	digitalRead
 1967              	.L358:
 1968 0010 07FA04F3 		lsl	r3, r7, r4
 1969 0014 00B1     		cbz	r0, .L362
 1970 0016 1E43     		orrs	r6, r6, r3
 1971              	.L362:
 1972 0018 0134     		adds	r4, r4, #1
 1973 001a 0A2C     		cmp	r4, #10
 1974 001c 0BD0     		beq	.L367
 1975              	.L361:
 1976 001e 2B19     		adds	r3, r5, r4
 1977 0020 93F8E600 		ldrb	r0, [r3, #230]	@ zero_extendqisi2
 1978 0024 FF28     		cmp	r0, #255
 1979 0026 F7D0     		beq	.L362
 1980 0028 C728     		cmp	r0, #199
 1981 002a EFD9     		bls	.L357
 1982 002c 3830     		adds	r0, r0, #56
 1983 002e C0B2     		uxtb	r0, r0
 1984 0030 FFF7FEFF 		bl	_ZN13DuetExpansion11DigitalReadEh
 1985 0034 ECE7     		b	.L358
 1986              	.L367:
 1987 0036 3046     		mov	r0, r6
 1988 0038 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1989              		.size	_ZNK8Platform19GetAllEndstopStatesEv, .-_ZNK8Platform19GetAllEndstopStatesEv
 1990 003a 00BF     		.section	.text._ZNK8Platform15GetZProbeResultEv,"ax",%progbits
 1991              		.align	2
 1992              		.global	_ZNK8Platform15GetZProbeResultEv
 1993              		.thumb
 1994              		.thumb_func
 1995              		.type	_ZNK8Platform15GetZProbeResultEv, %function
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 36


 1996              	_ZNK8Platform15GetZProbeResultEv:
 1997              		@ args = 0, pretend = 0, frame = 0
 1998              		@ frame_needed = 0, uses_anonymous_args = 0
 1999 0000 10B5     		push	{r4, lr}
 2000 0002 0446     		mov	r4, r0
 2001 0004 FFF7FEFF 		bl	_ZNK8Platform16GetZProbeReadingEv
 2002 0008 D4F89030 		ldr	r3, [r4, #144]
 2003 000c 013B     		subs	r3, r3, #1
 2004 000e 062B     		cmp	r3, #6
 2005 0010 08D8     		bhi	.L371
 2006 0012 0122     		movs	r2, #1
 2007 0014 02FA03F3 		lsl	r3, r2, r3
 2008 0018 13F0440F 		tst	r3, #68
 2009 001c 0FD1     		bne	.L370
 2010 001e 13F0130F 		tst	r3, #19
 2011 0022 12D1     		bne	.L378
 2012              	.L371:
 2013 0024 2368     		ldr	r3, [r4]
 2014 0026 9842     		cmp	r0, r3
 2015 0028 0DDA     		bge	.L373
 2016              	.L379:
 2017 002a 00EB8000 		add	r0, r0, r0, lsl #2
 2018 002e 03EBC303 		add	r3, r3, r3, lsl #3
 2019 0032 B3EB400F 		cmp	r3, r0, lsl #1
 2020 0036 CCBF     		ite	gt
 2021 0038 0020     		movgt	r0, #0
 2022 003a 0320     		movle	r0, #3
 2023 003c 10BD     		pop	{r4, pc}
 2024              	.L370:
 2025 003e 6034     		adds	r4, r4, #96
 2026 0040 2368     		ldr	r3, [r4]
 2027 0042 9842     		cmp	r0, r3
 2028 0044 F1DB     		blt	.L379
 2029              	.L373:
 2030 0046 0120     		movs	r0, #1
 2031 0048 10BD     		pop	{r4, pc}
 2032              	.L378:
 2033 004a 3034     		adds	r4, r4, #48
 2034 004c EAE7     		b	.L371
 2035              		.size	_ZNK8Platform15GetZProbeResultEv, .-_ZNK8Platform15GetZProbeResultEv
 2036 004e 00BF     		.section	.text._ZNK8Platform7StoppedEj,"ax",%progbits
 2037              		.align	2
 2038              		.global	_ZNK8Platform7StoppedEj
 2039              		.thumb
 2040              		.thumb_func
 2041              		.type	_ZNK8Platform7StoppedEj, %function
 2042              	_ZNK8Platform7StoppedEj:
 2043              		@ args = 0, pretend = 0, frame = 0
 2044              		@ frame_needed = 0, uses_anonymous_args = 0
 2045 0000 0929     		cmp	r1, #9
 2046 0002 70B5     		push	{r4, r5, r6, lr}
 2047 0004 27D8     		bhi	.L383
 2048 0006 4418     		adds	r4, r0, r1
 2049 0008 94F8E620 		ldrb	r2, [r4, #230]	@ zero_extendqisi2
 2050 000c FF2A     		cmp	r2, #255
 2051 000e 22D0     		beq	.L383
 2052 0010 1F4D     		ldr	r5, .L404
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 37


 2053 0012 2D69     		ldr	r5, [r5, #16]
 2054 0014 D5F8B051 		ldr	r5, [r5, #432]
 2055 0018 A942     		cmp	r1, r5
 2056 001a 1ED2     		bcs	.L400
 2057 001c 00EB8105 		add	r5, r0, r1, lsl #2
 2058 0020 D5F85065 		ldr	r6, [r5, #1360]
 2059 0024 76B9     		cbnz	r6, .L387
 2060 0026 D0F89020 		ldr	r2, [r0, #144]
 2061 002a 002A     		cmp	r2, #0
 2062 002c 13DD     		ble	.L383
 2063 002e D0F89430 		ldr	r3, [r0, #148]
 2064 0032 0122     		movs	r2, #1
 2065 0034 02FA01F1 		lsl	r1, r2, r1
 2066 0038 1942     		tst	r1, r3
 2067 003a 0CD0     		beq	.L383
 2068 003c BDE87040 		pop	{r4, r5, r6, lr}
 2069 0040 FFF7FEBF 		b	_ZNK8Platform15GetZProbeResultEv
 2070              	.L387:
 2071 0044 C72A     		cmp	r2, #199
 2072 0046 1DD8     		bhi	.L401
 2073 0048 1046     		mov	r0, r2
 2074 004a FFF7FEFF 		bl	digitalRead
 2075              	.L390:
 2076 004e 94F86835 		ldrb	r3, [r4, #1384]	@ zero_extendqisi2
 2077 0052 8342     		cmp	r3, r0
 2078 0054 10D0     		beq	.L402
 2079              	.L383:
 2080 0056 0020     		movs	r0, #0
 2081 0058 70BD     		pop	{r4, r5, r6, pc}
 2082              	.L400:
 2083 005a C72A     		cmp	r2, #199
 2084 005c 06D8     		bhi	.L403
 2085 005e 1046     		mov	r0, r2
 2086 0060 FFF7FEFF 		bl	digitalRead
 2087              	.L386:
 2088 0064 08B1     		cbz	r0, .L399
 2089              	.L391:
 2090 0066 0220     		movs	r0, #2
 2091 0068 70BD     		pop	{r4, r5, r6, pc}
 2092              	.L399:
 2093 006a 70BD     		pop	{r4, r5, r6, pc}
 2094              	.L403:
 2095 006c 02F13800 		add	r0, r2, #56
 2096 0070 C0B2     		uxtb	r0, r0
 2097 0072 FFF7FEFF 		bl	_ZN13DuetExpansion11DigitalReadEh
 2098 0076 F5E7     		b	.L386
 2099              	.L402:
 2100 0078 D5F85035 		ldr	r3, [r5, #1360]
 2101 007c 022B     		cmp	r3, #2
 2102 007e F2D0     		beq	.L391
 2103 0080 0120     		movs	r0, #1
 2104 0082 70BD     		pop	{r4, r5, r6, pc}
 2105              	.L401:
 2106 0084 02F13800 		add	r0, r2, #56
 2107 0088 C0B2     		uxtb	r0, r0
 2108 008a FFF7FEFF 		bl	_ZN13DuetExpansion11DigitalReadEh
 2109 008e DEE7     		b	.L390
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 38


 2110              	.L405:
 2111              		.align	2
 2112              	.L404:
 2113 0090 00000000 		.word	reprap
 2114              		.size	_ZNK8Platform7StoppedEj, .-_ZNK8Platform7StoppedEj
 2115              		.section	.text._ZNK8Platform21WriteZProbeParametersEP9FileStore,"ax",%progbits
 2116              		.align	2
 2117              		.global	_ZNK8Platform21WriteZProbeParametersEP9FileStore
 2118              		.thumb
 2119              		.thumb_func
 2120              		.type	_ZNK8Platform21WriteZProbeParametersEP9FileStore, %function
 2121              	_ZNK8Platform21WriteZProbeParametersEP9FileStore:
 2122              		@ args = 0, pretend = 0, frame = 0
 2123              		@ frame_needed = 0, uses_anonymous_args = 0
 2124 0000 38B5     		push	{r3, r4, r5, lr}
 2125 0002 0C46     		mov	r4, r1
 2126 0004 0546     		mov	r5, r0
 2127 0006 0F49     		ldr	r1, .L420
 2128 0008 2046     		mov	r0, r4
 2129 000a FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 2130 000e 08B9     		cbnz	r0, .L419
 2131              	.L412:
 2132 0010 0020     		movs	r0, #0
 2133 0012 38BD     		pop	{r3, r4, r5, pc}
 2134              	.L419:
 2135 0014 05F13000 		add	r0, r5, #48
 2136 0018 2146     		mov	r1, r4
 2137 001a 0122     		movs	r2, #1
 2138 001c FFF7FEFF 		bl	_ZNK16ZProbeParameters15WriteParametersEP9FileStorej
 2139 0020 0028     		cmp	r0, #0
 2140 0022 F5D0     		beq	.L412
 2141 0024 05F16000 		add	r0, r5, #96
 2142 0028 2146     		mov	r1, r4
 2143 002a 0322     		movs	r2, #3
 2144 002c FFF7FEFF 		bl	_ZNK16ZProbeParameters15WriteParametersEP9FileStorej
 2145 0030 0028     		cmp	r0, #0
 2146 0032 EDD0     		beq	.L412
 2147 0034 2846     		mov	r0, r5
 2148 0036 2146     		mov	r1, r4
 2149 0038 0422     		movs	r2, #4
 2150 003a BDE83840 		pop	{r3, r4, r5, lr}
 2151 003e FFF7FEBF 		b	_ZNK16ZProbeParameters15WriteParametersEP9FileStorej
 2152              	.L421:
 2153 0042 00BF     		.align	2
 2154              	.L420:
 2155 0044 20000000 		.word	.LC8
 2156              		.size	_ZNK8Platform21WriteZProbeParametersEP9FileStore, .-_ZNK8Platform21WriteZProbeParametersEP9F
 2157              		.section	.text._ZN8Platform12SetDirectionEjb,"ax",%progbits
 2158              		.align	2
 2159              		.global	_ZN8Platform12SetDirectionEjb
 2160              		.thumb
 2161              		.thumb_func
 2162              		.type	_ZN8Platform12SetDirectionEjb, %function
 2163              	_ZN8Platform12SetDirectionEjb:
 2164              		@ args = 0, pretend = 0, frame = 0
 2165              		@ frame_needed = 0, uses_anonymous_args = 0
 2166 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 39


 2167 0004 204B     		ldr	r3, .L433
 2168 0006 1B69     		ldr	r3, [r3, #16]
 2169 0008 D3F8B061 		ldr	r6, [r3, #432]
 2170 000c B142     		cmp	r1, r6
 2171 000e 0546     		mov	r5, r0
 2172 0010 1746     		mov	r7, r2
 2173 0012 19D2     		bcs	.L423
 2174 0014 00EBC106 		add	r6, r0, r1, lsl #3
 2175 0018 D6F80432 		ldr	r3, [r6, #516]
 2176 001c B3B1     		cbz	r3, .L422
 2177 001e DFF86C80 		ldr	r8, .L433+4
 2178 0022 0024     		movs	r4, #0
 2179              	.L429:
 2180 0024 3319     		adds	r3, r6, r4
 2181 0026 93F80832 		ldrb	r3, [r3, #520]	@ zero_extendqisi2
 2182 002a EA18     		adds	r2, r5, r3
 2183 002c F7B1     		cbz	r7, .L426
 2184 002e 92F8D210 		ldrb	r1, [r2, #210]	@ zero_extendqisi2
 2185              	.L427:
 2186 0032 18F80300 		ldrb	r0, [r8, r3]	@ zero_extendqisi2
 2187 0036 FFF7FEFF 		bl	digitalWrite
 2188 003a D6F80432 		ldr	r3, [r6, #516]
 2189 003e 0134     		adds	r4, r4, #1
 2190 0040 A342     		cmp	r3, r4
 2191 0042 EFD8     		bhi	.L429
 2192 0044 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2193              	.L423:
 2194 0048 0929     		cmp	r1, #9
 2195 004a 01D9     		bls	.L432
 2196              	.L422:
 2197 004c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2198              	.L432:
 2199 0050 8E1B     		subs	r6, r1, r6
 2200 0052 0644     		add	r6, r6, r0
 2201 0054 96F83432 		ldrb	r3, [r6, #564]	@ zero_extendqisi2
 2202 0058 1D44     		add	r5, r5, r3
 2203 005a 95F8D210 		ldrb	r1, [r5, #210]	@ zero_extendqisi2
 2204 005e 52B1     		cbz	r2, .L430
 2205 0060 0A4A     		ldr	r2, .L433+4
 2206 0062 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 2207 0066 D05C     		ldrb	r0, [r2, r3]	@ zero_extendqisi2
 2208 0068 FFF7FEBF 		b	digitalWrite
 2209              	.L426:
 2210 006c 92F8D210 		ldrb	r1, [r2, #210]	@ zero_extendqisi2
 2211 0070 81F00101 		eor	r1, r1, #1
 2212 0074 DDE7     		b	.L427
 2213              	.L430:
 2214 0076 054A     		ldr	r2, .L433+4
 2215 0078 81F00101 		eor	r1, r1, #1
 2216 007c D05C     		ldrb	r0, [r2, r3]	@ zero_extendqisi2
 2217 007e BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 2218 0082 FFF7FEBF 		b	digitalWrite
 2219              	.L434:
 2220 0086 00BF     		.align	2
 2221              	.L433:
 2222 0088 00000000 		.word	reprap
 2223 008c 00000000 		.word	.LANCHOR5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 40


 2224              		.size	_ZN8Platform12SetDirectionEjb, .-_ZN8Platform12SetDirectionEjb
 2225              		.section	.text._ZN8Platform12EnableDriverEj,"ax",%progbits
 2226              		.align	2
 2227              		.global	_ZN8Platform12EnableDriverEj
 2228              		.thumb
 2229              		.thumb_func
 2230              		.type	_ZN8Platform12EnableDriverEj, %function
 2231              	_ZN8Platform12EnableDriverEj:
 2232              		@ args = 0, pretend = 0, frame = 0
 2233              		@ frame_needed = 0, uses_anonymous_args = 0
 2234 0000 0929     		cmp	r1, #9
 2235 0002 70B5     		push	{r4, r5, r6, lr}
 2236 0004 0C46     		mov	r4, r1
 2237 0006 0546     		mov	r5, r0
 2238 0008 00D9     		bls	.L441
 2239 000a 70BD     		pop	{r4, r5, r6, pc}
 2240              	.L441:
 2241 000c 4618     		adds	r6, r0, r1
 2242 000e 96F8C830 		ldrb	r3, [r6, #200]	@ zero_extendqisi2
 2243 0012 022B     		cmp	r3, #2
 2244 0014 16D0     		beq	.L442
 2245 0016 0223     		movs	r3, #2
 2246 0018 86F8C830 		strb	r3, [r6, #200]
 2247 001c FFF7FEFF 		bl	_ZN8Platform18UpdateMotorCurrentEj.part.27
 2248 0020 D5F87032 		ldr	r3, [r5, #624]
 2249 0024 9C42     		cmp	r4, r3
 2250 0026 07D3     		bcc	.L443
 2251 0028 074B     		ldr	r3, .L444
 2252 002a 96F8DC10 		ldrb	r1, [r6, #220]	@ zero_extendqisi2
 2253 002e 185D     		ldrb	r0, [r3, r4]	@ zero_extendqisi2
 2254 0030 BDE87040 		pop	{r4, r5, r6, lr}
 2255 0034 FFF7FEBF 		b	digitalWrite
 2256              	.L443:
 2257 0038 2046     		mov	r0, r4
 2258 003a 0121     		movs	r1, #1
 2259 003c BDE87040 		pop	{r4, r5, r6, lr}
 2260 0040 FFF7FEBF 		b	_ZN7TMC266011EnableDriveEjb
 2261              	.L442:
 2262 0044 70BD     		pop	{r4, r5, r6, pc}
 2263              	.L445:
 2264 0046 00BF     		.align	2
 2265              	.L444:
 2266 0048 00000000 		.word	.LANCHOR3
 2267              		.size	_ZN8Platform12EnableDriverEj, .-_ZN8Platform12EnableDriverEj
 2268              		.section	.text._ZN8Platform13DisableDriverEj,"ax",%progbits
 2269              		.align	2
 2270              		.global	_ZN8Platform13DisableDriverEj
 2271              		.thumb
 2272              		.thumb_func
 2273              		.type	_ZN8Platform13DisableDriverEj, %function
 2274              	_ZN8Platform13DisableDriverEj:
 2275              		@ args = 0, pretend = 0, frame = 0
 2276              		@ frame_needed = 0, uses_anonymous_args = 0
 2277              		@ link register save eliminated.
 2278 0000 0929     		cmp	r1, #9
 2279 0002 01D8     		bhi	.L446
 2280 0004 FFF7FEBF 		b	_ZN8Platform13DisableDriverEj.part.26
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 41


 2281              	.L446:
 2282 0008 7047     		bx	lr
 2283              		.size	_ZN8Platform13DisableDriverEj, .-_ZN8Platform13DisableDriverEj
 2284 000a 00BF     		.section	.text._ZN8Platform11EnableDriveEj,"ax",%progbits
 2285              		.align	2
 2286              		.global	_ZN8Platform11EnableDriveEj
 2287              		.thumb
 2288              		.thumb_func
 2289              		.type	_ZN8Platform11EnableDriveEj, %function
 2290              	_ZN8Platform11EnableDriveEj:
 2291              		@ args = 0, pretend = 0, frame = 0
 2292              		@ frame_needed = 0, uses_anonymous_args = 0
 2293 0000 70B5     		push	{r4, r5, r6, lr}
 2294 0002 124B     		ldr	r3, .L455
 2295 0004 1B69     		ldr	r3, [r3, #16]
 2296 0006 D3F8B051 		ldr	r5, [r3, #432]
 2297 000a A942     		cmp	r1, r5
 2298 000c 0646     		mov	r6, r0
 2299 000e 11D2     		bcs	.L449
 2300 0010 00EBC105 		add	r5, r0, r1, lsl #3
 2301 0014 D5F80432 		ldr	r3, [r5, #516]
 2302 0018 73B1     		cbz	r3, .L448
 2303 001a 0024     		movs	r4, #0
 2304              	.L453:
 2305 001c 2B19     		adds	r3, r5, r4
 2306 001e 3046     		mov	r0, r6
 2307 0020 93F80812 		ldrb	r1, [r3, #520]	@ zero_extendqisi2
 2308 0024 FFF7FEFF 		bl	_ZN8Platform12EnableDriverEj
 2309 0028 D5F80432 		ldr	r3, [r5, #516]
 2310 002c 0134     		adds	r4, r4, #1
 2311 002e A342     		cmp	r3, r4
 2312 0030 F4D8     		bhi	.L453
 2313 0032 70BD     		pop	{r4, r5, r6, pc}
 2314              	.L449:
 2315 0034 0929     		cmp	r1, #9
 2316 0036 00D9     		bls	.L454
 2317              	.L448:
 2318 0038 70BD     		pop	{r4, r5, r6, pc}
 2319              	.L454:
 2320 003a 4D1B     		subs	r5, r1, r5
 2321 003c 2E44     		add	r6, r6, r5
 2322 003e 96F83412 		ldrb	r1, [r6, #564]	@ zero_extendqisi2
 2323 0042 BDE87040 		pop	{r4, r5, r6, lr}
 2324 0046 FFF7FEBF 		b	_ZN8Platform12EnableDriverEj
 2325              	.L456:
 2326 004a 00BF     		.align	2
 2327              	.L455:
 2328 004c 00000000 		.word	reprap
 2329              		.size	_ZN8Platform11EnableDriveEj, .-_ZN8Platform11EnableDriveEj
 2330              		.section	.text._ZN8Platform12DisableDriveEj,"ax",%progbits
 2331              		.align	2
 2332              		.global	_ZN8Platform12DisableDriveEj
 2333              		.thumb
 2334              		.thumb_func
 2335              		.type	_ZN8Platform12DisableDriveEj, %function
 2336              	_ZN8Platform12DisableDriveEj:
 2337              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 42


 2338              		@ frame_needed = 0, uses_anonymous_args = 0
 2339 0000 70B5     		push	{r4, r5, r6, lr}
 2340 0002 144B     		ldr	r3, .L466
 2341 0004 1B69     		ldr	r3, [r3, #16]
 2342 0006 D3F8B051 		ldr	r5, [r3, #432]
 2343 000a A942     		cmp	r1, r5
 2344 000c 0646     		mov	r6, r0
 2345 000e 0ED2     		bcs	.L458
 2346 0010 00EBC105 		add	r5, r0, r1, lsl #3
 2347 0014 D5F80422 		ldr	r2, [r5, #516]
 2348 0018 8AB1     		cbz	r2, .L457
 2349 001a 0024     		movs	r4, #0
 2350              	.L463:
 2351 001c 2B19     		adds	r3, r5, r4
 2352 001e 0134     		adds	r4, r4, #1
 2353 0020 93F80812 		ldrb	r1, [r3, #520]	@ zero_extendqisi2
 2354 0024 0929     		cmp	r1, #9
 2355 0026 0BD9     		bls	.L464
 2356              	.L461:
 2357 0028 A242     		cmp	r2, r4
 2358 002a F7D8     		bhi	.L463
 2359 002c 70BD     		pop	{r4, r5, r6, pc}
 2360              	.L458:
 2361 002e 0929     		cmp	r1, #9
 2362 0030 05D8     		bhi	.L457
 2363 0032 4D1B     		subs	r5, r1, r5
 2364 0034 2E44     		add	r6, r6, r5
 2365 0036 96F83412 		ldrb	r1, [r6, #564]	@ zero_extendqisi2
 2366 003a 0929     		cmp	r1, #9
 2367 003c 06D9     		bls	.L465
 2368              	.L457:
 2369 003e 70BD     		pop	{r4, r5, r6, pc}
 2370              	.L464:
 2371 0040 3046     		mov	r0, r6
 2372 0042 FFF7FEFF 		bl	_ZN8Platform13DisableDriverEj.part.26
 2373 0046 D5F80422 		ldr	r2, [r5, #516]
 2374 004a EDE7     		b	.L461
 2375              	.L465:
 2376 004c BDE87040 		pop	{r4, r5, r6, lr}
 2377 0050 FFF7FEBF 		b	_ZN8Platform13DisableDriverEj.part.26
 2378              	.L467:
 2379              		.align	2
 2380              	.L466:
 2381 0054 00000000 		.word	reprap
 2382              		.size	_ZN8Platform12DisableDriveEj, .-_ZN8Platform12DisableDriveEj
 2383              		.section	.text._ZN8Platform14SetDriversIdleEv,"ax",%progbits
 2384              		.align	2
 2385              		.global	_ZN8Platform14SetDriversIdleEv
 2386              		.thumb
 2387              		.thumb_func
 2388              		.type	_ZN8Platform14SetDriversIdleEv, %function
 2389              	_ZN8Platform14SetDriversIdleEv:
 2390              		@ args = 0, pretend = 0, frame = 0
 2391              		@ frame_needed = 0, uses_anonymous_args = 0
 2392 0000 70B5     		push	{r4, r5, r6, lr}
 2393 0002 0546     		mov	r5, r0
 2394 0004 0024     		movs	r4, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 43


 2395 0006 0126     		movs	r6, #1
 2396 0008 02E0     		b	.L471
 2397              	.L469:
 2398 000a 0134     		adds	r4, r4, #1
 2399 000c 0A2C     		cmp	r4, #10
 2400 000e 0DD0     		beq	.L472
 2401              	.L471:
 2402 0010 2B19     		adds	r3, r5, r4
 2403 0012 93F8C820 		ldrb	r2, [r3, #200]	@ zero_extendqisi2
 2404 0016 022A     		cmp	r2, #2
 2405 0018 F7D1     		bne	.L469
 2406 001a 2146     		mov	r1, r4
 2407 001c 83F8C860 		strb	r6, [r3, #200]
 2408 0020 2846     		mov	r0, r5
 2409 0022 0134     		adds	r4, r4, #1
 2410 0024 FFF7FEFF 		bl	_ZN8Platform18UpdateMotorCurrentEj.part.27
 2411 0028 0A2C     		cmp	r4, #10
 2412 002a F1D1     		bne	.L471
 2413              	.L472:
 2414 002c 70BD     		pop	{r4, r5, r6, pc}
 2415              		.size	_ZN8Platform14SetDriversIdleEv, .-_ZN8Platform14SetDriversIdleEv
 2416 002e 00BF     		.section	.text._ZN8Platform16SetDriverCurrentEjfb,"ax",%progbits
 2417              		.align	2
 2418              		.global	_ZN8Platform16SetDriverCurrentEjfb
 2419              		.thumb
 2420              		.thumb_func
 2421              		.type	_ZN8Platform16SetDriverCurrentEjfb, %function
 2422              	_ZN8Platform16SetDriverCurrentEjfb:
 2423              		@ args = 0, pretend = 0, frame = 0
 2424              		@ frame_needed = 0, uses_anonymous_args = 0
 2425 0000 0929     		cmp	r1, #9
 2426 0002 70B5     		push	{r4, r5, r6, lr}
 2427 0004 0C46     		mov	r4, r1
 2428 0006 0546     		mov	r5, r0
 2429 0008 1FD8     		bhi	.L473
 2430 000a 4BB9     		cbnz	r3, .L477
 2431 000c 00EB8103 		add	r3, r0, r1, lsl #2
 2432 0010 2846     		mov	r0, r5
 2433 0012 2146     		mov	r1, r4
 2434 0014 C3F8B421 		str	r2, [r3, #436]	@ float
 2435 0018 BDE87040 		pop	{r4, r5, r6, lr}
 2436 001c FFF7FEBF 		b	_ZN8Platform18UpdateMotorCurrentEj.part.27
 2437              	.L477:
 2438 0020 1046     		mov	r0, r2	@ float
 2439 0022 01F17606 		add	r6, r1, #118
 2440 0026 FFF7FEFF 		bl	__aeabi_f2d
 2441 002a 09A3     		adr	r3, .L478
 2442 002c D3E90023 		ldrd	r2, [r3]
 2443 0030 FFF7FEFF 		bl	__aeabi_dmul
 2444 0034 FFF7FEFF 		bl	__aeabi_d2f
 2445 0038 05EB8606 		add	r6, r5, r6, lsl #2
 2446 003c 2146     		mov	r1, r4
 2447 003e 7060     		str	r0, [r6, #4]	@ float
 2448 0040 2846     		mov	r0, r5
 2449 0042 BDE87040 		pop	{r4, r5, r6, lr}
 2450 0046 FFF7FEBF 		b	_ZN8Platform18UpdateMotorCurrentEj.part.27
 2451              	.L473:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 44


 2452 004a 70BD     		pop	{r4, r5, r6, pc}
 2453              	.L479:
 2454 004c AFF30080 		.align	3
 2455              	.L478:
 2456 0050 7B14AE47 		.word	1202590843
 2457 0054 E17A843F 		.word	1065646817
 2458              		.size	_ZN8Platform16SetDriverCurrentEjfb, .-_ZN8Platform16SetDriverCurrentEjfb
 2459              		.section	.text._ZN8Platform15SetMotorCurrentEjfb,"ax",%progbits
 2460              		.align	2
 2461              		.global	_ZN8Platform15SetMotorCurrentEjfb
 2462              		.thumb
 2463              		.thumb_func
 2464              		.type	_ZN8Platform15SetMotorCurrentEjfb, %function
 2465              	_ZN8Platform15SetMotorCurrentEjfb:
 2466              		@ args = 0, pretend = 0, frame = 0
 2467              		@ frame_needed = 0, uses_anonymous_args = 0
 2468 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 2469 0004 304C     		ldr	r4, .L493+8
 2470 0006 2469     		ldr	r4, [r4, #16]
 2471 0008 D4F8B071 		ldr	r7, [r4, #432]
 2472 000c B942     		cmp	r1, r7
 2473 000e 0646     		mov	r6, r0
 2474 0010 9146     		mov	r9, r2	@ float
 2475 0012 9846     		mov	r8, r3
 2476 0014 0FD2     		bcs	.L481
 2477 0016 00EBC107 		add	r7, r0, r1, lsl #3
 2478 001a D7F80412 		ldr	r1, [r7, #516]
 2479 001e 91B1     		cbz	r1, .L480
 2480 0020 0024     		movs	r4, #0
 2481              	.L488:
 2482 0022 3D19     		adds	r5, r7, r4
 2483 0024 95F80852 		ldrb	r5, [r5, #520]	@ zero_extendqisi2
 2484 0028 092D     		cmp	r5, #9
 2485 002a 0ED9     		bls	.L491
 2486              	.L484:
 2487 002c 0134     		adds	r4, r4, #1
 2488 002e A142     		cmp	r1, r4
 2489 0030 F7D8     		bhi	.L488
 2490 0032 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2491              	.L481:
 2492 0036 0929     		cmp	r1, #9
 2493 0038 05D8     		bhi	.L480
 2494 003a CF1B     		subs	r7, r1, r7
 2495 003c 0744     		add	r7, r7, r0
 2496 003e 97F83442 		ldrb	r4, [r7, #564]	@ zero_extendqisi2
 2497 0042 092C     		cmp	r4, #9
 2498 0044 20D9     		bls	.L492
 2499              	.L480:
 2500 0046 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2501              	.L491:
 2502 004a 05F17603 		add	r3, r5, #118
 2503 004e 06EB830A 		add	r10, r6, r3, lsl #2
 2504 0052 4846     		mov	r0, r9	@ float
 2505 0054 06EB8503 		add	r3, r6, r5, lsl #2
 2506 0058 B8F1000F 		cmp	r8, #0
 2507 005c 11D0     		beq	.L485
 2508 005e FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 45


 2509 0062 17A3     		adr	r3, .L493
 2510 0064 D3E90023 		ldrd	r2, [r3]
 2511 0068 FFF7FEFF 		bl	__aeabi_dmul
 2512 006c FFF7FEFF 		bl	__aeabi_d2f
 2513 0070 CAF80400 		str	r0, [r10, #4]	@ float
 2514              	.L486:
 2515 0074 2946     		mov	r1, r5
 2516 0076 3046     		mov	r0, r6
 2517 0078 FFF7FEFF 		bl	_ZN8Platform18UpdateMotorCurrentEj.part.27
 2518 007c D7F80412 		ldr	r1, [r7, #516]
 2519 0080 D4E7     		b	.L484
 2520              	.L485:
 2521 0082 C3F8B491 		str	r9, [r3, #436]	@ float
 2522 0086 F5E7     		b	.L486
 2523              	.L492:
 2524 0088 A3B1     		cbz	r3, .L489
 2525 008a 1046     		mov	r0, r2	@ float
 2526 008c FFF7FEFF 		bl	__aeabi_f2d
 2527 0090 0BA3     		adr	r3, .L493
 2528 0092 D3E90023 		ldrd	r2, [r3]
 2529 0096 FFF7FEFF 		bl	__aeabi_dmul
 2530 009a 04F17605 		add	r5, r4, #118
 2531 009e FFF7FEFF 		bl	__aeabi_d2f
 2532 00a2 06EB8505 		add	r5, r6, r5, lsl #2
 2533 00a6 6860     		str	r0, [r5, #4]	@ float
 2534              	.L490:
 2535 00a8 3046     		mov	r0, r6
 2536 00aa 2146     		mov	r1, r4
 2537 00ac BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 2538 00b0 FFF7FEBF 		b	_ZN8Platform18UpdateMotorCurrentEj.part.27
 2539              	.L489:
 2540 00b4 00EB8403 		add	r3, r0, r4, lsl #2
 2541 00b8 C3F8B421 		str	r2, [r3, #436]	@ float
 2542 00bc F4E7     		b	.L490
 2543              	.L494:
 2544 00be 00BF     		.align	3
 2545              	.L493:
 2546 00c0 7B14AE47 		.word	1202590843
 2547 00c4 E17A843F 		.word	1065646817
 2548 00c8 00000000 		.word	reprap
 2549              		.size	_ZN8Platform15SetMotorCurrentEjfb, .-_ZN8Platform15SetMotorCurrentEjfb
 2550 00cc AFF30080 		.section	.text._ZN8Platform18UpdateMotorCurrentEj,"ax",%progbits
 2551              		.align	2
 2552              		.global	_ZN8Platform18UpdateMotorCurrentEj
 2553              		.thumb
 2554              		.thumb_func
 2555              		.type	_ZN8Platform18UpdateMotorCurrentEj, %function
 2556              	_ZN8Platform18UpdateMotorCurrentEj:
 2557              		@ args = 0, pretend = 0, frame = 0
 2558              		@ frame_needed = 0, uses_anonymous_args = 0
 2559              		@ link register save eliminated.
 2560 0000 0929     		cmp	r1, #9
 2561 0002 01D8     		bhi	.L495
 2562 0004 FFF7FEBF 		b	_ZN8Platform18UpdateMotorCurrentEj.part.27
 2563              	.L495:
 2564 0008 7047     		bx	lr
 2565              		.size	_ZN8Platform18UpdateMotorCurrentEj, .-_ZN8Platform18UpdateMotorCurrentEj
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 46


 2566 000a 00BF     		.section	.text._ZNK8Platform15GetMotorCurrentEjb,"ax",%progbits
 2567              		.align	2
 2568              		.global	_ZNK8Platform15GetMotorCurrentEjb
 2569              		.thumb
 2570              		.thumb_func
 2571              		.type	_ZNK8Platform15GetMotorCurrentEjb, %function
 2572              	_ZNK8Platform15GetMotorCurrentEjb:
 2573              		@ args = 0, pretend = 0, frame = 0
 2574              		@ frame_needed = 0, uses_anonymous_args = 0
 2575 0000 0929     		cmp	r1, #9
 2576 0002 08B5     		push	{r3, lr}
 2577 0004 19D8     		bhi	.L503
 2578 0006 124B     		ldr	r3, .L505
 2579 0008 1B69     		ldr	r3, [r3, #16]
 2580 000a D3F8B031 		ldr	r3, [r3, #432]
 2581 000e 9942     		cmp	r1, r3
 2582 0010 15D3     		bcc	.L504
 2583 0012 CB1A     		subs	r3, r1, r3
 2584 0014 0344     		add	r3, r3, r0
 2585 0016 93F83432 		ldrb	r3, [r3, #564]	@ zero_extendqisi2
 2586              	.L500:
 2587 001a 092B     		cmp	r3, #9
 2588 001c 0DD8     		bhi	.L503
 2589 001e 00EB8300 		add	r0, r0, r3, lsl #2
 2590 0022 8AB1     		cbz	r2, .L501
 2591 0024 D0F8DC01 		ldr	r0, [r0, #476]	@ float
 2592 0028 FFF7FEFF 		bl	__aeabi_f2d
 2593 002c 0022     		movs	r2, #0
 2594 002e 094B     		ldr	r3, .L505+4
 2595 0030 FFF7FEFF 		bl	__aeabi_dmul
 2596 0034 FFF7FEFF 		bl	__aeabi_d2f
 2597 0038 08BD     		pop	{r3, pc}
 2598              	.L503:
 2599 003a 0020     		movs	r0, #0
 2600 003c 08BD     		pop	{r3, pc}
 2601              	.L504:
 2602 003e 00EBC101 		add	r1, r0, r1, lsl #3
 2603 0042 91F80832 		ldrb	r3, [r1, #520]	@ zero_extendqisi2
 2604 0046 E8E7     		b	.L500
 2605              	.L501:
 2606 0048 D0F8B401 		ldr	r0, [r0, #436]	@ float
 2607 004c 08BD     		pop	{r3, pc}
 2608              	.L506:
 2609 004e 00BF     		.align	2
 2610              	.L505:
 2611 0050 00000000 		.word	reprap
 2612 0054 00005940 		.word	1079574528
 2613              		.size	_ZNK8Platform15GetMotorCurrentEjb, .-_ZNK8Platform15GetMotorCurrentEjb
 2614              		.section	.text._ZN8Platform20SetIdleCurrentFactorEf,"ax",%progbits
 2615              		.align	2
 2616              		.global	_ZN8Platform20SetIdleCurrentFactorEf
 2617              		.thumb
 2618              		.thumb_func
 2619              		.type	_ZN8Platform20SetIdleCurrentFactorEf, %function
 2620              	_ZN8Platform20SetIdleCurrentFactorEf:
 2621              		@ args = 0, pretend = 0, frame = 0
 2622              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 47


 2623 0000 38B5     		push	{r3, r4, r5, lr}
 2624 0002 0546     		mov	r5, r0
 2625 0004 0024     		movs	r4, #0
 2626 0006 C0F86C12 		str	r1, [r0, #620]	@ float
 2627 000a 02E0     		b	.L510
 2628              	.L508:
 2629 000c 0134     		adds	r4, r4, #1
 2630 000e 0A2C     		cmp	r4, #10
 2631 0010 0BD0     		beq	.L511
 2632              	.L510:
 2633 0012 2B19     		adds	r3, r5, r4
 2634 0014 93F8C830 		ldrb	r3, [r3, #200]	@ zero_extendqisi2
 2635 0018 012B     		cmp	r3, #1
 2636 001a F7D1     		bne	.L508
 2637 001c 2146     		mov	r1, r4
 2638 001e 2846     		mov	r0, r5
 2639 0020 0134     		adds	r4, r4, #1
 2640 0022 FFF7FEFF 		bl	_ZN8Platform18UpdateMotorCurrentEj.part.27
 2641 0026 0A2C     		cmp	r4, #10
 2642 0028 F3D1     		bne	.L510
 2643              	.L511:
 2644 002a 38BD     		pop	{r3, r4, r5, pc}
 2645              		.size	_ZN8Platform20SetIdleCurrentFactorEf, .-_ZN8Platform20SetIdleCurrentFactorEf
 2646              		.section	.text._ZN8Platform22SetDriverMicrosteppingEjii,"ax",%progbits
 2647              		.align	2
 2648              		.global	_ZN8Platform22SetDriverMicrosteppingEjii
 2649              		.thumb
 2650              		.thumb_func
 2651              		.type	_ZN8Platform22SetDriverMicrosteppingEjii, %function
 2652              	_ZN8Platform22SetDriverMicrosteppingEjii:
 2653              		@ args = 0, pretend = 0, frame = 0
 2654              		@ frame_needed = 0, uses_anonymous_args = 0
 2655              		@ link register save eliminated.
 2656 0000 0929     		cmp	r1, #9
 2657 0002 08D8     		bhi	.L515
 2658 0004 D0F87002 		ldr	r0, [r0, #624]
 2659 0008 8142     		cmp	r1, r0
 2660 000a 06D3     		bcc	.L516
 2661 000c B2F11003 		subs	r3, r2, #16
 2662 0010 5842     		rsbs	r0, r3, #0
 2663 0012 5841     		adcs	r0, r0, r3
 2664 0014 7047     		bx	lr
 2665              	.L515:
 2666 0016 0020     		movs	r0, #0
 2667 0018 7047     		bx	lr
 2668              	.L516:
 2669 001a 0846     		mov	r0, r1
 2670 001c 1146     		mov	r1, r2
 2671 001e 1A46     		mov	r2, r3
 2672 0020 FFF7FEBF 		b	_ZN7TMC266016SetMicrosteppingEjii
 2673              		.size	_ZN8Platform22SetDriverMicrosteppingEjii, .-_ZN8Platform22SetDriverMicrosteppingEjii
 2674              		.section	.text._ZN8Platform16SetMicrosteppingEjii,"ax",%progbits
 2675              		.align	2
 2676              		.global	_ZN8Platform16SetMicrosteppingEjii
 2677              		.thumb
 2678              		.thumb_func
 2679              		.type	_ZN8Platform16SetMicrosteppingEjii, %function
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 48


 2680              	_ZN8Platform16SetMicrosteppingEjii:
 2681              		@ args = 0, pretend = 0, frame = 8
 2682              		@ frame_needed = 0, uses_anonymous_args = 0
 2683 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 2684 0004 294C     		ldr	r4, .L540
 2685 0006 2469     		ldr	r4, [r4, #16]
 2686 0008 D4F8B041 		ldr	r4, [r4, #432]
 2687 000c A142     		cmp	r1, r4
 2688 000e 83B0     		sub	sp, sp, #12
 2689 0010 8046     		mov	r8, r0
 2690 0012 9146     		mov	r9, r2
 2691 0014 13D2     		bcs	.L518
 2692 0016 00EBC107 		add	r7, r0, r1, lsl #3
 2693 001a D7F80412 		ldr	r1, [r7, #516]
 2694 001e 39B3     		cbz	r1, .L527
 2695 0020 0024     		movs	r4, #0
 2696 0022 0126     		movs	r6, #1
 2697              	.L525:
 2698 0024 3D19     		adds	r5, r7, r4
 2699 0026 95F80802 		ldrb	r0, [r5, #520]	@ zero_extendqisi2
 2700 002a 0928     		cmp	r0, #9
 2701 002c 13D9     		bls	.L520
 2702              	.L524:
 2703 002e 0026     		movs	r6, #0
 2704              	.L521:
 2705 0030 0134     		adds	r4, r4, #1
 2706 0032 A142     		cmp	r1, r4
 2707 0034 F6D8     		bhi	.L525
 2708 0036 3046     		mov	r0, r6
 2709              	.L519:
 2710 0038 03B0     		add	sp, sp, #12
 2711              		@ sp needed
 2712 003a BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2713              	.L518:
 2714 003e 0929     		cmp	r1, #9
 2715 0040 05D8     		bhi	.L530
 2716 0042 091B     		subs	r1, r1, r4
 2717 0044 0144     		add	r1, r1, r0
 2718 0046 91F83402 		ldrb	r0, [r1, #564]	@ zero_extendqisi2
 2719 004a 0928     		cmp	r0, #9
 2720 004c 1DD9     		bls	.L537
 2721              	.L530:
 2722 004e 0020     		movs	r0, #0
 2723 0050 03B0     		add	sp, sp, #12
 2724              		@ sp needed
 2725 0052 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2726              	.L520:
 2727 0056 D8F87022 		ldr	r2, [r8, #624]
 2728 005a 9042     		cmp	r0, r2
 2729 005c 0CD3     		bcc	.L538
 2730 005e B9F11002 		subs	r2, r9, #16
 2731 0062 5042     		rsbs	r0, r2, #0
 2732 0064 5041     		adcs	r0, r0, r2
 2733              	.L523:
 2734 0066 0028     		cmp	r0, #0
 2735 0068 E1D0     		beq	.L524
 2736 006a 002E     		cmp	r6, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 49


 2737 006c DFD0     		beq	.L524
 2738 006e DFE7     		b	.L521
 2739              	.L527:
 2740 0070 0120     		movs	r0, #1
 2741 0072 03B0     		add	sp, sp, #12
 2742              		@ sp needed
 2743 0074 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2744              	.L538:
 2745 0078 4946     		mov	r1, r9
 2746 007a 1A46     		mov	r2, r3
 2747 007c 0193     		str	r3, [sp, #4]
 2748 007e FFF7FEFF 		bl	_ZN7TMC266016SetMicrosteppingEjii
 2749 0082 D7F80412 		ldr	r1, [r7, #516]
 2750 0086 019B     		ldr	r3, [sp, #4]
 2751 0088 EDE7     		b	.L523
 2752              	.L537:
 2753 008a D8F87022 		ldr	r2, [r8, #624]
 2754 008e 9042     		cmp	r0, r2
 2755 0090 04D3     		bcc	.L539
 2756 0092 B9F11003 		subs	r3, r9, #16
 2757 0096 5842     		rsbs	r0, r3, #0
 2758 0098 5841     		adcs	r0, r0, r3
 2759 009a CDE7     		b	.L519
 2760              	.L539:
 2761 009c 4946     		mov	r1, r9
 2762 009e 1A46     		mov	r2, r3
 2763 00a0 03B0     		add	sp, sp, #12
 2764              		@ sp needed
 2765 00a2 BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 2766 00a6 FFF7FEBF 		b	_ZN7TMC266016SetMicrosteppingEjii
 2767              	.L541:
 2768 00aa 00BF     		.align	2
 2769              	.L540:
 2770 00ac 00000000 		.word	reprap
 2771              		.size	_ZN8Platform16SetMicrosteppingEjii, .-_ZN8Platform16SetMicrosteppingEjii
 2772              		.section	.text._ZNK8Platform22GetDriverMicrosteppingEjiRb,"ax",%progbits
 2773              		.align	2
 2774              		.global	_ZNK8Platform22GetDriverMicrosteppingEjiRb
 2775              		.thumb
 2776              		.thumb_func
 2777              		.type	_ZNK8Platform22GetDriverMicrosteppingEjiRb, %function
 2778              	_ZNK8Platform22GetDriverMicrosteppingEjiRb:
 2779              		@ args = 0, pretend = 0, frame = 0
 2780              		@ frame_needed = 0, uses_anonymous_args = 0
 2781              		@ link register save eliminated.
 2782 0000 D0F87002 		ldr	r0, [r0, #624]
 2783 0004 8842     		cmp	r0, r1
 2784 0006 03D8     		bhi	.L544
 2785 0008 0022     		movs	r2, #0
 2786 000a 1A70     		strb	r2, [r3]
 2787 000c 1020     		movs	r0, #16
 2788 000e 7047     		bx	lr
 2789              	.L544:
 2790 0010 0846     		mov	r0, r1
 2791 0012 1146     		mov	r1, r2
 2792 0014 1A46     		mov	r2, r3
 2793 0016 FFF7FEBF 		b	_ZN7TMC266016GetMicrosteppingEjiRb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 50


 2794              		.size	_ZNK8Platform22GetDriverMicrosteppingEjiRb, .-_ZNK8Platform22GetDriverMicrosteppingEjiRb
 2795 001a 00BF     		.section	.text._ZNK8Platform16GetMicrosteppingEjiRb,"ax",%progbits
 2796              		.align	2
 2797              		.global	_ZNK8Platform16GetMicrosteppingEjiRb
 2798              		.thumb
 2799              		.thumb_func
 2800              		.type	_ZNK8Platform16GetMicrosteppingEjiRb, %function
 2801              	_ZNK8Platform16GetMicrosteppingEjiRb:
 2802              		@ args = 0, pretend = 0, frame = 0
 2803              		@ frame_needed = 0, uses_anonymous_args = 0
 2804              		@ link register save eliminated.
 2805 0000 30B4     		push	{r4, r5}
 2806 0002 114C     		ldr	r4, .L551
 2807 0004 2469     		ldr	r4, [r4, #16]
 2808 0006 D4F8B041 		ldr	r4, [r4, #432]
 2809 000a A142     		cmp	r1, r4
 2810 000c 0CD2     		bcs	.L546
 2811 000e 00EBC101 		add	r1, r0, r1, lsl #3
 2812 0012 D0F87042 		ldr	r4, [r0, #624]
 2813 0016 91F80802 		ldrb	r0, [r1, #520]	@ zero_extendqisi2
 2814 001a A042     		cmp	r0, r4
 2815 001c 0ED3     		bcc	.L550
 2816              	.L547:
 2817 001e 0022     		movs	r2, #0
 2818 0020 1020     		movs	r0, #16
 2819 0022 1A70     		strb	r2, [r3]
 2820 0024 30BC     		pop	{r4, r5}
 2821 0026 7047     		bx	lr
 2822              	.L546:
 2823 0028 0929     		cmp	r1, #9
 2824 002a F8D8     		bhi	.L547
 2825 002c 091B     		subs	r1, r1, r4
 2826 002e 0144     		add	r1, r1, r0
 2827 0030 D0F87052 		ldr	r5, [r0, #624]
 2828 0034 91F83402 		ldrb	r0, [r1, #564]	@ zero_extendqisi2
 2829 0038 A842     		cmp	r0, r5
 2830 003a F0D2     		bcs	.L547
 2831              	.L550:
 2832 003c 1146     		mov	r1, r2
 2833 003e 30BC     		pop	{r4, r5}
 2834 0040 1A46     		mov	r2, r3
 2835 0042 FFF7FEBF 		b	_ZN7TMC266016GetMicrosteppingEjiRb
 2836              	.L552:
 2837 0046 00BF     		.align	2
 2838              	.L551:
 2839 0048 00000000 		.word	reprap
 2840              		.size	_ZNK8Platform16GetMicrosteppingEjiRb, .-_ZNK8Platform16GetMicrosteppingEjiRb
 2841              		.section	.text._ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig,"ax",%progbits
 2842              		.align	2
 2843              		.global	_ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig
 2844              		.thumb
 2845              		.thumb_func
 2846              		.type	_ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig, %function
 2847              	_ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig:
 2848              		@ args = 0, pretend = 0, frame = 0
 2849              		@ frame_needed = 0, uses_anonymous_args = 0
 2850              		@ link register save eliminated.
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 51


 2851 0000 F0B4     		push	{r4, r5, r6, r7}
 2852 0002 0646     		mov	r6, r0
 2853 0004 0F46     		mov	r7, r1
 2854 0006 92E80300 		ldmia	r2, {r0, r1}
 2855 000a 06EBC703 		add	r3, r6, r7, lsl #3
 2856 000e 03F50173 		add	r3, r3, #516
 2857 0012 83E80300 		stmia	r3, {r0, r1}
 2858 0016 1468     		ldr	r4, [r2]
 2859 0018 7CB1     		cbz	r4, .L554
 2860 001a 0B48     		ldr	r0, .L558
 2861 001c 0B49     		ldr	r1, .L558+4
 2862 001e 1519     		adds	r5, r2, r4
 2863 0020 0024     		movs	r4, #0
 2864              	.L555:
 2865 0022 1379     		ldrb	r3, [r2, #4]	@ zero_extendqisi2
 2866 0024 C35C     		ldrb	r3, [r0, r3]	@ zero_extendqisi2
 2867 0026 C3EBC303 		rsb	r3, r3, r3, lsl #3
 2868 002a 01EB8303 		add	r3, r1, r3, lsl #2
 2869 002e 0132     		adds	r2, r2, #1
 2870 0030 5B68     		ldr	r3, [r3, #4]
 2871 0032 AA42     		cmp	r2, r5
 2872 0034 44EA0304 		orr	r4, r4, r3
 2873 0038 F3D1     		bne	.L555
 2874              	.L554:
 2875 003a 06EB8706 		add	r6, r6, r7, lsl #2
 2876 003e C6F83C42 		str	r4, [r6, #572]
 2877 0042 F0BC     		pop	{r4, r5, r6, r7}
 2878 0044 7047     		bx	lr
 2879              	.L559:
 2880 0046 00BF     		.align	2
 2881              	.L558:
 2882 0048 00000000 		.word	.LANCHOR4
 2883 004c 00000000 		.word	g_APinDescription
 2884              		.size	_ZN8Platform20SetAxisDriversConfigEjRK17AxisDriversConfig, .-_ZN8Platform20SetAxisDriversCon
 2885              		.section	.text._ZN8Platform17SetExtruderDriverEjh,"ax",%progbits
 2886              		.align	2
 2887              		.global	_ZN8Platform17SetExtruderDriverEjh
 2888              		.thumb
 2889              		.thumb_func
 2890              		.type	_ZN8Platform17SetExtruderDriverEjh, %function
 2891              	_ZN8Platform17SetExtruderDriverEjh:
 2892              		@ args = 0, pretend = 0, frame = 0
 2893              		@ frame_needed = 0, uses_anonymous_args = 0
 2894              		@ link register save eliminated.
 2895 0000 70B4     		push	{r4, r5, r6}
 2896 0002 0B4C     		ldr	r4, .L561
 2897 0004 0B4B     		ldr	r3, .L561+4
 2898 0006 2569     		ldr	r5, [r4, #16]
 2899 0008 9B5C     		ldrb	r3, [r3, r2]	@ zero_extendqisi2
 2900 000a 0B4C     		ldr	r4, .L561+8
 2901 000c 4618     		adds	r6, r0, r1
 2902 000e C3EBC303 		rsb	r3, r3, r3, lsl #3
 2903 0012 86F83422 		strb	r2, [r6, #564]
 2904 0016 D5F8B021 		ldr	r2, [r5, #432]
 2905 001a 04EB8304 		add	r4, r4, r3, lsl #2
 2906 001e 1144     		add	r1, r1, r2
 2907 0020 00EB8100 		add	r0, r0, r1, lsl #2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 52


 2908 0024 6368     		ldr	r3, [r4, #4]
 2909 0026 C0F83C32 		str	r3, [r0, #572]
 2910 002a 70BC     		pop	{r4, r5, r6}
 2911 002c 7047     		bx	lr
 2912              	.L562:
 2913 002e 00BF     		.align	2
 2914              	.L561:
 2915 0030 00000000 		.word	reprap
 2916 0034 00000000 		.word	.LANCHOR4
 2917 0038 00000000 		.word	g_APinDescription
 2918              		.size	_ZN8Platform17SetExtruderDriverEjh, .-_ZN8Platform17SetExtruderDriverEjh
 2919              		.global	__aeabi_ddiv
 2920              		.global	__aeabi_d2uiz
 2921              		.section	.text._ZN8Platform19SetDriverStepTimingEjf,"ax",%progbits
 2922              		.align	2
 2923              		.global	_ZN8Platform19SetDriverStepTimingEjf
 2924              		.thumb
 2925              		.thumb_func
 2926              		.type	_ZN8Platform19SetDriverStepTimingEjf, %function
 2927              	_ZN8Platform19SetDriverStepTimingEjf:
 2928              		@ args = 0, pretend = 0, frame = 0
 2929              		@ frame_needed = 0, uses_anonymous_args = 0
 2930 0000 07EE902A 		fmsr	s15, r2
 2931 0004 9FED247A 		flds	s14, .L571+16
 2932 0008 F4EEC77A 		fcmpes	s15, s14
 2933 000c F1EE10FA 		fmstat
 2934 0010 38B5     		push	{r3, r4, r5, lr}
 2935 0012 0446     		mov	r4, r0
 2936 0014 0D46     		mov	r5, r1
 2937 0016 27D4     		bmi	.L570
 2938 0018 9FED207A 		flds	s14, .L571+20
 2939 001c 27EE877A 		fmuls	s14, s15, s14
 2940 0020 17EE100A 		fmrs	r0, s14
 2941 0024 FFF7FEFF 		bl	__aeabi_f2d
 2942 0028 17A3     		adr	r3, .L571
 2943 002a D3E90023 		ldrd	r2, [r3]
 2944 002e FFF7FEFF 		bl	__aeabi_ddiv
 2945 0032 17A3     		adr	r3, .L571+8
 2946 0034 D3E90023 		ldrd	r2, [r3]
 2947 0038 FFF7FEFF 		bl	__aeabi_dadd
 2948 003c FFF7FEFF 		bl	__aeabi_d2uiz
 2949 0040 D4F86432 		ldr	r3, [r4, #612]
 2950 0044 1649     		ldr	r1, .L571+24
 2951 0046 D4F86822 		ldr	r2, [r4, #616]
 2952 004a 9842     		cmp	r0, r3
 2953 004c 154B     		ldr	r3, .L571+28
 2954 004e 88BF     		it	hi
 2955 0050 C4F86402 		strhi	r0, [r4, #612]
 2956 0054 5B5D     		ldrb	r3, [r3, r5]	@ zero_extendqisi2
 2957 0056 C3EBC303 		rsb	r3, r3, r3, lsl #3
 2958 005a 01EB8303 		add	r3, r1, r3, lsl #2
 2959 005e 5B68     		ldr	r3, [r3, #4]
 2960 0060 1A43     		orrs	r2, r2, r3
 2961 0062 C4F86822 		str	r2, [r4, #616]
 2962 0066 38BD     		pop	{r3, r4, r5, pc}
 2963              	.L570:
 2964 0068 0E4B     		ldr	r3, .L571+28
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 53


 2965 006a 0D49     		ldr	r1, .L571+24
 2966 006c 5B5D     		ldrb	r3, [r3, r5]	@ zero_extendqisi2
 2967 006e D0F86822 		ldr	r2, [r0, #616]
 2968 0072 C3EBC303 		rsb	r3, r3, r3, lsl #3
 2969 0076 01EB8303 		add	r3, r1, r3, lsl #2
 2970 007a 5B68     		ldr	r3, [r3, #4]
 2971 007c 22EA0302 		bic	r2, r2, r3
 2972 0080 C0F86822 		str	r2, [r0, #616]
 2973 0084 38BD     		pop	{r3, r4, r5, pc}
 2974              	.L572:
 2975 0086 00BF     		.align	3
 2976              	.L571:
 2977 0088 00000000 		.word	0
 2978 008c 80842E41 		.word	1093567616
 2979 0090 AE47E17A 		.word	2061584302
 2980 0094 14AEEF3F 		.word	1072672276
 2981 0098 CDCC4C3E 		.word	1045220557
 2982 009c C0E16449 		.word	1231348160
 2983 00a0 00000000 		.word	g_APinDescription
 2984 00a4 00000000 		.word	.LANCHOR4
 2985              		.size	_ZN8Platform19SetDriverStepTimingEjf, .-_ZN8Platform19SetDriverStepTimingEjf
 2986              		.section	.text._ZNK8Platform19GetDriverStepTimingEj,"ax",%progbits
 2987              		.align	2
 2988              		.global	_ZNK8Platform19GetDriverStepTimingEj
 2989              		.thumb
 2990              		.thumb_func
 2991              		.type	_ZNK8Platform19GetDriverStepTimingEj, %function
 2992              	_ZNK8Platform19GetDriverStepTimingEj:
 2993              		@ args = 0, pretend = 0, frame = 0
 2994              		@ frame_needed = 0, uses_anonymous_args = 0
 2995 0000 08B5     		push	{r3, lr}
 2996 0002 174B     		ldr	r3, .L576+16
 2997 0004 174A     		ldr	r2, .L576+20
 2998 0006 5B5C     		ldrb	r3, [r3, r1]	@ zero_extendqisi2
 2999 0008 C3EBC303 		rsb	r3, r3, r3, lsl #3
 3000 000c 02EB8303 		add	r3, r2, r3, lsl #2
 3001 0010 D0F86822 		ldr	r2, [r0, #616]
 3002 0014 5B68     		ldr	r3, [r3, #4]
 3003 0016 1342     		tst	r3, r2
 3004 0018 16D0     		beq	.L575
 3005 001a D0F86402 		ldr	r0, [r0, #612]
 3006 001e 07EE900A 		fmsr	s15, r0	@ int
 3007 0022 F8EE677A 		fuitos	s15, s15
 3008 0026 17EE900A 		fmrs	r0, s15
 3009 002a FFF7FEFF 		bl	__aeabi_f2d
 3010 002e 08A3     		adr	r3, .L576
 3011 0030 D3E90023 		ldrd	r2, [r3]
 3012 0034 FFF7FEFF 		bl	__aeabi_dmul
 3013 0038 07A3     		adr	r3, .L576+8
 3014 003a D3E90023 		ldrd	r2, [r3]
 3015 003e FFF7FEFF 		bl	__aeabi_ddiv
 3016 0042 FFF7FEFF 		bl	__aeabi_d2f
 3017 0046 08BD     		pop	{r3, pc}
 3018              	.L575:
 3019 0048 0020     		movs	r0, #0
 3020 004a 08BD     		pop	{r3, pc}
 3021              	.L577:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 54


 3022 004c AFF30080 		.align	3
 3023              	.L576:
 3024 0050 00000000 		.word	0
 3025 0054 80842E41 		.word	1093567616
 3026 0058 00000000 		.word	0
 3027 005c 389C2C41 		.word	1093442616
 3028 0060 00000000 		.word	.LANCHOR4
 3029 0064 00000000 		.word	g_APinDescription
 3030              		.size	_ZNK8Platform19GetDriverStepTimingEj, .-_ZNK8Platform19GetDriverStepTimingEj
 3031              		.section	.text._ZNK8Platform11GetFanValueEj,"ax",%progbits
 3032              		.align	2
 3033              		.global	_ZNK8Platform11GetFanValueEj
 3034              		.thumb
 3035              		.thumb_func
 3036              		.type	_ZNK8Platform11GetFanValueEj, %function
 3037              	_ZNK8Platform11GetFanValueEj:
 3038              		@ args = 0, pretend = 0, frame = 0
 3039              		@ frame_needed = 0, uses_anonymous_args = 0
 3040              		@ link register save eliminated.
 3041 0000 0729     		cmp	r1, #7
 3042 0002 9DBF     		ittte	ls
 3043 0004 00EB4111 		addls	r1, r0, r1, lsl #5
 3044 0008 01F5E261 		addls	r1, r1, #1808
 3045 000c 0868     		ldrls	r0, [r1]	@ float
 3046 000e 0148     		ldrhi	r0, .L581
 3047 0010 7047     		bx	lr
 3048              	.L582:
 3049 0012 00BF     		.align	2
 3050              	.L581:
 3051 0014 000080BF 		.word	-1082130432
 3052              		.size	_ZNK8Platform11GetFanValueEj, .-_ZNK8Platform11GetFanValueEj
 3053              		.section	.text._ZN8Platform11SetFanValueEjf,"ax",%progbits
 3054              		.align	2
 3055              		.global	_ZN8Platform11SetFanValueEjf
 3056              		.thumb
 3057              		.thumb_func
 3058              		.type	_ZN8Platform11SetFanValueEjf, %function
 3059              	_ZN8Platform11SetFanValueEjf:
 3060              		@ args = 0, pretend = 0, frame = 0
 3061              		@ frame_needed = 0, uses_anonymous_args = 0
 3062              		@ link register save eliminated.
 3063 0000 0729     		cmp	r1, #7
 3064 0002 00D9     		bls	.L585
 3065 0004 7047     		bx	lr
 3066              	.L585:
 3067 0006 00EB4110 		add	r0, r0, r1, lsl #5
 3068 000a 00F5E260 		add	r0, r0, #1808
 3069 000e 1146     		mov	r1, r2	@ float
 3070 0010 FFF7FEBF 		b	_ZN3Fan8SetValueEf
 3071              		.size	_ZN8Platform11SetFanValueEjf, .-_ZN8Platform11SetFanValueEjf
 3072              		.section	.text._ZN8Platform9GetFanRPMEv,"ax",%progbits
 3073              		.align	2
 3074              		.global	_ZN8Platform9GetFanRPMEv
 3075              		.thumb
 3076              		.thumb_func
 3077              		.type	_ZN8Platform9GetFanRPMEv, %function
 3078              	_ZN8Platform9GetFanRPMEv:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 55


 3079              		@ args = 0, pretend = 0, frame = 0
 3080              		@ frame_needed = 0, uses_anonymous_args = 0
 3081 0000 10B5     		push	{r4, lr}
 3082 0002 0D4C     		ldr	r4, .L590
 3083 0004 2368     		ldr	r3, [r4]
 3084 0006 23B9     		cbnz	r3, .L587
 3085              	.L589:
 3086 0008 DFED0C7A 		flds	s15, .L590+4
 3087 000c 17EE900A 		fmrs	r0, s15
 3088 0010 10BD     		pop	{r4, pc}
 3089              	.L587:
 3090 0012 FFF7FEFF 		bl	micros
 3091 0016 0A4A     		ldr	r2, .L590+8
 3092 0018 0A4B     		ldr	r3, .L590+12
 3093 001a 1268     		ldr	r2, [r2]
 3094 001c 801A     		subs	r0, r0, r2
 3095 001e 9842     		cmp	r0, r3
 3096 0020 F2D8     		bhi	.L589
 3097 0022 2368     		ldr	r3, [r4]
 3098 0024 084A     		ldr	r2, .L590+16
 3099 0026 B2FBF3F3 		udiv	r3, r2, r3
 3100 002a 07EE103A 		fmsr	s14, r3	@ int
 3101 002e F8EEC77A 		fsitos	s15, s14
 3102 0032 17EE900A 		fmrs	r0, s15
 3103 0036 10BD     		pop	{r4, pc}
 3104              	.L591:
 3105              		.align	2
 3106              	.L590:
 3107 0038 00000000 		.word	.LANCHOR2
 3108 003c 00000000 		.word	0
 3109 0040 00000000 		.word	.LANCHOR1
 3110 0044 BFC62D00 		.word	2999999
 3111 0048 00703839 		.word	960000000
 3112              		.size	_ZN8Platform9GetFanRPMEv, .-_ZN8Platform9GetFanRPMEv
 3113              		.section	.text._ZNK8Platform20FansHardwareInvertedEj,"ax",%progbits
 3114              		.align	2
 3115              		.global	_ZNK8Platform20FansHardwareInvertedEj
 3116              		.thumb
 3117              		.thumb_func
 3118              		.type	_ZNK8Platform20FansHardwareInvertedEj, %function
 3119              	_ZNK8Platform20FansHardwareInvertedEj:
 3120              		@ args = 0, pretend = 0, frame = 0
 3121              		@ frame_needed = 0, uses_anonymous_args = 0
 3122              		@ link register save eliminated.
 3123 0000 0020     		movs	r0, #0
 3124 0002 7047     		bx	lr
 3125              		.size	_ZNK8Platform20FansHardwareInvertedEj, .-_ZNK8Platform20FansHardwareInvertedEj
 3126              		.section	.text._ZN8Platform8InitFansEv,"ax",%progbits
 3127              		.align	2
 3128              		.global	_ZN8Platform8InitFansEv
 3129              		.thumb
 3130              		.thumb_func
 3131              		.type	_ZN8Platform8InitFansEv, %function
 3132              	_ZN8Platform8InitFansEv:
 3133              		@ args = 0, pretend = 0, frame = 0
 3134              		@ frame_needed = 0, uses_anonymous_args = 0
 3135 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 56


 3136 0002 154C     		ldr	r4, .L596
 3137 0004 0746     		mov	r7, r0
 3138 0006 00F5E265 		add	r5, r0, #1808
 3139 000a 04F10806 		add	r6, r4, #8
 3140              	.L595:
 3141 000e 14F8011F 		ldrb	r1, [r4, #1]!	@ zero_extendqisi2
 3142 0012 2846     		mov	r0, r5
 3143 0014 0022     		movs	r2, #0
 3144 0016 FFF7FEFF 		bl	_ZN3Fan4InitEhb
 3145 001a B442     		cmp	r4, r6
 3146 001c 05F12005 		add	r5, r5, #32
 3147 0020 F5D1     		bne	.L595
 3148 0022 07F5E664 		add	r4, r7, #1840
 3149 0026 2046     		mov	r0, r4
 3150 0028 4FF6FE71 		movw	r1, #65534
 3151 002c FFF7FEFF 		bl	_ZN3Fan19SetHeatersMonitoredEt
 3152 0030 2046     		mov	r0, r4
 3153 0032 4FF07E51 		mov	r1, #1065353216
 3154 0036 FFF7FEFF 		bl	_ZN3Fan8SetValueEf
 3155 003a 07F61403 		addw	r3, r7, #2068
 3156 003e 6620     		movs	r0, #102
 3157 0040 0022     		movs	r2, #0
 3158 0042 87F81008 		strb	r0, [r7, #2064]
 3159 0046 0121     		movs	r1, #1
 3160 0048 1A60     		str	r2, [r3]	@ float
 3161 004a 40F2DC52 		movw	r2, #1500
 3162 004e BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 3163 0052 FFF7FEBF 		b	pinModeDuet
 3164              	.L597:
 3165 0056 00BF     		.align	2
 3166              	.L596:
 3167 0058 FFFFFFFF 		.word	.LANCHOR7-1
 3168              		.size	_ZN8Platform8InitFansEv, .-_ZN8Platform8InitFansEv
 3169              		.section	.text._ZN8Platform13SetMACAddressEPh,"ax",%progbits
 3170              		.align	2
 3171              		.global	_ZN8Platform13SetMACAddressEPh
 3172              		.thumb
 3173              		.thumb_func
 3174              		.type	_ZN8Platform13SetMACAddressEPh, %function
 3175              	_ZN8Platform13SetMACAddressEPh:
 3176              		@ args = 0, pretend = 0, frame = 0
 3177              		@ frame_needed = 0, uses_anonymous_args = 0
 3178              		@ link register save eliminated.
 3179 0000 10B4     		push	{r4}
 3180 0002 0023     		movs	r3, #0
 3181              	.L600:
 3182 0004 C218     		adds	r2, r0, r3
 3183 0006 CC5C     		ldrb	r4, [r1, r3]	@ zero_extendqisi2
 3184 0008 82F8A440 		strb	r4, [r2, #164]
 3185 000c 0133     		adds	r3, r3, #1
 3186 000e 062B     		cmp	r3, #6
 3187 0010 F8D1     		bne	.L600
 3188 0012 5DF8044B 		ldr	r4, [sp], #4
 3189 0016 7047     		bx	lr
 3190              		.size	_ZN8Platform13SetMACAddressEPh, .-_ZN8Platform13SetMACAddressEPh
 3191              		.section	.text._ZN8Platform14AppendAuxReplyEPKc,"ax",%progbits
 3192              		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 57


 3193              		.global	_ZN8Platform14AppendAuxReplyEPKc
 3194              		.thumb
 3195              		.thumb_func
 3196              		.type	_ZN8Platform14AppendAuxReplyEPKc, %function
 3197              	_ZN8Platform14AppendAuxReplyEPKc:
 3198              		@ args = 0, pretend = 0, frame = 16
 3199              		@ frame_needed = 0, uses_anonymous_args = 0
 3200 0000 10B5     		push	{r4, lr}
 3201 0002 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 3202 0004 84B0     		sub	sp, sp, #16
 3203 0006 0446     		mov	r4, r0
 3204 0008 73B1     		cbz	r3, .L602
 3205 000a 90F83028 		ldrb	r2, [r0, #2096]	@ zero_extendqisi2
 3206 000e 5AB1     		cbz	r2, .L602
 3207 0010 7B2B     		cmp	r3, #123
 3208 0012 0BD0     		beq	.L618
 3209 0014 D4F83408 		ldr	r0, [r4, #2100]
 3210 0018 C0B1     		cbz	r0, .L619
 3211              	.L608:
 3212 001a D4F83838 		ldr	r3, [r4, #2104]
 3213 001e 0133     		adds	r3, r3, #1
 3214 0020 C4F83838 		str	r3, [r4, #2104]
 3215 0024 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3216              	.L602:
 3217 0028 04B0     		add	sp, sp, #16
 3218              		@ sp needed
 3219 002a 10BD     		pop	{r4, pc}
 3220              	.L618:
 3221 002c 03A8     		add	r0, sp, #12
 3222 002e 0191     		str	r1, [sp, #4]
 3223 0030 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 3224 0034 0199     		ldr	r1, [sp, #4]
 3225 0036 0028     		cmp	r0, #0
 3226 0038 F6D0     		beq	.L602
 3227 003a 0398     		ldr	r0, [sp, #12]
 3228 003c FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 3229 0040 D4F82408 		ldr	r0, [r4, #2084]
 3230 0044 0399     		ldr	r1, [sp, #12]
 3231 0046 FFF7FEFF 		bl	_ZN11OutputStack4PushEP12OutputBuffer
 3232 004a EDE7     		b	.L602
 3233              	.L619:
 3234 004c 04F63400 		addw	r0, r4, #2100
 3235 0050 0191     		str	r1, [sp, #4]
 3236 0052 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 3237 0056 0199     		ldr	r1, [sp, #4]
 3238 0058 0028     		cmp	r0, #0
 3239 005a E5D0     		beq	.L602
 3240 005c D4F83408 		ldr	r0, [r4, #2100]
 3241 0060 DBE7     		b	.L608
 3242              		.size	_ZN8Platform14AppendAuxReplyEPKc, .-_ZN8Platform14AppendAuxReplyEPKc
 3243 0062 00BF     		.section	.text._ZN8Platform14AppendAuxReplyEP12OutputBuffer,"ax",%progbits
 3244              		.align	2
 3245              		.global	_ZN8Platform14AppendAuxReplyEP12OutputBuffer
 3246              		.thumb
 3247              		.thumb_func
 3248              		.type	_ZN8Platform14AppendAuxReplyEP12OutputBuffer, %function
 3249              	_ZN8Platform14AppendAuxReplyEP12OutputBuffer:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 58


 3250              		@ args = 0, pretend = 0, frame = 0
 3251              		@ frame_needed = 0, uses_anonymous_args = 0
 3252 0000 38B5     		push	{r3, r4, r5, lr}
 3253 0002 0C46     		mov	r4, r1
 3254 0004 0546     		mov	r5, r0
 3255 0006 19B1     		cbz	r1, .L621
 3256 0008 0846     		mov	r0, r1
 3257 000a FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 3258 000e 20B9     		cbnz	r0, .L635
 3259              	.L621:
 3260 0010 2046     		mov	r0, r4
 3261 0012 BDE83840 		pop	{r3, r4, r5, lr}
 3262 0016 FFF7FEBF 		b	_ZN12OutputBuffer10ReleaseAllEPS_
 3263              	.L635:
 3264 001a 95F83038 		ldrb	r3, [r5, #2096]	@ zero_extendqisi2
 3265 001e 002B     		cmp	r3, #0
 3266 0020 F6D0     		beq	.L621
 3267 0022 2046     		mov	r0, r4
 3268 0024 0021     		movs	r1, #0
 3269 0026 FFF7FEFF 		bl	_ZN12OutputBufferixEj
 3270 002a 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 3271 002c 7B2B     		cmp	r3, #123
 3272 002e 0FD0     		beq	.L636
 3273 0030 D5F83838 		ldr	r3, [r5, #2104]
 3274 0034 D5F83408 		ldr	r0, [r5, #2100]
 3275 0038 0133     		adds	r3, r3, #1
 3276 003a C5F83838 		str	r3, [r5, #2104]
 3277 003e 20B1     		cbz	r0, .L637
 3278 0040 2146     		mov	r1, r4
 3279 0042 BDE83840 		pop	{r3, r4, r5, lr}
 3280 0046 FFF7FEBF 		b	_ZN12OutputBuffer6AppendEPS_
 3281              	.L637:
 3282 004a C5F83448 		str	r4, [r5, #2100]
 3283 004e 38BD     		pop	{r3, r4, r5, pc}
 3284              	.L636:
 3285 0050 D5F82408 		ldr	r0, [r5, #2084]
 3286 0054 2146     		mov	r1, r4
 3287 0056 BDE83840 		pop	{r3, r4, r5, lr}
 3288 005a FFF7FEBF 		b	_ZN11OutputStack4PushEP12OutputBuffer
 3289              		.size	_ZN8Platform14AppendAuxReplyEP12OutputBuffer, .-_ZN8Platform14AppendAuxReplyEP12OutputBuffer
 3290 005e 00BF     		.section	.text._ZNK8Platform8AtxPowerEv,"ax",%progbits
 3291              		.align	2
 3292              		.global	_ZNK8Platform8AtxPowerEv
 3293              		.thumb
 3294              		.thumb_func
 3295              		.type	_ZNK8Platform8AtxPowerEv, %function
 3296              	_ZNK8Platform8AtxPowerEv:
 3297              		@ args = 0, pretend = 0, frame = 0
 3298              		@ frame_needed = 0, uses_anonymous_args = 0
 3299              		@ link register save eliminated.
 3300 0000 4F20     		movs	r0, #79
 3301 0002 FFF7FEBF 		b	digitalRead
 3302              		.size	_ZNK8Platform8AtxPowerEv, .-_ZNK8Platform8AtxPowerEv
 3303 0006 00BF     		.section	.text._ZN8Platform11SetAtxPowerEb,"ax",%progbits
 3304              		.align	2
 3305              		.global	_ZN8Platform11SetAtxPowerEb
 3306              		.thumb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 59


 3307              		.thumb_func
 3308              		.type	_ZN8Platform11SetAtxPowerEb, %function
 3309              	_ZN8Platform11SetAtxPowerEb:
 3310              		@ args = 0, pretend = 0, frame = 0
 3311              		@ frame_needed = 0, uses_anonymous_args = 0
 3312              		@ link register save eliminated.
 3313 0000 4F20     		movs	r0, #79
 3314 0002 FFF7FEBF 		b	digitalWrite
 3315              		.size	_ZN8Platform11SetAtxPowerEb, .-_ZN8Platform11SetAtxPowerEb
 3316 0006 00BF     		.section	.text._ZN8Platform18SetPressureAdvanceEjf,"ax",%progbits
 3317              		.align	2
 3318              		.global	_ZN8Platform18SetPressureAdvanceEjf
 3319              		.thumb
 3320              		.thumb_func
 3321              		.type	_ZN8Platform18SetPressureAdvanceEjf, %function
 3322              	_ZN8Platform18SetPressureAdvanceEjf:
 3323              		@ args = 0, pretend = 0, frame = 0
 3324              		@ frame_needed = 0, uses_anonymous_args = 0
 3325              		@ link register save eliminated.
 3326 0000 0629     		cmp	r1, #6
 3327 0002 9CBF     		itt	ls
 3328 0004 00EB8101 		addls	r1, r0, r1, lsl #2
 3329 0008 C1F89821 		strls	r2, [r1, #408]	@ float
 3330 000c 7047     		bx	lr
 3331              		.size	_ZN8Platform18SetPressureAdvanceEjf, .-_ZN8Platform18SetPressureAdvanceEjf
 3332 000e 00BF     		.section	.text._ZNK8Platform15ActualInstantDvEj,"ax",%progbits
 3333              		.align	2
 3334              		.global	_ZNK8Platform15ActualInstantDvEj
 3335              		.thumb
 3336              		.thumb_func
 3337              		.type	_ZNK8Platform15ActualInstantDvEj, %function
 3338              	_ZNK8Platform15ActualInstantDvEj:
 3339              		@ args = 0, pretend = 0, frame = 0
 3340              		@ frame_needed = 0, uses_anonymous_args = 0
 3341 0000 08B5     		push	{r3, lr}
 3342 0002 2DED028B 		fstmfdd	sp!, {d8}
 3343 0006 204B     		ldr	r3, .L649+8
 3344 0008 1B69     		ldr	r3, [r3, #16]
 3345 000a D3F8B031 		ldr	r3, [r3, #432]
 3346 000e 00EB8102 		add	r2, r0, r1, lsl #2
 3347 0012 9942     		cmp	r1, r3
 3348 0014 92ED5C8A 		flds	s16, [r2, #368]
 3349 0018 29D3     		bcc	.L647
 3350 001a C91A     		subs	r1, r1, r3
 3351 001c 00EB8100 		add	r0, r0, r1, lsl #2
 3352 0020 D0ED667A 		flds	s15, [r0, #408]
 3353 0024 F5EEC07A 		fcmpezs	s15
 3354 0028 F1EE10FA 		fmstat
 3355 002c 1FD9     		bls	.L647
 3356 002e 17EE900A 		fmrs	r0, s15
 3357 0032 FFF7FEFF 		bl	__aeabi_f2d
 3358 0036 0246     		mov	r2, r0
 3359 0038 0B46     		mov	r3, r1
 3360 003a 11A1     		adr	r1, .L649
 3361 003c D1E90001 		ldrd	r0, [r1]
 3362 0040 FFF7FEFF 		bl	__aeabi_ddiv
 3363 0044 FFF7FEFF 		bl	__aeabi_d2f
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 60


 3364 0048 B4EE488A 		fcmps	s16, s16
 3365 004c F1EE10FA 		fmstat
 3366 0050 07EE900A 		fmsr	s15, r0
 3367 0054 0BD6     		bvs	.L647
 3368 0056 B4EE678A 		fcmps	s16, s15
 3369 005a F1EE10FA 		fmstat
 3370 005e 48BF     		it	mi
 3371 0060 F0EE487A 		fcpysmi	s15, s16
 3372 0064 BDEC028B 		fldmfdd	sp!, {d8}
 3373 0068 17EE900A 		fmrs	r0, s15
 3374 006c 08BD     		pop	{r3, pc}
 3375              	.L647:
 3376 006e F0EE487A 		fcpys	s15, s16
 3377 0072 BDEC028B 		fldmfdd	sp!, {d8}
 3378 0076 17EE900A 		fmrs	r0, s15
 3379 007a 08BD     		pop	{r3, pc}
 3380              	.L650:
 3381 007c AFF30080 		.align	3
 3382              	.L649:
 3383 0080 7B14AE47 		.word	1202590843
 3384 0084 E17A843F 		.word	1065646817
 3385 0088 00000000 		.word	reprap
 3386              		.size	_ZNK8Platform15ActualInstantDvEj, .-_ZNK8Platform15ActualInstantDvEj
 3387 008c AFF30080 		.section	.text._ZNK8Platform11GetBaudRateEj,"ax",%progbits
 3388              		.align	2
 3389              		.global	_ZNK8Platform11GetBaudRateEj
 3390              		.thumb
 3391              		.thumb_func
 3392              		.type	_ZNK8Platform11GetBaudRateEj, %function
 3393              	_ZNK8Platform11GetBaudRateEj:
 3394              		@ args = 0, pretend = 0, frame = 0
 3395              		@ frame_needed = 0, uses_anonymous_args = 0
 3396              		@ link register save eliminated.
 3397 0000 0129     		cmp	r1, #1
 3398 0002 9ABF     		itte	ls
 3399 0004 01F20621 		addwls	r1, r1, #518
 3400 0008 50F82100 		ldrls	r0, [r0, r1, lsl #2]
 3401 000c 0020     		movhi	r0, #0
 3402 000e 7047     		bx	lr
 3403              		.size	_ZNK8Platform11GetBaudRateEj, .-_ZNK8Platform11GetBaudRateEj
 3404              		.section	.text._ZNK8Platform18GetCommsPropertiesEj,"ax",%progbits
 3405              		.align	2
 3406              		.global	_ZNK8Platform18GetCommsPropertiesEj
 3407              		.thumb
 3408              		.thumb_func
 3409              		.type	_ZNK8Platform18GetCommsPropertiesEj, %function
 3410              	_ZNK8Platform18GetCommsPropertiesEj:
 3411              		@ args = 0, pretend = 0, frame = 0
 3412              		@ frame_needed = 0, uses_anonymous_args = 0
 3413              		@ link register save eliminated.
 3414 0000 0129     		cmp	r1, #1
 3415 0002 9ABF     		itte	ls
 3416 0004 0918     		addls	r1, r1, r0
 3417 0006 91F82008 		ldrbls	r0, [r1, #2080]	@ zero_extendqisi2
 3418 000a 0020     		movhi	r0, #0
 3419 000c 7047     		bx	lr
 3420              		.size	_ZNK8Platform18GetCommsPropertiesEj, .-_ZNK8Platform18GetCommsPropertiesEj
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 61


 3421 000e 00BF     		.section	.text._ZN8Platform12SetBoardTypeE9BoardType,"ax",%progbits
 3422              		.align	2
 3423              		.global	_ZN8Platform12SetBoardTypeE9BoardType
 3424              		.thumb
 3425              		.thumb_func
 3426              		.type	_ZN8Platform12SetBoardTypeE9BoardType, %function
 3427              	_ZN8Platform12SetBoardTypeE9BoardType:
 3428              		@ args = 0, pretend = 0, frame = 0
 3429              		@ frame_needed = 0, uses_anonymous_args = 0
 3430 0000 10B5     		push	{r4, lr}
 3431 0002 0446     		mov	r4, r0
 3432 0004 31B9     		cbnz	r1, .L658
 3433 0006 0123     		movs	r3, #1
 3434 0008 80F8AB30 		strb	r3, [r0, #171]
 3435 000c 94F8C030 		ldrb	r3, [r4, #192]	@ zero_extendqisi2
 3436 0010 33B9     		cbnz	r3, .L661
 3437              	.L657:
 3438 0012 10BD     		pop	{r4, pc}
 3439              	.L658:
 3440 0014 94F8C030 		ldrb	r3, [r4, #192]	@ zero_extendqisi2
 3441 0018 80F8AB10 		strb	r1, [r0, #171]
 3442 001c 002B     		cmp	r3, #0
 3443 001e F8D0     		beq	.L657
 3444              	.L661:
 3445 0020 2046     		mov	r0, r4
 3446 0022 FFF7FEFF 		bl	_ZN8Platform10InitZProbeEv
 3447 0026 2046     		mov	r0, r4
 3448 0028 BDE81040 		pop	{r4, lr}
 3449 002c FFF7FEBF 		b	_ZN8Platform8InitFansEv
 3450              		.size	_ZN8Platform12SetBoardTypeE9BoardType, .-_ZN8Platform12SetBoardTypeE9BoardType
 3451              		.section	.text._ZNK8Platform20GetElectronicsStringEv,"ax",%progbits
 3452              		.align	2
 3453              		.global	_ZNK8Platform20GetElectronicsStringEv
 3454              		.thumb
 3455              		.thumb_func
 3456              		.type	_ZNK8Platform20GetElectronicsStringEv, %function
 3457              	_ZNK8Platform20GetElectronicsStringEv:
 3458              		@ args = 0, pretend = 0, frame = 0
 3459              		@ frame_needed = 0, uses_anonymous_args = 0
 3460              		@ link register save eliminated.
 3461 0000 90F8AB00 		ldrb	r0, [r0, #171]	@ zero_extendqisi2
 3462 0004 034A     		ldr	r2, .L666
 3463 0006 044B     		ldr	r3, .L666+4
 3464 0008 0128     		cmp	r0, #1
 3465 000a 0CBF     		ite	eq
 3466 000c 1046     		moveq	r0, r2
 3467 000e 1846     		movne	r0, r3
 3468 0010 7047     		bx	lr
 3469              	.L667:
 3470 0012 00BF     		.align	2
 3471              	.L666:
 3472 0014 38000000 		.word	.LC9
 3473 0018 4C000000 		.word	.LC10
 3474              		.size	_ZNK8Platform20GetElectronicsStringEv, .-_ZNK8Platform20GetElectronicsStringEv
 3475              		.section	.text._ZNK8Platform14GetBoardStringEv,"ax",%progbits
 3476              		.align	2
 3477              		.global	_ZNK8Platform14GetBoardStringEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 62


 3478              		.thumb
 3479              		.thumb_func
 3480              		.type	_ZNK8Platform14GetBoardStringEv, %function
 3481              	_ZNK8Platform14GetBoardStringEv:
 3482              		@ args = 0, pretend = 0, frame = 0
 3483              		@ frame_needed = 0, uses_anonymous_args = 0
 3484              		@ link register save eliminated.
 3485 0000 90F8AB00 		ldrb	r0, [r0, #171]	@ zero_extendqisi2
 3486 0004 034A     		ldr	r2, .L672
 3487 0006 044B     		ldr	r3, .L672+4
 3488 0008 0128     		cmp	r0, #1
 3489 000a 0CBF     		ite	eq
 3490 000c 1046     		moveq	r0, r2
 3491 000e 1846     		movne	r0, r3
 3492 0010 7047     		bx	lr
 3493              	.L673:
 3494 0012 00BF     		.align	2
 3495              	.L672:
 3496 0014 5C000000 		.word	.LC11
 3497 0018 6C000000 		.word	.LC12
 3498              		.size	_ZNK8Platform14GetBoardStringEv, .-_ZNK8Platform14GetBoardStringEv
 3499              		.section	.text._ZN8Platform14GetFirmwarePinEi9PinAccessRhRb,"ax",%progbits
 3500              		.align	2
 3501              		.global	_ZN8Platform14GetFirmwarePinEi9PinAccessRhRb
 3502              		.thumb
 3503              		.thumb_func
 3504              		.type	_ZN8Platform14GetFirmwarePinEi9PinAccessRhRb, %function
 3505              	_ZN8Platform14GetFirmwarePinEi9PinAccessRhRb:
 3506              		@ args = 4, pretend = 0, frame = 0
 3507              		@ frame_needed = 0, uses_anonymous_args = 0
 3508 0000 70B5     		push	{r4, r5, r6, lr}
 3509 0002 049D     		ldr	r5, [sp, #16]
 3510 0004 FF26     		movs	r6, #255
 3511 0006 0024     		movs	r4, #0
 3512 0008 6729     		cmp	r1, #103
 3513 000a 1E70     		strb	r6, [r3]
 3514 000c 2C70     		strb	r4, [r5]
 3515 000e 0AD8     		bhi	.L705
 3516 0010 0729     		cmp	r1, #7
 3517 0012 21D8     		bhi	.L677
 3518 0014 3F4C     		ldr	r4, .L712
 3519 0016 E468     		ldr	r4, [r4, #12]
 3520 0018 04EB8104 		add	r4, r4, r1, lsl #2
 3521 001c 6468     		ldr	r4, [r4, #4]
 3522 001e 94F84040 		ldrb	r4, [r4, #64]	@ zero_extendqisi2
 3523 0022 002C     		cmp	r4, #0
 3524 0024 37D0     		beq	.L706
 3525              	.L705:
 3526 0026 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 3527              	.L676:
 3528 0028 FF2C     		cmp	r4, #255
 3529 002a 24D0     		beq	.L692
 3530 002c 012A     		cmp	r2, #1
 3531 002e 26D0     		beq	.L707
 3532              	.L688:
 3533 0030 023A     		subs	r2, r2, #2
 3534 0032 012A     		cmp	r2, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 63


 3535 0034 29D9     		bls	.L708
 3536 0036 0126     		movs	r6, #1
 3537              	.L689:
 3538 0038 4518     		adds	r5, r0, r1
 3539 003a 71B2     		sxtb	r1, r6
 3540 003c 95F9D838 		ldrsb	r3, [r5, #2264]
 3541 0040 8B42     		cmp	r3, r1
 3542 0042 1AD0     		beq	.L696
 3543 0044 C72C     		cmp	r4, #199
 3544 0046 3BD8     		bhi	.L709
 3545 0048 2046     		mov	r0, r4
 3546 004a 0022     		movs	r2, #0
 3547 004c FFF7FEFF 		bl	pinModeDuet
 3548 0050 85F8D868 		strb	r6, [r5, #2264]
 3549 0054 0120     		movs	r0, #1
 3550 0056 70BD     		pop	{r4, r5, r6, pc}
 3551              	.L677:
 3552 0058 A1F11404 		sub	r4, r1, #20
 3553 005c 072C     		cmp	r4, #7
 3554 005e 21D9     		bls	.L710
 3555 0060 2729     		cmp	r1, #39
 3556 0062 E0DD     		ble	.L705
 3557 0064 3129     		cmp	r1, #49
 3558 0066 34DC     		bgt	.L682
 3559 0068 002A     		cmp	r2, #0
 3560 006a 46D0     		beq	.L683
 3561 006c 012A     		cmp	r2, #1
 3562 006e 49D0     		beq	.L711
 3563              	.L681:
 3564 0070 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 3565 0072 FF2C     		cmp	r4, #255
 3566 0074 DCD1     		bne	.L688
 3567              	.L692:
 3568 0076 0020     		movs	r0, #0
 3569 0078 70BD     		pop	{r4, r5, r6, pc}
 3570              	.L696:
 3571 007a 0120     		movs	r0, #1
 3572 007c 70BD     		pop	{r4, r5, r6, pc}
 3573              	.L707:
 3574 007e 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 3575 0080 002B     		cmp	r3, #0
 3576 0082 0CBF     		ite	eq
 3577 0084 0326     		moveq	r6, #3
 3578 0086 0426     		movne	r6, #4
 3579 0088 D6E7     		b	.L689
 3580              	.L708:
 3581 008a 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 3582 008c 002B     		cmp	r3, #0
 3583 008e 0CBF     		ite	eq
 3584 0090 0726     		moveq	r6, #7
 3585 0092 0826     		movne	r6, #8
 3586 0094 D0E7     		b	.L689
 3587              	.L706:
 3588 0096 4618     		adds	r6, r0, r1
 3589 0098 0124     		movs	r4, #1
 3590 009a 96F87665 		ldrb	r6, [r6, #1398]	@ zero_extendqisi2
 3591 009e 1E70     		strb	r6, [r3]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 64


 3592 00a0 2C70     		strb	r4, [r5]
 3593 00a2 C0E7     		b	.L705
 3594              	.L710:
 3595 00a4 00EB4416 		add	r6, r0, r4, lsl #5
 3596 00a8 96F82C67 		ldrb	r6, [r6, #1836]	@ zero_extendqisi2
 3597 00ac FF2E     		cmp	r6, #255
 3598 00ae BAD1     		bne	.L705
 3599 00b0 1629     		cmp	r1, #22
 3600 00b2 01DD     		ble	.L680
 3601 00b4 032A     		cmp	r2, #3
 3602 00b6 DBD0     		beq	.L681
 3603              	.L680:
 3604 00b8 174E     		ldr	r6, .L712+4
 3605 00ba 345D     		ldrb	r4, [r6, r4]	@ zero_extendqisi2
 3606 00bc 1C70     		strb	r4, [r3]
 3607 00be B3E7     		b	.L676
 3608              	.L709:
 3609 00c0 04F13800 		add	r0, r4, #56
 3610 00c4 C0B2     		uxtb	r0, r0
 3611 00c6 FFF7FEFF 		bl	_ZN13DuetExpansion10SetPinModeEh7PinMode
 3612 00ca 85F8D868 		strb	r6, [r5, #2264]
 3613 00ce 0120     		movs	r0, #1
 3614 00d0 70BD     		pop	{r4, r5, r6, pc}
 3615              	.L682:
 3616 00d2 3B29     		cmp	r1, #59
 3617 00d4 A7DD     		ble	.L705
 3618 00d6 3F29     		cmp	r1, #63
 3619 00d8 05DC     		bgt	.L685
 3620 00da 104C     		ldr	r4, .L712+8
 3621 00dc 0C44     		add	r4, r4, r1
 3622 00de 14F83C4C 		ldrb	r4, [r4, #-60]	@ zero_extendqisi2
 3623 00e2 1C70     		strb	r4, [r3]
 3624 00e4 A0E7     		b	.L676
 3625              	.L685:
 3626 00e6 6329     		cmp	r1, #99
 3627 00e8 9DDD     		ble	.L705
 3628 00ea 032A     		cmp	r2, #3
 3629 00ec C0D0     		beq	.L681
 3630 00ee 0C4C     		ldr	r4, .L712+12
 3631 00f0 0C44     		add	r4, r4, r1
 3632 00f2 14F8644C 		ldrb	r4, [r4, #-100]	@ zero_extendqisi2
 3633 00f6 1C70     		strb	r4, [r3]
 3634 00f8 96E7     		b	.L676
 3635              	.L683:
 3636 00fa 4418     		adds	r4, r0, r1
 3637 00fc 94F8BE40 		ldrb	r4, [r4, #190]	@ zero_extendqisi2
 3638 0100 1C70     		strb	r4, [r3]
 3639 0102 91E7     		b	.L676
 3640              	.L711:
 3641 0104 2C29     		cmp	r1, #44
 3642 0106 F8DC     		bgt	.L683
 3643 0108 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 3644 010a FF2C     		cmp	r4, #255
 3645 010c B3D0     		beq	.L692
 3646 010e 0326     		movs	r6, #3
 3647 0110 92E7     		b	.L689
 3648              	.L713:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 65


 3649 0112 00BF     		.align	2
 3650              	.L712:
 3651 0114 00000000 		.word	reprap
 3652 0118 00000000 		.word	.LANCHOR7
 3653 011c 00000000 		.word	.LANCHOR8
 3654 0120 00000000 		.word	.LANCHOR9
 3655              		.size	_ZN8Platform14GetFirmwarePinEi9PinAccessRhRb, .-_ZN8Platform14GetFirmwarePinEi9PinAccessRhRb
 3656              		.section	.text._ZN8Platform28SetExtrusionAncilliaryPwmPinEi,"ax",%progbits
 3657              		.align	2
 3658              		.global	_ZN8Platform28SetExtrusionAncilliaryPwmPinEi
 3659              		.thumb
 3660              		.thumb_func
 3661              		.type	_ZN8Platform28SetExtrusionAncilliaryPwmPinEi, %function
 3662              	_ZN8Platform28SetExtrusionAncilliaryPwmPinEi:
 3663              		@ args = 0, pretend = 0, frame = 0
 3664              		@ frame_needed = 0, uses_anonymous_args = 0
 3665 0000 00B5     		push	{lr}
 3666 0002 83B0     		sub	sp, sp, #12
 3667 0004 00F21D52 		addw	r2, r0, #1309
 3668 0008 0092     		str	r2, [sp]
 3669 000a 00F21C53 		addw	r3, r0, #1308
 3670 000e 0222     		movs	r2, #2
 3671 0010 FFF7FEFF 		bl	_ZN8Platform14GetFirmwarePinEi9PinAccessRhRb
 3672 0014 03B0     		add	sp, sp, #12
 3673              		@ sp needed
 3674 0016 5DF804FB 		ldr	pc, [sp], #4
 3675              		.size	_ZN8Platform28SetExtrusionAncilliaryPwmPinEi, .-_ZN8Platform28SetExtrusionAncilliaryPwmPinEi
 3676              		.global	__aeabi_dsub
 3677 001a 00BF     		.section	.text._ZNK8Platform18GetMcuTemperaturesERfS0_S0_,"ax",%progbits
 3678              		.align	2
 3679              		.global	_ZNK8Platform18GetMcuTemperaturesERfS0_S0_
 3680              		.thumb
 3681              		.thumb_func
 3682              		.type	_ZNK8Platform18GetMcuTemperaturesERfS0_S0_, %function
 3683              	_ZNK8Platform18GetMcuTemperaturesERfS0_S0_:
 3684              		@ args = 0, pretend = 0, frame = 0
 3685              		@ frame_needed = 0, uses_anonymous_args = 0
 3686 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 3687 0004 0646     		mov	r6, r0
 3688 0006 B0F8AE08 		ldrh	r0, [r0, #2222]
 3689 000a 07EE900A 		fmsr	s15, r0	@ int
 3690 000e F8EE677A 		fuitos	s15, s15
 3691 0012 9046     		mov	r8, r2
 3692 0014 17EE900A 		fmrs	r0, s15
 3693 0018 9946     		mov	r9, r3
 3694 001a 8A46     		mov	r10, r1
 3695 001c FFF7FEFF 		bl	__aeabi_f2d
 3696 0020 45A3     		adr	r3, .L716
 3697 0022 D3E90023 		ldrd	r2, [r3]
 3698 0026 FFF7FEFF 		bl	__aeabi_dmul
 3699 002a FFF7FEFF 		bl	__aeabi_d2f
 3700 002e FFF7FEFF 		bl	__aeabi_f2d
 3701 0032 43A3     		adr	r3, .L716+8
 3702 0034 D3E90023 		ldrd	r2, [r3]
 3703 0038 FFF7FEFF 		bl	__aeabi_dsub
 3704 003c 42A3     		adr	r3, .L716+16
 3705 003e D3E90023 		ldrd	r2, [r3]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 66


 3706 0042 FFF7FEFF 		bl	__aeabi_dmul
 3707 0046 0022     		movs	r2, #0
 3708 0048 414B     		ldr	r3, .L716+24
 3709 004a FFF7FEFF 		bl	__aeabi_dadd
 3710 004e 06F6B407 		addw	r7, r6, #2228
 3711 0052 0446     		mov	r4, r0
 3712 0054 3868     		ldr	r0, [r7]	@ float
 3713 0056 0D46     		mov	r5, r1
 3714 0058 FFF7FEFF 		bl	__aeabi_f2d
 3715 005c 0246     		mov	r2, r0
 3716 005e 0B46     		mov	r3, r1
 3717 0060 2046     		mov	r0, r4
 3718 0062 2946     		mov	r1, r5
 3719 0064 FFF7FEFF 		bl	__aeabi_dadd
 3720 0068 FFF7FEFF 		bl	__aeabi_d2f
 3721 006c B6F8AA38 		ldrh	r3, [r6, #2218]
 3722 0070 CAF80000 		str	r0, [r10]	@ float
 3723 0074 07EE903A 		fmsr	s15, r3	@ int
 3724 0078 F8EE677A 		fuitos	s15, s15
 3725 007c 17EE900A 		fmrs	r0, s15
 3726 0080 FFF7FEFF 		bl	__aeabi_f2d
 3727 0084 2CA3     		adr	r3, .L716
 3728 0086 D3E90023 		ldrd	r2, [r3]
 3729 008a FFF7FEFF 		bl	__aeabi_dmul
 3730 008e FFF7FEFF 		bl	__aeabi_d2f
 3731 0092 FFF7FEFF 		bl	__aeabi_f2d
 3732 0096 2AA3     		adr	r3, .L716+8
 3733 0098 D3E90023 		ldrd	r2, [r3]
 3734 009c FFF7FEFF 		bl	__aeabi_dsub
 3735 00a0 29A3     		adr	r3, .L716+16
 3736 00a2 D3E90023 		ldrd	r2, [r3]
 3737 00a6 FFF7FEFF 		bl	__aeabi_dmul
 3738 00aa 0022     		movs	r2, #0
 3739 00ac 284B     		ldr	r3, .L716+24
 3740 00ae FFF7FEFF 		bl	__aeabi_dadd
 3741 00b2 0446     		mov	r4, r0
 3742 00b4 3868     		ldr	r0, [r7]	@ float
 3743 00b6 0D46     		mov	r5, r1
 3744 00b8 FFF7FEFF 		bl	__aeabi_f2d
 3745 00bc 0246     		mov	r2, r0
 3746 00be 0B46     		mov	r3, r1
 3747 00c0 2046     		mov	r0, r4
 3748 00c2 2946     		mov	r1, r5
 3749 00c4 FFF7FEFF 		bl	__aeabi_dadd
 3750 00c8 FFF7FEFF 		bl	__aeabi_d2f
 3751 00cc B6F8AC38 		ldrh	r3, [r6, #2220]
 3752 00d0 C8F80000 		str	r0, [r8]	@ float
 3753 00d4 07EE903A 		fmsr	s15, r3	@ int
 3754 00d8 F8EE677A 		fuitos	s15, s15
 3755 00dc 17EE900A 		fmrs	r0, s15
 3756 00e0 FFF7FEFF 		bl	__aeabi_f2d
 3757 00e4 14A3     		adr	r3, .L716
 3758 00e6 D3E90023 		ldrd	r2, [r3]
 3759 00ea FFF7FEFF 		bl	__aeabi_dmul
 3760 00ee FFF7FEFF 		bl	__aeabi_d2f
 3761 00f2 FFF7FEFF 		bl	__aeabi_f2d
 3762 00f6 12A3     		adr	r3, .L716+8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 67


 3763 00f8 D3E90023 		ldrd	r2, [r3]
 3764 00fc FFF7FEFF 		bl	__aeabi_dsub
 3765 0100 11A3     		adr	r3, .L716+16
 3766 0102 D3E90023 		ldrd	r2, [r3]
 3767 0106 FFF7FEFF 		bl	__aeabi_dmul
 3768 010a 0022     		movs	r2, #0
 3769 010c 104B     		ldr	r3, .L716+24
 3770 010e FFF7FEFF 		bl	__aeabi_dadd
 3771 0112 0446     		mov	r4, r0
 3772 0114 3868     		ldr	r0, [r7]	@ float
 3773 0116 0D46     		mov	r5, r1
 3774 0118 FFF7FEFF 		bl	__aeabi_f2d
 3775 011c 0246     		mov	r2, r0
 3776 011e 0B46     		mov	r3, r1
 3777 0120 2046     		mov	r0, r4
 3778 0122 2946     		mov	r1, r5
 3779 0124 FFF7FEFF 		bl	__aeabi_dadd
 3780 0128 FFF7FEFF 		bl	__aeabi_d2f
 3781 012c C9F80000 		str	r0, [r9]	@ float
 3782 0130 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 3783              	.L717:
 3784 0134 AFF30080 		.align	3
 3785              	.L716:
 3786 0138 66666666 		.word	1717986918
 3787 013c 66664A3F 		.word	1061840486
 3788 0140 0AD7A370 		.word	1889785610
 3789 0144 3D0AF73F 		.word	1073154621
 3790 0148 720531B9 		.word	-1187969678
 3791 014c 82986A40 		.word	1080727682
 3792 0150 00003B40 		.word	1077608448
 3793              		.size	_ZNK8Platform18GetMcuTemperaturesERfS0_S0_, .-_ZNK8Platform18GetMcuTemperaturesERfS0_S0_
 3794              		.global	__aeabi_i2d
 3795 0154 AFF30080 		.section	.text._ZNK8Platform16GetPowerVoltagesERfS0_S0_,"ax",%progbits
 3796              		.align	2
 3797              		.global	_ZNK8Platform16GetPowerVoltagesERfS0_S0_
 3798              		.thumb
 3799              		.thumb_func
 3800              		.type	_ZNK8Platform16GetPowerVoltagesERfS0_S0_, %function
 3801              	_ZNK8Platform16GetPowerVoltagesERfS0_S0_:
 3802              		@ args = 0, pretend = 0, frame = 0
 3803              		@ frame_needed = 0, uses_anonymous_args = 0
 3804 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 3805 0002 0446     		mov	r4, r0
 3806 0004 B0F8BE08 		ldrh	r0, [r0, #2238]
 3807 0008 80B2     		uxth	r0, r0
 3808 000a 1646     		mov	r6, r2
 3809 000c 1D46     		mov	r5, r3
 3810 000e 0F46     		mov	r7, r1
 3811 0010 FFF7FEFF 		bl	__aeabi_i2d
 3812 0014 12A3     		adr	r3, .L719
 3813 0016 D3E90023 		ldrd	r2, [r3]
 3814 001a FFF7FEFF 		bl	__aeabi_dmul
 3815 001e FFF7FEFF 		bl	__aeabi_d2f
 3816 0022 B4F8BA38 		ldrh	r3, [r4, #2234]
 3817 0026 3860     		str	r0, [r7]	@ float
 3818 0028 98B2     		uxth	r0, r3
 3819 002a FFF7FEFF 		bl	__aeabi_i2d
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 68


 3820 002e 0CA3     		adr	r3, .L719
 3821 0030 D3E90023 		ldrd	r2, [r3]
 3822 0034 FFF7FEFF 		bl	__aeabi_dmul
 3823 0038 FFF7FEFF 		bl	__aeabi_d2f
 3824 003c B4F8BC38 		ldrh	r3, [r4, #2236]
 3825 0040 3060     		str	r0, [r6]	@ float
 3826 0042 98B2     		uxth	r0, r3
 3827 0044 FFF7FEFF 		bl	__aeabi_i2d
 3828 0048 05A3     		adr	r3, .L719
 3829 004a D3E90023 		ldrd	r2, [r3]
 3830 004e FFF7FEFF 		bl	__aeabi_dmul
 3831 0052 FFF7FEFF 		bl	__aeabi_d2f
 3832 0056 2860     		str	r0, [r5]	@ float
 3833 0058 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3834              	.L720:
 3835 005a 00BFAFF3 		.align	3
 3835      0080
 3836              	.L719:
 3837 0060 00000060 		.word	1610612736
 3838 0064 6626823F 		.word	1065494118
 3839              		.size	_ZNK8Platform16GetPowerVoltagesERfS0_S0_, .-_ZNK8Platform16GetPowerVoltagesERfS0_S0_
 3840              		.section	.text._ZNK8Platform13IsDateTimeSetEv,"ax",%progbits
 3841              		.align	2
 3842              		.global	_ZNK8Platform13IsDateTimeSetEv
 3843              		.thumb
 3844              		.thumb_func
 3845              		.type	_ZNK8Platform13IsDateTimeSetEv, %function
 3846              	_ZNK8Platform13IsDateTimeSetEv:
 3847              		@ args = 0, pretend = 0, frame = 0
 3848              		@ frame_needed = 0, uses_anonymous_args = 0
 3849              		@ link register save eliminated.
 3850 0000 D0F8D008 		ldr	r0, [r0, #2256]
 3851 0004 0030     		adds	r0, r0, #0
 3852 0006 18BF     		it	ne
 3853 0008 0120     		movne	r0, #1
 3854 000a 7047     		bx	lr
 3855              		.size	_ZNK8Platform13IsDateTimeSetEv, .-_ZNK8Platform13IsDateTimeSetEv
 3856              		.section	.text._ZNK8Platform11GetDateTimeEv,"ax",%progbits
 3857              		.align	2
 3858              		.global	_ZNK8Platform11GetDateTimeEv
 3859              		.thumb
 3860              		.thumb_func
 3861              		.type	_ZNK8Platform11GetDateTimeEv, %function
 3862              	_ZNK8Platform11GetDateTimeEv:
 3863              		@ args = 0, pretend = 0, frame = 0
 3864              		@ frame_needed = 0, uses_anonymous_args = 0
 3865              		@ link register save eliminated.
 3866 0000 D0F8D008 		ldr	r0, [r0, #2256]
 3867 0004 7047     		bx	lr
 3868              		.size	_ZNK8Platform11GetDateTimeEv, .-_ZNK8Platform11GetDateTimeEv
 3869 0006 00BF     		.section	.text._ZN8Platform11SetDateTimeEl,"ax",%progbits
 3870              		.align	2
 3871              		.global	_ZN8Platform11SetDateTimeEl
 3872              		.thumb
 3873              		.thumb_func
 3874              		.type	_ZN8Platform11SetDateTimeEl, %function
 3875              	_ZN8Platform11SetDateTimeEl:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 69


 3876              		@ args = 0, pretend = 0, frame = 48
 3877              		@ frame_needed = 0, uses_anonymous_args = 0
 3878 0000 30B5     		push	{r4, r5, lr}
 3879 0002 8DB0     		sub	sp, sp, #52
 3880 0004 0CAB     		add	r3, sp, #48
 3881 0006 0546     		mov	r5, r0
 3882 0008 43F82C1D 		str	r1, [r3, #-44]!
 3883 000c 03A9     		add	r1, sp, #12
 3884 000e 1846     		mov	r0, r3
 3885 0010 FFF7FEFF 		bl	gmtime_r
 3886 0014 041C     		adds	r4, r0, #0
 3887 0016 18BF     		it	ne
 3888 0018 0124     		movne	r4, #1
 3889 001a 34B1     		cbz	r4, .L724
 3890 001c 019B     		ldr	r3, [sp, #4]
 3891 001e C5F8D038 		str	r3, [r5, #2256]
 3892 0022 FFF7FEFF 		bl	millis
 3893 0026 C5F8D408 		str	r0, [r5, #2260]
 3894              	.L724:
 3895 002a 2046     		mov	r0, r4
 3896 002c 0DB0     		add	sp, sp, #52
 3897              		@ sp needed
 3898 002e 30BD     		pop	{r4, r5, pc}
 3899              		.size	_ZN8Platform11SetDateTimeEl, .-_ZN8Platform11SetDateTimeEl
 3900              		.section	.text._ZN8Platform7SetDateEl,"ax",%progbits
 3901              		.align	2
 3902              		.global	_ZN8Platform7SetDateEl
 3903              		.thumb
 3904              		.thumb_func
 3905              		.type	_ZN8Platform7SetDateEl, %function
 3906              	_ZN8Platform7SetDateEl:
 3907              		@ args = 0, pretend = 0, frame = 80
 3908              		@ frame_needed = 0, uses_anonymous_args = 0
 3909 0000 30B5     		push	{r4, r5, lr}
 3910 0002 95B0     		sub	sp, sp, #84
 3911 0004 14AB     		add	r3, sp, #80
 3912 0006 0546     		mov	r5, r0
 3913 0008 43F84C1D 		str	r1, [r3, #-76]!
 3914 000c 02A9     		add	r1, sp, #8
 3915 000e 1846     		mov	r0, r3
 3916 0010 FFF7FEFF 		bl	gmtime_r
 3917 0014 041C     		adds	r4, r0, #0
 3918 0016 18BF     		it	ne
 3919 0018 0124     		movne	r4, #1
 3920 001a 4CB1     		cbz	r4, .L736
 3921 001c D5F8D038 		ldr	r3, [r5, #2256]
 3922 0020 4BB9     		cbnz	r3, .L744
 3923              	.L730:
 3924 0022 019B     		ldr	r3, [sp, #4]
 3925 0024 C5F8D038 		str	r3, [r5, #2256]
 3926 0028 FFF7FEFF 		bl	millis
 3927 002c C5F8D408 		str	r0, [r5, #2260]
 3928              	.L736:
 3929 0030 2046     		mov	r0, r4
 3930 0032 15B0     		add	sp, sp, #84
 3931              		@ sp needed
 3932 0034 30BD     		pop	{r4, r5, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 70


 3933              	.L744:
 3934 0036 05F50D60 		add	r0, r5, #2256
 3935 003a 0BA9     		add	r1, sp, #44
 3936 003c FFF7FEFF 		bl	gmtime_r
 3937 0040 0028     		cmp	r0, #0
 3938 0042 EED0     		beq	.L730
 3939 0044 0D99     		ldr	r1, [sp, #52]
 3940 0046 0C9A     		ldr	r2, [sp, #48]
 3941 0048 0B9B     		ldr	r3, [sp, #44]
 3942 004a 0491     		str	r1, [sp, #16]
 3943 004c 02A8     		add	r0, sp, #8
 3944 004e 0392     		str	r2, [sp, #12]
 3945 0050 0293     		str	r3, [sp, #8]
 3946 0052 FFF7FEFF 		bl	mktime
 3947 0056 C5F8D008 		str	r0, [r5, #2256]
 3948 005a 2046     		mov	r0, r4
 3949 005c 15B0     		add	sp, sp, #84
 3950              		@ sp needed
 3951 005e 30BD     		pop	{r4, r5, pc}
 3952              		.size	_ZN8Platform7SetDateEl, .-_ZN8Platform7SetDateEl
 3953              		.section	.text._ZN8Platform7SetTimeEl,"ax",%progbits
 3954              		.align	2
 3955              		.global	_ZN8Platform7SetTimeEl
 3956              		.thumb
 3957              		.thumb_func
 3958              		.type	_ZN8Platform7SetTimeEl, %function
 3959              	_ZN8Platform7SetTimeEl:
 3960              		@ args = 0, pretend = 0, frame = 80
 3961              		@ frame_needed = 0, uses_anonymous_args = 0
 3962 0000 30B5     		push	{r4, r5, lr}
 3963 0002 95B0     		sub	sp, sp, #84
 3964 0004 14AB     		add	r3, sp, #80
 3965 0006 0546     		mov	r5, r0
 3966 0008 43F84C1D 		str	r1, [r3, #-76]!
 3967 000c 02A9     		add	r1, sp, #8
 3968 000e 1846     		mov	r0, r3
 3969 0010 FFF7FEFF 		bl	gmtime_r
 3970 0014 041C     		adds	r4, r0, #0
 3971 0016 18BF     		it	ne
 3972 0018 0124     		movne	r4, #1
 3973 001a 4CB1     		cbz	r4, .L753
 3974 001c D5F8D038 		ldr	r3, [r5, #2256]
 3975 0020 4BB9     		cbnz	r3, .L761
 3976              	.L747:
 3977 0022 019B     		ldr	r3, [sp, #4]
 3978 0024 C5F8D038 		str	r3, [r5, #2256]
 3979              	.L749:
 3980 0028 FFF7FEFF 		bl	millis
 3981 002c C5F8D408 		str	r0, [r5, #2260]
 3982              	.L753:
 3983 0030 2046     		mov	r0, r4
 3984 0032 15B0     		add	sp, sp, #84
 3985              		@ sp needed
 3986 0034 30BD     		pop	{r4, r5, pc}
 3987              	.L761:
 3988 0036 0BA9     		add	r1, sp, #44
 3989 0038 05F50D60 		add	r0, r5, #2256
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 71


 3990 003c FFF7FEFF 		bl	gmtime_r
 3991 0040 0028     		cmp	r0, #0
 3992 0042 EED0     		beq	.L747
 3993 0044 0499     		ldr	r1, [sp, #16]
 3994 0046 039A     		ldr	r2, [sp, #12]
 3995 0048 029B     		ldr	r3, [sp, #8]
 3996 004a 0D91     		str	r1, [sp, #52]
 3997 004c 0BA8     		add	r0, sp, #44
 3998 004e 0C92     		str	r2, [sp, #48]
 3999 0050 0B93     		str	r3, [sp, #44]
 4000 0052 FFF7FEFF 		bl	mktime
 4001 0056 C5F8D008 		str	r0, [r5, #2256]
 4002 005a E5E7     		b	.L749
 4003              		.size	_ZN8Platform7SetTimeEl, .-_ZN8Platform7SetTimeEl
 4004              		.section	.text.TC2_Handler,"ax",%progbits
 4005              		.align	2
 4006              		.global	TC2_Handler
 4007              		.thumb
 4008              		.thumb_func
 4009              		.type	TC2_Handler, %function
 4010              	TC2_Handler:
 4011              		@ args = 0, pretend = 0, frame = 0
 4012              		@ frame_needed = 0, uses_anonymous_args = 0
 4013 0000 10B5     		push	{r4, lr}
 4014 0002 0B4A     		ldr	r2, .L774
 4015 0004 0B4B     		ldr	r3, .L774+4
 4016 0006 9468     		ldr	r4, [r2, #8]
 4017 0008 0422     		movs	r2, #4
 4018 000a C3F8A820 		str	r2, [r3, #168]
 4019 000e 2368     		ldr	r3, [r4]
 4020 0010 2BB1     		cbz	r3, .L763
 4021              	.L765:
 4022 0012 2068     		ldr	r0, [r4]
 4023 0014 FFF7FEFF 		bl	_ZN3DDA4StepEv
 4024 0018 0028     		cmp	r0, #0
 4025 001a FAD1     		bne	.L765
 4026 001c 10BD     		pop	{r4, pc}
 4027              	.L763:
 4028 001e 94F82C3C 		ldrb	r3, [r4, #3116]	@ zero_extendqisi2
 4029 0022 03B9     		cbnz	r3, .L773
 4030 0024 10BD     		pop	{r4, pc}
 4031              	.L773:
 4032 0026 2046     		mov	r0, r4
 4033 0028 BDE81040 		pop	{r4, lr}
 4034 002c FFF7FEBF 		b	_ZN4Move19DeltaProbeInterruptEv
 4035              	.L775:
 4036              		.align	2
 4037              	.L774:
 4038 0030 00000000 		.word	reprap
 4039 0034 00000940 		.word	1074331648
 4040              		.size	TC2_Handler, .-TC2_Handler
 4041              		.section	.text._ZN8Platform17ScheduleInterruptEm,"ax",%progbits
 4042              		.align	2
 4043              		.global	_ZN8Platform17ScheduleInterruptEm
 4044              		.thumb
 4045              		.thumb_func
 4046              		.type	_ZN8Platform17ScheduleInterruptEm, %function
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 72


 4047              	_ZN8Platform17ScheduleInterruptEm:
 4048              		@ args = 0, pretend = 0, frame = 0
 4049              		@ frame_needed = 0, uses_anonymous_args = 0
 4050 0000 38B5     		push	{r3, r4, r5, lr}
 4051 0002 0B4C     		ldr	r4, .L779
 4052 0004 0246     		mov	r2, r0
 4053 0006 0546     		mov	r5, r0
 4054 0008 0221     		movs	r1, #2
 4055 000a 2046     		mov	r0, r4
 4056 000c FFF7FEFF 		bl	tc_write_ra
 4057 0010 2046     		mov	r0, r4
 4058 0012 0221     		movs	r1, #2
 4059 0014 FFF7FEFF 		bl	tc_get_status
 4060 0018 D4F89030 		ldr	r3, [r4, #144]
 4061 001c ED1A     		subs	r5, r5, r3
 4062 001e 052D     		cmp	r5, #5
 4063 0020 C3BF     		ittte	gt
 4064 0022 0423     		movgt	r3, #4
 4065 0024 0020     		movgt	r0, #0
 4066 0026 C4F8A430 		strgt	r3, [r4, #164]
 4067 002a 0120     		movle	r0, #1
 4068 002c 38BD     		pop	{r3, r4, r5, pc}
 4069              	.L780:
 4070 002e 00BF     		.align	2
 4071              	.L779:
 4072 0030 00000940 		.word	1074331648
 4073              		.size	_ZN8Platform17ScheduleInterruptEm, .-_ZN8Platform17ScheduleInterruptEm
 4074              		.section	.text._ZN8Platform20DisableStepInterruptEv,"ax",%progbits
 4075              		.align	2
 4076              		.global	_ZN8Platform20DisableStepInterruptEv
 4077              		.thumb
 4078              		.thumb_func
 4079              		.type	_ZN8Platform20DisableStepInterruptEv, %function
 4080              	_ZN8Platform20DisableStepInterruptEv:
 4081              		@ args = 0, pretend = 0, frame = 0
 4082              		@ frame_needed = 0, uses_anonymous_args = 0
 4083              		@ link register save eliminated.
 4084 0000 024B     		ldr	r3, .L782
 4085 0002 0422     		movs	r2, #4
 4086 0004 C3F8A820 		str	r2, [r3, #168]
 4087 0008 7047     		bx	lr
 4088              	.L783:
 4089 000a 00BF     		.align	2
 4090              	.L782:
 4091 000c 00000940 		.word	1074331648
 4092              		.size	_ZN8Platform20DisableStepInterruptEv, .-_ZN8Platform20DisableStepInterruptEv
 4093              		.section	.text._ZN8Platform4TickEv,"ax",%progbits
 4094              		.align	2
 4095              		.global	_ZN8Platform4TickEv
 4096              		.thumb
 4097              		.thumb_func
 4098              		.type	_ZN8Platform4TickEv, %function
 4099              	_ZN8Platform4TickEv:
 4100              		@ args = 0, pretend = 0, frame = 0
 4101              		@ frame_needed = 0, uses_anonymous_args = 0
 4102 0000 70B5     		push	{r4, r5, r6, lr}
 4103 0002 90F89538 		ldrb	r3, [r0, #2197]	@ zero_extendqisi2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 73


 4104 0006 0446     		mov	r4, r0
 4105 0008 6BB9     		cbnz	r3, .L891
 4106              	.L786:
 4107 000a D4F89030 		ldr	r3, [r4, #144]
 4108 000e 022B     		cmp	r3, #2
 4109 0010 00F0FE80 		beq	.L892
 4110              	.L855:
 4111 0014 0123     		movs	r3, #1
 4112 0016 84F89538 		strb	r3, [r4, #2197]
 4113 001a 4FF0FF30 		mov	r0, #-1
 4114 001e BDE87040 		pop	{r4, r5, r6, lr}
 4115 0022 FFF7FEBF 		b	_Z23AnalogInStartConversionm
 4116              	.L891:
 4117 0026 90F9B808 		ldrsb	r0, [r0, #2232]
 4118 002a FFF7FEFF 		bl	_Z19AnalogInReadChannel19AnalogChannelNumber
 4119 002e A4F8BA08 		strh	r0, [r4, #2234]	@ movhi
 4120 0032 B4F8BA28 		ldrh	r2, [r4, #2234]
 4121 0036 B4F8BC38 		ldrh	r3, [r4, #2236]
 4122 003a 92B2     		uxth	r2, r2
 4123 003c 9BB2     		uxth	r3, r3
 4124 003e 9A42     		cmp	r2, r3
 4125 0040 04D9     		bls	.L787
 4126 0042 B4F8BA38 		ldrh	r3, [r4, #2234]
 4127 0046 9BB2     		uxth	r3, r3
 4128 0048 A4F8BC38 		strh	r3, [r4, #2236]	@ movhi
 4129              	.L787:
 4130 004c B4F8BA28 		ldrh	r2, [r4, #2234]
 4131 0050 B4F8BE38 		ldrh	r3, [r4, #2238]
 4132 0054 92B2     		uxth	r2, r2
 4133 0056 9BB2     		uxth	r3, r3
 4134 0058 9A42     		cmp	r2, r3
 4135 005a 04D2     		bcs	.L788
 4136 005c B4F8BA38 		ldrh	r3, [r4, #2234]
 4137 0060 9BB2     		uxth	r3, r3
 4138 0062 A4F8BE38 		strh	r3, [r4, #2238]	@ movhi
 4139              	.L788:
 4140 0066 94F8CC38 		ldrb	r3, [r4, #2252]	@ zero_extendqisi2
 4141 006a 4BB1     		cbz	r3, .L789
 4142 006c B4F8BA28 		ldrh	r2, [r4, #2234]
 4143 0070 40F6C843 		movw	r3, #3272
 4144 0074 92B2     		uxth	r2, r2
 4145 0076 9A42     		cmp	r2, r3
 4146 0078 02D9     		bls	.L789
 4147 007a 0020     		movs	r0, #0
 4148 007c FFF7FEFF 		bl	_ZN7TMC266017SetDriversPoweredEb
 4149              	.L789:
 4150 0080 94F89538 		ldrb	r3, [r4, #2197]	@ zero_extendqisi2
 4151 0084 013B     		subs	r3, r3, #1
 4152 0086 032B     		cmp	r3, #3
 4153 0088 BFD8     		bhi	.L786
 4154 008a DFE803F0 		tbb	[pc, r3]
 4155              	.L792:
 4156 008e 2C       		.byte	(.L791-.L792)/2
 4157 008f 17       		.byte	(.L793-.L792)/2
 4158 0090 2C       		.byte	(.L791-.L792)/2
 4159 0091 02       		.byte	(.L794-.L792)/2
 4160              		.align	1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 74


 4161              	.L794:
 4162 0092 D4F89030 		ldr	r3, [r4, #144]
 4163 0096 052B     		cmp	r3, #5
 4164 0098 00F0F280 		beq	.L840
 4165 009c 062B     		cmp	r3, #6
 4166 009e 00F02A81 		beq	.L841
 4167 00a2 042B     		cmp	r3, #4
 4168 00a4 00F04381 		beq	.L893
 4169 00a8 94F99408 		ldrsb	r0, [r4, #2196]
 4170 00ac FFF7FEFF 		bl	_Z19AnalogInReadChannel19AnalogChannelNumber
 4171 00b0 B0F57A6F 		cmp	r0, #4000
 4172 00b4 80F00F81 		bcs	.L859
 4173 00b8 0646     		mov	r6, r0
 4174 00ba EAE0     		b	.L846
 4175              	.L793:
 4176 00bc D4F89030 		ldr	r3, [r4, #144]
 4177 00c0 052B     		cmp	r3, #5
 4178 00c2 00F0AB80 		beq	.L823
 4179 00c6 062B     		cmp	r3, #6
 4180 00c8 00F00C81 		beq	.L824
 4181 00cc 042B     		cmp	r3, #4
 4182 00ce 00F03381 		beq	.L894
 4183 00d2 94F99408 		ldrsb	r0, [r4, #2196]
 4184 00d6 FFF7FEFF 		bl	_Z19AnalogInReadChannel19AnalogChannelNumber
 4185 00da B0F57A6F 		cmp	r0, #4000
 4186 00de 80F0F680 		bcs	.L858
 4187 00e2 0646     		mov	r6, r0
 4188 00e4 A4E0     		b	.L829
 4189              	.L791:
 4190 00e6 D4F89838 		ldr	r3, [r4, #2200]
 4191 00ea DAB2     		uxtb	r2, r3
 4192 00ec 04EB8202 		add	r2, r4, r2, lsl #2
 4193 00f0 D2F86C28 		ldr	r2, [r2, #2156]
 4194 00f4 072A     		cmp	r2, #7
 4195 00f6 6CD9     		bls	.L895
 4196              	.L795:
 4197 00f8 0121     		movs	r1, #1
 4198 00fa D4F80827 		ldr	r2, [r4, #1800]
 4199 00fe 9940     		lsls	r1, r1, r3
 4200 0100 1142     		tst	r1, r2
 4201 0102 48D1     		bne	.L896
 4202              	.L856:
 4203 0104 0133     		adds	r3, r3, #1
 4204 0106 082B     		cmp	r3, #8
 4205 0108 08BF     		it	eq
 4206 010a 0023     		moveq	r3, #0
 4207 010c C4F89838 		str	r3, [r4, #2200]
 4208 0110 D4F89030 		ldr	r3, [r4, #144]
 4209 0114 022B     		cmp	r3, #2
 4210 0116 33D0     		beq	.L802
 4211 0118 94F89528 		ldrb	r2, [r4, #2197]	@ zero_extendqisi2
 4212 011c 012A     		cmp	r2, #1
 4213 011e 0CBF     		ite	eq
 4214 0120 04F51E75 		addeq	r5, r4, #632
 4215 0124 04F52575 		addne	r5, r4, #660
 4216 0128 052B     		cmp	r3, #5
 4217 012a 00F0C680 		beq	.L806
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 75


 4218 012e 062B     		cmp	r3, #6
 4219 0130 00F00881 		beq	.L807
 4220 0134 042B     		cmp	r3, #4
 4221 0136 09D0     		beq	.L897
 4222 0138 94F99408 		ldrsb	r0, [r4, #2196]
 4223 013c FFF7FEFF 		bl	_Z19AnalogInReadChannel19AnalogChannelNumber
 4224 0140 B0F57A6F 		cmp	r0, #4000
 4225 0144 80F0CB80 		bcs	.L857
 4226              	.L881:
 4227 0148 0646     		mov	r6, r0
 4228 014a 0BE0     		b	.L812
 4229              	.L897:
 4230 014c 94F8E900 		ldrb	r0, [r4, #233]	@ zero_extendqisi2
 4231 0150 C728     		cmp	r0, #199
 4232 0152 00F2B780 		bhi	.L888
 4233              	.L809:
 4234 0156 FFF7FEFF 		bl	digitalRead
 4235              	.L810:
 4236 015a 0028     		cmp	r0, #0
 4237 015c 40F0BF80 		bne	.L857
 4238 0160 0020     		movs	r0, #0
 4239 0162 0646     		mov	r6, r0
 4240              	.L812:
 4241 0164 2B69     		ldr	r3, [r5, #16]
 4242 0166 6A69     		ldr	r2, [r5, #20]
 4243 0168 35F81310 		ldrh	r1, [r5, r3, lsl #1]
 4244 016c 521A     		subs	r2, r2, r1
 4245 016e 1044     		add	r0, r0, r2
 4246 0170 5A1C     		adds	r2, r3, #1
 4247 0172 082A     		cmp	r2, #8
 4248 0174 6861     		str	r0, [r5, #20]
 4249 0176 25F81360 		strh	r6, [r5, r3, lsl #1]	@ movhi
 4250 017a 00F0C580 		beq	.L819
 4251 017e 2A61     		str	r2, [r5, #16]
 4252              	.L802:
 4253 0180 94F89538 		ldrb	r3, [r4, #2197]	@ zero_extendqisi2
 4254 0184 0133     		adds	r3, r3, #1
 4255 0186 84F89538 		strb	r3, [r4, #2197]
 4256 018a 4FF0FF30 		mov	r0, #-1
 4257 018e BDE87040 		pop	{r4, r5, r6, lr}
 4258 0192 FFF7FEBF 		b	_Z23AnalogInStartConversionm
 4259              	.L896:
 4260 0196 FFF7FEFF 		bl	millis
 4261 019a 764B     		ldr	r3, .L900
 4262 019c D4F89818 		ldr	r1, [r4, #2200]
 4263 01a0 0546     		mov	r5, r0
 4264 01a2 D868     		ldr	r0, [r3, #12]
 4265 01a4 FFF7FEFF 		bl	_ZNK4Heat17GetLastSampleTimeEj
 4266 01a8 41F28833 		movw	r3, #5000
 4267 01ac 281A     		subs	r0, r5, r0
 4268 01ae 9842     		cmp	r0, r3
 4269 01b0 40F2CE80 		bls	.L898
 4270 01b4 0022     		movs	r2, #0
 4271 01b6 2046     		mov	r0, r4
 4272 01b8 D4F89818 		ldr	r1, [r4, #2200]
 4273 01bc FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjf
 4274 01c0 D4F8C420 		ldr	r2, [r4, #196]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 76


 4275 01c4 D4F89838 		ldr	r3, [r4, #2200]
 4276 01c8 42F00102 		orr	r2, r2, #1
 4277 01cc C4F8C420 		str	r2, [r4, #196]
 4278 01d0 98E7     		b	.L856
 4279              	.L895:
 4280 01d2 04EB8302 		add	r2, r4, r3, lsl #2
 4281 01d6 4C25     		movs	r5, #76
 4282 01d8 D2F86C28 		ldr	r2, [r2, #2156]
 4283 01dc 05FB0343 		mla	r3, r5, r3, r4
 4284 01e0 2244     		add	r2, r2, r4
 4285 01e2 03F52C75 		add	r5, r3, #688
 4286 01e6 92F98C08 		ldrsb	r0, [r2, #2188]
 4287 01ea FFF7FEFF 		bl	_Z19AnalogInReadChannel19AnalogChannelNumber
 4288 01ee 2B6C     		ldr	r3, [r5, #64]
 4289 01f0 6A6C     		ldr	r2, [r5, #68]
 4290 01f2 35F81310 		ldrh	r1, [r5, r3, lsl #1]
 4291 01f6 521A     		subs	r2, r2, r1
 4292 01f8 1118     		adds	r1, r2, r0
 4293 01fa 5A1C     		adds	r2, r3, #1
 4294 01fc 202A     		cmp	r2, #32
 4295 01fe 6964     		str	r1, [r5, #68]
 4296 0200 25F81300 		strh	r0, [r5, r3, lsl #1]	@ movhi
 4297 0204 2A64     		str	r2, [r5, #64]
 4298 0206 00F0AC80 		beq	.L796
 4299 020a D4F89838 		ldr	r3, [r4, #2200]
 4300 020e 73E7     		b	.L795
 4301              	.L892:
 4302 0210 94F87502 		ldrb	r0, [r4, #629]	@ zero_extendqisi2
 4303 0214 0121     		movs	r1, #1
 4304 0216 FFF7FEFF 		bl	digitalWrite
 4305 021a FBE6     		b	.L855
 4306              	.L823:
 4307 021c 94F87402 		ldrb	r0, [r4, #628]	@ zero_extendqisi2
 4308 0220 C728     		cmp	r0, #199
 4309 0222 63D8     		bhi	.L889
 4310              	.L826:
 4311 0224 FFF7FEFF 		bl	digitalRead
 4312              	.L827:
 4313 0228 0028     		cmp	r0, #0
 4314 022a 50D1     		bne	.L858
 4315 022c 0020     		movs	r0, #0
 4316 022e 0646     		mov	r6, r0
 4317              	.L829:
 4318 0230 D4F88822 		ldr	r2, [r4, #648]
 4319 0234 D4F88C12 		ldr	r1, [r4, #652]
 4320 0238 04EB4203 		add	r3, r4, r2, lsl #1
 4321 023c 0132     		adds	r2, r2, #1
 4322 023e B3F87852 		ldrh	r5, [r3, #632]
 4323 0242 491B     		subs	r1, r1, r5
 4324 0244 0844     		add	r0, r0, r1
 4325 0246 082A     		cmp	r2, #8
 4326 0248 C4F88C02 		str	r0, [r4, #652]
 4327 024c A3F87862 		strh	r6, [r3, #632]	@ movhi
 4328 0250 66D0     		beq	.L836
 4329 0252 C4F88822 		str	r2, [r4, #648]
 4330              	.L837:
 4331 0256 D4F89030 		ldr	r3, [r4, #144]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 77


 4332 025a 022B     		cmp	r3, #2
 4333 025c 7BD0     		beq	.L899
 4334              	.L838:
 4335 025e 94F9A808 		ldrsb	r0, [r4, #2216]
 4336 0262 FFF7FEFF 		bl	_Z19AnalogInReadChannel19AnalogChannelNumber
 4337 0266 94F89538 		ldrb	r3, [r4, #2197]	@ zero_extendqisi2
 4338 026a A4F8AA08 		strh	r0, [r4, #2218]	@ movhi
 4339 026e 0133     		adds	r3, r3, #1
 4340 0270 84F89538 		strb	r3, [r4, #2197]
 4341 0274 4FF0FF30 		mov	r0, #-1
 4342 0278 BDE87040 		pop	{r4, r5, r6, lr}
 4343 027c FFF7FEBF 		b	_Z23AnalogInStartConversionm
 4344              	.L840:
 4345 0280 94F87402 		ldrb	r0, [r4, #628]	@ zero_extendqisi2
 4346 0284 C728     		cmp	r0, #199
 4347 0286 3AD8     		bhi	.L890
 4348              	.L843:
 4349 0288 FFF7FEFF 		bl	digitalRead
 4350              	.L844:
 4351 028c 18BB     		cbnz	r0, .L859
 4352 028e 0020     		movs	r0, #0
 4353 0290 0646     		mov	r6, r0
 4354              	.L846:
 4355 0292 D4F8A422 		ldr	r2, [r4, #676]
 4356 0296 D4F8A812 		ldr	r1, [r4, #680]
 4357 029a 04EB4203 		add	r3, r4, r2, lsl #1
 4358 029e 0132     		adds	r2, r2, #1
 4359 02a0 B3F89452 		ldrh	r5, [r3, #660]
 4360 02a4 491B     		subs	r1, r1, r5
 4361 02a6 0844     		add	r0, r0, r1
 4362 02a8 082A     		cmp	r2, #8
 4363 02aa C4F8A802 		str	r0, [r4, #680]
 4364 02ae A3F89462 		strh	r6, [r3, #660]	@ movhi
 4365 02b2 2ED0     		beq	.L853
 4366 02b4 C4F8A422 		str	r2, [r4, #676]
 4367 02b8 A7E6     		b	.L786
 4368              	.L806:
 4369 02ba 94F87402 		ldrb	r0, [r4, #628]	@ zero_extendqisi2
 4370 02be C728     		cmp	r0, #199
 4371 02c0 7FF649AF 		bls	.L809
 4372              	.L888:
 4373 02c4 3830     		adds	r0, r0, #56
 4374 02c6 C0B2     		uxtb	r0, r0
 4375 02c8 FFF7FEFF 		bl	_ZN13DuetExpansion11DigitalReadEh
 4376 02cc 45E7     		b	.L810
 4377              	.L858:
 4378 02ce 4FF47A60 		mov	r0, #4000
 4379 02d2 0646     		mov	r6, r0
 4380 02d4 ACE7     		b	.L829
 4381              	.L859:
 4382 02d6 4FF47A60 		mov	r0, #4000
 4383 02da 0646     		mov	r6, r0
 4384 02dc D9E7     		b	.L846
 4385              	.L857:
 4386 02de 4FF47A60 		mov	r0, #4000
 4387 02e2 31E7     		b	.L881
 4388              	.L824:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 78


 4389 02e4 94F8EA00 		ldrb	r0, [r4, #234]	@ zero_extendqisi2
 4390 02e8 C728     		cmp	r0, #199
 4391 02ea 9BD9     		bls	.L826
 4392              	.L889:
 4393 02ec 3830     		adds	r0, r0, #56
 4394 02ee C0B2     		uxtb	r0, r0
 4395 02f0 FFF7FEFF 		bl	_ZN13DuetExpansion11DigitalReadEh
 4396 02f4 98E7     		b	.L827
 4397              	.L841:
 4398 02f6 94F8EA00 		ldrb	r0, [r4, #234]	@ zero_extendqisi2
 4399 02fa C728     		cmp	r0, #199
 4400 02fc C4D9     		bls	.L843
 4401              	.L890:
 4402 02fe 3830     		adds	r0, r0, #56
 4403 0300 C0B2     		uxtb	r0, r0
 4404 0302 FFF7FEFF 		bl	_ZN13DuetExpansion11DigitalReadEh
 4405 0306 C1E7     		b	.L844
 4406              	.L819:
 4407 0308 0022     		movs	r2, #0
 4408 030a 0123     		movs	r3, #1
 4409 030c 2A61     		str	r2, [r5, #16]
 4410 030e 2B76     		strb	r3, [r5, #24]
 4411 0310 36E7     		b	.L802
 4412              	.L853:
 4413 0312 0022     		movs	r2, #0
 4414 0314 0123     		movs	r3, #1
 4415 0316 C4F8A422 		str	r2, [r4, #676]
 4416 031a 84F8AC32 		strb	r3, [r4, #684]
 4417 031e 74E6     		b	.L786
 4418              	.L836:
 4419 0320 0022     		movs	r2, #0
 4420 0322 0123     		movs	r3, #1
 4421 0324 C4F88822 		str	r2, [r4, #648]
 4422 0328 84F89032 		strb	r3, [r4, #656]
 4423 032c 93E7     		b	.L837
 4424              	.L893:
 4425 032e 94F8E900 		ldrb	r0, [r4, #233]	@ zero_extendqisi2
 4426 0332 C728     		cmp	r0, #199
 4427 0334 A8D9     		bls	.L843
 4428 0336 E2E7     		b	.L890
 4429              	.L894:
 4430 0338 94F8E900 		ldrb	r0, [r4, #233]	@ zero_extendqisi2
 4431 033c C728     		cmp	r0, #199
 4432 033e 7FF671AF 		bls	.L826
 4433 0342 D3E7     		b	.L889
 4434              	.L807:
 4435 0344 94F8EA00 		ldrb	r0, [r4, #234]	@ zero_extendqisi2
 4436 0348 C728     		cmp	r0, #199
 4437 034a 7FF604AF 		bls	.L809
 4438 034e B9E7     		b	.L888
 4439              	.L898:
 4440 0350 D4F89838 		ldr	r3, [r4, #2200]
 4441 0354 D6E6     		b	.L856
 4442              	.L899:
 4443 0356 94F87502 		ldrb	r0, [r4, #629]	@ zero_extendqisi2
 4444 035a 0021     		movs	r1, #0
 4445 035c FFF7FEFF 		bl	digitalWrite
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 79


 4446 0360 7DE7     		b	.L838
 4447              	.L796:
 4448 0362 0021     		movs	r1, #0
 4449 0364 0122     		movs	r2, #1
 4450 0366 D4F89838 		ldr	r3, [r4, #2200]
 4451 036a 2964     		str	r1, [r5, #64]
 4452 036c 85F84820 		strb	r2, [r5, #72]
 4453 0370 C2E6     		b	.L795
 4454              	.L901:
 4455 0372 00BF     		.align	2
 4456              	.L900:
 4457 0374 00000000 		.word	reprap
 4458              		.size	_ZN8Platform4TickEv, .-_ZN8Platform4TickEv
 4459              		.section	.text._ZN8Platform4InitEv,"ax",%progbits
 4460              		.align	2
 4461              		.global	_ZN8Platform4InitEv
 4462              		.thumb
 4463              		.thumb_func
 4464              		.type	_ZN8Platform4InitEv, %function
 4465              	_ZN8Platform4InitEv:
 4466              		@ args = 0, pretend = 0, frame = 8
 4467              		@ frame_needed = 0, uses_anonymous_args = 0
 4468 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 4469 0004 2DED028B 		fstmfdd	sp!, {d8}
 4470 0008 0546     		mov	r5, r0
 4471 000a 85B0     		sub	sp, sp, #20
 4472 000c 0022     		movs	r2, #0
 4473 000e 0321     		movs	r1, #3
 4474 0010 4F20     		movs	r0, #79
 4475 0012 FFF7FEFF 		bl	pinModeDuet
 4476 0016 2846     		mov	r0, r5
 4477 0018 0021     		movs	r1, #0
 4478 001a FFF7FEFF 		bl	_ZN8Platform12SetBoardTypeE9BoardType
 4479 001e 0024     		movs	r4, #0
 4480 0020 4FF46142 		mov	r2, #57600
 4481 0024 0123     		movs	r3, #1
 4482 0026 4FF4E131 		mov	r1, #115200
 4483 002a C5F81C28 		str	r2, [r5, #2076]
 4484 002e 85F82138 		strb	r3, [r5, #2081]
 4485 0032 C5F81818 		str	r1, [r5, #2072]
 4486 0036 D048     		ldr	r0, .L941
 4487 0038 C5F8D048 		str	r4, [r5, #2256]
 4488 003c 85F82048 		strb	r4, [r5, #2080]
 4489 0040 85F83048 		strb	r4, [r5, #2096]
 4490 0044 C5F83848 		str	r4, [r5, #2104]
 4491 0048 FFF7FEFF 		bl	_ZN9SerialCDC5beginEm
 4492 004c D5F81C18 		ldr	r1, [r5, #2076]
 4493 0050 CA48     		ldr	r0, .L941+4
 4494 0052 FFF7FEFF 		bl	_ZN9UARTClass5beginEm
 4495 0056 CA49     		ldr	r1, .L941+8
 4496 0058 C848     		ldr	r0, .L941+4
 4497 005a FFF7FEFF 		bl	_ZN5Print7printlnEPKc
 4498 005e C949     		ldr	r1, .L941+12
 4499 0060 C648     		ldr	r0, .L941+4
 4500 0062 FFF7FEFF 		bl	_ZN5Print7printlnEPKc
 4501 0066 C84B     		ldr	r3, .L941+16
 4502 0068 C849     		ldr	r1, .L941+20
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 80


 4503 006a 1868     		ldr	r0, [r3]	@ unaligned
 4504 006c C84A     		ldr	r2, .L941+24
 4505 006e C94B     		ldr	r3, .L941+28
 4506 0070 C5F89800 		str	r0, [r5, #152]	@ unaligned
 4507 0074 0868     		ldr	r0, [r1]	@ unaligned
 4508 0076 C5F89C00 		str	r0, [r5, #156]	@ unaligned
 4509 007a 1068     		ldr	r0, [r2]	@ unaligned
 4510 007c 9988     		ldrh	r1, [r3, #4]	@ unaligned
 4511 007e C5F8A000 		str	r0, [r5, #160]	@ unaligned
 4512 0082 0222     		movs	r2, #2
 4513 0084 1868     		ldr	r0, [r3]	@ unaligned
 4514 0086 C5F8A400 		str	r0, [r5, #164]	@ unaligned
 4515 008a 0423     		movs	r3, #4
 4516 008c A5F8A810 		strh	r1, [r5, #168]	@ unaligned
 4517 0090 85F8AA20 		strb	r2, [r5, #170]
 4518 0094 C5F89430 		str	r3, [r5, #148]
 4519 0098 2846     		mov	r0, r5
 4520 009a C5F89040 		str	r4, [r5, #144]
 4521 009e FFF7FEFF 		bl	_ZN8Platform17SetZProbeDefaultsEv
 4522 00a2 0023     		movs	r3, #0
 4523 00a4 C5F8B830 		str	r3, [r5, #184]	@ float
 4524 00a8 C5F8BC40 		str	r4, [r5, #188]
 4525 00ac 2846     		mov	r0, r5
 4526 00ae FFF7FEFF 		bl	_ZN8Platform4TimeEv
 4527 00b2 0346     		mov	r3, r0	@ float
 4528 00b4 C5F8B030 		str	r3, [r5, #176]	@ float
 4529 00b8 D5F83C08 		ldr	r0, [r5, #2108]
 4530 00bc C5F8B430 		str	r3, [r5, #180]	@ float
 4531 00c0 FFF7FEFF 		bl	_ZN11MassStorage4InitEv
 4532              	.L904:
 4533 00c4 2B19     		adds	r3, r5, r4
 4534 00c6 0434     		adds	r4, r4, #4
 4535 00c8 D3F84008 		ldr	r0, [r3, #2112]
 4536 00cc FFF7FEFF 		bl	_ZN9FileStore4InitEv
 4537 00d0 282C     		cmp	r4, #40
 4538 00d2 F7D1     		bne	.L904
 4539 00d4 B04B     		ldr	r3, .L941+32
 4540 00d6 B14F     		ldr	r7, .L941+36
 4541 00d8 03CB     		ldmia	r3!, {r0, r1}
 4542 00da 05F1E604 		add	r4, r5, #230
 4543 00de 1A88     		ldrh	r2, [r3]	@ unaligned
 4544 00e0 C5F8E600 		str	r0, [r5, #230]	@ unaligned
 4545 00e4 0123     		movs	r3, #1
 4546 00e6 85F86838 		strb	r3, [r5, #2152]
 4547 00ea 07F1200E 		add	lr, r7, #32
 4548 00ee 2281     		strh	r2, [r4, #8]	@ unaligned
 4549 00f0 6160     		str	r1, [r4, #4]	@ unaligned
 4550 00f2 05F1F006 		add	r6, r5, #240
 4551              	.L905:
 4552 00f6 3C46     		mov	r4, r7
 4553 00f8 0FCC     		ldmia	r4!, {r0, r1, r2, r3}
 4554 00fa 7445     		cmp	r4, lr
 4555 00fc 3060     		str	r0, [r6]	@ unaligned
 4556 00fe 7160     		str	r1, [r6, #4]	@ unaligned
 4557 0100 B260     		str	r2, [r6, #8]	@ unaligned
 4558 0102 F360     		str	r3, [r6, #12]	@ unaligned
 4559 0104 2746     		mov	r7, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 81


 4560 0106 06F11006 		add	r6, r6, #16
 4561 010a F4D1     		bne	.L905
 4562 010c 03CF     		ldmia	r7!, {r0, r1}
 4563 010e A44F     		ldr	r7, .L941+40
 4564 0110 3060     		str	r0, [r6]	@ unaligned
 4565 0112 7160     		str	r1, [r6, #4]	@ unaligned
 4566 0114 07F1200E 		add	lr, r7, #32
 4567 0118 05F58C74 		add	r4, r5, #280
 4568              	.L906:
 4569 011c 3E46     		mov	r6, r7
 4570 011e 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 4571 0120 7645     		cmp	r6, lr
 4572 0122 2060     		str	r0, [r4]	@ unaligned
 4573 0124 6160     		str	r1, [r4, #4]	@ unaligned
 4574 0126 A260     		str	r2, [r4, #8]	@ unaligned
 4575 0128 E360     		str	r3, [r4, #12]	@ unaligned
 4576 012a 3746     		mov	r7, r6
 4577 012c 04F11004 		add	r4, r4, #16
 4578 0130 F4D1     		bne	.L906
 4579 0132 03CF     		ldmia	r7!, {r0, r1}
 4580 0134 9B4F     		ldr	r7, .L941+44
 4581 0136 2060     		str	r0, [r4]	@ unaligned
 4582 0138 6160     		str	r1, [r4, #4]	@ unaligned
 4583 013a 07F1200E 		add	lr, r7, #32
 4584 013e 05F5A474 		add	r4, r5, #328
 4585              	.L907:
 4586 0142 3E46     		mov	r6, r7
 4587 0144 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 4588 0146 7645     		cmp	r6, lr
 4589 0148 2060     		str	r0, [r4]	@ unaligned
 4590 014a 6160     		str	r1, [r4, #4]	@ unaligned
 4591 014c A260     		str	r2, [r4, #8]	@ unaligned
 4592 014e E360     		str	r3, [r4, #12]	@ unaligned
 4593 0150 3746     		mov	r7, r6
 4594 0152 04F11004 		add	r4, r4, #16
 4595 0156 F4D1     		bne	.L907
 4596 0158 03CF     		ldmia	r7!, {r0, r1}
 4597 015a 934F     		ldr	r7, .L941+48
 4598 015c 2060     		str	r0, [r4]	@ unaligned
 4599 015e 6160     		str	r1, [r4, #4]	@ unaligned
 4600 0160 07F1200E 		add	lr, r7, #32
 4601 0164 05F5B874 		add	r4, r5, #368
 4602              	.L908:
 4603 0168 3E46     		mov	r6, r7
 4604 016a 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 4605 016c 7645     		cmp	r6, lr
 4606 016e 2060     		str	r0, [r4]	@ unaligned
 4607 0170 6160     		str	r1, [r4, #4]	@ unaligned
 4608 0172 A260     		str	r2, [r4, #8]	@ unaligned
 4609 0174 E360     		str	r3, [r4, #12]	@ unaligned
 4610 0176 3746     		mov	r7, r6
 4611 0178 04F11004 		add	r4, r4, #16
 4612 017c F4D1     		bne	.L908
 4613 017e 03CF     		ldmia	r7!, {r0, r1}
 4614 0180 8A4A     		ldr	r2, .L941+52
 4615 0182 6160     		str	r1, [r4, #4]	@ unaligned
 4616 0184 2123     		movs	r3, #33
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 82


 4617 0186 2060     		str	r0, [r4]	@ unaligned
 4618 0188 1846     		mov	r0, r3
 4619 018a C5F84421 		str	r2, [r5, #324]	@ float
 4620 018e C5F84021 		str	r2, [r5, #320]	@ float
 4621 0192 85F87432 		strb	r3, [r5, #628]
 4622 0196 FFF7FEFF 		bl	_Z15PinToAdcChannelm
 4623 019a 854E     		ldr	r6, .L941+56
 4624 019c 85F89408 		strb	r0, [r5, #2196]
 4625 01a0 2846     		mov	r0, r5
 4626 01a2 FFF7FEFF 		bl	_ZN8Platform10InitZProbeEv
 4627 01a6 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
 4628 01a8 C5F82005 		str	r0, [r5, #1312]	@ unaligned
 4629 01ac C5F82415 		str	r1, [r5, #1316]	@ unaligned
 4630 01b0 03CE     		ldmia	r6!, {r0, r1}
 4631 01b2 804C     		ldr	r4, .L941+60
 4632 01b4 C5F82825 		str	r2, [r5, #1320]	@ unaligned
 4633 01b8 C5F82C35 		str	r3, [r5, #1324]	@ unaligned
 4634 01bc C5F83005 		str	r0, [r5, #1328]	@ unaligned
 4635 01c0 C5F83415 		str	r1, [r5, #1332]	@ unaligned
 4636 01c4 0FCC     		ldmia	r4!, {r0, r1, r2, r3}
 4637 01c6 C5F83805 		str	r0, [r5, #1336]	@ unaligned
 4638 01ca C5F83C15 		str	r1, [r5, #1340]	@ unaligned
 4639 01ce 03CC     		ldmia	r4!, {r0, r1}
 4640 01d0 DFF814E2 		ldr	lr, .L941+112
 4641 01d4 C5F84025 		str	r2, [r5, #1344]	@ unaligned
 4642 01d8 C5F84435 		str	r3, [r5, #1348]	@ unaligned
 4643 01dc C5F84805 		str	r0, [r5, #1352]	@ unaligned
 4644 01e0 C5F84C15 		str	r1, [r5, #1356]	@ unaligned
 4645 01e4 3520     		movs	r0, #53
 4646 01e6 0121     		movs	r1, #1
 4647 01e8 C5F86CE2 		str	lr, [r5, #620]	@ float
 4648 01ec FFF7FEFF 		bl	setPullup
 4649 01f0 714E     		ldr	r6, .L941+64
 4650 01f2 7248     		ldr	r0, .L941+68
 4651 01f4 7249     		ldr	r1, .L941+72
 4652 01f6 734A     		ldr	r2, .L941+76
 4653 01f8 DFF8F0B1 		ldr	fp, .L941+116
 4654 01fc 9FED728A 		flds	s16, .L941+80
 4655 0200 4FF0FF33 		mov	r3, #-1
 4656 0204 0024     		movs	r4, #0
 4657 0206 C6F8A430 		str	r3, [r6, #164]
 4658 020a A446     		mov	ip, r4
 4659 020c C0F8A430 		str	r3, [r0, #164]
 4660 0210 A846     		mov	r8, r5
 4661 0212 C1F8A430 		str	r3, [r1, #164]
 4662 0216 2E46     		mov	r6, r5
 4663 0218 C2F8A430 		str	r3, [r2, #164]
 4664 021c 2F46     		mov	r7, r5
 4665 021e 0123     		movs	r3, #1
 4666              	.L913:
 4667 0220 052C     		cmp	r4, #5
 4668 0222 E2B2     		uxtb	r2, r4
 4669 0224 87F8DCC0 		strb	ip, [r7, #220]
 4670 0228 87F8D230 		strb	r3, [r7, #210]
 4671 022c 09D8     		bhi	.L910
 4672 022e 022C     		cmp	r4, #2
 4673 0230 C8F80432 		str	r3, [r8, #516]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 83


 4674 0234 88F80822 		strb	r2, [r8, #520]
 4675 0238 C6F85035 		str	r3, [r6, #1360]
 4676 023c 87F86835 		strb	r3, [r7, #1384]
 4677 0240 03D9     		bls	.L911
 4678              	.L910:
 4679 0242 87F83122 		strb	r2, [r7, #561]
 4680 0246 86ED638A 		fsts	s16, [r6, #396]
 4681              	.L911:
 4682 024a 604A     		ldr	r2, .L941+84
 4683 024c 105D     		ldrb	r0, [r2, r4]	@ zero_extendqisi2
 4684 024e C0EBC00A 		rsb	r10, r0, r0, lsl #3
 4685 0252 0BEB8A09 		add	r9, fp, r10, lsl #2
 4686 0256 0321     		movs	r1, #3
 4687 0258 D9F80420 		ldr	r2, [r9, #4]
 4688 025c C6F83C22 		str	r2, [r6, #572]
 4689 0260 0022     		movs	r2, #0
 4690 0262 0293     		str	r3, [sp, #8]
 4691 0264 CDF80CC0 		str	ip, [sp, #12]
 4692 0268 FFF7FEFF 		bl	pinModeDuet
 4693 026c 584A     		ldr	r2, .L941+88
 4694 026e 0321     		movs	r1, #3
 4695 0270 105D     		ldrb	r0, [r2, r4]	@ zero_extendqisi2
 4696 0272 0022     		movs	r2, #0
 4697 0274 FFF7FEFF 		bl	pinModeDuet
 4698 0278 564A     		ldr	r2, .L941+92
 4699 027a 0421     		movs	r1, #4
 4700 027c 105D     		ldrb	r0, [r2, r4]	@ zero_extendqisi2
 4701 027e 0022     		movs	r2, #0
 4702 0280 FFF7FEFF 		bl	pinModeDuet
 4703 0284 5BF82A20 		ldr	r2, [fp, r10, lsl #2]
 4704 0288 D9F80410 		ldr	r1, [r9, #4]
 4705 028c C2F8A010 		str	r1, [r2, #160]
 4706 0290 4FF07E51 		mov	r1, #1065353216
 4707 0294 C6F8DC11 		str	r1, [r6, #476]	@ float
 4708 0298 86ED6D8A 		fsts	s16, [r6, #436]
 4709 029c 2A19     		adds	r2, r5, r4
 4710 029e 0134     		adds	r4, r4, #1
 4711 02a0 DDF80CC0 		ldr	ip, [sp, #12]
 4712 02a4 82F8C8C0 		strb	ip, [r2, #200]
 4713 02a8 0A2C     		cmp	r4, #10
 4714 02aa 07F10107 		add	r7, r7, #1
 4715 02ae 08F10808 		add	r8, r8, #8
 4716 02b2 4FF00001 		mov	r1, #0
 4717 02b6 06F10406 		add	r6, r6, #4
 4718 02ba 029B     		ldr	r3, [sp, #8]
 4719 02bc B0D1     		bne	.L913
 4720 02be C5F86412 		str	r1, [r5, #612]
 4721 02c2 C5F86812 		str	r1, [r5, #616]
 4722 02c6 C820     		movs	r0, #200
 4723 02c8 FFF7FEFF 		bl	delay
 4724 02cc FFF7FEFF 		bl	_ZN13DuetExpansion4InitEv
 4725 02d0 0228     		cmp	r0, #2
 4726 02d2 85F8AC00 		strb	r0, [r5, #172]
 4727 02d6 00F06381 		beq	.L915
 4728 02da 0328     		cmp	r0, #3
 4729 02dc 40F05C81 		bne	.L940
 4730 02e0 C5F87042 		str	r4, [r5, #624]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 84


 4731 02e4 2146     		mov	r1, r4
 4732              	.L917:
 4733 02e6 0026     		movs	r6, #0
 4734 02e8 85F8CC68 		strb	r6, [r5, #2252]
 4735 02ec 3948     		ldr	r0, .L941+92
 4736 02ee FFF7FEFF 		bl	_ZN7TMC26604InitEPKhj
 4737 02f2 3246     		mov	r2, r6
 4738 02f4 6720     		movs	r0, #103
 4739 02f6 0121     		movs	r1, #1
 4740 02f8 FFF7FEFF 		bl	pinModeDuet
 4741 02fc 4FF4C873 		mov	r3, #400
 4742              	@ 80 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\cores\arduino/wiring.h" 1
 4743              		L_5527_delayMicroseconds:
 4744 0300 013B     		subs   r3, #1
 4745 0302 7FF4FDAF 		bne    L_5527_delayMicroseconds
 4746              	
 4747              	@ 0 "" 2
 4748              		.thumb
 4749 0306 6720     		movs	r0, #103
 4750 0308 FFF7FEFF 		bl	digitalRead
 4751 030c 0221     		movs	r1, #2
 4752 030e 0446     		mov	r4, r0
 4753 0310 0022     		movs	r2, #0
 4754 0312 6720     		movs	r0, #103
 4755 0314 FFF7FEFF 		bl	pinModeDuet
 4756 0318 4FF4C873 		mov	r3, #400
 4757              	@ 80 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\cores\arduino/wiring.h" 1
 4758              		L_5536_delayMicroseconds:
 4759 031c 013B     		subs   r3, #1
 4760 031e 7FF4FDAF 		bne    L_5536_delayMicroseconds
 4761              	
 4762              	@ 0 "" 2
 4763              		.thumb
 4764 0322 6720     		movs	r0, #103
 4765 0324 FFF7FEFF 		bl	digitalRead
 4766 0328 0028     		cmp	r0, #0
 4767 032a 40F02C81 		bne	.L918
 4768 032e 002C     		cmp	r4, #0
 4769 0330 00F02981 		beq	.L918
 4770 0334 85F8CD08 		strb	r0, [r5, #2253]
 4771              	.L929:
 4772 0338 274A     		ldr	r2, .L941+96
 4773 033a 284B     		ldr	r3, .L941+100
 4774 033c 284F     		ldr	r7, .L941+104
 4775 033e 294E     		ldr	r6, .L941+108
 4776 0340 03CA     		ldmia	r2!, {r0, r1}
 4777 0342 05F5A264 		add	r4, r5, #1296
 4778 0346 05F21452 		addw	r2, r5, #1300
 4779 034a 4FF0000E 		mov	lr, #0
 4780 034e C4F800E0 		str	lr, [r4]	@ float
 4781 0352 1760     		str	r7, [r2]	@ float
 4782 0354 C5F86E05 		str	r0, [r5, #1390]	@ unaligned
 4783 0358 C5F87215 		str	r1, [r5, #1394]	@ unaligned
 4784 035c 03CB     		ldmia	r3!, {r0, r1}
 4785 035e C5F87605 		str	r0, [r5, #1398]	@ unaligned
 4786 0362 C5F87A15 		str	r1, [r5, #1402]	@ unaligned
 4787 0366 03CE     		ldmia	r6!, {r0, r1}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 85


 4788 0368 4FF0140C 		mov	ip, #20
 4789 036c 4FF0370E 		mov	lr, #55
 4790 0370 0027     		movs	r7, #0
 4791 0372 0122     		movs	r2, #1
 4792 0374 3CE0     		b	.L942
 4793              	.L943:
 4794 0376 00BF     		.align	2
 4795              	.L941:
 4796 0378 00000000 		.word	SerialUSB
 4797 037c 00000000 		.word	Serial
 4798 0380 74000000 		.word	.LC13
 4799 0384 84000000 		.word	.LC14
 4800 0388 00000000 		.word	.LANCHOR10
 4801 038c 00000000 		.word	.LANCHOR11
 4802 0390 00000000 		.word	.LANCHOR12
 4803 0394 00000000 		.word	.LANCHOR13
 4804 0398 00000000 		.word	.LANCHOR14
 4805 039c 00000000 		.word	.LANCHOR15
 4806 03a0 00000000 		.word	.LANCHOR16
 4807 03a4 00000000 		.word	.LANCHOR17
 4808 03a8 00000000 		.word	.LANCHOR18
 4809 03ac 00401C46 		.word	1176256512
 4810 03b0 00000000 		.word	.LANCHOR19
 4811 03b4 00000000 		.word	.LANCHOR20
 4812 03b8 000E0E40 		.word	1074662912
 4813 03bc 00100E40 		.word	1074663424
 4814 03c0 00120E40 		.word	1074663936
 4815 03c4 00140E40 		.word	1074664448
 4816 03c8 00000000 		.word	0
 4817 03cc 00000000 		.word	.LANCHOR4
 4818 03d0 00000000 		.word	.LANCHOR5
 4819 03d4 00000000 		.word	.LANCHOR3
 4820 03d8 00000000 		.word	.LANCHOR21
 4821 03dc 00000000 		.word	.LANCHOR22
 4822 03e0 0000FA43 		.word	1140457472
 4823 03e4 00000000 		.word	.LANCHOR6
 4824 03e8 9A99993E 		.word	1050253722
 4825 03ec 00000000 		.word	g_APinDescription
 4826              	.L942:
 4827 03f0 4FF4FA73 		mov	r3, #500
 4828 03f4 A6F10904 		sub	r4, r6, #9
 4829 03f8 C5F80007 		str	r0, [r5, #1792]	@ unaligned
 4830 03fc C5F80417 		str	r1, [r5, #1796]	@ unaligned
 4831 0400 013E     		subs	r6, r6, #1
 4832 0402 C5F818C5 		str	ip, [r5, #1304]
 4833 0406 85F81CE5 		strb	lr, [r5, #1308]
 4834 040a 85F81D75 		strb	r7, [r5, #1309]
 4835 040e C5F80827 		str	r2, [r5, #1800]
 4836 0412 C5F80C37 		str	r3, [r5, #1804]
 4837              	.L921:
 4838 0416 14F8010F 		ldrb	r0, [r4, #1]!	@ zero_extendqisi2
 4839 041a 0121     		movs	r1, #1
 4840 041c FFF7FEFF 		bl	setPullup
 4841 0420 B442     		cmp	r4, r6
 4842 0422 F8D1     		bne	.L921
 4843 0424 DFF890A1 		ldr	r10, .L944+16
 4844 0428 DFED5F8A 		flds	s17, .L944
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 86


 4845 042c 9FED5F8A 		flds	s16, .L944+4
 4846 0430 DFF888B1 		ldr	fp, .L944+20
 4847 0434 05F52C74 		add	r4, r5, #688
 4848 0438 05F5B069 		add	r9, r5, #1408
 4849 043c A846     		mov	r8, r5
 4850 043e 0027     		movs	r7, #0
 4851              	.L928:
 4852 0440 98F87605 		ldrb	r0, [r8, #1398]	@ zero_extendqisi2
 4853 0444 FF28     		cmp	r0, #255
 4854 0446 03D0     		beq	.L922
 4855 0448 0421     		movs	r1, #4
 4856 044a 0022     		movs	r2, #0
 4857 044c FFF7FEFF 		bl	pinModeDuet
 4858              	.L922:
 4859 0450 98F86E05 		ldrb	r0, [r8, #1390]	@ zero_extendqisi2
 4860 0454 FFF7FEFF 		bl	_Z15PinToAdcChannelm
 4861 0458 0022     		movs	r2, #0
 4862 045a 0646     		mov	r6, r0
 4863 045c 0521     		movs	r1, #5
 4864 045e 98F86E05 		ldrb	r0, [r8, #1390]	@ zero_extendqisi2
 4865 0462 FFF7FEFF 		bl	pinModeDuet
 4866 0466 3046     		mov	r0, r6
 4867 0468 88F88C68 		strb	r6, [r8, #2188]
 4868 046c 0121     		movs	r1, #1
 4869 046e FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 4870 0472 2846     		mov	r0, r5
 4871 0474 3946     		mov	r1, r7
 4872 0476 3A46     		mov	r2, r7
 4873 0478 FFF7FEFF 		bl	_ZN8Platform19SetThermistorNumberEjj
 4874 047c 002F     		cmp	r7, #0
 4875 047e CDF800B0 		str	fp, [sp]	@ float
 4876 0482 0CBF     		ite	eq
 4877 0484 18EE102A 		fmrseq	r2, s16
 4878 0488 18EE902A 		fmrsne	r2, s17
 4879 048c 4846     		mov	r0, r9
 4880 048e 4849     		ldr	r1, .L944+8
 4881 0490 0023     		movs	r3, #0
 4882 0492 FFF7FEFF 		bl	_ZN10Thermistor13SetParametersEffff
 4883              	@ 470 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 4884 0496 EFF31080 		MRS r0, primask
 4885              	@ 0 "" 2
 4886              	@ 330 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 4887 049a 72B6     		cpsid i
 4888              	@ 0 "" 2
 4889              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 4890 049c BFF35F8F 		dmb
 4891              	@ 0 "" 2
 4892              		.thumb
 4893 04a0 0021     		movs	r1, #0
 4894 04a2 8AF80010 		strb	r1, [r10]
 4895 04a6 0B46     		mov	r3, r1
 4896 04a8 6164     		str	r1, [r4, #68]
 4897 04aa 0A46     		mov	r2, r1
 4898 04ac 2164     		str	r1, [r4, #64]
 4899 04ae 84F84810 		strb	r1, [r4, #72]
 4900              	.L925:
 4901 04b2 24F81320 		strh	r2, [r4, r3, lsl #1]	@ movhi
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 87


 4902 04b6 0133     		adds	r3, r3, #1
 4903 04b8 202B     		cmp	r3, #32
 4904 04ba FAD1     		bne	.L925
 4905 04bc 28B9     		cbnz	r0, .L926
 4906 04be 0123     		movs	r3, #1
 4907 04c0 8AF80030 		strb	r3, [r10]
 4908              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 4909 04c4 BFF35F8F 		dmb
 4910              	@ 0 "" 2
 4911              	@ 319 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 4912 04c8 62B6     		cpsie i
 4913              	@ 0 "" 2
 4914              		.thumb
 4915              	.L926:
 4916 04ca 0137     		adds	r7, r7, #1
 4917 04cc 082F     		cmp	r7, #8
 4918 04ce 08F10108 		add	r8, r8, #1
 4919 04d2 04F14C04 		add	r4, r4, #76
 4920 04d6 09F11C09 		add	r9, r9, #28
 4921 04da B1D1     		bne	.L928
 4922 04dc 2846     		mov	r0, r5
 4923 04de FFF7FEFF 		bl	_ZN8Platform8InitFansEv
 4924 04e2 05F6A402 		addw	r2, r5, #2212
 4925 04e6 05F50A63 		add	r3, r5, #2208
 4926 04ea 3249     		ldr	r1, .L944+12
 4927 04ec 4FF07C50 		mov	r0, #1056964608
 4928 04f0 1060     		str	r0, [r2]	@ float
 4929 04f2 1960     		str	r1, [r3]	@ float
 4930 04f4 FFF7FEFF 		bl	_Z24GetTemperatureAdcChannelv
 4931 04f8 0121     		movs	r1, #1
 4932 04fa 85F8A808 		strb	r0, [r5, #2216]
 4933 04fe FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 4934 0502 05F6B403 		addw	r3, r5, #2228
 4935 0506 0024     		movs	r4, #0
 4936 0508 40F6FF71 		movw	r1, #4095
 4937 050c 5022     		movs	r2, #80
 4938 050e 0026     		movs	r6, #0
 4939 0510 A5F8AE18 		strh	r1, [r5, #2222]	@ movhi
 4940 0514 A5F8B028 		strh	r2, [r5, #2224]	@ movhi
 4941 0518 A5F8AC48 		strh	r4, [r5, #2220]	@ movhi
 4942 051c A5F8AA48 		strh	r4, [r5, #2218]	@ movhi
 4943 0520 2420     		movs	r0, #36
 4944 0522 1E60     		str	r6, [r3]	@ float
 4945 0524 FFF7FEFF 		bl	_Z15PinToAdcChannelm
 4946 0528 2246     		mov	r2, r4
 4947 052a 85F8B808 		strb	r0, [r5, #2232]
 4948 052e 0521     		movs	r1, #5
 4949 0530 2420     		movs	r0, #36
 4950 0532 FFF7FEFF 		bl	pinModeDuet
 4951 0536 95F9B808 		ldrsb	r0, [r5, #2232]
 4952 053a 0121     		movs	r1, #1
 4953 053c FFF7FEFF 		bl	_Z21AnalogInEnableChannel19AnalogChannelNumberb
 4954 0540 42F20F73 		movw	r3, #9999
 4955 0544 A5F8BC48 		strh	r4, [r5, #2236]	@ movhi
 4956 0548 4FF0FF31 		mov	r1, #-1
 4957 054c A5F8BA48 		strh	r4, [r5, #2234]	@ movhi
 4958 0550 6822     		movs	r2, #104
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 88


 4959 0552 A5F8BE38 		strh	r3, [r5, #2238]	@ movhi
 4960 0556 C5F8C048 		str	r4, [r5, #2240]
 4961 055a 05F6D800 		addw	r0, r5, #2264
 4962 055e C5F8C448 		str	r4, [r5, #2244]
 4963 0562 FFF7FEFF 		bl	memset
 4964 0566 2846     		mov	r0, r5
 4965 0568 FFF7FEFF 		bl	_ZN8Platform4TimeEv
 4966 056c 0346     		mov	r3, r0	@ float
 4967 056e 2846     		mov	r0, r5
 4968 0570 C5F8B030 		str	r3, [r5, #176]	@ float
 4969 0574 C5F8B430 		str	r3, [r5, #180]	@ float
 4970 0578 05B0     		add	sp, sp, #20
 4971              		@ sp needed
 4972 057a BDEC028B 		fldmfdd	sp!, {d8}
 4973 057e BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 4974 0582 FFF7FEBF 		b	_ZN8Platform20InitialiseInterruptsEv
 4975              	.L918:
 4976 0586 0123     		movs	r3, #1
 4977 0588 0021     		movs	r1, #0
 4978 058a 85F8CD38 		strb	r3, [r5, #2253]
 4979 058e 0A46     		mov	r2, r1
 4980 0590 6720     		movs	r0, #103
 4981 0592 FFF7FEFF 		bl	pinModeDuet
 4982 0596 CFE6     		b	.L929
 4983              	.L940:
 4984 0598 0521     		movs	r1, #5
 4985 059a C5F87012 		str	r1, [r5, #624]
 4986 059e A2E6     		b	.L917
 4987              	.L915:
 4988 05a0 0721     		movs	r1, #7
 4989 05a2 C5F87012 		str	r1, [r5, #624]
 4990 05a6 9EE6     		b	.L917
 4991              	.L945:
 4992              		.align	2
 4993              	.L944:
 4994 05a8 00208945 		.word	1166614528
 4995 05ac 00407945 		.word	1165574144
 4996 05b0 0050C347 		.word	1203982336
 4997 05b4 0000E03F 		.word	1071644672
 4998 05b8 00000000 		.word	g_interrupt_enabled
 4999 05bc 00E09245 		.word	1167253504
 5000              		.size	_ZN8Platform4InitEv, .-_ZN8Platform4InitEv
 5001              		.section	.text._ZN8Platform4ExitEv,"ax",%progbits
 5002              		.align	2
 5003              		.global	_ZN8Platform4ExitEv
 5004              		.thumb
 5005              		.thumb_func
 5006              		.type	_ZN8Platform4ExitEv, %function
 5007              	_ZN8Platform4ExitEv:
 5008              		@ args = 0, pretend = 0, frame = 0
 5009              		@ frame_needed = 0, uses_anonymous_args = 0
 5010 0000 70B5     		push	{r4, r5, r6, lr}
 5011 0002 0646     		mov	r6, r0
 5012 0004 0446     		mov	r4, r0
 5013 0006 0025     		movs	r5, #0
 5014 0008 01E0     		b	.L962
 5015              	.L952:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 89


 5016 000a FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 5017              	.L962:
 5018 000e D4F84008 		ldr	r0, [r4, #2112]
 5019 0012 90F82D30 		ldrb	r3, [r0, #45]	@ zero_extendqisi2
 5020 0016 002B     		cmp	r3, #0
 5021 0018 F7D1     		bne	.L952
 5022 001a 0135     		adds	r5, r5, #1
 5023 001c 0A2D     		cmp	r5, #10
 5024 001e 04F10404 		add	r4, r4, #4
 5025 0022 F4D1     		bne	.L962
 5026 0024 D6F83408 		ldr	r0, [r6, #2100]
 5027 0028 28B1     		cbz	r0, .L953
 5028              	.L954:
 5029 002a FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 5030 002e C6F83408 		str	r0, [r6, #2100]
 5031 0032 0028     		cmp	r0, #0
 5032 0034 F9D1     		bne	.L954
 5033              	.L953:
 5034 0036 0023     		movs	r3, #0
 5035 0038 86F8C030 		strb	r3, [r6, #192]
 5036 003c 0348     		ldr	r0, .L963
 5037 003e FFF7FEFF 		bl	_ZN9SerialCDC3endEv
 5038 0042 0348     		ldr	r0, .L963+4
 5039 0044 BDE87040 		pop	{r4, r5, r6, lr}
 5040 0048 FFF7FEBF 		b	_ZN9UARTClass3endEv
 5041              	.L964:
 5042              		.align	2
 5043              	.L963:
 5044 004c 00000000 		.word	SerialUSB
 5045 0050 00000000 		.word	Serial
 5046              		.size	_ZN8Platform4ExitEv, .-_ZN8Platform4ExitEv
 5047              		.section	.text._ZN8Platform12ResetChannelEj,"ax",%progbits
 5048              		.align	2
 5049              		.global	_ZN8Platform12ResetChannelEj
 5050              		.thumb
 5051              		.thumb_func
 5052              		.type	_ZN8Platform12ResetChannelEj, %function
 5053              	_ZN8Platform12ResetChannelEj:
 5054              		@ args = 0, pretend = 0, frame = 0
 5055              		@ frame_needed = 0, uses_anonymous_args = 0
 5056 0000 10B5     		push	{r4, lr}
 5057 0002 0446     		mov	r4, r0
 5058 0004 61B1     		cbz	r1, .L967
 5059 0006 0129     		cmp	r1, #1
 5060 0008 09D1     		bne	.L970
 5061 000a 0A48     		ldr	r0, .L971
 5062 000c FFF7FEFF 		bl	_ZN9UARTClass3endEv
 5063 0010 D4F81C18 		ldr	r1, [r4, #2076]
 5064 0014 0748     		ldr	r0, .L971
 5065 0016 BDE81040 		pop	{r4, lr}
 5066 001a FFF7FEBF 		b	_ZN9UARTClass5beginEm
 5067              	.L970:
 5068 001e 10BD     		pop	{r4, pc}
 5069              	.L967:
 5070 0020 0548     		ldr	r0, .L971+4
 5071 0022 FFF7FEFF 		bl	_ZN9SerialCDC3endEv
 5072 0026 D4F81818 		ldr	r1, [r4, #2072]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 90


 5073 002a 0348     		ldr	r0, .L971+4
 5074 002c BDE81040 		pop	{r4, lr}
 5075 0030 FFF7FEBF 		b	_ZN9SerialCDC5beginEm
 5076              	.L972:
 5077              		.align	2
 5078              	.L971:
 5079 0034 00000000 		.word	Serial
 5080 0038 00000000 		.word	SerialUSB
 5081              		.size	_ZN8Platform12ResetChannelEj, .-_ZN8Platform12ResetChannelEj
 5082              		.section	.text._ZN8Platform11SetBaudRateEjm,"ax",%progbits
 5083              		.align	2
 5084              		.global	_ZN8Platform11SetBaudRateEjm
 5085              		.thumb
 5086              		.thumb_func
 5087              		.type	_ZN8Platform11SetBaudRateEjm, %function
 5088              	_ZN8Platform11SetBaudRateEjm:
 5089              		@ args = 0, pretend = 0, frame = 0
 5090              		@ frame_needed = 0, uses_anonymous_args = 0
 5091              		@ link register save eliminated.
 5092 0000 0129     		cmp	r1, #1
 5093 0002 10B4     		push	{r4}
 5094 0004 02D9     		bls	.L975
 5095 0006 5DF8044B 		ldr	r4, [sp], #4
 5096 000a 7047     		bx	lr
 5097              	.L975:
 5098 000c 01F20623 		addw	r3, r1, #518
 5099 0010 5DF8044B 		ldr	r4, [sp], #4
 5100 0014 40F82320 		str	r2, [r0, r3, lsl #2]
 5101 0018 FFF7FEBF 		b	_ZN8Platform12ResetChannelEj
 5102              		.size	_ZN8Platform11SetBaudRateEjm, .-_ZN8Platform11SetBaudRateEjm
 5103              		.section	.text._ZN8Platform18SetCommsPropertiesEjm,"ax",%progbits
 5104              		.align	2
 5105              		.global	_ZN8Platform18SetCommsPropertiesEjm
 5106              		.thumb
 5107              		.thumb_func
 5108              		.type	_ZN8Platform18SetCommsPropertiesEjm, %function
 5109              	_ZN8Platform18SetCommsPropertiesEjm:
 5110              		@ args = 0, pretend = 0, frame = 0
 5111              		@ frame_needed = 0, uses_anonymous_args = 0
 5112              		@ link register save eliminated.
 5113 0000 0129     		cmp	r1, #1
 5114 0002 10B4     		push	{r4}
 5115 0004 0B46     		mov	r3, r1
 5116 0006 02D9     		bls	.L978
 5117 0008 5DF8044B 		ldr	r4, [sp], #4
 5118 000c 7047     		bx	lr
 5119              	.L978:
 5120 000e 0344     		add	r3, r3, r0
 5121 0010 83F82028 		strb	r2, [r3, #2080]
 5122 0014 5DF8044B 		ldr	r4, [sp], #4
 5123 0018 FFF7FEBF 		b	_ZN8Platform12ResetChannelEj
 5124              		.size	_ZN8Platform18SetCommsPropertiesEjm, .-_ZN8Platform18SetCommsPropertiesEjm
 5125              		.section	.text._ZN8Platform13FlushMessagesEv,"ax",%progbits
 5126              		.align	2
 5127              		.global	_ZN8Platform13FlushMessagesEv
 5128              		.thumb
 5129              		.thumb_func
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 91


 5130              		.type	_ZN8Platform13FlushMessagesEv, %function
 5131              	_ZN8Platform13FlushMessagesEv:
 5132              		@ args = 0, pretend = 0, frame = 0
 5133              		@ frame_needed = 0, uses_anonymous_args = 0
 5134 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 5135 0004 0446     		mov	r4, r0
 5136 0006 D0F82408 		ldr	r0, [r0, #2084]
 5137 000a FFF7FEFF 		bl	_ZNK11OutputStack12GetFirstItemEv
 5138 000e 0546     		mov	r5, r0
 5139 0010 88B1     		cbz	r0, .L981
 5140 0012 494F     		ldr	r7, .L1004
 5141 0014 3846     		mov	r0, r7
 5142 0016 FFF7FEFF 		bl	_ZNK9UARTClass8canWriteEv
 5143 001a D5F80C31 		ldr	r3, [r5, #268]
 5144 001e D5F81061 		ldr	r6, [r5, #272]
 5145 0022 C6EB0308 		rsb	r8, r6, r3
 5146 0026 4045     		cmp	r0, r8
 5147 0028 38BF     		it	cc
 5148 002a 8046     		movcc	r8, r0
 5149 002c B8F1000F 		cmp	r8, #0
 5150 0030 51D1     		bne	.L1000
 5151              	.L982:
 5152 0032 9E42     		cmp	r6, r3
 5153 0034 76D0     		beq	.L1001
 5154              	.L981:
 5155 0036 D4F82808 		ldr	r0, [r4, #2088]
 5156 003a FFF7FEFF 		bl	_ZNK11OutputStack12GetFirstItemEv
 5157 003e 08B1     		cbz	r0, .L984
 5158 0040 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 5159              	.L984:
 5160 0044 D4F82C08 		ldr	r0, [r4, #2092]
 5161 0048 FFF7FEFF 		bl	_ZNK11OutputStack12GetFirstItemEv
 5162 004c 0546     		mov	r5, r0
 5163 004e E8B1     		cbz	r0, .L986
 5164 0050 3A4E     		ldr	r6, .L1004+4
 5165 0052 3046     		mov	r0, r6
 5166 0054 FFF7FEFF 		bl	_ZNK9SerialCDCcvbEv
 5167 0058 0746     		mov	r7, r0
 5168 005a F8B1     		cbz	r0, .L1002
 5169 005c 3046     		mov	r0, r6
 5170 005e FFF7FEFF 		bl	_ZNK9SerialCDC8canWriteEv
 5171 0062 D5F80C31 		ldr	r3, [r5, #268]
 5172 0066 D5F81071 		ldr	r7, [r5, #272]
 5173 006a C7EB0308 		rsb	r8, r7, r3
 5174 006e 4045     		cmp	r0, r8
 5175 0070 38BF     		it	cc
 5176 0072 8046     		movcc	r8, r0
 5177 0074 B8F1000F 		cmp	r8, #0
 5178 0078 45D1     		bne	.L1003
 5179              	.L988:
 5180 007a 9F42     		cmp	r7, r3
 5181 007c 3AD0     		beq	.L989
 5182 007e FFF7FEFF 		bl	millis
 5183 0082 AB68     		ldr	r3, [r5, #8]
 5184 0084 C01A     		subs	r0, r0, r3
 5185 0086 B0F57A7F 		cmp	r0, #1000
 5186 008a 33D8     		bhi	.L989
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 92


 5187              	.L986:
 5188 008c D4F82408 		ldr	r0, [r4, #2084]
 5189 0090 FFF7FEFF 		bl	_ZNK11OutputStack12GetFirstItemEv
 5190 0094 80B1     		cbz	r0, .L991
 5191              	.L993:
 5192 0096 0120     		movs	r0, #1
 5193 0098 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 5194              	.L1002:
 5195 009c 2846     		mov	r0, r5
 5196 009e FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllEPS_
 5197 00a2 D4F82C08 		ldr	r0, [r4, #2092]
 5198 00a6 3946     		mov	r1, r7
 5199 00a8 FFF7FEFF 		bl	_ZN11OutputStack12SetFirstItemEP12OutputBuffer
 5200 00ac D4F82408 		ldr	r0, [r4, #2084]
 5201 00b0 FFF7FEFF 		bl	_ZNK11OutputStack12GetFirstItemEv
 5202 00b4 0028     		cmp	r0, #0
 5203 00b6 EED1     		bne	.L993
 5204              	.L991:
 5205 00b8 D4F82808 		ldr	r0, [r4, #2088]
 5206 00bc FFF7FEFF 		bl	_ZNK11OutputStack12GetFirstItemEv
 5207 00c0 0028     		cmp	r0, #0
 5208 00c2 E8D1     		bne	.L993
 5209 00c4 D4F82C08 		ldr	r0, [r4, #2092]
 5210 00c8 FFF7FEFF 		bl	_ZNK11OutputStack12GetFirstItemEv
 5211 00cc 0030     		adds	r0, r0, #0
 5212 00ce 18BF     		it	ne
 5213 00d0 0120     		movne	r0, #1
 5214 00d2 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 5215              	.L1000:
 5216 00d6 4146     		mov	r1, r8
 5217 00d8 2846     		mov	r0, r5
 5218 00da FFF7FEFF 		bl	_ZN12OutputBuffer4ReadEj
 5219 00de 3B68     		ldr	r3, [r7]
 5220 00e0 0146     		mov	r1, r0
 5221 00e2 DB68     		ldr	r3, [r3, #12]
 5222 00e4 4246     		mov	r2, r8
 5223 00e6 3846     		mov	r0, r7
 5224 00e8 9847     		blx	r3
 5225 00ea D5F80C31 		ldr	r3, [r5, #268]
 5226 00ee D5F81061 		ldr	r6, [r5, #272]
 5227 00f2 9EE7     		b	.L982
 5228              	.L989:
 5229 00f4 2846     		mov	r0, r5
 5230 00f6 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 5231 00fa 0146     		mov	r1, r0
 5232 00fc D4F82C08 		ldr	r0, [r4, #2092]
 5233 0100 FFF7FEFF 		bl	_ZN11OutputStack12SetFirstItemEP12OutputBuffer
 5234 0104 C2E7     		b	.L986
 5235              	.L1003:
 5236 0106 4146     		mov	r1, r8
 5237 0108 2846     		mov	r0, r5
 5238 010a FFF7FEFF 		bl	_ZN12OutputBuffer4ReadEj
 5239 010e 3368     		ldr	r3, [r6]
 5240 0110 0146     		mov	r1, r0
 5241 0112 DB68     		ldr	r3, [r3, #12]
 5242 0114 4246     		mov	r2, r8
 5243 0116 3046     		mov	r0, r6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 93


 5244 0118 9847     		blx	r3
 5245 011a D5F80C31 		ldr	r3, [r5, #268]
 5246 011e D5F81071 		ldr	r7, [r5, #272]
 5247 0122 AAE7     		b	.L988
 5248              	.L1001:
 5249 0124 2846     		mov	r0, r5
 5250 0126 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 5251 012a 0146     		mov	r1, r0
 5252 012c D4F82408 		ldr	r0, [r4, #2084]
 5253 0130 FFF7FEFF 		bl	_ZN11OutputStack12SetFirstItemEP12OutputBuffer
 5254 0134 7FE7     		b	.L981
 5255              	.L1005:
 5256 0136 00BF     		.align	2
 5257              	.L1004:
 5258 0138 00000000 		.word	Serial
 5259 013c 00000000 		.word	SerialUSB
 5260              		.size	_ZN8Platform13FlushMessagesEv, .-_ZN8Platform13FlushMessagesEv
 5261              		.section	.text._ZN8Platform13SoftwareResetEtPKm,"ax",%progbits
 5262              		.align	2
 5263              		.global	_ZN8Platform13SoftwareResetEtPKm
 5264              		.thumb
 5265              		.thumb_func
 5266              		.type	_ZN8Platform13SoftwareResetEtPKm, %function
 5267              	_ZN8Platform13SoftwareResetEtPKm:
 5268              		@ args = 0, pretend = 0, frame = 504
 5269              		@ frame_needed = 0, uses_anonymous_args = 0
 5270 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 5271 0004 0C46     		mov	r4, r1
 5272 0006 FEB0     		sub	sp, sp, #504
 5273 0008 8046     		mov	r8, r0
 5274 000a 3B48     		ldr	r0, .L1042
 5275 000c 1746     		mov	r7, r2
 5276 000e FFF7FEFF 		bl	wdt_restart
 5277 0012 102C     		cmp	r4, #16
 5278 0014 6DD0     		beq	.L1038
 5279 0016 002C     		cmp	r4, #0
 5280 0018 56D1     		bne	.L1037
 5281 001a 384D     		ldr	r5, .L1042+4
 5282              	.L1009:
 5283 001c 95F83230 		ldrb	r3, [r5, #50]	@ zero_extendqisi2
 5284 0020 01AE     		add	r6, sp, #4
 5285 0022 3046     		mov	r0, r6
 5286 0024 7D21     		movs	r1, #125
 5287 0026 1C43     		orrs	r4, r4, r3
 5288 0028 FFF7FEFF 		bl	flash_read_user_signature
 5289 002c 0028     		cmp	r0, #0
 5290 002e 36D0     		beq	.L1039
 5291              	.L1012:
 5292 0030 FFF7FEFF 		bl	flash_erase_user_signature
 5293 0034 3046     		mov	r0, r6
 5294 0036 FF21     		movs	r1, #255
 5295 0038 4FF4FA72 		mov	r2, #500
 5296 003c FFF7FEFF 		bl	memset
 5297 0040 0023     		movs	r3, #0
 5298              	.L1020:
 5299 0042 4FF0640E 		mov	lr, #100
 5300 0046 0EFB03FE 		mul	lr, lr, r3
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 94


 5301 004a 06EB0E05 		add	r5, r6, lr
 5302 004e 0021     		movs	r1, #0
 5303 0050 47F6075C 		movw	ip, #32007
 5304 0054 2B1D     		adds	r3, r5, #4
 5305 0056 0A46     		mov	r2, r1
 5306 0058 26F80EC0 		strh	ip, [r6, lr]	@ movhi
 5307 005c 4046     		mov	r0, r8
 5308 005e 6C80     		strh	r4, [r5, #2]	@ movhi
 5309 0060 FFF7FEFF 		bl	_ZNK8Platform13GetStackUsageEPmS0_S0_
 5310 0064 264B     		ldr	r3, .L1042+8
 5311 0066 DA6A     		ldr	r2, [r3, #44]
 5312 0068 AA60     		str	r2, [r5, #8]
 5313 006a 9A6A     		ldr	r2, [r3, #40]
 5314 006c EA60     		str	r2, [r5, #12]
 5315 006e 5A68     		ldr	r2, [r3, #4]
 5316 0070 2A61     		str	r2, [r5, #16]
 5317 0072 9B6B     		ldr	r3, [r3, #56]
 5318 0074 6B61     		str	r3, [r5, #20]
 5319 0076 3FB1     		cbz	r7, .L1017
 5320 0078 AF61     		str	r7, [r5, #24]
 5321 007a 0023     		movs	r3, #0
 5322              	.L1018:
 5323 007c E918     		adds	r1, r5, r3
 5324 007e FA58     		ldr	r2, [r7, r3]
 5325 0080 CA61     		str	r2, [r1, #28]
 5326 0082 0433     		adds	r3, r3, #4
 5327 0084 482B     		cmp	r3, #72
 5328 0086 F9D1     		bne	.L1018
 5329              	.L1017:
 5330 0088 3046     		mov	r0, r6
 5331 008a 7D21     		movs	r1, #125
 5332 008c FFF7FEFF 		bl	flash_write_user_signature
 5333              	.L1008:
 5334 0090 1C4B     		ldr	r3, .L1042+12
 5335 0092 4FF02542 		mov	r2, #-1526726656
 5336 0096 9A60     		str	r2, [r3, #8]
 5337 0098 FFF7FEFF 		bl	Reset
 5338              	.L1019:
 5339 009c FEE7     		b	.L1019
 5340              	.L1039:
 5341 009e 64AA     		add	r2, sp, #400
 5342 00a0 0523     		movs	r3, #5
 5343              	.L1021:
 5344 00a2 581E     		subs	r0, r3, #1
 5345 00a4 02F1640E 		add	lr, r2, #100
 5346 00a8 1146     		mov	r1, r2
 5347 00aa 01E0     		b	.L1015
 5348              	.L1041:
 5349 00ac 7145     		cmp	r1, lr
 5350 00ae 06D0     		beq	.L1040
 5351              	.L1015:
 5352 00b0 51F8045F 		ldr	r5, [r1, #4]!
 5353 00b4 0135     		adds	r5, r5, #1
 5354 00b6 F9D0     		beq	.L1041
 5355 00b8 052B     		cmp	r3, #5
 5356 00ba C2D1     		bne	.L1020
 5357 00bc B8E7     		b	.L1012
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 95


 5358              	.L1040:
 5359 00be 643A     		subs	r2, r2, #100
 5360 00c0 0346     		mov	r3, r0
 5361 00c2 0028     		cmp	r0, #0
 5362 00c4 BDD0     		beq	.L1020
 5363 00c6 ECE7     		b	.L1021
 5364              	.L1037:
 5365 00c8 0F48     		ldr	r0, .L1042+16
 5366 00ca FFF7FEFF 		bl	_ZNK9SerialCDC8canWriteEv
 5367 00ce 08B9     		cbnz	r0, .L1010
 5368 00d0 44F48044 		orr	r4, r4, #16384
 5369              	.L1010:
 5370 00d4 094D     		ldr	r5, .L1042+4
 5371 00d6 6868     		ldr	r0, [r5, #4]
 5372 00d8 FFF7FEFF 		bl	_ZNK7Network6InLwipEv
 5373 00dc 08B1     		cbz	r0, .L1011
 5374 00de 44F40054 		orr	r4, r4, #8192
 5375              	.L1011:
 5376 00e2 0A48     		ldr	r0, .L1042+20
 5377 00e4 FFF7FEFF 		bl	_ZNK9UARTClass8canWriteEv
 5378 00e8 0028     		cmp	r0, #0
 5379 00ea 97D1     		bne	.L1009
 5380 00ec 44F40064 		orr	r4, r4, #2048
 5381 00f0 94E7     		b	.L1009
 5382              	.L1038:
 5383 00f2 FFF7FEFF 		bl	EraseAndReset
 5384 00f6 CBE7     		b	.L1008
 5385              	.L1043:
 5386              		.align	2
 5387              	.L1042:
 5388 00f8 50180E40 		.word	1074665552
 5389 00fc 00000000 		.word	reprap
 5390 0100 00ED00E0 		.word	-536810240
 5391 0104 00180E40 		.word	1074665472
 5392 0108 00000000 		.word	SerialUSB
 5393 010c 00000000 		.word	Serial
 5394              		.size	_ZN8Platform13SoftwareResetEtPKm, .-_ZN8Platform13SoftwareResetEtPKm
 5395              		.section	.text.prvGetRegistersFromStack,"ax",%progbits
 5396              		.align	2
 5397              		.global	prvGetRegistersFromStack
 5398              		.thumb
 5399              		.thumb_func
 5400              		.type	prvGetRegistersFromStack, %function
 5401              	prvGetRegistersFromStack:
 5402              		@ Volatile: function does not return.
 5403              		@ args = 0, pretend = 0, frame = 0
 5404              		@ frame_needed = 0, uses_anonymous_args = 0
 5405 0000 08B5     		push	{r3, lr}
 5406 0002 034B     		ldr	r3, .L1045
 5407 0004 00F11402 		add	r2, r0, #20
 5408 0008 3021     		movs	r1, #48
 5409 000a 1868     		ldr	r0, [r3]
 5410 000c FFF7FEFF 		bl	_ZN8Platform13SoftwareResetEtPKm
 5411              	.L1046:
 5412              		.align	2
 5413              	.L1045:
 5414 0010 00000000 		.word	reprap
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 96


 5415              		.size	prvGetRegistersFromStack, .-prvGetRegistersFromStack
 5416              		.section	.text.NMI_Handler,"ax",%progbits
 5417              		.align	2
 5418              		.global	NMI_Handler
 5419              		.thumb
 5420              		.thumb_func
 5421              		.type	NMI_Handler, %function
 5422              	NMI_Handler:
 5423              		@ Volatile: function does not return.
 5424              		@ args = 0, pretend = 0, frame = 0
 5425              		@ frame_needed = 0, uses_anonymous_args = 0
 5426 0000 08B5     		push	{r3, lr}
 5427 0002 034B     		ldr	r3, .L1048
 5428 0004 2021     		movs	r1, #32
 5429 0006 1868     		ldr	r0, [r3]
 5430 0008 0022     		movs	r2, #0
 5431 000a FFF7FEFF 		bl	_ZN8Platform13SoftwareResetEtPKm
 5432              	.L1049:
 5433 000e 00BF     		.align	2
 5434              	.L1048:
 5435 0010 00000000 		.word	reprap
 5436              		.size	NMI_Handler, .-NMI_Handler
 5437              		.section	.text.SVC_Handler,"ax",%progbits
 5438              		.align	2
 5439              		.global	SVC_Handler
 5440              		.thumb
 5441              		.thumb_func
 5442              		.type	SVC_Handler, %function
 5443              	SVC_Handler:
 5444              		@ Volatile: function does not return.
 5445              		@ args = 0, pretend = 0, frame = 0
 5446              		@ frame_needed = 0, uses_anonymous_args = 0
 5447 0000 08B5     		push	{r3, lr}
 5448 0002 034B     		ldr	r3, .L1051
 5449 0004 7021     		movs	r1, #112
 5450 0006 1868     		ldr	r0, [r3]
 5451 0008 0022     		movs	r2, #0
 5452 000a FFF7FEFF 		bl	_ZN8Platform13SoftwareResetEtPKm
 5453              	.L1052:
 5454 000e 00BF     		.align	2
 5455              	.L1051:
 5456 0010 00000000 		.word	reprap
 5457              		.size	SVC_Handler, .-SVC_Handler
 5458              		.section	.text.DebugMon_Handler,"ax",%progbits
 5459              		.align	2
 5460              		.global	DebugMon_Handler
 5461              		.thumb
 5462              		.thumb_func
 5463              		.type	DebugMon_Handler, %function
 5464              	DebugMon_Handler:
 5465              		@ Volatile: function does not return.
 5466              		@ args = 0, pretend = 0, frame = 0
 5467              		@ frame_needed = 0, uses_anonymous_args = 0
 5468 0000 08B5     		push	{r3, lr}
 5469 0002 034B     		ldr	r3, .L1054
 5470 0004 7021     		movs	r1, #112
 5471 0006 1868     		ldr	r0, [r3]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 97


 5472 0008 0022     		movs	r2, #0
 5473 000a FFF7FEFF 		bl	_ZN8Platform13SoftwareResetEtPKm
 5474              	.L1055:
 5475 000e 00BF     		.align	2
 5476              	.L1054:
 5477 0010 00000000 		.word	reprap
 5478              		.size	DebugMon_Handler, .-DebugMon_Handler
 5479              		.section	.text.PendSV_Handler,"ax",%progbits
 5480              		.align	2
 5481              		.global	PendSV_Handler
 5482              		.thumb
 5483              		.thumb_func
 5484              		.type	PendSV_Handler, %function
 5485              	PendSV_Handler:
 5486              		@ Volatile: function does not return.
 5487              		@ args = 0, pretend = 0, frame = 0
 5488              		@ frame_needed = 0, uses_anonymous_args = 0
 5489 0000 08B5     		push	{r3, lr}
 5490 0002 034B     		ldr	r3, .L1057
 5491 0004 7021     		movs	r1, #112
 5492 0006 1868     		ldr	r0, [r3]
 5493 0008 0022     		movs	r2, #0
 5494 000a FFF7FEFF 		bl	_ZN8Platform13SoftwareResetEtPKm
 5495              	.L1058:
 5496 000e 00BF     		.align	2
 5497              	.L1057:
 5498 0010 00000000 		.word	reprap
 5499              		.size	PendSV_Handler, .-PendSV_Handler
 5500              		.section	.text._ZN8Platform7MessageE11MessageTypePKc,"ax",%progbits
 5501              		.align	2
 5502              		.global	_ZN8Platform7MessageE11MessageTypePKc
 5503              		.thumb
 5504              		.thumb_func
 5505              		.type	_ZN8Platform7MessageE11MessageTypePKc, %function
 5506              	_ZN8Platform7MessageE11MessageTypePKc:
 5507              		@ args = 0, pretend = 0, frame = 8
 5508              		@ frame_needed = 0, uses_anonymous_args = 0
 5509 0000 30B5     		push	{r4, r5, lr}
 5510 0002 0546     		mov	r5, r0
 5511 0004 83B0     		sub	sp, sp, #12
 5512 0006 1446     		mov	r4, r2
 5513 0008 0729     		cmp	r1, #7
 5514 000a 48D8     		bhi	.L1060
 5515 000c DFE801F0 		tbb	[pc, r1]
 5516              	.L1062:
 5517 0010 1C       		.byte	(.L1061-.L1062)/2
 5518 0011 11       		.byte	(.L1059-.L1062)/2
 5519 0012 21       		.byte	(.L1064-.L1062)/2
 5520 0013 04       		.byte	(.L1065-.L1062)/2
 5521 0014 39       		.byte	(.L1066-.L1062)/2
 5522 0015 40       		.byte	(.L1067-.L1062)/2
 5523 0016 47       		.byte	(.L1060-.L1062)/2
 5524 0017 13       		.byte	(.L1068-.L1062)/2
 5525              		.align	1
 5526              	.L1065:
 5527 0018 42B1     		cbz	r2, .L1069
 5528 001a 1046     		mov	r0, r2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 98


 5529 001c FFF7FEFF 		bl	strlen
 5530 0020 0246     		mov	r2, r0
 5531 0022 2948     		ldr	r0, .L1080
 5532 0024 0568     		ldr	r5, [r0]
 5533 0026 2146     		mov	r1, r4
 5534 0028 EC68     		ldr	r4, [r5, #12]
 5535 002a A047     		blx	r4
 5536              	.L1069:
 5537 002c 2648     		ldr	r0, .L1080
 5538 002e FFF7FEFF 		bl	_ZN9SerialCDC5flushEv
 5539              	.L1059:
 5540 0032 03B0     		add	sp, sp, #12
 5541              		@ sp needed
 5542 0034 30BD     		pop	{r4, r5, pc}
 5543              	.L1068:
 5544 0036 0221     		movs	r1, #2
 5545 0038 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5546 003c 2846     		mov	r0, r5
 5547 003e 2146     		mov	r1, r4
 5548 0040 FFF7FEFF 		bl	_ZN8Platform14SendAuxMessageEPKc
 5549 0044 03B0     		add	sp, sp, #12
 5550              		@ sp needed
 5551 0046 30BD     		pop	{r4, r5, pc}
 5552              	.L1061:
 5553 0048 1146     		mov	r1, r2
 5554 004a FFF7FEFF 		bl	_ZN8Platform14AppendAuxReplyEPKc
 5555 004e 03B0     		add	sp, sp, #12
 5556              		@ sp needed
 5557 0050 30BD     		pop	{r4, r5, pc}
 5558              	.L1064:
 5559 0052 D0F82C08 		ldr	r0, [r0, #2092]
 5560 0056 FFF7FEFF 		bl	_ZNK11OutputStack11GetLastItemEv
 5561 005a 0190     		str	r0, [sp, #4]
 5562 005c 10B1     		cbz	r0, .L1070
 5563 005e 90F81431 		ldrb	r3, [r0, #276]	@ zero_extendqisi2
 5564 0062 53B1     		cbz	r3, .L1071
 5565              	.L1070:
 5566 0064 01A8     		add	r0, sp, #4
 5567 0066 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 5568 006a 0028     		cmp	r0, #0
 5569 006c E1D0     		beq	.L1059
 5570 006e D5F82C08 		ldr	r0, [r5, #2092]
 5571 0072 0199     		ldr	r1, [sp, #4]
 5572 0074 FFF7FEFF 		bl	_ZN11OutputStack4PushEP12OutputBuffer
 5573 0078 0198     		ldr	r0, [sp, #4]
 5574              	.L1071:
 5575 007a 2146     		mov	r1, r4
 5576 007c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 5577 0080 D7E7     		b	.L1059
 5578              	.L1066:
 5579 0082 124B     		ldr	r3, .L1080+4
 5580 0084 0021     		movs	r1, #0
 5581 0086 5869     		ldr	r0, [r3, #20]
 5582 0088 FFF7FEFF 		bl	_ZN9Webserver16HandleGCodeReplyE9WebSourcePKc
 5583 008c 03B0     		add	sp, sp, #12
 5584              		@ sp needed
 5585 008e 30BD     		pop	{r4, r5, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 99


 5586              	.L1067:
 5587 0090 0E4B     		ldr	r3, .L1080+4
 5588 0092 0121     		movs	r1, #1
 5589 0094 5869     		ldr	r0, [r3, #20]
 5590 0096 FFF7FEFF 		bl	_ZN9Webserver16HandleGCodeReplyE9WebSourcePKc
 5591 009a 03B0     		add	sp, sp, #12
 5592              		@ sp needed
 5593 009c 30BD     		pop	{r4, r5, pc}
 5594              	.L1060:
 5595 009e 0421     		movs	r1, #4
 5596 00a0 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5597 00a4 2846     		mov	r0, r5
 5598 00a6 2246     		mov	r2, r4
 5599 00a8 0521     		movs	r1, #5
 5600 00aa FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5601 00ae 2846     		mov	r0, r5
 5602 00b0 2246     		mov	r2, r4
 5603 00b2 0221     		movs	r1, #2
 5604 00b4 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5605 00b8 2846     		mov	r0, r5
 5606 00ba 2246     		mov	r2, r4
 5607 00bc 0021     		movs	r1, #0
 5608 00be FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5609 00c2 03B0     		add	sp, sp, #12
 5610              		@ sp needed
 5611 00c4 30BD     		pop	{r4, r5, pc}
 5612              	.L1081:
 5613 00c6 00BF     		.align	2
 5614              	.L1080:
 5615 00c8 00000000 		.word	SerialUSB
 5616 00cc 00000000 		.word	reprap
 5617              		.size	_ZN8Platform7MessageE11MessageTypePKc, .-_ZN8Platform7MessageE11MessageTypePKc
 5618              		.section	.text._ZN8Platform12SetEmulatingE13Compatibility,"ax",%progbits
 5619              		.align	2
 5620              		.global	_ZN8Platform12SetEmulatingE13Compatibility
 5621              		.thumb
 5622              		.thumb_func
 5623              		.type	_ZN8Platform12SetEmulatingE13Compatibility, %function
 5624              	_ZN8Platform12SetEmulatingE13Compatibility:
 5625              		@ args = 0, pretend = 0, frame = 0
 5626              		@ frame_needed = 0, uses_anonymous_args = 0
 5627              		@ link register save eliminated.
 5628 0000 0229     		cmp	r1, #2
 5629 0002 05D8     		bhi	.L1086
 5630 0004 0129     		cmp	r1, #1
 5631 0006 08BF     		it	eq
 5632 0008 0021     		moveq	r1, #0
 5633 000a 80F8AA10 		strb	r1, [r0, #170]
 5634 000e 7047     		bx	lr
 5635              	.L1086:
 5636 0010 0621     		movs	r1, #6
 5637 0012 014A     		ldr	r2, .L1087
 5638 0014 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 5639              	.L1088:
 5640              		.align	2
 5641              	.L1087:
 5642 0018 A0000000 		.word	.LC15
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 100


 5643              		.size	_ZN8Platform12SetEmulatingE13Compatibility, .-_ZN8Platform12SetEmulatingE13Compatibility
 5644              		.section	.text._ZN8Platform12GetFileStoreEPKcS1_b,"ax",%progbits
 5645              		.align	2
 5646              		.global	_ZN8Platform12GetFileStoreEPKcS1_b
 5647              		.thumb
 5648              		.thumb_func
 5649              		.type	_ZN8Platform12GetFileStoreEPKcS1_b, %function
 5650              	_ZN8Platform12GetFileStoreEPKcS1_b:
 5651              		@ args = 0, pretend = 0, frame = 0
 5652              		@ frame_needed = 0, uses_anonymous_args = 0
 5653 0000 2DE9B841 		push	{r3, r4, r5, r7, r8, lr}
 5654 0004 8046     		mov	r8, r0
 5655 0006 90F86808 		ldrb	r0, [r0, #2152]	@ zero_extendqisi2
 5656 000a 78B1     		cbz	r0, .L1100
 5657 000c 4446     		mov	r4, r8
 5658 000e 0025     		movs	r5, #0
 5659              	.L1095:
 5660 0010 D4F84008 		ldr	r0, [r4, #2112]
 5661 0014 90F82D70 		ldrb	r7, [r0, #45]	@ zero_extendqisi2
 5662 0018 0434     		adds	r4, r4, #4
 5663 001a 57B1     		cbz	r7, .L1101
 5664 001c 0135     		adds	r5, r5, #1
 5665 001e 0A2D     		cmp	r5, #10
 5666 0020 F6D1     		bne	.L1095
 5667 0022 4046     		mov	r0, r8
 5668 0024 0221     		movs	r1, #2
 5669 0026 094A     		ldr	r2, .L1102
 5670 0028 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5671              	.L1100:
 5672 002c 0020     		movs	r0, #0
 5673 002e BDE8B881 		pop	{r3, r4, r5, r7, r8, pc}
 5674              	.L1101:
 5675 0032 FFF7FEFF 		bl	_ZN9FileStore4OpenEPKcS1_b
 5676 0036 0028     		cmp	r0, #0
 5677 0038 F8D0     		beq	.L1100
 5678 003a 05F50475 		add	r5, r5, #528
 5679 003e 0123     		movs	r3, #1
 5680 0040 58F82500 		ldr	r0, [r8, r5, lsl #2]
 5681 0044 80F82D30 		strb	r3, [r0, #45]
 5682 0048 BDE8B881 		pop	{r3, r4, r5, r7, r8, pc}
 5683              	.L1103:
 5684              		.align	2
 5685              	.L1102:
 5686 004c CC000000 		.word	.LC16
 5687              		.size	_ZN8Platform12GetFileStoreEPKcS1_b, .-_ZN8Platform12GetFileStoreEPKcS1_b
 5688              		.section	.text._ZN8Platform8MessageFE11MessageTypePKcSt9__va_list,"ax",%progbits
 5689              		.align	2
 5690              		.global	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list
 5691              		.thumb
 5692              		.thumb_func
 5693              		.type	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list, %function
 5694              	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list:
 5695              		@ args = 0, pretend = 0, frame = 264
 5696              		@ frame_needed = 0, uses_anonymous_args = 0
 5697 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 5698 0002 C3B0     		sub	sp, sp, #268
 5699 0004 02AC     		add	r4, sp, #8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 101


 5700 0006 0D46     		mov	r5, r1
 5701 0008 0646     		mov	r6, r0
 5702 000a 1146     		mov	r1, r2
 5703 000c 4FF48077 		mov	r7, #256
 5704 0010 1A46     		mov	r2, r3
 5705 0012 6846     		mov	r0, sp
 5706 0014 0023     		movs	r3, #0
 5707 0016 8DF80830 		strb	r3, [sp, #8]
 5708 001a 8DE89000 		stmia	sp, {r4, r7}
 5709 001e FFF7FEFF 		bl	_ZN9StringRef7vprintfEPKcSt9__va_list
 5710 0022 3046     		mov	r0, r6
 5711 0024 2946     		mov	r1, r5
 5712 0026 2246     		mov	r2, r4
 5713 0028 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5714 002c 43B0     		add	sp, sp, #268
 5715              		@ sp needed
 5716 002e F0BD     		pop	{r4, r5, r6, r7, pc}
 5717              		.size	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list, .-_ZN8Platform8MessageFE11MessageTypePKc
 5718              		.section	.text._ZN8Platform8MessageFE11MessageTypePKcz,"ax",%progbits
 5719              		.align	2
 5720              		.global	_ZN8Platform8MessageFE11MessageTypePKcz
 5721              		.thumb
 5722              		.thumb_func
 5723              		.type	_ZN8Platform8MessageFE11MessageTypePKcz, %function
 5724              	_ZN8Platform8MessageFE11MessageTypePKcz:
 5725              		@ args = 4, pretend = 8, frame = 272
 5726              		@ frame_needed = 0, uses_anonymous_args = 1
 5727 0000 0CB4     		push	{r2, r3}
 5728 0002 F0B5     		push	{r4, r5, r6, r7, lr}
 5729 0004 C5B0     		sub	sp, sp, #276
 5730 0006 4AAA     		add	r2, sp, #296
 5731 0008 0023     		movs	r3, #0
 5732 000a 52F8045B 		ldr	r5, [r2], #4
 5733 000e 0192     		str	r2, [sp, #4]
 5734 0010 04AC     		add	r4, sp, #16
 5735 0012 0746     		mov	r7, r0
 5736 0014 0E46     		mov	r6, r1
 5737 0016 02A8     		add	r0, sp, #8
 5738 0018 2946     		mov	r1, r5
 5739 001a 4FF48075 		mov	r5, #256
 5740 001e 8DF81030 		strb	r3, [sp, #16]
 5741 0022 0395     		str	r5, [sp, #12]
 5742 0024 0294     		str	r4, [sp, #8]
 5743 0026 FFF7FEFF 		bl	_ZN9StringRef7vprintfEPKcSt9__va_list
 5744 002a 3846     		mov	r0, r7
 5745 002c 3146     		mov	r1, r6
 5746 002e 2246     		mov	r2, r4
 5747 0030 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5748 0034 45B0     		add	sp, sp, #276
 5749              		@ sp needed
 5750 0036 BDE8F040 		pop	{r4, r5, r6, r7, lr}
 5751 003a 02B0     		add	sp, sp, #8
 5752 003c 7047     		bx	lr
 5753              		.size	_ZN8Platform8MessageFE11MessageTypePKcz, .-_ZN8Platform8MessageFE11MessageTypePKcz
 5754 003e 00BF     		.section	.text._ZN8Platform7MessageE11MessageTypeP12OutputBuffer,"ax",%progbits
 5755              		.align	2
 5756              		.global	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 102


 5757              		.thumb
 5758              		.thumb_func
 5759              		.type	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer, %function
 5760              	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer:
 5761              		@ args = 0, pretend = 0, frame = 8
 5762              		@ frame_needed = 0, uses_anonymous_args = 0
 5763 0000 30B5     		push	{r4, r5, lr}
 5764 0002 0546     		mov	r5, r0
 5765 0004 83B0     		sub	sp, sp, #12
 5766 0006 1446     		mov	r4, r2
 5767 0008 0729     		cmp	r1, #7
 5768 000a 57D8     		bhi	.L1107
 5769 000c DFE801F0 		tbb	[pc, r1]
 5770              	.L1109:
 5771 0010 3F       		.byte	(.L1108-.L1109)/2
 5772 0011 46       		.byte	(.L1110-.L1109)/2
 5773 0012 04       		.byte	(.L1111-.L1109)/2
 5774 0013 0F       		.byte	(.L1112-.L1109)/2
 5775 0014 24       		.byte	(.L1113-.L1109)/2
 5776 0015 4E       		.byte	(.L1114-.L1109)/2
 5777 0016 2C       		.byte	(.L1115-.L1109)/2
 5778 0017 04       		.byte	(.L1111-.L1109)/2
 5779              		.align	1
 5780              	.L1111:
 5781 0018 3148     		ldr	r0, .L1126
 5782 001a FFF7FEFF 		bl	_ZNK9SerialCDCcvbEv
 5783 001e 0028     		cmp	r0, #0
 5784 0020 5AD1     		bne	.L1120
 5785 0022 2046     		mov	r0, r4
 5786 0024 03B0     		add	sp, sp, #12
 5787              		@ sp needed
 5788 0026 BDE83040 		pop	{r4, r5, lr}
 5789 002a FFF7FEBF 		b	_ZN12OutputBuffer10ReleaseAllEPS_
 5790              	.L1112:
 5791 002e 8AB1     		cbz	r2, .L1106
 5792 0030 2B4D     		ldr	r5, .L1126
 5793              	.L1119:
 5794 0032 2B68     		ldr	r3, [r5]
 5795 0034 D4F80C21 		ldr	r2, [r4, #268]
 5796 0038 DB68     		ldr	r3, [r3, #12]
 5797 003a 2948     		ldr	r0, .L1126
 5798 003c 04F10C01 		add	r1, r4, #12
 5799 0040 9847     		blx	r3
 5800 0042 2748     		ldr	r0, .L1126
 5801 0044 FFF7FEFF 		bl	_ZN9SerialCDC5flushEv
 5802 0048 2046     		mov	r0, r4
 5803 004a FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 5804 004e 0446     		mov	r4, r0
 5805 0050 0028     		cmp	r0, #0
 5806 0052 EED1     		bne	.L1119
 5807              	.L1106:
 5808 0054 03B0     		add	sp, sp, #12
 5809              		@ sp needed
 5810 0056 30BD     		pop	{r4, r5, pc}
 5811              	.L1113:
 5812 0058 224B     		ldr	r3, .L1126+4
 5813 005a 5869     		ldr	r0, [r3, #20]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 103


 5814 005c 0021     		movs	r1, #0
 5815 005e 03B0     		add	sp, sp, #12
 5816              		@ sp needed
 5817 0060 BDE83040 		pop	{r4, r5, lr}
 5818 0064 FFF7FEBF 		b	_ZN9Webserver16HandleGCodeReplyE9WebSourceP12OutputBuffer
 5819              	.L1115:
 5820 0068 1046     		mov	r0, r2
 5821 006a 0321     		movs	r1, #3
 5822 006c FFF7FEFF 		bl	_ZN12OutputBuffer18IncreaseReferencesEj
 5823 0070 2846     		mov	r0, r5
 5824 0072 0421     		movs	r1, #4
 5825 0074 2246     		mov	r2, r4
 5826 0076 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 5827 007a 2846     		mov	r0, r5
 5828 007c 0521     		movs	r1, #5
 5829 007e 2246     		mov	r2, r4
 5830 0080 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 5831 0084 2846     		mov	r0, r5
 5832 0086 0221     		movs	r1, #2
 5833 0088 2246     		mov	r2, r4
 5834 008a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 5835              	.L1108:
 5836 008e 2846     		mov	r0, r5
 5837 0090 2146     		mov	r1, r4
 5838 0092 03B0     		add	sp, sp, #12
 5839              		@ sp needed
 5840 0094 BDE83040 		pop	{r4, r5, lr}
 5841 0098 FFF7FEBF 		b	_ZN8Platform14AppendAuxReplyEP12OutputBuffer
 5842              	.L1110:
 5843 009c D0F82808 		ldr	r0, [r0, #2088]
 5844              	.L1124:
 5845 00a0 2146     		mov	r1, r4
 5846 00a2 03B0     		add	sp, sp, #12
 5847              		@ sp needed
 5848 00a4 BDE83040 		pop	{r4, r5, lr}
 5849 00a8 FFF7FEBF 		b	_ZN11OutputStack4PushEP12OutputBuffer
 5850              	.L1114:
 5851 00ac 0D4B     		ldr	r3, .L1126+4
 5852 00ae 5869     		ldr	r0, [r3, #20]
 5853 00b0 0121     		movs	r1, #1
 5854 00b2 03B0     		add	sp, sp, #12
 5855              		@ sp needed
 5856 00b4 BDE83040 		pop	{r4, r5, lr}
 5857 00b8 FFF7FEBF 		b	_ZN9Webserver16HandleGCodeReplyE9WebSourceP12OutputBuffer
 5858              	.L1107:
 5859 00bc 1046     		mov	r0, r2
 5860 00be 0191     		str	r1, [sp, #4]
 5861 00c0 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllEPS_
 5862 00c4 0199     		ldr	r1, [sp, #4]
 5863 00c6 084A     		ldr	r2, .L1126+8
 5864 00c8 0B46     		mov	r3, r1
 5865 00ca 2846     		mov	r0, r5
 5866 00cc 0221     		movs	r1, #2
 5867 00ce 03B0     		add	sp, sp, #12
 5868              		@ sp needed
 5869 00d0 BDE83040 		pop	{r4, r5, lr}
 5870 00d4 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 104


 5871              	.L1120:
 5872 00d8 D5F82C08 		ldr	r0, [r5, #2092]
 5873 00dc E0E7     		b	.L1124
 5874              	.L1127:
 5875 00de 00BF     		.align	2
 5876              	.L1126:
 5877 00e0 00000000 		.word	SerialUSB
 5878 00e4 00000000 		.word	reprap
 5879 00e8 EC000000 		.word	.LC17
 5880              		.size	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer, .-_ZN8Platform7MessageE11MessageTypeP12Ou
 5881              		.section	.text._ZN8Platform14SendAuxMessageEPKc,"ax",%progbits
 5882              		.align	2
 5883              		.global	_ZN8Platform14SendAuxMessageEPKc
 5884              		.thumb
 5885              		.thumb_func
 5886              		.type	_ZN8Platform14SendAuxMessageEPKc, %function
 5887              	_ZN8Platform14SendAuxMessageEPKc:
 5888              		@ args = 0, pretend = 0, frame = 8
 5889              		@ frame_needed = 0, uses_anonymous_args = 0
 5890 0000 70B5     		push	{r4, r5, r6, lr}
 5891 0002 84B0     		sub	sp, sp, #16
 5892 0004 0546     		mov	r5, r0
 5893 0006 03A8     		add	r0, sp, #12
 5894 0008 0C46     		mov	r4, r1
 5895 000a FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 5896 000e B8B1     		cbz	r0, .L1128
 5897 0010 0C49     		ldr	r1, .L1133
 5898 0012 0398     		ldr	r0, [sp, #12]
 5899 0014 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 5900 0018 2046     		mov	r0, r4
 5901 001a FFF7FEFF 		bl	strlen
 5902 001e 0126     		movs	r6, #1
 5903 0020 0246     		mov	r2, r0
 5904 0022 2146     		mov	r1, r4
 5905 0024 0023     		movs	r3, #0
 5906 0026 0398     		ldr	r0, [sp, #12]
 5907 0028 0096     		str	r6, [sp]
 5908 002a FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 5909 002e 0649     		ldr	r1, .L1133+4
 5910 0030 0398     		ldr	r0, [sp, #12]
 5911 0032 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 5912 0036 2846     		mov	r0, r5
 5913 0038 0021     		movs	r1, #0
 5914 003a 039A     		ldr	r2, [sp, #12]
 5915 003c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 5916              	.L1128:
 5917 0040 04B0     		add	sp, sp, #16
 5918              		@ sp needed
 5919 0042 70BD     		pop	{r4, r5, r6, pc}
 5920              	.L1134:
 5921              		.align	2
 5922              	.L1133:
 5923 0044 1C010000 		.word	.LC18
 5924 0048 28010000 		.word	.LC19
 5925              		.size	_ZN8Platform14SendAuxMessageEPKc, .-_ZN8Platform14SendAuxMessageEPKc
 5926              		.section	.text._ZN8Platform32CheckFirmwareUpdatePrerequisitesEv,"ax",%progbits
 5927              		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 105


 5928              		.global	_ZN8Platform32CheckFirmwareUpdatePrerequisitesEv
 5929              		.thumb
 5930              		.thumb_func
 5931              		.type	_ZN8Platform32CheckFirmwareUpdatePrerequisitesEv, %function
 5932              	_ZN8Platform32CheckFirmwareUpdatePrerequisitesEv:
 5933              		@ args = 0, pretend = 0, frame = 8
 5934              		@ frame_needed = 0, uses_anonymous_args = 0
 5935 0000 70B5     		push	{r4, r5, r6, lr}
 5936 0002 1D49     		ldr	r1, .L1141
 5937 0004 1D4A     		ldr	r2, .L1141+4
 5938 0006 82B0     		sub	sp, sp, #8
 5939 0008 0023     		movs	r3, #0
 5940 000a 0546     		mov	r5, r0
 5941 000c FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 5942 0010 0446     		mov	r4, r0
 5943 0012 38B3     		cbz	r0, .L1140
 5944 0014 01A9     		add	r1, sp, #4
 5945 0016 0422     		movs	r2, #4
 5946 0018 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 5947 001c 0646     		mov	r6, r0
 5948 001e 2046     		mov	r0, r4
 5949 0020 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 5950 0024 042E     		cmp	r6, #4
 5951 0026 03D1     		bne	.L1138
 5952 0028 154A     		ldr	r2, .L1141+8
 5953 002a 019B     		ldr	r3, [sp, #4]
 5954 002c 9342     		cmp	r3, r2
 5955 002e 09D0     		beq	.L1139
 5956              	.L1138:
 5957 0030 2846     		mov	r0, r5
 5958 0032 0621     		movs	r1, #6
 5959 0034 134A     		ldr	r2, .L1141+12
 5960 0036 114B     		ldr	r3, .L1141+4
 5961 0038 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 5962 003c 0024     		movs	r4, #0
 5963              	.L1137:
 5964 003e 2046     		mov	r0, r4
 5965 0040 02B0     		add	sp, sp, #8
 5966              		@ sp needed
 5967 0042 70BD     		pop	{r4, r5, r6, pc}
 5968              	.L1139:
 5969 0044 D5F83C08 		ldr	r0, [r5, #2108]
 5970 0048 0B49     		ldr	r1, .L1141
 5971 004a 0F4A     		ldr	r2, .L1141+16
 5972 004c FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
 5973 0050 0446     		mov	r4, r0
 5974 0052 0028     		cmp	r0, #0
 5975 0054 F3D1     		bne	.L1137
 5976 0056 2846     		mov	r0, r5
 5977 0058 0621     		movs	r1, #6
 5978 005a 0C4A     		ldr	r2, .L1141+20
 5979 005c 0A4B     		ldr	r3, .L1141+16
 5980 005e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 5981 0062 ECE7     		b	.L1137
 5982              	.L1140:
 5983 0064 2846     		mov	r0, r5
 5984 0066 0621     		movs	r1, #6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 106


 5985 0068 094A     		ldr	r2, .L1141+24
 5986 006a 044B     		ldr	r3, .L1141+4
 5987 006c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 5988 0070 2046     		mov	r0, r4
 5989 0072 02B0     		add	sp, sp, #8
 5990              		@ sp needed
 5991 0074 70BD     		pop	{r4, r5, r6, pc}
 5992              	.L1142:
 5993 0076 00BF     		.align	2
 5994              	.L1141:
 5995 0078 2C010000 		.word	.LC20
 5996 007c 34010000 		.word	.LC21
 5997 0080 00000220 		.word	537001984
 5998 0084 78010000 		.word	.LC23
 5999 0088 B8010000 		.word	.LC24
 6000 008c C4010000 		.word	.LC25
 6001 0090 50010000 		.word	.LC22
 6002              		.size	_ZN8Platform32CheckFirmwareUpdatePrerequisitesEv, .-_ZN8Platform32CheckFirmwareUpdatePrerequ
 6003              		.section	.text._ZN8Platform4BeepEii,"ax",%progbits
 6004              		.align	2
 6005              		.global	_ZN8Platform4BeepEii
 6006              		.thumb
 6007              		.thumb_func
 6008              		.type	_ZN8Platform4BeepEii, %function
 6009              	_ZN8Platform4BeepEii:
 6010              		@ args = 0, pretend = 0, frame = 0
 6011              		@ frame_needed = 0, uses_anonymous_args = 0
 6012 0000 00B5     		push	{lr}
 6013 0002 83B0     		sub	sp, sp, #12
 6014 0004 0B46     		mov	r3, r1
 6015 0006 0092     		str	r2, [sp]
 6016 0008 0021     		movs	r1, #0
 6017 000a 034A     		ldr	r2, .L1144
 6018 000c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6019 0010 03B0     		add	sp, sp, #12
 6020              		@ sp needed
 6021 0012 5DF804FB 		ldr	pc, [sp], #4
 6022              	.L1145:
 6023 0016 00BF     		.align	2
 6024              	.L1144:
 6025 0018 00020000 		.word	.LC26
 6026              		.size	_ZN8Platform4BeepEii, .-_ZN8Platform4BeepEii
 6027              		.section	.text._ZN8Platform14DiagnosticTestEi,"ax",%progbits
 6028              		.align	2
 6029              		.global	_ZN8Platform14DiagnosticTestEi
 6030              		.thumb
 6031              		.thumb_func
 6032              		.type	_ZN8Platform14DiagnosticTestEi, %function
 6033              	_ZN8Platform14DiagnosticTestEi:
 6034              		@ args = 0, pretend = 0, frame = 8
 6035              		@ frame_needed = 0, uses_anonymous_args = 0
 6036 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 6037 0004 2DED028B 		fstmfdd	sp!, {d8}
 6038 0008 40F2EA33 		movw	r3, #1002
 6039 000c 9942     		cmp	r1, r3
 6040 000e 8BB0     		sub	sp, sp, #44
 6041 0010 0646     		mov	r6, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 107


 6042 0012 00F0B780 		beq	.L1148
 6043 0016 16DD     		ble	.L1164
 6044 0018 B1F57B7F 		cmp	r1, #1004
 6045 001c 00F09C80 		beq	.L1155
 6046 0020 C0F29280 		blt	.L1156
 6047 0024 40F2ED33 		movw	r3, #1005
 6048 0028 9942     		cmp	r1, r3
 6049 002a 77D0     		beq	.L1157
 6050 002c 40F2EE33 		movw	r3, #1006
 6051 0030 9942     		cmp	r1, r3
 6052 0032 17D1     		bne	.L1146
 6053 0034 4FF00250 		mov	r0, #545259520
 6054 0038 0BB0     		add	sp, sp, #44
 6055              		@ sp needed
 6056 003a BDEC028B 		fldmfdd	sp!, {d8}
 6057 003e BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 6058 0042 FFF7FEBF 		b	_ZN6RepRap9ReadDwordEPKc
 6059              	.L1164:
 6060 0046 6529     		cmp	r1, #101
 6061 0048 00F08F80 		beq	.L1150
 6062 004c 73DD     		ble	.L1165
 6063 004e 6629     		cmp	r1, #102
 6064 0050 0DD0     		beq	.L1153
 6065 0052 40F2E933 		movw	r3, #1001
 6066 0056 9942     		cmp	r1, r3
 6067 0058 04D1     		bne	.L1146
 6068 005a 534B     		ldr	r3, .L1166+16
 6069 005c 1A68     		ldr	r2, [r3]
 6070 005e 22F00202 		bic	r2, r2, #2
 6071 0062 1A60     		str	r2, [r3]
 6072              	.L1146:
 6073 0064 0BB0     		add	sp, sp, #44
 6074              		@ sp needed
 6075 0066 BDEC028B 		fldmfdd	sp!, {d8}
 6076 006a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6077              	.L1153:
 6078 006e 4F4C     		ldr	r4, .L1166+20
 6079 0070 DFF85C91 		ldr	r9, .L1166+56
 6080 0074 D4F890A0 		ldr	r10, [r4, #144]
 6081 0078 9FED4D8A 		flds	s16, .L1166+24
 6082 007c DFF85481 		ldr	r8, .L1166+60
 6083 0080 4C4F     		ldr	r7, .L1166+28
 6084 0082 45A1     		adr	r1, .L1166
 6085 0084 D1E90001 		ldrd	r0, [r1]
 6086 0088 FFF7FEFF 		bl	_Z7isqrt64y
 6087 008c D4F89020 		ldr	r2, [r4, #144]
 6088 0090 D4F89050 		ldr	r5, [r4, #144]
 6089 0094 CAEB020A 		rsb	r10, r10, r2
 6090 0098 0346     		mov	r3, r0
 6091 009a 09FB0AFA 		mul	r10, r9, r10
 6092 009e 40A1     		adr	r1, .L1166+8
 6093 00a0 D1E90001 		ldrd	r0, [r1]
 6094 00a4 0993     		str	r3, [sp, #36]
 6095 00a6 FFF7FEFF 		bl	_Z7isqrt64y
 6096 00aa 07EE10AA 		fmsr	s14, r10	@ int
 6097 00ae F8EE477A 		fuitos	s15, s14
 6098 00b2 D4F89020 		ldr	r2, [r4, #144]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 108


 6099 00b6 C7EE887A 		fdivs	s15, s15, s16
 6100 00ba C5EB020A 		rsb	r10, r5, r2
 6101 00be 8346     		mov	fp, r0
 6102 00c0 09FB0AF9 		mul	r9, r9, r10
 6103 00c4 17EE900A 		fmrs	r0, s15
 6104 00c8 FFF7FEFF 		bl	__aeabi_f2d
 6105 00cc 07EE109A 		fmsr	s14, r9	@ int
 6106 00d0 F8EE477A 		fuitos	s15, s14
 6107 00d4 099B     		ldr	r3, [sp, #36]
 6108 00d6 384A     		ldr	r2, .L1166+32
 6109 00d8 C7EE887A 		fdivs	s15, s15, s16
 6110 00dc 0446     		mov	r4, r0
 6111 00de 9342     		cmp	r3, r2
 6112 00e0 14BF     		ite	ne
 6113 00e2 C146     		movne	r9, r8
 6114 00e4 B946     		moveq	r9, r7
 6115 00e6 0D46     		mov	r5, r1
 6116 00e8 17EE900A 		fmrs	r0, s15
 6117 00ec FFF7FEFF 		bl	__aeabi_f2d
 6118 00f0 4AF2C543 		movw	r3, #42181
 6119 00f4 9B45     		cmp	fp, r3
 6120 00f6 18BF     		it	ne
 6121 00f8 4746     		movne	r7, r8
 6122 00fa CDE90401 		strd	r0, [sp, #16]
 6123 00fe CDF80890 		str	r9, [sp, #8]
 6124 0102 0697     		str	r7, [sp, #24]
 6125 0104 3046     		mov	r0, r6
 6126 0106 0621     		movs	r1, #6
 6127 0108 CDE90045 		strd	r4, [sp]
 6128 010c 2B4A     		ldr	r2, .L1166+36
 6129 010e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6130 0112 0BB0     		add	sp, sp, #44
 6131              		@ sp needed
 6132 0114 BDEC028B 		fldmfdd	sp!, {d8}
 6133 0118 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6134              	.L1157:
 6135 011c 284B     		ldr	r3, .L1166+40
 6136 011e 2948     		ldr	r0, .L1166+44
 6137 0120 5A69     		ldr	r2, [r3, #20]
 6138 0122 42F00802 		orr	r2, r2, #8
 6139 0126 5A61     		str	r2, [r3, #20]
 6140 0128 0BB0     		add	sp, sp, #44
 6141              		@ sp needed
 6142 012a BDEC028B 		fldmfdd	sp!, {d8}
 6143 012e BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 6144 0132 FFF7FEBF 		b	_ZN6RepRap9ReadDwordEPKc
 6145              	.L1165:
 6146 0136 6429     		cmp	r1, #100
 6147 0138 94D1     		bne	.L1146
 6148 013a 0BB0     		add	sp, sp, #44
 6149              		@ sp needed
 6150 013c BDEC028B 		fldmfdd	sp!, {d8}
 6151 0140 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 6152 0144 FFF7FEBF 		b	_ZN3DDA10PrintMovesEv
 6153              	.L1156:
 6154 0148 1F48     		ldr	r0, .L1166+48
 6155 014a 0BB0     		add	sp, sp, #44
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 109


 6156              		@ sp needed
 6157 014c BDEC028B 		fldmfdd	sp!, {d8}
 6158 0150 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 6159 0154 FFF7FEBF 		b	debugPrintf
 6160              	.L1155:
 6161 0158 0120     		movs	r0, #1
 6162 015a 0021     		movs	r1, #0
 6163 015c 0BB0     		add	sp, sp, #44
 6164              		@ sp needed
 6165 015e BDEC028B 		fldmfdd	sp!, {d8}
 6166 0162 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 6167 0166 FFF7FEBF 		b	_ZN6RepRap8DoDivideEmm
 6168              	.L1150:
 6169 016a FFF7FEFF 		bl	_ZN13DuetExpansion14DiagnosticReadEv
 6170 016e 174A     		ldr	r2, .L1166+52
 6171 0170 0346     		mov	r3, r0
 6172 0172 0621     		movs	r1, #6
 6173 0174 3046     		mov	r0, r6
 6174 0176 0BB0     		add	sp, sp, #44
 6175              		@ sp needed
 6176 0178 BDEC028B 		fldmfdd	sp!, {d8}
 6177 017c BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 6178 0180 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 6179              	.L1148:
 6180 0184 C0F89C18 		str	r1, [r0, #2204]
 6181 0188 0BB0     		add	sp, sp, #44
 6182              		@ sp needed
 6183 018a BDEC028B 		fldmfdd	sp!, {d8}
 6184 018e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6185              	.L1167:
 6186 0192 00BFAFF3 		.align	3
 6186      0080
 6187              	.L1166:
 6188 0198 890604B0 		.word	-1341913463
 6189 019c C7B51E33 		.word	857650631
 6190 01a0 99FF0C6A 		.word	1779236761
 6191 01a4 00000000 		.word	0
 6192 01a8 10E000E0 		.word	-536813552
 6193 01ac 00000940 		.word	1074331648
 6194 01b0 C0E16449 		.word	1231348160
 6195 01b4 24020000 		.word	.LC27
 6196 01b8 3DAC6572 		.word	1919265853
 6197 01bc 44020000 		.word	.LC30
 6198 01c0 00ED00E0 		.word	-536810240
 6199 01c4 01000000 		.word	.LANCHOR23+1
 6200 01c8 30020000 		.word	.LC29
 6201 01cc 78020000 		.word	.LC31
 6202 01d0 40420F00 		.word	1000000
 6203 01d4 28020000 		.word	.LC28
 6204              		.size	_ZN8Platform14DiagnosticTestEi, .-_ZN8Platform14DiagnosticTestEi
 6205              		.section	.text._ZN8Platform11ClassReportERf,"ax",%progbits
 6206              		.align	2
 6207              		.global	_ZN8Platform11ClassReportERf
 6208              		.thumb
 6209              		.thumb_func
 6210              		.type	_ZN8Platform11ClassReportERf, %function
 6211              	_ZN8Platform11ClassReportERf:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 110


 6212              		@ args = 0, pretend = 0, frame = 0
 6213              		@ frame_needed = 0, uses_anonymous_args = 0
 6214 0000 70B5     		push	{r4, r5, r6, lr}
 6215 0002 144B     		ldr	r3, .L1175
 6216 0004 93F83240 		ldrb	r4, [r3, #50]	@ zero_extendqisi2
 6217 0008 B3F84030 		ldrh	r3, [r3, #64]
 6218 000c 2341     		asrs	r3, r3, r4
 6219 000e DB07     		lsls	r3, r3, #31
 6220 0010 0D46     		mov	r5, r1
 6221 0012 0646     		mov	r6, r0
 6222 0014 00D4     		bmi	.L1174
 6223              	.L1168:
 6224 0016 70BD     		pop	{r4, r5, r6, pc}
 6225              	.L1174:
 6226 0018 FFF7FEFF 		bl	_ZN8Platform4TimeEv
 6227 001c 95ED007A 		flds	s14, [r5]
 6228 0020 DFED0D7A 		flds	s15, .L1175+4
 6229 0024 06EE900A 		fmsr	s13, r0
 6230 0028 36EEC77A 		fsubs	s14, s13, s14
 6231 002c B4EEE77A 		fcmpes	s14, s15
 6232 0030 F1EE10FA 		fmstat
 6233 0034 EFDB     		blt	.L1168
 6234 0036 3046     		mov	r0, r6
 6235 0038 FFF7FEFF 		bl	_ZN8Platform4TimeEv
 6236 003c 074B     		ldr	r3, .L1175+8
 6237 003e 2860     		str	r0, [r5]	@ float
 6238 0040 53F82430 		ldr	r3, [r3, r4, lsl #2]
 6239 0044 064A     		ldr	r2, .L1175+12
 6240 0046 3046     		mov	r0, r6
 6241 0048 0221     		movs	r1, #2
 6242 004a BDE87040 		pop	{r4, r5, r6, lr}
 6243 004e FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 6244              	.L1176:
 6245 0052 00BF     		.align	2
 6246              	.L1175:
 6247 0054 00000000 		.word	reprap
 6248 0058 00009643 		.word	1133903872
 6249 005c 00000000 		.word	moduleName
 6250 0060 90020000 		.word	.LC32
 6251              		.size	_ZN8Platform11ClassReportERf, .-_ZN8Platform11ClassReportERf
 6252              		.section	.text._ZN8Platform14UpdateFirmwareEv,"ax",%progbits
 6253              		.align	2
 6254              		.global	_ZN8Platform14UpdateFirmwareEv
 6255              		.thumb
 6256              		.thumb_func
 6257              		.type	_ZN8Platform14UpdateFirmwareEv, %function
 6258              	_ZN8Platform14UpdateFirmwareEv:
 6259              		@ args = 0, pretend = 0, frame = 512
 6260              		@ frame_needed = 0, uses_anonymous_args = 0
 6261 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 6262 0004 7749     		ldr	r1, .L1207
 6263 0006 784A     		ldr	r2, .L1207+4
 6264 0008 ADF5027D 		sub	sp, sp, #520
 6265 000c 0023     		movs	r3, #0
 6266 000e 8246     		mov	r10, r0
 6267 0010 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 6268 0014 8046     		mov	r8, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 111


 6269 0016 0028     		cmp	r0, #0
 6270 0018 00F0D380 		beq	.L1201
 6271 001c 7348     		ldr	r0, .L1207+8
 6272 001e 744E     		ldr	r6, .L1207+12
 6273 0020 DFF8F891 		ldr	r9, .L1207+56
 6274 0024 FFF7FEFF 		bl	_ZN6RepRap13EmergencyStopEv
 6275 0028 0022     		movs	r2, #0
 6276 002a 1346     		mov	r3, r2
 6277 002c 7149     		ldr	r1, .L1207+16
 6278 002e 4FF48E00 		mov	r0, #4653056
 6279 0032 FFF7FEFF 		bl	flash_unlock
 6280 0036 4FF48E00 		mov	r0, #4653056
 6281 003a FFF7FEFF 		bl	flash_erase_sector
 6282 003e 4FF48E04 		mov	r4, #4653056
 6283 0042 0027     		movs	r7, #0
 6284 0044 24E0     		b	.L1185
 6285              	.L1205:
 6286 0046 B5F5007F 		cmp	r5, #512
 6287 004a 01D0     		beq	.L1181
 6288 004c FFF7FEFF 		bl	memset
 6289              	.L1181:
 6290              	@ 330 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 6291 0050 72B6     		cpsid i
 6292              	@ 0 "" 2
 6293              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 6294 0052 BFF35F8F 		dmb
 6295              	@ 0 "" 2
 6296              		.thumb
 6297 0056 4FF40072 		mov	r2, #512
 6298 005a 2046     		mov	r0, r4
 6299 005c 02A9     		add	r1, sp, #8
 6300 005e 0023     		movs	r3, #0
 6301 0060 3770     		strb	r7, [r6]
 6302 0062 FFF7FEFF 		bl	flash_write
 6303 0066 0122     		movs	r2, #1
 6304 0068 0346     		mov	r3, r0
 6305 006a 3270     		strb	r2, [r6]
 6306              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 6307 006c BFF35F8F 		dmb
 6308              	@ 0 "" 2
 6309              	@ 319 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 6310 0070 62B6     		cpsie i
 6311              	@ 0 "" 2
 6312              		.thumb
 6313 0072 2046     		mov	r0, r4
 6314 0074 02A9     		add	r1, sp, #8
 6315 0076 2A46     		mov	r2, r5
 6316 0078 002B     		cmp	r3, #0
 6317 007a 40F08E80 		bne	.L1202
 6318 007e FFF7FEFF 		bl	memcmp
 6319 0082 0028     		cmp	r0, #0
 6320 0084 40F09380 		bne	.L1203
 6321 0088 04F50074 		add	r4, r4, #512
 6322 008c 4C45     		cmp	r4, r9
 6323 008e 22D0     		beq	.L1204
 6324              	.L1185:
 6325 0090 02A9     		add	r1, sp, #8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 112


 6326 0092 4FF40072 		mov	r2, #512
 6327 0096 4046     		mov	r0, r8
 6328 0098 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 6329 009c 051E     		subs	r5, r0, #0
 6330 009e 02A8     		add	r0, sp, #8
 6331 00a0 2844     		add	r0, r0, r5
 6332 00a2 4FF00001 		mov	r1, #0
 6333 00a6 C5F50072 		rsb	r2, r5, #512
 6334 00aa CCDC     		bgt	.L1205
 6335 00ac 0297     		str	r7, [sp, #8]
 6336              	@ 330 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 6337 00ae 72B6     		cpsid i
 6338              	@ 0 "" 2
 6339              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 6340 00b0 BFF35F8F 		dmb
 6341              	@ 0 "" 2
 6342              		.thumb
 6343 00b4 4FF40072 		mov	r2, #512
 6344 00b8 2046     		mov	r0, r4
 6345 00ba 02A9     		add	r1, sp, #8
 6346 00bc 0023     		movs	r3, #0
 6347 00be 3770     		strb	r7, [r6]
 6348 00c0 FFF7FEFF 		bl	flash_write
 6349 00c4 0123     		movs	r3, #1
 6350 00c6 3370     		strb	r3, [r6]
 6351              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 6352 00c8 BFF35F8F 		dmb
 6353              	@ 0 "" 2
 6354              	@ 319 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 6355 00cc 62B6     		cpsie i
 6356              	@ 0 "" 2
 6357              		.thumb
 6358 00ce 04F50074 		add	r4, r4, #512
 6359 00d2 4C45     		cmp	r4, r9
 6360 00d4 DCD1     		bne	.L1185
 6361              	.L1204:
 6362 00d6 0022     		movs	r2, #0
 6363 00d8 1346     		mov	r3, r2
 6364 00da 4649     		ldr	r1, .L1207+16
 6365 00dc 4FF48E00 		mov	r0, #4653056
 6366 00e0 FFF7FEFF 		bl	flash_lock
 6367 00e4 4046     		mov	r0, r8
 6368 00e6 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 6369 00ea 5046     		mov	r0, r10
 6370 00ec 0721     		movs	r1, #7
 6371 00ee 424A     		ldr	r2, .L1207+20
 6372 00f0 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6373 00f4 FFF7FEFF 		bl	millis
 6374 00f8 0446     		mov	r4, r0
 6375              	.L1187:
 6376 00fa 5046     		mov	r0, r10
 6377 00fc FFF7FEFF 		bl	_ZN8Platform13FlushMessagesEv
 6378 0100 0028     		cmp	r0, #0
 6379 0102 67D1     		bne	.L1206
 6380              	.L1186:
 6381 0104 3948     		ldr	r0, .L1207+8
 6382 0106 FFF7FEFF 		bl	_ZN6RepRap4ExitEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 113


 6383 010a 3C4B     		ldr	r3, .L1207+24
 6384 010c 0422     		movs	r2, #4
 6385 010e 1A60     		str	r2, [r3]
 6386              	@ 330 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 6387 0110 72B6     		cpsid i
 6388              	@ 0 "" 2
 6389              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 6390 0112 BFF35F8F 		dmb
 6391              	@ 0 "" 2
 6392              		.thumb
 6393 0116 0023     		movs	r3, #0
 6394 0118 3370     		strb	r3, [r6]
 6395 011a 4FF0FF31 		mov	r1, #-1
 6396              	.L1191:
 6397 011e 9A00     		lsls	r2, r3, #2
 6398 0120 02F16042 		add	r2, r2, #-536870912
 6399 0124 02F56142 		add	r2, r2, #57600
 6400 0128 0133     		adds	r3, r3, #1
 6401 012a 082B     		cmp	r3, #8
 6402 012c C2F88010 		str	r1, [r2, #128]
 6403 0130 C2F88011 		str	r1, [r2, #384]
 6404 0134 F3D1     		bne	.L1191
 6405 0136 4FF48E02 		mov	r2, #4653056
 6406 013a 314B     		ldr	r3, .L1207+28
 6407 013c 1568     		ldr	r5, [r2]
 6408 013e 05F12002 		add	r2, r5, #32
 6409 0142 9A42     		cmp	r2, r3
 6410 0144 0AD8     		bhi	.L1189
 6411 0146 2F4C     		ldr	r4, .L1207+32
 6412 0148 0FCC     		ldmia	r4!, {r0, r1, r2, r3}
 6413 014a 2860     		str	r0, [r5]	@ unaligned
 6414 014c 6960     		str	r1, [r5, #4]	@ unaligned
 6415 014e AA60     		str	r2, [r5, #8]	@ unaligned
 6416 0150 EB60     		str	r3, [r5, #12]	@ unaligned
 6417 0152 0FCC     		ldmia	r4!, {r0, r1, r2, r3}
 6418 0154 2861     		str	r0, [r5, #16]	@ unaligned
 6419 0156 6961     		str	r1, [r5, #20]	@ unaligned
 6420 0158 AA61     		str	r2, [r5, #24]	@ unaligned
 6421 015a EB61     		str	r3, [r5, #28]	@ unaligned
 6422              	.L1189:
 6423 015c 2A48     		ldr	r0, .L1207+36
 6424 015e FFF7FEFF 		bl	wdt_restart
 6425              	@ 445 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 6426 0162 BFF34F8F 		dsb
 6427              	@ 0 "" 2
 6428              	@ 434 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 6429 0166 BFF36F8F 		isb
 6430              	@ 0 "" 2
 6431              		.thumb
 6432 016a 284B     		ldr	r3, .L1207+40
 6433 016c 4FF48E02 		mov	r2, #4653056
 6434 0170 9A60     		str	r2, [r3, #8]
 6435              	@ 445 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 6436 0172 BFF34F8F 		dsb
 6437              	@ 0 "" 2
 6438              	@ 434 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 6439 0176 BFF36F8F 		isb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 114


 6440              	@ 0 "" 2
 6441              		.thumb
 6442 017a 0123     		movs	r3, #1
 6443 017c 3370     		strb	r3, [r6]
 6444              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 6445 017e BFF35F8F 		dmb
 6446              	@ 0 "" 2
 6447              	@ 319 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 6448 0182 62B6     		cpsie i
 6449              	@ 0 "" 2
 6450              	@ 1017 "../src/Platform.cpp" 1
 6451 0184 1346     		mov r3, r2
 6452              	@ 0 "" 2
 6453              	@ 1018 "../src/Platform.cpp" 1
 6454 0186 D3F800D0 		ldr sp, [r3]
 6455              	@ 0 "" 2
 6456              	@ 1019 "../src/Platform.cpp" 1
 6457 018a 5968     		ldr r1, [r3, #4]
 6458              	@ 0 "" 2
 6459              	@ 1020 "../src/Platform.cpp" 1
 6460 018c 41F00101 		orr r1, r1, #1
 6461              	@ 0 "" 2
 6462              	@ 1021 "../src/Platform.cpp" 1
 6463 0190 0847     		bx r1
 6464              	@ 0 "" 2
 6465              		.thumb
 6466 0192 0DF5027D 		add	sp, sp, #520
 6467              		@ sp needed
 6468 0196 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 6469              	.L1202:
 6470 019a 0094     		str	r4, [sp]
 6471 019c 5046     		mov	r0, r10
 6472 019e 0721     		movs	r1, #7
 6473 01a0 1B4A     		ldr	r2, .L1207+44
 6474 01a2 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6475 01a6 0DF5027D 		add	sp, sp, #520
 6476              		@ sp needed
 6477 01aa BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 6478              	.L1203:
 6479 01ae 5046     		mov	r0, r10
 6480 01b0 2346     		mov	r3, r4
 6481 01b2 0721     		movs	r1, #7
 6482 01b4 174A     		ldr	r2, .L1207+48
 6483 01b6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6484 01ba 0DF5027D 		add	sp, sp, #520
 6485              		@ sp needed
 6486 01be BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 6487              	.L1201:
 6488 01c2 5046     		mov	r0, r10
 6489 01c4 0721     		movs	r1, #7
 6490 01c6 144A     		ldr	r2, .L1207+52
 6491 01c8 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6492 01cc 0DF5027D 		add	sp, sp, #520
 6493              		@ sp needed
 6494 01d0 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 6495              	.L1206:
 6496 01d4 FFF7FEFF 		bl	millis
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 115


 6497 01d8 001B     		subs	r0, r0, r4
 6498 01da B0F5FA6F 		cmp	r0, #2000
 6499 01de 91D2     		bcs	.L1186
 6500 01e0 8BE7     		b	.L1187
 6501              	.L1208:
 6502 01e2 00BF     		.align	2
 6503              	.L1207:
 6504 01e4 2C010000 		.word	.LC20
 6505 01e8 B8010000 		.word	.LC24
 6506 01ec 00000000 		.word	reprap
 6507 01f0 00000000 		.word	g_interrupt_enabled
 6508 01f4 FFFB4700 		.word	4717567
 6509 01f8 24030000 		.word	.LC36
 6510 01fc 10E000E0 		.word	-536813552
 6511 0200 00000220 		.word	537001984
 6512 0204 3C030000 		.word	.LC37
 6513 0208 50180E40 		.word	1074665552
 6514 020c 00ED00E0 		.word	-536810240
 6515 0210 B4020000 		.word	.LC34
 6516 0214 E8020000 		.word	.LC35
 6517 0218 A4020000 		.word	.LC33
 6518 021c 00FC4700 		.word	4717568
 6519              		.size	_ZN8Platform14UpdateFirmwareEv, .-_ZN8Platform14UpdateFirmwareEv
 6520              		.section	.text._ZN8Platform11DiagnosticsE11MessageType,"ax",%progbits
 6521              		.align	2
 6522              		.global	_ZN8Platform11DiagnosticsE11MessageType
 6523              		.thumb
 6524              		.thumb_func
 6525              		.type	_ZN8Platform11DiagnosticsE11MessageType, %function
 6526              	_ZN8Platform11DiagnosticsE11MessageType:
 6527              		@ args = 0, pretend = 0, frame = 584
 6528              		@ frame_needed = 0, uses_anonymous_args = 0
 6529 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 6530 0004 C24A     		ldr	r2, .L1265+32
 6531 0006 C34D     		ldr	r5, .L1265+36
 6532 0008 DFF858A3 		ldr	r10, .L1265+116
 6533 000c DFF85883 		ldr	r8, .L1265+120
 6534 0010 ADF51B7D 		sub	sp, sp, #620
 6535 0014 0646     		mov	r6, r0
 6536 0016 0F46     		mov	r7, r1
 6537 0018 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6538 001c 13A8     		add	r0, sp, #76
 6539 001e FFF7FEFF 		bl	mallinfo
 6540 0022 3046     		mov	r0, r6
 6541 0024 3946     		mov	r1, r7
 6542 0026 BC4A     		ldr	r2, .L1265+40
 6543 0028 BC4B     		ldr	r3, .L1265+44
 6544 002a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6545 002e 3046     		mov	r0, r6
 6546 0030 3946     		mov	r1, r7
 6547 0032 1A9B     		ldr	r3, [sp, #104]
 6548 0034 BA4A     		ldr	r2, .L1265+48
 6549 0036 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6550 003a 3046     		mov	r0, r6
 6551 003c 3946     		mov	r1, r7
 6552 003e 1B9B     		ldr	r3, [sp, #108]
 6553 0040 B84A     		ldr	r2, .L1265+52
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 116


 6554 0042 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6555 0046 3046     		mov	r0, r6
 6556 0048 08A9     		add	r1, sp, #32
 6557 004a 09AA     		add	r2, sp, #36
 6558 004c 0AAB     		add	r3, sp, #40
 6559 004e FFF7FEFF 		bl	_ZNK8Platform13GetStackUsageEPmS0_S0_
 6560 0052 099A     		ldr	r2, [sp, #36]
 6561 0054 089B     		ldr	r3, [sp, #32]
 6562 0056 0092     		str	r2, [sp]
 6563 0058 3046     		mov	r0, r6
 6564 005a 3946     		mov	r1, r7
 6565 005c B24A     		ldr	r2, .L1265+56
 6566 005e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6567 0062 3946     		mov	r1, r7
 6568 0064 0A9B     		ldr	r3, [sp, #40]
 6569 0066 B14A     		ldr	r2, .L1265+60
 6570 0068 3046     		mov	r0, r6
 6571 006a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6572 006e 3046     		mov	r0, r6
 6573 0070 FFF7FEFF 		bl	_ZN8Platform4TimeEv
 6574 0074 AE4B     		ldr	r3, .L1265+64
 6575 0076 07EE900A 		fmsr	s15, r0
 6576 007a D3F80090 		ldr	r9, [r3]
 6577 007e 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 6578 0080 0DF12C0C 		add	ip, sp, #44
 6579 0084 6446     		mov	r4, ip
 6580 0086 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 6581 0088 95E80F00 		ldmia	r5, {r0, r1, r2, r3}
 6582 008c FCEEE77A 		ftouizs	s15, s15
 6583 0090 84E80F00 		stmia	r4, {r0, r1, r2, r3}
 6584 0094 17EE90EA 		fmrs	lr, s15	@ int
 6585 0098 AAFB0E13 		umull	r1, r3, r10, lr
 6586 009c A8FB0E12 		umull	r1, r2, r8, lr
 6587 00a0 DB0A     		lsrs	r3, r3, #11
 6588 00a2 4FF46160 		mov	r0, #3600
 6589 00a6 00FB13E0 		mls	r0, r0, r3, lr
 6590 00aa C9F30229 		ubfx	r9, r9, #8, #3
 6591 00ae 5209     		lsrs	r2, r2, #5
 6592 00b0 A8FB0018 		umull	r1, r8, r8, r0
 6593 00b4 C2EB0212 		rsb	r2, r2, r2, lsl #4
 6594 00b8 5CF82910 		ldr	r1, [ip, r9, lsl #2]
 6595 00bc 0291     		str	r1, [sp, #8]
 6596 00be AEEB8202 		sub	r2, lr, r2, lsl #2
 6597 00c2 4FEA5810 		lsr	r0, r8, #5
 6598 00c6 8DE80500 		stmia	sp, {r0, r2}
 6599 00ca 3946     		mov	r1, r7
 6600 00cc 3046     		mov	r0, r6
 6601 00ce 994A     		ldr	r2, .L1265+68
 6602 00d0 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6603 00d4 1DA8     		add	r0, sp, #116
 6604 00d6 0021     		movs	r1, #0
 6605 00d8 4FF4FA72 		mov	r2, #500
 6606 00dc FFF7FEFF 		bl	memset
 6607              	@ 470 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 6608 00e0 EFF31085 		MRS r5, primask
 6609              	@ 0 "" 2
 6610              	@ 330 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 117


 6611 00e4 72B6     		cpsid i
 6612              	@ 0 "" 2
 6613              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 6614 00e6 BFF35F8F 		dmb
 6615              	@ 0 "" 2
 6616              		.thumb
 6617 00ea 934C     		ldr	r4, .L1265+72
 6618 00ec 0023     		movs	r3, #0
 6619 00ee 1DA8     		add	r0, sp, #116
 6620 00f0 7D21     		movs	r1, #125
 6621 00f2 2370     		strb	r3, [r4]
 6622 00f4 FFF7FEFF 		bl	flash_read_user_signature
 6623 00f8 002D     		cmp	r5, #0
 6624 00fa 00F0EE81 		beq	.L1260
 6625              	.L1210:
 6626 00fe 70B9     		cbnz	r0, .L1211
 6627 0100 1DAB     		add	r3, sp, #116
 6628 0102 4FF00408 		mov	r8, #4
 6629 0106 4FF6FF71 		movw	r1, #65535
 6630              	.L1212:
 6631 010a B3F89021 		ldrh	r2, [r3, #400]
 6632 010e 8A42     		cmp	r2, r1
 6633 0110 A3F16403 		sub	r3, r3, #100
 6634 0114 40F0FB81 		bne	.L1261
 6635 0118 18F1FF38 		adds	r8, r8, #-1
 6636 011c F5D2     		bcs	.L1212
 6637              	.L1211:
 6638 011e 3046     		mov	r0, r6
 6639 0120 3946     		mov	r1, r7
 6640 0122 864A     		ldr	r2, .L1265+76
 6641 0124 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6642              	.L1238:
 6643 0128 3046     		mov	r0, r6
 6644 012a 3946     		mov	r1, r7
 6645 012c 844A     		ldr	r2, .L1265+80
 6646 012e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6647              	.L1218:
 6648 0132 844A     		ldr	r2, .L1265+84
 6649 0134 D6F8C430 		ldr	r3, [r6, #196]
 6650 0138 3046     		mov	r0, r6
 6651 013a 3946     		mov	r1, r7
 6652 013c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6653 0140 0022     		movs	r2, #0
 6654 0142 1346     		mov	r3, r2
 6655              	.L1221:
 6656 0144 B118     		adds	r1, r6, r2
 6657 0146 0432     		adds	r2, r2, #4
 6658 0148 D1F84018 		ldr	r1, [r1, #2112]
 6659 014c 91F82D10 		ldrb	r1, [r1, #45]	@ zero_extendqisi2
 6660 0150 01B9     		cbnz	r1, .L1219
 6661 0152 0133     		adds	r3, r3, #1
 6662              	.L1219:
 6663 0154 282A     		cmp	r2, #40
 6664 0156 F5D1     		bne	.L1221
 6665 0158 7B4A     		ldr	r2, .L1265+88
 6666 015a 7C4C     		ldr	r4, .L1265+92
 6667 015c 3946     		mov	r1, r7
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 118


 6668 015e 3046     		mov	r0, r6
 6669 0160 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6670 0164 0020     		movs	r0, #0
 6671 0166 FFF7FEFF 		bl	sd_mmc_card_detected
 6672 016a 794B     		ldr	r3, .L1265+96
 6673 016c 0028     		cmp	r0, #0
 6674 016e 18BF     		it	ne
 6675 0170 1C46     		movne	r4, r3
 6676 0172 FFF7FEFF 		bl	hsmci_get_speed
 6677 0176 07EE900A 		fmsr	s15, r0	@ int
 6678 017a F8EE677A 		fuitos	s15, s15
 6679 017e 17EE900A 		fmrs	r0, s15
 6680 0182 FFF7FEFF 		bl	__aeabi_f2d
 6681 0186 5AA3     		adr	r3, .L1265
 6682 0188 D3E90023 		ldrd	r2, [r3]
 6683 018c FFF7FEFF 		bl	__aeabi_ddiv
 6684 0190 2346     		mov	r3, r4
 6685 0192 704A     		ldr	r2, .L1265+100
 6686 0194 CDE90001 		strd	r0, [sp]
 6687 0198 3946     		mov	r1, r7
 6688 019a 3046     		mov	r0, r6
 6689 019c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6690 01a0 FFF7FEFF 		bl	_ZN9FileStore27GetAndClearLongestWriteTimeEv
 6691 01a4 FFF7FEFF 		bl	__aeabi_f2d
 6692 01a8 6B4A     		ldr	r2, .L1265+104
 6693 01aa CDE90001 		strd	r0, [sp]
 6694 01ae 3046     		mov	r0, r6
 6695 01b0 3946     		mov	r1, r7
 6696 01b2 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6697 01b6 06F6B403 		addw	r3, r6, #2228
 6698 01ba 1868     		ldr	r0, [r3]	@ float
 6699 01bc FFF7FEFF 		bl	__aeabi_f2d
 6700 01c0 0446     		mov	r4, r0
 6701 01c2 B6F8AE08 		ldrh	r0, [r6, #2222]
 6702 01c6 07EE900A 		fmsr	s15, r0	@ int
 6703 01ca F8EE677A 		fuitos	s15, s15
 6704 01ce 0D46     		mov	r5, r1
 6705 01d0 17EE900A 		fmrs	r0, s15
 6706 01d4 FFF7FEFF 		bl	__aeabi_f2d
 6707 01d8 47A3     		adr	r3, .L1265+8
 6708 01da D3E90023 		ldrd	r2, [r3]
 6709 01de FFF7FEFF 		bl	__aeabi_dmul
 6710 01e2 FFF7FEFF 		bl	__aeabi_d2f
 6711 01e6 FFF7FEFF 		bl	__aeabi_f2d
 6712 01ea 45A3     		adr	r3, .L1265+16
 6713 01ec D3E90023 		ldrd	r2, [r3]
 6714 01f0 FFF7FEFF 		bl	__aeabi_dsub
 6715 01f4 44A3     		adr	r3, .L1265+24
 6716 01f6 D3E90023 		ldrd	r2, [r3]
 6717 01fa FFF7FEFF 		bl	__aeabi_dmul
 6718 01fe 0022     		movs	r2, #0
 6719 0200 564B     		ldr	r3, .L1265+108
 6720 0202 FFF7FEFF 		bl	__aeabi_dadd
 6721 0206 2246     		mov	r2, r4
 6722 0208 2B46     		mov	r3, r5
 6723 020a FFF7FEFF 		bl	__aeabi_dadd
 6724 020e FFF7FEFF 		bl	__aeabi_d2f
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 119


 6725 0212 FFF7FEFF 		bl	__aeabi_f2d
 6726 0216 B6F8AA38 		ldrh	r3, [r6, #2218]
 6727 021a 07EE903A 		fmsr	s15, r3	@ int
 6728 021e F8EE677A 		fuitos	s15, s15
 6729 0222 CDE90001 		strd	r0, [sp]
 6730 0226 17EE900A 		fmrs	r0, s15
 6731 022a FFF7FEFF 		bl	__aeabi_f2d
 6732 022e 32A3     		adr	r3, .L1265+8
 6733 0230 D3E90023 		ldrd	r2, [r3]
 6734 0234 FFF7FEFF 		bl	__aeabi_dmul
 6735 0238 FFF7FEFF 		bl	__aeabi_d2f
 6736 023c FFF7FEFF 		bl	__aeabi_f2d
 6737 0240 2FA3     		adr	r3, .L1265+16
 6738 0242 D3E90023 		ldrd	r2, [r3]
 6739 0246 FFF7FEFF 		bl	__aeabi_dsub
 6740 024a 2FA3     		adr	r3, .L1265+24
 6741 024c D3E90023 		ldrd	r2, [r3]
 6742 0250 FFF7FEFF 		bl	__aeabi_dmul
 6743 0254 0022     		movs	r2, #0
 6744 0256 414B     		ldr	r3, .L1265+108
 6745 0258 FFF7FEFF 		bl	__aeabi_dadd
 6746 025c 0246     		mov	r2, r0
 6747 025e 0B46     		mov	r3, r1
 6748 0260 2046     		mov	r0, r4
 6749 0262 2946     		mov	r1, r5
 6750 0264 FFF7FEFF 		bl	__aeabi_dadd
 6751 0268 FFF7FEFF 		bl	__aeabi_d2f
 6752 026c FFF7FEFF 		bl	__aeabi_f2d
 6753 0270 B6F8AC38 		ldrh	r3, [r6, #2220]
 6754 0274 07EE903A 		fmsr	s15, r3	@ int
 6755 0278 F8EE677A 		fuitos	s15, s15
 6756 027c CDE90201 		strd	r0, [sp, #8]
 6757 0280 17EE900A 		fmrs	r0, s15
 6758 0284 FFF7FEFF 		bl	__aeabi_f2d
 6759 0288 1BA3     		adr	r3, .L1265+8
 6760 028a D3E90023 		ldrd	r2, [r3]
 6761 028e FFF7FEFF 		bl	__aeabi_dmul
 6762 0292 FFF7FEFF 		bl	__aeabi_d2f
 6763 0296 FFF7FEFF 		bl	__aeabi_f2d
 6764 029a 19A3     		adr	r3, .L1265+16
 6765 029c D3E90023 		ldrd	r2, [r3]
 6766 02a0 FFF7FEFF 		bl	__aeabi_dsub
 6767 02a4 18A3     		adr	r3, .L1265+24
 6768 02a6 D3E90023 		ldrd	r2, [r3]
 6769 02aa FFF7FEFF 		bl	__aeabi_dmul
 6770 02ae 0022     		movs	r2, #0
 6771 02b0 2A4B     		ldr	r3, .L1265+108
 6772 02b2 FFF7FEFF 		bl	__aeabi_dadd
 6773 02b6 0B46     		mov	r3, r1
 6774 02b8 0246     		mov	r2, r0
 6775 02ba 2946     		mov	r1, r5
 6776 02bc 2046     		mov	r0, r4
 6777 02be FFF7FEFF 		bl	__aeabi_dadd
 6778 02c2 FFF7FEFF 		bl	__aeabi_d2f
 6779 02c6 FFF7FEFF 		bl	__aeabi_f2d
 6780 02ca 254A     		ldr	r2, .L1265+112
 6781 02cc CDE90401 		strd	r0, [sp, #16]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 120


 6782 02d0 3046     		mov	r0, r6
 6783 02d2 3946     		mov	r1, r7
 6784 02d4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6785 02d8 B6F8BE08 		ldrh	r0, [r6, #2238]
 6786 02dc B6F8AA38 		ldrh	r3, [r6, #2218]
 6787 02e0 A6F8AC38 		strh	r3, [r6, #2220]	@ movhi
 6788 02e4 A6F8AE38 		strh	r3, [r6, #2222]	@ movhi
 6789 02e8 80B2     		uxth	r0, r0
 6790 02ea 3FE0     		b	.L1266
 6791              	.L1267:
 6792 02ec AFF30080 		.align	3
 6793              	.L1265:
 6794 02f0 00000000 		.word	0
 6795 02f4 80842E41 		.word	1093567616
 6796 02f8 66666666 		.word	1717986918
 6797 02fc 66664A3F 		.word	1061840486
 6798 0300 0AD7A370 		.word	1889785610
 6799 0304 3D0AF73F 		.word	1073154621
 6800 0308 720531B9 		.word	-1187969678
 6801 030c 82986A40 		.word	1080727682
 6802 0310 04040000 		.word	.LC51
 6803 0314 00000000 		.word	.LANCHOR24
 6804 0318 18040000 		.word	.LC52
 6805 031c 000000E0 		.word	_end-536870912
 6806 0320 30040000 		.word	.LC53
 6807 0324 48040000 		.word	.LC54
 6808 0328 64040000 		.word	.LC55
 6809 032c 8C040000 		.word	.LC56
 6810 0330 04180E40 		.word	1074665476
 6811 0334 A0040000 		.word	.LC58
 6812 0338 00000000 		.word	g_interrupt_enabled
 6813 033c 28070000 		.word	.LC75
 6814 0340 78050000 		.word	.LC63
 6815 0344 88050000 		.word	.LC64
 6816 0348 9C050000 		.word	.LC65
 6817 034c 68030000 		.word	.LC39
 6818 0350 5C030000 		.word	.LC38
 6819 0354 B4050000 		.word	.LC66
 6820 0358 E4050000 		.word	.LC67
 6821 035c 00003B40 		.word	1077608448
 6822 0360 10060000 		.word	.LC68
 6823 0364 C5B3A291 		.word	-1851608123
 6824 0368 89888888 		.word	-2004318071
 6825              	.L1266:
 6826 036c FFF7FEFF 		bl	__aeabi_i2d
 6827 0370 A2A3     		adr	r3, .L1268+84
 6828 0372 D3E90023 		ldrd	r2, [r3]
 6829 0376 FFF7FEFF 		bl	__aeabi_dmul
 6830 037a FFF7FEFF 		bl	__aeabi_d2f
 6831 037e B6F8BA58 		ldrh	r5, [r6, #2234]
 6832 0382 B6F8BC48 		ldrh	r4, [r6, #2236]
 6833 0386 FFF7FEFF 		bl	__aeabi_f2d
 6834 038a ADB2     		uxth	r5, r5
 6835 038c CDE90001 		strd	r0, [sp]
 6836 0390 2846     		mov	r0, r5
 6837 0392 FFF7FEFF 		bl	__aeabi_i2d
 6838 0396 99A3     		adr	r3, .L1268+84
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 121


 6839 0398 D3E90023 		ldrd	r2, [r3]
 6840 039c FFF7FEFF 		bl	__aeabi_dmul
 6841 03a0 FFF7FEFF 		bl	__aeabi_d2f
 6842 03a4 FFF7FEFF 		bl	__aeabi_f2d
 6843 03a8 A4B2     		uxth	r4, r4
 6844 03aa CDE90201 		strd	r0, [sp, #8]
 6845 03ae 2046     		mov	r0, r4
 6846 03b0 FFF7FEFF 		bl	__aeabi_i2d
 6847 03b4 91A3     		adr	r3, .L1268+84
 6848 03b6 D3E90023 		ldrd	r2, [r3]
 6849 03ba FFF7FEFF 		bl	__aeabi_dmul
 6850 03be FFF7FEFF 		bl	__aeabi_d2f
 6851 03c2 FFF7FEFF 		bl	__aeabi_f2d
 6852 03c6 D6F8C428 		ldr	r2, [r6, #2244]
 6853 03ca D6F8C038 		ldr	r3, [r6, #2240]
 6854 03ce 0693     		str	r3, [sp, #24]
 6855 03d0 CDE90401 		strd	r0, [sp, #16]
 6856 03d4 0792     		str	r2, [sp, #28]
 6857 03d6 3046     		mov	r0, r6
 6858 03d8 734A     		ldr	r2, .L1268
 6859 03da 3946     		mov	r1, r7
 6860 03dc FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6861 03e0 96F8AC20 		ldrb	r2, [r6, #172]	@ zero_extendqisi2
 6862 03e4 B6F8BA38 		ldrh	r3, [r6, #2234]
 6863 03e8 023A     		subs	r2, r2, #2
 6864 03ea 9BB2     		uxth	r3, r3
 6865 03ec 012A     		cmp	r2, #1
 6866 03ee A6F8BC38 		strh	r3, [r6, #2236]	@ movhi
 6867 03f2 A6F8BE38 		strh	r3, [r6, #2238]	@ movhi
 6868 03f6 7CD9     		bls	.L1262
 6869              	.L1223:
 6870 03f8 D6F87032 		ldr	r3, [r6, #624]
 6871 03fc 002B     		cmp	r3, #0
 6872 03fe 46D0     		beq	.L1234
 6873 0400 6A4D     		ldr	r5, .L1268+4
 6874 0402 DFF80082 		ldr	r8, .L1268+92
 6875 0406 0024     		movs	r4, #0
 6876 0408 34E0     		b	.L1235
 6877              	.L1263:
 6878 040a 694B     		ldr	r3, .L1268+8
 6879 040c 10F0040F 		tst	r0, #4
 6880 0410 0CBF     		ite	eq
 6881 0412 AC46     		moveq	ip, r5
 6882 0414 9C46     		movne	ip, r3
 6883              	.L1229:
 6884 0416 DFF8F0E1 		ldr	lr, .L1268+96
 6885 041a 6649     		ldr	r1, .L1268+12
 6886 041c 664A     		ldr	r2, .L1268+16
 6887 041e DFF8ECA1 		ldr	r10, .L1268+100
 6888 0422 664B     		ldr	r3, .L1268+20
 6889 0424 10F0180F 		tst	r0, #24
 6890 0428 00F0A00B 		and	fp, r0, #160
 6891 042c 08BF     		it	eq
 6892 042e AE46     		moveq	lr, r5
 6893 0430 BBF1200F 		cmp	fp, #32
 6894 0434 18BF     		it	ne
 6895 0436 2946     		movne	r1, r5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 122


 6896 0438 00F0C00B 		and	fp, r0, #192
 6897 043c BBF1400F 		cmp	fp, #64
 6898 0440 18BF     		it	ne
 6899 0442 2A46     		movne	r2, r5
 6900 0444 10F0800F 		tst	r0, #128
 6901 0448 04D1     		bne	.L1233
 6902 044a 10F07F0F 		tst	r0, #127
 6903 044e 0CBF     		ite	eq
 6904 0450 5346     		moveq	r3, r10
 6905 0452 2B46     		movne	r3, r5
 6906              	.L1233:
 6907 0454 0391     		str	r1, [sp, #12]
 6908 0456 0492     		str	r2, [sp, #16]
 6909 0458 0593     		str	r3, [sp, #20]
 6910 045a 8DE80052 		stmia	sp, {r9, ip, lr}
 6911 045e 2346     		mov	r3, r4
 6912 0460 3046     		mov	r0, r6
 6913 0462 3946     		mov	r1, r7
 6914 0464 564A     		ldr	r2, .L1268+24
 6915 0466 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6916 046a D6F87032 		ldr	r3, [r6, #624]
 6917 046e 0134     		adds	r4, r4, #1
 6918 0470 A342     		cmp	r3, r4
 6919 0472 0CD9     		bls	.L1234
 6920              	.L1235:
 6921 0474 2046     		mov	r0, r4
 6922 0476 FFF7FEFF 		bl	_ZN7TMC26609GetStatusEj
 6923 047a 10F0010F 		tst	r0, #1
 6924 047e 0CBF     		ite	eq
 6925 0480 A946     		moveq	r9, r5
 6926 0482 C146     		movne	r9, r8
 6927 0484 8307     		lsls	r3, r0, #30
 6928 0486 C0D5     		bpl	.L1263
 6929 0488 DFF884C1 		ldr	ip, .L1268+104
 6930 048c C3E7     		b	.L1229
 6931              	.L1234:
 6932 048e 3046     		mov	r0, r6
 6933 0490 3946     		mov	r1, r7
 6934 0492 4C4A     		ldr	r2, .L1268+28
 6935 0494 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6936 0498 06F50D60 		add	r0, r6, #2256
 6937 049c 1DA9     		add	r1, sp, #116
 6938 049e FFF7FEFF 		bl	gmtime_r
 6939 04a2 00B3     		cbz	r0, .L1264
 6940 04a4 219D     		ldr	r5, [sp, #132]
 6941 04a6 229B     		ldr	r3, [sp, #136]
 6942 04a8 2098     		ldr	r0, [sp, #128]
 6943 04aa 1E99     		ldr	r1, [sp, #120]
 6944 04ac 1D9A     		ldr	r2, [sp, #116]
 6945 04ae 1F9C     		ldr	r4, [sp, #124]
 6946 04b0 0190     		str	r0, [sp, #4]
 6947 04b2 0135     		adds	r5, r5, #1
 6948 04b4 0391     		str	r1, [sp, #12]
 6949 04b6 0492     		str	r2, [sp, #16]
 6950 04b8 3046     		mov	r0, r6
 6951 04ba 0095     		str	r5, [sp]
 6952 04bc 03F26C73 		addw	r3, r3, #1900
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 123


 6953 04c0 0294     		str	r4, [sp, #8]
 6954 04c2 3946     		mov	r1, r7
 6955 04c4 404A     		ldr	r2, .L1268+32
 6956 04c6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6957              	.L1236:
 6958 04ca 3946     		mov	r1, r7
 6959 04cc 3F48     		ldr	r0, .L1268+36
 6960 04ce FFF7FEFF 		bl	_ZN6RepRap6TimingE11MessageType
 6961 04d2 0DF51B7D 		add	sp, sp, #620
 6962              		@ sp needed
 6963 04d6 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6964              	.L1260:
 6965 04da 0123     		movs	r3, #1
 6966 04dc 2370     		strb	r3, [r4]
 6967              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 6968 04de BFF35F8F 		dmb
 6969              	@ 0 "" 2
 6970              	@ 319 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 6971 04e2 62B6     		cpsie i
 6972              	@ 0 "" 2
 6973              		.thumb
 6974 04e4 0BE6     		b	.L1210
 6975              	.L1264:
 6976 04e6 3046     		mov	r0, r6
 6977 04e8 3946     		mov	r1, r7
 6978 04ea 394A     		ldr	r2, .L1268+40
 6979 04ec FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6980 04f0 EBE7     		b	.L1236
 6981              	.L1262:
 6982 04f2 6020     		movs	r0, #96
 6983 04f4 FFF7FEFF 		bl	digitalRead
 6984 04f8 3649     		ldr	r1, .L1268+44
 6985 04fa 374B     		ldr	r3, .L1268+48
 6986 04fc 374A     		ldr	r2, .L1268+52
 6987 04fe 0028     		cmp	r0, #0
 6988 0500 08BF     		it	eq
 6989 0502 0B46     		moveq	r3, r1
 6990 0504 3046     		mov	r0, r6
 6991 0506 3946     		mov	r1, r7
 6992 0508 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 6993 050c 74E7     		b	.L1223
 6994              	.L1261:
 6995 050e 3946     		mov	r1, r7
 6996 0510 334A     		ldr	r2, .L1268+56
 6997 0512 3046     		mov	r0, r6
 6998 0514 6424     		movs	r4, #100
 6999 0516 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 7000 051a 04FB08F4 		mul	r4, r4, r8
 7001 051e 1DA9     		add	r1, sp, #116
 7002 0520 47F60753 		movw	r3, #32007
 7003 0524 0A5B     		ldrh	r2, [r1, r4]
 7004 0526 9A42     		cmp	r2, r3
 7005 0528 0C44     		add	r4, r4, r1
 7006 052a 7FF4FDAD 		bne	.L1238
 7007 052e A268     		ldr	r2, [r4, #8]
 7008 0530 E568     		ldr	r5, [r4, #12]
 7009 0532 6388     		ldrh	r3, [r4, #2]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 124


 7010 0534 2069     		ldr	r0, [r4, #16]
 7011 0536 6169     		ldr	r1, [r4, #20]
 7012 0538 0391     		str	r1, [sp, #12]
 7013 053a 8DE82400 		stmia	sp, {r2, r5}
 7014 053e 0290     		str	r0, [sp, #8]
 7015 0540 A169     		ldr	r1, [r4, #24]
 7016 0542 0491     		str	r1, [sp, #16]
 7017 0544 3046     		mov	r0, r6
 7018 0546 3946     		mov	r1, r7
 7019 0548 264A     		ldr	r2, .L1268+60
 7020 054a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7021 054e A369     		ldr	r3, [r4, #24]
 7022 0550 0133     		adds	r3, r3, #1
 7023 0552 15D0     		beq	.L1215
 7024 0554 244B     		ldr	r3, .L1268+64
 7025 0556 1B68     		ldr	r3, [r3]
 7026 0558 0025     		movs	r5, #0
 7027 055a 1D70     		strb	r5, [r3]
 7028              	.L1217:
 7029 055c 6319     		adds	r3, r4, r5
 7030 055e DFF88890 		ldr	r9, .L1268+64
 7031 0562 2249     		ldr	r1, .L1268+68
 7032 0564 DA69     		ldr	r2, [r3, #28]
 7033 0566 4846     		mov	r0, r9
 7034 0568 0435     		adds	r5, r5, #4
 7035 056a FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 7036 056e 482D     		cmp	r5, #72
 7037 0570 F4D1     		bne	.L1217
 7038 0572 D9F80030 		ldr	r3, [r9]
 7039 0576 1E4A     		ldr	r2, .L1268+72
 7040 0578 3046     		mov	r0, r6
 7041 057a 3946     		mov	r1, r7
 7042 057c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7043              	.L1215:
 7044 0580 1DAA     		add	r2, sp, #116
 7045 0582 6423     		movs	r3, #100
 7046 0584 03FB0823 		mla	r3, r3, r8, r2
 7047 0588 1A4A     		ldr	r2, .L1268+76
 7048 058a 5988     		ldrh	r1, [r3, #2]
 7049 058c 5B68     		ldr	r3, [r3, #4]
 7050 058e 0093     		str	r3, [sp]
 7051 0590 01F00F01 		and	r1, r1, #15
 7052 0594 CDF80480 		str	r8, [sp, #4]
 7053 0598 52F82130 		ldr	r3, [r2, r1, lsl #2]
 7054 059c 164A     		ldr	r2, .L1268+80
 7055 059e 3046     		mov	r0, r6
 7056 05a0 3946     		mov	r1, r7
 7057 05a2 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 7058 05a6 C4E5     		b	.L1218
 7059              	.L1269:
 7060              		.align	3
 7061              	.L1268:
 7062 05a8 44060000 		.word	.LC69
 7063 05ac 8C030000 		.word	.LC43
 7064 05b0 A8030000 		.word	.LC45
 7065 05b4 D4030000 		.word	.LC47
 7066 05b8 E4030000 		.word	.LC48
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 125


 7067 05bc F8030000 		.word	.LC50
 7068 05c0 E4060000 		.word	.LC72
 7069 05c4 D8060000 		.word	.LC71
 7070 05c8 FC060000 		.word	.LC73
 7071 05cc 00000000 		.word	reprap
 7072 05d0 1C070000 		.word	.LC74
 7073 05d4 7C030000 		.word	.LC41
 7074 05d8 78030000 		.word	.LC40
 7075 05dc AC060000 		.word	.LC70
 7076 05e0 28070000 		.word	.LC75
 7077 05e4 CC040000 		.word	.LC59
 7078 05e8 00000000 		.word	scratchString
 7079 05ec 14050000 		.word	.LC60
 7080 05f0 1C050000 		.word	.LC61
 7081 05f4 00000000 		.word	moduleName
 7082 05f8 28050000 		.word	.LC62
 7083 05fc 00000060 		.word	1610612736
 7084 0600 6626823F 		.word	1065494118
 7085 0604 80030000 		.word	.LC42
 7086 0608 C0030000 		.word	.LC46
 7087 060c F4030000 		.word	.LC49
 7088 0610 90030000 		.word	.LC44
 7089              		.size	_ZN8Platform11DiagnosticsE11MessageType, .-_ZN8Platform11DiagnosticsE11MessageType
 7090 0614 AFF30080 		.section	.text._ZN8Platform4SpinEv,"ax",%progbits
 7091              		.align	2
 7092              		.global	_ZN8Platform4SpinEv
 7093              		.thumb
 7094              		.thumb_func
 7095              		.type	_ZN8Platform4SpinEv, %function
 7096              	_ZN8Platform4SpinEv:
 7097              		@ args = 0, pretend = 0, frame = 0
 7098              		@ frame_needed = 0, uses_anonymous_args = 0
 7099 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 7100 0002 90F8C060 		ldrb	r6, [r0, #192]	@ zero_extendqisi2
 7101 0006 0446     		mov	r4, r0
 7102 0008 002E     		cmp	r6, #0
 7103 000a 6DD0     		beq	.L1270
 7104 000c 0025     		movs	r5, #0
 7105 000e 01E0     		b	.L1274
 7106              	.L1272:
 7107 0010 282D     		cmp	r5, #40
 7108 0012 0BD0     		beq	.L1300
 7109              	.L1274:
 7110 0014 6319     		adds	r3, r4, r5
 7111 0016 0435     		adds	r5, r5, #4
 7112 0018 D3F84008 		ldr	r0, [r3, #2112]
 7113 001c 90F82C30 		ldrb	r3, [r0, #44]	@ zero_extendqisi2
 7114 0020 002B     		cmp	r3, #0
 7115 0022 F5D0     		beq	.L1272
 7116 0024 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 7117 0028 282D     		cmp	r5, #40
 7118 002a F3D1     		bne	.L1274
 7119              	.L1300:
 7120 002c 2046     		mov	r0, r4
 7121 002e FFF7FEFF 		bl	_ZN8Platform13FlushMessagesEv
 7122 0032 0025     		movs	r5, #0
 7123 0034 04F5E267 		add	r7, r4, #1808
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 126


 7124              	.L1276:
 7125 0038 7819     		adds	r0, r7, r5
 7126 003a 2035     		adds	r5, r5, #32
 7127 003c FFF7FEFF 		bl	_ZN3Fan5CheckEv
 7128 0040 B5F5807F 		cmp	r5, #256
 7129 0044 F8D1     		bne	.L1276
 7130 0046 B4F8AA38 		ldrh	r3, [r4, #2218]
 7131 004a B4F8AC28 		ldrh	r2, [r4, #2220]
 7132 004e 9A42     		cmp	r2, r3
 7133 0050 B4F8AE28 		ldrh	r2, [r4, #2222]
 7134 0054 38BF     		it	cc
 7135 0056 A4F8AC38 		strhcc	r3, [r4, #2220]	@ movhi
 7136 005a 9A42     		cmp	r2, r3
 7137 005c 02D9     		bls	.L1278
 7138 005e 0BB1     		cbz	r3, .L1278
 7139 0060 A4F8AE38 		strh	r3, [r4, #2222]	@ movhi
 7140              	.L1278:
 7141 0064 D4F89C38 		ldr	r3, [r4, #2204]
 7142 0068 40F2EA32 		movw	r2, #1002
 7143 006c 9342     		cmp	r3, r2
 7144 006e 2AD0     		beq	.L1280
 7145 0070 94F8CC08 		ldrb	r0, [r4, #2252]	@ zero_extendqisi2
 7146 0074 40BB     		cbnz	r0, .L1301
 7147 0076 B4F8BA38 		ldrh	r3, [r4, #2234]
 7148 007a 9BB2     		uxth	r3, r3
 7149 007c B3F58D6F 		cmp	r3, #1128
 7150 0080 09D3     		bcc	.L1283
 7151 0082 B4F8BA38 		ldrh	r3, [r4, #2234]
 7152 0086 9BB2     		uxth	r3, r3
 7153 0088 B3F5426F 		cmp	r3, #3104
 7154 008c 03D2     		bcs	.L1283
 7155 008e 0123     		movs	r3, #1
 7156 0090 3046     		mov	r0, r6
 7157 0092 84F8CC38 		strb	r3, [r4, #2252]
 7158              	.L1283:
 7159 0096 FFF7FEFF 		bl	_ZN7TMC266017SetDriversPoweredEb
 7160 009a FFF7FEFF 		bl	millis
 7161 009e 94F8CD38 		ldrb	r3, [r4, #2253]	@ zero_extendqisi2
 7162 00a2 0546     		mov	r5, r0
 7163 00a4 2BB1     		cbz	r3, .L1290
 7164 00a6 D4F8C838 		ldr	r3, [r4, #2248]
 7165 00aa C31A     		subs	r3, r0, r3
 7166 00ac B3F57A6F 		cmp	r3, #4000
 7167 00b0 43D8     		bhi	.L1302
 7168              	.L1290:
 7169 00b2 D4F8D038 		ldr	r3, [r4, #2256]
 7170 00b6 C3B9     		cbnz	r3, .L1303
 7171              	.L1288:
 7172 00b8 2046     		mov	r0, r4
 7173 00ba 04F1B401 		add	r1, r4, #180
 7174 00be BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 7175 00c2 FFF7FEBF 		b	_ZN8Platform11ClassReportERf
 7176              	.L1280:
 7177 00c6 FEE7     		b	.L1280
 7178              	.L1301:
 7179 00c8 B4F8BA28 		ldrh	r2, [r4, #2234]
 7180 00cc 40F22E43 		movw	r3, #1070
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 127


 7181 00d0 92B2     		uxth	r2, r2
 7182 00d2 9A42     		cmp	r2, r3
 7183 00d4 21D8     		bhi	.L1282
 7184 00d6 D4F8C038 		ldr	r3, [r4, #2240]
 7185 00da 0020     		movs	r0, #0
 7186 00dc 0133     		adds	r3, r3, #1
 7187 00de C4F8C038 		str	r3, [r4, #2240]
 7188 00e2 84F8CC08 		strb	r0, [r4, #2252]
 7189 00e6 D6E7     		b	.L1283
 7190              	.L1270:
 7191 00e8 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 7192              	.L1303:
 7193 00ea FFF7FEFF 		bl	millis
 7194 00ee D4F8D438 		ldr	r3, [r4, #2260]
 7195 00f2 C01A     		subs	r0, r0, r3
 7196 00f4 B0F57A7F 		cmp	r0, #1000
 7197 00f8 DED3     		bcc	.L1288
 7198 00fa D4F8D028 		ldr	r2, [r4, #2256]
 7199 00fe 03F57A73 		add	r3, r3, #1000
 7200 0102 0132     		adds	r2, r2, #1
 7201 0104 C4F8D438 		str	r3, [r4, #2260]
 7202 0108 C4F8D028 		str	r2, [r4, #2256]
 7203 010c 2046     		mov	r0, r4
 7204 010e 04F1B401 		add	r1, r4, #180
 7205 0112 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 7206 0116 FFF7FEBF 		b	_ZN8Platform11ClassReportERf
 7207              	.L1282:
 7208 011a B4F8BA28 		ldrh	r2, [r4, #2234]
 7209 011e 40F6C843 		movw	r3, #3272
 7210 0122 92B2     		uxth	r2, r2
 7211 0124 9A42     		cmp	r2, r3
 7212 0126 B6D9     		bls	.L1283
 7213 0128 D4F8C438 		ldr	r3, [r4, #2244]
 7214 012c 0020     		movs	r0, #0
 7215 012e 0133     		adds	r3, r3, #1
 7216 0130 C4F8C438 		str	r3, [r4, #2244]
 7217 0134 84F8CC08 		strb	r0, [r4, #2252]
 7218 0138 ADE7     		b	.L1283
 7219              	.L1302:
 7220 013a 6720     		movs	r0, #103
 7221 013c FFF7FEFF 		bl	digitalRead
 7222 0140 0028     		cmp	r0, #0
 7223 0142 B6D0     		beq	.L1290
 7224 0144 2046     		mov	r0, r4
 7225 0146 0621     		movs	r1, #6
 7226 0148 024A     		ldr	r2, .L1304
 7227 014a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 7228 014e C4F8C858 		str	r5, [r4, #2248]
 7229 0152 AEE7     		b	.L1290
 7230              	.L1305:
 7231              		.align	2
 7232              	.L1304:
 7233 0154 44070000 		.word	.LC76
 7234              		.size	_ZN8Platform4SpinEv, .-_ZN8Platform4SpinEv
 7235              		.section	.rodata
 7236              		.align	2
 7237              		.set	.LANCHOR24,. + 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 128


 7238              	.LC57:
 7239 0000 58070000 		.word	.LC0
 7240 0004 64070000 		.word	.LC1
 7241 0008 6C070000 		.word	.LC2
 7242 000c 78070000 		.word	.LC3
 7243 0010 84070000 		.word	.LC4
 7244 0014 A0070000 		.word	.LC5
 7245 0018 A0070000 		.word	.LC5
 7246 001c A0070000 		.word	.LC5
 7247              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 7248              		.align	2
 7249              		.type	_ZL32cpu_irq_critical_section_counter, %object
 7250              		.size	_ZL32cpu_irq_critical_section_counter, 4
 7251              	_ZL32cpu_irq_critical_section_counter:
 7252 0000 00000000 		.space	4
 7253              		.section	.rodata._ZL14DefaultGateway,"a",%progbits
 7254              		.align	2
 7255              		.set	.LANCHOR12,. + 0
 7256              		.type	_ZL14DefaultGateway, %object
 7257              		.size	_ZL14DefaultGateway, 4
 7258              	_ZL14DefaultGateway:
 7259 0000 00000000 		.space	4
 7260              		.section	.rodata._ZL17DefaultMacAddress,"a",%progbits
 7261              		.align	2
 7262              		.set	.LANCHOR13,. + 0
 7263              		.type	_ZL17DefaultMacAddress, %object
 7264              		.size	_ZL17DefaultMacAddress, 6
 7265              	_ZL17DefaultMacAddress:
 7266 0000 BE       		.byte	-66
 7267 0001 EF       		.byte	-17
 7268 0002 DE       		.byte	-34
 7269 0003 AD       		.byte	-83
 7270 0004 FE       		.byte	-2
 7271 0005 ED       		.byte	-19
 7272 0006 0000     		.section	.rodata._ZL11AXIS_MAXIMA,"a",%progbits
 7273              		.align	2
 7274              		.set	.LANCHOR19,. + 0
 7275              		.type	_ZL11AXIS_MAXIMA, %object
 7276              		.size	_ZL11AXIS_MAXIMA, 24
 7277              	_ZL11AXIS_MAXIMA:
 7278 0000 00006643 		.word	1130758144
 7279 0004 00005243 		.word	1129447424
 7280 0008 00004843 		.word	1128792064
 7281 000c 00000000 		.word	0
 7282 0010 00000000 		.word	0
 7283 0014 00000000 		.word	0
 7284              		.section	.rodata._ZL20DRIVE_STEPS_PER_UNIT,"a",%progbits
 7285              		.align	2
 7286              		.set	.LANCHOR17,. + 0
 7287              		.type	_ZL20DRIVE_STEPS_PER_UNIT, %object
 7288              		.size	_ZL20DRIVE_STEPS_PER_UNIT, 40
 7289              	_ZL20DRIVE_STEPS_PER_UNIT:
 7290 0000 5EFAAE42 		.word	1118763614
 7291 0004 5EFAAE42 		.word	1118763614
 7292 0008 00007A45 		.word	1165623296
 7293 000c 0000D243 		.word	1137836032
 7294 0010 0000D243 		.word	1137836032
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 129


 7295 0014 0000D243 		.word	1137836032
 7296 0018 0000D243 		.word	1137836032
 7297 001c 0000D243 		.word	1137836032
 7298 0020 0000D243 		.word	1137836032
 7299 0024 0000D243 		.word	1137836032
 7300              		.section	.rodata._ZL13END_STOP_PINS,"a",%progbits
 7301              		.align	2
 7302              		.set	.LANCHOR14,. + 0
 7303              		.type	_ZL13END_STOP_PINS, %object
 7304              		.size	_ZL13END_STOP_PINS, 10
 7305              	_ZL13END_STOP_PINS:
 7306 0000 2E       		.byte	46
 7307 0001 02       		.byte	2
 7308 0002 5D       		.byte	93
 7309 0003 4A       		.byte	74
 7310 0004 30       		.byte	48
 7311 0005 C8       		.byte	-56
 7312 0006 CB       		.byte	-53
 7313 0007 CA       		.byte	-54
 7314 0008 C9       		.byte	-55
 7315 0009 D5       		.byte	-43
 7316 000a 0000     		.section	.rodata._ZL13MAX_FEEDRATES,"a",%progbits
 7317              		.align	2
 7318              		.set	.LANCHOR15,. + 0
 7319              		.type	_ZL13MAX_FEEDRATES, %object
 7320              		.size	_ZL13MAX_FEEDRATES, 40
 7321              	_ZL13MAX_FEEDRATES:
 7322 0000 0000C842 		.word	1120403456
 7323 0004 0000C842 		.word	1120403456
 7324 0008 00004040 		.word	1077936128
 7325 000c 0000A041 		.word	1101004800
 7326 0010 0000A041 		.word	1101004800
 7327 0014 0000A041 		.word	1101004800
 7328 0018 0000A041 		.word	1101004800
 7329 001c 0000A041 		.word	1101004800
 7330 0020 0000A041 		.word	1101004800
 7331 0024 0000A041 		.word	1101004800
 7332              		.section	.rodata._ZL13SpecialPinMap,"a",%progbits
 7333              		.align	2
 7334              		.set	.LANCHOR8,. + 0
 7335              		.type	_ZL13SpecialPinMap, %object
 7336              		.size	_ZL13SpecialPinMap, 4
 7337              	_ZL13SpecialPinMap:
 7338 0000 58       		.byte	88
 7339 0001 61       		.byte	97
 7340 0002 62       		.byte	98
 7341 0003 63       		.byte	99
 7342              		.section	.rodata._ZL15DueX5GpioPinMap,"a",%progbits
 7343              		.align	2
 7344              		.set	.LANCHOR9,. + 0
 7345              		.type	_ZL15DueX5GpioPinMap, %object
 7346              		.size	_ZL15DueX5GpioPinMap, 4
 7347              	_ZL15DueX5GpioPinMap:
 7348 0000 D3       		.byte	-45
 7349 0001 D2       		.byte	-46
 7350 0002 D1       		.byte	-47
 7351 0003 D0       		.byte	-48
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 130


 7352              		.section	.rodata._ZL14DIRECTION_PINS,"a",%progbits
 7353              		.align	2
 7354              		.set	.LANCHOR5,. + 0
 7355              		.type	_ZL14DIRECTION_PINS, %object
 7356              		.size	_ZL14DIRECTION_PINS, 10
 7357              	_ZL14DIRECTION_PINS:
 7358 0000 4B       		.byte	75
 7359 0001 4C       		.byte	76
 7360 0002 4D       		.byte	77
 7361 0003 01       		.byte	1
 7362 0004 49       		.byte	73
 7363 0005 5C       		.byte	92
 7364 0006 56       		.byte	86
 7365 0007 50       		.byte	80
 7366 0008 51       		.byte	81
 7367 0009 20       		.byte	32
 7368 000a 0000     		.section	.rodata._ZL14DefaultNetMask,"a",%progbits
 7369              		.align	2
 7370              		.set	.LANCHOR11,. + 0
 7371              		.type	_ZL14DefaultNetMask, %object
 7372              		.size	_ZL14DefaultNetMask, 4
 7373              	_ZL14DefaultNetMask:
 7374 0000 FF       		.byte	-1
 7375 0001 FF       		.byte	-1
 7376 0002 FF       		.byte	-1
 7377 0003 00       		.byte	0
 7378              		.section	.rodata._ZL15TEMP_SENSE_PINS,"a",%progbits
 7379              		.align	2
 7380              		.set	.LANCHOR21,. + 0
 7381              		.type	_ZL15TEMP_SENSE_PINS, %object
 7382              		.size	_ZL15TEMP_SENSE_PINS, 8
 7383              	_ZL15TEMP_SENSE_PINS:
 7384 0000 2D       		.byte	45
 7385 0001 2F       		.byte	47
 7386 0002 2C       		.byte	44
 7387 0003 3D       		.byte	61
 7388 0004 3E       		.byte	62
 7389 0005 3F       		.byte	63
 7390 0006 3B       		.byte	59
 7391 0007 12       		.byte	18
 7392              		.section	.rodata._ZL12HEAT_ON_PINS,"a",%progbits
 7393              		.align	2
 7394              		.set	.LANCHOR22,. + 0
 7395              		.type	_ZL12HEAT_ON_PINS, %object
 7396              		.size	_ZL12HEAT_ON_PINS, 8
 7397              	_ZL12HEAT_ON_PINS:
 7398 0000 13       		.byte	19
 7399 0001 14       		.byte	20
 7400 0002 10       		.byte	16
 7401 0003 23       		.byte	35
 7402 0004 25       		.byte	37
 7403 0005 28       		.byte	40
 7404 0006 2B       		.byte	43
 7405 0007 0F       		.byte	15
 7406              		.section	.rodata.str1.4,"aMS",%progbits,1
 7407              		.align	2
 7408              	.LC7:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 131


 7409 0000 47333120 		.ascii	"G31 T%u P%d X%.1f Y%.1f Z%.2f\012\000"
 7409      54257520 
 7409      50256420 
 7409      58252E31 
 7409      66205925 
 7410 001f 00       		.space	1
 7411              	.LC8:
 7412 0020 3B205A20 		.ascii	"; Z probe parameters\012\000"
 7412      70726F62 
 7412      65207061 
 7412      72616D65 
 7412      74657273 
 7413 0036 0000     		.space	2
 7414              	.LC9:
 7415 0038 44756574 		.ascii	"Duet Ethernet 1.0\000"
 7415      20457468 
 7415      65726E65 
 7415      7420312E 
 7415      3000
 7416 004a 0000     		.space	2
 7417              	.LC10:
 7418 004c 556E6964 		.ascii	"Unidentified\000"
 7418      656E7469 
 7418      66696564 
 7418      00
 7419 0059 000000   		.space	3
 7420              	.LC11:
 7421 005c 64756574 		.ascii	"duetethernet10\000"
 7421      65746865 
 7421      726E6574 
 7421      313000
 7422 006b 00       		.space	1
 7423              	.LC12:
 7424 006c 756E6B6E 		.ascii	"unknown\000"
 7424      6F776E00 
 7425              	.LC13:
 7426 0074 7B226D65 		.ascii	"{\"message\":\"\"}\000"
 7426      73736167 
 7426      65223A22 
 7426      227D00
 7427 0083 00       		.space	1
 7428              	.LC14:
 7429 0084 7B226D65 		.ascii	"{\"message\":\"{reboot:true}\"}\000"
 7429      73736167 
 7429      65223A22 
 7429      7B726562 
 7429      6F6F743A 
 7430              	.LC15:
 7431 00a0 41747465 		.ascii	"Attempt to emulate unsupported firmware.\012\000"
 7431      6D707420 
 7431      746F2065 
 7431      6D756C61 
 7431      74652075 
 7432 00ca 0000     		.space	2
 7433              	.LC16:
 7434 00cc 4D617820 		.ascii	"Max open file count exceeded.\012\000"
 7434      6F70656E 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 132


 7434      2066696C 
 7434      6520636F 
 7434      756E7420 
 7435 00eb 00       		.space	1
 7436              	.LC17:
 7437 00ec 4572726F 		.ascii	"Error: Unsupported Message call for type %u!\012\000"
 7437      723A2055 
 7437      6E737570 
 7437      706F7274 
 7437      6564204D 
 7438 011a 0000     		.space	2
 7439              	.LC18:
 7440 011c 7B226D65 		.ascii	"{\"message\":\000"
 7440      73736167 
 7440      65223A00 
 7441              	.LC19:
 7442 0128 7D0A00   		.ascii	"}\012\000"
 7443 012b 00       		.space	1
 7444              	.LC20:
 7445 012c 303A2F73 		.ascii	"0:/sys/\000"
 7445      79732F00 
 7446              	.LC21:
 7447 0134 44756574 		.ascii	"DuetEthernetFirmware.bin\000"
 7447      45746865 
 7447      726E6574 
 7447      4669726D 
 7447      77617265 
 7448 014d 000000   		.space	3
 7449              	.LC22:
 7450 0150 4572726F 		.ascii	"Error: Firmware binary \"%s\" not found\012\000"
 7450      723A2046 
 7450      69726D77 
 7450      61726520 
 7450      62696E61 
 7451 0177 00       		.space	1
 7452              	.LC23:
 7453 0178 4572726F 		.ascii	"Error: Firmware binary \"%s\" is not valid for this"
 7453      723A2046 
 7453      69726D77 
 7453      61726520 
 7453      62696E61 
 7454 01a9 20656C65 		.ascii	" electronics\012\000"
 7454      6374726F 
 7454      6E696373 
 7454      0A00
 7455 01b7 00       		.space	1
 7456              	.LC24:
 7457 01b8 69617034 		.ascii	"iap4e.bin\000"
 7457      652E6269 
 7457      6E00
 7458 01c2 0000     		.space	2
 7459              	.LC25:
 7460 01c4 4572726F 		.ascii	"Error: In-application programming binary \"%s\" not"
 7460      723A2049 
 7460      6E2D6170 
 7460      706C6963 
 7460      6174696F 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 133


 7461 01f5 20666F75 		.ascii	" found\012\000"
 7461      6E640A00 
 7462 01fd 000000   		.space	3
 7463              	.LC26:
 7464 0200 7B226265 		.ascii	"{\"beep_freq\":%d,\"beep_length\":%d}\012\000"
 7464      65705F66 
 7464      72657122 
 7464      3A25642C 
 7464      22626565 
 7465 0223 00       		.space	1
 7466              	.LC27:
 7467 0224 6F6B00   		.ascii	"ok\000"
 7468 0227 00       		.space	1
 7469              	.LC28:
 7470 0228 4552524F 		.ascii	"ERROR\000"
 7470      5200
 7471 022e 0000     		.space	2
 7472              	.LC29:
 7473 0230 44696167 		.ascii	"Diagnostic Test\012\000"
 7473      6E6F7374 
 7473      69632054 
 7473      6573740A 
 7473      00
 7474 0241 000000   		.space	3
 7475              	.LC30:
 7476 0244 53717561 		.ascii	"Square roots: 64-bit %.1fus %s, 32-bit %.1fus %s\012"
 7476      72652072 
 7476      6F6F7473 
 7476      3A203634 
 7476      2D626974 
 7477 0275 00       		.ascii	"\000"
 7478 0276 0000     		.space	2
 7479              	.LC31:
 7480 0278 45787061 		.ascii	"Expander status %04X\012\000"
 7480      6E646572 
 7480      20737461 
 7480      74757320 
 7480      25303458 
 7481 028e 0000     		.space	2
 7482              	.LC32:
 7483 0290 436C6173 		.ascii	"Class %s spinning.\012\000"
 7483      73202573 
 7483      20737069 
 7483      6E6E696E 
 7483      672E0A00 
 7484              	.LC33:
 7485 02a4 49415020 		.ascii	"IAP not found\012\000"
 7485      6E6F7420 
 7485      666F756E 
 7485      640A00
 7486 02b3 00       		.space	1
 7487              	.LC34:
 7488 02b4 4572726F 		.ascii	"Error: Flash write failed, code=%u, address=0x%08x\012"
 7488      723A2046 
 7488      6C617368 
 7488      20777269 
 7488      74652066 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 134


 7489 02e7 00       		.ascii	"\000"
 7490              	.LC35:
 7491 02e8 4572726F 		.ascii	"Error: Verify during flash write failed, address=0x"
 7491      723A2056 
 7491      65726966 
 7491      79206475 
 7491      72696E67 
 7492 031b 25303878 		.ascii	"%08x\012\000"
 7492      0A00
 7493 0321 000000   		.space	3
 7494              	.LC36:
 7495 0324 55706461 		.ascii	"Updating main firmware\012\000"
 7495      74696E67 
 7495      206D6169 
 7495      6E206669 
 7495      726D7761 
 7496              	.LC37:
 7497 033c 303A2F73 		.ascii	"0:/sys/DuetEthernetFirmware.bin\000"
 7497      79732F44 
 7497      75657445 
 7497      74686572 
 7497      6E657446 
 7498              	.LC38:
 7499 035c 64657465 		.ascii	"detected\000"
 7499      63746564 
 7499      00
 7500 0365 000000   		.space	3
 7501              	.LC39:
 7502 0368 6E6F7420 		.ascii	"not detected\000"
 7502      64657465 
 7502      63746564 
 7502      00
 7503 0375 000000   		.space	3
 7504              	.LC40:
 7505 0378 79657300 		.ascii	"yes\000"
 7506              	.LC41:
 7507 037c 6E6F00   		.ascii	"no\000"
 7508 037f 00       		.space	1
 7509              	.LC42:
 7510 0380 20737461 		.ascii	" stalled\000"
 7510      6C6C6564 
 7510      00
 7511 0389 000000   		.space	3
 7512              	.LC43:
 7513 038c 00       		.ascii	"\000"
 7514 038d 000000   		.space	3
 7515              	.LC44:
 7516 0390 2074656D 		.ascii	" temperature-shutdown!\000"
 7516      70657261 
 7516      74757265 
 7516      2D736875 
 7516      74646F77 
 7517 03a7 00       		.space	1
 7518              	.LC45:
 7519 03a8 2074656D 		.ascii	" temperature-warning\000"
 7519      70657261 
 7519      74757265 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 135


 7519      2D776172 
 7519      6E696E67 
 7520 03bd 000000   		.space	3
 7521              	.LC46:
 7522 03c0 2073686F 		.ascii	" short-to-ground\000"
 7522      72742D74 
 7522      6F2D6772 
 7522      6F756E64 
 7522      00
 7523 03d1 000000   		.space	3
 7524              	.LC47:
 7525 03d4 206F7065 		.ascii	" open-load-A\000"
 7525      6E2D6C6F 
 7525      61642D41 
 7525      00
 7526 03e1 000000   		.space	3
 7527              	.LC48:
 7528 03e4 206F7065 		.ascii	" open-load-B\000"
 7528      6E2D6C6F 
 7528      61642D42 
 7528      00
 7529 03f1 000000   		.space	3
 7530              	.LC49:
 7531 03f4 206F6B00 		.ascii	" ok\000"
 7532              	.LC50:
 7533 03f8 20737461 		.ascii	" standstill\000"
 7533      6E647374 
 7533      696C6C00 
 7534              	.LC51:
 7535 0404 3D3D3D20 		.ascii	"=== Platform ===\012\000"
 7535      506C6174 
 7535      666F726D 
 7535      203D3D3D 
 7535      0A00
 7536 0416 0000     		.space	2
 7537              	.LC52:
 7538 0418 53746174 		.ascii	"Static ram used: %d\012\000"
 7538      69632072 
 7538      616D2075 
 7538      7365643A 
 7538      2025640A 
 7539 042d 000000   		.space	3
 7540              	.LC53:
 7541 0430 44796E61 		.ascii	"Dynamic ram used: %d\012\000"
 7541      6D696320 
 7541      72616D20 
 7541      75736564 
 7541      3A202564 
 7542 0446 0000     		.space	2
 7543              	.LC54:
 7544 0448 52656379 		.ascii	"Recycled dynamic ram: %d\012\000"
 7544      636C6564 
 7544      2064796E 
 7544      616D6963 
 7544      2072616D 
 7545 0462 0000     		.space	2
 7546              	.LC55:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 136


 7547 0464 53746163 		.ascii	"Stack ram used: %u current, %u maximum\012\000"
 7547      6B207261 
 7547      6D207573 
 7547      65643A20 
 7547      25752063 
 7548              	.LC56:
 7549 048c 4E657665 		.ascii	"Never used ram: %u\012\000"
 7549      72207573 
 7549      65642072 
 7549      616D3A20 
 7549      25750A00 
 7550              	.LC58:
 7551 04a0 4C617374 		.ascii	"Last reset %02d:%02d:%02d ago, cause: %s\012\000"
 7551      20726573 
 7551      65742025 
 7551      3032643A 
 7551      25303264 
 7552 04ca 0000     		.space	2
 7553              	.LC59:
 7554 04cc 30782530 		.ascii	"0x%04x, HFSR 0x%08x, CFSR 0x%08x, ICSR 0x%08x, BFAR"
 7554      34782C20 
 7554      48465352 
 7554      20307825 
 7554      3038782C 
 7555 04ff 20307825 		.ascii	" 0x%08x, SP 0x%08x\012\000"
 7555      3038782C 
 7555      20535020 
 7555      30782530 
 7555      38780A00 
 7556 0513 00       		.space	1
 7557              	.LC60:
 7558 0514 20253038 		.ascii	" %08x\000"
 7558      7800
 7559 051a 0000     		.space	2
 7560              	.LC61:
 7561 051c 53746163 		.ascii	"Stack:%s\012\000"
 7561      6B3A2573 
 7561      0A00
 7562 0526 0000     		.space	2
 7563              	.LC62:
 7564 0528 5370696E 		.ascii	"Spinning module during software reset: %s, availabl"
 7564      6E696E67 
 7564      206D6F64 
 7564      756C6520 
 7564      64757269 
 7565 055b 65205241 		.ascii	"e RAM %u bytes (slot %d)\012\000"
 7565      4D202575 
 7565      20627974 
 7565      65732028 
 7565      736C6F74 
 7566 0575 000000   		.space	3
 7567              	.LC63:
 7568 0578 6E6F7420 		.ascii	"not available\012\000"
 7568      61766169 
 7568      6C61626C 
 7568      650A00
 7569 0587 00       		.space	1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 137


 7570              	.LC64:
 7571 0588 4572726F 		.ascii	"Error status: %u\012\000"
 7571      72207374 
 7571      61747573 
 7571      3A202575 
 7571      0A00
 7572 059a 0000     		.space	2
 7573              	.LC65:
 7574 059c 46726565 		.ascii	"Free file entries: %u\012\000"
 7574      2066696C 
 7574      6520656E 
 7574      74726965 
 7574      733A2025 
 7575 05b3 00       		.space	1
 7576              	.LC66:
 7577 05b4 53442063 		.ascii	"SD card 0 %s, interface speed: %.1fMBytes/sec\012\000"
 7577      61726420 
 7577      30202573 
 7577      2C20696E 
 7577      74657266 
 7578 05e3 00       		.space	1
 7579              	.LC67:
 7580 05e4 53442063 		.ascii	"SD card longest block write time: %.1fms\012\000"
 7580      61726420 
 7580      6C6F6E67 
 7580      65737420 
 7580      626C6F63 
 7581 060e 0000     		.space	2
 7582              	.LC68:
 7583 0610 4D435520 		.ascii	"MCU temperature: min %.1f, current %.1f, max %.1f\012"
 7583      74656D70 
 7583      65726174 
 7583      7572653A 
 7583      206D696E 
 7584 0642 00       		.ascii	"\000"
 7585 0643 00       		.space	1
 7586              	.LC69:
 7587 0644 53757070 		.ascii	"Supply voltage: min %.1f, current %.1f, max %.1f, u"
 7587      6C792076 
 7587      6F6C7461 
 7587      67653A20 
 7587      6D696E20 
 7588 0677 6E646572 		.ascii	"nder voltage events: %u, over voltage events: %u\012"
 7588      20766F6C 
 7588      74616765 
 7588      20657665 
 7588      6E74733A 
 7589 06a8 00       		.ascii	"\000"
 7590 06a9 000000   		.space	3
 7591              	.LC70:
 7592 06ac 45787061 		.ascii	"Expansion motor(s) stall indication: %s\012\000"
 7592      6E73696F 
 7592      6E206D6F 
 7592      746F7228 
 7592      73292073 
 7593 06d5 000000   		.space	3
 7594              	.LC71:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 138


 7595 06d8 44617465 		.ascii	"Date/time: \000"
 7595      2F74696D 
 7595      653A2000 
 7596              	.LC72:
 7597 06e4 44726976 		.ascii	"Driver %d:%s%s%s%s%s%s\012\000"
 7597      65722025 
 7597      643A2573 
 7597      25732573 
 7597      25732573 
 7598              	.LC73:
 7599 06fc 25303475 		.ascii	"%04u-%02u-%02u %02u:%02u:%02u\012\000"
 7599      2D253032 
 7599      752D2530 
 7599      32752025 
 7599      3032753A 
 7600 071b 00       		.space	1
 7601              	.LC74:
 7602 071c 6E6F7420 		.ascii	"not set\012\000"
 7602      7365740A 
 7602      00
 7603 0725 000000   		.space	3
 7604              	.LC75:
 7605 0728 4C617374 		.ascii	"Last software reset code \000"
 7605      20736F66 
 7605      74776172 
 7605      65207265 
 7605      73657420 
 7606 0742 0000     		.space	2
 7607              	.LC76:
 7608 0744 4572726F 		.ascii	"Error: VSSA fault\012\000"
 7608      723A2056 
 7608      53534120 
 7608      6661756C 
 7608      740A00
 7609 0757 00       		.space	1
 7610              	.LC0:
 7611 0758 706F7765 		.ascii	"power up\000"
 7611      72207570 
 7611      00
 7612 0761 000000   		.space	3
 7613              	.LC1:
 7614 0764 6261636B 		.ascii	"backup\000"
 7614      757000
 7615 076b 00       		.space	1
 7616              	.LC2:
 7617 076c 77617463 		.ascii	"watchdog\000"
 7617      68646F67 
 7617      00
 7618 0775 000000   		.space	3
 7619              	.LC3:
 7620 0778 736F6674 		.ascii	"software\000"
 7620      77617265 
 7620      00
 7621 0781 000000   		.space	3
 7622              	.LC4:
 7623 0784 72657365 		.ascii	"reset button or watchdog\000"
 7623      74206275 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 139


 7623      74746F6E 
 7623      206F7220 
 7623      77617463 
 7624 079d 000000   		.space	3
 7625              	.LC5:
 7626 07a0 3F00     		.ascii	"?\000"
 7627 07a2 0000     		.section	.bss._ZL11fanInterval,"aw",%nobits
 7628              		.align	2
 7629              		.set	.LANCHOR2,. + 0
 7630              		.type	_ZL11fanInterval, %object
 7631              		.size	_ZL11fanInterval, 4
 7632              	_ZL11fanInterval:
 7633 0000 00000000 		.space	4
 7634              		.section	.rodata._ZL13ACCELERATIONS,"a",%progbits
 7635              		.align	2
 7636              		.set	.LANCHOR16,. + 0
 7637              		.type	_ZL13ACCELERATIONS, %object
 7638              		.size	_ZL13ACCELERATIONS, 40
 7639              	_ZL13ACCELERATIONS:
 7640 0000 0000FA43 		.word	1140457472
 7641 0004 0000FA43 		.word	1140457472
 7642 0008 0000A041 		.word	1101004800
 7643 000c 00007A43 		.word	1132068864
 7644 0010 00007A43 		.word	1132068864
 7645 0014 00007A43 		.word	1132068864
 7646 0018 00007A43 		.word	1132068864
 7647 001c 00007A43 		.word	1132068864
 7648 0020 00007A43 		.word	1132068864
 7649 0024 00007A43 		.word	1132068864
 7650              		.section	.rodata._ZL19SpiTempSensorCsPins,"a",%progbits
 7651              		.align	2
 7652              		.set	.LANCHOR6,. + 0
 7653              		.type	_ZL19SpiTempSensorCsPins, %object
 7654              		.size	_ZL19SpiTempSensorCsPins, 8
 7655              	_ZL19SpiTempSensorCsPins:
 7656 0000 1C       		.byte	28
 7657 0001 32       		.byte	50
 7658 0002 33       		.byte	51
 7659 0003 34       		.byte	52
 7660 0004 18       		.byte	24
 7661 0005 61       		.byte	97
 7662 0006 62       		.byte	98
 7663 0007 63       		.byte	99
 7664              		.section	.rodata._ZL11AXIS_MINIMA,"a",%progbits
 7665              		.align	2
 7666              		.set	.LANCHOR20,. + 0
 7667              		.type	_ZL11AXIS_MINIMA, %object
 7668              		.size	_ZL11AXIS_MINIMA, 24
 7669              	_ZL11AXIS_MINIMA:
 7670 0000 00000000 		.space	24
 7670      00000000 
 7670      00000000 
 7670      00000000 
 7670      00000000 
 7671              		.section	.rodata._ZL16DefaultIpAddress,"a",%progbits
 7672              		.align	2
 7673              		.set	.LANCHOR10,. + 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 140


 7674              		.type	_ZL16DefaultIpAddress, %object
 7675              		.size	_ZL16DefaultIpAddress, 4
 7676              	_ZL16DefaultIpAddress:
 7677 0000 00000000 		.space	4
 7678              		.section	.rodata._ZL9STEP_PINS,"a",%progbits
 7679              		.align	2
 7680              		.set	.LANCHOR4,. + 0
 7681              		.type	_ZL9STEP_PINS, %object
 7682              		.size	_ZL9STEP_PINS, 10
 7683              	_ZL9STEP_PINS:
 7684 0000 46       		.byte	70
 7685 0001 47       		.byte	71
 7686 0002 48       		.byte	72
 7687 0003 45       		.byte	69
 7688 0004 44       		.byte	68
 7689 0005 42       		.byte	66
 7690 0006 41       		.byte	65
 7691 0007 40       		.byte	64
 7692 0008 43       		.byte	67
 7693 0009 5B       		.byte	91
 7694 000a 0000     		.section	.rodata._ZL16COOLING_FAN_PINS,"a",%progbits
 7695              		.align	2
 7696              		.set	.LANCHOR7,. + 0
 7697              		.type	_ZL16COOLING_FAN_PINS, %object
 7698              		.size	_ZL16COOLING_FAN_PINS, 8
 7699              	_ZL16COOLING_FAN_PINS:
 7700 0000 37       		.byte	55
 7701 0001 3A       		.byte	58
 7702 0002 00       		.byte	0
 7703 0003 D4       		.byte	-44
 7704 0004 CF       		.byte	-49
 7705 0005 CE       		.byte	-50
 7706 0006 CD       		.byte	-51
 7707 0007 CC       		.byte	-52
 7708              		.section	.bss._ZL17fanInterruptCount,"aw",%nobits
 7709              		.align	2
 7710              		.set	.LANCHOR0,. + 0
 7711              		.type	_ZL17fanInterruptCount, %object
 7712              		.size	_ZL17fanInterruptCount, 4
 7713              	_ZL17fanInterruptCount:
 7714 0000 00000000 		.space	4
 7715              		.section	.bss._ZL16fanLastResetTime,"aw",%nobits
 7716              		.align	2
 7717              		.set	.LANCHOR1,. + 0
 7718              		.type	_ZL16fanLastResetTime, %object
 7719              		.size	_ZL16fanLastResetTime, 4
 7720              	_ZL16fanLastResetTime:
 7721 0000 00000000 		.space	4
 7722              		.section	.rodata._ZL11INSTANT_DVS,"a",%progbits
 7723              		.align	2
 7724              		.set	.LANCHOR18,. + 0
 7725              		.type	_ZL11INSTANT_DVS, %object
 7726              		.size	_ZL11INSTANT_DVS, 40
 7727              	_ZL11INSTANT_DVS:
 7728 0000 00007041 		.word	1097859072
 7729 0004 00007041 		.word	1097859072
 7730 0008 CDCC4C3E 		.word	1045220557
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc84Hvik.s 			page 141


 7731 000c 00000040 		.word	1073741824
 7732 0010 00000040 		.word	1073741824
 7733 0014 00000040 		.word	1073741824
 7734 0018 00000040 		.word	1073741824
 7735 001c 00000040 		.word	1073741824
 7736 0020 00000040 		.word	1073741824
 7737 0024 00000040 		.word	1073741824
 7738              		.section	.rodata._ZZN8Platform14DiagnosticTestEiE5dummy,"a",%progbits
 7739              		.align	2
 7740              		.set	.LANCHOR23,. + 0
 7741              		.type	_ZZN8Platform14DiagnosticTestEiE5dummy, %object
 7742              		.size	_ZZN8Platform14DiagnosticTestEiE5dummy, 8
 7743              	_ZZN8Platform14DiagnosticTestEiE5dummy:
 7744 0000 00000000 		.space	8
 7744      00000000 
 7745              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 7746              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 7747              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 7748              	_ZL28cpu_irq_prev_interrupt_state:
 7749 0000 00       		.space	1
 7750              		.section	.rodata._ZL11ENABLE_PINS,"a",%progbits
 7751              		.align	2
 7752              		.set	.LANCHOR3,. + 0
 7753              		.type	_ZL11ENABLE_PINS, %object
 7754              		.size	_ZL11ENABLE_PINS, 10
 7755              	_ZL11ENABLE_PINS:
 7756 0000 4E       		.byte	78
 7757 0001 29       		.byte	41
 7758 0002 2A       		.byte	42
 7759 0003 31       		.byte	49
 7760 0004 39       		.byte	57
 7761 0005 57       		.byte	87
 7762 0006 58       		.byte	88
 7763 0007 59       		.byte	89
 7764 0008 5A       		.byte	90
 7765 0009 1F       		.byte	31
 7766 000a 0000     		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
