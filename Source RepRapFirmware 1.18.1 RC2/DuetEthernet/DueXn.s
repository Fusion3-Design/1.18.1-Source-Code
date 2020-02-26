ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc2MYMn8.s 			page 1


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
  15              		.file	"DueXn.cpp"
  16              		.section	.text._ZN13DuetExpansion4InitEv,"ax",%progbits
  17              		.align	2
  18              		.global	_ZN13DuetExpansion4InitEv
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN13DuetExpansion4InitEv, %function
  22              	_ZN13DuetExpansion4InitEv:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 38B5     		push	{r3, r4, r5, lr}
  26 0002 2B48     		ldr	r0, .L14
  27 0004 3E21     		movs	r1, #62
  28 0006 FFF7FEFF 		bl	_ZN6SX15095beginEh
  29 000a 0128     		cmp	r0, #1
  30 000c 0ED0     		beq	.L2
  31 000e 6420     		movs	r0, #100
  32 0010 FFF7FEFF 		bl	delay
  33 0014 2648     		ldr	r0, .L14
  34 0016 3E21     		movs	r1, #62
  35 0018 FFF7FEFF 		bl	_ZN6SX15095beginEh
  36 001c 0128     		cmp	r0, #1
  37 001e 05D0     		beq	.L2
  38 0020 244B     		ldr	r3, .L14+4
  39 0022 0020     		movs	r0, #0
  40 0024 1870     		strb	r0, [r3]
  41 0026 0346     		mov	r3, r0
  42              	.L3:
  43 0028 1846     		mov	r0, r3
  44 002a 38BD     		pop	{r3, r4, r5, pc}
  45              	.L2:
  46 002c 2048     		ldr	r0, .L14
  47 002e 214C     		ldr	r4, .L14+4
  48 0030 4FF44041 		mov	r1, #49152
  49 0034 0122     		movs	r2, #1
  50 0036 FFF7FEFF 		bl	_ZN6SX150915pinModeMultipleEt7PinMode
  51 003a 1D48     		ldr	r0, .L14
  52 003c FFF7FEFF 		bl	_ZN6SX150914digitalReadAllEv
  53 0040 1D4B     		ldr	r3, .L14+8
  54 0042 C0F38F30 		ubfx	r0, r0, #14, #16
  55 0046 1B5C     		ldrb	r3, [r3, r0]	@ zero_extendqisi2
  56 0048 2370     		strb	r3, [r4]
  57 004a 002B     		cmp	r3, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc2MYMn8.s 			page 2


  58 004c ECD0     		beq	.L3
  59 004e 1120     		movs	r0, #17
  60 0050 0121     		movs	r1, #1
  61 0052 0022     		movs	r2, #0
  62 0054 FFF7FEFF 		bl	pinModeDuet
  63 0058 6020     		movs	r0, #96
  64 005a 0121     		movs	r1, #1
  65 005c 0022     		movs	r2, #0
  66 005e FFF7FEFF 		bl	pinModeDuet
  67 0062 1348     		ldr	r0, .L14
  68 0064 41F2F001 		movw	r1, #4336
  69 0068 0722     		movs	r2, #7
  70 006a FFF7FEFF 		bl	_ZN6SX150915pinModeMultipleEt7PinMode
  71 006e 2578     		ldrb	r5, [r4]	@ zero_extendqisi2
  72 0070 0F48     		ldr	r0, .L14
  73 0072 42F60F73 		movw	r3, #12047
  74 0076 40F60972 		movw	r2, #3849
  75 007a 032D     		cmp	r5, #3
  76 007c 14BF     		ite	ne
  77 007e 1546     		movne	r5, r2
  78 0080 1D46     		moveq	r5, r3
  79 0082 2946     		mov	r1, r5
  80 0084 0022     		movs	r2, #0
  81 0086 FFF7FEFF 		bl	_ZN6SX150915pinModeMultipleEt7PinMode
  82 008a 0C4B     		ldr	r3, .L14+12
  83 008c 0848     		ldr	r0, .L14
  84 008e 1D80     		strh	r5, [r3]	@ movhi
  85 0090 0222     		movs	r2, #2
  86 0092 2946     		mov	r1, r5
  87 0094 FFF7FEFF 		bl	_ZN6SX150923enableInterruptMultipleEth
  88 0098 0121     		movs	r1, #1
  89 009a 0548     		ldr	r0, .L14
  90 009c FFF7FEFF 		bl	_ZN6SX150915interruptSourceEb
  91 00a0 0348     		ldr	r0, .L14
  92 00a2 FFF7FEFF 		bl	_ZN6SX150914digitalReadAllEv
  93 00a6 064A     		ldr	r2, .L14+16
  94 00a8 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
  95 00aa 1080     		strh	r0, [r2]	@ movhi
  96 00ac 1846     		mov	r0, r3
  97 00ae 38BD     		pop	{r3, r4, r5, pc}
  98              	.L15:
  99              		.align	2
 100              	.L14:
 101 00b0 00000000 		.word	.LANCHOR0
 102 00b4 00000000 		.word	.LANCHOR1
 103 00b8 00000000 		.word	.LANCHOR2
 104 00bc 00000000 		.word	.LANCHOR3
 105 00c0 00000000 		.word	.LANCHOR4
 106              		.size	_ZN13DuetExpansion4InitEv, .-_ZN13DuetExpansion4InitEv
 107              		.section	.text._ZN13DuetExpansion21GetExpansionBoardNameEv,"ax",%progbits
 108              		.align	2
 109              		.global	_ZN13DuetExpansion21GetExpansionBoardNameEv
 110              		.thumb
 111              		.thumb_func
 112              		.type	_ZN13DuetExpansion21GetExpansionBoardNameEv, %function
 113              	_ZN13DuetExpansion21GetExpansionBoardNameEv:
 114              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc2MYMn8.s 			page 3


 115              		@ frame_needed = 0, uses_anonymous_args = 0
 116              		@ link register save eliminated.
 117 0000 054B     		ldr	r3, .L19
 118 0002 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 119 0004 013B     		subs	r3, r3, #1
 120 0006 DBB2     		uxtb	r3, r3
 121 0008 022B     		cmp	r3, #2
 122 000a 9ABF     		itte	ls
 123 000c 034A     		ldrls	r2, .L19+4
 124 000e 52F82300 		ldrls	r0, [r2, r3, lsl #2]
 125 0012 0020     		movhi	r0, #0
 126 0014 7047     		bx	lr
 127              	.L20:
 128 0016 00BF     		.align	2
 129              	.L19:
 130 0018 00000000 		.word	.LANCHOR1
 131 001c 00000000 		.word	.LANCHOR5
 132              		.size	_ZN13DuetExpansion21GetExpansionBoardNameEv, .-_ZN13DuetExpansion21GetExpansionBoardNameEv
 133              		.section	.text._ZN13DuetExpansion10SetPinModeEh7PinMode,"ax",%progbits
 134              		.align	2
 135              		.global	_ZN13DuetExpansion10SetPinModeEh7PinMode
 136              		.thumb
 137              		.thumb_func
 138              		.type	_ZN13DuetExpansion10SetPinModeEh7PinMode, %function
 139              	_ZN13DuetExpansion10SetPinModeEh7PinMode:
 140              		@ args = 0, pretend = 0, frame = 0
 141              		@ frame_needed = 0, uses_anonymous_args = 0
 142              		@ link register save eliminated.
 143 0000 0E4B     		ldr	r3, .L32
 144 0002 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 145 0004 0A46     		mov	r2, r1
 146 0006 93B1     		cbz	r3, .L21
 147 0008 4FF47063 		mov	r3, #3840
 148 000c 0341     		asrs	r3, r3, r0
 149 000e DB07     		lsls	r3, r3, #31
 150 0010 09D5     		bpl	.L23
 151 0012 4B1E     		subs	r3, r1, #1
 152 0014 072B     		cmp	r3, #7
 153 0016 06D8     		bhi	.L23
 154 0018 DFE803F0 		tbb	[pc, r3]
 155              	.L25:
 156 001c 0E       		.byte	(.L24-.L25)/2
 157 001d 0E       		.byte	(.L24-.L25)/2
 158 001e 04       		.byte	(.L26-.L25)/2
 159 001f 0C       		.byte	(.L27-.L25)/2
 160 0020 05       		.byte	(.L23-.L25)/2
 161 0021 05       		.byte	(.L23-.L25)/2
 162 0022 0A       		.byte	(.L28-.L25)/2
 163 0023 0A       		.byte	(.L28-.L25)/2
 164              		.align	1
 165              	.L26:
 166 0024 0922     		movs	r2, #9
 167              	.L23:
 168 0026 0146     		mov	r1, r0
 169 0028 0548     		ldr	r0, .L32+4
 170 002a FFF7FEBF 		b	_ZN6SX15097pinModeEh7PinMode
 171              	.L21:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc2MYMn8.s 			page 4


 172 002e 7047     		bx	lr
 173              	.L28:
 174 0030 0B22     		movs	r2, #11
 175 0032 F8E7     		b	.L23
 176              	.L27:
 177 0034 0A22     		movs	r2, #10
 178 0036 F6E7     		b	.L23
 179              	.L24:
 180 0038 0022     		movs	r2, #0
 181 003a F4E7     		b	.L23
 182              	.L33:
 183              		.align	2
 184              	.L32:
 185 003c 00000000 		.word	.LANCHOR1
 186 0040 00000000 		.word	.LANCHOR0
 187              		.size	_ZN13DuetExpansion10SetPinModeEh7PinMode, .-_ZN13DuetExpansion10SetPinModeEh7PinMode
 188              		.section	.text._ZN13DuetExpansion11DigitalReadEh,"ax",%progbits
 189              		.align	2
 190              		.global	_ZN13DuetExpansion11DigitalReadEh
 191              		.thumb
 192              		.thumb_func
 193              		.type	_ZN13DuetExpansion11DigitalReadEh, %function
 194              	_ZN13DuetExpansion11DigitalReadEh:
 195              		@ args = 0, pretend = 0, frame = 0
 196              		@ frame_needed = 0, uses_anonymous_args = 0
 197 0000 0E4B     		ldr	r3, .L41
 198 0002 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 199 0004 10B5     		push	{r4, lr}
 200 0006 0446     		mov	r4, r0
 201 0008 73B1     		cbz	r3, .L38
 202 000a 0F28     		cmp	r0, #15
 203 000c 01D9     		bls	.L40
 204 000e 0020     		movs	r0, #0
 205 0010 10BD     		pop	{r4, pc}
 206              	.L40:
 207 0012 1120     		movs	r0, #17
 208 0014 FFF7FEFF 		bl	digitalRead
 209 0018 40B1     		cbz	r0, .L36
 210 001a 094B     		ldr	r3, .L41+4
 211 001c 1B88     		ldrh	r3, [r3]
 212              	.L37:
 213 001e 43FA04F0 		asr	r0, r3, r4
 214 0022 00F00100 		and	r0, r0, #1
 215 0026 10BD     		pop	{r4, pc}
 216              	.L38:
 217 0028 1846     		mov	r0, r3
 218 002a 10BD     		pop	{r4, pc}
 219              	.L36:
 220 002c 0548     		ldr	r0, .L41+8
 221 002e FFF7FEFF 		bl	_ZN6SX150914digitalReadAllEv
 222 0032 034A     		ldr	r2, .L41+4
 223 0034 0346     		mov	r3, r0
 224 0036 1080     		strh	r0, [r2]	@ movhi
 225 0038 F1E7     		b	.L37
 226              	.L42:
 227 003a 00BF     		.align	2
 228              	.L41:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc2MYMn8.s 			page 5


 229 003c 00000000 		.word	.LANCHOR1
 230 0040 00000000 		.word	.LANCHOR4
 231 0044 00000000 		.word	.LANCHOR0
 232              		.size	_ZN13DuetExpansion11DigitalReadEh, .-_ZN13DuetExpansion11DigitalReadEh
 233              		.section	.text._ZN13DuetExpansion12DigitalWriteEhb,"ax",%progbits
 234              		.align	2
 235              		.global	_ZN13DuetExpansion12DigitalWriteEhb
 236              		.thumb
 237              		.thumb_func
 238              		.type	_ZN13DuetExpansion12DigitalWriteEhb, %function
 239              	_ZN13DuetExpansion12DigitalWriteEhb:
 240              		@ args = 0, pretend = 0, frame = 0
 241              		@ frame_needed = 0, uses_anonymous_args = 0
 242              		@ link register save eliminated.
 243 0000 044B     		ldr	r3, .L46
 244 0002 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 245 0004 0A46     		mov	r2, r1
 246 0006 03B9     		cbnz	r3, .L45
 247 0008 7047     		bx	lr
 248              	.L45:
 249 000a 0146     		mov	r1, r0
 250 000c 0248     		ldr	r0, .L46+4
 251 000e FFF7FEBF 		b	_ZN6SX150912digitalWriteEhb
 252              	.L47:
 253 0012 00BF     		.align	2
 254              	.L46:
 255 0014 00000000 		.word	.LANCHOR1
 256 0018 00000000 		.word	.LANCHOR0
 257              		.size	_ZN13DuetExpansion12DigitalWriteEhb, .-_ZN13DuetExpansion12DigitalWriteEhb
 258              		.section	.text._ZN13DuetExpansion9AnalogOutEhf,"ax",%progbits
 259              		.align	2
 260              		.global	_ZN13DuetExpansion9AnalogOutEhf
 261              		.thumb
 262              		.thumb_func
 263              		.type	_ZN13DuetExpansion9AnalogOutEhf, %function
 264              	_ZN13DuetExpansion9AnalogOutEhf:
 265              		@ args = 0, pretend = 0, frame = 0
 266              		@ frame_needed = 0, uses_anonymous_args = 0
 267              		@ link register save eliminated.
 268 0000 154B     		ldr	r3, .L55
 269 0002 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 270 0004 07EE901A 		fmsr	s15, r1
 271 0008 83B1     		cbz	r3, .L48
 272 000a F4EE677A 		fcmps	s15, s15
 273 000e F1EE10FA 		fmstat
 274 0012 11D6     		bvs	.L53
 275 0014 B7EE007A 		fconsts	s14, #112
 276 0018 F4EEC77A 		fcmpes	s15, s14
 277 001c F1EE10FA 		fmstat
 278 0020 05D4     		bmi	.L52
 279 0022 FF22     		movs	r2, #255
 280              	.L51:
 281 0024 0146     		mov	r1, r0
 282 0026 0D48     		ldr	r0, .L55+4
 283 0028 FFF7FEBF 		b	_ZN6SX150911analogWriteEhh
 284              	.L48:
 285 002c 7047     		bx	lr
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc2MYMn8.s 			page 6


 286              	.L52:
 287 002e F5EEC07A 		fcmpezs	s15
 288 0032 F1EE10FA 		fmstat
 289 0036 0CDD     		ble	.L54
 290              	.L53:
 291 0038 9FED097A 		flds	s14, .L55+8
 292 003c 67EE877A 		fmuls	s15, s15, s14
 293 0040 0146     		mov	r1, r0
 294 0042 FCEEE77A 		ftouizs	s15, s15
 295 0046 0548     		ldr	r0, .L55+4
 296 0048 17EE902A 		fmrs	r2, s15	@ int
 297 004c D2B2     		uxtb	r2, r2
 298 004e FFF7FEBF 		b	_ZN6SX150911analogWriteEhh
 299              	.L54:
 300 0052 0022     		movs	r2, #0
 301 0054 E6E7     		b	.L51
 302              	.L56:
 303 0056 00BF     		.align	2
 304              	.L55:
 305 0058 00000000 		.word	.LANCHOR1
 306 005c 00000000 		.word	.LANCHOR0
 307 0060 00007F43 		.word	1132396544
 308              		.size	_ZN13DuetExpansion9AnalogOutEhf, .-_ZN13DuetExpansion9AnalogOutEhf
 309              		.section	.text._ZN13DuetExpansion14DiagnosticReadEv,"ax",%progbits
 310              		.align	2
 311              		.global	_ZN13DuetExpansion14DiagnosticReadEv
 312              		.thumb
 313              		.thumb_func
 314              		.type	_ZN13DuetExpansion14DiagnosticReadEv, %function
 315              	_ZN13DuetExpansion14DiagnosticReadEv:
 316              		@ args = 0, pretend = 0, frame = 0
 317              		@ frame_needed = 0, uses_anonymous_args = 0
 318 0000 10B5     		push	{r4, lr}
 319 0002 094C     		ldr	r4, .L58
 320 0004 43F6FF71 		movw	r1, #16383
 321 0008 0022     		movs	r2, #0
 322 000a 2046     		mov	r0, r4
 323 000c FFF7FEFF 		bl	_ZN6SX150915pinModeMultipleEt7PinMode
 324 0010 0120     		movs	r0, #1
 325 0012 FFF7FEFF 		bl	delay
 326 0016 2046     		mov	r0, r4
 327 0018 FFF7FEFF 		bl	_ZN6SX150914digitalReadAllEv
 328 001c 0446     		mov	r4, r0
 329 001e FFF7FEFF 		bl	_ZN13DuetExpansion4InitEv
 330 0022 2046     		mov	r0, r4
 331 0024 10BD     		pop	{r4, pc}
 332              	.L59:
 333 0026 00BF     		.align	2
 334              	.L58:
 335 0028 00000000 		.word	.LANCHOR0
 336              		.size	_ZN13DuetExpansion14DiagnosticReadEv, .-_ZN13DuetExpansion14DiagnosticReadEv
 337              		.section	.text.startup._GLOBAL__sub_I__ZN13DuetExpansion4InitEv,"ax",%progbits
 338              		.align	2
 339              		.thumb
 340              		.thumb_func
 341              		.type	_GLOBAL__sub_I__ZN13DuetExpansion4InitEv, %function
 342              	_GLOBAL__sub_I__ZN13DuetExpansion4InitEv:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc2MYMn8.s 			page 7


 343              		@ args = 0, pretend = 0, frame = 0
 344              		@ frame_needed = 0, uses_anonymous_args = 0
 345              		@ link register save eliminated.
 346 0000 0148     		ldr	r0, .L61
 347 0002 FFF7FEBF 		b	_ZN6SX1509C1Ev
 348              	.L62:
 349 0006 00BF     		.align	2
 350              	.L61:
 351 0008 00000000 		.word	.LANCHOR0
 352              		.size	_GLOBAL__sub_I__ZN13DuetExpansion4InitEv, .-_GLOBAL__sub_I__ZN13DuetExpansion4InitEv
 353              		.section	.init_array,"aw",%init_array
 354              		.align	2
 355 0000 00000000 		.word	_GLOBAL__sub_I__ZN13DuetExpansion4InitEv(target1)
 356              		.section	.rodata._ZN13DuetExpansionL10boardTypesE,"a",%progbits
 357              		.align	2
 358              		.set	.LANCHOR2,. + 0
 359              		.type	_ZN13DuetExpansionL10boardTypesE, %object
 360              		.size	_ZN13DuetExpansionL10boardTypesE, 4
 361              	_ZN13DuetExpansionL10boardTypesE:
 362 0000 03       		.byte	3
 363 0001 02       		.byte	2
 364 0002 01       		.byte	1
 365 0003 00       		.byte	0
 366              		.section	.bss._ZN13DuetExpansionL8expanderE,"aw",%nobits
 367              		.align	2
 368              		.set	.LANCHOR0,. + 0
 369              		.type	_ZN13DuetExpansionL8expanderE, %object
 370              		.size	_ZN13DuetExpansionL8expanderE, 8
 371              	_ZN13DuetExpansionL8expanderE:
 372 0000 00000000 		.space	8
 372      00000000 
 373              		.section	.bss._ZN13DuetExpansionL9inputBitsE,"aw",%nobits
 374              		.align	1
 375              		.set	.LANCHOR4,. + 0
 376              		.type	_ZN13DuetExpansionL9inputBitsE, %object
 377              		.size	_ZN13DuetExpansionL9inputBitsE, 2
 378              	_ZN13DuetExpansionL9inputBitsE:
 379 0000 0000     		.space	2
 380              		.section	.bss._ZN13DuetExpansionL9boardTypeE,"aw",%nobits
 381              		.set	.LANCHOR1,. + 0
 382              		.type	_ZN13DuetExpansionL9boardTypeE, %object
 383              		.size	_ZN13DuetExpansionL9boardTypeE, 1
 384              	_ZN13DuetExpansionL9boardTypeE:
 385 0000 00       		.space	1
 386              		.section	.rodata.str1.4,"aMS",%progbits,1
 387              		.align	2
 388              	.LC0:
 389 0000 44756558 		.ascii	"DueX0\000"
 389      3000
 390 0006 0000     		.space	2
 391              	.LC1:
 392 0008 44756558 		.ascii	"DueX2\000"
 392      3200
 393 000e 0000     		.space	2
 394              	.LC2:
 395 0010 44756558 		.ascii	"DueX5\000"
 395      3500
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc2MYMn8.s 			page 8


 396 0016 0000     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 397              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 398              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 399              	_ZL28cpu_irq_prev_interrupt_state:
 400 0000 00       		.space	1
 401              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 402              		.align	2
 403              		.type	_ZL32cpu_irq_critical_section_counter, %object
 404              		.size	_ZL32cpu_irq_critical_section_counter, 4
 405              	_ZL32cpu_irq_critical_section_counter:
 406 0000 00000000 		.space	4
 407              		.section	.bss._ZN13DuetExpansionL9inputMaskE,"aw",%nobits
 408              		.align	1
 409              		.set	.LANCHOR3,. + 0
 410              		.type	_ZN13DuetExpansionL9inputMaskE, %object
 411              		.size	_ZN13DuetExpansionL9inputMaskE, 2
 412              	_ZN13DuetExpansionL9inputMaskE:
 413 0000 0000     		.space	2
 414              		.section	.rodata.CSWTCH.31,"a",%progbits
 415              		.align	2
 416              		.set	.LANCHOR5,. + 0
 417              		.type	CSWTCH.31, %object
 418              		.size	CSWTCH.31, 12
 419              	CSWTCH.31:
 420 0000 00000000 		.word	.LC0
 421 0004 08000000 		.word	.LC1
 422 0008 10000000 		.word	.LC2
 423              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
