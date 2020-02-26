ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc8M4Uc5.s 			page 1


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
  15              		.file	"MassStorage.cpp"
  16              		.section	.text._ZN11MassStorageC2EP8Platform,"ax",%progbits
  17              		.align	2
  18              		.global	_ZN11MassStorageC2EP8Platform
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN11MassStorageC2EP8Platform, %function
  22              	_ZN11MassStorageC2EP8Platform:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 10B5     		push	{r4, lr}
  26 0002 4FF48C62 		mov	r2, #1120
  27 0006 0446     		mov	r4, r0
  28 0008 40F8041B 		str	r1, [r0], #4
  29 000c 0021     		movs	r1, #0
  30 000e FFF7FEFF 		bl	memset
  31 0012 2046     		mov	r0, r4
  32 0014 10BD     		pop	{r4, pc}
  33              		.size	_ZN11MassStorageC2EP8Platform, .-_ZN11MassStorageC2EP8Platform
  34              		.global	_ZN11MassStorageC1EP8Platform
  35              		.thumb_set _ZN11MassStorageC1EP8Platform,_ZN11MassStorageC2EP8Platform
  36 0016 00BF     		.section	.text._ZN11MassStorage11CombineNameEPKcS1_,"ax",%progbits
  37              		.align	2
  38              		.global	_ZN11MassStorage11CombineNameEPKcS1_
  39              		.thumb
  40              		.thumb_func
  41              		.type	_ZN11MassStorage11CombineNameEPKcS1_, %function
  42              	_ZN11MassStorage11CombineNameEPKcS1_:
  43              		@ args = 0, pretend = 0, frame = 0
  44              		@ frame_needed = 0, uses_anonymous_args = 0
  45 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  46 0004 8846     		mov	r8, r1
  47 0006 0446     		mov	r4, r0
  48 0008 9146     		mov	r9, r2
  49 000a 0029     		cmp	r1, #0
  50 000c 58D0     		beq	.L16
  51 000e 1578     		ldrb	r5, [r2]	@ zero_extendqisi2
  52 0010 2F2D     		cmp	r5, #47
  53 0012 53D0     		beq	.L18
  54 0014 1046     		mov	r0, r2
  55 0016 FFF7FEFF 		bl	strlen
  56 001a 0128     		cmp	r0, #1
  57 001c 06D9     		bls	.L4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc8M4Uc5.s 			page 2


  58 001e 303D     		subs	r5, r5, #48
  59 0020 092D     		cmp	r5, #9
  60 0022 03D8     		bhi	.L4
  61 0024 99F80130 		ldrb	r3, [r9, #1]	@ zero_extendqisi2
  62 0028 3A2B     		cmp	r3, #58
  63 002a 47D0     		beq	.L18
  64              	.L4:
  65 002c 0026     		movs	r6, #0
  66 002e 3346     		mov	r3, r6
  67              	.L5:
  68 0030 18F80650 		ldrb	r5, [r8, r6]	@ zero_extendqisi2
  69 0034 E718     		adds	r7, r4, r3
  70 0036 9DB1     		cbz	r5, .L10
  71              	.L7:
  72 0038 0A2D     		cmp	r5, #10
  73 003a 11D0     		beq	.L10
  74 003c 0133     		adds	r3, r3, #1
  75 003e 642B     		cmp	r3, #100
  76 0040 87F88A54 		strb	r5, [r7, #1162]
  77 0044 06F10106 		add	r6, r6, #1
  78 0048 F2D9     		bls	.L5
  79 004a 2068     		ldr	r0, [r4]
  80 004c 1D4A     		ldr	r2, .L24
  81 004e 0621     		movs	r1, #6
  82 0050 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
  83 0054 18F80650 		ldrb	r5, [r8, r6]	@ zero_extendqisi2
  84 0058 0023     		movs	r3, #0
  85 005a E718     		adds	r7, r4, r3
  86 005c 002D     		cmp	r5, #0
  87 005e EBD1     		bne	.L7
  88              	.L10:
  89 0060 FEB9     		cbnz	r6, .L8
  90              	.L3:
  91 0062 09F1FF35 		add	r5, r9, #-1
  92              	.L11:
  93 0066 15F8011F 		ldrb	r1, [r5, #1]!	@ zero_extendqisi2
  94 006a E218     		adds	r2, r4, r3
  95 006c 89B1     		cbz	r1, .L15
  96              	.L13:
  97 006e 0A29     		cmp	r1, #10
  98 0070 0FD0     		beq	.L15
  99 0072 0133     		adds	r3, r3, #1
 100 0074 642B     		cmp	r3, #100
 101 0076 82F88A14 		strb	r1, [r2, #1162]
 102 007a F4D9     		bls	.L11
 103 007c 114A     		ldr	r2, .L24
 104 007e 2068     		ldr	r0, [r4]
 105 0080 0621     		movs	r1, #6
 106 0082 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 107 0086 15F8011F 		ldrb	r1, [r5, #1]!	@ zero_extendqisi2
 108 008a 0023     		movs	r3, #0
 109 008c E218     		adds	r2, r4, r3
 110 008e 0029     		cmp	r1, #0
 111 0090 EDD1     		bne	.L13
 112              	.L15:
 113 0092 2344     		add	r3, r3, r4
 114 0094 0022     		movs	r2, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc8M4Uc5.s 			page 3


 115 0096 83F88A24 		strb	r2, [r3, #1162]
 116 009a 04F28A40 		addw	r0, r4, #1162
 117 009e BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 118              	.L8:
 119 00a2 4644     		add	r6, r6, r8
 120 00a4 16F8012C 		ldrb	r2, [r6, #-1]	@ zero_extendqisi2
 121 00a8 2F2A     		cmp	r2, #47
 122 00aa DAD0     		beq	.L3
 123 00ac 632B     		cmp	r3, #99
 124 00ae D8D8     		bhi	.L3
 125 00b0 E218     		adds	r2, r4, r3
 126 00b2 2F21     		movs	r1, #47
 127 00b4 82F88A14 		strb	r1, [r2, #1162]
 128 00b8 0133     		adds	r3, r3, #1
 129 00ba D2E7     		b	.L3
 130              	.L18:
 131 00bc 0023     		movs	r3, #0
 132 00be D0E7     		b	.L3
 133              	.L16:
 134 00c0 0B46     		mov	r3, r1
 135 00c2 CEE7     		b	.L3
 136              	.L25:
 137              		.align	2
 138              	.L24:
 139 00c4 00000000 		.word	.LC0
 140              		.size	_ZN11MassStorage11CombineNameEPKcS1_, .-_ZN11MassStorage11CombineNameEPKcS1_
 141              		.section	.text._ZN11MassStorage12GetMonthNameEh,"ax",%progbits
 142              		.align	2
 143              		.global	_ZN11MassStorage12GetMonthNameEh
 144              		.thumb
 145              		.thumb_func
 146              		.type	_ZN11MassStorage12GetMonthNameEh, %function
 147              	_ZN11MassStorage12GetMonthNameEh:
 148              		@ args = 0, pretend = 0, frame = 0
 149              		@ frame_needed = 0, uses_anonymous_args = 0
 150              		@ link register save eliminated.
 151 0000 0C29     		cmp	r1, #12
 152 0002 9ABF     		itte	ls
 153 0004 024B     		ldrls	r3, .L29
 154 0006 53F82100 		ldrls	r0, [r3, r1, lsl #2]
 155 000a 0248     		ldrhi	r0, .L29+4
 156 000c 7047     		bx	lr
 157              	.L30:
 158 000e 00BF     		.align	2
 159              	.L29:
 160 0010 00000000 		.word	.LANCHOR0
 161 0014 20000000 		.word	.LC1
 162              		.size	_ZN11MassStorage12GetMonthNameEh, .-_ZN11MassStorage12GetMonthNameEh
 163              		.section	.text._ZN11MassStorage6DeleteEPKcS1_,"ax",%progbits
 164              		.align	2
 165              		.global	_ZN11MassStorage6DeleteEPKcS1_
 166              		.thumb
 167              		.thumb_func
 168              		.type	_ZN11MassStorage6DeleteEPKcS1_, %function
 169              	_ZN11MassStorage6DeleteEPKcS1_:
 170              		@ args = 0, pretend = 0, frame = 0
 171              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc8M4Uc5.s 			page 4


 172 0000 38B5     		push	{r3, r4, r5, lr}
 173 0002 0546     		mov	r5, r0
 174 0004 1446     		mov	r4, r2
 175 0006 29B1     		cbz	r1, .L32
 176 0008 0368     		ldr	r3, [r0]
 177 000a D3F83C08 		ldr	r0, [r3, #2108]
 178 000e FFF7FEFF 		bl	_ZN11MassStorage11CombineNameEPKcS1_
 179 0012 0446     		mov	r4, r0
 180              	.L32:
 181 0014 2046     		mov	r0, r4
 182 0016 FFF7FEFF 		bl	f_unlink
 183 001a 08B9     		cbnz	r0, .L38
 184 001c 0120     		movs	r0, #1
 185 001e 38BD     		pop	{r3, r4, r5, pc}
 186              	.L38:
 187 0020 2868     		ldr	r0, [r5]
 188 0022 034A     		ldr	r2, .L39
 189 0024 2346     		mov	r3, r4
 190 0026 0621     		movs	r1, #6
 191 0028 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 192 002c 0020     		movs	r0, #0
 193 002e 38BD     		pop	{r3, r4, r5, pc}
 194              	.L40:
 195              		.align	2
 196              	.L39:
 197 0030 24000000 		.word	.LC2
 198              		.size	_ZN11MassStorage6DeleteEPKcS1_, .-_ZN11MassStorage6DeleteEPKcS1_
 199              		.section	.text._ZN11MassStorage13MakeDirectoryEPKcS1_,"ax",%progbits
 200              		.align	2
 201              		.global	_ZN11MassStorage13MakeDirectoryEPKcS1_
 202              		.thumb
 203              		.thumb_func
 204              		.type	_ZN11MassStorage13MakeDirectoryEPKcS1_, %function
 205              	_ZN11MassStorage13MakeDirectoryEPKcS1_:
 206              		@ args = 0, pretend = 0, frame = 0
 207              		@ frame_needed = 0, uses_anonymous_args = 0
 208 0000 38B5     		push	{r3, r4, r5, lr}
 209 0002 0368     		ldr	r3, [r0]
 210 0004 0446     		mov	r4, r0
 211 0006 D3F83C08 		ldr	r0, [r3, #2108]
 212 000a FFF7FEFF 		bl	_ZN11MassStorage11CombineNameEPKcS1_
 213 000e 0546     		mov	r5, r0
 214 0010 FFF7FEFF 		bl	f_mkdir
 215 0014 08B9     		cbnz	r0, .L44
 216 0016 0120     		movs	r0, #1
 217 0018 38BD     		pop	{r3, r4, r5, pc}
 218              	.L44:
 219 001a 2068     		ldr	r0, [r4]
 220 001c 034A     		ldr	r2, .L45
 221 001e 2B46     		mov	r3, r5
 222 0020 0621     		movs	r1, #6
 223 0022 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 224 0026 0020     		movs	r0, #0
 225 0028 38BD     		pop	{r3, r4, r5, pc}
 226              	.L46:
 227 002a 00BF     		.align	2
 228              	.L45:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc8M4Uc5.s 			page 5


 229 002c 3C000000 		.word	.LC3
 230              		.size	_ZN11MassStorage13MakeDirectoryEPKcS1_, .-_ZN11MassStorage13MakeDirectoryEPKcS1_
 231              		.section	.text._ZN11MassStorage13MakeDirectoryEPKc,"ax",%progbits
 232              		.align	2
 233              		.global	_ZN11MassStorage13MakeDirectoryEPKc
 234              		.thumb
 235              		.thumb_func
 236              		.type	_ZN11MassStorage13MakeDirectoryEPKc, %function
 237              	_ZN11MassStorage13MakeDirectoryEPKc:
 238              		@ args = 0, pretend = 0, frame = 0
 239              		@ frame_needed = 0, uses_anonymous_args = 0
 240 0000 38B5     		push	{r3, r4, r5, lr}
 241 0002 0546     		mov	r5, r0
 242 0004 0846     		mov	r0, r1
 243 0006 0C46     		mov	r4, r1
 244 0008 FFF7FEFF 		bl	f_mkdir
 245 000c 08B9     		cbnz	r0, .L50
 246 000e 0120     		movs	r0, #1
 247 0010 38BD     		pop	{r3, r4, r5, pc}
 248              	.L50:
 249 0012 2868     		ldr	r0, [r5]
 250 0014 034A     		ldr	r2, .L51
 251 0016 2346     		mov	r3, r4
 252 0018 0621     		movs	r1, #6
 253 001a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 254 001e 0020     		movs	r0, #0
 255 0020 38BD     		pop	{r3, r4, r5, pc}
 256              	.L52:
 257 0022 00BF     		.align	2
 258              	.L51:
 259 0024 3C000000 		.word	.LC3
 260              		.size	_ZN11MassStorage13MakeDirectoryEPKc, .-_ZN11MassStorage13MakeDirectoryEPKc
 261              		.section	.text._ZN11MassStorage6RenameEPKcS1_,"ax",%progbits
 262              		.align	2
 263              		.global	_ZN11MassStorage6RenameEPKcS1_
 264              		.thumb
 265              		.thumb_func
 266              		.type	_ZN11MassStorage6RenameEPKcS1_, %function
 267              	_ZN11MassStorage6RenameEPKcS1_:
 268              		@ args = 0, pretend = 0, frame = 0
 269              		@ frame_needed = 0, uses_anonymous_args = 0
 270 0000 70B5     		push	{r4, r5, r6, lr}
 271 0002 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 272 0004 303B     		subs	r3, r3, #48
 273 0006 092B     		cmp	r3, #9
 274 0008 82B0     		sub	sp, sp, #8
 275 000a 1446     		mov	r4, r2
 276 000c 0646     		mov	r6, r0
 277 000e 0D46     		mov	r5, r1
 278 0010 03D8     		bhi	.L54
 279 0012 5378     		ldrb	r3, [r2, #1]	@ zero_extendqisi2
 280 0014 3A2B     		cmp	r3, #58
 281 0016 08BF     		it	eq
 282 0018 941C     		addeq	r4, r2, #2
 283              	.L54:
 284 001a 2846     		mov	r0, r5
 285 001c 2146     		mov	r1, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc8M4Uc5.s 			page 6


 286 001e FFF7FEFF 		bl	f_rename
 287 0022 10B9     		cbnz	r0, .L57
 288 0024 0120     		movs	r0, #1
 289 0026 02B0     		add	sp, sp, #8
 290              		@ sp needed
 291 0028 70BD     		pop	{r4, r5, r6, pc}
 292              	.L57:
 293 002a 3068     		ldr	r0, [r6]
 294 002c 044A     		ldr	r2, .L58
 295 002e 0094     		str	r4, [sp]
 296 0030 2B46     		mov	r3, r5
 297 0032 0621     		movs	r1, #6
 298 0034 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 299 0038 0020     		movs	r0, #0
 300 003a 02B0     		add	sp, sp, #8
 301              		@ sp needed
 302 003c 70BD     		pop	{r4, r5, r6, pc}
 303              	.L59:
 304 003e 00BF     		.align	2
 305              	.L58:
 306 0040 58000000 		.word	.LC4
 307              		.size	_ZN11MassStorage6RenameEPKcS1_, .-_ZN11MassStorage6RenameEPKcS1_
 308              		.section	.text._ZNK11MassStorage10FileExistsEPKc,"ax",%progbits
 309              		.align	2
 310              		.global	_ZNK11MassStorage10FileExistsEPKc
 311              		.thumb
 312              		.thumb_func
 313              		.type	_ZNK11MassStorage10FileExistsEPKc, %function
 314              	_ZNK11MassStorage10FileExistsEPKc:
 315              		@ args = 0, pretend = 0, frame = 32
 316              		@ frame_needed = 0, uses_anonymous_args = 0
 317 0000 00B5     		push	{lr}
 318 0002 89B0     		sub	sp, sp, #36
 319 0004 0023     		movs	r3, #0
 320 0006 0846     		mov	r0, r1
 321 0008 6946     		mov	r1, sp
 322 000a 0693     		str	r3, [sp, #24]
 323 000c FFF7FEFF 		bl	f_stat
 324 0010 D0F10100 		rsbs	r0, r0, #1
 325 0014 38BF     		it	cc
 326 0016 0020     		movcc	r0, #0
 327 0018 09B0     		add	sp, sp, #36
 328              		@ sp needed
 329 001a 5DF804FB 		ldr	pc, [sp], #4
 330              		.size	_ZNK11MassStorage10FileExistsEPKc, .-_ZNK11MassStorage10FileExistsEPKc
 331 001e 00BF     		.section	.text._ZNK11MassStorage10FileExistsEPKcS1_,"ax",%progbits
 332              		.align	2
 333              		.global	_ZNK11MassStorage10FileExistsEPKcS1_
 334              		.thumb
 335              		.thumb_func
 336              		.type	_ZNK11MassStorage10FileExistsEPKcS1_, %function
 337              	_ZNK11MassStorage10FileExistsEPKcS1_:
 338              		@ args = 0, pretend = 0, frame = 32
 339              		@ frame_needed = 0, uses_anonymous_args = 0
 340 0000 00B5     		push	{lr}
 341 0002 0346     		mov	r3, r0
 342 0004 89B0     		sub	sp, sp, #36
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc8M4Uc5.s 			page 7


 343 0006 1046     		mov	r0, r2
 344 0008 21B1     		cbz	r1, .L62
 345 000a 1B68     		ldr	r3, [r3]
 346 000c D3F83C08 		ldr	r0, [r3, #2108]
 347 0010 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameEPKcS1_
 348              	.L62:
 349 0014 0023     		movs	r3, #0
 350 0016 6946     		mov	r1, sp
 351 0018 0693     		str	r3, [sp, #24]
 352 001a FFF7FEFF 		bl	f_stat
 353 001e D0F10100 		rsbs	r0, r0, #1
 354 0022 38BF     		it	cc
 355 0024 0020     		movcc	r0, #0
 356 0026 09B0     		add	sp, sp, #36
 357              		@ sp needed
 358 0028 5DF804FB 		ldr	pc, [sp], #4
 359              		.size	_ZNK11MassStorage10FileExistsEPKcS1_, .-_ZNK11MassStorage10FileExistsEPKcS1_
 360              		.section	.text._ZNK11MassStorage15DirectoryExistsEPKc,"ax",%progbits
 361              		.align	2
 362              		.global	_ZNK11MassStorage15DirectoryExistsEPKc
 363              		.thumb
 364              		.thumb_func
 365              		.type	_ZNK11MassStorage15DirectoryExistsEPKc, %function
 366              	_ZNK11MassStorage15DirectoryExistsEPKc:
 367              		@ args = 0, pretend = 0, frame = 40
 368              		@ frame_needed = 0, uses_anonymous_args = 0
 369 0000 00B5     		push	{lr}
 370 0002 8BB0     		sub	sp, sp, #44
 371 0004 0023     		movs	r3, #0
 372 0006 01A8     		add	r0, sp, #4
 373 0008 0893     		str	r3, [sp, #32]
 374 000a FFF7FEFF 		bl	f_opendir
 375 000e D0F10100 		rsbs	r0, r0, #1
 376 0012 38BF     		it	cc
 377 0014 0020     		movcc	r0, #0
 378 0016 0BB0     		add	sp, sp, #44
 379              		@ sp needed
 380 0018 5DF804FB 		ldr	pc, [sp], #4
 381              		.size	_ZNK11MassStorage15DirectoryExistsEPKc, .-_ZNK11MassStorage15DirectoryExistsEPKc
 382              		.section	.text._ZN11MassStorage15DirectoryExistsEPKcS1_,"ax",%progbits
 383              		.align	2
 384              		.global	_ZN11MassStorage15DirectoryExistsEPKcS1_
 385              		.thumb
 386              		.thumb_func
 387              		.type	_ZN11MassStorage15DirectoryExistsEPKcS1_, %function
 388              	_ZN11MassStorage15DirectoryExistsEPKcS1_:
 389              		@ args = 0, pretend = 0, frame = 40
 390              		@ frame_needed = 0, uses_anonymous_args = 0
 391 0000 00B5     		push	{lr}
 392 0002 8BB0     		sub	sp, sp, #44
 393 0004 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameEPKcS1_
 394 0008 0023     		movs	r3, #0
 395 000a 0146     		mov	r1, r0
 396 000c 01A8     		add	r0, sp, #4
 397 000e 0893     		str	r3, [sp, #32]
 398 0010 FFF7FEFF 		bl	f_opendir
 399 0014 D0F10100 		rsbs	r0, r0, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc8M4Uc5.s 			page 8


 400 0018 38BF     		it	cc
 401 001a 0020     		movcc	r0, #0
 402 001c 0BB0     		add	sp, sp, #44
 403              		@ sp needed
 404 001e 5DF804FB 		ldr	pc, [sp], #4
 405              		.size	_ZN11MassStorage15DirectoryExistsEPKcS1_, .-_ZN11MassStorage15DirectoryExistsEPKcS1_
 406 0022 00BF     		.section	.text._ZN11MassStorage19SetLastModifiedTimeEPKcS1_l,"ax",%progbits
 407              		.align	2
 408              		.global	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_l
 409              		.thumb
 410              		.thumb_func
 411              		.type	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_l, %function
 412              	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_l:
 413              		@ args = 0, pretend = 0, frame = 40
 414              		@ frame_needed = 0, uses_anonymous_args = 0
 415 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 416 0002 8BB0     		sub	sp, sp, #44
 417 0004 1546     		mov	r5, r2
 418 0006 0193     		str	r3, [sp, #4]
 419 0008 29B1     		cbz	r1, .L69
 420 000a 0368     		ldr	r3, [r0]
 421 000c D3F83C08 		ldr	r0, [r3, #2108]
 422 0010 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameEPKcS1_
 423 0014 0546     		mov	r5, r0
 424              	.L69:
 425 0016 01A8     		add	r0, sp, #4
 426 0018 FFF7FEFF 		bl	gmtime
 427 001c D0F810E0 		ldr	lr, [r0, #16]
 428 0020 4269     		ldr	r2, [r0, #20]
 429 0022 8368     		ldr	r3, [r0, #8]
 430 0024 4768     		ldr	r7, [r0, #4]
 431 0026 C668     		ldr	r6, [r0, #12]
 432 0028 0068     		ldr	r0, [r0]
 433 002a 0EF10104 		add	r4, lr, #1
 434 002e 6401     		lsls	r4, r4, #5
 435 0030 503A     		subs	r2, r2, #80
 436 0032 DB02     		lsls	r3, r3, #11
 437 0034 44EA4222 		orr	r2, r4, r2, lsl #9
 438 0038 43EA4713 		orr	r3, r3, r7, lsl #5
 439 003c 43EA5003 		orr	r3, r3, r0, lsr #1
 440 0040 3243     		orrs	r2, r2, r6
 441 0042 02A9     		add	r1, sp, #8
 442 0044 2846     		mov	r0, r5
 443 0046 ADF80C20 		strh	r2, [sp, #12]	@ movhi
 444 004a ADF80E30 		strh	r3, [sp, #14]	@ movhi
 445 004e FFF7FEFF 		bl	f_utime
 446 0052 D0F10104 		rsbs	r4, r0, #1
 447 0056 38BF     		it	cc
 448 0058 0024     		movcc	r4, #0
 449 005a 34B9     		cbnz	r4, .L70
 450 005c 044B     		ldr	r3, .L74
 451 005e 054A     		ldr	r2, .L74+4
 452 0060 1868     		ldr	r0, [r3]
 453 0062 0421     		movs	r1, #4
 454 0064 2B46     		mov	r3, r5
 455 0066 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 456              	.L70:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc8M4Uc5.s 			page 9


 457 006a 2046     		mov	r0, r4
 458 006c 0BB0     		add	sp, sp, #44
 459              		@ sp needed
 460 006e F0BD     		pop	{r4, r5, r6, r7, pc}
 461              	.L75:
 462              		.align	2
 463              	.L74:
 464 0070 00000000 		.word	reprap
 465 0074 84000000 		.word	.LC5
 466              		.size	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_l, .-_ZN11MassStorage19SetLastModifiedTimeEPKcS1
 467              		.global	__aeabi_f2d
 468              		.section	.text._ZN11MassStorage5MountEjR9StringRefb,"ax",%progbits
 469              		.align	2
 470              		.global	_ZN11MassStorage5MountEjR9StringRefb
 471              		.thumb
 472              		.thumb_func
 473              		.type	_ZN11MassStorage5MountEjR9StringRefb, %function
 474              	_ZN11MassStorage5MountEjR9StringRefb:
 475              		@ args = 0, pretend = 0, frame = 0
 476              		@ frame_needed = 0, uses_anonymous_args = 0
 477 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 478 0004 2DED028B 		fstmfdd	sp!, {d8}
 479 0008 0129     		cmp	r1, #1
 480 000a 85B0     		sub	sp, sp, #20
 481 000c 0C46     		mov	r4, r1
 482 000e 0646     		mov	r6, r0
 483 0010 1746     		mov	r7, r2
 484 0012 9A46     		mov	r10, r3
 485 0014 30D8     		bhi	.L104
 486 0016 00EB0109 		add	r9, r0, r1
 487 001a 99F88834 		ldrb	r3, [r9, #1160]	@ zero_extendqisi2
 488 001e 002B     		cmp	r3, #0
 489 0020 35D1     		bne	.L105
 490              	.L79:
 491 0022 5E4D     		ldr	r5, .L111
 492 0024 95F800B0 		ldrb	fp, [r5]	@ zero_extendqisi2
 493 0028 5FFA84F8 		uxtb	r8, r4
 494 002c BBF1000F 		cmp	fp, #0
 495 0030 3DD0     		beq	.L88
 496 0032 4046     		mov	r0, r8
 497 0034 FFF7FEFF 		bl	sd_mmc_check
 498 0038 8346     		mov	fp, r0
 499 003a 0028     		cmp	r0, #0
 500 003c 4BD1     		bne	.L106
 501              	.L81:
 502 003e 4FF40C73 		mov	r3, #560
 503 0042 03FB0461 		mla	r1, r3, r4, r6
 504 0046 0431     		adds	r1, r1, #4
 505 0048 4046     		mov	r0, r8
 506 004a 85F800B0 		strb	fp, [r5]
 507 004e FFF7FEFF 		bl	f_mount
 508 0052 0346     		mov	r3, r0
 509 0054 0028     		cmp	r0, #0
 510 0056 40F09A80 		bne	.L107
 511 005a 0125     		movs	r5, #1
 512 005c 89F88854 		strb	r5, [r9, #1160]
 513 0060 BAF1000F 		cmp	r10, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc8M4Uc5.s 			page 10


 514 0064 61D1     		bne	.L108
 515 0066 3B68     		ldr	r3, [r7]
 516 0068 2846     		mov	r0, r5
 517 006a 83F800A0 		strb	r10, [r3]
 518 006e 05B0     		add	sp, sp, #20
 519              		@ sp needed
 520 0070 BDEC028B 		fldmfdd	sp!, {d8}
 521 0074 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 522              	.L104:
 523 0078 1046     		mov	r0, r2
 524 007a 4949     		ldr	r1, .L111+4
 525 007c FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 526 0080 0125     		movs	r5, #1
 527              	.L100:
 528 0082 2846     		mov	r0, r5
 529 0084 05B0     		add	sp, sp, #20
 530              		@ sp needed
 531 0086 BDEC028B 		fldmfdd	sp!, {d8}
 532 008a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 533              	.L105:
 534 008e 4FF40C71 		mov	r1, #560
 535 0092 01FB0401 		mla	r1, r1, r4, r0
 536 0096 0431     		adds	r1, r1, #4
 537 0098 0068     		ldr	r0, [r0]
 538 009a FFF7FEFF 		bl	_ZNK8Platform11AnyFileOpenEPK5FATFS
 539 009e 0546     		mov	r5, r0
 540 00a0 0028     		cmp	r0, #0
 541 00a2 BED0     		beq	.L79
 542 00a4 3846     		mov	r0, r7
 543 00a6 3F49     		ldr	r1, .L111+8
 544 00a8 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 545 00ac E9E7     		b	.L100
 546              	.L88:
 547 00ae 4046     		mov	r0, r8
 548 00b0 FFF7FEFF 		bl	sd_mmc_unmount
 549 00b4 89F888B4 		strb	fp, [r9, #1160]
 550 00b8 FFF7FEFF 		bl	millis
 551 00bc 3A4A     		ldr	r2, .L111+12
 552 00be 0123     		movs	r3, #1
 553 00c0 1060     		str	r0, [r2]
 554 00c2 0220     		movs	r0, #2
 555 00c4 2B70     		strb	r3, [r5]
 556 00c6 FFF7FEFF 		bl	delay
 557 00ca 4046     		mov	r0, r8
 558 00cc FFF7FEFF 		bl	sd_mmc_check
 559 00d0 8346     		mov	fp, r0
 560 00d2 0028     		cmp	r0, #0
 561 00d4 B3D0     		beq	.L81
 562              	.L106:
 563 00d6 FFF7FEFF 		bl	millis
 564 00da 334B     		ldr	r3, .L111+12
 565 00dc 1A68     		ldr	r2, [r3]
 566 00de 41F28733 		movw	r3, #4999
 567 00e2 801A     		subs	r0, r0, r2
 568 00e4 9842     		cmp	r0, r3
 569 00e6 04D8     		bhi	.L109
 570 00e8 0220     		movs	r0, #2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc8M4Uc5.s 			page 11


 571 00ea FFF7FEFF 		bl	delay
 572 00ee 0025     		movs	r5, #0
 573 00f0 C7E7     		b	.L100
 574              	.L109:
 575 00f2 0023     		movs	r3, #0
 576 00f4 ABF1020B 		sub	fp, fp, #2
 577 00f8 4046     		mov	r0, r8
 578 00fa 1946     		mov	r1, r3
 579 00fc 5FFA8BFB 		uxtb	fp, fp
 580 0100 2B70     		strb	r3, [r5]
 581 0102 FFF7FEFF 		bl	f_mount
 582 0106 BBF1050F 		cmp	fp, #5
 583 010a 3ED8     		bhi	.L110
 584 010c 274B     		ldr	r3, .L111+16
 585 010e 53F82B30 		ldr	r3, [r3, fp, lsl #2]
 586              	.L91:
 587 0112 3846     		mov	r0, r7
 588 0114 2246     		mov	r2, r4
 589 0116 2649     		ldr	r1, .L111+20
 590 0118 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 591 011c 0125     		movs	r5, #1
 592 011e 2846     		mov	r0, r5
 593 0120 05B0     		add	sp, sp, #20
 594              		@ sp needed
 595 0122 BDEC028B 		fldmfdd	sp!, {d8}
 596 0126 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 597              	.L108:
 598 012a 4046     		mov	r0, r8
 599 012c FFF7FEFF 		bl	sd_mmc_get_capacity
 600 0130 800A     		lsrs	r0, r0, #10
 601 0132 07EE900A 		fmsr	s15, r0	@ int
 602 0136 B8EEE78A 		fsitos	s16, s15
 603 013a DFED1E7A 		flds	s15, .L111+24
 604 013e B4EEE78A 		fcmpes	s16, s15
 605 0142 F1EE10FA 		fmstat
 606 0146 A6BF     		itte	ge
 607 0148 DFED1B7A 		fldsge	s15, .L111+28
 608 014c 1B4D     		ldrge	r5, .L111+32
 609 014e 1C4D     		ldrlt	r5, .L111+36
 610 0150 4046     		mov	r0, r8
 611 0152 A8BF     		it	ge
 612 0154 28EE278A 		fmulsge	s16, s16, s15
 613 0158 FFF7FEFF 		bl	sd_mmc_get_type
 614 015c 0138     		subs	r0, r0, #1
 615 015e C3B2     		uxtb	r3, r0
 616 0160 092B     		cmp	r3, #9
 617 0162 96BF     		itet	ls
 618 0164 174A     		ldrls	r2, .L111+40
 619 0166 184E     		ldrhi	r6, .L111+44
 620 0168 52F82360 		ldrls	r6, [r2, r3, lsl #2]
 621 016c 18EE100A 		fmrs	r0, s16
 622 0170 FFF7FEFF 		bl	__aeabi_f2d
 623 0174 0295     		str	r5, [sp, #8]
 624 0176 CDE90001 		strd	r0, [sp]
 625 017a 3246     		mov	r2, r6
 626 017c 3846     		mov	r0, r7
 627 017e 2346     		mov	r3, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc8M4Uc5.s 			page 12


 628 0180 1249     		ldr	r1, .L111+48
 629 0182 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 630 0186 0125     		movs	r5, #1
 631 0188 7BE7     		b	.L100
 632              	.L110:
 633 018a 114B     		ldr	r3, .L111+52
 634 018c C1E7     		b	.L91
 635              	.L107:
 636 018e 3846     		mov	r0, r7
 637 0190 2246     		mov	r2, r4
 638 0192 1049     		ldr	r1, .L111+56
 639 0194 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 640 0198 0125     		movs	r5, #1
 641 019a 72E7     		b	.L100
 642              	.L112:
 643              		.align	2
 644              	.L111:
 645 019c 00000000 		.word	.LANCHOR2
 646 01a0 DC000000 		.word	.LC10
 647 01a4 68010000 		.word	.LC14
 648 01a8 00000000 		.word	.LANCHOR1
 649 01ac 00000000 		.word	.LANCHOR3
 650 01b0 F8000000 		.word	.LC11
 651 01b4 00008044 		.word	1149239296
 652 01b8 0000803A 		.word	981467136
 653 01bc C4000000 		.word	.LC7
 654 01c0 C8000000 		.word	.LC8
 655 01c4 00000000 		.word	.LANCHOR4
 656 01c8 CC000000 		.word	.LC9
 657 01cc 3C010000 		.word	.LC13
 658 01d0 B4000000 		.word	.LC6
 659 01d4 1C010000 		.word	.LC12
 660              		.size	_ZN11MassStorage5MountEjR9StringRefb, .-_ZN11MassStorage5MountEjR9StringRefb
 661              		.section	.text._ZN11MassStorage4InitEv,"ax",%progbits
 662              		.align	2
 663              		.global	_ZN11MassStorage4InitEv
 664              		.thumb
 665              		.thumb_func
 666              		.type	_ZN11MassStorage4InitEv, %function
 667              	_ZN11MassStorage4InitEv:
 668              		@ args = 0, pretend = 0, frame = 112
 669              		@ frame_needed = 0, uses_anonymous_args = 0
 670 0000 30B5     		push	{r4, r5, lr}
 671 0002 0025     		movs	r5, #0
 672 0004 9DB0     		sub	sp, sp, #116
 673 0006 80F88854 		strb	r5, [r0, #1160]
 674 000a 80F88954 		strb	r5, [r0, #1161]
 675 000e 114A     		ldr	r2, .L120
 676 0010 1149     		ldr	r1, .L120+4
 677 0012 0446     		mov	r4, r0
 678 0014 1148     		ldr	r0, .L120+8
 679 0016 FFF7FEFF 		bl	sd_mmc_init
 680 001a 03AA     		add	r2, sp, #12
 681 001c 6423     		movs	r3, #100
 682 001e 8DF80C50 		strb	r5, [sp, #12]
 683 0022 0192     		str	r2, [sp, #4]
 684 0024 0293     		str	r3, [sp, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc8M4Uc5.s 			page 13


 685              	.L115:
 686 0026 0021     		movs	r1, #0
 687 0028 0B46     		mov	r3, r1
 688 002a 2046     		mov	r0, r4
 689 002c 01AA     		add	r2, sp, #4
 690 002e FFF7FEFF 		bl	_ZN11MassStorage5MountEjR9StringRefb
 691 0032 0028     		cmp	r0, #0
 692 0034 F7D0     		beq	.L115
 693 0036 01A8     		add	r0, sp, #4
 694 0038 FFF7FEFF 		bl	_ZNK9StringRef6strlenEv
 695 003c 40B1     		cbz	r0, .L113
 696 003e 40F6B830 		movw	r0, #3000
 697 0042 FFF7FEFF 		bl	delay
 698 0046 2068     		ldr	r0, [r4]
 699 0048 019A     		ldr	r2, [sp, #4]
 700 004a 0221     		movs	r1, #2
 701 004c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 702              	.L113:
 703 0050 1DB0     		add	sp, sp, #116
 704              		@ sp needed
 705 0052 30BD     		pop	{r4, r5, pc}
 706              	.L121:
 707              		.align	2
 708              	.L120:
 709 0054 00000000 		.word	.LANCHOR7
 710 0058 00000000 		.word	.LANCHOR6
 711 005c 00000000 		.word	.LANCHOR5
 712              		.size	_ZN11MassStorage4InitEv, .-_ZN11MassStorage4InitEv
 713              		.section	.text._ZN11MassStorage7UnmountEjR9StringRef,"ax",%progbits
 714              		.align	2
 715              		.global	_ZN11MassStorage7UnmountEjR9StringRef
 716              		.thumb
 717              		.thumb_func
 718              		.type	_ZN11MassStorage7UnmountEjR9StringRef, %function
 719              	_ZN11MassStorage7UnmountEjR9StringRef:
 720              		@ args = 0, pretend = 0, frame = 0
 721              		@ frame_needed = 0, uses_anonymous_args = 0
 722 0000 0129     		cmp	r1, #1
 723 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 724 0004 0C46     		mov	r4, r1
 725 0006 0546     		mov	r5, r0
 726 0008 1646     		mov	r6, r2
 727 000a 05D9     		bls	.L123
 728 000c 1046     		mov	r0, r2
 729 000e 0E49     		ldr	r1, .L125
 730 0010 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 731 0014 0120     		movs	r0, #1
 732 0016 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 733              	.L123:
 734 0018 4FF40C71 		mov	r1, #560
 735 001c 01FB0401 		mla	r1, r1, r4, r0
 736 0020 E7B2     		uxtb	r7, r4
 737 0022 0431     		adds	r1, r1, #4
 738 0024 0068     		ldr	r0, [r0]
 739 0026 FFF7FEFF 		bl	_ZN8Platform15InvalidateFilesEPK5FATFS
 740 002a 0021     		movs	r1, #0
 741 002c 3846     		mov	r0, r7
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc8M4Uc5.s 			page 14


 742 002e FFF7FEFF 		bl	f_mount
 743 0032 3846     		mov	r0, r7
 744 0034 FFF7FEFF 		bl	sd_mmc_unmount
 745 0038 2C44     		add	r4, r4, r5
 746 003a 3268     		ldr	r2, [r6]
 747 003c 0023     		movs	r3, #0
 748 003e 84F88834 		strb	r3, [r4, #1160]
 749 0042 1370     		strb	r3, [r2]
 750 0044 0120     		movs	r0, #1
 751 0046 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 752              	.L126:
 753              		.align	2
 754              	.L125:
 755 0048 DC000000 		.word	.LC10
 756              		.size	_ZN11MassStorage7UnmountEjR9StringRef, .-_ZN11MassStorage7UnmountEjR9StringRef
 757              		.section	.text._ZN11MassStorage17CheckDriveMountedEPKc,"ax",%progbits
 758              		.align	2
 759              		.global	_ZN11MassStorage17CheckDriveMountedEPKc
 760              		.thumb
 761              		.thumb_func
 762              		.type	_ZN11MassStorage17CheckDriveMountedEPKc, %function
 763              	_ZN11MassStorage17CheckDriveMountedEPKc:
 764              		@ args = 0, pretend = 0, frame = 0
 765              		@ frame_needed = 0, uses_anonymous_args = 0
 766 0000 38B5     		push	{r3, r4, r5, lr}
 767 0002 0546     		mov	r5, r0
 768 0004 0846     		mov	r0, r1
 769 0006 0C46     		mov	r4, r1
 770 0008 FFF7FEFF 		bl	strlen
 771 000c 0128     		cmp	r0, #1
 772 000e 03D9     		bls	.L132
 773 0010 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 774 0012 303B     		subs	r3, r3, #48
 775 0014 092B     		cmp	r3, #9
 776 0016 04D9     		bls	.L134
 777              	.L132:
 778 0018 0023     		movs	r3, #0
 779              	.L128:
 780 001a 2B44     		add	r3, r3, r5
 781 001c 93F88804 		ldrb	r0, [r3, #1160]	@ zero_extendqisi2
 782 0020 38BD     		pop	{r3, r4, r5, pc}
 783              	.L134:
 784 0022 6278     		ldrb	r2, [r4, #1]	@ zero_extendqisi2
 785 0024 3A2A     		cmp	r2, #58
 786 0026 F7D1     		bne	.L132
 787 0028 012B     		cmp	r3, #1
 788 002a F6D9     		bls	.L128
 789 002c 0020     		movs	r0, #0
 790 002e 38BD     		pop	{r3, r4, r5, pc}
 791              		.size	_ZN11MassStorage17CheckDriveMountedEPKc, .-_ZN11MassStorage17CheckDriveMountedEPKc
 792              		.section	.text._ZN11MassStorage16ConvertTimeStampEtt,"ax",%progbits
 793              		.align	2
 794              		.global	_ZN11MassStorage16ConvertTimeStampEtt
 795              		.thumb
 796              		.thumb_func
 797              		.type	_ZN11MassStorage16ConvertTimeStampEtt, %function
 798              	_ZN11MassStorage16ConvertTimeStampEtt:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc8M4Uc5.s 			page 15


 799              		@ args = 0, pretend = 0, frame = 40
 800              		@ frame_needed = 0, uses_anonymous_args = 0
 801 0000 10B5     		push	{r4, lr}
 802 0002 4412     		asrs	r4, r0, #9
 803 0004 8AB0     		sub	sp, sp, #40
 804 0006 0023     		movs	r3, #0
 805 0008 5034     		adds	r4, r4, #80
 806 000a C0F34312 		ubfx	r2, r0, #5, #4
 807 000e 0694     		str	r4, [sp, #24]
 808 0010 0793     		str	r3, [sp, #28]
 809 0012 0893     		str	r3, [sp, #32]
 810 0014 0993     		str	r3, [sp, #36]
 811 0016 02B1     		cbz	r2, .L136
 812 0018 013A     		subs	r2, r2, #1
 813              	.L136:
 814 001a 0AAB     		add	r3, sp, #40
 815 001c 01F01F04 		and	r4, r1, #31
 816 0020 43F8244D 		str	r4, [r3, #-36]!
 817 0024 00F01F00 		and	r0, r0, #31
 818 0028 0128     		cmp	r0, #1
 819 002a ACBF     		ite	ge
 820 002c 0446     		movge	r4, r0
 821 002e 0124     		movlt	r4, #1
 822 0030 1846     		mov	r0, r3
 823 0032 CB0A     		lsrs	r3, r1, #11
 824 0034 C1F34511 		ubfx	r1, r1, #5, #6
 825 0038 0494     		str	r4, [sp, #16]
 826 003a 0592     		str	r2, [sp, #20]
 827 003c 0393     		str	r3, [sp, #12]
 828 003e 0291     		str	r1, [sp, #8]
 829 0040 FFF7FEFF 		bl	mktime
 830 0044 0AB0     		add	sp, sp, #40
 831              		@ sp needed
 832 0046 10BD     		pop	{r4, pc}
 833              		.size	_ZN11MassStorage16ConvertTimeStampEtt, .-_ZN11MassStorage16ConvertTimeStampEtt
 834              		.section	.text._ZN11MassStorage9FindFirstEPKcR8FileInfo,"ax",%progbits
 835              		.align	2
 836              		.global	_ZN11MassStorage9FindFirstEPKcR8FileInfo
 837              		.thumb
 838              		.thumb_func
 839              		.type	_ZN11MassStorage9FindFirstEPKcR8FileInfo, %function
 840              	_ZN11MassStorage9FindFirstEPKcR8FileInfo:
 841              		@ args = 0, pretend = 0, frame = 136
 842              		@ frame_needed = 0, uses_anonymous_args = 0
 843 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 844 0004 0F46     		mov	r7, r1
 845 0006 A3B0     		sub	sp, sp, #140
 846 0008 0646     		mov	r6, r0
 847 000a 6421     		movs	r1, #100
 848 000c 3846     		mov	r0, r7
 849 000e 9046     		mov	r8, r2
 850 0010 FFF7FEFF 		bl	strnlen
 851 0014 0446     		mov	r4, r0
 852 0016 0028     		cmp	r0, #0
 853 0018 4CD1     		bne	.L139
 854 001a 22AD     		add	r5, sp, #136
 855 001c 05F8680D 		strb	r0, [r5, #-104]!
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc8M4Uc5.s 			page 16


 856              	.L140:
 857 0020 0027     		movs	r7, #0
 858 0022 06F26444 		addw	r4, r6, #1124
 859 0026 2946     		mov	r1, r5
 860 0028 C6F88074 		str	r7, [r6, #1152]
 861 002c 2046     		mov	r0, r4
 862 002e FFF7FEFF 		bl	f_opendir
 863 0032 0028     		cmp	r0, #0
 864 0034 39D1     		bne	.L143
 865 0036 08F10105 		add	r5, r8, #1
 866 003a 6423     		movs	r3, #100
 867 003c 0695     		str	r5, [sp, #24]
 868 003e 0793     		str	r3, [sp, #28]
 869              	.L148:
 870 0040 6946     		mov	r1, sp
 871 0042 2046     		mov	r0, r4
 872 0044 FFF7FEFF 		bl	f_readdir
 873 0048 2849     		ldr	r1, .L157
 874 004a 70BB     		cbnz	r0, .L143
 875 004c 9DF80930 		ldrb	r3, [sp, #9]	@ zero_extendqisi2
 876 0050 0DF10900 		add	r0, sp, #9
 877 0054 4BB3     		cbz	r3, .L143
 878 0056 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 879 005a 0028     		cmp	r0, #0
 880 005c F0D1     		bne	.L148
 881 005e 0DF10900 		add	r0, sp, #9
 882 0062 2349     		ldr	r1, .L157+4
 883 0064 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 884 0068 0028     		cmp	r0, #0
 885 006a E9D1     		bne	.L148
 886 006c 9DF80820 		ldrb	r2, [sp, #8]	@ zero_extendqisi2
 887 0070 98F80130 		ldrb	r3, [r8, #1]	@ zero_extendqisi2
 888 0074 C2F30012 		ubfx	r2, r2, #4, #1
 889 0078 88F80020 		strb	r2, [r8]
 890 007c 2BB9     		cbnz	r3, .L147
 891 007e 2846     		mov	r0, r5
 892 0080 0DF10901 		add	r1, sp, #9
 893 0084 6422     		movs	r2, #100
 894 0086 FFF7FEFF 		bl	strncpy
 895              	.L147:
 896 008a 009B     		ldr	r3, [sp]
 897 008c C8F86830 		str	r3, [r8, #104]
 898 0090 BDF80400 		ldrh	r0, [sp, #4]
 899 0094 BDF80610 		ldrh	r1, [sp, #6]
 900 0098 FFF7FEFF 		bl	_ZN11MassStorage16ConvertTimeStampEtt
 901 009c 0123     		movs	r3, #1
 902 009e C8F86C00 		str	r0, [r8, #108]
 903 00a2 1846     		mov	r0, r3
 904 00a4 23B0     		add	sp, sp, #140
 905              		@ sp needed
 906 00a6 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 907              	.L143:
 908 00aa 0023     		movs	r3, #0
 909 00ac 1846     		mov	r0, r3
 910 00ae 23B0     		add	sp, sp, #140
 911              		@ sp needed
 912 00b0 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc8M4Uc5.s 			page 17


 913              	.L139:
 914 00b4 00F1FF39 		add	r9, r0, #-1
 915 00b8 08AD     		add	r5, sp, #32
 916 00ba 17F80930 		ldrb	r3, [r7, r9]	@ zero_extendqisi2
 917 00be 2F2B     		cmp	r3, #47
 918 00c0 3946     		mov	r1, r7
 919 00c2 2846     		mov	r0, r5
 920 00c4 08D0     		beq	.L156
 921 00c6 2246     		mov	r2, r4
 922 00c8 FFF7FEFF 		bl	strncpy
 923 00cc 22AB     		add	r3, sp, #136
 924 00ce 1C44     		add	r4, r4, r3
 925 00d0 0023     		movs	r3, #0
 926 00d2 04F8683C 		strb	r3, [r4, #-104]
 927 00d6 A3E7     		b	.L140
 928              	.L156:
 929 00d8 4A46     		mov	r2, r9
 930 00da FFF7FEFF 		bl	strncpy
 931 00de 22AB     		add	r3, sp, #136
 932 00e0 9944     		add	r9, r9, r3
 933 00e2 0023     		movs	r3, #0
 934 00e4 09F8683C 		strb	r3, [r9, #-104]
 935 00e8 9AE7     		b	.L140
 936              	.L158:
 937 00ea 00BF     		.align	2
 938              	.L157:
 939 00ec 84010000 		.word	.LC15
 940 00f0 88010000 		.word	.LC16
 941              		.size	_ZN11MassStorage9FindFirstEPKcR8FileInfo, .-_ZN11MassStorage9FindFirstEPKcR8FileInfo
 942              		.section	.text._ZN11MassStorage8FindNextER8FileInfo,"ax",%progbits
 943              		.align	2
 944              		.global	_ZN11MassStorage8FindNextER8FileInfo
 945              		.thumb
 946              		.thumb_func
 947              		.type	_ZN11MassStorage8FindNextER8FileInfo, %function
 948              	_ZN11MassStorage8FindNextER8FileInfo:
 949              		@ args = 0, pretend = 0, frame = 32
 950              		@ frame_needed = 0, uses_anonymous_args = 0
 951 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 952 0002 0025     		movs	r5, #0
 953 0004 89B0     		sub	sp, sp, #36
 954 0006 4E1C     		adds	r6, r1, #1
 955 0008 0C46     		mov	r4, r1
 956 000a C0F88054 		str	r5, [r0, #1152]
 957 000e 6427     		movs	r7, #100
 958 0010 00F26440 		addw	r0, r0, #1124
 959 0014 6946     		mov	r1, sp
 960 0016 0696     		str	r6, [sp, #24]
 961 0018 0797     		str	r7, [sp, #28]
 962 001a FFF7FEFF 		bl	f_readdir
 963 001e 28B9     		cbnz	r0, .L164
 964 0020 9DF80930 		ldrb	r3, [sp, #9]	@ zero_extendqisi2
 965 0024 33B9     		cbnz	r3, .L168
 966 0026 1846     		mov	r0, r3
 967 0028 09B0     		add	sp, sp, #36
 968              		@ sp needed
 969 002a F0BD     		pop	{r4, r5, r6, r7, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc8M4Uc5.s 			page 18


 970              	.L164:
 971 002c 2B46     		mov	r3, r5
 972 002e 1846     		mov	r0, r3
 973 0030 09B0     		add	sp, sp, #36
 974              		@ sp needed
 975 0032 F0BD     		pop	{r4, r5, r6, r7, pc}
 976              	.L168:
 977 0034 9DF80810 		ldrb	r1, [sp, #8]	@ zero_extendqisi2
 978 0038 009B     		ldr	r3, [sp]
 979 003a 6278     		ldrb	r2, [r4, #1]	@ zero_extendqisi2
 980 003c A366     		str	r3, [r4, #104]
 981 003e C1F30013 		ubfx	r3, r1, #4, #1
 982 0042 2370     		strb	r3, [r4]
 983 0044 52B1     		cbz	r2, .L169
 984              	.L163:
 985 0046 BDF80400 		ldrh	r0, [sp, #4]
 986 004a BDF80610 		ldrh	r1, [sp, #6]
 987 004e FFF7FEFF 		bl	_ZN11MassStorage16ConvertTimeStampEtt
 988 0052 0123     		movs	r3, #1
 989 0054 E066     		str	r0, [r4, #108]
 990 0056 1846     		mov	r0, r3
 991 0058 09B0     		add	sp, sp, #36
 992              		@ sp needed
 993 005a F0BD     		pop	{r4, r5, r6, r7, pc}
 994              	.L169:
 995 005c 3046     		mov	r0, r6
 996 005e 3A46     		mov	r2, r7
 997 0060 0DF10901 		add	r1, sp, #9
 998 0064 FFF7FEFF 		bl	strncpy
 999 0068 EDE7     		b	.L163
 1000              		.size	_ZN11MassStorage8FindNextER8FileInfo, .-_ZN11MassStorage8FindNextER8FileInfo
 1001 006a 00BF     		.section	.text._ZNK11MassStorage19GetLastModifiedTimeEPKcS1_,"ax",%progbits
 1002              		.align	2
 1003              		.global	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_
 1004              		.thumb
 1005              		.thumb_func
 1006              		.type	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_, %function
 1007              	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_:
 1008              		@ args = 0, pretend = 0, frame = 32
 1009              		@ frame_needed = 0, uses_anonymous_args = 0
 1010 0000 10B5     		push	{r4, lr}
 1011 0002 0346     		mov	r3, r0
 1012 0004 88B0     		sub	sp, sp, #32
 1013 0006 1046     		mov	r0, r2
 1014 0008 21B1     		cbz	r1, .L171
 1015 000a 1B68     		ldr	r3, [r3]
 1016 000c D3F83C08 		ldr	r0, [r3, #2108]
 1017 0010 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameEPKcS1_
 1018              	.L171:
 1019 0014 0024     		movs	r4, #0
 1020 0016 6946     		mov	r1, sp
 1021 0018 0694     		str	r4, [sp, #24]
 1022 001a FFF7FEFF 		bl	f_stat
 1023 001e 10B1     		cbz	r0, .L177
 1024 0020 2046     		mov	r0, r4
 1025 0022 08B0     		add	sp, sp, #32
 1026              		@ sp needed
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc8M4Uc5.s 			page 19


 1027 0024 10BD     		pop	{r4, pc}
 1028              	.L177:
 1029 0026 BDF80400 		ldrh	r0, [sp, #4]
 1030 002a BDF80610 		ldrh	r1, [sp, #6]
 1031 002e FFF7FEFF 		bl	_ZN11MassStorage16ConvertTimeStampEtt
 1032 0032 08B0     		add	sp, sp, #32
 1033              		@ sp needed
 1034 0034 10BD     		pop	{r4, pc}
 1035              		.size	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_, .-_ZNK11MassStorage19GetLastModifiedTimeEPKcS
 1036 0036 00BF     		.section	.rodata._ZL10monthNames,"a",%progbits
 1037              		.align	2
 1038              		.set	.LANCHOR0,. + 0
 1039              		.type	_ZL10monthNames, %object
 1040              		.size	_ZL10monthNames, 52
 1041              	_ZL10monthNames:
 1042 0000 20000000 		.word	.LC1
 1043 0004 3C020000 		.word	.LC29
 1044 0008 40020000 		.word	.LC30
 1045 000c 44020000 		.word	.LC31
 1046 0010 48020000 		.word	.LC32
 1047 0014 4C020000 		.word	.LC33
 1048 0018 50020000 		.word	.LC34
 1049 001c 54020000 		.word	.LC35
 1050 0020 58020000 		.word	.LC36
 1051 0024 5C020000 		.word	.LC37
 1052 0028 60020000 		.word	.LC38
 1053 002c 64020000 		.word	.LC39
 1054 0030 68020000 		.word	.LC40
 1055              		.section	.bss._ZZN11MassStorage5MountEjR9StringRefbE8mounting,"aw",%nobits
 1056              		.set	.LANCHOR2,. + 0
 1057              		.type	_ZZN11MassStorage5MountEjR9StringRefbE8mounting, %object
 1058              		.size	_ZZN11MassStorage5MountEjR9StringRefbE8mounting, 1
 1059              	_ZZN11MassStorage5MountEjR9StringRefbE8mounting:
 1060 0000 00       		.space	1
 1061              		.section	.rodata._ZL16SdCardDetectPins,"a",%progbits
 1062              		.align	2
 1063              		.set	.LANCHOR5,. + 0
 1064              		.type	_ZL16SdCardDetectPins, %object
 1065              		.size	_ZL16SdCardDetectPins, 2
 1066              	_ZL16SdCardDetectPins:
 1067 0000 35       		.byte	53
 1068 0001 FF       		.byte	-1
 1069 0002 0000     		.section	.bss._ZZN11MassStorage5MountEjR9StringRefbE9startTime,"aw",%nobits
 1070              		.align	2
 1071              		.set	.LANCHOR1,. + 0
 1072              		.type	_ZZN11MassStorage5MountEjR9StringRefbE9startTime, %object
 1073              		.size	_ZZN11MassStorage5MountEjR9StringRefbE9startTime, 4
 1074              	_ZZN11MassStorage5MountEjR9StringRefbE9startTime:
 1075 0000 00000000 		.space	4
 1076              		.section	.rodata._ZL18SdWriteProtectPins,"a",%progbits
 1077              		.align	2
 1078              		.set	.LANCHOR6,. + 0
 1079              		.type	_ZL18SdWriteProtectPins, %object
 1080              		.size	_ZL18SdWriteProtectPins, 2
 1081              	_ZL18SdWriteProtectPins:
 1082 0000 FF       		.byte	-1
 1083 0001 FF       		.byte	-1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc8M4Uc5.s 			page 20


 1084 0002 0000     		.section	.rodata.str1.4,"aMS",%progbits,1
 1085              		.align	2
 1086              	.LC0:
 1087 0000 436F6D62 		.ascii	"CombineName() buffer overflow.\000"
 1087      696E654E 
 1087      616D6528 
 1087      29206275 
 1087      66666572 
 1088 001f 00       		.space	1
 1089              	.LC1:
 1090 0020 3F3F3F00 		.ascii	"???\000"
 1091              	.LC2:
 1092 0024 43616E27 		.ascii	"Can't delete file %s\012\000"
 1092      74206465 
 1092      6C657465 
 1092      2066696C 
 1092      65202573 
 1093 003a 0000     		.space	2
 1094              	.LC3:
 1095 003c 43616E27 		.ascii	"Can't create directory %s\012\000"
 1095      74206372 
 1095      65617465 
 1095      20646972 
 1095      6563746F 
 1096 0057 00       		.space	1
 1097              	.LC4:
 1098 0058 43616E27 		.ascii	"Can't rename file or directory %s to %s\012\000"
 1098      74207265 
 1098      6E616D65 
 1098      2066696C 
 1098      65206F72 
 1099 0081 000000   		.space	3
 1100              	.LC5:
 1101 0084 5365744C 		.ascii	"SetLastModifiedTime didn't work for file '%s'\012\000"
 1101      6173744D 
 1101      6F646966 
 1101      69656454 
 1101      696D6520 
 1102 00b3 00       		.space	1
 1103              	.LC6:
 1104 00b4 556E6B6E 		.ascii	"Unknown error\000"
 1104      6F776E20 
 1104      6572726F 
 1104      7200
 1105 00c2 0000     		.space	2
 1106              	.LC7:
 1107 00c4 476200   		.ascii	"Gb\000"
 1108 00c7 00       		.space	1
 1109              	.LC8:
 1110 00c8 4D6200   		.ascii	"Mb\000"
 1111 00cb 00       		.space	1
 1112              	.LC9:
 1113 00cc 556E6B6E 		.ascii	"Unknown type\000"
 1113      6F776E20 
 1113      74797065 
 1113      00
 1114 00d9 000000   		.space	3
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc8M4Uc5.s 			page 21


 1115              	.LC10:
 1116 00dc 53442063 		.ascii	"SD card number out of range\000"
 1116      61726420 
 1116      6E756D62 
 1116      6572206F 
 1116      7574206F 
 1117              	.LC11:
 1118 00f8 43616E6E 		.ascii	"Cannot initialise SD card %u: %s\000"
 1118      6F742069 
 1118      6E697469 
 1118      616C6973 
 1118      65205344 
 1119 0119 000000   		.space	3
 1120              	.LC12:
 1121 011c 43616E27 		.ascii	"Can't mount SD card %u: code %d\000"
 1121      74206D6F 
 1121      756E7420 
 1121      53442063 
 1121      61726420 
 1122              	.LC13:
 1123 013c 25732063 		.ascii	"%s card mounted in slot %u, capacity %.2f%s\000"
 1123      61726420 
 1123      6D6F756E 
 1123      74656420 
 1123      696E2073 
 1124              	.LC14:
 1125 0168 53442063 		.ascii	"SD card has open file(s)\000"
 1125      61726420 
 1125      68617320 
 1125      6F70656E 
 1125      2066696C 
 1126 0181 000000   		.space	3
 1127              	.LC15:
 1128 0184 2E00     		.ascii	".\000"
 1129 0186 0000     		.space	2
 1130              	.LC16:
 1131 0188 2E2E00   		.ascii	"..\000"
 1132 018b 00       		.space	1
 1133              	.LC17:
 1134 018c 43617264 		.ascii	"Card not found\000"
 1134      206E6F74 
 1134      20666F75 
 1134      6E6400
 1135 019b 00       		.space	1
 1136              	.LC18:
 1137 019c 43617264 		.ascii	"Card is unusable\000"
 1137      20697320 
 1137      756E7573 
 1137      61626C65 
 1137      00
 1138 01ad 000000   		.space	3
 1139              	.LC19:
 1140 01b0 536C6F74 		.ascii	"Slot unknown\000"
 1140      20756E6B 
 1140      6E6F776E 
 1140      00
 1141 01bd 000000   		.space	3
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc8M4Uc5.s 			page 22


 1142              	.LC20:
 1143 01c0 436F6D6D 		.ascii	"Communication error\000"
 1143      756E6963 
 1143      6174696F 
 1143      6E206572 
 1143      726F7200 
 1144              	.LC21:
 1145 01d4 496C6C65 		.ascii	"Illegal input parameter\000"
 1145      67616C20 
 1145      696E7075 
 1145      74207061 
 1145      72616D65 
 1146              	.LC22:
 1147 01ec 43617264 		.ascii	"Card write protected\000"
 1147      20777269 
 1147      74652070 
 1147      726F7465 
 1147      63746564 
 1148 0201 000000   		.space	3
 1149              	.LC23:
 1150 0204 534400   		.ascii	"SD\000"
 1151 0207 00       		.space	1
 1152              	.LC24:
 1153 0208 4D4D4300 		.ascii	"MMC\000"
 1154              	.LC25:
 1155 020c 5344494F 		.ascii	"SDIO\000"
 1155      00
 1156 0211 000000   		.space	3
 1157              	.LC26:
 1158 0214 53442043 		.ascii	"SD COMBO\000"
 1158      4F4D424F 
 1158      00
 1159 021d 000000   		.space	3
 1160              	.LC27:
 1161 0220 53444843 		.ascii	"SDHC\000"
 1161      00
 1162 0225 000000   		.space	3
 1163              	.LC28:
 1164 0228 4D4D4320 		.ascii	"MMC High Capacity\000"
 1164      48696768 
 1164      20436170 
 1164      61636974 
 1164      7900
 1165 023a 0000     		.space	2
 1166              	.LC29:
 1167 023c 4A616E00 		.ascii	"Jan\000"
 1168              	.LC30:
 1169 0240 46656200 		.ascii	"Feb\000"
 1170              	.LC31:
 1171 0244 4D617200 		.ascii	"Mar\000"
 1172              	.LC32:
 1173 0248 41707200 		.ascii	"Apr\000"
 1174              	.LC33:
 1175 024c 4D617900 		.ascii	"May\000"
 1176              	.LC34:
 1177 0250 4A756E00 		.ascii	"Jun\000"
 1178              	.LC35:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc8M4Uc5.s 			page 23


 1179 0254 4A756C00 		.ascii	"Jul\000"
 1180              	.LC36:
 1181 0258 41756700 		.ascii	"Aug\000"
 1182              	.LC37:
 1183 025c 53657000 		.ascii	"Sep\000"
 1184              	.LC38:
 1185 0260 4F637400 		.ascii	"Oct\000"
 1186              	.LC39:
 1187 0264 4E6F7600 		.ascii	"Nov\000"
 1188              	.LC40:
 1189 0268 44656300 		.ascii	"Dec\000"
 1190              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1191              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1192              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1193              	_ZL28cpu_irq_prev_interrupt_state:
 1194 0000 00       		.space	1
 1195              		.section	.rodata._ZL11SdSpiCSPins,"a",%progbits
 1196              		.align	2
 1197              		.set	.LANCHOR7,. + 0
 1198              		.type	_ZL11SdSpiCSPins, %object
 1199              		.size	_ZL11SdSpiCSPins, 1
 1200              	_ZL11SdSpiCSPins:
 1201 0000 38       		.byte	56
 1202 0001 000000   		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1203              		.align	2
 1204              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1205              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1206              	_ZL32cpu_irq_critical_section_counter:
 1207 0000 00000000 		.space	4
 1208              		.section	.rodata.CSWTCH.31,"a",%progbits
 1209              		.align	2
 1210              		.set	.LANCHOR4,. + 0
 1211              		.type	CSWTCH.31, %object
 1212              		.size	CSWTCH.31, 40
 1213              	CSWTCH.31:
 1214 0000 04020000 		.word	.LC23
 1215 0004 08020000 		.word	.LC24
 1216 0008 CC000000 		.word	.LC9
 1217 000c 0C020000 		.word	.LC25
 1218 0010 14020000 		.word	.LC26
 1219 0014 CC000000 		.word	.LC9
 1220 0018 CC000000 		.word	.LC9
 1221 001c CC000000 		.word	.LC9
 1222 0020 20020000 		.word	.LC27
 1223 0024 28020000 		.word	.LC28
 1224              		.section	.rodata.CSWTCH.33,"a",%progbits
 1225              		.align	2
 1226              		.set	.LANCHOR3,. + 0
 1227              		.type	CSWTCH.33, %object
 1228              		.size	CSWTCH.33, 24
 1229              	CSWTCH.33:
 1230 0000 8C010000 		.word	.LC17
 1231 0004 9C010000 		.word	.LC18
 1232 0008 B0010000 		.word	.LC19
 1233 000c C0010000 		.word	.LC20
 1234 0010 D4010000 		.word	.LC21
 1235 0014 EC010000 		.word	.LC22
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc8M4Uc5.s 			page 24


 1236              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
