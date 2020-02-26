ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 1


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
  15              		.file	"Pid.cpp"
  16              		.section	.text._ZN3PIDC2EP8Platforma,"ax",%progbits
  17              		.align	2
  18              		.global	_ZN3PIDC2EP8Platforma
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN3PIDC2EP8Platforma, %function
  22              	_ZN3PIDC2EP8Platforma:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 38B5     		push	{r3, r4, r5, lr}
  26 0002 0446     		mov	r4, r0
  27 0004 1546     		mov	r5, r2
  28 0006 40F8301B 		str	r1, [r0], #48
  29 000a FFF7FEFF 		bl	_ZN5FopDtC1Ev
  30 000e 0123     		movs	r3, #1
  31 0010 84F87250 		strb	r5, [r4, #114]
  32 0014 84F87430 		strb	r3, [r4, #116]
  33 0018 2046     		mov	r0, r4
  34 001a 38BD     		pop	{r3, r4, r5, pc}
  35              		.size	_ZN3PIDC2EP8Platforma, .-_ZN3PIDC2EP8Platforma
  36              		.global	_ZN3PIDC1EP8Platforma
  37              		.thumb_set _ZN3PIDC1EP8Platforma,_ZN3PIDC2EP8Platforma
  38              		.section	.text._ZN3PID4InitEffffb,"ax",%progbits
  39              		.align	2
  40              		.global	_ZN3PID4InitEffffb
  41              		.thumb
  42              		.thumb_func
  43              		.type	_ZN3PID4InitEffffb, %function
  44              	_ZN3PID4InitEffffb:
  45              		@ args = 8, pretend = 0, frame = 0
  46              		@ frame_needed = 0, uses_anonymous_args = 0
  47 0000 F0B5     		push	{r4, r5, r6, r7, lr}
  48 0002 83B0     		sub	sp, sp, #12
  49 0004 1A4F     		ldr	r7, .L8
  50 0006 9DF82440 		ldrb	r4, [sp, #36]	@ zero_extendqisi2
  51 000a 0194     		str	r4, [sp, #4]
  52 000c 0446     		mov	r4, r0
  53 000e 089E     		ldr	r6, [sp, #32]	@ float
  54 0010 1848     		ldr	r0, .L8+4
  55 0012 6061     		str	r0, [r4, #20]	@ float
  56 0014 4FF07E55 		mov	r5, #1065353216
  57 0018 E660     		str	r6, [r4, #12]	@ float
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 2


  58 001a 2761     		str	r7, [r4, #16]	@ float
  59 001c 04F13000 		add	r0, r4, #48
  60 0020 0095     		str	r5, [sp]	@ float
  61 0022 FFF7FEFF 		bl	_ZN5FopDt13SetParametersEffffb
  62 0026 144B     		ldr	r3, .L8+8
  63 0028 94F84010 		ldrb	r1, [r4, #64]	@ zero_extendqisi2
  64 002c A361     		str	r3, [r4, #24]	@ float
  65 002e 0022     		movs	r2, #0
  66 0030 0023     		movs	r3, #0
  67 0032 0120     		movs	r0, #1
  68 0034 84F87400 		strb	r0, [r4, #116]
  69 0038 84F87330 		strb	r3, [r4, #115]
  70 003c E362     		str	r3, [r4, #44]
  71 003e 84F87730 		strb	r3, [r4, #119]
  72 0042 84F87530 		strb	r3, [r4, #117]
  73 0046 84F87630 		strb	r3, [r4, #118]
  74 004a A4F87030 		strh	r3, [r4, #112]	@ movhi
  75 004e 6260     		str	r2, [r4, #4]	@ float
  76 0050 A260     		str	r2, [r4, #8]	@ float
  77 0052 E265     		str	r2, [r4, #92]	@ float
  78 0054 2266     		str	r2, [r4, #96]	@ float
  79 0056 6266     		str	r2, [r4, #100]	@ float
  80 0058 21B1     		cbz	r1, .L3
  81 005a 2068     		ldr	r0, [r4]
  82 005c 94F97210 		ldrsb	r1, [r4, #114]
  83 0060 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjf
  84              	.L3:
  85 0064 FFF7FEFF 		bl	millis
  86 0068 E066     		str	r0, [r4, #108]
  87 006a 03B0     		add	sp, sp, #12
  88              		@ sp needed
  89 006c F0BD     		pop	{r4, r5, r6, r7, pc}
  90              	.L9:
  91 006e 00BF     		.align	2
  92              	.L8:
  93 0070 00007041 		.word	1097859072
  94 0074 0000A040 		.word	1084227584
  95 0078 0000FA44 		.word	1157234688
  96              		.size	_ZN3PID4InitEffffb, .-_ZN3PID4InitEffffb
  97              		.section	.text._ZN3PID5ResetEv,"ax",%progbits
  98              		.align	2
  99              		.global	_ZN3PID5ResetEv
 100              		.thumb
 101              		.thumb_func
 102              		.type	_ZN3PID5ResetEv, %function
 103              	_ZN3PID5ResetEv:
 104              		@ args = 0, pretend = 0, frame = 0
 105              		@ frame_needed = 0, uses_anonymous_args = 0
 106              		@ link register save eliminated.
 107 0000 0B4B     		ldr	r3, .L11
 108 0002 8361     		str	r3, [r0, #24]	@ float
 109 0004 0022     		movs	r2, #0
 110 0006 0023     		movs	r3, #0
 111 0008 0121     		movs	r1, #1
 112 000a 80F87410 		strb	r1, [r0, #116]
 113 000e 80F87330 		strb	r3, [r0, #115]
 114 0012 C362     		str	r3, [r0, #44]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 3


 115 0014 80F87730 		strb	r3, [r0, #119]
 116 0018 80F87530 		strb	r3, [r0, #117]
 117 001c 80F87630 		strb	r3, [r0, #118]
 118 0020 A0F87030 		strh	r3, [r0, #112]	@ movhi
 119 0024 4260     		str	r2, [r0, #4]	@ float
 120 0026 8260     		str	r2, [r0, #8]	@ float
 121 0028 C265     		str	r2, [r0, #92]	@ float
 122 002a 0266     		str	r2, [r0, #96]	@ float
 123 002c 4266     		str	r2, [r0, #100]	@ float
 124 002e 7047     		bx	lr
 125              	.L12:
 126              		.align	2
 127              	.L11:
 128 0030 0000FA44 		.word	1157234688
 129              		.size	_ZN3PID5ResetEv, .-_ZN3PID5ResetEv
 130              		.section	.text._ZN3PID8SetModelEffffb,"ax",%progbits
 131              		.align	2
 132              		.global	_ZN3PID8SetModelEffffb
 133              		.thumb
 134              		.thumb_func
 135              		.type	_ZN3PID8SetModelEffffb, %function
 136              	_ZN3PID8SetModelEffffb:
 137              		@ args = 8, pretend = 0, frame = 0
 138              		@ frame_needed = 0, uses_anonymous_args = 0
 139 0000 30B5     		push	{r4, r5, lr}
 140 0002 83B0     		sub	sp, sp, #12
 141 0004 069C     		ldr	r4, [sp, #24]	@ float
 142 0006 9DF81C50 		ldrb	r5, [sp, #28]	@ zero_extendqisi2
 143 000a 0094     		str	r4, [sp]	@ float
 144 000c 0195     		str	r5, [sp, #4]
 145 000e 0446     		mov	r4, r0
 146 0010 3030     		adds	r0, r0, #48
 147 0012 FFF7FEFF 		bl	_ZN5FopDt13SetParametersEffffb
 148 0016 C0B1     		cbz	r0, .L14
 149 0018 94F84030 		ldrb	r3, [r4, #64]	@ zero_extendqisi2
 150 001c ABB9     		cbnz	r3, .L14
 151 001e 0022     		movs	r2, #0
 152 0020 0B4D     		ldr	r5, .L18
 153 0022 84F87330 		strb	r3, [r4, #115]
 154 0026 0121     		movs	r1, #1
 155 0028 E362     		str	r3, [r4, #44]
 156 002a 84F87730 		strb	r3, [r4, #119]
 157 002e 84F87530 		strb	r3, [r4, #117]
 158 0032 84F87630 		strb	r3, [r4, #118]
 159 0036 A4F87030 		strh	r3, [r4, #112]	@ movhi
 160 003a 6260     		str	r2, [r4, #4]	@ float
 161 003c A260     		str	r2, [r4, #8]	@ float
 162 003e E265     		str	r2, [r4, #92]	@ float
 163 0040 2266     		str	r2, [r4, #96]	@ float
 164 0042 6266     		str	r2, [r4, #100]	@ float
 165 0044 A561     		str	r5, [r4, #24]	@ float
 166 0046 84F87410 		strb	r1, [r4, #116]
 167              	.L14:
 168 004a 03B0     		add	sp, sp, #12
 169              		@ sp needed
 170 004c 30BD     		pop	{r4, r5, pc}
 171              	.L19:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 4


 172 004e 00BF     		.align	2
 173              	.L18:
 174 0050 0000FA44 		.word	1157234688
 175              		.size	_ZN3PID8SetModelEffffb, .-_ZN3PID8SetModelEffffb
 176              		.section	.text._ZN3PID15ReadTemperatureEv,"ax",%progbits
 177              		.align	2
 178              		.global	_ZN3PID15ReadTemperatureEv
 179              		.thumb
 180              		.thumb_func
 181              		.type	_ZN3PID15ReadTemperatureEv, %function
 182              	_ZN3PID15ReadTemperatureEv:
 183              		@ args = 0, pretend = 0, frame = 8
 184              		@ frame_needed = 0, uses_anonymous_args = 0
 185 0000 10B5     		push	{r4, lr}
 186 0002 82B0     		sub	sp, sp, #8
 187 0004 0446     		mov	r4, r0
 188 0006 02AA     		add	r2, sp, #8
 189 0008 0023     		movs	r3, #0
 190 000a 02F8013D 		strb	r3, [r2, #-1]!
 191 000e 0068     		ldr	r0, [r0]
 192 0010 94F97210 		ldrsb	r1, [r4, #114]
 193 0014 FFF7FEFF 		bl	_ZN8Platform14GetTemperatureEjR16TemperatureError
 194 0018 07EE900A 		fmsr	s15, r0
 195 001c 9DF80700 		ldrb	r0, [sp, #7]	@ zero_extendqisi2
 196 0020 C4ED067A 		fsts	s15, [r4, #24]
 197 0024 78B9     		cbnz	r0, .L21
 198 0026 BAEE047A 		fconsts	s14, #164
 199 002a F4EEC77A 		fcmpes	s15, s14
 200 002e F1EE10FA 		fmstat
 201 0032 0AD4     		bmi	.L24
 202 0034 94ED037A 		flds	s14, [r4, #12]
 203 0038 F4EEC77A 		fcmpes	s15, s14
 204 003c F1EE10FA 		fmstat
 205 0040 CCBF     		ite	gt
 206 0042 0520     		movgt	r0, #5
 207 0044 0020     		movle	r0, #0
 208              	.L21:
 209 0046 02B0     		add	sp, sp, #8
 210              		@ sp needed
 211 0048 10BD     		pop	{r4, pc}
 212              	.L24:
 213 004a 0420     		movs	r0, #4
 214 004c 02B0     		add	sp, sp, #8
 215              		@ sp needed
 216 004e 10BD     		pop	{r4, pc}
 217              		.size	_ZN3PID15ReadTemperatureEv, .-_ZN3PID15ReadTemperatureEv
 218              		.section	.text._ZN3PID8SwitchOnEv,"ax",%progbits
 219              		.align	2
 220              		.global	_ZN3PID8SwitchOnEv
 221              		.thumb
 222              		.thumb_func
 223              		.type	_ZN3PID8SwitchOnEv, %function
 224              	_ZN3PID8SwitchOnEv:
 225              		@ args = 0, pretend = 0, frame = 0
 226              		@ frame_needed = 0, uses_anonymous_args = 0
 227 0000 70B5     		push	{r4, r5, r6, lr}
 228 0002 90F87450 		ldrb	r5, [r0, #116]	@ zero_extendqisi2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 5


 229 0006 0446     		mov	r4, r0
 230 0008 2DB9     		cbnz	r5, .L28
 231 000a 284B     		ldr	r3, .L50
 232 000c B3F84030 		ldrh	r3, [r3, #64]
 233 0010 9A06     		lsls	r2, r3, #26
 234 0012 3DD4     		bmi	.L48
 235              	.L27:
 236 0014 70BD     		pop	{r4, r5, r6, pc}
 237              	.L28:
 238 0016 90F84030 		ldrb	r3, [r0, #64]	@ zero_extendqisi2
 239 001a 002B     		cmp	r3, #0
 240 001c FAD0     		beq	.L27
 241 001e 90F87530 		ldrb	r3, [r0, #117]	@ zero_extendqisi2
 242 0022 90ED067A 		flds	s14, [r0, #24]
 243 0026 D0ED015A 		flds	s11, [r0, #4]
 244 002a D0ED027A 		flds	s15, [r0, #8]
 245 002e F0EE046A 		fconsts	s13, #4
 246 0032 002B     		cmp	r3, #0
 247 0034 37EE266A 		fadds	s12, s14, s13
 248 0038 18BF     		it	ne
 249 003a F0EE657A 		fcpysne	s15, s11
 250 003e F4EEC67A 		fcmpes	s15, s12
 251 0042 F1EE10FA 		fmstat
 252 0046 21DC     		bgt	.L37
 253 0048 77EEA67A 		fadds	s15, s15, s13
 254 004c B4EEE77A 		fcmpes	s14, s15
 255 0050 F1EE10FA 		fmstat
 256 0054 CCBF     		ite	gt
 257 0056 0323     		movgt	r3, #3
 258 0058 0423     		movle	r3, #4
 259              	.L33:
 260 005a AB42     		cmp	r3, r5
 261 005c 84F87430 		strb	r3, [r4, #116]
 262 0060 D8D0     		beq	.L27
 263 0062 0022     		movs	r2, #0
 264 0064 022B     		cmp	r3, #2
 265 0066 A4F87020 		strh	r2, [r4, #112]	@ movhi
 266 006a 1AD0     		beq	.L49
 267              	.L35:
 268 006c 0F4B     		ldr	r3, .L50
 269 006e B3F84030 		ldrh	r3, [r3, #64]
 270 0072 9B06     		lsls	r3, r3, #26
 271 0074 CED5     		bpl	.L27
 272 0076 012D     		cmp	r5, #1
 273 0078 CCD1     		bne	.L27
 274 007a 2068     		ldr	r0, [r4]
 275 007c 94F97230 		ldrsb	r3, [r4, #114]
 276 0080 0B4A     		ldr	r2, .L50+4
 277 0082 0621     		movs	r1, #6
 278 0084 BDE87040 		pop	{r4, r5, r6, lr}
 279 0088 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 280              	.L37:
 281 008c 0223     		movs	r3, #2
 282 008e E4E7     		b	.L33
 283              	.L48:
 284 0090 94F97230 		ldrsb	r3, [r4, #114]
 285 0094 0068     		ldr	r0, [r0]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 6


 286 0096 074A     		ldr	r2, .L50+8
 287 0098 0621     		movs	r1, #6
 288 009a BDE87040 		pop	{r4, r5, r6, lr}
 289 009e FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 290              	.L49:
 291 00a2 FFF7FEFF 		bl	millis
 292 00a6 A066     		str	r0, [r4, #104]
 293 00a8 E0E7     		b	.L35
 294              	.L51:
 295 00aa 00BF     		.align	2
 296              	.L50:
 297 00ac 00000000 		.word	reprap
 298 00b0 34000000 		.word	.LC1
 299 00b4 00000000 		.word	.LC0
 300              		.size	_ZN3PID8SwitchOnEv, .-_ZN3PID8SwitchOnEv
 301              		.section	.text._ZN3PID9SwitchOffEv,"ax",%progbits
 302              		.align	2
 303              		.global	_ZN3PID9SwitchOffEv
 304              		.thumb
 305              		.thumb_func
 306              		.type	_ZN3PID9SwitchOffEv, %function
 307              	_ZN3PID9SwitchOffEv:
 308              		@ args = 0, pretend = 0, frame = 0
 309              		@ frame_needed = 0, uses_anonymous_args = 0
 310 0000 90F84030 		ldrb	r3, [r0, #64]	@ zero_extendqisi2
 311 0004 0022     		movs	r2, #0
 312 0006 70B5     		push	{r4, r5, r6, lr}
 313 0008 0446     		mov	r4, r0
 314 000a 0266     		str	r2, [r0, #96]	@ float
 315 000c 03B9     		cbnz	r3, .L60
 316              	.L52:
 317 000e 70BD     		pop	{r4, r5, r6, pc}
 318              	.L60:
 319 0010 0068     		ldr	r0, [r0]
 320 0012 94F97210 		ldrsb	r1, [r4, #114]
 321 0016 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjf
 322 001a 94F87430 		ldrb	r3, [r4, #116]	@ zero_extendqisi2
 323 001e 042B     		cmp	r3, #4
 324 0020 12D8     		bhi	.L61
 325              	.L55:
 326 0022 012B     		cmp	r3, #1
 327 0024 F3D9     		bls	.L52
 328 0026 0D4B     		ldr	r3, .L62
 329 0028 B3F84030 		ldrh	r3, [r3, #64]
 330 002c 0122     		movs	r2, #1
 331 002e 9B06     		lsls	r3, r3, #26
 332 0030 84F87420 		strb	r2, [r4, #116]
 333 0034 EBD5     		bpl	.L52
 334 0036 2068     		ldr	r0, [r4]
 335 0038 94F97230 		ldrsb	r3, [r4, #114]
 336 003c 084A     		ldr	r2, .L62+4
 337 003e 0621     		movs	r1, #6
 338 0040 BDE87040 		pop	{r4, r5, r6, lr}
 339 0044 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 340              	.L61:
 341 0048 064D     		ldr	r5, .L62+8
 342 004a 2868     		ldr	r0, [r5]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 7


 343 004c FFF7FEFF 		bl	_ZdlPv
 344 0050 0022     		movs	r2, #0
 345 0052 94F87430 		ldrb	r3, [r4, #116]	@ zero_extendqisi2
 346 0056 2A60     		str	r2, [r5]
 347 0058 E3E7     		b	.L55
 348              	.L63:
 349 005a 00BF     		.align	2
 350              	.L62:
 351 005c 00000000 		.word	reprap
 352 0060 4C000000 		.word	.LC2
 353 0064 00000000 		.word	.LANCHOR0
 354              		.size	_ZN3PID9SwitchOffEv, .-_ZN3PID9SwitchOffEv
 355              		.global	__aeabi_f2d
 356              		.section	.text._ZN3PID20SetActiveTemperatureEf,"ax",%progbits
 357              		.align	2
 358              		.global	_ZN3PID20SetActiveTemperatureEf
 359              		.thumb
 360              		.thumb_func
 361              		.type	_ZN3PID20SetActiveTemperatureEf, %function
 362              	_ZN3PID20SetActiveTemperatureEf:
 363              		@ args = 0, pretend = 0, frame = 0
 364              		@ frame_needed = 0, uses_anonymous_args = 0
 365 0000 10B5     		push	{r4, lr}
 366 0002 90ED037A 		flds	s14, [r0, #12]
 367 0006 07EE901A 		fmsr	s15, r1
 368 000a B4EEE77A 		fcmpes	s14, s15
 369 000e F1EE10FA 		fmstat
 370 0012 84B0     		sub	sp, sp, #16
 371 0014 0446     		mov	r4, r0
 372 0016 0ED4     		bmi	.L73
 373 0018 90F87430 		ldrb	r3, [r0, #116]	@ zero_extendqisi2
 374 001c 6160     		str	r1, [r4, #4]	@ float
 375 001e 012B     		cmp	r3, #1
 376 0020 02D9     		bls	.L64
 377 0022 90F87530 		ldrb	r3, [r0, #117]	@ zero_extendqisi2
 378 0026 0BB9     		cbnz	r3, .L74
 379              	.L64:
 380 0028 04B0     		add	sp, sp, #16
 381              		@ sp needed
 382 002a 10BD     		pop	{r4, pc}
 383              	.L74:
 384 002c 04B0     		add	sp, sp, #16
 385              		@ sp needed
 386 002e BDE81040 		pop	{r4, lr}
 387 0032 FFF7FEBF 		b	_ZN3PID8SwitchOnEv
 388              	.L73:
 389 0036 0846     		mov	r0, r1	@ float
 390 0038 FFF7FEFF 		bl	__aeabi_f2d
 391 003c 2368     		ldr	r3, [r4]
 392 003e 94F97220 		ldrsb	r2, [r4, #114]
 393 0042 0292     		str	r2, [sp, #8]
 394 0044 CDE90001 		strd	r0, [sp]
 395 0048 034A     		ldr	r2, .L75
 396 004a 1846     		mov	r0, r3
 397 004c 0621     		movs	r1, #6
 398 004e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 399 0052 04B0     		add	sp, sp, #16
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 8


 400              		@ sp needed
 401 0054 10BD     		pop	{r4, pc}
 402              	.L76:
 403 0056 00BF     		.align	2
 404              	.L75:
 405 0058 64000000 		.word	.LC3
 406              		.size	_ZN3PID20SetActiveTemperatureEf, .-_ZN3PID20SetActiveTemperatureEf
 407              		.section	.text._ZN3PID21SetStandbyTemperatureEf,"ax",%progbits
 408              		.align	2
 409              		.global	_ZN3PID21SetStandbyTemperatureEf
 410              		.thumb
 411              		.thumb_func
 412              		.type	_ZN3PID21SetStandbyTemperatureEf, %function
 413              	_ZN3PID21SetStandbyTemperatureEf:
 414              		@ args = 0, pretend = 0, frame = 0
 415              		@ frame_needed = 0, uses_anonymous_args = 0
 416 0000 10B5     		push	{r4, lr}
 417 0002 90ED037A 		flds	s14, [r0, #12]
 418 0006 07EE901A 		fmsr	s15, r1
 419 000a B4EEE77A 		fcmpes	s14, s15
 420 000e F1EE10FA 		fmstat
 421 0012 84B0     		sub	sp, sp, #16
 422 0014 0446     		mov	r4, r0
 423 0016 0ED4     		bmi	.L83
 424 0018 90F87430 		ldrb	r3, [r0, #116]	@ zero_extendqisi2
 425 001c A160     		str	r1, [r4, #8]	@ float
 426 001e 012B     		cmp	r3, #1
 427 0020 02D9     		bls	.L77
 428 0022 90F87530 		ldrb	r3, [r0, #117]	@ zero_extendqisi2
 429 0026 0BB1     		cbz	r3, .L84
 430              	.L77:
 431 0028 04B0     		add	sp, sp, #16
 432              		@ sp needed
 433 002a 10BD     		pop	{r4, pc}
 434              	.L84:
 435 002c 04B0     		add	sp, sp, #16
 436              		@ sp needed
 437 002e BDE81040 		pop	{r4, lr}
 438 0032 FFF7FEBF 		b	_ZN3PID8SwitchOnEv
 439              	.L83:
 440 0036 0846     		mov	r0, r1	@ float
 441 0038 FFF7FEFF 		bl	__aeabi_f2d
 442 003c 2368     		ldr	r3, [r4]
 443 003e 94F97220 		ldrsb	r2, [r4, #114]
 444 0042 0292     		str	r2, [sp, #8]
 445 0044 CDE90001 		strd	r0, [sp]
 446 0048 034A     		ldr	r2, .L85
 447 004a 1846     		mov	r0, r3
 448 004c 0621     		movs	r1, #6
 449 004e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 450 0052 04B0     		add	sp, sp, #16
 451              		@ sp needed
 452 0054 10BD     		pop	{r4, pc}
 453              	.L86:
 454 0056 00BF     		.align	2
 455              	.L85:
 456 0058 64000000 		.word	.LC3
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 9


 457              		.size	_ZN3PID21SetStandbyTemperatureEf, .-_ZN3PID21SetStandbyTemperatureEf
 458              		.section	.text._ZN3PID8ActivateEv,"ax",%progbits
 459              		.align	2
 460              		.global	_ZN3PID8ActivateEv
 461              		.thumb
 462              		.thumb_func
 463              		.type	_ZN3PID8ActivateEv, %function
 464              	_ZN3PID8ActivateEv:
 465              		@ args = 0, pretend = 0, frame = 0
 466              		@ frame_needed = 0, uses_anonymous_args = 0
 467              		@ link register save eliminated.
 468 0000 90F87420 		ldrb	r2, [r0, #116]	@ zero_extendqisi2
 469 0004 02B9     		cbnz	r2, .L89
 470 0006 7047     		bx	lr
 471              	.L89:
 472 0008 0122     		movs	r2, #1
 473 000a 80F87520 		strb	r2, [r0, #117]
 474 000e FFF7FEBF 		b	_ZN3PID8SwitchOnEv
 475              		.size	_ZN3PID8ActivateEv, .-_ZN3PID8ActivateEv
 476 0012 00BF     		.section	.text._ZN3PID7StandbyEv,"ax",%progbits
 477              		.align	2
 478              		.global	_ZN3PID7StandbyEv
 479              		.thumb
 480              		.thumb_func
 481              		.type	_ZN3PID7StandbyEv, %function
 482              	_ZN3PID7StandbyEv:
 483              		@ args = 0, pretend = 0, frame = 0
 484              		@ frame_needed = 0, uses_anonymous_args = 0
 485              		@ link register save eliminated.
 486 0000 90F87420 		ldrb	r2, [r0, #116]	@ zero_extendqisi2
 487 0004 02B9     		cbnz	r2, .L92
 488 0006 7047     		bx	lr
 489              	.L92:
 490 0008 0022     		movs	r2, #0
 491 000a 80F87520 		strb	r2, [r0, #117]
 492 000e FFF7FEBF 		b	_ZN3PID8SwitchOnEv
 493              		.size	_ZN3PID7StandbyEv, .-_ZN3PID7StandbyEv
 494 0012 00BF     		.section	.text._ZN3PID10ResetFaultEv,"ax",%progbits
 495              		.align	2
 496              		.global	_ZN3PID10ResetFaultEv
 497              		.thumb
 498              		.thumb_func
 499              		.type	_ZN3PID10ResetFaultEv, %function
 500              	_ZN3PID10ResetFaultEv:
 501              		@ args = 0, pretend = 0, frame = 0
 502              		@ frame_needed = 0, uses_anonymous_args = 0
 503 0000 10B5     		push	{r4, lr}
 504 0002 0123     		movs	r3, #1
 505 0004 0446     		mov	r4, r0
 506 0006 80F87430 		strb	r3, [r0, #116]
 507 000a FFF7FEFF 		bl	_ZN3PID9SwitchOffEv
 508 000e 0023     		movs	r3, #0
 509 0010 84F87730 		strb	r3, [r4, #119]
 510 0014 10BD     		pop	{r4, pc}
 511              		.size	_ZN3PID10ResetFaultEv, .-_ZN3PID10ResetFaultEv
 512 0016 00BF     		.section	.text._ZNK3PID13GetAveragePWMEv,"ax",%progbits
 513              		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 10


 514              		.global	_ZNK3PID13GetAveragePWMEv
 515              		.thumb
 516              		.thumb_func
 517              		.type	_ZNK3PID13GetAveragePWMEv, %function
 518              	_ZNK3PID13GetAveragePWMEv:
 519              		@ args = 0, pretend = 0, frame = 0
 520              		@ frame_needed = 0, uses_anonymous_args = 0
 521              		@ link register save eliminated.
 522 0000 0368     		ldr	r3, [r0]
 523 0002 D0ED196A 		flds	s13, [r0, #100]
 524 0006 D3F80C37 		ldr	r3, [r3, #1804]
 525 000a DFED067A 		flds	s15, .L95
 526 000e 07EE103A 		fmsr	s14, r3	@ int
 527 0012 B8EE477A 		fuitos	s14, s14
 528 0016 27EE267A 		fmuls	s14, s14, s13
 529 001a C7EE277A 		fdivs	s15, s14, s15
 530 001e 17EE900A 		fmrs	r0, s15
 531 0022 7047     		bx	lr
 532              	.L96:
 533              		.align	2
 534              	.L95:
 535 0024 00409C45 		.word	1167867904
 536              		.size	_ZNK3PID13GetAveragePWMEv, .-_ZNK3PID13GetAveragePWMEv
 537              		.global	__aeabi_dmul
 538              		.global	__aeabi_d2f
 539              		.section	.text._ZNK3PID22GetExpectedHeatingRateEv,"ax",%progbits
 540              		.align	2
 541              		.global	_ZNK3PID22GetExpectedHeatingRateEv
 542              		.thumb
 543              		.thumb_func
 544              		.type	_ZNK3PID22GetExpectedHeatingRateEv, %function
 545              	_ZNK3PID22GetExpectedHeatingRateEv:
 546              		@ args = 0, pretend = 0, frame = 0
 547              		@ frame_needed = 0, uses_anonymous_args = 0
 548 0000 70B5     		push	{r4, r5, r6, lr}
 549 0002 0646     		mov	r6, r0
 550 0004 006B     		ldr	r0, [r0, #48]	@ float
 551 0006 FFF7FEFF 		bl	__aeabi_f2d
 552 000a 0022     		movs	r2, #0
 553 000c 204B     		ldr	r3, .L103
 554 000e FFF7FEFF 		bl	__aeabi_dmul
 555 0012 3368     		ldr	r3, [r6]
 556 0014 D6ED196A 		flds	s13, [r6, #100]
 557 0018 D3F80C37 		ldr	r3, [r3, #1804]
 558 001c DFED1D7A 		flds	s15, .L103+4
 559 0020 07EE103A 		fmsr	s14, r3	@ int
 560 0024 B8EE477A 		fuitos	s14, s14
 561 0028 0446     		mov	r4, r0
 562 002a 27EE267A 		fmuls	s14, s14, s13
 563 002e 0D46     		mov	r5, r1
 564 0030 C7EE277A 		fdivs	s15, s14, s15
 565 0034 17EE900A 		fmrs	r0, s15
 566 0038 FFF7FEFF 		bl	__aeabi_f2d
 567 003c 0246     		mov	r2, r0
 568 003e 0B46     		mov	r3, r1
 569 0040 2046     		mov	r0, r4
 570 0042 2946     		mov	r1, r5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 11


 571 0044 FFF7FEFF 		bl	__aeabi_dmul
 572 0048 FFF7FEFF 		bl	__aeabi_d2f
 573 004c 07EE900A 		fmsr	s15, r0
 574 0050 B3EE047A 		fconsts	s14, #52
 575 0054 F4EEC77A 		fcmpes	s15, s14
 576 0058 F1EE10FA 		fmstat
 577 005c D6ED0D6A 		flds	s13, [r6, #52]
 578 0060 10DB     		blt	.L102
 579 0062 C7EEA66A 		fdivs	s13, s15, s13
 580 0066 B3EE097A 		fconsts	s14, #57
 581 006a 37EE877A 		fadds	s14, s15, s14
 582 006e 96ED066A 		flds	s12, [r6, #24]
 583 0072 37EE467A 		fsubs	s14, s14, s12
 584 0076 67EE266A 		fmuls	s13, s14, s13
 585 007a C6EEA77A 		fdivs	s15, s13, s15
 586 007e 17EE900A 		fmrs	r0, s15
 587 0082 70BD     		pop	{r4, r5, r6, pc}
 588              	.L102:
 589 0084 DFED047A 		flds	s15, .L103+8
 590 0088 17EE900A 		fmrs	r0, s15
 591 008c 70BD     		pop	{r4, r5, r6, pc}
 592              	.L104:
 593 008e 00BF     		.align	2
 594              	.L103:
 595 0090 0000E83F 		.word	1072168960
 596 0094 00409C45 		.word	1167867904
 597 0098 00000000 		.word	0
 598              		.size	_ZNK3PID22GetExpectedHeatingRateEv, .-_ZNK3PID22GetExpectedHeatingRateEv
 599              		.global	__aeabi_dcmpgt
 600              		.section	.text._ZN3PID13StartAutoTuneEffR9StringRef,"ax",%progbits
 601              		.align	2
 602              		.global	_ZN3PID13StartAutoTuneEffR9StringRef
 603              		.thumb
 604              		.thumb_func
 605              		.type	_ZN3PID13StartAutoTuneEffR9StringRef, %function
 606              	_ZN3PID13StartAutoTuneEffR9StringRef:
 607              		@ args = 0, pretend = 0, frame = 0
 608              		@ frame_needed = 0, uses_anonymous_args = 0
 609 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 610 0002 2DED028B 		fstmfdd	sp!, {d8}
 611 0006 90F84060 		ldrb	r6, [r0, #64]	@ zero_extendqisi2
 612 000a 85B0     		sub	sp, sp, #20
 613 000c 0446     		mov	r4, r0
 614 000e 0F46     		mov	r7, r1	@ float
 615 0010 1D46     		mov	r5, r3
 616 0012 08EE102A 		fmsr	s16, r2
 617 0016 002E     		cmp	r6, #0
 618 0018 6DD0     		beq	.L120
 619 001a D0ED187A 		flds	s15, [r0, #96]
 620 001e F5EEC07A 		fcmpezs	s15
 621 0022 F1EE10FA 		fmstat
 622 0026 0ADD     		ble	.L121
 623              	.L107:
 624 0028 94F97220 		ldrsb	r2, [r4, #114]
 625 002c 4249     		ldr	r1, .L123+8
 626 002e 2846     		mov	r0, r5
 627 0030 05B0     		add	sp, sp, #20
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 12


 628              		@ sp needed
 629 0032 BDEC028B 		fldmfdd	sp!, {d8}
 630 0036 BDE8F040 		pop	{r4, r5, r6, r7, lr}
 631 003a FFF7FEBF 		b	_ZN9StringRef6printfEPKcz
 632              	.L121:
 633 003e 0368     		ldr	r3, [r0]
 634 0040 D0ED196A 		flds	s13, [r0, #100]
 635 0044 D3F80C37 		ldr	r3, [r3, #1804]
 636 0048 DFED3C7A 		flds	s15, .L123+12
 637 004c 07EE103A 		fmsr	s14, r3	@ int
 638 0050 B8EE477A 		fuitos	s14, s14
 639 0054 27EE267A 		fmuls	s14, s14, s13
 640 0058 C7EE277A 		fdivs	s15, s14, s15
 641 005c 17EE900A 		fmrs	r0, s15
 642 0060 FFF7FEFF 		bl	__aeabi_f2d
 643 0064 32A3     		adr	r3, .L123
 644 0066 D3E90023 		ldrd	r2, [r3]
 645 006a FFF7FEFF 		bl	__aeabi_dcmpgt
 646 006e 0028     		cmp	r0, #0
 647 0070 DAD1     		bne	.L107
 648 0072 2046     		mov	r0, r4
 649 0074 FFF7FEFF 		bl	_ZN3PID15ReadTemperatureEv
 650 0078 0346     		mov	r3, r0
 651 007a 0028     		cmp	r0, #0
 652 007c 46D1     		bne	.L122
 653 007e 0521     		movs	r1, #5
 654 0080 2F4A     		ldr	r2, .L123+16
 655 0082 84F87630 		strb	r3, [r4, #118]
 656 0086 84F87410 		strb	r1, [r4, #116]
 657 008a 4FF40070 		mov	r0, #512
 658 008e 1360     		str	r3, [r2]
 659 0090 FFF7FEFF 		bl	_Znaj
 660 0094 2268     		ldr	r2, [r4]
 661 0096 2B49     		ldr	r1, .L123+20
 662 0098 A669     		ldr	r6, [r4, #24]	@ float
 663 009a 2B4B     		ldr	r3, .L123+24
 664 009c D2F80C27 		ldr	r2, [r2, #1804]
 665 00a0 0860     		str	r0, [r1]
 666 00a2 B4EE488A 		fcmps	s16, s16
 667 00a6 0660     		str	r6, [r0]	@ float
 668 00a8 F1EE10FA 		fmstat
 669 00ac D4ED0F7A 		flds	s15, [r4, #60]
 670 00b0 1A60     		str	r2, [r3]
 671 00b2 3AD6     		bvs	.L113
 672 00b4 F4EEC87A 		fcmpes	s15, s16
 673 00b8 F1EE10FA 		fmstat
 674 00bc C8BF     		it	gt
 675 00be F0EE487A 		fcpysgt	s15, s16
 676              	.L109:
 677 00c2 224B     		ldr	r3, .L123+28
 678 00c4 224A     		ldr	r2, .L123+32
 679 00c6 1F60     		str	r7, [r3]	@ float
 680 00c8 C2ED007A 		fsts	s15, [r2]
 681 00cc 3846     		mov	r0, r7	@ float
 682 00ce FFF7FEFF 		bl	__aeabi_f2d
 683 00d2 CDE90001 		strd	r0, [sp]
 684 00d6 18EE100A 		fmrs	r0, s16
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 13


 685 00da FFF7FEFF 		bl	__aeabi_f2d
 686 00de 94F97220 		ldrsb	r2, [r4, #114]
 687 00e2 CDE90201 		strd	r0, [sp, #8]
 688 00e6 2846     		mov	r0, r5
 689 00e8 1A49     		ldr	r1, .L123+36
 690 00ea FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 691 00ee 05B0     		add	sp, sp, #20
 692              		@ sp needed
 693 00f0 BDEC028B 		fldmfdd	sp!, {d8}
 694 00f4 F0BD     		pop	{r4, r5, r6, r7, pc}
 695              	.L120:
 696 00f6 94F97220 		ldrsb	r2, [r4, #114]
 697 00fa 1749     		ldr	r1, .L123+40
 698 00fc 1846     		mov	r0, r3
 699 00fe 05B0     		add	sp, sp, #20
 700              		@ sp needed
 701 0100 BDEC028B 		fldmfdd	sp!, {d8}
 702 0104 BDE8F040 		pop	{r4, r5, r6, r7, lr}
 703 0108 FFF7FEBF 		b	_ZN9StringRef6printfEPKcz
 704              	.L122:
 705 010c 94F97240 		ldrsb	r4, [r4, #114]
 706 0110 FFF7FEFF 		bl	_Z22TemperatureErrorString16TemperatureError
 707 0114 1149     		ldr	r1, .L123+44
 708 0116 0346     		mov	r3, r0
 709 0118 2246     		mov	r2, r4
 710 011a 2846     		mov	r0, r5
 711 011c 05B0     		add	sp, sp, #20
 712              		@ sp needed
 713 011e BDEC028B 		fldmfdd	sp!, {d8}
 714 0122 BDE8F040 		pop	{r4, r5, r6, r7, lr}
 715 0126 FFF7FEBF 		b	_ZN9StringRef6printfEPKcz
 716              	.L113:
 717 012a F0EE487A 		fcpys	s15, s16
 718 012e C8E7     		b	.L109
 719              	.L124:
 720              		.align	3
 721              	.L123:
 722 0130 7B14AE47 		.word	1202590843
 723 0134 E17A943F 		.word	1066695393
 724 0138 78010000 		.word	.LC7
 725 013c 00409C45 		.word	1167867904
 726 0140 00000000 		.word	.LANCHOR1
 727 0144 00000000 		.word	.LANCHOR0
 728 0148 00000000 		.word	.LANCHOR2
 729 014c 00000000 		.word	.LANCHOR4
 730 0150 00000000 		.word	.LANCHOR3
 731 0154 14010000 		.word	.LC6
 732 0158 98000000 		.word	.LC4
 733 015c D4000000 		.word	.LC5
 734              		.size	_ZN3PID13StartAutoTuneEffR9StringRef, .-_ZN3PID13StartAutoTuneEffR9StringRef
 735              		.section	.text._ZN3PID17GetAutoTuneStatusER9StringRef,"ax",%progbits
 736              		.align	2
 737              		.global	_ZN3PID17GetAutoTuneStatusER9StringRef
 738              		.thumb
 739              		.thumb_func
 740              		.type	_ZN3PID17GetAutoTuneStatusER9StringRef, %function
 741              	_ZN3PID17GetAutoTuneStatusER9StringRef:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 14


 742              		@ args = 0, pretend = 0, frame = 0
 743              		@ frame_needed = 0, uses_anonymous_args = 0
 744 0000 30B5     		push	{r4, r5, lr}
 745 0002 90F87430 		ldrb	r3, [r0, #116]	@ zero_extendqisi2
 746 0006 042B     		cmp	r3, #4
 747 0008 83B0     		sub	sp, sp, #12
 748 000a 0C46     		mov	r4, r1
 749 000c 13D8     		bhi	.L130
 750 000e 90F87630 		ldrb	r3, [r0, #118]	@ zero_extendqisi2
 751 0012 33B9     		cbnz	r3, .L131
 752 0014 0846     		mov	r0, r1
 753 0016 0D49     		ldr	r1, .L132
 754 0018 03B0     		add	sp, sp, #12
 755              		@ sp needed
 756 001a BDE83040 		pop	{r4, r5, lr}
 757 001e FFF7FEBF 		b	_ZN9StringRef6printfEPKcz
 758              	.L131:
 759 0022 90F97220 		ldrsb	r2, [r0, #114]
 760 0026 0A49     		ldr	r1, .L132+4
 761 0028 2046     		mov	r0, r4
 762 002a 1346     		mov	r3, r2
 763 002c 03B0     		add	sp, sp, #12
 764              		@ sp needed
 765 002e BDE83040 		pop	{r4, r5, lr}
 766 0032 FFF7FEBF 		b	_ZN9StringRef6printfEPKcz
 767              	.L130:
 768 0036 0425     		movs	r5, #4
 769 0038 90F97220 		ldrsb	r2, [r0, #114]
 770 003c 0549     		ldr	r1, .L132+8
 771 003e 0095     		str	r5, [sp]
 772 0040 2046     		mov	r0, r4
 773 0042 043B     		subs	r3, r3, #4
 774 0044 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 775 0048 03B0     		add	sp, sp, #12
 776              		@ sp needed
 777 004a 30BD     		pop	{r4, r5, pc}
 778              	.L133:
 779              		.align	2
 780              	.L132:
 781 004c 18020000 		.word	.LC10
 782 0050 E0010000 		.word	.LC9
 783 0054 B4010000 		.word	.LC8
 784              		.size	_ZN3PID17GetAutoTuneStatusER9StringRef, .-_ZN3PID17GetAutoTuneStatusER9StringRef
 785              		.section	.text._ZN3PID14ReadingsStableEjf,"ax",%progbits
 786              		.align	2
 787              		.global	_ZN3PID14ReadingsStableEjf
 788              		.thumb
 789              		.thumb_func
 790              		.type	_ZN3PID14ReadingsStableEjf, %function
 791              	_ZN3PID14ReadingsStableEjf:
 792              		@ args = 0, pretend = 0, frame = 0
 793              		@ frame_needed = 0, uses_anonymous_args = 0
 794              		@ link register save eliminated.
 795 0000 204B     		ldr	r3, .L146
 796 0002 1A68     		ldr	r2, [r3]
 797 0004 10B4     		push	{r4}
 798 0006 06EE101A 		fmsr	s12, r1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 15


 799 000a 9AB3     		cbz	r2, .L140
 800 000c 1E4B     		ldr	r3, .L146+4
 801 000e 1968     		ldr	r1, [r3]
 802 0010 8142     		cmp	r1, r0
 803 0012 2BD3     		bcc	.L141
 804 0014 081A     		subs	r0, r1, r0
 805 0016 8300     		lsls	r3, r0, #2
 806 0018 0130     		adds	r0, r0, #1
 807 001a D418     		adds	r4, r2, r3
 808 001c 8142     		cmp	r1, r0
 809 001e 94ED007A 		flds	s14, [r4]
 810 0022 2BD9     		bls	.L142
 811 0024 0433     		adds	r3, r3, #4
 812 0026 F0EE476A 		fcpys	s13, s14
 813 002a 1344     		add	r3, r3, r2
 814 002c 02EB8100 		add	r0, r2, r1, lsl #2
 815              	.L139:
 816 0030 F3EC017A 		fldmias	r3!, {s15}
 817 0034 F4EE477A 		fcmps	s15, s14
 818 0038 F1EE10FA 		fmstat
 819 003c F4EE667A 		fcmps	s15, s13
 820 0040 48BF     		it	mi
 821 0042 B0EE677A 		fcpysmi	s14, s15
 822 0046 F1EE10FA 		fmstat
 823 004a C8BF     		it	gt
 824 004c F0EE676A 		fcpysgt	s13, s15
 825 0050 8342     		cmp	r3, r0
 826 0052 EDD1     		bne	.L139
 827              	.L136:
 828 0054 36EEC77A 		fsubs	s14, s13, s14
 829 0058 5DF8044B 		ldr	r4, [sp], #4
 830 005c B4EEC67A 		fcmpes	s14, s12
 831 0060 F1EE10FA 		fmstat
 832 0064 8CBF     		ite	hi
 833 0066 0020     		movhi	r0, #0
 834 0068 0120     		movls	r0, #1
 835 006a 7047     		bx	lr
 836              	.L141:
 837 006c 0020     		movs	r0, #0
 838 006e 5DF8044B 		ldr	r4, [sp], #4
 839 0072 7047     		bx	lr
 840              	.L140:
 841 0074 1046     		mov	r0, r2
 842 0076 5DF8044B 		ldr	r4, [sp], #4
 843 007a 7047     		bx	lr
 844              	.L142:
 845 007c F0EE476A 		fcpys	s13, s14
 846 0080 E8E7     		b	.L136
 847              	.L147:
 848 0082 00BF     		.align	2
 849              	.L146:
 850 0084 00000000 		.word	.LANCHOR0
 851 0088 00000000 		.word	.LANCHOR1
 852              		.size	_ZN3PID14ReadingsStableEjf, .-_ZN3PID14ReadingsStableEjf
 853              		.section	.text._ZN3PID12IdentifyPeakEj,"ax",%progbits
 854              		.align	2
 855              		.global	_ZN3PID12IdentifyPeakEj
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 16


 856              		.thumb
 857              		.thumb_func
 858              		.type	_ZN3PID12IdentifyPeakEj, %function
 859              	_ZN3PID12IdentifyPeakEj:
 860              		@ args = 0, pretend = 0, frame = 0
 861              		@ frame_needed = 0, uses_anonymous_args = 0
 862              		@ link register save eliminated.
 863 0000 1B4B     		ldr	r3, .L162
 864 0002 F0B4     		push	{r4, r5, r6, r7}
 865 0004 1D68     		ldr	r5, [r3]
 866 0006 A842     		cmp	r0, r5
 867 0008 2FD8     		bhi	.L158
 868 000a 1A4B     		ldr	r3, .L162+4
 869 000c DFED1A6A 		flds	s13, .L162+8
 870 0010 1C68     		ldr	r4, [r3]
 871 0012 8700     		lsls	r7, r0, #2
 872 0014 0021     		movs	r1, #0
 873 0016 4FF0FF36 		mov	r6, #-1
 874              	.L150:
 875 001a F8B1     		cbz	r0, .L160
 876 001c DFED177A 		flds	s15, .L162+12
 877 0020 E219     		adds	r2, r4, r7
 878 0022 2346     		mov	r3, r4
 879              	.L157:
 880 0024 B3EC017A 		fldmias	r3!, {s14}
 881 0028 9A42     		cmp	r2, r3
 882 002a 77EE877A 		fadds	s15, s15, s14
 883 002e F9D1     		bne	.L157
 884              	.L156:
 885 0030 F4EEE67A 		fcmpes	s15, s13
 886 0034 F1EE10FA 		fmstat
 887 0038 05DB     		blt	.L152
 888 003a 0136     		adds	r6, r6, #1
 889 003c B142     		cmp	r1, r6
 890 003e 10D1     		bne	.L159
 891 0040 F0EE676A 		fcpys	s13, s15
 892 0044 0E46     		mov	r6, r1
 893              	.L152:
 894 0046 0131     		adds	r1, r1, #1
 895 0048 0B18     		adds	r3, r1, r0
 896 004a AB42     		cmp	r3, r5
 897 004c 04F10404 		add	r4, r4, #4
 898 0050 E3D9     		bls	.L150
 899              	.L149:
 900 0052 0138     		subs	r0, r0, #1
 901 0054 06EB5000 		add	r0, r6, r0, lsr #1
 902 0058 F0BC     		pop	{r4, r5, r6, r7}
 903 005a 7047     		bx	lr
 904              	.L160:
 905 005c DFED077A 		flds	s15, .L162+12
 906 0060 E6E7     		b	.L156
 907              	.L159:
 908 0062 4FF0FF30 		mov	r0, #-1
 909 0066 F0BC     		pop	{r4, r5, r6, r7}
 910 0068 7047     		bx	lr
 911              	.L158:
 912 006a 4FF0FF36 		mov	r6, #-1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 17


 913 006e F0E7     		b	.L149
 914              	.L163:
 915              		.align	2
 916              	.L162:
 917 0070 00000000 		.word	.LANCHOR1
 918 0074 00000000 		.word	.LANCHOR0
 919 0078 00C079C4 		.word	-998653952
 920 007c 00000000 		.word	0
 921              		.size	_ZN3PID12IdentifyPeakEj, .-_ZN3PID12IdentifyPeakEj
 922              		.section	.text._ZN3PID16GetPeakTempIndexEv,"ax",%progbits
 923              		.align	2
 924              		.global	_ZN3PID16GetPeakTempIndexEv
 925              		.thumb
 926              		.thumb_func
 927              		.type	_ZN3PID16GetPeakTempIndexEv, %function
 928              	_ZN3PID16GetPeakTempIndexEv:
 929              		@ args = 0, pretend = 0, frame = 0
 930              		@ frame_needed = 0, uses_anonymous_args = 0
 931 0000 0F4B     		ldr	r3, .L171
 932 0002 10B5     		push	{r4, lr}
 933 0004 1C68     		ldr	r4, [r3]
 934 0006 0E2C     		cmp	r4, #14
 935 0008 16D9     		bls	.L167
 936 000a 0120     		movs	r0, #1
 937 000c FFF7FEFF 		bl	_ZN3PID12IdentifyPeakEj
 938 0010 0028     		cmp	r0, #0
 939 0012 05DB     		blt	.L170
 940              	.L166:
 941 0014 831D     		adds	r3, r0, #6
 942 0016 9C42     		cmp	r4, r3
 943 0018 98BF     		it	ls
 944 001a 4FF0FF30 		movls	r0, #-1
 945 001e 10BD     		pop	{r4, pc}
 946              	.L170:
 947 0020 0320     		movs	r0, #3
 948 0022 FFF7FEFF 		bl	_ZN3PID12IdentifyPeakEj
 949 0026 0028     		cmp	r0, #0
 950 0028 F4DA     		bge	.L166
 951 002a 0520     		movs	r0, #5
 952 002c FFF7FEFF 		bl	_ZN3PID12IdentifyPeakEj
 953 0030 0028     		cmp	r0, #0
 954 0032 EFDA     		bge	.L166
 955 0034 0020     		movs	r0, #0
 956 0036 10BD     		pop	{r4, pc}
 957              	.L167:
 958 0038 4FF0FF30 		mov	r0, #-1
 959 003c 10BD     		pop	{r4, pc}
 960              	.L172:
 961 003e 00BF     		.align	2
 962              	.L171:
 963 0040 00000000 		.word	.LANCHOR1
 964              		.size	_ZN3PID16GetPeakTempIndexEv, .-_ZN3PID16GetPeakTempIndexEv
 965              		.section	.text._ZN3PID13DisplayBufferEPKc,"ax",%progbits
 966              		.align	2
 967              		.global	_ZN3PID13DisplayBufferEPKc
 968              		.thumb
 969              		.thumb_func
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 18


 970              		.type	_ZN3PID13DisplayBufferEPKc, %function
 971              	_ZN3PID13DisplayBufferEPKc:
 972              		@ args = 0, pretend = 0, frame = 8
 973              		@ frame_needed = 0, uses_anonymous_args = 0
 974 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 975 0004 84B0     		sub	sp, sp, #16
 976 0006 0746     		mov	r7, r0
 977 0008 03A8     		add	r0, sp, #12
 978 000a 0C46     		mov	r4, r1
 979 000c FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 980 0010 10B9     		cbnz	r0, .L181
 981 0012 04B0     		add	sp, sp, #16
 982              		@ sp needed
 983 0014 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 984              	.L181:
 985 0018 1C4B     		ldr	r3, .L182
 986 001a DFED1D7A 		flds	s15, .L182+4
 987 001e 93ED007A 		flds	s14, [r3]	@ int
 988 0022 039D     		ldr	r5, [sp, #12]
 989 0024 1B4E     		ldr	r6, .L182+8
 990 0026 B8EE477A 		fuitos	s14, s14
 991 002a 67EE277A 		fmuls	s15, s14, s15
 992 002e 17EE900A 		fmrs	r0, s15
 993 0032 FFF7FEFF 		bl	__aeabi_f2d
 994 0036 2246     		mov	r2, r4
 995 0038 CDE90001 		strd	r0, [sp]
 996 003c 2846     		mov	r0, r5
 997 003e 1649     		ldr	r1, .L182+12
 998 0040 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 999 0044 3368     		ldr	r3, [r6]
 1000 0046 A3B1     		cbz	r3, .L176
 1001 0048 DFF85880 		ldr	r8, .L182+24
 1002 004c 0024     		movs	r4, #0
 1003              	.L177:
 1004 004e D8F80030 		ldr	r3, [r8]
 1005 0052 039D     		ldr	r5, [sp, #12]
 1006 0054 03EB8403 		add	r3, r3, r4, lsl #2
 1007 0058 0134     		adds	r4, r4, #1
 1008 005a 1868     		ldr	r0, [r3]	@ float
 1009 005c FFF7FEFF 		bl	__aeabi_f2d
 1010 0060 0B46     		mov	r3, r1
 1011 0062 0246     		mov	r2, r0
 1012 0064 0D49     		ldr	r1, .L182+16
 1013 0066 2846     		mov	r0, r5
 1014 0068 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1015 006c 3368     		ldr	r3, [r6]
 1016 006e A342     		cmp	r3, r4
 1017 0070 EDD8     		bhi	.L177
 1018              	.L176:
 1019 0072 0398     		ldr	r0, [sp, #12]
 1020 0074 0A49     		ldr	r1, .L182+20
 1021 0076 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1022 007a 3868     		ldr	r0, [r7]
 1023 007c 039A     		ldr	r2, [sp, #12]
 1024 007e 0221     		movs	r1, #2
 1025 0080 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 1026 0084 04B0     		add	sp, sp, #16
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 19


 1027              		@ sp needed
 1028 0086 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1029              	.L183:
 1030 008a 00BF     		.align	2
 1031              	.L182:
 1032 008c 00000000 		.word	.LANCHOR2
 1033 0090 6F12833A 		.word	981668463
 1034 0094 00000000 		.word	.LANCHOR1
 1035 0098 30020000 		.word	.LC11
 1036 009c 54020000 		.word	.LC13
 1037 00a0 50020000 		.word	.LC12
 1038 00a4 00000000 		.word	.LANCHOR0
 1039              		.size	_ZN3PID13DisplayBufferEPKc, .-_ZN3PID13DisplayBufferEPKc
 1040              		.global	__aeabi_ddiv
 1041              		.global	__aeabi_ui2d
 1042              		.global	__aeabi_dsub
 1043              		.section	.text._ZN3PID14CalculateModelEv,"ax",%progbits
 1044              		.align	2
 1045              		.global	_ZN3PID14CalculateModelEv
 1046              		.thumb
 1047              		.thumb_func
 1048              		.type	_ZN3PID14CalculateModelEv, %function
 1049              	_ZN3PID14CalculateModelEv:
 1050              		@ args = 0, pretend = 0, frame = 0
 1051              		@ frame_needed = 0, uses_anonymous_args = 0
 1052 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1053 0004 2DED028B 		fstmfdd	sp!, {d8}
 1054 0008 694B     		ldr	r3, .L193+8
 1055 000a B3F84030 		ldrh	r3, [r3, #64]
 1056 000e 9B06     		lsls	r3, r3, #26
 1057 0010 87B0     		sub	sp, sp, #28
 1058 0012 0646     		mov	r6, r0
 1059 0014 00F1C280 		bmi	.L191
 1060              	.L185:
 1061 0018 664A     		ldr	r2, .L193+12
 1062 001a 674B     		ldr	r3, .L193+16
 1063 001c 1768     		ldr	r7, [r2]
 1064 001e 1868     		ldr	r0, [r3]
 1065 0020 DFF8C481 		ldr	r8, .L193+64
 1066 0024 7B1E     		subs	r3, r7, #1
 1067 0026 00FB03F0 		mul	r0, r0, r3
 1068 002a 07EE100A 		fmsr	s14, r0	@ int
 1069 002e B8EE477A 		fuitos	s14, s14
 1070 0032 17EE100A 		fmrs	r0, s14
 1071 0036 FFF7FEFF 		bl	__aeabi_f2d
 1072 003a 604B     		ldr	r3, .L193+20
 1073 003c D8ED007A 		flds	s15, [r8]
 1074 0040 1B68     		ldr	r3, [r3]
 1075 0042 03EB8707 		add	r7, r3, r7, lsl #2
 1076 0046 D3ED006A 		flds	s13, [r3]
 1077 004a 17ED017A 		flds	s14, [r7, #-4]
 1078 004e 37EE677A 		fsubs	s14, s14, s15
 1079 0052 76EEE77A 		fsubs	s15, s13, s15
 1080 0056 0446     		mov	r4, r0
 1081 0058 87EE877A 		fdivs	s14, s15, s14
 1082 005c 0D46     		mov	r5, r1
 1083 005e 17EE100A 		fmrs	r0, s14
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 20


 1084 0062 FFF7FEFF 		bl	__aeabi_f2d
 1085 0066 FFF7FEFF 		bl	log
 1086 006a 0022     		movs	r2, #0
 1087 006c 544B     		ldr	r3, .L193+24
 1088 006e FFF7FEFF 		bl	__aeabi_dmul
 1089 0072 0246     		mov	r2, r0
 1090 0074 0B46     		mov	r3, r1
 1091 0076 2046     		mov	r0, r4
 1092 0078 2946     		mov	r1, r5
 1093 007a FFF7FEFF 		bl	__aeabi_ddiv
 1094 007e FFF7FEFF 		bl	__aeabi_d2f
 1095 0082 504B     		ldr	r3, .L193+28
 1096 0084 D3F80090 		ldr	r9, [r3]
 1097 0088 07EE909A 		fmsr	s15, r9	@ int
 1098 008c F8EE677A 		fuitos	s15, s15
 1099 0090 08EE100A 		fmsr	s16, r0
 1100 0094 17EE900A 		fmrs	r0, s15
 1101 0098 FFF7FEFF 		bl	__aeabi_f2d
 1102 009c 42A3     		adr	r3, .L193
 1103 009e D3E90023 		ldrd	r2, [r3]
 1104 00a2 FFF7FEFF 		bl	__aeabi_dmul
 1105 00a6 FFF7FEFF 		bl	__aeabi_d2f
 1106 00aa 474B     		ldr	r3, .L193+32
 1107 00ac D8ED007A 		flds	s15, [r8]
 1108 00b0 93ED007A 		flds	s14, [r3]
 1109 00b4 77EE677A 		fsubs	s15, s14, s15
 1110 00b8 0746     		mov	r7, r0	@ float
 1111 00ba 17EE900A 		fmrs	r0, s15
 1112 00be FFF7FEFF 		bl	__aeabi_f2d
 1113 00c2 424B     		ldr	r3, .L193+36
 1114 00c4 0446     		mov	r4, r0
 1115 00c6 1868     		ldr	r0, [r3]
 1116 00c8 C9EB0000 		rsb	r0, r9, r0
 1117 00cc 0D46     		mov	r5, r1
 1118 00ce FFF7FEFF 		bl	__aeabi_ui2d
 1119 00d2 35A3     		adr	r3, .L193
 1120 00d4 D3E90023 		ldrd	r2, [r3]
 1121 00d8 FFF7FEFF 		bl	__aeabi_dmul
 1122 00dc FFF7FEFF 		bl	__aeabi_d2f
 1123 00e0 07EE100A 		fmsr	s14, r0
 1124 00e4 F1EE477A 		fnegs	s15, s14
 1125 00e8 C7EE887A 		fdivs	s15, s15, s16
 1126 00ec 17EE900A 		fmrs	r0, s15
 1127 00f0 FFF7FEFF 		bl	__aeabi_f2d
 1128 00f4 FFF7FEFF 		bl	exp
 1129 00f8 0246     		mov	r2, r0
 1130 00fa 0B46     		mov	r3, r1
 1131 00fc 0020     		movs	r0, #0
 1132 00fe 3449     		ldr	r1, .L193+40
 1133 0100 FFF7FEFF 		bl	__aeabi_dsub
 1134 0104 0246     		mov	r2, r0
 1135 0106 0B46     		mov	r3, r1
 1136 0108 2046     		mov	r0, r4
 1137 010a 2946     		mov	r1, r5
 1138 010c FFF7FEFF 		bl	__aeabi_ddiv
 1139 0110 FFF7FEFF 		bl	__aeabi_d2f
 1140 0114 F56B     		ldr	r5, [r6, #60]	@ float
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 21


 1141 0116 0095     		str	r5, [sp]	@ float
 1142 0118 0446     		mov	r4, r0	@ float
 1143 011a 0120     		movs	r0, #1
 1144 011c 0190     		str	r0, [sp, #4]
 1145 011e 2146     		mov	r1, r4	@ float
 1146 0120 18EE102A 		fmrs	r2, s16
 1147 0124 3B46     		mov	r3, r7	@ float
 1148 0126 3046     		mov	r0, r6
 1149 0128 FFF7FEFF 		bl	_ZN3PID8SetModelEffffb
 1150 012c 86F87600 		strb	r0, [r6, #118]
 1151 0130 E0B9     		cbnz	r0, .L192
 1152 0132 2046     		mov	r0, r4	@ float
 1153 0134 FFF7FEFF 		bl	__aeabi_f2d
 1154 0138 CDE90001 		strd	r0, [sp]
 1155 013c 18EE100A 		fmrs	r0, s16
 1156 0140 FFF7FEFF 		bl	__aeabi_f2d
 1157 0144 CDE90201 		strd	r0, [sp, #8]
 1158 0148 3846     		mov	r0, r7	@ float
 1159 014a FFF7FEFF 		bl	__aeabi_f2d
 1160 014e 3468     		ldr	r4, [r6]
 1161 0150 96F97230 		ldrsb	r3, [r6, #114]
 1162 0154 1F4A     		ldr	r2, .L193+44
 1163 0156 CDE90401 		strd	r0, [sp, #16]
 1164 015a 2046     		mov	r0, r4
 1165 015c 0621     		movs	r1, #6
 1166 015e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1167 0162 07B0     		add	sp, sp, #28
 1168              		@ sp needed
 1169 0164 BDEC028B 		fldmfdd	sp!, {d8}
 1170 0168 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1171              	.L192:
 1172 016c 3468     		ldr	r4, [r6]
 1173 016e FFF7FEFF 		bl	millis
 1174 0172 194B     		ldr	r3, .L193+48
 1175 0174 1949     		ldr	r1, .L193+52
 1176 0176 1A68     		ldr	r2, [r3]
 1177 0178 96F97230 		ldrsb	r3, [r6, #114]
 1178 017c 0193     		str	r3, [sp, #4]
 1179 017e 801A     		subs	r0, r0, r2
 1180 0180 A1FB0052 		umull	r5, r2, r1, r0
 1181 0184 9209     		lsrs	r2, r2, #6
 1182 0186 0092     		str	r2, [sp]
 1183 0188 2046     		mov	r0, r4
 1184 018a 0621     		movs	r1, #6
 1185 018c 144A     		ldr	r2, .L193+56
 1186 018e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1187 0192 07B0     		add	sp, sp, #28
 1188              		@ sp needed
 1189 0194 BDEC028B 		fldmfdd	sp!, {d8}
 1190 0198 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1191              	.L191:
 1192 019c 1149     		ldr	r1, .L193+60
 1193 019e FFF7FEFF 		bl	_ZN3PID13DisplayBufferEPKc
 1194 01a2 39E7     		b	.L185
 1195              	.L194:
 1196 01a4 AFF30080 		.align	3
 1197              	.L193:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 22


 1198 01a8 FCA9F1D2 		.word	-755914244
 1199 01ac 4D62503F 		.word	1062232653
 1200 01b0 00000000 		.word	reprap
 1201 01b4 00000000 		.word	.LANCHOR1
 1202 01b8 00000000 		.word	.LANCHOR2
 1203 01bc 00000000 		.word	.LANCHOR0
 1204 01c0 00408F40 		.word	1083129856
 1205 01c4 00000000 		.word	.LANCHOR6
 1206 01c8 00000000 		.word	.LANCHOR7
 1207 01cc 00000000 		.word	.LANCHOR8
 1208 01d0 0000F03F 		.word	1072693248
 1209 01d4 E8020000 		.word	.LC16
 1210 01d8 00000000 		.word	.LANCHOR9
 1211 01dc D34D6210 		.word	274877907
 1212 01e0 6C020000 		.word	.LC15
 1213 01e4 5C020000 		.word	.LC14
 1214 01e8 00000000 		.word	.LANCHOR5
 1215              		.size	_ZN3PID14CalculateModelEv, .-_ZN3PID14CalculateModelEv
 1216              		.global	__aeabi_dadd
 1217 01ec AFF30080 		.section	.text._ZN3PID12DoTuningStepEv,"ax",%progbits
 1218              		.align	2
 1219              		.global	_ZN3PID12DoTuningStepEv
 1220              		.thumb
 1221              		.thumb_func
 1222              		.type	_ZN3PID12DoTuningStepEv, %function
 1223              	_ZN3PID12DoTuningStepEv:
 1224              		@ args = 0, pretend = 0, frame = 0
 1225              		@ frame_needed = 0, uses_anonymous_args = 0
 1226 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1227 0004 BA4C     		ldr	r4, .L237+8
 1228 0006 2368     		ldr	r3, [r4]
 1229 0008 83B0     		sub	sp, sp, #12
 1230 000a 8046     		mov	r8, r0
 1231 000c FBB9     		cbnz	r3, .L196
 1232 000e FFF7FEFF 		bl	millis
 1233 0012 98F87470 		ldrb	r7, [r8, #116]	@ zero_extendqisi2
 1234 0016 B74D     		ldr	r5, .L237+12
 1235 0018 DFF83093 		ldr	r9, .L237+100
 1236 001c 2860     		str	r0, [r5]
 1237 001e 052F     		cmp	r7, #5
 1238 0020 09BF     		itett	eq
 1239 0022 B54A     		ldreq	r2, .L237+16
 1240 0024 2368     		ldrne	r3, [r4]
 1241 0026 2368     		ldreq	r3, [r4]
 1242 0028 1060     		streq	r0, [r2]
 1243 002a 802B     		cmp	r3, #128
 1244 002c 21D0     		beq	.L201
 1245              	.L231:
 1246 002e D9F80060 		ldr	r6, [r9]
 1247 0032 9900     		lsls	r1, r3, #2
 1248 0034 0133     		adds	r3, r3, #1
 1249              	.L202:
 1250 0036 3144     		add	r1, r1, r6
 1251 0038 D8F81800 		ldr	r0, [r8, #24]	@ float
 1252 003c 0860     		str	r0, [r1]	@ float
 1253 003e 7A1F     		subs	r2, r7, #5
 1254 0040 2360     		str	r3, [r4]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 23


 1255 0042 032A     		cmp	r2, #3
 1256 0044 69D8     		bhi	.L205
 1257 0046 DFE802F0 		tbb	[pc, r2]
 1258              	.L207:
 1259 004a 9B       		.byte	(.L206-.L207)/2
 1260 004b B8       		.byte	(.L208-.L207)/2
 1261 004c 56       		.byte	(.L209-.L207)/2
 1262 004d 6E       		.byte	(.L210-.L207)/2
 1263              		.align	1
 1264              	.L196:
 1265 004e FFF7FEFF 		bl	millis
 1266 0052 A84D     		ldr	r5, .L237+12
 1267 0054 A94B     		ldr	r3, .L237+20
 1268 0056 2A68     		ldr	r2, [r5]
 1269 0058 1968     		ldr	r1, [r3]
 1270 005a 2368     		ldr	r3, [r4]
 1271 005c 801A     		subs	r0, r0, r2
 1272 005e 01FB03F1 		mul	r1, r1, r3
 1273 0062 8842     		cmp	r0, r1
 1274 0064 44D3     		bcc	.L195
 1275 0066 802B     		cmp	r3, #128
 1276 0068 98F87470 		ldrb	r7, [r8, #116]	@ zero_extendqisi2
 1277 006c DFF8DC92 		ldr	r9, .L237+100
 1278 0070 DDD1     		bne	.L231
 1279              	.L201:
 1280 0072 D9F80060 		ldr	r6, [r9]
 1281 0076 0123     		movs	r3, #1
 1282 0078 06F10801 		add	r1, r6, #8
 1283 007c 321D     		adds	r2, r6, #4
 1284              	.L204:
 1285 007e 0133     		adds	r3, r3, #1
 1286 0080 51F8080B 		ldr	r0, [r1], #8	@ float
 1287 0084 42F8040B 		str	r0, [r2], #4	@ float
 1288 0088 402B     		cmp	r3, #64
 1289 008a F8D1     		bne	.L204
 1290 008c 9B4B     		ldr	r3, .L237+20
 1291 008e 1A68     		ldr	r2, [r3]
 1292 0090 5200     		lsls	r2, r2, #1
 1293 0092 1A60     		str	r2, [r3]
 1294 0094 4FF48071 		mov	r1, #256
 1295 0098 4123     		movs	r3, #65
 1296 009a CCE7     		b	.L202
 1297              	.L219:
 1298 009c 974F     		ldr	r7, .L237+20
 1299 009e 9849     		ldr	r1, .L237+24
 1300 00a0 3B68     		ldr	r3, [r7]
 1301 00a2 DFF8AC92 		ldr	r9, .L237+104
 1302 00a6 D8F818E0 		ldr	lr, [r8, #24]	@ float
 1303 00aa 06EB8002 		add	r2, r6, r0, lsl #2
 1304 00ae 03FB00F3 		mul	r3, r3, r0
 1305 00b2 D2F800C0 		ldr	ip, [r2]	@ float
 1306 00b6 C9F800C0 		str	ip, [r9]	@ float
 1307 00ba 0122     		movs	r2, #1
 1308 00bc 0B60     		str	r3, [r1]
 1309 00be 2260     		str	r2, [r4]
 1310 00c0 C6F800E0 		str	lr, [r6]	@ float
 1311 00c4 FFF7FEFF 		bl	millis
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 24


 1312 00c8 D8F80040 		ldr	r4, [r8]
 1313 00cc 2860     		str	r0, [r5]
 1314 00ce D4F80C37 		ldr	r3, [r4, #1804]
 1315 00d2 D9F80000 		ldr	r0, [r9]	@ float
 1316 00d6 3B60     		str	r3, [r7]
 1317 00d8 0822     		movs	r2, #8
 1318 00da 88F87420 		strb	r2, [r8, #116]
 1319 00de FFF7FEFF 		bl	__aeabi_f2d
 1320 00e2 884A     		ldr	r2, .L237+28
 1321 00e4 CDE90001 		strd	r0, [sp]
 1322 00e8 2046     		mov	r0, r4
 1323 00ea 0621     		movs	r1, #6
 1324 00ec FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1325              	.L195:
 1326 00f0 03B0     		add	sp, sp, #12
 1327              		@ sp needed
 1328 00f2 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1329              	.L209:
 1330 00f6 FFF7FEFF 		bl	_ZN3PID16GetPeakTempIndexEv
 1331 00fa 0028     		cmp	r0, #0
 1332 00fc C0F22A81 		blt	.L232
 1333 0100 CCD1     		bne	.L219
 1334 0102 814B     		ldr	r3, .L237+32
 1335 0104 B3F84030 		ldrh	r3, [r3, #64]
 1336 0108 9B06     		lsls	r3, r3, #26
 1337 010a 00F1E880 		bmi	.L233
 1338              	.L220:
 1339 010e D8F80000 		ldr	r0, [r8]
 1340 0112 7E4A     		ldr	r2, .L237+36
 1341 0114 0621     		movs	r1, #6
 1342 0116 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1343              	.L205:
 1344 011a 4046     		mov	r0, r8
 1345 011c 03B0     		add	sp, sp, #12
 1346              		@ sp needed
 1347 011e BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 1348 0122 FFF7FEBF 		b	_ZN3PID9SwitchOffEv
 1349              	.L210:
 1350 0126 D8F81800 		ldr	r0, [r8, #24]	@ float
 1351 012a FFF7FEFF 		bl	__aeabi_f2d
 1352 012e 0446     		mov	r4, r0
 1353 0130 3068     		ldr	r0, [r6]	@ float
 1354 0132 0D46     		mov	r5, r1
 1355 0134 FFF7FEFF 		bl	__aeabi_f2d
 1356 0138 6BA3     		adr	r3, .L237
 1357 013a D3E90023 		ldrd	r2, [r3]
 1358 013e FFF7FEFF 		bl	__aeabi_dmul
 1359 0142 734B     		ldr	r3, .L237+40
 1360 0144 DFED737A 		flds	s15, .L237+44
 1361 0148 93ED007A 		flds	s14, [r3]
 1362 014c 67EE277A 		fmuls	s15, s14, s15
 1363 0150 0646     		mov	r6, r0
 1364 0152 17EE900A 		fmrs	r0, s15
 1365 0156 0F46     		mov	r7, r1
 1366 0158 FFF7FEFF 		bl	__aeabi_f2d
 1367 015c 0246     		mov	r2, r0
 1368 015e 0B46     		mov	r3, r1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 25


 1369 0160 3046     		mov	r0, r6
 1370 0162 3946     		mov	r1, r7
 1371 0164 FFF7FEFF 		bl	__aeabi_dadd
 1372 0168 0246     		mov	r2, r0
 1373 016a 0B46     		mov	r3, r1
 1374 016c 2046     		mov	r0, r4
 1375 016e 2946     		mov	r1, r5
 1376 0170 FFF7FEFF 		bl	__aeabi_dcmpgt
 1377 0174 0028     		cmp	r0, #0
 1378 0176 BBD1     		bne	.L195
 1379 0178 4046     		mov	r0, r8
 1380 017a FFF7FEFF 		bl	_ZN3PID14CalculateModelEv
 1381 017e CCE7     		b	.L205
 1382              	.L206:
 1383 0180 D8F80030 		ldr	r3, [r8]
 1384 0184 D3F80C37 		ldr	r3, [r3, #1804]
 1385 0188 41F27070 		movw	r0, #6000
 1386 018c 4FF08041 		mov	r1, #1073741824
 1387 0190 B0FBF3F0 		udiv	r0, r0, r3
 1388 0194 FFF7FEFF 		bl	_ZN3PID14ReadingsStableEjf
 1389 0198 0028     		cmp	r0, #0
 1390 019a 70D1     		bne	.L234
 1391 019c FFF7FEFF 		bl	millis
 1392 01a0 2A68     		ldr	r2, [r5]
 1393 01a2 44F61F63 		movw	r3, #19999
 1394 01a6 801A     		subs	r0, r0, r2
 1395 01a8 9842     		cmp	r0, r3
 1396 01aa A1D9     		bls	.L195
 1397 01ac D8F80000 		ldr	r0, [r8]
 1398 01b0 594A     		ldr	r2, .L237+48
 1399 01b2 0621     		movs	r1, #6
 1400 01b4 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1401 01b8 AFE7     		b	.L205
 1402              	.L208:
 1403 01ba FFF7FEFF 		bl	millis
 1404 01be 98ED0E7A 		flds	s14, [r8, #56]
 1405 01c2 DFED567A 		flds	s15, .L237+52
 1406 01c6 2B68     		ldr	r3, [r5]
 1407 01c8 67EE277A 		fmuls	s15, s14, s15
 1408 01cc C01A     		subs	r0, r0, r3
 1409 01ce FCEEE77A 		ftouizs	s15, s15
 1410 01d2 17EE903A 		fmrs	r3, s15	@ int
 1411 01d6 03F5EA43 		add	r3, r3, #29952
 1412 01da 3033     		adds	r3, r3, #48
 1413 01dc 9842     		cmp	r0, r3
 1414 01de 0DD9     		bls	.L213
 1415 01e0 4B4B     		ldr	r3, .L237+40
 1416 01e2 98ED067A 		flds	s14, [r8, #24]
 1417 01e6 D3ED007A 		flds	s15, [r3]
 1418 01ea 37EE677A 		fsubs	s14, s14, s15
 1419 01ee F0EE087A 		fconsts	s15, #8
 1420 01f2 B4EEE77A 		fcmpes	s14, s15
 1421 01f6 F1EE10FA 		fmstat
 1422 01fa 60D4     		bmi	.L214
 1423              	.L213:
 1424 01fc 424A     		ldr	r2, .L237+32
 1425 01fe 98F97230 		ldrsb	r3, [r8, #114]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 26


 1426 0202 D268     		ldr	r2, [r2, #12]
 1427 0204 92F92E10 		ldrsb	r1, [r2, #46]
 1428 0208 9942     		cmp	r1, r3
 1429 020a 5FD0     		beq	.L235
 1430 020c 92F92F60 		ldrsb	r6, [r2, #47]
 1431 0210 4349     		ldr	r1, .L237+56
 1432 0212 444A     		ldr	r2, .L237+60
 1433 0214 9E42     		cmp	r6, r3
 1434 0216 14BF     		ite	ne
 1435 0218 0B46     		movne	r3, r1
 1436 021a 1346     		moveq	r3, r2
 1437              	.L215:
 1438 021c 9842     		cmp	r0, r3
 1439 021e 57D2     		bcs	.L236
 1440 0220 414B     		ldr	r3, .L237+64
 1441 0222 D8ED067A 		flds	s15, [r8, #24]
 1442 0226 93ED007A 		flds	s14, [r3]
 1443 022a F4EEC77A 		fcmpes	s15, s14
 1444 022e F1EE10FA 		fmstat
 1445 0232 FFF65DAF 		blt	.L195
 1446 0236 3D49     		ldr	r1, .L237+68
 1447 0238 D9F80020 		ldr	r2, [r9]
 1448 023c 3C4B     		ldr	r3, .L237+72
 1449 023e 0860     		str	r0, [r1]
 1450 0240 0121     		movs	r1, #1
 1451 0242 2160     		str	r1, [r4]
 1452 0244 C2ED007A 		fsts	s15, [r2]
 1453 0248 C3ED007A 		fsts	s15, [r3]
 1454 024c FFF7FEFF 		bl	millis
 1455 0250 D8F80030 		ldr	r3, [r8]
 1456 0254 294C     		ldr	r4, .L237+20
 1457 0256 2860     		str	r0, [r5]
 1458 0258 0022     		movs	r2, #0
 1459 025a 0726     		movs	r6, #7
 1460 025c D3F80C57 		ldr	r5, [r3, #1804]
 1461 0260 98F97210 		ldrsb	r1, [r8, #114]
 1462 0264 C8F86020 		str	r2, [r8, #96]	@ float
 1463 0268 1846     		mov	r0, r3
 1464 026a 88F87460 		strb	r6, [r8, #116]
 1465 026e 2560     		str	r5, [r4]
 1466 0270 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjf
 1467 0274 D8F80000 		ldr	r0, [r8]
 1468 0278 2E4A     		ldr	r2, .L237+76
 1469 027a 0621     		movs	r1, #6
 1470 027c 1AE0     		b	.L230
 1471              	.L234:
 1472 027e 2449     		ldr	r1, .L237+40
 1473 0280 D8F81830 		ldr	r3, [r8, #24]	@ float
 1474 0284 0B60     		str	r3, [r1]	@ float
 1475 0286 0122     		movs	r2, #1
 1476 0288 2260     		str	r2, [r4]
 1477 028a 3360     		str	r3, [r6]	@ float
 1478 028c FFF7FEFF 		bl	millis
 1479 0290 294A     		ldr	r2, .L237+80
 1480 0292 1A4C     		ldr	r4, .L237+20
 1481 0294 1268     		ldr	r2, [r2]	@ float
 1482 0296 C8F86020 		str	r2, [r8, #96]	@ float
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 27


 1483 029a 0346     		mov	r3, r0
 1484 029c D8F80000 		ldr	r0, [r8]
 1485 02a0 264A     		ldr	r2, .L237+84
 1486 02a2 D0F80C67 		ldr	r6, [r0, #1804]
 1487 02a6 C8F86830 		str	r3, [r8, #104]
 1488 02aa 0621     		movs	r1, #6
 1489 02ac 88F87410 		strb	r1, [r8, #116]
 1490 02b0 2B60     		str	r3, [r5]
 1491 02b2 2660     		str	r6, [r4]
 1492              	.L230:
 1493 02b4 03B0     		add	sp, sp, #12
 1494              		@ sp needed
 1495 02b6 BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 1496 02ba FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 1497              	.L214:
 1498 02be D8F80000 		ldr	r0, [r8]
 1499 02c2 1F4A     		ldr	r2, .L237+88
 1500 02c4 0621     		movs	r1, #6
 1501 02c6 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1502 02ca 26E7     		b	.L205
 1503              	.L235:
 1504 02cc 154B     		ldr	r3, .L237+60
 1505 02ce A5E7     		b	.L215
 1506              	.L236:
 1507 02d0 D8F80000 		ldr	r0, [r8]
 1508 02d4 1B4A     		ldr	r2, .L237+92
 1509 02d6 0621     		movs	r1, #6
 1510 02d8 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1511 02dc 1DE7     		b	.L205
 1512              	.L233:
 1513 02de 4046     		mov	r0, r8
 1514 02e0 1949     		ldr	r1, .L237+96
 1515 02e2 FFF7FEFF 		bl	_ZN3PID13DisplayBufferEPKc
 1516 02e6 12E7     		b	.L220
 1517              	.L238:
 1518              		.align	3
 1519              	.L237:
 1520 02e8 00000080 		.word	-2147483648
 1521 02ec 9999D93F 		.word	1071225241
 1522 02f0 00000000 		.word	.LANCHOR1
 1523 02f4 00000000 		.word	.LANCHOR10
 1524 02f8 00000000 		.word	.LANCHOR9
 1525 02fc 00000000 		.word	.LANCHOR2
 1526 0300 00000000 		.word	.LANCHOR6
 1527 0304 88040000 		.word	.LC24
 1528 0308 00000000 		.word	reprap
 1529 030c 44040000 		.word	.LC23
 1530 0310 00000000 		.word	.LANCHOR5
 1531 0314 9A99193F 		.word	1058642330
 1532 0318 58030000 		.word	.LC18
 1533 031c 00007A44 		.word	1148846080
 1534 0320 E0930400 		.word	300000
 1535 0324 804F1200 		.word	1200000
 1536 0328 00000000 		.word	.LANCHOR4
 1537 032c 00000000 		.word	.LANCHOR8
 1538 0330 00000000 		.word	.LANCHOR7
 1539 0334 D8030000 		.word	.LC20
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 28


 1540 0338 00000000 		.word	.LANCHOR3
 1541 033c 38030000 		.word	.LC17
 1542 0340 B8040000 		.word	.LC25
 1543 0344 98030000 		.word	.LC19
 1544 0348 30040000 		.word	.LC22
 1545 034c 00000000 		.word	.LANCHOR0
 1546 0350 00000000 		.word	.LANCHOR11
 1547              	.L232:
 1548 0354 FFF7FEFF 		bl	millis
 1549 0358 2A68     		ldr	r2, [r5]
 1550 035a 064B     		ldr	r3, .L239
 1551 035c 801A     		subs	r0, r0, r2
 1552 035e 9842     		cmp	r0, r3
 1553 0360 7FF6C6AE 		bls	.L195
 1554 0364 D8F80000 		ldr	r0, [r8]
 1555 0368 034A     		ldr	r2, .L239+4
 1556 036a 0621     		movs	r1, #6
 1557 036c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1558 0370 D3E6     		b	.L205
 1559              	.L240:
 1560 0372 00BF     		.align	2
 1561              	.L239:
 1562 0374 BFD40100 		.word	119999
 1563 0378 F8030000 		.word	.LC21
 1564              		.size	_ZN3PID12DoTuningStepEv, .-_ZN3PID12DoTuningStepEv
 1565 037c AFF30080 		.section	.text._ZN3PID4SpinEv,"ax",%progbits
 1566              		.align	2
 1567              		.global	_ZN3PID4SpinEv
 1568              		.thumb
 1569              		.thumb_func
 1570              		.type	_ZN3PID4SpinEv, %function
 1571              	_ZN3PID4SpinEv:
 1572              		@ args = 0, pretend = 0, frame = 0
 1573              		@ frame_needed = 0, uses_anonymous_args = 0
 1574 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1575 0002 2DED048B 		fstmfdd	sp!, {d8, d9}
 1576 0006 90F84030 		ldrb	r3, [r0, #64]	@ zero_extendqisi2
 1577 000a 83B0     		sub	sp, sp, #12
 1578 000c 0646     		mov	r6, r0
 1579 000e 1BB9     		cbnz	r3, .L351
 1580 0010 03B0     		add	sp, sp, #12
 1581              		@ sp needed
 1582 0012 BDEC048B 		fldmfdd	sp!, {d8-d9}
 1583 0016 F0BD     		pop	{r4, r5, r6, r7, pc}
 1584              	.L351:
 1585 0018 FFF7FEFF 		bl	_ZN3PID15ReadTemperatureEv
 1586 001c 0446     		mov	r4, r0
 1587 001e D8BB     		cbnz	r0, .L352
 1588 0020 96F87330 		ldrb	r3, [r6, #115]	@ zero_extendqisi2
 1589 0024 86F87700 		strb	r0, [r6, #119]
 1590 0028 03F00802 		and	r2, r3, #8
 1591 002c 02F0FF01 		and	r1, r2, #255
 1592 0030 002A     		cmp	r2, #0
 1593 0032 40F0E080 		bne	.L249
 1594 0036 F26A     		ldr	r2, [r6, #44]
 1595 0038 96ED067A 		flds	s14, [r6, #24]
 1596 003c 9FEDD08A 		flds	s16, .L362
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 29


 1597 0040 0846     		mov	r0, r1
 1598 0042 0632     		adds	r2, r2, #6
 1599              	.L250:
 1600 0044 96F87510 		ldrb	r1, [r6, #117]	@ zero_extendqisi2
 1601 0048 D6ED016A 		flds	s13, [r6, #4]
 1602 004c D6ED027A 		flds	s15, [r6, #8]
 1603 0050 96F87440 		ldrb	r4, [r6, #116]	@ zero_extendqisi2
 1604 0054 0029     		cmp	r1, #0
 1605 0056 4FEA4303 		lsl	r3, r3, #1
 1606 005a 18BF     		it	ne
 1607 005c F0EE667A 		fcpysne	s15, s13
 1608 0060 43F00103 		orr	r3, r3, #1
 1609 0064 06EB8202 		add	r2, r6, r2, lsl #2
 1610 0068 032C     		cmp	r4, #3
 1611 006a 82ED017A 		fsts	s14, [r2, #4]
 1612 006e 77EEC78A 		fsubs	s17, s15, s14
 1613 0072 86F87330 		strb	r3, [r6, #115]
 1614 0076 00F0FC80 		beq	.L253
 1615 007a 042C     		cmp	r4, #4
 1616 007c 00F03481 		beq	.L254
 1617 0080 022C     		cmp	r4, #2
 1618 0082 00F00F81 		beq	.L353
 1619              	.L252:
 1620 0086 012C     		cmp	r4, #1
 1621 0088 40F2DE80 		bls	.L354
 1622 008c 042C     		cmp	r4, #4
 1623 008e 58D9     		bls	.L348
 1624 0090 3046     		mov	r0, r6
 1625 0092 FFF7FEFF 		bl	_ZN3PID12DoTuningStepEv
 1626 0096 11E0     		b	.L350
 1627              	.L352:
 1628 0098 96F87320 		ldrb	r2, [r6, #115]	@ zero_extendqisi2
 1629 009c 96F87430 		ldrb	r3, [r6, #116]	@ zero_extendqisi2
 1630 00a0 5200     		lsls	r2, r2, #1
 1631 00a2 012B     		cmp	r3, #1
 1632 00a4 86F87320 		strb	r2, [r6, #115]
 1633 00a8 08D9     		bls	.L350
 1634 00aa 96F87730 		ldrb	r3, [r6, #119]	@ zero_extendqisi2
 1635 00ae 0133     		adds	r3, r3, #1
 1636 00b0 DBB2     		uxtb	r3, r3
 1637 00b2 042B     		cmp	r3, #4
 1638 00b4 86F87730 		strb	r3, [r6, #119]
 1639 00b8 00F27081 		bhi	.L246
 1640              	.L350:
 1641 00bc D6ED187A 		flds	s15, [r6, #96]
 1642 00c0 3068     		ldr	r0, [r6]
 1643              	.L245:
 1644 00c2 17EE902A 		fmrs	r2, s15
 1645 00c6 96F97210 		ldrsb	r1, [r6, #114]
 1646 00ca FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjf
 1647 00ce 706E     		ldr	r0, [r6, #100]	@ float
 1648 00d0 FFF7FEFF 		bl	__aeabi_f2d
 1649 00d4 3368     		ldr	r3, [r6]
 1650 00d6 DFEDAB7A 		flds	s15, .L362+4
 1651 00da D3F80C37 		ldr	r3, [r3, #1804]
 1652 00de 07EE103A 		fmsr	s14, r3	@ int
 1653 00e2 B8EE477A 		fuitos	s14, s14
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 30


 1654 00e6 0446     		mov	r4, r0
 1655 00e8 C7EE277A 		fdivs	s15, s14, s15
 1656 00ec 0D46     		mov	r5, r1
 1657 00ee 17EE900A 		fmrs	r0, s15
 1658 00f2 FFF7FEFF 		bl	__aeabi_f2d
 1659 00f6 0246     		mov	r2, r0
 1660 00f8 0B46     		mov	r3, r1
 1661 00fa 0020     		movs	r0, #0
 1662 00fc A249     		ldr	r1, .L362+8
 1663 00fe FFF7FEFF 		bl	__aeabi_dsub
 1664 0102 0246     		mov	r2, r0
 1665 0104 0B46     		mov	r3, r1
 1666 0106 2046     		mov	r0, r4
 1667 0108 2946     		mov	r1, r5
 1668 010a FFF7FEFF 		bl	__aeabi_dmul
 1669 010e 0446     		mov	r4, r0
 1670 0110 306E     		ldr	r0, [r6, #96]	@ float
 1671 0112 0D46     		mov	r5, r1
 1672 0114 FFF7FEFF 		bl	__aeabi_f2d
 1673 0118 0246     		mov	r2, r0
 1674 011a 0B46     		mov	r3, r1
 1675 011c 2046     		mov	r0, r4
 1676 011e 2946     		mov	r1, r5
 1677 0120 FFF7FEFF 		bl	__aeabi_dadd
 1678 0124 FFF7FEFF 		bl	__aeabi_d2f
 1679 0128 F36A     		ldr	r3, [r6, #44]
 1680 012a 7066     		str	r0, [r6, #100]	@ float
 1681 012c 0133     		adds	r3, r3, #1
 1682 012e 03F00303 		and	r3, r3, #3
 1683 0132 F362     		str	r3, [r6, #44]
 1684 0134 FFF7FEFF 		bl	millis
 1685 0138 F066     		str	r0, [r6, #108]
 1686 013a 03B0     		add	sp, sp, #12
 1687              		@ sp needed
 1688 013c BDEC048B 		fldmfdd	sp!, {d8-d9}
 1689 0140 F0BD     		pop	{r4, r5, r6, r7, pc}
 1690              	.L348:
 1691 0142 3068     		ldr	r0, [r6]
 1692              	.L259:
 1693 0144 96F84130 		ldrb	r3, [r6, #65]	@ zero_extendqisi2
 1694 0148 002B     		cmp	r3, #0
 1695 014a 00F08380 		beq	.L273
 1696 014e 231F     		subs	r3, r4, #4
 1697 0150 5A42     		rsbs	r2, r3, #0
 1698 0152 5A41     		adcs	r2, r2, r3
 1699 0154 002A     		cmp	r2, #0
 1700 0156 40F08980 		bne	.L355
 1701 015a 06F14403 		add	r3, r6, #68
 1702              	.L275:
 1703 015e 96ED065A 		flds	s10, [r6, #24]
 1704 0162 D6ED0C6A 		flds	s13, [r6, #48]
 1705 0166 93ED026A 		flds	s12, [r3, #8]
 1706 016a D3ED005A 		flds	s11, [r3]
 1707 016e D6ED0F7A 		flds	s15, [r6, #60]
 1708 0172 B3EE097A 		fconsts	s14, #57
 1709 0176 35EE477A 		fsubs	s14, s10, s14
 1710 017a F0EE684A 		fcpys	s9, s17
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 31


 1711 017e 87EE267A 		fdivs	s14, s14, s13
 1712 0182 E6EE484A 		vfms.f32	s9, s12, s16
 1713 0186 B4EE477A 		fcmps	s14, s14
 1714 018a F1EE10FA 		fmstat
 1715 018e 25EEA46A 		fmuls	s12, s11, s9
 1716 0192 14D6     		bvs	.L276
 1717 0194 B4EEE77A 		fcmpes	s14, s15
 1718 0198 F1EE10FA 		fmstat
 1719 019c 06D4     		bmi	.L277
 1720 019e F4EE677A 		fcmps	s15, s15
 1721 01a2 F1EE10FA 		fmstat
 1722 01a6 B0EE677A 		fcpys	s14, s15
 1723 01aa 08D6     		bvs	.L276
 1724              	.L277:
 1725 01ac B5EEC07A 		fcmpezs	s14
 1726 01b0 DFED736A 		flds	s13, .L362
 1727 01b4 F1EE10FA 		fmstat
 1728 01b8 D8BF     		it	le
 1729 01ba B0EE667A 		fcpysle	s14, s13
 1730              	.L276:
 1731 01be 76EE076A 		fadds	s13, s12, s14
 1732 01c2 F4EEE67A 		fcmpes	s15, s13
 1733 01c6 F1EE10FA 		fmstat
 1734 01ca 40F11F81 		bpl	.L345
 1735 01ce 022C     		cmp	r4, #2
 1736 01d0 C6ED187A 		fsts	s15, [r6, #96]
 1737 01d4 7FF475AF 		bne	.L245
 1738 01d8 F5EEC08A 		fcmpezs	s17
 1739 01dc F1EE10FA 		fmstat
 1740 01e0 7FF76FAF 		ble	.L245
 1741 01e4 B5EEC08A 		fcmpezs	s16
 1742 01e8 F1EE10FA 		fmstat
 1743 01ec 7FF769AF 		ble	.L245
 1744 01f0 86ED177A 		fsts	s14, [r6, #92]
 1745 01f4 65E7     		b	.L245
 1746              	.L249:
 1747 01f6 F26A     		ldr	r2, [r6, #44]
 1748 01f8 3068     		ldr	r0, [r6]
 1749 01fa 96ED067A 		flds	s14, [r6, #24]
 1750 01fe D0F80C17 		ldr	r1, [r0, #1804]
 1751 0202 DFED626A 		flds	s13, .L362+12
 1752 0206 DFED5E7A 		flds	s15, .L362
 1753 020a 0632     		adds	r2, r2, #6
 1754 020c 06EB8200 		add	r0, r6, r2, lsl #2
 1755 0210 D0ED015A 		flds	s11, [r0, #4]
 1756 0214 8900     		lsls	r1, r1, #2
 1757 0216 77EE655A 		fsubs	s11, s14, s11
 1758 021a 04EE901A 		fmsr	s9, r1	@ int
 1759 021e 65EEA65A 		fmuls	s11, s11, s13
 1760 0222 B8EE646A 		fuitos	s12, s9
 1761 0226 F2EE046A 		fconsts	s13, #36
 1762 022a 85EE868A 		fdivs	s16, s11, s12
 1763 022e B0EEC86A 		fabss	s12, s16
 1764 0232 B4EEE66A 		fcmpes	s12, s13
 1765 0236 F1EE10FA 		fmstat
 1766 023a 88BF     		it	hi
 1767 023c B0EE678A 		fcpyshi	s16, s15
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 32


 1768 0240 94BF     		ite	ls
 1769 0242 0120     		movls	r0, #1
 1770 0244 0020     		movhi	r0, #0
 1771 0246 FDE6     		b	.L250
 1772              	.L354:
 1773 0248 DFED4D7A 		flds	s15, .L362
 1774 024c 3068     		ldr	r0, [r6]
 1775 024e C6ED187A 		fsts	s15, [r6, #96]
 1776 0252 36E7     		b	.L245
 1777              	.L273:
 1778 0254 F5EEC08A 		fcmpezs	s17
 1779 0258 F1EE10FA 		fmstat
 1780 025c CCBF     		ite	gt
 1781 025e D6ED0F7A 		fldsgt	s15, [r6, #60]
 1782 0262 DFED477A 		fldsle	s15, .L362
 1783              	.L294:
 1784 0266 C6ED187A 		fsts	s15, [r6, #96]
 1785 026a 2AE7     		b	.L245
 1786              	.L355:
 1787 026c 06F15003 		add	r3, r6, #80
 1788 0270 75E7     		b	.L275
 1789              	.L253:
 1790 0272 B8EE047A 		fconsts	s14, #132
 1791 0276 F4EEC78A 		fcmpes	s17, s14
 1792 027a F1EE10FA 		fmstat
 1793 027e FFF660AF 		blt	.L348
 1794 0282 9FED437A 		flds	s14, .L362+16
 1795 0286 F4EEC77A 		fcmpes	s15, s14
 1796 028a F1EE10FA 		fmstat
 1797 028e 7FF758AF 		ble	.L348
 1798              	.L270:
 1799 0292 0422     		movs	r2, #4
 1800 0294 0023     		movs	r3, #0
 1801 0296 3068     		ldr	r0, [r6]
 1802 0298 86F87420 		strb	r2, [r6, #116]
 1803 029c A6F87030 		strh	r3, [r6, #112]	@ movhi
 1804              	.L258:
 1805 02a0 0424     		movs	r4, #4
 1806 02a2 4FE7     		b	.L259
 1807              	.L353:
 1808 02a4 F0EE047A 		fconsts	s15, #4
 1809 02a8 F4EEE78A 		fcmpes	s17, s15
 1810 02ac F1EE10FA 		fmstat
 1811 02b0 EFD9     		bls	.L270
 1812 02b2 0028     		cmp	r0, #0
 1813 02b4 3FF445AF 		beq	.L348
 1814 02b8 3046     		mov	r0, r6
 1815 02ba FFF7FEFF 		bl	_ZNK3PID22GetExpectedHeatingRateEv
 1816 02be F5EE007A 		fconsts	s15, #80
 1817 02c2 09EE100A 		fmsr	s18, r0
 1818 02c6 78EE277A 		fadds	s15, s16, s15
 1819 02ca B4EEE79A 		fcmpes	s18, s15
 1820 02ce F1EE10FA 		fmstat
 1821 02d2 00F30981 		bgt	.L356
 1822              	.L260:
 1823 02d6 B6F87030 		ldrh	r3, [r6, #112]
 1824 02da 002B     		cmp	r3, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 33


 1825 02dc 3FF4D3AE 		beq	.L252
 1826 02e0 013B     		subs	r3, r3, #1
 1827 02e2 A6F87030 		strh	r3, [r6, #112]	@ movhi
 1828 02e6 CEE6     		b	.L252
 1829              	.L254:
 1830 02e8 D6ED047A 		flds	s15, [r6, #16]
 1831 02ec F0EEE86A 		fabss	s13, s17
 1832 02f0 F4EEE76A 		fcmpes	s13, s15
 1833 02f4 F1EE10FA 		fmstat
 1834 02f8 7EDD     		ble	.L264
 1835 02fa DFED257A 		flds	s15, .L362+16
 1836 02fe B4EEE77A 		fcmpes	s14, s15
 1837 0302 F1EE10FA 		fmstat
 1838 0306 77DD     		ble	.L264
 1839 0308 B6F87030 		ldrh	r3, [r6, #112]
 1840 030c 3068     		ldr	r0, [r6]
 1841 030e D6ED056A 		flds	s13, [r6, #20]
 1842 0312 D0F80C27 		ldr	r2, [r0, #1804]
 1843 0316 DFED1D7A 		flds	s15, .L362+12
 1844 031a 0133     		adds	r3, r3, #1
 1845 031c 9BB2     		uxth	r3, r3
 1846 031e 02FB03F2 		mul	r2, r2, r3
 1847 0322 06EE102A 		fmsr	s12, r2	@ int
 1848 0326 66EEA77A 		fmuls	s15, s13, s15
 1849 032a B8EE467A 		fuitos	s14, s12
 1850 032e A6F87030 		strh	r3, [r6, #112]	@ movhi
 1851 0332 B4EEE77A 		fcmpes	s14, s15
 1852 0336 F1EE10FA 		fmstat
 1853 033a B1DD     		ble	.L258
 1854 033c 154D     		ldr	r5, .L362+20
 1855 033e 96F97210 		ldrsb	r1, [r6, #114]
 1856 0342 0022     		movs	r2, #0
 1857 0344 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjf
 1858 0348 EB69     		ldr	r3, [r5, #28]
 1859 034a 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 1860 034c 0022     		movs	r2, #0
 1861 034e 86F87420 		strb	r2, [r6, #116]
 1862 0352 002B     		cmp	r3, #0
 1863 0354 40F02381 		bne	.L357
 1864              	.L268:
 1865 0358 3069     		ldr	r0, [r6, #16]	@ float
 1866 035a 3468     		ldr	r4, [r6]
 1867 035c 96F97270 		ldrsb	r7, [r6, #114]
 1868 0360 FFF7FEFF 		bl	__aeabi_f2d
 1869 0364 3B46     		mov	r3, r7
 1870 0366 CDE90001 		strd	r0, [sp]
 1871 036a 0B4A     		ldr	r2, .L362+24
 1872 036c 2046     		mov	r0, r4
 1873 036e 0621     		movs	r1, #6
 1874 0370 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1875 0374 2869     		ldr	r0, [r5, #16]
 1876 0376 FFF7FEFF 		bl	_ZN6GCodes11HeaterFaultEv
 1877 037a 96F87440 		ldrb	r4, [r6, #116]	@ zero_extendqisi2
 1878 037e 82E6     		b	.L252
 1879              	.L363:
 1880              		.align	2
 1881              	.L362:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 34


 1882 0380 00000000 		.word	0
 1883 0384 00409C45 		.word	1167867904
 1884 0388 0000F03F 		.word	1072693248
 1885 038c 00007A44 		.word	1148846080
 1886 0390 00003442 		.word	1110704128
 1887 0394 00000000 		.word	reprap
 1888 0398 90050000 		.word	.LC28
 1889              	.L246:
 1890 039c 0022     		movs	r2, #0
 1891 039e 3068     		ldr	r0, [r6]
 1892 03a0 3266     		str	r2, [r6, #96]	@ float
 1893 03a2 96F97210 		ldrsb	r1, [r6, #114]
 1894 03a6 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjf
 1895 03aa 96F87430 		ldrb	r3, [r6, #116]	@ zero_extendqisi2
 1896 03ae 042B     		cmp	r3, #4
 1897 03b0 00F28E80 		bhi	.L358
 1898              	.L247:
 1899 03b4 7E4D     		ldr	r5, .L364
 1900 03b6 EB69     		ldr	r3, [r5, #28]
 1901 03b8 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 1902 03ba 0022     		movs	r2, #0
 1903 03bc 86F87420 		strb	r2, [r6, #116]
 1904 03c0 002B     		cmp	r3, #0
 1905 03c2 40F08180 		bne	.L359
 1906              	.L248:
 1907 03c6 2046     		mov	r0, r4
 1908 03c8 96F97270 		ldrsb	r7, [r6, #114]
 1909 03cc 3468     		ldr	r4, [r6]
 1910 03ce FFF7FEFF 		bl	_Z22TemperatureErrorString16TemperatureError
 1911 03d2 3B46     		mov	r3, r7
 1912 03d4 774A     		ldr	r2, .L364+4
 1913 03d6 0090     		str	r0, [sp]
 1914 03d8 0621     		movs	r1, #6
 1915 03da 2046     		mov	r0, r4
 1916 03dc FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1917 03e0 7348     		ldr	r0, .L364
 1918 03e2 96F97210 		ldrsb	r1, [r6, #114]
 1919 03e6 FFF7FEFF 		bl	_ZN6RepRap20FlagTemperatureFaultEa
 1920 03ea 2869     		ldr	r0, [r5, #16]
 1921 03ec FFF7FEFF 		bl	_ZN6GCodes11HeaterFaultEv
 1922 03f0 D6ED187A 		flds	s15, [r6, #96]
 1923 03f4 3068     		ldr	r0, [r6]
 1924 03f6 64E6     		b	.L245
 1925              	.L264:
 1926 03f8 B6F87030 		ldrh	r3, [r6, #112]
 1927 03fc 002B     		cmp	r3, #0
 1928 03fe 3FF4A0AE 		beq	.L348
 1929 0402 013B     		subs	r3, r3, #1
 1930 0404 A6F87030 		strh	r3, [r6, #112]	@ movhi
 1931 0408 3068     		ldr	r0, [r6]
 1932 040a 49E7     		b	.L258
 1933              	.L345:
 1934 040c 9FED6A7A 		flds	s14, .L364+8
 1935 0410 F4EEC76A 		fcmpes	s13, s14
 1936 0414 F1EE10FA 		fmstat
 1937 0418 61D4     		bmi	.L360
 1938 041a 002A     		cmp	r2, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 35


 1939 041c 51D1     		bne	.L349
 1940 041e 96F84220 		ldrb	r2, [r6, #66]	@ zero_extendqisi2
 1941 0422 002A     		cmp	r2, #0
 1942 0424 4DD1     		bne	.L349
 1943 0426 F0EE465A 		fcpys	s11, s12
 1944              	.L287:
 1945 042a 93ED015A 		flds	s10, [r3, #4]
 1946 042e D0F80C37 		ldr	r3, [r0, #1804]
 1947 0432 DFED626A 		flds	s13, .L364+12
 1948 0436 96ED177A 		flds	s14, [r6, #92]
 1949 043a 04EE903A 		fmsr	s9, r3	@ int
 1950 043e 65EE855A 		fmuls	s11, s11, s10
 1951 0442 B8EE645A 		fuitos	s10, s9
 1952 0446 65EE855A 		fmuls	s11, s11, s10
 1953 044a A5EEA67A 		vfma.f32	s14, s11, s13
 1954 044e B4EE477A 		fcmps	s14, s14
 1955 0452 F1EE10FA 		fmstat
 1956 0456 14D6     		bvs	.L288
 1957 0458 F4EEC77A 		fcmpes	s15, s14
 1958 045c F1EE10FA 		fmstat
 1959 0460 06DC     		bgt	.L289
 1960 0462 F4EE677A 		fcmps	s15, s15
 1961 0466 F1EE10FA 		fmstat
 1962 046a B0EE677A 		fcpys	s14, s15
 1963 046e 08D6     		bvs	.L288
 1964              	.L289:
 1965 0470 B5EEC07A 		fcmpezs	s14
 1966 0474 DFED506A 		flds	s13, .L364+8
 1967 0478 F1EE10FA 		fmstat
 1968 047c D8BF     		it	le
 1969 047e B0EE667A 		fcpysle	s14, s13
 1970              	.L288:
 1971 0482 36EE076A 		fadds	s12, s12, s14
 1972 0486 86ED177A 		fsts	s14, [r6, #92]
 1973 048a B4EE466A 		fcmps	s12, s12
 1974 048e F1EE10FA 		fmstat
 1975 0492 41D6     		bvs	.L308
 1976 0494 F4EEC67A 		fcmpes	s15, s12
 1977 0498 F1EE10FA 		fmstat
 1978 049c 07DC     		bgt	.L292
 1979 049e F4EE677A 		fcmps	s15, s15
 1980 04a2 F1EE10FA 		fmstat
 1981 04a6 BFF5DEAE 		bvs	.L294
 1982 04aa B0EE676A 		fcpys	s12, s15
 1983              	.L292:
 1984 04ae B5EEC06A 		fcmpezs	s12
 1985 04b2 DFED417A 		flds	s15, .L364+8
 1986 04b6 F1EE10FA 		fmstat
 1987 04ba C8BF     		it	gt
 1988 04bc F0EE467A 		fcpysgt	s15, s12
 1989 04c0 D1E6     		b	.L294
 1990              	.L349:
 1991 04c2 68EEA55A 		fmuls	s11, s17, s11
 1992 04c6 B0E7     		b	.L287
 1993              	.L359:
 1994 04c8 2869     		ldr	r0, [r5, #16]
 1995 04ca FFF7FEFF 		bl	_ZN6GCodes16HeaterFaultPauseEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 36


 1996 04ce 7AE7     		b	.L248
 1997              	.L358:
 1998 04d0 3B4D     		ldr	r5, .L364+16
 1999 04d2 2868     		ldr	r0, [r5]
 2000 04d4 FFF7FEFF 		bl	_ZdlPv
 2001 04d8 0023     		movs	r3, #0
 2002 04da 2B60     		str	r3, [r5]
 2003 04dc 6AE7     		b	.L247
 2004              	.L360:
 2005 04de 86ED187A 		fsts	s14, [r6, #96]
 2006 04e2 F0EE477A 		fcpys	s15, s14
 2007 04e6 ECE5     		b	.L245
 2008              	.L356:
 2009 04e8 FFF7FEFF 		bl	millis
 2010 04ec B36E     		ldr	r3, [r6, #104]
 2011 04ee D6ED0E7A 		flds	s15, [r6, #56]
 2012 04f2 9FED347A 		flds	s14, .L364+20
 2013 04f6 C01A     		subs	r0, r0, r3
 2014 04f8 67EE877A 		fmuls	s15, s15, s14
 2015 04fc 05EE100A 		fmsr	s10, r0	@ int
 2016 0500 77EEA77A 		fadds	s15, s15, s15
 2017 0504 F8EE456A 		fuitos	s13, s10
 2018 0508 F4EEE76A 		fcmpes	s13, s15
 2019 050c F1EE10FA 		fmstat
 2020 0510 05DC     		bgt	.L262
 2021 0512 96F87440 		ldrb	r4, [r6, #116]	@ zero_extendqisi2
 2022 0516 DEE6     		b	.L260
 2023              	.L308:
 2024 0518 F0EE467A 		fcpys	s15, s12
 2025 051c A3E6     		b	.L294
 2026              	.L262:
 2027 051e B6F87030 		ldrh	r3, [r6, #112]
 2028 0522 3068     		ldr	r0, [r6]
 2029 0524 D6ED056A 		flds	s13, [r6, #20]
 2030 0528 D0F80C27 		ldr	r2, [r0, #1804]
 2031 052c 0133     		adds	r3, r3, #1
 2032 052e 9BB2     		uxth	r3, r3
 2033 0530 02FB03F2 		mul	r2, r2, r3
 2034 0534 05EE102A 		fmsr	s10, r2	@ int
 2035 0538 26EE877A 		fmuls	s14, s13, s14
 2036 053c F8EE457A 		fuitos	s15, s10
 2037 0540 A6F87030 		strh	r3, [r6, #112]	@ movhi
 2038 0544 F4EEC77A 		fcmpes	s15, s14
 2039 0548 F1EE10FA 		fmstat
 2040 054c 02DC     		bgt	.L297
 2041 054e 96F87440 		ldrb	r4, [r6, #116]	@ zero_extendqisi2
 2042 0552 98E5     		b	.L252
 2043              	.L297:
 2044 0554 164D     		ldr	r5, .L364
 2045 0556 96F97210 		ldrsb	r1, [r6, #114]
 2046 055a 0022     		movs	r2, #0
 2047 055c FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjf
 2048 0560 EB69     		ldr	r3, [r5, #28]
 2049 0562 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 2050 0564 0022     		movs	r2, #0
 2051 0566 86F87420 		strb	r2, [r6, #116]
 2052 056a E3B9     		cbnz	r3, .L361
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 37


 2053              	.L263:
 2054 056c 19EE100A 		fmrs	r0, s18
 2055 0570 FFF7FEFF 		bl	__aeabi_f2d
 2056 0574 3468     		ldr	r4, [r6]
 2057 0576 96F97230 		ldrsb	r3, [r6, #114]
 2058 057a 134A     		ldr	r2, .L364+24
 2059 057c CDE90001 		strd	r0, [sp]
 2060 0580 2046     		mov	r0, r4
 2061 0582 0621     		movs	r1, #6
 2062 0584 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2063 0588 0948     		ldr	r0, .L364
 2064 058a 96F97210 		ldrsb	r1, [r6, #114]
 2065 058e FFF7FEFF 		bl	_ZN6RepRap20FlagTemperatureFaultEa
 2066 0592 2869     		ldr	r0, [r5, #16]
 2067 0594 FFF7FEFF 		bl	_ZN6GCodes11HeaterFaultEv
 2068 0598 96F87440 		ldrb	r4, [r6, #116]	@ zero_extendqisi2
 2069 059c 73E5     		b	.L252
 2070              	.L357:
 2071 059e 2869     		ldr	r0, [r5, #16]
 2072 05a0 FFF7FEFF 		bl	_ZN6GCodes16HeaterFaultPauseEv
 2073 05a4 D8E6     		b	.L268
 2074              	.L361:
 2075 05a6 2869     		ldr	r0, [r5, #16]
 2076 05a8 FFF7FEFF 		bl	_ZN6GCodes16HeaterFaultPauseEv
 2077 05ac DEE7     		b	.L263
 2078              	.L365:
 2079 05ae 00BF     		.align	2
 2080              	.L364:
 2081 05b0 00000000 		.word	reprap
 2082 05b4 F4040000 		.word	.LC26
 2083 05b8 00000000 		.word	0
 2084 05bc 6F12833A 		.word	981668463
 2085 05c0 00000000 		.word	.LANCHOR0
 2086 05c4 00007A44 		.word	1148846080
 2087 05c8 28050000 		.word	.LC27
 2088              		.size	_ZN3PID4SpinEv, .-_ZN3PID4SpinEv
 2089              		.global	_ZN3PID15tuningPeakDelayE
 2090              		.global	_ZN3PID17tuningHeatingTimeE
 2091              		.global	_ZN3PID21tuningPeakTemperatureE
 2092              		.global	_ZN3PID19tuningHeaterOffTempE
 2093              		.global	_ZN3PID19tuningReadingsTakenE
 2094              		.global	_ZN3PID21tuningReadingIntervalE
 2095              		.global	_ZN3PID20tuningPhaseStartTimeE
 2096              		.global	_ZN3PID15tuningBeginTimeE
 2097              		.global	_ZN3PID16tuningTargetTempE
 2098              		.global	_ZN3PID9tuningPwmE
 2099              		.global	_ZN3PID15tuningStartTempE
 2100              		.global	_ZN3PID18tuningTempReadingsE
 2101              		.section	.bss._ZN3PID17tuningHeatingTimeE,"aw",%nobits
 2102              		.align	2
 2103              		.set	.LANCHOR8,. + 0
 2104              		.type	_ZN3PID17tuningHeatingTimeE, %object
 2105              		.size	_ZN3PID17tuningHeatingTimeE, 4
 2106              	_ZN3PID17tuningHeatingTimeE:
 2107 0000 00000000 		.space	4
 2108              		.section	.bss._ZN3PID15tuningPeakDelayE,"aw",%nobits
 2109              		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 38


 2110              		.set	.LANCHOR6,. + 0
 2111              		.type	_ZN3PID15tuningPeakDelayE, %object
 2112              		.size	_ZN3PID15tuningPeakDelayE, 4
 2113              	_ZN3PID15tuningPeakDelayE:
 2114 0000 00000000 		.space	4
 2115              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 2116              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 2117              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 2118              	_ZL28cpu_irq_prev_interrupt_state:
 2119 0000 00       		.space	1
 2120              		.section	.bss._ZN3PID19tuningReadingsTakenE,"aw",%nobits
 2121              		.align	2
 2122              		.set	.LANCHOR1,. + 0
 2123              		.type	_ZN3PID19tuningReadingsTakenE, %object
 2124              		.size	_ZN3PID19tuningReadingsTakenE, 4
 2125              	_ZN3PID19tuningReadingsTakenE:
 2126 0000 00000000 		.space	4
 2127              		.section	.bss._ZN3PID21tuningPeakTemperatureE,"aw",%nobits
 2128              		.align	2
 2129              		.set	.LANCHOR11,. + 0
 2130              		.type	_ZN3PID21tuningPeakTemperatureE, %object
 2131              		.size	_ZN3PID21tuningPeakTemperatureE, 4
 2132              	_ZN3PID21tuningPeakTemperatureE:
 2133 0000 00000000 		.space	4
 2134              		.section	.bss._ZN3PID21tuningReadingIntervalE,"aw",%nobits
 2135              		.align	2
 2136              		.set	.LANCHOR2,. + 0
 2137              		.type	_ZN3PID21tuningReadingIntervalE, %object
 2138              		.size	_ZN3PID21tuningReadingIntervalE, 4
 2139              	_ZN3PID21tuningReadingIntervalE:
 2140 0000 00000000 		.space	4
 2141              		.section	.bss._ZN3PID18tuningTempReadingsE,"aw",%nobits
 2142              		.align	2
 2143              		.set	.LANCHOR0,. + 0
 2144              		.type	_ZN3PID18tuningTempReadingsE, %object
 2145              		.size	_ZN3PID18tuningTempReadingsE, 4
 2146              	_ZN3PID18tuningTempReadingsE:
 2147 0000 00000000 		.space	4
 2148              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 2149              		.align	2
 2150              		.type	_ZL32cpu_irq_critical_section_counter, %object
 2151              		.size	_ZL32cpu_irq_critical_section_counter, 4
 2152              	_ZL32cpu_irq_critical_section_counter:
 2153 0000 00000000 		.space	4
 2154              		.section	.rodata.str1.4,"aMS",%progbits,1
 2155              		.align	2
 2156              	.LC0:
 2157 0000 48656174 		.ascii	"Heater %d not switched on due to temperature fault\012"
 2157      65722025 
 2157      64206E6F 
 2157      74207377 
 2157      69746368 
 2158 0033 00       		.ascii	"\000"
 2159              	.LC1:
 2160 0034 48656174 		.ascii	"Heater %d switched on\012\000"
 2160      65722025 
 2160      64207377 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 39


 2160      69746368 
 2160      6564206F 
 2161 004b 00       		.space	1
 2162              	.LC2:
 2163 004c 48656174 		.ascii	"Heater %d switched off\012\000"
 2163      65722025 
 2163      64207377 
 2163      69746368 
 2163      6564206F 
 2164              	.LC3:
 2165 0064 4572726F 		.ascii	"Error: Temperature %.1f too high for heater %d!\012"
 2165      723A2054 
 2165      656D7065 
 2165      72617475 
 2165      72652025 
 2166 0094 00       		.ascii	"\000"
 2167 0095 000000   		.space	3
 2168              	.LC4:
 2169 0098 4572726F 		.ascii	"Error: heater %d cannot be auto tuned while it is d"
 2169      723A2068 
 2169      65617465 
 2169      72202564 
 2169      2063616E 
 2170 00cb 69736162 		.ascii	"isabled\000"
 2170      6C656400 
 2171 00d3 00       		.space	1
 2172              	.LC5:
 2173 00d4 4572726F 		.ascii	"Error: heater %d reported error '%s' at start of au"
 2173      723A2068 
 2173      65617465 
 2173      72202564 
 2173      20726570 
 2174 0107 746F2074 		.ascii	"to tuning\000"
 2174      756E696E 
 2174      6700
 2175 0111 000000   		.space	3
 2176              	.LC6:
 2177 0114 4175746F 		.ascii	"Auto tuning heater %d using target temperature %.1f"
 2177      2074756E 
 2177      696E6720 
 2177      68656174 
 2177      65722025 
 2178 0147 4320616E 		.ascii	"C and PWM %.2f - do not leave printer unattended\000"
 2178      64205057 
 2178      4D20252E 
 2178      3266202D 
 2178      20646F20 
 2179              	.LC7:
 2180 0178 4572726F 		.ascii	"Error: heater %d must be off and cold before auto t"
 2180      723A2068 
 2180      65617465 
 2180      72202564 
 2180      206D7573 
 2181 01ab 756E696E 		.ascii	"uning it\000"
 2181      67206974 
 2181      00
 2182              	.LC8:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 40


 2183 01b4 48656174 		.ascii	"Heater %d is being tuned, phase %u of %u\000"
 2183      65722025 
 2183      64206973 
 2183      20626569 
 2183      6E672074 
 2184 01dd 000000   		.space	3
 2185              	.LC9:
 2186 01e0 48656174 		.ascii	"Heater %d tuning succeeded, use M307 H%d to see res"
 2186      65722025 
 2186      64207475 
 2186      6E696E67 
 2186      20737563 
 2187 0213 756C7400 		.ascii	"ult\000"
 2188 0217 00       		.space	1
 2189              	.LC10:
 2190 0218 48656174 		.ascii	"Heater %d tuning failed\000"
 2190      65722025 
 2190      64207475 
 2190      6E696E67 
 2190      20666169 
 2191              	.LC11:
 2192 0230 25733A20 		.ascii	"%s: interval %.1f sec, readings\000"
 2192      696E7465 
 2192      7276616C 
 2192      20252E31 
 2192      66207365 
 2193              	.LC12:
 2194 0250 0A00     		.ascii	"\012\000"
 2195 0252 0000     		.space	2
 2196              	.LC13:
 2197 0254 20252E31 		.ascii	" %.1f\000"
 2197      6600
 2198 025a 0000     		.space	2
 2199              	.LC14:
 2200 025c 41742063 		.ascii	"At completion\000"
 2200      6F6D706C 
 2200      6574696F 
 2200      6E00
 2201 026a 0000     		.space	2
 2202              	.LC15:
 2203 026c 4175746F 		.ascii	"Auto tune heater %d completed in %u sec\012Use M307"
 2203      2074756E 
 2203      65206865 
 2203      61746572 
 2203      20256420 
 2204 029c 20482564 		.ascii	" H%d to see the result, or M500 to save the result "
 2204      20746F20 
 2204      73656520 
 2204      74686520 
 2204      72657375 
 2205 02cf 696E2063 		.ascii	"in config-override.g\012\000"
 2205      6F6E6669 
 2205      672D6F76 
 2205      65727269 
 2205      64652E67 
 2206 02e5 000000   		.space	3
 2207              	.LC16:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 41


 2208 02e8 4175746F 		.ascii	"Auto tune of heater %u failed due to bad curve fit "
 2208      2074756E 
 2208      65206F66 
 2208      20686561 
 2208      74657220 
 2209 031b 28473D25 		.ascii	"(G=%.1f, tc=%.1f, td=%.1f)\012\000"
 2209      2E31662C 
 2209      2074633D 
 2209      252E3166 
 2209      2C207464 
 2210 0337 00       		.space	1
 2211              	.LC17:
 2212 0338 4175746F 		.ascii	"Auto tune phase 1, heater on\012\000"
 2212      2074756E 
 2212      65207068 
 2212      61736520 
 2212      312C2068 
 2213 0356 0000     		.space	2
 2214              	.LC18:
 2215 0358 4175746F 		.ascii	"Auto tune cancelled because starting temperature is"
 2215      2074756E 
 2215      65206361 
 2215      6E63656C 
 2215      6C656420 
 2216 038b 206E6F74 		.ascii	" not stable\012\000"
 2216      20737461 
 2216      626C650A 
 2216      00
 2217              	.LC19:
 2218 0398 4175746F 		.ascii	"Auto tune cancelled because target temperature was "
 2218      2074756E 
 2218      65206361 
 2218      6E63656C 
 2218      6C656420 
 2219 03cb 6E6F7420 		.ascii	"not reached\012\000"
 2219      72656163 
 2219      6865640A 
 2219      00
 2220              	.LC20:
 2221 03d8 4175746F 		.ascii	"Auto tune phase 2, heater off\012\000"
 2221      2074756E 
 2221      65207068 
 2221      61736520 
 2221      322C2068 
 2222 03f7 00       		.space	1
 2223              	.LC21:
 2224 03f8 4175746F 		.ascii	"Auto tune cancelled because temperature is not fall"
 2224      2074756E 
 2224      65206361 
 2224      6E63656C 
 2224      6C656420 
 2225 042b 696E670A 		.ascii	"ing\012\000"
 2225      00
 2226              	.LC22:
 2227 0430 4174206E 		.ascii	"At no peak found\000"
 2227      6F207065 
 2227      616B2066 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 42


 2227      6F756E64 
 2227      00
 2228 0441 000000   		.space	3
 2229              	.LC23:
 2230 0444 4175746F 		.ascii	"Auto tune cancelled because temperature peak was no"
 2230      2074756E 
 2230      65206361 
 2230      6E63656C 
 2230      6C656420 
 2231 0477 74206964 		.ascii	"t identified\012\000"
 2231      656E7469 
 2231      66696564 
 2231      0A00
 2232 0485 000000   		.space	3
 2233              	.LC24:
 2234 0488 4175746F 		.ascii	"Auto tune phase 3, peak temperature was %.1f\012\000"
 2234      2074756E 
 2234      65207068 
 2234      61736520 
 2234      332C2070 
 2235 04b6 0000     		.space	2
 2236              	.LC25:
 2237 04b8 4175746F 		.ascii	"Auto tune cancelled because temperature is not incr"
 2237      2074756E 
 2237      65206361 
 2237      6E63656C 
 2237      6C656420 
 2238 04eb 65617369 		.ascii	"easing\012\000"
 2238      6E670A00 
 2239 04f3 00       		.space	1
 2240              	.LC26:
 2241 04f4 4572726F 		.ascii	"Error: Temperature reading fault on heater %d: %s\012"
 2241      723A2054 
 2241      656D7065 
 2241      72617475 
 2241      72652072 
 2242 0526 00       		.ascii	"\000"
 2243 0527 00       		.space	1
 2244              	.LC27:
 2245 0528 4572726F 		.ascii	"Error: heating fault on heater %d, temperature risi"
 2245      723A2068 
 2245      65617469 
 2245      6E672066 
 2245      61756C74 
 2246 055b 6E67206D 		.ascii	"ng much more slowly than the expected %.1f\302\260C"
 2246      75636820 
 2246      6D6F7265 
 2246      20736C6F 
 2246      776C7920 
 2247 0588 2F736563 		.ascii	"/sec\012\000"
 2247      0A00
 2248 058e 0000     		.space	2
 2249              	.LC28:
 2250 0590 4572726F 		.ascii	"Error: heating fault on heater %d, temperature excu"
 2250      723A2068 
 2250      65617469 
 2250      6E672066 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccFxPtLf.s 			page 43


 2250      61756C74 
 2251 05c3 7273696F 		.ascii	"rsion exceeded %.1fC\012\000"
 2251      6E206578 
 2251      63656564 
 2251      65642025 
 2251      2E316643 
 2252 05d9 000000   		.section	.bss._ZN3PID16tuningTargetTempE,"aw",%nobits
 2253              		.align	2
 2254              		.set	.LANCHOR4,. + 0
 2255              		.type	_ZN3PID16tuningTargetTempE, %object
 2256              		.size	_ZN3PID16tuningTargetTempE, 4
 2257              	_ZN3PID16tuningTargetTempE:
 2258 0000 00000000 		.space	4
 2259              		.section	.bss._ZN3PID20tuningPhaseStartTimeE,"aw",%nobits
 2260              		.align	2
 2261              		.set	.LANCHOR10,. + 0
 2262              		.type	_ZN3PID20tuningPhaseStartTimeE, %object
 2263              		.size	_ZN3PID20tuningPhaseStartTimeE, 4
 2264              	_ZN3PID20tuningPhaseStartTimeE:
 2265 0000 00000000 		.space	4
 2266              		.section	.bss._ZN3PID19tuningHeaterOffTempE,"aw",%nobits
 2267              		.align	2
 2268              		.set	.LANCHOR7,. + 0
 2269              		.type	_ZN3PID19tuningHeaterOffTempE, %object
 2270              		.size	_ZN3PID19tuningHeaterOffTempE, 4
 2271              	_ZN3PID19tuningHeaterOffTempE:
 2272 0000 00000000 		.space	4
 2273              		.section	.bss._ZN3PID9tuningPwmE,"aw",%nobits
 2274              		.align	2
 2275              		.set	.LANCHOR3,. + 0
 2276              		.type	_ZN3PID9tuningPwmE, %object
 2277              		.size	_ZN3PID9tuningPwmE, 4
 2278              	_ZN3PID9tuningPwmE:
 2279 0000 00000000 		.space	4
 2280              		.section	.bss._ZN3PID15tuningBeginTimeE,"aw",%nobits
 2281              		.align	2
 2282              		.set	.LANCHOR9,. + 0
 2283              		.type	_ZN3PID15tuningBeginTimeE, %object
 2284              		.size	_ZN3PID15tuningBeginTimeE, 4
 2285              	_ZN3PID15tuningBeginTimeE:
 2286 0000 00000000 		.space	4
 2287              		.section	.bss._ZN3PID15tuningStartTempE,"aw",%nobits
 2288              		.align	2
 2289              		.set	.LANCHOR5,. + 0
 2290              		.type	_ZN3PID15tuningStartTempE, %object
 2291              		.size	_ZN3PID15tuningStartTempE, 4
 2292              	_ZN3PID15tuningStartTempE:
 2293 0000 00000000 		.space	4
 2294              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
