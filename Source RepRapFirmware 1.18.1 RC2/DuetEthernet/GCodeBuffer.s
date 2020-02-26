ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV7Pad8.s 			page 1


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
  15              		.file	"GCodeBuffer.cpp"
  16              		.section	.text._ZN11GCodeBufferC2EPKc11MessageTypeb,"ax",%progbits
  17              		.align	2
  18              		.global	_ZN11GCodeBufferC2EPKc11MessageTypeb
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN11GCodeBufferC2EPKc11MessageTypeb, %function
  22              	_ZN11GCodeBufferC2EPKc11MessageTypeb:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  26 0004 0446     		mov	r4, r0
  27 0006 1420     		movs	r0, #20
  28 0008 9946     		mov	r9, r3
  29 000a 0E46     		mov	r6, r1
  30 000c 1746     		mov	r7, r2
  31 000e FFF7FEFF 		bl	_Znwj
  32 0012 0025     		movs	r5, #0
  33 0014 8046     		mov	r8, r0
  34 0016 FFF7FEFF 		bl	_ZN17GCodeMachineStateC1Ev
  35 001a 4FF0FF33 		mov	r3, #-1
  36 001e C4F80880 		str	r8, [r4, #8]
  37 0022 2667     		str	r6, [r4, #112]
  38 0024 84F88C70 		strb	r7, [r4, #140]
  39 0028 84F88D90 		strb	r9, [r4, #141]
  40 002c A367     		str	r3, [r4, #120]
  41 002e 84F87D50 		strb	r5, [r4, #125]
  42 0032 C4F88450 		str	r5, [r4, #132]
  43 0036 C4F88850 		str	r5, [r4, #136]
  44 003a 6567     		str	r5, [r4, #116]
  45 003c 2571     		strb	r5, [r4, #4]
  46 003e 84F87C50 		strb	r5, [r4, #124]
  47 0042 C4F88050 		str	r5, [r4, #128]
  48 0046 2046     		mov	r0, r4
  49 0048 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
  50              		.size	_ZN11GCodeBufferC2EPKc11MessageTypeb, .-_ZN11GCodeBufferC2EPKc11MessageTypeb
  51              		.global	_ZN11GCodeBufferC1EPKc11MessageTypeb
  52              		.thumb_set _ZN11GCodeBufferC1EPKc11MessageTypeb,_ZN11GCodeBufferC2EPKc11MessageTypeb
  53              		.section	.text._ZN11GCodeBuffer5ResetEv,"ax",%progbits
  54              		.align	2
  55              		.global	_ZN11GCodeBuffer5ResetEv
  56              		.thumb
  57              		.thumb_func
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV7Pad8.s 			page 2


  58              		.type	_ZN11GCodeBuffer5ResetEv, %function
  59              	_ZN11GCodeBuffer5ResetEv:
  60              		@ args = 0, pretend = 0, frame = 0
  61              		@ frame_needed = 0, uses_anonymous_args = 0
  62 0000 10B5     		push	{r4, lr}
  63 0002 0446     		mov	r4, r0
  64 0004 8068     		ldr	r0, [r0, #8]
  65 0006 0368     		ldr	r3, [r0]
  66 0008 33B1     		cbz	r3, .L4
  67              	.L5:
  68 000a A360     		str	r3, [r4, #8]
  69 000c FFF7FEFF 		bl	_ZN17GCodeMachineState7ReleaseEPS_
  70 0010 A068     		ldr	r0, [r4, #8]
  71 0012 0368     		ldr	r3, [r0]
  72 0014 002B     		cmp	r3, #0
  73 0016 F8D1     		bne	.L5
  74              	.L4:
  75 0018 0023     		movs	r3, #0
  76 001a 4FF0FF32 		mov	r2, #-1
  77 001e 6367     		str	r3, [r4, #116]
  78 0020 2371     		strb	r3, [r4, #4]
  79 0022 84F87C30 		strb	r3, [r4, #124]
  80 0026 C4F88030 		str	r3, [r4, #128]
  81 002a A267     		str	r2, [r4, #120]
  82 002c 10BD     		pop	{r4, pc}
  83              		.size	_ZN11GCodeBuffer5ResetEv, .-_ZN11GCodeBuffer5ResetEv
  84 002e 00BF     		.section	.text._ZN11GCodeBuffer4InitEv,"ax",%progbits
  85              		.align	2
  86              		.global	_ZN11GCodeBuffer4InitEv
  87              		.thumb
  88              		.thumb_func
  89              		.type	_ZN11GCodeBuffer4InitEv, %function
  90              	_ZN11GCodeBuffer4InitEv:
  91              		@ args = 0, pretend = 0, frame = 0
  92              		@ frame_needed = 0, uses_anonymous_args = 0
  93              		@ link register save eliminated.
  94 0000 0023     		movs	r3, #0
  95 0002 4FF0FF32 		mov	r2, #-1
  96 0006 8267     		str	r2, [r0, #120]
  97 0008 4367     		str	r3, [r0, #116]
  98 000a 0371     		strb	r3, [r0, #4]
  99 000c 80F87C30 		strb	r3, [r0, #124]
 100 0010 C0F88030 		str	r3, [r0, #128]
 101 0014 7047     		bx	lr
 102              		.size	_ZN11GCodeBuffer4InitEv, .-_ZN11GCodeBuffer4InitEv
 103 0016 00BF     		.section	.text._ZN11GCodeBuffer11DiagnosticsE11MessageType,"ax",%progbits
 104              		.align	2
 105              		.global	_ZN11GCodeBuffer11DiagnosticsE11MessageType
 106              		.thumb
 107              		.thumb_func
 108              		.type	_ZN11GCodeBuffer11DiagnosticsE11MessageType, %function
 109              	_ZN11GCodeBuffer11DiagnosticsE11MessageType:
 110              		@ args = 0, pretend = 0, frame = 0
 111              		@ frame_needed = 0, uses_anonymous_args = 0
 112 0000 D0F88030 		ldr	r3, [r0, #128]
 113 0004 012B     		cmp	r3, #1
 114 0006 70B5     		push	{r4, r5, r6, lr}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV7Pad8.s 			page 3


 115 0008 0446     		mov	r4, r0
 116 000a 0E46     		mov	r6, r1
 117 000c 2AD0     		beq	.L14
 118 000e 022B     		cmp	r3, #2
 119 0010 20D0     		beq	.L15
 120 0012 CBB1     		cbz	r3, .L19
 121              	.L13:
 122 0014 1748     		ldr	r0, .L20
 123 0016 1849     		ldr	r1, .L20+4
 124 0018 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 125 001c A468     		ldr	r4, [r4, #8]
 126              	.L18:
 127 001e 154D     		ldr	r5, .L20
 128 0020 227C     		ldrb	r2, [r4, #16]	@ zero_extendqisi2
 129 0022 1649     		ldr	r1, .L20+8
 130 0024 2846     		mov	r0, r5
 131 0026 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 132 002a 2468     		ldr	r4, [r4]
 133 002c 002C     		cmp	r4, #0
 134 002e F6D1     		bne	.L18
 135 0030 2846     		mov	r0, r5
 136 0032 0A21     		movs	r1, #10
 137 0034 FFF7FEFF 		bl	_ZN9StringRef3catEc
 138 0038 114B     		ldr	r3, .L20+12
 139 003a 2A68     		ldr	r2, [r5]
 140 003c 1868     		ldr	r0, [r3]
 141 003e 3146     		mov	r1, r6
 142 0040 BDE87040 		pop	{r4, r5, r6, lr}
 143 0044 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 144              	.L19:
 145 0048 0E49     		ldr	r1, .L20+16
 146 004a 226F     		ldr	r2, [r4, #112]
 147 004c 0948     		ldr	r0, .L20
 148 004e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 149 0052 DFE7     		b	.L13
 150              	.L15:
 151 0054 0C49     		ldr	r1, .L20+20
 152 0056 226F     		ldr	r2, [r4, #112]
 153 0058 0648     		ldr	r0, .L20
 154 005a 04F10C03 		add	r3, r4, #12
 155 005e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 156 0062 D7E7     		b	.L13
 157              	.L14:
 158 0064 0949     		ldr	r1, .L20+24
 159 0066 226F     		ldr	r2, [r4, #112]
 160 0068 0248     		ldr	r0, .L20
 161 006a 04F10C03 		add	r3, r4, #12
 162 006e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 163 0072 CFE7     		b	.L13
 164              	.L21:
 165              		.align	2
 166              	.L20:
 167 0074 00000000 		.word	scratchString
 168 0078 38000000 		.word	.LC3
 169 007c 48000000 		.word	.LC4
 170 0080 00000000 		.word	reprap
 171 0084 00000000 		.word	.LC0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV7Pad8.s 			page 4


 172 0088 24000000 		.word	.LC2
 173 008c 0C000000 		.word	.LC1
 174              		.size	_ZN11GCodeBuffer11DiagnosticsE11MessageType, .-_ZN11GCodeBuffer11DiagnosticsE11MessageType
 175              		.section	.text._ZNK11GCodeBuffer8CheckSumEv,"ax",%progbits
 176              		.align	2
 177              		.global	_ZNK11GCodeBuffer8CheckSumEv
 178              		.thumb
 179              		.thumb_func
 180              		.type	_ZNK11GCodeBuffer8CheckSumEv, %function
 181              	_ZNK11GCodeBuffer8CheckSumEv:
 182              		@ args = 0, pretend = 0, frame = 0
 183              		@ frame_needed = 0, uses_anonymous_args = 0
 184              		@ link register save eliminated.
 185 0000 037B     		ldrb	r3, [r0, #12]	@ zero_extendqisi2
 186 0002 2A2B     		cmp	r3, #42
 187 0004 0CD0     		beq	.L27
 188 0006 6BB1     		cbz	r3, .L28
 189 0008 00F10C02 		add	r2, r0, #12
 190 000c 0020     		movs	r0, #0
 191 000e 00E0     		b	.L26
 192              	.L30:
 193 0010 2BB1     		cbz	r3, .L29
 194              	.L26:
 195 0012 5840     		eors	r0, r0, r3
 196 0014 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
 197 0018 2A2B     		cmp	r3, #42
 198 001a F9D1     		bne	.L30
 199              	.L23:
 200 001c 7047     		bx	lr
 201              	.L29:
 202 001e 7047     		bx	lr
 203              	.L27:
 204 0020 0020     		movs	r0, #0
 205 0022 7047     		bx	lr
 206              	.L28:
 207 0024 1846     		mov	r0, r3
 208 0026 F9E7     		b	.L23
 209              		.size	_ZNK11GCodeBuffer8CheckSumEv, .-_ZNK11GCodeBuffer8CheckSumEv
 210              		.section	.text._ZNK11GCodeBuffer7IsEmptyEv,"ax",%progbits
 211              		.align	2
 212              		.global	_ZNK11GCodeBuffer7IsEmptyEv
 213              		.thumb
 214              		.thumb_func
 215              		.type	_ZNK11GCodeBuffer7IsEmptyEv, %function
 216              	_ZNK11GCodeBuffer7IsEmptyEv:
 217              		@ args = 0, pretend = 0, frame = 0
 218              		@ frame_needed = 0, uses_anonymous_args = 0
 219 0000 38B5     		push	{r3, r4, r5, lr}
 220 0002 047B     		ldrb	r4, [r0, #12]	@ zero_extendqisi2
 221 0004 00F10C05 		add	r5, r0, #12
 222 0008 1CB9     		cbnz	r4, .L33
 223 000a 0DE0     		b	.L36
 224              	.L34:
 225 000c 15F8014F 		ldrb	r4, [r5, #1]!	@ zero_extendqisi2
 226 0010 54B1     		cbz	r4, .L36
 227              	.L33:
 228 0012 0648     		ldr	r0, .L37
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV7Pad8.s 			page 5


 229 0014 2146     		mov	r1, r4
 230 0016 FFF7FEFF 		bl	strchr
 231 001a 0028     		cmp	r0, #0
 232 001c F6D1     		bne	.L34
 233 001e D4F10100 		rsbs	r0, r4, #1
 234 0022 38BF     		it	cc
 235 0024 0020     		movcc	r0, #0
 236 0026 38BD     		pop	{r3, r4, r5, pc}
 237              	.L36:
 238 0028 0120     		movs	r0, #1
 239 002a 38BD     		pop	{r3, r4, r5, pc}
 240              	.L38:
 241              		.align	2
 242              	.L37:
 243 002c 4C000000 		.word	.LC5
 244              		.size	_ZNK11GCodeBuffer7IsEmptyEv, .-_ZNK11GCodeBuffer7IsEmptyEv
 245              		.section	.text._ZN11GCodeBuffer4SeenEc,"ax",%progbits
 246              		.align	2
 247              		.global	_ZN11GCodeBuffer4SeenEc
 248              		.thumb
 249              		.thumb_func
 250              		.type	_ZN11GCodeBuffer4SeenEc, %function
 251              	_ZN11GCodeBuffer4SeenEc:
 252              		@ args = 0, pretend = 0, frame = 0
 253              		@ frame_needed = 0, uses_anonymous_args = 0
 254              		@ link register save eliminated.
 255 0000 30B4     		push	{r4, r5}
 256 0002 037B     		ldrb	r3, [r0, #12]	@ zero_extendqisi2
 257 0004 0022     		movs	r2, #0
 258 0006 8267     		str	r2, [r0, #120]
 259 0008 93B1     		cbz	r3, .L42
 260 000a 3B2B     		cmp	r3, #59
 261 000c 10D0     		beq	.L42
 262 000e 8B42     		cmp	r3, r1
 263 0010 15D0     		beq	.L43
 264 0012 6FF00A04 		mvn	r4, #10
 265 0016 241A     		subs	r4, r4, r0
 266 0018 00F10C02 		add	r2, r0, #12
 267 001c 03E0     		b	.L44
 268              	.L47:
 269 001e 3B2B     		cmp	r3, #59
 270 0020 06D0     		beq	.L42
 271 0022 8B42     		cmp	r3, r1
 272 0024 0AD0     		beq	.L51
 273              	.L44:
 274 0026 A518     		adds	r5, r4, r2
 275 0028 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
 276 002c 002B     		cmp	r3, #0
 277 002e F6D1     		bne	.L47
 278              	.L42:
 279 0030 4FF0FF33 		mov	r3, #-1
 280 0034 8367     		str	r3, [r0, #120]
 281 0036 30BC     		pop	{r4, r5}
 282 0038 0020     		movs	r0, #0
 283 003a 7047     		bx	lr
 284              	.L51:
 285 003c 8567     		str	r5, [r0, #120]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV7Pad8.s 			page 6


 286              	.L43:
 287 003e 0120     		movs	r0, #1
 288 0040 30BC     		pop	{r4, r5}
 289 0042 7047     		bx	lr
 290              		.size	_ZN11GCodeBuffer4SeenEc, .-_ZN11GCodeBuffer4SeenEc
 291              		.section	.text._ZN11GCodeBuffer16GetCommandLetterEv,"ax",%progbits
 292              		.align	2
 293              		.global	_ZN11GCodeBuffer16GetCommandLetterEv
 294              		.thumb
 295              		.thumb_func
 296              		.type	_ZN11GCodeBuffer16GetCommandLetterEv, %function
 297              	_ZN11GCodeBuffer16GetCommandLetterEv:
 298              		@ args = 0, pretend = 0, frame = 0
 299              		@ frame_needed = 0, uses_anonymous_args = 0
 300              		@ link register save eliminated.
 301 0000 10B4     		push	{r4}
 302 0002 037B     		ldrb	r3, [r0, #12]	@ zero_extendqisi2
 303 0004 0022     		movs	r2, #0
 304 0006 8267     		str	r2, [r0, #120]
 305 0008 D3B1     		cbz	r3, .L55
 306 000a 3B2B     		cmp	r3, #59
 307 000c 18D0     		beq	.L55
 308 000e 472B     		cmp	r3, #71
 309 0010 1ED0     		beq	.L62
 310 0012 4D2B     		cmp	r3, #77
 311 0014 21D0     		beq	.L64
 312 0016 542B     		cmp	r3, #84
 313 0018 24D0     		beq	.L58
 314 001a 6FF00A01 		mvn	r1, #10
 315 001e 091A     		subs	r1, r1, r0
 316 0020 00F10C02 		add	r2, r0, #12
 317 0024 07E0     		b	.L59
 318              	.L66:
 319 0026 3B2B     		cmp	r3, #59
 320 0028 0AD0     		beq	.L55
 321 002a 472B     		cmp	r3, #71
 322 002c 0FD0     		beq	.L73
 323 002e 4D2B     		cmp	r3, #77
 324 0030 12D0     		beq	.L74
 325 0032 542B     		cmp	r3, #84
 326 0034 15D0     		beq	.L75
 327              	.L59:
 328 0036 8C18     		adds	r4, r1, r2
 329 0038 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
 330 003c 002B     		cmp	r3, #0
 331 003e F2D1     		bne	.L66
 332              	.L55:
 333 0040 4FF0FF33 		mov	r3, #-1
 334 0044 8367     		str	r3, [r0, #120]
 335 0046 5DF8044B 		ldr	r4, [sp], #4
 336 004a 0020     		movs	r0, #0
 337 004c 7047     		bx	lr
 338              	.L73:
 339 004e 8467     		str	r4, [r0, #120]
 340              	.L62:
 341 0050 4720     		movs	r0, #71
 342 0052 5DF8044B 		ldr	r4, [sp], #4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV7Pad8.s 			page 7


 343 0056 7047     		bx	lr
 344              	.L74:
 345 0058 8467     		str	r4, [r0, #120]
 346              	.L64:
 347 005a 4D20     		movs	r0, #77
 348 005c 5DF8044B 		ldr	r4, [sp], #4
 349 0060 7047     		bx	lr
 350              	.L75:
 351 0062 8467     		str	r4, [r0, #120]
 352              	.L58:
 353 0064 5420     		movs	r0, #84
 354 0066 5DF8044B 		ldr	r4, [sp], #4
 355 006a 7047     		bx	lr
 356              		.size	_ZN11GCodeBuffer16GetCommandLetterEv, .-_ZN11GCodeBuffer16GetCommandLetterEv
 357              		.global	__aeabi_d2f
 358              		.section	.text._ZN11GCodeBuffer9GetFValueEv,"ax",%progbits
 359              		.align	2
 360              		.global	_ZN11GCodeBuffer9GetFValueEv
 361              		.thumb
 362              		.thumb_func
 363              		.type	_ZN11GCodeBuffer9GetFValueEv, %function
 364              	_ZN11GCodeBuffer9GetFValueEv:
 365              		@ args = 0, pretend = 0, frame = 0
 366              		@ frame_needed = 0, uses_anonymous_args = 0
 367 0000 10B5     		push	{r4, lr}
 368 0002 0446     		mov	r4, r0
 369 0004 806F     		ldr	r0, [r0, #120]
 370 0006 0028     		cmp	r0, #0
 371 0008 0ADB     		blt	.L79
 372 000a 2044     		add	r0, r0, r4
 373 000c 0D30     		adds	r0, r0, #13
 374 000e 0021     		movs	r1, #0
 375 0010 FFF7FEFF 		bl	strtod
 376 0014 FFF7FEFF 		bl	__aeabi_d2f
 377 0018 4FF0FF33 		mov	r3, #-1
 378 001c A367     		str	r3, [r4, #120]
 379 001e 10BD     		pop	{r4, pc}
 380              	.L79:
 381 0020 054B     		ldr	r3, .L80
 382 0022 064A     		ldr	r2, .L80+4
 383 0024 1868     		ldr	r0, [r3]
 384 0026 0621     		movs	r1, #6
 385 0028 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 386 002c 4FF0FF33 		mov	r3, #-1
 387 0030 A367     		str	r3, [r4, #120]
 388 0032 0020     		movs	r0, #0
 389 0034 10BD     		pop	{r4, pc}
 390              	.L81:
 391 0036 00BF     		.align	2
 392              	.L80:
 393 0038 00000000 		.word	reprap
 394 003c 54000000 		.word	.LC6
 395              		.size	_ZN11GCodeBuffer9GetFValueEv, .-_ZN11GCodeBuffer9GetFValueEv
 396              		.section	.text._ZN11GCodeBuffer13GetFloatArrayEPfRjb,"ax",%progbits
 397              		.align	2
 398              		.global	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 399              		.thumb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV7Pad8.s 			page 8


 400              		.thumb_func
 401              		.type	_ZN11GCodeBuffer13GetFloatArrayEPfRjb, %function
 402              	_ZN11GCodeBuffer13GetFloatArrayEPfRjb:
 403              		@ args = 0, pretend = 0, frame = 8
 404              		@ frame_needed = 0, uses_anonymous_args = 0
 405 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 406 0004 83B0     		sub	sp, sp, #12
 407 0006 8046     		mov	r8, r0
 408 0008 0191     		str	r1, [sp, #4]
 409 000a 816F     		ldr	r1, [r0, #120]
 410 000c 0093     		str	r3, [sp]
 411 000e 0029     		cmp	r1, #0
 412 0010 9346     		mov	fp, r2
 413 0012 5DDB     		blt	.L95
 414 0014 DBF80030 		ldr	r3, [fp]
 415 0018 DDF804A0 		ldr	r10, [sp, #4]
 416 001c 4FF00009 		mov	r9, #0
 417 0020 6FF00A07 		mvn	r7, #10
 418 0024 4B45     		cmp	r3, r9
 419 0026 C0EB0707 		rsb	r7, r0, r7
 420 002a 30D9     		bls	.L96
 421              	.L85:
 422 002c D8F87830 		ldr	r3, [r8, #120]
 423 0030 08EB0300 		add	r0, r8, r3
 424 0034 0D30     		adds	r0, r0, #13
 425 0036 0021     		movs	r1, #0
 426 0038 FFF7FEFF 		bl	strtod
 427 003c FFF7FEFF 		bl	__aeabi_d2f
 428 0040 D8F87840 		ldr	r4, [r8, #120]
 429 0044 4AF8040B 		str	r0, [r10], #4	@ float
 430 0048 4444     		add	r4, r4, r8
 431 004a 09F10109 		add	r9, r9, #1
 432 004e 0C34     		adds	r4, r4, #12
 433 0050 01E0     		b	.L89
 434              	.L98:
 435 0052 3A2D     		cmp	r5, #58
 436 0054 15D0     		beq	.L97
 437              	.L89:
 438 0056 3E19     		adds	r6, r7, r4
 439 0058 14F8015F 		ldrb	r5, [r4, #1]!	@ zero_extendqisi2
 440 005c 15F0DF0F 		tst	r5, #223
 441 0060 F7D1     		bne	.L98
 442 0062 009A     		ldr	r2, [sp]
 443 0064 C8F87860 		str	r6, [r8, #120]
 444 0068 12B1     		cbz	r2, .L90
 445 006a B9F1010F 		cmp	r9, #1
 446 006e 20D0     		beq	.L99
 447              	.L90:
 448 0070 CBF80090 		str	r9, [fp]
 449              	.L91:
 450 0074 4FF0FF33 		mov	r3, #-1
 451 0078 C8F87830 		str	r3, [r8, #120]
 452              	.L82:
 453 007c 03B0     		add	sp, sp, #12
 454              		@ sp needed
 455 007e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 456              	.L97:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV7Pad8.s 			page 9


 457 0082 C8F87860 		str	r6, [r8, #120]
 458 0086 DBF80030 		ldr	r3, [fp]
 459 008a 4B45     		cmp	r3, r9
 460 008c CED8     		bhi	.L85
 461              	.L96:
 462 008e 174B     		ldr	r3, .L100
 463 0090 174A     		ldr	r2, .L100+4
 464 0092 1868     		ldr	r0, [r3]
 465 0094 0621     		movs	r1, #6
 466 0096 08F10C03 		add	r3, r8, #12
 467 009a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 468 009e 4FF0FF32 		mov	r2, #-1
 469 00a2 0023     		movs	r3, #0
 470 00a4 C8F87820 		str	r2, [r8, #120]
 471 00a8 CBF80030 		str	r3, [fp]
 472 00ac 03B0     		add	sp, sp, #12
 473              		@ sp needed
 474 00ae BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 475              	.L99:
 476 00b2 DBF80010 		ldr	r1, [fp]
 477 00b6 0129     		cmp	r1, #1
 478 00b8 DAD9     		bls	.L90
 479 00ba 0198     		ldr	r0, [sp, #4]
 480 00bc 00EB8101 		add	r1, r0, r1, lsl #2
 481 00c0 031D     		adds	r3, r0, #4
 482              	.L92:
 483 00c2 0198     		ldr	r0, [sp, #4]
 484 00c4 0268     		ldr	r2, [r0]	@ float
 485 00c6 43F8042B 		str	r2, [r3], #4	@ float
 486 00ca 8B42     		cmp	r3, r1
 487 00cc F9D1     		bne	.L92
 488 00ce D1E7     		b	.L91
 489              	.L95:
 490 00d0 064B     		ldr	r3, .L100
 491 00d2 084A     		ldr	r2, .L100+8
 492 00d4 1868     		ldr	r0, [r3]
 493 00d6 0621     		movs	r1, #6
 494 00d8 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 495 00dc 4FF0FF32 		mov	r2, #-1
 496 00e0 0023     		movs	r3, #0
 497 00e2 C8F87820 		str	r2, [r8, #120]
 498 00e6 CBF80030 		str	r3, [fp]
 499 00ea C7E7     		b	.L82
 500              	.L101:
 501              		.align	2
 502              	.L100:
 503 00ec 00000000 		.word	reprap
 504 00f0 DC000000 		.word	.LC8
 505 00f4 94000000 		.word	.LC7
 506              		.size	_ZN11GCodeBuffer13GetFloatArrayEPfRjb, .-_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 507              		.section	.text._ZN11GCodeBuffer12GetLongArrayEPlRj,"ax",%progbits
 508              		.align	2
 509              		.global	_ZN11GCodeBuffer12GetLongArrayEPlRj
 510              		.thumb
 511              		.thumb_func
 512              		.type	_ZN11GCodeBuffer12GetLongArrayEPlRj, %function
 513              	_ZN11GCodeBuffer12GetLongArrayEPlRj:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV7Pad8.s 			page 10


 514              		@ args = 0, pretend = 0, frame = 0
 515              		@ frame_needed = 0, uses_anonymous_args = 0
 516 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 517 0004 836F     		ldr	r3, [r0, #120]
 518 0006 002B     		cmp	r3, #0
 519 0008 0646     		mov	r6, r0
 520 000a 9146     		mov	r9, r2
 521 000c 3CDB     		blt	.L110
 522 000e D9F80030 		ldr	r3, [r9]
 523 0012 0027     		movs	r7, #0
 524 0014 6FF00A05 		mvn	r5, #10
 525 0018 BB42     		cmp	r3, r7
 526 001a A1F10408 		sub	r8, r1, #4
 527 001e C0EB0505 		rsb	r5, r0, r5
 528 0022 21D9     		bls	.L111
 529              	.L105:
 530 0024 B36F     		ldr	r3, [r6, #120]
 531 0026 0021     		movs	r1, #0
 532 0028 F018     		adds	r0, r6, r3
 533 002a 0D30     		adds	r0, r0, #13
 534 002c 0A46     		mov	r2, r1
 535 002e FFF7FEFF 		bl	strtol
 536 0032 B36F     		ldr	r3, [r6, #120]
 537 0034 48F8040F 		str	r0, [r8, #4]!
 538 0038 3344     		add	r3, r3, r6
 539 003a 0137     		adds	r7, r7, #1
 540 003c 0C33     		adds	r3, r3, #12
 541 003e 01E0     		b	.L109
 542              	.L113:
 543 0040 3A29     		cmp	r1, #58
 544 0042 0CD0     		beq	.L112
 545              	.L109:
 546 0044 EC18     		adds	r4, r5, r3
 547 0046 13F8011F 		ldrb	r1, [r3, #1]!	@ zero_extendqisi2
 548 004a 11F0DF0F 		tst	r1, #223
 549 004e F7D1     		bne	.L113
 550 0050 4FF0FF33 		mov	r3, #-1
 551 0054 C9F80070 		str	r7, [r9]
 552 0058 B367     		str	r3, [r6, #120]
 553 005a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 554              	.L112:
 555 005e B467     		str	r4, [r6, #120]
 556 0060 D9F80030 		ldr	r3, [r9]
 557 0064 BB42     		cmp	r3, r7
 558 0066 DDD8     		bhi	.L105
 559              	.L111:
 560 0068 0D4B     		ldr	r3, .L114
 561 006a 0E4A     		ldr	r2, .L114+4
 562 006c 1868     		ldr	r0, [r3]
 563 006e 0621     		movs	r1, #6
 564 0070 06F10C03 		add	r3, r6, #12
 565 0074 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 566 0078 4FF0FF32 		mov	r2, #-1
 567 007c 0023     		movs	r3, #0
 568 007e B267     		str	r2, [r6, #120]
 569 0080 C9F80030 		str	r3, [r9]
 570 0084 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV7Pad8.s 			page 11


 571              	.L110:
 572 0088 054B     		ldr	r3, .L114
 573 008a 074A     		ldr	r2, .L114+8
 574 008c 1868     		ldr	r0, [r3]
 575 008e 0621     		movs	r1, #6
 576 0090 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 577 0094 4FF0FF33 		mov	r3, #-1
 578 0098 B367     		str	r3, [r6, #120]
 579 009a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 580              	.L115:
 581 009e 00BF     		.align	2
 582              	.L114:
 583 00a0 00000000 		.word	reprap
 584 00a4 6C010000 		.word	.LC10
 585 00a8 28010000 		.word	.LC9
 586              		.size	_ZN11GCodeBuffer12GetLongArrayEPlRj, .-_ZN11GCodeBuffer12GetLongArrayEPlRj
 587              		.section	.text._ZN11GCodeBuffer9GetStringEv,"ax",%progbits
 588              		.align	2
 589              		.global	_ZN11GCodeBuffer9GetStringEv
 590              		.thumb
 591              		.thumb_func
 592              		.type	_ZN11GCodeBuffer9GetStringEv, %function
 593              	_ZN11GCodeBuffer9GetStringEv:
 594              		@ args = 0, pretend = 0, frame = 0
 595              		@ frame_needed = 0, uses_anonymous_args = 0
 596 0000 10B5     		push	{r4, lr}
 597 0002 0446     		mov	r4, r0
 598 0004 806F     		ldr	r0, [r0, #120]
 599 0006 0028     		cmp	r0, #0
 600 0008 05DB     		blt	.L119
 601 000a 2044     		add	r0, r0, r4
 602 000c 4FF0FF33 		mov	r3, #-1
 603 0010 0D30     		adds	r0, r0, #13
 604 0012 A367     		str	r3, [r4, #120]
 605 0014 10BD     		pop	{r4, pc}
 606              	.L119:
 607 0016 054B     		ldr	r3, .L120
 608 0018 054A     		ldr	r2, .L120+4
 609 001a 1868     		ldr	r0, [r3]
 610 001c 0621     		movs	r1, #6
 611 001e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 612 0022 4FF0FF33 		mov	r3, #-1
 613 0026 A367     		str	r3, [r4, #120]
 614 0028 0248     		ldr	r0, .L120+8
 615 002a 10BD     		pop	{r4, pc}
 616              	.L121:
 617              		.align	2
 618              	.L120:
 619 002c 00000000 		.word	reprap
 620 0030 B8010000 		.word	.LC12
 621 0034 B4010000 		.word	.LC11
 622              		.size	_ZN11GCodeBuffer9GetStringEv, .-_ZN11GCodeBuffer9GetStringEv
 623              		.section	.text._ZN11GCodeBuffer22GetUnprecedentedStringEb,"ax",%progbits
 624              		.align	2
 625              		.global	_ZN11GCodeBuffer22GetUnprecedentedStringEb
 626              		.thumb
 627              		.thumb_func
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV7Pad8.s 			page 12


 628              		.type	_ZN11GCodeBuffer22GetUnprecedentedStringEb, %function
 629              	_ZN11GCodeBuffer22GetUnprecedentedStringEb:
 630              		@ args = 0, pretend = 0, frame = 0
 631              		@ frame_needed = 0, uses_anonymous_args = 0
 632 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 633 0002 037B     		ldrb	r3, [r0, #12]	@ zero_extendqisi2
 634 0004 0022     		movs	r2, #0
 635 0006 0646     		mov	r6, r0
 636 0008 8267     		str	r2, [r0, #120]
 637 000a 0F46     		mov	r7, r1
 638 000c 73B1     		cbz	r3, .L123
 639 000e 202B     		cmp	r3, #32
 640 0010 21D0     		beq	.L130
 641 0012 6FF00A04 		mvn	r4, #10
 642 0016 241A     		subs	r4, r4, r0
 643 0018 00F10C03 		add	r3, r0, #12
 644 001c 01E0     		b	.L127
 645              	.L138:
 646 001e 202A     		cmp	r2, #32
 647 0020 0AD0     		beq	.L137
 648              	.L127:
 649 0022 E518     		adds	r5, r4, r3
 650 0024 13F8012F 		ldrb	r2, [r3, #1]!	@ zero_extendqisi2
 651 0028 002A     		cmp	r2, #0
 652 002a F8D1     		bne	.L138
 653              	.L123:
 654 002c 4FF0FF33 		mov	r3, #-1
 655 0030 B367     		str	r3, [r6, #120]
 656 0032 47B1     		cbz	r7, .L139
 657 0034 0020     		movs	r0, #0
 658 0036 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 659              	.L137:
 660 0038 681C     		adds	r0, r5, #1
 661              	.L124:
 662 003a 3044     		add	r0, r0, r6
 663 003c 4FF0FF33 		mov	r3, #-1
 664 0040 0C30     		adds	r0, r0, #12
 665 0042 B367     		str	r3, [r6, #120]
 666 0044 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 667              	.L139:
 668 0046 054B     		ldr	r3, .L140
 669 0048 054A     		ldr	r2, .L140+4
 670 004a 1868     		ldr	r0, [r3]
 671 004c 0621     		movs	r1, #6
 672 004e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 673 0052 3846     		mov	r0, r7
 674 0054 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 675              	.L130:
 676 0056 0120     		movs	r0, #1
 677 0058 EFE7     		b	.L124
 678              	.L141:
 679 005a 00BF     		.align	2
 680              	.L140:
 681 005c 00000000 		.word	reprap
 682 0060 F8010000 		.word	.LC13
 683              		.size	_ZN11GCodeBuffer22GetUnprecedentedStringEb, .-_ZN11GCodeBuffer22GetUnprecedentedStringEb
 684              		.section	.text._ZN11GCodeBuffer9GetIValueEv,"ax",%progbits
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV7Pad8.s 			page 13


 685              		.align	2
 686              		.global	_ZN11GCodeBuffer9GetIValueEv
 687              		.thumb
 688              		.thumb_func
 689              		.type	_ZN11GCodeBuffer9GetIValueEv, %function
 690              	_ZN11GCodeBuffer9GetIValueEv:
 691              		@ args = 0, pretend = 0, frame = 0
 692              		@ frame_needed = 0, uses_anonymous_args = 0
 693 0000 10B5     		push	{r4, lr}
 694 0002 0446     		mov	r4, r0
 695 0004 806F     		ldr	r0, [r0, #120]
 696 0006 0028     		cmp	r0, #0
 697 0008 09DB     		blt	.L145
 698 000a 0021     		movs	r1, #0
 699 000c 2044     		add	r0, r0, r4
 700 000e 0A46     		mov	r2, r1
 701 0010 0D30     		adds	r0, r0, #13
 702 0012 FFF7FEFF 		bl	strtol
 703 0016 4FF0FF33 		mov	r3, #-1
 704 001a A367     		str	r3, [r4, #120]
 705 001c 10BD     		pop	{r4, pc}
 706              	.L145:
 707 001e 054B     		ldr	r3, .L146
 708 0020 054A     		ldr	r2, .L146+4
 709 0022 1868     		ldr	r0, [r3]
 710 0024 0621     		movs	r1, #6
 711 0026 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 712 002a 4FF0FF33 		mov	r3, #-1
 713 002e A367     		str	r3, [r4, #120]
 714 0030 0020     		movs	r0, #0
 715 0032 10BD     		pop	{r4, pc}
 716              	.L147:
 717              		.align	2
 718              	.L146:
 719 0034 00000000 		.word	reprap
 720 0038 28020000 		.word	.LC14
 721              		.size	_ZN11GCodeBuffer9GetIValueEv, .-_ZN11GCodeBuffer9GetIValueEv
 722              		.section	.text._ZN11GCodeBuffer3PutEc,"ax",%progbits
 723              		.align	2
 724              		.global	_ZN11GCodeBuffer3PutEc
 725              		.thumb
 726              		.thumb_func
 727              		.type	_ZN11GCodeBuffer3PutEc, %function
 728              	_ZN11GCodeBuffer3PutEc:
 729              		@ args = 0, pretend = 0, frame = 0
 730              		@ frame_needed = 0, uses_anonymous_args = 0
 731 0000 70B5     		push	{r4, r5, r6, lr}
 732 0002 0D29     		cmp	r1, #13
 733 0004 82B0     		sub	sp, sp, #8
 734 0006 0446     		mov	r4, r0
 735 0008 0FD0     		beq	.L230
 736 000a 3B29     		cmp	r1, #59
 737 000c 79D0     		beq	.L231
 738 000e 0A29     		cmp	r1, #10
 739 0010 0ED0     		beq	.L152
 740 0012 69B1     		cbz	r1, .L152
 741 0014 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV7Pad8.s 			page 14


 742 0018 002B     		cmp	r3, #0
 743 001a 62D1     		bne	.L232
 744              	.L189:
 745 001c 636F     		ldr	r3, [r4, #116]
 746 001e E218     		adds	r2, r4, r3
 747 0020 0133     		adds	r3, r3, #1
 748 0022 632B     		cmp	r3, #99
 749 0024 6367     		str	r3, [r4, #116]
 750 0026 1173     		strb	r1, [r2, #12]
 751 0028 60DC     		bgt	.L233
 752              	.L230:
 753 002a 0020     		movs	r0, #0
 754              	.L227:
 755 002c 02B0     		add	sp, sp, #8
 756              		@ sp needed
 757 002e 70BD     		pop	{r4, r5, r6, pc}
 758              	.L152:
 759 0030 636F     		ldr	r3, [r4, #116]
 760 0032 7549     		ldr	r1, .L239
 761 0034 2344     		add	r3, r3, r4
 762 0036 0022     		movs	r2, #0
 763 0038 1A73     		strb	r2, [r3, #12]
 764 003a B1F84030 		ldrh	r3, [r1, #64]
 765 003e 13F0080F 		tst	r3, #8
 766 0042 237B     		ldrb	r3, [r4, #12]	@ zero_extendqisi2
 767 0044 0FD0     		beq	.L155
 768 0046 23B3     		cbz	r3, .L156
 769 0048 D4F88400 		ldr	r0, [r4, #132]
 770 004c 08B1     		cbz	r0, .L234
 771 004e A267     		str	r2, [r4, #120]
 772 0050 0CE0     		b	.L159
 773              	.L234:
 774 0052 04F10C06 		add	r6, r4, #12
 775 0056 0868     		ldr	r0, [r1]
 776 0058 236F     		ldr	r3, [r4, #112]
 777 005a 6C4A     		ldr	r2, .L239+4
 778 005c 0096     		str	r6, [sp]
 779 005e 0321     		movs	r1, #3
 780 0060 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 781 0064 237B     		ldrb	r3, [r4, #12]	@ zero_extendqisi2
 782              	.L155:
 783 0066 0022     		movs	r2, #0
 784 0068 A267     		str	r2, [r4, #120]
 785 006a 93B1     		cbz	r3, .L156
 786              	.L159:
 787 006c 3B2B     		cmp	r3, #59
 788 006e 10D0     		beq	.L156
 789 0070 2A2B     		cmp	r3, #42
 790 0072 4BD0     		beq	.L162
 791 0074 6FF00A01 		mvn	r1, #10
 792 0078 091B     		subs	r1, r1, r4
 793 007a 04F10C02 		add	r2, r4, #12
 794 007e 03E0     		b	.L163
 795              	.L166:
 796 0080 3B2B     		cmp	r3, #59
 797 0082 06D0     		beq	.L156
 798 0084 2A2B     		cmp	r3, #42
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV7Pad8.s 			page 15


 799 0086 40D0     		beq	.L235
 800              	.L163:
 801 0088 8818     		adds	r0, r1, r2
 802 008a 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
 803 008e 002B     		cmp	r3, #0
 804 0090 F6D1     		bne	.L166
 805              	.L156:
 806 0092 94F87D30 		ldrb	r3, [r4, #125]	@ zero_extendqisi2
 807 0096 4FF0FF32 		mov	r2, #-1
 808 009a A267     		str	r2, [r4, #120]
 809 009c 13B1     		cbz	r3, .L161
 810 009e A368     		ldr	r3, [r4, #8]
 811 00a0 1B68     		ldr	r3, [r3]
 812 00a2 1BB1     		cbz	r3, .L188
 813              	.L161:
 814 00a4 2046     		mov	r0, r4
 815 00a6 FFF7FEFF 		bl	_ZNK11GCodeBuffer7IsEmptyEv
 816 00aa 68B1     		cbz	r0, .L187
 817              	.L188:
 818 00ac 0020     		movs	r0, #0
 819 00ae 2073     		strb	r0, [r4, #12]
 820 00b0 6067     		str	r0, [r4, #116]
 821 00b2 2071     		strb	r0, [r4, #4]
 822 00b4 84F87C00 		strb	r0, [r4, #124]
 823 00b8 C4F88000 		str	r0, [r4, #128]
 824 00bc 02B0     		add	sp, sp, #8
 825              		@ sp needed
 826 00be 70BD     		pop	{r4, r5, r6, pc}
 827              	.L197:
 828 00c0 1A46     		mov	r2, r3
 829              	.L185:
 830 00c2 2244     		add	r2, r2, r4
 831 00c4 0023     		movs	r3, #0
 832 00c6 1373     		strb	r3, [r2, #12]
 833              	.L187:
 834 00c8 0023     		movs	r3, #0
 835 00ca 0120     		movs	r0, #1
 836 00cc 4FF0FF32 		mov	r2, #-1
 837 00d0 6367     		str	r3, [r4, #116]
 838 00d2 2371     		strb	r3, [r4, #4]
 839 00d4 84F87C30 		strb	r3, [r4, #124]
 840 00d8 A267     		str	r2, [r4, #120]
 841 00da C4F88000 		str	r0, [r4, #128]
 842 00de 02B0     		add	sp, sp, #8
 843              		@ sp needed
 844 00e0 70BD     		pop	{r4, r5, r6, pc}
 845              	.L232:
 846 00e2 D0F88430 		ldr	r3, [r0, #132]
 847 00e6 002B     		cmp	r3, #0
 848 00e8 98D1     		bne	.L189
 849 00ea 9EE7     		b	.L230
 850              	.L233:
 851 00ec 464B     		ldr	r3, .L239
 852 00ee 484A     		ldr	r2, .L239+8
 853 00f0 1868     		ldr	r0, [r3]
 854 00f2 236F     		ldr	r3, [r4, #112]
 855 00f4 0621     		movs	r1, #6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV7Pad8.s 			page 16


 856 00f6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 857 00fa 0020     		movs	r0, #0
 858 00fc 6067     		str	r0, [r4, #116]
 859 00fe 2073     		strb	r0, [r4, #12]
 860 0100 94E7     		b	.L227
 861              	.L231:
 862 0102 0123     		movs	r3, #1
 863 0104 80F87C30 		strb	r3, [r0, #124]
 864 0108 8FE7     		b	.L230
 865              	.L235:
 866 010a A067     		str	r0, [r4, #120]
 867              	.L162:
 868 010c 2046     		mov	r0, r4
 869 010e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 870 0112 257B     		ldrb	r5, [r4, #12]	@ zero_extendqisi2
 871 0114 2A2D     		cmp	r5, #42
 872 0116 6FD0     		beq	.L194
 873 0118 002D     		cmp	r5, #0
 874 011a 6FD0     		beq	.L195
 875 011c 04F10C01 		add	r1, r4, #12
 876 0120 2B46     		mov	r3, r5
 877 0122 0022     		movs	r2, #0
 878 0124 00E0     		b	.L191
 879              	.L236:
 880 0126 23B1     		cbz	r3, .L168
 881              	.L191:
 882 0128 5A40     		eors	r2, r2, r3
 883 012a 11F8013F 		ldrb	r3, [r1, #1]!	@ zero_extendqisi2
 884 012e 2A2B     		cmp	r3, #42
 885 0130 F9D1     		bne	.L236
 886              	.L168:
 887 0132 9042     		cmp	r0, r2
 888 0134 4FF00003 		mov	r3, #0
 889 0138 21D0     		beq	.L170
 890 013a A367     		str	r3, [r4, #120]
 891 013c 9DB1     		cbz	r5, .L172
 892 013e 3B2D     		cmp	r5, #59
 893 0140 11D0     		beq	.L172
 894 0142 4E2D     		cmp	r5, #78
 895 0144 04F10C06 		add	r6, r4, #12
 896 0148 40D0     		beq	.L174
 897 014a 6FF00A01 		mvn	r1, #10
 898 014e 3246     		mov	r2, r6
 899 0150 091B     		subs	r1, r1, r4
 900 0152 03E0     		b	.L175
 901              	.L178:
 902 0154 3B2B     		cmp	r3, #59
 903 0156 06D0     		beq	.L172
 904 0158 4E2B     		cmp	r3, #78
 905 015a 36D0     		beq	.L237
 906              	.L175:
 907 015c 8D18     		adds	r5, r1, r2
 908 015e 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
 909 0162 002B     		cmp	r3, #0
 910 0164 F6D1     		bne	.L178
 911              	.L172:
 912 0166 0023     		movs	r3, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV7Pad8.s 			page 17


 913 0168 4FF0FF32 		mov	r2, #-1
 914 016c 6367     		str	r3, [r4, #116]
 915 016e 2371     		strb	r3, [r4, #4]
 916 0170 84F87C30 		strb	r3, [r4, #124]
 917 0174 C4F88030 		str	r3, [r4, #128]
 918 0178 A267     		str	r2, [r4, #120]
 919 017a 0120     		movs	r0, #1
 920 017c 56E7     		b	.L227
 921              	.L170:
 922 017e 202D     		cmp	r5, #32
 923 0180 6367     		str	r3, [r4, #116]
 924 0182 3DD0     		beq	.L193
 925 0184 65B3     		cbz	r5, .L180
 926 0186 6FF00A01 		mvn	r1, #10
 927 018a 091B     		subs	r1, r1, r4
 928 018c 04F10C03 		add	r3, r4, #12
 929 0190 00E0     		b	.L183
 930              	.L181:
 931 0192 2AB3     		cbz	r2, .L180
 932              	.L183:
 933 0194 C818     		adds	r0, r1, r3
 934 0196 13F8012F 		ldrb	r2, [r3, #1]!	@ zero_extendqisi2
 935 019a 202A     		cmp	r2, #32
 936 019c F9D1     		bne	.L181
 937 019e 0130     		adds	r0, r0, #1
 938              	.L179:
 939 01a0 2318     		adds	r3, r4, r0
 940 01a2 6067     		str	r0, [r4, #116]
 941 01a4 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 942 01a6 2A2B     		cmp	r3, #42
 943 01a8 2CD0     		beq	.L196
 944 01aa 002B     		cmp	r3, #0
 945 01ac 88D0     		beq	.L197
 946 01ae 2118     		adds	r1, r4, r0
 947 01b0 0C31     		adds	r1, r1, #12
 948 01b2 0022     		movs	r2, #0
 949 01b4 01E0     		b	.L192
 950              	.L238:
 951 01b6 002B     		cmp	r3, #0
 952 01b8 83D0     		beq	.L185
 953              	.L192:
 954 01ba A018     		adds	r0, r4, r2
 955 01bc 0132     		adds	r2, r2, #1
 956 01be 0373     		strb	r3, [r0, #12]
 957 01c0 11F8013F 		ldrb	r3, [r1, #1]!	@ zero_extendqisi2
 958 01c4 2A2B     		cmp	r3, #42
 959 01c6 F6D1     		bne	.L238
 960 01c8 7BE7     		b	.L185
 961              	.L237:
 962 01ca A567     		str	r5, [r4, #120]
 963              	.L174:
 964 01cc 2046     		mov	r0, r4
 965 01ce FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 966 01d2 6421     		movs	r1, #100
 967 01d4 0346     		mov	r3, r0
 968 01d6 0F4A     		ldr	r2, .L239+12
 969 01d8 3046     		mov	r0, r6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV7Pad8.s 			page 18


 970 01da FFF7FEFF 		bl	snprintf
 971 01de C2E7     		b	.L172
 972              	.L180:
 973 01e0 0020     		movs	r0, #0
 974 01e2 4FF0FF33 		mov	r3, #-1
 975 01e6 2073     		strb	r0, [r4, #12]
 976 01e8 6067     		str	r0, [r4, #116]
 977 01ea 2071     		strb	r0, [r4, #4]
 978 01ec 84F87C00 		strb	r0, [r4, #124]
 979 01f0 C4F88000 		str	r0, [r4, #128]
 980 01f4 A367     		str	r3, [r4, #120]
 981 01f6 19E7     		b	.L227
 982              	.L194:
 983 01f8 0022     		movs	r2, #0
 984 01fa 9AE7     		b	.L168
 985              	.L195:
 986 01fc 2A46     		mov	r2, r5
 987 01fe 98E7     		b	.L168
 988              	.L193:
 989 0200 0120     		movs	r0, #1
 990 0202 CDE7     		b	.L179
 991              	.L196:
 992 0204 0022     		movs	r2, #0
 993 0206 5CE7     		b	.L185
 994              	.L240:
 995              		.align	2
 996              	.L239:
 997 0208 00000000 		.word	reprap
 998 020c 94020000 		.word	.LC16
 999 0210 68020000 		.word	.LC15
 1000 0214 9C020000 		.word	.LC17
 1001              		.size	_ZN11GCodeBuffer3PutEc, .-_ZN11GCodeBuffer3PutEc
 1002              		.section	.text._ZN11GCodeBuffer3PutEPKcj,"ax",%progbits
 1003              		.align	2
 1004              		.global	_ZN11GCodeBuffer3PutEPKcj
 1005              		.thumb
 1006              		.thumb_func
 1007              		.type	_ZN11GCodeBuffer3PutEPKcj, %function
 1008              	_ZN11GCodeBuffer3PutEPKcj:
 1009              		@ args = 0, pretend = 0, frame = 0
 1010              		@ frame_needed = 0, uses_anonymous_args = 0
 1011 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1012 0002 0646     		mov	r6, r0
 1013 0004 0D46     		mov	r5, r1
 1014 0006 1746     		mov	r7, r2
 1015 0008 0024     		movs	r4, #0
 1016              	.L243:
 1017 000a 295D     		ldrb	r1, [r5, r4]	@ zero_extendqisi2
 1018 000c 3046     		mov	r0, r6
 1019 000e 0134     		adds	r4, r4, #1
 1020 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEc
 1021 0014 10B9     		cbnz	r0, .L244
 1022 0016 A742     		cmp	r7, r4
 1023 0018 F7D2     		bcs	.L243
 1024 001a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1025              	.L244:
 1026 001c 0120     		movs	r0, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV7Pad8.s 			page 19


 1027 001e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1028              		.size	_ZN11GCodeBuffer3PutEPKcj, .-_ZN11GCodeBuffer3PutEPKcj
 1029              		.section	.text._ZN11GCodeBuffer12TryGetFValueEcRfRb,"ax",%progbits
 1030              		.align	2
 1031              		.global	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1032              		.thumb
 1033              		.thumb_func
 1034              		.type	_ZN11GCodeBuffer12TryGetFValueEcRfRb, %function
 1035              	_ZN11GCodeBuffer12TryGetFValueEcRfRb:
 1036              		@ args = 0, pretend = 0, frame = 0
 1037              		@ frame_needed = 0, uses_anonymous_args = 0
 1038 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 1039 0004 047B     		ldrb	r4, [r0, #12]	@ zero_extendqisi2
 1040 0006 0025     		movs	r5, #0
 1041 0008 8567     		str	r5, [r0, #120]
 1042 000a 9046     		mov	r8, r2
 1043 000c 9946     		mov	r9, r3
 1044 000e 94B1     		cbz	r4, .L249
 1045 0010 3B2C     		cmp	r4, #59
 1046 0012 10D0     		beq	.L249
 1047 0014 A142     		cmp	r1, r4
 1048 0016 14D0     		beq	.L250
 1049 0018 6FF00A06 		mvn	r6, #10
 1050 001c 361A     		subs	r6, r6, r0
 1051 001e 00F10C05 		add	r5, r0, #12
 1052 0022 03E0     		b	.L251
 1053              	.L254:
 1054 0024 3B2C     		cmp	r4, #59
 1055 0026 06D0     		beq	.L249
 1056 0028 A142     		cmp	r1, r4
 1057 002a 09D0     		beq	.L258
 1058              	.L251:
 1059 002c 7719     		adds	r7, r6, r5
 1060 002e 15F8014F 		ldrb	r4, [r5, #1]!	@ zero_extendqisi2
 1061 0032 002C     		cmp	r4, #0
 1062 0034 F6D1     		bne	.L254
 1063              	.L249:
 1064 0036 4FF0FF33 		mov	r3, #-1
 1065 003a 8367     		str	r3, [r0, #120]
 1066 003c BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1067              	.L258:
 1068 0040 8767     		str	r7, [r0, #120]
 1069              	.L250:
 1070 0042 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1071 0046 0123     		movs	r3, #1
 1072 0048 C8F80000 		str	r0, [r8]	@ float
 1073 004c 89F80030 		strb	r3, [r9]
 1074 0050 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1075              		.size	_ZN11GCodeBuffer12TryGetFValueEcRfRb, .-_ZN11GCodeBuffer12TryGetFValueEcRfRb
 1076              		.section	.text._ZN11GCodeBuffer12TryGetIValueEcRlRb,"ax",%progbits
 1077              		.align	2
 1078              		.global	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 1079              		.thumb
 1080              		.thumb_func
 1081              		.type	_ZN11GCodeBuffer12TryGetIValueEcRlRb, %function
 1082              	_ZN11GCodeBuffer12TryGetIValueEcRlRb:
 1083              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV7Pad8.s 			page 20


 1084              		@ frame_needed = 0, uses_anonymous_args = 0
 1085 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 1086 0004 047B     		ldrb	r4, [r0, #12]	@ zero_extendqisi2
 1087 0006 0025     		movs	r5, #0
 1088 0008 8567     		str	r5, [r0, #120]
 1089 000a 9046     		mov	r8, r2
 1090 000c 9946     		mov	r9, r3
 1091 000e 94B1     		cbz	r4, .L262
 1092 0010 3B2C     		cmp	r4, #59
 1093 0012 10D0     		beq	.L262
 1094 0014 A142     		cmp	r1, r4
 1095 0016 14D0     		beq	.L263
 1096 0018 6FF00A06 		mvn	r6, #10
 1097 001c 361A     		subs	r6, r6, r0
 1098 001e 00F10C05 		add	r5, r0, #12
 1099 0022 03E0     		b	.L264
 1100              	.L267:
 1101 0024 3B2C     		cmp	r4, #59
 1102 0026 06D0     		beq	.L262
 1103 0028 A142     		cmp	r1, r4
 1104 002a 09D0     		beq	.L271
 1105              	.L264:
 1106 002c 7719     		adds	r7, r6, r5
 1107 002e 15F8014F 		ldrb	r4, [r5, #1]!	@ zero_extendqisi2
 1108 0032 002C     		cmp	r4, #0
 1109 0034 F6D1     		bne	.L267
 1110              	.L262:
 1111 0036 4FF0FF33 		mov	r3, #-1
 1112 003a 8367     		str	r3, [r0, #120]
 1113 003c BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1114              	.L271:
 1115 0040 8767     		str	r7, [r0, #120]
 1116              	.L263:
 1117 0042 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1118 0046 0123     		movs	r3, #1
 1119 0048 C8F80000 		str	r0, [r8]
 1120 004c 89F80030 		strb	r3, [r9]
 1121 0050 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1122              		.size	_ZN11GCodeBuffer12TryGetIValueEcRlRb, .-_ZN11GCodeBuffer12TryGetIValueEcRlRb
 1123              		.section	.text._ZNK11GCodeBuffer20OriginalMachineStateEv,"ax",%progbits
 1124              		.align	2
 1125              		.global	_ZNK11GCodeBuffer20OriginalMachineStateEv
 1126              		.thumb
 1127              		.thumb_func
 1128              		.type	_ZNK11GCodeBuffer20OriginalMachineStateEv, %function
 1129              	_ZNK11GCodeBuffer20OriginalMachineStateEv:
 1130              		@ args = 0, pretend = 0, frame = 0
 1131              		@ frame_needed = 0, uses_anonymous_args = 0
 1132              		@ link register save eliminated.
 1133 0000 8068     		ldr	r0, [r0, #8]
 1134 0002 00E0     		b	.L274
 1135              	.L275:
 1136 0004 1846     		mov	r0, r3
 1137              	.L274:
 1138 0006 0368     		ldr	r3, [r0]
 1139 0008 002B     		cmp	r3, #0
 1140 000a FBD1     		bne	.L275
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV7Pad8.s 			page 21


 1141 000c 7047     		bx	lr
 1142              		.size	_ZNK11GCodeBuffer20OriginalMachineStateEv, .-_ZNK11GCodeBuffer20OriginalMachineStateEv
 1143 000e 00BF     		.section	.text._ZN11GCodeBuffer9PushStateEv,"ax",%progbits
 1144              		.align	2
 1145              		.global	_ZN11GCodeBuffer9PushStateEv
 1146              		.thumb
 1147              		.thumb_func
 1148              		.type	_ZN11GCodeBuffer9PushStateEv, %function
 1149              	_ZN11GCodeBuffer9PushStateEv:
 1150              		@ args = 0, pretend = 0, frame = 0
 1151              		@ frame_needed = 0, uses_anonymous_args = 0
 1152 0000 8368     		ldr	r3, [r0, #8]
 1153 0002 70B5     		push	{r4, r5, r6, lr}
 1154 0004 0546     		mov	r5, r0
 1155 0006 43B1     		cbz	r3, .L277
 1156 0008 0022     		movs	r2, #0
 1157              	.L279:
 1158 000a 1B68     		ldr	r3, [r3]
 1159 000c 0132     		adds	r2, r2, #1
 1160 000e 002B     		cmp	r3, #0
 1161 0010 FBD1     		bne	.L279
 1162 0012 052A     		cmp	r2, #5
 1163 0014 01D9     		bls	.L277
 1164 0016 1846     		mov	r0, r3
 1165 0018 70BD     		pop	{r4, r5, r6, pc}
 1166              	.L277:
 1167 001a FFF7FEFF 		bl	_ZN17GCodeMachineState8AllocateEv
 1168 001e AE68     		ldr	r6, [r5, #8]
 1169 0020 437C     		ldrb	r3, [r0, #17]	@ zero_extendqisi2
 1170 0022 727C     		ldrb	r2, [r6, #17]	@ zero_extendqisi2
 1171 0024 7168     		ldr	r1, [r6, #4]	@ float
 1172 0026 0446     		mov	r4, r0
 1173 0028 62F30003 		bfi	r3, r2, #0, #1
 1174 002c 8068     		ldr	r0, [r0, #8]
 1175 002e 6374     		strb	r3, [r4, #17]
 1176 0030 727C     		ldrb	r2, [r6, #17]	@ zero_extendqisi2
 1177 0032 2660     		str	r6, [r4]
 1178 0034 C2F34002 		ubfx	r2, r2, #1, #1
 1179 0038 DBB2     		uxtb	r3, r3
 1180 003a 62F34103 		bfi	r3, r2, #1, #1
 1181 003e 6374     		strb	r3, [r4, #17]
 1182 0040 727C     		ldrb	r2, [r6, #17]	@ zero_extendqisi2
 1183 0042 6160     		str	r1, [r4, #4]	@ float
 1184 0044 DBB2     		uxtb	r3, r3
 1185 0046 C2F38002 		ubfx	r2, r2, #2, #1
 1186 004a 62F38203 		bfi	r3, r2, #2, #1
 1187 004e 6374     		strb	r3, [r4, #17]
 1188 0050 18B1     		cbz	r0, .L281
 1189 0052 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1190 0056 0023     		movs	r3, #0
 1191 0058 A360     		str	r3, [r4, #8]
 1192              	.L281:
 1193 005a B068     		ldr	r0, [r6, #8]
 1194 005c A060     		str	r0, [r4, #8]
 1195 005e 08B1     		cbz	r0, .L282
 1196 0060 FFF7FEFF 		bl	_ZN9FileStore9DuplicateEv
 1197              	.L282:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV7Pad8.s 			page 22


 1198 0064 AB68     		ldr	r3, [r5, #8]
 1199 0066 DB68     		ldr	r3, [r3, #12]
 1200 0068 E360     		str	r3, [r4, #12]
 1201 006a 0120     		movs	r0, #1
 1202 006c AC60     		str	r4, [r5, #8]
 1203 006e 70BD     		pop	{r4, r5, r6, pc}
 1204              		.size	_ZN11GCodeBuffer9PushStateEv, .-_ZN11GCodeBuffer9PushStateEv
 1205              		.section	.text._ZN11GCodeBuffer8PopStateEv,"ax",%progbits
 1206              		.align	2
 1207              		.global	_ZN11GCodeBuffer8PopStateEv
 1208              		.thumb
 1209              		.thumb_func
 1210              		.type	_ZN11GCodeBuffer8PopStateEv, %function
 1211              	_ZN11GCodeBuffer8PopStateEv:
 1212              		@ args = 0, pretend = 0, frame = 0
 1213              		@ frame_needed = 0, uses_anonymous_args = 0
 1214 0000 8268     		ldr	r2, [r0, #8]
 1215 0002 08B5     		push	{r3, lr}
 1216 0004 1368     		ldr	r3, [r2]
 1217 0006 2BB1     		cbz	r3, .L295
 1218 0008 8360     		str	r3, [r0, #8]
 1219 000a 1046     		mov	r0, r2
 1220 000c FFF7FEFF 		bl	_ZN17GCodeMachineState7ReleaseEPS_
 1221 0010 0120     		movs	r0, #1
 1222 0012 08BD     		pop	{r3, pc}
 1223              	.L295:
 1224 0014 1846     		mov	r0, r3
 1225 0016 08BD     		pop	{r3, pc}
 1226              		.size	_ZN11GCodeBuffer8PopStateEv, .-_ZN11GCodeBuffer8PopStateEv
 1227              		.section	.text._ZNK11GCodeBuffer16IsDoingFileMacroEv,"ax",%progbits
 1228              		.align	2
 1229              		.global	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 1230              		.thumb
 1231              		.thumb_func
 1232              		.type	_ZNK11GCodeBuffer16IsDoingFileMacroEv, %function
 1233              	_ZNK11GCodeBuffer16IsDoingFileMacroEv:
 1234              		@ args = 0, pretend = 0, frame = 0
 1235              		@ frame_needed = 0, uses_anonymous_args = 0
 1236              		@ link register save eliminated.
 1237 0000 8368     		ldr	r3, [r0, #8]
 1238 0002 587C     		ldrb	r0, [r3, #17]	@ zero_extendqisi2
 1239 0004 C0F38000 		ubfx	r0, r0, #2, #1
 1240 0008 7047     		bx	lr
 1241              		.size	_ZNK11GCodeBuffer16IsDoingFileMacroEv, .-_ZNK11GCodeBuffer16IsDoingFileMacroEv
 1242 000a 00BF     		.section	.rodata.str1.4,"aMS",%progbits,1
 1243              		.align	2
 1244              	.LC0:
 1245 0000 25732069 		.ascii	"%s is idle\000"
 1245      73206964 
 1245      6C6500
 1246 000b 00       		.space	1
 1247              	.LC1:
 1248 000c 25732069 		.ascii	"%s is ready with \"%s\"\000"
 1248      73207265 
 1248      61647920 
 1248      77697468 
 1248      20222573 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV7Pad8.s 			page 23


 1249 0022 0000     		.space	2
 1250              	.LC2:
 1251 0024 25732069 		.ascii	"%s is doing \"%s\"\000"
 1251      7320646F 
 1251      696E6720 
 1251      22257322 
 1251      00
 1252 0035 000000   		.space	3
 1253              	.LC3:
 1254 0038 20696E20 		.ascii	" in state(s)\000"
 1254      73746174 
 1254      65287329 
 1254      00
 1255 0045 000000   		.space	3
 1256              	.LC4:
 1257 0048 20256400 		.ascii	" %d\000"
 1258              	.LC5:
 1259 004c 20090A0D 		.ascii	" \011\012\015\000"
 1259      00
 1260 0051 000000   		.space	3
 1261              	.LC6:
 1262 0054 4572726F 		.ascii	"Error: GCodes: Attempt to read a GCode float before"
 1262      723A2047 
 1262      436F6465 
 1262      733A2041 
 1262      7474656D 
 1263 0087 20612073 		.ascii	" a search.\012\000"
 1263      65617263 
 1263      682E0A00 
 1264 0093 00       		.space	1
 1265              	.LC7:
 1266 0094 4572726F 		.ascii	"Error: GCodes: Attempt to read a GCode float array "
 1266      723A2047 
 1266      436F6465 
 1266      733A2041 
 1266      7474656D 
 1267 00c7 6265666F 		.ascii	"before a search.\012\000"
 1267      72652061 
 1267      20736561 
 1267      7263682E 
 1267      0A00
 1268 00d9 000000   		.space	3
 1269              	.LC8:
 1270 00dc 4572726F 		.ascii	"Error: GCodes: Attempt to read a GCode float array "
 1270      723A2047 
 1270      436F6465 
 1270      733A2041 
 1270      7474656D 
 1271 010f 74686174 		.ascii	"that is too long: %s\012\000"
 1271      20697320 
 1271      746F6F20 
 1271      6C6F6E67 
 1271      3A202573 
 1272 0125 000000   		.space	3
 1273              	.LC9:
 1274 0128 4572726F 		.ascii	"Error: GCodes: Attempt to read a GCode long array b"
 1274      723A2047 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV7Pad8.s 			page 24


 1274      436F6465 
 1274      733A2041 
 1274      7474656D 
 1275 015b 65666F72 		.ascii	"efore a search.\012\000"
 1275      65206120 
 1275      73656172 
 1275      63682E0A 
 1275      00
 1276              	.LC10:
 1277 016c 4572726F 		.ascii	"Error: GCodes: Attempt to read a GCode long array t"
 1277      723A2047 
 1277      436F6465 
 1277      733A2041 
 1277      7474656D 
 1278 019f 68617420 		.ascii	"hat is too long: %s\012\000"
 1278      69732074 
 1278      6F6F206C 
 1278      6F6E673A 
 1278      2025730A 
 1279              	.LC11:
 1280 01b4 00       		.ascii	"\000"
 1281 01b5 000000   		.space	3
 1282              	.LC12:
 1283 01b8 4572726F 		.ascii	"Error: GCodes: Attempt to read a GCode string befor"
 1283      723A2047 
 1283      436F6465 
 1283      733A2041 
 1283      7474656D 
 1284 01eb 65206120 		.ascii	"e a search.\012\000"
 1284      73656172 
 1284      63682E0A 
 1284      00
 1285              	.LC13:
 1286 01f8 4572726F 		.ascii	"Error: GCodes: String expected but not seen.\012\000"
 1286      723A2047 
 1286      436F6465 
 1286      733A2053 
 1286      7472696E 
 1287 0226 0000     		.space	2
 1288              	.LC14:
 1289 0228 4572726F 		.ascii	"Error: GCodes: Attempt to read a GCode int before a"
 1289      723A2047 
 1289      436F6465 
 1289      733A2041 
 1289      7474656D 
 1290 025b 20736561 		.ascii	" search.\012\000"
 1290      7263682E 
 1290      0A00
 1291 0265 000000   		.space	3
 1292              	.LC15:
 1293 0268 4572726F 		.ascii	"Error: G-Code buffer '$s' length overflow\012\000"
 1293      723A2047 
 1293      2D436F64 
 1293      65206275 
 1293      66666572 
 1294 0293 00       		.space	1
 1295              	.LC16:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccV7Pad8.s 			page 25


 1296 0294 25733A20 		.ascii	"%s: %s\012\000"
 1296      25730A00 
 1297              	.LC17:
 1298 029c 4D393938 		.ascii	"M998 P%ld\000"
 1298      2050256C 
 1298      6400
 1299 02a6 0000     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1300              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1301              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1302              	_ZL28cpu_irq_prev_interrupt_state:
 1303 0000 00       		.space	1
 1304              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1305              		.align	2
 1306              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1307              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1308              	_ZL32cpu_irq_critical_section_counter:
 1309 0000 00000000 		.space	4
 1310              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
