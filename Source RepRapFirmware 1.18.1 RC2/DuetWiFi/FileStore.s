ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccrlMb5K.s 			page 1


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
  15              		.file	"FileStore.cpp"
  16              		.section	.text._ZN9FileStoreC2EP8Platform,"ax",%progbits
  17              		.align	2
  18              		.global	_ZN9FileStoreC2EP8Platform
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN9FileStoreC2EP8Platform, %function
  22              	_ZN9FileStoreC2EP8Platform:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 0160     		str	r1, [r0]
  27 0002 7047     		bx	lr
  28              		.size	_ZN9FileStoreC2EP8Platform, .-_ZN9FileStoreC2EP8Platform
  29              		.global	_ZN9FileStoreC1EP8Platform
  30              		.thumb_set _ZN9FileStoreC1EP8Platform,_ZN9FileStoreC2EP8Platform
  31              		.section	.text._ZN9FileStore4InitEv,"ax",%progbits
  32              		.align	2
  33              		.global	_ZN9FileStore4InitEv
  34              		.thumb
  35              		.thumb_func
  36              		.type	_ZN9FileStore4InitEv, %function
  37              	_ZN9FileStore4InitEv:
  38              		@ args = 0, pretend = 0, frame = 0
  39              		@ frame_needed = 0, uses_anonymous_args = 0
  40              		@ link register save eliminated.
  41 0000 0023     		movs	r3, #0
  42 0002 8362     		str	r3, [r0, #40]
  43 0004 80F82D30 		strb	r3, [r0, #45]
  44 0008 80F82E30 		strb	r3, [r0, #46]
  45 000c 80F82C30 		strb	r3, [r0, #44]
  46 0010 7047     		bx	lr
  47              		.size	_ZN9FileStore4InitEv, .-_ZN9FileStore4InitEv
  48 0012 00BF     		.section	.text._ZN9FileStore10InvalidateEPK5FATFS,"ax",%progbits
  49              		.align	2
  50              		.global	_ZN9FileStore10InvalidateEPK5FATFS
  51              		.thumb
  52              		.thumb_func
  53              		.type	_ZN9FileStore10InvalidateEPK5FATFS, %function
  54              	_ZN9FileStore10InvalidateEPK5FATFS:
  55              		@ args = 0, pretend = 0, frame = 0
  56              		@ frame_needed = 0, uses_anonymous_args = 0
  57              		@ link register save eliminated.
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccrlMb5K.s 			page 2


  58 0000 4368     		ldr	r3, [r0, #4]
  59 0002 8B42     		cmp	r3, r1
  60 0004 00D0     		beq	.L6
  61 0006 7047     		bx	lr
  62              	.L6:
  63 0008 0023     		movs	r3, #0
  64 000a 8362     		str	r3, [r0, #40]
  65 000c 80F82D30 		strb	r3, [r0, #45]
  66 0010 80F82E30 		strb	r3, [r0, #46]
  67 0014 80F82C30 		strb	r3, [r0, #44]
  68 0018 4360     		str	r3, [r0, #4]
  69 001a 7047     		bx	lr
  70              		.size	_ZN9FileStore10InvalidateEPK5FATFS, .-_ZN9FileStore10InvalidateEPK5FATFS
  71              		.section	.text._ZNK9FileStore8IsOpenOnEPK5FATFS,"ax",%progbits
  72              		.align	2
  73              		.global	_ZNK9FileStore8IsOpenOnEPK5FATFS
  74              		.thumb
  75              		.thumb_func
  76              		.type	_ZNK9FileStore8IsOpenOnEPK5FATFS, %function
  77              	_ZNK9FileStore8IsOpenOnEPK5FATFS:
  78              		@ args = 0, pretend = 0, frame = 0
  79              		@ frame_needed = 0, uses_anonymous_args = 0
  80              		@ link register save eliminated.
  81 0000 836A     		ldr	r3, [r0, #40]
  82 0002 23B1     		cbz	r3, .L9
  83 0004 4068     		ldr	r0, [r0, #4]
  84 0006 431A     		subs	r3, r0, r1
  85 0008 5842     		rsbs	r0, r3, #0
  86 000a 5841     		adcs	r0, r0, r3
  87 000c 7047     		bx	lr
  88              	.L9:
  89 000e 1846     		mov	r0, r3
  90 0010 7047     		bx	lr
  91              		.size	_ZNK9FileStore8IsOpenOnEPK5FATFS, .-_ZNK9FileStore8IsOpenOnEPK5FATFS
  92 0012 00BF     		.section	.text._ZN9FileStore4OpenEPKcS1_b,"ax",%progbits
  93              		.align	2
  94              		.global	_ZN9FileStore4OpenEPKcS1_b
  95              		.thumb
  96              		.thumb_func
  97              		.type	_ZN9FileStore4OpenEPKcS1_b, %function
  98              	_ZN9FileStore4OpenEPKcS1_b:
  99              		@ args = 0, pretend = 0, frame = 112
 100              		@ frame_needed = 0, uses_anonymous_args = 0
 101 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 102 0004 0746     		mov	r7, r0
 103 0006 9EB0     		sub	sp, sp, #120
 104 0008 1C46     		mov	r4, r3
 105 000a 9146     		mov	r9, r2
 106 000c 29B1     		cbz	r1, .L11
 107 000e 0368     		ldr	r3, [r0]
 108 0010 D3F83C08 		ldr	r0, [r3, #2108]
 109 0014 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameEPKcS1_
 110 0018 8146     		mov	r9, r0
 111              	.L11:
 112 001a 87F82E40 		strb	r4, [r7, #46]
 113 001e 44BB     		cbnz	r4, .L33
 114 0020 381D     		adds	r0, r7, #4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccrlMb5K.s 			page 3


 115              	.L22:
 116 0022 0122     		movs	r2, #1
 117 0024 4946     		mov	r1, r9
 118 0026 FFF7FEFF 		bl	f_open
 119 002a D0B1     		cbz	r0, .L19
 120              	.L37:
 121 002c 3C4B     		ldr	r3, .L38
 122 002e B3F84050 		ldrh	r5, [r3, #64]
 123 0032 15F00105 		ands	r5, r5, #1
 124 0036 18D0     		beq	.L31
 125 0038 97F82E40 		ldrb	r4, [r7, #46]	@ zero_extendqisi2
 126 003c 394B     		ldr	r3, .L38+4
 127 003e 3A4A     		ldr	r2, .L38+8
 128 0040 3968     		ldr	r1, [r7]
 129 0042 0190     		str	r0, [sp, #4]
 130 0044 002C     		cmp	r4, #0
 131 0046 18BF     		it	ne
 132 0048 1A46     		movne	r2, r3
 133 004a 0846     		mov	r0, r1
 134 004c 0092     		str	r2, [sp]
 135 004e 4B46     		mov	r3, r9
 136 0050 0621     		movs	r1, #6
 137 0052 364A     		ldr	r2, .L38+12
 138 0054 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 139 0058 0025     		movs	r5, #0
 140 005a 2846     		mov	r0, r5
 141 005c 1EB0     		add	sp, sp, #120
 142              		@ sp needed
 143 005e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 144              	.L19:
 145 0062 0125     		movs	r5, #1
 146 0064 87F82D50 		strb	r5, [r7, #45]
 147 0068 BD62     		str	r5, [r7, #40]
 148              	.L31:
 149 006a 2846     		mov	r0, r5
 150 006c 1EB0     		add	sp, sp, #120
 151              		@ sp needed
 152 006e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 153              	.L33:
 154 0072 0023     		movs	r3, #0
 155 0074 05AC     		add	r4, sp, #20
 156 0076 6422     		movs	r2, #100
 157 0078 03A8     		add	r0, sp, #12
 158 007a 4946     		mov	r1, r9
 159 007c 0394     		str	r4, [sp, #12]
 160 007e 8DF81430 		strb	r3, [sp, #20]
 161 0082 0492     		str	r2, [sp, #16]
 162 0084 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 163 0088 039B     		ldr	r3, [sp, #12]
 164 008a 93F80080 		ldrb	r8, [r3]	@ zero_extendqisi2
 165 008e A8F13008 		sub	r8, r8, #48
 166 0092 B8F1090F 		cmp	r8, #9
 167 0096 8CBF     		ite	hi
 168 0098 4FF00008 		movhi	r8, #0
 169 009c 4FF00108 		movls	r8, #1
 170 00a0 0124     		movs	r4, #1
 171 00a2 4FF02F0A 		mov	r10, #47
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccrlMb5K.s 			page 4


 172 00a6 00E0     		b	.L13
 173              	.L14:
 174 00a8 0134     		adds	r4, r4, #1
 175              	.L13:
 176 00aa 03A8     		add	r0, sp, #12
 177 00ac FFF7FEFF 		bl	_ZNK9StringRef6strlenEv
 178 00b0 8442     		cmp	r4, r0
 179 00b2 17D2     		bcs	.L34
 180 00b4 039D     		ldr	r5, [sp, #12]
 181 00b6 2E5D     		ldrb	r6, [r5, r4]	@ zero_extendqisi2
 182 00b8 2F2E     		cmp	r6, #47
 183 00ba 2544     		add	r5, r5, r4
 184 00bc F4D1     		bne	.L14
 185 00be B8F1000F 		cmp	r8, #0
 186 00c2 02D0     		beq	.L35
 187 00c4 4FF00008 		mov	r8, #0
 188 00c8 EEE7     		b	.L14
 189              	.L35:
 190 00ca 85F80080 		strb	r8, [r5]
 191 00ce 3B68     		ldr	r3, [r7]
 192 00d0 0399     		ldr	r1, [sp, #12]
 193 00d2 D3F83C08 		ldr	r0, [r3, #2108]
 194 00d6 FFF7FEFF 		bl	_ZNK11MassStorage15DirectoryExistsEPKc
 195 00da 78B1     		cbz	r0, .L36
 196              	.L15:
 197 00dc 039B     		ldr	r3, [sp, #12]
 198 00de 03F804A0 		strb	r10, [r3, r4]
 199 00e2 E1E7     		b	.L14
 200              	.L34:
 201 00e4 97F82E30 		ldrb	r3, [r7, #46]	@ zero_extendqisi2
 202 00e8 381D     		adds	r0, r7, #4
 203 00ea 0A22     		movs	r2, #10
 204 00ec 002B     		cmp	r3, #0
 205 00ee 98D0     		beq	.L22
 206 00f0 4946     		mov	r1, r9
 207 00f2 FFF7FEFF 		bl	f_open
 208 00f6 0028     		cmp	r0, #0
 209 00f8 B3D0     		beq	.L19
 210 00fa 97E7     		b	.L37
 211              	.L36:
 212 00fc 3B68     		ldr	r3, [r7]
 213 00fe 0399     		ldr	r1, [sp, #12]
 214 0100 D3F83C08 		ldr	r0, [r3, #2108]
 215 0104 FFF7FEFF 		bl	_ZN11MassStorage13MakeDirectoryEPKc
 216 0108 0546     		mov	r5, r0
 217 010a 0028     		cmp	r0, #0
 218 010c E6D1     		bne	.L15
 219 010e 3868     		ldr	r0, [r7]
 220 0110 039B     		ldr	r3, [sp, #12]
 221 0112 CDF80090 		str	r9, [sp]
 222 0116 0621     		movs	r1, #6
 223 0118 054A     		ldr	r2, .L38+16
 224 011a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 225 011e A4E7     		b	.L31
 226              	.L39:
 227              		.align	2
 228              	.L38:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccrlMb5K.s 			page 5


 229 0120 00000000 		.word	reprap
 230 0124 00000000 		.word	.LC0
 231 0128 08000000 		.word	.LC1
 232 012c 10000000 		.word	.LC2
 233 0130 34000000 		.word	.LC3
 234              		.size	_ZN9FileStore4OpenEPKcS1_b, .-_ZN9FileStore4OpenEPKcS1_b
 235              		.section	.text._ZN9FileStore9DuplicateEv,"ax",%progbits
 236              		.align	2
 237              		.global	_ZN9FileStore9DuplicateEv
 238              		.thumb
 239              		.thumb_func
 240              		.type	_ZN9FileStore9DuplicateEv, %function
 241              	_ZN9FileStore9DuplicateEv:
 242              		@ args = 0, pretend = 0, frame = 0
 243              		@ frame_needed = 0, uses_anonymous_args = 0
 244              		@ link register save eliminated.
 245 0000 90F82D30 		ldrb	r3, [r0, #45]	@ zero_extendqisi2
 246 0004 93B1     		cbz	r3, .L43
 247              	@ 470 "C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFu
 248 0006 EFF31082 		MRS r2, primask
 249              	@ 0 "" 2
 250              	@ 330 "C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFu
 251 000a 72B6     		cpsid i
 252              	@ 0 "" 2
 253              	@ 456 "C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIn
 254 000c BFF35F8F 		dmb
 255              	@ 0 "" 2
 256              		.thumb
 257 0010 094B     		ldr	r3, .L45
 258 0012 0021     		movs	r1, #0
 259 0014 1970     		strb	r1, [r3]
 260 0016 816A     		ldr	r1, [r0, #40]
 261 0018 0131     		adds	r1, r1, #1
 262 001a 8162     		str	r1, [r0, #40]
 263 001c 02B1     		cbz	r2, .L44
 264 001e 7047     		bx	lr
 265              	.L44:
 266 0020 0122     		movs	r2, #1
 267 0022 1A70     		strb	r2, [r3]
 268              	@ 456 "C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIn
 269 0024 BFF35F8F 		dmb
 270              	@ 0 "" 2
 271              	@ 319 "C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFu
 272 0028 62B6     		cpsie i
 273              	@ 0 "" 2
 274              		.thumb
 275 002a 7047     		bx	lr
 276              	.L43:
 277 002c 0068     		ldr	r0, [r0]
 278 002e 034A     		ldr	r2, .L45+4
 279 0030 0621     		movs	r1, #6
 280 0032 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 281              	.L46:
 282 0036 00BF     		.align	2
 283              	.L45:
 284 0038 00000000 		.word	g_interrupt_enabled
 285 003c 70000000 		.word	.LC4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccrlMb5K.s 			page 6


 286              		.size	_ZN9FileStore9DuplicateEv, .-_ZN9FileStore9DuplicateEv
 287              		.section	.text._ZN9FileStore4SeekEm,"ax",%progbits
 288              		.align	2
 289              		.global	_ZN9FileStore4SeekEm
 290              		.thumb
 291              		.thumb_func
 292              		.type	_ZN9FileStore4SeekEm, %function
 293              	_ZN9FileStore4SeekEm:
 294              		@ args = 0, pretend = 0, frame = 0
 295              		@ frame_needed = 0, uses_anonymous_args = 0
 296 0000 10B5     		push	{r4, lr}
 297 0002 90F82D40 		ldrb	r4, [r0, #45]	@ zero_extendqisi2
 298 0006 44B1     		cbz	r4, .L50
 299 0008 0430     		adds	r0, r0, #4
 300 000a FFF7FEFF 		bl	f_lseek
 301 000e D0F10104 		rsbs	r4, r0, #1
 302 0012 38BF     		it	cc
 303 0014 0024     		movcc	r4, #0
 304 0016 2046     		mov	r0, r4
 305 0018 10BD     		pop	{r4, pc}
 306              	.L50:
 307 001a 0068     		ldr	r0, [r0]
 308 001c 024A     		ldr	r2, .L51
 309 001e 0621     		movs	r1, #6
 310 0020 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 311 0024 2046     		mov	r0, r4
 312 0026 10BD     		pop	{r4, pc}
 313              	.L52:
 314              		.align	2
 315              	.L51:
 316 0028 98000000 		.word	.LC5
 317              		.size	_ZN9FileStore4SeekEm, .-_ZN9FileStore4SeekEm
 318              		.section	.text._ZNK9FileStore8PositionEv,"ax",%progbits
 319              		.align	2
 320              		.global	_ZNK9FileStore8PositionEv
 321              		.thumb
 322              		.thumb_func
 323              		.type	_ZNK9FileStore8PositionEv, %function
 324              	_ZNK9FileStore8PositionEv:
 325              		@ args = 0, pretend = 0, frame = 0
 326              		@ frame_needed = 0, uses_anonymous_args = 0
 327              		@ link register save eliminated.
 328 0000 C068     		ldr	r0, [r0, #12]
 329 0002 7047     		bx	lr
 330              		.size	_ZNK9FileStore8PositionEv, .-_ZNK9FileStore8PositionEv
 331              		.section	.text._ZNK9FileStore6LengthEv,"ax",%progbits
 332              		.align	2
 333              		.global	_ZNK9FileStore6LengthEv
 334              		.thumb
 335              		.thumb_func
 336              		.type	_ZNK9FileStore6LengthEv, %function
 337              	_ZNK9FileStore6LengthEv:
 338              		@ args = 0, pretend = 0, frame = 0
 339              		@ frame_needed = 0, uses_anonymous_args = 0
 340 0000 10B5     		push	{r4, lr}
 341 0002 90F82D40 		ldrb	r4, [r0, #45]	@ zero_extendqisi2
 342 0006 0CB1     		cbz	r4, .L57
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccrlMb5K.s 			page 7


 343 0008 0069     		ldr	r0, [r0, #16]
 344 000a 10BD     		pop	{r4, pc}
 345              	.L57:
 346 000c 0068     		ldr	r0, [r0]
 347 000e 034A     		ldr	r2, .L58
 348 0010 0621     		movs	r1, #6
 349 0012 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 350 0016 2046     		mov	r0, r4
 351 0018 10BD     		pop	{r4, pc}
 352              	.L59:
 353 001a 00BF     		.align	2
 354              	.L58:
 355 001c C4000000 		.word	.LC6
 356              		.size	_ZNK9FileStore6LengthEv, .-_ZNK9FileStore6LengthEv
 357              		.section	.text._ZNK9FileStore12FractionReadEv,"ax",%progbits
 358              		.align	2
 359              		.global	_ZNK9FileStore12FractionReadEv
 360              		.thumb
 361              		.thumb_func
 362              		.type	_ZNK9FileStore12FractionReadEv, %function
 363              	_ZNK9FileStore12FractionReadEv:
 364              		@ args = 0, pretend = 0, frame = 0
 365              		@ frame_needed = 0, uses_anonymous_args = 0
 366 0000 08B5     		push	{r3, lr}
 367 0002 90F82D30 		ldrb	r3, [r0, #45]	@ zero_extendqisi2
 368 0006 73B1     		cbz	r3, .L64
 369 0008 0369     		ldr	r3, [r0, #16]
 370 000a B3B1     		cbz	r3, .L63
 371 000c D0ED037A 		flds	s15, [r0, #12]	@ int
 372 0010 06EE903A 		fmsr	s13, r3	@ int
 373 0014 F8EE677A 		fuitos	s15, s15
 374 0018 B8EE667A 		fuitos	s14, s13
 375 001c C7EE877A 		fdivs	s15, s15, s14
 376 0020 17EE900A 		fmrs	r0, s15
 377 0024 08BD     		pop	{r3, pc}
 378              	.L64:
 379 0026 0068     		ldr	r0, [r0]
 380 0028 064A     		ldr	r2, .L65
 381 002a 0621     		movs	r1, #6
 382 002c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 383 0030 DFED057A 		flds	s15, .L65+4
 384 0034 17EE900A 		fmrs	r0, s15
 385 0038 08BD     		pop	{r3, pc}
 386              	.L63:
 387 003a DFED037A 		flds	s15, .L65+4
 388 003e 17EE900A 		fmrs	r0, s15
 389 0042 08BD     		pop	{r3, pc}
 390              	.L66:
 391              		.align	2
 392              	.L65:
 393 0044 C4000000 		.word	.LC6
 394 0048 00000000 		.word	0
 395              		.size	_ZNK9FileStore12FractionReadEv, .-_ZNK9FileStore12FractionReadEv
 396              		.section	.text._ZN9FileStore4ReadEPcj,"ax",%progbits
 397              		.align	2
 398              		.global	_ZN9FileStore4ReadEPcj
 399              		.thumb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccrlMb5K.s 			page 8


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
 421 001e 074A     		ldr	r2, .L73
 422 0020 0621     		movs	r1, #6
 423 0022 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 424 0026 4FF0FF30 		mov	r0, #-1
 425 002a F5E7     		b	.L69
 426              	.L72:
 427 002c 2068     		ldr	r0, [r4]
 428 002e 044A     		ldr	r2, .L73+4
 429 0030 0621     		movs	r1, #6
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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccrlMb5K.s 			page 9


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
 467 0006 0F46     		mov	r7, r1
 468 0008 C668     		ldr	r6, [r0, #12]
 469 000a 9146     		mov	r9, r2
 470 000c FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 471 0010 0028     		cmp	r0, #0
 472 0012 21DB     		blt	.L77
 473 0014 3BD0     		beq	.L88
 474 0016 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 475 0018 0D2B     		cmp	r3, #13
 476 001a 35D0     		beq	.L90
 477 001c 0A2B     		cmp	r3, #10
 478 001e 33D0     		beq	.L90
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
 496 003c 04DA     		bge	.L84
 497 003e 3B5D     		ldrb	r3, [r7, r4]	@ zero_extendqisi2
 498 0040 0D2B     		cmp	r3, #13
 499 0042 07EB0405 		add	r5, r7, r4
 500 0046 10D0     		beq	.L93
 501              	.L84:
 502 0048 A042     		cmp	r0, r4
 503 004a 07DC     		bgt	.L94
 504              	.L78:
 505 004c A145     		cmp	r9, r4
 506 004e 15D0     		beq	.L86
 507              	.L92:
 508 0050 3D19     		adds	r5, r7, r4
 509              	.L85:
 510 0052 0023     		movs	r3, #0
 511 0054 2046     		mov	r0, r4
 512 0056 2B70     		strb	r3, [r5]
 513              	.L77:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccrlMb5K.s 			page 10


 514 0058 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 515              	.L94:
 516 005c 711C     		adds	r1, r6, #1
 517 005e 2144     		add	r1, r1, r4
 518 0060 4046     		mov	r0, r8
 519 0062 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 520 0066 3D19     		adds	r5, r7, r4
 521 0068 F3E7     		b	.L85
 522              	.L93:
 523 006a 6B78     		ldrb	r3, [r5, #1]	@ zero_extendqisi2
 524 006c 0A2B     		cmp	r3, #10
 525 006e EBD1     		bne	.L84
 526 0070 B11C     		adds	r1, r6, #2
 527 0072 2144     		add	r1, r1, r4
 528 0074 4046     		mov	r0, r8
 529 0076 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 530 007a EAE7     		b	.L85
 531              	.L86:
 532 007c 013C     		subs	r4, r4, #1
 533 007e A119     		adds	r1, r4, r6
 534 0080 4046     		mov	r0, r8
 535 0082 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 536 0086 E3E7     		b	.L92
 537              	.L90:
 538 0088 0123     		movs	r3, #1
 539 008a 0024     		movs	r4, #0
 540 008c D5E7     		b	.L79
 541              	.L88:
 542 008e 0446     		mov	r4, r0
 543 0090 DCE7     		b	.L78
 544              		.size	_ZN9FileStore8ReadLineEPcj, .-_ZN9FileStore8ReadLineEPcj
 545 0092 00BF     		.section	.text._ZN9FileStore5WriteEPKcj,"ax",%progbits
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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccrlMb5K.s 			page 11


 571 002c 1968     		ldr	r1, [r3]
 572 002e C8EB0000 		rsb	r0, r8, r0
 573 0032 8842     		cmp	r0, r1
 574 0034 88BF     		it	hi
 575 0036 1860     		strhi	r0, [r3]
 576 0038 17B9     		cbnz	r7, .L99
 577 003a 019B     		ldr	r3, [sp, #4]
 578 003c B342     		cmp	r3, r6
 579 003e 05D0     		beq	.L97
 580              	.L99:
 581 0040 2868     		ldr	r0, [r5]
 582 0042 0A4A     		ldr	r2, .L101+4
 583 0044 0621     		movs	r1, #6
 584 0046 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 585 004a 0024     		movs	r4, #0
 586              	.L97:
 587 004c 2046     		mov	r0, r4
 588 004e 02B0     		add	sp, sp, #8
 589              		@ sp needed
 590 0050 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 591              	.L100:
 592 0054 0068     		ldr	r0, [r0]
 593 0056 064A     		ldr	r2, .L101+8
 594 0058 0621     		movs	r1, #6
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
 619 0006 0122     		movs	r2, #1
 620 0008 03F8011D 		strb	r1, [r3, #-1]!
 621 000c 1946     		mov	r1, r3
 622 000e FFF7FEFF 		bl	_ZN9FileStore5WriteEPKcj
 623 0012 03B0     		add	sp, sp, #12
 624              		@ sp needed
 625 0014 5DF804FB 		ldr	pc, [sp], #4
 626              		.size	_ZN9FileStore5WriteEc, .-_ZN9FileStore5WriteEc
 627              		.section	.text._ZN9FileStore5WriteEPKc,"ax",%progbits
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccrlMb5K.s 			page 12


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
 668 001c 024A     		ldr	r2, .L109
 669 001e 0621     		movs	r1, #6
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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccrlMb5K.s 			page 13


 685              		@ args = 0, pretend = 0, frame = 0
 686              		@ frame_needed = 0, uses_anonymous_args = 0
 687 0000 70B5     		push	{r4, r5, r6, lr}
 688 0002 0446     		mov	r4, r0
 689 0004 FFF7FEFF 		bl	_Z11inInterruptv
 690 0008 94F82D50 		ldrb	r5, [r4, #45]	@ zero_extendqisi2
 691 000c 98B1     		cbz	r0, .L112
 692 000e 85B1     		cbz	r5, .L125
 693              	@ 470 "C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFu
 694 0010 EFF31082 		MRS r2, primask
 695              	@ 0 "" 2
 696              	@ 330 "C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFu
 697 0014 72B6     		cpsid i
 698              	@ 0 "" 2
 699              	@ 456 "C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIn
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
 722              	@ 470 "C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFu
 723 0038 EFF31082 		MRS r2, primask
 724              	@ 0 "" 2
 725              	@ 330 "C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFu
 726 003c 72B6     		cpsid i
 727              	@ 0 "" 2
 728              	@ 456 "C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIn
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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccrlMb5K.s 			page 14


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
 760              	@ 456 "C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIn
 761 007c BFF35F8F 		dmb
 762              	@ 0 "" 2
 763              	@ 319 "C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFu
 764 0080 62B6     		cpsie i
 765              	@ 0 "" 2
 766              		.thumb
 767 0082 E6E7     		b	.L118
 768              	.L130:
 769 0084 2068     		ldr	r0, [r4]
 770 0086 114A     		ldr	r2, .L133+4
 771 0088 0621     		movs	r1, #6
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
 790              	@ 456 "C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIn
 791 00b6 BFF35F8F 		dmb
 792              	@ 0 "" 2
 793              	@ 319 "C:\Google_Drive\projects\Fusion3\duet\firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFu
 794 00ba 62B6     		cpsie i
 795              	@ 0 "" 2
 796              		.thumb
 797 00bc B9E7     		b	.L125
 798              	.L114:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccrlMb5K.s 			page 15


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
 817              		@ link register save eliminated.
 818 0000 064B     		ldr	r3, .L136
 819 0002 DFED077A 		flds	s15, .L136+4
 820 0006 D3ED006A 		flds	s13, [r3]	@ int
 821 000a B8EE667A 		fuitos	s14, s13
 822 000e 0022     		movs	r2, #0
 823 0010 C7EE277A 		fdivs	s15, s14, s15
 824 0014 1A60     		str	r2, [r3]
 825 0016 17EE900A 		fmrs	r0, s15
 826 001a 7047     		bx	lr
 827              	.L137:
 828              		.align	2
 829              	.L136:
 830 001c 00000000 		.word	.LANCHOR0
 831 0020 00007A44 		.word	1148846080
 832              		.size	_ZN9FileStore27GetAndClearLongestWriteTimeEv, .-_ZN9FileStore27GetAndClearLongestWriteTimeEv
 833              		.global	_ZN9FileStore16longestWriteTimeE
 834              		.section	.bss._ZN9FileStore16longestWriteTimeE,"aw",%nobits
 835              		.align	2
 836              		.set	.LANCHOR0,. + 0
 837              		.type	_ZN9FileStore16longestWriteTimeE, %object
 838              		.size	_ZN9FileStore16longestWriteTimeE, 4
 839              	_ZN9FileStore16longestWriteTimeE:
 840 0000 00000000 		.space	4
 841              		.section	.rodata.str1.4,"aMS",%progbits,1
 842              		.align	2
 843              	.LC0:
 844 0000 77726974 		.ascii	"write\000"
 844      6500
 845 0006 0000     		.space	2
 846              	.LC1:
 847 0008 72656164 		.ascii	"read\000"
 847      00
 848 000d 000000   		.space	3
 849              	.LC2:
 850 0010 43616E27 		.ascii	"Can't open %s to %s, error code %d\012\000"
 850      74206F70 
 850      656E2025 
 850      7320746F 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccrlMb5K.s 			page 16


 850      2025732C 
 851              	.LC3:
 852 0034 4661696C 		.ascii	"Failed to create directory %s while trying to open "
 852      65642074 
 852      6F206372 
 852      65617465 
 852      20646972 
 853 0067 66696C65 		.ascii	"file %s\012\000"
 853      2025730A 
 853      00
 854              	.LC4:
 855 0070 4572726F 		.ascii	"Error: Attempt to dup a non-open file.\012\000"
 855      723A2041 
 855      7474656D 
 855      70742074 
 855      6F206475 
 856              	.LC5:
 857 0098 4572726F 		.ascii	"Error: Attempt to seek on a non-open file.\012\000"
 857      723A2041 
 857      7474656D 
 857      70742074 
 857      6F207365 
 858              	.LC6:
 859 00c4 4572726F 		.ascii	"Error: Attempt to size non-open file.\012\000"
 859      723A2041 
 859      7474656D 
 859      70742074 
 859      6F207369 
 860 00eb 00       		.space	1
 861              	.LC7:
 862 00ec 4572726F 		.ascii	"Error: Attempt to read from a non-open file.\012\000"
 862      723A2041 
 862      7474656D 
 862      70742074 
 862      6F207265 
 863 011a 0000     		.space	2
 864              	.LC8:
 865 011c 4572726F 		.ascii	"Error: Cannot read file.\012\000"
 865      723A2043 
 865      616E6E6F 
 865      74207265 
 865      61642066 
 866 0136 0000     		.space	2
 867              	.LC9:
 868 0138 4572726F 		.ascii	"Error: Attempt to write block to a non-open file.\012"
 868      723A2041 
 868      7474656D 
 868      70742074 
 868      6F207772 
 869 016a 00       		.ascii	"\000"
 870 016b 00       		.space	1
 871              	.LC10:
 872 016c 4572726F 		.ascii	"Error: Cannot write to file. Drive may be full.\012"
 872      723A2043 
 872      616E6E6F 
 872      74207772 
 872      69746520 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccrlMb5K.s 			page 17


 873 019c 00       		.ascii	"\000"
 874 019d 000000   		.space	3
 875              	.LC11:
 876 01a0 4572726F 		.ascii	"Error: Attempt to flush a non-open file.\012\000"
 876      723A2041 
 876      7474656D 
 876      70742074 
 876      6F20666C 
 877 01ca 0000     		.space	2
 878              	.LC12:
 879 01cc 4572726F 		.ascii	"Error: Attempt to close a non-open file.\012\000"
 879      723A2041 
 879      7474656D 
 879      70742074 
 879      6F20636C 
 880 01f6 0000     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 881              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 882              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 883              	_ZL28cpu_irq_prev_interrupt_state:
 884 0000 00       		.space	1
 885              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 886              		.align	2
 887              		.type	_ZL32cpu_irq_critical_section_counter, %object
 888              		.size	_ZL32cpu_irq_critical_section_counter, 4
 889              	_ZL32cpu_irq_critical_section_counter:
 890 0000 00000000 		.space	4
 891              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
