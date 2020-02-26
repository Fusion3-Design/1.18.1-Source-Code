ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 1


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
  15              		.file	"RepRap.cpp"
  16              		.section	.text.hsmciIdle,"ax",%progbits
  17              		.align	2
  18              		.global	hsmciIdle
  19              		.thumb
  20              		.thumb_func
  21              		.type	hsmciIdle, %function
  22              	hsmciIdle:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 044B     		ldr	r3, .L4
  27 0002 93F83220 		ldrb	r2, [r3, #50]	@ zero_extendqisi2
  28 0006 012A     		cmp	r2, #1
  29 0008 03D0     		beq	.L1
  30 000a 5868     		ldr	r0, [r3, #4]
  31 000c 0021     		movs	r1, #0
  32 000e FFF7FEBF 		b	_ZN7Network4SpinEb
  33              	.L1:
  34 0012 7047     		bx	lr
  35              	.L5:
  36              		.align	2
  37              	.L4:
  38 0014 00000000 		.word	reprap
  39              		.size	hsmciIdle, .-hsmciIdle
  40              		.section	.text._ZNK6RepRap18GetStatusCharacterEv.part.17,"ax",%progbits
  41              		.align	2
  42              		.thumb
  43              		.thumb_func
  44              		.type	_ZNK6RepRap18GetStatusCharacterEv.part.17, %function
  45              	_ZNK6RepRap18GetStatusCharacterEv.part.17:
  46              		@ args = 0, pretend = 0, frame = 0
  47              		@ frame_needed = 0, uses_anonymous_args = 0
  48 0000 10B5     		push	{r4, lr}
  49 0002 0446     		mov	r4, r0
  50 0004 0069     		ldr	r0, [r0, #16]
  51 0006 90F85D33 		ldrb	r3, [r0, #861]	@ zero_extendqisi2
  52 000a 23B9     		cbnz	r3, .L8
  53 000c 94F84230 		ldrb	r3, [r4, #66]	@ zero_extendqisi2
  54 0010 1BB1     		cbz	r3, .L18
  55 0012 4820     		movs	r0, #72
  56 0014 10BD     		pop	{r4, pc}
  57              	.L8:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 2


  58 0016 4620     		movs	r0, #70
  59 0018 10BD     		pop	{r4, pc}
  60              	.L18:
  61 001a FFF7FEFF 		bl	_ZNK6GCodes9IsPausingEv
  62 001e 08B1     		cbz	r0, .L19
  63 0020 4420     		movs	r0, #68
  64 0022 10BD     		pop	{r4, pc}
  65              	.L19:
  66 0024 2069     		ldr	r0, [r4, #16]
  67 0026 FFF7FEFF 		bl	_ZNK6GCodes10IsResumingEv
  68 002a 28B9     		cbnz	r0, .L11
  69 002c 2069     		ldr	r0, [r4, #16]
  70 002e 90F8A330 		ldrb	r3, [r0, #163]	@ zero_extendqisi2
  71 0032 1BB1     		cbz	r3, .L20
  72 0034 5420     		movs	r0, #84
  73 0036 10BD     		pop	{r4, pc}
  74              	.L11:
  75 0038 5220     		movs	r0, #82
  76 003a 10BD     		pop	{r4, pc}
  77              	.L20:
  78 003c FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
  79 0040 20B9     		cbnz	r0, .L13
  80 0042 E369     		ldr	r3, [r4, #28]
  81 0044 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
  82 0046 1BB1     		cbz	r3, .L21
  83 0048 5020     		movs	r0, #80
  84 004a 10BD     		pop	{r4, pc}
  85              	.L13:
  86 004c 5320     		movs	r0, #83
  87 004e 10BD     		pop	{r4, pc}
  88              	.L21:
  89 0050 2069     		ldr	r0, [r4, #16]
  90 0052 FFF7FEFF 		bl	_ZNK6GCodes14DoingFileMacroEv
  91 0056 20B9     		cbnz	r0, .L16
  92 0058 A368     		ldr	r3, [r4, #8]
  93 005a 9968     		ldr	r1, [r3, #8]
  94 005c 5A68     		ldr	r2, [r3, #4]
  95 005e 9142     		cmp	r1, r2
  96 0060 01D0     		beq	.L22
  97              	.L16:
  98 0062 4220     		movs	r0, #66
  99 0064 10BD     		pop	{r4, pc}
 100              	.L22:
 101 0066 1B68     		ldr	r3, [r3]
 102 0068 002B     		cmp	r3, #0
 103 006a 0CBF     		ite	eq
 104 006c 4920     		moveq	r0, #73
 105 006e 4220     		movne	r0, #66
 106 0070 10BD     		pop	{r4, pc}
 107              		.size	_ZNK6RepRap18GetStatusCharacterEv.part.17, .-_ZNK6RepRap18GetStatusCharacterEv.part.17
 108 0072 00BF     		.section	.text._ZN6RepRap4ExitEv,"ax",%progbits
 109              		.align	2
 110              		.global	_ZN6RepRap4ExitEv
 111              		.thumb
 112              		.thumb_func
 113              		.type	_ZN6RepRap4ExitEv, %function
 114              	_ZN6RepRap4ExitEv:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 3


 115              		@ args = 0, pretend = 0, frame = 0
 116              		@ frame_needed = 0, uses_anonymous_args = 0
 117 0000 10B5     		push	{r4, lr}
 118 0002 0023     		movs	r3, #0
 119 0004 0446     		mov	r4, r0
 120 0006 80F84330 		strb	r3, [r0, #67]
 121 000a C068     		ldr	r0, [r0, #12]
 122 000c FFF7FEFF 		bl	_ZN4Heat4ExitEv
 123 0010 A068     		ldr	r0, [r4, #8]
 124 0012 FFF7FEFF 		bl	_ZN4Move4ExitEv
 125 0016 2069     		ldr	r0, [r4, #16]
 126 0018 FFF7FEFF 		bl	_ZN6GCodes4ExitEv
 127 001c 6069     		ldr	r0, [r4, #20]
 128 001e FFF7FEFF 		bl	_ZN9Webserver4ExitEv
 129 0022 6068     		ldr	r0, [r4, #4]
 130 0024 FFF7FEFF 		bl	_ZN7Network4ExitEv
 131 0028 2068     		ldr	r0, [r4]
 132 002a 044A     		ldr	r2, .L24
 133 002c 0621     		movs	r1, #6
 134 002e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 135 0032 2068     		ldr	r0, [r4]
 136 0034 BDE81040 		pop	{r4, lr}
 137 0038 FFF7FEBF 		b	_ZN8Platform4ExitEv
 138              	.L25:
 139              		.align	2
 140              	.L24:
 141 003c 00000000 		.word	.LC0
 142              		.size	_ZN6RepRap4ExitEv, .-_ZN6RepRap4ExitEv
 143              		.section	.text._ZN6RepRap4SpinEv,"ax",%progbits
 144              		.align	2
 145              		.global	_ZN6RepRap4SpinEv
 146              		.thumb
 147              		.thumb_func
 148              		.type	_ZN6RepRap4SpinEv, %function
 149              	_ZN6RepRap4SpinEv:
 150              		@ args = 0, pretend = 0, frame = 0
 151              		@ frame_needed = 0, uses_anonymous_args = 0
 152 0000 90F84330 		ldrb	r3, [r0, #67]	@ zero_extendqisi2
 153 0004 70B5     		push	{r4, r5, r6, lr}
 154 0006 0446     		mov	r4, r0
 155 0008 03B9     		cbnz	r3, .L49
 156 000a 70BD     		pop	{r4, r5, r6, pc}
 157              	.L49:
 158 000c 0025     		movs	r5, #0
 159 000e 80F83250 		strb	r5, [r0, #50]
 160 0012 0586     		strh	r5, [r0, #48]	@ movhi
 161 0014 0068     		ldr	r0, [r0]
 162 0016 FFF7FEFF 		bl	_ZN8Platform4SpinEv
 163 001a 0121     		movs	r1, #1
 164 001c 84F83210 		strb	r1, [r4, #50]
 165 0020 6068     		ldr	r0, [r4, #4]
 166 0022 2586     		strh	r5, [r4, #48]	@ movhi
 167 0024 FFF7FEFF 		bl	_ZN7Network4SpinEb
 168 0028 0223     		movs	r3, #2
 169 002a 84F83230 		strb	r3, [r4, #50]
 170 002e 6069     		ldr	r0, [r4, #20]
 171 0030 2586     		strh	r5, [r4, #48]	@ movhi
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 4


 172 0032 FFF7FEFF 		bl	_ZN9Webserver4SpinEv
 173 0036 0323     		movs	r3, #3
 174 0038 84F83230 		strb	r3, [r4, #50]
 175 003c 2069     		ldr	r0, [r4, #16]
 176 003e 2586     		strh	r5, [r4, #48]	@ movhi
 177 0040 FFF7FEFF 		bl	_ZN6GCodes4SpinEv
 178 0044 0423     		movs	r3, #4
 179 0046 84F83230 		strb	r3, [r4, #50]
 180 004a A068     		ldr	r0, [r4, #8]
 181 004c 2586     		strh	r5, [r4, #48]	@ movhi
 182 004e FFF7FEFF 		bl	_ZN4Move4SpinEv
 183 0052 0523     		movs	r3, #5
 184 0054 84F83230 		strb	r3, [r4, #50]
 185 0058 E068     		ldr	r0, [r4, #12]
 186 005a 2586     		strh	r5, [r4, #48]	@ movhi
 187 005c FFF7FEFF 		bl	_ZN4Heat4SpinEv
 188 0060 0823     		movs	r3, #8
 189 0062 84F83230 		strb	r3, [r4, #50]
 190 0066 E069     		ldr	r0, [r4, #28]
 191 0068 2586     		strh	r5, [r4, #48]	@ movhi
 192 006a FFF7FEFF 		bl	_ZN12PrintMonitor4SpinEv
 193 006e 0F23     		movs	r3, #15
 194 0070 84F83230 		strb	r3, [r4, #50]
 195 0074 2586     		strh	r5, [r4, #48]	@ movhi
 196 0076 FFF7FEFF 		bl	millis
 197 007a A36A     		ldr	r3, [r4, #40]
 198 007c C31A     		subs	r3, r0, r3
 199 007e B3F57A6F 		cmp	r3, #4000
 200 0082 0646     		mov	r6, r0
 201 0084 15D3     		bcc	.L31
 202 0086 256A     		ldr	r5, [r4, #32]
 203 0088 1DB9     		cbnz	r5, .L33
 204 008a 12E0     		b	.L31
 205              	.L32:
 206 008c D5F8C850 		ldr	r5, [r5, #200]
 207 0090 7DB1     		cbz	r5, .L31
 208              	.L33:
 209 0092 2846     		mov	r0, r5
 210 0094 FFF7FEFF 		bl	_ZN4Tool25DisplayColdExtrudeWarningEv
 211 0098 0028     		cmp	r0, #0
 212 009a F7D0     		beq	.L32
 213 009c 6B68     		ldr	r3, [r5, #4]
 214 009e 2068     		ldr	r0, [r4]
 215 00a0 134A     		ldr	r2, .L50
 216 00a2 0621     		movs	r1, #6
 217 00a4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 218 00a8 D5F8C850 		ldr	r5, [r5, #200]
 219 00ac A662     		str	r6, [r4, #40]
 220 00ae 002D     		cmp	r5, #0
 221 00b0 EFD1     		bne	.L33
 222              	.L31:
 223 00b2 2068     		ldr	r0, [r4]
 224 00b4 FFF7FEFF 		bl	_ZN8Platform4TimeEv
 225 00b8 D4ED0F7A 		flds	s15, [r4, #60]
 226 00bc D4ED0D6A 		flds	s13, [r4, #52]
 227 00c0 07EE100A 		fmsr	s14, r0
 228 00c4 77EE677A 		fsubs	s15, s14, s15
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 5


 229 00c8 F4EEE67A 		fcmpes	s15, s13
 230 00cc F1EE10FA 		fmstat
 231 00d0 01D5     		bpl	.L30
 232 00d2 C4ED0D7A 		fsts	s15, [r4, #52]
 233              	.L30:
 234 00d6 D4ED0E6A 		flds	s13, [r4, #56]
 235 00da 84ED0F7A 		fsts	s14, [r4, #60]
 236 00de F4EEE67A 		fcmpes	s15, s13
 237 00e2 F1EE10FA 		fmstat
 238 00e6 C8BF     		it	gt
 239 00e8 C4ED0E7A 		fstsgt	s15, [r4, #56]
 240 00ec 70BD     		pop	{r4, r5, r6, pc}
 241              	.L51:
 242 00ee 00BF     		.align	2
 243              	.L50:
 244 00f0 18000000 		.word	.LC1
 245              		.size	_ZN6RepRap4SpinEv, .-_ZN6RepRap4SpinEv
 246              		.section	.text._ZN6RepRap4InitEv,"ax",%progbits
 247              		.align	2
 248              		.global	_ZN6RepRap4InitEv
 249              		.thumb
 250              		.thumb_func
 251              		.type	_ZN6RepRap4InitEv, %function
 252              	_ZN6RepRap4InitEv:
 253              		@ args = 0, pretend = 0, frame = 0
 254              		@ frame_needed = 0, uses_anonymous_args = 0
 255 0000 10B5     		push	{r4, lr}
 256 0002 0446     		mov	r4, r0
 257 0004 82B0     		sub	sp, sp, #8
 258 0006 0068     		ldr	r0, [r0]
 259 0008 FFF7FEFF 		bl	_ZN8Platform4InitEv
 260 000c 2069     		ldr	r0, [r4, #16]
 261 000e FFF7FEFF 		bl	_ZN6GCodes4InitEv
 262 0012 6068     		ldr	r0, [r4, #4]
 263 0014 FFF7FEFF 		bl	_ZN7Network4InitEv
 264 0018 6069     		ldr	r0, [r4, #20]
 265 001a FFF7FEFF 		bl	_ZN9Webserver4InitEv
 266 001e A068     		ldr	r0, [r4, #8]
 267 0020 FFF7FEFF 		bl	_ZN4Move4InitEv
 268 0024 E068     		ldr	r0, [r4, #12]
 269 0026 FFF7FEFF 		bl	_ZN4Heat4InitEv
 270 002a E069     		ldr	r0, [r4, #28]
 271 002c FFF7FEFF 		bl	_ZN12PrintMonitor4InitEv
 272 0030 4FF47A70 		mov	r0, #1000
 273 0034 FFF7FEFF 		bl	_Z14watchdogEnablem
 274 0038 334A     		ldr	r2, .L61
 275 003a 2068     		ldr	r0, [r4]
 276 003c 334B     		ldr	r3, .L61+4
 277 003e 0092     		str	r2, [sp]
 278 0040 0122     		movs	r2, #1
 279 0042 84F84320 		strb	r2, [r4, #67]
 280 0046 0221     		movs	r1, #2
 281 0048 0193     		str	r3, [sp, #4]
 282 004a 314A     		ldr	r2, .L61+8
 283 004c 314B     		ldr	r3, .L61+12
 284 004e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 285 0052 2068     		ldr	r0, [r4]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 6


 286 0054 304A     		ldr	r2, .L61+16
 287 0056 0221     		movs	r1, #2
 288 0058 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 289 005c 2368     		ldr	r3, [r4]
 290 005e 2F49     		ldr	r1, .L61+20
 291 0060 D3F83C08 		ldr	r0, [r3, #2108]
 292 0064 2E4A     		ldr	r2, .L61+24
 293 0066 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
 294 006a 0028     		cmp	r0, #0
 295 006c 3AD0     		beq	.L53
 296 006e 2068     		ldr	r0, [r4]
 297 0070 2C4A     		ldr	r2, .L61+28
 298 0072 2B4B     		ldr	r3, .L61+24
 299 0074 0221     		movs	r1, #2
 300 0076 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 301 007a 2949     		ldr	r1, .L61+24
 302 007c 2069     		ldr	r0, [r4, #16]
 303 007e FFF7FEFF 		bl	_ZN6GCodes13RunConfigFileEPKc
 304 0082 18B9     		cbnz	r0, .L56
 305 0084 3AE0     		b	.L60
 306              	.L57:
 307 0086 2046     		mov	r0, r4
 308 0088 FFF7FEFF 		bl	_ZN6RepRap4SpinEv
 309              	.L56:
 310 008c 2069     		ldr	r0, [r4, #16]
 311 008e FFF7FEFF 		bl	_ZNK6GCodes12IsDaemonBusyEv
 312 0092 0028     		cmp	r0, #0
 313 0094 F7D1     		bne	.L57
 314 0096 2068     		ldr	r0, [r4]
 315 0098 234A     		ldr	r2, .L61+32
 316 009a 0221     		movs	r1, #2
 317 009c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 318              	.L58:
 319 00a0 0023     		movs	r3, #0
 320 00a2 6068     		ldr	r0, [r4, #4]
 321 00a4 84F84530 		strb	r3, [r4, #69]
 322 00a8 FFF7FEFF 		bl	_ZN7Network8ActivateEv
 323 00ac 6068     		ldr	r0, [r4, #4]
 324 00ae FFF7FEFF 		bl	_ZNK7Network9IsEnabledEv
 325 00b2 20B9     		cbnz	r0, .L59
 326 00b4 2068     		ldr	r0, [r4]
 327 00b6 1D4A     		ldr	r2, .L61+36
 328 00b8 0221     		movs	r1, #2
 329 00ba FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 330              	.L59:
 331 00be 1C48     		ldr	r0, .L61+40
 332 00c0 FFF7FEFF 		bl	hsmci_set_idle_func
 333 00c4 2068     		ldr	r0, [r4]
 334 00c6 1B4A     		ldr	r2, .L61+44
 335 00c8 124B     		ldr	r3, .L61+12
 336 00ca 0221     		movs	r1, #2
 337 00cc FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 338 00d0 194A     		ldr	r2, .L61+48
 339 00d2 6263     		str	r2, [r4, #52]	@ float
 340 00d4 0023     		movs	r3, #0
 341 00d6 A363     		str	r3, [r4, #56]	@ float
 342 00d8 2068     		ldr	r0, [r4]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 7


 343 00da FFF7FEFF 		bl	_ZN8Platform4TimeEv
 344 00de E063     		str	r0, [r4, #60]	@ float
 345 00e0 02B0     		add	sp, sp, #8
 346              		@ sp needed
 347 00e2 10BD     		pop	{r4, pc}
 348              	.L53:
 349 00e4 2068     		ldr	r0, [r4]
 350 00e6 154A     		ldr	r2, .L61+52
 351 00e8 154B     		ldr	r3, .L61+56
 352 00ea 0221     		movs	r1, #2
 353 00ec FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 354 00f0 1349     		ldr	r1, .L61+56
 355 00f2 2069     		ldr	r0, [r4, #16]
 356 00f4 FFF7FEFF 		bl	_ZN6GCodes13RunConfigFileEPKc
 357 00f8 0028     		cmp	r0, #0
 358 00fa C7D1     		bne	.L56
 359              	.L60:
 360 00fc 2068     		ldr	r0, [r4]
 361 00fe 114A     		ldr	r2, .L61+60
 362 0100 0221     		movs	r1, #2
 363 0102 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 364 0106 CBE7     		b	.L58
 365              	.L62:
 366              		.align	2
 367              	.L61:
 368 0108 DC000000 		.word	.LC6
 369 010c F4000000 		.word	.LC7
 370 0110 A0000000 		.word	.LC4
 371 0114 B8000000 		.word	.LC5
 372 0118 00010000 		.word	.LC8
 373 011c 0C010000 		.word	.LC9
 374 0120 88000000 		.word	.LC2
 375 0124 14010000 		.word	.LC10
 376 0128 40010000 		.word	.LC12
 377 012c 5C010000 		.word	.LC14
 378 0130 00000000 		.word	hsmciIdle
 379 0134 70010000 		.word	.LC15
 380 0138 FFFF7F7F 		.word	2139095039
 381 013c 1C010000 		.word	.LC11
 382 0140 94000000 		.word	.LC3
 383 0144 48010000 		.word	.LC13
 384              		.size	_ZN6RepRap4InitEv, .-_ZN6RepRap4InitEv
 385              		.global	__aeabi_f2d
 386              		.section	.text._ZN6RepRap6TimingE11MessageType,"ax",%progbits
 387              		.align	2
 388              		.global	_ZN6RepRap6TimingE11MessageType
 389              		.thumb
 390              		.thumb_func
 391              		.type	_ZN6RepRap6TimingE11MessageType, %function
 392              	_ZN6RepRap6TimingE11MessageType:
 393              		@ args = 0, pretend = 0, frame = 0
 394              		@ frame_needed = 0, uses_anonymous_args = 0
 395 0000 70B5     		push	{r4, r5, r6, lr}
 396 0002 0446     		mov	r4, r0
 397 0004 84B0     		sub	sp, sp, #16
 398 0006 806B     		ldr	r0, [r0, #56]	@ float
 399 0008 2568     		ldr	r5, [r4]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 8


 400 000a 0E46     		mov	r6, r1
 401 000c FFF7FEFF 		bl	__aeabi_f2d
 402 0010 CDE90001 		strd	r0, [sp]
 403 0014 606B     		ldr	r0, [r4, #52]	@ float
 404 0016 FFF7FEFF 		bl	__aeabi_f2d
 405 001a 064A     		ldr	r2, .L64
 406 001c CDE90201 		strd	r0, [sp, #8]
 407 0020 3146     		mov	r1, r6
 408 0022 2846     		mov	r0, r5
 409 0024 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 410 0028 034A     		ldr	r2, .L64+4
 411 002a 6263     		str	r2, [r4, #52]	@ float
 412 002c 0023     		movs	r3, #0
 413 002e A363     		str	r3, [r4, #56]	@ float
 414 0030 04B0     		add	sp, sp, #16
 415              		@ sp needed
 416 0032 70BD     		pop	{r4, r5, r6, pc}
 417              	.L65:
 418              		.align	2
 419              	.L64:
 420 0034 88010000 		.word	.LC16
 421 0038 FFFF7F7F 		.word	2139095039
 422              		.size	_ZN6RepRap6TimingE11MessageType, .-_ZN6RepRap6TimingE11MessageType
 423              		.section	.text._ZN6RepRap11DiagnosticsE11MessageType,"ax",%progbits
 424              		.align	2
 425              		.global	_ZN6RepRap11DiagnosticsE11MessageType
 426              		.thumb
 427              		.thumb_func
 428              		.type	_ZN6RepRap11DiagnosticsE11MessageType, %function
 429              	_ZN6RepRap11DiagnosticsE11MessageType:
 430              		@ args = 0, pretend = 0, frame = 0
 431              		@ frame_needed = 0, uses_anonymous_args = 0
 432 0000 38B5     		push	{r3, r4, r5, lr}
 433 0002 114A     		ldr	r2, .L67
 434 0004 0C46     		mov	r4, r1
 435 0006 0546     		mov	r5, r0
 436 0008 0068     		ldr	r0, [r0]
 437 000a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 438 000e 2046     		mov	r0, r4
 439 0010 FFF7FEFF 		bl	_ZN12OutputBuffer11DiagnosticsE11MessageType
 440 0014 2868     		ldr	r0, [r5]
 441 0016 2146     		mov	r1, r4
 442 0018 FFF7FEFF 		bl	_ZN8Platform11DiagnosticsE11MessageType
 443 001c A868     		ldr	r0, [r5, #8]
 444 001e 2146     		mov	r1, r4
 445 0020 FFF7FEFF 		bl	_ZN4Move11DiagnosticsE11MessageType
 446 0024 E868     		ldr	r0, [r5, #12]
 447 0026 2146     		mov	r1, r4
 448 0028 FFF7FEFF 		bl	_ZN4Heat11DiagnosticsE11MessageType
 449 002c 2869     		ldr	r0, [r5, #16]
 450 002e 2146     		mov	r1, r4
 451 0030 FFF7FEFF 		bl	_ZN6GCodes11DiagnosticsE11MessageType
 452 0034 6868     		ldr	r0, [r5, #4]
 453 0036 2146     		mov	r1, r4
 454 0038 FFF7FEFF 		bl	_ZN7Network11DiagnosticsE11MessageType
 455 003c 6869     		ldr	r0, [r5, #20]
 456 003e 2146     		mov	r1, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 9


 457 0040 BDE83840 		pop	{r3, r4, r5, lr}
 458 0044 FFF7FEBF 		b	_ZN9Webserver11DiagnosticsE11MessageType
 459              	.L68:
 460              		.align	2
 461              	.L67:
 462 0048 B8010000 		.word	.LC17
 463              		.size	_ZN6RepRap11DiagnosticsE11MessageType, .-_ZN6RepRap11DiagnosticsE11MessageType
 464              		.section	.text._ZN6RepRap13EmergencyStopEv,"ax",%progbits
 465              		.align	2
 466              		.global	_ZN6RepRap13EmergencyStopEv
 467              		.thumb
 468              		.thumb_func
 469              		.type	_ZN6RepRap13EmergencyStopEv, %function
 470              	_ZN6RepRap13EmergencyStopEv:
 471              		@ args = 0, pretend = 0, frame = 0
 472              		@ frame_needed = 0, uses_anonymous_args = 0
 473 0000 70B5     		push	{r4, r5, r6, lr}
 474 0002 046A     		ldr	r4, [r0, #32]
 475 0004 0123     		movs	r3, #1
 476 0006 0546     		mov	r5, r0
 477 0008 80F84230 		strb	r3, [r0, #66]
 478 000c 34B1     		cbz	r4, .L72
 479              	.L73:
 480 000e 2046     		mov	r0, r4
 481 0010 FFF7FEFF 		bl	_ZN4Tool7StandbyEv
 482 0014 D4F8C840 		ldr	r4, [r4, #200]
 483 0018 002C     		cmp	r4, #0
 484 001a F8D1     		bne	.L73
 485              	.L72:
 486 001c E868     		ldr	r0, [r5, #12]
 487 001e FFF7FEFF 		bl	_ZN4Heat4ExitEv
 488 0022 0024     		movs	r4, #0
 489              	.L71:
 490 0024 2146     		mov	r1, r4
 491 0026 2868     		ldr	r0, [r5]
 492 0028 0022     		movs	r2, #0
 493 002a 0134     		adds	r4, r4, #1
 494 002c FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjf
 495 0030 082C     		cmp	r4, #8
 496 0032 F7D1     		bne	.L71
 497 0034 0226     		movs	r6, #2
 498              	.L78:
 499 0036 A868     		ldr	r0, [r5, #8]
 500 0038 FFF7FEFF 		bl	_ZN4Move4ExitEv
 501 003c 0024     		movs	r4, #0
 502              	.L76:
 503 003e 2146     		mov	r1, r4
 504 0040 2868     		ldr	r0, [r5]
 505 0042 0022     		movs	r2, #0
 506 0044 0023     		movs	r3, #0
 507 0046 FFF7FEFF 		bl	_ZN8Platform15SetMotorCurrentEjfb
 508 004a 2146     		mov	r1, r4
 509 004c 2868     		ldr	r0, [r5]
 510 004e 0134     		adds	r4, r4, #1
 511 0050 FFF7FEFF 		bl	_ZN8Platform12DisableDriveEj
 512 0054 0A2C     		cmp	r4, #10
 513 0056 F2D1     		bne	.L76
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 10


 514 0058 013E     		subs	r6, r6, #1
 515 005a ECD1     		bne	.L78
 516 005c 70BD     		pop	{r4, r5, r6, pc}
 517              		.size	_ZN6RepRap13EmergencyStopEv, .-_ZN6RepRap13EmergencyStopEv
 518 005e 00BF     		.section	.text._ZN6RepRap8SetDebugEb,"ax",%progbits
 519              		.align	2
 520              		.global	_ZN6RepRap8SetDebugEb
 521              		.thumb
 522              		.thumb_func
 523              		.type	_ZN6RepRap8SetDebugEb, %function
 524              	_ZN6RepRap8SetDebugEb:
 525              		@ args = 0, pretend = 0, frame = 0
 526              		@ frame_needed = 0, uses_anonymous_args = 0
 527              		@ link register save eliminated.
 528 0000 4942     		negs	r1, r1
 529 0002 A0F84010 		strh	r1, [r0, #64]	@ movhi
 530 0006 7047     		bx	lr
 531              		.size	_ZN6RepRap8SetDebugEb, .-_ZN6RepRap8SetDebugEb
 532              		.section	.text._ZN6RepRap10PrintDebugEv,"ax",%progbits
 533              		.align	2
 534              		.global	_ZN6RepRap10PrintDebugEv
 535              		.thumb
 536              		.thumb_func
 537              		.type	_ZN6RepRap10PrintDebugEv, %function
 538              	_ZN6RepRap10PrintDebugEv:
 539              		@ args = 0, pretend = 0, frame = 0
 540              		@ frame_needed = 0, uses_anonymous_args = 0
 541 0000 70B5     		push	{r4, r5, r6, lr}
 542 0002 B0F84030 		ldrh	r3, [r0, #64]
 543 0006 0546     		mov	r5, r0
 544 0008 82B0     		sub	sp, sp, #8
 545 000a 0068     		ldr	r0, [r0]
 546 000c 002B     		cmp	r3, #0
 547 000e 3CD0     		beq	.L84
 548 0010 214A     		ldr	r2, .L97
 549 0012 224E     		ldr	r6, .L97+4
 550 0014 0621     		movs	r1, #6
 551 0016 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 552 001a 0024     		movs	r4, #0
 553 001c 02E0     		b	.L87
 554              	.L85:
 555 001e 0134     		adds	r4, r4, #1
 556 0020 0A2C     		cmp	r4, #10
 557 0022 0FD0     		beq	.L95
 558              	.L87:
 559 0024 B5F84030 		ldrh	r3, [r5, #64]
 560 0028 2341     		asrs	r3, r3, r4
 561 002a DA07     		lsls	r2, r3, #31
 562 002c F7D5     		bpl	.L85
 563 002e 2868     		ldr	r0, [r5]
 564 0030 56F82430 		ldr	r3, [r6, r4, lsl #2]
 565 0034 0094     		str	r4, [sp]
 566 0036 0621     		movs	r1, #6
 567 0038 194A     		ldr	r2, .L97+8
 568 003a 0134     		adds	r4, r4, #1
 569 003c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 570 0040 0A2C     		cmp	r4, #10
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 11


 571 0042 EFD1     		bne	.L87
 572              	.L95:
 573 0044 2868     		ldr	r0, [r5]
 574 0046 174A     		ldr	r2, .L97+12
 575 0048 144E     		ldr	r6, .L97+4
 576 004a 0621     		movs	r1, #6
 577 004c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 578 0050 0024     		movs	r4, #0
 579 0052 02E0     		b	.L90
 580              	.L88:
 581 0054 0134     		adds	r4, r4, #1
 582 0056 0A2C     		cmp	r4, #10
 583 0058 0FD0     		beq	.L96
 584              	.L90:
 585 005a B5F84030 		ldrh	r3, [r5, #64]
 586 005e 2341     		asrs	r3, r3, r4
 587 0060 DB07     		lsls	r3, r3, #31
 588 0062 F7D4     		bmi	.L88
 589 0064 2868     		ldr	r0, [r5]
 590 0066 56F82430 		ldr	r3, [r6, r4, lsl #2]
 591 006a 0094     		str	r4, [sp]
 592 006c 0621     		movs	r1, #6
 593 006e 0C4A     		ldr	r2, .L97+8
 594 0070 0134     		adds	r4, r4, #1
 595 0072 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 596 0076 0A2C     		cmp	r4, #10
 597 0078 EFD1     		bne	.L90
 598              	.L96:
 599 007a 2868     		ldr	r0, [r5]
 600 007c 0A4A     		ldr	r2, .L97+16
 601 007e 0621     		movs	r1, #6
 602 0080 02B0     		add	sp, sp, #8
 603              		@ sp needed
 604 0082 BDE87040 		pop	{r4, r5, r6, lr}
 605 0086 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 606              	.L84:
 607 008a 084A     		ldr	r2, .L97+20
 608 008c 0621     		movs	r1, #6
 609 008e 02B0     		add	sp, sp, #8
 610              		@ sp needed
 611 0090 BDE87040 		pop	{r4, r5, r6, lr}
 612 0094 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 613              	.L98:
 614              		.align	2
 615              	.L97:
 616 0098 D0010000 		.word	.LC18
 617 009c 00000000 		.word	moduleName
 618 00a0 F0010000 		.word	.LC19
 619 00a4 F8010000 		.word	.LC20
 620 00a8 1C020000 		.word	.LC21
 621 00ac 20020000 		.word	.LC22
 622              		.size	_ZN6RepRap10PrintDebugEv, .-_ZN6RepRap10PrintDebugEv
 623              		.section	.text._ZN6RepRap8SetDebugE6Moduleb,"ax",%progbits
 624              		.align	2
 625              		.global	_ZN6RepRap8SetDebugE6Moduleb
 626              		.thumb
 627              		.thumb_func
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 12


 628              		.type	_ZN6RepRap8SetDebugE6Moduleb, %function
 629              	_ZN6RepRap8SetDebugE6Moduleb:
 630              		@ args = 0, pretend = 0, frame = 0
 631              		@ frame_needed = 0, uses_anonymous_args = 0
 632              		@ link register save eliminated.
 633 0000 52B9     		cbnz	r2, .L102
 634 0002 B0F84030 		ldrh	r3, [r0, #64]
 635 0006 0122     		movs	r2, #1
 636 0008 02FA01F1 		lsl	r1, r2, r1
 637 000c 23EA0101 		bic	r1, r3, r1
 638 0010 A0F84010 		strh	r1, [r0, #64]	@ movhi
 639 0014 FFF7FEBF 		b	_ZN6RepRap10PrintDebugEv
 640              	.L102:
 641 0018 B0F84030 		ldrh	r3, [r0, #64]
 642 001c 0122     		movs	r2, #1
 643 001e 02FA01F1 		lsl	r1, r2, r1
 644 0022 1943     		orrs	r1, r1, r3
 645 0024 A0F84010 		strh	r1, [r0, #64]	@ movhi
 646 0028 FFF7FEBF 		b	_ZN6RepRap10PrintDebugEv
 647              		.size	_ZN6RepRap8SetDebugE6Moduleb, .-_ZN6RepRap8SetDebugE6Moduleb
 648              		.section	.text._ZN6RepRap7AddToolEP4Tool,"ax",%progbits
 649              		.align	2
 650              		.global	_ZN6RepRap7AddToolEP4Tool
 651              		.thumb
 652              		.thumb_func
 653              		.type	_ZN6RepRap7AddToolEP4Tool, %function
 654              	_ZN6RepRap7AddToolEP4Tool:
 655              		@ args = 0, pretend = 0, frame = 0
 656              		@ frame_needed = 0, uses_anonymous_args = 0
 657 0000 38B5     		push	{r3, r4, r5, lr}
 658 0002 036A     		ldr	r3, [r0, #32]
 659 0004 0446     		mov	r4, r0
 660 0006 00F12005 		add	r5, r0, #32
 661 000a 5BB1     		cbz	r3, .L104
 662 000c 4868     		ldr	r0, [r1, #4]
 663 000e 5A68     		ldr	r2, [r3, #4]
 664 0010 8242     		cmp	r2, r0
 665 0012 07DA     		bge	.L104
 666              	.L106:
 667 0014 03F1C805 		add	r5, r3, #200
 668 0018 D3F8C830 		ldr	r3, [r3, #200]
 669 001c 13B1     		cbz	r3, .L104
 670 001e 5A68     		ldr	r2, [r3, #4]
 671 0020 8242     		cmp	r2, r0
 672 0022 F7DB     		blt	.L106
 673              	.L104:
 674 0024 C1F8C830 		str	r3, [r1, #200]
 675 0028 0846     		mov	r0, r1
 676 002a 2960     		str	r1, [r5]
 677 002c 04F12E02 		add	r2, r4, #46
 678 0030 04F12C01 		add	r1, r4, #44
 679 0034 FFF7FEFF 		bl	_ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_
 680 0038 2068     		ldr	r0, [r4]
 681 003a BDE83840 		pop	{r3, r4, r5, lr}
 682 003e FFF7FEBF 		b	_ZN8Platform23UpdateConfiguredHeatersEv
 683              		.size	_ZN6RepRap7AddToolEP4Tool, .-_ZN6RepRap7AddToolEP4Tool
 684 0042 00BF     		.section	.text._ZNK6RepRap9PrintToolEiR9StringRef,"ax",%progbits
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 13


 685              		.align	2
 686              		.global	_ZNK6RepRap9PrintToolEiR9StringRef
 687              		.thumb
 688              		.thumb_func
 689              		.type	_ZNK6RepRap9PrintToolEiR9StringRef, %function
 690              	_ZNK6RepRap9PrintToolEiR9StringRef:
 691              		@ args = 0, pretend = 0, frame = 0
 692              		@ frame_needed = 0, uses_anonymous_args = 0
 693              		@ link register save eliminated.
 694 0000 006A     		ldr	r0, [r0, #32]
 695 0002 10B4     		push	{r4}
 696 0004 50B1     		cbz	r0, .L112
 697 0006 4368     		ldr	r3, [r0, #4]
 698 0008 9942     		cmp	r1, r3
 699 000a 03D1     		bne	.L114
 700 000c 0CE0     		b	.L113
 701              	.L115:
 702 000e 4468     		ldr	r4, [r0, #4]
 703 0010 A142     		cmp	r1, r4
 704 0012 09D0     		beq	.L113
 705              	.L114:
 706 0014 D0F8C800 		ldr	r0, [r0, #200]
 707 0018 0028     		cmp	r0, #0
 708 001a F8D1     		bne	.L115
 709              	.L112:
 710 001c 1046     		mov	r0, r2
 711 001e 0549     		ldr	r1, .L119
 712 0020 5DF8044B 		ldr	r4, [sp], #4
 713 0024 FFF7FEBF 		b	_ZN9StringRef4copyEPKc
 714              	.L113:
 715 0028 1146     		mov	r1, r2
 716 002a 5DF8044B 		ldr	r4, [sp], #4
 717 002e FFF7FEBF 		b	_ZN4Tool5PrintER9StringRef
 718              	.L120:
 719 0032 00BF     		.align	2
 720              	.L119:
 721 0034 34020000 		.word	.LC23
 722              		.size	_ZNK6RepRap9PrintToolEiR9StringRef, .-_ZNK6RepRap9PrintToolEiR9StringRef
 723              		.section	.text._ZN6RepRap11StandbyToolEi,"ax",%progbits
 724              		.align	2
 725              		.global	_ZN6RepRap11StandbyToolEi
 726              		.thumb
 727              		.thumb_func
 728              		.type	_ZN6RepRap11StandbyToolEi, %function
 729              	_ZN6RepRap11StandbyToolEi:
 730              		@ args = 0, pretend = 0, frame = 0
 731              		@ frame_needed = 0, uses_anonymous_args = 0
 732 0000 70B5     		push	{r4, r5, r6, lr}
 733 0002 046A     		ldr	r4, [r0, #32]
 734 0004 0546     		mov	r5, r0
 735 0006 54B1     		cbz	r4, .L122
 736 0008 6368     		ldr	r3, [r4, #4]
 737 000a 9942     		cmp	r1, r3
 738 000c 03D1     		bne	.L124
 739 000e 0EE0     		b	.L123
 740              	.L125:
 741 0010 6268     		ldr	r2, [r4, #4]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 14


 742 0012 9142     		cmp	r1, r2
 743 0014 0BD0     		beq	.L123
 744              	.L124:
 745 0016 D4F8C840 		ldr	r4, [r4, #200]
 746 001a 002C     		cmp	r4, #0
 747 001c F8D1     		bne	.L125
 748              	.L122:
 749 001e 2868     		ldr	r0, [r5]
 750 0020 084A     		ldr	r2, .L132
 751 0022 0B46     		mov	r3, r1
 752 0024 BDE87040 		pop	{r4, r5, r6, lr}
 753 0028 0621     		movs	r1, #6
 754 002a FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 755              	.L123:
 756 002e 2046     		mov	r0, r4
 757 0030 FFF7FEFF 		bl	_ZN4Tool7StandbyEv
 758 0034 6B6A     		ldr	r3, [r5, #36]
 759 0036 A342     		cmp	r3, r4
 760 0038 00D0     		beq	.L131
 761 003a 70BD     		pop	{r4, r5, r6, pc}
 762              	.L131:
 763 003c 0023     		movs	r3, #0
 764 003e 6B62     		str	r3, [r5, #36]
 765 0040 70BD     		pop	{r4, r5, r6, pc}
 766              	.L133:
 767 0042 00BF     		.align	2
 768              	.L132:
 769 0044 6C020000 		.word	.LC24
 770              		.size	_ZN6RepRap11StandbyToolEi, .-_ZN6RepRap11StandbyToolEi
 771              		.section	.text._ZN6RepRap10SelectToolEi,"ax",%progbits
 772              		.align	2
 773              		.global	_ZN6RepRap10SelectToolEi
 774              		.thumb
 775              		.thumb_func
 776              		.type	_ZN6RepRap10SelectToolEi, %function
 777              	_ZN6RepRap10SelectToolEi:
 778              		@ args = 0, pretend = 0, frame = 0
 779              		@ frame_needed = 0, uses_anonymous_args = 0
 780 0000 38B5     		push	{r3, r4, r5, lr}
 781 0002 046A     		ldr	r4, [r0, #32]
 782 0004 0546     		mov	r5, r0
 783 0006 1CB9     		cbnz	r4, .L140
 784 0008 0BE0     		b	.L135
 785              	.L138:
 786 000a D4F8C840 		ldr	r4, [r4, #200]
 787 000e 44B1     		cbz	r4, .L135
 788              	.L140:
 789 0010 6368     		ldr	r3, [r4, #4]
 790 0012 9942     		cmp	r1, r3
 791 0014 F9D1     		bne	.L138
 792 0016 2046     		mov	r0, r4
 793 0018 696A     		ldr	r1, [r5, #36]
 794 001a FFF7FEFF 		bl	_ZN4Tool8ActivateEPS_
 795 001e 6C62     		str	r4, [r5, #36]
 796 0020 38BD     		pop	{r3, r4, r5, pc}
 797              	.L135:
 798 0022 6B6A     		ldr	r3, [r5, #36]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 15


 799 0024 1BB1     		cbz	r3, .L141
 800 0026 5968     		ldr	r1, [r3, #4]
 801 0028 2846     		mov	r0, r5
 802 002a FFF7FEFF 		bl	_ZN6RepRap11StandbyToolEi
 803              	.L141:
 804 002e 0023     		movs	r3, #0
 805 0030 6B62     		str	r3, [r5, #36]
 806 0032 38BD     		pop	{r3, r4, r5, pc}
 807              		.size	_ZN6RepRap10SelectToolEi, .-_ZN6RepRap10SelectToolEi
 808              		.section	.text._ZN6RepRap10DeleteToolEP4Tool,"ax",%progbits
 809              		.align	2
 810              		.global	_ZN6RepRap10DeleteToolEP4Tool
 811              		.thumb
 812              		.thumb_func
 813              		.type	_ZN6RepRap10DeleteToolEP4Tool, %function
 814              	_ZN6RepRap10DeleteToolEP4Tool:
 815              		@ args = 0, pretend = 0, frame = 0
 816              		@ frame_needed = 0, uses_anonymous_args = 0
 817 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 818 0004 0E46     		mov	r6, r1
 819 0006 0746     		mov	r7, r0
 820 0008 0029     		cmp	r1, #0
 821 000a 44D0     		beq	.L149
 822 000c 436A     		ldr	r3, [r0, #36]
 823 000e 9942     		cmp	r1, r3
 824 0010 43D0     		beq	.L168
 825              	.L151:
 826 0012 D6F8A430 		ldr	r3, [r6, #164]
 827 0016 83B1     		cbz	r3, .L155
 828 0018 DFF88880 		ldr	r8, .L169
 829 001c 3546     		mov	r5, r6
 830 001e 0024     		movs	r4, #0
 831              	.L156:
 832 0020 95F94410 		ldrsb	r1, [r5, #68]
 833 0024 D8F80C00 		ldr	r0, [r8, #12]
 834 0028 FFF7FEFF 		bl	_ZN4Heat9SwitchOffEa
 835 002c D6F8A430 		ldr	r3, [r6, #164]
 836 0030 0134     		adds	r4, r4, #1
 837 0032 9C42     		cmp	r4, r3
 838 0034 05F10405 		add	r5, r5, #4
 839 0038 F2D3     		bcc	.L156
 840              	.L155:
 841 003a 3A6A     		ldr	r2, [r7, #32]
 842 003c 62B1     		cbz	r2, .L154
 843 003e 9642     		cmp	r6, r2
 844 0040 08BF     		it	eq
 845 0042 07F12002 		addeq	r2, r7, #32
 846 0046 03D1     		bne	.L160
 847 0048 21E0     		b	.L158
 848              	.L161:
 849 004a 9E42     		cmp	r6, r3
 850 004c 1ED0     		beq	.L159
 851 004e 1A46     		mov	r2, r3
 852              	.L160:
 853 0050 D2F8C830 		ldr	r3, [r2, #200]
 854 0054 002B     		cmp	r3, #0
 855 0056 F8D1     		bne	.L161
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 16


 856              	.L154:
 857 0058 3046     		mov	r0, r6
 858 005a FFF7FEFF 		bl	_ZN4Tool6DeleteEPS_
 859 005e 3C6A     		ldr	r4, [r7, #32]
 860 0060 0023     		movs	r3, #0
 861 0062 FB85     		strh	r3, [r7, #46]	@ movhi
 862 0064 BB85     		strh	r3, [r7, #44]	@ movhi
 863 0066 64B1     		cbz	r4, .L163
 864 0068 07F12C06 		add	r6, r7, #44
 865 006c 07F12E05 		add	r5, r7, #46
 866              	.L164:
 867 0070 2046     		mov	r0, r4
 868 0072 3146     		mov	r1, r6
 869 0074 2A46     		mov	r2, r5
 870 0076 FFF7FEFF 		bl	_ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_
 871 007a D4F8C840 		ldr	r4, [r4, #200]
 872 007e 002C     		cmp	r4, #0
 873 0080 F6D1     		bne	.L164
 874              	.L163:
 875 0082 3868     		ldr	r0, [r7]
 876 0084 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 877 0088 FFF7FEBF 		b	_ZN8Platform23UpdateConfiguredHeatersEv
 878              	.L159:
 879 008c C832     		adds	r2, r2, #200
 880              	.L158:
 881 008e D6F8C830 		ldr	r3, [r6, #200]
 882 0092 1360     		str	r3, [r2]
 883 0094 E0E7     		b	.L154
 884              	.L149:
 885 0096 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 886              	.L168:
 887 009a 4FF0FF31 		mov	r1, #-1
 888 009e FFF7FEFF 		bl	_ZN6RepRap10SelectToolEi
 889 00a2 B6E7     		b	.L151
 890              	.L170:
 891              		.align	2
 892              	.L169:
 893 00a4 00000000 		.word	reprap
 894              		.size	_ZN6RepRap10DeleteToolEP4Tool, .-_ZN6RepRap10DeleteToolEP4Tool
 895              		.section	.text._ZNK6RepRap7GetToolEi,"ax",%progbits
 896              		.align	2
 897              		.global	_ZNK6RepRap7GetToolEi
 898              		.thumb
 899              		.thumb_func
 900              		.type	_ZNK6RepRap7GetToolEi, %function
 901              	_ZNK6RepRap7GetToolEi:
 902              		@ args = 0, pretend = 0, frame = 0
 903              		@ frame_needed = 0, uses_anonymous_args = 0
 904              		@ link register save eliminated.
 905 0000 006A     		ldr	r0, [r0, #32]
 906 0002 50B1     		cbz	r0, .L172
 907 0004 4368     		ldr	r3, [r0, #4]
 908 0006 9942     		cmp	r1, r3
 909 0008 03D1     		bne	.L173
 910 000a 07E0     		b	.L180
 911              	.L174:
 912 000c 4368     		ldr	r3, [r0, #4]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 17


 913 000e 9942     		cmp	r1, r3
 914 0010 03D0     		beq	.L172
 915              	.L173:
 916 0012 D0F8C800 		ldr	r0, [r0, #200]
 917 0016 0028     		cmp	r0, #0
 918 0018 F8D1     		bne	.L174
 919              	.L172:
 920 001a 7047     		bx	lr
 921              	.L180:
 922 001c 7047     		bx	lr
 923              		.size	_ZNK6RepRap7GetToolEi, .-_ZNK6RepRap7GetToolEi
 924 001e 00BF     		.section	.text._ZNK6RepRap23GetCurrentOrDefaultToolEv,"ax",%progbits
 925              		.align	2
 926              		.global	_ZNK6RepRap23GetCurrentOrDefaultToolEv
 927              		.thumb
 928              		.thumb_func
 929              		.type	_ZNK6RepRap23GetCurrentOrDefaultToolEv, %function
 930              	_ZNK6RepRap23GetCurrentOrDefaultToolEv:
 931              		@ args = 0, pretend = 0, frame = 0
 932              		@ frame_needed = 0, uses_anonymous_args = 0
 933              		@ link register save eliminated.
 934 0000 436A     		ldr	r3, [r0, #36]
 935 0002 0BB1     		cbz	r3, .L184
 936 0004 1846     		mov	r0, r3
 937 0006 7047     		bx	lr
 938              	.L184:
 939 0008 006A     		ldr	r0, [r0, #32]
 940 000a 7047     		bx	lr
 941              		.size	_ZNK6RepRap23GetCurrentOrDefaultToolEv, .-_ZNK6RepRap23GetCurrentOrDefaultToolEv
 942              		.section	.text._ZN6RepRap16SetToolVariablesEiPKfS1_,"ax",%progbits
 943              		.align	2
 944              		.global	_ZN6RepRap16SetToolVariablesEiPKfS1_
 945              		.thumb
 946              		.thumb_func
 947              		.type	_ZN6RepRap16SetToolVariablesEiPKfS1_, %function
 948              	_ZN6RepRap16SetToolVariablesEiPKfS1_:
 949              		@ args = 0, pretend = 0, frame = 0
 950              		@ frame_needed = 0, uses_anonymous_args = 0
 951              		@ link register save eliminated.
 952 0000 30B4     		push	{r4, r5}
 953 0002 046A     		ldr	r4, [r0, #32]
 954 0004 1CB9     		cbnz	r4, .L189
 955 0006 0BE0     		b	.L186
 956              	.L193:
 957 0008 D4F8C840 		ldr	r4, [r4, #200]
 958 000c 44B1     		cbz	r4, .L186
 959              	.L189:
 960 000e 6568     		ldr	r5, [r4, #4]
 961 0010 A942     		cmp	r1, r5
 962 0012 F9D1     		bne	.L193
 963 0014 2046     		mov	r0, r4
 964 0016 1146     		mov	r1, r2
 965 0018 30BC     		pop	{r4, r5}
 966 001a 1A46     		mov	r2, r3
 967 001c FFF7FEBF 		b	_ZN4Tool12SetVariablesEPKfS1_
 968              	.L186:
 969 0020 0B46     		mov	r3, r1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 18


 970 0022 0068     		ldr	r0, [r0]
 971 0024 024A     		ldr	r2, .L194
 972 0026 0621     		movs	r1, #6
 973 0028 30BC     		pop	{r4, r5}
 974 002a FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 975              	.L195:
 976 002e 00BF     		.align	2
 977              	.L194:
 978 0030 A0020000 		.word	.LC25
 979              		.size	_ZN6RepRap16SetToolVariablesEiPKfS1_, .-_ZN6RepRap16SetToolVariablesEiPKfS1_
 980              		.section	.text._ZNK6RepRap22IsHeaterAssignedToToolEa,"ax",%progbits
 981              		.align	2
 982              		.global	_ZNK6RepRap22IsHeaterAssignedToToolEa
 983              		.thumb
 984              		.thumb_func
 985              		.type	_ZNK6RepRap22IsHeaterAssignedToToolEa, %function
 986              	_ZNK6RepRap22IsHeaterAssignedToToolEa:
 987              		@ args = 0, pretend = 0, frame = 0
 988              		@ frame_needed = 0, uses_anonymous_args = 0
 989              		@ link register save eliminated.
 990 0000 006A     		ldr	r0, [r0, #32]
 991 0002 30B4     		push	{r4, r5}
 992 0004 A0B1     		cbz	r0, .L197
 993              	.L198:
 994 0006 D0F8A450 		ldr	r5, [r0, #164]
 995 000a 6DB1     		cbz	r5, .L200
 996 000c 436C     		ldr	r3, [r0, #68]
 997 000e 9942     		cmp	r1, r3
 998 0010 10D0     		beq	.L205
 999 0012 0246     		mov	r2, r0
 1000 0014 0023     		movs	r3, #0
 1001 0016 02E0     		b	.L201
 1002              	.L199:
 1003 0018 546C     		ldr	r4, [r2, #68]
 1004 001a 8C42     		cmp	r4, r1
 1005 001c 0AD0     		beq	.L205
 1006              	.L201:
 1007 001e 0133     		adds	r3, r3, #1
 1008 0020 AB42     		cmp	r3, r5
 1009 0022 02F10402 		add	r2, r2, #4
 1010 0026 F7D1     		bne	.L199
 1011              	.L200:
 1012 0028 D0F8C800 		ldr	r0, [r0, #200]
 1013 002c 0028     		cmp	r0, #0
 1014 002e EAD1     		bne	.L198
 1015              	.L197:
 1016 0030 30BC     		pop	{r4, r5}
 1017 0032 7047     		bx	lr
 1018              	.L205:
 1019 0034 0120     		movs	r0, #1
 1020 0036 30BC     		pop	{r4, r5}
 1021 0038 7047     		bx	lr
 1022              		.size	_ZNK6RepRap22IsHeaterAssignedToToolEa, .-_ZNK6RepRap22IsHeaterAssignedToToolEa
 1023 003a 00BF     		.section	.text._ZNK6RepRap26GetNumberOfContiguousToolsEv,"ax",%progbits
 1024              		.align	2
 1025              		.global	_ZNK6RepRap26GetNumberOfContiguousToolsEv
 1026              		.thumb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 19


 1027              		.thumb_func
 1028              		.type	_ZNK6RepRap26GetNumberOfContiguousToolsEv, %function
 1029              	_ZNK6RepRap26GetNumberOfContiguousToolsEv:
 1030              		@ args = 0, pretend = 0, frame = 0
 1031              		@ frame_needed = 0, uses_anonymous_args = 0
 1032              		@ link register save eliminated.
 1033 0000 30B4     		push	{r4, r5}
 1034 0002 046A     		ldr	r4, [r0, #32]
 1035 0004 94B1     		cbz	r4, .L215
 1036 0006 0021     		movs	r1, #0
 1037 0008 6568     		ldr	r5, [r4, #4]
 1038 000a 0846     		mov	r0, r1
 1039              	.L211:
 1040 000c A942     		cmp	r1, r5
 1041 000e 0AD0     		beq	.L212
 1042 0010 2346     		mov	r3, r4
 1043 0012 02E0     		b	.L213
 1044              	.L214:
 1045 0014 5A68     		ldr	r2, [r3, #4]
 1046 0016 9142     		cmp	r1, r2
 1047 0018 05D0     		beq	.L212
 1048              	.L213:
 1049 001a D3F8C830 		ldr	r3, [r3, #200]
 1050 001e 002B     		cmp	r3, #0
 1051 0020 F8D1     		bne	.L214
 1052 0022 30BC     		pop	{r4, r5}
 1053 0024 7047     		bx	lr
 1054              	.L212:
 1055 0026 0130     		adds	r0, r0, #1
 1056 0028 0146     		mov	r1, r0
 1057 002a EFE7     		b	.L211
 1058              	.L215:
 1059 002c 2046     		mov	r0, r4
 1060 002e 30BC     		pop	{r4, r5}
 1061 0030 7047     		bx	lr
 1062              		.size	_ZNK6RepRap26GetNumberOfContiguousToolsEv, .-_ZNK6RepRap26GetNumberOfContiguousToolsEv
 1063 0032 00BF     		.section	.text._ZN6RepRap4TickEv,"ax",%progbits
 1064              		.align	2
 1065              		.global	_ZN6RepRap4TickEv
 1066              		.thumb
 1067              		.thumb_func
 1068              		.type	_ZN6RepRap4TickEv, %function
 1069              	_ZN6RepRap4TickEv:
 1070              		@ args = 0, pretend = 0, frame = 0
 1071              		@ frame_needed = 0, uses_anonymous_args = 0
 1072 0000 38B5     		push	{r3, r4, r5, lr}
 1073 0002 90F84330 		ldrb	r3, [r0, #67]	@ zero_extendqisi2
 1074 0006 0446     		mov	r4, r0
 1075 0008 13B1     		cbz	r3, .L217
 1076 000a 90F84450 		ldrb	r5, [r0, #68]	@ zero_extendqisi2
 1077 000e 05B1     		cbz	r5, .L225
 1078              	.L217:
 1079 0010 38BD     		pop	{r3, r4, r5, pc}
 1080              	.L225:
 1081 0012 0068     		ldr	r0, [r0]
 1082 0014 FFF7FEFF 		bl	_ZN8Platform4TickEv
 1083 0018 238E     		ldrh	r3, [r4, #48]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 20


 1084 001a 0133     		adds	r3, r3, #1
 1085 001c 9BB2     		uxth	r3, r3
 1086 001e 44F61F62 		movw	r2, #19999
 1087 0022 9342     		cmp	r3, r2
 1088 0024 2386     		strh	r3, [r4, #48]	@ movhi
 1089 0026 F3D9     		bls	.L217
 1090 0028 0123     		movs	r3, #1
 1091 002a 84F84430 		strb	r3, [r4, #68]
 1092              	.L222:
 1093 002e 2946     		mov	r1, r5
 1094 0030 2068     		ldr	r0, [r4]
 1095 0032 0022     		movs	r2, #0
 1096 0034 0135     		adds	r5, r5, #1
 1097 0036 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjf
 1098 003a 082D     		cmp	r5, #8
 1099 003c F7D1     		bne	.L222
 1100 003e 0025     		movs	r5, #0
 1101              	.L224:
 1102 0040 2946     		mov	r1, r5
 1103 0042 2068     		ldr	r0, [r4]
 1104 0044 0135     		adds	r5, r5, #1
 1105 0046 FFF7FEFF 		bl	_ZN8Platform12DisableDriveEj
 1106 004a 0A2D     		cmp	r5, #10
 1107 004c F8D1     		bne	.L224
 1108 004e 2068     		ldr	r0, [r4]
 1109 0050 4FF48051 		mov	r1, #4096
 1110 0054 0022     		movs	r2, #0
 1111 0056 BDE83840 		pop	{r3, r4, r5, lr}
 1112 005a FFF7FEBF 		b	_ZN8Platform13SoftwareResetEtPKm
 1113              		.size	_ZN6RepRap4TickEv, .-_ZN6RepRap4TickEv
 1114              		.global	__aeabi_dmul
 1115 005e 00BF     		.section	.text._ZN6RepRap17GetStatusResponseEh14ResponseSource,"ax",%progbits
 1116              		.align	2
 1117              		.global	_ZN6RepRap17GetStatusResponseEh14ResponseSource
 1118              		.thumb
 1119              		.thumb_func
 1120              		.type	_ZN6RepRap17GetStatusResponseEh14ResponseSource, %function
 1121              	_ZN6RepRap17GetStatusResponseEh14ResponseSource:
 1122              		@ args = 0, pretend = 0, frame = 64
 1123              		@ frame_needed = 0, uses_anonymous_args = 0
 1124 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1125 0004 95B0     		sub	sp, sp, #84
 1126 0006 0646     		mov	r6, r0
 1127 0008 06A8     		add	r0, sp, #24
 1128 000a 8946     		mov	r9, r1
 1129 000c 9046     		mov	r8, r2
 1130 000e FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 1131 0012 0028     		cmp	r0, #0
 1132 0014 00F07582 		beq	.L358
 1133 0018 96F84530 		ldrb	r3, [r6, #69]	@ zero_extendqisi2
 1134 001c 002B     		cmp	r3, #0
 1135 001e 00F0E682 		beq	.L361
 1136 0022 4322     		movs	r2, #67
 1137              	.L228:
 1138 0024 0698     		ldr	r0, [sp, #24]
 1139 0026 7B49     		ldr	r1, .L385
 1140 0028 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 21


 1141 002c 7A4A     		ldr	r2, .L385+4
 1142 002e 736A     		ldr	r3, [r6, #36]
 1143 0030 1269     		ldr	r2, [r2, #16]
 1144 0032 B068     		ldr	r0, [r6, #8]
 1145 0034 D2F8B071 		ldr	r7, [r2, #432]
 1146 0038 002B     		cmp	r3, #0
 1147 003a 00F05D84 		beq	.L323
 1148 003e D3F8C020 		ldr	r2, [r3, #192]
 1149 0042 09A9     		add	r1, sp, #36
 1150 0044 FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfm
 1151 0048 726A     		ldr	r2, [r6, #36]
 1152 004a 002A     		cmp	r2, #0
 1153 004c 00F05C84 		beq	.L230
 1154              	.L381:
 1155 0050 A832     		adds	r2, r2, #168
 1156 0052 002F     		cmp	r7, #0
 1157 0054 00F02985 		beq	.L231
 1158 0058 09AB     		add	r3, sp, #36
 1159 005a 03EB8701 		add	r1, r3, r7, lsl #2
 1160              	.L233:
 1161 005e 93ED007A 		flds	s14, [r3]
 1162 0062 F2EC017A 		fldmias	r2!, {s15}
 1163 0066 77EE277A 		fadds	s15, s14, s15
 1164 006a E3EC017A 		fstmias	r3!, {s15}
 1165 006e 8B42     		cmp	r3, r1
 1166 0070 F5D1     		bne	.L233
 1167 0072 0698     		ldr	r0, [sp, #24]
 1168 0074 6949     		ldr	r1, .L385+8
 1169 0076 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1170              	.L234:
 1171 007a 0024     		movs	r4, #0
 1172 007c 5B22     		movs	r2, #91
 1173 007e 0125     		movs	r5, #1
 1174 0080 00E0     		b	.L237
 1175              	.L362:
 1176 0082 2C22     		movs	r2, #44
 1177              	.L237:
 1178 0084 3369     		ldr	r3, [r6, #16]
 1179 0086 0698     		ldr	r0, [sp, #24]
 1180 0088 D3F89832 		ldr	r3, [r3, #664]
 1181 008c 6449     		ldr	r1, .L385+12
 1182 008e 05FA04FE 		lsl	lr, r5, r4
 1183 0092 1EEA030F 		tst	lr, r3
 1184 0096 0CBF     		ite	eq
 1185 0098 0023     		moveq	r3, #0
 1186 009a 0123     		movne	r3, #1
 1187 009c 0134     		adds	r4, r4, #1
 1188 009e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1189 00a2 BC42     		cmp	r4, r7
 1190 00a4 EDD3     		bcc	.L362
 1191              	.L235:
 1192 00a6 0698     		ldr	r0, [sp, #24]
 1193 00a8 5E49     		ldr	r1, .L385+16
 1194 00aa FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1195 00ae B38D     		ldrh	r3, [r6, #44]
 1196 00b0 002B     		cmp	r3, #0
 1197 00b2 00F0F484 		beq	.L238
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 22


 1198 00b6 09A8     		add	r0, sp, #36
 1199 00b8 00EB8705 		add	r5, r0, r7, lsl #2
 1200 00bc 0024     		movs	r4, #0
 1201 00be 4FF05B0B 		mov	fp, #91
 1202 00c2 01E0     		b	.L240
 1203              	.L363:
 1204 00c4 4FF02C0B 		mov	fp, #44
 1205              	.L240:
 1206 00c8 55F8040B 		ldr	r0, [r5], #4	@ float
 1207 00cc DDF818A0 		ldr	r10, [sp, #24]
 1208 00d0 FFF7FEFF 		bl	__aeabi_f2d
 1209 00d4 5A46     		mov	r2, fp
 1210 00d6 CDE90001 		strd	r0, [sp]
 1211 00da 5046     		mov	r0, r10
 1212 00dc 5249     		ldr	r1, .L385+20
 1213 00de FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1214 00e2 B38D     		ldrh	r3, [r6, #44]
 1215 00e4 0134     		adds	r4, r4, #1
 1216 00e6 A342     		cmp	r3, r4
 1217 00e8 ECD8     		bhi	.L363
 1218              	.L239:
 1219 00ea 0698     		ldr	r0, [sp, #24]
 1220 00ec 4F49     		ldr	r1, .L385+24
 1221 00ee FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1222 00f2 3069     		ldr	r0, [r6, #16]
 1223 00f4 FFF7FEFF 		bl	_ZNK6GCodes15AllAxesAreHomedEv
 1224 00f8 0028     		cmp	r0, #0
 1225 00fa 00F04E82 		beq	.L241
 1226              	.L245:
 1227 00fe B7B1     		cbz	r7, .L243
 1228 0100 09AD     		add	r5, sp, #36
 1229 0102 0024     		movs	r4, #0
 1230 0104 4FF05B0B 		mov	fp, #91
 1231 0108 01E0     		b	.L247
 1232              	.L364:
 1233 010a 4FF02C0B 		mov	fp, #44
 1234              	.L247:
 1235 010e 55F8040B 		ldr	r0, [r5], #4	@ float
 1236 0112 DDF818A0 		ldr	r10, [sp, #24]
 1237 0116 FFF7FEFF 		bl	__aeabi_f2d
 1238 011a 0134     		adds	r4, r4, #1
 1239 011c CDE90001 		strd	r0, [sp]
 1240 0120 5A46     		mov	r2, fp
 1241 0122 5046     		mov	r0, r10
 1242 0124 4249     		ldr	r1, .L385+28
 1243 0126 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1244 012a BC42     		cmp	r4, r7
 1245 012c EDD1     		bne	.L364
 1246              	.L243:
 1247 012e 736A     		ldr	r3, [r6, #36]
 1248 0130 002B     		cmp	r3, #0
 1249 0132 00F04082 		beq	.L324
 1250              	.L375:
 1251 0136 5A68     		ldr	r2, [r3, #4]
 1252              	.L248:
 1253 0138 0698     		ldr	r0, [sp, #24]
 1254 013a 3E49     		ldr	r1, .L385+32
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 23


 1255 013c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1256 0140 D6F88830 		ldr	r3, [r6, #136]
 1257 0144 002B     		cmp	r3, #0
 1258 0146 00F00982 		beq	.L249
 1259 014a D6F88430 		ldr	r3, [r6, #132]
 1260 014e 002B     		cmp	r3, #0
 1261 0150 00F00482 		beq	.L249
 1262 0154 96F88C40 		ldrb	r4, [r6, #140]	@ zero_extendqisi2
 1263 0158 3749     		ldr	r1, .L385+36
 1264 015a 0698     		ldr	r0, [sp, #24]
 1265 015c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1266 0160 0698     		ldr	r0, [sp, #24]
 1267 0162 3649     		ldr	r1, .L385+40
 1268 0164 D6F88820 		ldr	r2, [r6, #136]
 1269 0168 D6F88430 		ldr	r3, [r6, #132]
 1270 016c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1271 0170 002C     		cmp	r4, #0
 1272 0172 40F00183 		bne	.L365
 1273 0176 C6F88840 		str	r4, [r6, #136]
 1274 017a C6F88440 		str	r4, [r6, #132]
 1275 017e 0698     		ldr	r0, [sp, #24]
 1276 0180 2F49     		ldr	r1, .L385+44
 1277 0182 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1278              	.L312:
 1279 0186 3068     		ldr	r0, [r6]
 1280 0188 069C     		ldr	r4, [sp, #24]
 1281 018a FFF7FEFF 		bl	_ZNK8Platform8AtxPowerEv
 1282 018e 2D49     		ldr	r1, .L385+48
 1283 0190 0246     		mov	r2, r0
 1284 0192 2046     		mov	r0, r4
 1285 0194 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1286 0198 0698     		ldr	r0, [sp, #24]
 1287 019a 2B49     		ldr	r1, .L385+52
 1288 019c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1289 01a0 0024     		movs	r4, #0
 1290 01a2 4FF05B0A 		mov	r10, #91
 1291 01a6 01E0     		b	.L252
 1292              	.L366:
 1293 01a8 4FF02C0A 		mov	r10, #44
 1294              	.L252:
 1295 01ac 2146     		mov	r1, r4
 1296 01ae 3068     		ldr	r0, [r6]
 1297 01b0 069D     		ldr	r5, [sp, #24]
 1298 01b2 FFF7FEFF 		bl	_ZNK8Platform11GetFanValueEj
 1299 01b6 FFF7FEFF 		bl	__aeabi_f2d
 1300 01ba 0022     		movs	r2, #0
 1301 01bc 234B     		ldr	r3, .L385+56
 1302 01be FFF7FEFF 		bl	__aeabi_dmul
 1303 01c2 0134     		adds	r4, r4, #1
 1304 01c4 CDE90001 		strd	r0, [sp]
 1305 01c8 5246     		mov	r2, r10
 1306 01ca 2846     		mov	r0, r5
 1307 01cc 2049     		ldr	r1, .L385+60
 1308 01ce FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1309 01d2 082C     		cmp	r4, #8
 1310 01d4 E8D1     		bne	.L366
 1311 01d6 3369     		ldr	r3, [r6, #16]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 24


 1312 01d8 DFED1E7A 		flds	s15, .L385+64
 1313 01dc 93EDB07A 		flds	s14, [r3, #704]
 1314 01e0 069C     		ldr	r4, [sp, #24]
 1315 01e2 67EE277A 		fmuls	s15, s14, s15
 1316 01e6 17EE900A 		fmrs	r0, s15
 1317 01ea FFF7FEFF 		bl	__aeabi_f2d
 1318 01ee 0022     		movs	r2, #0
 1319 01f0 164B     		ldr	r3, .L385+56
 1320 01f2 FFF7FEFF 		bl	__aeabi_dmul
 1321 01f6 0B46     		mov	r3, r1
 1322 01f8 0246     		mov	r2, r0
 1323 01fa 1749     		ldr	r1, .L385+68
 1324 01fc 2046     		mov	r0, r4
 1325 01fe FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1326 0202 B38D     		ldrh	r3, [r6, #44]
 1327 0204 002B     		cmp	r3, #0
 1328 0206 00F08A83 		beq	.L253
 1329 020a 0024     		movs	r4, #0
 1330 020c 4FF05B0A 		mov	r10, #91
 1331 0210 26E0     		b	.L255
 1332              	.L386:
 1333 0212 00BF     		.align	2
 1334              	.L385:
 1335 0214 E8020000 		.word	.LC28
 1336 0218 00000000 		.word	reprap
 1337 021c 04030000 		.word	.LC29
 1338 0220 14030000 		.word	.LC30
 1339 0224 1C030000 		.word	.LC31
 1340 0228 28030000 		.word	.LC32
 1341 022c 30030000 		.word	.LC33
 1342 0230 3C030000 		.word	.LC34
 1343 0234 44030000 		.word	.LC35
 1344 0238 F8070000 		.word	.LC94
 1345 023c 04080000 		.word	.LC95
 1346 0240 68030000 		.word	.LC38
 1347 0244 6C030000 		.word	.LC39
 1348 0248 88030000 		.word	.LC40
 1349 024c 00005940 		.word	1079574528
 1350 0250 98030000 		.word	.LC41
 1351 0254 00007042 		.word	1114636288
 1352 0258 A0030000 		.word	.LC42
 1353              	.L367:
 1354 025c 4FF02C0A 		mov	r10, #44
 1355              	.L255:
 1356 0260 3369     		ldr	r3, [r6, #16]
 1357 0262 069D     		ldr	r5, [sp, #24]
 1358 0264 03EB8403 		add	r3, r3, r4, lsl #2
 1359 0268 0134     		adds	r4, r4, #1
 1360 026a D3F8C402 		ldr	r0, [r3, #708]	@ float
 1361 026e FFF7FEFF 		bl	__aeabi_f2d
 1362 0272 A54B     		ldr	r3, .L387
 1363 0274 0022     		movs	r2, #0
 1364 0276 FFF7FEFF 		bl	__aeabi_dmul
 1365 027a 5246     		mov	r2, r10
 1366 027c CDE90001 		strd	r0, [sp]
 1367 0280 2846     		mov	r0, r5
 1368 0282 A249     		ldr	r1, .L387+4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 25


 1369 0284 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1370 0288 B38D     		ldrh	r3, [r6, #44]
 1371 028a A342     		cmp	r3, r4
 1372 028c E6D8     		bhi	.L367
 1373 028e 0698     		ldr	r0, [sp, #24]
 1374 0290 9F49     		ldr	r1, .L387+8
 1375              	.L315:
 1376 0292 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1377 0296 3069     		ldr	r0, [r6, #16]
 1378 0298 069C     		ldr	r4, [sp, #24]
 1379 029a FFF7FEFF 		bl	_ZNK6GCodes17GetBabyStepOffsetEv
 1380 029e FFF7FEFF 		bl	__aeabi_f2d
 1381 02a2 0246     		mov	r2, r0
 1382 02a4 0B46     		mov	r3, r1
 1383 02a6 2046     		mov	r0, r4
 1384 02a8 9A49     		ldr	r1, .L387+12
 1385 02aa FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1386 02ae B8F1000F 		cmp	r8, #0
 1387 02b2 00F09381 		beq	.L368
 1388              	.L256:
 1389 02b6 9849     		ldr	r1, .L387+16
 1390 02b8 0698     		ldr	r0, [sp, #24]
 1391 02ba FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1392 02be 3068     		ldr	r0, [r6]
 1393 02c0 FFF7FEFF 		bl	_ZNK8Platform16GetZProbeReadingEv
 1394 02c4 08A9     		add	r1, sp, #32
 1395 02c6 0446     		mov	r4, r0
 1396 02c8 09AA     		add	r2, sp, #36
 1397 02ca 3068     		ldr	r0, [r6]
 1398 02cc FFF7FEFF 		bl	_ZN8Platform24GetZProbeSecondaryValuesERiS0_
 1399 02d0 0128     		cmp	r0, #1
 1400 02d2 00F07C81 		beq	.L258
 1401 02d6 0228     		cmp	r0, #2
 1402 02d8 00F07081 		beq	.L259
 1403 02dc 2246     		mov	r2, r4
 1404 02de 0698     		ldr	r0, [sp, #24]
 1405 02e0 8E49     		ldr	r1, .L387+20
 1406 02e2 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1407              	.L260:
 1408 02e6 3068     		ldr	r0, [r6]
 1409 02e8 069C     		ldr	r4, [sp, #24]
 1410 02ea FFF7FEFF 		bl	_ZN8Platform9GetFanRPMEv
 1411 02ee 07EE100A 		fmsr	s14, r0
 1412 02f2 BCEEC77A 		ftouizs	s14, s14
 1413 02f6 8A49     		ldr	r1, .L387+24
 1414 02f8 17EE102A 		fmrs	r2, s14	@ int
 1415 02fc 2046     		mov	r0, r4
 1416 02fe FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1417 0302 0698     		ldr	r0, [sp, #24]
 1418 0304 8749     		ldr	r1, .L387+28
 1419 0306 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1420 030a F068     		ldr	r0, [r6, #12]
 1421 030c 90F92E40 		ldrsb	r4, [r0, #46]
 1422 0310 621C     		adds	r2, r4, #1
 1423 0312 22D0     		beq	.L261
 1424 0314 069B     		ldr	r3, [sp, #24]
 1425 0316 0593     		str	r3, [sp, #20]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 26


 1426 0318 2146     		mov	r1, r4
 1427 031a FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 1428 031e 2146     		mov	r1, r4
 1429 0320 0546     		mov	r5, r0	@ float
 1430 0322 F068     		ldr	r0, [r6, #12]
 1431 0324 FFF7FEFF 		bl	_ZNK4Heat20GetActiveTemperatureEa
 1432 0328 2146     		mov	r1, r4
 1433 032a 8246     		mov	r10, r0	@ float
 1434 032c F068     		ldr	r0, [r6, #12]
 1435 032e FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 1436 0332 8346     		mov	fp, r0
 1437 0334 2846     		mov	r0, r5	@ float
 1438 0336 FFF7FEFF 		bl	__aeabi_f2d
 1439 033a 0446     		mov	r4, r0
 1440 033c 5046     		mov	r0, r10	@ float
 1441 033e 0D46     		mov	r5, r1
 1442 0340 FFF7FEFF 		bl	__aeabi_f2d
 1443 0344 CDF808B0 		str	fp, [sp, #8]
 1444 0348 CDE90001 		strd	r0, [sp]
 1445 034c 2246     		mov	r2, r4
 1446 034e 2B46     		mov	r3, r5
 1447 0350 0598     		ldr	r0, [sp, #20]
 1448 0352 7549     		ldr	r1, .L387+32
 1449 0354 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1450 0358 F068     		ldr	r0, [r6, #12]
 1451              	.L261:
 1452 035a 90F92F40 		ldrsb	r4, [r0, #47]
 1453 035e 631C     		adds	r3, r4, #1
 1454 0360 22D0     		beq	.L262
 1455 0362 2146     		mov	r1, r4
 1456 0364 069D     		ldr	r5, [sp, #24]
 1457 0366 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 1458 036a FFF7FEFF 		bl	__aeabi_f2d
 1459 036e 0246     		mov	r2, r0
 1460 0370 0B46     		mov	r3, r1
 1461 0372 2846     		mov	r0, r5
 1462 0374 6D49     		ldr	r1, .L387+36
 1463 0376 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1464 037a 2146     		mov	r1, r4
 1465 037c F068     		ldr	r0, [r6, #12]
 1466 037e 069D     		ldr	r5, [sp, #24]
 1467 0380 FFF7FEFF 		bl	_ZNK4Heat20GetActiveTemperatureEa
 1468 0384 FFF7FEFF 		bl	__aeabi_f2d
 1469 0388 0246     		mov	r2, r0
 1470 038a 0B46     		mov	r3, r1
 1471 038c 2846     		mov	r0, r5
 1472 038e 6849     		ldr	r1, .L387+40
 1473 0390 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1474 0394 2146     		mov	r1, r4
 1475 0396 F068     		ldr	r0, [r6, #12]
 1476 0398 069C     		ldr	r4, [sp, #24]
 1477 039a FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 1478 039e 6549     		ldr	r1, .L387+44
 1479 03a0 0246     		mov	r2, r0
 1480 03a2 2046     		mov	r0, r4
 1481 03a4 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1482              	.L262:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 27


 1483 03a8 0698     		ldr	r0, [sp, #24]
 1484 03aa 6349     		ldr	r1, .L387+48
 1485 03ac FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1486 03b0 F38D     		ldrh	r3, [r6, #46]
 1487 03b2 012B     		cmp	r3, #1
 1488 03b4 40F26A83 		bls	.L263
 1489 03b8 0124     		movs	r4, #1
 1490 03ba 4FF05B0A 		mov	r10, #91
 1491 03be 01E0     		b	.L265
 1492              	.L369:
 1493 03c0 4FF02C0A 		mov	r10, #44
 1494              	.L265:
 1495 03c4 61B2     		sxtb	r1, r4
 1496 03c6 F068     		ldr	r0, [r6, #12]
 1497 03c8 069D     		ldr	r5, [sp, #24]
 1498 03ca FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 1499 03ce FFF7FEFF 		bl	__aeabi_f2d
 1500 03d2 5246     		mov	r2, r10
 1501 03d4 CDE90001 		strd	r0, [sp]
 1502 03d8 2846     		mov	r0, r5
 1503 03da 5849     		ldr	r1, .L387+52
 1504 03dc FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1505 03e0 F38D     		ldrh	r3, [r6, #46]
 1506 03e2 0134     		adds	r4, r4, #1
 1507 03e4 A342     		cmp	r3, r4
 1508 03e6 EBD8     		bhi	.L369
 1509 03e8 0698     		ldr	r0, [sp, #24]
 1510 03ea 4949     		ldr	r1, .L387+8
 1511              	.L316:
 1512 03ec FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1513 03f0 0698     		ldr	r0, [sp, #24]
 1514 03f2 5349     		ldr	r1, .L387+56
 1515 03f4 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1516 03f8 F38D     		ldrh	r3, [r6, #46]
 1517 03fa 012B     		cmp	r3, #1
 1518 03fc 40F24383 		bls	.L266
 1519 0400 0124     		movs	r4, #1
 1520 0402 4FF05B0A 		mov	r10, #91
 1521 0406 01E0     		b	.L268
 1522              	.L370:
 1523 0408 4FF02C0A 		mov	r10, #44
 1524              	.L268:
 1525 040c 61B2     		sxtb	r1, r4
 1526 040e F068     		ldr	r0, [r6, #12]
 1527 0410 069D     		ldr	r5, [sp, #24]
 1528 0412 FFF7FEFF 		bl	_ZNK4Heat20GetActiveTemperatureEa
 1529 0416 FFF7FEFF 		bl	__aeabi_f2d
 1530 041a 5246     		mov	r2, r10
 1531 041c CDE90001 		strd	r0, [sp]
 1532 0420 2846     		mov	r0, r5
 1533 0422 4649     		ldr	r1, .L387+52
 1534 0424 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1535 0428 F38D     		ldrh	r3, [r6, #46]
 1536 042a 0134     		adds	r4, r4, #1
 1537 042c A342     		cmp	r3, r4
 1538 042e EBD8     		bhi	.L370
 1539 0430 0698     		ldr	r0, [sp, #24]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 28


 1540 0432 3749     		ldr	r1, .L387+8
 1541              	.L317:
 1542 0434 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1543 0438 0698     		ldr	r0, [sp, #24]
 1544 043a 4249     		ldr	r1, .L387+60
 1545 043c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1546 0440 F38D     		ldrh	r3, [r6, #46]
 1547 0442 012B     		cmp	r3, #1
 1548 0444 40F22883 		bls	.L269
 1549 0448 0124     		movs	r4, #1
 1550 044a 4FF05B0A 		mov	r10, #91
 1551 044e 01E0     		b	.L271
 1552              	.L371:
 1553 0450 4FF02C0A 		mov	r10, #44
 1554              	.L271:
 1555 0454 61B2     		sxtb	r1, r4
 1556 0456 F068     		ldr	r0, [r6, #12]
 1557 0458 069D     		ldr	r5, [sp, #24]
 1558 045a FFF7FEFF 		bl	_ZNK4Heat21GetStandbyTemperatureEa
 1559 045e FFF7FEFF 		bl	__aeabi_f2d
 1560 0462 5246     		mov	r2, r10
 1561 0464 CDE90001 		strd	r0, [sp]
 1562 0468 2846     		mov	r0, r5
 1563 046a 3449     		ldr	r1, .L387+52
 1564 046c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1565 0470 F38D     		ldrh	r3, [r6, #46]
 1566 0472 0134     		adds	r4, r4, #1
 1567 0474 A342     		cmp	r3, r4
 1568 0476 EBD8     		bhi	.L371
 1569 0478 0698     		ldr	r0, [sp, #24]
 1570 047a 2549     		ldr	r1, .L387+8
 1571              	.L318:
 1572 047c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1573 0480 0698     		ldr	r0, [sp, #24]
 1574 0482 3149     		ldr	r1, .L387+64
 1575 0484 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1576 0488 F38D     		ldrh	r3, [r6, #46]
 1577 048a 012B     		cmp	r3, #1
 1578 048c 40F20183 		bls	.L272
 1579 0490 0124     		movs	r4, #1
 1580 0492 4FF05B0A 		mov	r10, #91
 1581 0496 01E0     		b	.L274
 1582              	.L372:
 1583 0498 4FF02C0A 		mov	r10, #44
 1584              	.L274:
 1585 049c 61B2     		sxtb	r1, r4
 1586 049e F068     		ldr	r0, [r6, #12]
 1587 04a0 069D     		ldr	r5, [sp, #24]
 1588 04a2 FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 1589 04a6 5246     		mov	r2, r10
 1590 04a8 0346     		mov	r3, r0
 1591 04aa 2849     		ldr	r1, .L387+68
 1592 04ac 2846     		mov	r0, r5
 1593 04ae FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1594 04b2 F38D     		ldrh	r3, [r6, #46]
 1595 04b4 0134     		adds	r4, r4, #1
 1596 04b6 A342     		cmp	r3, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 29


 1597 04b8 EED8     		bhi	.L372
 1598 04ba 0698     		ldr	r0, [sp, #24]
 1599 04bc 1449     		ldr	r1, .L387+8
 1600              	.L319:
 1601 04be FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1602 04c2 2349     		ldr	r1, .L387+72
 1603 04c4 0698     		ldr	r0, [sp, #24]
 1604 04c6 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1605 04ca 3068     		ldr	r0, [r6]
 1606 04cc 069C     		ldr	r4, [sp, #24]
 1607 04ce FFF7FEFF 		bl	_ZN8Platform4TimeEv
 1608 04d2 FFF7FEFF 		bl	__aeabi_f2d
 1609 04d6 0246     		mov	r2, r0
 1610 04d8 0B46     		mov	r3, r1
 1611 04da 2046     		mov	r0, r4
 1612 04dc 1D49     		ldr	r1, .L387+76
 1613 04de FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1614 04e2 B9F1020F 		cmp	r9, #2
 1615 04e6 00F09C80 		beq	.L373
 1616 04ea B9F1030F 		cmp	r9, #3
 1617 04ee 00F01982 		beq	.L374
 1618              	.L283:
 1619 04f2 B8F1010F 		cmp	r8, #1
 1620 04f6 7FD0     		beq	.L308
 1621              	.L360:
 1622 04f8 0698     		ldr	r0, [sp, #24]
 1623              	.L309:
 1624 04fa 1749     		ldr	r1, .L387+80
 1625 04fc FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1626 0500 0698     		ldr	r0, [sp, #24]
 1627              	.L358:
 1628 0502 15B0     		add	sp, sp, #84
 1629              		@ sp needed
 1630 0504 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1631              	.L388:
 1632              		.align	2
 1633              	.L387:
 1634 0508 00005940 		.word	1079574528
 1635 050c 98030000 		.word	.LC41
 1636 0510 E4020000 		.word	.LC27
 1637 0514 C4030000 		.word	.LC43
 1638 0518 E4030000 		.word	.LC45
 1639 051c 48040000 		.word	.LC48
 1640 0520 58040000 		.word	.LC49
 1641 0524 68040000 		.word	.LC50
 1642 0528 74040000 		.word	.LC51
 1643 052c A8040000 		.word	.LC52
 1644 0530 C4040000 		.word	.LC53
 1645 0534 D4040000 		.word	.LC54
 1646 0538 E4040000 		.word	.LC55
 1647 053c 28030000 		.word	.LC32
 1648 0540 F8040000 		.word	.LC56
 1649 0544 04050000 		.word	.LC57
 1650 0548 10050000 		.word	.LC58
 1651 054c 14030000 		.word	.LC30
 1652 0550 1C050000 		.word	.LC59
 1653 0554 20050000 		.word	.LC60
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 30


 1654 0558 68030000 		.word	.LC38
 1655              	.L249:
 1656 055c 96F88C30 		ldrb	r3, [r6, #140]	@ zero_extendqisi2
 1657 0560 002B     		cmp	r3, #0
 1658 0562 3FF410AE 		beq	.L312
 1659 0566 0698     		ldr	r0, [sp, #24]
 1660 0568 9549     		ldr	r1, .L389
 1661 056a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1662              	.L313:
 1663 056e 0698     		ldr	r0, [sp, #24]
 1664 0570 9449     		ldr	r1, .L389+4
 1665 0572 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1666 0576 0123     		movs	r3, #1
 1667 0578 0093     		str	r3, [sp]
 1668 057a 06F18C01 		add	r1, r6, #140
 1669 057e 0698     		ldr	r0, [sp, #24]
 1670 0580 40F20112 		movw	r2, #257
 1671 0584 0023     		movs	r3, #0
 1672 0586 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 1673 058a 0023     		movs	r3, #0
 1674 058c 86F88C30 		strb	r3, [r6, #140]
 1675 0590 0698     		ldr	r0, [sp, #24]
 1676 0592 8D49     		ldr	r1, .L389+8
 1677 0594 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1678 0598 F5E5     		b	.L312
 1679              	.L241:
 1680 059a B368     		ldr	r3, [r6, #8]
 1681 059c 93F8BC3A 		ldrb	r3, [r3, #2748]	@ zero_extendqisi2
 1682 05a0 002B     		cmp	r3, #0
 1683 05a2 3FF4ACAD 		beq	.L245
 1684 05a6 0698     		ldr	r0, [sp, #24]
 1685 05a8 8849     		ldr	r1, .L389+12
 1686 05aa FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1687 05ae 736A     		ldr	r3, [r6, #36]
 1688 05b0 002B     		cmp	r3, #0
 1689 05b2 7FF4C0AD 		bne	.L375
 1690              	.L324:
 1691 05b6 4FF0FF32 		mov	r2, #-1
 1692 05ba BDE5     		b	.L248
 1693              	.L259:
 1694 05bc 099A     		ldr	r2, [sp, #36]
 1695 05be 0092     		str	r2, [sp]
 1696 05c0 0698     		ldr	r0, [sp, #24]
 1697 05c2 089B     		ldr	r3, [sp, #32]
 1698 05c4 8249     		ldr	r1, .L389+16
 1699 05c6 2246     		mov	r2, r4
 1700 05c8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1701 05cc 8BE6     		b	.L260
 1702              	.L258:
 1703 05ce 2246     		mov	r2, r4
 1704 05d0 0698     		ldr	r0, [sp, #24]
 1705 05d2 8049     		ldr	r1, .L389+20
 1706 05d4 089B     		ldr	r3, [sp, #32]
 1707 05d6 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1708 05da 84E6     		b	.L260
 1709              	.L368:
 1710 05dc 7369     		ldr	r3, [r6, #20]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 31


 1711 05de 0698     		ldr	r0, [sp, #24]
 1712 05e0 1B68     		ldr	r3, [r3]
 1713 05e2 7D49     		ldr	r1, .L389+24
 1714 05e4 D3F86C27 		ldr	r2, [r3, #1900]
 1715 05e8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1716 05ec 63E6     		b	.L256
 1717              	.L361:
 1718 05ee 3046     		mov	r0, r6
 1719 05f0 FFF7FEFF 		bl	_ZNK6RepRap18GetStatusCharacterEv.part.17
 1720 05f4 0246     		mov	r2, r0
 1721 05f6 15E5     		b	.L228
 1722              	.L308:
 1723 05f8 3368     		ldr	r3, [r6]
 1724 05fa 0698     		ldr	r0, [sp, #24]
 1725 05fc D3F83448 		ldr	r4, [r3, #2100]
 1726 0600 0022     		movs	r2, #0
 1727 0602 C3F83428 		str	r2, [r3, #2100]
 1728 0606 0028     		cmp	r0, #0
 1729 0608 3FF477AF 		beq	.L309
 1730 060c D3F83828 		ldr	r2, [r3, #2104]
 1731 0610 7249     		ldr	r1, .L389+28
 1732 0612 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1733 0616 2146     		mov	r1, r4
 1734 0618 4246     		mov	r2, r8
 1735 061a 0698     		ldr	r0, [sp, #24]
 1736 061c FFF7FEFF 		bl	_ZN12OutputBuffer11EncodeReplyEPS_b
 1737 0620 6AE7     		b	.L360
 1738              	.L373:
 1739 0622 F368     		ldr	r3, [r6, #12]
 1740 0624 0698     		ldr	r0, [sp, #24]
 1741 0626 93F82D30 		ldrb	r3, [r3, #45]	@ zero_extendqisi2
 1742 062a 0022     		movs	r2, #0
 1743 062c 002B     		cmp	r3, #0
 1744 062e 40F0A180 		bne	.L376
 1745 0632 6B4B     		ldr	r3, .L389+32
 1746              	.L276:
 1747 0634 6B49     		ldr	r1, .L389+36
 1748 0636 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1749 063a F368     		ldr	r3, [r6, #12]
 1750 063c 0698     		ldr	r0, [sp, #24]
 1751 063e 93F82D30 		ldrb	r3, [r3, #45]	@ zero_extendqisi2
 1752 0642 0022     		movs	r2, #0
 1753 0644 002B     		cmp	r3, #0
 1754 0646 00F06881 		beq	.L326
 1755 064a 0023     		movs	r3, #0
 1756              	.L277:
 1757 064c 6649     		ldr	r1, .L389+40
 1758 064e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1759 0652 F068     		ldr	r0, [r6, #12]
 1760 0654 069C     		ldr	r4, [sp, #24]
 1761 0656 FFF7FEFF 		bl	_ZNK4Heat26GetHighestTemperatureLimitEv
 1762 065a FFF7FEFF 		bl	__aeabi_f2d
 1763 065e 0246     		mov	r2, r0
 1764 0660 0B46     		mov	r3, r1
 1765 0662 2046     		mov	r0, r4
 1766 0664 6149     		ldr	r1, .L389+44
 1767 0666 0024     		movs	r4, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 32


 1768 0668 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1769 066c 2546     		mov	r5, r4
 1770 066e 4FF00109 		mov	r9, #1
 1771 0672 02E0     		b	.L280
 1772              	.L278:
 1773 0674 0134     		adds	r4, r4, #1
 1774 0676 0A2C     		cmp	r4, #10
 1775 0678 0DD0     		beq	.L377
 1776              	.L280:
 1777 067a 3068     		ldr	r0, [r6]
 1778 067c 2146     		mov	r1, r4
 1779 067e FFF7FEFF 		bl	_ZNK8Platform7StoppedEj
 1780 0682 0138     		subs	r0, r0, #1
 1781 0684 0128     		cmp	r0, #1
 1782 0686 F5D8     		bhi	.L278
 1783 0688 09FA04F3 		lsl	r3, r9, r4
 1784 068c 0134     		adds	r4, r4, #1
 1785 068e 1D43     		orrs	r5, r5, r3
 1786 0690 0A2C     		cmp	r4, #10
 1787 0692 ADB2     		uxth	r5, r5
 1788 0694 F1D1     		bne	.L280
 1789              	.L377:
 1790 0696 2A46     		mov	r2, r5
 1791 0698 5549     		ldr	r1, .L389+48
 1792 069a 0698     		ldr	r0, [sp, #24]
 1793 069c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1794 06a0 B068     		ldr	r0, [r6, #8]
 1795 06a2 069C     		ldr	r4, [sp, #24]
 1796 06a4 FFF7FEFF 		bl	_ZNK4Move17GetGeometryStringEv
 1797 06a8 524A     		ldr	r2, .L389+52
 1798 06aa 0097     		str	r7, [sp]
 1799 06ac 0346     		mov	r3, r0
 1800 06ae 5249     		ldr	r1, .L389+56
 1801 06b0 2046     		mov	r0, r4
 1802 06b2 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1803 06b6 3368     		ldr	r3, [r6]
 1804 06b8 D3F83C38 		ldr	r3, [r3, #2108]
 1805 06bc 93F88924 		ldrb	r2, [r3, #1161]	@ zero_extendqisi2
 1806 06c0 93F88834 		ldrb	r3, [r3, #1160]	@ zero_extendqisi2
 1807 06c4 0AB1     		cbz	r2, .L314
 1808 06c6 43F00203 		orr	r3, r3, #2
 1809              	.L314:
 1810 06ca 0222     		movs	r2, #2
 1811 06cc 4B49     		ldr	r1, .L389+60
 1812 06ce 0698     		ldr	r0, [sp, #24]
 1813 06d0 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1814 06d4 4A49     		ldr	r1, .L389+64
 1815 06d6 0698     		ldr	r0, [sp, #24]
 1816 06d8 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1817 06dc 0123     		movs	r3, #1
 1818 06de 2922     		movs	r2, #41
 1819 06e0 0093     		str	r3, [sp]
 1820 06e2 06F15B01 		add	r1, r6, #91
 1821 06e6 0023     		movs	r3, #0
 1822 06e8 0698     		ldr	r0, [sp, #24]
 1823 06ea FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 1824 06ee 3068     		ldr	r0, [r6]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 33


 1825 06f0 D0F89010 		ldr	r1, [r0, #144]
 1826 06f4 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersEl
 1827 06f8 C468     		ldr	r4, [r0, #12]	@ float
 1828 06fa 0268     		ldr	r2, [r0]
 1829 06fc 4149     		ldr	r1, .L389+68
 1830 06fe 0698     		ldr	r0, [sp, #24]
 1831 0700 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1832 0704 2046     		mov	r0, r4	@ float
 1833 0706 FFF7FEFF 		bl	__aeabi_f2d
 1834 070a 069C     		ldr	r4, [sp, #24]
 1835 070c 0246     		mov	r2, r0
 1836 070e 0B46     		mov	r3, r1
 1837 0710 2046     		mov	r0, r4
 1838 0712 3D49     		ldr	r1, .L389+72
 1839 0714 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1840 0718 3368     		ldr	r3, [r6]
 1841 071a 3C49     		ldr	r1, .L389+76
 1842 071c D3F89020 		ldr	r2, [r3, #144]
 1843 0720 0698     		ldr	r0, [sp, #24]
 1844 0722 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1845 0726 0698     		ldr	r0, [sp, #24]
 1846 0728 3949     		ldr	r1, .L389+80
 1847 072a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1848 072e 356A     		ldr	r5, [r6, #32]
 1849 0730 002D     		cmp	r5, #0
 1850 0732 00F09B80 		beq	.L296
 1851              	.L297:
 1852 0736 0698     		ldr	r0, [sp, #24]
 1853 0738 3649     		ldr	r1, .L389+84
 1854 073a 6A68     		ldr	r2, [r5, #4]
 1855 073c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1856 0740 2F46     		mov	r7, r5
 1857 0742 D5F8A430 		ldr	r3, [r5, #164]
 1858 0746 0024     		movs	r4, #0
 1859 0748 00E0     		b	.L284
 1860              	.L285:
 1861 074a 0437     		adds	r7, r7, #4
 1862              	.L284:
 1863 074c 9C42     		cmp	r4, r3
 1864 074e 3249     		ldr	r1, .L389+88
 1865 0750 0698     		ldr	r0, [sp, #24]
 1866 0752 04F10104 		add	r4, r4, #1
 1867 0756 19D2     		bcs	.L378
 1868 0758 7A6C     		ldr	r2, [r7, #68]
 1869 075a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1870 075e D5F8A430 		ldr	r3, [r5, #164]
 1871 0762 9C42     		cmp	r4, r3
 1872 0764 F1D2     		bcs	.L285
 1873 0766 0698     		ldr	r0, [sp, #24]
 1874 0768 2C49     		ldr	r1, .L389+92
 1875 076a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1876 076e D5F8A430 		ldr	r3, [r5, #164]
 1877 0772 EAE7     		b	.L285
 1878              	.L376:
 1879 0774 0023     		movs	r3, #0
 1880 0776 5DE7     		b	.L276
 1881              	.L365:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 34


 1882 0778 0698     		ldr	r0, [sp, #24]
 1883 077a 2849     		ldr	r1, .L389+92
 1884 077c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1885 0780 0023     		movs	r3, #0
 1886 0782 C6F88830 		str	r3, [r6, #136]
 1887 0786 C6F88430 		str	r3, [r6, #132]
 1888 078a F0E6     		b	.L313
 1889              	.L378:
 1890 078c 2449     		ldr	r1, .L389+96
 1891 078e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1892 0792 2F46     		mov	r7, r5
 1893 0794 2B6C     		ldr	r3, [r5, #64]
 1894 0796 0024     		movs	r4, #0
 1895 0798 00E0     		b	.L287
 1896              	.L288:
 1897 079a 0437     		adds	r7, r7, #4
 1898              	.L287:
 1899 079c 9C42     		cmp	r4, r3
 1900 079e 1E49     		ldr	r1, .L389+88
 1901 07a0 0698     		ldr	r0, [sp, #24]
 1902 07a2 04F10104 		add	r4, r4, #1
 1903 07a6 3DD2     		bcs	.L379
 1904 07a8 BA68     		ldr	r2, [r7, #8]
 1905 07aa FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1906 07ae 2B6C     		ldr	r3, [r5, #64]
 1907 07b0 9C42     		cmp	r4, r3
 1908 07b2 F2D2     		bcs	.L288
 1909 07b4 0698     		ldr	r0, [sp, #24]
 1910 07b6 1949     		ldr	r1, .L389+92
 1911 07b8 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1912 07bc 2B6C     		ldr	r3, [r5, #64]
 1913 07be ECE7     		b	.L288
 1914              	.L390:
 1915              		.align	2
 1916              	.L389:
 1917 07c0 F8070000 		.word	.LC94
 1918 07c4 5C030000 		.word	.LC37
 1919 07c8 68030000 		.word	.LC38
 1920 07cc E8070000 		.word	.LC93
 1921 07d0 1C040000 		.word	.LC47
 1922 07d4 F4030000 		.word	.LC46
 1923 07d8 D8030000 		.word	.LC44
 1924 07dc D4070000 		.word	.LC92
 1925 07e0 00006440 		.word	1080295424
 1926 07e4 30050000 		.word	.LC61
 1927 07e8 48050000 		.word	.LC62
 1928 07ec 60050000 		.word	.LC63
 1929 07f0 74050000 		.word	.LC64
 1930 07f4 B8000000 		.word	.LC5
 1931 07f8 84050000 		.word	.LC65
 1932 07fc B4050000 		.word	.LC66
 1933 0800 D8050000 		.word	.LC67
 1934 0804 E4050000 		.word	.LC68
 1935 0808 00060000 		.word	.LC69
 1936 080c 10060000 		.word	.LC70
 1937 0810 1C060000 		.word	.LC71
 1938 0814 84060000 		.word	.LC74
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 35


 1939 0818 A0060000 		.word	.LC75
 1940 081c 58030000 		.word	.LC36
 1941 0820 A4060000 		.word	.LC76
 1942              	.L379:
 1943 0824 A749     		ldr	r1, .L391
 1944 0826 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1945 082a 0121     		movs	r1, #1
 1946 082c 0F46     		mov	r7, r1
 1947 082e 0024     		movs	r4, #0
 1948              	.L293:
 1949 0830 D5F8C030 		ldr	r3, [r5, #192]
 1950 0834 07FA04F2 		lsl	r2, r7, r4
 1951 0838 1A42     		tst	r2, r3
 1952 083a 07D0     		beq	.L290
 1953 083c 0029     		cmp	r1, #0
 1954 083e 52D0     		beq	.L380
 1955              	.L291:
 1956 0840 A149     		ldr	r1, .L391+4
 1957 0842 0698     		ldr	r0, [sp, #24]
 1958 0844 2246     		mov	r2, r4
 1959 0846 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1960 084a 0021     		movs	r1, #0
 1961              	.L290:
 1962 084c 0134     		adds	r4, r4, #1
 1963 084e 062C     		cmp	r4, #6
 1964 0850 EED1     		bne	.L293
 1965 0852 D5F8C830 		ldr	r3, [r5, #200]
 1966 0856 0698     		ldr	r0, [sp, #24]
 1967 0858 002B     		cmp	r3, #0
 1968 085a 49D0     		beq	.L294
 1969 085c 9B49     		ldr	r1, .L391+8
 1970 085e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1971              	.L295:
 1972 0862 D5F8C850 		ldr	r5, [r5, #200]
 1973 0866 002D     		cmp	r5, #0
 1974 0868 7FF465AF 		bne	.L297
 1975              	.L296:
 1976 086c 0698     		ldr	r0, [sp, #24]
 1977 086e 9849     		ldr	r1, .L391+12
 1978 0870 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1979 0874 08AA     		add	r2, sp, #32
 1980 0876 09AB     		add	r3, sp, #36
 1981 0878 07A9     		add	r1, sp, #28
 1982 087a 3068     		ldr	r0, [r6]
 1983 087c FFF7FEFF 		bl	_ZNK8Platform18GetMcuTemperaturesERfS0_S0_
 1984 0880 0798     		ldr	r0, [sp, #28]	@ float
 1985 0882 069F     		ldr	r7, [sp, #24]
 1986 0884 FFF7FEFF 		bl	__aeabi_f2d
 1987 0888 0446     		mov	r4, r0
 1988 088a 0898     		ldr	r0, [sp, #32]	@ float
 1989 088c 0D46     		mov	r5, r1
 1990 088e FFF7FEFF 		bl	__aeabi_f2d
 1991 0892 CDE90001 		strd	r0, [sp]
 1992 0896 0998     		ldr	r0, [sp, #36]	@ float
 1993 0898 FFF7FEFF 		bl	__aeabi_f2d
 1994 089c 2246     		mov	r2, r4
 1995 089e CDE90201 		strd	r0, [sp, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 36


 1996 08a2 2B46     		mov	r3, r5
 1997 08a4 3846     		mov	r0, r7
 1998 08a6 8B49     		ldr	r1, .L391+16
 1999 08a8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2000 08ac 08AA     		add	r2, sp, #32
 2001 08ae 09AB     		add	r3, sp, #36
 2002 08b0 07A9     		add	r1, sp, #28
 2003 08b2 3068     		ldr	r0, [r6]
 2004 08b4 FFF7FEFF 		bl	_ZNK8Platform16GetPowerVoltagesERfS0_S0_
 2005 08b8 0798     		ldr	r0, [sp, #28]	@ float
 2006 08ba 069F     		ldr	r7, [sp, #24]
 2007 08bc FFF7FEFF 		bl	__aeabi_f2d
 2008 08c0 0446     		mov	r4, r0
 2009 08c2 0898     		ldr	r0, [sp, #32]	@ float
 2010 08c4 0D46     		mov	r5, r1
 2011 08c6 FFF7FEFF 		bl	__aeabi_f2d
 2012 08ca CDE90001 		strd	r0, [sp]
 2013 08ce 0998     		ldr	r0, [sp, #36]	@ float
 2014 08d0 FFF7FEFF 		bl	__aeabi_f2d
 2015 08d4 2246     		mov	r2, r4
 2016 08d6 CDE90201 		strd	r0, [sp, #8]
 2017 08da 2B46     		mov	r3, r5
 2018 08dc 3846     		mov	r0, r7
 2019 08de 7E49     		ldr	r1, .L391+20
 2020 08e0 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2021 08e4 05E6     		b	.L283
 2022              	.L380:
 2023 08e6 0698     		ldr	r0, [sp, #24]
 2024 08e8 7C49     		ldr	r1, .L391+24
 2025 08ea FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2026 08ee A7E7     		b	.L291
 2027              	.L294:
 2028 08f0 7B49     		ldr	r1, .L391+28
 2029 08f2 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2030 08f6 B4E7     		b	.L295
 2031              	.L323:
 2032 08f8 0122     		movs	r2, #1
 2033 08fa 09A9     		add	r1, sp, #36
 2034 08fc FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfm
 2035 0900 726A     		ldr	r2, [r6, #36]
 2036 0902 002A     		cmp	r2, #0
 2037 0904 7FF4A4AB 		bne	.L381
 2038              	.L230:
 2039 0908 0698     		ldr	r0, [sp, #24]
 2040 090a 7649     		ldr	r1, .L391+32
 2041 090c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2042 0910 002F     		cmp	r7, #0
 2043 0912 7FF4B2AB 		bne	.L234
 2044 0916 FFF7C6BB 		b	.L235
 2045              	.L326:
 2046 091a 734B     		ldr	r3, .L391+36
 2047 091c 96E6     		b	.L277
 2048              	.L253:
 2049 091e 0698     		ldr	r0, [sp, #24]
 2050 0920 7249     		ldr	r1, .L391+40
 2051 0922 B6E4     		b	.L315
 2052              	.L374:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 37


 2053 0924 F369     		ldr	r3, [r6, #28]
 2054 0926 0698     		ldr	r0, [sp, #24]
 2055 0928 5A6A     		ldr	r2, [r3, #36]
 2056 092a 7149     		ldr	r1, .L391+44
 2057 092c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2058 0930 F469     		ldr	r4, [r6, #28]
 2059 0932 069D     		ldr	r5, [sp, #24]
 2060 0934 D4ED0E7A 		flds	s15, [r4, #56]
 2061 0938 F5EEC07A 		fcmpezs	s15
 2062 093c F1EE10FA 		fmstat
 2063 0940 40F3B980 		ble	.L356
 2064 0944 2046     		mov	r0, r4
 2065 0946 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv
 2066 094a D4ED0E7A 		flds	s15, [r4, #56]
 2067 094e 07EE100A 		fmsr	s14, r0
 2068 0952 37EE677A 		fsubs	s14, s14, s15
 2069 0956 17EE100A 		fmrs	r0, s14
 2070 095a FFF7FEFF 		bl	__aeabi_f2d
 2071 095e 0246     		mov	r2, r0
 2072 0960 0B46     		mov	r3, r1
 2073              	.L298:
 2074 0962 6449     		ldr	r1, .L391+48
 2075 0964 2846     		mov	r0, r5
 2076 0966 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2077 096a 0698     		ldr	r0, [sp, #24]
 2078 096c 6249     		ldr	r1, .L391+52
 2079 096e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2080 0972 B38D     		ldrh	r3, [r6, #44]
 2081 0974 002B     		cmp	r3, #0
 2082 0976 00F0E480 		beq	.L300
 2083 097a 0024     		movs	r4, #0
 2084 097c 5B27     		movs	r7, #91
 2085 097e 00E0     		b	.L302
 2086              	.L382:
 2087 0980 2C27     		movs	r7, #44
 2088              	.L302:
 2089 0982 2146     		mov	r1, r4
 2090 0984 3069     		ldr	r0, [r6, #16]
 2091 0986 069D     		ldr	r5, [sp, #24]
 2092 0988 FFF7FEFF 		bl	_ZNK6GCodes26GetRawExtruderTotalByDriveEj
 2093 098c FFF7FEFF 		bl	__aeabi_f2d
 2094 0990 3A46     		mov	r2, r7
 2095 0992 CDE90001 		strd	r0, [sp]
 2096 0996 2846     		mov	r0, r5
 2097 0998 5849     		ldr	r1, .L391+56
 2098 099a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2099 099e B38D     		ldrh	r3, [r6, #44]
 2100 09a0 0134     		adds	r4, r4, #1
 2101 09a2 A342     		cmp	r3, r4
 2102 09a4 ECD8     		bhi	.L382
 2103              	.L301:
 2104 09a6 F369     		ldr	r3, [r6, #28]
 2105 09a8 069C     		ldr	r4, [sp, #24]
 2106 09aa 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 2107 09ac 002B     		cmp	r3, #0
 2108 09ae 40F0BC80 		bne	.L383
 2109 09b2 0022     		movs	r2, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 38


 2110 09b4 0023     		movs	r3, #0
 2111              	.L303:
 2112 09b6 2046     		mov	r0, r4
 2113 09b8 5149     		ldr	r1, .L391+60
 2114 09ba FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2115 09be F469     		ldr	r4, [r6, #28]
 2116 09c0 069D     		ldr	r5, [sp, #24]
 2117 09c2 D4ED0B7A 		flds	s15, [r4, #44]
 2118 09c6 F5EEC07A 		fcmpezs	s15
 2119 09ca F1EE10FA 		fmstat
 2120 09ce 40F3A780 		ble	.L357
 2121 09d2 17EE900A 		fmrs	r0, s15
 2122 09d6 FFF7FEFF 		bl	__aeabi_f2d
 2123 09da 0246     		mov	r2, r0
 2124 09dc 0B46     		mov	r3, r1
 2125              	.L306:
 2126 09de 2846     		mov	r0, r5
 2127 09e0 4849     		ldr	r1, .L391+64
 2128 09e2 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2129 09e6 F369     		ldr	r3, [r6, #28]
 2130 09e8 069C     		ldr	r4, [sp, #24]
 2131 09ea 93F8C821 		ldrb	r2, [r3, #456]	@ zero_extendqisi2
 2132 09ee 002A     		cmp	r2, #0
 2133 09f0 64D0     		beq	.L332
 2134 09f2 D3F8D801 		ldr	r0, [r3, #472]	@ float
 2135 09f6 FFF7FEFF 		bl	__aeabi_f2d
 2136 09fa 0246     		mov	r2, r0
 2137 09fc 0B46     		mov	r3, r1
 2138              	.L307:
 2139 09fe 4249     		ldr	r1, .L391+68
 2140 0a00 2046     		mov	r0, r4
 2141 0a02 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2142 0a06 F069     		ldr	r0, [r6, #28]
 2143 0a08 069C     		ldr	r4, [sp, #24]
 2144 0a0a FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv
 2145 0a0e FFF7FEFF 		bl	__aeabi_f2d
 2146 0a12 0246     		mov	r2, r0
 2147 0a14 0B46     		mov	r3, r1
 2148 0a16 2046     		mov	r0, r4
 2149 0a18 3C49     		ldr	r1, .L391+72
 2150 0a1a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2151 0a1e F069     		ldr	r0, [r6, #28]
 2152 0a20 069C     		ldr	r4, [sp, #24]
 2153 0a22 FFF7FEFF 		bl	_ZNK12PrintMonitor17GetWarmUpDurationEv
 2154 0a26 FFF7FEFF 		bl	__aeabi_f2d
 2155 0a2a 0246     		mov	r2, r0
 2156 0a2c 0B46     		mov	r3, r1
 2157 0a2e 2046     		mov	r0, r4
 2158 0a30 3749     		ldr	r1, .L391+76
 2159 0a32 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2160 0a36 F069     		ldr	r0, [r6, #28]
 2161 0a38 069C     		ldr	r4, [sp, #24]
 2162 0a3a 0121     		movs	r1, #1
 2163 0a3c FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 2164 0a40 FFF7FEFF 		bl	__aeabi_f2d
 2165 0a44 0246     		mov	r2, r0
 2166 0a46 0B46     		mov	r3, r1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 39


 2167 0a48 2046     		mov	r0, r4
 2168 0a4a 3249     		ldr	r1, .L391+80
 2169 0a4c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2170 0a50 F069     		ldr	r0, [r6, #28]
 2171 0a52 069C     		ldr	r4, [sp, #24]
 2172 0a54 0021     		movs	r1, #0
 2173 0a56 FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 2174 0a5a FFF7FEFF 		bl	__aeabi_f2d
 2175 0a5e 0246     		mov	r2, r0
 2176 0a60 0B46     		mov	r3, r1
 2177 0a62 2046     		mov	r0, r4
 2178 0a64 2C49     		ldr	r1, .L391+84
 2179 0a66 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2180 0a6a F069     		ldr	r0, [r6, #28]
 2181 0a6c 069C     		ldr	r4, [sp, #24]
 2182 0a6e 0221     		movs	r1, #2
 2183 0a70 FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 2184 0a74 FFF7FEFF 		bl	__aeabi_f2d
 2185 0a78 0246     		mov	r2, r0
 2186 0a7a 0B46     		mov	r3, r1
 2187 0a7c 2046     		mov	r0, r4
 2188 0a7e 2749     		ldr	r1, .L391+88
 2189 0a80 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2190 0a84 35E5     		b	.L283
 2191              	.L266:
 2192 0a86 0698     		ldr	r0, [sp, #24]
 2193 0a88 1849     		ldr	r1, .L391+40
 2194 0a8a D3E4     		b	.L317
 2195              	.L263:
 2196 0a8c 0698     		ldr	r0, [sp, #24]
 2197 0a8e 1749     		ldr	r1, .L391+40
 2198 0a90 ACE4     		b	.L316
 2199              	.L272:
 2200 0a92 0698     		ldr	r0, [sp, #24]
 2201 0a94 1549     		ldr	r1, .L391+40
 2202 0a96 12E5     		b	.L319
 2203              	.L269:
 2204 0a98 0698     		ldr	r0, [sp, #24]
 2205 0a9a 1449     		ldr	r1, .L391+40
 2206 0a9c EEE4     		b	.L318
 2207              	.L238:
 2208 0a9e 0698     		ldr	r0, [sp, #24]
 2209 0aa0 5B21     		movs	r1, #91
 2210 0aa2 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 2211 0aa6 FFF720BB 		b	.L239
 2212              	.L231:
 2213 0aaa 0698     		ldr	r0, [sp, #24]
 2214 0aac 0D49     		ldr	r1, .L391+32
 2215 0aae FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2216 0ab2 FFF7F8BA 		b	.L235
 2217              	.L356:
 2218 0ab6 0022     		movs	r2, #0
 2219 0ab8 0023     		movs	r3, #0
 2220 0aba 52E7     		b	.L298
 2221              	.L332:
 2222 0abc 0022     		movs	r2, #0
 2223 0abe 0023     		movs	r3, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 40


 2224 0ac0 9DE7     		b	.L307
 2225              	.L392:
 2226 0ac2 00BF     		.align	2
 2227              	.L391:
 2228 0ac4 B4060000 		.word	.LC77
 2229 0ac8 C4060000 		.word	.LC78
 2230 0acc C8060000 		.word	.LC79
 2231 0ad0 E4020000 		.word	.LC27
 2232 0ad4 28060000 		.word	.LC72
 2233 0ad8 58060000 		.word	.LC73
 2234 0adc 58030000 		.word	.LC36
 2235 0ae0 D0060000 		.word	.LC80
 2236 0ae4 04030000 		.word	.LC29
 2237 0ae8 00805640 		.word	1079410688
 2238 0aec E0020000 		.word	.LC26
 2239 0af0 D4060000 		.word	.LC81
 2240 0af4 E8060000 		.word	.LC82
 2241 0af8 04070000 		.word	.LC83
 2242 0afc 28030000 		.word	.LC32
 2243 0b00 10070000 		.word	.LC84
 2244 0b04 2C070000 		.word	.LC85
 2245 0b08 48070000 		.word	.LC86
 2246 0b0c 64070000 		.word	.LC87
 2247 0b10 7C070000 		.word	.LC88
 2248 0b14 94070000 		.word	.LC89
 2249 0b18 B0070000 		.word	.LC90
 2250 0b1c C4070000 		.word	.LC91
 2251              	.L357:
 2252 0b20 636A     		ldr	r3, [r4, #36]
 2253 0b22 9BB9     		cbnz	r3, .L384
 2254 0b24 0022     		movs	r2, #0
 2255 0b26 0023     		movs	r3, #0
 2256 0b28 59E7     		b	.L306
 2257              	.L383:
 2258 0b2a 3069     		ldr	r0, [r6, #16]
 2259 0b2c FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 2260 0b30 FFF7FEFF 		bl	__aeabi_f2d
 2261 0b34 0022     		movs	r2, #0
 2262 0b36 0D4B     		ldr	r3, .L393
 2263 0b38 FFF7FEFF 		bl	__aeabi_dmul
 2264 0b3c 0246     		mov	r2, r0
 2265 0b3e 0B46     		mov	r3, r1
 2266 0b40 39E7     		b	.L303
 2267              	.L300:
 2268 0b42 0698     		ldr	r0, [sp, #24]
 2269 0b44 5B21     		movs	r1, #91
 2270 0b46 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 2271 0b4a 2CE7     		b	.L301
 2272              	.L384:
 2273 0b4c 2046     		mov	r0, r4
 2274 0b4e FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv
 2275 0b52 D4ED0A7A 		flds	s15, [r4, #40]
 2276 0b56 07EE100A 		fmsr	s14, r0
 2277 0b5a 37EE677A 		fsubs	s14, s14, s15
 2278 0b5e 17EE100A 		fmrs	r0, s14
 2279 0b62 FFF7FEFF 		bl	__aeabi_f2d
 2280 0b66 0246     		mov	r2, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 41


 2281 0b68 0B46     		mov	r3, r1
 2282 0b6a 38E7     		b	.L306
 2283              	.L394:
 2284              		.align	2
 2285              	.L393:
 2286 0b6c 00005940 		.word	1079574528
 2287              		.size	_ZN6RepRap17GetStatusResponseEh14ResponseSource, .-_ZN6RepRap17GetStatusResponseEh14Response
 2288              		.section	.text._ZN6RepRap17GetConfigResponseEv,"ax",%progbits
 2289              		.align	2
 2290              		.global	_ZN6RepRap17GetConfigResponseEv
 2291              		.thumb
 2292              		.thumb_func
 2293              		.type	_ZN6RepRap17GetConfigResponseEv, %function
 2294              	_ZN6RepRap17GetConfigResponseEv:
 2295              		@ args = 0, pretend = 0, frame = 8
 2296              		@ frame_needed = 0, uses_anonymous_args = 0
 2297 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2298 0004 84B0     		sub	sp, sp, #16
 2299 0006 0446     		mov	r4, r0
 2300 0008 03A8     		add	r0, sp, #12
 2301 000a FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2302 000e 0028     		cmp	r0, #0
 2303 0010 00F0EB80 		beq	.L416
 2304 0014 794B     		ldr	r3, .L422
 2305 0016 0398     		ldr	r0, [sp, #12]
 2306 0018 1B69     		ldr	r3, [r3, #16]
 2307 001a 7949     		ldr	r1, .L422+4
 2308 001c D3F8B061 		ldr	r6, [r3, #432]
 2309 0020 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 2310 0024 002E     		cmp	r6, #0
 2311 0026 00F0E380 		beq	.L397
 2312 002a 0025     		movs	r5, #0
 2313 002c 4FF05B08 		mov	r8, #91
 2314 0030 01E0     		b	.L399
 2315              	.L417:
 2316 0032 4FF02C08 		mov	r8, #44
 2317              	.L399:
 2318 0036 2368     		ldr	r3, [r4]
 2319 0038 039F     		ldr	r7, [sp, #12]
 2320 003a 05F5A771 		add	r1, r5, #334
 2321 003e 03EB8103 		add	r3, r3, r1, lsl #2
 2322 0042 0135     		adds	r5, r5, #1
 2323 0044 1868     		ldr	r0, [r3]	@ float
 2324 0046 FFF7FEFF 		bl	__aeabi_f2d
 2325 004a 4246     		mov	r2, r8
 2326 004c CDE90001 		strd	r0, [sp]
 2327 0050 3846     		mov	r0, r7
 2328 0052 6C49     		ldr	r1, .L422+8
 2329 0054 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2330 0058 B542     		cmp	r5, r6
 2331 005a EAD1     		bne	.L417
 2332 005c 0398     		ldr	r0, [sp, #12]
 2333 005e 6A49     		ldr	r1, .L422+12
 2334 0060 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2335 0064 0025     		movs	r5, #0
 2336 0066 4FF05B08 		mov	r8, #91
 2337 006a 01E0     		b	.L411
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 42


 2338              	.L400:
 2339 006c 4FF02C08 		mov	r8, #44
 2340              	.L411:
 2341 0070 2368     		ldr	r3, [r4]
 2342 0072 039F     		ldr	r7, [sp, #12]
 2343 0074 05F5A471 		add	r1, r5, #328
 2344 0078 03EB8103 		add	r3, r3, r1, lsl #2
 2345 007c 0135     		adds	r5, r5, #1
 2346 007e 1868     		ldr	r0, [r3]	@ float
 2347 0080 FFF7FEFF 		bl	__aeabi_f2d
 2348 0084 4246     		mov	r2, r8
 2349 0086 CDE90001 		strd	r0, [sp]
 2350 008a 3846     		mov	r0, r7
 2351 008c 5D49     		ldr	r1, .L422+8
 2352 008e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2353 0092 B542     		cmp	r5, r6
 2354 0094 EAD1     		bne	.L400
 2355              	.L410:
 2356 0096 0398     		ldr	r0, [sp, #12]
 2357 0098 5C49     		ldr	r1, .L422+16
 2358 009a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2359 009e 0025     		movs	r5, #0
 2360 00a0 5B27     		movs	r7, #91
 2361 00a2 00E0     		b	.L402
 2362              	.L418:
 2363 00a4 2C27     		movs	r7, #44
 2364              	.L402:
 2365 00a6 2368     		ldr	r3, [r4]
 2366 00a8 039E     		ldr	r6, [sp, #12]
 2367 00aa 03EB8503 		add	r3, r3, r5, lsl #2
 2368 00ae 0135     		adds	r5, r5, #1
 2369 00b0 D3F81801 		ldr	r0, [r3, #280]	@ float
 2370 00b4 FFF7FEFF 		bl	__aeabi_f2d
 2371 00b8 3A46     		mov	r2, r7
 2372 00ba CDE90001 		strd	r0, [sp]
 2373 00be 3046     		mov	r0, r6
 2374 00c0 5049     		ldr	r1, .L422+8
 2375 00c2 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2376 00c6 0A2D     		cmp	r5, #10
 2377 00c8 ECD1     		bne	.L418
 2378 00ca 0398     		ldr	r0, [sp, #12]
 2379 00cc 5049     		ldr	r1, .L422+20
 2380 00ce FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2381 00d2 0025     		movs	r5, #0
 2382 00d4 5B27     		movs	r7, #91
 2383 00d6 00E0     		b	.L404
 2384              	.L419:
 2385 00d8 2C27     		movs	r7, #44
 2386              	.L404:
 2387 00da 2946     		mov	r1, r5
 2388 00dc 0022     		movs	r2, #0
 2389 00de 2068     		ldr	r0, [r4]
 2390 00e0 039E     		ldr	r6, [sp, #12]
 2391 00e2 FFF7FEFF 		bl	_ZNK8Platform15GetMotorCurrentEjb
 2392 00e6 FFF7FEFF 		bl	__aeabi_f2d
 2393 00ea 0135     		adds	r5, r5, #1
 2394 00ec CDE90001 		strd	r0, [sp]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 43


 2395 00f0 3A46     		mov	r2, r7
 2396 00f2 3046     		mov	r0, r6
 2397 00f4 4349     		ldr	r1, .L422+8
 2398 00f6 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2399 00fa 0A2D     		cmp	r5, #10
 2400 00fc ECD1     		bne	.L419
 2401 00fe 2068     		ldr	r0, [r4]
 2402 0100 039D     		ldr	r5, [sp, #12]
 2403 0102 FFF7FEFF 		bl	_ZNK8Platform20GetElectronicsStringEv
 2404 0106 4349     		ldr	r1, .L422+24
 2405 0108 0246     		mov	r2, r0
 2406 010a 2846     		mov	r0, r5
 2407 010c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2408 0110 FFF7FEFF 		bl	_ZN13DuetExpansion21GetExpansionBoardNameEv
 2409 0114 20B1     		cbz	r0, .L405
 2410 0116 0246     		mov	r2, r0
 2411 0118 3F49     		ldr	r1, .L422+28
 2412 011a 0398     		ldr	r0, [sp, #12]
 2413 011c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2414              	.L405:
 2415 0120 3E49     		ldr	r1, .L422+32
 2416 0122 3F4A     		ldr	r2, .L422+36
 2417 0124 0398     		ldr	r0, [sp, #12]
 2418 0126 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2419 012a 3E49     		ldr	r1, .L422+40
 2420 012c 3E4A     		ldr	r2, .L422+44
 2421 012e 0398     		ldr	r0, [sp, #12]
 2422 0130 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2423 0134 3D4A     		ldr	r2, .L422+48
 2424 0136 3E49     		ldr	r1, .L422+52
 2425 0138 0398     		ldr	r0, [sp, #12]
 2426 013a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2427 013e 2368     		ldr	r3, [r4]
 2428 0140 039D     		ldr	r5, [sp, #12]
 2429 0142 D3F86C02 		ldr	r0, [r3, #620]	@ float
 2430 0146 FFF7FEFF 		bl	__aeabi_f2d
 2431 014a 0022     		movs	r2, #0
 2432 014c 394B     		ldr	r3, .L422+56
 2433 014e FFF7FEFF 		bl	__aeabi_dmul
 2434 0152 0246     		mov	r2, r0
 2435 0154 0B46     		mov	r3, r1
 2436 0156 2846     		mov	r0, r5
 2437 0158 3749     		ldr	r1, .L422+60
 2438 015a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2439 015e A368     		ldr	r3, [r4, #8]
 2440 0160 039E     		ldr	r6, [sp, #12]
 2441 0162 03F67423 		addw	r3, r3, #2676
 2442 0166 0025     		movs	r5, #0
 2443 0168 1868     		ldr	r0, [r3]	@ float
 2444 016a FFF7FEFF 		bl	__aeabi_f2d
 2445 016e 0246     		mov	r2, r0
 2446 0170 0B46     		mov	r3, r1
 2447 0172 3046     		mov	r0, r6
 2448 0174 3149     		ldr	r1, .L422+64
 2449 0176 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2450 017a 0398     		ldr	r0, [sp, #12]
 2451 017c 3049     		ldr	r1, .L422+68
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 44


 2452 017e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2453 0182 5B27     		movs	r7, #91
 2454 0184 00E0     		b	.L407
 2455              	.L420:
 2456 0186 2C27     		movs	r7, #44
 2457              	.L407:
 2458 0188 2368     		ldr	r3, [r4]
 2459 018a 039E     		ldr	r6, [sp, #12]
 2460 018c 03EB8503 		add	r3, r3, r5, lsl #2
 2461 0190 0135     		adds	r5, r5, #1
 2462 0192 D3F87001 		ldr	r0, [r3, #368]	@ float
 2463 0196 FFF7FEFF 		bl	__aeabi_f2d
 2464 019a 3A46     		mov	r2, r7
 2465 019c CDE90001 		strd	r0, [sp]
 2466 01a0 3046     		mov	r0, r6
 2467 01a2 1849     		ldr	r1, .L422+8
 2468 01a4 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2469 01a8 0A2D     		cmp	r5, #10
 2470 01aa ECD1     		bne	.L420
 2471 01ac 0398     		ldr	r0, [sp, #12]
 2472 01ae 2549     		ldr	r1, .L422+72
 2473 01b0 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2474 01b4 0025     		movs	r5, #0
 2475 01b6 5B27     		movs	r7, #91
 2476 01b8 00E0     		b	.L409
 2477              	.L421:
 2478 01ba 2C27     		movs	r7, #44
 2479              	.L409:
 2480 01bc 2368     		ldr	r3, [r4]
 2481 01be 039E     		ldr	r6, [sp, #12]
 2482 01c0 03EB8503 		add	r3, r3, r5, lsl #2
 2483 01c4 0135     		adds	r5, r5, #1
 2484 01c6 D3F8F000 		ldr	r0, [r3, #240]	@ float
 2485 01ca FFF7FEFF 		bl	__aeabi_f2d
 2486 01ce 3A46     		mov	r2, r7
 2487 01d0 CDE90001 		strd	r0, [sp]
 2488 01d4 3046     		mov	r0, r6
 2489 01d6 0B49     		ldr	r1, .L422+8
 2490 01d8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2491 01dc 0A2D     		cmp	r5, #10
 2492 01de ECD1     		bne	.L421
 2493 01e0 0398     		ldr	r0, [sp, #12]
 2494 01e2 1949     		ldr	r1, .L422+76
 2495 01e4 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2496 01e8 0398     		ldr	r0, [sp, #12]
 2497              	.L416:
 2498 01ea 04B0     		add	sp, sp, #16
 2499              		@ sp needed
 2500 01ec BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2501              	.L397:
 2502 01f0 0398     		ldr	r0, [sp, #12]
 2503 01f2 0549     		ldr	r1, .L422+12
 2504 01f4 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2505 01f8 4DE7     		b	.L410
 2506              	.L423:
 2507 01fa 00BF     		.align	2
 2508              	.L422:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 45


 2509 01fc 00000000 		.word	reprap
 2510 0200 2C080000 		.word	.LC96
 2511 0204 98030000 		.word	.LC41
 2512 0208 28090000 		.word	.LC109
 2513 020c 3C080000 		.word	.LC97
 2514 0210 50080000 		.word	.LC98
 2515 0214 60080000 		.word	.LC99
 2516 0218 7C080000 		.word	.LC100
 2517 021c 84080000 		.word	.LC101
 2518 0220 B8000000 		.word	.LC5
 2519 0224 9C080000 		.word	.LC102
 2520 0228 DC000000 		.word	.LC6
 2521 022c F4000000 		.word	.LC7
 2522 0230 B4080000 		.word	.LC103
 2523 0234 00005940 		.word	1079574528
 2524 0238 CC080000 		.word	.LC104
 2525 023c E8080000 		.word	.LC105
 2526 0240 FC080000 		.word	.LC106
 2527 0244 10090000 		.word	.LC107
 2528 0248 24090000 		.word	.LC108
 2529              		.size	_ZN6RepRap17GetConfigResponseEv, .-_ZN6RepRap17GetConfigResponseEv
 2530              		.section	.text._ZN6RepRap23GetLegacyStatusResponseEhi,"ax",%progbits
 2531              		.align	2
 2532              		.global	_ZN6RepRap23GetLegacyStatusResponseEhi
 2533              		.thumb
 2534              		.thumb_func
 2535              		.type	_ZN6RepRap23GetLegacyStatusResponseEhi, %function
 2536              	_ZN6RepRap23GetLegacyStatusResponseEhi:
 2537              		@ args = 0, pretend = 0, frame = 64
 2538              		@ frame_needed = 0, uses_anonymous_args = 0
 2539 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2540 0004 95B0     		sub	sp, sp, #84
 2541 0006 0646     		mov	r6, r0
 2542 0008 07A8     		add	r0, sp, #28
 2543 000a 0491     		str	r1, [sp, #16]
 2544 000c 0592     		str	r2, [sp, #20]
 2545 000e FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2546 0012 0028     		cmp	r0, #0
 2547 0014 00F02F82 		beq	.L518
 2548 0018 96F84530 		ldrb	r3, [r6, #69]	@ zero_extendqisi2
 2549 001c 002B     		cmp	r3, #0
 2550 001e 00F06982 		beq	.L519
 2551 0022 4322     		movs	r2, #67
 2552              	.L427:
 2553 0024 0798     		ldr	r0, [sp, #28]
 2554 0026 A649     		ldr	r1, .L534
 2555 0028 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 2556 002c F068     		ldr	r0, [r6, #12]
 2557 002e 90F92E40 		ldrsb	r4, [r0, #46]
 2558 0032 671C     		adds	r7, r4, #1
 2559 0034 00F02282 		beq	.L498
 2560 0038 2146     		mov	r1, r4
 2561 003a 079D     		ldr	r5, [sp, #28]
 2562 003c FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 2563 0040 FFF7FEFF 		bl	__aeabi_f2d
 2564 0044 0246     		mov	r2, r0
 2565 0046 0B46     		mov	r3, r1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 46


 2566 0048 2846     		mov	r0, r5
 2567 004a 9E49     		ldr	r1, .L534+4
 2568 004c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2569 0050 2C27     		movs	r7, #44
 2570              	.L428:
 2571 0052 F38D     		ldrh	r3, [r6, #46]
 2572 0054 012B     		cmp	r3, #1
 2573 0056 40F2FA82 		bls	.L429
 2574 005a 0125     		movs	r5, #1
 2575 005c 00E0     		b	.L431
 2576              	.L520:
 2577 005e 2C27     		movs	r7, #44
 2578              	.L431:
 2579 0060 69B2     		sxtb	r1, r5
 2580 0062 F068     		ldr	r0, [r6, #12]
 2581 0064 DDF81C80 		ldr	r8, [sp, #28]
 2582 0068 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 2583 006c FFF7FEFF 		bl	__aeabi_f2d
 2584 0070 3A46     		mov	r2, r7
 2585 0072 CDE90001 		strd	r0, [sp]
 2586 0076 4046     		mov	r0, r8
 2587 0078 9349     		ldr	r1, .L534+8
 2588 007a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2589 007e F38D     		ldrh	r3, [r6, #46]
 2590 0080 0135     		adds	r5, r5, #1
 2591 0082 AB42     		cmp	r3, r5
 2592 0084 EBD8     		bhi	.L520
 2593 0086 0798     		ldr	r0, [sp, #28]
 2594              	.L487:
 2595 0088 9049     		ldr	r1, .L534+12
 2596              	.L432:
 2597 008a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2598 008e 9049     		ldr	r1, .L534+16
 2599 0090 0798     		ldr	r0, [sp, #28]
 2600 0092 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2601 0096 F068     		ldr	r0, [r6, #12]
 2602 0098 90F92E10 		ldrsb	r1, [r0, #46]
 2603 009c 4D1C     		adds	r5, r1, #1
 2604 009e 00F01A82 		beq	.L500
 2605 00a2 079D     		ldr	r5, [sp, #28]
 2606 00a4 FFF7FEFF 		bl	_ZNK4Heat20GetActiveTemperatureEa
 2607 00a8 FFF7FEFF 		bl	__aeabi_f2d
 2608 00ac 0246     		mov	r2, r0
 2609 00ae 0B46     		mov	r3, r1
 2610 00b0 2846     		mov	r0, r5
 2611 00b2 8449     		ldr	r1, .L534+4
 2612 00b4 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2613 00b8 2C27     		movs	r7, #44
 2614              	.L433:
 2615 00ba F38D     		ldrh	r3, [r6, #46]
 2616 00bc 012B     		cmp	r3, #1
 2617 00be 40F2D882 		bls	.L434
 2618 00c2 0125     		movs	r5, #1
 2619 00c4 00E0     		b	.L436
 2620              	.L521:
 2621 00c6 2C27     		movs	r7, #44
 2622              	.L436:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 47


 2623 00c8 69B2     		sxtb	r1, r5
 2624 00ca F068     		ldr	r0, [r6, #12]
 2625 00cc DDF81C80 		ldr	r8, [sp, #28]
 2626 00d0 FFF7FEFF 		bl	_ZNK4Heat20GetActiveTemperatureEa
 2627 00d4 FFF7FEFF 		bl	__aeabi_f2d
 2628 00d8 3A46     		mov	r2, r7
 2629 00da CDE90001 		strd	r0, [sp]
 2630 00de 4046     		mov	r0, r8
 2631 00e0 7949     		ldr	r1, .L534+8
 2632 00e2 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2633 00e6 F38D     		ldrh	r3, [r6, #46]
 2634 00e8 0135     		adds	r5, r5, #1
 2635 00ea AB42     		cmp	r3, r5
 2636 00ec EBD8     		bhi	.L521
 2637 00ee 0798     		ldr	r0, [sp, #28]
 2638              	.L488:
 2639 00f0 7649     		ldr	r1, .L534+12
 2640              	.L437:
 2641 00f2 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2642 00f6 7749     		ldr	r1, .L534+20
 2643 00f8 0798     		ldr	r0, [sp, #28]
 2644 00fa FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2645 00fe 611C     		adds	r1, r4, #1
 2646 0100 00F0E781 		beq	.L502
 2647 0104 2146     		mov	r1, r4
 2648 0106 F068     		ldr	r0, [r6, #12]
 2649 0108 079D     		ldr	r5, [sp, #28]
 2650 010a FFF7FEFF 		bl	_ZNK4Heat21GetStandbyTemperatureEa
 2651 010e FFF7FEFF 		bl	__aeabi_f2d
 2652 0112 0246     		mov	r2, r0
 2653 0114 0B46     		mov	r3, r1
 2654 0116 2846     		mov	r0, r5
 2655 0118 6A49     		ldr	r1, .L534+4
 2656 011a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2657 011e 2C27     		movs	r7, #44
 2658              	.L438:
 2659 0120 F38D     		ldrh	r3, [r6, #46]
 2660 0122 012B     		cmp	r3, #1
 2661 0124 40F29F82 		bls	.L439
 2662 0128 0125     		movs	r5, #1
 2663 012a 00E0     		b	.L441
 2664              	.L522:
 2665 012c 2C27     		movs	r7, #44
 2666              	.L441:
 2667 012e 69B2     		sxtb	r1, r5
 2668 0130 F068     		ldr	r0, [r6, #12]
 2669 0132 DDF81C80 		ldr	r8, [sp, #28]
 2670 0136 FFF7FEFF 		bl	_ZNK4Heat21GetStandbyTemperatureEa
 2671 013a FFF7FEFF 		bl	__aeabi_f2d
 2672 013e 3A46     		mov	r2, r7
 2673 0140 CDE90001 		strd	r0, [sp]
 2674 0144 4046     		mov	r0, r8
 2675 0146 6049     		ldr	r1, .L534+8
 2676 0148 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2677 014c F38D     		ldrh	r3, [r6, #46]
 2678 014e 0135     		adds	r5, r5, #1
 2679 0150 AB42     		cmp	r3, r5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 48


 2680 0152 EBD8     		bhi	.L522
 2681 0154 0798     		ldr	r0, [sp, #28]
 2682              	.L489:
 2683 0156 5D49     		ldr	r1, .L534+12
 2684              	.L442:
 2685 0158 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2686 015c 0798     		ldr	r0, [sp, #28]
 2687 015e 5E49     		ldr	r1, .L534+24
 2688 0160 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2689 0164 621C     		adds	r2, r4, #1
 2690 0166 00F0B281 		beq	.L504
 2691 016a 2146     		mov	r1, r4
 2692 016c F068     		ldr	r0, [r6, #12]
 2693 016e 079C     		ldr	r4, [sp, #28]
 2694 0170 FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 2695 0174 5949     		ldr	r1, .L534+28
 2696 0176 0246     		mov	r2, r0
 2697 0178 2046     		mov	r0, r4
 2698 017a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2699 017e 2C25     		movs	r5, #44
 2700              	.L443:
 2701 0180 F38D     		ldrh	r3, [r6, #46]
 2702 0182 012B     		cmp	r3, #1
 2703 0184 40F26982 		bls	.L444
 2704 0188 0124     		movs	r4, #1
 2705 018a 00E0     		b	.L446
 2706              	.L523:
 2707 018c 2C25     		movs	r5, #44
 2708              	.L446:
 2709 018e 61B2     		sxtb	r1, r4
 2710 0190 F068     		ldr	r0, [r6, #12]
 2711 0192 079F     		ldr	r7, [sp, #28]
 2712 0194 FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 2713 0198 2A46     		mov	r2, r5
 2714 019a 0346     		mov	r3, r0
 2715 019c 5049     		ldr	r1, .L534+32
 2716 019e 3846     		mov	r0, r7
 2717 01a0 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2718 01a4 F38D     		ldrh	r3, [r6, #46]
 2719 01a6 0134     		adds	r4, r4, #1
 2720 01a8 A342     		cmp	r3, r4
 2721 01aa EFD8     		bhi	.L523
 2722 01ac 0798     		ldr	r0, [sp, #28]
 2723              	.L490:
 2724 01ae 4749     		ldr	r1, .L534+12
 2725              	.L447:
 2726 01b0 4C4C     		ldr	r4, .L534+36
 2727 01b2 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2728 01b6 2269     		ldr	r2, [r4, #16]
 2729 01b8 736A     		ldr	r3, [r6, #36]
 2730 01ba D2F8B071 		ldr	r7, [r2, #432]
 2731 01be A068     		ldr	r0, [r4, #8]
 2732 01c0 002B     		cmp	r3, #0
 2733 01c2 00F0F381 		beq	.L506
 2734 01c6 D3F8C020 		ldr	r2, [r3, #192]
 2735              	.L448:
 2736 01ca 0AA9     		add	r1, sp, #40
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 49


 2737 01cc FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfm
 2738 01d0 D4F82480 		ldr	r8, [r4, #36]
 2739 01d4 B8F1000F 		cmp	r8, #0
 2740 01d8 00F0E081 		beq	.L449
 2741 01dc 08F1A802 		add	r2, r8, #168
 2742 01e0 002F     		cmp	r7, #0
 2743 01e2 00F04C82 		beq	.L450
 2744 01e6 0AAB     		add	r3, sp, #40
 2745 01e8 03EB8701 		add	r1, r3, r7, lsl #2
 2746              	.L452:
 2747 01ec 93ED007A 		flds	s14, [r3]
 2748 01f0 F2EC017A 		fldmias	r2!, {s15}
 2749 01f4 77EE277A 		fadds	s15, s14, s15
 2750 01f8 E3EC017A 		fstmias	r3!, {s15}
 2751 01fc 8B42     		cmp	r3, r1
 2752 01fe F5D1     		bne	.L452
 2753 0200 0798     		ldr	r0, [sp, #28]
 2754 0202 3949     		ldr	r1, .L534+40
 2755 0204 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2756              	.L453:
 2757 0208 0DF1280B 		add	fp, sp, #40
 2758 020c 0025     		movs	r5, #0
 2759 020e 4FF05B0A 		mov	r10, #91
 2760 0212 01E0     		b	.L456
 2761              	.L524:
 2762 0214 4FF02C0A 		mov	r10, #44
 2763              	.L456:
 2764 0218 5BF8040B 		ldr	r0, [fp], #4	@ float
 2765 021c DDF81C90 		ldr	r9, [sp, #28]
 2766 0220 FFF7FEFF 		bl	__aeabi_f2d
 2767 0224 0135     		adds	r5, r5, #1
 2768 0226 CDE90001 		strd	r0, [sp]
 2769 022a 5246     		mov	r2, r10
 2770 022c 4846     		mov	r0, r9
 2771 022e 2F49     		ldr	r1, .L534+44
 2772 0230 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2773 0234 BD42     		cmp	r5, r7
 2774 0236 EDD3     		bcc	.L524
 2775              	.L454:
 2776 0238 0798     		ldr	r0, [sp, #28]
 2777 023a 2D49     		ldr	r1, .L534+48
 2778 023c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2779 0240 A38D     		ldrh	r3, [r4, #44]
 2780 0242 002B     		cmp	r3, #0
 2781 0244 00F00082 		beq	.L457
 2782 0248 0025     		movs	r5, #0
 2783 024a 4FF05B0A 		mov	r10, #91
 2784 024e 01E0     		b	.L459
 2785              	.L525:
 2786 0250 4FF02C0A 		mov	r10, #44
 2787              	.L459:
 2788 0254 2946     		mov	r1, r5
 2789 0256 3069     		ldr	r0, [r6, #16]
 2790 0258 DDF81CB0 		ldr	fp, [sp, #28]
 2791 025c FFF7FEFF 		bl	_ZNK6GCodes22GetRawExtruderPositionEj
 2792 0260 FFF7FEFF 		bl	__aeabi_f2d
 2793 0264 5246     		mov	r2, r10
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 50


 2794 0266 CDE90001 		strd	r0, [sp]
 2795 026a 5846     		mov	r0, fp
 2796 026c 1649     		ldr	r1, .L534+8
 2797 026e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2798 0272 A38D     		ldrh	r3, [r4, #44]
 2799 0274 0135     		adds	r5, r5, #1
 2800 0276 AB42     		cmp	r3, r5
 2801 0278 EAD8     		bhi	.L525
 2802 027a 0798     		ldr	r0, [sp, #28]
 2803 027c 1349     		ldr	r1, .L534+12
 2804              	.L491:
 2805 027e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2806 0282 3369     		ldr	r3, [r6, #16]
 2807 0284 DFED1B7A 		flds	s15, .L534+52
 2808 0288 93EDB07A 		flds	s14, [r3, #704]
 2809 028c 079D     		ldr	r5, [sp, #28]
 2810 028e 67EE277A 		fmuls	s15, s14, s15
 2811 0292 17EE900A 		fmrs	r0, s15
 2812 0296 FFF7FEFF 		bl	__aeabi_f2d
 2813 029a 0022     		movs	r2, #0
 2814 029c 164B     		ldr	r3, .L534+56
 2815 029e FFF7FEFF 		bl	__aeabi_dmul
 2816 02a2 0B46     		mov	r3, r1
 2817 02a4 0246     		mov	r2, r0
 2818 02a6 1549     		ldr	r1, .L534+60
 2819 02a8 2846     		mov	r0, r5
 2820 02aa FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2821 02ae A38D     		ldrh	r3, [r4, #44]
 2822 02b0 002B     		cmp	r3, #0
 2823 02b2 00F07D81 		beq	.L460
 2824 02b6 0025     		movs	r5, #0
 2825 02b8 4FF05B0A 		mov	r10, #91
 2826 02bc 22E0     		b	.L462
 2827              	.L535:
 2828 02be 00BF     		.align	2
 2829              	.L534:
 2830 02c0 38090000 		.word	.LC110
 2831 02c4 54090000 		.word	.LC111
 2832 02c8 28030000 		.word	.LC32
 2833 02cc E4020000 		.word	.LC27
 2834 02d0 F8040000 		.word	.LC56
 2835 02d4 04050000 		.word	.LC57
 2836 02d8 5C090000 		.word	.LC112
 2837 02dc 68090000 		.word	.LC113
 2838 02e0 14030000 		.word	.LC30
 2839 02e4 00000000 		.word	reprap
 2840 02e8 6C090000 		.word	.LC114
 2841 02ec 3C030000 		.word	.LC34
 2842 02f0 1C030000 		.word	.LC31
 2843 02f4 00007042 		.word	1114636288
 2844 02f8 00005940 		.word	1079574528
 2845 02fc 74090000 		.word	.LC115
 2846              	.L526:
 2847 0300 4FF02C0A 		mov	r10, #44
 2848              	.L462:
 2849 0304 3369     		ldr	r3, [r6, #16]
 2850 0306 DDF81CB0 		ldr	fp, [sp, #28]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 51


 2851 030a 03EB8503 		add	r3, r3, r5, lsl #2
 2852 030e 0135     		adds	r5, r5, #1
 2853 0310 D3F8C402 		ldr	r0, [r3, #708]	@ float
 2854 0314 FFF7FEFF 		bl	__aeabi_f2d
 2855 0318 A74B     		ldr	r3, .L536
 2856 031a 0022     		movs	r2, #0
 2857 031c FFF7FEFF 		bl	__aeabi_dmul
 2858 0320 5246     		mov	r2, r10
 2859 0322 CDE90001 		strd	r0, [sp]
 2860 0326 5846     		mov	r0, fp
 2861 0328 A449     		ldr	r1, .L536+4
 2862 032a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2863 032e A38D     		ldrh	r3, [r4, #44]
 2864 0330 AB42     		cmp	r3, r5
 2865 0332 E5D8     		bhi	.L526
 2866 0334 0798     		ldr	r0, [sp, #28]
 2867 0336 A249     		ldr	r1, .L536+8
 2868              	.L492:
 2869 0338 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2870 033c 3069     		ldr	r0, [r6, #16]
 2871 033e 079C     		ldr	r4, [sp, #28]
 2872 0340 FFF7FEFF 		bl	_ZNK6GCodes17GetBabyStepOffsetEv
 2873 0344 FFF7FEFF 		bl	__aeabi_f2d
 2874 0348 0246     		mov	r2, r0
 2875 034a 0B46     		mov	r3, r1
 2876 034c 2046     		mov	r0, r4
 2877 034e 9D49     		ldr	r1, .L536+12
 2878 0350 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2879 0354 B8F1000F 		cmp	r8, #0
 2880 0358 00F01E81 		beq	.L507
 2881 035c D8F80420 		ldr	r2, [r8, #4]
 2882              	.L463:
 2883 0360 9949     		ldr	r1, .L536+16
 2884 0362 0798     		ldr	r0, [sp, #28]
 2885 0364 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2886 0368 3068     		ldr	r0, [r6]
 2887 036a FFF7FEFF 		bl	_ZNK8Platform16GetZProbeReadingEv
 2888 036e 08A9     		add	r1, sp, #32
 2889 0370 0446     		mov	r4, r0
 2890 0372 09AA     		add	r2, sp, #36
 2891 0374 3068     		ldr	r0, [r6]
 2892 0376 FFF7FEFF 		bl	_ZN8Platform24GetZProbeSecondaryValuesERiS0_
 2893 037a 0128     		cmp	r0, #1
 2894 037c 00F0AD80 		beq	.L465
 2895 0380 0228     		cmp	r0, #2
 2896 0382 40F0B180 		bne	.L527
 2897 0386 099A     		ldr	r2, [sp, #36]
 2898 0388 0092     		str	r2, [sp]
 2899 038a 0798     		ldr	r0, [sp, #28]
 2900 038c 089B     		ldr	r3, [sp, #32]
 2901 038e 8F49     		ldr	r1, .L536+20
 2902 0390 2246     		mov	r2, r4
 2903 0392 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2904              	.L467:
 2905 0396 0798     		ldr	r0, [sp, #28]
 2906 0398 8D49     		ldr	r1, .L536+24
 2907 039a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 52


 2908 039e 0024     		movs	r4, #0
 2909 03a0 4FF05B08 		mov	r8, #91
 2910 03a4 01E0     		b	.L469
 2911              	.L528:
 2912 03a6 4FF02C08 		mov	r8, #44
 2913              	.L469:
 2914 03aa 2146     		mov	r1, r4
 2915 03ac 3068     		ldr	r0, [r6]
 2916 03ae 079D     		ldr	r5, [sp, #28]
 2917 03b0 FFF7FEFF 		bl	_ZNK8Platform11GetFanValueEj
 2918 03b4 FFF7FEFF 		bl	__aeabi_f2d
 2919 03b8 0022     		movs	r2, #0
 2920 03ba 7F4B     		ldr	r3, .L536
 2921 03bc FFF7FEFF 		bl	__aeabi_dmul
 2922 03c0 0134     		adds	r4, r4, #1
 2923 03c2 CDE90001 		strd	r0, [sp]
 2924 03c6 4246     		mov	r2, r8
 2925 03c8 2846     		mov	r0, r5
 2926 03ca 8249     		ldr	r1, .L536+28
 2927 03cc FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2928 03d0 082C     		cmp	r4, #8
 2929 03d2 E8D1     		bne	.L528
 2930 03d4 3068     		ldr	r0, [r6]
 2931 03d6 079C     		ldr	r4, [sp, #28]
 2932 03d8 FFF7FEFF 		bl	_ZN8Platform9GetFanRPMEv
 2933 03dc 07EE900A 		fmsr	s15, r0
 2934 03e0 FCEEE77A 		ftouizs	s15, s15
 2935 03e4 7C49     		ldr	r1, .L536+32
 2936 03e6 17EE902A 		fmrs	r2, s15	@ int
 2937 03ea 2046     		mov	r0, r4
 2938 03ec FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2939 03f0 0798     		ldr	r0, [sp, #28]
 2940 03f2 7A49     		ldr	r1, .L536+36
 2941 03f4 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2942 03f8 AFB1     		cbz	r7, .L473
 2943 03fa 0024     		movs	r4, #0
 2944 03fc 5B22     		movs	r2, #91
 2945 03fe 0125     		movs	r5, #1
 2946 0400 00E0     		b	.L474
 2947              	.L529:
 2948 0402 2C22     		movs	r2, #44
 2949              	.L474:
 2950 0404 3369     		ldr	r3, [r6, #16]
 2951 0406 0798     		ldr	r0, [sp, #28]
 2952 0408 D3F89832 		ldr	r3, [r3, #664]
 2953 040c 7449     		ldr	r1, .L536+40
 2954 040e 05FA04FE 		lsl	lr, r5, r4
 2955 0412 1EEA030F 		tst	lr, r3
 2956 0416 0CBF     		ite	eq
 2957 0418 0023     		moveq	r3, #0
 2958 041a 0123     		movne	r3, #1
 2959 041c 0134     		adds	r4, r4, #1
 2960 041e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2961 0422 BC42     		cmp	r4, r7
 2962 0424 EDD1     		bne	.L529
 2963              	.L473:
 2964 0426 0798     		ldr	r0, [sp, #28]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 53


 2965 0428 5D21     		movs	r1, #93
 2966 042a FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 2967 042e F369     		ldr	r3, [r6, #28]
 2968 0430 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 2969 0432 002B     		cmp	r3, #0
 2970 0434 6BD1     		bne	.L530
 2971 0436 0498     		ldr	r0, [sp, #16]
 2972 0438 0228     		cmp	r0, #2
 2973 043a 7ED0     		beq	.L531
 2974              	.L476:
 2975 043c 049A     		ldr	r2, [sp, #16]
 2976 043e 032A     		cmp	r2, #3
 2977 0440 00F0E680 		beq	.L532
 2978 0444 3368     		ldr	r3, [r6]
 2979 0446 D3F83828 		ldr	r2, [r3, #2104]
 2980 044a 049B     		ldr	r3, [sp, #16]
 2981 044c 012B     		cmp	r3, #1
 2982 044e 38D8     		bhi	.L485
 2983              	.L483:
 2984 0450 6449     		ldr	r1, .L536+44
 2985 0452 0798     		ldr	r0, [sp, #28]
 2986 0454 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2987 0458 3368     		ldr	r3, [r6]
 2988 045a 0798     		ldr	r0, [sp, #28]
 2989 045c D3F83418 		ldr	r1, [r3, #2100]
 2990 0460 0022     		movs	r2, #0
 2991 0462 C3F83428 		str	r2, [r3, #2100]
 2992 0466 0122     		movs	r2, #1
 2993 0468 FFF7FEFF 		bl	_ZN12OutputBuffer11EncodeReplyEPS_b
 2994              	.L484:
 2995 046c 0798     		ldr	r0, [sp, #28]
 2996 046e 5E49     		ldr	r1, .L536+48
 2997 0470 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2998 0474 0798     		ldr	r0, [sp, #28]
 2999              	.L518:
 3000 0476 15B0     		add	sp, sp, #84
 3001              		@ sp needed
 3002 0478 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3003              	.L498:
 3004 047c 5B27     		movs	r7, #91
 3005 047e E8E5     		b	.L428
 3006              	.L509:
 3007 0480 0D46     		mov	r5, r1
 3008              	.L479:
 3009 0482 0221     		movs	r1, #2
 3010 0484 7246     		mov	r2, lr
 3011 0486 3B46     		mov	r3, r7
 3012 0488 0091     		str	r1, [sp]
 3013 048a 0124     		movs	r4, #1
 3014 048c 5749     		ldr	r1, .L536+52
 3015 048e 0195     		str	r5, [sp, #4]
 3016 0490 4046     		mov	r0, r8
 3017 0492 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3018 0496 2922     		movs	r2, #41
 3019 0498 0023     		movs	r3, #0
 3020 049a 06F15B01 		add	r1, r6, #91
 3021 049e 0798     		ldr	r0, [sp, #28]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 54


 3022 04a0 0094     		str	r4, [sp]
 3023 04a2 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 3024 04a6 5249     		ldr	r1, .L536+56
 3025 04a8 0798     		ldr	r0, [sp, #28]
 3026 04aa FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3027 04ae 2022     		movs	r2, #32
 3028 04b0 0023     		movs	r3, #0
 3029 04b2 0798     		ldr	r0, [sp, #28]
 3030 04b4 0094     		str	r4, [sp]
 3031 04b6 4F49     		ldr	r1, .L536+60
 3032 04b8 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 3033 04bc 3368     		ldr	r3, [r6]
 3034 04be D3F83828 		ldr	r2, [r3, #2104]
 3035              	.L485:
 3036 04c2 0598     		ldr	r0, [sp, #20]
 3037 04c4 431C     		adds	r3, r0, #1
 3038 04c6 D1D0     		beq	.L484
 3039 04c8 8242     		cmp	r2, r0
 3040 04ca C1D1     		bne	.L483
 3041 04cc CEE7     		b	.L484
 3042              	.L504:
 3043 04ce 5B25     		movs	r5, #91
 3044 04d0 56E6     		b	.L443
 3045              	.L502:
 3046 04d2 5B27     		movs	r7, #91
 3047 04d4 24E6     		b	.L438
 3048              	.L500:
 3049 04d6 5B27     		movs	r7, #91
 3050 04d8 EFE5     		b	.L433
 3051              	.L465:
 3052 04da 2246     		mov	r2, r4
 3053 04dc 0798     		ldr	r0, [sp, #28]
 3054 04de 4649     		ldr	r1, .L536+64
 3055 04e0 089B     		ldr	r3, [sp, #32]
 3056 04e2 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3057 04e6 56E7     		b	.L467
 3058              	.L527:
 3059 04e8 2246     		mov	r2, r4
 3060 04ea 0798     		ldr	r0, [sp, #28]
 3061 04ec 4349     		ldr	r1, .L536+68
 3062 04ee FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3063 04f2 50E7     		b	.L467
 3064              	.L519:
 3065 04f4 3046     		mov	r0, r6
 3066 04f6 FFF7FEFF 		bl	_ZNK6RepRap18GetStatusCharacterEv.part.17
 3067 04fa 5328     		cmp	r0, #83
 3068 04fc 08BF     		it	eq
 3069 04fe 4122     		moveq	r2, #65
 3070 0500 3FF490AD 		beq	.L427
 3071 0504 4828     		cmp	r0, #72
 3072 0506 14BF     		ite	ne
 3073 0508 0246     		movne	r2, r0
 3074 050a 5322     		moveq	r2, #83
 3075 050c 8AE5     		b	.L427
 3076              	.L530:
 3077 050e 3069     		ldr	r0, [r6, #16]
 3078 0510 079C     		ldr	r4, [sp, #28]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 55


 3079 0512 FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 3080 0516 07EE900A 		fmsr	s15, r0
 3081 051a F5EEC07A 		fcmpezs	s15
 3082 051e F1EE10FA 		fmstat
 3083 0522 36D4     		bmi	.L508
 3084 0524 FFF7FEFF 		bl	__aeabi_f2d
 3085 0528 0246     		mov	r2, r0
 3086 052a 0B46     		mov	r3, r1
 3087              	.L475:
 3088 052c 2046     		mov	r0, r4
 3089 052e 3449     		ldr	r1, .L536+72
 3090 0530 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3091 0534 0498     		ldr	r0, [sp, #16]
 3092 0536 0228     		cmp	r0, #2
 3093 0538 80D1     		bne	.L476
 3094              	.L531:
 3095 053a F069     		ldr	r0, [r6, #28]
 3096 053c 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 3097 053e 1BB9     		cbnz	r3, .L533
 3098              	.L477:
 3099 0540 3368     		ldr	r3, [r6]
 3100 0542 D3F83828 		ldr	r2, [r3, #2104]
 3101 0546 BCE7     		b	.L485
 3102              	.L533:
 3103 0548 0121     		movs	r1, #1
 3104 054a 079F     		ldr	r7, [sp, #28]
 3105 054c FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 3106 0550 0021     		movs	r1, #0
 3107 0552 0446     		mov	r4, r0	@ float
 3108 0554 F069     		ldr	r0, [r6, #28]
 3109 0556 FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 3110 055a 0499     		ldr	r1, [sp, #16]
 3111 055c 8346     		mov	fp, r0	@ float
 3112 055e F069     		ldr	r0, [r6, #28]
 3113 0560 FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 3114 0564 8046     		mov	r8, r0	@ float
 3115 0566 2046     		mov	r0, r4	@ float
 3116 0568 FFF7FEFF 		bl	__aeabi_f2d
 3117 056c 0446     		mov	r4, r0
 3118 056e 5846     		mov	r0, fp	@ float
 3119 0570 0D46     		mov	r5, r1
 3120 0572 FFF7FEFF 		bl	__aeabi_f2d
 3121 0576 CDE90001 		strd	r0, [sp]
 3122 057a 4046     		mov	r0, r8	@ float
 3123 057c FFF7FEFF 		bl	__aeabi_f2d
 3124 0580 2246     		mov	r2, r4
 3125 0582 CDE90201 		strd	r0, [sp, #8]
 3126 0586 2B46     		mov	r3, r5
 3127 0588 3846     		mov	r0, r7
 3128 058a 1E49     		ldr	r1, .L536+76
 3129 058c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3130 0590 D6E7     		b	.L477
 3131              	.L508:
 3132 0592 0022     		movs	r2, #0
 3133 0594 0023     		movs	r3, #0
 3134 0596 C9E7     		b	.L475
 3135              	.L507:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 56


 3136 0598 4246     		mov	r2, r8
 3137 059a E1E6     		b	.L463
 3138              	.L449:
 3139 059c 0798     		ldr	r0, [sp, #28]
 3140 059e 1A49     		ldr	r1, .L536+80
 3141 05a0 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3142 05a4 002F     		cmp	r7, #0
 3143 05a6 7FF42FAE 		bne	.L453
 3144 05aa 45E6     		b	.L454
 3145              	.L506:
 3146 05ac 0122     		movs	r2, #1
 3147 05ae 0CE6     		b	.L448
 3148              	.L460:
 3149 05b0 0798     		ldr	r0, [sp, #28]
 3150 05b2 1649     		ldr	r1, .L536+84
 3151 05b4 C0E6     		b	.L492
 3152              	.L537:
 3153 05b6 00BF     		.align	2
 3154              	.L536:
 3155 05b8 00005940 		.word	1079574528
 3156 05bc 98030000 		.word	.LC41
 3157 05c0 E4020000 		.word	.LC27
 3158 05c4 90090000 		.word	.LC116
 3159 05c8 A4090000 		.word	.LC117
 3160 05cc C4090000 		.word	.LC119
 3161 05d0 88030000 		.word	.LC40
 3162 05d4 EC090000 		.word	.LC121
 3163 05d8 F4090000 		.word	.LC122
 3164 05dc 040A0000 		.word	.LC123
 3165 05e0 14030000 		.word	.LC30
 3166 05e4 4C0A0000 		.word	.LC126
 3167 05e8 68030000 		.word	.LC38
 3168 05ec 600A0000 		.word	.LC127
 3169 05f0 A00A0000 		.word	.LC128
 3170 05f4 B8000000 		.word	.LC5
 3171 05f8 B0090000 		.word	.LC118
 3172 05fc DC090000 		.word	.LC120
 3173 0600 100A0000 		.word	.LC124
 3174 0604 2C0A0000 		.word	.LC125
 3175 0608 6C090000 		.word	.LC114
 3176 060c E0020000 		.word	.LC26
 3177              	.L532:
 3178 0610 B068     		ldr	r0, [r6, #8]
 3179 0612 DDF81C80 		ldr	r8, [sp, #28]
 3180 0616 FFF7FEFF 		bl	_ZNK4Move17GetGeometryStringEv
 3181 061a 316A     		ldr	r1, [r6, #32]
 3182 061c 8646     		mov	lr, r0
 3183 061e 0029     		cmp	r1, #0
 3184 0620 3FF42EAF 		beq	.L509
 3185 0624 0024     		movs	r4, #0
 3186 0626 4868     		ldr	r0, [r1, #4]
 3187 0628 2546     		mov	r5, r4
 3188              	.L493:
 3189 062a 8442     		cmp	r4, r0
 3190 062c 09D0     		beq	.L480
 3191 062e 0B46     		mov	r3, r1
 3192 0630 02E0     		b	.L481
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 57


 3193              	.L482:
 3194 0632 5A68     		ldr	r2, [r3, #4]
 3195 0634 9442     		cmp	r4, r2
 3196 0636 04D0     		beq	.L480
 3197              	.L481:
 3198 0638 D3F8C830 		ldr	r3, [r3, #200]
 3199 063c 002B     		cmp	r3, #0
 3200 063e F8D1     		bne	.L482
 3201 0640 1FE7     		b	.L479
 3202              	.L480:
 3203 0642 0135     		adds	r5, r5, #1
 3204 0644 2C46     		mov	r4, r5
 3205 0646 F0E7     		b	.L493
 3206              	.L457:
 3207 0648 0798     		ldr	r0, [sp, #28]
 3208 064a 0F49     		ldr	r1, .L538
 3209 064c 17E6     		b	.L491
 3210              	.L429:
 3211 064e 5B2F     		cmp	r7, #91
 3212 0650 0798     		ldr	r0, [sp, #28]
 3213 0652 7FF419AD 		bne	.L487
 3214 0656 0C49     		ldr	r1, .L538
 3215 0658 17E5     		b	.L432
 3216              	.L444:
 3217 065a 5B2D     		cmp	r5, #91
 3218 065c 0798     		ldr	r0, [sp, #28]
 3219 065e 7FF4A6AD 		bne	.L490
 3220 0662 0949     		ldr	r1, .L538
 3221 0664 A4E5     		b	.L447
 3222              	.L439:
 3223 0666 5B2F     		cmp	r7, #91
 3224 0668 0798     		ldr	r0, [sp, #28]
 3225 066a 7FF474AD 		bne	.L489
 3226 066e 0649     		ldr	r1, .L538
 3227 0670 72E5     		b	.L442
 3228              	.L434:
 3229 0672 5B2F     		cmp	r7, #91
 3230 0674 0798     		ldr	r0, [sp, #28]
 3231 0676 7FF43BAD 		bne	.L488
 3232 067a 0349     		ldr	r1, .L538
 3233 067c 39E5     		b	.L437
 3234              	.L450:
 3235 067e 0798     		ldr	r0, [sp, #28]
 3236 0680 0249     		ldr	r1, .L538+4
 3237 0682 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3238 0686 D7E5     		b	.L454
 3239              	.L539:
 3240              		.align	2
 3241              	.L538:
 3242 0688 E0020000 		.word	.LC26
 3243 068c 6C090000 		.word	.LC114
 3244              		.size	_ZN6RepRap23GetLegacyStatusResponseEhi, .-_ZN6RepRap23GetLegacyStatusResponseEhi
 3245              		.section	.text._ZN6RepRap17CopyParameterTextEPKcPcj,"ax",%progbits
 3246              		.align	2
 3247              		.global	_ZN6RepRap17CopyParameterTextEPKcPcj
 3248              		.thumb
 3249              		.thumb_func
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 58


 3250              		.type	_ZN6RepRap17CopyParameterTextEPKcPcj, %function
 3251              	_ZN6RepRap17CopyParameterTextEPKcPcj:
 3252              		@ args = 0, pretend = 0, frame = 0
 3253              		@ frame_needed = 0, uses_anonymous_args = 0
 3254              		@ link register save eliminated.
 3255 0000 012A     		cmp	r2, #1
 3256 0002 70B4     		push	{r4, r5, r6}
 3257 0004 1DD9     		bls	.L543
 3258 0006 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 3259 0008 1F2B     		cmp	r3, #31
 3260 000a 1AD9     		bls	.L543
 3261 000c 0124     		movs	r4, #1
 3262 000e 0026     		movs	r6, #0
 3263 0010 05E0     		b	.L547
 3264              	.L544:
 3265 0012 10F8013F 		ldrb	r3, [r0, #1]!	@ zero_extendqisi2
 3266 0016 1F2B     		cmp	r3, #31
 3267 0018 05D9     		bls	.L546
 3268 001a 2646     		mov	r6, r4
 3269 001c 2C46     		mov	r4, r5
 3270              	.L547:
 3271 001e 651C     		adds	r5, r4, #1
 3272 0020 9542     		cmp	r5, r2
 3273 0022 8B55     		strb	r3, [r1, r6]
 3274 0024 F5D1     		bne	.L544
 3275              	.L546:
 3276 0026 631E     		subs	r3, r4, #1
 3277 0028 CA5C     		ldrb	r2, [r1, r3]	@ zero_extendqisi2
 3278 002a 202A     		cmp	r2, #32
 3279 002c 18BF     		it	ne
 3280 002e 2346     		movne	r3, r4
 3281 0030 04D0     		beq	.L548
 3282 0032 07E0     		b	.L542
 3283              	.L549:
 3284 0034 885C     		ldrb	r0, [r1, r2]	@ zero_extendqisi2
 3285 0036 2028     		cmp	r0, #32
 3286 0038 04D1     		bne	.L542
 3287 003a 1346     		mov	r3, r2
 3288              	.L548:
 3289 003c 5A1E     		subs	r2, r3, #1
 3290 003e 002B     		cmp	r3, #0
 3291 0040 F8D1     		bne	.L549
 3292              	.L543:
 3293 0042 0023     		movs	r3, #0
 3294              	.L542:
 3295 0044 0022     		movs	r2, #0
 3296 0046 CA54     		strb	r2, [r1, r3]
 3297 0048 70BC     		pop	{r4, r5, r6}
 3298 004a 7047     		bx	lr
 3299              		.size	_ZN6RepRap17CopyParameterTextEPKcPcj, .-_ZN6RepRap17CopyParameterTextEPKcPcj
 3300              		.section	.text._ZN6RepRap16GetFilesResponseEPKcb,"ax",%progbits
 3301              		.align	2
 3302              		.global	_ZN6RepRap16GetFilesResponseEPKcb
 3303              		.thumb
 3304              		.thumb_func
 3305              		.type	_ZN6RepRap16GetFilesResponseEPKcb, %function
 3306              	_ZN6RepRap16GetFilesResponseEPKcb:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 59


 3307              		@ args = 0, pretend = 0, frame = 216
 3308              		@ frame_needed = 0, uses_anonymous_args = 0
 3309 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 3310 0004 B9B0     		sub	sp, sp, #228
 3311 0006 0746     		mov	r7, r0
 3312 0008 02A8     		add	r0, sp, #8
 3313 000a 0C46     		mov	r4, r1
 3314 000c 9046     		mov	r8, r2
 3315 000e FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 3316 0012 F8B1     		cbz	r0, .L553
 3317 0014 3749     		ldr	r1, .L573
 3318 0016 0298     		ldr	r0, [sp, #8]
 3319 0018 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 3320 001c 2046     		mov	r0, r4
 3321 001e FFF7FEFF 		bl	strlen
 3322 0022 0126     		movs	r6, #1
 3323 0024 0246     		mov	r2, r0
 3324 0026 0023     		movs	r3, #0
 3325 0028 2146     		mov	r1, r4
 3326 002a 0298     		ldr	r0, [sp, #8]
 3327 002c 0096     		str	r6, [sp]
 3328 002e FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 3329 0032 3149     		ldr	r1, .L573+4
 3330 0034 0298     		ldr	r0, [sp, #8]
 3331 0036 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3332 003a 3B68     		ldr	r3, [r7]
 3333 003c 2146     		mov	r1, r4
 3334 003e D3F83C08 		ldr	r0, [r3, #2108]
 3335 0042 FFF7FEFF 		bl	_ZN11MassStorage17CheckDriveMountedEPKc
 3336 0046 40B9     		cbnz	r0, .L571
 3337 0048 3246     		mov	r2, r6
 3338              	.L554:
 3339 004a 0298     		ldr	r0, [sp, #8]
 3340 004c 2B49     		ldr	r1, .L573+8
 3341 004e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3342 0052 0298     		ldr	r0, [sp, #8]
 3343              	.L553:
 3344 0054 39B0     		add	sp, sp, #228
 3345              		@ sp needed
 3346 0056 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 3347              	.L571:
 3348 005a 3B68     		ldr	r3, [r7]
 3349 005c 2146     		mov	r1, r4
 3350 005e D3F83C08 		ldr	r0, [r3, #2108]
 3351 0062 1CAA     		add	r2, sp, #112
 3352 0064 FFF7FEFF 		bl	_ZN11MassStorage9FindFirstEPKcR8FileInfo
 3353 0068 0546     		mov	r5, r0
 3354 006a 0298     		ldr	r0, [sp, #8]
 3355 006c FFF7FEFF 		bl	_ZN12OutputBuffer12GetBytesLeftEPKS_
 3356 0070 2A23     		movs	r3, #42
 3357 0072 0446     		mov	r4, r0
 3358 0074 8DF80C30 		strb	r3, [sp, #12]
 3359 0078 B146     		mov	r9, r6
 3360 007a 8DB9     		cbnz	r5, .L560
 3361 007c 37E0     		b	.L558
 3362              	.L559:
 3363 007e 0298     		ldr	r0, [sp, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 60


 3364 0080 CDF80090 		str	r9, [sp]
 3365 0084 2946     		mov	r1, r5
 3366 0086 6422     		movs	r2, #100
 3367 0088 0023     		movs	r3, #0
 3368 008a FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 3369 008e 0026     		movs	r6, #0
 3370 0090 241A     		subs	r4, r4, r0
 3371              	.L556:
 3372 0092 3B68     		ldr	r3, [r7]
 3373 0094 1CA9     		add	r1, sp, #112
 3374 0096 D3F83C08 		ldr	r0, [r3, #2108]
 3375 009a FFF7FEFF 		bl	_ZN11MassStorage8FindNextER8FileInfo
 3376 009e 30B3     		cbz	r0, .L558
 3377              	.L560:
 3378 00a0 9DF87130 		ldrb	r3, [sp, #113]	@ zero_extendqisi2
 3379 00a4 2E2B     		cmp	r3, #46
 3380 00a6 F4D0     		beq	.L556
 3381 00a8 B8F1000F 		cmp	r8, #0
 3382 00ac 02D0     		beq	.L564
 3383 00ae 9DF87030 		ldrb	r3, [sp, #112]	@ zero_extendqisi2
 3384 00b2 83B9     		cbnz	r3, .L572
 3385              	.L564:
 3386 00b4 0DF17105 		add	r5, sp, #113
 3387              	.L557:
 3388 00b8 2846     		mov	r0, r5
 3389 00ba FFF7FEFF 		bl	strlen
 3390 00be 0230     		adds	r0, r0, #2
 3391 00c0 B4EB400F 		cmp	r4, r0, lsl #1
 3392 00c4 13D3     		bcc	.L558
 3393 00c6 002E     		cmp	r6, #0
 3394 00c8 D9D1     		bne	.L559
 3395 00ca 0298     		ldr	r0, [sp, #8]
 3396 00cc 2C21     		movs	r1, #44
 3397 00ce FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 3398 00d2 241A     		subs	r4, r4, r0
 3399 00d4 D3E7     		b	.L559
 3400              	.L572:
 3401 00d6 0DF10D00 		add	r0, sp, #13
 3402 00da 0DF17101 		add	r1, sp, #113
 3403 00de 6322     		movs	r2, #99
 3404 00e0 FFF7FEFF 		bl	strncpy
 3405 00e4 0023     		movs	r3, #0
 3406 00e6 8DF86F30 		strb	r3, [sp, #111]
 3407 00ea 03AD     		add	r5, sp, #12
 3408 00ec E4E7     		b	.L557
 3409              	.L558:
 3410 00ee 0022     		movs	r2, #0
 3411 00f0 ABE7     		b	.L554
 3412              	.L574:
 3413 00f2 00BF     		.align	2
 3414              	.L573:
 3415 00f4 B40A0000 		.word	.LC129
 3416 00f8 BC0A0000 		.word	.LC130
 3417 00fc C80A0000 		.word	.LC131
 3418              		.size	_ZN6RepRap16GetFilesResponseEPKcb, .-_ZN6RepRap16GetFilesResponseEPKcb
 3419              		.section	.text._ZN6RepRap19GetFilelistResponseEPKc,"ax",%progbits
 3420              		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 61


 3421              		.global	_ZN6RepRap19GetFilelistResponseEPKc
 3422              		.thumb
 3423              		.thumb_func
 3424              		.type	_ZN6RepRap19GetFilelistResponseEPKc, %function
 3425              	_ZN6RepRap19GetFilelistResponseEPKc:
 3426              		@ args = 0, pretend = 0, frame = 120
 3427              		@ frame_needed = 0, uses_anonymous_args = 0
 3428 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 3429 0002 A3B0     		sub	sp, sp, #140
 3430 0004 0646     		mov	r6, r0
 3431 0006 05A8     		add	r0, sp, #20
 3432 0008 0C46     		mov	r4, r1
 3433 000a FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 3434 000e 0028     		cmp	r0, #0
 3435 0010 00F08980 		beq	.L576
 3436 0014 3368     		ldr	r3, [r6]
 3437 0016 2146     		mov	r1, r4
 3438 0018 D3F83C08 		ldr	r0, [r3, #2108]
 3439 001c FFF7FEFF 		bl	_ZN11MassStorage17CheckDriveMountedEPKc
 3440 0020 0028     		cmp	r0, #0
 3441 0022 00F08280 		beq	.L594
 3442 0026 3368     		ldr	r3, [r6]
 3443 0028 2146     		mov	r1, r4
 3444 002a D3F83C08 		ldr	r0, [r3, #2108]
 3445 002e FFF7FEFF 		bl	_ZNK11MassStorage15DirectoryExistsEPKc
 3446 0032 0028     		cmp	r0, #0
 3447 0034 72D0     		beq	.L595
 3448 0036 4749     		ldr	r1, .L598
 3449 0038 0598     		ldr	r0, [sp, #20]
 3450 003a FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 3451 003e 2046     		mov	r0, r4
 3452 0040 FFF7FEFF 		bl	strlen
 3453 0044 0125     		movs	r5, #1
 3454 0046 0246     		mov	r2, r0
 3455 0048 2146     		mov	r1, r4
 3456 004a 0023     		movs	r3, #0
 3457 004c 0598     		ldr	r0, [sp, #20]
 3458 004e 0095     		str	r5, [sp]
 3459 0050 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 3460 0054 4049     		ldr	r1, .L598+4
 3461 0056 0598     		ldr	r0, [sp, #20]
 3462 0058 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3463 005c 3368     		ldr	r3, [r6]
 3464 005e 2146     		mov	r1, r4
 3465 0060 D3F83C08 		ldr	r0, [r3, #2108]
 3466 0064 06AA     		add	r2, sp, #24
 3467 0066 FFF7FEFF 		bl	_ZN11MassStorage9FindFirstEPKcR8FileInfo
 3468 006a 0746     		mov	r7, r0
 3469 006c 0598     		ldr	r0, [sp, #20]
 3470 006e FFF7FEFF 		bl	_ZN12OutputBuffer12GetBytesLeftEPKS_
 3471 0072 0446     		mov	r4, r0
 3472 0074 6FB9     		cbnz	r7, .L585
 3473 0076 65E0     		b	.L581
 3474              	.L597:
 3475 0078 0598     		ldr	r0, [sp, #20]
 3476 007a FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 3477 007e 0025     		movs	r5, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 62


 3478 0080 241A     		subs	r4, r4, r0
 3479              	.L580:
 3480 0082 3368     		ldr	r3, [r6]
 3481 0084 06A9     		add	r1, sp, #24
 3482 0086 D3F83C08 		ldr	r0, [r3, #2108]
 3483 008a FFF7FEFF 		bl	_ZN11MassStorage8FindNextER8FileInfo
 3484 008e 0028     		cmp	r0, #0
 3485 0090 58D0     		beq	.L581
 3486              	.L585:
 3487 0092 9DF81930 		ldrb	r3, [sp, #25]	@ zero_extendqisi2
 3488 0096 2E2B     		cmp	r3, #46
 3489 0098 0DF11900 		add	r0, sp, #25
 3490 009c F1D0     		beq	.L580
 3491 009e FFF7FEFF 		bl	strlen
 3492 00a2 4630     		adds	r0, r0, #70
 3493 00a4 A042     		cmp	r0, r4
 3494 00a6 4DD8     		bhi	.L581
 3495 00a8 002D     		cmp	r5, #0
 3496 00aa 45D0     		beq	.L596
 3497              	.L582:
 3498 00ac 9DF81830 		ldrb	r3, [sp, #24]	@ zero_extendqisi2
 3499 00b0 2A49     		ldr	r1, .L598+8
 3500 00b2 0598     		ldr	r0, [sp, #20]
 3501 00b4 002B     		cmp	r3, #0
 3502 00b6 0CBF     		ite	eq
 3503 00b8 6622     		moveq	r2, #102
 3504 00ba 6422     		movne	r2, #100
 3505 00bc FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3506 00c0 059B     		ldr	r3, [sp, #20]
 3507 00c2 0122     		movs	r2, #1
 3508 00c4 241A     		subs	r4, r4, r0
 3509 00c6 0DF11901 		add	r1, sp, #25
 3510 00ca 1846     		mov	r0, r3
 3511 00cc 0092     		str	r2, [sp]
 3512 00ce 0023     		movs	r3, #0
 3513 00d0 6422     		movs	r2, #100
 3514 00d2 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 3515 00d6 2249     		ldr	r1, .L598+12
 3516 00d8 209A     		ldr	r2, [sp, #128]
 3517 00da 241A     		subs	r4, r4, r0
 3518 00dc 0598     		ldr	r0, [sp, #20]
 3519 00de FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3520 00e2 241A     		subs	r4, r4, r0
 3521 00e4 21A8     		add	r0, sp, #132
 3522 00e6 FFF7FEFF 		bl	gmtime
 3523 00ea 4369     		ldr	r3, [r0, #20]
 3524 00ec 502B     		cmp	r3, #80
 3525 00ee 4FF07D01 		mov	r1, #125
 3526 00f2 03F26C72 		addw	r2, r3, #1900
 3527 00f6 BFDD     		ble	.L597
 3528 00f8 C168     		ldr	r1, [r0, #12]
 3529 00fa 0369     		ldr	r3, [r0, #16]
 3530 00fc 0091     		str	r1, [sp]
 3531 00fe 8168     		ldr	r1, [r0, #8]
 3532 0100 0191     		str	r1, [sp, #4]
 3533 0102 4168     		ldr	r1, [r0, #4]
 3534 0104 0291     		str	r1, [sp, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 63


 3535 0106 0599     		ldr	r1, [sp, #20]
 3536 0108 0068     		ldr	r0, [r0]
 3537 010a 0390     		str	r0, [sp, #12]
 3538 010c 0133     		adds	r3, r3, #1
 3539 010e 0846     		mov	r0, r1
 3540 0110 1449     		ldr	r1, .L598+16
 3541 0112 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3542 0116 0025     		movs	r5, #0
 3543 0118 241A     		subs	r4, r4, r0
 3544 011a B2E7     		b	.L580
 3545              	.L595:
 3546 011c 0598     		ldr	r0, [sp, #20]
 3547 011e 1249     		ldr	r1, .L598+20
 3548 0120 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 3549 0124 0598     		ldr	r0, [sp, #20]
 3550              	.L576:
 3551 0126 23B0     		add	sp, sp, #140
 3552              		@ sp needed
 3553 0128 F0BD     		pop	{r4, r5, r6, r7, pc}
 3554              	.L594:
 3555 012a 0598     		ldr	r0, [sp, #20]
 3556 012c 0F49     		ldr	r1, .L598+24
 3557 012e FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 3558 0132 0598     		ldr	r0, [sp, #20]
 3559 0134 23B0     		add	sp, sp, #140
 3560              		@ sp needed
 3561 0136 F0BD     		pop	{r4, r5, r6, r7, pc}
 3562              	.L596:
 3563 0138 0598     		ldr	r0, [sp, #20]
 3564 013a 2C21     		movs	r1, #44
 3565 013c FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 3566 0140 241A     		subs	r4, r4, r0
 3567 0142 B3E7     		b	.L582
 3568              	.L581:
 3569 0144 0598     		ldr	r0, [sp, #20]
 3570 0146 0A49     		ldr	r1, .L598+28
 3571 0148 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3572 014c 0598     		ldr	r0, [sp, #20]
 3573 014e 23B0     		add	sp, sp, #140
 3574              		@ sp needed
 3575 0150 F0BD     		pop	{r4, r5, r6, r7, pc}
 3576              	.L599:
 3577 0152 00BF     		.align	2
 3578              	.L598:
 3579 0154 B40A0000 		.word	.LC129
 3580 0158 BC0A0000 		.word	.LC130
 3581 015c EC0A0000 		.word	.LC134
 3582 0160 040B0000 		.word	.LC135
 3583 0164 100B0000 		.word	.LC136
 3584 0168 E00A0000 		.word	.LC133
 3585 016c D40A0000 		.word	.LC132
 3586 0170 24090000 		.word	.LC108
 3587              		.size	_ZN6RepRap19GetFilelistResponseEPKc, .-_ZN6RepRap19GetFilelistResponseEPKc
 3588              		.section	.text._ZN6RepRap4BeepEii,"ax",%progbits
 3589              		.align	2
 3590              		.global	_ZN6RepRap4BeepEii
 3591              		.thumb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 64


 3592              		.thumb_func
 3593              		.type	_ZN6RepRap4BeepEii, %function
 3594              	_ZN6RepRap4BeepEii:
 3595              		@ args = 0, pretend = 0, frame = 0
 3596              		@ frame_needed = 0, uses_anonymous_args = 0
 3597              		@ link register save eliminated.
 3598 0000 0368     		ldr	r3, [r0]
 3599 0002 10B4     		push	{r4}
 3600 0004 93F83048 		ldrb	r4, [r3, #2096]	@ zero_extendqisi2
 3601 0008 C0F88410 		str	r1, [r0, #132]
 3602 000c C0F88820 		str	r2, [r0, #136]
 3603 0010 14B9     		cbnz	r4, .L602
 3604 0012 5DF8044B 		ldr	r4, [sp], #4
 3605 0016 7047     		bx	lr
 3606              	.L602:
 3607 0018 1846     		mov	r0, r3
 3608 001a 5DF8044B 		ldr	r4, [sp], #4
 3609 001e FFF7FEBF 		b	_ZN8Platform4BeepEii
 3610              		.size	_ZN6RepRap4BeepEii, .-_ZN6RepRap4BeepEii
 3611 0022 00BF     		.section	.text._ZN6RepRap10SetMessageEPKc,"ax",%progbits
 3612              		.align	2
 3613              		.global	_ZN6RepRap10SetMessageEPKc
 3614              		.thumb
 3615              		.thumb_func
 3616              		.type	_ZN6RepRap10SetMessageEPKc, %function
 3617              	_ZN6RepRap10SetMessageEPKc:
 3618              		@ args = 0, pretend = 0, frame = 0
 3619              		@ frame_needed = 0, uses_anonymous_args = 0
 3620 0000 38B5     		push	{r3, r4, r5, lr}
 3621 0002 0446     		mov	r4, r0
 3622 0004 4FF48072 		mov	r2, #256
 3623 0008 8C30     		adds	r0, r0, #140
 3624 000a 0D46     		mov	r5, r1
 3625 000c FFF7FEFF 		bl	strncpy
 3626 0010 0023     		movs	r3, #0
 3627 0012 2068     		ldr	r0, [r4]
 3628 0014 84F88C31 		strb	r3, [r4, #396]
 3629 0018 90F83038 		ldrb	r3, [r0, #2096]	@ zero_extendqisi2
 3630 001c 03B9     		cbnz	r3, .L605
 3631 001e 38BD     		pop	{r3, r4, r5, pc}
 3632              	.L605:
 3633 0020 2946     		mov	r1, r5
 3634 0022 BDE83840 		pop	{r3, r4, r5, lr}
 3635 0026 FFF7FEBF 		b	_ZN8Platform14SendAuxMessageEPKc
 3636              		.size	_ZN6RepRap10SetMessageEPKc, .-_ZN6RepRap10SetMessageEPKc
 3637 002a 00BF     		.section	.text._ZNK6RepRap18GetStatusCharacterEv,"ax",%progbits
 3638              		.align	2
 3639              		.global	_ZNK6RepRap18GetStatusCharacterEv
 3640              		.thumb
 3641              		.thumb_func
 3642              		.type	_ZNK6RepRap18GetStatusCharacterEv, %function
 3643              	_ZNK6RepRap18GetStatusCharacterEv:
 3644              		@ args = 0, pretend = 0, frame = 0
 3645              		@ frame_needed = 0, uses_anonymous_args = 0
 3646              		@ link register save eliminated.
 3647 0000 90F84530 		ldrb	r3, [r0, #69]	@ zero_extendqisi2
 3648 0004 0BB1     		cbz	r3, .L608
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 65


 3649 0006 4320     		movs	r0, #67
 3650 0008 7047     		bx	lr
 3651              	.L608:
 3652 000a FFF7FEBF 		b	_ZNK6RepRap18GetStatusCharacterEv.part.17
 3653              		.size	_ZNK6RepRap18GetStatusCharacterEv, .-_ZNK6RepRap18GetStatusCharacterEv
 3654 000e 00BF     		.section	.text._ZNK6RepRap13NoPasswordSetEv,"ax",%progbits
 3655              		.align	2
 3656              		.global	_ZNK6RepRap13NoPasswordSetEv
 3657              		.thumb
 3658              		.thumb_func
 3659              		.type	_ZNK6RepRap13NoPasswordSetEv, %function
 3660              	_ZNK6RepRap13NoPasswordSetEv:
 3661              		@ args = 0, pretend = 0, frame = 0
 3662              		@ frame_needed = 0, uses_anonymous_args = 0
 3663              		@ link register save eliminated.
 3664 0000 90F84630 		ldrb	r3, [r0, #70]	@ zero_extendqisi2
 3665 0004 0BB9     		cbnz	r3, .L611
 3666 0006 0120     		movs	r0, #1
 3667 0008 7047     		bx	lr
 3668              	.L611:
 3669 000a 4630     		adds	r0, r0, #70
 3670 000c 0149     		ldr	r1, .L612
 3671 000e FFF7FEBF 		b	_Z12StringEqualsPKcS0_
 3672              	.L613:
 3673 0012 00BF     		.align	2
 3674              	.L612:
 3675 0014 3C0B0000 		.word	.LC137
 3676              		.size	_ZNK6RepRap13NoPasswordSetEv, .-_ZNK6RepRap13NoPasswordSetEv
 3677              		.section	.text._ZNK6RepRap13CheckPasswordEPKc,"ax",%progbits
 3678              		.align	2
 3679              		.global	_ZNK6RepRap13CheckPasswordEPKc
 3680              		.thumb
 3681              		.thumb_func
 3682              		.type	_ZNK6RepRap13CheckPasswordEPKc, %function
 3683              	_ZNK6RepRap13CheckPasswordEPKc:
 3684              		@ args = 0, pretend = 0, frame = 0
 3685              		@ frame_needed = 0, uses_anonymous_args = 0
 3686              		@ link register save eliminated.
 3687 0000 00F14603 		add	r3, r0, #70
 3688 0004 0846     		mov	r0, r1
 3689 0006 1946     		mov	r1, r3
 3690 0008 FFF7FEBF 		b	_Z12StringEqualsPKcS0_
 3691              		.size	_ZNK6RepRap13CheckPasswordEPKc, .-_ZNK6RepRap13CheckPasswordEPKc
 3692              		.section	.text._ZN6RepRap11SetPasswordEPKc,"ax",%progbits
 3693              		.align	2
 3694              		.global	_ZN6RepRap11SetPasswordEPKc
 3695              		.thumb
 3696              		.thumb_func
 3697              		.type	_ZN6RepRap11SetPasswordEPKc, %function
 3698              	_ZN6RepRap11SetPasswordEPKc:
 3699              		@ args = 0, pretend = 0, frame = 0
 3700              		@ frame_needed = 0, uses_anonymous_args = 0
 3701              		@ link register save eliminated.
 3702 0000 00F14603 		add	r3, r0, #70
 3703 0004 1522     		movs	r2, #21
 3704 0006 0846     		mov	r0, r1
 3705 0008 1946     		mov	r1, r3
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 66


 3706 000a FFF7FEBF 		b	_ZN6RepRap17CopyParameterTextEPKcPcj
 3707              		.size	_ZN6RepRap11SetPasswordEPKc, .-_ZN6RepRap11SetPasswordEPKc
 3708 000e 00BF     		.section	.text._ZNK6RepRap7GetNameEv,"ax",%progbits
 3709              		.align	2
 3710              		.global	_ZNK6RepRap7GetNameEv
 3711              		.thumb
 3712              		.thumb_func
 3713              		.type	_ZNK6RepRap7GetNameEv, %function
 3714              	_ZNK6RepRap7GetNameEv:
 3715              		@ args = 0, pretend = 0, frame = 0
 3716              		@ frame_needed = 0, uses_anonymous_args = 0
 3717              		@ link register save eliminated.
 3718 0000 5B30     		adds	r0, r0, #91
 3719 0002 7047     		bx	lr
 3720              		.size	_ZNK6RepRap7GetNameEv, .-_ZNK6RepRap7GetNameEv
 3721              		.section	.text._ZN6RepRap7SetNameEPKc,"ax",%progbits
 3722              		.align	2
 3723              		.global	_ZN6RepRap7SetNameEPKc
 3724              		.thumb
 3725              		.thumb_func
 3726              		.type	_ZN6RepRap7SetNameEPKc, %function
 3727              	_ZN6RepRap7SetNameEPKc:
 3728              		@ args = 0, pretend = 0, frame = 0
 3729              		@ frame_needed = 0, uses_anonymous_args = 0
 3730 0000 38B5     		push	{r3, r4, r5, lr}
 3731 0002 00F15B05 		add	r5, r0, #91
 3732 0006 0446     		mov	r4, r0
 3733 0008 2922     		movs	r2, #41
 3734 000a 0846     		mov	r0, r1
 3735 000c 2946     		mov	r1, r5
 3736 000e FFF7FEFF 		bl	_ZN6RepRap17CopyParameterTextEPKcPcj
 3737 0012 2946     		mov	r1, r5
 3738 0014 6068     		ldr	r0, [r4, #4]
 3739 0016 BDE83840 		pop	{r3, r4, r5, lr}
 3740 001a FFF7FEBF 		b	_ZN7Network11SetHostnameEPKc
 3741              		.size	_ZN6RepRap7SetNameEPKc, .-_ZN6RepRap7SetNameEPKc
 3742 001e 00BF     		.section	.text._ZN6RepRapC2Ev,"ax",%progbits
 3743              		.align	2
 3744              		.global	_ZN6RepRapC2Ev
 3745              		.thumb
 3746              		.thumb_func
 3747              		.type	_ZN6RepRapC2Ev, %function
 3748              	_ZN6RepRapC2Ev:
 3749              		@ args = 0, pretend = 0, frame = 0
 3750              		@ frame_needed = 0, uses_anonymous_args = 0
 3751 0000 70B5     		push	{r4, r5, r6, lr}
 3752 0002 0123     		movs	r3, #1
 3753 0004 0025     		movs	r5, #0
 3754 0006 0F22     		movs	r2, #15
 3755 0008 80F84530 		strb	r3, [r0, #69]
 3756 000c 80F83220 		strb	r2, [r0, #50]
 3757 0010 0562     		str	r5, [r0, #32]
 3758 0012 4562     		str	r5, [r0, #36]
 3759 0014 8562     		str	r5, [r0, #40]
 3760 0016 8585     		strh	r5, [r0, #44]	@ movhi
 3761 0018 C585     		strh	r5, [r0, #46]	@ movhi
 3762 001a 0586     		strh	r5, [r0, #48]	@ movhi
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 67


 3763 001c A0F84050 		strh	r5, [r0, #64]	@ movhi
 3764 0020 80F84250 		strb	r5, [r0, #66]
 3765 0024 80F84350 		strb	r5, [r0, #67]
 3766 0028 80F84450 		strb	r5, [r0, #68]
 3767 002c C0F88450 		str	r5, [r0, #132]
 3768 0030 C0F88850 		str	r5, [r0, #136]
 3769 0034 0446     		mov	r4, r0
 3770 0036 FFF7FEFF 		bl	_ZN12OutputBuffer4InitEv
 3771 003a 4FF41460 		mov	r0, #2368
 3772 003e FFF7FEFF 		bl	_Znwj
 3773 0042 0646     		mov	r6, r0
 3774 0044 FFF7FEFF 		bl	_ZN8PlatformC1Ev
 3775 0048 2660     		str	r6, [r4]
 3776 004a EC20     		movs	r0, #236
 3777 004c FFF7FEFF 		bl	_Znwj
 3778 0050 2168     		ldr	r1, [r4]
 3779 0052 0646     		mov	r6, r0
 3780 0054 FFF7FEFF 		bl	_ZN7NetworkC1EP8Platform
 3781 0058 6660     		str	r6, [r4, #4]
 3782 005a 2420     		movs	r0, #36
 3783 005c FFF7FEFF 		bl	_Znwj
 3784 0060 94E80600 		ldmia	r4, {r1, r2}
 3785 0064 0646     		mov	r6, r0
 3786 0066 FFF7FEFF 		bl	_ZN9WebserverC1EP8PlatformP7Network
 3787 006a 6661     		str	r6, [r4, #20]
 3788 006c 4FF47770 		mov	r0, #988
 3789 0070 FFF7FEFF 		bl	_Znwj
 3790 0074 2168     		ldr	r1, [r4]
 3791 0076 6269     		ldr	r2, [r4, #20]
 3792 0078 0646     		mov	r6, r0
 3793 007a FFF7FEFF 		bl	_ZN6GCodesC1EP8PlatformP9Webserver
 3794 007e 2661     		str	r6, [r4, #16]
 3795 0080 40F65840 		movw	r0, #3160
 3796 0084 FFF7FEFF 		bl	_Znwj
 3797 0088 2269     		ldr	r2, [r4, #16]
 3798 008a 2168     		ldr	r1, [r4]
 3799 008c 0646     		mov	r6, r0
 3800 008e FFF7FEFF 		bl	_ZN4MoveC1EP8PlatformP6GCodes
 3801 0092 A660     		str	r6, [r4, #8]
 3802 0094 3420     		movs	r0, #52
 3803 0096 FFF7FEFF 		bl	_Znwj
 3804 009a 2168     		ldr	r1, [r4]
 3805 009c 0646     		mov	r6, r0
 3806 009e FFF7FEFF 		bl	_ZN4HeatC1EP8Platform
 3807 00a2 E660     		str	r6, [r4, #12]
 3808 00a4 4FF42A70 		mov	r0, #680
 3809 00a8 FFF7FEFF 		bl	_Znwj
 3810 00ac 2168     		ldr	r1, [r4]
 3811 00ae 2269     		ldr	r2, [r4, #16]
 3812 00b0 0646     		mov	r6, r0
 3813 00b2 FFF7FEFF 		bl	_ZN12PrintMonitorC1EP8PlatformP6GCodes
 3814 00b6 04F14601 		add	r1, r4, #70
 3815 00ba 1522     		movs	r2, #21
 3816 00bc E661     		str	r6, [r4, #28]
 3817 00be 0548     		ldr	r0, .L619
 3818 00c0 FFF7FEFF 		bl	_ZN6RepRap17CopyParameterTextEPKcPcj
 3819 00c4 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 68


 3820 00c6 0449     		ldr	r1, .L619+4
 3821 00c8 FFF7FEFF 		bl	_ZN6RepRap7SetNameEPKc
 3822 00cc 84F88C50 		strb	r5, [r4, #140]
 3823 00d0 2046     		mov	r0, r4
 3824 00d2 70BD     		pop	{r4, r5, r6, pc}
 3825              	.L620:
 3826              		.align	2
 3827              	.L619:
 3828 00d4 3C0B0000 		.word	.LC137
 3829 00d8 440B0000 		.word	.LC138
 3830              		.size	_ZN6RepRapC2Ev, .-_ZN6RepRapC2Ev
 3831              		.global	_ZN6RepRapC1Ev
 3832              		.thumb_set _ZN6RepRapC1Ev,_ZN6RepRapC2Ev
 3833              		.section	.text._ZN6RepRap30GetProhibitedExtruderMovementsEjj,"ax",%progbits
 3834              		.align	2
 3835              		.global	_ZN6RepRap30GetProhibitedExtruderMovementsEjj
 3836              		.thumb
 3837              		.thumb_func
 3838              		.type	_ZN6RepRap30GetProhibitedExtruderMovementsEjj, %function
 3839              	_ZN6RepRap30GetProhibitedExtruderMovementsEjj:
 3840              		@ args = 0, pretend = 0, frame = 0
 3841              		@ frame_needed = 0, uses_anonymous_args = 0
 3842 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3843 0004 C368     		ldr	r3, [r0, #12]
 3844 0006 93F82D50 		ldrb	r5, [r3, #45]	@ zero_extendqisi2
 3845 000a 0F46     		mov	r7, r1
 3846 000c 9046     		mov	r8, r2
 3847 000e 002D     		cmp	r5, #0
 3848 0010 36D1     		bne	.L628
 3849 0012 D0F824A0 		ldr	r10, [r0, #36]
 3850 0016 BAF1000F 		cmp	r10, #0
 3851 001a 34D0     		beq	.L623
 3852 001c DAF84030 		ldr	r3, [r10, #64]
 3853 0020 1846     		mov	r0, r3
 3854 0022 A3B3     		cbz	r3, .L638
 3855 0024 A946     		mov	r9, r5
 3856 0026 5646     		mov	r6, r10
 3857 0028 4FF0010B 		mov	fp, #1
 3858 002c 07E0     		b	.L627
 3859              	.L625:
 3860 002e 14EA080F 		tst	r4, r8
 3861 0032 1BD1     		bne	.L639
 3862              	.L626:
 3863 0034 0135     		adds	r5, r5, #1
 3864 0036 9D42     		cmp	r5, r3
 3865 0038 06F10406 		add	r6, r6, #4
 3866 003c 13D2     		bcs	.L640
 3867              	.L627:
 3868 003e B468     		ldr	r4, [r6, #8]
 3869 0040 0BFA04F4 		lsl	r4, fp, r4
 3870 0044 14EA0701 		ands	r1, r4, r7
 3871 0048 F1D0     		beq	.L625
 3872 004a 5046     		mov	r0, r10
 3873 004c 0121     		movs	r1, #1
 3874 004e FFF7FEFF 		bl	_ZN4Tool12ToolCanDriveEb
 3875 0052 08B9     		cbnz	r0, .L637
 3876 0054 49EA0409 		orr	r9, r9, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 69


 3877              	.L637:
 3878 0058 DAF84030 		ldr	r3, [r10, #64]
 3879 005c 0135     		adds	r5, r5, #1
 3880 005e 9D42     		cmp	r5, r3
 3881 0060 06F10406 		add	r6, r6, #4
 3882 0064 EBD3     		bcc	.L627
 3883              	.L640:
 3884 0066 4846     		mov	r0, r9
 3885 0068 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3886              	.L639:
 3887 006c 5046     		mov	r0, r10
 3888 006e FFF7FEFF 		bl	_ZN4Tool12ToolCanDriveEb
 3889 0072 DAF84030 		ldr	r3, [r10, #64]
 3890 0076 0028     		cmp	r0, #0
 3891 0078 DCD1     		bne	.L626
 3892 007a 49EA0409 		orr	r9, r9, r4
 3893 007e D9E7     		b	.L626
 3894              	.L628:
 3895 0080 0020     		movs	r0, #0
 3896 0082 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3897              	.L623:
 3898 0086 41EA0200 		orr	r0, r1, r2
 3899 008a BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3900              	.L638:
 3901 008e BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3902              		.size	_ZN6RepRap30GetProhibitedExtruderMovementsEjj, .-_ZN6RepRap30GetProhibitedExtruderMovementsE
 3903 0092 00BF     		.section	.text._ZN6RepRap20FlagTemperatureFaultEa,"ax",%progbits
 3904              		.align	2
 3905              		.global	_ZN6RepRap20FlagTemperatureFaultEa
 3906              		.thumb
 3907              		.thumb_func
 3908              		.type	_ZN6RepRap20FlagTemperatureFaultEa, %function
 3909              	_ZN6RepRap20FlagTemperatureFaultEa:
 3910              		@ args = 0, pretend = 0, frame = 0
 3911              		@ frame_needed = 0, uses_anonymous_args = 0
 3912              		@ link register save eliminated.
 3913 0000 006A     		ldr	r0, [r0, #32]
 3914 0002 08B1     		cbz	r0, .L641
 3915 0004 FFF7FEBF 		b	_ZN4Tool20FlagTemperatureFaultEa
 3916              	.L641:
 3917 0008 7047     		bx	lr
 3918              		.size	_ZN6RepRap20FlagTemperatureFaultEa, .-_ZN6RepRap20FlagTemperatureFaultEa
 3919 000a 00BF     		.section	.text._ZN6RepRap21ClearTemperatureFaultEa,"ax",%progbits
 3920              		.align	2
 3921              		.global	_ZN6RepRap21ClearTemperatureFaultEa
 3922              		.thumb
 3923              		.thumb_func
 3924              		.type	_ZN6RepRap21ClearTemperatureFaultEa, %function
 3925              	_ZN6RepRap21ClearTemperatureFaultEa:
 3926              		@ args = 0, pretend = 0, frame = 0
 3927              		@ frame_needed = 0, uses_anonymous_args = 0
 3928 0000 38B5     		push	{r3, r4, r5, lr}
 3929 0002 074B     		ldr	r3, .L645
 3930 0004 0446     		mov	r4, r0
 3931 0006 D868     		ldr	r0, [r3, #12]
 3932 0008 0D46     		mov	r5, r1
 3933 000a FFF7FEFF 		bl	_ZN4Heat10ResetFaultEa
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 70


 3934 000e 206A     		ldr	r0, [r4, #32]
 3935 0010 20B1     		cbz	r0, .L643
 3936 0012 2946     		mov	r1, r5
 3937 0014 BDE83840 		pop	{r3, r4, r5, lr}
 3938 0018 FFF7FEBF 		b	_ZN4Tool21ClearTemperatureFaultEa
 3939              	.L643:
 3940 001c 38BD     		pop	{r3, r4, r5, pc}
 3941              	.L646:
 3942 001e 00BF     		.align	2
 3943              	.L645:
 3944 0020 00000000 		.word	reprap
 3945              		.size	_ZN6RepRap21ClearTemperatureFaultEa, .-_ZN6RepRap21ClearTemperatureFaultEa
 3946              		.section	.text._ZNK6RepRap15GetCurrentXAxesEv,"ax",%progbits
 3947              		.align	2
 3948              		.global	_ZNK6RepRap15GetCurrentXAxesEv
 3949              		.thumb
 3950              		.thumb_func
 3951              		.type	_ZNK6RepRap15GetCurrentXAxesEv, %function
 3952              	_ZNK6RepRap15GetCurrentXAxesEv:
 3953              		@ args = 0, pretend = 0, frame = 0
 3954              		@ frame_needed = 0, uses_anonymous_args = 0
 3955              		@ link register save eliminated.
 3956 0000 436A     		ldr	r3, [r0, #36]
 3957 0002 13B1     		cbz	r3, .L649
 3958 0004 D3F8C000 		ldr	r0, [r3, #192]
 3959 0008 7047     		bx	lr
 3960              	.L649:
 3961 000a 0120     		movs	r0, #1
 3962 000c 7047     		bx	lr
 3963              		.size	_ZNK6RepRap15GetCurrentXAxesEv, .-_ZNK6RepRap15GetCurrentXAxesEv
 3964 000e 00BF     		.section	.text._ZN6RepRap8DoDivideEmm,"ax",%progbits
 3965              		.align	2
 3966              		.global	_ZN6RepRap8DoDivideEmm
 3967              		.thumb
 3968              		.thumb_func
 3969              		.type	_ZN6RepRap8DoDivideEmm, %function
 3970              	_ZN6RepRap8DoDivideEmm:
 3971              		@ args = 0, pretend = 0, frame = 0
 3972              		@ frame_needed = 0, uses_anonymous_args = 0
 3973              		@ link register save eliminated.
 3974 0000 B0FBF1F0 		udiv	r0, r0, r1
 3975 0004 7047     		bx	lr
 3976              		.size	_ZN6RepRap8DoDivideEmm, .-_ZN6RepRap8DoDivideEmm
 3977 0006 00BF     		.section	.text._ZN6RepRap9ReadDwordEPKc,"ax",%progbits
 3978              		.align	2
 3979              		.global	_ZN6RepRap9ReadDwordEPKc
 3980              		.thumb
 3981              		.thumb_func
 3982              		.type	_ZN6RepRap9ReadDwordEPKc, %function
 3983              	_ZN6RepRap9ReadDwordEPKc:
 3984              		@ args = 0, pretend = 0, frame = 0
 3985              		@ frame_needed = 0, uses_anonymous_args = 0
 3986              		@ link register save eliminated.
 3987 0000 0068     		ldr	r0, [r0]
 3988 0002 7047     		bx	lr
 3989              		.size	_ZN6RepRap9ReadDwordEPKc, .-_ZN6RepRap9ReadDwordEPKc
 3990              		.section	.rodata.str1.4,"aMS",%progbits,1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 71


 3991              		.align	2
 3992              	.LC0:
 3993 0000 52657052 		.ascii	"RepRap class exited.\012\000"
 3993      61702063 
 3993      6C617373 
 3993      20657869 
 3993      7465642E 
 3994 0016 0000     		.space	2
 3995              	.LC1:
 3996 0018 5761726E 		.ascii	"Warning: Tool %d was not driven because its heater "
 3996      696E673A 
 3996      20546F6F 
 3996      6C202564 
 3996      20776173 
 3997 004b 74656D70 		.ascii	"temperatures were not high enough or it has a heate"
 3997      65726174 
 3997      75726573 
 3997      20776572 
 3997      65206E6F 
 3998 007e 72206661 		.ascii	"r fault\012\000"
 3998      756C740A 
 3998      00
 3999 0087 00       		.space	1
 4000              	.LC2:
 4001 0088 636F6E66 		.ascii	"config.g\000"
 4001      69672E67 
 4001      00
 4002 0091 000000   		.space	3
 4003              	.LC3:
 4004 0094 64656661 		.ascii	"default.g\000"
 4004      756C742E 
 4004      6700
 4005 009e 0000     		.space	2
 4006              	.LC4:
 4007 00a0 25732056 		.ascii	"%s Version %s dated %s\012\000"
 4007      65727369 
 4007      6F6E2025 
 4007      73206461 
 4007      74656420 
 4008              	.LC5:
 4009 00b8 52657052 		.ascii	"RepRapFirmware for Duet Ethernet\000"
 4009      61704669 
 4009      726D7761 
 4009      72652066 
 4009      6F722044 
 4010 00d9 000000   		.space	3
 4011              	.LC6:
 4012 00dc 46757369 		.ascii	"Fusionware 1.18.1 RC2\000"
 4012      6F6E7761 
 4012      72652031 
 4012      2E31382E 
 4012      31205243 
 4013 00f2 0000     		.space	2
 4014              	.LC7:
 4015 00f4 32303137 		.ascii	"2017-05-15\000"
 4015      2D30352D 
 4015      313500
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 72


 4016 00ff 00       		.space	1
 4017              	.LC8:
 4018 0100 0A457865 		.ascii	"\012Executing \000"
 4018      63757469 
 4018      6E672000 
 4019              	.LC9:
 4020 010c 303A2F73 		.ascii	"0:/sys/\000"
 4020      79732F00 
 4021              	.LC10:
 4022 0114 25732E2E 		.ascii	"%s...\000"
 4022      2E00
 4023 011a 0000     		.space	2
 4024              	.LC11:
 4025 011c 25732028 		.ascii	"%s (no configuration file found)...\000"
 4025      6E6F2063 
 4025      6F6E6669 
 4025      67757261 
 4025      74696F6E 
 4026              	.LC12:
 4027 0140 446F6E65 		.ascii	"Done!\012\000"
 4027      210A00
 4028 0147 00       		.space	1
 4029              	.LC13:
 4030 0148 4572726F 		.ascii	"Error, not found\012\000"
 4030      722C206E 
 4030      6F742066 
 4030      6F756E64 
 4030      0A00
 4031 015a 0000     		.space	2
 4032              	.LC14:
 4033 015c 4E657477 		.ascii	"Network disabled.\012\000"
 4033      6F726B20 
 4033      64697361 
 4033      626C6564 
 4033      2E0A00
 4034 016f 00       		.space	1
 4035              	.LC15:
 4036 0170 25732069 		.ascii	"%s is up and running.\012\000"
 4036      73207570 
 4036      20616E64 
 4036      2072756E 
 4036      6E696E67 
 4037 0187 00       		.space	1
 4038              	.LC16:
 4039 0188 536C6F77 		.ascii	"Slowest main loop (seconds): %f; fastest: %f\012\000"
 4039      65737420 
 4039      6D61696E 
 4039      206C6F6F 
 4039      70202873 
 4040 01b6 0000     		.space	2
 4041              	.LC17:
 4042 01b8 3D3D3D20 		.ascii	"=== Diagnostics ===\012\000"
 4042      44696167 
 4042      6E6F7374 
 4042      69637320 
 4042      3D3D3D0A 
 4043 01cd 000000   		.space	3
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 73


 4044              	.LC18:
 4045 01d0 44656275 		.ascii	"Debugging enabled for modules:\000"
 4045      6767696E 
 4045      6720656E 
 4045      61626C65 
 4045      6420666F 
 4046 01ef 00       		.space	1
 4047              	.LC19:
 4048 01f0 20257328 		.ascii	" %s(%u)\000"
 4048      25752900 
 4049              	.LC20:
 4050 01f8 0A446562 		.ascii	"\012Debugging disabled for modules:\000"
 4050      75676769 
 4050      6E672064 
 4050      69736162 
 4050      6C656420 
 4051 0219 000000   		.space	3
 4052              	.LC21:
 4053 021c 0A00     		.ascii	"\012\000"
 4054 021e 0000     		.space	2
 4055              	.LC22:
 4056 0220 44656275 		.ascii	"Debugging disabled\012\000"
 4056      6767696E 
 4056      67206469 
 4056      7361626C 
 4056      65640A00 
 4057              	.LC23:
 4058 0234 4572726F 		.ascii	"Error: Attempt to print details of non-existent too"
 4058      723A2041 
 4058      7474656D 
 4058      70742074 
 4058      6F207072 
 4059 0267 6C2E0A00 		.ascii	"l.\012\000"
 4060 026b 00       		.space	1
 4061              	.LC24:
 4062 026c 4572726F 		.ascii	"Error: Attempt to standby a non-existent tool: %d.\012"
 4062      723A2041 
 4062      7474656D 
 4062      70742074 
 4062      6F207374 
 4063 029f 00       		.ascii	"\000"
 4064              	.LC25:
 4065 02a0 4572726F 		.ascii	"Error: Attempt to set variables for a non-existent "
 4065      723A2041 
 4065      7474656D 
 4065      70742074 
 4065      6F207365 
 4066 02d3 746F6F6C 		.ascii	"tool: %d.\012\000"
 4066      3A202564 
 4066      2E0A00
 4067 02de 0000     		.space	2
 4068              	.LC26:
 4069 02e0 5B5D00   		.ascii	"[]\000"
 4070 02e3 00       		.space	1
 4071              	.LC27:
 4072 02e4 5D00     		.ascii	"]\000"
 4073 02e6 0000     		.space	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 74


 4074              	.LC28:
 4075 02e8 7B227374 		.ascii	"{\"status\":\"%c\",\"coords\":{\000"
 4075      61747573 
 4075      223A2225 
 4075      63222C22 
 4075      636F6F72 
 4076 0302 0000     		.space	2
 4077              	.LC29:
 4078 0304 22617865 		.ascii	"\"axesHomed\":\000"
 4078      73486F6D 
 4078      6564223A 
 4078      00
 4079 0311 000000   		.space	3
 4080              	.LC30:
 4081 0314 25632564 		.ascii	"%c%d\000"
 4081      00
 4082 0319 000000   		.space	3
 4083              	.LC31:
 4084 031c 5D2C2265 		.ascii	"],\"extr\":\000"
 4084      78747222 
 4084      3A00
 4085 0326 0000     		.space	2
 4086              	.LC32:
 4087 0328 2563252E 		.ascii	"%c%.1f\000"
 4087      316600
 4088 032f 00       		.space	1
 4089              	.LC33:
 4090 0330 5D2C2278 		.ascii	"],\"xyz\":\000"
 4090      797A223A 
 4090      00
 4091 0339 000000   		.space	3
 4092              	.LC34:
 4093 033c 2563252E 		.ascii	"%c%.3f\000"
 4093      336600
 4094 0343 00       		.space	1
 4095              	.LC35:
 4096 0344 5D7D2C22 		.ascii	"]},\"currentTool\":%d\000"
 4096      63757272 
 4096      656E7454 
 4096      6F6F6C22 
 4096      3A256400 
 4097              	.LC36:
 4098 0358 2C00     		.ascii	",\000"
 4099 035a 0000     		.space	2
 4100              	.LC37:
 4101 035c 226D6573 		.ascii	"\"message\":\000"
 4101      73616765 
 4101      223A00
 4102 0367 00       		.space	1
 4103              	.LC38:
 4104 0368 7D00     		.ascii	"}\000"
 4105 036a 0000     		.space	2
 4106              	.LC39:
 4107 036c 2C227061 		.ascii	",\"params\":{\"atxPower\":%d\000"
 4107      72616D73 
 4107      223A7B22 
 4107      61747850 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 75


 4107      6F776572 
 4108 0385 000000   		.space	3
 4109              	.LC40:
 4110 0388 2C226661 		.ascii	",\"fanPercent\":\000"
 4110      6E506572 
 4110      63656E74 
 4110      223A00
 4111 0397 00       		.space	1
 4112              	.LC41:
 4113 0398 2563252E 		.ascii	"%c%.2f\000"
 4113      326600
 4114 039f 00       		.space	1
 4115              	.LC42:
 4116 03a0 5D2C2273 		.ascii	"],\"speedFactor\":%.2f,\"extrFactors\":\000"
 4116      70656564 
 4116      46616374 
 4116      6F72223A 
 4116      252E3266 
 4117              	.LC43:
 4118 03c4 2C226261 		.ascii	",\"babystep\":%.03f}\000"
 4118      62797374 
 4118      6570223A 
 4118      252E3033 
 4118      667D00
 4119 03d7 00       		.space	1
 4120              	.LC44:
 4121 03d8 2C227365 		.ascii	",\"seq\":%d\000"
 4121      71223A25 
 4121      6400
 4122 03e2 0000     		.space	2
 4123              	.LC45:
 4124 03e4 2C227365 		.ascii	",\"sensors\":{\000"
 4124      6E736F72 
 4124      73223A7B 
 4124      00
 4125 03f1 000000   		.space	3
 4126              	.LC46:
 4127 03f4 2270726F 		.ascii	"\"probeValue\":%d,\"probeSecondary\":[%d]\000"
 4127      62655661 
 4127      6C756522 
 4127      3A25642C 
 4127      2270726F 
 4128 041a 0000     		.space	2
 4129              	.LC47:
 4130 041c 2270726F 		.ascii	"\"probeValue\":%d,\"probeSecondary\":[%d,%d]\000"
 4130      62655661 
 4130      6C756522 
 4130      3A25642C 
 4130      2270726F 
 4131 0445 000000   		.space	3
 4132              	.LC48:
 4133 0448 2270726F 		.ascii	"\"probeValue\":%d\000"
 4133      62655661 
 4133      6C756522 
 4133      3A256400 
 4134              	.LC49:
 4135 0458 2C226661 		.ascii	",\"fanRPM\":%d}\000"
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 76


 4135      6E52504D 
 4135      223A2564 
 4135      7D00
 4136 0466 0000     		.space	2
 4137              	.LC50:
 4138 0468 2C227465 		.ascii	",\"temps\":{\000"
 4138      6D707322 
 4138      3A7B00
 4139 0473 00       		.space	1
 4140              	.LC51:
 4141 0474 22626564 		.ascii	"\"bed\":{\"current\":%.1f,\"active\":%.1f,\"state\""
 4141      223A7B22 
 4141      63757272 
 4141      656E7422 
 4141      3A252E31 
 4142 049f 3A25647D 		.ascii	":%d},\000"
 4142      2C00
 4143 04a5 000000   		.space	3
 4144              	.LC52:
 4145 04a8 22636861 		.ascii	"\"chamber\":{\"current\":%.1f,\000"
 4145      6D626572 
 4145      223A7B22 
 4145      63757272 
 4145      656E7422 
 4146 04c3 00       		.space	1
 4147              	.LC53:
 4148 04c4 22616374 		.ascii	"\"active\":%.1f,\000"
 4148      69766522 
 4148      3A252E31 
 4148      662C00
 4149 04d3 00       		.space	1
 4150              	.LC54:
 4151 04d4 22737461 		.ascii	"\"state\":%d},\000"
 4151      7465223A 
 4151      25647D2C 
 4151      00
 4152 04e1 000000   		.space	3
 4153              	.LC55:
 4154 04e4 22686561 		.ascii	"\"heads\":{\"current\":\000"
 4154      6473223A 
 4154      7B226375 
 4154      7272656E 
 4154      74223A00 
 4155              	.LC56:
 4156 04f8 2C226163 		.ascii	",\"active\":\000"
 4156      74697665 
 4156      223A00
 4157 0503 00       		.space	1
 4158              	.LC57:
 4159 0504 2C227374 		.ascii	",\"standby\":\000"
 4159      616E6462 
 4159      79223A00 
 4160              	.LC58:
 4161 0510 2C227374 		.ascii	",\"state\":\000"
 4161      61746522 
 4161      3A00
 4162 051a 0000     		.space	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 77


 4163              	.LC59:
 4164 051c 7D7D00   		.ascii	"}}\000"
 4165 051f 00       		.space	1
 4166              	.LC60:
 4167 0520 2C227469 		.ascii	",\"time\":%.1f\000"
 4167      6D65223A 
 4167      252E3166 
 4167      00
 4168 052d 000000   		.space	3
 4169              	.LC61:
 4170 0530 2C22636F 		.ascii	",\"coldExtrudeTemp\":%1.f\000"
 4170      6C644578 
 4170      74727564 
 4170      6554656D 
 4170      70223A25 
 4171              	.LC62:
 4172 0548 2C22636F 		.ascii	",\"coldRetractTemp\":%1.f\000"
 4172      6C645265 
 4172      74726163 
 4172      7454656D 
 4172      70223A25 
 4173              	.LC63:
 4174 0560 2C227465 		.ascii	",\"tempLimit\":%1.f\000"
 4174      6D704C69 
 4174      6D697422 
 4174      3A25312E 
 4174      6600
 4175 0572 0000     		.space	2
 4176              	.LC64:
 4177 0574 2C22656E 		.ascii	",\"endstops\":%d\000"
 4177      6473746F 
 4177      7073223A 
 4177      256400
 4178 0583 00       		.space	1
 4179              	.LC65:
 4180 0584 2C226669 		.ascii	",\"firmwareName\":\"%s\",\"geometry\":\"%s\",\"axes"
 4180      726D7761 
 4180      72654E61 
 4180      6D65223A 
 4180      22257322 
 4181 05ae 223A2575 		.ascii	"\":%u\000"
 4181      00
 4182 05b3 00       		.space	1
 4183              	.LC66:
 4184 05b4 2C22766F 		.ascii	",\"volumes\":%u,\"mountedVolumes\":%u\000"
 4184      6C756D65 
 4184      73223A25 
 4184      752C226D 
 4184      6F756E74 
 4185 05d6 0000     		.space	2
 4186              	.LC67:
 4187 05d8 2C226E61 		.ascii	",\"name\":\000"
 4187      6D65223A 
 4187      00
 4188 05e1 000000   		.space	3
 4189              	.LC68:
 4190 05e4 2C227072 		.ascii	",\"probe\":{\"threshold\":%d\000"
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 78


 4190      6F626522 
 4190      3A7B2274 
 4190      68726573 
 4190      686F6C64 
 4191 05fd 000000   		.space	3
 4192              	.LC69:
 4193 0600 2C226865 		.ascii	",\"height\":%.2f\000"
 4193      69676874 
 4193      223A252E 
 4193      326600
 4194 060f 00       		.space	1
 4195              	.LC70:
 4196 0610 2C227479 		.ascii	",\"type\":%d}\000"
 4196      7065223A 
 4196      25647D00 
 4197              	.LC71:
 4198 061c 2C22746F 		.ascii	",\"tools\":[\000"
 4198      6F6C7322 
 4198      3A5B00
 4199 0627 00       		.space	1
 4200              	.LC72:
 4201 0628 2C226D63 		.ascii	",\"mcutemp\":{\"min\":%.1f,\"cur\":%.1f,\"max\":%.1"
 4201      7574656D 
 4201      70223A7B 
 4201      226D696E 
 4201      223A252E 
 4202 0653 667D00   		.ascii	"f}\000"
 4203 0656 0000     		.space	2
 4204              	.LC73:
 4205 0658 2C227669 		.ascii	",\"vin\":{\"min\":%.1f,\"cur\":%.1f,\"max\":%.1f}\000"
 4205      6E223A7B 
 4205      226D696E 
 4205      223A252E 
 4205      31662C22 
 4206 0682 0000     		.space	2
 4207              	.LC74:
 4208 0684 7B226E75 		.ascii	"{\"number\":%d,\"heaters\":[\000"
 4208      6D626572 
 4208      223A2564 
 4208      2C226865 
 4208      61746572 
 4209 069d 000000   		.space	3
 4210              	.LC75:
 4211 06a0 256400   		.ascii	"%d\000"
 4212 06a3 00       		.space	1
 4213              	.LC76:
 4214 06a4 5D2C2264 		.ascii	"],\"drives\":[\000"
 4214      72697665 
 4214      73223A5B 
 4214      00
 4215 06b1 000000   		.space	3
 4216              	.LC77:
 4217 06b4 5D2C2261 		.ascii	"],\"axisMap\":[[\000"
 4217      7869734D 
 4217      6170223A 
 4217      5B5B00
 4218 06c3 00       		.space	1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 79


 4219              	.LC78:
 4220 06c4 257500   		.ascii	"%u\000"
 4221 06c7 00       		.space	1
 4222              	.LC79:
 4223 06c8 5D5D7D2C 		.ascii	"]]},\000"
 4223      00
 4224 06cd 000000   		.space	3
 4225              	.LC80:
 4226 06d0 5D5D7D00 		.ascii	"]]}\000"
 4227              	.LC81:
 4228 06d4 2C226375 		.ascii	",\"currentLayer\":%d\000"
 4228      7272656E 
 4228      744C6179 
 4228      6572223A 
 4228      256400
 4229 06e7 00       		.space	1
 4230              	.LC82:
 4231 06e8 2C226375 		.ascii	",\"currentLayerTime\":%.1f\000"
 4231      7272656E 
 4231      744C6179 
 4231      65725469 
 4231      6D65223A 
 4232 0701 000000   		.space	3
 4233              	.LC83:
 4234 0704 2C226578 		.ascii	",\"extrRaw\":\000"
 4234      74725261 
 4234      77223A00 
 4235              	.LC84:
 4236 0710 5D2C2266 		.ascii	"],\"fractionPrinted\":%.1f\000"
 4236      72616374 
 4236      696F6E50 
 4236      72696E74 
 4236      6564223A 
 4237 0729 000000   		.space	3
 4238              	.LC85:
 4239 072c 2C226669 		.ascii	",\"firstLayerDuration\":%.1f\000"
 4239      7273744C 
 4239      61796572 
 4239      44757261 
 4239      74696F6E 
 4240 0747 00       		.space	1
 4241              	.LC86:
 4242 0748 2C226669 		.ascii	",\"firstLayerHeight\":%.2f\000"
 4242      7273744C 
 4242      61796572 
 4242      48656967 
 4242      6874223A 
 4243 0761 000000   		.space	3
 4244              	.LC87:
 4245 0764 2C227072 		.ascii	",\"printDuration\":%.1f\000"
 4245      696E7444 
 4245      75726174 
 4245      696F6E22 
 4245      3A252E31 
 4246 077a 0000     		.space	2
 4247              	.LC88:
 4248 077c 2C227761 		.ascii	",\"warmUpDuration\":%.1f\000"
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 80


 4248      726D5570 
 4248      44757261 
 4248      74696F6E 
 4248      223A252E 
 4249 0793 00       		.space	1
 4250              	.LC89:
 4251 0794 2C227469 		.ascii	",\"timesLeft\":{\"file\":%.1f\000"
 4251      6D65734C 
 4251      65667422 
 4251      3A7B2266 
 4251      696C6522 
 4252 07ae 0000     		.space	2
 4253              	.LC90:
 4254 07b0 2C226669 		.ascii	",\"filament\":%.1f\000"
 4254      6C616D65 
 4254      6E74223A 
 4254      252E3166 
 4254      00
 4255 07c1 000000   		.space	3
 4256              	.LC91:
 4257 07c4 2C226C61 		.ascii	",\"layer\":%.1f}\000"
 4257      79657222 
 4257      3A252E31 
 4257      667D00
 4258 07d3 00       		.space	1
 4259              	.LC92:
 4260 07d4 2C227365 		.ascii	",\"seq\":%u,\"resp\":\000"
 4260      71223A25 
 4260      752C2272 
 4260      65737022 
 4260      3A00
 4261 07e6 0000     		.space	2
 4262              	.LC93:
 4263 07e8 5B302E30 		.ascii	"[0.00,0.00,0.00\000"
 4263      302C302E 
 4263      30302C30 
 4263      2E303000 
 4264              	.LC94:
 4265 07f8 2C226F75 		.ascii	",\"output\":{\000"
 4265      74707574 
 4265      223A7B00 
 4266              	.LC95:
 4267 0804 22626565 		.ascii	"\"beepDuration\":%d,\"beepFrequency\":%d\000"
 4267      70447572 
 4267      6174696F 
 4267      6E223A25 
 4267      642C2262 
 4268 0829 000000   		.space	3
 4269              	.LC96:
 4270 082c 7B226178 		.ascii	"{\"axisMins\":\000"
 4270      69734D69 
 4270      6E73223A 
 4270      00
 4271 0839 000000   		.space	3
 4272              	.LC97:
 4273 083c 5D2C2261 		.ascii	"],\"accelerations\":\000"
 4273      6363656C 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 81


 4273      65726174 
 4273      696F6E73 
 4273      223A00
 4274 084f 00       		.space	1
 4275              	.LC98:
 4276 0850 5D2C2263 		.ascii	"],\"currents\":\000"
 4276      75727265 
 4276      6E747322 
 4276      3A00
 4277 085e 0000     		.space	2
 4278              	.LC99:
 4279 0860 5D2C2266 		.ascii	"],\"firmwareElectronics\":\"%s\000"
 4279      69726D77 
 4279      61726545 
 4279      6C656374 
 4279      726F6E69 
 4280              	.LC100:
 4281 087c 202B2025 		.ascii	" + %s\000"
 4281      7300
 4282 0882 0000     		.space	2
 4283              	.LC101:
 4284 0884 222C2266 		.ascii	"\",\"firmwareName\":\"%s\"\000"
 4284      69726D77 
 4284      6172654E 
 4284      616D6522 
 4284      3A222573 
 4285 089a 0000     		.space	2
 4286              	.LC102:
 4287 089c 2C226669 		.ascii	",\"firmwareVersion\":\"%s\"\000"
 4287      726D7761 
 4287      72655665 
 4287      7273696F 
 4287      6E223A22 
 4288              	.LC103:
 4289 08b4 2C226669 		.ascii	",\"firmwareDate\":\"%s\"\000"
 4289      726D7761 
 4289      72654461 
 4289      7465223A 
 4289      22257322 
 4290 08c9 000000   		.space	3
 4291              	.LC104:
 4292 08cc 2C226964 		.ascii	",\"idleCurrentFactor\":%.1f\000"
 4292      6C654375 
 4292      7272656E 
 4292      74466163 
 4292      746F7222 
 4293 08e6 0000     		.space	2
 4294              	.LC105:
 4295 08e8 2C226964 		.ascii	",\"idleTimeout\":%.1f\000"
 4295      6C655469 
 4295      6D656F75 
 4295      74223A25 
 4295      2E316600 
 4296              	.LC106:
 4297 08fc 2C226D69 		.ascii	",\"minFeedrates\":\000"
 4297      6E466565 
 4297      64726174 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 82


 4297      6573223A 
 4297      00
 4298 090d 000000   		.space	3
 4299              	.LC107:
 4300 0910 5D2C226D 		.ascii	"],\"maxFeedrates\":\000"
 4300      61784665 
 4300      65647261 
 4300      74657322 
 4300      3A00
 4301 0922 0000     		.space	2
 4302              	.LC108:
 4303 0924 5D7D00   		.ascii	"]}\000"
 4304 0927 00       		.space	1
 4305              	.LC109:
 4306 0928 5D2C2261 		.ascii	"],\"axisMaxes\":\000"
 4306      7869734D 
 4306      61786573 
 4306      223A00
 4307 0937 00       		.space	1
 4308              	.LC110:
 4309 0938 7B227374 		.ascii	"{\"status\":\"%c\",\"heaters\":\000"
 4309      61747573 
 4309      223A2225 
 4309      63222C22 
 4309      68656174 
 4310 0952 0000     		.space	2
 4311              	.LC111:
 4312 0954 5B252E31 		.ascii	"[%.1f\000"
 4312      6600
 4313 095a 0000     		.space	2
 4314              	.LC112:
 4315 095c 2C226873 		.ascii	",\"hstat\":\000"
 4315      74617422 
 4315      3A00
 4316 0966 0000     		.space	2
 4317              	.LC113:
 4318 0968 5B256400 		.ascii	"[%d\000"
 4319              	.LC114:
 4320 096c 2C22706F 		.ascii	",\"pos\":\000"
 4320      73223A00 
 4321              	.LC115:
 4322 0974 2C227366 		.ascii	",\"sfactor\":%.2f,\"efactor\":\000"
 4322      6163746F 
 4322      72223A25 
 4322      2E32662C 
 4322      22656661 
 4323 098f 00       		.space	1
 4324              	.LC116:
 4325 0990 2C226261 		.ascii	",\"babystep\":%.03f\000"
 4325      62797374 
 4325      6570223A 
 4325      252E3033 
 4325      6600
 4326 09a2 0000     		.space	2
 4327              	.LC117:
 4328 09a4 2C22746F 		.ascii	",\"tool\":%d\000"
 4328      6F6C223A 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 83


 4328      256400
 4329 09af 00       		.space	1
 4330              	.LC118:
 4331 09b0 2C227072 		.ascii	",\"probe\":\"%d (%d)\"\000"
 4331      6F626522 
 4331      3A222564 
 4331      20282564 
 4331      292200
 4332 09c3 00       		.space	1
 4333              	.LC119:
 4334 09c4 2C227072 		.ascii	",\"probe\":\"%d (%d, %d)\"\000"
 4334      6F626522 
 4334      3A222564 
 4334      20282564 
 4334      2C202564 
 4335 09db 00       		.space	1
 4336              	.LC120:
 4337 09dc 2C227072 		.ascii	",\"probe\":\"%d\"\000"
 4337      6F626522 
 4337      3A222564 
 4337      2200
 4338 09ea 0000     		.space	2
 4339              	.LC121:
 4340 09ec 2563252E 		.ascii	"%c%.02f\000"
 4340      30326600 
 4341              	.LC122:
 4342 09f4 5D2C2266 		.ascii	"],\"fanRPM\":%u\000"
 4342      616E5250 
 4342      4D223A25 
 4342      7500
 4343 0a02 0000     		.space	2
 4344              	.LC123:
 4345 0a04 2C22686F 		.ascii	",\"homed\":\000"
 4345      6D656422 
 4345      3A00
 4346 0a0e 0000     		.space	2
 4347              	.LC124:
 4348 0a10 2C226672 		.ascii	",\"fraction_printed\":%.4f\000"
 4348      61637469 
 4348      6F6E5F70 
 4348      72696E74 
 4348      6564223A 
 4349 0a29 000000   		.space	3
 4350              	.LC125:
 4351 0a2c 2C227469 		.ascii	",\"timesLeft\":[%.1f,%.1f,%.1f]\000"
 4351      6D65734C 
 4351      65667422 
 4351      3A5B252E 
 4351      31662C25 
 4352 0a4a 0000     		.space	2
 4353              	.LC126:
 4354 0a4c 2C227365 		.ascii	",\"seq\":%d,\"resp\":\000"
 4354      71223A25 
 4354      642C2272 
 4354      65737022 
 4354      3A00
 4355 0a5e 0000     		.space	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 84


 4356              	.LC127:
 4357 0a60 2C226765 		.ascii	",\"geometry\":\"%s\",\"axes\":%u,\"volumes\":%u,\"n"
 4357      6F6D6574 
 4357      7279223A 
 4357      22257322 
 4357      2C226178 
 4358 0a8a 756D546F 		.ascii	"umTools\":%u,\"myName\":\000"
 4358      6F6C7322 
 4358      3A25752C 
 4358      226D794E 
 4358      616D6522 
 4359              	.LC128:
 4360 0aa0 2C226669 		.ascii	",\"firmwareName\":\000"
 4360      726D7761 
 4360      72654E61 
 4360      6D65223A 
 4360      00
 4361 0ab1 000000   		.space	3
 4362              	.LC129:
 4363 0ab4 7B226469 		.ascii	"{\"dir\":\000"
 4363      72223A00 
 4364              	.LC130:
 4365 0abc 2C226669 		.ascii	",\"files\":[\000"
 4365      6C657322 
 4365      3A5B00
 4366 0ac7 00       		.space	1
 4367              	.LC131:
 4368 0ac8 5D2C2265 		.ascii	"],\"err\":%u}\000"
 4368      7272223A 
 4368      25757D00 
 4369              	.LC132:
 4370 0ad4 7B226572 		.ascii	"{\"err\":1}\000"
 4370      72223A31 
 4370      7D00
 4371 0ade 0000     		.space	2
 4372              	.LC133:
 4373 0ae0 7B226572 		.ascii	"{\"err\":2}\000"
 4373      72223A32 
 4373      7D00
 4374 0aea 0000     		.space	2
 4375              	.LC134:
 4376 0aec 7B227479 		.ascii	"{\"type\":\"%c\",\"name\":\000"
 4376      7065223A 
 4376      22256322 
 4376      2C226E61 
 4376      6D65223A 
 4377 0b01 000000   		.space	3
 4378              	.LC135:
 4379 0b04 2C227369 		.ascii	",\"size\":%u\000"
 4379      7A65223A 
 4379      257500
 4380 0b0f 00       		.space	1
 4381              	.LC136:
 4382 0b10 2C226461 		.ascii	",\"date\":\"%04u-%02u-%02uT%02u:%02u:%02u\"}\000"
 4382      7465223A 
 4382      22253034 
 4382      752D2530 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccBwCrW7.s 			page 85


 4382      32752D25 
 4383 0b39 000000   		.space	3
 4384              	.LC137:
 4385 0b3c 72657072 		.ascii	"reprap\000"
 4385      617000
 4386 0b43 00       		.space	1
 4387              	.LC138:
 4388 0b44 4D792044 		.ascii	"My Duet\000"
 4388      75657400 
 4389              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 4390              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 4391              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 4392              	_ZL28cpu_irq_prev_interrupt_state:
 4393 0000 00       		.space	1
 4394              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 4395              		.align	2
 4396              		.type	_ZL32cpu_irq_critical_section_counter, %object
 4397              		.size	_ZL32cpu_irq_critical_section_counter, 4
 4398              	_ZL32cpu_irq_critical_section_counter:
 4399 0000 00000000 		.space	4
 4400              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
