ARM GAS  C:\Users\George\AppData\Local\Temp\ccnFJRcJ.s 			page 1


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
  14              		.file	"GCodeBuffer.cpp"
  15              		.section	.text._ZN11GCodeBufferC2EPKc11MessageTypeb,"ax",%progbits
  16              		.align	2
  17              		.global	_ZN11GCodeBufferC2EPKc11MessageTypeb
  18              		.thumb
  19              		.thumb_func
  20              		.type	_ZN11GCodeBufferC2EPKc11MessageTypeb, %function
  21              	_ZN11GCodeBufferC2EPKc11MessageTypeb:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  25 0004 0446     		mov	r4, r0
  26 0006 1420     		movs	r0, #20
  27 0008 9946     		mov	r9, r3
  28 000a 0E46     		mov	r6, r1
  29 000c 1746     		mov	r7, r2
  30 000e FFF7FEFF 		bl	_Znwj
  31 0012 0025     		movs	r5, #0
  32 0014 8046     		mov	r8, r0
  33 0016 FFF7FEFF 		bl	_ZN17GCodeMachineStateC1Ev
  34 001a 4FF0FF33 		mov	r3, #-1
  35 001e C4F80880 		str	r8, [r4, #8]
  36 0022 2667     		str	r6, [r4, #112]
  37 0024 84F88C70 		strb	r7, [r4, #140]
  38 0028 84F88D90 		strb	r9, [r4, #141]
  39 002c A367     		str	r3, [r4, #120]
  40 002e 84F87D50 		strb	r5, [r4, #125]
  41 0032 C4F88450 		str	r5, [r4, #132]
  42 0036 C4F88850 		str	r5, [r4, #136]
  43 003a 6567     		str	r5, [r4, #116]
  44 003c 2571     		strb	r5, [r4, #4]
  45 003e 84F87C50 		strb	r5, [r4, #124]
  46 0042 C4F88050 		str	r5, [r4, #128]
  47 0046 2046     		mov	r0, r4
  48 0048 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
  49              		.size	_ZN11GCodeBufferC2EPKc11MessageTypeb, .-_ZN11GCodeBufferC2EPKc11MessageTypeb
  50              		.global	_ZN11GCodeBufferC1EPKc11MessageTypeb
  51              		.thumb_set _ZN11GCodeBufferC1EPKc11MessageTypeb,_ZN11GCodeBufferC2EPKc11MessageTypeb
  52              		.section	.text._ZN11GCodeBuffer5ResetEv,"ax",%progbits
  53              		.align	2
  54              		.global	_ZN11GCodeBuffer5ResetEv
  55              		.thumb
  56              		.thumb_func
  57              		.type	_ZN11GCodeBuffer5ResetEv, %function
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnFJRcJ.s 			page 2


  58              	_ZN11GCodeBuffer5ResetEv:
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 0, uses_anonymous_args = 0
  61 0000 10B5     		push	{r4, lr}
  62 0002 0446     		mov	r4, r0
  63 0004 8068     		ldr	r0, [r0, #8]
  64 0006 0368     		ldr	r3, [r0]
  65 0008 33B1     		cbz	r3, .L4
  66              	.L5:
  67 000a A360     		str	r3, [r4, #8]
  68 000c FFF7FEFF 		bl	_ZN17GCodeMachineState7ReleaseEPS_
  69 0010 A068     		ldr	r0, [r4, #8]
  70 0012 0368     		ldr	r3, [r0]
  71 0014 002B     		cmp	r3, #0
  72 0016 F8D1     		bne	.L5
  73              	.L4:
  74 0018 0023     		movs	r3, #0
  75 001a 4FF0FF32 		mov	r2, #-1
  76 001e 6367     		str	r3, [r4, #116]
  77 0020 2371     		strb	r3, [r4, #4]
  78 0022 84F87C30 		strb	r3, [r4, #124]
  79 0026 C4F88030 		str	r3, [r4, #128]
  80 002a A267     		str	r2, [r4, #120]
  81 002c 10BD     		pop	{r4, pc}
  82              		.size	_ZN11GCodeBuffer5ResetEv, .-_ZN11GCodeBuffer5ResetEv
  83 002e 00BF     		.section	.text._ZN11GCodeBuffer4InitEv,"ax",%progbits
  84              		.align	2
  85              		.global	_ZN11GCodeBuffer4InitEv
  86              		.thumb
  87              		.thumb_func
  88              		.type	_ZN11GCodeBuffer4InitEv, %function
  89              	_ZN11GCodeBuffer4InitEv:
  90              		@ args = 0, pretend = 0, frame = 0
  91              		@ frame_needed = 0, uses_anonymous_args = 0
  92              		@ link register save eliminated.
  93 0000 0023     		movs	r3, #0
  94 0002 4FF0FF32 		mov	r2, #-1
  95 0006 8267     		str	r2, [r0, #120]
  96 0008 4367     		str	r3, [r0, #116]
  97 000a 0371     		strb	r3, [r0, #4]
  98 000c 80F87C30 		strb	r3, [r0, #124]
  99 0010 C0F88030 		str	r3, [r0, #128]
 100 0014 7047     		bx	lr
 101              		.size	_ZN11GCodeBuffer4InitEv, .-_ZN11GCodeBuffer4InitEv
 102 0016 00BF     		.section	.text._ZN11GCodeBuffer11DiagnosticsE11MessageType,"ax",%progbits
 103              		.align	2
 104              		.global	_ZN11GCodeBuffer11DiagnosticsE11MessageType
 105              		.thumb
 106              		.thumb_func
 107              		.type	_ZN11GCodeBuffer11DiagnosticsE11MessageType, %function
 108              	_ZN11GCodeBuffer11DiagnosticsE11MessageType:
 109              		@ args = 0, pretend = 0, frame = 0
 110              		@ frame_needed = 0, uses_anonymous_args = 0
 111 0000 D0F88030 		ldr	r3, [r0, #128]
 112 0004 70B5     		push	{r4, r5, r6, lr}
 113 0006 012B     		cmp	r3, #1
 114 0008 0446     		mov	r4, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnFJRcJ.s 			page 3


 115 000a 0E46     		mov	r6, r1
 116 000c 2AD0     		beq	.L14
 117 000e 022B     		cmp	r3, #2
 118 0010 20D0     		beq	.L15
 119 0012 CBB1     		cbz	r3, .L19
 120              	.L13:
 121 0014 1748     		ldr	r0, .L20
 122 0016 1849     		ldr	r1, .L20+4
 123 0018 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 124 001c A468     		ldr	r4, [r4, #8]
 125              	.L18:
 126 001e 154D     		ldr	r5, .L20
 127 0020 227C     		ldrb	r2, [r4, #16]	@ zero_extendqisi2
 128 0022 1649     		ldr	r1, .L20+8
 129 0024 2846     		mov	r0, r5
 130 0026 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 131 002a 2468     		ldr	r4, [r4]
 132 002c 002C     		cmp	r4, #0
 133 002e F6D1     		bne	.L18
 134 0030 2846     		mov	r0, r5
 135 0032 0A21     		movs	r1, #10
 136 0034 FFF7FEFF 		bl	_ZN9StringRef3catEc
 137 0038 114B     		ldr	r3, .L20+12
 138 003a 3146     		mov	r1, r6
 139 003c 2A68     		ldr	r2, [r5]
 140 003e 1868     		ldr	r0, [r3]
 141 0040 BDE87040 		pop	{r4, r5, r6, lr}
 142 0044 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 143              	.L19:
 144 0048 0E49     		ldr	r1, .L20+16
 145 004a 226F     		ldr	r2, [r4, #112]
 146 004c 0948     		ldr	r0, .L20
 147 004e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 148 0052 DFE7     		b	.L13
 149              	.L15:
 150 0054 0C49     		ldr	r1, .L20+20
 151 0056 226F     		ldr	r2, [r4, #112]
 152 0058 04F10C03 		add	r3, r4, #12
 153 005c 0548     		ldr	r0, .L20
 154 005e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 155 0062 D7E7     		b	.L13
 156              	.L14:
 157 0064 0949     		ldr	r1, .L20+24
 158 0066 226F     		ldr	r2, [r4, #112]
 159 0068 04F10C03 		add	r3, r4, #12
 160 006c 0148     		ldr	r0, .L20
 161 006e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 162 0072 CFE7     		b	.L13
 163              	.L21:
 164              		.align	2
 165              	.L20:
 166 0074 00000000 		.word	scratchString
 167 0078 38000000 		.word	.LC3
 168 007c 48000000 		.word	.LC4
 169 0080 00000000 		.word	reprap
 170 0084 00000000 		.word	.LC0
 171 0088 24000000 		.word	.LC2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnFJRcJ.s 			page 4


 172 008c 0C000000 		.word	.LC1
 173              		.size	_ZN11GCodeBuffer11DiagnosticsE11MessageType, .-_ZN11GCodeBuffer11DiagnosticsE11MessageType
 174              		.section	.text._ZNK11GCodeBuffer8CheckSumEv,"ax",%progbits
 175              		.align	2
 176              		.global	_ZNK11GCodeBuffer8CheckSumEv
 177              		.thumb
 178              		.thumb_func
 179              		.type	_ZNK11GCodeBuffer8CheckSumEv, %function
 180              	_ZNK11GCodeBuffer8CheckSumEv:
 181              		@ args = 0, pretend = 0, frame = 0
 182              		@ frame_needed = 0, uses_anonymous_args = 0
 183              		@ link register save eliminated.
 184 0000 037B     		ldrb	r3, [r0, #12]	@ zero_extendqisi2
 185 0002 2A2B     		cmp	r3, #42
 186 0004 0CD0     		beq	.L27
 187 0006 6BB1     		cbz	r3, .L28
 188 0008 00F10C02 		add	r2, r0, #12
 189 000c 0020     		movs	r0, #0
 190 000e 00E0     		b	.L26
 191              	.L30:
 192 0010 2BB1     		cbz	r3, .L29
 193              	.L26:
 194 0012 5840     		eors	r0, r0, r3
 195 0014 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
 196 0018 2A2B     		cmp	r3, #42
 197 001a F9D1     		bne	.L30
 198              	.L23:
 199 001c 7047     		bx	lr
 200              	.L29:
 201 001e 7047     		bx	lr
 202              	.L27:
 203 0020 0020     		movs	r0, #0
 204 0022 7047     		bx	lr
 205              	.L28:
 206 0024 1846     		mov	r0, r3
 207 0026 F9E7     		b	.L23
 208              		.size	_ZNK11GCodeBuffer8CheckSumEv, .-_ZNK11GCodeBuffer8CheckSumEv
 209              		.section	.text._ZNK11GCodeBuffer7IsEmptyEv,"ax",%progbits
 210              		.align	2
 211              		.global	_ZNK11GCodeBuffer7IsEmptyEv
 212              		.thumb
 213              		.thumb_func
 214              		.type	_ZNK11GCodeBuffer7IsEmptyEv, %function
 215              	_ZNK11GCodeBuffer7IsEmptyEv:
 216              		@ args = 0, pretend = 0, frame = 0
 217              		@ frame_needed = 0, uses_anonymous_args = 0
 218 0000 38B5     		push	{r3, r4, r5, lr}
 219 0002 047B     		ldrb	r4, [r0, #12]	@ zero_extendqisi2
 220 0004 00F10C05 		add	r5, r0, #12
 221 0008 1CB9     		cbnz	r4, .L33
 222 000a 0DE0     		b	.L36
 223              	.L34:
 224 000c 15F8014F 		ldrb	r4, [r5, #1]!	@ zero_extendqisi2
 225 0010 54B1     		cbz	r4, .L36
 226              	.L33:
 227 0012 0648     		ldr	r0, .L37
 228 0014 2146     		mov	r1, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnFJRcJ.s 			page 5


 229 0016 FFF7FEFF 		bl	strchr
 230 001a 0028     		cmp	r0, #0
 231 001c F6D1     		bne	.L34
 232 001e D4F10100 		rsbs	r0, r4, #1
 233 0022 38BF     		it	cc
 234 0024 0020     		movcc	r0, #0
 235 0026 38BD     		pop	{r3, r4, r5, pc}
 236              	.L36:
 237 0028 0120     		movs	r0, #1
 238 002a 38BD     		pop	{r3, r4, r5, pc}
 239              	.L38:
 240              		.align	2
 241              	.L37:
 242 002c 4C000000 		.word	.LC5
 243              		.size	_ZNK11GCodeBuffer7IsEmptyEv, .-_ZNK11GCodeBuffer7IsEmptyEv
 244              		.section	.text._ZN11GCodeBuffer4SeenEc,"ax",%progbits
 245              		.align	2
 246              		.global	_ZN11GCodeBuffer4SeenEc
 247              		.thumb
 248              		.thumb_func
 249              		.type	_ZN11GCodeBuffer4SeenEc, %function
 250              	_ZN11GCodeBuffer4SeenEc:
 251              		@ args = 0, pretend = 0, frame = 0
 252              		@ frame_needed = 0, uses_anonymous_args = 0
 253              		@ link register save eliminated.
 254 0000 30B4     		push	{r4, r5}
 255 0002 037B     		ldrb	r3, [r0, #12]	@ zero_extendqisi2
 256 0004 0022     		movs	r2, #0
 257 0006 8267     		str	r2, [r0, #120]
 258 0008 93B1     		cbz	r3, .L42
 259 000a 3B2B     		cmp	r3, #59
 260 000c 10D0     		beq	.L42
 261 000e 8B42     		cmp	r3, r1
 262 0010 15D0     		beq	.L43
 263 0012 6FF00A04 		mvn	r4, #10
 264 0016 241A     		subs	r4, r4, r0
 265 0018 00F10C02 		add	r2, r0, #12
 266 001c 03E0     		b	.L44
 267              	.L47:
 268 001e 3B2B     		cmp	r3, #59
 269 0020 06D0     		beq	.L42
 270 0022 8B42     		cmp	r3, r1
 271 0024 0AD0     		beq	.L51
 272              	.L44:
 273 0026 A518     		adds	r5, r4, r2
 274 0028 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
 275 002c 002B     		cmp	r3, #0
 276 002e F6D1     		bne	.L47
 277              	.L42:
 278 0030 4FF0FF33 		mov	r3, #-1
 279 0034 8367     		str	r3, [r0, #120]
 280 0036 30BC     		pop	{r4, r5}
 281 0038 0020     		movs	r0, #0
 282 003a 7047     		bx	lr
 283              	.L51:
 284 003c 8567     		str	r5, [r0, #120]
 285              	.L43:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnFJRcJ.s 			page 6


 286 003e 0120     		movs	r0, #1
 287 0040 30BC     		pop	{r4, r5}
 288 0042 7047     		bx	lr
 289              		.size	_ZN11GCodeBuffer4SeenEc, .-_ZN11GCodeBuffer4SeenEc
 290              		.section	.text._ZN11GCodeBuffer16GetCommandLetterEv,"ax",%progbits
 291              		.align	2
 292              		.global	_ZN11GCodeBuffer16GetCommandLetterEv
 293              		.thumb
 294              		.thumb_func
 295              		.type	_ZN11GCodeBuffer16GetCommandLetterEv, %function
 296              	_ZN11GCodeBuffer16GetCommandLetterEv:
 297              		@ args = 0, pretend = 0, frame = 0
 298              		@ frame_needed = 0, uses_anonymous_args = 0
 299              		@ link register save eliminated.
 300 0000 10B4     		push	{r4}
 301 0002 037B     		ldrb	r3, [r0, #12]	@ zero_extendqisi2
 302 0004 0022     		movs	r2, #0
 303 0006 8267     		str	r2, [r0, #120]
 304 0008 D3B1     		cbz	r3, .L55
 305 000a 3B2B     		cmp	r3, #59
 306 000c 18D0     		beq	.L55
 307 000e 472B     		cmp	r3, #71
 308 0010 1ED0     		beq	.L62
 309 0012 4D2B     		cmp	r3, #77
 310 0014 21D0     		beq	.L64
 311 0016 542B     		cmp	r3, #84
 312 0018 24D0     		beq	.L58
 313 001a 6FF00A01 		mvn	r1, #10
 314 001e 091A     		subs	r1, r1, r0
 315 0020 00F10C02 		add	r2, r0, #12
 316 0024 07E0     		b	.L59
 317              	.L66:
 318 0026 3B2B     		cmp	r3, #59
 319 0028 0AD0     		beq	.L55
 320 002a 472B     		cmp	r3, #71
 321 002c 0FD0     		beq	.L73
 322 002e 4D2B     		cmp	r3, #77
 323 0030 12D0     		beq	.L74
 324 0032 542B     		cmp	r3, #84
 325 0034 15D0     		beq	.L75
 326              	.L59:
 327 0036 8C18     		adds	r4, r1, r2
 328 0038 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
 329 003c 002B     		cmp	r3, #0
 330 003e F2D1     		bne	.L66
 331              	.L55:
 332 0040 4FF0FF33 		mov	r3, #-1
 333 0044 8367     		str	r3, [r0, #120]
 334 0046 5DF8044B 		ldr	r4, [sp], #4
 335 004a 0020     		movs	r0, #0
 336 004c 7047     		bx	lr
 337              	.L73:
 338 004e 8467     		str	r4, [r0, #120]
 339              	.L62:
 340 0050 4720     		movs	r0, #71
 341 0052 5DF8044B 		ldr	r4, [sp], #4
 342 0056 7047     		bx	lr
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnFJRcJ.s 			page 7


 343              	.L74:
 344 0058 8467     		str	r4, [r0, #120]
 345              	.L64:
 346 005a 4D20     		movs	r0, #77
 347 005c 5DF8044B 		ldr	r4, [sp], #4
 348 0060 7047     		bx	lr
 349              	.L75:
 350 0062 8467     		str	r4, [r0, #120]
 351              	.L58:
 352 0064 5420     		movs	r0, #84
 353 0066 5DF8044B 		ldr	r4, [sp], #4
 354 006a 7047     		bx	lr
 355              		.size	_ZN11GCodeBuffer16GetCommandLetterEv, .-_ZN11GCodeBuffer16GetCommandLetterEv
 356              		.global	__aeabi_d2f
 357              		.section	.text._ZN11GCodeBuffer9GetFValueEv,"ax",%progbits
 358              		.align	2
 359              		.global	_ZN11GCodeBuffer9GetFValueEv
 360              		.thumb
 361              		.thumb_func
 362              		.type	_ZN11GCodeBuffer9GetFValueEv, %function
 363              	_ZN11GCodeBuffer9GetFValueEv:
 364              		@ args = 0, pretend = 0, frame = 0
 365              		@ frame_needed = 0, uses_anonymous_args = 0
 366 0000 10B5     		push	{r4, lr}
 367 0002 0446     		mov	r4, r0
 368 0004 806F     		ldr	r0, [r0, #120]
 369 0006 0028     		cmp	r0, #0
 370 0008 0ADB     		blt	.L79
 371 000a 2044     		add	r0, r0, r4
 372 000c 0D30     		adds	r0, r0, #13
 373 000e 0021     		movs	r1, #0
 374 0010 FFF7FEFF 		bl	strtod
 375 0014 FFF7FEFF 		bl	__aeabi_d2f
 376 0018 4FF0FF33 		mov	r3, #-1
 377 001c A367     		str	r3, [r4, #120]
 378 001e 10BD     		pop	{r4, pc}
 379              	.L79:
 380 0020 054B     		ldr	r3, .L80
 381 0022 0621     		movs	r1, #6
 382 0024 1868     		ldr	r0, [r3]
 383 0026 054A     		ldr	r2, .L80+4
 384 0028 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 385 002c 4FF0FF33 		mov	r3, #-1
 386 0030 A367     		str	r3, [r4, #120]
 387 0032 0020     		movs	r0, #0
 388 0034 10BD     		pop	{r4, pc}
 389              	.L81:
 390 0036 00BF     		.align	2
 391              	.L80:
 392 0038 00000000 		.word	reprap
 393 003c 54000000 		.word	.LC6
 394              		.size	_ZN11GCodeBuffer9GetFValueEv, .-_ZN11GCodeBuffer9GetFValueEv
 395              		.section	.text._ZN11GCodeBuffer13GetFloatArrayEPfRjb,"ax",%progbits
 396              		.align	2
 397              		.global	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 398              		.thumb
 399              		.thumb_func
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnFJRcJ.s 			page 8


 400              		.type	_ZN11GCodeBuffer13GetFloatArrayEPfRjb, %function
 401              	_ZN11GCodeBuffer13GetFloatArrayEPfRjb:
 402              		@ args = 0, pretend = 0, frame = 16
 403              		@ frame_needed = 0, uses_anonymous_args = 0
 404 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 405 0004 8046     		mov	r8, r0
 406 0006 806F     		ldr	r0, [r0, #120]
 407 0008 85B0     		sub	sp, sp, #20
 408 000a 0028     		cmp	r0, #0
 409 000c 0291     		str	r1, [sp, #8]
 410 000e 9246     		mov	r10, r2
 411 0010 0193     		str	r3, [sp, #4]
 412 0012 5EDB     		blt	.L94
 413 0014 029B     		ldr	r3, [sp, #8]
 414 0016 DAF80010 		ldr	r1, [r10]
 415 001a 4FF0000B 		mov	fp, #0
 416 001e 043B     		subs	r3, r3, #4
 417 0020 6FF00A07 		mvn	r7, #10
 418 0024 5945     		cmp	r1, fp
 419 0026 0393     		str	r3, [sp, #12]
 420 0028 9946     		mov	r9, r3
 421 002a C8EB0707 		rsb	r7, r8, r7
 422 002e 2FD9     		bls	.L95
 423              	.L85:
 424 0030 D8F87800 		ldr	r0, [r8, #120]
 425 0034 0021     		movs	r1, #0
 426 0036 4044     		add	r0, r0, r8
 427 0038 0D30     		adds	r0, r0, #13
 428 003a FFF7FEFF 		bl	strtod
 429 003e FFF7FEFF 		bl	__aeabi_d2f
 430 0042 D8F87840 		ldr	r4, [r8, #120]
 431 0046 0BF1010B 		add	fp, fp, #1
 432 004a 4444     		add	r4, r4, r8
 433 004c 49F8040F 		str	r0, [r9, #4]!	@ float
 434 0050 0C34     		adds	r4, r4, #12
 435 0052 01E0     		b	.L89
 436              	.L97:
 437 0054 3A2D     		cmp	r5, #58
 438 0056 15D0     		beq	.L96
 439              	.L89:
 440 0058 3E19     		adds	r6, r7, r4
 441 005a 14F8015F 		ldrb	r5, [r4, #1]!	@ zero_extendqisi2
 442 005e 15F0DF0F 		tst	r5, #223
 443 0062 F7D1     		bne	.L97
 444 0064 019B     		ldr	r3, [sp, #4]
 445 0066 C8F87860 		str	r6, [r8, #120]
 446 006a 13B1     		cbz	r3, .L90
 447 006c BBF1010F 		cmp	fp, #1
 448 0070 20D0     		beq	.L98
 449              	.L90:
 450 0072 CAF800B0 		str	fp, [r10]
 451              	.L91:
 452 0076 4FF0FF33 		mov	r3, #-1
 453 007a C8F87830 		str	r3, [r8, #120]
 454              	.L82:
 455 007e 05B0     		add	sp, sp, #20
 456              		@ sp needed
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnFJRcJ.s 			page 9


 457 0080 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 458              	.L96:
 459 0084 C8F87860 		str	r6, [r8, #120]
 460 0088 DAF80010 		ldr	r1, [r10]
 461 008c 5945     		cmp	r1, fp
 462 008e CFD8     		bhi	.L85
 463              	.L95:
 464 0090 174B     		ldr	r3, .L99
 465 0092 0621     		movs	r1, #6
 466 0094 1868     		ldr	r0, [r3]
 467 0096 174A     		ldr	r2, .L99+4
 468 0098 08F10C03 		add	r3, r8, #12
 469 009c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 470 00a0 4FF0FF32 		mov	r2, #-1
 471 00a4 0023     		movs	r3, #0
 472 00a6 C8F87820 		str	r2, [r8, #120]
 473 00aa CAF80030 		str	r3, [r10]
 474 00ae 05B0     		add	sp, sp, #20
 475              		@ sp needed
 476 00b0 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 477              	.L98:
 478 00b4 DAF80020 		ldr	r2, [r10]
 479 00b8 012A     		cmp	r2, #1
 480 00ba DAD9     		bls	.L90
 481 00bc 039B     		ldr	r3, [sp, #12]
 482 00be 03EB820B 		add	fp, r3, r2, lsl #2
 483 00c2 029B     		ldr	r3, [sp, #8]
 484              	.L92:
 485 00c4 0299     		ldr	r1, [sp, #8]
 486 00c6 0A68     		ldr	r2, [r1]	@ float
 487 00c8 43F8042F 		str	r2, [r3, #4]!	@ float
 488 00cc 5B45     		cmp	r3, fp
 489 00ce F9D1     		bne	.L92
 490 00d0 D1E7     		b	.L91
 491              	.L94:
 492 00d2 074B     		ldr	r3, .L99
 493 00d4 084A     		ldr	r2, .L99+8
 494 00d6 1868     		ldr	r0, [r3]
 495 00d8 0621     		movs	r1, #6
 496 00da FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 497 00de 4FF0FF32 		mov	r2, #-1
 498 00e2 0023     		movs	r3, #0
 499 00e4 C8F87820 		str	r2, [r8, #120]
 500 00e8 CAF80030 		str	r3, [r10]
 501 00ec C7E7     		b	.L82
 502              	.L100:
 503 00ee 00BF     		.align	2
 504              	.L99:
 505 00f0 00000000 		.word	reprap
 506 00f4 DC000000 		.word	.LC8
 507 00f8 94000000 		.word	.LC7
 508              		.size	_ZN11GCodeBuffer13GetFloatArrayEPfRjb, .-_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 509              		.section	.text._ZN11GCodeBuffer12GetLongArrayEPlRj,"ax",%progbits
 510              		.align	2
 511              		.global	_ZN11GCodeBuffer12GetLongArrayEPlRj
 512              		.thumb
 513              		.thumb_func
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnFJRcJ.s 			page 10


 514              		.type	_ZN11GCodeBuffer12GetLongArrayEPlRj, %function
 515              	_ZN11GCodeBuffer12GetLongArrayEPlRj:
 516              		@ args = 0, pretend = 0, frame = 0
 517              		@ frame_needed = 0, uses_anonymous_args = 0
 518 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 519 0004 836F     		ldr	r3, [r0, #120]
 520 0006 0646     		mov	r6, r0
 521 0008 002B     		cmp	r3, #0
 522 000a 9146     		mov	r9, r2
 523 000c 3CDB     		blt	.L109
 524 000e D9F80030 		ldr	r3, [r9]
 525 0012 0027     		movs	r7, #0
 526 0014 6FF00A05 		mvn	r5, #10
 527 0018 BB42     		cmp	r3, r7
 528 001a A1F10408 		sub	r8, r1, #4
 529 001e C0EB0505 		rsb	r5, r0, r5
 530 0022 21D9     		bls	.L110
 531              	.L104:
 532 0024 B36F     		ldr	r3, [r6, #120]
 533 0026 0021     		movs	r1, #0
 534 0028 F018     		adds	r0, r6, r3
 535 002a 0D30     		adds	r0, r0, #13
 536 002c 0A46     		mov	r2, r1
 537 002e FFF7FEFF 		bl	strtol
 538 0032 B36F     		ldr	r3, [r6, #120]
 539 0034 0137     		adds	r7, r7, #1
 540 0036 3344     		add	r3, r3, r6
 541 0038 48F8040F 		str	r0, [r8, #4]!
 542 003c 0C33     		adds	r3, r3, #12
 543 003e 01E0     		b	.L108
 544              	.L112:
 545 0040 3A29     		cmp	r1, #58
 546 0042 0CD0     		beq	.L111
 547              	.L108:
 548 0044 EC18     		adds	r4, r5, r3
 549 0046 13F8011F 		ldrb	r1, [r3, #1]!	@ zero_extendqisi2
 550 004a 11F0DF0F 		tst	r1, #223
 551 004e F7D1     		bne	.L112
 552 0050 4FF0FF33 		mov	r3, #-1
 553 0054 C9F80070 		str	r7, [r9]
 554 0058 B367     		str	r3, [r6, #120]
 555 005a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 556              	.L111:
 557 005e B467     		str	r4, [r6, #120]
 558 0060 D9F80030 		ldr	r3, [r9]
 559 0064 BB42     		cmp	r3, r7
 560 0066 DDD8     		bhi	.L104
 561              	.L110:
 562 0068 0D4B     		ldr	r3, .L113
 563 006a 0E4A     		ldr	r2, .L113+4
 564 006c 1868     		ldr	r0, [r3]
 565 006e 0621     		movs	r1, #6
 566 0070 06F10C03 		add	r3, r6, #12
 567 0074 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 568 0078 4FF0FF32 		mov	r2, #-1
 569 007c 0023     		movs	r3, #0
 570 007e B267     		str	r2, [r6, #120]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnFJRcJ.s 			page 11


 571 0080 C9F80030 		str	r3, [r9]
 572 0084 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 573              	.L109:
 574 0088 054B     		ldr	r3, .L113
 575 008a 0621     		movs	r1, #6
 576 008c 1868     		ldr	r0, [r3]
 577 008e 064A     		ldr	r2, .L113+8
 578 0090 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 579 0094 4FF0FF33 		mov	r3, #-1
 580 0098 B367     		str	r3, [r6, #120]
 581 009a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 582              	.L114:
 583 009e 00BF     		.align	2
 584              	.L113:
 585 00a0 00000000 		.word	reprap
 586 00a4 6C010000 		.word	.LC10
 587 00a8 28010000 		.word	.LC9
 588              		.size	_ZN11GCodeBuffer12GetLongArrayEPlRj, .-_ZN11GCodeBuffer12GetLongArrayEPlRj
 589              		.section	.text._ZN11GCodeBuffer9GetStringEv,"ax",%progbits
 590              		.align	2
 591              		.global	_ZN11GCodeBuffer9GetStringEv
 592              		.thumb
 593              		.thumb_func
 594              		.type	_ZN11GCodeBuffer9GetStringEv, %function
 595              	_ZN11GCodeBuffer9GetStringEv:
 596              		@ args = 0, pretend = 0, frame = 0
 597              		@ frame_needed = 0, uses_anonymous_args = 0
 598 0000 10B5     		push	{r4, lr}
 599 0002 0446     		mov	r4, r0
 600 0004 806F     		ldr	r0, [r0, #120]
 601 0006 0028     		cmp	r0, #0
 602 0008 05DB     		blt	.L118
 603 000a 2044     		add	r0, r0, r4
 604 000c 4FF0FF33 		mov	r3, #-1
 605 0010 0D30     		adds	r0, r0, #13
 606 0012 A367     		str	r3, [r4, #120]
 607 0014 10BD     		pop	{r4, pc}
 608              	.L118:
 609 0016 054B     		ldr	r3, .L119
 610 0018 0621     		movs	r1, #6
 611 001a 1868     		ldr	r0, [r3]
 612 001c 044A     		ldr	r2, .L119+4
 613 001e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 614 0022 4FF0FF33 		mov	r3, #-1
 615 0026 A367     		str	r3, [r4, #120]
 616 0028 0248     		ldr	r0, .L119+8
 617 002a 10BD     		pop	{r4, pc}
 618              	.L120:
 619              		.align	2
 620              	.L119:
 621 002c 00000000 		.word	reprap
 622 0030 B8010000 		.word	.LC12
 623 0034 B4010000 		.word	.LC11
 624              		.size	_ZN11GCodeBuffer9GetStringEv, .-_ZN11GCodeBuffer9GetStringEv
 625              		.section	.text._ZN11GCodeBuffer22GetUnprecedentedStringEb,"ax",%progbits
 626              		.align	2
 627              		.global	_ZN11GCodeBuffer22GetUnprecedentedStringEb
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnFJRcJ.s 			page 12


 628              		.thumb
 629              		.thumb_func
 630              		.type	_ZN11GCodeBuffer22GetUnprecedentedStringEb, %function
 631              	_ZN11GCodeBuffer22GetUnprecedentedStringEb:
 632              		@ args = 0, pretend = 0, frame = 0
 633              		@ frame_needed = 0, uses_anonymous_args = 0
 634 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 635 0002 037B     		ldrb	r3, [r0, #12]	@ zero_extendqisi2
 636 0004 0022     		movs	r2, #0
 637 0006 0646     		mov	r6, r0
 638 0008 0F46     		mov	r7, r1
 639 000a 8267     		str	r2, [r0, #120]
 640 000c 73B1     		cbz	r3, .L122
 641 000e 202B     		cmp	r3, #32
 642 0010 21D0     		beq	.L129
 643 0012 6FF00A04 		mvn	r4, #10
 644 0016 241A     		subs	r4, r4, r0
 645 0018 00F10C03 		add	r3, r0, #12
 646 001c 01E0     		b	.L126
 647              	.L137:
 648 001e 202A     		cmp	r2, #32
 649 0020 0AD0     		beq	.L136
 650              	.L126:
 651 0022 E518     		adds	r5, r4, r3
 652 0024 13F8012F 		ldrb	r2, [r3, #1]!	@ zero_extendqisi2
 653 0028 002A     		cmp	r2, #0
 654 002a F8D1     		bne	.L137
 655              	.L122:
 656 002c 4FF0FF33 		mov	r3, #-1
 657 0030 B367     		str	r3, [r6, #120]
 658 0032 47B1     		cbz	r7, .L138
 659 0034 0020     		movs	r0, #0
 660 0036 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 661              	.L136:
 662 0038 681C     		adds	r0, r5, #1
 663              	.L123:
 664 003a 3044     		add	r0, r0, r6
 665 003c 4FF0FF33 		mov	r3, #-1
 666 0040 0C30     		adds	r0, r0, #12
 667 0042 B367     		str	r3, [r6, #120]
 668 0044 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 669              	.L138:
 670 0046 054B     		ldr	r3, .L139
 671 0048 0621     		movs	r1, #6
 672 004a 1868     		ldr	r0, [r3]
 673 004c 044A     		ldr	r2, .L139+4
 674 004e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 675 0052 3846     		mov	r0, r7
 676 0054 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 677              	.L129:
 678 0056 0120     		movs	r0, #1
 679 0058 EFE7     		b	.L123
 680              	.L140:
 681 005a 00BF     		.align	2
 682              	.L139:
 683 005c 00000000 		.word	reprap
 684 0060 F8010000 		.word	.LC13
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnFJRcJ.s 			page 13


 685              		.size	_ZN11GCodeBuffer22GetUnprecedentedStringEb, .-_ZN11GCodeBuffer22GetUnprecedentedStringEb
 686              		.section	.text._ZN11GCodeBuffer9GetIValueEv,"ax",%progbits
 687              		.align	2
 688              		.global	_ZN11GCodeBuffer9GetIValueEv
 689              		.thumb
 690              		.thumb_func
 691              		.type	_ZN11GCodeBuffer9GetIValueEv, %function
 692              	_ZN11GCodeBuffer9GetIValueEv:
 693              		@ args = 0, pretend = 0, frame = 0
 694              		@ frame_needed = 0, uses_anonymous_args = 0
 695 0000 10B5     		push	{r4, lr}
 696 0002 0446     		mov	r4, r0
 697 0004 806F     		ldr	r0, [r0, #120]
 698 0006 0028     		cmp	r0, #0
 699 0008 09DB     		blt	.L144
 700 000a 0021     		movs	r1, #0
 701 000c 2044     		add	r0, r0, r4
 702 000e 0A46     		mov	r2, r1
 703 0010 0D30     		adds	r0, r0, #13
 704 0012 FFF7FEFF 		bl	strtol
 705 0016 4FF0FF33 		mov	r3, #-1
 706 001a A367     		str	r3, [r4, #120]
 707 001c 10BD     		pop	{r4, pc}
 708              	.L144:
 709 001e 054B     		ldr	r3, .L145
 710 0020 0621     		movs	r1, #6
 711 0022 1868     		ldr	r0, [r3]
 712 0024 044A     		ldr	r2, .L145+4
 713 0026 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 714 002a 4FF0FF33 		mov	r3, #-1
 715 002e A367     		str	r3, [r4, #120]
 716 0030 0020     		movs	r0, #0
 717 0032 10BD     		pop	{r4, pc}
 718              	.L146:
 719              		.align	2
 720              	.L145:
 721 0034 00000000 		.word	reprap
 722 0038 28020000 		.word	.LC14
 723              		.size	_ZN11GCodeBuffer9GetIValueEv, .-_ZN11GCodeBuffer9GetIValueEv
 724              		.section	.text._ZN11GCodeBuffer3PutEc,"ax",%progbits
 725              		.align	2
 726              		.global	_ZN11GCodeBuffer3PutEc
 727              		.thumb
 728              		.thumb_func
 729              		.type	_ZN11GCodeBuffer3PutEc, %function
 730              	_ZN11GCodeBuffer3PutEc:
 731              		@ args = 0, pretend = 0, frame = 0
 732              		@ frame_needed = 0, uses_anonymous_args = 0
 733 0000 70B5     		push	{r4, r5, r6, lr}
 734 0002 0D29     		cmp	r1, #13
 735 0004 82B0     		sub	sp, sp, #8
 736 0006 0446     		mov	r4, r0
 737 0008 0FD0     		beq	.L229
 738 000a 3B29     		cmp	r1, #59
 739 000c 79D0     		beq	.L230
 740 000e 0A29     		cmp	r1, #10
 741 0010 0ED0     		beq	.L151
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnFJRcJ.s 			page 14


 742 0012 69B1     		cbz	r1, .L151
 743 0014 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 744 0018 002B     		cmp	r3, #0
 745 001a 62D1     		bne	.L231
 746              	.L188:
 747 001c 626F     		ldr	r2, [r4, #116]
 748 001e 531C     		adds	r3, r2, #1
 749 0020 632B     		cmp	r3, #99
 750 0022 2244     		add	r2, r2, r4
 751 0024 6367     		str	r3, [r4, #116]
 752 0026 1173     		strb	r1, [r2, #12]
 753 0028 60DC     		bgt	.L232
 754              	.L229:
 755 002a 0020     		movs	r0, #0
 756              	.L226:
 757 002c 02B0     		add	sp, sp, #8
 758              		@ sp needed
 759 002e 70BD     		pop	{r4, r5, r6, pc}
 760              	.L151:
 761 0030 636F     		ldr	r3, [r4, #116]
 762 0032 0022     		movs	r2, #0
 763 0034 2344     		add	r3, r3, r4
 764 0036 7449     		ldr	r1, .L238
 765 0038 1A73     		strb	r2, [r3, #12]
 766 003a B1F84030 		ldrh	r3, [r1, #64]
 767 003e 13F0080F 		tst	r3, #8
 768 0042 237B     		ldrb	r3, [r4, #12]	@ zero_extendqisi2
 769 0044 0FD0     		beq	.L154
 770 0046 23B3     		cbz	r3, .L155
 771 0048 D4F88400 		ldr	r0, [r4, #132]
 772 004c 08B1     		cbz	r0, .L233
 773 004e A267     		str	r2, [r4, #120]
 774 0050 0CE0     		b	.L158
 775              	.L233:
 776 0052 04F10C06 		add	r6, r4, #12
 777 0056 0868     		ldr	r0, [r1]
 778 0058 236F     		ldr	r3, [r4, #112]
 779 005a 0321     		movs	r1, #3
 780 005c 0096     		str	r6, [sp]
 781 005e 6B4A     		ldr	r2, .L238+4
 782 0060 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 783 0064 237B     		ldrb	r3, [r4, #12]	@ zero_extendqisi2
 784              	.L154:
 785 0066 0022     		movs	r2, #0
 786 0068 A267     		str	r2, [r4, #120]
 787 006a 93B1     		cbz	r3, .L155
 788              	.L158:
 789 006c 3B2B     		cmp	r3, #59
 790 006e 10D0     		beq	.L155
 791 0070 2A2B     		cmp	r3, #42
 792 0072 4BD0     		beq	.L161
 793 0074 6FF00A01 		mvn	r1, #10
 794 0078 091B     		subs	r1, r1, r4
 795 007a 04F10C02 		add	r2, r4, #12
 796 007e 03E0     		b	.L162
 797              	.L165:
 798 0080 3B2B     		cmp	r3, #59
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnFJRcJ.s 			page 15


 799 0082 06D0     		beq	.L155
 800 0084 2A2B     		cmp	r3, #42
 801 0086 40D0     		beq	.L234
 802              	.L162:
 803 0088 8818     		adds	r0, r1, r2
 804 008a 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
 805 008e 002B     		cmp	r3, #0
 806 0090 F6D1     		bne	.L165
 807              	.L155:
 808 0092 94F87D30 		ldrb	r3, [r4, #125]	@ zero_extendqisi2
 809 0096 4FF0FF32 		mov	r2, #-1
 810 009a A267     		str	r2, [r4, #120]
 811 009c 13B1     		cbz	r3, .L160
 812 009e A368     		ldr	r3, [r4, #8]
 813 00a0 1B68     		ldr	r3, [r3]
 814 00a2 1BB1     		cbz	r3, .L187
 815              	.L160:
 816 00a4 2046     		mov	r0, r4
 817 00a6 FFF7FEFF 		bl	_ZNK11GCodeBuffer7IsEmptyEv
 818 00aa 68B1     		cbz	r0, .L186
 819              	.L187:
 820 00ac 0020     		movs	r0, #0
 821 00ae 2073     		strb	r0, [r4, #12]
 822 00b0 6067     		str	r0, [r4, #116]
 823 00b2 2071     		strb	r0, [r4, #4]
 824 00b4 84F87C00 		strb	r0, [r4, #124]
 825 00b8 C4F88000 		str	r0, [r4, #128]
 826 00bc 02B0     		add	sp, sp, #8
 827              		@ sp needed
 828 00be 70BD     		pop	{r4, r5, r6, pc}
 829              	.L196:
 830 00c0 1A46     		mov	r2, r3
 831              	.L184:
 832 00c2 2244     		add	r2, r2, r4
 833 00c4 0023     		movs	r3, #0
 834 00c6 1373     		strb	r3, [r2, #12]
 835              	.L186:
 836 00c8 0023     		movs	r3, #0
 837 00ca 0120     		movs	r0, #1
 838 00cc 4FF0FF32 		mov	r2, #-1
 839 00d0 6367     		str	r3, [r4, #116]
 840 00d2 2371     		strb	r3, [r4, #4]
 841 00d4 84F87C30 		strb	r3, [r4, #124]
 842 00d8 A267     		str	r2, [r4, #120]
 843 00da C4F88000 		str	r0, [r4, #128]
 844 00de 02B0     		add	sp, sp, #8
 845              		@ sp needed
 846 00e0 70BD     		pop	{r4, r5, r6, pc}
 847              	.L231:
 848 00e2 D0F88430 		ldr	r3, [r0, #132]
 849 00e6 002B     		cmp	r3, #0
 850 00e8 98D1     		bne	.L188
 851 00ea 9EE7     		b	.L229
 852              	.L232:
 853 00ec 464B     		ldr	r3, .L238
 854 00ee 0621     		movs	r1, #6
 855 00f0 1868     		ldr	r0, [r3]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnFJRcJ.s 			page 16


 856 00f2 474A     		ldr	r2, .L238+8
 857 00f4 236F     		ldr	r3, [r4, #112]
 858 00f6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 859 00fa 0020     		movs	r0, #0
 860 00fc 6067     		str	r0, [r4, #116]
 861 00fe 2073     		strb	r0, [r4, #12]
 862 0100 94E7     		b	.L226
 863              	.L230:
 864 0102 0123     		movs	r3, #1
 865 0104 80F87C30 		strb	r3, [r0, #124]
 866 0108 8FE7     		b	.L229
 867              	.L234:
 868 010a A067     		str	r0, [r4, #120]
 869              	.L161:
 870 010c 2046     		mov	r0, r4
 871 010e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 872 0112 257B     		ldrb	r5, [r4, #12]	@ zero_extendqisi2
 873 0114 2A2D     		cmp	r5, #42
 874 0116 6FD0     		beq	.L193
 875 0118 002D     		cmp	r5, #0
 876 011a 6FD0     		beq	.L194
 877 011c 04F10C01 		add	r1, r4, #12
 878 0120 2B46     		mov	r3, r5
 879 0122 0022     		movs	r2, #0
 880 0124 00E0     		b	.L190
 881              	.L235:
 882 0126 23B1     		cbz	r3, .L167
 883              	.L190:
 884 0128 5A40     		eors	r2, r2, r3
 885 012a 11F8013F 		ldrb	r3, [r1, #1]!	@ zero_extendqisi2
 886 012e 2A2B     		cmp	r3, #42
 887 0130 F9D1     		bne	.L235
 888              	.L167:
 889 0132 9042     		cmp	r0, r2
 890 0134 4FF00003 		mov	r3, #0
 891 0138 21D0     		beq	.L169
 892 013a A367     		str	r3, [r4, #120]
 893 013c 9DB1     		cbz	r5, .L171
 894 013e 3B2D     		cmp	r5, #59
 895 0140 11D0     		beq	.L171
 896 0142 4E2D     		cmp	r5, #78
 897 0144 04F10C06 		add	r6, r4, #12
 898 0148 40D0     		beq	.L173
 899 014a 6FF00A01 		mvn	r1, #10
 900 014e 3246     		mov	r2, r6
 901 0150 091B     		subs	r1, r1, r4
 902 0152 03E0     		b	.L174
 903              	.L177:
 904 0154 3B2B     		cmp	r3, #59
 905 0156 06D0     		beq	.L171
 906 0158 4E2B     		cmp	r3, #78
 907 015a 36D0     		beq	.L236
 908              	.L174:
 909 015c 8D18     		adds	r5, r1, r2
 910 015e 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
 911 0162 002B     		cmp	r3, #0
 912 0164 F6D1     		bne	.L177
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnFJRcJ.s 			page 17


 913              	.L171:
 914 0166 0023     		movs	r3, #0
 915 0168 4FF0FF32 		mov	r2, #-1
 916 016c 6367     		str	r3, [r4, #116]
 917 016e 2371     		strb	r3, [r4, #4]
 918 0170 84F87C30 		strb	r3, [r4, #124]
 919 0174 C4F88030 		str	r3, [r4, #128]
 920 0178 A267     		str	r2, [r4, #120]
 921 017a 0120     		movs	r0, #1
 922 017c 56E7     		b	.L226
 923              	.L169:
 924 017e 202D     		cmp	r5, #32
 925 0180 6367     		str	r3, [r4, #116]
 926 0182 3DD0     		beq	.L192
 927 0184 65B3     		cbz	r5, .L179
 928 0186 6FF00A01 		mvn	r1, #10
 929 018a 091B     		subs	r1, r1, r4
 930 018c 04F10C03 		add	r3, r4, #12
 931 0190 00E0     		b	.L182
 932              	.L180:
 933 0192 2AB3     		cbz	r2, .L179
 934              	.L182:
 935 0194 C818     		adds	r0, r1, r3
 936 0196 13F8012F 		ldrb	r2, [r3, #1]!	@ zero_extendqisi2
 937 019a 202A     		cmp	r2, #32
 938 019c F9D1     		bne	.L180
 939 019e 0130     		adds	r0, r0, #1
 940              	.L178:
 941 01a0 2318     		adds	r3, r4, r0
 942 01a2 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 943 01a4 6067     		str	r0, [r4, #116]
 944 01a6 2A2B     		cmp	r3, #42
 945 01a8 2CD0     		beq	.L195
 946 01aa 002B     		cmp	r3, #0
 947 01ac 88D0     		beq	.L196
 948 01ae 2118     		adds	r1, r4, r0
 949 01b0 0C31     		adds	r1, r1, #12
 950 01b2 0022     		movs	r2, #0
 951 01b4 01E0     		b	.L191
 952              	.L237:
 953 01b6 002B     		cmp	r3, #0
 954 01b8 83D0     		beq	.L184
 955              	.L191:
 956 01ba A018     		adds	r0, r4, r2
 957 01bc 0373     		strb	r3, [r0, #12]
 958 01be 11F8013F 		ldrb	r3, [r1, #1]!	@ zero_extendqisi2
 959 01c2 0132     		adds	r2, r2, #1
 960 01c4 2A2B     		cmp	r3, #42
 961 01c6 F6D1     		bne	.L237
 962 01c8 7BE7     		b	.L184
 963              	.L236:
 964 01ca A567     		str	r5, [r4, #120]
 965              	.L173:
 966 01cc 2046     		mov	r0, r4
 967 01ce FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 968 01d2 6421     		movs	r1, #100
 969 01d4 0346     		mov	r3, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnFJRcJ.s 			page 18


 970 01d6 0F4A     		ldr	r2, .L238+12
 971 01d8 3046     		mov	r0, r6
 972 01da FFF7FEFF 		bl	snprintf
 973 01de C2E7     		b	.L171
 974              	.L179:
 975 01e0 0020     		movs	r0, #0
 976 01e2 4FF0FF33 		mov	r3, #-1
 977 01e6 2073     		strb	r0, [r4, #12]
 978 01e8 6067     		str	r0, [r4, #116]
 979 01ea 2071     		strb	r0, [r4, #4]
 980 01ec 84F87C00 		strb	r0, [r4, #124]
 981 01f0 C4F88000 		str	r0, [r4, #128]
 982 01f4 A367     		str	r3, [r4, #120]
 983 01f6 19E7     		b	.L226
 984              	.L193:
 985 01f8 0022     		movs	r2, #0
 986 01fa 9AE7     		b	.L167
 987              	.L194:
 988 01fc 2A46     		mov	r2, r5
 989 01fe 98E7     		b	.L167
 990              	.L192:
 991 0200 0120     		movs	r0, #1
 992 0202 CDE7     		b	.L178
 993              	.L195:
 994 0204 0022     		movs	r2, #0
 995 0206 5CE7     		b	.L184
 996              	.L239:
 997              		.align	2
 998              	.L238:
 999 0208 00000000 		.word	reprap
 1000 020c 94020000 		.word	.LC16
 1001 0210 68020000 		.word	.LC15
 1002 0214 9C020000 		.word	.LC17
 1003              		.size	_ZN11GCodeBuffer3PutEc, .-_ZN11GCodeBuffer3PutEc
 1004              		.section	.text._ZN11GCodeBuffer3PutEPKcj,"ax",%progbits
 1005              		.align	2
 1006              		.global	_ZN11GCodeBuffer3PutEPKcj
 1007              		.thumb
 1008              		.thumb_func
 1009              		.type	_ZN11GCodeBuffer3PutEPKcj, %function
 1010              	_ZN11GCodeBuffer3PutEPKcj:
 1011              		@ args = 0, pretend = 0, frame = 0
 1012              		@ frame_needed = 0, uses_anonymous_args = 0
 1013 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1014 0002 0646     		mov	r6, r0
 1015 0004 0D46     		mov	r5, r1
 1016 0006 1746     		mov	r7, r2
 1017 0008 0024     		movs	r4, #0
 1018              	.L242:
 1019 000a 295D     		ldrb	r1, [r5, r4]	@ zero_extendqisi2
 1020 000c 3046     		mov	r0, r6
 1021 000e 0134     		adds	r4, r4, #1
 1022 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEc
 1023 0014 10B9     		cbnz	r0, .L243
 1024 0016 A742     		cmp	r7, r4
 1025 0018 F7D2     		bcs	.L242
 1026 001a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnFJRcJ.s 			page 19


 1027              	.L243:
 1028 001c 0120     		movs	r0, #1
 1029 001e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1030              		.size	_ZN11GCodeBuffer3PutEPKcj, .-_ZN11GCodeBuffer3PutEPKcj
 1031              		.section	.text._ZN11GCodeBuffer12TryGetFValueEcRfRb,"ax",%progbits
 1032              		.align	2
 1033              		.global	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1034              		.thumb
 1035              		.thumb_func
 1036              		.type	_ZN11GCodeBuffer12TryGetFValueEcRfRb, %function
 1037              	_ZN11GCodeBuffer12TryGetFValueEcRfRb:
 1038              		@ args = 0, pretend = 0, frame = 0
 1039              		@ frame_needed = 0, uses_anonymous_args = 0
 1040 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 1041 0004 047B     		ldrb	r4, [r0, #12]	@ zero_extendqisi2
 1042 0006 0025     		movs	r5, #0
 1043 0008 9046     		mov	r8, r2
 1044 000a 9946     		mov	r9, r3
 1045 000c 8567     		str	r5, [r0, #120]
 1046 000e 94B1     		cbz	r4, .L248
 1047 0010 3B2C     		cmp	r4, #59
 1048 0012 10D0     		beq	.L248
 1049 0014 A142     		cmp	r1, r4
 1050 0016 14D0     		beq	.L249
 1051 0018 6FF00A06 		mvn	r6, #10
 1052 001c 361A     		subs	r6, r6, r0
 1053 001e 00F10C05 		add	r5, r0, #12
 1054 0022 03E0     		b	.L250
 1055              	.L253:
 1056 0024 3B2C     		cmp	r4, #59
 1057 0026 06D0     		beq	.L248
 1058 0028 A142     		cmp	r1, r4
 1059 002a 09D0     		beq	.L257
 1060              	.L250:
 1061 002c 7719     		adds	r7, r6, r5
 1062 002e 15F8014F 		ldrb	r4, [r5, #1]!	@ zero_extendqisi2
 1063 0032 002C     		cmp	r4, #0
 1064 0034 F6D1     		bne	.L253
 1065              	.L248:
 1066 0036 4FF0FF33 		mov	r3, #-1
 1067 003a 8367     		str	r3, [r0, #120]
 1068 003c BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1069              	.L257:
 1070 0040 8767     		str	r7, [r0, #120]
 1071              	.L249:
 1072 0042 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1073 0046 0123     		movs	r3, #1
 1074 0048 C8F80000 		str	r0, [r8]	@ float
 1075 004c 89F80030 		strb	r3, [r9]
 1076 0050 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1077              		.size	_ZN11GCodeBuffer12TryGetFValueEcRfRb, .-_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1078              		.section	.text._ZN11GCodeBuffer12TryGetIValueEcRlRb,"ax",%progbits
 1079              		.align	2
 1080              		.global	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 1081              		.thumb
 1082              		.thumb_func
 1083              		.type	_ZN11GCodeBuffer12TryGetIValueEcRlRb, %function
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnFJRcJ.s 			page 20


 1084              	_ZN11GCodeBuffer12TryGetIValueEcRlRb:
 1085              		@ args = 0, pretend = 0, frame = 0
 1086              		@ frame_needed = 0, uses_anonymous_args = 0
 1087 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 1088 0004 047B     		ldrb	r4, [r0, #12]	@ zero_extendqisi2
 1089 0006 0025     		movs	r5, #0
 1090 0008 9046     		mov	r8, r2
 1091 000a 9946     		mov	r9, r3
 1092 000c 8567     		str	r5, [r0, #120]
 1093 000e 94B1     		cbz	r4, .L261
 1094 0010 3B2C     		cmp	r4, #59
 1095 0012 10D0     		beq	.L261
 1096 0014 A142     		cmp	r1, r4
 1097 0016 14D0     		beq	.L262
 1098 0018 6FF00A06 		mvn	r6, #10
 1099 001c 361A     		subs	r6, r6, r0
 1100 001e 00F10C05 		add	r5, r0, #12
 1101 0022 03E0     		b	.L263
 1102              	.L266:
 1103 0024 3B2C     		cmp	r4, #59
 1104 0026 06D0     		beq	.L261
 1105 0028 A142     		cmp	r1, r4
 1106 002a 09D0     		beq	.L270
 1107              	.L263:
 1108 002c 7719     		adds	r7, r6, r5
 1109 002e 15F8014F 		ldrb	r4, [r5, #1]!	@ zero_extendqisi2
 1110 0032 002C     		cmp	r4, #0
 1111 0034 F6D1     		bne	.L266
 1112              	.L261:
 1113 0036 4FF0FF33 		mov	r3, #-1
 1114 003a 8367     		str	r3, [r0, #120]
 1115 003c BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1116              	.L270:
 1117 0040 8767     		str	r7, [r0, #120]
 1118              	.L262:
 1119 0042 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1120 0046 0123     		movs	r3, #1
 1121 0048 C8F80000 		str	r0, [r8]
 1122 004c 89F80030 		strb	r3, [r9]
 1123 0050 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1124              		.size	_ZN11GCodeBuffer12TryGetIValueEcRlRb, .-_ZN11GCodeBuffer12TryGetIValueEcRlRb
 1125              		.section	.text._ZNK11GCodeBuffer20OriginalMachineStateEv,"ax",%progbits
 1126              		.align	2
 1127              		.global	_ZNK11GCodeBuffer20OriginalMachineStateEv
 1128              		.thumb
 1129              		.thumb_func
 1130              		.type	_ZNK11GCodeBuffer20OriginalMachineStateEv, %function
 1131              	_ZNK11GCodeBuffer20OriginalMachineStateEv:
 1132              		@ args = 0, pretend = 0, frame = 0
 1133              		@ frame_needed = 0, uses_anonymous_args = 0
 1134              		@ link register save eliminated.
 1135 0000 8068     		ldr	r0, [r0, #8]
 1136 0002 00E0     		b	.L273
 1137              	.L274:
 1138 0004 1846     		mov	r0, r3
 1139              	.L273:
 1140 0006 0368     		ldr	r3, [r0]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnFJRcJ.s 			page 21


 1141 0008 002B     		cmp	r3, #0
 1142 000a FBD1     		bne	.L274
 1143 000c 7047     		bx	lr
 1144              		.size	_ZNK11GCodeBuffer20OriginalMachineStateEv, .-_ZNK11GCodeBuffer20OriginalMachineStateEv
 1145 000e 00BF     		.section	.text._ZN11GCodeBuffer9PushStateEv,"ax",%progbits
 1146              		.align	2
 1147              		.global	_ZN11GCodeBuffer9PushStateEv
 1148              		.thumb
 1149              		.thumb_func
 1150              		.type	_ZN11GCodeBuffer9PushStateEv, %function
 1151              	_ZN11GCodeBuffer9PushStateEv:
 1152              		@ args = 0, pretend = 0, frame = 0
 1153              		@ frame_needed = 0, uses_anonymous_args = 0
 1154 0000 8368     		ldr	r3, [r0, #8]
 1155 0002 70B5     		push	{r4, r5, r6, lr}
 1156 0004 0546     		mov	r5, r0
 1157 0006 43B1     		cbz	r3, .L276
 1158 0008 0022     		movs	r2, #0
 1159              	.L278:
 1160 000a 1B68     		ldr	r3, [r3]
 1161 000c 0132     		adds	r2, r2, #1
 1162 000e 002B     		cmp	r3, #0
 1163 0010 FBD1     		bne	.L278
 1164 0012 052A     		cmp	r2, #5
 1165 0014 01D9     		bls	.L276
 1166 0016 1846     		mov	r0, r3
 1167 0018 70BD     		pop	{r4, r5, r6, pc}
 1168              	.L276:
 1169 001a FFF7FEFF 		bl	_ZN17GCodeMachineState8AllocateEv
 1170 001e AE68     		ldr	r6, [r5, #8]
 1171 0020 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 1172 0022 717C     		ldrb	r1, [r6, #17]	@ zero_extendqisi2
 1173 0024 7268     		ldr	r2, [r6, #4]	@ float
 1174 0026 61F30003 		bfi	r3, r1, #0, #1
 1175 002a 4374     		strb	r3, [r0, #17]
 1176 002c 717C     		ldrb	r1, [r6, #17]	@ zero_extendqisi2
 1177 002e DBB2     		uxtb	r3, r3
 1178 0030 C1F34001 		ubfx	r1, r1, #1, #1
 1179 0034 61F34103 		bfi	r3, r1, #1, #1
 1180 0038 4374     		strb	r3, [r0, #17]
 1181 003a 717C     		ldrb	r1, [r6, #17]	@ zero_extendqisi2
 1182 003c 0446     		mov	r4, r0
 1183 003e DBB2     		uxtb	r3, r3
 1184 0040 8068     		ldr	r0, [r0, #8]
 1185 0042 C1F38001 		ubfx	r1, r1, #2, #1
 1186 0046 61F38203 		bfi	r3, r1, #2, #1
 1187 004a 2660     		str	r6, [r4]
 1188 004c 6260     		str	r2, [r4, #4]	@ float
 1189 004e 6374     		strb	r3, [r4, #17]
 1190 0050 18B1     		cbz	r0, .L280
 1191 0052 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1192 0056 0023     		movs	r3, #0
 1193 0058 A360     		str	r3, [r4, #8]
 1194              	.L280:
 1195 005a B068     		ldr	r0, [r6, #8]
 1196 005c A060     		str	r0, [r4, #8]
 1197 005e 08B1     		cbz	r0, .L281
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnFJRcJ.s 			page 22


 1198 0060 FFF7FEFF 		bl	_ZN9FileStore9DuplicateEv
 1199              	.L281:
 1200 0064 AB68     		ldr	r3, [r5, #8]
 1201 0066 0120     		movs	r0, #1
 1202 0068 DB68     		ldr	r3, [r3, #12]
 1203 006a E360     		str	r3, [r4, #12]
 1204 006c AC60     		str	r4, [r5, #8]
 1205 006e 70BD     		pop	{r4, r5, r6, pc}
 1206              		.size	_ZN11GCodeBuffer9PushStateEv, .-_ZN11GCodeBuffer9PushStateEv
 1207              		.section	.text._ZN11GCodeBuffer8PopStateEv,"ax",%progbits
 1208              		.align	2
 1209              		.global	_ZN11GCodeBuffer8PopStateEv
 1210              		.thumb
 1211              		.thumb_func
 1212              		.type	_ZN11GCodeBuffer8PopStateEv, %function
 1213              	_ZN11GCodeBuffer8PopStateEv:
 1214              		@ args = 0, pretend = 0, frame = 0
 1215              		@ frame_needed = 0, uses_anonymous_args = 0
 1216 0000 8268     		ldr	r2, [r0, #8]
 1217 0002 08B5     		push	{r3, lr}
 1218 0004 1368     		ldr	r3, [r2]
 1219 0006 2BB1     		cbz	r3, .L294
 1220 0008 8360     		str	r3, [r0, #8]
 1221 000a 1046     		mov	r0, r2
 1222 000c FFF7FEFF 		bl	_ZN17GCodeMachineState7ReleaseEPS_
 1223 0010 0120     		movs	r0, #1
 1224 0012 08BD     		pop	{r3, pc}
 1225              	.L294:
 1226 0014 1846     		mov	r0, r3
 1227 0016 08BD     		pop	{r3, pc}
 1228              		.size	_ZN11GCodeBuffer8PopStateEv, .-_ZN11GCodeBuffer8PopStateEv
 1229              		.section	.text._ZNK11GCodeBuffer16IsDoingFileMacroEv,"ax",%progbits
 1230              		.align	2
 1231              		.global	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 1232              		.thumb
 1233              		.thumb_func
 1234              		.type	_ZNK11GCodeBuffer16IsDoingFileMacroEv, %function
 1235              	_ZNK11GCodeBuffer16IsDoingFileMacroEv:
 1236              		@ args = 0, pretend = 0, frame = 0
 1237              		@ frame_needed = 0, uses_anonymous_args = 0
 1238              		@ link register save eliminated.
 1239 0000 8368     		ldr	r3, [r0, #8]
 1240 0002 587C     		ldrb	r0, [r3, #17]	@ zero_extendqisi2
 1241 0004 C0F38000 		ubfx	r0, r0, #2, #1
 1242 0008 7047     		bx	lr
 1243              		.size	_ZNK11GCodeBuffer16IsDoingFileMacroEv, .-_ZNK11GCodeBuffer16IsDoingFileMacroEv
 1244 000a 00BF     		.section	.rodata.str1.4,"aMS",%progbits,1
 1245              		.align	2
 1246              	.LC0:
 1247 0000 25732069 		.ascii	"%s is idle\000"
 1247      73206964 
 1247      6C6500
 1248 000b 00       		.space	1
 1249              	.LC1:
 1250 000c 25732069 		.ascii	"%s is ready with \"%s\"\000"
 1250      73207265 
 1250      61647920 
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnFJRcJ.s 			page 23


 1250      77697468 
 1250      20222573 
 1251 0022 0000     		.space	2
 1252              	.LC2:
 1253 0024 25732069 		.ascii	"%s is doing \"%s\"\000"
 1253      7320646F 
 1253      696E6720 
 1253      22257322 
 1253      00
 1254 0035 000000   		.space	3
 1255              	.LC3:
 1256 0038 20696E20 		.ascii	" in state(s)\000"
 1256      73746174 
 1256      65287329 
 1256      00
 1257 0045 000000   		.space	3
 1258              	.LC4:
 1259 0048 20256400 		.ascii	" %d\000"
 1260              	.LC5:
 1261 004c 20090A0D 		.ascii	" \011\012\015\000"
 1261      00
 1262 0051 000000   		.space	3
 1263              	.LC6:
 1264 0054 4572726F 		.ascii	"Error: GCodes: Attempt to read a GCode float before"
 1264      723A2047 
 1264      436F6465 
 1264      733A2041 
 1264      7474656D 
 1265 0087 20612073 		.ascii	" a search.\012\000"
 1265      65617263 
 1265      682E0A00 
 1266 0093 00       		.space	1
 1267              	.LC7:
 1268 0094 4572726F 		.ascii	"Error: GCodes: Attempt to read a GCode float array "
 1268      723A2047 
 1268      436F6465 
 1268      733A2041 
 1268      7474656D 
 1269 00c7 6265666F 		.ascii	"before a search.\012\000"
 1269      72652061 
 1269      20736561 
 1269      7263682E 
 1269      0A00
 1270 00d9 000000   		.space	3
 1271              	.LC8:
 1272 00dc 4572726F 		.ascii	"Error: GCodes: Attempt to read a GCode float array "
 1272      723A2047 
 1272      436F6465 
 1272      733A2041 
 1272      7474656D 
 1273 010f 74686174 		.ascii	"that is too long: %s\012\000"
 1273      20697320 
 1273      746F6F20 
 1273      6C6F6E67 
 1273      3A202573 
 1274 0125 000000   		.space	3
 1275              	.LC9:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnFJRcJ.s 			page 24


 1276 0128 4572726F 		.ascii	"Error: GCodes: Attempt to read a GCode long array b"
 1276      723A2047 
 1276      436F6465 
 1276      733A2041 
 1276      7474656D 
 1277 015b 65666F72 		.ascii	"efore a search.\012\000"
 1277      65206120 
 1277      73656172 
 1277      63682E0A 
 1277      00
 1278              	.LC10:
 1279 016c 4572726F 		.ascii	"Error: GCodes: Attempt to read a GCode long array t"
 1279      723A2047 
 1279      436F6465 
 1279      733A2041 
 1279      7474656D 
 1280 019f 68617420 		.ascii	"hat is too long: %s\012\000"
 1280      69732074 
 1280      6F6F206C 
 1280      6F6E673A 
 1280      2025730A 
 1281              	.LC11:
 1282 01b4 00       		.ascii	"\000"
 1283 01b5 000000   		.space	3
 1284              	.LC12:
 1285 01b8 4572726F 		.ascii	"Error: GCodes: Attempt to read a GCode string befor"
 1285      723A2047 
 1285      436F6465 
 1285      733A2041 
 1285      7474656D 
 1286 01eb 65206120 		.ascii	"e a search.\012\000"
 1286      73656172 
 1286      63682E0A 
 1286      00
 1287              	.LC13:
 1288 01f8 4572726F 		.ascii	"Error: GCodes: String expected but not seen.\012\000"
 1288      723A2047 
 1288      436F6465 
 1288      733A2053 
 1288      7472696E 
 1289 0226 0000     		.space	2
 1290              	.LC14:
 1291 0228 4572726F 		.ascii	"Error: GCodes: Attempt to read a GCode int before a"
 1291      723A2047 
 1291      436F6465 
 1291      733A2041 
 1291      7474656D 
 1292 025b 20736561 		.ascii	" search.\012\000"
 1292      7263682E 
 1292      0A00
 1293 0265 000000   		.space	3
 1294              	.LC15:
 1295 0268 4572726F 		.ascii	"Error: G-Code buffer '$s' length overflow\012\000"
 1295      723A2047 
 1295      2D436F64 
 1295      65206275 
 1295      66666572 
ARM GAS  C:\Users\George\AppData\Local\Temp\ccnFJRcJ.s 			page 25


 1296 0293 00       		.space	1
 1297              	.LC16:
 1298 0294 25733A20 		.ascii	"%s: %s\012\000"
 1298      25730A00 
 1299              	.LC17:
 1300 029c 4D393938 		.ascii	"M998 P%ld\000"
 1300      2050256C 
 1300      6400
 1301 02a6 0000     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1302              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1303              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1304              	_ZL28cpu_irq_prev_interrupt_state:
 1305 0000 00       		.space	1
 1306              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1307              		.align	2
 1308              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1309              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1310              	_ZL32cpu_irq_critical_section_counter:
 1311 0000 00000000 		.space	4
 1312              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
