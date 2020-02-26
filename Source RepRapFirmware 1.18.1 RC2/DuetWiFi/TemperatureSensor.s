ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV5DoBZ.s 			page 1


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
  15              		.file	"TemperatureSensor.cpp"
  16              		.section	.text._ZN17TemperatureSensor16InitThermocoupleEh,"ax",%progbits
  17              		.align	2
  18              		.global	_ZN17TemperatureSensor16InitThermocoupleEh
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN17TemperatureSensor16InitThermocoupleEh, %function
  22              	_ZN17TemperatureSensor16InitThermocoupleEh:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 38B5     		push	{r3, r4, r5, lr}
  26 0002 084B     		ldr	r3, .L2
  27 0004 0170     		strb	r1, [r0]
  28 0006 0025     		movs	r5, #0
  29 0008 4360     		str	r3, [r0, #4]
  30 000a 8570     		strb	r5, [r0, #2]
  31 000c 0821     		movs	r1, #8
  32 000e 0446     		mov	r4, r0
  33 0010 FFF7FEFF 		bl	sspi_master_init
  34 0014 FFF7FEFF 		bl	millis
  35 0018 0023     		movs	r3, #0
  36 001a A060     		str	r0, [r4, #8]
  37 001c 2574     		strb	r5, [r4, #16]
  38 001e E360     		str	r3, [r4, #12]	@ float
  39 0020 38BD     		pop	{r3, r4, r5, pc}
  40              	.L3:
  41 0022 00BF     		.align	2
  42              	.L2:
  43 0024 00093D00 		.word	4000000
  44              		.size	_ZN17TemperatureSensor16InitThermocoupleEh, .-_ZN17TemperatureSensor16InitThermocoupleEh
  45              		.section	.text._ZNK17TemperatureSensor16DoSpiTransactionEPKhjRm,"ax",%progbits
  46              		.align	2
  47              		.global	_ZNK17TemperatureSensor16DoSpiTransactionEPKhjRm
  48              		.thumb
  49              		.thumb_func
  50              		.type	_ZNK17TemperatureSensor16DoSpiTransactionEPKhjRm, %function
  51              	_ZNK17TemperatureSensor16DoSpiTransactionEPKhjRm:
  52              		@ args = 0, pretend = 0, frame = 8
  53              		@ frame_needed = 0, uses_anonymous_args = 0
  54 0000 F0B5     		push	{r4, r5, r6, r7, lr}
  55 0002 83B0     		sub	sp, sp, #12
  56 0004 0446     		mov	r4, r0
  57 0006 0E46     		mov	r6, r1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV5DoBZ.s 			page 2


  58 0008 1546     		mov	r5, r2
  59 000a 1F46     		mov	r7, r3
  60 000c FFF7FEFF 		bl	sspi_acquire
  61 0010 10B9     		cbnz	r0, .L14
  62 0012 0920     		movs	r0, #9
  63              	.L5:
  64 0014 03B0     		add	sp, sp, #12
  65              		@ sp needed
  66 0016 F0BD     		pop	{r4, r5, r6, r7, pc}
  67              	.L14:
  68 0018 2046     		mov	r0, r4
  69 001a FFF7FEFF 		bl	sspi_master_setup_device
  70 001e 2823     		movs	r3, #40
  71              	@ 83 "C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\cores\arduino/wiring.h" 1
  72              		L_63_delayMicroseconds:
  73 0020 013B     		subs   r3, #1
  74 0022 7FF4FDAF 		bne    L_63_delayMicroseconds
  75              	
  76              	@ 0 "" 2
  77              		.thumb
  78 0026 2046     		mov	r0, r4
  79 0028 FFF7FEFF 		bl	sspi_select_device
  80 002c 2823     		movs	r3, #40
  81              	@ 83 "C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\cores\arduino/wiring.h" 1
  82              		L_67_delayMicroseconds:
  83 002e 013B     		subs   r3, #1
  84 0030 7FF4FDAF 		bne    L_67_delayMicroseconds
  85              	
  86              	@ 0 "" 2
  87              		.thumb
  88 0034 3046     		mov	r0, r6
  89 0036 01A9     		add	r1, sp, #4
  90 0038 2A46     		mov	r2, r5
  91 003a FFF7FEFF 		bl	sspi_transceive_packet
  92 003e 2823     		movs	r3, #40
  93 0040 0646     		mov	r6, r0
  94              	@ 83 "C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\cores\arduino/wiring.h" 1
  95              		L_74_delayMicroseconds:
  96 0042 013B     		subs   r3, #1
  97 0044 7FF4FDAF 		bne    L_74_delayMicroseconds
  98              	
  99              	@ 0 "" 2
 100              		.thumb
 101 0048 2046     		mov	r0, r4
 102 004a FFF7FEFF 		bl	sspi_deselect_device
 103 004e 2823     		movs	r3, #40
 104              	@ 83 "C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\cores\arduino/wiring.h" 1
 105              		L_78_delayMicroseconds:
 106 0050 013B     		subs   r3, #1
 107 0052 7FF4FDAF 		bne    L_78_delayMicroseconds
 108              	
 109              	@ 0 "" 2
 110              		.thumb
 111 0056 FFF7FEFF 		bl	sspi_release
 112 005a 16B1     		cbz	r6, .L15
 113 005c 0620     		movs	r0, #6
 114 005e 03B0     		add	sp, sp, #12
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV5DoBZ.s 			page 3


 115              		@ sp needed
 116 0060 F0BD     		pop	{r4, r5, r6, r7, pc}
 117              	.L15:
 118 0062 9DF80420 		ldrb	r2, [sp, #4]	@ zero_extendqisi2
 119 0066 3A60     		str	r2, [r7]
 120 0068 012D     		cmp	r5, #1
 121 006a 0AD9     		bls	.L9
 122 006c 0DF10301 		add	r1, sp, #3
 123 0070 01AB     		add	r3, sp, #4
 124 0072 0D44     		add	r5, r5, r1
 125              	.L10:
 126 0074 13F8011F 		ldrb	r1, [r3, #1]!	@ zero_extendqisi2
 127 0078 AB42     		cmp	r3, r5
 128 007a 41EA0222 		orr	r2, r1, r2, lsl #8
 129 007e F9D1     		bne	.L10
 130 0080 3A60     		str	r2, [r7]
 131              	.L9:
 132 0082 0020     		movs	r0, #0
 133 0084 C6E7     		b	.L5
 134              		.size	_ZNK17TemperatureSensor16DoSpiTransactionEPKhjRm, .-_ZNK17TemperatureSensor16DoSpiTransactio
 135 0086 00BF     		.section	.text._ZNK17TemperatureSensor10TryInitRtdEv,"ax",%progbits
 136              		.align	2
 137              		.global	_ZNK17TemperatureSensor10TryInitRtdEv
 138              		.thumb
 139              		.thumb_func
 140              		.type	_ZNK17TemperatureSensor10TryInitRtdEv, %function
 141              	_ZNK17TemperatureSensor10TryInitRtdEv:
 142              		@ args = 0, pretend = 0, frame = 8
 143              		@ frame_needed = 0, uses_anonymous_args = 0
 144 0000 10B5     		push	{r4, lr}
 145 0002 82B0     		sub	sp, sp, #8
 146 0004 01AB     		add	r3, sp, #4
 147 0006 0B49     		ldr	r1, .L21
 148 0008 0222     		movs	r2, #2
 149 000a 0446     		mov	r4, r0
 150 000c FFF7FEFF 		bl	_ZNK17TemperatureSensor16DoSpiTransactionEPKhjRm
 151 0010 08B1     		cbz	r0, .L20
 152              	.L18:
 153 0012 02B0     		add	sp, sp, #8
 154              		@ sp needed
 155 0014 10BD     		pop	{r4, pc}
 156              	.L20:
 157 0016 2046     		mov	r0, r4
 158 0018 01AB     		add	r3, sp, #4
 159 001a 0749     		ldr	r1, .L21+4
 160 001c 0222     		movs	r2, #2
 161 001e FFF7FEFF 		bl	_ZNK17TemperatureSensor16DoSpiTransactionEPKhjRm
 162 0022 0028     		cmp	r0, #0
 163 0024 F5D1     		bne	.L18
 164 0026 9DF80430 		ldrb	r3, [sp, #4]	@ zero_extendqisi2
 165 002a C12B     		cmp	r3, #193
 166 002c 18BF     		it	ne
 167 002e 0A20     		movne	r0, #10
 168 0030 02B0     		add	sp, sp, #8
 169              		@ sp needed
 170 0032 10BD     		pop	{r4, pc}
 171              	.L22:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV5DoBZ.s 			page 4


 172              		.align	2
 173              	.L21:
 174 0034 00000000 		.word	.LANCHOR0
 175 0038 00000000 		.word	.LANCHOR1
 176              		.size	_ZNK17TemperatureSensor10TryInitRtdEv, .-_ZNK17TemperatureSensor10TryInitRtdEv
 177              		.section	.text._ZN17TemperatureSensor7InitRtdEh,"ax",%progbits
 178              		.align	2
 179              		.global	_ZN17TemperatureSensor7InitRtdEh
 180              		.thumb
 181              		.thumb_func
 182              		.type	_ZN17TemperatureSensor7InitRtdEh, %function
 183              	_ZN17TemperatureSensor7InitRtdEh:
 184              		@ args = 0, pretend = 0, frame = 0
 185              		@ frame_needed = 0, uses_anonymous_args = 0
 186 0000 0122     		movs	r2, #1
 187 0002 174B     		ldr	r3, .L28
 188 0004 70B5     		push	{r4, r5, r6, lr}
 189 0006 0170     		strb	r1, [r0]
 190 0008 8270     		strb	r2, [r0, #2]
 191 000a 4360     		str	r3, [r0, #4]
 192 000c 0821     		movs	r1, #8
 193 000e 0446     		mov	r4, r0
 194 0010 FFF7FEFF 		bl	sspi_master_init
 195 0014 0325     		movs	r5, #3
 196              	.L26:
 197 0016 2046     		mov	r0, r4
 198 0018 FFF7FEFF 		bl	_ZNK17TemperatureSensor10TryInitRtdEv
 199 001c 0646     		mov	r6, r0
 200 001e 6420     		movs	r0, #100
 201 0020 B6B1     		cbz	r6, .L24
 202 0022 FFF7FEFF 		bl	delay
 203 0026 013D     		subs	r5, r5, #1
 204 0028 F5D1     		bne	.L26
 205 002a FFF7FEFF 		bl	millis
 206 002e 0022     		movs	r2, #0
 207 0030 0C4B     		ldr	r3, .L28+4
 208 0032 A060     		str	r0, [r4, #8]
 209 0034 2674     		strb	r6, [r4, #16]
 210 0036 E260     		str	r2, [r4, #12]	@ float
 211 0038 3046     		mov	r0, r6
 212 003a 1C68     		ldr	r4, [r3]
 213 003c FFF7FEFF 		bl	_Z22TemperatureErrorString16TemperatureError
 214 0040 0621     		movs	r1, #6
 215 0042 0346     		mov	r3, r0
 216 0044 084A     		ldr	r2, .L28+8
 217 0046 2046     		mov	r0, r4
 218 0048 BDE87040 		pop	{r4, r5, r6, lr}
 219 004c FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 220              	.L24:
 221 0050 FFF7FEFF 		bl	millis
 222 0054 0023     		movs	r3, #0
 223 0056 A060     		str	r0, [r4, #8]
 224 0058 2674     		strb	r6, [r4, #16]
 225 005a E360     		str	r3, [r4, #12]	@ float
 226 005c 70BD     		pop	{r4, r5, r6, pc}
 227              	.L29:
 228 005e 00BF     		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV5DoBZ.s 			page 5


 229              	.L28:
 230 0060 00093D00 		.word	4000000
 231 0064 00000000 		.word	reprap
 232 0068 00000000 		.word	.LC0
 233              		.size	_ZN17TemperatureSensor7InitRtdEh, .-_ZN17TemperatureSensor7InitRtdEh
 234              		.section	.text._ZN17TemperatureSensor26GetThermocoupleTemperatureEPf,"ax",%progbits
 235              		.align	2
 236              		.global	_ZN17TemperatureSensor26GetThermocoupleTemperatureEPf
 237              		.thumb
 238              		.thumb_func
 239              		.type	_ZN17TemperatureSensor26GetThermocoupleTemperatureEPf, %function
 240              	_ZN17TemperatureSensor26GetThermocoupleTemperatureEPf:
 241              		@ args = 0, pretend = 0, frame = 8
 242              		@ frame_needed = 0, uses_anonymous_args = 0
 243 0000 70B5     		push	{r4, r5, r6, lr}
 244 0002 82B0     		sub	sp, sp, #8
 245 0004 0446     		mov	r4, r0
 246 0006 0E46     		mov	r6, r1
 247 0008 FFF7FEFF 		bl	_Z11inInterruptv
 248 000c 0546     		mov	r5, r0
 249 000e 20B1     		cbz	r0, .L50
 250              	.L31:
 251 0010 E368     		ldr	r3, [r4, #12]	@ float
 252 0012 207C     		ldrb	r0, [r4, #16]	@ zero_extendqisi2
 253 0014 3360     		str	r3, [r6]	@ float
 254              	.L47:
 255 0016 02B0     		add	sp, sp, #8
 256              		@ sp needed
 257 0018 70BD     		pop	{r4, r5, r6, pc}
 258              	.L50:
 259 001a FFF7FEFF 		bl	millis
 260 001e A368     		ldr	r3, [r4, #8]
 261 0020 C01A     		subs	r0, r0, r3
 262 0022 6328     		cmp	r0, #99
 263 0024 F4D9     		bls	.L31
 264 0026 0422     		movs	r2, #4
 265 0028 2946     		mov	r1, r5
 266 002a 2046     		mov	r0, r4
 267 002c 0DEB0203 		add	r3, sp, r2
 268 0030 FFF7FEFF 		bl	_ZNK17TemperatureSensor16DoSpiTransactionEPKhjRm
 269 0034 10B1     		cbz	r0, .L51
 270 0036 2074     		strb	r0, [r4, #16]
 271              	.L52:
 272 0038 02B0     		add	sp, sp, #8
 273              		@ sp needed
 274 003a 70BD     		pop	{r4, r5, r6, pc}
 275              	.L51:
 276 003c FFF7FEFF 		bl	millis
 277 0040 019A     		ldr	r2, [sp, #4]
 278 0042 144B     		ldr	r3, .L53
 279 0044 A060     		str	r0, [r4, #8]
 280 0046 1340     		ands	r3, r3, r2
 281 0048 83B9     		cbnz	r3, .L38
 282 004a 134B     		ldr	r3, .L53+4
 283 004c 1340     		ands	r3, r3, r2
 284 004e 83B1     		cbz	r3, .L35
 285 0050 D103     		lsls	r1, r2, #15
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV5DoBZ.s 			page 6


 286 0052 0BD5     		bpl	.L38
 287 0054 12F00103 		ands	r3, r2, #1
 288 0058 02D0     		beq	.L37
 289 005a 0423     		movs	r3, #4
 290 005c 2374     		strb	r3, [r4, #16]
 291 005e 0123     		movs	r3, #1
 292              	.L37:
 293 0060 9207     		lsls	r2, r2, #30
 294 0062 03D4     		bmi	.L38
 295 0064 13B9     		cbnz	r3, .L38
 296 0066 0220     		movs	r0, #2
 297 0068 2074     		strb	r0, [r4, #16]
 298 006a D4E7     		b	.L47
 299              	.L38:
 300 006c 0720     		movs	r0, #7
 301 006e 2074     		strb	r0, [r4, #16]
 302 0070 E2E7     		b	.L52
 303              	.L35:
 304 0072 920C     		lsrs	r2, r2, #18
 305 0074 02F40051 		and	r1, r2, #8192
 306 0078 4942     		negs	r1, r1
 307 007a 1143     		orrs	r1, r1, r2
 308 007c 07EE901A 		fmsr	s15, r1	@ int
 309 0080 FAEECF7A 		vcvt.f32.s32	s15, s15, #2
 310 0084 1846     		mov	r0, r3
 311 0086 C4ED037A 		fsts	s15, [r4, #12]
 312 008a C6ED007A 		fsts	s15, [r6]
 313 008e 2374     		strb	r3, [r4, #16]
 314 0090 C1E7     		b	.L47
 315              	.L54:
 316 0092 00BF     		.align	2
 317              	.L53:
 318 0094 08000200 		.word	131080
 319 0098 07000100 		.word	65543
 320              		.size	_ZN17TemperatureSensor26GetThermocoupleTemperatureEPf, .-_ZN17TemperatureSensor26GetThermoco
 321              		.section	.text._ZN17TemperatureSensor17GetRtdTemperatureEPf,"ax",%progbits
 322              		.align	2
 323              		.global	_ZN17TemperatureSensor17GetRtdTemperatureEPf
 324              		.thumb
 325              		.thumb_func
 326              		.type	_ZN17TemperatureSensor17GetRtdTemperatureEPf, %function
 327              	_ZN17TemperatureSensor17GetRtdTemperatureEPf:
 328              		@ args = 0, pretend = 0, frame = 8
 329              		@ frame_needed = 0, uses_anonymous_args = 0
 330 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 331 0002 83B0     		sub	sp, sp, #12
 332 0004 0446     		mov	r4, r0
 333 0006 0D46     		mov	r5, r1
 334 0008 FFF7FEFF 		bl	_Z11inInterruptv
 335 000c 20B1     		cbz	r0, .L74
 336              	.L56:
 337 000e E368     		ldr	r3, [r4, #12]	@ float
 338 0010 207C     		ldrb	r0, [r4, #16]	@ zero_extendqisi2
 339 0012 2B60     		str	r3, [r5]	@ float
 340              	.L71:
 341 0014 03B0     		add	sp, sp, #12
 342              		@ sp needed
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV5DoBZ.s 			page 7


 343 0016 F0BD     		pop	{r4, r5, r6, r7, pc}
 344              	.L74:
 345 0018 FFF7FEFF 		bl	millis
 346 001c A368     		ldr	r3, [r4, #8]
 347 001e C01A     		subs	r0, r0, r3
 348 0020 6328     		cmp	r0, #99
 349 0022 F4D9     		bls	.L56
 350 0024 0422     		movs	r2, #4
 351 0026 2046     		mov	r0, r4
 352 0028 3349     		ldr	r1, .L77
 353 002a 0DEB0203 		add	r3, sp, r2
 354 002e FFF7FEFF 		bl	_ZNK17TemperatureSensor16DoSpiTransactionEPKhjRm
 355 0032 0646     		mov	r6, r0
 356 0034 18B1     		cbz	r0, .L75
 357 0036 3046     		mov	r0, r6
 358 0038 2674     		strb	r6, [r4, #16]
 359 003a 03B0     		add	sp, sp, #12
 360              		@ sp needed
 361 003c F0BD     		pop	{r4, r5, r6, r7, pc}
 362              	.L75:
 363 003e FFF7FEFF 		bl	millis
 364 0042 019F     		ldr	r7, [sp, #4]
 365 0044 2D4B     		ldr	r3, .L77+4
 366 0046 A060     		str	r0, [r4, #8]
 367 0048 3B40     		ands	r3, r3, r7
 368 004a B3F5410F 		cmp	r3, #12648448
 369 004e 05D0     		beq	.L59
 370 0050 2046     		mov	r0, r4
 371 0052 FFF7FEFF 		bl	_ZNK17TemperatureSensor10TryInitRtdEv
 372 0056 0820     		movs	r0, #8
 373 0058 2074     		strb	r0, [r4, #16]
 374 005a DBE7     		b	.L71
 375              	.L59:
 376 005c 2849     		ldr	r1, .L77+8
 377 005e C7F34E07 		ubfx	r7, r7, #1, #15
 378 0062 3046     		mov	r0, r6
 379 0064 2622     		movs	r2, #38
 380              	.L60:
 381 0066 131A     		subs	r3, r2, r0
 382 0068 00EB5303 		add	r3, r0, r3, lsr #1
 383 006c 01EB8306 		add	r6, r1, r3, lsl #2
 384 0070 7688     		ldrh	r6, [r6, #2]
 385 0072 BE42     		cmp	r6, r7
 386 0074 0AD3     		bcc	.L61
 387              	.L73:
 388 0076 1E1A     		subs	r6, r3, r0
 389 0078 1A46     		mov	r2, r3
 390 007a 8342     		cmp	r3, r0
 391 007c 00EB5603 		add	r3, r0, r6, lsr #1
 392 0080 01EB8306 		add	r6, r1, r3, lsl #2
 393 0084 05D9     		bls	.L63
 394 0086 7688     		ldrh	r6, [r6, #2]
 395 0088 BE42     		cmp	r6, r7
 396 008a F4D2     		bcs	.L73
 397              	.L61:
 398 008c 581C     		adds	r0, r3, #1
 399 008e 9042     		cmp	r0, r2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV5DoBZ.s 			page 8


 400 0090 E9D3     		bcc	.L60
 401              	.L63:
 402 0092 20B1     		cbz	r0, .L76
 403 0094 2528     		cmp	r0, #37
 404 0096 05D9     		bls	.L66
 405 0098 0420     		movs	r0, #4
 406 009a 2074     		strb	r0, [r4, #16]
 407 009c BAE7     		b	.L71
 408              	.L76:
 409 009e 0120     		movs	r0, #1
 410 00a0 2074     		strb	r0, [r4, #16]
 411 00a2 B7E7     		b	.L71
 412              	.L66:
 413 00a4 421E     		subs	r2, r0, #1
 414 00a6 01EB8203 		add	r3, r1, r2, lsl #2
 415 00aa 01EB8006 		add	r6, r1, r0, lsl #2
 416 00ae 5B88     		ldrh	r3, [r3, #2]
 417 00b0 7688     		ldrh	r6, [r6, #2]
 418 00b2 31F92220 		ldrsh	r2, [r1, r2, lsl #2]
 419 00b6 31F92010 		ldrsh	r1, [r1, r0, lsl #2]
 420 00ba FF1A     		subs	r7, r7, r3
 421 00bc 07EE107A 		fmsr	s14, r7	@ int
 422 00c0 F31A     		subs	r3, r6, r3
 423 00c2 B8EEC76A 		fsitos	s12, s14
 424 00c6 07EE103A 		fmsr	s14, r3	@ int
 425 00ca F8EEC77A 		fsitos	s15, s14
 426 00ce 891A     		subs	r1, r1, r2
 427 00d0 86EE277A 		fdivs	s14, s12, s15
 428 00d4 0023     		movs	r3, #0
 429 00d6 1846     		mov	r0, r3
 430 00d8 07EE901A 		fmsr	s15, r1	@ int
 431 00dc 06EE102A 		fmsr	s12, r2	@ int
 432 00e0 F8EEE76A 		fsitos	s13, s15
 433 00e4 F8EEC67A 		fsitos	s15, s12
 434 00e8 E6EE877A 		vfma.f32	s15, s13, s14
 435 00ec C4ED037A 		fsts	s15, [r4, #12]
 436 00f0 C5ED007A 		fsts	s15, [r5]
 437 00f4 2374     		strb	r3, [r4, #16]
 438 00f6 8DE7     		b	.L71
 439              	.L78:
 440              		.align	2
 441              	.L77:
 442 00f8 00000000 		.word	.LANCHOR3
 443 00fc 0100C100 		.word	12648449
 444 0100 00000000 		.word	.LANCHOR2
 445              		.size	_ZN17TemperatureSensor17GetRtdTemperatureEPf, .-_ZN17TemperatureSensor17GetRtdTemperatureEPf
 446              		.section	.rodata._ZZNK17TemperatureSensor10TryInitRtdEvE8modeData,"a",%progbits
 447              		.align	2
 448              		.set	.LANCHOR0,. + 0
 449              		.type	_ZZNK17TemperatureSensor10TryInitRtdEvE8modeData, %object
 450              		.size	_ZZNK17TemperatureSensor10TryInitRtdEvE8modeData, 2
 451              	_ZZNK17TemperatureSensor10TryInitRtdEvE8modeData:
 452 0000 80       		.byte	-128
 453 0001 C3       		.byte	-61
 454 0002 0000     		.section	.rodata._ZZN17TemperatureSensor17GetRtdTemperatureEPfE7dataOut,"a",%progbits
 455              		.align	2
 456              		.set	.LANCHOR3,. + 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV5DoBZ.s 			page 9


 457              		.type	_ZZN17TemperatureSensor17GetRtdTemperatureEPfE7dataOut, %object
 458              		.size	_ZZN17TemperatureSensor17GetRtdTemperatureEPfE7dataOut, 4
 459              	_ZZN17TemperatureSensor17GetRtdTemperatureEPfE7dataOut:
 460 0000 00       		.byte	0
 461 0001 37       		.byte	55
 462 0002 37       		.byte	55
 463 0003 37       		.byte	55
 464              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 465              		.align	2
 466              		.type	_ZL32cpu_irq_critical_section_counter, %object
 467              		.size	_ZL32cpu_irq_critical_section_counter, 4
 468              	_ZL32cpu_irq_critical_section_counter:
 469 0000 00000000 		.space	4
 470              		.section	.rodata.str1.4,"aMS",%progbits,1
 471              		.align	2
 472              	.LC0:
 473 0000 4572726F 		.ascii	"Error: failed to initialise RTD: %s\012\000"
 473      723A2066 
 473      61696C65 
 473      6420746F 
 473      20696E69 
 474 0025 000000   		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 475              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 476              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 477              	_ZL28cpu_irq_prev_interrupt_state:
 478 0000 00       		.space	1
 479              		.section	.rodata._ZL9tempTable,"a",%progbits
 480              		.align	2
 481              		.set	.LANCHOR2,. + 0
 482              		.type	_ZL9tempTable, %object
 483              		.size	_ZL9tempTable, 152
 484              	_ZL9tempTable:
 485 0000 E2FF     		.short	-30
 486 0002 3B1C     		.short	7227
 487 0004 ECFF     		.short	-20
 488 0006 7E1D     		.short	7550
 489 0008 F6FF     		.short	-10
 490 000a BF1E     		.short	7871
 491 000c 0000     		.short	0
 492 000e 0020     		.short	8192
 493 0010 0A00     		.short	10
 494 0012 4021     		.short	8512
 495 0014 1400     		.short	20
 496 0016 7E22     		.short	8830
 497 0018 1E00     		.short	30
 498 001a BC23     		.short	9148
 499 001c 2800     		.short	40
 500 001e F924     		.short	9465
 501 0020 3200     		.short	50
 502 0022 3526     		.short	9781
 503 0024 3C00     		.short	60
 504 0026 7027     		.short	10096
 505 0028 4600     		.short	70
 506 002a AA28     		.short	10410
 507 002c 5000     		.short	80
 508 002e E329     		.short	10723
 509 0030 5A00     		.short	90
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV5DoBZ.s 			page 10


 510 0032 1B2B     		.short	11035
 511 0034 6400     		.short	100
 512 0036 522C     		.short	11346
 513 0038 6E00     		.short	110
 514 003a 892D     		.short	11657
 515 003c 7800     		.short	120
 516 003e BE2E     		.short	11966
 517 0040 8200     		.short	130
 518 0042 F22F     		.short	12274
 519 0044 8C00     		.short	140
 520 0046 2631     		.short	12582
 521 0048 9600     		.short	150
 522 004a 5832     		.short	12888
 523 004c A000     		.short	160
 524 004e 8A33     		.short	13194
 525 0050 AA00     		.short	170
 526 0052 BA34     		.short	13498
 527 0054 B400     		.short	180
 528 0056 EA35     		.short	13802
 529 0058 BE00     		.short	190
 530 005a 1837     		.short	14104
 531 005c C800     		.short	200
 532 005e 4638     		.short	14406
 533 0060 E100     		.short	225
 534 0062 343B     		.short	15156
 535 0064 FA00     		.short	250
 536 0066 1D3E     		.short	15901
 537 0068 1301     		.short	275
 538 006a FF40     		.short	16639
 539 006c 2C01     		.short	300
 540 006e DB43     		.short	17371
 541 0070 4501     		.short	325
 542 0072 B246     		.short	18098
 543 0074 5E01     		.short	350
 544 0076 8249     		.short	18818
 545 0078 7701     		.short	375
 546 007a 4D4C     		.short	19533
 547 007c 9001     		.short	400
 548 007e 124F     		.short	20242
 549 0080 A901     		.short	425
 550 0082 D151     		.short	20945
 551 0084 C201     		.short	450
 552 0086 8A54     		.short	21642
 553 0088 DB01     		.short	475
 554 008a 3D57     		.short	22333
 555 008c F401     		.short	500
 556 008e EA59     		.short	23018
 557 0090 0D02     		.short	525
 558 0092 915C     		.short	23697
 559 0094 2602     		.short	550
 560 0096 325F     		.short	24370
 561              		.section	.rodata._ZZNK17TemperatureSensor10TryInitRtdEvE8readData,"a",%progbits
 562              		.align	2
 563              		.set	.LANCHOR1,. + 0
 564              		.type	_ZZNK17TemperatureSensor10TryInitRtdEvE8readData, %object
 565              		.size	_ZZNK17TemperatureSensor10TryInitRtdEvE8readData, 2
 566              	_ZZNK17TemperatureSensor10TryInitRtdEvE8readData:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV5DoBZ.s 			page 11


 567 0000 0000     		.space	2
 568 0002 0000     		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
