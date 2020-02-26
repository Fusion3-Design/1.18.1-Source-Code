ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0GytBo.s 			page 1


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
  15              		.file	"FOPDT.cpp"
  16              		.section	.text._ZN5FopDtC2Ev,"ax",%progbits
  17              		.align	2
  18              		.global	_ZN5FopDtC2Ev
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN5FopDtC2Ev, %function
  22              	_ZN5FopDtC2Ev:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 70B4     		push	{r4, r5, r6}
  27 0002 084A     		ldr	r2, .L2
  28 0004 084E     		ldr	r6, .L2+4
  29 0006 094D     		ldr	r5, .L2+8
  30 0008 0260     		str	r2, [r0]	@ float
  31 000a 4FF07E54 		mov	r4, #1065353216
  32 000e 0022     		movs	r2, #0
  33 0010 0121     		movs	r1, #1
  34 0012 4660     		str	r6, [r0, #4]	@ float
  35 0014 8560     		str	r5, [r0, #8]	@ float
  36 0016 C460     		str	r4, [r0, #12]	@ float
  37 0018 4174     		strb	r1, [r0, #17]
  38 001a 0274     		strb	r2, [r0, #16]
  39 001c 8274     		strb	r2, [r0, #18]
  40 001e 70BC     		pop	{r4, r5, r6}
  41 0020 7047     		bx	lr
  42              	.L3:
  43 0022 00BF     		.align	2
  44              	.L2:
  45 0024 0000AA43 		.word	1135214592
  46 0028 00000C43 		.word	1124859904
  47 002c 0000B040 		.word	1085276160
  48              		.size	_ZN5FopDtC2Ev, .-_ZN5FopDtC2Ev
  49              		.global	_ZN5FopDtC1Ev
  50              		.thumb_set _ZN5FopDtC1Ev,_ZN5FopDtC2Ev
  51              		.section	.text._ZNK5FopDt20GetM301PidParametersEb,"ax",%progbits
  52              		.align	2
  53              		.global	_ZNK5FopDt20GetM301PidParametersEb
  54              		.thumb
  55              		.thumb_func
  56              		.type	_ZNK5FopDt20GetM301PidParametersEb, %function
  57              	_ZNK5FopDt20GetM301PidParametersEb:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0GytBo.s 			page 2


  58              		@ args = 0, pretend = 0, frame = 0
  59              		@ frame_needed = 0, uses_anonymous_args = 0
  60              		@ link register save eliminated.
  61 0000 0346     		mov	r3, r0
  62 0002 B2B9     		cbnz	r2, .L8
  63 0004 1431     		adds	r1, r1, #20
  64              	.L6:
  65 0006 91ED006A 		flds	s12, [r1]
  66 000a DFED0B7A 		flds	s15, .L9
  67 000e D1ED016A 		flds	s13, [r1, #4]
  68 0012 91ED027A 		flds	s14, [r1, #8]
  69 0016 66EE277A 		fmuls	s15, s12, s15
  70 001a 1846     		mov	r0, r3
  71 001c 66EEA76A 		fmuls	s13, s13, s15
  72 0020 27EE277A 		fmuls	s14, s14, s15
  73 0024 C3ED007A 		fsts	s15, [r3]
  74 0028 C3ED016A 		fsts	s13, [r3, #4]
  75 002c 83ED027A 		fsts	s14, [r3, #8]
  76 0030 7047     		bx	lr
  77              	.L8:
  78 0032 2031     		adds	r1, r1, #32
  79 0034 E7E7     		b	.L6
  80              	.L10:
  81 0036 00BF     		.align	2
  82              	.L9:
  83 0038 00007F43 		.word	1132396544
  84              		.size	_ZNK5FopDt20GetM301PidParametersEb, .-_ZNK5FopDt20GetM301PidParametersEb
  85              		.global	__aeabi_f2d
  86              		.global	__aeabi_dmul
  87              		.global	__aeabi_d2f
  88              		.section	.text._ZN5FopDt20SetM301PidParametersERK17M301PidParameters,"ax",%progbits
  89              		.align	2
  90              		.global	_ZN5FopDt20SetM301PidParametersERK17M301PidParameters
  91              		.thumb
  92              		.thumb_func
  93              		.type	_ZN5FopDt20SetM301PidParametersERK17M301PidParameters, %function
  94              	_ZN5FopDt20SetM301PidParametersERK17M301PidParameters:
  95              		@ args = 0, pretend = 0, frame = 0
  96              		@ frame_needed = 0, uses_anonymous_args = 0
  97 0000 38B5     		push	{r3, r4, r5, lr}
  98 0002 2DED028B 		fstmfdd	sp!, {d8}
  99 0006 91ED008A 		flds	s16, [r1]
 100 000a 0446     		mov	r4, r0
 101 000c 18EE100A 		fmrs	r0, s16
 102 0010 0D46     		mov	r5, r1
 103 0012 FFF7FEFF 		bl	__aeabi_f2d
 104 0016 10A3     		adr	r3, .L12
 105 0018 D3E90023 		ldrd	r2, [r3]
 106 001c FFF7FEFF 		bl	__aeabi_dmul
 107 0020 FFF7FEFF 		bl	__aeabi_d2f
 108 0024 D5ED017A 		flds	s15, [r5, #4]
 109 0028 95ED027A 		flds	s14, [r5, #8]
 110 002c 6061     		str	r0, [r4, #20]	@ float
 111 002e C7EE887A 		fdivs	s15, s15, s16
 112 0032 0123     		movs	r3, #1
 113 0034 A374     		strb	r3, [r4, #18]
 114 0036 2062     		str	r0, [r4, #32]	@ float
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0GytBo.s 			page 3


 115 0038 87EE088A 		fdivs	s16, s14, s16
 116 003c C4ED067A 		fsts	s15, [r4, #24]
 117 0040 84ED078A 		fsts	s16, [r4, #28]
 118 0044 84ED0A8A 		fsts	s16, [r4, #40]
 119 0048 BDEC028B 		fldmfdd	sp!, {d8}
 120 004c C4ED097A 		fsts	s15, [r4, #36]
 121 0050 38BD     		pop	{r3, r4, r5, pc}
 122              	.L13:
 123 0052 00BFAFF3 		.align	3
 123      0080
 124              	.L12:
 125 0058 10101010 		.word	269488144
 126 005c 1010703F 		.word	1064308752
 127              		.size	_ZN5FopDt20SetM301PidParametersERK17M301PidParameters, .-_ZN5FopDt20SetM301PidParametersERK1
 128              		.section	.text._ZNK5FopDt15WriteParametersEP9FileStorej,"ax",%progbits
 129              		.align	2
 130              		.global	_ZNK5FopDt15WriteParametersEP9FileStorej
 131              		.thumb
 132              		.thumb_func
 133              		.type	_ZNK5FopDt15WriteParametersEP9FileStorej, %function
 134              	_ZNK5FopDt15WriteParametersEP9FileStorej:
 135              		@ args = 0, pretend = 0, frame = 0
 136              		@ frame_needed = 0, uses_anonymous_args = 0
 137 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 138 0002 2DED028B 		fstmfdd	sp!, {d8}
 139 0006 0446     		mov	r4, r0
 140 0008 8BB0     		sub	sp, sp, #44
 141 000a 0068     		ldr	r0, [r0]	@ float
 142 000c 2B4D     		ldr	r5, .L23
 143 000e 1746     		mov	r7, r2
 144 0010 0E46     		mov	r6, r1
 145 0012 FFF7FEFF 		bl	__aeabi_f2d
 146 0016 CDE90001 		strd	r0, [sp]
 147 001a 6068     		ldr	r0, [r4, #4]	@ float
 148 001c FFF7FEFF 		bl	__aeabi_f2d
 149 0020 CDE90201 		strd	r0, [sp, #8]
 150 0024 A068     		ldr	r0, [r4, #8]	@ float
 151 0026 FFF7FEFF 		bl	__aeabi_f2d
 152 002a CDE90401 		strd	r0, [sp, #16]
 153 002e E068     		ldr	r0, [r4, #12]	@ float
 154 0030 FFF7FEFF 		bl	__aeabi_f2d
 155 0034 637C     		ldrb	r3, [r4, #17]	@ zero_extendqisi2
 156 0036 83F00103 		eor	r3, r3, #1
 157 003a CDE90601 		strd	r0, [sp, #24]
 158 003e 0893     		str	r3, [sp, #32]
 159 0040 1F49     		ldr	r1, .L23+4
 160 0042 3A46     		mov	r2, r7
 161 0044 2846     		mov	r0, r5
 162 0046 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 163 004a 3046     		mov	r0, r6
 164 004c 2968     		ldr	r1, [r5]
 165 004e FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 166 0052 08B1     		cbz	r0, .L15
 167 0054 A37C     		ldrb	r3, [r4, #18]	@ zero_extendqisi2
 168 0056 1BB9     		cbnz	r3, .L22
 169              	.L15:
 170 0058 0BB0     		add	sp, sp, #44
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0GytBo.s 			page 4


 171              		@ sp needed
 172 005a BDEC028B 		fldmfdd	sp!, {d8}
 173 005e F0BD     		pop	{r4, r5, r6, r7, pc}
 174              	.L22:
 175 0060 94ED058A 		flds	s16, [r4, #20]
 176 0064 DFED177A 		flds	s15, .L23+8
 177 0068 28EE278A 		fmuls	s16, s16, s15
 178 006c 18EE100A 		fmrs	r0, s16
 179 0070 FFF7FEFF 		bl	__aeabi_f2d
 180 0074 D4ED067A 		flds	s15, [r4, #24]
 181 0078 68EE277A 		fmuls	s15, s16, s15
 182 007c CDE90001 		strd	r0, [sp]
 183 0080 17EE900A 		fmrs	r0, s15
 184 0084 FFF7FEFF 		bl	__aeabi_f2d
 185 0088 D4ED077A 		flds	s15, [r4, #28]
 186 008c 68EE277A 		fmuls	s15, s16, s15
 187 0090 CDE90201 		strd	r0, [sp, #8]
 188 0094 17EE900A 		fmrs	r0, s15
 189 0098 FFF7FEFF 		bl	__aeabi_f2d
 190 009c 3A46     		mov	r2, r7
 191 009e CDE90401 		strd	r0, [sp, #16]
 192 00a2 2846     		mov	r0, r5
 193 00a4 0849     		ldr	r1, .L23+12
 194 00a6 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 195 00aa 2968     		ldr	r1, [r5]
 196 00ac 3046     		mov	r0, r6
 197 00ae 0BB0     		add	sp, sp, #44
 198              		@ sp needed
 199 00b0 BDEC028B 		fldmfdd	sp!, {d8}
 200 00b4 BDE8F040 		pop	{r4, r5, r6, r7, lr}
 201 00b8 FFF7FEBF 		b	_ZN9FileStore5WriteEPKc
 202              	.L24:
 203              		.align	2
 204              	.L23:
 205 00bc 00000000 		.word	scratchString
 206 00c0 00000000 		.word	.LC0
 207 00c4 00007F43 		.word	1132396544
 208 00c8 28000000 		.word	.LC1
 209              		.size	_ZNK5FopDt15WriteParametersEP9FileStorej, .-_ZNK5FopDt15WriteParametersEP9FileStorej
 210              		.global	__aeabi_ddiv
 211              		.section	.text._ZN5FopDt16CalcPidConstantsEv,"ax",%progbits
 212              		.align	2
 213              		.global	_ZN5FopDt16CalcPidConstantsEv
 214              		.thumb
 215              		.thumb_func
 216              		.type	_ZN5FopDt16CalcPidConstantsEv, %function
 217              	_ZN5FopDt16CalcPidConstantsEv:
 218              		@ args = 0, pretend = 0, frame = 0
 219              		@ frame_needed = 0, uses_anonymous_args = 0
 220 0000 70B5     		push	{r4, r5, r6, lr}
 221 0002 2DED028B 		fstmfdd	sp!, {d8}
 222 0006 D0ED018A 		flds	s17, [r0, #4]
 223 000a 90ED028A 		flds	s16, [r0, #8]
 224 000e D0ED007A 		flds	s15, [r0]
 225 0012 88EE288A 		fdivs	s16, s16, s17
 226 0016 0646     		mov	r6, r0
 227 0018 68EE277A 		fmuls	s15, s16, s15
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0GytBo.s 			page 5


 228 001c 17EE900A 		fmrs	r0, s15
 229 0020 FFF7FEFF 		bl	__aeabi_f2d
 230 0024 0246     		mov	r2, r0
 231 0026 0B46     		mov	r3, r1
 232 0028 2DA1     		adr	r1, .L26+8
 233 002a D1E90001 		ldrd	r0, [r1]
 234 002e FFF7FEFF 		bl	__aeabi_ddiv
 235 0032 FFF7FEFF 		bl	__aeabi_d2f
 236 0036 3062     		str	r0, [r6, #32]	@ float
 237 0038 18EE900A 		fmrs	r0, s17
 238 003c FFF7FEFF 		bl	__aeabi_f2d
 239 0040 0022     		movs	r2, #0
 240 0042 294B     		ldr	r3, .L26+16
 241 0044 FFF7FEFF 		bl	pow
 242 0048 0446     		mov	r4, r0
 243 004a B068     		ldr	r0, [r6, #8]	@ float
 244 004c 0D46     		mov	r5, r1
 245 004e FFF7FEFF 		bl	__aeabi_f2d
 246 0052 0022     		movs	r2, #0
 247 0054 254B     		ldr	r3, .L26+20
 248 0056 FFF7FEFF 		bl	pow
 249 005a 0246     		mov	r2, r0
 250 005c 0B46     		mov	r3, r1
 251 005e 2046     		mov	r0, r4
 252 0060 2946     		mov	r1, r5
 253 0062 FFF7FEFF 		bl	__aeabi_dmul
 254 0066 0246     		mov	r2, r0
 255 0068 0B46     		mov	r3, r1
 256 006a 1BA1     		adr	r1, .L26
 257 006c D1E90001 		ldrd	r0, [r1]
 258 0070 FFF7FEFF 		bl	__aeabi_ddiv
 259 0074 FFF7FEFF 		bl	__aeabi_d2f
 260 0078 7062     		str	r0, [r6, #36]	@ float
 261 007a B068     		ldr	r0, [r6, #8]	@ float
 262 007c FFF7FEFF 		bl	__aeabi_f2d
 263 0080 17A3     		adr	r3, .L26+8
 264 0082 D3E90023 		ldrd	r2, [r3]
 265 0086 FFF7FEFF 		bl	__aeabi_dmul
 266 008a FFF7FEFF 		bl	__aeabi_d2f
 267 008e D6ED007A 		flds	s15, [r6]
 268 0092 B062     		str	r0, [r6, #40]	@ float
 269 0094 68EE277A 		fmuls	s15, s16, s15
 270 0098 0446     		mov	r4, r0	@ float
 271 009a 17EE900A 		fmrs	r0, s15
 272 009e FFF7FEFF 		bl	__aeabi_f2d
 273 00a2 0B46     		mov	r3, r1
 274 00a4 0246     		mov	r2, r0
 275 00a6 0EA1     		adr	r1, .L26+8
 276 00a8 D1E90001 		ldrd	r0, [r1]
 277 00ac FFF7FEFF 		bl	__aeabi_ddiv
 278 00b0 FFF7FEFF 		bl	__aeabi_d2f
 279 00b4 D6ED017A 		flds	s15, [r6, #4]
 280 00b8 7061     		str	r0, [r6, #20]	@ float
 281 00ba B7EE007A 		fconsts	s14, #112
 282 00be C7EE277A 		fdivs	s15, s14, s15
 283 00c2 BDEC028B 		fldmfdd	sp!, {d8}
 284 00c6 0023     		movs	r3, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0GytBo.s 			page 6


 285 00c8 B374     		strb	r3, [r6, #18]
 286 00ca F461     		str	r4, [r6, #28]	@ float
 287 00cc C6ED067A 		fsts	s15, [r6, #24]
 288 00d0 70BD     		pop	{r4, r5, r6, pc}
 289              	.L27:
 290 00d2 00BFAFF3 		.align	3
 290      0080
 291              	.L26:
 292 00d8 20C17D04 		.word	75350304
 293 00dc F711EC3F 		.word	1072435703
 294 00e0 66666666 		.word	1717986918
 295 00e4 6666E63F 		.word	1072064102
 296 00e8 0000D03F 		.word	1070596096
 297 00ec 0000E83F 		.word	1072168960
 298              		.size	_ZN5FopDt16CalcPidConstantsEv, .-_ZN5FopDt16CalcPidConstantsEv
 299              		.global	__aeabi_dcmpgt
 300              		.section	.text._ZN5FopDt13SetParametersEffffb,"ax",%progbits
 301              		.align	2
 302              		.global	_ZN5FopDt13SetParametersEffffb
 303              		.thumb
 304              		.thumb_func
 305              		.type	_ZN5FopDt13SetParametersEffffb, %function
 306              	_ZN5FopDt13SetParametersEffffb:
 307              		@ args = 8, pretend = 0, frame = 0
 308              		@ frame_needed = 0, uses_anonymous_args = 0
 309 0000 70B5     		push	{r4, r5, r6, lr}
 310 0002 2DED048B 		fstmfdd	sp!, {d8, d9}
 311 0006 08EE101A 		fmsr	s16, r1
 312 000a FFEE007A 		fconsts	s15, #240
 313 000e B4EE678A 		fcmps	s16, s15
 314 0012 F1EE10FA 		fmstat
 315 0016 0446     		mov	r4, r0
 316 0018 9DF82450 		ldrb	r5, [sp, #36]	@ zero_extendqisi2
 317 001c 09EE102A 		fmsr	s18, r2
 318 0020 08EE903A 		fmsr	s17, r3
 319 0024 08D1     		bne	.L29
 320 0026 B4EE679A 		fcmps	s18, s15
 321 002a F1EE10FA 		fmstat
 322 002e 45D0     		beq	.L57
 323              	.L56:
 324 0030 0020     		movs	r0, #0
 325              	.L30:
 326 0032 BDEC048B 		fldmfdd	sp!, {d8-d9}
 327 0036 70BD     		pop	{r4, r5, r6, pc}
 328              	.L29:
 329 0038 F2EE047A 		fconsts	s15, #36
 330 003c B4EEE78A 		fcmpes	s16, s15
 331 0040 F1EE10FA 		fmstat
 332 0044 F4DD     		ble	.L56
 333 0046 DFED267A 		flds	s15, .L58+16
 334 004a B4EEE78A 		fcmpes	s16, s15
 335 004e F1EE10FA 		fmstat
 336 0052 EDD5     		bpl	.L56
 337 0054 1846     		mov	r0, r3	@ float
 338 0056 FFF7FEFF 		bl	__aeabi_f2d
 339 005a 1DA3     		adr	r3, .L58
 340 005c D3E90023 		ldrd	r2, [r3]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0GytBo.s 			page 7


 341 0060 FFF7FEFF 		bl	__aeabi_dcmpgt
 342 0064 0028     		cmp	r0, #0
 343 0066 E4D0     		beq	.L30
 344 0068 78EEA87A 		fadds	s15, s17, s17
 345 006c B4EEE79A 		fcmpes	s18, s15
 346 0070 F1EE10FA 		fmstat
 347 0074 DCDD     		ble	.L56
 348 0076 0898     		ldr	r0, [sp, #32]	@ float
 349 0078 FFF7FEFF 		bl	__aeabi_f2d
 350 007c 16A3     		adr	r3, .L58+8
 351 007e D3E90023 		ldrd	r2, [r3]
 352 0082 FFF7FEFF 		bl	__aeabi_dcmpgt
 353 0086 0028     		cmp	r0, #0
 354 0088 D3D0     		beq	.L30
 355 008a 9DED087A 		flds	s14, [sp, #32]
 356 008e F7EE007A 		fconsts	s15, #112
 357 0092 B4EEE77A 		fcmpes	s14, s15
 358 0096 F1EE10FA 		fmstat
 359 009a C9D8     		bhi	.L56
 360 009c 0126     		movs	r6, #1
 361 009e 2046     		mov	r0, r4
 362 00a0 84ED008A 		fsts	s16, [r4]
 363 00a4 84ED019A 		fsts	s18, [r4, #4]
 364 00a8 C4ED028A 		fsts	s17, [r4, #8]
 365 00ac 84ED037A 		fsts	s14, [r4, #12]
 366 00b0 6574     		strb	r5, [r4, #17]
 367 00b2 2674     		strb	r6, [r4, #16]
 368 00b4 FFF7FEFF 		bl	_ZN5FopDt16CalcPidConstantsEv
 369 00b8 3046     		mov	r0, r6
 370 00ba BAE7     		b	.L30
 371              	.L57:
 372 00bc F4EE678A 		fcmps	s17, s15
 373 00c0 F1EE10FA 		fmstat
 374 00c4 B4D1     		bne	.L56
 375 00c6 0023     		movs	r3, #0
 376 00c8 0374     		strb	r3, [r0, #16]
 377 00ca 0120     		movs	r0, #1
 378 00cc B1E7     		b	.L30
 379              	.L59:
 380 00ce 00BF     		.align	3
 381              	.L58:
 382 00d0 9A999999 		.word	-1717986918
 383 00d4 9999B93F 		.word	1069128089
 384 00d8 9A999999 		.word	-1717986918
 385 00dc 9999C93F 		.word	1070176665
 386 00e0 0080BB44 		.word	1153138688
 387              		.size	_ZN5FopDt13SetParametersEffffb, .-_ZN5FopDt13SetParametersEffffb
 388 00e4 AFF30080 		.section	.rodata.str1.4,"aMS",%progbits,1
 389              		.align	2
 390              	.LC0:
 391 0000 4D333037 		.ascii	"M307 H%u A%.1f C%.1f D%.1f S%.2f B%d\012\000"
 391      20482575 
 391      2041252E 
 391      31662043 
 391      252E3166 
 392 0026 0000     		.space	2
 393              	.LC1:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0GytBo.s 			page 8


 394 0028 4D333031 		.ascii	"M301 H%u P%.1f I%.3f D%.1f\012\000"
 394      20482575 
 394      2050252E 
 394      31662049 
 394      252E3366 
 395              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 396              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 397              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 398              	_ZL28cpu_irq_prev_interrupt_state:
 399 0000 00       		.space	1
 400              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 401              		.align	2
 402              		.type	_ZL32cpu_irq_critical_section_counter, %object
 403              		.size	_ZL32cpu_irq_critical_section_counter, 4
 404              	_ZL32cpu_irq_critical_section_counter:
 405 0000 00000000 		.space	4
 406              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
