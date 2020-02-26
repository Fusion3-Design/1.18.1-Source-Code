ARM GAS  C:\Users\George\AppData\Local\Temp\cctqKSuH.s 			page 1


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
  14              		.file	"FOPDT.cpp"
  15              		.section	.text._ZN5FopDtC2Ev,"ax",%progbits
  16              		.align	2
  17              		.global	_ZN5FopDtC2Ev
  18              		.thumb
  19              		.thumb_func
  20              		.type	_ZN5FopDtC2Ev, %function
  21              	_ZN5FopDtC2Ev:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 F0B4     		push	{r4, r5, r6, r7}
  26 0002 084F     		ldr	r7, .L2
  27 0004 084E     		ldr	r6, .L2+4
  28 0006 094D     		ldr	r5, .L2+8
  29 0008 4FF07E54 		mov	r4, #1065353216
  30 000c 0022     		movs	r2, #0
  31 000e 0121     		movs	r1, #1
  32 0010 0760     		str	r7, [r0]	@ float
  33 0012 4660     		str	r6, [r0, #4]	@ float
  34 0014 8560     		str	r5, [r0, #8]	@ float
  35 0016 C460     		str	r4, [r0, #12]	@ float
  36 0018 4174     		strb	r1, [r0, #17]
  37 001a 0274     		strb	r2, [r0, #16]
  38 001c 8274     		strb	r2, [r0, #18]
  39 001e F0BC     		pop	{r4, r5, r6, r7}
  40 0020 7047     		bx	lr
  41              	.L3:
  42 0022 00BF     		.align	2
  43              	.L2:
  44 0024 0000AA43 		.word	1135214592
  45 0028 00000C43 		.word	1124859904
  46 002c 0000B040 		.word	1085276160
  47              		.size	_ZN5FopDtC2Ev, .-_ZN5FopDtC2Ev
  48              		.global	_ZN5FopDtC1Ev
  49              		.thumb_set _ZN5FopDtC1Ev,_ZN5FopDtC2Ev
  50              		.global	__aeabi_fmul
  51              		.section	.text._ZNK5FopDt20GetM301PidParametersEb,"ax",%progbits
  52              		.align	2
  53              		.global	_ZNK5FopDt20GetM301PidParametersEb
  54              		.thumb
  55              		.thumb_func
  56              		.type	_ZNK5FopDt20GetM301PidParametersEb, %function
  57              	_ZNK5FopDt20GetM301PidParametersEb:
ARM GAS  C:\Users\George\AppData\Local\Temp\cctqKSuH.s 			page 2


  58              		@ args = 0, pretend = 0, frame = 0
  59              		@ frame_needed = 0, uses_anonymous_args = 0
  60 0000 70B5     		push	{r4, r5, r6, lr}
  61 0002 0446     		mov	r4, r0
  62 0004 9AB9     		cbnz	r2, .L8
  63 0006 01F11405 		add	r5, r1, #20
  64              	.L6:
  65 000a 2868     		ldr	r0, [r5]	@ float
  66 000c 0949     		ldr	r1, .L9
  67 000e FFF7FEFF 		bl	__aeabi_fmul
  68 0012 0646     		mov	r6, r0
  69 0014 2060     		str	r0, [r4]	@ float
  70 0016 0146     		mov	r1, r0
  71 0018 6868     		ldr	r0, [r5, #4]	@ float
  72 001a FFF7FEFF 		bl	__aeabi_fmul
  73 001e 3146     		mov	r1, r6
  74 0020 6060     		str	r0, [r4, #4]	@ float
  75 0022 A868     		ldr	r0, [r5, #8]	@ float
  76 0024 FFF7FEFF 		bl	__aeabi_fmul
  77 0028 A060     		str	r0, [r4, #8]	@ float
  78 002a 2046     		mov	r0, r4
  79 002c 70BD     		pop	{r4, r5, r6, pc}
  80              	.L8:
  81 002e 01F12005 		add	r5, r1, #32
  82 0032 EAE7     		b	.L6
  83              	.L10:
  84              		.align	2
  85              	.L9:
  86 0034 00007F43 		.word	1132396544
  87              		.size	_ZNK5FopDt20GetM301PidParametersEb, .-_ZNK5FopDt20GetM301PidParametersEb
  88              		.global	__aeabi_f2d
  89              		.global	__aeabi_dmul
  90              		.global	__aeabi_d2f
  91              		.global	__aeabi_fdiv
  92              		.section	.text._ZN5FopDt20SetM301PidParametersERK17M301PidParameters,"ax",%progbits
  93              		.align	2
  94              		.global	_ZN5FopDt20SetM301PidParametersERK17M301PidParameters
  95              		.thumb
  96              		.thumb_func
  97              		.type	_ZN5FopDt20SetM301PidParametersERK17M301PidParameters, %function
  98              	_ZN5FopDt20SetM301PidParametersERK17M301PidParameters:
  99              		@ args = 0, pretend = 0, frame = 0
 100              		@ frame_needed = 0, uses_anonymous_args = 0
 101 0000 70B5     		push	{r4, r5, r6, lr}
 102 0002 0E68     		ldr	r6, [r1]	@ float
 103 0004 0446     		mov	r4, r0
 104 0006 3046     		mov	r0, r6
 105 0008 0D46     		mov	r5, r1
 106 000a FFF7FEFF 		bl	__aeabi_f2d
 107 000e 0CA3     		adr	r3, .L12
 108 0010 D3E90023 		ldrd	r2, [r3]
 109 0014 FFF7FEFF 		bl	__aeabi_dmul
 110 0018 FFF7FEFF 		bl	__aeabi_d2f
 111 001c 3146     		mov	r1, r6
 112 001e 6061     		str	r0, [r4, #20]	@ float
 113 0020 2062     		str	r0, [r4, #32]	@ float
 114 0022 6868     		ldr	r0, [r5, #4]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\cctqKSuH.s 			page 3


 115 0024 FFF7FEFF 		bl	__aeabi_fdiv
 116 0028 3146     		mov	r1, r6
 117 002a A061     		str	r0, [r4, #24]	@ float
 118 002c 6062     		str	r0, [r4, #36]	@ float
 119 002e A868     		ldr	r0, [r5, #8]	@ float
 120 0030 FFF7FEFF 		bl	__aeabi_fdiv
 121 0034 0123     		movs	r3, #1
 122 0036 E061     		str	r0, [r4, #28]	@ float
 123 0038 A062     		str	r0, [r4, #40]	@ float
 124 003a A374     		strb	r3, [r4, #18]
 125 003c 70BD     		pop	{r4, r5, r6, pc}
 126              	.L13:
 127 003e 00BF     		.align	3
 128              	.L12:
 129 0040 10101010 		.word	269488144
 130 0044 1010703F 		.word	1064308752
 131              		.size	_ZN5FopDt20SetM301PidParametersERK17M301PidParameters, .-_ZN5FopDt20SetM301PidParametersERK1
 132              		.section	.text._ZNK5FopDt15WriteParametersEP9FileStorej,"ax",%progbits
 133              		.align	2
 134              		.global	_ZNK5FopDt15WriteParametersEP9FileStorej
 135              		.thumb
 136              		.thumb_func
 137              		.type	_ZNK5FopDt15WriteParametersEP9FileStorej, %function
 138              	_ZNK5FopDt15WriteParametersEP9FileStorej:
 139              		@ args = 0, pretend = 0, frame = 0
 140              		@ frame_needed = 0, uses_anonymous_args = 0
 141 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 142 0004 0446     		mov	r4, r0
 143 0006 8AB0     		sub	sp, sp, #40
 144 0008 0068     		ldr	r0, [r0]	@ float
 145 000a 1746     		mov	r7, r2
 146 000c 0E46     		mov	r6, r1
 147 000e FFF7FEFF 		bl	__aeabi_f2d
 148 0012 CDE90001 		strd	r0, [sp]
 149 0016 6068     		ldr	r0, [r4, #4]	@ float
 150 0018 FFF7FEFF 		bl	__aeabi_f2d
 151 001c CDE90201 		strd	r0, [sp, #8]
 152 0020 A068     		ldr	r0, [r4, #8]	@ float
 153 0022 FFF7FEFF 		bl	__aeabi_f2d
 154 0026 CDE90401 		strd	r0, [sp, #16]
 155 002a E068     		ldr	r0, [r4, #12]	@ float
 156 002c FFF7FEFF 		bl	__aeabi_f2d
 157 0030 637C     		ldrb	r3, [r4, #17]	@ zero_extendqisi2
 158 0032 1D4D     		ldr	r5, .L23
 159 0034 83F00103 		eor	r3, r3, #1
 160 0038 CDE90601 		strd	r0, [sp, #24]
 161 003c 0893     		str	r3, [sp, #32]
 162 003e 1B49     		ldr	r1, .L23+4
 163 0040 3A46     		mov	r2, r7
 164 0042 2846     		mov	r0, r5
 165 0044 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 166 0048 3046     		mov	r0, r6
 167 004a 2968     		ldr	r1, [r5]
 168 004c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 169 0050 08B1     		cbz	r0, .L15
 170 0052 A37C     		ldrb	r3, [r4, #18]	@ zero_extendqisi2
 171 0054 13B9     		cbnz	r3, .L22
ARM GAS  C:\Users\George\AppData\Local\Temp\cctqKSuH.s 			page 4


 172              	.L15:
 173 0056 0AB0     		add	sp, sp, #40
 174              		@ sp needed
 175 0058 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 176              	.L22:
 177 005c 6069     		ldr	r0, [r4, #20]	@ float
 178 005e 1449     		ldr	r1, .L23+8
 179 0060 FFF7FEFF 		bl	__aeabi_fmul
 180 0064 8046     		mov	r8, r0
 181 0066 FFF7FEFF 		bl	__aeabi_f2d
 182 006a CDE90001 		strd	r0, [sp]
 183 006e 4046     		mov	r0, r8
 184 0070 A169     		ldr	r1, [r4, #24]	@ float
 185 0072 FFF7FEFF 		bl	__aeabi_fmul
 186 0076 FFF7FEFF 		bl	__aeabi_f2d
 187 007a CDE90201 		strd	r0, [sp, #8]
 188 007e 4046     		mov	r0, r8
 189 0080 E169     		ldr	r1, [r4, #28]	@ float
 190 0082 FFF7FEFF 		bl	__aeabi_fmul
 191 0086 FFF7FEFF 		bl	__aeabi_f2d
 192 008a 3A46     		mov	r2, r7
 193 008c CDE90401 		strd	r0, [sp, #16]
 194 0090 2846     		mov	r0, r5
 195 0092 0849     		ldr	r1, .L23+12
 196 0094 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 197 0098 2968     		ldr	r1, [r5]
 198 009a 3046     		mov	r0, r6
 199 009c 0AB0     		add	sp, sp, #40
 200              		@ sp needed
 201 009e BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 202 00a2 FFF7FEBF 		b	_ZN9FileStore5WriteEPKc
 203              	.L24:
 204 00a6 00BF     		.align	2
 205              	.L23:
 206 00a8 00000000 		.word	scratchString
 207 00ac 00000000 		.word	.LC0
 208 00b0 00007F43 		.word	1132396544
 209 00b4 28000000 		.word	.LC1
 210              		.size	_ZNK5FopDt15WriteParametersEP9FileStorej, .-_ZNK5FopDt15WriteParametersEP9FileStorej
 211              		.global	__aeabi_ddiv
 212              		.section	.text._ZN5FopDt16CalcPidConstantsEv,"ax",%progbits
 213              		.align	2
 214              		.global	_ZN5FopDt16CalcPidConstantsEv
 215              		.thumb
 216              		.thumb_func
 217              		.type	_ZN5FopDt16CalcPidConstantsEv, %function
 218              	_ZN5FopDt16CalcPidConstantsEv:
 219              		@ args = 0, pretend = 0, frame = 0
 220              		@ frame_needed = 0, uses_anonymous_args = 0
 221 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 222 0002 4468     		ldr	r4, [r0, #4]	@ float
 223 0004 0646     		mov	r6, r0
 224 0006 2146     		mov	r1, r4
 225 0008 8068     		ldr	r0, [r0, #8]	@ float
 226 000a FFF7FEFF 		bl	__aeabi_fdiv
 227 000e 3168     		ldr	r1, [r6]	@ float
 228 0010 0746     		mov	r7, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\cctqKSuH.s 			page 5


 229 0012 FFF7FEFF 		bl	__aeabi_fmul
 230 0016 FFF7FEFF 		bl	__aeabi_f2d
 231 001a 0246     		mov	r2, r0
 232 001c 0B46     		mov	r3, r1
 233 001e 28A1     		adr	r1, .L26
 234 0020 D1E90001 		ldrd	r0, [r1]
 235 0024 FFF7FEFF 		bl	__aeabi_ddiv
 236 0028 FFF7FEFF 		bl	__aeabi_d2f
 237 002c 3062     		str	r0, [r6, #32]	@ float
 238 002e 2046     		mov	r0, r4
 239 0030 FFF7FEFF 		bl	__aeabi_f2d
 240 0034 0022     		movs	r2, #0
 241 0036 264B     		ldr	r3, .L26+16
 242 0038 FFF7FEFF 		bl	pow
 243 003c 0446     		mov	r4, r0
 244 003e B068     		ldr	r0, [r6, #8]	@ float
 245 0040 0D46     		mov	r5, r1
 246 0042 FFF7FEFF 		bl	__aeabi_f2d
 247 0046 0022     		movs	r2, #0
 248 0048 224B     		ldr	r3, .L26+20
 249 004a FFF7FEFF 		bl	pow
 250 004e 0246     		mov	r2, r0
 251 0050 0B46     		mov	r3, r1
 252 0052 2046     		mov	r0, r4
 253 0054 2946     		mov	r1, r5
 254 0056 FFF7FEFF 		bl	__aeabi_dmul
 255 005a 0246     		mov	r2, r0
 256 005c 0B46     		mov	r3, r1
 257 005e 1AA1     		adr	r1, .L26+8
 258 0060 D1E90001 		ldrd	r0, [r1]
 259 0064 FFF7FEFF 		bl	__aeabi_ddiv
 260 0068 FFF7FEFF 		bl	__aeabi_d2f
 261 006c 7062     		str	r0, [r6, #36]	@ float
 262 006e B068     		ldr	r0, [r6, #8]	@ float
 263 0070 FFF7FEFF 		bl	__aeabi_f2d
 264 0074 12A3     		adr	r3, .L26
 265 0076 D3E90023 		ldrd	r2, [r3]
 266 007a FFF7FEFF 		bl	__aeabi_dmul
 267 007e FFF7FEFF 		bl	__aeabi_d2f
 268 0082 3168     		ldr	r1, [r6]	@ float
 269 0084 0446     		mov	r4, r0
 270 0086 B062     		str	r0, [r6, #40]	@ float
 271 0088 3846     		mov	r0, r7
 272 008a FFF7FEFF 		bl	__aeabi_fmul
 273 008e FFF7FEFF 		bl	__aeabi_f2d
 274 0092 0B46     		mov	r3, r1
 275 0094 0246     		mov	r2, r0
 276 0096 0AA1     		adr	r1, .L26
 277 0098 D1E90001 		ldrd	r0, [r1]
 278 009c FFF7FEFF 		bl	__aeabi_ddiv
 279 00a0 FFF7FEFF 		bl	__aeabi_d2f
 280 00a4 7168     		ldr	r1, [r6, #4]	@ float
 281 00a6 7061     		str	r0, [r6, #20]	@ float
 282 00a8 4FF07E50 		mov	r0, #1065353216
 283 00ac FFF7FEFF 		bl	__aeabi_fdiv
 284 00b0 0023     		movs	r3, #0
 285 00b2 B061     		str	r0, [r6, #24]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\cctqKSuH.s 			page 6


 286 00b4 F461     		str	r4, [r6, #28]	@ float
 287 00b6 B374     		strb	r3, [r6, #18]
 288 00b8 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 289              	.L27:
 290 00ba 00BFAFF3 		.align	3
 290      0080
 291              	.L26:
 292 00c0 66666666 		.word	1717986918
 293 00c4 6666E63F 		.word	1072064102
 294 00c8 20C17D04 		.word	75350304
 295 00cc F711EC3F 		.word	1072435703
 296 00d0 0000D03F 		.word	1070596096
 297 00d4 0000E83F 		.word	1072168960
 298              		.size	_ZN5FopDt16CalcPidConstantsEv, .-_ZN5FopDt16CalcPidConstantsEv
 299              		.global	__aeabi_fcmpeq
 300              		.global	__aeabi_fcmpgt
 301              		.global	__aeabi_fcmplt
 302              		.global	__aeabi_dcmpgt
 303              		.global	__aeabi_fadd
 304              		.global	__aeabi_fcmple
 305              		.section	.text._ZN5FopDt13SetParametersEffffb,"ax",%progbits
 306              		.align	2
 307              		.global	_ZN5FopDt13SetParametersEffffb
 308              		.thumb
 309              		.thumb_func
 310              		.type	_ZN5FopDt13SetParametersEffffb, %function
 311              	_ZN5FopDt13SetParametersEffffb:
 312              		@ args = 8, pretend = 0, frame = 0
 313              		@ frame_needed = 0, uses_anonymous_args = 0
 314 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 315 0004 0C46     		mov	r4, r1
 316 0006 0746     		mov	r7, r0
 317 0008 3149     		ldr	r1, .L67+16
 318 000a 2046     		mov	r0, r4
 319 000c 1646     		mov	r6, r2
 320 000e 1D46     		mov	r5, r3
 321 0010 9DF82480 		ldrb	r8, [sp, #36]	@ zero_extendqisi2
 322 0014 FFF7FEFF 		bl	__aeabi_fcmpeq
 323 0018 60B1     		cbz	r0, .L57
 324 001a 3046     		mov	r0, r6
 325 001c 2C49     		ldr	r1, .L67+16
 326 001e FFF7FEFF 		bl	__aeabi_fcmpeq
 327 0022 28B1     		cbz	r0, .L31
 328 0024 2846     		mov	r0, r5
 329 0026 2A49     		ldr	r1, .L67+16
 330 0028 FFF7FEFF 		bl	__aeabi_fcmpeq
 331 002c 0028     		cmp	r0, #0
 332 002e 42D1     		bne	.L66
 333              	.L31:
 334 0030 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 335              	.L57:
 336 0034 2046     		mov	r0, r4
 337 0036 2749     		ldr	r1, .L67+20
 338 0038 FFF7FEFF 		bl	__aeabi_fcmpgt
 339 003c 0028     		cmp	r0, #0
 340 003e F7D0     		beq	.L31
 341 0040 2046     		mov	r0, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\cctqKSuH.s 			page 7


 342 0042 2549     		ldr	r1, .L67+24
 343 0044 FFF7FEFF 		bl	__aeabi_fcmplt
 344 0048 0028     		cmp	r0, #0
 345 004a F1D0     		beq	.L31
 346 004c 2846     		mov	r0, r5
 347 004e FFF7FEFF 		bl	__aeabi_f2d
 348 0052 1BA3     		adr	r3, .L67
 349 0054 D3E90023 		ldrd	r2, [r3]
 350 0058 FFF7FEFF 		bl	__aeabi_dcmpgt
 351 005c 0028     		cmp	r0, #0
 352 005e E7D0     		beq	.L31
 353 0060 2946     		mov	r1, r5
 354 0062 2846     		mov	r0, r5
 355 0064 FFF7FEFF 		bl	__aeabi_fadd
 356 0068 0146     		mov	r1, r0
 357 006a 3046     		mov	r0, r6
 358 006c FFF7FEFF 		bl	__aeabi_fcmpgt
 359 0070 0028     		cmp	r0, #0
 360 0072 DDD0     		beq	.L31
 361 0074 0898     		ldr	r0, [sp, #32]	@ float
 362 0076 FFF7FEFF 		bl	__aeabi_f2d
 363 007a 13A3     		adr	r3, .L67+8
 364 007c D3E90023 		ldrd	r2, [r3]
 365 0080 FFF7FEFF 		bl	__aeabi_dcmpgt
 366 0084 0028     		cmp	r0, #0
 367 0086 D3D0     		beq	.L31
 368 0088 0898     		ldr	r0, [sp, #32]	@ float
 369 008a 4FF07E51 		mov	r1, #1065353216
 370 008e FFF7FEFF 		bl	__aeabi_fcmple
 371 0092 0028     		cmp	r0, #0
 372 0094 CCD0     		beq	.L31
 373 0096 089B     		ldr	r3, [sp, #32]	@ float
 374 0098 4FF00109 		mov	r9, #1
 375 009c 3846     		mov	r0, r7
 376 009e 3C60     		str	r4, [r7]	@ float
 377 00a0 7E60     		str	r6, [r7, #4]	@ float
 378 00a2 BD60     		str	r5, [r7, #8]	@ float
 379 00a4 FB60     		str	r3, [r7, #12]	@ float
 380 00a6 87F81180 		strb	r8, [r7, #17]
 381 00aa 87F81090 		strb	r9, [r7, #16]
 382 00ae FFF7FEFF 		bl	_ZN5FopDt16CalcPidConstantsEv
 383 00b2 4846     		mov	r0, r9
 384 00b4 BCE7     		b	.L31
 385              	.L66:
 386 00b6 0023     		movs	r3, #0
 387 00b8 3B74     		strb	r3, [r7, #16]
 388 00ba 0120     		movs	r0, #1
 389 00bc BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 390              	.L68:
 391              		.align	3
 392              	.L67:
 393 00c0 9A999999 		.word	-1717986918
 394 00c4 9999B93F 		.word	1069128089
 395 00c8 9A999999 		.word	-1717986918
 396 00cc 9999C93F 		.word	1070176665
 397 00d0 000080BF 		.word	-1082130432
 398 00d4 00002041 		.word	1092616192
ARM GAS  C:\Users\George\AppData\Local\Temp\cctqKSuH.s 			page 8


 399 00d8 0080BB44 		.word	1153138688
 400              		.size	_ZN5FopDt13SetParametersEffffb, .-_ZN5FopDt13SetParametersEffffb
 401 00dc AFF30080 		.section	.rodata.str1.4,"aMS",%progbits,1
 402              		.align	2
 403              	.LC0:
 404 0000 4D333037 		.ascii	"M307 H%u A%.1f C%.1f D%.1f S%.2f B%d\012\000"
 404      20482575 
 404      2041252E 
 404      31662043 
 404      252E3166 
 405 0026 0000     		.space	2
 406              	.LC1:
 407 0028 4D333031 		.ascii	"M301 H%u P%.1f I%.3f D%.1f\012\000"
 407      20482575 
 407      2050252E 
 407      31662049 
 407      252E3366 
 408              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 409              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 410              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 411              	_ZL28cpu_irq_prev_interrupt_state:
 412 0000 00       		.space	1
 413              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 414              		.align	2
 415              		.type	_ZL32cpu_irq_critical_section_counter, %object
 416              		.size	_ZL32cpu_irq_critical_section_counter, 4
 417              	_ZL32cpu_irq_critical_section_counter:
 418 0000 00000000 		.space	4
 419              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
