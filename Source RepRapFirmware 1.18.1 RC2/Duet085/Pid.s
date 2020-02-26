ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 1


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
  14              		.file	"Pid.cpp"
  15              		.section	.text._ZN3PIDC2EP8Platforma,"ax",%progbits
  16              		.align	2
  17              		.global	_ZN3PIDC2EP8Platforma
  18              		.thumb
  19              		.thumb_func
  20              		.type	_ZN3PIDC2EP8Platforma, %function
  21              	_ZN3PIDC2EP8Platforma:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 38B5     		push	{r3, r4, r5, lr}
  25 0002 0446     		mov	r4, r0
  26 0004 1546     		mov	r5, r2
  27 0006 40F8301B 		str	r1, [r0], #48
  28 000a FFF7FEFF 		bl	_ZN5FopDtC1Ev
  29 000e 0123     		movs	r3, #1
  30 0010 84F87250 		strb	r5, [r4, #114]
  31 0014 84F87430 		strb	r3, [r4, #116]
  32 0018 2046     		mov	r0, r4
  33 001a 38BD     		pop	{r3, r4, r5, pc}
  34              		.size	_ZN3PIDC2EP8Platforma, .-_ZN3PIDC2EP8Platforma
  35              		.global	_ZN3PIDC1EP8Platforma
  36              		.thumb_set _ZN3PIDC1EP8Platforma,_ZN3PIDC2EP8Platforma
  37              		.section	.text._ZN3PID4InitEffffb,"ax",%progbits
  38              		.align	2
  39              		.global	_ZN3PID4InitEffffb
  40              		.thumb
  41              		.thumb_func
  42              		.type	_ZN3PID4InitEffffb, %function
  43              	_ZN3PID4InitEffffb:
  44              		@ args = 8, pretend = 0, frame = 0
  45              		@ frame_needed = 0, uses_anonymous_args = 0
  46 0000 F0B5     		push	{r4, r5, r6, r7, lr}
  47 0002 83B0     		sub	sp, sp, #12
  48 0004 DDF820C0 		ldr	ip, [sp, #32]	@ float
  49 0008 DFF870E0 		ldr	lr, .L8+8
  50 000c 9DF82460 		ldrb	r6, [sp, #36]	@ zero_extendqisi2
  51 0010 184F     		ldr	r7, .L8
  52 0012 4FF07E55 		mov	r5, #1065353216
  53 0016 0446     		mov	r4, r0
  54 0018 C0F80CC0 		str	ip, [r0, #12]	@ float
  55 001c C0F810E0 		str	lr, [r0, #16]	@ float
  56 0020 4761     		str	r7, [r0, #20]	@ float
  57 0022 0095     		str	r5, [sp]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 2


  58 0024 3030     		adds	r0, r0, #48
  59 0026 0196     		str	r6, [sp, #4]
  60 0028 FFF7FEFF 		bl	_ZN5FopDt13SetParametersEffffb
  61 002c 1248     		ldr	r0, .L8+4
  62 002e 94F84010 		ldrb	r1, [r4, #64]	@ zero_extendqisi2
  63 0032 0023     		movs	r3, #0
  64 0034 0022     		movs	r2, #0
  65 0036 0125     		movs	r5, #1
  66 0038 84F87450 		strb	r5, [r4, #116]
  67 003c A061     		str	r0, [r4, #24]	@ float
  68 003e 84F87330 		strb	r3, [r4, #115]
  69 0042 E362     		str	r3, [r4, #44]
  70 0044 84F87730 		strb	r3, [r4, #119]
  71 0048 84F87530 		strb	r3, [r4, #117]
  72 004c 84F87630 		strb	r3, [r4, #118]
  73 0050 A4F87030 		strh	r3, [r4, #112]	@ movhi
  74 0054 6260     		str	r2, [r4, #4]	@ float
  75 0056 A260     		str	r2, [r4, #8]	@ float
  76 0058 E265     		str	r2, [r4, #92]	@ float
  77 005a 2266     		str	r2, [r4, #96]	@ float
  78 005c 6266     		str	r2, [r4, #100]	@ float
  79 005e 21B1     		cbz	r1, .L3
  80 0060 2068     		ldr	r0, [r4]
  81 0062 94F97210 		ldrsb	r1, [r4, #114]
  82 0066 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjf
  83              	.L3:
  84 006a FFF7FEFF 		bl	millis
  85 006e E066     		str	r0, [r4, #108]
  86 0070 03B0     		add	sp, sp, #12
  87              		@ sp needed
  88 0072 F0BD     		pop	{r4, r5, r6, r7, pc}
  89              	.L9:
  90              		.align	2
  91              	.L8:
  92 0074 0000A040 		.word	1084227584
  93 0078 0000FA44 		.word	1157234688
  94 007c 00007041 		.word	1097859072
  95              		.size	_ZN3PID4InitEffffb, .-_ZN3PID4InitEffffb
  96              		.section	.text._ZN3PID5ResetEv,"ax",%progbits
  97              		.align	2
  98              		.global	_ZN3PID5ResetEv
  99              		.thumb
 100              		.thumb_func
 101              		.type	_ZN3PID5ResetEv, %function
 102              	_ZN3PID5ResetEv:
 103              		@ args = 0, pretend = 0, frame = 0
 104              		@ frame_needed = 0, uses_anonymous_args = 0
 105              		@ link register save eliminated.
 106 0000 0D49     		ldr	r1, .L11
 107 0002 0023     		movs	r3, #0
 108 0004 0022     		movs	r2, #0
 109 0006 10B4     		push	{r4}
 110 0008 0124     		movs	r4, #1
 111 000a 80F87440 		strb	r4, [r0, #116]
 112 000e 8161     		str	r1, [r0, #24]	@ float
 113 0010 80F87330 		strb	r3, [r0, #115]
 114 0014 C362     		str	r3, [r0, #44]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 3


 115 0016 80F87730 		strb	r3, [r0, #119]
 116 001a 80F87530 		strb	r3, [r0, #117]
 117 001e 80F87630 		strb	r3, [r0, #118]
 118 0022 A0F87030 		strh	r3, [r0, #112]	@ movhi
 119 0026 4260     		str	r2, [r0, #4]	@ float
 120 0028 8260     		str	r2, [r0, #8]	@ float
 121 002a C265     		str	r2, [r0, #92]	@ float
 122 002c 0266     		str	r2, [r0, #96]	@ float
 123 002e 4266     		str	r2, [r0, #100]	@ float
 124 0030 5DF8044B 		ldr	r4, [sp], #4
 125 0034 7047     		bx	lr
 126              	.L12:
 127 0036 00BF     		.align	2
 128              	.L11:
 129 0038 0000FA44 		.word	1157234688
 130              		.size	_ZN3PID5ResetEv, .-_ZN3PID5ResetEv
 131              		.section	.text._ZN3PID8SetModelEffffb,"ax",%progbits
 132              		.align	2
 133              		.global	_ZN3PID8SetModelEffffb
 134              		.thumb
 135              		.thumb_func
 136              		.type	_ZN3PID8SetModelEffffb, %function
 137              	_ZN3PID8SetModelEffffb:
 138              		@ args = 8, pretend = 0, frame = 0
 139              		@ frame_needed = 0, uses_anonymous_args = 0
 140 0000 70B5     		push	{r4, r5, r6, lr}
 141 0002 82B0     		sub	sp, sp, #8
 142 0004 9DF81C50 		ldrb	r5, [sp, #28]	@ zero_extendqisi2
 143 0008 069E     		ldr	r6, [sp, #24]	@ float
 144 000a 0195     		str	r5, [sp, #4]
 145 000c 0446     		mov	r4, r0
 146 000e 0096     		str	r6, [sp]	@ float
 147 0010 3030     		adds	r0, r0, #48
 148 0012 FFF7FEFF 		bl	_ZN5FopDt13SetParametersEffffb
 149 0016 0546     		mov	r5, r0
 150 0018 E0B1     		cbz	r0, .L15
 151 001a 94F97230 		ldrsb	r3, [r4, #114]
 152 001e 062B     		cmp	r3, #6
 153 0020 1BD0     		beq	.L18
 154              	.L16:
 155 0022 94F84030 		ldrb	r3, [r4, #64]	@ zero_extendqisi2
 156 0026 ABB9     		cbnz	r3, .L15
 157 0028 1048     		ldr	r0, .L19
 158 002a 0022     		movs	r2, #0
 159 002c 0121     		movs	r1, #1
 160 002e 84F87330 		strb	r3, [r4, #115]
 161 0032 E362     		str	r3, [r4, #44]
 162 0034 84F87730 		strb	r3, [r4, #119]
 163 0038 84F87530 		strb	r3, [r4, #117]
 164 003c 84F87630 		strb	r3, [r4, #118]
 165 0040 A4F87030 		strh	r3, [r4, #112]	@ movhi
 166 0044 6260     		str	r2, [r4, #4]	@ float
 167 0046 A260     		str	r2, [r4, #8]	@ float
 168 0048 E265     		str	r2, [r4, #92]	@ float
 169 004a 2266     		str	r2, [r4, #96]	@ float
 170 004c 6266     		str	r2, [r4, #100]	@ float
 171 004e A061     		str	r0, [r4, #24]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 4


 172 0050 84F87410 		strb	r1, [r4, #116]
 173              	.L15:
 174 0054 2846     		mov	r0, r5
 175 0056 02B0     		add	sp, sp, #8
 176              		@ sp needed
 177 0058 70BD     		pop	{r4, r5, r6, pc}
 178              	.L18:
 179 005a 054B     		ldr	r3, .L19+4
 180 005c 94F84010 		ldrb	r1, [r4, #64]	@ zero_extendqisi2
 181 0060 1868     		ldr	r0, [r3]
 182 0062 81F00101 		eor	r1, r1, #1
 183 0066 FFF7FEFF 		bl	_ZN8Platform15EnableSharedFanEb
 184 006a DAE7     		b	.L16
 185              	.L20:
 186              		.align	2
 187              	.L19:
 188 006c 0000FA44 		.word	1157234688
 189 0070 00000000 		.word	reprap
 190              		.size	_ZN3PID8SetModelEffffb, .-_ZN3PID8SetModelEffffb
 191              		.global	__aeabi_fcmplt
 192              		.global	__aeabi_fcmpgt
 193              		.section	.text._ZN3PID15ReadTemperatureEv,"ax",%progbits
 194              		.align	2
 195              		.global	_ZN3PID15ReadTemperatureEv
 196              		.thumb
 197              		.thumb_func
 198              		.type	_ZN3PID15ReadTemperatureEv, %function
 199              	_ZN3PID15ReadTemperatureEv:
 200              		@ args = 0, pretend = 0, frame = 8
 201              		@ frame_needed = 0, uses_anonymous_args = 0
 202 0000 30B5     		push	{r4, r5, lr}
 203 0002 83B0     		sub	sp, sp, #12
 204 0004 0023     		movs	r3, #0
 205 0006 0446     		mov	r4, r0
 206 0008 02AA     		add	r2, sp, #8
 207 000a 02F8013D 		strb	r3, [r2, #-1]!
 208 000e 0068     		ldr	r0, [r0]
 209 0010 94F97210 		ldrsb	r1, [r4, #114]
 210 0014 FFF7FEFF 		bl	_ZN8Platform14GetTemperatureEjR16TemperatureError
 211 0018 9DF80730 		ldrb	r3, [sp, #7]	@ zero_extendqisi2
 212 001c 0546     		mov	r5, r0
 213 001e A061     		str	r0, [r4, #24]	@ float
 214 0020 83B9     		cbnz	r3, .L24
 215 0022 0A49     		ldr	r1, .L28
 216 0024 FFF7FEFF 		bl	__aeabi_fcmplt
 217 0028 48B9     		cbnz	r0, .L25
 218 002a 2846     		mov	r0, r5
 219 002c E168     		ldr	r1, [r4, #12]	@ float
 220 002e FFF7FEFF 		bl	__aeabi_fcmpgt
 221 0032 0028     		cmp	r0, #0
 222 0034 14BF     		ite	ne
 223 0036 0520     		movne	r0, #5
 224 0038 0020     		moveq	r0, #0
 225 003a 03B0     		add	sp, sp, #12
 226              		@ sp needed
 227 003c 30BD     		pop	{r4, r5, pc}
 228              	.L25:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 5


 229 003e 0420     		movs	r0, #4
 230 0040 03B0     		add	sp, sp, #12
 231              		@ sp needed
 232 0042 30BD     		pop	{r4, r5, pc}
 233              	.L24:
 234 0044 1846     		mov	r0, r3
 235 0046 03B0     		add	sp, sp, #12
 236              		@ sp needed
 237 0048 30BD     		pop	{r4, r5, pc}
 238              	.L29:
 239 004a 00BF     		.align	2
 240              	.L28:
 241 004c 000020C1 		.word	-1054867456
 242              		.size	_ZN3PID15ReadTemperatureEv, .-_ZN3PID15ReadTemperatureEv
 243              		.global	__aeabi_fadd
 244              		.section	.text._ZN3PID8SwitchOnEv,"ax",%progbits
 245              		.align	2
 246              		.global	_ZN3PID8SwitchOnEv
 247              		.thumb
 248              		.thumb_func
 249              		.type	_ZN3PID8SwitchOnEv, %function
 250              	_ZN3PID8SwitchOnEv:
 251              		@ args = 0, pretend = 0, frame = 0
 252              		@ frame_needed = 0, uses_anonymous_args = 0
 253 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 254 0004 90F87450 		ldrb	r5, [r0, #116]	@ zero_extendqisi2
 255 0008 0446     		mov	r4, r0
 256 000a 35B9     		cbnz	r5, .L31
 257 000c 274B     		ldr	r3, .L53
 258 000e B3F84030 		ldrh	r3, [r3, #64]
 259 0012 9A06     		lsls	r2, r3, #26
 260 0014 3AD4     		bmi	.L50
 261              	.L30:
 262 0016 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 263              	.L31:
 264 001a 90F84030 		ldrb	r3, [r0, #64]	@ zero_extendqisi2
 265 001e 002B     		cmp	r3, #0
 266 0020 F9D0     		beq	.L30
 267 0022 90F87530 		ldrb	r3, [r0, #117]	@ zero_extendqisi2
 268 0026 7BBB     		cbnz	r3, .L51
 269 0028 8768     		ldr	r7, [r0, #8]	@ float
 270              	.L36:
 271 002a A669     		ldr	r6, [r4, #24]	@ float
 272 002c 2049     		ldr	r1, .L53+4
 273 002e 3046     		mov	r0, r6
 274 0030 FFF7FEFF 		bl	__aeabi_fadd
 275 0034 0146     		mov	r1, r0
 276 0036 3846     		mov	r0, r7
 277 0038 FFF7FEFF 		bl	__aeabi_fcmpgt
 278 003c 78BB     		cbnz	r0, .L41
 279 003e 1C49     		ldr	r1, .L53+4
 280 0040 3846     		mov	r0, r7
 281 0042 FFF7FEFF 		bl	__aeabi_fadd
 282 0046 0146     		mov	r1, r0
 283 0048 3046     		mov	r0, r6
 284 004a FFF7FEFF 		bl	__aeabi_fcmpgt
 285 004e 0028     		cmp	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 6


 286 0050 14BF     		ite	ne
 287 0052 0323     		movne	r3, #3
 288 0054 0423     		moveq	r3, #4
 289              	.L37:
 290 0056 AB42     		cmp	r3, r5
 291 0058 84F87430 		strb	r3, [r4, #116]
 292 005c DBD0     		beq	.L30
 293 005e 0022     		movs	r2, #0
 294 0060 022B     		cmp	r3, #2
 295 0062 A4F87020 		strh	r2, [r4, #112]	@ movhi
 296 0066 1CD0     		beq	.L52
 297              	.L39:
 298 0068 104B     		ldr	r3, .L53
 299 006a B3F84030 		ldrh	r3, [r3, #64]
 300 006e 9B06     		lsls	r3, r3, #26
 301 0070 D1D5     		bpl	.L30
 302 0072 012D     		cmp	r5, #1
 303 0074 CFD1     		bne	.L30
 304 0076 2068     		ldr	r0, [r4]
 305 0078 94F97230 		ldrsb	r3, [r4, #114]
 306 007c 0621     		movs	r1, #6
 307 007e 0D4A     		ldr	r2, .L53+8
 308 0080 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 309 0084 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 310              	.L51:
 311 0088 4768     		ldr	r7, [r0, #4]	@ float
 312 008a CEE7     		b	.L36
 313              	.L50:
 314 008c 94F97230 		ldrsb	r3, [r4, #114]
 315 0090 0068     		ldr	r0, [r0]
 316 0092 0621     		movs	r1, #6
 317 0094 084A     		ldr	r2, .L53+12
 318 0096 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 319 009a FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 320              	.L41:
 321 009e 0223     		movs	r3, #2
 322 00a0 D9E7     		b	.L37
 323              	.L52:
 324 00a2 FFF7FEFF 		bl	millis
 325 00a6 A066     		str	r0, [r4, #104]
 326 00a8 DEE7     		b	.L39
 327              	.L54:
 328 00aa 00BF     		.align	2
 329              	.L53:
 330 00ac 00000000 		.word	reprap
 331 00b0 00002040 		.word	1075838976
 332 00b4 34000000 		.word	.LC1
 333 00b8 00000000 		.word	.LC0
 334              		.size	_ZN3PID8SwitchOnEv, .-_ZN3PID8SwitchOnEv
 335              		.section	.text._ZN3PID9SwitchOffEv,"ax",%progbits
 336              		.align	2
 337              		.global	_ZN3PID9SwitchOffEv
 338              		.thumb
 339              		.thumb_func
 340              		.type	_ZN3PID9SwitchOffEv, %function
 341              	_ZN3PID9SwitchOffEv:
 342              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 7


 343              		@ frame_needed = 0, uses_anonymous_args = 0
 344 0000 90F84030 		ldrb	r3, [r0, #64]	@ zero_extendqisi2
 345 0004 0022     		movs	r2, #0
 346 0006 70B5     		push	{r4, r5, r6, lr}
 347 0008 0446     		mov	r4, r0
 348 000a 0266     		str	r2, [r0, #96]	@ float
 349 000c 03B9     		cbnz	r3, .L63
 350              	.L55:
 351 000e 70BD     		pop	{r4, r5, r6, pc}
 352              	.L63:
 353 0010 0068     		ldr	r0, [r0]
 354 0012 94F97210 		ldrsb	r1, [r4, #114]
 355 0016 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjf
 356 001a 94F87430 		ldrb	r3, [r4, #116]	@ zero_extendqisi2
 357 001e 042B     		cmp	r3, #4
 358 0020 12D8     		bhi	.L64
 359              	.L58:
 360 0022 012B     		cmp	r3, #1
 361 0024 F3D9     		bls	.L55
 362 0026 0D4B     		ldr	r3, .L65
 363 0028 0122     		movs	r2, #1
 364 002a B3F84030 		ldrh	r3, [r3, #64]
 365 002e 84F87420 		strb	r2, [r4, #116]
 366 0032 9B06     		lsls	r3, r3, #26
 367 0034 EBD5     		bpl	.L55
 368 0036 2068     		ldr	r0, [r4]
 369 0038 94F97230 		ldrsb	r3, [r4, #114]
 370 003c 0621     		movs	r1, #6
 371 003e 084A     		ldr	r2, .L65+4
 372 0040 BDE87040 		pop	{r4, r5, r6, lr}
 373 0044 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 374              	.L64:
 375 0048 064D     		ldr	r5, .L65+8
 376 004a 2868     		ldr	r0, [r5]
 377 004c FFF7FEFF 		bl	_ZdlPv
 378 0050 0022     		movs	r2, #0
 379 0052 94F87430 		ldrb	r3, [r4, #116]	@ zero_extendqisi2
 380 0056 2A60     		str	r2, [r5]
 381 0058 E3E7     		b	.L58
 382              	.L66:
 383 005a 00BF     		.align	2
 384              	.L65:
 385 005c 00000000 		.word	reprap
 386 0060 4C000000 		.word	.LC2
 387 0064 00000000 		.word	.LANCHOR0
 388              		.size	_ZN3PID9SwitchOffEv, .-_ZN3PID9SwitchOffEv
 389              		.global	__aeabi_f2d
 390              		.section	.text._ZN3PID20SetActiveTemperatureEf,"ax",%progbits
 391              		.align	2
 392              		.global	_ZN3PID20SetActiveTemperatureEf
 393              		.thumb
 394              		.thumb_func
 395              		.type	_ZN3PID20SetActiveTemperatureEf, %function
 396              	_ZN3PID20SetActiveTemperatureEf:
 397              		@ args = 0, pretend = 0, frame = 0
 398              		@ frame_needed = 0, uses_anonymous_args = 0
 399 0000 30B5     		push	{r4, r5, lr}
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 8


 400 0002 0446     		mov	r4, r0
 401 0004 85B0     		sub	sp, sp, #20
 402 0006 C068     		ldr	r0, [r0, #12]	@ float
 403 0008 0D46     		mov	r5, r1
 404 000a FFF7FEFF 		bl	__aeabi_fcmplt
 405 000e 78B9     		cbnz	r0, .L76
 406 0010 94F87430 		ldrb	r3, [r4, #116]	@ zero_extendqisi2
 407 0014 6560     		str	r5, [r4, #4]	@ float
 408 0016 012B     		cmp	r3, #1
 409 0018 02D9     		bls	.L67
 410 001a 94F87530 		ldrb	r3, [r4, #117]	@ zero_extendqisi2
 411 001e 0BB9     		cbnz	r3, .L77
 412              	.L67:
 413 0020 05B0     		add	sp, sp, #20
 414              		@ sp needed
 415 0022 30BD     		pop	{r4, r5, pc}
 416              	.L77:
 417 0024 2046     		mov	r0, r4
 418 0026 05B0     		add	sp, sp, #20
 419              		@ sp needed
 420 0028 BDE83040 		pop	{r4, r5, lr}
 421 002c FFF7FEBF 		b	_ZN3PID8SwitchOnEv
 422              	.L76:
 423 0030 2846     		mov	r0, r5
 424 0032 FFF7FEFF 		bl	__aeabi_f2d
 425 0036 2368     		ldr	r3, [r4]
 426 0038 94F97220 		ldrsb	r2, [r4, #114]
 427 003c CDE90001 		strd	r0, [sp]
 428 0040 0292     		str	r2, [sp, #8]
 429 0042 1846     		mov	r0, r3
 430 0044 0621     		movs	r1, #6
 431 0046 024A     		ldr	r2, .L78
 432 0048 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 433 004c 05B0     		add	sp, sp, #20
 434              		@ sp needed
 435 004e 30BD     		pop	{r4, r5, pc}
 436              	.L79:
 437              		.align	2
 438              	.L78:
 439 0050 64000000 		.word	.LC3
 440              		.size	_ZN3PID20SetActiveTemperatureEf, .-_ZN3PID20SetActiveTemperatureEf
 441              		.section	.text._ZN3PID21SetStandbyTemperatureEf,"ax",%progbits
 442              		.align	2
 443              		.global	_ZN3PID21SetStandbyTemperatureEf
 444              		.thumb
 445              		.thumb_func
 446              		.type	_ZN3PID21SetStandbyTemperatureEf, %function
 447              	_ZN3PID21SetStandbyTemperatureEf:
 448              		@ args = 0, pretend = 0, frame = 0
 449              		@ frame_needed = 0, uses_anonymous_args = 0
 450 0000 30B5     		push	{r4, r5, lr}
 451 0002 0446     		mov	r4, r0
 452 0004 85B0     		sub	sp, sp, #20
 453 0006 C068     		ldr	r0, [r0, #12]	@ float
 454 0008 0D46     		mov	r5, r1
 455 000a FFF7FEFF 		bl	__aeabi_fcmplt
 456 000e 78B9     		cbnz	r0, .L86
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 9


 457 0010 94F87430 		ldrb	r3, [r4, #116]	@ zero_extendqisi2
 458 0014 A560     		str	r5, [r4, #8]	@ float
 459 0016 012B     		cmp	r3, #1
 460 0018 02D9     		bls	.L80
 461 001a 94F87530 		ldrb	r3, [r4, #117]	@ zero_extendqisi2
 462 001e 0BB1     		cbz	r3, .L87
 463              	.L80:
 464 0020 05B0     		add	sp, sp, #20
 465              		@ sp needed
 466 0022 30BD     		pop	{r4, r5, pc}
 467              	.L87:
 468 0024 2046     		mov	r0, r4
 469 0026 05B0     		add	sp, sp, #20
 470              		@ sp needed
 471 0028 BDE83040 		pop	{r4, r5, lr}
 472 002c FFF7FEBF 		b	_ZN3PID8SwitchOnEv
 473              	.L86:
 474 0030 2846     		mov	r0, r5
 475 0032 FFF7FEFF 		bl	__aeabi_f2d
 476 0036 2368     		ldr	r3, [r4]
 477 0038 94F97220 		ldrsb	r2, [r4, #114]
 478 003c CDE90001 		strd	r0, [sp]
 479 0040 0292     		str	r2, [sp, #8]
 480 0042 1846     		mov	r0, r3
 481 0044 0621     		movs	r1, #6
 482 0046 024A     		ldr	r2, .L88
 483 0048 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 484 004c 05B0     		add	sp, sp, #20
 485              		@ sp needed
 486 004e 30BD     		pop	{r4, r5, pc}
 487              	.L89:
 488              		.align	2
 489              	.L88:
 490 0050 64000000 		.word	.LC3
 491              		.size	_ZN3PID21SetStandbyTemperatureEf, .-_ZN3PID21SetStandbyTemperatureEf
 492              		.section	.text._ZN3PID8ActivateEv,"ax",%progbits
 493              		.align	2
 494              		.global	_ZN3PID8ActivateEv
 495              		.thumb
 496              		.thumb_func
 497              		.type	_ZN3PID8ActivateEv, %function
 498              	_ZN3PID8ActivateEv:
 499              		@ args = 0, pretend = 0, frame = 0
 500              		@ frame_needed = 0, uses_anonymous_args = 0
 501              		@ link register save eliminated.
 502 0000 90F87420 		ldrb	r2, [r0, #116]	@ zero_extendqisi2
 503 0004 02B9     		cbnz	r2, .L92
 504 0006 7047     		bx	lr
 505              	.L92:
 506 0008 0122     		movs	r2, #1
 507 000a 80F87520 		strb	r2, [r0, #117]
 508 000e FFF7FEBF 		b	_ZN3PID8SwitchOnEv
 509              		.size	_ZN3PID8ActivateEv, .-_ZN3PID8ActivateEv
 510 0012 00BF     		.section	.text._ZN3PID7StandbyEv,"ax",%progbits
 511              		.align	2
 512              		.global	_ZN3PID7StandbyEv
 513              		.thumb
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 10


 514              		.thumb_func
 515              		.type	_ZN3PID7StandbyEv, %function
 516              	_ZN3PID7StandbyEv:
 517              		@ args = 0, pretend = 0, frame = 0
 518              		@ frame_needed = 0, uses_anonymous_args = 0
 519              		@ link register save eliminated.
 520 0000 90F87420 		ldrb	r2, [r0, #116]	@ zero_extendqisi2
 521 0004 02B9     		cbnz	r2, .L95
 522 0006 7047     		bx	lr
 523              	.L95:
 524 0008 0022     		movs	r2, #0
 525 000a 80F87520 		strb	r2, [r0, #117]
 526 000e FFF7FEBF 		b	_ZN3PID8SwitchOnEv
 527              		.size	_ZN3PID7StandbyEv, .-_ZN3PID7StandbyEv
 528 0012 00BF     		.section	.text._ZN3PID10ResetFaultEv,"ax",%progbits
 529              		.align	2
 530              		.global	_ZN3PID10ResetFaultEv
 531              		.thumb
 532              		.thumb_func
 533              		.type	_ZN3PID10ResetFaultEv, %function
 534              	_ZN3PID10ResetFaultEv:
 535              		@ args = 0, pretend = 0, frame = 0
 536              		@ frame_needed = 0, uses_anonymous_args = 0
 537 0000 10B5     		push	{r4, lr}
 538 0002 0123     		movs	r3, #1
 539 0004 80F87430 		strb	r3, [r0, #116]
 540 0008 0446     		mov	r4, r0
 541 000a FFF7FEFF 		bl	_ZN3PID9SwitchOffEv
 542 000e 0023     		movs	r3, #0
 543 0010 84F87730 		strb	r3, [r4, #119]
 544 0014 10BD     		pop	{r4, pc}
 545              		.size	_ZN3PID10ResetFaultEv, .-_ZN3PID10ResetFaultEv
 546              		.global	__aeabi_ui2f
 547              		.global	__aeabi_fmul
 548              		.global	__aeabi_fdiv
 549 0016 00BF     		.section	.text._ZNK3PID13GetAveragePWMEv,"ax",%progbits
 550              		.align	2
 551              		.global	_ZNK3PID13GetAveragePWMEv
 552              		.thumb
 553              		.thumb_func
 554              		.type	_ZNK3PID13GetAveragePWMEv, %function
 555              	_ZNK3PID13GetAveragePWMEv:
 556              		@ args = 0, pretend = 0, frame = 0
 557              		@ frame_needed = 0, uses_anonymous_args = 0
 558 0000 10B5     		push	{r4, lr}
 559 0002 0368     		ldr	r3, [r0]
 560 0004 0446     		mov	r4, r0
 561 0006 D3F84006 		ldr	r0, [r3, #1600]
 562 000a FFF7FEFF 		bl	__aeabi_ui2f
 563 000e 616E     		ldr	r1, [r4, #100]	@ float
 564 0010 FFF7FEFF 		bl	__aeabi_fmul
 565 0014 0149     		ldr	r1, .L98
 566 0016 FFF7FEFF 		bl	__aeabi_fdiv
 567 001a 10BD     		pop	{r4, pc}
 568              	.L99:
 569              		.align	2
 570              	.L98:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 11


 571 001c 00409C45 		.word	1167867904
 572              		.size	_ZNK3PID13GetAveragePWMEv, .-_ZNK3PID13GetAveragePWMEv
 573              		.global	__aeabi_dmul
 574              		.global	__aeabi_d2f
 575              		.global	__aeabi_fcmpge
 576              		.global	__aeabi_fsub
 577              		.section	.text._ZNK3PID22GetExpectedHeatingRateEv,"ax",%progbits
 578              		.align	2
 579              		.global	_ZNK3PID22GetExpectedHeatingRateEv
 580              		.thumb
 581              		.thumb_func
 582              		.type	_ZNK3PID22GetExpectedHeatingRateEv, %function
 583              	_ZNK3PID22GetExpectedHeatingRateEv:
 584              		@ args = 0, pretend = 0, frame = 0
 585              		@ frame_needed = 0, uses_anonymous_args = 0
 586 0000 70B5     		push	{r4, r5, r6, lr}
 587 0002 0646     		mov	r6, r0
 588 0004 006B     		ldr	r0, [r0, #48]	@ float
 589 0006 FFF7FEFF 		bl	__aeabi_f2d
 590 000a 0022     		movs	r2, #0
 591 000c 1A4B     		ldr	r3, .L106
 592 000e FFF7FEFF 		bl	__aeabi_dmul
 593 0012 3368     		ldr	r3, [r6]
 594 0014 0446     		mov	r4, r0
 595 0016 D3F84006 		ldr	r0, [r3, #1600]
 596 001a 0D46     		mov	r5, r1
 597 001c FFF7FEFF 		bl	__aeabi_ui2f
 598 0020 716E     		ldr	r1, [r6, #100]	@ float
 599 0022 FFF7FEFF 		bl	__aeabi_fmul
 600 0026 1549     		ldr	r1, .L106+4
 601 0028 FFF7FEFF 		bl	__aeabi_fdiv
 602 002c FFF7FEFF 		bl	__aeabi_f2d
 603 0030 0246     		mov	r2, r0
 604 0032 0B46     		mov	r3, r1
 605 0034 2046     		mov	r0, r4
 606 0036 2946     		mov	r1, r5
 607 0038 FFF7FEFF 		bl	__aeabi_dmul
 608 003c FFF7FEFF 		bl	__aeabi_d2f
 609 0040 0F49     		ldr	r1, .L106+8
 610 0042 0446     		mov	r4, r0
 611 0044 756B     		ldr	r5, [r6, #52]	@ float
 612 0046 FFF7FEFF 		bl	__aeabi_fcmpge
 613 004a 98B1     		cbz	r0, .L105
 614 004c 2046     		mov	r0, r4
 615 004e 0D49     		ldr	r1, .L106+12
 616 0050 FFF7FEFF 		bl	__aeabi_fadd
 617 0054 B169     		ldr	r1, [r6, #24]	@ float
 618 0056 FFF7FEFF 		bl	__aeabi_fsub
 619 005a 2946     		mov	r1, r5
 620 005c 0646     		mov	r6, r0
 621 005e 2046     		mov	r0, r4
 622 0060 FFF7FEFF 		bl	__aeabi_fdiv
 623 0064 0146     		mov	r1, r0
 624 0066 3046     		mov	r0, r6
 625 0068 FFF7FEFF 		bl	__aeabi_fmul
 626 006c 2146     		mov	r1, r4
 627 006e FFF7FEFF 		bl	__aeabi_fdiv
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 12


 628 0072 70BD     		pop	{r4, r5, r6, pc}
 629              	.L105:
 630 0074 0020     		movs	r0, #0
 631 0076 70BD     		pop	{r4, r5, r6, pc}
 632              	.L107:
 633              		.align	2
 634              	.L106:
 635 0078 0000E83F 		.word	1072168960
 636 007c 00409C45 		.word	1167867904
 637 0080 0000A041 		.word	1101004800
 638 0084 0000C841 		.word	1103626240
 639              		.size	_ZNK3PID22GetExpectedHeatingRateEv, .-_ZNK3PID22GetExpectedHeatingRateEv
 640              		.global	__aeabi_dcmpgt
 641              		.global	__aeabi_fcmpun
 642              		.section	.text._ZN3PID13StartAutoTuneEffR9StringRef,"ax",%progbits
 643              		.align	2
 644              		.global	_ZN3PID13StartAutoTuneEffR9StringRef
 645              		.thumb
 646              		.thumb_func
 647              		.type	_ZN3PID13StartAutoTuneEffR9StringRef, %function
 648              	_ZN3PID13StartAutoTuneEffR9StringRef:
 649              		@ args = 0, pretend = 0, frame = 0
 650              		@ frame_needed = 0, uses_anonymous_args = 0
 651 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 652 0004 90F84070 		ldrb	r7, [r0, #64]	@ zero_extendqisi2
 653 0008 84B0     		sub	sp, sp, #16
 654 000a 0446     		mov	r4, r0
 655 000c 8846     		mov	r8, r1
 656 000e 1646     		mov	r6, r2
 657 0010 1D46     		mov	r5, r3
 658 0012 002F     		cmp	r7, #0
 659 0014 61D0     		beq	.L124
 660 0016 006E     		ldr	r0, [r0, #96]	@ float
 661 0018 0021     		movs	r1, #0
 662 001a FFF7FEFF 		bl	__aeabi_fcmpgt
 663 001e 40B1     		cbz	r0, .L125
 664              	.L110:
 665 0020 94F97220 		ldrsb	r2, [r4, #114]
 666 0024 3A49     		ldr	r1, .L127+8
 667 0026 2846     		mov	r0, r5
 668 0028 04B0     		add	sp, sp, #16
 669              		@ sp needed
 670 002a BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 671 002e FFF7FEBF 		b	_ZN9StringRef6printfEPKcz
 672              	.L125:
 673 0032 2368     		ldr	r3, [r4]
 674 0034 D3F84006 		ldr	r0, [r3, #1600]
 675 0038 FFF7FEFF 		bl	__aeabi_ui2f
 676 003c 616E     		ldr	r1, [r4, #100]	@ float
 677 003e FFF7FEFF 		bl	__aeabi_fmul
 678 0042 3449     		ldr	r1, .L127+12
 679 0044 FFF7FEFF 		bl	__aeabi_fdiv
 680 0048 FFF7FEFF 		bl	__aeabi_f2d
 681 004c 2EA3     		adr	r3, .L127
 682 004e D3E90023 		ldrd	r2, [r3]
 683 0052 FFF7FEFF 		bl	__aeabi_dcmpgt
 684 0056 0028     		cmp	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 13


 685 0058 E2D1     		bne	.L110
 686 005a 2046     		mov	r0, r4
 687 005c FFF7FEFF 		bl	_ZN3PID15ReadTemperatureEv
 688 0060 0346     		mov	r3, r0
 689 0062 0028     		cmp	r0, #0
 690 0064 42D1     		bne	.L126
 691 0066 0521     		movs	r1, #5
 692 0068 2B4A     		ldr	r2, .L127+16
 693 006a 84F87630 		strb	r3, [r4, #118]
 694 006e 84F87410 		strb	r1, [r4, #116]
 695 0072 4FF40070 		mov	r0, #512
 696 0076 1360     		str	r3, [r2]
 697 0078 FFF7FEFF 		bl	_Znaj
 698 007c 2268     		ldr	r2, [r4]
 699 007e 0346     		mov	r3, r0
 700 0080 D2F840E6 		ldr	lr, [r2, #1600]
 701 0084 2548     		ldr	r0, .L127+20
 702 0086 A169     		ldr	r1, [r4, #24]	@ float
 703 0088 254A     		ldr	r2, .L127+24
 704 008a 0360     		str	r3, [r0]
 705 008c 1960     		str	r1, [r3]	@ float
 706 008e 3046     		mov	r0, r6
 707 0090 3146     		mov	r1, r6
 708 0092 C2F800E0 		str	lr, [r2]
 709 0096 E76B     		ldr	r7, [r4, #60]	@ float
 710 0098 FFF7FEFF 		bl	__aeabi_fcmpun
 711 009c 20B9     		cbnz	r0, .L116
 712 009e 3846     		mov	r0, r7
 713 00a0 3146     		mov	r1, r6
 714 00a2 FFF7FEFF 		bl	__aeabi_fcmpgt
 715 00a6 00B1     		cbz	r0, .L112
 716              	.L116:
 717 00a8 3746     		mov	r7, r6
 718              	.L112:
 719 00aa 1E4B     		ldr	r3, .L127+28
 720 00ac 1E4A     		ldr	r2, .L127+32
 721 00ae C3F80080 		str	r8, [r3]	@ float
 722 00b2 1760     		str	r7, [r2]	@ float
 723 00b4 4046     		mov	r0, r8
 724 00b6 FFF7FEFF 		bl	__aeabi_f2d
 725 00ba CDE90001 		strd	r0, [sp]
 726 00be 3046     		mov	r0, r6
 727 00c0 FFF7FEFF 		bl	__aeabi_f2d
 728 00c4 94F97220 		ldrsb	r2, [r4, #114]
 729 00c8 CDE90201 		strd	r0, [sp, #8]
 730 00cc 2846     		mov	r0, r5
 731 00ce 1749     		ldr	r1, .L127+36
 732 00d0 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 733 00d4 04B0     		add	sp, sp, #16
 734              		@ sp needed
 735 00d6 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 736              	.L124:
 737 00da 94F97220 		ldrsb	r2, [r4, #114]
 738 00de 1449     		ldr	r1, .L127+40
 739 00e0 1846     		mov	r0, r3
 740 00e2 04B0     		add	sp, sp, #16
 741              		@ sp needed
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 14


 742 00e4 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 743 00e8 FFF7FEBF 		b	_ZN9StringRef6printfEPKcz
 744              	.L126:
 745 00ec 94F97240 		ldrsb	r4, [r4, #114]
 746 00f0 FFF7FEFF 		bl	_Z22TemperatureErrorString16TemperatureError
 747 00f4 0F49     		ldr	r1, .L127+44
 748 00f6 0346     		mov	r3, r0
 749 00f8 2246     		mov	r2, r4
 750 00fa 2846     		mov	r0, r5
 751 00fc 04B0     		add	sp, sp, #16
 752              		@ sp needed
 753 00fe BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 754 0102 FFF7FEBF 		b	_ZN9StringRef6printfEPKcz
 755              	.L128:
 756 0106 00BF     		.align	3
 757              	.L127:
 758 0108 7B14AE47 		.word	1202590843
 759 010c E17A943F 		.word	1066695393
 760 0110 78010000 		.word	.LC7
 761 0114 00409C45 		.word	1167867904
 762 0118 00000000 		.word	.LANCHOR1
 763 011c 00000000 		.word	.LANCHOR0
 764 0120 00000000 		.word	.LANCHOR2
 765 0124 00000000 		.word	.LANCHOR4
 766 0128 00000000 		.word	.LANCHOR3
 767 012c 14010000 		.word	.LC6
 768 0130 98000000 		.word	.LC4
 769 0134 D4000000 		.word	.LC5
 770              		.size	_ZN3PID13StartAutoTuneEffR9StringRef, .-_ZN3PID13StartAutoTuneEffR9StringRef
 771              		.section	.text._ZN3PID17GetAutoTuneStatusER9StringRef,"ax",%progbits
 772              		.align	2
 773              		.global	_ZN3PID17GetAutoTuneStatusER9StringRef
 774              		.thumb
 775              		.thumb_func
 776              		.type	_ZN3PID17GetAutoTuneStatusER9StringRef, %function
 777              	_ZN3PID17GetAutoTuneStatusER9StringRef:
 778              		@ args = 0, pretend = 0, frame = 0
 779              		@ frame_needed = 0, uses_anonymous_args = 0
 780 0000 10B5     		push	{r4, lr}
 781 0002 90F87430 		ldrb	r3, [r0, #116]	@ zero_extendqisi2
 782 0006 82B0     		sub	sp, sp, #8
 783 0008 042B     		cmp	r3, #4
 784 000a 13D8     		bhi	.L134
 785 000c 90F87630 		ldrb	r3, [r0, #118]	@ zero_extendqisi2
 786 0010 33B9     		cbnz	r3, .L135
 787 0012 0846     		mov	r0, r1
 788 0014 0D49     		ldr	r1, .L136
 789 0016 02B0     		add	sp, sp, #8
 790              		@ sp needed
 791 0018 BDE81040 		pop	{r4, lr}
 792 001c FFF7FEBF 		b	_ZN9StringRef6printfEPKcz
 793              	.L135:
 794 0020 90F97220 		ldrsb	r2, [r0, #114]
 795 0024 0846     		mov	r0, r1
 796 0026 0A49     		ldr	r1, .L136+4
 797 0028 1346     		mov	r3, r2
 798 002a 02B0     		add	sp, sp, #8
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 15


 799              		@ sp needed
 800 002c BDE81040 		pop	{r4, lr}
 801 0030 FFF7FEBF 		b	_ZN9StringRef6printfEPKcz
 802              	.L134:
 803 0034 0424     		movs	r4, #4
 804 0036 90F97220 		ldrsb	r2, [r0, #114]
 805 003a 043B     		subs	r3, r3, #4
 806 003c 0846     		mov	r0, r1
 807 003e 0094     		str	r4, [sp]
 808 0040 0449     		ldr	r1, .L136+8
 809 0042 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 810 0046 02B0     		add	sp, sp, #8
 811              		@ sp needed
 812 0048 10BD     		pop	{r4, pc}
 813              	.L137:
 814 004a 00BF     		.align	2
 815              	.L136:
 816 004c 18020000 		.word	.LC10
 817 0050 E0010000 		.word	.LC9
 818 0054 B4010000 		.word	.LC8
 819              		.size	_ZN3PID17GetAutoTuneStatusER9StringRef, .-_ZN3PID17GetAutoTuneStatusER9StringRef
 820              		.global	__aeabi_fcmple
 821              		.section	.text._ZN3PID14ReadingsStableEjf,"ax",%progbits
 822              		.align	2
 823              		.global	_ZN3PID14ReadingsStableEjf
 824              		.thumb
 825              		.thumb_func
 826              		.type	_ZN3PID14ReadingsStableEjf, %function
 827              	_ZN3PID14ReadingsStableEjf:
 828              		@ args = 0, pretend = 0, frame = 0
 829              		@ frame_needed = 0, uses_anonymous_args = 0
 830 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 831 0004 1D4B     		ldr	r3, .L150
 832 0006 8946     		mov	r9, r1
 833 0008 1B68     		ldr	r3, [r3]
 834 000a 8BB3     		cbz	r3, .L145
 835 000c 1C4A     		ldr	r2, .L150+4
 836 000e 1268     		ldr	r2, [r2]
 837 0010 8242     		cmp	r2, r0
 838 0012 2AD3     		bcc	.L146
 839 0014 101A     		subs	r0, r2, r0
 840 0016 411C     		adds	r1, r0, #1
 841 0018 8A42     		cmp	r2, r1
 842 001a 03EB8005 		add	r5, r3, r0, lsl #2
 843 001e 53F82060 		ldr	r6, [r3, r0, lsl #2]	@ float
 844 0022 28D9     		bls	.L147
 845 0024 03EB8208 		add	r8, r3, r2, lsl #2
 846 0028 A8F10408 		sub	r8, r8, #4
 847 002c 3746     		mov	r7, r6
 848              	.L143:
 849 002e 55F8044F 		ldr	r4, [r5, #4]!	@ float
 850 0032 3146     		mov	r1, r6
 851 0034 2046     		mov	r0, r4
 852 0036 FFF7FEFF 		bl	__aeabi_fcmplt
 853 003a 3946     		mov	r1, r7
 854 003c 00B1     		cbz	r0, .L141
 855 003e 2646     		mov	r6, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 16


 856              	.L141:
 857 0040 2046     		mov	r0, r4
 858 0042 FFF7FEFF 		bl	__aeabi_fcmpgt
 859 0046 00B1     		cbz	r0, .L142
 860 0048 2746     		mov	r7, r4
 861              	.L142:
 862 004a 4545     		cmp	r5, r8
 863 004c EFD1     		bne	.L143
 864              	.L140:
 865 004e 3146     		mov	r1, r6
 866 0050 3846     		mov	r0, r7
 867 0052 FFF7FEFF 		bl	__aeabi_fsub
 868 0056 4946     		mov	r1, r9
 869 0058 FFF7FEFF 		bl	__aeabi_fcmple
 870 005c 4FF00103 		mov	r3, #1
 871 0060 00B9     		cbnz	r0, .L144
 872 0062 0346     		mov	r3, r0
 873              	.L144:
 874 0064 D8B2     		uxtb	r0, r3
 875 0066 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 876              	.L146:
 877 006a 0020     		movs	r0, #0
 878 006c BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 879              	.L145:
 880 0070 1846     		mov	r0, r3
 881 0072 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 882              	.L147:
 883 0076 3746     		mov	r7, r6
 884 0078 E9E7     		b	.L140
 885              	.L151:
 886 007a 00BF     		.align	2
 887              	.L150:
 888 007c 00000000 		.word	.LANCHOR0
 889 0080 00000000 		.word	.LANCHOR1
 890              		.size	_ZN3PID14ReadingsStableEjf, .-_ZN3PID14ReadingsStableEjf
 891              		.section	.text._ZN3PID12IdentifyPeakEj,"ax",%progbits
 892              		.align	2
 893              		.global	_ZN3PID12IdentifyPeakEj
 894              		.thumb
 895              		.thumb_func
 896              		.type	_ZN3PID12IdentifyPeakEj, %function
 897              	_ZN3PID12IdentifyPeakEj:
 898              		@ args = 0, pretend = 0, frame = 8
 899              		@ frame_needed = 0, uses_anonymous_args = 0
 900 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 901 0004 214B     		ldr	r3, .L166
 902 0006 83B0     		sub	sp, sp, #12
 903 0008 D3F80090 		ldr	r9, [r3]
 904 000c 0746     		mov	r7, r0
 905 000e 4845     		cmp	r0, r9
 906 0010 39D8     		bhi	.L162
 907 0012 1F4B     		ldr	r3, .L166+4
 908 0014 8200     		lsls	r2, r0, #2
 909 0016 1E68     		ldr	r6, [r3]
 910 0018 DFF87880 		ldr	r8, .L166+8
 911 001c 4FF0FF33 		mov	r3, #-1
 912 0020 0192     		str	r2, [sp, #4]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 17


 913 0022 0025     		movs	r5, #0
 914 0024 0093     		str	r3, [sp]
 915              	.L154:
 916 0026 37B3     		cbz	r7, .L164
 917 0028 019C     		ldr	r4, [sp, #4]
 918 002a B246     		mov	r10, r6
 919 002c 3444     		add	r4, r4, r6
 920 002e 4FF0000B 		mov	fp, #0
 921              	.L161:
 922 0032 5AF8041B 		ldr	r1, [r10], #4	@ float
 923 0036 5846     		mov	r0, fp
 924 0038 FFF7FEFF 		bl	__aeabi_fadd
 925 003c 5445     		cmp	r4, r10
 926 003e 8346     		mov	fp, r0
 927 0040 F7D1     		bne	.L161
 928              	.L160:
 929 0042 5846     		mov	r0, fp
 930 0044 4146     		mov	r1, r8
 931 0046 FFF7FEFF 		bl	__aeabi_fcmpge
 932 004a 30B1     		cbz	r0, .L156
 933 004c 009A     		ldr	r2, [sp]
 934 004e 02F1010A 		add	r10, r2, #1
 935 0052 5545     		cmp	r5, r10
 936 0054 12D1     		bne	.L163
 937 0056 D846     		mov	r8, fp
 938 0058 0095     		str	r5, [sp]
 939              	.L156:
 940 005a 0135     		adds	r5, r5, #1
 941 005c EB19     		adds	r3, r5, r7
 942 005e 4B45     		cmp	r3, r9
 943 0060 06F10406 		add	r6, r6, #4
 944 0064 DFD9     		bls	.L154
 945 0066 DDF800A0 		ldr	r10, [sp]
 946              	.L153:
 947 006a 781E     		subs	r0, r7, #1
 948 006c 0AEB5000 		add	r0, r10, r0, lsr #1
 949 0070 03B0     		add	sp, sp, #12
 950              		@ sp needed
 951 0072 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 952              	.L164:
 953 0076 4FF0000B 		mov	fp, #0
 954 007a E2E7     		b	.L160
 955              	.L163:
 956 007c 4FF0FF30 		mov	r0, #-1
 957 0080 03B0     		add	sp, sp, #12
 958              		@ sp needed
 959 0082 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 960              	.L162:
 961 0086 4FF0FF3A 		mov	r10, #-1
 962 008a EEE7     		b	.L153
 963              	.L167:
 964              		.align	2
 965              	.L166:
 966 008c 00000000 		.word	.LANCHOR1
 967 0090 00000000 		.word	.LANCHOR0
 968 0094 00C079C4 		.word	-998653952
 969              		.size	_ZN3PID12IdentifyPeakEj, .-_ZN3PID12IdentifyPeakEj
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 18


 970              		.section	.text._ZN3PID16GetPeakTempIndexEv,"ax",%progbits
 971              		.align	2
 972              		.global	_ZN3PID16GetPeakTempIndexEv
 973              		.thumb
 974              		.thumb_func
 975              		.type	_ZN3PID16GetPeakTempIndexEv, %function
 976              	_ZN3PID16GetPeakTempIndexEv:
 977              		@ args = 0, pretend = 0, frame = 0
 978              		@ frame_needed = 0, uses_anonymous_args = 0
 979 0000 0F4B     		ldr	r3, .L175
 980 0002 10B5     		push	{r4, lr}
 981 0004 1C68     		ldr	r4, [r3]
 982 0006 0E2C     		cmp	r4, #14
 983 0008 16D9     		bls	.L171
 984 000a 0120     		movs	r0, #1
 985 000c FFF7FEFF 		bl	_ZN3PID12IdentifyPeakEj
 986 0010 0028     		cmp	r0, #0
 987 0012 05DB     		blt	.L174
 988              	.L170:
 989 0014 831D     		adds	r3, r0, #6
 990 0016 9C42     		cmp	r4, r3
 991 0018 98BF     		it	ls
 992 001a 4FF0FF30 		movls	r0, #-1
 993 001e 10BD     		pop	{r4, pc}
 994              	.L174:
 995 0020 0320     		movs	r0, #3
 996 0022 FFF7FEFF 		bl	_ZN3PID12IdentifyPeakEj
 997 0026 0028     		cmp	r0, #0
 998 0028 F4DA     		bge	.L170
 999 002a 0520     		movs	r0, #5
 1000 002c FFF7FEFF 		bl	_ZN3PID12IdentifyPeakEj
 1001 0030 0028     		cmp	r0, #0
 1002 0032 EFDA     		bge	.L170
 1003 0034 0020     		movs	r0, #0
 1004 0036 10BD     		pop	{r4, pc}
 1005              	.L171:
 1006 0038 4FF0FF30 		mov	r0, #-1
 1007 003c 10BD     		pop	{r4, pc}
 1008              	.L176:
 1009 003e 00BF     		.align	2
 1010              	.L175:
 1011 0040 00000000 		.word	.LANCHOR1
 1012              		.size	_ZN3PID16GetPeakTempIndexEv, .-_ZN3PID16GetPeakTempIndexEv
 1013              		.section	.text._ZN3PID13DisplayBufferEPKc,"ax",%progbits
 1014              		.align	2
 1015              		.global	_ZN3PID13DisplayBufferEPKc
 1016              		.thumb
 1017              		.thumb_func
 1018              		.type	_ZN3PID13DisplayBufferEPKc, %function
 1019              	_ZN3PID13DisplayBufferEPKc:
 1020              		@ args = 0, pretend = 0, frame = 8
 1021              		@ frame_needed = 0, uses_anonymous_args = 0
 1022 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1023 0004 84B0     		sub	sp, sp, #16
 1024 0006 0746     		mov	r7, r0
 1025 0008 03A8     		add	r0, sp, #12
 1026 000a 0C46     		mov	r4, r1
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 19


 1027 000c FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 1028 0010 10B9     		cbnz	r0, .L185
 1029 0012 04B0     		add	sp, sp, #16
 1030              		@ sp needed
 1031 0014 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1032              	.L185:
 1033 0018 194B     		ldr	r3, .L186
 1034 001a 039D     		ldr	r5, [sp, #12]
 1035 001c 1868     		ldr	r0, [r3]
 1036 001e FFF7FEFF 		bl	__aeabi_ui2f
 1037 0022 1849     		ldr	r1, .L186+4
 1038 0024 FFF7FEFF 		bl	__aeabi_fmul
 1039 0028 FFF7FEFF 		bl	__aeabi_f2d
 1040 002c 164E     		ldr	r6, .L186+8
 1041 002e CDE90001 		strd	r0, [sp]
 1042 0032 2246     		mov	r2, r4
 1043 0034 2846     		mov	r0, r5
 1044 0036 1549     		ldr	r1, .L186+12
 1045 0038 FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1046 003c 3368     		ldr	r3, [r6]
 1047 003e 9BB1     		cbz	r3, .L180
 1048 0040 DFF85480 		ldr	r8, .L186+24
 1049 0044 0024     		movs	r4, #0
 1050              	.L181:
 1051 0046 D8F80030 		ldr	r3, [r8]
 1052 004a 039D     		ldr	r5, [sp, #12]
 1053 004c 53F82400 		ldr	r0, [r3, r4, lsl #2]	@ float
 1054 0050 FFF7FEFF 		bl	__aeabi_f2d
 1055 0054 0B46     		mov	r3, r1
 1056 0056 0246     		mov	r2, r0
 1057 0058 0D49     		ldr	r1, .L186+16
 1058 005a 2846     		mov	r0, r5
 1059 005c FFF7FEFF 		bl	_ZN12OutputBuffer4catfEPKcz
 1060 0060 3368     		ldr	r3, [r6]
 1061 0062 0134     		adds	r4, r4, #1
 1062 0064 A342     		cmp	r3, r4
 1063 0066 EED8     		bhi	.L181
 1064              	.L180:
 1065 0068 0398     		ldr	r0, [sp, #12]
 1066 006a 0A49     		ldr	r1, .L186+20
 1067 006c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 1068 0070 3868     		ldr	r0, [r7]
 1069 0072 0221     		movs	r1, #2
 1070 0074 039A     		ldr	r2, [sp, #12]
 1071 0076 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 1072 007a 04B0     		add	sp, sp, #16
 1073              		@ sp needed
 1074 007c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1075              	.L187:
 1076              		.align	2
 1077              	.L186:
 1078 0080 00000000 		.word	.LANCHOR2
 1079 0084 6F12833A 		.word	981668463
 1080 0088 00000000 		.word	.LANCHOR1
 1081 008c 30020000 		.word	.LC11
 1082 0090 54020000 		.word	.LC13
 1083 0094 50020000 		.word	.LC12
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 20


 1084 0098 00000000 		.word	.LANCHOR0
 1085              		.size	_ZN3PID13DisplayBufferEPKc, .-_ZN3PID13DisplayBufferEPKc
 1086              		.global	__aeabi_ddiv
 1087              		.global	__aeabi_ui2d
 1088              		.global	__aeabi_dsub
 1089              		.section	.text._ZN3PID14CalculateModelEv,"ax",%progbits
 1090              		.align	2
 1091              		.global	_ZN3PID14CalculateModelEv
 1092              		.thumb
 1093              		.thumb_func
 1094              		.type	_ZN3PID14CalculateModelEv, %function
 1095              	_ZN3PID14CalculateModelEv:
 1096              		@ args = 0, pretend = 0, frame = 0
 1097              		@ frame_needed = 0, uses_anonymous_args = 0
 1098 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1099 0004 624B     		ldr	r3, .L197+8
 1100 0006 87B0     		sub	sp, sp, #28
 1101 0008 B3F84030 		ldrh	r3, [r3, #64]
 1102 000c 0646     		mov	r6, r0
 1103 000e 9B06     		lsls	r3, r3, #26
 1104 0010 00F1B380 		bmi	.L195
 1105              	.L189:
 1106 0014 5F4A     		ldr	r2, .L197+12
 1107 0016 604B     		ldr	r3, .L197+16
 1108 0018 D2F800A0 		ldr	r10, [r2]
 1109 001c 1868     		ldr	r0, [r3]
 1110 001e 0AF1FF33 		add	r3, r10, #-1
 1111 0022 00FB03F0 		mul	r0, r0, r3
 1112 0026 FFF7FEFF 		bl	__aeabi_ui2f
 1113 002a FFF7FEFF 		bl	__aeabi_f2d
 1114 002e DFF89891 		ldr	r9, .L197+64
 1115 0032 5A4B     		ldr	r3, .L197+20
 1116 0034 D9F80080 		ldr	r8, [r9]	@ float
 1117 0038 1F68     		ldr	r7, [r3]
 1118 003a 0446     		mov	r4, r0
 1119 003c 0D46     		mov	r5, r1
 1120 003e 3868     		ldr	r0, [r7]	@ float
 1121 0040 4146     		mov	r1, r8
 1122 0042 FFF7FEFF 		bl	__aeabi_fsub
 1123 0046 0AF18043 		add	r3, r10, #1073741824
 1124 004a 013B     		subs	r3, r3, #1
 1125 004c 4146     		mov	r1, r8
 1126 004e 8346     		mov	fp, r0
 1127 0050 57F82300 		ldr	r0, [r7, r3, lsl #2]	@ float
 1128 0054 FFF7FEFF 		bl	__aeabi_fsub
 1129 0058 0146     		mov	r1, r0
 1130 005a 5846     		mov	r0, fp
 1131 005c FFF7FEFF 		bl	__aeabi_fdiv
 1132 0060 FFF7FEFF 		bl	__aeabi_f2d
 1133 0064 FFF7FEFF 		bl	log
 1134 0068 0022     		movs	r2, #0
 1135 006a 4D4B     		ldr	r3, .L197+24
 1136 006c FFF7FEFF 		bl	__aeabi_dmul
 1137 0070 0246     		mov	r2, r0
 1138 0072 0B46     		mov	r3, r1
 1139 0074 2046     		mov	r0, r4
 1140 0076 2946     		mov	r1, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 21


 1141 0078 FFF7FEFF 		bl	__aeabi_ddiv
 1142 007c FFF7FEFF 		bl	__aeabi_d2f
 1143 0080 484B     		ldr	r3, .L197+28
 1144 0082 0746     		mov	r7, r0
 1145 0084 D3F800A0 		ldr	r10, [r3]
 1146 0088 5046     		mov	r0, r10
 1147 008a FFF7FEFF 		bl	__aeabi_ui2f
 1148 008e FFF7FEFF 		bl	__aeabi_f2d
 1149 0092 3DA3     		adr	r3, .L197
 1150 0094 D3E90023 		ldrd	r2, [r3]
 1151 0098 FFF7FEFF 		bl	__aeabi_dmul
 1152 009c FFF7FEFF 		bl	__aeabi_d2f
 1153 00a0 414B     		ldr	r3, .L197+32
 1154 00a2 D9F80010 		ldr	r1, [r9]	@ float
 1155 00a6 8046     		mov	r8, r0
 1156 00a8 1868     		ldr	r0, [r3]	@ float
 1157 00aa FFF7FEFF 		bl	__aeabi_fsub
 1158 00ae FFF7FEFF 		bl	__aeabi_f2d
 1159 00b2 3E4B     		ldr	r3, .L197+36
 1160 00b4 0446     		mov	r4, r0
 1161 00b6 1868     		ldr	r0, [r3]
 1162 00b8 0D46     		mov	r5, r1
 1163 00ba CAEB0000 		rsb	r0, r10, r0
 1164 00be FFF7FEFF 		bl	__aeabi_ui2d
 1165 00c2 31A3     		adr	r3, .L197
 1166 00c4 D3E90023 		ldrd	r2, [r3]
 1167 00c8 FFF7FEFF 		bl	__aeabi_dmul
 1168 00cc FFF7FEFF 		bl	__aeabi_d2f
 1169 00d0 3946     		mov	r1, r7
 1170 00d2 00F10040 		add	r0, r0, #-2147483648
 1171 00d6 FFF7FEFF 		bl	__aeabi_fdiv
 1172 00da FFF7FEFF 		bl	__aeabi_f2d
 1173 00de FFF7FEFF 		bl	exp
 1174 00e2 0246     		mov	r2, r0
 1175 00e4 0B46     		mov	r3, r1
 1176 00e6 0020     		movs	r0, #0
 1177 00e8 3149     		ldr	r1, .L197+40
 1178 00ea FFF7FEFF 		bl	__aeabi_dsub
 1179 00ee 0246     		mov	r2, r0
 1180 00f0 0B46     		mov	r3, r1
 1181 00f2 2046     		mov	r0, r4
 1182 00f4 2946     		mov	r1, r5
 1183 00f6 FFF7FEFF 		bl	__aeabi_ddiv
 1184 00fa FFF7FEFF 		bl	__aeabi_d2f
 1185 00fe F56B     		ldr	r5, [r6, #60]	@ float
 1186 0100 0446     		mov	r4, r0
 1187 0102 0120     		movs	r0, #1
 1188 0104 0190     		str	r0, [sp, #4]
 1189 0106 2146     		mov	r1, r4
 1190 0108 3A46     		mov	r2, r7
 1191 010a 4346     		mov	r3, r8
 1192 010c 0095     		str	r5, [sp]	@ float
 1193 010e 3046     		mov	r0, r6
 1194 0110 FFF7FEFF 		bl	_ZN3PID8SetModelEffffb
 1195 0114 86F87600 		strb	r0, [r6, #118]
 1196 0118 C8B9     		cbnz	r0, .L196
 1197 011a 2046     		mov	r0, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 22


 1198 011c FFF7FEFF 		bl	__aeabi_f2d
 1199 0120 CDE90001 		strd	r0, [sp]
 1200 0124 3846     		mov	r0, r7
 1201 0126 FFF7FEFF 		bl	__aeabi_f2d
 1202 012a CDE90201 		strd	r0, [sp, #8]
 1203 012e 4046     		mov	r0, r8
 1204 0130 FFF7FEFF 		bl	__aeabi_f2d
 1205 0134 3268     		ldr	r2, [r6]
 1206 0136 96F97230 		ldrsb	r3, [r6, #114]
 1207 013a CDE90401 		strd	r0, [sp, #16]
 1208 013e 1046     		mov	r0, r2
 1209 0140 0621     		movs	r1, #6
 1210 0142 1C4A     		ldr	r2, .L197+44
 1211 0144 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1212 0148 07B0     		add	sp, sp, #28
 1213              		@ sp needed
 1214 014a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1215              	.L196:
 1216 014e 3468     		ldr	r4, [r6]
 1217 0150 FFF7FEFF 		bl	millis
 1218 0154 184B     		ldr	r3, .L197+48
 1219 0156 1949     		ldr	r1, .L197+52
 1220 0158 1A68     		ldr	r2, [r3]
 1221 015a 96F97230 		ldrsb	r3, [r6, #114]
 1222 015e 801A     		subs	r0, r0, r2
 1223 0160 A1FB0052 		umull	r5, r2, r1, r0
 1224 0164 9209     		lsrs	r2, r2, #6
 1225 0166 0092     		str	r2, [sp]
 1226 0168 0193     		str	r3, [sp, #4]
 1227 016a 2046     		mov	r0, r4
 1228 016c 0621     		movs	r1, #6
 1229 016e 144A     		ldr	r2, .L197+56
 1230 0170 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1231 0174 07B0     		add	sp, sp, #28
 1232              		@ sp needed
 1233 0176 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1234              	.L195:
 1235 017a 1249     		ldr	r1, .L197+60
 1236 017c FFF7FEFF 		bl	_ZN3PID13DisplayBufferEPKc
 1237 0180 48E7     		b	.L189
 1238              	.L198:
 1239 0182 00BFAFF3 		.align	3
 1239      0080
 1240              	.L197:
 1241 0188 FCA9F1D2 		.word	-755914244
 1242 018c 4D62503F 		.word	1062232653
 1243 0190 00000000 		.word	reprap
 1244 0194 00000000 		.word	.LANCHOR1
 1245 0198 00000000 		.word	.LANCHOR2
 1246 019c 00000000 		.word	.LANCHOR0
 1247 01a0 00408F40 		.word	1083129856
 1248 01a4 00000000 		.word	.LANCHOR6
 1249 01a8 00000000 		.word	.LANCHOR7
 1250 01ac 00000000 		.word	.LANCHOR8
 1251 01b0 0000F03F 		.word	1072693248
 1252 01b4 E8020000 		.word	.LC16
 1253 01b8 00000000 		.word	.LANCHOR9
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 23


 1254 01bc D34D6210 		.word	274877907
 1255 01c0 6C020000 		.word	.LC15
 1256 01c4 5C020000 		.word	.LC14
 1257 01c8 00000000 		.word	.LANCHOR5
 1258              		.size	_ZN3PID14CalculateModelEv, .-_ZN3PID14CalculateModelEv
 1259              		.global	__aeabi_f2uiz
 1260              		.global	__aeabi_dadd
 1261 01cc AFF30080 		.section	.text._ZN3PID12DoTuningStepEv,"ax",%progbits
 1262              		.align	2
 1263              		.global	_ZN3PID12DoTuningStepEv
 1264              		.thumb
 1265              		.thumb_func
 1266              		.type	_ZN3PID12DoTuningStepEv, %function
 1267              	_ZN3PID12DoTuningStepEv:
 1268              		@ args = 0, pretend = 0, frame = 0
 1269              		@ frame_needed = 0, uses_anonymous_args = 0
 1270 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1271 0004 B24C     		ldr	r4, .L241+8
 1272 0006 83B0     		sub	sp, sp, #12
 1273 0008 2368     		ldr	r3, [r4]
 1274 000a 8046     		mov	r8, r0
 1275 000c F3B9     		cbnz	r3, .L200
 1276 000e FFF7FEFF 		bl	millis
 1277 0012 98F874C0 		ldrb	ip, [r8, #116]	@ zero_extendqisi2
 1278 0016 AF4D     		ldr	r5, .L241+12
 1279 0018 BCF1050F 		cmp	ip, #5
 1280 001c 09BF     		itett	eq
 1281 001e AE4A     		ldreq	r2, .L241+16
 1282 0020 2368     		ldrne	r3, [r4]
 1283 0022 2368     		ldreq	r3, [r4]
 1284 0024 1060     		streq	r0, [r2]
 1285 0026 802B     		cmp	r3, #128
 1286 0028 2860     		str	r0, [r5]
 1287 002a AC4F     		ldr	r7, .L241+20
 1288 002c 1FD0     		beq	.L205
 1289              	.L235:
 1290 002e 3E68     		ldr	r6, [r7]
 1291 0030 9900     		lsls	r1, r3, #2
 1292 0032 0133     		adds	r3, r3, #1
 1293              	.L206:
 1294 0034 D8F81800 		ldr	r0, [r8, #24]	@ float
 1295 0038 ACF10502 		sub	r2, ip, #5
 1296 003c 7050     		str	r0, [r6, r1]	@ float
 1297 003e 2360     		str	r3, [r4]
 1298 0040 032A     		cmp	r2, #3
 1299 0042 63D8     		bhi	.L209
 1300 0044 DFE802F0 		tbb	[pc, r2]
 1301              	.L211:
 1302 0048 91       		.byte	(.L210-.L211)/2
 1303 0049 AE       		.byte	(.L212-.L211)/2
 1304 004a 50       		.byte	(.L213-.L211)/2
 1305 004b 68       		.byte	(.L214-.L211)/2
 1306              		.align	1
 1307              	.L200:
 1308 004c FFF7FEFF 		bl	millis
 1309 0050 A34A     		ldr	r2, .L241+24
 1310 0052 2368     		ldr	r3, [r4]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 24


 1311 0054 1168     		ldr	r1, [r2]
 1312 0056 9F4D     		ldr	r5, .L241+12
 1313 0058 01FB03F1 		mul	r1, r1, r3
 1314 005c 2A68     		ldr	r2, [r5]
 1315 005e 801A     		subs	r0, r0, r2
 1316 0060 8842     		cmp	r0, r1
 1317 0062 3ED3     		bcc	.L199
 1318 0064 802B     		cmp	r3, #128
 1319 0066 98F874C0 		ldrb	ip, [r8, #116]	@ zero_extendqisi2
 1320 006a 9C4F     		ldr	r7, .L241+20
 1321 006c DFD1     		bne	.L235
 1322              	.L205:
 1323 006e 3E68     		ldr	r6, [r7]
 1324 0070 0123     		movs	r3, #1
 1325 0072 3146     		mov	r1, r6
 1326 0074 3246     		mov	r2, r6
 1327              	.L208:
 1328 0076 51F8080F 		ldr	r0, [r1, #8]!	@ float
 1329 007a 0133     		adds	r3, r3, #1
 1330 007c 402B     		cmp	r3, #64
 1331 007e 42F8040F 		str	r0, [r2, #4]!	@ float
 1332 0082 F8D1     		bne	.L208
 1333 0084 9648     		ldr	r0, .L241+24
 1334 0086 4123     		movs	r3, #65
 1335 0088 0268     		ldr	r2, [r0]
 1336 008a 4FF48071 		mov	r1, #256
 1337 008e 5200     		lsls	r2, r2, #1
 1338 0090 0260     		str	r2, [r0]
 1339 0092 CFE7     		b	.L206
 1340              	.L223:
 1341 0094 924F     		ldr	r7, .L241+24
 1342 0096 56F820E0 		ldr	lr, [r6, r0, lsl #2]	@ float
 1343 009a 3B68     		ldr	r3, [r7]
 1344 009c 914A     		ldr	r2, .L241+28
 1345 009e 03FB00F3 		mul	r3, r3, r0
 1346 00a2 DFF89092 		ldr	r9, .L241+108
 1347 00a6 D8F81800 		ldr	r0, [r8, #24]	@ float
 1348 00aa 0121     		movs	r1, #1
 1349 00ac 1360     		str	r3, [r2]
 1350 00ae 2160     		str	r1, [r4]
 1351 00b0 C9F800E0 		str	lr, [r9]	@ float
 1352 00b4 3060     		str	r0, [r6]	@ float
 1353 00b6 FFF7FEFF 		bl	millis
 1354 00ba D8F80040 		ldr	r4, [r8]
 1355 00be 0822     		movs	r2, #8
 1356 00c0 D4F84036 		ldr	r3, [r4, #1600]
 1357 00c4 2860     		str	r0, [r5]
 1358 00c6 88F87420 		strb	r2, [r8, #116]
 1359 00ca D9F80000 		ldr	r0, [r9]	@ float
 1360 00ce 3B60     		str	r3, [r7]
 1361 00d0 FFF7FEFF 		bl	__aeabi_f2d
 1362 00d4 844A     		ldr	r2, .L241+32
 1363 00d6 CDE90001 		strd	r0, [sp]
 1364 00da 2046     		mov	r0, r4
 1365 00dc 0621     		movs	r1, #6
 1366 00de FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1367              	.L199:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 25


 1368 00e2 03B0     		add	sp, sp, #12
 1369              		@ sp needed
 1370 00e4 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1371              	.L213:
 1372 00e8 FFF7FEFF 		bl	_ZN3PID16GetPeakTempIndexEv
 1373 00ec 0028     		cmp	r0, #0
 1374 00ee C0F22381 		blt	.L236
 1375 00f2 CFD1     		bne	.L223
 1376 00f4 7D4B     		ldr	r3, .L241+36
 1377 00f6 B3F84030 		ldrh	r3, [r3, #64]
 1378 00fa 9B06     		lsls	r3, r3, #26
 1379 00fc 00F1DC80 		bmi	.L237
 1380              	.L224:
 1381 0100 D8F80000 		ldr	r0, [r8]
 1382 0104 0621     		movs	r1, #6
 1383 0106 7A4A     		ldr	r2, .L241+40
 1384 0108 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1385              	.L209:
 1386 010c 4046     		mov	r0, r8
 1387 010e 03B0     		add	sp, sp, #12
 1388              		@ sp needed
 1389 0110 BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 1390 0114 FFF7FEBF 		b	_ZN3PID9SwitchOffEv
 1391              	.L214:
 1392 0118 D8F81800 		ldr	r0, [r8, #24]	@ float
 1393 011c FFF7FEFF 		bl	__aeabi_f2d
 1394 0120 0446     		mov	r4, r0
 1395 0122 3068     		ldr	r0, [r6]	@ float
 1396 0124 0D46     		mov	r5, r1
 1397 0126 FFF7FEFF 		bl	__aeabi_f2d
 1398 012a 67A3     		adr	r3, .L241
 1399 012c D3E90023 		ldrd	r2, [r3]
 1400 0130 FFF7FEFF 		bl	__aeabi_dmul
 1401 0134 6F4B     		ldr	r3, .L241+44
 1402 0136 0646     		mov	r6, r0
 1403 0138 0F46     		mov	r7, r1
 1404 013a 1868     		ldr	r0, [r3]	@ float
 1405 013c 6E49     		ldr	r1, .L241+48
 1406 013e FFF7FEFF 		bl	__aeabi_fmul
 1407 0142 FFF7FEFF 		bl	__aeabi_f2d
 1408 0146 0246     		mov	r2, r0
 1409 0148 0B46     		mov	r3, r1
 1410 014a 3046     		mov	r0, r6
 1411 014c 3946     		mov	r1, r7
 1412 014e FFF7FEFF 		bl	__aeabi_dadd
 1413 0152 0246     		mov	r2, r0
 1414 0154 0B46     		mov	r3, r1
 1415 0156 2046     		mov	r0, r4
 1416 0158 2946     		mov	r1, r5
 1417 015a FFF7FEFF 		bl	__aeabi_dcmpgt
 1418 015e 0028     		cmp	r0, #0
 1419 0160 BFD1     		bne	.L199
 1420 0162 4046     		mov	r0, r8
 1421 0164 FFF7FEFF 		bl	_ZN3PID14CalculateModelEv
 1422 0168 D0E7     		b	.L209
 1423              	.L210:
 1424 016a D8F80030 		ldr	r3, [r8]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 26


 1425 016e 41F27070 		movw	r0, #6000
 1426 0172 D3F84036 		ldr	r3, [r3, #1600]
 1427 0176 4FF08041 		mov	r1, #1073741824
 1428 017a B0FBF3F0 		udiv	r0, r0, r3
 1429 017e FFF7FEFF 		bl	_ZN3PID14ReadingsStableEjf
 1430 0182 0028     		cmp	r0, #0
 1431 0184 68D1     		bne	.L238
 1432 0186 FFF7FEFF 		bl	millis
 1433 018a 2A68     		ldr	r2, [r5]
 1434 018c 44F61F63 		movw	r3, #19999
 1435 0190 801A     		subs	r0, r0, r2
 1436 0192 9842     		cmp	r0, r3
 1437 0194 A5D9     		bls	.L199
 1438 0196 D8F80000 		ldr	r0, [r8]
 1439 019a 0621     		movs	r1, #6
 1440 019c 574A     		ldr	r2, .L241+52
 1441 019e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1442 01a2 B3E7     		b	.L209
 1443              	.L212:
 1444 01a4 FFF7FEFF 		bl	millis
 1445 01a8 2E68     		ldr	r6, [r5]
 1446 01aa 5549     		ldr	r1, .L241+56
 1447 01ac 861B     		subs	r6, r0, r6
 1448 01ae D8F83800 		ldr	r0, [r8, #56]	@ float
 1449 01b2 FFF7FEFF 		bl	__aeabi_fmul
 1450 01b6 FFF7FEFF 		bl	__aeabi_f2uiz
 1451 01ba 00F5EA40 		add	r0, r0, #29952
 1452 01be 3030     		adds	r0, r0, #48
 1453 01c0 8642     		cmp	r6, r0
 1454 01c2 0AD9     		bls	.L217
 1455 01c4 4B4B     		ldr	r3, .L241+44
 1456 01c6 D8F81800 		ldr	r0, [r8, #24]	@ float
 1457 01ca 1968     		ldr	r1, [r3]	@ float
 1458 01cc FFF7FEFF 		bl	__aeabi_fsub
 1459 01d0 4C49     		ldr	r1, .L241+60
 1460 01d2 FFF7FEFF 		bl	__aeabi_fcmplt
 1461 01d6 0028     		cmp	r0, #0
 1462 01d8 5ED1     		bne	.L218
 1463              	.L217:
 1464 01da 444A     		ldr	r2, .L241+36
 1465 01dc 98F97230 		ldrsb	r3, [r8, #114]
 1466 01e0 D268     		ldr	r2, [r2, #12]
 1467 01e2 92F92A10 		ldrsb	r1, [r2, #42]
 1468 01e6 9942     		cmp	r1, r3
 1469 01e8 5DD0     		beq	.L239
 1470 01ea 92F92B00 		ldrsb	r0, [r2, #43]
 1471 01ee 4649     		ldr	r1, .L241+64
 1472 01f0 464A     		ldr	r2, .L241+68
 1473 01f2 9842     		cmp	r0, r3
 1474 01f4 14BF     		ite	ne
 1475 01f6 0B46     		movne	r3, r1
 1476 01f8 1346     		moveq	r3, r2
 1477              	.L219:
 1478 01fa 9E42     		cmp	r6, r3
 1479 01fc 55D2     		bcs	.L240
 1480 01fe D8F81890 		ldr	r9, [r8, #24]	@ float
 1481 0202 434B     		ldr	r3, .L241+72
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 27


 1482 0204 4846     		mov	r0, r9
 1483 0206 1968     		ldr	r1, [r3]	@ float
 1484 0208 FFF7FEFF 		bl	__aeabi_fcmpge
 1485 020c 0028     		cmp	r0, #0
 1486 020e 3FF468AF 		beq	.L199
 1487 0212 3A68     		ldr	r2, [r7]
 1488 0214 3F48     		ldr	r0, .L241+76
 1489 0216 0121     		movs	r1, #1
 1490 0218 3F4B     		ldr	r3, .L241+80
 1491 021a 2160     		str	r1, [r4]
 1492 021c 0660     		str	r6, [r0]
 1493 021e C2F80090 		str	r9, [r2]	@ float
 1494 0222 C3F80090 		str	r9, [r3]	@ float
 1495 0226 FFF7FEFF 		bl	millis
 1496 022a D8F80030 		ldr	r3, [r8]
 1497 022e 0022     		movs	r2, #0
 1498 0230 D3F84066 		ldr	r6, [r3, #1600]
 1499 0234 0721     		movs	r1, #7
 1500 0236 2A4C     		ldr	r4, .L241+24
 1501 0238 2860     		str	r0, [r5]
 1502 023a C8F86020 		str	r2, [r8, #96]	@ float
 1503 023e 1846     		mov	r0, r3
 1504 0240 88F87410 		strb	r1, [r8, #116]
 1505 0244 98F97210 		ldrsb	r1, [r8, #114]
 1506 0248 2660     		str	r6, [r4]
 1507 024a FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjf
 1508 024e D8F80000 		ldr	r0, [r8]
 1509 0252 0621     		movs	r1, #6
 1510 0254 314A     		ldr	r2, .L241+84
 1511 0256 1AE0     		b	.L234
 1512              	.L238:
 1513 0258 D8F81830 		ldr	r3, [r8, #24]	@ float
 1514 025c 2549     		ldr	r1, .L241+44
 1515 025e 0122     		movs	r2, #1
 1516 0260 0B60     		str	r3, [r1]	@ float
 1517 0262 2260     		str	r2, [r4]
 1518 0264 3360     		str	r3, [r6]	@ float
 1519 0266 FFF7FEFF 		bl	millis
 1520 026a 2D4A     		ldr	r2, .L241+88
 1521 026c 0346     		mov	r3, r0
 1522 026e D8F80000 		ldr	r0, [r8]
 1523 0272 1268     		ldr	r2, [r2]	@ float
 1524 0274 D0F84066 		ldr	r6, [r0, #1600]
 1525 0278 194C     		ldr	r4, .L241+24
 1526 027a 0621     		movs	r1, #6
 1527 027c C8F86020 		str	r2, [r8, #96]	@ float
 1528 0280 284A     		ldr	r2, .L241+92
 1529 0282 C8F86830 		str	r3, [r8, #104]
 1530 0286 88F87410 		strb	r1, [r8, #116]
 1531 028a 2B60     		str	r3, [r5]
 1532 028c 2660     		str	r6, [r4]
 1533              	.L234:
 1534 028e 03B0     		add	sp, sp, #12
 1535              		@ sp needed
 1536 0290 BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 1537 0294 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 1538              	.L218:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 28


 1539 0298 D8F80000 		ldr	r0, [r8]
 1540 029c 0621     		movs	r1, #6
 1541 029e 224A     		ldr	r2, .L241+96
 1542 02a0 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1543 02a4 32E7     		b	.L209
 1544              	.L239:
 1545 02a6 194B     		ldr	r3, .L241+68
 1546 02a8 A7E7     		b	.L219
 1547              	.L240:
 1548 02aa D8F80000 		ldr	r0, [r8]
 1549 02ae 0621     		movs	r1, #6
 1550 02b0 1E4A     		ldr	r2, .L241+100
 1551 02b2 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1552 02b6 29E7     		b	.L209
 1553              	.L237:
 1554 02b8 4046     		mov	r0, r8
 1555 02ba 1D49     		ldr	r1, .L241+104
 1556 02bc FFF7FEFF 		bl	_ZN3PID13DisplayBufferEPKc
 1557 02c0 1EE7     		b	.L224
 1558              	.L242:
 1559 02c2 00BFAFF3 		.align	3
 1559      0080
 1560              	.L241:
 1561 02c8 00000080 		.word	-2147483648
 1562 02cc 9999D93F 		.word	1071225241
 1563 02d0 00000000 		.word	.LANCHOR1
 1564 02d4 00000000 		.word	.LANCHOR10
 1565 02d8 00000000 		.word	.LANCHOR9
 1566 02dc 00000000 		.word	.LANCHOR0
 1567 02e0 00000000 		.word	.LANCHOR2
 1568 02e4 00000000 		.word	.LANCHOR6
 1569 02e8 88040000 		.word	.LC24
 1570 02ec 00000000 		.word	reprap
 1571 02f0 44040000 		.word	.LC23
 1572 02f4 00000000 		.word	.LANCHOR5
 1573 02f8 9A99193F 		.word	1058642330
 1574 02fc 58030000 		.word	.LC18
 1575 0300 00007A44 		.word	1148846080
 1576 0304 00004040 		.word	1077936128
 1577 0308 E0930400 		.word	300000
 1578 030c 804F1200 		.word	1200000
 1579 0310 00000000 		.word	.LANCHOR4
 1580 0314 00000000 		.word	.LANCHOR8
 1581 0318 00000000 		.word	.LANCHOR7
 1582 031c D8030000 		.word	.LC20
 1583 0320 00000000 		.word	.LANCHOR3
 1584 0324 38030000 		.word	.LC17
 1585 0328 B8040000 		.word	.LC25
 1586 032c 98030000 		.word	.LC19
 1587 0330 30040000 		.word	.LC22
 1588 0334 00000000 		.word	.LANCHOR11
 1589              	.L236:
 1590 0338 FFF7FEFF 		bl	millis
 1591 033c 2A68     		ldr	r2, [r5]
 1592 033e 064B     		ldr	r3, .L243
 1593 0340 801A     		subs	r0, r0, r2
 1594 0342 9842     		cmp	r0, r3
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 29


 1595 0344 7FF6CDAE 		bls	.L199
 1596 0348 D8F80000 		ldr	r0, [r8]
 1597 034c 0621     		movs	r1, #6
 1598 034e 034A     		ldr	r2, .L243+4
 1599 0350 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1600 0354 DAE6     		b	.L209
 1601              	.L244:
 1602 0356 00BF     		.align	2
 1603              	.L243:
 1604 0358 BFD40100 		.word	119999
 1605 035c F8030000 		.word	.LC21
 1606              		.size	_ZN3PID12DoTuningStepEv, .-_ZN3PID12DoTuningStepEv
 1607              		.section	.text._ZN3PID4SpinEv,"ax",%progbits
 1608              		.align	2
 1609              		.global	_ZN3PID4SpinEv
 1610              		.thumb
 1611              		.thumb_func
 1612              		.type	_ZN3PID4SpinEv, %function
 1613              	_ZN3PID4SpinEv:
 1614              		@ args = 0, pretend = 0, frame = 16
 1615              		@ frame_needed = 0, uses_anonymous_args = 0
 1616 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1617 0004 90F84030 		ldrb	r3, [r0, #64]	@ zero_extendqisi2
 1618 0008 87B0     		sub	sp, sp, #28
 1619 000a 8346     		mov	fp, r0
 1620 000c 13B9     		cbnz	r3, .L358
 1621 000e 07B0     		add	sp, sp, #28
 1622              		@ sp needed
 1623 0010 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1624              	.L358:
 1625 0014 FFF7FEFF 		bl	_ZN3PID15ReadTemperatureEv
 1626 0018 0446     		mov	r4, r0
 1627 001a 0028     		cmp	r0, #0
 1628 001c 3FD1     		bne	.L359
 1629 001e 9BF87360 		ldrb	r6, [fp, #115]	@ zero_extendqisi2
 1630 0022 8BF87700 		strb	r0, [fp, #119]
 1631 0026 06F00803 		and	r3, r6, #8
 1632 002a 03F0FF04 		and	r4, r3, #255
 1633 002e 002B     		cmp	r3, #0
 1634 0030 40F0E980 		bne	.L253
 1635 0034 DBF82C30 		ldr	r3, [fp, #44]
 1636 0038 DBF81870 		ldr	r7, [fp, #24]	@ float
 1637 003c 03F10608 		add	r8, r3, #6
 1638 0040 0025     		movs	r5, #0
 1639              	.L254:
 1640 0042 7600     		lsls	r6, r6, #1
 1641 0044 9BF87530 		ldrb	r3, [fp, #117]	@ zero_extendqisi2
 1642 0048 46F00106 		orr	r6, r6, #1
 1643 004c 0BEB8808 		add	r8, fp, r8, lsl #2
 1644 0050 C8F80470 		str	r7, [r8, #4]	@ float
 1645 0054 8BF87360 		strb	r6, [fp, #115]
 1646 0058 002B     		cmp	r3, #0
 1647 005a 00F0D180 		beq	.L255
 1648 005e DBF80480 		ldr	r8, [fp, #4]	@ float
 1649              	.L256:
 1650 0062 4046     		mov	r0, r8
 1651 0064 3946     		mov	r1, r7
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 30


 1652 0066 FFF7FEFF 		bl	__aeabi_fsub
 1653 006a 9BF874A0 		ldrb	r10, [fp, #116]	@ zero_extendqisi2
 1654 006e 0646     		mov	r6, r0
 1655 0070 BAF1030F 		cmp	r10, #3
 1656 0074 00F05481 		beq	.L258
 1657 0078 BAF1040F 		cmp	r10, #4
 1658 007c 00F02481 		beq	.L259
 1659 0080 BAF1020F 		cmp	r10, #2
 1660 0084 00F0FE80 		beq	.L360
 1661              	.L257:
 1662 0088 BAF1010F 		cmp	r10, #1
 1663 008c 40F2DF80 		bls	.L361
 1664 0090 BAF1040F 		cmp	r10, #4
 1665 0094 59D9     		bls	.L354
 1666 0096 5846     		mov	r0, fp
 1667 0098 FFF7FEFF 		bl	_ZN3PID12DoTuningStepEv
 1668 009c 11E0     		b	.L356
 1669              	.L359:
 1670 009e 9BF87320 		ldrb	r2, [fp, #115]	@ zero_extendqisi2
 1671 00a2 9BF87430 		ldrb	r3, [fp, #116]	@ zero_extendqisi2
 1672 00a6 5200     		lsls	r2, r2, #1
 1673 00a8 012B     		cmp	r3, #1
 1674 00aa 8BF87320 		strb	r2, [fp, #115]
 1675 00ae 08D9     		bls	.L356
 1676 00b0 9BF87730 		ldrb	r3, [fp, #119]	@ zero_extendqisi2
 1677 00b4 0133     		adds	r3, r3, #1
 1678 00b6 DBB2     		uxtb	r3, r3
 1679 00b8 042B     		cmp	r3, #4
 1680 00ba 8BF87730 		strb	r3, [fp, #119]
 1681 00be 00F24581 		bhi	.L250
 1682              	.L356:
 1683 00c2 DBF86090 		ldr	r9, [fp, #96]	@ float
 1684 00c6 DBF80000 		ldr	r0, [fp]
 1685              	.L249:
 1686 00ca 4A46     		mov	r2, r9
 1687 00cc 9BF97210 		ldrsb	r1, [fp, #114]
 1688 00d0 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjf
 1689 00d4 DBF86400 		ldr	r0, [fp, #100]	@ float
 1690 00d8 FFF7FEFF 		bl	__aeabi_f2d
 1691 00dc DBF80030 		ldr	r3, [fp]
 1692 00e0 0446     		mov	r4, r0
 1693 00e2 D3F84006 		ldr	r0, [r3, #1600]
 1694 00e6 0D46     		mov	r5, r1
 1695 00e8 FFF7FEFF 		bl	__aeabi_ui2f
 1696 00ec B649     		ldr	r1, .L371
 1697 00ee FFF7FEFF 		bl	__aeabi_fdiv
 1698 00f2 FFF7FEFF 		bl	__aeabi_f2d
 1699 00f6 0246     		mov	r2, r0
 1700 00f8 0B46     		mov	r3, r1
 1701 00fa 0020     		movs	r0, #0
 1702 00fc B349     		ldr	r1, .L371+4
 1703 00fe FFF7FEFF 		bl	__aeabi_dsub
 1704 0102 0246     		mov	r2, r0
 1705 0104 0B46     		mov	r3, r1
 1706 0106 2046     		mov	r0, r4
 1707 0108 2946     		mov	r1, r5
 1708 010a FFF7FEFF 		bl	__aeabi_dmul
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 31


 1709 010e 0446     		mov	r4, r0
 1710 0110 DBF86000 		ldr	r0, [fp, #96]	@ float
 1711 0114 0D46     		mov	r5, r1
 1712 0116 FFF7FEFF 		bl	__aeabi_f2d
 1713 011a 0246     		mov	r2, r0
 1714 011c 0B46     		mov	r3, r1
 1715 011e 2046     		mov	r0, r4
 1716 0120 2946     		mov	r1, r5
 1717 0122 FFF7FEFF 		bl	__aeabi_dadd
 1718 0126 FFF7FEFF 		bl	__aeabi_d2f
 1719 012a DBF82C30 		ldr	r3, [fp, #44]
 1720 012e CBF86400 		str	r0, [fp, #100]	@ float
 1721 0132 0133     		adds	r3, r3, #1
 1722 0134 03F00303 		and	r3, r3, #3
 1723 0138 CBF82C30 		str	r3, [fp, #44]
 1724 013c FFF7FEFF 		bl	millis
 1725 0140 CBF86C00 		str	r0, [fp, #108]
 1726 0144 07B0     		add	sp, sp, #28
 1727              		@ sp needed
 1728 0146 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1729              	.L354:
 1730 014a DBF80040 		ldr	r4, [fp]
 1731              	.L264:
 1732 014e 9BF84120 		ldrb	r2, [fp, #65]	@ zero_extendqisi2
 1733 0152 002A     		cmp	r2, #0
 1734 0154 00F08280 		beq	.L278
 1735 0158 BAF10402 		subs	r2, r10, #4
 1736 015c 5342     		rsbs	r3, r2, #0
 1737 015e 5341     		adcs	r3, r3, r2
 1738 0160 0393     		str	r3, [sp, #12]
 1739 0162 002B     		cmp	r3, #0
 1740 0164 40F08980 		bne	.L362
 1741 0168 0BF14408 		add	r8, fp, #68
 1742              	.L280:
 1743 016c D8F80810 		ldr	r1, [r8, #8]	@ float
 1744 0170 2846     		mov	r0, r5
 1745 0172 FFF7FEFF 		bl	__aeabi_fmul
 1746 0176 D8F80030 		ldr	r3, [r8]	@ float
 1747 017a 0146     		mov	r1, r0
 1748 017c 3046     		mov	r0, r6
 1749 017e 0493     		str	r3, [sp, #16]	@ float
 1750 0180 FFF7FEFF 		bl	__aeabi_fsub
 1751 0184 0146     		mov	r1, r0
 1752 0186 0498     		ldr	r0, [sp, #16]	@ float
 1753 0188 FFF7FEFF 		bl	__aeabi_fmul
 1754 018c 9049     		ldr	r1, .L371+8
 1755 018e 0290     		str	r0, [sp, #8]	@ float
 1756 0190 DBF81800 		ldr	r0, [fp, #24]	@ float
 1757 0194 FFF7FEFF 		bl	__aeabi_fsub
 1758 0198 DBF83010 		ldr	r1, [fp, #48]	@ float
 1759 019c FFF7FEFF 		bl	__aeabi_fdiv
 1760 01a0 0146     		mov	r1, r0
 1761 01a2 0746     		mov	r7, r0
 1762 01a4 DBF83C90 		ldr	r9, [fp, #60]	@ float
 1763 01a8 FFF7FEFF 		bl	__aeabi_fcmpun
 1764 01ac 98B9     		cbnz	r0, .L304
 1765 01ae 3846     		mov	r0, r7
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 32


 1766 01b0 4946     		mov	r1, r9
 1767 01b2 FFF7FEFF 		bl	__aeabi_fcmplt
 1768 01b6 38B9     		cbnz	r0, .L282
 1769 01b8 4846     		mov	r0, r9
 1770 01ba 4946     		mov	r1, r9
 1771 01bc FFF7FEFF 		bl	__aeabi_fcmpun
 1772 01c0 0028     		cmp	r0, #0
 1773 01c2 40F02582 		bne	.L306
 1774 01c6 4F46     		mov	r7, r9
 1775              	.L282:
 1776 01c8 3846     		mov	r0, r7
 1777 01ca 0021     		movs	r1, #0
 1778 01cc FFF7FEFF 		bl	__aeabi_fcmpgt
 1779 01d0 0028     		cmp	r0, #0
 1780 01d2 00F06E81 		beq	.L348
 1781              	.L304:
 1782 01d6 0597     		str	r7, [sp, #20]	@ float
 1783              	.L281:
 1784 01d8 0599     		ldr	r1, [sp, #20]	@ float
 1785 01da 0298     		ldr	r0, [sp, #8]	@ float
 1786 01dc FFF7FEFF 		bl	__aeabi_fadd
 1787 01e0 0746     		mov	r7, r0
 1788 01e2 3946     		mov	r1, r7
 1789 01e4 4846     		mov	r0, r9
 1790 01e6 FFF7FEFF 		bl	__aeabi_fcmplt
 1791 01ea 0028     		cmp	r0, #0
 1792 01ec 00F00081 		beq	.L349
 1793 01f0 BAF1020F 		cmp	r10, #2
 1794 01f4 CBF86090 		str	r9, [fp, #96]	@ float
 1795 01f8 00F06981 		beq	.L286
 1796              	.L357:
 1797 01fc 2046     		mov	r0, r4
 1798 01fe 64E7     		b	.L249
 1799              	.L255:
 1800 0200 DBF80880 		ldr	r8, [fp, #8]	@ float
 1801 0204 2DE7     		b	.L256
 1802              	.L253:
 1803 0206 DBF82C30 		ldr	r3, [fp, #44]
 1804 020a DBF81870 		ldr	r7, [fp, #24]	@ float
 1805 020e 03F10608 		add	r8, r3, #6
 1806 0212 0BEB8803 		add	r3, fp, r8, lsl #2
 1807 0216 5968     		ldr	r1, [r3, #4]	@ float
 1808 0218 3846     		mov	r0, r7
 1809 021a FFF7FEFF 		bl	__aeabi_fsub
 1810 021e 6D49     		ldr	r1, .L371+12
 1811 0220 FFF7FEFF 		bl	__aeabi_fmul
 1812 0224 DBF80040 		ldr	r4, [fp]
 1813 0228 0546     		mov	r5, r0
 1814 022a D4F84006 		ldr	r0, [r4, #1600]
 1815 022e 8000     		lsls	r0, r0, #2
 1816 0230 FFF7FEFF 		bl	__aeabi_ui2f
 1817 0234 0146     		mov	r1, r0
 1818 0236 2846     		mov	r0, r5
 1819 0238 FFF7FEFF 		bl	__aeabi_fdiv
 1820 023c 6649     		ldr	r1, .L371+16
 1821 023e 0546     		mov	r5, r0
 1822 0240 20F00040 		bic	r0, r0, #-2147483648
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 33


 1823 0244 FFF7FEFF 		bl	__aeabi_fcmple
 1824 0248 A0B1     		cbz	r0, .L363
 1825 024a 0124     		movs	r4, #1
 1826 024c F9E6     		b	.L254
 1827              	.L361:
 1828 024e 0022     		movs	r2, #0
 1829 0250 DBF80000 		ldr	r0, [fp]
 1830 0254 CBF86020 		str	r2, [fp, #96]	@ float
 1831 0258 9146     		mov	r9, r2
 1832 025a 36E7     		b	.L249
 1833              	.L278:
 1834 025c 3046     		mov	r0, r6
 1835 025e 0021     		movs	r1, #0
 1836 0260 FFF7FEFF 		bl	__aeabi_fcmpgt
 1837 0264 60B1     		cbz	r0, .L353
 1838 0266 DBF83C20 		ldr	r2, [fp, #60]	@ float
 1839              	.L299:
 1840 026a CBF86020 		str	r2, [fp, #96]	@ float
 1841 026e 2046     		mov	r0, r4
 1842 0270 9146     		mov	r9, r2
 1843 0272 2AE7     		b	.L249
 1844              	.L363:
 1845 0274 0446     		mov	r4, r0
 1846 0276 0025     		movs	r5, #0
 1847 0278 E3E6     		b	.L254
 1848              	.L362:
 1849 027a 0BF15008 		add	r8, fp, #80
 1850 027e 75E7     		b	.L280
 1851              	.L353:
 1852 0280 0022     		movs	r2, #0
 1853 0282 F2E7     		b	.L299
 1854              	.L360:
 1855 0284 5549     		ldr	r1, .L371+20
 1856 0286 FFF7FEFF 		bl	__aeabi_fcmple
 1857 028a 8046     		mov	r8, r0
 1858 028c 0028     		cmp	r0, #0
 1859 028e 54D1     		bne	.L275
 1860 0290 002C     		cmp	r4, #0
 1861 0292 3FF45AAF 		beq	.L354
 1862 0296 5846     		mov	r0, fp
 1863 0298 FFF7FEFF 		bl	_ZNK3PID22GetExpectedHeatingRateEv
 1864 029c 4FF07A51 		mov	r1, #1048576000
 1865 02a0 8146     		mov	r9, r0
 1866 02a2 2846     		mov	r0, r5
 1867 02a4 FFF7FEFF 		bl	__aeabi_fadd
 1868 02a8 0146     		mov	r1, r0
 1869 02aa 4846     		mov	r0, r9
 1870 02ac FFF7FEFF 		bl	__aeabi_fcmpgt
 1871 02b0 0028     		cmp	r0, #0
 1872 02b2 40F02581 		bne	.L364
 1873              	.L265:
 1874 02b6 BBF87020 		ldrh	r2, [fp, #112]
 1875 02ba 002A     		cmp	r2, #0
 1876 02bc 3FF4E4AE 		beq	.L257
 1877 02c0 013A     		subs	r2, r2, #1
 1878 02c2 ABF87020 		strh	r2, [fp, #112]	@ movhi
 1879 02c6 DFE6     		b	.L257
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 34


 1880              	.L259:
 1881 02c8 20F00040 		bic	r0, r0, #-2147483648
 1882 02cc DBF81010 		ldr	r1, [fp, #16]	@ float
 1883 02d0 FFF7FEFF 		bl	__aeabi_fcmpgt
 1884 02d4 0028     		cmp	r0, #0
 1885 02d6 6BD0     		beq	.L269
 1886 02d8 3846     		mov	r0, r7
 1887 02da 4149     		ldr	r1, .L371+24
 1888 02dc FFF7FEFF 		bl	__aeabi_fcmpgt
 1889 02e0 0028     		cmp	r0, #0
 1890 02e2 65D0     		beq	.L269
 1891 02e4 BBF87030 		ldrh	r3, [fp, #112]
 1892 02e8 DBF80040 		ldr	r4, [fp]
 1893 02ec 0133     		adds	r3, r3, #1
 1894 02ee D4F84006 		ldr	r0, [r4, #1600]
 1895 02f2 9BB2     		uxth	r3, r3
 1896 02f4 ABF87030 		strh	r3, [fp, #112]	@ movhi
 1897 02f8 00FB03F0 		mul	r0, r0, r3
 1898 02fc FFF7FEFF 		bl	__aeabi_ui2f
 1899 0300 3449     		ldr	r1, .L371+12
 1900 0302 0746     		mov	r7, r0
 1901 0304 DBF81400 		ldr	r0, [fp, #20]	@ float
 1902 0308 FFF7FEFF 		bl	__aeabi_fmul
 1903 030c 0146     		mov	r1, r0
 1904 030e 3846     		mov	r0, r7
 1905 0310 FFF7FEFF 		bl	__aeabi_fcmpgt
 1906 0314 0028     		cmp	r0, #0
 1907 0316 40F00B81 		bne	.L365
 1908              	.L263:
 1909 031a 4FF0040A 		mov	r10, #4
 1910 031e 16E7     		b	.L264
 1911              	.L258:
 1912 0320 3049     		ldr	r1, .L371+28
 1913 0322 FFF7FEFF 		bl	__aeabi_fcmpge
 1914 0326 0028     		cmp	r0, #0
 1915 0328 3FF40FAF 		beq	.L354
 1916 032c 4046     		mov	r0, r8
 1917 032e 2C49     		ldr	r1, .L371+24
 1918 0330 FFF7FEFF 		bl	__aeabi_fcmpgt
 1919 0334 0028     		cmp	r0, #0
 1920 0336 3FF408AF 		beq	.L354
 1921              	.L275:
 1922 033a 0422     		movs	r2, #4
 1923 033c 0023     		movs	r3, #0
 1924 033e 8BF87420 		strb	r2, [fp, #116]
 1925 0342 ABF87030 		strh	r3, [fp, #112]	@ movhi
 1926 0346 DBF80040 		ldr	r4, [fp]
 1927 034a E6E7     		b	.L263
 1928              	.L250:
 1929 034c 0022     		movs	r2, #0
 1930 034e DBF80000 		ldr	r0, [fp]
 1931 0352 CBF86020 		str	r2, [fp, #96]	@ float
 1932 0356 9BF97210 		ldrsb	r1, [fp, #114]
 1933 035a FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjf
 1934 035e 9BF87430 		ldrb	r3, [fp, #116]	@ zero_extendqisi2
 1935 0362 042B     		cmp	r3, #4
 1936 0364 00F2AC80 		bhi	.L366
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 35


 1937              	.L251:
 1938 0368 1F4F     		ldr	r7, .L371+32
 1939 036a 0022     		movs	r2, #0
 1940 036c FB69     		ldr	r3, [r7, #28]
 1941 036e 8BF87420 		strb	r2, [fp, #116]
 1942 0372 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 1943 0374 002B     		cmp	r3, #0
 1944 0376 40F09F80 		bne	.L367
 1945              	.L252:
 1946 037a 2046     		mov	r0, r4
 1947 037c 9BF97250 		ldrsb	r5, [fp, #114]
 1948 0380 DBF80040 		ldr	r4, [fp]
 1949 0384 FFF7FEFF 		bl	_Z22TemperatureErrorString16TemperatureError
 1950 0388 2B46     		mov	r3, r5
 1951 038a 184A     		ldr	r2, .L371+36
 1952 038c 0090     		str	r0, [sp]
 1953 038e 0621     		movs	r1, #6
 1954 0390 2046     		mov	r0, r4
 1955 0392 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1956 0396 1448     		ldr	r0, .L371+32
 1957 0398 9BF97210 		ldrsb	r1, [fp, #114]
 1958 039c FFF7FEFF 		bl	_ZN6RepRap20FlagTemperatureFaultEa
 1959 03a0 3869     		ldr	r0, [r7, #16]
 1960 03a2 FFF7FEFF 		bl	_ZN6GCodes11HeaterFaultEv
 1961 03a6 DBF86090 		ldr	r9, [fp, #96]	@ float
 1962 03aa DBF80000 		ldr	r0, [fp]
 1963 03ae 8CE6     		b	.L249
 1964              	.L269:
 1965 03b0 BBF87020 		ldrh	r2, [fp, #112]
 1966 03b4 002A     		cmp	r2, #0
 1967 03b6 3FF4C8AE 		beq	.L354
 1968 03ba 013A     		subs	r2, r2, #1
 1969 03bc ABF87020 		strh	r2, [fp, #112]	@ movhi
 1970 03c0 DBF80040 		ldr	r4, [fp]
 1971 03c4 A9E7     		b	.L263
 1972              	.L372:
 1973 03c6 00BF     		.align	2
 1974              	.L371:
 1975 03c8 00409C45 		.word	1167867904
 1976 03cc 0000F03F 		.word	1072693248
 1977 03d0 0000C841 		.word	1103626240
 1978 03d4 00007A44 		.word	1148846080
 1979 03d8 00002041 		.word	1092616192
 1980 03dc 00002040 		.word	1075838976
 1981 03e0 00003442 		.word	1110704128
 1982 03e4 000020C0 		.word	-1071644672
 1983 03e8 00000000 		.word	reprap
 1984 03ec F4040000 		.word	.LC26
 1985              	.L349:
 1986 03f0 0025     		movs	r5, #0
 1987 03f2 3846     		mov	r0, r7
 1988 03f4 2946     		mov	r1, r5
 1989 03f6 FFF7FEFF 		bl	__aeabi_fcmplt
 1990 03fa 0028     		cmp	r0, #0
 1991 03fc 79D1     		bne	.L368
 1992 03fe 039B     		ldr	r3, [sp, #12]
 1993 0400 002B     		cmp	r3, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 36


 1994 0402 51D1     		bne	.L355
 1995 0404 9BF84230 		ldrb	r3, [fp, #66]	@ zero_extendqisi2
 1996 0408 002B     		cmp	r3, #0
 1997 040a 4DD1     		bne	.L355
 1998 040c 0298     		ldr	r0, [sp, #8]	@ float
 1999              	.L292:
 2000 040e D8F80410 		ldr	r1, [r8, #4]	@ float
 2001 0412 FFF7FEFF 		bl	__aeabi_fmul
 2002 0416 0546     		mov	r5, r0
 2003 0418 D4F84006 		ldr	r0, [r4, #1600]
 2004 041c FFF7FEFF 		bl	__aeabi_ui2f
 2005 0420 0146     		mov	r1, r0
 2006 0422 2846     		mov	r0, r5
 2007 0424 FFF7FEFF 		bl	__aeabi_fmul
 2008 0428 7B49     		ldr	r1, .L373
 2009 042a FFF7FEFF 		bl	__aeabi_fmul
 2010 042e DBF85C10 		ldr	r1, [fp, #92]	@ float
 2011 0432 FFF7FEFF 		bl	__aeabi_fadd
 2012 0436 0146     		mov	r1, r0
 2013 0438 0546     		mov	r5, r0
 2014 043a FFF7FEFF 		bl	__aeabi_fcmpun
 2015 043e 90B9     		cbnz	r0, .L309
 2016 0440 4846     		mov	r0, r9
 2017 0442 2946     		mov	r1, r5
 2018 0444 FFF7FEFF 		bl	__aeabi_fcmpgt
 2019 0448 38B9     		cbnz	r0, .L294
 2020 044a 4846     		mov	r0, r9
 2021 044c 4946     		mov	r1, r9
 2022 044e FFF7FEFF 		bl	__aeabi_fcmpun
 2023 0452 0028     		cmp	r0, #0
 2024 0454 40F0DA80 		bne	.L311
 2025 0458 4D46     		mov	r5, r9
 2026              	.L294:
 2027 045a 2846     		mov	r0, r5
 2028 045c 0021     		movs	r1, #0
 2029 045e FFF7FEFF 		bl	__aeabi_fcmpgt
 2030 0462 0028     		cmp	r0, #0
 2031 0464 4AD0     		beq	.L351
 2032              	.L309:
 2033 0466 2946     		mov	r1, r5
 2034              	.L293:
 2035 0468 CBF85C10 		str	r1, [fp, #92]	@ float
 2036 046c 0298     		ldr	r0, [sp, #8]	@ float
 2037 046e FFF7FEFF 		bl	__aeabi_fadd
 2038 0472 0146     		mov	r1, r0
 2039 0474 0546     		mov	r5, r0
 2040 0476 FFF7FEFF 		bl	__aeabi_fcmpun
 2041 047a 98B9     		cbnz	r0, .L313
 2042 047c 4846     		mov	r0, r9
 2043 047e 2946     		mov	r1, r5
 2044 0480 FFF7FEFF 		bl	__aeabi_fcmpgt
 2045 0484 38B9     		cbnz	r0, .L297
 2046 0486 4846     		mov	r0, r9
 2047 0488 4946     		mov	r1, r9
 2048 048a FFF7FEFF 		bl	__aeabi_fcmpun
 2049 048e 0028     		cmp	r0, #0
 2050 0490 40F0BA80 		bne	.L315
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 37


 2051 0494 4D46     		mov	r5, r9
 2052              	.L297:
 2053 0496 2846     		mov	r0, r5
 2054 0498 0021     		movs	r1, #0
 2055 049a FFF7FEFF 		bl	__aeabi_fcmpgt
 2056 049e 0028     		cmp	r0, #0
 2057 04a0 3FF4EEAE 		beq	.L353
 2058              	.L313:
 2059 04a4 2A46     		mov	r2, r5
 2060 04a6 E0E6     		b	.L299
 2061              	.L355:
 2062 04a8 3046     		mov	r0, r6
 2063 04aa 0499     		ldr	r1, [sp, #16]	@ float
 2064 04ac FFF7FEFF 		bl	__aeabi_fmul
 2065 04b0 ADE7     		b	.L292
 2066              	.L348:
 2067 04b2 0023     		movs	r3, #0
 2068 04b4 0593     		str	r3, [sp, #20]	@ float
 2069 04b6 8FE6     		b	.L281
 2070              	.L367:
 2071 04b8 3869     		ldr	r0, [r7, #16]
 2072 04ba FFF7FEFF 		bl	_ZN6GCodes16HeaterFaultPauseEv
 2073 04be 5CE7     		b	.L252
 2074              	.L366:
 2075 04c0 564D     		ldr	r5, .L373+4
 2076 04c2 2868     		ldr	r0, [r5]
 2077 04c4 FFF7FEFF 		bl	_ZdlPv
 2078 04c8 0023     		movs	r3, #0
 2079 04ca 2B60     		str	r3, [r5]
 2080 04cc 4CE7     		b	.L251
 2081              	.L286:
 2082 04ce 3046     		mov	r0, r6
 2083 04d0 0021     		movs	r1, #0
 2084 04d2 FFF7FEFF 		bl	__aeabi_fcmpgt
 2085 04d6 0028     		cmp	r0, #0
 2086 04d8 3FF490AE 		beq	.L357
 2087 04dc 2846     		mov	r0, r5
 2088 04de 0021     		movs	r1, #0
 2089 04e0 FFF7FEFF 		bl	__aeabi_fcmpgt
 2090 04e4 0028     		cmp	r0, #0
 2091 04e6 3FF489AE 		beq	.L357
 2092 04ea 059B     		ldr	r3, [sp, #20]	@ float
 2093 04ec CBF85C30 		str	r3, [fp, #92]	@ float
 2094 04f0 84E6     		b	.L357
 2095              	.L368:
 2096 04f2 CBF86050 		str	r5, [fp, #96]	@ float
 2097 04f6 2046     		mov	r0, r4
 2098 04f8 A946     		mov	r9, r5
 2099 04fa E6E5     		b	.L249
 2100              	.L351:
 2101 04fc 0021     		movs	r1, #0
 2102 04fe B3E7     		b	.L293
 2103              	.L364:
 2104 0500 FFF7FEFF 		bl	millis
 2105 0504 DBF86830 		ldr	r3, [fp, #104]
 2106 0508 C01A     		subs	r0, r0, r3
 2107 050a FFF7FEFF 		bl	__aeabi_ui2f
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 38


 2108 050e 4449     		ldr	r1, .L373+8
 2109 0510 0446     		mov	r4, r0
 2110 0512 DBF83800 		ldr	r0, [fp, #56]	@ float
 2111 0516 FFF7FEFF 		bl	__aeabi_fmul
 2112 051a 0146     		mov	r1, r0
 2113 051c FFF7FEFF 		bl	__aeabi_fadd
 2114 0520 0146     		mov	r1, r0
 2115 0522 2046     		mov	r0, r4
 2116 0524 FFF7FEFF 		bl	__aeabi_fcmpgt
 2117 0528 28BB     		cbnz	r0, .L267
 2118 052a 9BF874A0 		ldrb	r10, [fp, #116]	@ zero_extendqisi2
 2119 052e C2E6     		b	.L265
 2120              	.L365:
 2121 0530 3C4F     		ldr	r7, .L373+12
 2122 0532 0022     		movs	r2, #0
 2123 0534 2046     		mov	r0, r4
 2124 0536 9BF97210 		ldrsb	r1, [fp, #114]
 2125 053a FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjf
 2126 053e FB69     		ldr	r3, [r7, #28]
 2127 0540 0022     		movs	r2, #0
 2128 0542 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 2129 0544 8BF87420 		strb	r2, [fp, #116]
 2130 0548 002B     		cmp	r3, #0
 2131 054a 55D1     		bne	.L369
 2132              	.L273:
 2133 054c DBF81000 		ldr	r0, [fp, #16]	@ float
 2134 0550 FFF7FEFF 		bl	__aeabi_f2d
 2135 0554 DBF80020 		ldr	r2, [fp]
 2136 0558 9BF97230 		ldrsb	r3, [fp, #114]
 2137 055c CDE90001 		strd	r0, [sp]
 2138 0560 1046     		mov	r0, r2
 2139 0562 0621     		movs	r1, #6
 2140 0564 304A     		ldr	r2, .L373+16
 2141 0566 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2142 056a 3869     		ldr	r0, [r7, #16]
 2143 056c FFF7FEFF 		bl	_ZN6GCodes11HeaterFaultEv
 2144 0570 9BF874A0 		ldrb	r10, [fp, #116]	@ zero_extendqisi2
 2145 0574 88E5     		b	.L257
 2146              	.L267:
 2147 0576 BBF87030 		ldrh	r3, [fp, #112]
 2148 057a DBF80040 		ldr	r4, [fp]
 2149 057e 0133     		adds	r3, r3, #1
 2150 0580 D4F84006 		ldr	r0, [r4, #1600]
 2151 0584 9BB2     		uxth	r3, r3
 2152 0586 ABF87030 		strh	r3, [fp, #112]	@ movhi
 2153 058a 00FB03F0 		mul	r0, r0, r3
 2154 058e FFF7FEFF 		bl	__aeabi_ui2f
 2155 0592 2349     		ldr	r1, .L373+8
 2156 0594 0746     		mov	r7, r0
 2157 0596 DBF81400 		ldr	r0, [fp, #20]	@ float
 2158 059a FFF7FEFF 		bl	__aeabi_fmul
 2159 059e 0146     		mov	r1, r0
 2160 05a0 3846     		mov	r0, r7
 2161 05a2 FFF7FEFF 		bl	__aeabi_fcmpgt
 2162 05a6 10B9     		cbnz	r0, .L302
 2163 05a8 9BF874A0 		ldrb	r10, [fp, #116]	@ zero_extendqisi2
 2164 05ac 6CE5     		b	.L257
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 39


 2165              	.L302:
 2166 05ae 1D4F     		ldr	r7, .L373+12
 2167 05b0 2046     		mov	r0, r4
 2168 05b2 9BF97210 		ldrsb	r1, [fp, #114]
 2169 05b6 0022     		movs	r2, #0
 2170 05b8 FFF7FEFF 		bl	_ZN8Platform9SetHeaterEjf
 2171 05bc FB69     		ldr	r3, [r7, #28]
 2172 05be 8BF87480 		strb	r8, [fp, #116]
 2173 05c2 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 2174 05c4 E3B9     		cbnz	r3, .L370
 2175              	.L268:
 2176 05c6 4846     		mov	r0, r9
 2177 05c8 FFF7FEFF 		bl	__aeabi_f2d
 2178 05cc DBF80020 		ldr	r2, [fp]
 2179 05d0 9BF97230 		ldrsb	r3, [fp, #114]
 2180 05d4 CDE90001 		strd	r0, [sp]
 2181 05d8 1046     		mov	r0, r2
 2182 05da 0621     		movs	r1, #6
 2183 05dc 134A     		ldr	r2, .L373+20
 2184 05de FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2185 05e2 1048     		ldr	r0, .L373+12
 2186 05e4 9BF97210 		ldrsb	r1, [fp, #114]
 2187 05e8 FFF7FEFF 		bl	_ZN6RepRap20FlagTemperatureFaultEa
 2188 05ec 3869     		ldr	r0, [r7, #16]
 2189 05ee FFF7FEFF 		bl	_ZN6GCodes11HeaterFaultEv
 2190 05f2 9BF874A0 		ldrb	r10, [fp, #116]	@ zero_extendqisi2
 2191 05f6 47E5     		b	.L257
 2192              	.L369:
 2193 05f8 3869     		ldr	r0, [r7, #16]
 2194 05fa FFF7FEFF 		bl	_ZN6GCodes16HeaterFaultPauseEv
 2195 05fe A5E7     		b	.L273
 2196              	.L370:
 2197 0600 3869     		ldr	r0, [r7, #16]
 2198 0602 FFF7FEFF 		bl	_ZN6GCodes16HeaterFaultPauseEv
 2199 0606 DEE7     		b	.L268
 2200              	.L315:
 2201 0608 4A46     		mov	r2, r9
 2202 060a 2EE6     		b	.L299
 2203              	.L311:
 2204 060c 4946     		mov	r1, r9
 2205 060e 2BE7     		b	.L293
 2206              	.L306:
 2207 0610 CDF81490 		str	r9, [sp, #20]	@ float
 2208 0614 E0E5     		b	.L281
 2209              	.L374:
 2210 0616 00BF     		.align	2
 2211              	.L373:
 2212 0618 6F12833A 		.word	981668463
 2213 061c 00000000 		.word	.LANCHOR0
 2214 0620 00007A44 		.word	1148846080
 2215 0624 00000000 		.word	reprap
 2216 0628 90050000 		.word	.LC28
 2217 062c 28050000 		.word	.LC27
 2218              		.size	_ZN3PID4SpinEv, .-_ZN3PID4SpinEv
 2219              		.global	_ZN3PID15tuningPeakDelayE
 2220              		.global	_ZN3PID17tuningHeatingTimeE
 2221              		.global	_ZN3PID21tuningPeakTemperatureE
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 40


 2222              		.global	_ZN3PID19tuningHeaterOffTempE
 2223              		.global	_ZN3PID19tuningReadingsTakenE
 2224              		.global	_ZN3PID21tuningReadingIntervalE
 2225              		.global	_ZN3PID20tuningPhaseStartTimeE
 2226              		.global	_ZN3PID15tuningBeginTimeE
 2227              		.global	_ZN3PID16tuningTargetTempE
 2228              		.global	_ZN3PID9tuningPwmE
 2229              		.global	_ZN3PID15tuningStartTempE
 2230              		.global	_ZN3PID18tuningTempReadingsE
 2231              		.section	.bss._ZN3PID17tuningHeatingTimeE,"aw",%nobits
 2232              		.align	2
 2233              		.set	.LANCHOR8,. + 0
 2234              		.type	_ZN3PID17tuningHeatingTimeE, %object
 2235              		.size	_ZN3PID17tuningHeatingTimeE, 4
 2236              	_ZN3PID17tuningHeatingTimeE:
 2237 0000 00000000 		.space	4
 2238              		.section	.bss._ZN3PID15tuningPeakDelayE,"aw",%nobits
 2239              		.align	2
 2240              		.set	.LANCHOR6,. + 0
 2241              		.type	_ZN3PID15tuningPeakDelayE, %object
 2242              		.size	_ZN3PID15tuningPeakDelayE, 4
 2243              	_ZN3PID15tuningPeakDelayE:
 2244 0000 00000000 		.space	4
 2245              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 2246              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 2247              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 2248              	_ZL28cpu_irq_prev_interrupt_state:
 2249 0000 00       		.space	1
 2250              		.section	.bss._ZN3PID19tuningReadingsTakenE,"aw",%nobits
 2251              		.align	2
 2252              		.set	.LANCHOR1,. + 0
 2253              		.type	_ZN3PID19tuningReadingsTakenE, %object
 2254              		.size	_ZN3PID19tuningReadingsTakenE, 4
 2255              	_ZN3PID19tuningReadingsTakenE:
 2256 0000 00000000 		.space	4
 2257              		.section	.bss._ZN3PID21tuningPeakTemperatureE,"aw",%nobits
 2258              		.align	2
 2259              		.set	.LANCHOR11,. + 0
 2260              		.type	_ZN3PID21tuningPeakTemperatureE, %object
 2261              		.size	_ZN3PID21tuningPeakTemperatureE, 4
 2262              	_ZN3PID21tuningPeakTemperatureE:
 2263 0000 00000000 		.space	4
 2264              		.section	.bss._ZN3PID21tuningReadingIntervalE,"aw",%nobits
 2265              		.align	2
 2266              		.set	.LANCHOR2,. + 0
 2267              		.type	_ZN3PID21tuningReadingIntervalE, %object
 2268              		.size	_ZN3PID21tuningReadingIntervalE, 4
 2269              	_ZN3PID21tuningReadingIntervalE:
 2270 0000 00000000 		.space	4
 2271              		.section	.bss._ZN3PID18tuningTempReadingsE,"aw",%nobits
 2272              		.align	2
 2273              		.set	.LANCHOR0,. + 0
 2274              		.type	_ZN3PID18tuningTempReadingsE, %object
 2275              		.size	_ZN3PID18tuningTempReadingsE, 4
 2276              	_ZN3PID18tuningTempReadingsE:
 2277 0000 00000000 		.space	4
 2278              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 41


 2279              		.align	2
 2280              		.type	_ZL32cpu_irq_critical_section_counter, %object
 2281              		.size	_ZL32cpu_irq_critical_section_counter, 4
 2282              	_ZL32cpu_irq_critical_section_counter:
 2283 0000 00000000 		.space	4
 2284              		.section	.rodata.str1.4,"aMS",%progbits,1
 2285              		.align	2
 2286              	.LC0:
 2287 0000 48656174 		.ascii	"Heater %d not switched on due to temperature fault\012"
 2287      65722025 
 2287      64206E6F 
 2287      74207377 
 2287      69746368 
 2288 0033 00       		.ascii	"\000"
 2289              	.LC1:
 2290 0034 48656174 		.ascii	"Heater %d switched on\012\000"
 2290      65722025 
 2290      64207377 
 2290      69746368 
 2290      6564206F 
 2291 004b 00       		.space	1
 2292              	.LC2:
 2293 004c 48656174 		.ascii	"Heater %d switched off\012\000"
 2293      65722025 
 2293      64207377 
 2293      69746368 
 2293      6564206F 
 2294              	.LC3:
 2295 0064 4572726F 		.ascii	"Error: Temperature %.1f too high for heater %d!\012"
 2295      723A2054 
 2295      656D7065 
 2295      72617475 
 2295      72652025 
 2296 0094 00       		.ascii	"\000"
 2297 0095 000000   		.space	3
 2298              	.LC4:
 2299 0098 4572726F 		.ascii	"Error: heater %d cannot be auto tuned while it is d"
 2299      723A2068 
 2299      65617465 
 2299      72202564 
 2299      2063616E 
 2300 00cb 69736162 		.ascii	"isabled\000"
 2300      6C656400 
 2301 00d3 00       		.space	1
 2302              	.LC5:
 2303 00d4 4572726F 		.ascii	"Error: heater %d reported error '%s' at start of au"
 2303      723A2068 
 2303      65617465 
 2303      72202564 
 2303      20726570 
 2304 0107 746F2074 		.ascii	"to tuning\000"
 2304      756E696E 
 2304      6700
 2305 0111 000000   		.space	3
 2306              	.LC6:
 2307 0114 4175746F 		.ascii	"Auto tuning heater %d using target temperature %.1f"
 2307      2074756E 
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 42


 2307      696E6720 
 2307      68656174 
 2307      65722025 
 2308 0147 4320616E 		.ascii	"C and PWM %.2f - do not leave printer unattended\000"
 2308      64205057 
 2308      4D20252E 
 2308      3266202D 
 2308      20646F20 
 2309              	.LC7:
 2310 0178 4572726F 		.ascii	"Error: heater %d must be off and cold before auto t"
 2310      723A2068 
 2310      65617465 
 2310      72202564 
 2310      206D7573 
 2311 01ab 756E696E 		.ascii	"uning it\000"
 2311      67206974 
 2311      00
 2312              	.LC8:
 2313 01b4 48656174 		.ascii	"Heater %d is being tuned, phase %u of %u\000"
 2313      65722025 
 2313      64206973 
 2313      20626569 
 2313      6E672074 
 2314 01dd 000000   		.space	3
 2315              	.LC9:
 2316 01e0 48656174 		.ascii	"Heater %d tuning succeeded, use M307 H%d to see res"
 2316      65722025 
 2316      64207475 
 2316      6E696E67 
 2316      20737563 
 2317 0213 756C7400 		.ascii	"ult\000"
 2318 0217 00       		.space	1
 2319              	.LC10:
 2320 0218 48656174 		.ascii	"Heater %d tuning failed\000"
 2320      65722025 
 2320      64207475 
 2320      6E696E67 
 2320      20666169 
 2321              	.LC11:
 2322 0230 25733A20 		.ascii	"%s: interval %.1f sec, readings\000"
 2322      696E7465 
 2322      7276616C 
 2322      20252E31 
 2322      66207365 
 2323              	.LC12:
 2324 0250 0A00     		.ascii	"\012\000"
 2325 0252 0000     		.space	2
 2326              	.LC13:
 2327 0254 20252E31 		.ascii	" %.1f\000"
 2327      6600
 2328 025a 0000     		.space	2
 2329              	.LC14:
 2330 025c 41742063 		.ascii	"At completion\000"
 2330      6F6D706C 
 2330      6574696F 
 2330      6E00
 2331 026a 0000     		.space	2
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 43


 2332              	.LC15:
 2333 026c 4175746F 		.ascii	"Auto tune heater %d completed in %u sec\012Use M307"
 2333      2074756E 
 2333      65206865 
 2333      61746572 
 2333      20256420 
 2334 029c 20482564 		.ascii	" H%d to see the result, or M500 to save the result "
 2334      20746F20 
 2334      73656520 
 2334      74686520 
 2334      72657375 
 2335 02cf 696E2063 		.ascii	"in config-override.g\012\000"
 2335      6F6E6669 
 2335      672D6F76 
 2335      65727269 
 2335      64652E67 
 2336 02e5 000000   		.space	3
 2337              	.LC16:
 2338 02e8 4175746F 		.ascii	"Auto tune of heater %u failed due to bad curve fit "
 2338      2074756E 
 2338      65206F66 
 2338      20686561 
 2338      74657220 
 2339 031b 28473D25 		.ascii	"(G=%.1f, tc=%.1f, td=%.1f)\012\000"
 2339      2E31662C 
 2339      2074633D 
 2339      252E3166 
 2339      2C207464 
 2340 0337 00       		.space	1
 2341              	.LC17:
 2342 0338 4175746F 		.ascii	"Auto tune phase 1, heater on\012\000"
 2342      2074756E 
 2342      65207068 
 2342      61736520 
 2342      312C2068 
 2343 0356 0000     		.space	2
 2344              	.LC18:
 2345 0358 4175746F 		.ascii	"Auto tune cancelled because starting temperature is"
 2345      2074756E 
 2345      65206361 
 2345      6E63656C 
 2345      6C656420 
 2346 038b 206E6F74 		.ascii	" not stable\012\000"
 2346      20737461 
 2346      626C650A 
 2346      00
 2347              	.LC19:
 2348 0398 4175746F 		.ascii	"Auto tune cancelled because target temperature was "
 2348      2074756E 
 2348      65206361 
 2348      6E63656C 
 2348      6C656420 
 2349 03cb 6E6F7420 		.ascii	"not reached\012\000"
 2349      72656163 
 2349      6865640A 
 2349      00
 2350              	.LC20:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 44


 2351 03d8 4175746F 		.ascii	"Auto tune phase 2, heater off\012\000"
 2351      2074756E 
 2351      65207068 
 2351      61736520 
 2351      322C2068 
 2352 03f7 00       		.space	1
 2353              	.LC21:
 2354 03f8 4175746F 		.ascii	"Auto tune cancelled because temperature is not fall"
 2354      2074756E 
 2354      65206361 
 2354      6E63656C 
 2354      6C656420 
 2355 042b 696E670A 		.ascii	"ing\012\000"
 2355      00
 2356              	.LC22:
 2357 0430 4174206E 		.ascii	"At no peak found\000"
 2357      6F207065 
 2357      616B2066 
 2357      6F756E64 
 2357      00
 2358 0441 000000   		.space	3
 2359              	.LC23:
 2360 0444 4175746F 		.ascii	"Auto tune cancelled because temperature peak was no"
 2360      2074756E 
 2360      65206361 
 2360      6E63656C 
 2360      6C656420 
 2361 0477 74206964 		.ascii	"t identified\012\000"
 2361      656E7469 
 2361      66696564 
 2361      0A00
 2362 0485 000000   		.space	3
 2363              	.LC24:
 2364 0488 4175746F 		.ascii	"Auto tune phase 3, peak temperature was %.1f\012\000"
 2364      2074756E 
 2364      65207068 
 2364      61736520 
 2364      332C2070 
 2365 04b6 0000     		.space	2
 2366              	.LC25:
 2367 04b8 4175746F 		.ascii	"Auto tune cancelled because temperature is not incr"
 2367      2074756E 
 2367      65206361 
 2367      6E63656C 
 2367      6C656420 
 2368 04eb 65617369 		.ascii	"easing\012\000"
 2368      6E670A00 
 2369 04f3 00       		.space	1
 2370              	.LC26:
 2371 04f4 4572726F 		.ascii	"Error: Temperature reading fault on heater %d: %s\012"
 2371      723A2054 
 2371      656D7065 
 2371      72617475 
 2371      72652072 
 2372 0526 00       		.ascii	"\000"
 2373 0527 00       		.space	1
 2374              	.LC27:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 45


 2375 0528 4572726F 		.ascii	"Error: heating fault on heater %d, temperature risi"
 2375      723A2068 
 2375      65617469 
 2375      6E672066 
 2375      61756C74 
 2376 055b 6E67206D 		.ascii	"ng much more slowly than the expected %.1f\302\260C"
 2376      75636820 
 2376      6D6F7265 
 2376      20736C6F 
 2376      776C7920 
 2377 0588 2F736563 		.ascii	"/sec\012\000"
 2377      0A00
 2378 058e 0000     		.space	2
 2379              	.LC28:
 2380 0590 4572726F 		.ascii	"Error: heating fault on heater %d, temperature excu"
 2380      723A2068 
 2380      65617469 
 2380      6E672066 
 2380      61756C74 
 2381 05c3 7273696F 		.ascii	"rsion exceeded %.1fC\012\000"
 2381      6E206578 
 2381      63656564 
 2381      65642025 
 2381      2E316643 
 2382 05d9 000000   		.section	.bss._ZN3PID16tuningTargetTempE,"aw",%nobits
 2383              		.align	2
 2384              		.set	.LANCHOR4,. + 0
 2385              		.type	_ZN3PID16tuningTargetTempE, %object
 2386              		.size	_ZN3PID16tuningTargetTempE, 4
 2387              	_ZN3PID16tuningTargetTempE:
 2388 0000 00000000 		.space	4
 2389              		.section	.bss._ZN3PID20tuningPhaseStartTimeE,"aw",%nobits
 2390              		.align	2
 2391              		.set	.LANCHOR10,. + 0
 2392              		.type	_ZN3PID20tuningPhaseStartTimeE, %object
 2393              		.size	_ZN3PID20tuningPhaseStartTimeE, 4
 2394              	_ZN3PID20tuningPhaseStartTimeE:
 2395 0000 00000000 		.space	4
 2396              		.section	.bss._ZN3PID19tuningHeaterOffTempE,"aw",%nobits
 2397              		.align	2
 2398              		.set	.LANCHOR7,. + 0
 2399              		.type	_ZN3PID19tuningHeaterOffTempE, %object
 2400              		.size	_ZN3PID19tuningHeaterOffTempE, 4
 2401              	_ZN3PID19tuningHeaterOffTempE:
 2402 0000 00000000 		.space	4
 2403              		.section	.bss._ZN3PID9tuningPwmE,"aw",%nobits
 2404              		.align	2
 2405              		.set	.LANCHOR3,. + 0
 2406              		.type	_ZN3PID9tuningPwmE, %object
 2407              		.size	_ZN3PID9tuningPwmE, 4
 2408              	_ZN3PID9tuningPwmE:
 2409 0000 00000000 		.space	4
 2410              		.section	.bss._ZN3PID15tuningBeginTimeE,"aw",%nobits
 2411              		.align	2
 2412              		.set	.LANCHOR9,. + 0
 2413              		.type	_ZN3PID15tuningBeginTimeE, %object
 2414              		.size	_ZN3PID15tuningBeginTimeE, 4
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8Ag54e.s 			page 46


 2415              	_ZN3PID15tuningBeginTimeE:
 2416 0000 00000000 		.space	4
 2417              		.section	.bss._ZN3PID15tuningStartTempE,"aw",%nobits
 2418              		.align	2
 2419              		.set	.LANCHOR5,. + 0
 2420              		.type	_ZN3PID15tuningStartTempE, %object
 2421              		.size	_ZN3PID15tuningStartTempE, 4
 2422              	_ZN3PID15tuningStartTempE:
 2423 0000 00000000 		.space	4
 2424              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
