ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 1


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
  15              		.file	"Webserver.cpp"
  16              		.section	.text._ZN9WebserverC2EP8PlatformP7Network,"ax",%progbits
  17              		.align	2
  18              		.global	_ZN9WebserverC2EP8PlatformP7Network
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN9WebserverC2EP8PlatformP7Network, %function
  22              	_ZN9WebserverC2EP8PlatformP7Network:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  26 0002 0646     		mov	r6, r0
  27 0004 44F21000 		movw	r0, #16400
  28 0008 44F21403 		movw	r3, #16404
  29 000c 06F59045 		add	r5, r6, #18432
  30 0010 3150     		str	r1, [r6, r0]
  31 0012 2C35     		adds	r5, r5, #44
  32 0014 0021     		movs	r1, #0
  33 0016 F250     		str	r2, [r6, r3]
  34 0018 05F59067 		add	r7, r5, #1152
  35 001c 2B46     		mov	r3, r5
  36 001e 05F10C00 		add	r0, r5, #12
  37 0022 3172     		strb	r1, [r6, #8]
  38              	.L3:
  39 0024 5A1B     		subs	r2, r3, r5
  40 0026 9033     		adds	r3, r3, #144
  41 0028 BB42     		cmp	r3, r7
  42 002a 8150     		str	r1, [r0, r2]
  43 002c 4FF00004 		mov	r4, #0
  44 0030 F8D1     		bne	.L3
  45 0032 44F6AC42 		movw	r2, #19628
  46 0036 44F6B043 		movw	r3, #19632
  47 003a B450     		str	r4, [r6, r2]
  48 003c 1420     		movs	r0, #20
  49 003e F450     		str	r4, [r6, r3]
  50 0040 FFF7FEFF 		bl	_Znwj
  51 0044 44F2F571 		movw	r1, #18421
  52 0048 44F21C02 		movw	r2, #16412
  53 004c 0346     		mov	r3, r0
  54 004e 0460     		str	r4, [r0]
  55 0050 7360     		str	r3, [r6, #4]
  56 0052 3460     		str	r4, [r6]
  57 0054 3046     		mov	r0, r6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 2


  58 0056 7454     		strb	r4, [r6, r1]
  59 0058 B454     		strb	r4, [r6, r2]
  60 005a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
  61              		.size	_ZN9WebserverC2EP8PlatformP7Network, .-_ZN9WebserverC2EP8PlatformP7Network
  62              		.global	_ZN9WebserverC1EP8PlatformP7Network
  63              		.thumb_set _ZN9WebserverC1EP8PlatformP7Network,_ZN9WebserverC2EP8PlatformP7Network
  64              		.section	.text._ZN9Webserver4InitEv,"ax",%progbits
  65              		.align	2
  66              		.global	_ZN9Webserver4InitEv
  67              		.thumb
  68              		.thumb_func
  69              		.type	_ZN9Webserver4InitEv, %function
  70              	_ZN9Webserver4InitEv:
  71              		@ args = 0, pretend = 0, frame = 0
  72              		@ frame_needed = 0, uses_anonymous_args = 0
  73 0000 44F21003 		movw	r3, #16400
  74 0004 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
  75 0008 0446     		mov	r4, r0
  76 000a C058     		ldr	r0, [r0, r3]
  77 000c FFF7FEFF 		bl	_ZN8Platform4TimeEv
  78 0010 44F21C09 		movw	r9, #16412
  79 0014 04F58042 		add	r2, r4, #16384
  80 0018 44F6B048 		movw	r8, #19632
  81 001c 44F6AC4C 		movw	ip, #19628
  82 0020 44F20C07 		movw	r7, #16396
  83 0024 44F2F076 		movw	r6, #18416
  84 0028 44F62805 		movw	r5, #18472
  85 002c 44F2F571 		movw	r1, #18421
  86 0030 0023     		movs	r3, #0
  87 0032 4FF0010A 		mov	r10, #1
  88 0036 9061     		str	r0, [r2, #24]	@ float
  89 0038 04F809A0 		strb	r10, [r4, r9]
  90 003c 44F80830 		str	r3, [r4, r8]
  91 0040 44F80C30 		str	r3, [r4, ip]
  92 0044 E351     		str	r3, [r4, r7]
  93 0046 A351     		str	r3, [r4, r6]
  94 0048 6351     		str	r3, [r4, r5]
  95 004a 6354     		strb	r3, [r4, r1]
  96 004c 2372     		strb	r3, [r4, #8]
  97 004e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
  98              		.size	_ZN9Webserver4InitEv, .-_ZN9Webserver4InitEv
  99 0052 00BF     		.section	.text._ZN9Webserver12FinishUploadERNS_11HttpSessionE,"ax",%progbits
 100              		.align	2
 101              		.global	_ZN9Webserver12FinishUploadERNS_11HttpSessionE
 102              		.thumb
 103              		.thumb_func
 104              		.type	_ZN9Webserver12FinishUploadERNS_11HttpSessionE, %function
 105              	_ZN9Webserver12FinishUploadERNS_11HttpSessionE:
 106              		@ args = 0, pretend = 0, frame = 0
 107              		@ frame_needed = 0, uses_anonymous_args = 0
 108 0000 70B5     		push	{r4, r5, r6, lr}
 109 0002 0546     		mov	r5, r0
 110 0004 C868     		ldr	r0, [r1, #12]
 111 0006 0C46     		mov	r4, r1
 112 0008 0028     		cmp	r0, #0
 113 000a 43D0     		beq	.L8
 114 000c FFF7FEFF 		bl	_ZN9FileStore5CloseEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 3


 115 0010 94F88010 		ldrb	r1, [r4, #128]	@ zero_extendqisi2
 116 0014 0023     		movs	r3, #0
 117 0016 E360     		str	r3, [r4, #12]
 118 0018 C9B1     		cbz	r1, .L9
 119 001a 0B46     		mov	r3, r1
 120              	.L16:
 121 001c 44F21002 		movw	r2, #16400
 122 0020 0221     		movs	r1, #2
 123 0022 A858     		ldr	r0, [r5, r2]
 124 0024 1E4A     		ldr	r2, .L29
 125 0026 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 126 002a 44F21401 		movw	r1, #16404
 127 002e 94F88060 		ldrb	r6, [r4, #128]	@ zero_extendqisi2
 128 0032 1C4B     		ldr	r3, .L29+4
 129 0034 1C4A     		ldr	r2, .L29+8
 130 0036 6858     		ldr	r0, [r5, r1]
 131 0038 2168     		ldr	r1, [r4]
 132 003a 002E     		cmp	r6, #0
 133 003c 08BF     		it	eq
 134 003e 1346     		moveq	r3, r2
 135              	.L14:
 136 0040 1A4A     		ldr	r2, .L29+12
 137 0042 FFF7FEFF 		bl	_ZN7Network9SendReplyEmjPKc
 138 0046 0623     		movs	r3, #6
 139 0048 84F88030 		strb	r3, [r4, #128]
 140 004c 70BD     		pop	{r4, r5, r6, pc}
 141              	.L9:
 142 004e 18B9     		cbnz	r0, .L11
 143              	.L15:
 144 0050 0523     		movs	r3, #5
 145 0052 84F88030 		strb	r3, [r4, #128]
 146 0056 E1E7     		b	.L16
 147              	.L11:
 148 0058 E26F     		ldr	r2, [r4, #124]
 149 005a A36F     		ldr	r3, [r4, #120]
 150 005c 9A42     		cmp	r2, r3
 151 005e 03D0     		beq	.L12
 152 0060 0423     		movs	r3, #4
 153 0062 84F88030 		strb	r3, [r4, #128]
 154 0066 D9E7     		b	.L16
 155              	.L12:
 156 0068 636F     		ldr	r3, [r4, #116]
 157 006a 2BB9     		cbnz	r3, .L28
 158              	.L13:
 159 006c 44F21403 		movw	r3, #16404
 160 0070 2168     		ldr	r1, [r4]
 161 0072 E858     		ldr	r0, [r5, r3]
 162 0074 0C4B     		ldr	r3, .L29+8
 163 0076 E3E7     		b	.L14
 164              	.L28:
 165 0078 44F21002 		movw	r2, #16400
 166 007c AA58     		ldr	r2, [r5, r2]
 167 007e D2F83C08 		ldr	r0, [r2, #2108]
 168 0082 04F11002 		add	r2, r4, #16
 169 0086 FFF7FEFF 		bl	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_l
 170 008a 94F88030 		ldrb	r3, [r4, #128]	@ zero_extendqisi2
 171 008e 002B     		cmp	r3, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 4


 172 0090 ECD0     		beq	.L13
 173 0092 C3E7     		b	.L16
 174              	.L8:
 175 0094 91F88030 		ldrb	r3, [r1, #128]	@ zero_extendqisi2
 176 0098 002B     		cmp	r3, #0
 177 009a D9D0     		beq	.L15
 178 009c BEE7     		b	.L16
 179              	.L30:
 180 009e 00BF     		.align	2
 181              	.L29:
 182 00a0 18000000 		.word	.LC2
 183 00a4 0C000000 		.word	.LC1
 184 00a8 00000000 		.word	.LC0
 185 00ac C8000100 		.word	65736
 186              		.size	_ZN9Webserver12FinishUploadERNS_11HttpSessionE, .-_ZN9Webserver12FinishUploadERNS_11HttpSess
 187              		.section	.text._ZN9Webserver12CancelUploadERNS_11HttpSessionE,"ax",%progbits
 188              		.align	2
 189              		.global	_ZN9Webserver12CancelUploadERNS_11HttpSessionE
 190              		.thumb
 191              		.thumb_func
 192              		.type	_ZN9Webserver12CancelUploadERNS_11HttpSessionE, %function
 193              	_ZN9Webserver12CancelUploadERNS_11HttpSessionE:
 194              		@ args = 0, pretend = 0, frame = 0
 195              		@ frame_needed = 0, uses_anonymous_args = 0
 196 0000 38B5     		push	{r3, r4, r5, lr}
 197 0002 0546     		mov	r5, r0
 198 0004 C868     		ldr	r0, [r1, #12]
 199 0006 0C46     		mov	r4, r1
 200 0008 18B1     		cbz	r0, .L32
 201 000a FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 202 000e 0023     		movs	r3, #0
 203 0010 E360     		str	r3, [r4, #12]
 204              	.L32:
 205 0012 44F20C03 		movw	r3, #16396
 206 0016 2168     		ldr	r1, [r4]
 207 0018 EA58     		ldr	r2, [r5, r3]
 208 001a 8A42     		cmp	r2, r1
 209 001c 04BF     		itt	eq
 210 001e 0022     		moveq	r2, #0
 211 0020 EA50     		streq	r2, [r5, r3]
 212 0022 38BD     		pop	{r3, r4, r5, pc}
 213              		.size	_ZN9Webserver12CancelUploadERNS_11HttpSessionE, .-_ZN9Webserver12CancelUploadERNS_11HttpSess
 214              		.section	.text._ZN9Webserver11StartUploadERNS_11HttpSessionEPKcml,"ax",%progbits
 215              		.align	2
 216              		.global	_ZN9Webserver11StartUploadERNS_11HttpSessionEPKcml
 217              		.thumb
 218              		.thumb_func
 219              		.type	_ZN9Webserver11StartUploadERNS_11HttpSessionEPKcml, %function
 220              	_ZN9Webserver11StartUploadERNS_11HttpSessionEPKcml:
 221              		@ args = 4, pretend = 0, frame = 0
 222              		@ frame_needed = 0, uses_anonymous_args = 0
 223 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 224 0004 0546     		mov	r5, r0
 225 0006 1646     		mov	r6, r2
 226 0008 1F46     		mov	r7, r3
 227 000a 0C46     		mov	r4, r1
 228 000c FFF7FEFF 		bl	_ZN9Webserver12CancelUploadERNS_11HttpSessionE
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 5


 229 0010 44F20C00 		movw	r0, #16396
 230 0014 2858     		ldr	r0, [r5, r0]
 231 0016 20B1     		cbz	r0, .L38
 232 0018 0723     		movs	r3, #7
 233 001a 84F88030 		strb	r3, [r4, #128]
 234 001e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 235              	.L38:
 236 0022 44F21003 		movw	r3, #16400
 237 0026 1649     		ldr	r1, .L46
 238 0028 E858     		ldr	r0, [r5, r3]
 239 002a 3246     		mov	r2, r6
 240 002c 0123     		movs	r3, #1
 241 002e FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 242 0032 8046     		mov	r8, r0
 243 0034 F0B1     		cbz	r0, .L45
 244 0036 E068     		ldr	r0, [r4, #12]
 245 0038 08B1     		cbz	r0, .L41
 246 003a FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 247              	.L41:
 248 003e 3146     		mov	r1, r6
 249 0040 6422     		movs	r2, #100
 250 0042 C4F80C80 		str	r8, [r4, #12]
 251 0046 04F11000 		add	r0, r4, #16
 252 004a FFF7FEFF 		bl	strncpy
 253 004e 44F20C03 		movw	r3, #16396
 254 0052 0022     		movs	r2, #0
 255 0054 0120     		movs	r0, #1
 256 0056 2168     		ldr	r1, [r4]
 257 0058 069E     		ldr	r6, [sp, #24]
 258 005a 6667     		str	r6, [r4, #116]
 259 005c A767     		str	r7, [r4, #120]
 260 005e E267     		str	r2, [r4, #124]
 261 0060 84F88020 		strb	r2, [r4, #128]
 262 0064 C4F88420 		str	r2, [r4, #132]
 263 0068 C4F88820 		str	r2, [r4, #136]
 264 006c 6060     		str	r0, [r4, #4]
 265 006e E950     		str	r1, [r5, r3]
 266 0070 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 267              	.L45:
 268 0074 0223     		movs	r3, #2
 269 0076 84F88030 		strb	r3, [r4, #128]
 270 007a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 271              	.L47:
 272 007e 00BF     		.align	2
 273              	.L46:
 274 0080 3C000000 		.word	.LC3
 275              		.size	_ZN9Webserver11StartUploadERNS_11HttpSessionEPKcml, .-_ZN9Webserver11StartUploadERNS_11HttpS
 276              		.section	.text._ZN9Webserver21ProcessUploadFragmentERNS_11HttpSessionEPKcjm,"ax",%progbits
 277              		.align	2
 278              		.global	_ZN9Webserver21ProcessUploadFragmentERNS_11HttpSessionEPKcjm
 279              		.thumb
 280              		.thumb_func
 281              		.type	_ZN9Webserver21ProcessUploadFragmentERNS_11HttpSessionEPKcjm, %function
 282              	_ZN9Webserver21ProcessUploadFragmentERNS_11HttpSessionEPKcjm:
 283              		@ args = 4, pretend = 0, frame = 0
 284              		@ frame_needed = 0, uses_anonymous_args = 0
 285 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 6


 286 0004 0646     		mov	r6, r0
 287 0006 83B0     		sub	sp, sp, #12
 288 0008 91F88000 		ldrb	r0, [r1, #128]	@ zero_extendqisi2
 289 000c 0A9D     		ldr	r5, [sp, #40]
 290 000e 0C46     		mov	r4, r1
 291 0010 9046     		mov	r8, r2
 292 0012 1F46     		mov	r7, r3
 293 0014 78B9     		cbnz	r0, .L49
 294 0016 4B68     		ldr	r3, [r1, #4]
 295 0018 25F00042 		bic	r2, r5, #-2147483648
 296 001c 9342     		cmp	r3, r2
 297 001e 37D0     		beq	.L50
 298 0020 44F21001 		movw	r1, #16400
 299 0024 0092     		str	r2, [sp]
 300 0026 7058     		ldr	r0, [r6, r1]
 301 0028 484A     		ldr	r2, .L72
 302 002a 0221     		movs	r1, #2
 303 002c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 304 0030 0123     		movs	r3, #1
 305 0032 84F88030 		strb	r3, [r4, #128]
 306              	.L49:
 307 0036 002D     		cmp	r5, #0
 308 0038 0ADB     		blt	.L69
 309              	.L61:
 310 003a 44F21403 		movw	r3, #16404
 311 003e F058     		ldr	r0, [r6, r3]
 312 0040 FFF7FEFF 		bl	_ZN7Network14DiscardMessageEv
 313 0044 6368     		ldr	r3, [r4, #4]
 314 0046 0133     		adds	r3, r3, #1
 315 0048 6360     		str	r3, [r4, #4]
 316              	.L48:
 317 004a 03B0     		add	sp, sp, #12
 318              		@ sp needed
 319 004c BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 320              	.L69:
 321 0050 D4F88830 		ldr	r3, [r4, #136]
 322              	.L56:
 323 0054 6268     		ldr	r2, [r4, #4]
 324 0056 0132     		adds	r2, r2, #1
 325 0058 6260     		str	r2, [r4, #4]
 326 005a 93B1     		cbz	r3, .L59
 327              	.L71:
 328 005c 94F88020 		ldrb	r2, [r4, #128]	@ zero_extendqisi2
 329 0060 7AB9     		cbnz	r2, .L59
 330 0062 D4F88420 		ldr	r2, [r4, #132]
 331 0066 E068     		ldr	r0, [r4, #12]
 332 0068 06EB4231 		add	r1, r6, r2, lsl #13
 333 006c 0C31     		adds	r1, r1, #12
 334 006e 1A46     		mov	r2, r3
 335 0070 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKcj
 336 0074 0028     		cmp	r0, #0
 337 0076 5BD0     		beq	.L60
 338 0078 E26F     		ldr	r2, [r4, #124]
 339 007a D4F88830 		ldr	r3, [r4, #136]
 340 007e 1344     		add	r3, r3, r2
 341 0080 E367     		str	r3, [r4, #124]
 342              	.L59:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 7


 343 0082 3046     		mov	r0, r6
 344 0084 2146     		mov	r1, r4
 345 0086 03B0     		add	sp, sp, #12
 346              		@ sp needed
 347 0088 BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 348 008c FFF7FEBF 		b	_ZN9Webserver12FinishUploadERNS_11HttpSessionE
 349              	.L50:
 350 0090 D1F88830 		ldr	r3, [r1, #136]
 351 0094 D1F88420 		ldr	r2, [r1, #132]
 352 0098 C3F50059 		rsb	r9, r3, #8192
 353 009c 06EB4232 		add	r2, r6, r2, lsl #13
 354 00a0 4F45     		cmp	r7, r9
 355 00a2 38BF     		it	cc
 356 00a4 B946     		movcc	r9, r7
 357 00a6 02F10C00 		add	r0, r2, #12
 358 00aa 1844     		add	r0, r0, r3
 359 00ac 4A46     		mov	r2, r9
 360 00ae 4146     		mov	r1, r8
 361 00b0 FFF7FEFF 		bl	memcpy
 362 00b4 D4F88830 		ldr	r3, [r4, #136]
 363 00b8 4B44     		add	r3, r3, r9
 364 00ba B3F5005F 		cmp	r3, #8192
 365 00be C4F88830 		str	r3, [r4, #136]
 366 00c2 02D0     		beq	.L70
 367 00c4 002D     		cmp	r5, #0
 368 00c6 B8DA     		bge	.L61
 369 00c8 C4E7     		b	.L56
 370              	.L70:
 371 00ca D4F88430 		ldr	r3, [r4, #132]
 372 00ce 4F45     		cmp	r7, r9
 373 00d0 83F00103 		eor	r3, r3, #1
 374 00d4 C4F88430 		str	r3, [r4, #132]
 375 00d8 C9EB0707 		rsb	r7, r9, r7
 376 00dc 2CD8     		bhi	.L51
 377              	.L52:
 378 00de 002D     		cmp	r5, #0
 379 00e0 C4F88870 		str	r7, [r4, #136]
 380 00e4 04DB     		blt	.L53
 381 00e6 44F21403 		movw	r3, #16404
 382 00ea F058     		ldr	r0, [r6, r3]
 383 00ec FFF7FEFF 		bl	_ZN7Network14DiscardMessageEv
 384              	.L53:
 385 00f0 D4F88430 		ldr	r3, [r4, #132]
 386 00f4 E068     		ldr	r0, [r4, #12]
 387 00f6 83F00103 		eor	r3, r3, #1
 388 00fa 06EB4331 		add	r1, r6, r3, lsl #13
 389 00fe 0C31     		adds	r1, r1, #12
 390 0100 4FF40052 		mov	r2, #8192
 391 0104 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKcj
 392 0108 70B1     		cbz	r0, .L54
 393 010a E36F     		ldr	r3, [r4, #124]
 394 010c 03F50053 		add	r3, r3, #8192
 395 0110 E367     		str	r3, [r4, #124]
 396              	.L55:
 397 0112 6368     		ldr	r3, [r4, #4]
 398 0114 002D     		cmp	r5, #0
 399 0116 03F10103 		add	r3, r3, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 8


 400 011a 6360     		str	r3, [r4, #4]
 401 011c 95DA     		bge	.L48
 402 011e D4F88830 		ldr	r3, [r4, #136]
 403 0122 002B     		cmp	r3, #0
 404 0124 ADD0     		beq	.L59
 405 0126 99E7     		b	.L71
 406              	.L54:
 407 0128 0323     		movs	r3, #3
 408 012a 84F88030 		strb	r3, [r4, #128]
 409 012e F0E7     		b	.L55
 410              	.L60:
 411 0130 0323     		movs	r3, #3
 412 0132 84F88030 		strb	r3, [r4, #128]
 413 0136 A4E7     		b	.L59
 414              	.L51:
 415 0138 06EB4330 		add	r0, r6, r3, lsl #13
 416 013c 08EB0901 		add	r1, r8, r9
 417 0140 3A46     		mov	r2, r7
 418 0142 0C30     		adds	r0, r0, #12
 419 0144 FFF7FEFF 		bl	memcpy
 420 0148 C9E7     		b	.L52
 421              	.L73:
 422 014a 00BF     		.align	2
 423              	.L72:
 424 014c 40000000 		.word	.LC4
 425              		.size	_ZN9Webserver21ProcessUploadFragmentERNS_11HttpSessionEPKcjm, .-_ZN9Webserver21ProcessUpload
 426              		.section	.text._ZN9Webserver11FindSessionEm,"ax",%progbits
 427              		.align	2
 428              		.global	_ZN9Webserver11FindSessionEm
 429              		.thumb
 430              		.thumb_func
 431              		.type	_ZN9Webserver11FindSessionEm, %function
 432              	_ZN9Webserver11FindSessionEm:
 433              		@ args = 0, pretend = 0, frame = 0
 434              		@ frame_needed = 0, uses_anonymous_args = 0
 435 0000 44F6AC43 		movw	r3, #19628
 436 0004 70B5     		push	{r4, r5, r6, lr}
 437 0006 C558     		ldr	r5, [r0, r3]
 438 0008 B5B1     		cbz	r5, .L75
 439 000a 44F62C03 		movw	r3, #18476
 440 000e 00F59046 		add	r6, r0, #18432
 441 0012 C358     		ldr	r3, [r0, r3]
 442 0014 8B42     		cmp	r3, r1
 443 0016 06F12C06 		add	r6, r6, #44
 444 001a 0FD0     		beq	.L77
 445 001c 00F59143 		add	r3, r0, #18560
 446 0020 3C33     		adds	r3, r3, #60
 447 0022 0022     		movs	r2, #0
 448 0024 03E0     		b	.L78
 449              	.L79:
 450 0026 53F8904B 		ldr	r4, [r3], #144
 451 002a 8C42     		cmp	r4, r1
 452 002c 06D0     		beq	.L77
 453              	.L78:
 454 002e 0132     		adds	r2, r2, #1
 455 0030 AA42     		cmp	r2, r5
 456 0032 1E46     		mov	r6, r3
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 9


 457 0034 F7D1     		bne	.L79
 458 0036 0025     		movs	r5, #0
 459              	.L75:
 460 0038 2846     		mov	r0, r5
 461 003a 70BD     		pop	{r4, r5, r6, pc}
 462              	.L77:
 463 003c FFF7FEFF 		bl	millis
 464 0040 3546     		mov	r5, r6
 465 0042 B060     		str	r0, [r6, #8]
 466 0044 2846     		mov	r0, r5
 467 0046 70BD     		pop	{r4, r5, r6, pc}
 468              		.size	_ZN9Webserver11FindSessionEm, .-_ZN9Webserver11FindSessionEm
 469              		.section	.text._ZN9Webserver12StartSessionEm,"ax",%progbits
 470              		.align	2
 471              		.global	_ZN9Webserver12StartSessionEm
 472              		.thumb
 473              		.thumb_func
 474              		.type	_ZN9Webserver12StartSessionEm, %function
 475              	_ZN9Webserver12StartSessionEm:
 476              		@ args = 0, pretend = 0, frame = 0
 477              		@ frame_needed = 0, uses_anonymous_args = 0
 478 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 479 0002 0546     		mov	r5, r0
 480 0004 0E46     		mov	r6, r1
 481 0006 FFF7FEFF 		bl	_ZN9Webserver11FindSessionEm
 482 000a 0446     		mov	r4, r0
 483 000c 50B1     		cbz	r0, .L82
 484 000e C068     		ldr	r0, [r0, #12]
 485 0010 0025     		movs	r5, #0
 486 0012 6560     		str	r5, [r4, #4]
 487 0014 20B1     		cbz	r0, .L86
 488 0016 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 489 001a E560     		str	r5, [r4, #12]
 490 001c 2046     		mov	r0, r4
 491 001e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 492              	.L86:
 493 0020 2046     		mov	r0, r4
 494 0022 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 495              	.L82:
 496 0024 44F6AC43 		movw	r3, #19628
 497 0028 EB58     		ldr	r3, [r5, r3]
 498 002a 072B     		cmp	r3, #7
 499 002c F8D8     		bhi	.L86
 500 002e 03EBC303 		add	r3, r3, r3, lsl #3
 501 0032 05EB0313 		add	r3, r5, r3, lsl #4
 502 0036 03F59043 		add	r3, r3, #18432
 503 003a 03F12C07 		add	r7, r3, #44
 504 003e F868     		ldr	r0, [r7, #12]
 505 0040 DE62     		str	r6, [r3, #44]
 506 0042 87F88C40 		strb	r4, [r7, #140]
 507 0046 7C60     		str	r4, [r7, #4]
 508 0048 10B1     		cbz	r0, .L84
 509 004a FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 510 004e FC60     		str	r4, [r7, #12]
 511              	.L84:
 512 0050 FFF7FEFF 		bl	millis
 513 0054 44F6AC43 		movw	r3, #19628
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 10


 514 0058 B860     		str	r0, [r7, #8]
 515 005a EA58     		ldr	r2, [r5, r3]
 516 005c 0132     		adds	r2, r2, #1
 517 005e 3846     		mov	r0, r7
 518 0060 EA50     		str	r2, [r5, r3]
 519 0062 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 520              		.size	_ZN9Webserver12StartSessionEm, .-_ZN9Webserver12StartSessionEm
 521              		.section	.text._ZN9Webserver13DeleteSessionEm,"ax",%progbits
 522              		.align	2
 523              		.global	_ZN9Webserver13DeleteSessionEm
 524              		.thumb
 525              		.thumb_func
 526              		.type	_ZN9Webserver13DeleteSessionEm, %function
 527              	_ZN9Webserver13DeleteSessionEm:
 528              		@ args = 0, pretend = 0, frame = 0
 529              		@ frame_needed = 0, uses_anonymous_args = 0
 530 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 531 0004 44F6AC43 		movw	r3, #19628
 532 0008 0746     		mov	r7, r0
 533 000a C458     		ldr	r4, [r0, r3]
 534 000c 8846     		mov	r8, r1
 535 000e BCB1     		cbz	r4, .L91
 536 0010 44F62C03 		movw	r3, #18476
 537 0014 00F59045 		add	r5, r0, #18432
 538 0018 C358     		ldr	r3, [r0, r3]
 539 001a 8B42     		cmp	r3, r1
 540 001c 05F12C05 		add	r5, r5, #44
 541 0020 08BF     		it	eq
 542 0022 0126     		moveq	r6, #1
 543 0024 16D0     		beq	.L93
 544 0026 00F59143 		add	r3, r0, #18560
 545 002a 3C33     		adds	r3, r3, #60
 546 002c 0022     		movs	r2, #0
 547 002e 03E0     		b	.L95
 548              	.L99:
 549 0030 53F8906B 		ldr	r6, [r3], #144
 550 0034 4645     		cmp	r6, r8
 551 0036 0CD0     		beq	.L107
 552              	.L95:
 553 0038 0132     		adds	r2, r2, #1
 554 003a A242     		cmp	r2, r4
 555 003c 1D46     		mov	r5, r3
 556 003e F7D1     		bne	.L99
 557              	.L91:
 558 0040 44F20C03 		movw	r3, #16396
 559 0044 FA58     		ldr	r2, [r7, r3]
 560 0046 4245     		cmp	r2, r8
 561 0048 04BF     		itt	eq
 562 004a 0022     		moveq	r2, #0
 563 004c FA50     		streq	r2, [r7, r3]
 564 004e BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 565              	.L107:
 566 0052 561C     		adds	r6, r2, #1
 567              	.L93:
 568 0054 E868     		ldr	r0, [r5, #12]
 569 0056 30B1     		cbz	r0, .L96
 570 0058 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 11


 571 005c 44F6AC42 		movw	r2, #19628
 572 0060 0023     		movs	r3, #0
 573 0062 BC58     		ldr	r4, [r7, r2]
 574 0064 EB60     		str	r3, [r5, #12]
 575              	.L96:
 576 0066 B442     		cmp	r4, r6
 577 0068 17D9     		bls	.L97
 578 006a 06EBC600 		add	r0, r6, r6, lsl #3
 579 006e 07EB0010 		add	r0, r7, r0, lsl #4
 580 0072 00F58F40 		add	r0, r0, #18304
 581 0076 07F59949 		add	r9, r7, #19584
 582 007a 1C30     		adds	r0, r0, #28
 583 007c 09F12C09 		add	r9, r9, #44
 584 0080 00E0     		b	.L98
 585              	.L108:
 586 0082 2846     		mov	r0, r5
 587              	.L98:
 588 0084 00F19005 		add	r5, r0, #144
 589 0088 2946     		mov	r1, r5
 590 008a 9022     		movs	r2, #144
 591 008c FFF7FEFF 		bl	memcpy
 592 0090 D9F80040 		ldr	r4, [r9]
 593 0094 0136     		adds	r6, r6, #1
 594 0096 B442     		cmp	r4, r6
 595 0098 F3D8     		bhi	.L108
 596              	.L97:
 597 009a 44F6AC43 		movw	r3, #19628
 598 009e 013C     		subs	r4, r4, #1
 599 00a0 FC50     		str	r4, [r7, r3]
 600 00a2 CDE7     		b	.L91
 601              		.size	_ZN9Webserver13DeleteSessionEm, .-_ZN9Webserver13DeleteSessionEm
 602              		.section	.text._ZN9Webserver4ExitEv,"ax",%progbits
 603              		.align	2
 604              		.global	_ZN9Webserver4ExitEv
 605              		.thumb
 606              		.thumb_func
 607              		.type	_ZN9Webserver4ExitEv, %function
 608              	_ZN9Webserver4ExitEv:
 609              		@ args = 0, pretend = 0, frame = 0
 610              		@ frame_needed = 0, uses_anonymous_args = 0
 611 0000 44F21003 		movw	r3, #16400
 612 0004 10B5     		push	{r4, lr}
 613 0006 054A     		ldr	r2, .L110
 614 0008 0446     		mov	r4, r0
 615 000a 0621     		movs	r1, #6
 616 000c C058     		ldr	r0, [r0, r3]
 617 000e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 618 0012 44F21C03 		movw	r3, #16412
 619 0016 0022     		movs	r2, #0
 620 0018 E254     		strb	r2, [r4, r3]
 621 001a 10BD     		pop	{r4, pc}
 622              	.L111:
 623              		.align	2
 624              	.L110:
 625 001c 64000000 		.word	.LC5
 626              		.size	_ZN9Webserver4ExitEv, .-_ZN9Webserver4ExitEv
 627              		.section	.text._ZN9Webserver10ResetStateEv,"ax",%progbits
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 12


 628              		.align	2
 629              		.global	_ZN9Webserver10ResetStateEv
 630              		.thumb
 631              		.thumb_func
 632              		.type	_ZN9Webserver10ResetStateEv, %function
 633              	_ZN9Webserver10ResetStateEv:
 634              		@ args = 0, pretend = 0, frame = 0
 635              		@ frame_needed = 0, uses_anonymous_args = 0
 636              		@ link register save eliminated.
 637 0000 10B4     		push	{r4}
 638 0002 44F62801 		movw	r1, #18472
 639 0006 44F2F074 		movw	r4, #18416
 640 000a 44F2F572 		movw	r2, #18421
 641 000e 0023     		movs	r3, #0
 642 0010 0351     		str	r3, [r0, r4]
 643 0012 4350     		str	r3, [r0, r1]
 644 0014 5DF8044B 		ldr	r4, [sp], #4
 645 0018 8354     		strb	r3, [r0, r2]
 646 001a 0372     		strb	r3, [r0, #8]
 647 001c 7047     		bx	lr
 648              		.size	_ZN9Webserver10ResetStateEv, .-_ZN9Webserver10ResetStateEv
 649 001e 00BF     		.section	.text._ZN9Webserver11DiagnosticsE11MessageType,"ax",%progbits
 650              		.align	2
 651              		.global	_ZN9Webserver11DiagnosticsE11MessageType
 652              		.thumb
 653              		.thumb_func
 654              		.type	_ZN9Webserver11DiagnosticsE11MessageType, %function
 655              	_ZN9Webserver11DiagnosticsE11MessageType:
 656              		@ args = 0, pretend = 0, frame = 0
 657              		@ frame_needed = 0, uses_anonymous_args = 0
 658 0000 70B5     		push	{r4, r5, r6, lr}
 659 0002 44F21005 		movw	r5, #16400
 660 0006 82B0     		sub	sp, sp, #8
 661 0008 0446     		mov	r4, r0
 662 000a 084A     		ldr	r2, .L114
 663 000c 4059     		ldr	r0, [r0, r5]
 664 000e 0E46     		mov	r6, r1
 665 0010 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 666 0014 44F6AC43 		movw	r3, #19628
 667 0018 6059     		ldr	r0, [r4, r5]
 668 001a E358     		ldr	r3, [r4, r3]
 669 001c 044A     		ldr	r2, .L114+4
 670 001e 0824     		movs	r4, #8
 671 0020 3146     		mov	r1, r6
 672 0022 0094     		str	r4, [sp]
 673 0024 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 674 0028 02B0     		add	sp, sp, #8
 675              		@ sp needed
 676 002a 70BD     		pop	{r4, r5, r6, pc}
 677              	.L115:
 678              		.align	2
 679              	.L114:
 680 002c 80000000 		.word	.LC6
 681 0030 94000000 		.word	.LC7
 682              		.size	_ZN9Webserver11DiagnosticsE11MessageType, .-_ZN9Webserver11DiagnosticsE11MessageType
 683              		.section	.text._ZN9Webserver16HandleGCodeReplyE9WebSourceP12OutputBuffer,"ax",%progbits
 684              		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 13


 685              		.global	_ZN9Webserver16HandleGCodeReplyE9WebSourceP12OutputBuffer
 686              		.thumb
 687              		.thumb_func
 688              		.type	_ZN9Webserver16HandleGCodeReplyE9WebSourceP12OutputBuffer, %function
 689              	_ZN9Webserver16HandleGCodeReplyE9WebSourceP12OutputBuffer:
 690              		@ args = 0, pretend = 0, frame = 0
 691              		@ frame_needed = 0, uses_anonymous_args = 0
 692 0000 38B5     		push	{r3, r4, r5, lr}
 693 0002 0D46     		mov	r5, r1
 694 0004 0446     		mov	r4, r0
 695 0006 79B9     		cbnz	r1, .L124
 696 0008 9AB1     		cbz	r2, .L116
 697 000a 44F6AC43 		movw	r3, #19628
 698 000e C358     		ldr	r3, [r0, r3]
 699 0010 53B1     		cbz	r3, .L124
 700 0012 1146     		mov	r1, r2
 701 0014 4068     		ldr	r0, [r0, #4]
 702 0016 FFF7FEFF 		bl	_ZN11OutputStack4PushEP12OutputBuffer
 703 001a 2368     		ldr	r3, [r4]
 704 001c 44F6B042 		movw	r2, #19632
 705 0020 0133     		adds	r3, r3, #1
 706 0022 2360     		str	r3, [r4]
 707 0024 A550     		str	r5, [r4, r2]
 708 0026 38BD     		pop	{r3, r4, r5, pc}
 709              	.L124:
 710 0028 1046     		mov	r0, r2
 711 002a BDE83840 		pop	{r3, r4, r5, lr}
 712 002e FFF7FEBF 		b	_ZN12OutputBuffer10ReleaseAllEPS_
 713              	.L116:
 714 0032 38BD     		pop	{r3, r4, r5, pc}
 715              		.size	_ZN9Webserver16HandleGCodeReplyE9WebSourceP12OutputBuffer, .-_ZN9Webserver16HandleGCodeReply
 716              		.section	.text._ZN9Webserver16HandleGCodeReplyE9WebSourcePKc,"ax",%progbits
 717              		.align	2
 718              		.global	_ZN9Webserver16HandleGCodeReplyE9WebSourcePKc
 719              		.thumb
 720              		.thumb_func
 721              		.type	_ZN9Webserver16HandleGCodeReplyE9WebSourcePKc, %function
 722              	_ZN9Webserver16HandleGCodeReplyE9WebSourcePKc:
 723              		@ args = 0, pretend = 0, frame = 8
 724              		@ frame_needed = 0, uses_anonymous_args = 0
 725 0000 30B5     		push	{r4, r5, lr}
 726 0002 0446     		mov	r4, r0
 727 0004 83B0     		sub	sp, sp, #12
 728 0006 1546     		mov	r5, r2
 729 0008 19B9     		cbnz	r1, .L125
 730 000a 44F6AC43 		movw	r3, #19628
 731 000e C358     		ldr	r3, [r0, r3]
 732 0010 0BB9     		cbnz	r3, .L138
 733              	.L125:
 734 0012 03B0     		add	sp, sp, #12
 735              		@ sp needed
 736 0014 30BD     		pop	{r4, r5, pc}
 737              	.L138:
 738 0016 4068     		ldr	r0, [r0, #4]
 739 0018 FFF7FEFF 		bl	_ZNK11OutputStack11GetLastItemEv
 740 001c 0190     		str	r0, [sp, #4]
 741 001e 10B1     		cbz	r0, .L128
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 14


 742 0020 90F81431 		ldrb	r3, [r0, #276]	@ zero_extendqisi2
 743 0024 4BB1     		cbz	r3, .L129
 744              	.L128:
 745 0026 01A8     		add	r0, sp, #4
 746 0028 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 747 002c 0028     		cmp	r0, #0
 748 002e F0D0     		beq	.L125
 749 0030 6068     		ldr	r0, [r4, #4]
 750 0032 0199     		ldr	r1, [sp, #4]
 751 0034 FFF7FEFF 		bl	_ZN11OutputStack4PushEP12OutputBuffer
 752 0038 0198     		ldr	r0, [sp, #4]
 753              	.L129:
 754 003a 2946     		mov	r1, r5
 755 003c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 756 0040 2368     		ldr	r3, [r4]
 757 0042 0133     		adds	r3, r3, #1
 758 0044 2360     		str	r3, [r4]
 759 0046 03B0     		add	sp, sp, #12
 760              		@ sp needed
 761 0048 30BD     		pop	{r4, r5, pc}
 762              		.size	_ZN9Webserver16HandleGCodeReplyE9WebSourcePKc, .-_ZN9Webserver16HandleGCodeReplyE9WebSourceP
 763 004a 00BF     		.section	.text._ZNK9Webserver11GetKeyValueEPKc,"ax",%progbits
 764              		.align	2
 765              		.global	_ZNK9Webserver11GetKeyValueEPKc
 766              		.thumb
 767              		.thumb_func
 768              		.type	_ZNK9Webserver11GetKeyValueEPKc, %function
 769              	_ZNK9Webserver11GetKeyValueEPKc:
 770              		@ args = 0, pretend = 0, frame = 0
 771              		@ frame_needed = 0, uses_anonymous_args = 0
 772 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 773 0002 44F62803 		movw	r3, #18472
 774 0006 0546     		mov	r5, r0
 775 0008 C358     		ldr	r3, [r0, r3]
 776 000a 0F46     		mov	r7, r1
 777 000c C3B1     		cbz	r3, .L143
 778 000e 00F59046 		add	r6, r0, #18432
 779 0012 2836     		adds	r6, r6, #40
 780 0014 0024     		movs	r4, #0
 781 0016 03E0     		b	.L144
 782              	.L142:
 783 0018 3368     		ldr	r3, [r6]
 784 001a 0134     		adds	r4, r4, #1
 785 001c A342     		cmp	r3, r4
 786 001e 0FD9     		bls	.L143
 787              	.L144:
 788 0020 05EBC403 		add	r3, r5, r4, lsl #3
 789 0024 03F58F43 		add	r3, r3, #18304
 790 0028 3946     		mov	r1, r7
 791 002a 986F     		ldr	r0, [r3, #120]
 792 002c FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 793 0030 0028     		cmp	r0, #0
 794 0032 F1D0     		beq	.L142
 795 0034 04F6FF04 		addw	r4, r4, #2303
 796 0038 05EBC405 		add	r5, r5, r4, lsl #3
 797 003c 6868     		ldr	r0, [r5, #4]
 798 003e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 15


 799              	.L143:
 800 0040 0020     		movs	r0, #0
 801 0042 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 802              		.size	_ZNK9Webserver11GetKeyValueEPKc, .-_ZNK9Webserver11GetKeyValueEPKc
 803              		.section	.text._ZN9Webserver14SendGCodeReplyERNS_11HttpSessionE,"ax",%progbits
 804              		.align	2
 805              		.global	_ZN9Webserver14SendGCodeReplyERNS_11HttpSessionE
 806              		.thumb
 807              		.thumb_func
 808              		.type	_ZN9Webserver14SendGCodeReplyERNS_11HttpSessionE, %function
 809              	_ZN9Webserver14SendGCodeReplyERNS_11HttpSessionE:
 810              		@ args = 0, pretend = 0, frame = 0
 811              		@ frame_needed = 0, uses_anonymous_args = 0
 812 0000 70B5     		push	{r4, r5, r6, lr}
 813 0002 0446     		mov	r4, r0
 814 0004 4068     		ldr	r0, [r0, #4]
 815 0006 0368     		ldr	r3, [r0]
 816 0008 82B0     		sub	sp, sp, #8
 817 000a 0D46     		mov	r5, r1
 818 000c 002B     		cmp	r3, #0
 819 000e 35D0     		beq	.L154
 820 0010 44F6B042 		movw	r2, #19632
 821 0014 44F6AC41 		movw	r1, #19628
 822 0018 A358     		ldr	r3, [r4, r2]
 823 001a 6158     		ldr	r1, [r4, r1]
 824 001c 0133     		adds	r3, r3, #1
 825 001e 8B42     		cmp	r3, r1
 826 0020 A350     		str	r3, [r4, r2]
 827 0022 20D3     		bcc	.L155
 828 0024 44F21403 		movw	r3, #16404
 829 0028 2D68     		ldr	r5, [r5]
 830 002a E658     		ldr	r6, [r4, r3]
 831 002c FFF7FEFF 		bl	_ZN11OutputStack3PopEv
 832              	.L153:
 833 0030 0346     		mov	r3, r0
 834 0032 2946     		mov	r1, r5
 835 0034 3046     		mov	r0, r6
 836 0036 C822     		movs	r2, #200
 837 0038 FFF7FEFF 		bl	_ZN7Network9SendReplyEmjP12OutputBuffer
 838 003c 154B     		ldr	r3, .L156
 839 003e B3F84030 		ldrh	r3, [r3, #64]
 840 0042 5B07     		lsls	r3, r3, #29
 841 0044 0DD5     		bpl	.L145
 842 0046 44F6AC42 		movw	r2, #19628
 843 004a 44F21001 		movw	r1, #16400
 844 004e 44F6B043 		movw	r3, #19632
 845 0052 A258     		ldr	r2, [r4, r2]
 846 0054 6058     		ldr	r0, [r4, r1]
 847 0056 E358     		ldr	r3, [r4, r3]
 848 0058 0092     		str	r2, [sp]
 849 005a 0221     		movs	r1, #2
 850 005c 0E4A     		ldr	r2, .L156+4
 851 005e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 852              	.L145:
 853 0062 02B0     		add	sp, sp, #8
 854              		@ sp needed
 855 0064 70BD     		pop	{r4, r5, r6, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 16


 856              	.L155:
 857 0066 0121     		movs	r1, #1
 858 0068 FFF7FEFF 		bl	_ZN11OutputStack18IncreaseReferencesEj
 859 006c 44F21403 		movw	r3, #16404
 860 0070 6068     		ldr	r0, [r4, #4]
 861 0072 2D68     		ldr	r5, [r5]
 862 0074 E658     		ldr	r6, [r4, r3]
 863 0076 FFF7FEFF 		bl	_ZNK11OutputStack12GetFirstItemEv
 864 007a D9E7     		b	.L153
 865              	.L154:
 866 007c 44F21403 		movw	r3, #16404
 867 0080 0968     		ldr	r1, [r1]
 868 0082 E058     		ldr	r0, [r4, r3]
 869 0084 054B     		ldr	r3, .L156+8
 870 0086 C822     		movs	r2, #200
 871 0088 02B0     		add	sp, sp, #8
 872              		@ sp needed
 873 008a BDE87040 		pop	{r4, r5, r6, lr}
 874 008e FFF7FEBF 		b	_ZN7Network9SendReplyEmjPKc
 875              	.L157:
 876 0092 00BF     		.align	2
 877              	.L156:
 878 0094 00000000 		.word	reprap
 879 0098 B4000000 		.word	.LC9
 880 009c B0000000 		.word	.LC8
 881              		.size	_ZN9Webserver14SendGCodeReplyERNS_11HttpSessionE, .-_ZN9Webserver14SendGCodeReplyERNS_11Http
 882              		.section	.text._ZN9Webserver8SendFileEPKcRNS_11HttpSessionE,"ax",%progbits
 883              		.align	2
 884              		.global	_ZN9Webserver8SendFileEPKcRNS_11HttpSessionE
 885              		.thumb
 886              		.thumb_func
 887              		.type	_ZN9Webserver8SendFileEPKcRNS_11HttpSessionE, %function
 888              	_ZN9Webserver8SendFileEPKcRNS_11HttpSessionE:
 889              		@ args = 0, pretend = 0, frame = 0
 890              		@ frame_needed = 0, uses_anonymous_args = 0
 891 0000 70B5     		push	{r4, r5, r6, lr}
 892 0002 0446     		mov	r4, r0
 893 0004 44F21000 		movw	r0, #16400
 894 0008 0B46     		mov	r3, r1
 895 000a 1546     		mov	r5, r2
 896 000c 2058     		ldr	r0, [r4, r0]
 897 000e 0D49     		ldr	r1, .L161
 898 0010 1A46     		mov	r2, r3
 899 0012 0023     		movs	r3, #0
 900 0014 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 901 0018 0346     		mov	r3, r0
 902 001a 40B1     		cbz	r0, .L160
 903 001c 44F21402 		movw	r2, #16404
 904 0020 2968     		ldr	r1, [r5]
 905 0022 A058     		ldr	r0, [r4, r2]
 906 0024 C822     		movs	r2, #200
 907 0026 BDE87040 		pop	{r4, r5, r6, lr}
 908 002a FFF7FEBF 		b	_ZN7Network9SendReplyEmjP9FileStore
 909              	.L160:
 910 002e 44F21403 		movw	r3, #16404
 911 0032 2968     		ldr	r1, [r5]
 912 0034 E058     		ldr	r0, [r4, r3]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 17


 913 0036 044B     		ldr	r3, .L161+4
 914 0038 4FF4C872 		mov	r2, #400
 915 003c BDE87040 		pop	{r4, r5, r6, lr}
 916 0040 FFF7FEBF 		b	_ZN7Network9SendReplyEmjPKc
 917              	.L162:
 918              		.align	2
 919              	.L161:
 920 0044 3C000000 		.word	.LC3
 921 0048 D0000000 		.word	.LC10
 922              		.size	_ZN9Webserver8SendFileEPKcRNS_11HttpSessionE, .-_ZN9Webserver8SendFileEPKcRNS_11HttpSessionE
 923              		.section	.text._ZN9Webserver20ProcessFirstFragmentERNS_11HttpSessionEPKcb,"ax",%progbits
 924              		.align	2
 925              		.global	_ZN9Webserver20ProcessFirstFragmentERNS_11HttpSessionEPKcb
 926              		.thumb
 927              		.thumb_func
 928              		.type	_ZN9Webserver20ProcessFirstFragmentERNS_11HttpSessionEPKcb, %function
 929              	_ZN9Webserver20ProcessFirstFragmentERNS_11HttpSessionEPKcb:
 930              		@ args = 0, pretend = 0, frame = 104
 931              		@ frame_needed = 0, uses_anonymous_args = 0
 932 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 933 0004 0446     		mov	r4, r0
 934 0006 9DB0     		sub	sp, sp, #116
 935 0008 0E46     		mov	r6, r1
 936 000a 1046     		mov	r0, r2
 937 000c A549     		ldr	r1, .L281
 938 000e 1546     		mov	r5, r2
 939 0010 9846     		mov	r8, r3
 940 0012 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 941 0016 0028     		cmp	r0, #0
 942 0018 6ED1     		bne	.L268
 943              	.L164:
 944 001a 2846     		mov	r0, r5
 945 001c A249     		ldr	r1, .L281+4
 946 001e FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 947 0022 0028     		cmp	r0, #0
 948 0024 40F0E080 		bne	.L269
 949 0028 96F88C30 		ldrb	r3, [r6, #140]	@ zero_extendqisi2
 950 002c 002B     		cmp	r3, #0
 951 002e 00F09980 		beq	.L270
 952              	.L172:
 953 0032 2846     		mov	r0, r5
 954 0034 9D49     		ldr	r1, .L281+8
 955 0036 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 956 003a 0746     		mov	r7, r0
 957 003c 0028     		cmp	r0, #0
 958 003e 40F0A880 		bne	.L271
 959 0042 2846     		mov	r0, r5
 960 0044 9A49     		ldr	r1, .L281+12
 961 0046 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 962 004a 8146     		mov	r9, r0
 963 004c 0028     		cmp	r0, #0
 964 004e 40F0EC80 		bne	.L272
 965 0052 2846     		mov	r0, r5
 966 0054 9749     		ldr	r1, .L281+16
 967 0056 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 968 005a 0028     		cmp	r0, #0
 969 005c 40F05081 		bne	.L273
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 18


 970              	.L176:
 971 0060 2846     		mov	r0, r5
 972 0062 9549     		ldr	r1, .L281+20
 973 0064 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 974 0068 0028     		cmp	r0, #0
 975 006a 00F0F280 		beq	.L274
 976 006e 9349     		ldr	r1, .L281+24
 977 0070 2046     		mov	r0, r4
 978 0072 FFF7FEFF 		bl	_ZNK9Webserver11GetKeyValueEPKc
 979 0076 9249     		ldr	r1, .L281+28
 980 0078 0546     		mov	r5, r0
 981 007a 2046     		mov	r0, r4
 982 007c FFF7FEFF 		bl	_ZNK9Webserver11GetKeyValueEPKc
 983 0080 9049     		ldr	r1, .L281+32
 984 0082 0746     		mov	r7, r0
 985 0084 2046     		mov	r0, r4
 986 0086 FFF7FEFF 		bl	_ZNK9Webserver11GetKeyValueEPKc
 987 008a 002D     		cmp	r5, #0
 988 008c 00F04A81 		beq	.L178
 989 0090 002F     		cmp	r7, #0
 990 0092 00F04781 		beq	.L178
 991 0096 0023     		movs	r3, #0
 992 0098 0393     		str	r3, [sp, #12]
 993 009a 0493     		str	r3, [sp, #16]
 994 009c 0593     		str	r3, [sp, #20]
 995 009e 0693     		str	r3, [sp, #24]
 996 00a0 0793     		str	r3, [sp, #28]
 997 00a2 0893     		str	r3, [sp, #32]
 998 00a4 0993     		str	r3, [sp, #36]
 999 00a6 0A93     		str	r3, [sp, #40]
 1000 00a8 0B93     		str	r3, [sp, #44]
 1001 00aa 0028     		cmp	r0, #0
 1002 00ac 00F05A81 		beq	.L179
 1003 00b0 8549     		ldr	r1, .L281+36
 1004 00b2 03AA     		add	r2, sp, #12
 1005 00b4 FFF7FEFF 		bl	strptime
 1006 00b8 0028     		cmp	r0, #0
 1007 00ba 00F05381 		beq	.L179
 1008 00be 03A8     		add	r0, sp, #12
 1009 00c0 FFF7FEFF 		bl	mktime
 1010 00c4 8146     		mov	r9, r0
 1011              	.L223:
 1012 00c6 3846     		mov	r0, r7
 1013 00c8 FFF7FEFF 		bl	atol
 1014 00cc CDF80090 		str	r9, [sp]
 1015 00d0 0346     		mov	r3, r0
 1016 00d2 2A46     		mov	r2, r5
 1017 00d4 2046     		mov	r0, r4
 1018 00d6 3146     		mov	r1, r6
 1019 00d8 FFF7FEFF 		bl	_ZN9Webserver11StartUploadERNS_11HttpSessionEPKcml
 1020 00dc 96F88070 		ldrb	r7, [r6, #128]	@ zero_extendqisi2
 1021 00e0 002F     		cmp	r7, #0
 1022 00e2 40F01F81 		bne	.L178
 1023 00e6 B8F1000F 		cmp	r8, #0
 1024 00ea 00F05781 		beq	.L182
 1025 00ee 2046     		mov	r0, r4
 1026 00f0 3146     		mov	r1, r6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 19


 1027 00f2 FFF7FEFF 		bl	_ZN9Webserver12FinishUploadERNS_11HttpSessionE
 1028 00f6 48E0     		b	.L261
 1029              	.L268:
 1030 00f8 2046     		mov	r0, r4
 1031 00fa 7449     		ldr	r1, .L281+40
 1032 00fc FFF7FEFF 		bl	_ZNK9Webserver11GetKeyValueEPKc
 1033 0100 0028     		cmp	r0, #0
 1034 0102 8AD0     		beq	.L164
 1035 0104 02A8     		add	r0, sp, #8
 1036 0106 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 1037 010a 0028     		cmp	r0, #0
 1038 010c 47D0     		beq	.L275
 1039 010e 96F88C30 		ldrb	r3, [r6, #140]	@ zero_extendqisi2
 1040 0112 002B     		cmp	r3, #0
 1041 0114 75D0     		beq	.L276
 1042              	.L166:
 1043 0116 2046     		mov	r0, r4
 1044 0118 6A49     		ldr	r1, .L281+32
 1045 011a FFF7FEFF 		bl	_ZNK9Webserver11GetKeyValueEPKc
 1046 011e 0546     		mov	r5, r0
 1047 0120 38B1     		cbz	r0, .L220
 1048 0122 44F21007 		movw	r7, #16400
 1049 0126 E059     		ldr	r0, [r4, r7]
 1050 0128 FFF7FEFF 		bl	_ZNK8Platform13IsDateTimeSetEv
 1051 012c 0346     		mov	r3, r0
 1052 012e 0028     		cmp	r0, #0
 1053 0130 42D0     		beq	.L277
 1054              	.L220:
 1055 0132 44F21002 		movw	r2, #16400
 1056 0136 0123     		movs	r3, #1
 1057 0138 A058     		ldr	r0, [r4, r2]
 1058 013a 86F88C30 		strb	r3, [r6, #140]
 1059 013e 029D     		ldr	r5, [sp, #8]
 1060 0140 FFF7FEFF 		bl	_ZNK8Platform14GetBoardStringEv
 1061 0144 6249     		ldr	r1, .L281+44
 1062 0146 0346     		mov	r3, r0
 1063 0148 44F62062 		movw	r2, #20000
 1064 014c 2846     		mov	r0, r5
 1065 014e FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 1066              	.L217:
 1067 0152 44F21403 		movw	r3, #16404
 1068 0156 3168     		ldr	r1, [r6]
 1069 0158 E058     		ldr	r0, [r4, r3]
 1070 015a 5E4A     		ldr	r2, .L281+48
 1071 015c 029B     		ldr	r3, [sp, #8]
 1072 015e FFF7FEFF 		bl	_ZN7Network9SendReplyEmjP12OutputBuffer
 1073 0162 24E0     		b	.L266
 1074              	.L270:
 1075 0164 5C48     		ldr	r0, .L281+52
 1076 0166 FFF7FEFF 		bl	_ZNK6RepRap13NoPasswordSetEv
 1077 016a 0028     		cmp	r0, #0
 1078 016c 59D1     		bne	.L173
 1079 016e 96F88C70 		ldrb	r7, [r6, #140]	@ zero_extendqisi2
 1080 0172 002F     		cmp	r7, #0
 1081 0174 7FF45DAF 		bne	.L172
 1082 0178 44F21403 		movw	r3, #16404
 1083 017c 3168     		ldr	r1, [r6]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 20


 1084 017e E058     		ldr	r0, [r4, r3]
 1085 0180 564B     		ldr	r3, .L281+56
 1086 0182 4FF4FA72 		mov	r2, #500
 1087 0186 FFF7FEFF 		bl	_ZN7Network9SendReplyEmjPKc
 1088              	.L261:
 1089 018a 3846     		mov	r0, r7
 1090 018c 1DB0     		add	sp, sp, #116
 1091              		@ sp needed
 1092 018e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1093              	.L271:
 1094 0192 2046     		mov	r0, r4
 1095 0194 3146     		mov	r1, r6
 1096 0196 FFF7FEFF 		bl	_ZN9Webserver14SendGCodeReplyERNS_11HttpSessionE
 1097 019a 0027     		movs	r7, #0
 1098 019c F5E7     		b	.L261
 1099              	.L275:
 1100 019e 44F21403 		movw	r3, #16404
 1101 01a2 3168     		ldr	r1, [r6]
 1102 01a4 E058     		ldr	r0, [r4, r3]
 1103 01a6 4B4A     		ldr	r2, .L281+48
 1104 01a8 4D4B     		ldr	r3, .L281+60
 1105 01aa FFF7FEFF 		bl	_ZN7Network9SendReplyEmjPKc
 1106              	.L266:
 1107 01ae 0027     		movs	r7, #0
 1108 01b0 3846     		mov	r0, r7
 1109 01b2 1DB0     		add	sp, sp, #116
 1110              		@ sp needed
 1111 01b4 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1112              	.L277:
 1113 01b8 2846     		mov	r0, r5
 1114 01ba 03AA     		add	r2, sp, #12
 1115 01bc 4249     		ldr	r1, .L281+36
 1116 01be 0393     		str	r3, [sp, #12]
 1117 01c0 0493     		str	r3, [sp, #16]
 1118 01c2 0593     		str	r3, [sp, #20]
 1119 01c4 0693     		str	r3, [sp, #24]
 1120 01c6 0793     		str	r3, [sp, #28]
 1121 01c8 0893     		str	r3, [sp, #32]
 1122 01ca 0993     		str	r3, [sp, #36]
 1123 01cc 0A93     		str	r3, [sp, #40]
 1124 01ce 0B93     		str	r3, [sp, #44]
 1125 01d0 FFF7FEFF 		bl	strptime
 1126 01d4 0028     		cmp	r0, #0
 1127 01d6 ACD0     		beq	.L220
 1128 01d8 03A8     		add	r0, sp, #12
 1129 01da FFF7FEFF 		bl	mktime
 1130 01de 0146     		mov	r1, r0
 1131 01e0 E059     		ldr	r0, [r4, r7]
 1132 01e2 FFF7FEFF 		bl	_ZN8Platform11SetDateTimeEl
 1133 01e6 A4E7     		b	.L220
 1134              	.L269:
 1135 01e8 44F21403 		movw	r3, #16404
 1136 01ec 3168     		ldr	r1, [r6]
 1137 01ee E058     		ldr	r0, [r4, r3]
 1138 01f0 384A     		ldr	r2, .L281+48
 1139 01f2 3C4B     		ldr	r3, .L281+64
 1140 01f4 FFF7FEFF 		bl	_ZN7Network9SendReplyEmjPKc
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 21


 1141 01f8 2046     		mov	r0, r4
 1142 01fa 3168     		ldr	r1, [r6]
 1143 01fc FFF7FEFF 		bl	_ZN9Webserver13DeleteSessionEm
 1144 0200 D5E7     		b	.L266
 1145              	.L276:
 1146 0202 3249     		ldr	r1, .L281+40
 1147 0204 2046     		mov	r0, r4
 1148 0206 FFF7FEFF 		bl	_ZNK9Webserver11GetKeyValueEPKc
 1149 020a 0146     		mov	r1, r0
 1150 020c 3248     		ldr	r0, .L281+52
 1151 020e FFF7FEFF 		bl	_ZNK6RepRap13CheckPasswordEPKc
 1152 0212 0028     		cmp	r0, #0
 1153 0214 7FF47FAF 		bne	.L166
 1154 0218 0298     		ldr	r0, [sp, #8]
 1155 021a 3349     		ldr	r1, .L281+68
 1156 021c FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 1157 0220 97E7     		b	.L217
 1158              	.L173:
 1159 0222 0123     		movs	r3, #1
 1160 0224 86F88C30 		strb	r3, [r6, #140]
 1161 0228 03E7     		b	.L172
 1162              	.L272:
 1163 022a 44F21003 		movw	r3, #16400
 1164 022e 2F49     		ldr	r1, .L281+72
 1165 0230 E358     		ldr	r3, [r4, r3]
 1166 0232 2F4A     		ldr	r2, .L281+76
 1167 0234 D3F83C08 		ldr	r0, [r3, #2108]
 1168 0238 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameEPKcS1_
 1169 023c 6422     		movs	r2, #100
 1170 023e 0146     		mov	r1, r0
 1171 0240 03A8     		add	r0, sp, #12
 1172 0242 FFF7FEFF 		bl	strncpy
 1173 0246 2046     		mov	r0, r4
 1174 0248 03A9     		add	r1, sp, #12
 1175 024a 3246     		mov	r2, r6
 1176 024c FFF7FEFF 		bl	_ZN9Webserver8SendFileEPKcRNS_11HttpSessionE
 1177 0250 9BE7     		b	.L261
 1178              	.L274:
 1179 0252 2846     		mov	r0, r5
 1180 0254 2749     		ldr	r1, .L281+80
 1181 0256 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1182 025a 0028     		cmp	r0, #0
 1183 025c 6CD0     		beq	.L184
 1184 025e 2649     		ldr	r1, .L281+84
 1185 0260 2046     		mov	r0, r4
 1186 0262 FFF7FEFF 		bl	_ZNK9Webserver11GetKeyValueEPKc
 1187 0266 2549     		ldr	r1, .L281+88
 1188 0268 0546     		mov	r5, r0
 1189 026a 2046     		mov	r0, r4
 1190 026c FFF7FEFF 		bl	_ZNK9Webserver11GetKeyValueEPKc
 1191 0270 002D     		cmp	r5, #0
 1192 0272 75D0     		beq	.L195
 1193 0274 0028     		cmp	r0, #0
 1194 0276 73D0     		beq	.L195
 1195 0278 44F21003 		movw	r3, #16400
 1196 027c 0246     		mov	r2, r0
 1197 027e E358     		ldr	r3, [r4, r3]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 22


 1198 0280 2946     		mov	r1, r5
 1199 0282 D3F83C08 		ldr	r0, [r3, #2108]
 1200 0286 FFF7FEFF 		bl	_ZN11MassStorage6RenameEPKcS1_
 1201 028a 0028     		cmp	r0, #0
 1202 028c 68D0     		beq	.L195
 1203              	.L267:
 1204 028e 154B     		ldr	r3, .L281+64
 1205              	.L194:
 1206 0290 44F21402 		movw	r2, #16404
 1207 0294 3168     		ldr	r1, [r6]
 1208 0296 A058     		ldr	r0, [r4, r2]
 1209 0298 0E4A     		ldr	r2, .L281+48
 1210 029a FFF7FEFF 		bl	_ZN7Network9SendReplyEmjPKc
 1211 029e 0027     		movs	r7, #0
 1212 02a0 73E7     		b	.L261
 1213              	.L282:
 1214 02a2 00BF     		.align	2
 1215              	.L281:
 1216 02a4 EC000000 		.word	.LC12
 1217 02a8 74020000 		.word	.LC44
 1218 02ac 4C010000 		.word	.LC17
 1219 02b0 54010000 		.word	.LC18
 1220 02b4 74010000 		.word	.LC21
 1221 02b8 80020000 		.word	.LC45
 1222 02bc 80010000 		.word	.LC22
 1223 02c0 88010000 		.word	.LC23
 1224 02c4 90010000 		.word	.LC24
 1225 02c8 98010000 		.word	.LC25
 1226 02cc F4000000 		.word	.LC13
 1227 02d0 00010000 		.word	.LC14
 1228 02d4 C8000100 		.word	65736
 1229 02d8 00000000 		.word	reprap
 1230 02dc 3C010000 		.word	.LC16
 1231 02e0 30010000 		.word	.LC15
 1232 02e4 00000000 		.word	.LC0
 1233 02e8 0C000000 		.word	.LC1
 1234 02ec 60010000 		.word	.LC19
 1235 02f0 68010000 		.word	.LC20
 1236 02f4 AC010000 		.word	.LC26
 1237 02f8 B4010000 		.word	.LC27
 1238 02fc B8010000 		.word	.LC28
 1239              	.L273:
 1240 0300 2046     		mov	r0, r4
 1241 0302 9849     		ldr	r1, .L283
 1242 0304 FFF7FEFF 		bl	_ZNK9Webserver11GetKeyValueEPKc
 1243 0308 0028     		cmp	r0, #0
 1244 030a 3FF4A9AE 		beq	.L176
 1245 030e 2046     		mov	r0, r4
 1246 0310 9449     		ldr	r1, .L283
 1247 0312 FFF7FEFF 		bl	_ZNK9Webserver11GetKeyValueEPKc
 1248 0316 3246     		mov	r2, r6
 1249 0318 0146     		mov	r1, r0
 1250 031a 2046     		mov	r0, r4
 1251 031c 4F46     		mov	r7, r9
 1252 031e FFF7FEFF 		bl	_ZN9Webserver8SendFileEPKcRNS_11HttpSessionE
 1253 0322 32E7     		b	.L261
 1254              	.L178:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 23


 1255 0324 44F21403 		movw	r3, #16404
 1256 0328 3168     		ldr	r1, [r6]
 1257 032a E058     		ldr	r0, [r4, r3]
 1258 032c 8E4A     		ldr	r2, .L283+4
 1259 032e 8F4B     		ldr	r3, .L283+8
 1260 0330 FFF7FEFF 		bl	_ZN7Network9SendReplyEmjPKc
 1261 0334 0027     		movs	r7, #0
 1262 0336 28E7     		b	.L261
 1263              	.L184:
 1264 0338 2846     		mov	r0, r5
 1265 033a 8D49     		ldr	r1, .L283+12
 1266 033c FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1267 0340 98B1     		cbz	r0, .L188
 1268 0342 2046     		mov	r0, r4
 1269 0344 8B49     		ldr	r1, .L283+16
 1270 0346 FFF7FEFF 		bl	_ZNK9Webserver11GetKeyValueEPKc
 1271 034a 48B1     		cbz	r0, .L195
 1272 034c 44F21003 		movw	r3, #16400
 1273 0350 0146     		mov	r1, r0
 1274 0352 E358     		ldr	r3, [r4, r3]
 1275 0354 D3F83C08 		ldr	r0, [r3, #2108]
 1276 0358 FFF7FEFF 		bl	_ZN11MassStorage13MakeDirectoryEPKc
 1277 035c 0028     		cmp	r0, #0
 1278 035e 96D1     		bne	.L267
 1279              	.L195:
 1280 0360 824B     		ldr	r3, .L283+8
 1281 0362 95E7     		b	.L194
 1282              	.L179:
 1283 0364 4FF00009 		mov	r9, #0
 1284 0368 ADE6     		b	.L223
 1285              	.L188:
 1286 036a 2846     		mov	r0, r5
 1287 036c 8249     		ldr	r1, .L283+20
 1288 036e FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1289 0372 0746     		mov	r7, r0
 1290 0374 C8B1     		cbz	r0, .L192
 1291 0376 2046     		mov	r0, r4
 1292 0378 7A49     		ldr	r1, .L283
 1293 037a FFF7FEFF 		bl	_ZNK9Webserver11GetKeyValueEPKc
 1294 037e 0028     		cmp	r0, #0
 1295 0380 EED0     		beq	.L195
 1296 0382 44F21003 		movw	r3, #16400
 1297 0386 0246     		mov	r2, r0
 1298 0388 E358     		ldr	r3, [r4, r3]
 1299 038a 7C49     		ldr	r1, .L283+24
 1300 038c D3F83C08 		ldr	r0, [r3, #2108]
 1301 0390 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_
 1302 0394 0028     		cmp	r0, #0
 1303 0396 7FF47AAF 		bne	.L267
 1304 039a E1E7     		b	.L195
 1305              	.L182:
 1306 039c 44F21403 		movw	r3, #16404
 1307 03a0 0127     		movs	r7, #1
 1308 03a2 E058     		ldr	r0, [r4, r3]
 1309 03a4 FFF7FEFF 		bl	_ZN7Network14DiscardMessageEv
 1310 03a8 EFE6     		b	.L261
 1311              	.L192:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 24


 1312 03aa 2846     		mov	r0, r5
 1313 03ac 7449     		ldr	r1, .L283+28
 1314 03ae 0397     		str	r7, [sp, #12]
 1315 03b0 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1316 03b4 F8B1     		cbz	r0, .L196
 1317 03b6 2046     		mov	r0, r4
 1318 03b8 7249     		ldr	r1, .L283+32
 1319 03ba FFF7FEFF 		bl	_ZNK9Webserver11GetKeyValueEPKc
 1320 03be 0246     		mov	r2, r0
 1321 03c0 0028     		cmp	r0, #0
 1322 03c2 68D0     		beq	.L197
 1323 03c4 FFF7FEFF 		bl	atoi
 1324 03c8 431E     		subs	r3, r0, #1
 1325 03ca 032B     		cmp	r3, #3
 1326 03cc 28BF     		it	cs
 1327 03ce 0120     		movcs	r0, #1
 1328 03d0 C1B2     		uxtb	r1, r0
 1329 03d2 3A46     		mov	r2, r7
 1330 03d4 6C48     		ldr	r0, .L283+36
 1331 03d6 FFF7FEFF 		bl	_ZN6RepRap17GetStatusResponseEh14ResponseSource
 1332 03da 0390     		str	r0, [sp, #12]
 1333 03dc 0346     		mov	r3, r0
 1334              	.L199:
 1335 03de 2BB3     		cbz	r3, .L210
 1336 03e0 44F21402 		movw	r2, #16404
 1337 03e4 3168     		ldr	r1, [r6]
 1338 03e6 A058     		ldr	r0, [r4, r2]
 1339 03e8 5F4A     		ldr	r2, .L283+4
 1340 03ea FFF7FEFF 		bl	_ZN7Network9SendReplyEmjP12OutputBuffer
 1341              	.L211:
 1342 03ee 44F2F573 		movw	r3, #18421
 1343 03f2 E75C     		ldrb	r7, [r4, r3]	@ zero_extendqisi2
 1344 03f4 C9E6     		b	.L261
 1345              	.L196:
 1346 03f6 2846     		mov	r0, r5
 1347 03f8 6449     		ldr	r1, .L283+40
 1348 03fa FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1349 03fe 20B3     		cbz	r0, .L200
 1350 0400 2046     		mov	r0, r4
 1351 0402 6249     		ldr	r1, .L283+40
 1352 0404 FFF7FEFF 		bl	_ZNK9Webserver11GetKeyValueEPKc
 1353 0408 0746     		mov	r7, r0
 1354 040a 0028     		cmp	r0, #0
 1355 040c 7CD0     		beq	.L201
 1356 040e 5E4B     		ldr	r3, .L283+36
 1357 0410 1B69     		ldr	r3, [r3, #16]
 1358 0412 9D68     		ldr	r5, [r3, #8]
 1359 0414 0246     		mov	r2, r0
 1360 0416 0421     		movs	r1, #4
 1361 0418 2846     		mov	r0, r5
 1362 041a FFF7FEFF 		bl	_ZN17RegularGCodeInput3PutE11MessageTypePKc
 1363 041e 03A8     		add	r0, sp, #12
 1364 0420 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 1365 0424 0028     		cmp	r0, #0
 1366 0426 53D1     		bne	.L278
 1367 0428 039B     		ldr	r3, [sp, #12]
 1368 042a D8E7     		b	.L199
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 25


 1369              	.L210:
 1370 042c 44F2F573 		movw	r3, #18421
 1371 0430 E35C     		ldrb	r3, [r4, r3]	@ zero_extendqisi2
 1372 0432 002B     		cmp	r3, #0
 1373 0434 DBD1     		bne	.L211
 1374 0436 44F21403 		movw	r3, #16404
 1375 043a 3168     		ldr	r1, [r6]
 1376 043c E058     		ldr	r0, [r4, r3]
 1377 043e 544B     		ldr	r3, .L283+44
 1378 0440 4FF4FA72 		mov	r2, #500
 1379 0444 FFF7FEFF 		bl	_ZN7Network9SendReplyEmjPKc
 1380 0448 D1E7     		b	.L211
 1381              	.L200:
 1382 044a 2846     		mov	r0, r5
 1383 044c 5149     		ldr	r1, .L283+48
 1384 044e FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1385 0452 0028     		cmp	r0, #0
 1386 0454 47D1     		bne	.L279
 1387              	.L203:
 1388 0456 2846     		mov	r0, r5
 1389 0458 4F49     		ldr	r1, .L283+52
 1390 045a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1391 045e 0746     		mov	r7, r0
 1392 0460 00B3     		cbz	r0, .L280
 1393 0462 4449     		ldr	r1, .L283+16
 1394 0464 4D4D     		ldr	r5, .L283+56
 1395 0466 2046     		mov	r0, r4
 1396 0468 FFF7FEFF 		bl	_ZNK9Webserver11GetKeyValueEPKc
 1397 046c 4C49     		ldr	r1, .L283+60
 1398 046e 0028     		cmp	r0, #0
 1399 0470 18BF     		it	ne
 1400 0472 0546     		movne	r5, r0
 1401 0474 2046     		mov	r0, r4
 1402 0476 FFF7FEFF 		bl	_ZNK9Webserver11GetKeyValueEPKc
 1403 047a 0246     		mov	r2, r0
 1404 047c 20B1     		cbz	r0, .L206
 1405 047e FFF7FEFF 		bl	atoi
 1406 0482 431E     		subs	r3, r0, #1
 1407 0484 5A42     		rsbs	r2, r3, #0
 1408 0486 5A41     		adcs	r2, r2, r3
 1409              	.L206:
 1410 0488 2946     		mov	r1, r5
 1411 048a 3F48     		ldr	r0, .L283+36
 1412 048c FFF7FEFF 		bl	_ZN6RepRap16GetFilesResponseEPKcb
 1413 0490 0390     		str	r0, [sp, #12]
 1414 0492 0346     		mov	r3, r0
 1415 0494 A3E7     		b	.L199
 1416              	.L197:
 1417 0496 3C48     		ldr	r0, .L283+36
 1418 0498 0121     		movs	r1, #1
 1419 049a FFF7FEFF 		bl	_ZN6RepRap23GetLegacyStatusResponseEhi
 1420 049e 0390     		str	r0, [sp, #12]
 1421 04a0 0346     		mov	r3, r0
 1422 04a2 9CE7     		b	.L199
 1423              	.L280:
 1424 04a4 2846     		mov	r0, r5
 1425 04a6 3F49     		ldr	r1, .L283+64
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 26


 1426 04a8 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1427 04ac 0028     		cmp	r0, #0
 1428 04ae 3AD0     		beq	.L207
 1429 04b0 2C49     		ldr	r1, .L283
 1430 04b2 2046     		mov	r0, r4
 1431 04b4 FFF7FEFF 		bl	_ZNK9Webserver11GetKeyValueEPKc
 1432 04b8 334B     		ldr	r3, .L283+36
 1433 04ba 0146     		mov	r1, r0
 1434 04bc 03AA     		add	r2, sp, #12
 1435 04be D869     		ldr	r0, [r3, #28]
 1436 04c0 FFF7FEFF 		bl	_ZN12PrintMonitor19GetFileInfoResponseEPKcRP12OutputBuffer
 1437 04c4 48B3     		cbz	r0, .L208
 1438 04c6 44F2F572 		movw	r2, #18421
 1439 04ca 039B     		ldr	r3, [sp, #12]
 1440 04cc A754     		strb	r7, [r4, r2]
 1441 04ce 86E7     		b	.L199
 1442              	.L278:
 1443 04d0 2846     		mov	r0, r5
 1444 04d2 039D     		ldr	r5, [sp, #12]
 1445 04d4 FFF7FEFF 		bl	_ZNK17RegularGCodeInput15BufferSpaceLeftEv
 1446 04d8 3349     		ldr	r1, .L283+68
 1447 04da 0246     		mov	r2, r0
 1448 04dc 2846     		mov	r0, r5
 1449 04de FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 1450 04e2 039B     		ldr	r3, [sp, #12]
 1451 04e4 7BE7     		b	.L199
 1452              	.L279:
 1453 04e6 2046     		mov	r0, r4
 1454 04e8 2249     		ldr	r1, .L283+16
 1455 04ea FFF7FEFF 		bl	_ZNK9Webserver11GetKeyValueEPKc
 1456 04ee 0028     		cmp	r0, #0
 1457 04f0 B1D0     		beq	.L203
 1458 04f2 2049     		ldr	r1, .L283+16
 1459 04f4 2046     		mov	r0, r4
 1460 04f6 FFF7FEFF 		bl	_ZNK9Webserver11GetKeyValueEPKc
 1461 04fa 0146     		mov	r1, r0
 1462 04fc 2248     		ldr	r0, .L283+36
 1463 04fe FFF7FEFF 		bl	_ZN6RepRap19GetFilelistResponseEPKc
 1464 0502 0390     		str	r0, [sp, #12]
 1465 0504 0346     		mov	r3, r0
 1466 0506 6AE7     		b	.L199
 1467              	.L201:
 1468 0508 44F21403 		movw	r3, #16404
 1469 050c 3168     		ldr	r1, [r6]
 1470 050e E058     		ldr	r0, [r4, r3]
 1471 0510 154A     		ldr	r2, .L283+4
 1472 0512 164B     		ldr	r3, .L283+8
 1473 0514 FFF7FEFF 		bl	_ZN7Network9SendReplyEmjPKc
 1474 0518 37E6     		b	.L261
 1475              	.L208:
 1476 051a 44F2F573 		movw	r3, #18421
 1477 051e 0122     		movs	r2, #1
 1478 0520 E254     		strb	r2, [r4, r3]
 1479 0522 039B     		ldr	r3, [sp, #12]
 1480 0524 5BE7     		b	.L199
 1481              	.L207:
 1482 0526 2846     		mov	r0, r5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 27


 1483 0528 2049     		ldr	r1, .L283+72
 1484 052a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1485 052e 0746     		mov	r7, r0
 1486 0530 28B1     		cbz	r0, .L209
 1487 0532 1548     		ldr	r0, .L283+36
 1488 0534 FFF7FEFF 		bl	_ZN6RepRap17GetConfigResponseEv
 1489 0538 0390     		str	r0, [sp, #12]
 1490 053a 0346     		mov	r3, r0
 1491 053c 4FE7     		b	.L199
 1492              	.L209:
 1493 053e 44F21002 		movw	r2, #16400
 1494 0542 2B46     		mov	r3, r5
 1495 0544 A058     		ldr	r0, [r4, r2]
 1496 0546 1A4A     		ldr	r2, .L283+76
 1497 0548 0221     		movs	r1, #2
 1498 054a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1499 054e 44F21403 		movw	r3, #16404
 1500 0552 3168     		ldr	r1, [r6]
 1501 0554 E058     		ldr	r0, [r4, r3]
 1502 0556 174B     		ldr	r3, .L283+80
 1503 0558 4FF4C872 		mov	r2, #400
 1504 055c FFF7FEFF 		bl	_ZN7Network9SendReplyEmjPKc
 1505 0560 13E6     		b	.L261
 1506              	.L284:
 1507 0562 00BF     		.align	2
 1508              	.L283:
 1509 0564 80010000 		.word	.LC22
 1510 0568 C8000100 		.word	65736
 1511 056c 0C000000 		.word	.LC1
 1512 0570 BC010000 		.word	.LC29
 1513 0574 C4010000 		.word	.LC30
 1514 0578 C8010000 		.word	.LC31
 1515 057c D0010000 		.word	.LC32
 1516 0580 D4010000 		.word	.LC33
 1517 0584 DC010000 		.word	.LC34
 1518 0588 00000000 		.word	reprap
 1519 058c E4010000 		.word	.LC35
 1520 0590 60020000 		.word	.LC43
 1521 0594 F8010000 		.word	.LC37
 1522 0598 88020000 		.word	.LC46
 1523 059c E0000000 		.word	.LC11
 1524 05a0 04020000 		.word	.LC38
 1525 05a4 10020000 		.word	.LC39
 1526 05a8 EC010000 		.word	.LC36
 1527 05ac 1C020000 		.word	.LC40
 1528 05b0 24020000 		.word	.LC41
 1529 05b4 4C020000 		.word	.LC42
 1530              		.size	_ZN9Webserver20ProcessFirstFragmentERNS_11HttpSessionEPKcb, .-_ZN9Webserver20ProcessFirstFra
 1531              		.section	.text._ZN9Webserver14CharFromClientEcRPKc,"ax",%progbits
 1532              		.align	2
 1533              		.global	_ZN9Webserver14CharFromClientEcRPKc
 1534              		.thumb
 1535              		.thumb_func
 1536              		.type	_ZN9Webserver14CharFromClientEcRPKc, %function
 1537              	_ZN9Webserver14CharFromClientEcRPKc:
 1538              		@ args = 0, pretend = 0, frame = 0
 1539              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 28


 1540              		@ link register save eliminated.
 1541 0000 0346     		mov	r3, r0
 1542 0002 007A     		ldrb	r0, [r0, #8]	@ zero_extendqisi2
 1543 0004 2DE9F003 		push	{r4, r5, r6, r7, r8, r9}
 1544 0008 0628     		cmp	r0, #6
 1545 000a 00F2FF80 		bhi	.L286
 1546 000e DFE800F0 		tbb	[pc, r0]
 1547              	.L288:
 1548 0012 35       		.byte	(.L287-.L288)/2
 1549 0013 B8       		.byte	(.L289-.L288)/2
 1550 0014 7A       		.byte	(.L290-.L288)/2
 1551 0015 97       		.byte	(.L291-.L288)/2
 1552 0016 04       		.byte	(.L292-.L288)/2
 1553 0017 B8       		.byte	(.L289-.L288)/2
 1554 0018 7A       		.byte	(.L290-.L288)/2
 1555 0019 00       		.align	1
 1556              	.L292:
 1557 001a 2B29     		cmp	r1, #43
 1558 001c 00F2E280 		bhi	.L304
 1559 0020 DFE811F0 		tbh	[pc, r1, lsl #1]
 1560              	.L306:
 1561 0024 7901     		.2byte	(.L305-.L306)/2
 1562 0026 E000     		.2byte	(.L304-.L306)/2
 1563 0028 E000     		.2byte	(.L304-.L306)/2
 1564 002a E000     		.2byte	(.L304-.L306)/2
 1565 002c E000     		.2byte	(.L304-.L306)/2
 1566 002e E000     		.2byte	(.L304-.L306)/2
 1567 0030 E000     		.2byte	(.L304-.L306)/2
 1568 0032 E000     		.2byte	(.L304-.L306)/2
 1569 0034 E000     		.2byte	(.L304-.L306)/2
 1570 0036 7901     		.2byte	(.L305-.L306)/2
 1571 0038 7901     		.2byte	(.L305-.L306)/2
 1572 003a E000     		.2byte	(.L304-.L306)/2
 1573 003c E000     		.2byte	(.L304-.L306)/2
 1574 003e 7901     		.2byte	(.L305-.L306)/2
 1575 0040 E000     		.2byte	(.L304-.L306)/2
 1576 0042 E000     		.2byte	(.L304-.L306)/2
 1577 0044 E000     		.2byte	(.L304-.L306)/2
 1578 0046 E000     		.2byte	(.L304-.L306)/2
 1579 0048 E000     		.2byte	(.L304-.L306)/2
 1580 004a E000     		.2byte	(.L304-.L306)/2
 1581 004c E000     		.2byte	(.L304-.L306)/2
 1582 004e E000     		.2byte	(.L304-.L306)/2
 1583 0050 E000     		.2byte	(.L304-.L306)/2
 1584 0052 E000     		.2byte	(.L304-.L306)/2
 1585 0054 E000     		.2byte	(.L304-.L306)/2
 1586 0056 E000     		.2byte	(.L304-.L306)/2
 1587 0058 E000     		.2byte	(.L304-.L306)/2
 1588 005a E000     		.2byte	(.L304-.L306)/2
 1589 005c E000     		.2byte	(.L304-.L306)/2
 1590 005e E000     		.2byte	(.L304-.L306)/2
 1591 0060 E000     		.2byte	(.L304-.L306)/2
 1592 0062 E000     		.2byte	(.L304-.L306)/2
 1593 0064 7901     		.2byte	(.L305-.L306)/2
 1594 0066 E000     		.2byte	(.L304-.L306)/2
 1595 0068 E000     		.2byte	(.L304-.L306)/2
 1596 006a E000     		.2byte	(.L304-.L306)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 29


 1597 006c E000     		.2byte	(.L304-.L306)/2
 1598 006e 7301     		.2byte	(.L307-.L306)/2
 1599 0070 5901     		.2byte	(.L308-.L306)/2
 1600 0072 E000     		.2byte	(.L304-.L306)/2
 1601 0074 E000     		.2byte	(.L304-.L306)/2
 1602 0076 E000     		.2byte	(.L304-.L306)/2
 1603 0078 E000     		.2byte	(.L304-.L306)/2
 1604 007a 4E01     		.2byte	(.L309-.L306)/2
 1605              	.L287:
 1606 007c 3F29     		cmp	r1, #63
 1607 007e 00F2B180 		bhi	.L304
 1608 0082 DFE811F0 		tbh	[pc, r1, lsl #1]
 1609              	.L295:
 1610 0086 0D01     		.2byte	(.L294-.L295)/2
 1611 0088 AF00     		.2byte	(.L304-.L295)/2
 1612 008a AF00     		.2byte	(.L304-.L295)/2
 1613 008c AF00     		.2byte	(.L304-.L295)/2
 1614 008e AF00     		.2byte	(.L304-.L295)/2
 1615 0090 AF00     		.2byte	(.L304-.L295)/2
 1616 0092 AF00     		.2byte	(.L304-.L295)/2
 1617 0094 AF00     		.2byte	(.L304-.L295)/2
 1618 0096 AF00     		.2byte	(.L304-.L295)/2
 1619 0098 0D01     		.2byte	(.L294-.L295)/2
 1620 009a 0D01     		.2byte	(.L294-.L295)/2
 1621 009c AF00     		.2byte	(.L304-.L295)/2
 1622 009e AF00     		.2byte	(.L304-.L295)/2
 1623 00a0 0D01     		.2byte	(.L294-.L295)/2
 1624 00a2 AF00     		.2byte	(.L304-.L295)/2
 1625 00a4 AF00     		.2byte	(.L304-.L295)/2
 1626 00a6 AF00     		.2byte	(.L304-.L295)/2
 1627 00a8 AF00     		.2byte	(.L304-.L295)/2
 1628 00aa AF00     		.2byte	(.L304-.L295)/2
 1629 00ac AF00     		.2byte	(.L304-.L295)/2
 1630 00ae AF00     		.2byte	(.L304-.L295)/2
 1631 00b0 AF00     		.2byte	(.L304-.L295)/2
 1632 00b2 AF00     		.2byte	(.L304-.L295)/2
 1633 00b4 AF00     		.2byte	(.L304-.L295)/2
 1634 00b6 AF00     		.2byte	(.L304-.L295)/2
 1635 00b8 AF00     		.2byte	(.L304-.L295)/2
 1636 00ba AF00     		.2byte	(.L304-.L295)/2
 1637 00bc AF00     		.2byte	(.L304-.L295)/2
 1638 00be AF00     		.2byte	(.L304-.L295)/2
 1639 00c0 AF00     		.2byte	(.L304-.L295)/2
 1640 00c2 AF00     		.2byte	(.L304-.L295)/2
 1641 00c4 AF00     		.2byte	(.L304-.L295)/2
 1642 00c6 0D01     		.2byte	(.L294-.L295)/2
 1643 00c8 AF00     		.2byte	(.L304-.L295)/2
 1644 00ca AF00     		.2byte	(.L304-.L295)/2
 1645 00cc AF00     		.2byte	(.L304-.L295)/2
 1646 00ce AF00     		.2byte	(.L304-.L295)/2
 1647 00d0 0701     		.2byte	(.L296-.L295)/2
 1648 00d2 AF00     		.2byte	(.L304-.L295)/2
 1649 00d4 AF00     		.2byte	(.L304-.L295)/2
 1650 00d6 AF00     		.2byte	(.L304-.L295)/2
 1651 00d8 AF00     		.2byte	(.L304-.L295)/2
 1652 00da AF00     		.2byte	(.L304-.L295)/2
 1653 00dc AF00     		.2byte	(.L304-.L295)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 30


 1654 00de AF00     		.2byte	(.L304-.L295)/2
 1655 00e0 AF00     		.2byte	(.L304-.L295)/2
 1656 00e2 AF00     		.2byte	(.L304-.L295)/2
 1657 00e4 AF00     		.2byte	(.L304-.L295)/2
 1658 00e6 AF00     		.2byte	(.L304-.L295)/2
 1659 00e8 AF00     		.2byte	(.L304-.L295)/2
 1660 00ea AF00     		.2byte	(.L304-.L295)/2
 1661 00ec AF00     		.2byte	(.L304-.L295)/2
 1662 00ee AF00     		.2byte	(.L304-.L295)/2
 1663 00f0 AF00     		.2byte	(.L304-.L295)/2
 1664 00f2 AF00     		.2byte	(.L304-.L295)/2
 1665 00f4 AF00     		.2byte	(.L304-.L295)/2
 1666 00f6 AF00     		.2byte	(.L304-.L295)/2
 1667 00f8 AF00     		.2byte	(.L304-.L295)/2
 1668 00fa AF00     		.2byte	(.L304-.L295)/2
 1669 00fc AF00     		.2byte	(.L304-.L295)/2
 1670 00fe AF00     		.2byte	(.L304-.L295)/2
 1671 0100 AF00     		.2byte	(.L304-.L295)/2
 1672 0102 AF00     		.2byte	(.L304-.L295)/2
 1673 0104 F000     		.2byte	(.L297-.L295)/2
 1674              	.L290:
 1675 0106 A1F13005 		sub	r5, r1, #48
 1676 010a EDB2     		uxtb	r5, r5
 1677 010c 092D     		cmp	r5, #9
 1678 010e 00F28180 		bhi	.L313
 1679 0112 44F2F076 		movw	r6, #18416
 1680 0116 44F2F471 		movw	r1, #18420
 1681 011a 9C59     		ldr	r4, [r3, r6]
 1682 011c 5F5C     		ldrb	r7, [r3, r1]	@ zero_extendqisi2
 1683 011e 1919     		adds	r1, r3, r4
 1684 0120 01F58041 		add	r1, r1, #16384
 1685 0124 0238     		subs	r0, r0, #2
 1686 0126 0134     		adds	r4, r4, #1
 1687 0128 3D43     		orrs	r5, r5, r7
 1688 012a 9C51     		str	r4, [r3, r6]
 1689 012c 4D77     		strb	r5, [r1, #29]
 1690 012e 1872     		strb	r0, [r3, #8]
 1691              	.L299:
 1692 0130 40F2D373 		movw	r3, #2003
 1693 0134 9C42     		cmp	r4, r3
 1694 0136 62D0     		beq	.L315
 1695              	.L314:
 1696 0138 0020     		movs	r0, #0
 1697              	.L298:
 1698 013a BDE8F003 		pop	{r4, r5, r6, r7, r8, r9}
 1699 013e 7047     		bx	lr
 1700              	.L291:
 1701 0140 A1F10900 		sub	r0, r1, #9
 1702 0144 3428     		cmp	r0, #52
 1703 0146 4DD8     		bhi	.L304
 1704 0148 DFE800F0 		tbb	[pc, r0]
 1705              	.L302:
 1706 014c 48       		.byte	(.L301-.L302)/2
 1707 014d 48       		.byte	(.L301-.L302)/2
 1708 014e 4C       		.byte	(.L304-.L302)/2
 1709 014f 4C       		.byte	(.L304-.L302)/2
 1710 0150 48       		.byte	(.L301-.L302)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 31


 1711 0151 4C       		.byte	(.L304-.L302)/2
 1712 0152 4C       		.byte	(.L304-.L302)/2
 1713 0153 4C       		.byte	(.L304-.L302)/2
 1714 0154 4C       		.byte	(.L304-.L302)/2
 1715 0155 4C       		.byte	(.L304-.L302)/2
 1716 0156 4C       		.byte	(.L304-.L302)/2
 1717 0157 4C       		.byte	(.L304-.L302)/2
 1718 0158 4C       		.byte	(.L304-.L302)/2
 1719 0159 4C       		.byte	(.L304-.L302)/2
 1720 015a 4C       		.byte	(.L304-.L302)/2
 1721 015b 4C       		.byte	(.L304-.L302)/2
 1722 015c 4C       		.byte	(.L304-.L302)/2
 1723 015d 4C       		.byte	(.L304-.L302)/2
 1724 015e 4C       		.byte	(.L304-.L302)/2
 1725 015f 4C       		.byte	(.L304-.L302)/2
 1726 0160 4C       		.byte	(.L304-.L302)/2
 1727 0161 4C       		.byte	(.L304-.L302)/2
 1728 0162 4C       		.byte	(.L304-.L302)/2
 1729 0163 48       		.byte	(.L301-.L302)/2
 1730 0164 4C       		.byte	(.L304-.L302)/2
 1731 0165 4C       		.byte	(.L304-.L302)/2
 1732 0166 4C       		.byte	(.L304-.L302)/2
 1733 0167 4C       		.byte	(.L304-.L302)/2
 1734 0168 48       		.byte	(.L301-.L302)/2
 1735 0169 48       		.byte	(.L301-.L302)/2
 1736 016a 4C       		.byte	(.L304-.L302)/2
 1737 016b 4C       		.byte	(.L304-.L302)/2
 1738 016c 4C       		.byte	(.L304-.L302)/2
 1739 016d 4C       		.byte	(.L304-.L302)/2
 1740 016e 4C       		.byte	(.L304-.L302)/2
 1741 016f 4C       		.byte	(.L304-.L302)/2
 1742 0170 4C       		.byte	(.L304-.L302)/2
 1743 0171 4C       		.byte	(.L304-.L302)/2
 1744 0172 4C       		.byte	(.L304-.L302)/2
 1745 0173 4C       		.byte	(.L304-.L302)/2
 1746 0174 4C       		.byte	(.L304-.L302)/2
 1747 0175 4C       		.byte	(.L304-.L302)/2
 1748 0176 4C       		.byte	(.L304-.L302)/2
 1749 0177 4C       		.byte	(.L304-.L302)/2
 1750 0178 4C       		.byte	(.L304-.L302)/2
 1751 0179 4C       		.byte	(.L304-.L302)/2
 1752 017a 4C       		.byte	(.L304-.L302)/2
 1753 017b 4C       		.byte	(.L304-.L302)/2
 1754 017c 4C       		.byte	(.L304-.L302)/2
 1755 017d 4C       		.byte	(.L304-.L302)/2
 1756 017e 4C       		.byte	(.L304-.L302)/2
 1757 017f 4C       		.byte	(.L304-.L302)/2
 1758 0180 2A       		.byte	(.L303-.L302)/2
 1759 0181 00       		.align	1
 1760              	.L289:
 1761 0182 A1F13004 		sub	r4, r1, #48
 1762 0186 E4B2     		uxtb	r4, r4
 1763 0188 092C     		cmp	r4, #9
 1764 018a 58D8     		bhi	.L311
 1765 018c 44F2F475 		movw	r5, #18420
 1766 0190 44F2F071 		movw	r1, #18416
 1767 0194 2401     		lsls	r4, r4, #4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 32


 1768 0196 0130     		adds	r0, r0, #1
 1769 0198 1872     		strb	r0, [r3, #8]
 1770 019a 5C55     		strb	r4, [r3, r5]
 1771 019c 5C58     		ldr	r4, [r3, r1]
 1772 019e C7E7     		b	.L299
 1773              	.L303:
 1774 01a0 44F2F076 		movw	r6, #18416
 1775 01a4 44F62805 		movw	r5, #18472
 1776 01a8 9C59     		ldr	r4, [r3, r6]
 1777 01aa 5F59     		ldr	r7, [r3, r5]
 1778 01ac 1819     		adds	r0, r3, r4
 1779 01ae 07F6FF08 		addw	r8, r7, #2303
 1780 01b2 00F58040 		add	r0, r0, #16384
 1781 01b6 03EBC808 		add	r8, r3, r8, lsl #3
 1782 01ba 0134     		adds	r4, r4, #1
 1783 01bc 00F11E01 		add	r1, r0, #30
 1784 01c0 4FF00009 		mov	r9, #0
 1785 01c4 0137     		adds	r7, r7, #1
 1786 01c6 4FF0040C 		mov	ip, #4
 1787 01ca 9C51     		str	r4, [r3, r6]
 1788 01cc 80F81D90 		strb	r9, [r0, #29]
 1789 01d0 C8F80410 		str	r1, [r8, #4]
 1790 01d4 5F51     		str	r7, [r3, r5]
 1791 01d6 83F808C0 		strb	ip, [r3, #8]
 1792 01da A9E7     		b	.L299
 1793              	.L301:
 1794 01dc 5B4B     		ldr	r3, .L316
 1795 01de 1360     		str	r3, [r2]
 1796 01e0 0120     		movs	r0, #1
 1797 01e2 AAE7     		b	.L298
 1798              	.L304:
 1799 01e4 44F2F075 		movw	r5, #18416
 1800 01e8 5C59     		ldr	r4, [r3, r5]
 1801 01ea 1819     		adds	r0, r3, r4
 1802 01ec 0134     		adds	r4, r4, #1
 1803 01ee 5C51     		str	r4, [r3, r5]
 1804 01f0 00F58040 		add	r0, r0, #16384
 1805 01f4 40F2D373 		movw	r3, #2003
 1806 01f8 9C42     		cmp	r4, r3
 1807 01fa 4177     		strb	r1, [r0, #29]
 1808 01fc 9CD1     		bne	.L314
 1809              	.L315:
 1810 01fe 544B     		ldr	r3, .L316+4
 1811 0200 1B68     		ldr	r3, [r3]
 1812 0202 1360     		str	r3, [r2]
 1813 0204 0120     		movs	r0, #1
 1814 0206 BDE8F003 		pop	{r4, r5, r6, r7, r8, r9}
 1815 020a 7047     		bx	lr
 1816              	.L286:
 1817 020c 44F2F071 		movw	r1, #18416
 1818 0210 5C58     		ldr	r4, [r3, r1]
 1819 0212 8DE7     		b	.L299
 1820              	.L313:
 1821 0214 A1F14104 		sub	r4, r1, #65
 1822 0218 052C     		cmp	r4, #5
 1823 021a 1FD8     		bhi	.L312
 1824 021c 44F2F076 		movw	r6, #18416
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 33


 1825 0220 44F2F475 		movw	r5, #18420
 1826 0224 9C59     		ldr	r4, [r3, r6]
 1827 0226 5F5D     		ldrb	r7, [r3, r5]	@ zero_extendqisi2
 1828 0228 1D19     		adds	r5, r3, r4
 1829 022a 05F58045 		add	r5, r5, #16384
 1830 022e 3739     		subs	r1, r1, #55
 1831 0230 0238     		subs	r0, r0, #2
 1832 0232 3943     		orrs	r1, r1, r7
 1833 0234 0134     		adds	r4, r4, #1
 1834 0236 9C51     		str	r4, [r3, r6]
 1835 0238 6977     		strb	r1, [r5, #29]
 1836 023a 1872     		strb	r0, [r3, #8]
 1837 023c 78E7     		b	.L299
 1838              	.L311:
 1839 023e A1F14104 		sub	r4, r1, #65
 1840 0242 052C     		cmp	r4, #5
 1841 0244 0AD8     		bhi	.L312
 1842 0246 3739     		subs	r1, r1, #55
 1843 0248 44F2F475 		movw	r5, #18420
 1844 024c 44F2F074 		movw	r4, #18416
 1845 0250 0901     		lsls	r1, r1, #4
 1846 0252 0130     		adds	r0, r0, #1
 1847 0254 1872     		strb	r0, [r3, #8]
 1848 0256 1C59     		ldr	r4, [r3, r4]
 1849 0258 5955     		strb	r1, [r3, r5]
 1850 025a 69E7     		b	.L299
 1851              	.L312:
 1852 025c 3D4B     		ldr	r3, .L316+8
 1853 025e 1B68     		ldr	r3, [r3]
 1854 0260 1360     		str	r3, [r2]
 1855 0262 0120     		movs	r0, #1
 1856 0264 69E7     		b	.L298
 1857              	.L297:
 1858 0266 44F2F076 		movw	r6, #18416
 1859 026a 44F2F878 		movw	r8, #18424
 1860 026e 9C59     		ldr	r4, [r3, r6]
 1861 0270 1819     		adds	r0, r3, r4
 1862 0272 00F58040 		add	r0, r0, #16384
 1863 0276 44F6280C 		movw	ip, #18472
 1864 027a 0025     		movs	r5, #0
 1865 027c 0134     		adds	r4, r4, #1
 1866 027e 00F11E01 		add	r1, r0, #30
 1867 0282 0327     		movs	r7, #3
 1868 0284 9C51     		str	r4, [r3, r6]
 1869 0286 4577     		strb	r5, [r0, #29]
 1870 0288 43F80810 		str	r1, [r3, r8]
 1871 028c 43F80C50 		str	r5, [r3, ip]
 1872 0290 1F72     		strb	r7, [r3, #8]
 1873 0292 4DE7     		b	.L299
 1874              	.L296:
 1875 0294 44F2F070 		movw	r0, #18416
 1876 0298 0121     		movs	r1, #1
 1877 029a 1C58     		ldr	r4, [r3, r0]
 1878 029c 1972     		strb	r1, [r3, #8]
 1879 029e 47E7     		b	.L299
 1880              	.L294:
 1881 02a0 44F2F070 		movw	r0, #18416
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 34


 1882 02a4 44F62805 		movw	r5, #18472
 1883 02a8 1958     		ldr	r1, [r3, r0]
 1884 02aa 5C18     		adds	r4, r3, r1
 1885 02ac 04F58044 		add	r4, r4, #16384
 1886 02b0 4E1C     		adds	r6, r1, #1
 1887 02b2 0021     		movs	r1, #0
 1888 02b4 1E50     		str	r6, [r3, r0]
 1889 02b6 6177     		strb	r1, [r4, #29]
 1890 02b8 0120     		movs	r0, #1
 1891 02ba 5951     		str	r1, [r3, r5]
 1892 02bc 1160     		str	r1, [r2]
 1893 02be 3CE7     		b	.L298
 1894              	.L309:
 1895 02c0 44F2F070 		movw	r0, #18416
 1896 02c4 2025     		movs	r5, #32
 1897 02c6 1C58     		ldr	r4, [r3, r0]
 1898 02c8 1919     		adds	r1, r3, r4
 1899 02ca 01F58041 		add	r1, r1, #16384
 1900 02ce 0134     		adds	r4, r4, #1
 1901 02d0 1C50     		str	r4, [r3, r0]
 1902 02d2 4D77     		strb	r5, [r1, #29]
 1903 02d4 2CE7     		b	.L299
 1904              	.L308:
 1905 02d6 44F2F076 		movw	r6, #18416
 1906 02da 44F62801 		movw	r1, #18472
 1907 02de 9C59     		ldr	r4, [r3, r6]
 1908 02e0 5D58     		ldr	r5, [r3, r1]
 1909 02e2 1819     		adds	r0, r3, r4
 1910 02e4 00F58040 		add	r0, r0, #16384
 1911 02e8 05F6FF07 		addw	r7, r5, #2303
 1912 02ec 0134     		adds	r4, r4, #1
 1913 02ee 00F11E01 		add	r1, r0, #30
 1914 02f2 4FF0000C 		mov	ip, #0
 1915 02f6 042D     		cmp	r5, #4
 1916 02f8 9C51     		str	r4, [r3, r6]
 1917 02fa 80F81DC0 		strb	ip, [r0, #29]
 1918 02fe 43F83710 		str	r1, [r3, r7, lsl #3]
 1919 0302 1ED8     		bhi	.L310
 1920 0304 0321     		movs	r1, #3
 1921 0306 1972     		strb	r1, [r3, #8]
 1922 0308 12E7     		b	.L299
 1923              	.L307:
 1924 030a 44F2F070 		movw	r0, #18416
 1925 030e 0521     		movs	r1, #5
 1926 0310 1C58     		ldr	r4, [r3, r0]
 1927 0312 1972     		strb	r1, [r3, #8]
 1928 0314 0CE7     		b	.L299
 1929              	.L305:
 1930 0316 44F2F076 		movw	r6, #18416
 1931 031a 44F62801 		movw	r1, #18472
 1932 031e 9859     		ldr	r0, [r3, r6]
 1933 0320 5F58     		ldr	r7, [r3, r1]
 1934 0322 1C18     		adds	r4, r3, r0
 1935 0324 04F58044 		add	r4, r4, #16384
 1936 0328 07F6FF07 		addw	r7, r7, #2303
 1937 032c 0130     		adds	r0, r0, #1
 1938 032e 0025     		movs	r5, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 35


 1939 0330 04F11E01 		add	r1, r4, #30
 1940 0334 9851     		str	r0, [r3, r6]
 1941 0336 6577     		strb	r5, [r4, #29]
 1942 0338 0120     		movs	r0, #1
 1943 033a 43F83710 		str	r1, [r3, r7, lsl #3]
 1944 033e 1560     		str	r5, [r2]
 1945 0340 FBE6     		b	.L298
 1946              	.L310:
 1947 0342 054B     		ldr	r3, .L316+12
 1948 0344 1360     		str	r3, [r2]
 1949 0346 0120     		movs	r0, #1
 1950 0348 F7E6     		b	.L298
 1951              	.L317:
 1952 034a 00BF     		.align	2
 1953              	.L316:
 1954 034c 90020000 		.word	.LC47
 1955 0350 00000000 		.word	.LANCHOR1
 1956 0354 00000000 		.word	.LANCHOR0
 1957 0358 A4020000 		.word	.LC48
 1958              		.size	_ZN9Webserver14CharFromClientEcRPKc, .-_ZN9Webserver14CharFromClientEcRPKc
 1959              		.section	.text._ZN9Webserver13CheckSessionsEv,"ax",%progbits
 1960              		.align	2
 1961              		.global	_ZN9Webserver13CheckSessionsEv
 1962              		.thumb
 1963              		.thumb_func
 1964              		.type	_ZN9Webserver13CheckSessionsEv, %function
 1965              	_ZN9Webserver13CheckSessionsEv:
 1966              		@ args = 0, pretend = 0, frame = 0
 1967              		@ frame_needed = 0, uses_anonymous_args = 0
 1968 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1969 0004 0646     		mov	r6, r0
 1970 0006 FFF7FEFF 		bl	millis
 1971 000a 44F6AC43 		movw	r3, #19628
 1972 000e 8046     		mov	r8, r0
 1973 0010 F358     		ldr	r3, [r6, r3]
 1974 0012 9BB3     		cbz	r3, .L337
 1975 0014 06F59947 		add	r7, r6, #19584
 1976 0018 BA46     		mov	r10, r7
 1977 001a 06F59044 		add	r4, r6, #18432
 1978 001e 3434     		adds	r4, r4, #52
 1979 0020 2C37     		adds	r7, r7, #44
 1980 0022 0AF1300A 		add	r10, r10, #48
 1981 0026 0025     		movs	r5, #0
 1982 0028 44F62069 		movw	r9, #20000
 1983 002c 04E0     		b	.L324
 1984              	.L322:
 1985 002e 3B68     		ldr	r3, [r7]
 1986 0030 AB42     		cmp	r3, r5
 1987 0032 04F19004 		add	r4, r4, #144
 1988 0036 15D9     		bls	.L338
 1989              	.L324:
 1990 0038 2368     		ldr	r3, [r4]
 1991 003a C3EB0803 		rsb	r3, r3, r8
 1992 003e 4B45     		cmp	r3, r9
 1993 0040 05F10105 		add	r5, r5, #1
 1994 0044 F3D9     		bls	.L322
 1995 0046 54F8081C 		ldr	r1, [r4, #-8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 36


 1996 004a 3046     		mov	r0, r6
 1997 004c FFF7FEFF 		bl	_ZN9Webserver13DeleteSessionEm
 1998 0050 DAF80030 		ldr	r3, [r10]
 1999 0054 0133     		adds	r3, r3, #1
 2000 0056 CAF80030 		str	r3, [r10]
 2001 005a 3B68     		ldr	r3, [r7]
 2002 005c AB42     		cmp	r3, r5
 2003 005e 04F19004 		add	r4, r4, #144
 2004 0062 E9D8     		bhi	.L324
 2005              	.L338:
 2006 0064 53B1     		cbz	r3, .L337
 2007 0066 44F6B042 		movw	r2, #19632
 2008 006a B258     		ldr	r2, [r6, r2]
 2009 006c 9342     		cmp	r3, r2
 2010 006e 05D9     		bls	.L337
 2011 0070 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2012              	.L328:
 2013 0074 FFF7FEFF 		bl	_ZN11OutputStack3PopEv
 2014 0078 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllEPS_
 2015              	.L337:
 2016 007c 7068     		ldr	r0, [r6, #4]
 2017 007e 0368     		ldr	r3, [r0]
 2018 0080 002B     		cmp	r3, #0
 2019 0082 F7D1     		bne	.L328
 2020 0084 44F6B043 		movw	r3, #19632
 2021 0088 0022     		movs	r2, #0
 2022 008a F250     		str	r2, [r6, r3]
 2023 008c BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2024              		.size	_ZN9Webserver13CheckSessionsEv, .-_ZN9Webserver13CheckSessionsEv
 2025              		.section	.text._ZN9Webserver4SpinEv,"ax",%progbits
 2026              		.align	2
 2027              		.global	_ZN9Webserver4SpinEv
 2028              		.thumb
 2029              		.thumb_func
 2030              		.type	_ZN9Webserver4SpinEv, %function
 2031              	_ZN9Webserver4SpinEv:
 2032              		@ args = 0, pretend = 0, frame = 16
 2033              		@ frame_needed = 0, uses_anonymous_args = 0
 2034 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2035 0002 44F21C03 		movw	r3, #16412
 2036 0006 87B0     		sub	sp, sp, #28
 2037 0008 C35C     		ldrb	r3, [r0, r3]	@ zero_extendqisi2
 2038 000a 0446     		mov	r4, r0
 2039 000c 63B9     		cbnz	r3, .L364
 2040              	.L340:
 2041 000e 2046     		mov	r0, r4
 2042 0010 FFF7FEFF 		bl	_ZN9Webserver13CheckSessionsEv
 2043 0014 44F21003 		movw	r3, #16400
 2044 0018 04F58041 		add	r1, r4, #16384
 2045 001c E058     		ldr	r0, [r4, r3]
 2046 001e 1831     		adds	r1, r1, #24
 2047 0020 FFF7FEFF 		bl	_ZN8Platform11ClassReportERf
 2048 0024 07B0     		add	sp, sp, #28
 2049              		@ sp needed
 2050 0026 F0BD     		pop	{r4, r5, r6, r7, pc}
 2051              	.L364:
 2052 0028 44F21403 		movw	r3, #16404
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 37


 2053 002c 02A9     		add	r1, sp, #8
 2054 002e C058     		ldr	r0, [r0, r3]
 2055 0030 03AA     		add	r2, sp, #12
 2056 0032 04AB     		add	r3, sp, #16
 2057 0034 FFF7FEFF 		bl	_ZNK7Network10GetRequestERmRjS0_
 2058 0038 0646     		mov	r6, r0
 2059 003a 0028     		cmp	r0, #0
 2060 003c E7D0     		beq	.L340
 2061 003e 384B     		ldr	r3, .L368
 2062 0040 B3F84030 		ldrh	r3, [r3, #64]
 2063 0044 5B07     		lsls	r3, r3, #29
 2064 0046 3AD4     		bmi	.L365
 2065              	.L342:
 2066 0048 049D     		ldr	r5, [sp, #16]
 2067 004a 0299     		ldr	r1, [sp, #8]
 2068 004c 35F00045 		bics	r5, r5, #-2147483648
 2069 0050 2046     		mov	r0, r4
 2070 0052 28D1     		bne	.L343
 2071 0054 FFF7FEFF 		bl	_ZN9Webserver12StartSessionEm
 2072 0058 0746     		mov	r7, r0
 2073 005a 0028     		cmp	r0, #0
 2074 005c 55D0     		beq	.L366
 2075 005e 44F2F071 		movw	r1, #18416
 2076 0062 44F62802 		movw	r2, #18472
 2077 0066 44F2F573 		movw	r3, #18421
 2078 006a 2572     		strb	r5, [r4, #8]
 2079 006c 0595     		str	r5, [sp, #20]
 2080 006e 6550     		str	r5, [r4, r1]
 2081 0070 A550     		str	r5, [r4, r2]
 2082 0072 E554     		strb	r5, [r4, r3]
 2083 0074 039D     		ldr	r5, [sp, #12]
 2084              	.L345:
 2085 0076 2046     		mov	r0, r4
 2086 0078 05AA     		add	r2, sp, #20
 2087 007a 5DB3     		cbz	r5, .L367
 2088 007c 16F8011B 		ldrb	r1, [r6], #1	@ zero_extendqisi2
 2089 0080 FFF7FEFF 		bl	_ZN9Webserver14CharFromClientEcRPKc
 2090 0084 039D     		ldr	r5, [sp, #12]
 2091 0086 013D     		subs	r5, r5, #1
 2092 0088 0395     		str	r5, [sp, #12]
 2093 008a 0028     		cmp	r0, #0
 2094 008c F3D0     		beq	.L345
 2095 008e 059B     		ldr	r3, [sp, #20]
 2096 0090 002B     		cmp	r3, #0
 2097 0092 30D0     		beq	.L349
 2098              	.L352:
 2099 0094 44F21402 		movw	r2, #16404
 2100 0098 0299     		ldr	r1, [sp, #8]
 2101 009a A058     		ldr	r0, [r4, r2]
 2102 009c 4FF4C872 		mov	r2, #400
 2103 00a0 FFF7FEFF 		bl	_ZN7Network9SendReplyEmjPKc
 2104 00a4 B3E7     		b	.L340
 2105              	.L343:
 2106 00a6 FFF7FEFF 		bl	_ZN9Webserver11FindSessionEm
 2107 00aa B0B1     		cbz	r0, .L351
 2108 00ac 049A     		ldr	r2, [sp, #16]
 2109 00ae 0092     		str	r2, [sp]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 38


 2110 00b0 0146     		mov	r1, r0
 2111 00b2 039B     		ldr	r3, [sp, #12]
 2112 00b4 3246     		mov	r2, r6
 2113 00b6 2046     		mov	r0, r4
 2114 00b8 FFF7FEFF 		bl	_ZN9Webserver21ProcessUploadFragmentERNS_11HttpSessionEPKcjm
 2115 00bc A7E7     		b	.L340
 2116              	.L365:
 2117 00be 44F21002 		movw	r2, #16400
 2118 00c2 049B     		ldr	r3, [sp, #16]
 2119 00c4 A058     		ldr	r0, [r4, r2]
 2120 00c6 0093     		str	r3, [sp]
 2121 00c8 0221     		movs	r1, #2
 2122 00ca 164A     		ldr	r2, .L368+4
 2123 00cc 3346     		mov	r3, r6
 2124 00ce FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2125 00d2 B9E7     		b	.L342
 2126              	.L367:
 2127 00d4 144B     		ldr	r3, .L368+8
 2128 00d6 0593     		str	r3, [sp, #20]
 2129 00d8 DCE7     		b	.L352
 2130              	.L351:
 2131 00da 44F21403 		movw	r3, #16404
 2132 00de E058     		ldr	r0, [r4, r3]
 2133 00e0 FFF7FEFF 		bl	_ZN7Network14DiscardMessageEv
 2134 00e4 44F21003 		movw	r3, #16400
 2135 00e8 0321     		movs	r1, #3
 2136 00ea E058     		ldr	r0, [r4, r3]
 2137 00ec 0F4A     		ldr	r2, .L368+12
 2138 00ee 049B     		ldr	r3, [sp, #16]
 2139 00f0 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2140 00f4 8BE7     		b	.L340
 2141              	.L349:
 2142 00f6 049B     		ldr	r3, [sp, #16]
 2143 00f8 04F58042 		add	r2, r4, #16384
 2144 00fc 3946     		mov	r1, r7
 2145 00fe DB0F     		lsrs	r3, r3, #31
 2146 0100 1D32     		adds	r2, r2, #29
 2147 0102 2046     		mov	r0, r4
 2148 0104 FFF7FEFF 		bl	_ZN9Webserver20ProcessFirstFragmentERNS_11HttpSessionEPKcb
 2149 0108 81E7     		b	.L340
 2150              	.L366:
 2151 010a 44F21403 		movw	r3, #16404
 2152 010e 0299     		ldr	r1, [sp, #8]
 2153 0110 E058     		ldr	r0, [r4, r3]
 2154 0112 074B     		ldr	r3, .L368+16
 2155 0114 4FF4C872 		mov	r2, #400
 2156 0118 FFF7FEFF 		bl	_ZN7Network9SendReplyEmjPKc
 2157 011c 77E7     		b	.L340
 2158              	.L369:
 2159 011e 00BF     		.align	2
 2160              	.L368:
 2161 0120 00000000 		.word	reprap
 2162 0124 D4020000 		.word	.LC50
 2163 0128 C0020000 		.word	.LC49
 2164 012c 04030000 		.word	.LC52
 2165 0130 F0020000 		.word	.LC51
 2166              		.size	_ZN9Webserver4SpinEv, .-_ZN9Webserver4SpinEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 39


 2167              		.global	badEscapeResponse
 2168              		.global	overflowResponse
 2169              		.section	.data.overflowResponse,"aw",%progbits
 2170              		.align	2
 2171              		.set	.LANCHOR1,. + 0
 2172              		.type	overflowResponse, %object
 2173              		.size	overflowResponse, 4
 2174              	overflowResponse:
 2175 0000 30030000 		.word	.LC54
 2176              		.section	.data.badEscapeResponse,"aw",%progbits
 2177              		.align	2
 2178              		.set	.LANCHOR0,. + 0
 2179              		.type	badEscapeResponse, %object
 2180              		.size	badEscapeResponse, 4
 2181              	badEscapeResponse:
 2182 0000 24030000 		.word	.LC53
 2183              		.section	.rodata.str1.4,"aMS",%progbits,1
 2184              		.align	2
 2185              	.LC0:
 2186 0000 7B226572 		.ascii	"{\"err\":0}\000"
 2186      72223A30 
 2186      7D00
 2187 000a 0000     		.space	2
 2188              	.LC1:
 2189 000c 7B226572 		.ascii	"{\"err\":1}\000"
 2189      72223A31 
 2189      7D00
 2190 0016 0000     		.space	2
 2191              	.LC2:
 2192 0018 4572726F 		.ascii	"Error: Upload finished in state %d\012\000"
 2192      723A2055 
 2192      706C6F61 
 2192      64206669 
 2192      6E697368 
 2193              	.LC3:
 2194 003c 303A00   		.ascii	"0:\000"
 2195 003f 00       		.space	1
 2196              	.LC4:
 2197 0040 65787065 		.ascii	"expecting fragment %u received %u\012\000"
 2197      6374696E 
 2197      67206672 
 2197      61676D65 
 2197      6E742025 
 2198 0063 00       		.space	1
 2199              	.LC5:
 2200 0064 57656273 		.ascii	"Webserver class exited.\012\000"
 2200      65727665 
 2200      7220636C 
 2200      61737320 
 2200      65786974 
 2201 007d 000000   		.space	3
 2202              	.LC6:
 2203 0080 3D3D3D20 		.ascii	"=== Webserver ===\012\000"
 2203      57656273 
 2203      65727665 
 2203      72203D3D 
 2203      3D0A00
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 40


 2204 0093 00       		.space	1
 2205              	.LC7:
 2206 0094 48545450 		.ascii	"HTTP sessions: %d of %d\012\000"
 2206      20736573 
 2206      73696F6E 
 2206      733A2025 
 2206      64206F66 
 2207 00ad 000000   		.space	3
 2208              	.LC8:
 2209 00b0 00       		.ascii	"\000"
 2210 00b1 000000   		.space	3
 2211              	.LC9:
 2212 00b4 53657276 		.ascii	"Serving client %d of %d\012\000"
 2212      696E6720 
 2212      636C6965 
 2212      6E742025 
 2212      64206F66 
 2213 00cd 000000   		.space	3
 2214              	.LC10:
 2215 00d0 46696C65 		.ascii	"File not found\000"
 2215      206E6F74 
 2215      20666F75 
 2215      6E6400
 2216 00df 00       		.space	1
 2217              	.LC11:
 2218 00e0 303A2F67 		.ascii	"0:/gcodes/\000"
 2218      636F6465 
 2218      732F00
 2219 00eb 00       		.space	1
 2220              	.LC12:
 2221 00ec 636F6E6E 		.ascii	"connect\000"
 2221      65637400 
 2222              	.LC13:
 2223 00f4 70617373 		.ascii	"password\000"
 2223      776F7264 
 2223      00
 2224 00fd 000000   		.space	3
 2225              	.LC14:
 2226 0100 7B226572 		.ascii	"{\"err\":0,\"sessionTimeout\":%u,\"boardType\":\"%s"
 2226      72223A30 
 2226      2C227365 
 2226      7373696F 
 2226      6E54696D 
 2227 012c 227D00   		.ascii	"\"}\000"
 2228 012f 00       		.space	1
 2229              	.LC15:
 2230 0130 7B226572 		.ascii	"{\"err\":2}\000"
 2230      72223A32 
 2230      7D00
 2231 013a 0000     		.space	2
 2232              	.LC16:
 2233 013c 4E6F7420 		.ascii	"Not authorized\000"
 2233      61757468 
 2233      6F72697A 
 2233      656400
 2234 014b 00       		.space	1
 2235              	.LC17:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 41


 2236 014c 7265706C 		.ascii	"reply\000"
 2236      7900
 2237 0152 0000     		.space	2
 2238              	.LC18:
 2239 0154 636F6E66 		.ascii	"configfile\000"
 2239      69676669 
 2239      6C6500
 2240 015f 00       		.space	1
 2241              	.LC19:
 2242 0160 303A2F73 		.ascii	"0:/sys/\000"
 2242      79732F00 
 2243              	.LC20:
 2244 0168 636F6E66 		.ascii	"config.g\000"
 2244      69672E67 
 2244      00
 2245 0171 000000   		.space	3
 2246              	.LC21:
 2247 0174 646F776E 		.ascii	"download\000"
 2247      6C6F6164 
 2247      00
 2248 017d 000000   		.space	3
 2249              	.LC22:
 2250 0180 6E616D65 		.ascii	"name\000"
 2250      00
 2251 0185 000000   		.space	3
 2252              	.LC23:
 2253 0188 6C656E67 		.ascii	"length\000"
 2253      746800
 2254 018f 00       		.space	1
 2255              	.LC24:
 2256 0190 74696D65 		.ascii	"time\000"
 2256      00
 2257 0195 000000   		.space	3
 2258              	.LC25:
 2259 0198 25592D25 		.ascii	"%Y-%m-%dT%H:%M:%S\000"
 2259      6D2D2564 
 2259      5425483A 
 2259      254D3A25 
 2259      5300
 2260 01aa 0000     		.space	2
 2261              	.LC26:
 2262 01ac 6D6F7665 		.ascii	"move\000"
 2262      00
 2263 01b1 000000   		.space	3
 2264              	.LC27:
 2265 01b4 6F6C6400 		.ascii	"old\000"
 2266              	.LC28:
 2267 01b8 6E657700 		.ascii	"new\000"
 2268              	.LC29:
 2269 01bc 6D6B6469 		.ascii	"mkdir\000"
 2269      7200
 2270 01c2 0000     		.space	2
 2271              	.LC30:
 2272 01c4 64697200 		.ascii	"dir\000"
 2273              	.LC31:
 2274 01c8 64656C65 		.ascii	"delete\000"
 2274      746500
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 42


 2275 01cf 00       		.space	1
 2276              	.LC32:
 2277 01d0 303A2F00 		.ascii	"0:/\000"
 2278              	.LC33:
 2279 01d4 73746174 		.ascii	"status\000"
 2279      757300
 2280 01db 00       		.space	1
 2281              	.LC34:
 2282 01dc 74797065 		.ascii	"type\000"
 2282      00
 2283 01e1 000000   		.space	3
 2284              	.LC35:
 2285 01e4 67636F64 		.ascii	"gcode\000"
 2285      6500
 2286 01ea 0000     		.space	2
 2287              	.LC36:
 2288 01ec 7B226275 		.ascii	"{\"buff\":%u}\000"
 2288      6666223A 
 2288      25757D00 
 2289              	.LC37:
 2290 01f8 66696C65 		.ascii	"filelist\000"
 2290      6C697374 
 2290      00
 2291 0201 000000   		.space	3
 2292              	.LC38:
 2293 0204 666C6167 		.ascii	"flagDirs\000"
 2293      44697273 
 2293      00
 2294 020d 000000   		.space	3
 2295              	.LC39:
 2296 0210 66696C65 		.ascii	"fileinfo\000"
 2296      696E666F 
 2296      00
 2297 0219 000000   		.space	3
 2298              	.LC40:
 2299 021c 636F6E66 		.ascii	"config\000"
 2299      696700
 2300 0223 00       		.space	1
 2301              	.LC41:
 2302 0224 4B6E6F63 		.ascii	"KnockOut request: %s not recognised\012\000"
 2302      6B4F7574 
 2302      20726571 
 2302      75657374 
 2302      3A202573 
 2303 0249 000000   		.space	3
 2304              	.LC42:
 2305 024c 556E6B6E 		.ascii	"Unknown rr_ command\000"
 2305      6F776E20 
 2305      72725F20 
 2305      636F6D6D 
 2305      616E6400 
 2306              	.LC43:
 2307 0260 4E6F2062 		.ascii	"No buffer available\000"
 2307      75666665 
 2307      72206176 
 2307      61696C61 
 2307      626C6500 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 43


 2308              	.LC44:
 2309 0274 64697363 		.ascii	"disconnect\000"
 2309      6F6E6E65 
 2309      637400
 2310 027f 00       		.space	1
 2311              	.LC45:
 2312 0280 75706C6F 		.ascii	"upload\000"
 2312      616400
 2313 0287 00       		.space	1
 2314              	.LC46:
 2315 0288 66696C65 		.ascii	"files\000"
 2315      7300
 2316 028e 0000     		.space	2
 2317              	.LC47:
 2318 0290 62616420 		.ascii	"bad qualifier key\000"
 2318      7175616C 
 2318      69666965 
 2318      72206B65 
 2318      7900
 2319 02a2 0000     		.space	2
 2320              	.LC48:
 2321 02a4 746F6F20 		.ascii	"too many keys in qualifier\000"
 2321      6D616E79 
 2321      206B6579 
 2321      7320696E 
 2321      20717561 
 2322 02bf 00       		.space	1
 2323              	.LC49:
 2324 02c0 496E636F 		.ascii	"Incomplete command\000"
 2324      6D706C65 
 2324      74652063 
 2324      6F6D6D61 
 2324      6E6400
 2325 02d3 00       		.space	1
 2326              	.LC50:
 2327 02d4 52657175 		.ascii	"Request: %s fragment %u\012\000"
 2327      6573743A 
 2327      20257320 
 2327      66726167 
 2327      6D656E74 
 2328 02ed 000000   		.space	3
 2329              	.LC51:
 2330 02f0 546F6F20 		.ascii	"Too many sessions\000"
 2330      6D616E79 
 2330      20736573 
 2330      73696F6E 
 2330      7300
 2331 0302 0000     		.space	2
 2332              	.LC52:
 2333 0304 73657373 		.ascii	"session not found, fragment=%u\012\000"
 2333      696F6E20 
 2333      6E6F7420 
 2333      666F756E 
 2333      642C2066 
 2334              	.LC53:
 2335 0324 62616420 		.ascii	"bad escape\000"
 2335      65736361 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cco8MilL.s 			page 44


 2335      706500
 2336 032f 00       		.space	1
 2337              	.LC54:
 2338 0330 6F766572 		.ascii	"overflow\000"
 2338      666C6F77 
 2338      00
 2339 0339 000000   		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 2340              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 2341              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 2342              	_ZL28cpu_irq_prev_interrupt_state:
 2343 0000 00       		.space	1
 2344              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 2345              		.align	2
 2346              		.type	_ZL32cpu_irq_critical_section_counter, %object
 2347              		.size	_ZL32cpu_irq_critical_section_counter, 4
 2348              	_ZL32cpu_irq_critical_section_counter:
 2349 0000 00000000 		.space	4
 2350              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
