ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccK79C8m.s 			page 1


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
  15              		.file	"WizSpi.cpp"
  16              		.section	.text._ZN6WizSpi4InitEv,"ax",%progbits
  17              		.align	2
  18              		.global	_ZN6WizSpi4InitEv
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN6WizSpi4InitEv, %function
  22              	_ZN6WizSpi4InitEv:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 70B5     		push	{r4, r5, r6, lr}
  26 0002 254C     		ldr	r4, .L2
  27 0004 254B     		ldr	r3, .L2+4
  28 0006 2360     		str	r3, [r4]
  29 0008 0020     		movs	r0, #0
  30 000a 0321     		movs	r1, #3
  31 000c FFF7FEFF 		bl	matrix_set_master_burst_type
  32 0010 0020     		movs	r0, #0
  33 0012 4FF48031 		mov	r1, #65536
  34 0016 FFF7FEFF 		bl	matrix_set_slave_default_master_type
  35 001a 214E     		ldr	r6, .L2+8
  36 001c 214D     		ldr	r5, .L2+12
  37 001e 0020     		movs	r0, #0
  38 0020 4FF44C51 		mov	r1, #13056
  39 0024 FFF7FEFF 		bl	matrix_set_slave_priority
  40 0028 0821     		movs	r1, #8
  41 002a 0020     		movs	r0, #0
  42 002c FFF7FEFF 		bl	matrix_set_slave_slot_cycle
  43 0030 3046     		mov	r0, r6
  44 0032 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
  45 0036 A6F11C00 		sub	r0, r6, #28
  46 003a FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
  47 003e A6F13800 		sub	r0, r6, #56
  48 0042 FFF7FEFF 		bl	_Z12ConfigurePinRK14PinDescription
  49 0046 0022     		movs	r2, #0
  50 0048 0421     		movs	r1, #4
  51 004a 0B20     		movs	r0, #11
  52 004c FFF7FEFF 		bl	pinModeDuet
  53 0050 1320     		movs	r0, #19
  54 0052 FFF7FEFF 		bl	pmc_enable_periph_clk
  55 0056 2068     		ldr	r0, [r4]
  56 0058 4FF40071 		mov	r1, #512
  57 005c FFF7FEFF 		bl	pdc_disable_transfer
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccK79C8m.s 			page 2


  58 0060 2068     		ldr	r0, [r4]
  59 0062 0221     		movs	r1, #2
  60 0064 FFF7FEFF 		bl	pdc_disable_transfer
  61 0068 2068     		ldr	r0, [r4]
  62 006a 4FF40071 		mov	r1, #512
  63 006e FFF7FEFF 		bl	pdc_disable_transfer
  64 0072 1122     		movs	r2, #17
  65 0074 0C4B     		ldr	r3, .L2+16
  66 0076 0D48     		ldr	r0, .L2+20
  67 0078 8021     		movs	r1, #128
  68 007a 2960     		str	r1, [r5]
  69 007c 6A60     		str	r2, [r5, #4]
  70 007e 1968     		ldr	r1, [r3]
  71 0080 FFF7FEFF 		bl	spi_calc_baudrate_div
  72 0084 0002     		lsls	r0, r0, #8
  73 0086 00F47F42 		and	r2, r0, #65280
  74 008a 42F00A02 		orr	r2, r2, #10
  75 008e 0123     		movs	r3, #1
  76 0090 2A63     		str	r2, [r5, #48]
  77 0092 2B60     		str	r3, [r5]
  78 0094 70BD     		pop	{r4, r5, r6, pc}
  79              	.L3:
  80 0096 00BF     		.align	2
  81              	.L2:
  82 0098 00000000 		.word	.LANCHOR0
  83 009c 00810840 		.word	1074299136
  84 00a0 88010000 		.word	g_APinDescription+392
  85 00a4 00800840 		.word	1074298880
  86 00a8 00000000 		.word	SystemCoreClock
  87 00ac 005A6202 		.word	40000000
  88              		.size	_ZN6WizSpi4InitEv, .-_ZN6WizSpi4InitEv
  89              		.section	.text._ZN6WizSpi4StopEv,"ax",%progbits
  90              		.align	2
  91              		.global	_ZN6WizSpi4StopEv
  92              		.thumb
  93              		.thumb_func
  94              		.type	_ZN6WizSpi4StopEv, %function
  95              	_ZN6WizSpi4StopEv:
  96              		@ args = 0, pretend = 0, frame = 0
  97              		@ frame_needed = 0, uses_anonymous_args = 0
  98 0000 38B5     		push	{r3, r4, r5, lr}
  99 0002 0E4A     		ldr	r2, .L5
 100 0004 0E4B     		ldr	r3, .L5+4
 101 0006 0F4C     		ldr	r4, .L5+8
 102 0008 4FF40021 		mov	r1, #524288
 103 000c 0225     		movs	r5, #2
 104 000e C2F88010 		str	r1, [r2, #128]
 105 0012 2068     		ldr	r0, [r4]
 106 0014 1D60     		str	r5, [r3]
 107 0016 FFF7FEFF 		bl	pdc_read_rx_counter
 108 001a 2068     		ldr	r0, [r4]
 109 001c 4FF40071 		mov	r1, #512
 110 0020 FFF7FEFF 		bl	pdc_disable_transfer
 111 0024 2946     		mov	r1, r5
 112 0026 2068     		ldr	r0, [r4]
 113 0028 FFF7FEFF 		bl	pdc_disable_transfer
 114 002c 2068     		ldr	r0, [r4]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccK79C8m.s 			page 3


 115 002e 4FF40071 		mov	r1, #512
 116 0032 BDE83840 		pop	{r3, r4, r5, lr}
 117 0036 FFF7FEBF 		b	pdc_disable_transfer
 118              	.L6:
 119 003a 00BF     		.align	2
 120              	.L5:
 121 003c 00E100E0 		.word	-536813312
 122 0040 00800840 		.word	1074298880
 123 0044 00000000 		.word	.LANCHOR0
 124              		.size	_ZN6WizSpi4StopEv, .-_ZN6WizSpi4StopEv
 125              		.section	.text._ZN6WizSpi8AssertSSEv,"ax",%progbits
 126              		.align	2
 127              		.global	_ZN6WizSpi8AssertSSEv
 128              		.thumb
 129              		.thumb_func
 130              		.type	_ZN6WizSpi8AssertSSEv, %function
 131              	_ZN6WizSpi8AssertSSEv:
 132              		@ args = 0, pretend = 0, frame = 0
 133              		@ frame_needed = 0, uses_anonymous_args = 0
 134 0000 10B5     		push	{r4, lr}
 135 0002 054C     		ldr	r4, .L8
 136 0004 0E21     		movs	r1, #14
 137 0006 2046     		mov	r0, r4
 138 0008 FFF7FEFF 		bl	spi_set_peripheral_chip_select_value
 139 000c 0B20     		movs	r0, #11
 140 000e 0021     		movs	r1, #0
 141 0010 FFF7FEFF 		bl	digitalWrite
 142 0014 A368     		ldr	r3, [r4, #8]
 143 0016 10BD     		pop	{r4, pc}
 144              	.L9:
 145              		.align	2
 146              	.L8:
 147 0018 00800840 		.word	1074298880
 148              		.size	_ZN6WizSpi8AssertSSEv, .-_ZN6WizSpi8AssertSSEv
 149              		.section	.text._ZN6WizSpi9ReleaseSSEv,"ax",%progbits
 150              		.align	2
 151              		.global	_ZN6WizSpi9ReleaseSSEv
 152              		.thumb
 153              		.thumb_func
 154              		.type	_ZN6WizSpi9ReleaseSSEv, %function
 155              	_ZN6WizSpi9ReleaseSSEv:
 156              		@ args = 0, pretend = 0, frame = 0
 157              		@ frame_needed = 0, uses_anonymous_args = 0
 158              		@ link register save eliminated.
 159 0000 43F69923 		movw	r3, #15001
 160 0004 0549     		ldr	r1, .L19
 161 0006 01E0     		b	.L11
 162              	.L13:
 163 0008 013B     		subs	r3, r3, #1
 164 000a 02D0     		beq	.L12
 165              	.L11:
 166 000c 0A69     		ldr	r2, [r1, #16]
 167 000e 9205     		lsls	r2, r2, #22
 168 0010 FAD5     		bpl	.L13
 169              	.L12:
 170 0012 0B20     		movs	r0, #11
 171 0014 0121     		movs	r1, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccK79C8m.s 			page 4


 172 0016 FFF7FEBF 		b	digitalWrite
 173              	.L20:
 174 001a 00BF     		.align	2
 175              	.L19:
 176 001c 00800840 		.word	1074298880
 177              		.size	_ZN6WizSpi9ReleaseSSEv, .-_ZN6WizSpi9ReleaseSSEv
 178              		.section	.text._ZN6WizSpi11SendAddressEm,"ax",%progbits
 179              		.align	2
 180              		.global	_ZN6WizSpi11SendAddressEm
 181              		.thumb
 182              		.thumb_func
 183              		.type	_ZN6WizSpi11SendAddressEm, %function
 184              	_ZN6WizSpi11SendAddressEm:
 185              		@ args = 0, pretend = 0, frame = 0
 186              		@ frame_needed = 0, uses_anonymous_args = 0
 187              		@ link register save eliminated.
 188 0000 30B4     		push	{r4, r5}
 189 0002 43F69823 		movw	r3, #15000
 190 0006 C0F30745 		ubfx	r5, r0, #16, #8
 191 000a 124C     		ldr	r4, .L48
 192 000c 01E0     		b	.L22
 193              	.L24:
 194 000e 013B     		subs	r3, r3, #1
 195 0010 1ED0     		beq	.L21
 196              	.L22:
 197 0012 2269     		ldr	r2, [r4, #16]
 198 0014 0F49     		ldr	r1, .L48
 199 0016 9207     		lsls	r2, r2, #30
 200 0018 F9D5     		bpl	.L24
 201 001a CD60     		str	r5, [r1, #12]
 202 001c 8B68     		ldr	r3, [r1, #8]
 203 001e 43F69823 		movw	r3, #15000
 204 0022 01E0     		b	.L30
 205              	.L26:
 206 0024 013B     		subs	r3, r3, #1
 207 0026 13D0     		beq	.L21
 208              	.L30:
 209 0028 0A69     		ldr	r2, [r1, #16]
 210 002a 0A4C     		ldr	r4, .L48
 211 002c 9507     		lsls	r5, r2, #30
 212 002e F9D5     		bpl	.L26
 213 0030 C0F30723 		ubfx	r3, r0, #8, #8
 214 0034 E360     		str	r3, [r4, #12]
 215 0036 A368     		ldr	r3, [r4, #8]
 216 0038 43F69823 		movw	r3, #15000
 217 003c 01E0     		b	.L31
 218              	.L28:
 219 003e 013B     		subs	r3, r3, #1
 220 0040 06D0     		beq	.L21
 221              	.L31:
 222 0042 2269     		ldr	r2, [r4, #16]
 223 0044 0349     		ldr	r1, .L48
 224 0046 9207     		lsls	r2, r2, #30
 225 0048 F9D5     		bpl	.L28
 226 004a C0B2     		uxtb	r0, r0
 227 004c C860     		str	r0, [r1, #12]
 228 004e 8B68     		ldr	r3, [r1, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccK79C8m.s 			page 5


 229              	.L21:
 230 0050 30BC     		pop	{r4, r5}
 231 0052 7047     		bx	lr
 232              	.L49:
 233              		.align	2
 234              	.L48:
 235 0054 00800840 		.word	1074298880
 236              		.size	_ZN6WizSpi11SendAddressEm, .-_ZN6WizSpi11SendAddressEm
 237              		.section	.text._ZN6WizSpi8ReadByteEv,"ax",%progbits
 238              		.align	2
 239              		.global	_ZN6WizSpi8ReadByteEv
 240              		.thumb
 241              		.thumb_func
 242              		.type	_ZN6WizSpi8ReadByteEv, %function
 243              	_ZN6WizSpi8ReadByteEv:
 244              		@ args = 0, pretend = 0, frame = 0
 245              		@ frame_needed = 0, uses_anonymous_args = 0
 246              		@ link register save eliminated.
 247 0000 1048     		ldr	r0, .L77
 248 0002 43F69923 		movw	r3, #15001
 249 0006 8268     		ldr	r2, [r0, #8]
 250 0008 01E0     		b	.L51
 251              	.L53:
 252 000a 013B     		subs	r3, r3, #1
 253 000c 17D0     		beq	.L52
 254              	.L51:
 255 000e 0269     		ldr	r2, [r0, #16]
 256 0010 0C49     		ldr	r1, .L77
 257 0012 9205     		lsls	r2, r2, #22
 258 0014 F9D5     		bpl	.L53
 259 0016 00E0     		b	.L76
 260              	.L55:
 261 0018 8B68     		ldr	r3, [r1, #8]
 262              	.L76:
 263 001a 0B69     		ldr	r3, [r1, #16]
 264 001c D807     		lsls	r0, r3, #31
 265 001e FBD4     		bmi	.L55
 266 0020 0849     		ldr	r1, .L77
 267 0022 FF23     		movs	r3, #255
 268 0024 CB60     		str	r3, [r1, #12]
 269 0026 43F69823 		movw	r3, #15000
 270 002a 01E0     		b	.L56
 271              	.L57:
 272 002c 013B     		subs	r3, r3, #1
 273 002e 06D0     		beq	.L52
 274              	.L56:
 275 0030 0A69     		ldr	r2, [r1, #16]
 276 0032 0448     		ldr	r0, .L77
 277 0034 D207     		lsls	r2, r2, #31
 278 0036 F9D5     		bpl	.L57
 279 0038 8068     		ldr	r0, [r0, #8]
 280 003a C0B2     		uxtb	r0, r0
 281 003c 7047     		bx	lr
 282              	.L52:
 283 003e 0020     		movs	r0, #0
 284 0040 7047     		bx	lr
 285              	.L78:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccK79C8m.s 			page 6


 286 0042 00BF     		.align	2
 287              	.L77:
 288 0044 00800840 		.word	1074298880
 289              		.size	_ZN6WizSpi8ReadByteEv, .-_ZN6WizSpi8ReadByteEv
 290              		.section	.text._ZN6WizSpi9WriteByteEh,"ax",%progbits
 291              		.align	2
 292              		.global	_ZN6WizSpi9WriteByteEh
 293              		.thumb
 294              		.thumb_func
 295              		.type	_ZN6WizSpi9WriteByteEh, %function
 296              	_ZN6WizSpi9WriteByteEh:
 297              		@ args = 0, pretend = 0, frame = 0
 298              		@ frame_needed = 0, uses_anonymous_args = 0
 299              		@ link register save eliminated.
 300 0000 10B4     		push	{r4}
 301 0002 43F69823 		movw	r3, #15000
 302 0006 0649     		ldr	r1, .L88
 303 0008 01E0     		b	.L80
 304              	.L82:
 305 000a 013B     		subs	r3, r3, #1
 306 000c 04D0     		beq	.L79
 307              	.L80:
 308 000e 0A69     		ldr	r2, [r1, #16]
 309 0010 034C     		ldr	r4, .L88
 310 0012 9207     		lsls	r2, r2, #30
 311 0014 F9D5     		bpl	.L82
 312 0016 E060     		str	r0, [r4, #12]
 313              	.L79:
 314 0018 5DF8044B 		ldr	r4, [sp], #4
 315 001c 7047     		bx	lr
 316              	.L89:
 317 001e 00BF     		.align	2
 318              	.L88:
 319 0020 00800840 		.word	1074298880
 320              		.size	_ZN6WizSpi9WriteByteEh, .-_ZN6WizSpi9WriteByteEh
 321              		.section	.text._ZN6WizSpi9ReadBurstEPhj,"ax",%progbits
 322              		.align	2
 323              		.global	_ZN6WizSpi9ReadBurstEPhj
 324              		.thumb
 325              		.thumb_func
 326              		.type	_ZN6WizSpi9ReadBurstEPhj, %function
 327              	_ZN6WizSpi9ReadBurstEPhj:
 328              		@ args = 0, pretend = 0, frame = 8
 329              		@ frame_needed = 0, uses_anonymous_args = 0
 330 0000 30B5     		push	{r4, r5, lr}
 331 0002 83B0     		sub	sp, sp, #12
 332 0004 0029     		cmp	r1, #0
 333 0006 3BD0     		beq	.L91
 334 0008 43F69923 		movw	r3, #15001
 335 000c 204D     		ldr	r5, .L115
 336 000e 01E0     		b	.L92
 337              	.L93:
 338 0010 013B     		subs	r3, r3, #1
 339 0012 38D0     		beq	.L102
 340              	.L92:
 341 0014 2A69     		ldr	r2, [r5, #16]
 342 0016 1E4C     		ldr	r4, .L115
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccK79C8m.s 			page 7


 343 0018 9205     		lsls	r2, r2, #22
 344 001a F9D5     		bpl	.L93
 345 001c 00E0     		b	.L114
 346              	.L95:
 347 001e A368     		ldr	r3, [r4, #8]
 348              	.L114:
 349 0020 2369     		ldr	r3, [r4, #16]
 350 0022 DB07     		lsls	r3, r3, #31
 351 0024 FBD4     		bmi	.L95
 352 0026 1B4C     		ldr	r4, .L115+4
 353 0028 0090     		str	r0, [sp]
 354 002a 0191     		str	r1, [sp, #4]
 355 002c 2068     		ldr	r0, [r4]
 356 002e 6946     		mov	r1, sp
 357 0030 0022     		movs	r2, #0
 358 0032 FFF7FEFF 		bl	pdc_rx_init
 359 0036 6946     		mov	r1, sp
 360 0038 2068     		ldr	r0, [r4]
 361 003a 0022     		movs	r2, #0
 362 003c FFF7FEFF 		bl	pdc_tx_init
 363 0040 2068     		ldr	r0, [r4]
 364 0042 0121     		movs	r1, #1
 365 0044 FFF7FEFF 		bl	pdc_enable_transfer
 366 0048 2068     		ldr	r0, [r4]
 367 004a 4FF48071 		mov	r1, #256
 368 004e FFF7FEFF 		bl	pdc_enable_transfer
 369              	.L97:
 370 0052 2068     		ldr	r0, [r4]
 371 0054 FFF7FEFF 		bl	pdc_read_tx_counter
 372 0058 0028     		cmp	r0, #0
 373 005a FAD1     		bne	.L97
 374 005c 43F69925 		movw	r5, #15001
 375              	.L100:
 376 0060 2068     		ldr	r0, [r4]
 377 0062 FFF7FEFF 		bl	pdc_read_rx_counter
 378 0066 08B1     		cbz	r0, .L98
 379 0068 013D     		subs	r5, r5, #1
 380 006a F9D1     		bne	.L100
 381              	.L98:
 382 006c 2068     		ldr	r0, [r4]
 383 006e 0221     		movs	r1, #2
 384 0070 FFF7FEFF 		bl	pdc_disable_transfer
 385 0074 4FF40071 		mov	r1, #512
 386 0078 2068     		ldr	r0, [r4]
 387 007a FFF7FEFF 		bl	pdc_disable_transfer
 388 007e 0021     		movs	r1, #0
 389              	.L91:
 390 0080 48B2     		sxtb	r0, r1
 391 0082 03B0     		add	sp, sp, #12
 392              		@ sp needed
 393 0084 30BD     		pop	{r4, r5, pc}
 394              	.L102:
 395 0086 0121     		movs	r1, #1
 396 0088 48B2     		sxtb	r0, r1
 397 008a 03B0     		add	sp, sp, #12
 398              		@ sp needed
 399 008c 30BD     		pop	{r4, r5, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccK79C8m.s 			page 8


 400              	.L116:
 401 008e 00BF     		.align	2
 402              	.L115:
 403 0090 00800840 		.word	1074298880
 404 0094 00000000 		.word	.LANCHOR0
 405              		.size	_ZN6WizSpi9ReadBurstEPhj, .-_ZN6WizSpi9ReadBurstEPhj
 406              		.section	.text._ZN6WizSpi9SendBurstEPKhj,"ax",%progbits
 407              		.align	2
 408              		.global	_ZN6WizSpi9SendBurstEPKhj
 409              		.thumb
 410              		.thumb_func
 411              		.type	_ZN6WizSpi9SendBurstEPKhj, %function
 412              	_ZN6WizSpi9SendBurstEPKhj:
 413              		@ args = 0, pretend = 0, frame = 8
 414              		@ frame_needed = 0, uses_anonymous_args = 0
 415 0000 70B5     		push	{r4, r5, r6, lr}
 416 0002 0E4D     		ldr	r5, .L120
 417 0004 82B0     		sub	sp, sp, #8
 418 0006 8DE80300 		stmia	sp, {r0, r1}
 419 000a 0022     		movs	r2, #0
 420 000c 2868     		ldr	r0, [r5]
 421 000e 6946     		mov	r1, sp
 422 0010 FFF7FEFF 		bl	pdc_tx_init
 423 0014 2868     		ldr	r0, [r5]
 424 0016 4FF48071 		mov	r1, #256
 425 001a FFF7FEFF 		bl	pdc_enable_transfer
 426              	.L119:
 427 001e 2868     		ldr	r0, [r5]
 428 0020 064E     		ldr	r6, .L120
 429 0022 FFF7FEFF 		bl	pdc_read_tx_counter
 430 0026 0446     		mov	r4, r0
 431 0028 0028     		cmp	r0, #0
 432 002a F8D1     		bne	.L119
 433 002c 3068     		ldr	r0, [r6]
 434 002e 4FF40071 		mov	r1, #512
 435 0032 FFF7FEFF 		bl	pdc_disable_transfer
 436 0036 2046     		mov	r0, r4
 437 0038 02B0     		add	sp, sp, #8
 438              		@ sp needed
 439 003a 70BD     		pop	{r4, r5, r6, pc}
 440              	.L121:
 441              		.align	2
 442              	.L120:
 443 003c 00000000 		.word	.LANCHOR0
 444              		.size	_ZN6WizSpi9SendBurstEPKhj, .-_ZN6WizSpi9SendBurstEPKhj
 445              		.section	.bss._ZL7spi_pdc,"aw",%nobits
 446              		.align	2
 447              		.set	.LANCHOR0,. + 0
 448              		.type	_ZL7spi_pdc, %object
 449              		.size	_ZL7spi_pdc, 4
 450              	_ZL7spi_pdc:
 451 0000 00000000 		.space	4
 452              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 453              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 454              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 455              	_ZL28cpu_irq_prev_interrupt_state:
 456 0000 00       		.space	1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccK79C8m.s 			page 9


 457              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 458              		.align	2
 459              		.type	_ZL32cpu_irq_critical_section_counter, %object
 460              		.size	_ZL32cpu_irq_critical_section_counter, 4
 461              	_ZL32cpu_irq_critical_section_counter:
 462 0000 00000000 		.space	4
 463              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
