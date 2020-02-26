ARM GAS  C:\Users\George\AppData\Local\Temp\ccqAnTxc.s 			page 1


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
  14              		.file	"DriveMovement.cpp"
  15              		.global	__aeabi_fmul
  16              		.global	__aeabi_fdiv
  17              		.global	__aeabi_f2ulz
  18              		.global	__aeabi_f2uiz
  19              		.global	__aeabi_fcmplt
  20              		.section	.text._ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams,"ax",%progbits
  21              		.align	2
  22              		.global	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams
  23              		.thumb
  24              		.thumb_func
  25              		.type	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams, %function
  26              	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams:
  27              		@ args = 0, pretend = 0, frame = 0
  28              		@ frame_needed = 0, uses_anonymous_args = 0
  29 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  30 0004 3C4B     		ldr	r3, .L9
  31 0006 0646     		mov	r6, r0
  32 0008 007E     		ldrb	r0, [r0, #24]	@ zero_extendqisi2
  33 000a 1C68     		ldr	r4, [r3]
  34 000c 0F46     		mov	r7, r1
  35 000e 9046     		mov	r8, r2
  36 0010 0146     		mov	r1, r0
  37 0012 07F15802 		add	r2, r7, #88
  38 0016 00F14E05 		add	r5, r0, #78
  39 001a 9868     		ldr	r0, [r3, #8]
  40 001c 54F82540 		ldr	r4, [r4, r5, lsl #2]	@ float
  41 0020 FFF7FEFF 		bl	_ZNK4Move11MotorFactorEjPKf
  42 0024 2146     		mov	r1, r4
  43 0026 20F00040 		bic	r0, r0, #-2147483648
  44 002a FFF7FEFF 		bl	__aeabi_fmul
  45 002e D7F88010 		ldr	r1, [r7, #128]	@ float
  46 0032 8146     		mov	r9, r0
  47 0034 FFF7FEFF 		bl	__aeabi_fmul
  48 0038 0146     		mov	r1, r0
  49 003a 3048     		ldr	r0, .L9+4
  50 003c FFF7FEFF 		bl	__aeabi_fdiv
  51 0040 FFF7FEFF 		bl	__aeabi_f2ulz
  52 0044 0018     		adds	r0, r0, r0
  53 0046 41EB0101 		adc	r1, r1, r1
  54 004a C6E90C01 		strd	r0, [r6, #48]
  55 004e D7F89C10 		ldr	r1, [r7, #156]	@ float
  56 0052 4846     		mov	r0, r9
  57 0054 FFF7FEFF 		bl	__aeabi_fmul
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqAnTxc.s 			page 2


  58 0058 FFF7FEFF 		bl	__aeabi_f2uiz
  59 005c 0130     		adds	r0, r0, #1
  60 005e B063     		str	r0, [r6, #56]
  61 0060 D8F80430 		ldr	r3, [r8, #4]
  62 0064 D7F89810 		ldr	r1, [r7, #152]	@ float
  63 0068 4846     		mov	r0, r9
  64 006a B360     		str	r3, [r6, #8]
  65 006c FFF7FEFF 		bl	__aeabi_fmul
  66 0070 0146     		mov	r1, r0
  67 0072 2348     		ldr	r0, .L9+8
  68 0074 FFF7FEFF 		bl	__aeabi_fdiv
  69 0078 FFF7FEFF 		bl	__aeabi_f2uiz
  70 007c 3064     		str	r0, [r6, #64]
  71 007e D8F81430 		ldr	r3, [r8, #20]
  72 0082 D7F8A010 		ldr	r1, [r7, #160]	@ float
  73 0086 4846     		mov	r0, r9
  74 0088 F360     		str	r3, [r6, #12]
  75 008a FFF7FEFF 		bl	__aeabi_fmul
  76 008e 4FF07C51 		mov	r1, #1056964608
  77 0092 FFF7FEFF 		bl	__aeabi_fcmplt
  78 0096 28BB     		cbnz	r0, .L8
  79 0098 D8F80010 		ldr	r1, [r8]	@ float
  80 009c 4846     		mov	r0, r9
  81 009e FFF7FEFF 		bl	__aeabi_fmul
  82 00a2 FFF7FEFF 		bl	__aeabi_f2uiz
  83 00a6 0130     		adds	r0, r0, #1
  84 00a8 F063     		str	r0, [r6, #60]
  85 00aa D8F81030 		ldr	r3, [r8, #16]
  86 00ae D8F80000 		ldr	r0, [r8]	@ float
  87 00b2 1449     		ldr	r1, .L9+12
  88 00b4 3361     		str	r3, [r6, #16]
  89 00b6 FFF7FEFF 		bl	__aeabi_fmul
  90 00ba D7F88010 		ldr	r1, [r7, #128]	@ float
  91 00be FFF7FEFF 		bl	__aeabi_fdiv
  92 00c2 FFF7FEFF 		bl	__aeabi_f2ulz
  93 00c6 D8F80830 		ldr	r3, [r8, #8]
  94 00ca 7469     		ldr	r4, [r6, #20]
  95 00cc E3FB0301 		umlal	r0, r1, r3, r3
  96 00d0 C6E90001 		strd	r0, [r6]
  97 00d4 611C     		adds	r1, r4, #1
  98              	.L4:
  99 00d6 0022     		movs	r2, #0
 100 00d8 0023     		movs	r3, #0
 101 00da C6E91223 		strd	r2, [r6, #72]
 102 00de 3162     		str	r1, [r6, #32]
 103 00e0 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 104              	.L8:
 105 00e4 7169     		ldr	r1, [r6, #20]
 106 00e6 0020     		movs	r0, #0
 107 00e8 0131     		adds	r1, r1, #1
 108 00ea 0022     		movs	r2, #0
 109 00ec 0023     		movs	r3, #0
 110 00ee F163     		str	r1, [r6, #60]
 111 00f0 3061     		str	r0, [r6, #16]
 112 00f2 C6E90023 		strd	r2, [r6]
 113 00f6 EEE7     		b	.L4
 114              	.L10:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqAnTxc.s 			page 3


 115              		.align	2
 116              	.L9:
 117 00f8 00000000 		.word	reprap
 118 00fc 288BC852 		.word	1388874536
 119 0100 A037204E 		.word	1310734240
 120 0104 288B4853 		.word	1397263144
 121              		.size	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams, .-_ZN13DriveMovement20Prepare
 122              		.section	.text._ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams,"ax",%progbits
 123              		.align	2
 124              		.global	_ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams
 125              		.thumb
 126              		.thumb_func
 127              		.type	_ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams, %function
 128              	_ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams:
 129              		@ args = 0, pretend = 0, frame = 0
 130              		@ frame_needed = 0, uses_anonymous_args = 0
 131 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 132 0002 334B     		ldr	r3, .L18
 133 0004 0446     		mov	r4, r0
 134 0006 007E     		ldrb	r0, [r0, #24]	@ zero_extendqisi2
 135 0008 1B68     		ldr	r3, [r3]
 136 000a 4E30     		adds	r0, r0, #78
 137 000c 53F82060 		ldr	r6, [r3, r0, lsl #2]	@ float
 138 0010 0D46     		mov	r5, r1
 139 0012 3046     		mov	r0, r6
 140 0014 D1F88010 		ldr	r1, [r1, #128]	@ float
 141 0018 1746     		mov	r7, r2
 142 001a FFF7FEFF 		bl	__aeabi_fmul
 143 001e 4FF08741 		mov	r1, #1132462080
 144 0022 FFF7FEFF 		bl	__aeabi_fmul
 145 0026 0146     		mov	r1, r0
 146 0028 2A48     		ldr	r0, .L18+4
 147 002a FFF7FEFF 		bl	__aeabi_fdiv
 148 002e FFF7FEFF 		bl	__aeabi_f2uiz
 149 0032 2064     		str	r0, [r4, #64]
 150 0034 D5F89C10 		ldr	r1, [r5, #156]	@ float
 151 0038 3046     		mov	r0, r6
 152 003a FFF7FEFF 		bl	__aeabi_fmul
 153 003e 4FF08841 		mov	r1, #1140850688
 154 0042 FFF7FEFF 		bl	__aeabi_fmul
 155 0046 FFF7FEFF 		bl	__aeabi_f2uiz
 156 004a 6064     		str	r0, [r4, #68]
 157 004c 7B68     		ldr	r3, [r7, #4]
 158 004e D5F89810 		ldr	r1, [r5, #152]	@ float
 159 0052 3046     		mov	r0, r6
 160 0054 A360     		str	r3, [r4, #8]
 161 0056 FFF7FEFF 		bl	__aeabi_fmul
 162 005a 0146     		mov	r1, r0
 163 005c 1E48     		ldr	r0, .L18+8
 164 005e FFF7FEFF 		bl	__aeabi_fdiv
 165 0062 FFF7FEFF 		bl	__aeabi_f2uiz
 166 0066 E064     		str	r0, [r4, #76]
 167 0068 7B69     		ldr	r3, [r7, #20]
 168 006a D5F8A010 		ldr	r1, [r5, #160]	@ float
 169 006e 3046     		mov	r0, r6
 170 0070 E360     		str	r3, [r4, #12]
 171 0072 FFF7FEFF 		bl	__aeabi_fmul
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqAnTxc.s 			page 4


 172 0076 4FF07C51 		mov	r1, #1056964608
 173 007a FFF7FEFF 		bl	__aeabi_fcmplt
 174 007e E0B9     		cbnz	r0, .L17
 175 0080 3968     		ldr	r1, [r7]	@ float
 176 0082 3046     		mov	r0, r6
 177 0084 FFF7FEFF 		bl	__aeabi_fmul
 178 0088 4FF08841 		mov	r1, #1140850688
 179 008c FFF7FEFF 		bl	__aeabi_fmul
 180 0090 FFF7FEFF 		bl	__aeabi_f2uiz
 181 0094 A064     		str	r0, [r4, #72]
 182 0096 3B69     		ldr	r3, [r7, #16]
 183 0098 3868     		ldr	r0, [r7]	@ float
 184 009a 1049     		ldr	r1, .L18+12
 185 009c 2361     		str	r3, [r4, #16]
 186 009e FFF7FEFF 		bl	__aeabi_fmul
 187 00a2 D5F88010 		ldr	r1, [r5, #128]	@ float
 188 00a6 FFF7FEFF 		bl	__aeabi_fdiv
 189 00aa FFF7FEFF 		bl	__aeabi_f2ulz
 190 00ae BB68     		ldr	r3, [r7, #8]
 191 00b0 E3FB0301 		umlal	r0, r1, r3, r3
 192 00b4 C4E90001 		strd	r0, [r4]
 193 00b8 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 194              	.L17:
 195 00ba 4FF0FF30 		mov	r0, #-1
 196 00be 0021     		movs	r1, #0
 197 00c0 0022     		movs	r2, #0
 198 00c2 0023     		movs	r3, #0
 199 00c4 A064     		str	r0, [r4, #72]
 200 00c6 2161     		str	r1, [r4, #16]
 201 00c8 C4E90023 		strd	r2, [r4]
 202 00cc F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 203              	.L19:
 204 00ce 00BF     		.align	2
 205              	.L18:
 206 00d0 00000000 		.word	reprap
 207 00d4 288BC852 		.word	1388874536
 208 00d8 A037204E 		.word	1310734240
 209 00dc 288B4853 		.word	1397263144
 210              		.size	_ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams, .-_ZN13DriveMovement16PrepareDelt
 211              		.global	__aeabi_fcmpgt
 212              		.global	__aeabi_ui2f
 213              		.global	__aeabi_fsub
 214              		.global	__aeabi_f2iz
 215              		.global	__aeabi_fadd
 216              		.global	__aeabi_fcmpge
 217              		.global	__aeabi_uldivmod
 218              		.section	.text._ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsb,"ax",%progbits
 219              		.align	2
 220              		.global	_ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsb
 221              		.thumb
 222              		.thumb_func
 223              		.type	_ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsb, %function
 224              	_ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsb:
 225              		@ args = 0, pretend = 0, frame = 32
 226              		@ frame_needed = 0, uses_anonymous_args = 0
 227 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 228 0004 077E     		ldrb	r7, [r0, #24]	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqAnTxc.s 			page 5


 229 0006 DFF89CA2 		ldr	r10, .L45+16
 230 000a 0D46     		mov	r5, r1
 231 000c 07F11601 		add	r1, r7, #22
 232 0010 55F82190 		ldr	r9, [r5, r1, lsl #2]	@ float
 233 0014 DAF80080 		ldr	r8, [r10]
 234 0018 07F14E01 		add	r1, r7, #78
 235 001c 89B0     		sub	sp, sp, #36
 236 001e 58F82110 		ldr	r1, [r8, r1, lsl #2]	@ float
 237 0022 0446     		mov	r4, r0
 238 0024 29F00040 		bic	r0, r9, #-2147483648
 239 0028 1646     		mov	r6, r2
 240 002a 0193     		str	r3, [sp, #4]
 241 002c FFF7FEFF 		bl	__aeabi_fmul
 242 0030 D5F88010 		ldr	r1, [r5, #128]	@ float
 243 0034 8346     		mov	fp, r0
 244 0036 FFF7FEFF 		bl	__aeabi_fmul
 245 003a 0146     		mov	r1, r0
 246 003c 9548     		ldr	r0, .L45
 247 003e FFF7FEFF 		bl	__aeabi_fdiv
 248 0042 FFF7FEFF 		bl	__aeabi_f2ulz
 249 0046 0218     		adds	r2, r0, r0
 250 0048 41EB0103 		adc	r3, r1, r1
 251 004c C4E90C23 		strd	r2, [r4, #48]
 252 0050 DDF804C0 		ldr	ip, [sp, #4]
 253 0054 CDE90223 		strd	r2, [sp, #8]
 254 0058 BCF1000F 		cmp	ip, #0
 255 005c 1CD0     		beq	.L32
 256 005e 4846     		mov	r0, r9
 257 0060 0021     		movs	r1, #0
 258 0062 FFF7FEFF 		bl	__aeabi_fcmpgt
 259 0066 0028     		cmp	r0, #0
 260 0068 00F00481 		beq	.L41
 261 006c DAF81030 		ldr	r3, [r10, #16]
 262 0070 D3F88431 		ldr	r3, [r3, #388]
 263 0074 FF1A     		subs	r7, r7, r3
 264 0076 052F     		cmp	r7, #5
 265 0078 00F2F780 		bhi	.L34
 266 007c 6037     		adds	r7, r7, #96
 267 007e 58F82770 		ldr	r7, [r8, r7, lsl #2]	@ float
 268 0082 8549     		ldr	r1, .L45+4
 269 0084 3846     		mov	r0, r7
 270 0086 FFF7FEFF 		bl	__aeabi_fmul
 271 008a FFF7FEFF 		bl	__aeabi_f2uiz
 272 008e 8046     		mov	r8, r0
 273 0090 FFF7FEFF 		bl	__aeabi_ui2f
 274 0094 0246     		mov	r2, r0
 275 0096 02E0     		b	.L21
 276              	.L32:
 277 0098 0022     		movs	r2, #0
 278 009a E046     		mov	r8, ip
 279 009c 1746     		mov	r7, r2
 280              	.L21:
 281 009e D5F89090 		ldr	r9, [r5, #144]	@ float
 282 00a2 D5F89400 		ldr	r0, [r5, #148]	@ float
 283 00a6 4946     		mov	r1, r9
 284 00a8 0192     		str	r2, [sp, #4]
 285 00aa FFF7FEFF 		bl	__aeabi_fsub
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqAnTxc.s 			page 6


 286 00ae 0146     		mov	r1, r0
 287 00b0 3846     		mov	r0, r7
 288 00b2 FFF7FEFF 		bl	__aeabi_fmul
 289 00b6 5946     		mov	r1, fp
 290 00b8 0690     		str	r0, [sp, #24]	@ float
 291 00ba FFF7FEFF 		bl	__aeabi_fmul
 292 00be FFF7FEFF 		bl	__aeabi_f2iz
 293 00c2 6369     		ldr	r3, [r4, #20]
 294 00c4 4946     		mov	r1, r9
 295 00c6 00EB0309 		add	r9, r0, r3
 296 00ca D5F89800 		ldr	r0, [r5, #152]	@ float
 297 00ce FFF7FEFF 		bl	__aeabi_fsub
 298 00d2 0146     		mov	r1, r0
 299 00d4 3846     		mov	r0, r7
 300 00d6 FFF7FEFF 		bl	__aeabi_fmul
 301 00da D5F89C10 		ldr	r1, [r5, #156]	@ float
 302 00de 8246     		mov	r10, r0
 303 00e0 FFF7FEFF 		bl	__aeabi_fadd
 304 00e4 5946     		mov	r1, fp
 305 00e6 FFF7FEFF 		bl	__aeabi_fmul
 306 00ea FFF7FEFF 		bl	__aeabi_f2uiz
 307 00ee 0130     		adds	r0, r0, #1
 308 00f0 A063     		str	r0, [r4, #56]
 309 00f2 7368     		ldr	r3, [r6, #4]
 310 00f4 D5F89810 		ldr	r1, [r5, #152]	@ float
 311 00f8 4344     		add	r3, r3, r8
 312 00fa A360     		str	r3, [r4, #8]
 313 00fc 5846     		mov	r0, fp
 314 00fe FFF7FEFF 		bl	__aeabi_fmul
 315 0102 0146     		mov	r1, r0
 316 0104 6548     		ldr	r0, .L45+8
 317 0106 FFF7FEFF 		bl	__aeabi_fdiv
 318 010a FFF7FEFF 		bl	__aeabi_f2uiz
 319 010e 2064     		str	r0, [r4, #64]
 320 0110 019A     		ldr	r2, [sp, #4]
 321 0112 B169     		ldr	r1, [r6, #24]	@ float
 322 0114 1046     		mov	r0, r2
 323 0116 FFF7FEFF 		bl	__aeabi_fmul
 324 011a FFF7FEFF 		bl	__aeabi_f2iz
 325 011e 7369     		ldr	r3, [r6, #20]
 326 0120 D5F8A010 		ldr	r1, [r5, #160]	@ float
 327 0124 181A     		subs	r0, r3, r0
 328 0126 E060     		str	r0, [r4, #12]
 329 0128 5846     		mov	r0, fp
 330 012a FFF7FEFF 		bl	__aeabi_fmul
 331 012e 4FF07C51 		mov	r1, #1056964608
 332 0132 FFF7FEFF 		bl	__aeabi_fcmplt
 333 0136 88B1     		cbz	r0, .L42
 334 0138 0022     		movs	r2, #0
 335 013a 0023     		movs	r3, #0
 336 013c C4E91223 		strd	r2, [r4, #72]
 337 0140 C4E90023 		strd	r2, [r4]
 338 0144 09F10101 		add	r1, r9, #1
 339 0148 29EAE975 		bic	r5, r9, r9, asr #31
 340 014c 0020     		movs	r0, #0
 341 014e 6561     		str	r5, [r4, #20]
 342 0150 2162     		str	r1, [r4, #32]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqAnTxc.s 			page 7


 343 0152 E163     		str	r1, [r4, #60]
 344 0154 2061     		str	r0, [r4, #16]
 345              	.L20:
 346 0156 09B0     		add	sp, sp, #36
 347              		@ sp needed
 348 0158 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 349              	.L42:
 350 015c 3168     		ldr	r1, [r6]	@ float
 351 015e 5046     		mov	r0, r10
 352 0160 FFF7FEFF 		bl	__aeabi_fadd
 353 0164 5946     		mov	r1, fp
 354 0166 FFF7FEFF 		bl	__aeabi_fmul
 355 016a FFF7FEFF 		bl	__aeabi_f2uiz
 356 016e 0130     		adds	r0, r0, #1
 357 0170 E063     		str	r0, [r4, #60]
 358 0172 3369     		ldr	r3, [r6, #16]
 359 0174 D6F800B0 		ldr	fp, [r6]	@ float
 360 0178 B268     		ldr	r2, [r6, #8]
 361 017a C8EB0303 		rsb	r3, r8, r3
 362 017e 2361     		str	r3, [r4, #16]
 363 0180 D5F88060 		ldr	r6, [r5, #128]	@ float
 364 0184 0790     		str	r0, [sp, #28]
 365 0186 5146     		mov	r1, r10
 366 0188 5846     		mov	r0, fp
 367 018a C8EB0208 		rsb	r8, r8, r2
 368 018e FFF7FEFF 		bl	__aeabi_fadd
 369 0192 4349     		ldr	r1, .L45+12
 370 0194 FFF7FEFF 		bl	__aeabi_fmul
 371 0198 3146     		mov	r1, r6
 372 019a FFF7FEFF 		bl	__aeabi_fdiv
 373 019e FFF7FEFF 		bl	__aeabi_f2ulz
 374 01a2 C8FB0801 		smlal	r0, r1, r8, r8
 375 01a6 CDE90401 		strd	r0, [sp, #16]
 376 01aa DDE90423 		ldrd	r2, [sp, #16]
 377 01ae 3846     		mov	r0, r7
 378 01b0 C4E90023 		strd	r2, [r4]
 379 01b4 3146     		mov	r1, r6
 380 01b6 FFF7FEFF 		bl	__aeabi_fmul
 381 01ba 0146     		mov	r1, r0
 382 01bc D5F89800 		ldr	r0, [r5, #152]	@ float
 383 01c0 FFF7FEFF 		bl	__aeabi_fsub
 384 01c4 0021     		movs	r1, #0
 385 01c6 0746     		mov	r7, r0
 386 01c8 FFF7FEFF 		bl	__aeabi_fcmpgt
 387 01cc 88B1     		cbz	r0, .L26
 388 01ce 3946     		mov	r1, r7
 389 01d0 3846     		mov	r0, r7
 390 01d2 FFF7FEFF 		bl	__aeabi_fmul
 391 01d6 3146     		mov	r1, r6
 392 01d8 8046     		mov	r8, r0
 393 01da 3046     		mov	r0, r6
 394 01dc FFF7FEFF 		bl	__aeabi_fadd
 395 01e0 0146     		mov	r1, r0
 396 01e2 4046     		mov	r0, r8
 397 01e4 FFF7FEFF 		bl	__aeabi_fdiv
 398 01e8 0146     		mov	r1, r0
 399 01ea 5846     		mov	r0, fp
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqAnTxc.s 			page 8


 400 01ec FFF7FEFF 		bl	__aeabi_fadd
 401 01f0 8346     		mov	fp, r0
 402              	.L26:
 403 01f2 E96F     		ldr	r1, [r5, #124]	@ float
 404 01f4 0698     		ldr	r0, [sp, #24]	@ float
 405 01f6 FFF7FEFF 		bl	__aeabi_fadd
 406 01fa 0146     		mov	r1, r0
 407 01fc 5846     		mov	r0, fp
 408 01fe FFF7FEFF 		bl	__aeabi_fcmpge
 409 0202 60B1     		cbz	r0, .L44
 410 0204 29EAE970 		bic	r0, r9, r9, asr #31
 411 0208 09F10101 		add	r1, r9, #1
 412 020c 0022     		movs	r2, #0
 413 020e 0023     		movs	r3, #0
 414 0210 6061     		str	r0, [r4, #20]
 415 0212 2162     		str	r1, [r4, #32]
 416 0214 C4E91223 		strd	r2, [r4, #72]
 417 0218 09B0     		add	sp, sp, #36
 418              		@ sp needed
 419 021a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 420              	.L44:
 421 021e 3846     		mov	r0, r7
 422 0220 0021     		movs	r1, #0
 423 0222 FFF7FEFF 		bl	__aeabi_fcmplt
 424 0226 48BB     		cbnz	r0, .L36
 425 0228 DDE90401 		ldrd	r0, [sp, #16]
 426 022c DDE90223 		ldrd	r2, [sp, #8]
 427 0230 FFF7FEFF 		bl	__aeabi_uldivmod
 428 0234 0130     		adds	r0, r0, #1
 429              	.L30:
 430 0236 00F10043 		add	r3, r0, #-2147483648
 431 023a 013B     		subs	r3, r3, #1
 432 023c 5900     		lsls	r1, r3, #1
 433 023e C9EB0105 		rsb	r5, r9, r1
 434 0242 002D     		cmp	r5, #0
 435 0244 2062     		str	r0, [r4, #32]
 436 0246 1BDD     		ble	.L31
 437 0248 0298     		ldr	r0, [sp, #8]
 438 024a 6561     		str	r5, [r4, #20]
 439 024c A1FB0023 		umull	r2, r3, r1, r0
 440 0250 0398     		ldr	r0, [sp, #12]
 441 0252 01FB0033 		mla	r3, r1, r0, r3
 442 0256 DDE90401 		ldrd	r0, [sp, #16]
 443 025a 121A     		subs	r2, r2, r0
 444 025c 63EB0103 		sbc	r3, r3, r1
 445 0260 C4E91223 		strd	r2, [r4, #72]
 446 0264 09B0     		add	sp, sp, #36
 447              		@ sp needed
 448 0266 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 449              	.L34:
 450 026a 0022     		movs	r2, #0
 451 026c 4FF00008 		mov	r8, #0
 452 0270 1746     		mov	r7, r2
 453 0272 14E7     		b	.L21
 454              	.L41:
 455 0274 0022     		movs	r2, #0
 456 0276 8046     		mov	r8, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqAnTxc.s 			page 9


 457 0278 1746     		mov	r7, r2
 458 027a 10E7     		b	.L21
 459              	.L36:
 460 027c 0798     		ldr	r0, [sp, #28]
 461 027e DAE7     		b	.L30
 462              	.L31:
 463 0280 0023     		movs	r3, #0
 464 0282 29EAE971 		bic	r1, r9, r9, asr #31
 465 0286 0022     		movs	r2, #0
 466 0288 C4E91223 		strd	r2, [r4, #72]
 467 028c 4B1C     		adds	r3, r1, #1
 468 028e 6161     		str	r1, [r4, #20]
 469 0290 2362     		str	r3, [r4, #32]
 470 0292 60E7     		b	.L20
 471              	.L46:
 472              		.align	2
 473              	.L45:
 474 0294 288BC852 		.word	1388874536
 475 0298 A0372049 		.word	1226848160
 476 029c A037204E 		.word	1310734240
 477 02a0 288B4853 		.word	1397263144
 478 02a4 00000000 		.word	reprap
 479              		.size	_ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsb, .-_ZN13DriveMovement15PrepareExtr
 480              		.section	.text._ZNK13DriveMovement10DebugPrintEcb,"ax",%progbits
 481              		.align	2
 482              		.global	_ZNK13DriveMovement10DebugPrintEcb
 483              		.thumb
 484              		.thumb_func
 485              		.type	_ZNK13DriveMovement10DebugPrintEcb, %function
 486              	_ZNK13DriveMovement10DebugPrintEcb:
 487              		@ args = 0, pretend = 0, frame = 0
 488              		@ frame_needed = 0, uses_anonymous_args = 0
 489 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 490 0004 8046     		mov	r8, r0
 491 0006 407E     		ldrb	r0, [r0, #25]	@ zero_extendqisi2
 492 0008 8BB0     		sub	sp, sp, #44
 493 000a 1646     		mov	r6, r2
 494 000c 0028     		cmp	r0, #0
 495 000e 50D0     		beq	.L48
 496 0010 98F81A30 		ldrb	r3, [r8, #26]	@ zero_extendqisi2
 497 0014 DFF8BCB0 		ldr	fp, .L56+20
 498 0018 294A     		ldr	r2, .L56
 499 001a 002B     		cmp	r3, #0
 500 001c D8F81CA0 		ldr	r10, [r8, #28]
 501 0020 0CBF     		ite	eq
 502 0022 4223     		moveq	r3, #66
 503 0024 4623     		movne	r3, #70
 504 0026 0228     		cmp	r0, #2
 505 0028 18BF     		it	ne
 506 002a 5A46     		movne	r2, fp
 507 002c D8F81400 		ldr	r0, [r8, #20]
 508 0030 D8F80840 		ldr	r4, [r8, #8]
 509 0034 D8F81050 		ldr	r5, [r8, #16]
 510 0038 D8F82090 		ldr	r9, [r8, #32]
 511 003c D8F828C0 		ldr	ip, [r8, #40]
 512 0040 D8F80C70 		ldr	r7, [r8, #12]
 513 0044 8DE80104 		stmia	sp, {r0, r10}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqAnTxc.s 			page 10


 514 0048 CDF80890 		str	r9, [sp, #8]
 515 004c CDF80CC0 		str	ip, [sp, #12]
 516 0050 0494     		str	r4, [sp, #16]
 517 0052 0597     		str	r7, [sp, #20]
 518 0054 0695     		str	r5, [sp, #24]
 519 0056 D8E90045 		ldrd	r4, [r8]
 520 005a 1A48     		ldr	r0, .L56+4
 521 005c CDE90845 		strd	r4, [sp, #32]
 522 0060 FFF7FEFF 		bl	debugPrintf
 523 0064 08F13801 		add	r1, r8, #56
 524 0068 0EC9     		ldmia	r1, {r1, r2, r3}
 525 006a 76B9     		cbnz	r6, .L55
 526 006c 0293     		str	r3, [sp, #8]
 527 006e D8E90C67 		ldrd	r6, [r8, #48]
 528 0072 D8E91245 		ldrd	r4, [r8, #72]
 529 0076 1448     		ldr	r0, .L56+8
 530 0078 CDE90067 		strd	r6, [sp]
 531 007c CDE90445 		strd	r4, [sp, #16]
 532 0080 FFF7FEFF 		bl	debugPrintf
 533 0084 0BB0     		add	sp, sp, #44
 534              		@ sp needed
 535 0086 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 536              	.L55:
 537 008a D8F84450 		ldr	r5, [r8, #68]
 538 008e D8F84840 		ldr	r4, [r8, #72]
 539 0092 D8F84C00 		ldr	r0, [r8, #76]
 540 0096 0293     		str	r3, [sp, #8]
 541 0098 0590     		str	r0, [sp, #20]
 542 009a 0395     		str	r5, [sp, #12]
 543 009c 0494     		str	r4, [sp, #16]
 544 009e D8E90C45 		ldrd	r4, [r8, #48]
 545 00a2 0A48     		ldr	r0, .L56+12
 546 00a4 CDE90045 		strd	r4, [sp]
 547 00a8 FFF7FEFF 		bl	debugPrintf
 548 00ac 0BB0     		add	sp, sp, #44
 549              		@ sp needed
 550 00ae BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 551              	.L48:
 552 00b2 0748     		ldr	r0, .L56+16
 553 00b4 0BB0     		add	sp, sp, #44
 554              		@ sp needed
 555 00b6 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 556 00ba FFF7FEBF 		b	debugPrintf
 557              	.L57:
 558 00be 00BF     		.align	2
 559              	.L56:
 560 00c0 00000000 		.word	.LC0
 561 00c4 0C000000 		.word	.LC2
 562 00c8 F0000000 		.word	.LC4
 563 00cc 78000000 		.word	.LC3
 564 00d0 5C010000 		.word	.LC5
 565 00d4 08000000 		.word	.LC1
 566              		.size	_ZNK13DriveMovement10DebugPrintEcb, .-_ZNK13DriveMovement10DebugPrintEcb
 567              		.section	.text._ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb,"ax",%progbits
 568              		.align	2
 569              		.global	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb
 570              		.thumb
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqAnTxc.s 			page 11


 571              		.thumb_func
 572              		.type	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb, %function
 573              	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb:
 574              		@ args = 0, pretend = 0, frame = 0
 575              		@ frame_needed = 0, uses_anonymous_args = 0
 576 0000 836A     		ldr	r3, [r0, #40]
 577 0002 2DE9F04D 		push	{r4, r5, r6, r7, r8, r10, fp, lr}
 578 0006 262B     		cmp	r3, #38
 579 0008 0446     		mov	r4, r0
 580 000a 0F46     		mov	r7, r1
 581 000c 2CD9     		bls	.L59
 582 000e 0023     		movs	r3, #0
 583 0010 E569     		ldr	r5, [r4, #28]
 584 0012 1846     		mov	r0, r3
 585 0014 1E46     		mov	r6, r3
 586              	.L60:
 587 0016 A16B     		ldr	r1, [r4, #56]
 588 0018 1D44     		add	r5, r5, r3
 589 001a 8D42     		cmp	r5, r1
 590 001c E076     		strb	r0, [r4, #27]
 591 001e D4F82480 		ldr	r8, [r4, #36]
 592 0022 57D3     		bcc	.L85
 593              	.L67:
 594 0024 E36B     		ldr	r3, [r4, #60]
 595 0026 9D42     		cmp	r5, r3
 596 0028 32D2     		bcs	.L69
 597 002a 206C     		ldr	r0, [r4, #64]
 598 002c A5FB0001 		umull	r0, r1, r5, r0
 599 0030 820A     		lsrs	r2, r0, #10
 600 0032 E068     		ldr	r0, [r4, #12]
 601 0034 42EA8152 		orr	r2, r2, r1, lsl #22
 602 0038 0244     		add	r2, r2, r0
 603 003a 6262     		str	r2, [r4, #36]
 604              	.L68:
 605 003c C8EB0208 		rsb	r8, r8, r2
 606 0040 28FA06F6 		lsr	r6, r8, r6
 607 0044 D7F8A830 		ldr	r3, [r7, #168]
 608 0048 A662     		str	r6, [r4, #40]
 609 004a 9342     		cmp	r3, r2
 610 004c 51D2     		bcs	.L81
 611 004e E069     		ldr	r0, [r4, #28]
 612 0050 6169     		ldr	r1, [r4, #20]
 613 0052 0130     		adds	r0, r0, #1
 614 0054 8842     		cmp	r0, r1
 615 0056 4FD2     		bcs	.L86
 616 0058 404B     		ldr	r3, .L89
 617 005a 0221     		movs	r1, #2
 618 005c 1344     		add	r3, r3, r2
 619 005e A362     		str	r3, [r4, #40]
 620 0060 6176     		strb	r1, [r4, #25]
 621 0062 0020     		movs	r0, #0
 622 0064 BDE8F08D 		pop	{r4, r5, r6, r7, r8, r10, fp, pc}
 623              	.L59:
 624 0068 C569     		ldr	r5, [r0, #28]
 625 006a 016A     		ldr	r1, [r0, #32]
 626 006c 4669     		ldr	r6, [r0, #20]
 627 006e 8D42     		cmp	r5, r1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqAnTxc.s 			page 12


 628 0070 02D8     		bhi	.L63
 629 0072 B142     		cmp	r1, r6
 630 0074 98BF     		it	ls
 631 0076 0E46     		movls	r6, r1
 632              	.L63:
 633 0078 082B     		cmp	r3, #8
 634 007a C5EB0606 		rsb	r6, r5, r6
 635 007e 1AD8     		bhi	.L64
 636 0080 082E     		cmp	r6, #8
 637 0082 50D8     		bhi	.L79
 638              	.L65:
 639 0084 042E     		cmp	r6, #4
 640 0086 18D9     		bls	.L66
 641 0088 0323     		movs	r3, #3
 642 008a 1846     		mov	r0, r3
 643 008c 0226     		movs	r6, #2
 644 008e C2E7     		b	.L60
 645              	.L69:
 646 0090 236A     		ldr	r3, [r4, #32]
 647 0092 9D42     		cmp	r5, r3
 648 0094 34D2     		bcs	.L70
 649 0096 D4E900AB 		ldrd	r10, [r4]
 650 009a 226B     		ldr	r2, [r4, #48]
 651 009c 636B     		ldr	r3, [r4, #52]
 652 009e A2FB0501 		umull	r0, r1, r2, r5
 653 00a2 05FB0311 		mla	r1, r5, r3, r1
 654 00a6 5945     		cmp	r1, fp
 655 00a8 08BF     		it eq
 656 00aa 5045     		cmpeq	r0, r10
 657 00ac 3FD3     		bcc	.L87
 658 00ae 2069     		ldr	r0, [r4, #16]
 659              	.L72:
 660 00b0 6062     		str	r0, [r4, #36]
 661 00b2 0246     		mov	r2, r0
 662 00b4 C2E7     		b	.L68
 663              	.L64:
 664 00b6 122B     		cmp	r3, #18
 665 00b8 E4D9     		bls	.L65
 666              	.L66:
 667 00ba 022E     		cmp	r6, #2
 668 00bc 94BF     		ite	ls
 669 00be 0026     		movls	r6, #0
 670 00c0 0126     		movhi	r6, #1
 671 00c2 3346     		mov	r3, r6
 672 00c4 A16B     		ldr	r1, [r4, #56]
 673 00c6 1D44     		add	r5, r5, r3
 674 00c8 3046     		mov	r0, r6
 675 00ca 8D42     		cmp	r5, r1
 676 00cc E076     		strb	r0, [r4, #27]
 677 00ce D4F82480 		ldr	r8, [r4, #36]
 678 00d2 A7D2     		bcs	.L67
 679              	.L85:
 680 00d4 206B     		ldr	r0, [r4, #48]
 681 00d6 636B     		ldr	r3, [r4, #52]
 682 00d8 A0FB0501 		umull	r0, r1, r0, r5
 683 00dc 05FB0311 		mla	r1, r5, r3, r1
 684 00e0 A368     		ldr	r3, [r4, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqAnTxc.s 			page 13


 685 00e2 E3FB0301 		umlal	r0, r1, r3, r3
 686 00e6 FFF7FEFF 		bl	_Z7isqrt64y
 687 00ea A268     		ldr	r2, [r4, #8]
 688 00ec 821A     		subs	r2, r0, r2
 689 00ee 6262     		str	r2, [r4, #36]
 690 00f0 A4E7     		b	.L68
 691              	.L81:
 692 00f2 0120     		movs	r0, #1
 693 00f4 BDE8F08D 		pop	{r4, r5, r6, r7, r8, r10, fp, pc}
 694              	.L86:
 695 00f8 6362     		str	r3, [r4, #36]
 696 00fa 0120     		movs	r0, #1
 697 00fc BDE8F08D 		pop	{r4, r5, r6, r7, r8, r10, fp, pc}
 698              	.L70:
 699 0100 1ED0     		beq	.L88
 700              	.L74:
 701 0102 D4E912AB 		ldrd	r10, [r4, #72]
 702 0106 206B     		ldr	r0, [r4, #48]
 703 0108 636B     		ldr	r3, [r4, #52]
 704 010a A0FB0501 		umull	r0, r1, r0, r5
 705 010e 05FB0311 		mla	r1, r5, r3, r1
 706 0112 B0EB0A00 		subs	r0, r0, r10
 707 0116 61EB0B01 		sbc	r1, r1, fp
 708 011a 2569     		ldr	r5, [r4, #16]
 709 011c FFF7FEFF 		bl	_Z7isqrt64y
 710 0120 4219     		adds	r2, r0, r5
 711 0122 6262     		str	r2, [r4, #36]
 712 0124 8AE7     		b	.L68
 713              	.L79:
 714 0126 0723     		movs	r3, #7
 715 0128 1846     		mov	r0, r3
 716 012a 0326     		movs	r6, #3
 717 012c 73E7     		b	.L60
 718              	.L87:
 719 012e BAEB0000 		subs	r0, r10, r0
 720 0132 6BEB0101 		sbc	r1, fp, r1
 721 0136 2569     		ldr	r5, [r4, #16]
 722 0138 FFF7FEFF 		bl	_Z7isqrt64y
 723 013c 281A     		subs	r0, r5, r0
 724 013e B7E7     		b	.L72
 725              	.L88:
 726 0140 A37E     		ldrb	r3, [r4, #26]	@ zero_extendqisi2
 727 0142 83F00103 		eor	r3, r3, #1
 728 0146 A376     		strb	r3, [r4, #26]
 729 0148 002A     		cmp	r2, #0
 730 014a DAD0     		beq	.L74
 731 014c 0449     		ldr	r1, .L89+4
 732 014e 1A46     		mov	r2, r3
 733 0150 0868     		ldr	r0, [r1]
 734 0152 217E     		ldrb	r1, [r4, #24]	@ zero_extendqisi2
 735 0154 FFF7FEFF 		bl	_ZN8Platform12SetDirectionEjb
 736 0158 D3E7     		b	.L74
 737              	.L90:
 738 015a 00BF     		.align	2
 739              	.L89:
 740 015c 80969800 		.word	10000000
 741 0160 00000000 		.word	reprap
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqAnTxc.s 			page 14


 742              		.size	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb, .-_ZN13DriveMovement29CalcNextSte
 743              		.section	.text._ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb,"ax",%progbits
 744              		.align	2
 745              		.global	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb
 746              		.thumb
 747              		.thumb_func
 748              		.type	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb, %function
 749              	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb:
 750              		@ args = 0, pretend = 0, frame = 0
 751              		@ frame_needed = 0, uses_anonymous_args = 0
 752 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 753 0004 8046     		mov	r8, r0
 754 0006 806A     		ldr	r0, [r0, #40]
 755 0008 8946     		mov	r9, r1
 756 000a 2628     		cmp	r0, #38
 757 000c 72D9     		bls	.L92
 758 000e 0020     		movs	r0, #0
 759 0010 D8F81C30 		ldr	r3, [r8, #28]
 760 0014 D8F82050 		ldr	r5, [r8, #32]
 761 0018 8246     		mov	r10, r0
 762 001a 4FF40074 		mov	r4, #512
 763              	.L93:
 764 001e AB42     		cmp	r3, r5
 765 0020 88F81B00 		strb	r0, [r8, #27]
 766 0024 00F09280 		beq	.L126
 767              	.L102:
 768 0028 98F81A30 		ldrb	r3, [r8, #26]	@ zero_extendqisi2
 769 002c 002B     		cmp	r3, #0
 770 002e 00F09280 		beq	.L103
 771              	.L104:
 772 0032 D8F83810 		ldr	r1, [r8, #56]
 773 0036 2144     		add	r1, r1, r4
 774 0038 C8F83810 		str	r1, [r8, #56]
 775 003c D9F88C60 		ldr	r6, [r9, #140]
 776 0040 81FB0667 		smull	r6, r7, r1, r6
 777 0044 002E     		cmp	r6, #0
 778 0046 77F10003 		sbcs	r3, r7, #0
 779 004a C0F2B980 		blt	.L127
 780              	.L105:
 781 004e 81FB0123 		smull	r2, r3, r1, r1
 782 0052 D8E90C01 		ldrd	r0, [r8, #48]
 783 0056 340D     		lsrs	r4, r6, #20
 784 0058 D8F83C60 		ldr	r6, [r8, #60]
 785 005c 44EA0734 		orr	r4, r4, r7, lsl #12
 786 0060 801A     		subs	r0, r0, r2
 787 0062 61EB0301 		sbc	r1, r1, r3
 788 0066 3444     		add	r4, r4, r6
 789 0068 C4FB0401 		smlal	r0, r1, r4, r4
 790 006c 0128     		cmp	r0, #1
 791 006e 71F10003 		sbcs	r3, r1, #0
 792 0072 C0F29080 		blt	.L121
 793 0076 FFF7FEFF 		bl	_Z7isqrt64y
 794              	.L106:
 795 007a 98F81A30 		ldrb	r3, [r8, #26]	@ zero_extendqisi2
 796 007e 002B     		cmp	r3, #0
 797 0080 53D0     		beq	.L107
 798 0082 241A     		subs	r4, r4, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqAnTxc.s 			page 15


 799 0084 002C     		cmp	r4, #0
 800 0086 53DB     		blt	.L128
 801              	.L109:
 802 0088 D8F84430 		ldr	r3, [r8, #68]
 803 008c D8F82460 		ldr	r6, [r8, #36]
 804 0090 9C42     		cmp	r4, r3
 805 0092 C0F08580 		bcc	.L129
 806 0096 D8F84830 		ldr	r3, [r8, #72]
 807 009a 9C42     		cmp	r4, r3
 808 009c 5DD3     		bcc	.L130
 809 009e D8E90023 		ldrd	r2, [r8]
 810 00a2 D8F84010 		ldr	r1, [r8, #64]
 811 00a6 A4FB0101 		umull	r0, r1, r4, r1
 812 00aa 9942     		cmp	r1, r3
 813 00ac 08BF     		it eq
 814 00ae 9042     		cmpeq	r0, r2
 815 00b0 C0F0A880 		bcc	.L131
 816 00b4 D8F81000 		ldr	r0, [r8, #16]
 817              	.L115:
 818 00b8 C8F82400 		str	r0, [r8, #36]
 819 00bc 0246     		mov	r2, r0
 820              	.L112:
 821 00be 961B     		subs	r6, r2, r6
 822 00c0 26FA0AF6 		lsr	r6, r6, r10
 823 00c4 D9F8A830 		ldr	r3, [r9, #168]
 824 00c8 C8F82860 		str	r6, [r8, #40]
 825 00cc 9342     		cmp	r3, r2
 826 00ce 64D2     		bcs	.L122
 827 00d0 D8F81C00 		ldr	r0, [r8, #28]
 828 00d4 D8F81410 		ldr	r1, [r8, #20]
 829 00d8 0130     		adds	r0, r0, #1
 830 00da 8842     		cmp	r0, r1
 831 00dc 80F08480 		bcs	.L132
 832 00e0 4D4B     		ldr	r3, .L134
 833 00e2 0221     		movs	r1, #2
 834 00e4 1344     		add	r3, r3, r2
 835 00e6 C8F82830 		str	r3, [r8, #40]
 836 00ea 88F81910 		strb	r1, [r8, #25]
 837 00ee 0020     		movs	r0, #0
 838 00f0 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 839              	.L92:
 840 00f4 D8F81C30 		ldr	r3, [r8, #28]
 841 00f8 D8F82050 		ldr	r5, [r8, #32]
 842 00fc D8F81410 		ldr	r1, [r8, #20]
 843 0100 AB42     		cmp	r3, r5
 844 0102 02D2     		bcs	.L96
 845 0104 8D42     		cmp	r5, r1
 846 0106 98BF     		it	ls
 847 0108 2946     		movls	r1, r5
 848              	.L96:
 849 010a 0328     		cmp	r0, #3
 850 010c C3EB010A 		rsb	r10, r3, r1
 851 0110 30D8     		bhi	.L97
 852 0112 BAF1100F 		cmp	r10, #16
 853 0116 59D8     		bhi	.L118
 854              	.L98:
 855 0118 BAF1080F 		cmp	r10, #8
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqAnTxc.s 			page 16


 856 011c 69D9     		bls	.L100
 857 011e 4FF48054 		mov	r4, #4096
 858 0122 0720     		movs	r0, #7
 859 0124 4FF0030A 		mov	r10, #3
 860 0128 79E7     		b	.L93
 861              	.L107:
 862 012a 0444     		add	r4, r4, r0
 863 012c 002C     		cmp	r4, #0
 864 012e ABDA     		bge	.L109
 865              	.L128:
 866 0130 D8F81C30 		ldr	r3, [r8, #28]
 867 0134 0222     		movs	r2, #2
 868 0136 03F57423 		add	r3, r3, #999424
 869 013a 03F51073 		add	r3, r3, #576
 870 013e C8F81C30 		str	r3, [r8, #28]
 871 0142 88F81920 		strb	r2, [r8, #25]
 872 0146 0020     		movs	r0, #0
 873 0148 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 874              	.L126:
 875 014c 0023     		movs	r3, #0
 876 014e 88F81A30 		strb	r3, [r8, #26]
 877 0152 002A     		cmp	r2, #0
 878 0154 40D1     		bne	.L133
 879              	.L103:
 880 0156 6442     		negs	r4, r4
 881 0158 6BE7     		b	.L104
 882              	.L130:
 883 015a D8F84C10 		ldr	r1, [r8, #76]
 884 015e A4FB0145 		umull	r4, r5, r4, r1
 885 0162 D8F80C10 		ldr	r1, [r8, #12]
 886 0166 E20C     		lsrs	r2, r4, #19
 887 0168 42EA4532 		orr	r2, r2, r5, lsl #13
 888 016c 0A44     		add	r2, r2, r1
 889 016e C8F82420 		str	r2, [r8, #36]
 890 0172 A4E7     		b	.L112
 891              	.L97:
 892 0174 0828     		cmp	r0, #8
 893 0176 CFD9     		bls	.L98
 894 0178 1228     		cmp	r0, #18
 895 017a 3AD9     		bls	.L100
 896              	.L101:
 897 017c BAF1020F 		cmp	r10, #2
 898 0180 94BF     		ite	ls
 899 0182 4FF0000A 		movls	r10, #0
 900 0186 4FF0010A 		movhi	r10, #1
 901 018a 4FF40074 		mov	r4, #512
 902 018e 5046     		mov	r0, r10
 903 0190 04FA0AF4 		lsl	r4, r4, r10
 904 0194 43E7     		b	.L93
 905              	.L121:
 906 0196 0020     		movs	r0, #0
 907 0198 6FE7     		b	.L106
 908              	.L122:
 909 019a 0120     		movs	r0, #1
 910 019c BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 911              	.L129:
 912 01a0 D8F80800 		ldr	r0, [r8, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqAnTxc.s 			page 17


 913 01a4 D8F84030 		ldr	r3, [r8, #64]
 914 01a8 A0FB0001 		umull	r0, r1, r0, r0
 915 01ac E3FB0401 		umlal	r0, r1, r3, r4
 916 01b0 FFF7FEFF 		bl	_Z7isqrt64y
 917 01b4 D8F80820 		ldr	r2, [r8, #8]
 918 01b8 821A     		subs	r2, r0, r2
 919 01ba C8F82420 		str	r2, [r8, #36]
 920 01be 7EE7     		b	.L112
 921              	.L127:
 922 01c0 164A     		ldr	r2, .L134+4
 923 01c2 0023     		movs	r3, #0
 924 01c4 B618     		adds	r6, r6, r2
 925 01c6 47EB0307 		adc	r7, r7, r3
 926 01ca 40E7     		b	.L105
 927              	.L118:
 928 01cc 4FF40054 		mov	r4, #8192
 929 01d0 0F20     		movs	r0, #15
 930 01d2 4FF0040A 		mov	r10, #4
 931 01d6 22E7     		b	.L93
 932              	.L133:
 933 01d8 1149     		ldr	r1, .L134+8
 934 01da 1A46     		mov	r2, r3
 935 01dc 0868     		ldr	r0, [r1]
 936 01de 98F81810 		ldrb	r1, [r8, #24]	@ zero_extendqisi2
 937 01e2 FFF7FEFF 		bl	_ZN8Platform12SetDirectionEjb
 938 01e6 1FE7     		b	.L102
 939              	.L132:
 940 01e8 C8F82430 		str	r3, [r8, #36]
 941 01ec 0120     		movs	r0, #1
 942 01ee BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 943              	.L100:
 944 01f2 BAF1040F 		cmp	r10, #4
 945 01f6 C1D9     		bls	.L101
 946 01f8 4FF40064 		mov	r4, #2048
 947 01fc 0320     		movs	r0, #3
 948 01fe 4FF0020A 		mov	r10, #2
 949 0202 0CE7     		b	.L93
 950              	.L131:
 951 0204 101A     		subs	r0, r2, r0
 952 0206 63EB0101 		sbc	r1, r3, r1
 953 020a D8F81040 		ldr	r4, [r8, #16]
 954 020e FFF7FEFF 		bl	_Z7isqrt64y
 955 0212 201A     		subs	r0, r4, r0
 956 0214 50E7     		b	.L115
 957              	.L135:
 958 0216 00BF     		.align	2
 959              	.L134:
 960 0218 80969800 		.word	10000000
 961 021c FFFF0F00 		.word	1048575
 962 0220 00000000 		.word	reprap
 963              		.size	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb, .-_ZN13DriveMovement25CalcNextStepTim
 964              		.section	.text._ZN13DriveMovement11ReduceSpeedERK3DDAf,"ax",%progbits
 965              		.align	2
 966              		.global	_ZN13DriveMovement11ReduceSpeedERK3DDAf
 967              		.thumb
 968              		.thumb_func
 969              		.type	_ZN13DriveMovement11ReduceSpeedERK3DDAf, %function
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqAnTxc.s 			page 18


 970              	_ZN13DriveMovement11ReduceSpeedERK3DDAf:
 971              		@ args = 0, pretend = 0, frame = 0
 972              		@ frame_needed = 0, uses_anonymous_args = 0
 973 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 974 0004 4B7A     		ldrb	r3, [r1, #9]	@ zero_extendqisi2
 975 0006 0C46     		mov	r4, r1
 976 0008 C3F34003 		ubfx	r3, r3, #1, #1
 977 000c 0646     		mov	r6, r0
 978 000e 1546     		mov	r5, r2
 979 0010 BBB9     		cbnz	r3, .L142
 980 0012 4269     		ldr	r2, [r0, #20]
 981 0014 8363     		str	r3, [r0, #56]
 982 0016 0132     		adds	r2, r2, #1
 983 0018 C263     		str	r2, [r0, #60]
 984 001a 006C     		ldr	r0, [r0, #64]
 985 001c FFF7FEFF 		bl	__aeabi_ui2f
 986 0020 2946     		mov	r1, r5
 987 0022 FFF7FEFF 		bl	__aeabi_fmul
 988 0026 FFF7FEFF 		bl	__aeabi_f2uiz
 989 002a F469     		ldr	r4, [r6, #28]
 990 002c 716A     		ldr	r1, [r6, #36]
 991 002e A0FB0445 		umull	r4, r5, r0, r4
 992 0032 A20A     		lsrs	r2, r4, #10
 993 0034 42EA8552 		orr	r2, r2, r5, lsl #22
 994 0038 8A1A     		subs	r2, r1, r2
 995 003a 3064     		str	r0, [r6, #64]
 996 003c F260     		str	r2, [r6, #12]
 997 003e BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 998              	.L142:
 999 0042 4FF0FF33 		mov	r3, #-1
 1000 0046 0022     		movs	r2, #0
 1001 0048 8364     		str	r3, [r0, #72]
 1002 004a 4264     		str	r2, [r0, #68]
 1003 004c C06C     		ldr	r0, [r0, #76]
 1004 004e FFF7FEFF 		bl	__aeabi_ui2f
 1005 0052 2946     		mov	r1, r5
 1006 0054 FFF7FEFF 		bl	__aeabi_fmul
 1007 0058 FFF7FEFF 		bl	__aeabi_f2uiz
 1008 005c F064     		str	r0, [r6, #76]
 1009 005e D4F88C30 		ldr	r3, [r4, #140]
 1010 0062 B46B     		ldr	r4, [r6, #56]
 1011 0064 84FB0389 		smull	r8, r9, r4, r3
 1012 0068 B8F1000F 		cmp	r8, #0
 1013 006c 79F10003 		sbcs	r3, r9, #0
 1014 0070 20DB     		blt	.L143
 1015              	.L138:
 1016 0072 D6E90C01 		ldrd	r0, [r6, #48]
 1017 0076 84FB0445 		smull	r4, r5, r4, r4
 1018 007a F76B     		ldr	r7, [r6, #60]
 1019 007c 4FEA1852 		lsr	r2, r8, #20
 1020 0080 42EA0932 		orr	r2, r2, r9, lsl #12
 1021 0084 1744     		add	r7, r7, r2
 1022 0086 001B     		subs	r0, r0, r4
 1023 0088 61EB0501 		sbc	r1, r1, r5
 1024 008c C7FB0701 		smlal	r0, r1, r7, r7
 1025 0090 FFF7FEFF 		bl	_Z7isqrt64y
 1026 0094 B37E     		ldrb	r3, [r6, #26]	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqAnTxc.s 			page 19


 1027 0096 5BB9     		cbnz	r3, .L144
 1028 0098 3844     		add	r0, r0, r7
 1029              	.L140:
 1030 009a F16C     		ldr	r1, [r6, #76]
 1031 009c A0FB0101 		umull	r0, r1, r0, r1
 1032 00a0 C20C     		lsrs	r2, r0, #19
 1033 00a2 706A     		ldr	r0, [r6, #36]
 1034 00a4 42EA4132 		orr	r2, r2, r1, lsl #13
 1035 00a8 821A     		subs	r2, r0, r2
 1036 00aa F260     		str	r2, [r6, #12]
 1037 00ac BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1038              	.L144:
 1039 00b0 381A     		subs	r0, r7, r0
 1040 00b2 F2E7     		b	.L140
 1041              	.L143:
 1042 00b4 034A     		ldr	r2, .L145
 1043 00b6 0023     		movs	r3, #0
 1044 00b8 18EB0208 		adds	r8, r8, r2
 1045 00bc 49EB0309 		adc	r9, r9, r3
 1046 00c0 D7E7     		b	.L138
 1047              	.L146:
 1048 00c2 00BF     		.align	2
 1049              	.L145:
 1050 00c4 FFFF0F00 		.word	1048575
 1051              		.size	_ZN13DriveMovement11ReduceSpeedERK3DDAf, .-_ZN13DriveMovement11ReduceSpeedERK3DDAf
 1052              		.section	.rodata.str1.4,"aMS",%progbits,1
 1053              		.align	2
 1054              	.LC0:
 1055 0000 20455252 		.ascii	" ERR:\000"
 1055      3A00
 1056 0006 0000     		.space	2
 1057              	.LC1:
 1058 0008 3A00     		.ascii	":\000"
 1059 000a 0000     		.space	2
 1060              	.LC2:
 1061 000c 444D2563 		.ascii	"DM%c%s dir=%c steps=%u next=%u rev=%u interval=%u s"
 1061      25732064 
 1061      69723D25 
 1061      63207374 
 1061      6570733D 
 1062 003f 73746364 		.ascii	"stcda=%u acmadtcdts=%d tstcdapdsc=%u 2dtstc2diva=%l"
 1062      613D2575 
 1062      2061636D 
 1062      61647463 
 1062      6474733D 
 1063 0072 6C750A00 		.ascii	"lu\012\000"
 1064 0076 0000     		.space	2
 1065              	.LC3:
 1066 0078 686D7A30 		.ascii	"hmz0sK=%d minusAaPlusBbTimesKs=%d dSquaredMinusAsqu"
 1066      734B3D25 
 1066      64206D69 
 1066      6E757341 
 1066      61506C75 
 1067 00ab 61726564 		.ascii	"aredMinusBsquared=%lld\0122c2mmsdak=%u asdsk=%u dsd"
 1067      4D696E75 
 1067      73427371 
 1067      75617265 
ARM GAS  C:\Users\George\AppData\Local\Temp\ccqAnTxc.s 			page 20


 1067      643D256C 
 1068 00db 736B3D25 		.ascii	"sk=%u mmstcdts=%u\012\000"
 1068      75206D6D 
 1068      73746364 
 1068      74733D25 
 1068      750A00
 1069 00ee 0000     		.space	2
 1070              	.LC4:
 1071 00f0 61636365 		.ascii	"accelStopStep=%u decelStartStep=%u 2CsqtMmPerStepDi"
 1071      6C53746F 
 1071      70537465 
 1071      703D2575 
 1071      20646563 
 1072 0123 76413D25 		.ascii	"vA=%llu\012mmPerStepTimesCdivtopSpeed=%u fmsdmtstdc"
 1072      6C6C750A 
 1072      6D6D5065 
 1072      72537465 
 1072      7054696D 
 1073 0153 61323D25 		.ascii	"a2=%lld\012\000"
 1073      6C6C640A 
 1073      00
 1074              	.LC5:
 1075 015c 444D2563 		.ascii	"DM%c: not moving\012\000"
 1075      3A206E6F 
 1075      74206D6F 
 1075      76696E67 
 1075      0A00
 1076              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1077              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1078              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1079              	_ZL28cpu_irq_prev_interrupt_state:
 1080 0000 00       		.space	1
 1081              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1082              		.align	2
 1083              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1084              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1085              	_ZL32cpu_irq_critical_section_counter:
 1086 0000 00000000 		.space	4
 1087              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
