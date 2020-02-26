ARM GAS  C:\Users\George\AppData\Local\Temp\ccjYrriS.s 			page 1


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
  14              		.file	"FileStore.cpp"
  15              		.section	.text._ZN9FileStoreC2EP8Platform,"ax",%progbits
  16              		.align	2
  17              		.global	_ZN9FileStoreC2EP8Platform
  18              		.thumb
  19              		.thumb_func
  20              		.type	_ZN9FileStoreC2EP8Platform, %function
  21              	_ZN9FileStoreC2EP8Platform:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0160     		str	r1, [r0]
  26 0002 7047     		bx	lr
  27              		.size	_ZN9FileStoreC2EP8Platform, .-_ZN9FileStoreC2EP8Platform
  28              		.global	_ZN9FileStoreC1EP8Platform
  29              		.thumb_set _ZN9FileStoreC1EP8Platform,_ZN9FileStoreC2EP8Platform
  30              		.section	.text._ZN9FileStore4InitEv,"ax",%progbits
  31              		.align	2
  32              		.global	_ZN9FileStore4InitEv
  33              		.thumb
  34              		.thumb_func
  35              		.type	_ZN9FileStore4InitEv, %function
  36              	_ZN9FileStore4InitEv:
  37              		@ args = 0, pretend = 0, frame = 0
  38              		@ frame_needed = 0, uses_anonymous_args = 0
  39              		@ link register save eliminated.
  40 0000 0023     		movs	r3, #0
  41 0002 8362     		str	r3, [r0, #40]
  42 0004 80F82D30 		strb	r3, [r0, #45]
  43 0008 80F82E30 		strb	r3, [r0, #46]
  44 000c 80F82C30 		strb	r3, [r0, #44]
  45 0010 7047     		bx	lr
  46              		.size	_ZN9FileStore4InitEv, .-_ZN9FileStore4InitEv
  47 0012 00BF     		.section	.text._ZN9FileStore10InvalidateEPK5FATFS,"ax",%progbits
  48              		.align	2
  49              		.global	_ZN9FileStore10InvalidateEPK5FATFS
  50              		.thumb
  51              		.thumb_func
  52              		.type	_ZN9FileStore10InvalidateEPK5FATFS, %function
  53              	_ZN9FileStore10InvalidateEPK5FATFS:
  54              		@ args = 0, pretend = 0, frame = 0
  55              		@ frame_needed = 0, uses_anonymous_args = 0
  56              		@ link register save eliminated.
  57 0000 4368     		ldr	r3, [r0, #4]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccjYrriS.s 			page 2


  58 0002 8B42     		cmp	r3, r1
  59 0004 00D0     		beq	.L6
  60 0006 7047     		bx	lr
  61              	.L6:
  62 0008 0023     		movs	r3, #0
  63 000a 8362     		str	r3, [r0, #40]
  64 000c 80F82D30 		strb	r3, [r0, #45]
  65 0010 80F82E30 		strb	r3, [r0, #46]
  66 0014 80F82C30 		strb	r3, [r0, #44]
  67 0018 4360     		str	r3, [r0, #4]
  68 001a 7047     		bx	lr
  69              		.size	_ZN9FileStore10InvalidateEPK5FATFS, .-_ZN9FileStore10InvalidateEPK5FATFS
  70              		.section	.text._ZNK9FileStore8IsOpenOnEPK5FATFS,"ax",%progbits
  71              		.align	2
  72              		.global	_ZNK9FileStore8IsOpenOnEPK5FATFS
  73              		.thumb
  74              		.thumb_func
  75              		.type	_ZNK9FileStore8IsOpenOnEPK5FATFS, %function
  76              	_ZNK9FileStore8IsOpenOnEPK5FATFS:
  77              		@ args = 0, pretend = 0, frame = 0
  78              		@ frame_needed = 0, uses_anonymous_args = 0
  79              		@ link register save eliminated.
  80 0000 836A     		ldr	r3, [r0, #40]
  81 0002 23B1     		cbz	r3, .L9
  82 0004 4068     		ldr	r0, [r0, #4]
  83 0006 431A     		subs	r3, r0, r1
  84 0008 5842     		rsbs	r0, r3, #0
  85 000a 5841     		adcs	r0, r0, r3
  86 000c 7047     		bx	lr
  87              	.L9:
  88 000e 1846     		mov	r0, r3
  89 0010 7047     		bx	lr
  90              		.size	_ZNK9FileStore8IsOpenOnEPK5FATFS, .-_ZNK9FileStore8IsOpenOnEPK5FATFS
  91 0012 00BF     		.section	.text._ZN9FileStore4OpenEPKcS1_b,"ax",%progbits
  92              		.align	2
  93              		.global	_ZN9FileStore4OpenEPKcS1_b
  94              		.thumb
  95              		.thumb_func
  96              		.type	_ZN9FileStore4OpenEPKcS1_b, %function
  97              	_ZN9FileStore4OpenEPKcS1_b:
  98              		@ args = 0, pretend = 0, frame = 112
  99              		@ frame_needed = 0, uses_anonymous_args = 0
 100 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 101 0004 0746     		mov	r7, r0
 102 0006 9EB0     		sub	sp, sp, #120
 103 0008 1C46     		mov	r4, r3
 104 000a 9146     		mov	r9, r2
 105 000c 29B1     		cbz	r1, .L11
 106 000e 0368     		ldr	r3, [r0]
 107 0010 D3F8B406 		ldr	r0, [r3, #1716]
 108 0014 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameEPKcS1_
 109 0018 8146     		mov	r9, r0
 110              	.L11:
 111 001a 87F82E40 		strb	r4, [r7, #46]
 112 001e 44BB     		cbnz	r4, .L33
 113 0020 381D     		adds	r0, r7, #4
 114              	.L22:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccjYrriS.s 			page 3


 115 0022 0122     		movs	r2, #1
 116 0024 4946     		mov	r1, r9
 117 0026 FFF7FEFF 		bl	f_open
 118 002a D0B1     		cbz	r0, .L19
 119              	.L37:
 120 002c 3C4B     		ldr	r3, .L38
 121 002e B3F84050 		ldrh	r5, [r3, #64]
 122 0032 15F00105 		ands	r5, r5, #1
 123 0036 18D0     		beq	.L31
 124 0038 97F82E40 		ldrb	r4, [r7, #46]	@ zero_extendqisi2
 125 003c 394B     		ldr	r3, .L38+4
 126 003e 3A4A     		ldr	r2, .L38+8
 127 0040 3968     		ldr	r1, [r7]
 128 0042 002C     		cmp	r4, #0
 129 0044 18BF     		it	ne
 130 0046 1A46     		movne	r2, r3
 131 0048 0190     		str	r0, [sp, #4]
 132 004a 0092     		str	r2, [sp]
 133 004c 0846     		mov	r0, r1
 134 004e 4B46     		mov	r3, r9
 135 0050 0621     		movs	r1, #6
 136 0052 364A     		ldr	r2, .L38+12
 137 0054 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 138 0058 0025     		movs	r5, #0
 139 005a 2846     		mov	r0, r5
 140 005c 1EB0     		add	sp, sp, #120
 141              		@ sp needed
 142 005e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 143              	.L19:
 144 0062 0125     		movs	r5, #1
 145 0064 87F82D50 		strb	r5, [r7, #45]
 146 0068 BD62     		str	r5, [r7, #40]
 147              	.L31:
 148 006a 2846     		mov	r0, r5
 149 006c 1EB0     		add	sp, sp, #120
 150              		@ sp needed
 151 006e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 152              	.L33:
 153 0072 0023     		movs	r3, #0
 154 0074 05AC     		add	r4, sp, #20
 155 0076 6422     		movs	r2, #100
 156 0078 03A8     		add	r0, sp, #12
 157 007a 4946     		mov	r1, r9
 158 007c 0394     		str	r4, [sp, #12]
 159 007e 8DF81430 		strb	r3, [sp, #20]
 160 0082 0492     		str	r2, [sp, #16]
 161 0084 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 162 0088 039B     		ldr	r3, [sp, #12]
 163 008a 0124     		movs	r4, #1
 164 008c 93F80080 		ldrb	r8, [r3]	@ zero_extendqisi2
 165 0090 4FF02F0A 		mov	r10, #47
 166 0094 A8F13008 		sub	r8, r8, #48
 167 0098 B8F1090F 		cmp	r8, #9
 168 009c 8CBF     		ite	hi
 169 009e 4FF00008 		movhi	r8, #0
 170 00a2 4FF00108 		movls	r8, #1
 171 00a6 00E0     		b	.L13
ARM GAS  C:\Users\George\AppData\Local\Temp\ccjYrriS.s 			page 4


 172              	.L14:
 173 00a8 0134     		adds	r4, r4, #1
 174              	.L13:
 175 00aa 03A8     		add	r0, sp, #12
 176 00ac FFF7FEFF 		bl	_ZNK9StringRef6strlenEv
 177 00b0 8442     		cmp	r4, r0
 178 00b2 17D2     		bcs	.L34
 179 00b4 039D     		ldr	r5, [sp, #12]
 180 00b6 2E5D     		ldrb	r6, [r5, r4]	@ zero_extendqisi2
 181 00b8 2544     		add	r5, r5, r4
 182 00ba 2F2E     		cmp	r6, #47
 183 00bc F4D1     		bne	.L14
 184 00be B8F1000F 		cmp	r8, #0
 185 00c2 02D0     		beq	.L35
 186 00c4 4FF00008 		mov	r8, #0
 187 00c8 EEE7     		b	.L14
 188              	.L35:
 189 00ca 85F80080 		strb	r8, [r5]
 190 00ce 3B68     		ldr	r3, [r7]
 191 00d0 0399     		ldr	r1, [sp, #12]
 192 00d2 D3F8B406 		ldr	r0, [r3, #1716]
 193 00d6 FFF7FEFF 		bl	_ZNK11MassStorage15DirectoryExistsEPKc
 194 00da 78B1     		cbz	r0, .L36
 195              	.L15:
 196 00dc 039B     		ldr	r3, [sp, #12]
 197 00de 03F804A0 		strb	r10, [r3, r4]
 198 00e2 E1E7     		b	.L14
 199              	.L34:
 200 00e4 97F82E30 		ldrb	r3, [r7, #46]	@ zero_extendqisi2
 201 00e8 381D     		adds	r0, r7, #4
 202 00ea 0A22     		movs	r2, #10
 203 00ec 002B     		cmp	r3, #0
 204 00ee 98D0     		beq	.L22
 205 00f0 4946     		mov	r1, r9
 206 00f2 FFF7FEFF 		bl	f_open
 207 00f6 0028     		cmp	r0, #0
 208 00f8 B3D0     		beq	.L19
 209 00fa 97E7     		b	.L37
 210              	.L36:
 211 00fc 3B68     		ldr	r3, [r7]
 212 00fe 0399     		ldr	r1, [sp, #12]
 213 0100 D3F8B406 		ldr	r0, [r3, #1716]
 214 0104 FFF7FEFF 		bl	_ZN11MassStorage13MakeDirectoryEPKc
 215 0108 0546     		mov	r5, r0
 216 010a 0028     		cmp	r0, #0
 217 010c E6D1     		bne	.L15
 218 010e 3868     		ldr	r0, [r7]
 219 0110 039B     		ldr	r3, [sp, #12]
 220 0112 CDF80090 		str	r9, [sp]
 221 0116 0621     		movs	r1, #6
 222 0118 054A     		ldr	r2, .L38+16
 223 011a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 224 011e A4E7     		b	.L31
 225              	.L39:
 226              		.align	2
 227              	.L38:
 228 0120 00000000 		.word	reprap
ARM GAS  C:\Users\George\AppData\Local\Temp\ccjYrriS.s 			page 5


 229 0124 00000000 		.word	.LC0
 230 0128 08000000 		.word	.LC1
 231 012c 10000000 		.word	.LC2
 232 0130 34000000 		.word	.LC3
 233              		.size	_ZN9FileStore4OpenEPKcS1_b, .-_ZN9FileStore4OpenEPKcS1_b
 234              		.section	.text._ZN9FileStore9DuplicateEv,"ax",%progbits
 235              		.align	2
 236              		.global	_ZN9FileStore9DuplicateEv
 237              		.thumb
 238              		.thumb_func
 239              		.type	_ZN9FileStore9DuplicateEv, %function
 240              	_ZN9FileStore9DuplicateEv:
 241              		@ args = 0, pretend = 0, frame = 0
 242              		@ frame_needed = 0, uses_anonymous_args = 0
 243              		@ link register save eliminated.
 244 0000 90F82D30 		ldrb	r3, [r0, #45]	@ zero_extendqisi2
 245 0004 93B1     		cbz	r3, .L43
 246              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 247 0006 EFF31082 		MRS r2, primask
 248              	@ 0 "" 2
 249              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 250 000a 72B6     		cpsid i
 251              	@ 0 "" 2
 252              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 253 000c BFF35F8F 		dmb
 254              	@ 0 "" 2
 255              		.thumb
 256 0010 094B     		ldr	r3, .L45
 257 0012 0021     		movs	r1, #0
 258 0014 1970     		strb	r1, [r3]
 259 0016 816A     		ldr	r1, [r0, #40]
 260 0018 0131     		adds	r1, r1, #1
 261 001a 8162     		str	r1, [r0, #40]
 262 001c 02B1     		cbz	r2, .L44
 263 001e 7047     		bx	lr
 264              	.L44:
 265 0020 0122     		movs	r2, #1
 266 0022 1A70     		strb	r2, [r3]
 267              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 268 0024 BFF35F8F 		dmb
 269              	@ 0 "" 2
 270              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 271 0028 62B6     		cpsie i
 272              	@ 0 "" 2
 273              		.thumb
 274 002a 7047     		bx	lr
 275              	.L43:
 276 002c 0068     		ldr	r0, [r0]
 277 002e 0621     		movs	r1, #6
 278 0030 024A     		ldr	r2, .L45+4
 279 0032 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 280              	.L46:
 281 0036 00BF     		.align	2
 282              	.L45:
 283 0038 00000000 		.word	g_interrupt_enabled
 284 003c 70000000 		.word	.LC4
 285              		.size	_ZN9FileStore9DuplicateEv, .-_ZN9FileStore9DuplicateEv
ARM GAS  C:\Users\George\AppData\Local\Temp\ccjYrriS.s 			page 6


 286              		.section	.text._ZN9FileStore4SeekEm,"ax",%progbits
 287              		.align	2
 288              		.global	_ZN9FileStore4SeekEm
 289              		.thumb
 290              		.thumb_func
 291              		.type	_ZN9FileStore4SeekEm, %function
 292              	_ZN9FileStore4SeekEm:
 293              		@ args = 0, pretend = 0, frame = 0
 294              		@ frame_needed = 0, uses_anonymous_args = 0
 295 0000 10B5     		push	{r4, lr}
 296 0002 90F82D40 		ldrb	r4, [r0, #45]	@ zero_extendqisi2
 297 0006 44B1     		cbz	r4, .L50
 298 0008 0430     		adds	r0, r0, #4
 299 000a FFF7FEFF 		bl	f_lseek
 300 000e D0F10104 		rsbs	r4, r0, #1
 301 0012 38BF     		it	cc
 302 0014 0024     		movcc	r4, #0
 303 0016 2046     		mov	r0, r4
 304 0018 10BD     		pop	{r4, pc}
 305              	.L50:
 306 001a 0068     		ldr	r0, [r0]
 307 001c 0621     		movs	r1, #6
 308 001e 024A     		ldr	r2, .L51
 309 0020 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 310 0024 2046     		mov	r0, r4
 311 0026 10BD     		pop	{r4, pc}
 312              	.L52:
 313              		.align	2
 314              	.L51:
 315 0028 98000000 		.word	.LC5
 316              		.size	_ZN9FileStore4SeekEm, .-_ZN9FileStore4SeekEm
 317              		.section	.text._ZNK9FileStore8PositionEv,"ax",%progbits
 318              		.align	2
 319              		.global	_ZNK9FileStore8PositionEv
 320              		.thumb
 321              		.thumb_func
 322              		.type	_ZNK9FileStore8PositionEv, %function
 323              	_ZNK9FileStore8PositionEv:
 324              		@ args = 0, pretend = 0, frame = 0
 325              		@ frame_needed = 0, uses_anonymous_args = 0
 326              		@ link register save eliminated.
 327 0000 C068     		ldr	r0, [r0, #12]
 328 0002 7047     		bx	lr
 329              		.size	_ZNK9FileStore8PositionEv, .-_ZNK9FileStore8PositionEv
 330              		.section	.text._ZNK9FileStore6LengthEv,"ax",%progbits
 331              		.align	2
 332              		.global	_ZNK9FileStore6LengthEv
 333              		.thumb
 334              		.thumb_func
 335              		.type	_ZNK9FileStore6LengthEv, %function
 336              	_ZNK9FileStore6LengthEv:
 337              		@ args = 0, pretend = 0, frame = 0
 338              		@ frame_needed = 0, uses_anonymous_args = 0
 339 0000 10B5     		push	{r4, lr}
 340 0002 90F82D40 		ldrb	r4, [r0, #45]	@ zero_extendqisi2
 341 0006 0CB1     		cbz	r4, .L57
 342 0008 0069     		ldr	r0, [r0, #16]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccjYrriS.s 			page 7


 343 000a 10BD     		pop	{r4, pc}
 344              	.L57:
 345 000c 0068     		ldr	r0, [r0]
 346 000e 0621     		movs	r1, #6
 347 0010 024A     		ldr	r2, .L58
 348 0012 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 349 0016 2046     		mov	r0, r4
 350 0018 10BD     		pop	{r4, pc}
 351              	.L59:
 352 001a 00BF     		.align	2
 353              	.L58:
 354 001c C4000000 		.word	.LC6
 355              		.size	_ZNK9FileStore6LengthEv, .-_ZNK9FileStore6LengthEv
 356              		.global	__aeabi_ui2f
 357              		.global	__aeabi_fdiv
 358              		.section	.text._ZNK9FileStore12FractionReadEv,"ax",%progbits
 359              		.align	2
 360              		.global	_ZNK9FileStore12FractionReadEv
 361              		.thumb
 362              		.thumb_func
 363              		.type	_ZNK9FileStore12FractionReadEv, %function
 364              	_ZNK9FileStore12FractionReadEv:
 365              		@ args = 0, pretend = 0, frame = 0
 366              		@ frame_needed = 0, uses_anonymous_args = 0
 367 0000 38B5     		push	{r3, r4, r5, lr}
 368 0002 90F82D30 		ldrb	r3, [r0, #45]	@ zero_extendqisi2
 369 0006 6BB1     		cbz	r3, .L64
 370 0008 0469     		ldr	r4, [r0, #16]
 371 000a 94B1     		cbz	r4, .L63
 372 000c C068     		ldr	r0, [r0, #12]
 373 000e FFF7FEFF 		bl	__aeabi_ui2f
 374 0012 0546     		mov	r5, r0
 375 0014 2046     		mov	r0, r4
 376 0016 FFF7FEFF 		bl	__aeabi_ui2f
 377 001a 0146     		mov	r1, r0
 378 001c 2846     		mov	r0, r5
 379 001e FFF7FEFF 		bl	__aeabi_fdiv
 380 0022 38BD     		pop	{r3, r4, r5, pc}
 381              	.L64:
 382 0024 0068     		ldr	r0, [r0]
 383 0026 0621     		movs	r1, #6
 384 0028 034A     		ldr	r2, .L65
 385 002a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 386 002e 0020     		movs	r0, #0
 387 0030 38BD     		pop	{r3, r4, r5, pc}
 388              	.L63:
 389 0032 0020     		movs	r0, #0
 390 0034 38BD     		pop	{r3, r4, r5, pc}
 391              	.L66:
 392 0036 00BF     		.align	2
 393              	.L65:
 394 0038 C4000000 		.word	.LC6
 395              		.size	_ZNK9FileStore12FractionReadEv, .-_ZNK9FileStore12FractionReadEv
 396              		.section	.text._ZN9FileStore4ReadEPcj,"ax",%progbits
 397              		.align	2
 398              		.global	_ZN9FileStore4ReadEPcj
 399              		.thumb
ARM GAS  C:\Users\George\AppData\Local\Temp\ccjYrriS.s 			page 8


 400              		.thumb_func
 401              		.type	_ZN9FileStore4ReadEPcj, %function
 402              	_ZN9FileStore4ReadEPcj:
 403              		@ args = 0, pretend = 0, frame = 8
 404              		@ frame_needed = 0, uses_anonymous_args = 0
 405 0000 10B5     		push	{r4, lr}
 406 0002 90F82D30 		ldrb	r3, [r0, #45]	@ zero_extendqisi2
 407 0006 82B0     		sub	sp, sp, #8
 408 0008 0446     		mov	r4, r0
 409 000a 3BB1     		cbz	r3, .L71
 410 000c 0430     		adds	r0, r0, #4
 411 000e 01AB     		add	r3, sp, #4
 412 0010 FFF7FEFF 		bl	f_read
 413 0014 50B9     		cbnz	r0, .L72
 414 0016 0198     		ldr	r0, [sp, #4]
 415              	.L69:
 416 0018 02B0     		add	sp, sp, #8
 417              		@ sp needed
 418 001a 10BD     		pop	{r4, pc}
 419              	.L71:
 420 001c 0068     		ldr	r0, [r0]
 421 001e 0621     		movs	r1, #6
 422 0020 064A     		ldr	r2, .L73
 423 0022 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 424 0026 4FF0FF30 		mov	r0, #-1
 425 002a F5E7     		b	.L69
 426              	.L72:
 427 002c 2068     		ldr	r0, [r4]
 428 002e 0621     		movs	r1, #6
 429 0030 034A     		ldr	r2, .L73+4
 430 0032 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 431 0036 4FF0FF30 		mov	r0, #-1
 432 003a EDE7     		b	.L69
 433              	.L74:
 434              		.align	2
 435              	.L73:
 436 003c EC000000 		.word	.LC7
 437 0040 1C010000 		.word	.LC8
 438              		.size	_ZN9FileStore4ReadEPcj, .-_ZN9FileStore4ReadEPcj
 439              		.section	.text._ZN9FileStore4ReadERc,"ax",%progbits
 440              		.align	2
 441              		.global	_ZN9FileStore4ReadERc
 442              		.thumb
 443              		.thumb_func
 444              		.type	_ZN9FileStore4ReadERc, %function
 445              	_ZN9FileStore4ReadERc:
 446              		@ args = 0, pretend = 0, frame = 0
 447              		@ frame_needed = 0, uses_anonymous_args = 0
 448 0000 08B5     		push	{r3, lr}
 449 0002 0122     		movs	r2, #1
 450 0004 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 451 0008 0030     		adds	r0, r0, #0
 452 000a 18BF     		it	ne
 453 000c 0120     		movne	r0, #1
 454 000e 08BD     		pop	{r3, pc}
 455              		.size	_ZN9FileStore4ReadERc, .-_ZN9FileStore4ReadERc
 456              		.section	.text._ZN9FileStore8ReadLineEPcj,"ax",%progbits
ARM GAS  C:\Users\George\AppData\Local\Temp\ccjYrriS.s 			page 9


 457              		.align	2
 458              		.global	_ZN9FileStore8ReadLineEPcj
 459              		.thumb
 460              		.thumb_func
 461              		.type	_ZN9FileStore8ReadLineEPcj, %function
 462              	_ZN9FileStore8ReadLineEPcj:
 463              		@ args = 0, pretend = 0, frame = 0
 464              		@ frame_needed = 0, uses_anonymous_args = 0
 465 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 466 0004 8046     		mov	r8, r0
 467 0006 C668     		ldr	r6, [r0, #12]
 468 0008 0F46     		mov	r7, r1
 469 000a 9146     		mov	r9, r2
 470 000c FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 471 0010 0028     		cmp	r0, #0
 472 0012 20DB     		blt	.L77
 473 0014 3AD0     		beq	.L88
 474 0016 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 475 0018 0D2B     		cmp	r3, #13
 476 001a 34D0     		beq	.L90
 477 001c 0A2B     		cmp	r3, #10
 478 001e 32D0     		beq	.L90
 479 0020 3D46     		mov	r5, r7
 480 0022 0024     		movs	r4, #0
 481 0024 05E0     		b	.L83
 482              	.L80:
 483 0026 15F8013F 		ldrb	r3, [r5, #1]!	@ zero_extendqisi2
 484 002a 0D2B     		cmp	r3, #13
 485 002c 04D0     		beq	.L91
 486 002e 0A2B     		cmp	r3, #10
 487 0030 02D0     		beq	.L91
 488              	.L83:
 489 0032 0134     		adds	r4, r4, #1
 490 0034 8442     		cmp	r4, r0
 491 0036 F6D1     		bne	.L80
 492              	.L91:
 493 0038 631C     		adds	r3, r4, #1
 494              	.L79:
 495 003a 8342     		cmp	r3, r0
 496 003c 03DA     		bge	.L84
 497 003e 3B5D     		ldrb	r3, [r7, r4]	@ zero_extendqisi2
 498 0040 3D19     		adds	r5, r7, r4
 499 0042 0D2B     		cmp	r3, #13
 500 0044 10D0     		beq	.L93
 501              	.L84:
 502 0046 A042     		cmp	r0, r4
 503 0048 07DC     		bgt	.L94
 504              	.L78:
 505 004a A145     		cmp	r9, r4
 506 004c 15D0     		beq	.L86
 507              	.L92:
 508 004e 3D19     		adds	r5, r7, r4
 509              	.L85:
 510 0050 0023     		movs	r3, #0
 511 0052 2046     		mov	r0, r4
 512 0054 2B70     		strb	r3, [r5]
 513              	.L77:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccjYrriS.s 			page 10


 514 0056 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 515              	.L94:
 516 005a 711C     		adds	r1, r6, #1
 517 005c 2144     		add	r1, r1, r4
 518 005e 4046     		mov	r0, r8
 519 0060 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 520 0064 3D19     		adds	r5, r7, r4
 521 0066 F3E7     		b	.L85
 522              	.L93:
 523 0068 6B78     		ldrb	r3, [r5, #1]	@ zero_extendqisi2
 524 006a 0A2B     		cmp	r3, #10
 525 006c EBD1     		bne	.L84
 526 006e B11C     		adds	r1, r6, #2
 527 0070 2144     		add	r1, r1, r4
 528 0072 4046     		mov	r0, r8
 529 0074 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 530 0078 EAE7     		b	.L85
 531              	.L86:
 532 007a 013C     		subs	r4, r4, #1
 533 007c A119     		adds	r1, r4, r6
 534 007e 4046     		mov	r0, r8
 535 0080 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 536 0084 E3E7     		b	.L92
 537              	.L90:
 538 0086 0123     		movs	r3, #1
 539 0088 0024     		movs	r4, #0
 540 008a D6E7     		b	.L79
 541              	.L88:
 542 008c 0446     		mov	r4, r0
 543 008e DCE7     		b	.L78
 544              		.size	_ZN9FileStore8ReadLineEPcj, .-_ZN9FileStore8ReadLineEPcj
 545              		.section	.text._ZN9FileStore5WriteEPKcj,"ax",%progbits
 546              		.align	2
 547              		.global	_ZN9FileStore5WriteEPKcj
 548              		.thumb
 549              		.thumb_func
 550              		.type	_ZN9FileStore5WriteEPKcj, %function
 551              	_ZN9FileStore5WriteEPKcj:
 552              		@ args = 0, pretend = 0, frame = 8
 553              		@ frame_needed = 0, uses_anonymous_args = 0
 554 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 555 0004 90F82D40 		ldrb	r4, [r0, #45]	@ zero_extendqisi2
 556 0008 82B0     		sub	sp, sp, #8
 557 000a 0546     		mov	r5, r0
 558 000c 0F46     		mov	r7, r1
 559 000e 1646     		mov	r6, r2
 560 0010 04B3     		cbz	r4, .L100
 561 0012 FFF7FEFF 		bl	micros
 562 0016 3946     		mov	r1, r7
 563 0018 01AB     		add	r3, sp, #4
 564 001a 8046     		mov	r8, r0
 565 001c 3246     		mov	r2, r6
 566 001e 281D     		adds	r0, r5, #4
 567 0020 FFF7FEFF 		bl	f_write
 568 0024 0746     		mov	r7, r0
 569 0026 FFF7FEFF 		bl	micros
 570 002a 0F4B     		ldr	r3, .L101
ARM GAS  C:\Users\George\AppData\Local\Temp\ccjYrriS.s 			page 11


 571 002c C8EB0000 		rsb	r0, r8, r0
 572 0030 1968     		ldr	r1, [r3]
 573 0032 8842     		cmp	r0, r1
 574 0034 88BF     		it	hi
 575 0036 1860     		strhi	r0, [r3]
 576 0038 17B9     		cbnz	r7, .L99
 577 003a 019B     		ldr	r3, [sp, #4]
 578 003c B342     		cmp	r3, r6
 579 003e 05D0     		beq	.L97
 580              	.L99:
 581 0040 2868     		ldr	r0, [r5]
 582 0042 0621     		movs	r1, #6
 583 0044 094A     		ldr	r2, .L101+4
 584 0046 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 585 004a 0024     		movs	r4, #0
 586              	.L97:
 587 004c 2046     		mov	r0, r4
 588 004e 02B0     		add	sp, sp, #8
 589              		@ sp needed
 590 0050 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 591              	.L100:
 592 0054 0068     		ldr	r0, [r0]
 593 0056 0621     		movs	r1, #6
 594 0058 054A     		ldr	r2, .L101+8
 595 005a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 596 005e 2046     		mov	r0, r4
 597 0060 02B0     		add	sp, sp, #8
 598              		@ sp needed
 599 0062 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 600              	.L102:
 601 0066 00BF     		.align	2
 602              	.L101:
 603 0068 00000000 		.word	.LANCHOR0
 604 006c 6C010000 		.word	.LC10
 605 0070 38010000 		.word	.LC9
 606              		.size	_ZN9FileStore5WriteEPKcj, .-_ZN9FileStore5WriteEPKcj
 607              		.section	.text._ZN9FileStore5WriteEc,"ax",%progbits
 608              		.align	2
 609              		.global	_ZN9FileStore5WriteEc
 610              		.thumb
 611              		.thumb_func
 612              		.type	_ZN9FileStore5WriteEc, %function
 613              	_ZN9FileStore5WriteEc:
 614              		@ args = 0, pretend = 0, frame = 8
 615              		@ frame_needed = 0, uses_anonymous_args = 0
 616 0000 00B5     		push	{lr}
 617 0002 83B0     		sub	sp, sp, #12
 618 0004 02AB     		add	r3, sp, #8
 619 0006 03F8011D 		strb	r1, [r3, #-1]!
 620 000a 1946     		mov	r1, r3
 621 000c 0122     		movs	r2, #1
 622 000e FFF7FEFF 		bl	_ZN9FileStore5WriteEPKcj
 623 0012 03B0     		add	sp, sp, #12
 624              		@ sp needed
 625 0014 5DF804FB 		ldr	pc, [sp], #4
 626              		.size	_ZN9FileStore5WriteEc, .-_ZN9FileStore5WriteEc
 627              		.section	.text._ZN9FileStore5WriteEPKc,"ax",%progbits
ARM GAS  C:\Users\George\AppData\Local\Temp\ccjYrriS.s 			page 12


 628              		.align	2
 629              		.global	_ZN9FileStore5WriteEPKc
 630              		.thumb
 631              		.thumb_func
 632              		.type	_ZN9FileStore5WriteEPKc, %function
 633              	_ZN9FileStore5WriteEPKc:
 634              		@ args = 0, pretend = 0, frame = 0
 635              		@ frame_needed = 0, uses_anonymous_args = 0
 636 0000 38B5     		push	{r3, r4, r5, lr}
 637 0002 0546     		mov	r5, r0
 638 0004 0846     		mov	r0, r1
 639 0006 0C46     		mov	r4, r1
 640 0008 FFF7FEFF 		bl	strlen
 641 000c 2146     		mov	r1, r4
 642 000e 0246     		mov	r2, r0
 643 0010 2846     		mov	r0, r5
 644 0012 BDE83840 		pop	{r3, r4, r5, lr}
 645 0016 FFF7FEBF 		b	_ZN9FileStore5WriteEPKcj
 646              		.size	_ZN9FileStore5WriteEPKc, .-_ZN9FileStore5WriteEPKc
 647 001a 00BF     		.section	.text._ZN9FileStore5FlushEv,"ax",%progbits
 648              		.align	2
 649              		.global	_ZN9FileStore5FlushEv
 650              		.thumb
 651              		.thumb_func
 652              		.type	_ZN9FileStore5FlushEv, %function
 653              	_ZN9FileStore5FlushEv:
 654              		@ args = 0, pretend = 0, frame = 0
 655              		@ frame_needed = 0, uses_anonymous_args = 0
 656 0000 10B5     		push	{r4, lr}
 657 0002 90F82D40 		ldrb	r4, [r0, #45]	@ zero_extendqisi2
 658 0006 44B1     		cbz	r4, .L108
 659 0008 0430     		adds	r0, r0, #4
 660 000a FFF7FEFF 		bl	f_sync
 661 000e D0F10104 		rsbs	r4, r0, #1
 662 0012 38BF     		it	cc
 663 0014 0024     		movcc	r4, #0
 664 0016 2046     		mov	r0, r4
 665 0018 10BD     		pop	{r4, pc}
 666              	.L108:
 667 001a 0068     		ldr	r0, [r0]
 668 001c 0621     		movs	r1, #6
 669 001e 024A     		ldr	r2, .L109
 670 0020 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 671 0024 2046     		mov	r0, r4
 672 0026 10BD     		pop	{r4, pc}
 673              	.L110:
 674              		.align	2
 675              	.L109:
 676 0028 A0010000 		.word	.LC11
 677              		.size	_ZN9FileStore5FlushEv, .-_ZN9FileStore5FlushEv
 678              		.section	.text._ZN9FileStore5CloseEv,"ax",%progbits
 679              		.align	2
 680              		.global	_ZN9FileStore5CloseEv
 681              		.thumb
 682              		.thumb_func
 683              		.type	_ZN9FileStore5CloseEv, %function
 684              	_ZN9FileStore5CloseEv:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccjYrriS.s 			page 13


 685              		@ args = 0, pretend = 0, frame = 0
 686              		@ frame_needed = 0, uses_anonymous_args = 0
 687 0000 70B5     		push	{r4, r5, r6, lr}
 688 0002 0446     		mov	r4, r0
 689 0004 FFF7FEFF 		bl	_Z11inInterruptv
 690 0008 94F82D50 		ldrb	r5, [r4, #45]	@ zero_extendqisi2
 691 000c 98B1     		cbz	r0, .L112
 692 000e 85B1     		cbz	r5, .L125
 693              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 694 0010 EFF31082 		MRS r2, primask
 695              	@ 0 "" 2
 696              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 697 0014 72B6     		cpsid i
 698              	@ 0 "" 2
 699              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 700 0016 BFF35F8F 		dmb
 701              	@ 0 "" 2
 702              		.thumb
 703 001a 2B4B     		ldr	r3, .L133
 704 001c 0021     		movs	r1, #0
 705 001e 1970     		strb	r1, [r3]
 706 0020 A16A     		ldr	r1, [r4, #40]
 707 0022 0129     		cmp	r1, #1
 708 0024 4BD9     		bls	.L114
 709 0026 A16A     		ldr	r1, [r4, #40]
 710 0028 0139     		subs	r1, r1, #1
 711 002a A162     		str	r1, [r4, #40]
 712              	.L115:
 713 002c 002A     		cmp	r2, #0
 714 002e 40D0     		beq	.L116
 715              	.L119:
 716 0030 0125     		movs	r5, #1
 717              	.L125:
 718 0032 2846     		mov	r0, r5
 719 0034 70BD     		pop	{r4, r5, r6, pc}
 720              	.L112:
 721 0036 2DB3     		cbz	r5, .L130
 722              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 723 0038 EFF31082 		MRS r2, primask
 724              	@ 0 "" 2
 725              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 726 003c 72B6     		cpsid i
 727              	@ 0 "" 2
 728              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 729 003e BFF35F8F 		dmb
 730              	@ 0 "" 2
 731              		.thumb
 732 0042 214B     		ldr	r3, .L133
 733 0044 0021     		movs	r1, #0
 734 0046 1970     		strb	r1, [r3]
 735 0048 A16A     		ldr	r1, [r4, #40]
 736 004a 0139     		subs	r1, r1, #1
 737 004c A162     		str	r1, [r4, #40]
 738 004e A56A     		ldr	r5, [r4, #40]
 739 0050 92B1     		cbz	r2, .L131
 740              	.L118:
 741 0052 002D     		cmp	r5, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccjYrriS.s 			page 14


 742 0054 ECD1     		bne	.L119
 743 0056 94F82E30 		ldrb	r3, [r4, #46]	@ zero_extendqisi2
 744 005a D3B9     		cbnz	r3, .L132
 745 005c 201D     		adds	r0, r4, #4
 746 005e FFF7FEFF 		bl	f_close
 747 0062 84F82D50 		strb	r5, [r4, #45]
 748 0066 84F82E50 		strb	r5, [r4, #46]
 749 006a 84F82C50 		strb	r5, [r4, #44]
 750              	.L121:
 751 006e 0028     		cmp	r0, #0
 752 0070 DED0     		beq	.L119
 753              	.L122:
 754 0072 0025     		movs	r5, #0
 755 0074 2846     		mov	r0, r5
 756 0076 70BD     		pop	{r4, r5, r6, pc}
 757              	.L131:
 758 0078 0122     		movs	r2, #1
 759 007a 1A70     		strb	r2, [r3]
 760              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 761 007c BFF35F8F 		dmb
 762              	@ 0 "" 2
 763              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 764 0080 62B6     		cpsie i
 765              	@ 0 "" 2
 766              		.thumb
 767 0082 E6E7     		b	.L118
 768              	.L130:
 769 0084 2068     		ldr	r0, [r4]
 770 0086 0621     		movs	r1, #6
 771 0088 104A     		ldr	r2, .L133+4
 772 008a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 773 008e 2846     		mov	r0, r5
 774 0090 70BD     		pop	{r4, r5, r6, pc}
 775              	.L132:
 776 0092 2046     		mov	r0, r4
 777 0094 FFF7FEFF 		bl	_ZN9FileStore5FlushEv
 778 0098 0646     		mov	r6, r0
 779 009a 201D     		adds	r0, r4, #4
 780 009c FFF7FEFF 		bl	f_close
 781 00a0 84F82D50 		strb	r5, [r4, #45]
 782 00a4 84F82E50 		strb	r5, [r4, #46]
 783 00a8 84F82C50 		strb	r5, [r4, #44]
 784 00ac 002E     		cmp	r6, #0
 785 00ae E0D0     		beq	.L122
 786 00b0 DDE7     		b	.L121
 787              	.L116:
 788 00b2 0122     		movs	r2, #1
 789 00b4 1A70     		strb	r2, [r3]
 790              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 791 00b6 BFF35F8F 		dmb
 792              	@ 0 "" 2
 793              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 794 00ba 62B6     		cpsie i
 795              	@ 0 "" 2
 796              		.thumb
 797 00bc B9E7     		b	.L125
 798              	.L114:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccjYrriS.s 			page 15


 799 00be 0121     		movs	r1, #1
 800 00c0 84F82C10 		strb	r1, [r4, #44]
 801 00c4 B2E7     		b	.L115
 802              	.L134:
 803 00c6 00BF     		.align	2
 804              	.L133:
 805 00c8 00000000 		.word	g_interrupt_enabled
 806 00cc CC010000 		.word	.LC12
 807              		.size	_ZN9FileStore5CloseEv, .-_ZN9FileStore5CloseEv
 808              		.section	.text._ZN9FileStore27GetAndClearLongestWriteTimeEv,"ax",%progbits
 809              		.align	2
 810              		.global	_ZN9FileStore27GetAndClearLongestWriteTimeEv
 811              		.thumb
 812              		.thumb_func
 813              		.type	_ZN9FileStore27GetAndClearLongestWriteTimeEv, %function
 814              	_ZN9FileStore27GetAndClearLongestWriteTimeEv:
 815              		@ args = 0, pretend = 0, frame = 0
 816              		@ frame_needed = 0, uses_anonymous_args = 0
 817 0000 10B5     		push	{r4, lr}
 818 0002 054C     		ldr	r4, .L136
 819 0004 2068     		ldr	r0, [r4]
 820 0006 FFF7FEFF 		bl	__aeabi_ui2f
 821 000a 0449     		ldr	r1, .L136+4
 822 000c FFF7FEFF 		bl	__aeabi_fdiv
 823 0010 0023     		movs	r3, #0
 824 0012 2360     		str	r3, [r4]
 825 0014 10BD     		pop	{r4, pc}
 826              	.L137:
 827 0016 00BF     		.align	2
 828              	.L136:
 829 0018 00000000 		.word	.LANCHOR0
 830 001c 00007A44 		.word	1148846080
 831              		.size	_ZN9FileStore27GetAndClearLongestWriteTimeEv, .-_ZN9FileStore27GetAndClearLongestWriteTimeEv
 832              		.global	_ZN9FileStore16longestWriteTimeE
 833              		.section	.bss._ZN9FileStore16longestWriteTimeE,"aw",%nobits
 834              		.align	2
 835              		.set	.LANCHOR0,. + 0
 836              		.type	_ZN9FileStore16longestWriteTimeE, %object
 837              		.size	_ZN9FileStore16longestWriteTimeE, 4
 838              	_ZN9FileStore16longestWriteTimeE:
 839 0000 00000000 		.space	4
 840              		.section	.rodata.str1.4,"aMS",%progbits,1
 841              		.align	2
 842              	.LC0:
 843 0000 77726974 		.ascii	"write\000"
 843      6500
 844 0006 0000     		.space	2
 845              	.LC1:
 846 0008 72656164 		.ascii	"read\000"
 846      00
 847 000d 000000   		.space	3
 848              	.LC2:
 849 0010 43616E27 		.ascii	"Can't open %s to %s, error code %d\012\000"
 849      74206F70 
 849      656E2025 
 849      7320746F 
 849      2025732C 
ARM GAS  C:\Users\George\AppData\Local\Temp\ccjYrriS.s 			page 16


 850              	.LC3:
 851 0034 4661696C 		.ascii	"Failed to create directory %s while trying to open "
 851      65642074 
 851      6F206372 
 851      65617465 
 851      20646972 
 852 0067 66696C65 		.ascii	"file %s\012\000"
 852      2025730A 
 852      00
 853              	.LC4:
 854 0070 4572726F 		.ascii	"Error: Attempt to dup a non-open file.\012\000"
 854      723A2041 
 854      7474656D 
 854      70742074 
 854      6F206475 
 855              	.LC5:
 856 0098 4572726F 		.ascii	"Error: Attempt to seek on a non-open file.\012\000"
 856      723A2041 
 856      7474656D 
 856      70742074 
 856      6F207365 
 857              	.LC6:
 858 00c4 4572726F 		.ascii	"Error: Attempt to size non-open file.\012\000"
 858      723A2041 
 858      7474656D 
 858      70742074 
 858      6F207369 
 859 00eb 00       		.space	1
 860              	.LC7:
 861 00ec 4572726F 		.ascii	"Error: Attempt to read from a non-open file.\012\000"
 861      723A2041 
 861      7474656D 
 861      70742074 
 861      6F207265 
 862 011a 0000     		.space	2
 863              	.LC8:
 864 011c 4572726F 		.ascii	"Error: Cannot read file.\012\000"
 864      723A2043 
 864      616E6E6F 
 864      74207265 
 864      61642066 
 865 0136 0000     		.space	2
 866              	.LC9:
 867 0138 4572726F 		.ascii	"Error: Attempt to write block to a non-open file.\012"
 867      723A2041 
 867      7474656D 
 867      70742074 
 867      6F207772 
 868 016a 00       		.ascii	"\000"
 869 016b 00       		.space	1
 870              	.LC10:
 871 016c 4572726F 		.ascii	"Error: Cannot write to file. Drive may be full.\012"
 871      723A2043 
 871      616E6E6F 
 871      74207772 
 871      69746520 
 872 019c 00       		.ascii	"\000"
ARM GAS  C:\Users\George\AppData\Local\Temp\ccjYrriS.s 			page 17


 873 019d 000000   		.space	3
 874              	.LC11:
 875 01a0 4572726F 		.ascii	"Error: Attempt to flush a non-open file.\012\000"
 875      723A2041 
 875      7474656D 
 875      70742074 
 875      6F20666C 
 876 01ca 0000     		.space	2
 877              	.LC12:
 878 01cc 4572726F 		.ascii	"Error: Attempt to close a non-open file.\012\000"
 878      723A2041 
 878      7474656D 
 878      70742074 
 878      6F20636C 
 879 01f6 0000     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 880              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 881              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 882              	_ZL28cpu_irq_prev_interrupt_state:
 883 0000 00       		.space	1
 884              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 885              		.align	2
 886              		.type	_ZL32cpu_irq_critical_section_counter, %object
 887              		.size	_ZL32cpu_irq_critical_section_counter, 4
 888              	_ZL32cpu_irq_critical_section_counter:
 889 0000 00000000 		.space	4
 890              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
