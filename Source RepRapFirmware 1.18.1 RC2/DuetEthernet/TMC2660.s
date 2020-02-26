ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc60Lodi.s 			page 1


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
  15              		.file	"TMC2660.cpp"
  16              		.section	.text._ZN14TmcDriverState11SpiSendWordEm.part.0,"ax",%progbits
  17              		.align	2
  18              		.thumb
  19              		.thumb_func
  20              		.type	_ZN14TmcDriverState11SpiSendWordEm.part.0, %function
  21              	_ZN14TmcDriverState11SpiSendWordEm.part.0:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  25 0004 1D4B     		ldr	r3, .L13
  26 0006 0C22     		movs	r2, #12
  27 0008 1A60     		str	r2, [r3]
  28 000a 8146     		mov	r9, r0
  29 000c 8846     		mov	r8, r1
  30 000e 007E     		ldrb	r0, [r0, #24]	@ zero_extendqisi2
  31 0010 0021     		movs	r1, #0
  32 0012 FFF7FEFF 		bl	digitalWrite
  33 0016 2823     		movs	r3, #40
  34              	@ 80 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\cores\arduino/wiring.h" 1
  35              		L_17_delayMicroseconds:
  36 0018 013B     		subs   r3, #1
  37 001a 7FF4FDAF 		bne    L_17_delayMicroseconds
  38              	
  39              	@ 0 "" 2
  40              		.thumb
  41 001e 174C     		ldr	r4, .L13
  42 0020 5023     		movs	r3, #80
  43 0022 2360     		str	r3, [r4]
  44 0024 0025     		movs	r5, #0
  45 0026 0323     		movs	r3, #3
  46              	.L5:
  47 0028 C8F30742 		ubfx	r2, r8, #16, #8
  48 002c 2F02     		lsls	r7, r5, #8
  49 002e E261     		str	r2, [r4, #28]
  50 0030 4FEA0828 		lsl	r8, r8, #8
  51 0034 42F21075 		movw	r5, #10000
  52              	.L6:
  53 0038 6669     		ldr	r6, [r4, #20]
  54 003a 06F00306 		and	r6, r6, #3
  55 003e 032E     		cmp	r6, #3
  56 0040 01D0     		beq	.L3
  57 0042 013D     		subs	r5, r5, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc60Lodi.s 			page 2


  58 0044 F8D1     		bne	.L6
  59              	.L3:
  60 0046 A269     		ldr	r2, [r4, #24]
  61 0048 013B     		subs	r3, r3, #1
  62 004a D2B2     		uxtb	r2, r2
  63 004c 47EA0205 		orr	r5, r7, r2
  64 0050 EAD1     		bne	.L5
  65 0052 2823     		movs	r3, #40
  66              	@ 80 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\cores\arduino/wiring.h" 1
  67              		L_53_delayMicroseconds:
  68 0054 013B     		subs   r3, #1
  69 0056 7FF4FDAF 		bne    L_53_delayMicroseconds
  70              	
  71              	@ 0 "" 2
  72              		.thumb
  73 005a 0121     		movs	r1, #1
  74 005c 99F81800 		ldrb	r0, [r9, #24]	@ zero_extendqisi2
  75 0060 FFF7FEFF 		bl	digitalWrite
  76 0064 054B     		ldr	r3, .L13
  77 0066 AC22     		movs	r2, #172
  78 0068 1A60     		str	r2, [r3]
  79 006a 2823     		movs	r3, #40
  80              	@ 80 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\cores\arduino/wiring.h" 1
  81              		L_61_delayMicroseconds:
  82 006c 013B     		subs   r3, #1
  83 006e 7FF4FDAF 		bne    L_61_delayMicroseconds
  84              	
  85              	@ 0 "" 2
  86              		.thumb
  87 0072 2D09     		lsrs	r5, r5, #4
  88 0074 C9F81450 		str	r5, [r9, #20]
  89 0078 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
  90              	.L14:
  91              		.align	2
  92              	.L13:
  93 007c 00400A40 		.word	1074413568
  94              		.size	_ZN14TmcDriverState11SpiSendWordEm.part.0, .-_ZN14TmcDriverState11SpiSendWordEm.part.0
  95              		.section	.text._ZN14TmcDriverState4InitEm,"ax",%progbits
  96              		.align	2
  97              		.global	_ZN14TmcDriverState4InitEm
  98              		.thumb
  99              		.thumb_func
 100              		.type	_ZN14TmcDriverState4InitEm, %function
 101              	_ZN14TmcDriverState4InitEm:
 102              		@ args = 0, pretend = 0, frame = 0
 103              		@ frame_needed = 0, uses_anonymous_args = 0
 104              		@ link register save eliminated.
 105 0000 70B4     		push	{r4, r5, r6}
 106 0002 084A     		ldr	r2, .L16
 107 0004 084D     		ldr	r5, .L16+4
 108 0006 094C     		ldr	r4, .L16+8
 109 0008 094B     		ldr	r3, .L16+12
 110 000a 8161     		str	r1, [r0, #24]
 111 000c 4FF40176 		mov	r6, #516
 112 0010 4FF42021 		mov	r1, #655360
 113 0014 0660     		str	r6, [r0]
 114 0016 C561     		str	r5, [r0, #28]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc60Lodi.s 			page 3


 115 0018 4460     		str	r4, [r0, #4]
 116 001a 8160     		str	r1, [r0, #8]
 117 001c C260     		str	r2, [r0, #12]
 118 001e 0361     		str	r3, [r0, #16]
 119 0020 70BC     		pop	{r4, r5, r6}
 120 0022 7047     		bx	lr
 121              	.L17:
 122              		.align	2
 123              	.L16:
 124 0024 00010C00 		.word	786688
 125 0028 B4010900 		.word	590260
 126 002c B0010900 		.word	590256
 127 0030 40000E00 		.word	917568
 128              		.size	_ZN14TmcDriverState4InitEm, .-_ZN14TmcDriverState4InitEm
 129              		.section	.text._ZN14TmcDriverState11SpiSendWordEm,"ax",%progbits
 130              		.align	2
 131              		.global	_ZN14TmcDriverState11SpiSendWordEm
 132              		.thumb
 133              		.thumb_func
 134              		.type	_ZN14TmcDriverState11SpiSendWordEm, %function
 135              	_ZN14TmcDriverState11SpiSendWordEm:
 136              		@ args = 0, pretend = 0, frame = 0
 137              		@ frame_needed = 0, uses_anonymous_args = 0
 138              		@ link register save eliminated.
 139 0000 024B     		ldr	r3, .L21
 140 0002 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 141 0004 03B9     		cbnz	r3, .L20
 142 0006 7047     		bx	lr
 143              	.L20:
 144 0008 FFF7FEBF 		b	_ZN14TmcDriverState11SpiSendWordEm.part.0
 145              	.L22:
 146              		.align	2
 147              	.L21:
 148 000c 00000000 		.word	.LANCHOR0
 149              		.size	_ZN14TmcDriverState11SpiSendWordEm, .-_ZN14TmcDriverState11SpiSendWordEm
 150              		.section	.text._ZN14TmcDriverState8WriteAllEv,"ax",%progbits
 151              		.align	2
 152              		.global	_ZN14TmcDriverState8WriteAllEv
 153              		.thumb
 154              		.thumb_func
 155              		.type	_ZN14TmcDriverState8WriteAllEv, %function
 156              	_ZN14TmcDriverState8WriteAllEv:
 157              		@ args = 0, pretend = 0, frame = 0
 158              		@ frame_needed = 0, uses_anonymous_args = 0
 159 0000 38B5     		push	{r3, r4, r5, lr}
 160 0002 134D     		ldr	r5, .L44
 161 0004 4168     		ldr	r1, [r0, #4]
 162 0006 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 163 0008 0446     		mov	r4, r0
 164 000a 03B9     		cbnz	r3, .L43
 165              	.L23:
 166 000c 38BD     		pop	{r3, r4, r5, pc}
 167              	.L43:
 168 000e FFF7FEFF 		bl	_ZN14TmcDriverState11SpiSendWordEm.part.0
 169 0012 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 170 0014 E168     		ldr	r1, [r4, #12]
 171 0016 002B     		cmp	r3, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc60Lodi.s 			page 4


 172 0018 F8D0     		beq	.L23
 173 001a 2046     		mov	r0, r4
 174 001c FFF7FEFF 		bl	_ZN14TmcDriverState11SpiSendWordEm.part.0
 175 0020 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 176 0022 2169     		ldr	r1, [r4, #16]
 177 0024 002B     		cmp	r3, #0
 178 0026 F1D0     		beq	.L23
 179 0028 2046     		mov	r0, r4
 180 002a FFF7FEFF 		bl	_ZN14TmcDriverState11SpiSendWordEm.part.0
 181 002e 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 182 0030 2168     		ldr	r1, [r4]
 183 0032 002B     		cmp	r3, #0
 184 0034 EAD0     		beq	.L23
 185 0036 2046     		mov	r0, r4
 186 0038 FFF7FEFF 		bl	_ZN14TmcDriverState11SpiSendWordEm.part.0
 187 003c 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 188 003e A168     		ldr	r1, [r4, #8]
 189 0040 002B     		cmp	r3, #0
 190 0042 E3D0     		beq	.L23
 191 0044 2046     		mov	r0, r4
 192 0046 BDE83840 		pop	{r3, r4, r5, lr}
 193 004a FFF7FEBF 		b	_ZN14TmcDriverState11SpiSendWordEm.part.0
 194              	.L45:
 195 004e 00BF     		.align	2
 196              	.L44:
 197 0050 00000000 		.word	.LANCHOR0
 198              		.size	_ZN14TmcDriverState8WriteAllEv, .-_ZN14TmcDriverState8WriteAllEv
 199              		.section	.text._ZN14TmcDriverState16SetMicrosteppingEmb,"ax",%progbits
 200              		.align	2
 201              		.global	_ZN14TmcDriverState16SetMicrosteppingEmb
 202              		.thumb
 203              		.thumb_func
 204              		.type	_ZN14TmcDriverState16SetMicrosteppingEmb, %function
 205              	_ZN14TmcDriverState16SetMicrosteppingEmb:
 206              		@ args = 0, pretend = 0, frame = 0
 207              		@ frame_needed = 0, uses_anonymous_args = 0
 208              		@ link register save eliminated.
 209 0000 0368     		ldr	r3, [r0]
 210 0002 01F00F01 		and	r1, r1, #15
 211 0006 23F00F03 		bic	r3, r3, #15
 212 000a 1943     		orrs	r1, r1, r3
 213 000c 0160     		str	r1, [r0]
 214 000e 32B1     		cbz	r2, .L47
 215 0010 074B     		ldr	r3, .L51
 216 0012 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 217 0014 41F40071 		orr	r1, r1, #512
 218 0018 0160     		str	r1, [r0]
 219 001a 3BB9     		cbnz	r3, .L50
 220              	.L46:
 221 001c 7047     		bx	lr
 222              	.L47:
 223 001e 044B     		ldr	r3, .L51
 224 0020 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 225 0022 21F40071 		bic	r1, r1, #512
 226 0026 0160     		str	r1, [r0]
 227 0028 002B     		cmp	r3, #0
 228 002a F7D0     		beq	.L46
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc60Lodi.s 			page 5


 229              	.L50:
 230 002c FFF7FEBF 		b	_ZN14TmcDriverState11SpiSendWordEm.part.0
 231              	.L52:
 232              		.align	2
 233              	.L51:
 234 0030 00000000 		.word	.LANCHOR0
 235              		.size	_ZN14TmcDriverState16SetMicrosteppingEmb, .-_ZN14TmcDriverState16SetMicrosteppingEmb
 236              		.section	.text._ZN14TmcDriverState10SetCurrentEf,"ax",%progbits
 237              		.align	2
 238              		.global	_ZN14TmcDriverState10SetCurrentEf
 239              		.thumb
 240              		.thumb_func
 241              		.type	_ZN14TmcDriverState10SetCurrentEf, %function
 242              	_ZN14TmcDriverState10SetCurrentEf:
 243              		@ args = 0, pretend = 0, frame = 0
 244              		@ frame_needed = 0, uses_anonymous_args = 0
 245 0000 38B5     		push	{r3, r4, r5, lr}
 246 0002 234D     		ldr	r5, .L63
 247 0004 0269     		ldr	r2, [r0, #16]
 248 0006 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 249 0008 42F04002 		orr	r2, r2, #64
 250 000c 2DED028B 		fstmfdd	sp!, {d8}
 251 0010 0446     		mov	r4, r0
 252 0012 0261     		str	r2, [r0, #16]
 253 0014 08EE101A 		fmsr	s16, r1
 254 0018 A3BB     		cbnz	r3, .L61
 255              	.L54:
 256 001a B4EE488A 		fcmps	s16, s16
 257 001e F1EE10FA 		fmstat
 258 0022 20D6     		bvs	.L59
 259 0024 DFED1B7A 		flds	s15, .L63+4
 260 0028 B4EEE78A 		fcmpes	s16, s15
 261 002c F1EE10FA 		fmstat
 262 0030 09D4     		bmi	.L57
 263 0032 1720     		movs	r0, #23
 264              	.L56:
 265 0034 E268     		ldr	r2, [r4, #12]
 266 0036 22F01F01 		bic	r1, r2, #31
 267 003a 0143     		orrs	r1, r1, r0
 268 003c E160     		str	r1, [r4, #12]
 269 003e 5BB9     		cbnz	r3, .L62
 270 0040 BDEC028B 		fldmfdd	sp!, {d8}
 271 0044 38BD     		pop	{r3, r4, r5, pc}
 272              	.L57:
 273 0046 DFED147A 		flds	s15, .L63+8
 274 004a B4EEE78A 		fcmpes	s16, s15
 275 004e F1EE10FA 		fmstat
 276 0052 08DC     		bgt	.L59
 277 0054 0020     		movs	r0, #0
 278 0056 EDE7     		b	.L56
 279              	.L62:
 280 0058 BDEC028B 		fldmfdd	sp!, {d8}
 281 005c 2046     		mov	r0, r4
 282 005e BDE83840 		pop	{r3, r4, r5, lr}
 283 0062 FFF7FEBF 		b	_ZN14TmcDriverState11SpiSendWordEm.part.0
 284              	.L59:
 285 0066 BCEEC88A 		ftouizs	s16, s16
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc60Lodi.s 			page 6


 286 006a 0C4D     		ldr	r5, .L63+12
 287 006c 18EE102A 		fmrs	r2, s16	@ int
 288 0070 02F10062 		add	r2, r2, #134217728
 289 0074 323A     		subs	r2, r2, #50
 290 0076 5001     		lsls	r0, r2, #5
 291 0078 8008     		lsrs	r0, r0, #2
 292 007a A5FB0020 		umull	r2, r0, r5, r0
 293 007e C0F30410 		ubfx	r0, r0, #4, #5
 294 0082 D7E7     		b	.L56
 295              	.L61:
 296 0084 1146     		mov	r1, r2
 297 0086 FFF7FEFF 		bl	_ZN14TmcDriverState11SpiSendWordEm.part.0
 298 008a 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 299 008c C5E7     		b	.L54
 300              	.L64:
 301 008e 00BF     		.align	2
 302              	.L63:
 303 0090 00000000 		.word	.LANCHOR0
 304 0094 00001645 		.word	1159069696
 305 0098 0000C842 		.word	1120403456
 306 009c 71231005 		.word	84943729
 307              		.size	_ZN14TmcDriverState10SetCurrentEf, .-_ZN14TmcDriverState10SetCurrentEf
 308              		.section	.text._ZN14TmcDriverState6EnableEb,"ax",%progbits
 309              		.align	2
 310              		.global	_ZN14TmcDriverState6EnableEb
 311              		.thumb
 312              		.thumb_func
 313              		.type	_ZN14TmcDriverState6EnableEb, %function
 314              	_ZN14TmcDriverState6EnableEb:
 315              		@ args = 0, pretend = 0, frame = 0
 316              		@ frame_needed = 0, uses_anonymous_args = 0
 317              		@ link register save eliminated.
 318 0000 29B1     		cbz	r1, .L66
 319 0002 084B     		ldr	r3, .L70
 320 0004 C169     		ldr	r1, [r0, #28]
 321 0006 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 322 0008 4160     		str	r1, [r0, #4]
 323 000a 43B9     		cbnz	r3, .L69
 324              	.L65:
 325 000c 7047     		bx	lr
 326              	.L66:
 327 000e 054B     		ldr	r3, .L70
 328 0010 C169     		ldr	r1, [r0, #28]
 329 0012 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 330 0014 21F00F01 		bic	r1, r1, #15
 331 0018 4160     		str	r1, [r0, #4]
 332 001a 002B     		cmp	r3, #0
 333 001c F6D0     		beq	.L65
 334              	.L69:
 335 001e FFF7FEBF 		b	_ZN14TmcDriverState11SpiSendWordEm.part.0
 336              	.L71:
 337 0022 00BF     		.align	2
 338              	.L70:
 339 0024 00000000 		.word	.LANCHOR0
 340              		.size	_ZN14TmcDriverState6EnableEb, .-_ZN14TmcDriverState6EnableEb
 341              		.section	.text._ZN14TmcDriverState11SetChopConfEm,"ax",%progbits
 342              		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc60Lodi.s 			page 7


 343              		.global	_ZN14TmcDriverState11SetChopConfEm
 344              		.thumb
 345              		.thumb_func
 346              		.type	_ZN14TmcDriverState11SetChopConfEm, %function
 347              	_ZN14TmcDriverState11SetChopConfEm:
 348              		@ args = 0, pretend = 0, frame = 0
 349              		@ frame_needed = 0, uses_anonymous_args = 0
 350              		@ link register save eliminated.
 351 0000 4368     		ldr	r3, [r0, #4]
 352 0002 C1F31001 		ubfx	r1, r1, #0, #17
 353 0006 10B4     		push	{r4}
 354 0008 41F40024 		orr	r4, r1, #524288
 355 000c 13F00F01 		ands	r1, r3, #15
 356 0010 C461     		str	r4, [r0, #28]
 357 0012 18BF     		it	ne
 358 0014 0121     		movne	r1, #1
 359 0016 5DF8044B 		ldr	r4, [sp], #4
 360 001a FFF7FEBF 		b	_ZN14TmcDriverState6EnableEb
 361              		.size	_ZN14TmcDriverState11SetChopConfEm, .-_ZN14TmcDriverState11SetChopConfEm
 362 001e 00BF     		.section	.text._ZN14TmcDriverState10ReadStatusEv,"ax",%progbits
 363              		.align	2
 364              		.global	_ZN14TmcDriverState10ReadStatusEv
 365              		.thumb
 366              		.thumb_func
 367              		.type	_ZN14TmcDriverState10ReadStatusEv, %function
 368              	_ZN14TmcDriverState10ReadStatusEv:
 369              		@ args = 0, pretend = 0, frame = 0
 370              		@ frame_needed = 0, uses_anonymous_args = 0
 371 0000 044B     		ldr	r3, .L78
 372 0002 8168     		ldr	r1, [r0, #8]
 373 0004 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 374 0006 10B5     		push	{r4, lr}
 375 0008 0446     		mov	r4, r0
 376 000a 0BB1     		cbz	r3, .L74
 377 000c FFF7FEFF 		bl	_ZN14TmcDriverState11SpiSendWordEm.part.0
 378              	.L74:
 379 0010 207D     		ldrb	r0, [r4, #20]	@ zero_extendqisi2
 380 0012 10BD     		pop	{r4, pc}
 381              	.L79:
 382              		.align	2
 383              	.L78:
 384 0014 00000000 		.word	.LANCHOR0
 385              		.size	_ZN14TmcDriverState10ReadStatusEv, .-_ZN14TmcDriverState10ReadStatusEv
 386              		.section	.text._ZN7TMC26604InitEPKhj,"ax",%progbits
 387              		.align	2
 388              		.global	_ZN7TMC26604InitEPKhj
 389              		.thumb
 390              		.thumb_func
 391              		.type	_ZN7TMC26604InitEPKhj, %function
 392              	_ZN7TMC26604InitEPKhj:
 393              		@ args = 0, pretend = 0, frame = 0
 394              		@ frame_needed = 0, uses_anonymous_args = 0
 395 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 396 0004 324D     		ldr	r5, .L89
 397 0006 0022     		movs	r2, #0
 398 0008 2960     		str	r1, [r5]
 399 000a 0646     		mov	r6, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc60Lodi.s 			page 8


 400 000c 0421     		movs	r1, #4
 401 000e 2620     		movs	r0, #38
 402 0010 FFF7FEFF 		bl	pinModeDuet
 403 0014 2F48     		ldr	r0, .L89+4
 404 0016 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 405 001a 2F48     		ldr	r0, .L89+8
 406 001c FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 407 0020 2E48     		ldr	r0, .L89+12
 408 0022 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
 409 0026 0F20     		movs	r0, #15
 410 0028 FFF7FEFF 		bl	pmc_enable_periph_clk
 411 002c 2B68     		ldr	r3, [r5]
 412 002e 002B     		cmp	r3, #0
 413 0030 3CD0     		beq	.L81
 414 0032 0024     		movs	r4, #0
 415              	.L83:
 416 0034 305D     		ldrb	r0, [r6, r4]	@ zero_extendqisi2
 417 0036 0022     		movs	r2, #0
 418 0038 0421     		movs	r1, #4
 419 003a FFF7FEFF 		bl	pinModeDuet
 420 003e 2A68     		ldr	r2, [r5]
 421 0040 0134     		adds	r4, r4, #1
 422 0042 A242     		cmp	r2, r4
 423 0044 F6D8     		bhi	.L83
 424 0046 264B     		ldr	r3, .L89+16
 425 0048 2649     		ldr	r1, .L89+20
 426 004a 274F     		ldr	r7, .L89+24
 427 004c 4FF0FF38 		mov	r8, #-1
 428 0050 4FF0AC0C 		mov	ip, #172
 429 0054 1E25     		movs	r5, #30
 430 0056 4FF4D674 		mov	r4, #428
 431 005a 0020     		movs	r0, #0
 432 005c C3F80C80 		str	r8, [r3, #12]
 433 0060 C3F800C0 		str	ip, [r3]
 434 0064 5F60     		str	r7, [r3, #4]
 435 0066 1D62     		str	r5, [r3, #32]
 436 0068 1C60     		str	r4, [r3]
 437 006a 0870     		strb	r0, [r1]
 438 006c 6AB3     		cbz	r2, .L80
 439 006e 3046     		mov	r0, r6
 440 0070 1E4B     		ldr	r3, .L89+28
 441 0072 DFF88480 		ldr	r8, .L89+40
 442 0076 DFF884C0 		ldr	ip, .L89+44
 443 007a 1D4F     		ldr	r7, .L89+32
 444 007c 1D4E     		ldr	r6, .L89+36
 445 007e 0244     		add	r2, r2, r0
 446 0080 4FF40175 		mov	r5, #516
 447 0084 4FF42024 		mov	r4, #655360
 448              	.L87:
 449 0088 10F8011B 		ldrb	r1, [r0], #1	@ zero_extendqisi2
 450 008c 9960     		str	r1, [r3, #8]
 451 008e 9042     		cmp	r0, r2
 452 0090 43F8105C 		str	r5, [r3, #-16]
 453 0094 C3F80C80 		str	r8, [r3, #12]
 454 0098 43F80CCC 		str	ip, [r3, #-12]
 455 009c 03E99000 		stmdb	r3, {r4, r7}
 456 00a0 1E60     		str	r6, [r3]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc60Lodi.s 			page 9


 457 00a2 03F12003 		add	r3, r3, #32
 458 00a6 EFD1     		bne	.L87
 459 00a8 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 460              	.L81:
 461 00ac 0C4A     		ldr	r2, .L89+16
 462 00ae 0D49     		ldr	r1, .L89+20
 463 00b0 0D4D     		ldr	r5, .L89+24
 464 00b2 4FF0FF37 		mov	r7, #-1
 465 00b6 AC26     		movs	r6, #172
 466 00b8 1E24     		movs	r4, #30
 467 00ba 4FF4D670 		mov	r0, #428
 468 00be D760     		str	r7, [r2, #12]
 469 00c0 1660     		str	r6, [r2]
 470 00c2 5560     		str	r5, [r2, #4]
 471 00c4 1462     		str	r4, [r2, #32]
 472 00c6 1060     		str	r0, [r2]
 473 00c8 0B70     		strb	r3, [r1]
 474              	.L80:
 475 00ca BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 476              	.L90:
 477 00ce 00BF     		.align	2
 478              	.L89:
 479 00d0 00000000 		.word	.LANCHOR1
 480 00d4 68020000 		.word	g_APinDescription+616
 481 00d8 4C020000 		.word	g_APinDescription+588
 482 00dc 84020000 		.word	g_APinDescription+644
 483 00e0 00400A40 		.word	1074413568
 484 00e4 00000000 		.word	.LANCHOR0
 485 00e8 CE000500 		.word	327886
 486 00ec 10000000 		.word	.LANCHOR2+16
 487 00f0 00010C00 		.word	786688
 488 00f4 40000E00 		.word	917568
 489 00f8 B4010900 		.word	590260
 490 00fc B0010900 		.word	590256
 491              		.size	_ZN7TMC26604InitEPKhj, .-_ZN7TMC26604InitEPKhj
 492              		.section	.text._ZN7TMC266010SetCurrentEjf,"ax",%progbits
 493              		.align	2
 494              		.global	_ZN7TMC266010SetCurrentEjf
 495              		.thumb
 496              		.thumb_func
 497              		.type	_ZN7TMC266010SetCurrentEjf, %function
 498              	_ZN7TMC266010SetCurrentEjf:
 499              		@ args = 0, pretend = 0, frame = 0
 500              		@ frame_needed = 0, uses_anonymous_args = 0
 501              		@ link register save eliminated.
 502 0000 044B     		ldr	r3, .L94
 503 0002 1B68     		ldr	r3, [r3]
 504 0004 8342     		cmp	r3, r0
 505 0006 00D8     		bhi	.L93
 506 0008 7047     		bx	lr
 507              	.L93:
 508 000a 034B     		ldr	r3, .L94+4
 509 000c 03EB4010 		add	r0, r3, r0, lsl #5
 510 0010 FFF7FEBF 		b	_ZN14TmcDriverState10SetCurrentEf
 511              	.L95:
 512              		.align	2
 513              	.L94:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc60Lodi.s 			page 10


 514 0014 00000000 		.word	.LANCHOR1
 515 0018 00000000 		.word	.LANCHOR2
 516              		.size	_ZN7TMC266010SetCurrentEjf, .-_ZN7TMC266010SetCurrentEjf
 517              		.section	.text._ZN7TMC266011EnableDriveEjb,"ax",%progbits
 518              		.align	2
 519              		.global	_ZN7TMC266011EnableDriveEjb
 520              		.thumb
 521              		.thumb_func
 522              		.type	_ZN7TMC266011EnableDriveEjb, %function
 523              	_ZN7TMC266011EnableDriveEjb:
 524              		@ args = 0, pretend = 0, frame = 0
 525              		@ frame_needed = 0, uses_anonymous_args = 0
 526              		@ link register save eliminated.
 527 0000 044B     		ldr	r3, .L99
 528 0002 1B68     		ldr	r3, [r3]
 529 0004 8342     		cmp	r3, r0
 530 0006 00D8     		bhi	.L98
 531 0008 7047     		bx	lr
 532              	.L98:
 533 000a 034B     		ldr	r3, .L99+4
 534 000c 03EB4010 		add	r0, r3, r0, lsl #5
 535 0010 FFF7FEBF 		b	_ZN14TmcDriverState6EnableEb
 536              	.L100:
 537              		.align	2
 538              	.L99:
 539 0014 00000000 		.word	.LANCHOR1
 540 0018 00000000 		.word	.LANCHOR2
 541              		.size	_ZN7TMC266011EnableDriveEjb, .-_ZN7TMC266011EnableDriveEjb
 542              		.section	.text._ZN7TMC26609GetStatusEj,"ax",%progbits
 543              		.align	2
 544              		.global	_ZN7TMC26609GetStatusEj
 545              		.thumb
 546              		.thumb_func
 547              		.type	_ZN7TMC26609GetStatusEj, %function
 548              	_ZN7TMC26609GetStatusEj:
 549              		@ args = 0, pretend = 0, frame = 0
 550              		@ frame_needed = 0, uses_anonymous_args = 0
 551 0000 0A4B     		ldr	r3, .L109
 552 0002 1B68     		ldr	r3, [r3]
 553 0004 8342     		cmp	r3, r0
 554 0006 10B5     		push	{r4, lr}
 555 0008 08D9     		bls	.L104
 556 000a 094C     		ldr	r4, .L109+4
 557 000c 094B     		ldr	r3, .L109+8
 558 000e 04EB4014 		add	r4, r4, r0, lsl #5
 559 0012 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 560 0014 A168     		ldr	r1, [r4, #8]
 561 0016 1BB9     		cbnz	r3, .L108
 562 0018 207D     		ldrb	r0, [r4, #20]	@ zero_extendqisi2
 563 001a 10BD     		pop	{r4, pc}
 564              	.L104:
 565 001c 0020     		movs	r0, #0
 566 001e 10BD     		pop	{r4, pc}
 567              	.L108:
 568 0020 2046     		mov	r0, r4
 569 0022 FFF7FEFF 		bl	_ZN14TmcDriverState11SpiSendWordEm.part.0
 570 0026 207D     		ldrb	r0, [r4, #20]	@ zero_extendqisi2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc60Lodi.s 			page 11


 571 0028 10BD     		pop	{r4, pc}
 572              	.L110:
 573 002a 00BF     		.align	2
 574              	.L109:
 575 002c 00000000 		.word	.LANCHOR1
 576 0030 00000000 		.word	.LANCHOR2
 577 0034 00000000 		.word	.LANCHOR0
 578              		.size	_ZN7TMC26609GetStatusEj, .-_ZN7TMC26609GetStatusEj
 579              		.section	.text._ZN7TMC266016SetMicrosteppingEjii,"ax",%progbits
 580              		.align	2
 581              		.global	_ZN7TMC266016SetMicrosteppingEjii
 582              		.thumb
 583              		.thumb_func
 584              		.type	_ZN7TMC266016SetMicrosteppingEjii, %function
 585              	_ZN7TMC266016SetMicrosteppingEjii:
 586              		@ args = 0, pretend = 0, frame = 0
 587              		@ frame_needed = 0, uses_anonymous_args = 0
 588 0000 1C4B     		ldr	r3, .L124
 589 0002 10B5     		push	{r4, lr}
 590 0004 1C68     		ldr	r4, [r3]
 591 0006 8442     		cmp	r4, r0
 592 0008 07D9     		bls	.L121
 593 000a 40F2E733 		movw	r3, #999
 594 000e 9A42     		cmp	r2, r3
 595 0010 05D0     		beq	.L122
 596 0012 0029     		cmp	r1, #0
 597 0014 01DD     		ble	.L121
 598 0016 012A     		cmp	r2, #1
 599 0018 15D9     		bls	.L123
 600              	.L121:
 601 001a 0020     		movs	r0, #0
 602 001c 10BD     		pop	{r4, pc}
 603              	.L122:
 604 001e 0029     		cmp	r1, #0
 605 0020 FBDB     		blt	.L121
 606 0022 154A     		ldr	r2, .L124+4
 607 0024 02EB4012 		add	r2, r2, r0, lsl #5
 608 0028 C1F31003 		ubfx	r3, r1, #0, #17
 609 002c 5168     		ldr	r1, [r2, #4]
 610 002e 43F40023 		orr	r3, r3, #524288
 611 0032 11F00F01 		ands	r1, r1, #15
 612 0036 1046     		mov	r0, r2
 613 0038 18BF     		it	ne
 614 003a 0121     		movne	r1, #1
 615 003c D361     		str	r3, [r2, #28]
 616 003e FFF7FEFF 		bl	_ZN14TmcDriverState6EnableEb
 617 0042 0120     		movs	r0, #1
 618 0044 10BD     		pop	{r4, pc}
 619              	.L123:
 620 0046 0B46     		mov	r3, r1
 621 0048 FF2B     		cmp	r3, #255
 622 004a 4FF00001 		mov	r1, #0
 623 004e 04D8     		bhi	.L114
 624              	.L115:
 625 0050 5B00     		lsls	r3, r3, #1
 626 0052 FF2B     		cmp	r3, #255
 627 0054 01F10101 		add	r1, r1, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc60Lodi.s 			page 12


 628 0058 FAD9     		bls	.L115
 629              	.L114:
 630 005a B3F5807F 		cmp	r3, #256
 631 005e DCD1     		bne	.L121
 632 0060 054B     		ldr	r3, .L124+4
 633 0062 02F00102 		and	r2, r2, #1
 634 0066 03EB4010 		add	r0, r3, r0, lsl #5
 635 006a FFF7FEFF 		bl	_ZN14TmcDriverState16SetMicrosteppingEmb
 636 006e 0120     		movs	r0, #1
 637 0070 10BD     		pop	{r4, pc}
 638              	.L125:
 639 0072 00BF     		.align	2
 640              	.L124:
 641 0074 00000000 		.word	.LANCHOR1
 642 0078 00000000 		.word	.LANCHOR2
 643              		.size	_ZN7TMC266016SetMicrosteppingEjii, .-_ZN7TMC266016SetMicrosteppingEjii
 644              		.section	.text._ZN7TMC266016GetMicrosteppingEjiRb,"ax",%progbits
 645              		.align	2
 646              		.global	_ZN7TMC266016GetMicrosteppingEjiRb
 647              		.thumb
 648              		.thumb_func
 649              		.type	_ZN7TMC266016GetMicrosteppingEjiRb, %function
 650              	_ZN7TMC266016GetMicrosteppingEjiRb:
 651              		@ args = 0, pretend = 0, frame = 0
 652              		@ frame_needed = 0, uses_anonymous_args = 0
 653              		@ link register save eliminated.
 654 0000 0F4B     		ldr	r3, .L131
 655 0002 1B68     		ldr	r3, [r3]
 656 0004 8342     		cmp	r3, r0
 657 0006 70B4     		push	{r4, r5, r6}
 658 0008 11D9     		bls	.L129
 659 000a 4001     		lsls	r0, r0, #5
 660 000c 0D4B     		ldr	r3, .L131+4
 661 000e 1C58     		ldr	r4, [r3, r0]
 662 0010 40F2E735 		movw	r5, #999
 663 0014 C4F34026 		ubfx	r6, r4, #9, #1
 664 0018 A942     		cmp	r1, r5
 665 001a 1844     		add	r0, r0, r3
 666 001c 1670     		strb	r6, [r2]
 667 001e 09D0     		beq	.L130
 668 0020 04F00F04 		and	r4, r4, #15
 669 0024 4FF48070 		mov	r0, #256
 670 0028 2041     		asrs	r0, r0, r4
 671 002a 70BC     		pop	{r4, r5, r6}
 672 002c 7047     		bx	lr
 673              	.L129:
 674 002e 0120     		movs	r0, #1
 675 0030 70BC     		pop	{r4, r5, r6}
 676 0032 7047     		bx	lr
 677              	.L130:
 678 0034 C069     		ldr	r0, [r0, #28]
 679 0036 70BC     		pop	{r4, r5, r6}
 680 0038 C0F31000 		ubfx	r0, r0, #0, #17
 681 003c 7047     		bx	lr
 682              	.L132:
 683 003e 00BF     		.align	2
 684              	.L131:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc60Lodi.s 			page 13


 685 0040 00000000 		.word	.LANCHOR1
 686 0044 00000000 		.word	.LANCHOR2
 687              		.size	_ZN7TMC266016GetMicrosteppingEjiRb, .-_ZN7TMC266016GetMicrosteppingEjiRb
 688              		.section	.text._ZN7TMC266017SetDriversPoweredEb,"ax",%progbits
 689              		.align	2
 690              		.global	_ZN7TMC266017SetDriversPoweredEb
 691              		.thumb
 692              		.thumb_func
 693              		.type	_ZN7TMC266017SetDriversPoweredEb, %function
 694              	_ZN7TMC266017SetDriversPoweredEb:
 695              		@ args = 0, pretend = 0, frame = 0
 696              		@ frame_needed = 0, uses_anonymous_args = 0
 697 0000 134B     		ldr	r3, .L146
 698 0002 70B5     		push	{r4, r5, r6, lr}
 699 0004 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
 700 0006 1870     		strb	r0, [r3]
 701 0008 08B1     		cbz	r0, .L134
 702 000a 41B1     		cbz	r1, .L145
 703              	.L133:
 704 000c 70BD     		pop	{r4, r5, r6, pc}
 705              	.L134:
 706 000e 0029     		cmp	r1, #0
 707 0010 FCD0     		beq	.L133
 708 0012 2620     		movs	r0, #38
 709 0014 0121     		movs	r1, #1
 710 0016 BDE87040 		pop	{r4, r5, r6, lr}
 711 001a FFF7FEBF 		b	digitalWrite
 712              	.L145:
 713 001e 2620     		movs	r0, #38
 714 0020 FFF7FEFF 		bl	digitalWrite
 715 0024 4FF4C873 		mov	r3, #400
 716              	@ 80 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\cores\arduino/wiring.h" 1
 717              		L_808_delayMicroseconds:
 718 0028 013B     		subs   r3, #1
 719 002a 7FF4FDAF 		bne    L_808_delayMicroseconds
 720              	
 721              	@ 0 "" 2
 722              		.thumb
 723 002e 094E     		ldr	r6, .L146+4
 724 0030 3368     		ldr	r3, [r6]
 725 0032 002B     		cmp	r3, #0
 726 0034 EAD0     		beq	.L133
 727 0036 084D     		ldr	r5, .L146+8
 728 0038 0024     		movs	r4, #0
 729              	.L138:
 730 003a 2846     		mov	r0, r5
 731 003c FFF7FEFF 		bl	_ZN14TmcDriverState8WriteAllEv
 732 0040 3368     		ldr	r3, [r6]
 733 0042 0134     		adds	r4, r4, #1
 734 0044 A342     		cmp	r3, r4
 735 0046 05F12005 		add	r5, r5, #32
 736 004a F6D8     		bhi	.L138
 737 004c 70BD     		pop	{r4, r5, r6, pc}
 738              	.L147:
 739 004e 00BF     		.align	2
 740              	.L146:
 741 0050 00000000 		.word	.LANCHOR0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc60Lodi.s 			page 14


 742 0054 00000000 		.word	.LANCHOR1
 743 0058 00000000 		.word	.LANCHOR2
 744              		.size	_ZN7TMC266017SetDriversPoweredEb, .-_ZN7TMC266017SetDriversPoweredEb
 745              		.section	.bss._ZL17numTmc2660Drivers,"aw",%nobits
 746              		.align	2
 747              		.set	.LANCHOR1,. + 0
 748              		.type	_ZL17numTmc2660Drivers, %object
 749              		.size	_ZL17numTmc2660Drivers, 4
 750              	_ZL17numTmc2660Drivers:
 751 0000 00000000 		.space	4
 752              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 753              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 754              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 755              	_ZL28cpu_irq_prev_interrupt_state:
 756 0000 00       		.space	1
 757              		.section	.bss._ZL12driverStates,"aw",%nobits
 758              		.align	2
 759              		.set	.LANCHOR2,. + 0
 760              		.type	_ZL12driverStates, %object
 761              		.size	_ZL12driverStates, 320
 762              	_ZL12driverStates:
 763 0000 00000000 		.space	320
 763      00000000 
 763      00000000 
 763      00000000 
 763      00000000 
 764              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 765              		.align	2
 766              		.type	_ZL32cpu_irq_critical_section_counter, %object
 767              		.size	_ZL32cpu_irq_critical_section_counter, 4
 768              	_ZL32cpu_irq_critical_section_counter:
 769 0000 00000000 		.space	4
 770              		.section	.bss._ZL14driversPowered,"aw",%nobits
 771              		.set	.LANCHOR0,. + 0
 772              		.type	_ZL14driversPowered, %object
 773              		.size	_ZL14driversPowered, 1
 774              	_ZL14driversPowered:
 775 0000 00       		.space	1
 776              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
