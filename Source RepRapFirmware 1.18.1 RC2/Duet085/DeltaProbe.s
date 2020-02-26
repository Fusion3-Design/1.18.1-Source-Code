ARM GAS  C:\Users\George\AppData\Local\Temp\ccHbOWKq.s 			page 1


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
  14              		.file	"DeltaProbe.cpp"
  15              		.global	__aeabi_f2d
  16              		.global	__aeabi_fcmplt
  17              		.global	__aeabi_fcmpgt
  18              		.global	__aeabi_dcmplt
  19              		.global	__aeabi_fmul
  20              		.global	__aeabi_f2uiz
  21              		.global	__aeabi_dadd
  22              		.global	__aeabi_dmul
  23              		.global	__aeabi_ddiv
  24              		.global	__aeabi_d2f
  25              		.global	__aeabi_ui2f
  26              		.global	__aeabi_fdiv
  27              		.global	__aeabi_dsub
  28              		.global	__aeabi_d2uiz
  29              		.section	.text._ZN10DeltaProbe4InitEffff,"ax",%progbits
  30              		.align	2
  31              		.global	_ZN10DeltaProbe4InitEffff
  32              		.thumb
  33              		.thumb_func
  34              		.type	_ZN10DeltaProbe4InitEffff, %function
  35              	_ZN10DeltaProbe4InitEffff:
  36              		@ args = 4, pretend = 0, frame = 32
  37              		@ frame_needed = 0, uses_anonymous_args = 0
  38 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  39 0004 8146     		mov	r9, r0
  40 0006 8FB0     		sub	sp, sp, #60
  41 0008 0846     		mov	r0, r1
  42 000a 9346     		mov	fp, r2
  43 000c 9A46     		mov	r10, r3
  44 000e 8846     		mov	r8, r1
  45 0010 FFF7FEFF 		bl	__aeabi_f2d
  46 0014 CDE90601 		strd	r0, [sp, #24]
  47 0018 5846     		mov	r0, fp
  48 001a FFF7FEFF 		bl	__aeabi_f2d
  49 001e 0446     		mov	r4, r0
  50 0020 5046     		mov	r0, r10
  51 0022 0D46     		mov	r5, r1
  52 0024 FFF7FEFF 		bl	__aeabi_f2d
  53 0028 0646     		mov	r6, r0
  54 002a 0F46     		mov	r7, r1
  55 002c 1898     		ldr	r0, [sp, #96]	@ float
  56 002e CDE90045 		strd	r4, [sp]
  57 0032 CDE90267 		strd	r6, [sp, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccHbOWKq.s 			page 2


  58 0036 FFF7FEFF 		bl	__aeabi_f2d
  59 003a DDE90623 		ldrd	r2, [sp, #24]
  60 003e CDE90401 		strd	r0, [sp, #16]
  61 0042 A948     		ldr	r0, .L28+40
  62 0044 FFF7FEFF 		bl	debugPrintf
  63 0048 4046     		mov	r0, r8
  64 004a A849     		ldr	r1, .L28+44
  65 004c FFF7FEFF 		bl	__aeabi_fcmplt
  66 0050 00BB     		cbnz	r0, .L5
  67 0052 4046     		mov	r0, r8
  68 0054 A649     		ldr	r1, .L28+48
  69 0056 FFF7FEFF 		bl	__aeabi_fcmpgt
  70 005a D8B9     		cbnz	r0, .L5
  71 005c 2046     		mov	r0, r4
  72 005e 2946     		mov	r1, r5
  73 0060 97A3     		adr	r3, .L28
  74 0062 D3E90023 		ldrd	r2, [r3]
  75 0066 FFF7FEFF 		bl	__aeabi_dcmplt
  76 006a 98B9     		cbnz	r0, .L5
  77 006c 3046     		mov	r0, r6
  78 006e 3946     		mov	r1, r7
  79 0070 95A3     		adr	r3, .L28+8
  80 0072 D3E90023 		ldrd	r2, [r3]
  81 0076 FFF7FEFF 		bl	__aeabi_dcmplt
  82 007a 58B9     		cbnz	r0, .L5
  83 007c 5046     		mov	r0, r10
  84 007e 9D49     		ldr	r1, .L28+52
  85 0080 FFF7FEFF 		bl	__aeabi_fcmpgt
  86 0084 30B9     		cbnz	r0, .L5
  87 0086 1898     		ldr	r0, [sp, #96]	@ float
  88 0088 4FF07C51 		mov	r1, #1056964608
  89 008c FFF7FEFF 		bl	__aeabi_fcmplt
  90 0090 0646     		mov	r6, r0
  91 0092 18B1     		cbz	r0, .L26
  92              	.L5:
  93 0094 0020     		movs	r0, #0
  94              	.L4:
  95 0096 0FB0     		add	sp, sp, #60
  96              		@ sp needed
  97 0098 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
  98              	.L26:
  99 009c 9648     		ldr	r0, .L28+56
 100 009e FFF7FEFF 		bl	debugPrintf
 101 00a2 964B     		ldr	r3, .L28+60
 102 00a4 5846     		mov	r0, fp
 103 00a6 1B68     		ldr	r3, [r3]
 104 00a8 D3F84031 		ldr	r3, [r3, #320]	@ float
 105 00ac 1946     		mov	r1, r3
 106 00ae 0893     		str	r3, [sp, #32]	@ float
 107 00b0 FFF7FEFF 		bl	__aeabi_fmul
 108 00b4 FFF7FEFF 		bl	__aeabi_f2uiz
 109 00b8 1E28     		cmp	r0, #30
 110 00ba C9F80000 		str	r0, [r9]
 111 00be E9D8     		bhi	.L5
 112 00c0 0146     		mov	r1, r0
 113 00c2 8F48     		ldr	r0, .L28+64
 114 00c4 FFF7FEFF 		bl	debugPrintf
ARM GAS  C:\Users\George\AppData\Local\Temp\ccHbOWKq.s 			page 3


 115 00c8 DDE90601 		ldrd	r0, [sp, #24]
 116 00cc 0246     		mov	r2, r0
 117 00ce 0B46     		mov	r3, r1
 118 00d0 FFF7FEFF 		bl	__aeabi_dadd
 119 00d4 7EA3     		adr	r3, .L28+16
 120 00d6 D3E90023 		ldrd	r2, [r3]
 121 00da CDE90A01 		strd	r0, [sp, #40]
 122 00de FFF7FEFF 		bl	__aeabi_dmul
 123 00e2 0246     		mov	r2, r0
 124 00e4 0B46     		mov	r3, r1
 125 00e6 7CA1     		adr	r1, .L28+24
 126 00e8 D1E90001 		ldrd	r0, [r1]
 127 00ec FFF7FEFF 		bl	__aeabi_ddiv
 128 00f0 FFF7FEFF 		bl	__aeabi_d2f
 129 00f4 D9F80040 		ldr	r4, [r9]
 130 00f8 0C90     		str	r0, [sp, #48]	@ float
 131 00fa 012C     		cmp	r4, #1
 132 00fc 33D0     		beq	.L6
 133 00fe CDF82480 		str	r8, [sp, #36]	@ float
 134 0102 09F10C07 		add	r7, r9, #12
 135 0106 8046     		mov	r8, r0
 136              	.L8:
 137 0108 0136     		adds	r6, r6, #1
 138 010a 7000     		lsls	r0, r6, #1
 139 010c FFF7FEFF 		bl	__aeabi_ui2f
 140 0110 0546     		mov	r5, r0
 141 0112 2046     		mov	r0, r4
 142 0114 FFF7FEFF 		bl	__aeabi_ui2f
 143 0118 0146     		mov	r1, r0
 144 011a 2846     		mov	r0, r5
 145 011c FFF7FEFF 		bl	__aeabi_fdiv
 146 0120 FFF7FEFF 		bl	__aeabi_f2d
 147 0124 0246     		mov	r2, r0
 148 0126 0B46     		mov	r3, r1
 149 0128 0020     		movs	r0, #0
 150 012a 7649     		ldr	r1, .L28+68
 151 012c FFF7FEFF 		bl	__aeabi_dsub
 152 0130 FFF7FEFF 		bl	acos
 153 0134 0446     		mov	r4, r0
 154 0136 4046     		mov	r0, r8
 155 0138 0D46     		mov	r5, r1
 156 013a FFF7FEFF 		bl	__aeabi_f2d
 157 013e 0B46     		mov	r3, r1
 158 0140 0246     		mov	r2, r0
 159 0142 2946     		mov	r1, r5
 160 0144 2046     		mov	r0, r4
 161 0146 FFF7FEFF 		bl	__aeabi_dmul
 162 014a FFF7FEFF 		bl	__aeabi_d2uiz
 163 014e 47F8040F 		str	r0, [r7, #4]!
 164 0152 D9F80040 		ldr	r4, [r9]
 165 0156 631E     		subs	r3, r4, #1
 166 0158 B342     		cmp	r3, r6
 167 015a D5D8     		bhi	.L8
 168 015c DDF82480 		ldr	r8, [sp, #36]	@ float
 169 0160 002C     		cmp	r4, #0
 170 0162 00F0A880 		beq	.L27
 171              	.L6:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccHbOWKq.s 			page 4


 172 0166 09F18403 		add	r3, r9, #132
 173 016a CDF83480 		str	r8, [sp, #52]	@ float
 174 016e DDF83080 		ldr	r8, [sp, #48]	@ float
 175 0172 0993     		str	r3, [sp, #36]
 176 0174 1F46     		mov	r7, r3
 177 0176 0026     		movs	r6, #0
 178              	.L10:
 179 0178 0136     		adds	r6, r6, #1
 180 017a 7000     		lsls	r0, r6, #1
 181 017c FFF7FEFF 		bl	__aeabi_ui2f
 182 0180 0546     		mov	r5, r0
 183 0182 601C     		adds	r0, r4, #1
 184 0184 FFF7FEFF 		bl	__aeabi_ui2f
 185 0188 0146     		mov	r1, r0
 186 018a 2846     		mov	r0, r5
 187 018c FFF7FEFF 		bl	__aeabi_fdiv
 188 0190 FFF7FEFF 		bl	__aeabi_f2d
 189 0194 0246     		mov	r2, r0
 190 0196 0B46     		mov	r3, r1
 191 0198 0020     		movs	r0, #0
 192 019a 5A49     		ldr	r1, .L28+68
 193 019c FFF7FEFF 		bl	__aeabi_dsub
 194 01a0 FFF7FEFF 		bl	acos
 195 01a4 0446     		mov	r4, r0
 196 01a6 4046     		mov	r0, r8
 197 01a8 0D46     		mov	r5, r1
 198 01aa FFF7FEFF 		bl	__aeabi_f2d
 199 01ae 0246     		mov	r2, r0
 200 01b0 0B46     		mov	r3, r1
 201 01b2 2046     		mov	r0, r4
 202 01b4 2946     		mov	r1, r5
 203 01b6 FFF7FEFF 		bl	__aeabi_dmul
 204 01ba FFF7FEFF 		bl	__aeabi_d2uiz
 205 01be 47F8040F 		str	r0, [r7, #4]!
 206 01c2 D9F80040 		ldr	r4, [r9]
 207 01c6 B442     		cmp	r4, r6
 208 01c8 D6D8     		bhi	.L10
 209 01ca DDF83480 		ldr	r8, [sp, #52]	@ float
 210              	.L9:
 211 01ce DDE90A23 		ldrd	r2, [sp, #40]
 212 01d2 41A1     		adr	r1, .L28+24
 213 01d4 D1E90001 		ldrd	r0, [r1]
 214 01d8 FFF7FEFF 		bl	__aeabi_ddiv
 215 01dc FFF7FEFF 		bl	__aeabi_d2uiz
 216 01e0 E31C     		adds	r3, r4, #3
 217 01e2 0546     		mov	r5, r0
 218 01e4 2234     		adds	r4, r4, #34
 219 01e6 C9F80C00 		str	r0, [r9, #12]
 220 01ea 0899     		ldr	r1, [sp, #32]	@ float
 221 01ec 49F82350 		str	r5, [r9, r3, lsl #2]
 222 01f0 5046     		mov	r0, r10
 223 01f2 49F82450 		str	r5, [r9, r4, lsl #2]
 224 01f6 FFF7FEFF 		bl	__aeabi_fmul
 225 01fa 0146     		mov	r1, r0
 226 01fc 4046     		mov	r0, r8
 227 01fe FFF7FEFF 		bl	__aeabi_fdiv
 228 0202 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\George\AppData\Local\Temp\ccHbOWKq.s 			page 5


 229 0206 0022     		movs	r2, #0
 230 0208 3F4B     		ldr	r3, .L28+72
 231 020a FFF7FEFF 		bl	__aeabi_dadd
 232 020e FFF7FEFF 		bl	__aeabi_d2uiz
 233 0212 4400     		lsls	r4, r0, #1
 234 0214 032C     		cmp	r4, #3
 235 0216 98BF     		it	ls
 236 0218 0424     		movls	r4, #4
 237 021a 0899     		ldr	r1, [sp, #32]	@ float
 238 021c 1898     		ldr	r0, [sp, #96]	@ float
 239 021e C9F80440 		str	r4, [r9, #4]
 240 0222 FFF7FEFF 		bl	__aeabi_fmul
 241 0226 FFF7FEFF 		bl	__aeabi_f2uiz
 242 022a 2DA3     		adr	r3, .L28+32
 243 022c D3E90023 		ldrd	r2, [r3]
 244 0230 C9F80800 		str	r0, [r9, #8]
 245 0234 DDE90601 		ldrd	r0, [sp, #24]
 246 0238 FFF7FEFF 		bl	__aeabi_dmul
 247 023c FFF7FEFF 		bl	__aeabi_d2f
 248 0240 0146     		mov	r1, r0
 249 0242 FFF7FEFF 		bl	__aeabi_fmul
 250 0246 0146     		mov	r1, r0
 251 0248 5846     		mov	r0, fp
 252 024a FFF7FEFF 		bl	__aeabi_fmul
 253 024e 4FF07C51 		mov	r1, #1056964608
 254 0252 FFF7FEFF 		bl	__aeabi_fmul
 255 0256 FFF7FEFF 		bl	__aeabi_f2d
 256 025a 2246     		mov	r2, r4
 257 025c CDE90001 		strd	r0, [sp]
 258 0260 2946     		mov	r1, r5
 259 0262 2A48     		ldr	r0, .L28+76
 260 0264 FFF7FEFF 		bl	debugPrintf
 261 0268 2948     		ldr	r0, .L28+80
 262 026a FFF7FEFF 		bl	debugPrintf
 263 026e D9F80030 		ldr	r3, [r9]
 264 0272 63B1     		cbz	r3, .L15
 265 0274 09F10C05 		add	r5, r9, #12
 266 0278 0024     		movs	r4, #0
 267              	.L16:
 268 027a 2648     		ldr	r0, .L28+84
 269 027c 55F8041F 		ldr	r1, [r5, #4]!
 270 0280 FFF7FEFF 		bl	debugPrintf
 271 0284 D9F80030 		ldr	r3, [r9]
 272 0288 0134     		adds	r4, r4, #1
 273 028a A342     		cmp	r3, r4
 274 028c F5D8     		bhi	.L16
 275              	.L15:
 276 028e 2248     		ldr	r0, .L28+88
 277 0290 099D     		ldr	r5, [sp, #36]
 278 0292 FFF7FEFF 		bl	debugPrintf
 279 0296 0024     		movs	r4, #0
 280              	.L14:
 281 0298 1E48     		ldr	r0, .L28+84
 282 029a 55F8041F 		ldr	r1, [r5, #4]!
 283 029e FFF7FEFF 		bl	debugPrintf
 284 02a2 D9F80030 		ldr	r3, [r9]
 285 02a6 0134     		adds	r4, r4, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccHbOWKq.s 			page 6


 286 02a8 A342     		cmp	r3, r4
 287 02aa F5D2     		bcs	.L14
 288 02ac 1B48     		ldr	r0, .L28+92
 289 02ae FFF7FEFF 		bl	debugPrintf
 290 02b2 0120     		movs	r0, #1
 291 02b4 EFE6     		b	.L4
 292              	.L27:
 293 02b6 09F18403 		add	r3, r9, #132
 294 02ba 0993     		str	r3, [sp, #36]
 295 02bc 87E7     		b	.L9
 296              	.L29:
 297 02be 00BF     		.align	3
 298              	.L28:
 299 02c0 7B14AE47 		.word	1202590843
 300 02c4 E17A943F 		.word	1066695393
 301 02c8 9A999999 		.word	-1717986918
 302 02cc 9999B93F 		.word	1069128089
 303 02d0 182D4454 		.word	1413754136
 304 02d4 FB210940 		.word	1074340347
 305 02d8 00000000 		.word	0
 306 02dc F4062441 		.word	1092880116
 307 02e0 182D4454 		.word	1413754136
 308 02e4 FB211940 		.word	1075388923
 309 02e8 00000000 		.word	.LC0
 310 02ec 00004842 		.word	1112014848
 311 02f0 00007A44 		.word	1148846080
 312 02f4 00002041 		.word	1092616192
 313 02f8 2C000000 		.word	.LC1
 314 02fc 00000000 		.word	reprap
 315 0300 38000000 		.word	.LC2
 316 0304 0000F03F 		.word	1072693248
 317 0308 0000E03F 		.word	1071644672
 318 030c 48000000 		.word	.LC3
 319 0310 84000000 		.word	.LC4
 320 0314 A4000000 		.word	.LC6
 321 0318 94000000 		.word	.LC5
 322 031c A8000000 		.word	.LC7
 323              		.size	_ZN10DeltaProbe4InitEffff, .-_ZN10DeltaProbe4InitEffff
 324              		.section	.text._ZN10DeltaProbe5StartEv,"ax",%progbits
 325              		.align	2
 326              		.global	_ZN10DeltaProbe5StartEv
 327              		.thumb
 328              		.thumb_func
 329              		.type	_ZN10DeltaProbe5StartEv, %function
 330              	_ZN10DeltaProbe5StartEv:
 331              		@ args = 0, pretend = 0, frame = 0
 332              		@ frame_needed = 0, uses_anonymous_args = 0
 333              		@ link register save eliminated.
 334 0000 0023     		movs	r3, #0
 335 0002 C0F80431 		str	r3, [r0, #260]
 336 0006 C0F80831 		str	r3, [r0, #264]
 337 000a C0F80C31 		str	r3, [r0, #268]
 338 000e 80F81031 		strb	r3, [r0, #272]
 339 0012 C0F81431 		str	r3, [r0, #276]
 340 0016 0069     		ldr	r0, [r0, #16]
 341 0018 7047     		bx	lr
 342              		.size	_ZN10DeltaProbe5StartEv, .-_ZN10DeltaProbe5StartEv
ARM GAS  C:\Users\George\AppData\Local\Temp\ccHbOWKq.s 			page 7


 343 001a 00BF     		.section	.text._ZNK10DeltaProbe12GetDirectionEv,"ax",%progbits
 344              		.align	2
 345              		.global	_ZNK10DeltaProbe12GetDirectionEv
 346              		.thumb
 347              		.thumb_func
 348              		.type	_ZNK10DeltaProbe12GetDirectionEv, %function
 349              	_ZNK10DeltaProbe12GetDirectionEv:
 350              		@ args = 0, pretend = 0, frame = 0
 351              		@ frame_needed = 0, uses_anonymous_args = 0
 352              		@ link register save eliminated.
 353 0000 D0F80801 		ldr	r0, [r0, #264]
 354 0004 00F00100 		and	r0, r0, #1
 355 0008 7047     		bx	lr
 356              		.size	_ZNK10DeltaProbe12GetDirectionEv, .-_ZNK10DeltaProbe12GetDirectionEv
 357 000a 00BF     		.section	.text._ZN10DeltaProbe16CalcNextStepTimeEv,"ax",%progbits
 358              		.align	2
 359              		.global	_ZN10DeltaProbe16CalcNextStepTimeEv
 360              		.thumb
 361              		.thumb_func
 362              		.type	_ZN10DeltaProbe16CalcNextStepTimeEv, %function
 363              	_ZN10DeltaProbe16CalcNextStepTimeEv:
 364              		@ args = 0, pretend = 0, frame = 0
 365              		@ frame_needed = 0, uses_anonymous_args = 0
 366              		@ link register save eliminated.
 367 0000 D0F81421 		ldr	r2, [r0, #276]
 368 0004 10B4     		push	{r4}
 369 0006 931E     		subs	r3, r2, #2
 370 0008 012B     		cmp	r3, #1
 371 000a 1AD9     		bls	.L45
 372 000c D0F80431 		ldr	r3, [r0, #260]
 373 0010 90F81011 		ldrb	r1, [r0, #272]	@ zero_extendqisi2
 374 0014 0133     		adds	r3, r3, #1
 375 0016 C0F80431 		str	r3, [r0, #260]
 376 001a 0468     		ldr	r4, [r0]
 377 001c 01B1     		cbz	r1, .L35
 378 001e 0134     		adds	r4, r4, #1
 379              	.L35:
 380 0020 9C42     		cmp	r4, r3
 381 0022 1ED0     		beq	.L46
 382 0024 4268     		ldr	r2, [r0, #4]
 383 0026 D0F80C41 		ldr	r4, [r0, #268]
 384              	.L41:
 385 002a 79B1     		cbz	r1, .L44
 386              	.L43:
 387 002c 04FB02F2 		mul	r2, r4, r2
 388 0030 2233     		adds	r3, r3, #34
 389 0032 50F82330 		ldr	r3, [r0, r3, lsl #2]
 390 0036 C068     		ldr	r0, [r0, #12]
 391 0038 00FB0230 		mla	r0, r0, r2, r3
 392              	.L33:
 393 003c 5DF8044B 		ldr	r4, [sp], #4
 394 0040 7047     		bx	lr
 395              	.L45:
 396 0042 4FF0FF30 		mov	r0, #-1
 397 0046 5DF8044B 		ldr	r4, [sp], #4
 398 004a 7047     		bx	lr
 399              	.L44:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccHbOWKq.s 			page 8


 400 004c 04FB02F2 		mul	r2, r4, r2
 401 0050 0433     		adds	r3, r3, #4
 402 0052 50F82330 		ldr	r3, [r0, r3, lsl #2]
 403 0056 C068     		ldr	r0, [r0, #12]
 404 0058 5DF8044B 		ldr	r4, [sp], #4
 405 005c 00FB0230 		mla	r0, r0, r2, r3
 406 0060 7047     		bx	lr
 407              	.L46:
 408 0062 D0F80831 		ldr	r3, [r0, #264]
 409 0066 0024     		movs	r4, #0
 410 0068 0133     		adds	r3, r3, #1
 411 006a 012A     		cmp	r2, #1
 412 006c C0F80831 		str	r3, [r0, #264]
 413 0070 C0F80441 		str	r4, [r0, #260]
 414 0074 0FD0     		beq	.L47
 415              	.L37:
 416 0076 D0F80C41 		ldr	r4, [r0, #268]
 417 007a 29B1     		cbz	r1, .L39
 418 007c 0022     		movs	r2, #0
 419 007e 0134     		adds	r4, r4, #1
 420 0080 C0F80C41 		str	r4, [r0, #268]
 421 0084 80F81021 		strb	r2, [r0, #272]
 422              	.L39:
 423 0088 4268     		ldr	r2, [r0, #4]
 424 008a 9342     		cmp	r3, r2
 425 008c 0BD0     		beq	.L40
 426 008e 90F81011 		ldrb	r1, [r0, #272]	@ zero_extendqisi2
 427 0092 0023     		movs	r3, #0
 428 0094 C9E7     		b	.L41
 429              	.L47:
 430 0096 DA07     		lsls	r2, r3, #31
 431 0098 EDD4     		bmi	.L37
 432 009a 0223     		movs	r3, #2
 433 009c C0F81431 		str	r3, [r0, #276]
 434 00a0 4FF0FF30 		mov	r0, #-1
 435 00a4 CAE7     		b	.L33
 436              	.L40:
 437 00a6 8368     		ldr	r3, [r0, #8]
 438 00a8 A342     		cmp	r3, r4
 439 00aa 06D0     		beq	.L48
 440 00ac 0023     		movs	r3, #0
 441 00ae 0121     		movs	r1, #1
 442 00b0 C0F80831 		str	r3, [r0, #264]
 443 00b4 80F81011 		strb	r1, [r0, #272]
 444 00b8 B8E7     		b	.L43
 445              	.L48:
 446 00ba 0323     		movs	r3, #3
 447 00bc C0F81431 		str	r3, [r0, #276]
 448 00c0 4FF0FF30 		mov	r0, #-1
 449 00c4 BAE7     		b	.L33
 450              		.size	_ZN10DeltaProbe16CalcNextStepTimeEv, .-_ZN10DeltaProbe16CalcNextStepTimeEv
 451 00c6 00BF     		.section	.text._ZN10DeltaProbe7TriggerEv,"ax",%progbits
 452              		.align	2
 453              		.global	_ZN10DeltaProbe7TriggerEv
 454              		.thumb
 455              		.thumb_func
 456              		.type	_ZN10DeltaProbe7TriggerEv, %function
ARM GAS  C:\Users\George\AppData\Local\Temp\ccHbOWKq.s 			page 9


 457              	_ZN10DeltaProbe7TriggerEv:
 458              		@ args = 0, pretend = 0, frame = 0
 459              		@ frame_needed = 0, uses_anonymous_args = 0
 460              		@ link register save eliminated.
 461 0000 D0F81431 		ldr	r3, [r0, #276]
 462 0004 13B9     		cbnz	r3, .L49
 463 0006 0123     		movs	r3, #1
 464 0008 C0F81431 		str	r3, [r0, #276]
 465              	.L49:
 466 000c 7047     		bx	lr
 467              		.size	_ZN10DeltaProbe7TriggerEv, .-_ZN10DeltaProbe7TriggerEv
 468 000e 00BF     		.section	.rodata.str1.4,"aMS",%progbits,1
 469              		.align	2
 470              	.LC0:
 471 0000 53746172 		.ascii	"Start probe f=%.1f a=%.2f r=%.2f h=%.1f\012\000"
 471      74207072 
 471      6F626520 
 471      663D252E 
 471      31662061 
 472 0029 000000   		.space	3
 473              	.LC1:
 474 002c 6F6B2073 		.ascii	"ok so far\012\000"
 474      6F206661 
 474      720A00
 475 0037 00       		.space	1
 476              	.LC2:
 477 0038 6E6F726D 		.ascii	"normalSteps=%u\012\000"
 477      616C5374 
 477      6570733D 
 477      25750A00 
 478              	.LC3:
 479 0048 68616C66 		.ascii	"halfCycleTime=%u halfCyclesPerIncrement=%u peak acc"
 479      4379636C 
 479      6554696D 
 479      653D2575 
 479      2068616C 
 480 007b 656C3D25 		.ascii	"el=%.1f\012\000"
 480      2E31660A 
 480      00
 481              	.LC4:
 482 0084 6E6F726D 		.ascii	"normalTable=\000"
 482      616C5461 
 482      626C653D 
 482      00
 483 0091 000000   		.space	3
 484              	.LC5:
 485 0094 20696E63 		.ascii	" incStepTable=\000"
 485      53746570 
 485      5461626C 
 485      653D00
 486 00a3 00       		.space	1
 487              	.LC6:
 488 00a4 20257500 		.ascii	" %u\000"
 489              	.LC7:
 490 00a8 0A00     		.ascii	"\012\000"
 491 00aa 0000     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 492              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
ARM GAS  C:\Users\George\AppData\Local\Temp\ccHbOWKq.s 			page 10


 493              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 494              	_ZL28cpu_irq_prev_interrupt_state:
 495 0000 00       		.space	1
 496              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 497              		.align	2
 498              		.type	_ZL32cpu_irq_critical_section_counter, %object
 499              		.size	_ZL32cpu_irq_critical_section_counter, 4
 500              	_ZL32cpu_irq_critical_section_counter:
 501 0000 00000000 		.space	4
 502              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
