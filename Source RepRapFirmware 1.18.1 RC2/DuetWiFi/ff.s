ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 1


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
  15              		.file	"ff.c"
  16              		.section	.text.get_fileinfo,"ax",%progbits
  17              		.align	2
  18              		.thumb
  19              		.thumb_func
  20              		.type	get_fileinfo, %function
  21              	get_fileinfo:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
  25 0002 0369     		ldr	r3, [r0, #16]
  26 0004 0E46     		mov	r6, r1
  27 0006 01F10905 		add	r5, r1, #9
  28 000a 002B     		cmp	r3, #0
  29 000c 4ED0     		beq	.L2
  30 000e 4469     		ldr	r4, [r0, #20]
  31 0010 94F80CC0 		ldrb	ip, [r4, #12]	@ zero_extendqisi2
  32 0014 0CF00807 		and	r7, ip, #8
  33 0018 FFB2     		uxtb	r7, r7
  34 001a 0022     		movs	r2, #0
  35              	.L6:
  36 001c A35C     		ldrb	r3, [r4, r2]	@ zero_extendqisi2
  37 001e 202B     		cmp	r3, #32
  38 0020 02F10102 		add	r2, r2, #1
  39 0024 0DD0     		beq	.L3
  40 0026 052B     		cmp	r3, #5
  41 0028 08BF     		it	eq
  42 002a E523     		moveq	r3, #229
  43 002c A3F14101 		sub	r1, r3, #65
  44 0030 1FB1     		cbz	r7, .L5
  45 0032 1929     		cmp	r1, #25
  46 0034 9CBF     		itt	ls
  47 0036 2033     		addls	r3, r3, #32
  48 0038 DBB2     		uxtbls	r3, r3
  49              	.L5:
  50 003a 082A     		cmp	r2, #8
  51 003c 05F8013B 		strb	r3, [r5], #1
  52 0040 ECD1     		bne	.L6
  53              	.L3:
  54 0042 237A     		ldrb	r3, [r4, #8]	@ zero_extendqisi2
  55 0044 202B     		cmp	r3, #32
  56 0046 1AD0     		beq	.L7
  57 0048 2946     		mov	r1, r5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 2


  58 004a 2E23     		movs	r3, #46
  59 004c 0CF0100C 		and	ip, ip, #16
  60 0050 01F8043B 		strb	r3, [r1], #4
  61 0054 5FFA8CFC 		uxtb	ip, ip
  62 0058 0135     		adds	r5, r5, #1
  63 005a E21D     		adds	r2, r4, #7
  64              	.L9:
  65 005c 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
  66 0060 202B     		cmp	r3, #32
  67 0062 A3F14107 		sub	r7, r3, #65
  68 0066 0AD0     		beq	.L7
  69 0068 BCF1000F 		cmp	ip, #0
  70 006c 03D0     		beq	.L8
  71 006e 192F     		cmp	r7, #25
  72 0070 9CBF     		itt	ls
  73 0072 2033     		addls	r3, r3, #32
  74 0074 DBB2     		uxtbls	r3, r3
  75              	.L8:
  76 0076 05F8013B 		strb	r3, [r5], #1
  77 007a 8D42     		cmp	r5, r1
  78 007c EED1     		bne	.L9
  79              	.L7:
  80 007e E37A     		ldrb	r3, [r4, #11]	@ zero_extendqisi2
  81 0080 3372     		strb	r3, [r6, #8]
  82 0082 A37F     		ldrb	r3, [r4, #30]	@ zero_extendqisi2
  83 0084 E77F     		ldrb	r7, [r4, #31]	@ zero_extendqisi2
  84 0086 217F     		ldrb	r1, [r4, #28]	@ zero_extendqisi2
  85 0088 627F     		ldrb	r2, [r4, #29]	@ zero_extendqisi2
  86 008a 1B04     		lsls	r3, r3, #16
  87 008c 43EA0763 		orr	r3, r3, r7, lsl #24
  88 0090 0B43     		orrs	r3, r3, r1
  89 0092 43EA0223 		orr	r3, r3, r2, lsl #8
  90 0096 3360     		str	r3, [r6]
  91 0098 627E     		ldrb	r2, [r4, #25]	@ zero_extendqisi2
  92 009a 237E     		ldrb	r3, [r4, #24]	@ zero_extendqisi2
  93 009c 43EA0223 		orr	r3, r3, r2, lsl #8
  94 00a0 B380     		strh	r3, [r6, #4]	@ movhi
  95 00a2 E27D     		ldrb	r2, [r4, #23]	@ zero_extendqisi2
  96 00a4 A37D     		ldrb	r3, [r4, #22]	@ zero_extendqisi2
  97 00a6 43EA0223 		orr	r3, r3, r2, lsl #8
  98 00aa F380     		strh	r3, [r6, #6]	@ movhi
  99              	.L2:
 100 00ac 0024     		movs	r4, #0
 101 00ae 2C70     		strb	r4, [r5]
 102 00b0 B569     		ldr	r5, [r6, #24]
 103 00b2 35B1     		cbz	r5, .L1
 104 00b4 F369     		ldr	r3, [r6, #28]
 105 00b6 23B1     		cbz	r3, .L1
 106 00b8 0369     		ldr	r3, [r0, #16]
 107 00ba 1BB9     		cbnz	r3, .L11
 108              	.L13:
 109 00bc 0024     		movs	r4, #0
 110              	.L12:
 111 00be 0023     		movs	r3, #0
 112 00c0 2B55     		strb	r3, [r5, r4]
 113              	.L1:
 114 00c2 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 3


 115              	.L11:
 116 00c4 028C     		ldrh	r2, [r0, #32]
 117 00c6 4FF6FF73 		movw	r3, #65535
 118 00ca 9A42     		cmp	r2, r3
 119 00cc F6D0     		beq	.L13
 120 00ce C769     		ldr	r7, [r0, #28]
 121 00d0 3888     		ldrh	r0, [r7]
 122 00d2 70B9     		cbnz	r0, .L14
 123 00d4 F2E7     		b	.L13
 124              	.L54:
 125 00d6 F369     		ldr	r3, [r6, #28]
 126 00d8 013B     		subs	r3, r3, #1
 127 00da 9C42     		cmp	r4, r3
 128 00dc 04F10104 		add	r4, r4, #1
 129 00e0 05EB0403 		add	r3, r5, r4
 130 00e4 EAD2     		bcs	.L13
 131 00e6 03F8010C 		strb	r0, [r3, #-1]
 132 00ea 37F81400 		ldrh	r0, [r7, r4, lsl #1]
 133 00ee 0028     		cmp	r0, #0
 134 00f0 E5D0     		beq	.L12
 135              	.L14:
 136 00f2 0021     		movs	r1, #0
 137 00f4 FFF7FEFF 		bl	ff_convert
 138 00f8 0028     		cmp	r0, #0
 139 00fa ECD1     		bne	.L54
 140 00fc DEE7     		b	.L13
 141              		.size	get_fileinfo, .-get_fileinfo
 142 00fe 00BF     		.section	.text.move_window,"ax",%progbits
 143              		.align	2
 144              		.thumb
 145              		.thumb_func
 146              		.type	move_window, %function
 147              	move_window:
 148              		@ args = 0, pretend = 0, frame = 0
 149              		@ frame_needed = 0, uses_anonymous_args = 0
 150 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 151 0004 C56A     		ldr	r5, [r0, #44]
 152 0006 8D42     		cmp	r5, r1
 153 0008 0446     		mov	r4, r0
 154 000a 0E46     		mov	r6, r1
 155 000c 02D0     		beq	.L60
 156 000e 0379     		ldrb	r3, [r0, #4]	@ zero_extendqisi2
 157 0010 73B9     		cbnz	r3, .L58
 158              	.L62:
 159 0012 16B9     		cbnz	r6, .L69
 160              	.L60:
 161 0014 0020     		movs	r0, #0
 162 0016 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 163              	.L69:
 164 001a 6078     		ldrb	r0, [r4, #1]	@ zero_extendqisi2
 165 001c 04F13001 		add	r1, r4, #48
 166 0020 3246     		mov	r2, r6
 167 0022 0123     		movs	r3, #1
 168 0024 FFF7FEFF 		bl	disk_read
 169 0028 20BB     		cbnz	r0, .L64
 170 002a E662     		str	r6, [r4, #44]
 171 002c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 4


 172              	.L58:
 173 0030 00F13008 		add	r8, r0, #48
 174 0034 4146     		mov	r1, r8
 175 0036 4078     		ldrb	r0, [r0, #1]	@ zero_extendqisi2
 176 0038 2A46     		mov	r2, r5
 177 003a 0123     		movs	r3, #1
 178 003c FFF7FEFF 		bl	disk_write
 179 0040 C0B9     		cbnz	r0, .L64
 180 0042 E369     		ldr	r3, [r4, #28]
 181 0044 226A     		ldr	r2, [r4, #32]
 182 0046 2071     		strb	r0, [r4, #4]
 183 0048 1A44     		add	r2, r2, r3
 184 004a 9542     		cmp	r5, r2
 185 004c E1D2     		bcs	.L62
 186 004e E778     		ldrb	r7, [r4, #3]	@ zero_extendqisi2
 187 0050 012F     		cmp	r7, #1
 188 0052 01D8     		bhi	.L63
 189 0054 DDE7     		b	.L62
 190              	.L70:
 191 0056 E369     		ldr	r3, [r4, #28]
 192              	.L63:
 193 0058 1D44     		add	r5, r5, r3
 194 005a 013F     		subs	r7, r7, #1
 195 005c 2A46     		mov	r2, r5
 196 005e 6078     		ldrb	r0, [r4, #1]	@ zero_extendqisi2
 197 0060 4146     		mov	r1, r8
 198 0062 0123     		movs	r3, #1
 199 0064 FFB2     		uxtb	r7, r7
 200 0066 FFF7FEFF 		bl	disk_write
 201 006a 012F     		cmp	r7, #1
 202 006c F3D1     		bne	.L70
 203 006e 002E     		cmp	r6, #0
 204 0070 D0D0     		beq	.L60
 205 0072 D2E7     		b	.L69
 206              	.L64:
 207 0074 0120     		movs	r0, #1
 208 0076 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 209              		.size	move_window, .-move_window
 210 007a 00BF     		.section	.text.sync,"ax",%progbits
 211              		.align	2
 212              		.thumb
 213              		.thumb_func
 214              		.type	sync, %function
 215              	sync:
 216              		@ args = 0, pretend = 0, frame = 0
 217              		@ frame_needed = 0, uses_anonymous_args = 0
 218 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 219 0004 0021     		movs	r1, #0
 220 0006 0446     		mov	r4, r0
 221 0008 FFF7FEFF 		bl	move_window
 222 000c 0546     		mov	r5, r0
 223 000e 55B9     		cbnz	r5, .L72
 224 0010 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 225 0012 032B     		cmp	r3, #3
 226 0014 09D0     		beq	.L77
 227              	.L73:
 228 0016 0021     		movs	r1, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 5


 229 0018 6078     		ldrb	r0, [r4, #1]	@ zero_extendqisi2
 230 001a 0A46     		mov	r2, r1
 231 001c FFF7FEFF 		bl	disk_ioctl
 232 0020 0030     		adds	r0, r0, #0
 233 0022 18BF     		it	ne
 234 0024 0120     		movne	r0, #1
 235              	.L72:
 236 0026 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 237              	.L77:
 238 002a 6379     		ldrb	r3, [r4, #5]	@ zero_extendqisi2
 239 002c 002B     		cmp	r3, #0
 240 002e F2D0     		beq	.L73
 241 0030 04F13006 		add	r6, r4, #48
 242 0034 3046     		mov	r0, r6
 243 0036 2946     		mov	r1, r5
 244 0038 4FF40072 		mov	r2, #512
 245 003c E562     		str	r5, [r4, #44]
 246 003e FFF7FEFF 		bl	memset
 247 0042 2269     		ldr	r2, [r4, #16]
 248 0044 E368     		ldr	r3, [r4, #12]
 249 0046 84F81822 		strb	r2, [r4, #536]
 250 004a 4FEA124A 		lsr	r10, r2, #16
 251 004e 4FEA134C 		lsr	ip, r3, #16
 252 0052 4FEA136E 		lsr	lr, r3, #24
 253 0056 5220     		movs	r0, #82
 254 0058 C2F3072B 		ubfx	fp, r2, #8, #8
 255 005c 4FEA1269 		lsr	r9, r2, #24
 256 0060 C3F30728 		ubfx	r8, r3, #8, #8
 257 0064 6122     		movs	r2, #97
 258 0066 3146     		mov	r1, r6
 259 0068 84F81AA2 		strb	r10, [r4, #538]
 260 006c 4126     		movs	r6, #65
 261 006e 4FF0720A 		mov	r10, #114
 262 0072 84F81C32 		strb	r3, [r4, #540]
 263 0076 5527     		movs	r7, #85
 264 0078 6FF05503 		mvn	r3, #85
 265 007c 84F82F32 		strb	r3, [r4, #559]
 266 0080 84F83000 		strb	r0, [r4, #48]
 267 0084 84F83100 		strb	r0, [r4, #49]
 268 0088 84F83220 		strb	r2, [r4, #50]
 269 008c 84F81722 		strb	r2, [r4, #535]
 270 0090 84F819B2 		strb	fp, [r4, #537]
 271 0094 84F81B92 		strb	r9, [r4, #539]
 272 0098 84F81D82 		strb	r8, [r4, #541]
 273 009c 84F81EC2 		strb	ip, [r4, #542]
 274 00a0 84F81FE2 		strb	lr, [r4, #543]
 275 00a4 84F82E72 		strb	r7, [r4, #558]
 276 00a8 84F83360 		strb	r6, [r4, #51]
 277 00ac 84F81662 		strb	r6, [r4, #534]
 278 00b0 84F814A2 		strb	r10, [r4, #532]
 279 00b4 84F815A2 		strb	r10, [r4, #533]
 280 00b8 6078     		ldrb	r0, [r4, #1]	@ zero_extendqisi2
 281 00ba 6269     		ldr	r2, [r4, #20]
 282 00bc 0123     		movs	r3, #1
 283 00be FFF7FEFF 		bl	disk_write
 284 00c2 6571     		strb	r5, [r4, #5]
 285 00c4 A7E7     		b	.L73
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 6


 286              		.size	sync, .-sync
 287 00c6 00BF     		.section	.text.validate,"ax",%progbits
 288              		.align	2
 289              		.thumb
 290              		.thumb_func
 291              		.type	validate, %function
 292              	validate:
 293              		@ args = 0, pretend = 0, frame = 0
 294              		@ frame_needed = 0, uses_anonymous_args = 0
 295 0000 08B5     		push	{r3, lr}
 296 0002 08B1     		cbz	r0, .L83
 297 0004 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 298 0006 0BB9     		cbnz	r3, .L85
 299              	.L83:
 300 0008 0920     		movs	r0, #9
 301 000a 08BD     		pop	{r3, pc}
 302              	.L85:
 303 000c C388     		ldrh	r3, [r0, #6]
 304 000e 8B42     		cmp	r3, r1
 305 0010 FAD1     		bne	.L83
 306 0012 4078     		ldrb	r0, [r0, #1]	@ zero_extendqisi2
 307 0014 FFF7FEFF 		bl	disk_status
 308 0018 10F0010F 		tst	r0, #1
 309 001c 0CBF     		ite	eq
 310 001e 0020     		moveq	r0, #0
 311 0020 0320     		movne	r0, #3
 312 0022 08BD     		pop	{r3, pc}
 313              		.size	validate, .-validate
 314              		.section	.text.check_fs,"ax",%progbits
 315              		.align	2
 316              		.thumb
 317              		.thumb_func
 318              		.type	check_fs, %function
 319              	check_fs:
 320              		@ args = 0, pretend = 0, frame = 0
 321              		@ frame_needed = 0, uses_anonymous_args = 0
 322 0000 70B5     		push	{r4, r5, r6, lr}
 323 0002 0446     		mov	r4, r0
 324 0004 0A46     		mov	r2, r1
 325 0006 4078     		ldrb	r0, [r0, #1]	@ zero_extendqisi2
 326 0008 04F13001 		add	r1, r4, #48
 327 000c 0123     		movs	r3, #1
 328 000e FFF7FEFF 		bl	disk_read
 329 0012 08B1     		cbz	r0, .L91
 330 0014 0320     		movs	r0, #3
 331 0016 70BD     		pop	{r4, r5, r6, pc}
 332              	.L91:
 333 0018 94F82F12 		ldrb	r1, [r4, #559]	@ zero_extendqisi2
 334 001c 94F82E22 		ldrb	r2, [r4, #558]	@ zero_extendqisi2
 335 0020 174B     		ldr	r3, .L93
 336 0022 42EA0122 		orr	r2, r2, r1, lsl #8
 337 0026 12B2     		sxth	r2, r2
 338 0028 9A42     		cmp	r2, r3
 339 002a 01D0     		beq	.L92
 340 002c 0220     		movs	r0, #2
 341              	.L87:
 342 002e 70BD     		pop	{r4, r5, r6, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 7


 343              	.L92:
 344 0030 94F86820 		ldrb	r2, [r4, #104]	@ zero_extendqisi2
 345 0034 94F86960 		ldrb	r6, [r4, #105]	@ zero_extendqisi2
 346 0038 94F86650 		ldrb	r5, [r4, #102]	@ zero_extendqisi2
 347 003c 94F86710 		ldrb	r1, [r4, #103]	@ zero_extendqisi2
 348 0040 104B     		ldr	r3, .L93+4
 349 0042 1204     		lsls	r2, r2, #16
 350 0044 42EA0662 		orr	r2, r2, r6, lsl #24
 351 0048 2A43     		orrs	r2, r2, r5
 352 004a 42EA0122 		orr	r2, r2, r1, lsl #8
 353 004e 22F07F42 		bic	r2, r2, #-16777216
 354 0052 9A42     		cmp	r2, r3
 355 0054 EBD0     		beq	.L87
 356 0056 94F88420 		ldrb	r2, [r4, #132]	@ zero_extendqisi2
 357 005a 94F88550 		ldrb	r5, [r4, #133]	@ zero_extendqisi2
 358 005e 94F88210 		ldrb	r1, [r4, #130]	@ zero_extendqisi2
 359 0062 94F88300 		ldrb	r0, [r4, #131]	@ zero_extendqisi2
 360 0066 1204     		lsls	r2, r2, #16
 361 0068 42EA0562 		orr	r2, r2, r5, lsl #24
 362 006c 0A43     		orrs	r2, r2, r1
 363 006e 42EA0020 		orr	r0, r2, r0, lsl #8
 364 0072 20F07F40 		bic	r0, r0, #-16777216
 365 0076 C01A     		subs	r0, r0, r3
 366 0078 18BF     		it	ne
 367 007a 0120     		movne	r0, #1
 368 007c 70BD     		pop	{r4, r5, r6, pc}
 369              	.L94:
 370 007e 00BF     		.align	2
 371              	.L93:
 372 0080 55AAFFFF 		.word	-21931
 373 0084 46415400 		.word	5521734
 374              		.size	check_fs, .-check_fs
 375              		.section	.text.chk_mounted,"ax",%progbits
 376              		.align	2
 377              		.thumb
 378              		.thumb_func
 379              		.type	chk_mounted, %function
 380              	chk_mounted:
 381              		@ args = 0, pretend = 0, frame = 8
 382              		@ frame_needed = 0, uses_anonymous_args = 0
 383 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 384 0004 0368     		ldr	r3, [r0]
 385 0006 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 386 0008 303C     		subs	r4, r4, #48
 387 000a 092C     		cmp	r4, #9
 388 000c 82B0     		sub	sp, sp, #8
 389 000e 02D8     		bhi	.L115
 390 0010 5D78     		ldrb	r5, [r3, #1]	@ zero_extendqisi2
 391 0012 3A2D     		cmp	r5, #58
 392 0014 16D0     		beq	.L146
 393              	.L115:
 394 0016 0024     		movs	r4, #0
 395              	.L96:
 396 0018 B84B     		ldr	r3, .L152
 397 001a 53F82450 		ldr	r5, [r3, r4, lsl #2]
 398 001e 0D60     		str	r5, [r1]
 399 0020 35B3     		cbz	r5, .L117
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 8


 400 0022 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 401 0024 BBB1     		cbz	r3, .L98
 402 0026 6878     		ldrb	r0, [r5, #1]	@ zero_extendqisi2
 403 0028 0192     		str	r2, [sp, #4]
 404 002a FFF7FEFF 		bl	disk_status
 405 002e 10F0010F 		tst	r0, #1
 406 0032 019A     		ldr	r2, [sp, #4]
 407 0034 0FD1     		bne	.L98
 408 0036 7AB3     		cbz	r2, .L118
 409 0038 10F0040F 		tst	r0, #4
 410 003c 0CBF     		ite	eq
 411 003e 0020     		moveq	r0, #0
 412 0040 0A20     		movne	r0, #10
 413 0042 05E0     		b	.L143
 414              	.L146:
 415 0044 0233     		adds	r3, r3, #2
 416 0046 012C     		cmp	r4, #1
 417 0048 0360     		str	r3, [r0]
 418 004a 88BF     		it	hi
 419 004c 0B20     		movhi	r0, #11
 420 004e E3D9     		bls	.L96
 421              	.L143:
 422 0050 02B0     		add	sp, sp, #8
 423              		@ sp needed
 424 0052 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 425              	.L98:
 426 0056 E0B2     		uxtb	r0, r4
 427 0058 0023     		movs	r3, #0
 428 005a 6870     		strb	r0, [r5, #1]
 429 005c 2B70     		strb	r3, [r5]
 430 005e 0192     		str	r2, [sp, #4]
 431 0060 FFF7FEFF 		bl	disk_initialize
 432 0064 10F0010F 		tst	r0, #1
 433 0068 019A     		ldr	r2, [sp, #4]
 434 006a 03D0     		beq	.L147
 435 006c 0320     		movs	r0, #3
 436 006e EFE7     		b	.L143
 437              	.L117:
 438 0070 0C20     		movs	r0, #12
 439 0072 EDE7     		b	.L143
 440              	.L147:
 441 0074 1AB1     		cbz	r2, .L99
 442 0076 4707     		lsls	r7, r0, #29
 443 0078 01D5     		bpl	.L99
 444 007a 0A20     		movs	r0, #10
 445 007c E8E7     		b	.L143
 446              	.L99:
 447 007e 2846     		mov	r0, r5
 448 0080 0021     		movs	r1, #0
 449 0082 FFF7FEFF 		bl	check_fs
 450 0086 0128     		cmp	r0, #1
 451 0088 08D0     		beq	.L148
 452 008a 0024     		movs	r4, #0
 453              	.L100:
 454 008c 0328     		cmp	r0, #3
 455 008e 00F0B480 		beq	.L123
 456 0092 D0B1     		cbz	r0, .L149
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 9


 457              	.L102:
 458 0094 0D20     		movs	r0, #13
 459 0096 DBE7     		b	.L143
 460              	.L118:
 461 0098 1046     		mov	r0, r2
 462 009a D9E7     		b	.L143
 463              	.L148:
 464 009c 95F8F231 		ldrb	r3, [r5, #498]	@ zero_extendqisi2
 465 00a0 002B     		cmp	r3, #0
 466 00a2 F7D0     		beq	.L102
 467 00a4 95F8F821 		ldrb	r2, [r5, #504]	@ zero_extendqisi2
 468 00a8 95F8F911 		ldrb	r1, [r5, #505]	@ zero_extendqisi2
 469 00ac 95F8F631 		ldrb	r3, [r5, #502]	@ zero_extendqisi2
 470 00b0 95F8F741 		ldrb	r4, [r5, #503]	@ zero_extendqisi2
 471 00b4 1204     		lsls	r2, r2, #16
 472 00b6 42EA0162 		orr	r2, r2, r1, lsl #24
 473 00ba 1343     		orrs	r3, r3, r2
 474 00bc 43EA0424 		orr	r4, r3, r4, lsl #8
 475 00c0 2146     		mov	r1, r4
 476 00c2 2846     		mov	r0, r5
 477 00c4 FFF7FEFF 		bl	check_fs
 478 00c8 E0E7     		b	.L100
 479              	.L149:
 480 00ca 95F83C20 		ldrb	r2, [r5, #60]	@ zero_extendqisi2
 481 00ce 95F83B30 		ldrb	r3, [r5, #59]	@ zero_extendqisi2
 482 00d2 43EA0223 		orr	r3, r3, r2, lsl #8
 483 00d6 B3F5007F 		cmp	r3, #512
 484 00da DBD1     		bne	.L102
 485 00dc 95F84710 		ldrb	r1, [r5, #71]	@ zero_extendqisi2
 486 00e0 95F84630 		ldrb	r3, [r5, #70]	@ zero_extendqisi2
 487 00e4 53EA0121 		orrs	r1, r3, r1, lsl #8
 488 00e8 0DD1     		bne	.L103
 489 00ea 95F85620 		ldrb	r2, [r5, #86]	@ zero_extendqisi2
 490 00ee 95F85700 		ldrb	r0, [r5, #87]	@ zero_extendqisi2
 491 00f2 95F85430 		ldrb	r3, [r5, #84]	@ zero_extendqisi2
 492 00f6 95F85510 		ldrb	r1, [r5, #85]	@ zero_extendqisi2
 493 00fa 1204     		lsls	r2, r2, #16
 494 00fc 42EA0062 		orr	r2, r2, r0, lsl #24
 495 0100 1343     		orrs	r3, r3, r2
 496 0102 43EA0121 		orr	r1, r3, r1, lsl #8
 497              	.L103:
 498 0106 95F84000 		ldrb	r0, [r5, #64]	@ zero_extendqisi2
 499 010a E961     		str	r1, [r5, #28]
 500 010c 431E     		subs	r3, r0, #1
 501 010e 012B     		cmp	r3, #1
 502 0110 E870     		strb	r0, [r5, #3]
 503 0112 BFD8     		bhi	.L102
 504 0114 95F83D30 		ldrb	r3, [r5, #61]	@ zero_extendqisi2
 505 0118 AB70     		strb	r3, [r5, #2]
 506 011a 002B     		cmp	r3, #0
 507 011c BAD0     		beq	.L102
 508 011e 5A1E     		subs	r2, r3, #1
 509 0120 1A42     		tst	r2, r3
 510 0122 B7D1     		bne	.L102
 511 0124 95F84260 		ldrb	r6, [r5, #66]	@ zero_extendqisi2
 512 0128 95F84120 		ldrb	r2, [r5, #65]	@ zero_extendqisi2
 513 012c 42EA0622 		orr	r2, r2, r6, lsl #8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 10


 514 0130 1607     		lsls	r6, r2, #28
 515 0132 2A81     		strh	r2, [r5, #8]	@ movhi
 516 0134 AED1     		bne	.L102
 517 0136 95F84470 		ldrb	r7, [r5, #68]	@ zero_extendqisi2
 518 013a 95F84360 		ldrb	r6, [r5, #67]	@ zero_extendqisi2
 519 013e 56EA0726 		orrs	r6, r6, r7, lsl #8
 520 0142 0FD1     		bne	.L104
 521 0144 95F852C0 		ldrb	ip, [r5, #82]	@ zero_extendqisi2
 522 0148 95F85380 		ldrb	r8, [r5, #83]	@ zero_extendqisi2
 523 014c 95F85060 		ldrb	r6, [r5, #80]	@ zero_extendqisi2
 524 0150 95F85170 		ldrb	r7, [r5, #81]	@ zero_extendqisi2
 525 0154 4FEA0C4C 		lsl	ip, ip, #16
 526 0158 4CEA086C 		orr	ip, ip, r8, lsl #24
 527 015c 4CEA0606 		orr	r6, ip, r6
 528 0160 46EA0726 		orr	r6, r6, r7, lsl #8
 529              	.L104:
 530 0164 95F83FC0 		ldrb	ip, [r5, #63]	@ zero_extendqisi2
 531 0168 95F83E70 		ldrb	r7, [r5, #62]	@ zero_extendqisi2
 532 016c 57EA0C27 		orrs	r7, r7, ip, lsl #8
 533 0170 90D0     		beq	.L102
 534 0172 00FB01FC 		mul	ip, r0, r1
 535 0176 07EB1210 		add	r0, r7, r2, lsr #4
 536 017a 6044     		add	r0, r0, ip
 537 017c 8642     		cmp	r6, r0
 538 017e 89D3     		bcc	.L102
 539 0180 361A     		subs	r6, r6, r0
 540 0182 B6FBF3F3 		udiv	r3, r6, r3
 541 0186 002B     		cmp	r3, #0
 542 0188 84D0     		beq	.L102
 543 018a 40F6F576 		movw	r6, #4085
 544 018e B342     		cmp	r3, r6
 545 0190 40F2B280 		bls	.L124
 546 0194 4FF6F576 		movw	r6, #65525
 547 0198 B342     		cmp	r3, r6
 548 019a 00F29280 		bhi	.L106
 549 019e 0226     		movs	r6, #2
 550              	.L105:
 551 01a0 0233     		adds	r3, r3, #2
 552 01a2 2044     		add	r0, r0, r4
 553 01a4 2744     		add	r7, r7, r4
 554 01a6 AB61     		str	r3, [r5, #24]
 555 01a8 A862     		str	r0, [r5, #40]
 556 01aa 2F62     		str	r7, [r5, #32]
 557 01ac 002A     		cmp	r2, #0
 558 01ae 3FF471AF 		beq	.L102
 559 01b2 6744     		add	r7, r7, ip
 560 01b4 022E     		cmp	r6, #2
 561 01b6 6F62     		str	r7, [r5, #36]
 562 01b8 00F08180 		beq	.L150
 563 01bc 03EB4302 		add	r2, r3, r3, lsl #1
 564 01c0 03F00103 		and	r3, r3, #1
 565 01c4 03EB5203 		add	r3, r3, r2, lsr #1
 566 01c8 0126     		movs	r6, #1
 567              	.L107:
 568 01ca 03F2FF13 		addw	r3, r3, #511
 569 01ce B1EB532F 		cmp	r1, r3, lsr #9
 570 01d2 FFF45FAF 		bcc	.L102
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 11


 571 01d6 4FF0FF32 		mov	r2, #-1
 572 01da 0023     		movs	r3, #0
 573 01dc 032E     		cmp	r6, #3
 574 01de 2A61     		str	r2, [r5, #16]
 575 01e0 EB60     		str	r3, [r5, #12]
 576 01e2 0CD0     		beq	.L151
 577              	.L110:
 578 01e4 464A     		ldr	r2, .L152+4
 579 01e6 2E70     		strb	r6, [r5]
 580 01e8 1388     		ldrh	r3, [r2]
 581 01ea 0133     		adds	r3, r3, #1
 582 01ec 9BB2     		uxth	r3, r3
 583 01ee 0020     		movs	r0, #0
 584 01f0 1380     		strh	r3, [r2]	@ movhi
 585 01f2 EB80     		strh	r3, [r5, #6]	@ movhi
 586 01f4 E862     		str	r0, [r5, #44]
 587 01f6 2871     		strb	r0, [r5, #4]
 588 01f8 2AE7     		b	.L143
 589              	.L123:
 590 01fa 0120     		movs	r0, #1
 591 01fc 28E7     		b	.L143
 592              	.L151:
 593 01fe 95F86110 		ldrb	r1, [r5, #97]	@ zero_extendqisi2
 594 0202 95F86020 		ldrb	r2, [r5, #96]	@ zero_extendqisi2
 595 0206 6B71     		strb	r3, [r5, #5]
 596 0208 42EA0122 		orr	r2, r2, r1, lsl #8
 597 020c 2244     		add	r2, r2, r4
 598 020e 6A61     		str	r2, [r5, #20]
 599 0210 6878     		ldrb	r0, [r5, #1]	@ zero_extendqisi2
 600 0212 05F13001 		add	r1, r5, #48
 601 0216 0123     		movs	r3, #1
 602 0218 FFF7FEFF 		bl	disk_read
 603 021c 0028     		cmp	r0, #0
 604 021e E1D1     		bne	.L110
 605 0220 95F82F12 		ldrb	r1, [r5, #559]	@ zero_extendqisi2
 606 0224 95F82E22 		ldrb	r2, [r5, #558]	@ zero_extendqisi2
 607 0228 364B     		ldr	r3, .L152+8
 608 022a 42EA0122 		orr	r2, r2, r1, lsl #8
 609 022e 12B2     		sxth	r2, r2
 610 0230 9A42     		cmp	r2, r3
 611 0232 D7D1     		bne	.L110
 612 0234 95F83200 		ldrb	r0, [r5, #50]	@ zero_extendqisi2
 613 0238 95F83340 		ldrb	r4, [r5, #51]	@ zero_extendqisi2
 614 023c 95F83020 		ldrb	r2, [r5, #48]	@ zero_extendqisi2
 615 0240 95F83110 		ldrb	r1, [r5, #49]	@ zero_extendqisi2
 616 0244 304B     		ldr	r3, .L152+12
 617 0246 0004     		lsls	r0, r0, #16
 618 0248 40EA0460 		orr	r0, r0, r4, lsl #24
 619 024c 0243     		orrs	r2, r2, r0
 620 024e 42EA0122 		orr	r2, r2, r1, lsl #8
 621 0252 9A42     		cmp	r2, r3
 622 0254 C6D1     		bne	.L110
 623 0256 95F81602 		ldrb	r0, [r5, #534]	@ zero_extendqisi2
 624 025a 95F81742 		ldrb	r4, [r5, #535]	@ zero_extendqisi2
 625 025e 95F81422 		ldrb	r2, [r5, #532]	@ zero_extendqisi2
 626 0262 95F81512 		ldrb	r1, [r5, #533]	@ zero_extendqisi2
 627 0266 0004     		lsls	r0, r0, #16
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 12


 628 0268 03F1FF53 		add	r3, r3, #534773760
 629 026c 40EA0460 		orr	r0, r0, r4, lsl #24
 630 0270 03F50053 		add	r3, r3, #8192
 631 0274 0243     		orrs	r2, r2, r0
 632 0276 2033     		adds	r3, r3, #32
 633 0278 42EA0122 		orr	r2, r2, r1, lsl #8
 634 027c 9A42     		cmp	r2, r3
 635 027e B1D1     		bne	.L110
 636 0280 95F81E72 		ldrb	r7, [r5, #542]	@ zero_extendqisi2
 637 0284 95F81A42 		ldrb	r4, [r5, #538]	@ zero_extendqisi2
 638 0288 95F81F82 		ldrb	r8, [r5, #543]	@ zero_extendqisi2
 639 028c 95F81BC2 		ldrb	ip, [r5, #539]	@ zero_extendqisi2
 640 0290 95F81C22 		ldrb	r2, [r5, #540]	@ zero_extendqisi2
 641 0294 95F81832 		ldrb	r3, [r5, #536]	@ zero_extendqisi2
 642 0298 95F81D02 		ldrb	r0, [r5, #541]	@ zero_extendqisi2
 643 029c 95F81912 		ldrb	r1, [r5, #537]	@ zero_extendqisi2
 644 02a0 3F04     		lsls	r7, r7, #16
 645 02a2 2404     		lsls	r4, r4, #16
 646 02a4 47EA0867 		orr	r7, r7, r8, lsl #24
 647 02a8 44EA0C64 		orr	r4, r4, ip, lsl #24
 648 02ac 3A43     		orrs	r2, r2, r7
 649 02ae 2343     		orrs	r3, r3, r4
 650 02b0 42EA0022 		orr	r2, r2, r0, lsl #8
 651 02b4 43EA0123 		orr	r3, r3, r1, lsl #8
 652 02b8 EA60     		str	r2, [r5, #12]
 653 02ba 2B61     		str	r3, [r5, #16]
 654 02bc 92E7     		b	.L110
 655              	.L150:
 656 02be 5B00     		lsls	r3, r3, #1
 657 02c0 83E7     		b	.L107
 658              	.L106:
 659 02c2 0233     		adds	r3, r3, #2
 660 02c4 2044     		add	r0, r0, r4
 661 02c6 2744     		add	r7, r7, r4
 662 02c8 AB61     		str	r3, [r5, #24]
 663 02ca A862     		str	r0, [r5, #40]
 664 02cc 2F62     		str	r7, [r5, #32]
 665 02ce 002A     		cmp	r2, #0
 666 02d0 7FF4E0AE 		bne	.L102
 667 02d4 95F85E60 		ldrb	r6, [r5, #94]	@ zero_extendqisi2
 668 02d8 95F85F70 		ldrb	r7, [r5, #95]	@ zero_extendqisi2
 669 02dc 95F85C20 		ldrb	r2, [r5, #92]	@ zero_extendqisi2
 670 02e0 95F85D00 		ldrb	r0, [r5, #93]	@ zero_extendqisi2
 671 02e4 3604     		lsls	r6, r6, #16
 672 02e6 46EA0766 		orr	r6, r6, r7, lsl #24
 673 02ea 3243     		orrs	r2, r2, r6
 674 02ec 42EA0022 		orr	r2, r2, r0, lsl #8
 675 02f0 9B00     		lsls	r3, r3, #2
 676 02f2 6A62     		str	r2, [r5, #36]
 677 02f4 0326     		movs	r6, #3
 678 02f6 68E7     		b	.L107
 679              	.L124:
 680 02f8 0126     		movs	r6, #1
 681 02fa 51E7     		b	.L105
 682              	.L153:
 683              		.align	2
 684              	.L152:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 13


 685 02fc 00000000 		.word	.LANCHOR0
 686 0300 00000000 		.word	.LANCHOR1
 687 0304 55AAFFFF 		.word	-21931
 688 0308 52526141 		.word	1096897106
 689              		.size	chk_mounted, .-chk_mounted
 690              		.section	.text.get_fat.part.3,"ax",%progbits
 691              		.align	2
 692              		.thumb
 693              		.thumb_func
 694              		.type	get_fat.part.3, %function
 695              	get_fat.part.3:
 696              		@ args = 0, pretend = 0, frame = 0
 697              		@ frame_needed = 0, uses_anonymous_args = 0
 698 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 699 0002 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 700 0004 022B     		cmp	r3, #2
 701 0006 0446     		mov	r4, r0
 702 0008 0D46     		mov	r5, r1
 703 000a 46D0     		beq	.L156
 704 000c 032B     		cmp	r3, #3
 705 000e 28D0     		beq	.L157
 706 0010 012B     		cmp	r3, #1
 707 0012 02D0     		beq	.L164
 708              	.L163:
 709 0014 4FF0FF30 		mov	r0, #-1
 710 0018 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 711              	.L164:
 712 001a 016A     		ldr	r1, [r0, #32]
 713 001c 05EB5506 		add	r6, r5, r5, lsr #1
 714 0020 01EB5621 		add	r1, r1, r6, lsr #9
 715 0024 FFF7FEFF 		bl	move_window
 716 0028 0028     		cmp	r0, #0
 717 002a F3D1     		bne	.L163
 718 002c C6F30803 		ubfx	r3, r6, #0, #9
 719 0030 216A     		ldr	r1, [r4, #32]
 720 0032 2344     		add	r3, r3, r4
 721 0034 0136     		adds	r6, r6, #1
 722 0036 01EB5621 		add	r1, r1, r6, lsr #9
 723 003a 2046     		mov	r0, r4
 724 003c 93F83070 		ldrb	r7, [r3, #48]	@ zero_extendqisi2
 725 0040 FFF7FEFF 		bl	move_window
 726 0044 0028     		cmp	r0, #0
 727 0046 E5D1     		bne	.L163
 728 0048 C6F30806 		ubfx	r6, r6, #0, #9
 729 004c 3444     		add	r4, r4, r6
 730 004e 94F83030 		ldrb	r3, [r4, #48]	@ zero_extendqisi2
 731 0052 47EA0320 		orr	r0, r7, r3, lsl #8
 732 0056 EB07     		lsls	r3, r5, #31
 733 0058 4CBF     		ite	mi
 734 005a 0009     		lsrmi	r0, r0, #4
 735 005c C0F30B00 		ubfxpl	r0, r0, #0, #12
 736 0060 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 737              	.L157:
 738 0062 016A     		ldr	r1, [r0, #32]
 739 0064 01EBD511 		add	r1, r1, r5, lsr #7
 740 0068 FFF7FEFF 		bl	move_window
 741 006c 0028     		cmp	r0, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 14


 742 006e D1D1     		bne	.L163
 743 0070 AD00     		lsls	r5, r5, #2
 744 0072 05F4FE75 		and	r5, r5, #508
 745 0076 05F13003 		add	r3, r5, #48
 746 007a 2344     		add	r3, r3, r4
 747 007c 2C44     		add	r4, r4, r5
 748 007e D878     		ldrb	r0, [r3, #3]	@ zero_extendqisi2
 749 0080 9978     		ldrb	r1, [r3, #2]	@ zero_extendqisi2
 750 0082 5A78     		ldrb	r2, [r3, #1]	@ zero_extendqisi2
 751 0084 94F83030 		ldrb	r3, [r4, #48]	@ zero_extendqisi2
 752 0088 0006     		lsls	r0, r0, #24
 753 008a 40EA0140 		orr	r0, r0, r1, lsl #16
 754 008e 40EA0220 		orr	r0, r0, r2, lsl #8
 755 0092 1843     		orrs	r0, r0, r3
 756 0094 20F07040 		bic	r0, r0, #-268435456
 757 0098 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 758              	.L156:
 759 009a 016A     		ldr	r1, [r0, #32]
 760 009c 01EB1521 		add	r1, r1, r5, lsr #8
 761 00a0 FFF7FEFF 		bl	move_window
 762 00a4 0028     		cmp	r0, #0
 763 00a6 B5D1     		bne	.L163
 764 00a8 6D00     		lsls	r5, r5, #1
 765 00aa 05F4FF75 		and	r5, r5, #510
 766 00ae 6319     		adds	r3, r4, r5
 767 00b0 1C46     		mov	r4, r3
 768 00b2 93F83030 		ldrb	r3, [r3, #48]	@ zero_extendqisi2
 769 00b6 94F83100 		ldrb	r0, [r4, #49]	@ zero_extendqisi2
 770 00ba 43EA0020 		orr	r0, r3, r0, lsl #8
 771 00be F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 772              		.size	get_fat.part.3, .-get_fat.part.3
 773              		.section	.text.dir_sdi,"ax",%progbits
 774              		.align	2
 775              		.thumb
 776              		.thumb_func
 777              		.type	dir_sdi, %function
 778              	dir_sdi:
 779              		@ args = 0, pretend = 0, frame = 0
 780              		@ frame_needed = 0, uses_anonymous_args = 0
 781 0000 8368     		ldr	r3, [r0, #8]
 782 0002 70B5     		push	{r4, r5, r6, lr}
 783 0004 0446     		mov	r4, r0
 784 0006 012B     		cmp	r3, #1
 785 0008 0D46     		mov	r5, r1
 786 000a E180     		strh	r1, [r4, #6]	@ movhi
 787 000c 03D0     		beq	.L177
 788 000e 0068     		ldr	r0, [r0]
 789 0010 8269     		ldr	r2, [r0, #24]
 790 0012 9342     		cmp	r3, r2
 791 0014 01D3     		bcc	.L181
 792              	.L177:
 793 0016 0220     		movs	r0, #2
 794 0018 70BD     		pop	{r4, r5, r6, pc}
 795              	.L181:
 796 001a B3B9     		cbnz	r3, .L169
 797 001c 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 798 001e 032B     		cmp	r3, #3
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 15


 799 0020 10D0     		beq	.L182
 800              	.L170:
 801 0022 0389     		ldrh	r3, [r0, #8]
 802 0024 0022     		movs	r2, #0
 803 0026 AB42     		cmp	r3, r5
 804 0028 E260     		str	r2, [r4, #12]
 805 002a F4D9     		bls	.L177
 806 002c 436A     		ldr	r3, [r0, #36]
 807 002e 03EB1513 		add	r3, r3, r5, lsr #4
 808 0032 2361     		str	r3, [r4, #16]
 809              	.L171:
 810 0034 05F00F05 		and	r5, r5, #15
 811 0038 00EB4510 		add	r0, r0, r5, lsl #5
 812 003c 3030     		adds	r0, r0, #48
 813 003e 6061     		str	r0, [r4, #20]
 814 0040 0020     		movs	r0, #0
 815 0042 70BD     		pop	{r4, r5, r6, pc}
 816              	.L182:
 817 0044 436A     		ldr	r3, [r0, #36]
 818 0046 002B     		cmp	r3, #0
 819 0048 EBD0     		beq	.L170
 820              	.L169:
 821 004a 8678     		ldrb	r6, [r0, #2]	@ zero_extendqisi2
 822 004c 3601     		lsls	r6, r6, #4
 823 004e B542     		cmp	r5, r6
 824 0050 19D3     		bcc	.L172
 825 0052 012B     		cmp	r3, #1
 826 0054 DFD9     		bls	.L177
 827 0056 AD1B     		subs	r5, r5, r6
 828 0058 9A42     		cmp	r2, r3
 829 005a ADB2     		uxth	r5, r5
 830 005c DBD9     		bls	.L177
 831 005e 08E0     		b	.L175
 832              	.L183:
 833 0060 0128     		cmp	r0, #1
 834 0062 D8D9     		bls	.L177
 835 0064 2068     		ldr	r0, [r4]
 836 0066 8269     		ldr	r2, [r0, #24]
 837 0068 9A42     		cmp	r2, r3
 838 006a D4D9     		bls	.L177
 839 006c AE42     		cmp	r6, r5
 840 006e 0AD8     		bhi	.L172
 841 0070 0D46     		mov	r5, r1
 842              	.L175:
 843 0072 1946     		mov	r1, r3
 844 0074 FFF7FEFF 		bl	get_fat.part.3
 845 0078 A91B     		subs	r1, r5, r6
 846 007a 421C     		adds	r2, r0, #1
 847 007c 0346     		mov	r3, r0
 848 007e 89B2     		uxth	r1, r1
 849 0080 EED1     		bne	.L183
 850 0082 0120     		movs	r0, #1
 851 0084 70BD     		pop	{r4, r5, r6, pc}
 852              	.L172:
 853 0086 991E     		subs	r1, r3, #2
 854 0088 023A     		subs	r2, r2, #2
 855 008a 9142     		cmp	r1, r2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 16


 856 008c E360     		str	r3, [r4, #12]
 857 008e 3BBF     		ittet	cc
 858 0090 8278     		ldrbcc	r2, [r0, #2]	@ zero_extendqisi2
 859 0092 836A     		ldrcc	r3, [r0, #40]
 860 0094 0021     		movcs	r1, #0
 861 0096 02FB0131 		mlacc	r1, r2, r1, r3
 862 009a 01EB1511 		add	r1, r1, r5, lsr #4
 863 009e 2161     		str	r1, [r4, #16]
 864 00a0 C8E7     		b	.L171
 865              		.size	dir_sdi, .-dir_sdi
 866 00a2 00BF     		.section	.text.put_fat.part.4,"ax",%progbits
 867              		.align	2
 868              		.thumb
 869              		.thumb_func
 870              		.type	put_fat.part.4, %function
 871              	put_fat.part.4:
 872              		@ args = 0, pretend = 0, frame = 0
 873              		@ frame_needed = 0, uses_anonymous_args = 0
 874 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 875 0002 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 876 0004 022B     		cmp	r3, #2
 877 0006 0446     		mov	r4, r0
 878 0008 0D46     		mov	r5, r1
 879 000a 1646     		mov	r6, r2
 880 000c 59D0     		beq	.L186
 881 000e 032B     		cmp	r3, #3
 882 0010 38D0     		beq	.L187
 883 0012 012B     		cmp	r3, #1
 884 0014 03D0     		beq	.L195
 885 0016 0220     		movs	r0, #2
 886              	.L185:
 887 0018 0123     		movs	r3, #1
 888 001a 2371     		strb	r3, [r4, #4]
 889 001c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 890              	.L195:
 891 001e 016A     		ldr	r1, [r0, #32]
 892 0020 05EB5507 		add	r7, r5, r5, lsr #1
 893 0024 01EB5721 		add	r1, r1, r7, lsr #9
 894 0028 FFF7FEFF 		bl	move_window
 895 002c 0028     		cmp	r0, #0
 896 002e F3D1     		bne	.L185
 897 0030 C7F30803 		ubfx	r3, r7, #0, #9
 898 0034 15F00105 		ands	r5, r5, #1
 899 0038 2344     		add	r3, r3, r4
 900 003a F2B2     		uxtb	r2, r6
 901 003c 06D0     		beq	.L190
 902 003e 93F83010 		ldrb	r1, [r3, #48]	@ zero_extendqisi2
 903 0042 01F00F01 		and	r1, r1, #15
 904 0046 41EA0212 		orr	r2, r1, r2, lsl #4
 905 004a D2B2     		uxtb	r2, r2
 906              	.L190:
 907 004c 216A     		ldr	r1, [r4, #32]
 908 004e 83F83020 		strb	r2, [r3, #48]
 909 0052 0137     		adds	r7, r7, #1
 910 0054 0123     		movs	r3, #1
 911 0056 01EB5721 		add	r1, r1, r7, lsr #9
 912 005a 2371     		strb	r3, [r4, #4]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 17


 913 005c 2046     		mov	r0, r4
 914 005e FFF7FEFF 		bl	move_window
 915 0062 0028     		cmp	r0, #0
 916 0064 D8D1     		bne	.L185
 917 0066 C7F30807 		ubfx	r7, r7, #0, #9
 918 006a 002D     		cmp	r5, #0
 919 006c 3DD1     		bne	.L196
 920 006e 2744     		add	r7, r7, r4
 921 0070 C6F30326 		ubfx	r6, r6, #8, #4
 922 0074 97F83030 		ldrb	r3, [r7, #48]	@ zero_extendqisi2
 923 0078 23F00F03 		bic	r3, r3, #15
 924 007c 1E43     		orrs	r6, r6, r3
 925              	.L192:
 926 007e 87F83060 		strb	r6, [r7, #48]
 927 0082 C9E7     		b	.L185
 928              	.L187:
 929 0084 016A     		ldr	r1, [r0, #32]
 930 0086 01EBD511 		add	r1, r1, r5, lsr #7
 931 008a FFF7FEFF 		bl	move_window
 932 008e 0028     		cmp	r0, #0
 933 0090 C2D1     		bne	.L185
 934 0092 AD00     		lsls	r5, r5, #2
 935 0094 05F4FE75 		and	r5, r5, #508
 936 0098 05F13003 		add	r3, r5, #48
 937 009c 2344     		add	r3, r3, r4
 938 009e 2544     		add	r5, r5, r4
 939 00a0 DA78     		ldrb	r2, [r3, #3]	@ zero_extendqisi2
 940 00a2 1206     		lsls	r2, r2, #24
 941 00a4 02F07042 		and	r2, r2, #-268435456
 942 00a8 1643     		orrs	r6, r6, r2
 943 00aa C6F30727 		ubfx	r7, r6, #8, #8
 944 00ae 310C     		lsrs	r1, r6, #16
 945 00b0 320E     		lsrs	r2, r6, #24
 946 00b2 85F83060 		strb	r6, [r5, #48]
 947 00b6 5F70     		strb	r7, [r3, #1]
 948 00b8 9970     		strb	r1, [r3, #2]
 949 00ba DA70     		strb	r2, [r3, #3]
 950 00bc 0123     		movs	r3, #1
 951 00be 2371     		strb	r3, [r4, #4]
 952 00c0 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 953              	.L186:
 954 00c2 016A     		ldr	r1, [r0, #32]
 955 00c4 01EB1521 		add	r1, r1, r5, lsr #8
 956 00c8 FFF7FEFF 		bl	move_window
 957 00cc 0028     		cmp	r0, #0
 958 00ce A3D1     		bne	.L185
 959 00d0 6D00     		lsls	r5, r5, #1
 960 00d2 05F4FF75 		and	r5, r5, #510
 961 00d6 6219     		adds	r2, r4, r5
 962 00d8 C6F30723 		ubfx	r3, r6, #8, #8
 963 00dc 82F83130 		strb	r3, [r2, #49]
 964 00e0 0123     		movs	r3, #1
 965 00e2 82F83060 		strb	r6, [r2, #48]
 966 00e6 2371     		strb	r3, [r4, #4]
 967 00e8 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 968              	.L196:
 969 00ea C6F30716 		ubfx	r6, r6, #4, #8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 18


 970 00ee 2744     		add	r7, r7, r4
 971 00f0 C5E7     		b	.L192
 972              		.size	put_fat.part.4, .-put_fat.part.4
 973 00f2 00BF     		.section	.text.create_chain,"ax",%progbits
 974              		.align	2
 975              		.thumb
 976              		.thumb_func
 977              		.type	create_chain, %function
 978              	create_chain:
 979              		@ args = 0, pretend = 0, frame = 0
 980              		@ frame_needed = 0, uses_anonymous_args = 0
 981 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 982 0002 0546     		mov	r5, r0
 983 0004 0F46     		mov	r7, r1
 984 0006 F9B9     		cbnz	r1, .L198
 985 0008 C668     		ldr	r6, [r0, #12]
 986 000a 8369     		ldr	r3, [r0, #24]
 987 000c 56B3     		cbz	r6, .L230
 988 000e 9E42     		cmp	r6, r3
 989 0010 28BF     		it	cs
 990 0012 0126     		movcs	r6, #1
 991              	.L200:
 992 0014 3446     		mov	r4, r6
 993 0016 10E0     		b	.L210
 994              	.L231:
 995 0018 012E     		cmp	r6, #1
 996 001a 25D9     		bls	.L209
 997 001c 022B     		cmp	r3, #2
 998 001e 11D9     		bls	.L226
 999 0020 0224     		movs	r4, #2
 1000              	.L206:
 1001 0022 2846     		mov	r0, r5
 1002 0024 2146     		mov	r1, r4
 1003 0026 FFF7FEFF 		bl	get_fat.part.3
 1004 002a 20B3     		cbz	r0, .L207
 1005 002c 411C     		adds	r1, r0, #1
 1006 002e 1FD0     		beq	.L217
 1007 0030 0128     		cmp	r0, #1
 1008 0032 07D0     		beq	.L226
 1009 0034 A642     		cmp	r6, r4
 1010 0036 17D0     		beq	.L209
 1011 0038 AB69     		ldr	r3, [r5, #24]
 1012              	.L210:
 1013 003a 0134     		adds	r4, r4, #1
 1014 003c 9C42     		cmp	r4, r3
 1015 003e EBD2     		bcs	.L231
 1016 0040 012C     		cmp	r4, #1
 1017 0042 EED8     		bhi	.L206
 1018              	.L226:
 1019 0044 0120     		movs	r0, #1
 1020              	.L222:
 1021 0046 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1022              	.L198:
 1023 0048 0129     		cmp	r1, #1
 1024 004a FBD9     		bls	.L226
 1025 004c 8369     		ldr	r3, [r0, #24]
 1026 004e 9942     		cmp	r1, r3
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 19


 1027 0050 F8D2     		bcs	.L226
 1028 0052 FFF7FEFF 		bl	get_fat.part.3
 1029 0056 0128     		cmp	r0, #1
 1030 0058 F4D9     		bls	.L226
 1031 005a AB69     		ldr	r3, [r5, #24]
 1032 005c 8342     		cmp	r3, r0
 1033 005e F2D8     		bhi	.L222
 1034 0060 3E46     		mov	r6, r7
 1035 0062 D7E7     		b	.L200
 1036              	.L230:
 1037 0064 0126     		movs	r6, #1
 1038 0066 D5E7     		b	.L200
 1039              	.L209:
 1040 0068 0020     		movs	r0, #0
 1041 006a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1042              	.L216:
 1043 006c 0128     		cmp	r0, #1
 1044 006e E9D1     		bne	.L226
 1045              	.L217:
 1046 0070 4FF0FF30 		mov	r0, #-1
 1047 0074 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1048              	.L207:
 1049 0076 AB69     		ldr	r3, [r5, #24]
 1050 0078 A342     		cmp	r3, r4
 1051 007a E3D9     		bls	.L226
 1052 007c 2846     		mov	r0, r5
 1053 007e 2146     		mov	r1, r4
 1054 0080 6FF07042 		mvn	r2, #-268435456
 1055 0084 FFF7FEFF 		bl	put_fat.part.4
 1056 0088 0028     		cmp	r0, #0
 1057 008a EFD1     		bne	.L216
 1058 008c 5FB1     		cbz	r7, .L215
 1059 008e 012F     		cmp	r7, #1
 1060 0090 D8D9     		bls	.L226
 1061 0092 AB69     		ldr	r3, [r5, #24]
 1062 0094 9F42     		cmp	r7, r3
 1063 0096 D5D2     		bcs	.L226
 1064 0098 3946     		mov	r1, r7
 1065 009a 2846     		mov	r0, r5
 1066 009c 2246     		mov	r2, r4
 1067 009e FFF7FEFF 		bl	put_fat.part.4
 1068 00a2 0028     		cmp	r0, #0
 1069 00a4 E2D1     		bne	.L216
 1070              	.L215:
 1071 00a6 2B69     		ldr	r3, [r5, #16]
 1072 00a8 EC60     		str	r4, [r5, #12]
 1073 00aa 5A1C     		adds	r2, r3, #1
 1074 00ac 05D0     		beq	.L232
 1075 00ae 0122     		movs	r2, #1
 1076 00b0 013B     		subs	r3, r3, #1
 1077 00b2 6A71     		strb	r2, [r5, #5]
 1078 00b4 2B61     		str	r3, [r5, #16]
 1079 00b6 2046     		mov	r0, r4
 1080 00b8 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1081              	.L232:
 1082 00ba 2046     		mov	r0, r4
 1083 00bc F8BD     		pop	{r3, r4, r5, r6, r7, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 20


 1084              		.size	create_chain, .-create_chain
 1085 00be 00BF     		.section	.text.dir_next,"ax",%progbits
 1086              		.align	2
 1087              		.thumb
 1088              		.thumb_func
 1089              		.type	dir_next, %function
 1090              	dir_next:
 1091              		@ args = 0, pretend = 0, frame = 0
 1092              		@ frame_needed = 0, uses_anonymous_args = 0
 1093 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1094 0004 C588     		ldrh	r5, [r0, #6]
 1095 0006 0135     		adds	r5, r5, #1
 1096 0008 ADB2     		uxth	r5, r5
 1097 000a 0446     		mov	r4, r0
 1098 000c 0E46     		mov	r6, r1
 1099 000e 15B9     		cbnz	r5, .L234
 1100              	.L236:
 1101 0010 0420     		movs	r0, #4
 1102 0012 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1103              	.L234:
 1104 0016 0369     		ldr	r3, [r0, #16]
 1105 0018 002B     		cmp	r3, #0
 1106 001a F9D0     		beq	.L236
 1107 001c 15F00F07 		ands	r7, r5, #15
 1108 0020 08D0     		beq	.L237
 1109 0022 0368     		ldr	r3, [r0]
 1110              	.L238:
 1111 0024 03EB4713 		add	r3, r3, r7, lsl #5
 1112 0028 3033     		adds	r3, r3, #48
 1113 002a 6361     		str	r3, [r4, #20]
 1114 002c E580     		strh	r5, [r4, #6]	@ movhi
 1115 002e 0020     		movs	r0, #0
 1116 0030 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1117              	.L237:
 1118 0034 C168     		ldr	r1, [r0, #12]
 1119 0036 0133     		adds	r3, r3, #1
 1120 0038 0361     		str	r3, [r0, #16]
 1121 003a 0368     		ldr	r3, [r0]
 1122 003c 61B1     		cbz	r1, .L266
 1123 003e 9A78     		ldrb	r2, [r3, #2]	@ zero_extendqisi2
 1124 0040 013A     		subs	r2, r2, #1
 1125 0042 12EA1512 		ands	r2, r2, r5, lsr #4
 1126 0046 EDD1     		bne	.L238
 1127 0048 0129     		cmp	r1, #1
 1128 004a 02D9     		bls	.L241
 1129 004c 9A69     		ldr	r2, [r3, #24]
 1130 004e 9142     		cmp	r1, r2
 1131 0050 06D3     		bcc	.L267
 1132              	.L241:
 1133 0052 0220     		movs	r0, #2
 1134 0054 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1135              	.L266:
 1136 0058 1A89     		ldrh	r2, [r3, #8]
 1137 005a AA42     		cmp	r2, r5
 1138 005c D8D9     		bls	.L236
 1139 005e E1E7     		b	.L238
 1140              	.L267:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 21


 1141 0060 1846     		mov	r0, r3
 1142 0062 FFF7FEFF 		bl	get_fat.part.3
 1143 0066 0128     		cmp	r0, #1
 1144 0068 8046     		mov	r8, r0
 1145 006a F2D9     		bls	.L241
 1146 006c B0F1FF3F 		cmp	r0, #-1
 1147 0070 1BD0     		beq	.L244
 1148 0072 2368     		ldr	r3, [r4]
 1149 0074 9A69     		ldr	r2, [r3, #24]
 1150 0076 8242     		cmp	r2, r0
 1151 0078 0CD9     		bls	.L265
 1152 007a 861E     		subs	r6, r0, #2
 1153              	.L243:
 1154 007c 023A     		subs	r2, r2, #2
 1155 007e 9642     		cmp	r6, r2
 1156 0080 C4F80C80 		str	r8, [r4, #12]
 1157 0084 3BBF     		ittet	cc
 1158 0086 9978     		ldrbcc	r1, [r3, #2]	@ zero_extendqisi2
 1159 0088 9A6A     		ldrcc	r2, [r3, #40]
 1160 008a 0026     		movcs	r6, #0
 1161 008c 01FB0626 		mlacc	r6, r1, r6, r2
 1162 0090 2661     		str	r6, [r4, #16]
 1163 0092 C7E7     		b	.L238
 1164              	.L265:
 1165 0094 002E     		cmp	r6, #0
 1166 0096 BBD0     		beq	.L236
 1167 0098 1846     		mov	r0, r3
 1168 009a E168     		ldr	r1, [r4, #12]
 1169 009c FFF7FEFF 		bl	create_chain
 1170 00a0 8046     		mov	r8, r0
 1171 00a2 28B9     		cbnz	r0, .L268
 1172 00a4 0720     		movs	r0, #7
 1173 00a6 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1174              	.L244:
 1175 00aa 0120     		movs	r0, #1
 1176 00ac BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1177              	.L268:
 1178 00b0 0128     		cmp	r0, #1
 1179 00b2 CED0     		beq	.L241
 1180 00b4 B0F1FF3F 		cmp	r0, #-1
 1181 00b8 F7D0     		beq	.L244
 1182 00ba 2068     		ldr	r0, [r4]
 1183 00bc 0021     		movs	r1, #0
 1184 00be FFF7FEFF 		bl	move_window
 1185 00c2 8146     		mov	r9, r0
 1186 00c4 0028     		cmp	r0, #0
 1187 00c6 F0D1     		bne	.L244
 1188 00c8 2068     		ldr	r0, [r4]
 1189 00ca 4946     		mov	r1, r9
 1190 00cc 4FF40072 		mov	r2, #512
 1191 00d0 3030     		adds	r0, r0, #48
 1192 00d2 FFF7FEFF 		bl	memset
 1193 00d6 2268     		ldr	r2, [r4]
 1194 00d8 9369     		ldr	r3, [r2, #24]
 1195 00da A8F10206 		sub	r6, r8, #2
 1196 00de 023B     		subs	r3, r3, #2
 1197 00e0 9E42     		cmp	r6, r3
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 22


 1198 00e2 3BBF     		ittet	cc
 1199 00e4 936A     		ldrcc	r3, [r2, #40]
 1200 00e6 9178     		ldrbcc	r1, [r2, #2]	@ zero_extendqisi2
 1201 00e8 4B46     		movcs	r3, r9
 1202 00ea 01FB0633 		mlacc	r3, r1, r6, r3
 1203 00ee D362     		str	r3, [r2, #44]
 1204 00f0 4FF00009 		mov	r9, #0
 1205 00f4 4FF0010A 		mov	r10, #1
 1206              	.L246:
 1207 00f8 92F802C0 		ldrb	ip, [r2, #2]	@ zero_extendqisi2
 1208 00fc 5FFA89F0 		uxtb	r0, r9
 1209 0100 8445     		cmp	ip, r0
 1210 0102 4FF00001 		mov	r1, #0
 1211 0106 1346     		mov	r3, r2
 1212 0108 0DD9     		bls	.L269
 1213 010a 82F804A0 		strb	r10, [r2, #4]
 1214 010e 2068     		ldr	r0, [r4]
 1215 0110 FFF7FEFF 		bl	move_window
 1216 0114 09F10109 		add	r9, r9, #1
 1217 0118 0028     		cmp	r0, #0
 1218 011a C6D1     		bne	.L244
 1219 011c 2268     		ldr	r2, [r4]
 1220 011e D36A     		ldr	r3, [r2, #44]
 1221 0120 0133     		adds	r3, r3, #1
 1222 0122 D362     		str	r3, [r2, #44]
 1223 0124 E8E7     		b	.L246
 1224              	.L269:
 1225 0126 D16A     		ldr	r1, [r2, #44]
 1226 0128 9269     		ldr	r2, [r2, #24]
 1227 012a 091A     		subs	r1, r1, r0
 1228 012c D962     		str	r1, [r3, #44]
 1229 012e A5E7     		b	.L243
 1230              		.size	dir_next, .-dir_next
 1231              		.section	.text.dir_read,"ax",%progbits
 1232              		.align	2
 1233              		.thumb
 1234              		.thumb_func
 1235              		.type	dir_read, %function
 1236              	dir_read:
 1237              		@ args = 0, pretend = 0, frame = 0
 1238              		@ frame_needed = 0, uses_anonymous_args = 0
 1239 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 1240 0004 FF26     		movs	r6, #255
 1241 0006 0446     		mov	r4, r0
 1242 0008 3546     		mov	r5, r6
 1243 000a 0420     		movs	r0, #4
 1244 000c 414F     		ldr	r7, .L313
 1245 000e 09E0     		b	.L271
 1246              	.L309:
 1247 0010 BCF10F0F 		cmp	ip, #15
 1248 0014 1ED0     		beq	.L275
 1249              	.L297:
 1250 0016 FF25     		movs	r5, #255
 1251              	.L273:
 1252 0018 2046     		mov	r0, r4
 1253 001a 0021     		movs	r1, #0
 1254 001c FFF7FEFF 		bl	dir_next
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 23


 1255 0020 0028     		cmp	r0, #0
 1256 0022 4DD1     		bne	.L291
 1257              	.L271:
 1258 0024 2169     		ldr	r1, [r4, #16]
 1259 0026 0029     		cmp	r1, #0
 1260 0028 4ED0     		beq	.L308
 1261 002a 2068     		ldr	r0, [r4]
 1262 002c FFF7FEFF 		bl	move_window
 1263 0030 0028     		cmp	r0, #0
 1264 0032 45D1     		bne	.L291
 1265 0034 6269     		ldr	r2, [r4, #20]
 1266 0036 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 1267 0038 002B     		cmp	r3, #0
 1268 003a 40D0     		beq	.L292
 1269 003c E52B     		cmp	r3, #229
 1270 003e D17A     		ldrb	r1, [r2, #11]	@ zero_extendqisi2
 1271 0040 E9D0     		beq	.L297
 1272 0042 2E2B     		cmp	r3, #46
 1273 0044 E7D0     		beq	.L297
 1274 0046 01F03F0C 		and	ip, r1, #63
 1275 004a 0907     		lsls	r1, r1, #28
 1276 004c E0D4     		bmi	.L309
 1277 004e BCF10F0F 		cmp	ip, #15
 1278 0052 49D1     		bne	.L276
 1279              	.L275:
 1280 0054 5906     		lsls	r1, r3, #25
 1281 0056 2FD5     		bpl	.L277
 1282 0058 E188     		ldrh	r1, [r4, #6]
 1283 005a 567B     		ldrb	r6, [r2, #13]	@ zero_extendqisi2
 1284 005c 2184     		strh	r1, [r4, #32]	@ movhi
 1285 005e 03F0BF05 		and	r5, r3, #191
 1286              	.L278:
 1287 0062 92F80DE0 		ldrb	lr, [r2, #13]	@ zero_extendqisi2
 1288 0066 B645     		cmp	lr, r6
 1289 0068 D5D1     		bne	.L297
 1290 006a 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 1291 006c D4F81C80 		ldr	r8, [r4, #28]
 1292 0070 294B     		ldr	r3, .L313+4
 1293 0072 01F03F01 		and	r1, r1, #63
 1294 0076 0139     		subs	r1, r1, #1
 1295 0078 01EB4100 		add	r0, r1, r1, lsl #1
 1296 007c 01EB8000 		add	r0, r1, r0, lsl #2
 1297 0080 4FF0010C 		mov	ip, #1
 1298 0084 4FF6FF79 		movw	r9, #65535
 1299 0088 07E0     		b	.L283
 1300              	.L311:
 1301 008a FE28     		cmp	r0, #254
 1302 008c 11D8     		bhi	.L280
 1303 008e 28F81010 		strh	r1, [r8, r0, lsl #1]	@ movhi
 1304 0092 8C46     		mov	ip, r1
 1305 0094 0130     		adds	r0, r0, #1
 1306              	.L281:
 1307 0096 BB42     		cmp	r3, r7
 1308 0098 1AD0     		beq	.L310
 1309              	.L283:
 1310 009a 13F8011F 		ldrb	r1, [r3, #1]!	@ zero_extendqisi2
 1311 009e 5618     		adds	r6, r2, r1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 24


 1312 00a0 515C     		ldrb	r1, [r2, r1]	@ zero_extendqisi2
 1313 00a2 7678     		ldrb	r6, [r6, #1]	@ zero_extendqisi2
 1314 00a4 41EA0621 		orr	r1, r1, r6, lsl #8
 1315 00a8 BCF1000F 		cmp	ip, #0
 1316 00ac EDD1     		bne	.L311
 1317 00ae 4945     		cmp	r1, r9
 1318 00b0 F1D0     		beq	.L281
 1319              	.L280:
 1320 00b2 7646     		mov	r6, lr
 1321 00b4 FF25     		movs	r5, #255
 1322 00b6 AFE7     		b	.L273
 1323              	.L277:
 1324 00b8 9D42     		cmp	r5, r3
 1325 00ba ACD1     		bne	.L297
 1326 00bc D1E7     		b	.L278
 1327              	.L292:
 1328 00be 0420     		movs	r0, #4
 1329              	.L291:
 1330 00c0 0023     		movs	r3, #0
 1331 00c2 2361     		str	r3, [r4, #16]
 1332 00c4 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1333              	.L308:
 1334 00c8 0028     		cmp	r0, #0
 1335 00ca F9D1     		bne	.L291
 1336              	.L301:
 1337 00cc BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1338              	.L310:
 1339 00d0 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 1340 00d2 5B06     		lsls	r3, r3, #25
 1341 00d4 04D5     		bpl	.L284
 1342 00d6 FE28     		cmp	r0, #254
 1343 00d8 EBD8     		bhi	.L280
 1344 00da 0023     		movs	r3, #0
 1345 00dc 28F81030 		strh	r3, [r8, r0, lsl #1]	@ movhi
 1346              	.L284:
 1347 00e0 013D     		subs	r5, r5, #1
 1348 00e2 EDB2     		uxtb	r5, r5
 1349 00e4 7646     		mov	r6, lr
 1350 00e6 97E7     		b	.L273
 1351              	.L276:
 1352 00e8 7DB9     		cbnz	r5, .L285
 1353 00ea 02F10A07 		add	r7, r2, #10
 1354 00ee 0146     		mov	r1, r0
 1355 00f0 01E0     		b	.L287
 1356              	.L312:
 1357 00f2 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
 1358              	.L287:
 1359 00f6 CD01     		lsls	r5, r1, #7
 1360 00f8 45EA5101 		orr	r1, r5, r1, lsr #1
 1361 00fc 53FA81F1 		uxtab	r1, r3, r1
 1362 0100 BA42     		cmp	r2, r7
 1363 0102 C9B2     		uxtb	r1, r1
 1364 0104 F5D1     		bne	.L312
 1365 0106 8E42     		cmp	r6, r1
 1366 0108 E0D0     		beq	.L301
 1367              	.L285:
 1368 010a 4FF6FF73 		movw	r3, #65535
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 25


 1369 010e 2384     		strh	r3, [r4, #32]	@ movhi
 1370 0110 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1371              	.L314:
 1372              		.align	2
 1373              	.L313:
 1374 0114 0C000000 		.word	.LANCHOR2+12
 1375 0118 FFFFFFFF 		.word	.LANCHOR2-1
 1376              		.size	dir_read, .-dir_read
 1377              		.section	.text.dir_remove,"ax",%progbits
 1378              		.align	2
 1379              		.thumb
 1380              		.thumb_func
 1381              		.type	dir_remove, %function
 1382              	dir_remove:
 1383              		@ args = 0, pretend = 0, frame = 0
 1384              		@ frame_needed = 0, uses_anonymous_args = 0
 1385 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1386 0002 018C     		ldrh	r1, [r0, #32]
 1387 0004 C588     		ldrh	r5, [r0, #6]
 1388 0006 4FF6FF73 		movw	r3, #65535
 1389 000a 9942     		cmp	r1, r3
 1390 000c 08BF     		it	eq
 1391 000e 2946     		moveq	r1, r5
 1392 0010 0446     		mov	r4, r0
 1393 0012 FFF7FEFF 		bl	dir_sdi
 1394 0016 0346     		mov	r3, r0
 1395 0018 C8B9     		cbnz	r0, .L317
 1396 001a E527     		movs	r7, #229
 1397 001c 0126     		movs	r6, #1
 1398 001e 0AE0     		b	.L320
 1399              	.L323:
 1400 0020 6269     		ldr	r2, [r4, #20]
 1401 0022 1770     		strb	r7, [r2]
 1402 0024 2268     		ldr	r2, [r4]
 1403 0026 1671     		strb	r6, [r2, #4]
 1404 0028 E288     		ldrh	r2, [r4, #6]
 1405 002a AA42     		cmp	r2, r5
 1406 002c 0FD2     		bcs	.L317
 1407 002e FFF7FEFF 		bl	dir_next
 1408 0032 0346     		mov	r3, r0
 1409 0034 40B9     		cbnz	r0, .L318
 1410              	.L320:
 1411 0036 2169     		ldr	r1, [r4, #16]
 1412 0038 2068     		ldr	r0, [r4]
 1413 003a FFF7FEFF 		bl	move_window
 1414 003e 0346     		mov	r3, r0
 1415 0040 0146     		mov	r1, r0
 1416 0042 2046     		mov	r0, r4
 1417 0044 002B     		cmp	r3, #0
 1418 0046 EBD0     		beq	.L323
 1419              	.L318:
 1420 0048 042B     		cmp	r3, #4
 1421 004a 08BF     		it	eq
 1422 004c 0223     		moveq	r3, #2
 1423              	.L317:
 1424 004e 1846     		mov	r0, r3
 1425 0050 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 26


 1426              		.size	dir_remove, .-dir_remove
 1427 0052 00BF     		.section	.text.dir_find.part.5,"ax",%progbits
 1428              		.align	2
 1429              		.thumb
 1430              		.thumb_func
 1431              		.type	dir_find.part.5, %function
 1432              	dir_find.part.5:
 1433              		@ args = 0, pretend = 0, frame = 8
 1434              		@ frame_needed = 0, uses_anonymous_args = 0
 1435 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1436 0004 FF26     		movs	r6, #255
 1437 0006 83B0     		sub	sp, sp, #12
 1438 0008 0446     		mov	r4, r0
 1439 000a B146     		mov	r9, r6
 1440 000c 0AE0     		b	.L342
 1441              	.L363:
 1442 000e 0F29     		cmp	r1, #15
 1443 0010 42D0     		beq	.L328
 1444              	.L348:
 1445 0012 4FF0FF09 		mov	r9, #255
 1446              	.L326:
 1447 0016 2046     		mov	r0, r4
 1448 0018 0021     		movs	r1, #0
 1449 001a FFF7FEFF 		bl	dir_next
 1450 001e 0546     		mov	r5, r0
 1451 0020 0028     		cmp	r0, #0
 1452 0022 35D1     		bne	.L353
 1453              	.L342:
 1454 0024 2068     		ldr	r0, [r4]
 1455 0026 2169     		ldr	r1, [r4, #16]
 1456 0028 FFF7FEFF 		bl	move_window
 1457 002c 0546     		mov	r5, r0
 1458 002e 0028     		cmp	r0, #0
 1459 0030 2ED1     		bne	.L353
 1460 0032 6769     		ldr	r7, [r4, #20]
 1461 0034 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 1462 0036 002B     		cmp	r3, #0
 1463 0038 6FD0     		beq	.L343
 1464 003a FA7A     		ldrb	r2, [r7, #11]	@ zero_extendqisi2
 1465 003c E52B     		cmp	r3, #229
 1466 003e 02F03F01 		and	r1, r2, #63
 1467 0042 E6D0     		beq	.L348
 1468 0044 1207     		lsls	r2, r2, #28
 1469 0046 E2D4     		bmi	.L363
 1470 0048 0F29     		cmp	r1, #15
 1471 004a 25D0     		beq	.L328
 1472 004c B9F1000F 		cmp	r9, #0
 1473 0050 11D1     		bne	.L338
 1474 0052 9C46     		mov	ip, r3
 1475 0054 3A46     		mov	r2, r7
 1476 0056 07F10A00 		add	r0, r7, #10
 1477 005a 2B46     		mov	r3, r5
 1478 005c 01E0     		b	.L340
 1479              	.L364:
 1480 005e 12F801CF 		ldrb	ip, [r2, #1]!	@ zero_extendqisi2
 1481              	.L340:
 1482 0062 D901     		lsls	r1, r3, #7
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 27


 1483 0064 41EA5303 		orr	r3, r1, r3, lsr #1
 1484 0068 5CFA83F3 		uxtab	r3, ip, r3
 1485 006c 8242     		cmp	r2, r0
 1486 006e DBB2     		uxtb	r3, r3
 1487 0070 F5D1     		bne	.L364
 1488 0072 B342     		cmp	r3, r6
 1489 0074 0CD0     		beq	.L353
 1490              	.L338:
 1491 0076 4FF6FF73 		movw	r3, #65535
 1492 007a A169     		ldr	r1, [r4, #24]
 1493 007c 2384     		strh	r3, [r4, #32]	@ movhi
 1494 007e CB7A     		ldrb	r3, [r1, #11]	@ zero_extendqisi2
 1495 0080 DB07     		lsls	r3, r3, #31
 1496 0082 C6D4     		bmi	.L348
 1497 0084 3846     		mov	r0, r7
 1498 0086 0B22     		movs	r2, #11
 1499 0088 FFF7FEFF 		bl	memcmp
 1500 008c 0028     		cmp	r0, #0
 1501 008e C0D1     		bne	.L348
 1502              	.L353:
 1503 0090 2846     		mov	r0, r5
 1504 0092 03B0     		add	sp, sp, #12
 1505              		@ sp needed
 1506 0094 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1507              	.L328:
 1508 0098 E569     		ldr	r5, [r4, #28]
 1509 009a 002D     		cmp	r5, #0
 1510 009c BBD0     		beq	.L326
 1511 009e 5806     		lsls	r0, r3, #25
 1512 00a0 37D5     		bpl	.L330
 1513 00a2 E288     		ldrh	r2, [r4, #6]
 1514 00a4 7E7B     		ldrb	r6, [r7, #13]	@ zero_extendqisi2
 1515 00a6 2284     		strh	r2, [r4, #32]	@ movhi
 1516 00a8 03F0BF09 		and	r9, r3, #191
 1517              	.L331:
 1518 00ac 97F80DB0 		ldrb	fp, [r7, #13]	@ zero_extendqisi2
 1519 00b0 B345     		cmp	fp, r6
 1520 00b2 AED1     		bne	.L348
 1521 00b4 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 1522 00b6 244E     		ldr	r6, .L366
 1523 00b8 23F04003 		bic	r3, r3, #64
 1524 00bc 013B     		subs	r3, r3, #1
 1525 00be 03EB430C 		add	ip, r3, r3, lsl #1
 1526 00c2 03EB8C08 		add	r8, r3, ip, lsl #2
 1527 00c6 0122     		movs	r2, #1
 1528 00c8 4FF6FF7A 		movw	r10, #65535
 1529 00cc 04E0     		b	.L336
 1530              	.L332:
 1531 00ce 5045     		cmp	r0, r10
 1532 00d0 2FD1     		bne	.L333
 1533              	.L334:
 1534 00d2 1E4B     		ldr	r3, .L366+4
 1535 00d4 9E42     		cmp	r6, r3
 1536 00d6 25D0     		beq	.L365
 1537              	.L336:
 1538 00d8 16F8013F 		ldrb	r3, [r6, #1]!	@ zero_extendqisi2
 1539 00dc F818     		adds	r0, r7, r3
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 28


 1540 00de FB5C     		ldrb	r3, [r7, r3]	@ zero_extendqisi2
 1541 00e0 4078     		ldrb	r0, [r0, #1]	@ zero_extendqisi2
 1542 00e2 43EA0020 		orr	r0, r3, r0, lsl #8
 1543 00e6 002A     		cmp	r2, #0
 1544 00e8 F1D0     		beq	.L332
 1545 00ea 08F10103 		add	r3, r8, #1
 1546 00ee 0193     		str	r3, [sp, #4]
 1547 00f0 FFF7FEFF 		bl	ff_wtoupper
 1548 00f4 B8F1FE0F 		cmp	r8, #254
 1549 00f8 0246     		mov	r2, r0
 1550 00fa 1AD8     		bhi	.L333
 1551 00fc 35F81800 		ldrh	r0, [r5, r8, lsl #1]
 1552 0100 0092     		str	r2, [sp]
 1553 0102 FFF7FEFF 		bl	ff_wtoupper
 1554 0106 009A     		ldr	r2, [sp]
 1555 0108 8242     		cmp	r2, r0
 1556 010a 12D1     		bne	.L333
 1557 010c DDF80480 		ldr	r8, [sp, #4]
 1558 0110 DFE7     		b	.L334
 1559              	.L330:
 1560 0112 4B45     		cmp	r3, r9
 1561 0114 7FF47DAF 		bne	.L348
 1562 0118 C8E7     		b	.L331
 1563              	.L343:
 1564 011a 0425     		movs	r5, #4
 1565 011c 2846     		mov	r0, r5
 1566 011e 03B0     		add	sp, sp, #12
 1567              		@ sp needed
 1568 0120 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1569              	.L365:
 1570 0124 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 1571 0126 5906     		lsls	r1, r3, #25
 1572 0128 07D5     		bpl	.L337
 1573 012a 32B1     		cbz	r2, .L337
 1574 012c 35F81830 		ldrh	r3, [r5, r8, lsl #1]
 1575 0130 1BB1     		cbz	r3, .L337
 1576              	.L333:
 1577 0132 5E46     		mov	r6, fp
 1578 0134 4FF0FF09 		mov	r9, #255
 1579 0138 6DE7     		b	.L326
 1580              	.L337:
 1581 013a 09F1FF39 		add	r9, r9, #-1
 1582 013e 5FFA89F9 		uxtb	r9, r9
 1583 0142 5E46     		mov	r6, fp
 1584 0144 67E7     		b	.L326
 1585              	.L367:
 1586 0146 00BF     		.align	2
 1587              	.L366:
 1588 0148 FFFFFFFF 		.word	.LANCHOR2-1
 1589 014c 0C000000 		.word	.LANCHOR2+12
 1590              		.size	dir_find.part.5, .-dir_find.part.5
 1591              		.section	.text.dir_register,"ax",%progbits
 1592              		.align	2
 1593              		.thumb
 1594              		.thumb_func
 1595              		.type	dir_register, %function
 1596              	dir_register:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 29


 1597              		@ args = 0, pretend = 0, frame = 24
 1598              		@ frame_needed = 0, uses_anonymous_args = 0
 1599 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1600 0004 D0F81880 		ldr	r8, [r0, #24]
 1601 0008 C569     		ldr	r5, [r0, #28]
 1602 000a D8F80820 		ldr	r2, [r8, #8]	@ unaligned
 1603 000e D8F80410 		ldr	r1, [r8, #4]	@ unaligned
 1604 0012 87B0     		sub	sp, sp, #28
 1605 0014 0446     		mov	r4, r0
 1606 0016 D8F80000 		ldr	r0, [r8]	@ unaligned
 1607 001a 03AB     		add	r3, sp, #12
 1608 001c 07C3     		stmia	r3!, {r0, r1, r2}
 1609 001e 9DF81770 		ldrb	r7, [sp, #23]	@ zero_extendqisi2
 1610 0022 FA07     		lsls	r2, r7, #31
 1611 0024 40F18380 		bpl	.L369
 1612 0028 03AB     		add	r3, sp, #12
 1613 002a 03CB     		ldmia	r3!, {r0, r1}
 1614 002c 0022     		movs	r2, #0
 1615 002e 1E88     		ldrh	r6, [r3]	@ unaligned
 1616 0030 9B78     		ldrb	r3, [r3, #2]	@ zero_extendqisi2
 1617 0032 88F80B20 		strb	r2, [r8, #11]
 1618 0036 4FF00109 		mov	r9, #1
 1619 003a E261     		str	r2, [r4, #28]
 1620 003c A8F80860 		strh	r6, [r8, #8]	@ unaligned
 1621 0040 4A46     		mov	r2, r9
 1622 0042 C8F80000 		str	r0, [r8]	@ unaligned
 1623 0046 C8F80410 		str	r1, [r8, #4]	@ unaligned
 1624 004a 88F80A30 		strb	r3, [r8, #10]
 1625 004e 7E26     		movs	r6, #126
 1626              	.L370:
 1627 0050 0723     		movs	r3, #7
 1628              	.L375:
 1629 0052 02F00F00 		and	r0, r2, #15
 1630 0056 00F13001 		add	r1, r0, #48
 1631 005a 3929     		cmp	r1, #57
 1632 005c 88BF     		it	hi
 1633 005e 00F13701 		addhi	r1, r0, #55
 1634 0062 013B     		subs	r3, r3, #1
 1635 0064 01A8     		add	r0, sp, #4
 1636 0066 1844     		add	r0, r0, r3
 1637 0068 C2F30F12 		ubfx	r2, r2, #4, #16
 1638 006c 4170     		strb	r1, [r0, #1]
 1639 006e 002A     		cmp	r2, #0
 1640 0070 EFD1     		bne	.L375
 1641 0072 06A9     		add	r1, sp, #24
 1642 0074 1944     		add	r1, r1, r3
 1643 0076 01F8146C 		strb	r6, [r1, #-20]
 1644 007a 002B     		cmp	r3, #0
 1645 007c 00F09E80 		beq	.L410
 1646 0080 98F80010 		ldrb	r1, [r8]	@ zero_extendqisi2
 1647 0084 2029     		cmp	r1, #32
 1648 0086 14D0     		beq	.L380
 1649 0088 4146     		mov	r1, r8
 1650 008a 03E0     		b	.L377
 1651              	.L441:
 1652 008c 11F8010F 		ldrb	r0, [r1, #1]!	@ zero_extendqisi2
 1653 0090 2028     		cmp	r0, #32
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 30


 1654 0092 0ED0     		beq	.L380
 1655              	.L377:
 1656 0094 0132     		adds	r2, r2, #1
 1657 0096 9A42     		cmp	r2, r3
 1658 0098 F8D1     		bne	.L441
 1659 009a 072B     		cmp	r3, #7
 1660 009c 0BD8     		bhi	.L412
 1661              	.L443:
 1662 009e 06A9     		add	r1, sp, #24
 1663 00a0 1944     		add	r1, r1, r3
 1664 00a2 0133     		adds	r3, r3, #1
 1665 00a4 11F8141C 		ldrb	r1, [r1, #-20]	@ zero_extendqisi2
 1666 00a8 08F80210 		strb	r1, [r8, r2]
 1667 00ac 0132     		adds	r2, r2, #1
 1668 00ae 072A     		cmp	r2, #7
 1669 00b0 07D8     		bhi	.L442
 1670              	.L380:
 1671 00b2 072B     		cmp	r3, #7
 1672 00b4 F3D9     		bls	.L443
 1673              	.L412:
 1674 00b6 2021     		movs	r1, #32
 1675 00b8 08F80210 		strb	r1, [r8, r2]
 1676 00bc 0132     		adds	r2, r2, #1
 1677 00be 072A     		cmp	r2, #7
 1678 00c0 F7D9     		bls	.L380
 1679              	.L442:
 1680 00c2 2046     		mov	r0, r4
 1681 00c4 0021     		movs	r1, #0
 1682 00c6 FFF7FEFF 		bl	dir_sdi
 1683 00ca 58BB     		cbnz	r0, .L381
 1684 00cc 2046     		mov	r0, r4
 1685 00ce FFF7FEFF 		bl	dir_find.part.5
 1686 00d2 38BB     		cbnz	r0, .L381
 1687 00d4 09F10109 		add	r9, r9, #1
 1688 00d8 1FFA89F9 		uxth	r9, r9
 1689 00dc B9F1640F 		cmp	r9, #100
 1690 00e0 72D0     		beq	.L444
 1691 00e2 03AB     		add	r3, sp, #12
 1692 00e4 03CB     		ldmia	r3!, {r0, r1}
 1693 00e6 B9F1050F 		cmp	r9, #5
 1694 00ea 1A88     		ldrh	r2, [r3]	@ unaligned
 1695 00ec 9B78     		ldrb	r3, [r3, #2]	@ zero_extendqisi2
 1696 00ee C8F80000 		str	r0, [r8]	@ unaligned
 1697 00f2 C8F80410 		str	r1, [r8, #4]	@ unaligned
 1698 00f6 A8F80820 		strh	r2, [r8, #8]	@ unaligned
 1699 00fa 88F80A30 		strb	r3, [r8, #10]
 1700 00fe 0FD9     		bls	.L409
 1701 0100 2888     		ldrh	r0, [r5]
 1702 0102 2946     		mov	r1, r5
 1703 0104 4A46     		mov	r2, r9
 1704 0106 00E0     		b	.L372
 1705              	.L445:
 1706 0108 1846     		mov	r0, r3
 1707              	.L372:
 1708 010a D303     		lsls	r3, r2, #15
 1709 010c 43EA5202 		orr	r2, r3, r2, lsr #1
 1710 0110 31F8023F 		ldrh	r3, [r1, #2]!
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 31


 1711 0114 10FA82F2 		uxtah	r2, r0, r2
 1712 0118 92B2     		uxth	r2, r2
 1713 011a 002B     		cmp	r3, #0
 1714 011c F4D1     		bne	.L445
 1715 011e 97E7     		b	.L370
 1716              	.L409:
 1717 0120 4A46     		mov	r2, r9
 1718 0122 95E7     		b	.L370
 1719              	.L381:
 1720 0124 0428     		cmp	r0, #4
 1721 0126 33D1     		bne	.L438
 1722 0128 88F80B70 		strb	r7, [r8, #11]
 1723 012c E561     		str	r5, [r4, #28]
 1724              	.L369:
 1725 012e BB07     		lsls	r3, r7, #30
 1726 0130 31D4     		bmi	.L446
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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 32


 1768 017e 27D1     		bne	.L406
 1769              	.L403:
 1770 0180 2068     		ldr	r0, [r4]
 1771 0182 2169     		ldr	r1, [r4, #16]
 1772 0184 FFF7FEFF 		bl	move_window
 1773 0188 0646     		mov	r6, r0
 1774 018a 0028     		cmp	r0, #0
 1775 018c 00F09280 		beq	.L408
 1776              	.L438:
 1777 0190 07B0     		add	sp, sp, #28
 1778              		@ sp needed
 1779 0192 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1780              	.L446:
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
 1791 01aa 4F4F     		ldr	r7, .L449
 1792 01ac 1933     		adds	r3, r3, #25
 1793 01ae 87FB0327 		smull	r2, r7, r7, r3
 1794 01b2 DB17     		asrs	r3, r3, #31
 1795 01b4 C3EBA707 		rsb	r7, r3, r7, asr #2
 1796 01b8 BFB2     		uxth	r7, r7
 1797 01ba BBE7     		b	.L384
 1798              	.L410:
 1799 01bc 1A46     		mov	r2, r3
 1800 01be 78E7     		b	.L380
 1801              	.L394:
 1802 01c0 1846     		mov	r0, r3
 1803 01c2 07B0     		add	sp, sp, #28
 1804              		@ sp needed
 1805 01c4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1806              	.L444:
 1807 01c8 0720     		movs	r0, #7
 1808 01ca 07B0     		add	sp, sp, #28
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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 33


 1825 01f2 53FA89F9 		uxtab	r9, r3, r9
 1826 01f6 8242     		cmp	r2, r0
 1827 01f8 5FFA89F9 		uxtb	r9, r9
 1828 01fc F3D1     		bne	.L396
 1829 01fe 013F     		subs	r7, r7, #1
 1830 0200 DFF8E880 		ldr	r8, .L449+4
 1831 0204 1FFA87FB 		uxth	fp, r7
 1832              	.L404:
 1833 0208 2068     		ldr	r0, [r4]
 1834 020a 2169     		ldr	r1, [r4, #16]
 1835 020c FFF7FEFF 		bl	move_window
 1836 0210 0346     		mov	r3, r0
 1837 0212 0028     		cmp	r0, #0
 1838 0214 D4D1     		bne	.L394
 1839 0216 5FFA8BFA 		uxtb	r10, fp
 1840 021a 6569     		ldr	r5, [r4, #20]
 1841 021c D4F81CE0 		ldr	lr, [r4, #28]
 1842 0220 2873     		strb	r0, [r5, #12]
 1843 0222 0AF1FF32 		add	r2, r10, #-1
 1844 0226 02EB4201 		add	r1, r2, r2, lsl #1
 1845 022a 0F26     		movs	r6, #15
 1846 022c 02EB8101 		add	r1, r2, r1, lsl #2
 1847 0230 A876     		strb	r0, [r5, #26]
 1848 0232 E876     		strb	r0, [r5, #27]
 1849 0234 0246     		mov	r2, r0
 1850 0236 85F80D90 		strb	r9, [r5, #13]
 1851 023a EE72     		strb	r6, [r5, #11]
 1852 023c 4FF6FF70 		movw	r0, #65535
 1853 0240 4FF0FF0C 		mov	ip, #255
 1854 0244 0DE0     		b	.L400
 1855              	.L448:
 1856 0246 3EF81130 		ldrh	r3, [lr, r1, lsl #1]
 1857 024a AB55     		strb	r3, [r5, r6]
 1858 024c 0132     		adds	r2, r2, #1
 1859 024e 2E44     		add	r6, r6, r5
 1860 0250 1F0A     		lsrs	r7, r3, #8
 1861 0252 002B     		cmp	r3, #0
 1862 0254 08BF     		it	eq
 1863 0256 0346     		moveq	r3, r0
 1864 0258 0D2A     		cmp	r2, #13
 1865 025a 01F10101 		add	r1, r1, #1
 1866 025e 7770     		strb	r7, [r6, #1]
 1867 0260 0BD0     		beq	.L447
 1868              	.L400:
 1869 0262 8342     		cmp	r3, r0
 1870 0264 18F80260 		ldrb	r6, [r8, r2]	@ zero_extendqisi2
 1871 0268 EDD1     		bne	.L448
 1872 026a AF19     		adds	r7, r5, r6
 1873 026c 0132     		adds	r2, r2, #1
 1874 026e 0D2A     		cmp	r2, #13
 1875 0270 05F806C0 		strb	ip, [r5, r6]
 1876 0274 87F801C0 		strb	ip, [r7, #1]
 1877 0278 F3D1     		bne	.L400
 1878              	.L447:
 1879 027a 4FF6FF72 		movw	r2, #65535
 1880 027e 9342     		cmp	r3, r2
 1881 0280 02D0     		beq	.L401
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 34


 1882 0282 3EF81130 		ldrh	r3, [lr, r1, lsl #1]
 1883 0286 0BB9     		cbnz	r3, .L402
 1884              	.L401:
 1885 0288 4AF0400A 		orr	r10, r10, #64
 1886              	.L402:
 1887 028c 85F800A0 		strb	r10, [r5]
 1888 0290 2368     		ldr	r3, [r4]
 1889 0292 0122     		movs	r2, #1
 1890 0294 1A71     		strb	r2, [r3, #4]
 1891 0296 2046     		mov	r0, r4
 1892 0298 0021     		movs	r1, #0
 1893 029a FFF7FEFF 		bl	dir_next
 1894 029e 0346     		mov	r3, r0
 1895 02a0 0028     		cmp	r0, #0
 1896 02a2 8DD1     		bne	.L394
 1897 02a4 0BF1FF3B 		add	fp, fp, #-1
 1898 02a8 1FFA8BFB 		uxth	fp, fp
 1899 02ac BBF1000F 		cmp	fp, #0
 1900 02b0 AAD1     		bne	.L404
 1901 02b2 65E7     		b	.L403
 1902              	.L408:
 1903 02b4 6569     		ldr	r5, [r4, #20]
 1904 02b6 3146     		mov	r1, r6
 1905 02b8 2022     		movs	r2, #32
 1906 02ba 2846     		mov	r0, r5
 1907 02bc FFF7FEFF 		bl	memset
 1908 02c0 A369     		ldr	r3, [r4, #24]
 1909 02c2 1A68     		ldr	r2, [r3]	@ unaligned
 1910 02c4 5968     		ldr	r1, [r3, #4]	@ unaligned
 1911 02c6 6960     		str	r1, [r5, #4]	@ unaligned
 1912 02c8 2A60     		str	r2, [r5]	@ unaligned
 1913 02ca 1A89     		ldrh	r2, [r3, #8]	@ unaligned
 1914 02cc 9B7A     		ldrb	r3, [r3, #10]	@ zero_extendqisi2
 1915 02ce AB72     		strb	r3, [r5, #10]
 1916 02d0 2A81     		strh	r2, [r5, #8]	@ unaligned
 1917 02d2 A369     		ldr	r3, [r4, #24]
 1918 02d4 DB7A     		ldrb	r3, [r3, #11]	@ zero_extendqisi2
 1919 02d6 03F01803 		and	r3, r3, #24
 1920 02da 2B73     		strb	r3, [r5, #12]
 1921 02dc 2368     		ldr	r3, [r4]
 1922 02de 0122     		movs	r2, #1
 1923 02e0 3046     		mov	r0, r6
 1924 02e2 1A71     		strb	r2, [r3, #4]
 1925 02e4 54E7     		b	.L438
 1926              	.L450:
 1927 02e6 00BF     		.align	2
 1928              	.L449:
 1929 02e8 4FECC44E 		.word	1321528399
 1930 02ec 00000000 		.word	.LANCHOR2
 1931              		.size	dir_register, .-dir_register
 1932              		.section	.text.remove_chain.part.6,"ax",%progbits
 1933              		.align	2
 1934              		.thumb
 1935              		.thumb_func
 1936              		.type	remove_chain.part.6, %function
 1937              	remove_chain.part.6:
 1938              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 35


 1939              		@ frame_needed = 0, uses_anonymous_args = 0
 1940 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1941 0002 0446     		mov	r4, r0
 1942 0004 0D46     		mov	r5, r1
 1943 0006 A369     		ldr	r3, [r4, #24]
 1944 0008 9D42     		cmp	r5, r3
 1945 000a 4FF00107 		mov	r7, #1
 1946 000e 20D2     		bcs	.L459
 1947              	.L458:
 1948 0010 012D     		cmp	r5, #1
 1949 0012 0CD9     		bls	.L456
 1950 0014 2046     		mov	r0, r4
 1951 0016 2946     		mov	r1, r5
 1952 0018 FFF7FEFF 		bl	get_fat.part.3
 1953 001c 0646     		mov	r6, r0
 1954 001e C0B1     		cbz	r0, .L459
 1955 0020 0128     		cmp	r0, #1
 1956 0022 04D0     		beq	.L456
 1957 0024 411C     		adds	r1, r0, #1
 1958 0026 16D0     		beq	.L460
 1959 0028 A369     		ldr	r3, [r4, #24]
 1960 002a 9D42     		cmp	r5, r3
 1961 002c 01D3     		bcc	.L467
 1962              	.L456:
 1963 002e 0220     		movs	r0, #2
 1964 0030 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1965              	.L467:
 1966 0032 2946     		mov	r1, r5
 1967 0034 2046     		mov	r0, r4
 1968 0036 0022     		movs	r2, #0
 1969 0038 FFF7FEFF 		bl	put_fat.part.4
 1970 003c 60B9     		cbnz	r0, .L454
 1971 003e 2369     		ldr	r3, [r4, #16]
 1972 0040 5A1C     		adds	r2, r3, #1
 1973 0042 02D0     		beq	.L457
 1974 0044 0133     		adds	r3, r3, #1
 1975 0046 2361     		str	r3, [r4, #16]
 1976 0048 6771     		strb	r7, [r4, #5]
 1977              	.L457:
 1978 004a A369     		ldr	r3, [r4, #24]
 1979 004c 3546     		mov	r5, r6
 1980 004e 9D42     		cmp	r5, r3
 1981 0050 DED3     		bcc	.L458
 1982              	.L459:
 1983 0052 0020     		movs	r0, #0
 1984 0054 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1985              	.L460:
 1986 0056 0120     		movs	r0, #1
 1987              	.L454:
 1988 0058 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1989              		.size	remove_chain.part.6, .-remove_chain.part.6
 1990 005a 00BF     		.section	.text.follow_path,"ax",%progbits
 1991              		.align	2
 1992              		.thumb
 1993              		.thumb_func
 1994              		.type	follow_path, %function
 1995              	follow_path:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 36


 1996              		@ args = 0, pretend = 0, frame = 8
 1997              		@ frame_needed = 0, uses_anonymous_args = 0
 1998 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1999 0004 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 2000 0006 2F2B     		cmp	r3, #47
 2001 0008 83B0     		sub	sp, sp, #12
 2002 000a 8846     		mov	r8, r1
 2003 000c 0546     		mov	r5, r0
 2004 000e 00F02C81 		beq	.L469
 2005 0012 5C2B     		cmp	r3, #92
 2006 0014 00F02981 		beq	.L469
 2007 0018 0024     		movs	r4, #0
 2008 001a AC60     		str	r4, [r5, #8]
 2009 001c 98F80000 		ldrb	r0, [r8]	@ zero_extendqisi2
 2010 0020 1F28     		cmp	r0, #31
 2011 0022 40F22B81 		bls	.L602
 2012              	.L471:
 2013 0026 A84E     		ldr	r6, .L610
 2014 0028 01E0     		b	.L473
 2015              	.L474:
 2016 002a 18F8010F 		ldrb	r0, [r8, #1]!	@ zero_extendqisi2
 2017              	.L473:
 2018 002e 2F28     		cmp	r0, #47
 2019 0030 FBD0     		beq	.L474
 2020 0032 5C28     		cmp	r0, #92
 2021 0034 F9D0     		beq	.L474
 2022 0036 1F28     		cmp	r0, #31
 2023 0038 EF69     		ldr	r7, [r5, #28]
 2024 003a 40F28C80 		bls	.L525
 2025 003e 2F28     		cmp	r0, #47
 2026 0040 2ED0     		beq	.L527
 2027 0042 5C28     		cmp	r0, #92
 2028 0044 2CD0     		beq	.L527
 2029 0046 0121     		movs	r1, #1
 2030 0048 A7F1020A 		sub	r10, r7, #2
 2031 004c C146     		mov	r9, r8
 2032 004e 0124     		movs	r4, #1
 2033 0050 FFF7FEFF 		bl	ff_convert
 2034 0054 00B3     		cbz	r0, .L478
 2035              	.L604:
 2036 0056 7F28     		cmp	r0, #127
 2037 0058 09D8     		bhi	.L479
 2038 005a 2228     		cmp	r0, #34
 2039 005c 1CD0     		beq	.L478
 2040 005e 9B4A     		ldr	r2, .L610+4
 2041 0060 01E0     		b	.L480
 2042              	.L603:
 2043 0062 9842     		cmp	r0, r3
 2044 0064 18D0     		beq	.L478
 2045              	.L480:
 2046 0066 12F8013F 		ldrb	r3, [r2, #1]!	@ zero_extendqisi2
 2047 006a 002B     		cmp	r3, #0
 2048 006c F9D1     		bne	.L603
 2049              	.L479:
 2050 006e 2AF8020F 		strh	r0, [r10, #2]!	@ movhi
 2051 0072 19F8010F 		ldrb	r0, [r9, #1]!	@ zero_extendqisi2
 2052 0076 1F28     		cmp	r0, #31
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 37


 2053 0078 04F10103 		add	r3, r4, #1
 2054 007c 6DD9     		bls	.L475
 2055 007e 2F28     		cmp	r0, #47
 2056 0080 10D0     		beq	.L476
 2057 0082 5C28     		cmp	r0, #92
 2058 0084 0ED0     		beq	.L476
 2059 0086 B3F5807F 		cmp	r3, #256
 2060 008a 05D0     		beq	.L478
 2061 008c 0121     		movs	r1, #1
 2062 008e 1C46     		mov	r4, r3
 2063 0090 FFF7FEFF 		bl	ff_convert
 2064 0094 0028     		cmp	r0, #0
 2065 0096 DED1     		bne	.L604
 2066              	.L478:
 2067 0098 0620     		movs	r0, #6
 2068              	.L553:
 2069 009a 03B0     		add	sp, sp, #12
 2070              		@ sp needed
 2071 009c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2072              	.L527:
 2073 00a0 0024     		movs	r4, #0
 2074 00a2 0123     		movs	r3, #1
 2075              	.L476:
 2076 00a4 9844     		add	r8, r8, r3
 2077 00a6 4FF0000A 		mov	r10, #0
 2078              	.L518:
 2079 00aa 002C     		cmp	r4, #0
 2080 00ac F4D0     		beq	.L478
 2081 00ae 07EB4400 		add	r0, r7, r4, lsl #1
 2082              	.L484:
 2083 00b2 30F8022D 		ldrh	r2, [r0, #-2]!
 2084 00b6 202A     		cmp	r2, #32
 2085 00b8 01D0     		beq	.L482
 2086 00ba 2E2A     		cmp	r2, #46
 2087 00bc 02D1     		bne	.L483
 2088              	.L482:
 2089 00be 013C     		subs	r4, r4, #1
 2090 00c0 F7D1     		bne	.L484
 2091 00c2 E9E7     		b	.L478
 2092              	.L483:
 2093 00c4 4FF00009 		mov	r9, #0
 2094 00c8 2021     		movs	r1, #32
 2095 00ca 0B22     		movs	r2, #11
 2096 00cc 27F81490 		strh	r9, [r7, r4, lsl #1]	@ movhi
 2097 00d0 A869     		ldr	r0, [r5, #24]
 2098 00d2 FFF7FEFF 		bl	memset
 2099 00d6 07EB4401 		add	r1, r7, r4, lsl #1
 2100 00da BA1E     		subs	r2, r7, #2
 2101 00dc 01E0     		b	.L519
 2102              	.L485:
 2103 00de 09F10109 		add	r9, r9, #1
 2104              	.L519:
 2105 00e2 32F8023F 		ldrh	r3, [r2, #2]!
 2106 00e6 202B     		cmp	r3, #32
 2107 00e8 F9D0     		beq	.L485
 2108 00ea 2E2B     		cmp	r3, #46
 2109 00ec F7D0     		beq	.L485
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 38


 2110 00ee B9F1000F 		cmp	r9, #0
 2111 00f2 01D0     		beq	.L486
 2112 00f4 4AF0030A 		orr	r10, r10, #3
 2113              	.L486:
 2114 00f8 0A46     		mov	r2, r1
 2115              	.L487:
 2116 00fa 32F8021D 		ldrh	r1, [r2, #-2]!
 2117 00fe 2E29     		cmp	r1, #46
 2118 0100 01D0     		beq	.L491
 2119 0102 013C     		subs	r4, r4, #1
 2120 0104 F9D1     		bne	.L487
 2121              	.L491:
 2122 0106 0022     		movs	r2, #0
 2123 0108 1846     		mov	r0, r3
 2124 010a 9446     		mov	ip, r2
 2125 010c 4FF0080B 		mov	fp, #8
 2126              	.L489:
 2127 0110 09F10109 		add	r9, r9, #1
 2128 0114 B0B3     		cbz	r0, .L492
 2129 0116 2028     		cmp	r0, #32
 2130 0118 25D0     		beq	.L493
 2131 011a 2E28     		cmp	r0, #46
 2132 011c 21D0     		beq	.L605
 2133 011e 5A45     		cmp	r2, fp
 2134 0120 26D2     		bcs	.L497
 2135 0122 4C45     		cmp	r4, r9
 2136 0124 7ED0     		beq	.L495
 2137 0126 7F28     		cmp	r0, #127
 2138 0128 00F28880 		bhi	.L606
 2139              	.L502:
 2140 012c 2B28     		cmp	r0, #43
 2141 012e 00F09580 		beq	.L504
 2142 0132 6749     		ldr	r1, .L610+8
 2143 0134 02E0     		b	.L524
 2144              	.L607:
 2145 0136 9842     		cmp	r0, r3
 2146 0138 00F09080 		beq	.L504
 2147              	.L524:
 2148 013c 11F8013F 		ldrb	r3, [r1, #1]!	@ zero_extendqisi2
 2149 0140 002B     		cmp	r3, #0
 2150 0142 F8D1     		bne	.L607
 2151 0144 A0F14103 		sub	r3, r0, #65
 2152 0148 192B     		cmp	r3, #25
 2153 014a 00F2AD80 		bhi	.L608
 2154 014e 4CF0020C 		orr	ip, ip, #2
 2155 0152 C0B2     		uxtb	r0, r0
 2156 0154 85E0     		b	.L507
 2157              	.L525:
 2158 0156 0024     		movs	r4, #0
 2159 0158 0123     		movs	r3, #1
 2160              	.L475:
 2161 015a 9844     		add	r8, r8, r3
 2162 015c 4FF0040A 		mov	r10, #4
 2163 0160 A3E7     		b	.L518
 2164              	.L605:
 2165 0162 4C45     		cmp	r4, r9
 2166 0164 5ED0     		beq	.L495
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 39


 2167              	.L493:
 2168 0166 4AF0030A 		orr	r10, r10, #3
 2169              	.L496:
 2170 016a 37F81900 		ldrh	r0, [r7, r9, lsl #1]
 2171 016e CFE7     		b	.L489
 2172              	.L497:
 2173 0170 BBF10B0F 		cmp	fp, #11
 2174 0174 00F0A280 		beq	.L523
 2175 0178 4C45     		cmp	r4, r9
 2176 017a 56D0     		beq	.L501
 2177 017c A145     		cmp	r9, r4
 2178 017e 4AF0030A 		orr	r10, r10, #3
 2179 0182 52D9     		bls	.L501
 2180              	.L492:
 2181 0184 AB69     		ldr	r3, [r5, #24]
 2182 0186 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 2183 0188 E52A     		cmp	r2, #229
 2184 018a 00F08280 		beq	.L609
 2185              	.L509:
 2186 018e BBF1080F 		cmp	fp, #8
 2187 0192 04BF     		itt	eq
 2188 0194 4FEA8C0C 		lsleq	ip, ip, #2
 2189 0198 5FFA8CFC 		uxtbeq	ip, ip
 2190 019c 0CF00C02 		and	r2, ip, #12
 2191 01a0 0C2A     		cmp	r2, #12
 2192 01a2 73D0     		beq	.L511
 2193 01a4 0CF00301 		and	r1, ip, #3
 2194 01a8 0329     		cmp	r1, #3
 2195 01aa 6FD0     		beq	.L511
 2196              	.L512:
 2197 01ac 1AF0020F 		tst	r10, #2
 2198 01b0 0AD1     		bne	.L513
 2199 01b2 0CF0030C 		and	ip, ip, #3
 2200 01b6 BCF1010F 		cmp	ip, #1
 2201 01ba 08BF     		it	eq
 2202 01bc 4AF0100A 		orreq	r10, r10, #16
 2203 01c0 042A     		cmp	r2, #4
 2204 01c2 08BF     		it	eq
 2205 01c4 4AF0080A 		orreq	r10, r10, #8
 2206              	.L513:
 2207 01c8 83F80BA0 		strb	r10, [r3, #11]
 2208 01cc 2846     		mov	r0, r5
 2209 01ce 0021     		movs	r1, #0
 2210 01d0 FFF7FEFF 		bl	dir_sdi
 2211 01d4 D0B9     		cbnz	r0, .L515
 2212 01d6 2846     		mov	r0, r5
 2213 01d8 FFF7FEFF 		bl	dir_find.part.5
 2214 01dc AB69     		ldr	r3, [r5, #24]
 2215 01de DB7A     		ldrb	r3, [r3, #11]	@ zero_extendqisi2
 2216 01e0 B0B9     		cbnz	r0, .L522
 2217 01e2 5A07     		lsls	r2, r3, #29
 2218 01e4 3FF559AF 		bmi	.L553
 2219 01e8 6A69     		ldr	r2, [r5, #20]
 2220 01ea D37A     		ldrb	r3, [r2, #11]	@ zero_extendqisi2
 2221 01ec DB06     		lsls	r3, r3, #27
 2222 01ee 54D5     		bpl	.L531
 2223 01f0 107D     		ldrb	r0, [r2, #20]	@ zero_extendqisi2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 40


 2224 01f2 D37E     		ldrb	r3, [r2, #27]	@ zero_extendqisi2
 2225 01f4 917E     		ldrb	r1, [r2, #26]	@ zero_extendqisi2
 2226 01f6 547D     		ldrb	r4, [r2, #21]	@ zero_extendqisi2
 2227 01f8 41EA0323 		orr	r3, r1, r3, lsl #8
 2228 01fc 40EA0422 		orr	r2, r0, r4, lsl #8
 2229 0200 43EA0243 		orr	r3, r3, r2, lsl #16
 2230 0204 AB60     		str	r3, [r5, #8]
 2231 0206 98F80000 		ldrb	r0, [r8]	@ zero_extendqisi2
 2232 020a 10E7     		b	.L473
 2233              	.L515:
 2234 020c AB69     		ldr	r3, [r5, #24]
 2235 020e DB7A     		ldrb	r3, [r3, #11]	@ zero_extendqisi2
 2236              	.L522:
 2237 0210 0428     		cmp	r0, #4
 2238 0212 7FF442AF 		bne	.L553
 2239 0216 13F0040F 		tst	r3, #4
 2240 021a 08BF     		it	eq
 2241 021c 0520     		moveq	r0, #5
 2242 021e 03B0     		add	sp, sp, #12
 2243              		@ sp needed
 2244 0220 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2245              	.L495:
 2246 0224 BBF10B0F 		cmp	fp, #11
 2247 0228 48D0     		beq	.L523
 2248              	.L501:
 2249 022a 4FEA8C0C 		lsl	ip, ip, #2
 2250 022e 5FFA8CFC 		uxtb	ip, ip
 2251 0232 A146     		mov	r9, r4
 2252 0234 4FF00B0B 		mov	fp, #11
 2253 0238 0822     		movs	r2, #8
 2254 023a 96E7     		b	.L496
 2255              	.L606:
 2256 023c 0021     		movs	r1, #0
 2257 023e 8DE80410 		stmia	sp, {r2, ip}
 2258 0242 FFF7FEFF 		bl	ff_convert
 2259 0246 9DE80410 		ldmia	sp, {r2, ip}
 2260 024a 50B3     		cbz	r0, .L503
 2261 024c 3044     		add	r0, r0, r6
 2262 024e 4AF0020A 		orr	r10, r10, #2
 2263 0252 10F8800C 		ldrb	r0, [r0, #-128]	@ zero_extendqisi2
 2264 0256 0028     		cmp	r0, #0
 2265 0258 7FF468AF 		bne	.L502
 2266              	.L504:
 2267 025c 4AF0030A 		orr	r10, r10, #3
 2268 0260 5F20     		movs	r0, #95
 2269              	.L507:
 2270 0262 AB69     		ldr	r3, [r5, #24]
 2271 0264 9854     		strb	r0, [r3, r2]
 2272 0266 0132     		adds	r2, r2, #1
 2273 0268 7FE7     		b	.L496
 2274              	.L469:
 2275 026a 08F10108 		add	r8, r8, #1
 2276 026e 0024     		movs	r4, #0
 2277 0270 AC60     		str	r4, [r5, #8]
 2278 0272 98F80000 		ldrb	r0, [r8]	@ zero_extendqisi2
 2279 0276 1F28     		cmp	r0, #31
 2280 0278 3FF6D5AE 		bhi	.L471
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 41


 2281              	.L602:
 2282 027c 2846     		mov	r0, r5
 2283 027e 2146     		mov	r1, r4
 2284 0280 FFF7FEFF 		bl	dir_sdi
 2285 0284 6C61     		str	r4, [r5, #20]
 2286 0286 03B0     		add	sp, sp, #12
 2287              		@ sp needed
 2288 0288 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2289              	.L511:
 2290 028c 4AF0020A 		orr	r10, r10, #2
 2291 0290 8CE7     		b	.L512
 2292              	.L609:
 2293 0292 0522     		movs	r2, #5
 2294 0294 1A70     		strb	r2, [r3]
 2295 0296 AB69     		ldr	r3, [r5, #24]
 2296 0298 79E7     		b	.L509
 2297              	.L531:
 2298 029a 0520     		movs	r0, #5
 2299 029c 03B0     		add	sp, sp, #12
 2300              		@ sp needed
 2301 029e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2302              	.L503:
 2303 02a2 4AF0020A 		orr	r10, r10, #2
 2304 02a6 D9E7     		b	.L504
 2305              	.L608:
 2306 02a8 A0F16103 		sub	r3, r0, #97
 2307 02ac 192B     		cmp	r3, #25
 2308 02ae 97BF     		itett	ls
 2309 02b0 2038     		subls	r0, r0, #32
 2310 02b2 C0B2     		uxtbhi	r0, r0
 2311 02b4 C0B2     		uxtbls	r0, r0
 2312 02b6 4CF0010C 		orrls	ip, ip, #1
 2313 02ba D2E7     		b	.L507
 2314              	.L523:
 2315 02bc 4AF0030A 		orr	r10, r10, #3
 2316 02c0 4FF00B0B 		mov	fp, #11
 2317 02c4 5EE7     		b	.L492
 2318              	.L611:
 2319 02c6 00BF     		.align	2
 2320              	.L610:
 2321 02c8 00000000 		.word	.LANCHOR3
 2322 02cc 00000000 		.word	.LC0
 2323 02d0 0C000000 		.word	.LC1
 2324              		.size	follow_path, .-follow_path
 2325              		.section	.text.f_mount,"ax",%progbits
 2326              		.align	2
 2327              		.global	f_mount
 2328              		.thumb
 2329              		.thumb_func
 2330              		.type	f_mount, %function
 2331              	f_mount:
 2332              		@ args = 0, pretend = 0, frame = 0
 2333              		@ frame_needed = 0, uses_anonymous_args = 0
 2334              		@ link register save eliminated.
 2335 0000 0128     		cmp	r0, #1
 2336 0002 10B4     		push	{r4}
 2337 0004 03D9     		bls	.L623
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 42


 2338 0006 0B20     		movs	r0, #11
 2339 0008 5DF8044B 		ldr	r4, [sp], #4
 2340 000c 7047     		bx	lr
 2341              	.L623:
 2342 000e 074B     		ldr	r3, .L624
 2343 0010 53F82020 		ldr	r2, [r3, r0, lsl #2]
 2344 0014 0AB1     		cbz	r2, .L614
 2345 0016 0024     		movs	r4, #0
 2346 0018 1470     		strb	r4, [r2]
 2347              	.L614:
 2348 001a 09B1     		cbz	r1, .L615
 2349 001c 0022     		movs	r2, #0
 2350 001e 0A70     		strb	r2, [r1]
 2351              	.L615:
 2352 0020 43F82010 		str	r1, [r3, r0, lsl #2]
 2353 0024 5DF8044B 		ldr	r4, [sp], #4
 2354 0028 0020     		movs	r0, #0
 2355 002a 7047     		bx	lr
 2356              	.L625:
 2357              		.align	2
 2358              	.L624:
 2359 002c 00000000 		.word	.LANCHOR0
 2360              		.size	f_mount, .-f_mount
 2361              		.section	.text.f_open,"ax",%progbits
 2362              		.align	2
 2363              		.global	f_open
 2364              		.thumb
 2365              		.thumb_func
 2366              		.type	f_open, %function
 2367              	f_open:
 2368              		@ args = 0, pretend = 0, frame = 568
 2369              		@ frame_needed = 0, uses_anonymous_args = 0
 2370 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 2371 0004 ADF50F7D 		sub	sp, sp, #572
 2372 0008 0023     		movs	r3, #0
 2373 000a 0360     		str	r3, [r0]
 2374 000c 1646     		mov	r6, r2
 2375 000e 0191     		str	r1, [sp, #4]
 2376 0010 02F01E02 		and	r2, r2, #30
 2377 0014 0546     		mov	r5, r0
 2378 0016 05A9     		add	r1, sp, #20
 2379 0018 01A8     		add	r0, sp, #4
 2380 001a FFF7FEFF 		bl	chk_mounted
 2381 001e 02AB     		add	r3, sp, #8
 2382 0020 0EAA     		add	r2, sp, #56
 2383 0022 0B93     		str	r3, [sp, #44]
 2384 0024 0C92     		str	r2, [sp, #48]
 2385 0026 06F01F07 		and	r7, r6, #31
 2386 002a 0028     		cmp	r0, #0
 2387 002c 43D0     		beq	.L661
 2388              	.L627:
 2389 002e 16F01C0F 		tst	r6, #28
 2390 0032 3CD0     		beq	.L653
 2391 0034 0428     		cmp	r0, #4
 2392 0036 3AD1     		bne	.L653
 2393 0038 05A8     		add	r0, sp, #20
 2394 003a FFF7FEFF 		bl	dir_register
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 43


 2395 003e 47F00807 		orr	r7, r7, #8
 2396 0042 0A9C     		ldr	r4, [sp, #40]
 2397 0044 98BB     		cbnz	r0, .L653
 2398              	.L629:
 2399 0046 3807     		lsls	r0, r7, #28
 2400 0048 01D4     		bmi	.L662
 2401 004a 059B     		ldr	r3, [sp, #20]
 2402 004c 57E0     		b	.L638
 2403              	.L662:
 2404 004e FFF7FEFF 		bl	get_fattime
 2405 0052 94F815C0 		ldrb	ip, [r4, #21]	@ zero_extendqisi2
 2406 0056 A27E     		ldrb	r2, [r4, #26]	@ zero_extendqisi2
 2407 0058 267D     		ldrb	r6, [r4, #20]	@ zero_extendqisi2
 2408 005a E17E     		ldrb	r1, [r4, #27]	@ zero_extendqisi2
 2409 005c 059B     		ldr	r3, [sp, #20]
 2410 005e A073     		strb	r0, [r4, #14]
 2411 0060 46EA0C26 		orr	r6, r6, ip, lsl #8
 2412 0064 42EA0121 		orr	r1, r2, r1, lsl #8
 2413 0068 C0F30729 		ubfx	r9, r0, #8, #8
 2414 006c 0022     		movs	r2, #0
 2415 006e 4FEA1048 		lsr	r8, r0, #16
 2416 0072 4FF0010C 		mov	ip, #1
 2417 0076 000E     		lsrs	r0, r0, #24
 2418 0078 51EA0646 		orrs	r6, r1, r6, lsl #16
 2419 007c 84F80F90 		strb	r9, [r4, #15]
 2420 0080 84F81080 		strb	r8, [r4, #16]
 2421 0084 6074     		strb	r0, [r4, #17]
 2422 0086 E272     		strb	r2, [r4, #11]
 2423 0088 2277     		strb	r2, [r4, #28]
 2424 008a 6277     		strb	r2, [r4, #29]
 2425 008c A277     		strb	r2, [r4, #30]
 2426 008e E277     		strb	r2, [r4, #31]
 2427 0090 A276     		strb	r2, [r4, #26]
 2428 0092 E276     		strb	r2, [r4, #27]
 2429 0094 2275     		strb	r2, [r4, #20]
 2430 0096 6275     		strb	r2, [r4, #21]
 2431 0098 83F804C0 		strb	ip, [r3, #4]
 2432 009c 2DD0     		beq	.L633
 2433 009e 6645     		cmp	r6, ip
 2434 00a0 D3F82C80 		ldr	r8, [r3, #44]
 2435 00a4 02D0     		beq	.L647
 2436 00a6 9A69     		ldr	r2, [r3, #24]
 2437 00a8 9642     		cmp	r6, r2
 2438 00aa 52D3     		bcc	.L663
 2439              	.L647:
 2440 00ac 0220     		movs	r0, #2
 2441              	.L653:
 2442 00ae 0DF50F7D 		add	sp, sp, #572
 2443              		@ sp needed
 2444 00b2 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2445              	.L661:
 2446 00b6 0199     		ldr	r1, [sp, #4]
 2447 00b8 05A8     		add	r0, sp, #20
 2448 00ba FFF7FEFF 		bl	follow_path
 2449 00be 0A9C     		ldr	r4, [sp, #40]
 2450 00c0 0028     		cmp	r0, #0
 2451 00c2 B4D1     		bne	.L627
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 44


 2452 00c4 002C     		cmp	r4, #0
 2453 00c6 3ED0     		beq	.L664
 2454 00c8 16F01C0F 		tst	r6, #28
 2455 00cc E37A     		ldrb	r3, [r4, #11]	@ zero_extendqisi2
 2456 00ce 06D0     		beq	.L641
 2457 00d0 13F0110F 		tst	r3, #17
 2458 00d4 3BD1     		bne	.L649
 2459 00d6 7607     		lsls	r6, r6, #29
 2460 00d8 B5D5     		bpl	.L629
 2461 00da 0820     		movs	r0, #8
 2462 00dc E7E7     		b	.L653
 2463              	.L641:
 2464 00de D906     		lsls	r1, r3, #27
 2465 00e0 04D5     		bpl	.L665
 2466 00e2 0420     		movs	r0, #4
 2467 00e4 0DF50F7D 		add	sp, sp, #572
 2468              		@ sp needed
 2469 00e8 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2470              	.L665:
 2471 00ec B207     		lsls	r2, r6, #30
 2472 00ee 2CD4     		bmi	.L636
 2473              	.L660:
 2474 00f0 06F00806 		and	r6, r6, #8
 2475 00f4 F6B2     		uxtb	r6, r6
 2476 00f6 059B     		ldr	r3, [sp, #20]
 2477 00f8 0EB1     		cbz	r6, .L638
 2478              	.L633:
 2479 00fa 47F02007 		orr	r7, r7, #32
 2480              	.L638:
 2481 00fe DA6A     		ldr	r2, [r3, #44]
 2482 0100 EA61     		str	r2, [r5, #28]
 2483 0102 AF71     		strb	r7, [r5, #6]
 2484 0104 2C62     		str	r4, [r5, #32]
 2485 0106 677D     		ldrb	r7, [r4, #21]	@ zero_extendqisi2
 2486 0108 A67E     		ldrb	r6, [r4, #26]	@ zero_extendqisi2
 2487 010a 207D     		ldrb	r0, [r4, #20]	@ zero_extendqisi2
 2488 010c E17E     		ldrb	r1, [r4, #27]	@ zero_extendqisi2
 2489 010e DA88     		ldrh	r2, [r3, #6]
 2490 0110 40EA0720 		orr	r0, r0, r7, lsl #8
 2491 0114 46EA0121 		orr	r1, r6, r1, lsl #8
 2492 0118 41EA0041 		orr	r1, r1, r0, lsl #16
 2493 011c 2961     		str	r1, [r5, #16]
 2494 011e A77F     		ldrb	r7, [r4, #30]	@ zero_extendqisi2
 2495 0120 E67F     		ldrb	r6, [r4, #31]	@ zero_extendqisi2
 2496 0122 207F     		ldrb	r0, [r4, #28]	@ zero_extendqisi2
 2497 0124 617F     		ldrb	r1, [r4, #29]	@ zero_extendqisi2
 2498 0126 2B60     		str	r3, [r5]
 2499 0128 3B04     		lsls	r3, r7, #16
 2500 012a 43EA0663 		orr	r3, r3, r6, lsl #24
 2501 012e 0343     		orrs	r3, r3, r0
 2502 0130 43EA0123 		orr	r3, r3, r1, lsl #8
 2503 0134 0020     		movs	r0, #0
 2504 0136 EB60     		str	r3, [r5, #12]
 2505 0138 AA80     		strh	r2, [r5, #4]	@ movhi
 2506 013a A860     		str	r0, [r5, #8]
 2507 013c A861     		str	r0, [r5, #24]
 2508 013e 0DF50F7D 		add	sp, sp, #572
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 45


 2509              		@ sp needed
 2510 0142 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2511              	.L664:
 2512 0146 0620     		movs	r0, #6
 2513 0148 71E7     		b	.L627
 2514              	.L636:
 2515 014a DB07     		lsls	r3, r3, #31
 2516 014c D0D5     		bpl	.L660
 2517              	.L649:
 2518 014e 0720     		movs	r0, #7
 2519 0150 ADE7     		b	.L653
 2520              	.L663:
 2521 0152 1846     		mov	r0, r3
 2522 0154 3146     		mov	r1, r6
 2523 0156 FFF7FEFF 		bl	remove_chain.part.6
 2524 015a 0028     		cmp	r0, #0
 2525 015c A7D1     		bne	.L653
 2526 015e 0598     		ldr	r0, [sp, #20]
 2527 0160 013E     		subs	r6, r6, #1
 2528 0162 4146     		mov	r1, r8
 2529 0164 C660     		str	r6, [r0, #12]
 2530 0166 FFF7FEFF 		bl	move_window
 2531 016a 0028     		cmp	r0, #0
 2532 016c 9FD1     		bne	.L653
 2533 016e 059B     		ldr	r3, [sp, #20]
 2534 0170 C3E7     		b	.L633
 2535              		.size	f_open, .-f_open
 2536 0172 00BF     		.section	.text.f_read,"ax",%progbits
 2537              		.align	2
 2538              		.global	f_read
 2539              		.thumb
 2540              		.thumb_func
 2541              		.type	f_read, %function
 2542              	f_read:
 2543              		@ args = 0, pretend = 0, frame = 0
 2544              		@ frame_needed = 0, uses_anonymous_args = 0
 2545 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 2546 0004 0446     		mov	r4, r0
 2547 0006 9846     		mov	r8, r3
 2548 0008 0023     		movs	r3, #0
 2549 000a 0F46     		mov	r7, r1
 2550 000c C8F80030 		str	r3, [r8]
 2551 0010 0068     		ldr	r0, [r0]
 2552 0012 A188     		ldrh	r1, [r4, #4]
 2553 0014 1546     		mov	r5, r2
 2554 0016 FFF7FEFF 		bl	validate
 2555 001a 28B9     		cbnz	r0, .L667
 2556 001c A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 2557 001e 1E06     		lsls	r6, r3, #24
 2558 0020 04D4     		bmi	.L689
 2559 0022 D807     		lsls	r0, r3, #31
 2560 0024 05D4     		bmi	.L701
 2561 0026 0720     		movs	r0, #7
 2562              	.L667:
 2563 0028 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2564              	.L689:
 2565 002c 0220     		movs	r0, #2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 46


 2566 002e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2567              	.L701:
 2568 0032 A168     		ldr	r1, [r4, #8]
 2569 0034 E668     		ldr	r6, [r4, #12]
 2570 0036 761A     		subs	r6, r6, r1
 2571 0038 B542     		cmp	r5, r6
 2572 003a 38BF     		it	cc
 2573 003c 2E46     		movcc	r6, r5
 2574 003e 06BB     		cbnz	r6, .L687
 2575 0040 84E0     		b	.L686
 2576              	.L702:
 2577 0042 A169     		ldr	r1, [r4, #24]
 2578              	.L670:
 2579 0044 C5F50075 		rsb	r5, r5, #512
 2580 0048 B542     		cmp	r5, r6
 2581 004a 28BF     		it	cs
 2582 004c 3546     		movcs	r5, r6
 2583 004e FFF7FEFF 		bl	move_window
 2584 0052 0028     		cmp	r0, #0
 2585 0054 6FD1     		bne	.L700
 2586 0056 A268     		ldr	r2, [r4, #8]
 2587 0058 2368     		ldr	r3, [r4]
 2588 005a C2F30802 		ubfx	r2, r2, #0, #9
 2589 005e 02F13001 		add	r1, r2, #48
 2590 0062 1944     		add	r1, r1, r3
 2591 0064 3846     		mov	r0, r7
 2592 0066 2A46     		mov	r2, r5
 2593 0068 FFF7FEFF 		bl	memcpy
 2594              	.L684:
 2595 006c A168     		ldr	r1, [r4, #8]
 2596 006e D8F80030 		ldr	r3, [r8]
 2597 0072 2944     		add	r1, r1, r5
 2598 0074 2B44     		add	r3, r3, r5
 2599 0076 761B     		subs	r6, r6, r5
 2600 0078 A160     		str	r1, [r4, #8]
 2601 007a 2F44     		add	r7, r7, r5
 2602 007c C8F80030 		str	r3, [r8]
 2603 0080 64D0     		beq	.L686
 2604              	.L687:
 2605 0082 C1F30805 		ubfx	r5, r1, #0, #9
 2606 0086 2068     		ldr	r0, [r4]
 2607 0088 002D     		cmp	r5, #0
 2608 008a DAD1     		bne	.L702
 2609 008c 8378     		ldrb	r3, [r0, #2]	@ zero_extendqisi2
 2610 008e 013B     		subs	r3, r3, #1
 2611 0090 03EA5123 		and	r3, r3, r1, lsr #9
 2612 0094 13F0FF09 		ands	r9, r3, #255
 2613 0098 37D0     		beq	.L671
 2614 009a 6269     		ldr	r2, [r4, #20]
 2615              	.L672:
 2616 009c 8369     		ldr	r3, [r0, #24]
 2617 009e 023A     		subs	r2, r2, #2
 2618 00a0 023B     		subs	r3, r3, #2
 2619 00a2 9A42     		cmp	r2, r3
 2620 00a4 40D2     		bcs	.L678
 2621 00a6 8378     		ldrb	r3, [r0, #2]	@ zero_extendqisi2
 2622 00a8 816A     		ldr	r1, [r0, #40]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 47


 2623 00aa 03FB0212 		mla	r2, r3, r2, r1
 2624 00ae 002A     		cmp	r2, #0
 2625 00b0 3AD0     		beq	.L678
 2626 00b2 5FEA562A 		lsrs	r10, r6, #9
 2627 00b6 02EB0905 		add	r5, r2, r9
 2628 00ba 20D0     		beq	.L680
 2629 00bc BA07     		lsls	r2, r7, #30
 2630 00be 1ED1     		bne	.L680
 2631 00c0 09EB0A02 		add	r2, r9, r10
 2632 00c4 9A42     		cmp	r2, r3
 2633 00c6 88BF     		it	hi
 2634 00c8 C9EB030A 		rsbhi	r10, r9, r3
 2635 00cc 4078     		ldrb	r0, [r0, #1]	@ zero_extendqisi2
 2636 00ce 3946     		mov	r1, r7
 2637 00d0 2A46     		mov	r2, r5
 2638 00d2 5FFA8AF3 		uxtb	r3, r10
 2639 00d6 FFF7FEFF 		bl	disk_read
 2640 00da 60BB     		cbnz	r0, .L700
 2641 00dc 2168     		ldr	r1, [r4]
 2642 00de 0A79     		ldrb	r2, [r1, #4]	@ zero_extendqisi2
 2643 00e0 52B1     		cbz	r2, .L683
 2644 00e2 CA6A     		ldr	r2, [r1, #44]
 2645 00e4 501B     		subs	r0, r2, r5
 2646 00e6 8245     		cmp	r10, r0
 2647 00e8 06D9     		bls	.L683
 2648 00ea 07EB4020 		add	r0, r7, r0, lsl #9
 2649 00ee 3031     		adds	r1, r1, #48
 2650 00f0 4FF40072 		mov	r2, #512
 2651 00f4 FFF7FEFF 		bl	memcpy
 2652              	.L683:
 2653 00f8 4FEA4A25 		lsl	r5, r10, #9
 2654 00fc B6E7     		b	.L684
 2655              	.L680:
 2656 00fe A368     		ldr	r3, [r4, #8]
 2657 0100 A561     		str	r5, [r4, #24]
 2658 0102 2946     		mov	r1, r5
 2659 0104 C3F30805 		ubfx	r5, r3, #0, #9
 2660 0108 9CE7     		b	.L670
 2661              	.L671:
 2662 010a 39B9     		cbnz	r1, .L673
 2663 010c 2269     		ldr	r2, [r4, #16]
 2664              	.L674:
 2665 010e 012A     		cmp	r2, #1
 2666 0110 0AD9     		bls	.L678
 2667 0112 511C     		adds	r1, r2, #1
 2668 0114 0FD0     		beq	.L700
 2669 0116 2068     		ldr	r0, [r4]
 2670 0118 6261     		str	r2, [r4, #20]
 2671 011a BFE7     		b	.L672
 2672              	.L673:
 2673 011c 6169     		ldr	r1, [r4, #20]
 2674 011e 0129     		cmp	r1, #1
 2675 0120 02D9     		bls	.L678
 2676 0122 8369     		ldr	r3, [r0, #24]
 2677 0124 9942     		cmp	r1, r3
 2678 0126 0DD3     		bcc	.L703
 2679              	.L678:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 48


 2680 0128 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 2681 012a 63F07F03 		orn	r3, r3, #127
 2682 012e A371     		strb	r3, [r4, #6]
 2683 0130 0220     		movs	r0, #2
 2684 0132 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2685              	.L700:
 2686 0136 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 2687 0138 63F07F03 		orn	r3, r3, #127
 2688 013c A371     		strb	r3, [r4, #6]
 2689 013e 0120     		movs	r0, #1
 2690 0140 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2691              	.L703:
 2692 0144 FFF7FEFF 		bl	get_fat.part.3
 2693 0148 0246     		mov	r2, r0
 2694 014a E0E7     		b	.L674
 2695              	.L686:
 2696 014c 0020     		movs	r0, #0
 2697 014e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2698              		.size	f_read, .-f_read
 2699 0152 00BF     		.section	.text.f_write,"ax",%progbits
 2700              		.align	2
 2701              		.global	f_write
 2702              		.thumb
 2703              		.thumb_func
 2704              		.type	f_write, %function
 2705              	f_write:
 2706              		@ args = 0, pretend = 0, frame = 0
 2707              		@ frame_needed = 0, uses_anonymous_args = 0
 2708 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2709 0004 0446     		mov	r4, r0
 2710 0006 9846     		mov	r8, r3
 2711 0008 0023     		movs	r3, #0
 2712 000a 0F46     		mov	r7, r1
 2713 000c C8F80030 		str	r3, [r8]
 2714 0010 0068     		ldr	r0, [r0]
 2715 0012 A188     		ldrh	r1, [r4, #4]
 2716 0014 1646     		mov	r6, r2
 2717 0016 FFF7FEFF 		bl	validate
 2718 001a 28B9     		cbnz	r0, .L705
 2719 001c A279     		ldrb	r2, [r4, #6]	@ zero_extendqisi2
 2720 001e 1506     		lsls	r5, r2, #24
 2721 0020 04D4     		bmi	.L733
 2722 0022 9007     		lsls	r0, r2, #30
 2723 0024 05D4     		bmi	.L739
 2724 0026 0720     		movs	r0, #7
 2725              	.L705:
 2726 0028 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2727              	.L733:
 2728 002c 0220     		movs	r0, #2
 2729 002e BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2730              	.L739:
 2731 0032 E168     		ldr	r1, [r4, #12]
 2732 0034 A368     		ldr	r3, [r4, #8]
 2733 0036 CE42     		cmn	r6, r1
 2734 0038 08D3     		bcc	.L706
 2735              	.L707:
 2736 003a 42F02002 		orr	r2, r2, #32
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 49


 2737 003e 9942     		cmp	r1, r3
 2738 0040 A271     		strb	r2, [r4, #6]
 2739 0042 38BF     		it	cc
 2740 0044 E360     		strcc	r3, [r4, #12]
 2741 0046 0020     		movs	r0, #0
 2742 0048 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2743              	.L706:
 2744 004c 4FF00109 		mov	r9, #1
 2745 0050 2EBB     		cbnz	r6, .L730
 2746 0052 F2E7     		b	.L707
 2747              	.L741:
 2748 0054 A169     		ldr	r1, [r4, #24]
 2749 0056 2068     		ldr	r0, [r4]
 2750              	.L710:
 2751 0058 C5F50075 		rsb	r5, r5, #512
 2752 005c B542     		cmp	r5, r6
 2753 005e 28BF     		it	cs
 2754 0060 3546     		movcs	r5, r6
 2755 0062 FFF7FEFF 		bl	move_window
 2756 0066 0028     		cmp	r0, #0
 2757 0068 7AD1     		bne	.L738
 2758 006a A268     		ldr	r2, [r4, #8]
 2759 006c 2368     		ldr	r3, [r4]
 2760 006e C2F30802 		ubfx	r2, r2, #0, #9
 2761 0072 02F13000 		add	r0, r2, #48
 2762 0076 1844     		add	r0, r0, r3
 2763 0078 3946     		mov	r1, r7
 2764 007a 2A46     		mov	r2, r5
 2765 007c FFF7FEFF 		bl	memcpy
 2766 0080 2368     		ldr	r3, [r4]
 2767 0082 83F80490 		strb	r9, [r3, #4]
 2768              	.L725:
 2769 0086 A368     		ldr	r3, [r4, #8]
 2770 0088 D8F80020 		ldr	r2, [r8]
 2771 008c 2B44     		add	r3, r3, r5
 2772 008e 2A44     		add	r2, r2, r5
 2773 0090 761B     		subs	r6, r6, r5
 2774 0092 A360     		str	r3, [r4, #8]
 2775 0094 2F44     		add	r7, r7, r5
 2776 0096 C8F80020 		str	r2, [r8]
 2777 009a 00F08280 		beq	.L740
 2778              	.L730:
 2779 009e C3F30805 		ubfx	r5, r3, #0, #9
 2780 00a2 002D     		cmp	r5, #0
 2781 00a4 D6D1     		bne	.L741
 2782 00a6 2068     		ldr	r0, [r4]
 2783 00a8 8178     		ldrb	r1, [r0, #2]	@ zero_extendqisi2
 2784 00aa 0139     		subs	r1, r1, #1
 2785 00ac 01EA5321 		and	r1, r1, r3, lsr #9
 2786 00b0 11F0FF0B 		ands	fp, r1, #255
 2787 00b4 0AD1     		bne	.L711
 2788 00b6 002B     		cmp	r3, #0
 2789 00b8 48D1     		bne	.L712
 2790 00ba 2369     		ldr	r3, [r4, #16]
 2791 00bc 002B     		cmp	r3, #0
 2792 00be 5DD0     		beq	.L742
 2793              	.L713:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 50


 2794 00c0 012B     		cmp	r3, #1
 2795 00c2 71D0     		beq	.L719
 2796 00c4 591C     		adds	r1, r3, #1
 2797 00c6 4BD0     		beq	.L738
 2798 00c8 2068     		ldr	r0, [r4]
 2799 00ca 6361     		str	r3, [r4, #20]
 2800              	.L711:
 2801 00cc C26A     		ldr	r2, [r0, #44]
 2802 00ce A369     		ldr	r3, [r4, #24]
 2803 00d0 9A42     		cmp	r2, r3
 2804 00d2 4CD0     		beq	.L743
 2805              	.L717:
 2806 00d4 6169     		ldr	r1, [r4, #20]
 2807 00d6 8369     		ldr	r3, [r0, #24]
 2808 00d8 A1F1020A 		sub	r10, r1, #2
 2809 00dc 023B     		subs	r3, r3, #2
 2810 00de 9A45     		cmp	r10, r3
 2811 00e0 62D2     		bcs	.L719
 2812 00e2 8378     		ldrb	r3, [r0, #2]	@ zero_extendqisi2
 2813 00e4 816A     		ldr	r1, [r0, #40]
 2814 00e6 0AFB0311 		mla	r1, r10, r3, r1
 2815 00ea 0029     		cmp	r1, #0
 2816 00ec 5CD0     		beq	.L719
 2817 00ee 750A     		lsrs	r5, r6, #9
 2818 00f0 0BEB010A 		add	r10, fp, r1
 2819 00f4 17D0     		beq	.L721
 2820 00f6 BA07     		lsls	r2, r7, #30
 2821 00f8 15D1     		bne	.L721
 2822 00fa 0BEB0502 		add	r2, fp, r5
 2823 00fe 9A42     		cmp	r2, r3
 2824 0100 88BF     		it	hi
 2825 0102 CBEB0305 		rsbhi	r5, fp, r3
 2826 0106 4078     		ldrb	r0, [r0, #1]	@ zero_extendqisi2
 2827 0108 3946     		mov	r1, r7
 2828 010a 5246     		mov	r2, r10
 2829 010c EBB2     		uxtb	r3, r5
 2830 010e FFF7FEFF 		bl	disk_write
 2831 0112 8346     		mov	fp, r0
 2832 0114 20BB     		cbnz	r0, .L738
 2833 0116 2068     		ldr	r0, [r4]
 2834 0118 C16A     		ldr	r1, [r0, #44]
 2835 011a CAEB0101 		rsb	r1, r10, r1
 2836 011e 8D42     		cmp	r5, r1
 2837 0120 34D8     		bhi	.L744
 2838              	.L724:
 2839 0122 6D02     		lsls	r5, r5, #9
 2840 0124 AFE7     		b	.L725
 2841              	.L721:
 2842 0126 A568     		ldr	r5, [r4, #8]
 2843 0128 E368     		ldr	r3, [r4, #12]
 2844 012a 9D42     		cmp	r5, r3
 2845 012c 05D2     		bcs	.L745
 2846              	.L726:
 2847 012e C4F818A0 		str	r10, [r4, #24]
 2848 0132 C5F30805 		ubfx	r5, r5, #0, #9
 2849 0136 5146     		mov	r1, r10
 2850 0138 8EE7     		b	.L710
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 51


 2851              	.L745:
 2852 013a 0021     		movs	r1, #0
 2853 013c FFF7FEFF 		bl	move_window
 2854 0140 70B9     		cbnz	r0, .L738
 2855 0142 2068     		ldr	r0, [r4]
 2856 0144 A568     		ldr	r5, [r4, #8]
 2857 0146 C0F82CA0 		str	r10, [r0, #44]
 2858 014a F0E7     		b	.L726
 2859              	.L712:
 2860 014c 6169     		ldr	r1, [r4, #20]
 2861 014e FFF7FEFF 		bl	create_chain
 2862 0152 0346     		mov	r3, r0
 2863 0154 002B     		cmp	r3, #0
 2864 0156 B3D1     		bne	.L713
 2865              	.L746:
 2866 0158 A368     		ldr	r3, [r4, #8]
 2867 015a E168     		ldr	r1, [r4, #12]
 2868 015c A279     		ldrb	r2, [r4, #6]	@ zero_extendqisi2
 2869 015e 6CE7     		b	.L707
 2870              	.L738:
 2871 0160 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 2872 0162 63F07F03 		orn	r3, r3, #127
 2873 0166 A371     		strb	r3, [r4, #6]
 2874 0168 0120     		movs	r0, #1
 2875 016a BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2876              	.L743:
 2877 016e 0021     		movs	r1, #0
 2878 0170 FFF7FEFF 		bl	move_window
 2879 0174 0028     		cmp	r0, #0
 2880 0176 F3D1     		bne	.L738
 2881 0178 2068     		ldr	r0, [r4]
 2882 017a ABE7     		b	.L717
 2883              	.L742:
 2884 017c 5946     		mov	r1, fp
 2885 017e FFF7FEFF 		bl	create_chain
 2886 0182 0346     		mov	r3, r0
 2887 0184 2061     		str	r0, [r4, #16]
 2888 0186 002B     		cmp	r3, #0
 2889 0188 9AD1     		bne	.L713
 2890 018a E5E7     		b	.L746
 2891              	.L744:
 2892 018c 3030     		adds	r0, r0, #48
 2893 018e 07EB4121 		add	r1, r7, r1, lsl #9
 2894 0192 4FF40072 		mov	r2, #512
 2895 0196 FFF7FEFF 		bl	memcpy
 2896 019a 2368     		ldr	r3, [r4]
 2897 019c 83F804B0 		strb	fp, [r3, #4]
 2898 01a0 BFE7     		b	.L724
 2899              	.L740:
 2900 01a2 E168     		ldr	r1, [r4, #12]
 2901 01a4 A279     		ldrb	r2, [r4, #6]	@ zero_extendqisi2
 2902 01a6 48E7     		b	.L707
 2903              	.L719:
 2904 01a8 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 2905 01aa 63F07F03 		orn	r3, r3, #127
 2906 01ae A371     		strb	r3, [r4, #6]
 2907 01b0 0220     		movs	r0, #2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 52


 2908 01b2 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2909              		.size	f_write, .-f_write
 2910 01b6 00BF     		.section	.text.f_sync,"ax",%progbits
 2911              		.align	2
 2912              		.global	f_sync
 2913              		.thumb
 2914              		.thumb_func
 2915              		.type	f_sync, %function
 2916              	f_sync:
 2917              		@ args = 0, pretend = 0, frame = 0
 2918              		@ frame_needed = 0, uses_anonymous_args = 0
 2919 0000 38B5     		push	{r3, r4, r5, lr}
 2920 0002 0446     		mov	r4, r0
 2921 0004 0068     		ldr	r0, [r0]
 2922 0006 A188     		ldrh	r1, [r4, #4]
 2923 0008 FFF7FEFF 		bl	validate
 2924 000c 10B9     		cbnz	r0, .L748
 2925 000e A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 2926 0010 9B06     		lsls	r3, r3, #26
 2927 0012 00D4     		bmi	.L752
 2928              	.L748:
 2929 0014 38BD     		pop	{r3, r4, r5, pc}
 2930              	.L752:
 2931 0016 2068     		ldr	r0, [r4]
 2932 0018 E169     		ldr	r1, [r4, #28]
 2933 001a FFF7FEFF 		bl	move_window
 2934 001e 0028     		cmp	r0, #0
 2935 0020 F8D1     		bne	.L748
 2936 0022 256A     		ldr	r5, [r4, #32]
 2937 0024 EB7A     		ldrb	r3, [r5, #11]	@ zero_extendqisi2
 2938 0026 43F02003 		orr	r3, r3, #32
 2939 002a EB72     		strb	r3, [r5, #11]
 2940 002c E368     		ldr	r3, [r4, #12]
 2941 002e 2B77     		strb	r3, [r5, #28]
 2942 0030 A389     		ldrh	r3, [r4, #12]
 2943 0032 1B0A     		lsrs	r3, r3, #8
 2944 0034 6B77     		strb	r3, [r5, #29]
 2945 0036 E389     		ldrh	r3, [r4, #14]
 2946 0038 AB77     		strb	r3, [r5, #30]
 2947 003a E37B     		ldrb	r3, [r4, #15]	@ zero_extendqisi2
 2948 003c EB77     		strb	r3, [r5, #31]
 2949 003e 2369     		ldr	r3, [r4, #16]
 2950 0040 AB76     		strb	r3, [r5, #26]
 2951 0042 238A     		ldrh	r3, [r4, #16]
 2952 0044 1B0A     		lsrs	r3, r3, #8
 2953 0046 EB76     		strb	r3, [r5, #27]
 2954 0048 638A     		ldrh	r3, [r4, #18]
 2955 004a 2B75     		strb	r3, [r5, #20]
 2956 004c 638A     		ldrh	r3, [r4, #18]
 2957 004e 1B0A     		lsrs	r3, r3, #8
 2958 0050 6B75     		strb	r3, [r5, #21]
 2959 0052 FFF7FEFF 		bl	get_fattime
 2960 0056 C0F30721 		ubfx	r1, r0, #8, #8
 2961 005a 020C     		lsrs	r2, r0, #16
 2962 005c 030E     		lsrs	r3, r0, #24
 2963 005e 2A76     		strb	r2, [r5, #24]
 2964 0060 A875     		strb	r0, [r5, #22]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 53


 2965 0062 E975     		strb	r1, [r5, #23]
 2966 0064 6B76     		strb	r3, [r5, #25]
 2967 0066 A179     		ldrb	r1, [r4, #6]	@ zero_extendqisi2
 2968 0068 2368     		ldr	r3, [r4]
 2969 006a 21F02001 		bic	r1, r1, #32
 2970 006e 0122     		movs	r2, #1
 2971 0070 A171     		strb	r1, [r4, #6]
 2972 0072 1A71     		strb	r2, [r3, #4]
 2973 0074 2068     		ldr	r0, [r4]
 2974 0076 BDE83840 		pop	{r3, r4, r5, lr}
 2975 007a FFF7FEBF 		b	sync
 2976              		.size	f_sync, .-f_sync
 2977              		.section	.text.f_close,"ax",%progbits
 2978              		.align	2
 2979              		.global	f_close
 2980              		.thumb
 2981              		.thumb_func
 2982              		.type	f_close, %function
 2983              	f_close:
 2984              		@ args = 0, pretend = 0, frame = 0
 2985              		@ frame_needed = 0, uses_anonymous_args = 0
 2986 0000 10B5     		push	{r4, lr}
 2987 0002 0446     		mov	r4, r0
 2988 0004 FFF7FEFF 		bl	f_sync
 2989 0008 00B9     		cbnz	r0, .L754
 2990 000a 2060     		str	r0, [r4]
 2991              	.L754:
 2992 000c 10BD     		pop	{r4, pc}
 2993              		.size	f_close, .-f_close
 2994 000e 00BF     		.section	.text.f_lseek,"ax",%progbits
 2995              		.align	2
 2996              		.global	f_lseek
 2997              		.thumb
 2998              		.thumb_func
 2999              		.type	f_lseek, %function
 3000              	f_lseek:
 3001              		@ args = 0, pretend = 0, frame = 0
 3002              		@ frame_needed = 0, uses_anonymous_args = 0
 3003 0000 70B5     		push	{r4, r5, r6, lr}
 3004 0002 0446     		mov	r4, r0
 3005 0004 0D46     		mov	r5, r1
 3006 0006 0068     		ldr	r0, [r0]
 3007 0008 A188     		ldrh	r1, [r4, #4]
 3008 000a FFF7FEFF 		bl	validate
 3009 000e 0028     		cmp	r0, #0
 3010 0010 33D1     		bne	.L756
 3011 0012 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3012 0014 1906     		lsls	r1, r3, #24
 3013 0016 31D4     		bmi	.L781
 3014 0018 E268     		ldr	r2, [r4, #12]
 3015 001a AA42     		cmp	r2, r5
 3016 001c 03D2     		bcs	.L757
 3017 001e 13F0020F 		tst	r3, #2
 3018 0022 08BF     		it	eq
 3019 0024 1546     		moveq	r5, r2
 3020              	.L757:
 3021 0026 0023     		movs	r3, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 54


 3022 0028 A268     		ldr	r2, [r4, #8]
 3023 002a A360     		str	r3, [r4, #8]
 3024 002c 45B3     		cbz	r5, .L783
 3025 002e 2068     		ldr	r0, [r4]
 3026 0030 8678     		ldrb	r6, [r0, #2]	@ zero_extendqisi2
 3027 0032 7602     		lsls	r6, r6, #9
 3028 0034 3AB1     		cbz	r2, .L758
 3029 0036 013A     		subs	r2, r2, #1
 3030 0038 691E     		subs	r1, r5, #1
 3031 003a B2FBF6F3 		udiv	r3, r2, r6
 3032 003e B1FBF6F1 		udiv	r1, r1, r6
 3033 0042 9942     		cmp	r1, r3
 3034 0044 5BD2     		bcs	.L792
 3035              	.L758:
 3036 0046 2169     		ldr	r1, [r4, #16]
 3037 0048 0029     		cmp	r1, #0
 3038 004a 5ED0     		beq	.L793
 3039              	.L760:
 3040 004c 6161     		str	r1, [r4, #20]
 3041              	.L759:
 3042 004e C9B9     		cbnz	r1, .L763
 3043 0050 A268     		ldr	r2, [r4, #8]
 3044 0052 0B46     		mov	r3, r1
 3045              	.L764:
 3046 0054 C2F30801 		ubfx	r1, r2, #0, #9
 3047 0058 0029     		cmp	r1, #0
 3048 005a 70D0     		beq	.L794
 3049 005c A169     		ldr	r1, [r4, #24]
 3050 005e 9942     		cmp	r1, r3
 3051 0060 E168     		ldr	r1, [r4, #12]
 3052 0062 18BF     		it	ne
 3053 0064 A361     		strne	r3, [r4, #24]
 3054              	.L778:
 3055 0066 8A42     		cmp	r2, r1
 3056 0068 06D9     		bls	.L785
 3057 006a A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3058 006c E260     		str	r2, [r4, #12]
 3059 006e 43F02003 		orr	r3, r3, #32
 3060 0072 A371     		strb	r3, [r4, #6]
 3061 0074 0020     		movs	r0, #0
 3062 0076 70BD     		pop	{r4, r5, r6, pc}
 3063              	.L785:
 3064 0078 0020     		movs	r0, #0
 3065              	.L756:
 3066 007a 70BD     		pop	{r4, r5, r6, pc}
 3067              	.L781:
 3068 007c 0220     		movs	r0, #2
 3069 007e 70BD     		pop	{r4, r5, r6, pc}
 3070              	.L783:
 3071 0080 2846     		mov	r0, r5
 3072 0082 70BD     		pop	{r4, r5, r6, pc}
 3073              	.L763:
 3074 0084 B542     		cmp	r5, r6
 3075 0086 58D9     		bls	.L790
 3076 0088 2068     		ldr	r0, [r4]
 3077              	.L774:
 3078 008a A279     		ldrb	r2, [r4, #6]	@ zero_extendqisi2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 55


 3079 008c 9307     		lsls	r3, r2, #30
 3080 008e C6EB0505 		rsb	r5, r6, r5
 3081 0092 09D4     		bmi	.L795
 3082 0094 0129     		cmp	r1, #1
 3083 0096 02D9     		bls	.L769
 3084 0098 8369     		ldr	r3, [r0, #24]
 3085 009a 8B42     		cmp	r3, r1
 3086 009c 2BD8     		bhi	.L796
 3087              	.L769:
 3088 009e 62F07F02 		orn	r2, r2, #127
 3089 00a2 A271     		strb	r2, [r4, #6]
 3090 00a4 0220     		movs	r0, #2
 3091 00a6 70BD     		pop	{r4, r5, r6, pc}
 3092              	.L795:
 3093 00a8 FFF7FEFF 		bl	create_chain
 3094 00ac 0146     		mov	r1, r0
 3095 00ae 0028     		cmp	r0, #0
 3096 00b0 42D0     		beq	.L797
 3097              	.L768:
 3098 00b2 4B1C     		adds	r3, r1, #1
 3099 00b4 38D0     		beq	.L791
 3100 00b6 0129     		cmp	r1, #1
 3101 00b8 3CD9     		bls	.L772
 3102 00ba 2068     		ldr	r0, [r4]
 3103 00bc 8269     		ldr	r2, [r0, #24]
 3104 00be 9142     		cmp	r1, r2
 3105 00c0 38D2     		bcs	.L772
 3106 00c2 A268     		ldr	r2, [r4, #8]
 3107 00c4 6161     		str	r1, [r4, #20]
 3108 00c6 3244     		add	r2, r2, r6
 3109 00c8 AE42     		cmp	r6, r5
 3110 00ca A260     		str	r2, [r4, #8]
 3111 00cc DDD3     		bcc	.L774
 3112              	.L766:
 3113 00ce 2A44     		add	r2, r2, r5
 3114 00d0 C5F30803 		ubfx	r3, r5, #0, #9
 3115 00d4 A260     		str	r2, [r4, #8]
 3116 00d6 002B     		cmp	r3, #0
 3117 00d8 BCD0     		beq	.L764
 3118 00da 2668     		ldr	r6, [r4]
 3119 00dc B069     		ldr	r0, [r6, #24]
 3120 00de 8B1E     		subs	r3, r1, #2
 3121 00e0 0238     		subs	r0, r0, #2
 3122 00e2 8342     		cmp	r3, r0
 3123 00e4 1AD2     		bcs	.L775
 3124 00e6 B078     		ldrb	r0, [r6, #2]	@ zero_extendqisi2
 3125 00e8 B16A     		ldr	r1, [r6, #40]
 3126 00ea 00FB0313 		mla	r3, r0, r3, r1
 3127 00ee ABB1     		cbz	r3, .L775
 3128 00f0 03EB5523 		add	r3, r3, r5, lsr #9
 3129 00f4 AEE7     		b	.L764
 3130              	.L796:
 3131 00f6 FFF7FEFF 		bl	get_fat.part.3
 3132 00fa 0146     		mov	r1, r0
 3133 00fc D9E7     		b	.L768
 3134              	.L792:
 3135 00fe 7342     		negs	r3, r6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 56


 3136 0100 1A40     		ands	r2, r2, r3
 3137 0102 A260     		str	r2, [r4, #8]
 3138 0104 AD1A     		subs	r5, r5, r2
 3139 0106 6169     		ldr	r1, [r4, #20]
 3140 0108 A1E7     		b	.L759
 3141              	.L793:
 3142 010a FFF7FEFF 		bl	create_chain
 3143 010e 0128     		cmp	r0, #1
 3144 0110 0146     		mov	r1, r0
 3145 0112 03D0     		beq	.L775
 3146 0114 421C     		adds	r2, r0, #1
 3147 0116 07D0     		beq	.L791
 3148 0118 2061     		str	r0, [r4, #16]
 3149 011a 97E7     		b	.L760
 3150              	.L775:
 3151 011c A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3152 011e 63F07F03 		orn	r3, r3, #127
 3153 0122 A371     		strb	r3, [r4, #6]
 3154 0124 0220     		movs	r0, #2
 3155 0126 70BD     		pop	{r4, r5, r6, pc}
 3156              	.L791:
 3157 0128 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3158 012a 63F07F03 		orn	r3, r3, #127
 3159 012e A371     		strb	r3, [r4, #6]
 3160 0130 0120     		movs	r0, #1
 3161 0132 70BD     		pop	{r4, r5, r6, pc}
 3162              	.L772:
 3163 0134 A279     		ldrb	r2, [r4, #6]	@ zero_extendqisi2
 3164 0136 B2E7     		b	.L769
 3165              	.L797:
 3166 0138 3546     		mov	r5, r6
 3167              	.L790:
 3168 013a A268     		ldr	r2, [r4, #8]
 3169 013c C7E7     		b	.L766
 3170              	.L794:
 3171 013e E168     		ldr	r1, [r4, #12]
 3172 0140 91E7     		b	.L778
 3173              		.size	f_lseek, .-f_lseek
 3174 0142 00BF     		.section	.text.f_opendir,"ax",%progbits
 3175              		.align	2
 3176              		.global	f_opendir
 3177              		.thumb
 3178              		.thumb_func
 3179              		.type	f_opendir, %function
 3180              	f_opendir:
 3181              		@ args = 0, pretend = 0, frame = 536
 3182              		@ frame_needed = 0, uses_anonymous_args = 0
 3183 0000 30B5     		push	{r4, r5, lr}
 3184 0002 ADF5077D 		sub	sp, sp, #540
 3185 0006 0446     		mov	r4, r0
 3186 0008 0191     		str	r1, [sp, #4]
 3187 000a 01A8     		add	r0, sp, #4
 3188 000c 2146     		mov	r1, r4
 3189 000e 0022     		movs	r2, #0
 3190 0010 FFF7FEFF 		bl	chk_mounted
 3191 0014 10B1     		cbz	r0, .L809
 3192              	.L806:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 57


 3193 0016 0DF5077D 		add	sp, sp, #540
 3194              		@ sp needed
 3195 001a 30BD     		pop	{r4, r5, pc}
 3196              	.L809:
 3197 001c 03AA     		add	r2, sp, #12
 3198 001e 06AB     		add	r3, sp, #24
 3199 0020 0199     		ldr	r1, [sp, #4]
 3200 0022 A261     		str	r2, [r4, #24]
 3201 0024 E361     		str	r3, [r4, #28]
 3202 0026 2046     		mov	r0, r4
 3203 0028 FFF7FEFF 		bl	follow_path
 3204 002c B0B9     		cbnz	r0, .L800
 3205 002e 6369     		ldr	r3, [r4, #20]
 3206 0030 6BB1     		cbz	r3, .L801
 3207 0032 DA7A     		ldrb	r2, [r3, #11]	@ zero_extendqisi2
 3208 0034 D206     		lsls	r2, r2, #27
 3209 0036 17D5     		bpl	.L803
 3210 0038 5D7D     		ldrb	r5, [r3, #21]	@ zero_extendqisi2
 3211 003a 1A7D     		ldrb	r2, [r3, #20]	@ zero_extendqisi2
 3212 003c D87E     		ldrb	r0, [r3, #27]	@ zero_extendqisi2
 3213 003e 997E     		ldrb	r1, [r3, #26]	@ zero_extendqisi2
 3214 0040 42EA0522 		orr	r2, r2, r5, lsl #8
 3215 0044 41EA0023 		orr	r3, r1, r0, lsl #8
 3216 0048 43EA0243 		orr	r3, r3, r2, lsl #16
 3217 004c A360     		str	r3, [r4, #8]
 3218              	.L801:
 3219 004e 2368     		ldr	r3, [r4]
 3220 0050 DB88     		ldrh	r3, [r3, #6]
 3221 0052 A380     		strh	r3, [r4, #4]	@ movhi
 3222 0054 2046     		mov	r0, r4
 3223 0056 0021     		movs	r1, #0
 3224 0058 FFF7FEFF 		bl	dir_sdi
 3225              	.L800:
 3226 005c 0428     		cmp	r0, #4
 3227 005e 08BF     		it	eq
 3228 0060 0520     		moveq	r0, #5
 3229 0062 0DF5077D 		add	sp, sp, #540
 3230              		@ sp needed
 3231 0066 30BD     		pop	{r4, r5, pc}
 3232              	.L803:
 3233 0068 0520     		movs	r0, #5
 3234 006a D4E7     		b	.L806
 3235              		.size	f_opendir, .-f_opendir
 3236              		.section	.text.f_readdir,"ax",%progbits
 3237              		.align	2
 3238              		.global	f_readdir
 3239              		.thumb
 3240              		.thumb_func
 3241              		.type	f_readdir, %function
 3242              	f_readdir:
 3243              		@ args = 0, pretend = 0, frame = 528
 3244              		@ frame_needed = 0, uses_anonymous_args = 0
 3245 0000 70B5     		push	{r4, r5, r6, lr}
 3246 0002 0446     		mov	r4, r0
 3247 0004 ADF5047D 		sub	sp, sp, #528
 3248 0008 0E46     		mov	r6, r1
 3249 000a 0068     		ldr	r0, [r0]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 58


 3250 000c A188     		ldrh	r1, [r4, #4]
 3251 000e FFF7FEFF 		bl	validate
 3252 0012 0546     		mov	r5, r0
 3253 0014 58B9     		cbnz	r0, .L811
 3254 0016 E6B1     		cbz	r6, .L817
 3255 0018 01AA     		add	r2, sp, #4
 3256 001a 04AB     		add	r3, sp, #16
 3257 001c A261     		str	r2, [r4, #24]
 3258 001e E361     		str	r3, [r4, #28]
 3259 0020 2046     		mov	r0, r4
 3260 0022 FFF7FEFF 		bl	dir_read
 3261 0026 0428     		cmp	r0, #4
 3262 0028 05D0     		beq	.L818
 3263 002a 28B1     		cbz	r0, .L814
 3264              	.L816:
 3265 002c 0546     		mov	r5, r0
 3266              	.L811:
 3267 002e 2846     		mov	r0, r5
 3268 0030 0DF5047D 		add	sp, sp, #528
 3269              		@ sp needed
 3270 0034 70BD     		pop	{r4, r5, r6, pc}
 3271              	.L818:
 3272 0036 2561     		str	r5, [r4, #16]
 3273              	.L814:
 3274 0038 3146     		mov	r1, r6
 3275 003a 2046     		mov	r0, r4
 3276 003c FFF7FEFF 		bl	get_fileinfo
 3277 0040 2046     		mov	r0, r4
 3278 0042 0021     		movs	r1, #0
 3279 0044 FFF7FEFF 		bl	dir_next
 3280 0048 0428     		cmp	r0, #4
 3281 004a EFD1     		bne	.L816
 3282 004c 0023     		movs	r3, #0
 3283 004e 2361     		str	r3, [r4, #16]
 3284 0050 EDE7     		b	.L811
 3285              	.L817:
 3286 0052 2946     		mov	r1, r5
 3287 0054 2046     		mov	r0, r4
 3288 0056 FFF7FEFF 		bl	dir_sdi
 3289 005a 0546     		mov	r5, r0
 3290 005c E7E7     		b	.L811
 3291              		.size	f_readdir, .-f_readdir
 3292 005e 00BF     		.section	.text.f_stat,"ax",%progbits
 3293              		.align	2
 3294              		.global	f_stat
 3295              		.thumb
 3296              		.thumb_func
 3297              		.type	f_stat, %function
 3298              	f_stat:
 3299              		@ args = 0, pretend = 0, frame = 568
 3300              		@ frame_needed = 0, uses_anonymous_args = 0
 3301 0000 30B5     		push	{r4, r5, lr}
 3302 0002 ADF50F7D 		sub	sp, sp, #572
 3303 0006 0D46     		mov	r5, r1
 3304 0008 0190     		str	r0, [sp, #4]
 3305 000a 05A9     		add	r1, sp, #20
 3306 000c 01A8     		add	r0, sp, #4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 59


 3307 000e 0022     		movs	r2, #0
 3308 0010 FFF7FEFF 		bl	chk_mounted
 3309 0014 0446     		mov	r4, r0
 3310 0016 18B1     		cbz	r0, .L822
 3311              	.L820:
 3312 0018 2046     		mov	r0, r4
 3313 001a 0DF50F7D 		add	sp, sp, #572
 3314              		@ sp needed
 3315 001e 30BD     		pop	{r4, r5, pc}
 3316              	.L822:
 3317 0020 02AA     		add	r2, sp, #8
 3318 0022 0EAB     		add	r3, sp, #56
 3319 0024 0199     		ldr	r1, [sp, #4]
 3320 0026 0B92     		str	r2, [sp, #44]
 3321 0028 05A8     		add	r0, sp, #20
 3322 002a 0C93     		str	r3, [sp, #48]
 3323 002c FFF7FEFF 		bl	follow_path
 3324 0030 0446     		mov	r4, r0
 3325 0032 0028     		cmp	r0, #0
 3326 0034 F0D1     		bne	.L820
 3327 0036 0A9B     		ldr	r3, [sp, #40]
 3328 0038 3BB1     		cbz	r3, .L821
 3329 003a 05A8     		add	r0, sp, #20
 3330 003c 2946     		mov	r1, r5
 3331 003e FFF7FEFF 		bl	get_fileinfo
 3332 0042 2046     		mov	r0, r4
 3333 0044 0DF50F7D 		add	sp, sp, #572
 3334              		@ sp needed
 3335 0048 30BD     		pop	{r4, r5, pc}
 3336              	.L821:
 3337 004a 0624     		movs	r4, #6
 3338 004c 2046     		mov	r0, r4
 3339 004e 0DF50F7D 		add	sp, sp, #572
 3340              		@ sp needed
 3341 0052 30BD     		pop	{r4, r5, pc}
 3342              		.size	f_stat, .-f_stat
 3343              		.section	.text.f_getfree,"ax",%progbits
 3344              		.align	2
 3345              		.global	f_getfree
 3346              		.thumb
 3347              		.thumb_func
 3348              		.type	f_getfree, %function
 3349              	f_getfree:
 3350              		@ args = 0, pretend = 0, frame = 8
 3351              		@ frame_needed = 0, uses_anonymous_args = 0
 3352 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3353 0004 83B0     		sub	sp, sp, #12
 3354 0006 02AB     		add	r3, sp, #8
 3355 0008 0091     		str	r1, [sp]
 3356 000a 43F8040D 		str	r0, [r3, #-4]!
 3357 000e 1146     		mov	r1, r2
 3358 0010 9146     		mov	r9, r2
 3359 0012 1846     		mov	r0, r3
 3360 0014 0022     		movs	r2, #0
 3361 0016 FFF7FEFF 		bl	chk_mounted
 3362 001a 8346     		mov	fp, r0
 3363 001c 0028     		cmp	r0, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 60


 3364 001e 34D1     		bne	.L847
 3365 0020 D9F80060 		ldr	r6, [r9]
 3366 0024 B569     		ldr	r5, [r6, #24]
 3367 0026 3369     		ldr	r3, [r6, #16]
 3368 0028 AA1E     		subs	r2, r5, #2
 3369 002a 9342     		cmp	r3, r2
 3370 002c 31D9     		bls	.L851
 3371 002e 96F800A0 		ldrb	r10, [r6]	@ zero_extendqisi2
 3372 0032 BAF1010F 		cmp	r10, #1
 3373 0036 4AD0     		beq	.L852
 3374 0038 326A     		ldr	r2, [r6, #32]
 3375 003a 0346     		mov	r3, r0
 3376 003c 0446     		mov	r4, r0
 3377 003e 0746     		mov	r7, r0
 3378 0040 9046     		mov	r8, r2
 3379 0042 3046     		mov	r0, r6
 3380              	.L844:
 3381 0044 5CB3     		cbz	r4, .L853
 3382 0046 BAF1020F 		cmp	r10, #2
 3383 004a 37D0     		beq	.L854
 3384              	.L840:
 3385 004c 93F802C0 		ldrb	ip, [r3, #2]	@ zero_extendqisi2
 3386 0050 DE78     		ldrb	r6, [r3, #3]	@ zero_extendqisi2
 3387 0052 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
 3388 0054 5A78     		ldrb	r2, [r3, #1]	@ zero_extendqisi2
 3389 0056 4FEA0C4C 		lsl	ip, ip, #16
 3390 005a 4CEA066C 		orr	ip, ip, r6, lsl #24
 3391 005e 4CEA010C 		orr	ip, ip, r1
 3392 0062 4CEA0222 		orr	r2, ip, r2, lsl #8
 3393 0066 22F07042 		bic	r2, r2, #-268435456
 3394 006a 02B9     		cbnz	r2, .L843
 3395 006c 0137     		adds	r7, r7, #1
 3396              	.L843:
 3397 006e 0433     		adds	r3, r3, #4
 3398 0070 043C     		subs	r4, r4, #4
 3399              	.L842:
 3400 0072 013D     		subs	r5, r5, #1
 3401 0074 E6D1     		bne	.L844
 3402 0076 0646     		mov	r6, r0
 3403              	.L839:
 3404 0078 BAF1030F 		cmp	r10, #3
 3405 007c 08BF     		it	eq
 3406 007e 0123     		moveq	r3, #1
 3407 0080 3761     		str	r7, [r6, #16]
 3408 0082 08BF     		it	eq
 3409 0084 7371     		strbeq	r3, [r6, #5]
 3410              	.L845:
 3411 0086 009B     		ldr	r3, [sp]
 3412 0088 1F60     		str	r7, [r3]
 3413              	.L847:
 3414 008a 5846     		mov	r0, fp
 3415 008c 03B0     		add	sp, sp, #12
 3416              		@ sp needed
 3417 008e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3418              	.L851:
 3419 0092 009A     		ldr	r2, [sp]
 3420 0094 5846     		mov	r0, fp
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 61


 3421 0096 1360     		str	r3, [r2]
 3422 0098 03B0     		add	sp, sp, #12
 3423              		@ sp needed
 3424 009a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3425              	.L853:
 3426 009e 4146     		mov	r1, r8
 3427 00a0 08F10108 		add	r8, r8, #1
 3428 00a4 FFF7FEFF 		bl	move_window
 3429 00a8 C0B9     		cbnz	r0, .L855
 3430 00aa D9F80000 		ldr	r0, [r9]
 3431 00ae BAF1020F 		cmp	r10, #2
 3432 00b2 00F13003 		add	r3, r0, #48
 3433 00b6 4FF40074 		mov	r4, #512
 3434 00ba C7D1     		bne	.L840
 3435              	.L854:
 3436 00bc 5978     		ldrb	r1, [r3, #1]	@ zero_extendqisi2
 3437 00be 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 3438 00c0 52EA0122 		orrs	r2, r2, r1, lsl #8
 3439 00c4 08BF     		it	eq
 3440 00c6 0137     		addeq	r7, r7, #1
 3441 00c8 0233     		adds	r3, r3, #2
 3442 00ca 023C     		subs	r4, r4, #2
 3443 00cc D1E7     		b	.L842
 3444              	.L852:
 3445 00ce 022D     		cmp	r5, #2
 3446 00d0 0746     		mov	r7, r0
 3447 00d2 07D8     		bhi	.L856
 3448              	.L828:
 3449 00d4 4FF0020B 		mov	fp, #2
 3450              	.L833:
 3451 00d8 3761     		str	r7, [r6, #16]
 3452 00da D4E7     		b	.L845
 3453              	.L855:
 3454 00dc D9F80060 		ldr	r6, [r9]
 3455 00e0 8346     		mov	fp, r0
 3456 00e2 C9E7     		b	.L839
 3457              	.L856:
 3458 00e4 0224     		movs	r4, #2
 3459 00e6 3046     		mov	r0, r6
 3460              	.L831:
 3461 00e8 2146     		mov	r1, r4
 3462 00ea FFF7FEFF 		bl	get_fat.part.3
 3463 00ee 431C     		adds	r3, r0, #1
 3464 00f0 04F10104 		add	r4, r4, #1
 3465 00f4 0CD0     		beq	.L857
 3466 00f6 0128     		cmp	r0, #1
 3467 00f8 11D0     		beq	.L858
 3468 00fa 00B9     		cbnz	r0, .L835
 3469 00fc 0137     		adds	r7, r7, #1
 3470              	.L835:
 3471 00fe D9F80000 		ldr	r0, [r9]
 3472 0102 8369     		ldr	r3, [r0, #24]
 3473 0104 9C42     		cmp	r4, r3
 3474 0106 08D2     		bcs	.L859
 3475 0108 012C     		cmp	r4, #1
 3476 010a EDD8     		bhi	.L831
 3477 010c 0646     		mov	r6, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 62


 3478 010e E1E7     		b	.L828
 3479              	.L857:
 3480 0110 D9F80060 		ldr	r6, [r9]
 3481 0114 4FF0010B 		mov	fp, #1
 3482 0118 DEE7     		b	.L833
 3483              	.L859:
 3484 011a 0646     		mov	r6, r0
 3485 011c DCE7     		b	.L833
 3486              	.L858:
 3487 011e D9F80060 		ldr	r6, [r9]
 3488 0122 4FF0020B 		mov	fp, #2
 3489 0126 D7E7     		b	.L833
 3490              		.size	f_getfree, .-f_getfree
 3491              		.section	.text.f_truncate,"ax",%progbits
 3492              		.align	2
 3493              		.global	f_truncate
 3494              		.thumb
 3495              		.thumb_func
 3496              		.type	f_truncate, %function
 3497              	f_truncate:
 3498              		@ args = 0, pretend = 0, frame = 0
 3499              		@ frame_needed = 0, uses_anonymous_args = 0
 3500 0000 70B5     		push	{r4, r5, r6, lr}
 3501 0002 0446     		mov	r4, r0
 3502 0004 0068     		ldr	r0, [r0]
 3503 0006 A188     		ldrh	r1, [r4, #4]
 3504 0008 FFF7FEFF 		bl	validate
 3505 000c 0546     		mov	r5, r0
 3506 000e E0B9     		cbnz	r0, .L885
 3507 0010 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3508 0012 1906     		lsls	r1, r3, #24
 3509 0014 1ED4     		bmi	.L880
 3510 0016 9A07     		lsls	r2, r3, #30
 3511 0018 19D5     		bpl	.L881
 3512 001a A268     		ldr	r2, [r4, #8]
 3513 001c E168     		ldr	r1, [r4, #12]
 3514 001e 9142     		cmp	r1, r2
 3515 0020 13D9     		bls	.L885
 3516 0022 43F02003 		orr	r3, r3, #32
 3517 0026 A371     		strb	r3, [r4, #6]
 3518 0028 E260     		str	r2, [r4, #12]
 3519 002a B2B9     		cbnz	r2, .L863
 3520 002c 2169     		ldr	r1, [r4, #16]
 3521 002e 2068     		ldr	r0, [r4]
 3522 0030 0129     		cmp	r1, #1
 3523 0032 02D9     		bls	.L883
 3524 0034 8369     		ldr	r3, [r0, #24]
 3525 0036 9942     		cmp	r1, r3
 3526 0038 18D3     		bcc	.L890
 3527              	.L883:
 3528 003a 0225     		movs	r5, #2
 3529              	.L864:
 3530 003c 0023     		movs	r3, #0
 3531 003e 2361     		str	r3, [r4, #16]
 3532              	.L865:
 3533 0040 1DB1     		cbz	r5, .L885
 3534              	.L889:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 63


 3535 0042 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3536              	.L878:
 3537 0044 63F07F03 		orn	r3, r3, #127
 3538 0048 A371     		strb	r3, [r4, #6]
 3539              	.L885:
 3540 004a 2846     		mov	r0, r5
 3541 004c 70BD     		pop	{r4, r5, r6, pc}
 3542              	.L881:
 3543 004e 0725     		movs	r5, #7
 3544 0050 2846     		mov	r0, r5
 3545 0052 70BD     		pop	{r4, r5, r6, pc}
 3546              	.L880:
 3547 0054 0225     		movs	r5, #2
 3548 0056 2846     		mov	r0, r5
 3549 0058 70BD     		pop	{r4, r5, r6, pc}
 3550              	.L863:
 3551 005a 6169     		ldr	r1, [r4, #20]
 3552 005c 2068     		ldr	r0, [r4]
 3553 005e 0129     		cmp	r1, #1
 3554 0060 02D9     		bls	.L866
 3555 0062 8269     		ldr	r2, [r0, #24]
 3556 0064 9142     		cmp	r1, r2
 3557 0066 05D3     		bcc	.L891
 3558              	.L866:
 3559 0068 0225     		movs	r5, #2
 3560 006a EBE7     		b	.L878
 3561              	.L890:
 3562 006c FFF7FEFF 		bl	remove_chain.part.6
 3563 0070 0546     		mov	r5, r0
 3564 0072 E3E7     		b	.L864
 3565              	.L891:
 3566 0074 FFF7FEFF 		bl	get_fat.part.3
 3567 0078 431C     		adds	r3, r0, #1
 3568 007a 0646     		mov	r6, r0
 3569 007c 02D1     		bne	.L867
 3570 007e A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3571 0080 0125     		movs	r5, #1
 3572 0082 DFE7     		b	.L878
 3573              	.L867:
 3574 0084 0128     		cmp	r0, #1
 3575 0086 1DD0     		beq	.L892
 3576 0088 2068     		ldr	r0, [r4]
 3577 008a 8369     		ldr	r3, [r0, #24]
 3578 008c B342     		cmp	r3, r6
 3579 008e DCD9     		bls	.L885
 3580 0090 6169     		ldr	r1, [r4, #20]
 3581 0092 0129     		cmp	r1, #1
 3582 0094 01D9     		bls	.L874
 3583 0096 8B42     		cmp	r3, r1
 3584 0098 02D8     		bhi	.L893
 3585              	.L874:
 3586 009a A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3587 009c 0225     		movs	r5, #2
 3588 009e D1E7     		b	.L878
 3589              	.L893:
 3590 00a0 6FF07042 		mvn	r2, #-268435456
 3591 00a4 FFF7FEFF 		bl	put_fat.part.4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 64


 3592 00a8 0546     		mov	r5, r0
 3593 00aa 0028     		cmp	r0, #0
 3594 00ac C9D1     		bne	.L889
 3595 00ae 012E     		cmp	r6, #1
 3596 00b0 2068     		ldr	r0, [r4]
 3597 00b2 F2D9     		bls	.L874
 3598 00b4 8369     		ldr	r3, [r0, #24]
 3599 00b6 9E42     		cmp	r6, r3
 3600 00b8 EFD2     		bcs	.L874
 3601 00ba 3146     		mov	r1, r6
 3602 00bc FFF7FEFF 		bl	remove_chain.part.6
 3603 00c0 0546     		mov	r5, r0
 3604 00c2 BDE7     		b	.L865
 3605              	.L892:
 3606 00c4 A379     		ldrb	r3, [r4, #6]	@ zero_extendqisi2
 3607 00c6 CFE7     		b	.L866
 3608              		.size	f_truncate, .-f_truncate
 3609              		.section	.text.f_unlink,"ax",%progbits
 3610              		.align	2
 3611              		.global	f_unlink
 3612              		.thumb
 3613              		.thumb_func
 3614              		.type	f_unlink, %function
 3615              	f_unlink:
 3616              		@ args = 0, pretend = 0, frame = 608
 3617              		@ frame_needed = 0, uses_anonymous_args = 0
 3618 0000 70B5     		push	{r4, r5, r6, lr}
 3619 0002 ADF5187D 		sub	sp, sp, #608
 3620 0006 06A9     		add	r1, sp, #24
 3621 0008 0190     		str	r0, [sp, #4]
 3622 000a 0122     		movs	r2, #1
 3623 000c 01A8     		add	r0, sp, #4
 3624 000e FFF7FEFF 		bl	chk_mounted
 3625 0012 10B1     		cbz	r0, .L918
 3626              	.L912:
 3627 0014 0DF5187D 		add	sp, sp, #608
 3628              		@ sp needed
 3629 0018 70BD     		pop	{r4, r5, r6, pc}
 3630              	.L918:
 3631 001a 03AA     		add	r2, sp, #12
 3632 001c 18AB     		add	r3, sp, #96
 3633 001e 0199     		ldr	r1, [sp, #4]
 3634 0020 0C92     		str	r2, [sp, #48]
 3635 0022 06A8     		add	r0, sp, #24
 3636 0024 0D93     		str	r3, [sp, #52]
 3637 0026 FFF7FEFF 		bl	follow_path
 3638 002a 0028     		cmp	r0, #0
 3639 002c F2D1     		bne	.L912
 3640 002e 0B9B     		ldr	r3, [sp, #44]
 3641 0030 002B     		cmp	r3, #0
 3642 0032 40D0     		beq	.L904
 3643 0034 DA7A     		ldrb	r2, [r3, #11]	@ zero_extendqisi2
 3644 0036 D107     		lsls	r1, r2, #31
 3645 0038 37D4     		bmi	.L905
 3646 003a 5E7D     		ldrb	r6, [r3, #21]	@ zero_extendqisi2
 3647 003c 187D     		ldrb	r0, [r3, #20]	@ zero_extendqisi2
 3648 003e D97E     		ldrb	r1, [r3, #27]	@ zero_extendqisi2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 65


 3649 0040 9B7E     		ldrb	r3, [r3, #26]	@ zero_extendqisi2
 3650 0042 40EA0626 		orr	r6, r0, r6, lsl #8
 3651 0046 43EA0123 		orr	r3, r3, r1, lsl #8
 3652 004a 43EA0646 		orr	r6, r3, r6, lsl #16
 3653 004e D306     		lsls	r3, r2, #27
 3654 0050 16D5     		bpl	.L899
 3655 0052 012E     		cmp	r6, #1
 3656 0054 2DD9     		bls	.L906
 3657 0056 06AD     		add	r5, sp, #24
 3658 0058 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 3659 005a 0FAC     		add	r4, sp, #60
 3660 005c 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 3661 005e 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 3662 0060 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 3663 0062 2B68     		ldr	r3, [r5]
 3664 0064 1196     		str	r6, [sp, #68]
 3665 0066 0FA8     		add	r0, sp, #60
 3666 0068 0221     		movs	r1, #2
 3667 006a 2360     		str	r3, [r4]
 3668 006c FFF7FEFF 		bl	dir_sdi
 3669 0070 0028     		cmp	r0, #0
 3670 0072 CFD1     		bne	.L912
 3671 0074 0FA8     		add	r0, sp, #60
 3672 0076 FFF7FEFF 		bl	dir_read
 3673 007a B0B1     		cbz	r0, .L905
 3674 007c 0428     		cmp	r0, #4
 3675 007e C9D1     		bne	.L912
 3676              	.L899:
 3677 0080 06A8     		add	r0, sp, #24
 3678 0082 FFF7FEFF 		bl	dir_remove
 3679 0086 0028     		cmp	r0, #0
 3680 0088 C4D1     		bne	.L912
 3681 008a 56B1     		cbz	r6, .L901
 3682 008c 012E     		cmp	r6, #1
 3683 008e 0698     		ldr	r0, [sp, #24]
 3684 0090 0FD0     		beq	.L906
 3685 0092 8369     		ldr	r3, [r0, #24]
 3686 0094 9E42     		cmp	r6, r3
 3687 0096 0CD2     		bcs	.L906
 3688 0098 3146     		mov	r1, r6
 3689 009a FFF7FEFF 		bl	remove_chain.part.6
 3690 009e 0028     		cmp	r0, #0
 3691 00a0 B8D1     		bne	.L912
 3692              	.L901:
 3693 00a2 0698     		ldr	r0, [sp, #24]
 3694 00a4 FFF7FEFF 		bl	sync
 3695 00a8 B4E7     		b	.L912
 3696              	.L905:
 3697 00aa 0720     		movs	r0, #7
 3698 00ac 0DF5187D 		add	sp, sp, #608
 3699              		@ sp needed
 3700 00b0 70BD     		pop	{r4, r5, r6, pc}
 3701              	.L906:
 3702 00b2 0220     		movs	r0, #2
 3703 00b4 AEE7     		b	.L912
 3704              	.L904:
 3705 00b6 0620     		movs	r0, #6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 66


 3706 00b8 ACE7     		b	.L912
 3707              		.size	f_unlink, .-f_unlink
 3708 00ba 00BF     		.section	.text.f_mkdir,"ax",%progbits
 3709              		.align	2
 3710              		.global	f_mkdir
 3711              		.thumb
 3712              		.thumb_func
 3713              		.type	f_mkdir, %function
 3714              	f_mkdir:
 3715              		@ args = 0, pretend = 0, frame = 592
 3716              		@ frame_needed = 0, uses_anonymous_args = 0
 3717 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3718 0004 ADF5157D 		sub	sp, sp, #596
 3719 0008 0790     		str	r0, [sp, #28]
 3720 000a FFF7FEFF 		bl	get_fattime
 3721 000e 0BA9     		add	r1, sp, #44
 3722 0010 0646     		mov	r6, r0
 3723 0012 0122     		movs	r2, #1
 3724 0014 07A8     		add	r0, sp, #28
 3725 0016 FFF7FEFF 		bl	chk_mounted
 3726 001a 0446     		mov	r4, r0
 3727 001c 0546     		mov	r5, r0
 3728 001e 20B1     		cbz	r0, .L947
 3729              	.L939:
 3730 0020 2046     		mov	r0, r4
 3731 0022 0DF5157D 		add	sp, sp, #596
 3732              		@ sp needed
 3733 0026 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3734              	.L947:
 3735 002a 08AA     		add	r2, sp, #32
 3736 002c 14AB     		add	r3, sp, #80
 3737 002e 0799     		ldr	r1, [sp, #28]
 3738 0030 1192     		str	r2, [sp, #68]
 3739 0032 0BA8     		add	r0, sp, #44
 3740 0034 1293     		str	r3, [sp, #72]
 3741 0036 FFF7FEFF 		bl	follow_path
 3742 003a 0446     		mov	r4, r0
 3743 003c A8B1     		cbz	r0, .L932
 3744 003e 0428     		cmp	r0, #4
 3745 0040 EED1     		bne	.L939
 3746 0042 0B98     		ldr	r0, [sp, #44]
 3747 0044 2946     		mov	r1, r5
 3748 0046 FFF7FEFF 		bl	create_chain
 3749 004a 8046     		mov	r8, r0
 3750 004c 98B1     		cbz	r0, .L933
 3751 004e 0128     		cmp	r0, #1
 3752 0050 13D1     		bne	.L948
 3753 0052 0224     		movs	r4, #2
 3754              	.L929:
 3755 0054 B8F1010F 		cmp	r8, #1
 3756 0058 0B98     		ldr	r0, [sp, #44]
 3757 005a E1D9     		bls	.L939
 3758 005c 8369     		ldr	r3, [r0, #24]
 3759 005e 9845     		cmp	r8, r3
 3760 0060 DED2     		bcs	.L939
 3761 0062 4146     		mov	r1, r8
 3762 0064 FFF7FEFF 		bl	remove_chain.part.6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 67


 3763 0068 DAE7     		b	.L939
 3764              	.L932:
 3765 006a 0824     		movs	r4, #8
 3766 006c 2046     		mov	r0, r4
 3767 006e 0DF5157D 		add	sp, sp, #596
 3768              		@ sp needed
 3769 0072 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3770              	.L933:
 3771 0076 0724     		movs	r4, #7
 3772 0078 ECE7     		b	.L929
 3773              	.L948:
 3774 007a B0F1FF3F 		cmp	r0, #-1
 3775 007e 08BF     		it	eq
 3776 0080 0124     		moveq	r4, #1
 3777 0082 E7D0     		beq	.L929
 3778 0084 2946     		mov	r1, r5
 3779 0086 0B98     		ldr	r0, [sp, #44]
 3780 0088 FFF7FEFF 		bl	move_window
 3781 008c 0446     		mov	r4, r0
 3782 008e 0028     		cmp	r0, #0
 3783 0090 E0D1     		bne	.L929
 3784 0092 0B9F     		ldr	r7, [sp, #44]
 3785 0094 BB69     		ldr	r3, [r7, #24]
 3786 0096 A8F10202 		sub	r2, r8, #2
 3787 009a 023B     		subs	r3, r3, #2
 3788 009c 9A42     		cmp	r2, r3
 3789 009e 3CBF     		itt	cc
 3790 00a0 B978     		ldrbcc	r1, [r7, #2]	@ zero_extendqisi2
 3791 00a2 BB6A     		ldrcc	r3, [r7, #40]
 3792 00a4 07F13005 		add	r5, r7, #48
 3793 00a8 38BF     		it	cc
 3794 00aa 01FB0239 		mlacc	r9, r1, r2, r3
 3795 00ae 2846     		mov	r0, r5
 3796 00b0 4FF00001 		mov	r1, #0
 3797 00b4 4FF40072 		mov	r2, #512
 3798 00b8 28BF     		it	cs
 3799 00ba A146     		movcs	r9, r4
 3800 00bc FFF7FEFF 		bl	memset
 3801 00c0 2021     		movs	r1, #32
 3802 00c2 0B22     		movs	r2, #11
 3803 00c4 2846     		mov	r0, r5
 3804 00c6 FFF7FEFF 		bl	memset
 3805 00ca C6F30724 		ubfx	r4, r6, #8, #8
 3806 00ce F3B2     		uxtb	r3, r6
 3807 00d0 0193     		str	r3, [sp, #4]
 3808 00d2 0294     		str	r4, [sp, #8]
 3809 00d4 C6F30743 		ubfx	r3, r6, #16, #8
 3810 00d8 5FFA88F4 		uxtb	r4, r8
 3811 00dc 0393     		str	r3, [sp, #12]
 3812 00de 0594     		str	r4, [sp, #20]
 3813 00e0 C8F30723 		ubfx	r3, r8, #8, #8
 3814 00e4 019C     		ldr	r4, [sp, #4]
 3815 00e6 87F84640 		strb	r4, [r7, #70]
 3816 00ea 0693     		str	r3, [sp, #24]
 3817 00ec 039C     		ldr	r4, [sp, #12]
 3818 00ee 029B     		ldr	r3, [sp, #8]
 3819 00f0 87F84730 		strb	r3, [r7, #71]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 68


 3820 00f4 4FEA184B 		lsr	fp, r8, #16
 3821 00f8 87F84840 		strb	r4, [r7, #72]
 3822 00fc 360E     		lsrs	r6, r6, #24
 3823 00fe 059C     		ldr	r4, [sp, #20]
 3824 0100 069B     		ldr	r3, [sp, #24]
 3825 0102 87F84960 		strb	r6, [r7, #73]
 3826 0106 5FFA8BFA 		uxtb	r10, fp
 3827 010a 4FF02E0E 		mov	lr, #46
 3828 010e 1022     		movs	r2, #16
 3829 0110 4FEA1B2B 		lsr	fp, fp, #8
 3830 0114 87F83B20 		strb	r2, [r7, #59]
 3831 0118 87F844A0 		strb	r10, [r7, #68]
 3832 011c 87F845B0 		strb	fp, [r7, #69]
 3833 0120 87F830E0 		strb	lr, [r7, #48]
 3834 0124 87F84A40 		strb	r4, [r7, #74]
 3835 0128 87F84B30 		strb	r3, [r7, #75]
 3836 012c D5F800C0 		ldr	ip, [r5]	@ unaligned
 3837 0130 AC68     		ldr	r4, [r5, #8]	@ unaligned
 3838 0132 E968     		ldr	r1, [r5, #12]	@ unaligned
 3839 0134 0496     		str	r6, [sp, #16]
 3840 0136 6E68     		ldr	r6, [r5, #4]	@ unaligned
 3841 0138 7E65     		str	r6, [r7, #84]	@ unaligned
 3842 013a C7F850C0 		str	ip, [r7, #80]	@ unaligned
 3843 013e BC65     		str	r4, [r7, #88]	@ unaligned
 3844 0140 F965     		str	r1, [r7, #92]	@ unaligned
 3845 0142 E969     		ldr	r1, [r5, #28]	@ unaligned
 3846 0144 6E69     		ldr	r6, [r5, #20]	@ unaligned
 3847 0146 AC69     		ldr	r4, [r5, #24]	@ unaligned
 3848 0148 0B98     		ldr	r0, [sp, #44]
 3849 014a D5F810C0 		ldr	ip, [r5, #16]	@ unaligned
 3850 014e C7F860C0 		str	ip, [r7, #96]	@ unaligned
 3851 0152 7E66     		str	r6, [r7, #100]	@ unaligned
 3852 0154 BC66     		str	r4, [r7, #104]	@ unaligned
 3853 0156 F966     		str	r1, [r7, #108]	@ unaligned
 3854 0158 87F851E0 		strb	lr, [r7, #81]
 3855 015c 0178     		ldrb	r1, [r0]	@ zero_extendqisi2
 3856 015e 0D9A     		ldr	r2, [sp, #52]
 3857 0160 0329     		cmp	r1, #3
 3858 0162 4ED0     		beq	.L924
 3859              	.L946:
 3860 0164 110C     		lsrs	r1, r2, #16
 3861 0166 CCB2     		uxtb	r4, r1
 3862 0168 D6B2     		uxtb	r6, r2
 3863 016a 090A     		lsrs	r1, r1, #8
 3864 016c C2F30722 		ubfx	r2, r2, #8, #8
 3865              	.L925:
 3866 0170 87F86A60 		strb	r6, [r7, #106]
 3867 0174 87F86B20 		strb	r2, [r7, #107]
 3868 0178 87F86440 		strb	r4, [r7, #100]
 3869 017c 87F86510 		strb	r1, [r7, #101]
 3870 0180 8278     		ldrb	r2, [r0, #2]	@ zero_extendqisi2
 3871 0182 E2B1     		cbz	r2, .L926
 3872 0184 571E     		subs	r7, r2, #1
 3873 0186 FFB2     		uxtb	r7, r7
 3874 0188 2B46     		mov	r3, r5
 3875 018a 0137     		adds	r7, r7, #1
 3876 018c 4F44     		add	r7, r7, r9
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 69


 3877 018e 4D46     		mov	r5, r9
 3878 0190 0126     		movs	r6, #1
 3879 0192 9946     		mov	r9, r3
 3880 0194 00E0     		b	.L928
 3881              	.L949:
 3882 0196 0B98     		ldr	r0, [sp, #44]
 3883              	.L928:
 3884 0198 0B9B     		ldr	r3, [sp, #44]
 3885 019a C562     		str	r5, [r0, #44]
 3886 019c 0021     		movs	r1, #0
 3887 019e 1E71     		strb	r6, [r3, #4]
 3888 01a0 FFF7FEFF 		bl	move_window
 3889 01a4 0446     		mov	r4, r0
 3890 01a6 0146     		mov	r1, r0
 3891 01a8 4FF40072 		mov	r2, #512
 3892 01ac 4846     		mov	r0, r9
 3893 01ae 0135     		adds	r5, r5, #1
 3894 01b0 002C     		cmp	r4, #0
 3895 01b2 7FF44FAF 		bne	.L929
 3896 01b6 FFF7FEFF 		bl	memset
 3897 01ba BD42     		cmp	r5, r7
 3898 01bc EBD1     		bne	.L949
 3899              	.L926:
 3900 01be 0BA8     		add	r0, sp, #44
 3901 01c0 FFF7FEFF 		bl	dir_register
 3902 01c4 0446     		mov	r4, r0
 3903 01c6 0028     		cmp	r0, #0
 3904 01c8 7FF444AF 		bne	.L929
 3905 01cc 109B     		ldr	r3, [sp, #64]
 3906 01ce 019C     		ldr	r4, [sp, #4]
 3907 01d0 9C75     		strb	r4, [r3, #22]
 3908 01d2 029C     		ldr	r4, [sp, #8]
 3909 01d4 DC75     		strb	r4, [r3, #23]
 3910 01d6 039C     		ldr	r4, [sp, #12]
 3911 01d8 1C76     		strb	r4, [r3, #24]
 3912 01da 049C     		ldr	r4, [sp, #16]
 3913 01dc 0B9A     		ldr	r2, [sp, #44]
 3914 01de 5C76     		strb	r4, [r3, #25]
 3915 01e0 059C     		ldr	r4, [sp, #20]
 3916 01e2 9C76     		strb	r4, [r3, #26]
 3917 01e4 1020     		movs	r0, #16
 3918 01e6 069C     		ldr	r4, [sp, #24]
 3919 01e8 DC76     		strb	r4, [r3, #27]
 3920 01ea 0121     		movs	r1, #1
 3921 01ec D872     		strb	r0, [r3, #11]
 3922 01ee 83F814A0 		strb	r10, [r3, #20]
 3923 01f2 83F815B0 		strb	fp, [r3, #21]
 3924 01f6 1046     		mov	r0, r2
 3925 01f8 1171     		strb	r1, [r2, #4]
 3926 01fa FFF7FEFF 		bl	sync
 3927 01fe 0446     		mov	r4, r0
 3928 0200 0EE7     		b	.L939
 3929              	.L924:
 3930 0202 416A     		ldr	r1, [r0, #36]
 3931 0204 9142     		cmp	r1, r2
 3932 0206 ADD1     		bne	.L946
 3933 0208 0021     		movs	r1, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 70


 3934 020a 0C46     		mov	r4, r1
 3935 020c 0A46     		mov	r2, r1
 3936 020e 0E46     		mov	r6, r1
 3937 0210 AEE7     		b	.L925
 3938              		.size	f_mkdir, .-f_mkdir
 3939 0212 00BF     		.section	.text.f_chmod,"ax",%progbits
 3940              		.align	2
 3941              		.global	f_chmod
 3942              		.thumb
 3943              		.thumb_func
 3944              		.type	f_chmod, %function
 3945              	f_chmod:
 3946              		@ args = 0, pretend = 0, frame = 568
 3947              		@ frame_needed = 0, uses_anonymous_args = 0
 3948 0000 30B5     		push	{r4, r5, lr}
 3949 0002 ADF50F7D 		sub	sp, sp, #572
 3950 0006 0C46     		mov	r4, r1
 3951 0008 1546     		mov	r5, r2
 3952 000a 0190     		str	r0, [sp, #4]
 3953 000c 05A9     		add	r1, sp, #20
 3954 000e 01A8     		add	r0, sp, #4
 3955 0010 0122     		movs	r2, #1
 3956 0012 FFF7FEFF 		bl	chk_mounted
 3957 0016 10B1     		cbz	r0, .L953
 3958              	.L951:
 3959 0018 0DF50F7D 		add	sp, sp, #572
 3960              		@ sp needed
 3961 001c 30BD     		pop	{r4, r5, pc}
 3962              	.L953:
 3963 001e 02AA     		add	r2, sp, #8
 3964 0020 0EAB     		add	r3, sp, #56
 3965 0022 0199     		ldr	r1, [sp, #4]
 3966 0024 0B92     		str	r2, [sp, #44]
 3967 0026 05A8     		add	r0, sp, #20
 3968 0028 0C93     		str	r3, [sp, #48]
 3969 002a FFF7FEFF 		bl	follow_path
 3970 002e 0028     		cmp	r0, #0
 3971 0030 F2D1     		bne	.L951
 3972 0032 0A9B     		ldr	r3, [sp, #40]
 3973 0034 83B1     		cbz	r3, .L952
 3974 0036 D97A     		ldrb	r1, [r3, #11]	@ zero_extendqisi2
 3975 0038 059A     		ldr	r2, [sp, #20]
 3976 003a 05F02705 		and	r5, r5, #39
 3977 003e 2C40     		ands	r4, r4, r5
 3978 0040 21EA0505 		bic	r5, r1, r5
 3979 0044 2543     		orrs	r5, r5, r4
 3980 0046 0121     		movs	r1, #1
 3981 0048 DD72     		strb	r5, [r3, #11]
 3982 004a 1046     		mov	r0, r2
 3983 004c 1171     		strb	r1, [r2, #4]
 3984 004e FFF7FEFF 		bl	sync
 3985 0052 0DF50F7D 		add	sp, sp, #572
 3986              		@ sp needed
 3987 0056 30BD     		pop	{r4, r5, pc}
 3988              	.L952:
 3989 0058 0620     		movs	r0, #6
 3990 005a 0DF50F7D 		add	sp, sp, #572
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 71


 3991              		@ sp needed
 3992 005e 30BD     		pop	{r4, r5, pc}
 3993              		.size	f_chmod, .-f_chmod
 3994              		.section	.text.f_utime,"ax",%progbits
 3995              		.align	2
 3996              		.global	f_utime
 3997              		.thumb
 3998              		.thumb_func
 3999              		.type	f_utime, %function
 4000              	f_utime:
 4001              		@ args = 0, pretend = 0, frame = 568
 4002              		@ frame_needed = 0, uses_anonymous_args = 0
 4003 0000 10B5     		push	{r4, lr}
 4004 0002 ADF50E7D 		sub	sp, sp, #568
 4005 0006 0C46     		mov	r4, r1
 4006 0008 0190     		str	r0, [sp, #4]
 4007 000a 05A9     		add	r1, sp, #20
 4008 000c 01A8     		add	r0, sp, #4
 4009 000e 0122     		movs	r2, #1
 4010 0010 FFF7FEFF 		bl	chk_mounted
 4011 0014 10B1     		cbz	r0, .L957
 4012              	.L955:
 4013 0016 0DF50E7D 		add	sp, sp, #568
 4014              		@ sp needed
 4015 001a 10BD     		pop	{r4, pc}
 4016              	.L957:
 4017 001c 02AA     		add	r2, sp, #8
 4018 001e 0EAB     		add	r3, sp, #56
 4019 0020 0199     		ldr	r1, [sp, #4]
 4020 0022 0B92     		str	r2, [sp, #44]
 4021 0024 05A8     		add	r0, sp, #20
 4022 0026 0C93     		str	r3, [sp, #48]
 4023 0028 FFF7FEFF 		bl	follow_path
 4024 002c 0028     		cmp	r0, #0
 4025 002e F2D1     		bne	.L955
 4026 0030 0A9B     		ldr	r3, [sp, #40]
 4027 0032 93B1     		cbz	r3, .L956
 4028 0034 E288     		ldrh	r2, [r4, #6]
 4029 0036 9A75     		strb	r2, [r3, #22]
 4030 0038 E188     		ldrh	r1, [r4, #6]
 4031 003a 059A     		ldr	r2, [sp, #20]
 4032 003c 090A     		lsrs	r1, r1, #8
 4033 003e D975     		strb	r1, [r3, #23]
 4034 0040 A188     		ldrh	r1, [r4, #4]
 4035 0042 1976     		strb	r1, [r3, #24]
 4036 0044 A088     		ldrh	r0, [r4, #4]
 4037 0046 0121     		movs	r1, #1
 4038 0048 000A     		lsrs	r0, r0, #8
 4039 004a 5876     		strb	r0, [r3, #25]
 4040 004c 1046     		mov	r0, r2
 4041 004e 1171     		strb	r1, [r2, #4]
 4042 0050 FFF7FEFF 		bl	sync
 4043 0054 0DF50E7D 		add	sp, sp, #568
 4044              		@ sp needed
 4045 0058 10BD     		pop	{r4, pc}
 4046              	.L956:
 4047 005a 0620     		movs	r0, #6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 72


 4048 005c 0DF50E7D 		add	sp, sp, #568
 4049              		@ sp needed
 4050 0060 10BD     		pop	{r4, pc}
 4051              		.size	f_utime, .-f_utime
 4052 0062 00BF     		.section	.text.f_rename,"ax",%progbits
 4053              		.align	2
 4054              		.global	f_rename
 4055              		.thumb
 4056              		.thumb_func
 4057              		.type	f_rename, %function
 4058              	f_rename:
 4059              		@ args = 0, pretend = 0, frame = 632
 4060              		@ frame_needed = 0, uses_anonymous_args = 0
 4061 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 4062 0002 ADF51F7D 		sub	sp, sp, #636
 4063 0006 0F46     		mov	r7, r1
 4064 0008 0190     		str	r0, [sp, #4]
 4065 000a 0CA9     		add	r1, sp, #48
 4066 000c 01A8     		add	r0, sp, #4
 4067 000e 0122     		movs	r2, #1
 4068 0010 FFF7FEFF 		bl	chk_mounted
 4069 0014 10B1     		cbz	r0, .L975
 4070              	.L972:
 4071 0016 0DF51F7D 		add	sp, sp, #636
 4072              		@ sp needed
 4073 001a F0BD     		pop	{r4, r5, r6, r7, pc}
 4074              	.L975:
 4075 001c 0C9B     		ldr	r3, [sp, #48]
 4076 001e 1593     		str	r3, [sp, #84]
 4077 0020 03AA     		add	r2, sp, #12
 4078 0022 1EAB     		add	r3, sp, #120
 4079 0024 0199     		ldr	r1, [sp, #4]
 4080 0026 1292     		str	r2, [sp, #72]
 4081 0028 0CA8     		add	r0, sp, #48
 4082 002a 1393     		str	r3, [sp, #76]
 4083 002c FFF7FEFF 		bl	follow_path
 4084 0030 0028     		cmp	r0, #0
 4085 0032 F0D1     		bne	.L972
 4086 0034 119C     		ldr	r4, [sp, #68]
 4087 0036 002C     		cmp	r4, #0
 4088 0038 6FD0     		beq	.L966
 4089 003a 54F80B0F 		ldr	r0, [r4, #11]!	@ unaligned
 4090 003e 6168     		ldr	r1, [r4, #4]	@ unaligned
 4091 0040 A268     		ldr	r2, [r4, #8]	@ unaligned
 4092 0042 E368     		ldr	r3, [r4, #12]	@ unaligned
 4093 0044 94F814E0 		ldrb	lr, [r4, #20]	@ zero_extendqisi2
 4094 0048 06AE     		add	r6, sp, #24
 4095 004a 0FC6     		stmia	r6!, {r0, r1, r2, r3}
 4096 004c 0CAD     		add	r5, sp, #48
 4097 004e 2069     		ldr	r0, [r4, #16]	@ unaligned
 4098 0050 3060     		str	r0, [r6]	@ unaligned
 4099 0052 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 4100 0054 15AC     		add	r4, sp, #84
 4101 0056 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 4102 0058 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 4103 005a 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 4104 005c 2B68     		ldr	r3, [r5]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 73


 4105 005e 86F804E0 		strb	lr, [r6, #4]
 4106 0062 3946     		mov	r1, r7
 4107 0064 15A8     		add	r0, sp, #84
 4108 0066 2360     		str	r3, [r4]
 4109 0068 FFF7FEFF 		bl	follow_path
 4110 006c 0028     		cmp	r0, #0
 4111 006e 58D0     		beq	.L967
 4112 0070 0428     		cmp	r0, #4
 4113 0072 D0D1     		bne	.L972
 4114 0074 15A8     		add	r0, sp, #84
 4115 0076 FFF7FEFF 		bl	dir_register
 4116 007a 0028     		cmp	r0, #0
 4117 007c CBD1     		bne	.L972
 4118 007e 1A9B     		ldr	r3, [sp, #104]
 4119 0080 DDF81A20 		ldr	r2, [sp, #26]	@ unaligned
 4120 0084 C3F80D20 		str	r2, [r3, #13]	@ unaligned
 4121 0088 9DF81840 		ldrb	r4, [sp, #24]	@ zero_extendqisi2
 4122 008c 0C99     		ldr	r1, [sp, #48]
 4123 008e DDF81E00 		ldr	r0, [sp, #30]	@ unaligned
 4124 0092 C3F81100 		str	r0, [r3, #17]	@ unaligned
 4125 0096 DDF822C0 		ldr	ip, [sp, #34]	@ unaligned
 4126 009a DDF82670 		ldr	r7, [sp, #38]	@ unaligned
 4127 009e BDF82A60 		ldrh	r6, [sp, #42]	@ unaligned
 4128 00a2 9DF82C50 		ldrb	r5, [sp, #44]	@ zero_extendqisi2
 4129 00a6 C3F815C0 		str	ip, [r3, #21]	@ unaligned
 4130 00aa 44F02004 		orr	r4, r4, #32
 4131 00ae 0120     		movs	r0, #1
 4132 00b0 DC72     		strb	r4, [r3, #11]
 4133 00b2 C3F81970 		str	r7, [r3, #25]	@ unaligned
 4134 00b6 A3F81D60 		strh	r6, [r3, #29]	@ unaligned
 4135 00ba DD77     		strb	r5, [r3, #31]
 4136 00bc 0871     		strb	r0, [r1, #4]
 4137 00be 0E99     		ldr	r1, [sp, #56]
 4138 00c0 179A     		ldr	r2, [sp, #92]
 4139 00c2 9142     		cmp	r1, r2
 4140 00c4 20D0     		beq	.L964
 4141 00c6 DA7A     		ldrb	r2, [r3, #11]	@ zero_extendqisi2
 4142 00c8 D206     		lsls	r2, r2, #27
 4143 00ca 1DD5     		bpl	.L964
 4144 00cc DA7E     		ldrb	r2, [r3, #27]	@ zero_extendqisi2
 4145 00ce 5C7D     		ldrb	r4, [r3, #21]	@ zero_extendqisi2
 4146 00d0 197D     		ldrb	r1, [r3, #20]	@ zero_extendqisi2
 4147 00d2 1598     		ldr	r0, [sp, #84]
 4148 00d4 9B7E     		ldrb	r3, [r3, #26]	@ zero_extendqisi2
 4149 00d6 41EA0421 		orr	r1, r1, r4, lsl #8
 4150 00da 43EA0223 		orr	r3, r3, r2, lsl #8
 4151 00de 8269     		ldr	r2, [r0, #24]
 4152 00e0 43EA0143 		orr	r3, r3, r1, lsl #16
 4153 00e4 023B     		subs	r3, r3, #2
 4154 00e6 023A     		subs	r2, r2, #2
 4155 00e8 9342     		cmp	r3, r2
 4156 00ea 1CD2     		bcs	.L969
 4157 00ec 8178     		ldrb	r1, [r0, #2]	@ zero_extendqisi2
 4158 00ee 826A     		ldr	r2, [r0, #40]
 4159 00f0 01FB0321 		mla	r1, r1, r3, r2
 4160 00f4 B9B1     		cbz	r1, .L969
 4161 00f6 FFF7FEFF 		bl	move_window
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 74


 4162 00fa 159B     		ldr	r3, [sp, #84]
 4163 00fc 0028     		cmp	r0, #0
 4164 00fe 8AD1     		bne	.L972
 4165 0100 93F85120 		ldrb	r2, [r3, #81]	@ zero_extendqisi2
 4166 0104 2E2A     		cmp	r2, #46
 4167 0106 10D0     		beq	.L976
 4168              	.L964:
 4169 0108 0CA8     		add	r0, sp, #48
 4170 010a FFF7FEFF 		bl	dir_remove
 4171 010e 0028     		cmp	r0, #0
 4172 0110 81D1     		bne	.L972
 4173 0112 0C98     		ldr	r0, [sp, #48]
 4174 0114 FFF7FEFF 		bl	sync
 4175 0118 7DE7     		b	.L972
 4176              	.L966:
 4177 011a 0420     		movs	r0, #4
 4178 011c 0DF51F7D 		add	sp, sp, #636
 4179              		@ sp needed
 4180 0120 F0BD     		pop	{r4, r5, r6, r7, pc}
 4181              	.L967:
 4182 0122 0820     		movs	r0, #8
 4183 0124 77E7     		b	.L972
 4184              	.L969:
 4185 0126 0220     		movs	r0, #2
 4186 0128 75E7     		b	.L972
 4187              	.L976:
 4188 012a 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 4189 012c 032A     		cmp	r2, #3
 4190 012e 0FD0     		beq	.L977
 4191              	.L962:
 4192 0130 1798     		ldr	r0, [sp, #92]
 4193              	.L963:
 4194 0132 020C     		lsrs	r2, r0, #16
 4195 0134 150A     		lsrs	r5, r2, #8
 4196 0136 C0F30724 		ubfx	r4, r0, #8, #8
 4197 013a 0121     		movs	r1, #1
 4198 013c 83F86A00 		strb	r0, [r3, #106]
 4199 0140 83F86420 		strb	r2, [r3, #100]
 4200 0144 83F86550 		strb	r5, [r3, #101]
 4201 0148 83F86B40 		strb	r4, [r3, #107]
 4202 014c 1971     		strb	r1, [r3, #4]
 4203 014e DBE7     		b	.L964
 4204              	.L977:
 4205 0150 1799     		ldr	r1, [sp, #92]
 4206 0152 5A6A     		ldr	r2, [r3, #36]
 4207 0154 9142     		cmp	r1, r2
 4208 0156 EBD1     		bne	.L962
 4209 0158 EBE7     		b	.L963
 4210              		.size	f_rename, .-f_rename
 4211 015a 00BF     		.section	.rodata.excvt.4829,"a",%progbits
 4212              		.align	2
 4213              		.set	.LANCHOR3,. + 0
 4214              		.type	excvt.4829, %object
 4215              		.size	excvt.4829, 128
 4216              	excvt.4829:
 4217 0000 80       		.byte	-128
 4218 0001 9A       		.byte	-102
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 75


 4219 0002 90       		.byte	-112
 4220 0003 B6       		.byte	-74
 4221 0004 8E       		.byte	-114
 4222 0005 B7       		.byte	-73
 4223 0006 8F       		.byte	-113
 4224 0007 80       		.byte	-128
 4225 0008 D2       		.byte	-46
 4226 0009 D3       		.byte	-45
 4227 000a D4       		.byte	-44
 4228 000b D8       		.byte	-40
 4229 000c D7       		.byte	-41
 4230 000d DE       		.byte	-34
 4231 000e 8E       		.byte	-114
 4232 000f 8F       		.byte	-113
 4233 0010 90       		.byte	-112
 4234 0011 92       		.byte	-110
 4235 0012 92       		.byte	-110
 4236 0013 E2       		.byte	-30
 4237 0014 99       		.byte	-103
 4238 0015 E3       		.byte	-29
 4239 0016 EA       		.byte	-22
 4240 0017 EB       		.byte	-21
 4241 0018 59       		.byte	89
 4242 0019 99       		.byte	-103
 4243 001a 9A       		.byte	-102
 4244 001b 9D       		.byte	-99
 4245 001c 9C       		.byte	-100
 4246 001d 9D       		.byte	-99
 4247 001e 9E       		.byte	-98
 4248 001f 9F       		.byte	-97
 4249 0020 B5       		.byte	-75
 4250 0021 D6       		.byte	-42
 4251 0022 E0       		.byte	-32
 4252 0023 E9       		.byte	-23
 4253 0024 A5       		.byte	-91
 4254 0025 A5       		.byte	-91
 4255 0026 A6       		.byte	-90
 4256 0027 A7       		.byte	-89
 4257 0028 A8       		.byte	-88
 4258 0029 A9       		.byte	-87
 4259 002a AA       		.byte	-86
 4260 002b AB       		.byte	-85
 4261 002c AC       		.byte	-84
 4262 002d 21       		.byte	33
 4263 002e AE       		.byte	-82
 4264 002f AF       		.byte	-81
 4265 0030 B0       		.byte	-80
 4266 0031 B1       		.byte	-79
 4267 0032 B2       		.byte	-78
 4268 0033 B3       		.byte	-77
 4269 0034 B4       		.byte	-76
 4270 0035 B5       		.byte	-75
 4271 0036 B6       		.byte	-74
 4272 0037 B7       		.byte	-73
 4273 0038 B8       		.byte	-72
 4274 0039 B9       		.byte	-71
 4275 003a BA       		.byte	-70
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 76


 4276 003b BB       		.byte	-69
 4277 003c BC       		.byte	-68
 4278 003d BD       		.byte	-67
 4279 003e BE       		.byte	-66
 4280 003f BF       		.byte	-65
 4281 0040 C0       		.byte	-64
 4282 0041 C1       		.byte	-63
 4283 0042 C2       		.byte	-62
 4284 0043 C3       		.byte	-61
 4285 0044 C4       		.byte	-60
 4286 0045 C5       		.byte	-59
 4287 0046 C7       		.byte	-57
 4288 0047 C7       		.byte	-57
 4289 0048 C8       		.byte	-56
 4290 0049 C9       		.byte	-55
 4291 004a CA       		.byte	-54
 4292 004b CB       		.byte	-53
 4293 004c CC       		.byte	-52
 4294 004d CD       		.byte	-51
 4295 004e CE       		.byte	-50
 4296 004f CF       		.byte	-49
 4297 0050 D0       		.byte	-48
 4298 0051 D1       		.byte	-47
 4299 0052 D2       		.byte	-46
 4300 0053 D3       		.byte	-45
 4301 0054 D4       		.byte	-44
 4302 0055 D5       		.byte	-43
 4303 0056 D6       		.byte	-42
 4304 0057 D7       		.byte	-41
 4305 0058 D8       		.byte	-40
 4306 0059 D9       		.byte	-39
 4307 005a DA       		.byte	-38
 4308 005b DB       		.byte	-37
 4309 005c DC       		.byte	-36
 4310 005d DD       		.byte	-35
 4311 005e DE       		.byte	-34
 4312 005f DF       		.byte	-33
 4313 0060 E0       		.byte	-32
 4314 0061 E1       		.byte	-31
 4315 0062 E2       		.byte	-30
 4316 0063 E3       		.byte	-29
 4317 0064 E5       		.byte	-27
 4318 0065 E5       		.byte	-27
 4319 0066 E6       		.byte	-26
 4320 0067 E7       		.byte	-25
 4321 0068 E7       		.byte	-25
 4322 0069 E9       		.byte	-23
 4323 006a EA       		.byte	-22
 4324 006b EB       		.byte	-21
 4325 006c ED       		.byte	-19
 4326 006d ED       		.byte	-19
 4327 006e EE       		.byte	-18
 4328 006f EF       		.byte	-17
 4329 0070 F0       		.byte	-16
 4330 0071 F1       		.byte	-15
 4331 0072 F2       		.byte	-14
 4332 0073 F3       		.byte	-13
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 77


 4333 0074 F4       		.byte	-12
 4334 0075 F5       		.byte	-11
 4335 0076 F6       		.byte	-10
 4336 0077 F7       		.byte	-9
 4337 0078 F8       		.byte	-8
 4338 0079 F9       		.byte	-7
 4339 007a FA       		.byte	-6
 4340 007b FB       		.byte	-5
 4341 007c FC       		.byte	-4
 4342 007d FD       		.byte	-3
 4343 007e FE       		.byte	-2
 4344 007f FF       		.byte	-1
 4345              		.section	.bss.Fsid,"aw",%nobits
 4346              		.align	1
 4347              		.set	.LANCHOR1,. + 0
 4348              		.type	Fsid, %object
 4349              		.size	Fsid, 2
 4350              	Fsid:
 4351 0000 0000     		.space	2
 4352              		.section	.rodata.str1.4,"aMS",%progbits,1
 4353              		.align	2
 4354              	.LC0:
 4355 0000 222A3A3C 		.ascii	"\"*:<>?|\177\000"
 4355      3E3F7C7F 
 4355      00
 4356 0009 000000   		.space	3
 4357              	.LC1:
 4358 000c 2B2C3B3D 		.ascii	"+,;=[]\000"
 4358      5B5D00
 4359 0013 00       		.section	.rodata.LfnOfs,"a",%progbits
 4360              		.align	2
 4361              		.set	.LANCHOR2,. + 0
 4362              		.type	LfnOfs, %object
 4363              		.size	LfnOfs, 13
 4364              	LfnOfs:
 4365 0000 01       		.byte	1
 4366 0001 03       		.byte	3
 4367 0002 05       		.byte	5
 4368 0003 07       		.byte	7
 4369 0004 09       		.byte	9
 4370 0005 0E       		.byte	14
 4371 0006 10       		.byte	16
 4372 0007 12       		.byte	18
 4373 0008 14       		.byte	20
 4374 0009 16       		.byte	22
 4375 000a 18       		.byte	24
 4376 000b 1C       		.byte	28
 4377 000c 1E       		.byte	30
 4378 000d 000000   		.section	.bss.FatFs,"aw",%nobits
 4379              		.align	2
 4380              		.set	.LANCHOR0,. + 0
 4381              		.type	FatFs, %object
 4382              		.size	FatFs, 8
 4383              	FatFs:
 4384 0000 00000000 		.space	8
 4384      00000000 
 4385              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccnXqRp.s 			page 78


