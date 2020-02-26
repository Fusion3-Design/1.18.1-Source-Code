ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 1


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
  14              		.file	"RepRap.cpp"
  15              		.section	.text.hsmciIdle,"ax",%progbits
  16              		.align	2
  17              		.global	hsmciIdle
  18              		.thumb
  19              		.thumb_func
  20              		.type	hsmciIdle, %function
  21              	hsmciIdle:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 044B     		ldr	r3, .L4
  26 0002 93F83220 		ldrb	r2, [r3, #50]	@ zero_extendqisi2
  27 0006 012A     		cmp	r2, #1
  28 0008 03D0     		beq	.L1
  29 000a 5868     		ldr	r0, [r3, #4]
  30 000c 0021     		movs	r1, #0
  31 000e FFF7FEBF 		b	_ZN7Network4SpinEb
  32              	.L1:
  33 0012 7047     		bx	lr
  34              	.L5:
  35              		.align	2
  36              	.L4:
  37 0014 00000000 		.word	reprap
  38              		.size	hsmciIdle, .-hsmciIdle
  39              		.section	.text._ZNK6RepRap18GetStatusCharacterEv.part.18,"ax",%progbits
  40              		.align	2
  41              		.thumb
  42              		.thumb_func
  43              		.type	_ZNK6RepRap18GetStatusCharacterEv.part.18, %function
  44              	_ZNK6RepRap18GetStatusCharacterEv.part.18:
  45              		@ args = 0, pretend = 0, frame = 0
  46              		@ frame_needed = 0, uses_anonymous_args = 0
  47 0000 10B5     		push	{r4, lr}
  48 0002 0446     		mov	r4, r0
  49 0004 0069     		ldr	r0, [r0, #16]
  50 0006 90F80533 		ldrb	r3, [r0, #773]	@ zero_extendqisi2
  51 000a 23B9     		cbnz	r3, .L8
  52 000c 94F84230 		ldrb	r3, [r4, #66]	@ zero_extendqisi2
  53 0010 1BB1     		cbz	r3, .L18
  54 0012 4820     		movs	r0, #72
  55 0014 10BD     		pop	{r4, pc}
  56              	.L8:
  57 0016 4620     		movs	r0, #70
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 2


  58 0018 10BD     		pop	{r4, pc}
  59              	.L18:
  60 001a FFF7FEFF 		bl	_ZNK6GCodes9IsPausingEv
  61 001e 08B1     		cbz	r0, .L19
  62 0020 4420     		movs	r0, #68
  63 0022 10BD     		pop	{r4, pc}
  64              	.L19:
  65 0024 2069     		ldr	r0, [r4, #16]
  66 0026 FFF7FEFF 		bl	_ZNK6GCodes10IsResumingEv
  67 002a 28B9     		cbnz	r0, .L11
  68 002c 2069     		ldr	r0, [r4, #16]
  69 002e 90F88730 		ldrb	r3, [r0, #135]	@ zero_extendqisi2
  70 0032 1BB1     		cbz	r3, .L20
  71 0034 5420     		movs	r0, #84
  72 0036 10BD     		pop	{r4, pc}
  73              	.L11:
  74 0038 5220     		movs	r0, #82
  75 003a 10BD     		pop	{r4, pc}
  76              	.L20:
  77 003c FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
  78 0040 20B9     		cbnz	r0, .L13
  79 0042 E369     		ldr	r3, [r4, #28]
  80 0044 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
  81 0046 1BB1     		cbz	r3, .L21
  82 0048 5020     		movs	r0, #80
  83 004a 10BD     		pop	{r4, pc}
  84              	.L13:
  85 004c 5320     		movs	r0, #83
  86 004e 10BD     		pop	{r4, pc}
  87              	.L21:
  88 0050 2069     		ldr	r0, [r4, #16]
  89 0052 FFF7FEFF 		bl	_ZNK6GCodes14DoingFileMacroEv
  90 0056 20B9     		cbnz	r0, .L16
  91 0058 A368     		ldr	r3, [r4, #8]
  92 005a 9968     		ldr	r1, [r3, #8]
  93 005c 5A68     		ldr	r2, [r3, #4]
  94 005e 9142     		cmp	r1, r2
  95 0060 01D0     		beq	.L22
  96              	.L16:
  97 0062 4220     		movs	r0, #66
  98 0064 10BD     		pop	{r4, pc}
  99              	.L22:
 100 0066 1B68     		ldr	r3, [r3]
 101 0068 002B     		cmp	r3, #0
 102 006a 0CBF     		ite	eq
 103 006c 4920     		moveq	r0, #73
 104 006e 4220     		movne	r0, #66
 105 0070 10BD     		pop	{r4, pc}
 106              		.size	_ZNK6RepRap18GetStatusCharacterEv.part.18, .-_ZNK6RepRap18GetStatusCharacterEv.part.18
 107 0072 00BF     		.section	.text._ZN6RepRap4ExitEv,"ax",%progbits
 108              		.align	2
 109              		.global	_ZN6RepRap4ExitEv
 110              		.thumb
 111              		.thumb_func
 112              		.type	_ZN6RepRap4ExitEv, %function
 113              	_ZN6RepRap4ExitEv:
 114              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 3


 115              		@ frame_needed = 0, uses_anonymous_args = 0
 116 0000 0023     		movs	r3, #0
 117 0002 10B5     		push	{r4, lr}
 118 0004 0446     		mov	r4, r0
 119 0006 80F84330 		strb	r3, [r0, #67]
 120 000a C068     		ldr	r0, [r0, #12]
 121 000c FFF7FEFF 		bl	_ZN4Heat4ExitEv
 122 0010 A068     		ldr	r0, [r4, #8]
 123 0012 FFF7FEFF 		bl	_ZN4Move4ExitEv
 124 0016 2069     		ldr	r0, [r4, #16]
 125 0018 FFF7FEFF 		bl	_ZN6GCodes4ExitEv
 126 001c 6069     		ldr	r0, [r4, #20]
 127 001e FFF7FEFF 		bl	_ZN9Webserver4ExitEv
 128 0022 2068     		ldr	r0, [r4]
 129 0024 0621     		movs	r1, #6
 130 0026 044A     		ldr	r2, .L24
 131 0028 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 132 002c 2068     		ldr	r0, [r4]
 133 002e BDE81040 		pop	{r4, lr}
 134 0032 FFF7FEBF 		b	_ZN8Platform4ExitEv
 135              	.L25:
 136 0036 00BF     		.align	2
 137              	.L24:
 138 0038 00000000 		.word	.LC0
 139              		.size	_ZN6RepRap4ExitEv, .-_ZN6RepRap4ExitEv
 140              		.global	__aeabi_fsub
 141              		.global	__aeabi_fcmplt
 142              		.global	__aeabi_fcmpgt
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
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 4


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
 198 007c 0646     		mov	r6, r0
 199 007e C31A     		subs	r3, r0, r3
 200 0080 B3F57A6F 		cmp	r3, #4000
 201 0084 15D3     		bcc	.L31
 202 0086 256A     		ldr	r5, [r4, #32]
 203 0088 1DB9     		cbnz	r5, .L33
 204 008a 12E0     		b	.L31
 205              	.L32:
 206 008c D5F8B450 		ldr	r5, [r5, #180]
 207 0090 7DB1     		cbz	r5, .L31
 208              	.L33:
 209 0092 2846     		mov	r0, r5
 210 0094 FFF7FEFF 		bl	_ZN4Tool25DisplayColdExtrudeWarningEv
 211 0098 0028     		cmp	r0, #0
 212 009a F7D0     		beq	.L32
 213 009c 6B68     		ldr	r3, [r5, #4]
 214 009e 2068     		ldr	r0, [r4]
 215 00a0 0621     		movs	r1, #6
 216 00a2 0E4A     		ldr	r2, .L50
 217 00a4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 218 00a8 D5F8B450 		ldr	r5, [r5, #180]
 219 00ac A662     		str	r6, [r4, #40]
 220 00ae 002D     		cmp	r5, #0
 221 00b0 EFD1     		bne	.L33
 222              	.L31:
 223 00b2 2068     		ldr	r0, [r4]
 224 00b4 FFF7FEFF 		bl	_ZN8Platform4TimeEv
 225 00b8 E16B     		ldr	r1, [r4, #60]	@ float
 226 00ba 0646     		mov	r6, r0
 227 00bc FFF7FEFF 		bl	__aeabi_fsub
 228 00c0 616B     		ldr	r1, [r4, #52]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 5


 229 00c2 0546     		mov	r5, r0
 230 00c4 FFF7FEFF 		bl	__aeabi_fcmplt
 231 00c8 00B1     		cbz	r0, .L30
 232 00ca 6563     		str	r5, [r4, #52]	@ float
 233              	.L30:
 234 00cc 2846     		mov	r0, r5
 235 00ce A16B     		ldr	r1, [r4, #56]	@ float
 236 00d0 FFF7FEFF 		bl	__aeabi_fcmpgt
 237 00d4 00B1     		cbz	r0, .L34
 238 00d6 A563     		str	r5, [r4, #56]	@ float
 239              	.L34:
 240 00d8 E663     		str	r6, [r4, #60]	@ float
 241 00da 70BD     		pop	{r4, r5, r6, pc}
 242              	.L51:
 243              		.align	2
 244              	.L50:
 245 00dc 18000000 		.word	.LC1
 246              		.size	_ZN6RepRap4SpinEv, .-_ZN6RepRap4SpinEv
 247              		.section	.text._ZN6RepRap4InitEv,"ax",%progbits
 248              		.align	2
 249              		.global	_ZN6RepRap4InitEv
 250              		.thumb
 251              		.thumb_func
 252              		.type	_ZN6RepRap4InitEv, %function
 253              	_ZN6RepRap4InitEv:
 254              		@ args = 0, pretend = 0, frame = 0
 255              		@ frame_needed = 0, uses_anonymous_args = 0
 256 0000 10B5     		push	{r4, lr}
 257 0002 0446     		mov	r4, r0
 258 0004 82B0     		sub	sp, sp, #8
 259 0006 0068     		ldr	r0, [r0]
 260 0008 FFF7FEFF 		bl	_ZN8Platform4InitEv
 261 000c 2069     		ldr	r0, [r4, #16]
 262 000e FFF7FEFF 		bl	_ZN6GCodes4InitEv
 263 0012 6068     		ldr	r0, [r4, #4]
 264 0014 FFF7FEFF 		bl	_ZN7Network4InitEv
 265 0018 6069     		ldr	r0, [r4, #20]
 266 001a FFF7FEFF 		bl	_ZN9Webserver4InitEv
 267 001e A068     		ldr	r0, [r4, #8]
 268 0020 FFF7FEFF 		bl	_ZN4Move4InitEv
 269 0024 E068     		ldr	r0, [r4, #12]
 270 0026 FFF7FEFF 		bl	_ZN4Heat4InitEv
 271 002a E069     		ldr	r0, [r4, #28]
 272 002c FFF7FEFF 		bl	_ZN12PrintMonitor4InitEv
 273 0030 4FF47A70 		mov	r0, #1000
 274 0034 FFF7FEFF 		bl	_Z14watchdogEnablem
 275 0038 334A     		ldr	r2, .L61
 276 003a 344B     		ldr	r3, .L61+4
 277 003c 0121     		movs	r1, #1
 278 003e 2068     		ldr	r0, [r4]
 279 0040 84F84310 		strb	r1, [r4, #67]
 280 0044 8DE80C00 		stmia	sp, {r2, r3}
 281 0048 0221     		movs	r1, #2
 282 004a 314B     		ldr	r3, .L61+8
 283 004c 314A     		ldr	r2, .L61+12
 284 004e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 285 0052 2068     		ldr	r0, [r4]
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 6


 286 0054 0221     		movs	r1, #2
 287 0056 304A     		ldr	r2, .L61+16
 288 0058 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 289 005c 2368     		ldr	r3, [r4]
 290 005e 2F49     		ldr	r1, .L61+20
 291 0060 D3F8B406 		ldr	r0, [r3, #1716]
 292 0064 2E4A     		ldr	r2, .L61+24
 293 0066 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
 294 006a 0028     		cmp	r0, #0
 295 006c 39D0     		beq	.L53
 296 006e 2068     		ldr	r0, [r4]
 297 0070 0221     		movs	r1, #2
 298 0072 2C4A     		ldr	r2, .L61+28
 299 0074 2A4B     		ldr	r3, .L61+24
 300 0076 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 301 007a 2949     		ldr	r1, .L61+24
 302 007c 2069     		ldr	r0, [r4, #16]
 303 007e FFF7FEFF 		bl	_ZN6GCodes13RunConfigFileEPKc
 304 0082 18B9     		cbnz	r0, .L56
 305 0084 39E0     		b	.L60
 306              	.L57:
 307 0086 2046     		mov	r0, r4
 308 0088 FFF7FEFF 		bl	_ZN6RepRap4SpinEv
 309              	.L56:
 310 008c 2069     		ldr	r0, [r4, #16]
 311 008e FFF7FEFF 		bl	_ZNK6GCodes12IsDaemonBusyEv
 312 0092 0028     		cmp	r0, #0
 313 0094 F7D1     		bne	.L57
 314 0096 2068     		ldr	r0, [r4]
 315 0098 0221     		movs	r1, #2
 316 009a 234A     		ldr	r2, .L61+32
 317 009c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 318              	.L58:
 319 00a0 0023     		movs	r3, #0
 320 00a2 84F84530 		strb	r3, [r4, #69]
 321 00a6 6068     		ldr	r0, [r4, #4]
 322 00a8 FFF7FEFF 		bl	_ZN7Network8ActivateEv
 323 00ac 6368     		ldr	r3, [r4, #4]
 324 00ae 5B7D     		ldrb	r3, [r3, #21]	@ zero_extendqisi2
 325 00b0 23B9     		cbnz	r3, .L59
 326 00b2 2068     		ldr	r0, [r4]
 327 00b4 0221     		movs	r1, #2
 328 00b6 1D4A     		ldr	r2, .L61+36
 329 00b8 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 330              	.L59:
 331 00bc 1C48     		ldr	r0, .L61+40
 332 00be FFF7FEFF 		bl	hsmci_set_idle_func
 333 00c2 2068     		ldr	r0, [r4]
 334 00c4 0221     		movs	r1, #2
 335 00c6 1B4A     		ldr	r2, .L61+44
 336 00c8 114B     		ldr	r3, .L61+8
 337 00ca FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 338 00ce 1A4A     		ldr	r2, .L61+48
 339 00d0 0023     		movs	r3, #0
 340 00d2 6263     		str	r2, [r4, #52]	@ float
 341 00d4 A363     		str	r3, [r4, #56]	@ float
 342 00d6 2068     		ldr	r0, [r4]
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 7


 343 00d8 FFF7FEFF 		bl	_ZN8Platform4TimeEv
 344 00dc E063     		str	r0, [r4, #60]	@ float
 345 00de 02B0     		add	sp, sp, #8
 346              		@ sp needed
 347 00e0 10BD     		pop	{r4, pc}
 348              	.L53:
 349 00e2 2068     		ldr	r0, [r4]
 350 00e4 0221     		movs	r1, #2
 351 00e6 154A     		ldr	r2, .L61+52
 352 00e8 154B     		ldr	r3, .L61+56
 353 00ea FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 354 00ee 1449     		ldr	r1, .L61+56
 355 00f0 2069     		ldr	r0, [r4, #16]
 356 00f2 FFF7FEFF 		bl	_ZN6GCodes13RunConfigFileEPKc
 357 00f6 0028     		cmp	r0, #0
 358 00f8 C8D1     		bne	.L56
 359              	.L60:
 360 00fa 2068     		ldr	r0, [r4]
 361 00fc 0221     		movs	r1, #2
 362 00fe 114A     		ldr	r2, .L61+60
 363 0100 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 364 0104 CCE7     		b	.L58
 365              	.L62:
 366 0106 00BF     		.align	2
 367              	.L61:
 368 0108 D0000000 		.word	.LC6
 369 010c E8000000 		.word	.LC7
 370 0110 B8000000 		.word	.LC5
 371 0114 A0000000 		.word	.LC4
 372 0118 F4000000 		.word	.LC8
 373 011c 00010000 		.word	.LC9
 374 0120 88000000 		.word	.LC2
 375 0124 08010000 		.word	.LC10
 376 0128 34010000 		.word	.LC12
 377 012c 50010000 		.word	.LC14
 378 0130 00000000 		.word	hsmciIdle
 379 0134 64010000 		.word	.LC15
 380 0138 FFFF7F7F 		.word	2139095039
 381 013c 10010000 		.word	.LC11
 382 0140 94000000 		.word	.LC3
 383 0144 3C010000 		.word	.LC13
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
 395 0000 30B5     		push	{r4, r5, lr}
 396 0002 0446     		mov	r4, r0
 397 0004 85B0     		sub	sp, sp, #20
 398 0006 806B     		ldr	r0, [r0, #56]	@ float
 399 0008 0D46     		mov	r5, r1
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 8


 400 000a FFF7FEFF 		bl	__aeabi_f2d
 401 000e CDE90001 		strd	r0, [sp]
 402 0012 606B     		ldr	r0, [r4, #52]	@ float
 403 0014 FFF7FEFF 		bl	__aeabi_f2d
 404 0018 2368     		ldr	r3, [r4]
 405 001a 064A     		ldr	r2, .L64
 406 001c CDE90201 		strd	r0, [sp, #8]
 407 0020 1846     		mov	r0, r3
 408 0022 2946     		mov	r1, r5
 409 0024 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 410 0028 034A     		ldr	r2, .L64+4
 411 002a 0023     		movs	r3, #0
 412 002c 6263     		str	r2, [r4, #52]	@ float
 413 002e A363     		str	r3, [r4, #56]	@ float
 414 0030 05B0     		add	sp, sp, #20
 415              		@ sp needed
 416 0032 30BD     		pop	{r4, r5, pc}
 417              	.L65:
 418              		.align	2
 419              	.L64:
 420 0034 7C010000 		.word	.LC16
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
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 9


 457 0040 BDE83840 		pop	{r3, r4, r5, lr}
 458 0044 FFF7FEBF 		b	_ZN9Webserver11DiagnosticsE11MessageType
 459              	.L68:
 460              		.align	2
 461              	.L67:
 462 0048 AC010000 		.word	.LC17
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
 482 0014 D4F8B440 		ldr	r4, [r4, #180]
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
 495 0030 072C     		cmp	r4, #7
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
 512 0054 092C     		cmp	r4, #9
 513 0056 F2D1     		bne	.L76
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 10


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
 546 000c 0621     		movs	r1, #6
 547 000e 002B     		cmp	r3, #0
 548 0010 3BD0     		beq	.L84
 549 0012 214A     		ldr	r2, .L97
 550 0014 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 551 0018 204E     		ldr	r6, .L97+4
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
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 11


 571 0042 EFD1     		bne	.L87
 572              	.L95:
 573 0044 2868     		ldr	r0, [r5]
 574 0046 0621     		movs	r1, #6
 575 0048 164A     		ldr	r2, .L97+12
 576 004a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 577 004e 134E     		ldr	r6, .L97+4
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
 608 008c 02B0     		add	sp, sp, #8
 609              		@ sp needed
 610 008e BDE87040 		pop	{r4, r5, r6, lr}
 611 0092 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 612              	.L98:
 613 0096 00BF     		.align	2
 614              	.L97:
 615 0098 C4010000 		.word	.LC18
 616 009c 00000000 		.word	moduleName
 617 00a0 E4010000 		.word	.LC19
 618 00a4 EC010000 		.word	.LC20
 619 00a8 10020000 		.word	.LC21
 620 00ac 14020000 		.word	.LC22
 621              		.size	_ZN6RepRap10PrintDebugEv, .-_ZN6RepRap10PrintDebugEv
 622              		.section	.text._ZN6RepRap8SetDebugE6Moduleb,"ax",%progbits
 623              		.align	2
 624              		.global	_ZN6RepRap8SetDebugE6Moduleb
 625              		.thumb
 626              		.thumb_func
 627              		.type	_ZN6RepRap8SetDebugE6Moduleb, %function
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 12


 628              	_ZN6RepRap8SetDebugE6Moduleb:
 629              		@ args = 0, pretend = 0, frame = 0
 630              		@ frame_needed = 0, uses_anonymous_args = 0
 631              		@ link register save eliminated.
 632 0000 0123     		movs	r3, #1
 633 0002 03FA01F1 		lsl	r1, r3, r1
 634 0006 B0F84030 		ldrh	r3, [r0, #64]
 635 000a 2AB9     		cbnz	r2, .L102
 636 000c 23EA0101 		bic	r1, r3, r1
 637 0010 A0F84010 		strh	r1, [r0, #64]	@ movhi
 638 0014 FFF7FEBF 		b	_ZN6RepRap10PrintDebugEv
 639              	.L102:
 640 0018 1943     		orrs	r1, r1, r3
 641 001a A0F84010 		strh	r1, [r0, #64]	@ movhi
 642 001e FFF7FEBF 		b	_ZN6RepRap10PrintDebugEv
 643              		.size	_ZN6RepRap8SetDebugE6Moduleb, .-_ZN6RepRap8SetDebugE6Moduleb
 644 0022 00BF     		.section	.text._ZN6RepRap7AddToolEP4Tool,"ax",%progbits
 645              		.align	2
 646              		.global	_ZN6RepRap7AddToolEP4Tool
 647              		.thumb
 648              		.thumb_func
 649              		.type	_ZN6RepRap7AddToolEP4Tool, %function
 650              	_ZN6RepRap7AddToolEP4Tool:
 651              		@ args = 0, pretend = 0, frame = 0
 652              		@ frame_needed = 0, uses_anonymous_args = 0
 653 0000 38B5     		push	{r3, r4, r5, lr}
 654 0002 036A     		ldr	r3, [r0, #32]
 655 0004 0446     		mov	r4, r0
 656 0006 00F12005 		add	r5, r0, #32
 657 000a 5BB1     		cbz	r3, .L104
 658 000c 4868     		ldr	r0, [r1, #4]
 659 000e 5A68     		ldr	r2, [r3, #4]
 660 0010 8242     		cmp	r2, r0
 661 0012 07DA     		bge	.L104
 662              	.L106:
 663 0014 03F1B405 		add	r5, r3, #180
 664 0018 D3F8B430 		ldr	r3, [r3, #180]
 665 001c 13B1     		cbz	r3, .L104
 666 001e 5A68     		ldr	r2, [r3, #4]
 667 0020 8242     		cmp	r2, r0
 668 0022 F7DB     		blt	.L106
 669              	.L104:
 670 0024 C1F8B430 		str	r3, [r1, #180]
 671 0028 0846     		mov	r0, r1
 672 002a 2960     		str	r1, [r5]
 673 002c 04F12E02 		add	r2, r4, #46
 674 0030 04F12C01 		add	r1, r4, #44
 675 0034 FFF7FEFF 		bl	_ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_
 676 0038 2068     		ldr	r0, [r4]
 677 003a BDE83840 		pop	{r3, r4, r5, lr}
 678 003e FFF7FEBF 		b	_ZN8Platform23UpdateConfiguredHeatersEv
 679              		.size	_ZN6RepRap7AddToolEP4Tool, .-_ZN6RepRap7AddToolEP4Tool
 680 0042 00BF     		.section	.text._ZNK6RepRap9PrintToolEiR9StringRef,"ax",%progbits
 681              		.align	2
 682              		.global	_ZNK6RepRap9PrintToolEiR9StringRef
 683              		.thumb
 684              		.thumb_func
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 13


 685              		.type	_ZNK6RepRap9PrintToolEiR9StringRef, %function
 686              	_ZNK6RepRap9PrintToolEiR9StringRef:
 687              		@ args = 0, pretend = 0, frame = 0
 688              		@ frame_needed = 0, uses_anonymous_args = 0
 689              		@ link register save eliminated.
 690 0000 006A     		ldr	r0, [r0, #32]
 691 0002 10B4     		push	{r4}
 692 0004 50B1     		cbz	r0, .L112
 693 0006 4368     		ldr	r3, [r0, #4]
 694 0008 9942     		cmp	r1, r3
 695 000a 03D1     		bne	.L114
 696 000c 0CE0     		b	.L113
 697              	.L115:
 698 000e 4468     		ldr	r4, [r0, #4]
 699 0010 A142     		cmp	r1, r4
 700 0012 09D0     		beq	.L113
 701              	.L114:
 702 0014 D0F8B400 		ldr	r0, [r0, #180]
 703 0018 0028     		cmp	r0, #0
 704 001a F8D1     		bne	.L115
 705              	.L112:
 706 001c 1046     		mov	r0, r2
 707 001e 0549     		ldr	r1, .L119
 708 0020 5DF8044B 		ldr	r4, [sp], #4
 709 0024 FFF7FEBF 		b	_ZN9StringRef4copyEPKc
 710              	.L113:
 711 0028 1146     		mov	r1, r2
 712 002a 5DF8044B 		ldr	r4, [sp], #4
 713 002e FFF7FEBF 		b	_ZN4Tool5PrintER9StringRef
 714              	.L120:
 715 0032 00BF     		.align	2
 716              	.L119:
 717 0034 28020000 		.word	.LC23
 718              		.size	_ZNK6RepRap9PrintToolEiR9StringRef, .-_ZNK6RepRap9PrintToolEiR9StringRef
 719              		.section	.text._ZN6RepRap11StandbyToolEi,"ax",%progbits
 720              		.align	2
 721              		.global	_ZN6RepRap11StandbyToolEi
 722              		.thumb
 723              		.thumb_func
 724              		.type	_ZN6RepRap11StandbyToolEi, %function
 725              	_ZN6RepRap11StandbyToolEi:
 726              		@ args = 0, pretend = 0, frame = 0
 727              		@ frame_needed = 0, uses_anonymous_args = 0
 728 0000 70B5     		push	{r4, r5, r6, lr}
 729 0002 046A     		ldr	r4, [r0, #32]
 730 0004 0546     		mov	r5, r0
 731 0006 54B1     		cbz	r4, .L122
 732 0008 6368     		ldr	r3, [r4, #4]
 733 000a 9942     		cmp	r1, r3
 734 000c 03D1     		bne	.L124
 735 000e 0EE0     		b	.L123
 736              	.L125:
 737 0010 6268     		ldr	r2, [r4, #4]
 738 0012 9142     		cmp	r1, r2
 739 0014 0BD0     		beq	.L123
 740              	.L124:
 741 0016 D4F8B440 		ldr	r4, [r4, #180]
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 14


 742 001a 002C     		cmp	r4, #0
 743 001c F8D1     		bne	.L125
 744              	.L122:
 745 001e 2868     		ldr	r0, [r5]
 746 0020 0B46     		mov	r3, r1
 747 0022 084A     		ldr	r2, .L132
 748 0024 0621     		movs	r1, #6
 749 0026 BDE87040 		pop	{r4, r5, r6, lr}
 750 002a FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 751              	.L123:
 752 002e 2046     		mov	r0, r4
 753 0030 FFF7FEFF 		bl	_ZN4Tool7StandbyEv
 754 0034 6B6A     		ldr	r3, [r5, #36]
 755 0036 A342     		cmp	r3, r4
 756 0038 00D0     		beq	.L131
 757 003a 70BD     		pop	{r4, r5, r6, pc}
 758              	.L131:
 759 003c 0023     		movs	r3, #0
 760 003e 6B62     		str	r3, [r5, #36]
 761 0040 70BD     		pop	{r4, r5, r6, pc}
 762              	.L133:
 763 0042 00BF     		.align	2
 764              	.L132:
 765 0044 60020000 		.word	.LC24
 766              		.size	_ZN6RepRap11StandbyToolEi, .-_ZN6RepRap11StandbyToolEi
 767              		.section	.text._ZN6RepRap10SelectToolEi,"ax",%progbits
 768              		.align	2
 769              		.global	_ZN6RepRap10SelectToolEi
 770              		.thumb
 771              		.thumb_func
 772              		.type	_ZN6RepRap10SelectToolEi, %function
 773              	_ZN6RepRap10SelectToolEi:
 774              		@ args = 0, pretend = 0, frame = 0
 775              		@ frame_needed = 0, uses_anonymous_args = 0
 776 0000 38B5     		push	{r3, r4, r5, lr}
 777 0002 046A     		ldr	r4, [r0, #32]
 778 0004 0546     		mov	r5, r0
 779 0006 1CB9     		cbnz	r4, .L140
 780 0008 0BE0     		b	.L135
 781              	.L138:
 782 000a D4F8B440 		ldr	r4, [r4, #180]
 783 000e 44B1     		cbz	r4, .L135
 784              	.L140:
 785 0010 6368     		ldr	r3, [r4, #4]
 786 0012 9942     		cmp	r1, r3
 787 0014 F9D1     		bne	.L138
 788 0016 2046     		mov	r0, r4
 789 0018 696A     		ldr	r1, [r5, #36]
 790 001a FFF7FEFF 		bl	_ZN4Tool8ActivateEPS_
 791 001e 6C62     		str	r4, [r5, #36]
 792 0020 38BD     		pop	{r3, r4, r5, pc}
 793              	.L135:
 794 0022 6B6A     		ldr	r3, [r5, #36]
 795 0024 1BB1     		cbz	r3, .L141
 796 0026 5968     		ldr	r1, [r3, #4]
 797 0028 2846     		mov	r0, r5
 798 002a FFF7FEFF 		bl	_ZN6RepRap11StandbyToolEi
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 15


 799              	.L141:
 800 002e 0023     		movs	r3, #0
 801 0030 6B62     		str	r3, [r5, #36]
 802 0032 38BD     		pop	{r3, r4, r5, pc}
 803              		.size	_ZN6RepRap10SelectToolEi, .-_ZN6RepRap10SelectToolEi
 804              		.section	.text._ZN6RepRap10DeleteToolEP4Tool,"ax",%progbits
 805              		.align	2
 806              		.global	_ZN6RepRap10DeleteToolEP4Tool
 807              		.thumb
 808              		.thumb_func
 809              		.type	_ZN6RepRap10DeleteToolEP4Tool, %function
 810              	_ZN6RepRap10DeleteToolEP4Tool:
 811              		@ args = 0, pretend = 0, frame = 0
 812              		@ frame_needed = 0, uses_anonymous_args = 0
 813 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 814 0004 0E46     		mov	r6, r1
 815 0006 0746     		mov	r7, r0
 816 0008 0029     		cmp	r1, #0
 817 000a 44D0     		beq	.L149
 818 000c 436A     		ldr	r3, [r0, #36]
 819 000e 9942     		cmp	r1, r3
 820 0010 43D0     		beq	.L168
 821              	.L151:
 822 0012 D6F89030 		ldr	r3, [r6, #144]
 823 0016 83B1     		cbz	r3, .L155
 824 0018 DFF88880 		ldr	r8, .L169
 825 001c 3546     		mov	r5, r6
 826 001e 0024     		movs	r4, #0
 827              	.L156:
 828 0020 95F93C10 		ldrsb	r1, [r5, #60]
 829 0024 D8F80C00 		ldr	r0, [r8, #12]
 830 0028 FFF7FEFF 		bl	_ZN4Heat9SwitchOffEa
 831 002c D6F89030 		ldr	r3, [r6, #144]
 832 0030 0134     		adds	r4, r4, #1
 833 0032 9C42     		cmp	r4, r3
 834 0034 05F10405 		add	r5, r5, #4
 835 0038 F2D3     		bcc	.L156
 836              	.L155:
 837 003a 3A6A     		ldr	r2, [r7, #32]
 838 003c 62B1     		cbz	r2, .L154
 839 003e 9642     		cmp	r6, r2
 840 0040 08BF     		it	eq
 841 0042 07F12002 		addeq	r2, r7, #32
 842 0046 03D1     		bne	.L160
 843 0048 21E0     		b	.L158
 844              	.L161:
 845 004a 9E42     		cmp	r6, r3
 846 004c 1ED0     		beq	.L159
 847 004e 1A46     		mov	r2, r3
 848              	.L160:
 849 0050 D2F8B430 		ldr	r3, [r2, #180]
 850 0054 002B     		cmp	r3, #0
 851 0056 F8D1     		bne	.L161
 852              	.L154:
 853 0058 3046     		mov	r0, r6
 854 005a FFF7FEFF 		bl	_ZN4Tool6DeleteEPS_
 855 005e 3C6A     		ldr	r4, [r7, #32]
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 16


 856 0060 0023     		movs	r3, #0
 857 0062 FB85     		strh	r3, [r7, #46]	@ movhi
 858 0064 BB85     		strh	r3, [r7, #44]	@ movhi
 859 0066 64B1     		cbz	r4, .L163
 860 0068 07F12C06 		add	r6, r7, #44
 861 006c 07F12E05 		add	r5, r7, #46
 862              	.L164:
 863 0070 2046     		mov	r0, r4
 864 0072 3146     		mov	r1, r6
 865 0074 2A46     		mov	r2, r5
 866 0076 FFF7FEFF 		bl	_ZNK4Tool28UpdateExtruderAndHeaterCountERtS0_
 867 007a D4F8B440 		ldr	r4, [r4, #180]
 868 007e 002C     		cmp	r4, #0
 869 0080 F6D1     		bne	.L164
 870              	.L163:
 871 0082 3868     		ldr	r0, [r7]
 872 0084 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 873 0088 FFF7FEBF 		b	_ZN8Platform23UpdateConfiguredHeatersEv
 874              	.L159:
 875 008c B432     		adds	r2, r2, #180
 876              	.L158:
 877 008e D6F8B430 		ldr	r3, [r6, #180]
 878 0092 1360     		str	r3, [r2]
 879 0094 E0E7     		b	.L154
 880              	.L149:
 881 0096 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 882              	.L168:
 883 009a 4FF0FF31 		mov	r1, #-1
 884 009e FFF7FEFF 		bl	_ZN6RepRap10SelectToolEi
 885 00a2 B6E7     		b	.L151
 886              	.L170:
 887              		.align	2
 888              	.L169:
 889 00a4 00000000 		.word	reprap
 890              		.size	_ZN6RepRap10DeleteToolEP4Tool, .-_ZN6RepRap10DeleteToolEP4Tool
 891              		.section	.text._ZNK6RepRap7GetToolEi,"ax",%progbits
 892              		.align	2
 893              		.global	_ZNK6RepRap7GetToolEi
 894              		.thumb
 895              		.thumb_func
 896              		.type	_ZNK6RepRap7GetToolEi, %function
 897              	_ZNK6RepRap7GetToolEi:
 898              		@ args = 0, pretend = 0, frame = 0
 899              		@ frame_needed = 0, uses_anonymous_args = 0
 900              		@ link register save eliminated.
 901 0000 006A     		ldr	r0, [r0, #32]
 902 0002 50B1     		cbz	r0, .L172
 903 0004 4368     		ldr	r3, [r0, #4]
 904 0006 9942     		cmp	r1, r3
 905 0008 03D1     		bne	.L173
 906 000a 07E0     		b	.L180
 907              	.L174:
 908 000c 4368     		ldr	r3, [r0, #4]
 909 000e 9942     		cmp	r1, r3
 910 0010 03D0     		beq	.L172
 911              	.L173:
 912 0012 D0F8B400 		ldr	r0, [r0, #180]
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 17


 913 0016 0028     		cmp	r0, #0
 914 0018 F8D1     		bne	.L174
 915              	.L172:
 916 001a 7047     		bx	lr
 917              	.L180:
 918 001c 7047     		bx	lr
 919              		.size	_ZNK6RepRap7GetToolEi, .-_ZNK6RepRap7GetToolEi
 920 001e 00BF     		.section	.text._ZNK6RepRap23GetCurrentOrDefaultToolEv,"ax",%progbits
 921              		.align	2
 922              		.global	_ZNK6RepRap23GetCurrentOrDefaultToolEv
 923              		.thumb
 924              		.thumb_func
 925              		.type	_ZNK6RepRap23GetCurrentOrDefaultToolEv, %function
 926              	_ZNK6RepRap23GetCurrentOrDefaultToolEv:
 927              		@ args = 0, pretend = 0, frame = 0
 928              		@ frame_needed = 0, uses_anonymous_args = 0
 929              		@ link register save eliminated.
 930 0000 436A     		ldr	r3, [r0, #36]
 931 0002 0BB1     		cbz	r3, .L184
 932 0004 1846     		mov	r0, r3
 933 0006 7047     		bx	lr
 934              	.L184:
 935 0008 006A     		ldr	r0, [r0, #32]
 936 000a 7047     		bx	lr
 937              		.size	_ZNK6RepRap23GetCurrentOrDefaultToolEv, .-_ZNK6RepRap23GetCurrentOrDefaultToolEv
 938              		.section	.text._ZN6RepRap16SetToolVariablesEiPKfS1_,"ax",%progbits
 939              		.align	2
 940              		.global	_ZN6RepRap16SetToolVariablesEiPKfS1_
 941              		.thumb
 942              		.thumb_func
 943              		.type	_ZN6RepRap16SetToolVariablesEiPKfS1_, %function
 944              	_ZN6RepRap16SetToolVariablesEiPKfS1_:
 945              		@ args = 0, pretend = 0, frame = 0
 946              		@ frame_needed = 0, uses_anonymous_args = 0
 947              		@ link register save eliminated.
 948 0000 30B4     		push	{r4, r5}
 949 0002 046A     		ldr	r4, [r0, #32]
 950 0004 1CB9     		cbnz	r4, .L189
 951 0006 0BE0     		b	.L186
 952              	.L193:
 953 0008 D4F8B440 		ldr	r4, [r4, #180]
 954 000c 44B1     		cbz	r4, .L186
 955              	.L189:
 956 000e 6568     		ldr	r5, [r4, #4]
 957 0010 A942     		cmp	r1, r5
 958 0012 F9D1     		bne	.L193
 959 0014 2046     		mov	r0, r4
 960 0016 1146     		mov	r1, r2
 961 0018 30BC     		pop	{r4, r5}
 962 001a 1A46     		mov	r2, r3
 963 001c FFF7FEBF 		b	_ZN4Tool12SetVariablesEPKfS1_
 964              	.L186:
 965 0020 0B46     		mov	r3, r1
 966 0022 0068     		ldr	r0, [r0]
 967 0024 0621     		movs	r1, #6
 968 0026 024A     		ldr	r2, .L194
 969 0028 30BC     		pop	{r4, r5}
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 18


 970 002a FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 971              	.L195:
 972 002e 00BF     		.align	2
 973              	.L194:
 974 0030 94020000 		.word	.LC25
 975              		.size	_ZN6RepRap16SetToolVariablesEiPKfS1_, .-_ZN6RepRap16SetToolVariablesEiPKfS1_
 976              		.section	.text._ZNK6RepRap22IsHeaterAssignedToToolEa,"ax",%progbits
 977              		.align	2
 978              		.global	_ZNK6RepRap22IsHeaterAssignedToToolEa
 979              		.thumb
 980              		.thumb_func
 981              		.type	_ZNK6RepRap22IsHeaterAssignedToToolEa, %function
 982              	_ZNK6RepRap22IsHeaterAssignedToToolEa:
 983              		@ args = 0, pretend = 0, frame = 0
 984              		@ frame_needed = 0, uses_anonymous_args = 0
 985              		@ link register save eliminated.
 986 0000 006A     		ldr	r0, [r0, #32]
 987 0002 30B4     		push	{r4, r5}
 988 0004 A0B1     		cbz	r0, .L197
 989              	.L198:
 990 0006 D0F89050 		ldr	r5, [r0, #144]
 991 000a 6DB1     		cbz	r5, .L200
 992 000c C36B     		ldr	r3, [r0, #60]
 993 000e 9942     		cmp	r1, r3
 994 0010 10D0     		beq	.L205
 995 0012 0246     		mov	r2, r0
 996 0014 0023     		movs	r3, #0
 997 0016 02E0     		b	.L201
 998              	.L199:
 999 0018 D46B     		ldr	r4, [r2, #60]
 1000 001a 8C42     		cmp	r4, r1
 1001 001c 0AD0     		beq	.L205
 1002              	.L201:
 1003 001e 0133     		adds	r3, r3, #1
 1004 0020 AB42     		cmp	r3, r5
 1005 0022 02F10402 		add	r2, r2, #4
 1006 0026 F7D1     		bne	.L199
 1007              	.L200:
 1008 0028 D0F8B400 		ldr	r0, [r0, #180]
 1009 002c 0028     		cmp	r0, #0
 1010 002e EAD1     		bne	.L198
 1011              	.L197:
 1012 0030 30BC     		pop	{r4, r5}
 1013 0032 7047     		bx	lr
 1014              	.L205:
 1015 0034 0120     		movs	r0, #1
 1016 0036 30BC     		pop	{r4, r5}
 1017 0038 7047     		bx	lr
 1018              		.size	_ZNK6RepRap22IsHeaterAssignedToToolEa, .-_ZNK6RepRap22IsHeaterAssignedToToolEa
 1019 003a 00BF     		.section	.text._ZNK6RepRap26GetNumberOfContiguousToolsEv,"ax",%progbits
 1020              		.align	2
 1021              		.global	_ZNK6RepRap26GetNumberOfContiguousToolsEv
 1022              		.thumb
 1023              		.thumb_func
 1024              		.type	_ZNK6RepRap26GetNumberOfContiguousToolsEv, %function
 1025              	_ZNK6RepRap26GetNumberOfContiguousToolsEv:
 1026              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 19


 1027              		@ frame_needed = 0, uses_anonymous_args = 0
 1028              		@ link register save eliminated.
 1029 0000 30B4     		push	{r4, r5}
 1030 0002 046A     		ldr	r4, [r0, #32]
 1031 0004 94B1     		cbz	r4, .L215
 1032 0006 0021     		movs	r1, #0
 1033 0008 6568     		ldr	r5, [r4, #4]
 1034 000a 0846     		mov	r0, r1
 1035              	.L211:
 1036 000c A942     		cmp	r1, r5
 1037 000e 0AD0     		beq	.L212
 1038 0010 2346     		mov	r3, r4
 1039 0012 02E0     		b	.L213
 1040              	.L214:
 1041 0014 5A68     		ldr	r2, [r3, #4]
 1042 0016 9142     		cmp	r1, r2
 1043 0018 05D0     		beq	.L212
 1044              	.L213:
 1045 001a D3F8B430 		ldr	r3, [r3, #180]
 1046 001e 002B     		cmp	r3, #0
 1047 0020 F8D1     		bne	.L214
 1048 0022 30BC     		pop	{r4, r5}
 1049 0024 7047     		bx	lr
 1050              	.L212:
 1051 0026 0130     		adds	r0, r0, #1
 1052 0028 0146     		mov	r1, r0
 1053 002a EFE7     		b	.L211
 1054              	.L215:
 1055 002c 2046     		mov	r0, r4
 1056 002e 30BC     		pop	{r4, r5}
 1057 0030 7047     		bx	lr
 1058              		.size	_ZNK6RepRap26GetNumberOfContiguousToolsEv, .-_ZNK6RepRap26GetNumberOfContiguousToolsEv
 1059 0032 00BF     		.section	.text._ZN6RepRap4TickEv,"ax",%progbits
 1060              		.align	2
 1061              		.global	_ZN6RepRap4TickEv
 1062              		.thumb
 1063              		.thumb_func
 1064              		.type	_ZN6RepRap4TickEv, %function
 1065              	_ZN6RepRap4TickEv:
 1066              		@ args = 0, pretend = 0, frame = 0
 1067              		@ frame_needed = 0, uses_anonymous_args = 0
 1068 0000 38B5     		push	{r3, r4, r5, lr}
 1069 0002 90F84330 		ldrb	r3, [r0, #67]	@ zero_extendqisi2
 1070 0006 0446     		mov	r4, r0
 1071 0008 13B1     		cbz	r3, .L217
 1072 000a 90F84450 		ldrb	r5, [r0, #68]	@ zero_extendqisi2
 1073 000e 05B1     		cbz	r5, .L225
 1074              	.L217:
 1075 0010 38BD     		pop	{r3, r4, r5, pc}
 1076              	.L225:
 1077 0012 0068     		ldr	r0, [r0]
 1078 0014 FFF7FEFF 		bl	_ZN8Platform4TickEv
 1079 0018 238E     		ldrh	r3, [r4, #48]
 1080 001a 44F61F62 		movw	r2, #19999
 1081 001e 0133     		adds	r3, r3, #1
 1082 0020 9BB2     		uxth	r3, r3
 1083 0022 9342     		cmp	r3, r2
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 20


 1084 0024 2386     		strh	r3, [r4, #48]	@ movhi
 1085 0026 F3D9     		bls	.L217
 1086 0028 0123     		movs	r3, #1
 1087 002a 84F84430 		strb	r3, [r4, #68]
 1088              	.L222:
 1089 002e 2946     		mov	r1, r5
 1090 0030 2068     		ldr	r0, [r4]
 1091 0032 0022     		movs	r2, #0
 1092 0034 0135     		adds	r5, r5, #1
 1093 0036 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjf
 1094 003a 072D     		cmp	r5, #7
 1095 003c F7D1     		bne	.L222
 1096 003e 0025     		movs	r5, #0
 1097              	.L224:
 1098 0040 2946     		mov	r1, r5
 1099 0042 2068     		ldr	r0, [r4]
 1100 0044 0135     		adds	r5, r5, #1
 1101 0046 FFF7FEFF 		bl	_ZN8Platform12DisableDriveEj
 1102 004a 092D     		cmp	r5, #9
 1103 004c F8D1     		bne	.L224
 1104 004e 2068     		ldr	r0, [r4]
 1105 0050 4FF48051 		mov	r1, #4096
 1106 0054 0022     		movs	r2, #0
 1107 0056 BDE83840 		pop	{r3, r4, r5, lr}
 1108 005a FFF7FEBF 		b	_ZN8Platform13SoftwareResetEtPKm
 1109              		.size	_ZN6RepRap4TickEv, .-_ZN6RepRap4TickEv
 1110              		.global	__aeabi_fadd
 1111              		.global	__aeabi_dmul
 1112              		.global	__aeabi_fmul
 1113              		.global	__aeabi_f2uiz
 1114 005e 00BF     		.section	.text._ZN6RepRap17GetStatusResponseEh14ResponseSource,"ax",%progbits
 1115              		.align	2
 1116              		.global	_ZN6RepRap17GetStatusResponseEh14ResponseSource
 1117              		.thumb
 1118              		.thumb_func
 1119              		.type	_ZN6RepRap17GetStatusResponseEh14ResponseSource, %function
 1120              	_ZN6RepRap17GetStatusResponseEh14ResponseSource:
 1121              		@ args = 0, pretend = 0, frame = 72
 1122              		@ frame_needed = 0, uses_anonymous_args = 0
 1123 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1124 0004 97B0     		sub	sp, sp, #92
 1125 0006 0646     		mov	r6, r0
 1126 0008 09A8     		add	r0, sp, #36
 1127 000a 0791     		str	r1, [sp, #28]
 1128 000c 9146     		mov	r9, r2
 1129 000e FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 1130 0012 0028     		cmp	r0, #0
 1131 0014 00F08D82 		beq	.L357
 1132 0018 96F84530 		ldrb	r3, [r6, #69]	@ zero_extendqisi2
 1133 001c 002B     		cmp	r3, #0
 1134 001e 00F0E182 		beq	.L360
 1135 0022 4322     		movs	r2, #67
 1136              	.L228:
 1137 0024 0998     		ldr	r0, [sp, #36]
 1138 0026 8849     		ldr	r1, .L382
 1139 0028 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 1140 002c 874A     		ldr	r2, .L382+4
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 21


 1141 002e 736A     		ldr	r3, [r6, #36]
 1142 0030 1269     		ldr	r2, [r2, #16]
 1143 0032 B068     		ldr	r0, [r6, #8]
 1144 0034 D2F88471 		ldr	r7, [r2, #388]
 1145 0038 002B     		cmp	r3, #0
 1146 003a 00F03D84 		beq	.L323
 1147 003e D3F8AC20 		ldr	r2, [r3, #172]
 1148              	.L229:
 1149 0042 0DF13008 		add	r8, sp, #48
 1150 0046 4146     		mov	r1, r8
 1151 0048 FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfm
 1152 004c 756A     		ldr	r5, [r6, #36]
 1153 004e 002D     		cmp	r5, #0
 1154 0050 00F03584 		beq	.L230
 1155 0054 9435     		adds	r5, r5, #148
 1156 0056 002F     		cmp	r7, #0
 1157 0058 00F0FA84 		beq	.L231
 1158 005c 4FEA870A 		lsl	r10, r7, #2
 1159 0060 0024     		movs	r4, #0
 1160              	.L233:
 1161 0062 58F80400 		ldr	r0, [r8, r4]	@ float
 1162 0066 2959     		ldr	r1, [r5, r4]	@ float
 1163 0068 FFF7FEFF 		bl	__aeabi_fadd
 1164 006c 48F80400 		str	r0, [r8, r4]	@ float
 1165 0070 0434     		adds	r4, r4, #4
 1166 0072 5445     		cmp	r4, r10
 1167 0074 F5D1     		bne	.L233
 1168 0076 0998     		ldr	r0, [sp, #36]
 1169 0078 7549     		ldr	r1, .L382+8
 1170 007a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1171              	.L234:
 1172 007e 0024     		movs	r4, #0
 1173 0080 5B22     		movs	r2, #91
 1174 0082 0125     		movs	r5, #1
 1175 0084 00E0     		b	.L237
 1176              	.L361:
 1177 0086 2C22     		movs	r2, #44
 1178              	.L237:
 1179 0088 05FA04F1 		lsl	r1, r5, r4
 1180 008c 3369     		ldr	r3, [r6, #16]
 1181 008e 0134     		adds	r4, r4, #1
 1182 0090 D3F85C32 		ldr	r3, [r3, #604]
 1183 0094 0998     		ldr	r0, [sp, #36]
 1184 0096 1942     		tst	r1, r3
 1185 0098 0CBF     		ite	eq
 1186 009a 0023     		moveq	r3, #0
 1187 009c 0123     		movne	r3, #1
 1188 009e 6D49     		ldr	r1, .L382+12
 1189 00a0 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1190 00a4 BC42     		cmp	r4, r7
 1191 00a6 EED3     		bcc	.L361
 1192              	.L235:
 1193 00a8 0998     		ldr	r0, [sp, #36]
 1194 00aa 6B49     		ldr	r1, .L382+16
 1195 00ac FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1196 00b0 B38D     		ldrh	r3, [r6, #44]
 1197 00b2 002B     		cmp	r3, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 22


 1198 00b4 00F0C684 		beq	.L238
 1199 00b8 7D1E     		subs	r5, r7, #1
 1200 00ba 08EB8505 		add	r5, r8, r5, lsl #2
 1201 00be 0024     		movs	r4, #0
 1202 00c0 4FF05B0A 		mov	r10, #91
 1203 00c4 01E0     		b	.L240
 1204              	.L362:
 1205 00c6 4FF02C0A 		mov	r10, #44
 1206              	.L240:
 1207 00ca 55F8040F 		ldr	r0, [r5, #4]!	@ float
 1208 00ce FFF7FEFF 		bl	__aeabi_f2d
 1209 00d2 099B     		ldr	r3, [sp, #36]
 1210 00d4 CDE90001 		strd	r0, [sp]
 1211 00d8 5246     		mov	r2, r10
 1212 00da 1846     		mov	r0, r3
 1213 00dc 5F49     		ldr	r1, .L382+20
 1214 00de FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1215 00e2 B38D     		ldrh	r3, [r6, #44]
 1216 00e4 0134     		adds	r4, r4, #1
 1217 00e6 A342     		cmp	r3, r4
 1218 00e8 EDD8     		bhi	.L362
 1219              	.L239:
 1220 00ea 0998     		ldr	r0, [sp, #36]
 1221 00ec 5C49     		ldr	r1, .L382+24
 1222 00ee FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1223 00f2 3069     		ldr	r0, [r6, #16]
 1224 00f4 FFF7FEFF 		bl	_ZNK6GCodes15AllAxesAreHomedEv
 1225 00f8 0028     		cmp	r0, #0
 1226 00fa 00F04782 		beq	.L241
 1227              	.L245:
 1228 00fe 0DF12C0A 		add	r10, sp, #44
 1229 0102 AFB1     		cbz	r7, .L243
 1230 0104 5546     		mov	r5, r10
 1231 0106 0024     		movs	r4, #0
 1232 0108 4FF05B0B 		mov	fp, #91
 1233 010c 01E0     		b	.L247
 1234              	.L363:
 1235 010e 4FF02C0B 		mov	fp, #44
 1236              	.L247:
 1237 0112 55F8040F 		ldr	r0, [r5, #4]!	@ float
 1238 0116 FFF7FEFF 		bl	__aeabi_f2d
 1239 011a 099B     		ldr	r3, [sp, #36]
 1240 011c CDE90001 		strd	r0, [sp]
 1241 0120 0134     		adds	r4, r4, #1
 1242 0122 5A46     		mov	r2, fp
 1243 0124 1846     		mov	r0, r3
 1244 0126 4F49     		ldr	r1, .L382+28
 1245 0128 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1246 012c BC42     		cmp	r4, r7
 1247 012e EED1     		bne	.L363
 1248              	.L243:
 1249 0130 736A     		ldr	r3, [r6, #36]
 1250 0132 002B     		cmp	r3, #0
 1251 0134 00F03A82 		beq	.L324
 1252              	.L373:
 1253 0138 5A68     		ldr	r2, [r3, #4]
 1254              	.L248:
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 23


 1255 013a 0998     		ldr	r0, [sp, #36]
 1256 013c 4A49     		ldr	r1, .L382+32
 1257 013e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1258 0142 D6F88830 		ldr	r3, [r6, #136]
 1259 0146 002B     		cmp	r3, #0
 1260 0148 45D0     		beq	.L249
 1261 014a D6F88430 		ldr	r3, [r6, #132]
 1262 014e 002B     		cmp	r3, #0
 1263 0150 41D0     		beq	.L249
 1264 0152 96F88C40 		ldrb	r4, [r6, #140]	@ zero_extendqisi2
 1265 0156 4549     		ldr	r1, .L382+36
 1266 0158 0998     		ldr	r0, [sp, #36]
 1267 015a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1268 015e 0998     		ldr	r0, [sp, #36]
 1269 0160 4349     		ldr	r1, .L382+40
 1270 0162 D6F88820 		ldr	r2, [r6, #136]
 1271 0166 D6F88430 		ldr	r3, [r6, #132]
 1272 016a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1273 016e 002C     		cmp	r4, #0
 1274 0170 40F0FB82 		bne	.L364
 1275 0174 C6F88840 		str	r4, [r6, #136]
 1276 0178 C6F88440 		str	r4, [r6, #132]
 1277 017c 0998     		ldr	r0, [sp, #36]
 1278 017e 3D49     		ldr	r1, .L382+44
 1279 0180 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1280              	.L312:
 1281 0184 3068     		ldr	r0, [r6]
 1282 0186 099C     		ldr	r4, [sp, #36]
 1283 0188 FFF7FEFF 		bl	_ZNK8Platform8AtxPowerEv
 1284 018c 3A49     		ldr	r1, .L382+48
 1285 018e 0246     		mov	r2, r0
 1286 0190 2046     		mov	r0, r4
 1287 0192 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1288 0196 0998     		ldr	r0, [sp, #36]
 1289 0198 3849     		ldr	r1, .L382+52
 1290 019a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1291 019e 4FF0000B 		mov	fp, #0
 1292 01a2 5B25     		movs	r5, #91
 1293              	.L252:
 1294 01a4 5946     		mov	r1, fp
 1295 01a6 3068     		ldr	r0, [r6]
 1296 01a8 099C     		ldr	r4, [sp, #36]
 1297 01aa FFF7FEFF 		bl	_ZNK8Platform11GetFanValueEj
 1298 01ae FFF7FEFF 		bl	__aeabi_f2d
 1299 01b2 0022     		movs	r2, #0
 1300 01b4 324B     		ldr	r3, .L382+56
 1301 01b6 FFF7FEFF 		bl	__aeabi_dmul
 1302 01ba 0BF1010B 		add	fp, fp, #1
 1303 01be CDE90001 		strd	r0, [sp]
 1304 01c2 2A46     		mov	r2, r5
 1305 01c4 2046     		mov	r0, r4
 1306 01c6 2F49     		ldr	r1, .L382+60
 1307 01c8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1308 01cc BBF1020F 		cmp	fp, #2
 1309 01d0 1FD0     		beq	.L251
 1310 01d2 2C25     		movs	r5, #44
 1311 01d4 E6E7     		b	.L252
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 24


 1312              	.L249:
 1313 01d6 96F88C30 		ldrb	r3, [r6, #140]	@ zero_extendqisi2
 1314 01da 002B     		cmp	r3, #0
 1315 01dc D2D0     		beq	.L312
 1316 01de 0998     		ldr	r0, [sp, #36]
 1317 01e0 2249     		ldr	r1, .L382+36
 1318 01e2 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1319              	.L313:
 1320 01e6 0998     		ldr	r0, [sp, #36]
 1321 01e8 2749     		ldr	r1, .L382+64
 1322 01ea FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1323 01ee 0123     		movs	r3, #1
 1324 01f0 0093     		str	r3, [sp]
 1325 01f2 06F18C01 		add	r1, r6, #140
 1326 01f6 0998     		ldr	r0, [sp, #36]
 1327 01f8 40F20112 		movw	r2, #257
 1328 01fc 0023     		movs	r3, #0
 1329 01fe FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 1330 0202 0023     		movs	r3, #0
 1331 0204 86F88C30 		strb	r3, [r6, #140]
 1332 0208 0998     		ldr	r0, [sp, #36]
 1333 020a 1A49     		ldr	r1, .L382+44
 1334 020c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1335 0210 B8E7     		b	.L312
 1336              	.L251:
 1337 0212 3369     		ldr	r3, [r6, #16]
 1338 0214 1D49     		ldr	r1, .L382+68
 1339 0216 D3F86C02 		ldr	r0, [r3, #620]	@ float
 1340 021a FFF7FEFF 		bl	__aeabi_fmul
 1341 021e FFF7FEFF 		bl	__aeabi_f2d
 1342 0222 0022     		movs	r2, #0
 1343 0224 164B     		ldr	r3, .L382+56
 1344 0226 FFF7FEFF 		bl	__aeabi_dmul
 1345 022a 099C     		ldr	r4, [sp, #36]
 1346 022c 0B46     		mov	r3, r1
 1347 022e 0246     		mov	r2, r0
 1348 0230 1749     		ldr	r1, .L382+72
 1349 0232 2046     		mov	r0, r4
 1350 0234 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1351 0238 B38D     		ldrh	r3, [r6, #44]
 1352 023a 002B     		cmp	r3, #0
 1353 023c 00F04883 		beq	.L253
 1354 0240 0024     		movs	r4, #0
 1355 0242 5B25     		movs	r5, #91
 1356 0244 27E0     		b	.L255
 1357              	.L383:
 1358 0246 00BF     		.align	2
 1359              	.L382:
 1360 0248 DC020000 		.word	.LC28
 1361 024c 00000000 		.word	reprap
 1362 0250 F8020000 		.word	.LC29
 1363 0254 08030000 		.word	.LC30
 1364 0258 10030000 		.word	.LC31
 1365 025c 1C030000 		.word	.LC32
 1366 0260 24030000 		.word	.LC33
 1367 0264 30030000 		.word	.LC34
 1368 0268 38030000 		.word	.LC35
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 25


 1369 026c C0070000 		.word	.LC93
 1370 0270 CC070000 		.word	.LC94
 1371 0274 5C030000 		.word	.LC38
 1372 0278 60030000 		.word	.LC39
 1373 027c 7C030000 		.word	.LC40
 1374 0280 00005940 		.word	1079574528
 1375 0284 8C030000 		.word	.LC41
 1376 0288 50030000 		.word	.LC37
 1377 028c 00007042 		.word	1114636288
 1378 0290 94030000 		.word	.LC42
 1379              	.L365:
 1380 0294 2C25     		movs	r5, #44
 1381              	.L255:
 1382 0296 3369     		ldr	r3, [r6, #16]
 1383 0298 04F19C02 		add	r2, r4, #156
 1384 029c 53F82200 		ldr	r0, [r3, r2, lsl #2]	@ float
 1385 02a0 FFF7FEFF 		bl	__aeabi_f2d
 1386 02a4 0022     		movs	r2, #0
 1387 02a6 A44B     		ldr	r3, .L384
 1388 02a8 FFF7FEFF 		bl	__aeabi_dmul
 1389 02ac 099B     		ldr	r3, [sp, #36]
 1390 02ae CDE90001 		strd	r0, [sp]
 1391 02b2 2A46     		mov	r2, r5
 1392 02b4 1846     		mov	r0, r3
 1393 02b6 A149     		ldr	r1, .L384+4
 1394 02b8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1395 02bc B38D     		ldrh	r3, [r6, #44]
 1396 02be 0134     		adds	r4, r4, #1
 1397 02c0 A342     		cmp	r3, r4
 1398 02c2 E7D8     		bhi	.L365
 1399 02c4 0998     		ldr	r0, [sp, #36]
 1400 02c6 9E49     		ldr	r1, .L384+8
 1401              	.L315:
 1402 02c8 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1403 02cc 3069     		ldr	r0, [r6, #16]
 1404 02ce 099C     		ldr	r4, [sp, #36]
 1405 02d0 FFF7FEFF 		bl	_ZNK6GCodes17GetBabyStepOffsetEv
 1406 02d4 FFF7FEFF 		bl	__aeabi_f2d
 1407 02d8 0246     		mov	r2, r0
 1408 02da 0B46     		mov	r3, r1
 1409 02dc 2046     		mov	r0, r4
 1410 02de 9949     		ldr	r1, .L384+12
 1411 02e0 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1412 02e4 B9F1000F 		cmp	r9, #0
 1413 02e8 00F07381 		beq	.L366
 1414              	.L256:
 1415 02ec 9649     		ldr	r1, .L384+16
 1416 02ee 0998     		ldr	r0, [sp, #36]
 1417 02f0 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1418 02f4 3068     		ldr	r0, [r6]
 1419 02f6 FFF7FEFF 		bl	_ZNK8Platform16GetZProbeReadingEv
 1420 02fa 5146     		mov	r1, r10
 1421 02fc 0446     		mov	r4, r0
 1422 02fe 4246     		mov	r2, r8
 1423 0300 3068     		ldr	r0, [r6]
 1424 0302 FFF7FEFF 		bl	_ZN8Platform24GetZProbeSecondaryValuesERiS0_
 1425 0306 0128     		cmp	r0, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 26


 1426 0308 00F05C81 		beq	.L258
 1427 030c 0228     		cmp	r0, #2
 1428 030e 00F05081 		beq	.L259
 1429 0312 2246     		mov	r2, r4
 1430 0314 0998     		ldr	r0, [sp, #36]
 1431 0316 8D49     		ldr	r1, .L384+20
 1432 0318 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1433              	.L260:
 1434 031c 3068     		ldr	r0, [r6]
 1435 031e 099C     		ldr	r4, [sp, #36]
 1436 0320 FFF7FEFF 		bl	_ZN8Platform9GetFanRPMEv
 1437 0324 FFF7FEFF 		bl	__aeabi_f2uiz
 1438 0328 8949     		ldr	r1, .L384+24
 1439 032a 0246     		mov	r2, r0
 1440 032c 2046     		mov	r0, r4
 1441 032e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1442 0332 0998     		ldr	r0, [sp, #36]
 1443 0334 8749     		ldr	r1, .L384+28
 1444 0336 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1445 033a F068     		ldr	r0, [r6, #12]
 1446 033c 90F92A50 		ldrsb	r5, [r0, #42]
 1447 0340 6A1C     		adds	r2, r5, #1
 1448 0342 23D0     		beq	.L261
 1449 0344 2946     		mov	r1, r5
 1450 0346 099C     		ldr	r4, [sp, #36]
 1451 0348 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 1452 034c 2946     		mov	r1, r5
 1453 034e 0346     		mov	r3, r0
 1454 0350 F068     		ldr	r0, [r6, #12]
 1455 0352 0593     		str	r3, [sp, #20]
 1456 0354 FFF7FEFF 		bl	_ZNK4Heat20GetActiveTemperatureEa
 1457 0358 2946     		mov	r1, r5
 1458 035a 8346     		mov	fp, r0
 1459 035c F068     		ldr	r0, [r6, #12]
 1460 035e FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 1461 0362 059B     		ldr	r3, [sp, #20]
 1462 0364 0546     		mov	r5, r0
 1463 0366 1846     		mov	r0, r3
 1464 0368 FFF7FEFF 		bl	__aeabi_f2d
 1465 036c 0246     		mov	r2, r0
 1466 036e 5846     		mov	r0, fp
 1467 0370 0692     		str	r2, [sp, #24]
 1468 0372 0591     		str	r1, [sp, #20]
 1469 0374 FFF7FEFF 		bl	__aeabi_f2d
 1470 0378 0295     		str	r5, [sp, #8]
 1471 037a CDE90001 		strd	r0, [sp]
 1472 037e 069A     		ldr	r2, [sp, #24]
 1473 0380 059B     		ldr	r3, [sp, #20]
 1474 0382 2046     		mov	r0, r4
 1475 0384 7449     		ldr	r1, .L384+32
 1476 0386 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1477 038a F068     		ldr	r0, [r6, #12]
 1478              	.L261:
 1479 038c 90F92B40 		ldrsb	r4, [r0, #43]
 1480 0390 631C     		adds	r3, r4, #1
 1481 0392 22D0     		beq	.L262
 1482 0394 2146     		mov	r1, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 27


 1483 0396 099D     		ldr	r5, [sp, #36]
 1484 0398 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 1485 039c FFF7FEFF 		bl	__aeabi_f2d
 1486 03a0 0246     		mov	r2, r0
 1487 03a2 0B46     		mov	r3, r1
 1488 03a4 2846     		mov	r0, r5
 1489 03a6 6D49     		ldr	r1, .L384+36
 1490 03a8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1491 03ac 2146     		mov	r1, r4
 1492 03ae F068     		ldr	r0, [r6, #12]
 1493 03b0 099D     		ldr	r5, [sp, #36]
 1494 03b2 FFF7FEFF 		bl	_ZNK4Heat20GetActiveTemperatureEa
 1495 03b6 FFF7FEFF 		bl	__aeabi_f2d
 1496 03ba 0246     		mov	r2, r0
 1497 03bc 0B46     		mov	r3, r1
 1498 03be 2846     		mov	r0, r5
 1499 03c0 6749     		ldr	r1, .L384+40
 1500 03c2 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1501 03c6 2146     		mov	r1, r4
 1502 03c8 F068     		ldr	r0, [r6, #12]
 1503 03ca 099C     		ldr	r4, [sp, #36]
 1504 03cc FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 1505 03d0 6449     		ldr	r1, .L384+44
 1506 03d2 0246     		mov	r2, r0
 1507 03d4 2046     		mov	r0, r4
 1508 03d6 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1509              	.L262:
 1510 03da 0998     		ldr	r0, [sp, #36]
 1511 03dc 6249     		ldr	r1, .L384+48
 1512 03de FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1513 03e2 F38D     		ldrh	r3, [r6, #46]
 1514 03e4 012B     		cmp	r3, #1
 1515 03e6 40F22483 		bls	.L263
 1516 03ea 0124     		movs	r4, #1
 1517 03ec 4FF05B0B 		mov	fp, #91
 1518 03f0 01E0     		b	.L265
 1519              	.L367:
 1520 03f2 4FF02C0B 		mov	fp, #44
 1521              	.L265:
 1522 03f6 61B2     		sxtb	r1, r4
 1523 03f8 F068     		ldr	r0, [r6, #12]
 1524 03fa 099D     		ldr	r5, [sp, #36]
 1525 03fc FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 1526 0400 FFF7FEFF 		bl	__aeabi_f2d
 1527 0404 5A46     		mov	r2, fp
 1528 0406 CDE90001 		strd	r0, [sp]
 1529 040a 2846     		mov	r0, r5
 1530 040c 5749     		ldr	r1, .L384+52
 1531 040e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1532 0412 F38D     		ldrh	r3, [r6, #46]
 1533 0414 0134     		adds	r4, r4, #1
 1534 0416 A342     		cmp	r3, r4
 1535 0418 EBD8     		bhi	.L367
 1536 041a 0998     		ldr	r0, [sp, #36]
 1537 041c 4849     		ldr	r1, .L384+8
 1538              	.L316:
 1539 041e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 28


 1540 0422 0998     		ldr	r0, [sp, #36]
 1541 0424 5249     		ldr	r1, .L384+56
 1542 0426 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1543 042a F38D     		ldrh	r3, [r6, #46]
 1544 042c 012B     		cmp	r3, #1
 1545 042e 40F2FD82 		bls	.L266
 1546 0432 0124     		movs	r4, #1
 1547 0434 4FF05B0B 		mov	fp, #91
 1548 0438 01E0     		b	.L268
 1549              	.L368:
 1550 043a 4FF02C0B 		mov	fp, #44
 1551              	.L268:
 1552 043e 61B2     		sxtb	r1, r4
 1553 0440 F068     		ldr	r0, [r6, #12]
 1554 0442 099D     		ldr	r5, [sp, #36]
 1555 0444 FFF7FEFF 		bl	_ZNK4Heat20GetActiveTemperatureEa
 1556 0448 FFF7FEFF 		bl	__aeabi_f2d
 1557 044c 5A46     		mov	r2, fp
 1558 044e CDE90001 		strd	r0, [sp]
 1559 0452 2846     		mov	r0, r5
 1560 0454 4549     		ldr	r1, .L384+52
 1561 0456 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1562 045a F38D     		ldrh	r3, [r6, #46]
 1563 045c 0134     		adds	r4, r4, #1
 1564 045e A342     		cmp	r3, r4
 1565 0460 EBD8     		bhi	.L368
 1566 0462 0998     		ldr	r0, [sp, #36]
 1567 0464 3649     		ldr	r1, .L384+8
 1568              	.L317:
 1569 0466 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1570 046a 0998     		ldr	r0, [sp, #36]
 1571 046c 4149     		ldr	r1, .L384+60
 1572 046e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1573 0472 F38D     		ldrh	r3, [r6, #46]
 1574 0474 012B     		cmp	r3, #1
 1575 0476 40F2E282 		bls	.L269
 1576 047a 0124     		movs	r4, #1
 1577 047c 4FF05B0B 		mov	fp, #91
 1578 0480 01E0     		b	.L271
 1579              	.L369:
 1580 0482 4FF02C0B 		mov	fp, #44
 1581              	.L271:
 1582 0486 61B2     		sxtb	r1, r4
 1583 0488 F068     		ldr	r0, [r6, #12]
 1584 048a 099D     		ldr	r5, [sp, #36]
 1585 048c FFF7FEFF 		bl	_ZNK4Heat21GetStandbyTemperatureEa
 1586 0490 FFF7FEFF 		bl	__aeabi_f2d
 1587 0494 5A46     		mov	r2, fp
 1588 0496 CDE90001 		strd	r0, [sp]
 1589 049a 2846     		mov	r0, r5
 1590 049c 3349     		ldr	r1, .L384+52
 1591 049e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1592 04a2 F38D     		ldrh	r3, [r6, #46]
 1593 04a4 0134     		adds	r4, r4, #1
 1594 04a6 A342     		cmp	r3, r4
 1595 04a8 EBD8     		bhi	.L369
 1596 04aa 0998     		ldr	r0, [sp, #36]
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 29


 1597 04ac 2449     		ldr	r1, .L384+8
 1598              	.L318:
 1599 04ae FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1600 04b2 0998     		ldr	r0, [sp, #36]
 1601 04b4 3049     		ldr	r1, .L384+64
 1602 04b6 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1603 04ba F38D     		ldrh	r3, [r6, #46]
 1604 04bc 012B     		cmp	r3, #1
 1605 04be 40F2BB82 		bls	.L272
 1606 04c2 0124     		movs	r4, #1
 1607 04c4 4FF05B0B 		mov	fp, #91
 1608 04c8 01E0     		b	.L274
 1609              	.L370:
 1610 04ca 4FF02C0B 		mov	fp, #44
 1611              	.L274:
 1612 04ce 61B2     		sxtb	r1, r4
 1613 04d0 F068     		ldr	r0, [r6, #12]
 1614 04d2 099D     		ldr	r5, [sp, #36]
 1615 04d4 FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 1616 04d8 5A46     		mov	r2, fp
 1617 04da 0346     		mov	r3, r0
 1618 04dc 2749     		ldr	r1, .L384+68
 1619 04de 2846     		mov	r0, r5
 1620 04e0 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1621 04e4 F38D     		ldrh	r3, [r6, #46]
 1622 04e6 0134     		adds	r4, r4, #1
 1623 04e8 A342     		cmp	r3, r4
 1624 04ea EED8     		bhi	.L370
 1625 04ec 0998     		ldr	r0, [sp, #36]
 1626 04ee 1449     		ldr	r1, .L384+8
 1627              	.L319:
 1628 04f0 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1629 04f4 2249     		ldr	r1, .L384+72
 1630 04f6 0998     		ldr	r0, [sp, #36]
 1631 04f8 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1632 04fc 3068     		ldr	r0, [r6]
 1633 04fe 099C     		ldr	r4, [sp, #36]
 1634 0500 FFF7FEFF 		bl	_ZN8Platform4TimeEv
 1635 0504 FFF7FEFF 		bl	__aeabi_f2d
 1636 0508 0B46     		mov	r3, r1
 1637 050a 0246     		mov	r2, r0
 1638 050c 1D49     		ldr	r1, .L384+76
 1639 050e 2046     		mov	r0, r4
 1640 0510 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1641 0514 079B     		ldr	r3, [sp, #28]
 1642 0516 022B     		cmp	r3, #2
 1643 0518 7DD0     		beq	.L371
 1644 051a 079B     		ldr	r3, [sp, #28]
 1645 051c 032B     		cmp	r3, #3
 1646 051e 00F0DC81 		beq	.L372
 1647              	.L283:
 1648 0522 B9F1010F 		cmp	r9, #1
 1649 0526 62D0     		beq	.L308
 1650              	.L359:
 1651 0528 0998     		ldr	r0, [sp, #36]
 1652              	.L309:
 1653 052a 1749     		ldr	r1, .L384+80
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 30


 1654 052c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1655 0530 0998     		ldr	r0, [sp, #36]
 1656              	.L357:
 1657 0532 17B0     		add	sp, sp, #92
 1658              		@ sp needed
 1659 0534 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1660              	.L385:
 1661              		.align	2
 1662              	.L384:
 1663 0538 00005940 		.word	1079574528
 1664 053c 8C030000 		.word	.LC41
 1665 0540 D8020000 		.word	.LC27
 1666 0544 B8030000 		.word	.LC43
 1667 0548 D8030000 		.word	.LC45
 1668 054c 3C040000 		.word	.LC48
 1669 0550 4C040000 		.word	.LC49
 1670 0554 5C040000 		.word	.LC50
 1671 0558 68040000 		.word	.LC51
 1672 055c 9C040000 		.word	.LC52
 1673 0560 B8040000 		.word	.LC53
 1674 0564 C8040000 		.word	.LC54
 1675 0568 D8040000 		.word	.LC55
 1676 056c 1C030000 		.word	.LC32
 1677 0570 EC040000 		.word	.LC56
 1678 0574 F8040000 		.word	.LC57
 1679 0578 04050000 		.word	.LC58
 1680 057c 08030000 		.word	.LC30
 1681 0580 10050000 		.word	.LC59
 1682 0584 14050000 		.word	.LC60
 1683 0588 5C030000 		.word	.LC38
 1684              	.L241:
 1685 058c B368     		ldr	r3, [r6, #8]
 1686 058e 93F86C34 		ldrb	r3, [r3, #1132]	@ zero_extendqisi2
 1687 0592 002B     		cmp	r3, #0
 1688 0594 3FF4B3AD 		beq	.L245
 1689 0598 0998     		ldr	r0, [sp, #36]
 1690 059a AA49     		ldr	r1, .L386
 1691 059c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1692 05a0 736A     		ldr	r3, [r6, #36]
 1693 05a2 0DF12C0A 		add	r10, sp, #44
 1694 05a6 002B     		cmp	r3, #0
 1695 05a8 7FF4C6AD 		bne	.L373
 1696              	.L324:
 1697 05ac 4FF0FF32 		mov	r2, #-1
 1698 05b0 C3E5     		b	.L248
 1699              	.L259:
 1700 05b2 0C99     		ldr	r1, [sp, #48]
 1701 05b4 0998     		ldr	r0, [sp, #36]
 1702 05b6 0091     		str	r1, [sp]
 1703 05b8 0B9B     		ldr	r3, [sp, #44]
 1704 05ba 2246     		mov	r2, r4
 1705 05bc A249     		ldr	r1, .L386+4
 1706 05be FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1707 05c2 ABE6     		b	.L260
 1708              	.L258:
 1709 05c4 2246     		mov	r2, r4
 1710 05c6 0998     		ldr	r0, [sp, #36]
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 31


 1711 05c8 A049     		ldr	r1, .L386+8
 1712 05ca 0B9B     		ldr	r3, [sp, #44]
 1713 05cc FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1714 05d0 A4E6     		b	.L260
 1715              	.L366:
 1716 05d2 7369     		ldr	r3, [r6, #20]
 1717 05d4 0998     		ldr	r0, [sp, #36]
 1718 05d6 1B68     		ldr	r3, [r3]
 1719 05d8 9D49     		ldr	r1, .L386+12
 1720 05da D3F86C27 		ldr	r2, [r3, #1900]
 1721 05de FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1722 05e2 83E6     		b	.L256
 1723              	.L360:
 1724 05e4 3046     		mov	r0, r6
 1725 05e6 FFF7FEFF 		bl	_ZNK6RepRap18GetStatusCharacterEv.part.18
 1726 05ea 0246     		mov	r2, r0
 1727 05ec 1AE5     		b	.L228
 1728              	.L308:
 1729 05ee 3368     		ldr	r3, [r6]
 1730 05f0 0998     		ldr	r0, [sp, #36]
 1731 05f2 0022     		movs	r2, #0
 1732 05f4 D3F8AC46 		ldr	r4, [r3, #1708]
 1733 05f8 C3F8AC26 		str	r2, [r3, #1708]
 1734 05fc 0028     		cmp	r0, #0
 1735 05fe 94D0     		beq	.L309
 1736 0600 D3F8B026 		ldr	r2, [r3, #1712]
 1737 0604 9349     		ldr	r1, .L386+16
 1738 0606 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1739 060a 2146     		mov	r1, r4
 1740 060c 4A46     		mov	r2, r9
 1741 060e 0998     		ldr	r0, [sp, #36]
 1742 0610 FFF7FEFF 		bl	_ZN12OutputBuffer11EncodeReplyEPS_b
 1743 0614 88E7     		b	.L359
 1744              	.L371:
 1745 0616 F368     		ldr	r3, [r6, #12]
 1746 0618 0998     		ldr	r0, [sp, #36]
 1747 061a 93F82930 		ldrb	r3, [r3, #41]	@ zero_extendqisi2
 1748 061e 0022     		movs	r2, #0
 1749 0620 002B     		cmp	r3, #0
 1750 0622 40F0A080 		bne	.L374
 1751 0626 8C4B     		ldr	r3, .L386+20
 1752              	.L276:
 1753 0628 8C49     		ldr	r1, .L386+24
 1754 062a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1755 062e F368     		ldr	r3, [r6, #12]
 1756 0630 0998     		ldr	r0, [sp, #36]
 1757 0632 93F82930 		ldrb	r3, [r3, #41]	@ zero_extendqisi2
 1758 0636 0022     		movs	r2, #0
 1759 0638 002B     		cmp	r3, #0
 1760 063a 00F04C81 		beq	.L326
 1761 063e 0023     		movs	r3, #0
 1762              	.L277:
 1763 0640 8749     		ldr	r1, .L386+28
 1764 0642 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1765 0646 F068     		ldr	r0, [r6, #12]
 1766 0648 099C     		ldr	r4, [sp, #36]
 1767 064a FFF7FEFF 		bl	_ZNK4Heat26GetHighestTemperatureLimitEv
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 32


 1768 064e FFF7FEFF 		bl	__aeabi_f2d
 1769 0652 0246     		mov	r2, r0
 1770 0654 0B46     		mov	r3, r1
 1771 0656 2046     		mov	r0, r4
 1772 0658 8249     		ldr	r1, .L386+32
 1773 065a 0024     		movs	r4, #0
 1774 065c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1775 0660 2546     		mov	r5, r4
 1776 0662 4FF0010B 		mov	fp, #1
 1777 0666 02E0     		b	.L280
 1778              	.L278:
 1779 0668 0134     		adds	r4, r4, #1
 1780 066a 092C     		cmp	r4, #9
 1781 066c 0DD0     		beq	.L375
 1782              	.L280:
 1783 066e 3068     		ldr	r0, [r6]
 1784 0670 2146     		mov	r1, r4
 1785 0672 FFF7FEFF 		bl	_ZNK8Platform7StoppedEj
 1786 0676 0138     		subs	r0, r0, #1
 1787 0678 0128     		cmp	r0, #1
 1788 067a F5D8     		bhi	.L278
 1789 067c 0BFA04F3 		lsl	r3, fp, r4
 1790 0680 0134     		adds	r4, r4, #1
 1791 0682 1D43     		orrs	r5, r5, r3
 1792 0684 092C     		cmp	r4, #9
 1793 0686 ADB2     		uxth	r5, r5
 1794 0688 F1D1     		bne	.L280
 1795              	.L375:
 1796 068a 2A46     		mov	r2, r5
 1797 068c 7649     		ldr	r1, .L386+36
 1798 068e 0998     		ldr	r0, [sp, #36]
 1799 0690 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1800 0694 B068     		ldr	r0, [r6, #8]
 1801 0696 099C     		ldr	r4, [sp, #36]
 1802 0698 FFF7FEFF 		bl	_ZNK4Move17GetGeometryStringEv
 1803 069c 734A     		ldr	r2, .L386+40
 1804 069e 0346     		mov	r3, r0
 1805 06a0 0097     		str	r7, [sp]
 1806 06a2 2046     		mov	r0, r4
 1807 06a4 7249     		ldr	r1, .L386+44
 1808 06a6 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1809 06aa 3368     		ldr	r3, [r6]
 1810 06ac D3F8B436 		ldr	r3, [r3, #1716]
 1811 06b0 93F88924 		ldrb	r2, [r3, #1161]	@ zero_extendqisi2
 1812 06b4 93F88834 		ldrb	r3, [r3, #1160]	@ zero_extendqisi2
 1813 06b8 0AB1     		cbz	r2, .L314
 1814 06ba 43F00203 		orr	r3, r3, #2
 1815              	.L314:
 1816 06be 0222     		movs	r2, #2
 1817 06c0 6C49     		ldr	r1, .L386+48
 1818 06c2 0998     		ldr	r0, [sp, #36]
 1819 06c4 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1820 06c8 6B49     		ldr	r1, .L386+52
 1821 06ca 0998     		ldr	r0, [sp, #36]
 1822 06cc FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1823 06d0 0123     		movs	r3, #1
 1824 06d2 2922     		movs	r2, #41
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 33


 1825 06d4 0093     		str	r3, [sp]
 1826 06d6 06F15B01 		add	r1, r6, #91
 1827 06da 0023     		movs	r3, #0
 1828 06dc 0998     		ldr	r0, [sp, #36]
 1829 06de FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 1830 06e2 3068     		ldr	r0, [r6]
 1831 06e4 D0F89010 		ldr	r1, [r0, #144]
 1832 06e8 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersEl
 1833 06ec C468     		ldr	r4, [r0, #12]	@ float
 1834 06ee 0268     		ldr	r2, [r0]
 1835 06f0 6249     		ldr	r1, .L386+56
 1836 06f2 0998     		ldr	r0, [sp, #36]
 1837 06f4 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1838 06f8 2046     		mov	r0, r4
 1839 06fa FFF7FEFF 		bl	__aeabi_f2d
 1840 06fe 099C     		ldr	r4, [sp, #36]
 1841 0700 0246     		mov	r2, r0
 1842 0702 0B46     		mov	r3, r1
 1843 0704 2046     		mov	r0, r4
 1844 0706 5E49     		ldr	r1, .L386+60
 1845 0708 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1846 070c 3368     		ldr	r3, [r6]
 1847 070e 5D49     		ldr	r1, .L386+64
 1848 0710 D3F89020 		ldr	r2, [r3, #144]
 1849 0714 0998     		ldr	r0, [sp, #36]
 1850 0716 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1851 071a 0998     		ldr	r0, [sp, #36]
 1852 071c 5A49     		ldr	r1, .L386+68
 1853 071e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1854 0722 356A     		ldr	r5, [r6, #32]
 1855 0724 002D     		cmp	r5, #0
 1856 0726 67D0     		beq	.L296
 1857              	.L297:
 1858 0728 0998     		ldr	r0, [sp, #36]
 1859 072a 5849     		ldr	r1, .L386+72
 1860 072c 6A68     		ldr	r2, [r5, #4]
 1861 072e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1862 0732 2F46     		mov	r7, r5
 1863 0734 D5F89030 		ldr	r3, [r5, #144]
 1864 0738 0024     		movs	r4, #0
 1865 073a 00E0     		b	.L284
 1866              	.L285:
 1867 073c 0437     		adds	r7, r7, #4
 1868              	.L284:
 1869 073e 9C42     		cmp	r4, r3
 1870 0740 5349     		ldr	r1, .L386+76
 1871 0742 0998     		ldr	r0, [sp, #36]
 1872 0744 04F10104 		add	r4, r4, #1
 1873 0748 19D2     		bcs	.L376
 1874 074a FA6B     		ldr	r2, [r7, #60]
 1875 074c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1876 0750 D5F89030 		ldr	r3, [r5, #144]
 1877 0754 9C42     		cmp	r4, r3
 1878 0756 F1D2     		bcs	.L285
 1879 0758 0998     		ldr	r0, [sp, #36]
 1880 075a 4E49     		ldr	r1, .L386+80
 1881 075c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 34


 1882 0760 D5F89030 		ldr	r3, [r5, #144]
 1883 0764 EAE7     		b	.L285
 1884              	.L374:
 1885 0766 0023     		movs	r3, #0
 1886 0768 5EE7     		b	.L276
 1887              	.L364:
 1888 076a 0998     		ldr	r0, [sp, #36]
 1889 076c 4949     		ldr	r1, .L386+80
 1890 076e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1891 0772 0023     		movs	r3, #0
 1892 0774 C6F88830 		str	r3, [r6, #136]
 1893 0778 C6F88430 		str	r3, [r6, #132]
 1894 077c 33E5     		b	.L313
 1895              	.L376:
 1896 077e 4649     		ldr	r1, .L386+84
 1897 0780 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1898 0784 2F46     		mov	r7, r5
 1899 0786 AB6B     		ldr	r3, [r5, #56]
 1900 0788 0024     		movs	r4, #0
 1901 078a 00E0     		b	.L287
 1902              	.L288:
 1903 078c 0437     		adds	r7, r7, #4
 1904              	.L287:
 1905 078e 9C42     		cmp	r4, r3
 1906 0790 3F49     		ldr	r1, .L386+76
 1907 0792 0998     		ldr	r0, [sp, #36]
 1908 0794 04F10104 		add	r4, r4, #1
 1909 0798 0BD2     		bcs	.L377
 1910 079a BA68     		ldr	r2, [r7, #8]
 1911 079c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1912 07a0 AB6B     		ldr	r3, [r5, #56]
 1913 07a2 9C42     		cmp	r4, r3
 1914 07a4 F2D2     		bcs	.L288
 1915 07a6 0998     		ldr	r0, [sp, #36]
 1916 07a8 3A49     		ldr	r1, .L386+80
 1917 07aa FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1918 07ae AB6B     		ldr	r3, [r5, #56]
 1919 07b0 ECE7     		b	.L288
 1920              	.L377:
 1921 07b2 3A49     		ldr	r1, .L386+88
 1922 07b4 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1923 07b8 0121     		movs	r1, #1
 1924 07ba 0F46     		mov	r7, r1
 1925 07bc 0024     		movs	r4, #0
 1926              	.L293:
 1927 07be 07FA04F2 		lsl	r2, r7, r4
 1928 07c2 D5F8AC30 		ldr	r3, [r5, #172]
 1929 07c6 1A42     		tst	r2, r3
 1930 07c8 07D0     		beq	.L290
 1931 07ca 0029     		cmp	r1, #0
 1932 07cc 35D0     		beq	.L378
 1933              	.L291:
 1934 07ce 3449     		ldr	r1, .L386+92
 1935 07d0 0998     		ldr	r0, [sp, #36]
 1936 07d2 2246     		mov	r2, r4
 1937 07d4 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1938 07d8 0021     		movs	r1, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 35


 1939              	.L290:
 1940 07da 0134     		adds	r4, r4, #1
 1941 07dc 062C     		cmp	r4, #6
 1942 07de EED1     		bne	.L293
 1943 07e0 D5F8B430 		ldr	r3, [r5, #180]
 1944 07e4 0998     		ldr	r0, [sp, #36]
 1945 07e6 002B     		cmp	r3, #0
 1946 07e8 62D0     		beq	.L294
 1947 07ea 2E49     		ldr	r1, .L386+96
 1948 07ec FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1949              	.L295:
 1950 07f0 D5F8B450 		ldr	r5, [r5, #180]
 1951 07f4 002D     		cmp	r5, #0
 1952 07f6 97D1     		bne	.L297
 1953              	.L296:
 1954 07f8 0998     		ldr	r0, [sp, #36]
 1955 07fa 2B49     		ldr	r1, .L386+100
 1956 07fc FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1957 0800 5246     		mov	r2, r10
 1958 0802 4346     		mov	r3, r8
 1959 0804 3068     		ldr	r0, [r6]
 1960 0806 0AA9     		add	r1, sp, #40
 1961 0808 FFF7FEFF 		bl	_ZNK8Platform18GetMcuTemperaturesERfS0_S0_
 1962 080c 0A98     		ldr	r0, [sp, #40]	@ float
 1963 080e FFF7FEFF 		bl	__aeabi_f2d
 1964 0812 8246     		mov	r10, r0
 1965 0814 0B98     		ldr	r0, [sp, #44]	@ float
 1966 0816 8B46     		mov	fp, r1
 1967 0818 FFF7FEFF 		bl	__aeabi_f2d
 1968 081c CDE90001 		strd	r0, [sp]
 1969 0820 0C98     		ldr	r0, [sp, #48]	@ float
 1970 0822 FFF7FEFF 		bl	__aeabi_f2d
 1971 0826 099C     		ldr	r4, [sp, #36]
 1972 0828 CDE90201 		strd	r0, [sp, #8]
 1973 082c 5246     		mov	r2, r10
 1974 082e 5B46     		mov	r3, fp
 1975 0830 2046     		mov	r0, r4
 1976 0832 1E49     		ldr	r1, .L386+104
 1977 0834 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1978 0838 73E6     		b	.L283
 1979              	.L378:
 1980 083a 0998     		ldr	r0, [sp, #36]
 1981 083c 1549     		ldr	r1, .L386+80
 1982 083e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1983 0842 C4E7     		b	.L291
 1984              	.L387:
 1985              		.align	2
 1986              	.L386:
 1987 0844 B0070000 		.word	.LC92
 1988 0848 10040000 		.word	.LC47
 1989 084c E8030000 		.word	.LC46
 1990 0850 CC030000 		.word	.LC44
 1991 0854 9C070000 		.word	.LC91
 1992 0858 00006440 		.word	1080295424
 1993 085c 24050000 		.word	.LC61
 1994 0860 3C050000 		.word	.LC62
 1995 0864 54050000 		.word	.LC63
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 36


 1996 0868 68050000 		.word	.LC64
 1997 086c B8000000 		.word	.LC5
 1998 0870 78050000 		.word	.LC65
 1999 0874 A8050000 		.word	.LC66
 2000 0878 CC050000 		.word	.LC67
 2001 087c D8050000 		.word	.LC68
 2002 0880 F4050000 		.word	.LC69
 2003 0884 04060000 		.word	.LC70
 2004 0888 10060000 		.word	.LC71
 2005 088c 4C060000 		.word	.LC73
 2006 0890 68060000 		.word	.LC74
 2007 0894 4C030000 		.word	.LC36
 2008 0898 6C060000 		.word	.LC75
 2009 089c 7C060000 		.word	.LC76
 2010 08a0 8C060000 		.word	.LC77
 2011 08a4 90060000 		.word	.LC78
 2012 08a8 D8020000 		.word	.LC27
 2013 08ac 1C060000 		.word	.LC72
 2014              	.L294:
 2015 08b0 7E49     		ldr	r1, .L388
 2016 08b2 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2017 08b6 9BE7     		b	.L295
 2018              	.L323:
 2019 08b8 0122     		movs	r2, #1
 2020 08ba FFF7C2BB 		b	.L229
 2021              	.L230:
 2022 08be 0998     		ldr	r0, [sp, #36]
 2023 08c0 7B49     		ldr	r1, .L388+4
 2024 08c2 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2025 08c6 002F     		cmp	r7, #0
 2026 08c8 7FF4D9AB 		bne	.L234
 2027 08cc FFF7ECBB 		b	.L235
 2028              	.L253:
 2029 08d0 0998     		ldr	r0, [sp, #36]
 2030 08d2 7849     		ldr	r1, .L388+8
 2031 08d4 F8E4     		b	.L315
 2032              	.L326:
 2033 08d6 784B     		ldr	r3, .L388+12
 2034 08d8 B2E6     		b	.L277
 2035              	.L372:
 2036 08da F369     		ldr	r3, [r6, #28]
 2037 08dc 7749     		ldr	r1, .L388+16
 2038 08de 0998     		ldr	r0, [sp, #36]
 2039 08e0 5A6A     		ldr	r2, [r3, #36]
 2040 08e2 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2041 08e6 F469     		ldr	r4, [r6, #28]
 2042 08e8 0021     		movs	r1, #0
 2043 08ea A06B     		ldr	r0, [r4, #56]	@ float
 2044 08ec 099D     		ldr	r5, [sp, #36]
 2045 08ee FFF7FEFF 		bl	__aeabi_fcmpgt
 2046 08f2 0028     		cmp	r0, #0
 2047 08f4 00F0B280 		beq	.L355
 2048 08f8 2046     		mov	r0, r4
 2049 08fa FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv
 2050 08fe A16B     		ldr	r1, [r4, #56]	@ float
 2051 0900 FFF7FEFF 		bl	__aeabi_fsub
 2052 0904 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 37


 2053 0908 0246     		mov	r2, r0
 2054 090a 0B46     		mov	r3, r1
 2055              	.L298:
 2056 090c 6C49     		ldr	r1, .L388+20
 2057 090e 2846     		mov	r0, r5
 2058 0910 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2059 0914 0998     		ldr	r0, [sp, #36]
 2060 0916 6B49     		ldr	r1, .L388+24
 2061 0918 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2062 091c B38D     		ldrh	r3, [r6, #44]
 2063 091e 002B     		cmp	r3, #0
 2064 0920 00F0B380 		beq	.L300
 2065 0924 0024     		movs	r4, #0
 2066 0926 5B27     		movs	r7, #91
 2067 0928 00E0     		b	.L302
 2068              	.L379:
 2069 092a 2C27     		movs	r7, #44
 2070              	.L302:
 2071 092c 2146     		mov	r1, r4
 2072 092e 3069     		ldr	r0, [r6, #16]
 2073 0930 099D     		ldr	r5, [sp, #36]
 2074 0932 FFF7FEFF 		bl	_ZNK6GCodes26GetRawExtruderTotalByDriveEj
 2075 0936 FFF7FEFF 		bl	__aeabi_f2d
 2076 093a 3A46     		mov	r2, r7
 2077 093c CDE90001 		strd	r0, [sp]
 2078 0940 2846     		mov	r0, r5
 2079 0942 6149     		ldr	r1, .L388+28
 2080 0944 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2081 0948 B38D     		ldrh	r3, [r6, #44]
 2082 094a 0134     		adds	r4, r4, #1
 2083 094c A342     		cmp	r3, r4
 2084 094e ECD8     		bhi	.L379
 2085              	.L301:
 2086 0950 F369     		ldr	r3, [r6, #28]
 2087 0952 099C     		ldr	r4, [sp, #36]
 2088 0954 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 2089 0956 002B     		cmp	r3, #0
 2090 0958 40F08B80 		bne	.L380
 2091 095c 0022     		movs	r2, #0
 2092 095e 0023     		movs	r3, #0
 2093              	.L303:
 2094 0960 2046     		mov	r0, r4
 2095 0962 5A49     		ldr	r1, .L388+32
 2096 0964 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2097 0968 F469     		ldr	r4, [r6, #28]
 2098 096a 0021     		movs	r1, #0
 2099 096c E56A     		ldr	r5, [r4, #44]	@ float
 2100 096e 099F     		ldr	r7, [sp, #36]
 2101 0970 2846     		mov	r0, r5
 2102 0972 FFF7FEFF 		bl	__aeabi_fcmpgt
 2103 0976 0028     		cmp	r0, #0
 2104 0978 76D0     		beq	.L356
 2105 097a 2846     		mov	r0, r5
 2106 097c FFF7FEFF 		bl	__aeabi_f2d
 2107 0980 0246     		mov	r2, r0
 2108 0982 0B46     		mov	r3, r1
 2109              	.L306:
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 38


 2110 0984 3846     		mov	r0, r7
 2111 0986 5249     		ldr	r1, .L388+36
 2112 0988 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2113 098c F369     		ldr	r3, [r6, #28]
 2114 098e 099C     		ldr	r4, [sp, #36]
 2115 0990 93F8C421 		ldrb	r2, [r3, #452]	@ zero_extendqisi2
 2116 0994 002A     		cmp	r2, #0
 2117 0996 64D0     		beq	.L332
 2118 0998 D3F8D401 		ldr	r0, [r3, #468]	@ float
 2119 099c FFF7FEFF 		bl	__aeabi_f2d
 2120 09a0 0246     		mov	r2, r0
 2121 09a2 0B46     		mov	r3, r1
 2122              	.L307:
 2123 09a4 4B49     		ldr	r1, .L388+40
 2124 09a6 2046     		mov	r0, r4
 2125 09a8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2126 09ac F069     		ldr	r0, [r6, #28]
 2127 09ae 099C     		ldr	r4, [sp, #36]
 2128 09b0 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv
 2129 09b4 FFF7FEFF 		bl	__aeabi_f2d
 2130 09b8 0246     		mov	r2, r0
 2131 09ba 0B46     		mov	r3, r1
 2132 09bc 2046     		mov	r0, r4
 2133 09be 4649     		ldr	r1, .L388+44
 2134 09c0 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2135 09c4 F069     		ldr	r0, [r6, #28]
 2136 09c6 099C     		ldr	r4, [sp, #36]
 2137 09c8 FFF7FEFF 		bl	_ZNK12PrintMonitor17GetWarmUpDurationEv
 2138 09cc FFF7FEFF 		bl	__aeabi_f2d
 2139 09d0 0246     		mov	r2, r0
 2140 09d2 0B46     		mov	r3, r1
 2141 09d4 2046     		mov	r0, r4
 2142 09d6 4149     		ldr	r1, .L388+48
 2143 09d8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2144 09dc F069     		ldr	r0, [r6, #28]
 2145 09de 0121     		movs	r1, #1
 2146 09e0 099C     		ldr	r4, [sp, #36]
 2147 09e2 FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 2148 09e6 FFF7FEFF 		bl	__aeabi_f2d
 2149 09ea 0246     		mov	r2, r0
 2150 09ec 0B46     		mov	r3, r1
 2151 09ee 2046     		mov	r0, r4
 2152 09f0 3B49     		ldr	r1, .L388+52
 2153 09f2 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2154 09f6 F069     		ldr	r0, [r6, #28]
 2155 09f8 0021     		movs	r1, #0
 2156 09fa 099C     		ldr	r4, [sp, #36]
 2157 09fc FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 2158 0a00 FFF7FEFF 		bl	__aeabi_f2d
 2159 0a04 0246     		mov	r2, r0
 2160 0a06 0B46     		mov	r3, r1
 2161 0a08 2046     		mov	r0, r4
 2162 0a0a 3649     		ldr	r1, .L388+56
 2163 0a0c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2164 0a10 F069     		ldr	r0, [r6, #28]
 2165 0a12 0221     		movs	r1, #2
 2166 0a14 099C     		ldr	r4, [sp, #36]
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 39


 2167 0a16 FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 2168 0a1a FFF7FEFF 		bl	__aeabi_f2d
 2169 0a1e 0246     		mov	r2, r0
 2170 0a20 0B46     		mov	r3, r1
 2171 0a22 2046     		mov	r0, r4
 2172 0a24 3049     		ldr	r1, .L388+60
 2173 0a26 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2174 0a2a 7AE5     		b	.L283
 2175              	.L266:
 2176 0a2c 0998     		ldr	r0, [sp, #36]
 2177 0a2e 2149     		ldr	r1, .L388+8
 2178 0a30 19E5     		b	.L317
 2179              	.L263:
 2180 0a32 0998     		ldr	r0, [sp, #36]
 2181 0a34 1F49     		ldr	r1, .L388+8
 2182 0a36 F2E4     		b	.L316
 2183              	.L272:
 2184 0a38 0998     		ldr	r0, [sp, #36]
 2185 0a3a 1E49     		ldr	r1, .L388+8
 2186 0a3c 58E5     		b	.L319
 2187              	.L269:
 2188 0a3e 0998     		ldr	r0, [sp, #36]
 2189 0a40 1C49     		ldr	r1, .L388+8
 2190 0a42 34E5     		b	.L318
 2191              	.L238:
 2192 0a44 0998     		ldr	r0, [sp, #36]
 2193 0a46 5B21     		movs	r1, #91
 2194 0a48 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 2195 0a4c FFF74DBB 		b	.L239
 2196              	.L231:
 2197 0a50 0998     		ldr	r0, [sp, #36]
 2198 0a52 1749     		ldr	r1, .L388+4
 2199 0a54 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2200 0a58 FFF726BB 		b	.L235
 2201              	.L355:
 2202 0a5c 0022     		movs	r2, #0
 2203 0a5e 0023     		movs	r3, #0
 2204 0a60 54E7     		b	.L298
 2205              	.L332:
 2206 0a62 0022     		movs	r2, #0
 2207 0a64 0023     		movs	r3, #0
 2208 0a66 9DE7     		b	.L307
 2209              	.L356:
 2210 0a68 636A     		ldr	r3, [r4, #36]
 2211 0a6a 9BB9     		cbnz	r3, .L381
 2212 0a6c 0022     		movs	r2, #0
 2213 0a6e 0023     		movs	r3, #0
 2214 0a70 88E7     		b	.L306
 2215              	.L380:
 2216 0a72 3069     		ldr	r0, [r6, #16]
 2217 0a74 FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 2218 0a78 FFF7FEFF 		bl	__aeabi_f2d
 2219 0a7c 0022     		movs	r2, #0
 2220 0a7e 1B4B     		ldr	r3, .L388+64
 2221 0a80 FFF7FEFF 		bl	__aeabi_dmul
 2222 0a84 0246     		mov	r2, r0
 2223 0a86 0B46     		mov	r3, r1
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 40


 2224 0a88 6AE7     		b	.L303
 2225              	.L300:
 2226 0a8a 0998     		ldr	r0, [sp, #36]
 2227 0a8c 5B21     		movs	r1, #91
 2228 0a8e FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 2229 0a92 5DE7     		b	.L301
 2230              	.L381:
 2231 0a94 2046     		mov	r0, r4
 2232 0a96 FFF7FEFF 		bl	_ZNK12PrintMonitor16GetPrintDurationEv
 2233 0a9a A16A     		ldr	r1, [r4, #40]	@ float
 2234 0a9c FFF7FEFF 		bl	__aeabi_fsub
 2235 0aa0 FFF7FEFF 		bl	__aeabi_f2d
 2236 0aa4 0246     		mov	r2, r0
 2237 0aa6 0B46     		mov	r3, r1
 2238 0aa8 6CE7     		b	.L306
 2239              	.L389:
 2240 0aaa 00BF     		.align	2
 2241              	.L388:
 2242 0aac 98060000 		.word	.LC79
 2243 0ab0 F8020000 		.word	.LC29
 2244 0ab4 D4020000 		.word	.LC26
 2245 0ab8 00805640 		.word	1079410688
 2246 0abc 9C060000 		.word	.LC80
 2247 0ac0 B0060000 		.word	.LC81
 2248 0ac4 CC060000 		.word	.LC82
 2249 0ac8 1C030000 		.word	.LC32
 2250 0acc D8060000 		.word	.LC83
 2251 0ad0 F4060000 		.word	.LC84
 2252 0ad4 10070000 		.word	.LC85
 2253 0ad8 2C070000 		.word	.LC86
 2254 0adc 44070000 		.word	.LC87
 2255 0ae0 5C070000 		.word	.LC88
 2256 0ae4 78070000 		.word	.LC89
 2257 0ae8 8C070000 		.word	.LC90
 2258 0aec 00005940 		.word	1079574528
 2259              		.size	_ZN6RepRap17GetStatusResponseEh14ResponseSource, .-_ZN6RepRap17GetStatusResponseEh14Response
 2260              		.section	.text._ZN6RepRap17GetConfigResponseEv,"ax",%progbits
 2261              		.align	2
 2262              		.global	_ZN6RepRap17GetConfigResponseEv
 2263              		.thumb
 2264              		.thumb_func
 2265              		.type	_ZN6RepRap17GetConfigResponseEv, %function
 2266              	_ZN6RepRap17GetConfigResponseEv:
 2267              		@ args = 0, pretend = 0, frame = 8
 2268              		@ frame_needed = 0, uses_anonymous_args = 0
 2269 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2270 0002 85B0     		sub	sp, sp, #20
 2271 0004 0446     		mov	r4, r0
 2272 0006 03A8     		add	r0, sp, #12
 2273 0008 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2274 000c 0028     		cmp	r0, #0
 2275 000e 00F0DC80 		beq	.L407
 2276 0012 714B     		ldr	r3, .L413
 2277 0014 0398     		ldr	r0, [sp, #12]
 2278 0016 1B69     		ldr	r3, [r3, #16]
 2279 0018 7049     		ldr	r1, .L413+4
 2280 001a D3F88461 		ldr	r6, [r3, #388]
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 41


 2281 001e FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 2282 0022 002E     		cmp	r6, #0
 2283 0024 00F0D380 		beq	.L392
 2284 0028 0025     		movs	r5, #0
 2285 002a 5B27     		movs	r7, #91
 2286 002c 00E0     		b	.L394
 2287              	.L408:
 2288 002e 2C27     		movs	r7, #44
 2289              	.L394:
 2290 0030 2368     		ldr	r3, [r4]
 2291 0032 05F59C72 		add	r2, r5, #312
 2292 0036 53F82200 		ldr	r0, [r3, r2, lsl #2]	@ float
 2293 003a FFF7FEFF 		bl	__aeabi_f2d
 2294 003e 039B     		ldr	r3, [sp, #12]
 2295 0040 CDE90001 		strd	r0, [sp]
 2296 0044 0135     		adds	r5, r5, #1
 2297 0046 3A46     		mov	r2, r7
 2298 0048 1846     		mov	r0, r3
 2299 004a 6549     		ldr	r1, .L413+8
 2300 004c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2301 0050 B542     		cmp	r5, r6
 2302 0052 ECD1     		bne	.L408
 2303 0054 0398     		ldr	r0, [sp, #12]
 2304 0056 6349     		ldr	r1, .L413+12
 2305 0058 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2306 005c 0025     		movs	r5, #0
 2307 005e 5B27     		movs	r7, #91
 2308 0060 00E0     		b	.L405
 2309              	.L395:
 2310 0062 2C27     		movs	r7, #44
 2311              	.L405:
 2312 0064 2368     		ldr	r3, [r4]
 2313 0066 05F59972 		add	r2, r5, #306
 2314 006a 53F82200 		ldr	r0, [r3, r2, lsl #2]	@ float
 2315 006e FFF7FEFF 		bl	__aeabi_f2d
 2316 0072 039B     		ldr	r3, [sp, #12]
 2317 0074 CDE90001 		strd	r0, [sp]
 2318 0078 0135     		adds	r5, r5, #1
 2319 007a 3A46     		mov	r2, r7
 2320 007c 1846     		mov	r0, r3
 2321 007e 5849     		ldr	r1, .L413+8
 2322 0080 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2323 0084 B542     		cmp	r5, r6
 2324 0086 ECD1     		bne	.L395
 2325              	.L404:
 2326 0088 0398     		ldr	r0, [sp, #12]
 2327 008a 5749     		ldr	r1, .L413+16
 2328 008c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2329 0090 0025     		movs	r5, #0
 2330 0092 5B27     		movs	r7, #91
 2331 0094 00E0     		b	.L397
 2332              	.L409:
 2333 0096 2C27     		movs	r7, #44
 2334              	.L397:
 2335 0098 2368     		ldr	r3, [r4]
 2336 009a 039E     		ldr	r6, [sp, #12]
 2337 009c 03EB8503 		add	r3, r3, r5, lsl #2
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 42


 2338 00a0 D3F80C01 		ldr	r0, [r3, #268]	@ float
 2339 00a4 FFF7FEFF 		bl	__aeabi_f2d
 2340 00a8 0135     		adds	r5, r5, #1
 2341 00aa CDE90001 		strd	r0, [sp]
 2342 00ae 3A46     		mov	r2, r7
 2343 00b0 3046     		mov	r0, r6
 2344 00b2 4B49     		ldr	r1, .L413+8
 2345 00b4 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2346 00b8 092D     		cmp	r5, #9
 2347 00ba ECD1     		bne	.L409
 2348 00bc 0398     		ldr	r0, [sp, #12]
 2349 00be 4B49     		ldr	r1, .L413+20
 2350 00c0 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2351 00c4 0025     		movs	r5, #0
 2352 00c6 5B27     		movs	r7, #91
 2353 00c8 00E0     		b	.L399
 2354              	.L410:
 2355 00ca 2C27     		movs	r7, #44
 2356              	.L399:
 2357 00cc 2946     		mov	r1, r5
 2358 00ce 0022     		movs	r2, #0
 2359 00d0 2068     		ldr	r0, [r4]
 2360 00d2 039E     		ldr	r6, [sp, #12]
 2361 00d4 FFF7FEFF 		bl	_ZNK8Platform15GetMotorCurrentEjb
 2362 00d8 FFF7FEFF 		bl	__aeabi_f2d
 2363 00dc 0135     		adds	r5, r5, #1
 2364 00de CDE90001 		strd	r0, [sp]
 2365 00e2 3A46     		mov	r2, r7
 2366 00e4 3046     		mov	r0, r6
 2367 00e6 3E49     		ldr	r1, .L413+8
 2368 00e8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2369 00ec 092D     		cmp	r5, #9
 2370 00ee ECD1     		bne	.L410
 2371 00f0 2068     		ldr	r0, [r4]
 2372 00f2 039D     		ldr	r5, [sp, #12]
 2373 00f4 FFF7FEFF 		bl	_ZNK8Platform20GetElectronicsStringEv
 2374 00f8 3D49     		ldr	r1, .L413+24
 2375 00fa 0246     		mov	r2, r0
 2376 00fc 2846     		mov	r0, r5
 2377 00fe FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2378 0102 3C49     		ldr	r1, .L413+28
 2379 0104 3C4A     		ldr	r2, .L413+32
 2380 0106 0398     		ldr	r0, [sp, #12]
 2381 0108 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2382 010c 3B49     		ldr	r1, .L413+36
 2383 010e 3C4A     		ldr	r2, .L413+40
 2384 0110 0398     		ldr	r0, [sp, #12]
 2385 0112 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2386 0116 3B4A     		ldr	r2, .L413+44
 2387 0118 3B49     		ldr	r1, .L413+48
 2388 011a 0398     		ldr	r0, [sp, #12]
 2389 011c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2390 0120 2368     		ldr	r3, [r4]
 2391 0122 039D     		ldr	r5, [sp, #12]
 2392 0124 D3F84402 		ldr	r0, [r3, #580]	@ float
 2393 0128 FFF7FEFF 		bl	__aeabi_f2d
 2394 012c 0022     		movs	r2, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 43


 2395 012e 374B     		ldr	r3, .L413+52
 2396 0130 FFF7FEFF 		bl	__aeabi_dmul
 2397 0134 0246     		mov	r2, r0
 2398 0136 0B46     		mov	r3, r1
 2399 0138 2846     		mov	r0, r5
 2400 013a 3549     		ldr	r1, .L413+56
 2401 013c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2402 0140 A368     		ldr	r3, [r4, #8]
 2403 0142 039D     		ldr	r5, [sp, #12]
 2404 0144 D3F82404 		ldr	r0, [r3, #1060]	@ float
 2405 0148 FFF7FEFF 		bl	__aeabi_f2d
 2406 014c 0246     		mov	r2, r0
 2407 014e 0B46     		mov	r3, r1
 2408 0150 2846     		mov	r0, r5
 2409 0152 3049     		ldr	r1, .L413+60
 2410 0154 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2411 0158 0398     		ldr	r0, [sp, #12]
 2412 015a 2F49     		ldr	r1, .L413+64
 2413 015c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2414 0160 0025     		movs	r5, #0
 2415 0162 5B27     		movs	r7, #91
 2416 0164 00E0     		b	.L401
 2417              	.L411:
 2418 0166 2C27     		movs	r7, #44
 2419              	.L401:
 2420 0168 2368     		ldr	r3, [r4]
 2421 016a 039E     		ldr	r6, [sp, #12]
 2422 016c 03EB8503 		add	r3, r3, r5, lsl #2
 2423 0170 D3F85C01 		ldr	r0, [r3, #348]	@ float
 2424 0174 FFF7FEFF 		bl	__aeabi_f2d
 2425 0178 0135     		adds	r5, r5, #1
 2426 017a CDE90001 		strd	r0, [sp]
 2427 017e 3A46     		mov	r2, r7
 2428 0180 3046     		mov	r0, r6
 2429 0182 1749     		ldr	r1, .L413+8
 2430 0184 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2431 0188 092D     		cmp	r5, #9
 2432 018a ECD1     		bne	.L411
 2433 018c 0398     		ldr	r0, [sp, #12]
 2434 018e 2349     		ldr	r1, .L413+68
 2435 0190 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2436 0194 0025     		movs	r5, #0
 2437 0196 5B26     		movs	r6, #91
 2438 0198 00E0     		b	.L403
 2439              	.L412:
 2440 019a 2C26     		movs	r6, #44
 2441              	.L403:
 2442 019c 2368     		ldr	r3, [r4]
 2443 019e 05F13A02 		add	r2, r5, #58
 2444 01a2 53F82200 		ldr	r0, [r3, r2, lsl #2]	@ float
 2445 01a6 FFF7FEFF 		bl	__aeabi_f2d
 2446 01aa 039B     		ldr	r3, [sp, #12]
 2447 01ac CDE90001 		strd	r0, [sp]
 2448 01b0 0135     		adds	r5, r5, #1
 2449 01b2 3246     		mov	r2, r6
 2450 01b4 1846     		mov	r0, r3
 2451 01b6 0A49     		ldr	r1, .L413+8
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 44


 2452 01b8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2453 01bc 092D     		cmp	r5, #9
 2454 01be ECD1     		bne	.L412
 2455 01c0 0398     		ldr	r0, [sp, #12]
 2456 01c2 1749     		ldr	r1, .L413+72
 2457 01c4 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2458 01c8 0398     		ldr	r0, [sp, #12]
 2459              	.L407:
 2460 01ca 05B0     		add	sp, sp, #20
 2461              		@ sp needed
 2462 01cc F0BD     		pop	{r4, r5, r6, r7, pc}
 2463              	.L392:
 2464 01ce 0398     		ldr	r0, [sp, #12]
 2465 01d0 0449     		ldr	r1, .L413+12
 2466 01d2 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2467 01d6 57E7     		b	.L404
 2468              	.L414:
 2469              		.align	2
 2470              	.L413:
 2471 01d8 00000000 		.word	reprap
 2472 01dc F4070000 		.word	.LC95
 2473 01e0 8C030000 		.word	.LC41
 2474 01e4 E8080000 		.word	.LC107
 2475 01e8 04080000 		.word	.LC96
 2476 01ec 18080000 		.word	.LC97
 2477 01f0 28080000 		.word	.LC98
 2478 01f4 44080000 		.word	.LC99
 2479 01f8 B8000000 		.word	.LC5
 2480 01fc 5C080000 		.word	.LC100
 2481 0200 D0000000 		.word	.LC6
 2482 0204 E8000000 		.word	.LC7
 2483 0208 74080000 		.word	.LC101
 2484 020c 00005940 		.word	1079574528
 2485 0210 8C080000 		.word	.LC102
 2486 0214 A8080000 		.word	.LC103
 2487 0218 BC080000 		.word	.LC104
 2488 021c D0080000 		.word	.LC105
 2489 0220 E4080000 		.word	.LC106
 2490              		.size	_ZN6RepRap17GetConfigResponseEv, .-_ZN6RepRap17GetConfigResponseEv
 2491              		.section	.text._ZN6RepRap23GetLegacyStatusResponseEhi,"ax",%progbits
 2492              		.align	2
 2493              		.global	_ZN6RepRap23GetLegacyStatusResponseEhi
 2494              		.thumb
 2495              		.thumb_func
 2496              		.type	_ZN6RepRap23GetLegacyStatusResponseEhi, %function
 2497              	_ZN6RepRap23GetLegacyStatusResponseEhi:
 2498              		@ args = 0, pretend = 0, frame = 64
 2499              		@ frame_needed = 0, uses_anonymous_args = 0
 2500 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2501 0004 95B0     		sub	sp, sp, #84
 2502 0006 0646     		mov	r6, r0
 2503 0008 08A8     		add	r0, sp, #32
 2504 000a 0591     		str	r1, [sp, #20]
 2505 000c 0792     		str	r2, [sp, #28]
 2506 000e FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2507 0012 0028     		cmp	r0, #0
 2508 0014 00F02C82 		beq	.L508
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 45


 2509 0018 96F84530 		ldrb	r3, [r6, #69]	@ zero_extendqisi2
 2510 001c 002B     		cmp	r3, #0
 2511 001e 00F06682 		beq	.L509
 2512 0022 4322     		movs	r2, #67
 2513              	.L418:
 2514 0024 0898     		ldr	r0, [sp, #32]
 2515 0026 A749     		ldr	r1, .L523
 2516 0028 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 2517 002c F068     		ldr	r0, [r6, #12]
 2518 002e 90F92A40 		ldrsb	r4, [r0, #42]
 2519 0032 631C     		adds	r3, r4, #1
 2520 0034 00F01F82 		beq	.L489
 2521 0038 2146     		mov	r1, r4
 2522 003a 089D     		ldr	r5, [sp, #32]
 2523 003c FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 2524 0040 FFF7FEFF 		bl	__aeabi_f2d
 2525 0044 0246     		mov	r2, r0
 2526 0046 0B46     		mov	r3, r1
 2527 0048 2846     		mov	r0, r5
 2528 004a 9F49     		ldr	r1, .L523+4
 2529 004c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2530 0050 2C27     		movs	r7, #44
 2531              	.L419:
 2532 0052 F38D     		ldrh	r3, [r6, #46]
 2533 0054 012B     		cmp	r3, #1
 2534 0056 40F2F882 		bls	.L420
 2535 005a 0125     		movs	r5, #1
 2536 005c 00E0     		b	.L422
 2537              	.L510:
 2538 005e 2C27     		movs	r7, #44
 2539              	.L422:
 2540 0060 69B2     		sxtb	r1, r5
 2541 0062 F068     		ldr	r0, [r6, #12]
 2542 0064 DDF82080 		ldr	r8, [sp, #32]
 2543 0068 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 2544 006c FFF7FEFF 		bl	__aeabi_f2d
 2545 0070 3A46     		mov	r2, r7
 2546 0072 CDE90001 		strd	r0, [sp]
 2547 0076 4046     		mov	r0, r8
 2548 0078 9449     		ldr	r1, .L523+8
 2549 007a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2550 007e F38D     		ldrh	r3, [r6, #46]
 2551 0080 0135     		adds	r5, r5, #1
 2552 0082 AB42     		cmp	r3, r5
 2553 0084 EBD8     		bhi	.L510
 2554 0086 0898     		ldr	r0, [sp, #32]
 2555              	.L478:
 2556 0088 9149     		ldr	r1, .L523+12
 2557              	.L423:
 2558 008a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2559 008e 9149     		ldr	r1, .L523+16
 2560 0090 0898     		ldr	r0, [sp, #32]
 2561 0092 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2562 0096 F068     		ldr	r0, [r6, #12]
 2563 0098 90F92A10 		ldrsb	r1, [r0, #42]
 2564 009c 4F1C     		adds	r7, r1, #1
 2565 009e 00F01582 		beq	.L491
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 46


 2566 00a2 089D     		ldr	r5, [sp, #32]
 2567 00a4 FFF7FEFF 		bl	_ZNK4Heat20GetActiveTemperatureEa
 2568 00a8 FFF7FEFF 		bl	__aeabi_f2d
 2569 00ac 0246     		mov	r2, r0
 2570 00ae 0B46     		mov	r3, r1
 2571 00b0 2846     		mov	r0, r5
 2572 00b2 8549     		ldr	r1, .L523+4
 2573 00b4 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2574 00b8 2C27     		movs	r7, #44
 2575              	.L424:
 2576 00ba F38D     		ldrh	r3, [r6, #46]
 2577 00bc 012B     		cmp	r3, #1
 2578 00be 40F2D682 		bls	.L425
 2579 00c2 0125     		movs	r5, #1
 2580 00c4 00E0     		b	.L427
 2581              	.L511:
 2582 00c6 2C27     		movs	r7, #44
 2583              	.L427:
 2584 00c8 69B2     		sxtb	r1, r5
 2585 00ca F068     		ldr	r0, [r6, #12]
 2586 00cc DDF82080 		ldr	r8, [sp, #32]
 2587 00d0 FFF7FEFF 		bl	_ZNK4Heat20GetActiveTemperatureEa
 2588 00d4 FFF7FEFF 		bl	__aeabi_f2d
 2589 00d8 3A46     		mov	r2, r7
 2590 00da CDE90001 		strd	r0, [sp]
 2591 00de 4046     		mov	r0, r8
 2592 00e0 7A49     		ldr	r1, .L523+8
 2593 00e2 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2594 00e6 F38D     		ldrh	r3, [r6, #46]
 2595 00e8 0135     		adds	r5, r5, #1
 2596 00ea AB42     		cmp	r3, r5
 2597 00ec EBD8     		bhi	.L511
 2598 00ee 0898     		ldr	r0, [sp, #32]
 2599              	.L479:
 2600 00f0 7749     		ldr	r1, .L523+12
 2601              	.L428:
 2602 00f2 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2603 00f6 0898     		ldr	r0, [sp, #32]
 2604 00f8 7749     		ldr	r1, .L523+20
 2605 00fa FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2606 00fe 651C     		adds	r5, r4, #1
 2607 0100 00F0E281 		beq	.L493
 2608 0104 2146     		mov	r1, r4
 2609 0106 F068     		ldr	r0, [r6, #12]
 2610 0108 089D     		ldr	r5, [sp, #32]
 2611 010a FFF7FEFF 		bl	_ZNK4Heat21GetStandbyTemperatureEa
 2612 010e FFF7FEFF 		bl	__aeabi_f2d
 2613 0112 0246     		mov	r2, r0
 2614 0114 0B46     		mov	r3, r1
 2615 0116 2846     		mov	r0, r5
 2616 0118 6B49     		ldr	r1, .L523+4
 2617 011a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2618 011e 2C27     		movs	r7, #44
 2619              	.L429:
 2620 0120 F38D     		ldrh	r3, [r6, #46]
 2621 0122 012B     		cmp	r3, #1
 2622 0124 40F29D82 		bls	.L430
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 47


 2623 0128 0125     		movs	r5, #1
 2624 012a 00E0     		b	.L432
 2625              	.L512:
 2626 012c 2C27     		movs	r7, #44
 2627              	.L432:
 2628 012e 69B2     		sxtb	r1, r5
 2629 0130 F068     		ldr	r0, [r6, #12]
 2630 0132 DDF82080 		ldr	r8, [sp, #32]
 2631 0136 FFF7FEFF 		bl	_ZNK4Heat21GetStandbyTemperatureEa
 2632 013a FFF7FEFF 		bl	__aeabi_f2d
 2633 013e 3A46     		mov	r2, r7
 2634 0140 CDE90001 		strd	r0, [sp]
 2635 0144 4046     		mov	r0, r8
 2636 0146 6149     		ldr	r1, .L523+8
 2637 0148 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2638 014c F38D     		ldrh	r3, [r6, #46]
 2639 014e 0135     		adds	r5, r5, #1
 2640 0150 AB42     		cmp	r3, r5
 2641 0152 EBD8     		bhi	.L512
 2642 0154 0898     		ldr	r0, [sp, #32]
 2643              	.L480:
 2644 0156 5E49     		ldr	r1, .L523+12
 2645              	.L433:
 2646 0158 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2647 015c 0898     		ldr	r0, [sp, #32]
 2648 015e 5F49     		ldr	r1, .L523+24
 2649 0160 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2650 0164 601C     		adds	r0, r4, #1
 2651 0166 00F0B381 		beq	.L495
 2652 016a 2146     		mov	r1, r4
 2653 016c F068     		ldr	r0, [r6, #12]
 2654 016e 089C     		ldr	r4, [sp, #32]
 2655 0170 FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 2656 0174 5A49     		ldr	r1, .L523+28
 2657 0176 0246     		mov	r2, r0
 2658 0178 2046     		mov	r0, r4
 2659 017a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2660 017e 2C25     		movs	r5, #44
 2661              	.L434:
 2662 0180 F38D     		ldrh	r3, [r6, #46]
 2663 0182 012B     		cmp	r3, #1
 2664 0184 40F26782 		bls	.L435
 2665 0188 0124     		movs	r4, #1
 2666 018a 00E0     		b	.L437
 2667              	.L513:
 2668 018c 2C25     		movs	r5, #44
 2669              	.L437:
 2670 018e 61B2     		sxtb	r1, r4
 2671 0190 F068     		ldr	r0, [r6, #12]
 2672 0192 089F     		ldr	r7, [sp, #32]
 2673 0194 FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 2674 0198 2A46     		mov	r2, r5
 2675 019a 0346     		mov	r3, r0
 2676 019c 5149     		ldr	r1, .L523+32
 2677 019e 3846     		mov	r0, r7
 2678 01a0 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2679 01a4 F38D     		ldrh	r3, [r6, #46]
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 48


 2680 01a6 0134     		adds	r4, r4, #1
 2681 01a8 A342     		cmp	r3, r4
 2682 01aa EFD8     		bhi	.L513
 2683 01ac 0898     		ldr	r0, [sp, #32]
 2684              	.L481:
 2685 01ae 4849     		ldr	r1, .L523+12
 2686              	.L438:
 2687 01b0 4D4C     		ldr	r4, .L523+36
 2688 01b2 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2689 01b6 2269     		ldr	r2, [r4, #16]
 2690 01b8 736A     		ldr	r3, [r6, #36]
 2691 01ba D2F88471 		ldr	r7, [r2, #388]
 2692 01be A068     		ldr	r0, [r4, #8]
 2693 01c0 002B     		cmp	r3, #0
 2694 01c2 00F0F281 		beq	.L497
 2695 01c6 D3F8AC20 		ldr	r2, [r3, #172]
 2696              	.L439:
 2697 01ca 0DF12C09 		add	r9, sp, #44
 2698 01ce 4946     		mov	r1, r9
 2699 01d0 FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfm
 2700 01d4 D4F82480 		ldr	r8, [r4, #36]
 2701 01d8 B8F1000F 		cmp	r8, #0
 2702 01dc 00F0DB81 		beq	.L440
 2703 01e0 08F19405 		add	r5, r8, #148
 2704 01e4 002F     		cmp	r7, #0
 2705 01e6 00F04882 		beq	.L441
 2706 01ea 4FEA870A 		lsl	r10, r7, #2
 2707 01ee 4FF0000B 		mov	fp, #0
 2708              	.L443:
 2709 01f2 59F80B00 		ldr	r0, [r9, fp]	@ float
 2710 01f6 55F80B10 		ldr	r1, [r5, fp]	@ float
 2711 01fa FFF7FEFF 		bl	__aeabi_fadd
 2712 01fe 49F80B00 		str	r0, [r9, fp]	@ float
 2713 0202 0BF1040B 		add	fp, fp, #4
 2714 0206 D345     		cmp	fp, r10
 2715 0208 F3D1     		bne	.L443
 2716 020a 0898     		ldr	r0, [sp, #32]
 2717 020c 3749     		ldr	r1, .L523+40
 2718 020e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2719              	.L444:
 2720 0212 0AAA     		add	r2, sp, #40
 2721 0214 0692     		str	r2, [sp, #24]
 2722 0216 9246     		mov	r10, r2
 2723 0218 0025     		movs	r5, #0
 2724 021a 4FF05B0B 		mov	fp, #91
 2725 021e 01E0     		b	.L447
 2726              	.L514:
 2727 0220 4FF02C0B 		mov	fp, #44
 2728              	.L447:
 2729 0224 5AF8040F 		ldr	r0, [r10, #4]!	@ float
 2730 0228 FFF7FEFF 		bl	__aeabi_f2d
 2731 022c 089B     		ldr	r3, [sp, #32]
 2732 022e CDE90001 		strd	r0, [sp]
 2733 0232 0135     		adds	r5, r5, #1
 2734 0234 5A46     		mov	r2, fp
 2735 0236 1846     		mov	r0, r3
 2736 0238 2D49     		ldr	r1, .L523+44
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 49


 2737 023a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2738 023e BD42     		cmp	r5, r7
 2739 0240 EED3     		bcc	.L514
 2740              	.L445:
 2741 0242 0898     		ldr	r0, [sp, #32]
 2742 0244 2B49     		ldr	r1, .L523+48
 2743 0246 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2744 024a A38D     		ldrh	r3, [r4, #44]
 2745 024c 002B     		cmp	r3, #0
 2746 024e 00F0F981 		beq	.L448
 2747 0252 0025     		movs	r5, #0
 2748 0254 4FF05B0A 		mov	r10, #91
 2749 0258 01E0     		b	.L450
 2750              	.L515:
 2751 025a 4FF02C0A 		mov	r10, #44
 2752              	.L450:
 2753 025e 2946     		mov	r1, r5
 2754 0260 3069     		ldr	r0, [r6, #16]
 2755 0262 DDF82090 		ldr	r9, [sp, #32]
 2756 0266 FFF7FEFF 		bl	_ZNK6GCodes22GetRawExtruderPositionEj
 2757 026a FFF7FEFF 		bl	__aeabi_f2d
 2758 026e 5246     		mov	r2, r10
 2759 0270 CDE90001 		strd	r0, [sp]
 2760 0274 4846     		mov	r0, r9
 2761 0276 1549     		ldr	r1, .L523+8
 2762 0278 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2763 027c A38D     		ldrh	r3, [r4, #44]
 2764 027e 0135     		adds	r5, r5, #1
 2765 0280 AB42     		cmp	r3, r5
 2766 0282 EAD8     		bhi	.L515
 2767 0284 0898     		ldr	r0, [sp, #32]
 2768 0286 1249     		ldr	r1, .L523+12
 2769              	.L482:
 2770 0288 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2771 028c 3369     		ldr	r3, [r6, #16]
 2772 028e 1A49     		ldr	r1, .L523+52
 2773 0290 D3F86C02 		ldr	r0, [r3, #620]	@ float
 2774 0294 FFF7FEFF 		bl	__aeabi_fmul
 2775 0298 FFF7FEFF 		bl	__aeabi_f2d
 2776 029c 0022     		movs	r2, #0
 2777 029e 174B     		ldr	r3, .L523+56
 2778 02a0 FFF7FEFF 		bl	__aeabi_dmul
 2779 02a4 089D     		ldr	r5, [sp, #32]
 2780 02a6 0B46     		mov	r3, r1
 2781 02a8 0246     		mov	r2, r0
 2782 02aa 1549     		ldr	r1, .L523+60
 2783 02ac 2846     		mov	r0, r5
 2784 02ae FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2785 02b2 A38D     		ldrh	r3, [r4, #44]
 2786 02b4 002B     		cmp	r3, #0
 2787 02b6 00F07A81 		beq	.L451
 2788 02ba 4FF0000A 		mov	r10, #0
 2789 02be 5B25     		movs	r5, #91
 2790 02c0 21E0     		b	.L453
 2791              	.L524:
 2792 02c2 00BF     		.align	2
 2793              	.L523:
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 50


 2794 02c4 F8080000 		.word	.LC108
 2795 02c8 14090000 		.word	.LC109
 2796 02cc 1C030000 		.word	.LC32
 2797 02d0 D8020000 		.word	.LC27
 2798 02d4 EC040000 		.word	.LC56
 2799 02d8 F8040000 		.word	.LC57
 2800 02dc 1C090000 		.word	.LC110
 2801 02e0 28090000 		.word	.LC111
 2802 02e4 08030000 		.word	.LC30
 2803 02e8 00000000 		.word	reprap
 2804 02ec 2C090000 		.word	.LC112
 2805 02f0 30030000 		.word	.LC34
 2806 02f4 10030000 		.word	.LC31
 2807 02f8 00007042 		.word	1114636288
 2808 02fc 00005940 		.word	1079574528
 2809 0300 34090000 		.word	.LC113
 2810              	.L516:
 2811 0304 2C25     		movs	r5, #44
 2812              	.L453:
 2813 0306 3369     		ldr	r3, [r6, #16]
 2814 0308 0AF19C02 		add	r2, r10, #156
 2815 030c 53F82200 		ldr	r0, [r3, r2, lsl #2]	@ float
 2816 0310 FFF7FEFF 		bl	__aeabi_f2d
 2817 0314 0022     		movs	r2, #0
 2818 0316 A74B     		ldr	r3, .L525
 2819 0318 FFF7FEFF 		bl	__aeabi_dmul
 2820 031c 089B     		ldr	r3, [sp, #32]
 2821 031e CDE90001 		strd	r0, [sp]
 2822 0322 2A46     		mov	r2, r5
 2823 0324 1846     		mov	r0, r3
 2824 0326 A449     		ldr	r1, .L525+4
 2825 0328 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2826 032c A38D     		ldrh	r3, [r4, #44]
 2827 032e 0AF1010A 		add	r10, r10, #1
 2828 0332 5345     		cmp	r3, r10
 2829 0334 E6D8     		bhi	.L516
 2830 0336 0898     		ldr	r0, [sp, #32]
 2831 0338 A049     		ldr	r1, .L525+8
 2832              	.L483:
 2833 033a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2834 033e 3069     		ldr	r0, [r6, #16]
 2835 0340 089C     		ldr	r4, [sp, #32]
 2836 0342 FFF7FEFF 		bl	_ZNK6GCodes17GetBabyStepOffsetEv
 2837 0346 FFF7FEFF 		bl	__aeabi_f2d
 2838 034a 0246     		mov	r2, r0
 2839 034c 0B46     		mov	r3, r1
 2840 034e 2046     		mov	r0, r4
 2841 0350 9B49     		ldr	r1, .L525+12
 2842 0352 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2843 0356 B8F1000F 		cmp	r8, #0
 2844 035a 00F01A81 		beq	.L498
 2845 035e D8F80420 		ldr	r2, [r8, #4]
 2846              	.L454:
 2847 0362 9849     		ldr	r1, .L525+16
 2848 0364 0898     		ldr	r0, [sp, #32]
 2849 0366 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2850 036a 3068     		ldr	r0, [r6]
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 51


 2851 036c FFF7FEFF 		bl	_ZNK8Platform16GetZProbeReadingEv
 2852 0370 069A     		ldr	r2, [sp, #24]
 2853 0372 0446     		mov	r4, r0
 2854 0374 09A9     		add	r1, sp, #36
 2855 0376 3068     		ldr	r0, [r6]
 2856 0378 FFF7FEFF 		bl	_ZN8Platform24GetZProbeSecondaryValuesERiS0_
 2857 037c 0128     		cmp	r0, #1
 2858 037e 00F0AF80 		beq	.L456
 2859 0382 0228     		cmp	r0, #2
 2860 0384 40F0A680 		bne	.L517
 2861 0388 0A99     		ldr	r1, [sp, #40]
 2862 038a 0898     		ldr	r0, [sp, #32]
 2863 038c 0091     		str	r1, [sp]
 2864 038e 099B     		ldr	r3, [sp, #36]
 2865 0390 2246     		mov	r2, r4
 2866 0392 8D49     		ldr	r1, .L525+20
 2867 0394 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2868              	.L458:
 2869 0398 0898     		ldr	r0, [sp, #32]
 2870 039a 8C49     		ldr	r1, .L525+24
 2871 039c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2872 03a0 0024     		movs	r4, #0
 2873 03a2 4FF05B08 		mov	r8, #91
 2874              	.L460:
 2875 03a6 2146     		mov	r1, r4
 2876 03a8 3068     		ldr	r0, [r6]
 2877 03aa 089D     		ldr	r5, [sp, #32]
 2878 03ac FFF7FEFF 		bl	_ZNK8Platform11GetFanValueEj
 2879 03b0 FFF7FEFF 		bl	__aeabi_f2d
 2880 03b4 0022     		movs	r2, #0
 2881 03b6 7F4B     		ldr	r3, .L525
 2882 03b8 FFF7FEFF 		bl	__aeabi_dmul
 2883 03bc 0134     		adds	r4, r4, #1
 2884 03be CDE90001 		strd	r0, [sp]
 2885 03c2 4246     		mov	r2, r8
 2886 03c4 2846     		mov	r0, r5
 2887 03c6 8249     		ldr	r1, .L525+28
 2888 03c8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2889 03cc 022C     		cmp	r4, #2
 2890 03ce 02D0     		beq	.L459
 2891 03d0 4FF02C08 		mov	r8, #44
 2892 03d4 E7E7     		b	.L460
 2893              	.L459:
 2894 03d6 3068     		ldr	r0, [r6]
 2895 03d8 089C     		ldr	r4, [sp, #32]
 2896 03da FFF7FEFF 		bl	_ZN8Platform9GetFanRPMEv
 2897 03de FFF7FEFF 		bl	__aeabi_f2uiz
 2898 03e2 7C49     		ldr	r1, .L525+32
 2899 03e4 0246     		mov	r2, r0
 2900 03e6 2046     		mov	r0, r4
 2901 03e8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2902 03ec 0898     		ldr	r0, [sp, #32]
 2903 03ee 7A49     		ldr	r1, .L525+36
 2904 03f0 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2905 03f4 A7B1     		cbz	r7, .L464
 2906 03f6 0024     		movs	r4, #0
 2907 03f8 5B22     		movs	r2, #91
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 52


 2908 03fa 0125     		movs	r5, #1
 2909 03fc 00E0     		b	.L465
 2910              	.L518:
 2911 03fe 2C22     		movs	r2, #44
 2912              	.L465:
 2913 0400 05FA04F1 		lsl	r1, r5, r4
 2914 0404 3369     		ldr	r3, [r6, #16]
 2915 0406 0134     		adds	r4, r4, #1
 2916 0408 D3F85C32 		ldr	r3, [r3, #604]
 2917 040c 0898     		ldr	r0, [sp, #32]
 2918 040e 1942     		tst	r1, r3
 2919 0410 0CBF     		ite	eq
 2920 0412 0023     		moveq	r3, #0
 2921 0414 0123     		movne	r3, #1
 2922 0416 7149     		ldr	r1, .L525+40
 2923 0418 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2924 041c BC42     		cmp	r4, r7
 2925 041e EED1     		bne	.L518
 2926              	.L464:
 2927 0420 0898     		ldr	r0, [sp, #32]
 2928 0422 5D21     		movs	r1, #93
 2929 0424 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 2930 0428 F369     		ldr	r3, [r6, #28]
 2931 042a 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 2932 042c 002B     		cmp	r3, #0
 2933 042e 6BD1     		bne	.L519
 2934 0430 059B     		ldr	r3, [sp, #20]
 2935 0432 022B     		cmp	r3, #2
 2936 0434 7ED0     		beq	.L520
 2937              	.L467:
 2938 0436 059A     		ldr	r2, [sp, #20]
 2939 0438 032A     		cmp	r2, #3
 2940 043a 00F0E780 		beq	.L521
 2941 043e 3368     		ldr	r3, [r6]
 2942 0440 D3F8B026 		ldr	r2, [r3, #1712]
 2943 0444 059B     		ldr	r3, [sp, #20]
 2944 0446 012B     		cmp	r3, #1
 2945 0448 38D8     		bhi	.L476
 2946              	.L474:
 2947 044a 6549     		ldr	r1, .L525+44
 2948 044c 0898     		ldr	r0, [sp, #32]
 2949 044e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2950 0452 3368     		ldr	r3, [r6]
 2951 0454 0022     		movs	r2, #0
 2952 0456 D3F8AC16 		ldr	r1, [r3, #1708]
 2953 045a 0898     		ldr	r0, [sp, #32]
 2954 045c C3F8AC26 		str	r2, [r3, #1708]
 2955 0460 0122     		movs	r2, #1
 2956 0462 FFF7FEFF 		bl	_ZN12OutputBuffer11EncodeReplyEPS_b
 2957              	.L475:
 2958 0466 0898     		ldr	r0, [sp, #32]
 2959 0468 5E49     		ldr	r1, .L525+48
 2960 046a FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2961 046e 0898     		ldr	r0, [sp, #32]
 2962              	.L508:
 2963 0470 15B0     		add	sp, sp, #84
 2964              		@ sp needed
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 53


 2965 0472 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2966              	.L489:
 2967 0476 5B27     		movs	r7, #91
 2968 0478 EBE5     		b	.L419
 2969              	.L500:
 2970 047a 0D46     		mov	r5, r1
 2971              	.L470:
 2972 047c 0221     		movs	r1, #2
 2973 047e 7246     		mov	r2, lr
 2974 0480 3B46     		mov	r3, r7
 2975 0482 0091     		str	r1, [sp]
 2976 0484 0124     		movs	r4, #1
 2977 0486 5849     		ldr	r1, .L525+52
 2978 0488 0195     		str	r5, [sp, #4]
 2979 048a 4046     		mov	r0, r8
 2980 048c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 2981 0490 2922     		movs	r2, #41
 2982 0492 0023     		movs	r3, #0
 2983 0494 06F15B01 		add	r1, r6, #91
 2984 0498 0898     		ldr	r0, [sp, #32]
 2985 049a 0094     		str	r4, [sp]
 2986 049c FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 2987 04a0 5249     		ldr	r1, .L525+56
 2988 04a2 0898     		ldr	r0, [sp, #32]
 2989 04a4 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2990 04a8 1722     		movs	r2, #23
 2991 04aa 0023     		movs	r3, #0
 2992 04ac 0898     		ldr	r0, [sp, #32]
 2993 04ae 0094     		str	r4, [sp]
 2994 04b0 4F49     		ldr	r1, .L525+60
 2995 04b2 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 2996 04b6 3368     		ldr	r3, [r6]
 2997 04b8 D3F8B026 		ldr	r2, [r3, #1712]
 2998              	.L476:
 2999 04bc 079B     		ldr	r3, [sp, #28]
 3000 04be 591C     		adds	r1, r3, #1
 3001 04c0 D1D0     		beq	.L475
 3002 04c2 9A42     		cmp	r2, r3
 3003 04c4 C1D1     		bne	.L474
 3004 04c6 CEE7     		b	.L475
 3005              	.L493:
 3006 04c8 5B27     		movs	r7, #91
 3007 04ca 29E6     		b	.L429
 3008              	.L491:
 3009 04cc 5B27     		movs	r7, #91
 3010 04ce F4E5     		b	.L424
 3011              	.L495:
 3012 04d0 5B25     		movs	r5, #91
 3013 04d2 55E6     		b	.L434
 3014              	.L517:
 3015 04d4 2246     		mov	r2, r4
 3016 04d6 0898     		ldr	r0, [sp, #32]
 3017 04d8 4649     		ldr	r1, .L525+64
 3018 04da FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3019 04de 5BE7     		b	.L458
 3020              	.L456:
 3021 04e0 2246     		mov	r2, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 54


 3022 04e2 0898     		ldr	r0, [sp, #32]
 3023 04e4 4449     		ldr	r1, .L525+68
 3024 04e6 099B     		ldr	r3, [sp, #36]
 3025 04e8 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3026 04ec 54E7     		b	.L458
 3027              	.L509:
 3028 04ee 3046     		mov	r0, r6
 3029 04f0 FFF7FEFF 		bl	_ZNK6RepRap18GetStatusCharacterEv.part.18
 3030 04f4 5328     		cmp	r0, #83
 3031 04f6 08BF     		it	eq
 3032 04f8 4122     		moveq	r2, #65
 3033 04fa 3FF493AD 		beq	.L418
 3034 04fe 4828     		cmp	r0, #72
 3035 0500 14BF     		ite	ne
 3036 0502 0246     		movne	r2, r0
 3037 0504 5322     		moveq	r2, #83
 3038 0506 8DE5     		b	.L418
 3039              	.L519:
 3040 0508 3069     		ldr	r0, [r6, #16]
 3041 050a 089C     		ldr	r4, [sp, #32]
 3042 050c FFF7FEFF 		bl	_ZNK6GCodes21FractionOfFilePrintedEv
 3043 0510 0021     		movs	r1, #0
 3044 0512 0546     		mov	r5, r0
 3045 0514 FFF7FEFF 		bl	__aeabi_fcmplt
 3046 0518 0028     		cmp	r0, #0
 3047 051a 37D1     		bne	.L499
 3048 051c 2846     		mov	r0, r5
 3049 051e FFF7FEFF 		bl	__aeabi_f2d
 3050 0522 0246     		mov	r2, r0
 3051 0524 0B46     		mov	r3, r1
 3052              	.L466:
 3053 0526 2046     		mov	r0, r4
 3054 0528 3449     		ldr	r1, .L525+72
 3055 052a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3056 052e 059B     		ldr	r3, [sp, #20]
 3057 0530 022B     		cmp	r3, #2
 3058 0532 80D1     		bne	.L467
 3059              	.L520:
 3060 0534 F069     		ldr	r0, [r6, #28]
 3061 0536 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 3062 0538 1BB9     		cbnz	r3, .L522
 3063              	.L468:
 3064 053a 3368     		ldr	r3, [r6]
 3065 053c D3F8B026 		ldr	r2, [r3, #1712]
 3066 0540 BCE7     		b	.L476
 3067              	.L522:
 3068 0542 0121     		movs	r1, #1
 3069 0544 089F     		ldr	r7, [sp, #32]
 3070 0546 FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 3071 054a 0021     		movs	r1, #0
 3072 054c 0446     		mov	r4, r0
 3073 054e F069     		ldr	r0, [r6, #28]
 3074 0550 FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
 3075 0554 0599     		ldr	r1, [sp, #20]
 3076 0556 8246     		mov	r10, r0
 3077 0558 F069     		ldr	r0, [r6, #28]
 3078 055a FFF7FEFF 		bl	_ZNK12PrintMonitor16EstimateTimeLeftE21PrintEstimationMethod
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 55


 3079 055e 8046     		mov	r8, r0
 3080 0560 2046     		mov	r0, r4
 3081 0562 FFF7FEFF 		bl	__aeabi_f2d
 3082 0566 0446     		mov	r4, r0
 3083 0568 5046     		mov	r0, r10
 3084 056a 0D46     		mov	r5, r1
 3085 056c FFF7FEFF 		bl	__aeabi_f2d
 3086 0570 CDE90001 		strd	r0, [sp]
 3087 0574 4046     		mov	r0, r8
 3088 0576 FFF7FEFF 		bl	__aeabi_f2d
 3089 057a 2246     		mov	r2, r4
 3090 057c CDE90201 		strd	r0, [sp, #8]
 3091 0580 2B46     		mov	r3, r5
 3092 0582 3846     		mov	r0, r7
 3093 0584 1E49     		ldr	r1, .L525+76
 3094 0586 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3095 058a D6E7     		b	.L468
 3096              	.L499:
 3097 058c 0022     		movs	r2, #0
 3098 058e 0023     		movs	r3, #0
 3099 0590 C9E7     		b	.L466
 3100              	.L498:
 3101 0592 4246     		mov	r2, r8
 3102 0594 E5E6     		b	.L454
 3103              	.L440:
 3104 0596 0898     		ldr	r0, [sp, #32]
 3105 0598 1A49     		ldr	r1, .L525+80
 3106 059a FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3107 059e 002F     		cmp	r7, #0
 3108 05a0 7FF437AE 		bne	.L444
 3109 05a4 0AAA     		add	r2, sp, #40
 3110 05a6 0692     		str	r2, [sp, #24]
 3111 05a8 4BE6     		b	.L445
 3112              	.L497:
 3113 05aa 0122     		movs	r2, #1
 3114 05ac 0DE6     		b	.L439
 3115              	.L451:
 3116 05ae 0898     		ldr	r0, [sp, #32]
 3117 05b0 1549     		ldr	r1, .L525+84
 3118 05b2 C2E6     		b	.L483
 3119              	.L526:
 3120              		.align	2
 3121              	.L525:
 3122 05b4 00005940 		.word	1079574528
 3123 05b8 8C030000 		.word	.LC41
 3124 05bc D8020000 		.word	.LC27
 3125 05c0 50090000 		.word	.LC114
 3126 05c4 64090000 		.word	.LC115
 3127 05c8 84090000 		.word	.LC117
 3128 05cc 7C030000 		.word	.LC40
 3129 05d0 AC090000 		.word	.LC119
 3130 05d4 B4090000 		.word	.LC120
 3131 05d8 C4090000 		.word	.LC121
 3132 05dc 08030000 		.word	.LC30
 3133 05e0 0C0A0000 		.word	.LC124
 3134 05e4 5C030000 		.word	.LC38
 3135 05e8 200A0000 		.word	.LC125
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 56


 3136 05ec 600A0000 		.word	.LC126
 3137 05f0 B8000000 		.word	.LC5
 3138 05f4 9C090000 		.word	.LC118
 3139 05f8 70090000 		.word	.LC116
 3140 05fc D0090000 		.word	.LC122
 3141 0600 EC090000 		.word	.LC123
 3142 0604 2C090000 		.word	.LC112
 3143 0608 D4020000 		.word	.LC26
 3144              	.L521:
 3145 060c B068     		ldr	r0, [r6, #8]
 3146 060e DDF82080 		ldr	r8, [sp, #32]
 3147 0612 FFF7FEFF 		bl	_ZNK4Move17GetGeometryStringEv
 3148 0616 316A     		ldr	r1, [r6, #32]
 3149 0618 8646     		mov	lr, r0
 3150 061a 0029     		cmp	r1, #0
 3151 061c 3FF42DAF 		beq	.L500
 3152 0620 0024     		movs	r4, #0
 3153 0622 4868     		ldr	r0, [r1, #4]
 3154 0624 2546     		mov	r5, r4
 3155              	.L484:
 3156 0626 8442     		cmp	r4, r0
 3157 0628 09D0     		beq	.L471
 3158 062a 0B46     		mov	r3, r1
 3159 062c 02E0     		b	.L472
 3160              	.L473:
 3161 062e 5A68     		ldr	r2, [r3, #4]
 3162 0630 9442     		cmp	r4, r2
 3163 0632 04D0     		beq	.L471
 3164              	.L472:
 3165 0634 D3F8B430 		ldr	r3, [r3, #180]
 3166 0638 002B     		cmp	r3, #0
 3167 063a F8D1     		bne	.L473
 3168 063c 1EE7     		b	.L470
 3169              	.L471:
 3170 063e 0135     		adds	r5, r5, #1
 3171 0640 2C46     		mov	r4, r5
 3172 0642 F0E7     		b	.L484
 3173              	.L448:
 3174 0644 0898     		ldr	r0, [sp, #32]
 3175 0646 1049     		ldr	r1, .L527
 3176 0648 1EE6     		b	.L482
 3177              	.L420:
 3178 064a 5B2F     		cmp	r7, #91
 3179 064c 0898     		ldr	r0, [sp, #32]
 3180 064e 7FF41BAD 		bne	.L478
 3181 0652 0D49     		ldr	r1, .L527
 3182 0654 19E5     		b	.L423
 3183              	.L435:
 3184 0656 5B2D     		cmp	r5, #91
 3185 0658 0898     		ldr	r0, [sp, #32]
 3186 065a 7FF4A8AD 		bne	.L481
 3187 065e 0A49     		ldr	r1, .L527
 3188 0660 A6E5     		b	.L438
 3189              	.L430:
 3190 0662 5B2F     		cmp	r7, #91
 3191 0664 0898     		ldr	r0, [sp, #32]
 3192 0666 7FF476AD 		bne	.L480
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 57


 3193 066a 0749     		ldr	r1, .L527
 3194 066c 74E5     		b	.L433
 3195              	.L425:
 3196 066e 5B2F     		cmp	r7, #91
 3197 0670 0898     		ldr	r0, [sp, #32]
 3198 0672 7FF43DAD 		bne	.L479
 3199 0676 0449     		ldr	r1, .L527
 3200 0678 3BE5     		b	.L428
 3201              	.L441:
 3202 067a 0898     		ldr	r0, [sp, #32]
 3203 067c 0349     		ldr	r1, .L527+4
 3204 067e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3205 0682 0AAB     		add	r3, sp, #40
 3206 0684 0693     		str	r3, [sp, #24]
 3207 0686 DCE5     		b	.L445
 3208              	.L528:
 3209              		.align	2
 3210              	.L527:
 3211 0688 D4020000 		.word	.LC26
 3212 068c 2C090000 		.word	.LC112
 3213              		.size	_ZN6RepRap23GetLegacyStatusResponseEhi, .-_ZN6RepRap23GetLegacyStatusResponseEhi
 3214              		.section	.text._ZN6RepRap17CopyParameterTextEPKcPcj,"ax",%progbits
 3215              		.align	2
 3216              		.global	_ZN6RepRap17CopyParameterTextEPKcPcj
 3217              		.thumb
 3218              		.thumb_func
 3219              		.type	_ZN6RepRap17CopyParameterTextEPKcPcj, %function
 3220              	_ZN6RepRap17CopyParameterTextEPKcPcj:
 3221              		@ args = 0, pretend = 0, frame = 0
 3222              		@ frame_needed = 0, uses_anonymous_args = 0
 3223              		@ link register save eliminated.
 3224 0000 012A     		cmp	r2, #1
 3225 0002 70B4     		push	{r4, r5, r6}
 3226 0004 1DD9     		bls	.L532
 3227 0006 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 3228 0008 1F2B     		cmp	r3, #31
 3229 000a 1AD9     		bls	.L532
 3230 000c 0124     		movs	r4, #1
 3231 000e 0026     		movs	r6, #0
 3232 0010 05E0     		b	.L536
 3233              	.L533:
 3234 0012 10F8013F 		ldrb	r3, [r0, #1]!	@ zero_extendqisi2
 3235 0016 2646     		mov	r6, r4
 3236 0018 1F2B     		cmp	r3, #31
 3237 001a 04D9     		bls	.L535
 3238 001c 2C46     		mov	r4, r5
 3239              	.L536:
 3240 001e 651C     		adds	r5, r4, #1
 3241 0020 9542     		cmp	r5, r2
 3242 0022 8B55     		strb	r3, [r1, r6]
 3243 0024 F5D1     		bne	.L533
 3244              	.L535:
 3245 0026 631E     		subs	r3, r4, #1
 3246 0028 CA5C     		ldrb	r2, [r1, r3]	@ zero_extendqisi2
 3247 002a 202A     		cmp	r2, #32
 3248 002c 18BF     		it	ne
 3249 002e 2346     		movne	r3, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 58


 3250 0030 04D0     		beq	.L537
 3251 0032 07E0     		b	.L531
 3252              	.L538:
 3253 0034 885C     		ldrb	r0, [r1, r2]	@ zero_extendqisi2
 3254 0036 2028     		cmp	r0, #32
 3255 0038 04D1     		bne	.L531
 3256 003a 1346     		mov	r3, r2
 3257              	.L537:
 3258 003c 5A1E     		subs	r2, r3, #1
 3259 003e 002B     		cmp	r3, #0
 3260 0040 F8D1     		bne	.L538
 3261              	.L532:
 3262 0042 0023     		movs	r3, #0
 3263              	.L531:
 3264 0044 0022     		movs	r2, #0
 3265 0046 CA54     		strb	r2, [r1, r3]
 3266 0048 70BC     		pop	{r4, r5, r6}
 3267 004a 7047     		bx	lr
 3268              		.size	_ZN6RepRap17CopyParameterTextEPKcPcj, .-_ZN6RepRap17CopyParameterTextEPKcPcj
 3269              		.section	.text._ZN6RepRap16GetFilesResponseEPKcb,"ax",%progbits
 3270              		.align	2
 3271              		.global	_ZN6RepRap16GetFilesResponseEPKcb
 3272              		.thumb
 3273              		.thumb_func
 3274              		.type	_ZN6RepRap16GetFilesResponseEPKcb, %function
 3275              	_ZN6RepRap16GetFilesResponseEPKcb:
 3276              		@ args = 0, pretend = 0, frame = 216
 3277              		@ frame_needed = 0, uses_anonymous_args = 0
 3278 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 3279 0004 B9B0     		sub	sp, sp, #228
 3280 0006 0746     		mov	r7, r0
 3281 0008 02A8     		add	r0, sp, #8
 3282 000a 0C46     		mov	r4, r1
 3283 000c 9046     		mov	r8, r2
 3284 000e FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 3285 0012 F8B1     		cbz	r0, .L542
 3286 0014 3749     		ldr	r1, .L562
 3287 0016 0298     		ldr	r0, [sp, #8]
 3288 0018 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 3289 001c 2046     		mov	r0, r4
 3290 001e FFF7FEFF 		bl	strlen
 3291 0022 0126     		movs	r6, #1
 3292 0024 0246     		mov	r2, r0
 3293 0026 0023     		movs	r3, #0
 3294 0028 2146     		mov	r1, r4
 3295 002a 0298     		ldr	r0, [sp, #8]
 3296 002c 0096     		str	r6, [sp]
 3297 002e FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 3298 0032 3149     		ldr	r1, .L562+4
 3299 0034 0298     		ldr	r0, [sp, #8]
 3300 0036 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3301 003a 3B68     		ldr	r3, [r7]
 3302 003c 2146     		mov	r1, r4
 3303 003e D3F8B406 		ldr	r0, [r3, #1716]
 3304 0042 FFF7FEFF 		bl	_ZN11MassStorage17CheckDriveMountedEPKc
 3305 0046 40B9     		cbnz	r0, .L560
 3306 0048 3246     		mov	r2, r6
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 59


 3307              	.L543:
 3308 004a 0298     		ldr	r0, [sp, #8]
 3309 004c 2B49     		ldr	r1, .L562+8
 3310 004e FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3311 0052 0298     		ldr	r0, [sp, #8]
 3312              	.L542:
 3313 0054 39B0     		add	sp, sp, #228
 3314              		@ sp needed
 3315 0056 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 3316              	.L560:
 3317 005a 3B68     		ldr	r3, [r7]
 3318 005c 2146     		mov	r1, r4
 3319 005e D3F8B406 		ldr	r0, [r3, #1716]
 3320 0062 1CAA     		add	r2, sp, #112
 3321 0064 FFF7FEFF 		bl	_ZN11MassStorage9FindFirstEPKcR8FileInfo
 3322 0068 0546     		mov	r5, r0
 3323 006a 0298     		ldr	r0, [sp, #8]
 3324 006c FFF7FEFF 		bl	_ZN12OutputBuffer12GetBytesLeftEPKS_
 3325 0070 2A23     		movs	r3, #42
 3326 0072 0446     		mov	r4, r0
 3327 0074 8DF80C30 		strb	r3, [sp, #12]
 3328 0078 B146     		mov	r9, r6
 3329 007a 8DB9     		cbnz	r5, .L549
 3330 007c 37E0     		b	.L547
 3331              	.L548:
 3332 007e 0298     		ldr	r0, [sp, #8]
 3333 0080 CDF80090 		str	r9, [sp]
 3334 0084 2946     		mov	r1, r5
 3335 0086 6422     		movs	r2, #100
 3336 0088 0023     		movs	r3, #0
 3337 008a FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 3338 008e 0026     		movs	r6, #0
 3339 0090 241A     		subs	r4, r4, r0
 3340              	.L545:
 3341 0092 3B68     		ldr	r3, [r7]
 3342 0094 1CA9     		add	r1, sp, #112
 3343 0096 D3F8B406 		ldr	r0, [r3, #1716]
 3344 009a FFF7FEFF 		bl	_ZN11MassStorage8FindNextER8FileInfo
 3345 009e 30B3     		cbz	r0, .L547
 3346              	.L549:
 3347 00a0 9DF87130 		ldrb	r3, [sp, #113]	@ zero_extendqisi2
 3348 00a4 2E2B     		cmp	r3, #46
 3349 00a6 F4D0     		beq	.L545
 3350 00a8 B8F1000F 		cmp	r8, #0
 3351 00ac 02D0     		beq	.L553
 3352 00ae 9DF87030 		ldrb	r3, [sp, #112]	@ zero_extendqisi2
 3353 00b2 83B9     		cbnz	r3, .L561
 3354              	.L553:
 3355 00b4 0DF17105 		add	r5, sp, #113
 3356              	.L546:
 3357 00b8 2846     		mov	r0, r5
 3358 00ba FFF7FEFF 		bl	strlen
 3359 00be 0230     		adds	r0, r0, #2
 3360 00c0 B4EB400F 		cmp	r4, r0, lsl #1
 3361 00c4 13D3     		bcc	.L547
 3362 00c6 002E     		cmp	r6, #0
 3363 00c8 D9D1     		bne	.L548
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 60


 3364 00ca 0298     		ldr	r0, [sp, #8]
 3365 00cc 2C21     		movs	r1, #44
 3366 00ce FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 3367 00d2 241A     		subs	r4, r4, r0
 3368 00d4 D3E7     		b	.L548
 3369              	.L561:
 3370 00d6 0DF10D00 		add	r0, sp, #13
 3371 00da 0DF17101 		add	r1, sp, #113
 3372 00de 6322     		movs	r2, #99
 3373 00e0 FFF7FEFF 		bl	strncpy
 3374 00e4 0023     		movs	r3, #0
 3375 00e6 8DF86F30 		strb	r3, [sp, #111]
 3376 00ea 03AD     		add	r5, sp, #12
 3377 00ec E4E7     		b	.L546
 3378              	.L547:
 3379 00ee 0022     		movs	r2, #0
 3380 00f0 ABE7     		b	.L543
 3381              	.L563:
 3382 00f2 00BF     		.align	2
 3383              	.L562:
 3384 00f4 740A0000 		.word	.LC127
 3385 00f8 7C0A0000 		.word	.LC128
 3386 00fc 880A0000 		.word	.LC129
 3387              		.size	_ZN6RepRap16GetFilesResponseEPKcb, .-_ZN6RepRap16GetFilesResponseEPKcb
 3388              		.section	.text._ZN6RepRap19GetFilelistResponseEPKc,"ax",%progbits
 3389              		.align	2
 3390              		.global	_ZN6RepRap19GetFilelistResponseEPKc
 3391              		.thumb
 3392              		.thumb_func
 3393              		.type	_ZN6RepRap19GetFilelistResponseEPKc, %function
 3394              	_ZN6RepRap19GetFilelistResponseEPKc:
 3395              		@ args = 0, pretend = 0, frame = 120
 3396              		@ frame_needed = 0, uses_anonymous_args = 0
 3397 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 3398 0002 A3B0     		sub	sp, sp, #140
 3399 0004 0646     		mov	r6, r0
 3400 0006 05A8     		add	r0, sp, #20
 3401 0008 0C46     		mov	r4, r1
 3402 000a FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 3403 000e 0028     		cmp	r0, #0
 3404 0010 00F08880 		beq	.L565
 3405 0014 3368     		ldr	r3, [r6]
 3406 0016 2146     		mov	r1, r4
 3407 0018 D3F8B406 		ldr	r0, [r3, #1716]
 3408 001c FFF7FEFF 		bl	_ZN11MassStorage17CheckDriveMountedEPKc
 3409 0020 0028     		cmp	r0, #0
 3410 0022 00F08180 		beq	.L583
 3411 0026 3368     		ldr	r3, [r6]
 3412 0028 2146     		mov	r1, r4
 3413 002a D3F8B406 		ldr	r0, [r3, #1716]
 3414 002e FFF7FEFF 		bl	_ZNK11MassStorage15DirectoryExistsEPKc
 3415 0032 0028     		cmp	r0, #0
 3416 0034 71D0     		beq	.L584
 3417 0036 4649     		ldr	r1, .L587
 3418 0038 0598     		ldr	r0, [sp, #20]
 3419 003a FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 3420 003e 2046     		mov	r0, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 61


 3421 0040 FFF7FEFF 		bl	strlen
 3422 0044 0125     		movs	r5, #1
 3423 0046 0246     		mov	r2, r0
 3424 0048 2146     		mov	r1, r4
 3425 004a 0023     		movs	r3, #0
 3426 004c 0598     		ldr	r0, [sp, #20]
 3427 004e 0095     		str	r5, [sp]
 3428 0050 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 3429 0054 3F49     		ldr	r1, .L587+4
 3430 0056 0598     		ldr	r0, [sp, #20]
 3431 0058 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3432 005c 3368     		ldr	r3, [r6]
 3433 005e 2146     		mov	r1, r4
 3434 0060 D3F8B406 		ldr	r0, [r3, #1716]
 3435 0064 06AA     		add	r2, sp, #24
 3436 0066 FFF7FEFF 		bl	_ZN11MassStorage9FindFirstEPKcR8FileInfo
 3437 006a 0746     		mov	r7, r0
 3438 006c 0598     		ldr	r0, [sp, #20]
 3439 006e FFF7FEFF 		bl	_ZN12OutputBuffer12GetBytesLeftEPKS_
 3440 0072 0446     		mov	r4, r0
 3441 0074 6FB9     		cbnz	r7, .L574
 3442 0076 64E0     		b	.L570
 3443              	.L586:
 3444 0078 0598     		ldr	r0, [sp, #20]
 3445 007a FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 3446 007e 0025     		movs	r5, #0
 3447 0080 241A     		subs	r4, r4, r0
 3448              	.L569:
 3449 0082 3368     		ldr	r3, [r6]
 3450 0084 06A9     		add	r1, sp, #24
 3451 0086 D3F8B406 		ldr	r0, [r3, #1716]
 3452 008a FFF7FEFF 		bl	_ZN11MassStorage8FindNextER8FileInfo
 3453 008e 0028     		cmp	r0, #0
 3454 0090 57D0     		beq	.L570
 3455              	.L574:
 3456 0092 9DF81930 		ldrb	r3, [sp, #25]	@ zero_extendqisi2
 3457 0096 0DF11900 		add	r0, sp, #25
 3458 009a 2E2B     		cmp	r3, #46
 3459 009c F1D0     		beq	.L569
 3460 009e FFF7FEFF 		bl	strlen
 3461 00a2 4630     		adds	r0, r0, #70
 3462 00a4 A042     		cmp	r0, r4
 3463 00a6 4CD8     		bhi	.L570
 3464 00a8 002D     		cmp	r5, #0
 3465 00aa 44D0     		beq	.L585
 3466              	.L571:
 3467 00ac 9DF81830 		ldrb	r3, [sp, #24]	@ zero_extendqisi2
 3468 00b0 2949     		ldr	r1, .L587+8
 3469 00b2 002B     		cmp	r3, #0
 3470 00b4 0CBF     		ite	eq
 3471 00b6 6622     		moveq	r2, #102
 3472 00b8 6422     		movne	r2, #100
 3473 00ba 0598     		ldr	r0, [sp, #20]
 3474 00bc FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3475 00c0 059B     		ldr	r3, [sp, #20]
 3476 00c2 0122     		movs	r2, #1
 3477 00c4 241A     		subs	r4, r4, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 62


 3478 00c6 0DF11901 		add	r1, sp, #25
 3479 00ca 1846     		mov	r0, r3
 3480 00cc 0092     		str	r2, [sp]
 3481 00ce 0023     		movs	r3, #0
 3482 00d0 6422     		movs	r2, #100
 3483 00d2 FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 3484 00d6 2149     		ldr	r1, .L587+12
 3485 00d8 209A     		ldr	r2, [sp, #128]
 3486 00da 241A     		subs	r4, r4, r0
 3487 00dc 0598     		ldr	r0, [sp, #20]
 3488 00de FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3489 00e2 241A     		subs	r4, r4, r0
 3490 00e4 21A8     		add	r0, sp, #132
 3491 00e6 FFF7FEFF 		bl	gmtime
 3492 00ea 4369     		ldr	r3, [r0, #20]
 3493 00ec 7D21     		movs	r1, #125
 3494 00ee 502B     		cmp	r3, #80
 3495 00f0 03F26C72 		addw	r2, r3, #1900
 3496 00f4 C0DD     		ble	.L586
 3497 00f6 C168     		ldr	r1, [r0, #12]
 3498 00f8 0369     		ldr	r3, [r0, #16]
 3499 00fa 0091     		str	r1, [sp]
 3500 00fc 8168     		ldr	r1, [r0, #8]
 3501 00fe 059D     		ldr	r5, [sp, #20]
 3502 0100 0191     		str	r1, [sp, #4]
 3503 0102 4168     		ldr	r1, [r0, #4]
 3504 0104 0133     		adds	r3, r3, #1
 3505 0106 0291     		str	r1, [sp, #8]
 3506 0108 0168     		ldr	r1, [r0]
 3507 010a 2846     		mov	r0, r5
 3508 010c 0391     		str	r1, [sp, #12]
 3509 010e 1449     		ldr	r1, .L587+16
 3510 0110 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 3511 0114 0025     		movs	r5, #0
 3512 0116 241A     		subs	r4, r4, r0
 3513 0118 B3E7     		b	.L569
 3514              	.L584:
 3515 011a 0598     		ldr	r0, [sp, #20]
 3516 011c 1149     		ldr	r1, .L587+20
 3517 011e FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 3518 0122 0598     		ldr	r0, [sp, #20]
 3519              	.L565:
 3520 0124 23B0     		add	sp, sp, #140
 3521              		@ sp needed
 3522 0126 F0BD     		pop	{r4, r5, r6, r7, pc}
 3523              	.L583:
 3524 0128 0598     		ldr	r0, [sp, #20]
 3525 012a 0F49     		ldr	r1, .L587+24
 3526 012c FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 3527 0130 0598     		ldr	r0, [sp, #20]
 3528 0132 23B0     		add	sp, sp, #140
 3529              		@ sp needed
 3530 0134 F0BD     		pop	{r4, r5, r6, r7, pc}
 3531              	.L585:
 3532 0136 0598     		ldr	r0, [sp, #20]
 3533 0138 2C21     		movs	r1, #44
 3534 013a FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 63


 3535 013e 241A     		subs	r4, r4, r0
 3536 0140 B4E7     		b	.L571
 3537              	.L570:
 3538 0142 0598     		ldr	r0, [sp, #20]
 3539 0144 0949     		ldr	r1, .L587+28
 3540 0146 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 3541 014a 0598     		ldr	r0, [sp, #20]
 3542 014c 23B0     		add	sp, sp, #140
 3543              		@ sp needed
 3544 014e F0BD     		pop	{r4, r5, r6, r7, pc}
 3545              	.L588:
 3546              		.align	2
 3547              	.L587:
 3548 0150 740A0000 		.word	.LC127
 3549 0154 7C0A0000 		.word	.LC128
 3550 0158 AC0A0000 		.word	.LC132
 3551 015c C40A0000 		.word	.LC133
 3552 0160 D00A0000 		.word	.LC134
 3553 0164 A00A0000 		.word	.LC131
 3554 0168 940A0000 		.word	.LC130
 3555 016c E4080000 		.word	.LC106
 3556              		.size	_ZN6RepRap19GetFilelistResponseEPKc, .-_ZN6RepRap19GetFilelistResponseEPKc
 3557              		.section	.text._ZN6RepRap4BeepEii,"ax",%progbits
 3558              		.align	2
 3559              		.global	_ZN6RepRap4BeepEii
 3560              		.thumb
 3561              		.thumb_func
 3562              		.type	_ZN6RepRap4BeepEii, %function
 3563              	_ZN6RepRap4BeepEii:
 3564              		@ args = 0, pretend = 0, frame = 0
 3565              		@ frame_needed = 0, uses_anonymous_args = 0
 3566              		@ link register save eliminated.
 3567 0000 0368     		ldr	r3, [r0]
 3568 0002 10B4     		push	{r4}
 3569 0004 93F8A846 		ldrb	r4, [r3, #1704]	@ zero_extendqisi2
 3570 0008 C0F88410 		str	r1, [r0, #132]
 3571 000c C0F88820 		str	r2, [r0, #136]
 3572 0010 14B9     		cbnz	r4, .L591
 3573 0012 5DF8044B 		ldr	r4, [sp], #4
 3574 0016 7047     		bx	lr
 3575              	.L591:
 3576 0018 1846     		mov	r0, r3
 3577 001a 5DF8044B 		ldr	r4, [sp], #4
 3578 001e FFF7FEBF 		b	_ZN8Platform4BeepEii
 3579              		.size	_ZN6RepRap4BeepEii, .-_ZN6RepRap4BeepEii
 3580 0022 00BF     		.section	.text._ZN6RepRap10SetMessageEPKc,"ax",%progbits
 3581              		.align	2
 3582              		.global	_ZN6RepRap10SetMessageEPKc
 3583              		.thumb
 3584              		.thumb_func
 3585              		.type	_ZN6RepRap10SetMessageEPKc, %function
 3586              	_ZN6RepRap10SetMessageEPKc:
 3587              		@ args = 0, pretend = 0, frame = 0
 3588              		@ frame_needed = 0, uses_anonymous_args = 0
 3589 0000 38B5     		push	{r3, r4, r5, lr}
 3590 0002 4FF48072 		mov	r2, #256
 3591 0006 0446     		mov	r4, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 64


 3592 0008 8C30     		adds	r0, r0, #140
 3593 000a 0D46     		mov	r5, r1
 3594 000c FFF7FEFF 		bl	strncpy
 3595 0010 0023     		movs	r3, #0
 3596 0012 2068     		ldr	r0, [r4]
 3597 0014 84F88C31 		strb	r3, [r4, #396]
 3598 0018 90F8A836 		ldrb	r3, [r0, #1704]	@ zero_extendqisi2
 3599 001c 03B9     		cbnz	r3, .L594
 3600 001e 38BD     		pop	{r3, r4, r5, pc}
 3601              	.L594:
 3602 0020 2946     		mov	r1, r5
 3603 0022 BDE83840 		pop	{r3, r4, r5, lr}
 3604 0026 FFF7FEBF 		b	_ZN8Platform14SendAuxMessageEPKc
 3605              		.size	_ZN6RepRap10SetMessageEPKc, .-_ZN6RepRap10SetMessageEPKc
 3606 002a 00BF     		.section	.text._ZNK6RepRap18GetStatusCharacterEv,"ax",%progbits
 3607              		.align	2
 3608              		.global	_ZNK6RepRap18GetStatusCharacterEv
 3609              		.thumb
 3610              		.thumb_func
 3611              		.type	_ZNK6RepRap18GetStatusCharacterEv, %function
 3612              	_ZNK6RepRap18GetStatusCharacterEv:
 3613              		@ args = 0, pretend = 0, frame = 0
 3614              		@ frame_needed = 0, uses_anonymous_args = 0
 3615              		@ link register save eliminated.
 3616 0000 90F84530 		ldrb	r3, [r0, #69]	@ zero_extendqisi2
 3617 0004 0BB1     		cbz	r3, .L597
 3618 0006 4320     		movs	r0, #67
 3619 0008 7047     		bx	lr
 3620              	.L597:
 3621 000a FFF7FEBF 		b	_ZNK6RepRap18GetStatusCharacterEv.part.18
 3622              		.size	_ZNK6RepRap18GetStatusCharacterEv, .-_ZNK6RepRap18GetStatusCharacterEv
 3623 000e 00BF     		.section	.text._ZNK6RepRap13NoPasswordSetEv,"ax",%progbits
 3624              		.align	2
 3625              		.global	_ZNK6RepRap13NoPasswordSetEv
 3626              		.thumb
 3627              		.thumb_func
 3628              		.type	_ZNK6RepRap13NoPasswordSetEv, %function
 3629              	_ZNK6RepRap13NoPasswordSetEv:
 3630              		@ args = 0, pretend = 0, frame = 0
 3631              		@ frame_needed = 0, uses_anonymous_args = 0
 3632              		@ link register save eliminated.
 3633 0000 90F84630 		ldrb	r3, [r0, #70]	@ zero_extendqisi2
 3634 0004 0BB9     		cbnz	r3, .L600
 3635 0006 0120     		movs	r0, #1
 3636 0008 7047     		bx	lr
 3637              	.L600:
 3638 000a 4630     		adds	r0, r0, #70
 3639 000c 0149     		ldr	r1, .L601
 3640 000e FFF7FEBF 		b	_Z12StringEqualsPKcS0_
 3641              	.L602:
 3642 0012 00BF     		.align	2
 3643              	.L601:
 3644 0014 FC0A0000 		.word	.LC135
 3645              		.size	_ZNK6RepRap13NoPasswordSetEv, .-_ZNK6RepRap13NoPasswordSetEv
 3646              		.section	.text._ZNK6RepRap13CheckPasswordEPKc,"ax",%progbits
 3647              		.align	2
 3648              		.global	_ZNK6RepRap13CheckPasswordEPKc
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 65


 3649              		.thumb
 3650              		.thumb_func
 3651              		.type	_ZNK6RepRap13CheckPasswordEPKc, %function
 3652              	_ZNK6RepRap13CheckPasswordEPKc:
 3653              		@ args = 0, pretend = 0, frame = 0
 3654              		@ frame_needed = 0, uses_anonymous_args = 0
 3655              		@ link register save eliminated.
 3656 0000 00F14603 		add	r3, r0, #70
 3657 0004 0846     		mov	r0, r1
 3658 0006 1946     		mov	r1, r3
 3659 0008 FFF7FEBF 		b	_Z12StringEqualsPKcS0_
 3660              		.size	_ZNK6RepRap13CheckPasswordEPKc, .-_ZNK6RepRap13CheckPasswordEPKc
 3661              		.section	.text._ZN6RepRap11SetPasswordEPKc,"ax",%progbits
 3662              		.align	2
 3663              		.global	_ZN6RepRap11SetPasswordEPKc
 3664              		.thumb
 3665              		.thumb_func
 3666              		.type	_ZN6RepRap11SetPasswordEPKc, %function
 3667              	_ZN6RepRap11SetPasswordEPKc:
 3668              		@ args = 0, pretend = 0, frame = 0
 3669              		@ frame_needed = 0, uses_anonymous_args = 0
 3670              		@ link register save eliminated.
 3671 0000 00F14603 		add	r3, r0, #70
 3672 0004 1522     		movs	r2, #21
 3673 0006 0846     		mov	r0, r1
 3674 0008 1946     		mov	r1, r3
 3675 000a FFF7FEBF 		b	_ZN6RepRap17CopyParameterTextEPKcPcj
 3676              		.size	_ZN6RepRap11SetPasswordEPKc, .-_ZN6RepRap11SetPasswordEPKc
 3677 000e 00BF     		.section	.text._ZNK6RepRap7GetNameEv,"ax",%progbits
 3678              		.align	2
 3679              		.global	_ZNK6RepRap7GetNameEv
 3680              		.thumb
 3681              		.thumb_func
 3682              		.type	_ZNK6RepRap7GetNameEv, %function
 3683              	_ZNK6RepRap7GetNameEv:
 3684              		@ args = 0, pretend = 0, frame = 0
 3685              		@ frame_needed = 0, uses_anonymous_args = 0
 3686              		@ link register save eliminated.
 3687 0000 5B30     		adds	r0, r0, #91
 3688 0002 7047     		bx	lr
 3689              		.size	_ZNK6RepRap7GetNameEv, .-_ZNK6RepRap7GetNameEv
 3690              		.section	.text._ZN6RepRap7SetNameEPKc,"ax",%progbits
 3691              		.align	2
 3692              		.global	_ZN6RepRap7SetNameEPKc
 3693              		.thumb
 3694              		.thumb_func
 3695              		.type	_ZN6RepRap7SetNameEPKc, %function
 3696              	_ZN6RepRap7SetNameEPKc:
 3697              		@ args = 0, pretend = 0, frame = 0
 3698              		@ frame_needed = 0, uses_anonymous_args = 0
 3699 0000 38B5     		push	{r3, r4, r5, lr}
 3700 0002 00F15B05 		add	r5, r0, #91
 3701 0006 0446     		mov	r4, r0
 3702 0008 2922     		movs	r2, #41
 3703 000a 0846     		mov	r0, r1
 3704 000c 2946     		mov	r1, r5
 3705 000e FFF7FEFF 		bl	_ZN6RepRap17CopyParameterTextEPKcPcj
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 66


 3706 0012 2946     		mov	r1, r5
 3707 0014 6068     		ldr	r0, [r4, #4]
 3708 0016 BDE83840 		pop	{r3, r4, r5, lr}
 3709 001a FFF7FEBF 		b	_ZN7Network11SetHostnameEPKc
 3710              		.size	_ZN6RepRap7SetNameEPKc, .-_ZN6RepRap7SetNameEPKc
 3711 001e 00BF     		.section	.text._ZN6RepRapC2Ev,"ax",%progbits
 3712              		.align	2
 3713              		.global	_ZN6RepRapC2Ev
 3714              		.thumb
 3715              		.thumb_func
 3716              		.type	_ZN6RepRapC2Ev, %function
 3717              	_ZN6RepRapC2Ev:
 3718              		@ args = 0, pretend = 0, frame = 0
 3719              		@ frame_needed = 0, uses_anonymous_args = 0
 3720 0000 70B5     		push	{r4, r5, r6, lr}
 3721 0002 0123     		movs	r3, #1
 3722 0004 0025     		movs	r5, #0
 3723 0006 0F22     		movs	r2, #15
 3724 0008 80F84530 		strb	r3, [r0, #69]
 3725 000c 80F83220 		strb	r2, [r0, #50]
 3726 0010 0562     		str	r5, [r0, #32]
 3727 0012 4562     		str	r5, [r0, #36]
 3728 0014 8562     		str	r5, [r0, #40]
 3729 0016 8585     		strh	r5, [r0, #44]	@ movhi
 3730 0018 C585     		strh	r5, [r0, #46]	@ movhi
 3731 001a 0586     		strh	r5, [r0, #48]	@ movhi
 3732 001c A0F84050 		strh	r5, [r0, #64]	@ movhi
 3733 0020 80F84250 		strb	r5, [r0, #66]
 3734 0024 80F84350 		strb	r5, [r0, #67]
 3735 0028 80F84450 		strb	r5, [r0, #68]
 3736 002c C0F88450 		str	r5, [r0, #132]
 3737 0030 C0F88850 		str	r5, [r0, #136]
 3738 0034 0446     		mov	r4, r0
 3739 0036 FFF7FEFF 		bl	_ZN12OutputBuffer4InitEv
 3740 003a 40F27C70 		movw	r0, #1916
 3741 003e FFF7FEFF 		bl	_Znwj
 3742 0042 0646     		mov	r6, r0
 3743 0044 FFF7FEFF 		bl	_ZN8PlatformC1Ev
 3744 0048 2660     		str	r6, [r4]
 3745 004a 3820     		movs	r0, #56
 3746 004c FFF7FEFF 		bl	_Znwj
 3747 0050 2168     		ldr	r1, [r4]
 3748 0052 0646     		mov	r6, r0
 3749 0054 FFF7FEFF 		bl	_ZN7NetworkC1EP8Platform
 3750 0058 6660     		str	r6, [r4, #4]
 3751 005a 2420     		movs	r0, #36
 3752 005c FFF7FEFF 		bl	_Znwj
 3753 0060 94E80600 		ldmia	r4, {r1, r2}
 3754 0064 0646     		mov	r6, r0
 3755 0066 FFF7FEFF 		bl	_ZN9WebserverC1EP8PlatformP7Network
 3756 006a 6661     		str	r6, [r4, #20]
 3757 006c 4FF46170 		mov	r0, #900
 3758 0070 FFF7FEFF 		bl	_Znwj
 3759 0074 2168     		ldr	r1, [r4]
 3760 0076 6269     		ldr	r2, [r4, #20]
 3761 0078 0646     		mov	r6, r0
 3762 007a FFF7FEFF 		bl	_ZN6GCodesC1EP8PlatformP9Webserver
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 67


 3763 007e 2661     		str	r6, [r4, #16]
 3764 0080 4FF4C160 		mov	r0, #1544
 3765 0084 FFF7FEFF 		bl	_Znwj
 3766 0088 2269     		ldr	r2, [r4, #16]
 3767 008a 2168     		ldr	r1, [r4]
 3768 008c 0646     		mov	r6, r0
 3769 008e FFF7FEFF 		bl	_ZN4MoveC1EP8PlatformP6GCodes
 3770 0092 A660     		str	r6, [r4, #8]
 3771 0094 3020     		movs	r0, #48
 3772 0096 FFF7FEFF 		bl	_Znwj
 3773 009a 2168     		ldr	r1, [r4]
 3774 009c 0646     		mov	r6, r0
 3775 009e FFF7FEFF 		bl	_ZN4HeatC1EP8Platform
 3776 00a2 E660     		str	r6, [r4, #12]
 3777 00a4 4FF42870 		mov	r0, #672
 3778 00a8 FFF7FEFF 		bl	_Znwj
 3779 00ac 2168     		ldr	r1, [r4]
 3780 00ae 0646     		mov	r6, r0
 3781 00b0 2269     		ldr	r2, [r4, #16]
 3782 00b2 FFF7FEFF 		bl	_ZN12PrintMonitorC1EP8PlatformP6GCodes
 3783 00b6 04F14601 		add	r1, r4, #70
 3784 00ba 1522     		movs	r2, #21
 3785 00bc E661     		str	r6, [r4, #28]
 3786 00be 0548     		ldr	r0, .L608
 3787 00c0 FFF7FEFF 		bl	_ZN6RepRap17CopyParameterTextEPKcPcj
 3788 00c4 2046     		mov	r0, r4
 3789 00c6 0449     		ldr	r1, .L608+4
 3790 00c8 FFF7FEFF 		bl	_ZN6RepRap7SetNameEPKc
 3791 00cc 84F88C50 		strb	r5, [r4, #140]
 3792 00d0 2046     		mov	r0, r4
 3793 00d2 70BD     		pop	{r4, r5, r6, pc}
 3794              	.L609:
 3795              		.align	2
 3796              	.L608:
 3797 00d4 FC0A0000 		.word	.LC135
 3798 00d8 040B0000 		.word	.LC136
 3799              		.size	_ZN6RepRapC2Ev, .-_ZN6RepRapC2Ev
 3800              		.global	_ZN6RepRapC1Ev
 3801              		.thumb_set _ZN6RepRapC1Ev,_ZN6RepRapC2Ev
 3802              		.section	.text._ZN6RepRap30GetProhibitedExtruderMovementsEjj,"ax",%progbits
 3803              		.align	2
 3804              		.global	_ZN6RepRap30GetProhibitedExtruderMovementsEjj
 3805              		.thumb
 3806              		.thumb_func
 3807              		.type	_ZN6RepRap30GetProhibitedExtruderMovementsEjj, %function
 3808              	_ZN6RepRap30GetProhibitedExtruderMovementsEjj:
 3809              		@ args = 0, pretend = 0, frame = 0
 3810              		@ frame_needed = 0, uses_anonymous_args = 0
 3811 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3812 0004 C368     		ldr	r3, [r0, #12]
 3813 0006 0F46     		mov	r7, r1
 3814 0008 93F82950 		ldrb	r5, [r3, #41]	@ zero_extendqisi2
 3815 000c 9046     		mov	r8, r2
 3816 000e 002D     		cmp	r5, #0
 3817 0010 36D1     		bne	.L617
 3818 0012 D0F824A0 		ldr	r10, [r0, #36]
 3819 0016 BAF1000F 		cmp	r10, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 68


 3820 001a 34D0     		beq	.L612
 3821 001c DAF83830 		ldr	r3, [r10, #56]
 3822 0020 1846     		mov	r0, r3
 3823 0022 A3B3     		cbz	r3, .L627
 3824 0024 A946     		mov	r9, r5
 3825 0026 5646     		mov	r6, r10
 3826 0028 4FF0010B 		mov	fp, #1
 3827 002c 07E0     		b	.L616
 3828              	.L614:
 3829 002e 14EA080F 		tst	r4, r8
 3830 0032 1BD1     		bne	.L628
 3831              	.L615:
 3832 0034 0135     		adds	r5, r5, #1
 3833 0036 9D42     		cmp	r5, r3
 3834 0038 06F10406 		add	r6, r6, #4
 3835 003c 13D2     		bcs	.L629
 3836              	.L616:
 3837 003e B468     		ldr	r4, [r6, #8]
 3838 0040 0BFA04F4 		lsl	r4, fp, r4
 3839 0044 14EA0701 		ands	r1, r4, r7
 3840 0048 F1D0     		beq	.L614
 3841 004a 5046     		mov	r0, r10
 3842 004c 0121     		movs	r1, #1
 3843 004e FFF7FEFF 		bl	_ZN4Tool12ToolCanDriveEb
 3844 0052 08B9     		cbnz	r0, .L626
 3845 0054 49EA0409 		orr	r9, r9, r4
 3846              	.L626:
 3847 0058 DAF83830 		ldr	r3, [r10, #56]
 3848 005c 0135     		adds	r5, r5, #1
 3849 005e 9D42     		cmp	r5, r3
 3850 0060 06F10406 		add	r6, r6, #4
 3851 0064 EBD3     		bcc	.L616
 3852              	.L629:
 3853 0066 4846     		mov	r0, r9
 3854 0068 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3855              	.L628:
 3856 006c 5046     		mov	r0, r10
 3857 006e FFF7FEFF 		bl	_ZN4Tool12ToolCanDriveEb
 3858 0072 DAF83830 		ldr	r3, [r10, #56]
 3859 0076 0028     		cmp	r0, #0
 3860 0078 DCD1     		bne	.L615
 3861 007a 49EA0409 		orr	r9, r9, r4
 3862 007e D9E7     		b	.L615
 3863              	.L617:
 3864 0080 0020     		movs	r0, #0
 3865 0082 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3866              	.L612:
 3867 0086 41EA0200 		orr	r0, r1, r2
 3868 008a BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3869              	.L627:
 3870 008e BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3871              		.size	_ZN6RepRap30GetProhibitedExtruderMovementsEjj, .-_ZN6RepRap30GetProhibitedExtruderMovementsE
 3872 0092 00BF     		.section	.text._ZN6RepRap20FlagTemperatureFaultEa,"ax",%progbits
 3873              		.align	2
 3874              		.global	_ZN6RepRap20FlagTemperatureFaultEa
 3875              		.thumb
 3876              		.thumb_func
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 69


 3877              		.type	_ZN6RepRap20FlagTemperatureFaultEa, %function
 3878              	_ZN6RepRap20FlagTemperatureFaultEa:
 3879              		@ args = 0, pretend = 0, frame = 0
 3880              		@ frame_needed = 0, uses_anonymous_args = 0
 3881              		@ link register save eliminated.
 3882 0000 006A     		ldr	r0, [r0, #32]
 3883 0002 08B1     		cbz	r0, .L630
 3884 0004 FFF7FEBF 		b	_ZN4Tool20FlagTemperatureFaultEa
 3885              	.L630:
 3886 0008 7047     		bx	lr
 3887              		.size	_ZN6RepRap20FlagTemperatureFaultEa, .-_ZN6RepRap20FlagTemperatureFaultEa
 3888 000a 00BF     		.section	.text._ZN6RepRap21ClearTemperatureFaultEa,"ax",%progbits
 3889              		.align	2
 3890              		.global	_ZN6RepRap21ClearTemperatureFaultEa
 3891              		.thumb
 3892              		.thumb_func
 3893              		.type	_ZN6RepRap21ClearTemperatureFaultEa, %function
 3894              	_ZN6RepRap21ClearTemperatureFaultEa:
 3895              		@ args = 0, pretend = 0, frame = 0
 3896              		@ frame_needed = 0, uses_anonymous_args = 0
 3897 0000 38B5     		push	{r3, r4, r5, lr}
 3898 0002 074B     		ldr	r3, .L634
 3899 0004 0446     		mov	r4, r0
 3900 0006 D868     		ldr	r0, [r3, #12]
 3901 0008 0D46     		mov	r5, r1
 3902 000a FFF7FEFF 		bl	_ZN4Heat10ResetFaultEa
 3903 000e 206A     		ldr	r0, [r4, #32]
 3904 0010 20B1     		cbz	r0, .L632
 3905 0012 2946     		mov	r1, r5
 3906 0014 BDE83840 		pop	{r3, r4, r5, lr}
 3907 0018 FFF7FEBF 		b	_ZN4Tool21ClearTemperatureFaultEa
 3908              	.L632:
 3909 001c 38BD     		pop	{r3, r4, r5, pc}
 3910              	.L635:
 3911 001e 00BF     		.align	2
 3912              	.L634:
 3913 0020 00000000 		.word	reprap
 3914              		.size	_ZN6RepRap21ClearTemperatureFaultEa, .-_ZN6RepRap21ClearTemperatureFaultEa
 3915              		.section	.text._ZNK6RepRap15GetCurrentXAxesEv,"ax",%progbits
 3916              		.align	2
 3917              		.global	_ZNK6RepRap15GetCurrentXAxesEv
 3918              		.thumb
 3919              		.thumb_func
 3920              		.type	_ZNK6RepRap15GetCurrentXAxesEv, %function
 3921              	_ZNK6RepRap15GetCurrentXAxesEv:
 3922              		@ args = 0, pretend = 0, frame = 0
 3923              		@ frame_needed = 0, uses_anonymous_args = 0
 3924              		@ link register save eliminated.
 3925 0000 436A     		ldr	r3, [r0, #36]
 3926 0002 13B1     		cbz	r3, .L638
 3927 0004 D3F8AC00 		ldr	r0, [r3, #172]
 3928 0008 7047     		bx	lr
 3929              	.L638:
 3930 000a 0120     		movs	r0, #1
 3931 000c 7047     		bx	lr
 3932              		.size	_ZNK6RepRap15GetCurrentXAxesEv, .-_ZNK6RepRap15GetCurrentXAxesEv
 3933 000e 00BF     		.section	.text._ZN6RepRap8DoDivideEmm,"ax",%progbits
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 70


 3934              		.align	2
 3935              		.global	_ZN6RepRap8DoDivideEmm
 3936              		.thumb
 3937              		.thumb_func
 3938              		.type	_ZN6RepRap8DoDivideEmm, %function
 3939              	_ZN6RepRap8DoDivideEmm:
 3940              		@ args = 0, pretend = 0, frame = 0
 3941              		@ frame_needed = 0, uses_anonymous_args = 0
 3942              		@ link register save eliminated.
 3943 0000 B0FBF1F0 		udiv	r0, r0, r1
 3944 0004 7047     		bx	lr
 3945              		.size	_ZN6RepRap8DoDivideEmm, .-_ZN6RepRap8DoDivideEmm
 3946 0006 00BF     		.section	.text._ZN6RepRap9ReadDwordEPKc,"ax",%progbits
 3947              		.align	2
 3948              		.global	_ZN6RepRap9ReadDwordEPKc
 3949              		.thumb
 3950              		.thumb_func
 3951              		.type	_ZN6RepRap9ReadDwordEPKc, %function
 3952              	_ZN6RepRap9ReadDwordEPKc:
 3953              		@ args = 0, pretend = 0, frame = 0
 3954              		@ frame_needed = 0, uses_anonymous_args = 0
 3955              		@ link register save eliminated.
 3956 0000 0068     		ldr	r0, [r0]
 3957 0002 7047     		bx	lr
 3958              		.size	_ZN6RepRap9ReadDwordEPKc, .-_ZN6RepRap9ReadDwordEPKc
 3959              		.section	.rodata.str1.4,"aMS",%progbits,1
 3960              		.align	2
 3961              	.LC0:
 3962 0000 52657052 		.ascii	"RepRap class exited.\012\000"
 3962      61702063 
 3962      6C617373 
 3962      20657869 
 3962      7465642E 
 3963 0016 0000     		.space	2
 3964              	.LC1:
 3965 0018 5761726E 		.ascii	"Warning: Tool %d was not driven because its heater "
 3965      696E673A 
 3965      20546F6F 
 3965      6C202564 
 3965      20776173 
 3966 004b 74656D70 		.ascii	"temperatures were not high enough or it has a heate"
 3966      65726174 
 3966      75726573 
 3966      20776572 
 3966      65206E6F 
 3967 007e 72206661 		.ascii	"r fault\012\000"
 3967      756C740A 
 3967      00
 3968 0087 00       		.space	1
 3969              	.LC2:
 3970 0088 636F6E66 		.ascii	"config.g\000"
 3970      69672E67 
 3970      00
 3971 0091 000000   		.space	3
 3972              	.LC3:
 3973 0094 64656661 		.ascii	"default.g\000"
 3973      756C742E 
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 71


 3973      6700
 3974 009e 0000     		.space	2
 3975              	.LC4:
 3976 00a0 25732056 		.ascii	"%s Version %s dated %s\012\000"
 3976      65727369 
 3976      6F6E2025 
 3976      73206461 
 3976      74656420 
 3977              	.LC5:
 3978 00b8 52657052 		.ascii	"RepRapFirmware for Duet\000"
 3978      61704669 
 3978      726D7761 
 3978      72652066 
 3978      6F722044 
 3979              	.LC6:
 3980 00d0 46757369 		.ascii	"Fusionware 1.18.1 RC1\000"
 3980      6F6E7761 
 3980      72652031 
 3980      2E31382E 
 3980      31205243 
 3981 00e6 0000     		.space	2
 3982              	.LC7:
 3983 00e8 32303137 		.ascii	"2017-05-15\000"
 3983      2D30352D 
 3983      313500
 3984 00f3 00       		.space	1
 3985              	.LC8:
 3986 00f4 0A457865 		.ascii	"\012Executing \000"
 3986      63757469 
 3986      6E672000 
 3987              	.LC9:
 3988 0100 303A2F73 		.ascii	"0:/sys/\000"
 3988      79732F00 
 3989              	.LC10:
 3990 0108 25732E2E 		.ascii	"%s...\000"
 3990      2E00
 3991 010e 0000     		.space	2
 3992              	.LC11:
 3993 0110 25732028 		.ascii	"%s (no configuration file found)...\000"
 3993      6E6F2063 
 3993      6F6E6669 
 3993      67757261 
 3993      74696F6E 
 3994              	.LC12:
 3995 0134 446F6E65 		.ascii	"Done!\012\000"
 3995      210A00
 3996 013b 00       		.space	1
 3997              	.LC13:
 3998 013c 4572726F 		.ascii	"Error, not found\012\000"
 3998      722C206E 
 3998      6F742066 
 3998      6F756E64 
 3998      0A00
 3999 014e 0000     		.space	2
 4000              	.LC14:
 4001 0150 4E657477 		.ascii	"Network disabled.\012\000"
 4001      6F726B20 
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 72


 4001      64697361 
 4001      626C6564 
 4001      2E0A00
 4002 0163 00       		.space	1
 4003              	.LC15:
 4004 0164 25732069 		.ascii	"%s is up and running.\012\000"
 4004      73207570 
 4004      20616E64 
 4004      2072756E 
 4004      6E696E67 
 4005 017b 00       		.space	1
 4006              	.LC16:
 4007 017c 536C6F77 		.ascii	"Slowest main loop (seconds): %f; fastest: %f\012\000"
 4007      65737420 
 4007      6D61696E 
 4007      206C6F6F 
 4007      70202873 
 4008 01aa 0000     		.space	2
 4009              	.LC17:
 4010 01ac 3D3D3D20 		.ascii	"=== Diagnostics ===\012\000"
 4010      44696167 
 4010      6E6F7374 
 4010      69637320 
 4010      3D3D3D0A 
 4011 01c1 000000   		.space	3
 4012              	.LC18:
 4013 01c4 44656275 		.ascii	"Debugging enabled for modules:\000"
 4013      6767696E 
 4013      6720656E 
 4013      61626C65 
 4013      6420666F 
 4014 01e3 00       		.space	1
 4015              	.LC19:
 4016 01e4 20257328 		.ascii	" %s(%u)\000"
 4016      25752900 
 4017              	.LC20:
 4018 01ec 0A446562 		.ascii	"\012Debugging disabled for modules:\000"
 4018      75676769 
 4018      6E672064 
 4018      69736162 
 4018      6C656420 
 4019 020d 000000   		.space	3
 4020              	.LC21:
 4021 0210 0A00     		.ascii	"\012\000"
 4022 0212 0000     		.space	2
 4023              	.LC22:
 4024 0214 44656275 		.ascii	"Debugging disabled\012\000"
 4024      6767696E 
 4024      67206469 
 4024      7361626C 
 4024      65640A00 
 4025              	.LC23:
 4026 0228 4572726F 		.ascii	"Error: Attempt to print details of non-existent too"
 4026      723A2041 
 4026      7474656D 
 4026      70742074 
 4026      6F207072 
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 73


 4027 025b 6C2E0A00 		.ascii	"l.\012\000"
 4028 025f 00       		.space	1
 4029              	.LC24:
 4030 0260 4572726F 		.ascii	"Error: Attempt to standby a non-existent tool: %d.\012"
 4030      723A2041 
 4030      7474656D 
 4030      70742074 
 4030      6F207374 
 4031 0293 00       		.ascii	"\000"
 4032              	.LC25:
 4033 0294 4572726F 		.ascii	"Error: Attempt to set variables for a non-existent "
 4033      723A2041 
 4033      7474656D 
 4033      70742074 
 4033      6F207365 
 4034 02c7 746F6F6C 		.ascii	"tool: %d.\012\000"
 4034      3A202564 
 4034      2E0A00
 4035 02d2 0000     		.space	2
 4036              	.LC26:
 4037 02d4 5B5D00   		.ascii	"[]\000"
 4038 02d7 00       		.space	1
 4039              	.LC27:
 4040 02d8 5D00     		.ascii	"]\000"
 4041 02da 0000     		.space	2
 4042              	.LC28:
 4043 02dc 7B227374 		.ascii	"{\"status\":\"%c\",\"coords\":{\000"
 4043      61747573 
 4043      223A2225 
 4043      63222C22 
 4043      636F6F72 
 4044 02f6 0000     		.space	2
 4045              	.LC29:
 4046 02f8 22617865 		.ascii	"\"axesHomed\":\000"
 4046      73486F6D 
 4046      6564223A 
 4046      00
 4047 0305 000000   		.space	3
 4048              	.LC30:
 4049 0308 25632564 		.ascii	"%c%d\000"
 4049      00
 4050 030d 000000   		.space	3
 4051              	.LC31:
 4052 0310 5D2C2265 		.ascii	"],\"extr\":\000"
 4052      78747222 
 4052      3A00
 4053 031a 0000     		.space	2
 4054              	.LC32:
 4055 031c 2563252E 		.ascii	"%c%.1f\000"
 4055      316600
 4056 0323 00       		.space	1
 4057              	.LC33:
 4058 0324 5D2C2278 		.ascii	"],\"xyz\":\000"
 4058      797A223A 
 4058      00
 4059 032d 000000   		.space	3
 4060              	.LC34:
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 74


 4061 0330 2563252E 		.ascii	"%c%.3f\000"
 4061      336600
 4062 0337 00       		.space	1
 4063              	.LC35:
 4064 0338 5D7D2C22 		.ascii	"]},\"currentTool\":%d\000"
 4064      63757272 
 4064      656E7454 
 4064      6F6F6C22 
 4064      3A256400 
 4065              	.LC36:
 4066 034c 2C00     		.ascii	",\000"
 4067 034e 0000     		.space	2
 4068              	.LC37:
 4069 0350 226D6573 		.ascii	"\"message\":\000"
 4069      73616765 
 4069      223A00
 4070 035b 00       		.space	1
 4071              	.LC38:
 4072 035c 7D00     		.ascii	"}\000"
 4073 035e 0000     		.space	2
 4074              	.LC39:
 4075 0360 2C227061 		.ascii	",\"params\":{\"atxPower\":%d\000"
 4075      72616D73 
 4075      223A7B22 
 4075      61747850 
 4075      6F776572 
 4076 0379 000000   		.space	3
 4077              	.LC40:
 4078 037c 2C226661 		.ascii	",\"fanPercent\":\000"
 4078      6E506572 
 4078      63656E74 
 4078      223A00
 4079 038b 00       		.space	1
 4080              	.LC41:
 4081 038c 2563252E 		.ascii	"%c%.2f\000"
 4081      326600
 4082 0393 00       		.space	1
 4083              	.LC42:
 4084 0394 5D2C2273 		.ascii	"],\"speedFactor\":%.2f,\"extrFactors\":\000"
 4084      70656564 
 4084      46616374 
 4084      6F72223A 
 4084      252E3266 
 4085              	.LC43:
 4086 03b8 2C226261 		.ascii	",\"babystep\":%.03f}\000"
 4086      62797374 
 4086      6570223A 
 4086      252E3033 
 4086      667D00
 4087 03cb 00       		.space	1
 4088              	.LC44:
 4089 03cc 2C227365 		.ascii	",\"seq\":%d\000"
 4089      71223A25 
 4089      6400
 4090 03d6 0000     		.space	2
 4091              	.LC45:
 4092 03d8 2C227365 		.ascii	",\"sensors\":{\000"
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 75


 4092      6E736F72 
 4092      73223A7B 
 4092      00
 4093 03e5 000000   		.space	3
 4094              	.LC46:
 4095 03e8 2270726F 		.ascii	"\"probeValue\":%d,\"probeSecondary\":[%d]\000"
 4095      62655661 
 4095      6C756522 
 4095      3A25642C 
 4095      2270726F 
 4096 040e 0000     		.space	2
 4097              	.LC47:
 4098 0410 2270726F 		.ascii	"\"probeValue\":%d,\"probeSecondary\":[%d,%d]\000"
 4098      62655661 
 4098      6C756522 
 4098      3A25642C 
 4098      2270726F 
 4099 0439 000000   		.space	3
 4100              	.LC48:
 4101 043c 2270726F 		.ascii	"\"probeValue\":%d\000"
 4101      62655661 
 4101      6C756522 
 4101      3A256400 
 4102              	.LC49:
 4103 044c 2C226661 		.ascii	",\"fanRPM\":%d}\000"
 4103      6E52504D 
 4103      223A2564 
 4103      7D00
 4104 045a 0000     		.space	2
 4105              	.LC50:
 4106 045c 2C227465 		.ascii	",\"temps\":{\000"
 4106      6D707322 
 4106      3A7B00
 4107 0467 00       		.space	1
 4108              	.LC51:
 4109 0468 22626564 		.ascii	"\"bed\":{\"current\":%.1f,\"active\":%.1f,\"state\""
 4109      223A7B22 
 4109      63757272 
 4109      656E7422 
 4109      3A252E31 
 4110 0493 3A25647D 		.ascii	":%d},\000"
 4110      2C00
 4111 0499 000000   		.space	3
 4112              	.LC52:
 4113 049c 22636861 		.ascii	"\"chamber\":{\"current\":%.1f,\000"
 4113      6D626572 
 4113      223A7B22 
 4113      63757272 
 4113      656E7422 
 4114 04b7 00       		.space	1
 4115              	.LC53:
 4116 04b8 22616374 		.ascii	"\"active\":%.1f,\000"
 4116      69766522 
 4116      3A252E31 
 4116      662C00
 4117 04c7 00       		.space	1
 4118              	.LC54:
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 76


 4119 04c8 22737461 		.ascii	"\"state\":%d},\000"
 4119      7465223A 
 4119      25647D2C 
 4119      00
 4120 04d5 000000   		.space	3
 4121              	.LC55:
 4122 04d8 22686561 		.ascii	"\"heads\":{\"current\":\000"
 4122      6473223A 
 4122      7B226375 
 4122      7272656E 
 4122      74223A00 
 4123              	.LC56:
 4124 04ec 2C226163 		.ascii	",\"active\":\000"
 4124      74697665 
 4124      223A00
 4125 04f7 00       		.space	1
 4126              	.LC57:
 4127 04f8 2C227374 		.ascii	",\"standby\":\000"
 4127      616E6462 
 4127      79223A00 
 4128              	.LC58:
 4129 0504 2C227374 		.ascii	",\"state\":\000"
 4129      61746522 
 4129      3A00
 4130 050e 0000     		.space	2
 4131              	.LC59:
 4132 0510 7D7D00   		.ascii	"}}\000"
 4133 0513 00       		.space	1
 4134              	.LC60:
 4135 0514 2C227469 		.ascii	",\"time\":%.1f\000"
 4135      6D65223A 
 4135      252E3166 
 4135      00
 4136 0521 000000   		.space	3
 4137              	.LC61:
 4138 0524 2C22636F 		.ascii	",\"coldExtrudeTemp\":%1.f\000"
 4138      6C644578 
 4138      74727564 
 4138      6554656D 
 4138      70223A25 
 4139              	.LC62:
 4140 053c 2C22636F 		.ascii	",\"coldRetractTemp\":%1.f\000"
 4140      6C645265 
 4140      74726163 
 4140      7454656D 
 4140      70223A25 
 4141              	.LC63:
 4142 0554 2C227465 		.ascii	",\"tempLimit\":%1.f\000"
 4142      6D704C69 
 4142      6D697422 
 4142      3A25312E 
 4142      6600
 4143 0566 0000     		.space	2
 4144              	.LC64:
 4145 0568 2C22656E 		.ascii	",\"endstops\":%d\000"
 4145      6473746F 
 4145      7073223A 
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 77


 4145      256400
 4146 0577 00       		.space	1
 4147              	.LC65:
 4148 0578 2C226669 		.ascii	",\"firmwareName\":\"%s\",\"geometry\":\"%s\",\"axes"
 4148      726D7761 
 4148      72654E61 
 4148      6D65223A 
 4148      22257322 
 4149 05a2 223A2575 		.ascii	"\":%u\000"
 4149      00
 4150 05a7 00       		.space	1
 4151              	.LC66:
 4152 05a8 2C22766F 		.ascii	",\"volumes\":%u,\"mountedVolumes\":%u\000"
 4152      6C756D65 
 4152      73223A25 
 4152      752C226D 
 4152      6F756E74 
 4153 05ca 0000     		.space	2
 4154              	.LC67:
 4155 05cc 2C226E61 		.ascii	",\"name\":\000"
 4155      6D65223A 
 4155      00
 4156 05d5 000000   		.space	3
 4157              	.LC68:
 4158 05d8 2C227072 		.ascii	",\"probe\":{\"threshold\":%d\000"
 4158      6F626522 
 4158      3A7B2274 
 4158      68726573 
 4158      686F6C64 
 4159 05f1 000000   		.space	3
 4160              	.LC69:
 4161 05f4 2C226865 		.ascii	",\"height\":%.2f\000"
 4161      69676874 
 4161      223A252E 
 4161      326600
 4162 0603 00       		.space	1
 4163              	.LC70:
 4164 0604 2C227479 		.ascii	",\"type\":%d}\000"
 4164      7065223A 
 4164      25647D00 
 4165              	.LC71:
 4166 0610 2C22746F 		.ascii	",\"tools\":[\000"
 4166      6F6C7322 
 4166      3A5B00
 4167 061b 00       		.space	1
 4168              	.LC72:
 4169 061c 2C226D63 		.ascii	",\"mcutemp\":{\"min\":%.1f,\"cur\":%.1f,\"max\":%.1"
 4169      7574656D 
 4169      70223A7B 
 4169      226D696E 
 4169      223A252E 
 4170 0647 667D00   		.ascii	"f}\000"
 4171 064a 0000     		.space	2
 4172              	.LC73:
 4173 064c 7B226E75 		.ascii	"{\"number\":%d,\"heaters\":[\000"
 4173      6D626572 
 4173      223A2564 
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 78


 4173      2C226865 
 4173      61746572 
 4174 0665 000000   		.space	3
 4175              	.LC74:
 4176 0668 256400   		.ascii	"%d\000"
 4177 066b 00       		.space	1
 4178              	.LC75:
 4179 066c 5D2C2264 		.ascii	"],\"drives\":[\000"
 4179      72697665 
 4179      73223A5B 
 4179      00
 4180 0679 000000   		.space	3
 4181              	.LC76:
 4182 067c 5D2C2261 		.ascii	"],\"axisMap\":[[\000"
 4182      7869734D 
 4182      6170223A 
 4182      5B5B00
 4183 068b 00       		.space	1
 4184              	.LC77:
 4185 068c 257500   		.ascii	"%u\000"
 4186 068f 00       		.space	1
 4187              	.LC78:
 4188 0690 5D5D7D2C 		.ascii	"]]},\000"
 4188      00
 4189 0695 000000   		.space	3
 4190              	.LC79:
 4191 0698 5D5D7D00 		.ascii	"]]}\000"
 4192              	.LC80:
 4193 069c 2C226375 		.ascii	",\"currentLayer\":%d\000"
 4193      7272656E 
 4193      744C6179 
 4193      6572223A 
 4193      256400
 4194 06af 00       		.space	1
 4195              	.LC81:
 4196 06b0 2C226375 		.ascii	",\"currentLayerTime\":%.1f\000"
 4196      7272656E 
 4196      744C6179 
 4196      65725469 
 4196      6D65223A 
 4197 06c9 000000   		.space	3
 4198              	.LC82:
 4199 06cc 2C226578 		.ascii	",\"extrRaw\":\000"
 4199      74725261 
 4199      77223A00 
 4200              	.LC83:
 4201 06d8 5D2C2266 		.ascii	"],\"fractionPrinted\":%.1f\000"
 4201      72616374 
 4201      696F6E50 
 4201      72696E74 
 4201      6564223A 
 4202 06f1 000000   		.space	3
 4203              	.LC84:
 4204 06f4 2C226669 		.ascii	",\"firstLayerDuration\":%.1f\000"
 4204      7273744C 
 4204      61796572 
 4204      44757261 
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 79


 4204      74696F6E 
 4205 070f 00       		.space	1
 4206              	.LC85:
 4207 0710 2C226669 		.ascii	",\"firstLayerHeight\":%.2f\000"
 4207      7273744C 
 4207      61796572 
 4207      48656967 
 4207      6874223A 
 4208 0729 000000   		.space	3
 4209              	.LC86:
 4210 072c 2C227072 		.ascii	",\"printDuration\":%.1f\000"
 4210      696E7444 
 4210      75726174 
 4210      696F6E22 
 4210      3A252E31 
 4211 0742 0000     		.space	2
 4212              	.LC87:
 4213 0744 2C227761 		.ascii	",\"warmUpDuration\":%.1f\000"
 4213      726D5570 
 4213      44757261 
 4213      74696F6E 
 4213      223A252E 
 4214 075b 00       		.space	1
 4215              	.LC88:
 4216 075c 2C227469 		.ascii	",\"timesLeft\":{\"file\":%.1f\000"
 4216      6D65734C 
 4216      65667422 
 4216      3A7B2266 
 4216      696C6522 
 4217 0776 0000     		.space	2
 4218              	.LC89:
 4219 0778 2C226669 		.ascii	",\"filament\":%.1f\000"
 4219      6C616D65 
 4219      6E74223A 
 4219      252E3166 
 4219      00
 4220 0789 000000   		.space	3
 4221              	.LC90:
 4222 078c 2C226C61 		.ascii	",\"layer\":%.1f}\000"
 4222      79657222 
 4222      3A252E31 
 4222      667D00
 4223 079b 00       		.space	1
 4224              	.LC91:
 4225 079c 2C227365 		.ascii	",\"seq\":%u,\"resp\":\000"
 4225      71223A25 
 4225      752C2272 
 4225      65737022 
 4225      3A00
 4226 07ae 0000     		.space	2
 4227              	.LC92:
 4228 07b0 5B302E30 		.ascii	"[0.00,0.00,0.00\000"
 4228      302C302E 
 4228      30302C30 
 4228      2E303000 
 4229              	.LC93:
 4230 07c0 2C226F75 		.ascii	",\"output\":{\000"
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 80


 4230      74707574 
 4230      223A7B00 
 4231              	.LC94:
 4232 07cc 22626565 		.ascii	"\"beepDuration\":%d,\"beepFrequency\":%d\000"
 4232      70447572 
 4232      6174696F 
 4232      6E223A25 
 4232      642C2262 
 4233 07f1 000000   		.space	3
 4234              	.LC95:
 4235 07f4 7B226178 		.ascii	"{\"axisMins\":\000"
 4235      69734D69 
 4235      6E73223A 
 4235      00
 4236 0801 000000   		.space	3
 4237              	.LC96:
 4238 0804 5D2C2261 		.ascii	"],\"accelerations\":\000"
 4238      6363656C 
 4238      65726174 
 4238      696F6E73 
 4238      223A00
 4239 0817 00       		.space	1
 4240              	.LC97:
 4241 0818 5D2C2263 		.ascii	"],\"currents\":\000"
 4241      75727265 
 4241      6E747322 
 4241      3A00
 4242 0826 0000     		.space	2
 4243              	.LC98:
 4244 0828 5D2C2266 		.ascii	"],\"firmwareElectronics\":\"%s\000"
 4244      69726D77 
 4244      61726545 
 4244      6C656374 
 4244      726F6E69 
 4245              	.LC99:
 4246 0844 222C2266 		.ascii	"\",\"firmwareName\":\"%s\"\000"
 4246      69726D77 
 4246      6172654E 
 4246      616D6522 
 4246      3A222573 
 4247 085a 0000     		.space	2
 4248              	.LC100:
 4249 085c 2C226669 		.ascii	",\"firmwareVersion\":\"%s\"\000"
 4249      726D7761 
 4249      72655665 
 4249      7273696F 
 4249      6E223A22 
 4250              	.LC101:
 4251 0874 2C226669 		.ascii	",\"firmwareDate\":\"%s\"\000"
 4251      726D7761 
 4251      72654461 
 4251      7465223A 
 4251      22257322 
 4252 0889 000000   		.space	3
 4253              	.LC102:
 4254 088c 2C226964 		.ascii	",\"idleCurrentFactor\":%.1f\000"
 4254      6C654375 
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 81


 4254      7272656E 
 4254      74466163 
 4254      746F7222 
 4255 08a6 0000     		.space	2
 4256              	.LC103:
 4257 08a8 2C226964 		.ascii	",\"idleTimeout\":%.1f\000"
 4257      6C655469 
 4257      6D656F75 
 4257      74223A25 
 4257      2E316600 
 4258              	.LC104:
 4259 08bc 2C226D69 		.ascii	",\"minFeedrates\":\000"
 4259      6E466565 
 4259      64726174 
 4259      6573223A 
 4259      00
 4260 08cd 000000   		.space	3
 4261              	.LC105:
 4262 08d0 5D2C226D 		.ascii	"],\"maxFeedrates\":\000"
 4262      61784665 
 4262      65647261 
 4262      74657322 
 4262      3A00
 4263 08e2 0000     		.space	2
 4264              	.LC106:
 4265 08e4 5D7D00   		.ascii	"]}\000"
 4266 08e7 00       		.space	1
 4267              	.LC107:
 4268 08e8 5D2C2261 		.ascii	"],\"axisMaxes\":\000"
 4268      7869734D 
 4268      61786573 
 4268      223A00
 4269 08f7 00       		.space	1
 4270              	.LC108:
 4271 08f8 7B227374 		.ascii	"{\"status\":\"%c\",\"heaters\":\000"
 4271      61747573 
 4271      223A2225 
 4271      63222C22 
 4271      68656174 
 4272 0912 0000     		.space	2
 4273              	.LC109:
 4274 0914 5B252E31 		.ascii	"[%.1f\000"
 4274      6600
 4275 091a 0000     		.space	2
 4276              	.LC110:
 4277 091c 2C226873 		.ascii	",\"hstat\":\000"
 4277      74617422 
 4277      3A00
 4278 0926 0000     		.space	2
 4279              	.LC111:
 4280 0928 5B256400 		.ascii	"[%d\000"
 4281              	.LC112:
 4282 092c 2C22706F 		.ascii	",\"pos\":\000"
 4282      73223A00 
 4283              	.LC113:
 4284 0934 2C227366 		.ascii	",\"sfactor\":%.2f,\"efactor\":\000"
 4284      6163746F 
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 82


 4284      72223A25 
 4284      2E32662C 
 4284      22656661 
 4285 094f 00       		.space	1
 4286              	.LC114:
 4287 0950 2C226261 		.ascii	",\"babystep\":%.03f\000"
 4287      62797374 
 4287      6570223A 
 4287      252E3033 
 4287      6600
 4288 0962 0000     		.space	2
 4289              	.LC115:
 4290 0964 2C22746F 		.ascii	",\"tool\":%d\000"
 4290      6F6C223A 
 4290      256400
 4291 096f 00       		.space	1
 4292              	.LC116:
 4293 0970 2C227072 		.ascii	",\"probe\":\"%d (%d)\"\000"
 4293      6F626522 
 4293      3A222564 
 4293      20282564 
 4293      292200
 4294 0983 00       		.space	1
 4295              	.LC117:
 4296 0984 2C227072 		.ascii	",\"probe\":\"%d (%d, %d)\"\000"
 4296      6F626522 
 4296      3A222564 
 4296      20282564 
 4296      2C202564 
 4297 099b 00       		.space	1
 4298              	.LC118:
 4299 099c 2C227072 		.ascii	",\"probe\":\"%d\"\000"
 4299      6F626522 
 4299      3A222564 
 4299      2200
 4300 09aa 0000     		.space	2
 4301              	.LC119:
 4302 09ac 2563252E 		.ascii	"%c%.02f\000"
 4302      30326600 
 4303              	.LC120:
 4304 09b4 5D2C2266 		.ascii	"],\"fanRPM\":%u\000"
 4304      616E5250 
 4304      4D223A25 
 4304      7500
 4305 09c2 0000     		.space	2
 4306              	.LC121:
 4307 09c4 2C22686F 		.ascii	",\"homed\":\000"
 4307      6D656422 
 4307      3A00
 4308 09ce 0000     		.space	2
 4309              	.LC122:
 4310 09d0 2C226672 		.ascii	",\"fraction_printed\":%.4f\000"
 4310      61637469 
 4310      6F6E5F70 
 4310      72696E74 
 4310      6564223A 
 4311 09e9 000000   		.space	3
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 83


 4312              	.LC123:
 4313 09ec 2C227469 		.ascii	",\"timesLeft\":[%.1f,%.1f,%.1f]\000"
 4313      6D65734C 
 4313      65667422 
 4313      3A5B252E 
 4313      31662C25 
 4314 0a0a 0000     		.space	2
 4315              	.LC124:
 4316 0a0c 2C227365 		.ascii	",\"seq\":%d,\"resp\":\000"
 4316      71223A25 
 4316      642C2272 
 4316      65737022 
 4316      3A00
 4317 0a1e 0000     		.space	2
 4318              	.LC125:
 4319 0a20 2C226765 		.ascii	",\"geometry\":\"%s\",\"axes\":%u,\"volumes\":%u,\"n"
 4319      6F6D6574 
 4319      7279223A 
 4319      22257322 
 4319      2C226178 
 4320 0a4a 756D546F 		.ascii	"umTools\":%u,\"myName\":\000"
 4320      6F6C7322 
 4320      3A25752C 
 4320      226D794E 
 4320      616D6522 
 4321              	.LC126:
 4322 0a60 2C226669 		.ascii	",\"firmwareName\":\000"
 4322      726D7761 
 4322      72654E61 
 4322      6D65223A 
 4322      00
 4323 0a71 000000   		.space	3
 4324              	.LC127:
 4325 0a74 7B226469 		.ascii	"{\"dir\":\000"
 4325      72223A00 
 4326              	.LC128:
 4327 0a7c 2C226669 		.ascii	",\"files\":[\000"
 4327      6C657322 
 4327      3A5B00
 4328 0a87 00       		.space	1
 4329              	.LC129:
 4330 0a88 5D2C2265 		.ascii	"],\"err\":%u}\000"
 4330      7272223A 
 4330      25757D00 
 4331              	.LC130:
 4332 0a94 7B226572 		.ascii	"{\"err\":1}\000"
 4332      72223A31 
 4332      7D00
 4333 0a9e 0000     		.space	2
 4334              	.LC131:
 4335 0aa0 7B226572 		.ascii	"{\"err\":2}\000"
 4335      72223A32 
 4335      7D00
 4336 0aaa 0000     		.space	2
 4337              	.LC132:
 4338 0aac 7B227479 		.ascii	"{\"type\":\"%c\",\"name\":\000"
 4338      7065223A 
ARM GAS  C:\Users\George\AppData\Local\Temp\cckRGHMv.s 			page 84


 4338      22256322 
 4338      2C226E61 
 4338      6D65223A 
 4339 0ac1 000000   		.space	3
 4340              	.LC133:
 4341 0ac4 2C227369 		.ascii	",\"size\":%u\000"
 4341      7A65223A 
 4341      257500
 4342 0acf 00       		.space	1
 4343              	.LC134:
 4344 0ad0 2C226461 		.ascii	",\"date\":\"%04u-%02u-%02uT%02u:%02u:%02u\"}\000"
 4344      7465223A 
 4344      22253034 
 4344      752D2530 
 4344      32752D25 
 4345 0af9 000000   		.space	3
 4346              	.LC135:
 4347 0afc 72657072 		.ascii	"reprap\000"
 4347      617000
 4348 0b03 00       		.space	1
 4349              	.LC136:
 4350 0b04 4D792044 		.ascii	"My Duet\000"
 4350      75657400 
 4351              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 4352              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 4353              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 4354              	_ZL28cpu_irq_prev_interrupt_state:
 4355 0000 00       		.space	1
 4356              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 4357              		.align	2
 4358              		.type	_ZL32cpu_irq_critical_section_counter, %object
 4359              		.size	_ZL32cpu_irq_critical_section_counter, 4
 4360              	_ZL32cpu_irq_critical_section_counter:
 4361 0000 00000000 		.space	4
 4362              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
