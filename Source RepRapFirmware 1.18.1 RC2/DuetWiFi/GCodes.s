ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 1


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
  15              		.file	"GCodes.cpp"
  16              		.section	.text._ZN6GCodes4PushER11GCodeBuffer.part.43,"ax",%progbits
  17              		.align	2
  18              		.thumb
  19              		.thumb_func
  20              		.type	_ZN6GCodes4PushER11GCodeBuffer.part.43, %function
  21              	_ZN6GCodes4PushER11GCodeBuffer.part.43:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 08B5     		push	{r3, lr}
  25 0002 0068     		ldr	r0, [r0]
  26 0004 024A     		ldr	r2, .L2
  27 0006 0621     		movs	r1, #6
  28 0008 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
  29 000c 08BD     		pop	{r3, pc}
  30              	.L3:
  31 000e 00BF     		.align	2
  32              	.L2:
  33 0010 00000000 		.word	.LC0
  34              		.size	_ZN6GCodes4PushER11GCodeBuffer.part.43, .-_ZN6GCodes4PushER11GCodeBuffer.part.43
  35              		.section	.text._ZN6GCodes12RestorePoint4InitEv,"ax",%progbits
  36              		.align	2
  37              		.global	_ZN6GCodes12RestorePoint4InitEv
  38              		.thumb
  39              		.thumb_func
  40              		.type	_ZN6GCodes12RestorePoint4InitEv, %function
  41              	_ZN6GCodes12RestorePoint4InitEv:
  42              		@ args = 0, pretend = 0, frame = 0
  43              		@ frame_needed = 0, uses_anonymous_args = 0
  44              		@ link register save eliminated.
  45 0000 0021     		movs	r1, #0
  46 0002 0246     		mov	r2, r0
  47 0004 0A23     		movs	r3, #10
  48              	.L6:
  49 0006 013B     		subs	r3, r3, #1
  50 0008 42F8041B 		str	r1, [r2], #4	@ float
  51 000c FBD1     		bne	.L6
  52 000e 014B     		ldr	r3, .L9
  53 0010 8362     		str	r3, [r0, #40]	@ float
  54 0012 7047     		bx	lr
  55              	.L10:
  56              		.align	2
  57              	.L9:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 2


  58 0014 01004842 		.word	1112014849
  59              		.size	_ZN6GCodes12RestorePoint4InitEv, .-_ZN6GCodes12RestorePoint4InitEv
  60              		.section	.text._ZN6GCodesC2EP8PlatformP9Webserver,"ax",%progbits
  61              		.align	2
  62              		.global	_ZN6GCodesC2EP8PlatformP9Webserver
  63              		.thumb
  64              		.thumb_func
  65              		.type	_ZN6GCodesC2EP8PlatformP9Webserver, %function
  66              	_ZN6GCodesC2EP8PlatformP9Webserver:
  67              		@ args = 0, pretend = 0, frame = 0
  68              		@ frame_needed = 0, uses_anonymous_args = 0
  69 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  70 0004 0546     		mov	r5, r0
  71 0006 00F11C09 		add	r9, r0, #28
  72 000a 00F12008 		add	r8, r0, #32
  73 000e 00F1240C 		add	ip, r0, #36
  74 0012 00F1280E 		add	lr, r0, #40
  75 0016 00F12C07 		add	r7, r0, #44
  76 001a 00F13006 		add	r6, r0, #48
  77 001e 00F13404 		add	r4, r0, #52
  78 0022 0023     		movs	r3, #0
  79 0024 85E80600 		stmia	r5, {r1, r2}
  80 0028 85F8A030 		strb	r3, [r5, #160]
  81 002c 0020     		movs	r0, #0
  82 002e C5F83890 		str	r9, [r5, #56]
  83 0032 C5F83C80 		str	r8, [r5, #60]
  84 0036 C5F840C0 		str	ip, [r5, #64]
  85 003a C5F844E0 		str	lr, [r5, #68]
  86 003e AF64     		str	r7, [r5, #72]
  87 0040 EE64     		str	r6, [r5, #76]
  88 0042 2C65     		str	r4, [r5, #80]
  89 0044 05F59672 		add	r2, r5, #300
  90 0048 0A23     		movs	r3, #10
  91              	.L13:
  92 004a 013B     		subs	r3, r3, #1
  93 004c 42F8040B 		str	r0, [r2], #4	@ float
  94 0050 FBD1     		bne	.L13
  95 0052 544B     		ldr	r3, .L21
  96 0054 C5F85431 		str	r3, [r5, #340]	@ float
  97 0058 0021     		movs	r1, #0
  98 005a 05F5AC72 		add	r2, r5, #344
  99 005e 0A23     		movs	r3, #10
 100              	.L15:
 101 0060 013B     		subs	r3, r3, #1
 102 0062 42F8041B 		str	r1, [r2], #4	@ float
 103 0066 FBD1     		bne	.L15
 104 0068 4E4B     		ldr	r3, .L21
 105 006a C5F88031 		str	r3, [r5, #384]	@ float
 106 006e 0022     		movs	r2, #0
 107 0070 05F5C273 		add	r3, r5, #388
 108 0074 0A24     		movs	r4, #10
 109              	.L17:
 110 0076 013C     		subs	r4, r4, #1
 111 0078 43F8042B 		str	r2, [r3], #4	@ float
 112 007c FBD1     		bne	.L17
 113 007e 494B     		ldr	r3, .L21
 114 0080 C5F8AC31 		str	r3, [r5, #428]	@ float
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 3


 115 0084 C5F87442 		str	r4, [r5, #628]
 116 0088 85F85D43 		strb	r4, [r5, #861]
 117 008c C5F86443 		str	r4, [r5, #868]
 118 0090 C5F8D043 		str	r4, [r5, #976]
 119 0094 4FF48C70 		mov	r0, #280
 120 0098 FFF7FEFF 		bl	_Znwj
 121 009c 0121     		movs	r1, #1
 122 009e 0646     		mov	r6, r0
 123 00a0 FFF7FEFF 		bl	_ZN17RegularGCodeInputC1Eb
 124 00a4 AE60     		str	r6, [r5, #8]
 125 00a6 4FF48C70 		mov	r0, #280
 126 00aa FFF7FEFF 		bl	_Znwj
 127 00ae 0121     		movs	r1, #1
 128 00b0 0646     		mov	r6, r0
 129 00b2 FFF7FEFF 		bl	_ZN17RegularGCodeInputC1Eb
 130 00b6 EE60     		str	r6, [r5, #12]
 131 00b8 4FF48E70 		mov	r0, #284
 132 00bc FFF7FEFF 		bl	_Znwj
 133 00c0 2146     		mov	r1, r4
 134 00c2 0646     		mov	r6, r0
 135 00c4 FFF7FEFF 		bl	_ZN17RegularGCodeInputC2Eb
 136 00c8 374B     		ldr	r3, .L21+4
 137 00ca C6F81841 		str	r4, [r6, #280]
 138 00ce 3360     		str	r3, [r6]
 139 00d0 0820     		movs	r0, #8
 140 00d2 2E61     		str	r6, [r5, #16]
 141 00d4 FFF7FEFF 		bl	_Znwj
 142 00d8 344E     		ldr	r6, .L21+8
 143 00da 354A     		ldr	r2, .L21+12
 144 00dc 4260     		str	r2, [r0, #4]
 145 00de 0346     		mov	r3, r0
 146 00e0 0660     		str	r6, [r0]
 147 00e2 6B61     		str	r3, [r5, #20]
 148 00e4 0820     		movs	r0, #8
 149 00e6 FFF7FEFF 		bl	_Znwj
 150 00ea 324A     		ldr	r2, .L21+16
 151 00ec 0660     		str	r6, [r0]
 152 00ee 0346     		mov	r3, r0
 153 00f0 4260     		str	r2, [r0, #4]
 154 00f2 AB61     		str	r3, [r5, #24]
 155 00f4 9020     		movs	r0, #144
 156 00f6 FFF7FEFF 		bl	_Znwj
 157 00fa 2F49     		ldr	r1, .L21+20
 158 00fc 0422     		movs	r2, #4
 159 00fe 2346     		mov	r3, r4
 160 0100 0646     		mov	r6, r0
 161 0102 FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 162 0106 AB6B     		ldr	r3, [r5, #56]
 163 0108 9020     		movs	r0, #144
 164 010a 1E60     		str	r6, [r3]
 165 010c FFF7FEFF 		bl	_Znwj
 166 0110 2A49     		ldr	r1, .L21+24
 167 0112 0522     		movs	r2, #5
 168 0114 0123     		movs	r3, #1
 169 0116 0646     		mov	r6, r0
 170 0118 FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 171 011c EB6B     		ldr	r3, [r5, #60]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 4


 172 011e 9020     		movs	r0, #144
 173 0120 1E60     		str	r6, [r3]
 174 0122 FFF7FEFF 		bl	_Znwj
 175 0126 2649     		ldr	r1, .L21+28
 176 0128 0622     		movs	r2, #6
 177 012a 0123     		movs	r3, #1
 178 012c 0646     		mov	r6, r0
 179 012e FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 180 0132 2B6C     		ldr	r3, [r5, #64]
 181 0134 9020     		movs	r0, #144
 182 0136 1E60     		str	r6, [r3]
 183 0138 FFF7FEFF 		bl	_Znwj
 184 013c 2149     		ldr	r1, .L21+32
 185 013e 0222     		movs	r2, #2
 186 0140 0123     		movs	r3, #1
 187 0142 0646     		mov	r6, r0
 188 0144 FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 189 0148 6B6C     		ldr	r3, [r5, #68]
 190 014a 9020     		movs	r0, #144
 191 014c 1E60     		str	r6, [r3]
 192 014e FFF7FEFF 		bl	_Znwj
 193 0152 2246     		mov	r2, r4
 194 0154 1C49     		ldr	r1, .L21+36
 195 0156 2346     		mov	r3, r4
 196 0158 0646     		mov	r6, r0
 197 015a FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 198 015e AB6C     		ldr	r3, [r5, #72]
 199 0160 9020     		movs	r0, #144
 200 0162 1E60     		str	r6, [r3]
 201 0164 FFF7FEFF 		bl	_Znwj
 202 0168 1849     		ldr	r1, .L21+40
 203 016a 0622     		movs	r2, #6
 204 016c 2346     		mov	r3, r4
 205 016e 0646     		mov	r6, r0
 206 0170 FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 207 0174 EB6C     		ldr	r3, [r5, #76]
 208 0176 9020     		movs	r0, #144
 209 0178 1E60     		str	r6, [r3]
 210 017a FFF7FEFF 		bl	_Znwj
 211 017e 1449     		ldr	r1, .L21+44
 212 0180 0622     		movs	r2, #6
 213 0182 2346     		mov	r3, r4
 214 0184 0646     		mov	r6, r0
 215 0186 FFF7FEFF 		bl	_ZN11GCodeBufferC1EPKc11MessageTypeb
 216 018a 2B6D     		ldr	r3, [r5, #80]
 217 018c 0820     		movs	r0, #8
 218 018e 1E60     		str	r6, [r3]
 219 0190 FFF7FEFF 		bl	_Znwj
 220 0194 0446     		mov	r4, r0
 221 0196 FFF7FEFF 		bl	_ZN10GCodeQueueC1Ev
 222 019a C5F86043 		str	r4, [r5, #864]
 223 019e 2846     		mov	r0, r5
 224 01a0 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 225              	.L22:
 226              		.align	2
 227              	.L21:
 228 01a4 01004842 		.word	1112014849
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 5


 229 01a8 08000000 		.word	_ZTV14FileGCodeInput+8
 230 01ac 08000000 		.word	_ZTV16StreamGCodeInput+8
 231 01b0 00000000 		.word	SerialUSB
 232 01b4 00000000 		.word	Serial
 233 01b8 1C000000 		.word	.LC1
 234 01bc 24000000 		.word	.LC2
 235 01c0 2C000000 		.word	.LC3
 236 01c4 34000000 		.word	.LC4
 237 01c8 3C000000 		.word	.LC5
 238 01cc 40000000 		.word	.LC6
 239 01d0 48000000 		.word	.LC7
 240              		.size	_ZN6GCodesC2EP8PlatformP9Webserver, .-_ZN6GCodesC2EP8PlatformP9Webserver
 241              		.global	_ZN6GCodesC1EP8PlatformP9Webserver
 242              		.thumb_set _ZN6GCodesC1EP8PlatformP9Webserver,_ZN6GCodesC2EP8PlatformP9Webserver
 243              		.section	.text._ZN6GCodes4ExitEv,"ax",%progbits
 244              		.align	2
 245              		.global	_ZN6GCodes4ExitEv
 246              		.thumb
 247              		.thumb_func
 248              		.type	_ZN6GCodes4ExitEv, %function
 249              	_ZN6GCodes4ExitEv:
 250              		@ args = 0, pretend = 0, frame = 0
 251              		@ frame_needed = 0, uses_anonymous_args = 0
 252 0000 10B5     		push	{r4, lr}
 253 0002 0221     		movs	r1, #2
 254 0004 0446     		mov	r4, r0
 255 0006 044A     		ldr	r2, .L24
 256 0008 0068     		ldr	r0, [r0]
 257 000a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 258 000e 0023     		movs	r3, #0
 259 0010 84F8A030 		strb	r3, [r4, #160]
 260 0014 10BD     		pop	{r4, pc}
 261              	.L25:
 262 0016 00BF     		.align	2
 263              	.L24:
 264 0018 50000000 		.word	.LC8
 265              		.size	_ZN6GCodes4ExitEv, .-_ZN6GCodes4ExitEv
 266              		.section	.text._ZN6GCodes5ResetEv,"ax",%progbits
 267              		.align	2
 268              		.global	_ZN6GCodes5ResetEv
 269              		.thumb
 270              		.thumb_func
 271              		.type	_ZN6GCodes5ResetEv, %function
 272              	_ZN6GCodes5ResetEv:
 273              		@ args = 0, pretend = 0, frame = 0
 274              		@ frame_needed = 0, uses_anonymous_args = 0
 275 0000 836B     		ldr	r3, [r0, #56]
 276 0002 70B5     		push	{r4, r5, r6, lr}
 277 0004 0446     		mov	r4, r0
 278 0006 1868     		ldr	r0, [r3]
 279 0008 FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 280 000c E36B     		ldr	r3, [r4, #60]
 281 000e 1868     		ldr	r0, [r3]
 282 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 283 0014 236C     		ldr	r3, [r4, #64]
 284 0016 1868     		ldr	r0, [r3]
 285 0018 FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 6


 286 001c 636C     		ldr	r3, [r4, #68]
 287 001e 1868     		ldr	r0, [r3]
 288 0020 FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 289 0024 A36C     		ldr	r3, [r4, #72]
 290 0026 1868     		ldr	r0, [r3]
 291 0028 FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 292 002c A26C     		ldr	r2, [r4, #72]
 293 002e E36C     		ldr	r3, [r4, #76]
 294 0030 1268     		ldr	r2, [r2]
 295 0032 1868     		ldr	r0, [r3]
 296 0034 0123     		movs	r3, #1
 297 0036 82F87D30 		strb	r3, [r2, #125]
 298 003a FFF7FEFF 		bl	_ZN11GCodeBuffer5ResetEv
 299 003e D4F87402 		ldr	r0, [r4, #628]
 300 0042 0025     		movs	r5, #0
 301 0044 6565     		str	r5, [r4, #84]
 302 0046 18B1     		cbz	r0, .L27
 303 0048 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 304 004c C4F87452 		str	r5, [r4, #628]
 305              	.L27:
 306 0050 0023     		movs	r3, #0
 307 0052 3E4A     		ldr	r2, .L49
 308 0054 C4F8C022 		str	r2, [r4, #704]	@ float
 309 0058 C4F87832 		str	r3, [r4, #632]
 310 005c C4F89032 		str	r3, [r4, #656]
 311 0060 84F89432 		strb	r3, [r4, #660]
 312 0064 84F89532 		strb	r3, [r4, #661]
 313 0068 04F53172 		add	r2, r4, #708
 314 006c 0723     		movs	r3, #7
 315 006e 4FF07E51 		mov	r1, #1065353216
 316              	.L29:
 317 0072 013B     		subs	r3, r3, #1
 318 0074 42F8041B 		str	r1, [r2], #4	@ float
 319 0078 FBD1     		bne	.L29
 320 007a 0021     		movs	r1, #0
 321 007c 04F1A402 		add	r2, r4, #164
 322 0080 0A23     		movs	r3, #10
 323              	.L31:
 324 0082 013B     		subs	r3, r3, #1
 325 0084 42F8041B 		str	r1, [r2], #4	@ float
 326 0088 FBD1     		bne	.L31
 327 008a 0123     		movs	r3, #1
 328 008c C4F8EC30 		str	r3, [r4, #236]
 329 0090 0021     		movs	r1, #0
 330 0092 04F5AC72 		add	r2, r4, #344
 331 0096 0A23     		movs	r3, #10
 332              	.L33:
 333 0098 013B     		subs	r3, r3, #1
 334 009a 42F8041B 		str	r1, [r2], #4	@ float
 335 009e FBD1     		bne	.L33
 336 00a0 2B4B     		ldr	r3, .L49+4
 337 00a2 C4F88031 		str	r3, [r4, #384]	@ float
 338 00a6 0020     		movs	r0, #0
 339 00a8 04F5C272 		add	r2, r4, #388
 340 00ac 0A23     		movs	r3, #10
 341              	.L35:
 342 00ae 013B     		subs	r3, r3, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 7


 343 00b0 42F8040B 		str	r0, [r2], #4	@ float
 344 00b4 4FF00001 		mov	r1, #0
 345 00b8 F9D1     		bne	.L35
 346 00ba 254A     		ldr	r2, .L49+4
 347 00bc C4F8AC21 		str	r2, [r4, #428]	@ float
 348 00c0 C4F8FC30 		str	r3, [r4, #252]
 349 00c4 84F82831 		strb	r3, [r4, #296]
 350 00c8 A4F8F430 		strh	r3, [r4, #244]	@ movhi
 351 00cc 84F8F630 		strb	r3, [r4, #246]
 352 00d0 84F8F730 		strb	r3, [r4, #247]
 353 00d4 C4F8E012 		str	r1, [r4, #736]	@ float
 354 00d8 C4F8E412 		str	r1, [r4, #740]	@ float
 355 00dc 2246     		mov	r2, r4
 356 00de 0A25     		movs	r5, #10
 357              	.L37:
 358 00e0 013D     		subs	r5, r5, #1
 359 00e2 A2F81C33 		strh	r3, [r2, #796]	@ movhi
 360 00e6 A2F81A33 		strh	r3, [r2, #794]	@ movhi
 361 00ea 82F81E33 		strb	r3, [r2, #798]
 362 00ee 4FF00006 		mov	r6, #0	@ movhi
 363 00f2 02F10602 		add	r2, r2, #6
 364 00f6 F3D1     		bne	.L37
 365 00f8 4FF0FF33 		mov	r3, #-1
 366 00fc 0022     		movs	r2, #0
 367 00fe C4F8E830 		str	r3, [r4, #232]
 368 0102 C4F8FC22 		str	r2, [r4, #764]	@ float
 369 0106 C4F85853 		str	r5, [r4, #856]
 370 010a 84F80063 		strb	r6, [r4, #768]
 371 010e 84F8A160 		strb	r6, [r4, #161]
 372 0112 84F8A360 		strb	r6, [r4, #163]
 373 0116 2068     		ldr	r0, [r4]
 374 0118 FFF7FEFF 		bl	_ZNK8Platform19GetAllEndstopStatesEv
 375 011c 84F85C63 		strb	r6, [r4, #860]
 376 0120 A4F85603 		strh	r0, [r4, #854]	@ movhi
 377 0124 D4F86003 		ldr	r0, [r4, #864]
 378 0128 FFF7FEFF 		bl	_ZN10GCodeQueue5ClearEv
 379 012c 2B46     		mov	r3, r5
 380 012e 84F8D863 		strb	r6, [r4, #984]
 381 0132 84F8D763 		strb	r6, [r4, #983]
 382 0136 84F8D563 		strb	r6, [r4, #981]
 383 013a 84F8D663 		strb	r6, [r4, #982]
 384 013e 2946     		mov	r1, r5
 385              	.L39:
 386 0140 E218     		adds	r2, r4, r3
 387 0142 0433     		adds	r3, r3, #4
 388 0144 482B     		cmp	r3, #72
 389 0146 9165     		str	r1, [r2, #88]
 390 0148 FAD1     		bne	.L39
 391 014a 70BD     		pop	{r4, r5, r6, pc}
 392              	.L50:
 393              		.align	2
 394              	.L49:
 395 014c 8988883C 		.word	1015580809
 396 0150 01004842 		.word	1112014849
 397              		.size	_ZN6GCodes5ResetEv, .-_ZN6GCodes5ResetEv
 398              		.section	.text._ZN6GCodes4InitEv,"ax",%progbits
 399              		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 8


 400              		.global	_ZN6GCodes4InitEv
 401              		.thumb
 402              		.thumb_func
 403              		.type	_ZN6GCodes4InitEv, %function
 404              	_ZN6GCodes4InitEv:
 405              		@ args = 0, pretend = 0, frame = 0
 406              		@ frame_needed = 0, uses_anonymous_args = 0
 407 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 408 0002 0446     		mov	r4, r0
 409 0004 0725     		movs	r5, #7
 410 0006 FFF7FEFF 		bl	_ZN6GCodes5ResetEv
 411 000a 0323     		movs	r3, #3
 412 000c 0022     		movs	r2, #0
 413 000e 2D49     		ldr	r1, .L58
 414 0010 C4F8B031 		str	r3, [r4, #432]
 415 0014 4FF07E50 		mov	r0, #1065353216
 416 0018 C4F80822 		str	r2, [r4, #520]	@ float
 417 001c C4F86C02 		str	r0, [r4, #620]	@ float
 418 0020 C4F87012 		str	r1, [r4, #624]	@ float
 419 0024 C4F8B451 		str	r5, [r4, #436]
 420 0028 04F5F673 		add	r3, r4, #492
 421              	.L53:
 422 002c 013D     		subs	r5, r5, #1
 423 002e 43F81C2C 		str	r2, [r3, #-28]	@ float
 424 0032 43F8042B 		str	r2, [r3], #4	@ float
 425 0036 F9D1     		bne	.L53
 426 0038 234A     		ldr	r2, .L58+4
 427 003a C4F88822 		str	r2, [r4, #648]
 428 003e 1023     		movs	r3, #16
 429 0040 0127     		movs	r7, #1
 430 0042 84F88D32 		strb	r3, [r4, #653]
 431 0046 84F88C52 		strb	r5, [r4, #652]
 432 004a 84F86A52 		strb	r5, [r4, #618]
 433 004e 84F8A250 		strb	r5, [r4, #162]
 434 0052 84F8A070 		strb	r7, [r4, #160]
 435 0056 2068     		ldr	r0, [r4]
 436 0058 FFF7FEFF 		bl	_ZN8Platform4TimeEv
 437 005c 4FF07E53 		mov	r3, #1065353216
 438 0060 C4F8B831 		str	r3, [r4, #440]	@ float
 439 0064 C4F8BC31 		str	r3, [r4, #444]	@ float
 440 0068 C4F8C031 		str	r3, [r4, #448]	@ float
 441 006c C4F8C431 		str	r3, [r4, #452]	@ float
 442 0070 C4F8C831 		str	r3, [r4, #456]	@ float
 443 0074 C4F8CC31 		str	r3, [r4, #460]	@ float
 444 0078 0026     		movs	r6, #0
 445 007a C4F8CC03 		str	r0, [r4, #972]	@ float
 446 007e 84F89672 		strb	r7, [r4, #662]
 447 0082 C4F89852 		str	r5, [r4, #664]
 448 0086 04F52772 		add	r2, r4, #668
 449 008a 0823     		movs	r3, #8
 450              	.L55:
 451 008c 013B     		subs	r3, r3, #1
 452 008e 42F8046B 		str	r6, [r2], #4	@ float
 453 0092 4FF00001 		mov	r1, #0
 454 0096 F9D1     		bne	.L55
 455 0098 FF20     		movs	r0, #255
 456 009a 0C4A     		ldr	r2, .L58+8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 9


 457 009c 84F8D403 		strb	r0, [r4, #980]
 458 00a0 4FF08045 		mov	r5, #1073741824
 459 00a4 C4F8BC12 		str	r1, [r4, #700]	@ float
 460 00a8 C4F80813 		str	r1, [r4, #776]	@ float
 461 00ac C4F81413 		str	r1, [r4, #788]	@ float
 462 00b0 84F81833 		strb	r3, [r4, #792]
 463 00b4 C4F81023 		str	r2, [r4, #784]	@ float
 464 00b8 C4F80C23 		str	r2, [r4, #780]	@ float
 465 00bc C4F80453 		str	r5, [r4, #772]	@ float
 466 00c0 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 467              	.L59:
 468 00c2 00BF     		.align	2
 469              	.L58:
 470 00c4 CDCC4C3E 		.word	1045220557
 471 00c8 68000000 		.word	.LC9
 472 00cc 56558541 		.word	1099257174
 473              		.size	_ZN6GCodes4InitEv, .-_ZN6GCodes4InitEv
 474              		.section	.text._ZN6GCodes17ClearBabySteppingEv,"ax",%progbits
 475              		.align	2
 476              		.global	_ZN6GCodes17ClearBabySteppingEv
 477              		.thumb
 478              		.thumb_func
 479              		.type	_ZN6GCodes17ClearBabySteppingEv, %function
 480              	_ZN6GCodes17ClearBabySteppingEv:
 481              		@ args = 0, pretend = 0, frame = 0
 482              		@ frame_needed = 0, uses_anonymous_args = 0
 483              		@ link register save eliminated.
 484 0000 0023     		movs	r3, #0
 485 0002 C0F8E032 		str	r3, [r0, #736]	@ float
 486 0006 C0F8E432 		str	r3, [r0, #740]	@ float
 487 000a 7047     		bx	lr
 488              		.size	_ZN6GCodes17ClearBabySteppingEv, .-_ZN6GCodes17ClearBabySteppingEv
 489              		.section	.text._ZNK6GCodes14DoingFileMacroEv,"ax",%progbits
 490              		.align	2
 491              		.global	_ZNK6GCodes14DoingFileMacroEv
 492              		.thumb
 493              		.thumb_func
 494              		.type	_ZNK6GCodes14DoingFileMacroEv, %function
 495              	_ZNK6GCodes14DoingFileMacroEv:
 496              		@ args = 0, pretend = 0, frame = 0
 497              		@ frame_needed = 0, uses_anonymous_args = 0
 498              		@ link register save eliminated.
 499 0000 036C     		ldr	r3, [r0, #64]
 500 0002 1868     		ldr	r0, [r3]
 501 0004 FFF7FEBF 		b	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 502              		.size	_ZNK6GCodes14DoingFileMacroEv, .-_ZNK6GCodes14DoingFileMacroEv
 503              		.section	.text._ZNK6GCodes21FractionOfFilePrintedEv,"ax",%progbits
 504              		.align	2
 505              		.global	_ZNK6GCodes21FractionOfFilePrintedEv
 506              		.thumb
 507              		.thumb_func
 508              		.type	_ZNK6GCodes21FractionOfFilePrintedEv, %function
 509              	_ZNK6GCodes21FractionOfFilePrintedEv:
 510              		@ args = 0, pretend = 0, frame = 0
 511              		@ frame_needed = 0, uses_anonymous_args = 0
 512 0000 08B5     		push	{r3, lr}
 513 0002 036C     		ldr	r3, [r0, #64]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 10


 514 0004 1868     		ldr	r0, [r3]
 515 0006 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 516 000a 8068     		ldr	r0, [r0, #8]
 517 000c 18B1     		cbz	r0, .L63
 518 000e BDE80840 		pop	{r3, lr}
 519 0012 FFF7FEBF 		b	_ZNK9FileStore12FractionReadEv
 520              	.L63:
 521 0016 0148     		ldr	r0, .L64
 522 0018 08BD     		pop	{r3, pc}
 523              	.L65:
 524 001a 00BF     		.align	2
 525              	.L64:
 526 001c 000080BF 		.word	-1082130432
 527              		.size	_ZNK6GCodes21FractionOfFilePrintedEv, .-_ZNK6GCodes21FractionOfFilePrintedEv
 528              		.section	.text._ZNK6GCodes12IsDaemonBusyEv,"ax",%progbits
 529              		.align	2
 530              		.global	_ZNK6GCodes12IsDaemonBusyEv
 531              		.thumb
 532              		.thumb_func
 533              		.type	_ZNK6GCodes12IsDaemonBusyEv, %function
 534              	_ZNK6GCodes12IsDaemonBusyEv:
 535              		@ args = 0, pretend = 0, frame = 0
 536              		@ frame_needed = 0, uses_anonymous_args = 0
 537              		@ link register save eliminated.
 538 0000 C36C     		ldr	r3, [r0, #76]
 539 0002 1B68     		ldr	r3, [r3]
 540 0004 9B68     		ldr	r3, [r3, #8]
 541 0006 9868     		ldr	r0, [r3, #8]
 542 0008 0030     		adds	r0, r0, #0
 543 000a 18BF     		it	ne
 544 000c 0120     		movne	r0, #1
 545 000e 7047     		bx	lr
 546              		.size	_ZNK6GCodes12IsDaemonBusyEv, .-_ZNK6GCodes12IsDaemonBusyEv
 547              		.section	.text._ZN6GCodes21CopyConfigFinalValuesER11GCodeBuffer,"ax",%progbits
 548              		.align	2
 549              		.global	_ZN6GCodes21CopyConfigFinalValuesER11GCodeBuffer
 550              		.thumb
 551              		.thumb_func
 552              		.type	_ZN6GCodes21CopyConfigFinalValuesER11GCodeBuffer, %function
 553              	_ZN6GCodes21CopyConfigFinalValuesER11GCodeBuffer:
 554              		@ args = 0, pretend = 0, frame = 0
 555              		@ frame_needed = 0, uses_anonymous_args = 0
 556              		@ link register save eliminated.
 557 0000 F0B4     		push	{r4, r5, r6, r7}
 558 0002 0022     		movs	r2, #0
 559              	.L69:
 560 0004 8318     		adds	r3, r0, r2
 561 0006 8C68     		ldr	r4, [r1, #8]
 562 0008 DB69     		ldr	r3, [r3, #28]
 563 000a 667C     		ldrb	r6, [r4, #17]	@ zero_extendqisi2
 564 000c 9B68     		ldr	r3, [r3, #8]
 565 000e 6768     		ldr	r7, [r4, #4]	@ float
 566 0010 5D7C     		ldrb	r5, [r3, #17]	@ zero_extendqisi2
 567 0012 66F30005 		bfi	r5, r6, #0, #1
 568 0016 5D74     		strb	r5, [r3, #17]
 569 0018 657C     		ldrb	r5, [r4, #17]	@ zero_extendqisi2
 570 001a 5C7C     		ldrb	r4, [r3, #17]	@ zero_extendqisi2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 11


 571 001c 5F60     		str	r7, [r3, #4]	@ float
 572 001e C5F34005 		ubfx	r5, r5, #1, #1
 573 0022 0432     		adds	r2, r2, #4
 574 0024 65F34104 		bfi	r4, r5, #1, #1
 575 0028 1C2A     		cmp	r2, #28
 576 002a 5C74     		strb	r4, [r3, #17]
 577 002c EAD1     		bne	.L69
 578 002e F0BC     		pop	{r4, r5, r6, r7}
 579 0030 7047     		bx	lr
 580              		.size	_ZN6GCodes21CopyConfigFinalValuesER11GCodeBuffer, .-_ZN6GCodes21CopyConfigFinalValuesER11GCo
 581 0032 00BF     		.section	.text._ZN6GCodes15DoEmergencyStopEv,"ax",%progbits
 582              		.align	2
 583              		.global	_ZN6GCodes15DoEmergencyStopEv
 584              		.thumb
 585              		.thumb_func
 586              		.type	_ZN6GCodes15DoEmergencyStopEv, %function
 587              	_ZN6GCodes15DoEmergencyStopEv:
 588              		@ args = 0, pretend = 0, frame = 0
 589              		@ frame_needed = 0, uses_anonymous_args = 0
 590 0000 10B5     		push	{r4, lr}
 591 0002 0446     		mov	r4, r0
 592 0004 0648     		ldr	r0, .L72
 593 0006 FFF7FEFF 		bl	_ZN6RepRap13EmergencyStopEv
 594 000a 2046     		mov	r0, r4
 595 000c FFF7FEFF 		bl	_ZN6GCodes5ResetEv
 596 0010 2068     		ldr	r0, [r4]
 597 0012 044A     		ldr	r2, .L72+4
 598 0014 0621     		movs	r1, #6
 599 0016 BDE81040 		pop	{r4, lr}
 600 001a FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 601              	.L73:
 602 001e 00BF     		.align	2
 603              	.L72:
 604 0020 00000000 		.word	reprap
 605 0024 7C000000 		.word	.LC10
 606              		.size	_ZN6GCodes15DoEmergencyStopEv, .-_ZN6GCodes15DoEmergencyStopEv
 607              		.section	.text._ZN6GCodes7DoPauseER11GCodeBuffer,"ax",%progbits
 608              		.align	2
 609              		.global	_ZN6GCodes7DoPauseER11GCodeBuffer
 610              		.thumb
 611              		.thumb_func
 612              		.type	_ZN6GCodes7DoPauseER11GCodeBuffer, %function
 613              	_ZN6GCodes7DoPauseER11GCodeBuffer:
 614              		@ args = 0, pretend = 0, frame = 0
 615              		@ frame_needed = 0, uses_anonymous_args = 0
 616 0000 036C     		ldr	r3, [r0, #64]
 617 0002 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 618 0006 1C68     		ldr	r4, [r3]
 619 0008 8C42     		cmp	r4, r1
 620 000a 0546     		mov	r5, r0
 621 000c 0F46     		mov	r7, r1
 622 000e 78D0     		beq	.L107
 623 0010 A368     		ldr	r3, [r4, #8]
 624 0012 504E     		ldr	r6, .L109
 625 0014 5B68     		ldr	r3, [r3, #4]	@ float
 626 0016 C0F88031 		str	r3, [r0, #384]	@ float
 627 001a 3046     		mov	r0, r6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 12


 628 001c B468     		ldr	r4, [r6, #8]
 629 001e FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 630 0022 05F5AC71 		add	r1, r5, #344
 631 0026 0346     		mov	r3, r0
 632 0028 05F5C072 		add	r2, r5, #384
 633 002c 2046     		mov	r0, r4
 634 002e FFF7FEFF 		bl	_ZN4Move10PausePrintEPfRfm
 635 0032 2B6C     		ldr	r3, [r5, #64]
 636 0034 1B68     		ldr	r3, [r3]
 637 0036 B0F1FF3F 		cmp	r0, #-1
 638 003a 8046     		mov	r8, r0
 639 003c 9B68     		ldr	r3, [r3, #8]
 640 003e 04D0     		beq	.L84
 641 0040 9868     		ldr	r0, [r3, #8]
 642 0042 10B1     		cbz	r0, .L84
 643 0044 4146     		mov	r1, r8
 644 0046 FFF7FEFF 		bl	_ZN9FileStore4SeekEm
 645              	.L84:
 646 004a 2869     		ldr	r0, [r5, #16]
 647 004c 0368     		ldr	r3, [r0]
 648 004e 1B68     		ldr	r3, [r3]
 649 0050 9847     		blx	r3
 650 0052 D5F86003 		ldr	r0, [r5, #864]
 651 0056 FFF7FEFF 		bl	_ZN10GCodeQueue12PurgeEntriesEv
 652 005a D5F8FC30 		ldr	r3, [r5, #252]
 653 005e 7BBB     		cbnz	r3, .L86
 654 0060 D5F8B021 		ldr	r2, [r5, #432]
 655              	.L87:
 656 0064 092A     		cmp	r2, #9
 657 0066 13D8     		bhi	.L93
 658 0068 02F15604 		add	r4, r2, #86
 659 006c 05F5FC73 		add	r3, r5, #504
 660 0070 A3EB8203 		sub	r3, r3, r2, lsl #2
 661 0074 05EB8404 		add	r4, r5, r4, lsl #2
 662 0078 05F5E872 		add	r2, r5, #464
 663              	.L94:
 664 007c B2EC017A 		fldmias	r2!, {s14}
 665 0080 D4ED007A 		flds	s15, [r4]
 666 0084 77EE677A 		fsubs	s15, s14, s15
 667 0088 9A42     		cmp	r2, r3
 668 008a E4EC017A 		fstmias	r4!, {s15}
 669 008e F5D1     		bne	.L94
 670              	.L93:
 671 0090 B6F84030 		ldrh	r3, [r6, #64]
 672 0094 1B07     		lsls	r3, r3, #28
 673 0096 56D4     		bmi	.L108
 674              	.L81:
 675 0098 05F52776 		add	r6, r5, #668
 676 009c 0024     		movs	r4, #0
 677              	.L83:
 678 009e 2146     		mov	r1, r4
 679 00a0 2868     		ldr	r0, [r5]
 680 00a2 FFF7FEFF 		bl	_ZNK8Platform11GetFanValueEj
 681 00a6 0134     		adds	r4, r4, #1
 682 00a8 082C     		cmp	r4, #8
 683 00aa 46F8040B 		str	r0, [r6], #4	@ float
 684 00ae F6D1     		bne	.L83
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 13


 685 00b0 BA68     		ldr	r2, [r7, #8]
 686 00b2 0C21     		movs	r1, #12
 687 00b4 0123     		movs	r3, #1
 688 00b6 1174     		strb	r1, [r2, #16]
 689 00b8 85F8A130 		strb	r3, [r5, #161]
 690 00bc BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 691              	.L86:
 692 00c0 D5F8B031 		ldr	r3, [r5, #432]
 693 00c4 092B     		cmp	r3, #9
 694 00c6 0FD8     		bhi	.L89
 695 00c8 03F15602 		add	r2, r3, #86
 696 00cc 05EB8202 		add	r2, r5, r2, lsl #2
 697 00d0 1C46     		mov	r4, r3
 698              	.L90:
 699 00d2 B2EC017A 		fldmias	r2!, {s14}
 700 00d6 52ED2E7A 		flds	s15, [r2, #-184]
 701 00da 0134     		adds	r4, r4, #1
 702 00dc 77EE277A 		fadds	s15, s14, s15
 703 00e0 0A2C     		cmp	r4, #10
 704 00e2 42ED017A 		fsts	s15, [r2, #-4]
 705 00e6 F4D1     		bne	.L90
 706              	.L89:
 707 00e8 0021     		movs	r1, #0
 708 00ea 1A46     		mov	r2, r3
 709 00ec C5F8FC10 		str	r1, [r5, #252]
 710 00f0 85F82811 		strb	r1, [r5, #296]
 711 00f4 A5F8F410 		strh	r1, [r5, #244]	@ movhi
 712 00f8 85F8F610 		strb	r1, [r5, #246]
 713 00fc 85F8F710 		strb	r1, [r5, #247]
 714 0100 B0E7     		b	.L87
 715              	.L107:
 716 0102 D0F8B021 		ldr	r2, [r0, #432]
 717 0106 62B1     		cbz	r2, .L80
 718 0108 00EB8200 		add	r0, r0, r2, lsl #2
 719 010c A430     		adds	r0, r0, #164
 720 010e 05F1A403 		add	r3, r5, #164
 721              	.L79:
 722 0112 53F8041B 		ldr	r1, [r3], #4	@ float
 723 0116 C3F8B010 		str	r1, [r3, #176]	@ float
 724 011a 8342     		cmp	r3, r0
 725 011c F9D1     		bne	.L79
 726 011e 092A     		cmp	r2, #9
 727 0120 0CD8     		bhi	.L82
 728              	.L80:
 729 0122 02F15601 		add	r1, r2, #86
 730 0126 05EB8101 		add	r1, r5, r1, lsl #2
 731 012a 05F5E873 		add	r3, r5, #464
 732              	.L77:
 733 012e 0132     		adds	r2, r2, #1
 734 0130 53F8040B 		ldr	r0, [r3], #4	@ float
 735 0134 41F8040B 		str	r0, [r1], #4	@ float
 736 0138 092A     		cmp	r2, #9
 737 013a F8D9     		bls	.L77
 738              	.L82:
 739 013c A368     		ldr	r3, [r4, #8]
 740 013e 5B68     		ldr	r3, [r3, #4]	@ float
 741 0140 C5F88031 		str	r3, [r5, #384]	@ float
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 14


 742 0144 A8E7     		b	.L81
 743              	.L108:
 744 0146 4346     		mov	r3, r8
 745 0148 2868     		ldr	r0, [r5]
 746 014a 034A     		ldr	r2, .L109+4
 747 014c 0621     		movs	r1, #6
 748 014e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 749 0152 A1E7     		b	.L81
 750              	.L110:
 751              		.align	2
 752              	.L109:
 753 0154 00000000 		.word	reprap
 754 0158 B0000000 		.word	.LC11
 755              		.size	_ZN6GCodes7DoPauseER11GCodeBuffer, .-_ZN6GCodes7DoPauseER11GCodeBuffer
 756              		.section	.text._ZN6GCodes11DiagnosticsE11MessageType,"ax",%progbits
 757              		.align	2
 758              		.global	_ZN6GCodes11DiagnosticsE11MessageType
 759              		.thumb
 760              		.thumb_func
 761              		.type	_ZN6GCodes11DiagnosticsE11MessageType, %function
 762              	_ZN6GCodes11DiagnosticsE11MessageType:
 763              		@ args = 0, pretend = 0, frame = 0
 764              		@ frame_needed = 0, uses_anonymous_args = 0
 765 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 766 0002 0546     		mov	r5, r0
 767 0004 83B0     		sub	sp, sp, #12
 768 0006 0E46     		mov	r6, r1
 769 0008 0068     		ldr	r0, [r0]
 770 000a 184A     		ldr	r2, .L116
 771 000c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 772 0010 174A     		ldr	r2, .L116+4
 773 0012 2868     		ldr	r0, [r5]
 774 0014 D5F8FC30 		ldr	r3, [r5, #252]
 775 0018 3146     		mov	r1, r6
 776 001a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 777 001e 154B     		ldr	r3, .L116+8
 778 0020 2C68     		ldr	r4, [r5]
 779 0022 1F68     		ldr	r7, [r3]
 780 0024 FFF7FEFF 		bl	_ZN17GCodeMachineState11GetNumInUseEv
 781 0028 3B46     		mov	r3, r7
 782 002a 0090     		str	r0, [sp]
 783 002c 3146     		mov	r1, r6
 784 002e 2046     		mov	r0, r4
 785 0030 114A     		ldr	r2, .L116+12
 786 0032 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 787 0036 AB6D     		ldr	r3, [r5, #88]
 788 0038 2868     		ldr	r0, [r5]
 789 003a ABB1     		cbz	r3, .L115
 790 003c 1B6F     		ldr	r3, [r3, #112]
 791              	.L112:
 792 003e 3146     		mov	r1, r6
 793 0040 0E4A     		ldr	r2, .L116+16
 794 0042 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 795 0046 0024     		movs	r4, #0
 796              	.L114:
 797 0048 2B19     		adds	r3, r5, r4
 798 004a 3146     		mov	r1, r6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 15


 799 004c D869     		ldr	r0, [r3, #28]
 800 004e 0434     		adds	r4, r4, #4
 801 0050 FFF7FEFF 		bl	_ZN11GCodeBuffer11DiagnosticsE11MessageType
 802 0054 1C2C     		cmp	r4, #28
 803 0056 F7D1     		bne	.L114
 804 0058 D5F86003 		ldr	r0, [r5, #864]
 805 005c 3146     		mov	r1, r6
 806 005e 03B0     		add	sp, sp, #12
 807              		@ sp needed
 808 0060 BDE8F040 		pop	{r4, r5, r6, r7, lr}
 809 0064 FFF7FEBF 		b	_ZN10GCodeQueue11DiagnosticsE11MessageType
 810              	.L115:
 811 0068 054B     		ldr	r3, .L116+20
 812 006a E8E7     		b	.L112
 813              	.L117:
 814              		.align	2
 815              	.L116:
 816 006c D8000000 		.word	.LC13
 817 0070 E8000000 		.word	.LC14
 818 0074 00000000 		.word	_ZN17GCodeMachineState12numAllocatedE
 819 0078 FC000000 		.word	.LC15
 820 007c 24010000 		.word	.LC16
 821 0080 D0000000 		.word	.LC12
 822              		.size	_ZN6GCodes11DiagnosticsE11MessageType, .-_ZN6GCodes11DiagnosticsE11MessageType
 823              		.section	.text._ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer,"ax",%progbits
 824              		.align	2
 825              		.global	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 826              		.thumb
 827              		.thumb_func
 828              		.type	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer, %function
 829              	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer:
 830              		@ args = 0, pretend = 0, frame = 0
 831              		@ frame_needed = 0, uses_anonymous_args = 0
 832 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 833 0002 836D     		ldr	r3, [r0, #88]
 834 0004 9942     		cmp	r1, r3
 835 0006 0446     		mov	r4, r0
 836 0008 08D0     		beq	.L119
 837 000a 0BB1     		cbz	r3, .L120
 838              	.L124:
 839 000c 0020     		movs	r0, #0
 840 000e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 841              	.L120:
 842 0010 8165     		str	r1, [r0, #88]
 843 0012 8B68     		ldr	r3, [r1, #8]
 844 0014 DA68     		ldr	r2, [r3, #12]
 845 0016 42F00102 		orr	r2, r2, #1
 846 001a DA60     		str	r2, [r3, #12]
 847              	.L119:
 848 001c D4F8FC00 		ldr	r0, [r4, #252]
 849 0020 0028     		cmp	r0, #0
 850 0022 F3D1     		bne	.L124
 851 0024 0F4B     		ldr	r3, .L130
 852 0026 9D68     		ldr	r5, [r3, #8]
 853 0028 A968     		ldr	r1, [r5, #8]
 854 002a 6A68     		ldr	r2, [r5, #4]
 855 002c 9142     		cmp	r1, r2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 16


 856 002e 00D0     		beq	.L129
 857              	.L127:
 858 0030 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 859              	.L129:
 860 0032 2E68     		ldr	r6, [r5]
 861 0034 06B1     		cbz	r6, .L123
 862 0036 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 863              	.L123:
 864 0038 1846     		mov	r0, r3
 865 003a FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 866 003e 04F1A407 		add	r7, r4, #164
 867 0042 0346     		mov	r3, r0
 868 0044 3946     		mov	r1, r7
 869 0046 2846     		mov	r0, r5
 870 0048 3246     		mov	r2, r6
 871 004a FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhm
 872 004e D4F8B021 		ldr	r2, [r4, #432]
 873 0052 3946     		mov	r1, r7
 874 0054 9200     		lsls	r2, r2, #2
 875 0056 04F1CC00 		add	r0, r4, #204
 876 005a FFF7FEFF 		bl	memcpy
 877 005e 0120     		movs	r0, #1
 878 0060 E6E7     		b	.L127
 879              	.L131:
 880 0062 00BF     		.align	2
 881              	.L130:
 882 0064 00000000 		.word	reprap
 883              		.size	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer, .-_ZN6GCodes32LockMovementAndW
 884              		.section	.text._ZN6GCodes4PushER11GCodeBuffer,"ax",%progbits
 885              		.align	2
 886              		.global	_ZN6GCodes4PushER11GCodeBuffer
 887              		.thumb
 888              		.thumb_func
 889              		.type	_ZN6GCodes4PushER11GCodeBuffer, %function
 890              	_ZN6GCodes4PushER11GCodeBuffer:
 891              		@ args = 0, pretend = 0, frame = 0
 892              		@ frame_needed = 0, uses_anonymous_args = 0
 893 0000 38B5     		push	{r3, r4, r5, lr}
 894 0002 0546     		mov	r5, r0
 895 0004 0846     		mov	r0, r1
 896 0006 FFF7FEFF 		bl	_ZN11GCodeBuffer9PushStateEv
 897 000a 0446     		mov	r4, r0
 898 000c 10B9     		cbnz	r0, .L133
 899 000e 2846     		mov	r0, r5
 900 0010 FFF7FEFF 		bl	_ZN6GCodes4PushER11GCodeBuffer.part.43
 901              	.L133:
 902 0014 2046     		mov	r0, r4
 903 0016 38BD     		pop	{r3, r4, r5, pc}
 904              		.size	_ZN6GCodes4PushER11GCodeBuffer, .-_ZN6GCodes4PushER11GCodeBuffer
 905              		.section	.text._ZN6GCodes3PopER11GCodeBuffer,"ax",%progbits
 906              		.align	2
 907              		.global	_ZN6GCodes3PopER11GCodeBuffer
 908              		.thumb
 909              		.thumb_func
 910              		.type	_ZN6GCodes3PopER11GCodeBuffer, %function
 911              	_ZN6GCodes3PopER11GCodeBuffer:
 912              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 17


 913              		@ frame_needed = 0, uses_anonymous_args = 0
 914 0000 10B5     		push	{r4, lr}
 915 0002 0446     		mov	r4, r0
 916 0004 0846     		mov	r0, r1
 917 0006 FFF7FEFF 		bl	_ZN11GCodeBuffer8PopStateEv
 918 000a 00B1     		cbz	r0, .L136
 919 000c 10BD     		pop	{r4, pc}
 920              	.L136:
 921 000e 2068     		ldr	r0, [r4]
 922 0010 024A     		ldr	r2, .L137
 923 0012 0621     		movs	r1, #6
 924 0014 BDE81040 		pop	{r4, lr}
 925 0018 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 926              	.L138:
 927              		.align	2
 928              	.L137:
 929 001c 40010000 		.word	.LC17
 930              		.size	_ZN6GCodes3PopER11GCodeBuffer, .-_ZN6GCodes3PopER11GCodeBuffer
 931              		.section	.text._ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBufferi,"ax",%progbits
 932              		.align	2
 933              		.global	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBufferi
 934              		.thumb
 935              		.thumb_func
 936              		.type	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBufferi, %function
 937              	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBufferi:
 938              		@ args = 0, pretend = 0, frame = 32
 939              		@ frame_needed = 0, uses_anonymous_args = 0
 940 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 941 0004 D0F8B041 		ldr	r4, [r0, #432]
 942 0008 092C     		cmp	r4, #9
 943 000a 89B0     		sub	sp, sp, #36
 944 000c 0646     		mov	r6, r0
 945 000e 8846     		mov	r8, r1
 946 0010 9146     		mov	r9, r2
 947 0012 08D8     		bhi	.L143
 948 0014 00EB8405 		add	r5, r0, r4, lsl #2
 949 0018 0027     		movs	r7, #0
 950 001a A435     		adds	r5, r5, #164
 951              	.L144:
 952 001c 0134     		adds	r4, r4, #1
 953 001e 0A2C     		cmp	r4, #10
 954 0020 45F8047B 		str	r7, [r5], #4	@ float
 955 0024 FAD1     		bne	.L144
 956              	.L143:
 957 0026 B9F1000F 		cmp	r9, #0
 958 002a 06DB     		blt	.L165
 959 002c 4046     		mov	r0, r8
 960 002e 4621     		movs	r1, #70
 961 0030 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 962 0034 0028     		cmp	r0, #0
 963 0036 40F0B380 		bne	.L145
 964              	.L165:
 965 003a D8F80830 		ldr	r3, [r8, #8]
 966 003e 5B68     		ldr	r3, [r3, #4]	@ float
 967 0040 C6F8E430 		str	r3, [r6, #228]	@ float
 968 0044 4046     		mov	r0, r8
 969 0046 4521     		movs	r1, #69
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 18


 970 0048 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 971 004c 0028     		cmp	r0, #0
 972 004e 00F0A280 		beq	.L176
 973 0052 684B     		ldr	r3, .L181
 974 0054 5D6A     		ldr	r5, [r3, #36]
 975 0056 002D     		cmp	r5, #0
 976 0058 00F0C480 		beq	.L177
 977 005c 2F6C     		ldr	r7, [r5, #64]
 978 005e 002F     		cmp	r7, #0
 979 0060 00F09980 		beq	.L176
 980 0064 95F8CC40 		ldrb	r4, [r5, #204]	@ zero_extendqisi2
 981 0068 002C     		cmp	r4, #0
 982 006a 4DD1     		bne	.L178
 983 006c 2346     		mov	r3, r4
 984 006e 01A9     		add	r1, sp, #4
 985 0070 4046     		mov	r0, r8
 986 0072 6A46     		mov	r2, sp
 987 0074 0097     		str	r7, [sp]
 988 0076 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 989 007a 009B     		ldr	r3, [sp]
 990 007c BB42     		cmp	r3, r7
 991 007e 40F0A980 		bne	.L179
 992 0082 2A46     		mov	r2, r5
 993 0084 96ED9B6A 		flds	s12, [r6, #620]
 994 0088 05EB8305 		add	r5, r5, r3, lsl #2
 995 008c 01A8     		add	r0, sp, #4
 996 008e 2EE0     		b	.L162
 997              	.L157:
 998 0090 D8F80810 		ldr	r1, [r8, #8]
 999 0094 497C     		ldrb	r1, [r1, #17]	@ zero_extendqisi2
 1000 0096 06EB8304 		add	r4, r6, r3, lsl #2
 1001 009a C907     		lsls	r1, r1, #31
 1002 009c 52BF     		itee	pl
 1003 009e 94ED747A 		fldspl	s14, [r4, #464]
 1004 00a2 2146     		movmi	r1, r4
 1005 00a4 91ED747A 		fldsmi	s14, [r1, #464]
 1006 00a8 06EB8301 		add	r1, r6, r3, lsl #2
 1007 00ac 58BF     		it	pl
 1008 00ae 77EEC77A 		fsubspl	s15, s15, s14
 1009 00b2 D1ED7B6A 		flds	s13, [r1, #492]
 1010 00b6 37EE877A 		fadds	s14, s15, s14
 1011 00ba 76EEA76A 		fadds	s13, s13, s15
 1012 00be 81ED747A 		fsts	s14, [r1, #464]
 1013 00c2 C1ED7B6A 		fsts	s13, [r1, #492]
 1014 00c6 96ED827A 		flds	s14, [r6, #520]
 1015 00ca D6F8B041 		ldr	r4, [r6, #432]
 1016 00ce 37EE277A 		fadds	s14, s14, s15
 1017 00d2 2344     		add	r3, r3, r4
 1018 00d4 86ED827A 		fsts	s14, [r6, #520]
 1019 00d8 91EDB17A 		flds	s14, [r1, #708]
 1020 00dc 67EE877A 		fmuls	s15, s15, s14
 1021 00e0 06EB8303 		add	r3, r6, r3, lsl #2
 1022 00e4 C3ED297A 		fsts	s15, [r3, #164]
 1023              	.L158:
 1024 00e8 0432     		adds	r2, r2, #4
 1025 00ea AA42     		cmp	r2, r5
 1026 00ec 53D0     		beq	.L176
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 19


 1027              	.L162:
 1028 00ee F0EC017A 		fldmias	r0!, {s15}
 1029 00f2 9368     		ldr	r3, [r2, #8]
 1030 00f4 B9F1FF3F 		cmp	r9, #-1
 1031 00f8 67EE867A 		fmuls	s15, s15, s12
 1032 00fc C8D1     		bne	.L157
 1033 00fe 06EB8303 		add	r3, r6, r3, lsl #2
 1034 0102 C3ED747A 		fsts	s15, [r3, #464]
 1035 0106 EFE7     		b	.L158
 1036              	.L178:
 1037 0108 4046     		mov	r0, r8
 1038 010a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1039 010e D6ED9B5A 		flds	s11, [r6, #620]
 1040 0112 07EE100A 		fmsr	s14, r0
 1041 0116 B9F1FF3F 		cmp	r9, #-1
 1042 011a 67EE255A 		fmuls	s11, s14, s11
 1043 011e 66D0     		beq	.L180
 1044 0120 D8F80830 		ldr	r3, [r8, #8]
 1045 0124 D5ED007A 		flds	s15, [r5]
 1046 0128 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 1047 012a 96ED827A 		flds	s14, [r6, #520]
 1048 012e D6F8B041 		ldr	r4, [r6, #432]
 1049 0132 D807     		lsls	r0, r3, #31
 1050 0134 4DBF     		iteet	mi
 1051 0136 77EEA57A 		faddsmi	s15, s15, s11
 1052 013a C5ED005A 		fstspl	s11, [r5]
 1053 013e 75EEE75A 		fsubspl	s11, s11, s15
 1054 0142 C5ED007A 		fstsmi	s15, [r5]
 1055 0146 2A46     		mov	r2, r5
 1056 0148 05EB8707 		add	r7, r5, r7, lsl #2
 1057 014c 05F12400 		add	r0, r5, #36
 1058              	.L166:
 1059 0150 9168     		ldr	r1, [r2, #8]
 1060 0152 F0EC017A 		fldmias	r0!, {s15}
 1061 0156 06EB8103 		add	r3, r6, r1, lsl #2
 1062 015a 93ED746A 		flds	s12, [r3, #464]
 1063 015e D3ED7B6A 		flds	s13, [r3, #492]
 1064 0162 67EEA57A 		fmuls	s15, s15, s11
 1065 0166 2144     		add	r1, r1, r4
 1066 0168 76EEA76A 		fadds	s13, s13, s15
 1067 016c 36EE276A 		fadds	s12, s12, s15
 1068 0170 37EE277A 		fadds	s14, s14, s15
 1069 0174 C3ED7B6A 		fsts	s13, [r3, #492]
 1070 0178 83ED746A 		fsts	s12, [r3, #464]
 1071 017c 86ED827A 		fsts	s14, [r6, #520]
 1072 0180 D3EDB16A 		flds	s13, [r3, #708]
 1073 0184 0432     		adds	r2, r2, #4
 1074 0186 66EEA77A 		fmuls	s15, s13, s15
 1075 018a 06EB8101 		add	r1, r6, r1, lsl #2
 1076 018e BA42     		cmp	r2, r7
 1077 0190 C1ED297A 		fsts	s15, [r1, #164]
 1078 0194 DCD1     		bne	.L166
 1079              	.L176:
 1080 0196 0124     		movs	r4, #1
 1081              	.L174:
 1082 0198 2046     		mov	r0, r4
 1083 019a 09B0     		add	sp, sp, #36
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 20


 1084              		@ sp needed
 1085 019c BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1086              	.L145:
 1087 01a0 4046     		mov	r0, r8
 1088 01a2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1089 01a6 D6ED9B7A 		flds	s15, [r6, #620]
 1090 01aa D8F80830 		ldr	r3, [r8, #8]
 1091 01ae 07EE100A 		fmsr	s14, r0
 1092 01b2 67EE277A 		fmuls	s15, s14, s15
 1093 01b6 B9F1000F 		cmp	r9, #0
 1094 01ba 06D0     		beq	.L163
 1095 01bc 9FED0E7A 		flds	s14, .L181+4
 1096 01c0 67EE877A 		fmuls	s15, s15, s14
 1097              	.L146:
 1098 01c4 C3ED017A 		fsts	s15, [r3, #4]
 1099 01c8 37E7     		b	.L165
 1100              	.L163:
 1101 01ca 96EDB07A 		flds	s14, [r6, #704]
 1102 01ce 67EE877A 		fmuls	s15, s15, s14
 1103 01d2 F7E7     		b	.L146
 1104              	.L179:
 1105 01d4 3068     		ldr	r0, [r6]
 1106 01d6 094A     		ldr	r2, .L181+8
 1107 01d8 08F10C03 		add	r3, r8, #12
 1108 01dc 0621     		movs	r1, #6
 1109 01de FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1110 01e2 D9E7     		b	.L174
 1111              	.L177:
 1112 01e4 0123     		movs	r3, #1
 1113 01e6 2C46     		mov	r4, r5
 1114 01e8 86F8D733 		strb	r3, [r6, #983]
 1115 01ec D4E7     		b	.L174
 1116              	.L180:
 1117 01ee C5ED005A 		fsts	s11, [r5]
 1118 01f2 D1E7     		b	.L174
 1119              	.L182:
 1120              		.align	2
 1121              	.L181:
 1122 01f4 00000000 		.word	reprap
 1123 01f8 8988883C 		.word	1015580809
 1124 01fc 5C010000 		.word	.LC18
 1125              		.size	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBufferi, .-_ZN6GCodes33LoadExtrusionAn
 1126              		.section	.text._ZN6GCodes23LoadMoveBufferFromGCodeER11GCodeBufferi,"ax",%progbits
 1127              		.align	2
 1128              		.global	_ZN6GCodes23LoadMoveBufferFromGCodeER11GCodeBufferi
 1129              		.thumb
 1130              		.thumb_func
 1131              		.type	_ZN6GCodes23LoadMoveBufferFromGCodeER11GCodeBufferi, %function
 1132              	_ZN6GCodes23LoadMoveBufferFromGCodeER11GCodeBufferi:
 1133              		@ args = 0, pretend = 0, frame = 32
 1134              		@ frame_needed = 0, uses_anonymous_args = 0
 1135 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1136 0004 2DED028B 		fstmfdd	sp!, {d8}
 1137 0008 BF4B     		ldr	r3, .L276
 1138 000a 89B0     		sub	sp, sp, #36
 1139 000c 0646     		mov	r6, r0
 1140 000e D0F8B001 		ldr	r0, [r0, #432]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 21


 1141 0012 5B6A     		ldr	r3, [r3, #36]
 1142 0014 0293     		str	r3, [sp, #8]
 1143 0016 8846     		mov	r8, r1
 1144 0018 9346     		mov	fp, r2
 1145 001a 0028     		cmp	r0, #0
 1146 001c 00F09E80 		beq	.L221
 1147 0020 06F1A403 		add	r3, r6, #164
 1148 0024 0393     		str	r3, [sp, #12]
 1149 0026 029B     		ldr	r3, [sp, #8]
 1150 0028 DFF8E0A2 		ldr	r10, .L276+4
 1151 002c 039D     		ldr	r5, [sp, #12]
 1152 002e A833     		adds	r3, r3, #168
 1153 0030 0493     		str	r3, [sp, #16]
 1154 0032 0123     		movs	r3, #1
 1155 0034 0193     		str	r3, [sp, #4]
 1156 0036 049F     		ldr	r7, [sp, #16]
 1157 0038 0024     		movs	r4, #0
 1158 003a 09E0     		b	.L202
 1159              	.L268:
 1160 003c D6F8B001 		ldr	r0, [r6, #432]
 1161              	.L186:
 1162 0040 0134     		adds	r4, r4, #1
 1163 0042 8442     		cmp	r4, r0
 1164 0044 05F10405 		add	r5, r5, #4
 1165 0048 07F10407 		add	r7, r7, #4
 1166 004c 80F08880 		bcs	.L184
 1167              	.L202:
 1168 0050 4046     		mov	r0, r8
 1169 0052 1AF80410 		ldrb	r1, [r10, r4]	@ zero_extendqisi2
 1170 0056 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1171 005a 0028     		cmp	r0, #0
 1172 005c EED0     		beq	.L268
 1173 005e 4046     		mov	r0, r8
 1174 0060 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1175 0064 96ED9B8A 		flds	s16, [r6, #620]
 1176 0068 D5ED457A 		flds	s15, [r5, #276]
 1177 006c 07EE100A 		fmsr	s14, r0
 1178 0070 27EE088A 		fmuls	s16, s14, s16
 1179 0074 BBF1FF3F 		cmp	fp, #-1
 1180 0078 28EE278A 		fmuls	s16, s16, s15
 1181 007c 00F0BC80 		beq	.L270
 1182 0080 002C     		cmp	r4, #0
 1183 0082 53D1     		bne	.L188
 1184 0084 BBF1000F 		cmp	fp, #0
 1185 0088 40F02381 		bne	.L189
 1186 008c 029B     		ldr	r3, [sp, #8]
 1187 008e 002B     		cmp	r3, #0
 1188 0090 00F03E81 		beq	.L190
 1189 0094 D6F8B011 		ldr	r1, [r6, #432]
 1190 0098 D3F8C0C0 		ldr	ip, [r3, #192]
 1191 009c 0846     		mov	r0, r1
 1192 009e 0029     		cmp	r1, #0
 1193 00a0 61D0     		beq	.L191
 1194 00a2 049A     		ldr	r2, [sp, #16]
 1195 00a4 039B     		ldr	r3, [sp, #12]
 1196 00a6 0595     		str	r5, [sp, #20]
 1197 00a8 0694     		str	r4, [sp, #24]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 22


 1198 00aa 0797     		str	r7, [sp, #28]
 1199 00ac D946     		mov	r9, fp
 1200 00ae 3746     		mov	r7, r6
 1201 00b0 1C46     		mov	r4, r3
 1202 00b2 1546     		mov	r5, r2
 1203 00b4 6646     		mov	r6, ip
 1204 00b6 0DE0     		b	.L196
 1205              	.L195:
 1206 00b8 C4ED008A 		fsts	s17, [r4]
 1207 00bc D7F8B011 		ldr	r1, [r7, #432]
 1208              	.L192:
 1209 00c0 09F10109 		add	r9, r9, #1
 1210 00c4 4945     		cmp	r1, r9
 1211 00c6 04F10404 		add	r4, r4, #4
 1212 00ca 05F10405 		add	r5, r5, #4
 1213 00ce 0846     		mov	r0, r1
 1214 00d0 40F29F80 		bls	.L271
 1215              	.L196:
 1216 00d4 0123     		movs	r3, #1
 1217 00d6 03FA09F0 		lsl	r0, r3, r9
 1218 00da 3042     		tst	r0, r6
 1219 00dc F0D0     		beq	.L192
 1220 00de D8F80810 		ldr	r1, [r8, #8]
 1221 00e2 497C     		ldrb	r1, [r1, #17]	@ zero_extendqisi2
 1222 00e4 8807     		lsls	r0, r1, #30
 1223 00e6 8849     		ldr	r1, .L276
 1224 00e8 48BF     		it	mi
 1225 00ea D4ED008A 		fldsmi	s17, [r4]
 1226 00ee 8868     		ldr	r0, [r1, #8]
 1227 00f0 58BF     		it	pl
 1228 00f2 D5ED008A 		fldspl	s17, [r5]
 1229 00f6 90F8701A 		ldrb	r1, [r0, #2672]	@ zero_extendqisi2
 1230 00fa 4CBF     		ite	mi
 1231 00fc 78EE288A 		faddsmi	s17, s16, s17
 1232 0100 78EE688A 		fsubspl	s17, s16, s17
 1233 0104 0029     		cmp	r1, #0
 1234 0106 D7D0     		beq	.L195
 1235 0108 D4ED007A 		flds	s15, [r4]
 1236 010c 78EEE77A 		fsubs	s15, s17, s15
 1237 0110 00F52160 		add	r0, r0, #2576
 1238 0114 F0EEE77A 		fabss	s15, s15
 1239 0118 17EE901A 		fmrs	r1, s15
 1240 011c FFF7FEFF 		bl	_ZNK9HeightMap18GetMinimumSegmentsEf
 1241 0120 019B     		ldr	r3, [sp, #4]
 1242 0122 8342     		cmp	r3, r0
 1243 0124 38BF     		it	cc
 1244 0126 0346     		movcc	r3, r0
 1245 0128 0193     		str	r3, [sp, #4]
 1246 012a C5E7     		b	.L195
 1247              	.L188:
 1248 012c D8F80830 		ldr	r3, [r8, #8]
 1249 0130 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 1250 0132 9907     		lsls	r1, r3, #30
 1251 0134 4ED5     		bpl	.L197
 1252              	.L218:
 1253 0136 D5ED007A 		flds	s15, [r5]
 1254 013a 022C     		cmp	r4, #2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 23


 1255 013c 38EE278A 		fadds	s16, s16, s15
 1256 0140 09D0     		beq	.L199
 1257 0142 BBF1000F 		cmp	fp, #0
 1258 0146 06D1     		bne	.L199
 1259              	.L220:
 1260 0148 6F49     		ldr	r1, .L276
 1261 014a 8868     		ldr	r0, [r1, #8]
 1262 014c 90F8703A 		ldrb	r3, [r0, #2672]	@ zero_extendqisi2
 1263 0150 002B     		cmp	r3, #0
 1264 0152 40F0AC80 		bne	.L272
 1265              	.L199:
 1266 0156 85ED008A 		fsts	s16, [r5]
 1267 015a 6FE7     		b	.L268
 1268              	.L221:
 1269 015c 0123     		movs	r3, #1
 1270 015e 0193     		str	r3, [sp, #4]
 1271              	.L184:
 1272 0160 BBF1000F 		cmp	fp, #0
 1273 0164 30D1     		bne	.L242
 1274              	.L191:
 1275 0166 96F89632 		ldrb	r3, [r6, #662]	@ zero_extendqisi2
 1276 016a 6BB3     		cbz	r3, .L242
 1277 016c 6649     		ldr	r1, .L276
 1278 016e 8A68     		ldr	r2, [r1, #8]
 1279 0170 92F8BC3A 		ldrb	r3, [r2, #2748]	@ zero_extendqisi2
 1280 0174 002B     		cmp	r3, #0
 1281 0176 51D1     		bne	.L205
 1282 0178 30B3     		cbz	r0, .L242
 1283 017a D6F89852 		ldr	r5, [r6, #664]
 1284 017e 06F1A402 		add	r2, r6, #164
 1285 0182 0124     		movs	r4, #1
 1286              	.L210:
 1287 0184 04FA03F1 		lsl	r1, r4, r3
 1288 0188 2942     		tst	r1, r5
 1289 018a 18D0     		beq	.L206
 1290 018c 3168     		ldr	r1, [r6]
 1291 018e D2ED007A 		flds	s15, [r2]
 1292 0192 01EB8301 		add	r1, r1, r3, lsl #2
 1293 0196 01F5A767 		add	r7, r1, #1336
 1294 019a 97ED007A 		flds	s14, [r7]
 1295 019e F4EEC77A 		fcmpes	s15, s14
 1296 01a2 F1EE10FA 		fmstat
 1297 01a6 01F5A461 		add	r1, r1, #1312
 1298 01aa 06D4     		bmi	.L269
 1299 01ac 91ED007A 		flds	s14, [r1]
 1300 01b0 F4EEC77A 		fcmpes	s15, s14
 1301 01b4 F1EE10FA 		fmstat
 1302 01b8 01DD     		ble	.L206
 1303              	.L269:
 1304 01ba 82ED007A 		fsts	s14, [r2]
 1305              	.L206:
 1306 01be 0133     		adds	r3, r3, #1
 1307 01c0 8342     		cmp	r3, r0
 1308 01c2 02F10402 		add	r2, r2, #4
 1309 01c6 DDD1     		bne	.L210
 1310              	.L242:
 1311 01c8 0198     		ldr	r0, [sp, #4]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 24


 1312 01ca 09B0     		add	sp, sp, #36
 1313              		@ sp needed
 1314 01cc BDEC028B 		fldmfdd	sp!, {d8}
 1315 01d0 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1316              	.L197:
 1317 01d4 BBF1000F 		cmp	fp, #0
 1318 01d8 BDD1     		bne	.L199
 1319 01da D6EDB87A 		flds	s15, [r6, #736]
 1320 01de 022C     		cmp	r4, #2
 1321 01e0 38EE278A 		fadds	s16, s16, s15
 1322 01e4 5AD0     		beq	.L273
 1323              	.L200:
 1324 01e6 029B     		ldr	r3, [sp, #8]
 1325 01e8 1BB1     		cbz	r3, .L201
 1326 01ea D7ED007A 		flds	s15, [r7]
 1327 01ee 38EE678A 		fsubs	s16, s16, s15
 1328              	.L201:
 1329 01f2 022C     		cmp	r4, #2
 1330 01f4 A8D1     		bne	.L220
 1331 01f6 AEE7     		b	.L199
 1332              	.L270:
 1333 01f8 D6F89832 		ldr	r3, [r6, #664]
 1334 01fc 0121     		movs	r1, #1
 1335 01fe 01FA04F2 		lsl	r2, r1, r4
 1336 0202 1343     		orrs	r3, r3, r2
 1337 0204 C6F89832 		str	r3, [r6, #664]
 1338 0208 85ED008A 		fsts	s16, [r5]
 1339 020c D6F8B001 		ldr	r0, [r6, #432]
 1340 0210 16E7     		b	.L186
 1341              	.L271:
 1342 0212 3E46     		mov	r6, r7
 1343 0214 059D     		ldr	r5, [sp, #20]
 1344 0216 069C     		ldr	r4, [sp, #24]
 1345 0218 079F     		ldr	r7, [sp, #28]
 1346 021a 11E7     		b	.L186
 1347              	.L205:
 1348 021c 0123     		movs	r3, #1
 1349 021e 03FA00F0 		lsl	r0, r3, r0
 1350 0222 D6F89832 		ldr	r3, [r6, #664]
 1351 0226 0138     		subs	r0, r0, #1
 1352 0228 0340     		ands	r3, r3, r0
 1353 022a 9842     		cmp	r0, r3
 1354 022c CCD1     		bne	.L242
 1355 022e 96ED2A7A 		flds	s14, [r6, #168]
 1356 0232 D6ED296A 		flds	s13, [r6, #164]
 1357 0236 67EE077A 		fmuls	s15, s14, s14
 1358 023a 02F6D823 		addw	r3, r2, #2776
 1359 023e E6EEA67A 		vfma.f32	s15, s13, s13
 1360 0242 93ED006A 		flds	s12, [r3]
 1361 0246 F4EEC67A 		fcmpes	s15, s12
 1362 024a F1EE10FA 		fmstat
 1363 024e 47DC     		bgt	.L274
 1364              	.L211:
 1365 0250 96ED2B7A 		flds	s14, [r6, #172]
 1366 0254 3368     		ldr	r3, [r6]
 1367 0256 B4EE477A 		fcmps	s14, s14
 1368 025a 02F52B62 		add	r2, r2, #2736
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 25


 1369 025e 03F5A863 		add	r3, r3, #1344
 1370 0262 F1EE10FA 		fmstat
 1371 0266 D3ED007A 		flds	s15, [r3]
 1372 026a D2ED006A 		flds	s13, [r2]
 1373 026e 06D6     		bvs	.L214
 1374 0270 B4EEE67A 		fcmpes	s14, s13
 1375 0274 F1EE10FA 		fmstat
 1376 0278 58BF     		it	pl
 1377 027a B0EE667A 		fcpyspl	s14, s13
 1378              	.L214:
 1379 027e F4EE677A 		fcmps	s15, s15
 1380 0282 F1EE10FA 		fmstat
 1381 0286 06D6     		bvs	.L216
 1382 0288 F4EEC77A 		fcmpes	s15, s14
 1383 028c F1EE10FA 		fmstat
 1384 0290 D8BF     		it	le
 1385 0292 F0EE477A 		fcpysle	s15, s14
 1386              	.L216:
 1387 0296 C6ED2B7A 		fsts	s15, [r6, #172]
 1388 029a 95E7     		b	.L242
 1389              	.L273:
 1390 029c 96F81833 		ldrb	r3, [r6, #792]	@ zero_extendqisi2
 1391 02a0 002B     		cmp	r3, #0
 1392 02a2 A0D0     		beq	.L200
 1393 02a4 D6EDC57A 		flds	s15, [r6, #788]
 1394 02a8 38EE278A 		fadds	s16, s16, s15
 1395 02ac 9BE7     		b	.L200
 1396              	.L272:
 1397 02ae D5ED007A 		flds	s15, [r5]
 1398 02b2 78EE677A 		fsubs	s15, s16, s15
 1399 02b6 00F52160 		add	r0, r0, #2576
 1400 02ba F0EEE77A 		fabss	s15, s15
 1401 02be 17EE901A 		fmrs	r1, s15
 1402 02c2 FFF7FEFF 		bl	_ZNK9HeightMap18GetMinimumSegmentsEf
 1403 02c6 019B     		ldr	r3, [sp, #4]
 1404 02c8 8342     		cmp	r3, r0
 1405 02ca 38BF     		it	cc
 1406 02cc 0346     		movcc	r3, r0
 1407 02ce 0193     		str	r3, [sp, #4]
 1408 02d0 41E7     		b	.L199
 1409              	.L189:
 1410 02d2 D8F80830 		ldr	r3, [r8, #8]
 1411 02d6 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 1412 02d8 9B07     		lsls	r3, r3, #30
 1413 02da 3FF52CAF 		bmi	.L218
 1414 02de 3AE7     		b	.L199
 1415              	.L274:
 1416 02e0 C6EE277A 		fdivs	s15, s12, s15
 1417 02e4 F1EEE75A 		fsqrts	s11, s15
 1418 02e8 F4EE655A 		fcmps	s11, s11
 1419 02ec F1EE10FA 		fmstat
 1420 02f0 19D1     		bne	.L275
 1421              	.L213:
 1422 02f2 66EEA56A 		fmuls	s13, s13, s11
 1423 02f6 27EE257A 		fmuls	s14, s14, s11
 1424 02fa 034B     		ldr	r3, .L276
 1425 02fc C6ED296A 		fsts	s13, [r6, #164]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 26


 1426 0300 86ED2A7A 		fsts	s14, [r6, #168]
 1427 0304 9A68     		ldr	r2, [r3, #8]
 1428 0306 A3E7     		b	.L211
 1429              	.L277:
 1430              		.align	2
 1431              	.L276:
 1432 0308 00000000 		.word	reprap
 1433 030c 00000000 		.word	.LANCHOR0
 1434              	.L190:
 1435 0310 D8F80830 		ldr	r3, [r8, #8]
 1436 0314 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 1437 0316 9A07     		lsls	r2, r3, #30
 1438 0318 3FF50DAF 		bmi	.L218
 1439 031c D6EDB87A 		flds	s15, [r6, #736]
 1440 0320 38EE278A 		fadds	s16, s16, s15
 1441 0324 10E7     		b	.L220
 1442              	.L275:
 1443 0326 17EE900A 		fmrs	r0, s15
 1444 032a FFF7FEFF 		bl	sqrtf
 1445 032e D6ED296A 		flds	s13, [r6, #164]
 1446 0332 96ED2A7A 		flds	s14, [r6, #168]
 1447 0336 05EE900A 		fmsr	s11, r0
 1448 033a DAE7     		b	.L213
 1449              		.size	_ZN6GCodes23LoadMoveBufferFromGCodeER11GCodeBufferi, .-_ZN6GCodes23LoadMoveBufferFromGCodeER
 1450              		.section	.text._ZN6GCodes9SetUpMoveER11GCodeBufferR9StringRef,"ax",%progbits
 1451              		.align	2
 1452              		.global	_ZN6GCodes9SetUpMoveER11GCodeBufferR9StringRef
 1453              		.thumb
 1454              		.thumb_func
 1455              		.type	_ZN6GCodes9SetUpMoveER11GCodeBufferR9StringRef, %function
 1456              	_ZN6GCodes9SetUpMoveER11GCodeBufferR9StringRef:
 1457              		@ args = 0, pretend = 0, frame = 0
 1458              		@ frame_needed = 0, uses_anonymous_args = 0
 1459 0000 D0F8FC30 		ldr	r3, [r0, #252]
 1460 0004 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1461 0008 0446     		mov	r4, r0
 1462 000a 0D46     		mov	r5, r1
 1463 000c 9046     		mov	r8, r2
 1464 000e 13B1     		cbz	r3, .L351
 1465 0010 0020     		movs	r0, #0
 1466 0012 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1467              	.L351:
 1468 0016 0846     		mov	r0, r1
 1469 0018 4521     		movs	r1, #69
 1470 001a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1471 001e 0028     		cmp	r0, #0
 1472 0020 68D0     		beq	.L352
 1473              	.L286:
 1474 0022 924F     		ldr	r7, .L358
 1475 0024 0026     		movs	r6, #0
 1476 0026 3846     		mov	r0, r7
 1477 0028 A4F8F460 		strh	r6, [r4, #244]	@ movhi
 1478 002c 84F8F660 		strb	r6, [r4, #246]
 1479 0030 84F82861 		strb	r6, [r4, #296]
 1480 0034 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 1481 0038 5321     		movs	r1, #83
 1482 003a C4F8EC00 		str	r0, [r4, #236]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 27


 1483 003e 2846     		mov	r0, r5
 1484 0040 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1485 0044 0028     		cmp	r0, #0
 1486 0046 40F08580 		bne	.L288
 1487              	.L291:
 1488 004a 94F8F690 		ldrb	r9, [r4, #246]	@ zero_extendqisi2
 1489              	.L289:
 1490 004e B868     		ldr	r0, [r7, #8]
 1491 0050 864E     		ldr	r6, .L358
 1492 0052 90F8BC3A 		ldrb	r3, [r0, #2748]	@ zero_extendqisi2
 1493 0056 EBB1     		cbz	r3, .L316
 1494 0058 B9F1000F 		cmp	r9, #0
 1495 005c 3FD1     		bne	.L313
 1496 005e D4F8B031 		ldr	r3, [r4, #432]
 1497 0062 D4F89822 		ldr	r2, [r4, #664]
 1498 0066 0121     		movs	r1, #1
 1499 0068 01FA03F3 		lsl	r3, r1, r3
 1500 006c 013B     		subs	r3, r3, #1
 1501 006e 1A40     		ands	r2, r2, r3
 1502 0070 9342     		cmp	r3, r2
 1503 0072 0FD0     		beq	.L316
 1504 0074 2846     		mov	r0, r5
 1505 0076 5821     		movs	r1, #88
 1506 0078 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1507 007c 0028     		cmp	r0, #0
 1508 007e 00F0D380 		beq	.L353
 1509              	.L302:
 1510 0082 0120     		movs	r0, #1
 1511 0084 84F8D803 		strb	r0, [r4, #984]
 1512 0088 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1513              	.L292:
 1514 008c B868     		ldr	r0, [r7, #8]
 1515 008e 90F8BC3A 		ldrb	r3, [r0, #2748]	@ zero_extendqisi2
 1516 0092 23BB     		cbnz	r3, .L313
 1517              	.L316:
 1518 0094 0746     		mov	r7, r0
 1519              	.L297:
 1520 0096 7548     		ldr	r0, .L358
 1521 0098 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 1522 009c 04F1A406 		add	r6, r4, #164
 1523 00a0 0346     		mov	r3, r0
 1524 00a2 3146     		mov	r1, r6
 1525 00a4 3846     		mov	r0, r7
 1526 00a6 4A46     		mov	r2, r9
 1527 00a8 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhm
 1528 00ac D4F8B021 		ldr	r2, [r4, #432]
 1529 00b0 04F1CC07 		add	r7, r4, #204
 1530 00b4 3146     		mov	r1, r6
 1531 00b6 9200     		lsls	r2, r2, #2
 1532 00b8 3846     		mov	r0, r7
 1533 00ba FFF7FEFF 		bl	memcpy
 1534 00be 2046     		mov	r0, r4
 1535 00c0 2946     		mov	r1, r5
 1536 00c2 94F8F620 		ldrb	r2, [r4, #246]	@ zero_extendqisi2
 1537 00c6 FFF7FEFF 		bl	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBufferi
 1538 00ca 0028     		cmp	r0, #0
 1539 00cc 54D1     		bne	.L354
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 28


 1540              	.L304:
 1541 00ce D4F8F430 		ldr	r3, [r4, #244]
 1542 00d2 23F07F43 		bic	r3, r3, #-16777216
 1543 00d6 53B1     		cbz	r3, .L350
 1544 00d8 0220     		movs	r0, #2
 1545 00da BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1546              	.L313:
 1547 00de AB68     		ldr	r3, [r5, #8]
 1548 00e0 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 1549 00e2 9B07     		lsls	r3, r3, #30
 1550 00e4 D6D4     		bmi	.L316
 1551 00e6 4046     		mov	r0, r8
 1552 00e8 6149     		ldr	r1, .L358+4
 1553 00ea FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 1554              	.L350:
 1555 00ee 0120     		movs	r0, #1
 1556 00f0 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1557              	.L352:
 1558 00f4 2846     		mov	r0, r5
 1559 00f6 4621     		movs	r1, #70
 1560 00f8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1561 00fc 0028     		cmp	r0, #0
 1562 00fe 90D0     		beq	.L286
 1563 0100 2846     		mov	r0, r5
 1564 0102 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1565 0106 DFED5B7A 		flds	s15, .L358+8
 1566 010a 07EE100A 		fmsr	s14, r0
 1567 010e B4EE677A 		fcmps	s14, s15
 1568 0112 F1EE10FA 		fmstat
 1569 0116 84D1     		bne	.L286
 1570 0118 2846     		mov	r0, r5
 1571 011a 5821     		movs	r1, #88
 1572 011c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1573 0120 18B1     		cbz	r0, .L282
 1574 0122 D4F89832 		ldr	r3, [r4, #664]
 1575 0126 D807     		lsls	r0, r3, #31
 1576 0128 E1D5     		bpl	.L350
 1577              	.L282:
 1578 012a 2846     		mov	r0, r5
 1579 012c 5921     		movs	r1, #89
 1580 012e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1581 0132 18B1     		cbz	r0, .L284
 1582 0134 D4F89832 		ldr	r3, [r4, #664]
 1583 0138 9907     		lsls	r1, r3, #30
 1584 013a D8D5     		bpl	.L350
 1585              	.L284:
 1586 013c 2846     		mov	r0, r5
 1587 013e 5A21     		movs	r1, #90
 1588 0140 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1589 0144 0028     		cmp	r0, #0
 1590 0146 3FF46CAF 		beq	.L286
 1591 014a D4F89832 		ldr	r3, [r4, #664]
 1592 014e 5A07     		lsls	r2, r3, #29
 1593 0150 CDD5     		bpl	.L350
 1594 0152 66E7     		b	.L286
 1595              	.L288:
 1596 0154 2846     		mov	r0, r5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 29


 1597 0156 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 1598 015a 431E     		subs	r3, r0, #1
 1599 015c 012B     		cmp	r3, #1
 1600 015e 3FD9     		bls	.L355
 1601 0160 6328     		cmp	r0, #99
 1602 0162 7FF472AF 		bne	.L291
 1603 0166 B4F8F430 		ldrh	r3, [r4, #244]
 1604 016a 94F8F690 		ldrb	r9, [r4, #246]	@ zero_extendqisi2
 1605 016e 43F48043 		orr	r3, r3, #16384
 1606 0172 A4F8F430 		strh	r3, [r4, #244]	@ movhi
 1607 0176 6AE7     		b	.L289
 1608              	.L354:
 1609 0178 2046     		mov	r0, r4
 1610 017a 2946     		mov	r1, r5
 1611 017c 94F8F620 		ldrb	r2, [r4, #246]	@ zero_extendqisi2
 1612 0180 FFF7FEFF 		bl	_ZN6GCodes23LoadMoveBufferFromGCodeER11GCodeBufferi
 1613 0184 C4F8FC00 		str	r0, [r4, #252]
 1614 0188 0028     		cmp	r0, #0
 1615 018a A0D0     		beq	.L304
 1616 018c D4F8B021 		ldr	r2, [r4, #432]
 1617 0190 0023     		movs	r3, #0
 1618 0192 84F8F830 		strb	r3, [r4, #248]
 1619 0196 8AB1     		cbz	r2, .L306
 1620 0198 3846     		mov	r0, r7
 1621              	.L308:
 1622 019a 022B     		cmp	r3, #2
 1623 019c 03F10103 		add	r3, r3, #1
 1624 01a0 08D0     		beq	.L307
 1625 01a2 10ED0A7A 		flds	s14, [r0, #-40]
 1626 01a6 D0ED007A 		flds	s15, [r0]
 1627 01aa B4EE677A 		fcmps	s14, s15
 1628 01ae F1EE10FA 		fmstat
 1629 01b2 4BD1     		bne	.L356
 1630              	.L307:
 1631 01b4 9342     		cmp	r3, r2
 1632 01b6 00F10400 		add	r0, r0, #4
 1633 01ba EED1     		bne	.L308
 1634              	.L306:
 1635 01bc 236C     		ldr	r3, [r4, #64]
 1636 01be 1B68     		ldr	r3, [r3]
 1637 01c0 AB42     		cmp	r3, r5
 1638 01c2 18BF     		it	ne
 1639 01c4 4FF0FF30 		movne	r0, #-1
 1640 01c8 44D0     		beq	.L357
 1641              	.L309:
 1642 01ca B4F8F430 		ldrh	r3, [r4, #244]
 1643 01ce C4F8E800 		str	r0, [r4, #232]
 1644 01d2 D3F10103 		rsbs	r3, r3, #1
 1645 01d6 38BF     		it	cc
 1646 01d8 0023     		movcc	r3, #0
 1647 01da 84F8F930 		strb	r3, [r4, #249]
 1648 01de 76E7     		b	.L304
 1649              	.L355:
 1650 01e0 5FFA80F9 		uxtb	r9, r0
 1651 01e4 0128     		cmp	r0, #1
 1652 01e6 C4F8EC60 		str	r6, [r4, #236]
 1653 01ea 84F8F690 		strb	r9, [r4, #246]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 30


 1654 01ee 7FF42CAF 		bne	.L291
 1655 01f2 D4F8B031 		ldr	r3, [r4, #432]
 1656 01f6 002B     		cmp	r3, #0
 1657 01f8 3FF448AF 		beq	.L292
 1658 01fc DFF87890 		ldr	r9, .L358+12
 1659 0200 8246     		mov	r10, r0
 1660              	.L295:
 1661 0202 19F80610 		ldrb	r1, [r9, r6]	@ zero_extendqisi2
 1662 0206 2846     		mov	r0, r5
 1663 0208 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1664 020c 0AFA06F3 		lsl	r3, r10, r6
 1665 0210 0136     		adds	r6, r6, #1
 1666 0212 20B1     		cbz	r0, .L293
 1667 0214 B4F8F420 		ldrh	r2, [r4, #244]
 1668 0218 1343     		orrs	r3, r3, r2
 1669 021a A4F8F430 		strh	r3, [r4, #244]	@ movhi
 1670              	.L293:
 1671 021e D4F8B031 		ldr	r3, [r4, #432]
 1672 0222 B342     		cmp	r3, r6
 1673 0224 EDD8     		bhi	.L295
 1674 0226 10E7     		b	.L291
 1675              	.L353:
 1676 0228 2846     		mov	r0, r5
 1677 022a 5921     		movs	r1, #89
 1678 022c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1679 0230 0028     		cmp	r0, #0
 1680 0232 7FF426AF 		bne	.L302
 1681 0236 2846     		mov	r0, r5
 1682 0238 5A21     		movs	r1, #90
 1683 023a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1684 023e 0028     		cmp	r0, #0
 1685 0240 7FF41FAF 		bne	.L302
 1686 0244 B768     		ldr	r7, [r6, #8]
 1687 0246 94F8F690 		ldrb	r9, [r4, #246]	@ zero_extendqisi2
 1688 024a 24E7     		b	.L297
 1689              	.L356:
 1690 024c 0123     		movs	r3, #1
 1691 024e 84F8F830 		strb	r3, [r4, #248]
 1692 0252 B3E7     		b	.L306
 1693              	.L357:
 1694 0254 AB68     		ldr	r3, [r5, #8]
 1695 0256 9868     		ldr	r0, [r3, #8]
 1696 0258 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 1697 025c 0546     		mov	r5, r0
 1698 025e 2069     		ldr	r0, [r4, #16]
 1699 0260 0268     		ldr	r2, [r0]
 1700 0262 9368     		ldr	r3, [r2, #8]
 1701 0264 9847     		blx	r3
 1702 0266 281A     		subs	r0, r5, r0
 1703 0268 AFE7     		b	.L309
 1704              	.L359:
 1705 026a 00BF     		.align	2
 1706              	.L358:
 1707 026c 00000000 		.word	reprap
 1708 0270 98010000 		.word	.LC19
 1709 0274 0080BB45 		.word	1169915904
 1710 0278 00000000 		.word	.LANCHOR0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 31


 1711              		.size	_ZN6GCodes9SetUpMoveER11GCodeBufferR9StringRef, .-_ZN6GCodes9SetUpMoveER11GCodeBufferR9Strin
 1712              		.global	__aeabi_f2d
 1713              		.global	__aeabi_d2f
 1714              		.global	__aeabi_dadd
 1715              		.global	__aeabi_d2uiz
 1716              		.section	.text._ZN6GCodes9DoArcMoveER11GCodeBufferb,"ax",%progbits
 1717              		.align	2
 1718              		.global	_ZN6GCodes9DoArcMoveER11GCodeBufferb
 1719              		.thumb
 1720              		.thumb_func
 1721              		.type	_ZN6GCodes9DoArcMoveER11GCodeBufferb, %function
 1722              	_ZN6GCodes9DoArcMoveER11GCodeBufferb:
 1723              		@ args = 0, pretend = 0, frame = 0
 1724              		@ frame_needed = 0, uses_anonymous_args = 0
 1725 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 1726 0004 0C46     		mov	r4, r1
 1727 0006 2DED068B 		fstmfdd	sp!, {d8, d9, d10}
 1728 000a 8046     		mov	r8, r0
 1729 000c 5821     		movs	r1, #88
 1730 000e 2046     		mov	r0, r4
 1731 0010 9146     		mov	r9, r2
 1732 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1733 0016 20B9     		cbnz	r0, .L361
 1734              	.L363:
 1735 0018 0120     		movs	r0, #1
 1736              	.L410:
 1737 001a BDEC068B 		fldmfdd	sp!, {d8-d10}
 1738 001e BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1739              	.L361:
 1740 0022 2046     		mov	r0, r4
 1741 0024 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1742 0028 5921     		movs	r1, #89
 1743 002a 0546     		mov	r5, r0	@ float
 1744 002c 2046     		mov	r0, r4
 1745 002e 98ED9B8A 		flds	s16, [r8, #620]
 1746 0032 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1747 0036 0028     		cmp	r0, #0
 1748 0038 EED0     		beq	.L363
 1749 003a 2046     		mov	r0, r4
 1750 003c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1751 0040 4921     		movs	r1, #73
 1752 0042 09EE900A 		fmsr	s19, r0
 1753 0046 2046     		mov	r0, r4
 1754 0048 98ED9B9A 		flds	s18, [r8, #620]
 1755 004c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1756 0050 0028     		cmp	r0, #0
 1757 0052 E1D0     		beq	.L363
 1758 0054 2046     		mov	r0, r4
 1759 0056 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1760 005a 4A21     		movs	r1, #74
 1761 005c 0AEE100A 		fmsr	s20, r0
 1762 0060 2046     		mov	r0, r4
 1763 0062 D8ED9B8A 		flds	s17, [r8, #620]
 1764 0066 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1765 006a 0028     		cmp	r0, #0
 1766 006c D4D0     		beq	.L363
 1767 006e 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 32


 1768 0070 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1769 0074 A368     		ldr	r3, [r4, #8]
 1770 0076 D8F8B021 		ldr	r2, [r8, #432]
 1771 007a 5E7C     		ldrb	r6, [r3, #17]	@ zero_extendqisi2
 1772 007c D8ED9BAA 		flds	s21, [r8, #620]
 1773 0080 BB4B     		ldr	r3, .L416+16
 1774 0082 07EE100A 		fmsr	s14, r0
 1775 0086 08F1A401 		add	r1, r8, #164
 1776 008a 9200     		lsls	r2, r2, #2
 1777 008c 08F1CC00 		add	r0, r8, #204
 1778 0090 67EE2AAA 		fmuls	s21, s14, s21
 1779 0094 5F6A     		ldr	r7, [r3, #36]
 1780 0096 FFF7FEFF 		bl	memcpy
 1781 009a 07EE905A 		fmsr	s15, r5
 1782 009e 2046     		mov	r0, r4
 1783 00a0 5A21     		movs	r1, #90
 1784 00a2 C6F34006 		ubfx	r6, r6, #1, #1
 1785 00a6 27EE888A 		fmuls	s16, s15, s16
 1786 00aa 29EE899A 		fmuls	s18, s19, s18
 1787 00ae 6AEE288A 		fmuls	s17, s20, s17
 1788 00b2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 1789 00b6 0028     		cmp	r0, #0
 1790 00b8 40F01281 		bne	.L412
 1791              	.L364:
 1792 00bc D8ED347A 		flds	s15, [r8, #208]
 1793 00c0 77EEAA7A 		fadds	s15, s15, s21
 1794 00c4 C8ED417A 		fsts	s15, [r8, #260]
 1795 00c8 002F     		cmp	r7, #0
 1796 00ca 3CD0     		beq	.L368
 1797 00cc D7F8C030 		ldr	r3, [r7, #192]
 1798 00d0 23F0060E 		bic	lr, r3, #6
 1799 00d4 C8F824E1 		str	lr, [r8, #292]
 1800 00d8 002E     		cmp	r6, #0
 1801 00da 00F0FA80 		beq	.L367
 1802 00de D8ED2A7A 		flds	s15, [r8, #168]
 1803 00e2 37EE899A 		fadds	s18, s15, s18
 1804 00e6 88ED2A9A 		fsts	s18, [r8, #168]
 1805              	.L369:
 1806 00ea D8F8B051 		ldr	r5, [r8, #432]
 1807 00ee 002D     		cmp	r5, #0
 1808 00f0 41D0     		beq	.L371
 1809 00f2 07F1A801 		add	r1, r7, #168
 1810 00f6 08F58072 		add	r2, r8, #256
 1811 00fa 0023     		movs	r3, #0
 1812 00fc 0127     		movs	r7, #1
 1813 00fe 0CE0     		b	.L377
 1814              	.L413:
 1815 0100 52ED177A 		flds	s15, [r2, #-92]
 1816 0104 77EE887A 		fadds	s15, s15, s16
 1817 0108 42ED177A 		fsts	s15, [r2, #-92]
 1818              	.L373:
 1819 010c 0133     		adds	r3, r3, #1
 1820 010e AB42     		cmp	r3, r5
 1821 0110 01F10401 		add	r1, r1, #4
 1822 0114 02F10402 		add	r2, r2, #4
 1823 0118 2DD0     		beq	.L371
 1824              	.L377:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 33


 1825 011a 012B     		cmp	r3, #1
 1826 011c 07FA03F0 		lsl	r0, r7, r3
 1827 0120 F4D0     		beq	.L373
 1828 0122 52ED0D7A 		flds	s15, [r2, #-52]
 1829 0126 77EEA87A 		fadds	s15, s15, s17
 1830 012a 10EA0E0F 		tst	r0, lr
 1831 012e C2ED007A 		fsts	s15, [r2]
 1832 0132 EBD0     		beq	.L373
 1833 0134 002E     		cmp	r6, #0
 1834 0136 E3D1     		bne	.L413
 1835 0138 D1ED007A 		flds	s15, [r1]
 1836 013c 78EE677A 		fsubs	s15, s16, s15
 1837 0140 42ED177A 		fsts	s15, [r2, #-92]
 1838 0144 E2E7     		b	.L373
 1839              	.L368:
 1840 0146 D8ED337A 		flds	s15, [r8, #204]
 1841 014a 77EEA87A 		fadds	s15, s15, s17
 1842 014e 0123     		movs	r3, #1
 1843 0150 C8ED407A 		fsts	s15, [r8, #256]
 1844 0154 C8F82431 		str	r3, [r8, #292]
 1845 0158 002E     		cmp	r6, #0
 1846 015a 00F0F380 		beq	.L378
 1847 015e 98ED297A 		flds	s14, [r8, #164]
 1848 0162 D8ED2A7A 		flds	s15, [r8, #168]
 1849 0166 37EE088A 		fadds	s16, s14, s16
 1850 016a 37EE899A 		fadds	s18, s15, s18
 1851 016e 88ED298A 		fsts	s16, [r8, #164]
 1852 0172 88ED2A9A 		fsts	s18, [r8, #168]
 1853              	.L371:
 1854 0176 0023     		movs	r3, #0
 1855 0178 A8F8F430 		strh	r3, [r8, #244]	@ movhi
 1856 017c 88F8F630 		strb	r3, [r8, #246]
 1857 0180 7B48     		ldr	r0, .L416+16
 1858 0182 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 1859 0186 2146     		mov	r1, r4
 1860 0188 C8F8EC00 		str	r0, [r8, #236]
 1861 018c 98F8F620 		ldrb	r2, [r8, #246]	@ zero_extendqisi2
 1862 0190 4046     		mov	r0, r8
 1863 0192 FFF7FEFF 		bl	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBufferi
 1864 0196 0028     		cmp	r0, #0
 1865 0198 3FF43FAF 		beq	.L410
 1866 019c 2AEEAA7A 		fmuls	s14, s21, s21
 1867 01a0 A8EEA87A 		vfma.f32	s14, s17, s17
 1868 01a4 F1EEC77A 		fsqrts	s15, s14
 1869 01a8 F4EE677A 		fcmps	s15, s15
 1870 01ac F1EE10FA 		fmstat
 1871 01b0 40F0CD80 		bne	.L414
 1872              	.L379:
 1873 01b4 F1EE6AAA 		fnegs	s21, s21
 1874 01b8 C8ED467A 		fsts	s15, [r8, #280]
 1875 01bc 1AEE900A 		fmrs	r0, s21
 1876 01c0 FFF7FEFF 		bl	__aeabi_f2d
 1877 01c4 F1EE688A 		fnegs	s17, s17
 1878 01c8 0446     		mov	r4, r0
 1879 01ca 18EE900A 		fmrs	r0, s17
 1880 01ce 0D46     		mov	r5, r1
 1881 01d0 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 34


 1882 01d4 0246     		mov	r2, r0
 1883 01d6 0B46     		mov	r3, r1
 1884 01d8 2046     		mov	r0, r4
 1885 01da 2946     		mov	r1, r5
 1886 01dc FFF7FEFF 		bl	atan2
 1887 01e0 FFF7FEFF 		bl	__aeabi_d2f
 1888 01e4 98ED2A7A 		flds	s14, [r8, #168]
 1889 01e8 D8ED417A 		flds	s15, [r8, #260]
 1890 01ec C8F81C01 		str	r0, [r8, #284]	@ float
 1891 01f0 77EE677A 		fsubs	s15, s14, s15
 1892 01f4 17EE900A 		fmrs	r0, s15
 1893 01f8 FFF7FEFF 		bl	__aeabi_f2d
 1894 01fc 98ED297A 		flds	s14, [r8, #164]
 1895 0200 D8ED407A 		flds	s15, [r8, #256]
 1896 0204 77EE677A 		fsubs	s15, s14, s15
 1897 0208 0446     		mov	r4, r0
 1898 020a 17EE900A 		fmrs	r0, s15
 1899 020e 0D46     		mov	r5, r1
 1900 0210 FFF7FEFF 		bl	__aeabi_f2d
 1901 0214 0246     		mov	r2, r0
 1902 0216 0B46     		mov	r3, r1
 1903 0218 2046     		mov	r0, r4
 1904 021a 2946     		mov	r1, r5
 1905 021c FFF7FEFF 		bl	atan2
 1906 0220 FFF7FEFF 		bl	__aeabi_d2f
 1907 0224 98ED478A 		flds	s16, [r8, #284]
 1908 0228 07EE900A 		fmsr	s15, r0
 1909 022c B9F1000F 		cmp	r9, #0
 1910 0230 68D0     		beq	.L380
 1911 0232 38EE678A 		fsubs	s16, s16, s15
 1912              	.L381:
 1913 0236 B5EEC08A 		fcmpezs	s16
 1914 023a F1EE10FA 		fmstat
 1915 023e 64D4     		bmi	.L415
 1916              	.L382:
 1917 0240 98ED467A 		flds	s14, [r8, #280]
 1918 0244 D8ED9C7A 		flds	s15, [r8, #624]
 1919 0248 28EE077A 		fmuls	s14, s16, s14
 1920 024c C7EE277A 		fdivs	s15, s14, s15
 1921 0250 17EE900A 		fmrs	r0, s15
 1922 0254 FFF7FEFF 		bl	__aeabi_f2d
 1923 0258 41A3     		adr	r3, .L416
 1924 025a D3E90023 		ldrd	r2, [r3]
 1925 025e FFF7FEFF 		bl	__aeabi_dadd
 1926 0262 FFF7FEFF 		bl	__aeabi_d2uiz
 1927 0266 0128     		cmp	r0, #1
 1928 0268 38BF     		it	cc
 1929 026a 0120     		movcc	r0, #1
 1930 026c 07EE100A 		fmsr	s14, r0	@ int
 1931 0270 F8EE477A 		fuitos	s15, s14
 1932 0274 C8F8FC00 		str	r0, [r8, #252]
 1933 0278 C8EE277A 		fdivs	s15, s16, s15
 1934 027c B9F1000F 		cmp	r9, #0
 1935 0280 01D0     		beq	.L411
 1936 0282 F1EE677A 		fnegs	s15, s15
 1937              	.L411:
 1938 0286 0123     		movs	r3, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 35


 1939 0288 C8ED487A 		fsts	s15, [r8, #288]
 1940 028c 88F82831 		strb	r3, [r8, #296]
 1941 0290 88F8F830 		strb	r3, [r8, #248]
 1942 0294 0020     		movs	r0, #0
 1943 0296 C0E6     		b	.L410
 1944              	.L365:
 1945 0298 D8EDB86A 		flds	s13, [r8, #736]
 1946 029c 98EDC57A 		flds	s14, [r8, #788]
 1947 02a0 77EEA67A 		fadds	s15, s15, s13
 1948 02a4 77EE877A 		fadds	s15, s15, s14
 1949 02a8 C8ED2B7A 		fsts	s15, [r8, #172]
 1950 02ac DFB3     		cbz	r7, .L366
 1951 02ae D7ED2C6A 		flds	s13, [r7, #176]
 1952 02b2 98ED347A 		flds	s14, [r8, #208]
 1953 02b6 D7F8C030 		ldr	r3, [r7, #192]
 1954 02ba 77EEE67A 		fsubs	s15, s15, s13
 1955 02be 37EE2A7A 		fadds	s14, s14, s21
 1956 02c2 23F0060E 		bic	lr, r3, #6
 1957 02c6 C8ED2B7A 		fsts	s15, [r8, #172]
 1958 02ca 88ED417A 		fsts	s14, [r8, #260]
 1959 02ce C8F824E1 		str	lr, [r8, #292]
 1960              	.L367:
 1961 02d2 D7ED2B7A 		flds	s15, [r7, #172]
 1962 02d6 39EE679A 		fsubs	s18, s18, s15
 1963 02da 88ED2A9A 		fsts	s18, [r8, #168]
 1964 02de 04E7     		b	.L369
 1965              	.L412:
 1966 02e0 2046     		mov	r0, r4
 1967 02e2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 1968 02e6 D8ED9B7A 		flds	s15, [r8, #620]
 1969 02ea 07EE100A 		fmsr	s14, r0
 1970 02ee 67EE277A 		fmuls	s15, s14, s15
 1971 02f2 002E     		cmp	r6, #0
 1972 02f4 D0D0     		beq	.L365
 1973 02f6 98ED2B7A 		flds	s14, [r8, #172]
 1974 02fa 77EE277A 		fadds	s15, s14, s15
 1975 02fe C8ED2B7A 		fsts	s15, [r8, #172]
 1976 0302 DBE6     		b	.L364
 1977              	.L380:
 1978 0304 37EEC88A 		fsubs	s16, s15, s16
 1979 0308 95E7     		b	.L381
 1980              	.L415:
 1981 030a 18EE100A 		fmrs	r0, s16
 1982 030e FFF7FEFF 		bl	__aeabi_f2d
 1983 0312 15A3     		adr	r3, .L416+8
 1984 0314 D3E90023 		ldrd	r2, [r3]
 1985 0318 FFF7FEFF 		bl	__aeabi_dadd
 1986 031c FFF7FEFF 		bl	__aeabi_d2f
 1987 0320 08EE100A 		fmsr	s16, r0
 1988 0324 8CE7     		b	.L382
 1989              	.L366:
 1990 0326 98ED347A 		flds	s14, [r8, #208]
 1991 032a D8ED337A 		flds	s15, [r8, #204]
 1992 032e 37EE2A7A 		fadds	s14, s14, s21
 1993 0332 77EEA87A 		fadds	s15, s15, s17
 1994 0336 0123     		movs	r3, #1
 1995 0338 88ED417A 		fsts	s14, [r8, #260]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 36


 1996 033c C8ED407A 		fsts	s15, [r8, #256]
 1997 0340 C8F82431 		str	r3, [r8, #292]
 1998              	.L378:
 1999 0344 88ED298A 		fsts	s16, [r8, #164]
 2000 0348 88ED2A9A 		fsts	s18, [r8, #168]
 2001 034c 13E7     		b	.L371
 2002              	.L414:
 2003 034e 17EE100A 		fmrs	r0, s14
 2004 0352 FFF7FEFF 		bl	sqrtf
 2005 0356 07EE900A 		fmsr	s15, r0
 2006 035a 2BE7     		b	.L379
 2007              	.L417:
 2008 035c AFF30080 		.align	3
 2009              	.L416:
 2010 0360 9A999999 		.word	-1717986918
 2011 0364 9999E93F 		.word	1072273817
 2012 0368 182D4454 		.word	1413754136
 2013 036c FB211940 		.word	1075388923
 2014 0370 00000000 		.word	reprap
 2015              		.size	_ZN6GCodes9DoArcMoveER11GCodeBufferb, .-_ZN6GCodes9DoArcMoveER11GCodeBufferb
 2016 0374 AFF30080 		.section	.text._ZN6GCodes8ReadMoveERNS_7RawMoveE,"ax",%progbits
 2017              		.align	2
 2018              		.global	_ZN6GCodes8ReadMoveERNS_7RawMoveE
 2019              		.thumb
 2020              		.thumb_func
 2021              		.type	_ZN6GCodes8ReadMoveERNS_7RawMoveE, %function
 2022              	_ZN6GCodes8ReadMoveERNS_7RawMoveE:
 2023              		@ args = 0, pretend = 0, frame = 8
 2024              		@ frame_needed = 0, uses_anonymous_args = 0
 2025 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2026 0004 2DED028B 		fstmfdd	sp!, {d8}
 2027 0008 0746     		mov	r7, r0
 2028 000a D0F8FC00 		ldr	r0, [r0, #252]
 2029 000e 83B0     		sub	sp, sp, #12
 2030 0010 8946     		mov	r9, r1
 2031 0012 0028     		cmp	r0, #0
 2032 0014 65D0     		beq	.L419
 2033 0016 0846     		mov	r0, r1
 2034 0018 5822     		movs	r2, #88
 2035 001a 07F1A401 		add	r1, r7, #164
 2036 001e FFF7FEFF 		bl	memcpy
 2037 0022 D7F8FCB0 		ldr	fp, [r7, #252]
 2038 0026 BBF1010F 		cmp	fp, #1
 2039 002a 00F09080 		beq	.L463
 2040 002e 97F828A1 		ldrb	r10, [r7, #296]	@ zero_extendqisi2
 2041 0032 0023     		movs	r3, #0
 2042 0034 89F85530 		strb	r3, [r9, #85]
 2043 0038 BAF1000F 		cmp	r10, #0
 2044 003c 07D0     		beq	.L422
 2045 003e 97ED477A 		flds	s14, [r7, #284]
 2046 0042 D7ED487A 		flds	s15, [r7, #288]
 2047 0046 77EE277A 		fadds	s15, s14, s15
 2048 004a C7ED477A 		fsts	s15, [r7, #284]
 2049              	.L422:
 2050 004e D7F8B041 		ldr	r4, [r7, #432]
 2051 0052 002C     		cmp	r4, #0
 2052 0054 00F00481 		beq	.L464
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 37


 2053 0058 07EE90BA 		fmsr	s15, fp	@ int
 2054 005c B8EE678A 		fuitos	s16, s15
 2055 0060 C846     		mov	r8, r9
 2056 0062 07F58075 		add	r5, r7, #256
 2057 0066 0026     		movs	r6, #0
 2058 0068 0121     		movs	r1, #1
 2059              	.L430:
 2060 006a BAF1000F 		cmp	r10, #0
 2061 006e 3DD0     		beq	.L425
 2062 0070 022E     		cmp	r6, #2
 2063 0072 01FA06F2 		lsl	r2, r1, r6
 2064 0076 39D0     		beq	.L425
 2065 0078 012E     		cmp	r6, #1
 2066 007a 55D0     		beq	.L465
 2067 007c D7F82431 		ldr	r3, [r7, #292]
 2068 0080 1A42     		tst	r2, r3
 2069 0082 40D1     		bne	.L428
 2070 0084 55ED0D7A 		flds	s15, [r5, #-52]
 2071              	.L427:
 2072 0088 0136     		adds	r6, r6, #1
 2073 008a A642     		cmp	r6, r4
 2074 008c E8EC017A 		fstmias	r8!, {s15}
 2075 0090 05F10405 		add	r5, r5, #4
 2076 0094 E9D1     		bne	.L430
 2077              	.L429:
 2078 0096 07EB8403 		add	r3, r7, r4, lsl #2
 2079 009a A433     		adds	r3, r3, #164
 2080 009c 09EB8402 		add	r2, r9, r4, lsl #2
 2081              	.L424:
 2082 00a0 D3ED007A 		flds	s15, [r3]
 2083 00a4 C7EE887A 		fdivs	s15, s15, s16
 2084 00a8 0134     		adds	r4, r4, #1
 2085 00aa 092C     		cmp	r4, #9
 2086 00ac E2EC017A 		fstmias	r2!, {s15}
 2087 00b0 B3EC017A 		fldmias	r3!, {s14}
 2088 00b4 77EE677A 		fsubs	s15, s14, s15
 2089 00b8 43ED017A 		fsts	s15, [r3, #-4]
 2090 00bc F0D9     		bls	.L424
 2091 00be 0BF1FF33 		add	r3, fp, #-1
 2092 00c2 C7F8FC30 		str	r3, [r7, #252]
 2093              	.L421:
 2094 00c6 99F85240 		ldrb	r4, [r9, #82]	@ zero_extendqisi2
 2095 00ca 34B9     		cbnz	r4, .L432
 2096 00cc D7EDB97A 		flds	s15, [r7, #740]
 2097 00d0 F5EE407A 		fcmpzs	s15
 2098 00d4 F1EE10FA 		fmstat
 2099 00d8 45D1     		bne	.L466
 2100              	.L432:
 2101 00da 0023     		movs	r3, #0
 2102 00dc 0120     		movs	r0, #1
 2103 00de C9F84C30 		str	r3, [r9, #76]	@ float
 2104              	.L419:
 2105 00e2 03B0     		add	sp, sp, #12
 2106              		@ sp needed
 2107 00e4 BDEC028B 		fldmfdd	sp!, {d8}
 2108 00e8 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2109              	.L425:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 38


 2110 00ec 15ED0D7A 		flds	s14, [r5, #-52]
 2111 00f0 55ED177A 		flds	s15, [r5, #-92]
 2112 00f4 77EEC77A 		fsubs	s15, s15, s14
 2113 00f8 C7EE887A 		fdivs	s15, s15, s16
 2114 00fc 77EE277A 		fadds	s15, s14, s15
 2115 0100 45ED0D7A 		fsts	s15, [r5, #-52]
 2116 0104 C0E7     		b	.L427
 2117              	.L428:
 2118 0106 D7F81C01 		ldr	r0, [r7, #284]	@ float
 2119 010a 0191     		str	r1, [sp, #4]
 2120 010c FFF7FEFF 		bl	cosf
 2121 0110 97ED467A 		flds	s14, [r7, #280]
 2122 0114 D5ED007A 		flds	s15, [r5]
 2123 0118 06EE900A 		fmsr	s13, r0
 2124 011c E7EE267A 		vfma.f32	s15, s14, s13
 2125 0120 45ED0D7A 		fsts	s15, [r5, #-52]
 2126 0124 0199     		ldr	r1, [sp, #4]
 2127 0126 AFE7     		b	.L427
 2128              	.L465:
 2129 0128 D7F81C01 		ldr	r0, [r7, #284]	@ float
 2130 012c 0191     		str	r1, [sp, #4]
 2131 012e FFF7FEFF 		bl	sinf
 2132 0132 97ED467A 		flds	s14, [r7, #280]
 2133 0136 D7ED417A 		flds	s15, [r7, #260]
 2134 013a 0199     		ldr	r1, [sp, #4]
 2135 013c 06EE900A 		fmsr	s13, r0
 2136 0140 E7EE267A 		vfma.f32	s15, s14, s13
 2137 0144 C7ED347A 		fsts	s15, [r7, #208]
 2138 0148 55ED0D7A 		flds	s15, [r5, #-52]
 2139 014c 9CE7     		b	.L427
 2140              	.L463:
 2141 014e 0023     		movs	r3, #0
 2142 0150 C7F8FC30 		str	r3, [r7, #252]
 2143 0154 87F82831 		strb	r3, [r7, #296]
 2144 0158 A7F8F430 		strh	r3, [r7, #244]	@ movhi
 2145 015c 87F8F630 		strb	r3, [r7, #246]
 2146 0160 87F8F730 		strb	r3, [r7, #247]
 2147 0164 AFE7     		b	.L421
 2148              	.L466:
 2149 0166 4A48     		ldr	r0, .L469
 2150 0168 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 2151 016c D7F8B051 		ldr	r5, [r7, #432]
 2152 0170 DFED487A 		flds	s15, .L469+4
 2153 0174 1DB3     		cbz	r5, .L433
 2154 0176 2346     		mov	r3, r4
 2155 0178 09F12802 		add	r2, r9, #40
 2156 017c 0124     		movs	r4, #1
 2157              	.L437:
 2158 017e 04FA03F1 		lsl	r1, r4, r3
 2159 0182 0142     		tst	r1, r0
 2160 0184 03F10103 		add	r3, r3, #1
 2161 0188 13D0     		beq	.L434
 2162 018a 52ED0A6A 		flds	s13, [r2, #-40]
 2163 018e 92ED007A 		flds	s14, [r2]
 2164 0192 F4EE677A 		fcmps	s15, s15
 2165 0196 36EEC77A 		fsubs	s14, s13, s14
 2166 019a F1EE10FA 		fmstat
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 39


 2167 019e B0EEC77A 		fabss	s14, s14
 2168 01a2 06D6     		bvs	.L434
 2169 01a4 B4EEE77A 		fcmpes	s14, s15
 2170 01a8 F1EE10FA 		fmstat
 2171 01ac 58BF     		it	pl
 2172 01ae F0EE477A 		fcpyspl	s15, s14
 2173              	.L434:
 2174 01b2 AB42     		cmp	r3, r5
 2175 01b4 02F10402 		add	r2, r2, #4
 2176 01b8 E1D1     		bne	.L437
 2177 01ba 67EEA77A 		fmuls	s15, s15, s15
 2178              	.L433:
 2179 01be D9ED015A 		flds	s11, [r9, #4]
 2180 01c2 D9ED0B6A 		flds	s13, [r9, #44]
 2181 01c6 99ED026A 		flds	s12, [r9, #8]
 2182 01ca 99ED0C7A 		flds	s14, [r9, #48]
 2183 01ce 75EEE66A 		fsubs	s13, s11, s13
 2184 01d2 36EE477A 		fsubs	s14, s12, s14
 2185 01d6 E6EEA67A 		vfma.f32	s15, s13, s13
 2186 01da E7EE077A 		vfma.f32	s15, s14, s14
 2187 01de F1EEE76A 		fsqrts	s13, s15
 2188 01e2 F4EE666A 		fcmps	s13, s13
 2189 01e6 F1EE10FA 		fmstat
 2190 01ea 47D1     		bne	.L467
 2191              	.L438:
 2192 01ec D9ED107A 		flds	s15, [r9, #64]
 2193 01f0 3B68     		ldr	r3, [r7]
 2194 01f2 97EDB97A 		flds	s14, [r7, #740]
 2195 01f6 D3ED5E5A 		flds	s11, [r3, #376]
 2196 01fa C6EEA77A 		fdivs	s15, s13, s15
 2197 01fe B4EE477A 		fcmps	s14, s14
 2198 0202 67EEA57A 		fmuls	s15, s15, s11
 2199 0206 F1EE10FA 		fmstat
 2200 020a F1EE676A 		fnegs	s13, s15
 2201 020e 32D6     		bvs	.L445
 2202 0210 F4EEC77A 		fcmpes	s15, s14
 2203 0214 F1EE10FA 		fmstat
 2204 0218 27DD     		ble	.L468
 2205 021a F0EE477A 		fcpys	s15, s14
 2206              	.L440:
 2207 021e F4EEE67A 		fcmpes	s15, s13
 2208 0222 F1EE10FA 		fmstat
 2209 0226 D8BF     		it	le
 2210 0228 F0EE667A 		fcpysle	s15, s13
 2211              	.L439:
 2212 022c 37EE866A 		fadds	s12, s15, s12
 2213 0230 D7EDB85A 		flds	s11, [r7, #736]
 2214 0234 89ED026A 		fsts	s12, [r9, #8]
 2215 0238 D7ED2B6A 		flds	s13, [r7, #172]
 2216 023c C9ED137A 		fsts	s15, [r9, #76]
 2217 0240 37EE677A 		fsubs	s14, s14, s15
 2218 0244 76EEA76A 		fadds	s13, s13, s15
 2219 0248 75EEA77A 		fadds	s15, s11, s15
 2220 024c 87ED356A 		fsts	s12, [r7, #212]
 2221 0250 87EDB97A 		fsts	s14, [r7, #740]
 2222 0254 C7ED2B6A 		fsts	s13, [r7, #172]
 2223 0258 C7EDB87A 		fsts	s15, [r7, #736]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 40


 2224 025c 0120     		movs	r0, #1
 2225 025e 40E7     		b	.L419
 2226              	.L464:
 2227 0260 06EE90BA 		fmsr	s13, fp	@ int
 2228 0264 B8EE668A 		fuitos	s16, s13
 2229 0268 15E7     		b	.L429
 2230              	.L468:
 2231 026a F4EE677A 		fcmps	s15, s15
 2232 026e F1EE10FA 		fmstat
 2233 0272 D4D7     		bvc	.L440
 2234 0274 DAE7     		b	.L439
 2235              	.L445:
 2236 0276 F0EE477A 		fcpys	s15, s14
 2237 027a D7E7     		b	.L439
 2238              	.L467:
 2239 027c 17EE900A 		fmrs	r0, s15
 2240 0280 FFF7FEFF 		bl	sqrtf
 2241 0284 99ED026A 		flds	s12, [r9, #8]
 2242 0288 06EE900A 		fmsr	s13, r0
 2243 028c AEE7     		b	.L438
 2244              	.L470:
 2245 028e 00BF     		.align	2
 2246              	.L469:
 2247 0290 00000000 		.word	reprap
 2248 0294 00000000 		.word	0
 2249              		.size	_ZN6GCodes8ReadMoveERNS_7RawMoveE, .-_ZN6GCodes8ReadMoveERNS_7RawMoveE
 2250              		.section	.text._ZN6GCodes9ClearMoveEv,"ax",%progbits
 2251              		.align	2
 2252              		.global	_ZN6GCodes9ClearMoveEv
 2253              		.thumb
 2254              		.thumb_func
 2255              		.type	_ZN6GCodes9ClearMoveEv, %function
 2256              	_ZN6GCodes9ClearMoveEv:
 2257              		@ args = 0, pretend = 0, frame = 0
 2258              		@ frame_needed = 0, uses_anonymous_args = 0
 2259              		@ link register save eliminated.
 2260 0000 0023     		movs	r3, #0
 2261 0002 C0F8FC30 		str	r3, [r0, #252]
 2262 0006 80F82831 		strb	r3, [r0, #296]
 2263 000a A0F8F430 		strh	r3, [r0, #244]	@ movhi
 2264 000e 80F8F630 		strb	r3, [r0, #246]
 2265 0012 80F8F730 		strb	r3, [r0, #247]
 2266 0016 7047     		bx	lr
 2267              		.size	_ZN6GCodes9ClearMoveEv, .-_ZN6GCodes9ClearMoveEv
 2268              		.section	.text._ZNK6GCodes17GetBabyStepOffsetEv,"ax",%progbits
 2269              		.align	2
 2270              		.global	_ZNK6GCodes17GetBabyStepOffsetEv
 2271              		.thumb
 2272              		.thumb_func
 2273              		.type	_ZNK6GCodes17GetBabyStepOffsetEv, %function
 2274              	_ZNK6GCodes17GetBabyStepOffsetEv:
 2275              		@ args = 0, pretend = 0, frame = 0
 2276              		@ frame_needed = 0, uses_anonymous_args = 0
 2277              		@ link register save eliminated.
 2278 0000 90EDB87A 		flds	s14, [r0, #736]
 2279 0004 D0EDB97A 		flds	s15, [r0, #740]
 2280 0008 77EE277A 		fadds	s15, s14, s15
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 41


 2281 000c 17EE900A 		fmrs	r0, s15
 2282 0010 7047     		bx	lr
 2283              		.size	_ZNK6GCodes17GetBabyStepOffsetEv, .-_ZNK6GCodes17GetBabyStepOffsetEv
 2284 0012 00BF     		.section	.text._ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb,"ax",%progbits
 2285              		.align	2
 2286              		.global	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 2287              		.thumb
 2288              		.thumb_func
 2289              		.type	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb, %function
 2290              	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb:
 2291              		@ args = 4, pretend = 0, frame = 0
 2292              		@ frame_needed = 0, uses_anonymous_args = 0
 2293 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 2294 0004 0646     		mov	r6, r0
 2295 0006 0C46     		mov	r4, r1
 2296 0008 1F46     		mov	r7, r3
 2297 000a 0068     		ldr	r0, [r0]
 2298 000c 1C49     		ldr	r1, .L484
 2299 000e 9DF82080 		ldrb	r8, [sp, #32]	@ zero_extendqisi2
 2300 0012 0023     		movs	r3, #0
 2301 0014 9146     		mov	r9, r2
 2302 0016 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 2303 001a 0546     		mov	r5, r0
 2304 001c 10B3     		cbz	r0, .L481
 2305 001e 2046     		mov	r0, r4
 2306 0020 FFF7FEFF 		bl	_ZN11GCodeBuffer9PushStateEv
 2307 0024 C0B1     		cbz	r0, .L482
 2308 0026 A668     		ldr	r6, [r4, #8]
 2309 0028 B068     		ldr	r0, [r6, #8]
 2310 002a 08B1     		cbz	r0, .L478
 2311 002c FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 2312              	.L478:
 2313 0030 B560     		str	r5, [r6, #8]
 2314 0032 A368     		ldr	r3, [r4, #8]
 2315 0034 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2316 0036 42F00402 		orr	r2, r2, #4
 2317 003a 5A74     		strb	r2, [r3, #17]
 2318 003c A368     		ldr	r3, [r4, #8]
 2319 003e 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 2320 0040 68F30412 		bfi	r2, r8, #4, #1
 2321 0044 5A74     		strb	r2, [r3, #17]
 2322 0046 A368     		ldr	r3, [r4, #8]
 2323 0048 0022     		movs	r2, #0
 2324 004a 2046     		mov	r0, r4
 2325 004c 1A74     		strb	r2, [r3, #16]
 2326 004e FFF7FEFF 		bl	_ZN11GCodeBuffer4InitEv
 2327 0052 0120     		movs	r0, #1
 2328 0054 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 2329              	.L482:
 2330 0058 3046     		mov	r0, r6
 2331 005a FFF7FEFF 		bl	_ZN6GCodes4PushER11GCodeBuffer.part.43
 2332 005e 0120     		movs	r0, #1
 2333 0060 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 2334              	.L481:
 2335 0064 17B9     		cbnz	r7, .L483
 2336 0066 3846     		mov	r0, r7
 2337 0068 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 42


 2338              	.L483:
 2339 006c 3068     		ldr	r0, [r6]
 2340 006e 054A     		ldr	r2, .L484+4
 2341 0070 4B46     		mov	r3, r9
 2342 0072 0621     		movs	r1, #6
 2343 0074 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 2344 0078 0120     		movs	r0, #1
 2345 007a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 2346              	.L485:
 2347 007e 00BF     		.align	2
 2348              	.L484:
 2349 0080 DC010000 		.word	.LC20
 2350 0084 E4010000 		.word	.LC21
 2351              		.size	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb, .-_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 2352              		.section	.text._ZN6GCodes13RunConfigFileEPKc,"ax",%progbits
 2353              		.align	2
 2354              		.global	_ZN6GCodes13RunConfigFileEPKc
 2355              		.thumb
 2356              		.thumb_func
 2357              		.type	_ZN6GCodes13RunConfigFileEPKc, %function
 2358              	_ZN6GCodes13RunConfigFileEPKc:
 2359              		@ args = 0, pretend = 0, frame = 0
 2360              		@ frame_needed = 0, uses_anonymous_args = 0
 2361 0000 10B5     		push	{r4, lr}
 2362 0002 C36C     		ldr	r3, [r0, #76]
 2363 0004 82B0     		sub	sp, sp, #8
 2364 0006 0A46     		mov	r2, r1
 2365 0008 1968     		ldr	r1, [r3]
 2366 000a 0023     		movs	r3, #0
 2367 000c 0093     		str	r3, [sp]
 2368 000e 0446     		mov	r4, r0
 2369 0010 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 2370 0014 84F8A200 		strb	r0, [r4, #162]
 2371 0018 02B0     		add	sp, sp, #8
 2372              		@ sp needed
 2373 001a 10BD     		pop	{r4, pc}
 2374              		.size	_ZN6GCodes13RunConfigFileEPKc, .-_ZN6GCodes13RunConfigFileEPKc
 2375              		.section	.text._ZN6GCodes13CheckTriggersEv,"ax",%progbits
 2376              		.align	2
 2377              		.global	_ZN6GCodes13CheckTriggersEv
 2378              		.thumb
 2379              		.thumb_func
 2380              		.type	_ZN6GCodes13CheckTriggersEv, %function
 2381              	_ZN6GCodes13CheckTriggersEv:
 2382              		@ args = 0, pretend = 0, frame = 40
 2383              		@ frame_needed = 0, uses_anonymous_args = 0
 2384 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 2385 0004 0446     		mov	r4, r0
 2386 0006 8DB0     		sub	sp, sp, #52
 2387 0008 0068     		ldr	r0, [r0]
 2388 000a B4F85673 		ldrh	r7, [r4, #854]
 2389 000e FFF7FEFF 		bl	_ZNK8Platform19GetAllEndstopStatesEv
 2390 0012 DFF84CC1 		ldr	ip, .L521+4
 2391 0016 A4F85603 		strh	r0, [r4, #854]	@ movhi
 2392 001a BBB2     		uxth	r3, r7
 2393 001c 87B2     		uxth	r7, r0
 2394 001e 27EA0306 		bic	r6, r7, r3
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 43


 2395 0022 DCF81C80 		ldr	r8, [ip, #28]
 2396 0026 23EA0707 		bic	r7, r3, r7
 2397 002a 2146     		mov	r1, r4
 2398 002c 0023     		movs	r3, #0
 2399 002e 0A22     		movs	r2, #10
 2400 0030 0125     		movs	r5, #1
 2401 0032 10E0     		b	.L493
 2402              	.L518:
 2403 0034 0128     		cmp	r0, #1
 2404 0036 23D0     		beq	.L516
 2405              	.L489:
 2406 0038 9A42     		cmp	r2, r3
 2407 003a 01F10601 		add	r1, r1, #6
 2408 003e 07D9     		bls	.L491
 2409 0040 D4F85803 		ldr	r0, [r4, #856]
 2410 0044 05FA03F9 		lsl	r9, r5, r3
 2411 0048 19EA000F 		tst	r9, r0
 2412 004c 18BF     		it	ne
 2413 004e 1A46     		movne	r2, r3
 2414              	.L491:
 2415 0050 0133     		adds	r3, r3, #1
 2416 0052 0A2B     		cmp	r3, #10
 2417 0054 1FD0     		beq	.L517
 2418              	.L493:
 2419 0056 B1F81A03 		ldrh	r0, [r1, #794]
 2420 005a 0642     		tst	r6, r0
 2421 005c 03D1     		bne	.L488
 2422 005e B1F81C03 		ldrh	r0, [r1, #796]
 2423 0062 0742     		tst	r7, r0
 2424 0064 E8D0     		beq	.L489
 2425              	.L488:
 2426 0066 91F81E03 		ldrb	r0, [r1, #798]	@ zero_extendqisi2
 2427 006a 05FA03F9 		lsl	r9, r5, r3
 2428 006e 0028     		cmp	r0, #0
 2429 0070 E0D1     		bne	.L518
 2430 0072 D4F85803 		ldr	r0, [r4, #856]
 2431 0076 40EA0900 		orr	r0, r0, r9
 2432 007a C4F85803 		str	r0, [r4, #856]
 2433 007e DBE7     		b	.L489
 2434              	.L516:
 2435 0080 98F81000 		ldrb	r0, [r8, #16]	@ zero_extendqisi2
 2436 0084 0028     		cmp	r0, #0
 2437 0086 D7D0     		beq	.L489
 2438 0088 D4F85803 		ldr	r0, [r4, #856]
 2439 008c 40EA0900 		orr	r0, r0, r9
 2440 0090 C4F85803 		str	r0, [r4, #856]
 2441 0094 D0E7     		b	.L489
 2442              	.L517:
 2443 0096 4AB1     		cbz	r2, .L519
 2444 0098 0A2A     		cmp	r2, #10
 2445 009a 04D0     		beq	.L487
 2446 009c E06C     		ldr	r0, [r4, #76]
 2447 009e 0168     		ldr	r1, [r0]
 2448 00a0 8B68     		ldr	r3, [r1, #8]
 2449 00a2 9D68     		ldr	r5, [r3, #8]
 2450 00a4 75B1     		cbz	r5, .L520
 2451              	.L487:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 44


 2452 00a6 0DB0     		add	sp, sp, #52
 2453              		@ sp needed
 2454 00a8 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2455              	.L519:
 2456 00ac D4F85833 		ldr	r3, [r4, #856]
 2457 00b0 23F00103 		bic	r3, r3, #1
 2458 00b4 C4F85833 		str	r3, [r4, #856]
 2459 00b8 2046     		mov	r0, r4
 2460 00ba FFF7FEFF 		bl	_ZN6GCodes15DoEmergencyStopEv
 2461 00be 0DB0     		add	sp, sp, #52
 2462              		@ sp needed
 2463 00c0 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2464              	.L520:
 2465 00c4 1E7C     		ldrb	r6, [r3, #16]	@ zero_extendqisi2
 2466 00c6 002E     		cmp	r6, #0
 2467 00c8 EDD1     		bne	.L487
 2468 00ca 012A     		cmp	r2, #1
 2469 00cc 1ED1     		bne	.L514
 2470 00ce 94F8A130 		ldrb	r3, [r4, #161]	@ zero_extendqisi2
 2471 00d2 002B     		cmp	r3, #0
 2472 00d4 38D1     		bne	.L497
 2473 00d6 DCF81C30 		ldr	r3, [ip, #28]
 2474 00da 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 2475 00dc 002B     		cmp	r3, #0
 2476 00de 33D0     		beq	.L497
 2477 00e0 A36D     		ldr	r3, [r4, #88]
 2478 00e2 9942     		cmp	r1, r3
 2479 00e4 08D0     		beq	.L499
 2480 00e6 002B     		cmp	r3, #0
 2481 00e8 DDD1     		bne	.L487
 2482 00ea A165     		str	r1, [r4, #88]
 2483 00ec 8B68     		ldr	r3, [r1, #8]
 2484 00ee 0168     		ldr	r1, [r0]
 2485 00f0 DA68     		ldr	r2, [r3, #12]
 2486 00f2 42F00102 		orr	r2, r2, #1
 2487 00f6 DA60     		str	r2, [r3, #12]
 2488              	.L499:
 2489 00f8 D4F85833 		ldr	r3, [r4, #856]
 2490 00fc 23F00203 		bic	r3, r3, #2
 2491 0100 C4F85833 		str	r3, [r4, #856]
 2492 0104 2046     		mov	r0, r4
 2493 0106 FFF7FEFF 		bl	_ZN6GCodes7DoPauseER11GCodeBuffer
 2494 010a CCE7     		b	.L487
 2495              	.L514:
 2496 010c D4F85833 		ldr	r3, [r4, #856]
 2497 0110 1249     		ldr	r1, .L521
 2498 0112 8DF81460 		strb	r6, [sp, #20]
 2499 0116 0125     		movs	r5, #1
 2500 0118 05FA02F0 		lsl	r0, r5, r2
 2501 011c 23EA0003 		bic	r3, r3, r0
 2502 0120 C4F85833 		str	r3, [r4, #856]
 2503 0124 05AF     		add	r7, sp, #20
 2504 0126 1923     		movs	r3, #25
 2505 0128 03A8     		add	r0, sp, #12
 2506 012a 0493     		str	r3, [sp, #16]
 2507 012c 0397     		str	r7, [sp, #12]
 2508 012e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 45


 2509 0132 E36C     		ldr	r3, [r4, #76]
 2510 0134 039A     		ldr	r2, [sp, #12]
 2511 0136 1968     		ldr	r1, [r3]
 2512 0138 0096     		str	r6, [sp]
 2513 013a 2B46     		mov	r3, r5
 2514 013c 2046     		mov	r0, r4
 2515 013e FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 2516 0142 0DB0     		add	sp, sp, #52
 2517              		@ sp needed
 2518 0144 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2519              	.L497:
 2520 0148 D4F85833 		ldr	r3, [r4, #856]
 2521 014c 23F00203 		bic	r3, r3, #2
 2522 0150 C4F85833 		str	r3, [r4, #856]
 2523 0154 0DB0     		add	sp, sp, #52
 2524              		@ sp needed
 2525 0156 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2526              	.L522:
 2527 015a 00BF     		.align	2
 2528              	.L521:
 2529 015c 00020000 		.word	.LC22
 2530 0160 00000000 		.word	reprap
 2531              		.size	_ZN6GCodes13CheckTriggersEv, .-_ZN6GCodes13CheckTriggersEv
 2532              		.section	.text._ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer,"ax",%progbits
 2533              		.align	2
 2534              		.global	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer
 2535              		.thumb
 2536              		.thumb_func
 2537              		.type	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer, %function
 2538              	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer:
 2539              		@ args = 0, pretend = 0, frame = 0
 2540              		@ frame_needed = 0, uses_anonymous_args = 0
 2541 0000 8B68     		ldr	r3, [r1, #8]
 2542 0002 5B7C     		ldrb	r3, [r3, #17]	@ zero_extendqisi2
 2543 0004 5B07     		lsls	r3, r3, #29
 2544 0006 10B5     		push	{r4, lr}
 2545 0008 0C46     		mov	r4, r1
 2546 000a 00D4     		bmi	.L525
 2547 000c 10BD     		pop	{r4, pc}
 2548              	.L525:
 2549 000e 0846     		mov	r0, r1
 2550 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer8PopStateEv
 2551 0014 2046     		mov	r0, r4
 2552 0016 BDE81040 		pop	{r4, lr}
 2553 001a FFF7FEBF 		b	_ZN11GCodeBuffer4InitEv
 2554              		.size	_ZN6GCodes21FileMacroCyclesReturnER11GCodeBuffer, .-_ZN6GCodes21FileMacroCyclesReturnER11GCo
 2555 001e 00BF     		.section	.text._ZN6GCodes17DoCannedCycleMoveER11GCodeBuffert,"ax",%progbits
 2556              		.align	2
 2557              		.global	_ZN6GCodes17DoCannedCycleMoveER11GCodeBuffert
 2558              		.thumb
 2559              		.thumb_func
 2560              		.type	_ZN6GCodes17DoCannedCycleMoveER11GCodeBuffert, %function
 2561              	_ZN6GCodes17DoCannedCycleMoveER11GCodeBuffert:
 2562              		@ args = 0, pretend = 0, frame = 0
 2563              		@ frame_needed = 0, uses_anonymous_args = 0
 2564 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2565 0002 1746     		mov	r7, r2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 46


 2566 0004 0446     		mov	r4, r0
 2567 0006 0D46     		mov	r5, r1
 2568 0008 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2569 000c 0028     		cmp	r0, #0
 2570 000e 42D0     		beq	.L535
 2571 0010 94F89562 		ldrb	r6, [r4, #661]	@ zero_extendqisi2
 2572 0014 002E     		cmp	r6, #0
 2573 0016 41D1     		bne	.L538
 2574 0018 2846     		mov	r0, r5
 2575 001a FFF7FEFF 		bl	_ZN11GCodeBuffer9PushStateEv
 2576 001e 0028     		cmp	r0, #0
 2577 0020 45D0     		beq	.L539
 2578 0022 AB68     		ldr	r3, [r5, #8]
 2579 0024 1A68     		ldr	r2, [r3]
 2580 0026 127C     		ldrb	r2, [r2, #16]	@ zero_extendqisi2
 2581 0028 1A74     		strb	r2, [r3, #16]
 2582 002a 04F1A401 		add	r1, r4, #164
 2583 002e 3346     		mov	r3, r6
 2584 0030 09E0     		b	.L536
 2585              	.L541:
 2586 0032 022D     		cmp	r5, #2
 2587 0034 02D1     		bne	.L531
 2588 0036 D1F89021 		ldr	r2, [r1, #400]	@ float
 2589 003a 0A60     		str	r2, [r1]	@ float
 2590              	.L531:
 2591 003c 0133     		adds	r3, r3, #1
 2592 003e 0A2B     		cmp	r3, #10
 2593 0040 01F10401 		add	r1, r1, #4
 2594 0044 11D0     		beq	.L540
 2595              	.L536:
 2596 0046 E518     		adds	r5, r4, r3
 2597 0048 95F86052 		ldrb	r5, [r5, #608]	@ zero_extendqisi2
 2598 004c 012D     		cmp	r5, #1
 2599 004e F0D1     		bne	.L541
 2600 0050 91ED007A 		flds	s14, [r1]
 2601 0054 D1ED647A 		flds	s15, [r1, #400]
 2602 0058 0133     		adds	r3, r3, #1
 2603 005a 77EE277A 		fadds	s15, s14, s15
 2604 005e 0A2B     		cmp	r3, #10
 2605 0060 C1ED007A 		fsts	s15, [r1]
 2606 0064 01F10401 		add	r1, r1, #4
 2607 0068 EDD1     		bne	.L536
 2608              	.L540:
 2609 006a 0023     		movs	r3, #0
 2610 006c 0121     		movs	r1, #1
 2611 006e D4F85C02 		ldr	r0, [r4, #604]	@ float
 2612 0072 C4F8EC30 		str	r3, [r4, #236]
 2613 0076 4FF0FF32 		mov	r2, #-1
 2614 007a 84F8F830 		strb	r3, [r4, #248]
 2615 007e 3B04     		lsls	r3, r7, #16
 2616 0080 A4F8F470 		strh	r7, [r4, #244]	@ movhi
 2617 0084 C4F8E400 		str	r0, [r4, #228]	@ float
 2618 0088 C4F8E820 		str	r2, [r4, #232]
 2619 008c C4F8FC10 		str	r1, [r4, #252]
 2620 0090 84F89512 		strb	r1, [r4, #661]
 2621 0094 11D4     		bmi	.L542
 2622              	.L535:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 47


 2623 0096 0026     		movs	r6, #0
 2624              	.L537:
 2625 0098 3046     		mov	r0, r6
 2626 009a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2627              	.L538:
 2628 009c 2046     		mov	r0, r4
 2629 009e 2946     		mov	r1, r5
 2630 00a0 FFF7FEFF 		bl	_ZN6GCodes3PopER11GCodeBuffer
 2631 00a4 0023     		movs	r3, #0
 2632 00a6 84F89532 		strb	r3, [r4, #661]
 2633 00aa 3046     		mov	r0, r6
 2634 00ac F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2635              	.L539:
 2636 00ae 2046     		mov	r0, r4
 2637 00b0 0126     		movs	r6, #1
 2638 00b2 FFF7FEFF 		bl	_ZN6GCodes4PushER11GCodeBuffer.part.43
 2639 00b6 3046     		mov	r0, r6
 2640 00b8 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2641              	.L542:
 2642 00ba 2068     		ldr	r0, [r4]
 2643 00bc FFF7FEFF 		bl	_ZN8Platform10SetProbingEb
 2644 00c0 EAE7     		b	.L537
 2645              		.size	_ZN6GCodes17DoCannedCycleMoveER11GCodeBuffert, .-_ZN6GCodes17DoCannedCycleMoveER11GCodeBuffe
 2646 00c2 00BF     		.section	.text._ZN6GCodes10OffsetAxesER11GCodeBuffer,"ax",%progbits
 2647              		.align	2
 2648              		.global	_ZN6GCodes10OffsetAxesER11GCodeBuffer
 2649              		.thumb
 2650              		.thumb_func
 2651              		.type	_ZN6GCodes10OffsetAxesER11GCodeBuffer, %function
 2652              	_ZN6GCodes10OffsetAxesER11GCodeBuffer:
 2653              		@ args = 0, pretend = 0, frame = 0
 2654              		@ frame_needed = 0, uses_anonymous_args = 0
 2655 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2656 0004 90F86A42 		ldrb	r4, [r0, #618]	@ zero_extendqisi2
 2657 0008 0746     		mov	r7, r0
 2658 000a 8946     		mov	r9, r1
 2659 000c 002C     		cmp	r4, #0
 2660 000e 47D1     		bne	.L544
 2661 0010 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2662 0014 0028     		cmp	r0, #0
 2663 0016 64D0     		beq	.L553
 2664 0018 4FF0000B 		mov	fp, #0
 2665 001c DFF8F4A0 		ldr	r10, .L565+12
 2666 0020 A046     		mov	r8, r4
 2667 0022 3E46     		mov	r6, r7
 2668 0024 07F50D75 		add	r5, r7, #564
 2669 0028 08E0     		b	.L550
 2670              	.L547:
 2671 002a 45F828BC 		str	fp, [r5, #-40]	@ float
 2672              	.L548:
 2673 002e 0134     		adds	r4, r4, #1
 2674 0030 0A2C     		cmp	r4, #10
 2675 0032 06F10106 		add	r6, r6, #1
 2676 0036 05F10405 		add	r5, r5, #4
 2677 003a 26D0     		beq	.L563
 2678              	.L550:
 2679 003c 86F86082 		strb	r8, [r6, #608]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 48


 2680 0040 D7F8B031 		ldr	r3, [r7, #432]
 2681 0044 A342     		cmp	r3, r4
 2682 0046 F0D9     		bls	.L547
 2683 0048 A5F5C873 		sub	r3, r5, #400
 2684 004c 1AF80410 		ldrb	r1, [r10, r4]	@ zero_extendqisi2
 2685 0050 1B68     		ldr	r3, [r3]	@ float
 2686 0052 45F8283C 		str	r3, [r5, #-40]	@ float
 2687 0056 4846     		mov	r0, r9
 2688 0058 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2689 005c 0028     		cmp	r0, #0
 2690 005e E6D0     		beq	.L548
 2691 0060 4846     		mov	r0, r9
 2692 0062 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2693 0066 D7ED9B7A 		flds	s15, [r7, #620]
 2694 006a 06EE900A 		fmsr	s13, r0
 2695 006e 0134     		adds	r4, r4, #1
 2696 0070 66EEA77A 		fmuls	s15, s13, s15
 2697 0074 0123     		movs	r3, #1
 2698 0076 0A2C     		cmp	r4, #10
 2699 0078 C5ED007A 		fsts	s15, [r5]
 2700 007c 06F10106 		add	r6, r6, #1
 2701 0080 86F85F32 		strb	r3, [r6, #607]
 2702 0084 05F10405 		add	r5, r5, #4
 2703 0088 D8D1     		bne	.L550
 2704              	.L563:
 2705 008a 4846     		mov	r0, r9
 2706 008c 4621     		movs	r1, #70
 2707 008e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2708 0092 48BB     		cbnz	r0, .L564
 2709 0094 1C4B     		ldr	r3, .L565
 2710 0096 C7F85C32 		str	r3, [r7, #604]	@ float
 2711              	.L552:
 2712 009a 0123     		movs	r3, #1
 2713 009c 87F86A32 		strb	r3, [r7, #618]
 2714              	.L544:
 2715 00a0 4946     		mov	r1, r9
 2716 00a2 3846     		mov	r0, r7
 2717 00a4 0022     		movs	r2, #0
 2718 00a6 FFF7FEFF 		bl	_ZN6GCodes17DoCannedCycleMoveER11GCodeBuffert
 2719 00aa D0B1     		cbz	r0, .L553
 2720 00ac 07F50376 		add	r6, r7, #524
 2721 00b0 3246     		mov	r2, r6
 2722 00b2 0023     		movs	r3, #0
 2723              	.L555:
 2724 00b4 52F8045B 		ldr	r5, [r2], #4	@ float
 2725 00b8 0133     		adds	r3, r3, #1
 2726 00ba A2F5B674 		sub	r4, r2, #364
 2727 00be 0A2B     		cmp	r3, #10
 2728 00c0 2560     		str	r5, [r4]	@ float
 2729 00c2 F7D1     		bne	.L555
 2730 00c4 114C     		ldr	r4, .L565+4
 2731 00c6 3146     		mov	r1, r6
 2732 00c8 A068     		ldr	r0, [r4, #8]
 2733 00ca FFF7FEFF 		bl	_ZN4Move18SetLiveCoordinatesEPKf
 2734 00ce A068     		ldr	r0, [r4, #8]
 2735 00d0 3146     		mov	r1, r6
 2736 00d2 FFF7FEFF 		bl	_ZN4Move12SetPositionsEPKf
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 49


 2737 00d6 0023     		movs	r3, #0
 2738 00d8 87F86A32 		strb	r3, [r7, #618]
 2739 00dc 0120     		movs	r0, #1
 2740 00de BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2741              	.L553:
 2742 00e2 0020     		movs	r0, #0
 2743 00e4 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2744              	.L564:
 2745 00e8 4846     		mov	r0, r9
 2746 00ea FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 2747 00ee D7ED9B7A 		flds	s15, [r7, #620]
 2748 00f2 9FED077A 		flds	s14, .L565+8
 2749 00f6 06EE900A 		fmsr	s13, r0
 2750 00fa 66EEA77A 		fmuls	s15, s13, s15
 2751 00fe 67EE877A 		fmuls	s15, s15, s14
 2752 0102 C7ED977A 		fsts	s15, [r7, #604]
 2753 0106 C8E7     		b	.L552
 2754              	.L566:
 2755              		.align	2
 2756              	.L565:
 2757 0108 00803B45 		.word	1161527296
 2758 010c 00000000 		.word	reprap
 2759 0110 8988883C 		.word	1015580809
 2760 0114 00000000 		.word	.LANCHOR0
 2761              		.size	_ZN6GCodes10OffsetAxesER11GCodeBuffer, .-_ZN6GCodes10OffsetAxesER11GCodeBuffer
 2762              		.section	.text._ZN6GCodes6DoHomeER11GCodeBufferR9StringRefRb,"ax",%progbits
 2763              		.align	2
 2764              		.global	_ZN6GCodes6DoHomeER11GCodeBufferR9StringRefRb
 2765              		.thumb
 2766              		.thumb_func
 2767              		.type	_ZN6GCodes6DoHomeER11GCodeBufferR9StringRefRb, %function
 2768              	_ZN6GCodes6DoHomeER11GCodeBufferR9StringRefRb:
 2769              		@ args = 0, pretend = 0, frame = 0
 2770              		@ frame_needed = 0, uses_anonymous_args = 0
 2771 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2772 0004 83B0     		sub	sp, sp, #12
 2773 0006 9246     		mov	r10, r2
 2774 0008 9B46     		mov	fp, r3
 2775 000a 0546     		mov	r5, r0
 2776 000c 0E46     		mov	r6, r1
 2777 000e FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 2778 0012 0746     		mov	r7, r0
 2779 0014 0028     		cmp	r0, #0
 2780 0016 4FD0     		beq	.L586
 2781 0018 444B     		ldr	r3, .L600
 2782 001a 9B68     		ldr	r3, [r3, #8]
 2783 001c 93F8BC4A 		ldrb	r4, [r3, #2748]	@ zero_extendqisi2
 2784 0020 002C     		cmp	r4, #0
 2785 0022 61D1     		bne	.L599
 2786 0024 D5F8B031 		ldr	r3, [r5, #432]
 2787 0028 A5F87C42 		strh	r4, [r5, #636]	@ movhi
 2788 002c 002B     		cmp	r3, #0
 2789 002e 47D0     		beq	.L570
 2790 0030 DFF80891 		ldr	r9, .L600+16
 2791 0034 4FF00108 		mov	r8, #1
 2792              	.L573:
 2793 0038 19F80410 		ldrb	r1, [r9, r4]	@ zero_extendqisi2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 50


 2794 003c 3046     		mov	r0, r6
 2795 003e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 2796 0042 08FA04F3 		lsl	r3, r8, r4
 2797 0046 0134     		adds	r4, r4, #1
 2798 0048 50B1     		cbz	r0, .L571
 2799 004a B5F87C12 		ldrh	r1, [r5, #636]
 2800 004e D5F89822 		ldr	r2, [r5, #664]
 2801 0052 1943     		orrs	r1, r1, r3
 2802 0054 22EA0303 		bic	r3, r2, r3
 2803 0058 A5F87C12 		strh	r1, [r5, #636]	@ movhi
 2804 005c C5F89832 		str	r3, [r5, #664]
 2805              	.L571:
 2806 0060 D5F8B031 		ldr	r3, [r5, #432]
 2807 0064 A342     		cmp	r3, r4
 2808 0066 E7D8     		bhi	.L573
 2809 0068 B5F87C22 		ldrh	r2, [r5, #636]
 2810 006c 42B3     		cbz	r2, .L570
 2811 006e 5007     		lsls	r0, r2, #29
 2812 0070 4FD4     		bmi	.L574
 2813              	.L578:
 2814 0072 0124     		movs	r4, #1
 2815 0074 04FA03F3 		lsl	r3, r4, r3
 2816 0078 013B     		subs	r3, r3, #1
 2817 007a 9A42     		cmp	r2, r3
 2818 007c 25D0     		beq	.L579
 2819 007e 2868     		ldr	r0, [r5]
 2820 0080 FFF7FEFF 		bl	_ZNK8Platform17MustHomeXYBeforeZEv
 2821 0084 0346     		mov	r3, r0
 2822 0086 0028     		cmp	r0, #0
 2823 0088 49D0     		beq	.L576
 2824 008a B5F87C22 		ldrh	r2, [r5, #636]
 2825 008e 5107     		lsls	r1, r2, #29
 2826 0090 45D5     		bpl	.L576
 2827 0092 D5F89802 		ldr	r0, [r5, #664]
 2828 0096 D5F8B011 		ldr	r1, [r5, #432]
 2829 009a 40F00400 		orr	r0, r0, #4
 2830 009e 04FA01F1 		lsl	r1, r4, r1
 2831 00a2 0243     		orrs	r2, r2, r0
 2832 00a4 0139     		subs	r1, r1, #1
 2833 00a6 8A42     		cmp	r2, r1
 2834 00a8 39D0     		beq	.L576
 2835 00aa 5046     		mov	r0, r10
 2836 00ac 2049     		ldr	r1, .L600+4
 2837 00ae 1F46     		mov	r7, r3
 2838 00b0 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 2839 00b4 8BF80040 		strb	r4, [fp]
 2840              	.L586:
 2841 00b8 3846     		mov	r0, r7
 2842 00ba 03B0     		add	sp, sp, #12
 2843              		@ sp needed
 2844 00bc BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2845              	.L570:
 2846 00c0 0023     		movs	r3, #0
 2847 00c2 C5F8E032 		str	r3, [r5, #736]	@ float
 2848 00c6 C5F8E432 		str	r3, [r5, #740]	@ float
 2849              	.L579:
 2850 00ca 1A4B     		ldr	r3, .L600+8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 51


 2851 00cc 1A68     		ldr	r2, [r3]
 2852 00ce 0023     		movs	r3, #0
 2853 00d0 C5F89832 		str	r3, [r5, #664]
 2854 00d4 3146     		mov	r1, r6
 2855 00d6 0093     		str	r3, [sp]
 2856 00d8 2846     		mov	r0, r5
 2857 00da 0123     		movs	r3, #1
 2858 00dc FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 2859 00e0 3846     		mov	r0, r7
 2860 00e2 03B0     		add	sp, sp, #12
 2861              		@ sp needed
 2862 00e4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2863              	.L599:
 2864 00e8 134B     		ldr	r3, .L600+12
 2865 00ea 0020     		movs	r0, #0
 2866 00ec 1A68     		ldr	r2, [r3]
 2867 00ee C5F8E002 		str	r0, [r5, #736]	@ float
 2868 00f2 0023     		movs	r3, #0
 2869 00f4 C5F8E402 		str	r0, [r5, #740]	@ float
 2870 00f8 C5F89832 		str	r3, [r5, #664]
 2871 00fc 3146     		mov	r1, r6
 2872 00fe 0093     		str	r3, [sp]
 2873 0100 2846     		mov	r0, r5
 2874 0102 0123     		movs	r3, #1
 2875 0104 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 2876 0108 2746     		mov	r7, r4
 2877 010a 3846     		mov	r0, r7
 2878 010c 03B0     		add	sp, sp, #12
 2879              		@ sp needed
 2880 010e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2881              	.L574:
 2882 0112 0021     		movs	r1, #0
 2883 0114 C5F8E012 		str	r1, [r5, #736]	@ float
 2884 0118 C5F8E412 		str	r1, [r5, #740]	@ float
 2885 011c A9E7     		b	.L578
 2886              	.L576:
 2887 011e B368     		ldr	r3, [r6, #8]
 2888 0120 0222     		movs	r2, #2
 2889 0122 3846     		mov	r0, r7
 2890 0124 1A74     		strb	r2, [r3, #16]
 2891 0126 03B0     		add	sp, sp, #12
 2892              		@ sp needed
 2893 0128 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2894              	.L601:
 2895              		.align	2
 2896              	.L600:
 2897 012c 00000000 		.word	reprap
 2898 0130 14020000 		.word	.LC23
 2899 0134 00000000 		.word	.LANCHOR2
 2900 0138 00000000 		.word	.LANCHOR1
 2901 013c 00000000 		.word	.LANCHOR0
 2902              		.size	_ZN6GCodes6DoHomeER11GCodeBufferR9StringRefRb, .-_ZN6GCodes6DoHomeER11GCodeBufferR9StringRef
 2903              		.section	.text._ZN6GCodes8DoZProbeER11GCodeBufferf,"ax",%progbits
 2904              		.align	2
 2905              		.global	_ZN6GCodes8DoZProbeER11GCodeBufferf
 2906              		.thumb
 2907              		.thumb_func
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 52


 2908              		.type	_ZN6GCodes8DoZProbeER11GCodeBufferf, %function
 2909              	_ZN6GCodes8DoZProbeER11GCodeBufferf:
 2910              		@ args = 0, pretend = 0, frame = 8
 2911              		@ frame_needed = 0, uses_anonymous_args = 0
 2912 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2913 0002 0546     		mov	r5, r0
 2914 0004 0068     		ldr	r0, [r0]
 2915 0006 0F46     		mov	r7, r1
 2916 0008 D0F89010 		ldr	r1, [r0, #144]
 2917 000c 0729     		cmp	r1, #7
 2918 000e 85B0     		sub	sp, sp, #20
 2919 0010 39D0     		beq	.L613
 2920 0012 95F89542 		ldrb	r4, [r5, #661]	@ zero_extendqisi2
 2921 0016 44B3     		cbz	r4, .L614
 2922              	.L605:
 2923 0018 0023     		movs	r3, #0
 2924 001a 1E46     		mov	r6, r3
 2925              	.L607:
 2926 001c EC18     		adds	r4, r5, r3
 2927 001e 0133     		adds	r3, r3, #1
 2928 0020 0A2B     		cmp	r3, #10
 2929 0022 84F86062 		strb	r6, [r4, #608]
 2930 0026 F9D1     		bne	.L607
 2931 0028 07EE102A 		fmsr	s14, r2
 2932 002c 0122     		movs	r2, #1
 2933 002e F1EE477A 		fnegs	s15, s14
 2934 0032 85F86222 		strb	r2, [r5, #610]
 2935 0036 C5ED8F7A 		fsts	s15, [r5, #572]
 2936 003a FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersEl
 2937 003e C369     		ldr	r3, [r0, #28]	@ float
 2938 0040 C5F85C32 		str	r3, [r5, #604]	@ float
 2939 0044 3946     		mov	r1, r7
 2940 0046 2846     		mov	r0, r5
 2941 0048 4FF40042 		mov	r2, #32768
 2942 004c FFF7FEFF 		bl	_ZN6GCodes17DoCannedCycleMoveER11GCodeBuffert
 2943 0050 38B3     		cbz	r0, .L610
 2944 0052 2868     		ldr	r0, [r5]
 2945 0054 0021     		movs	r1, #0
 2946 0056 FFF7FEFF 		bl	_ZN8Platform10SetProbingEb
 2947 005a 95F8F032 		ldrb	r3, [r5, #752]	@ zero_extendqisi2
 2948 005e 002B     		cmp	r3, #0
 2949 0060 0CBF     		ite	eq
 2950 0062 0120     		moveq	r0, #1
 2951 0064 0220     		movne	r0, #2
 2952              	.L604:
 2953 0066 05B0     		add	sp, sp, #20
 2954              		@ sp needed
 2955 0068 F0BD     		pop	{r4, r5, r6, r7, pc}
 2956              	.L614:
 2957 006a 104B     		ldr	r3, .L615
 2958 006c 1868     		ldr	r0, [r3]
 2959 006e 0392     		str	r2, [sp, #12]
 2960 0070 FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 2961 0074 0128     		cmp	r0, #1
 2962 0076 039A     		ldr	r2, [sp, #12]
 2963 0078 16D0     		beq	.L609
 2964 007a 2868     		ldr	r0, [r5]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 53


 2965 007c 85F8F042 		strb	r4, [r5, #752]
 2966 0080 D0F89010 		ldr	r1, [r0, #144]
 2967 0084 C8E7     		b	.L605
 2968              	.L613:
 2969 0086 0392     		str	r2, [sp, #12]
 2970 0088 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersEl
 2971 008c 074C     		ldr	r4, .L615
 2972 008e 039A     		ldr	r2, [sp, #12]
 2973 0090 816A     		ldr	r1, [r0, #40]	@ float
 2974 0092 C369     		ldr	r3, [r0, #28]	@ float
 2975 0094 A068     		ldr	r0, [r4, #8]
 2976 0096 0092     		str	r2, [sp]	@ float
 2977 0098 4FF07E52 		mov	r2, #1065353216
 2978 009c FFF7FEFF 		bl	_ZN4Move12DoDeltaProbeEffff
 2979 00a0 E1E7     		b	.L604
 2980              	.L610:
 2981 00a2 4FF0FF30 		mov	r0, #-1
 2982 00a6 DEE7     		b	.L604
 2983              	.L609:
 2984 00a8 2046     		mov	r0, r4
 2985 00aa DCE7     		b	.L604
 2986              	.L616:
 2987              		.align	2
 2988              	.L615:
 2989 00ac 00000000 		.word	reprap
 2990              		.size	_ZN6GCodes8DoZProbeER11GCodeBufferf, .-_ZN6GCodes8DoZProbeER11GCodeBufferf
 2991              		.section	.text._ZN6GCodes14SetPrintZProbeER11GCodeBufferR9StringRef,"ax",%progbits
 2992              		.align	2
 2993              		.global	_ZN6GCodes14SetPrintZProbeER11GCodeBufferR9StringRef
 2994              		.thumb
 2995              		.thumb_func
 2996              		.type	_ZN6GCodes14SetPrintZProbeER11GCodeBufferR9StringRef, %function
 2997              	_ZN6GCodes14SetPrintZProbeER11GCodeBufferR9StringRef:
 2998              		@ args = 0, pretend = 0, frame = 64
 2999              		@ frame_needed = 0, uses_anonymous_args = 0
 3000 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 3001 0004 96B0     		sub	sp, sp, #88
 3002 0006 0746     		mov	r7, r0
 3003 0008 0024     		movs	r4, #0
 3004 000a 0846     		mov	r0, r1
 3005 000c 0E46     		mov	r6, r1
 3006 000e 9046     		mov	r8, r2
 3007 0010 5421     		movs	r1, #84
 3008 0012 07AA     		add	r2, sp, #28
 3009 0014 0DF11A03 		add	r3, sp, #26
 3010 0018 0794     		str	r4, [sp, #28]
 3011 001a 8DF81A40 		strb	r4, [sp, #26]
 3012 001e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 3013 0022 0799     		ldr	r1, [sp, #28]
 3014 0024 3868     		ldr	r0, [r7]
 3015 0026 11B9     		cbnz	r1, .L619
 3016 0028 D0F89010 		ldr	r1, [r0, #144]
 3017 002c 0791     		str	r1, [sp, #28]
 3018              	.L619:
 3019 002e FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersEl
 3020 0032 0546     		mov	r5, r0
 3021 0034 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 54


 3022 0036 0AAC     		add	r4, sp, #40
 3023 0038 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 3024 003a 0FCD     		ldmia	r5!, {r0, r1, r2, r3}
 3025 003c 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 3026 003e 95E80F00 		ldmia	r5, {r0, r1, r2, r3}
 3027 0042 84E80F00 		stmia	r4, {r0, r1, r2, r3}
 3028 0046 0DF11B03 		add	r3, sp, #27
 3029 004a 3046     		mov	r0, r6
 3030 004c 5821     		movs	r1, #88
 3031 004e 0BAA     		add	r2, sp, #44
 3032 0050 0024     		movs	r4, #0
 3033 0052 8DF81B40 		strb	r4, [sp, #27]
 3034 0056 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3035 005a 3046     		mov	r0, r6
 3036 005c 0DF11B03 		add	r3, sp, #27
 3037 0060 5921     		movs	r1, #89
 3038 0062 0CAA     		add	r2, sp, #48
 3039 0064 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3040 0068 3046     		mov	r0, r6
 3041 006a 0DF11B03 		add	r3, sp, #27
 3042 006e 5A21     		movs	r1, #90
 3043 0070 0DAA     		add	r2, sp, #52
 3044 0072 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3045 0076 3046     		mov	r0, r6
 3046 0078 5021     		movs	r1, #80
 3047 007a 0DF11B03 		add	r3, sp, #27
 3048 007e 0AAA     		add	r2, sp, #40
 3049 0080 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetIValueEcRlRb
 3050 0084 3046     		mov	r0, r6
 3051 0086 4321     		movs	r1, #67
 3052 0088 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3053 008c 0028     		cmp	r0, #0
 3054 008e 44D1     		bne	.L636
 3055              	.L620:
 3056 0090 9DF81B30 		ldrb	r3, [sp, #27]	@ zero_extendqisi2
 3057 0094 002B     		cmp	r3, #0
 3058 0096 33D1     		bne	.L637
 3059 0098 9DF81A30 		ldrb	r3, [sp, #26]	@ zero_extendqisi2
 3060 009c B3B9     		cbnz	r3, .L638
 3061 009e 3868     		ldr	r0, [r7]
 3062 00a0 FFF7FEFF 		bl	_ZNK8Platform16GetZProbeReadingEv
 3063 00a4 08A9     		add	r1, sp, #32
 3064 00a6 0446     		mov	r4, r0
 3065 00a8 09AA     		add	r2, sp, #36
 3066 00aa 3868     		ldr	r0, [r7]
 3067 00ac FFF7FEFF 		bl	_ZN8Platform24GetZProbeSecondaryValuesERiS0_
 3068 00b0 0128     		cmp	r0, #1
 3069 00b2 51D0     		beq	.L626
 3070 00b4 0228     		cmp	r0, #2
 3071 00b6 46D0     		beq	.L627
 3072 00b8 4046     		mov	r0, r8
 3073 00ba 2246     		mov	r2, r4
 3074 00bc 2A49     		ldr	r1, .L639
 3075 00be FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 3076              	.L628:
 3077 00c2 0124     		movs	r4, #1
 3078 00c4 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 55


 3079 00c6 16B0     		add	sp, sp, #88
 3080              		@ sp needed
 3081 00c8 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3082              	.L638:
 3083 00cc 0D98     		ldr	r0, [sp, #52]	@ float
 3084 00ce 0A9C     		ldr	r4, [sp, #40]
 3085 00d0 FFF7FEFF 		bl	__aeabi_f2d
 3086 00d4 CDE90001 		strd	r0, [sp]
 3087 00d8 0B98     		ldr	r0, [sp, #44]	@ float
 3088 00da FFF7FEFF 		bl	__aeabi_f2d
 3089 00de CDE90201 		strd	r0, [sp, #8]
 3090 00e2 0C98     		ldr	r0, [sp, #48]	@ float
 3091 00e4 FFF7FEFF 		bl	__aeabi_f2d
 3092 00e8 2246     		mov	r2, r4
 3093 00ea CDE90401 		strd	r0, [sp, #16]
 3094 00ee 4046     		mov	r0, r8
 3095 00f0 1E49     		ldr	r1, .L639+4
 3096 00f2 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 3097 00f6 0124     		movs	r4, #1
 3098              	.L623:
 3099 00f8 2046     		mov	r0, r4
 3100 00fa 16B0     		add	sp, sp, #88
 3101              		@ sp needed
 3102 00fc BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3103              	.L637:
 3104 0100 3146     		mov	r1, r6
 3105 0102 3846     		mov	r0, r7
 3106 0104 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3107 0108 0446     		mov	r4, r0
 3108 010a 0028     		cmp	r0, #0
 3109 010c F4D0     		beq	.L623
 3110 010e 3868     		ldr	r0, [r7]
 3111 0110 0799     		ldr	r1, [sp, #28]
 3112 0112 0AAA     		add	r2, sp, #40
 3113 0114 FFF7FEFF 		bl	_ZN8Platform19SetZProbeParametersElRK16ZProbeParameters
 3114 0118 EEE7     		b	.L623
 3115              	.L636:
 3116 011a 3046     		mov	r0, r6
 3117 011c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3118 0120 0123     		movs	r3, #1
 3119 0122 0F90     		str	r0, [sp, #60]	@ float
 3120 0124 5321     		movs	r1, #83
 3121 0126 3046     		mov	r0, r6
 3122 0128 8DF81B30 		strb	r3, [sp, #27]
 3123 012c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3124 0130 20B1     		cbz	r0, .L621
 3125 0132 3046     		mov	r0, r6
 3126 0134 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3127 0138 0E90     		str	r0, [sp, #56]	@ float
 3128 013a A9E7     		b	.L620
 3129              	.L621:
 3130 013c 3868     		ldr	r0, [r7]
 3131 013e FFF7FEFF 		bl	_ZN8Platform20GetZProbeTemperatureEv
 3132 0142 0E90     		str	r0, [sp, #56]	@ float
 3133 0144 A4E7     		b	.L620
 3134              	.L627:
 3135 0146 099A     		ldr	r2, [sp, #36]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 56


 3136 0148 0092     		str	r2, [sp]
 3137 014a 089B     		ldr	r3, [sp, #32]
 3138 014c 0849     		ldr	r1, .L639+8
 3139 014e 4046     		mov	r0, r8
 3140 0150 2246     		mov	r2, r4
 3141 0152 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 3142 0156 B4E7     		b	.L628
 3143              	.L626:
 3144 0158 4046     		mov	r0, r8
 3145 015a 2246     		mov	r2, r4
 3146 015c 0549     		ldr	r1, .L639+12
 3147 015e 089B     		ldr	r3, [sp, #32]
 3148 0160 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 3149 0164 ADE7     		b	.L628
 3150              	.L640:
 3151 0166 00BF     		.align	2
 3152              	.L639:
 3153 0168 8C020000 		.word	.LC27
 3154 016c 40020000 		.word	.LC24
 3155 0170 80020000 		.word	.LC26
 3156 0174 78020000 		.word	.LC25
 3157              		.size	_ZN6GCodes14SetPrintZProbeER11GCodeBufferR9StringRef, .-_ZN6GCodes14SetPrintZProbeER11GCodeB
 3158              		.global	__aeabi_dsub
 3159              		.global	__aeabi_ddiv
 3160              		.global	__aeabi_dmul
 3161              		.section	.text._ZN6GCodes10DefineGridER11GCodeBufferR9StringRef,"ax",%progbits
 3162              		.align	2
 3163              		.global	_ZN6GCodes10DefineGridER11GCodeBufferR9StringRef
 3164              		.thumb
 3165              		.thumb_func
 3166              		.type	_ZN6GCodes10DefineGridER11GCodeBufferR9StringRef, %function
 3167              	_ZN6GCodes10DefineGridER11GCodeBufferR9StringRef:
 3168              		@ args = 0, pretend = 0, frame = 72
 3169              		@ frame_needed = 0, uses_anonymous_args = 0
 3170 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 3171 0004 2DED028B 		fstmfdd	sp!, {d8}
 3172 0008 95B0     		sub	sp, sp, #84
 3173 000a 0025     		movs	r5, #0
 3174 000c 0C46     		mov	r4, r1
 3175 000e 0846     		mov	r0, r1
 3176 0010 5821     		movs	r1, #88
 3177 0012 9046     		mov	r8, r2
 3178 0014 8DF80E50 		strb	r5, [sp, #14]
 3179 0018 8DF80F50 		strb	r5, [sp, #15]
 3180 001c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3181 0020 0028     		cmp	r0, #0
 3182 0022 44D0     		beq	.L659
 3183 0024 2B46     		mov	r3, r5
 3184 0026 2046     		mov	r0, r4
 3185 0028 0225     		movs	r5, #2
 3186 002a 06A9     		add	r1, sp, #24
 3187 002c 0AAA     		add	r2, sp, #40
 3188 002e 0A95     		str	r5, [sp, #40]
 3189 0030 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 3190 0034 0A9B     		ldr	r3, [sp, #40]
 3191 0036 AB42     		cmp	r3, r5
 3192 0038 40F08E80 		bne	.L643
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 57


 3193 003c 2046     		mov	r0, r4
 3194 003e 5921     		movs	r1, #89
 3195 0040 0126     		movs	r6, #1
 3196 0042 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3197 0046 0028     		cmp	r0, #0
 3198 0048 38D1     		bne	.L666
 3199              	.L645:
 3200 004a 14AA     		add	r2, sp, #80
 3201 004c 864B     		ldr	r3, .L667+8
 3202 004e 42F8403D 		str	r3, [r2, #-64]!	@ float
 3203 0052 2046     		mov	r0, r4
 3204 0054 5221     		movs	r1, #82
 3205 0056 0DF10E03 		add	r3, sp, #14
 3206 005a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3207 005e 14AA     		add	r2, sp, #80
 3208 0060 824B     		ldr	r3, .L667+12
 3209 0062 42F83C3D 		str	r3, [r2, #-60]!	@ float
 3210 0066 2046     		mov	r0, r4
 3211 0068 5321     		movs	r1, #83
 3212 006a 0DF10F03 		add	r3, sp, #15
 3213 006e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3214 0072 002E     		cmp	r6, #0
 3215 0074 7BD1     		bne	.L648
 3216 0076 9DF80E30 		ldrb	r3, [sp, #14]	@ zero_extendqisi2
 3217 007a 002B     		cmp	r3, #0
 3218 007c 40F08D80 		bne	.L649
 3219 0080 9DF80F30 		ldrb	r3, [sp, #15]	@ zero_extendqisi2
 3220 0084 002B     		cmp	r3, #0
 3221 0086 40F0DA80 		bne	.L650
 3222 008a 794B     		ldr	r3, .L667+16
 3223 008c 9D68     		ldr	r5, [r3, #8]
 3224 008e 95F8344A 		ldrb	r4, [r5, #2612]	@ zero_extendqisi2
 3225 0092 4046     		mov	r0, r8
 3226 0094 002C     		cmp	r4, #0
 3227 0096 00F0DE80 		beq	.L651
 3228 009a 7649     		ldr	r1, .L667+20
 3229 009c FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3230 00a0 05F52160 		add	r0, r5, #2576
 3231 00a4 4146     		mov	r1, r8
 3232 00a6 3446     		mov	r4, r6
 3233 00a8 FFF7FEFF 		bl	_ZNK14GridDefinition15PrintParametersER9StringRef
 3234 00ac 59E0     		b	.L661
 3235              	.L659:
 3236 00ae 0646     		mov	r6, r0
 3237 00b0 5921     		movs	r1, #89
 3238 00b2 2046     		mov	r0, r4
 3239 00b4 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3240 00b8 0028     		cmp	r0, #0
 3241 00ba C6D0     		beq	.L645
 3242              	.L666:
 3243 00bc 0AAD     		add	r5, sp, #40
 3244 00be 0227     		movs	r7, #2
 3245 00c0 0023     		movs	r3, #0
 3246 00c2 08A9     		add	r1, sp, #32
 3247 00c4 2A46     		mov	r2, r5
 3248 00c6 2046     		mov	r0, r4
 3249 00c8 0A97     		str	r7, [sp, #40]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 58


 3250 00ca FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 3251 00ce 0A9B     		ldr	r3, [sp, #40]
 3252 00d0 BB42     		cmp	r3, r7
 3253 00d2 57D1     		bne	.L646
 3254 00d4 14AA     		add	r2, sp, #80
 3255 00d6 644B     		ldr	r3, .L667+8
 3256 00d8 42F8403D 		str	r3, [r2, #-64]!	@ float
 3257 00dc 2046     		mov	r0, r4
 3258 00de 5221     		movs	r1, #82
 3259 00e0 0DF10E03 		add	r3, sp, #14
 3260 00e4 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3261 00e8 14AA     		add	r2, sp, #80
 3262 00ea 604B     		ldr	r3, .L667+12
 3263 00ec 42F83C3D 		str	r3, [r2, #-60]!	@ float
 3264 00f0 2046     		mov	r0, r4
 3265 00f2 5321     		movs	r1, #83
 3266 00f4 0DF10F03 		add	r3, sp, #15
 3267 00f8 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 3268 00fc 002E     		cmp	r6, #0
 3269 00fe 36D0     		beq	.L648
 3270 0100 059A     		ldr	r2, [sp, #20]	@ float
 3271 0102 049B     		ldr	r3, [sp, #16]	@ float
 3272 0104 0092     		str	r2, [sp]	@ float
 3273 0106 2846     		mov	r0, r5
 3274 0108 08AA     		add	r2, sp, #32
 3275 010a 06A9     		add	r1, sp, #24
 3276 010c FFF7FEFF 		bl	_ZN14GridDefinitionC1EPKfS1_ff
 3277 0110 9DF84C30 		ldrb	r3, [sp, #76]	@ zero_extendqisi2
 3278 0114 002B     		cmp	r3, #0
 3279 0116 40F08980 		bne	.L654
 3280 011a 9DED078A 		flds	s16, [sp, #28]
 3281 011e 9DED067A 		flds	s14, [sp, #24]
 3282 0122 DDED098A 		flds	s17, [sp, #36]
 3283 0126 DDED087A 		flds	s15, [sp, #32]
 3284 012a 38EE478A 		fsubs	s16, s16, s14
 3285 012e 78EEE78A 		fsubs	s17, s17, s15
 3286              	.L656:
 3287 0132 4046     		mov	r0, r8
 3288 0134 5049     		ldr	r1, .L667+24
 3289 0136 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3290 013a 2846     		mov	r0, r5
 3291 013c 18EE101A 		fmrs	r1, s16
 3292 0140 18EE902A 		fmrs	r2, s17
 3293 0144 4346     		mov	r3, r8
 3294 0146 FFF7FEFF 		bl	_ZNK14GridDefinition10PrintErrorEffR9StringRef
 3295 014a 0124     		movs	r4, #1
 3296 014c 2046     		mov	r0, r4
 3297 014e 15B0     		add	sp, sp, #84
 3298              		@ sp needed
 3299 0150 BDEC028B 		fldmfdd	sp!, {d8}
 3300 0154 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 3301              	.L643:
 3302 0158 4046     		mov	r0, r8
 3303 015a 4849     		ldr	r1, .L667+28
 3304 015c FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3305 0160 0124     		movs	r4, #1
 3306              	.L661:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 59


 3307 0162 2046     		mov	r0, r4
 3308 0164 15B0     		add	sp, sp, #84
 3309              		@ sp needed
 3310 0166 BDEC028B 		fldmfdd	sp!, {d8}
 3311 016a BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 3312              	.L648:
 3313 016e 4046     		mov	r0, r8
 3314 0170 4349     		ldr	r1, .L667+32
 3315 0172 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3316 0176 0124     		movs	r4, #1
 3317 0178 2046     		mov	r0, r4
 3318 017a 15B0     		add	sp, sp, #84
 3319              		@ sp needed
 3320 017c BDEC028B 		fldmfdd	sp!, {d8}
 3321 0180 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 3322              	.L646:
 3323 0184 4046     		mov	r0, r8
 3324 0186 3F49     		ldr	r1, .L667+36
 3325 0188 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3326 018c 0124     		movs	r4, #1
 3327 018e 2046     		mov	r0, r4
 3328 0190 15B0     		add	sp, sp, #84
 3329              		@ sp needed
 3330 0192 BDEC028B 		fldmfdd	sp!, {d8}
 3331 0196 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 3332              	.L649:
 3333 019a 9DED048A 		flds	s16, [sp, #16]
 3334 019e B5EEC08A 		fcmpezs	s16
 3335 01a2 F1EE10FA 		fmstat
 3336 01a6 50DD     		ble	.L662
 3337 01a8 DDF81490 		ldr	r9, [sp, #20]	@ float
 3338 01ac 4846     		mov	r0, r9	@ float
 3339 01ae FFF7FEFF 		bl	__aeabi_f2d
 3340 01b2 0446     		mov	r4, r0
 3341 01b4 18EE100A 		fmrs	r0, s16
 3342 01b8 0D46     		mov	r5, r1
 3343 01ba FFF7FEFF 		bl	__aeabi_f2d
 3344 01be 28A3     		adr	r3, .L667
 3345 01c0 D3E90023 		ldrd	r2, [r3]
 3346 01c4 FFF7FEFF 		bl	__aeabi_dsub
 3347 01c8 2246     		mov	r2, r4
 3348 01ca 2B46     		mov	r3, r5
 3349 01cc FFF7FEFF 		bl	__aeabi_ddiv
 3350 01d0 FFF7FEFF 		bl	floor
 3351 01d4 0246     		mov	r2, r0
 3352 01d6 0B46     		mov	r3, r1
 3353 01d8 2046     		mov	r0, r4
 3354 01da 2946     		mov	r1, r5
 3355 01dc FFF7FEFF 		bl	__aeabi_dmul
 3356 01e0 FFF7FEFF 		bl	__aeabi_d2f
 3357 01e4 80F00043 		eor	r3, r0, #-2147483648
 3358 01e8 0893     		str	r3, [sp, #32]	@ float
 3359 01ea 0693     		str	r3, [sp, #24]	@ float
 3360 01ec FFF7FEFF 		bl	__aeabi_f2d
 3361 01f0 1BA3     		adr	r3, .L667
 3362 01f2 D3E90023 		ldrd	r2, [r3]
 3363 01f6 FFF7FEFF 		bl	__aeabi_dadd
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 60


 3364 01fa FFF7FEFF 		bl	__aeabi_d2f
 3365 01fe 0AAD     		add	r5, sp, #40
 3366 0200 0446     		mov	r4, r0	@ float
 3367 0202 18EE103A 		fmrs	r3, s16
 3368 0206 CDF80090 		str	r9, [sp]	@ float
 3369 020a 2846     		mov	r0, r5
 3370 020c 06A9     		add	r1, sp, #24
 3371 020e 08AA     		add	r2, sp, #32
 3372 0210 0994     		str	r4, [sp, #36]	@ float
 3373 0212 0794     		str	r4, [sp, #28]	@ float
 3374 0214 FFF7FEFF 		bl	_ZN14GridDefinitionC1EPKfS1_ff
 3375 0218 9DF84C30 		ldrb	r3, [sp, #76]	@ zero_extendqisi2
 3376 021c 33B9     		cbnz	r3, .L654
 3377 021e 9DED048A 		flds	s16, [sp, #16]
 3378 0222 38EE088A 		fadds	s16, s16, s16
 3379 0226 F0EE488A 		fcpys	s17, s16
 3380 022a 82E7     		b	.L656
 3381              	.L654:
 3382 022c 104B     		ldr	r3, .L667+16
 3383 022e 9868     		ldr	r0, [r3, #8]
 3384 0230 2946     		mov	r1, r5
 3385 0232 00F52160 		add	r0, r0, #2576
 3386 0236 FFF7FEFF 		bl	_ZN9HeightMap7SetGridERK14GridDefinition
 3387 023a 0024     		movs	r4, #0
 3388 023c 91E7     		b	.L661
 3389              	.L650:
 3390 023e 4046     		mov	r0, r8
 3391 0240 1149     		ldr	r1, .L667+40
 3392 0242 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3393 0246 0124     		movs	r4, #1
 3394 0248 8BE7     		b	.L661
 3395              	.L662:
 3396 024a 4046     		mov	r0, r8
 3397 024c 0F49     		ldr	r1, .L667+44
 3398 024e FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3399 0252 0124     		movs	r4, #1
 3400 0254 85E7     		b	.L661
 3401              	.L651:
 3402 0256 0E49     		ldr	r1, .L667+48
 3403 0258 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3404 025c 81E7     		b	.L661
 3405              	.L668:
 3406 025e 00BF     		.align	3
 3407              	.L667:
 3408 0260 9A999999 		.word	-1717986918
 3409 0264 9999B93F 		.word	1069128089
 3410 0268 000080BF 		.word	-1082130432
 3411 026c 0000A041 		.word	1101004800
 3412 0270 00000000 		.word	reprap
 3413 0274 E8020000 		.word	.LC30
 3414 0278 9C030000 		.word	.LC35
 3415 027c 90020000 		.word	.LC28
 3416 0280 04030000 		.word	.LC32
 3417 0284 BC020000 		.word	.LC29
 3418 0288 30030000 		.word	.LC33
 3419 028c 60030000 		.word	.LC34
 3420 0290 F0020000 		.word	.LC31
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 61


 3421              		.size	_ZN6GCodes10DefineGridER11GCodeBufferR9StringRef, .-_ZN6GCodes10DefineGridER11GCodeBufferR9S
 3422 0294 AFF30080 		.section	.text._ZN6GCodes9ProbeGridER11GCodeBufferR9StringRef,"ax",%progbits
 3423              		.align	2
 3424              		.global	_ZN6GCodes9ProbeGridER11GCodeBufferR9StringRef
 3425              		.thumb
 3426              		.thumb_func
 3427              		.type	_ZN6GCodes9ProbeGridER11GCodeBufferR9StringRef, %function
 3428              	_ZN6GCodes9ProbeGridER11GCodeBufferR9StringRef:
 3429              		@ args = 0, pretend = 0, frame = 0
 3430              		@ frame_needed = 0, uses_anonymous_args = 0
 3431 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 3432 0002 1A4B     		ldr	r3, .L674
 3433 0004 9D68     		ldr	r5, [r3, #8]
 3434 0006 95F8344A 		ldrb	r4, [r5, #2612]	@ zero_extendqisi2
 3435 000a 0346     		mov	r3, r0
 3436 000c 0F46     		mov	r7, r1
 3437 000e 34B3     		cbz	r4, .L673
 3438 0010 D0F8B061 		ldr	r6, [r0, #432]
 3439 0014 D0F89802 		ldr	r0, [r0, #664]
 3440 0018 0121     		movs	r1, #1
 3441 001a 01FA06F6 		lsl	r6, r1, r6
 3442 001e 013E     		subs	r6, r6, #1
 3443 0020 3040     		ands	r0, r0, r6
 3444 0022 8642     		cmp	r6, r0
 3445 0024 05D0     		beq	.L672
 3446 0026 1046     		mov	r0, r2
 3447 0028 1149     		ldr	r1, .L674+4
 3448 002a FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3449 002e 2046     		mov	r0, r4
 3450 0030 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3451              	.L672:
 3452 0032 0024     		movs	r4, #0
 3453 0034 05F52166 		add	r6, r5, #2576
 3454 0038 C3F8F842 		str	r4, [r3, #760]
 3455 003c C3F8F442 		str	r4, [r3, #756]
 3456 0040 2146     		mov	r1, r4
 3457 0042 3046     		mov	r0, r6
 3458 0044 FFF7FEFF 		bl	_ZN9HeightMap12UseHeightMapEb
 3459 0048 3046     		mov	r0, r6
 3460 004a FFF7FEFF 		bl	_ZN9HeightMap16ClearGridHeightsEv
 3461 004e 2846     		mov	r0, r5
 3462 0050 FFF7FEFF 		bl	_ZN4Move20SetIdentityTransformEv
 3463 0054 BB68     		ldr	r3, [r7, #8]
 3464 0056 1522     		movs	r2, #21
 3465 0058 1A74     		strb	r2, [r3, #16]
 3466 005a 2046     		mov	r0, r4
 3467 005c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3468              	.L673:
 3469 005e 1046     		mov	r0, r2
 3470 0060 0449     		ldr	r1, .L674+8
 3471 0062 0124     		movs	r4, #1
 3472 0064 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 3473 0068 2046     		mov	r0, r4
 3474 006a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3475              	.L675:
 3476              		.align	2
 3477              	.L674:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 62


 3478 006c 00000000 		.word	reprap
 3479 0070 E0030000 		.word	.LC37
 3480 0074 B4030000 		.word	.LC36
 3481              		.size	_ZN6GCodes9ProbeGridER11GCodeBufferR9StringRef, .-_ZN6GCodes9ProbeGridER11GCodeBufferR9Strin
 3482              		.section	.text._ZNK6GCodes13LoadHeightMapER11GCodeBufferR9StringRef,"ax",%progbits
 3483              		.align	2
 3484              		.global	_ZNK6GCodes13LoadHeightMapER11GCodeBufferR9StringRef
 3485              		.thumb
 3486              		.thumb_func
 3487              		.type	_ZNK6GCodes13LoadHeightMapER11GCodeBufferR9StringRef, %function
 3488              	_ZNK6GCodes13LoadHeightMapER11GCodeBufferR9StringRef:
 3489              		@ args = 0, pretend = 0, frame = 0
 3490              		@ frame_needed = 0, uses_anonymous_args = 0
 3491 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 3492 0002 214F     		ldr	r7, .L686
 3493 0004 0C46     		mov	r4, r1
 3494 0006 0546     		mov	r5, r0
 3495 0008 B868     		ldr	r0, [r7, #8]
 3496 000a 1646     		mov	r6, r2
 3497 000c FFF7FEFF 		bl	_ZN4Move20SetIdentityTransformEv
 3498 0010 2046     		mov	r0, r4
 3499 0012 5021     		movs	r1, #80
 3500 0014 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3501 0018 28BB     		cbnz	r0, .L683
 3502 001a 1C4B     		ldr	r3, .L686+4
 3503 001c 1C68     		ldr	r4, [r3]
 3504              	.L678:
 3505 001e 2868     		ldr	r0, [r5]
 3506 0020 1B49     		ldr	r1, .L686+8
 3507 0022 2246     		mov	r2, r4
 3508 0024 0023     		movs	r3, #0
 3509 0026 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 3510 002a 0546     		mov	r5, r0
 3511 002c 20B3     		cbz	r0, .L684
 3512 002e 2246     		mov	r2, r4
 3513 0030 1849     		ldr	r1, .L686+12
 3514 0032 3046     		mov	r0, r6
 3515 0034 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 3516 0038 BF68     		ldr	r7, [r7, #8]
 3517 003a 07F52167 		add	r7, r7, #2576
 3518 003e 3846     		mov	r0, r7
 3519 0040 2946     		mov	r1, r5
 3520 0042 3246     		mov	r2, r6
 3521 0044 FFF7FEFF 		bl	_ZN9HeightMap12LoadFromFileEP9FileStoreR9StringRef
 3522 0048 0446     		mov	r4, r0
 3523 004a 2846     		mov	r0, r5
 3524 004c FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 3525 0050 74B9     		cbnz	r4, .L685
 3526 0052 3368     		ldr	r3, [r6]
 3527 0054 1C70     		strb	r4, [r3]
 3528              	.L682:
 3529 0056 84F00101 		eor	r1, r4, #1
 3530 005a 3846     		mov	r0, r7
 3531 005c C9B2     		uxtb	r1, r1
 3532 005e FFF7FEFF 		bl	_ZN9HeightMap12UseHeightMapEb
 3533 0062 2046     		mov	r0, r4
 3534 0064 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 63


 3535              	.L683:
 3536 0066 2046     		mov	r0, r4
 3537 0068 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 3538 006c 0446     		mov	r4, r0
 3539 006e D6E7     		b	.L678
 3540              	.L685:
 3541 0070 3846     		mov	r0, r7
 3542 0072 FFF7FEFF 		bl	_ZN9HeightMap16ClearGridHeightsEv
 3543 0076 EEE7     		b	.L682
 3544              	.L684:
 3545 0078 3046     		mov	r0, r6
 3546 007a 2246     		mov	r2, r4
 3547 007c 0649     		ldr	r1, .L686+16
 3548 007e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 3549 0082 0120     		movs	r0, #1
 3550 0084 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3551              	.L687:
 3552 0086 00BF     		.align	2
 3553              	.L686:
 3554 0088 00000000 		.word	reprap
 3555 008c 00000000 		.word	.LANCHOR3
 3556 0090 DC010000 		.word	.LC20
 3557 0094 2C040000 		.word	.LC39
 3558 0098 0C040000 		.word	.LC38
 3559              		.size	_ZNK6GCodes13LoadHeightMapER11GCodeBufferR9StringRef, .-_ZNK6GCodes13LoadHeightMapER11GCodeB
 3560              		.section	.text._ZNK6GCodes13SaveHeightMapER11GCodeBufferR9StringRef,"ax",%progbits
 3561              		.align	2
 3562              		.global	_ZNK6GCodes13SaveHeightMapER11GCodeBufferR9StringRef
 3563              		.thumb
 3564              		.thumb_func
 3565              		.type	_ZNK6GCodes13SaveHeightMapER11GCodeBufferR9StringRef, %function
 3566              	_ZNK6GCodes13SaveHeightMapER11GCodeBufferR9StringRef:
 3567              		@ args = 0, pretend = 0, frame = 0
 3568              		@ frame_needed = 0, uses_anonymous_args = 0
 3569 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 3570 0004 0846     		mov	r0, r1
 3571 0006 0C46     		mov	r4, r1
 3572 0008 5021     		movs	r1, #80
 3573 000a 9046     		mov	r8, r2
 3574 000c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3575 0010 0028     		cmp	r0, #0
 3576 0012 2DD1     		bne	.L694
 3577 0014 214B     		ldr	r3, .L696
 3578 0016 1C68     		ldr	r4, [r3]
 3579              	.L690:
 3580 0018 214E     		ldr	r6, .L696+4
 3581 001a 2249     		ldr	r1, .L696+8
 3582 001c 3768     		ldr	r7, [r6]
 3583 001e 2246     		mov	r2, r4
 3584 0020 3846     		mov	r0, r7
 3585 0022 0123     		movs	r3, #1
 3586 0024 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 3587 0028 0546     		mov	r5, r0
 3588 002a 0028     		cmp	r0, #0
 3589 002c 2ED0     		beq	.L695
 3590 002e B068     		ldr	r0, [r6, #8]
 3591 0030 2946     		mov	r1, r5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 64


 3592 0032 00F52160 		add	r0, r0, #2576
 3593 0036 FFF7FEFF 		bl	_ZNK9HeightMap10SaveToFileEP9FileStore
 3594 003a 0646     		mov	r6, r0
 3595 003c 2846     		mov	r0, r5
 3596 003e FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 3597 0042 6EB1     		cbz	r6, .L693
 3598 0044 2246     		mov	r2, r4
 3599 0046 D7F83C08 		ldr	r0, [r7, #2108]
 3600 004a 1649     		ldr	r1, .L696+8
 3601 004c FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_
 3602 0050 4046     		mov	r0, r8
 3603 0052 2246     		mov	r2, r4
 3604 0054 1449     		ldr	r1, .L696+12
 3605 0056 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 3606 005a 0120     		movs	r0, #1
 3607 005c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3608              	.L693:
 3609 0060 4046     		mov	r0, r8
 3610 0062 2246     		mov	r2, r4
 3611 0064 1149     		ldr	r1, .L696+16
 3612 0066 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 3613 006a 3046     		mov	r0, r6
 3614 006c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3615              	.L694:
 3616 0070 2046     		mov	r0, r4
 3617 0072 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 3618 0076 0578     		ldrb	r5, [r0]	@ zero_extendqisi2
 3619 0078 0446     		mov	r4, r0
 3620 007a 002D     		cmp	r5, #0
 3621 007c CCD1     		bne	.L690
 3622 007e 4046     		mov	r0, r8
 3623 0080 0B49     		ldr	r1, .L696+20
 3624 0082 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 3625 0086 2846     		mov	r0, r5
 3626 0088 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3627              	.L695:
 3628 008c 4046     		mov	r0, r8
 3629 008e 2246     		mov	r2, r4
 3630 0090 0849     		ldr	r1, .L696+24
 3631 0092 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 3632 0096 0120     		movs	r0, #1
 3633 0098 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3634              	.L697:
 3635              		.align	2
 3636              	.L696:
 3637 009c 00000000 		.word	.LANCHOR3
 3638 00a0 00000000 		.word	reprap
 3639 00a4 DC010000 		.word	.LC20
 3640 00a8 A0040000 		.word	.LC42
 3641 00ac C8040000 		.word	.LC43
 3642 00b0 58040000 		.word	.LC40
 3643 00b4 7C040000 		.word	.LC41
 3644              		.size	_ZNK6GCodes13SaveHeightMapER11GCodeBufferR9StringRef, .-_ZNK6GCodes13SaveHeightMapER11GCodeB
 3645              		.section	.text._ZNK6GCodes21GetCurrentCoordinatesER9StringRef,"ax",%progbits
 3646              		.align	2
 3647              		.global	_ZNK6GCodes21GetCurrentCoordinatesER9StringRef
 3648              		.thumb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 65


 3649              		.thumb_func
 3650              		.type	_ZNK6GCodes21GetCurrentCoordinatesER9StringRef, %function
 3651              	_ZNK6GCodes21GetCurrentCoordinatesER9StringRef:
 3652              		@ args = 0, pretend = 0, frame = 40
 3653              		@ frame_needed = 0, uses_anonymous_args = 0
 3654 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 3655 0004 DFF8EC80 		ldr	r8, .L714+16
 3656 0008 8CB0     		sub	sp, sp, #48
 3657 000a 0646     		mov	r6, r0
 3658 000c 4046     		mov	r0, r8
 3659 000e D8F80840 		ldr	r4, [r8, #8]
 3660 0012 0D46     		mov	r5, r1
 3661 0014 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 3662 0018 02A9     		add	r1, sp, #8
 3663 001a 0246     		mov	r2, r0
 3664 001c 2046     		mov	r0, r4
 3665 001e FFF7FEFF 		bl	_ZN4Move15LiveCoordinatesEPfm
 3666 0022 D8F82420 		ldr	r2, [r8, #36]
 3667 0026 82B1     		cbz	r2, .L702
 3668 0028 D6F8B011 		ldr	r1, [r6, #432]
 3669 002c A832     		adds	r2, r2, #168
 3670 002e 61B1     		cbz	r1, .L702
 3671 0030 02AB     		add	r3, sp, #8
 3672 0032 03EB8101 		add	r1, r3, r1, lsl #2
 3673              	.L703:
 3674 0036 93ED007A 		flds	s14, [r3]
 3675 003a F2EC017A 		fldmias	r2!, {s15}
 3676 003e 77EE277A 		fadds	s15, s14, s15
 3677 0042 E3EC017A 		fstmias	r3!, {s15}
 3678 0046 8B42     		cmp	r3, r1
 3679 0048 F5D1     		bne	.L703
 3680              	.L702:
 3681 004a 2B68     		ldr	r3, [r5]
 3682 004c 0027     		movs	r7, #0
 3683 004e 1F70     		strb	r7, [r3]
 3684 0050 D6F8B041 		ldr	r4, [r6, #432]
 3685 0054 ACB1     		cbz	r4, .L701
 3686 0056 DFF8A0A0 		ldr	r10, .L714+20
 3687 005a 0DF10809 		add	r9, sp, #8
 3688              	.L705:
 3689 005e 59F8040B 		ldr	r0, [r9], #4	@ float
 3690 0062 1AF80740 		ldrb	r4, [r10, r7]	@ zero_extendqisi2
 3691 0066 FFF7FEFF 		bl	__aeabi_f2d
 3692 006a 2246     		mov	r2, r4
 3693 006c CDE90001 		strd	r0, [sp]
 3694 0070 2846     		mov	r0, r5
 3695 0072 1C49     		ldr	r1, .L714
 3696 0074 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 3697 0078 D6F8B041 		ldr	r4, [r6, #432]
 3698 007c 0137     		adds	r7, r7, #1
 3699 007e BC42     		cmp	r4, r7
 3700 0080 EDD8     		bhi	.L705
 3701              	.L701:
 3702 0082 02AB     		add	r3, sp, #8
 3703 0084 03EB8407 		add	r7, r3, r4, lsl #2
 3704 0088 2346     		mov	r3, r4
 3705 008a 01E0     		b	.L704
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 66


 3706              	.L706:
 3707 008c D6F8B031 		ldr	r3, [r6, #432]
 3708              	.L704:
 3709 0090 57F8040B 		ldr	r0, [r7], #4	@ float
 3710 0094 C3EB0409 		rsb	r9, r3, r4
 3711 0098 FFF7FEFF 		bl	__aeabi_f2d
 3712 009c 0134     		adds	r4, r4, #1
 3713 009e CDE90001 		strd	r0, [sp]
 3714 00a2 4A46     		mov	r2, r9
 3715 00a4 2846     		mov	r0, r5
 3716 00a6 1049     		ldr	r1, .L714+4
 3717 00a8 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 3718 00ac 092C     		cmp	r4, #9
 3719 00ae EDD9     		bls	.L706
 3720 00b0 2846     		mov	r0, r5
 3721 00b2 0E49     		ldr	r1, .L714+8
 3722 00b4 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 3723 00b8 D6F8B031 		ldr	r3, [r6, #432]
 3724 00bc 0024     		movs	r4, #0
 3725 00be 73B1     		cbz	r3, .L698
 3726              	.L709:
 3727 00c0 D8F80830 		ldr	r3, [r8, #8]
 3728 00c4 0A49     		ldr	r1, .L714+12
 3729 00c6 04F11602 		add	r2, r4, #22
 3730 00ca 2846     		mov	r0, r5
 3731 00cc 53F82220 		ldr	r2, [r3, r2, lsl #2]
 3732 00d0 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 3733 00d4 D6F8B031 		ldr	r3, [r6, #432]
 3734 00d8 0134     		adds	r4, r4, #1
 3735 00da A342     		cmp	r3, r4
 3736 00dc F0D8     		bhi	.L709
 3737              	.L698:
 3738 00de 0CB0     		add	sp, sp, #48
 3739              		@ sp needed
 3740 00e0 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 3741              	.L715:
 3742              		.align	2
 3743              	.L714:
 3744 00e4 E4040000 		.word	.LC44
 3745 00e8 F0040000 		.word	.LC45
 3746 00ec FC040000 		.word	.LC46
 3747 00f0 04050000 		.word	.LC47
 3748 00f4 00000000 		.word	reprap
 3749 00f8 00000000 		.word	.LANCHOR0
 3750              		.size	_ZNK6GCodes21GetCurrentCoordinatesER9StringRef, .-_ZNK6GCodes21GetCurrentCoordinatesER9Strin
 3751              		.section	.text._ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_,"ax",%progbits
 3752              		.align	2
 3753              		.global	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_
 3754              		.thumb
 3755              		.thumb_func
 3756              		.type	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_, %function
 3757              	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_:
 3758              		@ args = 0, pretend = 0, frame = 0
 3759              		@ frame_needed = 0, uses_anonymous_args = 0
 3760 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 3761 0004 0446     		mov	r4, r0
 3762 0006 1646     		mov	r6, r2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 67


 3763 0008 1F46     		mov	r7, r3
 3764 000a 8846     		mov	r8, r1
 3765 000c 0068     		ldr	r0, [r0]
 3766 000e 1146     		mov	r1, r2
 3767 0010 1A46     		mov	r2, r3
 3768 0012 0123     		movs	r3, #1
 3769 0014 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 3770 0018 0023     		movs	r3, #0
 3771 001a 0546     		mov	r5, r0
 3772 001c C4F87802 		str	r0, [r4, #632]
 3773 0020 84F88C32 		strb	r3, [r4, #652]
 3774 0024 20B1     		cbz	r0, .L719
 3775 0026 C8F88460 		str	r6, [r8, #132]
 3776 002a 0120     		movs	r0, #1
 3777 002c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3778              	.L719:
 3779 0030 2068     		ldr	r0, [r4]
 3780 0032 044A     		ldr	r2, .L720
 3781 0034 3B46     		mov	r3, r7
 3782 0036 0621     		movs	r1, #6
 3783 0038 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3784 003c 2846     		mov	r0, r5
 3785 003e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3786              	.L721:
 3787 0042 00BF     		.align	2
 3788              	.L720:
 3789 0044 08050000 		.word	.LC48
 3790              		.size	_ZN6GCodes15OpenFileToWriteER11GCodeBufferPKcS3_, .-_ZN6GCodes15OpenFileToWriteER11GCodeBuff
 3791              		.section	.text._ZN6GCodes10DeleteFileEPKc,"ax",%progbits
 3792              		.align	2
 3793              		.global	_ZN6GCodes10DeleteFileEPKc
 3794              		.thumb
 3795              		.thumb_func
 3796              		.type	_ZN6GCodes10DeleteFileEPKc, %function
 3797              	_ZN6GCodes10DeleteFileEPKc:
 3798              		@ args = 0, pretend = 0, frame = 0
 3799              		@ frame_needed = 0, uses_anonymous_args = 0
 3800 0000 0368     		ldr	r3, [r0]
 3801 0002 70B5     		push	{r4, r5, r6, lr}
 3802 0004 0C46     		mov	r4, r1
 3803 0006 0546     		mov	r5, r0
 3804 0008 0749     		ldr	r1, .L725
 3805 000a D3F83C08 		ldr	r0, [r3, #2108]
 3806 000e 2246     		mov	r2, r4
 3807 0010 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_
 3808 0014 00B1     		cbz	r0, .L724
 3809 0016 70BD     		pop	{r4, r5, r6, pc}
 3810              	.L724:
 3811 0018 2868     		ldr	r0, [r5]
 3812 001a 044A     		ldr	r2, .L725+4
 3813 001c 2346     		mov	r3, r4
 3814 001e 0621     		movs	r1, #6
 3815 0020 BDE87040 		pop	{r4, r5, r6, lr}
 3816 0024 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 3817              	.L726:
 3818              		.align	2
 3819              	.L725:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 68


 3820 0028 34050000 		.word	.LC49
 3821 002c 40050000 		.word	.LC50
 3822              		.size	_ZN6GCodes10DeleteFileEPKc, .-_ZN6GCodes10DeleteFileEPKc
 3823              		.global	__aeabi_d2iz
 3824              		.section	.text._ZN6GCodes7DoDwellER11GCodeBuffer,"ax",%progbits
 3825              		.align	2
 3826              		.global	_ZN6GCodes7DoDwellER11GCodeBuffer
 3827              		.thumb
 3828              		.thumb_func
 3829              		.type	_ZN6GCodes7DoDwellER11GCodeBuffer, %function
 3830              	_ZN6GCodes7DoDwellER11GCodeBuffer:
 3831              		@ args = 0, pretend = 0, frame = 0
 3832              		@ frame_needed = 0, uses_anonymous_args = 0
 3833 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 3834 0004 0C46     		mov	r4, r1
 3835 0006 0746     		mov	r7, r0
 3836 0008 5321     		movs	r1, #83
 3837 000a 2046     		mov	r0, r4
 3838 000c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3839 0010 0028     		cmp	r0, #0
 3840 0012 38D0     		beq	.L728
 3841 0014 2046     		mov	r0, r4
 3842 0016 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 3843 001a FFF7FEFF 		bl	__aeabi_f2d
 3844 001e 0022     		movs	r2, #0
 3845 0020 2B4B     		ldr	r3, .L737+8
 3846 0022 FFF7FEFF 		bl	__aeabi_dmul
 3847 0026 FFF7FEFF 		bl	__aeabi_d2iz
 3848 002a 8046     		mov	r8, r0
 3849              	.L729:
 3850 002c B8F1000F 		cmp	r8, #0
 3851 0030 2EDD     		ble	.L732
 3852 0032 3846     		mov	r0, r7
 3853 0034 2146     		mov	r1, r4
 3854 0036 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 3855 003a 0646     		mov	r6, r0
 3856 003c 0028     		cmp	r0, #0
 3857 003e 3AD0     		beq	.L736
 3858 0040 97F80053 		ldrb	r5, [r7, #768]	@ zero_extendqisi2
 3859 0044 6DB3     		cbz	r5, .L734
 3860 0046 D7F8FC02 		ldr	r0, [r7, #764]	@ float
 3861 004a FFF7FEFF 		bl	__aeabi_f2d
 3862 004e 07EE908A 		fmsr	s15, r8	@ int
 3863 0052 F8EEE77A 		fsitos	s15, s15
 3864 0056 0446     		mov	r4, r0
 3865 0058 17EE900A 		fmrs	r0, s15
 3866 005c 0D46     		mov	r5, r1
 3867 005e FFF7FEFF 		bl	__aeabi_f2d
 3868 0062 19A3     		adr	r3, .L737
 3869 0064 D3E90023 		ldrd	r2, [r3]
 3870 0068 FFF7FEFF 		bl	__aeabi_dmul
 3871 006c 0246     		mov	r2, r0
 3872 006e 0B46     		mov	r3, r1
 3873 0070 2046     		mov	r0, r4
 3874 0072 2946     		mov	r1, r5
 3875 0074 FFF7FEFF 		bl	__aeabi_dadd
 3876 0078 FFF7FEFF 		bl	__aeabi_d2f
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 69


 3877 007c C7F8FC02 		str	r0, [r7, #764]	@ float
 3878 0080 3046     		mov	r0, r6
 3879 0082 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3880              	.L728:
 3881 0086 2046     		mov	r0, r4
 3882 0088 5021     		movs	r1, #80
 3883 008a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3884 008e 18B9     		cbnz	r0, .L730
 3885              	.L732:
 3886 0090 0126     		movs	r6, #1
 3887              	.L731:
 3888 0092 3046     		mov	r0, r6
 3889 0094 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3890              	.L730:
 3891 0098 2046     		mov	r0, r4
 3892 009a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3893 009e 8046     		mov	r8, r0
 3894 00a0 C4E7     		b	.L729
 3895              	.L734:
 3896 00a2 FFF7FEFF 		bl	millis
 3897 00a6 2679     		ldrb	r6, [r4, #4]	@ zero_extendqisi2
 3898 00a8 4EB1     		cbz	r6, .L735
 3899 00aa 2368     		ldr	r3, [r4]
 3900 00ac C31A     		subs	r3, r0, r3
 3901 00ae 9845     		cmp	r8, r3
 3902 00b0 01D8     		bhi	.L736
 3903 00b2 2571     		strb	r5, [r4, #4]
 3904 00b4 EDE7     		b	.L731
 3905              	.L736:
 3906 00b6 0026     		movs	r6, #0
 3907 00b8 3046     		mov	r0, r6
 3908 00ba BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3909              	.L735:
 3910 00be 0123     		movs	r3, #1
 3911 00c0 2060     		str	r0, [r4]
 3912 00c2 2371     		strb	r3, [r4, #4]
 3913 00c4 E5E7     		b	.L731
 3914              	.L738:
 3915 00c6 00BF     		.align	3
 3916              	.L737:
 3917 00c8 FCA9F1D2 		.word	-755914244
 3918 00cc 4D62503F 		.word	1062232653
 3919 00d0 00408F40 		.word	1083129856
 3920              		.size	_ZN6GCodes7DoDwellER11GCodeBuffer, .-_ZN6GCodes7DoDwellER11GCodeBuffer
 3921 00d4 AFF30080 		.section	.text._ZN6GCodes11DoDwellTimeER11GCodeBufferm,"ax",%progbits
 3922              		.align	2
 3923              		.global	_ZN6GCodes11DoDwellTimeER11GCodeBufferm
 3924              		.thumb
 3925              		.thumb_func
 3926              		.type	_ZN6GCodes11DoDwellTimeER11GCodeBufferm, %function
 3927              	_ZN6GCodes11DoDwellTimeER11GCodeBufferm:
 3928              		@ args = 0, pretend = 0, frame = 0
 3929              		@ frame_needed = 0, uses_anonymous_args = 0
 3930 0000 38B5     		push	{r3, r4, r5, lr}
 3931 0002 0C46     		mov	r4, r1
 3932 0004 1546     		mov	r5, r2
 3933 0006 FFF7FEFF 		bl	millis
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 70


 3934 000a 2379     		ldrb	r3, [r4, #4]	@ zero_extendqisi2
 3935 000c 3BB1     		cbz	r3, .L740
 3936 000e 2268     		ldr	r2, [r4]
 3937 0010 801A     		subs	r0, r0, r2
 3938 0012 A842     		cmp	r0, r5
 3939 0014 08D3     		bcc	.L742
 3940 0016 0022     		movs	r2, #0
 3941 0018 2271     		strb	r2, [r4, #4]
 3942 001a 1846     		mov	r0, r3
 3943 001c 38BD     		pop	{r3, r4, r5, pc}
 3944              	.L740:
 3945 001e 0122     		movs	r2, #1
 3946 0020 2060     		str	r0, [r4]
 3947 0022 2271     		strb	r2, [r4, #4]
 3948 0024 1846     		mov	r0, r3
 3949 0026 38BD     		pop	{r3, r4, r5, pc}
 3950              	.L742:
 3951 0028 0023     		movs	r3, #0
 3952 002a 1846     		mov	r0, r3
 3953 002c 38BD     		pop	{r3, r4, r5, pc}
 3954              		.size	_ZN6GCodes11DoDwellTimeER11GCodeBufferm, .-_ZN6GCodes11DoDwellTimeER11GCodeBufferm
 3955 002e 00BF     		.section	.text._ZN6GCodes18SetOrReportOffsetsER11GCodeBufferR9StringRef,"ax",%progbits
 3956              		.align	2
 3957              		.global	_ZN6GCodes18SetOrReportOffsetsER11GCodeBufferR9StringRef
 3958              		.thumb
 3959              		.thumb_func
 3960              		.type	_ZN6GCodes18SetOrReportOffsetsER11GCodeBufferR9StringRef, %function
 3961              	_ZN6GCodes18SetOrReportOffsetsER11GCodeBufferR9StringRef:
 3962              		@ args = 0, pretend = 0, frame = 104
 3963              		@ frame_needed = 0, uses_anonymous_args = 0
 3964 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3965 0004 0D46     		mov	r5, r1
 3966 0006 9DB0     		sub	sp, sp, #116
 3967 0008 0646     		mov	r6, r0
 3968 000a 5021     		movs	r1, #80
 3969 000c 2846     		mov	r0, r5
 3970 000e 9046     		mov	r8, r2
 3971 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 3972 0014 18B9     		cbnz	r0, .L783
 3973              	.L768:
 3974 0016 0120     		movs	r0, #1
 3975              	.L781:
 3976 0018 1DB0     		add	sp, sp, #116
 3977              		@ sp needed
 3978 001a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3979              	.L783:
 3980 001e 2846     		mov	r0, r5
 3981 0020 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 3982 0024 D5F88830 		ldr	r3, [r5, #136]
 3983 0028 43FA80F0 		sxtab	r0, r3, r0
 3984 002c 40B2     		sxtb	r0, r0
 3985 002e 0390     		str	r0, [sp, #12]
 3986 0030 0146     		mov	r1, r0
 3987 0032 6848     		ldr	r0, .L787
 3988 0034 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 3989 0038 8146     		mov	r9, r0
 3990 003a 0028     		cmp	r0, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 71


 3991 003c 00F0AB80 		beq	.L784
 3992 0040 06AB     		add	r3, sp, #24
 3993 0042 00F1A802 		add	r2, r0, #168
 3994 0046 0CAF     		add	r7, sp, #48
 3995              	.L748:
 3996 0048 52F8041B 		ldr	r1, [r2], #4	@ float
 3997 004c 43F8041B 		str	r1, [r3], #4	@ float
 3998 0050 BB42     		cmp	r3, r7
 3999 0052 F9D1     		bne	.L748
 4000 0054 D6F8B031 		ldr	r3, [r6, #432]
 4001 0058 0024     		movs	r4, #0
 4002 005a 8DF81340 		strb	r4, [sp, #19]
 4003 005e 002B     		cmp	r3, #0
 4004 0060 34D0     		beq	.L754
 4005 0062 DFF888B1 		ldr	fp, .L787+24
 4006 0066 0DF1180A 		add	r10, sp, #24
 4007              	.L753:
 4008 006a 1BF80410 		ldrb	r1, [fp, r4]	@ zero_extendqisi2
 4009 006e 5246     		mov	r2, r10
 4010 0070 0DF11303 		add	r3, sp, #19
 4011 0074 2846     		mov	r0, r5
 4012 0076 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 4013 007a D6F8B031 		ldr	r3, [r6, #432]
 4014 007e 0134     		adds	r4, r4, #1
 4015 0080 A342     		cmp	r3, r4
 4016 0082 0AF1040A 		add	r10, r10, #4
 4017 0086 F0D8     		bhi	.L753
 4018 0088 9DF81330 		ldrb	r3, [sp, #19]	@ zero_extendqisi2
 4019 008c F3B1     		cbz	r3, .L754
 4020 008e B36D     		ldr	r3, [r6, #88]
 4021 0090 9D42     		cmp	r5, r3
 4022 0092 08D0     		beq	.L755
 4023 0094 0020     		movs	r0, #0
 4024 0096 002B     		cmp	r3, #0
 4025 0098 BED1     		bne	.L781
 4026 009a B565     		str	r5, [r6, #88]
 4027 009c AB68     		ldr	r3, [r5, #8]
 4028 009e DA68     		ldr	r2, [r3, #12]
 4029 00a0 42F00102 		orr	r2, r2, #1
 4030 00a4 DA60     		str	r2, [r3, #12]
 4031              	.L755:
 4032 00a6 DDF818C0 		ldr	ip, [sp, #24]	@ float
 4033 00aa 079C     		ldr	r4, [sp, #28]	@ float
 4034 00ac 0898     		ldr	r0, [sp, #32]	@ float
 4035 00ae 0999     		ldr	r1, [sp, #36]	@ float
 4036 00b0 0A9A     		ldr	r2, [sp, #40]	@ float
 4037 00b2 0B9B     		ldr	r3, [sp, #44]	@ float
 4038 00b4 C9F8A8C0 		str	ip, [r9, #168]	@ float
 4039 00b8 C9F8AC40 		str	r4, [r9, #172]	@ float
 4040 00bc C9F8B000 		str	r0, [r9, #176]	@ float
 4041 00c0 C9F8B410 		str	r1, [r9, #180]	@ float
 4042 00c4 C9F8B820 		str	r2, [r9, #184]	@ float
 4043 00c8 C9F8BC30 		str	r3, [r9, #188]	@ float
 4044              	.L754:
 4045 00cc D9F8A430 		ldr	r3, [r9, #164]
 4046 00d0 0593     		str	r3, [sp, #20]
 4047 00d2 002B     		cmp	r3, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 72


 4048 00d4 47D1     		bne	.L785
 4049              	.L751:
 4050 00d6 9DF81340 		ldrb	r4, [sp, #19]	@ zero_extendqisi2
 4051 00da 002C     		cmp	r4, #0
 4052 00dc 9BD1     		bne	.L768
 4053 00de 039A     		ldr	r2, [sp, #12]
 4054 00e0 3D49     		ldr	r1, .L787+4
 4055 00e2 4046     		mov	r0, r8
 4056 00e4 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 4057 00e8 D6F8B031 		ldr	r3, [r6, #432]
 4058 00ec A3B1     		cbz	r3, .L762
 4059 00ee DFF8FCB0 		ldr	fp, .L787+24
 4060 00f2 06AD     		add	r5, sp, #24
 4061              	.L763:
 4062 00f4 55F8040B 		ldr	r0, [r5], #4	@ float
 4063 00f8 1BF80490 		ldrb	r9, [fp, r4]	@ zero_extendqisi2
 4064 00fc FFF7FEFF 		bl	__aeabi_f2d
 4065 0100 4A46     		mov	r2, r9
 4066 0102 CDE90001 		strd	r0, [sp]
 4067 0106 4046     		mov	r0, r8
 4068 0108 3449     		ldr	r1, .L787+8
 4069 010a FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 4070 010e D6F8B031 		ldr	r3, [r6, #432]
 4071 0112 0134     		adds	r4, r4, #1
 4072 0114 A342     		cmp	r3, r4
 4073 0116 EDD8     		bhi	.L763
 4074              	.L762:
 4075 0118 059B     		ldr	r3, [sp, #20]
 4076 011a 002B     		cmp	r3, #0
 4077 011c 3FF47BAF 		beq	.L768
 4078 0120 4046     		mov	r0, r8
 4079 0122 2F49     		ldr	r1, .L787+12
 4080 0124 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 4081 0128 059B     		ldr	r3, [sp, #20]
 4082 012a 002B     		cmp	r3, #0
 4083 012c 3FF473AF 		beq	.L768
 4084 0130 0DF15009 		add	r9, sp, #80
 4085 0134 0026     		movs	r6, #0
 4086              	.L765:
 4087 0136 59F8040B 		ldr	r0, [r9], #4	@ float
 4088 013a 57F804AB 		ldr	r10, [r7], #4	@ float
 4089 013e FFF7FEFF 		bl	__aeabi_f2d
 4090 0142 0446     		mov	r4, r0
 4091 0144 5046     		mov	r0, r10	@ float
 4092 0146 0D46     		mov	r5, r1
 4093 0148 FFF7FEFF 		bl	__aeabi_f2d
 4094 014c 2B46     		mov	r3, r5
 4095 014e CDE90001 		strd	r0, [sp]
 4096 0152 2246     		mov	r2, r4
 4097 0154 4046     		mov	r0, r8
 4098 0156 2349     		ldr	r1, .L787+16
 4099 0158 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 4100 015c 059B     		ldr	r3, [sp, #20]
 4101 015e 0136     		adds	r6, r6, #1
 4102 0160 B342     		cmp	r3, r6
 4103 0162 E8D8     		bhi	.L765
 4104 0164 57E7     		b	.L768
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 73


 4105              	.L785:
 4106 0166 4846     		mov	r0, r9
 4107 0168 3946     		mov	r1, r7
 4108 016a 14AA     		add	r2, sp, #80
 4109 016c FFF7FEFF 		bl	_ZNK4Tool12GetVariablesEPfS0_
 4110 0170 2846     		mov	r0, r5
 4111 0172 5221     		movs	r1, #82
 4112 0174 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4113 0178 A0B9     		cbnz	r0, .L786
 4114 017a 2846     		mov	r0, r5
 4115 017c 5321     		movs	r1, #83
 4116 017e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4117 0182 0028     		cmp	r0, #0
 4118 0184 A7D0     		beq	.L751
 4119 0186 05AC     		add	r4, sp, #20
 4120              	.L767:
 4121 0188 2846     		mov	r0, r5
 4122 018a 2246     		mov	r2, r4
 4123 018c 14A9     		add	r1, sp, #80
 4124 018e 0123     		movs	r3, #1
 4125 0190 FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 4126 0194 13E0     		b	.L757
 4127              	.L784:
 4128 0196 4046     		mov	r0, r8
 4129 0198 039A     		ldr	r2, [sp, #12]
 4130 019a 1349     		ldr	r1, .L787+20
 4131 019c FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 4132 01a0 0120     		movs	r0, #1
 4133 01a2 39E7     		b	.L781
 4134              	.L786:
 4135 01a4 05AC     		add	r4, sp, #20
 4136 01a6 2846     		mov	r0, r5
 4137 01a8 3946     		mov	r1, r7
 4138 01aa 2246     		mov	r2, r4
 4139 01ac 0123     		movs	r3, #1
 4140 01ae FFF7FEFF 		bl	_ZN11GCodeBuffer13GetFloatArrayEPfRjb
 4141 01b2 2846     		mov	r0, r5
 4142 01b4 5321     		movs	r1, #83
 4143 01b6 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4144 01ba 0028     		cmp	r0, #0
 4145 01bc E4D1     		bne	.L767
 4146              	.L757:
 4147 01be 96F80033 		ldrb	r3, [r6, #768]	@ zero_extendqisi2
 4148 01c2 002B     		cmp	r3, #0
 4149 01c4 7FF427AF 		bne	.L768
 4150 01c8 4846     		mov	r0, r9
 4151 01ca 3946     		mov	r1, r7
 4152 01cc 14AA     		add	r2, sp, #80
 4153 01ce FFF7FEFF 		bl	_ZN4Tool12SetVariablesEPKfS1_
 4154 01d2 20E7     		b	.L768
 4155              	.L788:
 4156              		.align	2
 4157              	.L787:
 4158 01d4 00000000 		.word	reprap
 4159 01d8 A8050000 		.word	.LC52
 4160 01dc BC050000 		.word	.LC53
 4161 01e0 C4050000 		.word	.LC54
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 74


 4162 01e4 E8050000 		.word	.LC55
 4163 01e8 5C050000 		.word	.LC51
 4164 01ec 00000000 		.word	.LANCHOR0
 4165              		.size	_ZN6GCodes18SetOrReportOffsetsER11GCodeBufferR9StringRef, .-_ZN6GCodes18SetOrReportOffsetsER
 4166              		.section	.text._ZN6GCodes10ManageToolER11GCodeBufferR9StringRef,"ax",%progbits
 4167              		.align	2
 4168              		.global	_ZN6GCodes10ManageToolER11GCodeBufferR9StringRef
 4169              		.thumb
 4170              		.thumb_func
 4171              		.type	_ZN6GCodes10ManageToolER11GCodeBufferR9StringRef, %function
 4172              	_ZN6GCodes10ManageToolER11GCodeBufferR9StringRef:
 4173              		@ args = 0, pretend = 0, frame = 104
 4174              		@ frame_needed = 0, uses_anonymous_args = 0
 4175 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 4176 0004 0C46     		mov	r4, r1
 4177 0006 9EB0     		sub	sp, sp, #120
 4178 0008 0646     		mov	r6, r0
 4179 000a 5021     		movs	r1, #80
 4180 000c 2046     		mov	r0, r4
 4181 000e 1546     		mov	r5, r2
 4182 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4183 0014 40B9     		cbnz	r0, .L790
 4184 0016 2046     		mov	r0, r4
 4185 0018 5321     		movs	r1, #83
 4186 001a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4187 001e 0028     		cmp	r0, #0
 4188 0020 33D1     		bne	.L827
 4189              	.L789:
 4190 0022 1EB0     		add	sp, sp, #120
 4191              		@ sp needed
 4192 0024 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4193              	.L790:
 4194 0028 2046     		mov	r0, r4
 4195 002a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4196 002e B0F10008 		subs	r8, r0, #0
 4197 0032 32DB     		blt	.L828
 4198 0034 D6F8B431 		ldr	r3, [r6, #436]
 4199 0038 0493     		str	r3, [sp, #16]
 4200 003a 2046     		mov	r0, r4
 4201 003c 4421     		movs	r1, #68
 4202 003e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4203 0042 0028     		cmp	r0, #0
 4204 0044 40F0A380 		bne	.L829
 4205 0048 0490     		str	r0, [sp, #16]
 4206 004a 0746     		mov	r7, r0
 4207              	.L794:
 4208 004c 0823     		movs	r3, #8
 4209 004e 2046     		mov	r0, r4
 4210 0050 4821     		movs	r1, #72
 4211 0052 0593     		str	r3, [sp, #20]
 4212 0054 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4213 0058 0028     		cmp	r0, #0
 4214 005a 40F09180 		bne	.L830
 4215 005e 0590     		str	r0, [sp, #20]
 4216              	.L796:
 4217 0060 2046     		mov	r0, r4
 4218 0062 5821     		movs	r1, #88
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 75


 4219 0064 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4220 0068 0028     		cmp	r0, #0
 4221 006a 5ED1     		bne	.L831
 4222 006c 2046     		mov	r0, r4
 4223 006e 4621     		movs	r1, #70
 4224 0070 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4225 0074 0028     		cmp	r0, #0
 4226 0076 39D1     		bne	.L832
 4227 0078 BFB9     		cbnz	r7, .L833
 4228 007a 4146     		mov	r1, r8
 4229 007c 2A46     		mov	r2, r5
 4230 007e 4E48     		ldr	r0, .L836
 4231 0080 FFF7FEFF 		bl	_ZNK6RepRap9PrintToolEiR9StringRef
 4232 0084 1EB0     		add	sp, sp, #120
 4233              		@ sp needed
 4234 0086 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4235              	.L827:
 4236 008a 2046     		mov	r0, r4
 4237 008c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4238 0090 C4F88800 		str	r0, [r4, #136]
 4239 0094 1EB0     		add	sp, sp, #120
 4240              		@ sp needed
 4241 0096 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4242              	.L828:
 4243 009a 3068     		ldr	r0, [r6]
 4244 009c 474A     		ldr	r2, .L836+4
 4245 009e 0621     		movs	r1, #6
 4246 00a0 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 4247 00a4 1EB0     		add	sp, sp, #120
 4248              		@ sp needed
 4249 00a6 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4250              	.L833:
 4251 00aa 0127     		movs	r7, #1
 4252 00ac 3C46     		mov	r4, r7
 4253              	.L802:
 4254 00ae 4146     		mov	r1, r8
 4255 00b0 4148     		ldr	r0, .L836
 4256 00b2 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 4257 00b6 0146     		mov	r1, r0
 4258 00b8 3F48     		ldr	r0, .L836
 4259 00ba FFF7FEFF 		bl	_ZN6RepRap10DeleteToolEP4Tool
 4260 00be 049A     		ldr	r2, [sp, #16]
 4261 00c0 059B     		ldr	r3, [sp, #20]
 4262 00c2 012A     		cmp	r2, #1
 4263 00c4 01D1     		bne	.L810
 4264 00c6 012B     		cmp	r3, #1
 4265 00c8 68D0     		beq	.L834
 4266              	.L810:
 4267 00ca 8DE88800 		stmia	sp, {r3, r7}
 4268 00ce 0294     		str	r4, [sp, #8]
 4269 00d0 4046     		mov	r0, r8
 4270 00d2 07A9     		add	r1, sp, #28
 4271 00d4 0EAB     		add	r3, sp, #56
 4272 00d6 FFF7FEFF 		bl	_ZN4Tool6CreateEiPljS0_jmm
 4273 00da 0028     		cmp	r0, #0
 4274 00dc A1D0     		beq	.L789
 4275 00de 0146     		mov	r1, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 76


 4276 00e0 3548     		ldr	r0, .L836
 4277 00e2 FFF7FEFF 		bl	_ZN6RepRap7AddToolEP4Tool
 4278 00e6 1EB0     		add	sp, sp, #120
 4279              		@ sp needed
 4280 00e8 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4281              	.L832:
 4282 00ec 0127     		movs	r7, #1
 4283 00ee 0DF1580A 		add	r10, sp, #88
 4284 00f2 0DF11809 		add	r9, sp, #24
 4285              	.L801:
 4286 00f6 2046     		mov	r0, r4
 4287 00f8 0823     		movs	r3, #8
 4288 00fa 5146     		mov	r1, r10
 4289 00fc 4A46     		mov	r2, r9
 4290 00fe 0693     		str	r3, [sp, #24]
 4291 0100 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 4292 0104 0698     		ldr	r0, [sp, #24]
 4293 0106 0028     		cmp	r0, #0
 4294 0108 4FD0     		beq	.L815
 4295 010a 15AB     		add	r3, sp, #84
 4296 010c 03EB8000 		add	r0, r3, r0, lsl #2
 4297 0110 0021     		movs	r1, #0
 4298 0112 0124     		movs	r4, #1
 4299              	.L807:
 4300 0114 53F8042F 		ldr	r2, [r3, #4]!
 4301 0118 1F2A     		cmp	r2, #31
 4302 011a 9CBF     		itt	ls
 4303 011c 04FA02F2 		lslls	r2, r4, r2
 4304 0120 1143     		orrls	r1, r1, r2
 4305 0122 8342     		cmp	r3, r0
 4306 0124 F6D1     		bne	.L807
 4307 0126 CCB2     		uxtb	r4, r1
 4308 0128 C1E7     		b	.L802
 4309              	.L831:
 4310 012a 0DF1580A 		add	r10, sp, #88
 4311 012e 0DF11809 		add	r9, sp, #24
 4312 0132 D6F8B031 		ldr	r3, [r6, #432]
 4313 0136 0693     		str	r3, [sp, #24]
 4314 0138 2046     		mov	r0, r4
 4315 013a 5146     		mov	r1, r10
 4316 013c 4A46     		mov	r2, r9
 4317 013e FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 4318 0142 0698     		ldr	r0, [sp, #24]
 4319 0144 78B3     		cbz	r0, .L814
 4320 0146 15AB     		add	r3, sp, #84
 4321 0148 03EB8000 		add	r0, r3, r0, lsl #2
 4322 014c 0027     		movs	r7, #0
 4323 014e 0122     		movs	r2, #1
 4324              	.L800:
 4325 0150 53F8045F 		ldr	r5, [r3, #4]!
 4326 0154 1F2D     		cmp	r5, #31
 4327 0156 9CBF     		itt	ls
 4328 0158 02FA05F5 		lslls	r5, r2, r5
 4329 015c 2F43     		orrls	r7, r7, r5
 4330 015e 8342     		cmp	r3, r0
 4331 0160 F6D1     		bne	.L800
 4332              	.L798:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 77


 4333 0162 D6F8B031 		ldr	r3, [r6, #432]
 4334 0166 0125     		movs	r5, #1
 4335 0168 05FA03F3 		lsl	r3, r5, r3
 4336 016c 013B     		subs	r3, r3, #1
 4337 016e 2046     		mov	r0, r4
 4338 0170 4621     		movs	r1, #70
 4339 0172 1F40     		ands	r7, r7, r3
 4340 0174 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4341 0178 0028     		cmp	r0, #0
 4342 017a BCD1     		bne	.L801
 4343 017c 2C46     		mov	r4, r5
 4344 017e 96E7     		b	.L802
 4345              	.L830:
 4346 0180 2046     		mov	r0, r4
 4347 0182 0EA9     		add	r1, sp, #56
 4348 0184 05AA     		add	r2, sp, #20
 4349 0186 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 4350 018a 0127     		movs	r7, #1
 4351 018c 68E7     		b	.L796
 4352              	.L829:
 4353 018e 2046     		mov	r0, r4
 4354 0190 07A9     		add	r1, sp, #28
 4355 0192 04AA     		add	r2, sp, #16
 4356 0194 FFF7FEFF 		bl	_ZN11GCodeBuffer12GetLongArrayEPlRj
 4357 0198 0127     		movs	r7, #1
 4358 019a 57E7     		b	.L794
 4359              	.L834:
 4360 019c 079B     		ldr	r3, [sp, #28]
 4361 019e 0133     		adds	r3, r3, #1
 4362 01a0 05D0     		beq	.L835
 4363              	.L818:
 4364 01a2 1346     		mov	r3, r2
 4365 01a4 91E7     		b	.L810
 4366              	.L814:
 4367 01a6 0746     		mov	r7, r0
 4368 01a8 DBE7     		b	.L798
 4369              	.L815:
 4370 01aa 0446     		mov	r4, r0
 4371 01ac 7FE7     		b	.L802
 4372              	.L835:
 4373 01ae 0E9B     		ldr	r3, [sp, #56]
 4374 01b0 0133     		adds	r3, r3, #1
 4375 01b2 F6D1     		bne	.L818
 4376 01b4 35E7     		b	.L789
 4377              	.L837:
 4378 01b6 00BF     		.align	2
 4379              	.L836:
 4380 01b8 00000000 		.word	reprap
 4381 01bc F4050000 		.word	.LC56
 4382              		.size	_ZN6GCodes10ManageToolER11GCodeBufferR9StringRef, .-_ZN6GCodes10ManageToolER11GCodeBufferR9S
 4383              		.section	.text._ZN6GCodes13DisableDrivesEv,"ax",%progbits
 4384              		.align	2
 4385              		.global	_ZN6GCodes13DisableDrivesEv
 4386              		.thumb
 4387              		.thumb_func
 4388              		.type	_ZN6GCodes13DisableDrivesEv, %function
 4389              	_ZN6GCodes13DisableDrivesEv:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 78


 4390              		@ args = 0, pretend = 0, frame = 0
 4391              		@ frame_needed = 0, uses_anonymous_args = 0
 4392 0000 38B5     		push	{r3, r4, r5, lr}
 4393 0002 0546     		mov	r5, r0
 4394 0004 0024     		movs	r4, #0
 4395              	.L840:
 4396 0006 2146     		mov	r1, r4
 4397 0008 2868     		ldr	r0, [r5]
 4398 000a 0134     		adds	r4, r4, #1
 4399 000c FFF7FEFF 		bl	_ZN8Platform12DisableDriveEj
 4400 0010 0A2C     		cmp	r4, #10
 4401 0012 F8D1     		bne	.L840
 4402 0014 0023     		movs	r3, #0
 4403 0016 C5F89832 		str	r3, [r5, #664]
 4404 001a 38BD     		pop	{r3, r4, r5, pc}
 4405              		.size	_ZN6GCodes13DisableDrivesEv, .-_ZN6GCodes13DisableDrivesEv
 4406              		.section	.text._ZN6GCodes18SetEthernetAddressER11GCodeBufferi,"ax",%progbits
 4407              		.align	2
 4408              		.global	_ZN6GCodes18SetEthernetAddressER11GCodeBufferi
 4409              		.thumb
 4410              		.thumb_func
 4411              		.type	_ZN6GCodes18SetEthernetAddressER11GCodeBufferi, %function
 4412              	_ZN6GCodes18SetEthernetAddressER11GCodeBufferi:
 4413              		@ args = 0, pretend = 0, frame = 8
 4414              		@ frame_needed = 0, uses_anonymous_args = 0
 4415 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 4416 0004 0746     		mov	r7, r0
 4417 0006 82B0     		sub	sp, sp, #8
 4418 0008 0846     		mov	r0, r1
 4419 000a 0E46     		mov	r6, r1
 4420 000c 9046     		mov	r8, r2
 4421 000e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 4422 0012 4FF0000A 		mov	r10, #0
 4423 0016 8146     		mov	r9, r0
 4424 0018 0124     		movs	r4, #1
 4425 001a 5046     		mov	r0, r10
 4426 001c 01E0     		b	.L842
 4427              	.L843:
 4428 001e 0134     		adds	r4, r4, #1
 4429 0020 E4B2     		uxtb	r4, r4
 4430              	.L842:
 4431 0022 651E     		subs	r5, r4, #1
 4432 0024 EDB2     		uxtb	r5, r5
 4433 0026 19F80550 		ldrb	r5, [r9, r5]	@ zero_extendqisi2
 4434 002a 8DB1     		cbz	r5, .L854
 4435 002c 2E2D     		cmp	r5, #46
 4436 002e F6D1     		bne	.L843
 4437 0030 4844     		add	r0, r0, r9
 4438 0032 FFF7FEFF 		bl	atoi
 4439 0036 02AB     		add	r3, sp, #8
 4440 0038 5344     		add	r3, r3, r10
 4441 003a 0AF1010A 		add	r10, r10, #1
 4442 003e 5FFA8AFA 		uxtb	r10, r10
 4443 0042 BAF1030F 		cmp	r10, #3
 4444 0046 03F8040C 		strb	r0, [r3, #-4]
 4445 004a 0BD8     		bhi	.L846
 4446 004c 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 79


 4447 004e E6E7     		b	.L843
 4448              	.L854:
 4449 0050 4844     		add	r0, r0, r9
 4450 0052 FFF7FEFF 		bl	atoi
 4451 0056 02AB     		add	r3, sp, #8
 4452 0058 5344     		add	r3, r3, r10
 4453 005a BAF1030F 		cmp	r10, #3
 4454 005e 03F8040C 		strb	r0, [r3, #-4]
 4455 0062 09D0     		beq	.L855
 4456              	.L846:
 4457 0064 3868     		ldr	r0, [r7]
 4458 0066 174A     		ldr	r2, .L857
 4459 0068 06F10C03 		add	r3, r6, #12
 4460 006c 0621     		movs	r1, #6
 4461 006e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 4462 0072 02B0     		add	sp, sp, #8
 4463              		@ sp needed
 4464 0074 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4465              	.L855:
 4466 0078 40F22923 		movw	r3, #553
 4467 007c 9845     		cmp	r8, r3
 4468 007e 1AD0     		beq	.L848
 4469 0080 40F22A23 		movw	r3, #554
 4470 0084 9845     		cmp	r8, r3
 4471 0086 3868     		ldr	r0, [r7]
 4472 0088 0FD0     		beq	.L849
 4473 008a B8F50A7F 		cmp	r8, #552
 4474 008e 06D0     		beq	.L856
 4475 0090 0D4A     		ldr	r2, .L857+4
 4476 0092 0621     		movs	r1, #6
 4477 0094 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 4478 0098 02B0     		add	sp, sp, #8
 4479              		@ sp needed
 4480 009a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4481              	.L856:
 4482 009e 01A9     		add	r1, sp, #4
 4483 00a0 FFF7FEFF 		bl	_ZN8Platform12SetIPAddressEPh
 4484 00a4 02B0     		add	sp, sp, #8
 4485              		@ sp needed
 4486 00a6 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4487              	.L849:
 4488 00aa 01A9     		add	r1, sp, #4
 4489 00ac FFF7FEFF 		bl	_ZN8Platform10SetGateWayEPh
 4490 00b0 02B0     		add	sp, sp, #8
 4491              		@ sp needed
 4492 00b2 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4493              	.L848:
 4494 00b6 3868     		ldr	r0, [r7]
 4495 00b8 01A9     		add	r1, sp, #4
 4496 00ba FFF7FEFF 		bl	_ZN8Platform10SetNetMaskEPh
 4497 00be 02B0     		add	sp, sp, #8
 4498              		@ sp needed
 4499 00c0 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4500              	.L858:
 4501              		.align	2
 4502              	.L857:
 4503 00c4 14060000 		.word	.LC57
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 80


 4504 00c8 28060000 		.word	.LC58
 4505              		.size	_ZN6GCodes18SetEthernetAddressER11GCodeBufferi, .-_ZN6GCodes18SetEthernetAddressER11GCodeBuf
 4506              		.section	.text._ZN6GCodes13SetMACAddressER11GCodeBuffer,"ax",%progbits
 4507              		.align	2
 4508              		.global	_ZN6GCodes13SetMACAddressER11GCodeBuffer
 4509              		.thumb
 4510              		.thumb_func
 4511              		.type	_ZN6GCodes13SetMACAddressER11GCodeBuffer, %function
 4512              	_ZN6GCodes13SetMACAddressER11GCodeBuffer:
 4513              		@ args = 0, pretend = 0, frame = 8
 4514              		@ frame_needed = 0, uses_anonymous_args = 0
 4515 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 4516 0004 0746     		mov	r7, r0
 4517 0006 82B0     		sub	sp, sp, #8
 4518 0008 0846     		mov	r0, r1
 4519 000a 0E46     		mov	r6, r1
 4520 000c FFF7FEFF 		bl	_ZN11GCodeBuffer9GetStringEv
 4521 0010 4FF00008 		mov	r8, #0
 4522 0014 0546     		mov	r5, r0
 4523 0016 0124     		movs	r4, #1
 4524 0018 4046     		mov	r0, r8
 4525 001a 01E0     		b	.L860
 4526              	.L861:
 4527 001c 0134     		adds	r4, r4, #1
 4528 001e E4B2     		uxtb	r4, r4
 4529              	.L860:
 4530 0020 621E     		subs	r2, r4, #1
 4531 0022 D2B2     		uxtb	r2, r2
 4532 0024 A95C     		ldrb	r1, [r5, r2]	@ zero_extendqisi2
 4533 0026 99B1     		cbz	r1, .L867
 4534 0028 3A29     		cmp	r1, #58
 4535 002a F7D1     		bne	.L861
 4536 002c 2844     		add	r0, r0, r5
 4537 002e 0021     		movs	r1, #0
 4538 0030 1022     		movs	r2, #16
 4539 0032 FFF7FEFF 		bl	strtoul
 4540 0036 02AB     		add	r3, sp, #8
 4541 0038 4344     		add	r3, r3, r8
 4542 003a 08F10108 		add	r8, r8, #1
 4543 003e 5FFA88F8 		uxtb	r8, r8
 4544 0042 B8F1050F 		cmp	r8, #5
 4545 0046 03F8080C 		strb	r0, [r3, #-8]
 4546 004a 1CD8     		bhi	.L868
 4547 004c 2046     		mov	r0, r4
 4548 004e E5E7     		b	.L861
 4549              	.L867:
 4550 0050 2844     		add	r0, r0, r5
 4551 0052 1022     		movs	r2, #16
 4552 0054 FFF7FEFF 		bl	strtoul
 4553 0058 02AB     		add	r3, sp, #8
 4554 005a 4344     		add	r3, r3, r8
 4555 005c B8F1050F 		cmp	r8, #5
 4556 0060 03F8080C 		strb	r0, [r3, #-8]
 4557 0064 3868     		ldr	r0, [r7]
 4558 0066 08D0     		beq	.L869
 4559 0068 0C4A     		ldr	r2, .L870
 4560 006a 06F10C03 		add	r3, r6, #12
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 81


 4561 006e 0621     		movs	r1, #6
 4562 0070 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 4563 0074 02B0     		add	sp, sp, #8
 4564              		@ sp needed
 4565 0076 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4566              	.L869:
 4567 007a 6946     		mov	r1, sp
 4568 007c FFF7FEFF 		bl	_ZN8Platform13SetMACAddressEPh
 4569 0080 02B0     		add	sp, sp, #8
 4570              		@ sp needed
 4571 0082 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4572              	.L868:
 4573 0086 3868     		ldr	r0, [r7]
 4574 0088 044A     		ldr	r2, .L870
 4575 008a 06F10C03 		add	r3, r6, #12
 4576 008e 0621     		movs	r1, #6
 4577 0090 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 4578 0094 02B0     		add	sp, sp, #8
 4579              		@ sp needed
 4580 0096 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4581              	.L871:
 4582 009a 00BF     		.align	2
 4583              	.L870:
 4584 009c 50060000 		.word	.LC59
 4585              		.size	_ZN6GCodes13SetMACAddressER11GCodeBuffer, .-_ZN6GCodes13SetMACAddressER11GCodeBuffer
 4586              		.section	.text._ZNK6GCodes19ChangeMicrosteppingEjii,"ax",%progbits
 4587              		.align	2
 4588              		.global	_ZNK6GCodes19ChangeMicrosteppingEjii
 4589              		.thumb
 4590              		.thumb_func
 4591              		.type	_ZNK6GCodes19ChangeMicrosteppingEjii, %function
 4592              	_ZNK6GCodes19ChangeMicrosteppingEjii:
 4593              		@ args = 0, pretend = 0, frame = 8
 4594              		@ frame_needed = 0, uses_anonymous_args = 0
 4595 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 4596 0004 82B0     		sub	sp, sp, #8
 4597 0006 0546     		mov	r5, r0
 4598 0008 1C46     		mov	r4, r3
 4599 000a 1746     		mov	r7, r2
 4600 000c 0068     		ldr	r0, [r0]
 4601 000e 1A46     		mov	r2, r3
 4602 0010 0DF10703 		add	r3, sp, #7
 4603 0014 0E46     		mov	r6, r1
 4604 0016 FFF7FEFF 		bl	_ZNK8Platform16GetMicrosteppingEjiRb
 4605 001a 3146     		mov	r1, r6
 4606 001c 8046     		mov	r8, r0
 4607 001e 3A46     		mov	r2, r7
 4608 0020 2868     		ldr	r0, [r5]
 4609 0022 2346     		mov	r3, r4
 4610 0024 FFF7FEFF 		bl	_ZN8Platform16SetMicrosteppingEjii
 4611 0028 08B1     		cbz	r0, .L873
 4612 002a 012C     		cmp	r4, #1
 4613 002c 02DD     		ble	.L879
 4614              	.L873:
 4615 002e 02B0     		add	sp, sp, #8
 4616              		@ sp needed
 4617 0030 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 82


 4618              	.L879:
 4619 0034 2B68     		ldr	r3, [r5]
 4620 0036 03EB8606 		add	r6, r3, r6, lsl #2
 4621 003a D6ED527A 		flds	s15, [r6, #328]
 4622 003e F5EEC07A 		fcmpezs	s15
 4623 0042 F1EE10FA 		fmstat
 4624 0046 F2DD     		ble	.L873
 4625 0048 06EE107A 		fmsr	s12, r7	@ int
 4626 004c F8EEC66A 		fsitos	s13, s12
 4627 0050 06EE108A 		fmsr	s12, r8	@ int
 4628 0054 66EEA77A 		fmuls	s15, s13, s15
 4629 0058 B8EE467A 		fuitos	s14, s12
 4630 005c C7EE877A 		fdivs	s15, s15, s14
 4631 0060 C6ED527A 		fsts	s15, [r6, #328]
 4632 0064 02B0     		add	sp, sp, #8
 4633              		@ sp needed
 4634 0066 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4635              		.size	_ZNK6GCodes19ChangeMicrosteppingEjii, .-_ZNK6GCodes19ChangeMicrosteppingEjii
 4636 006a 00BF     		.section	.text._ZN6GCodes17SetMappedFanSpeedEv,"ax",%progbits
 4637              		.align	2
 4638              		.global	_ZN6GCodes17SetMappedFanSpeedEv
 4639              		.thumb
 4640              		.thumb_func
 4641              		.type	_ZN6GCodes17SetMappedFanSpeedEv, %function
 4642              	_ZN6GCodes17SetMappedFanSpeedEv:
 4643              		@ args = 0, pretend = 0, frame = 0
 4644              		@ frame_needed = 0, uses_anonymous_args = 0
 4645 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 4646 0002 104B     		ldr	r3, .L890
 4647 0004 596A     		ldr	r1, [r3, #36]
 4648 0006 0746     		mov	r7, r0
 4649 0008 A9B1     		cbz	r1, .L888
 4650 000a D1F8C460 		ldr	r6, [r1, #196]
 4651 000e 0024     		movs	r4, #0
 4652 0010 0125     		movs	r5, #1
 4653 0012 02E0     		b	.L884
 4654              	.L882:
 4655 0014 0134     		adds	r4, r4, #1
 4656 0016 082C     		cmp	r4, #8
 4657 0018 0CD0     		beq	.L889
 4658              	.L884:
 4659 001a 05FA04F3 		lsl	r3, r5, r4
 4660 001e 3342     		tst	r3, r6
 4661 0020 F8D0     		beq	.L882
 4662 0022 2146     		mov	r1, r4
 4663 0024 3868     		ldr	r0, [r7]
 4664 0026 D7F8BC22 		ldr	r2, [r7, #700]	@ float
 4665 002a 0134     		adds	r4, r4, #1
 4666 002c FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 4667 0030 082C     		cmp	r4, #8
 4668 0032 F2D1     		bne	.L884
 4669              	.L889:
 4670 0034 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 4671              	.L888:
 4672 0036 D7F8BC22 		ldr	r2, [r7, #700]	@ float
 4673 003a 0068     		ldr	r0, [r0]
 4674 003c BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 83


 4675 0040 FFF7FEBF 		b	_ZN8Platform11SetFanValueEjf
 4676              	.L891:
 4677              		.align	2
 4678              	.L890:
 4679 0044 00000000 		.word	reprap
 4680              		.size	_ZN6GCodes17SetMappedFanSpeedEv, .-_ZN6GCodes17SetMappedFanSpeedEv
 4681              		.section	.text._ZN6GCodes11HandleReplyER11GCodeBufferbPKc,"ax",%progbits
 4682              		.align	2
 4683              		.global	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 4684              		.thumb
 4685              		.thumb_func
 4686              		.type	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc, %function
 4687              	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc:
 4688              		@ args = 0, pretend = 0, frame = 0
 4689              		@ frame_needed = 0, uses_anonymous_args = 0
 4690 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 4691 0004 0C46     		mov	r4, r1
 4692 0006 8968     		ldr	r1, [r1, #8]
 4693 0008 0546     		mov	r5, r0
 4694 000a 487C     		ldrb	r0, [r1, #17]	@ zero_extendqisi2
 4695 000c 1E46     		mov	r6, r3
 4696 000e 4307     		lsls	r3, r0, #29
 4697 0010 9046     		mov	r8, r2
 4698 0012 22D4     		bmi	.L893
 4699 0014 2B6C     		ldr	r3, [r5, #64]
 4700 0016 1B68     		ldr	r3, [r3]
 4701 0018 A342     		cmp	r3, r4
 4702 001a 1ED0     		beq	.L893
 4703              	.L894:
 4704 001c AB6C     		ldr	r3, [r5, #72]
 4705 001e 1B68     		ldr	r3, [r3]
 4706 0020 A342     		cmp	r3, r4
 4707 0022 00F09080 		beq	.L941
 4708 0026 6B6C     		ldr	r3, [r5, #68]
 4709 0028 1B68     		ldr	r3, [r3]
 4710 002a 9C42     		cmp	r4, r3
 4711 002c 57D0     		beq	.L896
 4712 002e EB6B     		ldr	r3, [r5, #60]
 4713 0030 1B68     		ldr	r3, [r3]
 4714 0032 9C42     		cmp	r4, r3
 4715 0034 53D0     		beq	.L896
 4716 0036 0027     		movs	r7, #0
 4717              	.L897:
 4718 0038 2046     		mov	r0, r4
 4719 003a 4D21     		movs	r1, #77
 4720 003c 94F88C90 		ldrb	r9, [r4, #140]	@ zero_extendqisi2
 4721 0040 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4722 0044 0028     		cmp	r0, #0
 4723 0046 58D1     		bne	.L942
 4724 0048 DFF848A1 		ldr	r10, .L946+28
 4725              	.L898:
 4726 004c 052F     		cmp	r7, #5
 4727 004e 60D8     		bhi	.L899
 4728 0050 DFE807F0 		tbb	[pc, r7]
 4729              	.L901:
 4730 0054 2F       		.byte	(.L900-.L901)/2
 4731 0055 2F       		.byte	(.L900-.L901)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 84


 4732 0056 12       		.byte	(.L902-.L901)/2
 4733 0057 10       		.byte	(.L903-.L901)/2
 4734 0058 08       		.byte	(.L923-.L901)/2
 4735 0059 43       		.byte	(.L905-.L901)/2
 4736              		.align	1
 4737              	.L893:
 4738 005a 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 4739 005c 002B     		cmp	r3, #0
 4740 005e DDD1     		bne	.L894
 4741 0060 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4742              	.L923:
 4743 0064 444B     		ldr	r3, .L946
 4744              	.L904:
 4745 0066 2868     		ldr	r0, [r5]
 4746 0068 444A     		ldr	r2, .L946+4
 4747 006a 4946     		mov	r1, r9
 4748 006c BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 4749 0070 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 4750              	.L903:
 4751 0074 424B     		ldr	r3, .L946+8
 4752 0076 F6E7     		b	.L904
 4753              	.L902:
 4754 0078 2046     		mov	r0, r4
 4755 007a 4D21     		movs	r1, #77
 4756 007c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4757 0080 0028     		cmp	r0, #0
 4758 0082 50D1     		bne	.L943
 4759              	.L907:
 4760 0084 2046     		mov	r0, r4
 4761 0086 4D21     		movs	r1, #77
 4762 0088 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4763 008c 0028     		cmp	r0, #0
 4764 008e 2BD0     		beq	.L916
 4765 0090 2046     		mov	r0, r4
 4766 0092 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4767 0096 6928     		cmp	r0, #105
 4768 0098 26D1     		bne	.L916
 4769              	.L909:
 4770 009a 5246     		mov	r2, r10
 4771 009c 2868     		ldr	r0, [r5]
 4772 009e 4946     		mov	r1, r9
 4773 00a0 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 4774 00a4 374A     		ldr	r2, .L946+12
 4775 00a6 2868     		ldr	r0, [r5]
 4776 00a8 4946     		mov	r1, r9
 4777 00aa FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 4778 00ae 3246     		mov	r2, r6
 4779 00b0 08E0     		b	.L938
 4780              	.L900:
 4781 00b2 B8F1000F 		cmp	r8, #0
 4782 00b6 04D0     		beq	.L940
 4783 00b8 2868     		ldr	r0, [r5]
 4784 00ba 334A     		ldr	r2, .L946+16
 4785 00bc 4946     		mov	r1, r9
 4786 00be FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 4787              	.L940:
 4788 00c2 3246     		mov	r2, r6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 85


 4789              	.L938:
 4790 00c4 2868     		ldr	r0, [r5]
 4791 00c6 4946     		mov	r1, r9
 4792 00c8 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 4793 00cc 2868     		ldr	r0, [r5]
 4794 00ce 2F4A     		ldr	r2, .L946+20
 4795 00d0 4946     		mov	r1, r9
 4796 00d2 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 4797 00d6 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 4798              	.L905:
 4799 00da 2D4B     		ldr	r3, .L946+24
 4800 00dc C3E7     		b	.L904
 4801              	.L896:
 4802 00de 2868     		ldr	r0, [r5]
 4803 00e0 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 4804 00e4 0746     		mov	r7, r0
 4805 00e6 A7E7     		b	.L897
 4806              	.L916:
 4807 00e8 2046     		mov	r0, r4
 4808 00ea 4D21     		movs	r1, #77
 4809 00ec FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4810 00f0 88B9     		cbnz	r0, .L944
 4811              	.L910:
 4812 00f2 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 4813 00f4 6BBB     		cbnz	r3, .L945
 4814              	.L939:
 4815 00f6 5246     		mov	r2, r10
 4816 00f8 E4E7     		b	.L938
 4817              	.L942:
 4818 00fa 2046     		mov	r0, r4
 4819 00fc FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4820 0100 244A     		ldr	r2, .L946+28
 4821 0102 254B     		ldr	r3, .L946+32
 4822 0104 40F2E63A 		movw	r10, #998
 4823 0108 5045     		cmp	r0, r10
 4824 010a 14BF     		ite	ne
 4825 010c 9246     		movne	r10, r2
 4826 010e 9A46     		moveq	r10, r3
 4827 0110 9CE7     		b	.L898
 4828              	.L899:
 4829 0112 224B     		ldr	r3, .L946+36
 4830 0114 A7E7     		b	.L904
 4831              	.L944:
 4832 0116 2046     		mov	r0, r4
 4833 0118 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4834 011c 40F2E633 		movw	r3, #998
 4835 0120 9842     		cmp	r0, r3
 4836 0122 E6D1     		bne	.L910
 4837 0124 B9E7     		b	.L909
 4838              	.L943:
 4839 0126 2046     		mov	r0, r4
 4840 0128 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4841 012c 1C28     		cmp	r0, #28
 4842 012e A9D1     		bne	.L907
 4843 0130 5246     		mov	r2, r10
 4844 0132 2868     		ldr	r0, [r5]
 4845 0134 4946     		mov	r1, r9
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 86


 4846 0136 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 4847 013a 2868     		ldr	r0, [r5]
 4848 013c 134A     		ldr	r2, .L946+20
 4849 013e 4946     		mov	r1, r9
 4850 0140 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 4851 0144 BDE7     		b	.L940
 4852              	.L941:
 4853 0146 2868     		ldr	r0, [r5]
 4854 0148 3146     		mov	r1, r6
 4855 014a BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 4856 014e FFF7FEBF 		b	_ZN8Platform14AppendAuxReplyEPKc
 4857              	.L945:
 4858 0152 2046     		mov	r0, r4
 4859 0154 FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 4860 0158 50B9     		cbnz	r0, .L911
 4861 015a 3246     		mov	r2, r6
 4862 015c 2868     		ldr	r0, [r5]
 4863 015e 4946     		mov	r1, r9
 4864 0160 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 4865 0164 2868     		ldr	r0, [r5]
 4866 0166 094A     		ldr	r2, .L946+20
 4867 0168 4946     		mov	r1, r9
 4868 016a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 4869 016e C2E7     		b	.L939
 4870              	.L911:
 4871 0170 3378     		ldrb	r3, [r6]	@ zero_extendqisi2
 4872 0172 002B     		cmp	r3, #0
 4873 0174 A5D1     		bne	.L940
 4874 0176 BEE7     		b	.L939
 4875              	.L947:
 4876              		.align	2
 4877              	.L946:
 4878 0178 78060000 		.word	.LC63
 4879 017c A4060000 		.word	.LC68
 4880 0180 70060000 		.word	.LC62
 4881 0184 CC060000 		.word	.LC69
 4882 0188 98060000 		.word	.LC66
 4883 018c A0060000 		.word	.LC67
 4884 0190 84060000 		.word	.LC64
 4885 0194 68060000 		.word	.LC60
 4886 0198 6C060000 		.word	.LC61
 4887 019c 90060000 		.word	.LC65
 4888              		.size	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc, .-_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 4889              		.section	.text._ZN6GCodes15WriteHTMLToFileER11GCodeBufferc,"ax",%progbits
 4890              		.align	2
 4891              		.global	_ZN6GCodes15WriteHTMLToFileER11GCodeBufferc
 4892              		.thumb
 4893              		.thumb_func
 4894              		.type	_ZN6GCodes15WriteHTMLToFileER11GCodeBufferc, %function
 4895              	_ZN6GCodes15WriteHTMLToFileER11GCodeBufferc:
 4896              		@ args = 0, pretend = 0, frame = 0
 4897              		@ frame_needed = 0, uses_anonymous_args = 0
 4898 0000 70B5     		push	{r4, r5, r6, lr}
 4899 0002 0446     		mov	r4, r0
 4900 0004 D0F87802 		ldr	r0, [r0, #632]
 4901 0008 0E46     		mov	r6, r1
 4902 000a 1546     		mov	r5, r2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 87


 4903 000c 0028     		cmp	r0, #0
 4904 000e 3AD0     		beq	.L959
 4905 0010 94F88C32 		ldrb	r3, [r4, #652]	@ zero_extendqisi2
 4906 0014 4BB1     		cbz	r3, .L950
 4907 0016 D4F88812 		ldr	r1, [r4, #648]
 4908 001a CA5C     		ldrb	r2, [r1, r3]	@ zero_extendqisi2
 4909 001c AA42     		cmp	r2, r5
 4910 001e 11D0     		beq	.L951
 4911 0020 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 4912 0024 0023     		movs	r3, #0
 4913 0026 84F88C32 		strb	r3, [r4, #652]
 4914              	.L950:
 4915 002a D4F88832 		ldr	r3, [r4, #648]
 4916 002e 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 4917 0030 AB42     		cmp	r3, r5
 4918 0032 06D0     		beq	.L960
 4919 0034 D4F87802 		ldr	r0, [r4, #632]
 4920 0038 2946     		mov	r1, r5
 4921 003a BDE87040 		pop	{r4, r5, r6, lr}
 4922 003e FFF7FEBF 		b	_ZN9FileStore5WriteEc
 4923              	.L960:
 4924 0042 0023     		movs	r3, #0
 4925              	.L951:
 4926 0044 0133     		adds	r3, r3, #1
 4927 0046 94F88D22 		ldrb	r2, [r4, #653]	@ zero_extendqisi2
 4928 004a DBB2     		uxtb	r3, r3
 4929 004c 9A42     		cmp	r2, r3
 4930 004e 84F88C32 		strb	r3, [r4, #652]
 4931 0052 00D9     		bls	.L961
 4932 0054 70BD     		pop	{r4, r5, r6, pc}
 4933              	.L961:
 4934 0056 0025     		movs	r5, #0
 4935 0058 D4F87802 		ldr	r0, [r4, #632]
 4936 005c FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 4937 0060 C4F87852 		str	r5, [r4, #632]
 4938 0064 C6F88450 		str	r5, [r6, #132]
 4939 0068 2068     		ldr	r0, [r4]
 4940 006a FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 4941 006e 094A     		ldr	r2, .L962
 4942 0070 094B     		ldr	r3, .L962+4
 4943 0072 3146     		mov	r1, r6
 4944 0074 0228     		cmp	r0, #2
 4945 0076 18BF     		it	ne
 4946 0078 1346     		movne	r3, r2
 4947 007a 2A46     		mov	r2, r5
 4948 007c 2046     		mov	r0, r4
 4949 007e BDE87040 		pop	{r4, r5, r6, lr}
 4950 0082 FFF7FEBF 		b	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 4951              	.L959:
 4952 0086 2068     		ldr	r0, [r4]
 4953 0088 044A     		ldr	r2, .L962+8
 4954 008a 0621     		movs	r1, #6
 4955 008c BDE87040 		pop	{r4, r5, r6, lr}
 4956 0090 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 4957              	.L963:
 4958              		.align	2
 4959              	.L962:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 88


 4960 0094 E4060000 		.word	.LC71
 4961 0098 D0060000 		.word	.LC70
 4962 009c E8060000 		.word	.LC72
 4963              		.size	_ZN6GCodes15WriteHTMLToFileER11GCodeBufferc, .-_ZN6GCodes15WriteHTMLToFileER11GCodeBufferc
 4964              		.section	.text._ZN6GCodes16WriteGCodeToFileER11GCodeBuffer,"ax",%progbits
 4965              		.align	2
 4966              		.global	_ZN6GCodes16WriteGCodeToFileER11GCodeBuffer
 4967              		.thumb
 4968              		.thumb_func
 4969              		.type	_ZN6GCodes16WriteGCodeToFileER11GCodeBuffer, %function
 4970              	_ZN6GCodes16WriteGCodeToFileER11GCodeBuffer:
 4971              		@ args = 0, pretend = 0, frame = 0
 4972              		@ frame_needed = 0, uses_anonymous_args = 0
 4973 0000 D0F87832 		ldr	r3, [r0, #632]
 4974 0004 70B5     		push	{r4, r5, r6, lr}
 4975 0006 0546     		mov	r5, r0
 4976 0008 0C46     		mov	r4, r1
 4977 000a 002B     		cmp	r3, #0
 4978 000c 57D0     		beq	.L979
 4979 000e 0846     		mov	r0, r1
 4980 0010 4D21     		movs	r1, #77
 4981 0012 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4982 0016 20B1     		cbz	r0, .L966
 4983 0018 2046     		mov	r0, r4
 4984 001a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4985 001e 1D28     		cmp	r0, #29
 4986 0020 1ED0     		beq	.L980
 4987              	.L966:
 4988 0022 2046     		mov	r0, r4
 4989 0024 4721     		movs	r1, #71
 4990 0026 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 4991 002a 30B1     		cbz	r0, .L968
 4992 002c 2046     		mov	r0, r4
 4993 002e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 4994 0032 40F2E633 		movw	r3, #998
 4995 0036 9842     		cmp	r0, r3
 4996 0038 2AD0     		beq	.L981
 4997              	.L968:
 4998 003a 04F10C01 		add	r1, r4, #12
 4999 003e D5F87802 		ldr	r0, [r5, #632]
 5000 0042 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 5001 0046 D5F87802 		ldr	r0, [r5, #632]
 5002 004a 0A21     		movs	r1, #10
 5003 004c FFF7FEFF 		bl	_ZN9FileStore5WriteEc
 5004 0050 2846     		mov	r0, r5
 5005 0052 2146     		mov	r1, r4
 5006 0054 0022     		movs	r2, #0
 5007 0056 1D4B     		ldr	r3, .L982
 5008 0058 BDE87040 		pop	{r4, r5, r6, lr}
 5009 005c FFF7FEBF 		b	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 5010              	.L980:
 5011 0060 0026     		movs	r6, #0
 5012 0062 D5F87802 		ldr	r0, [r5, #632]
 5013 0066 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 5014 006a C5F87862 		str	r6, [r5, #632]
 5015 006e C4F88460 		str	r6, [r4, #132]
 5016 0072 2868     		ldr	r0, [r5]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 89


 5017 0074 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 5018 0078 144A     		ldr	r2, .L982
 5019 007a 154B     		ldr	r3, .L982+4
 5020 007c 2146     		mov	r1, r4
 5021 007e 0228     		cmp	r0, #2
 5022 0080 18BF     		it	ne
 5023 0082 1346     		movne	r3, r2
 5024 0084 3246     		mov	r2, r6
 5025 0086 2846     		mov	r0, r5
 5026 0088 BDE87040 		pop	{r4, r5, r6, lr}
 5027 008c FFF7FEBF 		b	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 5028              	.L981:
 5029 0090 2046     		mov	r0, r4
 5030 0092 5021     		movs	r1, #80
 5031 0094 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5032 0098 0028     		cmp	r0, #0
 5033 009a CED0     		beq	.L968
 5034 009c 2046     		mov	r0, r4
 5035 009e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5036 00a2 0C4E     		ldr	r6, .L982+8
 5037 00a4 0C49     		ldr	r1, .L982+12
 5038 00a6 0246     		mov	r2, r0
 5039 00a8 3046     		mov	r0, r6
 5040 00aa FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5041 00ae 2846     		mov	r0, r5
 5042 00b0 2146     		mov	r1, r4
 5043 00b2 3368     		ldr	r3, [r6]
 5044 00b4 0022     		movs	r2, #0
 5045 00b6 BDE87040 		pop	{r4, r5, r6, lr}
 5046 00ba FFF7FEBF 		b	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 5047              	.L979:
 5048 00be 0068     		ldr	r0, [r0]
 5049 00c0 064A     		ldr	r2, .L982+16
 5050 00c2 0621     		movs	r1, #6
 5051 00c4 BDE87040 		pop	{r4, r5, r6, lr}
 5052 00c8 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 5053              	.L983:
 5054              		.align	2
 5055              	.L982:
 5056 00cc E4060000 		.word	.LC71
 5057 00d0 D0060000 		.word	.LC70
 5058 00d4 00000000 		.word	scratchString
 5059 00d8 0C070000 		.word	.LC73
 5060 00dc E8060000 		.word	.LC72
 5061              		.size	_ZN6GCodes16WriteGCodeToFileER11GCodeBuffer, .-_ZN6GCodes16WriteGCodeToFileER11GCodeBuffer
 5062              		.section	.text._ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer,"ax",%progbits
 5063              		.align	2
 5064              		.global	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer
 5065              		.thumb
 5066              		.thumb_func
 5067              		.type	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer, %function
 5068              	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer:
 5069              		@ args = 0, pretend = 0, frame = 0
 5070              		@ frame_needed = 0, uses_anonymous_args = 0
 5071 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 5072 0004 1E46     		mov	r6, r3
 5073 0006 0546     		mov	r5, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 90


 5074 0008 0C46     		mov	r4, r1
 5075 000a 9146     		mov	r9, r2
 5076 000c 002B     		cmp	r3, #0
 5077 000e 7CD0     		beq	.L984
 5078 0010 836C     		ldr	r3, [r0, #72]
 5079 0012 1B68     		ldr	r3, [r3]
 5080 0014 8B42     		cmp	r3, r1
 5081 0016 00F0A880 		beq	.L1034
 5082 001a 436C     		ldr	r3, [r0, #68]
 5083 001c 1B68     		ldr	r3, [r3]
 5084 001e 8B42     		cmp	r3, r1
 5085 0020 75D0     		beq	.L987
 5086 0022 C36B     		ldr	r3, [r0, #60]
 5087 0024 1B68     		ldr	r3, [r3]
 5088 0026 8B42     		cmp	r3, r1
 5089 0028 71D0     		beq	.L987
 5090 002a 0027     		movs	r7, #0
 5091              	.L988:
 5092 002c 2046     		mov	r0, r4
 5093 002e 4D21     		movs	r1, #77
 5094 0030 94F88C80 		ldrb	r8, [r4, #140]	@ zero_extendqisi2
 5095 0034 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5096 0038 40B9     		cbnz	r0, .L1035
 5097 003a DFF870A1 		ldr	r10, .L1040
 5098              	.L989:
 5099 003e 052F     		cmp	r7, #5
 5100 0040 6AD8     		bhi	.L990
 5101 0042 DFE807F0 		tbb	[pc, r7]
 5102              	.L992:
 5103 0046 1D       		.byte	(.L991-.L992)/2
 5104 0047 1D       		.byte	(.L991-.L992)/2
 5105 0048 2C       		.byte	(.L993-.L992)/2
 5106 0049 60       		.byte	(.L994-.L992)/2
 5107 004a 0F       		.byte	(.L1015-.L992)/2
 5108 004b 1B       		.byte	(.L996-.L992)/2
 5109              		.align	1
 5110              	.L1035:
 5111 004c 2046     		mov	r0, r4
 5112 004e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5113 0052 564A     		ldr	r2, .L1040
 5114 0054 564B     		ldr	r3, .L1040+4
 5115 0056 40F2E63A 		movw	r10, #998
 5116 005a 5045     		cmp	r0, r10
 5117 005c 14BF     		ite	ne
 5118 005e 9246     		movne	r10, r2
 5119 0060 9A46     		moveq	r10, r3
 5120 0062 ECE7     		b	.L989
 5121              	.L1015:
 5122 0064 534C     		ldr	r4, .L1040+8
 5123              	.L995:
 5124 0066 3046     		mov	r0, r6
 5125 0068 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllEPS_
 5126 006c 2868     		ldr	r0, [r5]
 5127 006e 524A     		ldr	r2, .L1040+12
 5128 0070 4146     		mov	r1, r8
 5129 0072 2346     		mov	r3, r4
 5130 0074 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 91


 5131 0078 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 5132              	.L996:
 5133 007c 4F4C     		ldr	r4, .L1040+16
 5134 007e F2E7     		b	.L995
 5135              	.L991:
 5136 0080 B9F1000F 		cmp	r9, #0
 5137 0084 04D0     		beq	.L1030
 5138 0086 2868     		ldr	r0, [r5]
 5139 0088 4D4A     		ldr	r2, .L1040+20
 5140 008a 4146     		mov	r1, r8
 5141 008c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5142              	.L1030:
 5143 0090 2868     		ldr	r0, [r5]
 5144 0092 4146     		mov	r1, r8
 5145 0094 3246     		mov	r2, r6
 5146 0096 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 5147 009a FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 5148              	.L993:
 5149 009e 2046     		mov	r0, r4
 5150 00a0 4D21     		movs	r1, #77
 5151 00a2 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5152 00a6 0028     		cmp	r0, #0
 5153 00a8 4AD1     		bne	.L1036
 5154              	.L998:
 5155 00aa 2046     		mov	r0, r4
 5156 00ac 4D21     		movs	r1, #77
 5157 00ae FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5158 00b2 0028     		cmp	r0, #0
 5159 00b4 5FD1     		bne	.L1037
 5160              	.L1001:
 5161 00b6 2046     		mov	r0, r4
 5162 00b8 4D21     		movs	r1, #77
 5163 00ba FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5164 00be 20B1     		cbz	r0, .L1008
 5165 00c0 2046     		mov	r0, r4
 5166 00c2 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5167 00c6 6928     		cmp	r0, #105
 5168 00c8 2FD0     		beq	.L1002
 5169              	.L1008:
 5170 00ca 2046     		mov	r0, r4
 5171 00cc 4D21     		movs	r1, #77
 5172 00ce FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5173 00d2 18BB     		cbnz	r0, .L1038
 5174              	.L1003:
 5175 00d4 3046     		mov	r0, r6
 5176 00d6 FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 5177 00da 0028     		cmp	r0, #0
 5178 00dc 58D1     		bne	.L1039
 5179              	.L1004:
 5180 00de 3046     		mov	r0, r6
 5181 00e0 FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 5182 00e4 0028     		cmp	r0, #0
 5183 00e6 D3D1     		bne	.L1030
 5184 00e8 3046     		mov	r0, r6
 5185 00ea FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllEPS_
 5186              	.L1032:
 5187 00ee 5246     		mov	r2, r10
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 92


 5188 00f0 2868     		ldr	r0, [r5]
 5189 00f2 4146     		mov	r1, r8
 5190 00f4 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5191 00f8 2868     		ldr	r0, [r5]
 5192 00fa 324A     		ldr	r2, .L1040+24
 5193 00fc 4146     		mov	r1, r8
 5194 00fe BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 5195 0102 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 5196              	.L994:
 5197 0106 304C     		ldr	r4, .L1040+28
 5198 0108 ADE7     		b	.L995
 5199              	.L984:
 5200 010a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 5201              	.L987:
 5202 010e 2868     		ldr	r0, [r5]
 5203 0110 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 5204 0114 0746     		mov	r7, r0
 5205 0116 89E7     		b	.L988
 5206              	.L990:
 5207 0118 2C4C     		ldr	r4, .L1040+32
 5208 011a A4E7     		b	.L995
 5209              	.L1038:
 5210 011c 2046     		mov	r0, r4
 5211 011e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5212 0122 40F2E633 		movw	r3, #998
 5213 0126 9842     		cmp	r0, r3
 5214 0128 D4D1     		bne	.L1003
 5215              	.L1002:
 5216 012a 5246     		mov	r2, r10
 5217 012c 2868     		ldr	r0, [r5]
 5218 012e 4146     		mov	r1, r8
 5219 0130 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5220 0134 2868     		ldr	r0, [r5]
 5221 0136 264A     		ldr	r2, .L1040+36
 5222              	.L1031:
 5223 0138 4146     		mov	r1, r8
 5224 013a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5225 013e A7E7     		b	.L1030
 5226              	.L1036:
 5227 0140 2046     		mov	r0, r4
 5228 0142 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5229 0146 1428     		cmp	r0, #20
 5230 0148 AFD1     		bne	.L998
 5231 014a 2868     		ldr	r0, [r5]
 5232 014c 214A     		ldr	r2, .L1040+40
 5233 014e 4146     		mov	r1, r8
 5234 0150 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5235 0154 3246     		mov	r2, r6
 5236 0156 2868     		ldr	r0, [r5]
 5237 0158 4146     		mov	r1, r8
 5238 015a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 5239 015e 2868     		ldr	r0, [r5]
 5240 0160 1D4A     		ldr	r2, .L1040+44
 5241              	.L1033:
 5242 0162 4146     		mov	r1, r8
 5243 0164 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5244 0168 C1E7     		b	.L1032
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 93


 5245              	.L1034:
 5246 016a 3146     		mov	r1, r6
 5247 016c 0068     		ldr	r0, [r0]
 5248 016e BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 5249 0172 FFF7FEBF 		b	_ZN8Platform14AppendAuxReplyEP12OutputBuffer
 5250              	.L1037:
 5251 0176 2046     		mov	r0, r4
 5252 0178 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5253 017c 1C28     		cmp	r0, #28
 5254 017e 9AD1     		bne	.L1001
 5255 0180 5246     		mov	r2, r10
 5256 0182 2868     		ldr	r0, [r5]
 5257 0184 4146     		mov	r1, r8
 5258 0186 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5259 018a 2868     		ldr	r0, [r5]
 5260 018c 0D4A     		ldr	r2, .L1040+24
 5261 018e D3E7     		b	.L1031
 5262              	.L1039:
 5263 0190 2046     		mov	r0, r4
 5264 0192 FFF7FEFF 		bl	_ZNK11GCodeBuffer16IsDoingFileMacroEv
 5265 0196 0028     		cmp	r0, #0
 5266 0198 A1D1     		bne	.L1004
 5267 019a 3246     		mov	r2, r6
 5268 019c 2868     		ldr	r0, [r5]
 5269 019e 4146     		mov	r1, r8
 5270 01a0 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypeP12OutputBuffer
 5271 01a4 2868     		ldr	r0, [r5]
 5272 01a6 074A     		ldr	r2, .L1040+24
 5273 01a8 DBE7     		b	.L1033
 5274              	.L1041:
 5275 01aa 00BF     		.align	2
 5276              	.L1040:
 5277 01ac 68060000 		.word	.LC60
 5278 01b0 6C060000 		.word	.LC61
 5279 01b4 78060000 		.word	.LC63
 5280 01b8 A4060000 		.word	.LC68
 5281 01bc 84060000 		.word	.LC64
 5282 01c0 98060000 		.word	.LC66
 5283 01c4 A0060000 		.word	.LC67
 5284 01c8 70060000 		.word	.LC62
 5285 01cc 90060000 		.word	.LC65
 5286 01d0 CC060000 		.word	.LC69
 5287 01d4 10070000 		.word	.LC74
 5288 01d8 24070000 		.word	.LC75
 5289              		.size	_ZN6GCodes11HandleReplyER11GCodeBufferbP12OutputBuffer, .-_ZN6GCodes11HandleReplyER11GCodeBu
 5290              		.section	.text._ZN6GCodes16SetPidParametersER11GCodeBufferiR9StringRef,"ax",%progbits
 5291              		.align	2
 5292              		.global	_ZN6GCodes16SetPidParametersER11GCodeBufferiR9StringRef
 5293              		.thumb
 5294              		.thumb_func
 5295              		.type	_ZN6GCodes16SetPidParametersER11GCodeBufferiR9StringRef, %function
 5296              	_ZN6GCodes16SetPidParametersER11GCodeBufferiR9StringRef:
 5297              		@ args = 0, pretend = 0, frame = 16
 5298              		@ frame_needed = 0, uses_anonymous_args = 0
 5299 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 5300 0004 0846     		mov	r0, r1
 5301 0006 8BB0     		sub	sp, sp, #44
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 94


 5302 0008 0C46     		mov	r4, r1
 5303 000a 4821     		movs	r1, #72
 5304 000c 1546     		mov	r5, r2
 5305 000e 1F46     		mov	r7, r3
 5306 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5307 0014 0028     		cmp	r0, #0
 5308 0016 46D1     		bne	.L1052
 5309              	.L1043:
 5310 0018 072D     		cmp	r5, #7
 5311 001a 02D9     		bls	.L1053
 5312              	.L1042:
 5313 001c 0BB0     		add	sp, sp, #44
 5314              		@ sp needed
 5315 001e BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 5316              	.L1053:
 5317 0022 DFF8C490 		ldr	r9, .L1056+12
 5318 0026 D9F80C30 		ldr	r3, [r9, #12]
 5319 002a 03EB8503 		add	r3, r3, r5, lsl #2
 5320 002e 0AAE     		add	r6, sp, #40
 5321 0030 D3F80480 		ldr	r8, [r3, #4]
 5322 0034 07A8     		add	r0, sp, #28
 5323 0036 08F13001 		add	r1, r8, #48
 5324 003a 0022     		movs	r2, #0
 5325 003c FFF7FEFF 		bl	_ZNK5FopDt20GetM301PidParametersEb
 5326 0040 0023     		movs	r3, #0
 5327 0042 06F80D3D 		strb	r3, [r6, #-13]!
 5328 0046 07AA     		add	r2, sp, #28
 5329 0048 3346     		mov	r3, r6
 5330 004a 2046     		mov	r0, r4
 5331 004c 5021     		movs	r1, #80
 5332 004e FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 5333 0052 2046     		mov	r0, r4
 5334 0054 3346     		mov	r3, r6
 5335 0056 4921     		movs	r1, #73
 5336 0058 08AA     		add	r2, sp, #32
 5337 005a FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 5338 005e 3346     		mov	r3, r6
 5339 0060 2046     		mov	r0, r4
 5340 0062 4421     		movs	r1, #68
 5341 0064 09AA     		add	r2, sp, #36
 5342 0066 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 5343 006a 9DF81B30 		ldrb	r3, [sp, #27]	@ zero_extendqisi2
 5344 006e 2BBB     		cbnz	r3, .L1054
 5345 0070 98F84130 		ldrb	r3, [r8, #65]	@ zero_extendqisi2
 5346 0074 E3B1     		cbz	r3, .L1055
 5347 0076 98F84230 		ldrb	r3, [r8, #66]	@ zero_extendqisi2
 5348 007a 43B3     		cbz	r3, .L1048
 5349 007c 0798     		ldr	r0, [sp, #28]	@ float
 5350 007e FFF7FEFF 		bl	__aeabi_f2d
 5351 0082 CDE90001 		strd	r0, [sp]
 5352 0086 0898     		ldr	r0, [sp, #32]	@ float
 5353 0088 FFF7FEFF 		bl	__aeabi_f2d
 5354 008c CDE90201 		strd	r0, [sp, #8]
 5355 0090 0998     		ldr	r0, [sp, #36]	@ float
 5356 0092 FFF7FEFF 		bl	__aeabi_f2d
 5357 0096 2A46     		mov	r2, r5
 5358 0098 CDE90401 		strd	r0, [sp, #16]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 95


 5359 009c 3846     		mov	r0, r7
 5360 009e 0F49     		ldr	r1, .L1056
 5361 00a0 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5362 00a4 BAE7     		b	.L1042
 5363              	.L1052:
 5364 00a6 2046     		mov	r0, r4
 5365 00a8 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5366 00ac 0546     		mov	r5, r0
 5367 00ae B3E7     		b	.L1043
 5368              	.L1055:
 5369 00b0 3846     		mov	r0, r7
 5370 00b2 2A46     		mov	r2, r5
 5371 00b4 0A49     		ldr	r1, .L1056+4
 5372 00b6 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5373 00ba AFE7     		b	.L1042
 5374              	.L1054:
 5375 00bc D9F80C00 		ldr	r0, [r9, #12]
 5376 00c0 2946     		mov	r1, r5
 5377 00c2 07AA     		add	r2, sp, #28
 5378 00c4 FFF7FEFF 		bl	_ZN4Heat20SetM301PidParametersEjRK17M301PidParameters
 5379 00c8 0BB0     		add	sp, sp, #44
 5380              		@ sp needed
 5381 00ca BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 5382              	.L1048:
 5383 00ce 2A46     		mov	r2, r5
 5384 00d0 3846     		mov	r0, r7
 5385 00d2 2B46     		mov	r3, r5
 5386 00d4 0349     		ldr	r1, .L1056+8
 5387 00d6 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5388 00da 9FE7     		b	.L1042
 5389              	.L1057:
 5390              		.align	2
 5391              	.L1056:
 5392 00dc 54070000 		.word	.LC77
 5393 00e0 34070000 		.word	.LC76
 5394 00e4 74070000 		.word	.LC78
 5395 00e8 00000000 		.word	reprap
 5396              		.size	_ZN6GCodes16SetPidParametersER11GCodeBufferiR9StringRef, .-_ZN6GCodes16SetPidParametersER11G
 5397              		.section	.text._ZN6GCodes19SetHeaterParametersER11GCodeBufferR9StringRef,"ax",%progbits
 5398              		.align	2
 5399              		.global	_ZN6GCodes19SetHeaterParametersER11GCodeBufferR9StringRef
 5400              		.thumb
 5401              		.thumb_func
 5402              		.type	_ZN6GCodes19SetHeaterParametersER11GCodeBufferR9StringRef, %function
 5403              	_ZN6GCodes19SetHeaterParametersER11GCodeBufferR9StringRef:
 5404              		@ args = 0, pretend = 0, frame = 40
 5405              		@ frame_needed = 0, uses_anonymous_args = 0
 5406 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 5407 0004 0C46     		mov	r4, r1
 5408 0006 95B0     		sub	sp, sp, #84
 5409 0008 8146     		mov	r9, r0
 5410 000a 5021     		movs	r1, #80
 5411 000c 2046     		mov	r0, r4
 5412 000e 9346     		mov	fp, r2
 5413 0010 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5414 0014 10B9     		cbnz	r0, .L1089
 5415              	.L1058:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 96


 5416 0016 15B0     		add	sp, sp, #84
 5417              		@ sp needed
 5418 0018 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 5419              	.L1089:
 5420 001c 2046     		mov	r0, r4
 5421 001e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5422 0022 0728     		cmp	r0, #7
 5423 0024 8246     		mov	r10, r0
 5424 0026 00F28680 		bhi	.L1060
 5425 002a C0EBC008 		rsb	r8, r0, r0, lsl #3
 5426 002e D9F80030 		ldr	r3, [r9]
 5427 0032 4FEA8808 		lsl	r8, r8, #2
 5428 0036 08F5B068 		add	r8, r8, #1408
 5429 003a 9844     		add	r8, r8, r3
 5430 003c 2046     		mov	r0, r4
 5431 003e D8F80030 		ldr	r3, [r8]	@ float
 5432 0042 D8F804E0 		ldr	lr, [r8, #4]	@ float
 5433 0046 D8F80870 		ldr	r7, [r8, #8]	@ float
 5434 004a D8F80C60 		ldr	r6, [r8, #12]	@ float
 5435 004e 1093     		str	r3, [sp, #64]	@ float
 5436 0050 5421     		movs	r1, #84
 5437 0052 0DF13F03 		add	r3, sp, #63
 5438 0056 10AA     		add	r2, sp, #64
 5439 0058 0025     		movs	r5, #0
 5440 005a CDF844E0 		str	lr, [sp, #68]	@ float
 5441 005e 1297     		str	r7, [sp, #72]	@ float
 5442 0060 1396     		str	r6, [sp, #76]	@ float
 5443 0062 8DF83F50 		strb	r5, [sp, #63]
 5444 0066 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 5445 006a 2046     		mov	r0, r4
 5446 006c 0DF13F03 		add	r3, sp, #63
 5447 0070 4221     		movs	r1, #66
 5448 0072 11AA     		add	r2, sp, #68
 5449 0074 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 5450 0078 2046     		mov	r0, r4
 5451 007a 0DF13F03 		add	r3, sp, #63
 5452 007e 4321     		movs	r1, #67
 5453 0080 12AA     		add	r2, sp, #72
 5454 0082 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 5455 0086 0DF13F03 		add	r3, sp, #63
 5456 008a 2046     		mov	r0, r4
 5457 008c 5221     		movs	r1, #82
 5458 008e 13AA     		add	r2, sp, #76
 5459 0090 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 5460 0094 9DF83F30 		ldrb	r3, [sp, #63]	@ zero_extendqisi2
 5461 0098 002B     		cmp	r3, #0
 5462 009a 56D1     		bne	.L1090
 5463              	.L1061:
 5464 009c 2046     		mov	r0, r4
 5465 009e 4C21     		movs	r1, #76
 5466 00a0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5467 00a4 0028     		cmp	r0, #0
 5468 00a6 40F08180 		bne	.L1091
 5469              	.L1062:
 5470 00aa 2046     		mov	r0, r4
 5471 00ac 4821     		movs	r1, #72
 5472 00ae FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 97


 5473 00b2 0028     		cmp	r0, #0
 5474 00b4 6ED1     		bne	.L1092
 5475              	.L1065:
 5476 00b6 2046     		mov	r0, r4
 5477 00b8 5821     		movs	r1, #88
 5478 00ba FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 5479 00be 0028     		cmp	r0, #0
 5480 00c0 4CD1     		bne	.L1093
 5481 00c2 9DF83F30 		ldrb	r3, [sp, #63]	@ zero_extendqisi2
 5482 00c6 002B     		cmp	r3, #0
 5483 00c8 A5D1     		bne	.L1058
 5484 00ca D8F80000 		ldr	r0, [r8]	@ float
 5485 00ce FFF7FEFF 		bl	__aeabi_f2d
 5486 00d2 0246     		mov	r2, r0
 5487 00d4 D8F80400 		ldr	r0, [r8, #4]	@ float
 5488 00d8 0B92     		str	r2, [sp, #44]
 5489 00da 0A91     		str	r1, [sp, #40]
 5490 00dc FFF7FEFF 		bl	__aeabi_f2d
 5491 00e0 0646     		mov	r6, r0
 5492 00e2 D8F80800 		ldr	r0, [r8, #8]	@ float
 5493 00e6 0F46     		mov	r7, r1
 5494 00e8 FFF7FEFF 		bl	__aeabi_f2d
 5495 00ec 0446     		mov	r4, r0
 5496 00ee D8F80C00 		ldr	r0, [r8, #12]	@ float
 5497 00f2 0D46     		mov	r5, r1
 5498 00f4 FFF7FEFF 		bl	__aeabi_f2d
 5499 00f8 CDE90C01 		strd	r0, [sp, #48]
 5500 00fc 5146     		mov	r1, r10
 5501 00fe D9F80000 		ldr	r0, [r9]
 5502 0102 98F91090 		ldrsb	r9, [r8, #16]
 5503 0106 98F91180 		ldrsb	r8, [r8, #17]
 5504 010a FFF7FEFF 		bl	_ZNK8Platform19GetThermistorNumberEj
 5505 010e 9DED0C7B 		fldd	d7, [sp, #48]
 5506 0112 0890     		str	r0, [sp, #32]
 5507 0114 CDE90067 		strd	r6, [sp]
 5508 0118 CDE90245 		strd	r4, [sp, #8]
 5509 011c 8DED047B 		fstd	d7, [sp, #16]
 5510 0120 CDF81890 		str	r9, [sp, #24]
 5511 0124 CDF81C80 		str	r8, [sp, #28]
 5512 0128 0B9A     		ldr	r2, [sp, #44]
 5513 012a 0A9B     		ldr	r3, [sp, #40]
 5514 012c 2C49     		ldr	r1, .L1094
 5515 012e 5846     		mov	r0, fp
 5516 0130 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5517 0134 6FE7     		b	.L1058
 5518              	.L1060:
 5519 0136 D9F80000 		ldr	r0, [r9]
 5520 013a 2A4A     		ldr	r2, .L1094+4
 5521 013c 5346     		mov	r3, r10
 5522 013e 0621     		movs	r1, #6
 5523 0140 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 5524 0144 15B0     		add	sp, sp, #84
 5525              		@ sp needed
 5526 0146 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 5527              	.L1090:
 5528 014a 1398     		ldr	r0, [sp, #76]	@ float
 5529 014c 0090     		str	r0, [sp]	@ float
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 98


 5530 014e 1099     		ldr	r1, [sp, #64]	@ float
 5531 0150 119A     		ldr	r2, [sp, #68]	@ float
 5532 0152 129B     		ldr	r3, [sp, #72]	@ float
 5533 0154 4046     		mov	r0, r8
 5534 0156 FFF7FEFF 		bl	_ZN10Thermistor13SetParametersEffff
 5535 015a 9FE7     		b	.L1061
 5536              	.L1093:
 5537 015c 2046     		mov	r0, r4
 5538 015e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5539 0162 0728     		cmp	r0, #7
 5540 0164 0346     		mov	r3, r0
 5541 0166 0ED9     		bls	.L1069
 5542 0168 A0F16402 		sub	r2, r0, #100
 5543 016c 072A     		cmp	r2, #7
 5544 016e 0AD9     		bls	.L1069
 5545 0170 A0F1C802 		sub	r2, r0, #200
 5546 0174 072A     		cmp	r2, #7
 5547 0176 06D9     		bls	.L1069
 5548 0178 D9F80000 		ldr	r0, [r9]
 5549 017c 1A4A     		ldr	r2, .L1094+8
 5550 017e 0621     		movs	r1, #6
 5551 0180 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 5552 0184 47E7     		b	.L1058
 5553              	.L1069:
 5554 0186 D9F80000 		ldr	r0, [r9]
 5555 018a 5146     		mov	r1, r10
 5556 018c 1A46     		mov	r2, r3
 5557 018e FFF7FEFF 		bl	_ZN8Platform19SetThermistorNumberEjj
 5558 0192 40E7     		b	.L1058
 5559              	.L1092:
 5560 0194 2046     		mov	r0, r4
 5561 0196 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5562 019a 6328     		cmp	r0, #99
 5563 019c 19DC     		bgt	.L1075
 5564 019e 10F1630F 		cmn	r0, #99
 5565 01a2 B8BF     		it	lt
 5566 01a4 9C20     		movlt	r0, #156
 5567 01a6 15DB     		blt	.L1067
 5568 01a8 C0B2     		uxtb	r0, r0
 5569 01aa 13E0     		b	.L1067
 5570              	.L1091:
 5571 01ac 2046     		mov	r0, r4
 5572 01ae FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 5573 01b2 6328     		cmp	r0, #99
 5574 01b4 06DC     		bgt	.L1073
 5575 01b6 10F1630F 		cmn	r0, #99
 5576 01ba B8BF     		it	lt
 5577 01bc 9C20     		movlt	r0, #156
 5578 01be 02DB     		blt	.L1064
 5579 01c0 C0B2     		uxtb	r0, r0
 5580 01c2 00E0     		b	.L1064
 5581              	.L1073:
 5582 01c4 6420     		movs	r0, #100
 5583              	.L1064:
 5584 01c6 0123     		movs	r3, #1
 5585 01c8 88F81000 		strb	r0, [r8, #16]
 5586 01cc 8DF83F30 		strb	r3, [sp, #63]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 99


 5587 01d0 6BE7     		b	.L1062
 5588              	.L1075:
 5589 01d2 6420     		movs	r0, #100
 5590              	.L1067:
 5591 01d4 0123     		movs	r3, #1
 5592 01d6 88F81100 		strb	r0, [r8, #17]
 5593 01da 8DF83F30 		strb	r3, [sp, #63]
 5594 01de 6AE7     		b	.L1065
 5595              	.L1095:
 5596              		.align	2
 5597              	.L1094:
 5598 01e0 E4070000 		.word	.LC80
 5599 01e4 10080000 		.word	.LC81
 5600 01e8 BC070000 		.word	.LC79
 5601              		.size	_ZN6GCodes19SetHeaterParametersER11GCodeBufferR9StringRef, .-_ZN6GCodes19SetHeaterParameters
 5602              		.section	.text._ZN6GCodes14SetToolHeatersEP4Toolf,"ax",%progbits
 5603              		.align	2
 5604              		.global	_ZN6GCodes14SetToolHeatersEP4Toolf
 5605              		.thumb
 5606              		.thumb_func
 5607              		.type	_ZN6GCodes14SetToolHeatersEP4Toolf, %function
 5608              	_ZN6GCodes14SetToolHeatersEP4Toolf:
 5609              		@ args = 0, pretend = 0, frame = 64
 5610              		@ frame_needed = 0, uses_anonymous_args = 0
 5611 0000 30B5     		push	{r4, r5, lr}
 5612 0002 0D46     		mov	r5, r1
 5613 0004 91B0     		sub	sp, sp, #68
 5614 0006 1446     		mov	r4, r2	@ float
 5615 0008 A9B1     		cbz	r1, .L1103
 5616 000a 08AA     		add	r2, sp, #32
 5617 000c 6946     		mov	r1, sp
 5618 000e 2846     		mov	r0, r5
 5619 0010 FFF7FEFF 		bl	_ZNK4Tool12GetVariablesEPfS0_
 5620 0014 D5F8A420 		ldr	r2, [r5, #164]
 5621 0018 32B1     		cbz	r2, .L1100
 5622 001a 08AB     		add	r3, sp, #32
 5623 001c 03EB8202 		add	r2, r3, r2, lsl #2
 5624              	.L1101:
 5625 0020 43F8044B 		str	r4, [r3], #4	@ float
 5626 0024 9342     		cmp	r3, r2
 5627 0026 FBD1     		bne	.L1101
 5628              	.L1100:
 5629 0028 2846     		mov	r0, r5
 5630 002a 6946     		mov	r1, sp
 5631 002c 08AA     		add	r2, sp, #32
 5632 002e FFF7FEFF 		bl	_ZN4Tool12SetVariablesEPKfS1_
 5633 0032 11B0     		add	sp, sp, #68
 5634              		@ sp needed
 5635 0034 30BD     		pop	{r4, r5, pc}
 5636              	.L1103:
 5637 0036 0068     		ldr	r0, [r0]
 5638 0038 024A     		ldr	r2, .L1104
 5639 003a 0621     		movs	r1, #6
 5640 003c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5641 0040 11B0     		add	sp, sp, #68
 5642              		@ sp needed
 5643 0042 30BD     		pop	{r4, r5, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 100


 5644              	.L1105:
 5645              		.align	2
 5646              	.L1104:
 5647 0044 34080000 		.word	.LC82
 5648              		.size	_ZN6GCodes14SetToolHeatersEP4Toolf, .-_ZN6GCodes14SetToolHeatersEP4Toolf
 5649              		.section	.text._ZN6GCodes15RetractFilamentER11GCodeBufferb,"ax",%progbits
 5650              		.align	2
 5651              		.global	_ZN6GCodes15RetractFilamentER11GCodeBufferb
 5652              		.thumb
 5653              		.thumb_func
 5654              		.type	_ZN6GCodes15RetractFilamentER11GCodeBufferb, %function
 5655              	_ZN6GCodes15RetractFilamentER11GCodeBufferb:
 5656              		@ args = 0, pretend = 0, frame = 0
 5657              		@ frame_needed = 0, uses_anonymous_args = 0
 5658 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 5659 0004 90F81833 		ldrb	r3, [r0, #792]	@ zero_extendqisi2
 5660 0008 9342     		cmp	r3, r2
 5661 000a 0446     		mov	r4, r0
 5662 000c 1746     		mov	r7, r2
 5663 000e 8946     		mov	r9, r1
 5664 0010 00F09680 		beq	.L1123
 5665 0014 D0EDC17A 		flds	s15, [r0, #772]
 5666 0018 F5EE407A 		fcmpzs	s15
 5667 001c F1EE10FA 		fmstat
 5668 0020 7DD0     		beq	.L1139
 5669              	.L1108:
 5670 0022 544D     		ldr	r5, .L1143
 5671 0024 6E6A     		ldr	r6, [r5, #36]
 5672 0026 002E     		cmp	r6, #0
 5673 0028 74D0     		beq	.L1109
 5674 002a D6F84080 		ldr	r8, [r6, #64]
 5675 002e B8F1000F 		cmp	r8, #0
 5676 0032 6FD0     		beq	.L1109
 5677 0034 D4F8FCB0 		ldr	fp, [r4, #252]
 5678 0038 BBF1000F 		cmp	fp, #0
 5679 003c 02D0     		beq	.L1140
 5680 003e 0020     		movs	r0, #0
 5681 0040 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 5682              	.L1140:
 5683 0044 2846     		mov	r0, r5
 5684 0046 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 5685 004a 8246     		mov	r10, r0
 5686 004c 04F1A401 		add	r1, r4, #164
 5687 0050 5A46     		mov	r2, fp
 5688 0052 A868     		ldr	r0, [r5, #8]
 5689 0054 5346     		mov	r3, r10
 5690 0056 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhm
 5691 005a D4F8B011 		ldr	r1, [r4, #432]
 5692 005e 0929     		cmp	r1, #9
 5693 0060 09D8     		bhi	.L1112
 5694 0062 04EB8102 		add	r2, r4, r1, lsl #2
 5695 0066 0023     		movs	r3, #0
 5696 0068 A432     		adds	r2, r2, #164
 5697 006a 0D46     		mov	r5, r1
 5698              	.L1113:
 5699 006c 0135     		adds	r5, r5, #1
 5700 006e 0A2D     		cmp	r5, #10
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 101


 5701 0070 42F8043B 		str	r3, [r2], #4	@ float
 5702 0074 FAD1     		bne	.L1113
 5703              	.L1112:
 5704 0076 D4EDC56A 		flds	s13, [r4, #788]
 5705 007a 94EDC37A 		flds	s14, [r4, #780]
 5706 007e D4EDC47A 		flds	s15, [r4, #784]
 5707 0082 002F     		cmp	r7, #0
 5708 0084 F5EE406A 		fcmpzs	s13
 5709 0088 08BF     		it	eq
 5710 008a B0EE677A 		fcpyseq	s14, s15
 5711 008e F1EE10FA 		fmstat
 5712 0092 5FD0     		beq	.L1141
 5713 0094 D4EDC17A 		flds	s15, [r4, #772]
 5714 0098 F5EE407A 		fcmpzs	s15
 5715 009c F1EE10FA 		fmstat
 5716 00a0 1CBF     		itt	ne
 5717 00a2 27EE267A 		fmulsne	s14, s14, s13
 5718 00a6 87EE277A 		fdivsne	s14, s14, s15
 5719              	.L1115:
 5720 00aa 84ED397A 		fsts	s14, [r4, #228]
 5721 00ae 94ED2B7A 		flds	s14, [r4, #172]
 5722 00b2 002F     		cmp	r7, #0
 5723 00b4 47D1     		bne	.L1116
 5724 00b6 94EDC26A 		flds	s12, [r4, #776]
 5725 00ba 37EE667A 		fsubs	s14, s14, s13
 5726 00be 77EE867A 		fadds	s15, s15, s12
 5727 00c2 84ED2B7A 		fsts	s14, [r4, #172]
 5728              	.L1117:
 5729 00c6 0025     		movs	r5, #0
 5730              	.L1120:
 5731 00c8 B368     		ldr	r3, [r6, #8]
 5732 00ca 0135     		adds	r5, r5, #1
 5733 00cc 0B44     		add	r3, r3, r1
 5734 00ce 04EB8303 		add	r3, r4, r3, lsl #2
 5735 00d2 4545     		cmp	r5, r8
 5736 00d4 C3ED297A 		fsts	s15, [r3, #164]
 5737 00d8 06F10406 		add	r6, r6, #4
 5738 00dc F4D1     		bne	.L1120
 5739 00de 0023     		movs	r3, #0
 5740 00e0 226C     		ldr	r2, [r4, #64]
 5741 00e2 84F8F630 		strb	r3, [r4, #246]
 5742 00e6 1268     		ldr	r2, [r2]
 5743 00e8 84F8F830 		strb	r3, [r4, #248]
 5744 00ec 4A45     		cmp	r2, r9
 5745 00ee 4FF00103 		mov	r3, #1
 5746 00f2 84F8F730 		strb	r3, [r4, #247]
 5747 00f6 18BF     		it	ne
 5748 00f8 4FF0FF30 		movne	r0, #-1
 5749 00fc 2DD0     		beq	.L1142
 5750              	.L1119:
 5751 00fe 87F00102 		eor	r2, r7, #1
 5752 0102 0123     		movs	r3, #1
 5753 0104 C4F8E800 		str	r0, [r4, #232]
 5754 0108 C4F8ECA0 		str	r10, [r4, #236]
 5755 010c 84F8F920 		strb	r2, [r4, #249]
 5756 0110 C4F8FC30 		str	r3, [r4, #252]
 5757              	.L1109:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 102


 5758 0114 84F81873 		strb	r7, [r4, #792]
 5759 0118 0120     		movs	r0, #1
 5760 011a BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 5761              	.L1139:
 5762 011e D0EDC57A 		flds	s15, [r0, #788]
 5763 0122 F5EE407A 		fcmpzs	s15
 5764 0126 F1EE10FA 		fmstat
 5765 012a 7FF47AAF 		bne	.L1108
 5766 012e 3AB9     		cbnz	r2, .L1123
 5767 0130 D0EDC27A 		flds	s15, [r0, #776]
 5768 0134 F5EE407A 		fcmpzs	s15
 5769 0138 F1EE10FA 		fmstat
 5770 013c 7FF471AF 		bne	.L1108
 5771              	.L1123:
 5772 0140 0120     		movs	r0, #1
 5773 0142 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 5774              	.L1116:
 5775 0146 36EE877A 		fadds	s14, s13, s14
 5776 014a F1EE677A 		fnegs	s15, s15
 5777 014e 84ED2B7A 		fsts	s14, [r4, #172]
 5778 0152 B8E7     		b	.L1117
 5779              	.L1141:
 5780 0154 D4EDC17A 		flds	s15, [r4, #772]
 5781 0158 A7E7     		b	.L1115
 5782              	.L1142:
 5783 015a D9F80830 		ldr	r3, [r9, #8]
 5784 015e 9868     		ldr	r0, [r3, #8]
 5785 0160 FFF7FEFF 		bl	_ZNK9FileStore8PositionEv
 5786 0164 0546     		mov	r5, r0
 5787 0166 2069     		ldr	r0, [r4, #16]
 5788 0168 0268     		ldr	r2, [r0]
 5789 016a 9368     		ldr	r3, [r2, #8]
 5790 016c 9847     		blx	r3
 5791 016e 281A     		subs	r0, r5, r0
 5792 0170 C5E7     		b	.L1119
 5793              	.L1144:
 5794 0172 00BF     		.align	2
 5795              	.L1143:
 5796 0174 00000000 		.word	reprap
 5797              		.size	_ZN6GCodes15RetractFilamentER11GCodeBufferb, .-_ZN6GCodes15RetractFilamentER11GCodeBufferb
 5798              		.section	.text._ZNK6GCodes22GetRawExtruderPositionEj,"ax",%progbits
 5799              		.align	2
 5800              		.global	_ZNK6GCodes22GetRawExtruderPositionEj
 5801              		.thumb
 5802              		.thumb_func
 5803              		.type	_ZNK6GCodes22GetRawExtruderPositionEj, %function
 5804              	_ZNK6GCodes22GetRawExtruderPositionEj:
 5805              		@ args = 0, pretend = 0, frame = 0
 5806              		@ frame_needed = 0, uses_anonymous_args = 0
 5807              		@ link register save eliminated.
 5808 0000 D0F8B431 		ldr	r3, [r0, #436]
 5809 0004 8B42     		cmp	r3, r1
 5810 0006 86BF     		itte	hi
 5811 0008 00EB8100 		addhi	r0, r0, r1, lsl #2
 5812 000c D0F8D001 		ldrhi	r0, [r0, #464]	@ float
 5813 0010 0020     		movls	r0, #0
 5814 0012 7047     		bx	lr
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 103


 5815              		.size	_ZNK6GCodes22GetRawExtruderPositionEj, .-_ZNK6GCodes22GetRawExtruderPositionEj
 5816              		.section	.text._ZNK6GCodes26GetRawExtruderTotalByDriveEj,"ax",%progbits
 5817              		.align	2
 5818              		.global	_ZNK6GCodes26GetRawExtruderTotalByDriveEj
 5819              		.thumb
 5820              		.thumb_func
 5821              		.type	_ZNK6GCodes26GetRawExtruderTotalByDriveEj, %function
 5822              	_ZNK6GCodes26GetRawExtruderTotalByDriveEj:
 5823              		@ args = 0, pretend = 0, frame = 0
 5824              		@ frame_needed = 0, uses_anonymous_args = 0
 5825              		@ link register save eliminated.
 5826 0000 D0F8B431 		ldr	r3, [r0, #436]
 5827 0004 8B42     		cmp	r3, r1
 5828 0006 86BF     		itte	hi
 5829 0008 00EB8100 		addhi	r0, r0, r1, lsl #2
 5830 000c D0F8EC01 		ldrhi	r0, [r0, #492]	@ float
 5831 0010 0020     		movls	r0, #0
 5832 0012 7047     		bx	lr
 5833              		.size	_ZNK6GCodes26GetRawExtruderTotalByDriveEj, .-_ZNK6GCodes26GetRawExtruderTotalByDriveEj
 5834              		.section	.text._ZN6GCodes11CancelPrintEv,"ax",%progbits
 5835              		.align	2
 5836              		.global	_ZN6GCodes11CancelPrintEv
 5837              		.thumb
 5838              		.thumb_func
 5839              		.type	_ZN6GCodes11CancelPrintEv, %function
 5840              	_ZN6GCodes11CancelPrintEv:
 5841              		@ args = 0, pretend = 0, frame = 0
 5842              		@ frame_needed = 0, uses_anonymous_args = 0
 5843 0000 70B5     		push	{r4, r5, r6, lr}
 5844 0002 0446     		mov	r4, r0
 5845 0004 0069     		ldr	r0, [r0, #16]
 5846 0006 0368     		ldr	r3, [r0]
 5847 0008 0025     		movs	r5, #0
 5848 000a 1B68     		ldr	r3, [r3]
 5849 000c C4F8FC50 		str	r5, [r4, #252]
 5850 0010 84F8A150 		strb	r5, [r4, #161]
 5851 0014 9847     		blx	r3
 5852 0016 236C     		ldr	r3, [r4, #64]
 5853 0018 1868     		ldr	r0, [r3]
 5854 001a FFF7FEFF 		bl	_ZN11GCodeBuffer4InitEv
 5855 001e 236C     		ldr	r3, [r4, #64]
 5856 0020 1868     		ldr	r0, [r3]
 5857 0022 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 5858 0026 0646     		mov	r6, r0
 5859 0028 8068     		ldr	r0, [r0, #8]
 5860 002a 10B1     		cbz	r0, .L1152
 5861 002c FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 5862 0030 B560     		str	r5, [r6, #8]
 5863              	.L1152:
 5864 0032 084D     		ldr	r5, .L1156
 5865 0034 E869     		ldr	r0, [r5, #28]
 5866 0036 FFF7FEFF 		bl	_ZN12PrintMonitor12StoppedPrintEv
 5867 003a AB68     		ldr	r3, [r5, #8]
 5868 003c D4F86003 		ldr	r0, [r4, #864]
 5869 0040 0022     		movs	r2, #0
 5870 0042 C3F8542C 		str	r2, [r3, #3156]
 5871 0046 C3F8502C 		str	r2, [r3, #3152]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 104


 5872 004a BDE87040 		pop	{r4, r5, r6, lr}
 5873 004e FFF7FEBF 		b	_ZN10GCodeQueue5ClearEv
 5874              	.L1157:
 5875 0052 00BF     		.align	2
 5876              	.L1156:
 5877 0054 00000000 		.word	reprap
 5878              		.size	_ZN6GCodes11CancelPrintEv, .-_ZN6GCodes11CancelPrintEv
 5879              		.section	.text._ZN6GCodes16QueueFileToPrintEPKc,"ax",%progbits
 5880              		.align	2
 5881              		.global	_ZN6GCodes16QueueFileToPrintEPKc
 5882              		.thumb
 5883              		.thumb_func
 5884              		.type	_ZN6GCodes16QueueFileToPrintEPKc, %function
 5885              	_ZN6GCodes16QueueFileToPrintEPKc:
 5886              		@ args = 0, pretend = 0, frame = 0
 5887              		@ frame_needed = 0, uses_anonymous_args = 0
 5888 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 5889 0004 0C46     		mov	r4, r1
 5890 0006 0546     		mov	r5, r0
 5891 0008 1B49     		ldr	r1, .L1171
 5892 000a 0068     		ldr	r0, [r0]
 5893 000c 2246     		mov	r2, r4
 5894 000e 0023     		movs	r3, #0
 5895 0010 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 5896 0014 0646     		mov	r6, r0
 5897 0016 30B3     		cbz	r0, .L1159
 5898 0018 184F     		ldr	r7, .L1171+4
 5899 001a FB69     		ldr	r3, [r7, #28]
 5900 001c 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 5901 001e F3B1     		cbz	r3, .L1170
 5902              	.L1160:
 5903 0020 2B6C     		ldr	r3, [r5, #64]
 5904 0022 1B68     		ldr	r3, [r3]
 5905 0024 0022     		movs	r2, #0
 5906 0026 C3F88820 		str	r2, [r3, #136]
 5907 002a 0021     		movs	r1, #0
 5908 002c 05F5F672 		add	r2, r5, #492
 5909 0030 0723     		movs	r3, #7
 5910              	.L1162:
 5911 0032 013B     		subs	r3, r3, #1
 5912 0034 42F81C1C 		str	r1, [r2, #-28]	@ float
 5913 0038 4FF00004 		mov	r4, #0
 5914 003c 42F8041B 		str	r1, [r2], #4	@ float
 5915 0040 F7D1     		bne	.L1162
 5916 0042 B868     		ldr	r0, [r7, #8]
 5917 0044 C5F80842 		str	r4, [r5, #520]	@ float
 5918 0048 FFF7FEFF 		bl	_ZN4Move22ResetExtruderPositionsEv
 5919 004c D5F87402 		ldr	r0, [r5, #628]
 5920 0050 08B1     		cbz	r0, .L1163
 5921 0052 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 5922              	.L1163:
 5923 0056 C5F87462 		str	r6, [r5, #628]
 5924 005a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 5925              	.L1170:
 5926 005e 2846     		mov	r0, r5
 5927 0060 FFF7FEFF 		bl	_ZN6GCodes11CancelPrintEv
 5928 0064 DCE7     		b	.L1160
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 105


 5929              	.L1159:
 5930 0066 2868     		ldr	r0, [r5]
 5931 0068 054A     		ldr	r2, .L1171+8
 5932 006a 2346     		mov	r3, r4
 5933 006c 0621     		movs	r1, #6
 5934 006e BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 5935 0072 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 5936              	.L1172:
 5937 0076 00BF     		.align	2
 5938              	.L1171:
 5939 0078 34050000 		.word	.LC49
 5940 007c 00000000 		.word	reprap
 5941 0080 5C080000 		.word	.LC83
 5942              		.size	_ZN6GCodes16QueueFileToPrintEPKc, .-_ZN6GCodes16QueueFileToPrintEPKc
 5943              		.section	.text._ZN6GCodes11HeaterFaultEv,"ax",%progbits
 5944              		.align	2
 5945              		.global	_ZN6GCodes11HeaterFaultEv
 5946              		.thumb
 5947              		.thumb_func
 5948              		.type	_ZN6GCodes11HeaterFaultEv, %function
 5949              	_ZN6GCodes11HeaterFaultEv:
 5950              		@ args = 0, pretend = 0, frame = 0
 5951              		@ frame_needed = 0, uses_anonymous_args = 0
 5952 0000 00B5     		push	{lr}
 5953 0002 036C     		ldr	r3, [r0, #64]
 5954 0004 054A     		ldr	r2, .L1174
 5955 0006 1968     		ldr	r1, [r3]
 5956 0008 1268     		ldr	r2, [r2]
 5957 000a 83B0     		sub	sp, sp, #12
 5958 000c 0023     		movs	r3, #0
 5959 000e 0093     		str	r3, [sp]
 5960 0010 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 5961 0014 03B0     		add	sp, sp, #12
 5962              		@ sp needed
 5963 0016 5DF804FB 		ldr	pc, [sp], #4
 5964              	.L1175:
 5965 001a 00BF     		.align	2
 5966              	.L1174:
 5967 001c 00000000 		.word	.LANCHOR4
 5968              		.size	_ZN6GCodes11HeaterFaultEv, .-_ZN6GCodes11HeaterFaultEv
 5969              		.section	.text._ZN6GCodes16HeaterFaultPauseEv,"ax",%progbits
 5970              		.align	2
 5971              		.global	_ZN6GCodes16HeaterFaultPauseEv
 5972              		.thumb
 5973              		.thumb_func
 5974              		.type	_ZN6GCodes16HeaterFaultPauseEv, %function
 5975              	_ZN6GCodes16HeaterFaultPauseEv:
 5976              		@ args = 0, pretend = 0, frame = 0
 5977              		@ frame_needed = 0, uses_anonymous_args = 0
 5978              		@ link register save eliminated.
 5979 0000 026C     		ldr	r2, [r0, #64]
 5980 0002 836D     		ldr	r3, [r0, #88]
 5981 0004 1168     		ldr	r1, [r2]
 5982 0006 9942     		cmp	r1, r3
 5983 0008 07D0     		beq	.L1177
 5984 000a 03B1     		cbz	r3, .L1179
 5985 000c 7047     		bx	lr
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 106


 5986              	.L1179:
 5987 000e 8165     		str	r1, [r0, #88]
 5988 0010 8B68     		ldr	r3, [r1, #8]
 5989 0012 DA68     		ldr	r2, [r3, #12]
 5990 0014 42F00102 		orr	r2, r2, #1
 5991 0018 DA60     		str	r2, [r3, #12]
 5992              	.L1177:
 5993 001a FFF7FEBF 		b	_ZN6GCodes7DoPauseER11GCodeBuffer
 5994              		.size	_ZN6GCodes16HeaterFaultPauseEv, .-_ZN6GCodes16HeaterFaultPauseEv
 5995 001e 00BF     		.section	.text._ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb,"ax",%progbits
 5996              		.align	2
 5997              		.global	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb
 5998              		.thumb
 5999              		.thumb_func
 6000              		.type	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb, %function
 6001              	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb:
 6002              		@ args = 0, pretend = 0, frame = 0
 6003              		@ frame_needed = 0, uses_anonymous_args = 0
 6004 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 6005 0004 0E46     		mov	r6, r1
 6006 0006 1746     		mov	r7, r2
 6007 0008 C1B1     		cbz	r1, .L1183
 6008 000a D1F8A430 		ldr	r3, [r1, #164]
 6009 000e ABB1     		cbz	r3, .L1183
 6010 0010 DFF83080 		ldr	r8, .L1192
 6011 0014 0C46     		mov	r4, r1
 6012 0016 0025     		movs	r5, #0
 6013 0018 03E0     		b	.L1184
 6014              	.L1191:
 6015 001a D6F8A430 		ldr	r3, [r6, #164]
 6016 001e 9D42     		cmp	r5, r3
 6017 0020 0CD2     		bcs	.L1183
 6018              	.L1184:
 6019 0022 94F94410 		ldrsb	r1, [r4, #68]
 6020 0026 D8F80C00 		ldr	r0, [r8, #12]
 6021 002a 3A46     		mov	r2, r7
 6022 002c 0135     		adds	r5, r5, #1
 6023 002e 0434     		adds	r4, r4, #4
 6024 0030 FFF7FEFF 		bl	_ZNK4Heat22HeaterAtSetTemperatureEab
 6025 0034 0028     		cmp	r0, #0
 6026 0036 F0D1     		bne	.L1191
 6027 0038 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6028              	.L1183:
 6029 003c 0120     		movs	r0, #1
 6030 003e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6031              	.L1193:
 6032 0042 00BF     		.align	2
 6033              	.L1192:
 6034 0044 00000000 		.word	reprap
 6035              		.size	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb, .-_ZNK6GCodes28ToolHeatersAtSetTemperatu
 6036              		.section	.text._ZN6GCodes12SetPositionsEPKfb,"ax",%progbits
 6037              		.align	2
 6038              		.global	_ZN6GCodes12SetPositionsEPKfb
 6039              		.thumb
 6040              		.thumb_func
 6041              		.type	_ZN6GCodes12SetPositionsEPKfb, %function
 6042              	_ZN6GCodes12SetPositionsEPKfb:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 107


 6043              		@ args = 0, pretend = 0, frame = 40
 6044              		@ frame_needed = 0, uses_anonymous_args = 0
 6045 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 6046 0004 8AB0     		sub	sp, sp, #40
 6047 0006 0C46     		mov	r4, r1
 6048 0008 9046     		mov	r8, r2
 6049 000a 01F12007 		add	r7, r1, #32
 6050 000e 6E46     		mov	r6, sp
 6051              	.L1195:
 6052 0010 2068     		ldr	r0, [r4]	@ unaligned
 6053 0012 6168     		ldr	r1, [r4, #4]	@ unaligned
 6054 0014 A268     		ldr	r2, [r4, #8]	@ unaligned
 6055 0016 E368     		ldr	r3, [r4, #12]	@ unaligned
 6056 0018 3546     		mov	r5, r6
 6057 001a 0FC5     		stmia	r5!, {r0, r1, r2, r3}
 6058 001c 1034     		adds	r4, r4, #16
 6059 001e BC42     		cmp	r4, r7
 6060 0020 2E46     		mov	r6, r5
 6061 0022 F5D1     		bne	.L1195
 6062 0024 2068     		ldr	r0, [r4]	@ unaligned
 6063 0026 6168     		ldr	r1, [r4, #4]	@ unaligned
 6064 0028 0B4C     		ldr	r4, .L1197
 6065 002a 03C6     		stmia	r6!, {r0, r1}
 6066 002c 2046     		mov	r0, r4
 6067 002e A568     		ldr	r5, [r4, #8]
 6068 0030 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 6069 0034 4346     		mov	r3, r8
 6070 0036 0246     		mov	r2, r0
 6071 0038 6946     		mov	r1, sp
 6072 003a 2846     		mov	r0, r5
 6073 003c FFF7FEFF 		bl	_ZNK4Move9TransformEPfmb
 6074 0040 A068     		ldr	r0, [r4, #8]
 6075 0042 6946     		mov	r1, sp
 6076 0044 FFF7FEFF 		bl	_ZN4Move18SetLiveCoordinatesEPKf
 6077 0048 A068     		ldr	r0, [r4, #8]
 6078 004a 6946     		mov	r1, sp
 6079 004c FFF7FEFF 		bl	_ZN4Move12SetPositionsEPKf
 6080 0050 0AB0     		add	sp, sp, #40
 6081              		@ sp needed
 6082 0052 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6083              	.L1198:
 6084 0056 00BF     		.align	2
 6085              	.L1197:
 6086 0058 00000000 		.word	reprap
 6087              		.size	_ZN6GCodes12SetPositionsEPKfb, .-_ZN6GCodes12SetPositionsEPKfb
 6088              		.section	.text._ZN6GCodes21DoSingleZProbeAtPointER11GCodeBufferjf,"ax",%progbits
 6089              		.align	2
 6090              		.global	_ZN6GCodes21DoSingleZProbeAtPointER11GCodeBufferjf
 6091              		.thumb
 6092              		.thumb_func
 6093              		.type	_ZN6GCodes21DoSingleZProbeAtPointER11GCodeBufferjf, %function
 6094              	_ZN6GCodes21DoSingleZProbeAtPointER11GCodeBufferjf:
 6095              		@ args = 0, pretend = 0, frame = 0
 6096              		@ frame_needed = 0, uses_anonymous_args = 0
 6097 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 6098 0004 2DED028B 		fstmfdd	sp!, {d8}
 6099 0008 A14F     		ldr	r7, .L1228+8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 108


 6100 000a 82B0     		sub	sp, sp, #8
 6101 000c 0646     		mov	r6, r0
 6102 000e 0024     		movs	r4, #0
 6103 0010 B868     		ldr	r0, [r7, #8]
 6104 0012 8846     		mov	r8, r1
 6105 0014 9146     		mov	r9, r2
 6106 0016 9A46     		mov	r10, r3	@ float
 6107 0018 FFF7FEFF 		bl	_ZN4Move20SetIdentityTransformEv
 6108 001c 2046     		mov	r0, r4
 6109              	.L1201:
 6110 001e 3519     		adds	r5, r6, r4
 6111 0020 0134     		adds	r4, r4, #1
 6112 0022 0A2C     		cmp	r4, #10
 6113 0024 85F86002 		strb	r0, [r5, #608]
 6114 0028 F9D1     		bne	.L1201
 6115 002a 96F99432 		ldrsb	r3, [r6, #660]
 6116 002e 032B     		cmp	r3, #3
 6117 0030 00F2BE80 		bhi	.L1202
 6118 0034 DFE803F0 		tbb	[pc, r3]
 6119              	.L1204:
 6120 0038 76       		.byte	(.L1203-.L1204)/2
 6121 0039 95       		.byte	(.L1205-.L1204)/2
 6122 003a 1D       		.byte	(.L1206-.L1204)/2
 6123 003b 02       		.byte	(.L1207-.L1204)/2
 6124              		.align	1
 6125              	.L1207:
 6126 003c 3068     		ldr	r0, [r6]
 6127 003e FFF7FEFF 		bl	_ZN8Platform23GetZProbeStartingHeightEv
 6128 0042 0223     		movs	r3, #2
 6129 0044 C6F83C02 		str	r0, [r6, #572]	@ float
 6130 0048 86F86232 		strb	r3, [r6, #610]
 6131 004c 3068     		ldr	r0, [r6]
 6132 004e FFF7FEFF 		bl	_ZNK8Platform20GetZProbeTravelSpeedEv
 6133 0052 4146     		mov	r1, r8
 6134 0054 C6F85C02 		str	r0, [r6, #604]	@ float
 6135 0058 0022     		movs	r2, #0
 6136 005a 3046     		mov	r0, r6
 6137 005c FFF7FEFF 		bl	_ZN6GCodes17DoCannedCycleMoveER11GCodeBuffert
 6138 0060 0028     		cmp	r0, #0
 6139 0062 40F0A580 		bne	.L1202
 6140              	.L1226:
 6141 0066 0020     		movs	r0, #0
 6142              	.L1209:
 6143 0068 02B0     		add	sp, sp, #8
 6144              		@ sp needed
 6145 006a BDEC028B 		fldmfdd	sp!, {d8}
 6146 006e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 6147              	.L1206:
 6148 0072 FFF7FEFF 		bl	millis
 6149 0076 3368     		ldr	r3, [r6]
 6150 0078 D6F8EC22 		ldr	r2, [r6, #748]
 6151 007c D3F89010 		ldr	r1, [r3, #144]
 6152 0080 841A     		subs	r4, r0, r2
 6153 0082 1846     		mov	r0, r3
 6154 0084 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersEl
 6155 0088 DFED827A 		flds	s15, .L1228+12
 6156 008c 90ED097A 		flds	s14, [r0, #36]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 109


 6157 0090 67EE277A 		fmuls	s15, s14, s15
 6158 0094 FCEEE77A 		ftouizs	s15, s15
 6159 0098 17EE903A 		fmrs	r3, s15	@ int
 6160 009c 9C42     		cmp	r4, r3
 6161 009e E2D3     		bcc	.L1226
 6162 00a0 D6F89832 		ldr	r3, [r6, #664]
 6163 00a4 5A07     		lsls	r2, r3, #29
 6164 00a6 00F18C80 		bmi	.L1227
 6165 00aa 3368     		ldr	r3, [r6]
 6166 00ac 03F5A562 		add	r2, r3, #1320
 6167 00b0 03F5A863 		add	r3, r3, #1344
 6168 00b4 92ED007A 		flds	s14, [r2]
 6169 00b8 D3ED007A 		flds	s15, [r3]
 6170 00bc 77EE677A 		fsubs	s15, s14, s15
 6171 00c0 17EE900A 		fmrs	r0, s15
 6172 00c4 FFF7FEFF 		bl	__aeabi_f2d
 6173 00c8 6FA3     		adr	r3, .L1228
 6174 00ca D3E90023 		ldrd	r2, [r3]
 6175 00ce FFF7FEFF 		bl	__aeabi_dmul
 6176 00d2 FFF7FEFF 		bl	__aeabi_d2f
 6177 00d6 07EE900A 		fmsr	s15, r0
 6178              	.L1212:
 6179 00da 4146     		mov	r1, r8
 6180 00dc 3046     		mov	r0, r6
 6181 00de 17EE902A 		fmrs	r2, s15
 6182 00e2 FFF7FEFF 		bl	_ZN6GCodes8DoZProbeER11GCodeBufferf
 6183 00e6 0128     		cmp	r0, #1
 6184 00e8 0446     		mov	r4, r0
 6185 00ea 00F09580 		beq	.L1213
 6186 00ee 0228     		cmp	r0, #2
 6187 00f0 6FD0     		beq	.L1214
 6188 00f2 0028     		cmp	r0, #0
 6189 00f4 B7D1     		bne	.L1226
 6190 00f6 684A     		ldr	r2, .L1228+16
 6191 00f8 3068     		ldr	r0, [r6]
 6192 00fa 0621     		movs	r1, #6
 6193 00fc FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6194 0100 96F89432 		ldrb	r3, [r6, #660]	@ zero_extendqisi2
 6195 0104 3068     		ldr	r0, [r6]
 6196 0106 BD68     		ldr	r5, [r7, #8]
 6197 0108 0133     		adds	r3, r3, #1
 6198 010a 86F89432 		strb	r3, [r6, #660]
 6199 010e FFF7FEFF 		bl	_ZNK8Platform19GetZProbeDiveHeightEv
 6200 0112 0123     		movs	r3, #1
 6201 0114 0246     		mov	r2, r0	@ float
 6202 0116 4946     		mov	r1, r9
 6203 0118 2846     		mov	r0, r5
 6204 011a 0093     		str	r3, [sp]
 6205 011c FFF7FEFF 		bl	_ZN4Move17SetZBedProbePointEjfbb
 6206 0120 2046     		mov	r0, r4
 6207 0122 A1E7     		b	.L1209
 6208              	.L1203:
 6209 0124 3068     		ldr	r0, [r6]
 6210 0126 FFF7FEFF 		bl	_ZN8Platform23GetZProbeStartingHeightEv
 6211 012a 0223     		movs	r3, #2
 6212 012c C6F83C02 		str	r0, [r6, #572]	@ float
 6213 0130 86F86232 		strb	r3, [r6, #610]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 110


 6214 0134 3068     		ldr	r0, [r6]
 6215 0136 FFF7FEFF 		bl	_ZNK8Platform20GetZProbeTravelSpeedEv
 6216 013a 4146     		mov	r1, r8
 6217 013c C6F85C02 		str	r0, [r6, #604]	@ float
 6218 0140 0022     		movs	r2, #0
 6219 0142 3046     		mov	r0, r6
 6220 0144 FFF7FEFF 		bl	_ZN6GCodes17DoCannedCycleMoveER11GCodeBuffert
 6221 0148 0028     		cmp	r0, #0
 6222 014a 8CD0     		beq	.L1226
 6223 014c 96F89432 		ldrb	r3, [r6, #660]	@ zero_extendqisi2
 6224 0150 0020     		movs	r0, #0
 6225 0152 0133     		adds	r3, r3, #1
 6226 0154 86F89432 		strb	r3, [r6, #660]
 6227 0158 02B0     		add	sp, sp, #8
 6228              		@ sp needed
 6229 015a BDEC028B 		fldmfdd	sp!, {d8}
 6230 015e BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 6231              	.L1205:
 6232 0162 0123     		movs	r3, #1
 6233 0164 4946     		mov	r1, r9
 6234 0166 06F50D72 		add	r2, r6, #564
 6235 016a B868     		ldr	r0, [r7, #8]
 6236 016c 0093     		str	r3, [sp]
 6237 016e 06F50E73 		add	r3, r6, #568
 6238 0172 FFF7FEFF 		bl	_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 6239 0176 0223     		movs	r3, #2
 6240 0178 86F86032 		strb	r3, [r6, #608]
 6241 017c 86F86132 		strb	r3, [r6, #609]
 6242 0180 3068     		ldr	r0, [r6]
 6243 0182 FFF7FEFF 		bl	_ZNK8Platform20GetZProbeTravelSpeedEv
 6244 0186 4146     		mov	r1, r8
 6245 0188 C6F85C02 		str	r0, [r6, #604]	@ float
 6246 018c 0022     		movs	r2, #0
 6247 018e 3046     		mov	r0, r6
 6248 0190 FFF7FEFF 		bl	_ZN6GCodes17DoCannedCycleMoveER11GCodeBuffert
 6249 0194 0028     		cmp	r0, #0
 6250 0196 3FF466AF 		beq	.L1226
 6251 019a FFF7FEFF 		bl	millis
 6252 019e 96F89432 		ldrb	r3, [r6, #660]	@ zero_extendqisi2
 6253 01a2 C6F8EC02 		str	r0, [r6, #748]
 6254 01a6 0133     		adds	r3, r3, #1
 6255 01a8 86F89432 		strb	r3, [r6, #660]
 6256 01ac 0020     		movs	r0, #0
 6257 01ae 5BE7     		b	.L1209
 6258              	.L1202:
 6259 01b0 0023     		movs	r3, #0
 6260 01b2 0120     		movs	r0, #1
 6261 01b4 86F89432 		strb	r3, [r6, #660]
 6262 01b8 02B0     		add	sp, sp, #8
 6263              		@ sp needed
 6264 01ba BDEC028B 		fldmfdd	sp!, {d8}
 6265 01be BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 6266              	.L1227:
 6267 01c2 3068     		ldr	r0, [r6]
 6268 01c4 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeDiveHeightEv
 6269 01c8 06EE900A 		fmsr	s13, r0
 6270 01cc 76EEA67A 		fadds	s15, s13, s13
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 111


 6271 01d0 83E7     		b	.L1212
 6272              	.L1214:
 6273 01d2 D6F89832 		ldr	r3, [r6, #664]
 6274 01d6 3068     		ldr	r0, [r6]
 6275 01d8 5B07     		lsls	r3, r3, #29
 6276 01da 35D5     		bpl	.L1216
 6277 01dc 96ED2B8A 		flds	s16, [r6, #172]
 6278 01e0 FFF7FEFF 		bl	_ZN8Platform16ZProbeStopHeightEv
 6279 01e4 06EE90AA 		fmsr	s13, r10
 6280 01e8 07EE100A 		fmsr	s14, r0
 6281 01ec 77EE267A 		fadds	s15, s14, s13
 6282 01f0 78EE677A 		fsubs	s15, s16, s15
 6283 01f4 C6EDBA7A 		fsts	s15, [r6, #744]
 6284              	.L1217:
 6285 01f8 0024     		movs	r4, #0
 6286 01fa B868     		ldr	r0, [r7, #8]
 6287 01fc 0094     		str	r4, [sp]
 6288 01fe 0123     		movs	r3, #1
 6289 0200 4946     		mov	r1, r9
 6290 0202 17EE902A 		fmrs	r2, s15
 6291 0206 FFF7FEFF 		bl	_ZN4Move17SetZBedProbePointEjfbb
 6292 020a 96F89432 		ldrb	r3, [r6, #660]	@ zero_extendqisi2
 6293 020e 0133     		adds	r3, r3, #1
 6294 0210 2046     		mov	r0, r4
 6295 0212 86F89432 		strb	r3, [r6, #660]
 6296 0216 27E7     		b	.L1209
 6297              	.L1213:
 6298 0218 204A     		ldr	r2, .L1228+20
 6299 021a 3068     		ldr	r0, [r6]
 6300 021c 0621     		movs	r1, #6
 6301 021e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6302 0222 96F89432 		ldrb	r3, [r6, #660]	@ zero_extendqisi2
 6303 0226 3068     		ldr	r0, [r6]
 6304 0228 BD68     		ldr	r5, [r7, #8]
 6305 022a 0133     		adds	r3, r3, #1
 6306 022c 86F89432 		strb	r3, [r6, #660]
 6307 0230 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeDiveHeightEv
 6308 0234 0094     		str	r4, [sp]
 6309 0236 80F00042 		eor	r2, r0, #-2147483648
 6310 023a 4946     		mov	r1, r9
 6311 023c 2846     		mov	r0, r5
 6312 023e 2346     		mov	r3, r4
 6313 0240 FFF7FEFF 		bl	_ZN4Move17SetZBedProbePointEjfbb
 6314 0244 0020     		movs	r0, #0
 6315 0246 0FE7     		b	.L1209
 6316              	.L1216:
 6317 0248 FFF7FEFF 		bl	_ZN8Platform16ZProbeStopHeightEv
 6318 024c 06EE90AA 		fmsr	s13, r10
 6319 0250 07EE100A 		fmsr	s14, r0
 6320 0254 77EE267A 		fadds	s15, s14, s13
 6321 0258 06F1A401 		add	r1, r6, #164
 6322 025c C6ED2B7A 		fsts	s15, [r6, #172]
 6323 0260 3046     		mov	r0, r6
 6324 0262 0122     		movs	r2, #1
 6325 0264 FFF7FEFF 		bl	_ZN6GCodes12SetPositionsEPKfb
 6326 0268 D6F89832 		ldr	r3, [r6, #664]
 6327 026c 9FED0C7A 		flds	s14, .L1228+24
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 112


 6328 0270 43F00403 		orr	r3, r3, #4
 6329 0274 F0EE477A 		fcpys	s15, s14
 6330 0278 C6F89832 		str	r3, [r6, #664]
 6331 027c 86EDBA7A 		fsts	s14, [r6, #744]
 6332 0280 BAE7     		b	.L1217
 6333              	.L1229:
 6334 0282 00BFAFF3 		.align	3
 6334      0080
 6335              	.L1228:
 6336 0288 9A999999 		.word	-1717986918
 6337 028c 9999F13F 		.word	1072798105
 6338 0290 00000000 		.word	reprap
 6339 0294 00007A44 		.word	1148846080
 6340 0298 78080000 		.word	.LC84
 6341 029c B4080000 		.word	.LC85
 6342 02a0 00000000 		.word	0
 6343              		.size	_ZN6GCodes21DoSingleZProbeAtPointER11GCodeBufferjf, .-_ZN6GCodes21DoSingleZProbeAtPointER11G
 6344 02a4 AFF30080 		.section	.text._ZN6GCodes14DoSingleZProbeER11GCodeBufferR9StringRefbf,"ax",%progbits
 6345              		.align	2
 6346              		.global	_ZN6GCodes14DoSingleZProbeER11GCodeBufferR9StringRefbf
 6347              		.thumb
 6348              		.thumb_func
 6349              		.type	_ZN6GCodes14DoSingleZProbeER11GCodeBufferR9StringRefbf, %function
 6350              	_ZN6GCodes14DoSingleZProbeER11GCodeBufferR9StringRefbf:
 6351              		@ args = 4, pretend = 0, frame = 40
 6352              		@ frame_needed = 0, uses_anonymous_args = 0
 6353 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 6354 0004 0446     		mov	r4, r0
 6355 0006 0068     		ldr	r0, [r0]
 6356 0008 0D46     		mov	r5, r1
 6357 000a 00F5A561 		add	r1, r0, #1320
 6358 000e 00F5A860 		add	r0, r0, #1344
 6359 0012 91ED007A 		flds	s14, [r1]
 6360 0016 D0ED007A 		flds	s15, [r0]
 6361 001a 77EE677A 		fsubs	s15, s14, s15
 6362 001e 8AB0     		sub	sp, sp, #40
 6363 0020 17EE900A 		fmrs	r0, s15
 6364 0024 9046     		mov	r8, r2
 6365 0026 1F46     		mov	r7, r3
 6366 0028 FFF7FEFF 		bl	__aeabi_f2d
 6367 002c 36A3     		adr	r3, .L1240+16
 6368 002e D3E90023 		ldrd	r2, [r3]
 6369 0032 FFF7FEFF 		bl	__aeabi_dmul
 6370 0036 FFF7FEFF 		bl	__aeabi_d2f
 6371 003a 2946     		mov	r1, r5
 6372 003c 0246     		mov	r2, r0	@ float
 6373 003e 2046     		mov	r0, r4
 6374 0040 FFF7FEFF 		bl	_ZN6GCodes8DoZProbeER11GCodeBufferf
 6375 0044 0128     		cmp	r0, #1
 6376 0046 0546     		mov	r5, r0
 6377 0048 3AD0     		beq	.L1232
 6378 004a 0228     		cmp	r0, #2
 6379 004c 0DD0     		beq	.L1233
 6380 004e 18B1     		cbz	r0, .L1238
 6381 0050 0020     		movs	r0, #0
 6382              	.L1231:
 6383 0052 0AB0     		add	sp, sp, #40
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 113


 6384              		@ sp needed
 6385 0054 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6386              	.L1238:
 6387 0058 2068     		ldr	r0, [r4]
 6388 005a 274A     		ldr	r2, .L1240
 6389 005c 0621     		movs	r1, #6
 6390 005e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6391 0062 0120     		movs	r0, #1
 6392 0064 0AB0     		add	sp, sp, #40
 6393              		@ sp needed
 6394 0066 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6395              	.L1233:
 6396 006a 002F     		cmp	r7, #0
 6397 006c 31D1     		bne	.L1239
 6398 006e 2068     		ldr	r0, [r4]
 6399 0070 FFF7FEFF 		bl	_ZN8Platform16ZProbeStopHeightEv
 6400 0074 9DED107A 		flds	s14, [sp, #64]
 6401 0078 06EE900A 		fmsr	s13, r0
 6402 007c 76EE877A 		fadds	s15, s13, s14
 6403 0080 04F1A405 		add	r5, r4, #164
 6404 0084 C4ED2B7A 		fsts	s15, [r4, #172]
 6405 0088 2946     		mov	r1, r5
 6406 008a 2046     		mov	r0, r4
 6407 008c 3A46     		mov	r2, r7
 6408 008e FFF7FEFF 		bl	_ZN6GCodes12SetPositionsEPKfb
 6409 0092 D4F89822 		ldr	r2, [r4, #664]
 6410 0096 1948     		ldr	r0, .L1240+4
 6411 0098 42F00402 		orr	r2, r2, #4
 6412 009c C4F89822 		str	r2, [r4, #664]
 6413 00a0 8668     		ldr	r6, [r0, #8]
 6414 00a2 FFF7FEFF 		bl	_ZNK6RepRap15GetCurrentXAxesEv
 6415 00a6 2946     		mov	r1, r5
 6416 00a8 0346     		mov	r3, r0
 6417 00aa 3A46     		mov	r2, r7
 6418 00ac 3046     		mov	r0, r6
 6419 00ae FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhm
 6420 00b2 0023     		movs	r3, #0
 6421 00b4 0120     		movs	r0, #1
 6422 00b6 C4F8E832 		str	r3, [r4, #744]	@ float
 6423 00ba 0AB0     		add	sp, sp, #40
 6424              		@ sp needed
 6425 00bc BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6426              	.L1232:
 6427 00c0 2068     		ldr	r0, [r4]
 6428 00c2 0F4A     		ldr	r2, .L1240+8
 6429 00c4 0621     		movs	r1, #6
 6430 00c6 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6431 00ca 2846     		mov	r0, r5
 6432 00cc 0AB0     		add	sp, sp, #40
 6433              		@ sp needed
 6434 00ce BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6435              	.L1239:
 6436 00d2 0A4B     		ldr	r3, .L1240+4
 6437 00d4 0022     		movs	r2, #0
 6438 00d6 9868     		ldr	r0, [r3, #8]
 6439 00d8 6946     		mov	r1, sp
 6440 00da FFF7FEFF 		bl	_ZNK4Move25GetCurrentMachinePositionEPfb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 114


 6441 00de 0298     		ldr	r0, [sp, #8]	@ float
 6442 00e0 FFF7FEFF 		bl	__aeabi_f2d
 6443 00e4 0246     		mov	r2, r0
 6444 00e6 0B46     		mov	r3, r1
 6445 00e8 4046     		mov	r0, r8
 6446 00ea 0649     		ldr	r1, .L1240+12
 6447 00ec FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 6448 00f0 0120     		movs	r0, #1
 6449 00f2 AEE7     		b	.L1231
 6450              	.L1241:
 6451 00f4 AFF30080 		.align	3
 6452              	.L1240:
 6453 00f8 78080000 		.word	.LC84
 6454 00fc 00000000 		.word	reprap
 6455 0100 B4080000 		.word	.LC85
 6456 0104 EC080000 		.word	.LC86
 6457 0108 9A999999 		.word	-1717986918
 6458 010c 9999F13F 		.word	1072798105
 6459              		.size	_ZN6GCodes14DoSingleZProbeER11GCodeBufferR9StringRefbf, .-_ZN6GCodes14DoSingleZProbeER11GCod
 6460              		.section	.text._ZN6GCodes26SetSingleZProbeAtAPositionER11GCodeBufferR9StringRef,"ax",%progbits
 6461              		.align	2
 6462              		.global	_ZN6GCodes26SetSingleZProbeAtAPositionER11GCodeBufferR9StringRef
 6463              		.thumb
 6464              		.thumb_func
 6465              		.type	_ZN6GCodes26SetSingleZProbeAtAPositionER11GCodeBufferR9StringRef, %function
 6466              	_ZN6GCodes26SetSingleZProbeAtAPositionER11GCodeBufferR9StringRef:
 6467              		@ args = 0, pretend = 0, frame = 8
 6468              		@ frame_needed = 0, uses_anonymous_args = 0
 6469 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 6470 0004 6F4F     		ldr	r7, .L1280
 6471 0006 2DED028B 		fstmfdd	sp!, {d8}
 6472 000a BB68     		ldr	r3, [r7, #8]
 6473 000c 93F8BC4A 		ldrb	r4, [r3, #2748]	@ zero_extendqisi2
 6474 0010 85B0     		sub	sp, sp, #20
 6475 0012 0646     		mov	r6, r0
 6476 0014 0D46     		mov	r5, r1
 6477 0016 9046     		mov	r8, r2
 6478 0018 A4B1     		cbz	r4, .L1243
 6479 001a D0F8B031 		ldr	r3, [r0, #432]
 6480 001e D0F89822 		ldr	r2, [r0, #664]
 6481 0022 0121     		movs	r1, #1
 6482 0024 01FA03F3 		lsl	r3, r1, r3
 6483 0028 013B     		subs	r3, r3, #1
 6484 002a 1A40     		ands	r2, r2, r3
 6485 002c 9342     		cmp	r3, r2
 6486 002e 09D0     		beq	.L1243
 6487 0030 4046     		mov	r0, r8
 6488 0032 6549     		ldr	r1, .L1280+4
 6489 0034 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 6490              	.L1266:
 6491 0038 2046     		mov	r0, r4
 6492 003a 05B0     		add	sp, sp, #20
 6493              		@ sp needed
 6494 003c BDEC028B 		fldmfdd	sp!, {d8}
 6495 0040 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6496              	.L1243:
 6497 0044 04AB     		add	r3, sp, #16
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 115


 6498 0046 0022     		movs	r2, #0
 6499 0048 43F8042D 		str	r2, [r3, #-4]!	@ float
 6500 004c 2846     		mov	r0, r5
 6501 004e 1A46     		mov	r2, r3
 6502 0050 4821     		movs	r1, #72
 6503 0052 0DF10B03 		add	r3, sp, #11
 6504 0056 FFF7FEFF 		bl	_ZN11GCodeBuffer12TryGetFValueEcRfRb
 6505 005a 2846     		mov	r0, r5
 6506 005c 5021     		movs	r1, #80
 6507 005e FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6508 0062 0446     		mov	r4, r0
 6509 0064 A0B9     		cbnz	r0, .L1259
 6510 0066 2846     		mov	r0, r5
 6511 0068 5321     		movs	r1, #83
 6512 006a FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6513 006e 0028     		cmp	r0, #0
 6514 0070 64D1     		bne	.L1273
 6515 0072 0346     		mov	r3, r0
 6516              	.L1245:
 6517 0074 039C     		ldr	r4, [sp, #12]	@ float
 6518 0076 0094     		str	r4, [sp]	@ float
 6519 0078 3046     		mov	r0, r6
 6520 007a 2946     		mov	r1, r5
 6521 007c 4246     		mov	r2, r8
 6522 007e FFF7FEFF 		bl	_ZN6GCodes14DoSingleZProbeER11GCodeBufferR9StringRefbf
 6523 0082 0446     		mov	r4, r0
 6524 0084 2046     		mov	r0, r4
 6525 0086 05B0     		add	sp, sp, #20
 6526              		@ sp needed
 6527 0088 BDEC028B 		fldmfdd	sp!, {d8}
 6528 008c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6529              	.L1259:
 6530 0090 2846     		mov	r0, r5
 6531 0092 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6532 0096 3F28     		cmp	r0, #63
 6533 0098 8146     		mov	r9, r0
 6534 009a 44D8     		bhi	.L1274
 6535 009c 2846     		mov	r0, r5
 6536 009e 5821     		movs	r1, #88
 6537 00a0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6538 00a4 0028     		cmp	r0, #0
 6539 00a6 62D1     		bne	.L1275
 6540 00a8 D6F8A4B0 		ldr	fp, [r6, #164]	@ float
 6541              	.L1249:
 6542 00ac 2846     		mov	r0, r5
 6543 00ae 5921     		movs	r1, #89
 6544 00b0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6545 00b4 0028     		cmp	r0, #0
 6546 00b6 55D1     		bne	.L1276
 6547 00b8 D6F8A8A0 		ldr	r10, [r6, #168]	@ float
 6548              	.L1251:
 6549 00bc 2846     		mov	r0, r5
 6550 00be 5A21     		movs	r1, #90
 6551 00c0 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6552 00c4 0028     		cmp	r0, #0
 6553 00c6 47D1     		bne	.L1277
 6554 00c8 96ED2B8A 		flds	s16, [r6, #172]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 116


 6555              	.L1253:
 6556 00cc 5A46     		mov	r2, fp	@ float
 6557 00ce B868     		ldr	r0, [r7, #8]
 6558 00d0 DFF8F0B0 		ldr	fp, .L1280
 6559 00d4 4946     		mov	r1, r9
 6560 00d6 FFF7FEFF 		bl	_ZN4Move17SetXBedProbePointEjf
 6561 00da B868     		ldr	r0, [r7, #8]
 6562 00dc 5246     		mov	r2, r10	@ float
 6563 00de 4946     		mov	r1, r9
 6564 00e0 FFF7FEFF 		bl	_ZN4Move17SetYBedProbePointEjf
 6565 00e4 DFED397A 		flds	s15, .L1280+8
 6566 00e8 B4EEE78A 		fcmpes	s16, s15
 6567 00ec F1EE10FA 		fmstat
 6568 00f0 29DD     		ble	.L1271
 6569 00f2 0023     		movs	r3, #0
 6570 00f4 DBF80800 		ldr	r0, [fp, #8]
 6571 00f8 0093     		str	r3, [sp]
 6572 00fa 4946     		mov	r1, r9
 6573 00fc 18EE102A 		fmrs	r2, s16
 6574 0100 FFF7FEFF 		bl	_ZN4Move17SetZBedProbePointEjfbb
 6575 0104 2846     		mov	r0, r5
 6576 0106 5321     		movs	r1, #83
 6577 0108 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6578 010c 0028     		cmp	r0, #0
 6579 010e 93D0     		beq	.L1266
 6580 0110 2846     		mov	r0, r5
 6581 0112 DBF80860 		ldr	r6, [fp, #8]
 6582 0116 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6583 011a 4246     		mov	r2, r8
 6584 011c 0146     		mov	r1, r0
 6585 011e 3046     		mov	r0, r6
 6586 0120 FFF7FEFF 		bl	_ZN4Move18FinishedBedProbingEiR9StringRef
 6587 0124 88E7     		b	.L1266
 6588              	.L1274:
 6589 0126 3868     		ldr	r0, [r7]
 6590 0128 294A     		ldr	r2, .L1280+12
 6591 012a 0621     		movs	r1, #6
 6592 012c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 6593 0130 2046     		mov	r0, r4
 6594 0132 05B0     		add	sp, sp, #20
 6595              		@ sp needed
 6596 0134 BDEC028B 		fldmfdd	sp!, {d8}
 6597 0138 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 6598              	.L1273:
 6599 013c 2846     		mov	r0, r5
 6600 013e FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6601 0142 C30F     		lsrs	r3, r0, #31
 6602 0144 96E7     		b	.L1245
 6603              	.L1271:
 6604 0146 4A46     		mov	r2, r9
 6605 0148 3046     		mov	r0, r6
 6606 014a 2946     		mov	r1, r5
 6607 014c 039B     		ldr	r3, [sp, #12]	@ float
 6608 014e FFF7FEFF 		bl	_ZN6GCodes21DoSingleZProbeAtPointER11GCodeBufferjf
 6609 0152 88B9     		cbnz	r0, .L1278
 6610 0154 0446     		mov	r4, r0
 6611 0156 6FE7     		b	.L1266
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 117


 6612              	.L1277:
 6613 0158 2846     		mov	r0, r5
 6614 015a FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6615 015e 08EE100A 		fmsr	s16, r0
 6616 0162 B3E7     		b	.L1253
 6617              	.L1276:
 6618 0164 2846     		mov	r0, r5
 6619 0166 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6620 016a 8246     		mov	r10, r0	@ float
 6621 016c A6E7     		b	.L1251
 6622              	.L1275:
 6623 016e 2846     		mov	r0, r5
 6624 0170 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetFValueEv
 6625 0174 8346     		mov	fp, r0	@ float
 6626 0176 99E7     		b	.L1249
 6627              	.L1278:
 6628 0178 2846     		mov	r0, r5
 6629 017a 5321     		movs	r1, #83
 6630 017c FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6631 0180 0028     		cmp	r0, #0
 6632 0182 3FF459AF 		beq	.L1266
 6633 0186 2846     		mov	r0, r5
 6634 0188 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 6635 018c 0128     		cmp	r0, #1
 6636 018e 0146     		mov	r1, r0
 6637 0190 05D0     		beq	.L1279
 6638 0192 DBF80800 		ldr	r0, [fp, #8]
 6639 0196 4246     		mov	r2, r8
 6640 0198 FFF7FEFF 		bl	_ZN4Move18FinishedBedProbingEiR9StringRef
 6641 019c 4CE7     		b	.L1266
 6642              	.L1279:
 6643 019e 96ED2B7A 		flds	s14, [r6, #172]
 6644 01a2 D6EDBA7A 		flds	s15, [r6, #744]
 6645 01a6 77EE277A 		fadds	s15, s14, s15
 6646 01aa 0246     		mov	r2, r0
 6647 01ac C6ED2B7A 		fsts	s15, [r6, #172]
 6648 01b0 3046     		mov	r0, r6
 6649 01b2 06F1A401 		add	r1, r6, #164
 6650 01b6 FFF7FEFF 		bl	_ZN6GCodes12SetPositionsEPKfb
 6651 01ba 0023     		movs	r3, #0
 6652 01bc C6F8E832 		str	r3, [r6, #744]	@ float
 6653 01c0 3AE7     		b	.L1266
 6654              	.L1281:
 6655 01c2 00BF     		.align	2
 6656              	.L1280:
 6657 01c4 00000000 		.word	reprap
 6658 01c8 2C090000 		.word	.LC88
 6659 01cc 003C1CC6 		.word	-971228160
 6660 01d0 08090000 		.word	.LC87
 6661              		.size	_ZN6GCodes26SetSingleZProbeAtAPositionER11GCodeBufferR9StringRef, .-_ZN6GCodes26SetSingleZPr
 6662              		.section	.text._ZN6GCodes12SetPositionsER11GCodeBuffer,"ax",%progbits
 6663              		.align	2
 6664              		.global	_ZN6GCodes12SetPositionsER11GCodeBuffer
 6665              		.thumb
 6666              		.thumb_func
 6667              		.type	_ZN6GCodes12SetPositionsER11GCodeBuffer, %function
 6668              	_ZN6GCodes12SetPositionsER11GCodeBuffer:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 118


 6669              		@ args = 0, pretend = 0, frame = 0
 6670              		@ frame_needed = 0, uses_anonymous_args = 0
 6671 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 6672 0002 D0F8B031 		ldr	r3, [r0, #432]
 6673 0006 0546     		mov	r5, r0
 6674 0008 0E46     		mov	r6, r1
 6675 000a 63B3     		cbz	r3, .L1283
 6676 000c 1D4F     		ldr	r7, .L1294
 6677 000e 0024     		movs	r4, #0
 6678 0010 03E0     		b	.L1285
 6679              	.L1293:
 6680 0012 D5F8B031 		ldr	r3, [r5, #432]
 6681 0016 A342     		cmp	r3, r4
 6682 0018 25D9     		bls	.L1283
 6683              	.L1285:
 6684 001a 395D     		ldrb	r1, [r7, r4]	@ zero_extendqisi2
 6685 001c 3046     		mov	r0, r6
 6686 001e 0134     		adds	r4, r4, #1
 6687 0020 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 6688 0024 0028     		cmp	r0, #0
 6689 0026 F4D0     		beq	.L1293
 6690 0028 2846     		mov	r0, r5
 6691 002a 3146     		mov	r1, r6
 6692 002c FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 6693 0030 0446     		mov	r4, r0
 6694 0032 20B3     		cbz	r0, .L1288
 6695 0034 0023     		movs	r3, #0
 6696 0036 C5F8E032 		str	r3, [r5, #736]	@ float
 6697 003a C5F8E432 		str	r3, [r5, #740]	@ float
 6698 003e 3146     		mov	r1, r6
 6699 0040 2846     		mov	r0, r5
 6700 0042 4FF0FF32 		mov	r2, #-1
 6701 0046 FFF7FEFF 		bl	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBufferi
 6702 004a 3146     		mov	r1, r6
 6703 004c 2846     		mov	r0, r5
 6704 004e 4FF0FF32 		mov	r2, #-1
 6705 0052 FFF7FEFF 		bl	_ZN6GCodes23LoadMoveBufferFromGCodeER11GCodeBufferi
 6706 0056 2846     		mov	r0, r5
 6707 0058 05F1A401 		add	r1, r5, #164
 6708 005c 0122     		movs	r2, #1
 6709 005e FFF7FEFF 		bl	_ZN6GCodes12SetPositionsEPKfb
 6710 0062 2046     		mov	r0, r4
 6711 0064 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 6712              	.L1283:
 6713 0066 D5F8FC30 		ldr	r3, [r5, #252]
 6714 006a 43B9     		cbnz	r3, .L1288
 6715 006c 2846     		mov	r0, r5
 6716 006e 3146     		mov	r1, r6
 6717 0070 4FF0FF32 		mov	r2, #-1
 6718 0074 0124     		movs	r4, #1
 6719 0076 FFF7FEFF 		bl	_ZN6GCodes33LoadExtrusionAndFeedrateFromGCodeER11GCodeBufferi
 6720 007a 2046     		mov	r0, r4
 6721 007c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 6722              	.L1288:
 6723 007e 0024     		movs	r4, #0
 6724 0080 2046     		mov	r0, r4
 6725 0082 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 119


 6726              	.L1295:
 6727              		.align	2
 6728              	.L1294:
 6729 0084 00000000 		.word	.LANCHOR0
 6730              		.size	_ZN6GCodes12SetPositionsER11GCodeBuffer, .-_ZN6GCodes12SetPositionsER11GCodeBuffer
 6731              		.section	.text._ZNK6GCodes8IsPausedEv,"ax",%progbits
 6732              		.align	2
 6733              		.global	_ZNK6GCodes8IsPausedEv
 6734              		.thumb
 6735              		.thumb_func
 6736              		.type	_ZNK6GCodes8IsPausedEv, %function
 6737              	_ZNK6GCodes8IsPausedEv:
 6738              		@ args = 0, pretend = 0, frame = 0
 6739              		@ frame_needed = 0, uses_anonymous_args = 0
 6740 0000 90F8A130 		ldrb	r3, [r0, #161]	@ zero_extendqisi2
 6741 0004 10B5     		push	{r4, lr}
 6742 0006 0446     		mov	r4, r0
 6743 0008 0BB9     		cbnz	r3, .L1297
 6744              	.L1299:
 6745 000a 0020     		movs	r0, #0
 6746 000c 10BD     		pop	{r4, pc}
 6747              	.L1297:
 6748 000e 036C     		ldr	r3, [r0, #64]
 6749 0010 1868     		ldr	r0, [r3]
 6750 0012 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 6751 0016 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 6752 0018 0C3B     		subs	r3, r3, #12
 6753 001a 012B     		cmp	r3, #1
 6754 001c F5D9     		bls	.L1299
 6755 001e 236C     		ldr	r3, [r4, #64]
 6756 0020 1868     		ldr	r0, [r3]
 6757 0022 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 6758 0026 007C     		ldrb	r0, [r0, #16]	@ zero_extendqisi2
 6759 0028 0E38     		subs	r0, r0, #14
 6760 002a 0228     		cmp	r0, #2
 6761 002c 94BF     		ite	ls
 6762 002e 0020     		movls	r0, #0
 6763 0030 0120     		movhi	r0, #1
 6764 0032 10BD     		pop	{r4, pc}
 6765              		.size	_ZNK6GCodes8IsPausedEv, .-_ZNK6GCodes8IsPausedEv
 6766              		.section	.text._ZNK6GCodes9IsPausingEv,"ax",%progbits
 6767              		.align	2
 6768              		.global	_ZNK6GCodes9IsPausingEv
 6769              		.thumb
 6770              		.thumb_func
 6771              		.type	_ZNK6GCodes9IsPausingEv, %function
 6772              	_ZNK6GCodes9IsPausingEv:
 6773              		@ args = 0, pretend = 0, frame = 0
 6774              		@ frame_needed = 0, uses_anonymous_args = 0
 6775 0000 08B5     		push	{r3, lr}
 6776 0002 036C     		ldr	r3, [r0, #64]
 6777 0004 1868     		ldr	r0, [r3]
 6778 0006 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 6779 000a 007C     		ldrb	r0, [r0, #16]	@ zero_extendqisi2
 6780 000c 0C38     		subs	r0, r0, #12
 6781 000e 0128     		cmp	r0, #1
 6782 0010 8CBF     		ite	hi
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 120


 6783 0012 0020     		movhi	r0, #0
 6784 0014 0120     		movls	r0, #1
 6785 0016 08BD     		pop	{r3, pc}
 6786              		.size	_ZNK6GCodes9IsPausingEv, .-_ZNK6GCodes9IsPausingEv
 6787              		.section	.text._ZNK6GCodes10IsResumingEv,"ax",%progbits
 6788              		.align	2
 6789              		.global	_ZNK6GCodes10IsResumingEv
 6790              		.thumb
 6791              		.thumb_func
 6792              		.type	_ZNK6GCodes10IsResumingEv, %function
 6793              	_ZNK6GCodes10IsResumingEv:
 6794              		@ args = 0, pretend = 0, frame = 0
 6795              		@ frame_needed = 0, uses_anonymous_args = 0
 6796 0000 08B5     		push	{r3, lr}
 6797 0002 036C     		ldr	r3, [r0, #64]
 6798 0004 1868     		ldr	r0, [r3]
 6799 0006 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 6800 000a 007C     		ldrb	r0, [r0, #16]	@ zero_extendqisi2
 6801 000c 0E38     		subs	r0, r0, #14
 6802 000e 0228     		cmp	r0, #2
 6803 0010 8CBF     		ite	hi
 6804 0012 0020     		movhi	r0, #0
 6805 0014 0120     		movls	r0, #1
 6806 0016 08BD     		pop	{r3, pc}
 6807              		.size	_ZNK6GCodes10IsResumingEv, .-_ZNK6GCodes10IsResumingEv
 6808              		.section	.text._ZNK6GCodes9IsRunningEv,"ax",%progbits
 6809              		.align	2
 6810              		.global	_ZNK6GCodes9IsRunningEv
 6811              		.thumb
 6812              		.thumb_func
 6813              		.type	_ZNK6GCodes9IsRunningEv, %function
 6814              	_ZNK6GCodes9IsRunningEv:
 6815              		@ args = 0, pretend = 0, frame = 0
 6816              		@ frame_needed = 0, uses_anonymous_args = 0
 6817 0000 10B5     		push	{r4, lr}
 6818 0002 0446     		mov	r4, r0
 6819 0004 FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 6820 0008 08B1     		cbz	r0, .L1303
 6821              	.L1305:
 6822 000a 0020     		movs	r0, #0
 6823 000c 10BD     		pop	{r4, pc}
 6824              	.L1303:
 6825 000e 236C     		ldr	r3, [r4, #64]
 6826 0010 1868     		ldr	r0, [r3]
 6827 0012 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 6828 0016 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 6829 0018 0C3B     		subs	r3, r3, #12
 6830 001a 012B     		cmp	r3, #1
 6831 001c F5D9     		bls	.L1305
 6832 001e 236C     		ldr	r3, [r4, #64]
 6833 0020 1868     		ldr	r0, [r3]
 6834 0022 FFF7FEFF 		bl	_ZNK11GCodeBuffer20OriginalMachineStateEv
 6835 0026 007C     		ldrb	r0, [r0, #16]	@ zero_extendqisi2
 6836 0028 0E38     		subs	r0, r0, #14
 6837 002a 0228     		cmp	r0, #2
 6838 002c 94BF     		ite	ls
 6839 002e 0020     		movls	r0, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 121


 6840 0030 0120     		movhi	r0, #1
 6841 0032 10BD     		pop	{r4, pc}
 6842              		.size	_ZNK6GCodes9IsRunningEv, .-_ZNK6GCodes9IsRunningEv
 6843              		.section	.text._ZN6GCodes22TranslateEndStopResultE10EndStopHit,"ax",%progbits
 6844              		.align	2
 6845              		.global	_ZN6GCodes22TranslateEndStopResultE10EndStopHit
 6846              		.thumb
 6847              		.thumb_func
 6848              		.type	_ZN6GCodes22TranslateEndStopResultE10EndStopHit, %function
 6849              	_ZN6GCodes22TranslateEndStopResultE10EndStopHit:
 6850              		@ args = 0, pretend = 0, frame = 0
 6851              		@ frame_needed = 0, uses_anonymous_args = 0
 6852              		@ link register save eliminated.
 6853 0000 0139     		subs	r1, r1, #1
 6854 0002 0229     		cmp	r1, #2
 6855 0004 9ABF     		itte	ls
 6856 0006 024B     		ldrls	r3, .L1309
 6857 0008 53F82100 		ldrls	r0, [r3, r1, lsl #2]
 6858 000c 0148     		ldrhi	r0, .L1309+4
 6859 000e 7047     		bx	lr
 6860              	.L1310:
 6861              		.align	2
 6862              	.L1309:
 6863 0010 00000000 		.word	.LANCHOR5
 6864 0014 4C090000 		.word	.LC89
 6865              		.size	_ZN6GCodes22TranslateEndStopResultE10EndStopHit, .-_ZN6GCodes22TranslateEndStopResultE10EndS
 6866              		.section	.text._ZN6GCodes12ListTriggersE9StringReft,"ax",%progbits
 6867              		.align	2
 6868              		.global	_ZN6GCodes12ListTriggersE9StringReft
 6869              		.thumb
 6870              		.thumb_func
 6871              		.type	_ZN6GCodes12ListTriggersE9StringReft, %function
 6872              	_ZN6GCodes12ListTriggersE9StringReft:
 6873              		@ args = 0, pretend = 0, frame = 8
 6874              		@ frame_needed = 0, uses_anonymous_args = 0
 6875 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 6876 0004 82B0     		sub	sp, sp, #8
 6877 0006 1D46     		mov	r5, r3
 6878 0008 0746     		mov	r7, r0
 6879 000a 8DE80600 		stmia	sp, {r1, r2}
 6880 000e 43B3     		cbz	r3, .L1327
 6881 0010 0024     		movs	r4, #0
 6882 0012 DFF86480 		ldr	r8, .L1330+8
 6883 0016 2346     		mov	r3, r4
 6884 0018 08E0     		b	.L1317
 6885              	.L1329:
 6886 001a 18F80410 		ldrb	r1, [r8, r4]	@ zero_extendqisi2
 6887 001e 6846     		mov	r0, sp
 6888 0020 FFF7FEFF 		bl	_ZN9StringRef3catEc
 6889 0024 0123     		movs	r3, #1
 6890              	.L1314:
 6891 0026 0134     		adds	r4, r4, #1
 6892 0028 0A2C     		cmp	r4, #10
 6893 002a 12D0     		beq	.L1311
 6894              	.L1317:
 6895 002c 25FA04F2 		lsr	r2, r5, r4
 6896 0030 D207     		lsls	r2, r2, #31
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 122


 6897 0032 F8D5     		bpl	.L1314
 6898 0034 83B9     		cbnz	r3, .L1328
 6899              	.L1315:
 6900 0036 D7F8B021 		ldr	r2, [r7, #432]
 6901 003a 0D49     		ldr	r1, .L1330
 6902 003c A242     		cmp	r2, r4
 6903 003e ECD8     		bhi	.L1329
 6904 0040 A21A     		subs	r2, r4, r2
 6905 0042 6846     		mov	r0, sp
 6906 0044 0134     		adds	r4, r4, #1
 6907 0046 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 6908 004a 0A2C     		cmp	r4, #10
 6909 004c 4FF00103 		mov	r3, #1
 6910 0050 ECD1     		bne	.L1317
 6911              	.L1311:
 6912 0052 02B0     		add	sp, sp, #8
 6913              		@ sp needed
 6914 0054 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6915              	.L1328:
 6916 0058 6846     		mov	r0, sp
 6917 005a 2021     		movs	r1, #32
 6918 005c FFF7FEFF 		bl	_ZN9StringRef3catEc
 6919 0060 E9E7     		b	.L1315
 6920              	.L1327:
 6921 0062 6846     		mov	r0, sp
 6922 0064 0349     		ldr	r1, .L1330+4
 6923 0066 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 6924 006a 02B0     		add	sp, sp, #8
 6925              		@ sp needed
 6926 006c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 6927              	.L1331:
 6928              		.align	2
 6929              	.L1330:
 6930 0070 60090000 		.word	.LC91
 6931 0074 58090000 		.word	.LC90
 6932 0078 00000000 		.word	.LANCHOR0
 6933              		.size	_ZN6GCodes12ListTriggersE9StringReft, .-_ZN6GCodes12ListTriggersE9StringReft
 6934              		.section	.text._ZN6GCodes9StartHashEPKc,"ax",%progbits
 6935              		.align	2
 6936              		.global	_ZN6GCodes9StartHashEPKc
 6937              		.thumb
 6938              		.thumb_func
 6939              		.type	_ZN6GCodes9StartHashEPKc, %function
 6940              	_ZN6GCodes9StartHashEPKc:
 6941              		@ args = 0, pretend = 0, frame = 0
 6942              		@ frame_needed = 0, uses_anonymous_args = 0
 6943 0000 10B5     		push	{r4, lr}
 6944 0002 0A46     		mov	r2, r1
 6945 0004 0446     		mov	r4, r0
 6946 0006 0749     		ldr	r1, .L1335
 6947 0008 0068     		ldr	r0, [r0]
 6948 000a 0023     		movs	r3, #0
 6949 000c FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 6950 0010 C4F86403 		str	r0, [r4, #868]
 6951 0014 20B1     		cbz	r0, .L1333
 6952 0016 04F55A70 		add	r0, r4, #872
 6953 001a FFF7FEFF 		bl	SHA1Reset
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 123


 6954 001e 0120     		movs	r0, #1
 6955              	.L1333:
 6956 0020 10BD     		pop	{r4, pc}
 6957              	.L1336:
 6958 0022 00BF     		.align	2
 6959              	.L1335:
 6960 0024 64090000 		.word	.LC92
 6961              		.size	_ZN6GCodes9StartHashEPKc, .-_ZN6GCodes9StartHashEPKc
 6962              		.section	.text._ZN6GCodes11AdvanceHashER9StringRef,"ax",%progbits
 6963              		.align	2
 6964              		.global	_ZN6GCodes11AdvanceHashER9StringRef
 6965              		.thumb
 6966              		.thumb_func
 6967              		.type	_ZN6GCodes11AdvanceHashER9StringRef, %function
 6968              	_ZN6GCodes11AdvanceHashER9StringRef:
 6969              		@ args = 0, pretend = 0, frame = 256
 6970              		@ frame_needed = 0, uses_anonymous_args = 0
 6971 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 6972 0002 C1B0     		sub	sp, sp, #260
 6973 0004 0546     		mov	r5, r0
 6974 0006 0E46     		mov	r6, r1
 6975 0008 D0F86403 		ldr	r0, [r0, #868]
 6976 000c 6946     		mov	r1, sp
 6977 000e 4FF48072 		mov	r2, #256
 6978 0012 FFF7FEFF 		bl	_ZN9FileStore4ReadEPcj
 6979 0016 431C     		adds	r3, r0, #1
 6980 0018 0446     		mov	r4, r0
 6981 001a 17D0     		beq	.L1338
 6982 001c 05F55A77 		add	r7, r5, #872
 6983 0020 6946     		mov	r1, sp
 6984 0022 3846     		mov	r0, r7
 6985 0024 2246     		mov	r2, r4
 6986 0026 FFF7FEFF 		bl	SHA1Input
 6987 002a B4F5807F 		cmp	r4, #256
 6988 002e 17D0     		beq	.L1342
 6989 0030 3846     		mov	r0, r7
 6990 0032 FFF7FEFF 		bl	SHA1Result
 6991 0036 0024     		movs	r4, #0
 6992              	.L1341:
 6993 0038 2B19     		adds	r3, r5, r4
 6994 003a 3046     		mov	r0, r6
 6995 003c D3F86823 		ldr	r2, [r3, #872]
 6996 0040 0949     		ldr	r1, .L1343
 6997 0042 0434     		adds	r4, r4, #4
 6998 0044 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 6999 0048 142C     		cmp	r4, #20
 7000 004a F5D1     		bne	.L1341
 7001              	.L1338:
 7002 004c D5F86403 		ldr	r0, [r5, #868]
 7003 0050 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 7004 0054 0023     		movs	r3, #0
 7005 0056 0120     		movs	r0, #1
 7006 0058 C5F86433 		str	r3, [r5, #868]
 7007 005c 41B0     		add	sp, sp, #260
 7008              		@ sp needed
 7009 005e F0BD     		pop	{r4, r5, r6, r7, pc}
 7010              	.L1342:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 124


 7011 0060 0020     		movs	r0, #0
 7012 0062 41B0     		add	sp, sp, #260
 7013              		@ sp needed
 7014 0064 F0BD     		pop	{r4, r5, r6, r7, pc}
 7015              	.L1344:
 7016 0066 00BF     		.align	2
 7017              	.L1343:
 7018 0068 68090000 		.word	.LC93
 7019              		.size	_ZN6GCodes11AdvanceHashER9StringRef, .-_ZN6GCodes11AdvanceHashER9StringRef
 7020              		.section	.text._ZNK6GCodes15AllAxesAreHomedEv,"ax",%progbits
 7021              		.align	2
 7022              		.global	_ZNK6GCodes15AllAxesAreHomedEv
 7023              		.thumb
 7024              		.thumb_func
 7025              		.type	_ZNK6GCodes15AllAxesAreHomedEv, %function
 7026              	_ZNK6GCodes15AllAxesAreHomedEv:
 7027              		@ args = 0, pretend = 0, frame = 0
 7028              		@ frame_needed = 0, uses_anonymous_args = 0
 7029              		@ link register save eliminated.
 7030 0000 D0F8B031 		ldr	r3, [r0, #432]
 7031 0004 D0F89802 		ldr	r0, [r0, #664]
 7032 0008 0122     		movs	r2, #1
 7033 000a 02FA03F3 		lsl	r3, r2, r3
 7034 000e 013B     		subs	r3, r3, #1
 7035 0010 1840     		ands	r0, r0, r3
 7036 0012 C31A     		subs	r3, r0, r3
 7037 0014 5842     		rsbs	r0, r3, #0
 7038 0016 5841     		adcs	r0, r0, r3
 7039 0018 7047     		bx	lr
 7040              		.size	_ZNK6GCodes15AllAxesAreHomedEv, .-_ZNK6GCodes15AllAxesAreHomedEv
 7041 001a 00BF     		.section	.text._ZN6GCodes18SetAllAxesNotHomedEv,"ax",%progbits
 7042              		.align	2
 7043              		.global	_ZN6GCodes18SetAllAxesNotHomedEv
 7044              		.thumb
 7045              		.thumb_func
 7046              		.type	_ZN6GCodes18SetAllAxesNotHomedEv, %function
 7047              	_ZN6GCodes18SetAllAxesNotHomedEv:
 7048              		@ args = 0, pretend = 0, frame = 0
 7049              		@ frame_needed = 0, uses_anonymous_args = 0
 7050              		@ link register save eliminated.
 7051 0000 0023     		movs	r3, #0
 7052 0002 C0F89832 		str	r3, [r0, #664]
 7053 0006 7047     		bx	lr
 7054              		.size	_ZN6GCodes18SetAllAxesNotHomedEv, .-_ZN6GCodes18SetAllAxesNotHomedEv
 7055              		.section	.text._ZNK6GCodes23WriteConfigOverrideFileER9StringRefPKc,"ax",%progbits
 7056              		.align	2
 7057              		.global	_ZNK6GCodes23WriteConfigOverrideFileER9StringRefPKc
 7058              		.thumb
 7059              		.thumb_func
 7060              		.type	_ZNK6GCodes23WriteConfigOverrideFileER9StringRefPKc, %function
 7061              	_ZNK6GCodes23WriteConfigOverrideFileER9StringRefPKc:
 7062              		@ args = 0, pretend = 0, frame = 0
 7063              		@ frame_needed = 0, uses_anonymous_args = 0
 7064 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 7065 0004 0123     		movs	r3, #1
 7066 0006 0446     		mov	r4, r0
 7067 0008 0F46     		mov	r7, r1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 125


 7068 000a 0068     		ldr	r0, [r0]
 7069 000c 2349     		ldr	r1, .L1370
 7070 000e 1646     		mov	r6, r2
 7071 0010 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 7072 0014 0546     		mov	r5, r0
 7073 0016 0028     		cmp	r0, #0
 7074 0018 37D0     		beq	.L1368
 7075 001a 2149     		ldr	r1, .L1370+4
 7076 001c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKc
 7077 0020 88B9     		cbnz	r0, .L1369
 7078              	.L1351:
 7079 0022 2846     		mov	r0, r5
 7080 0024 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 7081              	.L1352:
 7082 0028 3246     		mov	r2, r6
 7083 002a 3846     		mov	r0, r7
 7084 002c 1D49     		ldr	r1, .L1370+8
 7085 002e FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 7086 0032 2368     		ldr	r3, [r4]
 7087 0034 1949     		ldr	r1, .L1370
 7088 0036 D3F83C08 		ldr	r0, [r3, #2108]
 7089 003a 3246     		mov	r2, r6
 7090 003c FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_
 7091 0040 0120     		movs	r0, #1
 7092 0042 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 7093              	.L1369:
 7094 0046 DFF86480 		ldr	r8, .L1370+16
 7095 004a D8F80800 		ldr	r0, [r8, #8]
 7096 004e 2946     		mov	r1, r5
 7097 0050 00F68420 		addw	r0, r0, #2692
 7098 0054 FFF7FEFF 		bl	_ZNK15DeltaParameters15WriteParametersEP9FileStore
 7099 0058 0028     		cmp	r0, #0
 7100 005a E2D0     		beq	.L1351
 7101 005c D8F80C00 		ldr	r0, [r8, #12]
 7102 0060 2946     		mov	r1, r5
 7103 0062 FFF7FEFF 		bl	_ZNK4Heat20WriteModelParametersEP9FileStore
 7104 0066 0028     		cmp	r0, #0
 7105 0068 DBD0     		beq	.L1351
 7106 006a 2068     		ldr	r0, [r4]
 7107 006c 2946     		mov	r1, r5
 7108 006e FFF7FEFF 		bl	_ZNK8Platform21WriteZProbeParametersEP9FileStore
 7109 0072 8046     		mov	r8, r0
 7110 0074 2846     		mov	r0, r5
 7111 0076 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 7112 007a 0028     		cmp	r0, #0
 7113 007c D4D0     		beq	.L1352
 7114 007e B8F1000F 		cmp	r8, #0
 7115 0082 D1D0     		beq	.L1352
 7116 0084 0020     		movs	r0, #0
 7117 0086 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 7118              	.L1368:
 7119 008a 3846     		mov	r0, r7
 7120 008c 3246     		mov	r2, r6
 7121 008e 0649     		ldr	r1, .L1370+12
 7122 0090 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 7123 0094 0120     		movs	r0, #1
 7124 0096 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 126


 7125              	.L1371:
 7126 009a 00BF     		.align	2
 7127              	.L1370:
 7128 009c DC010000 		.word	.LC20
 7129 00a0 88090000 		.word	.LC95
 7130 00a4 BC090000 		.word	.LC96
 7131 00a8 6C090000 		.word	.LC94
 7132 00ac 00000000 		.word	reprap
 7133              		.size	_ZNK6GCodes23WriteConfigOverrideFileER9StringRefPKc, .-_ZNK6GCodes23WriteConfigOverrideFileE
 7134              		.global	__aeabi_i2d
 7135              		.global	__aeabi_dcmpge
 7136              		.section	.text._ZNK6GCodes25GenerateTemperatureReportER9StringRef,"ax",%progbits
 7137              		.align	2
 7138              		.global	_ZNK6GCodes25GenerateTemperatureReportER9StringRef
 7139              		.thumb
 7140              		.thumb_func
 7141              		.type	_ZNK6GCodes25GenerateTemperatureReportER9StringRef, %function
 7142              	_ZNK6GCodes25GenerateTemperatureReportER9StringRef:
 7143              		@ args = 0, pretend = 0, frame = 0
 7144              		@ frame_needed = 0, uses_anonymous_args = 0
 7145 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 7146 0004 2D4E     		ldr	r6, .L1390
 7147 0006 0D46     		mov	r5, r1
 7148 0008 F368     		ldr	r3, [r6, #12]
 7149 000a 2D49     		ldr	r1, .L1390+4
 7150 000c 93F82E80 		ldrb	r8, [r3, #46]	@ zero_extendqisi2
 7151 0010 93F82F70 		ldrb	r7, [r3, #47]	@ zero_extendqisi2
 7152 0014 2846     		mov	r0, r5
 7153 0016 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 7154 001a 4FFA88F8 		sxtb	r8, r8
 7155 001e 7FB2     		sxtb	r7, r7
 7156 0020 B146     		mov	r9, r6
 7157 0022 4FF0000A 		mov	r10, #0
 7158              	.L1377:
 7159 0026 4FFA8AF4 		sxtb	r4, r10
 7160 002a A045     		cmp	r8, r4
 7161 002c 0AF1010A 		add	r10, r10, #1
 7162 0030 15D0     		beq	.L1374
 7163 0032 A742     		cmp	r7, r4
 7164 0034 13D0     		beq	.L1374
 7165 0036 F068     		ldr	r0, [r6, #12]
 7166 0038 2146     		mov	r1, r4
 7167 003a FFF7FEFF 		bl	_ZNK4Heat9GetStatusEa
 7168 003e 70B1     		cbz	r0, .L1374
 7169 0040 0328     		cmp	r0, #3
 7170 0042 2146     		mov	r1, r4
 7171 0044 0BD0     		beq	.L1374
 7172 0046 D9F80C00 		ldr	r0, [r9, #12]
 7173 004a FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 7174 004e FFF7FEFF 		bl	__aeabi_f2d
 7175 0052 0246     		mov	r2, r0
 7176 0054 0B46     		mov	r3, r1
 7177 0056 2846     		mov	r0, r5
 7178 0058 1A49     		ldr	r1, .L1390+8
 7179 005a FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 7180              	.L1374:
 7181 005e BAF1080F 		cmp	r10, #8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 127


 7182 0062 E0D1     		bne	.L1377
 7183 0064 B8F1000F 		cmp	r8, #0
 7184 0068 23DB     		blt	.L1378
 7185 006a 4146     		mov	r1, r8
 7186 006c F068     		ldr	r0, [r6, #12]
 7187 006e FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 7188 0072 FFF7FEFF 		bl	__aeabi_f2d
 7189 0076 0246     		mov	r2, r0
 7190 0078 0B46     		mov	r3, r1
 7191 007a 2846     		mov	r0, r5
 7192 007c 1249     		ldr	r1, .L1390+12
 7193 007e FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 7194              	.L1379:
 7195 0082 3846     		mov	r0, r7
 7196 0084 FFF7FEFF 		bl	__aeabi_i2d
 7197 0088 0022     		movs	r2, #0
 7198 008a 0023     		movs	r3, #0
 7199 008c FFF7FEFF 		bl	__aeabi_dcmpge
 7200 0090 68B1     		cbz	r0, .L1389
 7201 0092 3946     		mov	r1, r7
 7202 0094 F068     		ldr	r0, [r6, #12]
 7203 0096 FFF7FEFF 		bl	_ZNK4Heat14GetTemperatureEa
 7204 009a FFF7FEFF 		bl	__aeabi_f2d
 7205 009e 0246     		mov	r2, r0
 7206 00a0 0B46     		mov	r3, r1
 7207 00a2 2846     		mov	r0, r5
 7208 00a4 0949     		ldr	r1, .L1390+16
 7209 00a6 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 7210 00aa FFF7FEBF 		b	_ZN9StringRef4catfEPKcz
 7211              	.L1389:
 7212 00ae BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 7213              	.L1378:
 7214 00b2 2846     		mov	r0, r5
 7215 00b4 0649     		ldr	r1, .L1390+20
 7216 00b6 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 7217 00ba E2E7     		b	.L1379
 7218              	.L1391:
 7219              		.align	2
 7220              	.L1390:
 7221 00bc 00000000 		.word	reprap
 7222 00c0 D4090000 		.word	.LC97
 7223 00c4 D8090000 		.word	.LC98
 7224 00c8 E0090000 		.word	.LC99
 7225 00cc F0090000 		.word	.LC101
 7226 00d0 E8090000 		.word	.LC100
 7227              		.size	_ZNK6GCodes25GenerateTemperatureReportER9StringRef, .-_ZNK6GCodes25GenerateTemperatureReport
 7228              		.section	.text._ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource,"ax",%progbits
 7229              		.align	2
 7230              		.global	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource
 7231              		.thumb
 7232              		.thumb_func
 7233              		.type	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource, %function
 7234              	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource:
 7235              		@ args = 0, pretend = 0, frame = 0
 7236              		@ frame_needed = 0, uses_anonymous_args = 0
 7237 0000 10B5     		push	{r4, lr}
 7238 0002 0529     		cmp	r1, #5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 128


 7239 0004 1ED8     		bhi	.L1399
 7240 0006 DFE801F0 		tbb	[pc, r1]
 7241              	.L1395:
 7242 000a 16       		.byte	(.L1394-.L1395)/2
 7243 000b 16       		.byte	(.L1394-.L1395)/2
 7244 000c 0E       		.byte	(.L1396-.L1395)/2
 7245 000d 0E       		.byte	(.L1396-.L1395)/2
 7246 000e 0E       		.byte	(.L1396-.L1395)/2
 7247 000f 03       		.byte	(.L1397-.L1395)/2
 7248              		.align	1
 7249              	.L1397:
 7250 0010 0D48     		ldr	r0, .L1403
 7251 0012 FFF7FEFF 		bl	_ZN6RepRap17GetConfigResponseEv
 7252 0016 0446     		mov	r4, r0
 7253              	.L1398:
 7254 0018 1CB1     		cbz	r4, .L1393
 7255 001a 2046     		mov	r0, r4
 7256 001c 0A21     		movs	r1, #10
 7257 001e FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 7258              	.L1393:
 7259 0022 2046     		mov	r0, r4
 7260 0024 10BD     		pop	{r4, pc}
 7261              	.L1396:
 7262 0026 0139     		subs	r1, r1, #1
 7263 0028 C9B2     		uxtb	r1, r1
 7264 002a 1A46     		mov	r2, r3
 7265 002c 0648     		ldr	r0, .L1403
 7266 002e FFF7FEFF 		bl	_ZN6RepRap17GetStatusResponseEh14ResponseSource
 7267 0032 0446     		mov	r4, r0
 7268 0034 F0E7     		b	.L1398
 7269              	.L1394:
 7270 0036 0231     		adds	r1, r1, #2
 7271 0038 C9B2     		uxtb	r1, r1
 7272 003a 0348     		ldr	r0, .L1403
 7273 003c FFF7FEFF 		bl	_ZN6RepRap23GetLegacyStatusResponseEhi
 7274 0040 0446     		mov	r4, r0
 7275 0042 E9E7     		b	.L1398
 7276              	.L1399:
 7277 0044 0024     		movs	r4, #0
 7278 0046 ECE7     		b	.L1393
 7279              	.L1404:
 7280              		.align	2
 7281              	.L1403:
 7282 0048 00000000 		.word	reprap
 7283              		.size	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource, .-_ZNK6GCodes26GenerateJsonStatu
 7284              		.section	.text._ZNK6GCodes14CheckReportDueER11GCodeBufferR9StringRef,"ax",%progbits
 7285              		.align	2
 7286              		.global	_ZNK6GCodes14CheckReportDueER11GCodeBufferR9StringRef
 7287              		.thumb
 7288              		.thumb_func
 7289              		.type	_ZNK6GCodes14CheckReportDueER11GCodeBufferR9StringRef, %function
 7290              	_ZNK6GCodes14CheckReportDueER11GCodeBufferR9StringRef:
 7291              		@ args = 0, pretend = 0, frame = 0
 7292              		@ frame_needed = 0, uses_anonymous_args = 0
 7293 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 7294 0002 0C46     		mov	r4, r1
 7295 0004 0646     		mov	r6, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 129


 7296 0006 1746     		mov	r7, r2
 7297 0008 FFF7FEFF 		bl	millis
 7298 000c 2379     		ldrb	r3, [r4, #4]	@ zero_extendqisi2
 7299 000e 0546     		mov	r5, r0
 7300 0010 2BB1     		cbz	r3, .L1406
 7301 0012 2368     		ldr	r3, [r4]
 7302 0014 C31A     		subs	r3, r0, r3
 7303 0016 B3F57A7F 		cmp	r3, #1000
 7304 001a 04D2     		bcs	.L1416
 7305 001c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 7306              	.L1406:
 7307 001e 0123     		movs	r3, #1
 7308 0020 2060     		str	r0, [r4]
 7309 0022 2371     		strb	r3, [r4, #4]
 7310 0024 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 7311              	.L1416:
 7312 0026 3068     		ldr	r0, [r6]
 7313 0028 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 7314 002c 0228     		cmp	r0, #2
 7315 002e 11D0     		beq	.L1417
 7316              	.L1408:
 7317 0030 96F9D433 		ldrsb	r3, [r6, #980]
 7318 0034 002B     		cmp	r3, #0
 7319 0036 0BDB     		blt	.L1411
 7320 0038 0021     		movs	r1, #0
 7321 003a 3046     		mov	r0, r6
 7322 003c 4FF0FF32 		mov	r2, #-1
 7323 0040 0123     		movs	r3, #1
 7324 0042 FFF7FEFF 		bl	_ZNK6GCodes26GenerateJsonStatusResponseEii14ResponseSource
 7325 0046 0146     		mov	r1, r0
 7326 0048 10B1     		cbz	r0, .L1411
 7327 004a 3068     		ldr	r0, [r6]
 7328 004c FFF7FEFF 		bl	_ZN8Platform14AppendAuxReplyEP12OutputBuffer
 7329              	.L1411:
 7330 0050 2560     		str	r5, [r4]
 7331 0052 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 7332              	.L1417:
 7333 0054 736C     		ldr	r3, [r6, #68]
 7334 0056 1B68     		ldr	r3, [r3]
 7335 0058 A342     		cmp	r3, r4
 7336 005a 03D0     		beq	.L1409
 7337 005c F36B     		ldr	r3, [r6, #60]
 7338 005e 1B68     		ldr	r3, [r3]
 7339 0060 A342     		cmp	r3, r4
 7340 0062 E5D1     		bne	.L1408
 7341              	.L1409:
 7342 0064 3046     		mov	r0, r6
 7343 0066 3946     		mov	r1, r7
 7344 0068 FFF7FEFF 		bl	_ZNK6GCodes25GenerateTemperatureReportER9StringRef
 7345 006c 3846     		mov	r0, r7
 7346 006e 0A21     		movs	r1, #10
 7347 0070 FFF7FEFF 		bl	_ZN9StringRef3catEc
 7348 0074 3A68     		ldr	r2, [r7]
 7349 0076 3068     		ldr	r0, [r6]
 7350 0078 0221     		movs	r1, #2
 7351 007a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 7352 007e D7E7     		b	.L1408
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 130


 7353              		.size	_ZNK6GCodes14CheckReportDueER11GCodeBufferR9StringRef, .-_ZNK6GCodes14CheckReportDueER11GCod
 7354              		.section	.text._ZN6GCodes12LockResourceERK11GCodeBufferj,"ax",%progbits
 7355              		.align	2
 7356              		.global	_ZN6GCodes12LockResourceERK11GCodeBufferj
 7357              		.thumb
 7358              		.thumb_func
 7359              		.type	_ZN6GCodes12LockResourceERK11GCodeBufferj, %function
 7360              	_ZN6GCodes12LockResourceERK11GCodeBufferj:
 7361              		@ args = 0, pretend = 0, frame = 0
 7362              		@ frame_needed = 0, uses_anonymous_args = 0
 7363              		@ link register save eliminated.
 7364 0000 00EB8200 		add	r0, r0, r2, lsl #2
 7365 0004 836D     		ldr	r3, [r0, #88]
 7366 0006 8B42     		cmp	r3, r1
 7367 0008 0BD0     		beq	.L1420
 7368 000a 0BB1     		cbz	r3, .L1422
 7369 000c 0020     		movs	r0, #0
 7370 000e 7047     		bx	lr
 7371              	.L1422:
 7372 0010 8165     		str	r1, [r0, #88]
 7373 0012 8B68     		ldr	r3, [r1, #8]
 7374 0014 0120     		movs	r0, #1
 7375 0016 D968     		ldr	r1, [r3, #12]
 7376 0018 00FA02F2 		lsl	r2, r0, r2
 7377 001c 1143     		orrs	r1, r1, r2
 7378 001e D960     		str	r1, [r3, #12]
 7379 0020 7047     		bx	lr
 7380              	.L1420:
 7381 0022 0120     		movs	r0, #1
 7382 0024 7047     		bx	lr
 7383              		.size	_ZN6GCodes12LockResourceERK11GCodeBufferj, .-_ZN6GCodes12LockResourceERK11GCodeBufferj
 7384 0026 00BF     		.section	.text._ZN6GCodes10LockHeaterERK11GCodeBufferi,"ax",%progbits
 7385              		.align	2
 7386              		.global	_ZN6GCodes10LockHeaterERK11GCodeBufferi
 7387              		.thumb
 7388              		.thumb_func
 7389              		.type	_ZN6GCodes10LockHeaterERK11GCodeBufferi, %function
 7390              	_ZN6GCodes10LockHeaterERK11GCodeBufferi:
 7391              		@ args = 0, pretend = 0, frame = 0
 7392              		@ frame_needed = 0, uses_anonymous_args = 0
 7393              		@ link register save eliminated.
 7394 0000 072A     		cmp	r2, #7
 7395 0002 08D8     		bhi	.L1426
 7396 0004 0232     		adds	r2, r2, #2
 7397 0006 00EB8200 		add	r0, r0, r2, lsl #2
 7398 000a 836D     		ldr	r3, [r0, #88]
 7399 000c 9942     		cmp	r1, r3
 7400 000e 02D0     		beq	.L1426
 7401 0010 1BB1     		cbz	r3, .L1428
 7402 0012 0020     		movs	r0, #0
 7403 0014 7047     		bx	lr
 7404              	.L1426:
 7405 0016 0120     		movs	r0, #1
 7406 0018 7047     		bx	lr
 7407              	.L1428:
 7408 001a 8165     		str	r1, [r0, #88]
 7409 001c 8B68     		ldr	r3, [r1, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 131


 7410 001e 0120     		movs	r0, #1
 7411 0020 D968     		ldr	r1, [r3, #12]
 7412 0022 00FA02F2 		lsl	r2, r0, r2
 7413 0026 1143     		orrs	r1, r1, r2
 7414 0028 D960     		str	r1, [r3, #12]
 7415 002a 7047     		bx	lr
 7416              		.size	_ZN6GCodes10LockHeaterERK11GCodeBufferi, .-_ZN6GCodes10LockHeaterERK11GCodeBufferi
 7417              		.section	.text._ZN6GCodes7LockFanERK11GCodeBufferi,"ax",%progbits
 7418              		.align	2
 7419              		.global	_ZN6GCodes7LockFanERK11GCodeBufferi
 7420              		.thumb
 7421              		.thumb_func
 7422              		.type	_ZN6GCodes7LockFanERK11GCodeBufferi, %function
 7423              	_ZN6GCodes7LockFanERK11GCodeBufferi:
 7424              		@ args = 0, pretend = 0, frame = 0
 7425              		@ frame_needed = 0, uses_anonymous_args = 0
 7426              		@ link register save eliminated.
 7427 0000 072A     		cmp	r2, #7
 7428 0002 08D8     		bhi	.L1432
 7429 0004 0A32     		adds	r2, r2, #10
 7430 0006 00EB8200 		add	r0, r0, r2, lsl #2
 7431 000a 836D     		ldr	r3, [r0, #88]
 7432 000c 9942     		cmp	r1, r3
 7433 000e 02D0     		beq	.L1432
 7434 0010 1BB1     		cbz	r3, .L1434
 7435 0012 0020     		movs	r0, #0
 7436 0014 7047     		bx	lr
 7437              	.L1432:
 7438 0016 0120     		movs	r0, #1
 7439 0018 7047     		bx	lr
 7440              	.L1434:
 7441 001a 8165     		str	r1, [r0, #88]
 7442 001c 8B68     		ldr	r3, [r1, #8]
 7443 001e 0120     		movs	r0, #1
 7444 0020 D968     		ldr	r1, [r3, #12]
 7445 0022 00FA02F2 		lsl	r2, r0, r2
 7446 0026 1143     		orrs	r1, r1, r2
 7447 0028 D960     		str	r1, [r3, #12]
 7448 002a 7047     		bx	lr
 7449              		.size	_ZN6GCodes7LockFanERK11GCodeBufferi, .-_ZN6GCodes7LockFanERK11GCodeBufferi
 7450              		.section	.text._ZN6GCodes14LockFileSystemERK11GCodeBuffer,"ax",%progbits
 7451              		.align	2
 7452              		.global	_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 7453              		.thumb
 7454              		.thumb_func
 7455              		.type	_ZN6GCodes14LockFileSystemERK11GCodeBuffer, %function
 7456              	_ZN6GCodes14LockFileSystemERK11GCodeBuffer:
 7457              		@ args = 0, pretend = 0, frame = 0
 7458              		@ frame_needed = 0, uses_anonymous_args = 0
 7459              		@ link register save eliminated.
 7460 0000 C36D     		ldr	r3, [r0, #92]
 7461 0002 9942     		cmp	r1, r3
 7462 0004 02D0     		beq	.L1437
 7463 0006 1BB1     		cbz	r3, .L1439
 7464 0008 0020     		movs	r0, #0
 7465 000a 7047     		bx	lr
 7466              	.L1437:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 132


 7467 000c 0120     		movs	r0, #1
 7468 000e 7047     		bx	lr
 7469              	.L1439:
 7470 0010 C165     		str	r1, [r0, #92]
 7471 0012 8B68     		ldr	r3, [r1, #8]
 7472 0014 DA68     		ldr	r2, [r3, #12]
 7473 0016 42F00202 		orr	r2, r2, #2
 7474 001a DA60     		str	r2, [r3, #12]
 7475 001c 0120     		movs	r0, #1
 7476 001e 7047     		bx	lr
 7477              		.size	_ZN6GCodes14LockFileSystemERK11GCodeBuffer, .-_ZN6GCodes14LockFileSystemERK11GCodeBuffer
 7478              		.section	.text._ZN6GCodes12LockMovementERK11GCodeBuffer,"ax",%progbits
 7479              		.align	2
 7480              		.global	_ZN6GCodes12LockMovementERK11GCodeBuffer
 7481              		.thumb
 7482              		.thumb_func
 7483              		.type	_ZN6GCodes12LockMovementERK11GCodeBuffer, %function
 7484              	_ZN6GCodes12LockMovementERK11GCodeBuffer:
 7485              		@ args = 0, pretend = 0, frame = 0
 7486              		@ frame_needed = 0, uses_anonymous_args = 0
 7487              		@ link register save eliminated.
 7488 0000 836D     		ldr	r3, [r0, #88]
 7489 0002 9942     		cmp	r1, r3
 7490 0004 02D0     		beq	.L1442
 7491 0006 1BB1     		cbz	r3, .L1444
 7492 0008 0020     		movs	r0, #0
 7493 000a 7047     		bx	lr
 7494              	.L1442:
 7495 000c 0120     		movs	r0, #1
 7496 000e 7047     		bx	lr
 7497              	.L1444:
 7498 0010 8165     		str	r1, [r0, #88]
 7499 0012 8B68     		ldr	r3, [r1, #8]
 7500 0014 DA68     		ldr	r2, [r3, #12]
 7501 0016 42F00102 		orr	r2, r2, #1
 7502 001a DA60     		str	r2, [r3, #12]
 7503 001c 0120     		movs	r0, #1
 7504 001e 7047     		bx	lr
 7505              		.size	_ZN6GCodes12LockMovementERK11GCodeBuffer, .-_ZN6GCodes12LockMovementERK11GCodeBuffer
 7506              		.section	.text._ZN6GCodes9UnlockAllERK11GCodeBuffer,"ax",%progbits
 7507              		.align	2
 7508              		.global	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 7509              		.thumb
 7510              		.thumb_func
 7511              		.type	_ZN6GCodes9UnlockAllERK11GCodeBuffer, %function
 7512              	_ZN6GCodes9UnlockAllERK11GCodeBuffer:
 7513              		@ args = 0, pretend = 0, frame = 0
 7514              		@ frame_needed = 0, uses_anonymous_args = 0
 7515              		@ link register save eliminated.
 7516 0000 8B68     		ldr	r3, [r1, #8]
 7517 0002 F0B4     		push	{r4, r5, r6, r7}
 7518 0004 1C68     		ldr	r4, [r3]
 7519 0006 04B1     		cbz	r4, .L1446
 7520 0008 E468     		ldr	r4, [r4, #12]
 7521              	.L1446:
 7522 000a 0023     		movs	r3, #0
 7523 000c 0126     		movs	r6, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 133


 7524 000e 04E0     		b	.L1449
 7525              	.L1447:
 7526 0010 0133     		adds	r3, r3, #1
 7527 0012 122B     		cmp	r3, #18
 7528 0014 00F10400 		add	r0, r0, #4
 7529 0018 12D0     		beq	.L1452
 7530              	.L1449:
 7531 001a 826D     		ldr	r2, [r0, #88]
 7532 001c 8A42     		cmp	r2, r1
 7533 001e F7D1     		bne	.L1447
 7534 0020 06FA03F2 		lsl	r2, r6, r3
 7535 0024 12EA0405 		ands	r5, r2, r4
 7536 0028 F2D1     		bne	.L1447
 7537 002a 8565     		str	r5, [r0, #88]
 7538 002c 8D68     		ldr	r5, [r1, #8]
 7539 002e EF68     		ldr	r7, [r5, #12]
 7540 0030 0133     		adds	r3, r3, #1
 7541 0032 27EA0202 		bic	r2, r7, r2
 7542 0036 122B     		cmp	r3, #18
 7543 0038 EA60     		str	r2, [r5, #12]
 7544 003a 00F10400 		add	r0, r0, #4
 7545 003e ECD1     		bne	.L1449
 7546              	.L1452:
 7547 0040 F0BC     		pop	{r4, r5, r6, r7}
 7548 0042 7047     		bx	lr
 7549              		.size	_ZN6GCodes9UnlockAllERK11GCodeBuffer, .-_ZN6GCodes9UnlockAllERK11GCodeBuffer
 7550              		.section	.text._ZN6GCodes11DoFilePrintER11GCodeBufferR9StringRef,"ax",%progbits
 7551              		.align	2
 7552              		.global	_ZN6GCodes11DoFilePrintER11GCodeBufferR9StringRef
 7553              		.thumb
 7554              		.thumb_func
 7555              		.type	_ZN6GCodes11DoFilePrintER11GCodeBufferR9StringRef, %function
 7556              	_ZN6GCodes11DoFilePrintER11GCodeBufferR9StringRef:
 7557              		@ args = 0, pretend = 0, frame = 0
 7558              		@ frame_needed = 0, uses_anonymous_args = 0
 7559 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 7560 0004 8E68     		ldr	r6, [r1, #8]
 7561 0006 0C46     		mov	r4, r1
 7562 0008 0546     		mov	r5, r0
 7563 000a 06F10801 		add	r1, r6, #8
 7564 000e 0069     		ldr	r0, [r0, #16]
 7565 0010 1746     		mov	r7, r2
 7566 0012 FFF7FEFF 		bl	_ZN14FileGCodeInput12ReadFromFileER8FileData
 7567 0016 0028     		cmp	r0, #0
 7568 0018 5AD1     		bne	.L1490
 7569 001a 636F     		ldr	r3, [r4, #116]
 7570 001c 002B     		cmp	r3, #0
 7571 001e 38D1     		bne	.L1491
 7572              	.L1458:
 7573 0020 2046     		mov	r0, r4
 7574 0022 FFF7FEFF 		bl	_ZN11GCodeBuffer4InitEv
 7575 0026 A368     		ldr	r3, [r4, #8]
 7576 0028 1F68     		ldr	r7, [r3]
 7577 002a 002F     		cmp	r7, #0
 7578 002c 59D0     		beq	.L1492
 7579 002e 2869     		ldr	r0, [r5, #16]
 7580 0030 0368     		ldr	r3, [r0]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 134


 7581 0032 1B68     		ldr	r3, [r3]
 7582 0034 9847     		blx	r3
 7583 0036 B068     		ldr	r0, [r6, #8]
 7584 0038 18B1     		cbz	r0, .L1463
 7585 003a FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 7586 003e 0023     		movs	r3, #0
 7587 0040 B360     		str	r3, [r6, #8]
 7588              	.L1463:
 7589 0042 95F8A230 		ldrb	r3, [r5, #162]	@ zero_extendqisi2
 7590 0046 C3B1     		cbz	r3, .L1464
 7591 0048 0022     		movs	r2, #0
 7592              	.L1466:
 7593 004a AB18     		adds	r3, r5, r2
 7594 004c A168     		ldr	r1, [r4, #8]
 7595 004e DB69     		ldr	r3, [r3, #28]
 7596 0050 4E7C     		ldrb	r6, [r1, #17]	@ zero_extendqisi2
 7597 0052 9B68     		ldr	r3, [r3, #8]
 7598 0054 4F68     		ldr	r7, [r1, #4]	@ float
 7599 0056 587C     		ldrb	r0, [r3, #17]	@ zero_extendqisi2
 7600 0058 66F30000 		bfi	r0, r6, #0, #1
 7601 005c 5874     		strb	r0, [r3, #17]
 7602 005e 487C     		ldrb	r0, [r1, #17]	@ zero_extendqisi2
 7603 0060 597C     		ldrb	r1, [r3, #17]	@ zero_extendqisi2
 7604 0062 5F60     		str	r7, [r3, #4]	@ float
 7605 0064 C0F34000 		ubfx	r0, r0, #1, #1
 7606 0068 0432     		adds	r2, r2, #4
 7607 006a 60F34101 		bfi	r1, r0, #1, #1
 7608 006e 1C2A     		cmp	r2, #28
 7609 0070 5974     		strb	r1, [r3, #17]
 7610 0072 EAD1     		bne	.L1466
 7611 0074 0023     		movs	r3, #0
 7612 0076 85F8A230 		strb	r3, [r5, #162]
 7613              	.L1464:
 7614 007a 2846     		mov	r0, r5
 7615 007c 2146     		mov	r1, r4
 7616 007e FFF7FEFF 		bl	_ZN6GCodes3PopER11GCodeBuffer
 7617 0082 2046     		mov	r0, r4
 7618 0084 FFF7FEFF 		bl	_ZN11GCodeBuffer4InitEv
 7619 0088 A368     		ldr	r3, [r4, #8]
 7620 008a 1E7C     		ldrb	r6, [r3, #16]	@ zero_extendqisi2
 7621 008c A6B1     		cbz	r6, .L1493
 7622              	.L1453:
 7623 008e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 7624              	.L1491:
 7625 0092 2046     		mov	r0, r4
 7626 0094 0A21     		movs	r1, #10
 7627 0096 FFF7FEFF 		bl	_ZN11GCodeBuffer3PutEc
 7628 009a 0028     		cmp	r0, #0
 7629 009c C0D0     		beq	.L1458
 7630              	.L1488:
 7631 009e 2846     		mov	r0, r5
 7632 00a0 3A46     		mov	r2, r7
 7633 00a2 2146     		mov	r1, r4
 7634 00a4 FFF7FEFF 		bl	_ZN6GCodes9ActOnCodeER11GCodeBufferR9StringRef
 7635 00a8 0028     		cmp	r0, #0
 7636 00aa 0CBF     		ite	eq
 7637 00ac 0223     		moveq	r3, #2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 135


 7638 00ae 0023     		movne	r3, #0
 7639 00b0 C4F88030 		str	r3, [r4, #128]
 7640 00b4 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 7641              	.L1493:
 7642 00b8 2846     		mov	r0, r5
 7643 00ba 2146     		mov	r1, r4
 7644 00bc FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 7645 00c0 2846     		mov	r0, r5
 7646 00c2 2146     		mov	r1, r4
 7647 00c4 3246     		mov	r2, r6
 7648 00c6 194B     		ldr	r3, .L1494
 7649 00c8 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 7650 00cc FFF7FEBF 		b	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 7651              	.L1490:
 7652 00d0 2869     		ldr	r0, [r5, #16]
 7653 00d2 0368     		ldr	r3, [r0]
 7654 00d4 2146     		mov	r1, r4
 7655 00d6 5B68     		ldr	r3, [r3, #4]
 7656 00d8 9847     		blx	r3
 7657 00da 0028     		cmp	r0, #0
 7658 00dc DFD1     		bne	.L1488
 7659 00de BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 7660              	.L1492:
 7661 00e2 2846     		mov	r0, r5
 7662 00e4 2146     		mov	r1, r4
 7663 00e6 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 7664 00ea 0028     		cmp	r0, #0
 7665 00ec CFD0     		beq	.L1453
 7666 00ee 2869     		ldr	r0, [r5, #16]
 7667 00f0 0368     		ldr	r3, [r0]
 7668 00f2 1B68     		ldr	r3, [r3]
 7669 00f4 9847     		blx	r3
 7670 00f6 B068     		ldr	r0, [r6, #8]
 7671 00f8 10B1     		cbz	r0, .L1462
 7672 00fa FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 7673 00fe B760     		str	r7, [r6, #8]
 7674              	.L1462:
 7675 0100 2146     		mov	r1, r4
 7676 0102 2846     		mov	r0, r5
 7677 0104 FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 7678 0108 094B     		ldr	r3, .L1494+4
 7679 010a D869     		ldr	r0, [r3, #28]
 7680 010c FFF7FEFF 		bl	_ZN12PrintMonitor12StoppedPrintEv
 7681 0110 2868     		ldr	r0, [r5]
 7682 0112 FFF7FEFF 		bl	_ZNK8Platform9EmulatingEv
 7683 0116 0228     		cmp	r0, #2
 7684 0118 B9D1     		bne	.L1453
 7685 011a 2846     		mov	r0, r5
 7686 011c 2146     		mov	r1, r4
 7687 011e 0022     		movs	r2, #0
 7688 0120 044B     		ldr	r3, .L1494+8
 7689 0122 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 7690 0126 FFF7FEBF 		b	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 7691              	.L1495:
 7692 012a 00BF     		.align	2
 7693              	.L1494:
 7694 012c E4060000 		.word	.LC71
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 136


 7695 0130 00000000 		.word	reprap
 7696 0134 F8090000 		.word	.LC102
 7697              		.size	_ZN6GCodes11DoFilePrintER11GCodeBufferR9StringRef, .-_ZN6GCodes11DoFilePrintER11GCodeBufferR
 7698              		.section	.text._ZN6GCodes14StartNextGCodeER11GCodeBufferR9StringRef,"ax",%progbits
 7699              		.align	2
 7700              		.global	_ZN6GCodes14StartNextGCodeER11GCodeBufferR9StringRef
 7701              		.thumb
 7702              		.thumb_func
 7703              		.type	_ZN6GCodes14StartNextGCodeER11GCodeBufferR9StringRef, %function
 7704              	_ZN6GCodes14StartNextGCodeER11GCodeBufferR9StringRef:
 7705              		@ args = 0, pretend = 0, frame = 0
 7706              		@ frame_needed = 0, uses_anonymous_args = 0
 7707 0000 70B5     		push	{r4, r5, r6, lr}
 7708 0002 0C46     		mov	r4, r1
 7709 0004 1646     		mov	r6, r2
 7710 0006 0546     		mov	r5, r0
 7711 0008 FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 7712 000c 18B1     		cbz	r0, .L1497
 7713 000e 2B6C     		ldr	r3, [r5, #64]
 7714 0010 1968     		ldr	r1, [r3]
 7715 0012 A142     		cmp	r1, r4
 7716 0014 39D0     		beq	.L1520
 7717              	.L1497:
 7718 0016 D4F88030 		ldr	r3, [r4, #128]
 7719 001a 013B     		subs	r3, r3, #1
 7720 001c 012B     		cmp	r3, #1
 7721 001e 28D9     		bls	.L1521
 7722 0020 A368     		ldr	r3, [r4, #8]
 7723 0022 9B68     		ldr	r3, [r3, #8]
 7724 0024 33B1     		cbz	r3, .L1522
 7725 0026 2846     		mov	r0, r5
 7726 0028 2146     		mov	r1, r4
 7727 002a 3246     		mov	r2, r6
 7728 002c BDE87040 		pop	{r4, r5, r6, lr}
 7729 0030 FFF7FEBF 		b	_ZN6GCodes11DoFilePrintER11GCodeBufferR9StringRef
 7730              	.L1522:
 7731 0034 2B6D     		ldr	r3, [r5, #80]
 7732 0036 1B68     		ldr	r3, [r3]
 7733 0038 A342     		cmp	r3, r4
 7734 003a 31D0     		beq	.L1523
 7735 003c AB6B     		ldr	r3, [r5, #56]
 7736 003e 1B68     		ldr	r3, [r3]
 7737 0040 A342     		cmp	r3, r4
 7738 0042 34D0     		beq	.L1524
 7739 0044 EB6B     		ldr	r3, [r5, #60]
 7740 0046 1B68     		ldr	r3, [r3]
 7741 0048 A342     		cmp	r3, r4
 7742 004a 23D0     		beq	.L1525
 7743 004c 6B6C     		ldr	r3, [r5, #68]
 7744 004e 1B68     		ldr	r3, [r3]
 7745 0050 A342     		cmp	r3, r4
 7746 0052 32D0     		beq	.L1526
 7747 0054 AB6C     		ldr	r3, [r5, #72]
 7748 0056 1B68     		ldr	r3, [r3]
 7749 0058 A342     		cmp	r3, r4
 7750 005a 15D1     		bne	.L1496
 7751 005c A869     		ldr	r0, [r5, #24]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 137


 7752 005e 0368     		ldr	r3, [r0]
 7753 0060 2146     		mov	r1, r4
 7754 0062 5B68     		ldr	r3, [r3, #4]
 7755 0064 9847     		blx	r3
 7756 0066 78B1     		cbz	r0, .L1496
 7757 0068 2B68     		ldr	r3, [r5]
 7758 006a 0122     		movs	r2, #1
 7759 006c 83F83028 		strb	r2, [r3, #2096]
 7760 0070 70BD     		pop	{r4, r5, r6, pc}
 7761              	.L1521:
 7762 0072 2846     		mov	r0, r5
 7763 0074 3246     		mov	r2, r6
 7764 0076 2146     		mov	r1, r4
 7765 0078 FFF7FEFF 		bl	_ZN6GCodes9ActOnCodeER11GCodeBufferR9StringRef
 7766 007c 0028     		cmp	r0, #0
 7767 007e 0CBF     		ite	eq
 7768 0080 0223     		moveq	r3, #2
 7769 0082 0023     		movne	r3, #0
 7770 0084 C4F88030 		str	r3, [r4, #128]
 7771              	.L1496:
 7772 0088 70BD     		pop	{r4, r5, r6, pc}
 7773              	.L1520:
 7774 008a 2846     		mov	r0, r5
 7775 008c BDE87040 		pop	{r4, r5, r6, lr}
 7776 0090 FFF7FEBF 		b	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 7777              	.L1525:
 7778 0094 E868     		ldr	r0, [r5, #12]
 7779 0096 0368     		ldr	r3, [r0]
 7780 0098 2146     		mov	r1, r4
 7781 009a 5B68     		ldr	r3, [r3, #4]
 7782 009c 9847     		blx	r3
 7783 009e 70BD     		pop	{r4, r5, r6, pc}
 7784              	.L1523:
 7785 00a0 D5F86003 		ldr	r0, [r5, #864]
 7786 00a4 2146     		mov	r1, r4
 7787 00a6 BDE87040 		pop	{r4, r5, r6, lr}
 7788 00aa FFF7FEBF 		b	_ZN10GCodeQueue10FillBufferEP11GCodeBuffer
 7789              	.L1524:
 7790 00ae A868     		ldr	r0, [r5, #8]
 7791 00b0 0368     		ldr	r3, [r0]
 7792 00b2 2146     		mov	r1, r4
 7793 00b4 5B68     		ldr	r3, [r3, #4]
 7794 00b6 9847     		blx	r3
 7795 00b8 70BD     		pop	{r4, r5, r6, pc}
 7796              	.L1526:
 7797 00ba 6869     		ldr	r0, [r5, #20]
 7798 00bc 0368     		ldr	r3, [r0]
 7799 00be 2146     		mov	r1, r4
 7800 00c0 5B68     		ldr	r3, [r3, #4]
 7801 00c2 9847     		blx	r3
 7802 00c4 70BD     		pop	{r4, r5, r6, pc}
 7803              		.size	_ZN6GCodes14StartNextGCodeER11GCodeBufferR9StringRef, .-_ZN6GCodes14StartNextGCodeER11GCodeB
 7804 00c6 00BF     		.section	.text._ZN6GCodes4SpinEv,"ax",%progbits
 7805              		.align	2
 7806              		.global	_ZN6GCodes4SpinEv
 7807              		.thumb
 7808              		.thumb_func
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 138


 7809              		.type	_ZN6GCodes4SpinEv, %function
 7810              	_ZN6GCodes4SpinEv:
 7811              		@ args = 0, pretend = 0, frame = 2064
 7812              		@ frame_needed = 0, uses_anonymous_args = 0
 7813 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 7814 0004 2DED028B 		fstmfdd	sp!, {d8}
 7815 0008 90F8A030 		ldrb	r3, [r0, #160]	@ zero_extendqisi2
 7816 000c ADF6240D 		subw	sp, sp, #2084
 7817 0010 0446     		mov	r4, r0
 7818 0012 2BB9     		cbnz	r3, .L1685
 7819 0014 0DF6240D 		addw	sp, sp, #2084
 7820              		@ sp needed
 7821 0018 BDEC028B 		fldmfdd	sp!, {d8}
 7822 001c BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 7823              	.L1685:
 7824 0020 FFF7FEFF 		bl	_ZN6GCodes13CheckTriggersEv
 7825 0024 636D     		ldr	r3, [r4, #84]
 7826 0026 04EB8302 		add	r2, r4, r3, lsl #2
 7827 002a 4FF40067 		mov	r7, #2048
 7828 002e D569     		ldr	r5, [r2, #28]
 7829 0030 0797     		str	r7, [sp, #28]
 7830 0032 AE68     		ldr	r6, [r5, #8]
 7831 0034 317C     		ldrb	r1, [r6, #16]	@ zero_extendqisi2
 7832 0036 08AA     		add	r2, sp, #32
 7833 0038 0020     		movs	r0, #0
 7834 003a 0692     		str	r2, [sp, #24]
 7835 003c 8DF82000 		strb	r0, [sp, #32]
 7836 0040 F1B1     		cbz	r1, .L1686
 7837 0042 4A1E     		subs	r2, r1, #1
 7838 0044 182A     		cmp	r2, #24
 7839 0046 00F2D982 		bhi	.L1531
 7840 004a DFE812F0 		tbh	[pc, r2, lsl #1]
 7841              	.L1533:
 7842 004e 7700     		.2byte	(.L1532-.L1533)/2
 7843 0050 8100     		.2byte	(.L1534-.L1533)/2
 7844 0052 A700     		.2byte	(.L1535-.L1533)/2
 7845 0054 C400     		.2byte	(.L1536-.L1533)/2
 7846 0056 E800     		.2byte	(.L1537-.L1533)/2
 7847 0058 0B01     		.2byte	(.L1538-.L1533)/2
 7848 005a 2B01     		.2byte	(.L1539-.L1533)/2
 7849 005c C400     		.2byte	(.L1536-.L1533)/2
 7850 005e E800     		.2byte	(.L1537-.L1533)/2
 7851 0060 0B01     		.2byte	(.L1538-.L1533)/2
 7852 0062 3201     		.2byte	(.L1540-.L1533)/2
 7853 0064 4701     		.2byte	(.L1541-.L1533)/2
 7854 0066 5B01     		.2byte	(.L1542-.L1533)/2
 7855 0068 6A01     		.2byte	(.L1543-.L1533)/2
 7856 006a 6A01     		.2byte	(.L1543-.L1533)/2
 7857 006c BD01     		.2byte	(.L1544-.L1533)/2
 7858 006e F401     		.2byte	(.L1545-.L1533)/2
 7859 0070 3702     		.2byte	(.L1546-.L1533)/2
 7860 0072 4302     		.2byte	(.L1547-.L1533)/2
 7861 0074 4302     		.2byte	(.L1547-.L1533)/2
 7862 0076 0902     		.2byte	(.L1548-.L1533)/2
 7863 0078 2602     		.2byte	(.L1549-.L1533)/2
 7864 007a 6502     		.2byte	(.L1550-.L1533)/2
 7865 007c B102     		.2byte	(.L1551-.L1533)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 139


 7866 007e 5300     		.2byte	(.L1552-.L1533)/2
 7867              	.L1686:
 7868 0080 2946     		mov	r1, r5
 7869 0082 06AA     		add	r2, sp, #24
 7870 0084 2046     		mov	r0, r4
 7871 0086 FFF7FEFF 		bl	_ZN6GCodes14StartNextGCodeER11GCodeBufferR9StringRef
 7872 008a 636D     		ldr	r3, [r4, #84]
 7873              	.L1530:
 7874 008c 0133     		adds	r3, r3, #1
 7875 008e 072B     		cmp	r3, #7
 7876 0090 08BF     		it	eq
 7877 0092 0023     		moveq	r3, #0
 7878 0094 6365     		str	r3, [r4, #84]
 7879 0096 FFF7FEFF 		bl	millis
 7880 009a D4F8D033 		ldr	r3, [r4, #976]
 7881 009e C31A     		subs	r3, r0, r3
 7882 00a0 B3F57A6F 		cmp	r3, #4000
 7883 00a4 0546     		mov	r5, r0
 7884 00a6 0FD3     		bcc	.L1606
 7885 00a8 94F8D733 		ldrb	r3, [r4, #983]	@ zero_extendqisi2
 7886 00ac BBB9     		cbnz	r3, .L1687
 7887              	.L1607:
 7888 00ae 94F8D833 		ldrb	r3, [r4, #984]	@ zero_extendqisi2
 7889 00b2 4BB1     		cbz	r3, .L1606
 7890 00b4 2068     		ldr	r0, [r4]
 7891 00b6 B94A     		ldr	r2, .L1697
 7892 00b8 0621     		movs	r1, #6
 7893 00ba FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 7894 00be 0023     		movs	r3, #0
 7895 00c0 C4F8D053 		str	r5, [r4, #976]
 7896 00c4 84F8D833 		strb	r3, [r4, #984]
 7897              	.L1606:
 7898 00c8 2068     		ldr	r0, [r4]
 7899 00ca 04F57371 		add	r1, r4, #972
 7900 00ce FFF7FEFF 		bl	_ZN8Platform11ClassReportERf
 7901 00d2 0DF6240D 		addw	sp, sp, #2084
 7902              		@ sp needed
 7903 00d6 BDEC028B 		fldmfdd	sp!, {d8}
 7904 00da BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 7905              	.L1687:
 7906 00de 2068     		ldr	r0, [r4]
 7907 00e0 AF4A     		ldr	r2, .L1697+4
 7908 00e2 0621     		movs	r1, #6
 7909 00e4 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 7910 00e8 0023     		movs	r3, #0
 7911 00ea C4F8D053 		str	r5, [r4, #976]
 7912 00ee 84F8D733 		strb	r3, [r4, #983]
 7913 00f2 DCE7     		b	.L1607
 7914              	.L1552:
 7915 00f4 2046     		mov	r0, r4
 7916 00f6 2946     		mov	r1, r5
 7917 00f8 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 7918 00fc B0B1     		cbz	r0, .L1679
 7919 00fe D4F8F832 		ldr	r3, [r4, #760]
 7920 0102 A84F     		ldr	r7, .L1697+8
 7921 0104 D4F8F422 		ldr	r2, [r4, #756]
 7922 0108 B868     		ldr	r0, [r7, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 140


 7923 010a D907     		lsls	r1, r3, #31
 7924 010c 40F1EB82 		bpl	.L1595
 7925 0110 002A     		cmp	r2, #0
 7926 0112 00F0F082 		beq	.L1678
 7927 0116 013A     		subs	r2, r2, #1
 7928 0118 C4F8F422 		str	r2, [r4, #756]
 7929              	.L1597:
 7930 011c D0F82C2A 		ldr	r2, [r0, #2604]
 7931 0120 9A42     		cmp	r2, r3
 7932 0122 00F04083 		beq	.L1688
 7933 0126 AB68     		ldr	r3, [r5, #8]
 7934 0128 1522     		movs	r2, #21
 7935 012a 1A74     		strb	r2, [r3, #16]
 7936              	.L1679:
 7937 012c 0026     		movs	r6, #0
 7938              	.L1554:
 7939 012e AB68     		ldr	r3, [r5, #8]
 7940 0130 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 7941 0132 002B     		cmp	r3, #0
 7942 0134 00F05682 		beq	.L1602
 7943              	.L1683:
 7944 0138 636D     		ldr	r3, [r4, #84]
 7945 013a A7E7     		b	.L1530
 7946              	.L1532:
 7947 013c 2046     		mov	r0, r4
 7948 013e 2946     		mov	r1, r5
 7949 0140 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 7950 0144 0028     		cmp	r0, #0
 7951 0146 F1D0     		beq	.L1679
 7952              	.L1682:
 7953 0148 AB68     		ldr	r3, [r5, #8]
 7954 014a 0026     		movs	r6, #0
 7955 014c 1E74     		strb	r6, [r3, #16]
 7956 014e EEE7     		b	.L1554
 7957              	.L1534:
 7958 0150 B4F87C02 		ldrh	r0, [r4, #636]
 7959 0154 0028     		cmp	r0, #0
 7960 0156 00F05B82 		beq	.L1555
 7961 015a D4F8B061 		ldr	r6, [r4, #432]
 7962 015e 0022     		movs	r2, #0
 7963 0160 2EB9     		cbnz	r6, .L1559
 7964 0162 93E7     		b	.L1530
 7965              	.L1689:
 7966 0164 0428     		cmp	r0, #4
 7967 0166 08D0     		beq	.L1558
 7968              	.L1557:
 7969 0168 0132     		adds	r2, r2, #1
 7970 016a B242     		cmp	r2, r6
 7971 016c 8ED0     		beq	.L1530
 7972              	.L1559:
 7973 016e 20FA02F1 		lsr	r1, r0, r2
 7974 0172 CF07     		lsls	r7, r1, #31
 7975 0174 F8D5     		bpl	.L1557
 7976 0176 022A     		cmp	r2, #2
 7977 0178 F4D0     		beq	.L1689
 7978              	.L1558:
 7979 017a 8B4E     		ldr	r6, .L1697+12
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 141


 7980 017c 0123     		movs	r3, #1
 7981 017e 03FA02F1 		lsl	r1, r3, r2
 7982 0182 20EA0100 		bic	r0, r0, r1
 7983 0186 56F82220 		ldr	r2, [r6, r2, lsl #2]
 7984 018a A4F87C02 		strh	r0, [r4, #636]	@ movhi
 7985 018e 0026     		movs	r6, #0
 7986 0190 0096     		str	r6, [sp]
 7987 0192 2046     		mov	r0, r4
 7988 0194 2946     		mov	r1, r5
 7989 0196 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 7990 019a C8E7     		b	.L1554
 7991              	.L1535:
 7992 019c 2046     		mov	r0, r4
 7993 019e 2946     		mov	r1, r5
 7994 01a0 D4F89022 		ldr	r2, [r4, #656]
 7995 01a4 0023     		movs	r3, #0
 7996 01a6 FFF7FEFF 		bl	_ZN6GCodes21DoSingleZProbeAtPointER11GCodeBufferjf
 7997 01aa 0028     		cmp	r0, #0
 7998 01ac BED0     		beq	.L1679
 7999 01ae D4F89062 		ldr	r6, [r4, #656]
 8000 01b2 7C4F     		ldr	r7, .L1697+8
 8001 01b4 0136     		adds	r6, r6, #1
 8002 01b6 C4F89062 		str	r6, [r4, #656]
 8003 01ba B868     		ldr	r0, [r7, #8]
 8004 01bc FFF7FEFF 		bl	_ZNK4Move21NumberOfXYProbePointsEv
 8005 01c0 8642     		cmp	r6, r0
 8006 01c2 B3D3     		bcc	.L1679
 8007 01c4 B868     		ldr	r0, [r7, #8]
 8008 01c6 0021     		movs	r1, #0
 8009 01c8 06AA     		add	r2, sp, #24
 8010 01ca FFF7FEFF 		bl	_ZN4Move18FinishedBedProbingEiR9StringRef
 8011 01ce AB68     		ldr	r3, [r5, #8]
 8012 01d0 0026     		movs	r6, #0
 8013 01d2 1E74     		strb	r6, [r3, #16]
 8014 01d4 ABE7     		b	.L1554
 8015              	.L1536:
 8016 01d6 0122     		movs	r2, #1
 8017 01d8 84F8A320 		strb	r2, [r4, #163]
 8018 01dc AB68     		ldr	r3, [r5, #8]
 8019 01de 7149     		ldr	r1, .L1697+8
 8020 01e0 187C     		ldrb	r0, [r3, #16]	@ zero_extendqisi2
 8021 01e2 1044     		add	r0, r0, r2
 8022 01e4 1874     		strb	r0, [r3, #16]
 8023 01e6 496A     		ldr	r1, [r1, #36]
 8024 01e8 0029     		cmp	r1, #0
 8025 01ea 9FD0     		beq	.L1679
 8026 01ec D4F8B031 		ldr	r3, [r4, #432]
 8027 01f0 D4F89802 		ldr	r0, [r4, #664]
 8028 01f4 02FA03F3 		lsl	r3, r2, r3
 8029 01f8 013B     		subs	r3, r3, #1
 8030 01fa 1840     		ands	r0, r0, r3
 8031 01fc 8342     		cmp	r3, r0
 8032 01fe 95D1     		bne	.L1679
 8033 0200 4A68     		ldr	r2, [r1, #4]
 8034 0202 6A4E     		ldr	r6, .L1697+16
 8035 0204 6A49     		ldr	r1, .L1697+20
 8036              	.L1680:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 142


 8037 0206 3046     		mov	r0, r6
 8038 0208 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8039 020c 3268     		ldr	r2, [r6]
 8040 020e 0026     		movs	r6, #0
 8041 0210 0096     		str	r6, [sp]
 8042 0212 3346     		mov	r3, r6
 8043 0214 2046     		mov	r0, r4
 8044 0216 2946     		mov	r1, r5
 8045 0218 FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 8046 021c 87E7     		b	.L1554
 8047              	.L1537:
 8048 021e 6148     		ldr	r0, .L1697+8
 8049 0220 436A     		ldr	r3, [r0, #36]
 8050 0222 23B1     		cbz	r3, .L1562
 8051 0224 5968     		ldr	r1, [r3, #4]
 8052 0226 FFF7FEFF 		bl	_ZN6RepRap11StandbyToolEi
 8053 022a AE68     		ldr	r6, [r5, #8]
 8054 022c 317C     		ldrb	r1, [r6, #16]	@ zero_extendqisi2
 8055              	.L1562:
 8056 022e 0131     		adds	r1, r1, #1
 8057 0230 3174     		strb	r1, [r6, #16]
 8058 0232 5C48     		ldr	r0, .L1697+8
 8059 0234 D4F88412 		ldr	r1, [r4, #644]
 8060 0238 FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 8061 023c 0028     		cmp	r0, #0
 8062 023e 3FF475AF 		beq	.L1679
 8063 0242 D4F8B031 		ldr	r3, [r4, #432]
 8064 0246 D4F89822 		ldr	r2, [r4, #664]
 8065 024a 0121     		movs	r1, #1
 8066 024c 01FA03F3 		lsl	r3, r1, r3
 8067 0250 013B     		subs	r3, r3, #1
 8068 0252 1A40     		ands	r2, r2, r3
 8069 0254 9342     		cmp	r3, r2
 8070 0256 7FF469AF 		bne	.L1679
 8071 025a 544E     		ldr	r6, .L1697+16
 8072 025c 5549     		ldr	r1, .L1697+24
 8073              	.L1681:
 8074 025e D4F88422 		ldr	r2, [r4, #644]
 8075 0262 D0E7     		b	.L1680
 8076              	.L1538:
 8077 0264 4F48     		ldr	r0, .L1697+8
 8078 0266 D4F88412 		ldr	r1, [r4, #644]
 8079 026a FFF7FEFF 		bl	_ZN6RepRap10SelectToolEi
 8080 026e AB68     		ldr	r3, [r5, #8]
 8081 0270 D4F88412 		ldr	r1, [r4, #644]
 8082 0274 1A7C     		ldrb	r2, [r3, #16]	@ zero_extendqisi2
 8083 0276 4B48     		ldr	r0, .L1697+8
 8084 0278 0132     		adds	r2, r2, #1
 8085 027a 1A74     		strb	r2, [r3, #16]
 8086 027c FFF7FEFF 		bl	_ZNK6RepRap7GetToolEi
 8087 0280 0028     		cmp	r0, #0
 8088 0282 3FF453AF 		beq	.L1679
 8089 0286 D4F8B031 		ldr	r3, [r4, #432]
 8090 028a D4F89822 		ldr	r2, [r4, #664]
 8091 028e 0121     		movs	r1, #1
 8092 0290 01FA03F3 		lsl	r3, r1, r3
 8093 0294 013B     		subs	r3, r3, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 143


 8094 0296 1A40     		ands	r2, r2, r3
 8095 0298 9342     		cmp	r3, r2
 8096 029a 7FF447AF 		bne	.L1679
 8097 029e 434E     		ldr	r6, .L1697+16
 8098 02a0 4549     		ldr	r1, .L1697+28
 8099 02a2 DCE7     		b	.L1681
 8100              	.L1539:
 8101 02a4 0023     		movs	r3, #0
 8102 02a6 84F8A330 		strb	r3, [r4, #163]
 8103 02aa AA68     		ldr	r2, [r5, #8]
 8104 02ac 1E46     		mov	r6, r3
 8105 02ae 1374     		strb	r3, [r2, #16]
 8106 02b0 3DE7     		b	.L1554
 8107              	.L1540:
 8108 02b2 0023     		movs	r3, #0
 8109 02b4 84F8A330 		strb	r3, [r4, #163]
 8110 02b8 2046     		mov	r0, r4
 8111 02ba 2946     		mov	r1, r5
 8112 02bc FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 8113 02c0 94F8D633 		ldrb	r3, [r4, #982]	@ zero_extendqisi2
 8114 02c4 002B     		cmp	r3, #0
 8115 02c6 00F0F881 		beq	.L1690
 8116              	.L1565:
 8117 02ca 0023     		movs	r3, #0
 8118 02cc 84F8D533 		strb	r3, [r4, #981]
 8119 02d0 84F8D633 		strb	r3, [r4, #982]
 8120 02d4 AA68     		ldr	r2, [r5, #8]
 8121 02d6 1E46     		mov	r6, r3
 8122 02d8 1374     		strb	r3, [r2, #16]
 8123 02da 28E7     		b	.L1554
 8124              	.L1541:
 8125 02dc 2046     		mov	r0, r4
 8126 02de 2946     		mov	r1, r5
 8127 02e0 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8128 02e4 0028     		cmp	r0, #0
 8129 02e6 3FF421AF 		beq	.L1679
 8130 02ea AB68     		ldr	r3, [r5, #8]
 8131 02ec 334A     		ldr	r2, .L1697+32
 8132 02ee 0D21     		movs	r1, #13
 8133 02f0 0026     		movs	r6, #0
 8134 02f2 1974     		strb	r1, [r3, #16]
 8135 02f4 1268     		ldr	r2, [r2]
 8136 02f6 0096     		str	r6, [sp]
 8137 02f8 2046     		mov	r0, r4
 8138 02fa 2946     		mov	r1, r5
 8139 02fc 0123     		movs	r3, #1
 8140 02fe FFF7FEFF 		bl	_ZN6GCodes11DoFileMacroER11GCodeBufferPKcbb
 8141 0302 14E7     		b	.L1554
 8142              	.L1542:
 8143 0304 2046     		mov	r0, r4
 8144 0306 2946     		mov	r1, r5
 8145 0308 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8146 030c 0028     		cmp	r0, #0
 8147 030e 3FF40DAF 		beq	.L1679
 8148 0312 06A8     		add	r0, sp, #24
 8149 0314 2A49     		ldr	r1, .L1697+36
 8150 0316 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 144


 8151 031a AB68     		ldr	r3, [r5, #8]
 8152 031c 0026     		movs	r6, #0
 8153 031e 1E74     		strb	r6, [r3, #16]
 8154 0320 05E7     		b	.L1554
 8155              	.L1543:
 8156 0322 2046     		mov	r0, r4
 8157 0324 2946     		mov	r1, r5
 8158 0326 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8159 032a 0028     		cmp	r0, #0
 8160 032c 3FF4FEAE 		beq	.L1679
 8161 0330 D4F8B021 		ldr	r2, [r4, #432]
 8162 0334 D4ED2B7A 		flds	s15, [r4, #172]
 8163 0338 6AB1     		cbz	r2, .L1571
 8164 033a 04EB8200 		add	r0, r4, r2, lsl #2
 8165 033e 00F5AC70 		add	r0, r0, #344
 8166 0342 04F5AC73 		add	r3, r4, #344
 8167              	.L1570:
 8168 0346 53F8041B 		ldr	r1, [r3], #4	@ float
 8169 034a 43F8B81C 		str	r1, [r3, #-184]	@ float
 8170 034e 8342     		cmp	r3, r0
 8171 0350 F9D1     		bne	.L1570
 8172 0352 092A     		cmp	r2, #9
 8173 0354 08D8     		bhi	.L1574
 8174              	.L1571:
 8175 0356 04EB8203 		add	r3, r4, r2, lsl #2
 8176 035a A433     		adds	r3, r3, #164
 8177 035c 0021     		movs	r1, #0
 8178              	.L1568:
 8179 035e 0132     		adds	r2, r2, #1
 8180 0360 092A     		cmp	r2, #9
 8181 0362 43F8041B 		str	r1, [r3], #4	@ float
 8182 0366 FAD9     		bls	.L1568
 8183              	.L1574:
 8184 0368 0023     		movs	r3, #0
 8185 036a 4FF0FF32 		mov	r2, #-1
 8186 036e 1549     		ldr	r1, .L1697+40
 8187 0370 84F8F630 		strb	r3, [r4, #246]
 8188 0374 C4F8E820 		str	r2, [r4, #232]
 8189 0378 C4F8E410 		str	r1, [r4, #228]	@ float
 8190 037c A4F8F430 		strh	r3, [r4, #244]	@ movhi
 8191 0380 84F8F830 		strb	r3, [r4, #248]
 8192 0384 AB68     		ldr	r3, [r5, #8]
 8193 0386 1A7C     		ldrb	r2, [r3, #16]	@ zero_extendqisi2
 8194 0388 0E2A     		cmp	r2, #14
 8195 038a 00F0F681 		beq	.L1691
 8196              	.L1573:
 8197 038e 1022     		movs	r2, #16
 8198 0390 1A74     		strb	r2, [r3, #16]
 8199              	.L1610:
 8200 0392 0123     		movs	r3, #1
 8201 0394 C4F8FC30 		str	r3, [r4, #252]
 8202 0398 0026     		movs	r6, #0
 8203 039a C8E6     		b	.L1554
 8204              	.L1698:
 8205              		.align	2
 8206              	.L1697:
 8207 039c 340B0000 		.word	.LC111
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 145


 8208 03a0 040B0000 		.word	.LC110
 8209 03a4 00000000 		.word	reprap
 8210 03a8 00000000 		.word	.LANCHOR6
 8211 03ac 00000000 		.word	scratchString
 8212 03b0 7C0B0000 		.word	.LC112
 8213 03b4 880B0000 		.word	.LC113
 8214 03b8 940B0000 		.word	.LC114
 8215 03bc 00000000 		.word	.LANCHOR7
 8216 03c0 0C0A0000 		.word	.LC103
 8217 03c4 01004842 		.word	1112014849
 8218              	.L1544:
 8219 03c8 2046     		mov	r0, r4
 8220 03ca 2946     		mov	r1, r5
 8221 03cc FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8222 03d0 0028     		cmp	r0, #0
 8223 03d2 3FF4ABAE 		beq	.L1679
 8224 03d6 04F52777 		add	r7, r4, #668
 8225 03da 0026     		movs	r6, #0
 8226              	.L1577:
 8227 03dc 3146     		mov	r1, r6
 8228 03de 2068     		ldr	r0, [r4]
 8229 03e0 57F8042B 		ldr	r2, [r7], #4	@ float
 8230 03e4 0136     		adds	r6, r6, #1
 8231 03e6 FFF7FEFF 		bl	_ZN8Platform11SetFanValueEjf
 8232 03ea 082E     		cmp	r6, #8
 8233 03ec F6D1     		bne	.L1577
 8234 03ee D4F8B031 		ldr	r3, [r4, #432]
 8235 03f2 092B     		cmp	r3, #9
 8236 03f4 0ED8     		bhi	.L1579
 8237 03f6 9800     		lsls	r0, r3, #2
 8238 03f8 C0F5FC70 		rsb	r0, r0, #504
 8239 03fc 5633     		adds	r3, r3, #86
 8240 03fe 04EB8302 		add	r2, r4, r3, lsl #2
 8241 0402 2044     		add	r0, r0, r4
 8242 0404 04F5E873 		add	r3, r4, #464
 8243              	.L1580:
 8244 0408 52F8041B 		ldr	r1, [r2], #4	@ float
 8245 040c 43F8041B 		str	r1, [r3], #4	@ float
 8246 0410 8342     		cmp	r3, r0
 8247 0412 F9D1     		bne	.L1580
 8248              	.L1579:
 8249 0414 236C     		ldr	r3, [r4, #64]
 8250 0416 D4F88021 		ldr	r2, [r4, #384]	@ float
 8251 041a 1B68     		ldr	r3, [r3]
 8252 041c B849     		ldr	r1, .L1699
 8253 041e 9B68     		ldr	r3, [r3, #8]
 8254 0420 0027     		movs	r7, #0
 8255 0422 5A60     		str	r2, [r3, #4]	@ float
 8256 0424 06A8     		add	r0, sp, #24
 8257 0426 84F8A170 		strb	r7, [r4, #161]
 8258 042a FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8259 042e AB68     		ldr	r3, [r5, #8]
 8260 0430 3E46     		mov	r6, r7
 8261 0432 1F74     		strb	r7, [r3, #16]
 8262 0434 7BE6     		b	.L1554
 8263              	.L1545:
 8264 0436 FFF7FEFF 		bl	_ZN15FirmwareUpdater7IsReadyEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 146


 8265 043a 0028     		cmp	r0, #0
 8266 043c 3FF476AE 		beq	.L1679
 8267 0440 94F85C23 		ldrb	r2, [r4, #860]	@ zero_extendqisi2
 8268 0444 0120     		movs	r0, #1
 8269              	.L1583:
 8270 0446 22FA00F3 		lsr	r3, r2, r0
 8271 044a 13F00106 		ands	r6, r3, #1
 8272 044e 40F0D781 		bne	.L1692
 8273 0452 0130     		adds	r0, r0, #1
 8274 0454 0428     		cmp	r0, #4
 8275 0456 F6D1     		bne	.L1583
 8276 0458 AB68     		ldr	r3, [r5, #8]
 8277 045a 1222     		movs	r2, #18
 8278 045c 1A74     		strb	r2, [r3, #16]
 8279 045e 66E6     		b	.L1554
 8280              	.L1548:
 8281 0460 A84B     		ldr	r3, .L1699+4
 8282 0462 D4F8F412 		ldr	r1, [r4, #756]
 8283 0466 9E68     		ldr	r6, [r3, #8]
 8284 0468 06F52166 		add	r6, r6, #2576
 8285 046c 3046     		mov	r0, r6
 8286 046e FFF7FEFF 		bl	_ZNK14GridDefinition14GetXCoordinateEj
 8287 0472 D4F8F812 		ldr	r1, [r4, #760]
 8288 0476 8046     		mov	r8, r0	@ float
 8289 0478 3046     		mov	r0, r6
 8290 047a FFF7FEFF 		bl	_ZNK14GridDefinition14GetYCoordinateEj
 8291 047e 0746     		mov	r7, r0	@ float
 8292 0480 4146     		mov	r1, r8	@ float
 8293 0482 3046     		mov	r0, r6
 8294 0484 3A46     		mov	r2, r7	@ float
 8295 0486 FFF7FEFF 		bl	_ZNK14GridDefinition10IsInRadiusEff
 8296 048a 0028     		cmp	r0, #0
 8297 048c 40F0CA80 		bne	.L1693
 8298              	.L1591:
 8299 0490 AB68     		ldr	r3, [r5, #8]
 8300 0492 1922     		movs	r2, #25
 8301 0494 1A74     		strb	r2, [r3, #16]
 8302 0496 0026     		movs	r6, #0
 8303 0498 49E6     		b	.L1554
 8304              	.L1549:
 8305 049a 2046     		mov	r0, r4
 8306 049c 2946     		mov	r1, r5
 8307 049e FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8308 04a2 0028     		cmp	r0, #0
 8309 04a4 3FF442AE 		beq	.L1679
 8310 04a8 FFF7FEFF 		bl	millis
 8311 04ac C4F8EC02 		str	r0, [r4, #748]
 8312 04b0 AB68     		ldr	r3, [r5, #8]
 8313 04b2 1A7C     		ldrb	r2, [r3, #16]	@ zero_extendqisi2
 8314 04b4 0132     		adds	r2, r2, #1
 8315 04b6 1A74     		strb	r2, [r3, #16]
 8316 04b8 0026     		movs	r6, #0
 8317 04ba 38E6     		b	.L1554
 8318              	.L1546:
 8319 04bc 94F85C33 		ldrb	r3, [r4, #860]	@ zero_extendqisi2
 8320 04c0 D807     		lsls	r0, r3, #31
 8321 04c2 00F1F380 		bmi	.L1694
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 147


 8322              	.L1584:
 8323 04c6 0023     		movs	r3, #0
 8324 04c8 84F85D33 		strb	r3, [r4, #861]
 8325 04cc AA68     		ldr	r2, [r5, #8]
 8326 04ce 1E46     		mov	r6, r3
 8327 04d0 1374     		strb	r3, [r2, #16]
 8328 04d2 2CE6     		b	.L1554
 8329              	.L1547:
 8330 04d4 2846     		mov	r0, r5
 8331 04d6 4821     		movs	r1, #72
 8332 04d8 FFF7FEFF 		bl	_ZN11GCodeBuffer4SeenEc
 8333 04dc 0028     		cmp	r0, #0
 8334 04de 40F09A80 		bne	.L1695
 8335              	.L1585:
 8336 04e2 884F     		ldr	r7, .L1699+4
 8337 04e4 7B6A     		ldr	r3, [r7, #36]
 8338 04e6 1BB1     		cbz	r3, .L1612
 8339 04e8 5968     		ldr	r1, [r3, #4]
 8340 04ea 3846     		mov	r0, r7
 8341 04ec FFF7FEFF 		bl	_ZN6RepRap11StandbyToolEi
 8342              	.L1612:
 8343 04f0 F868     		ldr	r0, [r7, #12]
 8344 04f2 FFF7FEFF 		bl	_ZN4Heat12SwitchOffAllEv
 8345              	.L1586:
 8346 04f6 AB68     		ldr	r3, [r5, #8]
 8347 04f8 1B7C     		ldrb	r3, [r3, #16]	@ zero_extendqisi2
 8348 04fa 142B     		cmp	r3, #20
 8349 04fc 40F08480 		bne	.L1587
 8350 0500 0026     		movs	r6, #0
 8351              	.L1589:
 8352 0502 3146     		mov	r1, r6
 8353 0504 2068     		ldr	r0, [r4]
 8354 0506 0136     		adds	r6, r6, #1
 8355 0508 FFF7FEFF 		bl	_ZN8Platform12DisableDriveEj
 8356 050c 0A2E     		cmp	r6, #10
 8357 050e F8D1     		bne	.L1589
 8358 0510 0023     		movs	r3, #0
 8359 0512 C4F89832 		str	r3, [r4, #664]
 8360 0516 17E6     		b	.L1682
 8361              	.L1550:
 8362 0518 7A4E     		ldr	r6, .L1699+4
 8363 051a FFF7FEFF 		bl	millis
 8364 051e 3368     		ldr	r3, [r6]
 8365 0520 D4F8EC22 		ldr	r2, [r4, #748]
 8366 0524 D3F89010 		ldr	r1, [r3, #144]
 8367 0528 871A     		subs	r7, r0, r2
 8368 052a 1846     		mov	r0, r3
 8369 052c FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersEl
 8370 0530 DFED757A 		flds	s15, .L1699+8
 8371 0534 90ED097A 		flds	s14, [r0, #36]
 8372 0538 67EE277A 		fmuls	s15, s14, s15
 8373 053c FCEEE77A 		ftouizs	s15, s15
 8374 0540 17EE903A 		fmrs	r3, s15	@ int
 8375 0544 9F42     		cmp	r7, r3
 8376 0546 FFF4F1AD 		bcc	.L1679
 8377 054a 3068     		ldr	r0, [r6]
 8378 054c FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 148


 8379 0550 0128     		cmp	r0, #1
 8380 0552 0646     		mov	r6, r0
 8381 0554 00F01F81 		beq	.L1696
 8382 0558 0026     		movs	r6, #0
 8383 055a 0121     		movs	r1, #1
 8384 055c 2068     		ldr	r0, [r4]
 8385 055e 84F8F062 		strb	r6, [r4, #752]
 8386 0562 FFF7FEFF 		bl	_ZN8Platform10SetProbingEb
 8387 0566 4FF40042 		mov	r2, #32768
 8388 056a 4FF0FF33 		mov	r3, #-1
 8389 056e A4F8F420 		strh	r2, [r4, #244]	@ movhi
 8390 0572 C4F8E830 		str	r3, [r4, #232]
 8391 0576 84F8F660 		strb	r6, [r4, #246]
 8392 057a 84F8F860 		strb	r6, [r4, #248]
 8393 057e 2068     		ldr	r0, [r4]
 8394 0580 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeDiveHeightEv
 8395 0584 2368     		ldr	r3, [r4]
 8396 0586 80F00042 		eor	r2, r0, #-2147483648
 8397 058a C4F8AC20 		str	r2, [r4, #172]	@ float
 8398 058e 1846     		mov	r0, r3
 8399 0590 D3F89010 		ldr	r1, [r3, #144]
 8400 0594 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersEl
 8401 0598 0123     		movs	r3, #1
 8402 059a C269     		ldr	r2, [r0, #28]	@ float
 8403 059c C4F8E420 		str	r2, [r4, #228]	@ float
 8404 05a0 C4F8EC60 		str	r6, [r4, #236]
 8405 05a4 C4F8FC30 		str	r3, [r4, #252]
 8406 05a8 AB68     		ldr	r3, [r5, #8]
 8407 05aa 1822     		movs	r2, #24
 8408 05ac 1A74     		strb	r2, [r3, #16]
 8409 05ae BEE5     		b	.L1554
 8410              	.L1551:
 8411 05b0 2046     		mov	r0, r4
 8412 05b2 2946     		mov	r1, r5
 8413 05b4 FFF7FEFF 		bl	_ZN6GCodes32LockMovementAndWaitForStandstillERK11GCodeBuffer
 8414 05b8 0028     		cmp	r0, #0
 8415 05ba 3FF4B7AD 		beq	.L1679
 8416 05be 2068     		ldr	r0, [r4]
 8417 05c0 0021     		movs	r1, #0
 8418 05c2 FFF7FEFF 		bl	_ZN8Platform10SetProbingEb
 8419 05c6 94F8F032 		ldrb	r3, [r4, #752]	@ zero_extendqisi2
 8420 05ca 03F0FF07 		and	r7, r3, #255
 8421 05ce 002B     		cmp	r3, #0
 8422 05d0 40F0A080 		bne	.L1594
 8423 05d4 06A8     		add	r0, sp, #24
 8424 05d6 4D49     		ldr	r1, .L1699+12
 8425 05d8 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8426 05dc AB68     		ldr	r3, [r5, #8]
 8427 05de 0126     		movs	r6, #1
 8428 05e0 1F74     		strb	r7, [r3, #16]
 8429 05e2 A4E5     		b	.L1554
 8430              	.L1602:
 8431 05e4 2B71     		strb	r3, [r5, #4]
 8432 05e6 2046     		mov	r0, r4
 8433 05e8 2946     		mov	r1, r5
 8434 05ea FFF7FEFF 		bl	_ZN6GCodes9UnlockAllERK11GCodeBuffer
 8435 05ee 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 149


 8436 05f0 2946     		mov	r1, r5
 8437 05f2 3246     		mov	r2, r6
 8438 05f4 069B     		ldr	r3, [sp, #24]
 8439 05f6 FFF7FEFF 		bl	_ZN6GCodes11HandleReplyER11GCodeBufferbPKc
 8440 05fa 9DE5     		b	.L1683
 8441              	.L1531:
 8442 05fc 2068     		ldr	r0, [r4]
 8443 05fe 444A     		ldr	r2, .L1699+16
 8444 0600 0621     		movs	r1, #6
 8445 0602 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 8446 0606 9FE5     		b	.L1682
 8447              	.L1587:
 8448 0608 2068     		ldr	r0, [r4]
 8449 060a FFF7FEFF 		bl	_ZN8Platform14SetDriversIdleEv
 8450 060e 9BE5     		b	.L1682
 8451              	.L1555:
 8452 0610 3074     		strb	r0, [r6, #16]
 8453 0612 0646     		mov	r6, r0
 8454 0614 8BE5     		b	.L1554
 8455              	.L1695:
 8456 0616 2846     		mov	r0, r5
 8457 0618 FFF7FEFF 		bl	_ZN11GCodeBuffer9GetIValueEv
 8458 061c 0028     		cmp	r0, #0
 8459 061e 3FF76AAF 		bgt	.L1586
 8460 0622 5EE7     		b	.L1585
 8461              	.L1693:
 8462 0624 2068     		ldr	r0, [r4]
 8463 0626 4146     		mov	r1, r8	@ float
 8464 0628 3A46     		mov	r2, r7	@ float
 8465 062a FFF7FEFF 		bl	_ZNK8Platform22IsAccessibleProbePointEff
 8466 062e 0028     		cmp	r0, #0
 8467 0630 3FF42EAF 		beq	.L1591
 8468 0634 4FF00009 		mov	r9, #0
 8469 0638 2068     		ldr	r0, [r4]
 8470 063a 84F8F690 		strb	r9, [r4, #246]
 8471 063e 4FF0FF33 		mov	r3, #-1
 8472 0642 D0F89010 		ldr	r1, [r0, #144]
 8473 0646 A4F8F490 		strh	r9, [r4, #244]	@ movhi
 8474 064a C4F8E830 		str	r3, [r4, #232]
 8475 064e 84F8F890 		strb	r9, [r4, #248]
 8476 0652 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersEl
 8477 0656 07EE108A 		fmsr	s14, r8
 8478 065a D0ED017A 		flds	s15, [r0, #4]
 8479 065e 2368     		ldr	r3, [r4]
 8480 0660 77EE677A 		fsubs	s15, s14, s15
 8481 0664 D3F89010 		ldr	r1, [r3, #144]
 8482 0668 C4ED297A 		fsts	s15, [r4, #164]
 8483 066c 1846     		mov	r0, r3
 8484 066e FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersEl
 8485 0672 07EE107A 		fmsr	s14, r7
 8486 0676 D0ED027A 		flds	s15, [r0, #8]
 8487 067a 2068     		ldr	r0, [r4]
 8488 067c 77EE677A 		fsubs	s15, s14, s15
 8489 0680 4E46     		mov	r6, r9
 8490 0682 C4ED2A7A 		fsts	s15, [r4, #168]
 8491 0686 FFF7FEFF 		bl	_ZN8Platform23GetZProbeStartingHeightEv
 8492 068a C4F8AC00 		str	r0, [r4, #172]	@ float
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 150


 8493 068e 2068     		ldr	r0, [r4]
 8494 0690 FFF7FEFF 		bl	_ZNK8Platform20GetZProbeTravelSpeedEv
 8495 0694 0123     		movs	r3, #1
 8496 0696 C4F8E400 		str	r0, [r4, #228]	@ float
 8497 069a C4F8EC90 		str	r9, [r4, #236]
 8498 069e C4F8FC30 		str	r3, [r4, #252]
 8499 06a2 AB68     		ldr	r3, [r5, #8]
 8500 06a4 1A7C     		ldrb	r2, [r3, #16]	@ zero_extendqisi2
 8501 06a6 0132     		adds	r2, r2, #1
 8502 06a8 1A74     		strb	r2, [r3, #16]
 8503 06aa 40E5     		b	.L1554
 8504              	.L1694:
 8505 06ac 0023     		movs	r3, #0
 8506 06ae 84F85C33 		strb	r3, [r4, #860]
 8507 06b2 2068     		ldr	r0, [r4]
 8508 06b4 FFF7FEFF 		bl	_ZN8Platform14UpdateFirmwareEv
 8509 06b8 05E7     		b	.L1584
 8510              	.L1690:
 8511 06ba AB68     		ldr	r3, [r5, #8]
 8512 06bc 1149     		ldr	r1, .L1699+4
 8513 06be 5A7C     		ldrb	r2, [r3, #17]	@ zero_extendqisi2
 8514 06c0 496A     		ldr	r1, [r1, #36]
 8515 06c2 C2F3C002 		ubfx	r2, r2, #3, #1
 8516 06c6 2046     		mov	r0, r4
 8517 06c8 FFF7FEFF 		bl	_ZNK6GCodes28ToolHeatersAtSetTemperaturesEPK4Toolb
 8518 06cc 0646     		mov	r6, r0
 8519 06ce 0028     		cmp	r0, #0
 8520 06d0 7FF4FBAD 		bne	.L1565
 8521 06d4 2046     		mov	r0, r4
 8522 06d6 2946     		mov	r1, r5
 8523 06d8 06AA     		add	r2, sp, #24
 8524 06da FFF7FEFF 		bl	_ZNK6GCodes14CheckReportDueER11GCodeBufferR9StringRef
 8525 06de 0123     		movs	r3, #1
 8526 06e0 84F8D533 		strb	r3, [r4, #981]
 8527 06e4 23E5     		b	.L1554
 8528              	.L1595:
 8529 06e6 D0F8281A 		ldr	r1, [r0, #2600]
 8530 06ea 0132     		adds	r2, r2, #1
 8531 06ec 8A42     		cmp	r2, r1
 8532 06ee 02D0     		beq	.L1678
 8533 06f0 C4F8F422 		str	r2, [r4, #756]
 8534 06f4 12E5     		b	.L1597
 8535              	.L1678:
 8536 06f6 0133     		adds	r3, r3, #1
 8537 06f8 C4F8F832 		str	r3, [r4, #760]
 8538 06fc 0EE5     		b	.L1597
 8539              	.L1700:
 8540 06fe 00BF     		.align	2
 8541              	.L1699:
 8542 0700 1C0A0000 		.word	.LC104
 8543 0704 00000000 		.word	reprap
 8544 0708 00007A44 		.word	1148846080
 8545 070c 680A0000 		.word	.LC106
 8546 0710 E40A0000 		.word	.LC109
 8547              	.L1594:
 8548 0714 2068     		ldr	r0, [r4]
 8549 0716 94ED2B8A 		flds	s16, [r4, #172]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 151


 8550 071a FFF7FEFF 		bl	_ZN8Platform16ZProbeStopHeightEv
 8551 071e 404B     		ldr	r3, .L1701
 8552 0720 D4F8F822 		ldr	r2, [r4, #760]
 8553 0724 9B68     		ldr	r3, [r3, #8]
 8554 0726 D4F8F412 		ldr	r1, [r4, #756]
 8555 072a 07EE100A 		fmsr	s14, r0
 8556 072e 38EE478A 		fsubs	s16, s16, s14
 8557 0732 03F52160 		add	r0, r3, #2576
 8558 0736 18EE103A 		fmrs	r3, s16
 8559 073a FFF7FEFF 		bl	_ZN9HeightMap13SetGridHeightEjjf
 8560 073e 0026     		movs	r6, #0
 8561 0740 4FF0FF33 		mov	r3, #-1
 8562 0744 C4F8E830 		str	r3, [r4, #232]
 8563 0748 84F8F660 		strb	r6, [r4, #246]
 8564 074c A4F8F460 		strh	r6, [r4, #244]	@ movhi
 8565 0750 84F8F860 		strb	r6, [r4, #248]
 8566 0754 2068     		ldr	r0, [r4]
 8567 0756 FFF7FEFF 		bl	_ZN8Platform23GetZProbeStartingHeightEv
 8568 075a C4F8AC00 		str	r0, [r4, #172]	@ float
 8569 075e 2068     		ldr	r0, [r4]
 8570 0760 FFF7FEFF 		bl	_ZNK8Platform20GetZProbeTravelSpeedEv
 8571 0764 0123     		movs	r3, #1
 8572 0766 C4F8E400 		str	r0, [r4, #228]	@ float
 8573 076a C4F8EC60 		str	r6, [r4, #236]
 8574 076e C4F8FC30 		str	r3, [r4, #252]
 8575 0772 AB68     		ldr	r3, [r5, #8]
 8576 0774 1922     		movs	r2, #25
 8577 0776 1A74     		strb	r2, [r3, #16]
 8578 0778 D9E4     		b	.L1554
 8579              	.L1691:
 8580 077a 94ED587A 		flds	s14, [r4, #352]
 8581 077e F4EEC77A 		fcmpes	s15, s14
 8582 0782 F1EE10FA 		fmstat
 8583 0786 7FF702AE 		ble	.L1573
 8584 078a C4ED2B7A 		fsts	s15, [r4, #172]
 8585 078e AB68     		ldr	r3, [r5, #8]
 8586 0790 0F22     		movs	r2, #15
 8587 0792 1A74     		strb	r2, [r3, #16]
 8588 0794 FDE5     		b	.L1610
 8589              	.L1696:
 8590 0796 06A8     		add	r0, sp, #24
 8591 0798 2249     		ldr	r1, .L1701+4
 8592 079a FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8593 079e AB68     		ldr	r3, [r5, #8]
 8594 07a0 0022     		movs	r2, #0
 8595 07a2 1A74     		strb	r2, [r3, #16]
 8596 07a4 C3E4     		b	.L1554
 8597              	.L1688:
 8598 07a6 00F52160 		add	r0, r0, #2576
 8599 07aa 04A9     		add	r1, sp, #16
 8600 07ac 05AA     		add	r2, sp, #20
 8601 07ae FFF7FEFF 		bl	_ZNK9HeightMap13GetStatisticsERfS0_
 8602 07b2 0328     		cmp	r0, #3
 8603 07b4 0646     		mov	r6, r0
 8604 07b6 2DD9     		bls	.L1600
 8605 07b8 0498     		ldr	r0, [sp, #16]	@ float
 8606 07ba FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 152


 8607 07be CDE90001 		strd	r0, [sp]
 8608 07c2 0598     		ldr	r0, [sp, #20]	@ float
 8609 07c4 FFF7FEFF 		bl	__aeabi_f2d
 8610 07c8 3246     		mov	r2, r6
 8611 07ca CDE90201 		strd	r0, [sp, #8]
 8612 07ce 1649     		ldr	r1, .L1701+8
 8613 07d0 06A8     		add	r0, sp, #24
 8614 07d2 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 8615 07d6 2946     		mov	r1, r5
 8616 07d8 06AA     		add	r2, sp, #24
 8617 07da 2046     		mov	r0, r4
 8618 07dc FFF7FEFF 		bl	_ZNK6GCodes13SaveHeightMapER11GCodeBufferR9StringRef
 8619 07e0 0646     		mov	r6, r0
 8620 07e2 B868     		ldr	r0, [r7, #8]
 8621 07e4 00F52160 		add	r0, r0, #2576
 8622 07e8 FFF7FEFF 		bl	_ZN9HeightMap18ExtrapolateMissingEv
 8623 07ec B868     		ldr	r0, [r7, #8]
 8624 07ee 0121     		movs	r1, #1
 8625 07f0 00F52160 		add	r0, r0, #2576
 8626 07f4 FFF7FEFF 		bl	_ZN9HeightMap12UseHeightMapEb
 8627              	.L1601:
 8628 07f8 AB68     		ldr	r3, [r5, #8]
 8629 07fa 0022     		movs	r2, #0
 8630 07fc 1A74     		strb	r2, [r3, #16]
 8631 07fe 96E4     		b	.L1554
 8632              	.L1692:
 8633 0800 0123     		movs	r3, #1
 8634 0802 8340     		lsls	r3, r3, r0
 8635 0804 22EA0302 		bic	r2, r2, r3
 8636 0808 84F85C23 		strb	r2, [r4, #860]
 8637 080c FFF7FEFF 		bl	_ZN15FirmwareUpdater12UpdateModuleEj
 8638 0810 0026     		movs	r6, #0
 8639 0812 8CE4     		b	.L1554
 8640              	.L1600:
 8641 0814 06A8     		add	r0, sp, #24
 8642 0816 0549     		ldr	r1, .L1701+12
 8643 0818 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 8644 081c 0126     		movs	r6, #1
 8645 081e EBE7     		b	.L1601
 8646              	.L1702:
 8647              		.align	2
 8648              	.L1701:
 8649 0820 00000000 		.word	reprap
 8650 0824 300A0000 		.word	.LC105
 8651 0828 980A0000 		.word	.LC107
 8652 082c CC0A0000 		.word	.LC108
 8653              		.size	_ZN6GCodes4SpinEv, .-_ZN6GCodes4SpinEv
 8654              		.section	.text._ZN6GCodes17LongArrayToBitMapEPKlj,"ax",%progbits
 8655              		.align	2
 8656              		.global	_ZN6GCodes17LongArrayToBitMapEPKlj
 8657              		.thumb
 8658              		.thumb_func
 8659              		.type	_ZN6GCodes17LongArrayToBitMapEPKlj, %function
 8660              	_ZN6GCodes17LongArrayToBitMapEPKlj:
 8661              		@ args = 0, pretend = 0, frame = 0
 8662              		@ frame_needed = 0, uses_anonymous_args = 0
 8663              		@ link register save eliminated.
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 153


 8664 0000 10B4     		push	{r4}
 8665 0002 81B1     		cbz	r1, .L1707
 8666 0004 0346     		mov	r3, r0
 8667 0006 00EB8101 		add	r1, r0, r1, lsl #2
 8668 000a 0124     		movs	r4, #1
 8669 000c 0020     		movs	r0, #0
 8670              	.L1706:
 8671 000e 53F8042B 		ldr	r2, [r3], #4
 8672 0012 1F2A     		cmp	r2, #31
 8673 0014 9CBF     		itt	ls
 8674 0016 04FA02F2 		lslls	r2, r4, r2
 8675 001a 1043     		orrls	r0, r0, r2
 8676 001c 8B42     		cmp	r3, r1
 8677 001e F6D1     		bne	.L1706
 8678              	.L1704:
 8679 0020 5DF8044B 		ldr	r4, [sp], #4
 8680 0024 7047     		bx	lr
 8681              	.L1707:
 8682 0026 0846     		mov	r0, r1
 8683 0028 FAE7     		b	.L1704
 8684              		.size	_ZN6GCodes17LongArrayToBitMapEPKlj, .-_ZN6GCodes17LongArrayToBitMapEPKlj
 8685              		.weak	_ZTV10GCodeInput
 8686 002a 00BF     		.section	.rodata._ZTV10GCodeInput,"aG",%progbits,_ZTV10GCodeInput,comdat
 8687              		.align	3
 8688              		.type	_ZTV10GCodeInput, %object
 8689              		.size	_ZTV10GCodeInput, 20
 8690              	_ZTV10GCodeInput:
 8691 0000 00000000 		.word	0
 8692 0004 00000000 		.word	0
 8693 0008 00000000 		.word	__cxa_pure_virtual
 8694 000c 00000000 		.word	__cxa_pure_virtual
 8695 0010 00000000 		.word	__cxa_pure_virtual
 8696              		.global	HEATER_FAULT_G
 8697              		.global	DefaultHeightMapFile
 8698              		.global	HOME_DELTA_G
 8699              		.global	HOME_ALL_G
 8700              		.global	HomingFileNames
 8701              		.global	PAUSE_G
 8702              		.global	_ZN6GCodes11axisLettersE
 8703 0014 00000000 		.section	.data.HOME_ALL_G,"aw",%progbits
 8704              		.align	2
 8705              		.set	.LANCHOR2,. + 0
 8706              		.type	HOME_ALL_G, %object
 8707              		.size	HOME_ALL_G, 4
 8708              	HOME_ALL_G:
 8709 0000 F00B0000 		.word	.LC121
 8710              		.section	.rodata._ZN6GCodes11axisLettersE,"a",%progbits
 8711              		.align	2
 8712              		.set	.LANCHOR0,. + 0
 8713              		.type	_ZN6GCodes11axisLettersE, %object
 8714              		.size	_ZN6GCodes11axisLettersE, 6
 8715              	_ZN6GCodes11axisLettersE:
 8716 0000 58       		.byte	88
 8717 0001 59       		.byte	89
 8718 0002 5A       		.byte	90
 8719 0003 55       		.byte	85
 8720 0004 56       		.byte	86
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 154


 8721 0005 57       		.byte	87
 8722 0006 0000     		.section	.data.HomingFileNames,"aw",%progbits
 8723              		.align	2
 8724              		.set	.LANCHOR6,. + 0
 8725              		.type	HomingFileNames, %object
 8726              		.size	HomingFileNames, 24
 8727              	HomingFileNames:
 8728 0000 FC0B0000 		.word	.LC122
 8729 0004 040C0000 		.word	.LC123
 8730 0008 0C0C0000 		.word	.LC124
 8731 000c 140C0000 		.word	.LC125
 8732 0010 1C0C0000 		.word	.LC126
 8733 0014 240C0000 		.word	.LC127
 8734              		.section	.data.HEATER_FAULT_G,"aw",%progbits
 8735              		.align	2
 8736              		.set	.LANCHOR4,. + 0
 8737              		.type	HEATER_FAULT_G, %object
 8738              		.size	HEATER_FAULT_G, 4
 8739              	HEATER_FAULT_G:
 8740 0000 C80B0000 		.word	.LC118
 8741              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 8742              		.align	2
 8743              		.type	_ZL32cpu_irq_critical_section_counter, %object
 8744              		.size	_ZL32cpu_irq_critical_section_counter, 4
 8745              	_ZL32cpu_irq_critical_section_counter:
 8746 0000 00000000 		.space	4
 8747              		.section	.rodata.str1.4,"aMS",%progbits,1
 8748              		.align	2
 8749              	.LC0:
 8750 0000 50757368 		.ascii	"Push(): stack overflow!\012\000"
 8750      28293A20 
 8750      73746163 
 8750      6B206F76 
 8750      6572666C 
 8751 0019 000000   		.space	3
 8752              	.LC1:
 8753 001c 68747470 		.ascii	"http\000"
 8753      00
 8754 0021 000000   		.space	3
 8755              	.LC2:
 8756 0024 74656C6E 		.ascii	"telnet\000"
 8756      657400
 8757 002b 00       		.space	1
 8758              	.LC3:
 8759 002c 66696C65 		.ascii	"file\000"
 8759      00
 8760 0031 000000   		.space	3
 8761              	.LC4:
 8762 0034 73657269 		.ascii	"serial\000"
 8762      616C00
 8763 003b 00       		.space	1
 8764              	.LC5:
 8765 003c 61757800 		.ascii	"aux\000"
 8766              	.LC6:
 8767 0040 6461656D 		.ascii	"daemon\000"
 8767      6F6E00
 8768 0047 00       		.space	1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 155


 8769              	.LC7:
 8770 0048 71756575 		.ascii	"queue\000"
 8770      6500
 8771 004e 0000     		.space	2
 8772              	.LC8:
 8773 0050 47436F64 		.ascii	"GCodes class exited.\012\000"
 8773      65732063 
 8773      6C617373 
 8773      20657869 
 8773      7465642E 
 8774 0066 0000     		.space	2
 8775              	.LC9:
 8776 0068 3C212D2D 		.ascii	"<!-- **EoF** -->\000"
 8776      202A2A45 
 8776      6F462A2A 
 8776      202D2D3E 
 8776      00
 8777 0079 000000   		.space	3
 8778              	.LC10:
 8779 007c 456D6572 		.ascii	"Emergency Stop! Reset the controller to continue.\000"
 8779      67656E63 
 8779      79205374 
 8779      6F702120 
 8779      52657365 
 8780 00ae 0000     		.space	2
 8781              	.LC11:
 8782 00b0 50617573 		.ascii	"Paused print, file offset=%u\012\000"
 8782      65642070 
 8782      72696E74 
 8782      2C206669 
 8782      6C65206F 
 8783 00ce 0000     		.space	2
 8784              	.LC12:
 8785 00d0 6E756C6C 		.ascii	"null\000"
 8785      00
 8786 00d5 000000   		.space	3
 8787              	.LC13:
 8788 00d8 3D3D3D20 		.ascii	"=== GCodes ===\012\000"
 8788      47436F64 
 8788      6573203D 
 8788      3D3D0A00 
 8789              	.LC14:
 8790 00e8 5365676D 		.ascii	"Segments left: %u\012\000"
 8790      656E7473 
 8790      206C6566 
 8790      743A2025 
 8790      750A00
 8791 00fb 00       		.space	1
 8792              	.LC15:
 8793 00fc 53746163 		.ascii	"Stack records: %u allocated, %u in use\012\000"
 8793      6B207265 
 8793      636F7264 
 8793      733A2025 
 8793      7520616C 
 8794              	.LC16:
 8795 0124 4D6F7665 		.ascii	"Movement lock held by %s\012\000"
 8795      6D656E74 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 156


 8795      206C6F63 
 8795      6B206865 
 8795      6C642062 
 8796 013e 0000     		.space	2
 8797              	.LC17:
 8798 0140 506F7028 		.ascii	"Pop(): stack underflow!\012\000"
 8798      293A2073 
 8798      7461636B 
 8798      20756E64 
 8798      6572666C 
 8799 0159 000000   		.space	3
 8800              	.LC18:
 8801 015c 57726F6E 		.ascii	"Wrong number of extruder drives for the selected to"
 8801      67206E75 
 8801      6D626572 
 8801      206F6620 
 8801      65787472 
 8802 018f 6F6C3A20 		.ascii	"ol: %s\012\000"
 8802      25730A00 
 8803 0197 00       		.space	1
 8804              	.LC19:
 8805 0198 41747465 		.ascii	"Attempt to move the motors of a delta printer to ab"
 8805      6D707420 
 8805      746F206D 
 8805      6F766520 
 8805      74686520 
 8806 01cb 736F6C75 		.ascii	"solute positions\000"
 8806      74652070 
 8806      6F736974 
 8806      696F6E73 
 8806      00
 8807              	.LC20:
 8808 01dc 303A2F73 		.ascii	"0:/sys/\000"
 8808      79732F00 
 8809              	.LC21:
 8810 01e4 4D616372 		.ascii	"Macro file %s not found.\012\000"
 8810      6F206669 
 8810      6C652025 
 8810      73206E6F 
 8810      7420666F 
 8811 01fe 0000     		.space	2
 8812              	.LC22:
 8813 0200 303A2F73 		.ascii	"0:/sys/trigger%u.g\000"
 8813      79732F74 
 8813      72696767 
 8813      65722575 
 8813      2E6700
 8814 0213 00       		.space	1
 8815              	.LC23:
 8816 0214 4D757374 		.ascii	"Must home all other axes before homing Z\000"
 8816      20686F6D 
 8816      6520616C 
 8816      6C206F74 
 8816      68657220 
 8817 023d 000000   		.space	3
 8818              	.LC24:
 8819 0240 54687265 		.ascii	"Threshold %d, trigger height %.2f, offsets X%.1f Y%"
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 157


 8819      73686F6C 
 8819      64202564 
 8819      2C207472 
 8819      69676765 
 8820 0273 2E316600 		.ascii	".1f\000"
 8821 0277 00       		.space	1
 8822              	.LC25:
 8823 0278 25642028 		.ascii	"%d (%d)\000"
 8823      25642900 
 8824              	.LC26:
 8825 0280 25642028 		.ascii	"%d (%d, %d)\000"
 8825      25642C20 
 8825      25642900 
 8826              	.LC27:
 8827 028c 256400   		.ascii	"%d\000"
 8828 028f 00       		.space	1
 8829              	.LC28:
 8830 0290 57726F6E 		.ascii	"Wrong number of X values in M577, need 2\000"
 8830      67206E75 
 8830      6D626572 
 8830      206F6620 
 8830      58207661 
 8831 02b9 000000   		.space	3
 8832              	.LC29:
 8833 02bc 57726F6E 		.ascii	"Wrong number of Y values in M577, need 2\000"
 8833      67206E75 
 8833      6D626572 
 8833      206F6620 
 8833      59207661 
 8834 02e5 000000   		.space	3
 8835              	.LC30:
 8836 02e8 47726964 		.ascii	"Grid: \000"
 8836      3A2000
 8837 02ef 00       		.space	1
 8838              	.LC31:
 8839 02f0 47726964 		.ascii	"Grid is not defined\000"
 8839      20697320 
 8839      6E6F7420 
 8839      64656669 
 8839      6E656400 
 8840              	.LC32:
 8841 0304 73706563 		.ascii	"specify both or neither of X and Y in M577\000"
 8841      69667920 
 8841      626F7468 
 8841      206F7220 
 8841      6E656974 
 8842 032f 00       		.space	1
 8843              	.LC33:
 8844 0330 73706563 		.ascii	"specify at least radius or X,Y ranges in M577\000"
 8844      69667920 
 8844      6174206C 
 8844      65617374 
 8844      20726164 
 8845 035e 0000     		.space	2
 8846              	.LC34:
 8847 0360 4D353737 		.ascii	"M577 radius must be positive unless X and Y are spe"
 8847      20726164 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 158


 8847      69757320 
 8847      6D757374 
 8847      20626520 
 8848 0393 63696669 		.ascii	"cified\000"
 8848      656400
 8849 039a 0000     		.space	2
 8850              	.LC35:
 8851 039c 62616420 		.ascii	"bad grid definition: \000"
 8851      67726964 
 8851      20646566 
 8851      696E6974 
 8851      696F6E3A 
 8852 03b2 0000     		.space	2
 8853              	.LC36:
 8854 03b4 4E6F2076 		.ascii	"No valid grid defined for G29 bed probing\000"
 8854      616C6964 
 8854      20677269 
 8854      64206465 
 8854      66696E65 
 8855 03de 0000     		.space	2
 8856              	.LC37:
 8857 03e0 4D757374 		.ascii	"Must home printer before G29 bed probing\000"
 8857      20686F6D 
 8857      65207072 
 8857      696E7465 
 8857      72206265 
 8858 0409 000000   		.space	3
 8859              	.LC38:
 8860 040c 48656967 		.ascii	"Height map file %s not found\000"
 8860      6874206D 
 8860      61702066 
 8860      696C6520 
 8860      2573206E 
 8861 0429 000000   		.space	3
 8862              	.LC39:
 8863 042c 4661696C 		.ascii	"Failed to load height map from file %s: \000"
 8863      65642074 
 8863      6F206C6F 
 8863      61642068 
 8863      65696768 
 8864 0455 000000   		.space	3
 8865              	.LC40:
 8866 0458 4E6F2068 		.ascii	"No height map file name provided\000"
 8866      65696768 
 8866      74206D61 
 8866      70206669 
 8866      6C65206E 
 8867 0479 000000   		.space	3
 8868              	.LC41:
 8869 047c 4661696C 		.ascii	"Failed to create height map file %s\000"
 8869      65642074 
 8869      6F206372 
 8869      65617465 
 8869      20686569 
 8870              	.LC42:
 8871 04a0 4661696C 		.ascii	"Failed to save height map to file %s\000"
 8871      65642074 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 159


 8871      6F207361 
 8871      76652068 
 8871      65696768 
 8872 04c5 000000   		.space	3
 8873              	.LC43:
 8874 04c8 48656967 		.ascii	"Height map saved to file %s\000"
 8874      6874206D 
 8874      61702073 
 8874      61766564 
 8874      20746F20 
 8875              	.LC44:
 8876 04e4 25633A20 		.ascii	"%c: %.3f \000"
 8876      252E3366 
 8876      2000
 8877 04ee 0000     		.space	2
 8878              	.LC45:
 8879 04f0 4525753A 		.ascii	"E%u: %.1f \000"
 8879      20252E31 
 8879      662000
 8880 04fb 00       		.space	1
 8881              	.LC46:
 8882 04fc 20436F75 		.ascii	" Count\000"
 8882      6E7400
 8883 0503 00       		.space	1
 8884              	.LC47:
 8885 0504 20256400 		.ascii	" %d\000"
 8886              	.LC48:
 8887 0508 43616E27 		.ascii	"Can't open GCode file \"%s\" for writing.\012\000"
 8887      74206F70 
 8887      656E2047 
 8887      436F6465 
 8887      2066696C 
 8888 0531 000000   		.space	3
 8889              	.LC49:
 8890 0534 303A2F67 		.ascii	"0:/gcodes/\000"
 8890      636F6465 
 8890      732F00
 8891 053f 00       		.space	1
 8892              	.LC50:
 8893 0540 436F756C 		.ascii	"Could not delete file \"%s\"\012\000"
 8893      64206E6F 
 8893      74206465 
 8893      6C657465 
 8893      2066696C 
 8894              	.LC51:
 8895 055c 41747465 		.ascii	"Attempt to set/report offsets and temperatures for "
 8895      6D707420 
 8895      746F2073 
 8895      65742F72 
 8895      65706F72 
 8896 058f 6E6F6E2D 		.ascii	"non-existent tool: %d\000"
 8896      65786973 
 8896      74656E74 
 8896      20746F6F 
 8896      6C3A2025 
 8897 05a5 000000   		.space	3
 8898              	.LC52:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 160


 8899 05a8 546F6F6C 		.ascii	"Tool %d offsets:\000"
 8899      20256420 
 8899      6F666673 
 8899      6574733A 
 8899      00
 8900 05b9 000000   		.space	3
 8901              	.LC53:
 8902 05bc 20256325 		.ascii	" %c%.2f\000"
 8902      2E326600 
 8903              	.LC54:
 8904 05c4 2C206163 		.ascii	", active/standby temperature(s):\000"
 8904      74697665 
 8904      2F737461 
 8904      6E646279 
 8904      2074656D 
 8905 05e5 000000   		.space	3
 8906              	.LC55:
 8907 05e8 20252E31 		.ascii	" %.1f/%.1f\000"
 8907      662F252E 
 8907      316600
 8908 05f3 00       		.space	1
 8909              	.LC56:
 8910 05f4 546F6F6C 		.ascii	"Tool number must be positive!\012\000"
 8910      206E756D 
 8910      62657220 
 8910      6D757374 
 8910      20626520 
 8911 0613 00       		.space	1
 8912              	.LC57:
 8913 0614 44756420 		.ascii	"Dud IP address: %s\012\000"
 8913      49502061 
 8913      64647265 
 8913      73733A20 
 8913      25730A00 
 8914              	.LC58:
 8915 0628 53657474 		.ascii	"Setting ether parameter - dud code.\012\000"
 8915      696E6720 
 8915      65746865 
 8915      72207061 
 8915      72616D65 
 8916 064d 000000   		.space	3
 8917              	.LC59:
 8918 0650 44756420 		.ascii	"Dud MAC address: %s\012\000"
 8918      4D414320 
 8918      61646472 
 8918      6573733A 
 8918      2025730A 
 8919 0665 000000   		.space	3
 8920              	.LC60:
 8921 0668 6F6B00   		.ascii	"ok\000"
 8922 066b 00       		.space	1
 8923              	.LC61:
 8924 066c 72732000 		.ascii	"rs \000"
 8925              	.LC62:
 8926 0670 74656163 		.ascii	"teacup\000"
 8926      757000
 8927 0677 00       		.space	1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 161


 8928              	.LC63:
 8929 0678 73707269 		.ascii	"sprinter\000"
 8929      6E746572 
 8929      00
 8930 0681 000000   		.space	3
 8931              	.LC64:
 8932 0684 72657065 		.ascii	"repetier\000"
 8932      74696572 
 8932      00
 8933 068d 000000   		.space	3
 8934              	.LC65:
 8935 0690 756E6B6E 		.ascii	"unknown\000"
 8935      6F776E00 
 8936              	.LC66:
 8937 0698 4572726F 		.ascii	"Error: \000"
 8937      723A2000 
 8938              	.LC67:
 8939 06a0 0A00     		.ascii	"\012\000"
 8940 06a2 0000     		.space	2
 8941              	.LC68:
 8942 06a4 456D756C 		.ascii	"Emulation of %s is not yet supported.\012\000"
 8942      6174696F 
 8942      6E206F66 
 8942      20257320 
 8942      6973206E 
 8943 06cb 00       		.space	1
 8944              	.LC69:
 8945 06cc 2000     		.ascii	" \000"
 8946 06ce 0000     		.space	2
 8947              	.LC70:
 8948 06d0 446F6E65 		.ascii	"Done saving file.\000"
 8948      20736176 
 8948      696E6720 
 8948      66696C65 
 8948      2E00
 8949 06e2 0000     		.space	2
 8950              	.LC71:
 8951 06e4 00       		.ascii	"\000"
 8952 06e5 000000   		.space	3
 8953              	.LC72:
 8954 06e8 41747465 		.ascii	"Attempt to write to a null file.\012\000"
 8954      6D707420 
 8954      746F2077 
 8954      72697465 
 8954      20746F20 
 8955 070a 0000     		.space	2
 8956              	.LC73:
 8957 070c 25640A00 		.ascii	"%d\012\000"
 8958              	.LC74:
 8959 0710 42656769 		.ascii	"Begin file list\012\000"
 8959      6E206669 
 8959      6C65206C 
 8959      6973740A 
 8959      00
 8960 0721 000000   		.space	3
 8961              	.LC75:
 8962 0724 456E6420 		.ascii	"End file list\012\000"
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 162


 8962      66696C65 
 8962      206C6973 
 8962      740A00
 8963 0733 00       		.space	1
 8964              	.LC76:
 8965 0734 48656174 		.ascii	"Heater %d is in bang-bang mode\000"
 8965      65722025 
 8965      64206973 
 8965      20696E20 
 8965      62616E67 
 8966 0753 00       		.space	1
 8967              	.LC77:
 8968 0754 48656174 		.ascii	"Heater %d P:%.1f I:%.3f D:%.1f\000"
 8968      65722025 
 8968      6420503A 
 8968      252E3166 
 8968      20493A25 
 8969 0773 00       		.space	1
 8970              	.LC78:
 8971 0774 48656174 		.ascii	"Heater %d uses model-derived PID parameters. Use M3"
 8971      65722025 
 8971      64207573 
 8971      6573206D 
 8971      6F64656C 
 8972 07a7 30372048 		.ascii	"07 H%d to view them\000"
 8972      25642074 
 8972      6F207669 
 8972      65772074 
 8972      68656D00 
 8973 07bb 00       		.space	1
 8974              	.LC79:
 8975 07bc 54686572 		.ascii	"Thermistor number %d is out of range\012\000"
 8975      6D697374 
 8975      6F72206E 
 8975      756D6265 
 8975      72202564 
 8976 07e2 0000     		.space	2
 8977              	.LC80:
 8978 07e4 543A252E 		.ascii	"T:%.1f B:%.1f C:%.2e R:%.1f L:%d H:%d X:%d\000"
 8978      31662042 
 8978      3A252E31 
 8978      6620433A 
 8978      252E3265 
 8979 080f 00       		.space	1
 8980              	.LC81:
 8981 0810 48656174 		.ascii	"Heater number %d is out of range\012\000"
 8981      6572206E 
 8981      756D6265 
 8981      72202564 
 8981      20697320 
 8982 0832 0000     		.space	2
 8983              	.LC82:
 8984 0834 53657474 		.ascii	"Setting temperature: no tool selected.\012\000"
 8984      696E6720 
 8984      74656D70 
 8984      65726174 
 8984      7572653A 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 163


 8985              	.LC83:
 8986 085c 47436F64 		.ascii	"GCode file \"%s\" not found\012\000"
 8986      65206669 
 8986      6C652022 
 8986      25732220 
 8986      6E6F7420 
 8987 0877 00       		.space	1
 8988              	.LC84:
 8989 0878 4572726F 		.ascii	"Error: Z probe already triggered at start of probin"
 8989      723A205A 
 8989      2070726F 
 8989      62652061 
 8989      6C726561 
 8990 08ab 67206D6F 		.ascii	"g move\012\000"
 8990      76650A00 
 8991 08b3 00       		.space	1
 8992              	.LC85:
 8993 08b4 4572726F 		.ascii	"Error: Z probe was not triggered during probing mov"
 8993      723A205A 
 8993      2070726F 
 8993      62652077 
 8993      6173206E 
 8994 08e7 650A00   		.ascii	"e\012\000"
 8995 08ea 0000     		.space	2
 8996              	.LC86:
 8997 08ec 53746F70 		.ascii	"Stopped at height %.3f mm\000"
 8997      70656420 
 8997      61742068 
 8997      65696768 
 8997      7420252E 
 8998 0906 0000     		.space	2
 8999              	.LC87:
 9000 0908 5A207072 		.ascii	"Z probe point index out of range.\012\000"
 9000      6F626520 
 9000      706F696E 
 9000      7420696E 
 9000      64657820 
 9001 092b 00       		.space	1
 9002              	.LC88:
 9003 092c 4D757374 		.ascii	"Must home before bed probing\000"
 9003      20686F6D 
 9003      65206265 
 9003      666F7265 
 9003      20626564 
 9004 0949 000000   		.space	3
 9005              	.LC89:
 9006 094c 6E6F7420 		.ascii	"not stopped\000"
 9006      73746F70 
 9006      70656400 
 9007              	.LC90:
 9008 0958 286E6F6E 		.ascii	"(none)\000"
 9008      652900
 9009 095f 00       		.space	1
 9010              	.LC91:
 9011 0960 45256400 		.ascii	"E%d\000"
 9012              	.LC92:
 9013 0964 303A00   		.ascii	"0:\000"
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 164


 9014 0967 00       		.space	1
 9015              	.LC93:
 9016 0968 257800   		.ascii	"%x\000"
 9017 096b 00       		.space	1
 9018              	.LC94:
 9019 096c 4661696C 		.ascii	"Failed to create file %s\000"
 9019      65642074 
 9019      6F206372 
 9019      65617465 
 9019      2066696C 
 9020 0985 000000   		.space	3
 9021              	.LC95:
 9022 0988 3B205468 		.ascii	"; This is a system-generated file - do not edit\012"
 9022      69732069 
 9022      73206120 
 9022      73797374 
 9022      656D2D67 
 9023 09b8 00       		.ascii	"\000"
 9024 09b9 000000   		.space	3
 9025              	.LC96:
 9026 09bc 4661696C 		.ascii	"Failed to write file %s\000"
 9026      65642074 
 9026      6F207772 
 9026      69746520 
 9026      66696C65 
 9027              	.LC97:
 9028 09d4 543A00   		.ascii	"T:\000"
 9029 09d7 00       		.space	1
 9030              	.LC98:
 9031 09d8 252E3166 		.ascii	"%.1f \000"
 9031      2000
 9032 09de 0000     		.space	2
 9033              	.LC99:
 9034 09e0 423A252E 		.ascii	"B:%.1f\000"
 9034      316600
 9035 09e7 00       		.space	1
 9036              	.LC100:
 9037 09e8 423A302E 		.ascii	"B:0.0\000"
 9037      3000
 9038 09ee 0000     		.space	2
 9039              	.LC101:
 9040 09f0 20433A25 		.ascii	" C:%.1f\000"
 9040      2E316600 
 9041              	.LC102:
 9042 09f8 446F6E65 		.ascii	"Done printing file\000"
 9042      20707269 
 9042      6E74696E 
 9042      67206669 
 9042      6C6500
 9043 0a0b 00       		.space	1
 9044              	.LC103:
 9045 0a0c 5072696E 		.ascii	"Printing paused\000"
 9045      74696E67 
 9045      20706175 
 9045      73656400 
 9046              	.LC104:
 9047 0a1c 5072696E 		.ascii	"Printing resumed\000"
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 165


 9047      74696E67 
 9047      20726573 
 9047      756D6564 
 9047      00
 9048 0a2d 000000   		.space	3
 9049              	.LC105:
 9050 0a30 5A207072 		.ascii	"Z probe already triggered before probing move start"
 9050      6F626520 
 9050      616C7265 
 9050      61647920 
 9050      74726967 
 9051 0a63 656400   		.ascii	"ed\000"
 9052 0a66 0000     		.space	2
 9053              	.LC106:
 9054 0a68 5A207072 		.ascii	"Z probe was not triggered during probing move\000"
 9054      6F626520 
 9054      77617320 
 9054      6E6F7420 
 9054      74726967 
 9055 0a96 0000     		.space	2
 9056              	.LC107:
 9057 0a98 25752070 		.ascii	"%u points probed, mean error %.3f, deviation %.3f\012"
 9057      6F696E74 
 9057      73207072 
 9057      6F626564 
 9057      2C206D65 
 9058 0aca 00       		.ascii	"\000"
 9059 0acb 00       		.space	1
 9060              	.LC108:
 9061 0acc 546F6F20 		.ascii	"Too few points probed\000"
 9061      66657720 
 9061      706F696E 
 9061      74732070 
 9061      726F6265 
 9062 0ae2 0000     		.space	2
 9063              	.LC109:
 9064 0ae4 4572726F 		.ascii	"Error: undefined GCodeState\012\000"
 9064      723A2075 
 9064      6E646566 
 9064      696E6564 
 9064      2047436F 
 9065 0b01 000000   		.space	3
 9066              	.LC110:
 9067 0b04 41747465 		.ascii	"Attempting to extrude with no tool selected.\012\000"
 9067      6D707469 
 9067      6E672074 
 9067      6F206578 
 9067      74727564 
 9068 0b32 0000     		.space	2
 9069              	.LC111:
 9070 0b34 41747465 		.ascii	"Attempt to move the head of a delta printer before "
 9070      6D707420 
 9070      746F206D 
 9070      6F766520 
 9070      74686520 
 9071 0b67 686F6D69 		.ascii	"homing the towers\012\000"
 9071      6E672074 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 166


 9071      68652074 
 9071      6F776572 
 9071      730A00
 9072 0b7a 0000     		.space	2
 9073              	.LC112:
 9074 0b7c 74667265 		.ascii	"tfree%d.g\000"
 9074      6525642E 
 9074      6700
 9075 0b86 0000     		.space	2
 9076              	.LC113:
 9077 0b88 74707265 		.ascii	"tpre%d.g\000"
 9077      25642E67 
 9077      00
 9078 0b91 000000   		.space	3
 9079              	.LC114:
 9080 0b94 74706F73 		.ascii	"tpost%d.g\000"
 9080      7425642E 
 9080      6700
 9081 0b9e 0000     		.space	2
 9082              	.LC115:
 9083 0ba0 6174206D 		.ascii	"at min stop\000"
 9083      696E2073 
 9083      746F7000 
 9084              	.LC116:
 9085 0bac 6174206D 		.ascii	"at max stop\000"
 9085      61782073 
 9085      746F7000 
 9086              	.LC117:
 9087 0bb8 6E656172 		.ascii	"near min stop\000"
 9087      206D696E 
 9087      2073746F 
 9087      7000
 9088 0bc6 0000     		.space	2
 9089              	.LC118:
 9090 0bc8 68656174 		.ascii	"heatfault.g\000"
 9090      6661756C 
 9090      742E6700 
 9091              	.LC119:
 9092 0bd4 68656967 		.ascii	"heightmap.csv\000"
 9092      68746D61 
 9092      702E6373 
 9092      7600
 9093 0be2 0000     		.space	2
 9094              	.LC120:
 9095 0be4 686F6D65 		.ascii	"homedelta.g\000"
 9095      64656C74 
 9095      612E6700 
 9096              	.LC121:
 9097 0bf0 686F6D65 		.ascii	"homeall.g\000"
 9097      616C6C2E 
 9097      6700
 9098 0bfa 0000     		.space	2
 9099              	.LC122:
 9100 0bfc 686F6D65 		.ascii	"homex.g\000"
 9100      782E6700 
 9101              	.LC123:
 9102 0c04 686F6D65 		.ascii	"homey.g\000"
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cccCvUst.s 			page 167


 9102      792E6700 
 9103              	.LC124:
 9104 0c0c 686F6D65 		.ascii	"homez.g\000"
 9104      7A2E6700 
 9105              	.LC125:
 9106 0c14 686F6D65 		.ascii	"homeu.g\000"
 9106      752E6700 
 9107              	.LC126:
 9108 0c1c 686F6D65 		.ascii	"homev.g\000"
 9108      762E6700 
 9109              	.LC127:
 9110 0c24 686F6D65 		.ascii	"homew.g\000"
 9110      772E6700 
 9111              	.LC128:
 9112 0c2c 70617573 		.ascii	"pause.g\000"
 9112      652E6700 
 9113              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 9114              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 9115              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 9116              	_ZL28cpu_irq_prev_interrupt_state:
 9117 0000 00       		.space	1
 9118              		.section	.data.HOME_DELTA_G,"aw",%progbits
 9119              		.align	2
 9120              		.set	.LANCHOR1,. + 0
 9121              		.type	HOME_DELTA_G, %object
 9122              		.size	HOME_DELTA_G, 4
 9123              	HOME_DELTA_G:
 9124 0000 E40B0000 		.word	.LC120
 9125              		.section	.rodata.CSWTCH.522,"a",%progbits
 9126              		.align	2
 9127              		.set	.LANCHOR5,. + 0
 9128              		.type	CSWTCH.522, %object
 9129              		.size	CSWTCH.522, 12
 9130              	CSWTCH.522:
 9131 0000 A00B0000 		.word	.LC115
 9132 0004 AC0B0000 		.word	.LC116
 9133 0008 B80B0000 		.word	.LC117
 9134              		.section	.data.DefaultHeightMapFile,"aw",%progbits
 9135              		.align	2
 9136              		.set	.LANCHOR3,. + 0
 9137              		.type	DefaultHeightMapFile, %object
 9138              		.size	DefaultHeightMapFile, 4
 9139              	DefaultHeightMapFile:
 9140 0000 D40B0000 		.word	.LC119
 9141              		.section	.data.PAUSE_G,"aw",%progbits
 9142              		.align	2
 9143              		.set	.LANCHOR7,. + 0
 9144              		.type	PAUSE_G, %object
 9145              		.size	PAUSE_G, 4
 9146              	PAUSE_G:
 9147 0000 2C0C0000 		.word	.LC128
 9148              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
