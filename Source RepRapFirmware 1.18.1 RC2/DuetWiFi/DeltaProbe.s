ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccP3BQVY.s 			page 1


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
  15              		.file	"DeltaProbe.cpp"
  16              		.global	__aeabi_f2d
  17              		.global	__aeabi_dcmplt
  18              		.global	__aeabi_dadd
  19              		.global	__aeabi_dmul
  20              		.global	__aeabi_ddiv
  21              		.global	__aeabi_d2f
  22              		.global	__aeabi_dsub
  23              		.global	__aeabi_d2uiz
  24              		.section	.text._ZN10DeltaProbe4InitEffff,"ax",%progbits
  25              		.align	2
  26              		.global	_ZN10DeltaProbe4InitEffff
  27              		.thumb
  28              		.thumb_func
  29              		.type	_ZN10DeltaProbe4InitEffff, %function
  30              	_ZN10DeltaProbe4InitEffff:
  31              		@ args = 4, pretend = 0, frame = 24
  32              		@ frame_needed = 0, uses_anonymous_args = 0
  33 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  34 0004 2DED028B 		fstmfdd	sp!, {d8}
  35 0008 8046     		mov	r8, r0
  36 000a 8DB0     		sub	sp, sp, #52
  37 000c 0846     		mov	r0, r1	@ float
  38 000e 9246     		mov	r10, r2	@ float
  39 0010 9946     		mov	r9, r3	@ float
  40 0012 08EE101A 		fmsr	s16, r1
  41 0016 FFF7FEFF 		bl	__aeabi_f2d
  42 001a CDE90601 		strd	r0, [sp, #24]
  43 001e 5046     		mov	r0, r10	@ float
  44 0020 FFF7FEFF 		bl	__aeabi_f2d
  45 0024 0446     		mov	r4, r0
  46 0026 4846     		mov	r0, r9	@ float
  47 0028 0D46     		mov	r5, r1
  48 002a FFF7FEFF 		bl	__aeabi_f2d
  49 002e 0646     		mov	r6, r0
  50 0030 0F46     		mov	r7, r1
  51 0032 1898     		ldr	r0, [sp, #96]	@ float
  52 0034 CDE90045 		strd	r4, [sp]
  53 0038 CDE90267 		strd	r6, [sp, #8]
  54 003c FFF7FEFF 		bl	__aeabi_f2d
  55 0040 DDE90623 		ldrd	r2, [sp, #24]
  56 0044 CDE90401 		strd	r0, [sp, #16]
  57 0048 AD48     		ldr	r0, .L28+40
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccP3BQVY.s 			page 2


  58 004a FFF7FEFF 		bl	debugPrintf
  59 004e DFEDAD7A 		flds	s15, .L28+44
  60 0052 B4EEE78A 		fcmpes	s16, s15
  61 0056 F1EE10FA 		fmstat
  62 005a 29D4     		bmi	.L5
  63 005c DFEDAA7A 		flds	s15, .L28+48
  64 0060 B4EEE78A 		fcmpes	s16, s15
  65 0064 F1EE10FA 		fmstat
  66 0068 22DC     		bgt	.L5
  67 006a 2046     		mov	r0, r4
  68 006c 2946     		mov	r1, r5
  69 006e 9AA3     		adr	r3, .L28
  70 0070 D3E90023 		ldrd	r2, [r3]
  71 0074 FFF7FEFF 		bl	__aeabi_dcmplt
  72 0078 D0B9     		cbnz	r0, .L5
  73 007a 3046     		mov	r0, r6
  74 007c 3946     		mov	r1, r7
  75 007e 98A3     		adr	r3, .L28+8
  76 0080 D3E90023 		ldrd	r2, [r3]
  77 0084 FFF7FEFF 		bl	__aeabi_dcmplt
  78 0088 0646     		mov	r6, r0
  79 008a 88B9     		cbnz	r0, .L5
  80 008c 06EE909A 		fmsr	s13, r9
  81 0090 F2EE047A 		fconsts	s15, #36
  82 0094 F4EEE76A 		fcmpes	s13, s15
  83 0098 F1EE10FA 		fmstat
  84 009c 08DC     		bgt	.L5
  85 009e 9DED187A 		flds	s14, [sp, #96]
  86 00a2 F6EE007A 		fconsts	s15, #96
  87 00a6 B4EEE77A 		fcmpes	s14, s15
  88 00aa F1EE10FA 		fmstat
  89 00ae 05D5     		bpl	.L26
  90              	.L5:
  91 00b0 0020     		movs	r0, #0
  92              	.L4:
  93 00b2 0DB0     		add	sp, sp, #52
  94              		@ sp needed
  95 00b4 BDEC028B 		fldmfdd	sp!, {d8}
  96 00b8 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
  97              	.L26:
  98 00bc 9348     		ldr	r0, .L28+52
  99 00be FFF7FEFF 		bl	debugPrintf
 100 00c2 934B     		ldr	r3, .L28+56
 101 00c4 1B68     		ldr	r3, [r3]
 102 00c6 06EE90AA 		fmsr	s13, r10
 103 00ca D3ED548A 		flds	s17, [r3, #336]
 104 00ce 66EEA87A 		fmuls	s15, s13, s17
 105 00d2 FCEEE77A 		ftouizs	s15, s15
 106 00d6 17EE901A 		fmrs	r1, s15	@ int
 107 00da 1E29     		cmp	r1, #30
 108 00dc C8ED007A 		fsts	s15, [r8]	@ int
 109 00e0 E6D8     		bhi	.L5
 110 00e2 8C48     		ldr	r0, .L28+60
 111 00e4 FFF7FEFF 		bl	debugPrintf
 112 00e8 DDE90601 		ldrd	r0, [sp, #24]
 113 00ec 0246     		mov	r2, r0
 114 00ee 0B46     		mov	r3, r1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccP3BQVY.s 			page 3


 115 00f0 FFF7FEFF 		bl	__aeabi_dadd
 116 00f4 7CA3     		adr	r3, .L28+16
 117 00f6 D3E90023 		ldrd	r2, [r3]
 118 00fa CDE90A01 		strd	r0, [sp, #40]
 119 00fe FFF7FEFF 		bl	__aeabi_dmul
 120 0102 0246     		mov	r2, r0
 121 0104 0B46     		mov	r3, r1
 122 0106 7AA1     		adr	r1, .L28+24
 123 0108 D1E90001 		ldrd	r0, [r1]
 124 010c FFF7FEFF 		bl	__aeabi_ddiv
 125 0110 FFF7FEFF 		bl	__aeabi_d2f
 126 0114 D8F80040 		ldr	r4, [r8]
 127 0118 012C     		cmp	r4, #1
 128 011a 8346     		mov	fp, r0	@ float
 129 011c 30D0     		beq	.L6
 130 011e 08F10C07 		add	r7, r8, #12
 131              	.L8:
 132 0122 0136     		adds	r6, r6, #1
 133 0124 7300     		lsls	r3, r6, #1
 134 0126 06EE904A 		fmsr	s13, r4	@ int
 135 012a 07EE103A 		fmsr	s14, r3	@ int
 136 012e F8EE667A 		fuitos	s15, s13
 137 0132 B8EEC77A 		fsitos	s14, s14
 138 0136 C7EE277A 		fdivs	s15, s14, s15
 139 013a 17EE900A 		fmrs	r0, s15
 140 013e FFF7FEFF 		bl	__aeabi_f2d
 141 0142 0246     		mov	r2, r0
 142 0144 0B46     		mov	r3, r1
 143 0146 0020     		movs	r0, #0
 144 0148 7349     		ldr	r1, .L28+64
 145 014a FFF7FEFF 		bl	__aeabi_dsub
 146 014e FFF7FEFF 		bl	acos
 147 0152 0446     		mov	r4, r0
 148 0154 5846     		mov	r0, fp	@ float
 149 0156 0D46     		mov	r5, r1
 150 0158 FFF7FEFF 		bl	__aeabi_f2d
 151 015c 0B46     		mov	r3, r1
 152 015e 0246     		mov	r2, r0
 153 0160 2946     		mov	r1, r5
 154 0162 2046     		mov	r0, r4
 155 0164 FFF7FEFF 		bl	__aeabi_dmul
 156 0168 FFF7FEFF 		bl	__aeabi_d2uiz
 157 016c 47F8040F 		str	r0, [r7, #4]!
 158 0170 D8F80040 		ldr	r4, [r8]
 159 0174 631E     		subs	r3, r4, #1
 160 0176 B342     		cmp	r3, r6
 161 0178 D3D8     		bhi	.L8
 162 017a 002C     		cmp	r4, #0
 163 017c 00F0A880 		beq	.L27
 164              	.L6:
 165 0180 08F18403 		add	r3, r8, #132
 166 0184 0993     		str	r3, [sp, #36]
 167 0186 1F46     		mov	r7, r3
 168 0188 0026     		movs	r6, #0
 169              	.L10:
 170 018a 0136     		adds	r6, r6, #1
 171 018c 7300     		lsls	r3, r6, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccP3BQVY.s 			page 4


 172 018e 0134     		adds	r4, r4, #1
 173 0190 06EE904A 		fmsr	s13, r4	@ int
 174 0194 07EE103A 		fmsr	s14, r3	@ int
 175 0198 F8EE667A 		fuitos	s15, s13
 176 019c B8EEC77A 		fsitos	s14, s14
 177 01a0 C7EE277A 		fdivs	s15, s14, s15
 178 01a4 17EE900A 		fmrs	r0, s15
 179 01a8 FFF7FEFF 		bl	__aeabi_f2d
 180 01ac 0246     		mov	r2, r0
 181 01ae 0B46     		mov	r3, r1
 182 01b0 0020     		movs	r0, #0
 183 01b2 5949     		ldr	r1, .L28+64
 184 01b4 FFF7FEFF 		bl	__aeabi_dsub
 185 01b8 FFF7FEFF 		bl	acos
 186 01bc 0446     		mov	r4, r0
 187 01be 5846     		mov	r0, fp	@ float
 188 01c0 0D46     		mov	r5, r1
 189 01c2 FFF7FEFF 		bl	__aeabi_f2d
 190 01c6 0246     		mov	r2, r0
 191 01c8 0B46     		mov	r3, r1
 192 01ca 2046     		mov	r0, r4
 193 01cc 2946     		mov	r1, r5
 194 01ce FFF7FEFF 		bl	__aeabi_dmul
 195 01d2 FFF7FEFF 		bl	__aeabi_d2uiz
 196 01d6 47F8040F 		str	r0, [r7, #4]!
 197 01da D8F80040 		ldr	r4, [r8]
 198 01de B442     		cmp	r4, r6
 199 01e0 D3D8     		bhi	.L10
 200              	.L9:
 201 01e2 DDE90A23 		ldrd	r2, [sp, #40]
 202 01e6 42A1     		adr	r1, .L28+24
 203 01e8 D1E90001 		ldrd	r0, [r1]
 204 01ec FFF7FEFF 		bl	__aeabi_ddiv
 205 01f0 FFF7FEFF 		bl	__aeabi_d2uiz
 206 01f4 07EE109A 		fmsr	s14, r9
 207 01f8 67EE287A 		fmuls	s15, s14, s17
 208 01fc E31C     		adds	r3, r4, #3
 209 01fe C8EE277A 		fdivs	s15, s16, s15
 210 0202 2234     		adds	r4, r4, #34
 211 0204 0546     		mov	r5, r0
 212 0206 C8F80C00 		str	r0, [r8, #12]
 213 020a 48F82350 		str	r5, [r8, r3, lsl #2]
 214 020e 48F82450 		str	r5, [r8, r4, lsl #2]
 215 0212 17EE900A 		fmrs	r0, s15
 216 0216 FFF7FEFF 		bl	__aeabi_f2d
 217 021a 0022     		movs	r2, #0
 218 021c 3F4B     		ldr	r3, .L28+68
 219 021e FFF7FEFF 		bl	__aeabi_dadd
 220 0222 FFF7FEFF 		bl	__aeabi_d2uiz
 221 0226 DDED187A 		flds	s15, [sp, #96]
 222 022a 67EEA88A 		fmuls	s17, s15, s17
 223 022e 4400     		lsls	r4, r0, #1
 224 0230 032C     		cmp	r4, #3
 225 0232 FCEEE88A 		ftouizs	s17, s17
 226 0236 98BF     		it	ls
 227 0238 0424     		movls	r4, #4
 228 023a 2FA3     		adr	r3, .L28+32
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccP3BQVY.s 			page 5


 229 023c D3E90023 		ldrd	r2, [r3]
 230 0240 DDE90601 		ldrd	r0, [sp, #24]
 231 0244 C8F80440 		str	r4, [r8, #4]
 232 0248 C8ED028A 		fsts	s17, [r8, #8]	@ int
 233 024c FFF7FEFF 		bl	__aeabi_dmul
 234 0250 FFF7FEFF 		bl	__aeabi_d2f
 235 0254 06EE900A 		fmsr	s13, r0
 236 0258 26EEA67A 		fmuls	s14, s13, s13
 237 025c 06EE90AA 		fmsr	s13, r10
 238 0260 26EE877A 		fmuls	s14, s13, s14
 239 0264 F6EE007A 		fconsts	s15, #96
 240 0268 67EE277A 		fmuls	s15, s14, s15
 241 026c 17EE900A 		fmrs	r0, s15
 242 0270 FFF7FEFF 		bl	__aeabi_f2d
 243 0274 2246     		mov	r2, r4
 244 0276 CDE90001 		strd	r0, [sp]
 245 027a 2946     		mov	r1, r5
 246 027c 2848     		ldr	r0, .L28+72
 247 027e FFF7FEFF 		bl	debugPrintf
 248 0282 2848     		ldr	r0, .L28+76
 249 0284 FFF7FEFF 		bl	debugPrintf
 250 0288 D8F80030 		ldr	r3, [r8]
 251 028c 63B1     		cbz	r3, .L15
 252 028e 08F10C05 		add	r5, r8, #12
 253 0292 0024     		movs	r4, #0
 254              	.L16:
 255 0294 2448     		ldr	r0, .L28+80
 256 0296 55F8041F 		ldr	r1, [r5, #4]!
 257 029a FFF7FEFF 		bl	debugPrintf
 258 029e D8F80030 		ldr	r3, [r8]
 259 02a2 0134     		adds	r4, r4, #1
 260 02a4 A342     		cmp	r3, r4
 261 02a6 F5D8     		bhi	.L16
 262              	.L15:
 263 02a8 2048     		ldr	r0, .L28+84
 264 02aa 099D     		ldr	r5, [sp, #36]
 265 02ac FFF7FEFF 		bl	debugPrintf
 266 02b0 0024     		movs	r4, #0
 267              	.L14:
 268 02b2 1D48     		ldr	r0, .L28+80
 269 02b4 55F8041F 		ldr	r1, [r5, #4]!
 270 02b8 FFF7FEFF 		bl	debugPrintf
 271 02bc D8F80030 		ldr	r3, [r8]
 272 02c0 0134     		adds	r4, r4, #1
 273 02c2 A342     		cmp	r3, r4
 274 02c4 F5D2     		bcs	.L14
 275 02c6 1A48     		ldr	r0, .L28+88
 276 02c8 FFF7FEFF 		bl	debugPrintf
 277 02cc 0120     		movs	r0, #1
 278 02ce F0E6     		b	.L4
 279              	.L27:
 280 02d0 08F18403 		add	r3, r8, #132
 281 02d4 0993     		str	r3, [sp, #36]
 282 02d6 84E7     		b	.L9
 283              	.L29:
 284              		.align	3
 285              	.L28:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccP3BQVY.s 			page 6


 286 02d8 7B14AE47 		.word	1202590843
 287 02dc E17A943F 		.word	1066695393
 288 02e0 9A999999 		.word	-1717986918
 289 02e4 9999B93F 		.word	1069128089
 290 02e8 182D4454 		.word	1413754136
 291 02ec FB210940 		.word	1074340347
 292 02f0 00000000 		.word	0
 293 02f4 389C2C41 		.word	1093442616
 294 02f8 182D4454 		.word	1413754136
 295 02fc FB211940 		.word	1075388923
 296 0300 00000000 		.word	.LC0
 297 0304 00004842 		.word	1112014848
 298 0308 00007A44 		.word	1148846080
 299 030c 2C000000 		.word	.LC1
 300 0310 00000000 		.word	reprap
 301 0314 38000000 		.word	.LC2
 302 0318 0000F03F 		.word	1072693248
 303 031c 0000E03F 		.word	1071644672
 304 0320 48000000 		.word	.LC3
 305 0324 84000000 		.word	.LC4
 306 0328 A4000000 		.word	.LC6
 307 032c 94000000 		.word	.LC5
 308 0330 A8000000 		.word	.LC7
 309              		.size	_ZN10DeltaProbe4InitEffff, .-_ZN10DeltaProbe4InitEffff
 310 0334 AFF30080 		.section	.text._ZN10DeltaProbe5StartEv,"ax",%progbits
 311              		.align	2
 312              		.global	_ZN10DeltaProbe5StartEv
 313              		.thumb
 314              		.thumb_func
 315              		.type	_ZN10DeltaProbe5StartEv, %function
 316              	_ZN10DeltaProbe5StartEv:
 317              		@ args = 0, pretend = 0, frame = 0
 318              		@ frame_needed = 0, uses_anonymous_args = 0
 319              		@ link register save eliminated.
 320 0000 0023     		movs	r3, #0
 321 0002 C0F80431 		str	r3, [r0, #260]
 322 0006 C0F80831 		str	r3, [r0, #264]
 323 000a C0F80C31 		str	r3, [r0, #268]
 324 000e 80F81031 		strb	r3, [r0, #272]
 325 0012 C0F81431 		str	r3, [r0, #276]
 326 0016 0069     		ldr	r0, [r0, #16]
 327 0018 7047     		bx	lr
 328              		.size	_ZN10DeltaProbe5StartEv, .-_ZN10DeltaProbe5StartEv
 329 001a 00BF     		.section	.text._ZNK10DeltaProbe12GetDirectionEv,"ax",%progbits
 330              		.align	2
 331              		.global	_ZNK10DeltaProbe12GetDirectionEv
 332              		.thumb
 333              		.thumb_func
 334              		.type	_ZNK10DeltaProbe12GetDirectionEv, %function
 335              	_ZNK10DeltaProbe12GetDirectionEv:
 336              		@ args = 0, pretend = 0, frame = 0
 337              		@ frame_needed = 0, uses_anonymous_args = 0
 338              		@ link register save eliminated.
 339 0000 D0F80801 		ldr	r0, [r0, #264]
 340 0004 00F00100 		and	r0, r0, #1
 341 0008 7047     		bx	lr
 342              		.size	_ZNK10DeltaProbe12GetDirectionEv, .-_ZNK10DeltaProbe12GetDirectionEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccP3BQVY.s 			page 7


 343 000a 00BF     		.section	.text._ZN10DeltaProbe16CalcNextStepTimeEv,"ax",%progbits
 344              		.align	2
 345              		.global	_ZN10DeltaProbe16CalcNextStepTimeEv
 346              		.thumb
 347              		.thumb_func
 348              		.type	_ZN10DeltaProbe16CalcNextStepTimeEv, %function
 349              	_ZN10DeltaProbe16CalcNextStepTimeEv:
 350              		@ args = 0, pretend = 0, frame = 0
 351              		@ frame_needed = 0, uses_anonymous_args = 0
 352              		@ link register save eliminated.
 353 0000 D0F81421 		ldr	r2, [r0, #276]
 354 0004 931E     		subs	r3, r2, #2
 355 0006 012B     		cmp	r3, #1
 356 0008 10B4     		push	{r4}
 357 000a 1AD9     		bls	.L45
 358 000c D0F80431 		ldr	r3, [r0, #260]
 359 0010 90F81011 		ldrb	r1, [r0, #272]	@ zero_extendqisi2
 360 0014 0468     		ldr	r4, [r0]
 361 0016 0133     		adds	r3, r3, #1
 362 0018 C0F80431 		str	r3, [r0, #260]
 363 001c 01B1     		cbz	r1, .L35
 364 001e 0134     		adds	r4, r4, #1
 365              	.L35:
 366 0020 9C42     		cmp	r4, r3
 367 0022 1ED0     		beq	.L46
 368 0024 4268     		ldr	r2, [r0, #4]
 369 0026 D0F80C41 		ldr	r4, [r0, #268]
 370              	.L41:
 371 002a 79B1     		cbz	r1, .L44
 372              	.L43:
 373 002c 2233     		adds	r3, r3, #34
 374 002e C168     		ldr	r1, [r0, #12]
 375 0030 50F82330 		ldr	r3, [r0, r3, lsl #2]
 376 0034 04FB02F2 		mul	r2, r4, r2
 377 0038 01FB0230 		mla	r0, r1, r2, r3
 378              	.L33:
 379 003c 5DF8044B 		ldr	r4, [sp], #4
 380 0040 7047     		bx	lr
 381              	.L45:
 382 0042 4FF0FF30 		mov	r0, #-1
 383 0046 5DF8044B 		ldr	r4, [sp], #4
 384 004a 7047     		bx	lr
 385              	.L44:
 386 004c 0433     		adds	r3, r3, #4
 387 004e C168     		ldr	r1, [r0, #12]
 388 0050 50F82330 		ldr	r3, [r0, r3, lsl #2]
 389 0054 04FB02F2 		mul	r2, r4, r2
 390 0058 01FB0230 		mla	r0, r1, r2, r3
 391 005c 5DF8044B 		ldr	r4, [sp], #4
 392 0060 7047     		bx	lr
 393              	.L46:
 394 0062 D0F80831 		ldr	r3, [r0, #264]
 395 0066 0024     		movs	r4, #0
 396 0068 0133     		adds	r3, r3, #1
 397 006a 012A     		cmp	r2, #1
 398 006c C0F80831 		str	r3, [r0, #264]
 399 0070 C0F80441 		str	r4, [r0, #260]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccP3BQVY.s 			page 8


 400 0074 0FD0     		beq	.L47
 401              	.L37:
 402 0076 D0F80C41 		ldr	r4, [r0, #268]
 403 007a 29B1     		cbz	r1, .L39
 404 007c 0022     		movs	r2, #0
 405 007e 0134     		adds	r4, r4, #1
 406 0080 C0F80C41 		str	r4, [r0, #268]
 407 0084 80F81021 		strb	r2, [r0, #272]
 408              	.L39:
 409 0088 4268     		ldr	r2, [r0, #4]
 410 008a 9342     		cmp	r3, r2
 411 008c 0BD0     		beq	.L40
 412 008e 90F81011 		ldrb	r1, [r0, #272]	@ zero_extendqisi2
 413 0092 0023     		movs	r3, #0
 414 0094 C9E7     		b	.L41
 415              	.L47:
 416 0096 DA07     		lsls	r2, r3, #31
 417 0098 EDD4     		bmi	.L37
 418 009a 0223     		movs	r3, #2
 419 009c C0F81431 		str	r3, [r0, #276]
 420 00a0 4FF0FF30 		mov	r0, #-1
 421 00a4 CAE7     		b	.L33
 422              	.L40:
 423 00a6 8368     		ldr	r3, [r0, #8]
 424 00a8 A342     		cmp	r3, r4
 425 00aa 06D0     		beq	.L48
 426 00ac 0023     		movs	r3, #0
 427 00ae 0121     		movs	r1, #1
 428 00b0 C0F80831 		str	r3, [r0, #264]
 429 00b4 80F81011 		strb	r1, [r0, #272]
 430 00b8 B8E7     		b	.L43
 431              	.L48:
 432 00ba 0323     		movs	r3, #3
 433 00bc C0F81431 		str	r3, [r0, #276]
 434 00c0 4FF0FF30 		mov	r0, #-1
 435 00c4 BAE7     		b	.L33
 436              		.size	_ZN10DeltaProbe16CalcNextStepTimeEv, .-_ZN10DeltaProbe16CalcNextStepTimeEv
 437 00c6 00BF     		.section	.text._ZN10DeltaProbe7TriggerEv,"ax",%progbits
 438              		.align	2
 439              		.global	_ZN10DeltaProbe7TriggerEv
 440              		.thumb
 441              		.thumb_func
 442              		.type	_ZN10DeltaProbe7TriggerEv, %function
 443              	_ZN10DeltaProbe7TriggerEv:
 444              		@ args = 0, pretend = 0, frame = 0
 445              		@ frame_needed = 0, uses_anonymous_args = 0
 446              		@ link register save eliminated.
 447 0000 D0F81431 		ldr	r3, [r0, #276]
 448 0004 13B9     		cbnz	r3, .L49
 449 0006 0123     		movs	r3, #1
 450 0008 C0F81431 		str	r3, [r0, #276]
 451              	.L49:
 452 000c 7047     		bx	lr
 453              		.size	_ZN10DeltaProbe7TriggerEv, .-_ZN10DeltaProbe7TriggerEv
 454 000e 00BF     		.section	.rodata.str1.4,"aMS",%progbits,1
 455              		.align	2
 456              	.LC0:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccP3BQVY.s 			page 9


 457 0000 53746172 		.ascii	"Start probe f=%.1f a=%.2f r=%.2f h=%.1f\012\000"
 457      74207072 
 457      6F626520 
 457      663D252E 
 457      31662061 
 458 0029 000000   		.space	3
 459              	.LC1:
 460 002c 6F6B2073 		.ascii	"ok so far\012\000"
 460      6F206661 
 460      720A00
 461 0037 00       		.space	1
 462              	.LC2:
 463 0038 6E6F726D 		.ascii	"normalSteps=%u\012\000"
 463      616C5374 
 463      6570733D 
 463      25750A00 
 464              	.LC3:
 465 0048 68616C66 		.ascii	"halfCycleTime=%u halfCyclesPerIncrement=%u peak acc"
 465      4379636C 
 465      6554696D 
 465      653D2575 
 465      2068616C 
 466 007b 656C3D25 		.ascii	"el=%.1f\012\000"
 466      2E31660A 
 466      00
 467              	.LC4:
 468 0084 6E6F726D 		.ascii	"normalTable=\000"
 468      616C5461 
 468      626C653D 
 468      00
 469 0091 000000   		.space	3
 470              	.LC5:
 471 0094 20696E63 		.ascii	" incStepTable=\000"
 471      53746570 
 471      5461626C 
 471      653D00
 472 00a3 00       		.space	1
 473              	.LC6:
 474 00a4 20257500 		.ascii	" %u\000"
 475              	.LC7:
 476 00a8 0A00     		.ascii	"\012\000"
 477 00aa 0000     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 478              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 479              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 480              	_ZL28cpu_irq_prev_interrupt_state:
 481 0000 00       		.space	1
 482              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 483              		.align	2
 484              		.type	_ZL32cpu_irq_critical_section_counter, %object
 485              		.size	_ZL32cpu_irq_critical_section_counter, 4
 486              	_ZL32cpu_irq_critical_section_counter:
 487 0000 00000000 		.space	4
 488              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
