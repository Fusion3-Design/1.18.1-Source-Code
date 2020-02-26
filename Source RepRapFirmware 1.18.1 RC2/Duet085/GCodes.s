ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 1


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
  14              		.file	"GCodes.cpp"
  15              		.section	.text._ZN6GCodes4PushER11GCodeBuffer.part.43,"ax",%progbits
  16              		.align	2
  17              		.thumb
  18              		.thumb_func
  19              		.type	_ZN6GCodes4PushER11GCodeBuffer.part.43, %function
  20              	_ZN6GCodes4PushER11GCodeBuffer.part.43:
  21              		@ args = 0, pretend = 0, frame = 0
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23 0000 08B5     		push	{r3, lr}
  24 0002 0068     		ldr	r0, [r0]
  25 0004 0621     		movs	r1, #6
  26 0006 024A     		ldr	r2, .L2
  27 0008 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
  28 000c 08BD     		pop	{r3, pc}
  29              	.L3:
  30 000e 00BF     		.align	2
  31              	.L2:
  32 0010 00000000 		.word	.LC0
  33              		.size	_ZN6GCodes4PushER11GCodeBuffer.part.43, .-_ZN6GCodes4PushER11GCodeBuffer.part.43
  34              		.section	.text._ZN6GCodes12RestorePoint4InitEv,"ax",%progbits
  35              		.align	2
  36              		.global	_ZN6GCodes12RestorePoint4InitEv
  37              		.thumb
  38              		.thumb_func
  39              		.type	_ZN6GCodes12RestorePoint4InitEv, %function
  40              	_ZN6GCodes12RestorePoint4InitEv:
  41              		@ args = 0, pretend = 0, frame = 0
  42              		@ frame_needed = 0, uses_anonymous_args = 0
  43              		@ link register save eliminated.
  44 0000 0022     		movs	r2, #0
  45 0002 0023     		movs	r3, #0
  46              	.L6:
  47 0004 C250     		str	r2, [r0, r3]	@ float
  48 0006 0433     		adds	r3, r3, #4
  49 0008 242B     		cmp	r3, #36
  50 000a FBD1     		bne	.L6
  51 000c 014B     		ldr	r3, .L9
  52 000e 4362     		str	r3, [r0, #36]	@ float
  53 0010 7047     		bx	lr
  54              	.L10:
  55 0012 00BF     		.align	2
  56              	.L9:
  57 0014 01004842 		.word	1112014849
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 2


  58              		.size	_ZN6GCodes12RestorePoint4InitEv, .-_ZN6GCodes12RestorePoint4InitEv
  59              		.section	.text._ZN6GCodesC2EP8PlatformP9Webserver,"ax",%progbits
  60              		.align	2
  61              		.global	_ZN6GCodesC2EP8PlatformP9Webserver
  62              		.thumb
  63              		.thumb_func
  64              		.type	_ZN6GCodesC2EP8PlatformP9Webserver, %function
  65              	_ZN6GCodesC2EP8PlatformP9Webserver:
  66              		@ args = 0, pretend = 0, frame = 0
  67              		@ frame_needed = 0, uses_anonymous_args = 0
  68 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  69 0004 00F1240C 		add	ip, r0, #36
  70 0008 0446     		mov	r4, r0
  71 000a 00F11C09 		add	r9, r0, #28
  72 000e 00F12008 		add	r8, r0, #32
  73 0012 00F1280E 		add	lr, r0, #40
  74 0016 00F12C07 		add	r7, r0, #44
  75 001a 00F13006 		add	r6, r0, #48
  76 001e 00F13405 		add	r5, r0, #52
  77 0022 0023     		movs	r3, #0
  78 0024 84E80600 		stmia	r4, {r1, r2}
  79 0028 0020     		movs	r0, #0
  80 002a C4F83890 		str	r9, [r4, #56]
  81 002e C4F83C80 		str	r8, [r4, #60]
  82 0032 C4F840C0 		str	ip, [r4, #64]
  83 0036 C4F844E0 		str	lr, [r4, #68]
  84 003a A764     		str	r7, [r4, #72]
  85 003c E664     		str	r6, [r4, #76]
  86 003e 2565     		str	r5, [r4, #80]
  87 0040 84F88430 		strb	r3, [r4, #132]
  88 0044 04F58672 		add	r2, r4, #268
  89              	.L13:
  90 0048 D050     		str	r0, [r2, r3]	@ float
  91 004a 0433     		adds	r3, r3, #4
  92 004c 242B     		cmp	r3, #36
  93 004e FBD1     		bne	.L13
  94 0050 544B     		ldr	r3, .L21
  95 0052 0021     		movs	r1, #0
  96 0054 C4F83031 		str	r3, [r4, #304]	@ float
  97 0058 04F59A72 		add	r2, r4, #308
  98 005c 0023     		movs	r3, #0
  99              	.L15:
 100 005e D150     		str	r1, [r2, r3]	@ float
 101 0060 0433     		adds	r3, r3, #4
 102 0062 242B     		cmp	r3, #36
 103 0064 FBD1     		bne	.L15
 104 0066 4F4B     		ldr	r3, .L21
 105 0068 0021     		movs	r1, #0
 106 006a C4F85831 		str	r3, [r4, #344]	@ float
 107 006e 04F5AE72 		add	r2, r4, #348
 108 0072 0023     		movs	r3, #0
 109              	.L17:
 110 0074 D150     		str	r1, [r2, r3]	@ float
 111 0076 0433     		adds	r3, r3, #4
 112 0078 242B     		cmp	r3, #36
 113 007a FBD1     		bne	.L17
 114 007c 494B     		ldr	r3, .L21
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 3


 115 007e 0025     		movs	r5, #0
 116 0080 C4F88031 		str	r3, [r4, #384]	@ float
 117 0084 C4F83852 		str	r5, [r4, #568]
 118 0088 84F80553 		strb	r5, [r4, #773]
 119 008c C4F80C53 		str	r5, [r4, #780]
 120 0090 C4F87853 		str	r5, [r4, #888]
 121 0094 4FF48C70 		mov	r0, #280
 122 0098 FFF7FEFF 		bl	_Znwj
 123 009c 0121     		movs	r1, #1
 124 009e 0646     		mov	r6, r0
 125 00a0 FFF7FEFF 		bl	_ZN17RegularGCodeInputC1Eb
 126 00a4 A660     		str	r6, [r4, #8]
 127 00a6 4FF48C70 		mov	r0, #280
 128 00aa FFF7FEFF 		bl	_Znwj
 129 00ae 0121     		movs	r1, #1
 130 00b0 0646     		mov	r6, r0
 131 00b2 FFF7FEFF 		bl	_ZN17RegularGCodeInputC1Eb
 132 00b6 E660     		str	r6, [r4, #12]
 133 00b8 4FF48E70 		mov	r0, #284
 134 00bc FFF7FEFF 		bl	_Znwj
 135 00c0 2946     		mov	r1, r5
 136 00c2 0646     		mov	r6, r0
 137 00c4 FFF7FEFF 		bl	_ZN17RegularGCodeInputC2Eb
 138 00c8 374B     		ldr	r3, .L21+4
 139 00ca C6F81851 		str	r5, [r6, #280]
 140 00ce 3360     		str	r3, [r6]
 141 00d0 0820     		movs	r0, #8
 142 00d2 2661     		str	r6, [r4, #16]
 143 00d4 FFF7FEFF 		bl	_Znwj
 144 00d8 344E     		ldr	r6, .L21+8
 145 00da 354A     		ldr	r2, .L21+12
 146 00dc 0346     		mov	r3, r0
 147 00de 4260     		str	r2, [r0, #4]
 148 00e0 0660     		str	r6, [r0]
 149 00e2 6361     		str	r3, [r4, #20]
 150 00e4 0820     		movs	r0, #8
 151 00e6 FFF7FEFF 		bl	_Znwj
 152 00ea 324A     		ldr	r2, .L21+16
 153 00ec 0346     		mov	r3, r0
 154 00ee 0660     		str	r6, [r0]
 155 00f0 4260     		str	r2, [r0, #4]
 156 00f2 A361     		str	r3, [r4, #24]
 157 00f4 9020     		movs	r0, #144
 158 00f6 FFF7FEFF 		bl	_Znwj
 159 00fa 2B46     		mov	r3, r5
 160 00fc 2E49     		ldr	r1, .L21+20
 161 00fe 0422     		movs	r2, #4
 162 0100 0646     		mov	r6, r0
 163 0102 FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 164 0106 A36B     		ldr	r3, [r4, #56]
 165 0108 9020     		movs	r0, #144
 166 010a 1E60     		str	r6, [r3]
 167 010c FFF7FEFF 		bl	_Znwj
 168 0110 2A49     		ldr	r1, .L21+24
 169 0112 0522     		movs	r2, #5
 170 0114 0123     		movs	r3, #1
 171 0116 0646     		mov	r6, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 4


 172 0118 FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 173 011c E36B     		ldr	r3, [r4, #60]
 174 011e 9020     		movs	r0, #144
 175 0120 1E60     		str	r6, [r3]
 176 0122 FFF7FEFF 		bl	_Znwj
 177 0126 2649     		ldr	r1, .L21+28
 178 0128 0622     		movs	r2, #6
 179 012a 0123     		movs	r3, #1
 180 012c 0646     		mov	r6, r0
 181 012e FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 182 0132 236C     		ldr	r3, [r4, #64]
 183 0134 9020     		movs	r0, #144
 184 0136 1E60     		str	r6, [r3]
 185 0138 FFF7FEFF 		bl	_Znwj
 186 013c 2149     		ldr	r1, .L21+32
 187 013e 0222     		movs	r2, #2
 188 0140 0123     		movs	r3, #1
 189 0142 0646     		mov	r6, r0
 190 0144 FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 191 0148 636C     		ldr	r3, [r4, #68]
 192 014a 9020     		movs	r0, #144
 193 014c 1E60     		str	r6, [r3]
 194 014e FFF7FEFF 		bl	_Znwj
 195 0152 2A46     		mov	r2, r5
 196 0154 2B46     		mov	r3, r5
 197 0156 1C49     		ldr	r1, .L21+36
 198 0158 0646     		mov	r6, r0
 199 015a FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 200 015e A36C     		ldr	r3, [r4, #72]
 201 0160 9020     		movs	r0, #144
 202 0162 1E60     		str	r6, [r3]
 203 0164 FFF7FEFF 		bl	_Znwj
 204 0168 2B46     		mov	r3, r5
 205 016a 1849     		ldr	r1, .L21+40
 206 016c 0622     		movs	r2, #6
 207 016e 0646     		mov	r6, r0
 208 0170 FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 209 0174 E36C     		ldr	r3, [r4, #76]
 210 0176 9020     		movs	r0, #144
 211 0178 1E60     		str	r6, [r3]
 212 017a FFF7FEFF 		bl	_Znwj
 213 017e 1449     		ldr	r1, .L21+44
 214 0180 0622     		movs	r2, #6
 215 0182 2B46     		mov	r3, r5
 216 0184 0646     		mov	r6, r0
 217 0186 FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 218 018a 236D     		ldr	r3, [r4, #80]
 219 018c 0820     		movs	r0, #8
 220 018e 1E60     		str	r6, [r3]
 221 0190 FFF7FEFF 		bl	_Znwj
 222 0194 0546     		mov	r5, r0
 223 0196 FFF7FEFF 		bl	_ZN10GCodeQueueC1Ev
 224 019a C4F80853 		str	r5, [r4, #776]
 225 019e 2046     		mov	r0, r4
 226 01a0 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 227              	.L22:
 228              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 5


 229              	.L21:
 230 01a4 01004842 		.word	1112014849
 231 01a8 08000000 		.word	_ZTV14FileGCodeInput+8
 232 01ac 08000000 		.word	_ZTV16StreamGCodeInput+8
 233 01b0 00000000 		.word	SerialUSB
 234 01b4 00000000 		.word	Serial
 235 01b8 1C000000 		.word	.LC1
 236 01bc 24000000 		.word	.LC2
 237 01c0 2C000000 		.word	.LC3
 238 01c4 34000000 		.word	.LC4
 239 01c8 3C000000 		.word	.LC5
 240 01cc 40000000 		.word	.LC6
 241 01d0 48000000 		.word	.LC7
 242              		.size	_ZN6GCodesC2EP8PlatformP9Webserver, .-_ZN6GCodesC2EP8PlatformP9Webserver
 243              		.global	_ZN6GCodesC1EP8PlatformP9Webserver
 244              		.thumb_set _ZN6GCodesC1EP8PlatformP9Webserver,_ZN6GCodesC2EP8PlatformP9Webserver
 245              		.section	.text._ZN6GCodes4ExitEv,"ax",%progbits
 246              		.align	2
 247              		.global	_ZN6GCodes4ExitEv
 248              		.thumb
 249              		.thumb_func
 250              		.type	_ZN6GCodes4ExitEv, %function
 251              	_ZN6GCodes4ExitEv:
 252              		@ args = 0, pretend = 0, frame = 0
 253              		@ frame_needed = 0, uses_anonymous_args = 0
 254 0000 10B5     		push	{r4, lr}
 255 0002 0221     		movs	r1, #2
 256 0004 0446     		mov	r4, r0
 257 0006 044A     		ldr	r2, .L24
 258 0008 0068     		ldr	r0, [r0]
 259 000a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 260 000e 0023     		movs	r3, #0
 261 0010 84F88430 		strb	r3, [r4, #132]
 262 0014 10BD     		pop	{r4, pc}
 263              	.L25:
 264 0016 00BF     		.align	2
 265              	.L24:
 266 0018 50000000 		.word	.LC8
 267              		.size	_ZN6GCodes4ExitEv, .-_ZN6GCodes4ExitEv
 268              		.section	.text._ZN6GCodes5ResetEv,"ax",%progbits
 269              		.align	2
 270              		.global	_ZN6GCodes5ResetEv
 271              		.thumb
 272              		.thumb_func
 273              		.type	_ZN6GCodes5ResetEv, %function
 274              	_ZN6GCodes5ResetEv:
 275              		@ args = 0, pretend = 0, frame = 0
 276              		@ frame_needed = 0, uses_anonymous_args = 0
 277 0000 836B     		ldr	r3, [r0, #56]
 278 0002 70B5     		push	{r4, r5, r6, lr}
 279 0004 0446     		mov	r4, r0
 280 0006 1868     		ldr	r0, [r3]
 281 0008 FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 282 000c E36B     		ldr	r3, [r4, #60]
 283 000e 0025     		movs	r5, #0
 284 0010 1868     		ldr	r0, [r3]
 285 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 6


 286 0016 236C     		ldr	r3, [r4, #64]
 287 0018 1868     		ldr	r0, [r3]
 288 001a FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 289 001e 636C     		ldr	r3, [r4, #68]
 290 0020 1868     		ldr	r0, [r3]
 291 0022 FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 292 0026 A36C     		ldr	r3, [r4, #72]
 293 0028 1868     		ldr	r0, [r3]
 294 002a FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 295 002e A36C     		ldr	r3, [r4, #72]
 296 0030 E26C     		ldr	r2, [r4, #76]
 297 0032 1B68     		ldr	r3, [r3]
 298 0034 0121     		movs	r1, #1
 299 0036 1068     		ldr	r0, [r2]
 300 0038 83F87D10 		strb	r1, [r3, #125]
 301 003c FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 302 0040 D4F83802 		ldr	r0, [r4, #568]
 303 0044 6565     		str	r5, [r4, #84]
 304 0046 18B1     		cbz	r0, .L27
 305 0048 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 306 004c C4F83852 		str	r5, [r4, #568]
 307              	.L27:
 308 0050 4148     		ldr	r0, .L46
 309 0052 4FF07E52 		mov	r2, #1065353216
 310 0056 0023     		movs	r3, #0
 311 0058 0021     		movs	r1, #0
 312 005a C4F86C02 		str	r0, [r4, #620]	@ float
 313 005e C4F87022 		str	r2, [r4, #624]	@ float
 314 0062 C4F87422 		str	r2, [r4, #628]	@ float
 315 0066 C4F87822 		str	r2, [r4, #632]	@ float
 316 006a C4F87C22 		str	r2, [r4, #636]	@ float
 317 006e C4F88022 		str	r2, [r4, #640]	@ float
 318 0072 C4F88422 		str	r2, [r4, #644]	@ float
 319 0076 C4F83C32 		str	r3, [r4, #572]
 320 007a C4F85432 		str	r3, [r4, #596]
 321 007e 84F85832 		strb	r3, [r4, #600]
 322 0082 84F85932 		strb	r3, [r4, #601]
 323              	.L29:
 324 0086 E218     		adds	r2, r4, r3
 325 0088 0433     		adds	r3, r3, #4
 326 008a 242B     		cmp	r3, #36
 327 008c C2F88810 		str	r1, [r2, #136]	@ float
 328 0090 F9D1     		bne	.L29
 329 0092 0123     		movs	r3, #1
 330 0094 C4F8CC30 		str	r3, [r4, #204]
 331 0098 0021     		movs	r1, #0
 332 009a 0023     		movs	r3, #0
 333 009c 04F59A72 		add	r2, r4, #308
 334              	.L31:
 335 00a0 D150     		str	r1, [r2, r3]	@ float
 336 00a2 0433     		adds	r3, r3, #4
 337 00a4 242B     		cmp	r3, #36
 338 00a6 FBD1     		bne	.L31
 339 00a8 2C4B     		ldr	r3, .L46+4
 340 00aa 0020     		movs	r0, #0
 341 00ac C4F85831 		str	r3, [r4, #344]	@ float
 342 00b0 04F5AE72 		add	r2, r4, #348
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 7


 343 00b4 0023     		movs	r3, #0
 344              	.L33:
 345 00b6 D050     		str	r0, [r2, r3]	@ float
 346 00b8 0433     		adds	r3, r3, #4
 347 00ba 242B     		cmp	r3, #36
 348 00bc 4FF00001 		mov	r1, #0
 349 00c0 F9D1     		bne	.L33
 350 00c2 264B     		ldr	r3, .L46+4
 351 00c4 0022     		movs	r2, #0
 352 00c6 C4F88031 		str	r3, [r4, #384]	@ float
 353 00ca C4F88812 		str	r1, [r4, #648]	@ float
 354 00ce C4F88C12 		str	r1, [r4, #652]	@ float
 355 00d2 C4F8DC20 		str	r2, [r4, #220]
 356 00d6 84F80821 		strb	r2, [r4, #264]
 357 00da A4F8D420 		strh	r2, [r4, #212]	@ movhi
 358 00de 84F8D620 		strb	r2, [r4, #214]
 359 00e2 84F8D720 		strb	r2, [r4, #215]
 360 00e6 2346     		mov	r3, r4
 361 00e8 0A25     		movs	r5, #10
 362              	.L35:
 363 00ea 013D     		subs	r5, r5, #1
 364 00ec A3F8C422 		strh	r2, [r3, #708]	@ movhi
 365 00f0 A3F8C222 		strh	r2, [r3, #706]	@ movhi
 366 00f4 83F8C622 		strb	r2, [r3, #710]
 367 00f8 4FF00006 		mov	r6, #0	@ movhi
 368 00fc 03F10603 		add	r3, r3, #6
 369 0100 F3D1     		bne	.L35
 370 0102 4FF0FF33 		mov	r3, #-1
 371 0106 0022     		movs	r2, #0
 372 0108 C4F8C830 		str	r3, [r4, #200]
 373 010c C4F8A422 		str	r2, [r4, #676]	@ float
 374 0110 C4F80053 		str	r5, [r4, #768]
 375 0114 84F8A862 		strb	r6, [r4, #680]
 376 0118 84F88560 		strb	r6, [r4, #133]
 377 011c 84F88760 		strb	r6, [r4, #135]
 378 0120 2068     		ldr	r0, [r4]
 379 0122 FFF7FEFF 		bl	_ZNK8Platform19GetAllEndstopStatesEv
 380 0126 84F80463 		strb	r6, [r4, #772]
 381 012a A4F8FE02 		strh	r0, [r4, #766]	@ movhi
 382 012e D4F80803 		ldr	r0, [r4, #776]
 383 0132 FFF7FEFF 		bl	_ZN10GCodeQueue5ClearEv
 384 0136 2B46     		mov	r3, r5
 385 0138 84F88063 		strb	r6, [r4, #896]
 386 013c 84F87F63 		strb	r6, [r4, #895]
 387 0140 84F87D63 		strb	r6, [r4, #893]
 388 0144 84F87E63 		strb	r6, [r4, #894]
 389 0148 2946     		mov	r1, r5
 390              	.L37:
 391 014a E218     		adds	r2, r4, r3
 392 014c 0433     		adds	r3, r3, #4
 393 014e 2C2B     		cmp	r3, #44
 394 0150 9165     		str	r1, [r2, #88]
 395 0152 FAD1     		bne	.L37
 396 0154 70BD     		pop	{r4, r5, r6, pc}
 397              	.L47:
 398 0156 00BF     		.align	2
 399              	.L46:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 8


 400 0158 8988883C 		.word	1015580809
 401 015c 01004842 		.word	1112014849
 402              		.size	_ZN6GCodes5ResetEv, .-_ZN6GCodes5ResetEv
 403              		.section	.text._ZN6GCodes4InitEv,"ax",%progbits
 404              		.align	2
 405              		.global	_ZN6GCodes4InitEv
 406              		.thumb
 407              		.thumb_func
 408              		.type	_ZN6GCodes4InitEv, %function
 409              	_ZN6GCodes4InitEv:
 410              		@ args = 0, pretend = 0, frame = 0
 411              		@ frame_needed = 0, uses_anonymous_args = 0
 412 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 413 0002 0446     		mov	r4, r0
 414 0004 FFF7FEFF 		bl	_ZN6GCodes5ResetEv
 415 0008 2C4B     		ldr	r3, .L52
 416 000a 4FF07E51 		mov	r1, #1065353216
 417 000e 0022     		movs	r2, #0
 418 0010 0320     		movs	r0, #3
 419 0012 0625     		movs	r5, #6
 420 0014 C4F83432 		str	r3, [r4, #564]	@ float
 421 0018 C4F88401 		str	r0, [r4, #388]
 422 001c C4F83012 		str	r1, [r4, #560]	@ float
 423 0020 C4F88851 		str	r5, [r4, #392]
 424 0024 C4F8D421 		str	r2, [r4, #468]	@ float
 425 0028 2346     		mov	r3, r4
 426              	.L50:
 427 002a 013D     		subs	r5, r5, #1
 428 002c C3F8A421 		str	r2, [r3, #420]	@ float
 429 0030 C3F8BC21 		str	r2, [r3, #444]	@ float
 430 0034 4FF00006 		mov	r6, #0
 431 0038 03F10403 		add	r3, r3, #4
 432 003c F5D1     		bne	.L50
 433 003e 204A     		ldr	r2, .L52+4
 434 0040 1023     		movs	r3, #16
 435 0042 0127     		movs	r7, #1
 436 0044 C4F84C22 		str	r2, [r4, #588]
 437 0048 84F85132 		strb	r3, [r4, #593]
 438 004c 84F85052 		strb	r5, [r4, #592]
 439 0050 84F82D52 		strb	r5, [r4, #557]
 440 0054 84F88650 		strb	r5, [r4, #134]
 441 0058 84F88470 		strb	r7, [r4, #132]
 442 005c 2068     		ldr	r0, [r4]
 443 005e FFF7FEFF 		bl	_ZN8Platform4TimeEv
 444 0062 184A     		ldr	r2, .L52+8
 445 0064 FF21     		movs	r1, #255
 446 0066 4FF07E53 		mov	r3, #1065353216
 447 006a 4FF0804C 		mov	ip, #1073741824
 448 006e 84F87C13 		strb	r1, [r4, #892]
 449 0072 C4F87403 		str	r0, [r4, #884]	@ float
 450 0076 84F85A72 		strb	r7, [r4, #602]
 451 007a C4F85C52 		str	r5, [r4, #604]
 452 007e C4F86062 		str	r6, [r4, #608]	@ float
 453 0082 C4F86462 		str	r6, [r4, #612]	@ float
 454 0086 C4F86862 		str	r6, [r4, #616]	@ float
 455 008a C4F8B062 		str	r6, [r4, #688]	@ float
 456 008e C4F8BC62 		str	r6, [r4, #700]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 9


 457 0092 84F8C052 		strb	r5, [r4, #704]
 458 0096 C4F88C31 		str	r3, [r4, #396]	@ float
 459 009a C4F89031 		str	r3, [r4, #400]	@ float
 460 009e C4F89431 		str	r3, [r4, #404]	@ float
 461 00a2 C4F89831 		str	r3, [r4, #408]	@ float
 462 00a6 C4F89C31 		str	r3, [r4, #412]	@ float
 463 00aa C4F8A031 		str	r3, [r4, #416]	@ float
 464 00ae C4F8ACC2 		str	ip, [r4, #684]	@ float
 465 00b2 C4F8B822 		str	r2, [r4, #696]	@ float
 466 00b6 C4F8B422 		str	r2, [r4, #692]	@ float
 467 00ba F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 468              	.L53:
 469              		.align	2
 470              	.L52:
 471 00bc CDCC4C3E 		.word	1045220557
 472 00c0 68000000 		.word	.LC9
 473 00c4 56558541 		.word	1099257174
 474              		.size	_ZN6GCodes4InitEv, .-_ZN6GCodes4InitEv
 475              		.section	.text._ZN6GCodes17ClearBabySteppingEv,"ax",%progbits
 476              		.align	2
 477              		.global	_ZN6GCodes17ClearBabySteppingEv
 478              		.thumb
 479              		.thumb_func
 480              		.type	_ZN6GCodes17ClearBabySteppingEv, %function
 481              	_ZN6GCodes17ClearBabySteppingEv:
 482              		@ args = 0, pretend = 0, frame = 0
 483              		@ frame_needed = 0, uses_anonymous_args = 0
 484              		@ link register save eliminated.
 485 0000 0023     		movs	r3, #0
 486 0002 C0F88832 		str	r3, [r0, #648]	@ float
 487 0006 C0F88C32 		str	r3, [r0, #652]	@ float
 488 000a 7047     		bx	lr
 489              		.size	_ZN6GCodes17ClearBabySteppingEv, .-_ZN6GCodes17ClearBabySteppingEv
 490              		.section	.text._ZNK6GCodes14DoingFileMacroEv,"ax",%progbits
 491              		.align	2
 492              		.global	_ZNK6GCodes14DoingFileMacroEv
 493              		.thumb
 494              		.thumb_func
 495              		.type	_ZNK6GCodes14DoingFileMacroEv, %function
 496              	_ZNK6GCodes14DoingFileMacroEv:
 497              		@ args = 0, pretend = 0, frame = 0
 498              		@ frame_needed = 0, uses_anonymous_args = 0
 499              		@ link register save eliminated.
 500 0000 036C     		ldr	r3, [r0, #64]
 501 0002 1868     		ldr	r0, [r3]
 502 0004 FFF7FEBF 		b	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 503              		.size	_ZNK6GCodes14DoingFileMacroEv, .-_ZNK6GCodes14DoingFileMacroEv
 504              		.section	.text._ZNK6GCodes21FractionOfFilePrintedEv,"ax",%progbits
 505              		.align	2
 506              		.global	_ZNK6GCodes21FractionOfFilePrintedEv
 507              		.thumb
 508              		.thumb_func
 509              		.type	_ZNK6GCodes21FractionOfFilePrintedEv, %function
 510              	_ZNK6GCodes21FractionOfFilePrintedEv:
 511              		@ args = 0, pretend = 0, frame = 0
 512              		@ frame_needed = 0, uses_anonymous_args = 0
 513 0000 08B5     		push	{r3, lr}
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 10


 514 0002 036C     		ldr	r3, [r0, #64]
 515 0004 1868     		ldr	r0, [r3]
 516 0006 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 517 000a 8068     		ldr	r0, [r0, #8]
 518 000c 18B1     		cbz	r0, .L57
 519 000e BDE80840 		pop	{r3, lr}
 520 0012 FFF7FEBF 		b	_ZNK9FileStore12FractionReadEv
 521              	.L57:
 522 0016 0148     		ldr	r0, .L58
 523 0018 08BD     		pop	{r3, pc}
 524              	.L59:
 525 001a 00BF     		.align	2
 526              	.L58:
 527 001c 000080BF 		.word	-1082130432
 528              		.size	_ZNK6GCodes21FractionOfFilePrintedEv, .-_ZNK6GCodes21FractionOfFilePrintedEv
 529              		.section	.text._ZNK6GCodes12IsDaemonBusyEv,"ax",%progbits
 530              		.align	2
 531              		.global	_ZNK6GCodes12IsDaemonBusyEv
 532              		.thumb
 533              		.thumb_func
 534              		.type	_ZNK6GCodes12IsDaemonBusyEv, %function
 535              	_ZNK6GCodes12IsDaemonBusyEv:
 536              		@ args = 0, pretend = 0, frame = 0
 537              		@ frame_needed = 0, uses_anonymous_args = 0
 538              		@ link register save eliminated.
 539 0000 C36C     		ldr	r3, [r0, #76]
 540 0002 1B68     		ldr	r3, [r3]
 541 0004 9B68     		ldr	r3, [r3, #8]
 542 0006 9868     		ldr	r0, [r3, #8]
 543 0008 0030     		adds	r0, r0, #0
 544 000a 18BF     		it	ne
 545 000c 0120     		movne	r0, #1
 546 000e 7047     		bx	lr
 547              		.size	_ZNK6GCodes12IsDaemonBusyEv, .-_ZNK6GCodes12IsDaemonBusyEv
 548              		.section	.text._ZN6GCodes21CopyConfigFinalValuesER11GCodeBuffer,"ax",%progbits
 549              		.align	2
 550              		.global	_ZN6GCodes21CopyConfigFinalValuesER11GCodeBuffer
 551              		.thumb
 552              		.thumb_func
 553              		.type	_ZN6GCodes21CopyConfigFinalValuesER11GCodeBuffer, %function
 554              	_ZN6GCodes21CopyConfigFinalValuesER11GCodeBuffer:
 555              		@ args = 0, pretend = 0, frame = 0
 556              		@ frame_needed = 0, uses_anonymous_args = 0
 557              		@ link register save eliminated.
 558 0000 F0B4     		push	{r4, r5, r6, r7}
 559 0002 0022     		movs	r2, #0
 560              	.L63:
 561 0004 8318     		adds	r3, r0, r2
 562 0006 DB69     		ldr	r3, [r3, #28]
 563 0008 8C68     		ldr	r4, [r1, #8]
 564 000a 9B68     		ldr	r3, [r3, #8]
 565 000c 677C     		ldrb	r7, [r4, #17]	@ zero_extendqisi2
 566 000e 5D7C     		ldrb	r5, [r3, #17]	@ zero_extendqisi2
 567 0010 6668     		ldr	r6, [r4, #4]	@ float
 568 0012 67F30005 		bfi	r5, r7, #0, #1
 569 0016 5D74     		strb	r5, [r3, #17]
 570 0018 657C     		ldrb	r5, [r4, #17]	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 11


 571 001a 5C7C     		ldrb	r4, [r3, #17]	@ zero_extendqisi2
 572 001c C5F34005 		ubfx	r5, r5, #1, #1
 573 0020 0432     		adds	r2, r2, #4
 574 0022 65F34104 		bfi	r4, r5, #1, #1
 575 0026 1C2A     		cmp	r2, #28
 576 0028 5E60     		str	r6, [r3, #4]	@ float
 577 002a 5C74     		strb	r4, [r3, #17]
 578 002c EAD1     		bne	.L63
 579 002e F0BC     		pop	{r4, r5, r6, r7}
 580 0030 7047     		bx	lr
 581              		.size	_ZN6GCodes21CopyConfigFinalValuesER11GCodeBuffer, .-_ZN6GCodes21CopyConfigFinalValuesER11GCo
 582 0032 00BF     		.section	.text._ZN6GCodes15DoEmergencyStopEv,"ax",%progbits
 583              		.align	2
 584              		.global	_ZN6GCodes15DoEmergencyStopEv
 585              		.thumb
 586              		.thumb_func
 587              		.type	_ZN6GCodes15DoEmergencyStopEv, %function
 588              	_ZN6GCodes15DoEmergencyStopEv:
 589              		@ args = 0, pretend = 0, frame = 0
 590              		@ frame_needed = 0, uses_anonymous_args = 0
 591 0000 10B5     		push	{r4, lr}
 592 0002 0446     		mov	r4, r0
 593 0004 0648     		ldr	r0, .L66
 594 0006 FFF7FEFF 		bl	_ZN6RepRap13EmergencyStopEv
 595 000a 2046     		mov	r0, r4
 596 000c FFF7FEFF 		bl	_ZN6GCodes5ResetEv
 597 0010 2068     		ldr	r0, [r4]
 598 0012 0621     		movs	r1, #6
 599 0014 034A     		ldr	r2, .L66+4
 600 0016 BDE81040 		pop	{r4, lr}
 601 001a FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 602              	.L67:
 603 001e 00BF     		.align	2
 604              	.L66:
 605 0020 00000000 		.word	reprap
 606 0024 7C000000 		.word	.LC10
 607              		.size	_ZN6GCodes15DoEmergencyStopEv, .-_ZN6GCodes15DoEmergencyStopEv
 608              		.global	__aeabi_fadd
 609              		.global	__aeabi_fsub
 610              		.section	.text._ZN6GCodes7DoPauseER11GCodeBuffer,"ax",%progbits
 611              		.align	2
 612              		.global	_ZN6GCodes7DoPauseER11GCodeBuffer
 613              		.thumb
 614              		.thumb_func
 615              		.type	_ZN6GCodes7DoPauseER11GCodeBuffer, %function
 616              	_ZN6GCodes7DoPauseER11GCodeBuffer:
 617              		@ args = 0, pretend = 0, frame = 0
 618              		@ frame_needed = 0, uses_anonymous_args = 0
 619 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 620 0004 036C     		ldr	r3, [r0, #64]
 621 0006 0546     		mov	r5, r0
 622 0008 1C68     		ldr	r4, [r3]
 623 000a 0F46     		mov	r7, r1
 624 000c 8C42     		cmp	r4, r1
 625 000e 7BD0     		beq	.L97
 626 0010 A368     		ldr	r3, [r4, #8]
 627 0012 DFF84881 		ldr	r8, .L100+4
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 12


 628 0016 5B68     		ldr	r3, [r3, #4]	@ float
 629 0018 D8F80840 		ldr	r4, [r8, #8]
 630 001c C0F85831 		str	r3, [r0, #344]	@ float
 631 0020 4046     		mov	r0, r8
 632 0022 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 633 0026 05F59A71 		add	r1, r5, #308
 634 002a 0346     		mov	r3, r0
 635 002c 05F5AC72 		add	r2, r5, #344
 636 0030 2046     		mov	r0, r4
 637 0032 FFF7FEFF 		bl	_ZN4Move10PausePrintEPfRfm
 638 0036 2B6C     		ldr	r3, [r5, #64]
 639 0038 B0F1FF3F 		cmp	r0, #-1
 640 003c 1B68     		ldr	r3, [r3]
 641 003e 8146     		mov	r9, r0
 642 0040 9B68     		ldr	r3, [r3, #8]
 643 0042 04D0     		beq	.L77
 644 0044 9868     		ldr	r0, [r3, #8]
 645 0046 10B1     		cbz	r0, .L77
 646 0048 4946     		mov	r1, r9
 647 004a FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 648              	.L77:
 649 004e 2869     		ldr	r0, [r5, #16]
 650 0050 0368     		ldr	r3, [r0]
 651 0052 1B68     		ldr	r3, [r3]
 652 0054 9847     		blx	r3
 653 0056 D5F80803 		ldr	r0, [r5, #776]
 654 005a FFF7FEFF 		bl	_ZN10GCodeQueue12PurgeEntriesEv
 655 005e D5F8DC30 		ldr	r3, [r5, #220]
 656 0062 7BBB     		cbnz	r3, .L79
 657 0064 D5F88421 		ldr	r2, [r5, #388]
 658              	.L80:
 659 0068 082A     		cmp	r2, #8
 660 006a 13D8     		bhi	.L86
 661 006c 4FEA820A 		lsl	r10, r2, #2
 662 0070 05F1240B 		add	fp, r5, #36
 663 0074 CAEB0B0B 		rsb	fp, r10, fp
 664 0078 2C46     		mov	r4, r5
 665              	.L87:
 666 007a 04EB0A06 		add	r6, r4, r10
 667 007e D4F8A401 		ldr	r0, [r4, #420]	@ float
 668 0082 D6F83411 		ldr	r1, [r6, #308]	@ float
 669 0086 FFF7FEFF 		bl	__aeabi_fsub
 670 008a 0434     		adds	r4, r4, #4
 671 008c 5C45     		cmp	r4, fp
 672 008e C6F83401 		str	r0, [r6, #308]	@ float
 673 0092 F2D1     		bne	.L87
 674              	.L86:
 675 0094 B8F84030 		ldrh	r3, [r8, #64]
 676 0098 1B07     		lsls	r3, r3, #28
 677 009a 54D4     		bmi	.L98
 678              	.L75:
 679 009c 0021     		movs	r1, #0
 680 009e 2868     		ldr	r0, [r5]
 681 00a0 FFF7FEFF 		bl	_ZNK8Platform11GetFanValueEj
 682 00a4 0121     		movs	r1, #1
 683 00a6 C5F86002 		str	r0, [r5, #608]	@ float
 684 00aa 2868     		ldr	r0, [r5]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 13


 685 00ac FFF7FEFF 		bl	_ZNK8Platform11GetFanValueEj
 686 00b0 C5F86402 		str	r0, [r5, #612]	@ float
 687 00b4 BA68     		ldr	r2, [r7, #8]
 688 00b6 0C21     		movs	r1, #12
 689 00b8 0123     		movs	r3, #1
 690 00ba 1174     		strb	r1, [r2, #16]
 691 00bc 85F88530 		strb	r3, [r5, #133]
 692 00c0 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 693              	.L79:
 694 00c4 D5F884A1 		ldr	r10, [r5, #388]
 695 00c8 BAF1080F 		cmp	r10, #8
 696 00cc 0FD8     		bhi	.L82
 697 00ce 0AF12104 		add	r4, r10, #33
 698 00d2 05EB8404 		add	r4, r5, r4, lsl #2
 699 00d6 5646     		mov	r6, r10
 700              	.L83:
 701 00d8 D4F8B000 		ldr	r0, [r4, #176]	@ float
 702 00dc 54F8041F 		ldr	r1, [r4, #4]!	@ float
 703 00e0 FFF7FEFF 		bl	__aeabi_fadd
 704 00e4 0136     		adds	r6, r6, #1
 705 00e6 092E     		cmp	r6, #9
 706 00e8 C4F8AC00 		str	r0, [r4, #172]	@ float
 707 00ec F4D1     		bne	.L83
 708              	.L82:
 709 00ee 0023     		movs	r3, #0
 710 00f0 5246     		mov	r2, r10
 711 00f2 C5F8DC30 		str	r3, [r5, #220]
 712 00f6 85F80831 		strb	r3, [r5, #264]
 713 00fa A5F8D430 		strh	r3, [r5, #212]	@ movhi
 714 00fe 85F8D630 		strb	r3, [r5, #214]
 715 0102 85F8D730 		strb	r3, [r5, #215]
 716 0106 AFE7     		b	.L80
 717              	.L97:
 718 0108 D0F88421 		ldr	r2, [r0, #388]
 719 010c 12B3     		cbz	r2, .L99
 720 010e 9600     		lsls	r6, r2, #2
 721 0110 3044     		add	r0, r0, r6
 722 0112 2B46     		mov	r3, r5
 723              	.L73:
 724 0114 D3F88810 		ldr	r1, [r3, #136]	@ float
 725 0118 0433     		adds	r3, r3, #4
 726 011a C3F83011 		str	r1, [r3, #304]	@ float
 727 011e 8342     		cmp	r3, r0
 728 0120 F8D1     		bne	.L73
 729 0122 082A     		cmp	r2, #8
 730 0124 0AD8     		bhi	.L76
 731              	.L74:
 732 0126 2B46     		mov	r3, r5
 733              	.L71:
 734 0128 D3F8A401 		ldr	r0, [r3, #420]	@ float
 735 012c 0132     		adds	r2, r2, #1
 736 012e 9919     		adds	r1, r3, r6
 737 0130 082A     		cmp	r2, #8
 738 0132 C1F83401 		str	r0, [r1, #308]	@ float
 739 0136 03F10403 		add	r3, r3, #4
 740 013a F5D9     		bls	.L71
 741              	.L76:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 14


 742 013c A368     		ldr	r3, [r4, #8]
 743 013e 5B68     		ldr	r3, [r3, #4]	@ float
 744 0140 C5F85831 		str	r3, [r5, #344]	@ float
 745 0144 AAE7     		b	.L75
 746              	.L98:
 747 0146 4B46     		mov	r3, r9
 748 0148 2868     		ldr	r0, [r5]
 749 014a 0621     		movs	r1, #6
 750 014c 024A     		ldr	r2, .L100
 751 014e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 752 0152 A3E7     		b	.L75
 753              	.L99:
 754 0154 1646     		mov	r6, r2
 755 0156 E6E7     		b	.L74
 756              	.L101:
 757              		.align	2
 758              	.L100:
 759 0158 B0000000 		.word	.LC11
 760 015c 00000000 		.word	reprap
 761              		.size	_ZN6GCodes7DoPauseER11GCodeBuffer, .-_ZN6GCodes7DoPauseER11GCodeBuffer
 762              		.section	.text._ZN6GCodes11DiagnosticsE11MessageType,"ax",%progbits
 763              		.align	2
 764              		.global	_ZN6GCodes11DiagnosticsE11MessageType
 765              		.thumb
 766              		.thumb_func
 767              		.type	_ZN6GCodes11DiagnosticsE11MessageType, %function
 768              	_ZN6GCodes11DiagnosticsE11MessageType:
 769              		@ args = 0, pretend = 0, frame = 0
 770              		@ frame_needed = 0, uses_anonymous_args = 0
 771 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 772 0002 1A4A     		ldr	r2, .L107
 773 0004 0546     		mov	r5, r0
 774 0006 83B0     		sub	sp, sp, #12
 775 0008 0E46     		mov	r6, r1
 776 000a 0068     		ldr	r0, [r0]
 777 000c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 778 0010 3146     		mov	r1, r6
 779 0012 174A     		ldr	r2, .L107+4
 780 0014 2868     		ldr	r0, [r5]
 781 0016 D5F8DC30 		ldr	r3, [r5, #220]
 782 001a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 783 001e 154B     		ldr	r3, .L107+8
 784 0020 2C68     		ldr	r4, [r5]
 785 0022 1F68     		ldr	r7, [r3]
 786 0024 FFF7FEFF 		bl	_ZN17GCodeMachineState11GetNumInUseEv
 787 0028 3B46     		mov	r3, r7
 788 002a 0090     		str	r0, [sp]
 789 002c 3146     		mov	r1, r6
 790 002e 2046     		mov	r0, r4
 791 0030 114A     		ldr	r2, .L107+12
 792 0032 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 793 0036 AB6D     		ldr	r3, [r5, #88]
 794 0038 2868     		ldr	r0, [r5]
 795 003a ABB1     		cbz	r3, .L106
 796 003c 1B6F     		ldr	r3, [r3, #112]
 797              	.L103:
 798 003e 3146     		mov	r1, r6
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 15


 799 0040 0E4A     		ldr	r2, .L107+16
 800 0042 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 801 0046 0024     		movs	r4, #0
 802              	.L105:
 803 0048 2B19     		adds	r3, r5, r4
 804 004a D869     		ldr	r0, [r3, #28]
 805 004c 0434     		adds	r4, r4, #4
 806 004e 3146     		mov	r1, r6
 807 0050 FFF7FEFF 		bl	_ZN11GCodeBuffer11DiagnosticsE11MessageType
 808 0054 1C2C     		cmp	r4, #28
 809 0056 F7D1     		bne	.L105
 810 0058 D5F80803 		ldr	r0, [r5, #776]
 811 005c 3146     		mov	r1, r6
 812 005e 03B0     		add	sp, sp, #12
 813              		@ sp needed
 814 0060 BDE8F040 		pop	{r4, r5, r6, r7, lr}
 815 0064 FFF7FEBF 		b	_ZN10GCodeQueue11DiagnosticsE11MessageType
 816              	.L106:
 817 0068 054B     		ldr	r3, .L107+20
 818 006a E8E7     		b	.L103
 819              	.L108:
 820              		.align	2
 821              	.L107:
 822 006c D8000000 		.word	.LC13
 823 0070 E8000000 		.word	.LC14
 824 0074 00000000 		.word	_ZN17GCodeMachineState12numAllocatedE
 825 0078 FC000000 		.word	.LC15
 826 007c 24010000 		.word	.LC16
 827 0080 D0000000 		.word	.LC12
 828              		.size	_ZN6GCodes11DiagnosticsE11MessageType, .-_ZN6GCodes11DiagnosticsE11MessageType
 829              		.section	.text._ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer,"ax",%progbits
 830              		.align	2
 831              		.global	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 832              		.thumb
 833              		.thumb_func
 834              		.type	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer, %function
 835              	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer:
 836              		@ args = 0, pretend = 0, frame = 0
 837              		@ frame_needed = 0, uses_anonymous_args = 0
 838 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 839 0002 836D     		ldr	r3, [r0, #88]
 840 0004 0446     		mov	r4, r0
 841 0006 9942     		cmp	r1, r3
 842 0008 08D0     		beq	.L110
 843 000a 0BB1     		cbz	r3, .L111
 844              	.L115:
 845 000c 0020     		movs	r0, #0
 846 000e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 847              	.L111:
 848 0010 8165     		str	r1, [r0, #88]
 849 0012 8B68     		ldr	r3, [r1, #8]
 850 0014 DA68     		ldr	r2, [r3, #12]
 851 0016 42F00102 		orr	r2, r2, #1
 852 001a DA60     		str	r2, [r3, #12]
 853              	.L110:
 854 001c D4F8DC00 		ldr	r0, [r4, #220]
 855 0020 0028     		cmp	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 16


 856 0022 F3D1     		bne	.L115
 857 0024 0F4B     		ldr	r3, .L121
 858 0026 9D68     		ldr	r5, [r3, #8]
 859 0028 A968     		ldr	r1, [r5, #8]
 860 002a 6A68     		ldr	r2, [r5, #4]
 861 002c 9142     		cmp	r1, r2
 862 002e 00D0     		beq	.L120
 863              	.L118:
 864 0030 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 865              	.L120:
 866 0032 2E68     		ldr	r6, [r5]
 867 0034 06B1     		cbz	r6, .L114
 868 0036 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 869              	.L114:
 870 0038 1846     		mov	r0, r3
 871 003a FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 872 003e 04F18807 		add	r7, r4, #136
 873 0042 0346     		mov	r3, r0
 874 0044 3946     		mov	r1, r7
 875 0046 2846     		mov	r0, r5
 876 0048 3246     		mov	r2, r6
 877 004a FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhm
 878 004e D4F88421 		ldr	r2, [r4, #388]
 879 0052 3946     		mov	r1, r7
 880 0054 9200     		lsls	r2, r2, #2
 881 0056 04F1AC00 		add	r0, r4, #172
 882 005a FFF7FEFF 		bl	memcpy
 883 005e 0120     		movs	r0, #1
 884 0060 E6E7     		b	.L118
 885              	.L122:
 886 0062 00BF     		.align	2
 887              	.L121:
 888 0064 00000000 		.word	reprap
 889              		.size	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer, .-_ZN6GCodes32LockMovementAndW
 890              		.section	.text._ZN6GCodes4PushER11GCodeBuffer,"ax",%progbits
 891              		.align	2
 892              		.global	_ZN6GCodes4PushER11GCodeBuffer
 893              		.thumb
 894              		.thumb_func
 895              		.type	_ZN6GCodes4PushER11GCodeBuffer, %function
 896              	_ZN6GCodes4PushER11GCodeBuffer:
 897              		@ args = 0, pretend = 0, frame = 0
 898              		@ frame_needed = 0, uses_anonymous_args = 0
 899 0000 38B5     		push	{r3, r4, r5, lr}
 900 0002 0546     		mov	r5, r0
 901 0004 0846     		mov	r0, r1
 902 0006 FFF7FEFF 		bl	_ZN11GCodeBuffer9PushStateEv
 903 000a 0446     		mov	r4, r0
 904 000c 10B9     		cbnz	r0, .L124
 905 000e 2846     		mov	r0, r5
 906 0010 FFF7FEFF 		bl	_ZN6GCodes4PushER11GCodeBuffer.part.43
 907              	.L124:
 908 0014 2046     		mov	r0, r4
 909 0016 38BD     		pop	{r3, r4, r5, pc}
 910              		.size	_ZN6GCodes4PushER11GCodeBuffer, .-_ZN6GCodes4PushER11GCodeBuffer
 911              		.section	.text._ZN6GCodes3PopER11GCodeBuffer,"ax",%progbits
 912              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 17


 913              		.global	_ZN6GCodes3PopER11GCodeBuffer
 914              		.thumb
 915              		.thumb_func
 916              		.type	_ZN6GCodes3PopER11GCodeBuffer, %function
 917              	_ZN6GCodes3PopER11GCodeBuffer:
 918              		@ args = 0, pretend = 0, frame = 0
 919              		@ frame_needed = 0, uses_anonymous_args = 0
 920 0000 10B5     		push	{r4, lr}
 921 0002 0446     		mov	r4, r0
 922 0004 0846     		mov	r0, r1
 923 0006 FFF7FEFF 		bl	_ZN11GCodeBuffer8PopStateEv
 924 000a 00B1     		cbz	r0, .L127
 925 000c 10BD     		pop	{r4, pc}
 926              	.L127:
 927 000e 2068     		ldr	r0, [r4]
 928 0010 0621     		movs	r1, #6
 929 0012 024A     		ldr	r2, .L128
 930 0014 BDE81040 		pop	{r4, lr}
 931 0018 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 932              	.L129:
 933              		.align	2
 934              	.L128:
 935 001c 40010000 		.word	.LC17
 936              		.size	_ZN6GCodes3PopER11GCodeBuffer, .-_ZN6GCodes3PopER11GCodeBuffer
 937              		.global	__aeabi_fmul
 938              		.section	.text._ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBufferi,"ax",%progbits
 939              		.align	2
 940              		.global	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBufferi
 941              		.thumb
 942              		.thumb_func
 943              		.type	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBufferi, %function
 944              	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBufferi:
 945              		@ args = 0, pretend = 0, frame = 48
 946              		@ frame_needed = 0, uses_anonymous_args = 0
 947 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 948 0004 D0F88431 		ldr	r3, [r0, #388]
 949 0008 8DB0     		sub	sp, sp, #52
 950 000a 082B     		cmp	r3, #8
 951 000c 0446     		mov	r4, r0
 952 000e 0D46     		mov	r5, r1
 953 0010 1746     		mov	r7, r2
 954 0012 0CD8     		bhi	.L134
 955 0014 9800     		lsls	r0, r3, #2
 956 0016 04EB8301 		add	r1, r4, r3, lsl #2
 957 001a 0026     		movs	r6, #0
 958 001c C0F12400 		rsb	r0, r0, #36
 959 0020 0023     		movs	r3, #0
 960              	.L135:
 961 0022 CA18     		adds	r2, r1, r3
 962 0024 0433     		adds	r3, r3, #4
 963 0026 8342     		cmp	r3, r0
 964 0028 C2F88860 		str	r6, [r2, #136]	@ float
 965 002c F9D1     		bne	.L135
 966              	.L134:
 967 002e 002F     		cmp	r7, #0
 968 0030 06DB     		blt	.L156
 969 0032 2846     		mov	r0, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 18


 970 0034 4621     		movs	r1, #70
 971 0036 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 972 003a 0028     		cmp	r0, #0
 973 003c 40F0CB80 		bne	.L136
 974              	.L156:
 975 0040 AB68     		ldr	r3, [r5, #8]
 976 0042 2846     		mov	r0, r5
 977 0044 5B68     		ldr	r3, [r3, #4]	@ float
 978 0046 4521     		movs	r1, #69
 979 0048 C4F8C430 		str	r3, [r4, #196]	@ float
 980 004c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 981 0050 0028     		cmp	r0, #0
 982 0052 00F0BA80 		beq	.L164
 983 0056 774B     		ldr	r3, .L171
 984 0058 5E6A     		ldr	r6, [r3, #36]
 985 005a 002E     		cmp	r6, #0
 986 005c 00F0E280 		beq	.L165
 987 0060 D6F838B0 		ldr	fp, [r6, #56]
 988 0064 BBF1000F 		cmp	fp, #0
 989 0068 00F0AF80 		beq	.L164
 990 006c 96F8B890 		ldrb	r9, [r6, #184]	@ zero_extendqisi2
 991 0070 B9F1000F 		cmp	r9, #0
 992 0074 55D1     		bne	.L166
 993 0076 4B46     		mov	r3, r9
 994 0078 06A9     		add	r1, sp, #24
 995 007a 2846     		mov	r0, r5
 996 007c 05AA     		add	r2, sp, #20
 997 007e CDF814B0 		str	fp, [sp, #20]
 998 0082 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 999 0086 059B     		ldr	r3, [sp, #20]
 1000 0088 5B45     		cmp	r3, fp
 1001 008a 40F0BC80 		bne	.L167
 1002 008e D4F83022 		ldr	r2, [r4, #560]	@ float
 1003 0092 9B00     		lsls	r3, r3, #2
 1004 0094 0292     		str	r2, [sp, #8]	@ float
 1005 0096 0193     		str	r3, [sp, #4]
 1006 0098 CB46     		mov	fp, r9
 1007 009a 28E0     		b	.L153
 1008              	.L169:
 1009 009c D1F8A4A1 		ldr	r10, [r1, #420]	@ float
 1010              	.L151:
 1011 00a0 5146     		mov	r1, r10
 1012 00a2 4846     		mov	r0, r9
 1013 00a4 FFF7FEFF 		bl	__aeabi_fadd
 1014 00a8 04EB880A 		add	r10, r4, r8, lsl #2
 1015 00ac CAF8A401 		str	r0, [r10, #420]	@ float
 1016 00b0 4946     		mov	r1, r9
 1017 00b2 DAF8BC01 		ldr	r0, [r10, #444]	@ float
 1018 00b6 FFF7FEFF 		bl	__aeabi_fadd
 1019 00ba CAF8BC01 		str	r0, [r10, #444]	@ float
 1020 00be D4F8D401 		ldr	r0, [r4, #468]	@ float
 1021 00c2 4946     		mov	r1, r9
 1022 00c4 FFF7FEFF 		bl	__aeabi_fadd
 1023 00c8 D4F88421 		ldr	r2, [r4, #388]
 1024 00cc C4F8D401 		str	r0, [r4, #468]	@ float
 1025 00d0 DAF87012 		ldr	r1, [r10, #624]	@ float
 1026 00d4 4846     		mov	r0, r9
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 19


 1027 00d6 9044     		add	r8, r8, r2
 1028 00d8 FFF7FEFF 		bl	__aeabi_fmul
 1029 00dc 08F12208 		add	r8, r8, #34
 1030 00e0 44F82800 		str	r0, [r4, r8, lsl #2]	@ float
 1031              	.L149:
 1032 00e4 019A     		ldr	r2, [sp, #4]
 1033 00e6 0BF1040B 		add	fp, fp, #4
 1034 00ea 9345     		cmp	fp, r2
 1035 00ec 6DD0     		beq	.L164
 1036              	.L153:
 1037 00ee 06AB     		add	r3, sp, #24
 1038 00f0 06EB0B02 		add	r2, r6, fp
 1039 00f4 0298     		ldr	r0, [sp, #8]	@ float
 1040 00f6 53F80B10 		ldr	r1, [r3, fp]	@ float
 1041 00fa D2F80880 		ldr	r8, [r2, #8]
 1042 00fe FFF7FEFF 		bl	__aeabi_fmul
 1043 0102 7A1C     		adds	r2, r7, #1
 1044 0104 8146     		mov	r9, r0
 1045 0106 79D0     		beq	.L168
 1046 0108 AA68     		ldr	r2, [r5, #8]
 1047 010a 04EB8801 		add	r1, r4, r8, lsl #2
 1048 010e 527C     		ldrb	r2, [r2, #17]	@ zero_extendqisi2
 1049 0110 D307     		lsls	r3, r2, #31
 1050 0112 C3D4     		bmi	.L169
 1051 0114 D1F8A4A1 		ldr	r10, [r1, #420]	@ float
 1052 0118 5146     		mov	r1, r10
 1053 011a FFF7FEFF 		bl	__aeabi_fsub
 1054 011e 8146     		mov	r9, r0
 1055 0120 BEE7     		b	.L151
 1056              	.L166:
 1057 0122 2846     		mov	r0, r5
 1058 0124 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1059 0128 D4F83012 		ldr	r1, [r4, #560]	@ float
 1060 012c FFF7FEFF 		bl	__aeabi_fmul
 1061 0130 0137     		adds	r7, r7, #1
 1062 0132 8046     		mov	r8, r0
 1063 0134 7BD0     		beq	.L170
 1064 0136 AB68     		ldr	r3, [r5, #8]
 1065 0138 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 1066 013a D907     		lsls	r1, r3, #31
 1067 013c 6BD5     		bpl	.L144
 1068 013e 3068     		ldr	r0, [r6]	@ float
 1069 0140 4146     		mov	r1, r8
 1070 0142 FFF7FEFF 		bl	__aeabi_fadd
 1071 0146 3060     		str	r0, [r6]	@ float
 1072              	.L145:
 1073 0148 D4F88421 		ldr	r2, [r4, #388]
 1074 014c 4FEA8B0B 		lsl	fp, fp, #2
 1075 0150 06F12003 		add	r3, r6, #32
 1076 0154 D4F8D471 		ldr	r7, [r4, #468]	@ float
 1077 0158 CDF804B0 		str	fp, [sp, #4]
 1078 015c 0293     		str	r3, [sp, #8]
 1079 015e 0392     		str	r2, [sp, #12]
 1080 0160 4FF00009 		mov	r9, #0
 1081              	.L157:
 1082 0164 029A     		ldr	r2, [sp, #8]
 1083 0166 4046     		mov	r0, r8
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 20


 1084 0168 52F80910 		ldr	r1, [r2, r9]	@ float
 1085 016c FFF7FEFF 		bl	__aeabi_fmul
 1086 0170 06EB0903 		add	r3, r6, r9
 1087 0174 D3F808B0 		ldr	fp, [r3, #8]
 1088 0178 0546     		mov	r5, r0
 1089 017a 04EB8B0A 		add	r10, r4, fp, lsl #2
 1090 017e 0146     		mov	r1, r0
 1091 0180 DAF8A401 		ldr	r0, [r10, #420]	@ float
 1092 0184 FFF7FEFF 		bl	__aeabi_fadd
 1093 0188 2946     		mov	r1, r5
 1094 018a CAF8A401 		str	r0, [r10, #420]	@ float
 1095 018e DAF8BC01 		ldr	r0, [r10, #444]	@ float
 1096 0192 FFF7FEFF 		bl	__aeabi_fadd
 1097 0196 2946     		mov	r1, r5
 1098 0198 CAF8BC01 		str	r0, [r10, #444]	@ float
 1099 019c 3846     		mov	r0, r7
 1100 019e FFF7FEFF 		bl	__aeabi_fadd
 1101 01a2 DDF80CC0 		ldr	ip, [sp, #12]
 1102 01a6 C4F8D401 		str	r0, [r4, #468]	@ float
 1103 01aa DC44     		add	ip, ip, fp
 1104 01ac 2946     		mov	r1, r5
 1105 01ae 0746     		mov	r7, r0
 1106 01b0 DAF87002 		ldr	r0, [r10, #624]	@ float
 1107 01b4 0CF12205 		add	r5, ip, #34
 1108 01b8 FFF7FEFF 		bl	__aeabi_fmul
 1109 01bc 019B     		ldr	r3, [sp, #4]
 1110 01be 09F10409 		add	r9, r9, #4
 1111 01c2 9945     		cmp	r9, r3
 1112 01c4 44F82500 		str	r0, [r4, r5, lsl #2]	@ float
 1113 01c8 CCD1     		bne	.L157
 1114              	.L164:
 1115 01ca 4FF00109 		mov	r9, #1
 1116              	.L162:
 1117 01ce 4846     		mov	r0, r9
 1118 01d0 0DB0     		add	sp, sp, #52
 1119              		@ sp needed
 1120 01d2 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1121              	.L136:
 1122 01d6 2846     		mov	r0, r5
 1123 01d8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1124 01dc D4F83012 		ldr	r1, [r4, #560]	@ float
 1125 01e0 FFF7FEFF 		bl	__aeabi_fmul
 1126 01e4 AE68     		ldr	r6, [r5, #8]
 1127 01e6 27B1     		cbz	r7, .L154
 1128 01e8 1349     		ldr	r1, .L171+4
 1129 01ea FFF7FEFF 		bl	__aeabi_fmul
 1130              	.L137:
 1131 01ee 7060     		str	r0, [r6, #4]	@ float
 1132 01f0 26E7     		b	.L156
 1133              	.L154:
 1134 01f2 D4F86C12 		ldr	r1, [r4, #620]	@ float
 1135 01f6 FFF7FEFF 		bl	__aeabi_fmul
 1136 01fa F8E7     		b	.L137
 1137              	.L168:
 1138 01fc 04EB8808 		add	r8, r4, r8, lsl #2
 1139 0200 C8F8A401 		str	r0, [r8, #420]	@ float
 1140 0204 6EE7     		b	.L149
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 21


 1141              	.L167:
 1142 0206 2068     		ldr	r0, [r4]
 1143 0208 05F10C03 		add	r3, r5, #12
 1144 020c 0621     		movs	r1, #6
 1145 020e 0B4A     		ldr	r2, .L171+8
 1146 0210 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1147 0214 DBE7     		b	.L162
 1148              	.L144:
 1149 0216 3168     		ldr	r1, [r6]	@ float
 1150 0218 FFF7FEFF 		bl	__aeabi_fsub
 1151 021c C6F80080 		str	r8, [r6]	@ float
 1152 0220 8046     		mov	r8, r0
 1153 0222 91E7     		b	.L145
 1154              	.L165:
 1155 0224 0123     		movs	r3, #1
 1156 0226 B146     		mov	r9, r6
 1157 0228 84F87F33 		strb	r3, [r4, #895]
 1158 022c CFE7     		b	.L162
 1159              	.L170:
 1160 022e 3060     		str	r0, [r6]	@ float
 1161 0230 CDE7     		b	.L162
 1162              	.L172:
 1163 0232 00BF     		.align	2
 1164              	.L171:
 1165 0234 00000000 		.word	reprap
 1166 0238 8988883C 		.word	1015580809
 1167 023c 5C010000 		.word	.LC18
 1168              		.size	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBufferi, .-_ZN6GCodes33LoadExtrusionAn
 1169              		.global	__aeabi_fcmplt
 1170              		.global	__aeabi_fcmpgt
 1171              		.global	__aeabi_fdiv
 1172              		.global	__aeabi_fcmpun
 1173              		.section	.text._ZN6GCodes23LoadMoveBufferFromGCodeER11GCodeBufferi,"ax",%progbits
 1174              		.align	2
 1175              		.global	_ZN6GCodes23LoadMoveBufferFromGCodeER11GCodeBufferi
 1176              		.thumb
 1177              		.thumb_func
 1178              		.type	_ZN6GCodes23LoadMoveBufferFromGCodeER11GCodeBufferi, %function
 1179              	_ZN6GCodes23LoadMoveBufferFromGCodeER11GCodeBufferi:
 1180              		@ args = 0, pretend = 0, frame = 32
 1181              		@ frame_needed = 0, uses_anonymous_args = 0
 1182 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1183 0004 89B0     		sub	sp, sp, #36
 1184 0006 0292     		str	r2, [sp, #8]
 1185 0008 AF4A     		ldr	r2, .L270
 1186 000a D0F88451 		ldr	r5, [r0, #388]
 1187 000e 526A     		ldr	r2, [r2, #36]
 1188 0010 0746     		mov	r7, r0
 1189 0012 8846     		mov	r8, r1
 1190 0014 0492     		str	r2, [sp, #16]
 1191 0016 002D     		cmp	r5, #0
 1192 0018 00F05A81 		beq	.L210
 1193 001c 0123     		movs	r3, #1
 1194 001e 0393     		str	r3, [sp, #12]
 1195 0020 9346     		mov	fp, r2
 1196 0022 0646     		mov	r6, r0
 1197 0024 0024     		movs	r4, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 22


 1198 0026 09E0     		b	.L192
 1199              	.L258:
 1200 0028 D7F88421 		ldr	r2, [r7, #388]
 1201              	.L176:
 1202 002c 0134     		adds	r4, r4, #1
 1203 002e 9442     		cmp	r4, r2
 1204 0030 06F10406 		add	r6, r6, #4
 1205 0034 0BF1040B 		add	fp, fp, #4
 1206 0038 80F09080 		bcs	.L259
 1207              	.L192:
 1208 003c A34A     		ldr	r2, .L270+4
 1209 003e 4046     		mov	r0, r8
 1210 0040 115D     		ldrb	r1, [r2, r4]	@ zero_extendqisi2
 1211 0042 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1212 0046 0028     		cmp	r0, #0
 1213 0048 EED0     		beq	.L258
 1214 004a 4046     		mov	r0, r8
 1215 004c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1216 0050 D7F83012 		ldr	r1, [r7, #560]	@ float
 1217 0054 FFF7FEFF 		bl	__aeabi_fmul
 1218 0058 D6F88C11 		ldr	r1, [r6, #396]	@ float
 1219 005c FFF7FEFF 		bl	__aeabi_fmul
 1220 0060 029B     		ldr	r3, [sp, #8]
 1221 0062 0546     		mov	r5, r0
 1222 0064 0133     		adds	r3, r3, #1
 1223 0066 00F0D280 		beq	.L260
 1224 006a 002C     		cmp	r4, #0
 1225 006c 5DD1     		bne	.L178
 1226 006e 029A     		ldr	r2, [sp, #8]
 1227 0070 002A     		cmp	r2, #0
 1228 0072 40F04281 		bne	.L179
 1229 0076 049B     		ldr	r3, [sp, #16]
 1230 0078 002B     		cmp	r3, #0
 1231 007a 00F06381 		beq	.L180
 1232 007e D7F88411 		ldr	r1, [r7, #388]
 1233 0082 D3F8ACC0 		ldr	ip, [r3, #172]
 1234 0086 0029     		cmp	r1, #0
 1235 0088 00F04281 		beq	.L257
 1236 008c 0596     		str	r6, [sp, #20]
 1237 008e 0694     		str	r4, [sp, #24]
 1238 0090 BA46     		mov	r10, r7
 1239 0092 DDF80890 		ldr	r9, [sp, #8]
 1240 0096 6646     		mov	r6, ip
 1241 0098 1C46     		mov	r4, r3
 1242 009a CDF81CB0 		str	fp, [sp, #28]
 1243 009e 17E0     		b	.L186
 1244              	.L263:
 1245 00a0 DAF88810 		ldr	r1, [r10, #136]	@ float
 1246 00a4 FFF7FEFF 		bl	__aeabi_fadd
 1247 00a8 874A     		ldr	r2, .L270
 1248 00aa 8346     		mov	fp, r0
 1249 00ac 9368     		ldr	r3, [r2, #8]
 1250 00ae 93F82014 		ldrb	r1, [r3, #1056]	@ zero_extendqisi2
 1251 00b2 21BB     		cbnz	r1, .L261
 1252              	.L185:
 1253 00b4 CAF888B0 		str	fp, [r10, #136]	@ float
 1254 00b8 D7F88411 		ldr	r1, [r7, #388]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 23


 1255              	.L182:
 1256 00bc 09F10109 		add	r9, r9, #1
 1257 00c0 4945     		cmp	r1, r9
 1258 00c2 0AF1040A 		add	r10, r10, #4
 1259 00c6 04F10404 		add	r4, r4, #4
 1260 00ca 0A46     		mov	r2, r1
 1261 00cc 40F2AC80 		bls	.L262
 1262              	.L186:
 1263 00d0 0123     		movs	r3, #1
 1264 00d2 03FA09F2 		lsl	r2, r3, r9
 1265 00d6 3242     		tst	r2, r6
 1266 00d8 F0D0     		beq	.L182
 1267 00da D8F80820 		ldr	r2, [r8, #8]
 1268 00de 2846     		mov	r0, r5
 1269 00e0 527C     		ldrb	r2, [r2, #17]	@ zero_extendqisi2
 1270 00e2 9307     		lsls	r3, r2, #30
 1271 00e4 DCD4     		bmi	.L263
 1272 00e6 D4F89410 		ldr	r1, [r4, #148]	@ float
 1273 00ea 2846     		mov	r0, r5
 1274 00ec FFF7FEFF 		bl	__aeabi_fsub
 1275 00f0 754A     		ldr	r2, .L270
 1276 00f2 8346     		mov	fp, r0
 1277 00f4 9368     		ldr	r3, [r2, #8]
 1278 00f6 93F82014 		ldrb	r1, [r3, #1056]	@ zero_extendqisi2
 1279 00fa 0029     		cmp	r1, #0
 1280 00fc DAD0     		beq	.L185
 1281              	.L261:
 1282 00fe 03F57A7C 		add	ip, r3, #1000
 1283 0102 DAF88810 		ldr	r1, [r10, #136]	@ float
 1284 0106 5846     		mov	r0, fp
 1285 0108 CDF804C0 		str	ip, [sp, #4]
 1286 010c FFF7FEFF 		bl	__aeabi_fsub
 1287 0110 DDF804C0 		ldr	ip, [sp, #4]
 1288 0114 20F00041 		bic	r1, r0, #-2147483648
 1289 0118 6046     		mov	r0, ip
 1290 011a FFF7FEFF 		bl	_ZNK9HeightMap18GetMinimumSegmentsEf
 1291 011e 039B     		ldr	r3, [sp, #12]
 1292 0120 8342     		cmp	r3, r0
 1293 0122 38BF     		it	cc
 1294 0124 0346     		movcc	r3, r0
 1295 0126 0393     		str	r3, [sp, #12]
 1296 0128 C4E7     		b	.L185
 1297              	.L178:
 1298 012a D8F80830 		ldr	r3, [r8, #8]
 1299 012e 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 1300 0130 9907     		lsls	r1, r3, #30
 1301 0132 57D5     		bpl	.L187
 1302              	.L207:
 1303 0134 2846     		mov	r0, r5
 1304 0136 D6F88810 		ldr	r1, [r6, #136]	@ float
 1305 013a FFF7FEFF 		bl	__aeabi_fadd
 1306 013e 022C     		cmp	r4, #2
 1307 0140 0546     		mov	r5, r0
 1308 0142 08D0     		beq	.L189
 1309 0144 029A     		ldr	r2, [sp, #8]
 1310 0146 32B9     		cbnz	r2, .L189
 1311              	.L209:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 24


 1312 0148 5F4A     		ldr	r2, .L270
 1313 014a 9368     		ldr	r3, [r2, #8]
 1314 014c 93F82024 		ldrb	r2, [r3, #1056]	@ zero_extendqisi2
 1315 0150 002A     		cmp	r2, #0
 1316 0152 40F0C080 		bne	.L264
 1317              	.L189:
 1318 0156 C6F88850 		str	r5, [r6, #136]	@ float
 1319 015a 65E7     		b	.L258
 1320              	.L259:
 1321 015c 1546     		mov	r5, r2
 1322              	.L174:
 1323 015e 029B     		ldr	r3, [sp, #8]
 1324 0160 002B     		cmp	r3, #0
 1325 0162 3BD1     		bne	.L231
 1326              	.L181:
 1327 0164 97F85A32 		ldrb	r3, [r7, #602]	@ zero_extendqisi2
 1328 0168 002B     		cmp	r3, #0
 1329 016a 37D0     		beq	.L231
 1330 016c 564A     		ldr	r2, .L270
 1331 016e 9668     		ldr	r6, [r2, #8]
 1332 0170 9046     		mov	r8, r2
 1333 0172 96F86C44 		ldrb	r4, [r6, #1132]	@ zero_extendqisi2
 1334 0176 002C     		cmp	r4, #0
 1335 0178 5BD1     		bne	.L195
 1336 017a 7DB3     		cbz	r5, .L231
 1337 017c D7F85C92 		ldr	r9, [r7, #604]
 1338 0180 3E46     		mov	r6, r7
 1339 0182 4FF00108 		mov	r8, #1
 1340 0186 06E0     		b	.L200
 1341              	.L265:
 1342 0188 C6F88830 		str	r3, [r6, #136]	@ float
 1343              	.L196:
 1344 018c 0134     		adds	r4, r4, #1
 1345 018e AC42     		cmp	r4, r5
 1346 0190 06F10406 		add	r6, r6, #4
 1347 0194 22D0     		beq	.L231
 1348              	.L200:
 1349 0196 08FA04F3 		lsl	r3, r8, r4
 1350 019a 13EA090F 		tst	r3, r9
 1351 019e F5D0     		beq	.L196
 1352 01a0 3B68     		ldr	r3, [r7]
 1353 01a2 D6F888A0 		ldr	r10, [r6, #136]	@ float
 1354 01a6 03EB840B 		add	fp, r3, r4, lsl #2
 1355 01aa DBF8E034 		ldr	r3, [fp, #1248]	@ float
 1356 01ae 5046     		mov	r0, r10
 1357 01b0 1946     		mov	r1, r3
 1358 01b2 0193     		str	r3, [sp, #4]
 1359 01b4 FFF7FEFF 		bl	__aeabi_fcmplt
 1360 01b8 019B     		ldr	r3, [sp, #4]
 1361 01ba 0028     		cmp	r0, #0
 1362 01bc E4D1     		bne	.L265
 1363 01be DBF8C8B4 		ldr	fp, [fp, #1224]	@ float
 1364 01c2 5046     		mov	r0, r10
 1365 01c4 5946     		mov	r1, fp
 1366 01c6 FFF7FEFF 		bl	__aeabi_fcmpgt
 1367 01ca 0028     		cmp	r0, #0
 1368 01cc DED0     		beq	.L196
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 25


 1369 01ce 0134     		adds	r4, r4, #1
 1370 01d0 AC42     		cmp	r4, r5
 1371 01d2 C6F888B0 		str	fp, [r6, #136]	@ float
 1372 01d6 06F10406 		add	r6, r6, #4
 1373 01da DCD1     		bne	.L200
 1374              	.L231:
 1375 01dc 0398     		ldr	r0, [sp, #12]
 1376 01de 09B0     		add	sp, sp, #36
 1377              		@ sp needed
 1378 01e0 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1379              	.L187:
 1380 01e4 029A     		ldr	r2, [sp, #8]
 1381 01e6 002A     		cmp	r2, #0
 1382 01e8 B5D1     		bne	.L189
 1383 01ea D7F88812 		ldr	r1, [r7, #648]	@ float
 1384 01ee FFF7FEFF 		bl	__aeabi_fadd
 1385 01f2 022C     		cmp	r4, #2
 1386 01f4 0546     		mov	r5, r0
 1387 01f6 5CD0     		beq	.L266
 1388              	.L190:
 1389 01f8 049B     		ldr	r3, [sp, #16]
 1390 01fa 2BB1     		cbz	r3, .L191
 1391 01fc 2846     		mov	r0, r5
 1392 01fe DBF89410 		ldr	r1, [fp, #148]	@ float
 1393 0202 FFF7FEFF 		bl	__aeabi_fsub
 1394 0206 0546     		mov	r5, r0
 1395              	.L191:
 1396 0208 022C     		cmp	r4, #2
 1397 020a 9DD1     		bne	.L209
 1398 020c A3E7     		b	.L189
 1399              	.L260:
 1400 020e 0123     		movs	r3, #1
 1401 0210 03FA04F2 		lsl	r2, r3, r4
 1402 0214 D7F85C32 		ldr	r3, [r7, #604]
 1403 0218 1343     		orrs	r3, r3, r2
 1404 021a C7F85C32 		str	r3, [r7, #604]
 1405 021e C6F88800 		str	r0, [r6, #136]	@ float
 1406 0222 D7F88421 		ldr	r2, [r7, #388]
 1407 0226 01E7     		b	.L176
 1408              	.L262:
 1409 0228 059E     		ldr	r6, [sp, #20]
 1410 022a 069C     		ldr	r4, [sp, #24]
 1411 022c DDF81CB0 		ldr	fp, [sp, #28]
 1412 0230 FCE6     		b	.L176
 1413              	.L195:
 1414 0232 0123     		movs	r3, #1
 1415 0234 03FA05F5 		lsl	r5, r3, r5
 1416 0238 D7F85C32 		ldr	r3, [r7, #604]
 1417 023c 013D     		subs	r5, r5, #1
 1418 023e 2B40     		ands	r3, r3, r5
 1419 0240 9D42     		cmp	r5, r3
 1420 0242 CBD1     		bne	.L231
 1421 0244 D7F88800 		ldr	r0, [r7, #136]	@ float
 1422 0248 D7F88C50 		ldr	r5, [r7, #140]	@ float
 1423 024c 0146     		mov	r1, r0
 1424 024e FFF7FEFF 		bl	__aeabi_fmul
 1425 0252 2946     		mov	r1, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 26


 1426 0254 0446     		mov	r4, r0
 1427 0256 2846     		mov	r0, r5
 1428 0258 FFF7FEFF 		bl	__aeabi_fmul
 1429 025c 0146     		mov	r1, r0
 1430 025e 2046     		mov	r0, r4
 1431 0260 FFF7FEFF 		bl	__aeabi_fadd
 1432 0264 D6F88844 		ldr	r4, [r6, #1160]	@ float
 1433 0268 0546     		mov	r5, r0
 1434 026a 2146     		mov	r1, r4
 1435 026c FFF7FEFF 		bl	__aeabi_fcmpgt
 1436 0270 0028     		cmp	r0, #0
 1437 0272 4FD1     		bne	.L267
 1438              	.L201:
 1439 0274 D7F89050 		ldr	r5, [r7, #144]	@ float
 1440 0278 3B68     		ldr	r3, [r7]
 1441 027a 2846     		mov	r0, r5
 1442 027c 2946     		mov	r1, r5
 1443 027e D6F86064 		ldr	r6, [r6, #1120]	@ float
 1444 0282 D3F8E844 		ldr	r4, [r3, #1256]	@ float
 1445 0286 FFF7FEFF 		bl	__aeabi_fcmpun
 1446 028a 28B9     		cbnz	r0, .L203
 1447 028c 2846     		mov	r0, r5
 1448 028e 3146     		mov	r1, r6
 1449 0290 FFF7FEFF 		bl	__aeabi_fcmplt
 1450 0294 0028     		cmp	r0, #0
 1451 0296 39D0     		beq	.L268
 1452              	.L203:
 1453 0298 2046     		mov	r0, r4
 1454 029a 2146     		mov	r1, r4
 1455 029c FFF7FEFF 		bl	__aeabi_fcmpun
 1456 02a0 20B9     		cbnz	r0, .L205
 1457 02a2 2046     		mov	r0, r4
 1458 02a4 2946     		mov	r1, r5
 1459 02a6 FFF7FEFF 		bl	__aeabi_fcmpgt
 1460 02aa 68B3     		cbz	r0, .L269
 1461              	.L205:
 1462 02ac C7F89040 		str	r4, [r7, #144]	@ float
 1463 02b0 94E7     		b	.L231
 1464              	.L266:
 1465 02b2 97F8C032 		ldrb	r3, [r7, #704]	@ zero_extendqisi2
 1466 02b6 002B     		cmp	r3, #0
 1467 02b8 9ED0     		beq	.L190
 1468 02ba D7F8BC12 		ldr	r1, [r7, #700]	@ float
 1469 02be FFF7FEFF 		bl	__aeabi_fadd
 1470 02c2 0546     		mov	r5, r0
 1471 02c4 98E7     		b	.L190
 1472              	.L271:
 1473 02c6 00BF     		.align	2
 1474              	.L270:
 1475 02c8 00000000 		.word	reprap
 1476 02cc 00000000 		.word	.LANCHOR0
 1477              	.L210:
 1478 02d0 0122     		movs	r2, #1
 1479 02d2 0392     		str	r2, [sp, #12]
 1480 02d4 43E7     		b	.L174
 1481              	.L264:
 1482 02d6 D6F88810 		ldr	r1, [r6, #136]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 27


 1483 02da 2846     		mov	r0, r5
 1484 02dc 03F57A79 		add	r9, r3, #1000
 1485 02e0 FFF7FEFF 		bl	__aeabi_fsub
 1486 02e4 20F00041 		bic	r1, r0, #-2147483648
 1487 02e8 4846     		mov	r0, r9
 1488 02ea FFF7FEFF 		bl	_ZNK9HeightMap18GetMinimumSegmentsEf
 1489 02ee 039B     		ldr	r3, [sp, #12]
 1490 02f0 8342     		cmp	r3, r0
 1491 02f2 38BF     		it	cc
 1492 02f4 0346     		movcc	r3, r0
 1493 02f6 0393     		str	r3, [sp, #12]
 1494 02f8 2DE7     		b	.L189
 1495              	.L179:
 1496 02fa D8F80830 		ldr	r3, [r8, #8]
 1497 02fe 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 1498 0300 9B07     		lsls	r3, r3, #30
 1499 0302 3FF517AF 		bmi	.L207
 1500 0306 26E7     		b	.L189
 1501              	.L269:
 1502 0308 2C46     		mov	r4, r5
 1503 030a CFE7     		b	.L205
 1504              	.L268:
 1505 030c 3546     		mov	r5, r6
 1506 030e C3E7     		b	.L203
 1507              	.L257:
 1508 0310 0D46     		mov	r5, r1
 1509 0312 27E7     		b	.L181
 1510              	.L267:
 1511 0314 2946     		mov	r1, r5
 1512 0316 2046     		mov	r0, r4
 1513 0318 FFF7FEFF 		bl	__aeabi_fdiv
 1514 031c FFF7FEFF 		bl	sqrtf
 1515 0320 0146     		mov	r1, r0
 1516 0322 0446     		mov	r4, r0
 1517 0324 D7F88800 		ldr	r0, [r7, #136]	@ float
 1518 0328 FFF7FEFF 		bl	__aeabi_fmul
 1519 032c 2146     		mov	r1, r4
 1520 032e C7F88800 		str	r0, [r7, #136]	@ float
 1521 0332 D7F88C00 		ldr	r0, [r7, #140]	@ float
 1522 0336 FFF7FEFF 		bl	__aeabi_fmul
 1523 033a D8F80860 		ldr	r6, [r8, #8]
 1524 033e C7F88C00 		str	r0, [r7, #140]	@ float
 1525 0342 97E7     		b	.L201
 1526              	.L180:
 1527 0344 D8F80830 		ldr	r3, [r8, #8]
 1528 0348 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 1529 034a 9A07     		lsls	r2, r3, #30
 1530 034c 3FF5F2AE 		bmi	.L207
 1531 0350 D7F88812 		ldr	r1, [r7, #648]	@ float
 1532 0354 FFF7FEFF 		bl	__aeabi_fadd
 1533 0358 0546     		mov	r5, r0
 1534 035a F5E6     		b	.L209
 1535              		.size	_ZN6GCodes23LoadMoveBufferFromGCodeER11GCodeBufferi, .-_ZN6GCodes23LoadMoveBufferFromGCodeER
 1536              		.global	__aeabi_fcmpeq
 1537              		.section	.text._ZN6GCodes9SetUpMoveER11GCodeBufferR9StringRef,"ax",%progbits
 1538              		.align	2
 1539              		.global	_ZN6GCodes9SetUpMoveER11GCodeBufferR9StringRef
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 28


 1540              		.thumb
 1541              		.thumb_func
 1542              		.type	_ZN6GCodes9SetUpMoveER11GCodeBufferR9StringRef, %function
 1543              	_ZN6GCodes9SetUpMoveER11GCodeBufferR9StringRef:
 1544              		@ args = 0, pretend = 0, frame = 0
 1545              		@ frame_needed = 0, uses_anonymous_args = 0
 1546 0000 D0F8DC30 		ldr	r3, [r0, #220]
 1547 0004 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1548 0008 0446     		mov	r4, r0
 1549 000a 0D46     		mov	r5, r1
 1550 000c 9046     		mov	r8, r2
 1551 000e 13B1     		cbz	r3, .L346
 1552 0010 0020     		movs	r0, #0
 1553 0012 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1554              	.L346:
 1555 0016 0846     		mov	r0, r1
 1556 0018 4521     		movs	r1, #69
 1557 001a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1558 001e 0028     		cmp	r0, #0
 1559 0020 66D0     		beq	.L347
 1560              	.L280:
 1561 0022 8F4F     		ldr	r7, .L353
 1562 0024 0026     		movs	r6, #0
 1563 0026 3846     		mov	r0, r7
 1564 0028 A4F8D460 		strh	r6, [r4, #212]	@ movhi
 1565 002c 84F8D660 		strb	r6, [r4, #214]
 1566 0030 84F80861 		strb	r6, [r4, #264]
 1567 0034 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 1568 0038 5321     		movs	r1, #83
 1569 003a C4F8CC00 		str	r0, [r4, #204]
 1570 003e 2846     		mov	r0, r5
 1571 0040 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1572 0044 0028     		cmp	r0, #0
 1573 0046 7FD1     		bne	.L282
 1574              	.L285:
 1575 0048 94F8D690 		ldrb	r9, [r4, #214]	@ zero_extendqisi2
 1576              	.L283:
 1577 004c B868     		ldr	r0, [r7, #8]
 1578 004e 844E     		ldr	r6, .L353
 1579 0050 90F86C34 		ldrb	r3, [r0, #1132]	@ zero_extendqisi2
 1580 0054 EBB1     		cbz	r3, .L311
 1581 0056 B9F1000F 		cmp	r9, #0
 1582 005a 3ED1     		bne	.L308
 1583 005c D4F88431 		ldr	r3, [r4, #388]
 1584 0060 0122     		movs	r2, #1
 1585 0062 02FA03F3 		lsl	r3, r2, r3
 1586 0066 D4F85C22 		ldr	r2, [r4, #604]
 1587 006a 013B     		subs	r3, r3, #1
 1588 006c 1A40     		ands	r2, r2, r3
 1589 006e 9342     		cmp	r3, r2
 1590 0070 0FD0     		beq	.L311
 1591 0072 2846     		mov	r0, r5
 1592 0074 5821     		movs	r1, #88
 1593 0076 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1594 007a 0028     		cmp	r0, #0
 1595 007c 00F0CF80 		beq	.L348
 1596              	.L296:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 29


 1597 0080 0120     		movs	r0, #1
 1598 0082 84F88003 		strb	r0, [r4, #896]
 1599 0086 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1600              	.L286:
 1601 008a B868     		ldr	r0, [r7, #8]
 1602 008c 90F86C34 		ldrb	r3, [r0, #1132]	@ zero_extendqisi2
 1603 0090 1BBB     		cbnz	r3, .L308
 1604              	.L311:
 1605 0092 0746     		mov	r7, r0
 1606              	.L291:
 1607 0094 7248     		ldr	r0, .L353
 1608 0096 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 1609 009a 04F18806 		add	r6, r4, #136
 1610 009e 0346     		mov	r3, r0
 1611 00a0 3146     		mov	r1, r6
 1612 00a2 3846     		mov	r0, r7
 1613 00a4 4A46     		mov	r2, r9
 1614 00a6 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhm
 1615 00aa D4F88421 		ldr	r2, [r4, #388]
 1616 00ae 3146     		mov	r1, r6
 1617 00b0 9200     		lsls	r2, r2, #2
 1618 00b2 04F1AC00 		add	r0, r4, #172
 1619 00b6 FFF7FEFF 		bl	memcpy
 1620 00ba 2046     		mov	r0, r4
 1621 00bc 2946     		mov	r1, r5
 1622 00be 94F8D620 		ldrb	r2, [r4, #214]	@ zero_extendqisi2
 1623 00c2 FFF7FEFF 		bl	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBufferi
 1624 00c6 0028     		cmp	r0, #0
 1625 00c8 50D1     		bne	.L349
 1626              	.L298:
 1627 00ca D4F8D430 		ldr	r3, [r4, #212]
 1628 00ce 23F07F43 		bic	r3, r3, #-16777216
 1629 00d2 53B1     		cbz	r3, .L345
 1630 00d4 0220     		movs	r0, #2
 1631 00d6 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1632              	.L308:
 1633 00da AB68     		ldr	r3, [r5, #8]
 1634 00dc 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 1635 00de 9B07     		lsls	r3, r3, #30
 1636 00e0 D7D4     		bmi	.L311
 1637 00e2 4046     		mov	r0, r8
 1638 00e4 5F49     		ldr	r1, .L353+4
 1639 00e6 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 1640              	.L345:
 1641 00ea 0120     		movs	r0, #1
 1642 00ec BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1643              	.L347:
 1644 00f0 2846     		mov	r0, r5
 1645 00f2 4621     		movs	r1, #70
 1646 00f4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1647 00f8 0028     		cmp	r0, #0
 1648 00fa 92D0     		beq	.L280
 1649 00fc 2846     		mov	r0, r5
 1650 00fe FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1651 0102 5949     		ldr	r1, .L353+8
 1652 0104 FFF7FEFF 		bl	__aeabi_fcmpeq
 1653 0108 0028     		cmp	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 30


 1654 010a 8AD0     		beq	.L280
 1655 010c 2846     		mov	r0, r5
 1656 010e 5821     		movs	r1, #88
 1657 0110 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1658 0114 18B1     		cbz	r0, .L276
 1659 0116 D4F85C32 		ldr	r3, [r4, #604]
 1660 011a D807     		lsls	r0, r3, #31
 1661 011c E5D5     		bpl	.L345
 1662              	.L276:
 1663 011e 2846     		mov	r0, r5
 1664 0120 5921     		movs	r1, #89
 1665 0122 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1666 0126 18B1     		cbz	r0, .L278
 1667 0128 D4F85C32 		ldr	r3, [r4, #604]
 1668 012c 9907     		lsls	r1, r3, #30
 1669 012e DCD5     		bpl	.L345
 1670              	.L278:
 1671 0130 2846     		mov	r0, r5
 1672 0132 5A21     		movs	r1, #90
 1673 0134 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1674 0138 0028     		cmp	r0, #0
 1675 013a 3FF472AF 		beq	.L280
 1676 013e D4F85C32 		ldr	r3, [r4, #604]
 1677 0142 5A07     		lsls	r2, r3, #29
 1678 0144 D1D5     		bpl	.L345
 1679 0146 6CE7     		b	.L280
 1680              	.L282:
 1681 0148 2846     		mov	r0, r5
 1682 014a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1683 014e 431E     		subs	r3, r0, #1
 1684 0150 012B     		cmp	r3, #1
 1685 0152 40D9     		bls	.L350
 1686 0154 6328     		cmp	r0, #99
 1687 0156 7FF477AF 		bne	.L285
 1688 015a B4F8D430 		ldrh	r3, [r4, #212]
 1689 015e 94F8D690 		ldrb	r9, [r4, #214]	@ zero_extendqisi2
 1690 0162 43F48043 		orr	r3, r3, #16384
 1691 0166 A4F8D430 		strh	r3, [r4, #212]	@ movhi
 1692 016a 6FE7     		b	.L283
 1693              	.L349:
 1694 016c 2046     		mov	r0, r4
 1695 016e 2946     		mov	r1, r5
 1696 0170 94F8D620 		ldrb	r2, [r4, #214]	@ zero_extendqisi2
 1697 0174 FFF7FEFF 		bl	_ZN6GCodes23LoadMoveBufferFromGCodeER11GCodeBufferi
 1698 0178 C4F8DC00 		str	r0, [r4, #220]
 1699 017c 0028     		cmp	r0, #0
 1700 017e A4D0     		beq	.L298
 1701 0180 D4F88481 		ldr	r8, [r4, #388]
 1702 0184 0026     		movs	r6, #0
 1703 0186 84F8D860 		strb	r6, [r4, #216]
 1704 018a B8F1000F 		cmp	r8, #0
 1705 018e 10D0     		beq	.L300
 1706 0190 2746     		mov	r7, r4
 1707              	.L303:
 1708 0192 022E     		cmp	r6, #2
 1709 0194 06F10106 		add	r6, r6, #1
 1710 0198 07D0     		beq	.L301
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 31


 1711 019a D7F88800 		ldr	r0, [r7, #136]	@ float
 1712 019e D7F8AC10 		ldr	r1, [r7, #172]	@ float
 1713 01a2 FFF7FEFF 		bl	__aeabi_fcmpeq
 1714 01a6 0028     		cmp	r0, #0
 1715 01a8 4BD0     		beq	.L351
 1716              	.L301:
 1717 01aa 4645     		cmp	r6, r8
 1718 01ac 07F10407 		add	r7, r7, #4
 1719 01b0 EFD1     		bne	.L303
 1720              	.L300:
 1721 01b2 236C     		ldr	r3, [r4, #64]
 1722 01b4 1B68     		ldr	r3, [r3]
 1723 01b6 AB42     		cmp	r3, r5
 1724 01b8 18BF     		it	ne
 1725 01ba 4FF0FF30 		movne	r0, #-1
 1726 01be 44D0     		beq	.L352
 1727              	.L304:
 1728 01c0 B4F8D430 		ldrh	r3, [r4, #212]
 1729 01c4 C4F8C800 		str	r0, [r4, #200]
 1730 01c8 D3F10103 		rsbs	r3, r3, #1
 1731 01cc 38BF     		it	cc
 1732 01ce 0023     		movcc	r3, #0
 1733 01d0 84F8D930 		strb	r3, [r4, #217]
 1734 01d4 79E7     		b	.L298
 1735              	.L350:
 1736 01d6 5FFA80F9 		uxtb	r9, r0
 1737 01da 0128     		cmp	r0, #1
 1738 01dc C4F8CC60 		str	r6, [r4, #204]
 1739 01e0 84F8D690 		strb	r9, [r4, #214]
 1740 01e4 7FF430AF 		bne	.L285
 1741 01e8 D4F88431 		ldr	r3, [r4, #388]
 1742 01ec 002B     		cmp	r3, #0
 1743 01ee 3FF44CAF 		beq	.L286
 1744 01f2 DFF87890 		ldr	r9, .L353+12
 1745 01f6 8246     		mov	r10, r0
 1746              	.L289:
 1747 01f8 2846     		mov	r0, r5
 1748 01fa 19F80610 		ldrb	r1, [r9, r6]	@ zero_extendqisi2
 1749 01fe FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1750 0202 30B1     		cbz	r0, .L287
 1751 0204 0AFA06F3 		lsl	r3, r10, r6
 1752 0208 B4F8D420 		ldrh	r2, [r4, #212]
 1753 020c 1343     		orrs	r3, r3, r2
 1754 020e A4F8D430 		strh	r3, [r4, #212]	@ movhi
 1755              	.L287:
 1756 0212 D4F88431 		ldr	r3, [r4, #388]
 1757 0216 0136     		adds	r6, r6, #1
 1758 0218 B342     		cmp	r3, r6
 1759 021a EDD8     		bhi	.L289
 1760 021c 14E7     		b	.L285
 1761              	.L348:
 1762 021e 2846     		mov	r0, r5
 1763 0220 5921     		movs	r1, #89
 1764 0222 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1765 0226 0028     		cmp	r0, #0
 1766 0228 7FF42AAF 		bne	.L296
 1767 022c 2846     		mov	r0, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 32


 1768 022e 5A21     		movs	r1, #90
 1769 0230 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1770 0234 0028     		cmp	r0, #0
 1771 0236 7FF423AF 		bne	.L296
 1772 023a B768     		ldr	r7, [r6, #8]
 1773 023c 94F8D690 		ldrb	r9, [r4, #214]	@ zero_extendqisi2
 1774 0240 28E7     		b	.L291
 1775              	.L351:
 1776 0242 0123     		movs	r3, #1
 1777 0244 84F8D830 		strb	r3, [r4, #216]
 1778 0248 B3E7     		b	.L300
 1779              	.L352:
 1780 024a AB68     		ldr	r3, [r5, #8]
 1781 024c 9868     		ldr	r0, [r3, #8]
 1782 024e FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1783 0252 0546     		mov	r5, r0
 1784 0254 2069     		ldr	r0, [r4, #16]
 1785 0256 0268     		ldr	r2, [r0]
 1786 0258 9368     		ldr	r3, [r2, #8]
 1787 025a 9847     		blx	r3
 1788 025c 281A     		subs	r0, r5, r0
 1789 025e AFE7     		b	.L304
 1790              	.L354:
 1791              		.align	2
 1792              	.L353:
 1793 0260 00000000 		.word	reprap
 1794 0264 98010000 		.word	.LC19
 1795 0268 0080BB45 		.word	1169915904
 1796 026c 00000000 		.word	.LANCHOR0
 1797              		.size	_ZN6GCodes9SetUpMoveER11GCodeBufferR9StringRef, .-_ZN6GCodes9SetUpMoveER11GCodeBufferR9Strin
 1798              		.global	__aeabi_f2d
 1799              		.global	__aeabi_d2f
 1800              		.global	__aeabi_dadd
 1801              		.global	__aeabi_d2uiz
 1802              		.global	__aeabi_ui2f
 1803              		.section	.text._ZN6GCodes9DoArcMoveER11GCodeBufferb,"ax",%progbits
 1804              		.align	2
 1805              		.global	_ZN6GCodes9DoArcMoveER11GCodeBufferb
 1806              		.thumb
 1807              		.thumb_func
 1808              		.type	_ZN6GCodes9DoArcMoveER11GCodeBufferb, %function
 1809              	_ZN6GCodes9DoArcMoveER11GCodeBufferb:
 1810              		@ args = 0, pretend = 0, frame = 24
 1811              		@ frame_needed = 0, uses_anonymous_args = 0
 1812 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1813 0004 0C46     		mov	r4, r1
 1814 0006 87B0     		sub	sp, sp, #28
 1815 0008 0546     		mov	r5, r0
 1816 000a 5821     		movs	r1, #88
 1817 000c 2046     		mov	r0, r4
 1818 000e 1646     		mov	r6, r2
 1819 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1820 0014 18B9     		cbnz	r0, .L356
 1821              	.L358:
 1822 0016 0120     		movs	r0, #1
 1823              	.L403:
 1824 0018 07B0     		add	sp, sp, #28
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 33


 1825              		@ sp needed
 1826 001a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1827              	.L356:
 1828 001e 2046     		mov	r0, r4
 1829 0020 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1830 0024 5921     		movs	r1, #89
 1831 0026 8046     		mov	r8, r0
 1832 0028 2046     		mov	r0, r4
 1833 002a D5F83072 		ldr	r7, [r5, #560]	@ float
 1834 002e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1835 0032 0028     		cmp	r0, #0
 1836 0034 EFD0     		beq	.L358
 1837 0036 2046     		mov	r0, r4
 1838 0038 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1839 003c 4921     		movs	r1, #73
 1840 003e 8246     		mov	r10, r0
 1841 0040 2046     		mov	r0, r4
 1842 0042 D5F83092 		ldr	r9, [r5, #560]	@ float
 1843 0046 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1844 004a 0028     		cmp	r0, #0
 1845 004c E3D0     		beq	.L358
 1846 004e 2046     		mov	r0, r4
 1847 0050 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1848 0054 D5F83022 		ldr	r2, [r5, #560]	@ float
 1849 0058 8346     		mov	fp, r0
 1850 005a 4A21     		movs	r1, #74
 1851 005c 2046     		mov	r0, r4
 1852 005e 0192     		str	r2, [sp, #4]	@ float
 1853 0060 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1854 0064 0028     		cmp	r0, #0
 1855 0066 D6D0     		beq	.L358
 1856 0068 3946     		mov	r1, r7
 1857 006a 4046     		mov	r0, r8
 1858 006c FFF7FEFF 		bl	__aeabi_fmul
 1859 0070 4946     		mov	r1, r9
 1860 0072 0390     		str	r0, [sp, #12]	@ float
 1861 0074 5046     		mov	r0, r10
 1862 0076 FFF7FEFF 		bl	__aeabi_fmul
 1863 007a 0199     		ldr	r1, [sp, #4]	@ float
 1864 007c 8146     		mov	r9, r0
 1865 007e 5846     		mov	r0, fp
 1866 0080 FFF7FEFF 		bl	__aeabi_fmul
 1867 0084 8046     		mov	r8, r0
 1868 0086 2046     		mov	r0, r4
 1869 0088 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1870 008c D5F83012 		ldr	r1, [r5, #560]	@ float
 1871 0090 FFF7FEFF 		bl	__aeabi_fmul
 1872 0094 A368     		ldr	r3, [r4, #8]
 1873 0096 D5F88421 		ldr	r2, [r5, #388]
 1874 009a 93F811E0 		ldrb	lr, [r3, #17]	@ zero_extendqisi2
 1875 009e C24B     		ldr	r3, .L409+16
 1876 00a0 CEF34007 		ubfx	r7, lr, #1, #1
 1877 00a4 0190     		str	r0, [sp, #4]	@ float
 1878 00a6 05F18801 		add	r1, r5, #136
 1879 00aa 9200     		lsls	r2, r2, #2
 1880 00ac 05F1AC00 		add	r0, r5, #172
 1881 00b0 0297     		str	r7, [sp, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 34


 1882 00b2 5F6A     		ldr	r7, [r3, #36]
 1883 00b4 FFF7FEFF 		bl	memcpy
 1884 00b8 2046     		mov	r0, r4
 1885 00ba 5A21     		movs	r1, #90
 1886 00bc FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1887 00c0 0028     		cmp	r0, #0
 1888 00c2 40F02B81 		bne	.L405
 1889              	.L359:
 1890 00c6 D5F8B000 		ldr	r0, [r5, #176]	@ float
 1891 00ca 0199     		ldr	r1, [sp, #4]	@ float
 1892 00cc FFF7FEFF 		bl	__aeabi_fadd
 1893 00d0 C5F8E400 		str	r0, [r5, #228]	@ float
 1894 00d4 002F     		cmp	r7, #0
 1895 00d6 4DD0     		beq	.L363
 1896 00d8 D7F8AC30 		ldr	r3, [r7, #172]
 1897 00dc 029A     		ldr	r2, [sp, #8]
 1898 00de 23F00603 		bic	r3, r3, #6
 1899 00e2 C5F80431 		str	r3, [r5, #260]
 1900 00e6 002A     		cmp	r2, #0
 1901 00e8 00F00E81 		beq	.L362
 1902 00ec D5F88C00 		ldr	r0, [r5, #140]	@ float
 1903 00f0 4946     		mov	r1, r9
 1904 00f2 0093     		str	r3, [sp]
 1905 00f4 FFF7FEFF 		bl	__aeabi_fadd
 1906 00f8 009B     		ldr	r3, [sp]
 1907 00fa C5F88C00 		str	r0, [r5, #140]	@ float
 1908              	.L364:
 1909 00fe D5F88491 		ldr	r9, [r5, #388]
 1910 0102 B9F1000F 		cmp	r9, #0
 1911 0106 51D0     		beq	.L366
 1912 0108 BA46     		mov	r10, r7
 1913 010a 4FF0000B 		mov	fp, #0
 1914 010e 2F46     		mov	r7, r5
 1915 0110 0495     		str	r5, [sp, #16]
 1916 0112 0594     		str	r4, [sp, #20]
 1917 0114 5D46     		mov	r5, fp
 1918 0116 029C     		ldr	r4, [sp, #8]
 1919 0118 D346     		mov	fp, r10
 1920 011a 0296     		str	r6, [sp, #8]
 1921 011c 9A46     		mov	r10, r3
 1922 011e 3E46     		mov	r6, r7
 1923 0120 039F     		ldr	r7, [sp, #12]	@ float
 1924 0122 0DE0     		b	.L372
 1925              	.L407:
 1926 0124 D6F88800 		ldr	r0, [r6, #136]	@ float
 1927 0128 FFF7FEFF 		bl	__aeabi_fadd
 1928 012c C6F88800 		str	r0, [r6, #136]	@ float
 1929              	.L368:
 1930 0130 0135     		adds	r5, r5, #1
 1931 0132 4D45     		cmp	r5, r9
 1932 0134 0BF1040B 		add	fp, fp, #4
 1933 0138 06F10406 		add	r6, r6, #4
 1934 013c 00F0C180 		beq	.L406
 1935              	.L372:
 1936 0140 012D     		cmp	r5, #1
 1937 0142 4146     		mov	r1, r8
 1938 0144 F4D0     		beq	.L368
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 35


 1939 0146 D6F8AC00 		ldr	r0, [r6, #172]	@ float
 1940 014a FFF7FEFF 		bl	__aeabi_fadd
 1941 014e 0123     		movs	r3, #1
 1942 0150 03FA05F1 		lsl	r1, r3, r5
 1943 0154 11EA0A0F 		tst	r1, r10
 1944 0158 C6F8E000 		str	r0, [r6, #224]	@ float
 1945 015c E8D0     		beq	.L368
 1946 015e 3946     		mov	r1, r7
 1947 0160 3846     		mov	r0, r7
 1948 0162 002C     		cmp	r4, #0
 1949 0164 DED1     		bne	.L407
 1950 0166 DBF89410 		ldr	r1, [fp, #148]	@ float
 1951 016a FFF7FEFF 		bl	__aeabi_fsub
 1952 016e C6F88800 		str	r0, [r6, #136]	@ float
 1953 0172 DDE7     		b	.L368
 1954              	.L363:
 1955 0174 0123     		movs	r3, #1
 1956 0176 C5F80431 		str	r3, [r5, #260]
 1957 017a D5F8AC00 		ldr	r0, [r5, #172]	@ float
 1958 017e 4146     		mov	r1, r8
 1959 0180 FFF7FEFF 		bl	__aeabi_fadd
 1960 0184 029B     		ldr	r3, [sp, #8]
 1961 0186 C5F8E000 		str	r0, [r5, #224]	@ float
 1962 018a 002B     		cmp	r3, #0
 1963 018c 00F0FB80 		beq	.L373
 1964 0190 0399     		ldr	r1, [sp, #12]	@ float
 1965 0192 D5F88800 		ldr	r0, [r5, #136]	@ float
 1966 0196 FFF7FEFF 		bl	__aeabi_fadd
 1967 019a 4946     		mov	r1, r9
 1968 019c C5F88800 		str	r0, [r5, #136]	@ float
 1969 01a0 D5F88C00 		ldr	r0, [r5, #140]	@ float
 1970 01a4 FFF7FEFF 		bl	__aeabi_fadd
 1971 01a8 C5F88C00 		str	r0, [r5, #140]	@ float
 1972              	.L366:
 1973 01ac 0023     		movs	r3, #0
 1974 01ae A5F8D430 		strh	r3, [r5, #212]	@ movhi
 1975 01b2 85F8D630 		strb	r3, [r5, #214]
 1976 01b6 7C48     		ldr	r0, .L409+16
 1977 01b8 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 1978 01bc 2146     		mov	r1, r4
 1979 01be C5F8CC00 		str	r0, [r5, #204]
 1980 01c2 95F8D620 		ldrb	r2, [r5, #214]	@ zero_extendqisi2
 1981 01c6 2846     		mov	r0, r5
 1982 01c8 FFF7FEFF 		bl	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBufferi
 1983 01cc 0028     		cmp	r0, #0
 1984 01ce 3FF423AF 		beq	.L403
 1985 01d2 4146     		mov	r1, r8
 1986 01d4 4046     		mov	r0, r8
 1987 01d6 FFF7FEFF 		bl	__aeabi_fmul
 1988 01da 0446     		mov	r4, r0
 1989 01dc 0198     		ldr	r0, [sp, #4]	@ float
 1990 01de 0146     		mov	r1, r0
 1991 01e0 FFF7FEFF 		bl	__aeabi_fmul
 1992 01e4 0146     		mov	r1, r0
 1993 01e6 2046     		mov	r0, r4
 1994 01e8 FFF7FEFF 		bl	__aeabi_fadd
 1995 01ec FFF7FEFF 		bl	sqrtf
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 36


 1996 01f0 019F     		ldr	r7, [sp, #4]
 1997 01f2 C5F8F800 		str	r0, [r5, #248]	@ float
 1998 01f6 07F10043 		add	r3, r7, #-2147483648
 1999 01fa 1846     		mov	r0, r3
 2000 01fc FFF7FEFF 		bl	__aeabi_f2d
 2001 0200 8246     		mov	r10, r0
 2002 0202 08F10040 		add	r0, r8, #-2147483648
 2003 0206 8B46     		mov	fp, r1
 2004 0208 FFF7FEFF 		bl	__aeabi_f2d
 2005 020c 0246     		mov	r2, r0
 2006 020e 0B46     		mov	r3, r1
 2007 0210 5046     		mov	r0, r10
 2008 0212 5946     		mov	r1, fp
 2009 0214 FFF7FEFF 		bl	atan2
 2010 0218 FFF7FEFF 		bl	__aeabi_d2f
 2011 021c D5F8E410 		ldr	r1, [r5, #228]	@ float
 2012 0220 C5F8FC00 		str	r0, [r5, #252]	@ float
 2013 0224 D5F88C00 		ldr	r0, [r5, #140]	@ float
 2014 0228 FFF7FEFF 		bl	__aeabi_fsub
 2015 022c FFF7FEFF 		bl	__aeabi_f2d
 2016 0230 8046     		mov	r8, r0
 2017 0232 8946     		mov	r9, r1
 2018 0234 D5F88800 		ldr	r0, [r5, #136]	@ float
 2019 0238 D5F8E010 		ldr	r1, [r5, #224]	@ float
 2020 023c FFF7FEFF 		bl	__aeabi_fsub
 2021 0240 FFF7FEFF 		bl	__aeabi_f2d
 2022 0244 0246     		mov	r2, r0
 2023 0246 0B46     		mov	r3, r1
 2024 0248 4046     		mov	r0, r8
 2025 024a 4946     		mov	r1, r9
 2026 024c FFF7FEFF 		bl	atan2
 2027 0250 FFF7FEFF 		bl	__aeabi_d2f
 2028 0254 0146     		mov	r1, r0
 2029 0256 002E     		cmp	r6, #0
 2030 0258 72D0     		beq	.L374
 2031 025a D5F8FC00 		ldr	r0, [r5, #252]	@ float
 2032 025e FFF7FEFF 		bl	__aeabi_fsub
 2033 0262 0446     		mov	r4, r0
 2034              	.L375:
 2035 0264 2046     		mov	r0, r4
 2036 0266 0021     		movs	r1, #0
 2037 0268 FFF7FEFF 		bl	__aeabi_fcmplt
 2038 026c 0028     		cmp	r0, #0
 2039 026e 6DD1     		bne	.L408
 2040              	.L376:
 2041 0270 D5F8F810 		ldr	r1, [r5, #248]	@ float
 2042 0274 2046     		mov	r0, r4
 2043 0276 FFF7FEFF 		bl	__aeabi_fmul
 2044 027a D5F83412 		ldr	r1, [r5, #564]	@ float
 2045 027e FFF7FEFF 		bl	__aeabi_fdiv
 2046 0282 FFF7FEFF 		bl	__aeabi_f2d
 2047 0286 44A3     		adr	r3, .L409
 2048 0288 D3E90023 		ldrd	r2, [r3]
 2049 028c FFF7FEFF 		bl	__aeabi_dadd
 2050 0290 FFF7FEFF 		bl	__aeabi_d2uiz
 2051 0294 0128     		cmp	r0, #1
 2052 0296 38BF     		it	cc
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 37


 2053 0298 0120     		movcc	r0, #1
 2054 029a C5F8DC00 		str	r0, [r5, #220]
 2055 029e FFF7FEFF 		bl	__aeabi_ui2f
 2056 02a2 0146     		mov	r1, r0
 2057 02a4 2046     		mov	r0, r4
 2058 02a6 FFF7FEFF 		bl	__aeabi_fdiv
 2059 02aa 0EB1     		cbz	r6, .L404
 2060 02ac 00F10040 		add	r0, r0, #-2147483648
 2061              	.L404:
 2062 02b0 0123     		movs	r3, #1
 2063 02b2 C5F80001 		str	r0, [r5, #256]	@ float
 2064 02b6 85F80831 		strb	r3, [r5, #264]
 2065 02ba 85F8D830 		strb	r3, [r5, #216]
 2066 02be 0020     		movs	r0, #0
 2067 02c0 AAE6     		b	.L403
 2068              	.L406:
 2069 02c2 049D     		ldr	r5, [sp, #16]
 2070 02c4 059C     		ldr	r4, [sp, #20]
 2071 02c6 029E     		ldr	r6, [sp, #8]
 2072 02c8 70E7     		b	.L366
 2073              	.L360:
 2074 02ca D5F88812 		ldr	r1, [r5, #648]	@ float
 2075 02ce FFF7FEFF 		bl	__aeabi_fadd
 2076 02d2 D5F8BC12 		ldr	r1, [r5, #700]	@ float
 2077 02d6 FFF7FEFF 		bl	__aeabi_fadd
 2078 02da C5F89000 		str	r0, [r5, #144]	@ float
 2079 02de 002F     		cmp	r7, #0
 2080 02e0 40D0     		beq	.L361
 2081 02e2 D7F89C10 		ldr	r1, [r7, #156]	@ float
 2082 02e6 FFF7FEFF 		bl	__aeabi_fsub
 2083 02ea 0199     		ldr	r1, [sp, #4]	@ float
 2084 02ec C5F89000 		str	r0, [r5, #144]	@ float
 2085 02f0 D5F8B000 		ldr	r0, [r5, #176]	@ float
 2086 02f4 FFF7FEFF 		bl	__aeabi_fadd
 2087 02f8 D7F8AC30 		ldr	r3, [r7, #172]
 2088 02fc C5F8E400 		str	r0, [r5, #228]	@ float
 2089 0300 23F00603 		bic	r3, r3, #6
 2090 0304 C5F80431 		str	r3, [r5, #260]
 2091              	.L362:
 2092 0308 D7F89810 		ldr	r1, [r7, #152]	@ float
 2093 030c 4846     		mov	r0, r9
 2094 030e 0093     		str	r3, [sp]
 2095 0310 FFF7FEFF 		bl	__aeabi_fsub
 2096 0314 009B     		ldr	r3, [sp]
 2097 0316 C5F88C00 		str	r0, [r5, #140]	@ float
 2098 031a F0E6     		b	.L364
 2099              	.L405:
 2100 031c 2046     		mov	r0, r4
 2101 031e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2102 0322 D5F83012 		ldr	r1, [r5, #560]	@ float
 2103 0326 FFF7FEFF 		bl	__aeabi_fmul
 2104 032a 029B     		ldr	r3, [sp, #8]
 2105 032c 0146     		mov	r1, r0
 2106 032e 002B     		cmp	r3, #0
 2107 0330 CBD0     		beq	.L360
 2108 0332 D5F89000 		ldr	r0, [r5, #144]	@ float
 2109 0336 FFF7FEFF 		bl	__aeabi_fadd
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 38


 2110 033a C5F89000 		str	r0, [r5, #144]	@ float
 2111 033e C2E6     		b	.L359
 2112              	.L374:
 2113 0340 D5F8FC10 		ldr	r1, [r5, #252]	@ float
 2114 0344 FFF7FEFF 		bl	__aeabi_fsub
 2115 0348 0446     		mov	r4, r0
 2116 034a 8BE7     		b	.L375
 2117              	.L408:
 2118 034c 2046     		mov	r0, r4
 2119 034e FFF7FEFF 		bl	__aeabi_f2d
 2120 0352 13A3     		adr	r3, .L409+8
 2121 0354 D3E90023 		ldrd	r2, [r3]
 2122 0358 FFF7FEFF 		bl	__aeabi_dadd
 2123 035c FFF7FEFF 		bl	__aeabi_d2f
 2124 0360 0446     		mov	r4, r0
 2125 0362 85E7     		b	.L376
 2126              	.L361:
 2127 0364 0199     		ldr	r1, [sp, #4]	@ float
 2128 0366 D5F8B000 		ldr	r0, [r5, #176]	@ float
 2129 036a FFF7FEFF 		bl	__aeabi_fadd
 2130 036e 0123     		movs	r3, #1
 2131 0370 C5F8E400 		str	r0, [r5, #228]	@ float
 2132 0374 C5F80431 		str	r3, [r5, #260]
 2133 0378 D5F8AC00 		ldr	r0, [r5, #172]	@ float
 2134 037c 4146     		mov	r1, r8
 2135 037e FFF7FEFF 		bl	__aeabi_fadd
 2136 0382 C5F8E000 		str	r0, [r5, #224]	@ float
 2137              	.L373:
 2138 0386 039B     		ldr	r3, [sp, #12]	@ float
 2139 0388 C5F88C90 		str	r9, [r5, #140]	@ float
 2140 038c C5F88830 		str	r3, [r5, #136]	@ float
 2141 0390 0CE7     		b	.L366
 2142              	.L410:
 2143 0392 00BFAFF3 		.align	3
 2143      0080
 2144              	.L409:
 2145 0398 9A999999 		.word	-1717986918
 2146 039c 9999E93F 		.word	1072273817
 2147 03a0 182D4454 		.word	1413754136
 2148 03a4 FB211940 		.word	1075388923
 2149 03a8 00000000 		.word	reprap
 2150              		.size	_ZN6GCodes9DoArcMoveER11GCodeBufferb, .-_ZN6GCodes9DoArcMoveER11GCodeBufferb
 2151 03ac AFF30080 		.section	.text._ZN6GCodes8ReadMoveERNS_7RawMoveE,"ax",%progbits
 2152              		.align	2
 2153              		.global	_ZN6GCodes8ReadMoveERNS_7RawMoveE
 2154              		.thumb
 2155              		.thumb_func
 2156              		.type	_ZN6GCodes8ReadMoveERNS_7RawMoveE, %function
 2157              	_ZN6GCodes8ReadMoveERNS_7RawMoveE:
 2158              		@ args = 0, pretend = 0, frame = 8
 2159              		@ frame_needed = 0, uses_anonymous_args = 0
 2160 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2161 0004 0746     		mov	r7, r0
 2162 0006 D0F8DC00 		ldr	r0, [r0, #220]
 2163 000a 83B0     		sub	sp, sp, #12
 2164 000c 8846     		mov	r8, r1
 2165 000e 0028     		cmp	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 39


 2166 0010 00F08D80 		beq	.L435
 2167 0014 0846     		mov	r0, r1
 2168 0016 5422     		movs	r2, #84
 2169 0018 07F18801 		add	r1, r7, #136
 2170 001c FFF7FEFF 		bl	memcpy
 2171 0020 D7F8DC90 		ldr	r9, [r7, #220]
 2172 0024 B9F1010F 		cmp	r9, #1
 2173 0028 00F0A780 		beq	.L457
 2174 002c 97F80831 		ldrb	r3, [r7, #264]	@ zero_extendqisi2
 2175 0030 0193     		str	r3, [sp, #4]
 2176 0032 0023     		movs	r3, #0
 2177 0034 88F85130 		strb	r3, [r8, #81]
 2178 0038 019B     		ldr	r3, [sp, #4]
 2179 003a 3BB1     		cbz	r3, .L415
 2180 003c D7F8FC00 		ldr	r0, [r7, #252]	@ float
 2181 0040 D7F80011 		ldr	r1, [r7, #256]	@ float
 2182 0044 FFF7FEFF 		bl	__aeabi_fadd
 2183 0048 C7F8FC00 		str	r0, [r7, #252]	@ float
 2184              	.L415:
 2185 004c D7F88451 		ldr	r5, [r7, #388]
 2186 0050 002D     		cmp	r5, #0
 2187 0052 3BD0     		beq	.L422
 2188 0054 A8F1040B 		sub	fp, r8, #4
 2189 0058 3C46     		mov	r4, r7
 2190 005a 0026     		movs	r6, #0
 2191 005c 13E0     		b	.L423
 2192              	.L459:
 2193 005e 022E     		cmp	r6, #2
 2194 0060 14D0     		beq	.L418
 2195 0062 012E     		cmp	r6, #1
 2196 0064 77D0     		beq	.L458
 2197 0066 0123     		movs	r3, #1
 2198 0068 03FA06F1 		lsl	r1, r3, r6
 2199 006c D7F80421 		ldr	r2, [r7, #260]
 2200 0070 1142     		tst	r1, r2
 2201 0072 61D1     		bne	.L421
 2202 0074 D4F8AC00 		ldr	r0, [r4, #172]	@ float
 2203              	.L420:
 2204 0078 0136     		adds	r6, r6, #1
 2205 007a AE42     		cmp	r6, r5
 2206 007c 4BF8040F 		str	r0, [fp, #4]!	@ float
 2207 0080 04F10404 		add	r4, r4, #4
 2208 0084 22D0     		beq	.L422
 2209              	.L423:
 2210 0086 019B     		ldr	r3, [sp, #4]
 2211 0088 002B     		cmp	r3, #0
 2212 008a E8D1     		bne	.L459
 2213              	.L418:
 2214 008c D4F8ACA0 		ldr	r10, [r4, #172]	@ float
 2215 0090 D4F88800 		ldr	r0, [r4, #136]	@ float
 2216 0094 5146     		mov	r1, r10
 2217 0096 FFF7FEFF 		bl	__aeabi_fsub
 2218 009a 8446     		mov	ip, r0
 2219 009c 4846     		mov	r0, r9
 2220 009e CDF800C0 		str	ip, [sp]
 2221 00a2 FFF7FEFF 		bl	__aeabi_ui2f
 2222 00a6 DDF800C0 		ldr	ip, [sp]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 40


 2223 00aa 0146     		mov	r1, r0
 2224 00ac 6046     		mov	r0, ip
 2225 00ae FFF7FEFF 		bl	__aeabi_fdiv
 2226 00b2 0146     		mov	r1, r0
 2227 00b4 5046     		mov	r0, r10
 2228 00b6 FFF7FEFF 		bl	__aeabi_fadd
 2229 00ba 0136     		adds	r6, r6, #1
 2230 00bc AE42     		cmp	r6, r5
 2231 00be C4F8AC00 		str	r0, [r4, #172]	@ float
 2232 00c2 4BF8040F 		str	r0, [fp, #4]!	@ float
 2233 00c6 04F10404 		add	r4, r4, #4
 2234 00ca DCD1     		bne	.L423
 2235              	.L422:
 2236 00cc 4846     		mov	r0, r9
 2237 00ce FFF7FEFF 		bl	__aeabi_ui2f
 2238 00d2 05F12204 		add	r4, r5, #34
 2239 00d6 6E1E     		subs	r6, r5, #1
 2240 00d8 8246     		mov	r10, r0
 2241 00da 07EB8404 		add	r4, r7, r4, lsl #2
 2242 00de 08EB8606 		add	r6, r8, r6, lsl #2
 2243              	.L417:
 2244 00e2 2068     		ldr	r0, [r4]	@ float
 2245 00e4 5146     		mov	r1, r10
 2246 00e6 FFF7FEFF 		bl	__aeabi_fdiv
 2247 00ea 46F8040F 		str	r0, [r6, #4]!	@ float
 2248 00ee 0146     		mov	r1, r0
 2249 00f0 54F8040B 		ldr	r0, [r4], #4	@ float
 2250 00f4 FFF7FEFF 		bl	__aeabi_fsub
 2251 00f8 0135     		adds	r5, r5, #1
 2252 00fa 082D     		cmp	r5, #8
 2253 00fc 44F8040C 		str	r0, [r4, #-4]	@ float
 2254 0100 EFD9     		bls	.L417
 2255 0102 09F1FF33 		add	r3, r9, #-1
 2256 0106 C7F8DC30 		str	r3, [r7, #220]
 2257              	.L414:
 2258 010a 98F84E30 		ldrb	r3, [r8, #78]	@ zero_extendqisi2
 2259 010e 33B9     		cbnz	r3, .L425
 2260 0110 D7F88C02 		ldr	r0, [r7, #652]	@ float
 2261 0114 0021     		movs	r1, #0
 2262 0116 FFF7FEFF 		bl	__aeabi_fcmpeq
 2263 011a 0446     		mov	r4, r0
 2264 011c C8B3     		cbz	r0, .L460
 2265              	.L425:
 2266 011e 0022     		movs	r2, #0
 2267 0120 0123     		movs	r3, #1
 2268 0122 C8F84820 		str	r2, [r8, #72]	@ float
 2269              	.L412:
 2270 0126 1846     		mov	r0, r3
 2271 0128 03B0     		add	sp, sp, #12
 2272              		@ sp needed
 2273 012a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2274              	.L435:
 2275 012e 0346     		mov	r3, r0
 2276 0130 1846     		mov	r0, r3
 2277 0132 03B0     		add	sp, sp, #12
 2278              		@ sp needed
 2279 0134 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 41


 2280              	.L421:
 2281 0138 D7F8FC00 		ldr	r0, [r7, #252]	@ float
 2282 013c FFF7FEFF 		bl	cosf
 2283 0140 D7F8F810 		ldr	r1, [r7, #248]	@ float
 2284 0144 FFF7FEFF 		bl	__aeabi_fmul
 2285 0148 D4F8E010 		ldr	r1, [r4, #224]	@ float
 2286 014c FFF7FEFF 		bl	__aeabi_fadd
 2287 0150 C4F8AC00 		str	r0, [r4, #172]	@ float
 2288 0154 90E7     		b	.L420
 2289              	.L458:
 2290 0156 D7F8FC00 		ldr	r0, [r7, #252]	@ float
 2291 015a FFF7FEFF 		bl	sinf
 2292 015e D7F8F810 		ldr	r1, [r7, #248]	@ float
 2293 0162 FFF7FEFF 		bl	__aeabi_fmul
 2294 0166 0146     		mov	r1, r0
 2295 0168 D7F8E400 		ldr	r0, [r7, #228]	@ float
 2296 016c FFF7FEFF 		bl	__aeabi_fadd
 2297 0170 C7F8B000 		str	r0, [r7, #176]	@ float
 2298 0174 D4F8AC00 		ldr	r0, [r4, #172]	@ float
 2299 0178 7EE7     		b	.L420
 2300              	.L457:
 2301 017a 0023     		movs	r3, #0
 2302 017c C7F8DC30 		str	r3, [r7, #220]
 2303 0180 87F80831 		strb	r3, [r7, #264]
 2304 0184 A7F8D430 		strh	r3, [r7, #212]	@ movhi
 2305 0188 87F8D630 		strb	r3, [r7, #214]
 2306 018c 87F8D730 		strb	r3, [r7, #215]
 2307 0190 BBE7     		b	.L414
 2308              	.L460:
 2309 0192 4D48     		ldr	r0, .L462
 2310 0194 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 2311 0198 D7F88461 		ldr	r6, [r7, #388]
 2312 019c 8246     		mov	r10, r0
 2313 019e 002E     		cmp	r6, #0
 2314 01a0 00F09080 		beq	.L436
 2315 01a4 0025     		movs	r5, #0
 2316 01a6 C346     		mov	fp, r8
 2317              	.L431:
 2318 01a8 0123     		movs	r3, #1
 2319 01aa 03FA04F2 		lsl	r2, r3, r4
 2320 01ae 12EA0A0F 		tst	r2, r10
 2321 01b2 1C44     		add	r4, r4, r3
 2322 01b4 12D0     		beq	.L428
 2323 01b6 DBF82410 		ldr	r1, [fp, #36]	@ float
 2324 01ba DBF80000 		ldr	r0, [fp]	@ float
 2325 01be FFF7FEFF 		bl	__aeabi_fsub
 2326 01c2 2946     		mov	r1, r5
 2327 01c4 20F00049 		bic	r9, r0, #-2147483648
 2328 01c8 2846     		mov	r0, r5
 2329 01ca FFF7FEFF 		bl	__aeabi_fcmpun
 2330 01ce 2946     		mov	r1, r5
 2331 01d0 20B9     		cbnz	r0, .L428
 2332 01d2 4846     		mov	r0, r9
 2333 01d4 FFF7FEFF 		bl	__aeabi_fcmplt
 2334 01d8 00B9     		cbnz	r0, .L428
 2335 01da 4D46     		mov	r5, r9
 2336              	.L428:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 42


 2337 01dc B442     		cmp	r4, r6
 2338 01de 0BF1040B 		add	fp, fp, #4
 2339 01e2 E1D1     		bne	.L431
 2340 01e4 2846     		mov	r0, r5
 2341 01e6 2946     		mov	r1, r5
 2342 01e8 FFF7FEFF 		bl	__aeabi_fmul
 2343 01ec 0646     		mov	r6, r0
 2344              	.L427:
 2345 01ee D8F82810 		ldr	r1, [r8, #40]	@ float
 2346 01f2 D8F80400 		ldr	r0, [r8, #4]	@ float
 2347 01f6 FFF7FEFF 		bl	__aeabi_fsub
 2348 01fa D8F82C10 		ldr	r1, [r8, #44]	@ float
 2349 01fe 0446     		mov	r4, r0
 2350 0200 D8F80800 		ldr	r0, [r8, #8]	@ float
 2351 0204 FFF7FEFF 		bl	__aeabi_fsub
 2352 0208 2146     		mov	r1, r4
 2353 020a 0546     		mov	r5, r0
 2354 020c 2046     		mov	r0, r4
 2355 020e FFF7FEFF 		bl	__aeabi_fmul
 2356 0212 3146     		mov	r1, r6
 2357 0214 FFF7FEFF 		bl	__aeabi_fadd
 2358 0218 2946     		mov	r1, r5
 2359 021a 0446     		mov	r4, r0
 2360 021c 2846     		mov	r0, r5
 2361 021e FFF7FEFF 		bl	__aeabi_fmul
 2362 0222 0146     		mov	r1, r0
 2363 0224 2046     		mov	r0, r4
 2364 0226 FFF7FEFF 		bl	__aeabi_fadd
 2365 022a FFF7FEFF 		bl	sqrtf
 2366 022e D8F83C10 		ldr	r1, [r8, #60]	@ float
 2367 0232 FFF7FEFF 		bl	__aeabi_fdiv
 2368 0236 3B68     		ldr	r3, [r7]
 2369 0238 D3F86411 		ldr	r1, [r3, #356]	@ float
 2370 023c FFF7FEFF 		bl	__aeabi_fmul
 2371 0240 D7F88C52 		ldr	r5, [r7, #652]	@ float
 2372 0244 0646     		mov	r6, r0
 2373 0246 00F10044 		add	r4, r0, #-2147483648
 2374 024a 2946     		mov	r1, r5
 2375 024c 2846     		mov	r0, r5
 2376 024e FFF7FEFF 		bl	__aeabi_fcmpun
 2377 0252 0028     		cmp	r0, #0
 2378 0254 34D1     		bne	.L438
 2379 0256 3046     		mov	r0, r6
 2380 0258 2946     		mov	r1, r5
 2381 025a FFF7FEFF 		bl	__aeabi_fcmpgt
 2382 025e 38B3     		cbz	r0, .L461
 2383 0260 2E46     		mov	r6, r5
 2384              	.L433:
 2385 0262 3046     		mov	r0, r6
 2386 0264 2146     		mov	r1, r4
 2387 0266 FFF7FEFF 		bl	__aeabi_fcmpgt
 2388 026a 38BB     		cbnz	r0, .L440
 2389              	.L432:
 2390 026c D8F80810 		ldr	r1, [r8, #8]	@ float
 2391 0270 2046     		mov	r0, r4
 2392 0272 FFF7FEFF 		bl	__aeabi_fadd
 2393 0276 0346     		mov	r3, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 43


 2394 0278 C8F80800 		str	r0, [r8, #8]	@ float
 2395 027c C8F84840 		str	r4, [r8, #72]	@ float
 2396 0280 D7F89000 		ldr	r0, [r7, #144]	@ float
 2397 0284 C7F8B430 		str	r3, [r7, #180]	@ float
 2398 0288 2146     		mov	r1, r4
 2399 028a FFF7FEFF 		bl	__aeabi_fadd
 2400 028e 2146     		mov	r1, r4
 2401 0290 C7F89000 		str	r0, [r7, #144]	@ float
 2402 0294 2846     		mov	r0, r5
 2403 0296 FFF7FEFF 		bl	__aeabi_fsub
 2404 029a 2146     		mov	r1, r4
 2405 029c C7F88C02 		str	r0, [r7, #652]	@ float
 2406 02a0 D7F88802 		ldr	r0, [r7, #648]	@ float
 2407 02a4 FFF7FEFF 		bl	__aeabi_fadd
 2408 02a8 0123     		movs	r3, #1
 2409 02aa C7F88802 		str	r0, [r7, #648]	@ float
 2410 02ae 3AE7     		b	.L412
 2411              	.L461:
 2412 02b0 3046     		mov	r0, r6
 2413 02b2 3146     		mov	r1, r6
 2414 02b4 FFF7FEFF 		bl	__aeabi_fcmpun
 2415 02b8 0028     		cmp	r0, #0
 2416 02ba D2D0     		beq	.L433
 2417              	.L440:
 2418 02bc 3446     		mov	r4, r6
 2419 02be D5E7     		b	.L432
 2420              	.L438:
 2421 02c0 2C46     		mov	r4, r5
 2422 02c2 D3E7     		b	.L432
 2423              	.L436:
 2424 02c4 0026     		movs	r6, #0
 2425 02c6 92E7     		b	.L427
 2426              	.L463:
 2427              		.align	2
 2428              	.L462:
 2429 02c8 00000000 		.word	reprap
 2430              		.size	_ZN6GCodes8ReadMoveERNS_7RawMoveE, .-_ZN6GCodes8ReadMoveERNS_7RawMoveE
 2431              		.section	.text._ZN6GCodes9ClearMoveEv,"ax",%progbits
 2432              		.align	2
 2433              		.global	_ZN6GCodes9ClearMoveEv
 2434              		.thumb
 2435              		.thumb_func
 2436              		.type	_ZN6GCodes9ClearMoveEv, %function
 2437              	_ZN6GCodes9ClearMoveEv:
 2438              		@ args = 0, pretend = 0, frame = 0
 2439              		@ frame_needed = 0, uses_anonymous_args = 0
 2440              		@ link register save eliminated.
 2441 0000 0023     		movs	r3, #0
 2442 0002 C0F8DC30 		str	r3, [r0, #220]
 2443 0006 80F80831 		strb	r3, [r0, #264]
 2444 000a A0F8D430 		strh	r3, [r0, #212]	@ movhi
 2445 000e 80F8D630 		strb	r3, [r0, #214]
 2446 0012 80F8D730 		strb	r3, [r0, #215]
 2447 0016 7047     		bx	lr
 2448              		.size	_ZN6GCodes9ClearMoveEv, .-_ZN6GCodes9ClearMoveEv
 2449              		.section	.text._ZNK6GCodes17GetBabyStepOffsetEv,"ax",%progbits
 2450              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 44


 2451              		.global	_ZNK6GCodes17GetBabyStepOffsetEv
 2452              		.thumb
 2453              		.thumb_func
 2454              		.type	_ZNK6GCodes17GetBabyStepOffsetEv, %function
 2455              	_ZNK6GCodes17GetBabyStepOffsetEv:
 2456              		@ args = 0, pretend = 0, frame = 0
 2457              		@ frame_needed = 0, uses_anonymous_args = 0
 2458 0000 08B5     		push	{r3, lr}
 2459 0002 0346     		mov	r3, r0
 2460 0004 D3F88C12 		ldr	r1, [r3, #652]	@ float
 2461 0008 D0F88802 		ldr	r0, [r0, #648]	@ float
 2462 000c FFF7FEFF 		bl	__aeabi_fadd
 2463 0010 08BD     		pop	{r3, pc}
 2464              		.size	_ZNK6GCodes17GetBabyStepOffsetEv, .-_ZNK6GCodes17GetBabyStepOffsetEv
 2465 0012 00BF     		.section	.text._ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb,"ax",%progbits
 2466              		.align	2
 2467              		.global	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 2468              		.thumb
 2469              		.thumb_func
 2470              		.type	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb, %function
 2471              	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb:
 2472              		@ args = 4, pretend = 0, frame = 0
 2473              		@ frame_needed = 0, uses_anonymous_args = 0
 2474 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 2475 0004 0646     		mov	r6, r0
 2476 0006 0C46     		mov	r4, r1
 2477 0008 1F46     		mov	r7, r3
 2478 000a 0068     		ldr	r0, [r0]
 2479 000c 1C49     		ldr	r1, .L477
 2480 000e 0023     		movs	r3, #0
 2481 0010 9146     		mov	r9, r2
 2482 0012 9DF82080 		ldrb	r8, [sp, #32]	@ zero_extendqisi2
 2483 0016 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 2484 001a 0546     		mov	r5, r0
 2485 001c 10B3     		cbz	r0, .L474
 2486 001e 2046     		mov	r0, r4
 2487 0020 FFF7FEFF 		bl	_ZN11GCodeBuffer9PushStateEv
 2488 0024 C0B1     		cbz	r0, .L475
 2489 0026 A668     		ldr	r6, [r4, #8]
 2490 0028 B068     		ldr	r0, [r6, #8]
 2491 002a 08B1     		cbz	r0, .L471
 2492 002c FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 2493              	.L471:
 2494 0030 B560     		str	r5, [r6, #8]
 2495 0032 A368     		ldr	r3, [r4, #8]
 2496 0034 0021     		movs	r1, #0
 2497 0036 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2498 0038 2046     		mov	r0, r4
 2499 003a 42F00402 		orr	r2, r2, #4
 2500 003e 5A74     		strb	r2, [r3, #17]
 2501 0040 A368     		ldr	r3, [r4, #8]
 2502 0042 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2503 0044 68F30412 		bfi	r2, r8, #4, #1
 2504 0048 5A74     		strb	r2, [r3, #17]
 2505 004a A368     		ldr	r3, [r4, #8]
 2506 004c 1974     		strb	r1, [r3, #16]
 2507 004e FFF7FEFF 		bl	_ZN11GCodeBuffer4InitEv
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 45


 2508 0052 0120     		movs	r0, #1
 2509 0054 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 2510              	.L475:
 2511 0058 3046     		mov	r0, r6
 2512 005a FFF7FEFF 		bl	_ZN6GCodes4PushER11GCodeBuffer.part.43
 2513 005e 0120     		movs	r0, #1
 2514 0060 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 2515              	.L474:
 2516 0064 17B9     		cbnz	r7, .L476
 2517 0066 3846     		mov	r0, r7
 2518 0068 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 2519              	.L476:
 2520 006c 3068     		ldr	r0, [r6]
 2521 006e 4B46     		mov	r3, r9
 2522 0070 0621     		movs	r1, #6
 2523 0072 044A     		ldr	r2, .L477+4
 2524 0074 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2525 0078 0120     		movs	r0, #1
 2526 007a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 2527              	.L478:
 2528 007e 00BF     		.align	2
 2529              	.L477:
 2530 0080 DC010000 		.word	.LC20
 2531 0084 E4010000 		.word	.LC21
 2532              		.size	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb, .-_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 2533              		.section	.text._ZN6GCodes13RunConfigFileEPKc,"ax",%progbits
 2534              		.align	2
 2535              		.global	_ZN6GCodes13RunConfigFileEPKc
 2536              		.thumb
 2537              		.thumb_func
 2538              		.type	_ZN6GCodes13RunConfigFileEPKc, %function
 2539              	_ZN6GCodes13RunConfigFileEPKc:
 2540              		@ args = 0, pretend = 0, frame = 0
 2541              		@ frame_needed = 0, uses_anonymous_args = 0
 2542 0000 10B5     		push	{r4, lr}
 2543 0002 C36C     		ldr	r3, [r0, #76]
 2544 0004 82B0     		sub	sp, sp, #8
 2545 0006 0A46     		mov	r2, r1
 2546 0008 1968     		ldr	r1, [r3]
 2547 000a 0023     		movs	r3, #0
 2548 000c 0093     		str	r3, [sp]
 2549 000e 0446     		mov	r4, r0
 2550 0010 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 2551 0014 84F88600 		strb	r0, [r4, #134]
 2552 0018 02B0     		add	sp, sp, #8
 2553              		@ sp needed
 2554 001a 10BD     		pop	{r4, pc}
 2555              		.size	_ZN6GCodes13RunConfigFileEPKc, .-_ZN6GCodes13RunConfigFileEPKc
 2556              		.section	.text._ZN6GCodes13CheckTriggersEv,"ax",%progbits
 2557              		.align	2
 2558              		.global	_ZN6GCodes13CheckTriggersEv
 2559              		.thumb
 2560              		.thumb_func
 2561              		.type	_ZN6GCodes13CheckTriggersEv, %function
 2562              	_ZN6GCodes13CheckTriggersEv:
 2563              		@ args = 0, pretend = 0, frame = 40
 2564              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 46


 2565 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 2566 0004 0446     		mov	r4, r0
 2567 0006 8DB0     		sub	sp, sp, #52
 2568 0008 0068     		ldr	r0, [r0]
 2569 000a B4F8FE72 		ldrh	r7, [r4, #766]
 2570 000e FFF7FEFF 		bl	_ZNK8Platform19GetAllEndstopStatesEv
 2571 0012 DFF850C1 		ldr	ip, .L514+4
 2572 0016 83B2     		uxth	r3, r0
 2573 0018 BFB2     		uxth	r7, r7
 2574 001a 23EA0705 		bic	r5, r3, r7
 2575 001e DCF81C80 		ldr	r8, [ip, #28]
 2576 0022 27EA0307 		bic	r7, r7, r3
 2577 0026 A4F8FE02 		strh	r0, [r4, #766]	@ movhi
 2578 002a 2146     		mov	r1, r4
 2579 002c 0023     		movs	r3, #0
 2580 002e 0A22     		movs	r2, #10
 2581 0030 0126     		movs	r6, #1
 2582 0032 10E0     		b	.L486
 2583              	.L511:
 2584 0034 0128     		cmp	r0, #1
 2585 0036 23D0     		beq	.L509
 2586              	.L482:
 2587 0038 9A42     		cmp	r2, r3
 2588 003a 01F10601 		add	r1, r1, #6
 2589 003e 07D9     		bls	.L484
 2590 0040 06FA03F9 		lsl	r9, r6, r3
 2591 0044 D4F80003 		ldr	r0, [r4, #768]
 2592 0048 19EA000F 		tst	r9, r0
 2593 004c 18BF     		it	ne
 2594 004e 1A46     		movne	r2, r3
 2595              	.L484:
 2596 0050 0133     		adds	r3, r3, #1
 2597 0052 0A2B     		cmp	r3, #10
 2598 0054 21D0     		beq	.L510
 2599              	.L486:
 2600 0056 B1F8C202 		ldrh	r0, [r1, #706]
 2601 005a 0542     		tst	r5, r0
 2602 005c 03D1     		bne	.L481
 2603 005e B1F8C402 		ldrh	r0, [r1, #708]
 2604 0062 0742     		tst	r7, r0
 2605 0064 E8D0     		beq	.L482
 2606              	.L481:
 2607 0066 91F8C602 		ldrb	r0, [r1, #710]	@ zero_extendqisi2
 2608 006a 0028     		cmp	r0, #0
 2609 006c E2D1     		bne	.L511
 2610 006e 06FA03F9 		lsl	r9, r6, r3
 2611 0072 D4F80003 		ldr	r0, [r4, #768]
 2612 0076 40EA0900 		orr	r0, r0, r9
 2613 007a C4F80003 		str	r0, [r4, #768]
 2614 007e DBE7     		b	.L482
 2615              	.L509:
 2616 0080 98F81000 		ldrb	r0, [r8, #16]	@ zero_extendqisi2
 2617 0084 0028     		cmp	r0, #0
 2618 0086 D7D0     		beq	.L482
 2619 0088 06FA03F9 		lsl	r9, r6, r3
 2620 008c D4F80003 		ldr	r0, [r4, #768]
 2621 0090 40EA0900 		orr	r0, r0, r9
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 47


 2622 0094 C4F80003 		str	r0, [r4, #768]
 2623 0098 CEE7     		b	.L482
 2624              	.L510:
 2625 009a 4AB1     		cbz	r2, .L512
 2626 009c 0A2A     		cmp	r2, #10
 2627 009e 04D0     		beq	.L480
 2628 00a0 E06C     		ldr	r0, [r4, #76]
 2629 00a2 0168     		ldr	r1, [r0]
 2630 00a4 8B68     		ldr	r3, [r1, #8]
 2631 00a6 9D68     		ldr	r5, [r3, #8]
 2632 00a8 75B1     		cbz	r5, .L513
 2633              	.L480:
 2634 00aa 0DB0     		add	sp, sp, #52
 2635              		@ sp needed
 2636 00ac BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2637              	.L512:
 2638 00b0 D4F80033 		ldr	r3, [r4, #768]
 2639 00b4 2046     		mov	r0, r4
 2640 00b6 23F00103 		bic	r3, r3, #1
 2641 00ba C4F80033 		str	r3, [r4, #768]
 2642 00be FFF7FEFF 		bl	_ZN6GCodes15DoEmergencyStopEv
 2643 00c2 0DB0     		add	sp, sp, #52
 2644              		@ sp needed
 2645 00c4 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2646              	.L513:
 2647 00c8 1E7C     		ldrb	r6, [r3, #16]	@ zero_extendqisi2
 2648 00ca 002E     		cmp	r6, #0
 2649 00cc EDD1     		bne	.L480
 2650 00ce 012A     		cmp	r2, #1
 2651 00d0 1ED1     		bne	.L507
 2652 00d2 94F88530 		ldrb	r3, [r4, #133]	@ zero_extendqisi2
 2653 00d6 002B     		cmp	r3, #0
 2654 00d8 38D1     		bne	.L490
 2655 00da DCF81C30 		ldr	r3, [ip, #28]
 2656 00de 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 2657 00e0 002B     		cmp	r3, #0
 2658 00e2 33D0     		beq	.L490
 2659 00e4 A36D     		ldr	r3, [r4, #88]
 2660 00e6 9942     		cmp	r1, r3
 2661 00e8 08D0     		beq	.L492
 2662 00ea 002B     		cmp	r3, #0
 2663 00ec DDD1     		bne	.L480
 2664 00ee A165     		str	r1, [r4, #88]
 2665 00f0 8B68     		ldr	r3, [r1, #8]
 2666 00f2 0168     		ldr	r1, [r0]
 2667 00f4 DA68     		ldr	r2, [r3, #12]
 2668 00f6 42F00102 		orr	r2, r2, #1
 2669 00fa DA60     		str	r2, [r3, #12]
 2670              	.L492:
 2671 00fc D4F80033 		ldr	r3, [r4, #768]
 2672 0100 2046     		mov	r0, r4
 2673 0102 23F00203 		bic	r3, r3, #2
 2674 0106 C4F80033 		str	r3, [r4, #768]
 2675 010a FFF7FEFF 		bl	_ZN6GCodes7DoPauseER11GCodeBuffer
 2676 010e CCE7     		b	.L480
 2677              	.L507:
 2678 0110 0125     		movs	r5, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 48


 2679 0112 05FA02F1 		lsl	r1, r5, r2
 2680 0116 D4F80033 		ldr	r3, [r4, #768]
 2681 011a 05AF     		add	r7, sp, #20
 2682 011c 23EA0103 		bic	r3, r3, r1
 2683 0120 C4F80033 		str	r3, [r4, #768]
 2684 0124 03A8     		add	r0, sp, #12
 2685 0126 1923     		movs	r3, #25
 2686 0128 0D49     		ldr	r1, .L514
 2687 012a 0493     		str	r3, [sp, #16]
 2688 012c 8DF81460 		strb	r6, [sp, #20]
 2689 0130 0397     		str	r7, [sp, #12]
 2690 0132 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 2691 0136 E36C     		ldr	r3, [r4, #76]
 2692 0138 039A     		ldr	r2, [sp, #12]
 2693 013a 1968     		ldr	r1, [r3]
 2694 013c 2046     		mov	r0, r4
 2695 013e 2B46     		mov	r3, r5
 2696 0140 0096     		str	r6, [sp]
 2697 0142 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 2698 0146 0DB0     		add	sp, sp, #52
 2699              		@ sp needed
 2700 0148 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2701              	.L490:
 2702 014c D4F80033 		ldr	r3, [r4, #768]
 2703 0150 23F00203 		bic	r3, r3, #2
 2704 0154 C4F80033 		str	r3, [r4, #768]
 2705 0158 0DB0     		add	sp, sp, #52
 2706              		@ sp needed
 2707 015a BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2708              	.L515:
 2709 015e 00BF     		.align	2
 2710              	.L514:
 2711 0160 00020000 		.word	.LC22
 2712 0164 00000000 		.word	reprap
 2713              		.size	_ZN6GCodes13CheckTriggersEv, .-_ZN6GCodes13CheckTriggersEv
 2714              		.section	.text._ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer,"ax",%progbits
 2715              		.align	2
 2716              		.global	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer
 2717              		.thumb
 2718              		.thumb_func
 2719              		.type	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer, %function
 2720              	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer:
 2721              		@ args = 0, pretend = 0, frame = 0
 2722              		@ frame_needed = 0, uses_anonymous_args = 0
 2723 0000 8B68     		ldr	r3, [r1, #8]
 2724 0002 10B5     		push	{r4, lr}
 2725 0004 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 2726 0006 0C46     		mov	r4, r1
 2727 0008 5B07     		lsls	r3, r3, #29
 2728 000a 00D4     		bmi	.L518
 2729 000c 10BD     		pop	{r4, pc}
 2730              	.L518:
 2731 000e 0846     		mov	r0, r1
 2732 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer8PopStateEv
 2733 0014 2046     		mov	r0, r4
 2734 0016 BDE81040 		pop	{r4, lr}
 2735 001a FFF7FEBF 		b	_ZN11GCodeBuffer4InitEv
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 49


 2736              		.size	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer, .-_ZN6GCodes21FileMacroCyclesReturnER11GCo
 2737 001e 00BF     		.section	.text._ZN6GCodes17DoCannedCycleMoveER11GCodeBuffert,"ax",%progbits
 2738              		.align	2
 2739              		.global	_ZN6GCodes17DoCannedCycleMoveER11GCodeBuffert
 2740              		.thumb
 2741              		.thumb_func
 2742              		.type	_ZN6GCodes17DoCannedCycleMoveER11GCodeBuffert, %function
 2743              	_ZN6GCodes17DoCannedCycleMoveER11GCodeBuffert:
 2744              		@ args = 0, pretend = 0, frame = 0
 2745              		@ frame_needed = 0, uses_anonymous_args = 0
 2746 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2747 0004 9046     		mov	r8, r2
 2748 0006 0646     		mov	r6, r0
 2749 0008 0C46     		mov	r4, r1
 2750 000a FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2751 000e 0028     		cmp	r0, #0
 2752 0010 43D0     		beq	.L528
 2753 0012 96F85972 		ldrb	r7, [r6, #601]	@ zero_extendqisi2
 2754 0016 002F     		cmp	r7, #0
 2755 0018 43D1     		bne	.L531
 2756 001a 2046     		mov	r0, r4
 2757 001c FFF7FEFF 		bl	_ZN11GCodeBuffer9PushStateEv
 2758 0020 0028     		cmp	r0, #0
 2759 0022 48D0     		beq	.L532
 2760 0024 A368     		ldr	r3, [r4, #8]
 2761 0026 3546     		mov	r5, r6
 2762 0028 1A68     		ldr	r2, [r3]
 2763 002a 3C46     		mov	r4, r7
 2764 002c 127C     		ldrb	r2, [r2, #16]	@ zero_extendqisi2
 2765 002e 1A74     		strb	r2, [r3, #16]
 2766 0030 0AE0     		b	.L529
 2767              	.L534:
 2768 0032 022B     		cmp	r3, #2
 2769 0034 03D1     		bne	.L524
 2770 0036 D5F8FC31 		ldr	r3, [r5, #508]	@ float
 2771 003a C5F88830 		str	r3, [r5, #136]	@ float
 2772              	.L524:
 2773 003e 0134     		adds	r4, r4, #1
 2774 0040 092C     		cmp	r4, #9
 2775 0042 05F10405 		add	r5, r5, #4
 2776 0046 11D0     		beq	.L533
 2777              	.L529:
 2778 0048 3319     		adds	r3, r6, r4
 2779 004a 93F82432 		ldrb	r3, [r3, #548]	@ zero_extendqisi2
 2780 004e 012B     		cmp	r3, #1
 2781 0050 EFD1     		bne	.L534
 2782 0052 D5F88800 		ldr	r0, [r5, #136]	@ float
 2783 0056 D5F8FC11 		ldr	r1, [r5, #508]	@ float
 2784 005a FFF7FEFF 		bl	__aeabi_fadd
 2785 005e 0134     		adds	r4, r4, #1
 2786 0060 092C     		cmp	r4, #9
 2787 0062 C5F88800 		str	r0, [r5, #136]	@ float
 2788 0066 05F10405 		add	r5, r5, #4
 2789 006a EDD1     		bne	.L529
 2790              	.L533:
 2791 006c D6F82002 		ldr	r0, [r6, #544]	@ float
 2792 0070 0023     		movs	r3, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 50


 2793 0072 0121     		movs	r1, #1
 2794 0074 4FF0FF32 		mov	r2, #-1
 2795 0078 18F4004F 		tst	r8, #32768
 2796 007c A6F8D480 		strh	r8, [r6, #212]	@ movhi
 2797 0080 C6F8C400 		str	r0, [r6, #196]	@ float
 2798 0084 C6F8CC30 		str	r3, [r6, #204]
 2799 0088 86F8D830 		strb	r3, [r6, #216]
 2800 008c C6F8C820 		str	r2, [r6, #200]
 2801 0090 C6F8DC10 		str	r1, [r6, #220]
 2802 0094 86F85912 		strb	r1, [r6, #601]
 2803 0098 14D1     		bne	.L535
 2804              	.L528:
 2805 009a 0027     		movs	r7, #0
 2806              	.L530:
 2807 009c 3846     		mov	r0, r7
 2808 009e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2809              	.L531:
 2810 00a2 3046     		mov	r0, r6
 2811 00a4 2146     		mov	r1, r4
 2812 00a6 FFF7FEFF 		bl	_ZN6GCodes3PopER11GCodeBuffer
 2813 00aa 0023     		movs	r3, #0
 2814 00ac 86F85932 		strb	r3, [r6, #601]
 2815 00b0 3846     		mov	r0, r7
 2816 00b2 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2817              	.L532:
 2818 00b6 3046     		mov	r0, r6
 2819 00b8 0127     		movs	r7, #1
 2820 00ba FFF7FEFF 		bl	_ZN6GCodes4PushER11GCodeBuffer.part.43
 2821 00be 3846     		mov	r0, r7
 2822 00c0 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2823              	.L535:
 2824 00c4 3068     		ldr	r0, [r6]
 2825 00c6 FFF7FEFF 		bl	_ZN8Platform10SetProbingEb
 2826 00ca E7E7     		b	.L530
 2827              		.size	_ZN6GCodes17DoCannedCycleMoveER11GCodeBuffert, .-_ZN6GCodes17DoCannedCycleMoveER11GCodeBuffe
 2828              		.section	.text._ZN6GCodes10OffsetAxesER11GCodeBuffer,"ax",%progbits
 2829              		.align	2
 2830              		.global	_ZN6GCodes10OffsetAxesER11GCodeBuffer
 2831              		.thumb
 2832              		.thumb_func
 2833              		.type	_ZN6GCodes10OffsetAxesER11GCodeBuffer, %function
 2834              	_ZN6GCodes10OffsetAxesER11GCodeBuffer:
 2835              		@ args = 0, pretend = 0, frame = 0
 2836              		@ frame_needed = 0, uses_anonymous_args = 0
 2837 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2838 0004 90F82D42 		ldrb	r4, [r0, #557]	@ zero_extendqisi2
 2839 0008 0746     		mov	r7, r0
 2840 000a 8846     		mov	r8, r1
 2841 000c 002C     		cmp	r4, #0
 2842 000e 43D1     		bne	.L537
 2843 0010 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2844 0014 0028     		cmp	r0, #0
 2845 0016 61D0     		beq	.L546
 2846 0018 4FF0000B 		mov	fp, #0
 2847 001c DFF8E8A0 		ldr	r10, .L558+12
 2848 0020 A146     		mov	r9, r4
 2849 0022 3E46     		mov	r6, r7
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 51


 2850 0024 3D46     		mov	r5, r7
 2851 0026 08E0     		b	.L543
 2852              	.L540:
 2853 0028 C5F8D8B1 		str	fp, [r5, #472]	@ float
 2854              	.L541:
 2855 002c 0134     		adds	r4, r4, #1
 2856 002e 092C     		cmp	r4, #9
 2857 0030 06F10106 		add	r6, r6, #1
 2858 0034 05F10405 		add	r5, r5, #4
 2859 0038 23D0     		beq	.L556
 2860              	.L543:
 2861 003a 86F82492 		strb	r9, [r6, #548]
 2862 003e D7F88431 		ldr	r3, [r7, #388]
 2863 0042 A342     		cmp	r3, r4
 2864 0044 F0D9     		bls	.L540
 2865 0046 D5F88830 		ldr	r3, [r5, #136]	@ float
 2866 004a 4046     		mov	r0, r8
 2867 004c C5F8D831 		str	r3, [r5, #472]	@ float
 2868 0050 1AF80410 		ldrb	r1, [r10, r4]	@ zero_extendqisi2
 2869 0054 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2870 0058 0028     		cmp	r0, #0
 2871 005a E7D0     		beq	.L541
 2872 005c 4046     		mov	r0, r8
 2873 005e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2874 0062 D7F83012 		ldr	r1, [r7, #560]	@ float
 2875 0066 FFF7FEFF 		bl	__aeabi_fmul
 2876 006a 0134     		adds	r4, r4, #1
 2877 006c 0123     		movs	r3, #1
 2878 006e 092C     		cmp	r4, #9
 2879 0070 C5F8FC01 		str	r0, [r5, #508]	@ float
 2880 0074 06F10106 		add	r6, r6, #1
 2881 0078 86F82332 		strb	r3, [r6, #547]
 2882 007c 05F10405 		add	r5, r5, #4
 2883 0080 DBD1     		bne	.L543
 2884              	.L556:
 2885 0082 4046     		mov	r0, r8
 2886 0084 4621     		movs	r1, #70
 2887 0086 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2888 008a 50BB     		cbnz	r0, .L557
 2889 008c 1B4B     		ldr	r3, .L558
 2890 008e C7F82032 		str	r3, [r7, #544]	@ float
 2891              	.L545:
 2892 0092 0123     		movs	r3, #1
 2893 0094 87F82D32 		strb	r3, [r7, #557]
 2894              	.L537:
 2895 0098 4146     		mov	r1, r8
 2896 009a 3846     		mov	r0, r7
 2897 009c 0022     		movs	r2, #0
 2898 009e FFF7FEFF 		bl	_ZN6GCodes17DoCannedCycleMoveER11GCodeBuffert
 2899 00a2 D8B1     		cbz	r0, .L546
 2900 00a4 3B46     		mov	r3, r7
 2901 00a6 0022     		movs	r2, #0
 2902              	.L548:
 2903 00a8 D3F8D811 		ldr	r1, [r3, #472]	@ float
 2904 00ac 0132     		adds	r2, r2, #1
 2905 00ae 092A     		cmp	r2, #9
 2906 00b0 C3F88810 		str	r1, [r3, #136]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 52


 2907 00b4 03F10403 		add	r3, r3, #4
 2908 00b8 F6D1     		bne	.L548
 2909 00ba 114D     		ldr	r5, .L558+4
 2910 00bc 07F5EC74 		add	r4, r7, #472
 2911 00c0 A868     		ldr	r0, [r5, #8]
 2912 00c2 2146     		mov	r1, r4
 2913 00c4 FFF7FEFF 		bl	_ZN4Move18SetLiveCoordinatesEPKf
 2914 00c8 A868     		ldr	r0, [r5, #8]
 2915 00ca 2146     		mov	r1, r4
 2916 00cc FFF7FEFF 		bl	_ZN4Move12SetPositionsEPKf
 2917 00d0 0023     		movs	r3, #0
 2918 00d2 87F82D32 		strb	r3, [r7, #557]
 2919 00d6 0120     		movs	r0, #1
 2920 00d8 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2921              	.L546:
 2922 00dc 0020     		movs	r0, #0
 2923 00de BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2924              	.L557:
 2925 00e2 4046     		mov	r0, r8
 2926 00e4 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2927 00e8 D7F83012 		ldr	r1, [r7, #560]	@ float
 2928 00ec FFF7FEFF 		bl	__aeabi_fmul
 2929 00f0 0449     		ldr	r1, .L558+8
 2930 00f2 FFF7FEFF 		bl	__aeabi_fmul
 2931 00f6 C7F82002 		str	r0, [r7, #544]	@ float
 2932 00fa CAE7     		b	.L545
 2933              	.L559:
 2934              		.align	2
 2935              	.L558:
 2936 00fc 00803B45 		.word	1161527296
 2937 0100 00000000 		.word	reprap
 2938 0104 8988883C 		.word	1015580809
 2939 0108 00000000 		.word	.LANCHOR0
 2940              		.size	_ZN6GCodes10OffsetAxesER11GCodeBuffer, .-_ZN6GCodes10OffsetAxesER11GCodeBuffer
 2941              		.section	.text._ZN6GCodes6DoHomeER11GCodeBufferR9StringRefRb,"ax",%progbits
 2942              		.align	2
 2943              		.global	_ZN6GCodes6DoHomeER11GCodeBufferR9StringRefRb
 2944              		.thumb
 2945              		.thumb_func
 2946              		.type	_ZN6GCodes6DoHomeER11GCodeBufferR9StringRefRb, %function
 2947              	_ZN6GCodes6DoHomeER11GCodeBufferR9StringRefRb:
 2948              		@ args = 0, pretend = 0, frame = 0
 2949              		@ frame_needed = 0, uses_anonymous_args = 0
 2950 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2951 0004 83B0     		sub	sp, sp, #12
 2952 0006 9246     		mov	r10, r2
 2953 0008 9B46     		mov	fp, r3
 2954 000a 0546     		mov	r5, r0
 2955 000c 0E46     		mov	r6, r1
 2956 000e FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2957 0012 0746     		mov	r7, r0
 2958 0014 0028     		cmp	r0, #0
 2959 0016 4FD0     		beq	.L579
 2960 0018 444B     		ldr	r3, .L593
 2961 001a 9B68     		ldr	r3, [r3, #8]
 2962 001c 93F86C44 		ldrb	r4, [r3, #1132]	@ zero_extendqisi2
 2963 0020 002C     		cmp	r4, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 53


 2964 0022 61D1     		bne	.L592
 2965 0024 D5F88431 		ldr	r3, [r5, #388]
 2966 0028 A5F84042 		strh	r4, [r5, #576]	@ movhi
 2967 002c 002B     		cmp	r3, #0
 2968 002e 47D0     		beq	.L563
 2969 0030 DFF80881 		ldr	r8, .L593+16
 2970 0034 4FF00109 		mov	r9, #1
 2971              	.L566:
 2972 0038 3046     		mov	r0, r6
 2973 003a 18F80410 		ldrb	r1, [r8, r4]	@ zero_extendqisi2
 2974 003e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2975 0042 60B1     		cbz	r0, .L564
 2976 0044 09FA04F3 		lsl	r3, r9, r4
 2977 0048 B5F84012 		ldrh	r1, [r5, #576]
 2978 004c D5F85C22 		ldr	r2, [r5, #604]
 2979 0050 1943     		orrs	r1, r1, r3
 2980 0052 22EA0303 		bic	r3, r2, r3
 2981 0056 A5F84012 		strh	r1, [r5, #576]	@ movhi
 2982 005a C5F85C32 		str	r3, [r5, #604]
 2983              	.L564:
 2984 005e D5F88431 		ldr	r3, [r5, #388]
 2985 0062 0134     		adds	r4, r4, #1
 2986 0064 A342     		cmp	r3, r4
 2987 0066 E7D8     		bhi	.L566
 2988 0068 B5F84022 		ldrh	r2, [r5, #576]
 2989 006c 42B3     		cbz	r2, .L563
 2990 006e 5007     		lsls	r0, r2, #29
 2991 0070 4FD4     		bmi	.L567
 2992              	.L571:
 2993 0072 0124     		movs	r4, #1
 2994 0074 04FA03F3 		lsl	r3, r4, r3
 2995 0078 013B     		subs	r3, r3, #1
 2996 007a 9A42     		cmp	r2, r3
 2997 007c 25D0     		beq	.L572
 2998 007e 2868     		ldr	r0, [r5]
 2999 0080 FFF7FEFF 		bl	_ZNK8Platform17MustHomeXYBeforeZEv
 3000 0084 0346     		mov	r3, r0
 3001 0086 0028     		cmp	r0, #0
 3002 0088 49D0     		beq	.L569
 3003 008a B5F84022 		ldrh	r2, [r5, #576]
 3004 008e 5107     		lsls	r1, r2, #29
 3005 0090 45D5     		bpl	.L569
 3006 0092 D5F88411 		ldr	r1, [r5, #388]
 3007 0096 D5F85C02 		ldr	r0, [r5, #604]
 3008 009a 04FA01F1 		lsl	r1, r4, r1
 3009 009e 40F00400 		orr	r0, r0, #4
 3010 00a2 0139     		subs	r1, r1, #1
 3011 00a4 0243     		orrs	r2, r2, r0
 3012 00a6 8A42     		cmp	r2, r1
 3013 00a8 39D0     		beq	.L569
 3014 00aa 5046     		mov	r0, r10
 3015 00ac 2049     		ldr	r1, .L593+4
 3016 00ae 1F46     		mov	r7, r3
 3017 00b0 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3018 00b4 8BF80040 		strb	r4, [fp]
 3019              	.L579:
 3020 00b8 3846     		mov	r0, r7
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 54


 3021 00ba 03B0     		add	sp, sp, #12
 3022              		@ sp needed
 3023 00bc BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3024              	.L563:
 3025 00c0 0023     		movs	r3, #0
 3026 00c2 C5F88832 		str	r3, [r5, #648]	@ float
 3027 00c6 C5F88C32 		str	r3, [r5, #652]	@ float
 3028              	.L572:
 3029 00ca 1A4A     		ldr	r2, .L593+8
 3030 00cc 0023     		movs	r3, #0
 3031 00ce C5F85C32 		str	r3, [r5, #604]
 3032 00d2 1268     		ldr	r2, [r2]
 3033 00d4 3146     		mov	r1, r6
 3034 00d6 0093     		str	r3, [sp]
 3035 00d8 2846     		mov	r0, r5
 3036 00da 0123     		movs	r3, #1
 3037 00dc FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 3038 00e0 3846     		mov	r0, r7
 3039 00e2 03B0     		add	sp, sp, #12
 3040              		@ sp needed
 3041 00e4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3042              	.L592:
 3043 00e8 134B     		ldr	r3, .L593+12
 3044 00ea 0020     		movs	r0, #0
 3045 00ec 1A68     		ldr	r2, [r3]
 3046 00ee 0023     		movs	r3, #0
 3047 00f0 C5F88802 		str	r0, [r5, #648]	@ float
 3048 00f4 C5F88C02 		str	r0, [r5, #652]	@ float
 3049 00f8 C5F85C32 		str	r3, [r5, #604]
 3050 00fc 3146     		mov	r1, r6
 3051 00fe 0093     		str	r3, [sp]
 3052 0100 2846     		mov	r0, r5
 3053 0102 0123     		movs	r3, #1
 3054 0104 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 3055 0108 2746     		mov	r7, r4
 3056 010a 3846     		mov	r0, r7
 3057 010c 03B0     		add	sp, sp, #12
 3058              		@ sp needed
 3059 010e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3060              	.L567:
 3061 0112 0021     		movs	r1, #0
 3062 0114 C5F88812 		str	r1, [r5, #648]	@ float
 3063 0118 C5F88C12 		str	r1, [r5, #652]	@ float
 3064 011c A9E7     		b	.L571
 3065              	.L569:
 3066 011e B368     		ldr	r3, [r6, #8]
 3067 0120 0222     		movs	r2, #2
 3068 0122 3846     		mov	r0, r7
 3069 0124 1A74     		strb	r2, [r3, #16]
 3070 0126 03B0     		add	sp, sp, #12
 3071              		@ sp needed
 3072 0128 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3073              	.L594:
 3074              		.align	2
 3075              	.L593:
 3076 012c 00000000 		.word	reprap
 3077 0130 14020000 		.word	.LC23
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 55


 3078 0134 00000000 		.word	.LANCHOR2
 3079 0138 00000000 		.word	.LANCHOR1
 3080 013c 00000000 		.word	.LANCHOR0
 3081              		.size	_ZN6GCodes6DoHomeER11GCodeBufferR9StringRefRb, .-_ZN6GCodes6DoHomeER11GCodeBufferR9StringRef
 3082              		.section	.text._ZN6GCodes8DoZProbeER11GCodeBufferf,"ax",%progbits
 3083              		.align	2
 3084              		.global	_ZN6GCodes8DoZProbeER11GCodeBufferf
 3085              		.thumb
 3086              		.thumb_func
 3087              		.type	_ZN6GCodes8DoZProbeER11GCodeBufferf, %function
 3088              	_ZN6GCodes8DoZProbeER11GCodeBufferf:
 3089              		@ args = 0, pretend = 0, frame = 0
 3090              		@ frame_needed = 0, uses_anonymous_args = 0
 3091 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 3092 0004 0446     		mov	r4, r0
 3093 0006 0068     		ldr	r0, [r0]
 3094 0008 0F46     		mov	r7, r1
 3095 000a D0F89010 		ldr	r1, [r0, #144]
 3096 000e 82B0     		sub	sp, sp, #8
 3097 0010 0729     		cmp	r1, #7
 3098 0012 9046     		mov	r8, r2
 3099 0014 36D0     		beq	.L606
 3100 0016 94F85952 		ldrb	r5, [r4, #601]	@ zero_extendqisi2
 3101 001a 3DB3     		cbz	r5, .L607
 3102              	.L598:
 3103 001c 0023     		movs	r3, #0
 3104 001e 1E46     		mov	r6, r3
 3105              	.L600:
 3106 0020 E518     		adds	r5, r4, r3
 3107 0022 0133     		adds	r3, r3, #1
 3108 0024 092B     		cmp	r3, #9
 3109 0026 85F82462 		strb	r6, [r5, #548]
 3110 002a F9D1     		bne	.L600
 3111 002c 0122     		movs	r2, #1
 3112 002e 08F10048 		add	r8, r8, #-2147483648
 3113 0032 84F82622 		strb	r2, [r4, #550]
 3114 0036 C4F80482 		str	r8, [r4, #516]	@ float
 3115 003a FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersEl
 3116 003e C369     		ldr	r3, [r0, #28]	@ float
 3117 0040 3946     		mov	r1, r7
 3118 0042 C4F82032 		str	r3, [r4, #544]	@ float
 3119 0046 2046     		mov	r0, r4
 3120 0048 4FF40042 		mov	r2, #32768
 3121 004c FFF7FEFF 		bl	_ZN6GCodes17DoCannedCycleMoveER11GCodeBuffert
 3122 0050 28B3     		cbz	r0, .L603
 3123 0052 2068     		ldr	r0, [r4]
 3124 0054 0021     		movs	r1, #0
 3125 0056 FFF7FEFF 		bl	_ZN8Platform10SetProbingEb
 3126 005a 94F89832 		ldrb	r3, [r4, #664]	@ zero_extendqisi2
 3127 005e 002B     		cmp	r3, #0
 3128 0060 0CBF     		ite	eq
 3129 0062 0120     		moveq	r0, #1
 3130 0064 0220     		movne	r0, #2
 3131              	.L597:
 3132 0066 02B0     		add	sp, sp, #8
 3133              		@ sp needed
 3134 0068 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 56


 3135              	.L607:
 3136 006c 0E4B     		ldr	r3, .L608
 3137 006e 1868     		ldr	r0, [r3]
 3138 0070 FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 3139 0074 0128     		cmp	r0, #1
 3140 0076 15D0     		beq	.L602
 3141 0078 2068     		ldr	r0, [r4]
 3142 007a 84F89852 		strb	r5, [r4, #664]
 3143 007e D0F89010 		ldr	r1, [r0, #144]
 3144 0082 CBE7     		b	.L598
 3145              	.L606:
 3146 0084 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersEl
 3147 0088 074A     		ldr	r2, .L608
 3148 008a 816A     		ldr	r1, [r0, #40]	@ float
 3149 008c C369     		ldr	r3, [r0, #28]	@ float
 3150 008e 9068     		ldr	r0, [r2, #8]
 3151 0090 CDF80080 		str	r8, [sp]	@ float
 3152 0094 4FF07E52 		mov	r2, #1065353216
 3153 0098 FFF7FEFF 		bl	_ZN4Move12DoDeltaProbeEffff
 3154 009c E3E7     		b	.L597
 3155              	.L603:
 3156 009e 4FF0FF30 		mov	r0, #-1
 3157 00a2 E0E7     		b	.L597
 3158              	.L602:
 3159 00a4 2846     		mov	r0, r5
 3160 00a6 DEE7     		b	.L597
 3161              	.L609:
 3162              		.align	2
 3163              	.L608:
 3164 00a8 00000000 		.word	reprap
 3165              		.size	_ZN6GCodes8DoZProbeER11GCodeBufferf, .-_ZN6GCodes8DoZProbeER11GCodeBufferf
 3166              		.section	.text._ZN6GCodes14SetPrintZProbeER11GCodeBufferR9StringRef,"ax",%progbits
 3167              		.align	2
 3168              		.global	_ZN6GCodes14SetPrintZProbeER11GCodeBufferR9StringRef
 3169              		.thumb
 3170              		.thumb_func
 3171              		.type	_ZN6GCodes14SetPrintZProbeER11GCodeBufferR9StringRef, %function
 3172              	_ZN6GCodes14SetPrintZProbeER11GCodeBufferR9StringRef:
 3173              		@ args = 0, pretend = 0, frame = 64
 3174              		@ frame_needed = 0, uses_anonymous_args = 0
 3175 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 3176 0004 96B0     		sub	sp, sp, #88
 3177 0006 0746     		mov	r7, r0
 3178 0008 0024     		movs	r4, #0
 3179 000a 0846     		mov	r0, r1
 3180 000c 0E46     		mov	r6, r1
 3181 000e 9046     		mov	r8, r2
 3182 0010 5421     		movs	r1, #84
 3183 0012 07AA     		add	r2, sp, #28
 3184 0014 0DF11A03 		add	r3, sp, #26
 3185 0018 0794     		str	r4, [sp, #28]
 3186 001a 8DF81A40 		strb	r4, [sp, #26]
 3187 001e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 3188 0022 0799     		ldr	r1, [sp, #28]
 3189 0024 3868     		ldr	r0, [r7]
 3190 0026 11B9     		cbnz	r1, .L612
 3191 0028 D0F89010 		ldr	r1, [r0, #144]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 57


 3192 002c 0791     		str	r1, [sp, #28]
 3193              	.L612:
 3194 002e FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersEl
 3195 0032 0AAC     		add	r4, sp, #40
 3196 0034 0546     		mov	r5, r0
 3197 0036 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 3198 0038 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 3199 003a 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 3200 003c 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 3201 003e 95E80F00 		ldmia	r5, {r0, r1, r2, r3}
 3202 0042 0025     		movs	r5, #0
 3203 0044 84E80F00 		stmia	r4, {r0, r1, r2, r3}
 3204 0048 0DF11B03 		add	r3, sp, #27
 3205 004c 3046     		mov	r0, r6
 3206 004e 5821     		movs	r1, #88
 3207 0050 0BAA     		add	r2, sp, #44
 3208 0052 8DF81B50 		strb	r5, [sp, #27]
 3209 0056 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3210 005a 3046     		mov	r0, r6
 3211 005c 0DF11B03 		add	r3, sp, #27
 3212 0060 5921     		movs	r1, #89
 3213 0062 0CAA     		add	r2, sp, #48
 3214 0064 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3215 0068 3046     		mov	r0, r6
 3216 006a 0DF11B03 		add	r3, sp, #27
 3217 006e 5A21     		movs	r1, #90
 3218 0070 0DAA     		add	r2, sp, #52
 3219 0072 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3220 0076 3046     		mov	r0, r6
 3221 0078 5021     		movs	r1, #80
 3222 007a 0DF11B03 		add	r3, sp, #27
 3223 007e 0AAA     		add	r2, sp, #40
 3224 0080 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 3225 0084 3046     		mov	r0, r6
 3226 0086 4321     		movs	r1, #67
 3227 0088 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3228 008c 0028     		cmp	r0, #0
 3229 008e 43D1     		bne	.L629
 3230              	.L613:
 3231 0090 9DF81B30 		ldrb	r3, [sp, #27]	@ zero_extendqisi2
 3232 0094 002B     		cmp	r3, #0
 3233 0096 32D1     		bne	.L630
 3234 0098 9DF81A30 		ldrb	r3, [sp, #26]	@ zero_extendqisi2
 3235 009c B3B9     		cbnz	r3, .L631
 3236 009e 3868     		ldr	r0, [r7]
 3237 00a0 FFF7FEFF 		bl	_ZNK8Platform16GetZProbeReadingEv
 3238 00a4 08A9     		add	r1, sp, #32
 3239 00a6 0446     		mov	r4, r0
 3240 00a8 09AA     		add	r2, sp, #36
 3241 00aa 3868     		ldr	r0, [r7]
 3242 00ac FFF7FEFF 		bl	_ZN8Platform24GetZProbeSecondaryValuesERiS0_
 3243 00b0 0128     		cmp	r0, #1
 3244 00b2 50D0     		beq	.L619
 3245 00b4 0228     		cmp	r0, #2
 3246 00b6 45D0     		beq	.L620
 3247 00b8 4046     		mov	r0, r8
 3248 00ba 2246     		mov	r2, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 58


 3249 00bc 2949     		ldr	r1, .L632
 3250 00be FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 3251              	.L621:
 3252 00c2 0124     		movs	r4, #1
 3253 00c4 2046     		mov	r0, r4
 3254 00c6 16B0     		add	sp, sp, #88
 3255              		@ sp needed
 3256 00c8 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3257              	.L631:
 3258 00cc 0D98     		ldr	r0, [sp, #52]	@ float
 3259 00ce FFF7FEFF 		bl	__aeabi_f2d
 3260 00d2 CDE90001 		strd	r0, [sp]
 3261 00d6 0B98     		ldr	r0, [sp, #44]	@ float
 3262 00d8 FFF7FEFF 		bl	__aeabi_f2d
 3263 00dc CDE90201 		strd	r0, [sp, #8]
 3264 00e0 0C98     		ldr	r0, [sp, #48]	@ float
 3265 00e2 FFF7FEFF 		bl	__aeabi_f2d
 3266 00e6 0A9A     		ldr	r2, [sp, #40]
 3267 00e8 CDE90401 		strd	r0, [sp, #16]
 3268 00ec 4046     		mov	r0, r8
 3269 00ee 1E49     		ldr	r1, .L632+4
 3270 00f0 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 3271 00f4 0124     		movs	r4, #1
 3272              	.L616:
 3273 00f6 2046     		mov	r0, r4
 3274 00f8 16B0     		add	sp, sp, #88
 3275              		@ sp needed
 3276 00fa BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3277              	.L630:
 3278 00fe 3146     		mov	r1, r6
 3279 0100 3846     		mov	r0, r7
 3280 0102 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3281 0106 0446     		mov	r4, r0
 3282 0108 0028     		cmp	r0, #0
 3283 010a F4D0     		beq	.L616
 3284 010c 3868     		ldr	r0, [r7]
 3285 010e 0AAA     		add	r2, sp, #40
 3286 0110 0799     		ldr	r1, [sp, #28]
 3287 0112 FFF7FEFF 		bl	_ZN8Platform19SetZProbeParametersElRK16ZProbeParameters
 3288 0116 EEE7     		b	.L616
 3289              	.L629:
 3290 0118 3046     		mov	r0, r6
 3291 011a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3292 011e 0123     		movs	r3, #1
 3293 0120 0F90     		str	r0, [sp, #60]	@ float
 3294 0122 5321     		movs	r1, #83
 3295 0124 3046     		mov	r0, r6
 3296 0126 8DF81B30 		strb	r3, [sp, #27]
 3297 012a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3298 012e 20B1     		cbz	r0, .L614
 3299 0130 3046     		mov	r0, r6
 3300 0132 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3301 0136 0E90     		str	r0, [sp, #56]	@ float
 3302 0138 AAE7     		b	.L613
 3303              	.L614:
 3304 013a 3868     		ldr	r0, [r7]
 3305 013c FFF7FEFF 		bl	_ZN8Platform20GetZProbeTemperatureEv
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 59


 3306 0140 0E90     		str	r0, [sp, #56]	@ float
 3307 0142 A5E7     		b	.L613
 3308              	.L620:
 3309 0144 0999     		ldr	r1, [sp, #36]
 3310 0146 089B     		ldr	r3, [sp, #32]
 3311 0148 0091     		str	r1, [sp]
 3312 014a 4046     		mov	r0, r8
 3313 014c 2246     		mov	r2, r4
 3314 014e 0749     		ldr	r1, .L632+8
 3315 0150 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 3316 0154 B5E7     		b	.L621
 3317              	.L619:
 3318 0156 4046     		mov	r0, r8
 3319 0158 2246     		mov	r2, r4
 3320 015a 0549     		ldr	r1, .L632+12
 3321 015c 089B     		ldr	r3, [sp, #32]
 3322 015e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 3323 0162 AEE7     		b	.L621
 3324              	.L633:
 3325              		.align	2
 3326              	.L632:
 3327 0164 8C020000 		.word	.LC27
 3328 0168 40020000 		.word	.LC24
 3329 016c 80020000 		.word	.LC26
 3330 0170 78020000 		.word	.LC25
 3331              		.size	_ZN6GCodes14SetPrintZProbeER11GCodeBufferR9StringRef, .-_ZN6GCodes14SetPrintZProbeER11GCodeB
 3332              		.global	__aeabi_dsub
 3333              		.global	__aeabi_ddiv
 3334              		.global	__aeabi_dmul
 3335              		.section	.text._ZN6GCodes10DefineGridER11GCodeBufferR9StringRef,"ax",%progbits
 3336              		.align	2
 3337              		.global	_ZN6GCodes10DefineGridER11GCodeBufferR9StringRef
 3338              		.thumb
 3339              		.thumb_func
 3340              		.type	_ZN6GCodes10DefineGridER11GCodeBufferR9StringRef, %function
 3341              	_ZN6GCodes10DefineGridER11GCodeBufferR9StringRef:
 3342              		@ args = 0, pretend = 0, frame = 72
 3343              		@ frame_needed = 0, uses_anonymous_args = 0
 3344 0000 2DE9704F 		push	{r4, r5, r6, r8, r9, r10, fp, lr}
 3345 0004 0846     		mov	r0, r1
 3346 0006 94B0     		sub	sp, sp, #80
 3347 0008 0025     		movs	r5, #0
 3348 000a 0C46     		mov	r4, r1
 3349 000c 5821     		movs	r1, #88
 3350 000e 9046     		mov	r8, r2
 3351 0010 8DF80E50 		strb	r5, [sp, #14]
 3352 0014 8DF80F50 		strb	r5, [sp, #15]
 3353 0018 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3354 001c 0028     		cmp	r0, #0
 3355 001e 44D0     		beq	.L652
 3356 0020 2B46     		mov	r3, r5
 3357 0022 2046     		mov	r0, r4
 3358 0024 0225     		movs	r5, #2
 3359 0026 06A9     		add	r1, sp, #24
 3360 0028 0AAA     		add	r2, sp, #40
 3361 002a 0A95     		str	r5, [sp, #40]
 3362 002c FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 60


 3363 0030 0A9B     		ldr	r3, [sp, #40]
 3364 0032 AB42     		cmp	r3, r5
 3365 0034 40F08880 		bne	.L636
 3366 0038 2046     		mov	r0, r4
 3367 003a 5921     		movs	r1, #89
 3368 003c 0125     		movs	r5, #1
 3369 003e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3370 0042 0028     		cmp	r0, #0
 3371 0044 38D1     		bne	.L659
 3372              	.L638:
 3373 0046 824B     		ldr	r3, .L660+8
 3374 0048 14AA     		add	r2, sp, #80
 3375 004a 42F8403D 		str	r3, [r2, #-64]!	@ float
 3376 004e 2046     		mov	r0, r4
 3377 0050 5221     		movs	r1, #82
 3378 0052 0DF10E03 		add	r3, sp, #14
 3379 0056 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3380 005a 7E4B     		ldr	r3, .L660+12
 3381 005c 14AA     		add	r2, sp, #80
 3382 005e 42F83C3D 		str	r3, [r2, #-60]!	@ float
 3383 0062 2046     		mov	r0, r4
 3384 0064 5321     		movs	r1, #83
 3385 0066 0DF10F03 		add	r3, sp, #15
 3386 006a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3387 006e 002D     		cmp	r5, #0
 3388 0070 73D1     		bne	.L641
 3389 0072 9DF80E30 		ldrb	r3, [sp, #14]	@ zero_extendqisi2
 3390 0076 002B     		cmp	r3, #0
 3391 0078 40F08180 		bne	.L642
 3392 007c 9DF80F30 		ldrb	r3, [sp, #15]	@ zero_extendqisi2
 3393 0080 002B     		cmp	r3, #0
 3394 0082 40F0CE80 		bne	.L643
 3395 0086 744B     		ldr	r3, .L660+16
 3396 0088 4046     		mov	r0, r8
 3397 008a 9E68     		ldr	r6, [r3, #8]
 3398 008c 96F80C44 		ldrb	r4, [r6, #1036]	@ zero_extendqisi2
 3399 0090 002C     		cmp	r4, #0
 3400 0092 00F0D280 		beq	.L644
 3401 0096 7149     		ldr	r1, .L660+20
 3402 0098 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3403 009c 06F57A70 		add	r0, r6, #1000
 3404 00a0 4146     		mov	r1, r8
 3405 00a2 2C46     		mov	r4, r5
 3406 00a4 FFF7FEFF 		bl	_ZNK14GridDefinition15PrintParametersER9StringRef
 3407 00a8 53E0     		b	.L654
 3408              	.L652:
 3409 00aa 0546     		mov	r5, r0
 3410 00ac 5921     		movs	r1, #89
 3411 00ae 2046     		mov	r0, r4
 3412 00b0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3413 00b4 0028     		cmp	r0, #0
 3414 00b6 C6D0     		beq	.L638
 3415              	.L659:
 3416 00b8 0DF12809 		add	r9, sp, #40
 3417 00bc 0226     		movs	r6, #2
 3418 00be 0023     		movs	r3, #0
 3419 00c0 08A9     		add	r1, sp, #32
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 61


 3420 00c2 4A46     		mov	r2, r9
 3421 00c4 2046     		mov	r0, r4
 3422 00c6 0A96     		str	r6, [sp, #40]
 3423 00c8 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 3424 00cc 0A9B     		ldr	r3, [sp, #40]
 3425 00ce B342     		cmp	r3, r6
 3426 00d0 4CD1     		bne	.L639
 3427 00d2 5F4B     		ldr	r3, .L660+8
 3428 00d4 14AA     		add	r2, sp, #80
 3429 00d6 42F8403D 		str	r3, [r2, #-64]!	@ float
 3430 00da 2046     		mov	r0, r4
 3431 00dc 5221     		movs	r1, #82
 3432 00de 0DF10E03 		add	r3, sp, #14
 3433 00e2 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3434 00e6 5B4B     		ldr	r3, .L660+12
 3435 00e8 14AA     		add	r2, sp, #80
 3436 00ea 42F83C3D 		str	r3, [r2, #-60]!	@ float
 3437 00ee 2046     		mov	r0, r4
 3438 00f0 5321     		movs	r1, #83
 3439 00f2 0DF10F03 		add	r3, sp, #15
 3440 00f6 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3441 00fa 002D     		cmp	r5, #0
 3442 00fc 2DD0     		beq	.L641
 3443 00fe 059B     		ldr	r3, [sp, #20]	@ float
 3444 0100 08AA     		add	r2, sp, #32
 3445 0102 0093     		str	r3, [sp]	@ float
 3446 0104 4846     		mov	r0, r9
 3447 0106 049B     		ldr	r3, [sp, #16]	@ float
 3448 0108 06A9     		add	r1, sp, #24
 3449 010a FFF7FEFF 		bl	_ZN14GridDefinitionC1EPKfS1_ff
 3450 010e 9DF84C30 		ldrb	r3, [sp, #76]	@ zero_extendqisi2
 3451 0112 002B     		cmp	r3, #0
 3452 0114 7CD1     		bne	.L647
 3453 0116 0699     		ldr	r1, [sp, #24]	@ float
 3454 0118 0798     		ldr	r0, [sp, #28]	@ float
 3455 011a FFF7FEFF 		bl	__aeabi_fsub
 3456 011e 0899     		ldr	r1, [sp, #32]	@ float
 3457 0120 0446     		mov	r4, r0
 3458 0122 0998     		ldr	r0, [sp, #36]	@ float
 3459 0124 FFF7FEFF 		bl	__aeabi_fsub
 3460 0128 0546     		mov	r5, r0
 3461              	.L649:
 3462 012a 4046     		mov	r0, r8
 3463 012c 4C49     		ldr	r1, .L660+24
 3464 012e FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3465 0132 4846     		mov	r0, r9
 3466 0134 2146     		mov	r1, r4
 3467 0136 2A46     		mov	r2, r5
 3468 0138 4346     		mov	r3, r8
 3469 013a FFF7FEFF 		bl	_ZNK14GridDefinition10PrintErrorEffR9StringRef
 3470 013e 0124     		movs	r4, #1
 3471 0140 2046     		mov	r0, r4
 3472 0142 14B0     		add	sp, sp, #80
 3473              		@ sp needed
 3474 0144 BDE8708F 		pop	{r4, r5, r6, r8, r9, r10, fp, pc}
 3475              	.L636:
 3476 0148 4046     		mov	r0, r8
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 62


 3477 014a 4649     		ldr	r1, .L660+28
 3478 014c FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3479 0150 0124     		movs	r4, #1
 3480              	.L654:
 3481 0152 2046     		mov	r0, r4
 3482 0154 14B0     		add	sp, sp, #80
 3483              		@ sp needed
 3484 0156 BDE8708F 		pop	{r4, r5, r6, r8, r9, r10, fp, pc}
 3485              	.L641:
 3486 015a 4046     		mov	r0, r8
 3487 015c 4249     		ldr	r1, .L660+32
 3488 015e FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3489 0162 0124     		movs	r4, #1
 3490 0164 2046     		mov	r0, r4
 3491 0166 14B0     		add	sp, sp, #80
 3492              		@ sp needed
 3493 0168 BDE8708F 		pop	{r4, r5, r6, r8, r9, r10, fp, pc}
 3494              	.L639:
 3495 016c 4046     		mov	r0, r8
 3496 016e 3F49     		ldr	r1, .L660+36
 3497 0170 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3498 0174 0124     		movs	r4, #1
 3499 0176 2046     		mov	r0, r4
 3500 0178 14B0     		add	sp, sp, #80
 3501              		@ sp needed
 3502 017a BDE8708F 		pop	{r4, r5, r6, r8, r9, r10, fp, pc}
 3503              	.L642:
 3504 017e DDF810A0 		ldr	r10, [sp, #16]	@ float
 3505 0182 0021     		movs	r1, #0
 3506 0184 5046     		mov	r0, r10
 3507 0186 FFF7FEFF 		bl	__aeabi_fcmpgt
 3508 018a 0028     		cmp	r0, #0
 3509 018c 4FD0     		beq	.L655
 3510 018e DDF814B0 		ldr	fp, [sp, #20]	@ float
 3511 0192 0DF12809 		add	r9, sp, #40
 3512 0196 5846     		mov	r0, fp
 3513 0198 FFF7FEFF 		bl	__aeabi_f2d
 3514 019c 0446     		mov	r4, r0
 3515 019e 5046     		mov	r0, r10
 3516 01a0 0D46     		mov	r5, r1
 3517 01a2 FFF7FEFF 		bl	__aeabi_f2d
 3518 01a6 28A3     		adr	r3, .L660
 3519 01a8 D3E90023 		ldrd	r2, [r3]
 3520 01ac FFF7FEFF 		bl	__aeabi_dsub
 3521 01b0 2246     		mov	r2, r4
 3522 01b2 2B46     		mov	r3, r5
 3523 01b4 FFF7FEFF 		bl	__aeabi_ddiv
 3524 01b8 FFF7FEFF 		bl	floor
 3525 01bc 0246     		mov	r2, r0
 3526 01be 0B46     		mov	r3, r1
 3527 01c0 2046     		mov	r0, r4
 3528 01c2 2946     		mov	r1, r5
 3529 01c4 FFF7FEFF 		bl	__aeabi_dmul
 3530 01c8 FFF7FEFF 		bl	__aeabi_d2f
 3531 01cc 00F10043 		add	r3, r0, #-2147483648
 3532 01d0 0893     		str	r3, [sp, #32]	@ float
 3533 01d2 0693     		str	r3, [sp, #24]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 63


 3534 01d4 FFF7FEFF 		bl	__aeabi_f2d
 3535 01d8 1BA3     		adr	r3, .L660
 3536 01da D3E90023 		ldrd	r2, [r3]
 3537 01de FFF7FEFF 		bl	__aeabi_dadd
 3538 01e2 FFF7FEFF 		bl	__aeabi_d2f
 3539 01e6 5346     		mov	r3, r10
 3540 01e8 0446     		mov	r4, r0
 3541 01ea CDF800B0 		str	fp, [sp]	@ float
 3542 01ee 4846     		mov	r0, r9
 3543 01f0 06A9     		add	r1, sp, #24
 3544 01f2 08AA     		add	r2, sp, #32
 3545 01f4 0994     		str	r4, [sp, #36]	@ float
 3546 01f6 0794     		str	r4, [sp, #28]	@ float
 3547 01f8 FFF7FEFF 		bl	_ZN14GridDefinitionC1EPKfS1_ff
 3548 01fc 9DF84C30 		ldrb	r3, [sp, #76]	@ zero_extendqisi2
 3549 0200 33B9     		cbnz	r3, .L647
 3550 0202 0498     		ldr	r0, [sp, #16]	@ float
 3551 0204 0146     		mov	r1, r0
 3552 0206 FFF7FEFF 		bl	__aeabi_fadd
 3553 020a 0446     		mov	r4, r0
 3554 020c 0546     		mov	r5, r0
 3555 020e 8CE7     		b	.L649
 3556              	.L647:
 3557 0210 114B     		ldr	r3, .L660+16
 3558 0212 4946     		mov	r1, r9
 3559 0214 9868     		ldr	r0, [r3, #8]
 3560 0216 0024     		movs	r4, #0
 3561 0218 00F57A70 		add	r0, r0, #1000
 3562 021c FFF7FEFF 		bl	_ZN9HeightMap7SetGridERK14GridDefinition
 3563 0220 97E7     		b	.L654
 3564              	.L643:
 3565 0222 4046     		mov	r0, r8
 3566 0224 1249     		ldr	r1, .L660+40
 3567 0226 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3568 022a 0124     		movs	r4, #1
 3569 022c 91E7     		b	.L654
 3570              	.L655:
 3571 022e 4046     		mov	r0, r8
 3572 0230 1049     		ldr	r1, .L660+44
 3573 0232 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3574 0236 0124     		movs	r4, #1
 3575 0238 8BE7     		b	.L654
 3576              	.L644:
 3577 023a 0F49     		ldr	r1, .L660+48
 3578 023c FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3579 0240 87E7     		b	.L654
 3580              	.L661:
 3581 0242 00BFAFF3 		.align	3
 3581      0080
 3582              	.L660:
 3583 0248 9A999999 		.word	-1717986918
 3584 024c 9999B93F 		.word	1069128089
 3585 0250 000080BF 		.word	-1082130432
 3586 0254 0000A041 		.word	1101004800
 3587 0258 00000000 		.word	reprap
 3588 025c E8020000 		.word	.LC30
 3589 0260 9C030000 		.word	.LC35
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 64


 3590 0264 90020000 		.word	.LC28
 3591 0268 04030000 		.word	.LC32
 3592 026c BC020000 		.word	.LC29
 3593 0270 30030000 		.word	.LC33
 3594 0274 60030000 		.word	.LC34
 3595 0278 F0020000 		.word	.LC31
 3596              		.size	_ZN6GCodes10DefineGridER11GCodeBufferR9StringRef, .-_ZN6GCodes10DefineGridER11GCodeBufferR9S
 3597 027c AFF30080 		.section	.text._ZN6GCodes9ProbeGridER11GCodeBufferR9StringRef,"ax",%progbits
 3598              		.align	2
 3599              		.global	_ZN6GCodes9ProbeGridER11GCodeBufferR9StringRef
 3600              		.thumb
 3601              		.thumb_func
 3602              		.type	_ZN6GCodes9ProbeGridER11GCodeBufferR9StringRef, %function
 3603              	_ZN6GCodes9ProbeGridER11GCodeBufferR9StringRef:
 3604              		@ args = 0, pretend = 0, frame = 0
 3605              		@ frame_needed = 0, uses_anonymous_args = 0
 3606 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 3607 0002 1A4C     		ldr	r4, .L667
 3608 0004 0346     		mov	r3, r0
 3609 0006 A568     		ldr	r5, [r4, #8]
 3610 0008 0F46     		mov	r7, r1
 3611 000a 95F80C44 		ldrb	r4, [r5, #1036]	@ zero_extendqisi2
 3612 000e 2CB3     		cbz	r4, .L666
 3613 0010 D0F88401 		ldr	r0, [r0, #388]
 3614 0014 0126     		movs	r6, #1
 3615 0016 8640     		lsls	r6, r6, r0
 3616 0018 D3F85C02 		ldr	r0, [r3, #604]
 3617 001c 013E     		subs	r6, r6, #1
 3618 001e 3040     		ands	r0, r0, r6
 3619 0020 8642     		cmp	r6, r0
 3620 0022 05D0     		beq	.L665
 3621 0024 1046     		mov	r0, r2
 3622 0026 1249     		ldr	r1, .L667+4
 3623 0028 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3624 002c 2046     		mov	r0, r4
 3625 002e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3626              	.L665:
 3627 0030 0024     		movs	r4, #0
 3628 0032 05F57A76 		add	r6, r5, #1000
 3629 0036 C3F8A042 		str	r4, [r3, #672]
 3630 003a C3F89C42 		str	r4, [r3, #668]
 3631 003e 2146     		mov	r1, r4
 3632 0040 3046     		mov	r0, r6
 3633 0042 FFF7FEFF 		bl	_ZN9HeightMap12UseHeightMapEb
 3634 0046 3046     		mov	r0, r6
 3635 0048 FFF7FEFF 		bl	_ZN9HeightMap16ClearGridHeightsEv
 3636 004c 2846     		mov	r0, r5
 3637 004e FFF7FEFF 		bl	_ZN4Move20SetIdentityTransformEv
 3638 0052 BB68     		ldr	r3, [r7, #8]
 3639 0054 1522     		movs	r2, #21
 3640 0056 1A74     		strb	r2, [r3, #16]
 3641 0058 2046     		mov	r0, r4
 3642 005a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3643              	.L666:
 3644 005c 1046     		mov	r0, r2
 3645 005e 0549     		ldr	r1, .L667+8
 3646 0060 0124     		movs	r4, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 65


 3647 0062 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3648 0066 2046     		mov	r0, r4
 3649 0068 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3650              	.L668:
 3651 006a 00BF     		.align	2
 3652              	.L667:
 3653 006c 00000000 		.word	reprap
 3654 0070 E0030000 		.word	.LC37
 3655 0074 B4030000 		.word	.LC36
 3656              		.size	_ZN6GCodes9ProbeGridER11GCodeBufferR9StringRef, .-_ZN6GCodes9ProbeGridER11GCodeBufferR9Strin
 3657              		.section	.text._ZNK6GCodes13LoadHeightMapER11GCodeBufferR9StringRef,"ax",%progbits
 3658              		.align	2
 3659              		.global	_ZNK6GCodes13LoadHeightMapER11GCodeBufferR9StringRef
 3660              		.thumb
 3661              		.thumb_func
 3662              		.type	_ZNK6GCodes13LoadHeightMapER11GCodeBufferR9StringRef, %function
 3663              	_ZNK6GCodes13LoadHeightMapER11GCodeBufferR9StringRef:
 3664              		@ args = 0, pretend = 0, frame = 0
 3665              		@ frame_needed = 0, uses_anonymous_args = 0
 3666 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 3667 0002 214F     		ldr	r7, .L679
 3668 0004 0C46     		mov	r4, r1
 3669 0006 0546     		mov	r5, r0
 3670 0008 B868     		ldr	r0, [r7, #8]
 3671 000a 1646     		mov	r6, r2
 3672 000c FFF7FEFF 		bl	_ZN4Move20SetIdentityTransformEv
 3673 0010 2046     		mov	r0, r4
 3674 0012 5021     		movs	r1, #80
 3675 0014 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3676 0018 28BB     		cbnz	r0, .L676
 3677 001a 1C4B     		ldr	r3, .L679+4
 3678 001c 1C68     		ldr	r4, [r3]
 3679              	.L671:
 3680 001e 2868     		ldr	r0, [r5]
 3681 0020 1B49     		ldr	r1, .L679+8
 3682 0022 2246     		mov	r2, r4
 3683 0024 0023     		movs	r3, #0
 3684 0026 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 3685 002a 0546     		mov	r5, r0
 3686 002c 20B3     		cbz	r0, .L677
 3687 002e 2246     		mov	r2, r4
 3688 0030 1849     		ldr	r1, .L679+12
 3689 0032 3046     		mov	r0, r6
 3690 0034 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 3691 0038 BF68     		ldr	r7, [r7, #8]
 3692 003a 2946     		mov	r1, r5
 3693 003c 07F57A77 		add	r7, r7, #1000
 3694 0040 3846     		mov	r0, r7
 3695 0042 3246     		mov	r2, r6
 3696 0044 FFF7FEFF 		bl	_ZN9HeightMap12LoadFromFileEP9FileStoreR9StringRef
 3697 0048 0446     		mov	r4, r0
 3698 004a 2846     		mov	r0, r5
 3699 004c FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 3700 0050 74B9     		cbnz	r4, .L678
 3701 0052 3368     		ldr	r3, [r6]
 3702 0054 1C70     		strb	r4, [r3]
 3703              	.L675:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 66


 3704 0056 84F00101 		eor	r1, r4, #1
 3705 005a 3846     		mov	r0, r7
 3706 005c C9B2     		uxtb	r1, r1
 3707 005e FFF7FEFF 		bl	_ZN9HeightMap12UseHeightMapEb
 3708 0062 2046     		mov	r0, r4
 3709 0064 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3710              	.L676:
 3711 0066 2046     		mov	r0, r4
 3712 0068 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 3713 006c 0446     		mov	r4, r0
 3714 006e D6E7     		b	.L671
 3715              	.L678:
 3716 0070 3846     		mov	r0, r7
 3717 0072 FFF7FEFF 		bl	_ZN9HeightMap16ClearGridHeightsEv
 3718 0076 EEE7     		b	.L675
 3719              	.L677:
 3720 0078 3046     		mov	r0, r6
 3721 007a 2246     		mov	r2, r4
 3722 007c 0649     		ldr	r1, .L679+16
 3723 007e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 3724 0082 0120     		movs	r0, #1
 3725 0084 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3726              	.L680:
 3727 0086 00BF     		.align	2
 3728              	.L679:
 3729 0088 00000000 		.word	reprap
 3730 008c 00000000 		.word	.LANCHOR3
 3731 0090 DC010000 		.word	.LC20
 3732 0094 2C040000 		.word	.LC39
 3733 0098 0C040000 		.word	.LC38
 3734              		.size	_ZNK6GCodes13LoadHeightMapER11GCodeBufferR9StringRef, .-_ZNK6GCodes13LoadHeightMapER11GCodeB
 3735              		.section	.text._ZNK6GCodes13SaveHeightMapER11GCodeBufferR9StringRef,"ax",%progbits
 3736              		.align	2
 3737              		.global	_ZNK6GCodes13SaveHeightMapER11GCodeBufferR9StringRef
 3738              		.thumb
 3739              		.thumb_func
 3740              		.type	_ZNK6GCodes13SaveHeightMapER11GCodeBufferR9StringRef, %function
 3741              	_ZNK6GCodes13SaveHeightMapER11GCodeBufferR9StringRef:
 3742              		@ args = 0, pretend = 0, frame = 0
 3743              		@ frame_needed = 0, uses_anonymous_args = 0
 3744 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 3745 0004 0846     		mov	r0, r1
 3746 0006 0C46     		mov	r4, r1
 3747 0008 5021     		movs	r1, #80
 3748 000a 9046     		mov	r8, r2
 3749 000c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3750 0010 0028     		cmp	r0, #0
 3751 0012 2DD1     		bne	.L687
 3752 0014 214B     		ldr	r3, .L689
 3753 0016 1C68     		ldr	r4, [r3]
 3754              	.L683:
 3755 0018 214E     		ldr	r6, .L689+4
 3756 001a 2249     		ldr	r1, .L689+8
 3757 001c 3768     		ldr	r7, [r6]
 3758 001e 2246     		mov	r2, r4
 3759 0020 3846     		mov	r0, r7
 3760 0022 0123     		movs	r3, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 67


 3761 0024 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 3762 0028 0546     		mov	r5, r0
 3763 002a 0028     		cmp	r0, #0
 3764 002c 2ED0     		beq	.L688
 3765 002e B068     		ldr	r0, [r6, #8]
 3766 0030 2946     		mov	r1, r5
 3767 0032 00F57A70 		add	r0, r0, #1000
 3768 0036 FFF7FEFF 		bl	_ZNK9HeightMap10SaveToFileEP9FileStore
 3769 003a 0646     		mov	r6, r0
 3770 003c 2846     		mov	r0, r5
 3771 003e FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 3772 0042 6EB1     		cbz	r6, .L686
 3773 0044 2246     		mov	r2, r4
 3774 0046 D7F8B406 		ldr	r0, [r7, #1716]
 3775 004a 1649     		ldr	r1, .L689+8
 3776 004c FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_
 3777 0050 4046     		mov	r0, r8
 3778 0052 2246     		mov	r2, r4
 3779 0054 1449     		ldr	r1, .L689+12
 3780 0056 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 3781 005a 0120     		movs	r0, #1
 3782 005c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3783              	.L686:
 3784 0060 4046     		mov	r0, r8
 3785 0062 2246     		mov	r2, r4
 3786 0064 1149     		ldr	r1, .L689+16
 3787 0066 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 3788 006a 3046     		mov	r0, r6
 3789 006c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3790              	.L687:
 3791 0070 2046     		mov	r0, r4
 3792 0072 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 3793 0076 0578     		ldrb	r5, [r0]	@ zero_extendqisi2
 3794 0078 0446     		mov	r4, r0
 3795 007a 002D     		cmp	r5, #0
 3796 007c CCD1     		bne	.L683
 3797 007e 4046     		mov	r0, r8
 3798 0080 0B49     		ldr	r1, .L689+20
 3799 0082 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 3800 0086 2846     		mov	r0, r5
 3801 0088 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3802              	.L688:
 3803 008c 4046     		mov	r0, r8
 3804 008e 2246     		mov	r2, r4
 3805 0090 0849     		ldr	r1, .L689+24
 3806 0092 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 3807 0096 0120     		movs	r0, #1
 3808 0098 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3809              	.L690:
 3810              		.align	2
 3811              	.L689:
 3812 009c 00000000 		.word	.LANCHOR3
 3813 00a0 00000000 		.word	reprap
 3814 00a4 DC010000 		.word	.LC20
 3815 00a8 A0040000 		.word	.LC42
 3816 00ac C8040000 		.word	.LC43
 3817 00b0 58040000 		.word	.LC40
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 68


 3818 00b4 7C040000 		.word	.LC41
 3819              		.size	_ZNK6GCodes13SaveHeightMapER11GCodeBufferR9StringRef, .-_ZNK6GCodes13SaveHeightMapER11GCodeB
 3820              		.section	.text._ZNK6GCodes21GetCurrentCoordinatesER9StringRef,"ax",%progbits
 3821              		.align	2
 3822              		.global	_ZNK6GCodes21GetCurrentCoordinatesER9StringRef
 3823              		.thumb
 3824              		.thumb_func
 3825              		.type	_ZNK6GCodes21GetCurrentCoordinatesER9StringRef, %function
 3826              	_ZNK6GCodes21GetCurrentCoordinatesER9StringRef:
 3827              		@ args = 0, pretend = 0, frame = 40
 3828              		@ frame_needed = 0, uses_anonymous_args = 0
 3829 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3830 0004 DFF8F080 		ldr	r8, .L706+16
 3831 0008 8DB0     		sub	sp, sp, #52
 3832 000a 0646     		mov	r6, r0
 3833 000c 4046     		mov	r0, r8
 3834 000e D8F80840 		ldr	r4, [r8, #8]
 3835 0012 0D46     		mov	r5, r1
 3836 0014 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 3837 0018 0DF10C09 		add	r9, sp, #12
 3838 001c 0246     		mov	r2, r0
 3839 001e 4946     		mov	r1, r9
 3840 0020 2046     		mov	r0, r4
 3841 0022 FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfm
 3842 0026 D8F82470 		ldr	r7, [r8, #36]
 3843 002a 87B1     		cbz	r7, .L695
 3844 002c D6F88431 		ldr	r3, [r6, #388]
 3845 0030 9437     		adds	r7, r7, #148
 3846 0032 63B1     		cbz	r3, .L695
 3847 0034 4FEA830A 		lsl	r10, r3, #2
 3848 0038 0024     		movs	r4, #0
 3849              	.L696:
 3850 003a 59F80400 		ldr	r0, [r9, r4]	@ float
 3851 003e 3959     		ldr	r1, [r7, r4]	@ float
 3852 0040 FFF7FEFF 		bl	__aeabi_fadd
 3853 0044 49F80400 		str	r0, [r9, r4]	@ float
 3854 0048 0434     		adds	r4, r4, #4
 3855 004a 5445     		cmp	r4, r10
 3856 004c F5D1     		bne	.L696
 3857              	.L695:
 3858 004e 2B68     		ldr	r3, [r5]
 3859 0050 0027     		movs	r7, #0
 3860 0052 1F70     		strb	r7, [r3]
 3861 0054 D6F88441 		ldr	r4, [r6, #388]
 3862 0058 A4B1     		cbz	r4, .L694
 3863 005a DFF8A0B0 		ldr	fp, .L706+20
 3864 005e 0DF1080A 		add	r10, sp, #8
 3865              	.L698:
 3866 0062 5AF8040F 		ldr	r0, [r10, #4]!	@ float
 3867 0066 FFF7FEFF 		bl	__aeabi_f2d
 3868 006a 1BF80720 		ldrb	r2, [fp, r7]	@ zero_extendqisi2
 3869 006e CDE90001 		strd	r0, [sp]
 3870 0072 2846     		mov	r0, r5
 3871 0074 1C49     		ldr	r1, .L706
 3872 0076 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 3873 007a D6F88441 		ldr	r4, [r6, #388]
 3874 007e 0137     		adds	r7, r7, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 69


 3875 0080 BC42     		cmp	r4, r7
 3876 0082 EED8     		bhi	.L698
 3877              	.L694:
 3878 0084 671E     		subs	r7, r4, #1
 3879 0086 09EB8707 		add	r7, r9, r7, lsl #2
 3880 008a 2346     		mov	r3, r4
 3881 008c 01E0     		b	.L697
 3882              	.L699:
 3883 008e D6F88431 		ldr	r3, [r6, #388]
 3884              	.L697:
 3885 0092 57F8040F 		ldr	r0, [r7, #4]!	@ float
 3886 0096 C3EB0409 		rsb	r9, r3, r4
 3887 009a FFF7FEFF 		bl	__aeabi_f2d
 3888 009e 0134     		adds	r4, r4, #1
 3889 00a0 CDE90001 		strd	r0, [sp]
 3890 00a4 4A46     		mov	r2, r9
 3891 00a6 2846     		mov	r0, r5
 3892 00a8 1049     		ldr	r1, .L706+4
 3893 00aa FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 3894 00ae 082C     		cmp	r4, #8
 3895 00b0 EDD9     		bls	.L699
 3896 00b2 2846     		mov	r0, r5
 3897 00b4 0E49     		ldr	r1, .L706+8
 3898 00b6 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 3899 00ba D6F88431 		ldr	r3, [r6, #388]
 3900 00be 0024     		movs	r4, #0
 3901 00c0 7BB1     		cbz	r3, .L691
 3902              	.L702:
 3903 00c2 D8F80830 		ldr	r3, [r8, #8]
 3904 00c6 04F11402 		add	r2, r4, #20
 3905 00ca 03EB8203 		add	r3, r3, r2, lsl #2
 3906 00ce 5A68     		ldr	r2, [r3, #4]
 3907 00d0 2846     		mov	r0, r5
 3908 00d2 0849     		ldr	r1, .L706+12
 3909 00d4 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 3910 00d8 D6F88431 		ldr	r3, [r6, #388]
 3911 00dc 0134     		adds	r4, r4, #1
 3912 00de A342     		cmp	r3, r4
 3913 00e0 EFD8     		bhi	.L702
 3914              	.L691:
 3915 00e2 0DB0     		add	sp, sp, #52
 3916              		@ sp needed
 3917 00e4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3918              	.L707:
 3919              		.align	2
 3920              	.L706:
 3921 00e8 E4040000 		.word	.LC44
 3922 00ec F0040000 		.word	.LC45
 3923 00f0 FC040000 		.word	.LC46
 3924 00f4 04050000 		.word	.LC47
 3925 00f8 00000000 		.word	reprap
 3926 00fc 00000000 		.word	.LANCHOR0
 3927              		.size	_ZNK6GCodes21GetCurrentCoordinatesER9StringRef, .-_ZNK6GCodes21GetCurrentCoordinatesER9Strin
 3928              		.section	.text._ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_,"ax",%progbits
 3929              		.align	2
 3930              		.global	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_
 3931              		.thumb
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 70


 3932              		.thumb_func
 3933              		.type	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_, %function
 3934              	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_:
 3935              		@ args = 0, pretend = 0, frame = 0
 3936              		@ frame_needed = 0, uses_anonymous_args = 0
 3937 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 3938 0004 0446     		mov	r4, r0
 3939 0006 1646     		mov	r6, r2
 3940 0008 1F46     		mov	r7, r3
 3941 000a 8846     		mov	r8, r1
 3942 000c 0068     		ldr	r0, [r0]
 3943 000e 1146     		mov	r1, r2
 3944 0010 1A46     		mov	r2, r3
 3945 0012 0123     		movs	r3, #1
 3946 0014 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 3947 0018 0023     		movs	r3, #0
 3948 001a 0546     		mov	r5, r0
 3949 001c C4F83C02 		str	r0, [r4, #572]
 3950 0020 84F85032 		strb	r3, [r4, #592]
 3951 0024 20B1     		cbz	r0, .L711
 3952 0026 C8F88460 		str	r6, [r8, #132]
 3953 002a 0120     		movs	r0, #1
 3954 002c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3955              	.L711:
 3956 0030 2068     		ldr	r0, [r4]
 3957 0032 3B46     		mov	r3, r7
 3958 0034 0621     		movs	r1, #6
 3959 0036 034A     		ldr	r2, .L712
 3960 0038 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3961 003c 2846     		mov	r0, r5
 3962 003e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3963              	.L713:
 3964 0042 00BF     		.align	2
 3965              	.L712:
 3966 0044 08050000 		.word	.LC48
 3967              		.size	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_, .-_ZN6GCodes15OpenFileToWriteER11GCodeBuff
 3968              		.section	.text._ZN6GCodes10DeleteFileEPKc,"ax",%progbits
 3969              		.align	2
 3970              		.global	_ZN6GCodes10DeleteFileEPKc
 3971              		.thumb
 3972              		.thumb_func
 3973              		.type	_ZN6GCodes10DeleteFileEPKc, %function
 3974              	_ZN6GCodes10DeleteFileEPKc:
 3975              		@ args = 0, pretend = 0, frame = 0
 3976              		@ frame_needed = 0, uses_anonymous_args = 0
 3977 0000 0368     		ldr	r3, [r0]
 3978 0002 70B5     		push	{r4, r5, r6, lr}
 3979 0004 0A46     		mov	r2, r1
 3980 0006 0546     		mov	r5, r0
 3981 0008 0C46     		mov	r4, r1
 3982 000a D3F8B406 		ldr	r0, [r3, #1716]
 3983 000e 0649     		ldr	r1, .L717
 3984 0010 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_
 3985 0014 00B1     		cbz	r0, .L716
 3986 0016 70BD     		pop	{r4, r5, r6, pc}
 3987              	.L716:
 3988 0018 2868     		ldr	r0, [r5]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 71


 3989 001a 2346     		mov	r3, r4
 3990 001c 0621     		movs	r1, #6
 3991 001e 034A     		ldr	r2, .L717+4
 3992 0020 BDE87040 		pop	{r4, r5, r6, lr}
 3993 0024 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 3994              	.L718:
 3995              		.align	2
 3996              	.L717:
 3997 0028 34050000 		.word	.LC49
 3998 002c 40050000 		.word	.LC50
 3999              		.size	_ZN6GCodes10DeleteFileEPKc, .-_ZN6GCodes10DeleteFileEPKc
 4000              		.global	__aeabi_d2iz
 4001              		.global	__aeabi_i2f
 4002              		.section	.text._ZN6GCodes7DoDwellER11GCodeBuffer,"ax",%progbits
 4003              		.align	2
 4004              		.global	_ZN6GCodes7DoDwellER11GCodeBuffer
 4005              		.thumb
 4006              		.thumb_func
 4007              		.type	_ZN6GCodes7DoDwellER11GCodeBuffer, %function
 4008              	_ZN6GCodes7DoDwellER11GCodeBuffer:
 4009              		@ args = 0, pretend = 0, frame = 0
 4010              		@ frame_needed = 0, uses_anonymous_args = 0
 4011 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 4012 0004 0C46     		mov	r4, r1
 4013 0006 0746     		mov	r7, r0
 4014 0008 5321     		movs	r1, #83
 4015 000a 2046     		mov	r0, r4
 4016 000c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4017 0010 0028     		cmp	r0, #0
 4018 0012 35D0     		beq	.L720
 4019 0014 2046     		mov	r0, r4
 4020 0016 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 4021 001a FFF7FEFF 		bl	__aeabi_f2d
 4022 001e 0022     		movs	r2, #0
 4023 0020 294B     		ldr	r3, .L729+8
 4024 0022 FFF7FEFF 		bl	__aeabi_dmul
 4025 0026 FFF7FEFF 		bl	__aeabi_d2iz
 4026 002a 8046     		mov	r8, r0
 4027              	.L721:
 4028 002c B8F1000F 		cmp	r8, #0
 4029 0030 2BDD     		ble	.L724
 4030 0032 3846     		mov	r0, r7
 4031 0034 2146     		mov	r1, r4
 4032 0036 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 4033 003a 0646     		mov	r6, r0
 4034 003c 0028     		cmp	r0, #0
 4035 003e 37D0     		beq	.L728
 4036 0040 97F8A852 		ldrb	r5, [r7, #680]	@ zero_extendqisi2
 4037 0044 55B3     		cbz	r5, .L726
 4038 0046 D7F8A402 		ldr	r0, [r7, #676]	@ float
 4039 004a FFF7FEFF 		bl	__aeabi_f2d
 4040 004e 0446     		mov	r4, r0
 4041 0050 4046     		mov	r0, r8
 4042 0052 0D46     		mov	r5, r1
 4043 0054 FFF7FEFF 		bl	__aeabi_i2f
 4044 0058 FFF7FEFF 		bl	__aeabi_f2d
 4045 005c 18A3     		adr	r3, .L729
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 72


 4046 005e D3E90023 		ldrd	r2, [r3]
 4047 0062 FFF7FEFF 		bl	__aeabi_dmul
 4048 0066 0246     		mov	r2, r0
 4049 0068 0B46     		mov	r3, r1
 4050 006a 2046     		mov	r0, r4
 4051 006c 2946     		mov	r1, r5
 4052 006e FFF7FEFF 		bl	__aeabi_dadd
 4053 0072 FFF7FEFF 		bl	__aeabi_d2f
 4054 0076 C7F8A402 		str	r0, [r7, #676]	@ float
 4055 007a 3046     		mov	r0, r6
 4056 007c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4057              	.L720:
 4058 0080 2046     		mov	r0, r4
 4059 0082 5021     		movs	r1, #80
 4060 0084 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4061 0088 18B9     		cbnz	r0, .L722
 4062              	.L724:
 4063 008a 0126     		movs	r6, #1
 4064              	.L723:
 4065 008c 3046     		mov	r0, r6
 4066 008e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4067              	.L722:
 4068 0092 2046     		mov	r0, r4
 4069 0094 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4070 0098 8046     		mov	r8, r0
 4071 009a C7E7     		b	.L721
 4072              	.L726:
 4073 009c FFF7FEFF 		bl	millis
 4074 00a0 2679     		ldrb	r6, [r4, #4]	@ zero_extendqisi2
 4075 00a2 4EB1     		cbz	r6, .L727
 4076 00a4 2368     		ldr	r3, [r4]
 4077 00a6 C31A     		subs	r3, r0, r3
 4078 00a8 9845     		cmp	r8, r3
 4079 00aa 01D8     		bhi	.L728
 4080 00ac 2571     		strb	r5, [r4, #4]
 4081 00ae EDE7     		b	.L723
 4082              	.L728:
 4083 00b0 0026     		movs	r6, #0
 4084 00b2 3046     		mov	r0, r6
 4085 00b4 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4086              	.L727:
 4087 00b8 0123     		movs	r3, #1
 4088 00ba 2060     		str	r0, [r4]
 4089 00bc 2371     		strb	r3, [r4, #4]
 4090 00be E5E7     		b	.L723
 4091              	.L730:
 4092              		.align	3
 4093              	.L729:
 4094 00c0 FCA9F1D2 		.word	-755914244
 4095 00c4 4D62503F 		.word	1062232653
 4096 00c8 00408F40 		.word	1083129856
 4097              		.size	_ZN6GCodes7DoDwellER11GCodeBuffer, .-_ZN6GCodes7DoDwellER11GCodeBuffer
 4098 00cc AFF30080 		.section	.text._ZN6GCodes11DoDwellTimeER11GCodeBufferm,"ax",%progbits
 4099              		.align	2
 4100              		.global	_ZN6GCodes11DoDwellTimeER11GCodeBufferm
 4101              		.thumb
 4102              		.thumb_func
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 73


 4103              		.type	_ZN6GCodes11DoDwellTimeER11GCodeBufferm, %function
 4104              	_ZN6GCodes11DoDwellTimeER11GCodeBufferm:
 4105              		@ args = 0, pretend = 0, frame = 0
 4106              		@ frame_needed = 0, uses_anonymous_args = 0
 4107 0000 38B5     		push	{r3, r4, r5, lr}
 4108 0002 0C46     		mov	r4, r1
 4109 0004 1546     		mov	r5, r2
 4110 0006 FFF7FEFF 		bl	millis
 4111 000a 2379     		ldrb	r3, [r4, #4]	@ zero_extendqisi2
 4112 000c 3BB1     		cbz	r3, .L732
 4113 000e 2268     		ldr	r2, [r4]
 4114 0010 801A     		subs	r0, r0, r2
 4115 0012 A842     		cmp	r0, r5
 4116 0014 08D3     		bcc	.L734
 4117 0016 0022     		movs	r2, #0
 4118 0018 2271     		strb	r2, [r4, #4]
 4119 001a 1846     		mov	r0, r3
 4120 001c 38BD     		pop	{r3, r4, r5, pc}
 4121              	.L732:
 4122 001e 0122     		movs	r2, #1
 4123 0020 2060     		str	r0, [r4]
 4124 0022 2271     		strb	r2, [r4, #4]
 4125 0024 1846     		mov	r0, r3
 4126 0026 38BD     		pop	{r3, r4, r5, pc}
 4127              	.L734:
 4128 0028 0023     		movs	r3, #0
 4129 002a 1846     		mov	r0, r3
 4130 002c 38BD     		pop	{r3, r4, r5, pc}
 4131              		.size	_ZN6GCodes11DoDwellTimeER11GCodeBufferm, .-_ZN6GCodes11DoDwellTimeER11GCodeBufferm
 4132 002e 00BF     		.section	.text._ZN6GCodes18SetOrReportOffsetsER11GCodeBufferR9StringRef,"ax",%progbits
 4133              		.align	2
 4134              		.global	_ZN6GCodes18SetOrReportOffsetsER11GCodeBufferR9StringRef
 4135              		.thumb
 4136              		.thumb_func
 4137              		.type	_ZN6GCodes18SetOrReportOffsetsER11GCodeBufferR9StringRef, %function
 4138              	_ZN6GCodes18SetOrReportOffsetsER11GCodeBufferR9StringRef:
 4139              		@ args = 0, pretend = 0, frame = 88
 4140              		@ frame_needed = 0, uses_anonymous_args = 0
 4141 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 4142 0004 0C46     		mov	r4, r1
 4143 0006 99B0     		sub	sp, sp, #100
 4144 0008 0546     		mov	r5, r0
 4145 000a 5021     		movs	r1, #80
 4146 000c 2046     		mov	r0, r4
 4147 000e 1746     		mov	r7, r2
 4148 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4149 0014 18B9     		cbnz	r0, .L775
 4150              	.L760:
 4151 0016 0120     		movs	r0, #1
 4152              	.L773:
 4153 0018 19B0     		add	sp, sp, #100
 4154              		@ sp needed
 4155 001a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 4156              	.L775:
 4157 001e 2046     		mov	r0, r4
 4158 0020 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4159 0024 D4F88830 		ldr	r3, [r4, #136]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 74


 4160 0028 1844     		add	r0, r0, r3
 4161 002a 4FFA80FA 		sxtb	r10, r0
 4162 002e 5146     		mov	r1, r10
 4163 0030 6D48     		ldr	r0, .L779
 4164 0032 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 4165 0036 0646     		mov	r6, r0
 4166 0038 0028     		cmp	r0, #0
 4167 003a 00F0B580 		beq	.L776
 4168 003e 00F19401 		add	r1, r0, #148
 4169 0042 0023     		movs	r3, #0
 4170 0044 0DF11009 		add	r9, sp, #16
 4171              	.L740:
 4172 0048 CA58     		ldr	r2, [r1, r3]	@ float
 4173 004a 49F80320 		str	r2, [r9, r3]	@ float
 4174 004e 0433     		adds	r3, r3, #4
 4175 0050 182B     		cmp	r3, #24
 4176 0052 F9D1     		bne	.L740
 4177 0054 D5F88431 		ldr	r3, [r5, #388]
 4178 0058 4FF00008 		mov	r8, #0
 4179 005c 8DF80B80 		strb	r8, [sp, #11]
 4180 0060 002B     		cmp	r3, #0
 4181 0062 34D0     		beq	.L746
 4182 0064 DFF898B1 		ldr	fp, .L779+24
 4183              	.L745:
 4184 0068 1BF80810 		ldrb	r1, [fp, r8]	@ zero_extendqisi2
 4185 006c 4A46     		mov	r2, r9
 4186 006e 0DF10B03 		add	r3, sp, #11
 4187 0072 2046     		mov	r0, r4
 4188 0074 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 4189 0078 D5F88431 		ldr	r3, [r5, #388]
 4190 007c 08F10108 		add	r8, r8, #1
 4191 0080 4345     		cmp	r3, r8
 4192 0082 09F10409 		add	r9, r9, #4
 4193 0086 EFD8     		bhi	.L745
 4194 0088 9DF80B30 		ldrb	r3, [sp, #11]	@ zero_extendqisi2
 4195 008c FBB1     		cbz	r3, .L746
 4196 008e AB6D     		ldr	r3, [r5, #88]
 4197 0090 9C42     		cmp	r4, r3
 4198 0092 08D0     		beq	.L747
 4199 0094 0020     		movs	r0, #0
 4200 0096 002B     		cmp	r3, #0
 4201 0098 BED1     		bne	.L773
 4202 009a AC65     		str	r4, [r5, #88]
 4203 009c A368     		ldr	r3, [r4, #8]
 4204 009e DA68     		ldr	r2, [r3, #12]
 4205 00a0 42F00102 		orr	r2, r2, #1
 4206 00a4 DA60     		str	r2, [r3, #12]
 4207              	.L747:
 4208 00a6 DDF81080 		ldr	r8, [sp, #16]	@ float
 4209 00aa DDF814C0 		ldr	ip, [sp, #20]	@ float
 4210 00ae 0698     		ldr	r0, [sp, #24]	@ float
 4211 00b0 0799     		ldr	r1, [sp, #28]	@ float
 4212 00b2 089A     		ldr	r2, [sp, #32]	@ float
 4213 00b4 099B     		ldr	r3, [sp, #36]	@ float
 4214 00b6 C6F89480 		str	r8, [r6, #148]	@ float
 4215 00ba C6F898C0 		str	ip, [r6, #152]	@ float
 4216 00be C6F89C00 		str	r0, [r6, #156]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 75


 4217 00c2 C6F8A010 		str	r1, [r6, #160]	@ float
 4218 00c6 C6F8A420 		str	r2, [r6, #164]	@ float
 4219 00ca C6F8A830 		str	r3, [r6, #168]	@ float
 4220              	.L746:
 4221 00ce D6F89030 		ldr	r3, [r6, #144]
 4222 00d2 0393     		str	r3, [sp, #12]
 4223 00d4 002B     		cmp	r3, #0
 4224 00d6 4BD1     		bne	.L777
 4225              	.L743:
 4226 00d8 9DF80B40 		ldrb	r4, [sp, #11]	@ zero_extendqisi2
 4227 00dc 002C     		cmp	r4, #0
 4228 00de 9AD1     		bne	.L760
 4229 00e0 5246     		mov	r2, r10
 4230 00e2 3846     		mov	r0, r7
 4231 00e4 4149     		ldr	r1, .L779+4
 4232 00e6 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 4233 00ea D5F88431 		ldr	r3, [r5, #388]
 4234 00ee 9BB1     		cbz	r3, .L754
 4235 00f0 DFF80CB1 		ldr	fp, .L779+24
 4236 00f4 03AE     		add	r6, sp, #12
 4237              	.L755:
 4238 00f6 56F8040F 		ldr	r0, [r6, #4]!	@ float
 4239 00fa FFF7FEFF 		bl	__aeabi_f2d
 4240 00fe 1BF80420 		ldrb	r2, [fp, r4]	@ zero_extendqisi2
 4241 0102 CDE90001 		strd	r0, [sp]
 4242 0106 3846     		mov	r0, r7
 4243 0108 3949     		ldr	r1, .L779+8
 4244 010a FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 4245 010e D5F88431 		ldr	r3, [r5, #388]
 4246 0112 0134     		adds	r4, r4, #1
 4247 0114 A342     		cmp	r3, r4
 4248 0116 EED8     		bhi	.L755
 4249              	.L754:
 4250 0118 039B     		ldr	r3, [sp, #12]
 4251 011a 002B     		cmp	r3, #0
 4252 011c 3FF47BAF 		beq	.L760
 4253 0120 3846     		mov	r0, r7
 4254 0122 3449     		ldr	r1, .L779+12
 4255 0124 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 4256 0128 039B     		ldr	r3, [sp, #12]
 4257 012a 002B     		cmp	r3, #0
 4258 012c 3FF473AF 		beq	.L760
 4259 0130 0026     		movs	r6, #0
 4260 0132 B246     		mov	r10, r6
 4261 0134 0DF12808 		add	r8, sp, #40
 4262 0138 0DF14409 		add	r9, sp, #68
 4263              	.L757:
 4264 013c 59F80600 		ldr	r0, [r9, r6]	@ float
 4265 0140 FFF7FEFF 		bl	__aeabi_f2d
 4266 0144 0446     		mov	r4, r0
 4267 0146 58F80600 		ldr	r0, [r8, r6]	@ float
 4268 014a 0D46     		mov	r5, r1
 4269 014c FFF7FEFF 		bl	__aeabi_f2d
 4270 0150 2B46     		mov	r3, r5
 4271 0152 CDE90001 		strd	r0, [sp]
 4272 0156 2246     		mov	r2, r4
 4273 0158 3846     		mov	r0, r7
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 76


 4274 015a 2749     		ldr	r1, .L779+16
 4275 015c FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 4276 0160 039B     		ldr	r3, [sp, #12]
 4277 0162 0AF1010A 		add	r10, r10, #1
 4278 0166 5345     		cmp	r3, r10
 4279 0168 06F10406 		add	r6, r6, #4
 4280 016c E6D8     		bhi	.L757
 4281 016e 52E7     		b	.L760
 4282              	.L777:
 4283 0170 0DF12808 		add	r8, sp, #40
 4284 0174 0DF14409 		add	r9, sp, #68
 4285 0178 4146     		mov	r1, r8
 4286 017a 3046     		mov	r0, r6
 4287 017c 4A46     		mov	r2, r9
 4288 017e FFF7FEFF 		bl	_ZNK4Tool12GetVariablesEPfS0_
 4289 0182 2046     		mov	r0, r4
 4290 0184 5221     		movs	r1, #82
 4291 0186 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4292 018a A0B9     		cbnz	r0, .L778
 4293 018c 2046     		mov	r0, r4
 4294 018e 5321     		movs	r1, #83
 4295 0190 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4296 0194 0028     		cmp	r0, #0
 4297 0196 9FD0     		beq	.L743
 4298 0198 03AF     		add	r7, sp, #12
 4299              	.L759:
 4300 019a 2046     		mov	r0, r4
 4301 019c 3A46     		mov	r2, r7
 4302 019e 4946     		mov	r1, r9
 4303 01a0 0123     		movs	r3, #1
 4304 01a2 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 4305 01a6 13E0     		b	.L749
 4306              	.L776:
 4307 01a8 3846     		mov	r0, r7
 4308 01aa 5246     		mov	r2, r10
 4309 01ac 1349     		ldr	r1, .L779+20
 4310 01ae FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 4311 01b2 0120     		movs	r0, #1
 4312 01b4 30E7     		b	.L773
 4313              	.L778:
 4314 01b6 03AF     		add	r7, sp, #12
 4315 01b8 2046     		mov	r0, r4
 4316 01ba 4146     		mov	r1, r8
 4317 01bc 3A46     		mov	r2, r7
 4318 01be 0123     		movs	r3, #1
 4319 01c0 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 4320 01c4 2046     		mov	r0, r4
 4321 01c6 5321     		movs	r1, #83
 4322 01c8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4323 01cc 0028     		cmp	r0, #0
 4324 01ce E4D1     		bne	.L759
 4325              	.L749:
 4326 01d0 95F8A832 		ldrb	r3, [r5, #680]	@ zero_extendqisi2
 4327 01d4 002B     		cmp	r3, #0
 4328 01d6 7FF41EAF 		bne	.L760
 4329 01da 3046     		mov	r0, r6
 4330 01dc 4146     		mov	r1, r8
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 77


 4331 01de 4A46     		mov	r2, r9
 4332 01e0 FFF7FEFF 		bl	_ZN4Tool12SetVariablesEPKfS1_
 4333 01e4 17E7     		b	.L760
 4334              	.L780:
 4335 01e6 00BF     		.align	2
 4336              	.L779:
 4337 01e8 00000000 		.word	reprap
 4338 01ec A8050000 		.word	.LC52
 4339 01f0 BC050000 		.word	.LC53
 4340 01f4 C4050000 		.word	.LC54
 4341 01f8 E8050000 		.word	.LC55
 4342 01fc 5C050000 		.word	.LC51
 4343 0200 00000000 		.word	.LANCHOR0
 4344              		.size	_ZN6GCodes18SetOrReportOffsetsER11GCodeBufferR9StringRef, .-_ZN6GCodes18SetOrReportOffsetsER
 4345              		.section	.text._ZN6GCodes10ManageToolER11GCodeBufferR9StringRef,"ax",%progbits
 4346              		.align	2
 4347              		.global	_ZN6GCodes10ManageToolER11GCodeBufferR9StringRef
 4348              		.thumb
 4349              		.thumb_func
 4350              		.type	_ZN6GCodes10ManageToolER11GCodeBufferR9StringRef, %function
 4351              	_ZN6GCodes10ManageToolER11GCodeBufferR9StringRef:
 4352              		@ args = 0, pretend = 0, frame = 88
 4353              		@ frame_needed = 0, uses_anonymous_args = 0
 4354 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 4355 0004 0C46     		mov	r4, r1
 4356 0006 9AB0     		sub	sp, sp, #104
 4357 0008 0646     		mov	r6, r0
 4358 000a 5021     		movs	r1, #80
 4359 000c 2046     		mov	r0, r4
 4360 000e 1546     		mov	r5, r2
 4361 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4362 0014 40B9     		cbnz	r0, .L782
 4363 0016 2046     		mov	r0, r4
 4364 0018 5321     		movs	r1, #83
 4365 001a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4366 001e 0028     		cmp	r0, #0
 4367 0020 33D1     		bne	.L819
 4368              	.L781:
 4369 0022 1AB0     		add	sp, sp, #104
 4370              		@ sp needed
 4371 0024 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4372              	.L782:
 4373 0028 2046     		mov	r0, r4
 4374 002a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4375 002e B0F10008 		subs	r8, r0, #0
 4376 0032 32DB     		blt	.L820
 4377 0034 D6F88831 		ldr	r3, [r6, #392]
 4378 0038 2046     		mov	r0, r4
 4379 003a 4421     		movs	r1, #68
 4380 003c 0493     		str	r3, [sp, #16]
 4381 003e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4382 0042 0028     		cmp	r0, #0
 4383 0044 40F0A480 		bne	.L821
 4384 0048 0490     		str	r0, [sp, #16]
 4385 004a 0746     		mov	r7, r0
 4386              	.L786:
 4387 004c 0723     		movs	r3, #7
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 78


 4388 004e 2046     		mov	r0, r4
 4389 0050 4821     		movs	r1, #72
 4390 0052 0593     		str	r3, [sp, #20]
 4391 0054 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4392 0058 0028     		cmp	r0, #0
 4393 005a 40F09280 		bne	.L822
 4394 005e 0590     		str	r0, [sp, #20]
 4395              	.L788:
 4396 0060 2046     		mov	r0, r4
 4397 0062 5821     		movs	r1, #88
 4398 0064 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4399 0068 0028     		cmp	r0, #0
 4400 006a 5FD1     		bne	.L823
 4401 006c 2046     		mov	r0, r4
 4402 006e 4621     		movs	r1, #70
 4403 0070 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4404 0074 0028     		cmp	r0, #0
 4405 0076 39D1     		bne	.L824
 4406 0078 BFB9     		cbnz	r7, .L825
 4407 007a 4146     		mov	r1, r8
 4408 007c 2A46     		mov	r2, r5
 4409 007e 4E48     		ldr	r0, .L828
 4410 0080 FFF7FEFF 		bl	_ZNK6RepRap9PrintToolEiR9StringRef
 4411 0084 1AB0     		add	sp, sp, #104
 4412              		@ sp needed
 4413 0086 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4414              	.L819:
 4415 008a 2046     		mov	r0, r4
 4416 008c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4417 0090 C4F88800 		str	r0, [r4, #136]
 4418 0094 1AB0     		add	sp, sp, #104
 4419              		@ sp needed
 4420 0096 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4421              	.L820:
 4422 009a 3068     		ldr	r0, [r6]
 4423 009c 0621     		movs	r1, #6
 4424 009e 474A     		ldr	r2, .L828+4
 4425 00a0 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 4426 00a4 1AB0     		add	sp, sp, #104
 4427              		@ sp needed
 4428 00a6 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4429              	.L825:
 4430 00aa 0127     		movs	r7, #1
 4431 00ac 3C46     		mov	r4, r7
 4432              	.L794:
 4433 00ae 4146     		mov	r1, r8
 4434 00b0 4148     		ldr	r0, .L828
 4435 00b2 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 4436 00b6 0146     		mov	r1, r0
 4437 00b8 3F48     		ldr	r0, .L828
 4438 00ba FFF7FEFF 		bl	_ZN6RepRap10DeleteToolEP4Tool
 4439 00be 049A     		ldr	r2, [sp, #16]
 4440 00c0 059B     		ldr	r3, [sp, #20]
 4441 00c2 012A     		cmp	r2, #1
 4442 00c4 01D1     		bne	.L802
 4443 00c6 012B     		cmp	r3, #1
 4444 00c8 69D0     		beq	.L826
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 79


 4445              	.L802:
 4446 00ca 8DE88800 		stmia	sp, {r3, r7}
 4447 00ce 0294     		str	r4, [sp, #8]
 4448 00d0 4046     		mov	r0, r8
 4449 00d2 07A9     		add	r1, sp, #28
 4450 00d4 13AB     		add	r3, sp, #76
 4451 00d6 FFF7FEFF 		bl	_ZN4Tool6CreateEiPljS0_jmm
 4452 00da 0028     		cmp	r0, #0
 4453 00dc A1D0     		beq	.L781
 4454 00de 0146     		mov	r1, r0
 4455 00e0 3548     		ldr	r0, .L828
 4456 00e2 FFF7FEFF 		bl	_ZN6RepRap7AddToolEP4Tool
 4457 00e6 1AB0     		add	sp, sp, #104
 4458              		@ sp needed
 4459 00e8 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4460              	.L824:
 4461 00ec 0127     		movs	r7, #1
 4462 00ee 0DF1340A 		add	r10, sp, #52
 4463 00f2 0DF11809 		add	r9, sp, #24
 4464              	.L793:
 4465 00f6 2046     		mov	r0, r4
 4466 00f8 0223     		movs	r3, #2
 4467 00fa 5146     		mov	r1, r10
 4468 00fc 4A46     		mov	r2, r9
 4469 00fe 0693     		str	r3, [sp, #24]
 4470 0100 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 4471 0104 0698     		ldr	r0, [sp, #24]
 4472 0106 0028     		cmp	r0, #0
 4473 0108 50D0     		beq	.L807
 4474 010a 0CAB     		add	r3, sp, #48
 4475 010c 03EB8000 		add	r0, r3, r0, lsl #2
 4476 0110 0021     		movs	r1, #0
 4477 0112 0124     		movs	r4, #1
 4478              	.L799:
 4479 0114 53F8042F 		ldr	r2, [r3, #4]!
 4480 0118 1F2A     		cmp	r2, #31
 4481 011a 9CBF     		itt	ls
 4482 011c 04FA02F2 		lslls	r2, r4, r2
 4483 0120 1143     		orrls	r1, r1, r2
 4484 0122 8342     		cmp	r3, r0
 4485 0124 F6D1     		bne	.L799
 4486 0126 01F00304 		and	r4, r1, #3
 4487 012a C0E7     		b	.L794
 4488              	.L823:
 4489 012c D6F88431 		ldr	r3, [r6, #388]
 4490 0130 0DF1340A 		add	r10, sp, #52
 4491 0134 0DF11809 		add	r9, sp, #24
 4492 0138 4A46     		mov	r2, r9
 4493 013a 5146     		mov	r1, r10
 4494 013c 2046     		mov	r0, r4
 4495 013e 0693     		str	r3, [sp, #24]
 4496 0140 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 4497 0144 069A     		ldr	r2, [sp, #24]
 4498 0146 7AB3     		cbz	r2, .L806
 4499 0148 0CAB     		add	r3, sp, #48
 4500 014a 03EB8202 		add	r2, r3, r2, lsl #2
 4501 014e 0027     		movs	r7, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 80


 4502 0150 0121     		movs	r1, #1
 4503              	.L792:
 4504 0152 53F8045F 		ldr	r5, [r3, #4]!
 4505 0156 1F2D     		cmp	r5, #31
 4506 0158 9CBF     		itt	ls
 4507 015a 01FA05F5 		lslls	r5, r1, r5
 4508 015e 2F43     		orrls	r7, r7, r5
 4509 0160 9342     		cmp	r3, r2
 4510 0162 F6D1     		bne	.L792
 4511              	.L790:
 4512 0164 D6F88431 		ldr	r3, [r6, #388]
 4513 0168 0125     		movs	r5, #1
 4514 016a 05FA03F3 		lsl	r3, r5, r3
 4515 016e 2046     		mov	r0, r4
 4516 0170 013B     		subs	r3, r3, #1
 4517 0172 4621     		movs	r1, #70
 4518 0174 1F40     		ands	r7, r7, r3
 4519 0176 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4520 017a 0028     		cmp	r0, #0
 4521 017c BBD1     		bne	.L793
 4522 017e 2C46     		mov	r4, r5
 4523 0180 95E7     		b	.L794
 4524              	.L822:
 4525 0182 2046     		mov	r0, r4
 4526 0184 13A9     		add	r1, sp, #76
 4527 0186 05AA     		add	r2, sp, #20
 4528 0188 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 4529 018c 0127     		movs	r7, #1
 4530 018e 67E7     		b	.L788
 4531              	.L821:
 4532 0190 2046     		mov	r0, r4
 4533 0192 07A9     		add	r1, sp, #28
 4534 0194 04AA     		add	r2, sp, #16
 4535 0196 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 4536 019a 0127     		movs	r7, #1
 4537 019c 56E7     		b	.L786
 4538              	.L826:
 4539 019e 079B     		ldr	r3, [sp, #28]
 4540 01a0 0133     		adds	r3, r3, #1
 4541 01a2 05D0     		beq	.L827
 4542              	.L810:
 4543 01a4 1346     		mov	r3, r2
 4544 01a6 90E7     		b	.L802
 4545              	.L806:
 4546 01a8 1746     		mov	r7, r2
 4547 01aa DBE7     		b	.L790
 4548              	.L807:
 4549 01ac 0446     		mov	r4, r0
 4550 01ae 7EE7     		b	.L794
 4551              	.L827:
 4552 01b0 139B     		ldr	r3, [sp, #76]
 4553 01b2 0133     		adds	r3, r3, #1
 4554 01b4 F6D1     		bne	.L810
 4555 01b6 34E7     		b	.L781
 4556              	.L829:
 4557              		.align	2
 4558              	.L828:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 81


 4559 01b8 00000000 		.word	reprap
 4560 01bc F4050000 		.word	.LC56
 4561              		.size	_ZN6GCodes10ManageToolER11GCodeBufferR9StringRef, .-_ZN6GCodes10ManageToolER11GCodeBufferR9S
 4562              		.section	.text._ZN6GCodes13DisableDrivesEv,"ax",%progbits
 4563              		.align	2
 4564              		.global	_ZN6GCodes13DisableDrivesEv
 4565              		.thumb
 4566              		.thumb_func
 4567              		.type	_ZN6GCodes13DisableDrivesEv, %function
 4568              	_ZN6GCodes13DisableDrivesEv:
 4569              		@ args = 0, pretend = 0, frame = 0
 4570              		@ frame_needed = 0, uses_anonymous_args = 0
 4571 0000 38B5     		push	{r3, r4, r5, lr}
 4572 0002 0546     		mov	r5, r0
 4573 0004 0024     		movs	r4, #0
 4574              	.L832:
 4575 0006 2146     		mov	r1, r4
 4576 0008 2868     		ldr	r0, [r5]
 4577 000a 0134     		adds	r4, r4, #1
 4578 000c FFF7FEFF 		bl	_ZN8Platform12DisableDriveEj
 4579 0010 092C     		cmp	r4, #9
 4580 0012 F8D1     		bne	.L832
 4581 0014 0023     		movs	r3, #0
 4582 0016 C5F85C32 		str	r3, [r5, #604]
 4583 001a 38BD     		pop	{r3, r4, r5, pc}
 4584              		.size	_ZN6GCodes13DisableDrivesEv, .-_ZN6GCodes13DisableDrivesEv
 4585              		.section	.text._ZN6GCodes18SetEthernetAddressER11GCodeBufferi,"ax",%progbits
 4586              		.align	2
 4587              		.global	_ZN6GCodes18SetEthernetAddressER11GCodeBufferi
 4588              		.thumb
 4589              		.thumb_func
 4590              		.type	_ZN6GCodes18SetEthernetAddressER11GCodeBufferi, %function
 4591              	_ZN6GCodes18SetEthernetAddressER11GCodeBufferi:
 4592              		@ args = 0, pretend = 0, frame = 8
 4593              		@ frame_needed = 0, uses_anonymous_args = 0
 4594 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 4595 0004 0746     		mov	r7, r0
 4596 0006 82B0     		sub	sp, sp, #8
 4597 0008 0846     		mov	r0, r1
 4598 000a 0E46     		mov	r6, r1
 4599 000c 9046     		mov	r8, r2
 4600 000e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 4601 0012 4FF0000A 		mov	r10, #0
 4602 0016 8146     		mov	r9, r0
 4603 0018 0124     		movs	r4, #1
 4604 001a 5046     		mov	r0, r10
 4605 001c 01E0     		b	.L834
 4606              	.L835:
 4607 001e 0134     		adds	r4, r4, #1
 4608 0020 E4B2     		uxtb	r4, r4
 4609              	.L834:
 4610 0022 651E     		subs	r5, r4, #1
 4611 0024 EDB2     		uxtb	r5, r5
 4612 0026 19F80550 		ldrb	r5, [r9, r5]	@ zero_extendqisi2
 4613 002a 8DB1     		cbz	r5, .L846
 4614 002c 2E2D     		cmp	r5, #46
 4615 002e F6D1     		bne	.L835
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 82


 4616 0030 4844     		add	r0, r0, r9
 4617 0032 FFF7FEFF 		bl	atoi
 4618 0036 0AF10102 		add	r2, r10, #1
 4619 003a 02AB     		add	r3, sp, #8
 4620 003c 5344     		add	r3, r3, r10
 4621 003e 5FFA82FA 		uxtb	r10, r2
 4622 0042 BAF1030F 		cmp	r10, #3
 4623 0046 03F8040C 		strb	r0, [r3, #-4]
 4624 004a 0BD8     		bhi	.L838
 4625 004c 2046     		mov	r0, r4
 4626 004e E6E7     		b	.L835
 4627              	.L846:
 4628 0050 4844     		add	r0, r0, r9
 4629 0052 FFF7FEFF 		bl	atoi
 4630 0056 02AB     		add	r3, sp, #8
 4631 0058 5344     		add	r3, r3, r10
 4632 005a BAF1030F 		cmp	r10, #3
 4633 005e 03F8040C 		strb	r0, [r3, #-4]
 4634 0062 09D0     		beq	.L847
 4635              	.L838:
 4636 0064 3868     		ldr	r0, [r7]
 4637 0066 06F10C03 		add	r3, r6, #12
 4638 006a 0621     		movs	r1, #6
 4639 006c 154A     		ldr	r2, .L849
 4640 006e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 4641 0072 02B0     		add	sp, sp, #8
 4642              		@ sp needed
 4643 0074 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4644              	.L847:
 4645 0078 40F22923 		movw	r3, #553
 4646 007c 9845     		cmp	r8, r3
 4647 007e 1AD0     		beq	.L840
 4648 0080 40F22A23 		movw	r3, #554
 4649 0084 9845     		cmp	r8, r3
 4650 0086 3868     		ldr	r0, [r7]
 4651 0088 0FD0     		beq	.L841
 4652 008a B8F50A7F 		cmp	r8, #552
 4653 008e 06D0     		beq	.L848
 4654 0090 0621     		movs	r1, #6
 4655 0092 0D4A     		ldr	r2, .L849+4
 4656 0094 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 4657 0098 02B0     		add	sp, sp, #8
 4658              		@ sp needed
 4659 009a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4660              	.L848:
 4661 009e 01A9     		add	r1, sp, #4
 4662 00a0 FFF7FEFF 		bl	_ZN8Platform12SetIPAddressEPh
 4663 00a4 02B0     		add	sp, sp, #8
 4664              		@ sp needed
 4665 00a6 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4666              	.L841:
 4667 00aa 01A9     		add	r1, sp, #4
 4668 00ac FFF7FEFF 		bl	_ZN8Platform10SetGateWayEPh
 4669 00b0 02B0     		add	sp, sp, #8
 4670              		@ sp needed
 4671 00b2 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4672              	.L840:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 83


 4673 00b6 3868     		ldr	r0, [r7]
 4674 00b8 01A9     		add	r1, sp, #4
 4675 00ba FFF7FEFF 		bl	_ZN8Platform10SetNetMaskEPh
 4676 00be 02B0     		add	sp, sp, #8
 4677              		@ sp needed
 4678 00c0 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4679              	.L850:
 4680              		.align	2
 4681              	.L849:
 4682 00c4 14060000 		.word	.LC57
 4683 00c8 28060000 		.word	.LC58
 4684              		.size	_ZN6GCodes18SetEthernetAddressER11GCodeBufferi, .-_ZN6GCodes18SetEthernetAddressER11GCodeBuf
 4685              		.section	.text._ZN6GCodes13SetMACAddressER11GCodeBuffer,"ax",%progbits
 4686              		.align	2
 4687              		.global	_ZN6GCodes13SetMACAddressER11GCodeBuffer
 4688              		.thumb
 4689              		.thumb_func
 4690              		.type	_ZN6GCodes13SetMACAddressER11GCodeBuffer, %function
 4691              	_ZN6GCodes13SetMACAddressER11GCodeBuffer:
 4692              		@ args = 0, pretend = 0, frame = 8
 4693              		@ frame_needed = 0, uses_anonymous_args = 0
 4694 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 4695 0004 0746     		mov	r7, r0
 4696 0006 82B0     		sub	sp, sp, #8
 4697 0008 0846     		mov	r0, r1
 4698 000a 0E46     		mov	r6, r1
 4699 000c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 4700 0010 4FF00008 		mov	r8, #0
 4701 0014 0546     		mov	r5, r0
 4702 0016 0124     		movs	r4, #1
 4703 0018 4046     		mov	r0, r8
 4704 001a 01E0     		b	.L852
 4705              	.L853:
 4706 001c 0134     		adds	r4, r4, #1
 4707 001e E4B2     		uxtb	r4, r4
 4708              	.L852:
 4709 0020 621E     		subs	r2, r4, #1
 4710 0022 D2B2     		uxtb	r2, r2
 4711 0024 A95C     		ldrb	r1, [r5, r2]	@ zero_extendqisi2
 4712 0026 99B1     		cbz	r1, .L859
 4713 0028 3A29     		cmp	r1, #58
 4714 002a F7D1     		bne	.L853
 4715 002c 1022     		movs	r2, #16
 4716 002e 2844     		add	r0, r0, r5
 4717 0030 0021     		movs	r1, #0
 4718 0032 FFF7FEFF 		bl	strtoul
 4719 0036 08F10102 		add	r2, r8, #1
 4720 003a 02AB     		add	r3, sp, #8
 4721 003c 4344     		add	r3, r3, r8
 4722 003e 5FFA82F8 		uxtb	r8, r2
 4723 0042 B8F1050F 		cmp	r8, #5
 4724 0046 03F8080C 		strb	r0, [r3, #-8]
 4725 004a 1CD8     		bhi	.L860
 4726 004c 2046     		mov	r0, r4
 4727 004e E5E7     		b	.L853
 4728              	.L859:
 4729 0050 2844     		add	r0, r0, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 84


 4730 0052 1022     		movs	r2, #16
 4731 0054 FFF7FEFF 		bl	strtoul
 4732 0058 02AB     		add	r3, sp, #8
 4733 005a 4344     		add	r3, r3, r8
 4734 005c B8F1050F 		cmp	r8, #5
 4735 0060 03F8080C 		strb	r0, [r3, #-8]
 4736 0064 3868     		ldr	r0, [r7]
 4737 0066 08D0     		beq	.L861
 4738 0068 06F10C03 		add	r3, r6, #12
 4739 006c 0621     		movs	r1, #6
 4740 006e 0B4A     		ldr	r2, .L862
 4741 0070 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 4742 0074 02B0     		add	sp, sp, #8
 4743              		@ sp needed
 4744 0076 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4745              	.L861:
 4746 007a 6946     		mov	r1, sp
 4747 007c FFF7FEFF 		bl	_ZN8Platform13SetMACAddressEPh
 4748 0080 02B0     		add	sp, sp, #8
 4749              		@ sp needed
 4750 0082 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4751              	.L860:
 4752 0086 3868     		ldr	r0, [r7]
 4753 0088 06F10C03 		add	r3, r6, #12
 4754 008c 0621     		movs	r1, #6
 4755 008e 034A     		ldr	r2, .L862
 4756 0090 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 4757 0094 02B0     		add	sp, sp, #8
 4758              		@ sp needed
 4759 0096 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4760              	.L863:
 4761 009a 00BF     		.align	2
 4762              	.L862:
 4763 009c 50060000 		.word	.LC59
 4764              		.size	_ZN6GCodes13SetMACAddressER11GCodeBuffer, .-_ZN6GCodes13SetMACAddressER11GCodeBuffer
 4765              		.section	.text._ZNK6GCodes19ChangeMicrosteppingEjii,"ax",%progbits
 4766              		.align	2
 4767              		.global	_ZNK6GCodes19ChangeMicrosteppingEjii
 4768              		.thumb
 4769              		.thumb_func
 4770              		.type	_ZNK6GCodes19ChangeMicrosteppingEjii, %function
 4771              	_ZNK6GCodes19ChangeMicrosteppingEjii:
 4772              		@ args = 0, pretend = 0, frame = 8
 4773              		@ frame_needed = 0, uses_anonymous_args = 0
 4774 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 4775 0004 83B0     		sub	sp, sp, #12
 4776 0006 0546     		mov	r5, r0
 4777 0008 1C46     		mov	r4, r3
 4778 000a 9046     		mov	r8, r2
 4779 000c 0068     		ldr	r0, [r0]
 4780 000e 1A46     		mov	r2, r3
 4781 0010 0DF10703 		add	r3, sp, #7
 4782 0014 0F46     		mov	r7, r1
 4783 0016 FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjiRb
 4784 001a 3946     		mov	r1, r7
 4785 001c 8146     		mov	r9, r0
 4786 001e 4246     		mov	r2, r8
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 85


 4787 0020 2868     		ldr	r0, [r5]
 4788 0022 2346     		mov	r3, r4
 4789 0024 FFF7FEFF 		bl	_ZN8Platform16SetMicrosteppingEjii
 4790 0028 0646     		mov	r6, r0
 4791 002a 08B1     		cbz	r0, .L865
 4792 002c 012C     		cmp	r4, #1
 4793 002e 03DD     		ble	.L871
 4794              	.L865:
 4795 0030 3046     		mov	r0, r6
 4796 0032 03B0     		add	sp, sp, #12
 4797              		@ sp needed
 4798 0034 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 4799              	.L871:
 4800 0038 2B68     		ldr	r3, [r5]
 4801 003a 0021     		movs	r1, #0
 4802 003c 03EB8707 		add	r7, r3, r7, lsl #2
 4803 0040 D7F83841 		ldr	r4, [r7, #312]	@ float
 4804 0044 2046     		mov	r0, r4
 4805 0046 FFF7FEFF 		bl	__aeabi_fcmpgt
 4806 004a 0028     		cmp	r0, #0
 4807 004c F0D0     		beq	.L865
 4808 004e 4046     		mov	r0, r8
 4809 0050 FFF7FEFF 		bl	__aeabi_i2f
 4810 0054 2146     		mov	r1, r4
 4811 0056 FFF7FEFF 		bl	__aeabi_fmul
 4812 005a 0446     		mov	r4, r0
 4813 005c 4846     		mov	r0, r9
 4814 005e FFF7FEFF 		bl	__aeabi_ui2f
 4815 0062 0146     		mov	r1, r0
 4816 0064 2046     		mov	r0, r4
 4817 0066 FFF7FEFF 		bl	__aeabi_fdiv
 4818 006a C7F83801 		str	r0, [r7, #312]	@ float
 4819 006e 3046     		mov	r0, r6
 4820 0070 03B0     		add	sp, sp, #12
 4821              		@ sp needed
 4822 0072 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 4823              		.size	_ZNK6GCodes19ChangeMicrosteppingEjii, .-_ZNK6GCodes19ChangeMicrosteppingEjii
 4824 0076 00BF     		.section	.text._ZN6GCodes17SetMappedFanSpeedEv,"ax",%progbits
 4825              		.align	2
 4826              		.global	_ZN6GCodes17SetMappedFanSpeedEv
 4827              		.thumb
 4828              		.thumb_func
 4829              		.type	_ZN6GCodes17SetMappedFanSpeedEv, %function
 4830              	_ZN6GCodes17SetMappedFanSpeedEv:
 4831              		@ args = 0, pretend = 0, frame = 0
 4832              		@ frame_needed = 0, uses_anonymous_args = 0
 4833 0000 38B5     		push	{r3, r4, r5, lr}
 4834 0002 114B     		ldr	r3, .L882
 4835 0004 0546     		mov	r5, r0
 4836 0006 596A     		ldr	r1, [r3, #36]
 4837 0008 B1B1     		cbz	r1, .L879
 4838 000a D1F8B040 		ldr	r4, [r1, #176]
 4839 000e E207     		lsls	r2, r4, #31
 4840 0010 02D4     		bmi	.L880
 4841 0012 A307     		lsls	r3, r4, #30
 4842 0014 08D4     		bmi	.L881
 4843              	.L872:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 86


 4844 0016 38BD     		pop	{r3, r4, r5, pc}
 4845              	.L880:
 4846 0018 0068     		ldr	r0, [r0]
 4847 001a 0021     		movs	r1, #0
 4848 001c D5F86822 		ldr	r2, [r5, #616]	@ float
 4849 0020 FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 4850 0024 A307     		lsls	r3, r4, #30
 4851 0026 F6D5     		bpl	.L872
 4852              	.L881:
 4853 0028 2868     		ldr	r0, [r5]
 4854 002a D5F86822 		ldr	r2, [r5, #616]	@ float
 4855 002e 0121     		movs	r1, #1
 4856 0030 BDE83840 		pop	{r3, r4, r5, lr}
 4857 0034 FFF7FEBF 		b	_ZN8Platform11SetFanValueEjf
 4858              	.L879:
 4859 0038 D5F86822 		ldr	r2, [r5, #616]	@ float
 4860 003c 0068     		ldr	r0, [r0]
 4861 003e BDE83840 		pop	{r3, r4, r5, lr}
 4862 0042 FFF7FEBF 		b	_ZN8Platform11SetFanValueEjf
 4863              	.L883:
 4864 0046 00BF     		.align	2
 4865              	.L882:
 4866 0048 00000000 		.word	reprap
 4867              		.size	_ZN6GCodes17SetMappedFanSpeedEv, .-_ZN6GCodes17SetMappedFanSpeedEv
 4868              		.section	.text._ZN6GCodes11HandleReplyER11GCodeBufferbPKc,"ax",%progbits
 4869              		.align	2
 4870              		.global	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 4871              		.thumb
 4872              		.thumb_func
 4873              		.type	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc, %function
 4874              	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc:
 4875              		@ args = 0, pretend = 0, frame = 0
 4876              		@ frame_needed = 0, uses_anonymous_args = 0
 4877 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 4878 0004 0C46     		mov	r4, r1
 4879 0006 8968     		ldr	r1, [r1, #8]
 4880 0008 0546     		mov	r5, r0
 4881 000a 487C     		ldrb	r0, [r1, #17]	@ zero_extendqisi2
 4882 000c 1E46     		mov	r6, r3
 4883 000e 4307     		lsls	r3, r0, #29
 4884 0010 9046     		mov	r8, r2
 4885 0012 22D4     		bmi	.L885
 4886 0014 2B6C     		ldr	r3, [r5, #64]
 4887 0016 1B68     		ldr	r3, [r3]
 4888 0018 A342     		cmp	r3, r4
 4889 001a 1ED0     		beq	.L885
 4890              	.L886:
 4891 001c AB6C     		ldr	r3, [r5, #72]
 4892 001e 1B68     		ldr	r3, [r3]
 4893 0020 A342     		cmp	r3, r4
 4894 0022 00F09080 		beq	.L933
 4895 0026 6B6C     		ldr	r3, [r5, #68]
 4896 0028 1B68     		ldr	r3, [r3]
 4897 002a 9C42     		cmp	r4, r3
 4898 002c 57D0     		beq	.L888
 4899 002e EB6B     		ldr	r3, [r5, #60]
 4900 0030 1B68     		ldr	r3, [r3]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 87


 4901 0032 9C42     		cmp	r4, r3
 4902 0034 53D0     		beq	.L888
 4903 0036 0027     		movs	r7, #0
 4904              	.L889:
 4905 0038 2046     		mov	r0, r4
 4906 003a 4D21     		movs	r1, #77
 4907 003c 94F88C90 		ldrb	r9, [r4, #140]	@ zero_extendqisi2
 4908 0040 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4909 0044 0028     		cmp	r0, #0
 4910 0046 58D1     		bne	.L934
 4911 0048 DFF848A1 		ldr	r10, .L938+28
 4912              	.L890:
 4913 004c 052F     		cmp	r7, #5
 4914 004e 60D8     		bhi	.L891
 4915 0050 DFE807F0 		tbb	[pc, r7]
 4916              	.L893:
 4917 0054 2F       		.byte	(.L892-.L893)/2
 4918 0055 2F       		.byte	(.L892-.L893)/2
 4919 0056 12       		.byte	(.L894-.L893)/2
 4920 0057 10       		.byte	(.L895-.L893)/2
 4921 0058 08       		.byte	(.L915-.L893)/2
 4922 0059 43       		.byte	(.L897-.L893)/2
 4923              		.align	1
 4924              	.L885:
 4925 005a 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 4926 005c 002B     		cmp	r3, #0
 4927 005e DDD1     		bne	.L886
 4928 0060 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4929              	.L915:
 4930 0064 444B     		ldr	r3, .L938
 4931              	.L896:
 4932 0066 2868     		ldr	r0, [r5]
 4933 0068 4946     		mov	r1, r9
 4934 006a 444A     		ldr	r2, .L938+4
 4935 006c BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 4936 0070 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 4937              	.L895:
 4938 0074 424B     		ldr	r3, .L938+8
 4939 0076 F6E7     		b	.L896
 4940              	.L894:
 4941 0078 2046     		mov	r0, r4
 4942 007a 4D21     		movs	r1, #77
 4943 007c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4944 0080 0028     		cmp	r0, #0
 4945 0082 50D1     		bne	.L935
 4946              	.L899:
 4947 0084 2046     		mov	r0, r4
 4948 0086 4D21     		movs	r1, #77
 4949 0088 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4950 008c 0028     		cmp	r0, #0
 4951 008e 2BD0     		beq	.L908
 4952 0090 2046     		mov	r0, r4
 4953 0092 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4954 0096 6928     		cmp	r0, #105
 4955 0098 26D1     		bne	.L908
 4956              	.L901:
 4957 009a 5246     		mov	r2, r10
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 88


 4958 009c 2868     		ldr	r0, [r5]
 4959 009e 4946     		mov	r1, r9
 4960 00a0 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 4961 00a4 374A     		ldr	r2, .L938+12
 4962 00a6 2868     		ldr	r0, [r5]
 4963 00a8 4946     		mov	r1, r9
 4964 00aa FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 4965 00ae 3246     		mov	r2, r6
 4966 00b0 08E0     		b	.L930
 4967              	.L892:
 4968 00b2 B8F1000F 		cmp	r8, #0
 4969 00b6 04D0     		beq	.L932
 4970 00b8 2868     		ldr	r0, [r5]
 4971 00ba 4946     		mov	r1, r9
 4972 00bc 324A     		ldr	r2, .L938+16
 4973 00be FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 4974              	.L932:
 4975 00c2 3246     		mov	r2, r6
 4976              	.L930:
 4977 00c4 2868     		ldr	r0, [r5]
 4978 00c6 4946     		mov	r1, r9
 4979 00c8 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 4980 00cc 2868     		ldr	r0, [r5]
 4981 00ce 4946     		mov	r1, r9
 4982 00d0 2E4A     		ldr	r2, .L938+20
 4983 00d2 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 4984 00d6 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 4985              	.L897:
 4986 00da 2D4B     		ldr	r3, .L938+24
 4987 00dc C3E7     		b	.L896
 4988              	.L888:
 4989 00de 2868     		ldr	r0, [r5]
 4990 00e0 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 4991 00e4 0746     		mov	r7, r0
 4992 00e6 A7E7     		b	.L889
 4993              	.L908:
 4994 00e8 2046     		mov	r0, r4
 4995 00ea 4D21     		movs	r1, #77
 4996 00ec FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4997 00f0 88B9     		cbnz	r0, .L936
 4998              	.L902:
 4999 00f2 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 5000 00f4 6BBB     		cbnz	r3, .L937
 5001              	.L931:
 5002 00f6 5246     		mov	r2, r10
 5003 00f8 E4E7     		b	.L930
 5004              	.L934:
 5005 00fa 2046     		mov	r0, r4
 5006 00fc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5007 0100 244A     		ldr	r2, .L938+28
 5008 0102 254B     		ldr	r3, .L938+32
 5009 0104 40F2E63A 		movw	r10, #998
 5010 0108 5045     		cmp	r0, r10
 5011 010a 14BF     		ite	ne
 5012 010c 9246     		movne	r10, r2
 5013 010e 9A46     		moveq	r10, r3
 5014 0110 9CE7     		b	.L890
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 89


 5015              	.L891:
 5016 0112 224B     		ldr	r3, .L938+36
 5017 0114 A7E7     		b	.L896
 5018              	.L936:
 5019 0116 2046     		mov	r0, r4
 5020 0118 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5021 011c 40F2E633 		movw	r3, #998
 5022 0120 9842     		cmp	r0, r3
 5023 0122 E6D1     		bne	.L902
 5024 0124 B9E7     		b	.L901
 5025              	.L935:
 5026 0126 2046     		mov	r0, r4
 5027 0128 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5028 012c 1C28     		cmp	r0, #28
 5029 012e A9D1     		bne	.L899
 5030 0130 5246     		mov	r2, r10
 5031 0132 2868     		ldr	r0, [r5]
 5032 0134 4946     		mov	r1, r9
 5033 0136 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5034 013a 2868     		ldr	r0, [r5]
 5035 013c 4946     		mov	r1, r9
 5036 013e 134A     		ldr	r2, .L938+20
 5037 0140 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5038 0144 BDE7     		b	.L932
 5039              	.L933:
 5040 0146 2868     		ldr	r0, [r5]
 5041 0148 3146     		mov	r1, r6
 5042 014a BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 5043 014e FFF7FEBF 		b	_ZN8Platform14AppendAuxReplyEPKc
 5044              	.L937:
 5045 0152 2046     		mov	r0, r4
 5046 0154 FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 5047 0158 50B9     		cbnz	r0, .L903
 5048 015a 3246     		mov	r2, r6
 5049 015c 2868     		ldr	r0, [r5]
 5050 015e 4946     		mov	r1, r9
 5051 0160 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5052 0164 2868     		ldr	r0, [r5]
 5053 0166 4946     		mov	r1, r9
 5054 0168 084A     		ldr	r2, .L938+20
 5055 016a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5056 016e C2E7     		b	.L931
 5057              	.L903:
 5058 0170 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 5059 0172 002B     		cmp	r3, #0
 5060 0174 A5D1     		bne	.L932
 5061 0176 BEE7     		b	.L931
 5062              	.L939:
 5063              		.align	2
 5064              	.L938:
 5065 0178 78060000 		.word	.LC63
 5066 017c A4060000 		.word	.LC68
 5067 0180 70060000 		.word	.LC62
 5068 0184 CC060000 		.word	.LC69
 5069 0188 98060000 		.word	.LC66
 5070 018c A0060000 		.word	.LC67
 5071 0190 84060000 		.word	.LC64
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 90


 5072 0194 68060000 		.word	.LC60
 5073 0198 6C060000 		.word	.LC61
 5074 019c 90060000 		.word	.LC65
 5075              		.size	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc, .-_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 5076              		.section	.text._ZN6GCodes15WriteHTMLToFileER11GCodeBufferc,"ax",%progbits
 5077              		.align	2
 5078              		.global	_ZN6GCodes15WriteHTMLToFileER11GCodeBufferc
 5079              		.thumb
 5080              		.thumb_func
 5081              		.type	_ZN6GCodes15WriteHTMLToFileER11GCodeBufferc, %function
 5082              	_ZN6GCodes15WriteHTMLToFileER11GCodeBufferc:
 5083              		@ args = 0, pretend = 0, frame = 0
 5084              		@ frame_needed = 0, uses_anonymous_args = 0
 5085 0000 70B5     		push	{r4, r5, r6, lr}
 5086 0002 0446     		mov	r4, r0
 5087 0004 D0F83C02 		ldr	r0, [r0, #572]
 5088 0008 0E46     		mov	r6, r1
 5089 000a 1546     		mov	r5, r2
 5090 000c 0028     		cmp	r0, #0
 5091 000e 3AD0     		beq	.L951
 5092 0010 94F85032 		ldrb	r3, [r4, #592]	@ zero_extendqisi2
 5093 0014 4BB1     		cbz	r3, .L942
 5094 0016 D4F84C12 		ldr	r1, [r4, #588]
 5095 001a CA5C     		ldrb	r2, [r1, r3]	@ zero_extendqisi2
 5096 001c AA42     		cmp	r2, r5
 5097 001e 11D0     		beq	.L943
 5098 0020 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 5099 0024 0023     		movs	r3, #0
 5100 0026 84F85032 		strb	r3, [r4, #592]
 5101              	.L942:
 5102 002a D4F84C32 		ldr	r3, [r4, #588]
 5103 002e 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 5104 0030 AB42     		cmp	r3, r5
 5105 0032 06D0     		beq	.L952
 5106 0034 D4F83C02 		ldr	r0, [r4, #572]
 5107 0038 2946     		mov	r1, r5
 5108 003a BDE87040 		pop	{r4, r5, r6, lr}
 5109 003e FFF7FEBF 		b	_ZN9FileStore5WriteEc
 5110              	.L952:
 5111 0042 0023     		movs	r3, #0
 5112              	.L943:
 5113 0044 0133     		adds	r3, r3, #1
 5114 0046 94F85122 		ldrb	r2, [r4, #593]	@ zero_extendqisi2
 5115 004a DBB2     		uxtb	r3, r3
 5116 004c 9A42     		cmp	r2, r3
 5117 004e 84F85032 		strb	r3, [r4, #592]
 5118 0052 00D9     		bls	.L953
 5119 0054 70BD     		pop	{r4, r5, r6, pc}
 5120              	.L953:
 5121 0056 0025     		movs	r5, #0
 5122 0058 D4F83C02 		ldr	r0, [r4, #572]
 5123 005c FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 5124 0060 C4F83C52 		str	r5, [r4, #572]
 5125 0064 C6F88450 		str	r5, [r6, #132]
 5126 0068 2068     		ldr	r0, [r4]
 5127 006a FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 5128 006e 0949     		ldr	r1, .L954
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 91


 5129 0070 094B     		ldr	r3, .L954+4
 5130 0072 2A46     		mov	r2, r5
 5131 0074 0228     		cmp	r0, #2
 5132 0076 18BF     		it	ne
 5133 0078 0B46     		movne	r3, r1
 5134 007a 3146     		mov	r1, r6
 5135 007c 2046     		mov	r0, r4
 5136 007e BDE87040 		pop	{r4, r5, r6, lr}
 5137 0082 FFF7FEBF 		b	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 5138              	.L951:
 5139 0086 2068     		ldr	r0, [r4]
 5140 0088 0621     		movs	r1, #6
 5141 008a 044A     		ldr	r2, .L954+8
 5142 008c BDE87040 		pop	{r4, r5, r6, lr}
 5143 0090 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 5144              	.L955:
 5145              		.align	2
 5146              	.L954:
 5147 0094 E4060000 		.word	.LC71
 5148 0098 D0060000 		.word	.LC70
 5149 009c E8060000 		.word	.LC72
 5150              		.size	_ZN6GCodes15WriteHTMLToFileER11GCodeBufferc, .-_ZN6GCodes15WriteHTMLToFileER11GCodeBufferc
 5151              		.section	.text._ZN6GCodes16WriteGCodeToFileER11GCodeBuffer,"ax",%progbits
 5152              		.align	2
 5153              		.global	_ZN6GCodes16WriteGCodeToFileER11GCodeBuffer
 5154              		.thumb
 5155              		.thumb_func
 5156              		.type	_ZN6GCodes16WriteGCodeToFileER11GCodeBuffer, %function
 5157              	_ZN6GCodes16WriteGCodeToFileER11GCodeBuffer:
 5158              		@ args = 0, pretend = 0, frame = 0
 5159              		@ frame_needed = 0, uses_anonymous_args = 0
 5160 0000 D0F83C32 		ldr	r3, [r0, #572]
 5161 0004 70B5     		push	{r4, r5, r6, lr}
 5162 0006 0546     		mov	r5, r0
 5163 0008 0C46     		mov	r4, r1
 5164 000a 002B     		cmp	r3, #0
 5165 000c 57D0     		beq	.L971
 5166 000e 0846     		mov	r0, r1
 5167 0010 4D21     		movs	r1, #77
 5168 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5169 0016 20B1     		cbz	r0, .L958
 5170 0018 2046     		mov	r0, r4
 5171 001a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5172 001e 1D28     		cmp	r0, #29
 5173 0020 1ED0     		beq	.L972
 5174              	.L958:
 5175 0022 2046     		mov	r0, r4
 5176 0024 4721     		movs	r1, #71
 5177 0026 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5178 002a 30B1     		cbz	r0, .L960
 5179 002c 2046     		mov	r0, r4
 5180 002e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5181 0032 40F2E633 		movw	r3, #998
 5182 0036 9842     		cmp	r0, r3
 5183 0038 2AD0     		beq	.L973
 5184              	.L960:
 5185 003a 04F10C01 		add	r1, r4, #12
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 92


 5186 003e D5F83C02 		ldr	r0, [r5, #572]
 5187 0042 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 5188 0046 D5F83C02 		ldr	r0, [r5, #572]
 5189 004a 0A21     		movs	r1, #10
 5190 004c FFF7FEFF 		bl	_ZN9FileStore5WriteEc
 5191 0050 2846     		mov	r0, r5
 5192 0052 2146     		mov	r1, r4
 5193 0054 0022     		movs	r2, #0
 5194 0056 1D4B     		ldr	r3, .L974
 5195 0058 BDE87040 		pop	{r4, r5, r6, lr}
 5196 005c FFF7FEBF 		b	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 5197              	.L972:
 5198 0060 0026     		movs	r6, #0
 5199 0062 D5F83C02 		ldr	r0, [r5, #572]
 5200 0066 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 5201 006a C5F83C62 		str	r6, [r5, #572]
 5202 006e C4F88460 		str	r6, [r4, #132]
 5203 0072 2868     		ldr	r0, [r5]
 5204 0074 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 5205 0078 1449     		ldr	r1, .L974
 5206 007a 154B     		ldr	r3, .L974+4
 5207 007c 3246     		mov	r2, r6
 5208 007e 0228     		cmp	r0, #2
 5209 0080 18BF     		it	ne
 5210 0082 0B46     		movne	r3, r1
 5211 0084 2146     		mov	r1, r4
 5212 0086 2846     		mov	r0, r5
 5213 0088 BDE87040 		pop	{r4, r5, r6, lr}
 5214 008c FFF7FEBF 		b	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 5215              	.L973:
 5216 0090 2046     		mov	r0, r4
 5217 0092 5021     		movs	r1, #80
 5218 0094 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5219 0098 0028     		cmp	r0, #0
 5220 009a CED0     		beq	.L960
 5221 009c 2046     		mov	r0, r4
 5222 009e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5223 00a2 0C4E     		ldr	r6, .L974+8
 5224 00a4 0246     		mov	r2, r0
 5225 00a6 0C49     		ldr	r1, .L974+12
 5226 00a8 3046     		mov	r0, r6
 5227 00aa FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5228 00ae 2846     		mov	r0, r5
 5229 00b0 2146     		mov	r1, r4
 5230 00b2 3368     		ldr	r3, [r6]
 5231 00b4 0022     		movs	r2, #0
 5232 00b6 BDE87040 		pop	{r4, r5, r6, lr}
 5233 00ba FFF7FEBF 		b	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 5234              	.L971:
 5235 00be 0068     		ldr	r0, [r0]
 5236 00c0 0621     		movs	r1, #6
 5237 00c2 064A     		ldr	r2, .L974+16
 5238 00c4 BDE87040 		pop	{r4, r5, r6, lr}
 5239 00c8 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 5240              	.L975:
 5241              		.align	2
 5242              	.L974:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 93


 5243 00cc E4060000 		.word	.LC71
 5244 00d0 D0060000 		.word	.LC70
 5245 00d4 00000000 		.word	scratchString
 5246 00d8 0C070000 		.word	.LC73
 5247 00dc E8060000 		.word	.LC72
 5248              		.size	_ZN6GCodes16WriteGCodeToFileER11GCodeBuffer, .-_ZN6GCodes16WriteGCodeToFileER11GCodeBuffer
 5249              		.section	.text._ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer,"ax",%progbits
 5250              		.align	2
 5251              		.global	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer
 5252              		.thumb
 5253              		.thumb_func
 5254              		.type	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer, %function
 5255              	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer:
 5256              		@ args = 0, pretend = 0, frame = 0
 5257              		@ frame_needed = 0, uses_anonymous_args = 0
 5258 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 5259 0004 1E46     		mov	r6, r3
 5260 0006 0546     		mov	r5, r0
 5261 0008 0C46     		mov	r4, r1
 5262 000a 9146     		mov	r9, r2
 5263 000c 002B     		cmp	r3, #0
 5264 000e 7CD0     		beq	.L976
 5265 0010 836C     		ldr	r3, [r0, #72]
 5266 0012 1B68     		ldr	r3, [r3]
 5267 0014 8B42     		cmp	r3, r1
 5268 0016 00F0A880 		beq	.L1026
 5269 001a 436C     		ldr	r3, [r0, #68]
 5270 001c 1B68     		ldr	r3, [r3]
 5271 001e 8B42     		cmp	r3, r1
 5272 0020 75D0     		beq	.L979
 5273 0022 C36B     		ldr	r3, [r0, #60]
 5274 0024 1B68     		ldr	r3, [r3]
 5275 0026 8B42     		cmp	r3, r1
 5276 0028 71D0     		beq	.L979
 5277 002a 0027     		movs	r7, #0
 5278              	.L980:
 5279 002c 2046     		mov	r0, r4
 5280 002e 4D21     		movs	r1, #77
 5281 0030 94F88C80 		ldrb	r8, [r4, #140]	@ zero_extendqisi2
 5282 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5283 0038 40B9     		cbnz	r0, .L1027
 5284 003a DFF874A1 		ldr	r10, .L1032
 5285              	.L981:
 5286 003e 052F     		cmp	r7, #5
 5287 0040 6AD8     		bhi	.L982
 5288 0042 DFE807F0 		tbb	[pc, r7]
 5289              	.L984:
 5290 0046 1D       		.byte	(.L983-.L984)/2
 5291 0047 1D       		.byte	(.L983-.L984)/2
 5292 0048 2C       		.byte	(.L985-.L984)/2
 5293 0049 60       		.byte	(.L986-.L984)/2
 5294 004a 0F       		.byte	(.L1007-.L984)/2
 5295 004b 1B       		.byte	(.L988-.L984)/2
 5296              		.align	1
 5297              	.L1027:
 5298 004c 2046     		mov	r0, r4
 5299 004e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 94


 5300 0052 574A     		ldr	r2, .L1032
 5301 0054 574B     		ldr	r3, .L1032+4
 5302 0056 40F2E63A 		movw	r10, #998
 5303 005a 5045     		cmp	r0, r10
 5304 005c 14BF     		ite	ne
 5305 005e 9246     		movne	r10, r2
 5306 0060 9A46     		moveq	r10, r3
 5307 0062 ECE7     		b	.L981
 5308              	.L1007:
 5309 0064 544C     		ldr	r4, .L1032+8
 5310              	.L987:
 5311 0066 3046     		mov	r0, r6
 5312 0068 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllEPS_
 5313 006c 2868     		ldr	r0, [r5]
 5314 006e 4146     		mov	r1, r8
 5315 0070 2346     		mov	r3, r4
 5316 0072 524A     		ldr	r2, .L1032+12
 5317 0074 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 5318 0078 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 5319              	.L988:
 5320 007c 504C     		ldr	r4, .L1032+16
 5321 007e F2E7     		b	.L987
 5322              	.L983:
 5323 0080 B9F1000F 		cmp	r9, #0
 5324 0084 04D0     		beq	.L1022
 5325 0086 2868     		ldr	r0, [r5]
 5326 0088 4146     		mov	r1, r8
 5327 008a 4E4A     		ldr	r2, .L1032+20
 5328 008c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5329              	.L1022:
 5330 0090 2868     		ldr	r0, [r5]
 5331 0092 4146     		mov	r1, r8
 5332 0094 3246     		mov	r2, r6
 5333 0096 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 5334 009a FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 5335              	.L985:
 5336 009e 2046     		mov	r0, r4
 5337 00a0 4D21     		movs	r1, #77
 5338 00a2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5339 00a6 0028     		cmp	r0, #0
 5340 00a8 4AD1     		bne	.L1028
 5341              	.L990:
 5342 00aa 2046     		mov	r0, r4
 5343 00ac 4D21     		movs	r1, #77
 5344 00ae FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5345 00b2 0028     		cmp	r0, #0
 5346 00b4 5FD1     		bne	.L1029
 5347              	.L993:
 5348 00b6 2046     		mov	r0, r4
 5349 00b8 4D21     		movs	r1, #77
 5350 00ba FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5351 00be 20B1     		cbz	r0, .L1000
 5352 00c0 2046     		mov	r0, r4
 5353 00c2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5354 00c6 6928     		cmp	r0, #105
 5355 00c8 2FD0     		beq	.L994
 5356              	.L1000:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 95


 5357 00ca 2046     		mov	r0, r4
 5358 00cc 4D21     		movs	r1, #77
 5359 00ce FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5360 00d2 18BB     		cbnz	r0, .L1030
 5361              	.L995:
 5362 00d4 3046     		mov	r0, r6
 5363 00d6 FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 5364 00da 0028     		cmp	r0, #0
 5365 00dc 59D1     		bne	.L1031
 5366              	.L996:
 5367 00de 3046     		mov	r0, r6
 5368 00e0 FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 5369 00e4 0028     		cmp	r0, #0
 5370 00e6 D3D1     		bne	.L1022
 5371 00e8 3046     		mov	r0, r6
 5372 00ea FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllEPS_
 5373              	.L1024:
 5374 00ee 5246     		mov	r2, r10
 5375 00f0 2868     		ldr	r0, [r5]
 5376 00f2 4146     		mov	r1, r8
 5377 00f4 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5378 00f8 2868     		ldr	r0, [r5]
 5379 00fa 4146     		mov	r1, r8
 5380 00fc 324A     		ldr	r2, .L1032+24
 5381 00fe BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 5382 0102 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 5383              	.L986:
 5384 0106 314C     		ldr	r4, .L1032+28
 5385 0108 ADE7     		b	.L987
 5386              	.L976:
 5387 010a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 5388              	.L979:
 5389 010e 2868     		ldr	r0, [r5]
 5390 0110 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 5391 0114 0746     		mov	r7, r0
 5392 0116 89E7     		b	.L980
 5393              	.L982:
 5394 0118 2D4C     		ldr	r4, .L1032+32
 5395 011a A4E7     		b	.L987
 5396              	.L1030:
 5397 011c 2046     		mov	r0, r4
 5398 011e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5399 0122 40F2E633 		movw	r3, #998
 5400 0126 9842     		cmp	r0, r3
 5401 0128 D4D1     		bne	.L995
 5402              	.L994:
 5403 012a 5246     		mov	r2, r10
 5404 012c 2868     		ldr	r0, [r5]
 5405 012e 4146     		mov	r1, r8
 5406 0130 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5407 0134 2868     		ldr	r0, [r5]
 5408 0136 274A     		ldr	r2, .L1032+36
 5409 0138 4146     		mov	r1, r8
 5410              	.L1023:
 5411 013a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5412 013e A7E7     		b	.L1022
 5413              	.L1028:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 96


 5414 0140 2046     		mov	r0, r4
 5415 0142 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5416 0146 1428     		cmp	r0, #20
 5417 0148 AFD1     		bne	.L990
 5418 014a 2868     		ldr	r0, [r5]
 5419 014c 4146     		mov	r1, r8
 5420 014e 224A     		ldr	r2, .L1032+40
 5421 0150 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5422 0154 3246     		mov	r2, r6
 5423 0156 2868     		ldr	r0, [r5]
 5424 0158 4146     		mov	r1, r8
 5425 015a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 5426 015e 2868     		ldr	r0, [r5]
 5427 0160 1E4A     		ldr	r2, .L1032+44
 5428 0162 4146     		mov	r1, r8
 5429              	.L1025:
 5430 0164 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5431 0168 C1E7     		b	.L1024
 5432              	.L1026:
 5433 016a 3146     		mov	r1, r6
 5434 016c 0068     		ldr	r0, [r0]
 5435 016e BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 5436 0172 FFF7FEBF 		b	_ZN8Platform14AppendAuxReplyEP12OutputBuffer
 5437              	.L1029:
 5438 0176 2046     		mov	r0, r4
 5439 0178 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5440 017c 1C28     		cmp	r0, #28
 5441 017e 9AD1     		bne	.L993
 5442 0180 5246     		mov	r2, r10
 5443 0182 2868     		ldr	r0, [r5]
 5444 0184 4146     		mov	r1, r8
 5445 0186 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5446 018a 2868     		ldr	r0, [r5]
 5447 018c 4146     		mov	r1, r8
 5448 018e 0E4A     		ldr	r2, .L1032+24
 5449 0190 D3E7     		b	.L1023
 5450              	.L1031:
 5451 0192 2046     		mov	r0, r4
 5452 0194 FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 5453 0198 0028     		cmp	r0, #0
 5454 019a A0D1     		bne	.L996
 5455 019c 3246     		mov	r2, r6
 5456 019e 2868     		ldr	r0, [r5]
 5457 01a0 4146     		mov	r1, r8
 5458 01a2 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 5459 01a6 2868     		ldr	r0, [r5]
 5460 01a8 4146     		mov	r1, r8
 5461 01aa 074A     		ldr	r2, .L1032+24
 5462 01ac DAE7     		b	.L1025
 5463              	.L1033:
 5464 01ae 00BF     		.align	2
 5465              	.L1032:
 5466 01b0 68060000 		.word	.LC60
 5467 01b4 6C060000 		.word	.LC61
 5468 01b8 78060000 		.word	.LC63
 5469 01bc A4060000 		.word	.LC68
 5470 01c0 84060000 		.word	.LC64
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 97


 5471 01c4 98060000 		.word	.LC66
 5472 01c8 A0060000 		.word	.LC67
 5473 01cc 70060000 		.word	.LC62
 5474 01d0 90060000 		.word	.LC65
 5475 01d4 CC060000 		.word	.LC69
 5476 01d8 10070000 		.word	.LC74
 5477 01dc 24070000 		.word	.LC75
 5478              		.size	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer, .-_ZN6GCodes11HandleReplyER11GCodeBu
 5479              		.section	.text._ZN6GCodes16SetPidParametersER11GCodeBufferiR9StringRef,"ax",%progbits
 5480              		.align	2
 5481              		.global	_ZN6GCodes16SetPidParametersER11GCodeBufferiR9StringRef
 5482              		.thumb
 5483              		.thumb_func
 5484              		.type	_ZN6GCodes16SetPidParametersER11GCodeBufferiR9StringRef, %function
 5485              	_ZN6GCodes16SetPidParametersER11GCodeBufferiR9StringRef:
 5486              		@ args = 0, pretend = 0, frame = 16
 5487              		@ frame_needed = 0, uses_anonymous_args = 0
 5488 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 5489 0004 0846     		mov	r0, r1
 5490 0006 8BB0     		sub	sp, sp, #44
 5491 0008 0C46     		mov	r4, r1
 5492 000a 4821     		movs	r1, #72
 5493 000c 1546     		mov	r5, r2
 5494 000e 1F46     		mov	r7, r3
 5495 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5496 0014 0028     		cmp	r0, #0
 5497 0016 46D1     		bne	.L1044
 5498              	.L1035:
 5499 0018 062D     		cmp	r5, #6
 5500 001a 02D9     		bls	.L1045
 5501              	.L1034:
 5502 001c 0BB0     		add	sp, sp, #44
 5503              		@ sp needed
 5504 001e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 5505              	.L1045:
 5506 0022 DFF8C490 		ldr	r9, .L1048+12
 5507 0026 07A8     		add	r0, sp, #28
 5508 0028 D9F80C30 		ldr	r3, [r9, #12]
 5509 002c 0022     		movs	r2, #0
 5510 002e 03EB8503 		add	r3, r3, r5, lsl #2
 5511 0032 D3F80480 		ldr	r8, [r3, #4]
 5512 0036 0AAE     		add	r6, sp, #40
 5513 0038 08F13001 		add	r1, r8, #48
 5514 003c FFF7FEFF 		bl	_ZNK5FopDt20GetM301PidParametersEb
 5515 0040 0023     		movs	r3, #0
 5516 0042 06F80D3D 		strb	r3, [r6, #-13]!
 5517 0046 3346     		mov	r3, r6
 5518 0048 07AA     		add	r2, sp, #28
 5519 004a 2046     		mov	r0, r4
 5520 004c 5021     		movs	r1, #80
 5521 004e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 5522 0052 2046     		mov	r0, r4
 5523 0054 3346     		mov	r3, r6
 5524 0056 4921     		movs	r1, #73
 5525 0058 08AA     		add	r2, sp, #32
 5526 005a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 5527 005e 3346     		mov	r3, r6
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 98


 5528 0060 2046     		mov	r0, r4
 5529 0062 4421     		movs	r1, #68
 5530 0064 09AA     		add	r2, sp, #36
 5531 0066 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 5532 006a 9DF81B30 		ldrb	r3, [sp, #27]	@ zero_extendqisi2
 5533 006e 2BBB     		cbnz	r3, .L1046
 5534 0070 98F84130 		ldrb	r3, [r8, #65]	@ zero_extendqisi2
 5535 0074 E3B1     		cbz	r3, .L1047
 5536 0076 98F84230 		ldrb	r3, [r8, #66]	@ zero_extendqisi2
 5537 007a 43B3     		cbz	r3, .L1040
 5538 007c 0798     		ldr	r0, [sp, #28]	@ float
 5539 007e FFF7FEFF 		bl	__aeabi_f2d
 5540 0082 CDE90001 		strd	r0, [sp]
 5541 0086 0898     		ldr	r0, [sp, #32]	@ float
 5542 0088 FFF7FEFF 		bl	__aeabi_f2d
 5543 008c CDE90201 		strd	r0, [sp, #8]
 5544 0090 0998     		ldr	r0, [sp, #36]	@ float
 5545 0092 FFF7FEFF 		bl	__aeabi_f2d
 5546 0096 2A46     		mov	r2, r5
 5547 0098 CDE90401 		strd	r0, [sp, #16]
 5548 009c 3846     		mov	r0, r7
 5549 009e 0F49     		ldr	r1, .L1048
 5550 00a0 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5551 00a4 BAE7     		b	.L1034
 5552              	.L1044:
 5553 00a6 2046     		mov	r0, r4
 5554 00a8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5555 00ac 0546     		mov	r5, r0
 5556 00ae B3E7     		b	.L1035
 5557              	.L1047:
 5558 00b0 3846     		mov	r0, r7
 5559 00b2 2A46     		mov	r2, r5
 5560 00b4 0A49     		ldr	r1, .L1048+4
 5561 00b6 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5562 00ba AFE7     		b	.L1034
 5563              	.L1046:
 5564 00bc D9F80C00 		ldr	r0, [r9, #12]
 5565 00c0 2946     		mov	r1, r5
 5566 00c2 07AA     		add	r2, sp, #28
 5567 00c4 FFF7FEFF 		bl	_ZN4Heat20SetM301PidParametersEjRK17M301PidParameters
 5568 00c8 0BB0     		add	sp, sp, #44
 5569              		@ sp needed
 5570 00ca BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 5571              	.L1040:
 5572 00ce 2A46     		mov	r2, r5
 5573 00d0 3846     		mov	r0, r7
 5574 00d2 2B46     		mov	r3, r5
 5575 00d4 0349     		ldr	r1, .L1048+8
 5576 00d6 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5577 00da 9FE7     		b	.L1034
 5578              	.L1049:
 5579              		.align	2
 5580              	.L1048:
 5581 00dc 54070000 		.word	.LC77
 5582 00e0 34070000 		.word	.LC76
 5583 00e4 74070000 		.word	.LC78
 5584 00e8 00000000 		.word	reprap
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 99


 5585              		.size	_ZN6GCodes16SetPidParametersER11GCodeBufferiR9StringRef, .-_ZN6GCodes16SetPidParametersER11G
 5586              		.section	.text._ZN6GCodes19SetHeaterParametersER11GCodeBufferR9StringRef,"ax",%progbits
 5587              		.align	2
 5588              		.global	_ZN6GCodes19SetHeaterParametersER11GCodeBufferR9StringRef
 5589              		.thumb
 5590              		.thumb_func
 5591              		.type	_ZN6GCodes19SetHeaterParametersER11GCodeBufferR9StringRef, %function
 5592              	_ZN6GCodes19SetHeaterParametersER11GCodeBufferR9StringRef:
 5593              		@ args = 0, pretend = 0, frame = 40
 5594              		@ frame_needed = 0, uses_anonymous_args = 0
 5595 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 5596 0004 0C46     		mov	r4, r1
 5597 0006 95B0     		sub	sp, sp, #84
 5598 0008 8046     		mov	r8, r0
 5599 000a 5021     		movs	r1, #80
 5600 000c 2046     		mov	r0, r4
 5601 000e 9346     		mov	fp, r2
 5602 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5603 0014 10B9     		cbnz	r0, .L1081
 5604              	.L1050:
 5605 0016 15B0     		add	sp, sp, #84
 5606              		@ sp needed
 5607 0018 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 5608              	.L1081:
 5609 001c 2046     		mov	r0, r4
 5610 001e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5611 0022 0628     		cmp	r0, #6
 5612 0024 8146     		mov	r9, r0
 5613 0026 00F28480 		bhi	.L1052
 5614 002a C0EBC005 		rsb	r5, r0, r0, lsl #3
 5615 002e D8F80030 		ldr	r3, [r8]
 5616 0032 AD00     		lsls	r5, r5, #2
 5617 0034 05F5A465 		add	r5, r5, #1312
 5618 0038 1D44     		add	r5, r5, r3
 5619 003a 05F1040A 		add	r10, r5, #4
 5620 003e 6A68     		ldr	r2, [r5, #4]	@ float
 5621 0040 DAF80410 		ldr	r1, [r10, #4]	@ float
 5622 0044 DAF808E0 		ldr	lr, [r10, #8]	@ float
 5623 0048 DAF80C70 		ldr	r7, [r10, #12]	@ float
 5624 004c 0DF13F03 		add	r3, sp, #63
 5625 0050 2046     		mov	r0, r4
 5626 0052 1191     		str	r1, [sp, #68]	@ float
 5627 0054 1092     		str	r2, [sp, #64]	@ float
 5628 0056 5421     		movs	r1, #84
 5629 0058 10AA     		add	r2, sp, #64
 5630 005a 0026     		movs	r6, #0
 5631 005c CDF848E0 		str	lr, [sp, #72]	@ float
 5632 0060 1397     		str	r7, [sp, #76]	@ float
 5633 0062 8DF83F60 		strb	r6, [sp, #63]
 5634 0066 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 5635 006a 2046     		mov	r0, r4
 5636 006c 0DF13F03 		add	r3, sp, #63
 5637 0070 4221     		movs	r1, #66
 5638 0072 11AA     		add	r2, sp, #68
 5639 0074 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 5640 0078 2046     		mov	r0, r4
 5641 007a 0DF13F03 		add	r3, sp, #63
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 100


 5642 007e 4321     		movs	r1, #67
 5643 0080 12AA     		add	r2, sp, #72
 5644 0082 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 5645 0086 0DF13F03 		add	r3, sp, #63
 5646 008a 2046     		mov	r0, r4
 5647 008c 5221     		movs	r1, #82
 5648 008e 13AA     		add	r2, sp, #76
 5649 0090 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 5650 0094 9DF83F30 		ldrb	r3, [sp, #63]	@ zero_extendqisi2
 5651 0098 002B     		cmp	r3, #0
 5652 009a 54D1     		bne	.L1082
 5653              	.L1053:
 5654 009c 2046     		mov	r0, r4
 5655 009e 4C21     		movs	r1, #76
 5656 00a0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5657 00a4 0028     		cmp	r0, #0
 5658 00a6 7FD1     		bne	.L1083
 5659              	.L1054:
 5660 00a8 2046     		mov	r0, r4
 5661 00aa 4821     		movs	r1, #72
 5662 00ac FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5663 00b0 0028     		cmp	r0, #0
 5664 00b2 6DD1     		bne	.L1084
 5665              	.L1057:
 5666 00b4 2046     		mov	r0, r4
 5667 00b6 5821     		movs	r1, #88
 5668 00b8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5669 00bc 0028     		cmp	r0, #0
 5670 00be 4BD1     		bne	.L1085
 5671 00c0 9DF83F30 		ldrb	r3, [sp, #63]	@ zero_extendqisi2
 5672 00c4 002B     		cmp	r3, #0
 5673 00c6 A6D1     		bne	.L1050
 5674 00c8 6868     		ldr	r0, [r5, #4]	@ float
 5675 00ca FFF7FEFF 		bl	__aeabi_f2d
 5676 00ce 0246     		mov	r2, r0
 5677 00d0 DAF80400 		ldr	r0, [r10, #4]	@ float
 5678 00d4 0B92     		str	r2, [sp, #44]
 5679 00d6 0A91     		str	r1, [sp, #40]
 5680 00d8 FFF7FEFF 		bl	__aeabi_f2d
 5681 00dc 0646     		mov	r6, r0
 5682 00de DAF80800 		ldr	r0, [r10, #8]	@ float
 5683 00e2 0F46     		mov	r7, r1
 5684 00e4 FFF7FEFF 		bl	__aeabi_f2d
 5685 00e8 0446     		mov	r4, r0
 5686 00ea DAF80C00 		ldr	r0, [r10, #12]	@ float
 5687 00ee 0D46     		mov	r5, r1
 5688 00f0 FFF7FEFF 		bl	__aeabi_f2d
 5689 00f4 CDE90C01 		strd	r0, [sp, #48]
 5690 00f8 4946     		mov	r1, r9
 5691 00fa D8F80000 		ldr	r0, [r8]
 5692 00fe 9AF91090 		ldrsb	r9, [r10, #16]
 5693 0102 9AF91180 		ldrsb	r8, [r10, #17]
 5694 0106 FFF7FEFF 		bl	_ZNK8Platform19GetThermistorNumberEj
 5695 010a CDE90067 		strd	r6, [sp]
 5696 010e 0890     		str	r0, [sp, #32]
 5697 0110 CDE90245 		strd	r4, [sp, #8]
 5698 0114 DDE90C01 		ldrd	r0, [sp, #48]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 101


 5699 0118 CDF81890 		str	r9, [sp, #24]
 5700 011c CDE90401 		strd	r0, [sp, #16]
 5701 0120 CDF81C80 		str	r8, [sp, #28]
 5702 0124 0B9A     		ldr	r2, [sp, #44]
 5703 0126 0A9B     		ldr	r3, [sp, #40]
 5704 0128 5846     		mov	r0, fp
 5705 012a 2C49     		ldr	r1, .L1086
 5706 012c FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5707 0130 71E7     		b	.L1050
 5708              	.L1052:
 5709 0132 D8F80000 		ldr	r0, [r8]
 5710 0136 4B46     		mov	r3, r9
 5711 0138 0621     		movs	r1, #6
 5712 013a 294A     		ldr	r2, .L1086+4
 5713 013c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 5714 0140 15B0     		add	sp, sp, #84
 5715              		@ sp needed
 5716 0142 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 5717              	.L1082:
 5718 0146 1398     		ldr	r0, [sp, #76]	@ float
 5719 0148 1099     		ldr	r1, [sp, #64]	@ float
 5720 014a 0090     		str	r0, [sp]	@ float
 5721 014c 119A     		ldr	r2, [sp, #68]	@ float
 5722 014e 129B     		ldr	r3, [sp, #72]	@ float
 5723 0150 5046     		mov	r0, r10
 5724 0152 FFF7FEFF 		bl	_ZN10Thermistor13SetParametersEffff
 5725 0156 A1E7     		b	.L1053
 5726              	.L1085:
 5727 0158 2046     		mov	r0, r4
 5728 015a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5729 015e 0628     		cmp	r0, #6
 5730 0160 0246     		mov	r2, r0
 5731 0162 0FD9     		bls	.L1061
 5732 0164 A0F16403 		sub	r3, r0, #100
 5733 0168 032B     		cmp	r3, #3
 5734 016a 0BD9     		bls	.L1061
 5735 016c A0F1C803 		sub	r3, r0, #200
 5736 0170 032B     		cmp	r3, #3
 5737 0172 07D9     		bls	.L1061
 5738 0174 1346     		mov	r3, r2
 5739 0176 D8F80000 		ldr	r0, [r8]
 5740 017a 0621     		movs	r1, #6
 5741 017c 194A     		ldr	r2, .L1086+8
 5742 017e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 5743 0182 48E7     		b	.L1050
 5744              	.L1061:
 5745 0184 D8F80000 		ldr	r0, [r8]
 5746 0188 4946     		mov	r1, r9
 5747 018a FFF7FEFF 		bl	_ZN8Platform19SetThermistorNumberEjj
 5748 018e 42E7     		b	.L1050
 5749              	.L1084:
 5750 0190 2046     		mov	r0, r4
 5751 0192 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5752 0196 6328     		cmp	r0, #99
 5753 0198 19DC     		bgt	.L1067
 5754 019a 10F1630F 		cmn	r0, #99
 5755 019e B8BF     		it	lt
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 102


 5756 01a0 9C20     		movlt	r0, #156
 5757 01a2 15DB     		blt	.L1059
 5758 01a4 C0B2     		uxtb	r0, r0
 5759 01a6 13E0     		b	.L1059
 5760              	.L1083:
 5761 01a8 2046     		mov	r0, r4
 5762 01aa FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5763 01ae 6328     		cmp	r0, #99
 5764 01b0 06DC     		bgt	.L1065
 5765 01b2 10F1630F 		cmn	r0, #99
 5766 01b6 B8BF     		it	lt
 5767 01b8 9C20     		movlt	r0, #156
 5768 01ba 02DB     		blt	.L1056
 5769 01bc C0B2     		uxtb	r0, r0
 5770 01be 00E0     		b	.L1056
 5771              	.L1065:
 5772 01c0 6420     		movs	r0, #100
 5773              	.L1056:
 5774 01c2 0123     		movs	r3, #1
 5775 01c4 8AF81000 		strb	r0, [r10, #16]
 5776 01c8 8DF83F30 		strb	r3, [sp, #63]
 5777 01cc 6CE7     		b	.L1054
 5778              	.L1067:
 5779 01ce 6420     		movs	r0, #100
 5780              	.L1059:
 5781 01d0 0123     		movs	r3, #1
 5782 01d2 8AF81100 		strb	r0, [r10, #17]
 5783 01d6 8DF83F30 		strb	r3, [sp, #63]
 5784 01da 6BE7     		b	.L1057
 5785              	.L1087:
 5786              		.align	2
 5787              	.L1086:
 5788 01dc E4070000 		.word	.LC80
 5789 01e0 10080000 		.word	.LC81
 5790 01e4 BC070000 		.word	.LC79
 5791              		.size	_ZN6GCodes19SetHeaterParametersER11GCodeBufferR9StringRef, .-_ZN6GCodes19SetHeaterParameters
 5792              		.section	.text._ZN6GCodes14SetToolHeatersEP4Toolf,"ax",%progbits
 5793              		.align	2
 5794              		.global	_ZN6GCodes14SetToolHeatersEP4Toolf
 5795              		.thumb
 5796              		.thumb_func
 5797              		.type	_ZN6GCodes14SetToolHeatersEP4Toolf, %function
 5798              	_ZN6GCodes14SetToolHeatersEP4Toolf:
 5799              		@ args = 0, pretend = 0, frame = 56
 5800              		@ frame_needed = 0, uses_anonymous_args = 0
 5801 0000 30B5     		push	{r4, r5, lr}
 5802 0002 0D46     		mov	r5, r1
 5803 0004 8FB0     		sub	sp, sp, #60
 5804 0006 1446     		mov	r4, r2
 5805 0008 A9B1     		cbz	r1, .L1095
 5806 000a 07AA     		add	r2, sp, #28
 5807 000c 6946     		mov	r1, sp
 5808 000e 2846     		mov	r0, r5
 5809 0010 FFF7FEFF 		bl	_ZNK4Tool12GetVariablesEPfS0_
 5810 0014 D5F89020 		ldr	r2, [r5, #144]
 5811 0018 32B1     		cbz	r2, .L1092
 5812 001a 07AB     		add	r3, sp, #28
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 103


 5813 001c 03EB8202 		add	r2, r3, r2, lsl #2
 5814              	.L1093:
 5815 0020 43F8044B 		str	r4, [r3], #4	@ float
 5816 0024 9342     		cmp	r3, r2
 5817 0026 FBD1     		bne	.L1093
 5818              	.L1092:
 5819 0028 2846     		mov	r0, r5
 5820 002a 6946     		mov	r1, sp
 5821 002c 07AA     		add	r2, sp, #28
 5822 002e FFF7FEFF 		bl	_ZN4Tool12SetVariablesEPKfS1_
 5823 0032 0FB0     		add	sp, sp, #60
 5824              		@ sp needed
 5825 0034 30BD     		pop	{r4, r5, pc}
 5826              	.L1095:
 5827 0036 0068     		ldr	r0, [r0]
 5828 0038 0621     		movs	r1, #6
 5829 003a 024A     		ldr	r2, .L1096
 5830 003c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5831 0040 0FB0     		add	sp, sp, #60
 5832              		@ sp needed
 5833 0042 30BD     		pop	{r4, r5, pc}
 5834              	.L1097:
 5835              		.align	2
 5836              	.L1096:
 5837 0044 34080000 		.word	.LC82
 5838              		.size	_ZN6GCodes14SetToolHeatersEP4Toolf, .-_ZN6GCodes14SetToolHeatersEP4Toolf
 5839              		.section	.text._ZN6GCodes15RetractFilamentER11GCodeBufferb,"ax",%progbits
 5840              		.align	2
 5841              		.global	_ZN6GCodes15RetractFilamentER11GCodeBufferb
 5842              		.thumb
 5843              		.thumb_func
 5844              		.type	_ZN6GCodes15RetractFilamentER11GCodeBufferb, %function
 5845              	_ZN6GCodes15RetractFilamentER11GCodeBufferb:
 5846              		@ args = 0, pretend = 0, frame = 8
 5847              		@ frame_needed = 0, uses_anonymous_args = 0
 5848 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 5849 0004 90F8C032 		ldrb	r3, [r0, #704]	@ zero_extendqisi2
 5850 0008 83B0     		sub	sp, sp, #12
 5851 000a 9342     		cmp	r3, r2
 5852 000c 0446     		mov	r4, r0
 5853 000e 1546     		mov	r5, r2
 5854 0010 0F46     		mov	r7, r1
 5855 0012 24D0     		beq	.L1140
 5856 0014 D0F8AC02 		ldr	r0, [r0, #684]	@ float
 5857 0018 0021     		movs	r1, #0
 5858 001a FFF7FEFF 		bl	__aeabi_fcmpeq
 5859 001e 78B9     		cbnz	r0, .L1144
 5860              	.L1100:
 5861 0020 DFF87881 		ldr	r8, .L1149
 5862 0024 D8F82490 		ldr	r9, [r8, #36]
 5863 0028 B9F1000F 		cmp	r9, #0
 5864 002c 02D0     		beq	.L1102
 5865 002e D9F83860 		ldr	r6, [r9, #56]
 5866 0032 C6B9     		cbnz	r6, .L1145
 5867              	.L1102:
 5868 0034 0120     		movs	r0, #1
 5869 0036 84F8C052 		strb	r5, [r4, #704]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 104


 5870 003a 03B0     		add	sp, sp, #12
 5871              		@ sp needed
 5872 003c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 5873              	.L1144:
 5874 0040 D4F8BC02 		ldr	r0, [r4, #700]	@ float
 5875 0044 0021     		movs	r1, #0
 5876 0046 FFF7FEFF 		bl	__aeabi_fcmpeq
 5877 004a 0028     		cmp	r0, #0
 5878 004c E8D0     		beq	.L1100
 5879 004e 35B9     		cbnz	r5, .L1140
 5880 0050 D4F8B002 		ldr	r0, [r4, #688]	@ float
 5881 0054 0021     		movs	r1, #0
 5882 0056 FFF7FEFF 		bl	__aeabi_fcmpeq
 5883 005a 0028     		cmp	r0, #0
 5884 005c E0D0     		beq	.L1100
 5885              	.L1140:
 5886 005e 0120     		movs	r0, #1
 5887 0060 03B0     		add	sp, sp, #12
 5888              		@ sp needed
 5889 0062 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 5890              	.L1145:
 5891 0066 D4F8DCA0 		ldr	r10, [r4, #220]
 5892 006a BAF1000F 		cmp	r10, #0
 5893 006e 03D0     		beq	.L1146
 5894 0070 0020     		movs	r0, #0
 5895 0072 03B0     		add	sp, sp, #12
 5896              		@ sp needed
 5897 0074 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 5898              	.L1146:
 5899 0078 4046     		mov	r0, r8
 5900 007a FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 5901 007e 04F18801 		add	r1, r4, #136
 5902 0082 0090     		str	r0, [sp]
 5903 0084 0346     		mov	r3, r0
 5904 0086 5246     		mov	r2, r10
 5905 0088 D8F80800 		ldr	r0, [r8, #8]
 5906 008c FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhm
 5907 0090 D4F884B1 		ldr	fp, [r4, #388]
 5908 0094 BBF1080F 		cmp	fp, #8
 5909 0098 0ED8     		bhi	.L1106
 5910 009a 4FEA8B0E 		lsl	lr, fp, #2
 5911 009e 4FF00008 		mov	r8, #0
 5912 00a2 5246     		mov	r2, r10
 5913 00a4 CEF1240E 		rsb	lr, lr, #36
 5914 00a8 04EB8B00 		add	r0, r4, fp, lsl #2
 5915              	.L1107:
 5916 00ac 8118     		adds	r1, r0, r2
 5917 00ae 0432     		adds	r2, r2, #4
 5918 00b0 7245     		cmp	r2, lr
 5919 00b2 C1F88880 		str	r8, [r1, #136]	@ float
 5920 00b6 F9D1     		bne	.L1107
 5921              	.L1106:
 5922 00b8 002D     		cmp	r5, #0
 5923 00ba 5ED0     		beq	.L1147
 5924 00bc D4F8B432 		ldr	r3, [r4, #692]	@ float
 5925 00c0 0193     		str	r3, [sp, #4]	@ float
 5926              	.L1108:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 105


 5927 00c2 D4F8BC82 		ldr	r8, [r4, #700]	@ float
 5928 00c6 0021     		movs	r1, #0
 5929 00c8 4046     		mov	r0, r8
 5930 00ca FFF7FEFF 		bl	__aeabi_fcmpeq
 5931 00ce 0028     		cmp	r0, #0
 5932 00d0 44D0     		beq	.L1109
 5933 00d2 0198     		ldr	r0, [sp, #4]	@ float
 5934 00d4 D4F8ACA2 		ldr	r10, [r4, #684]	@ float
 5935              	.L1110:
 5936 00d8 C4F8C400 		str	r0, [r4, #196]	@ float
 5937 00dc D4F89010 		ldr	r1, [r4, #144]	@ float
 5938 00e0 A5BB     		cbnz	r5, .L1112
 5939 00e2 0846     		mov	r0, r1
 5940 00e4 4146     		mov	r1, r8
 5941 00e6 FFF7FEFF 		bl	__aeabi_fsub
 5942 00ea D4F8B012 		ldr	r1, [r4, #688]	@ float
 5943 00ee C4F89000 		str	r0, [r4, #144]	@ float
 5944 00f2 5046     		mov	r0, r10
 5945 00f4 FFF7FEFF 		bl	__aeabi_fadd
 5946 00f8 8246     		mov	r10, r0
 5947              	.L1113:
 5948 00fa CC46     		mov	ip, r9
 5949 00fc 0022     		movs	r2, #0
 5950              	.L1116:
 5951 00fe DCF80810 		ldr	r1, [ip, #8]
 5952 0102 0132     		adds	r2, r2, #1
 5953 0104 5944     		add	r1, r1, fp
 5954 0106 2231     		adds	r1, r1, #34
 5955 0108 B242     		cmp	r2, r6
 5956 010a 44F821A0 		str	r10, [r4, r1, lsl #2]	@ float
 5957 010e 0CF1040C 		add	ip, ip, #4
 5958 0112 F4D1     		bne	.L1116
 5959 0114 0023     		movs	r3, #0
 5960 0116 226C     		ldr	r2, [r4, #64]
 5961 0118 84F8D630 		strb	r3, [r4, #214]
 5962 011c 1268     		ldr	r2, [r2]
 5963 011e 0121     		movs	r1, #1
 5964 0120 BA42     		cmp	r2, r7
 5965 0122 84F8D830 		strb	r3, [r4, #216]
 5966 0126 84F8D710 		strb	r1, [r4, #215]
 5967 012a 18BF     		it	ne
 5968 012c 4FF0FF30 		movne	r0, #-1
 5969 0130 29D0     		beq	.L1148
 5970              	.L1115:
 5971 0132 0099     		ldr	r1, [sp]
 5972 0134 85F00102 		eor	r2, r5, #1
 5973 0138 0123     		movs	r3, #1
 5974 013a C4F8C800 		str	r0, [r4, #200]
 5975 013e C4F8CC10 		str	r1, [r4, #204]
 5976 0142 84F8D920 		strb	r2, [r4, #217]
 5977 0146 C4F8DC30 		str	r3, [r4, #220]
 5978 014a 73E7     		b	.L1102
 5979              	.L1112:
 5980 014c 4046     		mov	r0, r8
 5981 014e FFF7FEFF 		bl	__aeabi_fadd
 5982 0152 0AF1004A 		add	r10, r10, #-2147483648
 5983 0156 C4F89000 		str	r0, [r4, #144]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 106


 5984 015a CEE7     		b	.L1113
 5985              	.L1109:
 5986 015c D4F8ACA2 		ldr	r10, [r4, #684]	@ float
 5987 0160 0021     		movs	r1, #0
 5988 0162 5046     		mov	r0, r10
 5989 0164 FFF7FEFF 		bl	__aeabi_fcmpeq
 5990 0168 58B9     		cbnz	r0, .L1142
 5991 016a 4146     		mov	r1, r8
 5992 016c 0198     		ldr	r0, [sp, #4]	@ float
 5993 016e FFF7FEFF 		bl	__aeabi_fmul
 5994 0172 5146     		mov	r1, r10
 5995 0174 FFF7FEFF 		bl	__aeabi_fdiv
 5996 0178 AEE7     		b	.L1110
 5997              	.L1147:
 5998 017a D4F8B832 		ldr	r3, [r4, #696]	@ float
 5999 017e 0193     		str	r3, [sp, #4]	@ float
 6000 0180 9FE7     		b	.L1108
 6001              	.L1142:
 6002 0182 0198     		ldr	r0, [sp, #4]	@ float
 6003 0184 A8E7     		b	.L1110
 6004              	.L1148:
 6005 0186 BB68     		ldr	r3, [r7, #8]
 6006 0188 9868     		ldr	r0, [r3, #8]
 6007 018a FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 6008 018e 0646     		mov	r6, r0
 6009 0190 2069     		ldr	r0, [r4, #16]
 6010 0192 0268     		ldr	r2, [r0]
 6011 0194 9368     		ldr	r3, [r2, #8]
 6012 0196 9847     		blx	r3
 6013 0198 301A     		subs	r0, r6, r0
 6014 019a CAE7     		b	.L1115
 6015              	.L1150:
 6016              		.align	2
 6017              	.L1149:
 6018 019c 00000000 		.word	reprap
 6019              		.size	_ZN6GCodes15RetractFilamentER11GCodeBufferb, .-_ZN6GCodes15RetractFilamentER11GCodeBufferb
 6020              		.section	.text._ZNK6GCodes22GetRawExtruderPositionEj,"ax",%progbits
 6021              		.align	2
 6022              		.global	_ZNK6GCodes22GetRawExtruderPositionEj
 6023              		.thumb
 6024              		.thumb_func
 6025              		.type	_ZNK6GCodes22GetRawExtruderPositionEj, %function
 6026              	_ZNK6GCodes22GetRawExtruderPositionEj:
 6027              		@ args = 0, pretend = 0, frame = 0
 6028              		@ frame_needed = 0, uses_anonymous_args = 0
 6029              		@ link register save eliminated.
 6030 0000 D0F88831 		ldr	r3, [r0, #392]
 6031 0004 8B42     		cmp	r3, r1
 6032 0006 86BF     		itte	hi
 6033 0008 00EB8100 		addhi	r0, r0, r1, lsl #2
 6034 000c D0F8A401 		ldrhi	r0, [r0, #420]	@ float
 6035 0010 0020     		movls	r0, #0
 6036 0012 7047     		bx	lr
 6037              		.size	_ZNK6GCodes22GetRawExtruderPositionEj, .-_ZNK6GCodes22GetRawExtruderPositionEj
 6038              		.section	.text._ZNK6GCodes26GetRawExtruderTotalByDriveEj,"ax",%progbits
 6039              		.align	2
 6040              		.global	_ZNK6GCodes26GetRawExtruderTotalByDriveEj
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 107


 6041              		.thumb
 6042              		.thumb_func
 6043              		.type	_ZNK6GCodes26GetRawExtruderTotalByDriveEj, %function
 6044              	_ZNK6GCodes26GetRawExtruderTotalByDriveEj:
 6045              		@ args = 0, pretend = 0, frame = 0
 6046              		@ frame_needed = 0, uses_anonymous_args = 0
 6047              		@ link register save eliminated.
 6048 0000 D0F88831 		ldr	r3, [r0, #392]
 6049 0004 8B42     		cmp	r3, r1
 6050 0006 86BF     		itte	hi
 6051 0008 00EB8100 		addhi	r0, r0, r1, lsl #2
 6052 000c D0F8BC01 		ldrhi	r0, [r0, #444]	@ float
 6053 0010 0020     		movls	r0, #0
 6054 0012 7047     		bx	lr
 6055              		.size	_ZNK6GCodes26GetRawExtruderTotalByDriveEj, .-_ZNK6GCodes26GetRawExtruderTotalByDriveEj
 6056              		.section	.text._ZN6GCodes11CancelPrintEv,"ax",%progbits
 6057              		.align	2
 6058              		.global	_ZN6GCodes11CancelPrintEv
 6059              		.thumb
 6060              		.thumb_func
 6061              		.type	_ZN6GCodes11CancelPrintEv, %function
 6062              	_ZN6GCodes11CancelPrintEv:
 6063              		@ args = 0, pretend = 0, frame = 0
 6064              		@ frame_needed = 0, uses_anonymous_args = 0
 6065 0000 70B5     		push	{r4, r5, r6, lr}
 6066 0002 0446     		mov	r4, r0
 6067 0004 0069     		ldr	r0, [r0, #16]
 6068 0006 0025     		movs	r5, #0
 6069 0008 0368     		ldr	r3, [r0]
 6070 000a 1B68     		ldr	r3, [r3]
 6071 000c C4F8DC50 		str	r5, [r4, #220]
 6072 0010 84F88550 		strb	r5, [r4, #133]
 6073 0014 9847     		blx	r3
 6074 0016 236C     		ldr	r3, [r4, #64]
 6075 0018 1868     		ldr	r0, [r3]
 6076 001a FFF7FEFF 		bl	_ZN11GCodeBuffer4InitEv
 6077 001e 236C     		ldr	r3, [r4, #64]
 6078 0020 1868     		ldr	r0, [r3]
 6079 0022 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 6080 0026 0646     		mov	r6, r0
 6081 0028 8068     		ldr	r0, [r0, #8]
 6082 002a 10B1     		cbz	r0, .L1158
 6083 002c FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 6084 0030 B560     		str	r5, [r6, #8]
 6085              	.L1158:
 6086 0032 084D     		ldr	r5, .L1162
 6087 0034 E869     		ldr	r0, [r5, #28]
 6088 0036 FFF7FEFF 		bl	_ZN12PrintMonitor12StoppedPrintEv
 6089 003a AB68     		ldr	r3, [r5, #8]
 6090 003c 0022     		movs	r2, #0
 6091 003e D4F80803 		ldr	r0, [r4, #776]
 6092 0042 C3F80426 		str	r2, [r3, #1540]
 6093 0046 C3F80026 		str	r2, [r3, #1536]
 6094 004a BDE87040 		pop	{r4, r5, r6, lr}
 6095 004e FFF7FEBF 		b	_ZN10GCodeQueue5ClearEv
 6096              	.L1163:
 6097 0052 00BF     		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 108


 6098              	.L1162:
 6099 0054 00000000 		.word	reprap
 6100              		.size	_ZN6GCodes11CancelPrintEv, .-_ZN6GCodes11CancelPrintEv
 6101              		.section	.text._ZN6GCodes16QueueFileToPrintEPKc,"ax",%progbits
 6102              		.align	2
 6103              		.global	_ZN6GCodes16QueueFileToPrintEPKc
 6104              		.thumb
 6105              		.thumb_func
 6106              		.type	_ZN6GCodes16QueueFileToPrintEPKc, %function
 6107              	_ZN6GCodes16QueueFileToPrintEPKc:
 6108              		@ args = 0, pretend = 0, frame = 0
 6109              		@ frame_needed = 0, uses_anonymous_args = 0
 6110 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 6111 0004 0A46     		mov	r2, r1
 6112 0006 0446     		mov	r4, r0
 6113 0008 0D46     		mov	r5, r1
 6114 000a 0068     		ldr	r0, [r0]
 6115 000c 1A49     		ldr	r1, .L1177
 6116 000e 0023     		movs	r3, #0
 6117 0010 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 6118 0014 0646     		mov	r6, r0
 6119 0016 38B3     		cbz	r0, .L1165
 6120 0018 184F     		ldr	r7, .L1177+4
 6121 001a FB69     		ldr	r3, [r7, #28]
 6122 001c 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 6123 001e FBB1     		cbz	r3, .L1176
 6124              	.L1166:
 6125 0020 236C     		ldr	r3, [r4, #64]
 6126 0022 0022     		movs	r2, #0
 6127 0024 1B68     		ldr	r3, [r3]
 6128 0026 0021     		movs	r1, #0
 6129 0028 C3F88820 		str	r2, [r3, #136]
 6130 002c 2346     		mov	r3, r4
 6131 002e 0622     		movs	r2, #6
 6132              	.L1168:
 6133 0030 013A     		subs	r2, r2, #1
 6134 0032 C3F8A411 		str	r1, [r3, #420]	@ float
 6135 0036 C3F8BC11 		str	r1, [r3, #444]	@ float
 6136 003a 4FF00005 		mov	r5, #0
 6137 003e 03F10403 		add	r3, r3, #4
 6138 0042 F5D1     		bne	.L1168
 6139 0044 B868     		ldr	r0, [r7, #8]
 6140 0046 C4F8D451 		str	r5, [r4, #468]	@ float
 6141 004a FFF7FEFF 		bl	_ZN4Move22ResetExtruderPositionsEv
 6142 004e D4F83802 		ldr	r0, [r4, #568]
 6143 0052 08B1     		cbz	r0, .L1169
 6144 0054 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 6145              	.L1169:
 6146 0058 C4F83862 		str	r6, [r4, #568]
 6147 005c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6148              	.L1176:
 6149 0060 2046     		mov	r0, r4
 6150 0062 FFF7FEFF 		bl	_ZN6GCodes11CancelPrintEv
 6151 0066 DBE7     		b	.L1166
 6152              	.L1165:
 6153 0068 2068     		ldr	r0, [r4]
 6154 006a 2B46     		mov	r3, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 109


 6155 006c 0621     		movs	r1, #6
 6156 006e 044A     		ldr	r2, .L1177+8
 6157 0070 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 6158 0074 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 6159              	.L1178:
 6160              		.align	2
 6161              	.L1177:
 6162 0078 34050000 		.word	.LC49
 6163 007c 00000000 		.word	reprap
 6164 0080 5C080000 		.word	.LC83
 6165              		.size	_ZN6GCodes16QueueFileToPrintEPKc, .-_ZN6GCodes16QueueFileToPrintEPKc
 6166              		.section	.text._ZN6GCodes11HeaterFaultEv,"ax",%progbits
 6167              		.align	2
 6168              		.global	_ZN6GCodes11HeaterFaultEv
 6169              		.thumb
 6170              		.thumb_func
 6171              		.type	_ZN6GCodes11HeaterFaultEv, %function
 6172              	_ZN6GCodes11HeaterFaultEv:
 6173              		@ args = 0, pretend = 0, frame = 0
 6174              		@ frame_needed = 0, uses_anonymous_args = 0
 6175 0000 00B5     		push	{lr}
 6176 0002 036C     		ldr	r3, [r0, #64]
 6177 0004 054A     		ldr	r2, .L1180
 6178 0006 1968     		ldr	r1, [r3]
 6179 0008 83B0     		sub	sp, sp, #12
 6180 000a 0023     		movs	r3, #0
 6181 000c 1268     		ldr	r2, [r2]
 6182 000e 0093     		str	r3, [sp]
 6183 0010 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 6184 0014 03B0     		add	sp, sp, #12
 6185              		@ sp needed
 6186 0016 5DF804FB 		ldr	pc, [sp], #4
 6187              	.L1181:
 6188 001a 00BF     		.align	2
 6189              	.L1180:
 6190 001c 00000000 		.word	.LANCHOR4
 6191              		.size	_ZN6GCodes11HeaterFaultEv, .-_ZN6GCodes11HeaterFaultEv
 6192              		.section	.text._ZN6GCodes16HeaterFaultPauseEv,"ax",%progbits
 6193              		.align	2
 6194              		.global	_ZN6GCodes16HeaterFaultPauseEv
 6195              		.thumb
 6196              		.thumb_func
 6197              		.type	_ZN6GCodes16HeaterFaultPauseEv, %function
 6198              	_ZN6GCodes16HeaterFaultPauseEv:
 6199              		@ args = 0, pretend = 0, frame = 0
 6200              		@ frame_needed = 0, uses_anonymous_args = 0
 6201              		@ link register save eliminated.
 6202 0000 026C     		ldr	r2, [r0, #64]
 6203 0002 836D     		ldr	r3, [r0, #88]
 6204 0004 1168     		ldr	r1, [r2]
 6205 0006 9942     		cmp	r1, r3
 6206 0008 07D0     		beq	.L1183
 6207 000a 03B1     		cbz	r3, .L1185
 6208 000c 7047     		bx	lr
 6209              	.L1185:
 6210 000e 8165     		str	r1, [r0, #88]
 6211 0010 8B68     		ldr	r3, [r1, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 110


 6212 0012 DA68     		ldr	r2, [r3, #12]
 6213 0014 42F00102 		orr	r2, r2, #1
 6214 0018 DA60     		str	r2, [r3, #12]
 6215              	.L1183:
 6216 001a FFF7FEBF 		b	_ZN6GCodes7DoPauseER11GCodeBuffer
 6217              		.size	_ZN6GCodes16HeaterFaultPauseEv, .-_ZN6GCodes16HeaterFaultPauseEv
 6218 001e 00BF     		.section	.text._ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb,"ax",%progbits
 6219              		.align	2
 6220              		.global	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb
 6221              		.thumb
 6222              		.thumb_func
 6223              		.type	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb, %function
 6224              	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb:
 6225              		@ args = 0, pretend = 0, frame = 0
 6226              		@ frame_needed = 0, uses_anonymous_args = 0
 6227 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 6228 0004 0E46     		mov	r6, r1
 6229 0006 1746     		mov	r7, r2
 6230 0008 C1B1     		cbz	r1, .L1189
 6231 000a D1F89030 		ldr	r3, [r1, #144]
 6232 000e ABB1     		cbz	r3, .L1189
 6233 0010 DFF83080 		ldr	r8, .L1198
 6234 0014 0C46     		mov	r4, r1
 6235 0016 0025     		movs	r5, #0
 6236 0018 03E0     		b	.L1190
 6237              	.L1197:
 6238 001a D6F89030 		ldr	r3, [r6, #144]
 6239 001e 9D42     		cmp	r5, r3
 6240 0020 0CD2     		bcs	.L1189
 6241              	.L1190:
 6242 0022 94F93C10 		ldrsb	r1, [r4, #60]
 6243 0026 D8F80C00 		ldr	r0, [r8, #12]
 6244 002a 3A46     		mov	r2, r7
 6245 002c 0135     		adds	r5, r5, #1
 6246 002e 0434     		adds	r4, r4, #4
 6247 0030 FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
 6248 0034 0028     		cmp	r0, #0
 6249 0036 F0D1     		bne	.L1197
 6250 0038 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6251              	.L1189:
 6252 003c 0120     		movs	r0, #1
 6253 003e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6254              	.L1199:
 6255 0042 00BF     		.align	2
 6256              	.L1198:
 6257 0044 00000000 		.word	reprap
 6258              		.size	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb, .-_ZNK6GCodes28ToolHeatersAtSetTemperatu
 6259              		.section	.text._ZN6GCodes12SetPositionsEPKfb,"ax",%progbits
 6260              		.align	2
 6261              		.global	_ZN6GCodes12SetPositionsEPKfb
 6262              		.thumb
 6263              		.thumb_func
 6264              		.type	_ZN6GCodes12SetPositionsEPKfb, %function
 6265              	_ZN6GCodes12SetPositionsEPKfb:
 6266              		@ args = 0, pretend = 0, frame = 40
 6267              		@ frame_needed = 0, uses_anonymous_args = 0
 6268 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 111


 6269 0004 8AB0     		sub	sp, sp, #40
 6270 0006 0C46     		mov	r4, r1
 6271 0008 9046     		mov	r8, r2
 6272 000a 01F12007 		add	r7, r1, #32
 6273 000e 01AE     		add	r6, sp, #4
 6274              	.L1201:
 6275 0010 2068     		ldr	r0, [r4]	@ unaligned
 6276 0012 6168     		ldr	r1, [r4, #4]	@ unaligned
 6277 0014 A268     		ldr	r2, [r4, #8]	@ unaligned
 6278 0016 E368     		ldr	r3, [r4, #12]	@ unaligned
 6279 0018 3546     		mov	r5, r6
 6280 001a 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 6281 001c 1034     		adds	r4, r4, #16
 6282 001e BC42     		cmp	r4, r7
 6283 0020 2E46     		mov	r6, r5
 6284 0022 F5D1     		bne	.L1201
 6285 0024 2068     		ldr	r0, [r4]	@ unaligned
 6286 0026 0B4C     		ldr	r4, .L1203
 6287 0028 2860     		str	r0, [r5]	@ unaligned
 6288 002a 2046     		mov	r0, r4
 6289 002c A568     		ldr	r5, [r4, #8]
 6290 002e FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 6291 0032 4346     		mov	r3, r8
 6292 0034 0246     		mov	r2, r0
 6293 0036 01A9     		add	r1, sp, #4
 6294 0038 2846     		mov	r0, r5
 6295 003a FFF7FEFF 		bl	_ZNK4Move9TransformEPfmb
 6296 003e A068     		ldr	r0, [r4, #8]
 6297 0040 01A9     		add	r1, sp, #4
 6298 0042 FFF7FEFF 		bl	_ZN4Move18SetLiveCoordinatesEPKf
 6299 0046 A068     		ldr	r0, [r4, #8]
 6300 0048 01A9     		add	r1, sp, #4
 6301 004a FFF7FEFF 		bl	_ZN4Move12SetPositionsEPKf
 6302 004e 0AB0     		add	sp, sp, #40
 6303              		@ sp needed
 6304 0050 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6305              	.L1204:
 6306              		.align	2
 6307              	.L1203:
 6308 0054 00000000 		.word	reprap
 6309              		.size	_ZN6GCodes12SetPositionsEPKfb, .-_ZN6GCodes12SetPositionsEPKfb
 6310              		.global	__aeabi_f2uiz
 6311              		.section	.text._ZN6GCodes21DoSingleZProbeAtPointER11GCodeBufferjf,"ax",%progbits
 6312              		.align	2
 6313              		.global	_ZN6GCodes21DoSingleZProbeAtPointER11GCodeBufferjf
 6314              		.thumb
 6315              		.thumb_func
 6316              		.type	_ZN6GCodes21DoSingleZProbeAtPointER11GCodeBufferjf, %function
 6317              	_ZN6GCodes21DoSingleZProbeAtPointER11GCodeBufferjf:
 6318              		@ args = 0, pretend = 0, frame = 0
 6319              		@ frame_needed = 0, uses_anonymous_args = 0
 6320 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 6321 0004 924F     		ldr	r7, .L1234+8
 6322 0006 82B0     		sub	sp, sp, #8
 6323 0008 0646     		mov	r6, r0
 6324 000a 0024     		movs	r4, #0
 6325 000c B868     		ldr	r0, [r7, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 112


 6326 000e 8846     		mov	r8, r1
 6327 0010 9146     		mov	r9, r2
 6328 0012 9A46     		mov	r10, r3
 6329 0014 FFF7FEFF 		bl	_ZN4Move20SetIdentityTransformEv
 6330 0018 2046     		mov	r0, r4
 6331              	.L1207:
 6332 001a 3519     		adds	r5, r6, r4
 6333 001c 0134     		adds	r4, r4, #1
 6334 001e 092C     		cmp	r4, #9
 6335 0020 85F82402 		strb	r0, [r5, #548]
 6336 0024 F9D1     		bne	.L1207
 6337 0026 96F95832 		ldrsb	r3, [r6, #600]
 6338 002a 032B     		cmp	r3, #3
 6339 002c 00F2AC80 		bhi	.L1208
 6340 0030 DFE803F0 		tbb	[pc, r3]
 6341              	.L1210:
 6342 0034 66       		.byte	(.L1209-.L1210)/2
 6343 0035 83       		.byte	(.L1211-.L1210)/2
 6344 0036 1B       		.byte	(.L1212-.L1210)/2
 6345 0037 02       		.byte	(.L1213-.L1210)/2
 6346              		.align	1
 6347              	.L1213:
 6348 0038 3068     		ldr	r0, [r6]
 6349 003a FFF7FEFF 		bl	_ZN8Platform23GetZProbeStartingHeightEv
 6350 003e 0223     		movs	r3, #2
 6351 0040 C6F80402 		str	r0, [r6, #516]	@ float
 6352 0044 86F82632 		strb	r3, [r6, #550]
 6353 0048 3068     		ldr	r0, [r6]
 6354 004a FFF7FEFF 		bl	_ZNK8Platform20GetZProbeTravelSpeedEv
 6355 004e 4146     		mov	r1, r8
 6356 0050 C6F82002 		str	r0, [r6, #544]	@ float
 6357 0054 0022     		movs	r2, #0
 6358 0056 3046     		mov	r0, r6
 6359 0058 FFF7FEFF 		bl	_ZN6GCodes17DoCannedCycleMoveER11GCodeBuffert
 6360 005c 0028     		cmp	r0, #0
 6361 005e 40F09380 		bne	.L1208
 6362              	.L1232:
 6363 0062 0020     		movs	r0, #0
 6364              	.L1215:
 6365 0064 02B0     		add	sp, sp, #8
 6366              		@ sp needed
 6367 0066 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 6368              	.L1212:
 6369 006a FFF7FEFF 		bl	millis
 6370 006e 3368     		ldr	r3, [r6]
 6371 0070 D6F89422 		ldr	r2, [r6, #660]
 6372 0074 D3F89010 		ldr	r1, [r3, #144]
 6373 0078 841A     		subs	r4, r0, r2
 6374 007a 1846     		mov	r0, r3
 6375 007c FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersEl
 6376 0080 7449     		ldr	r1, .L1234+12
 6377 0082 406A     		ldr	r0, [r0, #36]	@ float
 6378 0084 FFF7FEFF 		bl	__aeabi_fmul
 6379 0088 FFF7FEFF 		bl	__aeabi_f2uiz
 6380 008c 8442     		cmp	r4, r0
 6381 008e E8D3     		bcc	.L1232
 6382 0090 D6F85C32 		ldr	r3, [r6, #604]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 113


 6383 0094 5A07     		lsls	r2, r3, #29
 6384 0096 7ED4     		bmi	.L1233
 6385 0098 3368     		ldr	r3, [r6]
 6386 009a D3F8D004 		ldr	r0, [r3, #1232]	@ float
 6387 009e D3F8E814 		ldr	r1, [r3, #1256]	@ float
 6388 00a2 FFF7FEFF 		bl	__aeabi_fsub
 6389 00a6 FFF7FEFF 		bl	__aeabi_f2d
 6390 00aa 67A3     		adr	r3, .L1234
 6391 00ac D3E90023 		ldrd	r2, [r3]
 6392 00b0 FFF7FEFF 		bl	__aeabi_dmul
 6393 00b4 FFF7FEFF 		bl	__aeabi_d2f
 6394 00b8 0246     		mov	r2, r0
 6395              	.L1218:
 6396 00ba 4146     		mov	r1, r8
 6397 00bc 3046     		mov	r0, r6
 6398 00be FFF7FEFF 		bl	_ZN6GCodes8DoZProbeER11GCodeBufferf
 6399 00c2 0128     		cmp	r0, #1
 6400 00c4 0446     		mov	r4, r0
 6401 00c6 00F08F80 		beq	.L1219
 6402 00ca 0228     		cmp	r0, #2
 6403 00cc 6BD0     		beq	.L1220
 6404 00ce 0028     		cmp	r0, #0
 6405 00d0 C7D1     		bne	.L1232
 6406 00d2 0621     		movs	r1, #6
 6407 00d4 604A     		ldr	r2, .L1234+16
 6408 00d6 3068     		ldr	r0, [r6]
 6409 00d8 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6410 00dc 96F85832 		ldrb	r3, [r6, #600]	@ zero_extendqisi2
 6411 00e0 3068     		ldr	r0, [r6]
 6412 00e2 0133     		adds	r3, r3, #1
 6413 00e4 86F85832 		strb	r3, [r6, #600]
 6414 00e8 BD68     		ldr	r5, [r7, #8]
 6415 00ea FFF7FEFF 		bl	_ZNK8Platform19GetZProbeDiveHeightEv
 6416 00ee 0123     		movs	r3, #1
 6417 00f0 0246     		mov	r2, r0
 6418 00f2 4946     		mov	r1, r9
 6419 00f4 2846     		mov	r0, r5
 6420 00f6 0093     		str	r3, [sp]
 6421 00f8 FFF7FEFF 		bl	_ZN4Move17SetZBedProbePointEjfbb
 6422 00fc 2046     		mov	r0, r4
 6423 00fe B1E7     		b	.L1215
 6424              	.L1209:
 6425 0100 3068     		ldr	r0, [r6]
 6426 0102 FFF7FEFF 		bl	_ZN8Platform23GetZProbeStartingHeightEv
 6427 0106 0223     		movs	r3, #2
 6428 0108 C6F80402 		str	r0, [r6, #516]	@ float
 6429 010c 86F82632 		strb	r3, [r6, #550]
 6430 0110 3068     		ldr	r0, [r6]
 6431 0112 FFF7FEFF 		bl	_ZNK8Platform20GetZProbeTravelSpeedEv
 6432 0116 4146     		mov	r1, r8
 6433 0118 C6F82002 		str	r0, [r6, #544]	@ float
 6434 011c 0022     		movs	r2, #0
 6435 011e 3046     		mov	r0, r6
 6436 0120 FFF7FEFF 		bl	_ZN6GCodes17DoCannedCycleMoveER11GCodeBuffert
 6437 0124 0028     		cmp	r0, #0
 6438 0126 9CD0     		beq	.L1232
 6439 0128 96F85832 		ldrb	r3, [r6, #600]	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 114


 6440 012c 0020     		movs	r0, #0
 6441 012e 0133     		adds	r3, r3, #1
 6442 0130 86F85832 		strb	r3, [r6, #600]
 6443 0134 02B0     		add	sp, sp, #8
 6444              		@ sp needed
 6445 0136 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 6446              	.L1211:
 6447 013a 0123     		movs	r3, #1
 6448 013c 4946     		mov	r1, r9
 6449 013e 06F5FE72 		add	r2, r6, #508
 6450 0142 B868     		ldr	r0, [r7, #8]
 6451 0144 0093     		str	r3, [sp]
 6452 0146 06F50073 		add	r3, r6, #512
 6453 014a FFF7FEFF 		bl	_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 6454 014e 0223     		movs	r3, #2
 6455 0150 86F82432 		strb	r3, [r6, #548]
 6456 0154 86F82532 		strb	r3, [r6, #549]
 6457 0158 3068     		ldr	r0, [r6]
 6458 015a FFF7FEFF 		bl	_ZNK8Platform20GetZProbeTravelSpeedEv
 6459 015e 4146     		mov	r1, r8
 6460 0160 C6F82002 		str	r0, [r6, #544]	@ float
 6461 0164 0022     		movs	r2, #0
 6462 0166 3046     		mov	r0, r6
 6463 0168 FFF7FEFF 		bl	_ZN6GCodes17DoCannedCycleMoveER11GCodeBuffert
 6464 016c 0028     		cmp	r0, #0
 6465 016e 3FF478AF 		beq	.L1232
 6466 0172 FFF7FEFF 		bl	millis
 6467 0176 96F85832 		ldrb	r3, [r6, #600]	@ zero_extendqisi2
 6468 017a C6F89402 		str	r0, [r6, #660]
 6469 017e 0133     		adds	r3, r3, #1
 6470 0180 86F85832 		strb	r3, [r6, #600]
 6471 0184 0020     		movs	r0, #0
 6472 0186 6DE7     		b	.L1215
 6473              	.L1208:
 6474 0188 0023     		movs	r3, #0
 6475 018a 0120     		movs	r0, #1
 6476 018c 86F85832 		strb	r3, [r6, #600]
 6477 0190 02B0     		add	sp, sp, #8
 6478              		@ sp needed
 6479 0192 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 6480              	.L1233:
 6481 0196 3068     		ldr	r0, [r6]
 6482 0198 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeDiveHeightEv
 6483 019c 0146     		mov	r1, r0
 6484 019e FFF7FEFF 		bl	__aeabi_fadd
 6485 01a2 0246     		mov	r2, r0
 6486 01a4 89E7     		b	.L1218
 6487              	.L1220:
 6488 01a6 D6F85C32 		ldr	r3, [r6, #604]
 6489 01aa 3068     		ldr	r0, [r6]
 6490 01ac 5B07     		lsls	r3, r3, #29
 6491 01ae 33D5     		bpl	.L1222
 6492 01b0 D6F89040 		ldr	r4, [r6, #144]	@ float
 6493 01b4 FFF7FEFF 		bl	_ZN8Platform16ZProbeStopHeightEv
 6494 01b8 5146     		mov	r1, r10
 6495 01ba FFF7FEFF 		bl	__aeabi_fadd
 6496 01be 0146     		mov	r1, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 115


 6497 01c0 2046     		mov	r0, r4
 6498 01c2 FFF7FEFF 		bl	__aeabi_fsub
 6499 01c6 0246     		mov	r2, r0
 6500 01c8 C6F89002 		str	r0, [r6, #656]	@ float
 6501              	.L1223:
 6502 01cc 0024     		movs	r4, #0
 6503 01ce B868     		ldr	r0, [r7, #8]
 6504 01d0 0123     		movs	r3, #1
 6505 01d2 4946     		mov	r1, r9
 6506 01d4 0094     		str	r4, [sp]
 6507 01d6 FFF7FEFF 		bl	_ZN4Move17SetZBedProbePointEjfbb
 6508 01da 96F85832 		ldrb	r3, [r6, #600]	@ zero_extendqisi2
 6509 01de 2046     		mov	r0, r4
 6510 01e0 0133     		adds	r3, r3, #1
 6511 01e2 86F85832 		strb	r3, [r6, #600]
 6512 01e6 3DE7     		b	.L1215
 6513              	.L1219:
 6514 01e8 0621     		movs	r1, #6
 6515 01ea 1C4A     		ldr	r2, .L1234+20
 6516 01ec 3068     		ldr	r0, [r6]
 6517 01ee FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6518 01f2 96F85832 		ldrb	r3, [r6, #600]	@ zero_extendqisi2
 6519 01f6 3068     		ldr	r0, [r6]
 6520 01f8 0133     		adds	r3, r3, #1
 6521 01fa 86F85832 		strb	r3, [r6, #600]
 6522 01fe BD68     		ldr	r5, [r7, #8]
 6523 0200 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeDiveHeightEv
 6524 0204 0094     		str	r4, [sp]
 6525 0206 00F10042 		add	r2, r0, #-2147483648
 6526 020a 4946     		mov	r1, r9
 6527 020c 2846     		mov	r0, r5
 6528 020e 2346     		mov	r3, r4
 6529 0210 FFF7FEFF 		bl	_ZN4Move17SetZBedProbePointEjfbb
 6530 0214 0020     		movs	r0, #0
 6531 0216 25E7     		b	.L1215
 6532              	.L1222:
 6533 0218 FFF7FEFF 		bl	_ZN8Platform16ZProbeStopHeightEv
 6534 021c 5146     		mov	r1, r10
 6535 021e FFF7FEFF 		bl	__aeabi_fadd
 6536 0222 0122     		movs	r2, #1
 6537 0224 C6F89000 		str	r0, [r6, #144]	@ float
 6538 0228 06F18801 		add	r1, r6, #136
 6539 022c 3046     		mov	r0, r6
 6540 022e FFF7FEFF 		bl	_ZN6GCodes12SetPositionsEPKfb
 6541 0232 D6F85C32 		ldr	r3, [r6, #604]
 6542 0236 0022     		movs	r2, #0
 6543 0238 43F00403 		orr	r3, r3, #4
 6544 023c C6F85C32 		str	r3, [r6, #604]
 6545 0240 C6F89022 		str	r2, [r6, #656]	@ float
 6546 0244 C2E7     		b	.L1223
 6547              	.L1235:
 6548 0246 00BF     		.align	3
 6549              	.L1234:
 6550 0248 9A999999 		.word	-1717986918
 6551 024c 9999F13F 		.word	1072798105
 6552 0250 00000000 		.word	reprap
 6553 0254 00007A44 		.word	1148846080
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 116


 6554 0258 78080000 		.word	.LC84
 6555 025c B4080000 		.word	.LC85
 6556              		.size	_ZN6GCodes21DoSingleZProbeAtPointER11GCodeBufferjf, .-_ZN6GCodes21DoSingleZProbeAtPointER11G
 6557              		.section	.text._ZN6GCodes14DoSingleZProbeER11GCodeBufferR9StringRefbf,"ax",%progbits
 6558              		.align	2
 6559              		.global	_ZN6GCodes14DoSingleZProbeER11GCodeBufferR9StringRefbf
 6560              		.thumb
 6561              		.thumb_func
 6562              		.type	_ZN6GCodes14DoSingleZProbeER11GCodeBufferR9StringRefbf, %function
 6563              	_ZN6GCodes14DoSingleZProbeER11GCodeBufferR9StringRefbf:
 6564              		@ args = 4, pretend = 0, frame = 40
 6565              		@ frame_needed = 0, uses_anonymous_args = 0
 6566 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 6567 0004 0568     		ldr	r5, [r0]
 6568 0006 8AB0     		sub	sp, sp, #40
 6569 0008 0446     		mov	r4, r0
 6570 000a 0E46     		mov	r6, r1
 6571 000c D5F8D004 		ldr	r0, [r5, #1232]	@ float
 6572 0010 D5F8E814 		ldr	r1, [r5, #1256]	@ float
 6573 0014 9046     		mov	r8, r2
 6574 0016 1F46     		mov	r7, r3
 6575 0018 FFF7FEFF 		bl	__aeabi_fsub
 6576 001c FFF7FEFF 		bl	__aeabi_f2d
 6577 0020 2FA3     		adr	r3, .L1246
 6578 0022 D3E90023 		ldrd	r2, [r3]
 6579 0026 FFF7FEFF 		bl	__aeabi_dmul
 6580 002a FFF7FEFF 		bl	__aeabi_d2f
 6581 002e 3146     		mov	r1, r6
 6582 0030 0246     		mov	r2, r0
 6583 0032 2046     		mov	r0, r4
 6584 0034 FFF7FEFF 		bl	_ZN6GCodes8DoZProbeER11GCodeBufferf
 6585 0038 0128     		cmp	r0, #1
 6586 003a 0546     		mov	r5, r0
 6587 003c 36D0     		beq	.L1238
 6588 003e 0228     		cmp	r0, #2
 6589 0040 0DD0     		beq	.L1239
 6590 0042 18B1     		cbz	r0, .L1244
 6591 0044 0020     		movs	r0, #0
 6592              	.L1237:
 6593 0046 0AB0     		add	sp, sp, #40
 6594              		@ sp needed
 6595 0048 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6596              	.L1244:
 6597 004c 2068     		ldr	r0, [r4]
 6598 004e 0621     		movs	r1, #6
 6599 0050 254A     		ldr	r2, .L1246+8
 6600 0052 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6601 0056 0120     		movs	r0, #1
 6602 0058 0AB0     		add	sp, sp, #40
 6603              		@ sp needed
 6604 005a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6605              	.L1239:
 6606 005e 77BB     		cbnz	r7, .L1245
 6607 0060 2068     		ldr	r0, [r4]
 6608 0062 FFF7FEFF 		bl	_ZN8Platform16ZProbeStopHeightEv
 6609 0066 1099     		ldr	r1, [sp, #64]	@ float
 6610 0068 FFF7FEFF 		bl	__aeabi_fadd
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 117


 6611 006c 04F18805 		add	r5, r4, #136
 6612 0070 2946     		mov	r1, r5
 6613 0072 C4F89000 		str	r0, [r4, #144]	@ float
 6614 0076 3A46     		mov	r2, r7
 6615 0078 2046     		mov	r0, r4
 6616 007a FFF7FEFF 		bl	_ZN6GCodes12SetPositionsEPKfb
 6617 007e D4F85C22 		ldr	r2, [r4, #604]
 6618 0082 1A48     		ldr	r0, .L1246+12
 6619 0084 42F00402 		orr	r2, r2, #4
 6620 0088 C4F85C22 		str	r2, [r4, #604]
 6621 008c 8668     		ldr	r6, [r0, #8]
 6622 008e FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 6623 0092 2946     		mov	r1, r5
 6624 0094 0346     		mov	r3, r0
 6625 0096 3A46     		mov	r2, r7
 6626 0098 3046     		mov	r0, r6
 6627 009a FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhm
 6628 009e 0023     		movs	r3, #0
 6629 00a0 0120     		movs	r0, #1
 6630 00a2 C4F89032 		str	r3, [r4, #656]	@ float
 6631 00a6 0AB0     		add	sp, sp, #40
 6632              		@ sp needed
 6633 00a8 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6634              	.L1238:
 6635 00ac 2068     		ldr	r0, [r4]
 6636 00ae 0621     		movs	r1, #6
 6637 00b0 0F4A     		ldr	r2, .L1246+16
 6638 00b2 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6639 00b6 2846     		mov	r0, r5
 6640 00b8 0AB0     		add	sp, sp, #40
 6641              		@ sp needed
 6642 00ba BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6643              	.L1245:
 6644 00be 0B4B     		ldr	r3, .L1246+12
 6645 00c0 0022     		movs	r2, #0
 6646 00c2 9868     		ldr	r0, [r3, #8]
 6647 00c4 01A9     		add	r1, sp, #4
 6648 00c6 FFF7FEFF 		bl	_ZNK4Move25GetCurrentMachinePositionEPfb
 6649 00ca 0398     		ldr	r0, [sp, #12]	@ float
 6650 00cc FFF7FEFF 		bl	__aeabi_f2d
 6651 00d0 0246     		mov	r2, r0
 6652 00d2 0B46     		mov	r3, r1
 6653 00d4 4046     		mov	r0, r8
 6654 00d6 0749     		ldr	r1, .L1246+20
 6655 00d8 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 6656 00dc 0120     		movs	r0, #1
 6657 00de B2E7     		b	.L1237
 6658              	.L1247:
 6659              		.align	3
 6660              	.L1246:
 6661 00e0 9A999999 		.word	-1717986918
 6662 00e4 9999F13F 		.word	1072798105
 6663 00e8 78080000 		.word	.LC84
 6664 00ec 00000000 		.word	reprap
 6665 00f0 B4080000 		.word	.LC85
 6666 00f4 EC080000 		.word	.LC86
 6667              		.size	_ZN6GCodes14DoSingleZProbeER11GCodeBufferR9StringRefbf, .-_ZN6GCodes14DoSingleZProbeER11GCod
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 118


 6668              		.section	.text._ZN6GCodes26SetSingleZProbeAtAPositionER11GCodeBufferR9StringRef,"ax",%progbits
 6669              		.align	2
 6670              		.global	_ZN6GCodes26SetSingleZProbeAtAPositionER11GCodeBufferR9StringRef
 6671              		.thumb
 6672              		.thumb_func
 6673              		.type	_ZN6GCodes26SetSingleZProbeAtAPositionER11GCodeBufferR9StringRef, %function
 6674              	_ZN6GCodes26SetSingleZProbeAtAPositionER11GCodeBufferR9StringRef:
 6675              		@ args = 0, pretend = 0, frame = 16
 6676              		@ frame_needed = 0, uses_anonymous_args = 0
 6677 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 6678 0004 684E     		ldr	r6, .L1286
 6679 0006 87B0     		sub	sp, sp, #28
 6680 0008 B368     		ldr	r3, [r6, #8]
 6681 000a 0546     		mov	r5, r0
 6682 000c 93F86CA4 		ldrb	r10, [r3, #1132]	@ zero_extendqisi2
 6683 0010 0C46     		mov	r4, r1
 6684 0012 1746     		mov	r7, r2
 6685 0014 BAF1000F 		cmp	r10, #0
 6686 0018 12D0     		beq	.L1249
 6687 001a D0F88431 		ldr	r3, [r0, #388]
 6688 001e 0122     		movs	r2, #1
 6689 0020 02FA03F3 		lsl	r3, r2, r3
 6690 0024 D0F85C22 		ldr	r2, [r0, #604]
 6691 0028 013B     		subs	r3, r3, #1
 6692 002a 1A40     		ands	r2, r2, r3
 6693 002c 9342     		cmp	r3, r2
 6694 002e 07D0     		beq	.L1249
 6695 0030 3846     		mov	r0, r7
 6696 0032 5E49     		ldr	r1, .L1286+4
 6697 0034 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 6698              	.L1272:
 6699 0038 5046     		mov	r0, r10
 6700 003a 07B0     		add	sp, sp, #28
 6701              		@ sp needed
 6702 003c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6703              	.L1249:
 6704 0040 06AA     		add	r2, sp, #24
 6705 0042 0023     		movs	r3, #0
 6706 0044 42F8043D 		str	r3, [r2, #-4]!	@ float
 6707 0048 2046     		mov	r0, r4
 6708 004a 4821     		movs	r1, #72
 6709 004c 0DF11303 		add	r3, sp, #19
 6710 0050 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 6711 0054 2046     		mov	r0, r4
 6712 0056 5021     		movs	r1, #80
 6713 0058 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6714 005c 8246     		mov	r10, r0
 6715 005e 90B9     		cbnz	r0, .L1265
 6716 0060 2046     		mov	r0, r4
 6717 0062 5321     		movs	r1, #83
 6718 0064 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6719 0068 0028     		cmp	r0, #0
 6720 006a 5BD1     		bne	.L1279
 6721 006c 0346     		mov	r3, r0
 6722              	.L1251:
 6723 006e 059E     		ldr	r6, [sp, #20]	@ float
 6724 0070 2846     		mov	r0, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 119


 6725 0072 2146     		mov	r1, r4
 6726 0074 3A46     		mov	r2, r7
 6727 0076 0096     		str	r6, [sp]	@ float
 6728 0078 FFF7FEFF 		bl	_ZN6GCodes14DoSingleZProbeER11GCodeBufferR9StringRefbf
 6729 007c 8246     		mov	r10, r0
 6730 007e 5046     		mov	r0, r10
 6731 0080 07B0     		add	sp, sp, #28
 6732              		@ sp needed
 6733 0082 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6734              	.L1265:
 6735 0086 2046     		mov	r0, r4
 6736 0088 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6737 008c 1F28     		cmp	r0, #31
 6738 008e 8046     		mov	r8, r0
 6739 0090 3FD8     		bhi	.L1280
 6740 0092 2046     		mov	r0, r4
 6741 0094 5821     		movs	r1, #88
 6742 0096 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6743 009a 0028     		cmp	r0, #0
 6744 009c 5AD1     		bne	.L1281
 6745 009e D5F888B0 		ldr	fp, [r5, #136]	@ float
 6746              	.L1255:
 6747 00a2 2046     		mov	r0, r4
 6748 00a4 5921     		movs	r1, #89
 6749 00a6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6750 00aa 0028     		cmp	r0, #0
 6751 00ac 4DD1     		bne	.L1282
 6752 00ae D5F88C30 		ldr	r3, [r5, #140]	@ float
 6753 00b2 0393     		str	r3, [sp, #12]	@ float
 6754              	.L1257:
 6755 00b4 2046     		mov	r0, r4
 6756 00b6 5A21     		movs	r1, #90
 6757 00b8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6758 00bc 0028     		cmp	r0, #0
 6759 00be 3FD1     		bne	.L1283
 6760 00c0 D5F89090 		ldr	r9, [r5, #144]	@ float
 6761              	.L1259:
 6762 00c4 B068     		ldr	r0, [r6, #8]
 6763 00c6 5A46     		mov	r2, fp
 6764 00c8 4146     		mov	r1, r8
 6765 00ca FFF7FEFF 		bl	_ZN4Move17SetXBedProbePointEjf
 6766 00ce B068     		ldr	r0, [r6, #8]
 6767 00d0 4146     		mov	r1, r8
 6768 00d2 039A     		ldr	r2, [sp, #12]	@ float
 6769 00d4 FFF7FEFF 		bl	_ZN4Move17SetYBedProbePointEjf
 6770 00d8 4846     		mov	r0, r9
 6771 00da 3549     		ldr	r1, .L1286+8
 6772 00dc 324E     		ldr	r6, .L1286
 6773 00de FFF7FEFF 		bl	__aeabi_fcmpgt
 6774 00e2 20B3     		cbz	r0, .L1277
 6775 00e4 0023     		movs	r3, #0
 6776 00e6 B068     		ldr	r0, [r6, #8]
 6777 00e8 4146     		mov	r1, r8
 6778 00ea 4A46     		mov	r2, r9
 6779 00ec 0093     		str	r3, [sp]
 6780 00ee FFF7FEFF 		bl	_ZN4Move17SetZBedProbePointEjfbb
 6781 00f2 2046     		mov	r0, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 120


 6782 00f4 5321     		movs	r1, #83
 6783 00f6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6784 00fa 0028     		cmp	r0, #0
 6785 00fc 9CD0     		beq	.L1272
 6786 00fe 2046     		mov	r0, r4
 6787 0100 B568     		ldr	r5, [r6, #8]
 6788 0102 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6789 0106 3A46     		mov	r2, r7
 6790 0108 0146     		mov	r1, r0
 6791 010a 2846     		mov	r0, r5
 6792 010c FFF7FEFF 		bl	_ZN4Move18FinishedBedProbingEiR9StringRef
 6793 0110 92E7     		b	.L1272
 6794              	.L1280:
 6795 0112 3068     		ldr	r0, [r6]
 6796 0114 0621     		movs	r1, #6
 6797 0116 274A     		ldr	r2, .L1286+12
 6798 0118 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6799 011c 5046     		mov	r0, r10
 6800 011e 07B0     		add	sp, sp, #28
 6801              		@ sp needed
 6802 0120 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6803              	.L1279:
 6804 0124 2046     		mov	r0, r4
 6805 0126 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6806 012a C30F     		lsrs	r3, r0, #31
 6807 012c 9FE7     		b	.L1251
 6808              	.L1277:
 6809 012e 4246     		mov	r2, r8
 6810 0130 2846     		mov	r0, r5
 6811 0132 2146     		mov	r1, r4
 6812 0134 059B     		ldr	r3, [sp, #20]	@ float
 6813 0136 FFF7FEFF 		bl	_ZN6GCodes21DoSingleZProbeAtPointER11GCodeBufferjf
 6814 013a 80B9     		cbnz	r0, .L1284
 6815 013c 8246     		mov	r10, r0
 6816 013e 7BE7     		b	.L1272
 6817              	.L1283:
 6818 0140 2046     		mov	r0, r4
 6819 0142 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6820 0146 8146     		mov	r9, r0
 6821 0148 BCE7     		b	.L1259
 6822              	.L1282:
 6823 014a 2046     		mov	r0, r4
 6824 014c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6825 0150 0390     		str	r0, [sp, #12]	@ float
 6826 0152 AFE7     		b	.L1257
 6827              	.L1281:
 6828 0154 2046     		mov	r0, r4
 6829 0156 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6830 015a 8346     		mov	fp, r0
 6831 015c A1E7     		b	.L1255
 6832              	.L1284:
 6833 015e 2046     		mov	r0, r4
 6834 0160 5321     		movs	r1, #83
 6835 0162 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6836 0166 0028     		cmp	r0, #0
 6837 0168 3FF466AF 		beq	.L1272
 6838 016c 2046     		mov	r0, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 121


 6839 016e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6840 0172 0128     		cmp	r0, #1
 6841 0174 0446     		mov	r4, r0
 6842 0176 05D0     		beq	.L1285
 6843 0178 B068     		ldr	r0, [r6, #8]
 6844 017a 2146     		mov	r1, r4
 6845 017c 3A46     		mov	r2, r7
 6846 017e FFF7FEFF 		bl	_ZN4Move18FinishedBedProbingEiR9StringRef
 6847 0182 59E7     		b	.L1272
 6848              	.L1285:
 6849 0184 D5F89000 		ldr	r0, [r5, #144]	@ float
 6850 0188 D5F89012 		ldr	r1, [r5, #656]	@ float
 6851 018c FFF7FEFF 		bl	__aeabi_fadd
 6852 0190 2246     		mov	r2, r4
 6853 0192 C5F89000 		str	r0, [r5, #144]	@ float
 6854 0196 05F18801 		add	r1, r5, #136
 6855 019a 2846     		mov	r0, r5
 6856 019c FFF7FEFF 		bl	_ZN6GCodes12SetPositionsEPKfb
 6857 01a0 0023     		movs	r3, #0
 6858 01a2 C5F89032 		str	r3, [r5, #656]	@ float
 6859 01a6 47E7     		b	.L1272
 6860              	.L1287:
 6861              		.align	2
 6862              	.L1286:
 6863 01a8 00000000 		.word	reprap
 6864 01ac 2C090000 		.word	.LC88
 6865 01b0 003C1CC6 		.word	-971228160
 6866 01b4 08090000 		.word	.LC87
 6867              		.size	_ZN6GCodes26SetSingleZProbeAtAPositionER11GCodeBufferR9StringRef, .-_ZN6GCodes26SetSingleZPr
 6868              		.section	.text._ZN6GCodes12SetPositionsER11GCodeBuffer,"ax",%progbits
 6869              		.align	2
 6870              		.global	_ZN6GCodes12SetPositionsER11GCodeBuffer
 6871              		.thumb
 6872              		.thumb_func
 6873              		.type	_ZN6GCodes12SetPositionsER11GCodeBuffer, %function
 6874              	_ZN6GCodes12SetPositionsER11GCodeBuffer:
 6875              		@ args = 0, pretend = 0, frame = 0
 6876              		@ frame_needed = 0, uses_anonymous_args = 0
 6877 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 6878 0002 D0F88431 		ldr	r3, [r0, #388]
 6879 0006 0546     		mov	r5, r0
 6880 0008 0E46     		mov	r6, r1
 6881 000a 63B3     		cbz	r3, .L1289
 6882 000c 1D4F     		ldr	r7, .L1300
 6883 000e 0024     		movs	r4, #0
 6884 0010 03E0     		b	.L1291
 6885              	.L1299:
 6886 0012 D5F88431 		ldr	r3, [r5, #388]
 6887 0016 A342     		cmp	r3, r4
 6888 0018 25D9     		bls	.L1289
 6889              	.L1291:
 6890 001a 395D     		ldrb	r1, [r7, r4]	@ zero_extendqisi2
 6891 001c 3046     		mov	r0, r6
 6892 001e 0134     		adds	r4, r4, #1
 6893 0020 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6894 0024 0028     		cmp	r0, #0
 6895 0026 F4D0     		beq	.L1299
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 122


 6896 0028 2846     		mov	r0, r5
 6897 002a 3146     		mov	r1, r6
 6898 002c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 6899 0030 0446     		mov	r4, r0
 6900 0032 20B3     		cbz	r0, .L1294
 6901 0034 0023     		movs	r3, #0
 6902 0036 C5F88832 		str	r3, [r5, #648]	@ float
 6903 003a C5F88C32 		str	r3, [r5, #652]	@ float
 6904 003e 3146     		mov	r1, r6
 6905 0040 2846     		mov	r0, r5
 6906 0042 4FF0FF32 		mov	r2, #-1
 6907 0046 FFF7FEFF 		bl	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBufferi
 6908 004a 3146     		mov	r1, r6
 6909 004c 2846     		mov	r0, r5
 6910 004e 4FF0FF32 		mov	r2, #-1
 6911 0052 FFF7FEFF 		bl	_ZN6GCodes23LoadMoveBufferFromGCodeER11GCodeBufferi
 6912 0056 2846     		mov	r0, r5
 6913 0058 05F18801 		add	r1, r5, #136
 6914 005c 0122     		movs	r2, #1
 6915 005e FFF7FEFF 		bl	_ZN6GCodes12SetPositionsEPKfb
 6916 0062 2046     		mov	r0, r4
 6917 0064 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 6918              	.L1289:
 6919 0066 D5F8DC30 		ldr	r3, [r5, #220]
 6920 006a 43B9     		cbnz	r3, .L1294
 6921 006c 2846     		mov	r0, r5
 6922 006e 3146     		mov	r1, r6
 6923 0070 4FF0FF32 		mov	r2, #-1
 6924 0074 0124     		movs	r4, #1
 6925 0076 FFF7FEFF 		bl	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBufferi
 6926 007a 2046     		mov	r0, r4
 6927 007c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 6928              	.L1294:
 6929 007e 0024     		movs	r4, #0
 6930 0080 2046     		mov	r0, r4
 6931 0082 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 6932              	.L1301:
 6933              		.align	2
 6934              	.L1300:
 6935 0084 00000000 		.word	.LANCHOR0
 6936              		.size	_ZN6GCodes12SetPositionsER11GCodeBuffer, .-_ZN6GCodes12SetPositionsER11GCodeBuffer
 6937              		.section	.text._ZNK6GCodes8IsPausedEv,"ax",%progbits
 6938              		.align	2
 6939              		.global	_ZNK6GCodes8IsPausedEv
 6940              		.thumb
 6941              		.thumb_func
 6942              		.type	_ZNK6GCodes8IsPausedEv, %function
 6943              	_ZNK6GCodes8IsPausedEv:
 6944              		@ args = 0, pretend = 0, frame = 0
 6945              		@ frame_needed = 0, uses_anonymous_args = 0
 6946 0000 90F88530 		ldrb	r3, [r0, #133]	@ zero_extendqisi2
 6947 0004 10B5     		push	{r4, lr}
 6948 0006 0446     		mov	r4, r0
 6949 0008 0BB9     		cbnz	r3, .L1303
 6950              	.L1305:
 6951 000a 0020     		movs	r0, #0
 6952 000c 10BD     		pop	{r4, pc}
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 123


 6953              	.L1303:
 6954 000e 036C     		ldr	r3, [r0, #64]
 6955 0010 1868     		ldr	r0, [r3]
 6956 0012 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 6957 0016 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 6958 0018 0C3B     		subs	r3, r3, #12
 6959 001a 012B     		cmp	r3, #1
 6960 001c F5D9     		bls	.L1305
 6961 001e 236C     		ldr	r3, [r4, #64]
 6962 0020 1868     		ldr	r0, [r3]
 6963 0022 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 6964 0026 007C     		ldrb	r0, [r0, #16]	@ zero_extendqisi2
 6965 0028 0E38     		subs	r0, r0, #14
 6966 002a 0228     		cmp	r0, #2
 6967 002c 94BF     		ite	ls
 6968 002e 0020     		movls	r0, #0
 6969 0030 0120     		movhi	r0, #1
 6970 0032 10BD     		pop	{r4, pc}
 6971              		.size	_ZNK6GCodes8IsPausedEv, .-_ZNK6GCodes8IsPausedEv
 6972              		.section	.text._ZNK6GCodes9IsPausingEv,"ax",%progbits
 6973              		.align	2
 6974              		.global	_ZNK6GCodes9IsPausingEv
 6975              		.thumb
 6976              		.thumb_func
 6977              		.type	_ZNK6GCodes9IsPausingEv, %function
 6978              	_ZNK6GCodes9IsPausingEv:
 6979              		@ args = 0, pretend = 0, frame = 0
 6980              		@ frame_needed = 0, uses_anonymous_args = 0
 6981 0000 08B5     		push	{r3, lr}
 6982 0002 036C     		ldr	r3, [r0, #64]
 6983 0004 1868     		ldr	r0, [r3]
 6984 0006 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 6985 000a 007C     		ldrb	r0, [r0, #16]	@ zero_extendqisi2
 6986 000c 0C38     		subs	r0, r0, #12
 6987 000e 0128     		cmp	r0, #1
 6988 0010 8CBF     		ite	hi
 6989 0012 0020     		movhi	r0, #0
 6990 0014 0120     		movls	r0, #1
 6991 0016 08BD     		pop	{r3, pc}
 6992              		.size	_ZNK6GCodes9IsPausingEv, .-_ZNK6GCodes9IsPausingEv
 6993              		.section	.text._ZNK6GCodes10IsResumingEv,"ax",%progbits
 6994              		.align	2
 6995              		.global	_ZNK6GCodes10IsResumingEv
 6996              		.thumb
 6997              		.thumb_func
 6998              		.type	_ZNK6GCodes10IsResumingEv, %function
 6999              	_ZNK6GCodes10IsResumingEv:
 7000              		@ args = 0, pretend = 0, frame = 0
 7001              		@ frame_needed = 0, uses_anonymous_args = 0
 7002 0000 08B5     		push	{r3, lr}
 7003 0002 036C     		ldr	r3, [r0, #64]
 7004 0004 1868     		ldr	r0, [r3]
 7005 0006 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 7006 000a 007C     		ldrb	r0, [r0, #16]	@ zero_extendqisi2
 7007 000c 0E38     		subs	r0, r0, #14
 7008 000e 0228     		cmp	r0, #2
 7009 0010 8CBF     		ite	hi
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 124


 7010 0012 0020     		movhi	r0, #0
 7011 0014 0120     		movls	r0, #1
 7012 0016 08BD     		pop	{r3, pc}
 7013              		.size	_ZNK6GCodes10IsResumingEv, .-_ZNK6GCodes10IsResumingEv
 7014              		.section	.text._ZNK6GCodes9IsRunningEv,"ax",%progbits
 7015              		.align	2
 7016              		.global	_ZNK6GCodes9IsRunningEv
 7017              		.thumb
 7018              		.thumb_func
 7019              		.type	_ZNK6GCodes9IsRunningEv, %function
 7020              	_ZNK6GCodes9IsRunningEv:
 7021              		@ args = 0, pretend = 0, frame = 0
 7022              		@ frame_needed = 0, uses_anonymous_args = 0
 7023 0000 10B5     		push	{r4, lr}
 7024 0002 0446     		mov	r4, r0
 7025 0004 FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 7026 0008 08B1     		cbz	r0, .L1309
 7027              	.L1311:
 7028 000a 0020     		movs	r0, #0
 7029 000c 10BD     		pop	{r4, pc}
 7030              	.L1309:
 7031 000e 236C     		ldr	r3, [r4, #64]
 7032 0010 1868     		ldr	r0, [r3]
 7033 0012 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 7034 0016 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 7035 0018 0C3B     		subs	r3, r3, #12
 7036 001a 012B     		cmp	r3, #1
 7037 001c F5D9     		bls	.L1311
 7038 001e 236C     		ldr	r3, [r4, #64]
 7039 0020 1868     		ldr	r0, [r3]
 7040 0022 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 7041 0026 007C     		ldrb	r0, [r0, #16]	@ zero_extendqisi2
 7042 0028 0E38     		subs	r0, r0, #14
 7043 002a 0228     		cmp	r0, #2
 7044 002c 94BF     		ite	ls
 7045 002e 0020     		movls	r0, #0
 7046 0030 0120     		movhi	r0, #1
 7047 0032 10BD     		pop	{r4, pc}
 7048              		.size	_ZNK6GCodes9IsRunningEv, .-_ZNK6GCodes9IsRunningEv
 7049              		.section	.text._ZN6GCodes22TranslateEndStopResultE10EndStopHit,"ax",%progbits
 7050              		.align	2
 7051              		.global	_ZN6GCodes22TranslateEndStopResultE10EndStopHit
 7052              		.thumb
 7053              		.thumb_func
 7054              		.type	_ZN6GCodes22TranslateEndStopResultE10EndStopHit, %function
 7055              	_ZN6GCodes22TranslateEndStopResultE10EndStopHit:
 7056              		@ args = 0, pretend = 0, frame = 0
 7057              		@ frame_needed = 0, uses_anonymous_args = 0
 7058              		@ link register save eliminated.
 7059 0000 0139     		subs	r1, r1, #1
 7060 0002 0229     		cmp	r1, #2
 7061 0004 9ABF     		itte	ls
 7062 0006 024B     		ldrls	r3, .L1315
 7063 0008 53F82100 		ldrls	r0, [r3, r1, lsl #2]
 7064 000c 0148     		ldrhi	r0, .L1315+4
 7065 000e 7047     		bx	lr
 7066              	.L1316:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 125


 7067              		.align	2
 7068              	.L1315:
 7069 0010 00000000 		.word	.LANCHOR5
 7070 0014 4C090000 		.word	.LC89
 7071              		.size	_ZN6GCodes22TranslateEndStopResultE10EndStopHit, .-_ZN6GCodes22TranslateEndStopResultE10EndS
 7072              		.section	.text._ZN6GCodes12ListTriggersE9StringReft,"ax",%progbits
 7073              		.align	2
 7074              		.global	_ZN6GCodes12ListTriggersE9StringReft
 7075              		.thumb
 7076              		.thumb_func
 7077              		.type	_ZN6GCodes12ListTriggersE9StringReft, %function
 7078              	_ZN6GCodes12ListTriggersE9StringReft:
 7079              		@ args = 0, pretend = 0, frame = 8
 7080              		@ frame_needed = 0, uses_anonymous_args = 0
 7081 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 7082 0004 82B0     		sub	sp, sp, #8
 7083 0006 1E46     		mov	r6, r3
 7084 0008 0746     		mov	r7, r0
 7085 000a 8DE80600 		stmia	sp, {r1, r2}
 7086 000e 43B3     		cbz	r3, .L1333
 7087 0010 0024     		movs	r4, #0
 7088 0012 DFF86480 		ldr	r8, .L1336+8
 7089 0016 2346     		mov	r3, r4
 7090 0018 07E0     		b	.L1323
 7091              	.L1335:
 7092 001a 18F80410 		ldrb	r1, [r8, r4]	@ zero_extendqisi2
 7093 001e FFF7FEFF 		bl	_ZN9StringRef3catEc
 7094 0022 0123     		movs	r3, #1
 7095              	.L1320:
 7096 0024 0134     		adds	r4, r4, #1
 7097 0026 092C     		cmp	r4, #9
 7098 0028 13D0     		beq	.L1317
 7099              	.L1323:
 7100 002a 26FA04F2 		lsr	r2, r6, r4
 7101 002e D207     		lsls	r2, r2, #31
 7102 0030 F8D5     		bpl	.L1320
 7103 0032 8BB9     		cbnz	r3, .L1334
 7104              	.L1321:
 7105 0034 D7F88421 		ldr	r2, [r7, #388]
 7106 0038 6846     		mov	r0, sp
 7107 003a A242     		cmp	r2, r4
 7108 003c EDD8     		bhi	.L1335
 7109 003e A21A     		subs	r2, r4, r2
 7110 0040 6846     		mov	r0, sp
 7111 0042 0B49     		ldr	r1, .L1336
 7112 0044 0134     		adds	r4, r4, #1
 7113 0046 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 7114 004a 092C     		cmp	r4, #9
 7115 004c 4FF00103 		mov	r3, #1
 7116 0050 EBD1     		bne	.L1323
 7117              	.L1317:
 7118 0052 02B0     		add	sp, sp, #8
 7119              		@ sp needed
 7120 0054 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 7121              	.L1334:
 7122 0058 6846     		mov	r0, sp
 7123 005a 2021     		movs	r1, #32
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 126


 7124 005c FFF7FEFF 		bl	_ZN9StringRef3catEc
 7125 0060 E8E7     		b	.L1321
 7126              	.L1333:
 7127 0062 6846     		mov	r0, sp
 7128 0064 0349     		ldr	r1, .L1336+4
 7129 0066 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 7130 006a 02B0     		add	sp, sp, #8
 7131              		@ sp needed
 7132 006c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 7133              	.L1337:
 7134              		.align	2
 7135              	.L1336:
 7136 0070 60090000 		.word	.LC91
 7137 0074 58090000 		.word	.LC90
 7138 0078 00000000 		.word	.LANCHOR0
 7139              		.size	_ZN6GCodes12ListTriggersE9StringReft, .-_ZN6GCodes12ListTriggersE9StringReft
 7140              		.section	.text._ZN6GCodes9StartHashEPKc,"ax",%progbits
 7141              		.align	2
 7142              		.global	_ZN6GCodes9StartHashEPKc
 7143              		.thumb
 7144              		.thumb_func
 7145              		.type	_ZN6GCodes9StartHashEPKc, %function
 7146              	_ZN6GCodes9StartHashEPKc:
 7147              		@ args = 0, pretend = 0, frame = 0
 7148              		@ frame_needed = 0, uses_anonymous_args = 0
 7149 0000 10B5     		push	{r4, lr}
 7150 0002 0A46     		mov	r2, r1
 7151 0004 0446     		mov	r4, r0
 7152 0006 0749     		ldr	r1, .L1341
 7153 0008 0068     		ldr	r0, [r0]
 7154 000a 0023     		movs	r3, #0
 7155 000c FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 7156 0010 C4F80C03 		str	r0, [r4, #780]
 7157 0014 20B1     		cbz	r0, .L1339
 7158 0016 04F54470 		add	r0, r4, #784
 7159 001a FFF7FEFF 		bl	SHA1Reset
 7160 001e 0120     		movs	r0, #1
 7161              	.L1339:
 7162 0020 10BD     		pop	{r4, pc}
 7163              	.L1342:
 7164 0022 00BF     		.align	2
 7165              	.L1341:
 7166 0024 64090000 		.word	.LC92
 7167              		.size	_ZN6GCodes9StartHashEPKc, .-_ZN6GCodes9StartHashEPKc
 7168              		.section	.text._ZN6GCodes11AdvanceHashER9StringRef,"ax",%progbits
 7169              		.align	2
 7170              		.global	_ZN6GCodes11AdvanceHashER9StringRef
 7171              		.thumb
 7172              		.thumb_func
 7173              		.type	_ZN6GCodes11AdvanceHashER9StringRef, %function
 7174              	_ZN6GCodes11AdvanceHashER9StringRef:
 7175              		@ args = 0, pretend = 0, frame = 256
 7176              		@ frame_needed = 0, uses_anonymous_args = 0
 7177 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 7178 0002 C1B0     		sub	sp, sp, #260
 7179 0004 0546     		mov	r5, r0
 7180 0006 0E46     		mov	r6, r1
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 127


 7181 0008 D0F80C03 		ldr	r0, [r0, #780]
 7182 000c 6946     		mov	r1, sp
 7183 000e 4FF48072 		mov	r2, #256
 7184 0012 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 7185 0016 431C     		adds	r3, r0, #1
 7186 0018 0446     		mov	r4, r0
 7187 001a 17D0     		beq	.L1344
 7188 001c 05F54477 		add	r7, r5, #784
 7189 0020 6946     		mov	r1, sp
 7190 0022 3846     		mov	r0, r7
 7191 0024 2246     		mov	r2, r4
 7192 0026 FFF7FEFF 		bl	SHA1Input
 7193 002a B4F5807F 		cmp	r4, #256
 7194 002e 17D0     		beq	.L1348
 7195 0030 3846     		mov	r0, r7
 7196 0032 FFF7FEFF 		bl	SHA1Result
 7197 0036 0024     		movs	r4, #0
 7198              	.L1347:
 7199 0038 2B19     		adds	r3, r5, r4
 7200 003a D3F81023 		ldr	r2, [r3, #784]
 7201 003e 0434     		adds	r4, r4, #4
 7202 0040 3046     		mov	r0, r6
 7203 0042 0949     		ldr	r1, .L1349
 7204 0044 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 7205 0048 142C     		cmp	r4, #20
 7206 004a F5D1     		bne	.L1347
 7207              	.L1344:
 7208 004c D5F80C03 		ldr	r0, [r5, #780]
 7209 0050 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 7210 0054 0023     		movs	r3, #0
 7211 0056 0120     		movs	r0, #1
 7212 0058 C5F80C33 		str	r3, [r5, #780]
 7213 005c 41B0     		add	sp, sp, #260
 7214              		@ sp needed
 7215 005e F0BD     		pop	{r4, r5, r6, r7, pc}
 7216              	.L1348:
 7217 0060 0020     		movs	r0, #0
 7218 0062 41B0     		add	sp, sp, #260
 7219              		@ sp needed
 7220 0064 F0BD     		pop	{r4, r5, r6, r7, pc}
 7221              	.L1350:
 7222 0066 00BF     		.align	2
 7223              	.L1349:
 7224 0068 68090000 		.word	.LC93
 7225              		.size	_ZN6GCodes11AdvanceHashER9StringRef, .-_ZN6GCodes11AdvanceHashER9StringRef
 7226              		.section	.text._ZNK6GCodes15AllAxesAreHomedEv,"ax",%progbits
 7227              		.align	2
 7228              		.global	_ZNK6GCodes15AllAxesAreHomedEv
 7229              		.thumb
 7230              		.thumb_func
 7231              		.type	_ZNK6GCodes15AllAxesAreHomedEv, %function
 7232              	_ZNK6GCodes15AllAxesAreHomedEv:
 7233              		@ args = 0, pretend = 0, frame = 0
 7234              		@ frame_needed = 0, uses_anonymous_args = 0
 7235              		@ link register save eliminated.
 7236 0000 D0F88431 		ldr	r3, [r0, #388]
 7237 0004 0122     		movs	r2, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 128


 7238 0006 02FA03F3 		lsl	r3, r2, r3
 7239 000a D0F85C02 		ldr	r0, [r0, #604]
 7240 000e 013B     		subs	r3, r3, #1
 7241 0010 1840     		ands	r0, r0, r3
 7242 0012 C31A     		subs	r3, r0, r3
 7243 0014 5842     		rsbs	r0, r3, #0
 7244 0016 5841     		adcs	r0, r0, r3
 7245 0018 7047     		bx	lr
 7246              		.size	_ZNK6GCodes15AllAxesAreHomedEv, .-_ZNK6GCodes15AllAxesAreHomedEv
 7247 001a 00BF     		.section	.text._ZN6GCodes18SetAllAxesNotHomedEv,"ax",%progbits
 7248              		.align	2
 7249              		.global	_ZN6GCodes18SetAllAxesNotHomedEv
 7250              		.thumb
 7251              		.thumb_func
 7252              		.type	_ZN6GCodes18SetAllAxesNotHomedEv, %function
 7253              	_ZN6GCodes18SetAllAxesNotHomedEv:
 7254              		@ args = 0, pretend = 0, frame = 0
 7255              		@ frame_needed = 0, uses_anonymous_args = 0
 7256              		@ link register save eliminated.
 7257 0000 0023     		movs	r3, #0
 7258 0002 C0F85C32 		str	r3, [r0, #604]
 7259 0006 7047     		bx	lr
 7260              		.size	_ZN6GCodes18SetAllAxesNotHomedEv, .-_ZN6GCodes18SetAllAxesNotHomedEv
 7261              		.section	.text._ZNK6GCodes23WriteConfigOverrideFileER9StringRefPKc,"ax",%progbits
 7262              		.align	2
 7263              		.global	_ZNK6GCodes23WriteConfigOverrideFileER9StringRefPKc
 7264              		.thumb
 7265              		.thumb_func
 7266              		.type	_ZNK6GCodes23WriteConfigOverrideFileER9StringRefPKc, %function
 7267              	_ZNK6GCodes23WriteConfigOverrideFileER9StringRefPKc:
 7268              		@ args = 0, pretend = 0, frame = 0
 7269              		@ frame_needed = 0, uses_anonymous_args = 0
 7270 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 7271 0004 0123     		movs	r3, #1
 7272 0006 0446     		mov	r4, r0
 7273 0008 0F46     		mov	r7, r1
 7274 000a 0068     		ldr	r0, [r0]
 7275 000c 2349     		ldr	r1, .L1376
 7276 000e 1646     		mov	r6, r2
 7277 0010 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 7278 0014 0546     		mov	r5, r0
 7279 0016 0028     		cmp	r0, #0
 7280 0018 37D0     		beq	.L1374
 7281 001a 2149     		ldr	r1, .L1376+4
 7282 001c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 7283 0020 88B9     		cbnz	r0, .L1375
 7284              	.L1357:
 7285 0022 2846     		mov	r0, r5
 7286 0024 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 7287              	.L1358:
 7288 0028 3246     		mov	r2, r6
 7289 002a 3846     		mov	r0, r7
 7290 002c 1D49     		ldr	r1, .L1376+8
 7291 002e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 7292 0032 2368     		ldr	r3, [r4]
 7293 0034 3246     		mov	r2, r6
 7294 0036 D3F8B406 		ldr	r0, [r3, #1716]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 129


 7295 003a 1849     		ldr	r1, .L1376
 7296 003c FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_
 7297 0040 0120     		movs	r0, #1
 7298 0042 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 7299              	.L1375:
 7300 0046 DFF86480 		ldr	r8, .L1376+16
 7301 004a 2946     		mov	r1, r5
 7302 004c D8F80800 		ldr	r0, [r8, #8]
 7303 0050 00F23440 		addw	r0, r0, #1076
 7304 0054 FFF7FEFF 		bl	_ZNK15DeltaParameters15WriteParametersEP9FileStore
 7305 0058 0028     		cmp	r0, #0
 7306 005a E2D0     		beq	.L1357
 7307 005c D8F80C00 		ldr	r0, [r8, #12]
 7308 0060 2946     		mov	r1, r5
 7309 0062 FFF7FEFF 		bl	_ZNK4Heat20WriteModelParametersEP9FileStore
 7310 0066 0028     		cmp	r0, #0
 7311 0068 DBD0     		beq	.L1357
 7312 006a 2068     		ldr	r0, [r4]
 7313 006c 2946     		mov	r1, r5
 7314 006e FFF7FEFF 		bl	_ZNK8Platform21WriteZProbeParametersEP9FileStore
 7315 0072 8046     		mov	r8, r0
 7316 0074 2846     		mov	r0, r5
 7317 0076 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 7318 007a 0028     		cmp	r0, #0
 7319 007c D4D0     		beq	.L1358
 7320 007e B8F1000F 		cmp	r8, #0
 7321 0082 D1D0     		beq	.L1358
 7322 0084 0020     		movs	r0, #0
 7323 0086 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 7324              	.L1374:
 7325 008a 3846     		mov	r0, r7
 7326 008c 3246     		mov	r2, r6
 7327 008e 0649     		ldr	r1, .L1376+12
 7328 0090 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 7329 0094 0120     		movs	r0, #1
 7330 0096 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 7331              	.L1377:
 7332 009a 00BF     		.align	2
 7333              	.L1376:
 7334 009c DC010000 		.word	.LC20
 7335 00a0 88090000 		.word	.LC95
 7336 00a4 BC090000 		.word	.LC96
 7337 00a8 6C090000 		.word	.LC94
 7338 00ac 00000000 		.word	reprap
 7339              		.size	_ZNK6GCodes23WriteConfigOverrideFileER9StringRefPKc, .-_ZNK6GCodes23WriteConfigOverrideFileE
 7340              		.global	__aeabi_i2d
 7341              		.global	__aeabi_dcmpge
 7342              		.section	.text._ZNK6GCodes25GenerateTemperatureReportER9StringRef,"ax",%progbits
 7343              		.align	2
 7344              		.global	_ZNK6GCodes25GenerateTemperatureReportER9StringRef
 7345              		.thumb
 7346              		.thumb_func
 7347              		.type	_ZNK6GCodes25GenerateTemperatureReportER9StringRef, %function
 7348              	_ZNK6GCodes25GenerateTemperatureReportER9StringRef:
 7349              		@ args = 0, pretend = 0, frame = 0
 7350              		@ frame_needed = 0, uses_anonymous_args = 0
 7351 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 130


 7352 0004 2D4E     		ldr	r6, .L1396
 7353 0006 0846     		mov	r0, r1
 7354 0008 F368     		ldr	r3, [r6, #12]
 7355 000a 0D46     		mov	r5, r1
 7356 000c 2C49     		ldr	r1, .L1396+4
 7357 000e 93F82A80 		ldrb	r8, [r3, #42]	@ zero_extendqisi2
 7358 0012 93F82B70 		ldrb	r7, [r3, #43]	@ zero_extendqisi2
 7359 0016 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7360 001a 4FFA88F8 		sxtb	r8, r8
 7361 001e 7FB2     		sxtb	r7, r7
 7362 0020 B146     		mov	r9, r6
 7363 0022 4FF0000A 		mov	r10, #0
 7364              	.L1383:
 7365 0026 4FFA8AF4 		sxtb	r4, r10
 7366 002a A045     		cmp	r8, r4
 7367 002c 0AF1010A 		add	r10, r10, #1
 7368 0030 15D0     		beq	.L1380
 7369 0032 A742     		cmp	r7, r4
 7370 0034 13D0     		beq	.L1380
 7371 0036 F068     		ldr	r0, [r6, #12]
 7372 0038 2146     		mov	r1, r4
 7373 003a FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 7374 003e 70B1     		cbz	r0, .L1380
 7375 0040 0328     		cmp	r0, #3
 7376 0042 2146     		mov	r1, r4
 7377 0044 0BD0     		beq	.L1380
 7378 0046 D9F80C00 		ldr	r0, [r9, #12]
 7379 004a FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 7380 004e FFF7FEFF 		bl	__aeabi_f2d
 7381 0052 0246     		mov	r2, r0
 7382 0054 0B46     		mov	r3, r1
 7383 0056 2846     		mov	r0, r5
 7384 0058 1A49     		ldr	r1, .L1396+8
 7385 005a FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 7386              	.L1380:
 7387 005e BAF1070F 		cmp	r10, #7
 7388 0062 E0D1     		bne	.L1383
 7389 0064 B8F1000F 		cmp	r8, #0
 7390 0068 23DB     		blt	.L1384
 7391 006a 4146     		mov	r1, r8
 7392 006c F068     		ldr	r0, [r6, #12]
 7393 006e FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 7394 0072 FFF7FEFF 		bl	__aeabi_f2d
 7395 0076 0246     		mov	r2, r0
 7396 0078 0B46     		mov	r3, r1
 7397 007a 2846     		mov	r0, r5
 7398 007c 1249     		ldr	r1, .L1396+12
 7399 007e FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 7400              	.L1385:
 7401 0082 3846     		mov	r0, r7
 7402 0084 FFF7FEFF 		bl	__aeabi_i2d
 7403 0088 0022     		movs	r2, #0
 7404 008a 0023     		movs	r3, #0
 7405 008c FFF7FEFF 		bl	__aeabi_dcmpge
 7406 0090 68B1     		cbz	r0, .L1395
 7407 0092 3946     		mov	r1, r7
 7408 0094 F068     		ldr	r0, [r6, #12]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 131


 7409 0096 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 7410 009a FFF7FEFF 		bl	__aeabi_f2d
 7411 009e 0246     		mov	r2, r0
 7412 00a0 0B46     		mov	r3, r1
 7413 00a2 2846     		mov	r0, r5
 7414 00a4 0949     		ldr	r1, .L1396+16
 7415 00a6 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 7416 00aa FFF7FEBF 		b	_ZN9StringRef4catfEPKcz
 7417              	.L1395:
 7418 00ae BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 7419              	.L1384:
 7420 00b2 2846     		mov	r0, r5
 7421 00b4 0649     		ldr	r1, .L1396+20
 7422 00b6 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 7423 00ba E2E7     		b	.L1385
 7424              	.L1397:
 7425              		.align	2
 7426              	.L1396:
 7427 00bc 00000000 		.word	reprap
 7428 00c0 D4090000 		.word	.LC97
 7429 00c4 D8090000 		.word	.LC98
 7430 00c8 E0090000 		.word	.LC99
 7431 00cc F0090000 		.word	.LC101
 7432 00d0 E8090000 		.word	.LC100
 7433              		.size	_ZNK6GCodes25GenerateTemperatureReportER9StringRef, .-_ZNK6GCodes25GenerateTemperatureReport
 7434              		.section	.text._ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource,"ax",%progbits
 7435              		.align	2
 7436              		.global	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource
 7437              		.thumb
 7438              		.thumb_func
 7439              		.type	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource, %function
 7440              	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource:
 7441              		@ args = 0, pretend = 0, frame = 0
 7442              		@ frame_needed = 0, uses_anonymous_args = 0
 7443 0000 10B5     		push	{r4, lr}
 7444 0002 0529     		cmp	r1, #5
 7445 0004 1ED8     		bhi	.L1405
 7446 0006 DFE801F0 		tbb	[pc, r1]
 7447              	.L1401:
 7448 000a 16       		.byte	(.L1400-.L1401)/2
 7449 000b 16       		.byte	(.L1400-.L1401)/2
 7450 000c 0E       		.byte	(.L1402-.L1401)/2
 7451 000d 0E       		.byte	(.L1402-.L1401)/2
 7452 000e 0E       		.byte	(.L1402-.L1401)/2
 7453 000f 03       		.byte	(.L1403-.L1401)/2
 7454              		.align	1
 7455              	.L1403:
 7456 0010 0D48     		ldr	r0, .L1409
 7457 0012 FFF7FEFF 		bl	_ZN6RepRap17GetConfigResponseEv
 7458 0016 0446     		mov	r4, r0
 7459              	.L1404:
 7460 0018 1CB1     		cbz	r4, .L1399
 7461 001a 2046     		mov	r0, r4
 7462 001c 0A21     		movs	r1, #10
 7463 001e FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 7464              	.L1399:
 7465 0022 2046     		mov	r0, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 132


 7466 0024 10BD     		pop	{r4, pc}
 7467              	.L1402:
 7468 0026 0139     		subs	r1, r1, #1
 7469 0028 C9B2     		uxtb	r1, r1
 7470 002a 1A46     		mov	r2, r3
 7471 002c 0648     		ldr	r0, .L1409
 7472 002e FFF7FEFF 		bl	_ZN6RepRap17GetStatusResponseEh14ResponseSource
 7473 0032 0446     		mov	r4, r0
 7474 0034 F0E7     		b	.L1404
 7475              	.L1400:
 7476 0036 0231     		adds	r1, r1, #2
 7477 0038 C9B2     		uxtb	r1, r1
 7478 003a 0348     		ldr	r0, .L1409
 7479 003c FFF7FEFF 		bl	_ZN6RepRap23GetLegacyStatusResponseEhi
 7480 0040 0446     		mov	r4, r0
 7481 0042 E9E7     		b	.L1404
 7482              	.L1405:
 7483 0044 0024     		movs	r4, #0
 7484 0046 ECE7     		b	.L1399
 7485              	.L1410:
 7486              		.align	2
 7487              	.L1409:
 7488 0048 00000000 		.word	reprap
 7489              		.size	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource, .-_ZNK6GCodes26GenerateJsonStatu
 7490              		.section	.text._ZNK6GCodes14CheckReportDueER11GCodeBufferR9StringRef,"ax",%progbits
 7491              		.align	2
 7492              		.global	_ZNK6GCodes14CheckReportDueER11GCodeBufferR9StringRef
 7493              		.thumb
 7494              		.thumb_func
 7495              		.type	_ZNK6GCodes14CheckReportDueER11GCodeBufferR9StringRef, %function
 7496              	_ZNK6GCodes14CheckReportDueER11GCodeBufferR9StringRef:
 7497              		@ args = 0, pretend = 0, frame = 0
 7498              		@ frame_needed = 0, uses_anonymous_args = 0
 7499 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 7500 0002 0C46     		mov	r4, r1
 7501 0004 0646     		mov	r6, r0
 7502 0006 1746     		mov	r7, r2
 7503 0008 FFF7FEFF 		bl	millis
 7504 000c 2379     		ldrb	r3, [r4, #4]	@ zero_extendqisi2
 7505 000e 0546     		mov	r5, r0
 7506 0010 2BB1     		cbz	r3, .L1412
 7507 0012 2368     		ldr	r3, [r4]
 7508 0014 C31A     		subs	r3, r0, r3
 7509 0016 B3F57A7F 		cmp	r3, #1000
 7510 001a 04D2     		bcs	.L1422
 7511 001c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 7512              	.L1412:
 7513 001e 0123     		movs	r3, #1
 7514 0020 2060     		str	r0, [r4]
 7515 0022 2371     		strb	r3, [r4, #4]
 7516 0024 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 7517              	.L1422:
 7518 0026 3068     		ldr	r0, [r6]
 7519 0028 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 7520 002c 0228     		cmp	r0, #2
 7521 002e 11D0     		beq	.L1423
 7522              	.L1414:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 133


 7523 0030 96F97C33 		ldrsb	r3, [r6, #892]
 7524 0034 002B     		cmp	r3, #0
 7525 0036 0BDB     		blt	.L1417
 7526 0038 0021     		movs	r1, #0
 7527 003a 3046     		mov	r0, r6
 7528 003c 4FF0FF32 		mov	r2, #-1
 7529 0040 0123     		movs	r3, #1
 7530 0042 FFF7FEFF 		bl	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource
 7531 0046 0146     		mov	r1, r0
 7532 0048 10B1     		cbz	r0, .L1417
 7533 004a 3068     		ldr	r0, [r6]
 7534 004c FFF7FEFF 		bl	_ZN8Platform14AppendAuxReplyEP12OutputBuffer
 7535              	.L1417:
 7536 0050 2560     		str	r5, [r4]
 7537 0052 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 7538              	.L1423:
 7539 0054 736C     		ldr	r3, [r6, #68]
 7540 0056 1B68     		ldr	r3, [r3]
 7541 0058 A342     		cmp	r3, r4
 7542 005a 03D0     		beq	.L1415
 7543 005c F36B     		ldr	r3, [r6, #60]
 7544 005e 1B68     		ldr	r3, [r3]
 7545 0060 A342     		cmp	r3, r4
 7546 0062 E5D1     		bne	.L1414
 7547              	.L1415:
 7548 0064 3046     		mov	r0, r6
 7549 0066 3946     		mov	r1, r7
 7550 0068 FFF7FEFF 		bl	_ZNK6GCodes25GenerateTemperatureReportER9StringRef
 7551 006c 3846     		mov	r0, r7
 7552 006e 0A21     		movs	r1, #10
 7553 0070 FFF7FEFF 		bl	_ZN9StringRef3catEc
 7554 0074 3A68     		ldr	r2, [r7]
 7555 0076 3068     		ldr	r0, [r6]
 7556 0078 0221     		movs	r1, #2
 7557 007a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 7558 007e D7E7     		b	.L1414
 7559              		.size	_ZNK6GCodes14CheckReportDueER11GCodeBufferR9StringRef, .-_ZNK6GCodes14CheckReportDueER11GCod
 7560              		.section	.text._ZN6GCodes12LockResourceERK11GCodeBufferj,"ax",%progbits
 7561              		.align	2
 7562              		.global	_ZN6GCodes12LockResourceERK11GCodeBufferj
 7563              		.thumb
 7564              		.thumb_func
 7565              		.type	_ZN6GCodes12LockResourceERK11GCodeBufferj, %function
 7566              	_ZN6GCodes12LockResourceERK11GCodeBufferj:
 7567              		@ args = 0, pretend = 0, frame = 0
 7568              		@ frame_needed = 0, uses_anonymous_args = 0
 7569              		@ link register save eliminated.
 7570 0000 10B4     		push	{r4}
 7571 0002 00EB8200 		add	r0, r0, r2, lsl #2
 7572 0006 836D     		ldr	r3, [r0, #88]
 7573 0008 8B42     		cmp	r3, r1
 7574 000a 10D0     		beq	.L1426
 7575 000c 1BB1     		cbz	r3, .L1428
 7576 000e 0020     		movs	r0, #0
 7577 0010 5DF8044B 		ldr	r4, [sp], #4
 7578 0014 7047     		bx	lr
 7579              	.L1428:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 134


 7580 0016 0124     		movs	r4, #1
 7581 0018 04FA02F2 		lsl	r2, r4, r2
 7582 001c 8165     		str	r1, [r0, #88]
 7583 001e 8B68     		ldr	r3, [r1, #8]
 7584 0020 2046     		mov	r0, r4
 7585 0022 D968     		ldr	r1, [r3, #12]
 7586 0024 5DF8044B 		ldr	r4, [sp], #4
 7587 0028 1143     		orrs	r1, r1, r2
 7588 002a D960     		str	r1, [r3, #12]
 7589 002c 7047     		bx	lr
 7590              	.L1426:
 7591 002e 0120     		movs	r0, #1
 7592 0030 5DF8044B 		ldr	r4, [sp], #4
 7593 0034 7047     		bx	lr
 7594              		.size	_ZN6GCodes12LockResourceERK11GCodeBufferj, .-_ZN6GCodes12LockResourceERK11GCodeBufferj
 7595 0036 00BF     		.section	.text._ZN6GCodes10LockHeaterERK11GCodeBufferi,"ax",%progbits
 7596              		.align	2
 7597              		.global	_ZN6GCodes10LockHeaterERK11GCodeBufferi
 7598              		.thumb
 7599              		.thumb_func
 7600              		.type	_ZN6GCodes10LockHeaterERK11GCodeBufferi, %function
 7601              	_ZN6GCodes10LockHeaterERK11GCodeBufferi:
 7602              		@ args = 0, pretend = 0, frame = 0
 7603              		@ frame_needed = 0, uses_anonymous_args = 0
 7604              		@ link register save eliminated.
 7605 0000 062A     		cmp	r2, #6
 7606 0002 10B4     		push	{r4}
 7607 0004 0AD8     		bhi	.L1432
 7608 0006 0232     		adds	r2, r2, #2
 7609 0008 00EB8200 		add	r0, r0, r2, lsl #2
 7610 000c 836D     		ldr	r3, [r0, #88]
 7611 000e 9942     		cmp	r1, r3
 7612 0010 04D0     		beq	.L1432
 7613 0012 3BB1     		cbz	r3, .L1434
 7614 0014 0020     		movs	r0, #0
 7615              	.L1430:
 7616 0016 5DF8044B 		ldr	r4, [sp], #4
 7617 001a 7047     		bx	lr
 7618              	.L1432:
 7619 001c 0120     		movs	r0, #1
 7620 001e 5DF8044B 		ldr	r4, [sp], #4
 7621 0022 7047     		bx	lr
 7622              	.L1434:
 7623 0024 0124     		movs	r4, #1
 7624 0026 04FA02F2 		lsl	r2, r4, r2
 7625 002a 8165     		str	r1, [r0, #88]
 7626 002c 8B68     		ldr	r3, [r1, #8]
 7627 002e 2046     		mov	r0, r4
 7628 0030 D968     		ldr	r1, [r3, #12]
 7629 0032 1143     		orrs	r1, r1, r2
 7630 0034 D960     		str	r1, [r3, #12]
 7631 0036 EEE7     		b	.L1430
 7632              		.size	_ZN6GCodes10LockHeaterERK11GCodeBufferi, .-_ZN6GCodes10LockHeaterERK11GCodeBufferi
 7633              		.section	.text._ZN6GCodes7LockFanERK11GCodeBufferi,"ax",%progbits
 7634              		.align	2
 7635              		.global	_ZN6GCodes7LockFanERK11GCodeBufferi
 7636              		.thumb
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 135


 7637              		.thumb_func
 7638              		.type	_ZN6GCodes7LockFanERK11GCodeBufferi, %function
 7639              	_ZN6GCodes7LockFanERK11GCodeBufferi:
 7640              		@ args = 0, pretend = 0, frame = 0
 7641              		@ frame_needed = 0, uses_anonymous_args = 0
 7642              		@ link register save eliminated.
 7643 0000 012A     		cmp	r2, #1
 7644 0002 10B4     		push	{r4}
 7645 0004 03D9     		bls	.L1440
 7646              	.L1438:
 7647 0006 0120     		movs	r0, #1
 7648              	.L1436:
 7649 0008 5DF8044B 		ldr	r4, [sp], #4
 7650 000c 7047     		bx	lr
 7651              	.L1440:
 7652 000e 0932     		adds	r2, r2, #9
 7653 0010 00EB8200 		add	r0, r0, r2, lsl #2
 7654 0014 836D     		ldr	r3, [r0, #88]
 7655 0016 9942     		cmp	r1, r3
 7656 0018 F5D0     		beq	.L1438
 7657 001a 1BB1     		cbz	r3, .L1441
 7658 001c 0020     		movs	r0, #0
 7659 001e 5DF8044B 		ldr	r4, [sp], #4
 7660 0022 7047     		bx	lr
 7661              	.L1441:
 7662 0024 0124     		movs	r4, #1
 7663 0026 04FA02F2 		lsl	r2, r4, r2
 7664 002a 8165     		str	r1, [r0, #88]
 7665 002c 8B68     		ldr	r3, [r1, #8]
 7666 002e 2046     		mov	r0, r4
 7667 0030 D968     		ldr	r1, [r3, #12]
 7668 0032 1143     		orrs	r1, r1, r2
 7669 0034 D960     		str	r1, [r3, #12]
 7670 0036 E7E7     		b	.L1436
 7671              		.size	_ZN6GCodes7LockFanERK11GCodeBufferi, .-_ZN6GCodes7LockFanERK11GCodeBufferi
 7672              		.section	.text._ZN6GCodes14LockFileSystemERK11GCodeBuffer,"ax",%progbits
 7673              		.align	2
 7674              		.global	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 7675              		.thumb
 7676              		.thumb_func
 7677              		.type	_ZN6GCodes14LockFileSystemERK11GCodeBuffer, %function
 7678              	_ZN6GCodes14LockFileSystemERK11GCodeBuffer:
 7679              		@ args = 0, pretend = 0, frame = 0
 7680              		@ frame_needed = 0, uses_anonymous_args = 0
 7681              		@ link register save eliminated.
 7682 0000 C36D     		ldr	r3, [r0, #92]
 7683 0002 9942     		cmp	r1, r3
 7684 0004 02D0     		beq	.L1444
 7685 0006 1BB1     		cbz	r3, .L1446
 7686 0008 0020     		movs	r0, #0
 7687 000a 7047     		bx	lr
 7688              	.L1444:
 7689 000c 0120     		movs	r0, #1
 7690 000e 7047     		bx	lr
 7691              	.L1446:
 7692 0010 C165     		str	r1, [r0, #92]
 7693 0012 8B68     		ldr	r3, [r1, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 136


 7694 0014 0120     		movs	r0, #1
 7695 0016 DA68     		ldr	r2, [r3, #12]
 7696 0018 42F00202 		orr	r2, r2, #2
 7697 001c DA60     		str	r2, [r3, #12]
 7698 001e 7047     		bx	lr
 7699              		.size	_ZN6GCodes14LockFileSystemERK11GCodeBuffer, .-_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 7700              		.section	.text._ZN6GCodes12LockMovementERK11GCodeBuffer,"ax",%progbits
 7701              		.align	2
 7702              		.global	_ZN6GCodes12LockMovementERK11GCodeBuffer
 7703              		.thumb
 7704              		.thumb_func
 7705              		.type	_ZN6GCodes12LockMovementERK11GCodeBuffer, %function
 7706              	_ZN6GCodes12LockMovementERK11GCodeBuffer:
 7707              		@ args = 0, pretend = 0, frame = 0
 7708              		@ frame_needed = 0, uses_anonymous_args = 0
 7709              		@ link register save eliminated.
 7710 0000 836D     		ldr	r3, [r0, #88]
 7711 0002 9942     		cmp	r1, r3
 7712 0004 02D0     		beq	.L1449
 7713 0006 1BB1     		cbz	r3, .L1451
 7714 0008 0020     		movs	r0, #0
 7715 000a 7047     		bx	lr
 7716              	.L1449:
 7717 000c 0120     		movs	r0, #1
 7718 000e 7047     		bx	lr
 7719              	.L1451:
 7720 0010 8165     		str	r1, [r0, #88]
 7721 0012 8B68     		ldr	r3, [r1, #8]
 7722 0014 0120     		movs	r0, #1
 7723 0016 DA68     		ldr	r2, [r3, #12]
 7724 0018 0243     		orrs	r2, r2, r0
 7725 001a DA60     		str	r2, [r3, #12]
 7726 001c 7047     		bx	lr
 7727              		.size	_ZN6GCodes12LockMovementERK11GCodeBuffer, .-_ZN6GCodes12LockMovementERK11GCodeBuffer
 7728 001e 00BF     		.section	.text._ZN6GCodes9UnlockAllERK11GCodeBuffer,"ax",%progbits
 7729              		.align	2
 7730              		.global	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 7731              		.thumb
 7732              		.thumb_func
 7733              		.type	_ZN6GCodes9UnlockAllERK11GCodeBuffer, %function
 7734              	_ZN6GCodes9UnlockAllERK11GCodeBuffer:
 7735              		@ args = 0, pretend = 0, frame = 0
 7736              		@ frame_needed = 0, uses_anonymous_args = 0
 7737              		@ link register save eliminated.
 7738 0000 8B68     		ldr	r3, [r1, #8]
 7739 0002 F0B4     		push	{r4, r5, r6, r7}
 7740 0004 1C68     		ldr	r4, [r3]
 7741 0006 04B1     		cbz	r4, .L1453
 7742 0008 E468     		ldr	r4, [r4, #12]
 7743              	.L1453:
 7744 000a 0023     		movs	r3, #0
 7745 000c 0125     		movs	r5, #1
 7746 000e 04E0     		b	.L1456
 7747              	.L1454:
 7748 0010 0133     		adds	r3, r3, #1
 7749 0012 0B2B     		cmp	r3, #11
 7750 0014 00F10400 		add	r0, r0, #4
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 137


 7751 0018 12D0     		beq	.L1459
 7752              	.L1456:
 7753 001a 826D     		ldr	r2, [r0, #88]
 7754 001c 8A42     		cmp	r2, r1
 7755 001e F7D1     		bne	.L1454
 7756 0020 05FA03F2 		lsl	r2, r5, r3
 7757 0024 12EA0406 		ands	r6, r2, r4
 7758 0028 F2D1     		bne	.L1454
 7759 002a 8665     		str	r6, [r0, #88]
 7760 002c 8E68     		ldr	r6, [r1, #8]
 7761 002e 0133     		adds	r3, r3, #1
 7762 0030 F768     		ldr	r7, [r6, #12]
 7763 0032 0B2B     		cmp	r3, #11
 7764 0034 27EA0202 		bic	r2, r7, r2
 7765 0038 F260     		str	r2, [r6, #12]
 7766 003a 00F10400 		add	r0, r0, #4
 7767 003e ECD1     		bne	.L1456
 7768              	.L1459:
 7769 0040 F0BC     		pop	{r4, r5, r6, r7}
 7770 0042 7047     		bx	lr
 7771              		.size	_ZN6GCodes9UnlockAllERK11GCodeBuffer, .-_ZN6GCodes9UnlockAllERK11GCodeBuffer
 7772              		.section	.text._ZN6GCodes11DoFilePrintER11GCodeBufferR9StringRef,"ax",%progbits
 7773              		.align	2
 7774              		.global	_ZN6GCodes11DoFilePrintER11GCodeBufferR9StringRef
 7775              		.thumb
 7776              		.thumb_func
 7777              		.type	_ZN6GCodes11DoFilePrintER11GCodeBufferR9StringRef, %function
 7778              	_ZN6GCodes11DoFilePrintER11GCodeBufferR9StringRef:
 7779              		@ args = 0, pretend = 0, frame = 0
 7780              		@ frame_needed = 0, uses_anonymous_args = 0
 7781 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 7782 0004 8E68     		ldr	r6, [r1, #8]
 7783 0006 0C46     		mov	r4, r1
 7784 0008 0546     		mov	r5, r0
 7785 000a 06F10801 		add	r1, r6, #8
 7786 000e 0069     		ldr	r0, [r0, #16]
 7787 0010 1746     		mov	r7, r2
 7788 0012 FFF7FEFF 		bl	_ZN14FileGCodeInput12ReadFromFileER8FileData
 7789 0016 0028     		cmp	r0, #0
 7790 0018 5AD1     		bne	.L1497
 7791 001a 636F     		ldr	r3, [r4, #116]
 7792 001c 002B     		cmp	r3, #0
 7793 001e 38D1     		bne	.L1498
 7794              	.L1465:
 7795 0020 2046     		mov	r0, r4
 7796 0022 FFF7FEFF 		bl	_ZN11GCodeBuffer4InitEv
 7797 0026 A368     		ldr	r3, [r4, #8]
 7798 0028 1F68     		ldr	r7, [r3]
 7799 002a 002F     		cmp	r7, #0
 7800 002c 59D0     		beq	.L1499
 7801 002e 2869     		ldr	r0, [r5, #16]
 7802 0030 0368     		ldr	r3, [r0]
 7803 0032 1B68     		ldr	r3, [r3]
 7804 0034 9847     		blx	r3
 7805 0036 B068     		ldr	r0, [r6, #8]
 7806 0038 18B1     		cbz	r0, .L1470
 7807 003a FFF7FEFF 		bl	_ZN9FileStore5CloseEv
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 138


 7808 003e 0023     		movs	r3, #0
 7809 0040 B360     		str	r3, [r6, #8]
 7810              	.L1470:
 7811 0042 95F88630 		ldrb	r3, [r5, #134]	@ zero_extendqisi2
 7812 0046 C3B1     		cbz	r3, .L1471
 7813 0048 0022     		movs	r2, #0
 7814              	.L1473:
 7815 004a AB18     		adds	r3, r5, r2
 7816 004c DB69     		ldr	r3, [r3, #28]
 7817 004e A168     		ldr	r1, [r4, #8]
 7818 0050 9B68     		ldr	r3, [r3, #8]
 7819 0052 4F7C     		ldrb	r7, [r1, #17]	@ zero_extendqisi2
 7820 0054 587C     		ldrb	r0, [r3, #17]	@ zero_extendqisi2
 7821 0056 4E68     		ldr	r6, [r1, #4]	@ float
 7822 0058 67F30000 		bfi	r0, r7, #0, #1
 7823 005c 5874     		strb	r0, [r3, #17]
 7824 005e 487C     		ldrb	r0, [r1, #17]	@ zero_extendqisi2
 7825 0060 597C     		ldrb	r1, [r3, #17]	@ zero_extendqisi2
 7826 0062 C0F34000 		ubfx	r0, r0, #1, #1
 7827 0066 0432     		adds	r2, r2, #4
 7828 0068 60F34101 		bfi	r1, r0, #1, #1
 7829 006c 1C2A     		cmp	r2, #28
 7830 006e 5E60     		str	r6, [r3, #4]	@ float
 7831 0070 5974     		strb	r1, [r3, #17]
 7832 0072 EAD1     		bne	.L1473
 7833 0074 0023     		movs	r3, #0
 7834 0076 85F88630 		strb	r3, [r5, #134]
 7835              	.L1471:
 7836 007a 2846     		mov	r0, r5
 7837 007c 2146     		mov	r1, r4
 7838 007e FFF7FEFF 		bl	_ZN6GCodes3PopER11GCodeBuffer
 7839 0082 2046     		mov	r0, r4
 7840 0084 FFF7FEFF 		bl	_ZN11GCodeBuffer4InitEv
 7841 0088 A368     		ldr	r3, [r4, #8]
 7842 008a 1E7C     		ldrb	r6, [r3, #16]	@ zero_extendqisi2
 7843 008c A6B1     		cbz	r6, .L1500
 7844              	.L1460:
 7845 008e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 7846              	.L1498:
 7847 0092 2046     		mov	r0, r4
 7848 0094 0A21     		movs	r1, #10
 7849 0096 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEc
 7850 009a 0028     		cmp	r0, #0
 7851 009c C0D0     		beq	.L1465
 7852              	.L1495:
 7853 009e 2846     		mov	r0, r5
 7854 00a0 3A46     		mov	r2, r7
 7855 00a2 2146     		mov	r1, r4
 7856 00a4 FFF7FEFF 		bl	_ZN6GCodes9ActOnCodeER11GCodeBufferR9StringRef
 7857 00a8 0028     		cmp	r0, #0
 7858 00aa 0CBF     		ite	eq
 7859 00ac 0223     		moveq	r3, #2
 7860 00ae 0023     		movne	r3, #0
 7861 00b0 C4F88030 		str	r3, [r4, #128]
 7862 00b4 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 7863              	.L1500:
 7864 00b8 2846     		mov	r0, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 139


 7865 00ba 2146     		mov	r1, r4
 7866 00bc FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 7867 00c0 2846     		mov	r0, r5
 7868 00c2 2146     		mov	r1, r4
 7869 00c4 3246     		mov	r2, r6
 7870 00c6 194B     		ldr	r3, .L1501
 7871 00c8 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 7872 00cc FFF7FEBF 		b	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 7873              	.L1497:
 7874 00d0 2869     		ldr	r0, [r5, #16]
 7875 00d2 2146     		mov	r1, r4
 7876 00d4 0368     		ldr	r3, [r0]
 7877 00d6 5B68     		ldr	r3, [r3, #4]
 7878 00d8 9847     		blx	r3
 7879 00da 0028     		cmp	r0, #0
 7880 00dc DFD1     		bne	.L1495
 7881 00de BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 7882              	.L1499:
 7883 00e2 2846     		mov	r0, r5
 7884 00e4 2146     		mov	r1, r4
 7885 00e6 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 7886 00ea 0028     		cmp	r0, #0
 7887 00ec CFD0     		beq	.L1460
 7888 00ee 2869     		ldr	r0, [r5, #16]
 7889 00f0 0368     		ldr	r3, [r0]
 7890 00f2 1B68     		ldr	r3, [r3]
 7891 00f4 9847     		blx	r3
 7892 00f6 B068     		ldr	r0, [r6, #8]
 7893 00f8 10B1     		cbz	r0, .L1469
 7894 00fa FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 7895 00fe B760     		str	r7, [r6, #8]
 7896              	.L1469:
 7897 0100 2146     		mov	r1, r4
 7898 0102 2846     		mov	r0, r5
 7899 0104 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 7900 0108 094B     		ldr	r3, .L1501+4
 7901 010a D869     		ldr	r0, [r3, #28]
 7902 010c FFF7FEFF 		bl	_ZN12PrintMonitor12StoppedPrintEv
 7903 0110 2868     		ldr	r0, [r5]
 7904 0112 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 7905 0116 0228     		cmp	r0, #2
 7906 0118 B9D1     		bne	.L1460
 7907 011a 2846     		mov	r0, r5
 7908 011c 2146     		mov	r1, r4
 7909 011e 0022     		movs	r2, #0
 7910 0120 044B     		ldr	r3, .L1501+8
 7911 0122 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 7912 0126 FFF7FEBF 		b	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 7913              	.L1502:
 7914 012a 00BF     		.align	2
 7915              	.L1501:
 7916 012c E4060000 		.word	.LC71
 7917 0130 00000000 		.word	reprap
 7918 0134 F8090000 		.word	.LC102
 7919              		.size	_ZN6GCodes11DoFilePrintER11GCodeBufferR9StringRef, .-_ZN6GCodes11DoFilePrintER11GCodeBufferR
 7920              		.section	.text._ZN6GCodes14StartNextGCodeER11GCodeBufferR9StringRef,"ax",%progbits
 7921              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 140


 7922              		.global	_ZN6GCodes14StartNextGCodeER11GCodeBufferR9StringRef
 7923              		.thumb
 7924              		.thumb_func
 7925              		.type	_ZN6GCodes14StartNextGCodeER11GCodeBufferR9StringRef, %function
 7926              	_ZN6GCodes14StartNextGCodeER11GCodeBufferR9StringRef:
 7927              		@ args = 0, pretend = 0, frame = 0
 7928              		@ frame_needed = 0, uses_anonymous_args = 0
 7929 0000 70B5     		push	{r4, r5, r6, lr}
 7930 0002 0C46     		mov	r4, r1
 7931 0004 1646     		mov	r6, r2
 7932 0006 0546     		mov	r5, r0
 7933 0008 FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 7934 000c 18B1     		cbz	r0, .L1504
 7935 000e 2B6C     		ldr	r3, [r5, #64]
 7936 0010 1968     		ldr	r1, [r3]
 7937 0012 A142     		cmp	r1, r4
 7938 0014 39D0     		beq	.L1527
 7939              	.L1504:
 7940 0016 D4F88030 		ldr	r3, [r4, #128]
 7941 001a 013B     		subs	r3, r3, #1
 7942 001c 012B     		cmp	r3, #1
 7943 001e 28D9     		bls	.L1528
 7944 0020 A368     		ldr	r3, [r4, #8]
 7945 0022 9B68     		ldr	r3, [r3, #8]
 7946 0024 33B1     		cbz	r3, .L1529
 7947 0026 2846     		mov	r0, r5
 7948 0028 2146     		mov	r1, r4
 7949 002a 3246     		mov	r2, r6
 7950 002c BDE87040 		pop	{r4, r5, r6, lr}
 7951 0030 FFF7FEBF 		b	_ZN6GCodes11DoFilePrintER11GCodeBufferR9StringRef
 7952              	.L1529:
 7953 0034 2B6D     		ldr	r3, [r5, #80]
 7954 0036 1B68     		ldr	r3, [r3]
 7955 0038 A342     		cmp	r3, r4
 7956 003a 31D0     		beq	.L1530
 7957 003c AB6B     		ldr	r3, [r5, #56]
 7958 003e 1B68     		ldr	r3, [r3]
 7959 0040 A342     		cmp	r3, r4
 7960 0042 34D0     		beq	.L1531
 7961 0044 EB6B     		ldr	r3, [r5, #60]
 7962 0046 1B68     		ldr	r3, [r3]
 7963 0048 A342     		cmp	r3, r4
 7964 004a 23D0     		beq	.L1532
 7965 004c 6B6C     		ldr	r3, [r5, #68]
 7966 004e 1B68     		ldr	r3, [r3]
 7967 0050 A342     		cmp	r3, r4
 7968 0052 32D0     		beq	.L1533
 7969 0054 AB6C     		ldr	r3, [r5, #72]
 7970 0056 1B68     		ldr	r3, [r3]
 7971 0058 A342     		cmp	r3, r4
 7972 005a 15D1     		bne	.L1503
 7973 005c A869     		ldr	r0, [r5, #24]
 7974 005e 2146     		mov	r1, r4
 7975 0060 0368     		ldr	r3, [r0]
 7976 0062 5B68     		ldr	r3, [r3, #4]
 7977 0064 9847     		blx	r3
 7978 0066 78B1     		cbz	r0, .L1503
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 141


 7979 0068 2B68     		ldr	r3, [r5]
 7980 006a 0122     		movs	r2, #1
 7981 006c 83F8A826 		strb	r2, [r3, #1704]
 7982 0070 70BD     		pop	{r4, r5, r6, pc}
 7983              	.L1528:
 7984 0072 2846     		mov	r0, r5
 7985 0074 3246     		mov	r2, r6
 7986 0076 2146     		mov	r1, r4
 7987 0078 FFF7FEFF 		bl	_ZN6GCodes9ActOnCodeER11GCodeBufferR9StringRef
 7988 007c 0028     		cmp	r0, #0
 7989 007e 0CBF     		ite	eq
 7990 0080 0223     		moveq	r3, #2
 7991 0082 0023     		movne	r3, #0
 7992 0084 C4F88030 		str	r3, [r4, #128]
 7993              	.L1503:
 7994 0088 70BD     		pop	{r4, r5, r6, pc}
 7995              	.L1527:
 7996 008a 2846     		mov	r0, r5
 7997 008c BDE87040 		pop	{r4, r5, r6, lr}
 7998 0090 FFF7FEBF 		b	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 7999              	.L1532:
 8000 0094 E868     		ldr	r0, [r5, #12]
 8001 0096 2146     		mov	r1, r4
 8002 0098 0368     		ldr	r3, [r0]
 8003 009a 5B68     		ldr	r3, [r3, #4]
 8004 009c 9847     		blx	r3
 8005 009e 70BD     		pop	{r4, r5, r6, pc}
 8006              	.L1530:
 8007 00a0 D5F80803 		ldr	r0, [r5, #776]
 8008 00a4 2146     		mov	r1, r4
 8009 00a6 BDE87040 		pop	{r4, r5, r6, lr}
 8010 00aa FFF7FEBF 		b	_ZN10GCodeQueue10FillBufferEP11GCodeBuffer
 8011              	.L1531:
 8012 00ae A868     		ldr	r0, [r5, #8]
 8013 00b0 2146     		mov	r1, r4
 8014 00b2 0368     		ldr	r3, [r0]
 8015 00b4 5B68     		ldr	r3, [r3, #4]
 8016 00b6 9847     		blx	r3
 8017 00b8 70BD     		pop	{r4, r5, r6, pc}
 8018              	.L1533:
 8019 00ba 6869     		ldr	r0, [r5, #20]
 8020 00bc 2146     		mov	r1, r4
 8021 00be 0368     		ldr	r3, [r0]
 8022 00c0 5B68     		ldr	r3, [r3, #4]
 8023 00c2 9847     		blx	r3
 8024 00c4 70BD     		pop	{r4, r5, r6, pc}
 8025              		.size	_ZN6GCodes14StartNextGCodeER11GCodeBufferR9StringRef, .-_ZN6GCodes14StartNextGCodeER11GCodeB
 8026 00c6 00BF     		.section	.text._ZN6GCodes4SpinEv,"ax",%progbits
 8027              		.align	2
 8028              		.global	_ZN6GCodes4SpinEv
 8029              		.thumb
 8030              		.thumb_func
 8031              		.type	_ZN6GCodes4SpinEv, %function
 8032              	_ZN6GCodes4SpinEv:
 8033              		@ args = 0, pretend = 0, frame = 2064
 8034              		@ frame_needed = 0, uses_anonymous_args = 0
 8035 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 142


 8036 0004 90F88430 		ldrb	r3, [r0, #132]	@ zero_extendqisi2
 8037 0008 ADF5026D 		sub	sp, sp, #2080
 8038 000c 0446     		mov	r4, r0
 8039 000e 1BB9     		cbnz	r3, .L1683
 8040 0010 0DF5026D 		add	sp, sp, #2080
 8041              		@ sp needed
 8042 0014 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 8043              	.L1683:
 8044 0018 FFF7FEFF 		bl	_ZN6GCodes13CheckTriggersEv
 8045 001c 636D     		ldr	r3, [r4, #84]
 8046 001e 4FF40067 		mov	r7, #2048
 8047 0022 04EB8302 		add	r2, r4, r3, lsl #2
 8048 0026 D569     		ldr	r5, [r2, #28]
 8049 0028 0020     		movs	r0, #0
 8050 002a AE68     		ldr	r6, [r5, #8]
 8051 002c 08AA     		add	r2, sp, #32
 8052 002e 317C     		ldrb	r1, [r6, #16]	@ zero_extendqisi2
 8053 0030 0797     		str	r7, [sp, #28]
 8054 0032 0692     		str	r2, [sp, #24]
 8055 0034 8DF82000 		strb	r0, [sp, #32]
 8056 0038 F1B1     		cbz	r1, .L1684
 8057 003a 4A1E     		subs	r2, r1, #1
 8058 003c 182A     		cmp	r2, #24
 8059 003e 00F2BD82 		bhi	.L1538
 8060 0042 DFE812F0 		tbh	[pc, r2, lsl #1]
 8061              	.L1540:
 8062 0046 7500     		.2byte	(.L1539-.L1540)/2
 8063 0048 7F00     		.2byte	(.L1541-.L1540)/2
 8064 004a A500     		.2byte	(.L1542-.L1540)/2
 8065 004c C200     		.2byte	(.L1543-.L1540)/2
 8066 004e E600     		.2byte	(.L1544-.L1540)/2
 8067 0050 0A01     		.2byte	(.L1545-.L1540)/2
 8068 0052 2A01     		.2byte	(.L1546-.L1540)/2
 8069 0054 C200     		.2byte	(.L1543-.L1540)/2
 8070 0056 E600     		.2byte	(.L1544-.L1540)/2
 8071 0058 0A01     		.2byte	(.L1545-.L1540)/2
 8072 005a 3101     		.2byte	(.L1547-.L1540)/2
 8073 005c 4601     		.2byte	(.L1548-.L1540)/2
 8074 005e 5A01     		.2byte	(.L1549-.L1540)/2
 8075 0060 6901     		.2byte	(.L1550-.L1540)/2
 8076 0062 6901     		.2byte	(.L1550-.L1540)/2
 8077 0064 BB01     		.2byte	(.L1551-.L1540)/2
 8078 0066 F001     		.2byte	(.L1552-.L1540)/2
 8079 0068 8402     		.2byte	(.L1553-.L1540)/2
 8080 006a 8F02     		.2byte	(.L1554-.L1540)/2
 8081 006c 8F02     		.2byte	(.L1554-.L1540)/2
 8082 006e F401     		.2byte	(.L1555-.L1540)/2
 8083 0070 1102     		.2byte	(.L1556-.L1540)/2
 8084 0072 2202     		.2byte	(.L1557-.L1540)/2
 8085 0074 6A02     		.2byte	(.L1558-.L1540)/2
 8086 0076 5100     		.2byte	(.L1559-.L1540)/2
 8087              	.L1684:
 8088 0078 2946     		mov	r1, r5
 8089 007a 06AA     		add	r2, sp, #24
 8090 007c 2046     		mov	r0, r4
 8091 007e FFF7FEFF 		bl	_ZN6GCodes14StartNextGCodeER11GCodeBufferR9StringRef
 8092 0082 636D     		ldr	r3, [r4, #84]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 143


 8093              	.L1537:
 8094 0084 0133     		adds	r3, r3, #1
 8095 0086 072B     		cmp	r3, #7
 8096 0088 08BF     		it	eq
 8097 008a 0023     		moveq	r3, #0
 8098 008c 6365     		str	r3, [r4, #84]
 8099 008e FFF7FEFF 		bl	millis
 8100 0092 D4F87833 		ldr	r3, [r4, #888]
 8101 0096 0546     		mov	r5, r0
 8102 0098 C31A     		subs	r3, r0, r3
 8103 009a B3F57A6F 		cmp	r3, #4000
 8104 009e 0FD3     		bcc	.L1608
 8105 00a0 94F87F33 		ldrb	r3, [r4, #895]	@ zero_extendqisi2
 8106 00a4 ABB9     		cbnz	r3, .L1685
 8107              	.L1609:
 8108 00a6 94F88033 		ldrb	r3, [r4, #896]	@ zero_extendqisi2
 8109 00aa 4BB1     		cbz	r3, .L1608
 8110 00ac 2068     		ldr	r0, [r4]
 8111 00ae 0621     		movs	r1, #6
 8112 00b0 B74A     		ldr	r2, .L1694
 8113 00b2 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8114 00b6 0023     		movs	r3, #0
 8115 00b8 C4F87853 		str	r5, [r4, #888]
 8116 00bc 84F88033 		strb	r3, [r4, #896]
 8117              	.L1608:
 8118 00c0 2068     		ldr	r0, [r4]
 8119 00c2 04F55D71 		add	r1, r4, #884
 8120 00c6 FFF7FEFF 		bl	_ZN8Platform11ClassReportERf
 8121 00ca 0DF5026D 		add	sp, sp, #2080
 8122              		@ sp needed
 8123 00ce BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 8124              	.L1685:
 8125 00d2 2068     		ldr	r0, [r4]
 8126 00d4 0621     		movs	r1, #6
 8127 00d6 AF4A     		ldr	r2, .L1694+4
 8128 00d8 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8129 00dc 0023     		movs	r3, #0
 8130 00de C4F87853 		str	r5, [r4, #888]
 8131 00e2 84F87F33 		strb	r3, [r4, #895]
 8132 00e6 DEE7     		b	.L1609
 8133              	.L1559:
 8134 00e8 2046     		mov	r0, r4
 8135 00ea 2946     		mov	r1, r5
 8136 00ec FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8137 00f0 B0B1     		cbz	r0, .L1677
 8138 00f2 D4F8A032 		ldr	r3, [r4, #672]
 8139 00f6 A84F     		ldr	r7, .L1694+8
 8140 00f8 D907     		lsls	r1, r3, #31
 8141 00fa B868     		ldr	r0, [r7, #8]
 8142 00fc D4F89C22 		ldr	r2, [r4, #668]
 8143 0100 40F1CC82 		bpl	.L1597
 8144 0104 002A     		cmp	r2, #0
 8145 0106 00F0D182 		beq	.L1676
 8146 010a 013A     		subs	r2, r2, #1
 8147 010c C4F89C22 		str	r2, [r4, #668]
 8148              	.L1599:
 8149 0110 D0F80424 		ldr	r2, [r0, #1028]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 144


 8150 0114 9A42     		cmp	r2, r3
 8151 0116 00F02283 		beq	.L1686
 8152 011a AB68     		ldr	r3, [r5, #8]
 8153 011c 1522     		movs	r2, #21
 8154 011e 1A74     		strb	r2, [r3, #16]
 8155              	.L1677:
 8156 0120 0026     		movs	r6, #0
 8157              	.L1561:
 8158 0122 AB68     		ldr	r3, [r5, #8]
 8159 0124 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 8160 0126 002B     		cmp	r3, #0
 8161 0128 00F03C82 		beq	.L1604
 8162              	.L1681:
 8163 012c 636D     		ldr	r3, [r4, #84]
 8164 012e A9E7     		b	.L1537
 8165              	.L1539:
 8166 0130 2046     		mov	r0, r4
 8167 0132 2946     		mov	r1, r5
 8168 0134 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8169 0138 0028     		cmp	r0, #0
 8170 013a F1D0     		beq	.L1677
 8171              	.L1680:
 8172 013c AB68     		ldr	r3, [r5, #8]
 8173 013e 0026     		movs	r6, #0
 8174 0140 1E74     		strb	r6, [r3, #16]
 8175 0142 EEE7     		b	.L1561
 8176              	.L1541:
 8177 0144 B4F84002 		ldrh	r0, [r4, #576]
 8178 0148 0028     		cmp	r0, #0
 8179 014a 00F04182 		beq	.L1562
 8180 014e D4F88461 		ldr	r6, [r4, #388]
 8181 0152 0022     		movs	r2, #0
 8182 0154 2EB9     		cbnz	r6, .L1566
 8183 0156 95E7     		b	.L1537
 8184              	.L1687:
 8185 0158 0428     		cmp	r0, #4
 8186 015a 08D0     		beq	.L1565
 8187              	.L1564:
 8188 015c 0132     		adds	r2, r2, #1
 8189 015e B242     		cmp	r2, r6
 8190 0160 90D0     		beq	.L1537
 8191              	.L1566:
 8192 0162 20FA02F1 		lsr	r1, r0, r2
 8193 0166 CF07     		lsls	r7, r1, #31
 8194 0168 F8D5     		bpl	.L1564
 8195 016a 022A     		cmp	r2, #2
 8196 016c F4D0     		beq	.L1687
 8197              	.L1565:
 8198 016e 0123     		movs	r3, #1
 8199 0170 03FA02F6 		lsl	r6, r3, r2
 8200 0174 8949     		ldr	r1, .L1694+12
 8201 0176 20EA0600 		bic	r0, r0, r6
 8202 017a 0026     		movs	r6, #0
 8203 017c 51F82220 		ldr	r2, [r1, r2, lsl #2]
 8204 0180 A4F84002 		strh	r0, [r4, #576]	@ movhi
 8205 0184 2946     		mov	r1, r5
 8206 0186 0096     		str	r6, [sp]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 145


 8207 0188 2046     		mov	r0, r4
 8208 018a FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 8209 018e C8E7     		b	.L1561
 8210              	.L1542:
 8211 0190 2046     		mov	r0, r4
 8212 0192 2946     		mov	r1, r5
 8213 0194 D4F85422 		ldr	r2, [r4, #596]
 8214 0198 0023     		movs	r3, #0
 8215 019a FFF7FEFF 		bl	_ZN6GCodes21DoSingleZProbeAtPointER11GCodeBufferjf
 8216 019e 0028     		cmp	r0, #0
 8217 01a0 BED0     		beq	.L1677
 8218 01a2 D4F85462 		ldr	r6, [r4, #596]
 8219 01a6 7C4F     		ldr	r7, .L1694+8
 8220 01a8 0136     		adds	r6, r6, #1
 8221 01aa C4F85462 		str	r6, [r4, #596]
 8222 01ae B868     		ldr	r0, [r7, #8]
 8223 01b0 FFF7FEFF 		bl	_ZNK4Move21NumberOfXYProbePointsEv
 8224 01b4 8642     		cmp	r6, r0
 8225 01b6 B3D3     		bcc	.L1677
 8226 01b8 B868     		ldr	r0, [r7, #8]
 8227 01ba 0021     		movs	r1, #0
 8228 01bc 06AA     		add	r2, sp, #24
 8229 01be FFF7FEFF 		bl	_ZN4Move18FinishedBedProbingEiR9StringRef
 8230 01c2 AB68     		ldr	r3, [r5, #8]
 8231 01c4 0026     		movs	r6, #0
 8232 01c6 1E74     		strb	r6, [r3, #16]
 8233 01c8 ABE7     		b	.L1561
 8234              	.L1543:
 8235 01ca 0122     		movs	r2, #1
 8236 01cc 84F88720 		strb	r2, [r4, #135]
 8237 01d0 AB68     		ldr	r3, [r5, #8]
 8238 01d2 7149     		ldr	r1, .L1694+8
 8239 01d4 187C     		ldrb	r0, [r3, #16]	@ zero_extendqisi2
 8240 01d6 1044     		add	r0, r0, r2
 8241 01d8 1874     		strb	r0, [r3, #16]
 8242 01da 496A     		ldr	r1, [r1, #36]
 8243 01dc 0029     		cmp	r1, #0
 8244 01de 9FD0     		beq	.L1677
 8245 01e0 D4F88431 		ldr	r3, [r4, #388]
 8246 01e4 D4F85C02 		ldr	r0, [r4, #604]
 8247 01e8 02FA03F3 		lsl	r3, r2, r3
 8248 01ec 013B     		subs	r3, r3, #1
 8249 01ee 1840     		ands	r0, r0, r3
 8250 01f0 8342     		cmp	r3, r0
 8251 01f2 95D1     		bne	.L1677
 8252 01f4 6A4E     		ldr	r6, .L1694+16
 8253 01f6 4A68     		ldr	r2, [r1, #4]
 8254 01f8 6A49     		ldr	r1, .L1694+20
 8255 01fa 3046     		mov	r0, r6
 8256              	.L1678:
 8257 01fc FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8258 0200 3268     		ldr	r2, [r6]
 8259 0202 0026     		movs	r6, #0
 8260 0204 0096     		str	r6, [sp]
 8261 0206 3346     		mov	r3, r6
 8262 0208 2046     		mov	r0, r4
 8263 020a 2946     		mov	r1, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 146


 8264 020c FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 8265 0210 87E7     		b	.L1561
 8266              	.L1544:
 8267 0212 6148     		ldr	r0, .L1694+8
 8268 0214 436A     		ldr	r3, [r0, #36]
 8269 0216 23B1     		cbz	r3, .L1569
 8270 0218 5968     		ldr	r1, [r3, #4]
 8271 021a FFF7FEFF 		bl	_ZN6RepRap11StandbyToolEi
 8272 021e AE68     		ldr	r6, [r5, #8]
 8273 0220 317C     		ldrb	r1, [r6, #16]	@ zero_extendqisi2
 8274              	.L1569:
 8275 0222 0131     		adds	r1, r1, #1
 8276 0224 3174     		strb	r1, [r6, #16]
 8277 0226 5C48     		ldr	r0, .L1694+8
 8278 0228 D4F84812 		ldr	r1, [r4, #584]
 8279 022c FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 8280 0230 0028     		cmp	r0, #0
 8281 0232 3FF475AF 		beq	.L1677
 8282 0236 D4F88431 		ldr	r3, [r4, #388]
 8283 023a 0122     		movs	r2, #1
 8284 023c 02FA03F3 		lsl	r3, r2, r3
 8285 0240 D4F85C22 		ldr	r2, [r4, #604]
 8286 0244 013B     		subs	r3, r3, #1
 8287 0246 1A40     		ands	r2, r2, r3
 8288 0248 9342     		cmp	r3, r2
 8289 024a 7FF469AF 		bne	.L1677
 8290 024e 544E     		ldr	r6, .L1694+16
 8291 0250 5549     		ldr	r1, .L1694+24
 8292              	.L1679:
 8293 0252 3046     		mov	r0, r6
 8294 0254 D4F84822 		ldr	r2, [r4, #584]
 8295 0258 D0E7     		b	.L1678
 8296              	.L1545:
 8297 025a 4F48     		ldr	r0, .L1694+8
 8298 025c D4F84812 		ldr	r1, [r4, #584]
 8299 0260 FFF7FEFF 		bl	_ZN6RepRap10SelectToolEi
 8300 0264 AB68     		ldr	r3, [r5, #8]
 8301 0266 D4F84812 		ldr	r1, [r4, #584]
 8302 026a 1A7C     		ldrb	r2, [r3, #16]	@ zero_extendqisi2
 8303 026c 4A48     		ldr	r0, .L1694+8
 8304 026e 0132     		adds	r2, r2, #1
 8305 0270 1A74     		strb	r2, [r3, #16]
 8306 0272 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 8307 0276 0028     		cmp	r0, #0
 8308 0278 3FF452AF 		beq	.L1677
 8309 027c D4F88431 		ldr	r3, [r4, #388]
 8310 0280 0122     		movs	r2, #1
 8311 0282 02FA03F3 		lsl	r3, r2, r3
 8312 0286 D4F85C22 		ldr	r2, [r4, #604]
 8313 028a 013B     		subs	r3, r3, #1
 8314 028c 1A40     		ands	r2, r2, r3
 8315 028e 9342     		cmp	r3, r2
 8316 0290 7FF446AF 		bne	.L1677
 8317 0294 424E     		ldr	r6, .L1694+16
 8318 0296 4549     		ldr	r1, .L1694+28
 8319 0298 DBE7     		b	.L1679
 8320              	.L1546:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 147


 8321 029a 0023     		movs	r3, #0
 8322 029c 84F88730 		strb	r3, [r4, #135]
 8323 02a0 AA68     		ldr	r2, [r5, #8]
 8324 02a2 1E46     		mov	r6, r3
 8325 02a4 1374     		strb	r3, [r2, #16]
 8326 02a6 3CE7     		b	.L1561
 8327              	.L1547:
 8328 02a8 0023     		movs	r3, #0
 8329 02aa 84F88730 		strb	r3, [r4, #135]
 8330 02ae 2046     		mov	r0, r4
 8331 02b0 2946     		mov	r1, r5
 8332 02b2 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 8333 02b6 94F87E33 		ldrb	r3, [r4, #894]	@ zero_extendqisi2
 8334 02ba 002B     		cmp	r3, #0
 8335 02bc 00F0D881 		beq	.L1688
 8336              	.L1572:
 8337 02c0 0023     		movs	r3, #0
 8338 02c2 84F87D33 		strb	r3, [r4, #893]
 8339 02c6 84F87E33 		strb	r3, [r4, #894]
 8340 02ca AA68     		ldr	r2, [r5, #8]
 8341 02cc 1E46     		mov	r6, r3
 8342 02ce 1374     		strb	r3, [r2, #16]
 8343 02d0 27E7     		b	.L1561
 8344              	.L1548:
 8345 02d2 2046     		mov	r0, r4
 8346 02d4 2946     		mov	r1, r5
 8347 02d6 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8348 02da 0028     		cmp	r0, #0
 8349 02dc 3FF420AF 		beq	.L1677
 8350 02e0 AB68     		ldr	r3, [r5, #8]
 8351 02e2 334A     		ldr	r2, .L1694+32
 8352 02e4 0D21     		movs	r1, #13
 8353 02e6 0026     		movs	r6, #0
 8354 02e8 1974     		strb	r1, [r3, #16]
 8355 02ea 1268     		ldr	r2, [r2]
 8356 02ec 2046     		mov	r0, r4
 8357 02ee 0096     		str	r6, [sp]
 8358 02f0 2946     		mov	r1, r5
 8359 02f2 0123     		movs	r3, #1
 8360 02f4 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 8361 02f8 13E7     		b	.L1561
 8362              	.L1549:
 8363 02fa 2046     		mov	r0, r4
 8364 02fc 2946     		mov	r1, r5
 8365 02fe FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8366 0302 0028     		cmp	r0, #0
 8367 0304 3FF40CAF 		beq	.L1677
 8368 0308 06A8     		add	r0, sp, #24
 8369 030a 2A49     		ldr	r1, .L1694+36
 8370 030c FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8371 0310 AB68     		ldr	r3, [r5, #8]
 8372 0312 0026     		movs	r6, #0
 8373 0314 1E74     		strb	r6, [r3, #16]
 8374 0316 04E7     		b	.L1561
 8375              	.L1550:
 8376 0318 2046     		mov	r0, r4
 8377 031a 2946     		mov	r1, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 148


 8378 031c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8379 0320 0028     		cmp	r0, #0
 8380 0322 3FF4FDAE 		beq	.L1677
 8381 0326 D4F88421 		ldr	r2, [r4, #388]
 8382 032a D4F89070 		ldr	r7, [r4, #144]	@ float
 8383 032e 5AB1     		cbz	r2, .L1578
 8384 0330 2346     		mov	r3, r4
 8385 0332 04EB8206 		add	r6, r4, r2, lsl #2
 8386              	.L1577:
 8387 0336 D3F83411 		ldr	r1, [r3, #308]	@ float
 8388 033a 0433     		adds	r3, r3, #4
 8389 033c C3F88410 		str	r1, [r3, #132]	@ float
 8390 0340 B342     		cmp	r3, r6
 8391 0342 F8D1     		bne	.L1577
 8392 0344 082A     		cmp	r2, #8
 8393 0346 09D8     		bhi	.L1581
 8394              	.L1578:
 8395 0348 02F12103 		add	r3, r2, #33
 8396 034c 04EB8303 		add	r3, r4, r3, lsl #2
 8397 0350 0021     		movs	r1, #0
 8398              	.L1575:
 8399 0352 0132     		adds	r2, r2, #1
 8400 0354 082A     		cmp	r2, #8
 8401 0356 43F8041F 		str	r1, [r3, #4]!	@ float
 8402 035a FAD9     		bls	.L1575
 8403              	.L1581:
 8404 035c 1649     		ldr	r1, .L1694+40
 8405 035e 0023     		movs	r3, #0
 8406 0360 4FF0FF32 		mov	r2, #-1
 8407 0364 84F8D630 		strb	r3, [r4, #214]
 8408 0368 A4F8D430 		strh	r3, [r4, #212]	@ movhi
 8409 036c 84F8D830 		strb	r3, [r4, #216]
 8410 0370 C4F8C410 		str	r1, [r4, #196]	@ float
 8411 0374 C4F8C820 		str	r2, [r4, #200]
 8412 0378 AE68     		ldr	r6, [r5, #8]
 8413 037a 337C     		ldrb	r3, [r6, #16]	@ zero_extendqisi2
 8414 037c 0E2B     		cmp	r3, #14
 8415 037e 00F0D881 		beq	.L1689
 8416              	.L1580:
 8417 0382 1023     		movs	r3, #16
 8418 0384 3374     		strb	r3, [r6, #16]
 8419              	.L1612:
 8420 0386 0123     		movs	r3, #1
 8421 0388 C4F8DC30 		str	r3, [r4, #220]
 8422 038c 0026     		movs	r6, #0
 8423 038e C8E6     		b	.L1561
 8424              	.L1695:
 8425              		.align	2
 8426              	.L1694:
 8427 0390 340B0000 		.word	.LC111
 8428 0394 040B0000 		.word	.LC110
 8429 0398 00000000 		.word	reprap
 8430 039c 00000000 		.word	.LANCHOR6
 8431 03a0 00000000 		.word	scratchString
 8432 03a4 7C0B0000 		.word	.LC112
 8433 03a8 880B0000 		.word	.LC113
 8434 03ac 940B0000 		.word	.LC114
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 149


 8435 03b0 00000000 		.word	.LANCHOR7
 8436 03b4 0C0A0000 		.word	.LC103
 8437 03b8 01004842 		.word	1112014849
 8438              	.L1551:
 8439 03bc 2046     		mov	r0, r4
 8440 03be 2946     		mov	r1, r5
 8441 03c0 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8442 03c4 0028     		cmp	r0, #0
 8443 03c6 3FF4ABAE 		beq	.L1677
 8444 03ca 2068     		ldr	r0, [r4]
 8445 03cc 0021     		movs	r1, #0
 8446 03ce D4F86022 		ldr	r2, [r4, #608]	@ float
 8447 03d2 FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 8448 03d6 0121     		movs	r1, #1
 8449 03d8 2068     		ldr	r0, [r4]
 8450 03da D4F86422 		ldr	r2, [r4, #612]	@ float
 8451 03de FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 8452 03e2 D4F88411 		ldr	r1, [r4, #388]
 8453 03e6 0829     		cmp	r1, #8
 8454 03e8 0CD8     		bhi	.L1584
 8455 03ea 8900     		lsls	r1, r1, #2
 8456 03ec C1F12400 		rsb	r0, r1, #36
 8457 03f0 2044     		add	r0, r0, r4
 8458 03f2 2346     		mov	r3, r4
 8459              	.L1585:
 8460 03f4 5A18     		adds	r2, r3, r1
 8461 03f6 D2F83421 		ldr	r2, [r2, #308]	@ float
 8462 03fa 0433     		adds	r3, r3, #4
 8463 03fc C3F8A021 		str	r2, [r3, #416]	@ float
 8464 0400 8342     		cmp	r3, r0
 8465 0402 F7D1     		bne	.L1585
 8466              	.L1584:
 8467 0404 236C     		ldr	r3, [r4, #64]
 8468 0406 D4F85821 		ldr	r2, [r4, #344]	@ float
 8469 040a 1B68     		ldr	r3, [r3]
 8470 040c 0027     		movs	r7, #0
 8471 040e 9B68     		ldr	r3, [r3, #8]
 8472 0410 06A8     		add	r0, sp, #24
 8473 0412 5A60     		str	r2, [r3, #4]	@ float
 8474 0414 A749     		ldr	r1, .L1696
 8475 0416 84F88570 		strb	r7, [r4, #133]
 8476 041a FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8477 041e AB68     		ldr	r3, [r5, #8]
 8478 0420 3E46     		mov	r6, r7
 8479 0422 1F74     		strb	r7, [r3, #16]
 8480 0424 7DE6     		b	.L1561
 8481              	.L1552:
 8482 0426 1223     		movs	r3, #18
 8483 0428 3374     		strb	r3, [r6, #16]
 8484 042a 0026     		movs	r6, #0
 8485 042c 79E6     		b	.L1561
 8486              	.L1555:
 8487 042e A24B     		ldr	r3, .L1696+4
 8488 0430 D4F89C12 		ldr	r1, [r4, #668]
 8489 0434 9E68     		ldr	r6, [r3, #8]
 8490 0436 06F57A76 		add	r6, r6, #1000
 8491 043a 3046     		mov	r0, r6
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 150


 8492 043c FFF7FEFF 		bl	_ZNK14GridDefinition14GetXCoordinateEj
 8493 0440 D4F8A012 		ldr	r1, [r4, #672]
 8494 0444 8046     		mov	r8, r0
 8495 0446 3046     		mov	r0, r6
 8496 0448 FFF7FEFF 		bl	_ZNK14GridDefinition14GetYCoordinateEj
 8497 044c 0746     		mov	r7, r0
 8498 044e 4146     		mov	r1, r8
 8499 0450 3046     		mov	r0, r6
 8500 0452 3A46     		mov	r2, r7
 8501 0454 FFF7FEFF 		bl	_ZNK14GridDefinition10IsInRadiusEff
 8502 0458 0028     		cmp	r0, #0
 8503 045a 40F0C980 		bne	.L1690
 8504              	.L1593:
 8505 045e AB68     		ldr	r3, [r5, #8]
 8506 0460 1922     		movs	r2, #25
 8507 0462 1A74     		strb	r2, [r3, #16]
 8508 0464 0026     		movs	r6, #0
 8509 0466 5CE6     		b	.L1561
 8510              	.L1556:
 8511 0468 2046     		mov	r0, r4
 8512 046a 2946     		mov	r1, r5
 8513 046c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8514 0470 0028     		cmp	r0, #0
 8515 0472 3FF455AE 		beq	.L1677
 8516 0476 FFF7FEFF 		bl	millis
 8517 047a C4F89402 		str	r0, [r4, #660]
 8518 047e AB68     		ldr	r3, [r5, #8]
 8519 0480 0026     		movs	r6, #0
 8520 0482 1A7C     		ldrb	r2, [r3, #16]	@ zero_extendqisi2
 8521 0484 0132     		adds	r2, r2, #1
 8522 0486 1A74     		strb	r2, [r3, #16]
 8523 0488 4BE6     		b	.L1561
 8524              	.L1557:
 8525 048a FFF7FEFF 		bl	millis
 8526 048e 8A4E     		ldr	r6, .L1696+4
 8527 0490 D4F89422 		ldr	r2, [r4, #660]
 8528 0494 3368     		ldr	r3, [r6]
 8529 0496 871A     		subs	r7, r0, r2
 8530 0498 D3F89010 		ldr	r1, [r3, #144]
 8531 049c 1846     		mov	r0, r3
 8532 049e FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersEl
 8533 04a2 8649     		ldr	r1, .L1696+8
 8534 04a4 406A     		ldr	r0, [r0, #36]	@ float
 8535 04a6 FFF7FEFF 		bl	__aeabi_fmul
 8536 04aa FFF7FEFF 		bl	__aeabi_f2uiz
 8537 04ae 8742     		cmp	r7, r0
 8538 04b0 FFF436AE 		bcc	.L1677
 8539 04b4 3068     		ldr	r0, [r6]
 8540 04b6 FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 8541 04ba 0128     		cmp	r0, #1
 8542 04bc 0646     		mov	r6, r0
 8543 04be 00F04681 		beq	.L1691
 8544 04c2 0026     		movs	r6, #0
 8545 04c4 0121     		movs	r1, #1
 8546 04c6 2068     		ldr	r0, [r4]
 8547 04c8 84F89862 		strb	r6, [r4, #664]
 8548 04cc FFF7FEFF 		bl	_ZN8Platform10SetProbingEb
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 151


 8549 04d0 4FF40042 		mov	r2, #32768
 8550 04d4 4FF0FF33 		mov	r3, #-1
 8551 04d8 A4F8D420 		strh	r2, [r4, #212]	@ movhi
 8552 04dc C4F8C830 		str	r3, [r4, #200]
 8553 04e0 84F8D660 		strb	r6, [r4, #214]
 8554 04e4 84F8D860 		strb	r6, [r4, #216]
 8555 04e8 2068     		ldr	r0, [r4]
 8556 04ea FFF7FEFF 		bl	_ZNK8Platform19GetZProbeDiveHeightEv
 8557 04ee 2368     		ldr	r3, [r4]
 8558 04f0 00F10042 		add	r2, r0, #-2147483648
 8559 04f4 C4F89020 		str	r2, [r4, #144]	@ float
 8560 04f8 1846     		mov	r0, r3
 8561 04fa D3F89010 		ldr	r1, [r3, #144]
 8562 04fe FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersEl
 8563 0502 C269     		ldr	r2, [r0, #28]	@ float
 8564 0504 0123     		movs	r3, #1
 8565 0506 C4F8C420 		str	r2, [r4, #196]	@ float
 8566 050a C4F8CC60 		str	r6, [r4, #204]
 8567 050e C4F8DC30 		str	r3, [r4, #220]
 8568 0512 AB68     		ldr	r3, [r5, #8]
 8569 0514 1822     		movs	r2, #24
 8570 0516 1A74     		strb	r2, [r3, #16]
 8571 0518 03E6     		b	.L1561
 8572              	.L1558:
 8573 051a 2046     		mov	r0, r4
 8574 051c 2946     		mov	r1, r5
 8575 051e FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8576 0522 0028     		cmp	r0, #0
 8577 0524 3FF4FCAD 		beq	.L1677
 8578 0528 2068     		ldr	r0, [r4]
 8579 052a 0021     		movs	r1, #0
 8580 052c FFF7FEFF 		bl	_ZN8Platform10SetProbingEb
 8581 0530 94F89832 		ldrb	r3, [r4, #664]	@ zero_extendqisi2
 8582 0534 03F0FF07 		and	r7, r3, #255
 8583 0538 002B     		cmp	r3, #0
 8584 053a 40F0C580 		bne	.L1596
 8585 053e 06A8     		add	r0, sp, #24
 8586 0540 5F49     		ldr	r1, .L1696+12
 8587 0542 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8588 0546 AB68     		ldr	r3, [r5, #8]
 8589 0548 0126     		movs	r6, #1
 8590 054a 1F74     		strb	r7, [r3, #16]
 8591 054c E9E5     		b	.L1561
 8592              	.L1553:
 8593 054e 94F80433 		ldrb	r3, [r4, #772]	@ zero_extendqisi2
 8594 0552 D807     		lsls	r0, r3, #31
 8595 0554 3FD4     		bmi	.L1692
 8596              	.L1586:
 8597 0556 0023     		movs	r3, #0
 8598 0558 84F80533 		strb	r3, [r4, #773]
 8599 055c AA68     		ldr	r2, [r5, #8]
 8600 055e 1E46     		mov	r6, r3
 8601 0560 1374     		strb	r3, [r2, #16]
 8602 0562 DEE5     		b	.L1561
 8603              	.L1554:
 8604 0564 2846     		mov	r0, r5
 8605 0566 4821     		movs	r1, #72
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 152


 8606 0568 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8607 056c 0028     		cmp	r0, #0
 8608 056e 39D1     		bne	.L1693
 8609              	.L1587:
 8610 0570 514F     		ldr	r7, .L1696+4
 8611 0572 7B6A     		ldr	r3, [r7, #36]
 8612 0574 1BB1     		cbz	r3, .L1614
 8613 0576 5968     		ldr	r1, [r3, #4]
 8614 0578 3846     		mov	r0, r7
 8615 057a FFF7FEFF 		bl	_ZN6RepRap11StandbyToolEi
 8616              	.L1614:
 8617 057e F868     		ldr	r0, [r7, #12]
 8618 0580 FFF7FEFF 		bl	_ZN4Heat12SwitchOffAllEv
 8619              	.L1588:
 8620 0584 AB68     		ldr	r3, [r5, #8]
 8621 0586 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 8622 0588 142B     		cmp	r3, #20
 8623 058a 1DD1     		bne	.L1589
 8624 058c 0026     		movs	r6, #0
 8625              	.L1591:
 8626 058e 3146     		mov	r1, r6
 8627 0590 2068     		ldr	r0, [r4]
 8628 0592 0136     		adds	r6, r6, #1
 8629 0594 FFF7FEFF 		bl	_ZN8Platform12DisableDriveEj
 8630 0598 092E     		cmp	r6, #9
 8631 059a F8D1     		bne	.L1591
 8632 059c 0023     		movs	r3, #0
 8633 059e C4F85C32 		str	r3, [r4, #604]
 8634 05a2 CBE5     		b	.L1680
 8635              	.L1604:
 8636 05a4 2B71     		strb	r3, [r5, #4]
 8637 05a6 2046     		mov	r0, r4
 8638 05a8 2946     		mov	r1, r5
 8639 05aa FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 8640 05ae 2046     		mov	r0, r4
 8641 05b0 2946     		mov	r1, r5
 8642 05b2 3246     		mov	r2, r6
 8643 05b4 069B     		ldr	r3, [sp, #24]
 8644 05b6 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 8645 05ba B7E5     		b	.L1681
 8646              	.L1538:
 8647 05bc 2068     		ldr	r0, [r4]
 8648 05be 0621     		movs	r1, #6
 8649 05c0 404A     		ldr	r2, .L1696+16
 8650 05c2 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8651 05c6 B9E5     		b	.L1680
 8652              	.L1589:
 8653 05c8 2068     		ldr	r0, [r4]
 8654 05ca FFF7FEFF 		bl	_ZN8Platform14SetDriversIdleEv
 8655 05ce B5E5     		b	.L1680
 8656              	.L1562:
 8657 05d0 3074     		strb	r0, [r6, #16]
 8658 05d2 0646     		mov	r6, r0
 8659 05d4 A5E5     		b	.L1561
 8660              	.L1692:
 8661 05d6 0023     		movs	r3, #0
 8662 05d8 84F80433 		strb	r3, [r4, #772]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 153


 8663 05dc 2068     		ldr	r0, [r4]
 8664 05de FFF7FEFF 		bl	_ZN8Platform14UpdateFirmwareEv
 8665 05e2 B8E7     		b	.L1586
 8666              	.L1693:
 8667 05e4 2846     		mov	r0, r5
 8668 05e6 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8669 05ea 0028     		cmp	r0, #0
 8670 05ec CADC     		bgt	.L1588
 8671 05ee BFE7     		b	.L1587
 8672              	.L1690:
 8673 05f0 2068     		ldr	r0, [r4]
 8674 05f2 4146     		mov	r1, r8
 8675 05f4 3A46     		mov	r2, r7
 8676 05f6 FFF7FEFF 		bl	_ZNK8Platform22IsAccessibleProbePointEff
 8677 05fa 0028     		cmp	r0, #0
 8678 05fc 3FF42FAF 		beq	.L1593
 8679 0600 0026     		movs	r6, #0
 8680 0602 2068     		ldr	r0, [r4]
 8681 0604 4FF0FF33 		mov	r3, #-1
 8682 0608 84F8D660 		strb	r6, [r4, #214]
 8683 060c D0F89010 		ldr	r1, [r0, #144]
 8684 0610 A4F8D460 		strh	r6, [r4, #212]	@ movhi
 8685 0614 C4F8C830 		str	r3, [r4, #200]
 8686 0618 84F8D860 		strb	r6, [r4, #216]
 8687 061c FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersEl
 8688 0620 0346     		mov	r3, r0
 8689 0622 5968     		ldr	r1, [r3, #4]	@ float
 8690 0624 4046     		mov	r0, r8
 8691 0626 FFF7FEFF 		bl	__aeabi_fsub
 8692 062a 2368     		ldr	r3, [r4]
 8693 062c C4F88800 		str	r0, [r4, #136]	@ float
 8694 0630 D3F89010 		ldr	r1, [r3, #144]
 8695 0634 1846     		mov	r0, r3
 8696 0636 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersEl
 8697 063a 0346     		mov	r3, r0
 8698 063c 9968     		ldr	r1, [r3, #8]	@ float
 8699 063e 3846     		mov	r0, r7
 8700 0640 FFF7FEFF 		bl	__aeabi_fsub
 8701 0644 C4F88C00 		str	r0, [r4, #140]	@ float
 8702 0648 2068     		ldr	r0, [r4]
 8703 064a FFF7FEFF 		bl	_ZN8Platform23GetZProbeStartingHeightEv
 8704 064e C4F89000 		str	r0, [r4, #144]	@ float
 8705 0652 2068     		ldr	r0, [r4]
 8706 0654 FFF7FEFF 		bl	_ZNK8Platform20GetZProbeTravelSpeedEv
 8707 0658 0123     		movs	r3, #1
 8708 065a C4F8C400 		str	r0, [r4, #196]	@ float
 8709 065e C4F8CC60 		str	r6, [r4, #204]
 8710 0662 C4F8DC30 		str	r3, [r4, #220]
 8711 0666 AB68     		ldr	r3, [r5, #8]
 8712 0668 1A7C     		ldrb	r2, [r3, #16]	@ zero_extendqisi2
 8713 066a 0132     		adds	r2, r2, #1
 8714 066c 1A74     		strb	r2, [r3, #16]
 8715 066e 58E5     		b	.L1561
 8716              	.L1688:
 8717 0670 AB68     		ldr	r3, [r5, #8]
 8718 0672 1149     		ldr	r1, .L1696+4
 8719 0674 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 154


 8720 0676 496A     		ldr	r1, [r1, #36]
 8721 0678 C2F3C002 		ubfx	r2, r2, #3, #1
 8722 067c 2046     		mov	r0, r4
 8723 067e FFF7FEFF 		bl	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb
 8724 0682 0646     		mov	r6, r0
 8725 0684 0028     		cmp	r0, #0
 8726 0686 7FF41BAE 		bne	.L1572
 8727 068a 2046     		mov	r0, r4
 8728 068c 2946     		mov	r1, r5
 8729 068e 06AA     		add	r2, sp, #24
 8730 0690 FFF7FEFF 		bl	_ZNK6GCodes14CheckReportDueER11GCodeBufferR9StringRef
 8731 0694 0123     		movs	r3, #1
 8732 0696 84F87D33 		strb	r3, [r4, #893]
 8733 069a 42E5     		b	.L1561
 8734              	.L1597:
 8735 069c D0F80014 		ldr	r1, [r0, #1024]
 8736 06a0 0132     		adds	r2, r2, #1
 8737 06a2 8A42     		cmp	r2, r1
 8738 06a4 02D0     		beq	.L1676
 8739 06a6 C4F89C22 		str	r2, [r4, #668]
 8740 06aa 31E5     		b	.L1599
 8741              	.L1676:
 8742 06ac 0133     		adds	r3, r3, #1
 8743 06ae C4F8A032 		str	r3, [r4, #672]
 8744 06b2 2DE5     		b	.L1599
 8745              	.L1697:
 8746              		.align	2
 8747              	.L1696:
 8748 06b4 1C0A0000 		.word	.LC104
 8749 06b8 00000000 		.word	reprap
 8750 06bc 00007A44 		.word	1148846080
 8751 06c0 680A0000 		.word	.LC106
 8752 06c4 E40A0000 		.word	.LC109
 8753              	.L1596:
 8754 06c8 2068     		ldr	r0, [r4]
 8755 06ca D4F89060 		ldr	r6, [r4, #144]	@ float
 8756 06ce FFF7FEFF 		bl	_ZN8Platform16ZProbeStopHeightEv
 8757 06d2 3C4B     		ldr	r3, .L1698
 8758 06d4 0146     		mov	r1, r0
 8759 06d6 9B68     		ldr	r3, [r3, #8]
 8760 06d8 3046     		mov	r0, r6
 8761 06da 03F57A78 		add	r8, r3, #1000
 8762 06de FFF7FEFF 		bl	__aeabi_fsub
 8763 06e2 D4F8A062 		ldr	r6, [r4, #672]
 8764 06e6 D4F89C72 		ldr	r7, [r4, #668]
 8765 06ea 3246     		mov	r2, r6
 8766 06ec 0346     		mov	r3, r0
 8767 06ee 3946     		mov	r1, r7
 8768 06f0 4046     		mov	r0, r8
 8769 06f2 FFF7FEFF 		bl	_ZN9HeightMap13SetGridHeightEjjf
 8770 06f6 0026     		movs	r6, #0
 8771 06f8 4FF0FF33 		mov	r3, #-1
 8772 06fc C4F8C830 		str	r3, [r4, #200]
 8773 0700 84F8D660 		strb	r6, [r4, #214]
 8774 0704 A4F8D460 		strh	r6, [r4, #212]	@ movhi
 8775 0708 84F8D860 		strb	r6, [r4, #216]
 8776 070c 2068     		ldr	r0, [r4]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 155


 8777 070e FFF7FEFF 		bl	_ZN8Platform23GetZProbeStartingHeightEv
 8778 0712 C4F89000 		str	r0, [r4, #144]	@ float
 8779 0716 2068     		ldr	r0, [r4]
 8780 0718 FFF7FEFF 		bl	_ZNK8Platform20GetZProbeTravelSpeedEv
 8781 071c 0123     		movs	r3, #1
 8782 071e C4F8C400 		str	r0, [r4, #196]	@ float
 8783 0722 C4F8CC60 		str	r6, [r4, #204]
 8784 0726 C4F8DC30 		str	r3, [r4, #220]
 8785 072a AB68     		ldr	r3, [r5, #8]
 8786 072c 1922     		movs	r2, #25
 8787 072e 1A74     		strb	r2, [r3, #16]
 8788 0730 F7E4     		b	.L1561
 8789              	.L1689:
 8790 0732 3846     		mov	r0, r7
 8791 0734 D4F83C11 		ldr	r1, [r4, #316]	@ float
 8792 0738 FFF7FEFF 		bl	__aeabi_fcmpgt
 8793 073c 0028     		cmp	r0, #0
 8794 073e 3FF420AE 		beq	.L1580
 8795 0742 C4F89070 		str	r7, [r4, #144]	@ float
 8796 0746 AB68     		ldr	r3, [r5, #8]
 8797 0748 0F22     		movs	r2, #15
 8798 074a 1A74     		strb	r2, [r3, #16]
 8799 074c 1BE6     		b	.L1612
 8800              	.L1691:
 8801 074e 06A8     		add	r0, sp, #24
 8802 0750 1D49     		ldr	r1, .L1698+4
 8803 0752 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8804 0756 AB68     		ldr	r3, [r5, #8]
 8805 0758 0022     		movs	r2, #0
 8806 075a 1A74     		strb	r2, [r3, #16]
 8807 075c E1E4     		b	.L1561
 8808              	.L1686:
 8809 075e 00F57A70 		add	r0, r0, #1000
 8810 0762 04A9     		add	r1, sp, #16
 8811 0764 05AA     		add	r2, sp, #20
 8812 0766 FFF7FEFF 		bl	_ZNK9HeightMap13GetStatisticsERfS0_
 8813 076a 0328     		cmp	r0, #3
 8814 076c 0646     		mov	r6, r0
 8815 076e 23D9     		bls	.L1602
 8816 0770 0498     		ldr	r0, [sp, #16]	@ float
 8817 0772 FFF7FEFF 		bl	__aeabi_f2d
 8818 0776 CDE90001 		strd	r0, [sp]
 8819 077a 0598     		ldr	r0, [sp, #20]	@ float
 8820 077c FFF7FEFF 		bl	__aeabi_f2d
 8821 0780 3246     		mov	r2, r6
 8822 0782 CDE90201 		strd	r0, [sp, #8]
 8823 0786 1149     		ldr	r1, .L1698+8
 8824 0788 06A8     		add	r0, sp, #24
 8825 078a FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8826 078e 2946     		mov	r1, r5
 8827 0790 06AA     		add	r2, sp, #24
 8828 0792 2046     		mov	r0, r4
 8829 0794 FFF7FEFF 		bl	_ZNK6GCodes13SaveHeightMapER11GCodeBufferR9StringRef
 8830 0798 0646     		mov	r6, r0
 8831 079a B868     		ldr	r0, [r7, #8]
 8832 079c 00F57A70 		add	r0, r0, #1000
 8833 07a0 FFF7FEFF 		bl	_ZN9HeightMap18ExtrapolateMissingEv
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 156


 8834 07a4 B868     		ldr	r0, [r7, #8]
 8835 07a6 0121     		movs	r1, #1
 8836 07a8 00F57A70 		add	r0, r0, #1000
 8837 07ac FFF7FEFF 		bl	_ZN9HeightMap12UseHeightMapEb
 8838              	.L1603:
 8839 07b0 AB68     		ldr	r3, [r5, #8]
 8840 07b2 0022     		movs	r2, #0
 8841 07b4 1A74     		strb	r2, [r3, #16]
 8842 07b6 B4E4     		b	.L1561
 8843              	.L1602:
 8844 07b8 06A8     		add	r0, sp, #24
 8845 07ba 0549     		ldr	r1, .L1698+12
 8846 07bc FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8847 07c0 0126     		movs	r6, #1
 8848 07c2 F5E7     		b	.L1603
 8849              	.L1699:
 8850              		.align	2
 8851              	.L1698:
 8852 07c4 00000000 		.word	reprap
 8853 07c8 300A0000 		.word	.LC105
 8854 07cc 980A0000 		.word	.LC107
 8855 07d0 CC0A0000 		.word	.LC108
 8856              		.size	_ZN6GCodes4SpinEv, .-_ZN6GCodes4SpinEv
 8857              		.section	.text._ZN6GCodes17LongArrayToBitMapEPKlj,"ax",%progbits
 8858              		.align	2
 8859              		.global	_ZN6GCodes17LongArrayToBitMapEPKlj
 8860              		.thumb
 8861              		.thumb_func
 8862              		.type	_ZN6GCodes17LongArrayToBitMapEPKlj, %function
 8863              	_ZN6GCodes17LongArrayToBitMapEPKlj:
 8864              		@ args = 0, pretend = 0, frame = 0
 8865              		@ frame_needed = 0, uses_anonymous_args = 0
 8866              		@ link register save eliminated.
 8867 0000 10B4     		push	{r4}
 8868 0002 81B1     		cbz	r1, .L1704
 8869 0004 0346     		mov	r3, r0
 8870 0006 00EB8101 		add	r1, r0, r1, lsl #2
 8871 000a 0124     		movs	r4, #1
 8872 000c 0020     		movs	r0, #0
 8873              	.L1703:
 8874 000e 53F8042B 		ldr	r2, [r3], #4
 8875 0012 1F2A     		cmp	r2, #31
 8876 0014 9CBF     		itt	ls
 8877 0016 04FA02F2 		lslls	r2, r4, r2
 8878 001a 1043     		orrls	r0, r0, r2
 8879 001c 8B42     		cmp	r3, r1
 8880 001e F6D1     		bne	.L1703
 8881              	.L1701:
 8882 0020 5DF8044B 		ldr	r4, [sp], #4
 8883 0024 7047     		bx	lr
 8884              	.L1704:
 8885 0026 0846     		mov	r0, r1
 8886 0028 FAE7     		b	.L1701
 8887              		.size	_ZN6GCodes17LongArrayToBitMapEPKlj, .-_ZN6GCodes17LongArrayToBitMapEPKlj
 8888              		.weak	_ZTV10GCodeInput
 8889 002a 00BF     		.section	.rodata._ZTV10GCodeInput,"aG",%progbits,_ZTV10GCodeInput,comdat
 8890              		.align	3
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 157


 8891              		.type	_ZTV10GCodeInput, %object
 8892              		.size	_ZTV10GCodeInput, 20
 8893              	_ZTV10GCodeInput:
 8894 0000 00000000 		.word	0
 8895 0004 00000000 		.word	0
 8896 0008 00000000 		.word	__cxa_pure_virtual
 8897 000c 00000000 		.word	__cxa_pure_virtual
 8898 0010 00000000 		.word	__cxa_pure_virtual
 8899              		.global	HEATER_FAULT_G
 8900              		.global	DefaultHeightMapFile
 8901              		.global	HOME_DELTA_G
 8902              		.global	HOME_ALL_G
 8903              		.global	HomingFileNames
 8904              		.global	PAUSE_G
 8905              		.global	_ZN6GCodes11axisLettersE
 8906 0014 00000000 		.section	.data.HOME_ALL_G,"aw",%progbits
 8907              		.align	2
 8908              		.set	.LANCHOR2,. + 0
 8909              		.type	HOME_ALL_G, %object
 8910              		.size	HOME_ALL_G, 4
 8911              	HOME_ALL_G:
 8912 0000 F00B0000 		.word	.LC121
 8913              		.section	.rodata._ZN6GCodes11axisLettersE,"a",%progbits
 8914              		.align	2
 8915              		.set	.LANCHOR0,. + 0
 8916              		.type	_ZN6GCodes11axisLettersE, %object
 8917              		.size	_ZN6GCodes11axisLettersE, 6
 8918              	_ZN6GCodes11axisLettersE:
 8919 0000 58       		.byte	88
 8920 0001 59       		.byte	89
 8921 0002 5A       		.byte	90
 8922 0003 55       		.byte	85
 8923 0004 56       		.byte	86
 8924 0005 57       		.byte	87
 8925 0006 0000     		.section	.data.HomingFileNames,"aw",%progbits
 8926              		.align	2
 8927              		.set	.LANCHOR6,. + 0
 8928              		.type	HomingFileNames, %object
 8929              		.size	HomingFileNames, 24
 8930              	HomingFileNames:
 8931 0000 FC0B0000 		.word	.LC122
 8932 0004 040C0000 		.word	.LC123
 8933 0008 0C0C0000 		.word	.LC124
 8934 000c 140C0000 		.word	.LC125
 8935 0010 1C0C0000 		.word	.LC126
 8936 0014 240C0000 		.word	.LC127
 8937              		.section	.data.HEATER_FAULT_G,"aw",%progbits
 8938              		.align	2
 8939              		.set	.LANCHOR4,. + 0
 8940              		.type	HEATER_FAULT_G, %object
 8941              		.size	HEATER_FAULT_G, 4
 8942              	HEATER_FAULT_G:
 8943 0000 C80B0000 		.word	.LC118
 8944              		.section	.rodata.str1.4,"aMS",%progbits,1
 8945              		.align	2
 8946              	.LC0:
 8947 0000 50757368 		.ascii	"Push(): stack overflow!\012\000"
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 158


 8947      28293A20 
 8947      73746163 
 8947      6B206F76 
 8947      6572666C 
 8948 0019 000000   		.space	3
 8949              	.LC1:
 8950 001c 68747470 		.ascii	"http\000"
 8950      00
 8951 0021 000000   		.space	3
 8952              	.LC2:
 8953 0024 74656C6E 		.ascii	"telnet\000"
 8953      657400
 8954 002b 00       		.space	1
 8955              	.LC3:
 8956 002c 66696C65 		.ascii	"file\000"
 8956      00
 8957 0031 000000   		.space	3
 8958              	.LC4:
 8959 0034 73657269 		.ascii	"serial\000"
 8959      616C00
 8960 003b 00       		.space	1
 8961              	.LC5:
 8962 003c 61757800 		.ascii	"aux\000"
 8963              	.LC6:
 8964 0040 6461656D 		.ascii	"daemon\000"
 8964      6F6E00
 8965 0047 00       		.space	1
 8966              	.LC7:
 8967 0048 71756575 		.ascii	"queue\000"
 8967      6500
 8968 004e 0000     		.space	2
 8969              	.LC8:
 8970 0050 47436F64 		.ascii	"GCodes class exited.\012\000"
 8970      65732063 
 8970      6C617373 
 8970      20657869 
 8970      7465642E 
 8971 0066 0000     		.space	2
 8972              	.LC9:
 8973 0068 3C212D2D 		.ascii	"<!-- **EoF** -->\000"
 8973      202A2A45 
 8973      6F462A2A 
 8973      202D2D3E 
 8973      00
 8974 0079 000000   		.space	3
 8975              	.LC10:
 8976 007c 456D6572 		.ascii	"Emergency Stop! Reset the controller to continue.\000"
 8976      67656E63 
 8976      79205374 
 8976      6F702120 
 8976      52657365 
 8977 00ae 0000     		.space	2
 8978              	.LC11:
 8979 00b0 50617573 		.ascii	"Paused print, file offset=%u\012\000"
 8979      65642070 
 8979      72696E74 
 8979      2C206669 
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 159


 8979      6C65206F 
 8980 00ce 0000     		.space	2
 8981              	.LC12:
 8982 00d0 6E756C6C 		.ascii	"null\000"
 8982      00
 8983 00d5 000000   		.space	3
 8984              	.LC13:
 8985 00d8 3D3D3D20 		.ascii	"=== GCodes ===\012\000"
 8985      47436F64 
 8985      6573203D 
 8985      3D3D0A00 
 8986              	.LC14:
 8987 00e8 5365676D 		.ascii	"Segments left: %u\012\000"
 8987      656E7473 
 8987      206C6566 
 8987      743A2025 
 8987      750A00
 8988 00fb 00       		.space	1
 8989              	.LC15:
 8990 00fc 53746163 		.ascii	"Stack records: %u allocated, %u in use\012\000"
 8990      6B207265 
 8990      636F7264 
 8990      733A2025 
 8990      7520616C 
 8991              	.LC16:
 8992 0124 4D6F7665 		.ascii	"Movement lock held by %s\012\000"
 8992      6D656E74 
 8992      206C6F63 
 8992      6B206865 
 8992      6C642062 
 8993 013e 0000     		.space	2
 8994              	.LC17:
 8995 0140 506F7028 		.ascii	"Pop(): stack underflow!\012\000"
 8995      293A2073 
 8995      7461636B 
 8995      20756E64 
 8995      6572666C 
 8996 0159 000000   		.space	3
 8997              	.LC18:
 8998 015c 57726F6E 		.ascii	"Wrong number of extruder drives for the selected to"
 8998      67206E75 
 8998      6D626572 
 8998      206F6620 
 8998      65787472 
 8999 018f 6F6C3A20 		.ascii	"ol: %s\012\000"
 8999      25730A00 
 9000 0197 00       		.space	1
 9001              	.LC19:
 9002 0198 41747465 		.ascii	"Attempt to move the motors of a delta printer to ab"
 9002      6D707420 
 9002      746F206D 
 9002      6F766520 
 9002      74686520 
 9003 01cb 736F6C75 		.ascii	"solute positions\000"
 9003      74652070 
 9003      6F736974 
 9003      696F6E73 
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 160


 9003      00
 9004              	.LC20:
 9005 01dc 303A2F73 		.ascii	"0:/sys/\000"
 9005      79732F00 
 9006              	.LC21:
 9007 01e4 4D616372 		.ascii	"Macro file %s not found.\012\000"
 9007      6F206669 
 9007      6C652025 
 9007      73206E6F 
 9007      7420666F 
 9008 01fe 0000     		.space	2
 9009              	.LC22:
 9010 0200 303A2F73 		.ascii	"0:/sys/trigger%u.g\000"
 9010      79732F74 
 9010      72696767 
 9010      65722575 
 9010      2E6700
 9011 0213 00       		.space	1
 9012              	.LC23:
 9013 0214 4D757374 		.ascii	"Must home all other axes before homing Z\000"
 9013      20686F6D 
 9013      6520616C 
 9013      6C206F74 
 9013      68657220 
 9014 023d 000000   		.space	3
 9015              	.LC24:
 9016 0240 54687265 		.ascii	"Threshold %d, trigger height %.2f, offsets X%.1f Y%"
 9016      73686F6C 
 9016      64202564 
 9016      2C207472 
 9016      69676765 
 9017 0273 2E316600 		.ascii	".1f\000"
 9018 0277 00       		.space	1
 9019              	.LC25:
 9020 0278 25642028 		.ascii	"%d (%d)\000"
 9020      25642900 
 9021              	.LC26:
 9022 0280 25642028 		.ascii	"%d (%d, %d)\000"
 9022      25642C20 
 9022      25642900 
 9023              	.LC27:
 9024 028c 256400   		.ascii	"%d\000"
 9025 028f 00       		.space	1
 9026              	.LC28:
 9027 0290 57726F6E 		.ascii	"Wrong number of X values in M577, need 2\000"
 9027      67206E75 
 9027      6D626572 
 9027      206F6620 
 9027      58207661 
 9028 02b9 000000   		.space	3
 9029              	.LC29:
 9030 02bc 57726F6E 		.ascii	"Wrong number of Y values in M577, need 2\000"
 9030      67206E75 
 9030      6D626572 
 9030      206F6620 
 9030      59207661 
 9031 02e5 000000   		.space	3
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 161


 9032              	.LC30:
 9033 02e8 47726964 		.ascii	"Grid: \000"
 9033      3A2000
 9034 02ef 00       		.space	1
 9035              	.LC31:
 9036 02f0 47726964 		.ascii	"Grid is not defined\000"
 9036      20697320 
 9036      6E6F7420 
 9036      64656669 
 9036      6E656400 
 9037              	.LC32:
 9038 0304 73706563 		.ascii	"specify both or neither of X and Y in M577\000"
 9038      69667920 
 9038      626F7468 
 9038      206F7220 
 9038      6E656974 
 9039 032f 00       		.space	1
 9040              	.LC33:
 9041 0330 73706563 		.ascii	"specify at least radius or X,Y ranges in M577\000"
 9041      69667920 
 9041      6174206C 
 9041      65617374 
 9041      20726164 
 9042 035e 0000     		.space	2
 9043              	.LC34:
 9044 0360 4D353737 		.ascii	"M577 radius must be positive unless X and Y are spe"
 9044      20726164 
 9044      69757320 
 9044      6D757374 
 9044      20626520 
 9045 0393 63696669 		.ascii	"cified\000"
 9045      656400
 9046 039a 0000     		.space	2
 9047              	.LC35:
 9048 039c 62616420 		.ascii	"bad grid definition: \000"
 9048      67726964 
 9048      20646566 
 9048      696E6974 
 9048      696F6E3A 
 9049 03b2 0000     		.space	2
 9050              	.LC36:
 9051 03b4 4E6F2076 		.ascii	"No valid grid defined for G29 bed probing\000"
 9051      616C6964 
 9051      20677269 
 9051      64206465 
 9051      66696E65 
 9052 03de 0000     		.space	2
 9053              	.LC37:
 9054 03e0 4D757374 		.ascii	"Must home printer before G29 bed probing\000"
 9054      20686F6D 
 9054      65207072 
 9054      696E7465 
 9054      72206265 
 9055 0409 000000   		.space	3
 9056              	.LC38:
 9057 040c 48656967 		.ascii	"Height map file %s not found\000"
 9057      6874206D 
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 162


 9057      61702066 
 9057      696C6520 
 9057      2573206E 
 9058 0429 000000   		.space	3
 9059              	.LC39:
 9060 042c 4661696C 		.ascii	"Failed to load height map from file %s: \000"
 9060      65642074 
 9060      6F206C6F 
 9060      61642068 
 9060      65696768 
 9061 0455 000000   		.space	3
 9062              	.LC40:
 9063 0458 4E6F2068 		.ascii	"No height map file name provided\000"
 9063      65696768 
 9063      74206D61 
 9063      70206669 
 9063      6C65206E 
 9064 0479 000000   		.space	3
 9065              	.LC41:
 9066 047c 4661696C 		.ascii	"Failed to create height map file %s\000"
 9066      65642074 
 9066      6F206372 
 9066      65617465 
 9066      20686569 
 9067              	.LC42:
 9068 04a0 4661696C 		.ascii	"Failed to save height map to file %s\000"
 9068      65642074 
 9068      6F207361 
 9068      76652068 
 9068      65696768 
 9069 04c5 000000   		.space	3
 9070              	.LC43:
 9071 04c8 48656967 		.ascii	"Height map saved to file %s\000"
 9071      6874206D 
 9071      61702073 
 9071      61766564 
 9071      20746F20 
 9072              	.LC44:
 9073 04e4 25633A20 		.ascii	"%c: %.3f \000"
 9073      252E3366 
 9073      2000
 9074 04ee 0000     		.space	2
 9075              	.LC45:
 9076 04f0 4525753A 		.ascii	"E%u: %.1f \000"
 9076      20252E31 
 9076      662000
 9077 04fb 00       		.space	1
 9078              	.LC46:
 9079 04fc 20436F75 		.ascii	" Count\000"
 9079      6E7400
 9080 0503 00       		.space	1
 9081              	.LC47:
 9082 0504 20256400 		.ascii	" %d\000"
 9083              	.LC48:
 9084 0508 43616E27 		.ascii	"Can't open GCode file \"%s\" for writing.\012\000"
 9084      74206F70 
 9084      656E2047 
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 163


 9084      436F6465 
 9084      2066696C 
 9085 0531 000000   		.space	3
 9086              	.LC49:
 9087 0534 303A2F67 		.ascii	"0:/gcodes/\000"
 9087      636F6465 
 9087      732F00
 9088 053f 00       		.space	1
 9089              	.LC50:
 9090 0540 436F756C 		.ascii	"Could not delete file \"%s\"\012\000"
 9090      64206E6F 
 9090      74206465 
 9090      6C657465 
 9090      2066696C 
 9091              	.LC51:
 9092 055c 41747465 		.ascii	"Attempt to set/report offsets and temperatures for "
 9092      6D707420 
 9092      746F2073 
 9092      65742F72 
 9092      65706F72 
 9093 058f 6E6F6E2D 		.ascii	"non-existent tool: %d\000"
 9093      65786973 
 9093      74656E74 
 9093      20746F6F 
 9093      6C3A2025 
 9094 05a5 000000   		.space	3
 9095              	.LC52:
 9096 05a8 546F6F6C 		.ascii	"Tool %d offsets:\000"
 9096      20256420 
 9096      6F666673 
 9096      6574733A 
 9096      00
 9097 05b9 000000   		.space	3
 9098              	.LC53:
 9099 05bc 20256325 		.ascii	" %c%.2f\000"
 9099      2E326600 
 9100              	.LC54:
 9101 05c4 2C206163 		.ascii	", active/standby temperature(s):\000"
 9101      74697665 
 9101      2F737461 
 9101      6E646279 
 9101      2074656D 
 9102 05e5 000000   		.space	3
 9103              	.LC55:
 9104 05e8 20252E31 		.ascii	" %.1f/%.1f\000"
 9104      662F252E 
 9104      316600
 9105 05f3 00       		.space	1
 9106              	.LC56:
 9107 05f4 546F6F6C 		.ascii	"Tool number must be positive!\012\000"
 9107      206E756D 
 9107      62657220 
 9107      6D757374 
 9107      20626520 
 9108 0613 00       		.space	1
 9109              	.LC57:
 9110 0614 44756420 		.ascii	"Dud IP address: %s\012\000"
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 164


 9110      49502061 
 9110      64647265 
 9110      73733A20 
 9110      25730A00 
 9111              	.LC58:
 9112 0628 53657474 		.ascii	"Setting ether parameter - dud code.\012\000"
 9112      696E6720 
 9112      65746865 
 9112      72207061 
 9112      72616D65 
 9113 064d 000000   		.space	3
 9114              	.LC59:
 9115 0650 44756420 		.ascii	"Dud MAC address: %s\012\000"
 9115      4D414320 
 9115      61646472 
 9115      6573733A 
 9115      2025730A 
 9116 0665 000000   		.space	3
 9117              	.LC60:
 9118 0668 6F6B00   		.ascii	"ok\000"
 9119 066b 00       		.space	1
 9120              	.LC61:
 9121 066c 72732000 		.ascii	"rs \000"
 9122              	.LC62:
 9123 0670 74656163 		.ascii	"teacup\000"
 9123      757000
 9124 0677 00       		.space	1
 9125              	.LC63:
 9126 0678 73707269 		.ascii	"sprinter\000"
 9126      6E746572 
 9126      00
 9127 0681 000000   		.space	3
 9128              	.LC64:
 9129 0684 72657065 		.ascii	"repetier\000"
 9129      74696572 
 9129      00
 9130 068d 000000   		.space	3
 9131              	.LC65:
 9132 0690 756E6B6E 		.ascii	"unknown\000"
 9132      6F776E00 
 9133              	.LC66:
 9134 0698 4572726F 		.ascii	"Error: \000"
 9134      723A2000 
 9135              	.LC67:
 9136 06a0 0A00     		.ascii	"\012\000"
 9137 06a2 0000     		.space	2
 9138              	.LC68:
 9139 06a4 456D756C 		.ascii	"Emulation of %s is not yet supported.\012\000"
 9139      6174696F 
 9139      6E206F66 
 9139      20257320 
 9139      6973206E 
 9140 06cb 00       		.space	1
 9141              	.LC69:
 9142 06cc 2000     		.ascii	" \000"
 9143 06ce 0000     		.space	2
 9144              	.LC70:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 165


 9145 06d0 446F6E65 		.ascii	"Done saving file.\000"
 9145      20736176 
 9145      696E6720 
 9145      66696C65 
 9145      2E00
 9146 06e2 0000     		.space	2
 9147              	.LC71:
 9148 06e4 00       		.ascii	"\000"
 9149 06e5 000000   		.space	3
 9150              	.LC72:
 9151 06e8 41747465 		.ascii	"Attempt to write to a null file.\012\000"
 9151      6D707420 
 9151      746F2077 
 9151      72697465 
 9151      20746F20 
 9152 070a 0000     		.space	2
 9153              	.LC73:
 9154 070c 25640A00 		.ascii	"%d\012\000"
 9155              	.LC74:
 9156 0710 42656769 		.ascii	"Begin file list\012\000"
 9156      6E206669 
 9156      6C65206C 
 9156      6973740A 
 9156      00
 9157 0721 000000   		.space	3
 9158              	.LC75:
 9159 0724 456E6420 		.ascii	"End file list\012\000"
 9159      66696C65 
 9159      206C6973 
 9159      740A00
 9160 0733 00       		.space	1
 9161              	.LC76:
 9162 0734 48656174 		.ascii	"Heater %d is in bang-bang mode\000"
 9162      65722025 
 9162      64206973 
 9162      20696E20 
 9162      62616E67 
 9163 0753 00       		.space	1
 9164              	.LC77:
 9165 0754 48656174 		.ascii	"Heater %d P:%.1f I:%.3f D:%.1f\000"
 9165      65722025 
 9165      6420503A 
 9165      252E3166 
 9165      20493A25 
 9166 0773 00       		.space	1
 9167              	.LC78:
 9168 0774 48656174 		.ascii	"Heater %d uses model-derived PID parameters. Use M3"
 9168      65722025 
 9168      64207573 
 9168      6573206D 
 9168      6F64656C 
 9169 07a7 30372048 		.ascii	"07 H%d to view them\000"
 9169      25642074 
 9169      6F207669 
 9169      65772074 
 9169      68656D00 
 9170 07bb 00       		.space	1
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 166


 9171              	.LC79:
 9172 07bc 54686572 		.ascii	"Thermistor number %d is out of range\012\000"
 9172      6D697374 
 9172      6F72206E 
 9172      756D6265 
 9172      72202564 
 9173 07e2 0000     		.space	2
 9174              	.LC80:
 9175 07e4 543A252E 		.ascii	"T:%.1f B:%.1f C:%.2e R:%.1f L:%d H:%d X:%d\000"
 9175      31662042 
 9175      3A252E31 
 9175      6620433A 
 9175      252E3265 
 9176 080f 00       		.space	1
 9177              	.LC81:
 9178 0810 48656174 		.ascii	"Heater number %d is out of range\012\000"
 9178      6572206E 
 9178      756D6265 
 9178      72202564 
 9178      20697320 
 9179 0832 0000     		.space	2
 9180              	.LC82:
 9181 0834 53657474 		.ascii	"Setting temperature: no tool selected.\012\000"
 9181      696E6720 
 9181      74656D70 
 9181      65726174 
 9181      7572653A 
 9182              	.LC83:
 9183 085c 47436F64 		.ascii	"GCode file \"%s\" not found\012\000"
 9183      65206669 
 9183      6C652022 
 9183      25732220 
 9183      6E6F7420 
 9184 0877 00       		.space	1
 9185              	.LC84:
 9186 0878 4572726F 		.ascii	"Error: Z probe already triggered at start of probin"
 9186      723A205A 
 9186      2070726F 
 9186      62652061 
 9186      6C726561 
 9187 08ab 67206D6F 		.ascii	"g move\012\000"
 9187      76650A00 
 9188 08b3 00       		.space	1
 9189              	.LC85:
 9190 08b4 4572726F 		.ascii	"Error: Z probe was not triggered during probing mov"
 9190      723A205A 
 9190      2070726F 
 9190      62652077 
 9190      6173206E 
 9191 08e7 650A00   		.ascii	"e\012\000"
 9192 08ea 0000     		.space	2
 9193              	.LC86:
 9194 08ec 53746F70 		.ascii	"Stopped at height %.3f mm\000"
 9194      70656420 
 9194      61742068 
 9194      65696768 
 9194      7420252E 
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 167


 9195 0906 0000     		.space	2
 9196              	.LC87:
 9197 0908 5A207072 		.ascii	"Z probe point index out of range.\012\000"
 9197      6F626520 
 9197      706F696E 
 9197      7420696E 
 9197      64657820 
 9198 092b 00       		.space	1
 9199              	.LC88:
 9200 092c 4D757374 		.ascii	"Must home before bed probing\000"
 9200      20686F6D 
 9200      65206265 
 9200      666F7265 
 9200      20626564 
 9201 0949 000000   		.space	3
 9202              	.LC89:
 9203 094c 6E6F7420 		.ascii	"not stopped\000"
 9203      73746F70 
 9203      70656400 
 9204              	.LC90:
 9205 0958 286E6F6E 		.ascii	"(none)\000"
 9205      652900
 9206 095f 00       		.space	1
 9207              	.LC91:
 9208 0960 45256400 		.ascii	"E%d\000"
 9209              	.LC92:
 9210 0964 303A00   		.ascii	"0:\000"
 9211 0967 00       		.space	1
 9212              	.LC93:
 9213 0968 257800   		.ascii	"%x\000"
 9214 096b 00       		.space	1
 9215              	.LC94:
 9216 096c 4661696C 		.ascii	"Failed to create file %s\000"
 9216      65642074 
 9216      6F206372 
 9216      65617465 
 9216      2066696C 
 9217 0985 000000   		.space	3
 9218              	.LC95:
 9219 0988 3B205468 		.ascii	"; This is a system-generated file - do not edit\012"
 9219      69732069 
 9219      73206120 
 9219      73797374 
 9219      656D2D67 
 9220 09b8 00       		.ascii	"\000"
 9221 09b9 000000   		.space	3
 9222              	.LC96:
 9223 09bc 4661696C 		.ascii	"Failed to write file %s\000"
 9223      65642074 
 9223      6F207772 
 9223      69746520 
 9223      66696C65 
 9224              	.LC97:
 9225 09d4 543A00   		.ascii	"T:\000"
 9226 09d7 00       		.space	1
 9227              	.LC98:
 9228 09d8 252E3166 		.ascii	"%.1f \000"
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 168


 9228      2000
 9229 09de 0000     		.space	2
 9230              	.LC99:
 9231 09e0 423A252E 		.ascii	"B:%.1f\000"
 9231      316600
 9232 09e7 00       		.space	1
 9233              	.LC100:
 9234 09e8 423A302E 		.ascii	"B:0.0\000"
 9234      3000
 9235 09ee 0000     		.space	2
 9236              	.LC101:
 9237 09f0 20433A25 		.ascii	" C:%.1f\000"
 9237      2E316600 
 9238              	.LC102:
 9239 09f8 446F6E65 		.ascii	"Done printing file\000"
 9239      20707269 
 9239      6E74696E 
 9239      67206669 
 9239      6C6500
 9240 0a0b 00       		.space	1
 9241              	.LC103:
 9242 0a0c 5072696E 		.ascii	"Printing paused\000"
 9242      74696E67 
 9242      20706175 
 9242      73656400 
 9243              	.LC104:
 9244 0a1c 5072696E 		.ascii	"Printing resumed\000"
 9244      74696E67 
 9244      20726573 
 9244      756D6564 
 9244      00
 9245 0a2d 000000   		.space	3
 9246              	.LC105:
 9247 0a30 5A207072 		.ascii	"Z probe already triggered before probing move start"
 9247      6F626520 
 9247      616C7265 
 9247      61647920 
 9247      74726967 
 9248 0a63 656400   		.ascii	"ed\000"
 9249 0a66 0000     		.space	2
 9250              	.LC106:
 9251 0a68 5A207072 		.ascii	"Z probe was not triggered during probing move\000"
 9251      6F626520 
 9251      77617320 
 9251      6E6F7420 
 9251      74726967 
 9252 0a96 0000     		.space	2
 9253              	.LC107:
 9254 0a98 25752070 		.ascii	"%u points probed, mean error %.3f, deviation %.3f\012"
 9254      6F696E74 
 9254      73207072 
 9254      6F626564 
 9254      2C206D65 
 9255 0aca 00       		.ascii	"\000"
 9256 0acb 00       		.space	1
 9257              	.LC108:
 9258 0acc 546F6F20 		.ascii	"Too few points probed\000"
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 169


 9258      66657720 
 9258      706F696E 
 9258      74732070 
 9258      726F6265 
 9259 0ae2 0000     		.space	2
 9260              	.LC109:
 9261 0ae4 4572726F 		.ascii	"Error: undefined GCodeState\012\000"
 9261      723A2075 
 9261      6E646566 
 9261      696E6564 
 9261      2047436F 
 9262 0b01 000000   		.space	3
 9263              	.LC110:
 9264 0b04 41747465 		.ascii	"Attempting to extrude with no tool selected.\012\000"
 9264      6D707469 
 9264      6E672074 
 9264      6F206578 
 9264      74727564 
 9265 0b32 0000     		.space	2
 9266              	.LC111:
 9267 0b34 41747465 		.ascii	"Attempt to move the head of a delta printer before "
 9267      6D707420 
 9267      746F206D 
 9267      6F766520 
 9267      74686520 
 9268 0b67 686F6D69 		.ascii	"homing the towers\012\000"
 9268      6E672074 
 9268      68652074 
 9268      6F776572 
 9268      730A00
 9269 0b7a 0000     		.space	2
 9270              	.LC112:
 9271 0b7c 74667265 		.ascii	"tfree%d.g\000"
 9271      6525642E 
 9271      6700
 9272 0b86 0000     		.space	2
 9273              	.LC113:
 9274 0b88 74707265 		.ascii	"tpre%d.g\000"
 9274      25642E67 
 9274      00
 9275 0b91 000000   		.space	3
 9276              	.LC114:
 9277 0b94 74706F73 		.ascii	"tpost%d.g\000"
 9277      7425642E 
 9277      6700
 9278 0b9e 0000     		.space	2
 9279              	.LC115:
 9280 0ba0 6174206D 		.ascii	"at min stop\000"
 9280      696E2073 
 9280      746F7000 
 9281              	.LC116:
 9282 0bac 6174206D 		.ascii	"at max stop\000"
 9282      61782073 
 9282      746F7000 
 9283              	.LC117:
 9284 0bb8 6E656172 		.ascii	"near min stop\000"
 9284      206D696E 
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 170


 9284      2073746F 
 9284      7000
 9285 0bc6 0000     		.space	2
 9286              	.LC118:
 9287 0bc8 68656174 		.ascii	"heatfault.g\000"
 9287      6661756C 
 9287      742E6700 
 9288              	.LC119:
 9289 0bd4 68656967 		.ascii	"heightmap.csv\000"
 9289      68746D61 
 9289      702E6373 
 9289      7600
 9290 0be2 0000     		.space	2
 9291              	.LC120:
 9292 0be4 686F6D65 		.ascii	"homedelta.g\000"
 9292      64656C74 
 9292      612E6700 
 9293              	.LC121:
 9294 0bf0 686F6D65 		.ascii	"homeall.g\000"
 9294      616C6C2E 
 9294      6700
 9295 0bfa 0000     		.space	2
 9296              	.LC122:
 9297 0bfc 686F6D65 		.ascii	"homex.g\000"
 9297      782E6700 
 9298              	.LC123:
 9299 0c04 686F6D65 		.ascii	"homey.g\000"
 9299      792E6700 
 9300              	.LC124:
 9301 0c0c 686F6D65 		.ascii	"homez.g\000"
 9301      7A2E6700 
 9302              	.LC125:
 9303 0c14 686F6D65 		.ascii	"homeu.g\000"
 9303      752E6700 
 9304              	.LC126:
 9305 0c1c 686F6D65 		.ascii	"homev.g\000"
 9305      762E6700 
 9306              	.LC127:
 9307 0c24 686F6D65 		.ascii	"homew.g\000"
 9307      772E6700 
 9308              	.LC128:
 9309 0c2c 70617573 		.ascii	"pause.g\000"
 9309      652E6700 
 9310              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 9311              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 9312              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 9313              	_ZL28cpu_irq_prev_interrupt_state:
 9314 0000 00       		.space	1
 9315              		.section	.data.HOME_DELTA_G,"aw",%progbits
 9316              		.align	2
 9317              		.set	.LANCHOR1,. + 0
 9318              		.type	HOME_DELTA_G, %object
 9319              		.size	HOME_DELTA_G, 4
 9320              	HOME_DELTA_G:
 9321 0000 E40B0000 		.word	.LC120
 9322              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 9323              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1W78zc.s 			page 171


 9324              		.type	_ZL32cpu_irq_critical_section_counter, %object
 9325              		.size	_ZL32cpu_irq_critical_section_counter, 4
 9326              	_ZL32cpu_irq_critical_section_counter:
 9327 0000 00000000 		.space	4
 9328              		.section	.data.DefaultHeightMapFile,"aw",%progbits
 9329              		.align	2
 9330              		.set	.LANCHOR3,. + 0
 9331              		.type	DefaultHeightMapFile, %object
 9332              		.size	DefaultHeightMapFile, 4
 9333              	DefaultHeightMapFile:
 9334 0000 D40B0000 		.word	.LC119
 9335              		.section	.rodata.CSWTCH.525,"a",%progbits
 9336              		.align	2
 9337              		.set	.LANCHOR5,. + 0
 9338              		.type	CSWTCH.525, %object
 9339              		.size	CSWTCH.525, 12
 9340              	CSWTCH.525:
 9341 0000 A00B0000 		.word	.LC115
 9342 0004 AC0B0000 		.word	.LC116
 9343 0008 B80B0000 		.word	.LC117
 9344              		.section	.data.PAUSE_G,"aw",%progbits
 9345              		.align	2
 9346              		.set	.LANCHOR7,. + 0
 9347              		.type	PAUSE_G, %object
 9348              		.size	PAUSE_G, 4
 9349              	PAUSE_G:
 9350 0000 2C0C0000 		.word	.LC128
 9351              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
