ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccOYqw3e.s 			page 1


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
  15              		.file	"DriveMovement.cpp"
  16              		.global	__aeabi_f2ulz
  17              		.section	.text._ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams,"ax",%progbits
  18              		.align	2
  19              		.global	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams
  20              		.thumb
  21              		.thumb_func
  22              		.type	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams, %function
  23              	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams:
  24              		@ args = 0, pretend = 0, frame = 0
  25              		@ frame_needed = 0, uses_anonymous_args = 0
  26 0000 2DE9D841 		push	{r3, r4, r6, r7, r8, lr}
  27 0004 2DED028B 		fstmfdd	sp!, {d8}
  28 0008 0646     		mov	r6, r0
  29 000a 4148     		ldr	r0, .L9
  30 000c 337E     		ldrb	r3, [r6, #24]	@ zero_extendqisi2
  31 000e 0468     		ldr	r4, [r0]
  32 0010 8068     		ldr	r0, [r0, #8]
  33 0012 0F46     		mov	r7, r1
  34 0014 04EB8304 		add	r4, r4, r3, lsl #2
  35 0018 9046     		mov	r8, r2
  36 001a 1946     		mov	r1, r3
  37 001c 07F16002 		add	r2, r7, #96
  38 0020 94ED528A 		flds	s16, [r4, #328]
  39 0024 FFF7FEFF 		bl	_ZNK4Move11MotorFactorEjPKf
  40 0028 07EE100A 		fmsr	s14, r0
  41 002c F0EEC77A 		fabss	s15, s14
  42 0030 27EE888A 		fmuls	s16, s15, s16
  43 0034 D7ED237A 		flds	s15, [r7, #140]
  44 0038 9FED367A 		flds	s14, .L9+4
  45 003c 68EE277A 		fmuls	s15, s16, s15
  46 0040 87EE277A 		fdivs	s14, s14, s15
  47 0044 17EE100A 		fmrs	r0, s14
  48 0048 FFF7FEFF 		bl	__aeabi_f2ulz
  49 004c 0018     		adds	r0, r0, r0
  50 004e 41EB0101 		adc	r1, r1, r1
  51 0052 C6E90C01 		strd	r0, [r6, #48]
  52 0056 97ED2A7A 		flds	s14, [r7, #168]
  53 005a DFED2F6A 		flds	s13, .L9+8
  54 005e 28EE077A 		fmuls	s14, s16, s14
  55 0062 F6EE007A 		fconsts	s15, #96
  56 0066 BCEEC77A 		ftouizs	s14, s14
  57 006a 17EE103A 		fmrs	r3, s14	@ int
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccOYqw3e.s 			page 2


  58 006e 0133     		adds	r3, r3, #1
  59 0070 B363     		str	r3, [r6, #56]
  60 0072 97ED297A 		flds	s14, [r7, #164]
  61 0076 D8F80430 		ldr	r3, [r8, #4]
  62 007a B360     		str	r3, [r6, #8]
  63 007c 28EE077A 		fmuls	s14, s16, s14
  64 0080 86EE877A 		fdivs	s14, s13, s14
  65 0084 BCEEC77A 		ftouizs	s14, s14
  66 0088 86ED107A 		fsts	s14, [r6, #64]	@ int
  67 008c 97ED2B7A 		flds	s14, [r7, #172]
  68 0090 D8F81430 		ldr	r3, [r8, #20]
  69 0094 F360     		str	r3, [r6, #12]
  70 0096 28EE077A 		fmuls	s14, s16, s14
  71 009a B4EEE77A 		fcmpes	s14, s15
  72 009e F1EE10FA 		fmstat
  73 00a2 2BD4     		bmi	.L8
  74 00a4 D8ED007A 		flds	s15, [r8]
  75 00a8 9FED1C7A 		flds	s14, .L9+12
  76 00ac 28EE278A 		fmuls	s16, s16, s15
  77 00b0 BCEEC88A 		ftouizs	s16, s16
  78 00b4 18EE102A 		fmrs	r2, s16	@ int
  79 00b8 531C     		adds	r3, r2, #1
  80 00ba F363     		str	r3, [r6, #60]
  81 00bc D8ED006A 		flds	s13, [r8]
  82 00c0 D7ED237A 		flds	s15, [r7, #140]
  83 00c4 D8F81030 		ldr	r3, [r8, #16]
  84 00c8 3361     		str	r3, [r6, #16]
  85 00ca 26EE877A 		fmuls	s14, s13, s14
  86 00ce D8F80840 		ldr	r4, [r8, #8]
  87 00d2 C7EE277A 		fdivs	s15, s14, s15
  88 00d6 17EE900A 		fmrs	r0, s15
  89 00da FFF7FEFF 		bl	__aeabi_f2ulz
  90 00de E4FB0401 		umlal	r0, r1, r4, r4
  91 00e2 C6E90001 		strd	r0, [r6]
  92 00e6 7169     		ldr	r1, [r6, #20]
  93 00e8 0131     		adds	r1, r1, #1
  94              	.L4:
  95 00ea 0022     		movs	r2, #0
  96 00ec 0023     		movs	r3, #0
  97 00ee C6E91223 		strd	r2, [r6, #72]
  98 00f2 BDEC028B 		fldmfdd	sp!, {d8}
  99 00f6 3162     		str	r1, [r6, #32]
 100 00f8 BDE8D881 		pop	{r3, r4, r6, r7, r8, pc}
 101              	.L8:
 102 00fc 7169     		ldr	r1, [r6, #20]
 103 00fe 0020     		movs	r0, #0
 104 0100 0131     		adds	r1, r1, #1
 105 0102 0022     		movs	r2, #0
 106 0104 0023     		movs	r3, #0
 107 0106 F163     		str	r1, [r6, #60]
 108 0108 3061     		str	r0, [r6, #16]
 109 010a C6E90023 		strd	r2, [r6]
 110 010e ECE7     		b	.L4
 111              	.L10:
 112              		.align	2
 113              	.L9:
 114 0110 00000000 		.word	reprap
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccOYqw3e.s 			page 3


 115 0114 E5A24C53 		.word	1397531365
 116 0118 C0E1644E 		.word	1315234240
 117 011c E5A2CC53 		.word	1405919973
 118              		.size	_ZN13DriveMovement20PrepareCartesianAxisERK3DDARK10PrepParams, .-_ZN13DriveMovement20Prepare
 119              		.section	.text._ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams,"ax",%progbits
 120              		.align	2
 121              		.global	_ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams
 122              		.thumb
 123              		.thumb_func
 124              		.type	_ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams, %function
 125              	_ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams:
 126              		@ args = 0, pretend = 0, frame = 0
 127              		@ frame_needed = 0, uses_anonymous_args = 0
 128 0000 38B5     		push	{r3, r4, r5, lr}
 129 0002 344B     		ldr	r3, .L18
 130 0004 91ED236A 		flds	s12, [r1, #140]
 131 0008 1B68     		ldr	r3, [r3]
 132 000a DFED336A 		flds	s13, .L18+4
 133 000e 9FED335A 		flds	s10, .L18+8
 134 0012 9FED337A 		flds	s14, .L18+12
 135 0016 DFED335A 		flds	s11, .L18+16
 136 001a 0446     		mov	r4, r0
 137 001c 007E     		ldrb	r0, [r0, #24]	@ zero_extendqisi2
 138 001e 03EB8003 		add	r3, r3, r0, lsl #2
 139 0022 D3ED527A 		flds	s15, [r3, #328]
 140 0026 27EE866A 		fmuls	s12, s15, s12
 141 002a 26EE266A 		fmuls	s12, s12, s13
 142 002e F6EE006A 		fconsts	s13, #96
 143 0032 85EE066A 		fdivs	s12, s10, s12
 144 0036 BCEEC66A 		ftouizs	s12, s12
 145 003a 84ED106A 		fsts	s12, [r4, #64]	@ int
 146 003e 91ED2A6A 		flds	s12, [r1, #168]
 147 0042 27EE866A 		fmuls	s12, s15, s12
 148 0046 26EE076A 		fmuls	s12, s12, s14
 149 004a BCEEC66A 		ftouizs	s12, s12
 150 004e 84ED116A 		fsts	s12, [r4, #68]	@ int
 151 0052 91ED296A 		flds	s12, [r1, #164]
 152 0056 5368     		ldr	r3, [r2, #4]
 153 0058 A360     		str	r3, [r4, #8]
 154 005a 27EE866A 		fmuls	s12, s15, s12
 155 005e 85EE866A 		fdivs	s12, s11, s12
 156 0062 BCEEC66A 		ftouizs	s12, s12
 157 0066 84ED136A 		fsts	s12, [r4, #76]	@ int
 158 006a 91ED2B6A 		flds	s12, [r1, #172]
 159 006e 5369     		ldr	r3, [r2, #20]
 160 0070 E360     		str	r3, [r4, #12]
 161 0072 27EE866A 		fmuls	s12, s15, s12
 162 0076 B4EEE66A 		fcmpes	s12, s13
 163 007a F1EE10FA 		fmstat
 164 007e 1FD4     		bmi	.L17
 165 0080 92ED006A 		flds	s12, [r2]
 166 0084 DFED186A 		flds	s13, .L18+20
 167 0088 67EE867A 		fmuls	s15, s15, s12
 168 008c 27EE877A 		fmuls	s14, s15, s14
 169 0090 BCEEC77A 		ftouizs	s14, s14
 170 0094 84ED127A 		fsts	s14, [r4, #72]	@ int
 171 0098 92ED007A 		flds	s14, [r2]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccOYqw3e.s 			page 4


 172 009c D1ED237A 		flds	s15, [r1, #140]
 173 00a0 1369     		ldr	r3, [r2, #16]
 174 00a2 2361     		str	r3, [r4, #16]
 175 00a4 27EE267A 		fmuls	s14, s14, s13
 176 00a8 9568     		ldr	r5, [r2, #8]
 177 00aa C7EE277A 		fdivs	s15, s14, s15
 178 00ae 17EE900A 		fmrs	r0, s15
 179 00b2 FFF7FEFF 		bl	__aeabi_f2ulz
 180 00b6 E5FB0501 		umlal	r0, r1, r5, r5
 181 00ba C4E90001 		strd	r0, [r4]
 182 00be 38BD     		pop	{r3, r4, r5, pc}
 183              	.L17:
 184 00c0 4FF0FF30 		mov	r0, #-1
 185 00c4 0021     		movs	r1, #0
 186 00c6 0022     		movs	r2, #0
 187 00c8 0023     		movs	r3, #0
 188 00ca A064     		str	r0, [r4, #72]
 189 00cc 2161     		str	r1, [r4, #16]
 190 00ce C4E90023 		strd	r2, [r4]
 191 00d2 38BD     		pop	{r3, r4, r5, pc}
 192              	.L19:
 193              		.align	2
 194              	.L18:
 195 00d4 00000000 		.word	reprap
 196 00d8 00008043 		.word	1132462080
 197 00dc E5A24C53 		.word	1397531365
 198 00e0 00000044 		.word	1140850688
 199 00e4 C0E1644E 		.word	1315234240
 200 00e8 E5A2CC53 		.word	1405919973
 201              		.size	_ZN13DriveMovement16PrepareDeltaAxisERK3DDARK10PrepParams, .-_ZN13DriveMovement16PrepareDelt
 202              		.global	__aeabi_uldivmod
 203              		.section	.text._ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsb,"ax",%progbits
 204              		.align	2
 205              		.global	_ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsb
 206              		.thumb
 207              		.thumb_func
 208              		.type	_ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsb, %function
 209              	_ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsb:
 210              		@ args = 0, pretend = 0, frame = 8
 211              		@ frame_needed = 0, uses_anonymous_args = 0
 212 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 213 0004 2DED048B 		fstmfdd	sp!, {d8, d9}
 214 0008 DFF8A0B2 		ldr	fp, .L45+20
 215 000c 077E     		ldrb	r7, [r0, #24]	@ zero_extendqisi2
 216 000e 9FEDA27A 		flds	s14, .L45
 217 0012 8046     		mov	r8, r0
 218 0014 DBF80000 		ldr	r0, [fp]
 219 0018 8946     		mov	r9, r1
 220 001a 01EB8701 		add	r1, r1, r7, lsl #2
 221 001e D1ED188A 		flds	s17, [r1, #96]
 222 0022 D9ED237A 		flds	s15, [r9, #140]
 223 0026 00EB8701 		add	r1, r0, r7, lsl #2
 224 002a D1ED526A 		flds	s13, [r1, #328]
 225 002e B0EEE88A 		fabss	s16, s17
 226 0032 28EE268A 		fmuls	s16, s16, s13
 227 0036 83B0     		sub	sp, sp, #12
 228 0038 68EE277A 		fmuls	s15, s16, s15
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccOYqw3e.s 			page 5


 229 003c 0190     		str	r0, [sp, #4]
 230 003e 87EE277A 		fdivs	s14, s14, s15
 231 0042 1646     		mov	r6, r2
 232 0044 9A46     		mov	r10, r3
 233 0046 17EE100A 		fmrs	r0, s14
 234 004a FFF7FEFF 		bl	__aeabi_f2ulz
 235 004e 0418     		adds	r4, r0, r0
 236 0050 41EB0105 		adc	r5, r1, r1
 237 0054 C8E90C45 		strd	r4, [r8, #48]
 238 0058 BAF1000F 		cmp	r10, #0
 239 005c 1DD0     		beq	.L32
 240 005e F5EEC08A 		fcmpezs	s17
 241 0062 F1EE10FA 		fmstat
 242 0066 40F30381 		ble	.L41
 243 006a DBF81030 		ldr	r3, [fp, #16]
 244 006e D3F8B031 		ldr	r3, [r3, #432]
 245 0072 FF1A     		subs	r7, r7, r3
 246 0074 062F     		cmp	r7, #6
 247 0076 00F2F580 		bhi	.L34
 248 007a 0199     		ldr	r1, [sp, #4]
 249 007c DFED877A 		flds	s15, .L45+4
 250 0080 01EB8707 		add	r7, r1, r7, lsl #2
 251 0084 D7ED668A 		flds	s17, [r7, #408]
 252 0088 68EEA77A 		fmuls	s15, s17, s15
 253 008c FCEEE77A 		ftouizs	s15, s15
 254 0090 17EE903A 		fmrs	r3, s15	@ int
 255 0094 F8EE676A 		fuitos	s13, s15
 256 0098 04E0     		b	.L21
 257              	.L32:
 258 009a DFED816A 		flds	s13, .L45+8
 259 009e 5346     		mov	r3, r10
 260 00a0 F0EE668A 		fcpys	s17, s13
 261              	.L21:
 262 00a4 99ED277A 		flds	s14, [r9, #156]
 263 00a8 D9ED297A 		flds	s15, [r9, #164]
 264 00ac 99ED289A 		flds	s18, [r9, #160]
 265 00b0 99ED2A6A 		flds	s12, [r9, #168]
 266 00b4 DFED7B5A 		flds	s11, .L45+12
 267 00b8 D8F81420 		ldr	r2, [r8, #20]
 268 00bc 77EEC77A 		fsubs	s15, s15, s14
 269 00c0 39EE477A 		fsubs	s14, s18, s14
 270 00c4 68EEA77A 		fmuls	s15, s17, s15
 271 00c8 28EE879A 		fmuls	s18, s17, s14
 272 00cc 37EE867A 		fadds	s14, s15, s12
 273 00d0 29EE086A 		fmuls	s12, s18, s16
 274 00d4 27EE087A 		fmuls	s14, s14, s16
 275 00d8 BDEEC66A 		ftosizs	s12, s12
 276 00dc BCEEC77A 		ftouizs	s14, s14
 277 00e0 16EE10AA 		fmrs	r10, s12	@ int
 278 00e4 17EE101A 		fmrs	r1, s14	@ int
 279 00e8 0131     		adds	r1, r1, #1
 280 00ea C8F83810 		str	r1, [r8, #56]
 281 00ee 99ED296A 		flds	s12, [r9, #164]
 282 00f2 7168     		ldr	r1, [r6, #4]
 283 00f4 28EE066A 		fmuls	s12, s16, s12
 284 00f8 B6EE007A 		fconsts	s14, #96
 285 00fc 85EE866A 		fdivs	s12, s11, s12
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccOYqw3e.s 			page 6


 286 0100 9244     		add	r10, r10, r2
 287 0102 1944     		add	r1, r1, r3
 288 0104 C8F80810 		str	r1, [r8, #8]
 289 0108 BCEEC66A 		ftouizs	s12, s12
 290 010c 88ED106A 		fsts	s12, [r8, #64]	@ int
 291 0110 D6ED065A 		flds	s11, [r6, #24]
 292 0114 99ED2B6A 		flds	s12, [r9, #172]
 293 0118 7269     		ldr	r2, [r6, #20]
 294 011a 66EEA56A 		fmuls	s13, s13, s11
 295 011e 28EE066A 		fmuls	s12, s16, s12
 296 0122 FDEEE66A 		ftosizs	s13, s13
 297 0126 B4EEC76A 		fcmpes	s12, s14
 298 012a 16EE900A 		fmrs	r0, s13	@ int
 299 012e F1EE10FA 		fmstat
 300 0132 C0EB0202 		rsb	r2, r0, r2
 301 0136 C8F80C20 		str	r2, [r8, #12]
 302 013a 17D5     		bpl	.L42
 303 013c 0022     		movs	r2, #0
 304 013e 0023     		movs	r3, #0
 305 0140 C8E91223 		strd	r2, [r8, #72]
 306 0144 C8E90023 		strd	r2, [r8]
 307 0148 0AF10101 		add	r1, r10, #1
 308 014c 2AEAEA74 		bic	r4, r10, r10, asr #31
 309 0150 0020     		movs	r0, #0
 310 0152 C8F81440 		str	r4, [r8, #20]
 311 0156 C8F82010 		str	r1, [r8, #32]
 312 015a C8F83C10 		str	r1, [r8, #60]
 313 015e C8F81000 		str	r0, [r8, #16]
 314              	.L20:
 315 0162 03B0     		add	sp, sp, #12
 316              		@ sp needed
 317 0164 BDEC048B 		fldmfdd	sp!, {d8-d9}
 318 0168 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 319              	.L42:
 320 016c D6ED006A 		flds	s13, [r6]
 321 0170 9FED4D7A 		flds	s14, .L45+16
 322 0174 77EEA66A 		fadds	s13, s15, s13
 323 0178 26EE888A 		fmuls	s16, s13, s16
 324 017c BCEEC88A 		ftouizs	s16, s16
 325 0180 18EE101A 		fmrs	r1, s16	@ int
 326 0184 01F1010B 		add	fp, r1, #1
 327 0188 C8F83CB0 		str	fp, [r8, #60]
 328 018c D6ED009A 		flds	s19, [r6]
 329 0190 99ED238A 		flds	s16, [r9, #140]
 330 0194 3269     		ldr	r2, [r6, #16]
 331 0196 B668     		ldr	r6, [r6, #8]
 332 0198 79EEA77A 		fadds	s15, s19, s15
 333 019c D21A     		subs	r2, r2, r3
 334 019e 67EE877A 		fmuls	s15, s15, s14
 335 01a2 C8F81020 		str	r2, [r8, #16]
 336 01a6 C7EE887A 		fdivs	s15, s15, s16
 337 01aa F61A     		subs	r6, r6, r3
 338 01ac 17EE900A 		fmrs	r0, s15
 339 01b0 FFF7FEFF 		bl	__aeabi_f2ulz
 340 01b4 D9ED297A 		flds	s15, [r9, #164]
 341 01b8 E8EEC87A 		vfms.f32	s15, s17, s16
 342 01bc C6FB0601 		smlal	r0, r1, r6, r6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccOYqw3e.s 			page 7


 343 01c0 0646     		mov	r6, r0
 344 01c2 0F46     		mov	r7, r1
 345 01c4 F5EEC07A 		fcmpezs	s15
 346 01c8 F1EE10FA 		fmstat
 347 01cc C8E90067 		strd	r6, [r8]
 348 01d0 07DD     		ble	.L26
 349 01d2 38EE088A 		fadds	s16, s16, s16
 350 01d6 27EEA77A 		fmuls	s14, s15, s15
 351 01da 87EE088A 		fdivs	s16, s14, s16
 352 01de 79EE889A 		fadds	s19, s19, s16
 353              	.L26:
 354 01e2 99ED227A 		flds	s14, [r9, #136]
 355 01e6 39EE079A 		fadds	s18, s18, s14
 356 01ea F4EEC99A 		fcmpes	s19, s18
 357 01ee F1EE10FA 		fmstat
 358 01f2 10DB     		blt	.L44
 359 01f4 2AEAEA70 		bic	r0, r10, r10, asr #31
 360 01f8 0AF10101 		add	r1, r10, #1
 361 01fc 0022     		movs	r2, #0
 362 01fe 0023     		movs	r3, #0
 363 0200 C8F81400 		str	r0, [r8, #20]
 364 0204 C8F82010 		str	r1, [r8, #32]
 365 0208 C8E91223 		strd	r2, [r8, #72]
 366 020c 03B0     		add	sp, sp, #12
 367              		@ sp needed
 368 020e BDEC048B 		fldmfdd	sp!, {d8-d9}
 369 0212 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 370              	.L44:
 371 0216 F5EEC07A 		fcmpezs	s15
 372 021a F1EE10FA 		fmstat
 373 021e 2DD4     		bmi	.L36
 374 0220 3046     		mov	r0, r6
 375 0222 3946     		mov	r1, r7
 376 0224 2246     		mov	r2, r4
 377 0226 2B46     		mov	r3, r5
 378 0228 FFF7FEFF 		bl	__aeabi_uldivmod
 379 022c 0130     		adds	r0, r0, #1
 380              	.L30:
 381 022e 00F10043 		add	r3, r0, #-2147483648
 382 0232 013B     		subs	r3, r3, #1
 383 0234 5900     		lsls	r1, r3, #1
 384 0236 CAEB010C 		rsb	ip, r10, r1
 385 023a BCF1000F 		cmp	ip, #0
 386 023e C8F82000 		str	r0, [r8, #32]
 387 0242 1DDD     		ble	.L31
 388 0244 A1FB0423 		umull	r2, r3, r1, r4
 389 0248 01FB0533 		mla	r3, r1, r5, r3
 390 024c 961B     		subs	r6, r2, r6
 391 024e 63EB0707 		sbc	r7, r3, r7
 392 0252 C8F814C0 		str	ip, [r8, #20]
 393 0256 C8E91267 		strd	r6, [r8, #72]
 394 025a 03B0     		add	sp, sp, #12
 395              		@ sp needed
 396 025c BDEC048B 		fldmfdd	sp!, {d8-d9}
 397 0260 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 398              	.L34:
 399 0264 DFED0E6A 		flds	s13, .L45+8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccOYqw3e.s 			page 8


 400 0268 0023     		movs	r3, #0
 401 026a F0EE668A 		fcpys	s17, s13
 402 026e 19E7     		b	.L21
 403              	.L41:
 404 0270 DFED0B6A 		flds	s13, .L45+8
 405 0274 0023     		movs	r3, #0
 406 0276 F0EE668A 		fcpys	s17, s13
 407 027a 13E7     		b	.L21
 408              	.L36:
 409 027c 5846     		mov	r0, fp
 410 027e D6E7     		b	.L30
 411              	.L31:
 412 0280 0023     		movs	r3, #0
 413 0282 2AEAEA71 		bic	r1, r10, r10, asr #31
 414 0286 0022     		movs	r2, #0
 415 0288 C8E91223 		strd	r2, [r8, #72]
 416 028c 4B1C     		adds	r3, r1, #1
 417 028e C8F81410 		str	r1, [r8, #20]
 418 0292 C8F82030 		str	r3, [r8, #32]
 419 0296 64E7     		b	.L20
 420              	.L46:
 421              		.align	2
 422              	.L45:
 423 0298 E5A24C53 		.word	1397531365
 424 029c C0E16449 		.word	1231348160
 425 02a0 00000000 		.word	0
 426 02a4 C0E1644E 		.word	1315234240
 427 02a8 E5A2CC53 		.word	1405919973
 428 02ac 00000000 		.word	reprap
 429              		.size	_ZN13DriveMovement15PrepareExtruderERK3DDARK10PrepParamsb, .-_ZN13DriveMovement15PrepareExtr
 430              		.section	.text._ZNK13DriveMovement10DebugPrintEcb,"ax",%progbits
 431              		.align	2
 432              		.global	_ZNK13DriveMovement10DebugPrintEcb
 433              		.thumb
 434              		.thumb_func
 435              		.type	_ZNK13DriveMovement10DebugPrintEcb, %function
 436              	_ZNK13DriveMovement10DebugPrintEcb:
 437              		@ args = 0, pretend = 0, frame = 8
 438              		@ frame_needed = 0, uses_anonymous_args = 0
 439 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 440 0004 0646     		mov	r6, r0
 441 0006 407E     		ldrb	r0, [r0, #25]	@ zero_extendqisi2
 442 0008 8DB0     		sub	sp, sp, #52
 443 000a 1746     		mov	r7, r2
 444 000c 0028     		cmp	r0, #0
 445 000e 58D0     		beq	.L48
 446 0010 7369     		ldr	r3, [r6, #20]
 447 0012 96F81AE0 		ldrb	lr, [r6, #26]	@ zero_extendqisi2
 448 0016 D6F81CB0 		ldr	fp, [r6, #28]
 449 001a D6F820A0 		ldr	r10, [r6, #32]
 450 001e D6F82880 		ldr	r8, [r6, #40]
 451 0022 0093     		str	r3, [sp]
 452 0024 D6E90045 		ldrd	r4, [r6]
 453 0028 D6F808C0 		ldr	ip, [r6, #8]
 454 002c DFF8B490 		ldr	r9, .L56+20
 455 0030 274A     		ldr	r2, .L56
 456 0032 BEF1000F 		cmp	lr, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccOYqw3e.s 			page 9


 457 0036 CDE90A45 		strd	r4, [sp, #40]
 458 003a D6F80CE0 		ldr	lr, [r6, #12]
 459 003e CDF804B0 		str	fp, [sp, #4]
 460 0042 3569     		ldr	r5, [r6, #16]
 461 0044 CDF808A0 		str	r10, [sp, #8]
 462 0048 DDE90AAB 		ldrd	r10, [sp, #40]
 463 004c 0CBF     		ite	eq
 464 004e 4223     		moveq	r3, #66
 465 0050 4623     		movne	r3, #70
 466 0052 CDE908AB 		strd	r10, [sp, #32]
 467 0056 0228     		cmp	r0, #2
 468 0058 18BF     		it	ne
 469 005a 4A46     		movne	r2, r9
 470 005c CDF80C80 		str	r8, [sp, #12]
 471 0060 CDF810C0 		str	ip, [sp, #16]
 472 0064 CDF814E0 		str	lr, [sp, #20]
 473 0068 0695     		str	r5, [sp, #24]
 474 006a 1A48     		ldr	r0, .L56+4
 475 006c FFF7FEFF 		bl	debugPrintf
 476 0070 97B9     		cbnz	r7, .L55
 477 0072 D6E91201 		ldrd	r0, [r6, #72]
 478 0076 D6E90C45 		ldrd	r4, [r6, #48]
 479 007a B76B     		ldr	r7, [r6, #56]
 480 007c 336C     		ldr	r3, [r6, #64]
 481 007e F26B     		ldr	r2, [r6, #60]
 482 0080 0293     		str	r3, [sp, #8]
 483 0082 CDE90401 		strd	r0, [sp, #16]
 484 0086 CDE90045 		strd	r4, [sp]
 485 008a 3946     		mov	r1, r7
 486 008c 1248     		ldr	r0, .L56+8
 487 008e FFF7FEFF 		bl	debugPrintf
 488 0092 0DB0     		add	sp, sp, #52
 489              		@ sp needed
 490 0094 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 491              	.L55:
 492 0098 06F13C02 		add	r2, r6, #60
 493 009c 2CCA     		ldmia	r2, {r2, r3, r5}
 494 009e D6E90C01 		ldrd	r0, [r6, #48]
 495 00a2 B76B     		ldr	r7, [r6, #56]
 496 00a4 B46C     		ldr	r4, [r6, #72]
 497 00a6 F66C     		ldr	r6, [r6, #76]
 498 00a8 0596     		str	r6, [sp, #20]
 499 00aa CDE90001 		strd	r0, [sp]
 500 00ae 0293     		str	r3, [sp, #8]
 501 00b0 3946     		mov	r1, r7
 502 00b2 0395     		str	r5, [sp, #12]
 503 00b4 0494     		str	r4, [sp, #16]
 504 00b6 0948     		ldr	r0, .L56+12
 505 00b8 FFF7FEFF 		bl	debugPrintf
 506 00bc 0DB0     		add	sp, sp, #52
 507              		@ sp needed
 508 00be BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 509              	.L48:
 510 00c2 0748     		ldr	r0, .L56+16
 511 00c4 0DB0     		add	sp, sp, #52
 512              		@ sp needed
 513 00c6 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccOYqw3e.s 			page 10


 514 00ca FFF7FEBF 		b	debugPrintf
 515              	.L57:
 516 00ce 00BF     		.align	2
 517              	.L56:
 518 00d0 00000000 		.word	.LC0
 519 00d4 0C000000 		.word	.LC2
 520 00d8 F0000000 		.word	.LC4
 521 00dc 78000000 		.word	.LC3
 522 00e0 5C010000 		.word	.LC5
 523 00e4 08000000 		.word	.LC1
 524              		.size	_ZNK13DriveMovement10DebugPrintEcb, .-_ZNK13DriveMovement10DebugPrintEcb
 525              		.section	.text._ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb,"ax",%progbits
 526              		.align	2
 527              		.global	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb
 528              		.thumb
 529              		.thumb_func
 530              		.type	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb, %function
 531              	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb:
 532              		@ args = 0, pretend = 0, frame = 0
 533              		@ frame_needed = 0, uses_anonymous_args = 0
 534 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 535 0004 836A     		ldr	r3, [r0, #40]
 536 0006 242B     		cmp	r3, #36
 537 0008 0646     		mov	r6, r0
 538 000a 8846     		mov	r8, r1
 539 000c 2CD9     		bls	.L59
 540 000e 0023     		movs	r3, #0
 541 0010 F469     		ldr	r4, [r6, #28]
 542 0012 1846     		mov	r0, r3
 543 0014 1F46     		mov	r7, r3
 544              	.L60:
 545 0016 B16B     		ldr	r1, [r6, #56]
 546 0018 F076     		strb	r0, [r6, #27]
 547 001a 1C44     		add	r4, r4, r3
 548 001c 8C42     		cmp	r4, r1
 549 001e D6F82490 		ldr	r9, [r6, #36]
 550 0022 57D3     		bcc	.L85
 551              	.L67:
 552 0024 F36B     		ldr	r3, [r6, #60]
 553 0026 9C42     		cmp	r4, r3
 554 0028 32D2     		bcs	.L69
 555 002a 336C     		ldr	r3, [r6, #64]
 556 002c F168     		ldr	r1, [r6, #12]
 557 002e A4FB0345 		umull	r4, r5, r4, r3
 558 0032 A20A     		lsrs	r2, r4, #10
 559 0034 42EA8552 		orr	r2, r2, r5, lsl #22
 560 0038 0A44     		add	r2, r2, r1
 561 003a 7262     		str	r2, [r6, #36]
 562              	.L68:
 563 003c D8F8B430 		ldr	r3, [r8, #180]
 564 0040 C9EB0209 		rsb	r9, r9, r2
 565 0044 29FA07F7 		lsr	r7, r9, r7
 566 0048 9342     		cmp	r3, r2
 567 004a B762     		str	r7, [r6, #40]
 568 004c 51D2     		bcs	.L81
 569 004e F069     		ldr	r0, [r6, #28]
 570 0050 7169     		ldr	r1, [r6, #20]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccOYqw3e.s 			page 11


 571 0052 0130     		adds	r0, r0, #1
 572 0054 8842     		cmp	r0, r1
 573 0056 4FD2     		bcs	.L86
 574 0058 404B     		ldr	r3, .L89
 575 005a 0221     		movs	r1, #2
 576 005c 1344     		add	r3, r3, r2
 577 005e B362     		str	r3, [r6, #40]
 578 0060 7176     		strb	r1, [r6, #25]
 579 0062 0020     		movs	r0, #0
 580 0064 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 581              	.L59:
 582 0068 C469     		ldr	r4, [r0, #28]
 583 006a 016A     		ldr	r1, [r0, #32]
 584 006c 4769     		ldr	r7, [r0, #20]
 585 006e 8C42     		cmp	r4, r1
 586 0070 02D8     		bhi	.L63
 587 0072 B942     		cmp	r1, r7
 588 0074 98BF     		it	ls
 589 0076 0F46     		movls	r7, r1
 590              	.L63:
 591 0078 082B     		cmp	r3, #8
 592 007a C4EB0707 		rsb	r7, r4, r7
 593 007e 1AD8     		bhi	.L64
 594 0080 082F     		cmp	r7, #8
 595 0082 50D8     		bhi	.L79
 596              	.L65:
 597 0084 042F     		cmp	r7, #4
 598 0086 18D9     		bls	.L66
 599 0088 0323     		movs	r3, #3
 600 008a 1846     		mov	r0, r3
 601 008c 0227     		movs	r7, #2
 602 008e C2E7     		b	.L60
 603              	.L69:
 604 0090 336A     		ldr	r3, [r6, #32]
 605 0092 9C42     		cmp	r4, r3
 606 0094 34D2     		bcs	.L70
 607 0096 306B     		ldr	r0, [r6, #48]
 608 0098 736B     		ldr	r3, [r6, #52]
 609 009a D6E900AB 		ldrd	r10, [r6]
 610 009e A0FB0401 		umull	r0, r1, r0, r4
 611 00a2 04FB0311 		mla	r1, r4, r3, r1
 612 00a6 5945     		cmp	r1, fp
 613 00a8 08BF     		it eq
 614 00aa 5045     		cmpeq	r0, r10
 615 00ac 3FD3     		bcc	.L87
 616 00ae 3069     		ldr	r0, [r6, #16]
 617              	.L72:
 618 00b0 7062     		str	r0, [r6, #36]
 619 00b2 0246     		mov	r2, r0
 620 00b4 C2E7     		b	.L68
 621              	.L64:
 622 00b6 112B     		cmp	r3, #17
 623 00b8 E4D9     		bls	.L65
 624              	.L66:
 625 00ba 022F     		cmp	r7, #2
 626 00bc 94BF     		ite	ls
 627 00be 0027     		movls	r7, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccOYqw3e.s 			page 12


 628 00c0 0127     		movhi	r7, #1
 629 00c2 3B46     		mov	r3, r7
 630 00c4 B16B     		ldr	r1, [r6, #56]
 631 00c6 D6F82490 		ldr	r9, [r6, #36]
 632 00ca 1C44     		add	r4, r4, r3
 633 00cc 3846     		mov	r0, r7
 634 00ce 8C42     		cmp	r4, r1
 635 00d0 F076     		strb	r0, [r6, #27]
 636 00d2 A7D2     		bcs	.L67
 637              	.L85:
 638 00d4 306B     		ldr	r0, [r6, #48]
 639 00d6 736B     		ldr	r3, [r6, #52]
 640 00d8 B268     		ldr	r2, [r6, #8]
 641 00da A0FB0401 		umull	r0, r1, r0, r4
 642 00de 04FB0311 		mla	r1, r4, r3, r1
 643 00e2 E2FB0201 		umlal	r0, r1, r2, r2
 644 00e6 FFF7FEFF 		bl	_Z7isqrt64y
 645 00ea B268     		ldr	r2, [r6, #8]
 646 00ec 821A     		subs	r2, r0, r2
 647 00ee 7262     		str	r2, [r6, #36]
 648 00f0 A4E7     		b	.L68
 649              	.L81:
 650 00f2 0120     		movs	r0, #1
 651 00f4 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 652              	.L86:
 653 00f8 7362     		str	r3, [r6, #36]
 654 00fa 0120     		movs	r0, #1
 655 00fc BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 656              	.L70:
 657 0100 1ED0     		beq	.L88
 658              	.L74:
 659 0102 306B     		ldr	r0, [r6, #48]
 660 0104 736B     		ldr	r3, [r6, #52]
 661 0106 3569     		ldr	r5, [r6, #16]
 662 0108 D6E912AB 		ldrd	r10, [r6, #72]
 663 010c A0FB0401 		umull	r0, r1, r0, r4
 664 0110 04FB0311 		mla	r1, r4, r3, r1
 665 0114 B0EB0A00 		subs	r0, r0, r10
 666 0118 61EB0B01 		sbc	r1, r1, fp
 667 011c FFF7FEFF 		bl	_Z7isqrt64y
 668 0120 4219     		adds	r2, r0, r5
 669 0122 7262     		str	r2, [r6, #36]
 670 0124 8AE7     		b	.L68
 671              	.L79:
 672 0126 0723     		movs	r3, #7
 673 0128 1846     		mov	r0, r3
 674 012a 0327     		movs	r7, #3
 675 012c 73E7     		b	.L60
 676              	.L87:
 677 012e BAEB0000 		subs	r0, r10, r0
 678 0132 6BEB0101 		sbc	r1, fp, r1
 679 0136 3469     		ldr	r4, [r6, #16]
 680 0138 FFF7FEFF 		bl	_Z7isqrt64y
 681 013c 201A     		subs	r0, r4, r0
 682 013e B7E7     		b	.L72
 683              	.L88:
 684 0140 B37E     		ldrb	r3, [r6, #26]	@ zero_extendqisi2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccOYqw3e.s 			page 13


 685 0142 83F00103 		eor	r3, r3, #1
 686 0146 B376     		strb	r3, [r6, #26]
 687 0148 002A     		cmp	r2, #0
 688 014a DAD0     		beq	.L74
 689 014c 044A     		ldr	r2, .L89+4
 690 014e 317E     		ldrb	r1, [r6, #24]	@ zero_extendqisi2
 691 0150 1068     		ldr	r0, [r2]
 692 0152 1A46     		mov	r2, r3
 693 0154 FFF7FEFF 		bl	_ZN8Platform12SetDirectionEjb
 694 0158 D3E7     		b	.L74
 695              	.L90:
 696 015a 00BF     		.align	2
 697              	.L89:
 698 015c 80969800 		.word	10000000
 699 0160 00000000 		.word	reprap
 700              		.size	_ZN13DriveMovement29CalcNextStepTimeCartesianFullERK3DDAb, .-_ZN13DriveMovement29CalcNextSte
 701              		.section	.text._ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb,"ax",%progbits
 702              		.align	2
 703              		.global	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb
 704              		.thumb
 705              		.thumb_func
 706              		.type	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb, %function
 707              	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb:
 708              		@ args = 0, pretend = 0, frame = 0
 709              		@ frame_needed = 0, uses_anonymous_args = 0
 710 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 711 0004 8946     		mov	r9, r1
 712 0006 816A     		ldr	r1, [r0, #40]
 713 0008 2429     		cmp	r1, #36
 714 000a 8046     		mov	r8, r0
 715 000c 72D9     		bls	.L92
 716 000e 0021     		movs	r1, #0
 717 0010 C369     		ldr	r3, [r0, #28]
 718 0012 056A     		ldr	r5, [r0, #32]
 719 0014 8A46     		mov	r10, r1
 720 0016 4FF40074 		mov	r4, #512
 721              	.L93:
 722 001a AB42     		cmp	r3, r5
 723 001c 88F81B10 		strb	r1, [r8, #27]
 724 0020 00F09180 		beq	.L126
 725              	.L102:
 726 0024 98F81A30 		ldrb	r3, [r8, #26]	@ zero_extendqisi2
 727 0028 002B     		cmp	r3, #0
 728 002a 00F09180 		beq	.L103
 729              	.L104:
 730 002e D8F83800 		ldr	r0, [r8, #56]
 731 0032 2044     		add	r0, r0, r4
 732 0034 C8F83800 		str	r0, [r8, #56]
 733 0038 D9F89860 		ldr	r6, [r9, #152]
 734 003c 80FB0667 		smull	r6, r7, r0, r6
 735 0040 002E     		cmp	r6, #0
 736 0042 77F10001 		sbcs	r1, r7, #0
 737 0046 C0F2B880 		blt	.L127
 738              	.L105:
 739 004a D8E90C23 		ldrd	r2, [r8, #48]
 740 004e 340D     		lsrs	r4, r6, #20
 741 0050 D8F83C10 		ldr	r1, [r8, #60]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccOYqw3e.s 			page 14


 742 0054 44EA0734 		orr	r4, r4, r7, lsl #12
 743 0058 80FB0067 		smull	r6, r7, r0, r0
 744 005c 0C44     		add	r4, r4, r1
 745 005e 921B     		subs	r2, r2, r6
 746 0060 63EB0703 		sbc	r3, r3, r7
 747 0064 C4FB0423 		smlal	r2, r3, r4, r4
 748 0068 012A     		cmp	r2, #1
 749 006a 73F10001 		sbcs	r1, r3, #0
 750 006e C0F28F80 		blt	.L121
 751 0072 1046     		mov	r0, r2
 752 0074 1946     		mov	r1, r3
 753 0076 FFF7FEFF 		bl	_Z7isqrt64y
 754              	.L106:
 755 007a 98F81A30 		ldrb	r3, [r8, #26]	@ zero_extendqisi2
 756 007e 002B     		cmp	r3, #0
 757 0080 50D0     		beq	.L107
 758 0082 241A     		subs	r4, r4, r0
 759 0084 002C     		cmp	r4, #0
 760 0086 50DB     		blt	.L128
 761              	.L109:
 762 0088 D8F84430 		ldr	r3, [r8, #68]
 763 008c D8F82470 		ldr	r7, [r8, #36]
 764 0090 9C42     		cmp	r4, r3
 765 0092 C0F08280 		bcc	.L129
 766 0096 D8F84830 		ldr	r3, [r8, #72]
 767 009a 9C42     		cmp	r4, r3
 768 009c 5AD3     		bcc	.L130
 769 009e D8F84010 		ldr	r1, [r8, #64]
 770 00a2 D8E90023 		ldrd	r2, [r8]
 771 00a6 A4FB0101 		umull	r0, r1, r4, r1
 772 00aa 9942     		cmp	r1, r3
 773 00ac 08BF     		it eq
 774 00ae 9042     		cmpeq	r0, r2
 775 00b0 C0F0A580 		bcc	.L131
 776 00b4 D8F81000 		ldr	r0, [r8, #16]
 777              	.L115:
 778 00b8 C8F82400 		str	r0, [r8, #36]
 779 00bc 0246     		mov	r2, r0
 780              	.L112:
 781 00be D9F8B430 		ldr	r3, [r9, #180]
 782 00c2 D71B     		subs	r7, r2, r7
 783 00c4 27FA0AF7 		lsr	r7, r7, r10
 784 00c8 9342     		cmp	r3, r2
 785 00ca C8F82870 		str	r7, [r8, #40]
 786 00ce 61D2     		bcs	.L122
 787 00d0 D8F81C00 		ldr	r0, [r8, #28]
 788 00d4 D8F81410 		ldr	r1, [r8, #20]
 789 00d8 0130     		adds	r0, r0, #1
 790 00da 8842     		cmp	r0, r1
 791 00dc 80F08180 		bcs	.L132
 792 00e0 4B4B     		ldr	r3, .L134
 793 00e2 0221     		movs	r1, #2
 794 00e4 1344     		add	r3, r3, r2
 795 00e6 C8F82830 		str	r3, [r8, #40]
 796 00ea 88F81910 		strb	r1, [r8, #25]
 797 00ee 0020     		movs	r0, #0
 798 00f0 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccOYqw3e.s 			page 15


 799              	.L92:
 800 00f4 C369     		ldr	r3, [r0, #28]
 801 00f6 056A     		ldr	r5, [r0, #32]
 802 00f8 4069     		ldr	r0, [r0, #20]
 803 00fa AB42     		cmp	r3, r5
 804 00fc 02D2     		bcs	.L96
 805 00fe 8542     		cmp	r5, r0
 806 0100 98BF     		it	ls
 807 0102 2846     		movls	r0, r5
 808              	.L96:
 809 0104 0329     		cmp	r1, #3
 810 0106 C3EB000A 		rsb	r10, r3, r0
 811 010a 30D8     		bhi	.L97
 812 010c BAF1100F 		cmp	r10, #16
 813 0110 59D8     		bhi	.L118
 814              	.L98:
 815 0112 BAF1080F 		cmp	r10, #8
 816 0116 69D9     		bls	.L100
 817 0118 4FF48054 		mov	r4, #4096
 818 011c 0721     		movs	r1, #7
 819 011e 4FF0030A 		mov	r10, #3
 820 0122 7AE7     		b	.L93
 821              	.L107:
 822 0124 0444     		add	r4, r4, r0
 823 0126 002C     		cmp	r4, #0
 824 0128 AEDA     		bge	.L109
 825              	.L128:
 826 012a D8F81C30 		ldr	r3, [r8, #28]
 827 012e 03F57423 		add	r3, r3, #999424
 828 0132 03F51073 		add	r3, r3, #576
 829 0136 0222     		movs	r2, #2
 830 0138 C8F81C30 		str	r3, [r8, #28]
 831 013c 88F81920 		strb	r2, [r8, #25]
 832 0140 0020     		movs	r0, #0
 833 0142 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 834              	.L126:
 835 0146 0023     		movs	r3, #0
 836 0148 88F81A30 		strb	r3, [r8, #26]
 837 014c 002A     		cmp	r2, #0
 838 014e 40D1     		bne	.L133
 839              	.L103:
 840 0150 6442     		negs	r4, r4
 841 0152 6CE7     		b	.L104
 842              	.L130:
 843 0154 D8F84C10 		ldr	r1, [r8, #76]
 844 0158 D8F80C60 		ldr	r6, [r8, #12]
 845 015c A4FB0145 		umull	r4, r5, r4, r1
 846 0160 E20C     		lsrs	r2, r4, #19
 847 0162 42EA4532 		orr	r2, r2, r5, lsl #13
 848 0166 3244     		add	r2, r2, r6
 849 0168 C8F82420 		str	r2, [r8, #36]
 850 016c A7E7     		b	.L112
 851              	.L97:
 852 016e 0829     		cmp	r1, #8
 853 0170 CFD9     		bls	.L98
 854 0172 1129     		cmp	r1, #17
 855 0174 3AD9     		bls	.L100
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccOYqw3e.s 			page 16


 856              	.L101:
 857 0176 BAF1020F 		cmp	r10, #2
 858 017a 94BF     		ite	ls
 859 017c 4FF0000A 		movls	r10, #0
 860 0180 4FF0010A 		movhi	r10, #1
 861 0184 4FF40074 		mov	r4, #512
 862 0188 5146     		mov	r1, r10
 863 018a 04FA0AF4 		lsl	r4, r4, r10
 864 018e 44E7     		b	.L93
 865              	.L121:
 866 0190 0020     		movs	r0, #0
 867 0192 72E7     		b	.L106
 868              	.L122:
 869 0194 0120     		movs	r0, #1
 870 0196 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 871              	.L129:
 872 019a D8F80800 		ldr	r0, [r8, #8]
 873 019e D8F84030 		ldr	r3, [r8, #64]
 874 01a2 A0FB0001 		umull	r0, r1, r0, r0
 875 01a6 E3FB0401 		umlal	r0, r1, r3, r4
 876 01aa FFF7FEFF 		bl	_Z7isqrt64y
 877 01ae D8F80820 		ldr	r2, [r8, #8]
 878 01b2 821A     		subs	r2, r0, r2
 879 01b4 C8F82420 		str	r2, [r8, #36]
 880 01b8 81E7     		b	.L112
 881              	.L127:
 882 01ba 164A     		ldr	r2, .L134+4
 883 01bc 0023     		movs	r3, #0
 884 01be B618     		adds	r6, r6, r2
 885 01c0 47EB0307 		adc	r7, r7, r3
 886 01c4 41E7     		b	.L105
 887              	.L118:
 888 01c6 4FF40054 		mov	r4, #8192
 889 01ca 0F21     		movs	r1, #15
 890 01cc 4FF0040A 		mov	r10, #4
 891 01d0 23E7     		b	.L93
 892              	.L133:
 893 01d2 114A     		ldr	r2, .L134+8
 894 01d4 98F81810 		ldrb	r1, [r8, #24]	@ zero_extendqisi2
 895 01d8 1068     		ldr	r0, [r2]
 896 01da 1A46     		mov	r2, r3
 897 01dc FFF7FEFF 		bl	_ZN8Platform12SetDirectionEjb
 898 01e0 20E7     		b	.L102
 899              	.L132:
 900 01e2 C8F82430 		str	r3, [r8, #36]
 901 01e6 0120     		movs	r0, #1
 902 01e8 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 903              	.L100:
 904 01ec BAF1040F 		cmp	r10, #4
 905 01f0 C1D9     		bls	.L101
 906 01f2 4FF40064 		mov	r4, #2048
 907 01f6 0321     		movs	r1, #3
 908 01f8 4FF0020A 		mov	r10, #2
 909 01fc 0DE7     		b	.L93
 910              	.L131:
 911 01fe 101A     		subs	r0, r2, r0
 912 0200 63EB0101 		sbc	r1, r3, r1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccOYqw3e.s 			page 17


 913 0204 D8F81060 		ldr	r6, [r8, #16]
 914 0208 FFF7FEFF 		bl	_Z7isqrt64y
 915 020c 301A     		subs	r0, r6, r0
 916 020e 53E7     		b	.L115
 917              	.L135:
 918              		.align	2
 919              	.L134:
 920 0210 80969800 		.word	10000000
 921 0214 FFFF0F00 		.word	1048575
 922 0218 00000000 		.word	reprap
 923              		.size	_ZN13DriveMovement25CalcNextStepTimeDeltaFullERK3DDAb, .-_ZN13DriveMovement25CalcNextStepTim
 924              		.section	.text._ZN13DriveMovement11ReduceSpeedERK3DDAf,"ax",%progbits
 925              		.align	2
 926              		.global	_ZN13DriveMovement11ReduceSpeedERK3DDAf
 927              		.thumb
 928              		.thumb_func
 929              		.type	_ZN13DriveMovement11ReduceSpeedERK3DDAf, %function
 930              	_ZN13DriveMovement11ReduceSpeedERK3DDAf:
 931              		@ args = 0, pretend = 0, frame = 0
 932              		@ frame_needed = 0, uses_anonymous_args = 0
 933 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 934 0004 4B7A     		ldrb	r3, [r1, #9]	@ zero_extendqisi2
 935 0006 C3F34003 		ubfx	r3, r3, #1, #1
 936 000a 0646     		mov	r6, r0
 937 000c 07EE902A 		fmsr	s15, r2
 938 0010 D3B9     		cbnz	r3, .L142
 939 0012 D6ED106A 		flds	s13, [r6, #64]	@ int
 940 0016 7169     		ldr	r1, [r6, #20]
 941 0018 C469     		ldr	r4, [r0, #28]
 942 001a 406A     		ldr	r0, [r0, #36]
 943 001c B363     		str	r3, [r6, #56]
 944 001e B8EE667A 		fuitos	s14, s13
 945 0022 4D1C     		adds	r5, r1, #1
 946 0024 67EE277A 		fmuls	s15, s14, s15
 947 0028 F563     		str	r5, [r6, #60]
 948 002a FCEEE77A 		ftouizs	s15, s15
 949 002e 17EE901A 		fmrs	r1, s15	@ int
 950 0032 A1FB0445 		umull	r4, r5, r1, r4
 951 0036 A20A     		lsrs	r2, r4, #10
 952 0038 42EA8552 		orr	r2, r2, r5, lsl #22
 953 003c 821A     		subs	r2, r0, r2
 954 003e C6ED107A 		fsts	s15, [r6, #64]	@ int
 955 0042 F260     		str	r2, [r6, #12]
 956 0044 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 957              	.L142:
 958 0048 D0ED136A 		flds	s13, [r0, #76]	@ int
 959 004c 876B     		ldr	r7, [r0, #56]
 960 004e B8EE667A 		fuitos	s14, s13
 961 0052 0022     		movs	r2, #0
 962 0054 67EE277A 		fmuls	s15, s14, s15
 963 0058 4FF0FF33 		mov	r3, #-1
 964 005c FCEEE77A 		ftouizs	s15, s15
 965 0060 4264     		str	r2, [r0, #68]
 966 0062 C0ED137A 		fsts	s15, [r0, #76]	@ int
 967 0066 8364     		str	r3, [r0, #72]
 968 0068 D1F89840 		ldr	r4, [r1, #152]
 969 006c 87FB0445 		smull	r4, r5, r7, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccOYqw3e.s 			page 18


 970 0070 002C     		cmp	r4, #0
 971 0072 75F10002 		sbcs	r2, r5, #0
 972 0076 20DB     		blt	.L143
 973              	.L138:
 974 0078 D6E90C01 		ldrd	r0, [r6, #48]
 975 007c 220D     		lsrs	r2, r4, #20
 976 007e F46B     		ldr	r4, [r6, #60]
 977 0080 42EA0532 		orr	r2, r2, r5, lsl #12
 978 0084 87FB0789 		smull	r8, r9, r7, r7
 979 0088 1444     		add	r4, r4, r2
 980 008a B0EB0800 		subs	r0, r0, r8
 981 008e 61EB0901 		sbc	r1, r1, r9
 982 0092 C4FB0401 		smlal	r0, r1, r4, r4
 983 0096 FFF7FEFF 		bl	_Z7isqrt64y
 984 009a B37E     		ldrb	r3, [r6, #26]	@ zero_extendqisi2
 985 009c 5BB9     		cbnz	r3, .L144
 986 009e 2044     		add	r0, r0, r4
 987              	.L140:
 988 00a0 F36C     		ldr	r3, [r6, #76]
 989 00a2 756A     		ldr	r5, [r6, #36]
 990 00a4 A0FB0301 		umull	r0, r1, r0, r3
 991 00a8 C20C     		lsrs	r2, r0, #19
 992 00aa 42EA4132 		orr	r2, r2, r1, lsl #13
 993 00ae AA1A     		subs	r2, r5, r2
 994 00b0 F260     		str	r2, [r6, #12]
 995 00b2 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 996              	.L144:
 997 00b6 201A     		subs	r0, r4, r0
 998 00b8 F2E7     		b	.L140
 999              	.L143:
 1000 00ba 034A     		ldr	r2, .L145
 1001 00bc 0023     		movs	r3, #0
 1002 00be A418     		adds	r4, r4, r2
 1003 00c0 45EB0305 		adc	r5, r5, r3
 1004 00c4 D8E7     		b	.L138
 1005              	.L146:
 1006 00c6 00BF     		.align	2
 1007              	.L145:
 1008 00c8 FFFF0F00 		.word	1048575
 1009              		.size	_ZN13DriveMovement11ReduceSpeedERK3DDAf, .-_ZN13DriveMovement11ReduceSpeedERK3DDAf
 1010              		.section	.rodata.str1.4,"aMS",%progbits,1
 1011              		.align	2
 1012              	.LC0:
 1013 0000 20455252 		.ascii	" ERR:\000"
 1013      3A00
 1014 0006 0000     		.space	2
 1015              	.LC1:
 1016 0008 3A00     		.ascii	":\000"
 1017 000a 0000     		.space	2
 1018              	.LC2:
 1019 000c 444D2563 		.ascii	"DM%c%s dir=%c steps=%u next=%u rev=%u interval=%u s"
 1019      25732064 
 1019      69723D25 
 1019      63207374 
 1019      6570733D 
 1020 003f 73746364 		.ascii	"stcda=%u acmadtcdts=%d tstcdapdsc=%u 2dtstc2diva=%l"
 1020      613D2575 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccOYqw3e.s 			page 19


 1020      2061636D 
 1020      61647463 
 1020      6474733D 
 1021 0072 6C750A00 		.ascii	"lu\012\000"
 1022 0076 0000     		.space	2
 1023              	.LC3:
 1024 0078 686D7A30 		.ascii	"hmz0sK=%d minusAaPlusBbTimesKs=%d dSquaredMinusAsqu"
 1024      734B3D25 
 1024      64206D69 
 1024      6E757341 
 1024      61506C75 
 1025 00ab 61726564 		.ascii	"aredMinusBsquared=%lld\0122c2mmsdak=%u asdsk=%u dsd"
 1025      4D696E75 
 1025      73427371 
 1025      75617265 
 1025      643D256C 
 1026 00db 736B3D25 		.ascii	"sk=%u mmstcdts=%u\012\000"
 1026      75206D6D 
 1026      73746364 
 1026      74733D25 
 1026      750A00
 1027 00ee 0000     		.space	2
 1028              	.LC4:
 1029 00f0 61636365 		.ascii	"accelStopStep=%u decelStartStep=%u 2CsqtMmPerStepDi"
 1029      6C53746F 
 1029      70537465 
 1029      703D2575 
 1029      20646563 
 1030 0123 76413D25 		.ascii	"vA=%llu\012mmPerStepTimesCdivtopSpeed=%u fmsdmtstdc"
 1030      6C6C750A 
 1030      6D6D5065 
 1030      72537465 
 1030      7054696D 
 1031 0153 61323D25 		.ascii	"a2=%lld\012\000"
 1031      6C6C640A 
 1031      00
 1032              	.LC5:
 1033 015c 444D2563 		.ascii	"DM%c: not moving\012\000"
 1033      3A206E6F 
 1033      74206D6F 
 1033      76696E67 
 1033      0A00
 1034              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1035              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1036              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1037              	_ZL28cpu_irq_prev_interrupt_state:
 1038 0000 00       		.space	1
 1039              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1040              		.align	2
 1041              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1042              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1043              	_ZL32cpu_irq_critical_section_counter:
 1044 0000 00000000 		.space	4
 1045              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
