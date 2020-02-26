ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccM671Zw.s 			page 1


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
  15              		.file	"wizchip_conf.cpp"
  16              		.section	.text._Z16wizchip_sw_resetv,"ax",%progbits
  17              		.align	2
  18              		.global	_Z16wizchip_sw_resetv
  19              		.thumb
  20              		.thumb_func
  21              		.type	_Z16wizchip_sw_resetv, %function
  22              	_Z16wizchip_sw_resetv:
  23              		@ args = 0, pretend = 0, frame = 24
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 00B5     		push	{lr}
  26 0002 87B0     		sub	sp, sp, #28
  27 0004 04A9     		add	r1, sp, #16
  28 0006 4FF41060 		mov	r0, #2304
  29 000a 0622     		movs	r2, #6
  30 000c FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
  31 0010 01A9     		add	r1, sp, #4
  32 0012 4FF48070 		mov	r0, #256
  33 0016 0422     		movs	r2, #4
  34 0018 FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
  35 001c 02A9     		add	r1, sp, #8
  36 001e 4FF4A060 		mov	r0, #1280
  37 0022 0422     		movs	r2, #4
  38 0024 FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
  39 0028 0422     		movs	r2, #4
  40 002a 03A9     		add	r1, sp, #12
  41 002c 4FF47060 		mov	r0, #3840
  42 0030 FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
  43 0034 8021     		movs	r1, #128
  44 0036 0020     		movs	r0, #0
  45 0038 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
  46 003c 0020     		movs	r0, #0
  47 003e FFF7FEFF 		bl	_Z12WIZCHIP_READm
  48 0042 04A9     		add	r1, sp, #16
  49 0044 4FF41060 		mov	r0, #2304
  50 0048 0622     		movs	r2, #6
  51 004a FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
  52 004e 01A9     		add	r1, sp, #4
  53 0050 4FF48070 		mov	r0, #256
  54 0054 0422     		movs	r2, #4
  55 0056 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
  56 005a 02A9     		add	r1, sp, #8
  57 005c 4FF4A060 		mov	r0, #1280
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccM671Zw.s 			page 2


  58 0060 0422     		movs	r2, #4
  59 0062 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
  60 0066 03A9     		add	r1, sp, #12
  61 0068 4FF47060 		mov	r0, #3840
  62 006c 0422     		movs	r2, #4
  63 006e FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
  64 0072 07B0     		add	sp, sp, #28
  65              		@ sp needed
  66 0074 5DF804FB 		ldr	pc, [sp], #4
  67              		.size	_Z16wizchip_sw_resetv, .-_Z16wizchip_sw_resetv
  68              		.section	.text._Z12wizchip_initPKhS0_,"ax",%progbits
  69              		.align	2
  70              		.global	_Z12wizchip_initPKhS0_
  71              		.thumb
  72              		.thumb_func
  73              		.type	_Z12wizchip_initPKhS0_, %function
  74              	_Z12wizchip_initPKhS0_:
  75              		@ args = 0, pretend = 0, frame = 0
  76              		@ frame_needed = 0, uses_anonymous_args = 0
  77 0000 70B5     		push	{r4, r5, r6, lr}
  78 0002 0546     		mov	r5, r0
  79 0004 0E46     		mov	r6, r1
  80 0006 FFF7FEFF 		bl	_ZN6WizSpi4InitEv
  81 000a FFF7FEFF 		bl	_Z16wizchip_sw_resetv
  82 000e BDB1     		cbz	r5, .L10
  83 0010 0023     		movs	r3, #0
  84 0012 1A46     		mov	r2, r3
  85              	.L9:
  86 0014 E95C     		ldrb	r1, [r5, r3]	@ zero_extendqisi2
  87 0016 0A44     		add	r2, r2, r1
  88 0018 D2B2     		uxtb	r2, r2
  89 001a 54B2     		sxtb	r4, r2
  90 001c 102C     		cmp	r4, #16
  91 001e 03F10103 		add	r3, r3, #1
  92 0022 29DC     		bgt	.L12
  93 0024 082B     		cmp	r3, #8
  94 0026 F5D1     		bne	.L9
  95 0028 013D     		subs	r5, r5, #1
  96 002a 0124     		movs	r4, #1
  97              	.L11:
  98 002c E000     		lsls	r0, r4, #3
  99 002e 00F5F850 		add	r0, r0, #7936
 100 0032 0434     		adds	r4, r4, #4
 101 0034 15F8011F 		ldrb	r1, [r5, #1]!	@ zero_extendqisi2
 102 0038 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 103 003c 212C     		cmp	r4, #33
 104 003e F5D1     		bne	.L11
 105              	.L10:
 106 0040 BEB1     		cbz	r6, .L5
 107 0042 0023     		movs	r3, #0
 108 0044 1A46     		mov	r2, r3
 109              	.L14:
 110 0046 F15C     		ldrb	r1, [r6, r3]	@ zero_extendqisi2
 111 0048 0A44     		add	r2, r2, r1
 112 004a D2B2     		uxtb	r2, r2
 113 004c 51B2     		sxtb	r1, r2
 114 004e 1029     		cmp	r1, #16
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccM671Zw.s 			page 3


 115 0050 03F10103 		add	r3, r3, #1
 116 0054 10DC     		bgt	.L12
 117 0056 082B     		cmp	r3, #8
 118 0058 F5D1     		bne	.L14
 119 005a 013E     		subs	r6, r6, #1
 120 005c 0124     		movs	r4, #1
 121              	.L15:
 122 005e E000     		lsls	r0, r4, #3
 123 0060 00F5F050 		add	r0, r0, #7680
 124 0064 0434     		adds	r4, r4, #4
 125 0066 16F8011F 		ldrb	r1, [r6, #1]!	@ zero_extendqisi2
 126 006a FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 127 006e 212C     		cmp	r4, #33
 128 0070 F5D1     		bne	.L15
 129              	.L5:
 130 0072 0020     		movs	r0, #0
 131 0074 40B2     		sxtb	r0, r0
 132 0076 70BD     		pop	{r4, r5, r6, pc}
 133              	.L12:
 134 0078 FF20     		movs	r0, #255
 135 007a 40B2     		sxtb	r0, r0
 136 007c 70BD     		pop	{r4, r5, r6, pc}
 137              		.size	_Z12wizchip_initPKhS0_, .-_Z12wizchip_initPKhS0_
 138 007e 00BF     		.section	.text._Z20wizchip_clrinterrupt9intr_kind,"ax",%progbits
 139              		.align	2
 140              		.global	_Z20wizchip_clrinterrupt9intr_kind
 141              		.thumb
 142              		.thumb_func
 143              		.type	_Z20wizchip_clrinterrupt9intr_kind, %function
 144              	_Z20wizchip_clrinterrupt9intr_kind:
 145              		@ args = 0, pretend = 0, frame = 0
 146              		@ frame_needed = 0, uses_anonymous_args = 0
 147 0000 10B5     		push	{r4, lr}
 148 0002 00F0F001 		and	r1, r0, #240
 149 0006 0446     		mov	r4, r0
 150 0008 4FF4A850 		mov	r0, #5376
 151 000c FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 152 0010 210A     		lsrs	r1, r4, #8
 153 0012 4FF4B850 		mov	r0, #5888
 154 0016 BDE81040 		pop	{r4, lr}
 155 001a FFF7FEBF 		b	_Z13WIZCHIP_WRITEmh
 156              		.size	_Z20wizchip_clrinterrupt9intr_kind, .-_Z20wizchip_clrinterrupt9intr_kind
 157 001e 00BF     		.section	.text._Z20wizchip_getinterruptv,"ax",%progbits
 158              		.align	2
 159              		.global	_Z20wizchip_getinterruptv
 160              		.thumb
 161              		.thumb_func
 162              		.type	_Z20wizchip_getinterruptv, %function
 163              	_Z20wizchip_getinterruptv:
 164              		@ args = 0, pretend = 0, frame = 0
 165              		@ frame_needed = 0, uses_anonymous_args = 0
 166 0000 10B5     		push	{r4, lr}
 167 0002 4FF4A850 		mov	r0, #5376
 168 0006 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 169 000a 0446     		mov	r4, r0
 170 000c 4FF4B850 		mov	r0, #5888
 171 0010 FFF7FEFF 		bl	_Z12WIZCHIP_READm
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccM671Zw.s 			page 4


 172 0014 04F0F003 		and	r3, r4, #240
 173 0018 43EA0020 		orr	r0, r3, r0, lsl #8
 174 001c 80B2     		uxth	r0, r0
 175 001e 10BD     		pop	{r4, pc}
 176              		.size	_Z20wizchip_getinterruptv, .-_Z20wizchip_getinterruptv
 177              		.section	.text._Z24wizchip_setinterruptmask9intr_kind,"ax",%progbits
 178              		.align	2
 179              		.global	_Z24wizchip_setinterruptmask9intr_kind
 180              		.thumb
 181              		.thumb_func
 182              		.type	_Z24wizchip_setinterruptmask9intr_kind, %function
 183              	_Z24wizchip_setinterruptmask9intr_kind:
 184              		@ args = 0, pretend = 0, frame = 0
 185              		@ frame_needed = 0, uses_anonymous_args = 0
 186 0000 10B5     		push	{r4, lr}
 187 0002 C1B2     		uxtb	r1, r0
 188 0004 0446     		mov	r4, r0
 189 0006 4FF4B050 		mov	r0, #5632
 190 000a FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 191 000e 210A     		lsrs	r1, r4, #8
 192 0010 4FF4C050 		mov	r0, #6144
 193 0014 BDE81040 		pop	{r4, lr}
 194 0018 FFF7FEBF 		b	_Z13WIZCHIP_WRITEmh
 195              		.size	_Z24wizchip_setinterruptmask9intr_kind, .-_Z24wizchip_setinterruptmask9intr_kind
 196              		.section	.text._Z24wizchip_getinterruptmaskv,"ax",%progbits
 197              		.align	2
 198              		.global	_Z24wizchip_getinterruptmaskv
 199              		.thumb
 200              		.thumb_func
 201              		.type	_Z24wizchip_getinterruptmaskv, %function
 202              	_Z24wizchip_getinterruptmaskv:
 203              		@ args = 0, pretend = 0, frame = 0
 204              		@ frame_needed = 0, uses_anonymous_args = 0
 205 0000 10B5     		push	{r4, lr}
 206 0002 4FF4B050 		mov	r0, #5632
 207 0006 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 208 000a 0446     		mov	r4, r0
 209 000c 4FF4C050 		mov	r0, #6144
 210 0010 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 211 0014 44EA0020 		orr	r0, r4, r0, lsl #8
 212 0018 80B2     		uxth	r0, r0
 213 001a 10BD     		pop	{r4, pc}
 214              		.size	_Z24wizchip_getinterruptmaskv, .-_Z24wizchip_getinterruptmaskv
 215              		.section	.text._Z17wizphy_getphylinkv,"ax",%progbits
 216              		.align	2
 217              		.global	_Z17wizphy_getphylinkv
 218              		.thumb
 219              		.thumb_func
 220              		.type	_Z17wizphy_getphylinkv, %function
 221              	_Z17wizphy_getphylinkv:
 222              		@ args = 0, pretend = 0, frame = 0
 223              		@ frame_needed = 0, uses_anonymous_args = 0
 224 0000 08B5     		push	{r3, lr}
 225 0002 4FF43850 		mov	r0, #11776
 226 0006 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 227 000a 00F00100 		and	r0, r0, #1
 228 000e 08BD     		pop	{r3, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccM671Zw.s 			page 5


 229              		.size	_Z17wizphy_getphylinkv, .-_Z17wizphy_getphylinkv
 230              		.section	.text._Z18wizphy_getphypmodev,"ax",%progbits
 231              		.align	2
 232              		.global	_Z18wizphy_getphypmodev
 233              		.thumb
 234              		.thumb_func
 235              		.type	_Z18wizphy_getphypmodev, %function
 236              	_Z18wizphy_getphypmodev:
 237              		@ args = 0, pretend = 0, frame = 0
 238              		@ frame_needed = 0, uses_anonymous_args = 0
 239 0000 08B5     		push	{r3, lr}
 240 0002 4FF43850 		mov	r0, #11776
 241 0006 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 242 000a 10F0300F 		tst	r0, #48
 243 000e 0CBF     		ite	eq
 244 0010 0020     		moveq	r0, #0
 245 0012 0120     		movne	r0, #1
 246 0014 08BD     		pop	{r3, pc}
 247              		.size	_Z18wizphy_getphypmodev, .-_Z18wizphy_getphypmodev
 248 0016 00BF     		.section	.text._Z12wizphy_resetv,"ax",%progbits
 249              		.align	2
 250              		.global	_Z12wizphy_resetv
 251              		.thumb
 252              		.thumb_func
 253              		.type	_Z12wizphy_resetv, %function
 254              	_Z12wizphy_resetv:
 255              		@ args = 0, pretend = 0, frame = 0
 256              		@ frame_needed = 0, uses_anonymous_args = 0
 257 0000 08B5     		push	{r3, lr}
 258 0002 4FF43850 		mov	r0, #11776
 259 0006 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 260 000a 00F07F01 		and	r1, r0, #127
 261 000e 4FF43850 		mov	r0, #11776
 262 0012 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 263 0016 4FF43850 		mov	r0, #11776
 264 001a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 265 001e 60F07F01 		orn	r1, r0, #127
 266 0022 C9B2     		uxtb	r1, r1
 267 0024 4FF43850 		mov	r0, #11776
 268 0028 BDE80840 		pop	{r3, lr}
 269 002c FFF7FEBF 		b	_Z13WIZCHIP_WRITEmh
 270              		.size	_Z12wizphy_resetv, .-_Z12wizphy_resetv
 271              		.section	.text._Z17wizphy_setphyconfP11wiz_PhyConf,"ax",%progbits
 272              		.align	2
 273              		.global	_Z17wizphy_setphyconfP11wiz_PhyConf
 274              		.thumb
 275              		.thumb_func
 276              		.type	_Z17wizphy_setphyconfP11wiz_PhyConf, %function
 277              	_Z17wizphy_setphyconfP11wiz_PhyConf:
 278              		@ args = 0, pretend = 0, frame = 0
 279              		@ frame_needed = 0, uses_anonymous_args = 0
 280 0000 08B5     		push	{r3, lr}
 281 0002 0278     		ldrb	r2, [r0]	@ zero_extendqisi2
 282 0004 4378     		ldrb	r3, [r0, #1]	@ zero_extendqisi2
 283 0006 012A     		cmp	r2, #1
 284 0008 14BF     		ite	ne
 285 000a 0021     		movne	r1, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccM671Zw.s 			page 6


 286 000c 4021     		moveq	r1, #64
 287 000e 012B     		cmp	r3, #1
 288 0010 1DD0     		beq	.L39
 289 0012 C378     		ldrb	r3, [r0, #3]	@ zero_extendqisi2
 290 0014 012B     		cmp	r3, #1
 291 0016 8378     		ldrb	r3, [r0, #2]	@ zero_extendqisi2
 292 0018 0BD0     		beq	.L40
 293 001a 012B     		cmp	r3, #1
 294 001c 08BF     		it	eq
 295 001e 41F01001 		orreq	r1, r1, #16
 296 0022 4FF43850 		mov	r0, #11776
 297 0026 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 298 002a BDE80840 		pop	{r3, lr}
 299 002e FFF7FEBF 		b	_Z12wizphy_resetv
 300              	.L40:
 301 0032 012B     		cmp	r3, #1
 302 0034 0CBF     		ite	eq
 303 0036 41F01801 		orreq	r1, r1, #24
 304 003a 41F00801 		orrne	r1, r1, #8
 305 003e 4FF43850 		mov	r0, #11776
 306 0042 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 307 0046 BDE80840 		pop	{r3, lr}
 308 004a FFF7FEBF 		b	_Z12wizphy_resetv
 309              	.L39:
 310 004e 41F03801 		orr	r1, r1, #56
 311 0052 C9B2     		uxtb	r1, r1
 312 0054 4FF43850 		mov	r0, #11776
 313 0058 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 314 005c BDE80840 		pop	{r3, lr}
 315 0060 FFF7FEBF 		b	_Z12wizphy_resetv
 316              		.size	_Z17wizphy_setphyconfP11wiz_PhyConf, .-_Z17wizphy_setphyconfP11wiz_PhyConf
 317              		.section	.text._Z17wizphy_getphyconfP11wiz_PhyConf,"ax",%progbits
 318              		.align	2
 319              		.global	_Z17wizphy_getphyconfP11wiz_PhyConf
 320              		.thumb
 321              		.thumb_func
 322              		.type	_Z17wizphy_getphyconfP11wiz_PhyConf, %function
 323              	_Z17wizphy_getphyconfP11wiz_PhyConf:
 324              		@ args = 0, pretend = 0, frame = 0
 325              		@ frame_needed = 0, uses_anonymous_args = 0
 326 0000 10B5     		push	{r4, lr}
 327 0002 0446     		mov	r4, r0
 328 0004 4FF43850 		mov	r0, #11776
 329 0008 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 330 000c C0F38013 		ubfx	r3, r0, #6, #1
 331 0010 00F03800 		and	r0, r0, #56
 332 0014 2028     		cmp	r0, #32
 333 0016 2370     		strb	r3, [r4]
 334 0018 21D0     		beq	.L43
 335 001a 3828     		cmp	r0, #56
 336 001c 1FD0     		beq	.L43
 337 001e 0023     		movs	r3, #0
 338 0020 6370     		strb	r3, [r4, #1]
 339              	.L44:
 340 0022 A0F11003 		sub	r3, r0, #16
 341 0026 DBB2     		uxtb	r3, r3
 342 0028 102B     		cmp	r3, #16
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccM671Zw.s 			page 7


 343 002a 07D8     		bhi	.L45
 344 002c 0122     		movs	r2, #1
 345 002e 02FA03F3 		lsl	r3, r2, r3
 346 0032 03F00133 		and	r3, r3, #16843009
 347 0036 23F08073 		bic	r3, r3, #16777216
 348 003a 9BB9     		cbnz	r3, .L63
 349              	.L45:
 350 003c 0023     		movs	r3, #0
 351 003e A370     		strb	r3, [r4, #2]
 352              	.L46:
 353 0040 0838     		subs	r0, r0, #8
 354 0042 C0B2     		uxtb	r0, r0
 355 0044 1828     		cmp	r0, #24
 356 0046 07D8     		bhi	.L47
 357 0048 0123     		movs	r3, #1
 358 004a 03FA00F0 		lsl	r0, r3, r0
 359 004e 00F00130 		and	r0, r0, #16843009
 360 0052 20F48070 		bic	r0, r0, #256
 361 0056 00B9     		cbnz	r0, .L62
 362              	.L47:
 363 0058 0023     		movs	r3, #0
 364              	.L62:
 365 005a E370     		strb	r3, [r4, #3]
 366 005c 10BD     		pop	{r4, pc}
 367              	.L43:
 368 005e 0123     		movs	r3, #1
 369 0060 6370     		strb	r3, [r4, #1]
 370 0062 DEE7     		b	.L44
 371              	.L63:
 372 0064 A270     		strb	r2, [r4, #2]
 373 0066 EBE7     		b	.L46
 374              		.size	_Z17wizphy_getphyconfP11wiz_PhyConf, .-_Z17wizphy_getphyconfP11wiz_PhyConf
 375              		.section	.text._Z17wizphy_getphystatP11wiz_PhyConf,"ax",%progbits
 376              		.align	2
 377              		.global	_Z17wizphy_getphystatP11wiz_PhyConf
 378              		.thumb
 379              		.thumb_func
 380              		.type	_Z17wizphy_getphystatP11wiz_PhyConf, %function
 381              	_Z17wizphy_getphystatP11wiz_PhyConf:
 382              		@ args = 0, pretend = 0, frame = 0
 383              		@ frame_needed = 0, uses_anonymous_args = 0
 384 0000 10B5     		push	{r4, lr}
 385 0002 0446     		mov	r4, r0
 386 0004 4FF43850 		mov	r0, #11776
 387 0008 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 388 000c C0F38003 		ubfx	r3, r0, #2, #1
 389 0010 C0F34000 		ubfx	r0, r0, #1, #1
 390 0014 E370     		strb	r3, [r4, #3]
 391 0016 A070     		strb	r0, [r4, #2]
 392 0018 10BD     		pop	{r4, pc}
 393              		.size	_Z17wizphy_getphystatP11wiz_PhyConf, .-_Z17wizphy_getphystatP11wiz_PhyConf
 394 001a 00BF     		.section	.text._Z18wizphy_setphypmodeh,"ax",%progbits
 395              		.align	2
 396              		.global	_Z18wizphy_setphypmodeh
 397              		.thumb
 398              		.thumb_func
 399              		.type	_Z18wizphy_setphypmodeh, %function
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccM671Zw.s 			page 8


 400              	_Z18wizphy_setphypmodeh:
 401              		@ args = 0, pretend = 0, frame = 0
 402              		@ frame_needed = 0, uses_anonymous_args = 0
 403 0000 10B5     		push	{r4, lr}
 404 0002 0446     		mov	r4, r0
 405 0004 4FF43850 		mov	r0, #11776
 406 0008 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 407 000c 4306     		lsls	r3, r0, #25
 408 000e 29D5     		bpl	.L68
 409 0010 012C     		cmp	r4, #1
 410 0012 00F0C701 		and	r1, r0, #199
 411 0016 12D0     		beq	.L69
 412 0018 41F03801 		orr	r1, r1, #56
 413 001c 4FF43850 		mov	r0, #11776
 414 0020 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 415 0024 FFF7FEFF 		bl	_Z12wizphy_resetv
 416 0028 4FF43850 		mov	r0, #11776
 417 002c FFF7FEFF 		bl	_Z12WIZCHIP_READm
 418 0030 10F0380F 		tst	r0, #56
 419 0034 0CBF     		ite	eq
 420 0036 FF20     		moveq	r0, #255
 421 0038 0020     		movne	r0, #0
 422              	.L66:
 423 003a 40B2     		sxtb	r0, r0
 424 003c 10BD     		pop	{r4, pc}
 425              	.L69:
 426 003e 41F03001 		orr	r1, r1, #48
 427 0042 4FF43850 		mov	r0, #11776
 428 0046 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 429 004a FFF7FEFF 		bl	_Z12wizphy_resetv
 430 004e 4FF43850 		mov	r0, #11776
 431 0052 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 432 0056 10F0300F 		tst	r0, #48
 433 005a 0CBF     		ite	eq
 434 005c FF20     		moveq	r0, #255
 435 005e 0020     		movne	r0, #0
 436 0060 40B2     		sxtb	r0, r0
 437 0062 10BD     		pop	{r4, pc}
 438              	.L68:
 439 0064 FF20     		movs	r0, #255
 440 0066 E8E7     		b	.L66
 441              		.size	_Z18wizphy_setphypmodeh, .-_Z18wizphy_setphypmodeh
 442              		.section	.text._Z10ctlwizchip15ctlwizchip_typePv,"ax",%progbits
 443              		.align	2
 444              		.global	_Z10ctlwizchip15ctlwizchip_typePv
 445              		.thumb
 446              		.thumb_func
 447              		.type	_Z10ctlwizchip15ctlwizchip_typePv, %function
 448              	_Z10ctlwizchip15ctlwizchip_typePv:
 449              		@ args = 0, pretend = 0, frame = 0
 450              		@ frame_needed = 0, uses_anonymous_args = 0
 451 0000 38B5     		push	{r3, r4, r5, lr}
 452 0002 0C46     		mov	r4, r1
 453 0004 0F28     		cmp	r0, #15
 454 0006 75D8     		bhi	.L71
 455 0008 DFE800F0 		tbb	[pc, r0]
 456              	.L73:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccM671Zw.s 			page 9


 457 000c 25       		.byte	(.L72-.L73)/2
 458 000d 29       		.byte	(.L74-.L73)/2
 459 000e 30       		.byte	(.L75-.L73)/2
 460 000f 35       		.byte	(.L76-.L73)/2
 461 0010 3A       		.byte	(.L77-.L73)/2
 462 0011 3F       		.byte	(.L78-.L73)/2
 463 0012 44       		.byte	(.L79-.L73)/2
 464 0013 51       		.byte	(.L80-.L73)/2
 465 0014 5F       		.byte	(.L81-.L73)/2
 466 0015 66       		.byte	(.L82-.L73)/2
 467 0016 6A       		.byte	(.L83-.L73)/2
 468 0017 6F       		.byte	(.L84-.L73)/2
 469 0018 08       		.byte	(.L90-.L73)/2
 470 0019 0B       		.byte	(.L86-.L73)/2
 471 001a 10       		.byte	(.L87-.L73)/2
 472 001b 1C       		.byte	(.L88-.L73)/2
 473              		.align	1
 474              	.L90:
 475 001c 0023     		movs	r3, #0
 476              	.L85:
 477 001e 58B2     		sxtb	r0, r3
 478 0020 38BD     		pop	{r3, r4, r5, pc}
 479              	.L86:
 480 0022 0878     		ldrb	r0, [r1]	@ zero_extendqisi2
 481 0024 BDE83840 		pop	{r3, r4, r5, lr}
 482 0028 FFF7FEBF 		b	_Z18wizphy_setphypmodeh
 483              	.L87:
 484 002c 4FF43850 		mov	r0, #11776
 485 0030 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 486 0034 10F0300F 		tst	r0, #48
 487 0038 0CBF     		ite	eq
 488 003a 0023     		moveq	r3, #0
 489 003c 0123     		movne	r3, #1
 490 003e 2370     		strb	r3, [r4]
 491 0040 0023     		movs	r3, #0
 492 0042 ECE7     		b	.L85
 493              	.L88:
 494 0044 4FF43850 		mov	r0, #11776
 495 0048 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 496 004c 00F00100 		and	r0, r0, #1
 497 0050 2070     		strb	r0, [r4]
 498 0052 0023     		movs	r3, #0
 499 0054 E3E7     		b	.L85
 500              	.L72:
 501 0056 FFF7FEFF 		bl	_Z16wizchip_sw_resetv
 502 005a 0023     		movs	r3, #0
 503 005c DFE7     		b	.L85
 504              	.L74:
 505 005e 01B1     		cbz	r1, .L89
 506 0060 0831     		adds	r1, r1, #8
 507              	.L89:
 508 0062 2046     		mov	r0, r4
 509 0064 BDE83840 		pop	{r3, r4, r5, lr}
 510 0068 FFF7FEBF 		b	_Z12wizchip_initPKhS0_
 511              	.L75:
 512 006c FFF7FEFF 		bl	_Z20wizchip_getinterruptv
 513 0070 0023     		movs	r3, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccM671Zw.s 			page 10


 514 0072 2080     		strh	r0, [r4]	@ movhi
 515 0074 D3E7     		b	.L85
 516              	.L76:
 517 0076 0888     		ldrh	r0, [r1]
 518 0078 FFF7FEFF 		bl	_Z20wizchip_clrinterrupt9intr_kind
 519 007c 0023     		movs	r3, #0
 520 007e CEE7     		b	.L85
 521              	.L77:
 522 0080 0888     		ldrh	r0, [r1]
 523 0082 FFF7FEFF 		bl	_Z24wizchip_setinterruptmask9intr_kind
 524 0086 0023     		movs	r3, #0
 525 0088 C9E7     		b	.L85
 526              	.L78:
 527 008a FFF7FEFF 		bl	_Z24wizchip_getinterruptmaskv
 528 008e 0023     		movs	r3, #0
 529 0090 2080     		strh	r0, [r4]	@ movhi
 530 0092 C4E7     		b	.L85
 531              	.L79:
 532 0094 0C88     		ldrh	r4, [r1]
 533 0096 4FF49850 		mov	r0, #4864
 534 009a 210A     		lsrs	r1, r4, #8
 535 009c FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 536 00a0 E1B2     		uxtb	r1, r4
 537 00a2 4FF4A050 		mov	r0, #5120
 538 00a6 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 539 00aa 0023     		movs	r3, #0
 540 00ac B7E7     		b	.L85
 541              	.L80:
 542 00ae 4FF49850 		mov	r0, #4864
 543 00b2 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 544 00b6 0546     		mov	r5, r0
 545 00b8 4FF4A050 		mov	r0, #5120
 546 00bc FFF7FEFF 		bl	_Z12WIZCHIP_READm
 547 00c0 40EA0520 		orr	r0, r0, r5, lsl #8
 548 00c4 2080     		strh	r0, [r4]	@ movhi
 549 00c6 0023     		movs	r3, #0
 550 00c8 A9E7     		b	.L85
 551              	.L81:
 552 00ca 0B4B     		ldr	r3, .L92
 553 00cc 1868     		ldr	r0, [r3]	@ unaligned
 554 00ce 9B88     		ldrh	r3, [r3, #4]	@ unaligned
 555 00d0 8B80     		strh	r3, [r1, #4]	@ unaligned
 556 00d2 0860     		str	r0, [r1]	@ unaligned
 557 00d4 0023     		movs	r3, #0
 558 00d6 A2E7     		b	.L85
 559              	.L82:
 560 00d8 FFF7FEFF 		bl	_Z12wizphy_resetv
 561 00dc 0023     		movs	r3, #0
 562 00de 9EE7     		b	.L85
 563              	.L83:
 564 00e0 0846     		mov	r0, r1
 565 00e2 FFF7FEFF 		bl	_Z17wizphy_setphyconfP11wiz_PhyConf
 566 00e6 0023     		movs	r3, #0
 567 00e8 99E7     		b	.L85
 568              	.L84:
 569 00ea 0846     		mov	r0, r1
 570 00ec FFF7FEFF 		bl	_Z17wizphy_getphyconfP11wiz_PhyConf
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccM671Zw.s 			page 11


 571 00f0 0023     		movs	r3, #0
 572 00f2 94E7     		b	.L85
 573              	.L71:
 574 00f4 FF23     		movs	r3, #255
 575 00f6 92E7     		b	.L85
 576              	.L93:
 577              		.align	2
 578              	.L92:
 579 00f8 00000000 		.word	.LC0
 580              		.size	_Z10ctlwizchip15ctlwizchip_typePv, .-_Z10ctlwizchip15ctlwizchip_typePv
 581              		.section	.text._Z18wizchip_setnetinfoP11wiz_NetInfo,"ax",%progbits
 582              		.align	2
 583              		.global	_Z18wizchip_setnetinfoP11wiz_NetInfo
 584              		.thumb
 585              		.thumb_func
 586              		.type	_Z18wizchip_setnetinfoP11wiz_NetInfo, %function
 587              	_Z18wizchip_setnetinfoP11wiz_NetInfo:
 588              		@ args = 0, pretend = 0, frame = 0
 589              		@ frame_needed = 0, uses_anonymous_args = 0
 590 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 591 0002 0146     		mov	r1, r0
 592 0004 0446     		mov	r4, r0
 593 0006 0622     		movs	r2, #6
 594 0008 4FF41060 		mov	r0, #2304
 595 000c FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 596 0010 04F10E01 		add	r1, r4, #14
 597 0014 4FF48070 		mov	r0, #256
 598 0018 0422     		movs	r2, #4
 599 001a FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 600 001e 04F10A01 		add	r1, r4, #10
 601 0022 4FF4A060 		mov	r0, #1280
 602 0026 0422     		movs	r2, #4
 603 0028 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 604 002c A11D     		adds	r1, r4, #6
 605 002e 4FF47060 		mov	r0, #3840
 606 0032 0422     		movs	r2, #4
 607 0034 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 608 0038 064B     		ldr	r3, .L95
 609 003a 074A     		ldr	r2, .L95+4
 610 003c A77C     		ldrb	r7, [r4, #18]	@ zero_extendqisi2
 611 003e E67C     		ldrb	r6, [r4, #19]	@ zero_extendqisi2
 612 0040 257D     		ldrb	r5, [r4, #20]	@ zero_extendqisi2
 613 0042 607D     		ldrb	r0, [r4, #21]	@ zero_extendqisi2
 614 0044 A17D     		ldrb	r1, [r4, #22]	@ zero_extendqisi2
 615 0046 1F70     		strb	r7, [r3]
 616 0048 5E70     		strb	r6, [r3, #1]
 617 004a 9D70     		strb	r5, [r3, #2]
 618 004c D870     		strb	r0, [r3, #3]
 619 004e 1170     		strb	r1, [r2]
 620 0050 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 621              	.L96:
 622 0052 00BF     		.align	2
 623              	.L95:
 624 0054 00000000 		.word	.LANCHOR0
 625 0058 00000000 		.word	.LANCHOR1
 626              		.size	_Z18wizchip_setnetinfoP11wiz_NetInfo, .-_Z18wizchip_setnetinfoP11wiz_NetInfo
 627              		.section	.text._Z18wizchip_getnetinfoP11wiz_NetInfo,"ax",%progbits
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccM671Zw.s 			page 12


 628              		.align	2
 629              		.global	_Z18wizchip_getnetinfoP11wiz_NetInfo
 630              		.thumb
 631              		.thumb_func
 632              		.type	_Z18wizchip_getnetinfoP11wiz_NetInfo, %function
 633              	_Z18wizchip_getnetinfoP11wiz_NetInfo:
 634              		@ args = 0, pretend = 0, frame = 0
 635              		@ frame_needed = 0, uses_anonymous_args = 0
 636 0000 70B5     		push	{r4, r5, r6, lr}
 637 0002 0146     		mov	r1, r0
 638 0004 0446     		mov	r4, r0
 639 0006 0622     		movs	r2, #6
 640 0008 4FF41060 		mov	r0, #2304
 641 000c FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 642 0010 04F10E01 		add	r1, r4, #14
 643 0014 4FF48070 		mov	r0, #256
 644 0018 0422     		movs	r2, #4
 645 001a FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 646 001e 04F10A01 		add	r1, r4, #10
 647 0022 4FF4A060 		mov	r0, #1280
 648 0026 0422     		movs	r2, #4
 649 0028 FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 650 002c A11D     		adds	r1, r4, #6
 651 002e 4FF47060 		mov	r0, #3840
 652 0032 0422     		movs	r2, #4
 653 0034 FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 654 0038 064B     		ldr	r3, .L98
 655 003a 074E     		ldr	r6, .L98+4
 656 003c 1D78     		ldrb	r5, [r3]	@ zero_extendqisi2
 657 003e 5878     		ldrb	r0, [r3, #1]	@ zero_extendqisi2
 658 0040 9978     		ldrb	r1, [r3, #2]	@ zero_extendqisi2
 659 0042 DA78     		ldrb	r2, [r3, #3]	@ zero_extendqisi2
 660 0044 A574     		strb	r5, [r4, #18]
 661 0046 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 662 0048 E074     		strb	r0, [r4, #19]
 663 004a 2175     		strb	r1, [r4, #20]
 664 004c 6275     		strb	r2, [r4, #21]
 665 004e A375     		strb	r3, [r4, #22]
 666 0050 70BD     		pop	{r4, r5, r6, pc}
 667              	.L99:
 668 0052 00BF     		.align	2
 669              	.L98:
 670 0054 00000000 		.word	.LANCHOR0
 671 0058 00000000 		.word	.LANCHOR1
 672              		.size	_Z18wizchip_getnetinfoP11wiz_NetInfo, .-_Z18wizchip_getnetinfoP11wiz_NetInfo
 673              		.section	.text._Z18wizchip_setnetmode12netmode_type,"ax",%progbits
 674              		.align	2
 675              		.global	_Z18wizchip_setnetmode12netmode_type
 676              		.thumb
 677              		.thumb_func
 678              		.type	_Z18wizchip_setnetmode12netmode_type, %function
 679              	_Z18wizchip_setnetmode12netmode_type:
 680              		@ args = 0, pretend = 0, frame = 0
 681              		@ frame_needed = 0, uses_anonymous_args = 0
 682 0000 38B5     		push	{r3, r4, r5, lr}
 683 0002 30F03A05 		bics	r5, r0, #58
 684 0006 0446     		mov	r4, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccM671Zw.s 			page 13


 685 0008 0BD1     		bne	.L102
 686 000a 2846     		mov	r0, r5
 687 000c FFF7FEFF 		bl	_Z12WIZCHIP_READm
 688 0010 40EA0401 		orr	r1, r0, r4
 689 0014 C9B2     		uxtb	r1, r1
 690 0016 2846     		mov	r0, r5
 691 0018 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 692 001c 2846     		mov	r0, r5
 693              	.L101:
 694 001e 40B2     		sxtb	r0, r0
 695 0020 38BD     		pop	{r3, r4, r5, pc}
 696              	.L102:
 697 0022 FF20     		movs	r0, #255
 698 0024 FBE7     		b	.L101
 699              		.size	_Z18wizchip_setnetmode12netmode_type, .-_Z18wizchip_setnetmode12netmode_type
 700 0026 00BF     		.section	.text._Z18wizchip_getnetmodev,"ax",%progbits
 701              		.align	2
 702              		.global	_Z18wizchip_getnetmodev
 703              		.thumb
 704              		.thumb_func
 705              		.type	_Z18wizchip_getnetmodev, %function
 706              	_Z18wizchip_getnetmodev:
 707              		@ args = 0, pretend = 0, frame = 0
 708              		@ frame_needed = 0, uses_anonymous_args = 0
 709              		@ link register save eliminated.
 710 0000 0020     		movs	r0, #0
 711 0002 FFF7FEBF 		b	_Z12WIZCHIP_READm
 712              		.size	_Z18wizchip_getnetmodev, .-_Z18wizchip_getnetmodev
 713 0006 00BF     		.section	.text._Z18wizchip_settimeoutP14wiz_NetTimeout,"ax",%progbits
 714              		.align	2
 715              		.global	_Z18wizchip_settimeoutP14wiz_NetTimeout
 716              		.thumb
 717              		.thumb_func
 718              		.type	_Z18wizchip_settimeoutP14wiz_NetTimeout, %function
 719              	_Z18wizchip_settimeoutP14wiz_NetTimeout:
 720              		@ args = 0, pretend = 0, frame = 0
 721              		@ frame_needed = 0, uses_anonymous_args = 0
 722 0000 10B5     		push	{r4, lr}
 723 0002 0446     		mov	r4, r0
 724 0004 4FF4D850 		mov	r0, #6912
 725 0008 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 726 000a FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 727 000e 6488     		ldrh	r4, [r4, #2]
 728 0010 4FF4C850 		mov	r0, #6400
 729 0014 210A     		lsrs	r1, r4, #8
 730 0016 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 731 001a E1B2     		uxtb	r1, r4
 732 001c 4FF4D050 		mov	r0, #6656
 733 0020 BDE81040 		pop	{r4, lr}
 734 0024 FFF7FEBF 		b	_Z13WIZCHIP_WRITEmh
 735              		.size	_Z18wizchip_settimeoutP14wiz_NetTimeout, .-_Z18wizchip_settimeoutP14wiz_NetTimeout
 736              		.section	.text._Z18wizchip_gettimeoutP14wiz_NetTimeout,"ax",%progbits
 737              		.align	2
 738              		.global	_Z18wizchip_gettimeoutP14wiz_NetTimeout
 739              		.thumb
 740              		.thumb_func
 741              		.type	_Z18wizchip_gettimeoutP14wiz_NetTimeout, %function
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccM671Zw.s 			page 14


 742              	_Z18wizchip_gettimeoutP14wiz_NetTimeout:
 743              		@ args = 0, pretend = 0, frame = 0
 744              		@ frame_needed = 0, uses_anonymous_args = 0
 745 0000 38B5     		push	{r3, r4, r5, lr}
 746 0002 0446     		mov	r4, r0
 747 0004 4FF4D850 		mov	r0, #6912
 748 0008 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 749 000c 2070     		strb	r0, [r4]
 750 000e 4FF4C850 		mov	r0, #6400
 751 0012 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 752 0016 0546     		mov	r5, r0
 753 0018 4FF4D050 		mov	r0, #6656
 754 001c FFF7FEFF 		bl	_Z12WIZCHIP_READm
 755 0020 00EB0520 		add	r0, r0, r5, lsl #8
 756 0024 6080     		strh	r0, [r4, #2]	@ movhi
 757 0026 38BD     		pop	{r3, r4, r5, pc}
 758              		.size	_Z18wizchip_gettimeoutP14wiz_NetTimeout, .-_Z18wizchip_gettimeoutP14wiz_NetTimeout
 759              		.section	.text._Z10ctlnetwork15ctlnetwork_typePv,"ax",%progbits
 760              		.align	2
 761              		.global	_Z10ctlnetwork15ctlnetwork_typePv
 762              		.thumb
 763              		.thumb_func
 764              		.type	_Z10ctlnetwork15ctlnetwork_typePv, %function
 765              	_Z10ctlnetwork15ctlnetwork_typePv:
 766              		@ args = 0, pretend = 0, frame = 8
 767              		@ frame_needed = 0, uses_anonymous_args = 0
 768 0000 00B5     		push	{lr}
 769 0002 83B0     		sub	sp, sp, #12
 770 0004 0528     		cmp	r0, #5
 771 0006 35D8     		bhi	.L115
 772 0008 DFE800F0 		tbb	[pc, r0]
 773              	.L109:
 774 000c 0B       		.byte	(.L108-.L109)/2
 775 000d 13       		.byte	(.L110-.L109)/2
 776 000e 1B       		.byte	(.L111-.L109)/2
 777 000f 21       		.byte	(.L112-.L109)/2
 778 0010 2C       		.byte	(.L113-.L109)/2
 779 0011 03       		.byte	(.L114-.L109)/2
 780              		.align	1
 781              	.L114:
 782 0012 0846     		mov	r0, r1
 783 0014 FFF7FEFF 		bl	_Z18wizchip_gettimeoutP14wiz_NetTimeout
 784 0018 0023     		movs	r3, #0
 785              	.L107:
 786 001a 58B2     		sxtb	r0, r3
 787 001c 03B0     		add	sp, sp, #12
 788              		@ sp needed
 789 001e 5DF804FB 		ldr	pc, [sp], #4
 790              	.L108:
 791 0022 0846     		mov	r0, r1
 792 0024 FFF7FEFF 		bl	_Z18wizchip_setnetinfoP11wiz_NetInfo
 793 0028 0023     		movs	r3, #0
 794 002a 58B2     		sxtb	r0, r3
 795 002c 03B0     		add	sp, sp, #12
 796              		@ sp needed
 797 002e 5DF804FB 		ldr	pc, [sp], #4
 798              	.L110:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccM671Zw.s 			page 15


 799 0032 0846     		mov	r0, r1
 800 0034 FFF7FEFF 		bl	_Z18wizchip_getnetinfoP11wiz_NetInfo
 801 0038 0023     		movs	r3, #0
 802 003a 58B2     		sxtb	r0, r3
 803 003c 03B0     		add	sp, sp, #12
 804              		@ sp needed
 805 003e 5DF804FB 		ldr	pc, [sp], #4
 806              	.L111:
 807 0042 0878     		ldrb	r0, [r1]	@ zero_extendqisi2
 808 0044 03B0     		add	sp, sp, #12
 809              		@ sp needed
 810 0046 5DF804EB 		ldr	lr, [sp], #4
 811 004a FFF7FEBF 		b	_Z18wizchip_setnetmode12netmode_type
 812              	.L112:
 813 004e 0020     		movs	r0, #0
 814 0050 0191     		str	r1, [sp, #4]
 815 0052 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 816 0056 0199     		ldr	r1, [sp, #4]
 817 0058 0023     		movs	r3, #0
 818 005a 0870     		strb	r0, [r1]
 819 005c 58B2     		sxtb	r0, r3
 820 005e 03B0     		add	sp, sp, #12
 821              		@ sp needed
 822 0060 5DF804FB 		ldr	pc, [sp], #4
 823              	.L113:
 824 0064 0846     		mov	r0, r1
 825 0066 FFF7FEFF 		bl	_Z18wizchip_settimeoutP14wiz_NetTimeout
 826 006a 0023     		movs	r3, #0
 827 006c 58B2     		sxtb	r0, r3
 828 006e 03B0     		add	sp, sp, #12
 829              		@ sp needed
 830 0070 5DF804FB 		ldr	pc, [sp], #4
 831              	.L115:
 832 0074 FF23     		movs	r3, #255
 833 0076 D0E7     		b	.L107
 834              		.size	_Z10ctlnetwork15ctlnetwork_typePv, .-_Z10ctlnetwork15ctlnetwork_typePv
 835              		.section	.bss._ZL6_DHCP_,"aw",%nobits
 836              		.set	.LANCHOR1,. + 0
 837              		.type	_ZL6_DHCP_, %object
 838              		.size	_ZL6_DHCP_, 1
 839              	_ZL6_DHCP_:
 840 0000 00       		.space	1
 841              		.section	.bss._ZL5_DNS_,"aw",%nobits
 842              		.align	2
 843              		.set	.LANCHOR0,. + 0
 844              		.type	_ZL5_DNS_, %object
 845              		.size	_ZL5_DNS_, 4
 846              	_ZL5_DNS_:
 847 0000 00000000 		.space	4
 848              		.section	.rodata.str1.4,"aMS",%progbits,1
 849              		.align	2
 850              	.LC0:
 851 0000 77353530 		.ascii	"w5500\000"
 851      3000
 852 0006 0000     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 853              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 854              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccM671Zw.s 			page 16


 855              	_ZL28cpu_irq_prev_interrupt_state:
 856 0000 00       		.space	1
 857              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 858              		.align	2
 859              		.type	_ZL32cpu_irq_critical_section_counter, %object
 860              		.size	_ZL32cpu_irq_critical_section_counter, 4
 861              	_ZL32cpu_irq_critical_section_counter:
 862 0000 00000000 		.space	4
 863              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
