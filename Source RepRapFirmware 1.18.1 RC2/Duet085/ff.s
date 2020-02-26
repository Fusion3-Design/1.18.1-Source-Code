ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 1


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
  14              		.file	"ff.c"
  15              		.section	.text.get_fileinfo,"ax",%progbits
  16              		.align	2
  17              		.thumb
  18              		.thumb_func
  19              		.type	get_fileinfo, %function
  20              	get_fileinfo:
  21              		@ args = 0, pretend = 0, frame = 0
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  24 0002 0369     		ldr	r3, [r0, #16]
  25 0004 0E46     		mov	r6, r1
  26 0006 01F10905 		add	r5, r1, #9
  27 000a 002B     		cmp	r3, #0
  28 000c 4DD0     		beq	.L2
  29 000e 4469     		ldr	r4, [r0, #20]
  30 0010 0022     		movs	r2, #0
  31 0012 94F80CC0 		ldrb	ip, [r4, #12]	@ zero_extendqisi2
  32 0016 0CF00807 		and	r7, ip, #8
  33 001a FFB2     		uxtb	r7, r7
  34              	.L6:
  35 001c A35C     		ldrb	r3, [r4, r2]	@ zero_extendqisi2
  36 001e 0132     		adds	r2, r2, #1
  37 0020 202B     		cmp	r3, #32
  38 0022 0DD0     		beq	.L3
  39 0024 052B     		cmp	r3, #5
  40 0026 08BF     		it	eq
  41 0028 E523     		moveq	r3, #229
  42 002a A3F14101 		sub	r1, r3, #65
  43 002e 1FB1     		cbz	r7, .L5
  44 0030 1929     		cmp	r1, #25
  45 0032 9CBF     		itt	ls
  46 0034 2033     		addls	r3, r3, #32
  47 0036 DBB2     		uxtbls	r3, r3
  48              	.L5:
  49 0038 082A     		cmp	r2, #8
  50 003a 05F8013B 		strb	r3, [r5], #1
  51 003e EDD1     		bne	.L6
  52              	.L3:
  53 0040 237A     		ldrb	r3, [r4, #8]	@ zero_extendqisi2
  54 0042 202B     		cmp	r3, #32
  55 0044 1AD0     		beq	.L7
  56 0046 2946     		mov	r1, r5
  57 0048 0CF0100C 		and	ip, ip, #16
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 2


  58 004c 2E23     		movs	r3, #46
  59 004e 5FFA8CFC 		uxtb	ip, ip
  60 0052 01F8043B 		strb	r3, [r1], #4
  61 0056 0135     		adds	r5, r5, #1
  62 0058 E21D     		adds	r2, r4, #7
  63              	.L9:
  64 005a 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
  65 005e 202B     		cmp	r3, #32
  66 0060 A3F14107 		sub	r7, r3, #65
  67 0064 0AD0     		beq	.L7
  68 0066 BCF1000F 		cmp	ip, #0
  69 006a 03D0     		beq	.L8
  70 006c 192F     		cmp	r7, #25
  71 006e 9CBF     		itt	ls
  72 0070 2033     		addls	r3, r3, #32
  73 0072 DBB2     		uxtbls	r3, r3
  74              	.L8:
  75 0074 05F8013B 		strb	r3, [r5], #1
  76 0078 8D42     		cmp	r5, r1
  77 007a EED1     		bne	.L9
  78              	.L7:
  79 007c E37A     		ldrb	r3, [r4, #11]	@ zero_extendqisi2
  80 007e 3372     		strb	r3, [r6, #8]
  81 0080 A37F     		ldrb	r3, [r4, #30]	@ zero_extendqisi2
  82 0082 E27F     		ldrb	r2, [r4, #31]	@ zero_extendqisi2
  83 0084 217F     		ldrb	r1, [r4, #28]	@ zero_extendqisi2
  84 0086 1B04     		lsls	r3, r3, #16
  85 0088 43EA0263 		orr	r3, r3, r2, lsl #24
  86 008c 627F     		ldrb	r2, [r4, #29]	@ zero_extendqisi2
  87 008e 0B43     		orrs	r3, r3, r1
  88 0090 43EA0223 		orr	r3, r3, r2, lsl #8
  89 0094 3360     		str	r3, [r6]
  90 0096 627E     		ldrb	r2, [r4, #25]	@ zero_extendqisi2
  91 0098 237E     		ldrb	r3, [r4, #24]	@ zero_extendqisi2
  92 009a 43EA0223 		orr	r3, r3, r2, lsl #8
  93 009e B380     		strh	r3, [r6, #4]	@ movhi
  94 00a0 E27D     		ldrb	r2, [r4, #23]	@ zero_extendqisi2
  95 00a2 A37D     		ldrb	r3, [r4, #22]	@ zero_extendqisi2
  96 00a4 43EA0223 		orr	r3, r3, r2, lsl #8
  97 00a8 F380     		strh	r3, [r6, #6]	@ movhi
  98              	.L2:
  99 00aa 0024     		movs	r4, #0
 100 00ac 2C70     		strb	r4, [r5]
 101 00ae B569     		ldr	r5, [r6, #24]
 102 00b0 35B1     		cbz	r5, .L1
 103 00b2 F369     		ldr	r3, [r6, #28]
 104 00b4 23B1     		cbz	r3, .L1
 105 00b6 0369     		ldr	r3, [r0, #16]
 106 00b8 1BB9     		cbnz	r3, .L11
 107              	.L13:
 108 00ba 0024     		movs	r4, #0
 109              	.L12:
 110 00bc 0023     		movs	r3, #0
 111 00be 2B55     		strb	r3, [r5, r4]
 112              	.L1:
 113 00c0 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 114              	.L11:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 3


 115 00c2 028C     		ldrh	r2, [r0, #32]
 116 00c4 4FF6FF73 		movw	r3, #65535
 117 00c8 9A42     		cmp	r2, r3
 118 00ca F6D0     		beq	.L13
 119 00cc C769     		ldr	r7, [r0, #28]
 120 00ce 3888     		ldrh	r0, [r7]
 121 00d0 60B9     		cbnz	r0, .L14
 122 00d2 F2E7     		b	.L13
 123              	.L54:
 124 00d4 F369     		ldr	r3, [r6, #28]
 125 00d6 013B     		subs	r3, r3, #1
 126 00d8 9C42     		cmp	r4, r3
 127 00da EED2     		bcs	.L13
 128 00dc 0134     		adds	r4, r4, #1
 129 00de 2B19     		adds	r3, r5, r4
 130 00e0 03F8010C 		strb	r0, [r3, #-1]
 131 00e4 37F81400 		ldrh	r0, [r7, r4, lsl #1]
 132 00e8 0028     		cmp	r0, #0
 133 00ea E7D0     		beq	.L12
 134              	.L14:
 135 00ec 0021     		movs	r1, #0
 136 00ee FFF7FEFF 		bl	ff_convert
 137 00f2 0028     		cmp	r0, #0
 138 00f4 EED1     		bne	.L54
 139 00f6 E0E7     		b	.L13
 140              		.size	get_fileinfo, .-get_fileinfo
 141              		.section	.text.move_window,"ax",%progbits
 142              		.align	2
 143              		.thumb
 144              		.thumb_func
 145              		.type	move_window, %function
 146              	move_window:
 147              		@ args = 0, pretend = 0, frame = 0
 148              		@ frame_needed = 0, uses_anonymous_args = 0
 149 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 150 0004 C56A     		ldr	r5, [r0, #44]
 151 0006 0446     		mov	r4, r0
 152 0008 8D42     		cmp	r5, r1
 153 000a 0E46     		mov	r6, r1
 154 000c 02D0     		beq	.L60
 155 000e 0379     		ldrb	r3, [r0, #4]	@ zero_extendqisi2
 156 0010 73B9     		cbnz	r3, .L58
 157              	.L62:
 158 0012 16B9     		cbnz	r6, .L69
 159              	.L60:
 160 0014 0020     		movs	r0, #0
 161 0016 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 162              	.L69:
 163 001a 6078     		ldrb	r0, [r4, #1]	@ zero_extendqisi2
 164 001c 04F13001 		add	r1, r4, #48
 165 0020 3246     		mov	r2, r6
 166 0022 0123     		movs	r3, #1
 167 0024 FFF7FEFF 		bl	disk_read
 168 0028 20BB     		cbnz	r0, .L64
 169 002a E662     		str	r6, [r4, #44]
 170 002c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 171              	.L58:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 4


 172 0030 00F13008 		add	r8, r0, #48
 173 0034 4146     		mov	r1, r8
 174 0036 4078     		ldrb	r0, [r0, #1]	@ zero_extendqisi2
 175 0038 2A46     		mov	r2, r5
 176 003a 0123     		movs	r3, #1
 177 003c FFF7FEFF 		bl	disk_write
 178 0040 C0B9     		cbnz	r0, .L64
 179 0042 E369     		ldr	r3, [r4, #28]
 180 0044 226A     		ldr	r2, [r4, #32]
 181 0046 2071     		strb	r0, [r4, #4]
 182 0048 1A44     		add	r2, r2, r3
 183 004a 9542     		cmp	r5, r2
 184 004c E1D2     		bcs	.L62
 185 004e E778     		ldrb	r7, [r4, #3]	@ zero_extendqisi2
 186 0050 012F     		cmp	r7, #1
 187 0052 01D8     		bhi	.L63
 188 0054 DDE7     		b	.L62
 189              	.L70:
 190 0056 E369     		ldr	r3, [r4, #28]
 191              	.L63:
 192 0058 1D44     		add	r5, r5, r3
 193 005a 013F     		subs	r7, r7, #1
 194 005c 2A46     		mov	r2, r5
 195 005e 6078     		ldrb	r0, [r4, #1]	@ zero_extendqisi2
 196 0060 4146     		mov	r1, r8
 197 0062 0123     		movs	r3, #1
 198 0064 FFB2     		uxtb	r7, r7
 199 0066 FFF7FEFF 		bl	disk_write
 200 006a 012F     		cmp	r7, #1
 201 006c F3D1     		bne	.L70
 202 006e 002E     		cmp	r6, #0
 203 0070 D0D0     		beq	.L60
 204 0072 D2E7     		b	.L69
 205              	.L64:
 206 0074 0120     		movs	r0, #1
 207 0076 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 208              		.size	move_window, .-move_window
 209 007a 00BF     		.section	.text.sync,"ax",%progbits
 210              		.align	2
 211              		.thumb
 212              		.thumb_func
 213              		.type	sync, %function
 214              	sync:
 215              		@ args = 0, pretend = 0, frame = 0
 216              		@ frame_needed = 0, uses_anonymous_args = 0
 217 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 218 0004 0021     		movs	r1, #0
 219 0006 0446     		mov	r4, r0
 220 0008 FFF7FEFF 		bl	move_window
 221 000c 0546     		mov	r5, r0
 222 000e 55B9     		cbnz	r5, .L72
 223 0010 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 224 0012 032B     		cmp	r3, #3
 225 0014 09D0     		beq	.L77
 226              	.L73:
 227 0016 0021     		movs	r1, #0
 228 0018 6078     		ldrb	r0, [r4, #1]	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 5


 229 001a 0A46     		mov	r2, r1
 230 001c FFF7FEFF 		bl	disk_ioctl
 231 0020 0030     		adds	r0, r0, #0
 232 0022 18BF     		it	ne
 233 0024 0120     		movne	r0, #1
 234              	.L72:
 235 0026 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 236              	.L77:
 237 002a 6379     		ldrb	r3, [r4, #5]	@ zero_extendqisi2
 238 002c 002B     		cmp	r3, #0
 239 002e F2D0     		beq	.L73
 240 0030 04F13006 		add	r6, r4, #48
 241 0034 3046     		mov	r0, r6
 242 0036 2946     		mov	r1, r5
 243 0038 4FF40072 		mov	r2, #512
 244 003c E562     		str	r5, [r4, #44]
 245 003e FFF7FEFF 		bl	memset
 246 0042 2269     		ldr	r2, [r4, #16]
 247 0044 E368     		ldr	r3, [r4, #12]
 248 0046 4FEA124A 		lsr	r10, r2, #16
 249 004a 4FEA134C 		lsr	ip, r3, #16
 250 004e 4FEA136E 		lsr	lr, r3, #24
 251 0052 5220     		movs	r0, #82
 252 0054 C2F3072B 		ubfx	fp, r2, #8, #8
 253 0058 4FEA1269 		lsr	r9, r2, #24
 254 005c C3F30728 		ubfx	r8, r3, #8, #8
 255 0060 3146     		mov	r1, r6
 256 0062 84F81822 		strb	r2, [r4, #536]
 257 0066 4126     		movs	r6, #65
 258 0068 6122     		movs	r2, #97
 259 006a 84F81AA2 		strb	r10, [r4, #538]
 260 006e 84F81C32 		strb	r3, [r4, #540]
 261 0072 4FF0720A 		mov	r10, #114
 262 0076 6FF05503 		mvn	r3, #85
 263 007a 5527     		movs	r7, #85
 264 007c 84F82F32 		strb	r3, [r4, #559]
 265 0080 84F83000 		strb	r0, [r4, #48]
 266 0084 84F83100 		strb	r0, [r4, #49]
 267 0088 84F83220 		strb	r2, [r4, #50]
 268 008c 84F81722 		strb	r2, [r4, #535]
 269 0090 84F819B2 		strb	fp, [r4, #537]
 270 0094 84F81B92 		strb	r9, [r4, #539]
 271 0098 84F81D82 		strb	r8, [r4, #541]
 272 009c 84F81EC2 		strb	ip, [r4, #542]
 273 00a0 84F81FE2 		strb	lr, [r4, #543]
 274 00a4 84F82E72 		strb	r7, [r4, #558]
 275 00a8 84F83360 		strb	r6, [r4, #51]
 276 00ac 84F81662 		strb	r6, [r4, #534]
 277 00b0 84F814A2 		strb	r10, [r4, #532]
 278 00b4 84F815A2 		strb	r10, [r4, #533]
 279 00b8 6078     		ldrb	r0, [r4, #1]	@ zero_extendqisi2
 280 00ba 6269     		ldr	r2, [r4, #20]
 281 00bc 0123     		movs	r3, #1
 282 00be FFF7FEFF 		bl	disk_write
 283 00c2 6571     		strb	r5, [r4, #5]
 284 00c4 A7E7     		b	.L73
 285              		.size	sync, .-sync
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 6


 286 00c6 00BF     		.section	.text.validate,"ax",%progbits
 287              		.align	2
 288              		.thumb
 289              		.thumb_func
 290              		.type	validate, %function
 291              	validate:
 292              		@ args = 0, pretend = 0, frame = 0
 293              		@ frame_needed = 0, uses_anonymous_args = 0
 294 0000 08B5     		push	{r3, lr}
 295 0002 08B1     		cbz	r0, .L83
 296 0004 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 297 0006 0BB9     		cbnz	r3, .L85
 298              	.L83:
 299 0008 0920     		movs	r0, #9
 300 000a 08BD     		pop	{r3, pc}
 301              	.L85:
 302 000c C388     		ldrh	r3, [r0, #6]
 303 000e 8B42     		cmp	r3, r1
 304 0010 FAD1     		bne	.L83
 305 0012 4078     		ldrb	r0, [r0, #1]	@ zero_extendqisi2
 306 0014 FFF7FEFF 		bl	disk_status
 307 0018 10F0010F 		tst	r0, #1
 308 001c 0CBF     		ite	eq
 309 001e 0020     		moveq	r0, #0
 310 0020 0320     		movne	r0, #3
 311 0022 08BD     		pop	{r3, pc}
 312              		.size	validate, .-validate
 313              		.section	.text.check_fs,"ax",%progbits
 314              		.align	2
 315              		.thumb
 316              		.thumb_func
 317              		.type	check_fs, %function
 318              	check_fs:
 319              		@ args = 0, pretend = 0, frame = 0
 320              		@ frame_needed = 0, uses_anonymous_args = 0
 321 0000 10B5     		push	{r4, lr}
 322 0002 0446     		mov	r4, r0
 323 0004 0A46     		mov	r2, r1
 324 0006 4078     		ldrb	r0, [r0, #1]	@ zero_extendqisi2
 325 0008 04F13001 		add	r1, r4, #48
 326 000c 0123     		movs	r3, #1
 327 000e FFF7FEFF 		bl	disk_read
 328 0012 08B1     		cbz	r0, .L91
 329 0014 0320     		movs	r0, #3
 330 0016 10BD     		pop	{r4, pc}
 331              	.L91:
 332 0018 94F82F12 		ldrb	r1, [r4, #559]	@ zero_extendqisi2
 333 001c 94F82E22 		ldrb	r2, [r4, #558]	@ zero_extendqisi2
 334 0020 174B     		ldr	r3, .L93
 335 0022 42EA0122 		orr	r2, r2, r1, lsl #8
 336 0026 12B2     		sxth	r2, r2
 337 0028 9A42     		cmp	r2, r3
 338 002a 01D0     		beq	.L92
 339 002c 0220     		movs	r0, #2
 340              	.L87:
 341 002e 10BD     		pop	{r4, pc}
 342              	.L92:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 7


 343 0030 94F86830 		ldrb	r3, [r4, #104]	@ zero_extendqisi2
 344 0034 94F86920 		ldrb	r2, [r4, #105]	@ zero_extendqisi2
 345 0038 1B04     		lsls	r3, r3, #16
 346 003a 94F86610 		ldrb	r1, [r4, #102]	@ zero_extendqisi2
 347 003e 43EA0263 		orr	r3, r3, r2, lsl #24
 348 0042 94F86720 		ldrb	r2, [r4, #103]	@ zero_extendqisi2
 349 0046 0B43     		orrs	r3, r3, r1
 350 0048 43EA0222 		orr	r2, r3, r2, lsl #8
 351 004c 0D4B     		ldr	r3, .L93+4
 352 004e 22F07F42 		bic	r2, r2, #-16777216
 353 0052 9A42     		cmp	r2, r3
 354 0054 EBD0     		beq	.L87
 355 0056 94F88420 		ldrb	r2, [r4, #132]	@ zero_extendqisi2
 356 005a 94F88500 		ldrb	r0, [r4, #133]	@ zero_extendqisi2
 357 005e 94F88210 		ldrb	r1, [r4, #130]	@ zero_extendqisi2
 358 0062 1204     		lsls	r2, r2, #16
 359 0064 42EA0062 		orr	r2, r2, r0, lsl #24
 360 0068 94F88300 		ldrb	r0, [r4, #131]	@ zero_extendqisi2
 361 006c 0A43     		orrs	r2, r2, r1
 362 006e 42EA0020 		orr	r0, r2, r0, lsl #8
 363 0072 20F07F40 		bic	r0, r0, #-16777216
 364 0076 C01A     		subs	r0, r0, r3
 365 0078 18BF     		it	ne
 366 007a 0120     		movne	r0, #1
 367 007c 10BD     		pop	{r4, pc}
 368              	.L94:
 369 007e 00BF     		.align	2
 370              	.L93:
 371 0080 55AAFFFF 		.word	-21931
 372 0084 46415400 		.word	5521734
 373              		.size	check_fs, .-check_fs
 374              		.section	.text.chk_mounted,"ax",%progbits
 375              		.align	2
 376              		.thumb
 377              		.thumb_func
 378              		.type	chk_mounted, %function
 379              	chk_mounted:
 380              		@ args = 0, pretend = 0, frame = 8
 381              		@ frame_needed = 0, uses_anonymous_args = 0
 382 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 383 0002 0368     		ldr	r3, [r0]
 384 0004 83B0     		sub	sp, sp, #12
 385 0006 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 386 0008 303C     		subs	r4, r4, #48
 387 000a 092C     		cmp	r4, #9
 388 000c 02D8     		bhi	.L115
 389 000e 5D78     		ldrb	r5, [r3, #1]	@ zero_extendqisi2
 390 0010 3A2D     		cmp	r5, #58
 391 0012 16D0     		beq	.L146
 392              	.L115:
 393 0014 0024     		movs	r4, #0
 394              	.L96:
 395 0016 B54B     		ldr	r3, .L152
 396 0018 53F82450 		ldr	r5, [r3, r4, lsl #2]
 397 001c 0D60     		str	r5, [r1]
 398 001e 2DB3     		cbz	r5, .L117
 399 0020 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 8


 400 0022 B3B1     		cbz	r3, .L98
 401 0024 6878     		ldrb	r0, [r5, #1]	@ zero_extendqisi2
 402 0026 0192     		str	r2, [sp, #4]
 403 0028 FFF7FEFF 		bl	disk_status
 404 002c 10F0010F 		tst	r0, #1
 405 0030 019A     		ldr	r2, [sp, #4]
 406 0032 0ED1     		bne	.L98
 407 0034 72B3     		cbz	r2, .L118
 408 0036 10F0040F 		tst	r0, #4
 409 003a 0CBF     		ite	eq
 410 003c 0020     		moveq	r0, #0
 411 003e 0A20     		movne	r0, #10
 412 0040 05E0     		b	.L143
 413              	.L146:
 414 0042 0233     		adds	r3, r3, #2
 415 0044 012C     		cmp	r4, #1
 416 0046 0360     		str	r3, [r0]
 417 0048 88BF     		it	hi
 418 004a 0B20     		movhi	r0, #11
 419 004c E3D9     		bls	.L96
 420              	.L143:
 421 004e 03B0     		add	sp, sp, #12
 422              		@ sp needed
 423 0050 F0BD     		pop	{r4, r5, r6, r7, pc}
 424              	.L98:
 425 0052 E0B2     		uxtb	r0, r4
 426 0054 0023     		movs	r3, #0
 427 0056 6870     		strb	r0, [r5, #1]
 428 0058 2B70     		strb	r3, [r5]
 429 005a 0192     		str	r2, [sp, #4]
 430 005c FFF7FEFF 		bl	disk_initialize
 431 0060 10F0010F 		tst	r0, #1
 432 0064 019A     		ldr	r2, [sp, #4]
 433 0066 03D0     		beq	.L147
 434 0068 0320     		movs	r0, #3
 435 006a F0E7     		b	.L143
 436              	.L117:
 437 006c 0C20     		movs	r0, #12
 438 006e EEE7     		b	.L143
 439              	.L147:
 440 0070 1AB1     		cbz	r2, .L99
 441 0072 4707     		lsls	r7, r0, #29
 442 0074 01D5     		bpl	.L99
 443 0076 0A20     		movs	r0, #10
 444 0078 E9E7     		b	.L143
 445              	.L99:
 446 007a 2846     		mov	r0, r5
 447 007c 0021     		movs	r1, #0
 448 007e FFF7FEFF 		bl	check_fs
 449 0082 0128     		cmp	r0, #1
 450 0084 08D0     		beq	.L148
 451 0086 0024     		movs	r4, #0
 452              	.L100:
 453 0088 0328     		cmp	r0, #3
 454 008a 00F0B280 		beq	.L123
 455 008e D0B1     		cbz	r0, .L149
 456              	.L102:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 9


 457 0090 0D20     		movs	r0, #13
 458 0092 DCE7     		b	.L143
 459              	.L118:
 460 0094 1046     		mov	r0, r2
 461 0096 DAE7     		b	.L143
 462              	.L148:
 463 0098 95F8F231 		ldrb	r3, [r5, #498]	@ zero_extendqisi2
 464 009c 002B     		cmp	r3, #0
 465 009e F7D0     		beq	.L102
 466 00a0 95F8F821 		ldrb	r2, [r5, #504]	@ zero_extendqisi2
 467 00a4 95F8F911 		ldrb	r1, [r5, #505]	@ zero_extendqisi2
 468 00a8 95F8F631 		ldrb	r3, [r5, #502]	@ zero_extendqisi2
 469 00ac 1204     		lsls	r2, r2, #16
 470 00ae 42EA0162 		orr	r2, r2, r1, lsl #24
 471 00b2 95F8F741 		ldrb	r4, [r5, #503]	@ zero_extendqisi2
 472 00b6 1343     		orrs	r3, r3, r2
 473 00b8 43EA0424 		orr	r4, r3, r4, lsl #8
 474 00bc 2146     		mov	r1, r4
 475 00be 2846     		mov	r0, r5
 476 00c0 FFF7FEFF 		bl	check_fs
 477 00c4 E0E7     		b	.L100
 478              	.L149:
 479 00c6 95F83C20 		ldrb	r2, [r5, #60]	@ zero_extendqisi2
 480 00ca 95F83B30 		ldrb	r3, [r5, #59]	@ zero_extendqisi2
 481 00ce 43EA0223 		orr	r3, r3, r2, lsl #8
 482 00d2 B3F5007F 		cmp	r3, #512
 483 00d6 DBD1     		bne	.L102
 484 00d8 95F84710 		ldrb	r1, [r5, #71]	@ zero_extendqisi2
 485 00dc 95F84630 		ldrb	r3, [r5, #70]	@ zero_extendqisi2
 486 00e0 53EA0121 		orrs	r1, r3, r1, lsl #8
 487 00e4 0DD1     		bne	.L103
 488 00e6 95F85620 		ldrb	r2, [r5, #86]	@ zero_extendqisi2
 489 00ea 95F85710 		ldrb	r1, [r5, #87]	@ zero_extendqisi2
 490 00ee 1204     		lsls	r2, r2, #16
 491 00f0 95F85430 		ldrb	r3, [r5, #84]	@ zero_extendqisi2
 492 00f4 42EA0162 		orr	r2, r2, r1, lsl #24
 493 00f8 95F85510 		ldrb	r1, [r5, #85]	@ zero_extendqisi2
 494 00fc 1343     		orrs	r3, r3, r2
 495 00fe 43EA0121 		orr	r1, r3, r1, lsl #8
 496              	.L103:
 497 0102 95F84000 		ldrb	r0, [r5, #64]	@ zero_extendqisi2
 498 0106 E961     		str	r1, [r5, #28]
 499 0108 431E     		subs	r3, r0, #1
 500 010a 012B     		cmp	r3, #1
 501 010c E870     		strb	r0, [r5, #3]
 502 010e BFD8     		bhi	.L102
 503 0110 95F83D30 		ldrb	r3, [r5, #61]	@ zero_extendqisi2
 504 0114 AB70     		strb	r3, [r5, #2]
 505 0116 002B     		cmp	r3, #0
 506 0118 BAD0     		beq	.L102
 507 011a 5A1E     		subs	r2, r3, #1
 508 011c 1A42     		tst	r2, r3
 509 011e B7D1     		bne	.L102
 510 0120 95F84260 		ldrb	r6, [r5, #66]	@ zero_extendqisi2
 511 0124 95F84120 		ldrb	r2, [r5, #65]	@ zero_extendqisi2
 512 0128 42EA0622 		orr	r2, r2, r6, lsl #8
 513 012c 1607     		lsls	r6, r2, #28
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 10


 514 012e 2A81     		strh	r2, [r5, #8]	@ movhi
 515 0130 AED1     		bne	.L102
 516 0132 95F84470 		ldrb	r7, [r5, #68]	@ zero_extendqisi2
 517 0136 95F84360 		ldrb	r6, [r5, #67]	@ zero_extendqisi2
 518 013a 56EA0726 		orrs	r6, r6, r7, lsl #8
 519 013e 0ED1     		bne	.L104
 520 0140 95F85270 		ldrb	r7, [r5, #82]	@ zero_extendqisi2
 521 0144 95F853C0 		ldrb	ip, [r5, #83]	@ zero_extendqisi2
 522 0148 3F04     		lsls	r7, r7, #16
 523 014a 95F85060 		ldrb	r6, [r5, #80]	@ zero_extendqisi2
 524 014e 47EA0C6C 		orr	ip, r7, ip, lsl #24
 525 0152 95F85170 		ldrb	r7, [r5, #81]	@ zero_extendqisi2
 526 0156 4CEA0606 		orr	r6, ip, r6
 527 015a 46EA0726 		orr	r6, r6, r7, lsl #8
 528              	.L104:
 529 015e 95F83FC0 		ldrb	ip, [r5, #63]	@ zero_extendqisi2
 530 0162 95F83E70 		ldrb	r7, [r5, #62]	@ zero_extendqisi2
 531 0166 57EA0C27 		orrs	r7, r7, ip, lsl #8
 532 016a 91D0     		beq	.L102
 533 016c 00FB01FC 		mul	ip, r0, r1
 534 0170 07EB1210 		add	r0, r7, r2, lsr #4
 535 0174 6044     		add	r0, r0, ip
 536 0176 8642     		cmp	r6, r0
 537 0178 8AD3     		bcc	.L102
 538 017a 361A     		subs	r6, r6, r0
 539 017c B6FBF3F3 		udiv	r3, r6, r3
 540 0180 002B     		cmp	r3, #0
 541 0182 85D0     		beq	.L102
 542 0184 40F6F576 		movw	r6, #4085
 543 0188 B342     		cmp	r3, r6
 544 018a 40F2AD80 		bls	.L124
 545 018e 4FF6F576 		movw	r6, #65525
 546 0192 B342     		cmp	r3, r6
 547 0194 00F28D80 		bhi	.L106
 548 0198 0226     		movs	r6, #2
 549              	.L105:
 550 019a 0233     		adds	r3, r3, #2
 551 019c 2044     		add	r0, r0, r4
 552 019e 2744     		add	r7, r7, r4
 553 01a0 AB61     		str	r3, [r5, #24]
 554 01a2 A862     		str	r0, [r5, #40]
 555 01a4 2F62     		str	r7, [r5, #32]
 556 01a6 002A     		cmp	r2, #0
 557 01a8 3FF472AF 		beq	.L102
 558 01ac 6744     		add	r7, r7, ip
 559 01ae 022E     		cmp	r6, #2
 560 01b0 6F62     		str	r7, [r5, #36]
 561 01b2 7CD0     		beq	.L150
 562 01b4 03EB4302 		add	r2, r3, r3, lsl #1
 563 01b8 03F00103 		and	r3, r3, #1
 564 01bc 03EB5203 		add	r3, r3, r2, lsr #1
 565 01c0 0126     		movs	r6, #1
 566              	.L107:
 567 01c2 03F2FF13 		addw	r3, r3, #511
 568 01c6 B1EB532F 		cmp	r1, r3, lsr #9
 569 01ca FFF461AF 		bcc	.L102
 570 01ce 4FF0FF32 		mov	r2, #-1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 11


 571 01d2 0023     		movs	r3, #0
 572 01d4 032E     		cmp	r6, #3
 573 01d6 2A61     		str	r2, [r5, #16]
 574 01d8 EB60     		str	r3, [r5, #12]
 575 01da 0CD0     		beq	.L151
 576              	.L110:
 577 01dc 444A     		ldr	r2, .L152+4
 578 01de 0020     		movs	r0, #0
 579 01e0 1388     		ldrh	r3, [r2]
 580 01e2 2E70     		strb	r6, [r5]
 581 01e4 0133     		adds	r3, r3, #1
 582 01e6 9BB2     		uxth	r3, r3
 583 01e8 1380     		strh	r3, [r2]	@ movhi
 584 01ea EB80     		strh	r3, [r5, #6]	@ movhi
 585 01ec E862     		str	r0, [r5, #44]
 586 01ee 2871     		strb	r0, [r5, #4]
 587 01f0 2DE7     		b	.L143
 588              	.L123:
 589 01f2 0120     		movs	r0, #1
 590 01f4 2BE7     		b	.L143
 591              	.L151:
 592 01f6 95F86110 		ldrb	r1, [r5, #97]	@ zero_extendqisi2
 593 01fa 95F86020 		ldrb	r2, [r5, #96]	@ zero_extendqisi2
 594 01fe 6B71     		strb	r3, [r5, #5]
 595 0200 42EA0122 		orr	r2, r2, r1, lsl #8
 596 0204 2244     		add	r2, r2, r4
 597 0206 6A61     		str	r2, [r5, #20]
 598 0208 6878     		ldrb	r0, [r5, #1]	@ zero_extendqisi2
 599 020a 05F13001 		add	r1, r5, #48
 600 020e 0123     		movs	r3, #1
 601 0210 FFF7FEFF 		bl	disk_read
 602 0214 0028     		cmp	r0, #0
 603 0216 E1D1     		bne	.L110
 604 0218 95F82F12 		ldrb	r1, [r5, #559]	@ zero_extendqisi2
 605 021c 95F82E22 		ldrb	r2, [r5, #558]	@ zero_extendqisi2
 606 0220 344B     		ldr	r3, .L152+8
 607 0222 42EA0122 		orr	r2, r2, r1, lsl #8
 608 0226 12B2     		sxth	r2, r2
 609 0228 9A42     		cmp	r2, r3
 610 022a D7D1     		bne	.L110
 611 022c 95F83220 		ldrb	r2, [r5, #50]	@ zero_extendqisi2
 612 0230 95F83310 		ldrb	r1, [r5, #51]	@ zero_extendqisi2
 613 0234 95F83030 		ldrb	r3, [r5, #48]	@ zero_extendqisi2
 614 0238 1204     		lsls	r2, r2, #16
 615 023a 42EA0162 		orr	r2, r2, r1, lsl #24
 616 023e 95F83110 		ldrb	r1, [r5, #49]	@ zero_extendqisi2
 617 0242 1A43     		orrs	r2, r2, r3
 618 0244 2C4B     		ldr	r3, .L152+12
 619 0246 42EA0122 		orr	r2, r2, r1, lsl #8
 620 024a 9A42     		cmp	r2, r3
 621 024c C6D1     		bne	.L110
 622 024e 95F81622 		ldrb	r2, [r5, #534]	@ zero_extendqisi2
 623 0252 95F81712 		ldrb	r1, [r5, #535]	@ zero_extendqisi2
 624 0256 95F81432 		ldrb	r3, [r5, #532]	@ zero_extendqisi2
 625 025a 1204     		lsls	r2, r2, #16
 626 025c 42EA0162 		orr	r2, r2, r1, lsl #24
 627 0260 95F81512 		ldrb	r1, [r5, #533]	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 12


 628 0264 1A43     		orrs	r2, r2, r3
 629 0266 254B     		ldr	r3, .L152+16
 630 0268 42EA0122 		orr	r2, r2, r1, lsl #8
 631 026c 9A42     		cmp	r2, r3
 632 026e B5D1     		bne	.L110
 633 0270 95F81E02 		ldrb	r0, [r5, #542]	@ zero_extendqisi2
 634 0274 95F81A12 		ldrb	r1, [r5, #538]	@ zero_extendqisi2
 635 0278 95F81F72 		ldrb	r7, [r5, #543]	@ zero_extendqisi2
 636 027c 95F81B42 		ldrb	r4, [r5, #539]	@ zero_extendqisi2
 637 0280 0004     		lsls	r0, r0, #16
 638 0282 0904     		lsls	r1, r1, #16
 639 0284 95F81C22 		ldrb	r2, [r5, #540]	@ zero_extendqisi2
 640 0288 95F81832 		ldrb	r3, [r5, #536]	@ zero_extendqisi2
 641 028c 40EA0767 		orr	r7, r0, r7, lsl #24
 642 0290 41EA0464 		orr	r4, r1, r4, lsl #24
 643 0294 95F81D02 		ldrb	r0, [r5, #541]	@ zero_extendqisi2
 644 0298 95F81912 		ldrb	r1, [r5, #537]	@ zero_extendqisi2
 645 029c 3A43     		orrs	r2, r2, r7
 646 029e 2343     		orrs	r3, r3, r4
 647 02a0 42EA0022 		orr	r2, r2, r0, lsl #8
 648 02a4 43EA0123 		orr	r3, r3, r1, lsl #8
 649 02a8 EA60     		str	r2, [r5, #12]
 650 02aa 2B61     		str	r3, [r5, #16]
 651 02ac 96E7     		b	.L110
 652              	.L150:
 653 02ae 5B00     		lsls	r3, r3, #1
 654 02b0 87E7     		b	.L107
 655              	.L106:
 656 02b2 0233     		adds	r3, r3, #2
 657 02b4 2044     		add	r0, r0, r4
 658 02b6 2744     		add	r7, r7, r4
 659 02b8 AB61     		str	r3, [r5, #24]
 660 02ba A862     		str	r0, [r5, #40]
 661 02bc 2F62     		str	r7, [r5, #32]
 662 02be 002A     		cmp	r2, #0
 663 02c0 7FF4E6AE 		bne	.L102
 664 02c4 95F85E00 		ldrb	r0, [r5, #94]	@ zero_extendqisi2
 665 02c8 95F85F60 		ldrb	r6, [r5, #95]	@ zero_extendqisi2
 666 02cc 0004     		lsls	r0, r0, #16
 667 02ce 95F85C20 		ldrb	r2, [r5, #92]	@ zero_extendqisi2
 668 02d2 40EA0666 		orr	r6, r0, r6, lsl #24
 669 02d6 95F85D00 		ldrb	r0, [r5, #93]	@ zero_extendqisi2
 670 02da 3243     		orrs	r2, r2, r6
 671 02dc 42EA0022 		orr	r2, r2, r0, lsl #8
 672 02e0 9B00     		lsls	r3, r3, #2
 673 02e2 6A62     		str	r2, [r5, #36]
 674 02e4 0326     		movs	r6, #3
 675 02e6 6CE7     		b	.L107
 676              	.L124:
 677 02e8 0126     		movs	r6, #1
 678 02ea 56E7     		b	.L105
 679              	.L153:
 680              		.align	2
 681              	.L152:
 682 02ec 00000000 		.word	.LANCHOR0
 683 02f0 00000000 		.word	.LANCHOR1
 684 02f4 55AAFFFF 		.word	-21931
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 13


 685 02f8 52526141 		.word	1096897106
 686 02fc 72724161 		.word	1631679090
 687              		.size	chk_mounted, .-chk_mounted
 688              		.section	.text.get_fat.part.3,"ax",%progbits
 689              		.align	2
 690              		.thumb
 691              		.thumb_func
 692              		.type	get_fat.part.3, %function
 693              	get_fat.part.3:
 694              		@ args = 0, pretend = 0, frame = 0
 695              		@ frame_needed = 0, uses_anonymous_args = 0
 696 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 697 0002 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 698 0004 0446     		mov	r4, r0
 699 0006 022B     		cmp	r3, #2
 700 0008 0D46     		mov	r5, r1
 701 000a 46D0     		beq	.L156
 702 000c 032B     		cmp	r3, #3
 703 000e 28D0     		beq	.L157
 704 0010 012B     		cmp	r3, #1
 705 0012 02D0     		beq	.L164
 706              	.L163:
 707 0014 4FF0FF30 		mov	r0, #-1
 708 0018 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 709              	.L164:
 710 001a 016A     		ldr	r1, [r0, #32]
 711 001c 05EB5506 		add	r6, r5, r5, lsr #1
 712 0020 01EB5621 		add	r1, r1, r6, lsr #9
 713 0024 FFF7FEFF 		bl	move_window
 714 0028 0028     		cmp	r0, #0
 715 002a F3D1     		bne	.L163
 716 002c 216A     		ldr	r1, [r4, #32]
 717 002e C6F30803 		ubfx	r3, r6, #0, #9
 718 0032 0136     		adds	r6, r6, #1
 719 0034 2344     		add	r3, r3, r4
 720 0036 01EB5621 		add	r1, r1, r6, lsr #9
 721 003a 2046     		mov	r0, r4
 722 003c 93F83070 		ldrb	r7, [r3, #48]	@ zero_extendqisi2
 723 0040 FFF7FEFF 		bl	move_window
 724 0044 0028     		cmp	r0, #0
 725 0046 E5D1     		bne	.L163
 726 0048 C6F30806 		ubfx	r6, r6, #0, #9
 727 004c 3444     		add	r4, r4, r6
 728 004e 94F83030 		ldrb	r3, [r4, #48]	@ zero_extendqisi2
 729 0052 47EA0320 		orr	r0, r7, r3, lsl #8
 730 0056 EB07     		lsls	r3, r5, #31
 731 0058 4CBF     		ite	mi
 732 005a 0009     		lsrmi	r0, r0, #4
 733 005c C0F30B00 		ubfxpl	r0, r0, #0, #12
 734 0060 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 735              	.L157:
 736 0062 016A     		ldr	r1, [r0, #32]
 737 0064 01EBD511 		add	r1, r1, r5, lsr #7
 738 0068 FFF7FEFF 		bl	move_window
 739 006c 0028     		cmp	r0, #0
 740 006e D1D1     		bne	.L163
 741 0070 AD00     		lsls	r5, r5, #2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 14


 742 0072 05F4FE75 		and	r5, r5, #508
 743 0076 05F13003 		add	r3, r5, #48
 744 007a 2344     		add	r3, r3, r4
 745 007c D878     		ldrb	r0, [r3, #3]	@ zero_extendqisi2
 746 007e 9978     		ldrb	r1, [r3, #2]	@ zero_extendqisi2
 747 0080 5A78     		ldrb	r2, [r3, #1]	@ zero_extendqisi2
 748 0082 2C44     		add	r4, r4, r5
 749 0084 0006     		lsls	r0, r0, #24
 750 0086 94F83030 		ldrb	r3, [r4, #48]	@ zero_extendqisi2
 751 008a 40EA0140 		orr	r0, r0, r1, lsl #16
 752 008e 40EA0220 		orr	r0, r0, r2, lsl #8
 753 0092 1843     		orrs	r0, r0, r3
 754 0094 20F07040 		bic	r0, r0, #-268435456
 755 0098 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 756              	.L156:
 757 009a 016A     		ldr	r1, [r0, #32]
 758 009c 01EB1521 		add	r1, r1, r5, lsr #8
 759 00a0 FFF7FEFF 		bl	move_window
 760 00a4 0028     		cmp	r0, #0
 761 00a6 B5D1     		bne	.L163
 762 00a8 6D00     		lsls	r5, r5, #1
 763 00aa 05F4FF75 		and	r5, r5, #510
 764 00ae 6319     		adds	r3, r4, r5
 765 00b0 1C46     		mov	r4, r3
 766 00b2 94F83100 		ldrb	r0, [r4, #49]	@ zero_extendqisi2
 767 00b6 93F83030 		ldrb	r3, [r3, #48]	@ zero_extendqisi2
 768 00ba 43EA0020 		orr	r0, r3, r0, lsl #8
 769 00be F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 770              		.size	get_fat.part.3, .-get_fat.part.3
 771              		.section	.text.dir_sdi,"ax",%progbits
 772              		.align	2
 773              		.thumb
 774              		.thumb_func
 775              		.type	dir_sdi, %function
 776              	dir_sdi:
 777              		@ args = 0, pretend = 0, frame = 0
 778              		@ frame_needed = 0, uses_anonymous_args = 0
 779 0000 8368     		ldr	r3, [r0, #8]
 780 0002 70B5     		push	{r4, r5, r6, lr}
 781 0004 012B     		cmp	r3, #1
 782 0006 0446     		mov	r4, r0
 783 0008 0D46     		mov	r5, r1
 784 000a E180     		strh	r1, [r4, #6]	@ movhi
 785 000c 03D0     		beq	.L177
 786 000e 0068     		ldr	r0, [r0]
 787 0010 8269     		ldr	r2, [r0, #24]
 788 0012 9342     		cmp	r3, r2
 789 0014 01D3     		bcc	.L181
 790              	.L177:
 791 0016 0220     		movs	r0, #2
 792 0018 70BD     		pop	{r4, r5, r6, pc}
 793              	.L181:
 794 001a B3B9     		cbnz	r3, .L169
 795 001c 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 796 001e 032B     		cmp	r3, #3
 797 0020 10D0     		beq	.L182
 798              	.L170:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 15


 799 0022 0389     		ldrh	r3, [r0, #8]
 800 0024 0022     		movs	r2, #0
 801 0026 AB42     		cmp	r3, r5
 802 0028 E260     		str	r2, [r4, #12]
 803 002a F4D9     		bls	.L177
 804 002c 436A     		ldr	r3, [r0, #36]
 805 002e 03EB1513 		add	r3, r3, r5, lsr #4
 806 0032 2361     		str	r3, [r4, #16]
 807              	.L171:
 808 0034 05F00F05 		and	r5, r5, #15
 809 0038 00EB4510 		add	r0, r0, r5, lsl #5
 810 003c 3030     		adds	r0, r0, #48
 811 003e 6061     		str	r0, [r4, #20]
 812 0040 0020     		movs	r0, #0
 813 0042 70BD     		pop	{r4, r5, r6, pc}
 814              	.L182:
 815 0044 436A     		ldr	r3, [r0, #36]
 816 0046 002B     		cmp	r3, #0
 817 0048 EBD0     		beq	.L170
 818              	.L169:
 819 004a 8678     		ldrb	r6, [r0, #2]	@ zero_extendqisi2
 820 004c 3601     		lsls	r6, r6, #4
 821 004e B542     		cmp	r5, r6
 822 0050 19D3     		bcc	.L172
 823 0052 012B     		cmp	r3, #1
 824 0054 DFD9     		bls	.L177
 825 0056 AD1B     		subs	r5, r5, r6
 826 0058 9A42     		cmp	r2, r3
 827 005a ADB2     		uxth	r5, r5
 828 005c DBD9     		bls	.L177
 829 005e 08E0     		b	.L175
 830              	.L183:
 831 0060 0128     		cmp	r0, #1
 832 0062 D8D9     		bls	.L177
 833 0064 2068     		ldr	r0, [r4]
 834 0066 8269     		ldr	r2, [r0, #24]
 835 0068 9A42     		cmp	r2, r3
 836 006a D4D9     		bls	.L177
 837 006c AE42     		cmp	r6, r5
 838 006e 0AD8     		bhi	.L172
 839 0070 0D46     		mov	r5, r1
 840              	.L175:
 841 0072 1946     		mov	r1, r3
 842 0074 FFF7FEFF 		bl	get_fat.part.3
 843 0078 A91B     		subs	r1, r5, r6
 844 007a 421C     		adds	r2, r0, #1
 845 007c 0346     		mov	r3, r0
 846 007e 89B2     		uxth	r1, r1
 847 0080 EED1     		bne	.L183
 848 0082 0120     		movs	r0, #1
 849 0084 70BD     		pop	{r4, r5, r6, pc}
 850              	.L172:
 851 0086 991E     		subs	r1, r3, #2
 852 0088 023A     		subs	r2, r2, #2
 853 008a 9142     		cmp	r1, r2
 854 008c E360     		str	r3, [r4, #12]
 855 008e 3BBF     		ittet	cc
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 16


 856 0090 8278     		ldrbcc	r2, [r0, #2]	@ zero_extendqisi2
 857 0092 836A     		ldrcc	r3, [r0, #40]
 858 0094 0021     		movcs	r1, #0
 859 0096 02FB0131 		mlacc	r1, r2, r1, r3
 860 009a 01EB1511 		add	r1, r1, r5, lsr #4
 861 009e 2161     		str	r1, [r4, #16]
 862 00a0 C8E7     		b	.L171
 863              		.size	dir_sdi, .-dir_sdi
 864 00a2 00BF     		.section	.text.put_fat.part.4,"ax",%progbits
 865              		.align	2
 866              		.thumb
 867              		.thumb_func
 868              		.type	put_fat.part.4, %function
 869              	put_fat.part.4:
 870              		@ args = 0, pretend = 0, frame = 0
 871              		@ frame_needed = 0, uses_anonymous_args = 0
 872 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 873 0002 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 874 0004 0446     		mov	r4, r0
 875 0006 022B     		cmp	r3, #2
 876 0008 0D46     		mov	r5, r1
 877 000a 1646     		mov	r6, r2
 878 000c 59D0     		beq	.L186
 879 000e 032B     		cmp	r3, #3
 880 0010 38D0     		beq	.L187
 881 0012 012B     		cmp	r3, #1
 882 0014 03D0     		beq	.L195
 883 0016 0220     		movs	r0, #2
 884              	.L185:
 885 0018 0123     		movs	r3, #1
 886 001a 2371     		strb	r3, [r4, #4]
 887 001c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 888              	.L195:
 889 001e 016A     		ldr	r1, [r0, #32]
 890 0020 05EB5507 		add	r7, r5, r5, lsr #1
 891 0024 01EB5721 		add	r1, r1, r7, lsr #9
 892 0028 FFF7FEFF 		bl	move_window
 893 002c 0028     		cmp	r0, #0
 894 002e F3D1     		bne	.L185
 895 0030 C7F30803 		ubfx	r3, r7, #0, #9
 896 0034 15F00105 		ands	r5, r5, #1
 897 0038 2344     		add	r3, r3, r4
 898 003a 56D0     		beq	.L189
 899 003c 93F83020 		ldrb	r2, [r3, #48]	@ zero_extendqisi2
 900 0040 F0B2     		uxtb	r0, r6
 901 0042 02F00F02 		and	r2, r2, #15
 902 0046 42EA0010 		orr	r0, r2, r0, lsl #4
 903 004a C0B2     		uxtb	r0, r0
 904              	.L190:
 905 004c 216A     		ldr	r1, [r4, #32]
 906 004e 0137     		adds	r7, r7, #1
 907 0050 0122     		movs	r2, #1
 908 0052 83F83000 		strb	r0, [r3, #48]
 909 0056 01EB5721 		add	r1, r1, r7, lsr #9
 910 005a 2271     		strb	r2, [r4, #4]
 911 005c 2046     		mov	r0, r4
 912 005e FFF7FEFF 		bl	move_window
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 17


 913 0062 0028     		cmp	r0, #0
 914 0064 D8D1     		bne	.L185
 915 0066 C7F30807 		ubfx	r7, r7, #0, #9
 916 006a 002D     		cmp	r5, #0
 917 006c 3FD1     		bne	.L196
 918 006e 2744     		add	r7, r7, r4
 919 0070 97F83030 		ldrb	r3, [r7, #48]	@ zero_extendqisi2
 920 0074 C6F30326 		ubfx	r6, r6, #8, #4
 921 0078 23F00F03 		bic	r3, r3, #15
 922 007c 1E43     		orrs	r6, r6, r3
 923              	.L192:
 924 007e 87F83060 		strb	r6, [r7, #48]
 925 0082 C9E7     		b	.L185
 926              	.L187:
 927 0084 016A     		ldr	r1, [r0, #32]
 928 0086 01EBD511 		add	r1, r1, r5, lsr #7
 929 008a FFF7FEFF 		bl	move_window
 930 008e 0028     		cmp	r0, #0
 931 0090 C2D1     		bne	.L185
 932 0092 AD00     		lsls	r5, r5, #2
 933 0094 05F4FE75 		and	r5, r5, #508
 934 0098 05F13003 		add	r3, r5, #48
 935 009c 2344     		add	r3, r3, r4
 936 009e DA78     		ldrb	r2, [r3, #3]	@ zero_extendqisi2
 937 00a0 2544     		add	r5, r5, r4
 938 00a2 1206     		lsls	r2, r2, #24
 939 00a4 02F07042 		and	r2, r2, #-268435456
 940 00a8 1643     		orrs	r6, r6, r2
 941 00aa C6F30727 		ubfx	r7, r6, #8, #8
 942 00ae 310C     		lsrs	r1, r6, #16
 943 00b0 320E     		lsrs	r2, r6, #24
 944 00b2 85F83060 		strb	r6, [r5, #48]
 945 00b6 5F70     		strb	r7, [r3, #1]
 946 00b8 9970     		strb	r1, [r3, #2]
 947 00ba DA70     		strb	r2, [r3, #3]
 948 00bc 0123     		movs	r3, #1
 949 00be 2371     		strb	r3, [r4, #4]
 950 00c0 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 951              	.L186:
 952 00c2 016A     		ldr	r1, [r0, #32]
 953 00c4 01EB1521 		add	r1, r1, r5, lsr #8
 954 00c8 FFF7FEFF 		bl	move_window
 955 00cc 0028     		cmp	r0, #0
 956 00ce A3D1     		bne	.L185
 957 00d0 6D00     		lsls	r5, r5, #1
 958 00d2 05F4FF75 		and	r5, r5, #510
 959 00d6 6219     		adds	r2, r4, r5
 960 00d8 C6F30723 		ubfx	r3, r6, #8, #8
 961 00dc 82F83130 		strb	r3, [r2, #49]
 962 00e0 0123     		movs	r3, #1
 963 00e2 82F83060 		strb	r6, [r2, #48]
 964 00e6 2371     		strb	r3, [r4, #4]
 965 00e8 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 966              	.L189:
 967 00ea F0B2     		uxtb	r0, r6
 968 00ec AEE7     		b	.L190
 969              	.L196:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 18


 970 00ee C6F30716 		ubfx	r6, r6, #4, #8
 971 00f2 2744     		add	r7, r7, r4
 972 00f4 C3E7     		b	.L192
 973              		.size	put_fat.part.4, .-put_fat.part.4
 974 00f6 00BF     		.section	.text.create_chain,"ax",%progbits
 975              		.align	2
 976              		.thumb
 977              		.thumb_func
 978              		.type	create_chain, %function
 979              	create_chain:
 980              		@ args = 0, pretend = 0, frame = 0
 981              		@ frame_needed = 0, uses_anonymous_args = 0
 982 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 983 0002 0546     		mov	r5, r0
 984 0004 0F46     		mov	r7, r1
 985 0006 F9B9     		cbnz	r1, .L198
 986 0008 C668     		ldr	r6, [r0, #12]
 987 000a 8369     		ldr	r3, [r0, #24]
 988 000c 56B3     		cbz	r6, .L230
 989 000e 9E42     		cmp	r6, r3
 990 0010 28BF     		it	cs
 991 0012 0126     		movcs	r6, #1
 992              	.L200:
 993 0014 3446     		mov	r4, r6
 994 0016 10E0     		b	.L210
 995              	.L231:
 996 0018 012E     		cmp	r6, #1
 997 001a 25D9     		bls	.L209
 998 001c 022B     		cmp	r3, #2
 999 001e 11D9     		bls	.L226
 1000 0020 0224     		movs	r4, #2
 1001              	.L206:
 1002 0022 2846     		mov	r0, r5
 1003 0024 2146     		mov	r1, r4
 1004 0026 FFF7FEFF 		bl	get_fat.part.3
 1005 002a 20B3     		cbz	r0, .L207
 1006 002c 411C     		adds	r1, r0, #1
 1007 002e 1FD0     		beq	.L217
 1008 0030 0128     		cmp	r0, #1
 1009 0032 07D0     		beq	.L226
 1010 0034 A642     		cmp	r6, r4
 1011 0036 17D0     		beq	.L209
 1012 0038 AB69     		ldr	r3, [r5, #24]
 1013              	.L210:
 1014 003a 0134     		adds	r4, r4, #1
 1015 003c 9C42     		cmp	r4, r3
 1016 003e EBD2     		bcs	.L231
 1017 0040 012C     		cmp	r4, #1
 1018 0042 EED8     		bhi	.L206
 1019              	.L226:
 1020 0044 0120     		movs	r0, #1
 1021              	.L222:
 1022 0046 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1023              	.L198:
 1024 0048 0129     		cmp	r1, #1
 1025 004a FBD9     		bls	.L226
 1026 004c 8369     		ldr	r3, [r0, #24]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 19


 1027 004e 9942     		cmp	r1, r3
 1028 0050 F8D2     		bcs	.L226
 1029 0052 FFF7FEFF 		bl	get_fat.part.3
 1030 0056 0128     		cmp	r0, #1
 1031 0058 F4D9     		bls	.L226
 1032 005a AB69     		ldr	r3, [r5, #24]
 1033 005c 8342     		cmp	r3, r0
 1034 005e F2D8     		bhi	.L222
 1035 0060 3E46     		mov	r6, r7
 1036 0062 D7E7     		b	.L200
 1037              	.L230:
 1038 0064 0126     		movs	r6, #1
 1039 0066 D5E7     		b	.L200
 1040              	.L209:
 1041 0068 0020     		movs	r0, #0
 1042 006a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1043              	.L216:
 1044 006c 0128     		cmp	r0, #1
 1045 006e E9D1     		bne	.L226
 1046              	.L217:
 1047 0070 4FF0FF30 		mov	r0, #-1
 1048 0074 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1049              	.L207:
 1050 0076 AB69     		ldr	r3, [r5, #24]
 1051 0078 A342     		cmp	r3, r4
 1052 007a E3D9     		bls	.L226
 1053 007c 2846     		mov	r0, r5
 1054 007e 2146     		mov	r1, r4
 1055 0080 6FF07042 		mvn	r2, #-268435456
 1056 0084 FFF7FEFF 		bl	put_fat.part.4
 1057 0088 0028     		cmp	r0, #0
 1058 008a EFD1     		bne	.L216
 1059 008c 5FB1     		cbz	r7, .L215
 1060 008e 012F     		cmp	r7, #1
 1061 0090 D8D9     		bls	.L226
 1062 0092 AB69     		ldr	r3, [r5, #24]
 1063 0094 9F42     		cmp	r7, r3
 1064 0096 D5D2     		bcs	.L226
 1065 0098 3946     		mov	r1, r7
 1066 009a 2846     		mov	r0, r5
 1067 009c 2246     		mov	r2, r4
 1068 009e FFF7FEFF 		bl	put_fat.part.4
 1069 00a2 0028     		cmp	r0, #0
 1070 00a4 E2D1     		bne	.L216
 1071              	.L215:
 1072 00a6 2B69     		ldr	r3, [r5, #16]
 1073 00a8 EC60     		str	r4, [r5, #12]
 1074 00aa 5A1C     		adds	r2, r3, #1
 1075 00ac 05D0     		beq	.L232
 1076 00ae 0122     		movs	r2, #1
 1077 00b0 013B     		subs	r3, r3, #1
 1078 00b2 6A71     		strb	r2, [r5, #5]
 1079 00b4 2B61     		str	r3, [r5, #16]
 1080 00b6 2046     		mov	r0, r4
 1081 00b8 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1082              	.L232:
 1083 00ba 2046     		mov	r0, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 20


 1084 00bc F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1085              		.size	create_chain, .-create_chain
 1086 00be 00BF     		.section	.text.dir_next,"ax",%progbits
 1087              		.align	2
 1088              		.thumb
 1089              		.thumb_func
 1090              		.type	dir_next, %function
 1091              	dir_next:
 1092              		@ args = 0, pretend = 0, frame = 0
 1093              		@ frame_needed = 0, uses_anonymous_args = 0
 1094 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1095 0004 C588     		ldrh	r5, [r0, #6]
 1096 0006 0446     		mov	r4, r0
 1097 0008 0135     		adds	r5, r5, #1
 1098 000a ADB2     		uxth	r5, r5
 1099 000c 0E46     		mov	r6, r1
 1100 000e 15B9     		cbnz	r5, .L234
 1101              	.L236:
 1102 0010 0420     		movs	r0, #4
 1103 0012 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1104              	.L234:
 1105 0016 0369     		ldr	r3, [r0, #16]
 1106 0018 002B     		cmp	r3, #0
 1107 001a F9D0     		beq	.L236
 1108 001c 15F00F07 		ands	r7, r5, #15
 1109 0020 08D0     		beq	.L237
 1110 0022 0368     		ldr	r3, [r0]
 1111              	.L238:
 1112 0024 03EB4713 		add	r3, r3, r7, lsl #5
 1113 0028 3033     		adds	r3, r3, #48
 1114 002a 6361     		str	r3, [r4, #20]
 1115 002c E580     		strh	r5, [r4, #6]	@ movhi
 1116 002e 0020     		movs	r0, #0
 1117 0030 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1118              	.L237:
 1119 0034 C168     		ldr	r1, [r0, #12]
 1120 0036 0133     		adds	r3, r3, #1
 1121 0038 0361     		str	r3, [r0, #16]
 1122 003a 0368     		ldr	r3, [r0]
 1123 003c 61B1     		cbz	r1, .L266
 1124 003e 9A78     		ldrb	r2, [r3, #2]	@ zero_extendqisi2
 1125 0040 013A     		subs	r2, r2, #1
 1126 0042 12EA1512 		ands	r2, r2, r5, lsr #4
 1127 0046 EDD1     		bne	.L238
 1128 0048 0129     		cmp	r1, #1
 1129 004a 02D9     		bls	.L241
 1130 004c 9A69     		ldr	r2, [r3, #24]
 1131 004e 9142     		cmp	r1, r2
 1132 0050 06D3     		bcc	.L267
 1133              	.L241:
 1134 0052 0220     		movs	r0, #2
 1135 0054 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1136              	.L266:
 1137 0058 1A89     		ldrh	r2, [r3, #8]
 1138 005a AA42     		cmp	r2, r5
 1139 005c D8D9     		bls	.L236
 1140 005e E1E7     		b	.L238
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 21


 1141              	.L267:
 1142 0060 1846     		mov	r0, r3
 1143 0062 FFF7FEFF 		bl	get_fat.part.3
 1144 0066 0128     		cmp	r0, #1
 1145 0068 8046     		mov	r8, r0
 1146 006a F2D9     		bls	.L241
 1147 006c B0F1FF3F 		cmp	r0, #-1
 1148 0070 1BD0     		beq	.L244
 1149 0072 2368     		ldr	r3, [r4]
 1150 0074 9A69     		ldr	r2, [r3, #24]
 1151 0076 8242     		cmp	r2, r0
 1152 0078 0CD9     		bls	.L265
 1153 007a 861E     		subs	r6, r0, #2
 1154              	.L243:
 1155 007c 023A     		subs	r2, r2, #2
 1156 007e 9642     		cmp	r6, r2
 1157 0080 C4F80C80 		str	r8, [r4, #12]
 1158 0084 3BBF     		ittet	cc
 1159 0086 9978     		ldrbcc	r1, [r3, #2]	@ zero_extendqisi2
 1160 0088 9A6A     		ldrcc	r2, [r3, #40]
 1161 008a 0026     		movcs	r6, #0
 1162 008c 01FB0626 		mlacc	r6, r1, r6, r2
 1163 0090 2661     		str	r6, [r4, #16]
 1164 0092 C7E7     		b	.L238
 1165              	.L265:
 1166 0094 002E     		cmp	r6, #0
 1167 0096 BBD0     		beq	.L236
 1168 0098 1846     		mov	r0, r3
 1169 009a E168     		ldr	r1, [r4, #12]
 1170 009c FFF7FEFF 		bl	create_chain
 1171 00a0 8046     		mov	r8, r0
 1172 00a2 28B9     		cbnz	r0, .L268
 1173 00a4 0720     		movs	r0, #7
 1174 00a6 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1175              	.L244:
 1176 00aa 0120     		movs	r0, #1
 1177 00ac BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1178              	.L268:
 1179 00b0 0128     		cmp	r0, #1
 1180 00b2 CED0     		beq	.L241
 1181 00b4 B0F1FF3F 		cmp	r0, #-1
 1182 00b8 F7D0     		beq	.L244
 1183 00ba 2068     		ldr	r0, [r4]
 1184 00bc 0021     		movs	r1, #0
 1185 00be FFF7FEFF 		bl	move_window
 1186 00c2 8146     		mov	r9, r0
 1187 00c4 0028     		cmp	r0, #0
 1188 00c6 F0D1     		bne	.L244
 1189 00c8 2068     		ldr	r0, [r4]
 1190 00ca 4946     		mov	r1, r9
 1191 00cc 4FF40072 		mov	r2, #512
 1192 00d0 3030     		adds	r0, r0, #48
 1193 00d2 FFF7FEFF 		bl	memset
 1194 00d6 2268     		ldr	r2, [r4]
 1195 00d8 A8F10206 		sub	r6, r8, #2
 1196 00dc 9369     		ldr	r3, [r2, #24]
 1197 00de 4FF0010A 		mov	r10, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 22


 1198 00e2 023B     		subs	r3, r3, #2
 1199 00e4 9E42     		cmp	r6, r3
 1200 00e6 3BBF     		ittet	cc
 1201 00e8 936A     		ldrcc	r3, [r2, #40]
 1202 00ea 9178     		ldrbcc	r1, [r2, #2]	@ zero_extendqisi2
 1203 00ec 4B46     		movcs	r3, r9
 1204 00ee 01FB0633 		mlacc	r3, r1, r6, r3
 1205 00f2 4FF00009 		mov	r9, #0
 1206 00f6 D362     		str	r3, [r2, #44]
 1207              	.L246:
 1208 00f8 92F802C0 		ldrb	ip, [r2, #2]	@ zero_extendqisi2
 1209 00fc 5FFA89F0 		uxtb	r0, r9
 1210 0100 8445     		cmp	ip, r0
 1211 0102 4FF00001 		mov	r1, #0
 1212 0106 1346     		mov	r3, r2
 1213 0108 0DD9     		bls	.L269
 1214 010a 82F804A0 		strb	r10, [r2, #4]
 1215 010e 2068     		ldr	r0, [r4]
 1216 0110 FFF7FEFF 		bl	move_window
 1217 0114 09F10109 		add	r9, r9, #1
 1218 0118 0028     		cmp	r0, #0
 1219 011a C6D1     		bne	.L244
 1220 011c 2268     		ldr	r2, [r4]
 1221 011e D36A     		ldr	r3, [r2, #44]
 1222 0120 0133     		adds	r3, r3, #1
 1223 0122 D362     		str	r3, [r2, #44]
 1224 0124 E8E7     		b	.L246
 1225              	.L269:
 1226 0126 D16A     		ldr	r1, [r2, #44]
 1227 0128 9269     		ldr	r2, [r2, #24]
 1228 012a 091A     		subs	r1, r1, r0
 1229 012c D962     		str	r1, [r3, #44]
 1230 012e A5E7     		b	.L243
 1231              		.size	dir_next, .-dir_next
 1232              		.section	.text.dir_read,"ax",%progbits
 1233              		.align	2
 1234              		.thumb
 1235              		.thumb_func
 1236              		.type	dir_read, %function
 1237              	dir_read:
 1238              		@ args = 0, pretend = 0, frame = 0
 1239              		@ frame_needed = 0, uses_anonymous_args = 0
 1240 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 1241 0004 FF26     		movs	r6, #255
 1242 0006 0446     		mov	r4, r0
 1243 0008 3546     		mov	r5, r6
 1244 000a 0420     		movs	r0, #4
 1245 000c 414F     		ldr	r7, .L313
 1246 000e 09E0     		b	.L271
 1247              	.L309:
 1248 0010 BCF10F0F 		cmp	ip, #15
 1249 0014 1ED0     		beq	.L275
 1250              	.L297:
 1251 0016 FF25     		movs	r5, #255
 1252              	.L273:
 1253 0018 2046     		mov	r0, r4
 1254 001a 0021     		movs	r1, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 23


 1255 001c FFF7FEFF 		bl	dir_next
 1256 0020 0028     		cmp	r0, #0
 1257 0022 4DD1     		bne	.L291
 1258              	.L271:
 1259 0024 2169     		ldr	r1, [r4, #16]
 1260 0026 0029     		cmp	r1, #0
 1261 0028 4ED0     		beq	.L308
 1262 002a 2068     		ldr	r0, [r4]
 1263 002c FFF7FEFF 		bl	move_window
 1264 0030 0028     		cmp	r0, #0
 1265 0032 45D1     		bne	.L291
 1266 0034 6269     		ldr	r2, [r4, #20]
 1267 0036 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 1268 0038 002B     		cmp	r3, #0
 1269 003a 40D0     		beq	.L292
 1270 003c E52B     		cmp	r3, #229
 1271 003e D17A     		ldrb	r1, [r2, #11]	@ zero_extendqisi2
 1272 0040 E9D0     		beq	.L297
 1273 0042 2E2B     		cmp	r3, #46
 1274 0044 E7D0     		beq	.L297
 1275 0046 01F03F0C 		and	ip, r1, #63
 1276 004a 0907     		lsls	r1, r1, #28
 1277 004c E0D4     		bmi	.L309
 1278 004e BCF10F0F 		cmp	ip, #15
 1279 0052 49D1     		bne	.L276
 1280              	.L275:
 1281 0054 5906     		lsls	r1, r3, #25
 1282 0056 2FD5     		bpl	.L277
 1283 0058 E188     		ldrh	r1, [r4, #6]
 1284 005a 567B     		ldrb	r6, [r2, #13]	@ zero_extendqisi2
 1285 005c 03F0BF05 		and	r5, r3, #191
 1286 0060 2184     		strh	r1, [r4, #32]	@ movhi
 1287              	.L278:
 1288 0062 92F80DE0 		ldrb	lr, [r2, #13]	@ zero_extendqisi2
 1289 0066 B645     		cmp	lr, r6
 1290 0068 D5D1     		bne	.L297
 1291 006a 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 1292 006c D4F81C80 		ldr	r8, [r4, #28]
 1293 0070 01F03F01 		and	r1, r1, #63
 1294 0074 0139     		subs	r1, r1, #1
 1295 0076 01EB4100 		add	r0, r1, r1, lsl #1
 1296 007a 274B     		ldr	r3, .L313+4
 1297 007c 01EB8000 		add	r0, r1, r0, lsl #2
 1298 0080 4FF0010C 		mov	ip, #1
 1299 0084 4FF6FF79 		movw	r9, #65535
 1300 0088 07E0     		b	.L283
 1301              	.L311:
 1302 008a FE28     		cmp	r0, #254
 1303 008c 11D8     		bhi	.L280
 1304 008e 28F81010 		strh	r1, [r8, r0, lsl #1]	@ movhi
 1305 0092 8C46     		mov	ip, r1
 1306 0094 0130     		adds	r0, r0, #1
 1307              	.L281:
 1308 0096 BB42     		cmp	r3, r7
 1309 0098 1AD0     		beq	.L310
 1310              	.L283:
 1311 009a 13F8011F 		ldrb	r1, [r3, #1]!	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 24


 1312 009e 5618     		adds	r6, r2, r1
 1313 00a0 7678     		ldrb	r6, [r6, #1]	@ zero_extendqisi2
 1314 00a2 515C     		ldrb	r1, [r2, r1]	@ zero_extendqisi2
 1315 00a4 41EA0621 		orr	r1, r1, r6, lsl #8
 1316 00a8 BCF1000F 		cmp	ip, #0
 1317 00ac EDD1     		bne	.L311
 1318 00ae 4945     		cmp	r1, r9
 1319 00b0 F1D0     		beq	.L281
 1320              	.L280:
 1321 00b2 7646     		mov	r6, lr
 1322 00b4 FF25     		movs	r5, #255
 1323 00b6 AFE7     		b	.L273
 1324              	.L277:
 1325 00b8 9D42     		cmp	r5, r3
 1326 00ba ACD1     		bne	.L297
 1327 00bc D1E7     		b	.L278
 1328              	.L292:
 1329 00be 0420     		movs	r0, #4
 1330              	.L291:
 1331 00c0 0023     		movs	r3, #0
 1332 00c2 2361     		str	r3, [r4, #16]
 1333 00c4 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1334              	.L308:
 1335 00c8 0028     		cmp	r0, #0
 1336 00ca F9D1     		bne	.L291
 1337              	.L301:
 1338 00cc BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1339              	.L310:
 1340 00d0 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 1341 00d2 5B06     		lsls	r3, r3, #25
 1342 00d4 04D5     		bpl	.L284
 1343 00d6 FE28     		cmp	r0, #254
 1344 00d8 EBD8     		bhi	.L280
 1345 00da 0023     		movs	r3, #0
 1346 00dc 28F81030 		strh	r3, [r8, r0, lsl #1]	@ movhi
 1347              	.L284:
 1348 00e0 013D     		subs	r5, r5, #1
 1349 00e2 EDB2     		uxtb	r5, r5
 1350 00e4 7646     		mov	r6, lr
 1351 00e6 97E7     		b	.L273
 1352              	.L276:
 1353 00e8 7DB9     		cbnz	r5, .L285
 1354 00ea 02F10A07 		add	r7, r2, #10
 1355 00ee 0146     		mov	r1, r0
 1356 00f0 01E0     		b	.L287
 1357              	.L312:
 1358 00f2 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
 1359              	.L287:
 1360 00f6 CD01     		lsls	r5, r1, #7
 1361 00f8 45EA5101 		orr	r1, r5, r1, lsr #1
 1362 00fc 1944     		add	r1, r1, r3
 1363 00fe BA42     		cmp	r2, r7
 1364 0100 01F0FF01 		and	r1, r1, #255
 1365 0104 F5D1     		bne	.L312
 1366 0106 8E42     		cmp	r6, r1
 1367 0108 E0D0     		beq	.L301
 1368              	.L285:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 25


 1369 010a 4FF6FF73 		movw	r3, #65535
 1370 010e 2384     		strh	r3, [r4, #32]	@ movhi
 1371 0110 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1372              	.L314:
 1373              		.align	2
 1374              	.L313:
 1375 0114 0C000000 		.word	.LANCHOR2+12
 1376 0118 FFFFFFFF 		.word	.LANCHOR2-1
 1377              		.size	dir_read, .-dir_read
 1378              		.section	.text.dir_remove,"ax",%progbits
 1379              		.align	2
 1380              		.thumb
 1381              		.thumb_func
 1382              		.type	dir_remove, %function
 1383              	dir_remove:
 1384              		@ args = 0, pretend = 0, frame = 0
 1385              		@ frame_needed = 0, uses_anonymous_args = 0
 1386 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1387 0002 018C     		ldrh	r1, [r0, #32]
 1388 0004 C588     		ldrh	r5, [r0, #6]
 1389 0006 4FF6FF73 		movw	r3, #65535
 1390 000a 9942     		cmp	r1, r3
 1391 000c 08BF     		it	eq
 1392 000e 2946     		moveq	r1, r5
 1393 0010 0446     		mov	r4, r0
 1394 0012 FFF7FEFF 		bl	dir_sdi
 1395 0016 0346     		mov	r3, r0
 1396 0018 C8B9     		cbnz	r0, .L317
 1397 001a E527     		movs	r7, #229
 1398 001c 0126     		movs	r6, #1
 1399 001e 0AE0     		b	.L320
 1400              	.L323:
 1401 0020 6269     		ldr	r2, [r4, #20]
 1402 0022 1770     		strb	r7, [r2]
 1403 0024 2268     		ldr	r2, [r4]
 1404 0026 1671     		strb	r6, [r2, #4]
 1405 0028 E288     		ldrh	r2, [r4, #6]
 1406 002a AA42     		cmp	r2, r5
 1407 002c 0FD2     		bcs	.L317
 1408 002e FFF7FEFF 		bl	dir_next
 1409 0032 0346     		mov	r3, r0
 1410 0034 40B9     		cbnz	r0, .L318
 1411              	.L320:
 1412 0036 2169     		ldr	r1, [r4, #16]
 1413 0038 2068     		ldr	r0, [r4]
 1414 003a FFF7FEFF 		bl	move_window
 1415 003e 0346     		mov	r3, r0
 1416 0040 0146     		mov	r1, r0
 1417 0042 2046     		mov	r0, r4
 1418 0044 002B     		cmp	r3, #0
 1419 0046 EBD0     		beq	.L323
 1420              	.L318:
 1421 0048 042B     		cmp	r3, #4
 1422 004a 08BF     		it	eq
 1423 004c 0223     		moveq	r3, #2
 1424              	.L317:
 1425 004e 1846     		mov	r0, r3
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 26


 1426 0050 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1427              		.size	dir_remove, .-dir_remove
 1428 0052 00BF     		.section	.text.dir_find.part.5,"ax",%progbits
 1429              		.align	2
 1430              		.thumb
 1431              		.thumb_func
 1432              		.type	dir_find.part.5, %function
 1433              	dir_find.part.5:
 1434              		@ args = 0, pretend = 0, frame = 8
 1435              		@ frame_needed = 0, uses_anonymous_args = 0
 1436 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1437 0004 FF26     		movs	r6, #255
 1438 0006 83B0     		sub	sp, sp, #12
 1439 0008 0446     		mov	r4, r0
 1440 000a B146     		mov	r9, r6
 1441 000c 0AE0     		b	.L342
 1442              	.L363:
 1443 000e 0F29     		cmp	r1, #15
 1444 0010 41D0     		beq	.L328
 1445              	.L348:
 1446 0012 4FF0FF09 		mov	r9, #255
 1447              	.L326:
 1448 0016 2046     		mov	r0, r4
 1449 0018 0021     		movs	r1, #0
 1450 001a FFF7FEFF 		bl	dir_next
 1451 001e 0546     		mov	r5, r0
 1452 0020 0028     		cmp	r0, #0
 1453 0022 34D1     		bne	.L353
 1454              	.L342:
 1455 0024 2068     		ldr	r0, [r4]
 1456 0026 2169     		ldr	r1, [r4, #16]
 1457 0028 FFF7FEFF 		bl	move_window
 1458 002c 0546     		mov	r5, r0
 1459 002e 70BB     		cbnz	r0, .L353
 1460 0030 6769     		ldr	r7, [r4, #20]
 1461 0032 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 1462 0034 002B     		cmp	r3, #0
 1463 0036 6FD0     		beq	.L343
 1464 0038 FA7A     		ldrb	r2, [r7, #11]	@ zero_extendqisi2
 1465 003a E52B     		cmp	r3, #229
 1466 003c 02F03F01 		and	r1, r2, #63
 1467 0040 E7D0     		beq	.L348
 1468 0042 1207     		lsls	r2, r2, #28
 1469 0044 E3D4     		bmi	.L363
 1470 0046 0F29     		cmp	r1, #15
 1471 0048 25D0     		beq	.L328
 1472 004a B9F1000F 		cmp	r9, #0
 1473 004e 11D1     		bne	.L338
 1474 0050 9C46     		mov	ip, r3
 1475 0052 3A46     		mov	r2, r7
 1476 0054 07F10A00 		add	r0, r7, #10
 1477 0058 2B46     		mov	r3, r5
 1478 005a 01E0     		b	.L340
 1479              	.L364:
 1480 005c 12F801CF 		ldrb	ip, [r2, #1]!	@ zero_extendqisi2
 1481              	.L340:
 1482 0060 D901     		lsls	r1, r3, #7
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 27


 1483 0062 41EA5303 		orr	r3, r1, r3, lsr #1
 1484 0066 6344     		add	r3, r3, ip
 1485 0068 8242     		cmp	r2, r0
 1486 006a 03F0FF03 		and	r3, r3, #255
 1487 006e F5D1     		bne	.L364
 1488 0070 B342     		cmp	r3, r6
 1489 0072 0CD0     		beq	.L353
 1490              	.L338:
 1491 0074 4FF6FF73 		movw	r3, #65535
 1492 0078 A169     		ldr	r1, [r4, #24]
 1493 007a 2384     		strh	r3, [r4, #32]	@ movhi
 1494 007c CB7A     		ldrb	r3, [r1, #11]	@ zero_extendqisi2
 1495 007e DB07     		lsls	r3, r3, #31
 1496 0080 C7D4     		bmi	.L348
 1497 0082 3846     		mov	r0, r7
 1498 0084 0B22     		movs	r2, #11
 1499 0086 FFF7FEFF 		bl	memcmp
 1500 008a 0028     		cmp	r0, #0
 1501 008c C1D1     		bne	.L348
 1502              	.L353:
 1503 008e 2846     		mov	r0, r5
 1504 0090 03B0     		add	sp, sp, #12
 1505              		@ sp needed
 1506 0092 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1507              	.L328:
 1508 0096 E569     		ldr	r5, [r4, #28]
 1509 0098 002D     		cmp	r5, #0
 1510 009a BCD0     		beq	.L326
 1511 009c 5806     		lsls	r0, r3, #25
 1512 009e 37D5     		bpl	.L330
 1513 00a0 E288     		ldrh	r2, [r4, #6]
 1514 00a2 7E7B     		ldrb	r6, [r7, #13]	@ zero_extendqisi2
 1515 00a4 03F0BF09 		and	r9, r3, #191
 1516 00a8 2284     		strh	r2, [r4, #32]	@ movhi
 1517              	.L331:
 1518 00aa 97F80DB0 		ldrb	fp, [r7, #13]	@ zero_extendqisi2
 1519 00ae B345     		cmp	fp, r6
 1520 00b0 AFD1     		bne	.L348
 1521 00b2 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 1522 00b4 234E     		ldr	r6, .L366
 1523 00b6 23F04003 		bic	r3, r3, #64
 1524 00ba 013B     		subs	r3, r3, #1
 1525 00bc 03EB430C 		add	ip, r3, r3, lsl #1
 1526 00c0 03EB8C08 		add	r8, r3, ip, lsl #2
 1527 00c4 0122     		movs	r2, #1
 1528 00c6 4FF6FF7A 		movw	r10, #65535
 1529 00ca 04E0     		b	.L336
 1530              	.L332:
 1531 00cc 5045     		cmp	r0, r10
 1532 00ce 2FD1     		bne	.L333
 1533              	.L334:
 1534 00d0 1D4B     		ldr	r3, .L366+4
 1535 00d2 9E42     		cmp	r6, r3
 1536 00d4 25D0     		beq	.L365
 1537              	.L336:
 1538 00d6 16F8013F 		ldrb	r3, [r6, #1]!	@ zero_extendqisi2
 1539 00da F818     		adds	r0, r7, r3
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 28


 1540 00dc 4078     		ldrb	r0, [r0, #1]	@ zero_extendqisi2
 1541 00de FB5C     		ldrb	r3, [r7, r3]	@ zero_extendqisi2
 1542 00e0 43EA0020 		orr	r0, r3, r0, lsl #8
 1543 00e4 002A     		cmp	r2, #0
 1544 00e6 F1D0     		beq	.L332
 1545 00e8 08F10103 		add	r3, r8, #1
 1546 00ec 0193     		str	r3, [sp, #4]
 1547 00ee FFF7FEFF 		bl	ff_wtoupper
 1548 00f2 B8F1FE0F 		cmp	r8, #254
 1549 00f6 0246     		mov	r2, r0
 1550 00f8 1AD8     		bhi	.L333
 1551 00fa 35F81800 		ldrh	r0, [r5, r8, lsl #1]
 1552 00fe 0092     		str	r2, [sp]
 1553 0100 FFF7FEFF 		bl	ff_wtoupper
 1554 0104 009A     		ldr	r2, [sp]
 1555 0106 8242     		cmp	r2, r0
 1556 0108 12D1     		bne	.L333
 1557 010a DDF80480 		ldr	r8, [sp, #4]
 1558 010e DFE7     		b	.L334
 1559              	.L330:
 1560 0110 4B45     		cmp	r3, r9
 1561 0112 7FF47EAF 		bne	.L348
 1562 0116 C8E7     		b	.L331
 1563              	.L343:
 1564 0118 0425     		movs	r5, #4
 1565 011a 2846     		mov	r0, r5
 1566 011c 03B0     		add	sp, sp, #12
 1567              		@ sp needed
 1568 011e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1569              	.L365:
 1570 0122 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 1571 0124 5906     		lsls	r1, r3, #25
 1572 0126 07D5     		bpl	.L337
 1573 0128 32B1     		cbz	r2, .L337
 1574 012a 35F81830 		ldrh	r3, [r5, r8, lsl #1]
 1575 012e 1BB1     		cbz	r3, .L337
 1576              	.L333:
 1577 0130 5E46     		mov	r6, fp
 1578 0132 4FF0FF09 		mov	r9, #255
 1579 0136 6EE7     		b	.L326
 1580              	.L337:
 1581 0138 09F1FF39 		add	r9, r9, #-1
 1582 013c 5FFA89F9 		uxtb	r9, r9
 1583 0140 5E46     		mov	r6, fp
 1584 0142 68E7     		b	.L326
 1585              	.L367:
 1586              		.align	2
 1587              	.L366:
 1588 0144 FFFFFFFF 		.word	.LANCHOR2-1
 1589 0148 0C000000 		.word	.LANCHOR2+12
 1590              		.size	dir_find.part.5, .-dir_find.part.5
 1591              		.section	.text.dir_register,"ax",%progbits
 1592              		.align	2
 1593              		.thumb
 1594              		.thumb_func
 1595              		.type	dir_register, %function
 1596              	dir_register:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 29


 1597              		@ args = 0, pretend = 0, frame = 32
 1598              		@ frame_needed = 0, uses_anonymous_args = 0
 1599 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1600 0004 D0F81880 		ldr	r8, [r0, #24]
 1601 0008 89B0     		sub	sp, sp, #36
 1602 000a 0446     		mov	r4, r0
 1603 000c D8F80820 		ldr	r2, [r8, #8]	@ unaligned
 1604 0010 D8F80000 		ldr	r0, [r8]	@ unaligned
 1605 0014 D8F80410 		ldr	r1, [r8, #4]	@ unaligned
 1606 0018 05AB     		add	r3, sp, #20
 1607 001a 07C3     		stmia	r3!, {r0, r1, r2}
 1608 001c 9DF81F70 		ldrb	r7, [sp, #31]	@ zero_extendqisi2
 1609 0020 E569     		ldr	r5, [r4, #28]
 1610 0022 FA07     		lsls	r2, r7, #31
 1611 0024 40F18380 		bpl	.L369
 1612 0028 05AB     		add	r3, sp, #20
 1613 002a 03CB     		ldmia	r3!, {r0, r1}
 1614 002c 9E78     		ldrb	r6, [r3, #2]	@ zero_extendqisi2
 1615 002e B3F800E0 		ldrh	lr, [r3]	@ unaligned
 1616 0032 4FF00109 		mov	r9, #1
 1617 0036 0023     		movs	r3, #0
 1618 0038 88F80B30 		strb	r3, [r8, #11]
 1619 003c 4A46     		mov	r2, r9
 1620 003e E361     		str	r3, [r4, #28]
 1621 0040 88F80A60 		strb	r6, [r8, #10]
 1622 0044 C8F80000 		str	r0, [r8]	@ unaligned
 1623 0048 C8F80410 		str	r1, [r8, #4]	@ unaligned
 1624 004c A8F808E0 		strh	lr, [r8, #8]	@ unaligned
 1625 0050 7E26     		movs	r6, #126
 1626              	.L370:
 1627 0052 0723     		movs	r3, #7
 1628              	.L375:
 1629 0054 02F00F00 		and	r0, r2, #15
 1630 0058 00F13001 		add	r1, r0, #48
 1631 005c 3929     		cmp	r1, #57
 1632 005e 88BF     		it	hi
 1633 0060 00F13701 		addhi	r1, r0, #55
 1634 0064 013B     		subs	r3, r3, #1
 1635 0066 03A8     		add	r0, sp, #12
 1636 0068 1844     		add	r0, r0, r3
 1637 006a C2F30F12 		ubfx	r2, r2, #4, #16
 1638 006e 4170     		strb	r1, [r0, #1]
 1639 0070 002A     		cmp	r2, #0
 1640 0072 EFD1     		bne	.L375
 1641 0074 08A9     		add	r1, sp, #32
 1642 0076 1944     		add	r1, r1, r3
 1643 0078 01F8146C 		strb	r6, [r1, #-20]
 1644 007c 002B     		cmp	r3, #0
 1645 007e 00F09D80 		beq	.L410
 1646 0082 98F80010 		ldrb	r1, [r8]	@ zero_extendqisi2
 1647 0086 2029     		cmp	r1, #32
 1648 0088 14D0     		beq	.L380
 1649 008a 4146     		mov	r1, r8
 1650 008c 03E0     		b	.L377
 1651              	.L444:
 1652 008e 11F8010F 		ldrb	r0, [r1, #1]!	@ zero_extendqisi2
 1653 0092 2028     		cmp	r0, #32
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 30


 1654 0094 0ED0     		beq	.L380
 1655              	.L377:
 1656 0096 0132     		adds	r2, r2, #1
 1657 0098 9A42     		cmp	r2, r3
 1658 009a F8D1     		bne	.L444
 1659 009c 072B     		cmp	r3, #7
 1660 009e 0BD8     		bhi	.L412
 1661              	.L446:
 1662 00a0 08A9     		add	r1, sp, #32
 1663 00a2 1944     		add	r1, r1, r3
 1664 00a4 11F8141C 		ldrb	r1, [r1, #-20]	@ zero_extendqisi2
 1665 00a8 0133     		adds	r3, r3, #1
 1666 00aa 08F80210 		strb	r1, [r8, r2]
 1667 00ae 0132     		adds	r2, r2, #1
 1668 00b0 072A     		cmp	r2, #7
 1669 00b2 07D8     		bhi	.L445
 1670              	.L380:
 1671 00b4 072B     		cmp	r3, #7
 1672 00b6 F3D9     		bls	.L446
 1673              	.L412:
 1674 00b8 2021     		movs	r1, #32
 1675 00ba 08F80210 		strb	r1, [r8, r2]
 1676 00be 0132     		adds	r2, r2, #1
 1677 00c0 072A     		cmp	r2, #7
 1678 00c2 F7D9     		bls	.L380
 1679              	.L445:
 1680 00c4 2046     		mov	r0, r4
 1681 00c6 0021     		movs	r1, #0
 1682 00c8 FFF7FEFF 		bl	dir_sdi
 1683 00cc 50BB     		cbnz	r0, .L381
 1684 00ce 2046     		mov	r0, r4
 1685 00d0 FFF7FEFF 		bl	dir_find.part.5
 1686 00d4 30BB     		cbnz	r0, .L381
 1687 00d6 09F10109 		add	r9, r9, #1
 1688 00da 1FFA89F9 		uxth	r9, r9
 1689 00de B9F1640F 		cmp	r9, #100
 1690 00e2 71D0     		beq	.L447
 1691 00e4 05AB     		add	r3, sp, #20
 1692 00e6 03CB     		ldmia	r3!, {r0, r1}
 1693 00e8 1A88     		ldrh	r2, [r3]	@ unaligned
 1694 00ea 9B78     		ldrb	r3, [r3, #2]	@ zero_extendqisi2
 1695 00ec B9F1050F 		cmp	r9, #5
 1696 00f0 C8F80000 		str	r0, [r8]	@ unaligned
 1697 00f4 C8F80410 		str	r1, [r8, #4]	@ unaligned
 1698 00f8 A8F80820 		strh	r2, [r8, #8]	@ unaligned
 1699 00fc 88F80A30 		strb	r3, [r8, #10]
 1700 0100 0ED9     		bls	.L409
 1701 0102 2888     		ldrh	r0, [r5]
 1702 0104 2946     		mov	r1, r5
 1703 0106 4A46     		mov	r2, r9
 1704 0108 00E0     		b	.L372
 1705              	.L448:
 1706 010a 1846     		mov	r0, r3
 1707              	.L372:
 1708 010c D303     		lsls	r3, r2, #15
 1709 010e 43EA5202 		orr	r2, r3, r2, lsr #1
 1710 0112 31F8023F 		ldrh	r3, [r1, #2]!
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 31


 1711 0116 0244     		add	r2, r2, r0
 1712 0118 92B2     		uxth	r2, r2
 1713 011a 002B     		cmp	r3, #0
 1714 011c F5D1     		bne	.L448
 1715 011e 98E7     		b	.L370
 1716              	.L409:
 1717 0120 4A46     		mov	r2, r9
 1718 0122 96E7     		b	.L370
 1719              	.L381:
 1720 0124 0428     		cmp	r0, #4
 1721 0126 33D1     		bne	.L438
 1722 0128 88F80B70 		strb	r7, [r8, #11]
 1723 012c E561     		str	r5, [r4, #28]
 1724              	.L369:
 1725 012e BB07     		lsls	r3, r7, #30
 1726 0130 31D4     		bmi	.L449
 1727              	.L413:
 1728 0132 0127     		movs	r7, #1
 1729              	.L384:
 1730 0134 2046     		mov	r0, r4
 1731 0136 0021     		movs	r1, #0
 1732 0138 FFF7FEFF 		bl	dir_sdi
 1733 013c 40BB     		cbnz	r0, .L438
 1734 013e 8046     		mov	r8, r0
 1735 0140 0546     		mov	r5, r0
 1736 0142 05E0     		b	.L393
 1737              	.L416:
 1738 0144 1D46     		mov	r5, r3
 1739              	.L390:
 1740 0146 FFF7FEFF 		bl	dir_next
 1741 014a 0346     		mov	r3, r0
 1742 014c 0028     		cmp	r0, #0
 1743 014e 37D1     		bne	.L394
 1744              	.L393:
 1745 0150 2169     		ldr	r1, [r4, #16]
 1746 0152 2068     		ldr	r0, [r4]
 1747 0154 FFF7FEFF 		bl	move_window
 1748 0158 0346     		mov	r3, r0
 1749 015a 6E1C     		adds	r6, r5, #1
 1750 015c 2046     		mov	r0, r4
 1751 015e 0121     		movs	r1, #1
 1752 0160 002B     		cmp	r3, #0
 1753 0162 2DD1     		bne	.L394
 1754 0164 6269     		ldr	r2, [r4, #20]
 1755 0166 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 1756 0168 E52A     		cmp	r2, #229
 1757 016a 01D0     		beq	.L389
 1758 016c 002A     		cmp	r2, #0
 1759 016e E9D1     		bne	.L416
 1760              	.L389:
 1761 0170 0DB9     		cbnz	r5, .L391
 1762 0172 B4F80680 		ldrh	r8, [r4, #6]
 1763              	.L391:
 1764 0176 B5B2     		uxth	r5, r6
 1765 0178 BD42     		cmp	r5, r7
 1766 017a E4D1     		bne	.L390
 1767 017c 012F     		cmp	r7, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 32


 1768 017e 27D1     		bne	.L406
 1769              	.L403:
 1770 0180 2068     		ldr	r0, [r4]
 1771 0182 2169     		ldr	r1, [r4, #16]
 1772 0184 FFF7FEFF 		bl	move_window
 1773 0188 0646     		mov	r6, r0
 1774 018a 0028     		cmp	r0, #0
 1775 018c 00F09A80 		beq	.L408
 1776              	.L438:
 1777 0190 09B0     		add	sp, sp, #36
 1778              		@ sp needed
 1779 0192 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1780              	.L449:
 1781 0196 2B88     		ldrh	r3, [r5]
 1782 0198 002B     		cmp	r3, #0
 1783 019a CAD0     		beq	.L413
 1784 019c 0023     		movs	r3, #0
 1785              	.L387:
 1786 019e 0133     		adds	r3, r3, #1
 1787 01a0 9BB2     		uxth	r3, r3
 1788 01a2 35F81320 		ldrh	r2, [r5, r3, lsl #1]
 1789 01a6 002A     		cmp	r2, #0
 1790 01a8 F9D1     		bne	.L387
 1791 01aa 534F     		ldr	r7, .L452
 1792 01ac 1933     		adds	r3, r3, #25
 1793 01ae 87FB0327 		smull	r2, r7, r7, r3
 1794 01b2 DB17     		asrs	r3, r3, #31
 1795 01b4 C3EBA707 		rsb	r7, r3, r7, asr #2
 1796 01b8 BFB2     		uxth	r7, r7
 1797 01ba BBE7     		b	.L384
 1798              	.L410:
 1799 01bc 1A46     		mov	r2, r3
 1800 01be 79E7     		b	.L380
 1801              	.L394:
 1802 01c0 1846     		mov	r0, r3
 1803 01c2 09B0     		add	sp, sp, #36
 1804              		@ sp needed
 1805 01c4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1806              	.L447:
 1807 01c8 0720     		movs	r0, #7
 1808 01ca 09B0     		add	sp, sp, #36
 1809              		@ sp needed
 1810 01cc BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1811              	.L406:
 1812 01d0 4146     		mov	r1, r8
 1813 01d2 2046     		mov	r0, r4
 1814 01d4 FFF7FEFF 		bl	dir_sdi
 1815 01d8 0346     		mov	r3, r0
 1816 01da 0028     		cmp	r0, #0
 1817 01dc F0D1     		bne	.L394
 1818 01de A269     		ldr	r2, [r4, #24]
 1819 01e0 8146     		mov	r9, r0
 1820 01e2 02F10B00 		add	r0, r2, #11
 1821              	.L396:
 1822 01e6 12F8013B 		ldrb	r3, [r2], #1	@ zero_extendqisi2
 1823 01ea 4FEAC911 		lsl	r1, r9, #7
 1824 01ee 41EA5909 		orr	r9, r1, r9, lsr #1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 33


 1825 01f2 9944     		add	r9, r9, r3
 1826 01f4 8242     		cmp	r2, r0
 1827 01f6 09F0FF09 		and	r9, r9, #255
 1828 01fa F4D1     		bne	.L396
 1829 01fc 013F     		subs	r7, r7, #1
 1830 01fe BBB2     		uxth	r3, r7
 1831 0200 DFF8F880 		ldr	r8, .L452+4
 1832 0204 CDF80490 		str	r9, [sp, #4]
 1833 0208 A146     		mov	r9, r4
 1834 020a 1C46     		mov	r4, r3
 1835              	.L404:
 1836 020c D9F80000 		ldr	r0, [r9]
 1837 0210 D9F81010 		ldr	r1, [r9, #16]
 1838 0214 FFF7FEFF 		bl	move_window
 1839 0218 0346     		mov	r3, r0
 1840 021a 0028     		cmp	r0, #0
 1841 021c D0D1     		bne	.L394
 1842 021e D9F81450 		ldr	r5, [r9, #20]
 1843 0222 0F26     		movs	r6, #15
 1844 0224 5FFA84FB 		uxtb	fp, r4
 1845 0228 D9F81CA0 		ldr	r10, [r9, #28]
 1846 022c 0BF1FF32 		add	r2, fp, #-1
 1847 0230 EE72     		strb	r6, [r5, #11]
 1848 0232 019E     		ldr	r6, [sp, #4]
 1849 0234 02EB4201 		add	r1, r2, r2, lsl #1
 1850 0238 02EB8101 		add	r1, r2, r1, lsl #2
 1851 023c 2873     		strb	r0, [r5, #12]
 1852 023e 0246     		mov	r2, r0
 1853 0240 A876     		strb	r0, [r5, #26]
 1854 0242 E876     		strb	r0, [r5, #27]
 1855 0244 6E73     		strb	r6, [r5, #13]
 1856 0246 4FF6FF77 		movw	r7, #65535
 1857 024a FF20     		movs	r0, #255
 1858 024c 12E0     		b	.L400
 1859              	.L451:
 1860 024e 3AF81130 		ldrh	r3, [r10, r1, lsl #1]
 1861 0252 18F80260 		ldrb	r6, [r8, r2]	@ zero_extendqisi2
 1862 0256 0132     		adds	r2, r2, #1
 1863 0258 4FEA132C 		lsr	ip, r3, #8
 1864 025c AB55     		strb	r3, [r5, r6]
 1865 025e 05EB060E 		add	lr, r5, r6
 1866 0262 002B     		cmp	r3, #0
 1867 0264 08BF     		it	eq
 1868 0266 3B46     		moveq	r3, r7
 1869 0268 0D2A     		cmp	r2, #13
 1870 026a 01F10101 		add	r1, r1, #1
 1871 026e 8EF801C0 		strb	ip, [lr, #1]
 1872 0272 0BD0     		beq	.L450
 1873              	.L400:
 1874 0274 BB42     		cmp	r3, r7
 1875 0276 EAD1     		bne	.L451
 1876 0278 18F80260 		ldrb	r6, [r8, r2]	@ zero_extendqisi2
 1877 027c 0132     		adds	r2, r2, #1
 1878 027e 05EB060E 		add	lr, r5, r6
 1879 0282 0D2A     		cmp	r2, #13
 1880 0284 A855     		strb	r0, [r5, r6]
 1881 0286 8EF80100 		strb	r0, [lr, #1]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 34


 1882 028a F3D1     		bne	.L400
 1883              	.L450:
 1884 028c 4FF6FF72 		movw	r2, #65535
 1885 0290 9342     		cmp	r3, r2
 1886 0292 02D0     		beq	.L401
 1887 0294 3AF81130 		ldrh	r3, [r10, r1, lsl #1]
 1888 0298 0BB9     		cbnz	r3, .L402
 1889              	.L401:
 1890 029a 4BF0400B 		orr	fp, fp, #64
 1891              	.L402:
 1892 029e 85F800B0 		strb	fp, [r5]
 1893 02a2 D9F80030 		ldr	r3, [r9]
 1894 02a6 0122     		movs	r2, #1
 1895 02a8 1A71     		strb	r2, [r3, #4]
 1896 02aa 4846     		mov	r0, r9
 1897 02ac 0021     		movs	r1, #0
 1898 02ae FFF7FEFF 		bl	dir_next
 1899 02b2 0346     		mov	r3, r0
 1900 02b4 0028     		cmp	r0, #0
 1901 02b6 83D1     		bne	.L394
 1902 02b8 013C     		subs	r4, r4, #1
 1903 02ba A4B2     		uxth	r4, r4
 1904 02bc 002C     		cmp	r4, #0
 1905 02be A5D1     		bne	.L404
 1906 02c0 4C46     		mov	r4, r9
 1907 02c2 5DE7     		b	.L403
 1908              	.L408:
 1909 02c4 6569     		ldr	r5, [r4, #20]
 1910 02c6 3146     		mov	r1, r6
 1911 02c8 2022     		movs	r2, #32
 1912 02ca 2846     		mov	r0, r5
 1913 02cc FFF7FEFF 		bl	memset
 1914 02d0 A369     		ldr	r3, [r4, #24]
 1915 02d2 0122     		movs	r2, #1
 1916 02d4 5968     		ldr	r1, [r3, #4]	@ unaligned
 1917 02d6 1868     		ldr	r0, [r3]	@ unaligned
 1918 02d8 6960     		str	r1, [r5, #4]	@ unaligned
 1919 02da 2860     		str	r0, [r5]	@ unaligned
 1920 02dc 1989     		ldrh	r1, [r3, #8]	@ unaligned
 1921 02de 9B7A     		ldrb	r3, [r3, #10]	@ zero_extendqisi2
 1922 02e0 2981     		strh	r1, [r5, #8]	@ unaligned
 1923 02e2 AB72     		strb	r3, [r5, #10]
 1924 02e4 A369     		ldr	r3, [r4, #24]
 1925 02e6 3046     		mov	r0, r6
 1926 02e8 DB7A     		ldrb	r3, [r3, #11]	@ zero_extendqisi2
 1927 02ea 03F01803 		and	r3, r3, #24
 1928 02ee 2B73     		strb	r3, [r5, #12]
 1929 02f0 2368     		ldr	r3, [r4]
 1930 02f2 1A71     		strb	r2, [r3, #4]
 1931 02f4 4CE7     		b	.L438
 1932              	.L453:
 1933 02f6 00BF     		.align	2
 1934              	.L452:
 1935 02f8 4FECC44E 		.word	1321528399
 1936 02fc 00000000 		.word	.LANCHOR2
 1937              		.size	dir_register, .-dir_register
 1938              		.section	.text.remove_chain.part.6,"ax",%progbits
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 35


 1939              		.align	2
 1940              		.thumb
 1941              		.thumb_func
 1942              		.type	remove_chain.part.6, %function
 1943              	remove_chain.part.6:
 1944              		@ args = 0, pretend = 0, frame = 0
 1945              		@ frame_needed = 0, uses_anonymous_args = 0
 1946 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1947 0002 0446     		mov	r4, r0
 1948 0004 0D46     		mov	r5, r1
 1949 0006 0127     		movs	r7, #1
 1950              	.L455:
 1951 0008 A369     		ldr	r3, [r4, #24]
 1952 000a 2946     		mov	r1, r5
 1953 000c 9D42     		cmp	r5, r3
 1954 000e 20D2     		bcs	.L462
 1955              	.L461:
 1956 0010 012D     		cmp	r5, #1
 1957 0012 0BD9     		bls	.L459
 1958 0014 2046     		mov	r0, r4
 1959 0016 FFF7FEFF 		bl	get_fat.part.3
 1960 001a 0646     		mov	r6, r0
 1961 001c C8B1     		cbz	r0, .L462
 1962 001e 0128     		cmp	r0, #1
 1963 0020 04D0     		beq	.L459
 1964 0022 411C     		adds	r1, r0, #1
 1965 0024 17D0     		beq	.L463
 1966 0026 A369     		ldr	r3, [r4, #24]
 1967 0028 9D42     		cmp	r5, r3
 1968 002a 01D3     		bcc	.L470
 1969              	.L459:
 1970 002c 0220     		movs	r0, #2
 1971 002e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1972              	.L470:
 1973 0030 2946     		mov	r1, r5
 1974 0032 2046     		mov	r0, r4
 1975 0034 0022     		movs	r2, #0
 1976 0036 FFF7FEFF 		bl	put_fat.part.4
 1977 003a 68B9     		cbnz	r0, .L457
 1978 003c 2369     		ldr	r3, [r4, #16]
 1979 003e 3546     		mov	r5, r6
 1980 0040 5A1C     		adds	r2, r3, #1
 1981 0042 E1D0     		beq	.L455
 1982 0044 0133     		adds	r3, r3, #1
 1983 0046 2361     		str	r3, [r4, #16]
 1984 0048 A369     		ldr	r3, [r4, #24]
 1985 004a 6771     		strb	r7, [r4, #5]
 1986 004c 9D42     		cmp	r5, r3
 1987 004e 2946     		mov	r1, r5
 1988 0050 DED3     		bcc	.L461
 1989              	.L462:
 1990 0052 0020     		movs	r0, #0
 1991 0054 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1992              	.L463:
 1993 0056 0120     		movs	r0, #1
 1994              	.L457:
 1995 0058 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 36


 1996              		.size	remove_chain.part.6, .-remove_chain.part.6
 1997 005a 00BF     		.section	.text.follow_path,"ax",%progbits
 1998              		.align	2
 1999              		.thumb
 2000              		.thumb_func
 2001              		.type	follow_path, %function
 2002              	follow_path:
 2003              		@ args = 0, pretend = 0, frame = 8
 2004              		@ frame_needed = 0, uses_anonymous_args = 0
 2005 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2006 0004 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 2007 0006 83B0     		sub	sp, sp, #12
 2008 0008 2F2B     		cmp	r3, #47
 2009 000a 8846     		mov	r8, r1
 2010 000c 0546     		mov	r5, r0
 2011 000e 00F02B81 		beq	.L472
 2012 0012 5C2B     		cmp	r3, #92
 2013 0014 00F02881 		beq	.L472
 2014 0018 0024     		movs	r4, #0
 2015 001a AC60     		str	r4, [r5, #8]
 2016 001c 98F80000 		ldrb	r0, [r8]	@ zero_extendqisi2
 2017 0020 1F28     		cmp	r0, #31
 2018 0022 40F22A81 		bls	.L605
 2019              	.L474:
 2020 0026 A74E     		ldr	r6, .L613
 2021 0028 01E0     		b	.L476
 2022              	.L477:
 2023 002a 18F8010F 		ldrb	r0, [r8, #1]!	@ zero_extendqisi2
 2024              	.L476:
 2025 002e 2F28     		cmp	r0, #47
 2026 0030 FBD0     		beq	.L477
 2027 0032 5C28     		cmp	r0, #92
 2028 0034 F9D0     		beq	.L477
 2029 0036 1F28     		cmp	r0, #31
 2030 0038 EF69     		ldr	r7, [r5, #28]
 2031 003a 40F28B80 		bls	.L528
 2032 003e 2F28     		cmp	r0, #47
 2033 0040 2DD0     		beq	.L530
 2034 0042 5C28     		cmp	r0, #92
 2035 0044 2BD0     		beq	.L530
 2036 0046 0121     		movs	r1, #1
 2037 0048 A7F1020A 		sub	r10, r7, #2
 2038 004c C146     		mov	r9, r8
 2039 004e 0124     		movs	r4, #1
 2040 0050 FFF7FEFF 		bl	ff_convert
 2041 0054 F8B1     		cbz	r0, .L481
 2042              	.L607:
 2043 0056 7F28     		cmp	r0, #127
 2044 0058 09D8     		bhi	.L482
 2045 005a 2228     		cmp	r0, #34
 2046 005c 1BD0     		beq	.L481
 2047 005e 9A4A     		ldr	r2, .L613+4
 2048 0060 01E0     		b	.L483
 2049              	.L606:
 2050 0062 9842     		cmp	r0, r3
 2051 0064 17D0     		beq	.L481
 2052              	.L483:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 37


 2053 0066 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
 2054 006a 002B     		cmp	r3, #0
 2055 006c F9D1     		bne	.L606
 2056              	.L482:
 2057 006e 2AF8020F 		strh	r0, [r10, #2]!	@ movhi
 2058 0072 19F8010F 		ldrb	r0, [r9, #1]!	@ zero_extendqisi2
 2059 0076 631C     		adds	r3, r4, #1
 2060 0078 1F28     		cmp	r0, #31
 2061 007a 6DD9     		bls	.L478
 2062 007c 2F28     		cmp	r0, #47
 2063 007e 10D0     		beq	.L479
 2064 0080 5C28     		cmp	r0, #92
 2065 0082 0ED0     		beq	.L479
 2066 0084 B3F5807F 		cmp	r3, #256
 2067 0088 05D0     		beq	.L481
 2068 008a 0121     		movs	r1, #1
 2069 008c 1C46     		mov	r4, r3
 2070 008e FFF7FEFF 		bl	ff_convert
 2071 0092 0028     		cmp	r0, #0
 2072 0094 DFD1     		bne	.L607
 2073              	.L481:
 2074 0096 0620     		movs	r0, #6
 2075              	.L556:
 2076 0098 03B0     		add	sp, sp, #12
 2077              		@ sp needed
 2078 009a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2079              	.L530:
 2080 009e 0024     		movs	r4, #0
 2081 00a0 0123     		movs	r3, #1
 2082              	.L479:
 2083 00a2 9844     		add	r8, r8, r3
 2084 00a4 4FF0000A 		mov	r10, #0
 2085              	.L521:
 2086 00a8 002C     		cmp	r4, #0
 2087 00aa F4D0     		beq	.L481
 2088 00ac 07EB4400 		add	r0, r7, r4, lsl #1
 2089              	.L487:
 2090 00b0 30F8022D 		ldrh	r2, [r0, #-2]!
 2091 00b4 202A     		cmp	r2, #32
 2092 00b6 01D0     		beq	.L485
 2093 00b8 2E2A     		cmp	r2, #46
 2094 00ba 02D1     		bne	.L486
 2095              	.L485:
 2096 00bc 013C     		subs	r4, r4, #1
 2097 00be F7D1     		bne	.L487
 2098 00c0 E9E7     		b	.L481
 2099              	.L486:
 2100 00c2 4FF00009 		mov	r9, #0
 2101 00c6 2021     		movs	r1, #32
 2102 00c8 0B22     		movs	r2, #11
 2103 00ca 27F81490 		strh	r9, [r7, r4, lsl #1]	@ movhi
 2104 00ce A869     		ldr	r0, [r5, #24]
 2105 00d0 FFF7FEFF 		bl	memset
 2106 00d4 07EB4401 		add	r1, r7, r4, lsl #1
 2107 00d8 BA1E     		subs	r2, r7, #2
 2108 00da 01E0     		b	.L522
 2109              	.L488:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 38


 2110 00dc 09F10109 		add	r9, r9, #1
 2111              	.L522:
 2112 00e0 32F8023F 		ldrh	r3, [r2, #2]!
 2113 00e4 202B     		cmp	r3, #32
 2114 00e6 F9D0     		beq	.L488
 2115 00e8 2E2B     		cmp	r3, #46
 2116 00ea F7D0     		beq	.L488
 2117 00ec B9F1000F 		cmp	r9, #0
 2118 00f0 01D0     		beq	.L489
 2119 00f2 4AF0030A 		orr	r10, r10, #3
 2120              	.L489:
 2121 00f6 0A46     		mov	r2, r1
 2122              	.L490:
 2123 00f8 32F8021D 		ldrh	r1, [r2, #-2]!
 2124 00fc 2E29     		cmp	r1, #46
 2125 00fe 01D0     		beq	.L494
 2126 0100 013C     		subs	r4, r4, #1
 2127 0102 F9D1     		bne	.L490
 2128              	.L494:
 2129 0104 0022     		movs	r2, #0
 2130 0106 1846     		mov	r0, r3
 2131 0108 9446     		mov	ip, r2
 2132 010a 4FF0080B 		mov	fp, #8
 2133              	.L492:
 2134 010e 09F10109 		add	r9, r9, #1
 2135 0112 B0B3     		cbz	r0, .L495
 2136 0114 2028     		cmp	r0, #32
 2137 0116 25D0     		beq	.L496
 2138 0118 2E28     		cmp	r0, #46
 2139 011a 21D0     		beq	.L608
 2140 011c 5A45     		cmp	r2, fp
 2141 011e 26D2     		bcs	.L500
 2142 0120 4C45     		cmp	r4, r9
 2143 0122 7ED0     		beq	.L498
 2144 0124 7F28     		cmp	r0, #127
 2145 0126 00F28880 		bhi	.L609
 2146              	.L505:
 2147 012a 2B28     		cmp	r0, #43
 2148 012c 00F09580 		beq	.L507
 2149 0130 6649     		ldr	r1, .L613+8
 2150 0132 02E0     		b	.L527
 2151              	.L610:
 2152 0134 9842     		cmp	r0, r3
 2153 0136 00F09080 		beq	.L507
 2154              	.L527:
 2155 013a 11F8013F 		ldrb	r3, [r1, #1]!	@ zero_extendqisi2
 2156 013e 002B     		cmp	r3, #0
 2157 0140 F8D1     		bne	.L610
 2158 0142 A0F14103 		sub	r3, r0, #65
 2159 0146 192B     		cmp	r3, #25
 2160 0148 00F2AD80 		bhi	.L611
 2161 014c 4CF0020C 		orr	ip, ip, #2
 2162 0150 C0B2     		uxtb	r0, r0
 2163 0152 85E0     		b	.L510
 2164              	.L528:
 2165 0154 0024     		movs	r4, #0
 2166 0156 0123     		movs	r3, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 39


 2167              	.L478:
 2168 0158 9844     		add	r8, r8, r3
 2169 015a 4FF0040A 		mov	r10, #4
 2170 015e A3E7     		b	.L521
 2171              	.L608:
 2172 0160 4C45     		cmp	r4, r9
 2173 0162 5ED0     		beq	.L498
 2174              	.L496:
 2175 0164 4AF0030A 		orr	r10, r10, #3
 2176              	.L499:
 2177 0168 37F81900 		ldrh	r0, [r7, r9, lsl #1]
 2178 016c CFE7     		b	.L492
 2179              	.L500:
 2180 016e BBF10B0F 		cmp	fp, #11
 2181 0172 00F0A280 		beq	.L526
 2182 0176 4C45     		cmp	r4, r9
 2183 0178 56D0     		beq	.L504
 2184 017a A145     		cmp	r9, r4
 2185 017c 4AF0030A 		orr	r10, r10, #3
 2186 0180 52D9     		bls	.L504
 2187              	.L495:
 2188 0182 AB69     		ldr	r3, [r5, #24]
 2189 0184 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 2190 0186 E52A     		cmp	r2, #229
 2191 0188 00F08280 		beq	.L612
 2192              	.L512:
 2193 018c BBF1080F 		cmp	fp, #8
 2194 0190 04BF     		itt	eq
 2195 0192 4FEA8C0C 		lsleq	ip, ip, #2
 2196 0196 5FFA8CFC 		uxtbeq	ip, ip
 2197 019a 0CF00C02 		and	r2, ip, #12
 2198 019e 0C2A     		cmp	r2, #12
 2199 01a0 73D0     		beq	.L514
 2200 01a2 0CF00301 		and	r1, ip, #3
 2201 01a6 0329     		cmp	r1, #3
 2202 01a8 6FD0     		beq	.L514
 2203              	.L515:
 2204 01aa 1AF0020F 		tst	r10, #2
 2205 01ae 0AD1     		bne	.L516
 2206 01b0 0CF0030C 		and	ip, ip, #3
 2207 01b4 BCF1010F 		cmp	ip, #1
 2208 01b8 08BF     		it	eq
 2209 01ba 4AF0100A 		orreq	r10, r10, #16
 2210 01be 042A     		cmp	r2, #4
 2211 01c0 08BF     		it	eq
 2212 01c2 4AF0080A 		orreq	r10, r10, #8
 2213              	.L516:
 2214 01c6 83F80BA0 		strb	r10, [r3, #11]
 2215 01ca 2846     		mov	r0, r5
 2216 01cc 0021     		movs	r1, #0
 2217 01ce FFF7FEFF 		bl	dir_sdi
 2218 01d2 D0B9     		cbnz	r0, .L518
 2219 01d4 2846     		mov	r0, r5
 2220 01d6 FFF7FEFF 		bl	dir_find.part.5
 2221 01da AB69     		ldr	r3, [r5, #24]
 2222 01dc DB7A     		ldrb	r3, [r3, #11]	@ zero_extendqisi2
 2223 01de B0B9     		cbnz	r0, .L525
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 40


 2224 01e0 5A07     		lsls	r2, r3, #29
 2225 01e2 3FF559AF 		bmi	.L556
 2226 01e6 6A69     		ldr	r2, [r5, #20]
 2227 01e8 D37A     		ldrb	r3, [r2, #11]	@ zero_extendqisi2
 2228 01ea DB06     		lsls	r3, r3, #27
 2229 01ec 54D5     		bpl	.L534
 2230 01ee 107D     		ldrb	r0, [r2, #20]	@ zero_extendqisi2
 2231 01f0 D37E     		ldrb	r3, [r2, #27]	@ zero_extendqisi2
 2232 01f2 917E     		ldrb	r1, [r2, #26]	@ zero_extendqisi2
 2233 01f4 547D     		ldrb	r4, [r2, #21]	@ zero_extendqisi2
 2234 01f6 41EA0323 		orr	r3, r1, r3, lsl #8
 2235 01fa 40EA0422 		orr	r2, r0, r4, lsl #8
 2236 01fe 43EA0243 		orr	r3, r3, r2, lsl #16
 2237 0202 AB60     		str	r3, [r5, #8]
 2238 0204 98F80000 		ldrb	r0, [r8]	@ zero_extendqisi2
 2239 0208 11E7     		b	.L476
 2240              	.L518:
 2241 020a AB69     		ldr	r3, [r5, #24]
 2242 020c DB7A     		ldrb	r3, [r3, #11]	@ zero_extendqisi2
 2243              	.L525:
 2244 020e 0428     		cmp	r0, #4
 2245 0210 7FF442AF 		bne	.L556
 2246 0214 13F0040F 		tst	r3, #4
 2247 0218 08BF     		it	eq
 2248 021a 0520     		moveq	r0, #5
 2249 021c 03B0     		add	sp, sp, #12
 2250              		@ sp needed
 2251 021e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2252              	.L498:
 2253 0222 BBF10B0F 		cmp	fp, #11
 2254 0226 48D0     		beq	.L526
 2255              	.L504:
 2256 0228 4FEA8C0C 		lsl	ip, ip, #2
 2257 022c 5FFA8CFC 		uxtb	ip, ip
 2258 0230 A146     		mov	r9, r4
 2259 0232 4FF00B0B 		mov	fp, #11
 2260 0236 0822     		movs	r2, #8
 2261 0238 96E7     		b	.L499
 2262              	.L609:
 2263 023a 0021     		movs	r1, #0
 2264 023c 8DE80410 		stmia	sp, {r2, ip}
 2265 0240 FFF7FEFF 		bl	ff_convert
 2266 0244 9DE80410 		ldmia	sp, {r2, ip}
 2267 0248 50B3     		cbz	r0, .L506
 2268 024a 3044     		add	r0, r0, r6
 2269 024c 10F8800C 		ldrb	r0, [r0, #-128]	@ zero_extendqisi2
 2270 0250 4AF0020A 		orr	r10, r10, #2
 2271 0254 0028     		cmp	r0, #0
 2272 0256 7FF468AF 		bne	.L505
 2273              	.L507:
 2274 025a 4AF0030A 		orr	r10, r10, #3
 2275 025e 5F20     		movs	r0, #95
 2276              	.L510:
 2277 0260 AB69     		ldr	r3, [r5, #24]
 2278 0262 9854     		strb	r0, [r3, r2]
 2279 0264 0132     		adds	r2, r2, #1
 2280 0266 7FE7     		b	.L499
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 41


 2281              	.L472:
 2282 0268 0024     		movs	r4, #0
 2283 026a 08F10108 		add	r8, r8, #1
 2284 026e AC60     		str	r4, [r5, #8]
 2285 0270 98F80000 		ldrb	r0, [r8]	@ zero_extendqisi2
 2286 0274 1F28     		cmp	r0, #31
 2287 0276 3FF6D6AE 		bhi	.L474
 2288              	.L605:
 2289 027a 2846     		mov	r0, r5
 2290 027c 2146     		mov	r1, r4
 2291 027e FFF7FEFF 		bl	dir_sdi
 2292 0282 6C61     		str	r4, [r5, #20]
 2293 0284 03B0     		add	sp, sp, #12
 2294              		@ sp needed
 2295 0286 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2296              	.L514:
 2297 028a 4AF0020A 		orr	r10, r10, #2
 2298 028e 8CE7     		b	.L515
 2299              	.L612:
 2300 0290 0522     		movs	r2, #5
 2301 0292 1A70     		strb	r2, [r3]
 2302 0294 AB69     		ldr	r3, [r5, #24]
 2303 0296 79E7     		b	.L512
 2304              	.L534:
 2305 0298 0520     		movs	r0, #5
 2306 029a 03B0     		add	sp, sp, #12
 2307              		@ sp needed
 2308 029c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2309              	.L506:
 2310 02a0 4AF0020A 		orr	r10, r10, #2
 2311 02a4 D9E7     		b	.L507
 2312              	.L611:
 2313 02a6 A0F16103 		sub	r3, r0, #97
 2314 02aa 192B     		cmp	r3, #25
 2315 02ac 97BF     		itett	ls
 2316 02ae 2038     		subls	r0, r0, #32
 2317 02b0 C0B2     		uxtbhi	r0, r0
 2318 02b2 C0B2     		uxtbls	r0, r0
 2319 02b4 4CF0010C 		orrls	ip, ip, #1
 2320 02b8 D2E7     		b	.L510
 2321              	.L526:
 2322 02ba 4AF0030A 		orr	r10, r10, #3
 2323 02be 4FF00B0B 		mov	fp, #11
 2324 02c2 5EE7     		b	.L495
 2325              	.L614:
 2326              		.align	2
 2327              	.L613:
 2328 02c4 00000000 		.word	.LANCHOR3
 2329 02c8 00000000 		.word	.LC0
 2330 02cc 0C000000 		.word	.LC1
 2331              		.size	follow_path, .-follow_path
 2332              		.section	.text.f_mount,"ax",%progbits
 2333              		.align	2
 2334              		.global	f_mount
 2335              		.thumb
 2336              		.thumb_func
 2337              		.type	f_mount, %function
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 42


 2338              	f_mount:
 2339              		@ args = 0, pretend = 0, frame = 0
 2340              		@ frame_needed = 0, uses_anonymous_args = 0
 2341              		@ link register save eliminated.
 2342 0000 0128     		cmp	r0, #1
 2343 0002 10B4     		push	{r4}
 2344 0004 03D9     		bls	.L626
 2345 0006 0B20     		movs	r0, #11
 2346 0008 5DF8044B 		ldr	r4, [sp], #4
 2347 000c 7047     		bx	lr
 2348              	.L626:
 2349 000e 074B     		ldr	r3, .L627
 2350 0010 53F82020 		ldr	r2, [r3, r0, lsl #2]
 2351 0014 0AB1     		cbz	r2, .L617
 2352 0016 0024     		movs	r4, #0
 2353 0018 1470     		strb	r4, [r2]
 2354              	.L617:
 2355 001a 09B1     		cbz	r1, .L618
 2356 001c 0022     		movs	r2, #0
 2357 001e 0A70     		strb	r2, [r1]
 2358              	.L618:
 2359 0020 43F82010 		str	r1, [r3, r0, lsl #2]
 2360 0024 5DF8044B 		ldr	r4, [sp], #4
 2361 0028 0020     		movs	r0, #0
 2362 002a 7047     		bx	lr
 2363              	.L628:
 2364              		.align	2
 2365              	.L627:
 2366 002c 00000000 		.word	.LANCHOR0
 2367              		.size	f_mount, .-f_mount
 2368              		.section	.text.f_open,"ax",%progbits
 2369              		.align	2
 2370              		.global	f_open
 2371              		.thumb
 2372              		.thumb_func
 2373              		.type	f_open, %function
 2374              	f_open:
 2375              		@ args = 0, pretend = 0, frame = 568
 2376              		@ frame_needed = 0, uses_anonymous_args = 0
 2377 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 2378 0004 0023     		movs	r3, #0
 2379 0006 ADF50E7D 		sub	sp, sp, #568
 2380 000a 0360     		str	r3, [r0]
 2381 000c 1646     		mov	r6, r2
 2382 000e 0191     		str	r1, [sp, #4]
 2383 0010 02F01E02 		and	r2, r2, #30
 2384 0014 0546     		mov	r5, r0
 2385 0016 05A9     		add	r1, sp, #20
 2386 0018 01A8     		add	r0, sp, #4
 2387 001a FFF7FEFF 		bl	chk_mounted
 2388 001e 02AB     		add	r3, sp, #8
 2389 0020 0EAA     		add	r2, sp, #56
 2390 0022 0B93     		str	r3, [sp, #44]
 2391 0024 0C92     		str	r2, [sp, #48]
 2392 0026 06F01F07 		and	r7, r6, #31
 2393 002a 0028     		cmp	r0, #0
 2394 002c 45D0     		beq	.L664
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 43


 2395              	.L630:
 2396 002e 16F01C0F 		tst	r6, #28
 2397 0032 3ED0     		beq	.L656
 2398 0034 0428     		cmp	r0, #4
 2399 0036 3CD1     		bne	.L656
 2400 0038 05A8     		add	r0, sp, #20
 2401 003a FFF7FEFF 		bl	dir_register
 2402 003e 47F00807 		orr	r7, r7, #8
 2403 0042 0A9C     		ldr	r4, [sp, #40]
 2404 0044 A8BB     		cbnz	r0, .L656
 2405              	.L632:
 2406 0046 3807     		lsls	r0, r7, #28
 2407 0048 01D4     		bmi	.L665
 2408 004a 059B     		ldr	r3, [sp, #20]
 2409 004c 59E0     		b	.L641
 2410              	.L665:
 2411 004e FFF7FEFF 		bl	get_fattime
 2412 0052 94F815C0 		ldrb	ip, [r4, #21]	@ zero_extendqisi2
 2413 0056 A27E     		ldrb	r2, [r4, #26]	@ zero_extendqisi2
 2414 0058 267D     		ldrb	r6, [r4, #20]	@ zero_extendqisi2
 2415 005a E17E     		ldrb	r1, [r4, #27]	@ zero_extendqisi2
 2416 005c 46EA0C26 		orr	r6, r6, ip, lsl #8
 2417 0060 42EA0121 		orr	r1, r2, r1, lsl #8
 2418 0064 059B     		ldr	r3, [sp, #20]
 2419 0066 0022     		movs	r2, #0
 2420 0068 C0F3072A 		ubfx	r10, r0, #8, #8
 2421 006c 4FEA1049 		lsr	r9, r0, #16
 2422 0070 4FEA1068 		lsr	r8, r0, #24
 2423 0074 4FF0010C 		mov	ip, #1
 2424 0078 51EA0646 		orrs	r6, r1, r6, lsl #16
 2425 007c A073     		strb	r0, [r4, #14]
 2426 007e 84F80FA0 		strb	r10, [r4, #15]
 2427 0082 84F81090 		strb	r9, [r4, #16]
 2428 0086 84F81180 		strb	r8, [r4, #17]
 2429 008a E272     		strb	r2, [r4, #11]
 2430 008c 2277     		strb	r2, [r4, #28]
 2431 008e 6277     		strb	r2, [r4, #29]
 2432 0090 A277     		strb	r2, [r4, #30]
 2433 0092 E277     		strb	r2, [r4, #31]
 2434 0094 A276     		strb	r2, [r4, #26]
 2435 0096 E276     		strb	r2, [r4, #27]
 2436 0098 2275     		strb	r2, [r4, #20]
 2437 009a 6275     		strb	r2, [r4, #21]
 2438 009c 83F804C0 		strb	ip, [r3, #4]
 2439 00a0 2DD0     		beq	.L636
 2440 00a2 6645     		cmp	r6, ip
 2441 00a4 D3F82C80 		ldr	r8, [r3, #44]
 2442 00a8 02D0     		beq	.L650
 2443 00aa 9A69     		ldr	r2, [r3, #24]
 2444 00ac 9642     		cmp	r6, r2
 2445 00ae 52D3     		bcc	.L666
 2446              	.L650:
 2447 00b0 0220     		movs	r0, #2
 2448              	.L656:
 2449 00b2 0DF50E7D 		add	sp, sp, #568
 2450              		@ sp needed
 2451 00b6 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 44


 2452              	.L664:
 2453 00ba 0199     		ldr	r1, [sp, #4]
 2454 00bc 05A8     		add	r0, sp, #20
 2455 00be FFF7FEFF 		bl	follow_path
 2456 00c2 0A9C     		ldr	r4, [sp, #40]
 2457 00c4 0028     		cmp	r0, #0
 2458 00c6 B2D1     		bne	.L630
 2459 00c8 002C     		cmp	r4, #0
 2460 00ca 3ED0     		beq	.L667
 2461 00cc 16F01C0F 		tst	r6, #28
 2462 00d0 E37A     		ldrb	r3, [r4, #11]	@ zero_extendqisi2
 2463 00d2 06D0     		beq	.L644
 2464 00d4 13F0110F 		tst	r3, #17
 2465 00d8 3BD1     		bne	.L652
 2466 00da 7607     		lsls	r6, r6, #29
 2467 00dc B3D5     		bpl	.L632
 2468 00de 0820     		movs	r0, #8
 2469 00e0 E7E7     		b	.L656
 2470              	.L644:
 2471 00e2 D906     		lsls	r1, r3, #27
 2472 00e4 04D5     		bpl	.L668
 2473 00e6 0420     		movs	r0, #4
 2474 00e8 0DF50E7D 		add	sp, sp, #568
 2475              		@ sp needed
 2476 00ec BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2477              	.L668:
 2478 00f0 B207     		lsls	r2, r6, #30
 2479 00f2 2CD4     		bmi	.L639
 2480              	.L663:
 2481 00f4 06F00806 		and	r6, r6, #8
 2482 00f8 F6B2     		uxtb	r6, r6
 2483 00fa 059B     		ldr	r3, [sp, #20]
 2484 00fc 0EB1     		cbz	r6, .L641
 2485              	.L636:
 2486 00fe 47F02007 		orr	r7, r7, #32
 2487              	.L641:
 2488 0102 DA6A     		ldr	r2, [r3, #44]
 2489 0104 AF71     		strb	r7, [r5, #6]
 2490 0106 2C62     		str	r4, [r5, #32]
 2491 0108 EA61     		str	r2, [r5, #28]
 2492 010a A07E     		ldrb	r0, [r4, #26]	@ zero_extendqisi2
 2493 010c 667D     		ldrb	r6, [r4, #21]	@ zero_extendqisi2
 2494 010e 217D     		ldrb	r1, [r4, #20]	@ zero_extendqisi2
 2495 0110 E27E     		ldrb	r2, [r4, #27]	@ zero_extendqisi2
 2496 0112 41EA0621 		orr	r1, r1, r6, lsl #8
 2497 0116 40EA0222 		orr	r2, r0, r2, lsl #8
 2498 011a 42EA0142 		orr	r2, r2, r1, lsl #16
 2499 011e 2A61     		str	r2, [r5, #16]
 2500 0120 A17F     		ldrb	r1, [r4, #30]	@ zero_extendqisi2
 2501 0122 E07F     		ldrb	r0, [r4, #31]	@ zero_extendqisi2
 2502 0124 227F     		ldrb	r2, [r4, #28]	@ zero_extendqisi2
 2503 0126 0904     		lsls	r1, r1, #16
 2504 0128 41EA0061 		orr	r1, r1, r0, lsl #24
 2505 012c 607F     		ldrb	r0, [r4, #29]	@ zero_extendqisi2
 2506 012e 1143     		orrs	r1, r1, r2
 2507 0130 DA88     		ldrh	r2, [r3, #6]
 2508 0132 41EA0021 		orr	r1, r1, r0, lsl #8
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 45


 2509 0136 0020     		movs	r0, #0
 2510 0138 E960     		str	r1, [r5, #12]
 2511 013a 2B60     		str	r3, [r5]
 2512 013c AA80     		strh	r2, [r5, #4]	@ movhi
 2513 013e A860     		str	r0, [r5, #8]
 2514 0140 A861     		str	r0, [r5, #24]
 2515 0142 0DF50E7D 		add	sp, sp, #568
 2516              		@ sp needed
 2517 0146 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2518              	.L667:
 2519 014a 0620     		movs	r0, #6
 2520 014c 6FE7     		b	.L630
 2521              	.L639:
 2522 014e DB07     		lsls	r3, r3, #31
 2523 0150 D0D5     		bpl	.L663
 2524              	.L652:
 2525 0152 0720     		movs	r0, #7
 2526 0154 ADE7     		b	.L656
 2527              	.L666:
 2528 0156 1846     		mov	r0, r3
 2529 0158 3146     		mov	r1, r6
 2530 015a FFF7FEFF 		bl	remove_chain.part.6
 2531 015e 0028     		cmp	r0, #0
 2532 0160 A7D1     		bne	.L656
 2533 0162 0598     		ldr	r0, [sp, #20]
 2534 0164 013E     		subs	r6, r6, #1
 2535 0166 4146     		mov	r1, r8
 2536 0168 C660     		str	r6, [r0, #12]
 2537 016a FFF7FEFF 		bl	move_window
 2538 016e 0028     		cmp	r0, #0
 2539 0170 9FD1     		bne	.L656
 2540 0172 059B     		ldr	r3, [sp, #20]
 2541 0174 C3E7     		b	.L636
 2542              		.size	f_open, .-f_open
 2543 0176 00BF     		.section	.text.f_read,"ax",%progbits
 2544              		.align	2
 2545              		.global	f_read
 2546              		.thumb
 2547              		.thumb_func
 2548              		.type	f_read, %function
 2549              	f_read:
 2550              		@ args = 0, pretend = 0, frame = 0
 2551              		@ frame_needed = 0, uses_anonymous_args = 0
 2552 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 2553 0004 0446     		mov	r4, r0
 2554 0006 9846     		mov	r8, r3
 2555 0008 0023     		movs	r3, #0
 2556 000a 0F46     		mov	r7, r1
 2557 000c C8F80030 		str	r3, [r8]
 2558 0010 0068     		ldr	r0, [r0]
 2559 0012 A188     		ldrh	r1, [r4, #4]
 2560 0014 1546     		mov	r5, r2
 2561 0016 FFF7FEFF 		bl	validate
 2562 001a 28B9     		cbnz	r0, .L670
 2563 001c A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 2564 001e 1E06     		lsls	r6, r3, #24
 2565 0020 04D4     		bmi	.L692
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 46


 2566 0022 D807     		lsls	r0, r3, #31
 2567 0024 05D4     		bmi	.L704
 2568 0026 0720     		movs	r0, #7
 2569              	.L670:
 2570 0028 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2571              	.L692:
 2572 002c 0220     		movs	r0, #2
 2573 002e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2574              	.L704:
 2575 0032 A168     		ldr	r1, [r4, #8]
 2576 0034 E668     		ldr	r6, [r4, #12]
 2577 0036 761A     		subs	r6, r6, r1
 2578 0038 B542     		cmp	r5, r6
 2579 003a 38BF     		it	cc
 2580 003c 2E46     		movcc	r6, r5
 2581 003e 06BB     		cbnz	r6, .L690
 2582 0040 84E0     		b	.L689
 2583              	.L705:
 2584 0042 A169     		ldr	r1, [r4, #24]
 2585              	.L673:
 2586 0044 C5F50075 		rsb	r5, r5, #512
 2587 0048 B542     		cmp	r5, r6
 2588 004a 28BF     		it	cs
 2589 004c 3546     		movcs	r5, r6
 2590 004e FFF7FEFF 		bl	move_window
 2591 0052 0028     		cmp	r0, #0
 2592 0054 6FD1     		bne	.L703
 2593 0056 A268     		ldr	r2, [r4, #8]
 2594 0058 2368     		ldr	r3, [r4]
 2595 005a C2F30802 		ubfx	r2, r2, #0, #9
 2596 005e 02F13001 		add	r1, r2, #48
 2597 0062 1944     		add	r1, r1, r3
 2598 0064 3846     		mov	r0, r7
 2599 0066 2A46     		mov	r2, r5
 2600 0068 FFF7FEFF 		bl	memcpy
 2601              	.L687:
 2602 006c A168     		ldr	r1, [r4, #8]
 2603 006e D8F80030 		ldr	r3, [r8]
 2604 0072 2944     		add	r1, r1, r5
 2605 0074 2B44     		add	r3, r3, r5
 2606 0076 761B     		subs	r6, r6, r5
 2607 0078 A160     		str	r1, [r4, #8]
 2608 007a 2F44     		add	r7, r7, r5
 2609 007c C8F80030 		str	r3, [r8]
 2610 0080 64D0     		beq	.L689
 2611              	.L690:
 2612 0082 C1F30805 		ubfx	r5, r1, #0, #9
 2613 0086 2068     		ldr	r0, [r4]
 2614 0088 002D     		cmp	r5, #0
 2615 008a DAD1     		bne	.L705
 2616 008c 8378     		ldrb	r3, [r0, #2]	@ zero_extendqisi2
 2617 008e 013B     		subs	r3, r3, #1
 2618 0090 03EA5123 		and	r3, r3, r1, lsr #9
 2619 0094 13F0FF09 		ands	r9, r3, #255
 2620 0098 37D0     		beq	.L674
 2621 009a 6269     		ldr	r2, [r4, #20]
 2622              	.L675:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 47


 2623 009c 8369     		ldr	r3, [r0, #24]
 2624 009e 023A     		subs	r2, r2, #2
 2625 00a0 023B     		subs	r3, r3, #2
 2626 00a2 9A42     		cmp	r2, r3
 2627 00a4 40D2     		bcs	.L681
 2628 00a6 8378     		ldrb	r3, [r0, #2]	@ zero_extendqisi2
 2629 00a8 816A     		ldr	r1, [r0, #40]
 2630 00aa 03FB0212 		mla	r2, r3, r2, r1
 2631 00ae 002A     		cmp	r2, #0
 2632 00b0 3AD0     		beq	.L681
 2633 00b2 5FEA562A 		lsrs	r10, r6, #9
 2634 00b6 02EB0905 		add	r5, r2, r9
 2635 00ba 20D0     		beq	.L683
 2636 00bc BA07     		lsls	r2, r7, #30
 2637 00be 1ED1     		bne	.L683
 2638 00c0 09EB0A02 		add	r2, r9, r10
 2639 00c4 9A42     		cmp	r2, r3
 2640 00c6 88BF     		it	hi
 2641 00c8 C9EB030A 		rsbhi	r10, r9, r3
 2642 00cc 4078     		ldrb	r0, [r0, #1]	@ zero_extendqisi2
 2643 00ce 3946     		mov	r1, r7
 2644 00d0 2A46     		mov	r2, r5
 2645 00d2 5FFA8AF3 		uxtb	r3, r10
 2646 00d6 FFF7FEFF 		bl	disk_read
 2647 00da 60BB     		cbnz	r0, .L703
 2648 00dc 2168     		ldr	r1, [r4]
 2649 00de 0A79     		ldrb	r2, [r1, #4]	@ zero_extendqisi2
 2650 00e0 52B1     		cbz	r2, .L686
 2651 00e2 CA6A     		ldr	r2, [r1, #44]
 2652 00e4 501B     		subs	r0, r2, r5
 2653 00e6 8245     		cmp	r10, r0
 2654 00e8 06D9     		bls	.L686
 2655 00ea 07EB4020 		add	r0, r7, r0, lsl #9
 2656 00ee 3031     		adds	r1, r1, #48
 2657 00f0 4FF40072 		mov	r2, #512
 2658 00f4 FFF7FEFF 		bl	memcpy
 2659              	.L686:
 2660 00f8 4FEA4A25 		lsl	r5, r10, #9
 2661 00fc B6E7     		b	.L687
 2662              	.L683:
 2663 00fe A368     		ldr	r3, [r4, #8]
 2664 0100 A561     		str	r5, [r4, #24]
 2665 0102 2946     		mov	r1, r5
 2666 0104 C3F30805 		ubfx	r5, r3, #0, #9
 2667 0108 9CE7     		b	.L673
 2668              	.L674:
 2669 010a 39B9     		cbnz	r1, .L676
 2670 010c 2269     		ldr	r2, [r4, #16]
 2671              	.L677:
 2672 010e 012A     		cmp	r2, #1
 2673 0110 0AD9     		bls	.L681
 2674 0112 511C     		adds	r1, r2, #1
 2675 0114 0FD0     		beq	.L703
 2676 0116 2068     		ldr	r0, [r4]
 2677 0118 6261     		str	r2, [r4, #20]
 2678 011a BFE7     		b	.L675
 2679              	.L676:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 48


 2680 011c 6169     		ldr	r1, [r4, #20]
 2681 011e 0129     		cmp	r1, #1
 2682 0120 02D9     		bls	.L681
 2683 0122 8369     		ldr	r3, [r0, #24]
 2684 0124 9942     		cmp	r1, r3
 2685 0126 0DD3     		bcc	.L706
 2686              	.L681:
 2687 0128 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 2688 012a 0220     		movs	r0, #2
 2689 012c 63F07F03 		orn	r3, r3, #127
 2690 0130 A371     		strb	r3, [r4, #6]
 2691 0132 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2692              	.L703:
 2693 0136 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 2694 0138 0120     		movs	r0, #1
 2695 013a 63F07F03 		orn	r3, r3, #127
 2696 013e A371     		strb	r3, [r4, #6]
 2697 0140 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2698              	.L706:
 2699 0144 FFF7FEFF 		bl	get_fat.part.3
 2700 0148 0246     		mov	r2, r0
 2701 014a E0E7     		b	.L677
 2702              	.L689:
 2703 014c 0020     		movs	r0, #0
 2704 014e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2705              		.size	f_read, .-f_read
 2706 0152 00BF     		.section	.text.f_write,"ax",%progbits
 2707              		.align	2
 2708              		.global	f_write
 2709              		.thumb
 2710              		.thumb_func
 2711              		.type	f_write, %function
 2712              	f_write:
 2713              		@ args = 0, pretend = 0, frame = 0
 2714              		@ frame_needed = 0, uses_anonymous_args = 0
 2715 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2716 0004 0446     		mov	r4, r0
 2717 0006 9846     		mov	r8, r3
 2718 0008 0023     		movs	r3, #0
 2719 000a 0F46     		mov	r7, r1
 2720 000c C8F80030 		str	r3, [r8]
 2721 0010 0068     		ldr	r0, [r0]
 2722 0012 A188     		ldrh	r1, [r4, #4]
 2723 0014 1646     		mov	r6, r2
 2724 0016 FFF7FEFF 		bl	validate
 2725 001a 28B9     		cbnz	r0, .L708
 2726 001c A279     		ldrb	r2, [r4, #6]	@ zero_extendqisi2
 2727 001e 1506     		lsls	r5, r2, #24
 2728 0020 04D4     		bmi	.L736
 2729 0022 9007     		lsls	r0, r2, #30
 2730 0024 05D4     		bmi	.L742
 2731 0026 0720     		movs	r0, #7
 2732              	.L708:
 2733 0028 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2734              	.L736:
 2735 002c 0220     		movs	r0, #2
 2736 002e BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 49


 2737              	.L742:
 2738 0032 E168     		ldr	r1, [r4, #12]
 2739 0034 A368     		ldr	r3, [r4, #8]
 2740 0036 CE42     		cmn	r6, r1
 2741 0038 08D3     		bcc	.L709
 2742              	.L710:
 2743 003a 42F02002 		orr	r2, r2, #32
 2744 003e 9942     		cmp	r1, r3
 2745 0040 A271     		strb	r2, [r4, #6]
 2746 0042 38BF     		it	cc
 2747 0044 E360     		strcc	r3, [r4, #12]
 2748 0046 0020     		movs	r0, #0
 2749 0048 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2750              	.L709:
 2751 004c 4FF00109 		mov	r9, #1
 2752 0050 2EBB     		cbnz	r6, .L733
 2753 0052 F2E7     		b	.L710
 2754              	.L744:
 2755 0054 A169     		ldr	r1, [r4, #24]
 2756 0056 2068     		ldr	r0, [r4]
 2757              	.L713:
 2758 0058 C5F50075 		rsb	r5, r5, #512
 2759 005c B542     		cmp	r5, r6
 2760 005e 28BF     		it	cs
 2761 0060 3546     		movcs	r5, r6
 2762 0062 FFF7FEFF 		bl	move_window
 2763 0066 0028     		cmp	r0, #0
 2764 0068 7AD1     		bne	.L741
 2765 006a A268     		ldr	r2, [r4, #8]
 2766 006c 2368     		ldr	r3, [r4]
 2767 006e C2F30802 		ubfx	r2, r2, #0, #9
 2768 0072 02F13000 		add	r0, r2, #48
 2769 0076 1844     		add	r0, r0, r3
 2770 0078 3946     		mov	r1, r7
 2771 007a 2A46     		mov	r2, r5
 2772 007c FFF7FEFF 		bl	memcpy
 2773 0080 2368     		ldr	r3, [r4]
 2774 0082 83F80490 		strb	r9, [r3, #4]
 2775              	.L728:
 2776 0086 A368     		ldr	r3, [r4, #8]
 2777 0088 D8F80020 		ldr	r2, [r8]
 2778 008c 2B44     		add	r3, r3, r5
 2779 008e 2A44     		add	r2, r2, r5
 2780 0090 761B     		subs	r6, r6, r5
 2781 0092 A360     		str	r3, [r4, #8]
 2782 0094 2F44     		add	r7, r7, r5
 2783 0096 C8F80020 		str	r2, [r8]
 2784 009a 00F08280 		beq	.L743
 2785              	.L733:
 2786 009e C3F30805 		ubfx	r5, r3, #0, #9
 2787 00a2 002D     		cmp	r5, #0
 2788 00a4 D6D1     		bne	.L744
 2789 00a6 2068     		ldr	r0, [r4]
 2790 00a8 8178     		ldrb	r1, [r0, #2]	@ zero_extendqisi2
 2791 00aa 0139     		subs	r1, r1, #1
 2792 00ac 01EA5321 		and	r1, r1, r3, lsr #9
 2793 00b0 11F0FF0B 		ands	fp, r1, #255
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 50


 2794 00b4 0AD1     		bne	.L714
 2795 00b6 002B     		cmp	r3, #0
 2796 00b8 48D1     		bne	.L715
 2797 00ba 2369     		ldr	r3, [r4, #16]
 2798 00bc 002B     		cmp	r3, #0
 2799 00be 5DD0     		beq	.L745
 2800              	.L716:
 2801 00c0 012B     		cmp	r3, #1
 2802 00c2 71D0     		beq	.L722
 2803 00c4 591C     		adds	r1, r3, #1
 2804 00c6 4BD0     		beq	.L741
 2805 00c8 2068     		ldr	r0, [r4]
 2806 00ca 6361     		str	r3, [r4, #20]
 2807              	.L714:
 2808 00cc C26A     		ldr	r2, [r0, #44]
 2809 00ce A369     		ldr	r3, [r4, #24]
 2810 00d0 9A42     		cmp	r2, r3
 2811 00d2 4CD0     		beq	.L746
 2812              	.L720:
 2813 00d4 6169     		ldr	r1, [r4, #20]
 2814 00d6 8369     		ldr	r3, [r0, #24]
 2815 00d8 A1F1020A 		sub	r10, r1, #2
 2816 00dc 023B     		subs	r3, r3, #2
 2817 00de 9A45     		cmp	r10, r3
 2818 00e0 62D2     		bcs	.L722
 2819 00e2 8378     		ldrb	r3, [r0, #2]	@ zero_extendqisi2
 2820 00e4 816A     		ldr	r1, [r0, #40]
 2821 00e6 0AFB0311 		mla	r1, r10, r3, r1
 2822 00ea 0029     		cmp	r1, #0
 2823 00ec 5CD0     		beq	.L722
 2824 00ee 750A     		lsrs	r5, r6, #9
 2825 00f0 0BEB010A 		add	r10, fp, r1
 2826 00f4 17D0     		beq	.L724
 2827 00f6 BA07     		lsls	r2, r7, #30
 2828 00f8 15D1     		bne	.L724
 2829 00fa 0BEB0502 		add	r2, fp, r5
 2830 00fe 9A42     		cmp	r2, r3
 2831 0100 88BF     		it	hi
 2832 0102 CBEB0305 		rsbhi	r5, fp, r3
 2833 0106 4078     		ldrb	r0, [r0, #1]	@ zero_extendqisi2
 2834 0108 3946     		mov	r1, r7
 2835 010a 5246     		mov	r2, r10
 2836 010c EBB2     		uxtb	r3, r5
 2837 010e FFF7FEFF 		bl	disk_write
 2838 0112 8346     		mov	fp, r0
 2839 0114 20BB     		cbnz	r0, .L741
 2840 0116 2068     		ldr	r0, [r4]
 2841 0118 C16A     		ldr	r1, [r0, #44]
 2842 011a CAEB0101 		rsb	r1, r10, r1
 2843 011e 8D42     		cmp	r5, r1
 2844 0120 34D8     		bhi	.L747
 2845              	.L727:
 2846 0122 6D02     		lsls	r5, r5, #9
 2847 0124 AFE7     		b	.L728
 2848              	.L724:
 2849 0126 A568     		ldr	r5, [r4, #8]
 2850 0128 E368     		ldr	r3, [r4, #12]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 51


 2851 012a 9D42     		cmp	r5, r3
 2852 012c 05D2     		bcs	.L748
 2853              	.L729:
 2854 012e C4F818A0 		str	r10, [r4, #24]
 2855 0132 C5F30805 		ubfx	r5, r5, #0, #9
 2856 0136 5146     		mov	r1, r10
 2857 0138 8EE7     		b	.L713
 2858              	.L748:
 2859 013a 0021     		movs	r1, #0
 2860 013c FFF7FEFF 		bl	move_window
 2861 0140 70B9     		cbnz	r0, .L741
 2862 0142 2068     		ldr	r0, [r4]
 2863 0144 A568     		ldr	r5, [r4, #8]
 2864 0146 C0F82CA0 		str	r10, [r0, #44]
 2865 014a F0E7     		b	.L729
 2866              	.L715:
 2867 014c 6169     		ldr	r1, [r4, #20]
 2868 014e FFF7FEFF 		bl	create_chain
 2869 0152 0346     		mov	r3, r0
 2870 0154 002B     		cmp	r3, #0
 2871 0156 B3D1     		bne	.L716
 2872              	.L749:
 2873 0158 A368     		ldr	r3, [r4, #8]
 2874 015a E168     		ldr	r1, [r4, #12]
 2875 015c A279     		ldrb	r2, [r4, #6]	@ zero_extendqisi2
 2876 015e 6CE7     		b	.L710
 2877              	.L741:
 2878 0160 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 2879 0162 0120     		movs	r0, #1
 2880 0164 63F07F03 		orn	r3, r3, #127
 2881 0168 A371     		strb	r3, [r4, #6]
 2882 016a BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2883              	.L746:
 2884 016e 0021     		movs	r1, #0
 2885 0170 FFF7FEFF 		bl	move_window
 2886 0174 0028     		cmp	r0, #0
 2887 0176 F3D1     		bne	.L741
 2888 0178 2068     		ldr	r0, [r4]
 2889 017a ABE7     		b	.L720
 2890              	.L745:
 2891 017c 5946     		mov	r1, fp
 2892 017e FFF7FEFF 		bl	create_chain
 2893 0182 0346     		mov	r3, r0
 2894 0184 2061     		str	r0, [r4, #16]
 2895 0186 002B     		cmp	r3, #0
 2896 0188 9AD1     		bne	.L716
 2897 018a E5E7     		b	.L749
 2898              	.L747:
 2899 018c 3030     		adds	r0, r0, #48
 2900 018e 07EB4121 		add	r1, r7, r1, lsl #9
 2901 0192 4FF40072 		mov	r2, #512
 2902 0196 FFF7FEFF 		bl	memcpy
 2903 019a 2368     		ldr	r3, [r4]
 2904 019c 83F804B0 		strb	fp, [r3, #4]
 2905 01a0 BFE7     		b	.L727
 2906              	.L743:
 2907 01a2 E168     		ldr	r1, [r4, #12]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 52


 2908 01a4 A279     		ldrb	r2, [r4, #6]	@ zero_extendqisi2
 2909 01a6 48E7     		b	.L710
 2910              	.L722:
 2911 01a8 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 2912 01aa 0220     		movs	r0, #2
 2913 01ac 63F07F03 		orn	r3, r3, #127
 2914 01b0 A371     		strb	r3, [r4, #6]
 2915 01b2 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2916              		.size	f_write, .-f_write
 2917 01b6 00BF     		.section	.text.f_sync,"ax",%progbits
 2918              		.align	2
 2919              		.global	f_sync
 2920              		.thumb
 2921              		.thumb_func
 2922              		.type	f_sync, %function
 2923              	f_sync:
 2924              		@ args = 0, pretend = 0, frame = 0
 2925              		@ frame_needed = 0, uses_anonymous_args = 0
 2926 0000 38B5     		push	{r3, r4, r5, lr}
 2927 0002 0446     		mov	r4, r0
 2928 0004 A188     		ldrh	r1, [r4, #4]
 2929 0006 0068     		ldr	r0, [r0]
 2930 0008 FFF7FEFF 		bl	validate
 2931 000c 10B9     		cbnz	r0, .L751
 2932 000e A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 2933 0010 9B06     		lsls	r3, r3, #26
 2934 0012 00D4     		bmi	.L755
 2935              	.L751:
 2936 0014 38BD     		pop	{r3, r4, r5, pc}
 2937              	.L755:
 2938 0016 2068     		ldr	r0, [r4]
 2939 0018 E169     		ldr	r1, [r4, #28]
 2940 001a FFF7FEFF 		bl	move_window
 2941 001e 0028     		cmp	r0, #0
 2942 0020 F8D1     		bne	.L751
 2943 0022 256A     		ldr	r5, [r4, #32]
 2944 0024 EB7A     		ldrb	r3, [r5, #11]	@ zero_extendqisi2
 2945 0026 43F02003 		orr	r3, r3, #32
 2946 002a EB72     		strb	r3, [r5, #11]
 2947 002c E368     		ldr	r3, [r4, #12]
 2948 002e 2B77     		strb	r3, [r5, #28]
 2949 0030 A389     		ldrh	r3, [r4, #12]
 2950 0032 1B0A     		lsrs	r3, r3, #8
 2951 0034 6B77     		strb	r3, [r5, #29]
 2952 0036 E389     		ldrh	r3, [r4, #14]
 2953 0038 AB77     		strb	r3, [r5, #30]
 2954 003a E37B     		ldrb	r3, [r4, #15]	@ zero_extendqisi2
 2955 003c EB77     		strb	r3, [r5, #31]
 2956 003e 2369     		ldr	r3, [r4, #16]
 2957 0040 AB76     		strb	r3, [r5, #26]
 2958 0042 238A     		ldrh	r3, [r4, #16]
 2959 0044 1B0A     		lsrs	r3, r3, #8
 2960 0046 EB76     		strb	r3, [r5, #27]
 2961 0048 638A     		ldrh	r3, [r4, #18]
 2962 004a 2B75     		strb	r3, [r5, #20]
 2963 004c 638A     		ldrh	r3, [r4, #18]
 2964 004e 1B0A     		lsrs	r3, r3, #8
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 53


 2965 0050 6B75     		strb	r3, [r5, #21]
 2966 0052 FFF7FEFF 		bl	get_fattime
 2967 0056 C0F30721 		ubfx	r1, r0, #8, #8
 2968 005a 020C     		lsrs	r2, r0, #16
 2969 005c 030E     		lsrs	r3, r0, #24
 2970 005e 2A76     		strb	r2, [r5, #24]
 2971 0060 A875     		strb	r0, [r5, #22]
 2972 0062 E975     		strb	r1, [r5, #23]
 2973 0064 6B76     		strb	r3, [r5, #25]
 2974 0066 A179     		ldrb	r1, [r4, #6]	@ zero_extendqisi2
 2975 0068 2368     		ldr	r3, [r4]
 2976 006a 21F02001 		bic	r1, r1, #32
 2977 006e 0122     		movs	r2, #1
 2978 0070 A171     		strb	r1, [r4, #6]
 2979 0072 1A71     		strb	r2, [r3, #4]
 2980 0074 2068     		ldr	r0, [r4]
 2981 0076 BDE83840 		pop	{r3, r4, r5, lr}
 2982 007a FFF7FEBF 		b	sync
 2983              		.size	f_sync, .-f_sync
 2984              		.section	.text.f_close,"ax",%progbits
 2985              		.align	2
 2986              		.global	f_close
 2987              		.thumb
 2988              		.thumb_func
 2989              		.type	f_close, %function
 2990              	f_close:
 2991              		@ args = 0, pretend = 0, frame = 0
 2992              		@ frame_needed = 0, uses_anonymous_args = 0
 2993 0000 10B5     		push	{r4, lr}
 2994 0002 0446     		mov	r4, r0
 2995 0004 FFF7FEFF 		bl	f_sync
 2996 0008 00B9     		cbnz	r0, .L757
 2997 000a 2060     		str	r0, [r4]
 2998              	.L757:
 2999 000c 10BD     		pop	{r4, pc}
 3000              		.size	f_close, .-f_close
 3001 000e 00BF     		.section	.text.f_lseek,"ax",%progbits
 3002              		.align	2
 3003              		.global	f_lseek
 3004              		.thumb
 3005              		.thumb_func
 3006              		.type	f_lseek, %function
 3007              	f_lseek:
 3008              		@ args = 0, pretend = 0, frame = 0
 3009              		@ frame_needed = 0, uses_anonymous_args = 0
 3010 0000 70B5     		push	{r4, r5, r6, lr}
 3011 0002 0446     		mov	r4, r0
 3012 0004 0D46     		mov	r5, r1
 3013 0006 0068     		ldr	r0, [r0]
 3014 0008 A188     		ldrh	r1, [r4, #4]
 3015 000a FFF7FEFF 		bl	validate
 3016 000e 0028     		cmp	r0, #0
 3017 0010 33D1     		bne	.L759
 3018 0012 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3019 0014 1906     		lsls	r1, r3, #24
 3020 0016 31D4     		bmi	.L784
 3021 0018 E268     		ldr	r2, [r4, #12]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 54


 3022 001a AA42     		cmp	r2, r5
 3023 001c 03D2     		bcs	.L760
 3024 001e 13F0020F 		tst	r3, #2
 3025 0022 08BF     		it	eq
 3026 0024 1546     		moveq	r5, r2
 3027              	.L760:
 3028 0026 0023     		movs	r3, #0
 3029 0028 A268     		ldr	r2, [r4, #8]
 3030 002a A360     		str	r3, [r4, #8]
 3031 002c 45B3     		cbz	r5, .L786
 3032 002e 2068     		ldr	r0, [r4]
 3033 0030 8678     		ldrb	r6, [r0, #2]	@ zero_extendqisi2
 3034 0032 7602     		lsls	r6, r6, #9
 3035 0034 3AB1     		cbz	r2, .L761
 3036 0036 013A     		subs	r2, r2, #1
 3037 0038 691E     		subs	r1, r5, #1
 3038 003a B2FBF6F3 		udiv	r3, r2, r6
 3039 003e B1FBF6F1 		udiv	r1, r1, r6
 3040 0042 9942     		cmp	r1, r3
 3041 0044 5AD2     		bcs	.L795
 3042              	.L761:
 3043 0046 2169     		ldr	r1, [r4, #16]
 3044 0048 0029     		cmp	r1, #0
 3045 004a 5DD0     		beq	.L796
 3046              	.L763:
 3047 004c 6161     		str	r1, [r4, #20]
 3048              	.L762:
 3049 004e C9B9     		cbnz	r1, .L766
 3050 0050 A268     		ldr	r2, [r4, #8]
 3051 0052 0B46     		mov	r3, r1
 3052              	.L767:
 3053 0054 C2F30801 		ubfx	r1, r2, #0, #9
 3054 0058 0029     		cmp	r1, #0
 3055 005a 6FD0     		beq	.L797
 3056 005c A169     		ldr	r1, [r4, #24]
 3057 005e 9942     		cmp	r1, r3
 3058 0060 E168     		ldr	r1, [r4, #12]
 3059 0062 18BF     		it	ne
 3060 0064 A361     		strne	r3, [r4, #24]
 3061              	.L781:
 3062 0066 8A42     		cmp	r2, r1
 3063 0068 06D9     		bls	.L788
 3064 006a A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3065 006c E260     		str	r2, [r4, #12]
 3066 006e 43F02003 		orr	r3, r3, #32
 3067 0072 A371     		strb	r3, [r4, #6]
 3068 0074 0020     		movs	r0, #0
 3069 0076 70BD     		pop	{r4, r5, r6, pc}
 3070              	.L788:
 3071 0078 0020     		movs	r0, #0
 3072              	.L759:
 3073 007a 70BD     		pop	{r4, r5, r6, pc}
 3074              	.L784:
 3075 007c 0220     		movs	r0, #2
 3076 007e 70BD     		pop	{r4, r5, r6, pc}
 3077              	.L786:
 3078 0080 2846     		mov	r0, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 55


 3079 0082 70BD     		pop	{r4, r5, r6, pc}
 3080              	.L766:
 3081 0084 B542     		cmp	r5, r6
 3082 0086 57D9     		bls	.L793
 3083 0088 2068     		ldr	r0, [r4]
 3084              	.L777:
 3085 008a A279     		ldrb	r2, [r4, #6]	@ zero_extendqisi2
 3086 008c AD1B     		subs	r5, r5, r6
 3087 008e 9307     		lsls	r3, r2, #30
 3088 0090 09D4     		bmi	.L798
 3089 0092 0129     		cmp	r1, #1
 3090 0094 02D9     		bls	.L772
 3091 0096 8369     		ldr	r3, [r0, #24]
 3092 0098 8B42     		cmp	r3, r1
 3093 009a 2BD8     		bhi	.L799
 3094              	.L772:
 3095 009c 62F07F02 		orn	r2, r2, #127
 3096 00a0 A271     		strb	r2, [r4, #6]
 3097 00a2 0220     		movs	r0, #2
 3098 00a4 70BD     		pop	{r4, r5, r6, pc}
 3099              	.L798:
 3100 00a6 FFF7FEFF 		bl	create_chain
 3101 00aa 0146     		mov	r1, r0
 3102 00ac 0028     		cmp	r0, #0
 3103 00ae 42D0     		beq	.L800
 3104              	.L771:
 3105 00b0 4B1C     		adds	r3, r1, #1
 3106 00b2 38D0     		beq	.L794
 3107 00b4 0129     		cmp	r1, #1
 3108 00b6 3CD9     		bls	.L775
 3109 00b8 2068     		ldr	r0, [r4]
 3110 00ba 8269     		ldr	r2, [r0, #24]
 3111 00bc 9142     		cmp	r1, r2
 3112 00be 38D2     		bcs	.L775
 3113 00c0 A268     		ldr	r2, [r4, #8]
 3114 00c2 AE42     		cmp	r6, r5
 3115 00c4 3244     		add	r2, r2, r6
 3116 00c6 6161     		str	r1, [r4, #20]
 3117 00c8 A260     		str	r2, [r4, #8]
 3118 00ca DED3     		bcc	.L777
 3119              	.L769:
 3120 00cc 2A44     		add	r2, r2, r5
 3121 00ce C5F30803 		ubfx	r3, r5, #0, #9
 3122 00d2 A260     		str	r2, [r4, #8]
 3123 00d4 002B     		cmp	r3, #0
 3124 00d6 BDD0     		beq	.L767
 3125 00d8 2668     		ldr	r6, [r4]
 3126 00da 8B1E     		subs	r3, r1, #2
 3127 00dc B069     		ldr	r0, [r6, #24]
 3128 00de 0238     		subs	r0, r0, #2
 3129 00e0 8342     		cmp	r3, r0
 3130 00e2 1AD2     		bcs	.L778
 3131 00e4 B078     		ldrb	r0, [r6, #2]	@ zero_extendqisi2
 3132 00e6 B16A     		ldr	r1, [r6, #40]
 3133 00e8 00FB0313 		mla	r3, r0, r3, r1
 3134 00ec ABB1     		cbz	r3, .L778
 3135 00ee 03EB5523 		add	r3, r3, r5, lsr #9
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 56


 3136 00f2 AFE7     		b	.L767
 3137              	.L799:
 3138 00f4 FFF7FEFF 		bl	get_fat.part.3
 3139 00f8 0146     		mov	r1, r0
 3140 00fa D9E7     		b	.L771
 3141              	.L795:
 3142 00fc 7342     		negs	r3, r6
 3143 00fe 1A40     		ands	r2, r2, r3
 3144 0100 A260     		str	r2, [r4, #8]
 3145 0102 AD1A     		subs	r5, r5, r2
 3146 0104 6169     		ldr	r1, [r4, #20]
 3147 0106 A2E7     		b	.L762
 3148              	.L796:
 3149 0108 FFF7FEFF 		bl	create_chain
 3150 010c 0128     		cmp	r0, #1
 3151 010e 0146     		mov	r1, r0
 3152 0110 03D0     		beq	.L778
 3153 0112 421C     		adds	r2, r0, #1
 3154 0114 07D0     		beq	.L794
 3155 0116 2061     		str	r0, [r4, #16]
 3156 0118 98E7     		b	.L763
 3157              	.L778:
 3158 011a A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3159 011c 0220     		movs	r0, #2
 3160 011e 63F07F03 		orn	r3, r3, #127
 3161 0122 A371     		strb	r3, [r4, #6]
 3162 0124 70BD     		pop	{r4, r5, r6, pc}
 3163              	.L794:
 3164 0126 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3165 0128 0120     		movs	r0, #1
 3166 012a 63F07F03 		orn	r3, r3, #127
 3167 012e A371     		strb	r3, [r4, #6]
 3168 0130 70BD     		pop	{r4, r5, r6, pc}
 3169              	.L775:
 3170 0132 A279     		ldrb	r2, [r4, #6]	@ zero_extendqisi2
 3171 0134 B2E7     		b	.L772
 3172              	.L800:
 3173 0136 3546     		mov	r5, r6
 3174              	.L793:
 3175 0138 A268     		ldr	r2, [r4, #8]
 3176 013a C7E7     		b	.L769
 3177              	.L797:
 3178 013c E168     		ldr	r1, [r4, #12]
 3179 013e 92E7     		b	.L781
 3180              		.size	f_lseek, .-f_lseek
 3181              		.section	.text.f_opendir,"ax",%progbits
 3182              		.align	2
 3183              		.global	f_opendir
 3184              		.thumb
 3185              		.thumb_func
 3186              		.type	f_opendir, %function
 3187              	f_opendir:
 3188              		@ args = 0, pretend = 0, frame = 536
 3189              		@ frame_needed = 0, uses_anonymous_args = 0
 3190 0000 30B5     		push	{r4, r5, lr}
 3191 0002 0446     		mov	r4, r0
 3192 0004 ADF5077D 		sub	sp, sp, #540
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 57


 3193 0008 0191     		str	r1, [sp, #4]
 3194 000a 01A8     		add	r0, sp, #4
 3195 000c 2146     		mov	r1, r4
 3196 000e 0022     		movs	r2, #0
 3197 0010 FFF7FEFF 		bl	chk_mounted
 3198 0014 10B1     		cbz	r0, .L812
 3199              	.L809:
 3200 0016 0DF5077D 		add	sp, sp, #540
 3201              		@ sp needed
 3202 001a 30BD     		pop	{r4, r5, pc}
 3203              	.L812:
 3204 001c 03AA     		add	r2, sp, #12
 3205 001e 06AB     		add	r3, sp, #24
 3206 0020 0199     		ldr	r1, [sp, #4]
 3207 0022 A261     		str	r2, [r4, #24]
 3208 0024 E361     		str	r3, [r4, #28]
 3209 0026 2046     		mov	r0, r4
 3210 0028 FFF7FEFF 		bl	follow_path
 3211 002c B0B9     		cbnz	r0, .L803
 3212 002e 6369     		ldr	r3, [r4, #20]
 3213 0030 6BB1     		cbz	r3, .L804
 3214 0032 DA7A     		ldrb	r2, [r3, #11]	@ zero_extendqisi2
 3215 0034 D206     		lsls	r2, r2, #27
 3216 0036 17D5     		bpl	.L806
 3217 0038 5D7D     		ldrb	r5, [r3, #21]	@ zero_extendqisi2
 3218 003a 1A7D     		ldrb	r2, [r3, #20]	@ zero_extendqisi2
 3219 003c D87E     		ldrb	r0, [r3, #27]	@ zero_extendqisi2
 3220 003e 997E     		ldrb	r1, [r3, #26]	@ zero_extendqisi2
 3221 0040 42EA0522 		orr	r2, r2, r5, lsl #8
 3222 0044 41EA0023 		orr	r3, r1, r0, lsl #8
 3223 0048 43EA0243 		orr	r3, r3, r2, lsl #16
 3224 004c A360     		str	r3, [r4, #8]
 3225              	.L804:
 3226 004e 2368     		ldr	r3, [r4]
 3227 0050 2046     		mov	r0, r4
 3228 0052 DB88     		ldrh	r3, [r3, #6]
 3229 0054 0021     		movs	r1, #0
 3230 0056 A380     		strh	r3, [r4, #4]	@ movhi
 3231 0058 FFF7FEFF 		bl	dir_sdi
 3232              	.L803:
 3233 005c 0428     		cmp	r0, #4
 3234 005e 08BF     		it	eq
 3235 0060 0520     		moveq	r0, #5
 3236 0062 0DF5077D 		add	sp, sp, #540
 3237              		@ sp needed
 3238 0066 30BD     		pop	{r4, r5, pc}
 3239              	.L806:
 3240 0068 0520     		movs	r0, #5
 3241 006a D4E7     		b	.L809
 3242              		.size	f_opendir, .-f_opendir
 3243              		.section	.text.f_readdir,"ax",%progbits
 3244              		.align	2
 3245              		.global	f_readdir
 3246              		.thumb
 3247              		.thumb_func
 3248              		.type	f_readdir, %function
 3249              	f_readdir:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 58


 3250              		@ args = 0, pretend = 0, frame = 528
 3251              		@ frame_needed = 0, uses_anonymous_args = 0
 3252 0000 70B5     		push	{r4, r5, r6, lr}
 3253 0002 0446     		mov	r4, r0
 3254 0004 ADF5047D 		sub	sp, sp, #528
 3255 0008 0E46     		mov	r6, r1
 3256 000a 0068     		ldr	r0, [r0]
 3257 000c A188     		ldrh	r1, [r4, #4]
 3258 000e FFF7FEFF 		bl	validate
 3259 0012 0546     		mov	r5, r0
 3260 0014 58B9     		cbnz	r0, .L814
 3261 0016 E6B1     		cbz	r6, .L820
 3262 0018 01AA     		add	r2, sp, #4
 3263 001a 04AB     		add	r3, sp, #16
 3264 001c A261     		str	r2, [r4, #24]
 3265 001e E361     		str	r3, [r4, #28]
 3266 0020 2046     		mov	r0, r4
 3267 0022 FFF7FEFF 		bl	dir_read
 3268 0026 0428     		cmp	r0, #4
 3269 0028 05D0     		beq	.L821
 3270 002a 28B1     		cbz	r0, .L817
 3271              	.L819:
 3272 002c 0546     		mov	r5, r0
 3273              	.L814:
 3274 002e 2846     		mov	r0, r5
 3275 0030 0DF5047D 		add	sp, sp, #528
 3276              		@ sp needed
 3277 0034 70BD     		pop	{r4, r5, r6, pc}
 3278              	.L821:
 3279 0036 2561     		str	r5, [r4, #16]
 3280              	.L817:
 3281 0038 3146     		mov	r1, r6
 3282 003a 2046     		mov	r0, r4
 3283 003c FFF7FEFF 		bl	get_fileinfo
 3284 0040 2046     		mov	r0, r4
 3285 0042 0021     		movs	r1, #0
 3286 0044 FFF7FEFF 		bl	dir_next
 3287 0048 0428     		cmp	r0, #4
 3288 004a EFD1     		bne	.L819
 3289 004c 0023     		movs	r3, #0
 3290 004e 2361     		str	r3, [r4, #16]
 3291 0050 EDE7     		b	.L814
 3292              	.L820:
 3293 0052 2946     		mov	r1, r5
 3294 0054 2046     		mov	r0, r4
 3295 0056 FFF7FEFF 		bl	dir_sdi
 3296 005a 0546     		mov	r5, r0
 3297 005c E7E7     		b	.L814
 3298              		.size	f_readdir, .-f_readdir
 3299 005e 00BF     		.section	.text.f_stat,"ax",%progbits
 3300              		.align	2
 3301              		.global	f_stat
 3302              		.thumb
 3303              		.thumb_func
 3304              		.type	f_stat, %function
 3305              	f_stat:
 3306              		@ args = 0, pretend = 0, frame = 568
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 59


 3307              		@ frame_needed = 0, uses_anonymous_args = 0
 3308 0000 30B5     		push	{r4, r5, lr}
 3309 0002 ADF50F7D 		sub	sp, sp, #572
 3310 0006 0190     		str	r0, [sp, #4]
 3311 0008 0D46     		mov	r5, r1
 3312 000a 01A8     		add	r0, sp, #4
 3313 000c 05A9     		add	r1, sp, #20
 3314 000e 0022     		movs	r2, #0
 3315 0010 FFF7FEFF 		bl	chk_mounted
 3316 0014 0446     		mov	r4, r0
 3317 0016 18B1     		cbz	r0, .L825
 3318              	.L823:
 3319 0018 2046     		mov	r0, r4
 3320 001a 0DF50F7D 		add	sp, sp, #572
 3321              		@ sp needed
 3322 001e 30BD     		pop	{r4, r5, pc}
 3323              	.L825:
 3324 0020 02AA     		add	r2, sp, #8
 3325 0022 0EAB     		add	r3, sp, #56
 3326 0024 0199     		ldr	r1, [sp, #4]
 3327 0026 05A8     		add	r0, sp, #20
 3328 0028 0B92     		str	r2, [sp, #44]
 3329 002a 0C93     		str	r3, [sp, #48]
 3330 002c FFF7FEFF 		bl	follow_path
 3331 0030 0446     		mov	r4, r0
 3332 0032 0028     		cmp	r0, #0
 3333 0034 F0D1     		bne	.L823
 3334 0036 0A9B     		ldr	r3, [sp, #40]
 3335 0038 3BB1     		cbz	r3, .L824
 3336 003a 05A8     		add	r0, sp, #20
 3337 003c 2946     		mov	r1, r5
 3338 003e FFF7FEFF 		bl	get_fileinfo
 3339 0042 2046     		mov	r0, r4
 3340 0044 0DF50F7D 		add	sp, sp, #572
 3341              		@ sp needed
 3342 0048 30BD     		pop	{r4, r5, pc}
 3343              	.L824:
 3344 004a 0624     		movs	r4, #6
 3345 004c 2046     		mov	r0, r4
 3346 004e 0DF50F7D 		add	sp, sp, #572
 3347              		@ sp needed
 3348 0052 30BD     		pop	{r4, r5, pc}
 3349              		.size	f_stat, .-f_stat
 3350              		.section	.text.f_getfree,"ax",%progbits
 3351              		.align	2
 3352              		.global	f_getfree
 3353              		.thumb
 3354              		.thumb_func
 3355              		.type	f_getfree, %function
 3356              	f_getfree:
 3357              		@ args = 0, pretend = 0, frame = 8
 3358              		@ frame_needed = 0, uses_anonymous_args = 0
 3359 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3360 0004 83B0     		sub	sp, sp, #12
 3361 0006 02AB     		add	r3, sp, #8
 3362 0008 43F8040D 		str	r0, [r3, #-4]!
 3363 000c 9046     		mov	r8, r2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 60


 3364 000e 8946     		mov	r9, r1
 3365 0010 1846     		mov	r0, r3
 3366 0012 1146     		mov	r1, r2
 3367 0014 0022     		movs	r2, #0
 3368 0016 FFF7FEFF 		bl	chk_mounted
 3369 001a 8346     		mov	fp, r0
 3370 001c 78BB     		cbnz	r0, .L850
 3371 001e D8F80060 		ldr	r6, [r8]
 3372 0022 B569     		ldr	r5, [r6, #24]
 3373 0024 3369     		ldr	r3, [r6, #16]
 3374 0026 AA1E     		subs	r2, r5, #2
 3375 0028 9342     		cmp	r3, r2
 3376 002a 2CD9     		bls	.L854
 3377 002c 96F800A0 		ldrb	r10, [r6]	@ zero_extendqisi2
 3378 0030 BAF1010F 		cmp	r10, #1
 3379 0034 47D0     		beq	.L855
 3380 0036 D6F820C0 		ldr	ip, [r6, #32]
 3381 003a 0346     		mov	r3, r0
 3382 003c 0446     		mov	r4, r0
 3383 003e 0746     		mov	r7, r0
 3384              	.L847:
 3385 0040 3CB3     		cbz	r4, .L856
 3386 0042 BAF1020F 		cmp	r10, #2
 3387 0046 35D0     		beq	.L857
 3388              	.L843:
 3389 0048 9A78     		ldrb	r2, [r3, #2]	@ zero_extendqisi2
 3390 004a D978     		ldrb	r1, [r3, #3]	@ zero_extendqisi2
 3391 004c 1204     		lsls	r2, r2, #16
 3392 004e 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 3393 0050 42EA0162 		orr	r2, r2, r1, lsl #24
 3394 0054 5978     		ldrb	r1, [r3, #1]	@ zero_extendqisi2
 3395 0056 0243     		orrs	r2, r2, r0
 3396 0058 42EA0122 		orr	r2, r2, r1, lsl #8
 3397 005c 22F07042 		bic	r2, r2, #-268435456
 3398 0060 02B9     		cbnz	r2, .L846
 3399 0062 0137     		adds	r7, r7, #1
 3400              	.L846:
 3401 0064 0433     		adds	r3, r3, #4
 3402 0066 043C     		subs	r4, r4, #4
 3403              	.L845:
 3404 0068 013D     		subs	r5, r5, #1
 3405 006a E9D1     		bne	.L847
 3406              	.L842:
 3407 006c BAF1030F 		cmp	r10, #3
 3408 0070 08BF     		it	eq
 3409 0072 0123     		moveq	r3, #1
 3410 0074 3761     		str	r7, [r6, #16]
 3411 0076 08BF     		it	eq
 3412 0078 7371     		strbeq	r3, [r6, #5]
 3413              	.L848:
 3414 007a C9F80070 		str	r7, [r9]
 3415              	.L850:
 3416 007e 5846     		mov	r0, fp
 3417 0080 03B0     		add	sp, sp, #12
 3418              		@ sp needed
 3419 0082 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3420              	.L854:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 61


 3421 0086 5846     		mov	r0, fp
 3422 0088 C9F80030 		str	r3, [r9]
 3423 008c 03B0     		add	sp, sp, #12
 3424              		@ sp needed
 3425 008e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3426              	.L856:
 3427 0092 3046     		mov	r0, r6
 3428 0094 6146     		mov	r1, ip
 3429 0096 0CF10104 		add	r4, ip, #1
 3430 009a FFF7FEFF 		bl	move_window
 3431 009e D8F80060 		ldr	r6, [r8]
 3432 00a2 B8B9     		cbnz	r0, .L858
 3433 00a4 BAF1020F 		cmp	r10, #2
 3434 00a8 A446     		mov	ip, r4
 3435 00aa 06F13003 		add	r3, r6, #48
 3436 00ae 4FF40074 		mov	r4, #512
 3437 00b2 C9D1     		bne	.L843
 3438              	.L857:
 3439 00b4 5978     		ldrb	r1, [r3, #1]	@ zero_extendqisi2
 3440 00b6 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 3441 00b8 023C     		subs	r4, r4, #2
 3442 00ba 52EA0122 		orrs	r2, r2, r1, lsl #8
 3443 00be 08BF     		it	eq
 3444 00c0 0137     		addeq	r7, r7, #1
 3445 00c2 0233     		adds	r3, r3, #2
 3446 00c4 D0E7     		b	.L845
 3447              	.L855:
 3448 00c6 022D     		cmp	r5, #2
 3449 00c8 0746     		mov	r7, r0
 3450 00ca 05D8     		bhi	.L859
 3451              	.L831:
 3452 00cc 4FF0020B 		mov	fp, #2
 3453              	.L836:
 3454 00d0 3761     		str	r7, [r6, #16]
 3455 00d2 D2E7     		b	.L848
 3456              	.L858:
 3457 00d4 8346     		mov	fp, r0
 3458 00d6 C9E7     		b	.L842
 3459              	.L859:
 3460 00d8 0224     		movs	r4, #2
 3461 00da 0AE0     		b	.L834
 3462              	.L835:
 3463 00dc 0128     		cmp	r0, #1
 3464 00de 15D0     		beq	.L860
 3465 00e0 00B9     		cbnz	r0, .L838
 3466 00e2 0137     		adds	r7, r7, #1
 3467              	.L838:
 3468 00e4 D8F80060 		ldr	r6, [r8]
 3469 00e8 B369     		ldr	r3, [r6, #24]
 3470 00ea 9C42     		cmp	r4, r3
 3471 00ec F0D2     		bcs	.L836
 3472 00ee 012C     		cmp	r4, #1
 3473 00f0 ECD9     		bls	.L831
 3474              	.L834:
 3475 00f2 2146     		mov	r1, r4
 3476 00f4 3046     		mov	r0, r6
 3477 00f6 FFF7FEFF 		bl	get_fat.part.3
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 62


 3478 00fa 431C     		adds	r3, r0, #1
 3479 00fc 04F10104 		add	r4, r4, #1
 3480 0100 ECD1     		bne	.L835
 3481 0102 D8F80060 		ldr	r6, [r8]
 3482 0106 4FF0010B 		mov	fp, #1
 3483 010a E1E7     		b	.L836
 3484              	.L860:
 3485 010c D8F80060 		ldr	r6, [r8]
 3486 0110 4FF0020B 		mov	fp, #2
 3487 0114 DCE7     		b	.L836
 3488              		.size	f_getfree, .-f_getfree
 3489 0116 00BF     		.section	.text.f_truncate,"ax",%progbits
 3490              		.align	2
 3491              		.global	f_truncate
 3492              		.thumb
 3493              		.thumb_func
 3494              		.type	f_truncate, %function
 3495              	f_truncate:
 3496              		@ args = 0, pretend = 0, frame = 0
 3497              		@ frame_needed = 0, uses_anonymous_args = 0
 3498 0000 70B5     		push	{r4, r5, r6, lr}
 3499 0002 0446     		mov	r4, r0
 3500 0004 A188     		ldrh	r1, [r4, #4]
 3501 0006 0068     		ldr	r0, [r0]
 3502 0008 FFF7FEFF 		bl	validate
 3503 000c 0546     		mov	r5, r0
 3504 000e E0B9     		cbnz	r0, .L886
 3505 0010 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3506 0012 1906     		lsls	r1, r3, #24
 3507 0014 1ED4     		bmi	.L881
 3508 0016 9A07     		lsls	r2, r3, #30
 3509 0018 19D5     		bpl	.L882
 3510 001a A268     		ldr	r2, [r4, #8]
 3511 001c E168     		ldr	r1, [r4, #12]
 3512 001e 9142     		cmp	r1, r2
 3513 0020 13D9     		bls	.L886
 3514 0022 43F02003 		orr	r3, r3, #32
 3515 0026 A371     		strb	r3, [r4, #6]
 3516 0028 E260     		str	r2, [r4, #12]
 3517 002a B2B9     		cbnz	r2, .L864
 3518 002c 2169     		ldr	r1, [r4, #16]
 3519 002e 2068     		ldr	r0, [r4]
 3520 0030 0129     		cmp	r1, #1
 3521 0032 02D9     		bls	.L884
 3522 0034 8369     		ldr	r3, [r0, #24]
 3523 0036 9942     		cmp	r1, r3
 3524 0038 18D3     		bcc	.L891
 3525              	.L884:
 3526 003a 0225     		movs	r5, #2
 3527              	.L865:
 3528 003c 0023     		movs	r3, #0
 3529 003e 2361     		str	r3, [r4, #16]
 3530              	.L866:
 3531 0040 1DB1     		cbz	r5, .L886
 3532              	.L890:
 3533 0042 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3534              	.L879:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 63


 3535 0044 63F07F03 		orn	r3, r3, #127
 3536 0048 A371     		strb	r3, [r4, #6]
 3537              	.L886:
 3538 004a 2846     		mov	r0, r5
 3539 004c 70BD     		pop	{r4, r5, r6, pc}
 3540              	.L882:
 3541 004e 0725     		movs	r5, #7
 3542 0050 2846     		mov	r0, r5
 3543 0052 70BD     		pop	{r4, r5, r6, pc}
 3544              	.L881:
 3545 0054 0225     		movs	r5, #2
 3546 0056 2846     		mov	r0, r5
 3547 0058 70BD     		pop	{r4, r5, r6, pc}
 3548              	.L864:
 3549 005a 6169     		ldr	r1, [r4, #20]
 3550 005c 2068     		ldr	r0, [r4]
 3551 005e 0129     		cmp	r1, #1
 3552 0060 02D9     		bls	.L867
 3553 0062 8269     		ldr	r2, [r0, #24]
 3554 0064 9142     		cmp	r1, r2
 3555 0066 05D3     		bcc	.L892
 3556              	.L867:
 3557 0068 0225     		movs	r5, #2
 3558 006a EBE7     		b	.L879
 3559              	.L891:
 3560 006c FFF7FEFF 		bl	remove_chain.part.6
 3561 0070 0546     		mov	r5, r0
 3562 0072 E3E7     		b	.L865
 3563              	.L892:
 3564 0074 FFF7FEFF 		bl	get_fat.part.3
 3565 0078 431C     		adds	r3, r0, #1
 3566 007a 0646     		mov	r6, r0
 3567 007c 02D1     		bne	.L868
 3568 007e A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3569 0080 0125     		movs	r5, #1
 3570 0082 DFE7     		b	.L879
 3571              	.L868:
 3572 0084 0128     		cmp	r0, #1
 3573 0086 1DD0     		beq	.L893
 3574 0088 2068     		ldr	r0, [r4]
 3575 008a 8369     		ldr	r3, [r0, #24]
 3576 008c B342     		cmp	r3, r6
 3577 008e DCD9     		bls	.L886
 3578 0090 6169     		ldr	r1, [r4, #20]
 3579 0092 0129     		cmp	r1, #1
 3580 0094 01D9     		bls	.L875
 3581 0096 8B42     		cmp	r3, r1
 3582 0098 02D8     		bhi	.L894
 3583              	.L875:
 3584 009a A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3585 009c 0225     		movs	r5, #2
 3586 009e D1E7     		b	.L879
 3587              	.L894:
 3588 00a0 6FF07042 		mvn	r2, #-268435456
 3589 00a4 FFF7FEFF 		bl	put_fat.part.4
 3590 00a8 0546     		mov	r5, r0
 3591 00aa 0028     		cmp	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 64


 3592 00ac C9D1     		bne	.L890
 3593 00ae 012E     		cmp	r6, #1
 3594 00b0 2068     		ldr	r0, [r4]
 3595 00b2 F2D9     		bls	.L875
 3596 00b4 8369     		ldr	r3, [r0, #24]
 3597 00b6 9E42     		cmp	r6, r3
 3598 00b8 EFD2     		bcs	.L875
 3599 00ba 3146     		mov	r1, r6
 3600 00bc FFF7FEFF 		bl	remove_chain.part.6
 3601 00c0 0546     		mov	r5, r0
 3602 00c2 BDE7     		b	.L866
 3603              	.L893:
 3604 00c4 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3605 00c6 CFE7     		b	.L867
 3606              		.size	f_truncate, .-f_truncate
 3607              		.section	.text.f_unlink,"ax",%progbits
 3608              		.align	2
 3609              		.global	f_unlink
 3610              		.thumb
 3611              		.thumb_func
 3612              		.type	f_unlink, %function
 3613              	f_unlink:
 3614              		@ args = 0, pretend = 0, frame = 608
 3615              		@ frame_needed = 0, uses_anonymous_args = 0
 3616 0000 70B5     		push	{r4, r5, r6, lr}
 3617 0002 ADF5187D 		sub	sp, sp, #608
 3618 0006 0190     		str	r0, [sp, #4]
 3619 0008 06A9     		add	r1, sp, #24
 3620 000a 01A8     		add	r0, sp, #4
 3621 000c 0122     		movs	r2, #1
 3622 000e FFF7FEFF 		bl	chk_mounted
 3623 0012 10B1     		cbz	r0, .L919
 3624              	.L913:
 3625 0014 0DF5187D 		add	sp, sp, #608
 3626              		@ sp needed
 3627 0018 70BD     		pop	{r4, r5, r6, pc}
 3628              	.L919:
 3629 001a 03AA     		add	r2, sp, #12
 3630 001c 18AB     		add	r3, sp, #96
 3631 001e 0199     		ldr	r1, [sp, #4]
 3632 0020 06A8     		add	r0, sp, #24
 3633 0022 0C92     		str	r2, [sp, #48]
 3634 0024 0D93     		str	r3, [sp, #52]
 3635 0026 FFF7FEFF 		bl	follow_path
 3636 002a 0028     		cmp	r0, #0
 3637 002c F2D1     		bne	.L913
 3638 002e 0B9B     		ldr	r3, [sp, #44]
 3639 0030 002B     		cmp	r3, #0
 3640 0032 40D0     		beq	.L905
 3641 0034 DA7A     		ldrb	r2, [r3, #11]	@ zero_extendqisi2
 3642 0036 D107     		lsls	r1, r2, #31
 3643 0038 37D4     		bmi	.L906
 3644 003a 5E7D     		ldrb	r6, [r3, #21]	@ zero_extendqisi2
 3645 003c 187D     		ldrb	r0, [r3, #20]	@ zero_extendqisi2
 3646 003e D97E     		ldrb	r1, [r3, #27]	@ zero_extendqisi2
 3647 0040 9B7E     		ldrb	r3, [r3, #26]	@ zero_extendqisi2
 3648 0042 40EA0626 		orr	r6, r0, r6, lsl #8
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 65


 3649 0046 43EA0123 		orr	r3, r3, r1, lsl #8
 3650 004a 43EA0646 		orr	r6, r3, r6, lsl #16
 3651 004e D306     		lsls	r3, r2, #27
 3652 0050 16D5     		bpl	.L900
 3653 0052 012E     		cmp	r6, #1
 3654 0054 2DD9     		bls	.L907
 3655 0056 0FAC     		add	r4, sp, #60
 3656 0058 06AD     		add	r5, sp, #24
 3657 005a 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 3658 005c 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 3659 005e 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 3660 0060 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 3661 0062 2B68     		ldr	r3, [r5]
 3662 0064 0FA8     		add	r0, sp, #60
 3663 0066 0221     		movs	r1, #2
 3664 0068 1196     		str	r6, [sp, #68]
 3665 006a 2360     		str	r3, [r4]
 3666 006c FFF7FEFF 		bl	dir_sdi
 3667 0070 0028     		cmp	r0, #0
 3668 0072 CFD1     		bne	.L913
 3669 0074 0FA8     		add	r0, sp, #60
 3670 0076 FFF7FEFF 		bl	dir_read
 3671 007a B0B1     		cbz	r0, .L906
 3672 007c 0428     		cmp	r0, #4
 3673 007e C9D1     		bne	.L913
 3674              	.L900:
 3675 0080 06A8     		add	r0, sp, #24
 3676 0082 FFF7FEFF 		bl	dir_remove
 3677 0086 0028     		cmp	r0, #0
 3678 0088 C4D1     		bne	.L913
 3679 008a 56B1     		cbz	r6, .L902
 3680 008c 012E     		cmp	r6, #1
 3681 008e 0698     		ldr	r0, [sp, #24]
 3682 0090 0FD0     		beq	.L907
 3683 0092 8369     		ldr	r3, [r0, #24]
 3684 0094 9E42     		cmp	r6, r3
 3685 0096 0CD2     		bcs	.L907
 3686 0098 3146     		mov	r1, r6
 3687 009a FFF7FEFF 		bl	remove_chain.part.6
 3688 009e 0028     		cmp	r0, #0
 3689 00a0 B8D1     		bne	.L913
 3690              	.L902:
 3691 00a2 0698     		ldr	r0, [sp, #24]
 3692 00a4 FFF7FEFF 		bl	sync
 3693 00a8 B4E7     		b	.L913
 3694              	.L906:
 3695 00aa 0720     		movs	r0, #7
 3696 00ac 0DF5187D 		add	sp, sp, #608
 3697              		@ sp needed
 3698 00b0 70BD     		pop	{r4, r5, r6, pc}
 3699              	.L907:
 3700 00b2 0220     		movs	r0, #2
 3701 00b4 AEE7     		b	.L913
 3702              	.L905:
 3703 00b6 0620     		movs	r0, #6
 3704 00b8 ACE7     		b	.L913
 3705              		.size	f_unlink, .-f_unlink
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 66


 3706 00ba 00BF     		.section	.text.f_mkdir,"ax",%progbits
 3707              		.align	2
 3708              		.global	f_mkdir
 3709              		.thumb
 3710              		.thumb_func
 3711              		.type	f_mkdir, %function
 3712              	f_mkdir:
 3713              		@ args = 0, pretend = 0, frame = 592
 3714              		@ frame_needed = 0, uses_anonymous_args = 0
 3715 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3716 0004 ADF5157D 		sub	sp, sp, #596
 3717 0008 0790     		str	r0, [sp, #28]
 3718 000a FFF7FEFF 		bl	get_fattime
 3719 000e 0BA9     		add	r1, sp, #44
 3720 0010 0646     		mov	r6, r0
 3721 0012 0122     		movs	r2, #1
 3722 0014 07A8     		add	r0, sp, #28
 3723 0016 FFF7FEFF 		bl	chk_mounted
 3724 001a 0446     		mov	r4, r0
 3725 001c 0546     		mov	r5, r0
 3726 001e 20B1     		cbz	r0, .L948
 3727              	.L940:
 3728 0020 2046     		mov	r0, r4
 3729 0022 0DF5157D 		add	sp, sp, #596
 3730              		@ sp needed
 3731 0026 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3732              	.L948:
 3733 002a 08AA     		add	r2, sp, #32
 3734 002c 14AB     		add	r3, sp, #80
 3735 002e 0799     		ldr	r1, [sp, #28]
 3736 0030 0BA8     		add	r0, sp, #44
 3737 0032 1192     		str	r2, [sp, #68]
 3738 0034 1293     		str	r3, [sp, #72]
 3739 0036 FFF7FEFF 		bl	follow_path
 3740 003a 0446     		mov	r4, r0
 3741 003c A8B1     		cbz	r0, .L933
 3742 003e 0428     		cmp	r0, #4
 3743 0040 EED1     		bne	.L940
 3744 0042 0B98     		ldr	r0, [sp, #44]
 3745 0044 2946     		mov	r1, r5
 3746 0046 FFF7FEFF 		bl	create_chain
 3747 004a 8046     		mov	r8, r0
 3748 004c 98B1     		cbz	r0, .L934
 3749 004e 0128     		cmp	r0, #1
 3750 0050 13D1     		bne	.L949
 3751 0052 0224     		movs	r4, #2
 3752              	.L930:
 3753 0054 B8F1010F 		cmp	r8, #1
 3754 0058 0B98     		ldr	r0, [sp, #44]
 3755 005a E1D9     		bls	.L940
 3756 005c 8369     		ldr	r3, [r0, #24]
 3757 005e 9845     		cmp	r8, r3
 3758 0060 DED2     		bcs	.L940
 3759 0062 4146     		mov	r1, r8
 3760 0064 FFF7FEFF 		bl	remove_chain.part.6
 3761 0068 DAE7     		b	.L940
 3762              	.L933:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 67


 3763 006a 0824     		movs	r4, #8
 3764 006c 2046     		mov	r0, r4
 3765 006e 0DF5157D 		add	sp, sp, #596
 3766              		@ sp needed
 3767 0072 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3768              	.L934:
 3769 0076 0724     		movs	r4, #7
 3770 0078 ECE7     		b	.L930
 3771              	.L949:
 3772 007a B0F1FF3F 		cmp	r0, #-1
 3773 007e 08BF     		it	eq
 3774 0080 0124     		moveq	r4, #1
 3775 0082 E7D0     		beq	.L930
 3776 0084 2946     		mov	r1, r5
 3777 0086 0B98     		ldr	r0, [sp, #44]
 3778 0088 FFF7FEFF 		bl	move_window
 3779 008c 0446     		mov	r4, r0
 3780 008e 0028     		cmp	r0, #0
 3781 0090 E0D1     		bne	.L930
 3782 0092 0B9F     		ldr	r7, [sp, #44]
 3783 0094 A8F10202 		sub	r2, r8, #2
 3784 0098 BB69     		ldr	r3, [r7, #24]
 3785 009a 07F13005 		add	r5, r7, #48
 3786 009e 023B     		subs	r3, r3, #2
 3787 00a0 9A42     		cmp	r2, r3
 3788 00a2 3CBF     		itt	cc
 3789 00a4 B978     		ldrbcc	r1, [r7, #2]	@ zero_extendqisi2
 3790 00a6 BB6A     		ldrcc	r3, [r7, #40]
 3791 00a8 2846     		mov	r0, r5
 3792 00aa 38BF     		it	cc
 3793 00ac 01FB0239 		mlacc	r9, r1, r2, r3
 3794 00b0 4FF00001 		mov	r1, #0
 3795 00b4 4FF40072 		mov	r2, #512
 3796 00b8 28BF     		it	cs
 3797 00ba A146     		movcs	r9, r4
 3798 00bc FFF7FEFF 		bl	memset
 3799 00c0 2021     		movs	r1, #32
 3800 00c2 0B22     		movs	r2, #11
 3801 00c4 2846     		mov	r0, r5
 3802 00c6 FFF7FEFF 		bl	memset
 3803 00ca C6F30724 		ubfx	r4, r6, #8, #8
 3804 00ce F3B2     		uxtb	r3, r6
 3805 00d0 0193     		str	r3, [sp, #4]
 3806 00d2 0294     		str	r4, [sp, #8]
 3807 00d4 5FFA88F4 		uxtb	r4, r8
 3808 00d8 C6F30743 		ubfx	r3, r6, #16, #8
 3809 00dc 0594     		str	r4, [sp, #20]
 3810 00de 019C     		ldr	r4, [sp, #4]
 3811 00e0 0393     		str	r3, [sp, #12]
 3812 00e2 C8F30723 		ubfx	r3, r8, #8, #8
 3813 00e6 87F84640 		strb	r4, [r7, #70]
 3814 00ea 0693     		str	r3, [sp, #24]
 3815 00ec 039C     		ldr	r4, [sp, #12]
 3816 00ee 029B     		ldr	r3, [sp, #8]
 3817 00f0 87F84840 		strb	r4, [r7, #72]
 3818 00f4 87F84730 		strb	r3, [r7, #71]
 3819 00f8 059C     		ldr	r4, [sp, #20]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 68


 3820 00fa 4FEA184B 		lsr	fp, r8, #16
 3821 00fe 069B     		ldr	r3, [sp, #24]
 3822 0100 360E     		lsrs	r6, r6, #24
 3823 0102 5FFA8BFA 		uxtb	r10, fp
 3824 0106 4FF02E0E 		mov	lr, #46
 3825 010a 1022     		movs	r2, #16
 3826 010c 4FEA1B2B 		lsr	fp, fp, #8
 3827 0110 87F83B20 		strb	r2, [r7, #59]
 3828 0114 87F844A0 		strb	r10, [r7, #68]
 3829 0118 87F845B0 		strb	fp, [r7, #69]
 3830 011c 87F830E0 		strb	lr, [r7, #48]
 3831 0120 87F84960 		strb	r6, [r7, #73]
 3832 0124 87F84A40 		strb	r4, [r7, #74]
 3833 0128 87F84B30 		strb	r3, [r7, #75]
 3834 012c D5F800C0 		ldr	ip, [r5]	@ unaligned
 3835 0130 AC68     		ldr	r4, [r5, #8]	@ unaligned
 3836 0132 E968     		ldr	r1, [r5, #12]	@ unaligned
 3837 0134 0496     		str	r6, [sp, #16]
 3838 0136 6E68     		ldr	r6, [r5, #4]	@ unaligned
 3839 0138 C7F850C0 		str	ip, [r7, #80]	@ unaligned
 3840 013c 7E65     		str	r6, [r7, #84]	@ unaligned
 3841 013e BC65     		str	r4, [r7, #88]	@ unaligned
 3842 0140 F965     		str	r1, [r7, #92]	@ unaligned
 3843 0142 E969     		ldr	r1, [r5, #28]	@ unaligned
 3844 0144 6E69     		ldr	r6, [r5, #20]	@ unaligned
 3845 0146 AC69     		ldr	r4, [r5, #24]	@ unaligned
 3846 0148 D5F810C0 		ldr	ip, [r5, #16]	@ unaligned
 3847 014c 0B98     		ldr	r0, [sp, #44]
 3848 014e C7F860C0 		str	ip, [r7, #96]	@ unaligned
 3849 0152 7E66     		str	r6, [r7, #100]	@ unaligned
 3850 0154 BC66     		str	r4, [r7, #104]	@ unaligned
 3851 0156 F966     		str	r1, [r7, #108]	@ unaligned
 3852 0158 87F851E0 		strb	lr, [r7, #81]
 3853 015c 0178     		ldrb	r1, [r0]	@ zero_extendqisi2
 3854 015e 0D9A     		ldr	r2, [sp, #52]
 3855 0160 0329     		cmp	r1, #3
 3856 0162 4ED0     		beq	.L925
 3857              	.L947:
 3858 0164 110C     		lsrs	r1, r2, #16
 3859 0166 CCB2     		uxtb	r4, r1
 3860 0168 D6B2     		uxtb	r6, r2
 3861 016a 090A     		lsrs	r1, r1, #8
 3862 016c C2F30722 		ubfx	r2, r2, #8, #8
 3863              	.L926:
 3864 0170 87F86A60 		strb	r6, [r7, #106]
 3865 0174 87F86B20 		strb	r2, [r7, #107]
 3866 0178 87F86440 		strb	r4, [r7, #100]
 3867 017c 87F86510 		strb	r1, [r7, #101]
 3868 0180 8278     		ldrb	r2, [r0, #2]	@ zero_extendqisi2
 3869 0182 E2B1     		cbz	r2, .L927
 3870 0184 571E     		subs	r7, r2, #1
 3871 0186 FFB2     		uxtb	r7, r7
 3872 0188 2B46     		mov	r3, r5
 3873 018a 0137     		adds	r7, r7, #1
 3874 018c 4F44     		add	r7, r7, r9
 3875 018e 4D46     		mov	r5, r9
 3876 0190 0126     		movs	r6, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 69


 3877 0192 9946     		mov	r9, r3
 3878 0194 00E0     		b	.L929
 3879              	.L950:
 3880 0196 0B98     		ldr	r0, [sp, #44]
 3881              	.L929:
 3882 0198 0B9B     		ldr	r3, [sp, #44]
 3883 019a C562     		str	r5, [r0, #44]
 3884 019c 0021     		movs	r1, #0
 3885 019e 1E71     		strb	r6, [r3, #4]
 3886 01a0 FFF7FEFF 		bl	move_window
 3887 01a4 0446     		mov	r4, r0
 3888 01a6 0146     		mov	r1, r0
 3889 01a8 4FF40072 		mov	r2, #512
 3890 01ac 4846     		mov	r0, r9
 3891 01ae 0135     		adds	r5, r5, #1
 3892 01b0 002C     		cmp	r4, #0
 3893 01b2 7FF44FAF 		bne	.L930
 3894 01b6 FFF7FEFF 		bl	memset
 3895 01ba BD42     		cmp	r5, r7
 3896 01bc EBD1     		bne	.L950
 3897              	.L927:
 3898 01be 0BA8     		add	r0, sp, #44
 3899 01c0 FFF7FEFF 		bl	dir_register
 3900 01c4 0446     		mov	r4, r0
 3901 01c6 0028     		cmp	r0, #0
 3902 01c8 7FF444AF 		bne	.L930
 3903 01cc 109B     		ldr	r3, [sp, #64]
 3904 01ce 019C     		ldr	r4, [sp, #4]
 3905 01d0 0B9A     		ldr	r2, [sp, #44]
 3906 01d2 9C75     		strb	r4, [r3, #22]
 3907 01d4 029C     		ldr	r4, [sp, #8]
 3908 01d6 1020     		movs	r0, #16
 3909 01d8 DC75     		strb	r4, [r3, #23]
 3910 01da 039C     		ldr	r4, [sp, #12]
 3911 01dc 0121     		movs	r1, #1
 3912 01de 1C76     		strb	r4, [r3, #24]
 3913 01e0 049C     		ldr	r4, [sp, #16]
 3914 01e2 D872     		strb	r0, [r3, #11]
 3915 01e4 5C76     		strb	r4, [r3, #25]
 3916 01e6 059C     		ldr	r4, [sp, #20]
 3917 01e8 83F814A0 		strb	r10, [r3, #20]
 3918 01ec 9C76     		strb	r4, [r3, #26]
 3919 01ee 069C     		ldr	r4, [sp, #24]
 3920 01f0 83F815B0 		strb	fp, [r3, #21]
 3921 01f4 DC76     		strb	r4, [r3, #27]
 3922 01f6 1046     		mov	r0, r2
 3923 01f8 1171     		strb	r1, [r2, #4]
 3924 01fa FFF7FEFF 		bl	sync
 3925 01fe 0446     		mov	r4, r0
 3926 0200 0EE7     		b	.L940
 3927              	.L925:
 3928 0202 416A     		ldr	r1, [r0, #36]
 3929 0204 9142     		cmp	r1, r2
 3930 0206 ADD1     		bne	.L947
 3931 0208 0021     		movs	r1, #0
 3932 020a 0C46     		mov	r4, r1
 3933 020c 0A46     		mov	r2, r1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 70


 3934 020e 0E46     		mov	r6, r1
 3935 0210 AEE7     		b	.L926
 3936              		.size	f_mkdir, .-f_mkdir
 3937 0212 00BF     		.section	.text.f_chmod,"ax",%progbits
 3938              		.align	2
 3939              		.global	f_chmod
 3940              		.thumb
 3941              		.thumb_func
 3942              		.type	f_chmod, %function
 3943              	f_chmod:
 3944              		@ args = 0, pretend = 0, frame = 568
 3945              		@ frame_needed = 0, uses_anonymous_args = 0
 3946 0000 30B5     		push	{r4, r5, lr}
 3947 0002 ADF50F7D 		sub	sp, sp, #572
 3948 0006 0C46     		mov	r4, r1
 3949 0008 1546     		mov	r5, r2
 3950 000a 0190     		str	r0, [sp, #4]
 3951 000c 05A9     		add	r1, sp, #20
 3952 000e 01A8     		add	r0, sp, #4
 3953 0010 0122     		movs	r2, #1
 3954 0012 FFF7FEFF 		bl	chk_mounted
 3955 0016 10B1     		cbz	r0, .L954
 3956              	.L952:
 3957 0018 0DF50F7D 		add	sp, sp, #572
 3958              		@ sp needed
 3959 001c 30BD     		pop	{r4, r5, pc}
 3960              	.L954:
 3961 001e 02AA     		add	r2, sp, #8
 3962 0020 0EAB     		add	r3, sp, #56
 3963 0022 0199     		ldr	r1, [sp, #4]
 3964 0024 05A8     		add	r0, sp, #20
 3965 0026 0B92     		str	r2, [sp, #44]
 3966 0028 0C93     		str	r3, [sp, #48]
 3967 002a FFF7FEFF 		bl	follow_path
 3968 002e 0028     		cmp	r0, #0
 3969 0030 F2D1     		bne	.L952
 3970 0032 0A9B     		ldr	r3, [sp, #40]
 3971 0034 83B1     		cbz	r3, .L953
 3972 0036 D97A     		ldrb	r1, [r3, #11]	@ zero_extendqisi2
 3973 0038 05F02705 		and	r5, r5, #39
 3974 003c 059A     		ldr	r2, [sp, #20]
 3975 003e 2C40     		ands	r4, r4, r5
 3976 0040 21EA0505 		bic	r5, r1, r5
 3977 0044 2543     		orrs	r5, r5, r4
 3978 0046 0121     		movs	r1, #1
 3979 0048 DD72     		strb	r5, [r3, #11]
 3980 004a 1046     		mov	r0, r2
 3981 004c 1171     		strb	r1, [r2, #4]
 3982 004e FFF7FEFF 		bl	sync
 3983 0052 0DF50F7D 		add	sp, sp, #572
 3984              		@ sp needed
 3985 0056 30BD     		pop	{r4, r5, pc}
 3986              	.L953:
 3987 0058 0620     		movs	r0, #6
 3988 005a 0DF50F7D 		add	sp, sp, #572
 3989              		@ sp needed
 3990 005e 30BD     		pop	{r4, r5, pc}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 71


 3991              		.size	f_chmod, .-f_chmod
 3992              		.section	.text.f_utime,"ax",%progbits
 3993              		.align	2
 3994              		.global	f_utime
 3995              		.thumb
 3996              		.thumb_func
 3997              		.type	f_utime, %function
 3998              	f_utime:
 3999              		@ args = 0, pretend = 0, frame = 568
 4000              		@ frame_needed = 0, uses_anonymous_args = 0
 4001 0000 30B5     		push	{r4, r5, lr}
 4002 0002 ADF50F7D 		sub	sp, sp, #572
 4003 0006 0C46     		mov	r4, r1
 4004 0008 0190     		str	r0, [sp, #4]
 4005 000a 05A9     		add	r1, sp, #20
 4006 000c 01A8     		add	r0, sp, #4
 4007 000e 0122     		movs	r2, #1
 4008 0010 FFF7FEFF 		bl	chk_mounted
 4009 0014 10B1     		cbz	r0, .L958
 4010              	.L956:
 4011 0016 0DF50F7D 		add	sp, sp, #572
 4012              		@ sp needed
 4013 001a 30BD     		pop	{r4, r5, pc}
 4014              	.L958:
 4015 001c 02AA     		add	r2, sp, #8
 4016 001e 0EAB     		add	r3, sp, #56
 4017 0020 0199     		ldr	r1, [sp, #4]
 4018 0022 05A8     		add	r0, sp, #20
 4019 0024 0B92     		str	r2, [sp, #44]
 4020 0026 0C93     		str	r3, [sp, #48]
 4021 0028 FFF7FEFF 		bl	follow_path
 4022 002c 0028     		cmp	r0, #0
 4023 002e F2D1     		bne	.L956
 4024 0030 0A9B     		ldr	r3, [sp, #40]
 4025 0032 93B1     		cbz	r3, .L957
 4026 0034 E188     		ldrh	r1, [r4, #6]
 4027 0036 059A     		ldr	r2, [sp, #20]
 4028 0038 9975     		strb	r1, [r3, #22]
 4029 003a E088     		ldrh	r0, [r4, #6]
 4030 003c 0121     		movs	r1, #1
 4031 003e 000A     		lsrs	r0, r0, #8
 4032 0040 D875     		strb	r0, [r3, #23]
 4033 0042 A588     		ldrh	r5, [r4, #4]
 4034 0044 1046     		mov	r0, r2
 4035 0046 1D76     		strb	r5, [r3, #24]
 4036 0048 A488     		ldrh	r4, [r4, #4]
 4037 004a 240A     		lsrs	r4, r4, #8
 4038 004c 5C76     		strb	r4, [r3, #25]
 4039 004e 1171     		strb	r1, [r2, #4]
 4040 0050 FFF7FEFF 		bl	sync
 4041 0054 0DF50F7D 		add	sp, sp, #572
 4042              		@ sp needed
 4043 0058 30BD     		pop	{r4, r5, pc}
 4044              	.L957:
 4045 005a 0620     		movs	r0, #6
 4046 005c 0DF50F7D 		add	sp, sp, #572
 4047              		@ sp needed
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 72


 4048 0060 30BD     		pop	{r4, r5, pc}
 4049              		.size	f_utime, .-f_utime
 4050 0062 00BF     		.section	.text.f_rename,"ax",%progbits
 4051              		.align	2
 4052              		.global	f_rename
 4053              		.thumb
 4054              		.thumb_func
 4055              		.type	f_rename, %function
 4056              	f_rename:
 4057              		@ args = 0, pretend = 0, frame = 632
 4058              		@ frame_needed = 0, uses_anonymous_args = 0
 4059 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 4060 0004 ADF51E7D 		sub	sp, sp, #632
 4061 0008 0F46     		mov	r7, r1
 4062 000a 0190     		str	r0, [sp, #4]
 4063 000c 0CA9     		add	r1, sp, #48
 4064 000e 01A8     		add	r0, sp, #4
 4065 0010 0122     		movs	r2, #1
 4066 0012 FFF7FEFF 		bl	chk_mounted
 4067 0016 18B1     		cbz	r0, .L976
 4068              	.L973:
 4069 0018 0DF51E7D 		add	sp, sp, #632
 4070              		@ sp needed
 4071 001c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4072              	.L976:
 4073 0020 0C9B     		ldr	r3, [sp, #48]
 4074 0022 03AC     		add	r4, sp, #12
 4075 0024 1EAA     		add	r2, sp, #120
 4076 0026 0199     		ldr	r1, [sp, #4]
 4077 0028 0CA8     		add	r0, sp, #48
 4078 002a 1593     		str	r3, [sp, #84]
 4079 002c 1294     		str	r4, [sp, #72]
 4080 002e 1392     		str	r2, [sp, #76]
 4081 0030 FFF7FEFF 		bl	follow_path
 4082 0034 0028     		cmp	r0, #0
 4083 0036 EFD1     		bne	.L973
 4084 0038 119B     		ldr	r3, [sp, #68]
 4085 003a 002B     		cmp	r3, #0
 4086 003c 75D0     		beq	.L967
 4087 003e 9E46     		mov	lr, r3
 4088 0040 5EF80B0F 		ldr	r0, [lr, #11]!	@ unaligned
 4089 0044 06AE     		add	r6, sp, #24
 4090 0046 DEF80410 		ldr	r1, [lr, #4]	@ unaligned
 4091 004a DEF80820 		ldr	r2, [lr, #8]	@ unaligned
 4092 004e DEF80C30 		ldr	r3, [lr, #12]	@ unaligned
 4093 0052 0CAD     		add	r5, sp, #48
 4094 0054 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 4095 0056 DEF81000 		ldr	r0, [lr, #16]	@ unaligned
 4096 005a 15AC     		add	r4, sp, #84
 4097 005c 9EF814E0 		ldrb	lr, [lr, #20]	@ zero_extendqisi2
 4098 0060 3060     		str	r0, [r6]	@ unaligned
 4099 0062 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 4100 0064 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 4101 0066 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 4102 0068 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 4103 006a 2B68     		ldr	r3, [r5]
 4104 006c 3946     		mov	r1, r7
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 73


 4105 006e 15A8     		add	r0, sp, #84
 4106 0070 86F804E0 		strb	lr, [r6, #4]
 4107 0074 2360     		str	r3, [r4]
 4108 0076 FFF7FEFF 		bl	follow_path
 4109 007a 0028     		cmp	r0, #0
 4110 007c 5AD0     		beq	.L968
 4111 007e 0428     		cmp	r0, #4
 4112 0080 CAD1     		bne	.L973
 4113 0082 15A8     		add	r0, sp, #84
 4114 0084 FFF7FEFF 		bl	dir_register
 4115 0088 0028     		cmp	r0, #0
 4116 008a C5D1     		bne	.L973
 4117 008c 1A9B     		ldr	r3, [sp, #104]
 4118 008e DDF81A20 		ldr	r2, [sp, #26]	@ unaligned
 4119 0092 9DF81840 		ldrb	r4, [sp, #24]	@ zero_extendqisi2
 4120 0096 C3F80D20 		str	r2, [r3, #13]	@ unaligned
 4121 009a 0C99     		ldr	r1, [sp, #48]
 4122 009c DDF81E80 		ldr	r8, [sp, #30]	@ unaligned
 4123 00a0 DDF822C0 		ldr	ip, [sp, #34]	@ unaligned
 4124 00a4 DDF82670 		ldr	r7, [sp, #38]	@ unaligned
 4125 00a8 BDF82A60 		ldrh	r6, [sp, #42]	@ unaligned
 4126 00ac 9DF82C50 		ldrb	r5, [sp, #44]	@ zero_extendqisi2
 4127 00b0 44F02004 		orr	r4, r4, #32
 4128 00b4 0120     		movs	r0, #1
 4129 00b6 C3F81180 		str	r8, [r3, #17]	@ unaligned
 4130 00ba C3F815C0 		str	ip, [r3, #21]	@ unaligned
 4131 00be DC72     		strb	r4, [r3, #11]
 4132 00c0 C3F81970 		str	r7, [r3, #25]	@ unaligned
 4133 00c4 A3F81D60 		strh	r6, [r3, #29]	@ unaligned
 4134 00c8 DD77     		strb	r5, [r3, #31]
 4135 00ca 0871     		strb	r0, [r1, #4]
 4136 00cc 0E99     		ldr	r1, [sp, #56]
 4137 00ce 179A     		ldr	r2, [sp, #92]
 4138 00d0 9142     		cmp	r1, r2
 4139 00d2 20D0     		beq	.L965
 4140 00d4 DA7A     		ldrb	r2, [r3, #11]	@ zero_extendqisi2
 4141 00d6 D206     		lsls	r2, r2, #27
 4142 00d8 1DD5     		bpl	.L965
 4143 00da DA7E     		ldrb	r2, [r3, #27]	@ zero_extendqisi2
 4144 00dc 5C7D     		ldrb	r4, [r3, #21]	@ zero_extendqisi2
 4145 00de 197D     		ldrb	r1, [r3, #20]	@ zero_extendqisi2
 4146 00e0 1598     		ldr	r0, [sp, #84]
 4147 00e2 9B7E     		ldrb	r3, [r3, #26]	@ zero_extendqisi2
 4148 00e4 41EA0421 		orr	r1, r1, r4, lsl #8
 4149 00e8 43EA0223 		orr	r3, r3, r2, lsl #8
 4150 00ec 8269     		ldr	r2, [r0, #24]
 4151 00ee 43EA0143 		orr	r3, r3, r1, lsl #16
 4152 00f2 023B     		subs	r3, r3, #2
 4153 00f4 023A     		subs	r2, r2, #2
 4154 00f6 9342     		cmp	r3, r2
 4155 00f8 1ED2     		bcs	.L970
 4156 00fa 8178     		ldrb	r1, [r0, #2]	@ zero_extendqisi2
 4157 00fc 826A     		ldr	r2, [r0, #40]
 4158 00fe 01FB0321 		mla	r1, r1, r3, r2
 4159 0102 C9B1     		cbz	r1, .L970
 4160 0104 FFF7FEFF 		bl	move_window
 4161 0108 159B     		ldr	r3, [sp, #84]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 74


 4162 010a 0028     		cmp	r0, #0
 4163 010c 84D1     		bne	.L973
 4164 010e 93F85120 		ldrb	r2, [r3, #81]	@ zero_extendqisi2
 4165 0112 2E2A     		cmp	r2, #46
 4166 0114 12D0     		beq	.L977
 4167              	.L965:
 4168 0116 0CA8     		add	r0, sp, #48
 4169 0118 FFF7FEFF 		bl	dir_remove
 4170 011c 0028     		cmp	r0, #0
 4171 011e 7FF47BAF 		bne	.L973
 4172 0122 0C98     		ldr	r0, [sp, #48]
 4173 0124 FFF7FEFF 		bl	sync
 4174 0128 76E7     		b	.L973
 4175              	.L967:
 4176 012a 0420     		movs	r0, #4
 4177 012c 0DF51E7D 		add	sp, sp, #632
 4178              		@ sp needed
 4179 0130 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4180              	.L968:
 4181 0134 0820     		movs	r0, #8
 4182 0136 6FE7     		b	.L973
 4183              	.L970:
 4184 0138 0220     		movs	r0, #2
 4185 013a 6DE7     		b	.L973
 4186              	.L977:
 4187 013c 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 4188 013e 032A     		cmp	r2, #3
 4189 0140 0FD0     		beq	.L978
 4190              	.L963:
 4191 0142 1798     		ldr	r0, [sp, #92]
 4192              	.L964:
 4193 0144 020C     		lsrs	r2, r0, #16
 4194 0146 150A     		lsrs	r5, r2, #8
 4195 0148 C0F30724 		ubfx	r4, r0, #8, #8
 4196 014c 0121     		movs	r1, #1
 4197 014e 83F86A00 		strb	r0, [r3, #106]
 4198 0152 83F86420 		strb	r2, [r3, #100]
 4199 0156 83F86550 		strb	r5, [r3, #101]
 4200 015a 83F86B40 		strb	r4, [r3, #107]
 4201 015e 1971     		strb	r1, [r3, #4]
 4202 0160 D9E7     		b	.L965
 4203              	.L978:
 4204 0162 1799     		ldr	r1, [sp, #92]
 4205 0164 5A6A     		ldr	r2, [r3, #36]
 4206 0166 9142     		cmp	r1, r2
 4207 0168 EBD1     		bne	.L963
 4208 016a EBE7     		b	.L964
 4209              		.size	f_rename, .-f_rename
 4210              		.section	.rodata.excvt.4829,"a",%progbits
 4211              		.align	2
 4212              		.set	.LANCHOR3,. + 0
 4213              		.type	excvt.4829, %object
 4214              		.size	excvt.4829, 128
 4215              	excvt.4829:
 4216 0000 80       		.byte	-128
 4217 0001 9A       		.byte	-102
 4218 0002 90       		.byte	-112
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 75


 4219 0003 B6       		.byte	-74
 4220 0004 8E       		.byte	-114
 4221 0005 B7       		.byte	-73
 4222 0006 8F       		.byte	-113
 4223 0007 80       		.byte	-128
 4224 0008 D2       		.byte	-46
 4225 0009 D3       		.byte	-45
 4226 000a D4       		.byte	-44
 4227 000b D8       		.byte	-40
 4228 000c D7       		.byte	-41
 4229 000d DE       		.byte	-34
 4230 000e 8E       		.byte	-114
 4231 000f 8F       		.byte	-113
 4232 0010 90       		.byte	-112
 4233 0011 92       		.byte	-110
 4234 0012 92       		.byte	-110
 4235 0013 E2       		.byte	-30
 4236 0014 99       		.byte	-103
 4237 0015 E3       		.byte	-29
 4238 0016 EA       		.byte	-22
 4239 0017 EB       		.byte	-21
 4240 0018 59       		.byte	89
 4241 0019 99       		.byte	-103
 4242 001a 9A       		.byte	-102
 4243 001b 9D       		.byte	-99
 4244 001c 9C       		.byte	-100
 4245 001d 9D       		.byte	-99
 4246 001e 9E       		.byte	-98
 4247 001f 9F       		.byte	-97
 4248 0020 B5       		.byte	-75
 4249 0021 D6       		.byte	-42
 4250 0022 E0       		.byte	-32
 4251 0023 E9       		.byte	-23
 4252 0024 A5       		.byte	-91
 4253 0025 A5       		.byte	-91
 4254 0026 A6       		.byte	-90
 4255 0027 A7       		.byte	-89
 4256 0028 A8       		.byte	-88
 4257 0029 A9       		.byte	-87
 4258 002a AA       		.byte	-86
 4259 002b AB       		.byte	-85
 4260 002c AC       		.byte	-84
 4261 002d 21       		.byte	33
 4262 002e AE       		.byte	-82
 4263 002f AF       		.byte	-81
 4264 0030 B0       		.byte	-80
 4265 0031 B1       		.byte	-79
 4266 0032 B2       		.byte	-78
 4267 0033 B3       		.byte	-77
 4268 0034 B4       		.byte	-76
 4269 0035 B5       		.byte	-75
 4270 0036 B6       		.byte	-74
 4271 0037 B7       		.byte	-73
 4272 0038 B8       		.byte	-72
 4273 0039 B9       		.byte	-71
 4274 003a BA       		.byte	-70
 4275 003b BB       		.byte	-69
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 76


 4276 003c BC       		.byte	-68
 4277 003d BD       		.byte	-67
 4278 003e BE       		.byte	-66
 4279 003f BF       		.byte	-65
 4280 0040 C0       		.byte	-64
 4281 0041 C1       		.byte	-63
 4282 0042 C2       		.byte	-62
 4283 0043 C3       		.byte	-61
 4284 0044 C4       		.byte	-60
 4285 0045 C5       		.byte	-59
 4286 0046 C7       		.byte	-57
 4287 0047 C7       		.byte	-57
 4288 0048 C8       		.byte	-56
 4289 0049 C9       		.byte	-55
 4290 004a CA       		.byte	-54
 4291 004b CB       		.byte	-53
 4292 004c CC       		.byte	-52
 4293 004d CD       		.byte	-51
 4294 004e CE       		.byte	-50
 4295 004f CF       		.byte	-49
 4296 0050 D0       		.byte	-48
 4297 0051 D1       		.byte	-47
 4298 0052 D2       		.byte	-46
 4299 0053 D3       		.byte	-45
 4300 0054 D4       		.byte	-44
 4301 0055 D5       		.byte	-43
 4302 0056 D6       		.byte	-42
 4303 0057 D7       		.byte	-41
 4304 0058 D8       		.byte	-40
 4305 0059 D9       		.byte	-39
 4306 005a DA       		.byte	-38
 4307 005b DB       		.byte	-37
 4308 005c DC       		.byte	-36
 4309 005d DD       		.byte	-35
 4310 005e DE       		.byte	-34
 4311 005f DF       		.byte	-33
 4312 0060 E0       		.byte	-32
 4313 0061 E1       		.byte	-31
 4314 0062 E2       		.byte	-30
 4315 0063 E3       		.byte	-29
 4316 0064 E5       		.byte	-27
 4317 0065 E5       		.byte	-27
 4318 0066 E6       		.byte	-26
 4319 0067 E7       		.byte	-25
 4320 0068 E7       		.byte	-25
 4321 0069 E9       		.byte	-23
 4322 006a EA       		.byte	-22
 4323 006b EB       		.byte	-21
 4324 006c ED       		.byte	-19
 4325 006d ED       		.byte	-19
 4326 006e EE       		.byte	-18
 4327 006f EF       		.byte	-17
 4328 0070 F0       		.byte	-16
 4329 0071 F1       		.byte	-15
 4330 0072 F2       		.byte	-14
 4331 0073 F3       		.byte	-13
 4332 0074 F4       		.byte	-12
ARM GAS  C:\Users\George\AppData\Local\Temp\ccISTfsj.s 			page 77


 4333 0075 F5       		.byte	-11
 4334 0076 F6       		.byte	-10
 4335 0077 F7       		.byte	-9
 4336 0078 F8       		.byte	-8
 4337 0079 F9       		.byte	-7
 4338 007a FA       		.byte	-6
 4339 007b FB       		.byte	-5
 4340 007c FC       		.byte	-4
 4341 007d FD       		.byte	-3
 4342 007e FE       		.byte	-2
 4343 007f FF       		.byte	-1
 4344              		.section	.bss.Fsid,"aw",%nobits
 4345              		.align	1
 4346              		.set	.LANCHOR1,. + 0
 4347              		.type	Fsid, %object
 4348              		.size	Fsid, 2
 4349              	Fsid:
 4350 0000 0000     		.space	2
 4351              		.section	.rodata.str1.4,"aMS",%progbits,1
 4352              		.align	2
 4353              	.LC0:
 4354 0000 222A3A3C 		.ascii	"\"*:<>?|\177\000"
 4354      3E3F7C7F 
 4354      00
 4355 0009 000000   		.space	3
 4356              	.LC1:
 4357 000c 2B2C3B3D 		.ascii	"+,;=[]\000"
 4357      5B5D00
 4358 0013 00       		.section	.rodata.LfnOfs,"a",%progbits
 4359              		.align	2
 4360              		.set	.LANCHOR2,. + 0
 4361              		.type	LfnOfs, %object
 4362              		.size	LfnOfs, 13
 4363              	LfnOfs:
 4364 0000 01       		.byte	1
 4365 0001 03       		.byte	3
 4366 0002 05       		.byte	5
 4367 0003 07       		.byte	7
 4368 0004 09       		.byte	9
 4369 0005 0E       		.byte	14
 4370 0006 10       		.byte	16
 4371 0007 12       		.byte	18
 4372 0008 14       		.byte	20
 4373 0009 16       		.byte	22
 4374 000a 18       		.byte	24
 4375 000b 1C       		.byte	28
 4376 000c 1E       		.byte	30
 4377 000d 000000   		.section	.bss.FatFs,"aw",%nobits
 4378              		.align	2
 4379              		.set	.LANCHOR0,. + 0
 4380              		.type	FatFs, %object
 4381              		.size	FatFs, 8
 4382              	FatFs:
 4383 0000 00000000 		.space	8
 4383      00000000 
 4384              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
