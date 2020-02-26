ARM GAS  C:\Users\George\AppData\Local\Temp\cc6ot0qr.s 			page 1


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
  14              		.file	"TemperatureSensor.cpp"
  15              		.section	.text._ZN17TemperatureSensor16InitThermocoupleEh,"ax",%progbits
  16              		.align	2
  17              		.global	_ZN17TemperatureSensor16InitThermocoupleEh
  18              		.thumb
  19              		.thumb_func
  20              		.type	_ZN17TemperatureSensor16InitThermocoupleEh, %function
  21              	_ZN17TemperatureSensor16InitThermocoupleEh:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 38B5     		push	{r3, r4, r5, lr}
  25 0002 084B     		ldr	r3, .L2
  26 0004 0025     		movs	r5, #0
  27 0006 0170     		strb	r1, [r0]
  28 0008 4360     		str	r3, [r0, #4]
  29 000a 8570     		strb	r5, [r0, #2]
  30 000c 0821     		movs	r1, #8
  31 000e 0446     		mov	r4, r0
  32 0010 FFF7FEFF 		bl	sspi_master_init
  33 0014 FFF7FEFF 		bl	millis
  34 0018 0023     		movs	r3, #0
  35 001a A060     		str	r0, [r4, #8]
  36 001c 2574     		strb	r5, [r4, #16]
  37 001e E360     		str	r3, [r4, #12]	@ float
  38 0020 38BD     		pop	{r3, r4, r5, pc}
  39              	.L3:
  40 0022 00BF     		.align	2
  41              	.L2:
  42 0024 00093D00 		.word	4000000
  43              		.size	_ZN17TemperatureSensor16InitThermocoupleEh, .-_ZN17TemperatureSensor16InitThermocoupleEh
  44              		.section	.text._ZNK17TemperatureSensor16DoSpiTransactionEPKhjRm,"ax",%progbits
  45              		.align	2
  46              		.global	_ZNK17TemperatureSensor16DoSpiTransactionEPKhjRm
  47              		.thumb
  48              		.thumb_func
  49              		.type	_ZNK17TemperatureSensor16DoSpiTransactionEPKhjRm, %function
  50              	_ZNK17TemperatureSensor16DoSpiTransactionEPKhjRm:
  51              		@ args = 0, pretend = 0, frame = 8
  52              		@ frame_needed = 0, uses_anonymous_args = 0
  53 0000 F0B5     		push	{r4, r5, r6, r7, lr}
  54 0002 83B0     		sub	sp, sp, #12
  55 0004 0446     		mov	r4, r0
  56 0006 0E46     		mov	r6, r1
  57 0008 1546     		mov	r5, r2
ARM GAS  C:\Users\George\AppData\Local\Temp\cc6ot0qr.s 			page 2


  58 000a 1F46     		mov	r7, r3
  59 000c FFF7FEFF 		bl	sspi_acquire
  60 0010 10B9     		cbnz	r0, .L14
  61 0012 0920     		movs	r0, #9
  62              	.L5:
  63 0014 03B0     		add	sp, sp, #12
  64              		@ sp needed
  65 0016 F0BD     		pop	{r4, r5, r6, r7, pc}
  66              	.L14:
  67 0018 2046     		mov	r0, r4
  68 001a FFF7FEFF 		bl	sspi_master_setup_device
  69 001e 1C23     		movs	r3, #28
  70              	@ 80 "C:\Eclipse\Firmware\CoreNG\cores\arduino/wiring.h" 1
  71              		L_63_delayMicroseconds:
  72 0020 013B     		subs   r3, #1
  73 0022 7FF4FDAF 		bne    L_63_delayMicroseconds
  74              	
  75              	@ 0 "" 2
  76              		.thumb
  77 0026 2046     		mov	r0, r4
  78 0028 FFF7FEFF 		bl	sspi_select_device
  79 002c 1C23     		movs	r3, #28
  80              	@ 80 "C:\Eclipse\Firmware\CoreNG\cores\arduino/wiring.h" 1
  81              		L_67_delayMicroseconds:
  82 002e 013B     		subs   r3, #1
  83 0030 7FF4FDAF 		bne    L_67_delayMicroseconds
  84              	
  85              	@ 0 "" 2
  86              		.thumb
  87 0034 3046     		mov	r0, r6
  88 0036 01A9     		add	r1, sp, #4
  89 0038 2A46     		mov	r2, r5
  90 003a FFF7FEFF 		bl	sspi_transceive_packet
  91 003e 1C23     		movs	r3, #28
  92 0040 0646     		mov	r6, r0
  93              	@ 80 "C:\Eclipse\Firmware\CoreNG\cores\arduino/wiring.h" 1
  94              		L_74_delayMicroseconds:
  95 0042 013B     		subs   r3, #1
  96 0044 7FF4FDAF 		bne    L_74_delayMicroseconds
  97              	
  98              	@ 0 "" 2
  99              		.thumb
 100 0048 2046     		mov	r0, r4
 101 004a FFF7FEFF 		bl	sspi_deselect_device
 102 004e 1C23     		movs	r3, #28
 103              	@ 80 "C:\Eclipse\Firmware\CoreNG\cores\arduino/wiring.h" 1
 104              		L_78_delayMicroseconds:
 105 0050 013B     		subs   r3, #1
 106 0052 7FF4FDAF 		bne    L_78_delayMicroseconds
 107              	
 108              	@ 0 "" 2
 109              		.thumb
 110 0056 FFF7FEFF 		bl	sspi_release
 111 005a 16B1     		cbz	r6, .L15
 112 005c 0620     		movs	r0, #6
 113 005e 03B0     		add	sp, sp, #12
 114              		@ sp needed
ARM GAS  C:\Users\George\AppData\Local\Temp\cc6ot0qr.s 			page 3


 115 0060 F0BD     		pop	{r4, r5, r6, r7, pc}
 116              	.L15:
 117 0062 9DF80420 		ldrb	r2, [sp, #4]	@ zero_extendqisi2
 118 0066 012D     		cmp	r5, #1
 119 0068 3A60     		str	r2, [r7]
 120 006a 0AD9     		bls	.L9
 121 006c 0DF10301 		add	r1, sp, #3
 122 0070 01AB     		add	r3, sp, #4
 123 0072 0D44     		add	r5, r5, r1
 124              	.L10:
 125 0074 13F8011F 		ldrb	r1, [r3, #1]!	@ zero_extendqisi2
 126 0078 AB42     		cmp	r3, r5
 127 007a 41EA0222 		orr	r2, r1, r2, lsl #8
 128 007e F9D1     		bne	.L10
 129 0080 3A60     		str	r2, [r7]
 130              	.L9:
 131 0082 0020     		movs	r0, #0
 132 0084 C6E7     		b	.L5
 133              		.size	_ZNK17TemperatureSensor16DoSpiTransactionEPKhjRm, .-_ZNK17TemperatureSensor16DoSpiTransactio
 134 0086 00BF     		.section	.text._ZNK17TemperatureSensor10TryInitRtdEv,"ax",%progbits
 135              		.align	2
 136              		.global	_ZNK17TemperatureSensor10TryInitRtdEv
 137              		.thumb
 138              		.thumb_func
 139              		.type	_ZNK17TemperatureSensor10TryInitRtdEv, %function
 140              	_ZNK17TemperatureSensor10TryInitRtdEv:
 141              		@ args = 0, pretend = 0, frame = 8
 142              		@ frame_needed = 0, uses_anonymous_args = 0
 143 0000 10B5     		push	{r4, lr}
 144 0002 82B0     		sub	sp, sp, #8
 145 0004 01AB     		add	r3, sp, #4
 146 0006 0B49     		ldr	r1, .L21
 147 0008 0222     		movs	r2, #2
 148 000a 0446     		mov	r4, r0
 149 000c FFF7FEFF 		bl	_ZNK17TemperatureSensor16DoSpiTransactionEPKhjRm
 150 0010 08B1     		cbz	r0, .L20
 151              	.L18:
 152 0012 02B0     		add	sp, sp, #8
 153              		@ sp needed
 154 0014 10BD     		pop	{r4, pc}
 155              	.L20:
 156 0016 2046     		mov	r0, r4
 157 0018 01AB     		add	r3, sp, #4
 158 001a 0749     		ldr	r1, .L21+4
 159 001c 0222     		movs	r2, #2
 160 001e FFF7FEFF 		bl	_ZNK17TemperatureSensor16DoSpiTransactionEPKhjRm
 161 0022 0028     		cmp	r0, #0
 162 0024 F5D1     		bne	.L18
 163 0026 9DF80430 		ldrb	r3, [sp, #4]	@ zero_extendqisi2
 164 002a C12B     		cmp	r3, #193
 165 002c 18BF     		it	ne
 166 002e 0A20     		movne	r0, #10
 167 0030 02B0     		add	sp, sp, #8
 168              		@ sp needed
 169 0032 10BD     		pop	{r4, pc}
 170              	.L22:
 171              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\cc6ot0qr.s 			page 4


 172              	.L21:
 173 0034 00000000 		.word	.LANCHOR0
 174 0038 00000000 		.word	.LANCHOR1
 175              		.size	_ZNK17TemperatureSensor10TryInitRtdEv, .-_ZNK17TemperatureSensor10TryInitRtdEv
 176              		.section	.text._ZN17TemperatureSensor7InitRtdEh,"ax",%progbits
 177              		.align	2
 178              		.global	_ZN17TemperatureSensor7InitRtdEh
 179              		.thumb
 180              		.thumb_func
 181              		.type	_ZN17TemperatureSensor7InitRtdEh, %function
 182              	_ZN17TemperatureSensor7InitRtdEh:
 183              		@ args = 0, pretend = 0, frame = 0
 184              		@ frame_needed = 0, uses_anonymous_args = 0
 185 0000 174B     		ldr	r3, .L28
 186 0002 0122     		movs	r2, #1
 187 0004 70B5     		push	{r4, r5, r6, lr}
 188 0006 0170     		strb	r1, [r0]
 189 0008 8270     		strb	r2, [r0, #2]
 190 000a 4360     		str	r3, [r0, #4]
 191 000c 0821     		movs	r1, #8
 192 000e 0446     		mov	r4, r0
 193 0010 FFF7FEFF 		bl	sspi_master_init
 194 0014 0325     		movs	r5, #3
 195              	.L26:
 196 0016 2046     		mov	r0, r4
 197 0018 FFF7FEFF 		bl	_ZNK17TemperatureSensor10TryInitRtdEv
 198 001c 0646     		mov	r6, r0
 199 001e 6420     		movs	r0, #100
 200 0020 B6B1     		cbz	r6, .L24
 201 0022 FFF7FEFF 		bl	delay
 202 0026 013D     		subs	r5, r5, #1
 203 0028 F5D1     		bne	.L26
 204 002a FFF7FEFF 		bl	millis
 205 002e 0022     		movs	r2, #0
 206 0030 0C4B     		ldr	r3, .L28+4
 207 0032 A060     		str	r0, [r4, #8]
 208 0034 2674     		strb	r6, [r4, #16]
 209 0036 E260     		str	r2, [r4, #12]	@ float
 210 0038 3046     		mov	r0, r6
 211 003a 1C68     		ldr	r4, [r3]
 212 003c FFF7FEFF 		bl	_Z22TemperatureErrorString16TemperatureError
 213 0040 0621     		movs	r1, #6
 214 0042 0346     		mov	r3, r0
 215 0044 084A     		ldr	r2, .L28+8
 216 0046 2046     		mov	r0, r4
 217 0048 BDE87040 		pop	{r4, r5, r6, lr}
 218 004c FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 219              	.L24:
 220 0050 FFF7FEFF 		bl	millis
 221 0054 0023     		movs	r3, #0
 222 0056 A060     		str	r0, [r4, #8]
 223 0058 2674     		strb	r6, [r4, #16]
 224 005a E360     		str	r3, [r4, #12]	@ float
 225 005c 70BD     		pop	{r4, r5, r6, pc}
 226              	.L29:
 227 005e 00BF     		.align	2
 228              	.L28:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc6ot0qr.s 			page 5


 229 0060 00093D00 		.word	4000000
 230 0064 00000000 		.word	reprap
 231 0068 00000000 		.word	.LC0
 232              		.size	_ZN17TemperatureSensor7InitRtdEh, .-_ZN17TemperatureSensor7InitRtdEh
 233              		.global	__aeabi_i2f
 234              		.global	__aeabi_fmul
 235              		.section	.text._ZN17TemperatureSensor26GetThermocoupleTemperatureEPf,"ax",%progbits
 236              		.align	2
 237              		.global	_ZN17TemperatureSensor26GetThermocoupleTemperatureEPf
 238              		.thumb
 239              		.thumb_func
 240              		.type	_ZN17TemperatureSensor26GetThermocoupleTemperatureEPf, %function
 241              	_ZN17TemperatureSensor26GetThermocoupleTemperatureEPf:
 242              		@ args = 0, pretend = 0, frame = 8
 243              		@ frame_needed = 0, uses_anonymous_args = 0
 244 0000 70B5     		push	{r4, r5, r6, lr}
 245 0002 82B0     		sub	sp, sp, #8
 246 0004 0446     		mov	r4, r0
 247 0006 0E46     		mov	r6, r1
 248 0008 FFF7FEFF 		bl	_Z11inInterruptv
 249 000c 0546     		mov	r5, r0
 250 000e 20B1     		cbz	r0, .L50
 251              	.L31:
 252 0010 E368     		ldr	r3, [r4, #12]	@ float
 253 0012 207C     		ldrb	r0, [r4, #16]	@ zero_extendqisi2
 254 0014 3360     		str	r3, [r6]	@ float
 255              	.L47:
 256 0016 02B0     		add	sp, sp, #8
 257              		@ sp needed
 258 0018 70BD     		pop	{r4, r5, r6, pc}
 259              	.L50:
 260 001a FFF7FEFF 		bl	millis
 261 001e A368     		ldr	r3, [r4, #8]
 262 0020 C01A     		subs	r0, r0, r3
 263 0022 6328     		cmp	r0, #99
 264 0024 F4D9     		bls	.L31
 265 0026 0422     		movs	r2, #4
 266 0028 2946     		mov	r1, r5
 267 002a 2046     		mov	r0, r4
 268 002c 0DEB0203 		add	r3, sp, r2
 269 0030 FFF7FEFF 		bl	_ZNK17TemperatureSensor16DoSpiTransactionEPKhjRm
 270 0034 10B1     		cbz	r0, .L51
 271 0036 2074     		strb	r0, [r4, #16]
 272              	.L52:
 273 0038 02B0     		add	sp, sp, #8
 274              		@ sp needed
 275 003a 70BD     		pop	{r4, r5, r6, pc}
 276              	.L51:
 277 003c FFF7FEFF 		bl	millis
 278 0040 019A     		ldr	r2, [sp, #4]
 279 0042 144B     		ldr	r3, .L53
 280 0044 A060     		str	r0, [r4, #8]
 281 0046 1340     		ands	r3, r3, r2
 282 0048 83B9     		cbnz	r3, .L38
 283 004a 134D     		ldr	r5, .L53+4
 284 004c 1540     		ands	r5, r5, r2
 285 004e 85B1     		cbz	r5, .L35
ARM GAS  C:\Users\George\AppData\Local\Temp\cc6ot0qr.s 			page 6


 286 0050 D103     		lsls	r1, r2, #15
 287 0052 0BD5     		bpl	.L38
 288 0054 12F00103 		ands	r3, r2, #1
 289 0058 02D0     		beq	.L37
 290 005a 0423     		movs	r3, #4
 291 005c 2374     		strb	r3, [r4, #16]
 292 005e 0123     		movs	r3, #1
 293              	.L37:
 294 0060 9207     		lsls	r2, r2, #30
 295 0062 03D4     		bmi	.L38
 296 0064 13B9     		cbnz	r3, .L38
 297 0066 0220     		movs	r0, #2
 298 0068 2074     		strb	r0, [r4, #16]
 299 006a D4E7     		b	.L47
 300              	.L38:
 301 006c 0720     		movs	r0, #7
 302 006e 2074     		strb	r0, [r4, #16]
 303 0070 E2E7     		b	.L52
 304              	.L35:
 305 0072 920C     		lsrs	r2, r2, #18
 306 0074 02F40050 		and	r0, r2, #8192
 307 0078 4042     		negs	r0, r0
 308 007a 1043     		orrs	r0, r0, r2
 309 007c FFF7FEFF 		bl	__aeabi_i2f
 310 0080 4FF07A51 		mov	r1, #1048576000
 311 0084 FFF7FEFF 		bl	__aeabi_fmul
 312 0088 0346     		mov	r3, r0
 313 008a E060     		str	r0, [r4, #12]	@ float
 314 008c 3360     		str	r3, [r6]	@ float
 315 008e 2846     		mov	r0, r5
 316 0090 2574     		strb	r5, [r4, #16]
 317 0092 C0E7     		b	.L47
 318              	.L54:
 319              		.align	2
 320              	.L53:
 321 0094 08000200 		.word	131080
 322 0098 07000100 		.word	65543
 323              		.size	_ZN17TemperatureSensor26GetThermocoupleTemperatureEPf, .-_ZN17TemperatureSensor26GetThermoco
 324              		.global	__aeabi_fdiv
 325              		.global	__aeabi_fadd
 326              		.section	.text._ZN17TemperatureSensor17GetRtdTemperatureEPf,"ax",%progbits
 327              		.align	2
 328              		.global	_ZN17TemperatureSensor17GetRtdTemperatureEPf
 329              		.thumb
 330              		.thumb_func
 331              		.type	_ZN17TemperatureSensor17GetRtdTemperatureEPf, %function
 332              	_ZN17TemperatureSensor17GetRtdTemperatureEPf:
 333              		@ args = 0, pretend = 0, frame = 8
 334              		@ frame_needed = 0, uses_anonymous_args = 0
 335 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 336 0004 83B0     		sub	sp, sp, #12
 337 0006 0446     		mov	r4, r0
 338 0008 0E46     		mov	r6, r1
 339 000a FFF7FEFF 		bl	_Z11inInterruptv
 340 000e 28B1     		cbz	r0, .L74
 341              	.L56:
 342 0010 E368     		ldr	r3, [r4, #12]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\cc6ot0qr.s 			page 7


 343 0012 207C     		ldrb	r0, [r4, #16]	@ zero_extendqisi2
 344 0014 3360     		str	r3, [r6]	@ float
 345              	.L71:
 346 0016 03B0     		add	sp, sp, #12
 347              		@ sp needed
 348 0018 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 349              	.L74:
 350 001c FFF7FEFF 		bl	millis
 351 0020 A368     		ldr	r3, [r4, #8]
 352 0022 C01A     		subs	r0, r0, r3
 353 0024 6328     		cmp	r0, #99
 354 0026 F3D9     		bls	.L56
 355 0028 0422     		movs	r2, #4
 356 002a 2046     		mov	r0, r4
 357 002c 3749     		ldr	r1, .L77
 358 002e 0DEB0203 		add	r3, sp, r2
 359 0032 FFF7FEFF 		bl	_ZNK17TemperatureSensor16DoSpiTransactionEPKhjRm
 360 0036 0546     		mov	r5, r0
 361 0038 20B1     		cbz	r0, .L75
 362 003a 2846     		mov	r0, r5
 363 003c 2574     		strb	r5, [r4, #16]
 364 003e 03B0     		add	sp, sp, #12
 365              		@ sp needed
 366 0040 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 367              	.L75:
 368 0044 FFF7FEFF 		bl	millis
 369 0048 019A     		ldr	r2, [sp, #4]
 370 004a 314B     		ldr	r3, .L77+4
 371 004c A060     		str	r0, [r4, #8]
 372 004e 1340     		ands	r3, r3, r2
 373 0050 B3F5410F 		cmp	r3, #12648448
 374 0054 05D0     		beq	.L59
 375 0056 2046     		mov	r0, r4
 376 0058 FFF7FEFF 		bl	_ZNK17TemperatureSensor10TryInitRtdEv
 377 005c 0820     		movs	r0, #8
 378 005e 2074     		strb	r0, [r4, #16]
 379 0060 D9E7     		b	.L71
 380              	.L59:
 381 0062 2C4F     		ldr	r7, .L77+8
 382 0064 C2F34E08 		ubfx	r8, r2, #1, #15
 383 0068 2622     		movs	r2, #38
 384              	.L60:
 385 006a 531B     		subs	r3, r2, r5
 386 006c 05EB5303 		add	r3, r5, r3, lsr #1
 387 0070 07EB8301 		add	r1, r7, r3, lsl #2
 388 0074 4988     		ldrh	r1, [r1, #2]
 389 0076 4145     		cmp	r1, r8
 390 0078 0AD3     		bcc	.L61
 391              	.L73:
 392 007a 591B     		subs	r1, r3, r5
 393 007c 1A46     		mov	r2, r3
 394 007e AB42     		cmp	r3, r5
 395 0080 05EB5103 		add	r3, r5, r1, lsr #1
 396 0084 07EB8301 		add	r1, r7, r3, lsl #2
 397 0088 05D9     		bls	.L63
 398 008a 4988     		ldrh	r1, [r1, #2]
 399 008c 4145     		cmp	r1, r8
ARM GAS  C:\Users\George\AppData\Local\Temp\cc6ot0qr.s 			page 8


 400 008e F4D2     		bcs	.L73
 401              	.L61:
 402 0090 5D1C     		adds	r5, r3, #1
 403 0092 9542     		cmp	r5, r2
 404 0094 E9D3     		bcc	.L60
 405              	.L63:
 406 0096 25B1     		cbz	r5, .L76
 407 0098 252D     		cmp	r5, #37
 408 009a 05D9     		bls	.L66
 409 009c 0420     		movs	r0, #4
 410 009e 2074     		strb	r0, [r4, #16]
 411 00a0 B9E7     		b	.L71
 412              	.L76:
 413 00a2 0120     		movs	r0, #1
 414 00a4 2074     		strb	r0, [r4, #16]
 415 00a6 B6E7     		b	.L71
 416              	.L66:
 417 00a8 6B1E     		subs	r3, r5, #1
 418 00aa 37F923A0 		ldrsh	r10, [r7, r3, lsl #2]
 419 00ae 37F92500 		ldrsh	r0, [r7, r5, lsl #2]
 420 00b2 07EB8302 		add	r2, r7, r3, lsl #2
 421 00b6 CAEB0000 		rsb	r0, r10, r0
 422 00ba B2F80290 		ldrh	r9, [r2, #2]
 423 00be FFF7FEFF 		bl	__aeabi_i2f
 424 00c2 8346     		mov	fp, r0
 425 00c4 C9EB0800 		rsb	r0, r9, r8
 426 00c8 FFF7FEFF 		bl	__aeabi_i2f
 427 00cc 07EB8505 		add	r5, r7, r5, lsl #2
 428 00d0 8046     		mov	r8, r0
 429 00d2 6888     		ldrh	r0, [r5, #2]
 430 00d4 C9EB0000 		rsb	r0, r9, r0
 431 00d8 FFF7FEFF 		bl	__aeabi_i2f
 432 00dc 0146     		mov	r1, r0
 433 00de 4046     		mov	r0, r8
 434 00e0 FFF7FEFF 		bl	__aeabi_fdiv
 435 00e4 0146     		mov	r1, r0
 436 00e6 5846     		mov	r0, fp
 437 00e8 FFF7FEFF 		bl	__aeabi_fmul
 438 00ec 0546     		mov	r5, r0
 439 00ee 5046     		mov	r0, r10
 440 00f0 FFF7FEFF 		bl	__aeabi_i2f
 441 00f4 0146     		mov	r1, r0
 442 00f6 2846     		mov	r0, r5
 443 00f8 FFF7FEFF 		bl	__aeabi_fadd
 444 00fc 0023     		movs	r3, #0
 445 00fe 0246     		mov	r2, r0
 446 0100 E060     		str	r0, [r4, #12]	@ float
 447 0102 3260     		str	r2, [r6]	@ float
 448 0104 1846     		mov	r0, r3
 449 0106 2374     		strb	r3, [r4, #16]
 450 0108 85E7     		b	.L71
 451              	.L78:
 452 010a 00BF     		.align	2
 453              	.L77:
 454 010c 00000000 		.word	.LANCHOR3
 455 0110 0100C100 		.word	12648449
 456 0114 00000000 		.word	.LANCHOR2
ARM GAS  C:\Users\George\AppData\Local\Temp\cc6ot0qr.s 			page 9


 457              		.size	_ZN17TemperatureSensor17GetRtdTemperatureEPf, .-_ZN17TemperatureSensor17GetRtdTemperatureEPf
 458              		.section	.rodata._ZZNK17TemperatureSensor10TryInitRtdEvE8modeData,"a",%progbits
 459              		.align	2
 460              		.set	.LANCHOR0,. + 0
 461              		.type	_ZZNK17TemperatureSensor10TryInitRtdEvE8modeData, %object
 462              		.size	_ZZNK17TemperatureSensor10TryInitRtdEvE8modeData, 2
 463              	_ZZNK17TemperatureSensor10TryInitRtdEvE8modeData:
 464 0000 80       		.byte	-128
 465 0001 C3       		.byte	-61
 466 0002 0000     		.section	.rodata._ZZN17TemperatureSensor17GetRtdTemperatureEPfE7dataOut,"a",%progbits
 467              		.align	2
 468              		.set	.LANCHOR3,. + 0
 469              		.type	_ZZN17TemperatureSensor17GetRtdTemperatureEPfE7dataOut, %object
 470              		.size	_ZZN17TemperatureSensor17GetRtdTemperatureEPfE7dataOut, 4
 471              	_ZZN17TemperatureSensor17GetRtdTemperatureEPfE7dataOut:
 472 0000 00       		.byte	0
 473 0001 37       		.byte	55
 474 0002 37       		.byte	55
 475 0003 37       		.byte	55
 476              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 477              		.align	2
 478              		.type	_ZL32cpu_irq_critical_section_counter, %object
 479              		.size	_ZL32cpu_irq_critical_section_counter, 4
 480              	_ZL32cpu_irq_critical_section_counter:
 481 0000 00000000 		.space	4
 482              		.section	.rodata.str1.4,"aMS",%progbits,1
 483              		.align	2
 484              	.LC0:
 485 0000 4572726F 		.ascii	"Error: failed to initialise RTD: %s\012\000"
 485      723A2066 
 485      61696C65 
 485      6420746F 
 485      20696E69 
 486 0025 000000   		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 487              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 488              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 489              	_ZL28cpu_irq_prev_interrupt_state:
 490 0000 00       		.space	1
 491              		.section	.rodata._ZL9tempTable,"a",%progbits
 492              		.align	2
 493              		.set	.LANCHOR2,. + 0
 494              		.type	_ZL9tempTable, %object
 495              		.size	_ZL9tempTable, 152
 496              	_ZL9tempTable:
 497 0000 E2FF     		.short	-30
 498 0002 3B1C     		.short	7227
 499 0004 ECFF     		.short	-20
 500 0006 7E1D     		.short	7550
 501 0008 F6FF     		.short	-10
 502 000a BF1E     		.short	7871
 503 000c 0000     		.short	0
 504 000e 0020     		.short	8192
 505 0010 0A00     		.short	10
 506 0012 4021     		.short	8512
 507 0014 1400     		.short	20
 508 0016 7E22     		.short	8830
 509 0018 1E00     		.short	30
ARM GAS  C:\Users\George\AppData\Local\Temp\cc6ot0qr.s 			page 10


 510 001a BC23     		.short	9148
 511 001c 2800     		.short	40
 512 001e F924     		.short	9465
 513 0020 3200     		.short	50
 514 0022 3526     		.short	9781
 515 0024 3C00     		.short	60
 516 0026 7027     		.short	10096
 517 0028 4600     		.short	70
 518 002a AA28     		.short	10410
 519 002c 5000     		.short	80
 520 002e E329     		.short	10723
 521 0030 5A00     		.short	90
 522 0032 1B2B     		.short	11035
 523 0034 6400     		.short	100
 524 0036 522C     		.short	11346
 525 0038 6E00     		.short	110
 526 003a 892D     		.short	11657
 527 003c 7800     		.short	120
 528 003e BE2E     		.short	11966
 529 0040 8200     		.short	130
 530 0042 F22F     		.short	12274
 531 0044 8C00     		.short	140
 532 0046 2631     		.short	12582
 533 0048 9600     		.short	150
 534 004a 5832     		.short	12888
 535 004c A000     		.short	160
 536 004e 8A33     		.short	13194
 537 0050 AA00     		.short	170
 538 0052 BA34     		.short	13498
 539 0054 B400     		.short	180
 540 0056 EA35     		.short	13802
 541 0058 BE00     		.short	190
 542 005a 1837     		.short	14104
 543 005c C800     		.short	200
 544 005e 4638     		.short	14406
 545 0060 E100     		.short	225
 546 0062 343B     		.short	15156
 547 0064 FA00     		.short	250
 548 0066 1D3E     		.short	15901
 549 0068 1301     		.short	275
 550 006a FF40     		.short	16639
 551 006c 2C01     		.short	300
 552 006e DB43     		.short	17371
 553 0070 4501     		.short	325
 554 0072 B246     		.short	18098
 555 0074 5E01     		.short	350
 556 0076 8249     		.short	18818
 557 0078 7701     		.short	375
 558 007a 4D4C     		.short	19533
 559 007c 9001     		.short	400
 560 007e 124F     		.short	20242
 561 0080 A901     		.short	425
 562 0082 D151     		.short	20945
 563 0084 C201     		.short	450
 564 0086 8A54     		.short	21642
 565 0088 DB01     		.short	475
 566 008a 3D57     		.short	22333
ARM GAS  C:\Users\George\AppData\Local\Temp\cc6ot0qr.s 			page 11


 567 008c F401     		.short	500
 568 008e EA59     		.short	23018
 569 0090 0D02     		.short	525
 570 0092 915C     		.short	23697
 571 0094 2602     		.short	550
 572 0096 325F     		.short	24370
 573              		.section	.rodata._ZZNK17TemperatureSensor10TryInitRtdEvE8readData,"a",%progbits
 574              		.align	2
 575              		.set	.LANCHOR1,. + 0
 576              		.type	_ZZNK17TemperatureSensor10TryInitRtdEvE8readData, %object
 577              		.size	_ZZNK17TemperatureSensor10TryInitRtdEvE8readData, 2
 578              	_ZZNK17TemperatureSensor10TryInitRtdEvE8readData:
 579 0000 0000     		.space	2
 580 0002 0000     		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
