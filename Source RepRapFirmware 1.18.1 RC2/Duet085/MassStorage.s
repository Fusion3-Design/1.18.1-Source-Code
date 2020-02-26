ARM GAS  C:\Users\George\AppData\Local\Temp\ccxIhrLG.s 			page 1


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
  14              		.file	"MassStorage.cpp"
  15              		.section	.text._ZN11MassStorageC2EP8Platform,"ax",%progbits
  16              		.align	2
  17              		.global	_ZN11MassStorageC2EP8Platform
  18              		.thumb
  19              		.thumb_func
  20              		.type	_ZN11MassStorageC2EP8Platform, %function
  21              	_ZN11MassStorageC2EP8Platform:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 10B5     		push	{r4, lr}
  25 0002 4FF48C62 		mov	r2, #1120
  26 0006 0446     		mov	r4, r0
  27 0008 40F8041B 		str	r1, [r0], #4
  28 000c 0021     		movs	r1, #0
  29 000e FFF7FEFF 		bl	memset
  30 0012 2046     		mov	r0, r4
  31 0014 10BD     		pop	{r4, pc}
  32              		.size	_ZN11MassStorageC2EP8Platform, .-_ZN11MassStorageC2EP8Platform
  33              		.global	_ZN11MassStorageC1EP8Platform
  34              		.thumb_set _ZN11MassStorageC1EP8Platform,_ZN11MassStorageC2EP8Platform
  35 0016 00BF     		.section	.text._ZN11MassStorage11CombineNameEPKcS1_,"ax",%progbits
  36              		.align	2
  37              		.global	_ZN11MassStorage11CombineNameEPKcS1_
  38              		.thumb
  39              		.thumb_func
  40              		.type	_ZN11MassStorage11CombineNameEPKcS1_, %function
  41              	_ZN11MassStorage11CombineNameEPKcS1_:
  42              		@ args = 0, pretend = 0, frame = 0
  43              		@ frame_needed = 0, uses_anonymous_args = 0
  44 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  45 0004 8846     		mov	r8, r1
  46 0006 0446     		mov	r4, r0
  47 0008 9146     		mov	r9, r2
  48 000a 0029     		cmp	r1, #0
  49 000c 58D0     		beq	.L16
  50 000e 1578     		ldrb	r5, [r2]	@ zero_extendqisi2
  51 0010 2F2D     		cmp	r5, #47
  52 0012 53D0     		beq	.L18
  53 0014 1046     		mov	r0, r2
  54 0016 FFF7FEFF 		bl	strlen
  55 001a 0128     		cmp	r0, #1
  56 001c 06D9     		bls	.L4
  57 001e 303D     		subs	r5, r5, #48
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxIhrLG.s 			page 2


  58 0020 092D     		cmp	r5, #9
  59 0022 03D8     		bhi	.L4
  60 0024 99F80130 		ldrb	r3, [r9, #1]	@ zero_extendqisi2
  61 0028 3A2B     		cmp	r3, #58
  62 002a 47D0     		beq	.L18
  63              	.L4:
  64 002c 0026     		movs	r6, #0
  65 002e 3346     		mov	r3, r6
  66              	.L5:
  67 0030 18F80650 		ldrb	r5, [r8, r6]	@ zero_extendqisi2
  68 0034 E718     		adds	r7, r4, r3
  69 0036 9DB1     		cbz	r5, .L10
  70              	.L7:
  71 0038 0A2D     		cmp	r5, #10
  72 003a 11D0     		beq	.L10
  73 003c 0133     		adds	r3, r3, #1
  74 003e 642B     		cmp	r3, #100
  75 0040 87F88A54 		strb	r5, [r7, #1162]
  76 0044 06F10106 		add	r6, r6, #1
  77 0048 F2D9     		bls	.L5
  78 004a 2068     		ldr	r0, [r4]
  79 004c 0621     		movs	r1, #6
  80 004e 1D4A     		ldr	r2, .L24
  81 0050 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
  82 0054 18F80650 		ldrb	r5, [r8, r6]	@ zero_extendqisi2
  83 0058 0023     		movs	r3, #0
  84 005a E718     		adds	r7, r4, r3
  85 005c 002D     		cmp	r5, #0
  86 005e EBD1     		bne	.L7
  87              	.L10:
  88 0060 FEB9     		cbnz	r6, .L8
  89              	.L3:
  90 0062 09F1FF35 		add	r5, r9, #-1
  91              	.L11:
  92 0066 15F8011F 		ldrb	r1, [r5, #1]!	@ zero_extendqisi2
  93 006a E218     		adds	r2, r4, r3
  94 006c 89B1     		cbz	r1, .L15
  95              	.L13:
  96 006e 0A29     		cmp	r1, #10
  97 0070 0FD0     		beq	.L15
  98 0072 0133     		adds	r3, r3, #1
  99 0074 642B     		cmp	r3, #100
 100 0076 82F88A14 		strb	r1, [r2, #1162]
 101 007a F4D9     		bls	.L11
 102 007c 0621     		movs	r1, #6
 103 007e 114A     		ldr	r2, .L24
 104 0080 2068     		ldr	r0, [r4]
 105 0082 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 106 0086 15F8011F 		ldrb	r1, [r5, #1]!	@ zero_extendqisi2
 107 008a 0023     		movs	r3, #0
 108 008c E218     		adds	r2, r4, r3
 109 008e 0029     		cmp	r1, #0
 110 0090 EDD1     		bne	.L13
 111              	.L15:
 112 0092 2344     		add	r3, r3, r4
 113 0094 0022     		movs	r2, #0
 114 0096 83F88A24 		strb	r2, [r3, #1162]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxIhrLG.s 			page 3


 115 009a 04F28A40 		addw	r0, r4, #1162
 116 009e BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 117              	.L8:
 118 00a2 4644     		add	r6, r6, r8
 119 00a4 16F8012C 		ldrb	r2, [r6, #-1]	@ zero_extendqisi2
 120 00a8 2F2A     		cmp	r2, #47
 121 00aa DAD0     		beq	.L3
 122 00ac 632B     		cmp	r3, #99
 123 00ae D8D8     		bhi	.L3
 124 00b0 E218     		adds	r2, r4, r3
 125 00b2 2F21     		movs	r1, #47
 126 00b4 82F88A14 		strb	r1, [r2, #1162]
 127 00b8 0133     		adds	r3, r3, #1
 128 00ba D2E7     		b	.L3
 129              	.L18:
 130 00bc 0023     		movs	r3, #0
 131 00be D0E7     		b	.L3
 132              	.L16:
 133 00c0 0B46     		mov	r3, r1
 134 00c2 CEE7     		b	.L3
 135              	.L25:
 136              		.align	2
 137              	.L24:
 138 00c4 00000000 		.word	.LC0
 139              		.size	_ZN11MassStorage11CombineNameEPKcS1_, .-_ZN11MassStorage11CombineNameEPKcS1_
 140              		.section	.text._ZN11MassStorage12GetMonthNameEh,"ax",%progbits
 141              		.align	2
 142              		.global	_ZN11MassStorage12GetMonthNameEh
 143              		.thumb
 144              		.thumb_func
 145              		.type	_ZN11MassStorage12GetMonthNameEh, %function
 146              	_ZN11MassStorage12GetMonthNameEh:
 147              		@ args = 0, pretend = 0, frame = 0
 148              		@ frame_needed = 0, uses_anonymous_args = 0
 149              		@ link register save eliminated.
 150 0000 0C29     		cmp	r1, #12
 151 0002 9ABF     		itte	ls
 152 0004 024B     		ldrls	r3, .L29
 153 0006 53F82100 		ldrls	r0, [r3, r1, lsl #2]
 154 000a 0248     		ldrhi	r0, .L29+4
 155 000c 7047     		bx	lr
 156              	.L30:
 157 000e 00BF     		.align	2
 158              	.L29:
 159 0010 00000000 		.word	.LANCHOR0
 160 0014 20000000 		.word	.LC1
 161              		.size	_ZN11MassStorage12GetMonthNameEh, .-_ZN11MassStorage12GetMonthNameEh
 162              		.section	.text._ZN11MassStorage6DeleteEPKcS1_,"ax",%progbits
 163              		.align	2
 164              		.global	_ZN11MassStorage6DeleteEPKcS1_
 165              		.thumb
 166              		.thumb_func
 167              		.type	_ZN11MassStorage6DeleteEPKcS1_, %function
 168              	_ZN11MassStorage6DeleteEPKcS1_:
 169              		@ args = 0, pretend = 0, frame = 0
 170              		@ frame_needed = 0, uses_anonymous_args = 0
 171 0000 38B5     		push	{r3, r4, r5, lr}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxIhrLG.s 			page 4


 172 0002 0546     		mov	r5, r0
 173 0004 1446     		mov	r4, r2
 174 0006 29B1     		cbz	r1, .L32
 175 0008 0368     		ldr	r3, [r0]
 176 000a D3F8B406 		ldr	r0, [r3, #1716]
 177 000e FFF7FEFF 		bl	_ZN11MassStorage11CombineNameEPKcS1_
 178 0012 0446     		mov	r4, r0
 179              	.L32:
 180 0014 2046     		mov	r0, r4
 181 0016 FFF7FEFF 		bl	f_unlink
 182 001a 08B9     		cbnz	r0, .L38
 183 001c 0120     		movs	r0, #1
 184 001e 38BD     		pop	{r3, r4, r5, pc}
 185              	.L38:
 186 0020 2868     		ldr	r0, [r5]
 187 0022 2346     		mov	r3, r4
 188 0024 0621     		movs	r1, #6
 189 0026 024A     		ldr	r2, .L39
 190 0028 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 191 002c 0020     		movs	r0, #0
 192 002e 38BD     		pop	{r3, r4, r5, pc}
 193              	.L40:
 194              		.align	2
 195              	.L39:
 196 0030 24000000 		.word	.LC2
 197              		.size	_ZN11MassStorage6DeleteEPKcS1_, .-_ZN11MassStorage6DeleteEPKcS1_
 198              		.section	.text._ZN11MassStorage13MakeDirectoryEPKcS1_,"ax",%progbits
 199              		.align	2
 200              		.global	_ZN11MassStorage13MakeDirectoryEPKcS1_
 201              		.thumb
 202              		.thumb_func
 203              		.type	_ZN11MassStorage13MakeDirectoryEPKcS1_, %function
 204              	_ZN11MassStorage13MakeDirectoryEPKcS1_:
 205              		@ args = 0, pretend = 0, frame = 0
 206              		@ frame_needed = 0, uses_anonymous_args = 0
 207 0000 38B5     		push	{r3, r4, r5, lr}
 208 0002 0368     		ldr	r3, [r0]
 209 0004 0446     		mov	r4, r0
 210 0006 D3F8B406 		ldr	r0, [r3, #1716]
 211 000a FFF7FEFF 		bl	_ZN11MassStorage11CombineNameEPKcS1_
 212 000e 0546     		mov	r5, r0
 213 0010 FFF7FEFF 		bl	f_mkdir
 214 0014 08B9     		cbnz	r0, .L44
 215 0016 0120     		movs	r0, #1
 216 0018 38BD     		pop	{r3, r4, r5, pc}
 217              	.L44:
 218 001a 2068     		ldr	r0, [r4]
 219 001c 2B46     		mov	r3, r5
 220 001e 0621     		movs	r1, #6
 221 0020 024A     		ldr	r2, .L45
 222 0022 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 223 0026 0020     		movs	r0, #0
 224 0028 38BD     		pop	{r3, r4, r5, pc}
 225              	.L46:
 226 002a 00BF     		.align	2
 227              	.L45:
 228 002c 3C000000 		.word	.LC3
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxIhrLG.s 			page 5


 229              		.size	_ZN11MassStorage13MakeDirectoryEPKcS1_, .-_ZN11MassStorage13MakeDirectoryEPKcS1_
 230              		.section	.text._ZN11MassStorage13MakeDirectoryEPKc,"ax",%progbits
 231              		.align	2
 232              		.global	_ZN11MassStorage13MakeDirectoryEPKc
 233              		.thumb
 234              		.thumb_func
 235              		.type	_ZN11MassStorage13MakeDirectoryEPKc, %function
 236              	_ZN11MassStorage13MakeDirectoryEPKc:
 237              		@ args = 0, pretend = 0, frame = 0
 238              		@ frame_needed = 0, uses_anonymous_args = 0
 239 0000 38B5     		push	{r3, r4, r5, lr}
 240 0002 0546     		mov	r5, r0
 241 0004 0846     		mov	r0, r1
 242 0006 0C46     		mov	r4, r1
 243 0008 FFF7FEFF 		bl	f_mkdir
 244 000c 08B9     		cbnz	r0, .L50
 245 000e 0120     		movs	r0, #1
 246 0010 38BD     		pop	{r3, r4, r5, pc}
 247              	.L50:
 248 0012 2868     		ldr	r0, [r5]
 249 0014 2346     		mov	r3, r4
 250 0016 0621     		movs	r1, #6
 251 0018 024A     		ldr	r2, .L51
 252 001a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 253 001e 0020     		movs	r0, #0
 254 0020 38BD     		pop	{r3, r4, r5, pc}
 255              	.L52:
 256 0022 00BF     		.align	2
 257              	.L51:
 258 0024 3C000000 		.word	.LC3
 259              		.size	_ZN11MassStorage13MakeDirectoryEPKc, .-_ZN11MassStorage13MakeDirectoryEPKc
 260              		.section	.text._ZN11MassStorage6RenameEPKcS1_,"ax",%progbits
 261              		.align	2
 262              		.global	_ZN11MassStorage6RenameEPKcS1_
 263              		.thumb
 264              		.thumb_func
 265              		.type	_ZN11MassStorage6RenameEPKcS1_, %function
 266              	_ZN11MassStorage6RenameEPKcS1_:
 267              		@ args = 0, pretend = 0, frame = 0
 268              		@ frame_needed = 0, uses_anonymous_args = 0
 269 0000 70B5     		push	{r4, r5, r6, lr}
 270 0002 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 271 0004 82B0     		sub	sp, sp, #8
 272 0006 303B     		subs	r3, r3, #48
 273 0008 092B     		cmp	r3, #9
 274 000a 1446     		mov	r4, r2
 275 000c 0646     		mov	r6, r0
 276 000e 0D46     		mov	r5, r1
 277 0010 03D8     		bhi	.L54
 278 0012 5378     		ldrb	r3, [r2, #1]	@ zero_extendqisi2
 279 0014 3A2B     		cmp	r3, #58
 280 0016 08BF     		it	eq
 281 0018 941C     		addeq	r4, r2, #2
 282              	.L54:
 283 001a 2846     		mov	r0, r5
 284 001c 2146     		mov	r1, r4
 285 001e FFF7FEFF 		bl	f_rename
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxIhrLG.s 			page 6


 286 0022 10B9     		cbnz	r0, .L57
 287 0024 0120     		movs	r0, #1
 288 0026 02B0     		add	sp, sp, #8
 289              		@ sp needed
 290 0028 70BD     		pop	{r4, r5, r6, pc}
 291              	.L57:
 292 002a 3068     		ldr	r0, [r6]
 293 002c 2B46     		mov	r3, r5
 294 002e 0094     		str	r4, [sp]
 295 0030 0621     		movs	r1, #6
 296 0032 034A     		ldr	r2, .L58
 297 0034 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 298 0038 0020     		movs	r0, #0
 299 003a 02B0     		add	sp, sp, #8
 300              		@ sp needed
 301 003c 70BD     		pop	{r4, r5, r6, pc}
 302              	.L59:
 303 003e 00BF     		.align	2
 304              	.L58:
 305 0040 58000000 		.word	.LC4
 306              		.size	_ZN11MassStorage6RenameEPKcS1_, .-_ZN11MassStorage6RenameEPKcS1_
 307              		.section	.text._ZNK11MassStorage10FileExistsEPKc,"ax",%progbits
 308              		.align	2
 309              		.global	_ZNK11MassStorage10FileExistsEPKc
 310              		.thumb
 311              		.thumb_func
 312              		.type	_ZNK11MassStorage10FileExistsEPKc, %function
 313              	_ZNK11MassStorage10FileExistsEPKc:
 314              		@ args = 0, pretend = 0, frame = 32
 315              		@ frame_needed = 0, uses_anonymous_args = 0
 316 0000 00B5     		push	{lr}
 317 0002 89B0     		sub	sp, sp, #36
 318 0004 0023     		movs	r3, #0
 319 0006 0846     		mov	r0, r1
 320 0008 6946     		mov	r1, sp
 321 000a 0693     		str	r3, [sp, #24]
 322 000c FFF7FEFF 		bl	f_stat
 323 0010 D0F10100 		rsbs	r0, r0, #1
 324 0014 38BF     		it	cc
 325 0016 0020     		movcc	r0, #0
 326 0018 09B0     		add	sp, sp, #36
 327              		@ sp needed
 328 001a 5DF804FB 		ldr	pc, [sp], #4
 329              		.size	_ZNK11MassStorage10FileExistsEPKc, .-_ZNK11MassStorage10FileExistsEPKc
 330 001e 00BF     		.section	.text._ZNK11MassStorage10FileExistsEPKcS1_,"ax",%progbits
 331              		.align	2
 332              		.global	_ZNK11MassStorage10FileExistsEPKcS1_
 333              		.thumb
 334              		.thumb_func
 335              		.type	_ZNK11MassStorage10FileExistsEPKcS1_, %function
 336              	_ZNK11MassStorage10FileExistsEPKcS1_:
 337              		@ args = 0, pretend = 0, frame = 32
 338              		@ frame_needed = 0, uses_anonymous_args = 0
 339 0000 00B5     		push	{lr}
 340 0002 0346     		mov	r3, r0
 341 0004 89B0     		sub	sp, sp, #36
 342 0006 1046     		mov	r0, r2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxIhrLG.s 			page 7


 343 0008 21B1     		cbz	r1, .L62
 344 000a 1B68     		ldr	r3, [r3]
 345 000c D3F8B406 		ldr	r0, [r3, #1716]
 346 0010 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameEPKcS1_
 347              	.L62:
 348 0014 0023     		movs	r3, #0
 349 0016 6946     		mov	r1, sp
 350 0018 0693     		str	r3, [sp, #24]
 351 001a FFF7FEFF 		bl	f_stat
 352 001e D0F10100 		rsbs	r0, r0, #1
 353 0022 38BF     		it	cc
 354 0024 0020     		movcc	r0, #0
 355 0026 09B0     		add	sp, sp, #36
 356              		@ sp needed
 357 0028 5DF804FB 		ldr	pc, [sp], #4
 358              		.size	_ZNK11MassStorage10FileExistsEPKcS1_, .-_ZNK11MassStorage10FileExistsEPKcS1_
 359              		.section	.text._ZNK11MassStorage15DirectoryExistsEPKc,"ax",%progbits
 360              		.align	2
 361              		.global	_ZNK11MassStorage15DirectoryExistsEPKc
 362              		.thumb
 363              		.thumb_func
 364              		.type	_ZNK11MassStorage15DirectoryExistsEPKc, %function
 365              	_ZNK11MassStorage15DirectoryExistsEPKc:
 366              		@ args = 0, pretend = 0, frame = 40
 367              		@ frame_needed = 0, uses_anonymous_args = 0
 368 0000 00B5     		push	{lr}
 369 0002 8BB0     		sub	sp, sp, #44
 370 0004 0023     		movs	r3, #0
 371 0006 01A8     		add	r0, sp, #4
 372 0008 0893     		str	r3, [sp, #32]
 373 000a FFF7FEFF 		bl	f_opendir
 374 000e D0F10100 		rsbs	r0, r0, #1
 375 0012 38BF     		it	cc
 376 0014 0020     		movcc	r0, #0
 377 0016 0BB0     		add	sp, sp, #44
 378              		@ sp needed
 379 0018 5DF804FB 		ldr	pc, [sp], #4
 380              		.size	_ZNK11MassStorage15DirectoryExistsEPKc, .-_ZNK11MassStorage15DirectoryExistsEPKc
 381              		.section	.text._ZN11MassStorage15DirectoryExistsEPKcS1_,"ax",%progbits
 382              		.align	2
 383              		.global	_ZN11MassStorage15DirectoryExistsEPKcS1_
 384              		.thumb
 385              		.thumb_func
 386              		.type	_ZN11MassStorage15DirectoryExistsEPKcS1_, %function
 387              	_ZN11MassStorage15DirectoryExistsEPKcS1_:
 388              		@ args = 0, pretend = 0, frame = 40
 389              		@ frame_needed = 0, uses_anonymous_args = 0
 390 0000 00B5     		push	{lr}
 391 0002 8BB0     		sub	sp, sp, #44
 392 0004 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameEPKcS1_
 393 0008 0023     		movs	r3, #0
 394 000a 0146     		mov	r1, r0
 395 000c 01A8     		add	r0, sp, #4
 396 000e 0893     		str	r3, [sp, #32]
 397 0010 FFF7FEFF 		bl	f_opendir
 398 0014 D0F10100 		rsbs	r0, r0, #1
 399 0018 38BF     		it	cc
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxIhrLG.s 			page 8


 400 001a 0020     		movcc	r0, #0
 401 001c 0BB0     		add	sp, sp, #44
 402              		@ sp needed
 403 001e 5DF804FB 		ldr	pc, [sp], #4
 404              		.size	_ZN11MassStorage15DirectoryExistsEPKcS1_, .-_ZN11MassStorage15DirectoryExistsEPKcS1_
 405 0022 00BF     		.section	.text._ZN11MassStorage19SetLastModifiedTimeEPKcS1_l,"ax",%progbits
 406              		.align	2
 407              		.global	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_l
 408              		.thumb
 409              		.thumb_func
 410              		.type	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_l, %function
 411              	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_l:
 412              		@ args = 0, pretend = 0, frame = 40
 413              		@ frame_needed = 0, uses_anonymous_args = 0
 414 0000 70B5     		push	{r4, r5, r6, lr}
 415 0002 8AB0     		sub	sp, sp, #40
 416 0004 0193     		str	r3, [sp, #4]
 417 0006 1446     		mov	r4, r2
 418 0008 29B1     		cbz	r1, .L69
 419 000a 0368     		ldr	r3, [r0]
 420 000c D3F8B406 		ldr	r0, [r3, #1716]
 421 0010 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameEPKcS1_
 422 0014 0446     		mov	r4, r0
 423              	.L69:
 424 0016 01A8     		add	r0, sp, #4
 425 0018 FFF7FEFF 		bl	gmtime
 426 001c 0146     		mov	r1, r0
 427 001e 0069     		ldr	r0, [r0, #16]
 428 0020 4A69     		ldr	r2, [r1, #20]
 429 0022 8B68     		ldr	r3, [r1, #8]
 430 0024 4E68     		ldr	r6, [r1, #4]
 431 0026 0130     		adds	r0, r0, #1
 432 0028 CD68     		ldr	r5, [r1, #12]
 433 002a 4001     		lsls	r0, r0, #5
 434 002c 0968     		ldr	r1, [r1]
 435 002e 503A     		subs	r2, r2, #80
 436 0030 DB02     		lsls	r3, r3, #11
 437 0032 40EA4222 		orr	r2, r0, r2, lsl #9
 438 0036 43EA4613 		orr	r3, r3, r6, lsl #5
 439 003a 2A43     		orrs	r2, r2, r5
 440 003c 43EA5103 		orr	r3, r3, r1, lsr #1
 441 0040 2046     		mov	r0, r4
 442 0042 02A9     		add	r1, sp, #8
 443 0044 ADF80C20 		strh	r2, [sp, #12]	@ movhi
 444 0048 ADF80E30 		strh	r3, [sp, #14]	@ movhi
 445 004c FFF7FEFF 		bl	f_utime
 446 0050 D0F10105 		rsbs	r5, r0, #1
 447 0054 38BF     		it	cc
 448 0056 0025     		movcc	r5, #0
 449 0058 35B9     		cbnz	r5, .L70
 450 005a 054A     		ldr	r2, .L74
 451 005c 2346     		mov	r3, r4
 452 005e 1068     		ldr	r0, [r2]
 453 0060 0421     		movs	r1, #4
 454 0062 044A     		ldr	r2, .L74+4
 455 0064 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 456              	.L70:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxIhrLG.s 			page 9


 457 0068 2846     		mov	r0, r5
 458 006a 0AB0     		add	sp, sp, #40
 459              		@ sp needed
 460 006c 70BD     		pop	{r4, r5, r6, pc}
 461              	.L75:
 462 006e 00BF     		.align	2
 463              	.L74:
 464 0070 00000000 		.word	reprap
 465 0074 84000000 		.word	.LC5
 466              		.size	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_l, .-_ZN11MassStorage19SetLastModifiedTimeEPKcS1
 467              		.global	__aeabi_ui2f
 468              		.global	__aeabi_fcmpge
 469              		.global	__aeabi_fmul
 470              		.global	__aeabi_f2d
 471              		.section	.text._ZN11MassStorage5MountEjR9StringRefb,"ax",%progbits
 472              		.align	2
 473              		.global	_ZN11MassStorage5MountEjR9StringRefb
 474              		.thumb
 475              		.thumb_func
 476              		.type	_ZN11MassStorage5MountEjR9StringRefb, %function
 477              	_ZN11MassStorage5MountEjR9StringRefb:
 478              		@ args = 0, pretend = 0, frame = 0
 479              		@ frame_needed = 0, uses_anonymous_args = 0
 480 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 481 0004 0129     		cmp	r1, #1
 482 0006 85B0     		sub	sp, sp, #20
 483 0008 0C46     		mov	r4, r1
 484 000a 0646     		mov	r6, r0
 485 000c 1746     		mov	r7, r2
 486 000e 9A46     		mov	r10, r3
 487 0010 2ED8     		bhi	.L104
 488 0012 00EB0109 		add	r9, r0, r1
 489 0016 99F88834 		ldrb	r3, [r9, #1160]	@ zero_extendqisi2
 490 001a 002B     		cmp	r3, #0
 491 001c 31D1     		bne	.L105
 492              	.L79:
 493 001e 5B4D     		ldr	r5, .L111
 494 0020 5FFA84F8 		uxtb	r8, r4
 495 0024 95F800B0 		ldrb	fp, [r5]	@ zero_extendqisi2
 496 0028 BBF1000F 		cmp	fp, #0
 497 002c 39D0     		beq	.L88
 498 002e 4046     		mov	r0, r8
 499 0030 FFF7FEFF 		bl	sd_mmc_check
 500 0034 8346     		mov	fp, r0
 501 0036 0028     		cmp	r0, #0
 502 0038 47D1     		bne	.L106
 503              	.L81:
 504 003a 4FF40C73 		mov	r3, #560
 505 003e 03FB0461 		mla	r1, r3, r4, r6
 506 0042 4046     		mov	r0, r8
 507 0044 0431     		adds	r1, r1, #4
 508 0046 85F800B0 		strb	fp, [r5]
 509 004a FFF7FEFF 		bl	f_mount
 510 004e 0346     		mov	r3, r0
 511 0050 0028     		cmp	r0, #0
 512 0052 40F09280 		bne	.L107
 513 0056 0125     		movs	r5, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxIhrLG.s 			page 10


 514 0058 89F88854 		strb	r5, [r9, #1160]
 515 005c BAF1000F 		cmp	r10, #0
 516 0060 5BD1     		bne	.L108
 517 0062 3B68     		ldr	r3, [r7]
 518 0064 2846     		mov	r0, r5
 519 0066 83F800A0 		strb	r10, [r3]
 520 006a 05B0     		add	sp, sp, #20
 521              		@ sp needed
 522 006c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 523              	.L104:
 524 0070 1046     		mov	r0, r2
 525 0072 4749     		ldr	r1, .L111+4
 526 0074 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 527 0078 0125     		movs	r5, #1
 528              	.L100:
 529 007a 2846     		mov	r0, r5
 530 007c 05B0     		add	sp, sp, #20
 531              		@ sp needed
 532 007e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 533              	.L105:
 534 0082 4FF40C71 		mov	r1, #560
 535 0086 01FB0401 		mla	r1, r1, r4, r0
 536 008a 0068     		ldr	r0, [r0]
 537 008c 0431     		adds	r1, r1, #4
 538 008e FFF7FEFF 		bl	_ZNK8Platform11AnyFileOpenEPK5FATFS
 539 0092 0546     		mov	r5, r0
 540 0094 0028     		cmp	r0, #0
 541 0096 C2D0     		beq	.L79
 542 0098 3846     		mov	r0, r7
 543 009a 3E49     		ldr	r1, .L111+8
 544 009c FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 545 00a0 EBE7     		b	.L100
 546              	.L88:
 547 00a2 4046     		mov	r0, r8
 548 00a4 FFF7FEFF 		bl	sd_mmc_unmount
 549 00a8 89F888B4 		strb	fp, [r9, #1160]
 550 00ac FFF7FEFF 		bl	millis
 551 00b0 394A     		ldr	r2, .L111+12
 552 00b2 0123     		movs	r3, #1
 553 00b4 1060     		str	r0, [r2]
 554 00b6 0220     		movs	r0, #2
 555 00b8 2B70     		strb	r3, [r5]
 556 00ba FFF7FEFF 		bl	delay
 557 00be 4046     		mov	r0, r8
 558 00c0 FFF7FEFF 		bl	sd_mmc_check
 559 00c4 8346     		mov	fp, r0
 560 00c6 0028     		cmp	r0, #0
 561 00c8 B7D0     		beq	.L81
 562              	.L106:
 563 00ca FFF7FEFF 		bl	millis
 564 00ce 324A     		ldr	r2, .L111+12
 565 00d0 41F28733 		movw	r3, #4999
 566 00d4 1268     		ldr	r2, [r2]
 567 00d6 801A     		subs	r0, r0, r2
 568 00d8 9842     		cmp	r0, r3
 569 00da 04D8     		bhi	.L109
 570 00dc 0220     		movs	r0, #2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxIhrLG.s 			page 11


 571 00de FFF7FEFF 		bl	delay
 572 00e2 0025     		movs	r5, #0
 573 00e4 C9E7     		b	.L100
 574              	.L109:
 575 00e6 0023     		movs	r3, #0
 576 00e8 ABF1020B 		sub	fp, fp, #2
 577 00ec 4046     		mov	r0, r8
 578 00ee 1946     		mov	r1, r3
 579 00f0 5FFA8BFB 		uxtb	fp, fp
 580 00f4 2B70     		strb	r3, [r5]
 581 00f6 FFF7FEFF 		bl	f_mount
 582 00fa BBF1050F 		cmp	fp, #5
 583 00fe 3AD8     		bhi	.L110
 584 0100 264B     		ldr	r3, .L111+16
 585 0102 53F82B30 		ldr	r3, [r3, fp, lsl #2]
 586              	.L91:
 587 0106 3846     		mov	r0, r7
 588 0108 2246     		mov	r2, r4
 589 010a 2549     		ldr	r1, .L111+20
 590 010c FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 591 0110 0125     		movs	r5, #1
 592 0112 2846     		mov	r0, r5
 593 0114 05B0     		add	sp, sp, #20
 594              		@ sp needed
 595 0116 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 596              	.L108:
 597 011a 4046     		mov	r0, r8
 598 011c FFF7FEFF 		bl	sd_mmc_get_capacity
 599 0120 800A     		lsrs	r0, r0, #10
 600 0122 FFF7FEFF 		bl	__aeabi_ui2f
 601 0126 4FF08941 		mov	r1, #1149239296
 602 012a 0546     		mov	r5, r0
 603 012c FFF7FEFF 		bl	__aeabi_fcmpge
 604 0130 50B3     		cbz	r0, .L102
 605 0132 2846     		mov	r0, r5
 606 0134 4FF06A51 		mov	r1, #981467136
 607 0138 FFF7FEFF 		bl	__aeabi_fmul
 608 013c 194E     		ldr	r6, .L111+24
 609 013e 0546     		mov	r5, r0
 610              	.L85:
 611 0140 4046     		mov	r0, r8
 612 0142 FFF7FEFF 		bl	sd_mmc_get_type
 613 0146 0138     		subs	r0, r0, #1
 614 0148 C3B2     		uxtb	r3, r0
 615 014a 092B     		cmp	r3, #9
 616 014c 98BF     		it	ls
 617 014e 164A     		ldrls	r2, .L111+28
 618 0150 2846     		mov	r0, r5
 619 0152 94BF     		ite	ls
 620 0154 52F82380 		ldrls	r8, [r2, r3, lsl #2]
 621 0158 DFF86080 		ldrhi	r8, .L111+48
 622 015c FFF7FEFF 		bl	__aeabi_f2d
 623 0160 0296     		str	r6, [sp, #8]
 624 0162 CDE90001 		strd	r0, [sp]
 625 0166 4246     		mov	r2, r8
 626 0168 3846     		mov	r0, r7
 627 016a 2346     		mov	r3, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxIhrLG.s 			page 12


 628 016c 0F49     		ldr	r1, .L111+32
 629 016e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 630 0172 0125     		movs	r5, #1
 631 0174 81E7     		b	.L100
 632              	.L110:
 633 0176 0E4B     		ldr	r3, .L111+36
 634 0178 C5E7     		b	.L91
 635              	.L107:
 636 017a 3846     		mov	r0, r7
 637 017c 2246     		mov	r2, r4
 638 017e 0D49     		ldr	r1, .L111+40
 639 0180 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 640 0184 0125     		movs	r5, #1
 641 0186 78E7     		b	.L100
 642              	.L102:
 643 0188 0B4E     		ldr	r6, .L111+44
 644 018a D9E7     		b	.L85
 645              	.L112:
 646              		.align	2
 647              	.L111:
 648 018c 00000000 		.word	.LANCHOR2
 649 0190 DC000000 		.word	.LC10
 650 0194 68010000 		.word	.LC14
 651 0198 00000000 		.word	.LANCHOR1
 652 019c 00000000 		.word	.LANCHOR3
 653 01a0 F8000000 		.word	.LC11
 654 01a4 C4000000 		.word	.LC7
 655 01a8 00000000 		.word	.LANCHOR4
 656 01ac 3C010000 		.word	.LC13
 657 01b0 B4000000 		.word	.LC6
 658 01b4 1C010000 		.word	.LC12
 659 01b8 C8000000 		.word	.LC8
 660 01bc CC000000 		.word	.LC9
 661              		.size	_ZN11MassStorage5MountEjR9StringRefb, .-_ZN11MassStorage5MountEjR9StringRefb
 662              		.section	.text._ZN11MassStorage4InitEv,"ax",%progbits
 663              		.align	2
 664              		.global	_ZN11MassStorage4InitEv
 665              		.thumb
 666              		.thumb_func
 667              		.type	_ZN11MassStorage4InitEv, %function
 668              	_ZN11MassStorage4InitEv:
 669              		@ args = 0, pretend = 0, frame = 112
 670              		@ frame_needed = 0, uses_anonymous_args = 0
 671 0000 30B5     		push	{r4, r5, lr}
 672 0002 0025     		movs	r5, #0
 673 0004 9DB0     		sub	sp, sp, #116
 674 0006 80F88854 		strb	r5, [r0, #1160]
 675 000a 80F88954 		strb	r5, [r0, #1161]
 676 000e 114A     		ldr	r2, .L120
 677 0010 0446     		mov	r4, r0
 678 0012 1149     		ldr	r1, .L120+4
 679 0014 1148     		ldr	r0, .L120+8
 680 0016 FFF7FEFF 		bl	sd_mmc_init
 681 001a 03AA     		add	r2, sp, #12
 682 001c 6423     		movs	r3, #100
 683 001e 8DF80C50 		strb	r5, [sp, #12]
 684 0022 0192     		str	r2, [sp, #4]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxIhrLG.s 			page 13


 685 0024 0293     		str	r3, [sp, #8]
 686              	.L115:
 687 0026 0021     		movs	r1, #0
 688 0028 0B46     		mov	r3, r1
 689 002a 2046     		mov	r0, r4
 690 002c 01AA     		add	r2, sp, #4
 691 002e FFF7FEFF 		bl	_ZN11MassStorage5MountEjR9StringRefb
 692 0032 0028     		cmp	r0, #0
 693 0034 F7D0     		beq	.L115
 694 0036 01A8     		add	r0, sp, #4
 695 0038 FFF7FEFF 		bl	_ZNK9StringRef6strlenEv
 696 003c 40B1     		cbz	r0, .L113
 697 003e 40F6B830 		movw	r0, #3000
 698 0042 FFF7FEFF 		bl	delay
 699 0046 2068     		ldr	r0, [r4]
 700 0048 0221     		movs	r1, #2
 701 004a 019A     		ldr	r2, [sp, #4]
 702 004c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 703              	.L113:
 704 0050 1DB0     		add	sp, sp, #116
 705              		@ sp needed
 706 0052 30BD     		pop	{r4, r5, pc}
 707              	.L121:
 708              		.align	2
 709              	.L120:
 710 0054 00000000 		.word	.LANCHOR7
 711 0058 00000000 		.word	.LANCHOR6
 712 005c 00000000 		.word	.LANCHOR5
 713              		.size	_ZN11MassStorage4InitEv, .-_ZN11MassStorage4InitEv
 714              		.section	.text._ZN11MassStorage7UnmountEjR9StringRef,"ax",%progbits
 715              		.align	2
 716              		.global	_ZN11MassStorage7UnmountEjR9StringRef
 717              		.thumb
 718              		.thumb_func
 719              		.type	_ZN11MassStorage7UnmountEjR9StringRef, %function
 720              	_ZN11MassStorage7UnmountEjR9StringRef:
 721              		@ args = 0, pretend = 0, frame = 0
 722              		@ frame_needed = 0, uses_anonymous_args = 0
 723 0000 0129     		cmp	r1, #1
 724 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 725 0004 0C46     		mov	r4, r1
 726 0006 0546     		mov	r5, r0
 727 0008 1646     		mov	r6, r2
 728 000a 05D9     		bls	.L123
 729 000c 1046     		mov	r0, r2
 730 000e 0E49     		ldr	r1, .L125
 731 0010 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 732 0014 0120     		movs	r0, #1
 733 0016 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 734              	.L123:
 735 0018 4FF40C71 		mov	r1, #560
 736 001c 01FB0401 		mla	r1, r1, r4, r0
 737 0020 E7B2     		uxtb	r7, r4
 738 0022 0068     		ldr	r0, [r0]
 739 0024 0431     		adds	r1, r1, #4
 740 0026 FFF7FEFF 		bl	_ZN8Platform15InvalidateFilesEPK5FATFS
 741 002a 0021     		movs	r1, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxIhrLG.s 			page 14


 742 002c 3846     		mov	r0, r7
 743 002e FFF7FEFF 		bl	f_mount
 744 0032 3846     		mov	r0, r7
 745 0034 FFF7FEFF 		bl	sd_mmc_unmount
 746 0038 3268     		ldr	r2, [r6]
 747 003a 0023     		movs	r3, #0
 748 003c 2C44     		add	r4, r4, r5
 749 003e 84F88834 		strb	r3, [r4, #1160]
 750 0042 1370     		strb	r3, [r2]
 751 0044 0120     		movs	r0, #1
 752 0046 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 753              	.L126:
 754              		.align	2
 755              	.L125:
 756 0048 DC000000 		.word	.LC10
 757              		.size	_ZN11MassStorage7UnmountEjR9StringRef, .-_ZN11MassStorage7UnmountEjR9StringRef
 758              		.section	.text._ZN11MassStorage17CheckDriveMountedEPKc,"ax",%progbits
 759              		.align	2
 760              		.global	_ZN11MassStorage17CheckDriveMountedEPKc
 761              		.thumb
 762              		.thumb_func
 763              		.type	_ZN11MassStorage17CheckDriveMountedEPKc, %function
 764              	_ZN11MassStorage17CheckDriveMountedEPKc:
 765              		@ args = 0, pretend = 0, frame = 0
 766              		@ frame_needed = 0, uses_anonymous_args = 0
 767 0000 38B5     		push	{r3, r4, r5, lr}
 768 0002 0546     		mov	r5, r0
 769 0004 0846     		mov	r0, r1
 770 0006 0C46     		mov	r4, r1
 771 0008 FFF7FEFF 		bl	strlen
 772 000c 0128     		cmp	r0, #1
 773 000e 03D9     		bls	.L132
 774 0010 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 775 0012 303B     		subs	r3, r3, #48
 776 0014 092B     		cmp	r3, #9
 777 0016 04D9     		bls	.L134
 778              	.L132:
 779 0018 0023     		movs	r3, #0
 780              	.L128:
 781 001a 2B44     		add	r3, r3, r5
 782 001c 93F88804 		ldrb	r0, [r3, #1160]	@ zero_extendqisi2
 783 0020 38BD     		pop	{r3, r4, r5, pc}
 784              	.L134:
 785 0022 6278     		ldrb	r2, [r4, #1]	@ zero_extendqisi2
 786 0024 3A2A     		cmp	r2, #58
 787 0026 F7D1     		bne	.L132
 788 0028 012B     		cmp	r3, #1
 789 002a F6D9     		bls	.L128
 790 002c 0020     		movs	r0, #0
 791 002e 38BD     		pop	{r3, r4, r5, pc}
 792              		.size	_ZN11MassStorage17CheckDriveMountedEPKc, .-_ZN11MassStorage17CheckDriveMountedEPKc
 793              		.section	.text._ZN11MassStorage16ConvertTimeStampEtt,"ax",%progbits
 794              		.align	2
 795              		.global	_ZN11MassStorage16ConvertTimeStampEtt
 796              		.thumb
 797              		.thumb_func
 798              		.type	_ZN11MassStorage16ConvertTimeStampEtt, %function
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxIhrLG.s 			page 15


 799              	_ZN11MassStorage16ConvertTimeStampEtt:
 800              		@ args = 0, pretend = 0, frame = 40
 801              		@ frame_needed = 0, uses_anonymous_args = 0
 802 0000 10B5     		push	{r4, lr}
 803 0002 4412     		asrs	r4, r0, #9
 804 0004 8AB0     		sub	sp, sp, #40
 805 0006 0023     		movs	r3, #0
 806 0008 5034     		adds	r4, r4, #80
 807 000a C0F34312 		ubfx	r2, r0, #5, #4
 808 000e 0694     		str	r4, [sp, #24]
 809 0010 0793     		str	r3, [sp, #28]
 810 0012 0893     		str	r3, [sp, #32]
 811 0014 0993     		str	r3, [sp, #36]
 812 0016 02B1     		cbz	r2, .L136
 813 0018 013A     		subs	r2, r2, #1
 814              	.L136:
 815 001a 0AAB     		add	r3, sp, #40
 816 001c 01F01F04 		and	r4, r1, #31
 817 0020 43F8244D 		str	r4, [r3, #-36]!
 818 0024 00F01F00 		and	r0, r0, #31
 819 0028 0128     		cmp	r0, #1
 820 002a ACBF     		ite	ge
 821 002c 0446     		movge	r4, r0
 822 002e 0124     		movlt	r4, #1
 823 0030 1846     		mov	r0, r3
 824 0032 CB0A     		lsrs	r3, r1, #11
 825 0034 C1F34511 		ubfx	r1, r1, #5, #6
 826 0038 0494     		str	r4, [sp, #16]
 827 003a 0592     		str	r2, [sp, #20]
 828 003c 0393     		str	r3, [sp, #12]
 829 003e 0291     		str	r1, [sp, #8]
 830 0040 FFF7FEFF 		bl	mktime
 831 0044 0AB0     		add	sp, sp, #40
 832              		@ sp needed
 833 0046 10BD     		pop	{r4, pc}
 834              		.size	_ZN11MassStorage16ConvertTimeStampEtt, .-_ZN11MassStorage16ConvertTimeStampEtt
 835              		.section	.text._ZN11MassStorage9FindFirstEPKcR8FileInfo,"ax",%progbits
 836              		.align	2
 837              		.global	_ZN11MassStorage9FindFirstEPKcR8FileInfo
 838              		.thumb
 839              		.thumb_func
 840              		.type	_ZN11MassStorage9FindFirstEPKcR8FileInfo, %function
 841              	_ZN11MassStorage9FindFirstEPKcR8FileInfo:
 842              		@ args = 0, pretend = 0, frame = 136
 843              		@ frame_needed = 0, uses_anonymous_args = 0
 844 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 845 0004 0F46     		mov	r7, r1
 846 0006 A3B0     		sub	sp, sp, #140
 847 0008 0646     		mov	r6, r0
 848 000a 6421     		movs	r1, #100
 849 000c 3846     		mov	r0, r7
 850 000e 9046     		mov	r8, r2
 851 0010 FFF7FEFF 		bl	strnlen
 852 0014 0446     		mov	r4, r0
 853 0016 0028     		cmp	r0, #0
 854 0018 4CD1     		bne	.L139
 855 001a 22AD     		add	r5, sp, #136
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxIhrLG.s 			page 16


 856 001c 05F8680D 		strb	r0, [r5, #-104]!
 857              	.L140:
 858 0020 0027     		movs	r7, #0
 859 0022 06F26444 		addw	r4, r6, #1124
 860 0026 2946     		mov	r1, r5
 861 0028 C6F88074 		str	r7, [r6, #1152]
 862 002c 2046     		mov	r0, r4
 863 002e FFF7FEFF 		bl	f_opendir
 864 0032 0028     		cmp	r0, #0
 865 0034 39D1     		bne	.L143
 866 0036 08F10105 		add	r5, r8, #1
 867 003a 6423     		movs	r3, #100
 868 003c 0695     		str	r5, [sp, #24]
 869 003e 0793     		str	r3, [sp, #28]
 870              	.L148:
 871 0040 6946     		mov	r1, sp
 872 0042 2046     		mov	r0, r4
 873 0044 FFF7FEFF 		bl	f_readdir
 874 0048 2849     		ldr	r1, .L157
 875 004a 70BB     		cbnz	r0, .L143
 876 004c 9DF80930 		ldrb	r3, [sp, #9]	@ zero_extendqisi2
 877 0050 0DF10900 		add	r0, sp, #9
 878 0054 4BB3     		cbz	r3, .L143
 879 0056 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 880 005a 0028     		cmp	r0, #0
 881 005c F0D1     		bne	.L148
 882 005e 0DF10900 		add	r0, sp, #9
 883 0062 2349     		ldr	r1, .L157+4
 884 0064 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 885 0068 0028     		cmp	r0, #0
 886 006a E9D1     		bne	.L148
 887 006c 9DF80820 		ldrb	r2, [sp, #8]	@ zero_extendqisi2
 888 0070 98F80130 		ldrb	r3, [r8, #1]	@ zero_extendqisi2
 889 0074 C2F30012 		ubfx	r2, r2, #4, #1
 890 0078 88F80020 		strb	r2, [r8]
 891 007c 2BB9     		cbnz	r3, .L147
 892 007e 2846     		mov	r0, r5
 893 0080 0DF10901 		add	r1, sp, #9
 894 0084 6422     		movs	r2, #100
 895 0086 FFF7FEFF 		bl	strncpy
 896              	.L147:
 897 008a 009B     		ldr	r3, [sp]
 898 008c BDF80400 		ldrh	r0, [sp, #4]
 899 0090 C8F86830 		str	r3, [r8, #104]
 900 0094 BDF80610 		ldrh	r1, [sp, #6]
 901 0098 FFF7FEFF 		bl	_ZN11MassStorage16ConvertTimeStampEtt
 902 009c 0123     		movs	r3, #1
 903 009e C8F86C00 		str	r0, [r8, #108]
 904 00a2 1846     		mov	r0, r3
 905 00a4 23B0     		add	sp, sp, #140
 906              		@ sp needed
 907 00a6 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 908              	.L143:
 909 00aa 0023     		movs	r3, #0
 910 00ac 1846     		mov	r0, r3
 911 00ae 23B0     		add	sp, sp, #140
 912              		@ sp needed
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxIhrLG.s 			page 17


 913 00b0 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 914              	.L139:
 915 00b4 00F1FF39 		add	r9, r0, #-1
 916 00b8 17F80930 		ldrb	r3, [r7, r9]	@ zero_extendqisi2
 917 00bc 08AD     		add	r5, sp, #32
 918 00be 2F2B     		cmp	r3, #47
 919 00c0 3946     		mov	r1, r7
 920 00c2 2846     		mov	r0, r5
 921 00c4 08D0     		beq	.L156
 922 00c6 2246     		mov	r2, r4
 923 00c8 FFF7FEFF 		bl	strncpy
 924 00cc 22AB     		add	r3, sp, #136
 925 00ce 1C44     		add	r4, r4, r3
 926 00d0 0023     		movs	r3, #0
 927 00d2 04F8683C 		strb	r3, [r4, #-104]
 928 00d6 A3E7     		b	.L140
 929              	.L156:
 930 00d8 4A46     		mov	r2, r9
 931 00da FFF7FEFF 		bl	strncpy
 932 00de 22AB     		add	r3, sp, #136
 933 00e0 9944     		add	r9, r9, r3
 934 00e2 0023     		movs	r3, #0
 935 00e4 09F8683C 		strb	r3, [r9, #-104]
 936 00e8 9AE7     		b	.L140
 937              	.L158:
 938 00ea 00BF     		.align	2
 939              	.L157:
 940 00ec 84010000 		.word	.LC15
 941 00f0 88010000 		.word	.LC16
 942              		.size	_ZN11MassStorage9FindFirstEPKcR8FileInfo, .-_ZN11MassStorage9FindFirstEPKcR8FileInfo
 943              		.section	.text._ZN11MassStorage8FindNextER8FileInfo,"ax",%progbits
 944              		.align	2
 945              		.global	_ZN11MassStorage8FindNextER8FileInfo
 946              		.thumb
 947              		.thumb_func
 948              		.type	_ZN11MassStorage8FindNextER8FileInfo, %function
 949              	_ZN11MassStorage8FindNextER8FileInfo:
 950              		@ args = 0, pretend = 0, frame = 32
 951              		@ frame_needed = 0, uses_anonymous_args = 0
 952 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 953 0002 0025     		movs	r5, #0
 954 0004 89B0     		sub	sp, sp, #36
 955 0006 4E1C     		adds	r6, r1, #1
 956 0008 0C46     		mov	r4, r1
 957 000a C0F88054 		str	r5, [r0, #1152]
 958 000e 6427     		movs	r7, #100
 959 0010 00F26440 		addw	r0, r0, #1124
 960 0014 6946     		mov	r1, sp
 961 0016 0696     		str	r6, [sp, #24]
 962 0018 0797     		str	r7, [sp, #28]
 963 001a FFF7FEFF 		bl	f_readdir
 964 001e 28B9     		cbnz	r0, .L164
 965 0020 9DF80930 		ldrb	r3, [sp, #9]	@ zero_extendqisi2
 966 0024 33B9     		cbnz	r3, .L168
 967 0026 1846     		mov	r0, r3
 968 0028 09B0     		add	sp, sp, #36
 969              		@ sp needed
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxIhrLG.s 			page 18


 970 002a F0BD     		pop	{r4, r5, r6, r7, pc}
 971              	.L164:
 972 002c 2B46     		mov	r3, r5
 973 002e 1846     		mov	r0, r3
 974 0030 09B0     		add	sp, sp, #36
 975              		@ sp needed
 976 0032 F0BD     		pop	{r4, r5, r6, r7, pc}
 977              	.L168:
 978 0034 9DF80810 		ldrb	r1, [sp, #8]	@ zero_extendqisi2
 979 0038 009B     		ldr	r3, [sp]
 980 003a 6278     		ldrb	r2, [r4, #1]	@ zero_extendqisi2
 981 003c C1F30011 		ubfx	r1, r1, #4, #1
 982 0040 2170     		strb	r1, [r4]
 983 0042 A366     		str	r3, [r4, #104]
 984 0044 52B1     		cbz	r2, .L169
 985              	.L163:
 986 0046 BDF80400 		ldrh	r0, [sp, #4]
 987 004a BDF80610 		ldrh	r1, [sp, #6]
 988 004e FFF7FEFF 		bl	_ZN11MassStorage16ConvertTimeStampEtt
 989 0052 0123     		movs	r3, #1
 990 0054 E066     		str	r0, [r4, #108]
 991 0056 1846     		mov	r0, r3
 992 0058 09B0     		add	sp, sp, #36
 993              		@ sp needed
 994 005a F0BD     		pop	{r4, r5, r6, r7, pc}
 995              	.L169:
 996 005c 3046     		mov	r0, r6
 997 005e 3A46     		mov	r2, r7
 998 0060 0DF10901 		add	r1, sp, #9
 999 0064 FFF7FEFF 		bl	strncpy
 1000 0068 EDE7     		b	.L163
 1001              		.size	_ZN11MassStorage8FindNextER8FileInfo, .-_ZN11MassStorage8FindNextER8FileInfo
 1002 006a 00BF     		.section	.text._ZNK11MassStorage19GetLastModifiedTimeEPKcS1_,"ax",%progbits
 1003              		.align	2
 1004              		.global	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_
 1005              		.thumb
 1006              		.thumb_func
 1007              		.type	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_, %function
 1008              	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_:
 1009              		@ args = 0, pretend = 0, frame = 32
 1010              		@ frame_needed = 0, uses_anonymous_args = 0
 1011 0000 10B5     		push	{r4, lr}
 1012 0002 0346     		mov	r3, r0
 1013 0004 88B0     		sub	sp, sp, #32
 1014 0006 1046     		mov	r0, r2
 1015 0008 21B1     		cbz	r1, .L171
 1016 000a 1B68     		ldr	r3, [r3]
 1017 000c D3F8B406 		ldr	r0, [r3, #1716]
 1018 0010 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameEPKcS1_
 1019              	.L171:
 1020 0014 0024     		movs	r4, #0
 1021 0016 6946     		mov	r1, sp
 1022 0018 0694     		str	r4, [sp, #24]
 1023 001a FFF7FEFF 		bl	f_stat
 1024 001e 10B1     		cbz	r0, .L177
 1025 0020 2046     		mov	r0, r4
 1026 0022 08B0     		add	sp, sp, #32
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxIhrLG.s 			page 19


 1027              		@ sp needed
 1028 0024 10BD     		pop	{r4, pc}
 1029              	.L177:
 1030 0026 BDF80400 		ldrh	r0, [sp, #4]
 1031 002a BDF80610 		ldrh	r1, [sp, #6]
 1032 002e FFF7FEFF 		bl	_ZN11MassStorage16ConvertTimeStampEtt
 1033 0032 08B0     		add	sp, sp, #32
 1034              		@ sp needed
 1035 0034 10BD     		pop	{r4, pc}
 1036              		.size	_ZNK11MassStorage19GetLastModifiedTimeEPKcS1_, .-_ZNK11MassStorage19GetLastModifiedTimeEPKcS
 1037 0036 00BF     		.section	.rodata._ZL10monthNames,"a",%progbits
 1038              		.align	2
 1039              		.set	.LANCHOR0,. + 0
 1040              		.type	_ZL10monthNames, %object
 1041              		.size	_ZL10monthNames, 52
 1042              	_ZL10monthNames:
 1043 0000 20000000 		.word	.LC1
 1044 0004 3C020000 		.word	.LC29
 1045 0008 40020000 		.word	.LC30
 1046 000c 44020000 		.word	.LC31
 1047 0010 48020000 		.word	.LC32
 1048 0014 4C020000 		.word	.LC33
 1049 0018 50020000 		.word	.LC34
 1050 001c 54020000 		.word	.LC35
 1051 0020 58020000 		.word	.LC36
 1052 0024 5C020000 		.word	.LC37
 1053 0028 60020000 		.word	.LC38
 1054 002c 64020000 		.word	.LC39
 1055 0030 68020000 		.word	.LC40
 1056              		.section	.bss._ZZN11MassStorage5MountEjR9StringRefbE8mounting,"aw",%nobits
 1057              		.set	.LANCHOR2,. + 0
 1058              		.type	_ZZN11MassStorage5MountEjR9StringRefbE8mounting, %object
 1059              		.size	_ZZN11MassStorage5MountEjR9StringRefbE8mounting, 1
 1060              	_ZZN11MassStorage5MountEjR9StringRefbE8mounting:
 1061 0000 00       		.space	1
 1062              		.section	.rodata._ZL16SdCardDetectPins,"a",%progbits
 1063              		.align	2
 1064              		.set	.LANCHOR5,. + 0
 1065              		.type	_ZL16SdCardDetectPins, %object
 1066              		.size	_ZL16SdCardDetectPins, 2
 1067              	_ZL16SdCardDetectPins:
 1068 0000 0D       		.byte	13
 1069 0001 FF       		.byte	-1
 1070 0002 0000     		.section	.bss._ZZN11MassStorage5MountEjR9StringRefbE9startTime,"aw",%nobits
 1071              		.align	2
 1072              		.set	.LANCHOR1,. + 0
 1073              		.type	_ZZN11MassStorage5MountEjR9StringRefbE9startTime, %object
 1074              		.size	_ZZN11MassStorage5MountEjR9StringRefbE9startTime, 4
 1075              	_ZZN11MassStorage5MountEjR9StringRefbE9startTime:
 1076 0000 00000000 		.space	4
 1077              		.section	.rodata._ZL18SdWriteProtectPins,"a",%progbits
 1078              		.align	2
 1079              		.set	.LANCHOR6,. + 0
 1080              		.type	_ZL18SdWriteProtectPins, %object
 1081              		.size	_ZL18SdWriteProtectPins, 2
 1082              	_ZL18SdWriteProtectPins:
 1083 0000 FF       		.byte	-1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxIhrLG.s 			page 20


 1084 0001 FF       		.byte	-1
 1085 0002 0000     		.section	.rodata.str1.4,"aMS",%progbits,1
 1086              		.align	2
 1087              	.LC0:
 1088 0000 436F6D62 		.ascii	"CombineName() buffer overflow.\000"
 1088      696E654E 
 1088      616D6528 
 1088      29206275 
 1088      66666572 
 1089 001f 00       		.space	1
 1090              	.LC1:
 1091 0020 3F3F3F00 		.ascii	"???\000"
 1092              	.LC2:
 1093 0024 43616E27 		.ascii	"Can't delete file %s\012\000"
 1093      74206465 
 1093      6C657465 
 1093      2066696C 
 1093      65202573 
 1094 003a 0000     		.space	2
 1095              	.LC3:
 1096 003c 43616E27 		.ascii	"Can't create directory %s\012\000"
 1096      74206372 
 1096      65617465 
 1096      20646972 
 1096      6563746F 
 1097 0057 00       		.space	1
 1098              	.LC4:
 1099 0058 43616E27 		.ascii	"Can't rename file or directory %s to %s\012\000"
 1099      74207265 
 1099      6E616D65 
 1099      2066696C 
 1099      65206F72 
 1100 0081 000000   		.space	3
 1101              	.LC5:
 1102 0084 5365744C 		.ascii	"SetLastModifiedTime didn't work for file '%s'\012\000"
 1102      6173744D 
 1102      6F646966 
 1102      69656454 
 1102      696D6520 
 1103 00b3 00       		.space	1
 1104              	.LC6:
 1105 00b4 556E6B6E 		.ascii	"Unknown error\000"
 1105      6F776E20 
 1105      6572726F 
 1105      7200
 1106 00c2 0000     		.space	2
 1107              	.LC7:
 1108 00c4 476200   		.ascii	"Gb\000"
 1109 00c7 00       		.space	1
 1110              	.LC8:
 1111 00c8 4D6200   		.ascii	"Mb\000"
 1112 00cb 00       		.space	1
 1113              	.LC9:
 1114 00cc 556E6B6E 		.ascii	"Unknown type\000"
 1114      6F776E20 
 1114      74797065 
 1114      00
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxIhrLG.s 			page 21


 1115 00d9 000000   		.space	3
 1116              	.LC10:
 1117 00dc 53442063 		.ascii	"SD card number out of range\000"
 1117      61726420 
 1117      6E756D62 
 1117      6572206F 
 1117      7574206F 
 1118              	.LC11:
 1119 00f8 43616E6E 		.ascii	"Cannot initialise SD card %u: %s\000"
 1119      6F742069 
 1119      6E697469 
 1119      616C6973 
 1119      65205344 
 1120 0119 000000   		.space	3
 1121              	.LC12:
 1122 011c 43616E27 		.ascii	"Can't mount SD card %u: code %d\000"
 1122      74206D6F 
 1122      756E7420 
 1122      53442063 
 1122      61726420 
 1123              	.LC13:
 1124 013c 25732063 		.ascii	"%s card mounted in slot %u, capacity %.2f%s\000"
 1124      61726420 
 1124      6D6F756E 
 1124      74656420 
 1124      696E2073 
 1125              	.LC14:
 1126 0168 53442063 		.ascii	"SD card has open file(s)\000"
 1126      61726420 
 1126      68617320 
 1126      6F70656E 
 1126      2066696C 
 1127 0181 000000   		.space	3
 1128              	.LC15:
 1129 0184 2E00     		.ascii	".\000"
 1130 0186 0000     		.space	2
 1131              	.LC16:
 1132 0188 2E2E00   		.ascii	"..\000"
 1133 018b 00       		.space	1
 1134              	.LC17:
 1135 018c 43617264 		.ascii	"Card not found\000"
 1135      206E6F74 
 1135      20666F75 
 1135      6E6400
 1136 019b 00       		.space	1
 1137              	.LC18:
 1138 019c 43617264 		.ascii	"Card is unusable\000"
 1138      20697320 
 1138      756E7573 
 1138      61626C65 
 1138      00
 1139 01ad 000000   		.space	3
 1140              	.LC19:
 1141 01b0 536C6F74 		.ascii	"Slot unknown\000"
 1141      20756E6B 
 1141      6E6F776E 
 1141      00
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxIhrLG.s 			page 22


 1142 01bd 000000   		.space	3
 1143              	.LC20:
 1144 01c0 436F6D6D 		.ascii	"Communication error\000"
 1144      756E6963 
 1144      6174696F 
 1144      6E206572 
 1144      726F7200 
 1145              	.LC21:
 1146 01d4 496C6C65 		.ascii	"Illegal input parameter\000"
 1146      67616C20 
 1146      696E7075 
 1146      74207061 
 1146      72616D65 
 1147              	.LC22:
 1148 01ec 43617264 		.ascii	"Card write protected\000"
 1148      20777269 
 1148      74652070 
 1148      726F7465 
 1148      63746564 
 1149 0201 000000   		.space	3
 1150              	.LC23:
 1151 0204 534400   		.ascii	"SD\000"
 1152 0207 00       		.space	1
 1153              	.LC24:
 1154 0208 4D4D4300 		.ascii	"MMC\000"
 1155              	.LC25:
 1156 020c 5344494F 		.ascii	"SDIO\000"
 1156      00
 1157 0211 000000   		.space	3
 1158              	.LC26:
 1159 0214 53442043 		.ascii	"SD COMBO\000"
 1159      4F4D424F 
 1159      00
 1160 021d 000000   		.space	3
 1161              	.LC27:
 1162 0220 53444843 		.ascii	"SDHC\000"
 1162      00
 1163 0225 000000   		.space	3
 1164              	.LC28:
 1165 0228 4D4D4320 		.ascii	"MMC High Capacity\000"
 1165      48696768 
 1165      20436170 
 1165      61636974 
 1165      7900
 1166 023a 0000     		.space	2
 1167              	.LC29:
 1168 023c 4A616E00 		.ascii	"Jan\000"
 1169              	.LC30:
 1170 0240 46656200 		.ascii	"Feb\000"
 1171              	.LC31:
 1172 0244 4D617200 		.ascii	"Mar\000"
 1173              	.LC32:
 1174 0248 41707200 		.ascii	"Apr\000"
 1175              	.LC33:
 1176 024c 4D617900 		.ascii	"May\000"
 1177              	.LC34:
 1178 0250 4A756E00 		.ascii	"Jun\000"
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxIhrLG.s 			page 23


 1179              	.LC35:
 1180 0254 4A756C00 		.ascii	"Jul\000"
 1181              	.LC36:
 1182 0258 41756700 		.ascii	"Aug\000"
 1183              	.LC37:
 1184 025c 53657000 		.ascii	"Sep\000"
 1185              	.LC38:
 1186 0260 4F637400 		.ascii	"Oct\000"
 1187              	.LC39:
 1188 0264 4E6F7600 		.ascii	"Nov\000"
 1189              	.LC40:
 1190 0268 44656300 		.ascii	"Dec\000"
 1191              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1192              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1193              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1194              	_ZL28cpu_irq_prev_interrupt_state:
 1195 0000 00       		.space	1
 1196              		.section	.rodata._ZL11SdSpiCSPins,"a",%progbits
 1197              		.align	2
 1198              		.set	.LANCHOR7,. + 0
 1199              		.type	_ZL11SdSpiCSPins, %object
 1200              		.size	_ZL11SdSpiCSPins, 1
 1201              	_ZL11SdSpiCSPins:
 1202 0000 43       		.byte	67
 1203 0001 000000   		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1204              		.align	2
 1205              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1206              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1207              	_ZL32cpu_irq_critical_section_counter:
 1208 0000 00000000 		.space	4
 1209              		.section	.rodata.CSWTCH.31,"a",%progbits
 1210              		.align	2
 1211              		.set	.LANCHOR4,. + 0
 1212              		.type	CSWTCH.31, %object
 1213              		.size	CSWTCH.31, 40
 1214              	CSWTCH.31:
 1215 0000 04020000 		.word	.LC23
 1216 0004 08020000 		.word	.LC24
 1217 0008 CC000000 		.word	.LC9
 1218 000c 0C020000 		.word	.LC25
 1219 0010 14020000 		.word	.LC26
 1220 0014 CC000000 		.word	.LC9
 1221 0018 CC000000 		.word	.LC9
 1222 001c CC000000 		.word	.LC9
 1223 0020 20020000 		.word	.LC27
 1224 0024 28020000 		.word	.LC28
 1225              		.section	.rodata.CSWTCH.33,"a",%progbits
 1226              		.align	2
 1227              		.set	.LANCHOR3,. + 0
 1228              		.type	CSWTCH.33, %object
 1229              		.size	CSWTCH.33, 24
 1230              	CSWTCH.33:
 1231 0000 8C010000 		.word	.LC17
 1232 0004 9C010000 		.word	.LC18
 1233 0008 B0010000 		.word	.LC19
 1234 000c C0010000 		.word	.LC20
 1235 0010 D4010000 		.word	.LC21
ARM GAS  C:\Users\George\AppData\Local\Temp\ccxIhrLG.s 			page 24


 1236 0014 EC010000 		.word	.LC22
 1237              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
