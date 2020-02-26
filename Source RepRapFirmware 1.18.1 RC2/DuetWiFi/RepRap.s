ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 1


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
  40              		.section	.text._ZNK6RepRap18GetStatusCharacterEv.part.18,"ax",%progbits
  41              		.align	2
  42              		.thumb
  43              		.thumb_func
  44              		.type	_ZNK6RepRap18GetStatusCharacterEv.part.18, %function
  45              	_ZNK6RepRap18GetStatusCharacterEv.part.18:
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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 2


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
 107              		.size	_ZNK6RepRap18GetStatusCharacterEv.part.18, .-_ZNK6RepRap18GetStatusCharacterEv.part.18
 108 0072 00BF     		.section	.text._ZN6RepRap4ExitEv,"ax",%progbits
 109              		.align	2
 110              		.global	_ZN6RepRap4ExitEv
 111              		.thumb
 112              		.thumb_func
 113              		.type	_ZN6RepRap4ExitEv, %function
 114              	_ZN6RepRap4ExitEv:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 3


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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 4


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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 5


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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 6


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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 7


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
 368 0108 D8000000 		.word	.LC6
 369 010c F0000000 		.word	.LC7
 370 0110 A0000000 		.word	.LC4
 371 0114 B8000000 		.word	.LC5
 372 0118 FC000000 		.word	.LC8
 373 011c 08010000 		.word	.LC9
 374 0120 88000000 		.word	.LC2
 375 0124 10010000 		.word	.LC10
 376 0128 3C010000 		.word	.LC12
 377 012c 58010000 		.word	.LC14
 378 0130 00000000 		.word	hsmciIdle
 379 0134 6C010000 		.word	.LC15
 380 0138 FFFF7F7F 		.word	2139095039
 381 013c 18010000 		.word	.LC11
 382 0140 94000000 		.word	.LC3
 383 0144 44010000 		.word	.LC13
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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 8


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
 420 0034 84010000 		.word	.LC16
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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 9


 457 0040 BDE83840 		pop	{r3, r4, r5, lr}
 458 0044 FFF7FEBF 		b	_ZN9Webserver11DiagnosticsE11MessageType
 459              	.L68:
 460              		.align	2
 461              	.L67:
 462 0048 B4010000 		.word	.LC17
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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 10


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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 11


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
 616 0098 CC010000 		.word	.LC18
 617 009c 00000000 		.word	moduleName
 618 00a0 EC010000 		.word	.LC19
 619 00a4 F4010000 		.word	.LC20
 620 00a8 18020000 		.word	.LC21
 621 00ac 1C020000 		.word	.LC22
 622              		.size	_ZN6RepRap10PrintDebugEv, .-_ZN6RepRap10PrintDebugEv
 623              		.section	.text._ZN6RepRap8SetDebugE6Moduleb,"ax",%progbits
 624              		.align	2
 625              		.global	_ZN6RepRap8SetDebugE6Moduleb
 626              		.thumb
 627              		.thumb_func
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 12


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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 13


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
 721 0034 30020000 		.word	.LC23
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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 14


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
 769 0044 68020000 		.word	.LC24
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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 15


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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 16


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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 17


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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 18


 970 0022 0068     		ldr	r0, [r0]
 971 0024 024A     		ldr	r2, .L194
 972 0026 0621     		movs	r1, #6
 973 0028 30BC     		pop	{r4, r5}
 974 002a FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 975              	.L195:
 976 002e 00BF     		.align	2
 977              	.L194:
 978 0030 9C020000 		.word	.LC25
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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 19


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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 20


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
 1135 001e 00F0E482 		beq	.L361
 1136 0022 4322     		movs	r2, #67
 1137              	.L228:
 1138 0024 0698     		ldr	r0, [sp, #24]
 1139 0026 7B49     		ldr	r1, .L385
 1140 0028 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 21


 1141 002c 7A4A     		ldr	r2, .L385+4
 1142 002e 736A     		ldr	r3, [r6, #36]
 1143 0030 1269     		ldr	r2, [r2, #16]
 1144 0032 B068     		ldr	r0, [r6, #8]
 1145 0034 D2F8B071 		ldr	r7, [r2, #432]
 1146 0038 002B     		cmp	r3, #0
 1147 003a 00F05B84 		beq	.L323
 1148 003e D3F8C020 		ldr	r2, [r3, #192]
 1149 0042 09A9     		add	r1, sp, #36
 1150 0044 FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfm
 1151 0048 726A     		ldr	r2, [r6, #36]
 1152 004a 002A     		cmp	r2, #0
 1153 004c 00F05A84 		beq	.L230
 1154              	.L381:
 1155 0050 A832     		adds	r2, r2, #168
 1156 0052 002F     		cmp	r7, #0
 1157 0054 00F02785 		beq	.L231
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
 1197 00b2 00F0F284 		beq	.L238
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 22


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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 23


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
 1272 0172 40F0FF82 		bne	.L365
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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 24


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
 1328 0206 00F08883 		beq	.L253
 1329 020a 0024     		movs	r4, #0
 1330 020c 4FF05B0A 		mov	r10, #91
 1331 0210 26E0     		b	.L255
 1332              	.L386:
 1333 0212 00BF     		.align	2
 1334              	.L385:
 1335 0214 E4020000 		.word	.LC28
 1336 0218 00000000 		.word	reprap
 1337 021c 00030000 		.word	.LC29
 1338 0220 10030000 		.word	.LC30
 1339 0224 18030000 		.word	.LC31
 1340 0228 24030000 		.word	.LC32
 1341 022c 2C030000 		.word	.LC33
 1342 0230 38030000 		.word	.LC34
 1343 0234 40030000 		.word	.LC35
 1344 0238 F4070000 		.word	.LC94
 1345 023c 00080000 		.word	.LC95
 1346 0240 64030000 		.word	.LC38
 1347 0244 68030000 		.word	.LC39
 1348 0248 84030000 		.word	.LC40
 1349 024c 00005940 		.word	1079574528
 1350 0250 94030000 		.word	.LC41
 1351 0254 00007042 		.word	1114636288
 1352 0258 9C030000 		.word	.LC42
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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 25


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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 26


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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 27


 1483 03a8 0698     		ldr	r0, [sp, #24]
 1484 03aa 6349     		ldr	r1, .L387+48
 1485 03ac FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1486 03b0 F38D     		ldrh	r3, [r6, #46]
 1487 03b2 012B     		cmp	r3, #1
 1488 03b4 40F26883 		bls	.L263
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
 1518 03fc 40F24183 		bls	.L266
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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 28


 1540 0432 3749     		ldr	r1, .L387+8
 1541              	.L317:
 1542 0434 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1543 0438 0698     		ldr	r0, [sp, #24]
 1544 043a 4249     		ldr	r1, .L387+60
 1545 043c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1546 0440 F38D     		ldrh	r3, [r6, #46]
 1547 0442 012B     		cmp	r3, #1
 1548 0444 40F22683 		bls	.L269
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
 1578 048c 40F2FF82 		bls	.L272
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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 29


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
 1615 04e6 00F09A80 		beq	.L373
 1616 04ea B9F1030F 		cmp	r9, #3
 1617 04ee 00F01782 		beq	.L374
 1618              	.L283:
 1619 04f2 B8F1010F 		cmp	r8, #1
 1620 04f6 7DD0     		beq	.L308
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
 1635 050c 94030000 		.word	.LC41
 1636 0510 E0020000 		.word	.LC27
 1637 0514 C0030000 		.word	.LC43
 1638 0518 E0030000 		.word	.LC45
 1639 051c 44040000 		.word	.LC48
 1640 0520 54040000 		.word	.LC49
 1641 0524 64040000 		.word	.LC50
 1642 0528 70040000 		.word	.LC51
 1643 052c A4040000 		.word	.LC52
 1644 0530 C0040000 		.word	.LC53
 1645 0534 D0040000 		.word	.LC54
 1646 0538 E0040000 		.word	.LC55
 1647 053c 24030000 		.word	.LC32
 1648 0540 F4040000 		.word	.LC56
 1649 0544 00050000 		.word	.LC57
 1650 0548 0C050000 		.word	.LC58
 1651 054c 10030000 		.word	.LC30
 1652 0550 18050000 		.word	.LC59
 1653 0554 1C050000 		.word	.LC60
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 30


 1654 0558 64030000 		.word	.LC38
 1655              	.L249:
 1656 055c 96F88C30 		ldrb	r3, [r6, #140]	@ zero_extendqisi2
 1657 0560 002B     		cmp	r3, #0
 1658 0562 3FF410AE 		beq	.L312
 1659 0566 0698     		ldr	r0, [sp, #24]
 1660 0568 9449     		ldr	r1, .L389
 1661 056a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1662              	.L313:
 1663 056e 0698     		ldr	r0, [sp, #24]
 1664 0570 9349     		ldr	r1, .L389+4
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
 1676 0592 8C49     		ldr	r1, .L389+8
 1677 0594 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1678 0598 F5E5     		b	.L312
 1679              	.L241:
 1680 059a B368     		ldr	r3, [r6, #8]
 1681 059c 93F8BC3A 		ldrb	r3, [r3, #2748]	@ zero_extendqisi2
 1682 05a0 002B     		cmp	r3, #0
 1683 05a2 3FF4ACAD 		beq	.L245
 1684 05a6 0698     		ldr	r0, [sp, #24]
 1685 05a8 8749     		ldr	r1, .L389+12
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
 1698 05c4 8149     		ldr	r1, .L389+16
 1699 05c6 2246     		mov	r2, r4
 1700 05c8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1701 05cc 8BE6     		b	.L260
 1702              	.L258:
 1703 05ce 2246     		mov	r2, r4
 1704 05d0 0698     		ldr	r0, [sp, #24]
 1705 05d2 7F49     		ldr	r1, .L389+20
 1706 05d4 089B     		ldr	r3, [sp, #32]
 1707 05d6 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1708 05da 84E6     		b	.L260
 1709              	.L368:
 1710 05dc 7369     		ldr	r3, [r6, #20]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 31


 1711 05de 0698     		ldr	r0, [sp, #24]
 1712 05e0 1A68     		ldr	r2, [r3]
 1713 05e2 7C49     		ldr	r1, .L389+24
 1714 05e4 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1715 05e8 65E6     		b	.L256
 1716              	.L361:
 1717 05ea 3046     		mov	r0, r6
 1718 05ec FFF7FEFF 		bl	_ZNK6RepRap18GetStatusCharacterEv.part.18
 1719 05f0 0246     		mov	r2, r0
 1720 05f2 17E5     		b	.L228
 1721              	.L308:
 1722 05f4 3368     		ldr	r3, [r6]
 1723 05f6 0698     		ldr	r0, [sp, #24]
 1724 05f8 D3F83448 		ldr	r4, [r3, #2100]
 1725 05fc 0022     		movs	r2, #0
 1726 05fe C3F83428 		str	r2, [r3, #2100]
 1727 0602 0028     		cmp	r0, #0
 1728 0604 3FF479AF 		beq	.L309
 1729 0608 D3F83828 		ldr	r2, [r3, #2104]
 1730 060c 7249     		ldr	r1, .L389+28
 1731 060e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1732 0612 2146     		mov	r1, r4
 1733 0614 4246     		mov	r2, r8
 1734 0616 0698     		ldr	r0, [sp, #24]
 1735 0618 FFF7FEFF 		bl	_ZN12OutputBuffer11EncodeReplyEPS_b
 1736 061c 6CE7     		b	.L360
 1737              	.L373:
 1738 061e F368     		ldr	r3, [r6, #12]
 1739 0620 0698     		ldr	r0, [sp, #24]
 1740 0622 93F82D30 		ldrb	r3, [r3, #45]	@ zero_extendqisi2
 1741 0626 0022     		movs	r2, #0
 1742 0628 002B     		cmp	r3, #0
 1743 062a 40F0A180 		bne	.L376
 1744 062e 6B4B     		ldr	r3, .L389+32
 1745              	.L276:
 1746 0630 6B49     		ldr	r1, .L389+36
 1747 0632 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1748 0636 F368     		ldr	r3, [r6, #12]
 1749 0638 0698     		ldr	r0, [sp, #24]
 1750 063a 93F82D30 		ldrb	r3, [r3, #45]	@ zero_extendqisi2
 1751 063e 0022     		movs	r2, #0
 1752 0640 002B     		cmp	r3, #0
 1753 0642 00F06881 		beq	.L326
 1754 0646 0023     		movs	r3, #0
 1755              	.L277:
 1756 0648 6649     		ldr	r1, .L389+40
 1757 064a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1758 064e F068     		ldr	r0, [r6, #12]
 1759 0650 069C     		ldr	r4, [sp, #24]
 1760 0652 FFF7FEFF 		bl	_ZNK4Heat26GetHighestTemperatureLimitEv
 1761 0656 FFF7FEFF 		bl	__aeabi_f2d
 1762 065a 0246     		mov	r2, r0
 1763 065c 0B46     		mov	r3, r1
 1764 065e 2046     		mov	r0, r4
 1765 0660 6149     		ldr	r1, .L389+44
 1766 0662 0024     		movs	r4, #0
 1767 0664 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 32


 1768 0668 2546     		mov	r5, r4
 1769 066a 4FF00109 		mov	r9, #1
 1770 066e 02E0     		b	.L280
 1771              	.L278:
 1772 0670 0134     		adds	r4, r4, #1
 1773 0672 0A2C     		cmp	r4, #10
 1774 0674 0DD0     		beq	.L377
 1775              	.L280:
 1776 0676 3068     		ldr	r0, [r6]
 1777 0678 2146     		mov	r1, r4
 1778 067a FFF7FEFF 		bl	_ZNK8Platform7StoppedEj
 1779 067e 0138     		subs	r0, r0, #1
 1780 0680 0128     		cmp	r0, #1
 1781 0682 F5D8     		bhi	.L278
 1782 0684 09FA04F3 		lsl	r3, r9, r4
 1783 0688 0134     		adds	r4, r4, #1
 1784 068a 1D43     		orrs	r5, r5, r3
 1785 068c 0A2C     		cmp	r4, #10
 1786 068e ADB2     		uxth	r5, r5
 1787 0690 F1D1     		bne	.L280
 1788              	.L377:
 1789 0692 2A46     		mov	r2, r5
 1790 0694 5549     		ldr	r1, .L389+48
 1791 0696 0698     		ldr	r0, [sp, #24]
 1792 0698 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1793 069c B068     		ldr	r0, [r6, #8]
 1794 069e 069C     		ldr	r4, [sp, #24]
 1795 06a0 FFF7FEFF 		bl	_ZNK4Move17GetGeometryStringEv
 1796 06a4 524A     		ldr	r2, .L389+52
 1797 06a6 0097     		str	r7, [sp]
 1798 06a8 0346     		mov	r3, r0
 1799 06aa 5249     		ldr	r1, .L389+56
 1800 06ac 2046     		mov	r0, r4
 1801 06ae FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1802 06b2 3368     		ldr	r3, [r6]
 1803 06b4 D3F83C38 		ldr	r3, [r3, #2108]
 1804 06b8 93F88924 		ldrb	r2, [r3, #1161]	@ zero_extendqisi2
 1805 06bc 93F88834 		ldrb	r3, [r3, #1160]	@ zero_extendqisi2
 1806 06c0 0AB1     		cbz	r2, .L314
 1807 06c2 43F00203 		orr	r3, r3, #2
 1808              	.L314:
 1809 06c6 0222     		movs	r2, #2
 1810 06c8 4B49     		ldr	r1, .L389+60
 1811 06ca 0698     		ldr	r0, [sp, #24]
 1812 06cc FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1813 06d0 4A49     		ldr	r1, .L389+64
 1814 06d2 0698     		ldr	r0, [sp, #24]
 1815 06d4 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1816 06d8 0123     		movs	r3, #1
 1817 06da 2922     		movs	r2, #41
 1818 06dc 0093     		str	r3, [sp]
 1819 06de 06F15B01 		add	r1, r6, #91
 1820 06e2 0023     		movs	r3, #0
 1821 06e4 0698     		ldr	r0, [sp, #24]
 1822 06e6 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 1823 06ea 3068     		ldr	r0, [r6]
 1824 06ec D0F89010 		ldr	r1, [r0, #144]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 33


 1825 06f0 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersEl
 1826 06f4 C468     		ldr	r4, [r0, #12]	@ float
 1827 06f6 0268     		ldr	r2, [r0]
 1828 06f8 4149     		ldr	r1, .L389+68
 1829 06fa 0698     		ldr	r0, [sp, #24]
 1830 06fc FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1831 0700 2046     		mov	r0, r4	@ float
 1832 0702 FFF7FEFF 		bl	__aeabi_f2d
 1833 0706 069C     		ldr	r4, [sp, #24]
 1834 0708 0246     		mov	r2, r0
 1835 070a 0B46     		mov	r3, r1
 1836 070c 2046     		mov	r0, r4
 1837 070e 3D49     		ldr	r1, .L389+72
 1838 0710 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1839 0714 3368     		ldr	r3, [r6]
 1840 0716 3C49     		ldr	r1, .L389+76
 1841 0718 D3F89020 		ldr	r2, [r3, #144]
 1842 071c 0698     		ldr	r0, [sp, #24]
 1843 071e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1844 0722 0698     		ldr	r0, [sp, #24]
 1845 0724 3949     		ldr	r1, .L389+80
 1846 0726 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1847 072a 356A     		ldr	r5, [r6, #32]
 1848 072c 002D     		cmp	r5, #0
 1849 072e 00F09B80 		beq	.L296
 1850              	.L297:
 1851 0732 0698     		ldr	r0, [sp, #24]
 1852 0734 3649     		ldr	r1, .L389+84
 1853 0736 6A68     		ldr	r2, [r5, #4]
 1854 0738 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1855 073c 2F46     		mov	r7, r5
 1856 073e D5F8A430 		ldr	r3, [r5, #164]
 1857 0742 0024     		movs	r4, #0
 1858 0744 00E0     		b	.L284
 1859              	.L285:
 1860 0746 0437     		adds	r7, r7, #4
 1861              	.L284:
 1862 0748 9C42     		cmp	r4, r3
 1863 074a 3249     		ldr	r1, .L389+88
 1864 074c 0698     		ldr	r0, [sp, #24]
 1865 074e 04F10104 		add	r4, r4, #1
 1866 0752 19D2     		bcs	.L378
 1867 0754 7A6C     		ldr	r2, [r7, #68]
 1868 0756 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1869 075a D5F8A430 		ldr	r3, [r5, #164]
 1870 075e 9C42     		cmp	r4, r3
 1871 0760 F1D2     		bcs	.L285
 1872 0762 0698     		ldr	r0, [sp, #24]
 1873 0764 2C49     		ldr	r1, .L389+92
 1874 0766 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1875 076a D5F8A430 		ldr	r3, [r5, #164]
 1876 076e EAE7     		b	.L285
 1877              	.L376:
 1878 0770 0023     		movs	r3, #0
 1879 0772 5DE7     		b	.L276
 1880              	.L365:
 1881 0774 0698     		ldr	r0, [sp, #24]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 34


 1882 0776 2849     		ldr	r1, .L389+92
 1883 0778 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1884 077c 0023     		movs	r3, #0
 1885 077e C6F88830 		str	r3, [r6, #136]
 1886 0782 C6F88430 		str	r3, [r6, #132]
 1887 0786 F2E6     		b	.L313
 1888              	.L378:
 1889 0788 2449     		ldr	r1, .L389+96
 1890 078a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1891 078e 2F46     		mov	r7, r5
 1892 0790 2B6C     		ldr	r3, [r5, #64]
 1893 0792 0024     		movs	r4, #0
 1894 0794 00E0     		b	.L287
 1895              	.L288:
 1896 0796 0437     		adds	r7, r7, #4
 1897              	.L287:
 1898 0798 9C42     		cmp	r4, r3
 1899 079a 1E49     		ldr	r1, .L389+88
 1900 079c 0698     		ldr	r0, [sp, #24]
 1901 079e 04F10104 		add	r4, r4, #1
 1902 07a2 3DD2     		bcs	.L379
 1903 07a4 BA68     		ldr	r2, [r7, #8]
 1904 07a6 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1905 07aa 2B6C     		ldr	r3, [r5, #64]
 1906 07ac 9C42     		cmp	r4, r3
 1907 07ae F2D2     		bcs	.L288
 1908 07b0 0698     		ldr	r0, [sp, #24]
 1909 07b2 1949     		ldr	r1, .L389+92
 1910 07b4 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1911 07b8 2B6C     		ldr	r3, [r5, #64]
 1912 07ba ECE7     		b	.L288
 1913              	.L390:
 1914              		.align	2
 1915              	.L389:
 1916 07bc F4070000 		.word	.LC94
 1917 07c0 58030000 		.word	.LC37
 1918 07c4 64030000 		.word	.LC38
 1919 07c8 E4070000 		.word	.LC93
 1920 07cc 18040000 		.word	.LC47
 1921 07d0 F0030000 		.word	.LC46
 1922 07d4 D4030000 		.word	.LC44
 1923 07d8 D0070000 		.word	.LC92
 1924 07dc 00006440 		.word	1080295424
 1925 07e0 2C050000 		.word	.LC61
 1926 07e4 44050000 		.word	.LC62
 1927 07e8 5C050000 		.word	.LC63
 1928 07ec 70050000 		.word	.LC64
 1929 07f0 B8000000 		.word	.LC5
 1930 07f4 80050000 		.word	.LC65
 1931 07f8 B0050000 		.word	.LC66
 1932 07fc D4050000 		.word	.LC67
 1933 0800 E0050000 		.word	.LC68
 1934 0804 FC050000 		.word	.LC69
 1935 0808 0C060000 		.word	.LC70
 1936 080c 18060000 		.word	.LC71
 1937 0810 80060000 		.word	.LC74
 1938 0814 9C060000 		.word	.LC75
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 35


 1939 0818 54030000 		.word	.LC36
 1940 081c A0060000 		.word	.LC76
 1941              	.L379:
 1942 0820 A749     		ldr	r1, .L391
 1943 0822 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1944 0826 0121     		movs	r1, #1
 1945 0828 0F46     		mov	r7, r1
 1946 082a 0024     		movs	r4, #0
 1947              	.L293:
 1948 082c D5F8C030 		ldr	r3, [r5, #192]
 1949 0830 07FA04F2 		lsl	r2, r7, r4
 1950 0834 1A42     		tst	r2, r3
 1951 0836 07D0     		beq	.L290
 1952 0838 0029     		cmp	r1, #0
 1953 083a 52D0     		beq	.L380
 1954              	.L291:
 1955 083c A149     		ldr	r1, .L391+4
 1956 083e 0698     		ldr	r0, [sp, #24]
 1957 0840 2246     		mov	r2, r4
 1958 0842 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1959 0846 0021     		movs	r1, #0
 1960              	.L290:
 1961 0848 0134     		adds	r4, r4, #1
 1962 084a 062C     		cmp	r4, #6
 1963 084c EED1     		bne	.L293
 1964 084e D5F8C830 		ldr	r3, [r5, #200]
 1965 0852 0698     		ldr	r0, [sp, #24]
 1966 0854 002B     		cmp	r3, #0
 1967 0856 49D0     		beq	.L294
 1968 0858 9B49     		ldr	r1, .L391+8
 1969 085a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1970              	.L295:
 1971 085e D5F8C850 		ldr	r5, [r5, #200]
 1972 0862 002D     		cmp	r5, #0
 1973 0864 7FF465AF 		bne	.L297
 1974              	.L296:
 1975 0868 0698     		ldr	r0, [sp, #24]
 1976 086a 9849     		ldr	r1, .L391+12
 1977 086c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1978 0870 08AA     		add	r2, sp, #32
 1979 0872 09AB     		add	r3, sp, #36
 1980 0874 07A9     		add	r1, sp, #28
 1981 0876 3068     		ldr	r0, [r6]
 1982 0878 FFF7FEFF 		bl	_ZNK8Platform18GetMcuTemperaturesERfS0_S0_
 1983 087c 0798     		ldr	r0, [sp, #28]	@ float
 1984 087e 069F     		ldr	r7, [sp, #24]
 1985 0880 FFF7FEFF 		bl	__aeabi_f2d
 1986 0884 0446     		mov	r4, r0
 1987 0886 0898     		ldr	r0, [sp, #32]	@ float
 1988 0888 0D46     		mov	r5, r1
 1989 088a FFF7FEFF 		bl	__aeabi_f2d
 1990 088e CDE90001 		strd	r0, [sp]
 1991 0892 0998     		ldr	r0, [sp, #36]	@ float
 1992 0894 FFF7FEFF 		bl	__aeabi_f2d
 1993 0898 2246     		mov	r2, r4
 1994 089a CDE90201 		strd	r0, [sp, #8]
 1995 089e 2B46     		mov	r3, r5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 36


 1996 08a0 3846     		mov	r0, r7
 1997 08a2 8B49     		ldr	r1, .L391+16
 1998 08a4 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1999 08a8 08AA     		add	r2, sp, #32
 2000 08aa 09AB     		add	r3, sp, #36
 2001 08ac 07A9     		add	r1, sp, #28
 2002 08ae 3068     		ldr	r0, [r6]
 2003 08b0 FFF7FEFF 		bl	_ZNK8Platform16GetPowerVoltagesERfS0_S0_
 2004 08b4 0798     		ldr	r0, [sp, #28]	@ float
 2005 08b6 069F     		ldr	r7, [sp, #24]
 2006 08b8 FFF7FEFF 		bl	__aeabi_f2d
 2007 08bc 0446     		mov	r4, r0
 2008 08be 0898     		ldr	r0, [sp, #32]	@ float
 2009 08c0 0D46     		mov	r5, r1
 2010 08c2 FFF7FEFF 		bl	__aeabi_f2d
 2011 08c6 CDE90001 		strd	r0, [sp]
 2012 08ca 0998     		ldr	r0, [sp, #36]	@ float
 2013 08cc FFF7FEFF 		bl	__aeabi_f2d
 2014 08d0 2246     		mov	r2, r4
 2015 08d2 CDE90201 		strd	r0, [sp, #8]
 2016 08d6 2B46     		mov	r3, r5
 2017 08d8 3846     		mov	r0, r7
 2018 08da 7E49     		ldr	r1, .L391+20
 2019 08dc FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2020 08e0 07E6     		b	.L283
 2021              	.L380:
 2022 08e2 0698     		ldr	r0, [sp, #24]
 2023 08e4 7C49     		ldr	r1, .L391+24
 2024 08e6 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2025 08ea A7E7     		b	.L291
 2026              	.L294:
 2027 08ec 7B49     		ldr	r1, .L391+28
 2028 08ee FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2029 08f2 B4E7     		b	.L295
 2030              	.L323:
 2031 08f4 0122     		movs	r2, #1
 2032 08f6 09A9     		add	r1, sp, #36
 2033 08f8 FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfm
 2034 08fc 726A     		ldr	r2, [r6, #36]
 2035 08fe 002A     		cmp	r2, #0
 2036 0900 7FF4A6AB 		bne	.L381
 2037              	.L230:
 2038 0904 0698     		ldr	r0, [sp, #24]
 2039 0906 7649     		ldr	r1, .L391+32
 2040 0908 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2041 090c 002F     		cmp	r7, #0
 2042 090e 7FF4B4AB 		bne	.L234
 2043 0912 FFF7C8BB 		b	.L235
 2044              	.L326:
 2045 0916 734B     		ldr	r3, .L391+36
 2046 0918 96E6     		b	.L277
 2047              	.L253:
 2048 091a 0698     		ldr	r0, [sp, #24]
 2049 091c 7249     		ldr	r1, .L391+40
 2050 091e B8E4     		b	.L315
 2051              	.L374:
 2052 0920 F369     		ldr	r3, [r6, #28]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 37


 2053 0922 0698     		ldr	r0, [sp, #24]
 2054 0924 5A6A     		ldr	r2, [r3, #36]
 2055 0926 7149     		ldr	r1, .L391+44
 2056 0928 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2057 092c F469     		ldr	r4, [r6, #28]
 2058 092e 069D     		ldr	r5, [sp, #24]
 2059 0930 D4ED0E7A 		flds	s15, [r4, #56]
 2060 0934 F5EEC07A 		fcmpezs	s15
 2061 0938 F1EE10FA 		fmstat
 2062 093c 40F3B980 		ble	.L356
 2063 0940 2046     		mov	r0, r4
 2064 0942 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv
 2065 0946 D4ED0E7A 		flds	s15, [r4, #56]
 2066 094a 07EE100A 		fmsr	s14, r0
 2067 094e 37EE677A 		fsubs	s14, s14, s15
 2068 0952 17EE100A 		fmrs	r0, s14
 2069 0956 FFF7FEFF 		bl	__aeabi_f2d
 2070 095a 0246     		mov	r2, r0
 2071 095c 0B46     		mov	r3, r1
 2072              	.L298:
 2073 095e 6449     		ldr	r1, .L391+48
 2074 0960 2846     		mov	r0, r5
 2075 0962 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2076 0966 0698     		ldr	r0, [sp, #24]
 2077 0968 6249     		ldr	r1, .L391+52
 2078 096a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2079 096e B38D     		ldrh	r3, [r6, #44]
 2080 0970 002B     		cmp	r3, #0
 2081 0972 00F0E480 		beq	.L300
 2082 0976 0024     		movs	r4, #0
 2083 0978 5B27     		movs	r7, #91
 2084 097a 00E0     		b	.L302
 2085              	.L382:
 2086 097c 2C27     		movs	r7, #44
 2087              	.L302:
 2088 097e 2146     		mov	r1, r4
 2089 0980 3069     		ldr	r0, [r6, #16]
 2090 0982 069D     		ldr	r5, [sp, #24]
 2091 0984 FFF7FEFF 		bl	_ZNK6GCodes26GetRawExtruderTotalByDriveEj
 2092 0988 FFF7FEFF 		bl	__aeabi_f2d
 2093 098c 3A46     		mov	r2, r7
 2094 098e CDE90001 		strd	r0, [sp]
 2095 0992 2846     		mov	r0, r5
 2096 0994 5849     		ldr	r1, .L391+56
 2097 0996 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2098 099a B38D     		ldrh	r3, [r6, #44]
 2099 099c 0134     		adds	r4, r4, #1
 2100 099e A342     		cmp	r3, r4
 2101 09a0 ECD8     		bhi	.L382
 2102              	.L301:
 2103 09a2 F369     		ldr	r3, [r6, #28]
 2104 09a4 069C     		ldr	r4, [sp, #24]
 2105 09a6 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 2106 09a8 002B     		cmp	r3, #0
 2107 09aa 40F0BC80 		bne	.L383
 2108 09ae 0022     		movs	r2, #0
 2109 09b0 0023     		movs	r3, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 38


 2110              	.L303:
 2111 09b2 2046     		mov	r0, r4
 2112 09b4 5149     		ldr	r1, .L391+60
 2113 09b6 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2114 09ba F469     		ldr	r4, [r6, #28]
 2115 09bc 069D     		ldr	r5, [sp, #24]
 2116 09be D4ED0B7A 		flds	s15, [r4, #44]
 2117 09c2 F5EEC07A 		fcmpezs	s15
 2118 09c6 F1EE10FA 		fmstat
 2119 09ca 40F3A780 		ble	.L357
 2120 09ce 17EE900A 		fmrs	r0, s15
 2121 09d2 FFF7FEFF 		bl	__aeabi_f2d
 2122 09d6 0246     		mov	r2, r0
 2123 09d8 0B46     		mov	r3, r1
 2124              	.L306:
 2125 09da 2846     		mov	r0, r5
 2126 09dc 4849     		ldr	r1, .L391+64
 2127 09de FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2128 09e2 F369     		ldr	r3, [r6, #28]
 2129 09e4 069C     		ldr	r4, [sp, #24]
 2130 09e6 93F8C821 		ldrb	r2, [r3, #456]	@ zero_extendqisi2
 2131 09ea 002A     		cmp	r2, #0
 2132 09ec 64D0     		beq	.L332
 2133 09ee D3F8D801 		ldr	r0, [r3, #472]	@ float
 2134 09f2 FFF7FEFF 		bl	__aeabi_f2d
 2135 09f6 0246     		mov	r2, r0
 2136 09f8 0B46     		mov	r3, r1
 2137              	.L307:
 2138 09fa 4249     		ldr	r1, .L391+68
 2139 09fc 2046     		mov	r0, r4
 2140 09fe FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2141 0a02 F069     		ldr	r0, [r6, #28]
 2142 0a04 069C     		ldr	r4, [sp, #24]
 2143 0a06 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv
 2144 0a0a FFF7FEFF 		bl	__aeabi_f2d
 2145 0a0e 0246     		mov	r2, r0
 2146 0a10 0B46     		mov	r3, r1
 2147 0a12 2046     		mov	r0, r4
 2148 0a14 3C49     		ldr	r1, .L391+72
 2149 0a16 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2150 0a1a F069     		ldr	r0, [r6, #28]
 2151 0a1c 069C     		ldr	r4, [sp, #24]
 2152 0a1e FFF7FEFF 		bl	_ZNK12PrintMonitor17GetWarmUpDurationEv
 2153 0a22 FFF7FEFF 		bl	__aeabi_f2d
 2154 0a26 0246     		mov	r2, r0
 2155 0a28 0B46     		mov	r3, r1
 2156 0a2a 2046     		mov	r0, r4
 2157 0a2c 3749     		ldr	r1, .L391+76
 2158 0a2e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2159 0a32 F069     		ldr	r0, [r6, #28]
 2160 0a34 069C     		ldr	r4, [sp, #24]
 2161 0a36 0121     		movs	r1, #1
 2162 0a38 FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 2163 0a3c FFF7FEFF 		bl	__aeabi_f2d
 2164 0a40 0246     		mov	r2, r0
 2165 0a42 0B46     		mov	r3, r1
 2166 0a44 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 39


 2167 0a46 3249     		ldr	r1, .L391+80
 2168 0a48 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2169 0a4c F069     		ldr	r0, [r6, #28]
 2170 0a4e 069C     		ldr	r4, [sp, #24]
 2171 0a50 0021     		movs	r1, #0
 2172 0a52 FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 2173 0a56 FFF7FEFF 		bl	__aeabi_f2d
 2174 0a5a 0246     		mov	r2, r0
 2175 0a5c 0B46     		mov	r3, r1
 2176 0a5e 2046     		mov	r0, r4
 2177 0a60 2C49     		ldr	r1, .L391+84
 2178 0a62 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2179 0a66 F069     		ldr	r0, [r6, #28]
 2180 0a68 069C     		ldr	r4, [sp, #24]
 2181 0a6a 0221     		movs	r1, #2
 2182 0a6c FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 2183 0a70 FFF7FEFF 		bl	__aeabi_f2d
 2184 0a74 0246     		mov	r2, r0
 2185 0a76 0B46     		mov	r3, r1
 2186 0a78 2046     		mov	r0, r4
 2187 0a7a 2749     		ldr	r1, .L391+88
 2188 0a7c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2189 0a80 37E5     		b	.L283
 2190              	.L266:
 2191 0a82 0698     		ldr	r0, [sp, #24]
 2192 0a84 1849     		ldr	r1, .L391+40
 2193 0a86 D5E4     		b	.L317
 2194              	.L263:
 2195 0a88 0698     		ldr	r0, [sp, #24]
 2196 0a8a 1749     		ldr	r1, .L391+40
 2197 0a8c AEE4     		b	.L316
 2198              	.L272:
 2199 0a8e 0698     		ldr	r0, [sp, #24]
 2200 0a90 1549     		ldr	r1, .L391+40
 2201 0a92 14E5     		b	.L319
 2202              	.L269:
 2203 0a94 0698     		ldr	r0, [sp, #24]
 2204 0a96 1449     		ldr	r1, .L391+40
 2205 0a98 F0E4     		b	.L318
 2206              	.L238:
 2207 0a9a 0698     		ldr	r0, [sp, #24]
 2208 0a9c 5B21     		movs	r1, #91
 2209 0a9e FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 2210 0aa2 FFF722BB 		b	.L239
 2211              	.L231:
 2212 0aa6 0698     		ldr	r0, [sp, #24]
 2213 0aa8 0D49     		ldr	r1, .L391+32
 2214 0aaa FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2215 0aae FFF7FABA 		b	.L235
 2216              	.L356:
 2217 0ab2 0022     		movs	r2, #0
 2218 0ab4 0023     		movs	r3, #0
 2219 0ab6 52E7     		b	.L298
 2220              	.L332:
 2221 0ab8 0022     		movs	r2, #0
 2222 0aba 0023     		movs	r3, #0
 2223 0abc 9DE7     		b	.L307
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 40


 2224              	.L392:
 2225 0abe 00BF     		.align	2
 2226              	.L391:
 2227 0ac0 B0060000 		.word	.LC77
 2228 0ac4 C0060000 		.word	.LC78
 2229 0ac8 C4060000 		.word	.LC79
 2230 0acc E0020000 		.word	.LC27
 2231 0ad0 24060000 		.word	.LC72
 2232 0ad4 54060000 		.word	.LC73
 2233 0ad8 54030000 		.word	.LC36
 2234 0adc CC060000 		.word	.LC80
 2235 0ae0 00030000 		.word	.LC29
 2236 0ae4 00805640 		.word	1079410688
 2237 0ae8 DC020000 		.word	.LC26
 2238 0aec D0060000 		.word	.LC81
 2239 0af0 E4060000 		.word	.LC82
 2240 0af4 00070000 		.word	.LC83
 2241 0af8 24030000 		.word	.LC32
 2242 0afc 0C070000 		.word	.LC84
 2243 0b00 28070000 		.word	.LC85
 2244 0b04 44070000 		.word	.LC86
 2245 0b08 60070000 		.word	.LC87
 2246 0b0c 78070000 		.word	.LC88
 2247 0b10 90070000 		.word	.LC89
 2248 0b14 AC070000 		.word	.LC90
 2249 0b18 C0070000 		.word	.LC91
 2250              	.L357:
 2251 0b1c 636A     		ldr	r3, [r4, #36]
 2252 0b1e 9BB9     		cbnz	r3, .L384
 2253 0b20 0022     		movs	r2, #0
 2254 0b22 0023     		movs	r3, #0
 2255 0b24 59E7     		b	.L306
 2256              	.L383:
 2257 0b26 3069     		ldr	r0, [r6, #16]
 2258 0b28 FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 2259 0b2c FFF7FEFF 		bl	__aeabi_f2d
 2260 0b30 0022     		movs	r2, #0
 2261 0b32 0D4B     		ldr	r3, .L393
 2262 0b34 FFF7FEFF 		bl	__aeabi_dmul
 2263 0b38 0246     		mov	r2, r0
 2264 0b3a 0B46     		mov	r3, r1
 2265 0b3c 39E7     		b	.L303
 2266              	.L300:
 2267 0b3e 0698     		ldr	r0, [sp, #24]
 2268 0b40 5B21     		movs	r1, #91
 2269 0b42 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 2270 0b46 2CE7     		b	.L301
 2271              	.L384:
 2272 0b48 2046     		mov	r0, r4
 2273 0b4a FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv
 2274 0b4e D4ED0A7A 		flds	s15, [r4, #40]
 2275 0b52 07EE100A 		fmsr	s14, r0
 2276 0b56 37EE677A 		fsubs	s14, s14, s15
 2277 0b5a 17EE100A 		fmrs	r0, s14
 2278 0b5e FFF7FEFF 		bl	__aeabi_f2d
 2279 0b62 0246     		mov	r2, r0
 2280 0b64 0B46     		mov	r3, r1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 41


 2281 0b66 38E7     		b	.L306
 2282              	.L394:
 2283              		.align	2
 2284              	.L393:
 2285 0b68 00005940 		.word	1079574528
 2286              		.size	_ZN6RepRap17GetStatusResponseEh14ResponseSource, .-_ZN6RepRap17GetStatusResponseEh14Response
 2287              		.section	.text._ZN6RepRap17GetConfigResponseEv,"ax",%progbits
 2288              		.align	2
 2289              		.global	_ZN6RepRap17GetConfigResponseEv
 2290              		.thumb
 2291              		.thumb_func
 2292              		.type	_ZN6RepRap17GetConfigResponseEv, %function
 2293              	_ZN6RepRap17GetConfigResponseEv:
 2294              		@ args = 0, pretend = 0, frame = 8
 2295              		@ frame_needed = 0, uses_anonymous_args = 0
 2296 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2297 0004 84B0     		sub	sp, sp, #16
 2298 0006 0446     		mov	r4, r0
 2299 0008 03A8     		add	r0, sp, #12
 2300 000a FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2301 000e 0028     		cmp	r0, #0
 2302 0010 00F0F180 		beq	.L416
 2303 0014 7C4B     		ldr	r3, .L422
 2304 0016 0398     		ldr	r0, [sp, #12]
 2305 0018 1B69     		ldr	r3, [r3, #16]
 2306 001a 7C49     		ldr	r1, .L422+4
 2307 001c D3F8B061 		ldr	r6, [r3, #432]
 2308 0020 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 2309 0024 002E     		cmp	r6, #0
 2310 0026 00F0E980 		beq	.L397
 2311 002a 0025     		movs	r5, #0
 2312 002c 4FF05B08 		mov	r8, #91
 2313 0030 01E0     		b	.L399
 2314              	.L417:
 2315 0032 4FF02C08 		mov	r8, #44
 2316              	.L399:
 2317 0036 2368     		ldr	r3, [r4]
 2318 0038 039F     		ldr	r7, [sp, #12]
 2319 003a 05F5A771 		add	r1, r5, #334
 2320 003e 03EB8103 		add	r3, r3, r1, lsl #2
 2321 0042 0135     		adds	r5, r5, #1
 2322 0044 1868     		ldr	r0, [r3]	@ float
 2323 0046 FFF7FEFF 		bl	__aeabi_f2d
 2324 004a 4246     		mov	r2, r8
 2325 004c CDE90001 		strd	r0, [sp]
 2326 0050 3846     		mov	r0, r7
 2327 0052 6F49     		ldr	r1, .L422+8
 2328 0054 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2329 0058 B542     		cmp	r5, r6
 2330 005a EAD1     		bne	.L417
 2331 005c 0398     		ldr	r0, [sp, #12]
 2332 005e 6D49     		ldr	r1, .L422+12
 2333 0060 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2334 0064 0025     		movs	r5, #0
 2335 0066 4FF05B08 		mov	r8, #91
 2336 006a 01E0     		b	.L411
 2337              	.L400:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 42


 2338 006c 4FF02C08 		mov	r8, #44
 2339              	.L411:
 2340 0070 2368     		ldr	r3, [r4]
 2341 0072 039F     		ldr	r7, [sp, #12]
 2342 0074 05F5A471 		add	r1, r5, #328
 2343 0078 03EB8103 		add	r3, r3, r1, lsl #2
 2344 007c 0135     		adds	r5, r5, #1
 2345 007e 1868     		ldr	r0, [r3]	@ float
 2346 0080 FFF7FEFF 		bl	__aeabi_f2d
 2347 0084 4246     		mov	r2, r8
 2348 0086 CDE90001 		strd	r0, [sp]
 2349 008a 3846     		mov	r0, r7
 2350 008c 6049     		ldr	r1, .L422+8
 2351 008e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2352 0092 B542     		cmp	r5, r6
 2353 0094 EAD1     		bne	.L400
 2354              	.L410:
 2355 0096 0398     		ldr	r0, [sp, #12]
 2356 0098 5F49     		ldr	r1, .L422+16
 2357 009a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2358 009e 0025     		movs	r5, #0
 2359 00a0 5B27     		movs	r7, #91
 2360 00a2 00E0     		b	.L402
 2361              	.L418:
 2362 00a4 2C27     		movs	r7, #44
 2363              	.L402:
 2364 00a6 2368     		ldr	r3, [r4]
 2365 00a8 039E     		ldr	r6, [sp, #12]
 2366 00aa 03EB8503 		add	r3, r3, r5, lsl #2
 2367 00ae 0135     		adds	r5, r5, #1
 2368 00b0 D3F81801 		ldr	r0, [r3, #280]	@ float
 2369 00b4 FFF7FEFF 		bl	__aeabi_f2d
 2370 00b8 3A46     		mov	r2, r7
 2371 00ba CDE90001 		strd	r0, [sp]
 2372 00be 3046     		mov	r0, r6
 2373 00c0 5349     		ldr	r1, .L422+8
 2374 00c2 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2375 00c6 0A2D     		cmp	r5, #10
 2376 00c8 ECD1     		bne	.L418
 2377 00ca 0398     		ldr	r0, [sp, #12]
 2378 00cc 5349     		ldr	r1, .L422+20
 2379 00ce FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2380 00d2 0025     		movs	r5, #0
 2381 00d4 5B27     		movs	r7, #91
 2382 00d6 00E0     		b	.L404
 2383              	.L419:
 2384 00d8 2C27     		movs	r7, #44
 2385              	.L404:
 2386 00da 2946     		mov	r1, r5
 2387 00dc 0022     		movs	r2, #0
 2388 00de 2068     		ldr	r0, [r4]
 2389 00e0 039E     		ldr	r6, [sp, #12]
 2390 00e2 FFF7FEFF 		bl	_ZNK8Platform15GetMotorCurrentEjb
 2391 00e6 FFF7FEFF 		bl	__aeabi_f2d
 2392 00ea 0135     		adds	r5, r5, #1
 2393 00ec CDE90001 		strd	r0, [sp]
 2394 00f0 3A46     		mov	r2, r7
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 43


 2395 00f2 3046     		mov	r0, r6
 2396 00f4 4649     		ldr	r1, .L422+8
 2397 00f6 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2398 00fa 0A2D     		cmp	r5, #10
 2399 00fc ECD1     		bne	.L419
 2400 00fe 2068     		ldr	r0, [r4]
 2401 0100 039D     		ldr	r5, [sp, #12]
 2402 0102 FFF7FEFF 		bl	_ZNK8Platform20GetElectronicsStringEv
 2403 0106 4649     		ldr	r1, .L422+24
 2404 0108 0246     		mov	r2, r0
 2405 010a 2846     		mov	r0, r5
 2406 010c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2407 0110 FFF7FEFF 		bl	_ZN13DuetExpansion21GetExpansionBoardNameEv
 2408 0114 20B1     		cbz	r0, .L405
 2409 0116 0246     		mov	r2, r0
 2410 0118 4249     		ldr	r1, .L422+28
 2411 011a 0398     		ldr	r0, [sp, #12]
 2412 011c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2413              	.L405:
 2414 0120 4149     		ldr	r1, .L422+32
 2415 0122 424A     		ldr	r2, .L422+36
 2416 0124 0398     		ldr	r0, [sp, #12]
 2417 0126 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2418 012a 4149     		ldr	r1, .L422+40
 2419 012c 414A     		ldr	r2, .L422+44
 2420 012e 0398     		ldr	r0, [sp, #12]
 2421 0130 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2422 0134 6268     		ldr	r2, [r4, #4]
 2423 0136 4049     		ldr	r1, .L422+48
 2424 0138 0398     		ldr	r0, [sp, #12]
 2425 013a 4732     		adds	r2, r2, #71
 2426 013c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2427 0140 3E4A     		ldr	r2, .L422+52
 2428 0142 3F49     		ldr	r1, .L422+56
 2429 0144 0398     		ldr	r0, [sp, #12]
 2430 0146 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2431 014a 2368     		ldr	r3, [r4]
 2432 014c 039D     		ldr	r5, [sp, #12]
 2433 014e D3F86C02 		ldr	r0, [r3, #620]	@ float
 2434 0152 FFF7FEFF 		bl	__aeabi_f2d
 2435 0156 0022     		movs	r2, #0
 2436 0158 3A4B     		ldr	r3, .L422+60
 2437 015a FFF7FEFF 		bl	__aeabi_dmul
 2438 015e 0246     		mov	r2, r0
 2439 0160 0B46     		mov	r3, r1
 2440 0162 2846     		mov	r0, r5
 2441 0164 3849     		ldr	r1, .L422+64
 2442 0166 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2443 016a A368     		ldr	r3, [r4, #8]
 2444 016c 039E     		ldr	r6, [sp, #12]
 2445 016e 03F67423 		addw	r3, r3, #2676
 2446 0172 0025     		movs	r5, #0
 2447 0174 1868     		ldr	r0, [r3]	@ float
 2448 0176 FFF7FEFF 		bl	__aeabi_f2d
 2449 017a 0246     		mov	r2, r0
 2450 017c 0B46     		mov	r3, r1
 2451 017e 3046     		mov	r0, r6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 44


 2452 0180 3249     		ldr	r1, .L422+68
 2453 0182 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2454 0186 0398     		ldr	r0, [sp, #12]
 2455 0188 3149     		ldr	r1, .L422+72
 2456 018a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2457 018e 5B27     		movs	r7, #91
 2458 0190 00E0     		b	.L407
 2459              	.L420:
 2460 0192 2C27     		movs	r7, #44
 2461              	.L407:
 2462 0194 2368     		ldr	r3, [r4]
 2463 0196 039E     		ldr	r6, [sp, #12]
 2464 0198 03EB8503 		add	r3, r3, r5, lsl #2
 2465 019c 0135     		adds	r5, r5, #1
 2466 019e D3F87001 		ldr	r0, [r3, #368]	@ float
 2467 01a2 FFF7FEFF 		bl	__aeabi_f2d
 2468 01a6 3A46     		mov	r2, r7
 2469 01a8 CDE90001 		strd	r0, [sp]
 2470 01ac 3046     		mov	r0, r6
 2471 01ae 1849     		ldr	r1, .L422+8
 2472 01b0 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2473 01b4 0A2D     		cmp	r5, #10
 2474 01b6 ECD1     		bne	.L420
 2475 01b8 0398     		ldr	r0, [sp, #12]
 2476 01ba 2649     		ldr	r1, .L422+76
 2477 01bc FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2478 01c0 0025     		movs	r5, #0
 2479 01c2 5B27     		movs	r7, #91
 2480 01c4 00E0     		b	.L409
 2481              	.L421:
 2482 01c6 2C27     		movs	r7, #44
 2483              	.L409:
 2484 01c8 2368     		ldr	r3, [r4]
 2485 01ca 039E     		ldr	r6, [sp, #12]
 2486 01cc 03EB8503 		add	r3, r3, r5, lsl #2
 2487 01d0 0135     		adds	r5, r5, #1
 2488 01d2 D3F8F000 		ldr	r0, [r3, #240]	@ float
 2489 01d6 FFF7FEFF 		bl	__aeabi_f2d
 2490 01da 3A46     		mov	r2, r7
 2491 01dc CDE90001 		strd	r0, [sp]
 2492 01e0 3046     		mov	r0, r6
 2493 01e2 0B49     		ldr	r1, .L422+8
 2494 01e4 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2495 01e8 0A2D     		cmp	r5, #10
 2496 01ea ECD1     		bne	.L421
 2497 01ec 0398     		ldr	r0, [sp, #12]
 2498 01ee 1A49     		ldr	r1, .L422+80
 2499 01f0 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2500 01f4 0398     		ldr	r0, [sp, #12]
 2501              	.L416:
 2502 01f6 04B0     		add	sp, sp, #16
 2503              		@ sp needed
 2504 01f8 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2505              	.L397:
 2506 01fc 0398     		ldr	r0, [sp, #12]
 2507 01fe 0549     		ldr	r1, .L422+12
 2508 0200 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 45


 2509 0204 47E7     		b	.L410
 2510              	.L423:
 2511 0206 00BF     		.align	2
 2512              	.L422:
 2513 0208 00000000 		.word	reprap
 2514 020c 28080000 		.word	.LC96
 2515 0210 94030000 		.word	.LC41
 2516 0214 38090000 		.word	.LC110
 2517 0218 38080000 		.word	.LC97
 2518 021c 4C080000 		.word	.LC98
 2519 0220 5C080000 		.word	.LC99
 2520 0224 78080000 		.word	.LC100
 2521 0228 80080000 		.word	.LC101
 2522 022c B8000000 		.word	.LC5
 2523 0230 98080000 		.word	.LC102
 2524 0234 D8000000 		.word	.LC6
 2525 0238 B0080000 		.word	.LC103
 2526 023c F0000000 		.word	.LC7
 2527 0240 C4080000 		.word	.LC104
 2528 0244 00005940 		.word	1079574528
 2529 0248 DC080000 		.word	.LC105
 2530 024c F8080000 		.word	.LC106
 2531 0250 0C090000 		.word	.LC107
 2532 0254 20090000 		.word	.LC108
 2533 0258 34090000 		.word	.LC109
 2534              		.size	_ZN6RepRap17GetConfigResponseEv, .-_ZN6RepRap17GetConfigResponseEv
 2535              		.section	.text._ZN6RepRap23GetLegacyStatusResponseEhi,"ax",%progbits
 2536              		.align	2
 2537              		.global	_ZN6RepRap23GetLegacyStatusResponseEhi
 2538              		.thumb
 2539              		.thumb_func
 2540              		.type	_ZN6RepRap23GetLegacyStatusResponseEhi, %function
 2541              	_ZN6RepRap23GetLegacyStatusResponseEhi:
 2542              		@ args = 0, pretend = 0, frame = 64
 2543              		@ frame_needed = 0, uses_anonymous_args = 0
 2544 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2545 0004 95B0     		sub	sp, sp, #84
 2546 0006 0646     		mov	r6, r0
 2547 0008 07A8     		add	r0, sp, #28
 2548 000a 0491     		str	r1, [sp, #16]
 2549 000c 0592     		str	r2, [sp, #20]
 2550 000e FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2551 0012 0028     		cmp	r0, #0
 2552 0014 00F02F82 		beq	.L518
 2553 0018 96F84530 		ldrb	r3, [r6, #69]	@ zero_extendqisi2
 2554 001c 002B     		cmp	r3, #0
 2555 001e 00F06982 		beq	.L519
 2556 0022 4322     		movs	r2, #67
 2557              	.L427:
 2558 0024 0798     		ldr	r0, [sp, #28]
 2559 0026 A649     		ldr	r1, .L534
 2560 0028 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 2561 002c F068     		ldr	r0, [r6, #12]
 2562 002e 90F92E40 		ldrsb	r4, [r0, #46]
 2563 0032 671C     		adds	r7, r4, #1
 2564 0034 00F02282 		beq	.L498
 2565 0038 2146     		mov	r1, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 46


 2566 003a 079D     		ldr	r5, [sp, #28]
 2567 003c FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 2568 0040 FFF7FEFF 		bl	__aeabi_f2d
 2569 0044 0246     		mov	r2, r0
 2570 0046 0B46     		mov	r3, r1
 2571 0048 2846     		mov	r0, r5
 2572 004a 9E49     		ldr	r1, .L534+4
 2573 004c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2574 0050 2C27     		movs	r7, #44
 2575              	.L428:
 2576 0052 F38D     		ldrh	r3, [r6, #46]
 2577 0054 012B     		cmp	r3, #1
 2578 0056 40F2FA82 		bls	.L429
 2579 005a 0125     		movs	r5, #1
 2580 005c 00E0     		b	.L431
 2581              	.L520:
 2582 005e 2C27     		movs	r7, #44
 2583              	.L431:
 2584 0060 69B2     		sxtb	r1, r5
 2585 0062 F068     		ldr	r0, [r6, #12]
 2586 0064 DDF81C80 		ldr	r8, [sp, #28]
 2587 0068 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 2588 006c FFF7FEFF 		bl	__aeabi_f2d
 2589 0070 3A46     		mov	r2, r7
 2590 0072 CDE90001 		strd	r0, [sp]
 2591 0076 4046     		mov	r0, r8
 2592 0078 9349     		ldr	r1, .L534+8
 2593 007a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2594 007e F38D     		ldrh	r3, [r6, #46]
 2595 0080 0135     		adds	r5, r5, #1
 2596 0082 AB42     		cmp	r3, r5
 2597 0084 EBD8     		bhi	.L520
 2598 0086 0798     		ldr	r0, [sp, #28]
 2599              	.L487:
 2600 0088 9049     		ldr	r1, .L534+12
 2601              	.L432:
 2602 008a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2603 008e 9049     		ldr	r1, .L534+16
 2604 0090 0798     		ldr	r0, [sp, #28]
 2605 0092 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2606 0096 F068     		ldr	r0, [r6, #12]
 2607 0098 90F92E10 		ldrsb	r1, [r0, #46]
 2608 009c 4D1C     		adds	r5, r1, #1
 2609 009e 00F01A82 		beq	.L500
 2610 00a2 079D     		ldr	r5, [sp, #28]
 2611 00a4 FFF7FEFF 		bl	_ZNK4Heat20GetActiveTemperatureEa
 2612 00a8 FFF7FEFF 		bl	__aeabi_f2d
 2613 00ac 0246     		mov	r2, r0
 2614 00ae 0B46     		mov	r3, r1
 2615 00b0 2846     		mov	r0, r5
 2616 00b2 8449     		ldr	r1, .L534+4
 2617 00b4 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2618 00b8 2C27     		movs	r7, #44
 2619              	.L433:
 2620 00ba F38D     		ldrh	r3, [r6, #46]
 2621 00bc 012B     		cmp	r3, #1
 2622 00be 40F2D882 		bls	.L434
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 47


 2623 00c2 0125     		movs	r5, #1
 2624 00c4 00E0     		b	.L436
 2625              	.L521:
 2626 00c6 2C27     		movs	r7, #44
 2627              	.L436:
 2628 00c8 69B2     		sxtb	r1, r5
 2629 00ca F068     		ldr	r0, [r6, #12]
 2630 00cc DDF81C80 		ldr	r8, [sp, #28]
 2631 00d0 FFF7FEFF 		bl	_ZNK4Heat20GetActiveTemperatureEa
 2632 00d4 FFF7FEFF 		bl	__aeabi_f2d
 2633 00d8 3A46     		mov	r2, r7
 2634 00da CDE90001 		strd	r0, [sp]
 2635 00de 4046     		mov	r0, r8
 2636 00e0 7949     		ldr	r1, .L534+8
 2637 00e2 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2638 00e6 F38D     		ldrh	r3, [r6, #46]
 2639 00e8 0135     		adds	r5, r5, #1
 2640 00ea AB42     		cmp	r3, r5
 2641 00ec EBD8     		bhi	.L521
 2642 00ee 0798     		ldr	r0, [sp, #28]
 2643              	.L488:
 2644 00f0 7649     		ldr	r1, .L534+12
 2645              	.L437:
 2646 00f2 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2647 00f6 7749     		ldr	r1, .L534+20
 2648 00f8 0798     		ldr	r0, [sp, #28]
 2649 00fa FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2650 00fe 611C     		adds	r1, r4, #1
 2651 0100 00F0E781 		beq	.L502
 2652 0104 2146     		mov	r1, r4
 2653 0106 F068     		ldr	r0, [r6, #12]
 2654 0108 079D     		ldr	r5, [sp, #28]
 2655 010a FFF7FEFF 		bl	_ZNK4Heat21GetStandbyTemperatureEa
 2656 010e FFF7FEFF 		bl	__aeabi_f2d
 2657 0112 0246     		mov	r2, r0
 2658 0114 0B46     		mov	r3, r1
 2659 0116 2846     		mov	r0, r5
 2660 0118 6A49     		ldr	r1, .L534+4
 2661 011a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2662 011e 2C27     		movs	r7, #44
 2663              	.L438:
 2664 0120 F38D     		ldrh	r3, [r6, #46]
 2665 0122 012B     		cmp	r3, #1
 2666 0124 40F29F82 		bls	.L439
 2667 0128 0125     		movs	r5, #1
 2668 012a 00E0     		b	.L441
 2669              	.L522:
 2670 012c 2C27     		movs	r7, #44
 2671              	.L441:
 2672 012e 69B2     		sxtb	r1, r5
 2673 0130 F068     		ldr	r0, [r6, #12]
 2674 0132 DDF81C80 		ldr	r8, [sp, #28]
 2675 0136 FFF7FEFF 		bl	_ZNK4Heat21GetStandbyTemperatureEa
 2676 013a FFF7FEFF 		bl	__aeabi_f2d
 2677 013e 3A46     		mov	r2, r7
 2678 0140 CDE90001 		strd	r0, [sp]
 2679 0144 4046     		mov	r0, r8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 48


 2680 0146 6049     		ldr	r1, .L534+8
 2681 0148 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2682 014c F38D     		ldrh	r3, [r6, #46]
 2683 014e 0135     		adds	r5, r5, #1
 2684 0150 AB42     		cmp	r3, r5
 2685 0152 EBD8     		bhi	.L522
 2686 0154 0798     		ldr	r0, [sp, #28]
 2687              	.L489:
 2688 0156 5D49     		ldr	r1, .L534+12
 2689              	.L442:
 2690 0158 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2691 015c 0798     		ldr	r0, [sp, #28]
 2692 015e 5E49     		ldr	r1, .L534+24
 2693 0160 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2694 0164 621C     		adds	r2, r4, #1
 2695 0166 00F0B281 		beq	.L504
 2696 016a 2146     		mov	r1, r4
 2697 016c F068     		ldr	r0, [r6, #12]
 2698 016e 079C     		ldr	r4, [sp, #28]
 2699 0170 FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 2700 0174 5949     		ldr	r1, .L534+28
 2701 0176 0246     		mov	r2, r0
 2702 0178 2046     		mov	r0, r4
 2703 017a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2704 017e 2C25     		movs	r5, #44
 2705              	.L443:
 2706 0180 F38D     		ldrh	r3, [r6, #46]
 2707 0182 012B     		cmp	r3, #1
 2708 0184 40F26982 		bls	.L444
 2709 0188 0124     		movs	r4, #1
 2710 018a 00E0     		b	.L446
 2711              	.L523:
 2712 018c 2C25     		movs	r5, #44
 2713              	.L446:
 2714 018e 61B2     		sxtb	r1, r4
 2715 0190 F068     		ldr	r0, [r6, #12]
 2716 0192 079F     		ldr	r7, [sp, #28]
 2717 0194 FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 2718 0198 2A46     		mov	r2, r5
 2719 019a 0346     		mov	r3, r0
 2720 019c 5049     		ldr	r1, .L534+32
 2721 019e 3846     		mov	r0, r7
 2722 01a0 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2723 01a4 F38D     		ldrh	r3, [r6, #46]
 2724 01a6 0134     		adds	r4, r4, #1
 2725 01a8 A342     		cmp	r3, r4
 2726 01aa EFD8     		bhi	.L523
 2727 01ac 0798     		ldr	r0, [sp, #28]
 2728              	.L490:
 2729 01ae 4749     		ldr	r1, .L534+12
 2730              	.L447:
 2731 01b0 4C4C     		ldr	r4, .L534+36
 2732 01b2 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2733 01b6 2269     		ldr	r2, [r4, #16]
 2734 01b8 736A     		ldr	r3, [r6, #36]
 2735 01ba D2F8B071 		ldr	r7, [r2, #432]
 2736 01be A068     		ldr	r0, [r4, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 49


 2737 01c0 002B     		cmp	r3, #0
 2738 01c2 00F0F381 		beq	.L506
 2739 01c6 D3F8C020 		ldr	r2, [r3, #192]
 2740              	.L448:
 2741 01ca 0AA9     		add	r1, sp, #40
 2742 01cc FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfm
 2743 01d0 D4F82480 		ldr	r8, [r4, #36]
 2744 01d4 B8F1000F 		cmp	r8, #0
 2745 01d8 00F0E081 		beq	.L449
 2746 01dc 08F1A802 		add	r2, r8, #168
 2747 01e0 002F     		cmp	r7, #0
 2748 01e2 00F04C82 		beq	.L450
 2749 01e6 0AAB     		add	r3, sp, #40
 2750 01e8 03EB8701 		add	r1, r3, r7, lsl #2
 2751              	.L452:
 2752 01ec 93ED007A 		flds	s14, [r3]
 2753 01f0 F2EC017A 		fldmias	r2!, {s15}
 2754 01f4 77EE277A 		fadds	s15, s14, s15
 2755 01f8 E3EC017A 		fstmias	r3!, {s15}
 2756 01fc 8B42     		cmp	r3, r1
 2757 01fe F5D1     		bne	.L452
 2758 0200 0798     		ldr	r0, [sp, #28]
 2759 0202 3949     		ldr	r1, .L534+40
 2760 0204 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2761              	.L453:
 2762 0208 0DF1280B 		add	fp, sp, #40
 2763 020c 0025     		movs	r5, #0
 2764 020e 4FF05B0A 		mov	r10, #91
 2765 0212 01E0     		b	.L456
 2766              	.L524:
 2767 0214 4FF02C0A 		mov	r10, #44
 2768              	.L456:
 2769 0218 5BF8040B 		ldr	r0, [fp], #4	@ float
 2770 021c DDF81C90 		ldr	r9, [sp, #28]
 2771 0220 FFF7FEFF 		bl	__aeabi_f2d
 2772 0224 0135     		adds	r5, r5, #1
 2773 0226 CDE90001 		strd	r0, [sp]
 2774 022a 5246     		mov	r2, r10
 2775 022c 4846     		mov	r0, r9
 2776 022e 2F49     		ldr	r1, .L534+44
 2777 0230 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2778 0234 BD42     		cmp	r5, r7
 2779 0236 EDD3     		bcc	.L524
 2780              	.L454:
 2781 0238 0798     		ldr	r0, [sp, #28]
 2782 023a 2D49     		ldr	r1, .L534+48
 2783 023c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2784 0240 A38D     		ldrh	r3, [r4, #44]
 2785 0242 002B     		cmp	r3, #0
 2786 0244 00F00082 		beq	.L457
 2787 0248 0025     		movs	r5, #0
 2788 024a 4FF05B0A 		mov	r10, #91
 2789 024e 01E0     		b	.L459
 2790              	.L525:
 2791 0250 4FF02C0A 		mov	r10, #44
 2792              	.L459:
 2793 0254 2946     		mov	r1, r5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 50


 2794 0256 3069     		ldr	r0, [r6, #16]
 2795 0258 DDF81CB0 		ldr	fp, [sp, #28]
 2796 025c FFF7FEFF 		bl	_ZNK6GCodes22GetRawExtruderPositionEj
 2797 0260 FFF7FEFF 		bl	__aeabi_f2d
 2798 0264 5246     		mov	r2, r10
 2799 0266 CDE90001 		strd	r0, [sp]
 2800 026a 5846     		mov	r0, fp
 2801 026c 1649     		ldr	r1, .L534+8
 2802 026e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2803 0272 A38D     		ldrh	r3, [r4, #44]
 2804 0274 0135     		adds	r5, r5, #1
 2805 0276 AB42     		cmp	r3, r5
 2806 0278 EAD8     		bhi	.L525
 2807 027a 0798     		ldr	r0, [sp, #28]
 2808 027c 1349     		ldr	r1, .L534+12
 2809              	.L491:
 2810 027e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2811 0282 3369     		ldr	r3, [r6, #16]
 2812 0284 DFED1B7A 		flds	s15, .L534+52
 2813 0288 93EDB07A 		flds	s14, [r3, #704]
 2814 028c 079D     		ldr	r5, [sp, #28]
 2815 028e 67EE277A 		fmuls	s15, s14, s15
 2816 0292 17EE900A 		fmrs	r0, s15
 2817 0296 FFF7FEFF 		bl	__aeabi_f2d
 2818 029a 0022     		movs	r2, #0
 2819 029c 164B     		ldr	r3, .L534+56
 2820 029e FFF7FEFF 		bl	__aeabi_dmul
 2821 02a2 0B46     		mov	r3, r1
 2822 02a4 0246     		mov	r2, r0
 2823 02a6 1549     		ldr	r1, .L534+60
 2824 02a8 2846     		mov	r0, r5
 2825 02aa FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2826 02ae A38D     		ldrh	r3, [r4, #44]
 2827 02b0 002B     		cmp	r3, #0
 2828 02b2 00F07D81 		beq	.L460
 2829 02b6 0025     		movs	r5, #0
 2830 02b8 4FF05B0A 		mov	r10, #91
 2831 02bc 22E0     		b	.L462
 2832              	.L535:
 2833 02be 00BF     		.align	2
 2834              	.L534:
 2835 02c0 48090000 		.word	.LC111
 2836 02c4 64090000 		.word	.LC112
 2837 02c8 24030000 		.word	.LC32
 2838 02cc E0020000 		.word	.LC27
 2839 02d0 F4040000 		.word	.LC56
 2840 02d4 00050000 		.word	.LC57
 2841 02d8 6C090000 		.word	.LC113
 2842 02dc 78090000 		.word	.LC114
 2843 02e0 10030000 		.word	.LC30
 2844 02e4 00000000 		.word	reprap
 2845 02e8 7C090000 		.word	.LC115
 2846 02ec 38030000 		.word	.LC34
 2847 02f0 18030000 		.word	.LC31
 2848 02f4 00007042 		.word	1114636288
 2849 02f8 00005940 		.word	1079574528
 2850 02fc 84090000 		.word	.LC116
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 51


 2851              	.L526:
 2852 0300 4FF02C0A 		mov	r10, #44
 2853              	.L462:
 2854 0304 3369     		ldr	r3, [r6, #16]
 2855 0306 DDF81CB0 		ldr	fp, [sp, #28]
 2856 030a 03EB8503 		add	r3, r3, r5, lsl #2
 2857 030e 0135     		adds	r5, r5, #1
 2858 0310 D3F8C402 		ldr	r0, [r3, #708]	@ float
 2859 0314 FFF7FEFF 		bl	__aeabi_f2d
 2860 0318 A74B     		ldr	r3, .L536
 2861 031a 0022     		movs	r2, #0
 2862 031c FFF7FEFF 		bl	__aeabi_dmul
 2863 0320 5246     		mov	r2, r10
 2864 0322 CDE90001 		strd	r0, [sp]
 2865 0326 5846     		mov	r0, fp
 2866 0328 A449     		ldr	r1, .L536+4
 2867 032a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2868 032e A38D     		ldrh	r3, [r4, #44]
 2869 0330 AB42     		cmp	r3, r5
 2870 0332 E5D8     		bhi	.L526
 2871 0334 0798     		ldr	r0, [sp, #28]
 2872 0336 A249     		ldr	r1, .L536+8
 2873              	.L492:
 2874 0338 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2875 033c 3069     		ldr	r0, [r6, #16]
 2876 033e 079C     		ldr	r4, [sp, #28]
 2877 0340 FFF7FEFF 		bl	_ZNK6GCodes17GetBabyStepOffsetEv
 2878 0344 FFF7FEFF 		bl	__aeabi_f2d
 2879 0348 0246     		mov	r2, r0
 2880 034a 0B46     		mov	r3, r1
 2881 034c 2046     		mov	r0, r4
 2882 034e 9D49     		ldr	r1, .L536+12
 2883 0350 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2884 0354 B8F1000F 		cmp	r8, #0
 2885 0358 00F01E81 		beq	.L507
 2886 035c D8F80420 		ldr	r2, [r8, #4]
 2887              	.L463:
 2888 0360 9949     		ldr	r1, .L536+16
 2889 0362 0798     		ldr	r0, [sp, #28]
 2890 0364 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2891 0368 3068     		ldr	r0, [r6]
 2892 036a FFF7FEFF 		bl	_ZNK8Platform16GetZProbeReadingEv
 2893 036e 08A9     		add	r1, sp, #32
 2894 0370 0446     		mov	r4, r0
 2895 0372 09AA     		add	r2, sp, #36
 2896 0374 3068     		ldr	r0, [r6]
 2897 0376 FFF7FEFF 		bl	_ZN8Platform24GetZProbeSecondaryValuesERiS0_
 2898 037a 0128     		cmp	r0, #1
 2899 037c 00F0AD80 		beq	.L465
 2900 0380 0228     		cmp	r0, #2
 2901 0382 40F0B180 		bne	.L527
 2902 0386 099A     		ldr	r2, [sp, #36]
 2903 0388 0092     		str	r2, [sp]
 2904 038a 0798     		ldr	r0, [sp, #28]
 2905 038c 089B     		ldr	r3, [sp, #32]
 2906 038e 8F49     		ldr	r1, .L536+20
 2907 0390 2246     		mov	r2, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 52


 2908 0392 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2909              	.L467:
 2910 0396 0798     		ldr	r0, [sp, #28]
 2911 0398 8D49     		ldr	r1, .L536+24
 2912 039a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2913 039e 0024     		movs	r4, #0
 2914 03a0 4FF05B08 		mov	r8, #91
 2915 03a4 01E0     		b	.L469
 2916              	.L528:
 2917 03a6 4FF02C08 		mov	r8, #44
 2918              	.L469:
 2919 03aa 2146     		mov	r1, r4
 2920 03ac 3068     		ldr	r0, [r6]
 2921 03ae 079D     		ldr	r5, [sp, #28]
 2922 03b0 FFF7FEFF 		bl	_ZNK8Platform11GetFanValueEj
 2923 03b4 FFF7FEFF 		bl	__aeabi_f2d
 2924 03b8 0022     		movs	r2, #0
 2925 03ba 7F4B     		ldr	r3, .L536
 2926 03bc FFF7FEFF 		bl	__aeabi_dmul
 2927 03c0 0134     		adds	r4, r4, #1
 2928 03c2 CDE90001 		strd	r0, [sp]
 2929 03c6 4246     		mov	r2, r8
 2930 03c8 2846     		mov	r0, r5
 2931 03ca 8249     		ldr	r1, .L536+28
 2932 03cc FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2933 03d0 082C     		cmp	r4, #8
 2934 03d2 E8D1     		bne	.L528
 2935 03d4 3068     		ldr	r0, [r6]
 2936 03d6 079C     		ldr	r4, [sp, #28]
 2937 03d8 FFF7FEFF 		bl	_ZN8Platform9GetFanRPMEv
 2938 03dc 07EE900A 		fmsr	s15, r0
 2939 03e0 FCEEE77A 		ftouizs	s15, s15
 2940 03e4 7C49     		ldr	r1, .L536+32
 2941 03e6 17EE902A 		fmrs	r2, s15	@ int
 2942 03ea 2046     		mov	r0, r4
 2943 03ec FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2944 03f0 0798     		ldr	r0, [sp, #28]
 2945 03f2 7A49     		ldr	r1, .L536+36
 2946 03f4 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2947 03f8 AFB1     		cbz	r7, .L473
 2948 03fa 0024     		movs	r4, #0
 2949 03fc 5B22     		movs	r2, #91
 2950 03fe 0125     		movs	r5, #1
 2951 0400 00E0     		b	.L474
 2952              	.L529:
 2953 0402 2C22     		movs	r2, #44
 2954              	.L474:
 2955 0404 3369     		ldr	r3, [r6, #16]
 2956 0406 0798     		ldr	r0, [sp, #28]
 2957 0408 D3F89832 		ldr	r3, [r3, #664]
 2958 040c 7449     		ldr	r1, .L536+40
 2959 040e 05FA04FE 		lsl	lr, r5, r4
 2960 0412 1EEA030F 		tst	lr, r3
 2961 0416 0CBF     		ite	eq
 2962 0418 0023     		moveq	r3, #0
 2963 041a 0123     		movne	r3, #1
 2964 041c 0134     		adds	r4, r4, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 53


 2965 041e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2966 0422 BC42     		cmp	r4, r7
 2967 0424 EDD1     		bne	.L529
 2968              	.L473:
 2969 0426 0798     		ldr	r0, [sp, #28]
 2970 0428 5D21     		movs	r1, #93
 2971 042a FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 2972 042e F369     		ldr	r3, [r6, #28]
 2973 0430 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 2974 0432 002B     		cmp	r3, #0
 2975 0434 6BD1     		bne	.L530
 2976 0436 0498     		ldr	r0, [sp, #16]
 2977 0438 0228     		cmp	r0, #2
 2978 043a 7ED0     		beq	.L531
 2979              	.L476:
 2980 043c 049A     		ldr	r2, [sp, #16]
 2981 043e 032A     		cmp	r2, #3
 2982 0440 00F0E680 		beq	.L532
 2983 0444 3368     		ldr	r3, [r6]
 2984 0446 D3F83828 		ldr	r2, [r3, #2104]
 2985 044a 049B     		ldr	r3, [sp, #16]
 2986 044c 012B     		cmp	r3, #1
 2987 044e 38D8     		bhi	.L485
 2988              	.L483:
 2989 0450 6449     		ldr	r1, .L536+44
 2990 0452 0798     		ldr	r0, [sp, #28]
 2991 0454 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2992 0458 3368     		ldr	r3, [r6]
 2993 045a 0798     		ldr	r0, [sp, #28]
 2994 045c D3F83418 		ldr	r1, [r3, #2100]
 2995 0460 0022     		movs	r2, #0
 2996 0462 C3F83428 		str	r2, [r3, #2100]
 2997 0466 0122     		movs	r2, #1
 2998 0468 FFF7FEFF 		bl	_ZN12OutputBuffer11EncodeReplyEPS_b
 2999              	.L484:
 3000 046c 0798     		ldr	r0, [sp, #28]
 3001 046e 5E49     		ldr	r1, .L536+48
 3002 0470 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3003 0474 0798     		ldr	r0, [sp, #28]
 3004              	.L518:
 3005 0476 15B0     		add	sp, sp, #84
 3006              		@ sp needed
 3007 0478 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3008              	.L498:
 3009 047c 5B27     		movs	r7, #91
 3010 047e E8E5     		b	.L428
 3011              	.L509:
 3012 0480 0D46     		mov	r5, r1
 3013              	.L479:
 3014 0482 0221     		movs	r1, #2
 3015 0484 7246     		mov	r2, lr
 3016 0486 3B46     		mov	r3, r7
 3017 0488 0091     		str	r1, [sp]
 3018 048a 0124     		movs	r4, #1
 3019 048c 5749     		ldr	r1, .L536+52
 3020 048e 0195     		str	r5, [sp, #4]
 3021 0490 4046     		mov	r0, r8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 54


 3022 0492 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3023 0496 2922     		movs	r2, #41
 3024 0498 0023     		movs	r3, #0
 3025 049a 06F15B01 		add	r1, r6, #91
 3026 049e 0798     		ldr	r0, [sp, #28]
 3027 04a0 0094     		str	r4, [sp]
 3028 04a2 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 3029 04a6 5249     		ldr	r1, .L536+56
 3030 04a8 0798     		ldr	r0, [sp, #28]
 3031 04aa FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3032 04ae 1C22     		movs	r2, #28
 3033 04b0 0023     		movs	r3, #0
 3034 04b2 0798     		ldr	r0, [sp, #28]
 3035 04b4 0094     		str	r4, [sp]
 3036 04b6 4F49     		ldr	r1, .L536+60
 3037 04b8 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 3038 04bc 3368     		ldr	r3, [r6]
 3039 04be D3F83828 		ldr	r2, [r3, #2104]
 3040              	.L485:
 3041 04c2 0598     		ldr	r0, [sp, #20]
 3042 04c4 431C     		adds	r3, r0, #1
 3043 04c6 D1D0     		beq	.L484
 3044 04c8 8242     		cmp	r2, r0
 3045 04ca C1D1     		bne	.L483
 3046 04cc CEE7     		b	.L484
 3047              	.L504:
 3048 04ce 5B25     		movs	r5, #91
 3049 04d0 56E6     		b	.L443
 3050              	.L502:
 3051 04d2 5B27     		movs	r7, #91
 3052 04d4 24E6     		b	.L438
 3053              	.L500:
 3054 04d6 5B27     		movs	r7, #91
 3055 04d8 EFE5     		b	.L433
 3056              	.L465:
 3057 04da 2246     		mov	r2, r4
 3058 04dc 0798     		ldr	r0, [sp, #28]
 3059 04de 4649     		ldr	r1, .L536+64
 3060 04e0 089B     		ldr	r3, [sp, #32]
 3061 04e2 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3062 04e6 56E7     		b	.L467
 3063              	.L527:
 3064 04e8 2246     		mov	r2, r4
 3065 04ea 0798     		ldr	r0, [sp, #28]
 3066 04ec 4349     		ldr	r1, .L536+68
 3067 04ee FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3068 04f2 50E7     		b	.L467
 3069              	.L519:
 3070 04f4 3046     		mov	r0, r6
 3071 04f6 FFF7FEFF 		bl	_ZNK6RepRap18GetStatusCharacterEv.part.18
 3072 04fa 5328     		cmp	r0, #83
 3073 04fc 08BF     		it	eq
 3074 04fe 4122     		moveq	r2, #65
 3075 0500 3FF490AD 		beq	.L427
 3076 0504 4828     		cmp	r0, #72
 3077 0506 14BF     		ite	ne
 3078 0508 0246     		movne	r2, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 55


 3079 050a 5322     		moveq	r2, #83
 3080 050c 8AE5     		b	.L427
 3081              	.L530:
 3082 050e 3069     		ldr	r0, [r6, #16]
 3083 0510 079C     		ldr	r4, [sp, #28]
 3084 0512 FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 3085 0516 07EE900A 		fmsr	s15, r0
 3086 051a F5EEC07A 		fcmpezs	s15
 3087 051e F1EE10FA 		fmstat
 3088 0522 36D4     		bmi	.L508
 3089 0524 FFF7FEFF 		bl	__aeabi_f2d
 3090 0528 0246     		mov	r2, r0
 3091 052a 0B46     		mov	r3, r1
 3092              	.L475:
 3093 052c 2046     		mov	r0, r4
 3094 052e 3449     		ldr	r1, .L536+72
 3095 0530 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3096 0534 0498     		ldr	r0, [sp, #16]
 3097 0536 0228     		cmp	r0, #2
 3098 0538 80D1     		bne	.L476
 3099              	.L531:
 3100 053a F069     		ldr	r0, [r6, #28]
 3101 053c 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 3102 053e 1BB9     		cbnz	r3, .L533
 3103              	.L477:
 3104 0540 3368     		ldr	r3, [r6]
 3105 0542 D3F83828 		ldr	r2, [r3, #2104]
 3106 0546 BCE7     		b	.L485
 3107              	.L533:
 3108 0548 0121     		movs	r1, #1
 3109 054a 079F     		ldr	r7, [sp, #28]
 3110 054c FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 3111 0550 0021     		movs	r1, #0
 3112 0552 0446     		mov	r4, r0	@ float
 3113 0554 F069     		ldr	r0, [r6, #28]
 3114 0556 FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 3115 055a 0499     		ldr	r1, [sp, #16]
 3116 055c 8346     		mov	fp, r0	@ float
 3117 055e F069     		ldr	r0, [r6, #28]
 3118 0560 FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 3119 0564 8046     		mov	r8, r0	@ float
 3120 0566 2046     		mov	r0, r4	@ float
 3121 0568 FFF7FEFF 		bl	__aeabi_f2d
 3122 056c 0446     		mov	r4, r0
 3123 056e 5846     		mov	r0, fp	@ float
 3124 0570 0D46     		mov	r5, r1
 3125 0572 FFF7FEFF 		bl	__aeabi_f2d
 3126 0576 CDE90001 		strd	r0, [sp]
 3127 057a 4046     		mov	r0, r8	@ float
 3128 057c FFF7FEFF 		bl	__aeabi_f2d
 3129 0580 2246     		mov	r2, r4
 3130 0582 CDE90201 		strd	r0, [sp, #8]
 3131 0586 2B46     		mov	r3, r5
 3132 0588 3846     		mov	r0, r7
 3133 058a 1E49     		ldr	r1, .L536+76
 3134 058c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3135 0590 D6E7     		b	.L477
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 56


 3136              	.L508:
 3137 0592 0022     		movs	r2, #0
 3138 0594 0023     		movs	r3, #0
 3139 0596 C9E7     		b	.L475
 3140              	.L507:
 3141 0598 4246     		mov	r2, r8
 3142 059a E1E6     		b	.L463
 3143              	.L449:
 3144 059c 0798     		ldr	r0, [sp, #28]
 3145 059e 1A49     		ldr	r1, .L536+80
 3146 05a0 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3147 05a4 002F     		cmp	r7, #0
 3148 05a6 7FF42FAE 		bne	.L453
 3149 05aa 45E6     		b	.L454
 3150              	.L506:
 3151 05ac 0122     		movs	r2, #1
 3152 05ae 0CE6     		b	.L448
 3153              	.L460:
 3154 05b0 0798     		ldr	r0, [sp, #28]
 3155 05b2 1649     		ldr	r1, .L536+84
 3156 05b4 C0E6     		b	.L492
 3157              	.L537:
 3158 05b6 00BF     		.align	2
 3159              	.L536:
 3160 05b8 00005940 		.word	1079574528
 3161 05bc 94030000 		.word	.LC41
 3162 05c0 E0020000 		.word	.LC27
 3163 05c4 A0090000 		.word	.LC117
 3164 05c8 B4090000 		.word	.LC118
 3165 05cc D4090000 		.word	.LC120
 3166 05d0 84030000 		.word	.LC40
 3167 05d4 FC090000 		.word	.LC122
 3168 05d8 040A0000 		.word	.LC123
 3169 05dc 140A0000 		.word	.LC124
 3170 05e0 10030000 		.word	.LC30
 3171 05e4 5C0A0000 		.word	.LC127
 3172 05e8 64030000 		.word	.LC38
 3173 05ec 700A0000 		.word	.LC128
 3174 05f0 B00A0000 		.word	.LC129
 3175 05f4 B8000000 		.word	.LC5
 3176 05f8 C0090000 		.word	.LC119
 3177 05fc EC090000 		.word	.LC121
 3178 0600 200A0000 		.word	.LC125
 3179 0604 3C0A0000 		.word	.LC126
 3180 0608 7C090000 		.word	.LC115
 3181 060c DC020000 		.word	.LC26
 3182              	.L532:
 3183 0610 B068     		ldr	r0, [r6, #8]
 3184 0612 DDF81C80 		ldr	r8, [sp, #28]
 3185 0616 FFF7FEFF 		bl	_ZNK4Move17GetGeometryStringEv
 3186 061a 316A     		ldr	r1, [r6, #32]
 3187 061c 8646     		mov	lr, r0
 3188 061e 0029     		cmp	r1, #0
 3189 0620 3FF42EAF 		beq	.L509
 3190 0624 0024     		movs	r4, #0
 3191 0626 4868     		ldr	r0, [r1, #4]
 3192 0628 2546     		mov	r5, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 57


 3193              	.L493:
 3194 062a 8442     		cmp	r4, r0
 3195 062c 09D0     		beq	.L480
 3196 062e 0B46     		mov	r3, r1
 3197 0630 02E0     		b	.L481
 3198              	.L482:
 3199 0632 5A68     		ldr	r2, [r3, #4]
 3200 0634 9442     		cmp	r4, r2
 3201 0636 04D0     		beq	.L480
 3202              	.L481:
 3203 0638 D3F8C830 		ldr	r3, [r3, #200]
 3204 063c 002B     		cmp	r3, #0
 3205 063e F8D1     		bne	.L482
 3206 0640 1FE7     		b	.L479
 3207              	.L480:
 3208 0642 0135     		adds	r5, r5, #1
 3209 0644 2C46     		mov	r4, r5
 3210 0646 F0E7     		b	.L493
 3211              	.L457:
 3212 0648 0798     		ldr	r0, [sp, #28]
 3213 064a 0F49     		ldr	r1, .L538
 3214 064c 17E6     		b	.L491
 3215              	.L429:
 3216 064e 5B2F     		cmp	r7, #91
 3217 0650 0798     		ldr	r0, [sp, #28]
 3218 0652 7FF419AD 		bne	.L487
 3219 0656 0C49     		ldr	r1, .L538
 3220 0658 17E5     		b	.L432
 3221              	.L444:
 3222 065a 5B2D     		cmp	r5, #91
 3223 065c 0798     		ldr	r0, [sp, #28]
 3224 065e 7FF4A6AD 		bne	.L490
 3225 0662 0949     		ldr	r1, .L538
 3226 0664 A4E5     		b	.L447
 3227              	.L439:
 3228 0666 5B2F     		cmp	r7, #91
 3229 0668 0798     		ldr	r0, [sp, #28]
 3230 066a 7FF474AD 		bne	.L489
 3231 066e 0649     		ldr	r1, .L538
 3232 0670 72E5     		b	.L442
 3233              	.L434:
 3234 0672 5B2F     		cmp	r7, #91
 3235 0674 0798     		ldr	r0, [sp, #28]
 3236 0676 7FF43BAD 		bne	.L488
 3237 067a 0349     		ldr	r1, .L538
 3238 067c 39E5     		b	.L437
 3239              	.L450:
 3240 067e 0798     		ldr	r0, [sp, #28]
 3241 0680 0249     		ldr	r1, .L538+4
 3242 0682 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3243 0686 D7E5     		b	.L454
 3244              	.L539:
 3245              		.align	2
 3246              	.L538:
 3247 0688 DC020000 		.word	.LC26
 3248 068c 7C090000 		.word	.LC115
 3249              		.size	_ZN6RepRap23GetLegacyStatusResponseEhi, .-_ZN6RepRap23GetLegacyStatusResponseEhi
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 58


 3250              		.section	.text._ZN6RepRap17CopyParameterTextEPKcPcj,"ax",%progbits
 3251              		.align	2
 3252              		.global	_ZN6RepRap17CopyParameterTextEPKcPcj
 3253              		.thumb
 3254              		.thumb_func
 3255              		.type	_ZN6RepRap17CopyParameterTextEPKcPcj, %function
 3256              	_ZN6RepRap17CopyParameterTextEPKcPcj:
 3257              		@ args = 0, pretend = 0, frame = 0
 3258              		@ frame_needed = 0, uses_anonymous_args = 0
 3259              		@ link register save eliminated.
 3260 0000 012A     		cmp	r2, #1
 3261 0002 70B4     		push	{r4, r5, r6}
 3262 0004 1DD9     		bls	.L543
 3263 0006 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 3264 0008 1F2B     		cmp	r3, #31
 3265 000a 1AD9     		bls	.L543
 3266 000c 0124     		movs	r4, #1
 3267 000e 0026     		movs	r6, #0
 3268 0010 05E0     		b	.L547
 3269              	.L544:
 3270 0012 10F8013F 		ldrb	r3, [r0, #1]!	@ zero_extendqisi2
 3271 0016 1F2B     		cmp	r3, #31
 3272 0018 05D9     		bls	.L546
 3273 001a 2646     		mov	r6, r4
 3274 001c 2C46     		mov	r4, r5
 3275              	.L547:
 3276 001e 651C     		adds	r5, r4, #1
 3277 0020 9542     		cmp	r5, r2
 3278 0022 8B55     		strb	r3, [r1, r6]
 3279 0024 F5D1     		bne	.L544
 3280              	.L546:
 3281 0026 631E     		subs	r3, r4, #1
 3282 0028 CA5C     		ldrb	r2, [r1, r3]	@ zero_extendqisi2
 3283 002a 202A     		cmp	r2, #32
 3284 002c 18BF     		it	ne
 3285 002e 2346     		movne	r3, r4
 3286 0030 04D0     		beq	.L548
 3287 0032 07E0     		b	.L542
 3288              	.L549:
 3289 0034 885C     		ldrb	r0, [r1, r2]	@ zero_extendqisi2
 3290 0036 2028     		cmp	r0, #32
 3291 0038 04D1     		bne	.L542
 3292 003a 1346     		mov	r3, r2
 3293              	.L548:
 3294 003c 5A1E     		subs	r2, r3, #1
 3295 003e 002B     		cmp	r3, #0
 3296 0040 F8D1     		bne	.L549
 3297              	.L543:
 3298 0042 0023     		movs	r3, #0
 3299              	.L542:
 3300 0044 0022     		movs	r2, #0
 3301 0046 CA54     		strb	r2, [r1, r3]
 3302 0048 70BC     		pop	{r4, r5, r6}
 3303 004a 7047     		bx	lr
 3304              		.size	_ZN6RepRap17CopyParameterTextEPKcPcj, .-_ZN6RepRap17CopyParameterTextEPKcPcj
 3305              		.section	.text._ZN6RepRap16GetFilesResponseEPKcb,"ax",%progbits
 3306              		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 59


 3307              		.global	_ZN6RepRap16GetFilesResponseEPKcb
 3308              		.thumb
 3309              		.thumb_func
 3310              		.type	_ZN6RepRap16GetFilesResponseEPKcb, %function
 3311              	_ZN6RepRap16GetFilesResponseEPKcb:
 3312              		@ args = 0, pretend = 0, frame = 216
 3313              		@ frame_needed = 0, uses_anonymous_args = 0
 3314 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 3315 0004 B9B0     		sub	sp, sp, #228
 3316 0006 0746     		mov	r7, r0
 3317 0008 02A8     		add	r0, sp, #8
 3318 000a 0C46     		mov	r4, r1
 3319 000c 9046     		mov	r8, r2
 3320 000e FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 3321 0012 F8B1     		cbz	r0, .L553
 3322 0014 3749     		ldr	r1, .L573
 3323 0016 0298     		ldr	r0, [sp, #8]
 3324 0018 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 3325 001c 2046     		mov	r0, r4
 3326 001e FFF7FEFF 		bl	strlen
 3327 0022 0126     		movs	r6, #1
 3328 0024 0246     		mov	r2, r0
 3329 0026 0023     		movs	r3, #0
 3330 0028 2146     		mov	r1, r4
 3331 002a 0298     		ldr	r0, [sp, #8]
 3332 002c 0096     		str	r6, [sp]
 3333 002e FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 3334 0032 3149     		ldr	r1, .L573+4
 3335 0034 0298     		ldr	r0, [sp, #8]
 3336 0036 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3337 003a 3B68     		ldr	r3, [r7]
 3338 003c 2146     		mov	r1, r4
 3339 003e D3F83C08 		ldr	r0, [r3, #2108]
 3340 0042 FFF7FEFF 		bl	_ZN11MassStorage17CheckDriveMountedEPKc
 3341 0046 40B9     		cbnz	r0, .L571
 3342 0048 3246     		mov	r2, r6
 3343              	.L554:
 3344 004a 0298     		ldr	r0, [sp, #8]
 3345 004c 2B49     		ldr	r1, .L573+8
 3346 004e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3347 0052 0298     		ldr	r0, [sp, #8]
 3348              	.L553:
 3349 0054 39B0     		add	sp, sp, #228
 3350              		@ sp needed
 3351 0056 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 3352              	.L571:
 3353 005a 3B68     		ldr	r3, [r7]
 3354 005c 2146     		mov	r1, r4
 3355 005e D3F83C08 		ldr	r0, [r3, #2108]
 3356 0062 1CAA     		add	r2, sp, #112
 3357 0064 FFF7FEFF 		bl	_ZN11MassStorage9FindFirstEPKcR8FileInfo
 3358 0068 0546     		mov	r5, r0
 3359 006a 0298     		ldr	r0, [sp, #8]
 3360 006c FFF7FEFF 		bl	_ZN12OutputBuffer12GetBytesLeftEPKS_
 3361 0070 2A23     		movs	r3, #42
 3362 0072 0446     		mov	r4, r0
 3363 0074 8DF80C30 		strb	r3, [sp, #12]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 60


 3364 0078 B146     		mov	r9, r6
 3365 007a 8DB9     		cbnz	r5, .L560
 3366 007c 37E0     		b	.L558
 3367              	.L559:
 3368 007e 0298     		ldr	r0, [sp, #8]
 3369 0080 CDF80090 		str	r9, [sp]
 3370 0084 2946     		mov	r1, r5
 3371 0086 6422     		movs	r2, #100
 3372 0088 0023     		movs	r3, #0
 3373 008a FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 3374 008e 0026     		movs	r6, #0
 3375 0090 241A     		subs	r4, r4, r0
 3376              	.L556:
 3377 0092 3B68     		ldr	r3, [r7]
 3378 0094 1CA9     		add	r1, sp, #112
 3379 0096 D3F83C08 		ldr	r0, [r3, #2108]
 3380 009a FFF7FEFF 		bl	_ZN11MassStorage8FindNextER8FileInfo
 3381 009e 30B3     		cbz	r0, .L558
 3382              	.L560:
 3383 00a0 9DF87130 		ldrb	r3, [sp, #113]	@ zero_extendqisi2
 3384 00a4 2E2B     		cmp	r3, #46
 3385 00a6 F4D0     		beq	.L556
 3386 00a8 B8F1000F 		cmp	r8, #0
 3387 00ac 02D0     		beq	.L564
 3388 00ae 9DF87030 		ldrb	r3, [sp, #112]	@ zero_extendqisi2
 3389 00b2 83B9     		cbnz	r3, .L572
 3390              	.L564:
 3391 00b4 0DF17105 		add	r5, sp, #113
 3392              	.L557:
 3393 00b8 2846     		mov	r0, r5
 3394 00ba FFF7FEFF 		bl	strlen
 3395 00be 0230     		adds	r0, r0, #2
 3396 00c0 B4EB400F 		cmp	r4, r0, lsl #1
 3397 00c4 13D3     		bcc	.L558
 3398 00c6 002E     		cmp	r6, #0
 3399 00c8 D9D1     		bne	.L559
 3400 00ca 0298     		ldr	r0, [sp, #8]
 3401 00cc 2C21     		movs	r1, #44
 3402 00ce FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 3403 00d2 241A     		subs	r4, r4, r0
 3404 00d4 D3E7     		b	.L559
 3405              	.L572:
 3406 00d6 0DF10D00 		add	r0, sp, #13
 3407 00da 0DF17101 		add	r1, sp, #113
 3408 00de 6322     		movs	r2, #99
 3409 00e0 FFF7FEFF 		bl	strncpy
 3410 00e4 0023     		movs	r3, #0
 3411 00e6 8DF86F30 		strb	r3, [sp, #111]
 3412 00ea 03AD     		add	r5, sp, #12
 3413 00ec E4E7     		b	.L557
 3414              	.L558:
 3415 00ee 0022     		movs	r2, #0
 3416 00f0 ABE7     		b	.L554
 3417              	.L574:
 3418 00f2 00BF     		.align	2
 3419              	.L573:
 3420 00f4 C40A0000 		.word	.LC130
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 61


 3421 00f8 CC0A0000 		.word	.LC131
 3422 00fc D80A0000 		.word	.LC132
 3423              		.size	_ZN6RepRap16GetFilesResponseEPKcb, .-_ZN6RepRap16GetFilesResponseEPKcb
 3424              		.section	.text._ZN6RepRap19GetFilelistResponseEPKc,"ax",%progbits
 3425              		.align	2
 3426              		.global	_ZN6RepRap19GetFilelistResponseEPKc
 3427              		.thumb
 3428              		.thumb_func
 3429              		.type	_ZN6RepRap19GetFilelistResponseEPKc, %function
 3430              	_ZN6RepRap19GetFilelistResponseEPKc:
 3431              		@ args = 0, pretend = 0, frame = 120
 3432              		@ frame_needed = 0, uses_anonymous_args = 0
 3433 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 3434 0002 A3B0     		sub	sp, sp, #140
 3435 0004 0646     		mov	r6, r0
 3436 0006 05A8     		add	r0, sp, #20
 3437 0008 0C46     		mov	r4, r1
 3438 000a FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 3439 000e 0028     		cmp	r0, #0
 3440 0010 00F08980 		beq	.L576
 3441 0014 3368     		ldr	r3, [r6]
 3442 0016 2146     		mov	r1, r4
 3443 0018 D3F83C08 		ldr	r0, [r3, #2108]
 3444 001c FFF7FEFF 		bl	_ZN11MassStorage17CheckDriveMountedEPKc
 3445 0020 0028     		cmp	r0, #0
 3446 0022 00F08280 		beq	.L594
 3447 0026 3368     		ldr	r3, [r6]
 3448 0028 2146     		mov	r1, r4
 3449 002a D3F83C08 		ldr	r0, [r3, #2108]
 3450 002e FFF7FEFF 		bl	_ZNK11MassStorage15DirectoryExistsEPKc
 3451 0032 0028     		cmp	r0, #0
 3452 0034 72D0     		beq	.L595
 3453 0036 4749     		ldr	r1, .L598
 3454 0038 0598     		ldr	r0, [sp, #20]
 3455 003a FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 3456 003e 2046     		mov	r0, r4
 3457 0040 FFF7FEFF 		bl	strlen
 3458 0044 0125     		movs	r5, #1
 3459 0046 0246     		mov	r2, r0
 3460 0048 2146     		mov	r1, r4
 3461 004a 0023     		movs	r3, #0
 3462 004c 0598     		ldr	r0, [sp, #20]
 3463 004e 0095     		str	r5, [sp]
 3464 0050 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 3465 0054 4049     		ldr	r1, .L598+4
 3466 0056 0598     		ldr	r0, [sp, #20]
 3467 0058 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3468 005c 3368     		ldr	r3, [r6]
 3469 005e 2146     		mov	r1, r4
 3470 0060 D3F83C08 		ldr	r0, [r3, #2108]
 3471 0064 06AA     		add	r2, sp, #24
 3472 0066 FFF7FEFF 		bl	_ZN11MassStorage9FindFirstEPKcR8FileInfo
 3473 006a 0746     		mov	r7, r0
 3474 006c 0598     		ldr	r0, [sp, #20]
 3475 006e FFF7FEFF 		bl	_ZN12OutputBuffer12GetBytesLeftEPKS_
 3476 0072 0446     		mov	r4, r0
 3477 0074 6FB9     		cbnz	r7, .L585
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 62


 3478 0076 65E0     		b	.L581
 3479              	.L597:
 3480 0078 0598     		ldr	r0, [sp, #20]
 3481 007a FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 3482 007e 0025     		movs	r5, #0
 3483 0080 241A     		subs	r4, r4, r0
 3484              	.L580:
 3485 0082 3368     		ldr	r3, [r6]
 3486 0084 06A9     		add	r1, sp, #24
 3487 0086 D3F83C08 		ldr	r0, [r3, #2108]
 3488 008a FFF7FEFF 		bl	_ZN11MassStorage8FindNextER8FileInfo
 3489 008e 0028     		cmp	r0, #0
 3490 0090 58D0     		beq	.L581
 3491              	.L585:
 3492 0092 9DF81930 		ldrb	r3, [sp, #25]	@ zero_extendqisi2
 3493 0096 2E2B     		cmp	r3, #46
 3494 0098 0DF11900 		add	r0, sp, #25
 3495 009c F1D0     		beq	.L580
 3496 009e FFF7FEFF 		bl	strlen
 3497 00a2 4630     		adds	r0, r0, #70
 3498 00a4 A042     		cmp	r0, r4
 3499 00a6 4DD8     		bhi	.L581
 3500 00a8 002D     		cmp	r5, #0
 3501 00aa 45D0     		beq	.L596
 3502              	.L582:
 3503 00ac 9DF81830 		ldrb	r3, [sp, #24]	@ zero_extendqisi2
 3504 00b0 2A49     		ldr	r1, .L598+8
 3505 00b2 0598     		ldr	r0, [sp, #20]
 3506 00b4 002B     		cmp	r3, #0
 3507 00b6 0CBF     		ite	eq
 3508 00b8 6622     		moveq	r2, #102
 3509 00ba 6422     		movne	r2, #100
 3510 00bc FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3511 00c0 059B     		ldr	r3, [sp, #20]
 3512 00c2 0122     		movs	r2, #1
 3513 00c4 241A     		subs	r4, r4, r0
 3514 00c6 0DF11901 		add	r1, sp, #25
 3515 00ca 1846     		mov	r0, r3
 3516 00cc 0092     		str	r2, [sp]
 3517 00ce 0023     		movs	r3, #0
 3518 00d0 6422     		movs	r2, #100
 3519 00d2 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 3520 00d6 2249     		ldr	r1, .L598+12
 3521 00d8 209A     		ldr	r2, [sp, #128]
 3522 00da 241A     		subs	r4, r4, r0
 3523 00dc 0598     		ldr	r0, [sp, #20]
 3524 00de FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3525 00e2 241A     		subs	r4, r4, r0
 3526 00e4 21A8     		add	r0, sp, #132
 3527 00e6 FFF7FEFF 		bl	gmtime
 3528 00ea 4369     		ldr	r3, [r0, #20]
 3529 00ec 502B     		cmp	r3, #80
 3530 00ee 4FF07D01 		mov	r1, #125
 3531 00f2 03F26C72 		addw	r2, r3, #1900
 3532 00f6 BFDD     		ble	.L597
 3533 00f8 C168     		ldr	r1, [r0, #12]
 3534 00fa 0369     		ldr	r3, [r0, #16]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 63


 3535 00fc 0091     		str	r1, [sp]
 3536 00fe 8168     		ldr	r1, [r0, #8]
 3537 0100 0191     		str	r1, [sp, #4]
 3538 0102 4168     		ldr	r1, [r0, #4]
 3539 0104 0291     		str	r1, [sp, #8]
 3540 0106 0599     		ldr	r1, [sp, #20]
 3541 0108 0068     		ldr	r0, [r0]
 3542 010a 0390     		str	r0, [sp, #12]
 3543 010c 0133     		adds	r3, r3, #1
 3544 010e 0846     		mov	r0, r1
 3545 0110 1449     		ldr	r1, .L598+16
 3546 0112 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3547 0116 0025     		movs	r5, #0
 3548 0118 241A     		subs	r4, r4, r0
 3549 011a B2E7     		b	.L580
 3550              	.L595:
 3551 011c 0598     		ldr	r0, [sp, #20]
 3552 011e 1249     		ldr	r1, .L598+20
 3553 0120 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 3554 0124 0598     		ldr	r0, [sp, #20]
 3555              	.L576:
 3556 0126 23B0     		add	sp, sp, #140
 3557              		@ sp needed
 3558 0128 F0BD     		pop	{r4, r5, r6, r7, pc}
 3559              	.L594:
 3560 012a 0598     		ldr	r0, [sp, #20]
 3561 012c 0F49     		ldr	r1, .L598+24
 3562 012e FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 3563 0132 0598     		ldr	r0, [sp, #20]
 3564 0134 23B0     		add	sp, sp, #140
 3565              		@ sp needed
 3566 0136 F0BD     		pop	{r4, r5, r6, r7, pc}
 3567              	.L596:
 3568 0138 0598     		ldr	r0, [sp, #20]
 3569 013a 2C21     		movs	r1, #44
 3570 013c FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 3571 0140 241A     		subs	r4, r4, r0
 3572 0142 B3E7     		b	.L582
 3573              	.L581:
 3574 0144 0598     		ldr	r0, [sp, #20]
 3575 0146 0A49     		ldr	r1, .L598+28
 3576 0148 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3577 014c 0598     		ldr	r0, [sp, #20]
 3578 014e 23B0     		add	sp, sp, #140
 3579              		@ sp needed
 3580 0150 F0BD     		pop	{r4, r5, r6, r7, pc}
 3581              	.L599:
 3582 0152 00BF     		.align	2
 3583              	.L598:
 3584 0154 C40A0000 		.word	.LC130
 3585 0158 CC0A0000 		.word	.LC131
 3586 015c FC0A0000 		.word	.LC135
 3587 0160 140B0000 		.word	.LC136
 3588 0164 200B0000 		.word	.LC137
 3589 0168 F00A0000 		.word	.LC134
 3590 016c E40A0000 		.word	.LC133
 3591 0170 34090000 		.word	.LC109
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 64


 3592              		.size	_ZN6RepRap19GetFilelistResponseEPKc, .-_ZN6RepRap19GetFilelistResponseEPKc
 3593              		.section	.text._ZN6RepRap4BeepEii,"ax",%progbits
 3594              		.align	2
 3595              		.global	_ZN6RepRap4BeepEii
 3596              		.thumb
 3597              		.thumb_func
 3598              		.type	_ZN6RepRap4BeepEii, %function
 3599              	_ZN6RepRap4BeepEii:
 3600              		@ args = 0, pretend = 0, frame = 0
 3601              		@ frame_needed = 0, uses_anonymous_args = 0
 3602              		@ link register save eliminated.
 3603 0000 0368     		ldr	r3, [r0]
 3604 0002 10B4     		push	{r4}
 3605 0004 93F83048 		ldrb	r4, [r3, #2096]	@ zero_extendqisi2
 3606 0008 C0F88410 		str	r1, [r0, #132]
 3607 000c C0F88820 		str	r2, [r0, #136]
 3608 0010 14B9     		cbnz	r4, .L602
 3609 0012 5DF8044B 		ldr	r4, [sp], #4
 3610 0016 7047     		bx	lr
 3611              	.L602:
 3612 0018 1846     		mov	r0, r3
 3613 001a 5DF8044B 		ldr	r4, [sp], #4
 3614 001e FFF7FEBF 		b	_ZN8Platform4BeepEii
 3615              		.size	_ZN6RepRap4BeepEii, .-_ZN6RepRap4BeepEii
 3616 0022 00BF     		.section	.text._ZN6RepRap10SetMessageEPKc,"ax",%progbits
 3617              		.align	2
 3618              		.global	_ZN6RepRap10SetMessageEPKc
 3619              		.thumb
 3620              		.thumb_func
 3621              		.type	_ZN6RepRap10SetMessageEPKc, %function
 3622              	_ZN6RepRap10SetMessageEPKc:
 3623              		@ args = 0, pretend = 0, frame = 0
 3624              		@ frame_needed = 0, uses_anonymous_args = 0
 3625 0000 38B5     		push	{r3, r4, r5, lr}
 3626 0002 0446     		mov	r4, r0
 3627 0004 4FF48072 		mov	r2, #256
 3628 0008 8C30     		adds	r0, r0, #140
 3629 000a 0D46     		mov	r5, r1
 3630 000c FFF7FEFF 		bl	strncpy
 3631 0010 0023     		movs	r3, #0
 3632 0012 2068     		ldr	r0, [r4]
 3633 0014 84F88C31 		strb	r3, [r4, #396]
 3634 0018 90F83038 		ldrb	r3, [r0, #2096]	@ zero_extendqisi2
 3635 001c 03B9     		cbnz	r3, .L605
 3636 001e 38BD     		pop	{r3, r4, r5, pc}
 3637              	.L605:
 3638 0020 2946     		mov	r1, r5
 3639 0022 BDE83840 		pop	{r3, r4, r5, lr}
 3640 0026 FFF7FEBF 		b	_ZN8Platform14SendAuxMessageEPKc
 3641              		.size	_ZN6RepRap10SetMessageEPKc, .-_ZN6RepRap10SetMessageEPKc
 3642 002a 00BF     		.section	.text._ZNK6RepRap18GetStatusCharacterEv,"ax",%progbits
 3643              		.align	2
 3644              		.global	_ZNK6RepRap18GetStatusCharacterEv
 3645              		.thumb
 3646              		.thumb_func
 3647              		.type	_ZNK6RepRap18GetStatusCharacterEv, %function
 3648              	_ZNK6RepRap18GetStatusCharacterEv:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 65


 3649              		@ args = 0, pretend = 0, frame = 0
 3650              		@ frame_needed = 0, uses_anonymous_args = 0
 3651              		@ link register save eliminated.
 3652 0000 90F84530 		ldrb	r3, [r0, #69]	@ zero_extendqisi2
 3653 0004 0BB1     		cbz	r3, .L608
 3654 0006 4320     		movs	r0, #67
 3655 0008 7047     		bx	lr
 3656              	.L608:
 3657 000a FFF7FEBF 		b	_ZNK6RepRap18GetStatusCharacterEv.part.18
 3658              		.size	_ZNK6RepRap18GetStatusCharacterEv, .-_ZNK6RepRap18GetStatusCharacterEv
 3659 000e 00BF     		.section	.text._ZNK6RepRap13NoPasswordSetEv,"ax",%progbits
 3660              		.align	2
 3661              		.global	_ZNK6RepRap13NoPasswordSetEv
 3662              		.thumb
 3663              		.thumb_func
 3664              		.type	_ZNK6RepRap13NoPasswordSetEv, %function
 3665              	_ZNK6RepRap13NoPasswordSetEv:
 3666              		@ args = 0, pretend = 0, frame = 0
 3667              		@ frame_needed = 0, uses_anonymous_args = 0
 3668              		@ link register save eliminated.
 3669 0000 90F84630 		ldrb	r3, [r0, #70]	@ zero_extendqisi2
 3670 0004 0BB9     		cbnz	r3, .L611
 3671 0006 0120     		movs	r0, #1
 3672 0008 7047     		bx	lr
 3673              	.L611:
 3674 000a 4630     		adds	r0, r0, #70
 3675 000c 0149     		ldr	r1, .L612
 3676 000e FFF7FEBF 		b	_Z12StringEqualsPKcS0_
 3677              	.L613:
 3678 0012 00BF     		.align	2
 3679              	.L612:
 3680 0014 4C0B0000 		.word	.LC138
 3681              		.size	_ZNK6RepRap13NoPasswordSetEv, .-_ZNK6RepRap13NoPasswordSetEv
 3682              		.section	.text._ZNK6RepRap13CheckPasswordEPKc,"ax",%progbits
 3683              		.align	2
 3684              		.global	_ZNK6RepRap13CheckPasswordEPKc
 3685              		.thumb
 3686              		.thumb_func
 3687              		.type	_ZNK6RepRap13CheckPasswordEPKc, %function
 3688              	_ZNK6RepRap13CheckPasswordEPKc:
 3689              		@ args = 0, pretend = 0, frame = 0
 3690              		@ frame_needed = 0, uses_anonymous_args = 0
 3691              		@ link register save eliminated.
 3692 0000 00F14603 		add	r3, r0, #70
 3693 0004 0846     		mov	r0, r1
 3694 0006 1946     		mov	r1, r3
 3695 0008 FFF7FEBF 		b	_Z12StringEqualsPKcS0_
 3696              		.size	_ZNK6RepRap13CheckPasswordEPKc, .-_ZNK6RepRap13CheckPasswordEPKc
 3697              		.section	.text._ZN6RepRap11SetPasswordEPKc,"ax",%progbits
 3698              		.align	2
 3699              		.global	_ZN6RepRap11SetPasswordEPKc
 3700              		.thumb
 3701              		.thumb_func
 3702              		.type	_ZN6RepRap11SetPasswordEPKc, %function
 3703              	_ZN6RepRap11SetPasswordEPKc:
 3704              		@ args = 0, pretend = 0, frame = 0
 3705              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 66


 3706              		@ link register save eliminated.
 3707 0000 00F14603 		add	r3, r0, #70
 3708 0004 1522     		movs	r2, #21
 3709 0006 0846     		mov	r0, r1
 3710 0008 1946     		mov	r1, r3
 3711 000a FFF7FEBF 		b	_ZN6RepRap17CopyParameterTextEPKcPcj
 3712              		.size	_ZN6RepRap11SetPasswordEPKc, .-_ZN6RepRap11SetPasswordEPKc
 3713 000e 00BF     		.section	.text._ZNK6RepRap7GetNameEv,"ax",%progbits
 3714              		.align	2
 3715              		.global	_ZNK6RepRap7GetNameEv
 3716              		.thumb
 3717              		.thumb_func
 3718              		.type	_ZNK6RepRap7GetNameEv, %function
 3719              	_ZNK6RepRap7GetNameEv:
 3720              		@ args = 0, pretend = 0, frame = 0
 3721              		@ frame_needed = 0, uses_anonymous_args = 0
 3722              		@ link register save eliminated.
 3723 0000 5B30     		adds	r0, r0, #91
 3724 0002 7047     		bx	lr
 3725              		.size	_ZNK6RepRap7GetNameEv, .-_ZNK6RepRap7GetNameEv
 3726              		.section	.text._ZN6RepRap7SetNameEPKc,"ax",%progbits
 3727              		.align	2
 3728              		.global	_ZN6RepRap7SetNameEPKc
 3729              		.thumb
 3730              		.thumb_func
 3731              		.type	_ZN6RepRap7SetNameEPKc, %function
 3732              	_ZN6RepRap7SetNameEPKc:
 3733              		@ args = 0, pretend = 0, frame = 0
 3734              		@ frame_needed = 0, uses_anonymous_args = 0
 3735 0000 38B5     		push	{r3, r4, r5, lr}
 3736 0002 00F15B05 		add	r5, r0, #91
 3737 0006 0446     		mov	r4, r0
 3738 0008 2922     		movs	r2, #41
 3739 000a 0846     		mov	r0, r1
 3740 000c 2946     		mov	r1, r5
 3741 000e FFF7FEFF 		bl	_ZN6RepRap17CopyParameterTextEPKcPcj
 3742 0012 2946     		mov	r1, r5
 3743 0014 6068     		ldr	r0, [r4, #4]
 3744 0016 BDE83840 		pop	{r3, r4, r5, lr}
 3745 001a FFF7FEBF 		b	_ZN7Network11SetHostnameEPKc
 3746              		.size	_ZN6RepRap7SetNameEPKc, .-_ZN6RepRap7SetNameEPKc
 3747 001e 00BF     		.section	.text._ZN6RepRapC2Ev,"ax",%progbits
 3748              		.align	2
 3749              		.global	_ZN6RepRapC2Ev
 3750              		.thumb
 3751              		.thumb_func
 3752              		.type	_ZN6RepRapC2Ev, %function
 3753              	_ZN6RepRapC2Ev:
 3754              		@ args = 0, pretend = 0, frame = 0
 3755              		@ frame_needed = 0, uses_anonymous_args = 0
 3756 0000 70B5     		push	{r4, r5, r6, lr}
 3757 0002 0123     		movs	r3, #1
 3758 0004 0025     		movs	r5, #0
 3759 0006 0F22     		movs	r2, #15
 3760 0008 80F84530 		strb	r3, [r0, #69]
 3761 000c 80F83220 		strb	r2, [r0, #50]
 3762 0010 0562     		str	r5, [r0, #32]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 67


 3763 0012 4562     		str	r5, [r0, #36]
 3764 0014 8562     		str	r5, [r0, #40]
 3765 0016 8585     		strh	r5, [r0, #44]	@ movhi
 3766 0018 C585     		strh	r5, [r0, #46]	@ movhi
 3767 001a 0586     		strh	r5, [r0, #48]	@ movhi
 3768 001c A0F84050 		strh	r5, [r0, #64]	@ movhi
 3769 0020 80F84250 		strb	r5, [r0, #66]
 3770 0024 80F84350 		strb	r5, [r0, #67]
 3771 0028 80F84450 		strb	r5, [r0, #68]
 3772 002c C0F88450 		str	r5, [r0, #132]
 3773 0030 C0F88850 		str	r5, [r0, #136]
 3774 0034 0446     		mov	r4, r0
 3775 0036 FFF7FEFF 		bl	_ZN12OutputBuffer4InitEv
 3776 003a 4FF41460 		mov	r0, #2368
 3777 003e FFF7FEFF 		bl	_Znwj
 3778 0042 0646     		mov	r6, r0
 3779 0044 FFF7FEFF 		bl	_ZN8PlatformC1Ev
 3780 0048 2660     		str	r6, [r4]
 3781 004a 5820     		movs	r0, #88
 3782 004c FFF7FEFF 		bl	_Znwj
 3783 0050 2168     		ldr	r1, [r4]
 3784 0052 0646     		mov	r6, r0
 3785 0054 FFF7FEFF 		bl	_ZN7NetworkC1EP8Platform
 3786 0058 6660     		str	r6, [r4, #4]
 3787 005a 44F6B440 		movw	r0, #19636
 3788 005e FFF7FEFF 		bl	_Znwj
 3789 0062 94E80600 		ldmia	r4, {r1, r2}
 3790 0066 0646     		mov	r6, r0
 3791 0068 FFF7FEFF 		bl	_ZN9WebserverC1EP8PlatformP7Network
 3792 006c 6661     		str	r6, [r4, #20]
 3793 006e 4FF47770 		mov	r0, #988
 3794 0072 FFF7FEFF 		bl	_Znwj
 3795 0076 2168     		ldr	r1, [r4]
 3796 0078 6269     		ldr	r2, [r4, #20]
 3797 007a 0646     		mov	r6, r0
 3798 007c FFF7FEFF 		bl	_ZN6GCodesC1EP8PlatformP9Webserver
 3799 0080 2661     		str	r6, [r4, #16]
 3800 0082 40F65840 		movw	r0, #3160
 3801 0086 FFF7FEFF 		bl	_Znwj
 3802 008a 2269     		ldr	r2, [r4, #16]
 3803 008c 2168     		ldr	r1, [r4]
 3804 008e 0646     		mov	r6, r0
 3805 0090 FFF7FEFF 		bl	_ZN4MoveC1EP8PlatformP6GCodes
 3806 0094 A660     		str	r6, [r4, #8]
 3807 0096 3420     		movs	r0, #52
 3808 0098 FFF7FEFF 		bl	_Znwj
 3809 009c 2168     		ldr	r1, [r4]
 3810 009e 0646     		mov	r6, r0
 3811 00a0 FFF7FEFF 		bl	_ZN4HeatC1EP8Platform
 3812 00a4 E660     		str	r6, [r4, #12]
 3813 00a6 4FF42A70 		mov	r0, #680
 3814 00aa FFF7FEFF 		bl	_Znwj
 3815 00ae 2168     		ldr	r1, [r4]
 3816 00b0 2269     		ldr	r2, [r4, #16]
 3817 00b2 0646     		mov	r6, r0
 3818 00b4 FFF7FEFF 		bl	_ZN12PrintMonitorC1EP8PlatformP6GCodes
 3819 00b8 04F14601 		add	r1, r4, #70
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 68


 3820 00bc 1522     		movs	r2, #21
 3821 00be E661     		str	r6, [r4, #28]
 3822 00c0 0548     		ldr	r0, .L619
 3823 00c2 FFF7FEFF 		bl	_ZN6RepRap17CopyParameterTextEPKcPcj
 3824 00c6 2046     		mov	r0, r4
 3825 00c8 0449     		ldr	r1, .L619+4
 3826 00ca FFF7FEFF 		bl	_ZN6RepRap7SetNameEPKc
 3827 00ce 84F88C50 		strb	r5, [r4, #140]
 3828 00d2 2046     		mov	r0, r4
 3829 00d4 70BD     		pop	{r4, r5, r6, pc}
 3830              	.L620:
 3831 00d6 00BF     		.align	2
 3832              	.L619:
 3833 00d8 4C0B0000 		.word	.LC138
 3834 00dc 540B0000 		.word	.LC139
 3835              		.size	_ZN6RepRapC2Ev, .-_ZN6RepRapC2Ev
 3836              		.global	_ZN6RepRapC1Ev
 3837              		.thumb_set _ZN6RepRapC1Ev,_ZN6RepRapC2Ev
 3838              		.section	.text._ZN6RepRap30GetProhibitedExtruderMovementsEjj,"ax",%progbits
 3839              		.align	2
 3840              		.global	_ZN6RepRap30GetProhibitedExtruderMovementsEjj
 3841              		.thumb
 3842              		.thumb_func
 3843              		.type	_ZN6RepRap30GetProhibitedExtruderMovementsEjj, %function
 3844              	_ZN6RepRap30GetProhibitedExtruderMovementsEjj:
 3845              		@ args = 0, pretend = 0, frame = 0
 3846              		@ frame_needed = 0, uses_anonymous_args = 0
 3847 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3848 0004 C368     		ldr	r3, [r0, #12]
 3849 0006 93F82D50 		ldrb	r5, [r3, #45]	@ zero_extendqisi2
 3850 000a 0F46     		mov	r7, r1
 3851 000c 9046     		mov	r8, r2
 3852 000e 002D     		cmp	r5, #0
 3853 0010 36D1     		bne	.L628
 3854 0012 D0F824A0 		ldr	r10, [r0, #36]
 3855 0016 BAF1000F 		cmp	r10, #0
 3856 001a 34D0     		beq	.L623
 3857 001c DAF84030 		ldr	r3, [r10, #64]
 3858 0020 1846     		mov	r0, r3
 3859 0022 A3B3     		cbz	r3, .L638
 3860 0024 A946     		mov	r9, r5
 3861 0026 5646     		mov	r6, r10
 3862 0028 4FF0010B 		mov	fp, #1
 3863 002c 07E0     		b	.L627
 3864              	.L625:
 3865 002e 14EA080F 		tst	r4, r8
 3866 0032 1BD1     		bne	.L639
 3867              	.L626:
 3868 0034 0135     		adds	r5, r5, #1
 3869 0036 9D42     		cmp	r5, r3
 3870 0038 06F10406 		add	r6, r6, #4
 3871 003c 13D2     		bcs	.L640
 3872              	.L627:
 3873 003e B468     		ldr	r4, [r6, #8]
 3874 0040 0BFA04F4 		lsl	r4, fp, r4
 3875 0044 14EA0701 		ands	r1, r4, r7
 3876 0048 F1D0     		beq	.L625
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 69


 3877 004a 5046     		mov	r0, r10
 3878 004c 0121     		movs	r1, #1
 3879 004e FFF7FEFF 		bl	_ZN4Tool12ToolCanDriveEb
 3880 0052 08B9     		cbnz	r0, .L637
 3881 0054 49EA0409 		orr	r9, r9, r4
 3882              	.L637:
 3883 0058 DAF84030 		ldr	r3, [r10, #64]
 3884 005c 0135     		adds	r5, r5, #1
 3885 005e 9D42     		cmp	r5, r3
 3886 0060 06F10406 		add	r6, r6, #4
 3887 0064 EBD3     		bcc	.L627
 3888              	.L640:
 3889 0066 4846     		mov	r0, r9
 3890 0068 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3891              	.L639:
 3892 006c 5046     		mov	r0, r10
 3893 006e FFF7FEFF 		bl	_ZN4Tool12ToolCanDriveEb
 3894 0072 DAF84030 		ldr	r3, [r10, #64]
 3895 0076 0028     		cmp	r0, #0
 3896 0078 DCD1     		bne	.L626
 3897 007a 49EA0409 		orr	r9, r9, r4
 3898 007e D9E7     		b	.L626
 3899              	.L628:
 3900 0080 0020     		movs	r0, #0
 3901 0082 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3902              	.L623:
 3903 0086 41EA0200 		orr	r0, r1, r2
 3904 008a BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3905              	.L638:
 3906 008e BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3907              		.size	_ZN6RepRap30GetProhibitedExtruderMovementsEjj, .-_ZN6RepRap30GetProhibitedExtruderMovementsE
 3908 0092 00BF     		.section	.text._ZN6RepRap20FlagTemperatureFaultEa,"ax",%progbits
 3909              		.align	2
 3910              		.global	_ZN6RepRap20FlagTemperatureFaultEa
 3911              		.thumb
 3912              		.thumb_func
 3913              		.type	_ZN6RepRap20FlagTemperatureFaultEa, %function
 3914              	_ZN6RepRap20FlagTemperatureFaultEa:
 3915              		@ args = 0, pretend = 0, frame = 0
 3916              		@ frame_needed = 0, uses_anonymous_args = 0
 3917              		@ link register save eliminated.
 3918 0000 006A     		ldr	r0, [r0, #32]
 3919 0002 08B1     		cbz	r0, .L641
 3920 0004 FFF7FEBF 		b	_ZN4Tool20FlagTemperatureFaultEa
 3921              	.L641:
 3922 0008 7047     		bx	lr
 3923              		.size	_ZN6RepRap20FlagTemperatureFaultEa, .-_ZN6RepRap20FlagTemperatureFaultEa
 3924 000a 00BF     		.section	.text._ZN6RepRap21ClearTemperatureFaultEa,"ax",%progbits
 3925              		.align	2
 3926              		.global	_ZN6RepRap21ClearTemperatureFaultEa
 3927              		.thumb
 3928              		.thumb_func
 3929              		.type	_ZN6RepRap21ClearTemperatureFaultEa, %function
 3930              	_ZN6RepRap21ClearTemperatureFaultEa:
 3931              		@ args = 0, pretend = 0, frame = 0
 3932              		@ frame_needed = 0, uses_anonymous_args = 0
 3933 0000 38B5     		push	{r3, r4, r5, lr}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 70


 3934 0002 074B     		ldr	r3, .L645
 3935 0004 0446     		mov	r4, r0
 3936 0006 D868     		ldr	r0, [r3, #12]
 3937 0008 0D46     		mov	r5, r1
 3938 000a FFF7FEFF 		bl	_ZN4Heat10ResetFaultEa
 3939 000e 206A     		ldr	r0, [r4, #32]
 3940 0010 20B1     		cbz	r0, .L643
 3941 0012 2946     		mov	r1, r5
 3942 0014 BDE83840 		pop	{r3, r4, r5, lr}
 3943 0018 FFF7FEBF 		b	_ZN4Tool21ClearTemperatureFaultEa
 3944              	.L643:
 3945 001c 38BD     		pop	{r3, r4, r5, pc}
 3946              	.L646:
 3947 001e 00BF     		.align	2
 3948              	.L645:
 3949 0020 00000000 		.word	reprap
 3950              		.size	_ZN6RepRap21ClearTemperatureFaultEa, .-_ZN6RepRap21ClearTemperatureFaultEa
 3951              		.section	.text._ZNK6RepRap15GetCurrentXAxesEv,"ax",%progbits
 3952              		.align	2
 3953              		.global	_ZNK6RepRap15GetCurrentXAxesEv
 3954              		.thumb
 3955              		.thumb_func
 3956              		.type	_ZNK6RepRap15GetCurrentXAxesEv, %function
 3957              	_ZNK6RepRap15GetCurrentXAxesEv:
 3958              		@ args = 0, pretend = 0, frame = 0
 3959              		@ frame_needed = 0, uses_anonymous_args = 0
 3960              		@ link register save eliminated.
 3961 0000 436A     		ldr	r3, [r0, #36]
 3962 0002 13B1     		cbz	r3, .L649
 3963 0004 D3F8C000 		ldr	r0, [r3, #192]
 3964 0008 7047     		bx	lr
 3965              	.L649:
 3966 000a 0120     		movs	r0, #1
 3967 000c 7047     		bx	lr
 3968              		.size	_ZNK6RepRap15GetCurrentXAxesEv, .-_ZNK6RepRap15GetCurrentXAxesEv
 3969 000e 00BF     		.section	.text._ZN6RepRap8DoDivideEmm,"ax",%progbits
 3970              		.align	2
 3971              		.global	_ZN6RepRap8DoDivideEmm
 3972              		.thumb
 3973              		.thumb_func
 3974              		.type	_ZN6RepRap8DoDivideEmm, %function
 3975              	_ZN6RepRap8DoDivideEmm:
 3976              		@ args = 0, pretend = 0, frame = 0
 3977              		@ frame_needed = 0, uses_anonymous_args = 0
 3978              		@ link register save eliminated.
 3979 0000 B0FBF1F0 		udiv	r0, r0, r1
 3980 0004 7047     		bx	lr
 3981              		.size	_ZN6RepRap8DoDivideEmm, .-_ZN6RepRap8DoDivideEmm
 3982 0006 00BF     		.section	.text._ZN6RepRap9ReadDwordEPKc,"ax",%progbits
 3983              		.align	2
 3984              		.global	_ZN6RepRap9ReadDwordEPKc
 3985              		.thumb
 3986              		.thumb_func
 3987              		.type	_ZN6RepRap9ReadDwordEPKc, %function
 3988              	_ZN6RepRap9ReadDwordEPKc:
 3989              		@ args = 0, pretend = 0, frame = 0
 3990              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 71


 3991              		@ link register save eliminated.
 3992 0000 0068     		ldr	r0, [r0]
 3993 0002 7047     		bx	lr
 3994              		.size	_ZN6RepRap9ReadDwordEPKc, .-_ZN6RepRap9ReadDwordEPKc
 3995              		.section	.rodata.str1.4,"aMS",%progbits,1
 3996              		.align	2
 3997              	.LC0:
 3998 0000 52657052 		.ascii	"RepRap class exited.\012\000"
 3998      61702063 
 3998      6C617373 
 3998      20657869 
 3998      7465642E 
 3999 0016 0000     		.space	2
 4000              	.LC1:
 4001 0018 5761726E 		.ascii	"Warning: Tool %d was not driven because its heater "
 4001      696E673A 
 4001      20546F6F 
 4001      6C202564 
 4001      20776173 
 4002 004b 74656D70 		.ascii	"temperatures were not high enough or it has a heate"
 4002      65726174 
 4002      75726573 
 4002      20776572 
 4002      65206E6F 
 4003 007e 72206661 		.ascii	"r fault\012\000"
 4003      756C740A 
 4003      00
 4004 0087 00       		.space	1
 4005              	.LC2:
 4006 0088 636F6E66 		.ascii	"config.g\000"
 4006      69672E67 
 4006      00
 4007 0091 000000   		.space	3
 4008              	.LC3:
 4009 0094 64656661 		.ascii	"default.g\000"
 4009      756C742E 
 4009      6700
 4010 009e 0000     		.space	2
 4011              	.LC4:
 4012 00a0 25732056 		.ascii	"%s Version %s dated %s\012\000"
 4012      65727369 
 4012      6F6E2025 
 4012      73206461 
 4012      74656420 
 4013              	.LC5:
 4014 00b8 52657052 		.ascii	"RepRapFirmware for Duet WiFi\000"
 4014      61704669 
 4014      726D7761 
 4014      72652066 
 4014      6F722044 
 4015 00d5 000000   		.space	3
 4016              	.LC6:
 4017 00d8 46757369 		.ascii	"Fusionware 1.18.1 RC1\000"
 4017      6F6E7761 
 4017      72652031 
 4017      2E31382E 
 4017      31205243 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 72


 4018 00ee 0000     		.space	2
 4019              	.LC7:
 4020 00f0 32303137 		.ascii	"2017-05-15\000"
 4020      2D30352D 
 4020      313500
 4021 00fb 00       		.space	1
 4022              	.LC8:
 4023 00fc 0A457865 		.ascii	"\012Executing \000"
 4023      63757469 
 4023      6E672000 
 4024              	.LC9:
 4025 0108 303A2F73 		.ascii	"0:/sys/\000"
 4025      79732F00 
 4026              	.LC10:
 4027 0110 25732E2E 		.ascii	"%s...\000"
 4027      2E00
 4028 0116 0000     		.space	2
 4029              	.LC11:
 4030 0118 25732028 		.ascii	"%s (no configuration file found)...\000"
 4030      6E6F2063 
 4030      6F6E6669 
 4030      67757261 
 4030      74696F6E 
 4031              	.LC12:
 4032 013c 446F6E65 		.ascii	"Done!\012\000"
 4032      210A00
 4033 0143 00       		.space	1
 4034              	.LC13:
 4035 0144 4572726F 		.ascii	"Error, not found\012\000"
 4035      722C206E 
 4035      6F742066 
 4035      6F756E64 
 4035      0A00
 4036 0156 0000     		.space	2
 4037              	.LC14:
 4038 0158 4E657477 		.ascii	"Network disabled.\012\000"
 4038      6F726B20 
 4038      64697361 
 4038      626C6564 
 4038      2E0A00
 4039 016b 00       		.space	1
 4040              	.LC15:
 4041 016c 25732069 		.ascii	"%s is up and running.\012\000"
 4041      73207570 
 4041      20616E64 
 4041      2072756E 
 4041      6E696E67 
 4042 0183 00       		.space	1
 4043              	.LC16:
 4044 0184 536C6F77 		.ascii	"Slowest main loop (seconds): %f; fastest: %f\012\000"
 4044      65737420 
 4044      6D61696E 
 4044      206C6F6F 
 4044      70202873 
 4045 01b2 0000     		.space	2
 4046              	.LC17:
 4047 01b4 3D3D3D20 		.ascii	"=== Diagnostics ===\012\000"
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 73


 4047      44696167 
 4047      6E6F7374 
 4047      69637320 
 4047      3D3D3D0A 
 4048 01c9 000000   		.space	3
 4049              	.LC18:
 4050 01cc 44656275 		.ascii	"Debugging enabled for modules:\000"
 4050      6767696E 
 4050      6720656E 
 4050      61626C65 
 4050      6420666F 
 4051 01eb 00       		.space	1
 4052              	.LC19:
 4053 01ec 20257328 		.ascii	" %s(%u)\000"
 4053      25752900 
 4054              	.LC20:
 4055 01f4 0A446562 		.ascii	"\012Debugging disabled for modules:\000"
 4055      75676769 
 4055      6E672064 
 4055      69736162 
 4055      6C656420 
 4056 0215 000000   		.space	3
 4057              	.LC21:
 4058 0218 0A00     		.ascii	"\012\000"
 4059 021a 0000     		.space	2
 4060              	.LC22:
 4061 021c 44656275 		.ascii	"Debugging disabled\012\000"
 4061      6767696E 
 4061      67206469 
 4061      7361626C 
 4061      65640A00 
 4062              	.LC23:
 4063 0230 4572726F 		.ascii	"Error: Attempt to print details of non-existent too"
 4063      723A2041 
 4063      7474656D 
 4063      70742074 
 4063      6F207072 
 4064 0263 6C2E0A00 		.ascii	"l.\012\000"
 4065 0267 00       		.space	1
 4066              	.LC24:
 4067 0268 4572726F 		.ascii	"Error: Attempt to standby a non-existent tool: %d.\012"
 4067      723A2041 
 4067      7474656D 
 4067      70742074 
 4067      6F207374 
 4068 029b 00       		.ascii	"\000"
 4069              	.LC25:
 4070 029c 4572726F 		.ascii	"Error: Attempt to set variables for a non-existent "
 4070      723A2041 
 4070      7474656D 
 4070      70742074 
 4070      6F207365 
 4071 02cf 746F6F6C 		.ascii	"tool: %d.\012\000"
 4071      3A202564 
 4071      2E0A00
 4072 02da 0000     		.space	2
 4073              	.LC26:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 74


 4074 02dc 5B5D00   		.ascii	"[]\000"
 4075 02df 00       		.space	1
 4076              	.LC27:
 4077 02e0 5D00     		.ascii	"]\000"
 4078 02e2 0000     		.space	2
 4079              	.LC28:
 4080 02e4 7B227374 		.ascii	"{\"status\":\"%c\",\"coords\":{\000"
 4080      61747573 
 4080      223A2225 
 4080      63222C22 
 4080      636F6F72 
 4081 02fe 0000     		.space	2
 4082              	.LC29:
 4083 0300 22617865 		.ascii	"\"axesHomed\":\000"
 4083      73486F6D 
 4083      6564223A 
 4083      00
 4084 030d 000000   		.space	3
 4085              	.LC30:
 4086 0310 25632564 		.ascii	"%c%d\000"
 4086      00
 4087 0315 000000   		.space	3
 4088              	.LC31:
 4089 0318 5D2C2265 		.ascii	"],\"extr\":\000"
 4089      78747222 
 4089      3A00
 4090 0322 0000     		.space	2
 4091              	.LC32:
 4092 0324 2563252E 		.ascii	"%c%.1f\000"
 4092      316600
 4093 032b 00       		.space	1
 4094              	.LC33:
 4095 032c 5D2C2278 		.ascii	"],\"xyz\":\000"
 4095      797A223A 
 4095      00
 4096 0335 000000   		.space	3
 4097              	.LC34:
 4098 0338 2563252E 		.ascii	"%c%.3f\000"
 4098      336600
 4099 033f 00       		.space	1
 4100              	.LC35:
 4101 0340 5D7D2C22 		.ascii	"]},\"currentTool\":%d\000"
 4101      63757272 
 4101      656E7454 
 4101      6F6F6C22 
 4101      3A256400 
 4102              	.LC36:
 4103 0354 2C00     		.ascii	",\000"
 4104 0356 0000     		.space	2
 4105              	.LC37:
 4106 0358 226D6573 		.ascii	"\"message\":\000"
 4106      73616765 
 4106      223A00
 4107 0363 00       		.space	1
 4108              	.LC38:
 4109 0364 7D00     		.ascii	"}\000"
 4110 0366 0000     		.space	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 75


 4111              	.LC39:
 4112 0368 2C227061 		.ascii	",\"params\":{\"atxPower\":%d\000"
 4112      72616D73 
 4112      223A7B22 
 4112      61747850 
 4112      6F776572 
 4113 0381 000000   		.space	3
 4114              	.LC40:
 4115 0384 2C226661 		.ascii	",\"fanPercent\":\000"
 4115      6E506572 
 4115      63656E74 
 4115      223A00
 4116 0393 00       		.space	1
 4117              	.LC41:
 4118 0394 2563252E 		.ascii	"%c%.2f\000"
 4118      326600
 4119 039b 00       		.space	1
 4120              	.LC42:
 4121 039c 5D2C2273 		.ascii	"],\"speedFactor\":%.2f,\"extrFactors\":\000"
 4121      70656564 
 4121      46616374 
 4121      6F72223A 
 4121      252E3266 
 4122              	.LC43:
 4123 03c0 2C226261 		.ascii	",\"babystep\":%.03f}\000"
 4123      62797374 
 4123      6570223A 
 4123      252E3033 
 4123      667D00
 4124 03d3 00       		.space	1
 4125              	.LC44:
 4126 03d4 2C227365 		.ascii	",\"seq\":%d\000"
 4126      71223A25 
 4126      6400
 4127 03de 0000     		.space	2
 4128              	.LC45:
 4129 03e0 2C227365 		.ascii	",\"sensors\":{\000"
 4129      6E736F72 
 4129      73223A7B 
 4129      00
 4130 03ed 000000   		.space	3
 4131              	.LC46:
 4132 03f0 2270726F 		.ascii	"\"probeValue\":%d,\"probeSecondary\":[%d]\000"
 4132      62655661 
 4132      6C756522 
 4132      3A25642C 
 4132      2270726F 
 4133 0416 0000     		.space	2
 4134              	.LC47:
 4135 0418 2270726F 		.ascii	"\"probeValue\":%d,\"probeSecondary\":[%d,%d]\000"
 4135      62655661 
 4135      6C756522 
 4135      3A25642C 
 4135      2270726F 
 4136 0441 000000   		.space	3
 4137              	.LC48:
 4138 0444 2270726F 		.ascii	"\"probeValue\":%d\000"
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 76


 4138      62655661 
 4138      6C756522 
 4138      3A256400 
 4139              	.LC49:
 4140 0454 2C226661 		.ascii	",\"fanRPM\":%d}\000"
 4140      6E52504D 
 4140      223A2564 
 4140      7D00
 4141 0462 0000     		.space	2
 4142              	.LC50:
 4143 0464 2C227465 		.ascii	",\"temps\":{\000"
 4143      6D707322 
 4143      3A7B00
 4144 046f 00       		.space	1
 4145              	.LC51:
 4146 0470 22626564 		.ascii	"\"bed\":{\"current\":%.1f,\"active\":%.1f,\"state\""
 4146      223A7B22 
 4146      63757272 
 4146      656E7422 
 4146      3A252E31 
 4147 049b 3A25647D 		.ascii	":%d},\000"
 4147      2C00
 4148 04a1 000000   		.space	3
 4149              	.LC52:
 4150 04a4 22636861 		.ascii	"\"chamber\":{\"current\":%.1f,\000"
 4150      6D626572 
 4150      223A7B22 
 4150      63757272 
 4150      656E7422 
 4151 04bf 00       		.space	1
 4152              	.LC53:
 4153 04c0 22616374 		.ascii	"\"active\":%.1f,\000"
 4153      69766522 
 4153      3A252E31 
 4153      662C00
 4154 04cf 00       		.space	1
 4155              	.LC54:
 4156 04d0 22737461 		.ascii	"\"state\":%d},\000"
 4156      7465223A 
 4156      25647D2C 
 4156      00
 4157 04dd 000000   		.space	3
 4158              	.LC55:
 4159 04e0 22686561 		.ascii	"\"heads\":{\"current\":\000"
 4159      6473223A 
 4159      7B226375 
 4159      7272656E 
 4159      74223A00 
 4160              	.LC56:
 4161 04f4 2C226163 		.ascii	",\"active\":\000"
 4161      74697665 
 4161      223A00
 4162 04ff 00       		.space	1
 4163              	.LC57:
 4164 0500 2C227374 		.ascii	",\"standby\":\000"
 4164      616E6462 
 4164      79223A00 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 77


 4165              	.LC58:
 4166 050c 2C227374 		.ascii	",\"state\":\000"
 4166      61746522 
 4166      3A00
 4167 0516 0000     		.space	2
 4168              	.LC59:
 4169 0518 7D7D00   		.ascii	"}}\000"
 4170 051b 00       		.space	1
 4171              	.LC60:
 4172 051c 2C227469 		.ascii	",\"time\":%.1f\000"
 4172      6D65223A 
 4172      252E3166 
 4172      00
 4173 0529 000000   		.space	3
 4174              	.LC61:
 4175 052c 2C22636F 		.ascii	",\"coldExtrudeTemp\":%1.f\000"
 4175      6C644578 
 4175      74727564 
 4175      6554656D 
 4175      70223A25 
 4176              	.LC62:
 4177 0544 2C22636F 		.ascii	",\"coldRetractTemp\":%1.f\000"
 4177      6C645265 
 4177      74726163 
 4177      7454656D 
 4177      70223A25 
 4178              	.LC63:
 4179 055c 2C227465 		.ascii	",\"tempLimit\":%1.f\000"
 4179      6D704C69 
 4179      6D697422 
 4179      3A25312E 
 4179      6600
 4180 056e 0000     		.space	2
 4181              	.LC64:
 4182 0570 2C22656E 		.ascii	",\"endstops\":%d\000"
 4182      6473746F 
 4182      7073223A 
 4182      256400
 4183 057f 00       		.space	1
 4184              	.LC65:
 4185 0580 2C226669 		.ascii	",\"firmwareName\":\"%s\",\"geometry\":\"%s\",\"axes"
 4185      726D7761 
 4185      72654E61 
 4185      6D65223A 
 4185      22257322 
 4186 05aa 223A2575 		.ascii	"\":%u\000"
 4186      00
 4187 05af 00       		.space	1
 4188              	.LC66:
 4189 05b0 2C22766F 		.ascii	",\"volumes\":%u,\"mountedVolumes\":%u\000"
 4189      6C756D65 
 4189      73223A25 
 4189      752C226D 
 4189      6F756E74 
 4190 05d2 0000     		.space	2
 4191              	.LC67:
 4192 05d4 2C226E61 		.ascii	",\"name\":\000"
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 78


 4192      6D65223A 
 4192      00
 4193 05dd 000000   		.space	3
 4194              	.LC68:
 4195 05e0 2C227072 		.ascii	",\"probe\":{\"threshold\":%d\000"
 4195      6F626522 
 4195      3A7B2274 
 4195      68726573 
 4195      686F6C64 
 4196 05f9 000000   		.space	3
 4197              	.LC69:
 4198 05fc 2C226865 		.ascii	",\"height\":%.2f\000"
 4198      69676874 
 4198      223A252E 
 4198      326600
 4199 060b 00       		.space	1
 4200              	.LC70:
 4201 060c 2C227479 		.ascii	",\"type\":%d}\000"
 4201      7065223A 
 4201      25647D00 
 4202              	.LC71:
 4203 0618 2C22746F 		.ascii	",\"tools\":[\000"
 4203      6F6C7322 
 4203      3A5B00
 4204 0623 00       		.space	1
 4205              	.LC72:
 4206 0624 2C226D63 		.ascii	",\"mcutemp\":{\"min\":%.1f,\"cur\":%.1f,\"max\":%.1"
 4206      7574656D 
 4206      70223A7B 
 4206      226D696E 
 4206      223A252E 
 4207 064f 667D00   		.ascii	"f}\000"
 4208 0652 0000     		.space	2
 4209              	.LC73:
 4210 0654 2C227669 		.ascii	",\"vin\":{\"min\":%.1f,\"cur\":%.1f,\"max\":%.1f}\000"
 4210      6E223A7B 
 4210      226D696E 
 4210      223A252E 
 4210      31662C22 
 4211 067e 0000     		.space	2
 4212              	.LC74:
 4213 0680 7B226E75 		.ascii	"{\"number\":%d,\"heaters\":[\000"
 4213      6D626572 
 4213      223A2564 
 4213      2C226865 
 4213      61746572 
 4214 0699 000000   		.space	3
 4215              	.LC75:
 4216 069c 256400   		.ascii	"%d\000"
 4217 069f 00       		.space	1
 4218              	.LC76:
 4219 06a0 5D2C2264 		.ascii	"],\"drives\":[\000"
 4219      72697665 
 4219      73223A5B 
 4219      00
 4220 06ad 000000   		.space	3
 4221              	.LC77:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 79


 4222 06b0 5D2C2261 		.ascii	"],\"axisMap\":[[\000"
 4222      7869734D 
 4222      6170223A 
 4222      5B5B00
 4223 06bf 00       		.space	1
 4224              	.LC78:
 4225 06c0 257500   		.ascii	"%u\000"
 4226 06c3 00       		.space	1
 4227              	.LC79:
 4228 06c4 5D5D7D2C 		.ascii	"]]},\000"
 4228      00
 4229 06c9 000000   		.space	3
 4230              	.LC80:
 4231 06cc 5D5D7D00 		.ascii	"]]}\000"
 4232              	.LC81:
 4233 06d0 2C226375 		.ascii	",\"currentLayer\":%d\000"
 4233      7272656E 
 4233      744C6179 
 4233      6572223A 
 4233      256400
 4234 06e3 00       		.space	1
 4235              	.LC82:
 4236 06e4 2C226375 		.ascii	",\"currentLayerTime\":%.1f\000"
 4236      7272656E 
 4236      744C6179 
 4236      65725469 
 4236      6D65223A 
 4237 06fd 000000   		.space	3
 4238              	.LC83:
 4239 0700 2C226578 		.ascii	",\"extrRaw\":\000"
 4239      74725261 
 4239      77223A00 
 4240              	.LC84:
 4241 070c 5D2C2266 		.ascii	"],\"fractionPrinted\":%.1f\000"
 4241      72616374 
 4241      696F6E50 
 4241      72696E74 
 4241      6564223A 
 4242 0725 000000   		.space	3
 4243              	.LC85:
 4244 0728 2C226669 		.ascii	",\"firstLayerDuration\":%.1f\000"
 4244      7273744C 
 4244      61796572 
 4244      44757261 
 4244      74696F6E 
 4245 0743 00       		.space	1
 4246              	.LC86:
 4247 0744 2C226669 		.ascii	",\"firstLayerHeight\":%.2f\000"
 4247      7273744C 
 4247      61796572 
 4247      48656967 
 4247      6874223A 
 4248 075d 000000   		.space	3
 4249              	.LC87:
 4250 0760 2C227072 		.ascii	",\"printDuration\":%.1f\000"
 4250      696E7444 
 4250      75726174 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 80


 4250      696F6E22 
 4250      3A252E31 
 4251 0776 0000     		.space	2
 4252              	.LC88:
 4253 0778 2C227761 		.ascii	",\"warmUpDuration\":%.1f\000"
 4253      726D5570 
 4253      44757261 
 4253      74696F6E 
 4253      223A252E 
 4254 078f 00       		.space	1
 4255              	.LC89:
 4256 0790 2C227469 		.ascii	",\"timesLeft\":{\"file\":%.1f\000"
 4256      6D65734C 
 4256      65667422 
 4256      3A7B2266 
 4256      696C6522 
 4257 07aa 0000     		.space	2
 4258              	.LC90:
 4259 07ac 2C226669 		.ascii	",\"filament\":%.1f\000"
 4259      6C616D65 
 4259      6E74223A 
 4259      252E3166 
 4259      00
 4260 07bd 000000   		.space	3
 4261              	.LC91:
 4262 07c0 2C226C61 		.ascii	",\"layer\":%.1f}\000"
 4262      79657222 
 4262      3A252E31 
 4262      667D00
 4263 07cf 00       		.space	1
 4264              	.LC92:
 4265 07d0 2C227365 		.ascii	",\"seq\":%u,\"resp\":\000"
 4265      71223A25 
 4265      752C2272 
 4265      65737022 
 4265      3A00
 4266 07e2 0000     		.space	2
 4267              	.LC93:
 4268 07e4 5B302E30 		.ascii	"[0.00,0.00,0.00\000"
 4268      302C302E 
 4268      30302C30 
 4268      2E303000 
 4269              	.LC94:
 4270 07f4 2C226F75 		.ascii	",\"output\":{\000"
 4270      74707574 
 4270      223A7B00 
 4271              	.LC95:
 4272 0800 22626565 		.ascii	"\"beepDuration\":%d,\"beepFrequency\":%d\000"
 4272      70447572 
 4272      6174696F 
 4272      6E223A25 
 4272      642C2262 
 4273 0825 000000   		.space	3
 4274              	.LC96:
 4275 0828 7B226178 		.ascii	"{\"axisMins\":\000"
 4275      69734D69 
 4275      6E73223A 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 81


 4275      00
 4276 0835 000000   		.space	3
 4277              	.LC97:
 4278 0838 5D2C2261 		.ascii	"],\"accelerations\":\000"
 4278      6363656C 
 4278      65726174 
 4278      696F6E73 
 4278      223A00
 4279 084b 00       		.space	1
 4280              	.LC98:
 4281 084c 5D2C2263 		.ascii	"],\"currents\":\000"
 4281      75727265 
 4281      6E747322 
 4281      3A00
 4282 085a 0000     		.space	2
 4283              	.LC99:
 4284 085c 5D2C2266 		.ascii	"],\"firmwareElectronics\":\"%s\000"
 4284      69726D77 
 4284      61726545 
 4284      6C656374 
 4284      726F6E69 
 4285              	.LC100:
 4286 0878 202B2025 		.ascii	" + %s\000"
 4286      7300
 4287 087e 0000     		.space	2
 4288              	.LC101:
 4289 0880 222C2266 		.ascii	"\",\"firmwareName\":\"%s\"\000"
 4289      69726D77 
 4289      6172654E 
 4289      616D6522 
 4289      3A222573 
 4290 0896 0000     		.space	2
 4291              	.LC102:
 4292 0898 2C226669 		.ascii	",\"firmwareVersion\":\"%s\"\000"
 4292      726D7761 
 4292      72655665 
 4292      7273696F 
 4292      6E223A22 
 4293              	.LC103:
 4294 08b0 2C226477 		.ascii	",\"dwsVersion\":\"%s\"\000"
 4294      73566572 
 4294      73696F6E 
 4294      223A2225 
 4294      732200
 4295 08c3 00       		.space	1
 4296              	.LC104:
 4297 08c4 2C226669 		.ascii	",\"firmwareDate\":\"%s\"\000"
 4297      726D7761 
 4297      72654461 
 4297      7465223A 
 4297      22257322 
 4298 08d9 000000   		.space	3
 4299              	.LC105:
 4300 08dc 2C226964 		.ascii	",\"idleCurrentFactor\":%.1f\000"
 4300      6C654375 
 4300      7272656E 
 4300      74466163 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 82


 4300      746F7222 
 4301 08f6 0000     		.space	2
 4302              	.LC106:
 4303 08f8 2C226964 		.ascii	",\"idleTimeout\":%.1f\000"
 4303      6C655469 
 4303      6D656F75 
 4303      74223A25 
 4303      2E316600 
 4304              	.LC107:
 4305 090c 2C226D69 		.ascii	",\"minFeedrates\":\000"
 4305      6E466565 
 4305      64726174 
 4305      6573223A 
 4305      00
 4306 091d 000000   		.space	3
 4307              	.LC108:
 4308 0920 5D2C226D 		.ascii	"],\"maxFeedrates\":\000"
 4308      61784665 
 4308      65647261 
 4308      74657322 
 4308      3A00
 4309 0932 0000     		.space	2
 4310              	.LC109:
 4311 0934 5D7D00   		.ascii	"]}\000"
 4312 0937 00       		.space	1
 4313              	.LC110:
 4314 0938 5D2C2261 		.ascii	"],\"axisMaxes\":\000"
 4314      7869734D 
 4314      61786573 
 4314      223A00
 4315 0947 00       		.space	1
 4316              	.LC111:
 4317 0948 7B227374 		.ascii	"{\"status\":\"%c\",\"heaters\":\000"
 4317      61747573 
 4317      223A2225 
 4317      63222C22 
 4317      68656174 
 4318 0962 0000     		.space	2
 4319              	.LC112:
 4320 0964 5B252E31 		.ascii	"[%.1f\000"
 4320      6600
 4321 096a 0000     		.space	2
 4322              	.LC113:
 4323 096c 2C226873 		.ascii	",\"hstat\":\000"
 4323      74617422 
 4323      3A00
 4324 0976 0000     		.space	2
 4325              	.LC114:
 4326 0978 5B256400 		.ascii	"[%d\000"
 4327              	.LC115:
 4328 097c 2C22706F 		.ascii	",\"pos\":\000"
 4328      73223A00 
 4329              	.LC116:
 4330 0984 2C227366 		.ascii	",\"sfactor\":%.2f,\"efactor\":\000"
 4330      6163746F 
 4330      72223A25 
 4330      2E32662C 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 83


 4330      22656661 
 4331 099f 00       		.space	1
 4332              	.LC117:
 4333 09a0 2C226261 		.ascii	",\"babystep\":%.03f\000"
 4333      62797374 
 4333      6570223A 
 4333      252E3033 
 4333      6600
 4334 09b2 0000     		.space	2
 4335              	.LC118:
 4336 09b4 2C22746F 		.ascii	",\"tool\":%d\000"
 4336      6F6C223A 
 4336      256400
 4337 09bf 00       		.space	1
 4338              	.LC119:
 4339 09c0 2C227072 		.ascii	",\"probe\":\"%d (%d)\"\000"
 4339      6F626522 
 4339      3A222564 
 4339      20282564 
 4339      292200
 4340 09d3 00       		.space	1
 4341              	.LC120:
 4342 09d4 2C227072 		.ascii	",\"probe\":\"%d (%d, %d)\"\000"
 4342      6F626522 
 4342      3A222564 
 4342      20282564 
 4342      2C202564 
 4343 09eb 00       		.space	1
 4344              	.LC121:
 4345 09ec 2C227072 		.ascii	",\"probe\":\"%d\"\000"
 4345      6F626522 
 4345      3A222564 
 4345      2200
 4346 09fa 0000     		.space	2
 4347              	.LC122:
 4348 09fc 2563252E 		.ascii	"%c%.02f\000"
 4348      30326600 
 4349              	.LC123:
 4350 0a04 5D2C2266 		.ascii	"],\"fanRPM\":%u\000"
 4350      616E5250 
 4350      4D223A25 
 4350      7500
 4351 0a12 0000     		.space	2
 4352              	.LC124:
 4353 0a14 2C22686F 		.ascii	",\"homed\":\000"
 4353      6D656422 
 4353      3A00
 4354 0a1e 0000     		.space	2
 4355              	.LC125:
 4356 0a20 2C226672 		.ascii	",\"fraction_printed\":%.4f\000"
 4356      61637469 
 4356      6F6E5F70 
 4356      72696E74 
 4356      6564223A 
 4357 0a39 000000   		.space	3
 4358              	.LC126:
 4359 0a3c 2C227469 		.ascii	",\"timesLeft\":[%.1f,%.1f,%.1f]\000"
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 84


 4359      6D65734C 
 4359      65667422 
 4359      3A5B252E 
 4359      31662C25 
 4360 0a5a 0000     		.space	2
 4361              	.LC127:
 4362 0a5c 2C227365 		.ascii	",\"seq\":%d,\"resp\":\000"
 4362      71223A25 
 4362      642C2272 
 4362      65737022 
 4362      3A00
 4363 0a6e 0000     		.space	2
 4364              	.LC128:
 4365 0a70 2C226765 		.ascii	",\"geometry\":\"%s\",\"axes\":%u,\"volumes\":%u,\"n"
 4365      6F6D6574 
 4365      7279223A 
 4365      22257322 
 4365      2C226178 
 4366 0a9a 756D546F 		.ascii	"umTools\":%u,\"myName\":\000"
 4366      6F6C7322 
 4366      3A25752C 
 4366      226D794E 
 4366      616D6522 
 4367              	.LC129:
 4368 0ab0 2C226669 		.ascii	",\"firmwareName\":\000"
 4368      726D7761 
 4368      72654E61 
 4368      6D65223A 
 4368      00
 4369 0ac1 000000   		.space	3
 4370              	.LC130:
 4371 0ac4 7B226469 		.ascii	"{\"dir\":\000"
 4371      72223A00 
 4372              	.LC131:
 4373 0acc 2C226669 		.ascii	",\"files\":[\000"
 4373      6C657322 
 4373      3A5B00
 4374 0ad7 00       		.space	1
 4375              	.LC132:
 4376 0ad8 5D2C2265 		.ascii	"],\"err\":%u}\000"
 4376      7272223A 
 4376      25757D00 
 4377              	.LC133:
 4378 0ae4 7B226572 		.ascii	"{\"err\":1}\000"
 4378      72223A31 
 4378      7D00
 4379 0aee 0000     		.space	2
 4380              	.LC134:
 4381 0af0 7B226572 		.ascii	"{\"err\":2}\000"
 4381      72223A32 
 4381      7D00
 4382 0afa 0000     		.space	2
 4383              	.LC135:
 4384 0afc 7B227479 		.ascii	"{\"type\":\"%c\",\"name\":\000"
 4384      7065223A 
 4384      22256322 
 4384      2C226E61 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccU16bUi.s 			page 85


 4384      6D65223A 
 4385 0b11 000000   		.space	3
 4386              	.LC136:
 4387 0b14 2C227369 		.ascii	",\"size\":%u\000"
 4387      7A65223A 
 4387      257500
 4388 0b1f 00       		.space	1
 4389              	.LC137:
 4390 0b20 2C226461 		.ascii	",\"date\":\"%04u-%02u-%02uT%02u:%02u:%02u\"}\000"
 4390      7465223A 
 4390      22253034 
 4390      752D2530 
 4390      32752D25 
 4391 0b49 000000   		.space	3
 4392              	.LC138:
 4393 0b4c 72657072 		.ascii	"reprap\000"
 4393      617000
 4394 0b53 00       		.space	1
 4395              	.LC139:
 4396 0b54 4D792044 		.ascii	"My Duet\000"
 4396      75657400 
 4397              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 4398              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 4399              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 4400              	_ZL28cpu_irq_prev_interrupt_state:
 4401 0000 00       		.space	1
 4402              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 4403              		.align	2
 4404              		.type	_ZL32cpu_irq_critical_section_counter, %object
 4405              		.size	_ZL32cpu_irq_critical_section_counter, 4
 4406              	_ZL32cpu_irq_critical_section_counter:
 4407 0000 00000000 		.space	4
 4408              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
