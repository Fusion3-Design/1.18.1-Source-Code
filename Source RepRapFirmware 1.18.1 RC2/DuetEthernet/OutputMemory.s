ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 1


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
  15              		.file	"OutputMemory.cpp"
  16              		.section	.text._ZN12OutputBuffer6AppendEPS_,"ax",%progbits
  17              		.align	2
  18              		.global	_ZN12OutputBuffer6AppendEPS_
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN12OutputBuffer6AppendEPS_, %function
  22              	_ZN12OutputBuffer6AppendEPS_:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 61B1     		cbz	r1, .L1
  27 0002 4368     		ldr	r3, [r0, #4]
  28 0004 4A68     		ldr	r2, [r1, #4]
  29 0006 1960     		str	r1, [r3]
  30 0008 0368     		ldr	r3, [r0]
  31 000a 4260     		str	r2, [r0, #4]
  32 000c 9942     		cmp	r1, r3
  33 000e 01D1     		bne	.L4
  34 0010 04E0     		b	.L1
  35              	.L6:
  36 0012 4268     		ldr	r2, [r0, #4]
  37              	.L4:
  38 0014 5A60     		str	r2, [r3, #4]
  39 0016 1B68     		ldr	r3, [r3]
  40 0018 9942     		cmp	r1, r3
  41 001a FAD1     		bne	.L6
  42              	.L1:
  43 001c 7047     		bx	lr
  44              		.size	_ZN12OutputBuffer6AppendEPS_, .-_ZN12OutputBuffer6AppendEPS_
  45 001e 00BF     		.section	.text._ZN12OutputBuffer18IncreaseReferencesEj,"ax",%progbits
  46              		.align	2
  47              		.global	_ZN12OutputBuffer18IncreaseReferencesEj
  48              		.thumb
  49              		.thumb_func
  50              		.type	_ZN12OutputBuffer18IncreaseReferencesEj, %function
  51              	_ZN12OutputBuffer18IncreaseReferencesEj:
  52              		@ args = 0, pretend = 0, frame = 0
  53              		@ frame_needed = 0, uses_anonymous_args = 0
  54              		@ link register save eliminated.
  55 0000 59B1     		cbz	r1, .L7
  56 0002 50B1     		cbz	r0, .L7
  57 0004 0122     		movs	r2, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 2


  58              	.L10:
  59 0006 D0F81831 		ldr	r3, [r0, #280]
  60 000a 80F81421 		strb	r2, [r0, #276]
  61 000e 0B44     		add	r3, r3, r1
  62 0010 C0F81831 		str	r3, [r0, #280]
  63 0014 0068     		ldr	r0, [r0]
  64 0016 0028     		cmp	r0, #0
  65 0018 F5D1     		bne	.L10
  66              	.L7:
  67 001a 7047     		bx	lr
  68              		.size	_ZN12OutputBuffer18IncreaseReferencesEj, .-_ZN12OutputBuffer18IncreaseReferencesEj
  69              		.section	.text._ZNK12OutputBuffer6LengthEv,"ax",%progbits
  70              		.align	2
  71              		.global	_ZNK12OutputBuffer6LengthEv
  72              		.thumb
  73              		.thumb_func
  74              		.type	_ZNK12OutputBuffer6LengthEv, %function
  75              	_ZNK12OutputBuffer6LengthEv:
  76              		@ args = 0, pretend = 0, frame = 0
  77              		@ frame_needed = 0, uses_anonymous_args = 0
  78              		@ link register save eliminated.
  79 0000 38B1     		cbz	r0, .L18
  80 0002 0346     		mov	r3, r0
  81 0004 0020     		movs	r0, #0
  82              	.L19:
  83 0006 D3F80C21 		ldr	r2, [r3, #268]
  84 000a 1B68     		ldr	r3, [r3]
  85 000c 1044     		add	r0, r0, r2
  86 000e 002B     		cmp	r3, #0
  87 0010 F9D1     		bne	.L19
  88              	.L18:
  89 0012 7047     		bx	lr
  90              		.size	_ZNK12OutputBuffer6LengthEv, .-_ZNK12OutputBuffer6LengthEv
  91              		.section	.text._ZN12OutputBufferixEj,"ax",%progbits
  92              		.align	2
  93              		.global	_ZN12OutputBufferixEj
  94              		.thumb
  95              		.thumb_func
  96              		.type	_ZN12OutputBufferixEj, %function
  97              	_ZN12OutputBufferixEj:
  98              		@ args = 0, pretend = 0, frame = 0
  99              		@ frame_needed = 0, uses_anonymous_args = 0
 100              		@ link register save eliminated.
 101 0000 D0F80C31 		ldr	r3, [r0, #268]
 102 0004 9942     		cmp	r1, r3
 103 0006 05D9     		bls	.L25
 104              	.L26:
 105 0008 0068     		ldr	r0, [r0]
 106 000a C91A     		subs	r1, r1, r3
 107 000c D0F80C31 		ldr	r3, [r0, #268]
 108 0010 8B42     		cmp	r3, r1
 109 0012 F9D3     		bcc	.L26
 110              	.L25:
 111 0014 0844     		add	r0, r0, r1
 112 0016 0C30     		adds	r0, r0, #12
 113 0018 7047     		bx	lr
 114              		.size	_ZN12OutputBufferixEj, .-_ZN12OutputBufferixEj
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 3


 115 001a 00BF     		.section	.text._ZNK12OutputBufferixEj,"ax",%progbits
 116              		.align	2
 117              		.global	_ZNK12OutputBufferixEj
 118              		.thumb
 119              		.thumb_func
 120              		.type	_ZNK12OutputBufferixEj, %function
 121              	_ZNK12OutputBufferixEj:
 122              		@ args = 0, pretend = 0, frame = 0
 123              		@ frame_needed = 0, uses_anonymous_args = 0
 124              		@ link register save eliminated.
 125 0000 D0F80C31 		ldr	r3, [r0, #268]
 126 0004 9942     		cmp	r1, r3
 127 0006 05D9     		bls	.L29
 128              	.L30:
 129 0008 0068     		ldr	r0, [r0]
 130 000a C91A     		subs	r1, r1, r3
 131 000c D0F80C31 		ldr	r3, [r0, #268]
 132 0010 8B42     		cmp	r3, r1
 133 0012 F9D3     		bcc	.L30
 134              	.L29:
 135 0014 0144     		add	r1, r1, r0
 136 0016 087B     		ldrb	r0, [r1, #12]	@ zero_extendqisi2
 137 0018 7047     		bx	lr
 138              		.size	_ZNK12OutputBufferixEj, .-_ZNK12OutputBufferixEj
 139 001a 00BF     		.section	.text._ZN12OutputBuffer4ReadEj,"ax",%progbits
 140              		.align	2
 141              		.global	_ZN12OutputBuffer4ReadEj
 142              		.thumb
 143              		.thumb_func
 144              		.type	_ZN12OutputBuffer4ReadEj, %function
 145              	_ZN12OutputBuffer4ReadEj:
 146              		@ args = 0, pretend = 0, frame = 0
 147              		@ frame_needed = 0, uses_anonymous_args = 0
 148              		@ link register save eliminated.
 149 0000 D0F81031 		ldr	r3, [r0, #272]
 150 0004 1944     		add	r1, r1, r3
 151 0006 0344     		add	r3, r3, r0
 152 0008 C0F81011 		str	r1, [r0, #272]
 153 000c 03F10C00 		add	r0, r3, #12
 154 0010 7047     		bx	lr
 155              		.size	_ZN12OutputBuffer4ReadEj, .-_ZN12OutputBuffer4ReadEj
 156 0012 00BF     		.section	.text._ZN12OutputBuffer4InitEv,"ax",%progbits
 157              		.align	2
 158              		.global	_ZN12OutputBuffer4InitEv
 159              		.thumb
 160              		.thumb_func
 161              		.type	_ZN12OutputBuffer4InitEv, %function
 162              	_ZN12OutputBuffer4InitEv:
 163              		@ args = 0, pretend = 0, frame = 0
 164              		@ frame_needed = 0, uses_anonymous_args = 0
 165 0000 70B5     		push	{r4, r5, r6, lr}
 166 0002 074D     		ldr	r5, .L36
 167 0004 0023     		movs	r3, #0
 168 0006 2B60     		str	r3, [r5]
 169 0008 2024     		movs	r4, #32
 170              	.L35:
 171 000a 4FF48E70 		mov	r0, #284
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 4


 172 000e 2E68     		ldr	r6, [r5]
 173 0010 FFF7FEFF 		bl	_Znwj
 174 0014 013C     		subs	r4, r4, #1
 175 0016 0660     		str	r6, [r0]
 176 0018 2860     		str	r0, [r5]
 177 001a F6D1     		bne	.L35
 178 001c 70BD     		pop	{r4, r5, r6, pc}
 179              	.L37:
 180 001e 00BF     		.align	2
 181              	.L36:
 182 0020 00000000 		.word	.LANCHOR0
 183              		.size	_ZN12OutputBuffer4InitEv, .-_ZN12OutputBuffer4InitEv
 184              		.section	.text._ZN12OutputBuffer8AllocateERPS_,"ax",%progbits
 185              		.align	2
 186              		.global	_ZN12OutputBuffer8AllocateERPS_
 187              		.thumb
 188              		.thumb_func
 189              		.type	_ZN12OutputBuffer8AllocateERPS_, %function
 190              	_ZN12OutputBuffer8AllocateERPS_:
 191              		@ args = 0, pretend = 0, frame = 0
 192              		@ frame_needed = 0, uses_anonymous_args = 0
 193              		@ link register save eliminated.
 194 0000 70B4     		push	{r4, r5, r6}
 195              	@ 470 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 196 0002 EFF31084 		MRS r4, primask
 197              	@ 0 "" 2
 198              		.thumb
 199 0006 D4F10104 		rsbs	r4, r4, #1
 200 000a 38BF     		it	cc
 201 000c 0024     		movcc	r4, #0
 202              	@ 330 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 203 000e 72B6     		cpsid i
 204              	@ 0 "" 2
 205              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 206 0010 BFF35F8F 		dmb
 207              	@ 0 "" 2
 208              		.thumb
 209 0014 1E49     		ldr	r1, .L48
 210 0016 1F4A     		ldr	r2, .L48+4
 211 0018 0023     		movs	r3, #0
 212 001a 0B70     		strb	r3, [r1]
 213 001c 1368     		ldr	r3, [r2]
 214 001e 23B3     		cbz	r3, .L47
 215 0020 1368     		ldr	r3, [r2]
 216 0022 0360     		str	r3, [r0]
 217 0024 1D68     		ldr	r5, [r3]
 218 0026 1C4B     		ldr	r3, .L48+8
 219 0028 1560     		str	r5, [r2]
 220 002a 1D68     		ldr	r5, [r3]
 221 002c 1B4A     		ldr	r2, .L48+12
 222 002e 0135     		adds	r5, r5, #1
 223 0030 1D60     		str	r5, [r3]
 224 0032 1E68     		ldr	r6, [r3]
 225 0034 1568     		ldr	r5, [r2]
 226 0036 AE42     		cmp	r6, r5
 227 0038 84BF     		itt	hi
 228 003a 1B68     		ldrhi	r3, [r3]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 5


 229 003c 1360     		strhi	r3, [r2]
 230 003e 0368     		ldr	r3, [r0]
 231 0040 0022     		movs	r2, #0
 232 0042 1A60     		str	r2, [r3]
 233 0044 0368     		ldr	r3, [r0]
 234 0046 5B60     		str	r3, [r3, #4]
 235 0048 0368     		ldr	r3, [r0]
 236 004a 0120     		movs	r0, #1
 237 004c C3F81021 		str	r2, [r3, #272]
 238 0050 C3F80C21 		str	r2, [r3, #268]
 239 0054 83F81421 		strb	r2, [r3, #276]
 240 0058 C3F81801 		str	r0, [r3, #280]
 241 005c 1CB1     		cbz	r4, .L41
 242 005e 0870     		strb	r0, [r1]
 243              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 244 0060 BFF35F8F 		dmb
 245              	@ 0 "" 2
 246              	@ 319 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 247 0064 62B6     		cpsie i
 248              	@ 0 "" 2
 249              		.thumb
 250              	.L41:
 251 0066 70BC     		pop	{r4, r5, r6}
 252 0068 7047     		bx	lr
 253              	.L47:
 254 006a 0D4B     		ldr	r3, .L48+16
 255 006c 1B68     		ldr	r3, [r3]
 256 006e D3F8C420 		ldr	r2, [r3, #196]
 257 0072 42F00402 		orr	r2, r2, #4
 258 0076 C3F8C420 		str	r2, [r3, #196]
 259 007a 24B1     		cbz	r4, .L40
 260 007c 0123     		movs	r3, #1
 261 007e 0B70     		strb	r3, [r1]
 262              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 263 0080 BFF35F8F 		dmb
 264              	@ 0 "" 2
 265              	@ 319 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 266 0084 62B6     		cpsie i
 267              	@ 0 "" 2
 268              		.thumb
 269              	.L40:
 270 0086 0023     		movs	r3, #0
 271 0088 0360     		str	r3, [r0]
 272 008a 70BC     		pop	{r4, r5, r6}
 273 008c 1846     		mov	r0, r3
 274 008e 7047     		bx	lr
 275              	.L49:
 276              		.align	2
 277              	.L48:
 278 0090 00000000 		.word	g_interrupt_enabled
 279 0094 00000000 		.word	.LANCHOR0
 280 0098 00000000 		.word	.LANCHOR1
 281 009c 00000000 		.word	.LANCHOR2
 282 00a0 00000000 		.word	reprap
 283              		.size	_ZN12OutputBuffer8AllocateERPS_, .-_ZN12OutputBuffer8AllocateERPS_
 284              		.section	.text._ZN12OutputBuffer12GetBytesLeftEPKS_,"ax",%progbits
 285              		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 6


 286              		.global	_ZN12OutputBuffer12GetBytesLeftEPKS_
 287              		.thumb
 288              		.thumb_func
 289              		.type	_ZN12OutputBuffer12GetBytesLeftEPKS_, %function
 290              	_ZN12OutputBuffer12GetBytesLeftEPKS_:
 291              		@ args = 0, pretend = 0, frame = 0
 292              		@ frame_needed = 0, uses_anonymous_args = 0
 293              		@ link register save eliminated.
 294 0000 094B     		ldr	r3, .L55
 295 0002 1B68     		ldr	r3, [r3]
 296 0004 C3F12002 		rsb	r2, r3, #32
 297 0008 58B1     		cbz	r0, .L54
 298 000a 4168     		ldr	r1, [r0, #4]
 299 000c D1F80C01 		ldr	r0, [r1, #268]
 300 0010 C0F58070 		rsb	r0, r0, #256
 301 0014 22B1     		cbz	r2, .L52
 302 0016 C3F18073 		rsb	r3, r3, #16777216
 303 001a 1F33     		adds	r3, r3, #31
 304 001c 00EB0320 		add	r0, r0, r3, lsl #8
 305              	.L52:
 306 0020 7047     		bx	lr
 307              	.L54:
 308 0022 1002     		lsls	r0, r2, #8
 309 0024 7047     		bx	lr
 310              	.L56:
 311 0026 00BF     		.align	2
 312              	.L55:
 313 0028 00000000 		.word	.LANCHOR1
 314              		.size	_ZN12OutputBuffer12GetBytesLeftEPKS_, .-_ZN12OutputBuffer12GetBytesLeftEPKS_
 315              		.section	.text._ZN12OutputBuffer7ReleaseEPS_,"ax",%progbits
 316              		.align	2
 317              		.global	_ZN12OutputBuffer7ReleaseEPS_
 318              		.thumb
 319              		.thumb_func
 320              		.type	_ZN12OutputBuffer7ReleaseEPS_, %function
 321              	_ZN12OutputBuffer7ReleaseEPS_:
 322              		@ args = 0, pretend = 0, frame = 0
 323              		@ frame_needed = 0, uses_anonymous_args = 0
 324              		@ link register save eliminated.
 325 0000 70B4     		push	{r4, r5, r6}
 326 0002 0346     		mov	r3, r0
 327              	@ 470 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 328 0004 EFF31085 		MRS r5, primask
 329              	@ 0 "" 2
 330              		.thumb
 331 0008 D5F10105 		rsbs	r5, r5, #1
 332 000c 38BF     		it	cc
 333 000e 0025     		movcc	r5, #0
 334              	@ 330 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 335 0010 72B6     		cpsid i
 336              	@ 0 "" 2
 337              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 338 0012 BFF35F8F 		dmb
 339              	@ 0 "" 2
 340              		.thumb
 341 0016 D0F81811 		ldr	r1, [r0, #280]
 342 001a 0F4C     		ldr	r4, .L66
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 7


 343 001c 0068     		ldr	r0, [r0]
 344 001e 0022     		movs	r2, #0
 345 0020 0129     		cmp	r1, #1
 346 0022 2270     		strb	r2, [r4]
 347 0024 07D9     		bls	.L58
 348 0026 0139     		subs	r1, r1, #1
 349 0028 C3F81811 		str	r1, [r3, #280]
 350 002c C3F81021 		str	r2, [r3, #272]
 351 0030 5DB9     		cbnz	r5, .L65
 352              	.L60:
 353 0032 70BC     		pop	{r4, r5, r6}
 354 0034 7047     		bx	lr
 355              	.L58:
 356 0036 0949     		ldr	r1, .L66+4
 357 0038 094A     		ldr	r2, .L66+8
 358 003a 0E68     		ldr	r6, [r1]
 359 003c 1E60     		str	r6, [r3]
 360 003e 0B60     		str	r3, [r1]
 361 0040 1368     		ldr	r3, [r2]
 362 0042 013B     		subs	r3, r3, #1
 363 0044 1360     		str	r3, [r2]
 364 0046 002D     		cmp	r5, #0
 365 0048 F3D0     		beq	.L60
 366              	.L65:
 367 004a 0123     		movs	r3, #1
 368 004c 2370     		strb	r3, [r4]
 369              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 370 004e BFF35F8F 		dmb
 371              	@ 0 "" 2
 372              	@ 319 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 373 0052 62B6     		cpsie i
 374              	@ 0 "" 2
 375              		.thumb
 376 0054 70BC     		pop	{r4, r5, r6}
 377 0056 7047     		bx	lr
 378              	.L67:
 379              		.align	2
 380              	.L66:
 381 0058 00000000 		.word	g_interrupt_enabled
 382 005c 00000000 		.word	.LANCHOR0
 383 0060 00000000 		.word	.LANCHOR1
 384              		.size	_ZN12OutputBuffer7ReleaseEPS_, .-_ZN12OutputBuffer7ReleaseEPS_
 385              		.section	.text._ZN12OutputBuffer8TruncateEPS_j,"ax",%progbits
 386              		.align	2
 387              		.global	_ZN12OutputBuffer8TruncateEPS_j
 388              		.thumb
 389              		.thumb_func
 390              		.type	_ZN12OutputBuffer8TruncateEPS_j, %function
 391              	_ZN12OutputBuffer8TruncateEPS_j:
 392              		@ args = 0, pretend = 0, frame = 0
 393              		@ frame_needed = 0, uses_anonymous_args = 0
 394 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 395 0002 0546     		mov	r5, r0
 396 0004 0F46     		mov	r7, r1
 397 0006 E0B1     		cbz	r0, .L78
 398 0008 0068     		ldr	r0, [r0]
 399 000a C8B1     		cbz	r0, .L69
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 8


 400 000c 95F81461 		ldrb	r6, [r5, #276]	@ zero_extendqisi2
 401 0010 BEB9     		cbnz	r6, .L78
 402              	.L75:
 403 0012 2C46     		mov	r4, r5
 404 0014 01E0     		b	.L71
 405              	.L80:
 406 0016 0446     		mov	r4, r0
 407 0018 1846     		mov	r0, r3
 408              	.L71:
 409 001a 0368     		ldr	r3, [r0]
 410 001c 002B     		cmp	r3, #0
 411 001e FAD1     		bne	.L80
 412 0020 2360     		str	r3, [r4]
 413 0022 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 414 0026 AC42     		cmp	r4, r5
 415 0028 06F58076 		add	r6, r6, #256
 416 002c 03D0     		beq	.L73
 417 002e BE42     		cmp	r6, r7
 418 0030 01D2     		bcs	.L73
 419 0032 2868     		ldr	r0, [r5]
 420 0034 EDE7     		b	.L75
 421              	.L73:
 422 0036 6C60     		str	r4, [r5, #4]
 423 0038 2D68     		ldr	r5, [r5]
 424 003a 002D     		cmp	r5, #0
 425 003c FBD1     		bne	.L73
 426 003e 3046     		mov	r0, r6
 427              	.L69:
 428 0040 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 429              	.L78:
 430 0042 0020     		movs	r0, #0
 431 0044 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 432              		.size	_ZN12OutputBuffer8TruncateEPS_j, .-_ZN12OutputBuffer8TruncateEPS_j
 433 0046 00BF     		.section	.text._ZN12OutputBuffer4copyEc,"ax",%progbits
 434              		.align	2
 435              		.global	_ZN12OutputBuffer4copyEc
 436              		.thumb
 437              		.thumb_func
 438              		.type	_ZN12OutputBuffer4copyEc, %function
 439              	_ZN12OutputBuffer4copyEc:
 440              		@ args = 0, pretend = 0, frame = 0
 441              		@ frame_needed = 0, uses_anonymous_args = 0
 442 0000 38B5     		push	{r3, r4, r5, lr}
 443 0002 0446     		mov	r4, r0
 444 0004 0068     		ldr	r0, [r0]
 445 0006 0D46     		mov	r5, r1
 446 0008 28B1     		cbz	r0, .L82
 447              	.L84:
 448 000a FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 449 000e 0028     		cmp	r0, #0
 450 0010 FBD1     		bne	.L84
 451 0012 84E81100 		stmia	r4, {r0, r4}
 452              	.L82:
 453 0016 0120     		movs	r0, #1
 454 0018 2573     		strb	r5, [r4, #12]
 455 001a C4F80C01 		str	r0, [r4, #268]
 456 001e 38BD     		pop	{r3, r4, r5, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 9


 457              		.size	_ZN12OutputBuffer4copyEc, .-_ZN12OutputBuffer4copyEc
 458              		.section	.text._ZN12OutputBuffer3catEc,"ax",%progbits
 459              		.align	2
 460              		.global	_ZN12OutputBuffer3catEc
 461              		.thumb
 462              		.thumb_func
 463              		.type	_ZN12OutputBuffer3catEc, %function
 464              	_ZN12OutputBuffer3catEc:
 465              		@ args = 0, pretend = 0, frame = 16
 466              		@ frame_needed = 0, uses_anonymous_args = 0
 467 0000 10B5     		push	{r4, lr}
 468 0002 4368     		ldr	r3, [r0, #4]
 469 0004 D3F80C21 		ldr	r2, [r3, #268]
 470 0008 B2F5807F 		cmp	r2, #256
 471 000c 84B0     		sub	sp, sp, #16
 472 000e 0446     		mov	r4, r0
 473 0010 07D0     		beq	.L96
 474 0012 9C18     		adds	r4, r3, r2
 475 0014 0132     		adds	r2, r2, #1
 476 0016 C3F80C21 		str	r2, [r3, #268]
 477 001a 0120     		movs	r0, #1
 478 001c 2173     		strb	r1, [r4, #12]
 479              	.L95:
 480 001e 04B0     		add	sp, sp, #16
 481              		@ sp needed
 482 0020 10BD     		pop	{r4, pc}
 483              	.L96:
 484 0022 03A8     		add	r0, sp, #12
 485 0024 0191     		str	r1, [sp, #4]
 486 0026 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 487 002a 0199     		ldr	r1, [sp, #4]
 488 002c 0028     		cmp	r0, #0
 489 002e F6D0     		beq	.L95
 490 0030 0398     		ldr	r0, [sp, #12]
 491 0032 D4F81831 		ldr	r3, [r4, #280]
 492 0036 C0F81831 		str	r3, [r0, #280]
 493 003a FFF7FEFF 		bl	_ZN12OutputBuffer4copyEc
 494 003e 039B     		ldr	r3, [sp, #12]
 495 0040 6268     		ldr	r2, [r4, #4]
 496 0042 9C42     		cmp	r4, r3
 497 0044 1360     		str	r3, [r2]
 498 0046 18BF     		it	ne
 499 0048 2046     		movne	r0, r4
 500 004a 03D0     		beq	.L93
 501              	.L94:
 502 004c 4360     		str	r3, [r0, #4]
 503 004e 0068     		ldr	r0, [r0]
 504 0050 8342     		cmp	r3, r0
 505 0052 FBD1     		bne	.L94
 506              	.L93:
 507 0054 0120     		movs	r0, #1
 508 0056 E2E7     		b	.L95
 509              		.size	_ZN12OutputBuffer3catEc, .-_ZN12OutputBuffer3catEc
 510              		.section	.text._ZN12OutputBuffer12EncodeStringEPKcjbb,"ax",%progbits
 511              		.align	2
 512              		.global	_ZN12OutputBuffer12EncodeStringEPKcjbb
 513              		.thumb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 10


 514              		.thumb_func
 515              		.type	_ZN12OutputBuffer12EncodeStringEPKcjbb, %function
 516              	_ZN12OutputBuffer12EncodeStringEPKcjbb:
 517              		@ args = 4, pretend = 0, frame = 8
 518              		@ frame_needed = 0, uses_anonymous_args = 0
 519 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 520 0004 83B0     		sub	sp, sp, #12
 521 0006 8846     		mov	r8, r1
 522 0008 9DF83040 		ldrb	r4, [sp, #48]	@ zero_extendqisi2
 523 000c 0194     		str	r4, [sp, #4]
 524 000e 9146     		mov	r9, r2
 525 0010 9A46     		mov	r10, r3
 526 0012 0746     		mov	r7, r0
 527 0014 002C     		cmp	r4, #0
 528 0016 43D1     		bne	.L131
 529 0018 019E     		ldr	r6, [sp, #4]
 530              	.L98:
 531 001a 98F80040 		ldrb	r4, [r8]	@ zero_extendqisi2
 532 001e B9F1000F 		cmp	r9, #0
 533 0022 2ED0     		beq	.L99
 534 0024 6CB3     		cbz	r4, .L99
 535 0026 0125     		movs	r5, #1
 536 0028 15E0     		b	.L100
 537              	.L132:
 538 002a 092C     		cmp	r4, #9
 539 002c 34D0     		beq	.L111
 540 002e 0A2C     		cmp	r4, #10
 541 0030 1DD1     		bne	.L101
 542 0032 6E24     		movs	r4, #110
 543              	.L104:
 544 0034 5C21     		movs	r1, #92
 545 0036 3846     		mov	r0, r7
 546 0038 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 547 003c 2146     		mov	r1, r4
 548 003e 8346     		mov	fp, r0
 549 0040 3846     		mov	r0, r7
 550 0042 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 551 0046 18F80540 		ldrb	r4, [r8, r5]	@ zero_extendqisi2
 552 004a 0135     		adds	r5, r5, #1
 553 004c 5844     		add	r0, r0, fp
 554 004e A945     		cmp	r9, r5
 555 0050 0644     		add	r6, r6, r0
 556 0052 16D3     		bcc	.L99
 557              	.L133:
 558 0054 ACB1     		cbz	r4, .L99
 559              	.L100:
 560 0056 1F2C     		cmp	r4, #31
 561 0058 02D8     		bhi	.L107
 562 005a BAF1000F 		cmp	r10, #0
 563 005e 10D0     		beq	.L99
 564              	.L107:
 565 0060 0D2C     		cmp	r4, #13
 566 0062 1BD0     		beq	.L102
 567 0064 E1D9     		bls	.L132
 568 0066 222C     		cmp	r4, #34
 569 0068 E4D0     		beq	.L104
 570 006a 5C2C     		cmp	r4, #92
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 11


 571 006c E2D0     		beq	.L104
 572              	.L101:
 573 006e 2146     		mov	r1, r4
 574 0070 3846     		mov	r0, r7
 575 0072 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 576 0076 18F80540 		ldrb	r4, [r8, r5]	@ zero_extendqisi2
 577 007a 0135     		adds	r5, r5, #1
 578 007c A945     		cmp	r9, r5
 579 007e 0644     		add	r6, r6, r0
 580 0080 E8D2     		bcs	.L133
 581              	.L99:
 582 0082 019C     		ldr	r4, [sp, #4]
 583 0084 24B1     		cbz	r4, .L118
 584 0086 3846     		mov	r0, r7
 585 0088 2221     		movs	r1, #34
 586 008a FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 587 008e 0644     		add	r6, r6, r0
 588              	.L118:
 589 0090 3046     		mov	r0, r6
 590 0092 03B0     		add	sp, sp, #12
 591              		@ sp needed
 592 0094 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 593              	.L111:
 594 0098 7424     		movs	r4, #116
 595 009a CBE7     		b	.L104
 596              	.L102:
 597 009c 7224     		movs	r4, #114
 598 009e C9E7     		b	.L104
 599              	.L131:
 600 00a0 2221     		movs	r1, #34
 601 00a2 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 602 00a6 0646     		mov	r6, r0
 603 00a8 B7E7     		b	.L98
 604              		.size	_ZN12OutputBuffer12EncodeStringEPKcjbb, .-_ZN12OutputBuffer12EncodeStringEPKcjbb
 605 00aa 00BF     		.section	.text._ZN12OutputBuffer11EncodeReplyEPS_b,"ax",%progbits
 606              		.align	2
 607              		.global	_ZN12OutputBuffer11EncodeReplyEPS_b
 608              		.thumb
 609              		.thumb_func
 610              		.type	_ZN12OutputBuffer11EncodeReplyEPS_b, %function
 611              	_ZN12OutputBuffer11EncodeReplyEPS_b:
 612              		@ args = 0, pretend = 0, frame = 0
 613              		@ frame_needed = 0, uses_anonymous_args = 0
 614 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 615 0004 0C46     		mov	r4, r1
 616 0006 82B0     		sub	sp, sp, #8
 617 0008 2221     		movs	r1, #34
 618 000a 1746     		mov	r7, r2
 619 000c 0646     		mov	r6, r0
 620 000e FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 621 0012 0546     		mov	r5, r0
 622 0014 94B1     		cbz	r4, .L135
 623 0016 4FF00008 		mov	r8, #0
 624              	.L136:
 625 001a D4F80C21 		ldr	r2, [r4, #268]
 626 001e CDF80080 		str	r8, [sp]
 627 0022 04F10C01 		add	r1, r4, #12
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 12


 628 0026 3B46     		mov	r3, r7
 629 0028 3046     		mov	r0, r6
 630 002a FFF7FEFF 		bl	_ZN12OutputBuffer12EncodeStringEPKcjbb
 631 002e 0544     		add	r5, r5, r0
 632 0030 2046     		mov	r0, r4
 633 0032 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 634 0036 0446     		mov	r4, r0
 635 0038 0028     		cmp	r0, #0
 636 003a EED1     		bne	.L136
 637              	.L135:
 638 003c 3046     		mov	r0, r6
 639 003e 2221     		movs	r1, #34
 640 0040 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 641 0044 2844     		add	r0, r0, r5
 642 0046 02B0     		add	sp, sp, #8
 643              		@ sp needed
 644 0048 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 645              		.size	_ZN12OutputBuffer11EncodeReplyEPS_b, .-_ZN12OutputBuffer11EncodeReplyEPS_b
 646              		.section	.text._ZN12OutputBuffer4copyEPKcj,"ax",%progbits
 647              		.align	2
 648              		.global	_ZN12OutputBuffer4copyEPKcj
 649              		.thumb
 650              		.thumb_func
 651              		.type	_ZN12OutputBuffer4copyEPKcj, %function
 652              	_ZN12OutputBuffer4copyEPKcj:
 653              		@ args = 0, pretend = 0, frame = 8
 654              		@ frame_needed = 0, uses_anonymous_args = 0
 655 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 656 0004 0546     		mov	r5, r0
 657 0006 0068     		ldr	r0, [r0]
 658 0008 82B0     		sub	sp, sp, #8
 659 000a 8846     		mov	r8, r1
 660 000c 1746     		mov	r7, r2
 661 000e 28B1     		cbz	r0, .L144
 662              	.L146:
 663 0010 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 664 0014 0028     		cmp	r0, #0
 665 0016 FBD1     		bne	.L146
 666 0018 85E82100 		stmia	r5, {r0, r5}
 667              	.L144:
 668 001c B7F5807F 		cmp	r7, #256
 669 0020 3ED9     		bls	.L147
 670 0022 4FF48076 		mov	r6, #256
 671 0026 04E0     		b	.L151
 672              	.L149:
 673 0028 6A68     		ldr	r2, [r5, #4]
 674 002a B742     		cmp	r7, r6
 675 002c 1360     		str	r3, [r2]
 676 002e 6B60     		str	r3, [r5, #4]
 677 0030 1FD9     		bls	.L148
 678              	.L151:
 679 0032 01A8     		add	r0, sp, #4
 680 0034 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 681 0038 BC1B     		subs	r4, r7, r6
 682 003a B4F5807F 		cmp	r4, #256
 683 003e 28BF     		it	cs
 684 0040 4FF48074 		movcs	r4, #256
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 13


 685 0044 08EB0601 		add	r1, r8, r6
 686 0048 2246     		mov	r2, r4
 687 004a 90B1     		cbz	r0, .L148
 688 004c 0198     		ldr	r0, [sp, #4]
 689 004e D5F81831 		ldr	r3, [r5, #280]
 690 0052 C0F81831 		str	r3, [r0, #280]
 691 0056 0C30     		adds	r0, r0, #12
 692 0058 FFF7FEFF 		bl	memcpy
 693 005c 019B     		ldr	r3, [sp, #4]
 694 005e 2A68     		ldr	r2, [r5]
 695 0060 C3F80C41 		str	r4, [r3, #268]
 696 0064 2644     		add	r6, r6, r4
 697 0066 002A     		cmp	r2, #0
 698 0068 DED1     		bne	.L149
 699 006a B742     		cmp	r7, r6
 700 006c 6B60     		str	r3, [r5, #4]
 701 006e 2B60     		str	r3, [r5]
 702 0070 DFD8     		bhi	.L151
 703              	.L148:
 704 0072 2B68     		ldr	r3, [r5]
 705 0074 6A68     		ldr	r2, [r5, #4]
 706 0076 9A42     		cmp	r2, r3
 707 0078 04D0     		beq	.L154
 708              	.L155:
 709 007a 5A60     		str	r2, [r3, #4]
 710 007c 6A68     		ldr	r2, [r5, #4]
 711 007e 1B68     		ldr	r3, [r3]
 712 0080 9A42     		cmp	r2, r3
 713 0082 FAD1     		bne	.L155
 714              	.L154:
 715 0084 4FF48074 		mov	r4, #256
 716 0088 4146     		mov	r1, r8
 717 008a 2246     		mov	r2, r4
 718 008c 05F10C00 		add	r0, r5, #12
 719 0090 FFF7FEFF 		bl	memcpy
 720 0094 3046     		mov	r0, r6
 721 0096 C5F80C41 		str	r4, [r5, #268]
 722 009a 02B0     		add	sp, sp, #8
 723              		@ sp needed
 724 009c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 725              	.L147:
 726 00a0 4146     		mov	r1, r8
 727 00a2 05F10C00 		add	r0, r5, #12
 728 00a6 3A46     		mov	r2, r7
 729 00a8 FFF7FEFF 		bl	memcpy
 730 00ac 3846     		mov	r0, r7
 731 00ae C5F80C71 		str	r7, [r5, #268]
 732 00b2 02B0     		add	sp, sp, #8
 733              		@ sp needed
 734 00b4 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 735              		.size	_ZN12OutputBuffer4copyEPKcj, .-_ZN12OutputBuffer4copyEPKcj
 736              		.section	.text._ZN12OutputBuffer4copyEPKc,"ax",%progbits
 737              		.align	2
 738              		.global	_ZN12OutputBuffer4copyEPKc
 739              		.thumb
 740              		.thumb_func
 741              		.type	_ZN12OutputBuffer4copyEPKc, %function
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 14


 742              	_ZN12OutputBuffer4copyEPKc:
 743              		@ args = 0, pretend = 0, frame = 0
 744              		@ frame_needed = 0, uses_anonymous_args = 0
 745 0000 38B5     		push	{r3, r4, r5, lr}
 746 0002 0546     		mov	r5, r0
 747 0004 0846     		mov	r0, r1
 748 0006 0C46     		mov	r4, r1
 749 0008 FFF7FEFF 		bl	strlen
 750 000c 2146     		mov	r1, r4
 751 000e 0246     		mov	r2, r0
 752 0010 2846     		mov	r0, r5
 753 0012 BDE83840 		pop	{r3, r4, r5, lr}
 754 0016 FFF7FEBF 		b	_ZN12OutputBuffer4copyEPKcj
 755              		.size	_ZN12OutputBuffer4copyEPKc, .-_ZN12OutputBuffer4copyEPKc
 756 001a 00BF     		.section	.text._ZN12OutputBuffer6printfEPKcz,"ax",%progbits
 757              		.align	2
 758              		.global	_ZN12OutputBuffer6printfEPKcz
 759              		.thumb
 760              		.thumb_func
 761              		.type	_ZN12OutputBuffer6printfEPKcz, %function
 762              	_ZN12OutputBuffer6printfEPKcz:
 763              		@ args = 4, pretend = 12, frame = 264
 764              		@ frame_needed = 0, uses_anonymous_args = 1
 765 0000 0EB4     		push	{r1, r2, r3}
 766 0002 10B5     		push	{r4, lr}
 767 0004 C3B0     		sub	sp, sp, #268
 768 0006 45AB     		add	r3, sp, #276
 769 0008 0446     		mov	r4, r0
 770 000a 53F8042B 		ldr	r2, [r3], #4
 771 000e 0193     		str	r3, [sp, #4]
 772 0010 02A8     		add	r0, sp, #8
 773 0012 4FF48071 		mov	r1, #256
 774 0016 FFF7FEFF 		bl	vsnprintf
 775 001a 2046     		mov	r0, r4
 776 001c 02A9     		add	r1, sp, #8
 777 001e FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 778 0022 43B0     		add	sp, sp, #268
 779              		@ sp needed
 780 0024 BDE81040 		pop	{r4, lr}
 781 0028 03B0     		add	sp, sp, #12
 782 002a 7047     		bx	lr
 783              		.size	_ZN12OutputBuffer6printfEPKcz, .-_ZN12OutputBuffer6printfEPKcz
 784              		.section	.text._ZN12OutputBuffer3catEPKcj,"ax",%progbits
 785              		.align	2
 786              		.global	_ZN12OutputBuffer3catEPKcj
 787              		.thumb
 788              		.thumb_func
 789              		.type	_ZN12OutputBuffer3catEPKcj, %function
 790              	_ZN12OutputBuffer3catEPKcj:
 791              		@ args = 0, pretend = 0, frame = 8
 792              		@ frame_needed = 0, uses_anonymous_args = 0
 793 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 794 0002 0546     		mov	r5, r0
 795 0004 4068     		ldr	r0, [r0, #4]
 796 0006 D0F80C31 		ldr	r3, [r0, #268]
 797 000a C3F58074 		rsb	r4, r3, #256
 798 000e 1844     		add	r0, r0, r3
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 15


 799 0010 9442     		cmp	r4, r2
 800 0012 83B0     		sub	sp, sp, #12
 801 0014 1646     		mov	r6, r2
 802 0016 0F46     		mov	r7, r1
 803 0018 00F10C00 		add	r0, r0, #12
 804 001c 2AD8     		bhi	.L165
 805 001e 2246     		mov	r2, r4
 806 0020 FFF7FEFF 		bl	memcpy
 807 0024 6B68     		ldr	r3, [r5, #4]
 808 0026 D3F80C21 		ldr	r2, [r3, #268]
 809 002a B442     		cmp	r4, r6
 810 002c 2244     		add	r2, r2, r4
 811 002e C3F80C21 		str	r2, [r3, #268]
 812 0032 27D2     		bcs	.L176
 813 0034 01A8     		add	r0, sp, #4
 814 0036 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 815 003a 20B3     		cbz	r0, .L173
 816 003c 0198     		ldr	r0, [sp, #4]
 817 003e D5F81831 		ldr	r3, [r5, #280]
 818 0042 C0F81831 		str	r3, [r0, #280]
 819 0046 3919     		adds	r1, r7, r4
 820 0048 321B     		subs	r2, r6, r4
 821 004a FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKcj
 822 004e 6B68     		ldr	r3, [r5, #4]
 823 0050 0199     		ldr	r1, [sp, #4]
 824 0052 1960     		str	r1, [r3]
 825 0054 2B68     		ldr	r3, [r5]
 826 0056 4A68     		ldr	r2, [r1, #4]
 827 0058 6A60     		str	r2, [r5, #4]
 828 005a 9942     		cmp	r1, r3
 829 005c 2044     		add	r0, r0, r4
 830 005e 01D1     		bne	.L168
 831 0060 04E0     		b	.L171
 832              	.L177:
 833 0062 6A68     		ldr	r2, [r5, #4]
 834              	.L168:
 835 0064 5A60     		str	r2, [r3, #4]
 836 0066 1B68     		ldr	r3, [r3]
 837 0068 9942     		cmp	r1, r3
 838 006a FAD1     		bne	.L177
 839              	.L171:
 840 006c 0446     		mov	r4, r0
 841 006e 2046     		mov	r0, r4
 842 0070 03B0     		add	sp, sp, #12
 843              		@ sp needed
 844 0072 F0BD     		pop	{r4, r5, r6, r7, pc}
 845              	.L165:
 846 0074 FFF7FEFF 		bl	memcpy
 847 0078 6B68     		ldr	r3, [r5, #4]
 848 007a D3F80C21 		ldr	r2, [r3, #268]
 849 007e 3244     		add	r2, r2, r6
 850 0080 C3F80C21 		str	r2, [r3, #268]
 851              	.L176:
 852 0084 3446     		mov	r4, r6
 853              	.L173:
 854 0086 2046     		mov	r0, r4
 855 0088 03B0     		add	sp, sp, #12
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 16


 856              		@ sp needed
 857 008a F0BD     		pop	{r4, r5, r6, r7, pc}
 858              		.size	_ZN12OutputBuffer3catEPKcj, .-_ZN12OutputBuffer3catEPKcj
 859              		.section	.text._ZN12OutputBuffer3catEPKc,"ax",%progbits
 860              		.align	2
 861              		.global	_ZN12OutputBuffer3catEPKc
 862              		.thumb
 863              		.thumb_func
 864              		.type	_ZN12OutputBuffer3catEPKc, %function
 865              	_ZN12OutputBuffer3catEPKc:
 866              		@ args = 0, pretend = 0, frame = 0
 867              		@ frame_needed = 0, uses_anonymous_args = 0
 868 0000 38B5     		push	{r3, r4, r5, lr}
 869 0002 0546     		mov	r5, r0
 870 0004 0846     		mov	r0, r1
 871 0006 0C46     		mov	r4, r1
 872 0008 FFF7FEFF 		bl	strlen
 873 000c 2146     		mov	r1, r4
 874 000e 0246     		mov	r2, r0
 875 0010 2846     		mov	r0, r5
 876 0012 BDE83840 		pop	{r3, r4, r5, lr}
 877 0016 FFF7FEBF 		b	_ZN12OutputBuffer3catEPKcj
 878              		.size	_ZN12OutputBuffer3catEPKc, .-_ZN12OutputBuffer3catEPKc
 879 001a 00BF     		.section	.text._ZN12OutputBuffer7vprintfEPKcSt9__va_list,"ax",%progbits
 880              		.align	2
 881              		.global	_ZN12OutputBuffer7vprintfEPKcSt9__va_list
 882              		.thumb
 883              		.thumb_func
 884              		.type	_ZN12OutputBuffer7vprintfEPKcSt9__va_list, %function
 885              	_ZN12OutputBuffer7vprintfEPKcSt9__va_list:
 886              		@ args = 0, pretend = 0, frame = 256
 887              		@ frame_needed = 0, uses_anonymous_args = 0
 888 0000 10B5     		push	{r4, lr}
 889 0002 C0B0     		sub	sp, sp, #256
 890 0004 1346     		mov	r3, r2
 891 0006 0446     		mov	r4, r0
 892 0008 0A46     		mov	r2, r1
 893 000a 6846     		mov	r0, sp
 894 000c 4FF48071 		mov	r1, #256
 895 0010 FFF7FEFF 		bl	vsnprintf
 896 0014 2046     		mov	r0, r4
 897 0016 6946     		mov	r1, sp
 898 0018 FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 899 001c 40B0     		add	sp, sp, #256
 900              		@ sp needed
 901 001e 10BD     		pop	{r4, pc}
 902              		.size	_ZN12OutputBuffer7vprintfEPKcSt9__va_list, .-_ZN12OutputBuffer7vprintfEPKcSt9__va_list
 903              		.section	.text._ZN12OutputBuffer4catfEPKcz,"ax",%progbits
 904              		.align	2
 905              		.global	_ZN12OutputBuffer4catfEPKcz
 906              		.thumb
 907              		.thumb_func
 908              		.type	_ZN12OutputBuffer4catfEPKcz, %function
 909              	_ZN12OutputBuffer4catfEPKcz:
 910              		@ args = 4, pretend = 12, frame = 264
 911              		@ frame_needed = 0, uses_anonymous_args = 1
 912 0000 0EB4     		push	{r1, r2, r3}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 17


 913 0002 10B5     		push	{r4, lr}
 914 0004 C3B0     		sub	sp, sp, #268
 915 0006 45AB     		add	r3, sp, #276
 916 0008 0446     		mov	r4, r0
 917 000a 53F8042B 		ldr	r2, [r3], #4
 918 000e 0193     		str	r3, [sp, #4]
 919 0010 02A8     		add	r0, sp, #8
 920 0012 4FF48071 		mov	r1, #256
 921 0016 FFF7FEFF 		bl	vsnprintf
 922 001a 2046     		mov	r0, r4
 923 001c 02A9     		add	r1, sp, #8
 924 001e FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 925 0022 43B0     		add	sp, sp, #268
 926              		@ sp needed
 927 0024 BDE81040 		pop	{r4, lr}
 928 0028 03B0     		add	sp, sp, #12
 929 002a 7047     		bx	lr
 930              		.size	_ZN12OutputBuffer4catfEPKcz, .-_ZN12OutputBuffer4catfEPKcz
 931              		.section	.text._ZN12OutputBuffer3catER9StringRef,"ax",%progbits
 932              		.align	2
 933              		.global	_ZN12OutputBuffer3catER9StringRef
 934              		.thumb
 935              		.thumb_func
 936              		.type	_ZN12OutputBuffer3catER9StringRef, %function
 937              	_ZN12OutputBuffer3catER9StringRef:
 938              		@ args = 0, pretend = 0, frame = 0
 939              		@ frame_needed = 0, uses_anonymous_args = 0
 940              		@ link register save eliminated.
 941 0000 06C9     		ldmia	r1, {r1, r2}
 942 0002 FFF7FEBF 		b	_ZN12OutputBuffer3catEPKcj
 943              		.size	_ZN12OutputBuffer3catER9StringRef, .-_ZN12OutputBuffer3catER9StringRef
 944 0006 00BF     		.section	.text._ZN12OutputBuffer10ReleaseAllEPS_,"ax",%progbits
 945              		.align	2
 946              		.global	_ZN12OutputBuffer10ReleaseAllEPS_
 947              		.thumb
 948              		.thumb_func
 949              		.type	_ZN12OutputBuffer10ReleaseAllEPS_, %function
 950              	_ZN12OutputBuffer10ReleaseAllEPS_:
 951              		@ args = 0, pretend = 0, frame = 0
 952              		@ frame_needed = 0, uses_anonymous_args = 0
 953 0000 08B5     		push	{r3, lr}
 954 0002 18B1     		cbz	r0, .L182
 955              	.L185:
 956 0004 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 957 0008 0028     		cmp	r0, #0
 958 000a FBD1     		bne	.L185
 959              	.L182:
 960 000c 08BD     		pop	{r3, pc}
 961              		.size	_ZN12OutputBuffer10ReleaseAllEPS_, .-_ZN12OutputBuffer10ReleaseAllEPS_
 962 000e 00BF     		.section	.text._ZN12OutputBuffer11DiagnosticsE11MessageType,"ax",%progbits
 963              		.align	2
 964              		.global	_ZN12OutputBuffer11DiagnosticsE11MessageType
 965              		.thumb
 966              		.thumb_func
 967              		.type	_ZN12OutputBuffer11DiagnosticsE11MessageType, %function
 968              	_ZN12OutputBuffer11DiagnosticsE11MessageType:
 969              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 18


 970              		@ frame_needed = 0, uses_anonymous_args = 0
 971 0000 10B5     		push	{r4, lr}
 972 0002 0849     		ldr	r1, .L190
 973 0004 084B     		ldr	r3, .L190+4
 974 0006 094A     		ldr	r2, .L190+8
 975 0008 0C68     		ldr	r4, [r1]
 976 000a 1B68     		ldr	r3, [r3]
 977 000c 1268     		ldr	r2, [r2]
 978 000e 82B0     		sub	sp, sp, #8
 979 0010 0146     		mov	r1, r0
 980 0012 0192     		str	r2, [sp, #4]
 981 0014 2022     		movs	r2, #32
 982 0016 0092     		str	r2, [sp]
 983 0018 2046     		mov	r0, r4
 984 001a 054A     		ldr	r2, .L190+12
 985 001c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 986 0020 02B0     		add	sp, sp, #8
 987              		@ sp needed
 988 0022 10BD     		pop	{r4, pc}
 989              	.L191:
 990              		.align	2
 991              	.L190:
 992 0024 00000000 		.word	reprap
 993 0028 00000000 		.word	.LANCHOR1
 994 002c 00000000 		.word	.LANCHOR2
 995 0030 00000000 		.word	.LC0
 996              		.size	_ZN12OutputBuffer11DiagnosticsE11MessageType, .-_ZN12OutputBuffer11DiagnosticsE11MessageType
 997              		.section	.text._ZN11OutputStack4PushEP12OutputBuffer,"ax",%progbits
 998              		.align	2
 999              		.global	_ZN11OutputStack4PushEP12OutputBuffer
 1000              		.thumb
 1001              		.thumb_func
 1002              		.type	_ZN11OutputStack4PushEP12OutputBuffer, %function
 1003              	_ZN11OutputStack4PushEP12OutputBuffer:
 1004              		@ args = 0, pretend = 0, frame = 0
 1005              		@ frame_needed = 0, uses_anonymous_args = 0
 1006 0000 38B5     		push	{r3, r4, r5, lr}
 1007 0002 0368     		ldr	r3, [r0]
 1008 0004 042B     		cmp	r3, #4
 1009 0006 0546     		mov	r5, r0
 1010 0008 0C46     		mov	r4, r1
 1011 000a 13D0     		beq	.L204
 1012 000c 89B1     		cbz	r1, .L192
 1013 000e FFF7FEFF 		bl	millis
 1014 0012 A060     		str	r0, [r4, #8]
 1015              	@ 470 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 1016 0014 EFF31081 		MRS r1, primask
 1017              	@ 0 "" 2
 1018              	@ 330 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 1019 0018 72B6     		cpsid i
 1020              	@ 0 "" 2
 1021              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 1022 001a BFF35F8F 		dmb
 1023              	@ 0 "" 2
 1024              		.thumb
 1025 001e 104A     		ldr	r2, .L207
 1026 0020 0023     		movs	r3, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 19


 1027 0022 1370     		strb	r3, [r2]
 1028 0024 2B68     		ldr	r3, [r5]
 1029 0026 05EB8300 		add	r0, r5, r3, lsl #2
 1030 002a 0133     		adds	r3, r3, #1
 1031 002c 2B60     		str	r3, [r5]
 1032 002e 4460     		str	r4, [r0, #4]
 1033 0030 81B1     		cbz	r1, .L205
 1034              	.L192:
 1035 0032 38BD     		pop	{r3, r4, r5, pc}
 1036              	.L204:
 1037 0034 2CB1     		cbz	r4, .L206
 1038              	.L197:
 1039 0036 2046     		mov	r0, r4
 1040 0038 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 1041 003c 0446     		mov	r4, r0
 1042 003e 002C     		cmp	r4, #0
 1043 0040 F9D1     		bne	.L197
 1044              	.L206:
 1045 0042 084B     		ldr	r3, .L207+4
 1046 0044 1B68     		ldr	r3, [r3]
 1047 0046 D3F8C420 		ldr	r2, [r3, #196]
 1048 004a 42F00802 		orr	r2, r2, #8
 1049 004e C3F8C420 		str	r2, [r3, #196]
 1050 0052 38BD     		pop	{r3, r4, r5, pc}
 1051              	.L205:
 1052 0054 0123     		movs	r3, #1
 1053 0056 1370     		strb	r3, [r2]
 1054              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 1055 0058 BFF35F8F 		dmb
 1056              	@ 0 "" 2
 1057              	@ 319 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 1058 005c 62B6     		cpsie i
 1059              	@ 0 "" 2
 1060              		.thumb
 1061 005e 38BD     		pop	{r3, r4, r5, pc}
 1062              	.L208:
 1063              		.align	2
 1064              	.L207:
 1065 0060 00000000 		.word	g_interrupt_enabled
 1066 0064 00000000 		.word	reprap
 1067              		.size	_ZN11OutputStack4PushEP12OutputBuffer, .-_ZN11OutputStack4PushEP12OutputBuffer
 1068              		.section	.text._ZN11OutputStack3PopEv,"ax",%progbits
 1069              		.align	2
 1070              		.global	_ZN11OutputStack3PopEv
 1071              		.thumb
 1072              		.thumb_func
 1073              		.type	_ZN11OutputStack3PopEv, %function
 1074              	_ZN11OutputStack3PopEv:
 1075              		@ args = 0, pretend = 0, frame = 0
 1076              		@ frame_needed = 0, uses_anonymous_args = 0
 1077              		@ link register save eliminated.
 1078 0000 0368     		ldr	r3, [r0]
 1079 0002 70B4     		push	{r4, r5, r6}
 1080 0004 23B3     		cbz	r3, .L215
 1081              	@ 470 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 1082 0006 EFF31085 		MRS r5, primask
 1083              	@ 0 "" 2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 20


 1084              	@ 330 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 1085 000a 72B6     		cpsid i
 1086              	@ 0 "" 2
 1087              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 1088 000c BFF35F8F 		dmb
 1089              	@ 0 "" 2
 1090              		.thumb
 1091 0010 114C     		ldr	r4, .L217
 1092 0012 0023     		movs	r3, #0
 1093 0014 2370     		strb	r3, [r4]
 1094 0016 4668     		ldr	r6, [r0, #4]
 1095 0018 0268     		ldr	r2, [r0]
 1096 001a 012A     		cmp	r2, #1
 1097 001c 0BD9     		bls	.L213
 1098 001e 0123     		movs	r3, #1
 1099              	.L214:
 1100 0020 5A1E     		subs	r2, r3, #1
 1101 0022 00EB8301 		add	r1, r0, r3, lsl #2
 1102 0026 00EB8202 		add	r2, r0, r2, lsl #2
 1103 002a 4968     		ldr	r1, [r1, #4]
 1104 002c 5160     		str	r1, [r2, #4]
 1105 002e 0268     		ldr	r2, [r0]
 1106 0030 0133     		adds	r3, r3, #1
 1107 0032 9A42     		cmp	r2, r3
 1108 0034 F4D8     		bhi	.L214
 1109              	.L213:
 1110 0036 0268     		ldr	r2, [r0]
 1111 0038 013A     		subs	r2, r2, #1
 1112 003a 0260     		str	r2, [r0]
 1113 003c 15B1     		cbz	r5, .L212
 1114              	.L216:
 1115 003e 3046     		mov	r0, r6
 1116 0040 70BC     		pop	{r4, r5, r6}
 1117 0042 7047     		bx	lr
 1118              	.L212:
 1119 0044 0123     		movs	r3, #1
 1120 0046 2370     		strb	r3, [r4]
 1121              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 1122 0048 BFF35F8F 		dmb
 1123              	@ 0 "" 2
 1124              	@ 319 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 1125 004c 62B6     		cpsie i
 1126              	@ 0 "" 2
 1127              		.thumb
 1128 004e F6E7     		b	.L216
 1129              	.L215:
 1130 0050 1846     		mov	r0, r3
 1131 0052 70BC     		pop	{r4, r5, r6}
 1132 0054 7047     		bx	lr
 1133              	.L218:
 1134 0056 00BF     		.align	2
 1135              	.L217:
 1136 0058 00000000 		.word	g_interrupt_enabled
 1137              		.size	_ZN11OutputStack3PopEv, .-_ZN11OutputStack3PopEv
 1138              		.section	.text._ZNK11OutputStack12GetFirstItemEv,"ax",%progbits
 1139              		.align	2
 1140              		.global	_ZNK11OutputStack12GetFirstItemEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 21


 1141              		.thumb
 1142              		.thumb_func
 1143              		.type	_ZNK11OutputStack12GetFirstItemEv, %function
 1144              	_ZNK11OutputStack12GetFirstItemEv:
 1145              		@ args = 0, pretend = 0, frame = 0
 1146              		@ frame_needed = 0, uses_anonymous_args = 0
 1147              		@ link register save eliminated.
 1148 0000 0368     		ldr	r3, [r0]
 1149 0002 0BB1     		cbz	r3, .L221
 1150 0004 4068     		ldr	r0, [r0, #4]
 1151 0006 7047     		bx	lr
 1152              	.L221:
 1153 0008 1846     		mov	r0, r3
 1154 000a 7047     		bx	lr
 1155              		.size	_ZNK11OutputStack12GetFirstItemEv, .-_ZNK11OutputStack12GetFirstItemEv
 1156              		.section	.text._ZN11OutputStack12SetFirstItemEP12OutputBuffer,"ax",%progbits
 1157              		.align	2
 1158              		.global	_ZN11OutputStack12SetFirstItemEP12OutputBuffer
 1159              		.thumb
 1160              		.thumb_func
 1161              		.type	_ZN11OutputStack12SetFirstItemEP12OutputBuffer, %function
 1162              	_ZN11OutputStack12SetFirstItemEP12OutputBuffer:
 1163              		@ args = 0, pretend = 0, frame = 0
 1164              		@ frame_needed = 0, uses_anonymous_args = 0
 1165 0000 70B5     		push	{r4, r5, r6, lr}
 1166 0002 0C46     		mov	r4, r1
 1167              	@ 470 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 1168 0004 EFF31086 		MRS r6, primask
 1169              	@ 0 "" 2
 1170              	@ 330 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 1171 0008 72B6     		cpsid i
 1172              	@ 0 "" 2
 1173              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 1174 000a BFF35F8F 		dmb
 1175              	@ 0 "" 2
 1176              		.thumb
 1177 000e 114D     		ldr	r5, .L230
 1178 0010 0023     		movs	r3, #0
 1179 0012 2B70     		strb	r3, [r5]
 1180 0014 51B1     		cbz	r1, .L229
 1181 0016 4160     		str	r1, [r0, #4]
 1182 0018 FFF7FEFF 		bl	millis
 1183 001c A060     		str	r0, [r4, #8]
 1184              	.L225:
 1185 001e 26B9     		cbnz	r6, .L222
 1186 0020 0123     		movs	r3, #1
 1187 0022 2B70     		strb	r3, [r5]
 1188              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 1189 0024 BFF35F8F 		dmb
 1190              	@ 0 "" 2
 1191              	@ 319 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 1192 0028 62B6     		cpsie i
 1193              	@ 0 "" 2
 1194              		.thumb
 1195              	.L222:
 1196 002a 70BD     		pop	{r4, r5, r6, pc}
 1197              	.L229:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 22


 1198 002c 0368     		ldr	r3, [r0]
 1199 002e 012B     		cmp	r3, #1
 1200 0030 0BD9     		bls	.L226
 1201 0032 0123     		movs	r3, #1
 1202              	.L227:
 1203 0034 5A1E     		subs	r2, r3, #1
 1204 0036 00EB8301 		add	r1, r0, r3, lsl #2
 1205 003a 00EB8202 		add	r2, r0, r2, lsl #2
 1206 003e 4968     		ldr	r1, [r1, #4]
 1207 0040 5160     		str	r1, [r2, #4]
 1208 0042 0268     		ldr	r2, [r0]
 1209 0044 0133     		adds	r3, r3, #1
 1210 0046 9A42     		cmp	r2, r3
 1211 0048 F4D8     		bhi	.L227
 1212              	.L226:
 1213 004a 0368     		ldr	r3, [r0]
 1214 004c 013B     		subs	r3, r3, #1
 1215 004e 0360     		str	r3, [r0]
 1216 0050 E5E7     		b	.L225
 1217              	.L231:
 1218 0052 00BF     		.align	2
 1219              	.L230:
 1220 0054 00000000 		.word	g_interrupt_enabled
 1221              		.size	_ZN11OutputStack12SetFirstItemEP12OutputBuffer, .-_ZN11OutputStack12SetFirstItemEP12OutputBu
 1222              		.section	.text._ZNK11OutputStack11GetLastItemEv,"ax",%progbits
 1223              		.align	2
 1224              		.global	_ZNK11OutputStack11GetLastItemEv
 1225              		.thumb
 1226              		.thumb_func
 1227              		.type	_ZNK11OutputStack11GetLastItemEv, %function
 1228              	_ZNK11OutputStack11GetLastItemEv:
 1229              		@ args = 0, pretend = 0, frame = 0
 1230              		@ frame_needed = 0, uses_anonymous_args = 0
 1231              		@ link register save eliminated.
 1232 0000 0368     		ldr	r3, [r0]
 1233 0002 2BB1     		cbz	r3, .L234
 1234 0004 0368     		ldr	r3, [r0]
 1235 0006 013B     		subs	r3, r3, #1
 1236 0008 00EB8300 		add	r0, r0, r3, lsl #2
 1237 000c 4068     		ldr	r0, [r0, #4]
 1238 000e 7047     		bx	lr
 1239              	.L234:
 1240 0010 1846     		mov	r0, r3
 1241 0012 7047     		bx	lr
 1242              		.size	_ZNK11OutputStack11GetLastItemEv, .-_ZNK11OutputStack11GetLastItemEv
 1243              		.section	.text._ZNK11OutputStack10DataLengthEv,"ax",%progbits
 1244              		.align	2
 1245              		.global	_ZNK11OutputStack10DataLengthEv
 1246              		.thumb
 1247              		.thumb_func
 1248              		.type	_ZNK11OutputStack10DataLengthEv, %function
 1249              	_ZNK11OutputStack10DataLengthEv:
 1250              		@ args = 0, pretend = 0, frame = 0
 1251              		@ frame_needed = 0, uses_anonymous_args = 0
 1252              		@ link register save eliminated.
 1253 0000 F0B4     		push	{r4, r5, r6, r7}
 1254 0002 0546     		mov	r5, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 23


 1255              	@ 470 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 1256 0004 EFF31087 		MRS r7, primask
 1257              	@ 0 "" 2
 1258              	@ 330 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 1259 0008 72B6     		cpsid i
 1260              	@ 0 "" 2
 1261              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 1262 000a BFF35F8F 		dmb
 1263              	@ 0 "" 2
 1264              		.thumb
 1265 000e 124E     		ldr	r6, .L246
 1266 0010 0024     		movs	r4, #0
 1267 0012 3470     		strb	r4, [r6]
 1268 0014 0068     		ldr	r0, [r0]
 1269 0016 80B1     		cbz	r0, .L236
 1270 0018 2046     		mov	r0, r4
 1271              	.L239:
 1272 001a 05EB8403 		add	r3, r5, r4, lsl #2
 1273 001e 5B68     		ldr	r3, [r3, #4]
 1274 0020 9BB1     		cbz	r3, .L242
 1275 0022 0022     		movs	r2, #0
 1276              	.L238:
 1277 0024 D3F80C11 		ldr	r1, [r3, #268]
 1278 0028 1B68     		ldr	r3, [r3]
 1279 002a 0A44     		add	r2, r2, r1
 1280 002c 002B     		cmp	r3, #0
 1281 002e F9D1     		bne	.L238
 1282 0030 2B68     		ldr	r3, [r5]
 1283 0032 0134     		adds	r4, r4, #1
 1284 0034 A342     		cmp	r3, r4
 1285 0036 1044     		add	r0, r0, r2
 1286 0038 EFD8     		bhi	.L239
 1287              	.L236:
 1288 003a 27B9     		cbnz	r7, .L240
 1289 003c 0123     		movs	r3, #1
 1290 003e 3370     		strb	r3, [r6]
 1291              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 1292 0040 BFF35F8F 		dmb
 1293              	@ 0 "" 2
 1294              	@ 319 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 1295 0044 62B6     		cpsie i
 1296              	@ 0 "" 2
 1297              		.thumb
 1298              	.L240:
 1299 0046 F0BC     		pop	{r4, r5, r6, r7}
 1300 0048 7047     		bx	lr
 1301              	.L242:
 1302 004a 1A46     		mov	r2, r3
 1303 004c 2B68     		ldr	r3, [r5]
 1304 004e 0134     		adds	r4, r4, #1
 1305 0050 A342     		cmp	r3, r4
 1306 0052 1044     		add	r0, r0, r2
 1307 0054 E1D8     		bhi	.L239
 1308 0056 F0E7     		b	.L236
 1309              	.L247:
 1310              		.align	2
 1311              	.L246:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 24


 1312 0058 00000000 		.word	g_interrupt_enabled
 1313              		.size	_ZNK11OutputStack10DataLengthEv, .-_ZNK11OutputStack10DataLengthEv
 1314              		.section	.text._ZN11OutputStack6AppendEPS_,"ax",%progbits
 1315              		.align	2
 1316              		.global	_ZN11OutputStack6AppendEPS_
 1317              		.thumb
 1318              		.thumb_func
 1319              		.type	_ZN11OutputStack6AppendEPS_, %function
 1320              	_ZN11OutputStack6AppendEPS_:
 1321              		@ args = 0, pretend = 0, frame = 0
 1322              		@ frame_needed = 0, uses_anonymous_args = 0
 1323 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1324 0002 0B68     		ldr	r3, [r1]
 1325 0004 0E46     		mov	r6, r1
 1326 0006 0546     		mov	r5, r0
 1327 0008 33B3     		cbz	r3, .L248
 1328 000a 144F     		ldr	r7, .L261
 1329 000c 0024     		movs	r4, #0
 1330 000e 0CE0     		b	.L256
 1331              	.L260:
 1332 0010 2B68     		ldr	r3, [r5]
 1333 0012 06EB8402 		add	r2, r6, r4, lsl #2
 1334 0016 591C     		adds	r1, r3, #1
 1335 0018 2960     		str	r1, [r5]
 1336 001a 05EB8303 		add	r3, r5, r3, lsl #2
 1337 001e 5268     		ldr	r2, [r2, #4]
 1338 0020 5A60     		str	r2, [r3, #4]
 1339              	.L251:
 1340 0022 3368     		ldr	r3, [r6]
 1341 0024 0134     		adds	r4, r4, #1
 1342 0026 A342     		cmp	r3, r4
 1343 0028 16D9     		bls	.L248
 1344              	.L256:
 1345 002a 2B68     		ldr	r3, [r5]
 1346 002c 032B     		cmp	r3, #3
 1347 002e EFD9     		bls	.L260
 1348 0030 3B68     		ldr	r3, [r7]
 1349 0032 06EB8401 		add	r1, r6, r4, lsl #2
 1350 0036 D3F8C420 		ldr	r2, [r3, #196]
 1351 003a 4868     		ldr	r0, [r1, #4]
 1352 003c 42F00802 		orr	r2, r2, #8
 1353 0040 C3F8C420 		str	r2, [r3, #196]
 1354 0044 0028     		cmp	r0, #0
 1355 0046 ECD0     		beq	.L251
 1356              	.L254:
 1357 0048 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 1358 004c 0028     		cmp	r0, #0
 1359 004e FBD1     		bne	.L254
 1360 0050 3368     		ldr	r3, [r6]
 1361 0052 0134     		adds	r4, r4, #1
 1362 0054 A342     		cmp	r3, r4
 1363 0056 E8D8     		bhi	.L256
 1364              	.L248:
 1365 0058 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1366              	.L262:
 1367 005a 00BF     		.align	2
 1368              	.L261:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 25


 1369 005c 00000000 		.word	reprap
 1370              		.size	_ZN11OutputStack6AppendEPS_, .-_ZN11OutputStack6AppendEPS_
 1371              		.section	.text._ZN11OutputStack18IncreaseReferencesEj,"ax",%progbits
 1372              		.align	2
 1373              		.global	_ZN11OutputStack18IncreaseReferencesEj
 1374              		.thumb
 1375              		.thumb_func
 1376              		.type	_ZN11OutputStack18IncreaseReferencesEj, %function
 1377              	_ZN11OutputStack18IncreaseReferencesEj:
 1378              		@ args = 0, pretend = 0, frame = 0
 1379              		@ frame_needed = 0, uses_anonymous_args = 0
 1380              		@ link register save eliminated.
 1381 0000 F0B4     		push	{r4, r5, r6, r7}
 1382              	@ 470 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 1383 0002 EFF31087 		MRS r7, primask
 1384              	@ 0 "" 2
 1385              	@ 330 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 1386 0006 72B6     		cpsid i
 1387              	@ 0 "" 2
 1388              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 1389 0008 BFF35F8F 		dmb
 1390              	@ 0 "" 2
 1391              		.thumb
 1392 000c 104E     		ldr	r6, .L279
 1393 000e 0025     		movs	r5, #0
 1394 0010 3570     		strb	r5, [r6]
 1395 0012 0368     		ldr	r3, [r0]
 1396 0014 9BB1     		cbz	r3, .L269
 1397 0016 0124     		movs	r4, #1
 1398              	.L272:
 1399 0018 00EB8503 		add	r3, r0, r5, lsl #2
 1400 001c 5B68     		ldr	r3, [r3, #4]
 1401 001e 51B1     		cbz	r1, .L270
 1402 0020 4BB1     		cbz	r3, .L270
 1403              	.L271:
 1404 0022 D3F81821 		ldr	r2, [r3, #280]
 1405 0026 83F81441 		strb	r4, [r3, #276]
 1406 002a 0A44     		add	r2, r2, r1
 1407 002c C3F81821 		str	r2, [r3, #280]
 1408 0030 1B68     		ldr	r3, [r3]
 1409 0032 002B     		cmp	r3, #0
 1410 0034 F5D1     		bne	.L271
 1411              	.L270:
 1412 0036 0368     		ldr	r3, [r0]
 1413 0038 0135     		adds	r5, r5, #1
 1414 003a AB42     		cmp	r3, r5
 1415 003c ECD8     		bhi	.L272
 1416              	.L269:
 1417 003e 27B9     		cbnz	r7, .L263
 1418 0040 0123     		movs	r3, #1
 1419 0042 3370     		strb	r3, [r6]
 1420              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 1421 0044 BFF35F8F 		dmb
 1422              	@ 0 "" 2
 1423              	@ 319 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 1424 0048 62B6     		cpsie i
 1425              	@ 0 "" 2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 26


 1426              		.thumb
 1427              	.L263:
 1428 004a F0BC     		pop	{r4, r5, r6, r7}
 1429 004c 7047     		bx	lr
 1430              	.L280:
 1431 004e 00BF     		.align	2
 1432              	.L279:
 1433 0050 00000000 		.word	g_interrupt_enabled
 1434              		.size	_ZN11OutputStack18IncreaseReferencesEj, .-_ZN11OutputStack18IncreaseReferencesEj
 1435              		.section	.text._ZN11OutputStack10ReleaseAllEv,"ax",%progbits
 1436              		.align	2
 1437              		.global	_ZN11OutputStack10ReleaseAllEv
 1438              		.thumb
 1439              		.thumb_func
 1440              		.type	_ZN11OutputStack10ReleaseAllEv, %function
 1441              	_ZN11OutputStack10ReleaseAllEv:
 1442              		@ args = 0, pretend = 0, frame = 0
 1443              		@ frame_needed = 0, uses_anonymous_args = 0
 1444 0000 38B5     		push	{r3, r4, r5, lr}
 1445 0002 0368     		ldr	r3, [r0]
 1446 0004 0546     		mov	r5, r0
 1447 0006 63B1     		cbz	r3, .L285
 1448 0008 0024     		movs	r4, #0
 1449              	.L288:
 1450 000a 05EB8403 		add	r3, r5, r4, lsl #2
 1451 000e 5868     		ldr	r0, [r3, #4]
 1452 0010 18B1     		cbz	r0, .L286
 1453              	.L287:
 1454 0012 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 1455 0016 0028     		cmp	r0, #0
 1456 0018 FBD1     		bne	.L287
 1457              	.L286:
 1458 001a 2B68     		ldr	r3, [r5]
 1459 001c 0134     		adds	r4, r4, #1
 1460 001e A342     		cmp	r3, r4
 1461 0020 F3D8     		bhi	.L288
 1462              	.L285:
 1463 0022 0023     		movs	r3, #0
 1464 0024 2B60     		str	r3, [r5]
 1465 0026 38BD     		pop	{r3, r4, r5, pc}
 1466              		.size	_ZN11OutputStack10ReleaseAllEv, .-_ZN11OutputStack10ReleaseAllEv
 1467              		.global	_ZN12OutputBuffer20maxUsedOutputBuffersE
 1468              		.global	_ZN12OutputBuffer17usedOutputBuffersE
 1469              		.global	_ZN12OutputBuffer17freeOutputBuffersE
 1470              		.section	.bss._ZN12OutputBuffer17freeOutputBuffersE,"aw",%nobits
 1471              		.align	2
 1472              		.set	.LANCHOR0,. + 0
 1473              		.type	_ZN12OutputBuffer17freeOutputBuffersE, %object
 1474              		.size	_ZN12OutputBuffer17freeOutputBuffersE, 4
 1475              	_ZN12OutputBuffer17freeOutputBuffersE:
 1476 0000 00000000 		.space	4
 1477              		.section	.bss._ZN12OutputBuffer20maxUsedOutputBuffersE,"aw",%nobits
 1478              		.align	2
 1479              		.set	.LANCHOR2,. + 0
 1480              		.type	_ZN12OutputBuffer20maxUsedOutputBuffersE, %object
 1481              		.size	_ZN12OutputBuffer20maxUsedOutputBuffersE, 4
 1482              	_ZN12OutputBuffer20maxUsedOutputBuffersE:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHVMZEc.s 			page 27


 1483 0000 00000000 		.space	4
 1484              		.section	.rodata.str1.4,"aMS",%progbits,1
 1485              		.align	2
 1486              	.LC0:
 1487 0000 55736564 		.ascii	"Used output buffers: %d of %d (%d max)\012\000"
 1487      206F7574 
 1487      70757420 
 1487      62756666 
 1487      6572733A 
 1488              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1489              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1490              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1491              	_ZL28cpu_irq_prev_interrupt_state:
 1492 0000 00       		.space	1
 1493              		.section	.bss._ZN12OutputBuffer17usedOutputBuffersE,"aw",%nobits
 1494              		.align	2
 1495              		.set	.LANCHOR1,. + 0
 1496              		.type	_ZN12OutputBuffer17usedOutputBuffersE, %object
 1497              		.size	_ZN12OutputBuffer17usedOutputBuffersE, 4
 1498              	_ZN12OutputBuffer17usedOutputBuffersE:
 1499 0000 00000000 		.space	4
 1500              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1501              		.align	2
 1502              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1503              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1504              	_ZL32cpu_irq_critical_section_counter:
 1505 0000 00000000 		.space	4
 1506              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
