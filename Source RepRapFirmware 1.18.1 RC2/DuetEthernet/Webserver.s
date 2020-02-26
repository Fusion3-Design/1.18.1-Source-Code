ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 1


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
  15              		.file	"Webserver.cpp"
  16              		.section	.text._ZN19ProtocolInterpreterD2Ev,"axG",%progbits,_ZN19ProtocolInterpreterD5Ev,comdat
  17              		.align	2
  18              		.weak	_ZN19ProtocolInterpreterD2Ev
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN19ProtocolInterpreterD2Ev, %function
  22              	_ZN19ProtocolInterpreterD2Ev:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 014B     		ldr	r3, .L2
  27 0002 0360     		str	r3, [r0]
  28 0004 7047     		bx	lr
  29              	.L3:
  30 0006 00BF     		.align	2
  31              	.L2:
  32 0008 08000000 		.word	.LANCHOR0+8
  33              		.size	_ZN19ProtocolInterpreterD2Ev, .-_ZN19ProtocolInterpreterD2Ev
  34              		.weak	_ZN19ProtocolInterpreterD1Ev
  35              		.thumb_set _ZN19ProtocolInterpreterD1Ev,_ZN19ProtocolInterpreterD2Ev
  36              		.section	.text._ZN19ProtocolInterpreter14ConnectionLostEP6Socket,"axG",%progbits,_ZN19ProtocolInte
  37              		.align	2
  38              		.weak	_ZN19ProtocolInterpreter14ConnectionLostEP6Socket
  39              		.thumb
  40              		.thumb_func
  41              		.type	_ZN19ProtocolInterpreter14ConnectionLostEP6Socket, %function
  42              	_ZN19ProtocolInterpreter14ConnectionLostEP6Socket:
  43              		@ args = 0, pretend = 0, frame = 0
  44              		@ frame_needed = 0, uses_anonymous_args = 0
  45              		@ link register save eliminated.
  46 0000 7047     		bx	lr
  47              		.size	_ZN19ProtocolInterpreter14ConnectionLostEP6Socket, .-_ZN19ProtocolInterpreter14ConnectionLos
  48 0002 00BF     		.section	.text._ZN19ProtocolInterpreter12CanParseDataEv,"axG",%progbits,_ZN19ProtocolInterpreter12
  49              		.align	2
  50              		.weak	_ZN19ProtocolInterpreter12CanParseDataEv
  51              		.thumb
  52              		.thumb_func
  53              		.type	_ZN19ProtocolInterpreter12CanParseDataEv, %function
  54              	_ZN19ProtocolInterpreter12CanParseDataEv:
  55              		@ args = 0, pretend = 0, frame = 0
  56              		@ frame_needed = 0, uses_anonymous_args = 0
  57              		@ link register save eliminated.
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 2


  58 0000 0120     		movs	r0, #1
  59 0002 7047     		bx	lr
  60              		.size	_ZN19ProtocolInterpreter12CanParseDataEv, .-_ZN19ProtocolInterpreter12CanParseDataEv
  61              		.section	.text._ZNK19ProtocolInterpreter15DoingFastUploadEv,"axG",%progbits,_ZNK19ProtocolInterpre
  62              		.align	2
  63              		.weak	_ZNK19ProtocolInterpreter15DoingFastUploadEv
  64              		.thumb
  65              		.thumb_func
  66              		.type	_ZNK19ProtocolInterpreter15DoingFastUploadEv, %function
  67              	_ZNK19ProtocolInterpreter15DoingFastUploadEv:
  68              		@ args = 0, pretend = 0, frame = 0
  69              		@ frame_needed = 0, uses_anonymous_args = 0
  70              		@ link register save eliminated.
  71 0000 0020     		movs	r0, #0
  72 0002 7047     		bx	lr
  73              		.size	_ZNK19ProtocolInterpreter15DoingFastUploadEv, .-_ZNK19ProtocolInterpreter15DoingFastUploadEv
  74              		.section	.text._ZN9Webserver17TelnetInterpreterD2Ev,"axG",%progbits,_ZN9Webserver17TelnetInterpret
  75              		.align	2
  76              		.weak	_ZN9Webserver17TelnetInterpreterD2Ev
  77              		.thumb
  78              		.thumb_func
  79              		.type	_ZN9Webserver17TelnetInterpreterD2Ev, %function
  80              	_ZN9Webserver17TelnetInterpreterD2Ev:
  81              		@ args = 0, pretend = 0, frame = 0
  82              		@ frame_needed = 0, uses_anonymous_args = 0
  83              		@ link register save eliminated.
  84 0000 014B     		ldr	r3, .L8
  85 0002 0360     		str	r3, [r0]
  86 0004 7047     		bx	lr
  87              	.L9:
  88 0006 00BF     		.align	2
  89              	.L8:
  90 0008 08000000 		.word	.LANCHOR0+8
  91              		.size	_ZN9Webserver17TelnetInterpreterD2Ev, .-_ZN9Webserver17TelnetInterpreterD2Ev
  92              		.weak	_ZN9Webserver17TelnetInterpreterD1Ev
  93              		.thumb_set _ZN9Webserver17TelnetInterpreterD1Ev,_ZN9Webserver17TelnetInterpreterD2Ev
  94              		.section	.text._ZN9Webserver14FtpInterpreterD2Ev,"axG",%progbits,_ZN9Webserver14FtpInterpreterD5Ev
  95              		.align	2
  96              		.weak	_ZN9Webserver14FtpInterpreterD2Ev
  97              		.thumb
  98              		.thumb_func
  99              		.type	_ZN9Webserver14FtpInterpreterD2Ev, %function
 100              	_ZN9Webserver14FtpInterpreterD2Ev:
 101              		@ args = 0, pretend = 0, frame = 0
 102              		@ frame_needed = 0, uses_anonymous_args = 0
 103              		@ link register save eliminated.
 104 0000 014B     		ldr	r3, .L11
 105 0002 0360     		str	r3, [r0]
 106 0004 7047     		bx	lr
 107              	.L12:
 108 0006 00BF     		.align	2
 109              	.L11:
 110 0008 08000000 		.word	.LANCHOR0+8
 111              		.size	_ZN9Webserver14FtpInterpreterD2Ev, .-_ZN9Webserver14FtpInterpreterD2Ev
 112              		.weak	_ZN9Webserver14FtpInterpreterD1Ev
 113              		.thumb_set _ZN9Webserver14FtpInterpreterD1Ev,_ZN9Webserver14FtpInterpreterD2Ev
 114              		.section	.text._ZN9Webserver15HttpInterpreterD2Ev,"axG",%progbits,_ZN9Webserver15HttpInterpreterD5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 3


 115              		.align	2
 116              		.weak	_ZN9Webserver15HttpInterpreterD2Ev
 117              		.thumb
 118              		.thumb_func
 119              		.type	_ZN9Webserver15HttpInterpreterD2Ev, %function
 120              	_ZN9Webserver15HttpInterpreterD2Ev:
 121              		@ args = 0, pretend = 0, frame = 0
 122              		@ frame_needed = 0, uses_anonymous_args = 0
 123              		@ link register save eliminated.
 124 0000 014B     		ldr	r3, .L14
 125 0002 0360     		str	r3, [r0]
 126 0004 7047     		bx	lr
 127              	.L15:
 128 0006 00BF     		.align	2
 129              	.L14:
 130 0008 08000000 		.word	.LANCHOR0+8
 131              		.size	_ZN9Webserver15HttpInterpreterD2Ev, .-_ZN9Webserver15HttpInterpreterD2Ev
 132              		.weak	_ZN9Webserver15HttpInterpreterD1Ev
 133              		.thumb_set _ZN9Webserver15HttpInterpreterD1Ev,_ZN9Webserver15HttpInterpreterD2Ev
 134              		.section	.text._ZN19ProtocolInterpreterD0Ev,"axG",%progbits,_ZN19ProtocolInterpreterD0Ev,comdat
 135              		.align	2
 136              		.weak	_ZN19ProtocolInterpreterD0Ev
 137              		.thumb
 138              		.thumb_func
 139              		.type	_ZN19ProtocolInterpreterD0Ev, %function
 140              	_ZN19ProtocolInterpreterD0Ev:
 141              		@ args = 0, pretend = 0, frame = 0
 142              		@ frame_needed = 0, uses_anonymous_args = 0
 143 0000 10B5     		push	{r4, lr}
 144 0002 034B     		ldr	r3, .L17
 145 0004 0360     		str	r3, [r0]
 146 0006 0446     		mov	r4, r0
 147 0008 FFF7FEFF 		bl	_ZdlPv
 148 000c 2046     		mov	r0, r4
 149 000e 10BD     		pop	{r4, pc}
 150              	.L18:
 151              		.align	2
 152              	.L17:
 153 0010 08000000 		.word	.LANCHOR0+8
 154              		.size	_ZN19ProtocolInterpreterD0Ev, .-_ZN19ProtocolInterpreterD0Ev
 155              		.section	.text._ZN9Webserver17TelnetInterpreterD0Ev,"axG",%progbits,_ZN9Webserver17TelnetInterpret
 156              		.align	2
 157              		.weak	_ZN9Webserver17TelnetInterpreterD0Ev
 158              		.thumb
 159              		.thumb_func
 160              		.type	_ZN9Webserver17TelnetInterpreterD0Ev, %function
 161              	_ZN9Webserver17TelnetInterpreterD0Ev:
 162              		@ args = 0, pretend = 0, frame = 0
 163              		@ frame_needed = 0, uses_anonymous_args = 0
 164 0000 10B5     		push	{r4, lr}
 165 0002 034B     		ldr	r3, .L20
 166 0004 0360     		str	r3, [r0]
 167 0006 0446     		mov	r4, r0
 168 0008 FFF7FEFF 		bl	_ZdlPv
 169 000c 2046     		mov	r0, r4
 170 000e 10BD     		pop	{r4, pc}
 171              	.L21:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 4


 172              		.align	2
 173              	.L20:
 174 0010 08000000 		.word	.LANCHOR0+8
 175              		.size	_ZN9Webserver17TelnetInterpreterD0Ev, .-_ZN9Webserver17TelnetInterpreterD0Ev
 176              		.section	.text._ZN9Webserver14FtpInterpreterD0Ev,"axG",%progbits,_ZN9Webserver14FtpInterpreterD0Ev
 177              		.align	2
 178              		.weak	_ZN9Webserver14FtpInterpreterD0Ev
 179              		.thumb
 180              		.thumb_func
 181              		.type	_ZN9Webserver14FtpInterpreterD0Ev, %function
 182              	_ZN9Webserver14FtpInterpreterD0Ev:
 183              		@ args = 0, pretend = 0, frame = 0
 184              		@ frame_needed = 0, uses_anonymous_args = 0
 185 0000 10B5     		push	{r4, lr}
 186 0002 034B     		ldr	r3, .L23
 187 0004 0360     		str	r3, [r0]
 188 0006 0446     		mov	r4, r0
 189 0008 FFF7FEFF 		bl	_ZdlPv
 190 000c 2046     		mov	r0, r4
 191 000e 10BD     		pop	{r4, pc}
 192              	.L24:
 193              		.align	2
 194              	.L23:
 195 0010 08000000 		.word	.LANCHOR0+8
 196              		.size	_ZN9Webserver14FtpInterpreterD0Ev, .-_ZN9Webserver14FtpInterpreterD0Ev
 197              		.section	.text._ZN9Webserver15HttpInterpreterD0Ev,"axG",%progbits,_ZN9Webserver15HttpInterpreterD0
 198              		.align	2
 199              		.weak	_ZN9Webserver15HttpInterpreterD0Ev
 200              		.thumb
 201              		.thumb_func
 202              		.type	_ZN9Webserver15HttpInterpreterD0Ev, %function
 203              	_ZN9Webserver15HttpInterpreterD0Ev:
 204              		@ args = 0, pretend = 0, frame = 0
 205              		@ frame_needed = 0, uses_anonymous_args = 0
 206 0000 10B5     		push	{r4, lr}
 207 0002 034B     		ldr	r3, .L26
 208 0004 0360     		str	r3, [r0]
 209 0006 0446     		mov	r4, r0
 210 0008 FFF7FEFF 		bl	_ZdlPv
 211 000c 2046     		mov	r0, r4
 212 000e 10BD     		pop	{r4, pc}
 213              	.L27:
 214              		.align	2
 215              	.L26:
 216 0010 08000000 		.word	.LANCHOR0+8
 217              		.size	_ZN9Webserver15HttpInterpreterD0Ev, .-_ZN9Webserver15HttpInterpreterD0Ev
 218              		.section	.text._ZN9Webserver15HttpInterpreter11DiagnosticsE11MessageType,"ax",%progbits
 219              		.align	2
 220              		.global	_ZN9Webserver15HttpInterpreter11DiagnosticsE11MessageType
 221              		.thumb
 222              		.thumb_func
 223              		.type	_ZN9Webserver15HttpInterpreter11DiagnosticsE11MessageType, %function
 224              	_ZN9Webserver15HttpInterpreter11DiagnosticsE11MessageType:
 225              		@ args = 0, pretend = 0, frame = 0
 226              		@ frame_needed = 0, uses_anonymous_args = 0
 227 0000 00B5     		push	{lr}
 228 0002 0346     		mov	r3, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 5


 229 0004 83B0     		sub	sp, sp, #12
 230 0006 0822     		movs	r2, #8
 231 0008 4068     		ldr	r0, [r0, #4]
 232 000a 93F86837 		ldrb	r3, [r3, #1896]	@ zero_extendqisi2
 233 000e 0092     		str	r2, [sp]
 234 0010 024A     		ldr	r2, .L29
 235 0012 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 236 0016 03B0     		add	sp, sp, #12
 237              		@ sp needed
 238 0018 5DF804FB 		ldr	pc, [sp], #4
 239              	.L30:
 240              		.align	2
 241              	.L29:
 242 001c 00000000 		.word	.LC0
 243              		.size	_ZN9Webserver15HttpInterpreter11DiagnosticsE11MessageType, .-_ZN9Webserver15HttpInterpreter1
 244              		.section	.text._ZN9Webserver14FtpInterpreter11DiagnosticsE11MessageType,"ax",%progbits
 245              		.align	2
 246              		.global	_ZN9Webserver14FtpInterpreter11DiagnosticsE11MessageType
 247              		.thumb
 248              		.thumb_func
 249              		.type	_ZN9Webserver14FtpInterpreter11DiagnosticsE11MessageType, %function
 250              	_ZN9Webserver14FtpInterpreter11DiagnosticsE11MessageType:
 251              		@ args = 0, pretend = 0, frame = 0
 252              		@ frame_needed = 0, uses_anonymous_args = 0
 253 0000 10B5     		push	{r4, lr}
 254 0002 4468     		ldr	r4, [r0, #4]
 255 0004 90F87D30 		ldrb	r3, [r0, #125]	@ zero_extendqisi2
 256 0008 90F87C00 		ldrb	r0, [r0, #124]	@ zero_extendqisi2
 257 000c 034A     		ldr	r2, .L32
 258 000e 82B0     		sub	sp, sp, #8
 259 0010 0090     		str	r0, [sp]
 260 0012 2046     		mov	r0, r4
 261 0014 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 262 0018 02B0     		add	sp, sp, #8
 263              		@ sp needed
 264 001a 10BD     		pop	{r4, pc}
 265              	.L33:
 266              		.align	2
 267              	.L32:
 268 001c 1C000000 		.word	.LC1
 269              		.size	_ZN9Webserver14FtpInterpreter11DiagnosticsE11MessageType, .-_ZN9Webserver14FtpInterpreter11D
 270              		.section	.text._ZN9Webserver17TelnetInterpreter11DiagnosticsE11MessageType,"ax",%progbits
 271              		.align	2
 272              		.global	_ZN9Webserver17TelnetInterpreter11DiagnosticsE11MessageType
 273              		.thumb
 274              		.thumb_func
 275              		.type	_ZN9Webserver17TelnetInterpreter11DiagnosticsE11MessageType, %function
 276              	_ZN9Webserver17TelnetInterpreter11DiagnosticsE11MessageType:
 277              		@ args = 0, pretend = 0, frame = 0
 278              		@ frame_needed = 0, uses_anonymous_args = 0
 279 0000 10B5     		push	{r4, lr}
 280 0002 4468     		ldr	r4, [r0, #4]
 281 0004 90F87D30 		ldrb	r3, [r0, #125]	@ zero_extendqisi2
 282 0008 90F87C00 		ldrb	r0, [r0, #124]	@ zero_extendqisi2
 283 000c 034A     		ldr	r2, .L35
 284 000e 82B0     		sub	sp, sp, #8
 285 0010 0090     		str	r0, [sp]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 6


 286 0012 2046     		mov	r0, r4
 287 0014 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 288 0018 02B0     		add	sp, sp, #8
 289              		@ sp needed
 290 001a 10BD     		pop	{r4, pc}
 291              	.L36:
 292              		.align	2
 293              	.L35:
 294 001c 3C000000 		.word	.LC2
 295              		.size	_ZN9Webserver17TelnetInterpreter11DiagnosticsE11MessageType, .-_ZN9Webserver17TelnetInterpre
 296              		.section	.text._ZN19ProtocolInterpreter21ConnectionEstablishedEv,"ax",%progbits
 297              		.align	2
 298              		.global	_ZN19ProtocolInterpreter21ConnectionEstablishedEv
 299              		.thumb
 300              		.thumb_func
 301              		.type	_ZN19ProtocolInterpreter21ConnectionEstablishedEv, %function
 302              	_ZN19ProtocolInterpreter21ConnectionEstablishedEv:
 303              		@ args = 0, pretend = 0, frame = 0
 304              		@ frame_needed = 0, uses_anonymous_args = 0
 305              		@ link register save eliminated.
 306 0000 8368     		ldr	r3, [r0, #8]
 307 0002 9869     		ldr	r0, [r3, #24]
 308 0004 FFF7FEBF 		b	_ZN18NetworkTransaction7DiscardEv
 309              		.size	_ZN19ProtocolInterpreter21ConnectionEstablishedEv, .-_ZN19ProtocolInterpreter21ConnectionEst
 310              		.section	.text._ZN19ProtocolInterpreter19NoMoreDataAvailableEv,"ax",%progbits
 311              		.align	2
 312              		.global	_ZN19ProtocolInterpreter19NoMoreDataAvailableEv
 313              		.thumb
 314              		.thumb_func
 315              		.type	_ZN19ProtocolInterpreter19NoMoreDataAvailableEv, %function
 316              	_ZN19ProtocolInterpreter19NoMoreDataAvailableEv:
 317              		@ args = 0, pretend = 0, frame = 0
 318              		@ frame_needed = 0, uses_anonymous_args = 0
 319              		@ link register save eliminated.
 320 0000 8368     		ldr	r3, [r0, #8]
 321 0002 9869     		ldr	r0, [r3, #24]
 322 0004 FFF7FEBF 		b	_ZN18NetworkTransaction7DiscardEv
 323              		.size	_ZN19ProtocolInterpreter19NoMoreDataAvailableEv, .-_ZN19ProtocolInterpreter19NoMoreDataAvail
 324              		.section	.text._ZN19ProtocolInterpreter12DoFastUploadEv,"ax",%progbits
 325              		.align	2
 326              		.global	_ZN19ProtocolInterpreter12DoFastUploadEv
 327              		.thumb
 328              		.thumb_func
 329              		.type	_ZN19ProtocolInterpreter12DoFastUploadEv, %function
 330              	_ZN19ProtocolInterpreter12DoFastUploadEv:
 331              		@ args = 0, pretend = 0, frame = 8
 332              		@ frame_needed = 0, uses_anonymous_args = 0
 333 0000 30B5     		push	{r4, r5, lr}
 334 0002 8368     		ldr	r3, [r0, #8]
 335 0004 9D69     		ldr	r5, [r3, #24]
 336 0006 83B0     		sub	sp, sp, #12
 337 0008 0446     		mov	r4, r0
 338 000a 6946     		mov	r1, sp
 339 000c 01AA     		add	r2, sp, #4
 340 000e 2846     		mov	r0, r5
 341 0010 FFF7FEFF 		bl	_ZN18NetworkTransaction10ReadBufferERPKcRj
 342 0014 90B1     		cbz	r0, .L49
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 7


 343 0016 1E4B     		ldr	r3, .L63
 344 0018 B3F84030 		ldrh	r3, [r3, #64]
 345 001c 5B07     		lsls	r3, r3, #29
 346 001e 2AD4     		bmi	.L60
 347              	.L43:
 348 0020 E068     		ldr	r0, [r4, #12]
 349 0022 FFF7FEFF 		bl	_ZN7Network6UnlockEv
 350 0026 6069     		ldr	r0, [r4, #20]
 351 0028 9DE80600 		ldmia	sp, {r1, r2}
 352 002c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKcj
 353 0030 60B1     		cbz	r0, .L61
 354              	.L50:
 355 0032 E068     		ldr	r0, [r4, #12]
 356 0034 FFF7FEFF 		bl	_ZN7Network4LockEv
 357 0038 0028     		cmp	r0, #0
 358 003a FAD0     		beq	.L50
 359              	.L49:
 360 003c 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 361 003e 012B     		cmp	r3, #1
 362 0040 20D0     		beq	.L62
 363              	.L41:
 364 0042 2846     		mov	r0, r5
 365 0044 FFF7FEFF 		bl	_ZN18NetworkTransaction7DiscardEv
 366              	.L39:
 367 0048 03B0     		add	sp, sp, #12
 368              		@ sp needed
 369 004a 30BD     		pop	{r4, r5, pc}
 370              	.L61:
 371 004c 6068     		ldr	r0, [r4, #4]
 372 004e 114A     		ldr	r2, .L63+4
 373 0050 0621     		movs	r1, #6
 374 0052 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 375 0056 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 376 0058 012B     		cmp	r3, #1
 377 005a 04BF     		itt	eq
 378 005c 0223     		moveq	r3, #2
 379 005e 2374     		strbeq	r3, [r4, #16]
 380              	.L47:
 381 0060 E068     		ldr	r0, [r4, #12]
 382 0062 FFF7FEFF 		bl	_ZN7Network4LockEv
 383 0066 0028     		cmp	r0, #0
 384 0068 FAD0     		beq	.L47
 385 006a 2846     		mov	r0, r5
 386 006c 0021     		movs	r1, #0
 387 006e FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 388 0072 03B0     		add	sp, sp, #12
 389              		@ sp needed
 390 0074 30BD     		pop	{r4, r5, pc}
 391              	.L60:
 392 0076 6068     		ldr	r0, [r4, #4]
 393 0078 074A     		ldr	r2, .L63+8
 394 007a 019B     		ldr	r3, [sp, #4]
 395 007c 0221     		movs	r1, #2
 396 007e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 397 0082 CDE7     		b	.L43
 398              	.L62:
 399 0084 2846     		mov	r0, r5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 8


 400 0086 FFF7FEFF 		bl	_ZNK18NetworkTransaction17HasMoreDataToReadEv
 401 008a 0028     		cmp	r0, #0
 402 008c DCD1     		bne	.L39
 403 008e D8E7     		b	.L41
 404              	.L64:
 405              		.align	2
 406              	.L63:
 407 0090 00000000 		.word	reprap
 408 0094 84000000 		.word	.LC4
 409 0098 60000000 		.word	.LC3
 410              		.size	_ZN19ProtocolInterpreter12DoFastUploadEv, .-_ZN19ProtocolInterpreter12DoFastUploadEv
 411              		.section	.text._ZNK9Webserver15HttpInterpreter15DoingFastUploadEv,"ax",%progbits
 412              		.align	2
 413              		.global	_ZNK9Webserver15HttpInterpreter15DoingFastUploadEv
 414              		.thumb
 415              		.thumb_func
 416              		.type	_ZNK9Webserver15HttpInterpreter15DoingFastUploadEv, %function
 417              	_ZNK9Webserver15HttpInterpreter15DoingFastUploadEv:
 418              		@ args = 0, pretend = 0, frame = 0
 419              		@ frame_needed = 0, uses_anonymous_args = 0
 420 0000 8368     		ldr	r3, [r0, #8]
 421 0002 70B5     		push	{r4, r5, r6, lr}
 422 0004 0646     		mov	r6, r0
 423 0006 9869     		ldr	r0, [r3, #24]
 424 0008 FFF7FEFF 		bl	_ZNK18NetworkTransaction11GetRemoteIPEv
 425 000c B368     		ldr	r3, [r6, #8]
 426 000e 0546     		mov	r5, r0
 427 0010 9869     		ldr	r0, [r3, #24]
 428 0012 FFF7FEFF 		bl	_ZNK18NetworkTransaction13GetRemotePortEv
 429 0016 96F86847 		ldrb	r4, [r6, #1896]	@ zero_extendqisi2
 430 001a DCB1     		cbz	r4, .L69
 431 001c 3346     		mov	r3, r6
 432 001e 0022     		movs	r2, #0
 433 0020 04E0     		b	.L68
 434              	.L67:
 435 0022 0132     		adds	r2, r2, #1
 436 0024 A242     		cmp	r2, r4
 437 0026 03F10C03 		add	r3, r3, #12
 438 002a 11D2     		bcs	.L75
 439              	.L68:
 440 002c D3F80817 		ldr	r1, [r3, #1800]
 441 0030 A942     		cmp	r1, r5
 442 0032 F6D1     		bne	.L67
 443 0034 93F81017 		ldrb	r1, [r3, #1808]	@ zero_extendqisi2
 444 0038 0029     		cmp	r1, #0
 445 003a F2D0     		beq	.L67
 446 003c 02EB4202 		add	r2, r2, r2, lsl #1
 447 0040 06EB8206 		add	r6, r6, r2, lsl #2
 448 0044 B6F81237 		ldrh	r3, [r6, #1810]
 449 0048 1B1A     		subs	r3, r3, r0
 450 004a 5842     		rsbs	r0, r3, #0
 451 004c 5841     		adcs	r0, r0, r3
 452 004e 70BD     		pop	{r4, r5, r6, pc}
 453              	.L75:
 454 0050 0020     		movs	r0, #0
 455 0052 70BD     		pop	{r4, r5, r6, pc}
 456              	.L69:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 9


 457 0054 2046     		mov	r0, r4
 458 0056 70BD     		pop	{r4, r5, r6, pc}
 459              		.size	_ZNK9Webserver15HttpInterpreter15DoingFastUploadEv, .-_ZNK9Webserver15HttpInterpreter15Doing
 460              		.section	.text._ZN9Webserver17TelnetInterpreter21ConnectionEstablishedEv,"ax",%progbits
 461              		.align	2
 462              		.global	_ZN9Webserver17TelnetInterpreter21ConnectionEstablishedEv
 463              		.thumb
 464              		.thumb_func
 465              		.type	_ZN9Webserver17TelnetInterpreter21ConnectionEstablishedEv, %function
 466              	_ZN9Webserver17TelnetInterpreter21ConnectionEstablishedEv:
 467              		@ args = 0, pretend = 0, frame = 0
 468              		@ frame_needed = 0, uses_anonymous_args = 0
 469 0000 70B5     		push	{r4, r5, r6, lr}
 470 0002 90F87D30 		ldrb	r3, [r0, #125]	@ zero_extendqisi2
 471 0006 0446     		mov	r4, r0
 472 0008 0133     		adds	r3, r3, #1
 473 000a C068     		ldr	r0, [r0, #12]
 474 000c 84F87D30 		strb	r3, [r4, #125]
 475 0010 0021     		movs	r1, #0
 476 0012 FFF7FEFF 		bl	_ZN7Network14GetTransactionEP6Socket
 477 0016 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 478 001a 0546     		mov	r5, r0
 479 001c 0BBB     		cbnz	r3, .L79
 480 001e 0126     		movs	r6, #1
 481 0020 84F87C60 		strb	r6, [r4, #124]
 482 0024 FFF7FEFF 		bl	millis
 483 0028 C4F88000 		str	r0, [r4, #128]
 484 002c 1148     		ldr	r0, .L81
 485 002e FFF7FEFF 		bl	_ZNK6RepRap13NoPasswordSetEv
 486 0032 88B9     		cbnz	r0, .L80
 487 0034 2846     		mov	r0, r5
 488 0036 1049     		ldr	r1, .L81+4
 489 0038 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 490 003c 2846     		mov	r0, r5
 491 003e 0F49     		ldr	r1, .L81+8
 492 0040 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 493 0044 2846     		mov	r0, r5
 494 0046 0E49     		ldr	r1, .L81+12
 495 0048 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 496 004c 2846     		mov	r0, r5
 497 004e 3146     		mov	r1, r6
 498 0050 BDE87040 		pop	{r4, r5, r6, lr}
 499 0054 FFF7FEBF 		b	_ZN18NetworkTransaction6CommitEb
 500              	.L80:
 501 0058 2846     		mov	r0, r5
 502 005a BDE87040 		pop	{r4, r5, r6, lr}
 503 005e FFF7FEBF 		b	_ZN18NetworkTransaction7DiscardEv
 504              	.L79:
 505 0062 0849     		ldr	r1, .L81+16
 506 0064 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 507 0068 2846     		mov	r0, r5
 508 006a 0021     		movs	r1, #0
 509 006c BDE87040 		pop	{r4, r5, r6, lr}
 510 0070 FFF7FEBF 		b	_ZN18NetworkTransaction6CommitEb
 511              	.L82:
 512              		.align	2
 513              	.L81:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 10


 514 0074 00000000 		.word	reprap
 515 0078 EC000000 		.word	.LC6
 516 007c 10010000 		.word	.LC7
 517 0080 30010000 		.word	.LC8
 518 0084 AC000000 		.word	.LC5
 519              		.size	_ZN9Webserver17TelnetInterpreter21ConnectionEstablishedEv, .-_ZN9Webserver17TelnetInterprete
 520              		.section	.text._ZNK9Webserver14FtpInterpreter15DoingFastUploadEv,"ax",%progbits
 521              		.align	2
 522              		.global	_ZNK9Webserver14FtpInterpreter15DoingFastUploadEv
 523              		.thumb
 524              		.thumb_func
 525              		.type	_ZNK9Webserver14FtpInterpreter15DoingFastUploadEv, %function
 526              	_ZNK9Webserver14FtpInterpreter15DoingFastUploadEv:
 527              		@ args = 0, pretend = 0, frame = 0
 528              		@ frame_needed = 0, uses_anonymous_args = 0
 529 0000 38B5     		push	{r3, r4, r5, lr}
 530 0002 0446     		mov	r4, r0
 531 0004 007C     		ldrb	r0, [r0, #16]	@ zero_extendqisi2
 532 0006 50B1     		cbz	r0, .L84
 533 0008 A368     		ldr	r3, [r4, #8]
 534 000a 9869     		ldr	r0, [r3, #24]
 535 000c FFF7FEFF 		bl	_ZNK18NetworkTransaction12GetLocalPortEv
 536 0010 0546     		mov	r5, r0
 537 0012 E068     		ldr	r0, [r4, #12]
 538 0014 FFF7FEFF 		bl	_ZNK7Network11GetDataPortEv
 539 0018 2B1A     		subs	r3, r5, r0
 540 001a 5842     		rsbs	r0, r3, #0
 541 001c 5841     		adcs	r0, r0, r3
 542              	.L84:
 543 001e 38BD     		pop	{r3, r4, r5, pc}
 544              		.size	_ZNK9Webserver14FtpInterpreter15DoingFastUploadEv, .-_ZNK9Webserver14FtpInterpreter15DoingFa
 545              		.section	.text._ZN19ProtocolInterpreter4SpinEv.part.10,"ax",%progbits
 546              		.align	2
 547              		.thumb
 548              		.thumb_func
 549              		.type	_ZN19ProtocolInterpreter4SpinEv.part.10, %function
 550              	_ZN19ProtocolInterpreter4SpinEv.part.10:
 551              		@ args = 0, pretend = 0, frame = 0
 552              		@ frame_needed = 0, uses_anonymous_args = 0
 553 0000 10B5     		push	{r4, lr}
 554 0002 0446     		mov	r4, r0
 555 0004 4069     		ldr	r0, [r0, #20]
 556 0006 18B1     		cbz	r0, .L87
 557 0008 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 558 000c 0023     		movs	r3, #0
 559 000e 6361     		str	r3, [r4, #20]
 560              	.L87:
 561 0010 237E     		ldrb	r3, [r4, #24]	@ zero_extendqisi2
 562 0012 1BB9     		cbnz	r3, .L95
 563 0014 0023     		movs	r3, #0
 564 0016 2376     		strb	r3, [r4, #24]
 565 0018 2374     		strb	r3, [r4, #16]
 566 001a 10BD     		pop	{r4, pc}
 567              	.L95:
 568 001c 6368     		ldr	r3, [r4, #4]
 569 001e 0549     		ldr	r1, .L96
 570 0020 D3F83C08 		ldr	r0, [r3, #2108]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 11


 571 0024 04F11802 		add	r2, r4, #24
 572 0028 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_
 573 002c 0023     		movs	r3, #0
 574 002e 2376     		strb	r3, [r4, #24]
 575 0030 2374     		strb	r3, [r4, #16]
 576 0032 10BD     		pop	{r4, pc}
 577              	.L97:
 578              		.align	2
 579              	.L96:
 580 0034 34010000 		.word	.LC9
 581              		.size	_ZN19ProtocolInterpreter4SpinEv.part.10, .-_ZN19ProtocolInterpreter4SpinEv.part.10
 582              		.section	.text._ZN19ProtocolInterpreter4SpinEv,"ax",%progbits
 583              		.align	2
 584              		.global	_ZN19ProtocolInterpreter4SpinEv
 585              		.thumb
 586              		.thumb_func
 587              		.type	_ZN19ProtocolInterpreter4SpinEv, %function
 588              	_ZN19ProtocolInterpreter4SpinEv:
 589              		@ args = 0, pretend = 0, frame = 0
 590              		@ frame_needed = 0, uses_anonymous_args = 0
 591              		@ link register save eliminated.
 592 0000 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 593 0002 022B     		cmp	r3, #2
 594 0004 00D0     		beq	.L100
 595 0006 7047     		bx	lr
 596              	.L100:
 597 0008 FFF7FEBF 		b	_ZN19ProtocolInterpreter4SpinEv.part.10
 598              		.size	_ZN19ProtocolInterpreter4SpinEv, .-_ZN19ProtocolInterpreter4SpinEv
 599              		.section	.text._ZN9Webserver15HttpInterpreter4SpinEv,"ax",%progbits
 600              		.align	2
 601              		.global	_ZN9Webserver15HttpInterpreter4SpinEv
 602              		.thumb
 603              		.thumb_func
 604              		.type	_ZN9Webserver15HttpInterpreter4SpinEv, %function
 605              	_ZN9Webserver15HttpInterpreter4SpinEv:
 606              		@ args = 0, pretend = 0, frame = 0
 607              		@ frame_needed = 0, uses_anonymous_args = 0
 608 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 609 0004 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 610 0006 022B     		cmp	r3, #2
 611 0008 0446     		mov	r4, r0
 612 000a 74D0     		beq	.L131
 613              	.L102:
 614 000c FFF7FEFF 		bl	millis
 615 0010 94F86837 		ldrb	r3, [r4, #1896]	@ zero_extendqisi2
 616 0014 8246     		mov	r10, r0
 617 0016 5E1E     		subs	r6, r3, #1
 618 0018 002B     		cmp	r3, #0
 619 001a 54D0     		beq	.L103
 620 001c 03EB4305 		add	r5, r3, r3, lsl #1
 621 0020 A3EB8309 		sub	r9, r3, r3, lsl #2
 622 0024 04EB8505 		add	r5, r4, r5, lsl #2
 623 0028 03EB4303 		add	r3, r3, r3, lsl #1
 624 002c 05F5E165 		add	r5, r5, #1800
 625 0030 4FEA8909 		lsl	r9, r9, #2
 626 0034 4FEA8308 		lsl	r8, r3, #2
 627 0038 0027     		movs	r7, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 12


 628 003a 0EE0     		b	.L109
 629              	.L133:
 630 003c 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 631 003e 012B     		cmp	r3, #1
 632 0040 48D0     		beq	.L129
 633 0042 0BF8047C 		strb	r7, [fp, #-4]
 634 0046 FFF7FEFF 		bl	millis
 635 004a A5F10C0C 		sub	ip, r5, #12
 636 004e 4BF8080C 		str	r0, [fp, #-8]
 637              	.L105:
 638 0052 013E     		subs	r6, r6, #1
 639 0054 731C     		adds	r3, r6, #1
 640 0056 6546     		mov	r5, ip
 641 0058 33D0     		beq	.L132
 642              	.L109:
 643 005a 05EB090B 		add	fp, r5, r9
 644 005e C344     		add	fp, fp, r8
 645 0060 1BF8043C 		ldrb	r3, [fp, #-4]	@ zero_extendqisi2
 646 0064 002B     		cmp	r3, #0
 647 0066 E9D1     		bne	.L133
 648 0068 5BF8083C 		ldr	r3, [fp, #-8]
 649 006c C3EB0A03 		rsb	r3, r3, r10
 650 0070 B3F5FA5F 		cmp	r3, #8000
 651 0074 2ED9     		bls	.L129
 652 0076 94F86827 		ldrb	r2, [r4, #1896]	@ zero_extendqisi2
 653 007a 711C     		adds	r1, r6, #1
 654 007c A5F10C0C 		sub	ip, r5, #12
 655 0080 8A42     		cmp	r2, r1
 656 0082 88BF     		it	hi
 657 0084 6246     		movhi	r2, ip
 658 0086 01D8     		bhi	.L107
 659 0088 0FE0     		b	.L106
 660              	.L134:
 661 008a 1A46     		mov	r2, r3
 662              	.L107:
 663 008c 1346     		mov	r3, r2
 664 008e 0131     		adds	r1, r1, #1
 665 0090 53F80C0F 		ldr	r0, [r3, #12]!	@ unaligned
 666 0094 5D68     		ldr	r5, [r3, #4]	@ unaligned
 667 0096 D3F808B0 		ldr	fp, [r3, #8]	@ unaligned
 668 009a C2F808B0 		str	fp, [r2, #8]	@ unaligned
 669 009e 1060     		str	r0, [r2]	@ unaligned
 670 00a0 5560     		str	r5, [r2, #4]	@ unaligned
 671 00a2 94F86827 		ldrb	r2, [r4, #1896]	@ zero_extendqisi2
 672 00a6 8A42     		cmp	r2, r1
 673 00a8 EFD8     		bhi	.L134
 674              	.L106:
 675 00aa 94F86937 		ldrb	r3, [r4, #1897]	@ zero_extendqisi2
 676 00ae 013E     		subs	r6, r6, #1
 677 00b0 0133     		adds	r3, r3, #1
 678 00b2 013A     		subs	r2, r2, #1
 679 00b4 84F86937 		strb	r3, [r4, #1897]
 680 00b8 731C     		adds	r3, r6, #1
 681 00ba 84F86827 		strb	r2, [r4, #1896]
 682 00be 6546     		mov	r5, ip
 683 00c0 CBD1     		bne	.L109
 684              	.L132:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 13


 685 00c2 94F86837 		ldrb	r3, [r4, #1896]	@ zero_extendqisi2
 686              	.L103:
 687 00c6 63B1     		cbz	r3, .L130
 688 00c8 94F86927 		ldrb	r2, [r4, #1897]	@ zero_extendqisi2
 689 00cc 9A42     		cmp	r2, r3
 690 00ce 08D2     		bcs	.L130
 691 00d0 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 692              	.L129:
 693 00d4 A5F10C0C 		sub	ip, r5, #12
 694 00d8 BBE7     		b	.L105
 695              	.L115:
 696 00da FFF7FEFF 		bl	_ZN11OutputStack3PopEv
 697 00de FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllEPS_
 698              	.L130:
 699 00e2 D4F87007 		ldr	r0, [r4, #1904]
 700 00e6 0368     		ldr	r3, [r0]
 701 00e8 002B     		cmp	r3, #0
 702 00ea F6D1     		bne	.L115
 703 00ec 0023     		movs	r3, #0
 704 00ee 84F86937 		strb	r3, [r4, #1897]
 705 00f2 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 706              	.L131:
 707 00f6 FFF7FEFF 		bl	_ZN19ProtocolInterpreter4SpinEv.part.10
 708 00fa 87E7     		b	.L102
 709              		.size	_ZN9Webserver15HttpInterpreter4SpinEv, .-_ZN9Webserver15HttpInterpreter4SpinEv
 710              		.section	.text._ZN9Webserver15HttpInterpreter14ConnectionLostEP6Socket,"ax",%progbits
 711              		.align	2
 712              		.global	_ZN9Webserver15HttpInterpreter14ConnectionLostEP6Socket
 713              		.thumb
 714              		.thumb_func
 715              		.type	_ZN9Webserver15HttpInterpreter14ConnectionLostEP6Socket, %function
 716              	_ZN9Webserver15HttpInterpreter14ConnectionLostEP6Socket:
 717              		@ args = 0, pretend = 0, frame = 0
 718              		@ frame_needed = 0, uses_anonymous_args = 0
 719 0000 D0F88037 		ldr	r3, [r0, #1920]
 720 0004 8B42     		cmp	r3, r1
 721 0006 70B5     		push	{r4, r5, r6, lr}
 722 0008 0546     		mov	r5, r0
 723 000a 0C46     		mov	r4, r1
 724 000c 48D0     		beq	.L154
 725              	.L136:
 726 000e AB68     		ldr	r3, [r5, #8]
 727 0010 DB69     		ldr	r3, [r3, #28]
 728 0012 9C42     		cmp	r4, r3
 729 0014 34D0     		beq	.L155
 730              	.L137:
 731 0016 2B7C     		ldrb	r3, [r5, #16]	@ zero_extendqisi2
 732 0018 012B     		cmp	r3, #1
 733 001a 00D0     		beq	.L156
 734              	.L135:
 735 001c 70BD     		pop	{r4, r5, r6, pc}
 736              	.L156:
 737 001e 2046     		mov	r0, r4
 738 0020 FFF7FEFF 		bl	_ZN7Network11GetRemoteIPEP6Socket
 739 0024 0646     		mov	r6, r0
 740 0026 2046     		mov	r0, r4
 741 0028 FFF7FEFF 		bl	_ZN7Network13GetRemotePortEP6Socket
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 14


 742 002c 95F86817 		ldrb	r1, [r5, #1896]	@ zero_extendqisi2
 743 0030 0029     		cmp	r1, #0
 744 0032 F3D0     		beq	.L135
 745 0034 2B46     		mov	r3, r5
 746 0036 0024     		movs	r4, #0
 747 0038 04E0     		b	.L143
 748              	.L141:
 749 003a 0134     		adds	r4, r4, #1
 750 003c 8C42     		cmp	r4, r1
 751 003e 03F10C03 		add	r3, r3, #12
 752 0042 EBD2     		bcs	.L135
 753              	.L143:
 754 0044 D3F80827 		ldr	r2, [r3, #1800]
 755 0048 9642     		cmp	r6, r2
 756 004a F6D1     		bne	.L141
 757 004c 93F81027 		ldrb	r2, [r3, #1808]	@ zero_extendqisi2
 758 0050 002A     		cmp	r2, #0
 759 0052 F2D0     		beq	.L141
 760 0054 B3F81227 		ldrh	r2, [r3, #1810]
 761 0058 8242     		cmp	r2, r0
 762 005a EED1     		bne	.L141
 763 005c 194B     		ldr	r3, .L158
 764 005e B3F84030 		ldrh	r3, [r3, #64]
 765 0062 5B07     		lsls	r3, r3, #29
 766 0064 26D4     		bmi	.L157
 767              	.L142:
 768 0066 2B7C     		ldrb	r3, [r5, #16]	@ zero_extendqisi2
 769 0068 04EB4404 		add	r4, r4, r4, lsl #1
 770 006c 05EB8402 		add	r2, r5, r4, lsl #2
 771 0070 0021     		movs	r1, #0
 772 0072 012B     		cmp	r3, #1
 773 0074 82F81017 		strb	r1, [r2, #1808]
 774 0078 D0D1     		bne	.L135
 775 007a 0223     		movs	r3, #2
 776 007c 2B74     		strb	r3, [r5, #16]
 777 007e 70BD     		pop	{r4, r5, r6, pc}
 778              	.L155:
 779 0080 0023     		movs	r3, #0
 780 0082 05F17D02 		add	r2, r5, #125
 781 0086 C5F83436 		str	r3, [r5, #1588]
 782 008a 85F87C30 		strb	r3, [r5, #124]
 783 008e C5F8FC36 		str	r3, [r5, #1788]
 784 0092 C5F80037 		str	r3, [r5, #1792]
 785 0096 C5F80437 		str	r3, [r5, #1796]
 786 009a C5F83C26 		str	r2, [r5, #1596]
 787 009e BAE7     		b	.L137
 788              	.L154:
 789 00a0 084B     		ldr	r3, .L158
 790 00a2 00F28471 		addw	r1, r0, #1924
 791 00a6 D869     		ldr	r0, [r3, #28]
 792 00a8 FFF7FEFF 		bl	_ZN12PrintMonitor11StopParsingEPKc
 793 00ac 0023     		movs	r3, #0
 794 00ae C5F88037 		str	r3, [r5, #1920]
 795 00b2 ACE7     		b	.L136
 796              	.L157:
 797 00b4 6868     		ldr	r0, [r5, #4]
 798 00b6 044A     		ldr	r2, .L158+4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 15


 799 00b8 0221     		movs	r1, #2
 800 00ba 05F11803 		add	r3, r5, #24
 801 00be FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 802 00c2 D0E7     		b	.L142
 803              	.L159:
 804              		.align	2
 805              	.L158:
 806 00c4 00000000 		.word	reprap
 807 00c8 38010000 		.word	.LC10
 808              		.size	_ZN9Webserver15HttpInterpreter14ConnectionLostEP6Socket, .-_ZN9Webserver15HttpInterpreter14C
 809              		.section	.text._ZN9Webserver17TelnetInterpreter14ConnectionLostEP6Socket,"ax",%progbits
 810              		.align	2
 811              		.global	_ZN9Webserver17TelnetInterpreter14ConnectionLostEP6Socket
 812              		.thumb
 813              		.thumb_func
 814              		.type	_ZN9Webserver17TelnetInterpreter14ConnectionLostEP6Socket, %function
 815              	_ZN9Webserver17TelnetInterpreter14ConnectionLostEP6Socket:
 816              		@ args = 0, pretend = 0, frame = 0
 817              		@ frame_needed = 0, uses_anonymous_args = 0
 818 0000 38B5     		push	{r3, r4, r5, lr}
 819 0002 90F87D50 		ldrb	r5, [r0, #125]	@ zero_extendqisi2
 820 0006 013D     		subs	r5, r5, #1
 821 0008 EDB2     		uxtb	r5, r5
 822 000a 0446     		mov	r4, r0
 823 000c 80F87D50 		strb	r5, [r0, #125]
 824 0010 5DB9     		cbnz	r5, .L160
 825 0012 D0F8F000 		ldr	r0, [r0, #240]
 826 0016 84F87C50 		strb	r5, [r4, #124]
 827 001a C4F88050 		str	r5, [r4, #128]
 828 001e C4F8EC50 		str	r5, [r4, #236]
 829 0022 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllEPS_
 830 0026 C4F8F050 		str	r5, [r4, #240]
 831              	.L160:
 832 002a 38BD     		pop	{r3, r4, r5, pc}
 833              		.size	_ZN9Webserver17TelnetInterpreter14ConnectionLostEP6Socket, .-_ZN9Webserver17TelnetInterprete
 834              		.section	.text._ZN9Webserver4SpinEv,"ax",%progbits
 835              		.align	2
 836              		.global	_ZN9Webserver4SpinEv
 837              		.thumb
 838              		.thumb_func
 839              		.type	_ZN9Webserver4SpinEv, %function
 840              	_ZN9Webserver4SpinEv:
 841              		@ args = 0, pretend = 0, frame = 8
 842              		@ frame_needed = 0, uses_anonymous_args = 0
 843 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 844 0004 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 845 0006 84B0     		sub	sp, sp, #16
 846 0008 0446     		mov	r4, r0
 847 000a 002B     		cmp	r3, #0
 848 000c 6ED0     		beq	.L163
 849 000e 0020     		movs	r0, #0
 850 0010 FFF7FEFF 		bl	_ZN12OutputBuffer12GetBytesLeftEPKS_
 851 0014 0028     		cmp	r0, #0
 852 0016 69D0     		beq	.L163
 853 0018 2069     		ldr	r0, [r4, #16]
 854 001a FFF7FEFF 		bl	_ZN7Network4LockEv
 855 001e 0028     		cmp	r0, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 16


 856 0020 64D0     		beq	.L163
 857 0022 2068     		ldr	r0, [r4]
 858 0024 0368     		ldr	r3, [r0]
 859 0026 DB68     		ldr	r3, [r3, #12]
 860 0028 9847     		blx	r3
 861 002a 6068     		ldr	r0, [r4, #4]
 862 002c 0368     		ldr	r3, [r0]
 863 002e DB68     		ldr	r3, [r3, #12]
 864 0030 9847     		blx	r3
 865 0032 A068     		ldr	r0, [r4, #8]
 866 0034 0368     		ldr	r3, [r0]
 867 0036 DB68     		ldr	r3, [r3, #12]
 868 0038 9847     		blx	r3
 869 003a E169     		ldr	r1, [r4, #28]
 870 003c 2069     		ldr	r0, [r4, #16]
 871 003e FFF7FEFF 		bl	_ZN7Network14GetTransactionEP6Socket
 872 0042 A061     		str	r0, [r4, #24]
 873 0044 0028     		cmp	r0, #0
 874 0046 61D0     		beq	.L167
 875 0048 FFF7FEFF 		bl	_ZNK18NetworkTransaction12GetLocalPortEv
 876 004c 0646     		mov	r6, r0
 877 004e 2069     		ldr	r0, [r4, #16]
 878 0050 FFF7FEFF 		bl	_ZNK7Network11GetHttpPortEv
 879 0054 8642     		cmp	r6, r0
 880 0056 51D1     		bne	.L168
 881 0058 2568     		ldr	r5, [r4]
 882              	.L169:
 883 005a 3A4B     		ldr	r3, .L201
 884 005c B3F84030 		ldrh	r3, [r3, #64]
 885 0060 5B07     		lsls	r3, r3, #29
 886 0062 13D5     		bpl	.L171
 887 0064 A069     		ldr	r0, [r4, #24]
 888 0066 E768     		ldr	r7, [r4, #12]
 889 0068 8369     		ldr	r3, [r0, #24]
 890 006a 062B     		cmp	r3, #6
 891 006c 96BF     		itet	ls
 892 006e 364A     		ldrls	r2, .L201+4
 893 0070 DFF8E080 		ldrhi	r8, .L201+16
 894 0074 52F82380 		ldrls	r8, [r2, r3, lsl #2]
 895 0078 FFF7FEFF 		bl	_ZNK18NetworkTransaction13GetRemotePortEv
 896 007c 0096     		str	r6, [sp]
 897 007e 0190     		str	r0, [sp, #4]
 898 0080 4346     		mov	r3, r8
 899 0082 3846     		mov	r0, r7
 900 0084 0221     		movs	r1, #2
 901 0086 314A     		ldr	r2, .L201+8
 902 0088 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 903              	.L171:
 904 008c A069     		ldr	r0, [r4, #24]
 905 008e 8369     		ldr	r3, [r0, #24]
 906 0090 012B     		cmp	r3, #1
 907 0092 4ED0     		beq	.L196
 908 0094 042B     		cmp	r3, #4
 909 0096 49D0     		beq	.L197
 910 0098 2B68     		ldr	r3, [r5]
 911 009a 2846     		mov	r0, r5
 912 009c 5B6A     		ldr	r3, [r3, #36]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 17


 913 009e 9847     		blx	r3
 914 00a0 2B68     		ldr	r3, [r5]
 915 00a2 0028     		cmp	r0, #0
 916 00a4 3ED1     		bne	.L198
 917 00a6 2846     		mov	r0, r5
 918 00a8 9B69     		ldr	r3, [r3, #24]
 919 00aa 9847     		blx	r3
 920 00ac D8B1     		cbz	r0, .L174
 921 00ae A069     		ldr	r0, [r4, #24]
 922 00b0 0368     		ldr	r3, [r0]
 923 00b2 E361     		str	r3, [r4, #28]
 924 00b4 4FF4F376 		mov	r6, #486
 925 00b8 08E0     		b	.L182
 926              	.L200:
 927 00ba 9DF80F10 		ldrb	r1, [sp, #15]	@ zero_extendqisi2
 928 00be DB69     		ldr	r3, [r3, #28]
 929 00c0 9847     		blx	r3
 930 00c2 0028     		cmp	r0, #0
 931 00c4 3AD1     		bne	.L199
 932 00c6 013E     		subs	r6, r6, #1
 933 00c8 0DD0     		beq	.L174
 934 00ca A069     		ldr	r0, [r4, #24]
 935              	.L182:
 936 00cc 0DF10F01 		add	r1, sp, #15
 937 00d0 FFF7FEFF 		bl	_ZN18NetworkTransaction4ReadERc
 938 00d4 0746     		mov	r7, r0
 939 00d6 2B68     		ldr	r3, [r5]
 940 00d8 2846     		mov	r0, r5
 941 00da 002F     		cmp	r7, #0
 942 00dc EDD1     		bne	.L200
 943 00de 2846     		mov	r0, r5
 944 00e0 1B6A     		ldr	r3, [r3, #32]
 945 00e2 9847     		blx	r3
 946 00e4 E761     		str	r7, [r4, #28]
 947              	.L174:
 948 00e6 2069     		ldr	r0, [r4, #16]
 949 00e8 FFF7FEFF 		bl	_ZN7Network6UnlockEv
 950              	.L163:
 951 00ec E068     		ldr	r0, [r4, #12]
 952 00ee 04F12001 		add	r1, r4, #32
 953 00f2 FFF7FEFF 		bl	_ZN8Platform11ClassReportERf
 954 00f6 04B0     		add	sp, sp, #16
 955              		@ sp needed
 956 00f8 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 957              	.L168:
 958 00fc 2069     		ldr	r0, [r4, #16]
 959 00fe FFF7FEFF 		bl	_ZNK7Network13GetTelnetPortEv
 960 0102 8642     		cmp	r6, r0
 961 0104 0CBF     		ite	eq
 962 0106 A568     		ldreq	r5, [r4, #8]
 963 0108 6568     		ldrne	r5, [r4, #4]
 964 010a A6E7     		b	.L169
 965              	.L167:
 966 010c E369     		ldr	r3, [r4, #28]
 967 010e 002B     		cmp	r3, #0
 968 0110 E9D0     		beq	.L174
 969 0112 E068     		ldr	r0, [r4, #12]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 18


 970 0114 0E4A     		ldr	r2, .L201+12
 971 0116 0221     		movs	r1, #2
 972 0118 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 973 011c E069     		ldr	r0, [r4, #28]
 974 011e FFF7FEFF 		bl	_ZN7Network9TerminateEP6Socket
 975 0122 E0E7     		b	.L174
 976              	.L198:
 977 0124 2846     		mov	r0, r5
 978 0126 9B6A     		ldr	r3, [r3, #40]
 979 0128 9847     		blx	r3
 980 012a DCE7     		b	.L174
 981              	.L197:
 982 012c FFF7FEFF 		bl	_ZN18NetworkTransaction7DiscardEv
 983 0130 D9E7     		b	.L174
 984              	.L196:
 985 0132 2B68     		ldr	r3, [r5]
 986 0134 2846     		mov	r0, r5
 987 0136 1B69     		ldr	r3, [r3, #16]
 988 0138 9847     		blx	r3
 989 013a D4E7     		b	.L174
 990              	.L199:
 991 013c 0023     		movs	r3, #0
 992 013e E361     		str	r3, [r4, #28]
 993 0140 D1E7     		b	.L174
 994              	.L202:
 995 0142 00BF     		.align	2
 996              	.L201:
 997 0144 00000000 		.word	reprap
 998 0148 00000000 		.word	.LANCHOR4
 999 014c 6C010000 		.word	.LC12
 1000 0150 B0010000 		.word	.LC13
 1001 0154 64010000 		.word	.LC11
 1002              		.size	_ZN9Webserver4SpinEv, .-_ZN9Webserver4SpinEv
 1003              		.section	.text._ZN9Webserver4ExitEv,"ax",%progbits
 1004              		.align	2
 1005              		.global	_ZN9Webserver4ExitEv
 1006              		.thumb
 1007              		.thumb_func
 1008              		.type	_ZN9Webserver4ExitEv, %function
 1009              	_ZN9Webserver4ExitEv:
 1010              		@ args = 0, pretend = 0, frame = 0
 1011              		@ frame_needed = 0, uses_anonymous_args = 0
 1012 0000 0368     		ldr	r3, [r0]
 1013 0002 1A7C     		ldrb	r2, [r3, #16]	@ zero_extendqisi2
 1014 0004 012A     		cmp	r2, #1
 1015 0006 08BF     		it	eq
 1016 0008 0222     		moveq	r2, #2
 1017 000a 10B5     		push	{r4, lr}
 1018 000c 08BF     		it	eq
 1019 000e 1A74     		strbeq	r2, [r3, #16]
 1020 0010 4368     		ldr	r3, [r0, #4]
 1021 0012 1A7C     		ldrb	r2, [r3, #16]	@ zero_extendqisi2
 1022 0014 012A     		cmp	r2, #1
 1023 0016 04BF     		itt	eq
 1024 0018 0222     		moveq	r2, #2
 1025 001a 1A74     		strbeq	r2, [r3, #16]
 1026 001c 0446     		mov	r4, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 19


 1027 001e 044A     		ldr	r2, .L206
 1028 0020 C068     		ldr	r0, [r0, #12]
 1029 0022 0221     		movs	r1, #2
 1030 0024 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1031 0028 0023     		movs	r3, #0
 1032 002a 2375     		strb	r3, [r4, #20]
 1033 002c 10BD     		pop	{r4, pc}
 1034              	.L207:
 1035 002e 00BF     		.align	2
 1036              	.L206:
 1037 0030 E8010000 		.word	.LC14
 1038              		.size	_ZN9Webserver4ExitEv, .-_ZN9Webserver4ExitEv
 1039              		.section	.text._ZN9Webserver11DiagnosticsE11MessageType,"ax",%progbits
 1040              		.align	2
 1041              		.global	_ZN9Webserver11DiagnosticsE11MessageType
 1042              		.thumb
 1043              		.thumb_func
 1044              		.type	_ZN9Webserver11DiagnosticsE11MessageType, %function
 1045              	_ZN9Webserver11DiagnosticsE11MessageType:
 1046              		@ args = 0, pretend = 0, frame = 0
 1047              		@ frame_needed = 0, uses_anonymous_args = 0
 1048 0000 38B5     		push	{r3, r4, r5, lr}
 1049 0002 0446     		mov	r4, r0
 1050 0004 0A4A     		ldr	r2, .L209
 1051 0006 C068     		ldr	r0, [r0, #12]
 1052 0008 0D46     		mov	r5, r1
 1053 000a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1054 000e 2068     		ldr	r0, [r4]
 1055 0010 0368     		ldr	r3, [r0]
 1056 0012 2946     		mov	r1, r5
 1057 0014 9B68     		ldr	r3, [r3, #8]
 1058 0016 9847     		blx	r3
 1059 0018 6068     		ldr	r0, [r4, #4]
 1060 001a 0368     		ldr	r3, [r0]
 1061 001c 2946     		mov	r1, r5
 1062 001e 9B68     		ldr	r3, [r3, #8]
 1063 0020 9847     		blx	r3
 1064 0022 A068     		ldr	r0, [r4, #8]
 1065 0024 0368     		ldr	r3, [r0]
 1066 0026 2946     		mov	r1, r5
 1067 0028 9B68     		ldr	r3, [r3, #8]
 1068 002a 9847     		blx	r3
 1069 002c 38BD     		pop	{r3, r4, r5, pc}
 1070              	.L210:
 1071 002e 00BF     		.align	2
 1072              	.L209:
 1073 0030 04020000 		.word	.LC15
 1074              		.size	_ZN9Webserver11DiagnosticsE11MessageType, .-_ZN9Webserver11DiagnosticsE11MessageType
 1075              		.section	.text._ZN9Webserver14ConnectionLostEP6Socket,"ax",%progbits
 1076              		.align	2
 1077              		.global	_ZN9Webserver14ConnectionLostEP6Socket
 1078              		.thumb
 1079              		.thumb_func
 1080              		.type	_ZN9Webserver14ConnectionLostEP6Socket, %function
 1081              	_ZN9Webserver14ConnectionLostEP6Socket:
 1082              		@ args = 0, pretend = 0, frame = 0
 1083              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 20


 1084 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1085 0004 0446     		mov	r4, r0
 1086 0006 82B0     		sub	sp, sp, #8
 1087 0008 0846     		mov	r0, r1
 1088 000a 0D46     		mov	r5, r1
 1089 000c FFF7FEFF 		bl	_ZN7Network12GetLocalPortEP6Socket
 1090 0010 0646     		mov	r6, r0
 1091 0012 2069     		ldr	r0, [r4, #16]
 1092 0014 FFF7FEFF 		bl	_ZNK7Network11GetHttpPortEv
 1093 0018 8642     		cmp	r6, r0
 1094 001a 21D0     		beq	.L225
 1095 001c 2069     		ldr	r0, [r4, #16]
 1096 001e FFF7FEFF 		bl	_ZNK7Network10GetFtpPortEv
 1097 0022 B042     		cmp	r0, r6
 1098 0024 0BD0     		beq	.L214
 1099 0026 2069     		ldr	r0, [r4, #16]
 1100 0028 FFF7FEFF 		bl	_ZNK7Network11GetDataPortEv
 1101 002c B042     		cmp	r0, r6
 1102 002e 06D0     		beq	.L214
 1103 0030 2069     		ldr	r0, [r4, #16]
 1104 0032 FFF7FEFF 		bl	_ZNK7Network13GetTelnetPortEv
 1105 0036 8642     		cmp	r6, r0
 1106 0038 2AD1     		bne	.L226
 1107 003a A768     		ldr	r7, [r4, #8]
 1108 003c 00E0     		b	.L213
 1109              	.L214:
 1110 003e 6768     		ldr	r7, [r4, #4]
 1111              	.L213:
 1112 0040 184B     		ldr	r3, .L229
 1113 0042 B3F84030 		ldrh	r3, [r3, #64]
 1114 0046 5B07     		lsls	r3, r3, #29
 1115 0048 10D4     		bmi	.L227
 1116              	.L216:
 1117 004a 3B68     		ldr	r3, [r7]
 1118 004c 3846     		mov	r0, r7
 1119 004e 5B69     		ldr	r3, [r3, #20]
 1120 0050 2946     		mov	r1, r5
 1121 0052 9847     		blx	r3
 1122 0054 E369     		ldr	r3, [r4, #28]
 1123 0056 9D42     		cmp	r5, r3
 1124 0058 15D0     		beq	.L228
 1125 005a 02B0     		add	sp, sp, #8
 1126              		@ sp needed
 1127 005c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1128              	.L225:
 1129 0060 104B     		ldr	r3, .L229
 1130 0062 2768     		ldr	r7, [r4]
 1131 0064 B3F84030 		ldrh	r3, [r3, #64]
 1132 0068 5B07     		lsls	r3, r3, #29
 1133 006a EED5     		bpl	.L216
 1134              	.L227:
 1135 006c 2846     		mov	r0, r5
 1136 006e D4F80C80 		ldr	r8, [r4, #12]
 1137 0072 FFF7FEFF 		bl	_ZN7Network13GetRemotePortEP6Socket
 1138 0076 3346     		mov	r3, r6
 1139 0078 0090     		str	r0, [sp]
 1140 007a 0221     		movs	r1, #2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 21


 1141 007c 4046     		mov	r0, r8
 1142 007e 0A4A     		ldr	r2, .L229+4
 1143 0080 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1144 0084 E1E7     		b	.L216
 1145              	.L228:
 1146 0086 0023     		movs	r3, #0
 1147 0088 E361     		str	r3, [r4, #28]
 1148 008a 02B0     		add	sp, sp, #8
 1149              		@ sp needed
 1150 008c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1151              	.L226:
 1152 0090 E068     		ldr	r0, [r4, #12]
 1153 0092 064A     		ldr	r2, .L229+8
 1154 0094 3346     		mov	r3, r6
 1155 0096 0621     		movs	r1, #6
 1156 0098 02B0     		add	sp, sp, #8
 1157              		@ sp needed
 1158 009a BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 1159 009e FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 1160              	.L230:
 1161 00a2 00BF     		.align	2
 1162              	.L229:
 1163 00a4 00000000 		.word	reprap
 1164 00a8 78020000 		.word	.LC17
 1165 00ac 18020000 		.word	.LC16
 1166              		.size	_ZN9Webserver14ConnectionLostEP6Socket, .-_ZN9Webserver14ConnectionLostEP6Socket
 1167              		.section	.text._ZN19ProtocolInterpreterC2EP8PlatformP9WebserverP7Network,"ax",%progbits
 1168              		.align	2
 1169              		.global	_ZN19ProtocolInterpreterC2EP8PlatformP9WebserverP7Network
 1170              		.thumb
 1171              		.thumb_func
 1172              		.type	_ZN19ProtocolInterpreterC2EP8PlatformP9WebserverP7Network, %function
 1173              	_ZN19ProtocolInterpreterC2EP8PlatformP9WebserverP7Network:
 1174              		@ args = 0, pretend = 0, frame = 0
 1175              		@ frame_needed = 0, uses_anonymous_args = 0
 1176              		@ link register save eliminated.
 1177 0000 30B4     		push	{r4, r5}
 1178 0002 054D     		ldr	r5, .L232
 1179 0004 4160     		str	r1, [r0, #4]
 1180 0006 0021     		movs	r1, #0
 1181 0008 0560     		str	r5, [r0]
 1182 000a 8260     		str	r2, [r0, #8]
 1183 000c C360     		str	r3, [r0, #12]
 1184 000e 4161     		str	r1, [r0, #20]
 1185 0010 0174     		strb	r1, [r0, #16]
 1186 0012 0176     		strb	r1, [r0, #24]
 1187 0014 30BC     		pop	{r4, r5}
 1188 0016 7047     		bx	lr
 1189              	.L233:
 1190              		.align	2
 1191              	.L232:
 1192 0018 08000000 		.word	.LANCHOR0+8
 1193              		.size	_ZN19ProtocolInterpreterC2EP8PlatformP9WebserverP7Network, .-_ZN19ProtocolInterpreterC2EP8Pl
 1194              		.global	_ZN19ProtocolInterpreterC1EP8PlatformP9WebserverP7Network
 1195              		.thumb_set _ZN19ProtocolInterpreterC1EP8PlatformP9WebserverP7Network,_ZN19ProtocolInterpreterC2EP8
 1196              		.section	.text._ZN19ProtocolInterpreter11StartUploadEP9FileStorePKc,"ax",%progbits
 1197              		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 22


 1198              		.global	_ZN19ProtocolInterpreter11StartUploadEP9FileStorePKc
 1199              		.thumb
 1200              		.thumb_func
 1201              		.type	_ZN19ProtocolInterpreter11StartUploadEP9FileStorePKc, %function
 1202              	_ZN19ProtocolInterpreter11StartUploadEP9FileStorePKc:
 1203              		@ args = 0, pretend = 0, frame = 0
 1204              		@ frame_needed = 0, uses_anonymous_args = 0
 1205 0000 70B5     		push	{r4, r5, r6, lr}
 1206 0002 0D46     		mov	r5, r1
 1207 0004 0446     		mov	r4, r0
 1208 0006 1646     		mov	r6, r2
 1209 0008 89B1     		cbz	r1, .L235
 1210 000a 4069     		ldr	r0, [r0, #20]
 1211 000c 08B1     		cbz	r0, .L236
 1212 000e FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1213              	.L236:
 1214 0012 6561     		str	r5, [r4, #20]
 1215 0014 3146     		mov	r1, r6
 1216 0016 04F11800 		add	r0, r4, #24
 1217 001a 6422     		movs	r2, #100
 1218 001c FFF7FEFF 		bl	strncpy
 1219 0020 0023     		movs	r3, #0
 1220 0022 0125     		movs	r5, #1
 1221 0024 84F87B30 		strb	r3, [r4, #123]
 1222 0028 2574     		strb	r5, [r4, #16]
 1223 002a 2846     		mov	r0, r5
 1224 002c 70BD     		pop	{r4, r5, r6, pc}
 1225              	.L235:
 1226 002e 4068     		ldr	r0, [r0, #4]
 1227 0030 024A     		ldr	r2, .L241
 1228 0032 0621     		movs	r1, #6
 1229 0034 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1230 0038 2846     		mov	r0, r5
 1231 003a 70BD     		pop	{r4, r5, r6, pc}
 1232              	.L242:
 1233              		.align	2
 1234              	.L241:
 1235 003c B4020000 		.word	.LC18
 1236              		.size	_ZN19ProtocolInterpreter11StartUploadEP9FileStorePKc, .-_ZN19ProtocolInterpreter11StartUploa
 1237              		.section	.text._ZN19ProtocolInterpreter12CancelUploadEv,"ax",%progbits
 1238              		.align	2
 1239              		.global	_ZN19ProtocolInterpreter12CancelUploadEv
 1240              		.thumb
 1241              		.thumb_func
 1242              		.type	_ZN19ProtocolInterpreter12CancelUploadEv, %function
 1243              	_ZN19ProtocolInterpreter12CancelUploadEv:
 1244              		@ args = 0, pretend = 0, frame = 0
 1245              		@ frame_needed = 0, uses_anonymous_args = 0
 1246              		@ link register save eliminated.
 1247 0000 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 1248 0002 012B     		cmp	r3, #1
 1249 0004 04BF     		itt	eq
 1250 0006 0223     		moveq	r3, #2
 1251 0008 0374     		strbeq	r3, [r0, #16]
 1252 000a 7047     		bx	lr
 1253              		.size	_ZN19ProtocolInterpreter12CancelUploadEv, .-_ZN19ProtocolInterpreter12CancelUploadEv
 1254              		.section	.text._ZN19ProtocolInterpreter12FinishUploadEm,"ax",%progbits
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 23


 1255              		.align	2
 1256              		.global	_ZN19ProtocolInterpreter12FinishUploadEm
 1257              		.thumb
 1258              		.thumb_func
 1259              		.type	_ZN19ProtocolInterpreter12FinishUploadEm, %function
 1260              	_ZN19ProtocolInterpreter12FinishUploadEm:
 1261              		@ args = 0, pretend = 0, frame = 0
 1262              		@ frame_needed = 0, uses_anonymous_args = 0
 1263 0000 70B5     		push	{r4, r5, r6, lr}
 1264 0002 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 1265 0004 012B     		cmp	r3, #1
 1266 0006 82B0     		sub	sp, sp, #8
 1267 0008 0446     		mov	r4, r0
 1268 000a 0D46     		mov	r5, r1
 1269 000c 1ED0     		beq	.L264
 1270              	.L253:
 1271 000e 6069     		ldr	r0, [r4, #20]
 1272 0010 18B1     		cbz	r0, .L250
 1273 0012 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1274 0016 0023     		movs	r3, #0
 1275 0018 6361     		str	r3, [r4, #20]
 1276              	.L250:
 1277 001a 207C     		ldrb	r0, [r4, #16]	@ zero_extendqisi2
 1278 001c 0228     		cmp	r0, #2
 1279 001e 08D0     		beq	.L265
 1280              	.L251:
 1281 0020 421E     		subs	r2, r0, #1
 1282 0022 5042     		rsbs	r0, r2, #0
 1283 0024 4FF00003 		mov	r3, #0
 1284 0028 5041     		adcs	r0, r0, r2
 1285 002a 2374     		strb	r3, [r4, #16]
 1286 002c 2376     		strb	r3, [r4, #24]
 1287 002e 02B0     		add	sp, sp, #8
 1288              		@ sp needed
 1289 0030 70BD     		pop	{r4, r5, r6, pc}
 1290              	.L265:
 1291 0032 237E     		ldrb	r3, [r4, #24]	@ zero_extendqisi2
 1292 0034 002B     		cmp	r3, #0
 1293 0036 F3D0     		beq	.L251
 1294 0038 6368     		ldr	r3, [r4, #4]
 1295 003a 1749     		ldr	r1, .L266
 1296 003c D3F83C08 		ldr	r0, [r3, #2108]
 1297 0040 04F11802 		add	r2, r4, #24
 1298 0044 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_
 1299 0048 207C     		ldrb	r0, [r4, #16]	@ zero_extendqisi2
 1300 004a E9E7     		b	.L251
 1301              	.L264:
 1302 004c 4069     		ldr	r0, [r0, #20]
 1303 004e FFF7FEFF 		bl	_ZN9FileStore5FlushEv
 1304 0052 B8B1     		cbz	r0, .L247
 1305 0054 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 1306              	.L252:
 1307 0056 012B     		cmp	r3, #1
 1308 0058 D9D1     		bne	.L253
 1309 005a 002D     		cmp	r5, #0
 1310 005c D7D0     		beq	.L253
 1311 005e 6069     		ldr	r0, [r4, #20]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 24


 1312 0060 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1313 0064 8542     		cmp	r5, r0
 1314 0066 D2D0     		beq	.L253
 1315 0068 0223     		movs	r3, #2
 1316 006a 2374     		strb	r3, [r4, #16]
 1317 006c 6069     		ldr	r0, [r4, #20]
 1318 006e 6668     		ldr	r6, [r4, #4]
 1319 0070 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1320 0074 0095     		str	r5, [sp]
 1321 0076 0346     		mov	r3, r0
 1322 0078 0621     		movs	r1, #6
 1323 007a 3046     		mov	r0, r6
 1324 007c 074A     		ldr	r2, .L266+4
 1325 007e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1326 0082 C4E7     		b	.L253
 1327              	.L247:
 1328 0084 0223     		movs	r3, #2
 1329 0086 2374     		strb	r3, [r4, #16]
 1330 0088 6068     		ldr	r0, [r4, #4]
 1331 008a 054A     		ldr	r2, .L266+8
 1332 008c 0621     		movs	r1, #6
 1333 008e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1334 0092 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 1335 0094 DFE7     		b	.L252
 1336              	.L267:
 1337 0096 00BF     		.align	2
 1338              	.L266:
 1339 0098 34010000 		.word	.LC9
 1340 009c 28030000 		.word	.LC20
 1341 00a0 E8020000 		.word	.LC19
 1342              		.size	_ZN19ProtocolInterpreter12FinishUploadEm, .-_ZN19ProtocolInterpreter12FinishUploadEm
 1343              		.section	.text._ZN9Webserver15HttpInterpreterC2EP8PlatformPS_P7Network,"ax",%progbits
 1344              		.align	2
 1345              		.global	_ZN9Webserver15HttpInterpreterC2EP8PlatformPS_P7Network
 1346              		.thumb
 1347              		.thumb_func
 1348              		.type	_ZN9Webserver15HttpInterpreterC2EP8PlatformPS_P7Network, %function
 1349              	_ZN9Webserver15HttpInterpreterC2EP8PlatformPS_P7Network:
 1350              		@ args = 0, pretend = 0, frame = 0
 1351              		@ frame_needed = 0, uses_anonymous_args = 0
 1352 0000 38B5     		push	{r3, r4, r5, lr}
 1353 0002 0446     		mov	r4, r0
 1354 0004 0025     		movs	r5, #0
 1355 0006 0D48     		ldr	r0, .L269
 1356 0008 E360     		str	r3, [r4, #12]
 1357 000a 2060     		str	r0, [r4]
 1358 000c 6160     		str	r1, [r4, #4]
 1359 000e A260     		str	r2, [r4, #8]
 1360 0010 6561     		str	r5, [r4, #20]
 1361 0012 2574     		strb	r5, [r4, #16]
 1362 0014 2576     		strb	r5, [r4, #24]
 1363 0016 84F87C50 		strb	r5, [r4, #124]
 1364 001a 84F86857 		strb	r5, [r4, #1896]
 1365 001e 84F86957 		strb	r5, [r4, #1897]
 1366 0022 1420     		movs	r0, #20
 1367 0024 FFF7FEFF 		bl	_Znwj
 1368 0028 0346     		mov	r3, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 25


 1369 002a 2046     		mov	r0, r4
 1370 002c 1D60     		str	r5, [r3]
 1371 002e C4F87037 		str	r3, [r4, #1904]
 1372 0032 C4F88057 		str	r5, [r4, #1920]
 1373 0036 C4F86C57 		str	r5, [r4, #1900]
 1374 003a 38BD     		pop	{r3, r4, r5, pc}
 1375              	.L270:
 1376              		.align	2
 1377              	.L269:
 1378 003c 08000000 		.word	.LANCHOR3+8
 1379              		.size	_ZN9Webserver15HttpInterpreterC2EP8PlatformPS_P7Network, .-_ZN9Webserver15HttpInterpreterC2E
 1380              		.global	_ZN9Webserver15HttpInterpreterC1EP8PlatformPS_P7Network
 1381              		.thumb_set _ZN9Webserver15HttpInterpreterC1EP8PlatformPS_P7Network,_ZN9Webserver15HttpInterpreterC
 1382              		.section	.text._ZN9WebserverC2EP8PlatformP7Network,"ax",%progbits
 1383              		.align	2
 1384              		.global	_ZN9WebserverC2EP8PlatformP7Network
 1385              		.thumb
 1386              		.thumb_func
 1387              		.type	_ZN9WebserverC2EP8PlatformP7Network, %function
 1388              	_ZN9WebserverC2EP8PlatformP7Network:
 1389              		@ args = 0, pretend = 0, frame = 0
 1390              		@ frame_needed = 0, uses_anonymous_args = 0
 1391 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1392 0004 0646     		mov	r6, r0
 1393 0006 0024     		movs	r4, #0
 1394 0008 F160     		str	r1, [r6, #12]
 1395 000a 3261     		str	r2, [r6, #16]
 1396 000c 0475     		strb	r4, [r0, #20]
 1397 000e 4FF4FD60 		mov	r0, #2024
 1398 0012 1746     		mov	r7, r2
 1399 0014 8846     		mov	r8, r1
 1400 0016 FFF7FEFF 		bl	_Znwj
 1401 001a 4146     		mov	r1, r8
 1402 001c 3246     		mov	r2, r6
 1403 001e 3B46     		mov	r3, r7
 1404 0020 0546     		mov	r5, r0
 1405 0022 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreterC1EP8PlatformPS_P7Network
 1406 0026 3560     		str	r5, [r6]
 1407 0028 4FF4E870 		mov	r0, #464
 1408 002c FFF7FEFF 		bl	_Znwj
 1409 0030 194B     		ldr	r3, .L272
 1410 0032 1A49     		ldr	r1, .L272+4
 1411 0034 1B88     		ldrh	r3, [r3]	@ unaligned
 1412 0036 C0F80480 		str	r8, [r0, #4]
 1413 003a 0546     		mov	r5, r0
 1414 003c 0122     		movs	r2, #1
 1415 003e 8660     		str	r6, [r0, #8]
 1416 0040 C760     		str	r7, [r0, #12]
 1417 0042 4461     		str	r4, [r0, #20]
 1418 0044 0474     		strb	r4, [r0, #16]
 1419 0046 0476     		strb	r4, [r0, #24]
 1420 0048 C0F80041 		str	r4, [r0, #256]
 1421 004c 80F87D40 		strb	r4, [r0, #125]
 1422 0050 0160     		str	r1, [r0]
 1423 0052 80F87C20 		strb	r2, [r0, #124]
 1424 0056 A0F86831 		strh	r3, [r0, #360]	@ unaligned
 1425 005a 7560     		str	r5, [r6, #4]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 26


 1426 005c F420     		movs	r0, #244
 1427 005e FFF7FEFF 		bl	_Znwj
 1428 0062 0F4B     		ldr	r3, .L272+8
 1429 0064 0476     		strb	r4, [r0, #24]
 1430 0066 0546     		mov	r5, r0
 1431 0068 80F87D40 		strb	r4, [r0, #125]
 1432 006c C0F80480 		str	r8, [r0, #4]
 1433 0070 8660     		str	r6, [r0, #8]
 1434 0072 C760     		str	r7, [r0, #12]
 1435 0074 4461     		str	r4, [r0, #20]
 1436 0076 0474     		strb	r4, [r0, #16]
 1437 0078 80F88440 		strb	r4, [r0, #132]
 1438 007c C0F8F040 		str	r4, [r0, #240]
 1439 0080 80F87C40 		strb	r4, [r0, #124]
 1440 0084 C0F88040 		str	r4, [r0, #128]
 1441 0088 C0F8EC40 		str	r4, [r0, #236]
 1442 008c 0360     		str	r3, [r0]
 1443 008e 3046     		mov	r0, r6
 1444 0090 B560     		str	r5, [r6, #8]
 1445 0092 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1446              	.L273:
 1447 0096 00BF     		.align	2
 1448              	.L272:
 1449 0098 6C030000 		.word	.LC21
 1450 009c 08000000 		.word	.LANCHOR2+8
 1451 00a0 08000000 		.word	.LANCHOR1+8
 1452              		.size	_ZN9WebserverC2EP8PlatformP7Network, .-_ZN9WebserverC2EP8PlatformP7Network
 1453              		.global	_ZN9WebserverC1EP8PlatformP7Network
 1454              		.thumb_set _ZN9WebserverC1EP8PlatformP7Network,_ZN9WebserverC2EP8PlatformP7Network
 1455              		.section	.text._ZN9Webserver15HttpInterpreter14SendGCodeReplyEv,"ax",%progbits
 1456              		.align	2
 1457              		.global	_ZN9Webserver15HttpInterpreter14SendGCodeReplyEv
 1458              		.thumb
 1459              		.thumb_func
 1460              		.type	_ZN9Webserver15HttpInterpreter14SendGCodeReplyEv, %function
 1461              	_ZN9Webserver15HttpInterpreter14SendGCodeReplyEv:
 1462              		@ args = 0, pretend = 0, frame = 0
 1463              		@ frame_needed = 0, uses_anonymous_args = 0
 1464 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1465 0004 0546     		mov	r5, r0
 1466 0006 D0F87007 		ldr	r0, [r0, #1904]
 1467 000a 0368     		ldr	r3, [r0]
 1468 000c 82B0     		sub	sp, sp, #8
 1469 000e 0BB3     		cbz	r3, .L278
 1470 0010 95F86937 		ldrb	r3, [r5, #1897]	@ zero_extendqisi2
 1471 0014 95F86827 		ldrb	r2, [r5, #1896]	@ zero_extendqisi2
 1472 0018 0133     		adds	r3, r3, #1
 1473 001a DBB2     		uxtb	r3, r3
 1474 001c 9A42     		cmp	r2, r3
 1475 001e 85F86937 		strb	r3, [r5, #1897]
 1476 0022 50D8     		bhi	.L286
 1477 0024 0126     		movs	r6, #1
 1478              	.L276:
 1479 0026 2A4B     		ldr	r3, .L287
 1480 0028 B3F84030 		ldrh	r3, [r3, #64]
 1481 002c 5B07     		lsls	r3, r3, #29
 1482 002e 12D5     		bpl	.L275
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 27


 1483 0030 D5F87007 		ldr	r0, [r5, #1904]
 1484 0034 6C68     		ldr	r4, [r5, #4]
 1485 0036 95F86987 		ldrb	r8, [r5, #1897]	@ zero_extendqisi2
 1486 003a 95F86877 		ldrb	r7, [r5, #1896]	@ zero_extendqisi2
 1487 003e FFF7FEFF 		bl	_ZNK11OutputStack10DataLengthEv
 1488 0042 0097     		str	r7, [sp]
 1489 0044 0190     		str	r0, [sp, #4]
 1490 0046 4346     		mov	r3, r8
 1491 0048 2046     		mov	r0, r4
 1492 004a 0221     		movs	r1, #2
 1493 004c 214A     		ldr	r2, .L287+4
 1494 004e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1495 0052 00E0     		b	.L275
 1496              	.L278:
 1497 0054 1E46     		mov	r6, r3
 1498              	.L275:
 1499 0056 AA68     		ldr	r2, [r5, #8]
 1500 0058 1F49     		ldr	r1, .L287+8
 1501 005a 9469     		ldr	r4, [r2, #24]
 1502 005c 2046     		mov	r0, r4
 1503 005e FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1504 0062 2046     		mov	r0, r4
 1505 0064 1D49     		ldr	r1, .L287+12
 1506 0066 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1507 006a 2046     		mov	r0, r4
 1508 006c 1C49     		ldr	r1, .L287+16
 1509 006e FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1510 0072 2046     		mov	r0, r4
 1511 0074 1B49     		ldr	r1, .L287+20
 1512 0076 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1513 007a 2046     		mov	r0, r4
 1514 007c 1A49     		ldr	r1, .L287+24
 1515 007e FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1516 0082 1A49     		ldr	r1, .L287+28
 1517 0084 2046     		mov	r0, r4
 1518 0086 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1519 008a D5F87007 		ldr	r0, [r5, #1904]
 1520 008e FFF7FEFF 		bl	_ZNK11OutputStack10DataLengthEv
 1521 0092 1749     		ldr	r1, .L287+32
 1522 0094 0246     		mov	r2, r0
 1523 0096 2046     		mov	r0, r4
 1524 0098 FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 1525 009c 2046     		mov	r0, r4
 1526 009e 1549     		ldr	r1, .L287+36
 1527 00a0 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1528 00a4 2046     		mov	r0, r4
 1529 00a6 D5F87017 		ldr	r1, [r5, #1904]
 1530 00aa FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEP11OutputStack
 1531 00ae 2046     		mov	r0, r4
 1532 00b0 0021     		movs	r1, #0
 1533 00b2 FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 1534 00b6 1EB1     		cbz	r6, .L274
 1535 00b8 D5F87037 		ldr	r3, [r5, #1904]
 1536 00bc 0022     		movs	r2, #0
 1537 00be 1A60     		str	r2, [r3]
 1538              	.L274:
 1539 00c0 02B0     		add	sp, sp, #8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 28


 1540              		@ sp needed
 1541 00c2 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1542              	.L286:
 1543 00c6 0121     		movs	r1, #1
 1544 00c8 FFF7FEFF 		bl	_ZN11OutputStack18IncreaseReferencesEj
 1545 00cc 0026     		movs	r6, #0
 1546 00ce AAE7     		b	.L276
 1547              	.L288:
 1548              		.align	2
 1549              	.L287:
 1550 00d0 00000000 		.word	reprap
 1551 00d4 70030000 		.word	.LC22
 1552 00d8 A8030000 		.word	.LC23
 1553 00dc BC030000 		.word	.LC24
 1554 00e0 F0030000 		.word	.LC25
 1555 00e4 04040000 		.word	.LC26
 1556 00e8 10040000 		.word	.LC27
 1557 00ec 30040000 		.word	.LC28
 1558 00f0 4C040000 		.word	.LC29
 1559 00f4 60040000 		.word	.LC30
 1560              		.size	_ZN9Webserver15HttpInterpreter14SendGCodeReplyEv, .-_ZN9Webserver15HttpInterpreter14SendGCod
 1561              		.section	.text._ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc,"ax",%progbits
 1562              		.align	2
 1563              		.global	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 1564              		.thumb
 1565              		.thumb_func
 1566              		.type	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc, %function
 1567              	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc:
 1568              		@ args = 0, pretend = 0, frame = 0
 1569              		@ frame_needed = 0, uses_anonymous_args = 0
 1570 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1571 0002 D0F80037 		ldr	r3, [r0, #1792]
 1572 0006 0646     		mov	r6, r0
 1573 0008 0F46     		mov	r7, r1
 1574 000a A3B1     		cbz	r3, .L293
 1575 000c 0446     		mov	r4, r0
 1576 000e 0025     		movs	r5, #0
 1577 0010 04E0     		b	.L294
 1578              	.L292:
 1579 0012 D6F80037 		ldr	r3, [r6, #1792]
 1580 0016 0135     		adds	r5, r5, #1
 1581 0018 AB42     		cmp	r3, r5
 1582 001a 0CD9     		bls	.L293
 1583              	.L294:
 1584 001c D4F84C06 		ldr	r0, [r4, #1612]
 1585 0020 3946     		mov	r1, r7
 1586 0022 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1587 0026 0834     		adds	r4, r4, #8
 1588 0028 0028     		cmp	r0, #0
 1589 002a F2D0     		beq	.L292
 1590 002c 06EBC505 		add	r5, r6, r5, lsl #3
 1591 0030 D5F85006 		ldr	r0, [r5, #1616]
 1592 0034 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1593              	.L293:
 1594 0036 0020     		movs	r0, #0
 1595 0038 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1596              		.size	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc, .-_ZNK9Webserver15HttpInterpreter11GetKeyV
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 29


 1597 003a 00BF     		.section	.text._ZN9Webserver15HttpInterpreter10ResetStateEv,"ax",%progbits
 1598              		.align	2
 1599              		.global	_ZN9Webserver15HttpInterpreter10ResetStateEv
 1600              		.thumb
 1601              		.thumb_func
 1602              		.type	_ZN9Webserver15HttpInterpreter10ResetStateEv, %function
 1603              	_ZN9Webserver15HttpInterpreter10ResetStateEv:
 1604              		@ args = 0, pretend = 0, frame = 0
 1605              		@ frame_needed = 0, uses_anonymous_args = 0
 1606              		@ link register save eliminated.
 1607 0000 0023     		movs	r3, #0
 1608 0002 00F17D02 		add	r2, r0, #125
 1609 0006 C0F83C26 		str	r2, [r0, #1596]
 1610 000a C0F83436 		str	r3, [r0, #1588]
 1611 000e 80F87C30 		strb	r3, [r0, #124]
 1612 0012 C0F8FC36 		str	r3, [r0, #1788]
 1613 0016 C0F80037 		str	r3, [r0, #1792]
 1614 001a C0F80437 		str	r3, [r0, #1796]
 1615 001e 7047     		bx	lr
 1616              		.size	_ZN9Webserver15HttpInterpreter10ResetStateEv, .-_ZN9Webserver15HttpInterpreter10ResetStateEv
 1617              		.section	.text._ZN9Webserver15HttpInterpreter13RejectMessageEPKcj,"ax",%progbits
 1618              		.align	2
 1619              		.global	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 1620              		.thumb
 1621              		.thumb_func
 1622              		.type	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj, %function
 1623              	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj:
 1624              		@ args = 0, pretend = 0, frame = 0
 1625              		@ frame_needed = 0, uses_anonymous_args = 0
 1626 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1627 0002 0446     		mov	r4, r0
 1628 0004 0E46     		mov	r6, r1
 1629 0006 1746     		mov	r7, r2
 1630 0008 0B46     		mov	r3, r1
 1631 000a 4068     		ldr	r0, [r0, #4]
 1632 000c 104A     		ldr	r2, .L297
 1633 000e 0221     		movs	r1, #2
 1634 0010 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1635 0014 A368     		ldr	r3, [r4, #8]
 1636 0016 0F49     		ldr	r1, .L297+4
 1637 0018 9D69     		ldr	r5, [r3, #24]
 1638 001a 3A46     		mov	r2, r7
 1639 001c 3346     		mov	r3, r6
 1640 001e 2846     		mov	r0, r5
 1641 0020 FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 1642 0024 2846     		mov	r0, r5
 1643 0026 0021     		movs	r1, #0
 1644 0028 FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 1645 002c 0023     		movs	r3, #0
 1646 002e 04F17D02 		add	r2, r4, #125
 1647 0032 C4F83C26 		str	r2, [r4, #1596]
 1648 0036 C4F83436 		str	r3, [r4, #1588]
 1649 003a 84F87C30 		strb	r3, [r4, #124]
 1650 003e C4F8FC36 		str	r3, [r4, #1788]
 1651 0042 C4F80037 		str	r3, [r4, #1792]
 1652 0046 C4F80437 		str	r3, [r4, #1796]
 1653 004a 0120     		movs	r0, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 30


 1654 004c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1655              	.L298:
 1656 004e 00BF     		.align	2
 1657              	.L297:
 1658 0050 74040000 		.word	.LC31
 1659 0054 9C040000 		.word	.LC32
 1660              		.size	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj, .-_ZN9Webserver15HttpInterpreter13Reject
 1661              		.section	.text._ZN9Webserver15HttpInterpreter8SendFileEPKcb,"ax",%progbits
 1662              		.align	2
 1663              		.global	_ZN9Webserver15HttpInterpreter8SendFileEPKcb
 1664              		.thumb
 1665              		.thumb_func
 1666              		.type	_ZN9Webserver15HttpInterpreter8SendFileEPKcb, %function
 1667              	_ZN9Webserver15HttpInterpreter8SendFileEPKcb:
 1668              		@ args = 0, pretend = 0, frame = 104
 1669              		@ frame_needed = 0, uses_anonymous_args = 0
 1670 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1671 0004 8368     		ldr	r3, [r0, #8]
 1672 0006 9BB0     		sub	sp, sp, #108
 1673 0008 0646     		mov	r6, r0
 1674 000a 1746     		mov	r7, r2
 1675 000c 0D46     		mov	r5, r1
 1676 000e 9C69     		ldr	r4, [r3, #24]
 1677 0010 002A     		cmp	r2, #0
 1678 0012 00F08380 		beq	.L300
 1679 0016 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 1680 0018 2F2B     		cmp	r3, #47
 1681 001a 00F0B480 		beq	.L333
 1682              	.L301:
 1683 001e DFF85C82 		ldr	r8, .L343+128
 1684 0022 2846     		mov	r0, r5
 1685 0024 4146     		mov	r1, r8
 1686 0026 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1687 002a 0746     		mov	r7, r0
 1688 002c 0028     		cmp	r0, #0
 1689 002e 3AD0     		beq	.L334
 1690 0030 0027     		movs	r7, #0
 1691              	.L302:
 1692 0032 7068     		ldr	r0, [r6, #4]
 1693 0034 7149     		ldr	r1, .L343
 1694 0036 2A46     		mov	r2, r5
 1695 0038 0023     		movs	r3, #0
 1696 003a FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 1697 003e 8046     		mov	r8, r0
 1698 0040 88B9     		cbnz	r0, .L306
 1699 0042 2846     		mov	r0, r5
 1700 0044 6E49     		ldr	r1, .L343+4
 1701 0046 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1702 004a 0028     		cmp	r0, #0
 1703 004c 00F09F80 		beq	.L335
 1704              	.L305:
 1705 0050 6C4A     		ldr	r2, .L343+8
 1706 0052 7068     		ldr	r0, [r6, #4]
 1707 0054 6949     		ldr	r1, .L343
 1708 0056 0023     		movs	r3, #0
 1709 0058 1546     		mov	r5, r2
 1710 005a FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 31


 1711 005e 8046     		mov	r8, r0
 1712 0060 0028     		cmp	r0, #0
 1713 0062 00F09B80 		beq	.L309
 1714              	.L306:
 1715 0066 2046     		mov	r0, r4
 1716 0068 4146     		mov	r1, r8
 1717 006a FFF7FEFF 		bl	_ZN18NetworkTransaction14SetFileToWriteEP9FileStore
 1718 006e 2046     		mov	r0, r4
 1719 0070 6549     		ldr	r1, .L343+12
 1720 0072 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1721 0076 2846     		mov	r0, r5
 1722 0078 6449     		ldr	r1, .L343+16
 1723 007a FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1724 007e 0028     		cmp	r0, #0
 1725 0080 73D0     		beq	.L336
 1726              	.L321:
 1727 0082 634A     		ldr	r2, .L343+20
 1728              	.L310:
 1729 0084 2046     		mov	r0, r4
 1730 0086 6349     		ldr	r1, .L343+24
 1731 0088 FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 1732 008c 002F     		cmp	r7, #0
 1733 008e 38D1     		bne	.L317
 1734              	.L318:
 1735 0090 2046     		mov	r0, r4
 1736 0092 6149     		ldr	r1, .L343+28
 1737 0094 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1738 0098 2046     		mov	r0, r4
 1739 009a 0021     		movs	r1, #0
 1740 009c FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 1741 00a0 1BB0     		add	sp, sp, #108
 1742              		@ sp needed
 1743 00a2 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1744              	.L334:
 1745 00a6 2846     		mov	r0, r5
 1746 00a8 FFF7FEFF 		bl	strlen
 1747 00ac C31C     		adds	r3, r0, #3
 1748 00ae 642B     		cmp	r3, #100
 1749 00b0 8146     		mov	r9, r0
 1750 00b2 BED8     		bhi	.L302
 1751 00b4 2946     		mov	r1, r5
 1752 00b6 4A46     		mov	r2, r9
 1753 00b8 6846     		mov	r0, sp
 1754 00ba FFF7FEFF 		bl	memcpy
 1755 00be D8F80000 		ldr	r0, [r8]	@ unaligned
 1756 00c2 4DF80900 		str	r0, [sp, r9]	@ unaligned
 1757 00c6 3B46     		mov	r3, r7
 1758 00c8 6A46     		mov	r2, sp
 1759 00ca 7068     		ldr	r0, [r6, #4]
 1760 00cc 4B49     		ldr	r1, .L343
 1761 00ce FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 1762 00d2 B0F10008 		subs	r8, r0, #0
 1763 00d6 0CBF     		ite	eq
 1764 00d8 0027     		moveq	r7, #0
 1765 00da 0127     		movne	r7, #1
 1766 00dc C3D1     		bne	.L306
 1767 00de A8E7     		b	.L302
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 32


 1768              	.L341:
 1769 00e0 2846     		mov	r0, r5
 1770 00e2 4749     		ldr	r1, .L343+4
 1771 00e4 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1772 00e8 0028     		cmp	r0, #0
 1773 00ea 6FD1     		bne	.L311
 1774 00ec 2846     		mov	r0, r5
 1775 00ee 4B49     		ldr	r1, .L343+32
 1776 00f0 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1777 00f4 0028     		cmp	r0, #0
 1778 00f6 6BD0     		beq	.L337
 1779 00f8 2046     		mov	r0, r4
 1780 00fa 4649     		ldr	r1, .L343+24
 1781 00fc 484A     		ldr	r2, .L343+36
 1782 00fe FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 1783              	.L317:
 1784 0102 2046     		mov	r0, r4
 1785 0104 4749     		ldr	r1, .L343+40
 1786 0106 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1787 010a 4046     		mov	r0, r8
 1788 010c FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1789 0110 4549     		ldr	r1, .L343+44
 1790 0112 0246     		mov	r2, r0
 1791 0114 2046     		mov	r0, r4
 1792 0116 FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 1793 011a B9E7     		b	.L318
 1794              	.L300:
 1795 011c 4068     		ldr	r0, [r0, #4]
 1796 011e 4349     		ldr	r1, .L343+48
 1797 0120 2A46     		mov	r2, r5
 1798 0122 3B46     		mov	r3, r7
 1799 0124 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 1800 0128 8046     		mov	r8, r0
 1801 012a 0028     		cmp	r0, #0
 1802 012c 36D0     		beq	.L309
 1803 012e 2046     		mov	r0, r4
 1804 0130 4146     		mov	r1, r8
 1805 0132 FFF7FEFF 		bl	_ZN18NetworkTransaction14SetFileToWriteEP9FileStore
 1806 0136 2046     		mov	r0, r4
 1807 0138 3349     		ldr	r1, .L343+12
 1808 013a FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1809 013e 2046     		mov	r0, r4
 1810 0140 3B49     		ldr	r1, .L343+52
 1811 0142 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1812 0146 2046     		mov	r0, r4
 1813 0148 3A49     		ldr	r1, .L343+56
 1814 014a FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1815 014e 2046     		mov	r0, r4
 1816 0150 3949     		ldr	r1, .L343+60
 1817 0152 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1818 0156 2046     		mov	r0, r4
 1819 0158 3849     		ldr	r1, .L343+64
 1820 015a FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1821 015e 2846     		mov	r0, r5
 1822 0160 2A49     		ldr	r1, .L343+16
 1823 0162 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1824 0166 0028     		cmp	r0, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 33


 1825 0168 8BD1     		bne	.L321
 1826              	.L336:
 1827 016a 2846     		mov	r0, r5
 1828 016c 3449     		ldr	r1, .L343+68
 1829 016e FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1830 0172 08B1     		cbz	r0, .L338
 1831 0174 334A     		ldr	r2, .L343+72
 1832 0176 85E7     		b	.L310
 1833              	.L338:
 1834 0178 2846     		mov	r0, r5
 1835 017a 3349     		ldr	r1, .L343+76
 1836 017c FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1837 0180 B8B1     		cbz	r0, .L339
 1838 0182 324A     		ldr	r2, .L343+80
 1839 0184 7EE7     		b	.L310
 1840              	.L333:
 1841 0186 4B78     		ldrb	r3, [r1, #1]	@ zero_extendqisi2
 1842 0188 8BB1     		cbz	r3, .L319
 1843 018a 4D1C     		adds	r5, r1, #1
 1844 018c 47E7     		b	.L301
 1845              	.L335:
 1846 018e 2846     		mov	r0, r5
 1847 0190 2F49     		ldr	r1, .L343+84
 1848 0192 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1849 0196 0028     		cmp	r0, #0
 1850 0198 7FF45AAF 		bne	.L305
 1851              	.L309:
 1852 019c 3046     		mov	r0, r6
 1853 019e 2D49     		ldr	r1, .L343+88
 1854 01a0 4FF4CA72 		mov	r2, #404
 1855 01a4 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 1856 01a8 1BB0     		add	sp, sp, #108
 1857              		@ sp needed
 1858 01aa BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1859              	.L319:
 1860 01ae 2A4D     		ldr	r5, .L343+92
 1861 01b0 35E7     		b	.L301
 1862              	.L339:
 1863 01b2 2846     		mov	r0, r5
 1864 01b4 2949     		ldr	r1, .L343+96
 1865 01b6 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1866 01ba 08B1     		cbz	r0, .L340
 1867 01bc 284A     		ldr	r2, .L343+100
 1868 01be 61E7     		b	.L310
 1869              	.L340:
 1870 01c0 2846     		mov	r0, r5
 1871 01c2 2349     		ldr	r1, .L343+84
 1872 01c4 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1873 01c8 0028     		cmp	r0, #0
 1874 01ca 89D0     		beq	.L341
 1875              	.L311:
 1876 01cc 254A     		ldr	r2, .L343+104
 1877 01ce 59E7     		b	.L310
 1878              	.L337:
 1879 01d0 2846     		mov	r0, r5
 1880 01d2 2549     		ldr	r1, .L343+108
 1881 01d4 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 34


 1882 01d8 08B1     		cbz	r0, .L342
 1883              	.L313:
 1884 01da 244A     		ldr	r2, .L343+112
 1885 01dc 52E7     		b	.L310
 1886              	.L342:
 1887 01de 2846     		mov	r0, r5
 1888 01e0 2349     		ldr	r1, .L343+116
 1889 01e2 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1890 01e6 0028     		cmp	r0, #0
 1891 01e8 F7D1     		bne	.L313
 1892 01ea 2846     		mov	r0, r5
 1893 01ec 2149     		ldr	r1, .L343+120
 1894 01ee FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1895 01f2 0028     		cmp	r0, #0
 1896 01f4 F1D1     		bne	.L313
 1897 01f6 204A     		ldr	r2, .L343+124
 1898 01f8 44E7     		b	.L310
 1899              	.L344:
 1900 01fa 00BF     		.align	2
 1901              	.L343:
 1902 01fc 50050000 		.word	.LC43
 1903 0200 58050000 		.word	.LC44
 1904 0204 CC040000 		.word	.LC34
 1905 0208 A8030000 		.word	.LC23
 1906 020c 74050000 		.word	.LC47
 1907 0210 0C050000 		.word	.LC38
 1908 0214 D8050000 		.word	.LC57
 1909 0218 60040000 		.word	.LC30
 1910 021c D0050000 		.word	.LC56
 1911 0220 EC050000 		.word	.LC58
 1912 0224 A0050000 		.word	.LC54
 1913 0228 B8050000 		.word	.LC55
 1914 022c 34010000 		.word	.LC9
 1915 0230 BC030000 		.word	.LC24
 1916 0234 F0030000 		.word	.LC25
 1917 0238 04040000 		.word	.LC26
 1918 023c 10040000 		.word	.LC27
 1919 0240 7C050000 		.word	.LC48
 1920 0244 18050000 		.word	.LC39
 1921 0248 84050000 		.word	.LC49
 1922 024c 34050000 		.word	.LC41
 1923 0250 60050000 		.word	.LC45
 1924 0254 68050000 		.word	.LC46
 1925 0258 C0040000 		.word	.LC33
 1926 025c 88050000 		.word	.LC50
 1927 0260 28050000 		.word	.LC40
 1928 0264 E4040000 		.word	.LC36
 1929 0268 90050000 		.word	.LC51
 1930 026c D8040000 		.word	.LC35
 1931 0270 94050000 		.word	.LC52
 1932 0274 98050000 		.word	.LC53
 1933 0278 F0040000 		.word	.LC37
 1934 027c 4C050000 		.word	.LC42
 1935              		.size	_ZN9Webserver15HttpInterpreter8SendFileEPKcb, .-_ZN9Webserver15HttpInterpreter8SendFileEPKcb
 1936              		.section	.text._ZN9Webserver15HttpInterpreter19NoMoreDataAvailableEv,"ax",%progbits
 1937              		.align	2
 1938              		.global	_ZN9Webserver15HttpInterpreter19NoMoreDataAvailableEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 35


 1939              		.thumb
 1940              		.thumb_func
 1941              		.type	_ZN9Webserver15HttpInterpreter19NoMoreDataAvailableEv, %function
 1942              	_ZN9Webserver15HttpInterpreter19NoMoreDataAvailableEv:
 1943              		@ args = 0, pretend = 0, frame = 0
 1944              		@ frame_needed = 0, uses_anonymous_args = 0
 1945              		@ link register save eliminated.
 1946 0000 0249     		ldr	r1, .L346
 1947 0002 4FF4FA72 		mov	r2, #500
 1948 0006 FFF7FEBF 		b	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 1949              	.L347:
 1950 000a 00BF     		.align	2
 1951              	.L346:
 1952 000c FC050000 		.word	.LC59
 1953              		.size	_ZN9Webserver15HttpInterpreter19NoMoreDataAvailableEv, .-_ZN9Webserver15HttpInterpreter19NoM
 1954              		.section	.text._ZN9Webserver15HttpInterpreter12AuthenticateEv,"ax",%progbits
 1955              		.align	2
 1956              		.global	_ZN9Webserver15HttpInterpreter12AuthenticateEv
 1957              		.thumb
 1958              		.thumb_func
 1959              		.type	_ZN9Webserver15HttpInterpreter12AuthenticateEv, %function
 1960              	_ZN9Webserver15HttpInterpreter12AuthenticateEv:
 1961              		@ args = 0, pretend = 0, frame = 0
 1962              		@ frame_needed = 0, uses_anonymous_args = 0
 1963 0000 38B5     		push	{r3, r4, r5, lr}
 1964 0002 90F86857 		ldrb	r5, [r0, #1896]	@ zero_extendqisi2
 1965 0006 072D     		cmp	r5, #7
 1966 0008 0446     		mov	r4, r0
 1967 000a 01D9     		bls	.L351
 1968 000c 0020     		movs	r0, #0
 1969 000e 38BD     		pop	{r3, r4, r5, pc}
 1970              	.L351:
 1971 0010 8368     		ldr	r3, [r0, #8]
 1972 0012 9869     		ldr	r0, [r3, #24]
 1973 0014 FFF7FEFF 		bl	_ZNK18NetworkTransaction11GetRemoteIPEv
 1974 0018 05EB4505 		add	r5, r5, r5, lsl #1
 1975 001c 04EB8505 		add	r5, r4, r5, lsl #2
 1976 0020 C5F80807 		str	r0, [r5, #1800]
 1977 0024 94F86857 		ldrb	r5, [r4, #1896]	@ zero_extendqisi2
 1978 0028 FFF7FEFF 		bl	millis
 1979 002c 05EB4505 		add	r5, r5, r5, lsl #1
 1980 0030 04EB8505 		add	r5, r4, r5, lsl #2
 1981 0034 0022     		movs	r2, #0
 1982 0036 C5F80C07 		str	r0, [r5, #1804]
 1983 003a 94F86837 		ldrb	r3, [r4, #1896]	@ zero_extendqisi2
 1984 003e 03EB4301 		add	r1, r3, r3, lsl #1
 1985 0042 04EB8101 		add	r1, r4, r1, lsl #2
 1986 0046 0133     		adds	r3, r3, #1
 1987 0048 81F81027 		strb	r2, [r1, #1808]
 1988 004c 84F86837 		strb	r3, [r4, #1896]
 1989 0050 0120     		movs	r0, #1
 1990 0052 38BD     		pop	{r3, r4, r5, pc}
 1991              		.size	_ZN9Webserver15HttpInterpreter12AuthenticateEv, .-_ZN9Webserver15HttpInterpreter12Authentica
 1992              		.section	.text._ZNK9Webserver15HttpInterpreter15IsAuthenticatedEv,"ax",%progbits
 1993              		.align	2
 1994              		.global	_ZNK9Webserver15HttpInterpreter15IsAuthenticatedEv
 1995              		.thumb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 36


 1996              		.thumb_func
 1997              		.type	_ZNK9Webserver15HttpInterpreter15IsAuthenticatedEv, %function
 1998              	_ZNK9Webserver15HttpInterpreter15IsAuthenticatedEv:
 1999              		@ args = 0, pretend = 0, frame = 0
 2000              		@ frame_needed = 0, uses_anonymous_args = 0
 2001 0000 38B5     		push	{r3, r4, r5, lr}
 2002 0002 8368     		ldr	r3, [r0, #8]
 2003 0004 0546     		mov	r5, r0
 2004 0006 9869     		ldr	r0, [r3, #24]
 2005 0008 FFF7FEFF 		bl	_ZNK18NetworkTransaction11GetRemoteIPEv
 2006 000c 95F86847 		ldrb	r4, [r5, #1896]	@ zero_extendqisi2
 2007 0010 7CB1     		cbz	r4, .L359
 2008 0012 D5F80837 		ldr	r3, [r5, #1800]
 2009 0016 8342     		cmp	r3, r0
 2010 0018 0DD0     		beq	.L358
 2011 001a 2A46     		mov	r2, r5
 2012 001c 0023     		movs	r3, #0
 2013 001e 03E0     		b	.L354
 2014              	.L355:
 2015 0020 D2F80817 		ldr	r1, [r2, #1800]
 2016 0024 8142     		cmp	r1, r0
 2017 0026 06D0     		beq	.L358
 2018              	.L354:
 2019 0028 0133     		adds	r3, r3, #1
 2020 002a A342     		cmp	r3, r4
 2021 002c 02F10C02 		add	r2, r2, #12
 2022 0030 F6D3     		bcc	.L355
 2023              	.L359:
 2024 0032 0020     		movs	r0, #0
 2025 0034 38BD     		pop	{r3, r4, r5, pc}
 2026              	.L358:
 2027 0036 0120     		movs	r0, #1
 2028 0038 38BD     		pop	{r3, r4, r5, pc}
 2029              		.size	_ZNK9Webserver15HttpInterpreter15IsAuthenticatedEv, .-_ZNK9Webserver15HttpInterpreter15IsAut
 2030 003a 00BF     		.section	.text._ZN9Webserver15HttpInterpreter20UpdateAuthenticationEv,"ax",%progbits
 2031              		.align	2
 2032              		.global	_ZN9Webserver15HttpInterpreter20UpdateAuthenticationEv
 2033              		.thumb
 2034              		.thumb_func
 2035              		.type	_ZN9Webserver15HttpInterpreter20UpdateAuthenticationEv, %function
 2036              	_ZN9Webserver15HttpInterpreter20UpdateAuthenticationEv:
 2037              		@ args = 0, pretend = 0, frame = 0
 2038              		@ frame_needed = 0, uses_anonymous_args = 0
 2039 0000 38B5     		push	{r3, r4, r5, lr}
 2040 0002 8368     		ldr	r3, [r0, #8]
 2041 0004 0546     		mov	r5, r0
 2042 0006 9869     		ldr	r0, [r3, #24]
 2043 0008 FFF7FEFF 		bl	_ZNK18NetworkTransaction11GetRemoteIPEv
 2044 000c 95F86817 		ldrb	r1, [r5, #1896]	@ zero_extendqisi2
 2045 0010 79B1     		cbz	r1, .L360
 2046 0012 D5F80837 		ldr	r3, [r5, #1800]
 2047 0016 8342     		cmp	r3, r0
 2048 0018 0CD0     		beq	.L371
 2049 001a 2B46     		mov	r3, r5
 2050 001c 0024     		movs	r4, #0
 2051 001e 03E0     		b	.L364
 2052              	.L365:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 37


 2053 0020 D3F80827 		ldr	r2, [r3, #1800]
 2054 0024 8242     		cmp	r2, r0
 2055 0026 06D0     		beq	.L362
 2056              	.L364:
 2057 0028 0134     		adds	r4, r4, #1
 2058 002a 8C42     		cmp	r4, r1
 2059 002c 03F10C03 		add	r3, r3, #12
 2060 0030 F6D3     		bcc	.L365
 2061              	.L360:
 2062 0032 38BD     		pop	{r3, r4, r5, pc}
 2063              	.L371:
 2064 0034 0024     		movs	r4, #0
 2065              	.L362:
 2066 0036 FFF7FEFF 		bl	millis
 2067 003a 04EB4404 		add	r4, r4, r4, lsl #1
 2068 003e 05EB8405 		add	r5, r5, r4, lsl #2
 2069 0042 C5F80C07 		str	r0, [r5, #1804]
 2070 0046 38BD     		pop	{r3, r4, r5, pc}
 2071              		.size	_ZN9Webserver15HttpInterpreter20UpdateAuthenticationEv, .-_ZN9Webserver15HttpInterpreter20Up
 2072              		.section	.text._ZN9Webserver15HttpInterpreter20RemoveAuthenticationEv,"ax",%progbits
 2073              		.align	2
 2074              		.global	_ZN9Webserver15HttpInterpreter20RemoveAuthenticationEv
 2075              		.thumb
 2076              		.thumb_func
 2077              		.type	_ZN9Webserver15HttpInterpreter20RemoveAuthenticationEv, %function
 2078              	_ZN9Webserver15HttpInterpreter20RemoveAuthenticationEv:
 2079              		@ args = 0, pretend = 0, frame = 0
 2080              		@ frame_needed = 0, uses_anonymous_args = 0
 2081 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2082 0002 8368     		ldr	r3, [r0, #8]
 2083 0004 0746     		mov	r7, r0
 2084 0006 9869     		ldr	r0, [r3, #24]
 2085 0008 FFF7FEFF 		bl	_ZNK18NetworkTransaction11GetRemoteIPEv
 2086 000c 97F86847 		ldrb	r4, [r7, #1896]	@ zero_extendqisi2
 2087 0010 04F1FF3C 		add	ip, r4, #-1
 2088 0014 BCF1FF3F 		cmp	ip, #-1
 2089 0018 6346     		mov	r3, ip
 2090 001a 20D0     		beq	.L381
 2091 001c 4FEA4C02 		lsl	r2, ip, #1
 2092 0020 02EB0C01 		add	r1, r2, ip
 2093 0024 07EB8101 		add	r1, r7, r1, lsl #2
 2094 0028 D1F80817 		ldr	r1, [r1, #1800]
 2095 002c 8142     		cmp	r1, r0
 2096 002e 19D0     		beq	.L374
 2097 0030 04EB4402 		add	r2, r4, r4, lsl #1
 2098 0034 07EB8202 		add	r2, r7, r2, lsl #2
 2099 0038 A4EB8406 		sub	r6, r4, r4, lsl #2
 2100 003c 04EB4405 		add	r5, r4, r4, lsl #1
 2101 0040 02F5E162 		add	r2, r2, #1800
 2102 0044 B600     		lsls	r6, r6, #2
 2103 0046 AD00     		lsls	r5, r5, #2
 2104 0048 03E0     		b	.L376
 2105              	.L379:
 2106 004a 51F80C1C 		ldr	r1, [r1, #-12]
 2107 004e 8142     		cmp	r1, r0
 2108 0050 07D0     		beq	.L386
 2109              	.L376:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 38


 2110 0052 0C3A     		subs	r2, r2, #12
 2111 0054 B118     		adds	r1, r6, r2
 2112 0056 13F1FF33 		adds	r3, r3, #-1
 2113 005a 2944     		add	r1, r1, r5
 2114 005c F5D2     		bcs	.L379
 2115              	.L381:
 2116 005e 0020     		movs	r0, #0
 2117 0060 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2118              	.L386:
 2119 0062 5A00     		lsls	r2, r3, #1
 2120              	.L374:
 2121 0064 1A44     		add	r2, r2, r3
 2122 0066 07EB8202 		add	r2, r7, r2, lsl #2
 2123 006a 92F81027 		ldrb	r2, [r2, #1808]	@ zero_extendqisi2
 2124 006e 002A     		cmp	r2, #0
 2125 0070 F5D1     		bne	.L381
 2126 0072 0133     		adds	r3, r3, #1
 2127 0074 A342     		cmp	r3, r4
 2128 0076 16D2     		bcs	.L377
 2129 0078 03EB4301 		add	r1, r3, r3, lsl #1
 2130 007c 07EB8101 		add	r1, r7, r1, lsl #2
 2131 0080 01F2FC61 		addw	r1, r1, #1788
 2132 0084 00E0     		b	.L378
 2133              	.L385:
 2134 0086 1146     		mov	r1, r2
 2135              	.L378:
 2136 0088 0A46     		mov	r2, r1
 2137 008a 0133     		adds	r3, r3, #1
 2138 008c 52F80C4F 		ldr	r4, [r2, #12]!	@ unaligned
 2139 0090 5068     		ldr	r0, [r2, #4]	@ unaligned
 2140 0092 9568     		ldr	r5, [r2, #8]	@ unaligned
 2141 0094 8D60     		str	r5, [r1, #8]	@ unaligned
 2142 0096 0C60     		str	r4, [r1]	@ unaligned
 2143 0098 4860     		str	r0, [r1, #4]	@ unaligned
 2144 009a 97F86847 		ldrb	r4, [r7, #1896]	@ zero_extendqisi2
 2145 009e 9C42     		cmp	r4, r3
 2146 00a0 F1D8     		bhi	.L385
 2147 00a2 04F1FF3C 		add	ip, r4, #-1
 2148              	.L377:
 2149 00a6 87F868C7 		strb	ip, [r7, #1896]
 2150 00aa 0120     		movs	r0, #1
 2151 00ac F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2152              		.size	_ZN9Webserver15HttpInterpreter20RemoveAuthenticationEv, .-_ZN9Webserver15HttpInterpreter20Re
 2153 00ae 00BF     		.section	.text._ZN9Webserver15HttpInterpreter16HandleGCodeReplyEP12OutputBuffer,"ax",%progbits
 2154              		.align	2
 2155              		.global	_ZN9Webserver15HttpInterpreter16HandleGCodeReplyEP12OutputBuffer
 2156              		.thumb
 2157              		.thumb_func
 2158              		.type	_ZN9Webserver15HttpInterpreter16HandleGCodeReplyEP12OutputBuffer, %function
 2159              	_ZN9Webserver15HttpInterpreter16HandleGCodeReplyEP12OutputBuffer:
 2160              		@ args = 0, pretend = 0, frame = 0
 2161              		@ frame_needed = 0, uses_anonymous_args = 0
 2162 0000 10B5     		push	{r4, lr}
 2163 0002 0446     		mov	r4, r0
 2164 0004 0846     		mov	r0, r1
 2165 0006 31B1     		cbz	r1, .L387
 2166 0008 94F86837 		ldrb	r3, [r4, #1896]	@ zero_extendqisi2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 39


 2167 000c 23B9     		cbnz	r3, .L393
 2168 000e BDE81040 		pop	{r4, lr}
 2169 0012 FFF7FEBF 		b	_ZN12OutputBuffer10ReleaseAllEPS_
 2170              	.L387:
 2171 0016 10BD     		pop	{r4, pc}
 2172              	.L393:
 2173 0018 D4F87007 		ldr	r0, [r4, #1904]
 2174 001c FFF7FEFF 		bl	_ZN11OutputStack4PushEP12OutputBuffer
 2175 0020 D4F86C37 		ldr	r3, [r4, #1900]
 2176 0024 0022     		movs	r2, #0
 2177 0026 0133     		adds	r3, r3, #1
 2178 0028 84F86927 		strb	r2, [r4, #1897]
 2179 002c C4F86C37 		str	r3, [r4, #1900]
 2180 0030 10BD     		pop	{r4, pc}
 2181              		.size	_ZN9Webserver15HttpInterpreter16HandleGCodeReplyEP12OutputBuffer, .-_ZN9Webserver15HttpInter
 2182 0032 00BF     		.section	.text._ZN9Webserver15HttpInterpreter16HandleGCodeReplyEPKc,"ax",%progbits
 2183              		.align	2
 2184              		.global	_ZN9Webserver15HttpInterpreter16HandleGCodeReplyEPKc
 2185              		.thumb
 2186              		.thumb_func
 2187              		.type	_ZN9Webserver15HttpInterpreter16HandleGCodeReplyEPKc, %function
 2188              	_ZN9Webserver15HttpInterpreter16HandleGCodeReplyEPKc:
 2189              		@ args = 0, pretend = 0, frame = 8
 2190              		@ frame_needed = 0, uses_anonymous_args = 0
 2191 0000 30B5     		push	{r4, r5, lr}
 2192 0002 90F86837 		ldrb	r3, [r0, #1896]	@ zero_extendqisi2
 2193 0006 83B0     		sub	sp, sp, #12
 2194 0008 0446     		mov	r4, r0
 2195 000a 0D46     		mov	r5, r1
 2196 000c 0BB9     		cbnz	r3, .L406
 2197              	.L394:
 2198 000e 03B0     		add	sp, sp, #12
 2199              		@ sp needed
 2200 0010 30BD     		pop	{r4, r5, pc}
 2201              	.L406:
 2202 0012 D0F87007 		ldr	r0, [r0, #1904]
 2203 0016 FFF7FEFF 		bl	_ZNK11OutputStack11GetLastItemEv
 2204 001a 0190     		str	r0, [sp, #4]
 2205 001c 10B1     		cbz	r0, .L396
 2206 001e 90F81431 		ldrb	r3, [r0, #276]	@ zero_extendqisi2
 2207 0022 53B1     		cbz	r3, .L397
 2208              	.L396:
 2209 0024 01A8     		add	r0, sp, #4
 2210 0026 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2211 002a 0028     		cmp	r0, #0
 2212 002c EFD0     		beq	.L394
 2213 002e D4F87007 		ldr	r0, [r4, #1904]
 2214 0032 0199     		ldr	r1, [sp, #4]
 2215 0034 FFF7FEFF 		bl	_ZN11OutputStack4PushEP12OutputBuffer
 2216 0038 0198     		ldr	r0, [sp, #4]
 2217              	.L397:
 2218 003a 2946     		mov	r1, r5
 2219 003c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2220 0040 D4F86C37 		ldr	r3, [r4, #1900]
 2221 0044 0022     		movs	r2, #0
 2222 0046 0133     		adds	r3, r3, #1
 2223 0048 C4F86C37 		str	r3, [r4, #1900]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 40


 2224 004c 84F86927 		strb	r2, [r4, #1897]
 2225 0050 03B0     		add	sp, sp, #12
 2226              		@ sp needed
 2227 0052 30BD     		pop	{r4, r5, pc}
 2228              		.size	_ZN9Webserver15HttpInterpreter16HandleGCodeReplyEPKc, .-_ZN9Webserver15HttpInterpreter16Hand
 2229              		.section	.text._ZN9Webserver15HttpInterpreter22ProcessDeferredRequestEv,"ax",%progbits
 2230              		.align	2
 2231              		.global	_ZN9Webserver15HttpInterpreter22ProcessDeferredRequestEv
 2232              		.thumb
 2233              		.thumb_func
 2234              		.type	_ZN9Webserver15HttpInterpreter22ProcessDeferredRequestEv, %function
 2235              	_ZN9Webserver15HttpInterpreter22ProcessDeferredRequestEv:
 2236              		@ args = 0, pretend = 0, frame = 8
 2237              		@ frame_needed = 0, uses_anonymous_args = 0
 2238 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2239 0002 83B0     		sub	sp, sp, #12
 2240 0004 0446     		mov	r4, r0
 2241 0006 02AD     		add	r5, sp, #8
 2242 0008 0023     		movs	r3, #0
 2243 000a C068     		ldr	r0, [r0, #12]
 2244 000c 45F8043D 		str	r3, [r5, #-4]!
 2245 0010 D4F88067 		ldr	r6, [r4, #1920]
 2246 0014 FFF7FEFF 		bl	_ZN7Network6UnlockEv
 2247 0018 294B     		ldr	r3, .L416
 2248 001a 2A46     		mov	r2, r5
 2249 001c 04F28471 		addw	r1, r4, #1924
 2250 0020 D869     		ldr	r0, [r3, #28]
 2251 0022 FFF7FEFF 		bl	_ZN12PrintMonitor19GetFileInfoResponseEPKcRP12OutputBuffer
 2252 0026 0746     		mov	r7, r0
 2253              	.L409:
 2254 0028 E068     		ldr	r0, [r4, #12]
 2255 002a FFF7FEFF 		bl	_ZN7Network4LockEv
 2256 002e 0028     		cmp	r0, #0
 2257 0030 FAD0     		beq	.L409
 2258 0032 D4F88037 		ldr	r3, [r4, #1920]
 2259 0036 9E42     		cmp	r6, r3
 2260 0038 04D0     		beq	.L415
 2261 003a 0198     		ldr	r0, [sp, #4]
 2262 003c FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllEPS_
 2263 0040 03B0     		add	sp, sp, #12
 2264              		@ sp needed
 2265 0042 F0BD     		pop	{r4, r5, r6, r7, pc}
 2266              	.L415:
 2267 0044 A368     		ldr	r3, [r4, #8]
 2268 0046 9D69     		ldr	r5, [r3, #24]
 2269 0048 002F     		cmp	r7, #0
 2270 004a 31D0     		beq	.L411
 2271 004c 0023     		movs	r3, #0
 2272 004e C4F88037 		str	r3, [r4, #1920]
 2273 0052 2846     		mov	r0, r5
 2274 0054 1B49     		ldr	r1, .L416+4
 2275 0056 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 2276 005a 2846     		mov	r0, r5
 2277 005c 1A49     		ldr	r1, .L416+8
 2278 005e FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 2279 0062 2846     		mov	r0, r5
 2280 0064 1949     		ldr	r1, .L416+12
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 41


 2281 0066 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 2282 006a 2846     		mov	r0, r5
 2283 006c 1849     		ldr	r1, .L416+16
 2284 006e FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 2285 0072 2846     		mov	r0, r5
 2286 0074 1749     		ldr	r1, .L416+20
 2287 0076 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 2288 007a 2846     		mov	r0, r5
 2289 007c 1649     		ldr	r1, .L416+24
 2290 007e FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 2291 0082 0198     		ldr	r0, [sp, #4]
 2292 0084 D0B1     		cbz	r0, .L414
 2293 0086 FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 2294 008a 0246     		mov	r2, r0
 2295              	.L412:
 2296 008c 2846     		mov	r0, r5
 2297 008e 1349     		ldr	r1, .L416+28
 2298 0090 FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 2299 0094 2846     		mov	r0, r5
 2300 0096 1249     		ldr	r1, .L416+32
 2301 0098 FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 2302 009c 2846     		mov	r0, r5
 2303 009e 0199     		ldr	r1, [sp, #4]
 2304 00a0 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEP12OutputBuffer
 2305 00a4 2846     		mov	r0, r5
 2306 00a6 0021     		movs	r1, #0
 2307 00a8 FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 2308 00ac 03B0     		add	sp, sp, #12
 2309              		@ sp needed
 2310 00ae F0BD     		pop	{r4, r5, r6, r7, pc}
 2311              	.L411:
 2312 00b0 2846     		mov	r0, r5
 2313 00b2 0221     		movs	r1, #2
 2314 00b4 FFF7FEFF 		bl	_ZN18NetworkTransaction5DeferE12DeferralMode
 2315 00b8 03B0     		add	sp, sp, #12
 2316              		@ sp needed
 2317 00ba F0BD     		pop	{r4, r5, r6, r7, pc}
 2318              	.L414:
 2319 00bc 0246     		mov	r2, r0
 2320 00be E5E7     		b	.L412
 2321              	.L417:
 2322              		.align	2
 2323              	.L416:
 2324 00c0 00000000 		.word	reprap
 2325 00c4 A8030000 		.word	.LC23
 2326 00c8 BC030000 		.word	.LC24
 2327 00cc F0030000 		.word	.LC25
 2328 00d0 04040000 		.word	.LC26
 2329 00d4 10040000 		.word	.LC27
 2330 00d8 20060000 		.word	.LC60
 2331 00dc 4C040000 		.word	.LC29
 2332 00e0 60040000 		.word	.LC30
 2333              		.size	_ZN9Webserver15HttpInterpreter22ProcessDeferredRequestEv, .-_ZN9Webserver15HttpInterpreter22
 2334              		.section	.text._ZN9Webserver15HttpInterpreter15GetJsonResponseEPKcRP12OutputBufferRb,"ax",%progbit
 2335              		.align	2
 2336              		.global	_ZN9Webserver15HttpInterpreter15GetJsonResponseEPKcRP12OutputBufferRb
 2337              		.thumb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 42


 2338              		.thumb_func
 2339              		.type	_ZN9Webserver15HttpInterpreter15GetJsonResponseEPKcRP12OutputBufferRb, %function
 2340              	_ZN9Webserver15HttpInterpreter15GetJsonResponseEPKcRP12OutputBufferRb:
 2341              		@ args = 0, pretend = 0, frame = 40
 2342              		@ frame_needed = 0, uses_anonymous_args = 0
 2343 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2344 0004 0D46     		mov	r5, r1
 2345 0006 0021     		movs	r1, #0
 2346 0008 8AB0     		sub	sp, sp, #40
 2347 000a 0446     		mov	r4, r0
 2348 000c 1970     		strb	r1, [r3]
 2349 000e 2846     		mov	r0, r5
 2350 0010 A049     		ldr	r1, .L506
 2351 0012 1646     		mov	r6, r2
 2352 0014 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2353 0018 0028     		cmp	r0, #0
 2354 001a 2DD1     		bne	.L494
 2355              	.L419:
 2356 001c 2046     		mov	r0, r4
 2357 001e FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter15IsAuthenticatedEv
 2358 0022 0028     		cmp	r0, #0
 2359 0024 51D0     		beq	.L495
 2360 0026 2846     		mov	r0, r5
 2361 0028 9B49     		ldr	r1, .L506+4
 2362 002a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2363 002e 0028     		cmp	r0, #0
 2364 0030 54D1     		bne	.L496
 2365 0032 2846     		mov	r0, r5
 2366 0034 9949     		ldr	r1, .L506+8
 2367 0036 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2368 003a 0028     		cmp	r0, #0
 2369 003c 70D0     		beq	.L427
 2370 003e 2046     		mov	r0, r4
 2371 0040 9749     		ldr	r1, .L506+12
 2372 0042 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2373 0046 0546     		mov	r5, r0
 2374 0048 0028     		cmp	r0, #0
 2375 004a 00F00881 		beq	.L428
 2376 004e 9449     		ldr	r1, .L506+12
 2377 0050 2046     		mov	r0, r4
 2378 0052 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2379 0056 FFF7FEFF 		bl	atoi
 2380 005a 431E     		subs	r3, r0, #1
 2381 005c 022B     		cmp	r3, #2
 2382 005e 94BF     		ite	ls
 2383 0060 C4B2     		uxtbls	r4, r0
 2384 0062 0124     		movhi	r4, #1
 2385 0064 3068     		ldr	r0, [r6]
 2386 0066 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 2387 006a 2146     		mov	r1, r4
 2388 006c 8D48     		ldr	r0, .L506+16
 2389 006e 0022     		movs	r2, #0
 2390 0070 FFF7FEFF 		bl	_ZN6RepRap17GetStatusResponseEh14ResponseSource
 2391 0074 3060     		str	r0, [r6]
 2392 0076 25E0     		b	.L418
 2393              	.L494:
 2394 0078 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 43


 2395 007a 8B49     		ldr	r1, .L506+20
 2396 007c FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2397 0080 0028     		cmp	r0, #0
 2398 0082 CBD0     		beq	.L419
 2399 0084 2046     		mov	r0, r4
 2400 0086 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter15IsAuthenticatedEv
 2401 008a 0028     		cmp	r0, #0
 2402 008c 34D0     		beq	.L497
 2403              	.L421:
 2404 008e 2046     		mov	r0, r4
 2405 0090 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter12AuthenticateEv
 2406 0094 0028     		cmp	r0, #0
 2407 0096 3ED0     		beq	.L498
 2408 0098 D4F80037 		ldr	r3, [r4, #1792]
 2409 009c 012B     		cmp	r3, #1
 2410 009e 06D9     		bls	.L456
 2411 00a0 D4F85406 		ldr	r0, [r4, #1620]
 2412 00a4 8149     		ldr	r1, .L506+24
 2413 00a6 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2414 00aa 0028     		cmp	r0, #0
 2415 00ac 75D1     		bne	.L499
 2416              	.L456:
 2417 00ae 6068     		ldr	r0, [r4, #4]
 2418 00b0 3568     		ldr	r5, [r6]
 2419 00b2 FFF7FEFF 		bl	_ZNK8Platform14GetBoardStringEv
 2420 00b6 7E49     		ldr	r1, .L506+28
 2421 00b8 0346     		mov	r3, r0
 2422 00ba 4FF4FA52 		mov	r2, #8000
 2423 00be 2846     		mov	r0, r5
 2424 00c0 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 2425              	.L418:
 2426 00c4 0AB0     		add	sp, sp, #40
 2427              		@ sp needed
 2428 00c6 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2429              	.L495:
 2430 00ca 2046     		mov	r0, r4
 2431 00cc 7949     		ldr	r1, .L506+32
 2432 00ce 4FF4FA72 		mov	r2, #500
 2433 00d2 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 2434 00d6 0AB0     		add	sp, sp, #40
 2435              		@ sp needed
 2436 00d8 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2437              	.L496:
 2438 00dc 2046     		mov	r0, r4
 2439 00de 3468     		ldr	r4, [r6]
 2440 00e0 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter20RemoveAuthenticationEv
 2441 00e4 80F00102 		eor	r2, r0, #1
 2442 00e8 D2B2     		uxtb	r2, r2
 2443 00ea 2046     		mov	r0, r4
 2444 00ec 7249     		ldr	r1, .L506+36
 2445 00ee FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 2446 00f2 0AB0     		add	sp, sp, #40
 2447              		@ sp needed
 2448 00f4 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2449              	.L497:
 2450 00f8 6B49     		ldr	r1, .L506+20
 2451 00fa 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 44


 2452 00fc FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2453 0100 0146     		mov	r1, r0
 2454 0102 6848     		ldr	r0, .L506+16
 2455 0104 FFF7FEFF 		bl	_ZNK6RepRap13CheckPasswordEPKc
 2456 0108 0028     		cmp	r0, #0
 2457 010a C0D1     		bne	.L421
 2458 010c 3068     		ldr	r0, [r6]
 2459 010e 6B49     		ldr	r1, .L506+40
 2460 0110 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 2461 0114 D6E7     		b	.L418
 2462              	.L498:
 2463 0116 3068     		ldr	r0, [r6]
 2464 0118 6949     		ldr	r1, .L506+44
 2465 011a FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 2466 011e D1E7     		b	.L418
 2467              	.L427:
 2468 0120 2846     		mov	r0, r5
 2469 0122 6849     		ldr	r1, .L506+48
 2470 0124 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2471 0128 0028     		cmp	r0, #0
 2472 012a 62D1     		bne	.L500
 2473              	.L430:
 2474 012c 2846     		mov	r0, r5
 2475 012e 6649     		ldr	r1, .L506+52
 2476 0130 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2477 0134 0028     		cmp	r0, #0
 2478 0136 50D1     		bne	.L501
 2479 0138 2846     		mov	r0, r5
 2480 013a 6449     		ldr	r1, .L506+56
 2481 013c FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2482 0140 0028     		cmp	r0, #0
 2483 0142 72D1     		bne	.L502
 2484              	.L432:
 2485 0144 2846     		mov	r0, r5
 2486 0146 6249     		ldr	r1, .L506+60
 2487 0148 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2488 014c 0028     		cmp	r0, #0
 2489 014e 40F0D380 		bne	.L503
 2490              	.L435:
 2491 0152 2846     		mov	r0, r5
 2492 0154 5F49     		ldr	r1, .L506+64
 2493 0156 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2494 015a 0028     		cmp	r0, #0
 2495 015c 00F08980 		beq	.L504
 2496 0160 2046     		mov	r0, r4
 2497 0162 5D49     		ldr	r1, .L506+68
 2498 0164 5D4D     		ldr	r5, .L506+72
 2499 0166 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2500 016a 5D49     		ldr	r1, .L506+76
 2501 016c 0028     		cmp	r0, #0
 2502 016e 18BF     		it	ne
 2503 0170 0546     		movne	r5, r0
 2504 0172 2046     		mov	r0, r4
 2505 0174 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2506 0178 0446     		mov	r4, r0
 2507 017a 20B1     		cbz	r0, .L437
 2508 017c FFF7FEFF 		bl	atoi
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 45


 2509 0180 431E     		subs	r3, r0, #1
 2510 0182 5C42     		rsbs	r4, r3, #0
 2511 0184 5C41     		adcs	r4, r4, r3
 2512              	.L437:
 2513 0186 3068     		ldr	r0, [r6]
 2514 0188 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 2515 018c 2946     		mov	r1, r5
 2516 018e 2246     		mov	r2, r4
 2517 0190 4448     		ldr	r0, .L506+16
 2518 0192 FFF7FEFF 		bl	_ZN6RepRap16GetFilesResponseEPKcb
 2519 0196 3060     		str	r0, [r6]
 2520 0198 94E7     		b	.L418
 2521              	.L499:
 2522 019a 6068     		ldr	r0, [r4, #4]
 2523 019c FFF7FEFF 		bl	_ZNK8Platform13IsDateTimeSetEv
 2524 01a0 0346     		mov	r3, r0
 2525 01a2 0028     		cmp	r0, #0
 2526 01a4 83D1     		bne	.L456
 2527 01a6 01AA     		add	r2, sp, #4
 2528 01a8 D4F85806 		ldr	r0, [r4, #1624]
 2529 01ac 4D49     		ldr	r1, .L506+80
 2530 01ae 0193     		str	r3, [sp, #4]
 2531 01b0 0293     		str	r3, [sp, #8]
 2532 01b2 0393     		str	r3, [sp, #12]
 2533 01b4 0493     		str	r3, [sp, #16]
 2534 01b6 0593     		str	r3, [sp, #20]
 2535 01b8 0693     		str	r3, [sp, #24]
 2536 01ba 0793     		str	r3, [sp, #28]
 2537 01bc 0893     		str	r3, [sp, #32]
 2538 01be 0993     		str	r3, [sp, #36]
 2539 01c0 FFF7FEFF 		bl	strptime
 2540 01c4 0028     		cmp	r0, #0
 2541 01c6 3FF472AF 		beq	.L456
 2542 01ca 01A8     		add	r0, sp, #4
 2543 01cc FFF7FEFF 		bl	mktime
 2544 01d0 0146     		mov	r1, r0
 2545 01d2 6068     		ldr	r0, [r4, #4]
 2546 01d4 FFF7FEFF 		bl	_ZN8Platform11SetDateTimeEl
 2547 01d8 69E7     		b	.L456
 2548              	.L501:
 2549 01da D4F87827 		ldr	r2, [r4, #1912]
 2550 01de D4F87437 		ldr	r3, [r4, #1908]
 2551 01e2 3068     		ldr	r0, [r6]
 2552 01e4 3449     		ldr	r1, .L506+36
 2553 01e6 D21A     		subs	r2, r2, r3
 2554 01e8 18BF     		it	ne
 2555 01ea 0122     		movne	r2, #1
 2556 01ec FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 2557 01f0 68E7     		b	.L418
 2558              	.L500:
 2559 01f2 2046     		mov	r0, r4
 2560 01f4 3349     		ldr	r1, .L506+48
 2561 01f6 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2562 01fa 0028     		cmp	r0, #0
 2563 01fc 96D0     		beq	.L430
 2564 01fe 294B     		ldr	r3, .L506+16
 2565 0200 3049     		ldr	r1, .L506+48
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 46


 2566 0202 1B69     		ldr	r3, [r3, #16]
 2567 0204 2046     		mov	r0, r4
 2568 0206 9C68     		ldr	r4, [r3, #8]
 2569 0208 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2570 020c 0421     		movs	r1, #4
 2571 020e 0246     		mov	r2, r0
 2572 0210 2046     		mov	r0, r4
 2573 0212 FFF7FEFF 		bl	_ZN17RegularGCodeInput3PutE11MessageTypePKc
 2574 0216 2046     		mov	r0, r4
 2575 0218 3468     		ldr	r4, [r6]
 2576 021a FFF7FEFF 		bl	_ZNK17RegularGCodeInput15BufferSpaceLeftEv
 2577 021e 3249     		ldr	r1, .L506+84
 2578 0220 0246     		mov	r2, r0
 2579 0222 2046     		mov	r0, r4
 2580 0224 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 2581 0228 4CE7     		b	.L418
 2582              	.L502:
 2583 022a 2046     		mov	r0, r4
 2584 022c 2F49     		ldr	r1, .L506+88
 2585 022e FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2586 0232 0028     		cmp	r0, #0
 2587 0234 86D0     		beq	.L432
 2588 0236 6368     		ldr	r3, [r4, #4]
 2589 0238 2C49     		ldr	r1, .L506+88
 2590 023a D3F83C58 		ldr	r5, [r3, #2108]
 2591 023e 2046     		mov	r0, r4
 2592 0240 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2593 0244 2A49     		ldr	r1, .L506+92
 2594 0246 0246     		mov	r2, r0
 2595 0248 2846     		mov	r0, r5
 2596 024a FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_
 2597 024e 80F00102 		eor	r2, r0, #1
 2598 0252 D2B2     		uxtb	r2, r2
 2599 0254 3068     		ldr	r0, [r6]
 2600 0256 1849     		ldr	r1, .L506+36
 2601 0258 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 2602 025c 32E7     		b	.L418
 2603              	.L428:
 2604 025e 3068     		ldr	r0, [r6]
 2605 0260 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 2606 0264 2A46     		mov	r2, r5
 2607 0266 0F48     		ldr	r0, .L506+16
 2608 0268 0121     		movs	r1, #1
 2609 026a FFF7FEFF 		bl	_ZN6RepRap23GetLegacyStatusResponseEhi
 2610 026e 3060     		str	r0, [r6]
 2611 0270 28E7     		b	.L418
 2612              	.L504:
 2613 0272 2846     		mov	r0, r5
 2614 0274 1F49     		ldr	r1, .L506+96
 2615 0276 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2616 027a 0746     		mov	r7, r0
 2617 027c 0028     		cmp	r0, #0
 2618 027e 4FD0     		beq	.L438
 2619 0280 D4F88057 		ldr	r5, [r4, #1920]
 2620 0284 002D     		cmp	r5, #0
 2621 0286 6CD0     		beq	.L439
 2622 0288 A368     		ldr	r3, [r4, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 47


 2623 028a 0121     		movs	r1, #1
 2624 028c 9869     		ldr	r0, [r3, #24]
 2625 028e FFF7FEFF 		bl	_ZN18NetworkTransaction5DeferE12DeferralMode
 2626 0292 17E7     		b	.L418
 2627              	.L507:
 2628              		.align	2
 2629              	.L506:
 2630 0294 4C060000 		.word	.LC62
 2631 0298 B4060000 		.word	.LC68
 2632 029c CC060000 		.word	.LC70
 2633 02a0 D4060000 		.word	.LC71
 2634 02a4 00000000 		.word	reprap
 2635 02a8 54060000 		.word	.LC63
 2636 02ac 60060000 		.word	.LC64
 2637 02b0 68060000 		.word	.LC65
 2638 02b4 A4060000 		.word	.LC67
 2639 02b8 C0060000 		.word	.LC69
 2640 02bc 40070000 		.word	.LC84
 2641 02c0 98060000 		.word	.LC66
 2642 02c4 DC060000 		.word	.LC72
 2643 02c8 6C070000 		.word	.LC87
 2644 02cc E4060000 		.word	.LC73
 2645 02d0 74070000 		.word	.LC88
 2646 02d4 80070000 		.word	.LC89
 2647 02d8 F4060000 		.word	.LC75
 2648 02dc 40060000 		.word	.LC61
 2649 02e0 F8060000 		.word	.LC76
 2650 02e4 4C070000 		.word	.LC85
 2651 02e8 60070000 		.word	.LC86
 2652 02ec EC060000 		.word	.LC74
 2653 02f0 34010000 		.word	.LC9
 2654 02f4 04070000 		.word	.LC77
 2655              	.L503:
 2656 02f8 2046     		mov	r0, r4
 2657 02fa 3D49     		ldr	r1, .L508
 2658 02fc FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2659 0300 0028     		cmp	r0, #0
 2660 0302 3FF426AF 		beq	.L435
 2661 0306 3068     		ldr	r0, [r6]
 2662 0308 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 2663 030c 3849     		ldr	r1, .L508
 2664 030e 2046     		mov	r0, r4
 2665 0310 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2666 0314 0146     		mov	r1, r0
 2667 0316 3748     		ldr	r0, .L508+4
 2668 0318 FFF7FEFF 		bl	_ZN6RepRap19GetFilelistResponseEPKc
 2669 031c 3060     		str	r0, [r6]
 2670 031e D1E6     		b	.L418
 2671              	.L438:
 2672 0320 2846     		mov	r0, r5
 2673 0322 3549     		ldr	r1, .L508+8
 2674 0324 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2675 0328 8046     		mov	r8, r0
 2676 032a 0028     		cmp	r0, #0
 2677 032c 33D0     		beq	.L442
 2678 032e 3349     		ldr	r1, .L508+12
 2679 0330 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 48


 2680 0332 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2681 0336 3249     		ldr	r1, .L508+16
 2682 0338 0546     		mov	r5, r0
 2683 033a 2046     		mov	r0, r4
 2684 033c FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2685 0340 0246     		mov	r2, r0
 2686 0342 2DB3     		cbz	r5, .L446
 2687 0344 20B3     		cbz	r0, .L446
 2688 0346 6368     		ldr	r3, [r4, #4]
 2689 0348 2946     		mov	r1, r5
 2690 034a D3F83C08 		ldr	r0, [r3, #2108]
 2691 034e FFF7FEFF 		bl	_ZN11MassStorage6RenameEPKcS1_
 2692 0352 3368     		ldr	r3, [r6]
 2693 0354 E8B1     		cbz	r0, .L463
 2694 0356 3A46     		mov	r2, r7
 2695              	.L447:
 2696 0358 1846     		mov	r0, r3
 2697 035a 2A49     		ldr	r1, .L508+20
 2698 035c FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 2699 0360 B0E6     		b	.L418
 2700              	.L439:
 2701 0362 2949     		ldr	r1, .L508+24
 2702 0364 2046     		mov	r0, r4
 2703 0366 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2704 036a 0146     		mov	r1, r0
 2705 036c 0028     		cmp	r0, #0
 2706 036e 34D0     		beq	.L440
 2707 0370 04F28470 		addw	r0, r4, #1924
 2708 0374 6422     		movs	r2, #100
 2709 0376 FFF7FEFF 		bl	strncpy
 2710 037a 84F8E757 		strb	r5, [r4, #2023]
 2711              	.L441:
 2712 037e A368     		ldr	r3, [r4, #8]
 2713 0380 9B69     		ldr	r3, [r3, #24]
 2714 0382 1B68     		ldr	r3, [r3]
 2715 0384 C4F88037 		str	r3, [r4, #1920]
 2716 0388 2046     		mov	r0, r4
 2717 038a FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter22ProcessDeferredRequestEv
 2718 038e 99E6     		b	.L418
 2719              	.L446:
 2720 0390 3368     		ldr	r3, [r6]
 2721              	.L463:
 2722 0392 0122     		movs	r2, #1
 2723 0394 E0E7     		b	.L447
 2724              	.L442:
 2725 0396 2846     		mov	r0, r5
 2726 0398 1C49     		ldr	r1, .L508+28
 2727 039a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2728 039e 80B1     		cbz	r0, .L445
 2729 03a0 1349     		ldr	r1, .L508
 2730 03a2 2046     		mov	r0, r4
 2731 03a4 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2732 03a8 0146     		mov	r1, r0
 2733 03aa 0028     		cmp	r0, #0
 2734 03ac F0D0     		beq	.L446
 2735 03ae 6368     		ldr	r3, [r4, #4]
 2736 03b0 D3F83C08 		ldr	r0, [r3, #2108]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 49


 2737 03b4 FFF7FEFF 		bl	_ZN11MassStorage13MakeDirectoryEPKc
 2738 03b8 3368     		ldr	r3, [r6]
 2739 03ba 0028     		cmp	r0, #0
 2740 03bc E9D0     		beq	.L463
 2741 03be 4246     		mov	r2, r8
 2742 03c0 CAE7     		b	.L447
 2743              	.L445:
 2744 03c2 2846     		mov	r0, r5
 2745 03c4 1249     		ldr	r1, .L508+32
 2746 03c6 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2747 03ca 48B9     		cbnz	r0, .L505
 2748 03cc 2046     		mov	r0, r4
 2749 03ce 1149     		ldr	r1, .L508+36
 2750 03d0 4FF4FA72 		mov	r2, #500
 2751 03d4 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 2752 03d8 74E6     		b	.L418
 2753              	.L440:
 2754 03da 84F88407 		strb	r0, [r4, #1924]
 2755 03de CEE7     		b	.L441
 2756              	.L505:
 2757 03e0 3068     		ldr	r0, [r6]
 2758 03e2 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 2759 03e6 0348     		ldr	r0, .L508+4
 2760 03e8 FFF7FEFF 		bl	_ZN6RepRap17GetConfigResponseEv
 2761 03ec 3060     		str	r0, [r6]
 2762 03ee 69E6     		b	.L418
 2763              	.L509:
 2764              		.align	2
 2765              	.L508:
 2766 03f0 F4060000 		.word	.LC75
 2767 03f4 00000000 		.word	reprap
 2768 03f8 10070000 		.word	.LC78
 2769 03fc 18070000 		.word	.LC79
 2770 0400 1C070000 		.word	.LC80
 2771 0404 C0060000 		.word	.LC69
 2772 0408 EC060000 		.word	.LC74
 2773 040c 20070000 		.word	.LC81
 2774 0410 28070000 		.word	.LC82
 2775 0414 30070000 		.word	.LC83
 2776              		.size	_ZN9Webserver15HttpInterpreter15GetJsonResponseEPKcRP12OutputBufferRb, .-_ZN9Webserver15Http
 2777              		.section	.text._ZN9Webserver15HttpInterpreter16SendJsonResponseEPKc,"ax",%progbits
 2778              		.align	2
 2779              		.global	_ZN9Webserver15HttpInterpreter16SendJsonResponseEPKc
 2780              		.thumb
 2781              		.thumb_func
 2782              		.type	_ZN9Webserver15HttpInterpreter16SendJsonResponseEPKc, %function
 2783              	_ZN9Webserver15HttpInterpreter16SendJsonResponseEPKc:
 2784              		@ args = 0, pretend = 0, frame = 104
 2785              		@ frame_needed = 0, uses_anonymous_args = 0
 2786 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2787 0002 9BB0     		sub	sp, sp, #108
 2788 0004 0D46     		mov	r5, r1
 2789 0006 0446     		mov	r4, r0
 2790 0008 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter15IsAuthenticatedEv
 2791 000c 0028     		cmp	r0, #0
 2792 000e 00F08E80 		beq	.L552
 2793              	.L528:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 50


 2794 0012 2046     		mov	r0, r4
 2795 0014 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter15IsAuthenticatedEv
 2796 0018 D8B1     		cbz	r0, .L513
 2797 001a 2046     		mov	r0, r4
 2798 001c FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter20UpdateAuthenticationEv
 2799 0020 2846     		mov	r0, r5
 2800 0022 5D49     		ldr	r1, .L555
 2801 0024 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2802 0028 0646     		mov	r6, r0
 2803 002a 20B1     		cbz	r0, .L514
 2804 002c 2046     		mov	r0, r4
 2805 002e FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter14SendGCodeReplyEv
 2806 0032 1BB0     		add	sp, sp, #108
 2807              		@ sp needed
 2808 0034 F0BD     		pop	{r4, r5, r6, r7, pc}
 2809              	.L514:
 2810 0036 2846     		mov	r0, r5
 2811 0038 5849     		ldr	r1, .L555+4
 2812 003a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2813 003e 0746     		mov	r7, r0
 2814 0040 0028     		cmp	r0, #0
 2815 0042 7ED1     		bne	.L553
 2816 0044 2846     		mov	r0, r5
 2817 0046 5649     		ldr	r1, .L555+8
 2818 0048 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2819 004c 0028     		cmp	r0, #0
 2820 004e 40F09480 		bne	.L554
 2821              	.L513:
 2822 0052 01A8     		add	r0, sp, #4
 2823 0054 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2824 0058 30B9     		cbnz	r0, .L519
 2825 005a A368     		ldr	r3, [r4, #8]
 2826 005c 9B69     		ldr	r3, [r3, #24]
 2827 005e 1868     		ldr	r0, [r3]
 2828 0060 FFF7FEFF 		bl	_ZN7Network9TerminateEP6Socket
 2829              	.L510:
 2830 0064 1BB0     		add	sp, sp, #108
 2831              		@ sp needed
 2832 0066 F0BD     		pop	{r4, r5, r6, r7, pc}
 2833              	.L519:
 2834 0068 0DF10303 		add	r3, sp, #3
 2835 006c 2946     		mov	r1, r5
 2836 006e 01AA     		add	r2, sp, #4
 2837 0070 2046     		mov	r0, r4
 2838 0072 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter15GetJsonResponseEPKcRP12OutputBufferRb
 2839 0076 A368     		ldr	r3, [r4, #8]
 2840 0078 9F69     		ldr	r7, [r3, #24]
 2841 007a BB69     		ldr	r3, [r7, #24]
 2842 007c 052B     		cmp	r3, #5
 2843 007e 73D0     		beq	.L520
 2844 0080 032B     		cmp	r3, #3
 2845 0082 71D0     		beq	.L520
 2846 0084 9DF80330 		ldrb	r3, [sp, #3]	@ zero_extendqisi2
 2847 0088 002B     		cmp	r3, #0
 2848 008a 72D0     		beq	.L529
 2849 008c D4F80437 		ldr	r3, [r4, #1796]
 2850 0090 002B     		cmp	r3, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 51


 2851 0092 6ED0     		beq	.L529
 2852 0094 2546     		mov	r5, r4
 2853 0096 0026     		movs	r6, #0
 2854 0098 04E0     		b	.L530
 2855              	.L522:
 2856 009a D4F80437 		ldr	r3, [r4, #1796]
 2857 009e 0136     		adds	r6, r6, #1
 2858 00a0 B342     		cmp	r3, r6
 2859 00a2 66D9     		bls	.L529
 2860              	.L530:
 2861 00a4 D5F87C06 		ldr	r0, [r5, #1660]
 2862 00a8 3E49     		ldr	r1, .L555+12
 2863 00aa FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2864 00ae 0835     		adds	r5, r5, #8
 2865 00b0 0028     		cmp	r0, #0
 2866 00b2 F2D0     		beq	.L522
 2867 00b4 04EBC604 		add	r4, r4, r6, lsl #3
 2868 00b8 3B49     		ldr	r1, .L555+16
 2869 00ba D4F88006 		ldr	r0, [r4, #1664]
 2870 00be FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2871 00c2 0446     		mov	r4, r0
 2872              	.L523:
 2873 00c4 3846     		mov	r0, r7
 2874 00c6 3949     		ldr	r1, .L555+20
 2875 00c8 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 2876 00cc 3846     		mov	r0, r7
 2877 00ce 3849     		ldr	r1, .L555+24
 2878 00d0 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 2879 00d4 3846     		mov	r0, r7
 2880 00d6 3749     		ldr	r1, .L555+28
 2881 00d8 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 2882 00dc 3846     		mov	r0, r7
 2883 00de 3649     		ldr	r1, .L555+32
 2884 00e0 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 2885 00e4 3846     		mov	r0, r7
 2886 00e6 3549     		ldr	r1, .L555+36
 2887 00e8 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 2888 00ec 3846     		mov	r0, r7
 2889 00ee 3449     		ldr	r1, .L555+40
 2890 00f0 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 2891 00f4 0198     		ldr	r0, [sp, #4]
 2892 00f6 0028     		cmp	r0, #0
 2893 00f8 3DD0     		beq	.L531
 2894 00fa FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 2895 00fe 0246     		mov	r2, r0
 2896              	.L525:
 2897 0100 3846     		mov	r0, r7
 2898 0102 3049     		ldr	r1, .L555+44
 2899 0104 FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 2900 0108 274B     		ldr	r3, .L555+16
 2901 010a 2F4A     		ldr	r2, .L555+48
 2902 010c 2F49     		ldr	r1, .L555+52
 2903 010e 002C     		cmp	r4, #0
 2904 0110 18BF     		it	ne
 2905 0112 1A46     		movne	r2, r3
 2906 0114 3846     		mov	r0, r7
 2907 0116 FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 52


 2908 011a 3846     		mov	r0, r7
 2909 011c 0199     		ldr	r1, [sp, #4]
 2910 011e FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEP12OutputBuffer
 2911 0122 3846     		mov	r0, r7
 2912 0124 2146     		mov	r1, r4
 2913 0126 FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 2914 012a 1BB0     		add	sp, sp, #108
 2915              		@ sp needed
 2916 012c F0BD     		pop	{r4, r5, r6, r7, pc}
 2917              	.L552:
 2918 012e 2848     		ldr	r0, .L555+56
 2919 0130 FFF7FEFF 		bl	_ZNK6RepRap13NoPasswordSetEv
 2920 0134 0028     		cmp	r0, #0
 2921 0136 3FF46CAF 		beq	.L528
 2922 013a 2046     		mov	r0, r4
 2923 013c FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter12AuthenticateEv
 2924 0140 67E7     		b	.L528
 2925              	.L553:
 2926 0142 6368     		ldr	r3, [r4, #4]
 2927 0144 2349     		ldr	r1, .L555+60
 2928 0146 D3F83C08 		ldr	r0, [r3, #2108]
 2929 014a 234A     		ldr	r2, .L555+64
 2930 014c FFF7FEFF 		bl	_ZN11MassStorage11CombineNameEPKcS1_
 2931 0150 6422     		movs	r2, #100
 2932 0152 0146     		mov	r1, r0
 2933 0154 01A8     		add	r0, sp, #4
 2934 0156 FFF7FEFF 		bl	strncpy
 2935 015a 2046     		mov	r0, r4
 2936 015c 01A9     		add	r1, sp, #4
 2937 015e 3246     		mov	r2, r6
 2938 0160 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter8SendFileEPKcb
 2939 0164 1BB0     		add	sp, sp, #108
 2940              		@ sp needed
 2941 0166 F0BD     		pop	{r4, r5, r6, r7, pc}
 2942              	.L520:
 2943 0168 0198     		ldr	r0, [sp, #4]
 2944 016a FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 2945 016e 1BB0     		add	sp, sp, #108
 2946              		@ sp needed
 2947 0170 F0BD     		pop	{r4, r5, r6, r7, pc}
 2948              	.L529:
 2949 0172 0024     		movs	r4, #0
 2950 0174 A6E7     		b	.L523
 2951              	.L531:
 2952 0176 0246     		mov	r2, r0
 2953 0178 C2E7     		b	.L525
 2954              	.L554:
 2955 017a D4F84C06 		ldr	r0, [r4, #1612]
 2956 017e 1749     		ldr	r1, .L555+68
 2957 0180 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2958 0184 0028     		cmp	r0, #0
 2959 0186 3FF464AF 		beq	.L513
 2960 018a 2046     		mov	r0, r4
 2961 018c 3A46     		mov	r2, r7
 2962 018e D4F85016 		ldr	r1, [r4, #1616]
 2963 0192 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter8SendFileEPKcb
 2964 0196 65E7     		b	.L510
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 53


 2965              	.L556:
 2966              		.align	2
 2967              	.L555:
 2968 0198 9C070000 		.word	.LC92
 2969 019c A4070000 		.word	.LC93
 2970 01a0 C4070000 		.word	.LC96
 2971 01a4 D0070000 		.word	.LC97
 2972 01a8 88070000 		.word	.LC90
 2973 01ac A8030000 		.word	.LC23
 2974 01b0 BC030000 		.word	.LC24
 2975 01b4 F0030000 		.word	.LC25
 2976 01b8 04040000 		.word	.LC26
 2977 01bc 10040000 		.word	.LC27
 2978 01c0 20060000 		.word	.LC60
 2979 01c4 4C040000 		.word	.LC29
 2980 01c8 94070000 		.word	.LC91
 2981 01cc DC070000 		.word	.LC98
 2982 01d0 00000000 		.word	reprap
 2983 01d4 B0070000 		.word	.LC94
 2984 01d8 B8070000 		.word	.LC95
 2985 01dc EC060000 		.word	.LC74
 2986              		.size	_ZN9Webserver15HttpInterpreter16SendJsonResponseEPKc, .-_ZN9Webserver15HttpInterpreter16Send
 2987              		.section	.text._ZN9Webserver15HttpInterpreter14ProcessMessageEv,"ax",%progbits
 2988              		.align	2
 2989              		.global	_ZN9Webserver15HttpInterpreter14ProcessMessageEv
 2990              		.thumb
 2991              		.thumb_func
 2992              		.type	_ZN9Webserver15HttpInterpreter14ProcessMessageEv, %function
 2993              	_ZN9Webserver15HttpInterpreter14ProcessMessageEv:
 2994              		@ args = 0, pretend = 0, frame = 40
 2995              		@ frame_needed = 0, uses_anonymous_args = 0
 2996 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2997 0004 924F     		ldr	r7, .L632
 2998 0006 B7F84030 		ldrh	r3, [r7, #64]
 2999 000a 5A07     		lsls	r2, r3, #29
 3000 000c 8CB0     		sub	sp, sp, #48
 3001 000e 0446     		mov	r4, r0
 3002 0010 48D4     		bmi	.L620
 3003 0012 D4F8FC36 		ldr	r3, [r4, #1788]
 3004 0016 012B     		cmp	r3, #1
 3005 0018 40F28380 		bls	.L621
 3006              	.L565:
 3007 001c D4F83C06 		ldr	r0, [r4, #1596]
 3008 0020 8C49     		ldr	r1, .L632+4
 3009 0022 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 3010 0026 0546     		mov	r5, r0
 3011 0028 28B3     		cbz	r0, .L567
 3012 002a 8B49     		ldr	r1, .L632+8
 3013 002c D4F84006 		ldr	r0, [r4, #1600]
 3014 0030 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 3015 0034 D4F84016 		ldr	r1, [r4, #1600]
 3016 0038 0028     		cmp	r0, #0
 3017 003a 40F0D780 		bne	.L622
 3018 003e 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 3019 0040 2F2B     		cmp	r3, #47
 3020 0042 00F0E480 		beq	.L623
 3021              	.L570:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 54


 3022 0046 2046     		mov	r0, r4
 3023 0048 0122     		movs	r2, #1
 3024 004a FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter8SendFileEPKcb
 3025              	.L569:
 3026 004e 0023     		movs	r3, #0
 3027 0050 04F17D02 		add	r2, r4, #125
 3028 0054 C4F83436 		str	r3, [r4, #1588]
 3029 0058 84F87C30 		strb	r3, [r4, #124]
 3030 005c C4F8FC36 		str	r3, [r4, #1788]
 3031 0060 C4F80037 		str	r3, [r4, #1792]
 3032 0064 C4F80437 		str	r3, [r4, #1796]
 3033 0068 C4F83C26 		str	r2, [r4, #1596]
 3034 006c 0125     		movs	r5, #1
 3035              	.L615:
 3036 006e 2846     		mov	r0, r5
 3037 0070 0CB0     		add	sp, sp, #48
 3038              		@ sp needed
 3039 0072 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3040              	.L567:
 3041 0076 D4F83C06 		ldr	r0, [r4, #1596]
 3042 007a 7849     		ldr	r1, .L632+12
 3043 007c FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 3044 0080 0028     		cmp	r0, #0
 3045 0082 76D1     		bne	.L624
 3046 0084 2046     		mov	r0, r4
 3047 0086 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter15IsAuthenticatedEv
 3048 008a 0028     		cmp	r0, #0
 3049 008c 54D1     		bne	.L625
 3050              	.L573:
 3051 008e 2046     		mov	r0, r4
 3052 0090 7349     		ldr	r1, .L632+16
 3053 0092 4FF4FA72 		mov	r2, #500
 3054 0096 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 3055 009a 0546     		mov	r5, r0
 3056 009c 2846     		mov	r0, r5
 3057 009e 0CB0     		add	sp, sp, #48
 3058              		@ sp needed
 3059 00a0 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3060              	.L620:
 3061 00a4 D4F8FC36 		ldr	r3, [r4, #1788]
 3062 00a8 4068     		ldr	r0, [r0, #4]
 3063 00aa 6E4A     		ldr	r2, .L632+20
 3064 00ac 0221     		movs	r1, #2
 3065 00ae FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3066 00b2 D4F8FC36 		ldr	r3, [r4, #1788]
 3067 00b6 7BB1     		cbz	r3, .L562
 3068 00b8 2646     		mov	r6, r4
 3069 00ba 0025     		movs	r5, #0
 3070              	.L563:
 3071 00bc D6F83C36 		ldr	r3, [r6, #1596]
 3072 00c0 6068     		ldr	r0, [r4, #4]
 3073 00c2 694A     		ldr	r2, .L632+24
 3074 00c4 0221     		movs	r1, #2
 3075 00c6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3076 00ca D4F8FC36 		ldr	r3, [r4, #1788]
 3077 00ce 0135     		adds	r5, r5, #1
 3078 00d0 AB42     		cmp	r3, r5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 55


 3079 00d2 06F10406 		add	r6, r6, #4
 3080 00d6 F1D8     		bhi	.L563
 3081              	.L562:
 3082 00d8 6068     		ldr	r0, [r4, #4]
 3083 00da 644A     		ldr	r2, .L632+28
 3084 00dc 0221     		movs	r1, #2
 3085 00de FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3086 00e2 D4F80037 		ldr	r3, [r4, #1792]
 3087 00e6 93B1     		cbz	r3, .L561
 3088 00e8 2546     		mov	r5, r4
 3089 00ea 0026     		movs	r6, #0
 3090              	.L564:
 3091 00ec D5F85026 		ldr	r2, [r5, #1616]
 3092 00f0 D5F84C36 		ldr	r3, [r5, #1612]
 3093 00f4 6068     		ldr	r0, [r4, #4]
 3094 00f6 0092     		str	r2, [sp]
 3095 00f8 0221     		movs	r1, #2
 3096 00fa 5D4A     		ldr	r2, .L632+32
 3097 00fc FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3098 0100 D4F80037 		ldr	r3, [r4, #1792]
 3099 0104 0136     		adds	r6, r6, #1
 3100 0106 B342     		cmp	r3, r6
 3101 0108 05F10805 		add	r5, r5, #8
 3102 010c EED8     		bhi	.L564
 3103              	.L561:
 3104 010e 6068     		ldr	r0, [r4, #4]
 3105 0110 584A     		ldr	r2, .L632+36
 3106 0112 0221     		movs	r1, #2
 3107 0114 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3108 0118 D4F8FC36 		ldr	r3, [r4, #1788]
 3109 011c 012B     		cmp	r3, #1
 3110 011e 3FF67DAF 		bhi	.L565
 3111              	.L621:
 3112 0122 2046     		mov	r0, r4
 3113 0124 5449     		ldr	r1, .L632+40
 3114 0126 4FF4FA72 		mov	r2, #500
 3115 012a FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 3116 012e 0546     		mov	r5, r0
 3117 0130 2846     		mov	r0, r5
 3118 0132 0CB0     		add	sp, sp, #48
 3119              		@ sp needed
 3120 0134 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3121              	.L625:
 3122 0138 D4F83C06 		ldr	r0, [r4, #1596]
 3123 013c 4F49     		ldr	r1, .L632+44
 3124 013e FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 3125 0142 0028     		cmp	r0, #0
 3126 0144 A3D0     		beq	.L573
 3127 0146 D4F84006 		ldr	r0, [r4, #1600]
 3128 014a 4D49     		ldr	r1, .L632+48
 3129 014c FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 3130 0150 0028     		cmp	r0, #0
 3131 0152 50D0     		beq	.L626
 3132              	.L576:
 3133 0154 D4F80037 		ldr	r3, [r4, #1792]
 3134 0158 002B     		cmp	r3, #0
 3135 015a 66D1     		bne	.L627
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 56


 3136              	.L575:
 3137 015c 2046     		mov	r0, r4
 3138 015e 4949     		ldr	r1, .L632+52
 3139 0160 4FF4FA72 		mov	r2, #500
 3140 0164 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 3141 0168 0546     		mov	r5, r0
 3142 016a 2846     		mov	r0, r5
 3143 016c 0CB0     		add	sp, sp, #48
 3144              		@ sp needed
 3145 016e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3146              	.L624:
 3147 0172 A368     		ldr	r3, [r4, #8]
 3148 0174 4449     		ldr	r1, .L632+56
 3149 0176 9E69     		ldr	r6, [r3, #24]
 3150 0178 3046     		mov	r0, r6
 3151 017a FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 3152 017e 3046     		mov	r0, r6
 3153 0180 4249     		ldr	r1, .L632+60
 3154 0182 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 3155 0186 3046     		mov	r0, r6
 3156 0188 4149     		ldr	r1, .L632+64
 3157 018a FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 3158 018e 3046     		mov	r0, r6
 3159 0190 4049     		ldr	r1, .L632+68
 3160 0192 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 3161 0196 3046     		mov	r0, r6
 3162 0198 3F49     		ldr	r1, .L632+72
 3163 019a FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 3164 019e 3046     		mov	r0, r6
 3165 01a0 3E49     		ldr	r1, .L632+76
 3166 01a2 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 3167 01a6 3046     		mov	r0, r6
 3168 01a8 3D49     		ldr	r1, .L632+80
 3169 01aa FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 3170 01ae 3046     		mov	r0, r6
 3171 01b0 3C49     		ldr	r1, .L632+84
 3172 01b2 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 3173 01b6 3046     		mov	r0, r6
 3174 01b8 3B49     		ldr	r1, .L632+88
 3175 01ba FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 3176 01be 3046     		mov	r0, r6
 3177 01c0 2946     		mov	r1, r5
 3178 01c2 FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 3179 01c6 C4F83456 		str	r5, [r4, #1588]
 3180 01ca 84F87C50 		strb	r5, [r4, #124]
 3181 01ce C4F8FC56 		str	r5, [r4, #1788]
 3182 01d2 C4F80057 		str	r5, [r4, #1792]
 3183 01d6 C4F80457 		str	r5, [r4, #1796]
 3184 01da 0125     		movs	r5, #1
 3185 01dc 04F17D03 		add	r3, r4, #125
 3186 01e0 2846     		mov	r0, r5
 3187 01e2 C4F83C36 		str	r3, [r4, #1596]
 3188 01e6 0CB0     		add	sp, sp, #48
 3189              		@ sp needed
 3190 01e8 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3191              	.L622:
 3192 01ec 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 57


 3193 01ee 0331     		adds	r1, r1, #3
 3194 01f0 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter16SendJsonResponseEPKc
 3195 01f4 2BE7     		b	.L569
 3196              	.L626:
 3197 01f6 D4F84006 		ldr	r0, [r4, #1600]
 3198 01fa 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 3199 01fc 2F2B     		cmp	r3, #47
 3200 01fe ADD1     		bne	.L575
 3201 0200 0130     		adds	r0, r0, #1
 3202 0202 1F49     		ldr	r1, .L632+48
 3203 0204 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 3204 0208 0028     		cmp	r0, #0
 3205 020a A3D1     		bne	.L576
 3206 020c A6E7     		b	.L575
 3207              	.L623:
 3208 020e 481C     		adds	r0, r1, #1
 3209 0210 1149     		ldr	r1, .L632+8
 3210 0212 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 3211 0216 D4F84016 		ldr	r1, [r4, #1600]
 3212 021a 0028     		cmp	r0, #0
 3213 021c 3FF413AF 		beq	.L570
 3214 0220 2046     		mov	r0, r4
 3215 0222 0431     		adds	r1, r1, #4
 3216 0224 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter16SendJsonResponseEPKc
 3217 0228 11E7     		b	.L569
 3218              	.L627:
 3219 022a D4F84C06 		ldr	r0, [r4, #1612]
 3220 022e 1F49     		ldr	r1, .L632+92
 3221 0230 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 3222 0234 0028     		cmp	r0, #0
 3223 0236 91D0     		beq	.L575
 3224 0238 267C     		ldrb	r6, [r4, #16]	@ zero_extendqisi2
 3225 023a 002E     		cmp	r6, #0
 3226 023c 40F0BF80 		bne	.L593
 3227 0240 D4F80437 		ldr	r3, [r4, #1796]
 3228 0244 002B     		cmp	r3, #0
 3229 0246 00F0AE80 		beq	.L594
 3230 024a 2546     		mov	r5, r4
 3231 024c 35E0     		b	.L595
 3232              	.L633:
 3233 024e 00BF     		.align	2
 3234              	.L632:
 3235 0250 00000000 		.word	reprap
 3236 0254 48080000 		.word	.LC105
 3237 0258 4C080000 		.word	.LC106
 3238 025c 50080000 		.word	.LC107
 3239 0260 64090000 		.word	.LC119
 3240 0264 F0070000 		.word	.LC99
 3241 0268 20080000 		.word	.LC101
 3242 026c 0C080000 		.word	.LC100
 3243 0270 28080000 		.word	.LC103
 3244 0274 24080000 		.word	.LC102
 3245 0278 30080000 		.word	.LC104
 3246 027c B8080000 		.word	.LC112
 3247 0280 C0080000 		.word	.LC113
 3248 0284 90090000 		.word	.LC120
 3249 0288 A8030000 		.word	.LC23
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 58


 3250 028c 58080000 		.word	.LC108
 3251 0290 BC030000 		.word	.LC24
 3252 0294 F0030000 		.word	.LC25
 3253 0298 04040000 		.word	.LC26
 3254 029c 10040000 		.word	.LC27
 3255 02a0 74080000 		.word	.LC109
 3256 02a4 A0080000 		.word	.LC110
 3257 02a8 B4080000 		.word	.LC111
 3258 02ac EC060000 		.word	.LC74
 3259              	.L578:
 3260 02b0 D4F80437 		ldr	r3, [r4, #1796]
 3261 02b4 0136     		adds	r6, r6, #1
 3262 02b6 B342     		cmp	r3, r6
 3263 02b8 75D9     		bls	.L594
 3264              	.L595:
 3265 02ba D5F87C06 		ldr	r0, [r5, #1660]
 3266 02be 5449     		ldr	r1, .L634
 3267 02c0 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 3268 02c4 0835     		adds	r5, r5, #8
 3269 02c6 0028     		cmp	r0, #0
 3270 02c8 F2D0     		beq	.L578
 3271 02ca 04EBC606 		add	r6, r4, r6, lsl #3
 3272 02ce D6F88006 		ldr	r0, [r6, #1664]
 3273 02d2 FFF7FEFF 		bl	atoi
 3274 02d6 4F49     		ldr	r1, .L634+4
 3275 02d8 C4F87407 		str	r0, [r4, #1908]
 3276 02dc D4F85026 		ldr	r2, [r4, #1616]
 3277 02e0 6068     		ldr	r0, [r4, #4]
 3278 02e2 0123     		movs	r3, #1
 3279 02e4 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 3280 02e8 D4F85026 		ldr	r2, [r4, #1616]
 3281 02ec 0146     		mov	r1, r0
 3282 02ee 2046     		mov	r0, r4
 3283 02f0 FFF7FEFF 		bl	_ZN19ProtocolInterpreter11StartUploadEP9FileStorePKc
 3284 02f4 0546     		mov	r5, r0
 3285 02f6 0028     		cmp	r0, #0
 3286 02f8 7FD0     		beq	.L628
 3287 02fa D4F80037 		ldr	r3, [r4, #1792]
 3288 02fe 012B     		cmp	r3, #1
 3289 0300 59D9     		bls	.L582
 3290 0302 D4F85406 		ldr	r0, [r4, #1620]
 3291 0306 4449     		ldr	r1, .L634+8
 3292 0308 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 3293 030c 0028     		cmp	r0, #0
 3294 030e 52D0     		beq	.L582
 3295 0310 0023     		movs	r3, #0
 3296 0312 03AA     		add	r2, sp, #12
 3297 0314 D4F85806 		ldr	r0, [r4, #1624]
 3298 0318 4049     		ldr	r1, .L634+12
 3299 031a 0393     		str	r3, [sp, #12]
 3300 031c 0493     		str	r3, [sp, #16]
 3301 031e 0593     		str	r3, [sp, #20]
 3302 0320 0693     		str	r3, [sp, #24]
 3303 0322 0793     		str	r3, [sp, #28]
 3304 0324 0893     		str	r3, [sp, #32]
 3305 0326 0993     		str	r3, [sp, #36]
 3306 0328 0A93     		str	r3, [sp, #40]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 59


 3307 032a 0B93     		str	r3, [sp, #44]
 3308 032c FFF7FEFF 		bl	strptime
 3309 0330 0028     		cmp	r0, #0
 3310 0332 6AD0     		beq	.L629
 3311 0334 03A8     		add	r0, sp, #12
 3312 0336 FFF7FEFF 		bl	mktime
 3313 033a C4F87C07 		str	r0, [r4, #1916]
 3314              	.L598:
 3315 033e B7F84030 		ldrh	r3, [r7, #64]
 3316 0342 5B07     		lsls	r3, r3, #29
 3317 0344 4ED4     		bmi	.L630
 3318              	.L585:
 3319 0346 A368     		ldr	r3, [r4, #8]
 3320 0348 4FF00008 		mov	r8, #0
 3321 034c 9869     		ldr	r0, [r3, #24]
 3322 034e C4F87887 		str	r8, [r4, #1912]
 3323 0352 FFF7FEFF 		bl	_ZNK18NetworkTransaction11GetRemoteIPEv
 3324 0356 A368     		ldr	r3, [r4, #8]
 3325 0358 0746     		mov	r7, r0
 3326 035a 9869     		ldr	r0, [r3, #24]
 3327 035c FFF7FEFF 		bl	_ZNK18NetworkTransaction13GetRemotePortEv
 3328 0360 94F86867 		ldrb	r6, [r4, #1896]	@ zero_extendqisi2
 3329 0364 7EB1     		cbz	r6, .L586
 3330 0366 D4F80837 		ldr	r3, [r4, #1800]
 3331 036a BB42     		cmp	r3, r7
 3332 036c 2FD0     		beq	.L631
 3333 036e 4346     		mov	r3, r8
 3334 0370 2246     		mov	r2, r4
 3335 0372 03E0     		b	.L589
 3336              	.L590:
 3337 0374 D2F80817 		ldr	r1, [r2, #1800]
 3338 0378 B942     		cmp	r1, r7
 3339 037a 29D0     		beq	.L587
 3340              	.L589:
 3341 037c 0133     		adds	r3, r3, #1
 3342 037e B342     		cmp	r3, r6
 3343 0380 02F10C02 		add	r2, r2, #12
 3344 0384 F6D3     		bcc	.L590
 3345              	.L586:
 3346 0386 0023     		movs	r3, #0
 3347 0388 04F17D02 		add	r2, r4, #125
 3348 038c C4F83436 		str	r3, [r4, #1588]
 3349 0390 84F87C30 		strb	r3, [r4, #124]
 3350 0394 C4F8FC36 		str	r3, [r4, #1788]
 3351 0398 C4F80037 		str	r3, [r4, #1792]
 3352 039c C4F80437 		str	r3, [r4, #1796]
 3353 03a0 C4F83C26 		str	r2, [r4, #1596]
 3354 03a4 63E6     		b	.L615
 3355              	.L594:
 3356 03a6 2046     		mov	r0, r4
 3357 03a8 1D49     		ldr	r1, .L634+16
 3358 03aa 4FF4FA72 		mov	r2, #500
 3359 03ae FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 3360 03b2 0546     		mov	r5, r0
 3361 03b4 5BE6     		b	.L615
 3362              	.L582:
 3363 03b6 0023     		movs	r3, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 60


 3364 03b8 C4F87C37 		str	r3, [r4, #1916]
 3365 03bc BFE7     		b	.L598
 3366              	.L593:
 3367 03be 2046     		mov	r0, r4
 3368 03c0 1849     		ldr	r1, .L634+20
 3369 03c2 4FF4FA72 		mov	r2, #500
 3370 03c6 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 3371 03ca 0546     		mov	r5, r0
 3372 03cc 4FE6     		b	.L615
 3373              	.L631:
 3374 03ce 4346     		mov	r3, r8
 3375              	.L587:
 3376 03d0 03EB4303 		add	r3, r3, r3, lsl #1
 3377 03d4 04EB8303 		add	r3, r4, r3, lsl #2
 3378 03d8 0122     		movs	r2, #1
 3379 03da A3F81207 		strh	r0, [r3, #1810]	@ movhi
 3380 03de 83F81027 		strb	r2, [r3, #1808]
 3381 03e2 D0E7     		b	.L586
 3382              	.L630:
 3383 03e4 D4F87427 		ldr	r2, [r4, #1908]
 3384 03e8 6068     		ldr	r0, [r4, #4]
 3385 03ea D4F85036 		ldr	r3, [r4, #1616]
 3386 03ee 0092     		str	r2, [sp]
 3387 03f0 0221     		movs	r1, #2
 3388 03f2 0D4A     		ldr	r2, .L634+24
 3389 03f4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3390 03f8 A5E7     		b	.L585
 3391              	.L628:
 3392 03fa 2046     		mov	r0, r4
 3393 03fc 0B49     		ldr	r1, .L634+28
 3394 03fe 4FF4FA72 		mov	r2, #500
 3395 0402 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 3396 0406 0546     		mov	r5, r0
 3397 0408 31E6     		b	.L615
 3398              	.L629:
 3399 040a C4F87C07 		str	r0, [r4, #1916]
 3400 040e 96E7     		b	.L598
 3401              	.L635:
 3402              		.align	2
 3403              	.L634:
 3404 0410 F8080000 		.word	.LC115
 3405 0414 34010000 		.word	.LC9
 3406 0418 60060000 		.word	.LC64
 3407 041c 4C070000 		.word	.LC85
 3408 0420 08090000 		.word	.LC116
 3409 0424 CC080000 		.word	.LC114
 3410 0428 40090000 		.word	.LC118
 3411 042c 24090000 		.word	.LC117
 3412              		.size	_ZN9Webserver15HttpInterpreter14ProcessMessageEv, .-_ZN9Webserver15HttpInterpreter14ProcessM
 3413              		.section	.text._ZN9Webserver15HttpInterpreter14CharFromClientEc,"ax",%progbits
 3414              		.align	2
 3415              		.global	_ZN9Webserver15HttpInterpreter14CharFromClientEc
 3416              		.thumb
 3417              		.thumb_func
 3418              		.type	_ZN9Webserver15HttpInterpreter14CharFromClientEc, %function
 3419              	_ZN9Webserver15HttpInterpreter14CharFromClientEc:
 3420              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 61


 3421              		@ frame_needed = 0, uses_anonymous_args = 0
 3422 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 3423 0002 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 3424 0006 0446     		mov	r4, r0
 3425 0008 0B2B     		cmp	r3, #11
 3426 000a 11D8     		bhi	.L637
 3427 000c DFE813F0 		tbh	[pc, r3, lsl #1]
 3428              	.L639:
 3429 0010 6E00     		.2byte	(.L638-.L639)/2
 3430 0012 A600     		.2byte	(.L640-.L639)/2
 3431 0014 1C01     		.2byte	(.L641-.L639)/2
 3432 0016 3101     		.2byte	(.L642-.L639)/2
 3433 0018 4C01     		.2byte	(.L643-.L639)/2
 3434 001a BE01     		.2byte	(.L644-.L639)/2
 3435 001c 1C01     		.2byte	(.L641-.L639)/2
 3436 001e 3101     		.2byte	(.L642-.L639)/2
 3437 0020 0E02     		.2byte	(.L645-.L639)/2
 3438 0022 0C00     		.2byte	(.L646-.L639)/2
 3439 0024 1B00     		.2byte	(.L647-.L639)/2
 3440 0026 3500     		.2byte	(.L648-.L639)/2
 3441              	.L646:
 3442 0028 2029     		cmp	r1, #32
 3443 002a 01D0     		beq	.L637
 3444 002c 0929     		cmp	r1, #9
 3445 002e 07D1     		bne	.L710
 3446              	.L637:
 3447 0030 D4F83426 		ldr	r2, [r4, #1588]
 3448              	.L654:
 3449 0034 40F2B753 		movw	r3, #1463
 3450 0038 9A42     		cmp	r2, r3
 3451 003a 15D0     		beq	.L708
 3452              	.L697:
 3453 003c 0020     		movs	r0, #0
 3454 003e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3455              	.L710:
 3456 0040 0A23     		movs	r3, #10
 3457 0042 80F87C30 		strb	r3, [r0, #124]
 3458              	.L647:
 3459 0046 0A29     		cmp	r1, #10
 3460 0048 00F07383 		beq	.L711
 3461 004c 0D29     		cmp	r1, #13
 3462 004e EFD0     		beq	.L637
 3463              	.L705:
 3464 0050 D4F83426 		ldr	r2, [r4, #1588]
 3465 0054 A318     		adds	r3, r4, r2
 3466 0056 0132     		adds	r2, r2, #1
 3467 0058 C4F83426 		str	r2, [r4, #1588]
 3468 005c 83F87D10 		strb	r1, [r3, #125]
 3469 0060 40F2B753 		movw	r3, #1463
 3470 0064 9A42     		cmp	r2, r3
 3471 0066 E9D1     		bne	.L697
 3472              	.L708:
 3473 0068 EF4B     		ldr	r3, .L715
 3474              	.L707:
 3475 006a 2046     		mov	r0, r4
 3476 006c 1968     		ldr	r1, [r3]
 3477 006e 4FF4FA72 		mov	r2, #500
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 62


 3478 0072 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 3479 0076 FFF7FEBF 		b	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 3480              	.L648:
 3481 007a A1F10903 		sub	r3, r1, #9
 3482 007e 172B     		cmp	r3, #23
 3483 0080 00F23A83 		bhi	.L691
 3484 0084 01A2     		adr	r2, .L693
 3485 0086 52F823F0 		ldr	pc, [r2, r3, lsl #2]
 3486 008a 00BF     		.p2align 2
 3487              	.L693:
 3488 008c 53050000 		.word	.L692+1
 3489 0090 39050000 		.word	.L694+1
 3490 0094 F9060000 		.word	.L691+1
 3491 0098 F9060000 		.word	.L691+1
 3492 009c 31000000 		.word	.L637+1
 3493 00a0 F9060000 		.word	.L691+1
 3494 00a4 F9060000 		.word	.L691+1
 3495 00a8 F9060000 		.word	.L691+1
 3496 00ac F9060000 		.word	.L691+1
 3497 00b0 F9060000 		.word	.L691+1
 3498 00b4 F9060000 		.word	.L691+1
 3499 00b8 F9060000 		.word	.L691+1
 3500 00bc F9060000 		.word	.L691+1
 3501 00c0 F9060000 		.word	.L691+1
 3502 00c4 F9060000 		.word	.L691+1
 3503 00c8 F9060000 		.word	.L691+1
 3504 00cc F9060000 		.word	.L691+1
 3505 00d0 F9060000 		.word	.L691+1
 3506 00d4 F9060000 		.word	.L691+1
 3507 00d8 F9060000 		.word	.L691+1
 3508 00dc F9060000 		.word	.L691+1
 3509 00e0 F9060000 		.word	.L691+1
 3510 00e4 F9060000 		.word	.L691+1
 3511 00e8 53050000 		.word	.L692+1
 3512              	.L638:
 3513 00ec A1F10903 		sub	r3, r1, #9
 3514 00f0 172B     		cmp	r3, #23
 3515 00f2 ADD8     		bhi	.L705
 3516 00f4 01A2     		adr	r2, .L651
 3517 00f6 52F823F0 		ldr	pc, [r2, r3, lsl #2]
 3518 00fa 00BF     		.p2align 2
 3519              	.L651:
 3520 00fc 03050000 		.word	.L650+1
 3521 0100 D3040000 		.word	.L652+1
 3522 0104 51000000 		.word	.L705+1
 3523 0108 51000000 		.word	.L705+1
 3524 010c 31000000 		.word	.L637+1
 3525 0110 51000000 		.word	.L705+1
 3526 0114 51000000 		.word	.L705+1
 3527 0118 51000000 		.word	.L705+1
 3528 011c 51000000 		.word	.L705+1
 3529 0120 51000000 		.word	.L705+1
 3530 0124 51000000 		.word	.L705+1
 3531 0128 51000000 		.word	.L705+1
 3532 012c 51000000 		.word	.L705+1
 3533 0130 51000000 		.word	.L705+1
 3534 0134 51000000 		.word	.L705+1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 63


 3535 0138 51000000 		.word	.L705+1
 3536 013c 51000000 		.word	.L705+1
 3537 0140 51000000 		.word	.L705+1
 3538 0144 51000000 		.word	.L705+1
 3539 0148 51000000 		.word	.L705+1
 3540 014c 51000000 		.word	.L705+1
 3541 0150 51000000 		.word	.L705+1
 3542 0154 51000000 		.word	.L705+1
 3543 0158 03050000 		.word	.L650+1
 3544              	.L640:
 3545 015c A1F10903 		sub	r3, r1, #9
 3546 0160 362B     		cmp	r3, #54
 3547 0162 3FF675AF 		bhi	.L705
 3548 0166 01A2     		adr	r2, .L658
 3549 0168 52F823F0 		ldr	pc, [r2, r3, lsl #2]
 3550              		.p2align 2
 3551              	.L658:
 3552 016c D5050000 		.word	.L657+1
 3553 0170 A1050000 		.word	.L659+1
 3554 0174 51000000 		.word	.L705+1
 3555 0178 51000000 		.word	.L705+1
 3556 017c 31000000 		.word	.L637+1
 3557 0180 51000000 		.word	.L705+1
 3558 0184 51000000 		.word	.L705+1
 3559 0188 51000000 		.word	.L705+1
 3560 018c 51000000 		.word	.L705+1
 3561 0190 51000000 		.word	.L705+1
 3562 0194 51000000 		.word	.L705+1
 3563 0198 51000000 		.word	.L705+1
 3564 019c 51000000 		.word	.L705+1
 3565 01a0 51000000 		.word	.L705+1
 3566 01a4 51000000 		.word	.L705+1
 3567 01a8 51000000 		.word	.L705+1
 3568 01ac 51000000 		.word	.L705+1
 3569 01b0 51000000 		.word	.L705+1
 3570 01b4 51000000 		.word	.L705+1
 3571 01b8 51000000 		.word	.L705+1
 3572 01bc 51000000 		.word	.L705+1
 3573 01c0 51000000 		.word	.L705+1
 3574 01c4 51000000 		.word	.L705+1
 3575 01c8 D5050000 		.word	.L657+1
 3576 01cc 51000000 		.word	.L705+1
 3577 01d0 51000000 		.word	.L705+1
 3578 01d4 51000000 		.word	.L705+1
 3579 01d8 51000000 		.word	.L705+1
 3580 01dc 39060000 		.word	.L661+1
 3581 01e0 51000000 		.word	.L705+1
 3582 01e4 51000000 		.word	.L705+1
 3583 01e8 51000000 		.word	.L705+1
 3584 01ec 51000000 		.word	.L705+1
 3585 01f0 51000000 		.word	.L705+1
 3586 01f4 51000000 		.word	.L705+1
 3587 01f8 51000000 		.word	.L705+1
 3588 01fc 51000000 		.word	.L705+1
 3589 0200 51000000 		.word	.L705+1
 3590 0204 51000000 		.word	.L705+1
 3591 0208 51000000 		.word	.L705+1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 64


 3592 020c 51000000 		.word	.L705+1
 3593 0210 51000000 		.word	.L705+1
 3594 0214 51000000 		.word	.L705+1
 3595 0218 51000000 		.word	.L705+1
 3596 021c 51000000 		.word	.L705+1
 3597 0220 51000000 		.word	.L705+1
 3598 0224 51000000 		.word	.L705+1
 3599 0228 51000000 		.word	.L705+1
 3600 022c 51000000 		.word	.L705+1
 3601 0230 51000000 		.word	.L705+1
 3602 0234 51000000 		.word	.L705+1
 3603 0238 51000000 		.word	.L705+1
 3604 023c 51000000 		.word	.L705+1
 3605 0240 51000000 		.word	.L705+1
 3606 0244 09060000 		.word	.L662+1
 3607              	.L641:
 3608 0248 A1F13002 		sub	r2, r1, #48
 3609 024c D2B2     		uxtb	r2, r2
 3610 024e 092A     		cmp	r2, #9
 3611 0250 40F21781 		bls	.L712
 3612 0254 A1F14102 		sub	r2, r1, #65
 3613 0258 052A     		cmp	r2, #5
 3614 025a 00F27082 		bhi	.L678
 3615 025e 3739     		subs	r1, r1, #55
 3616 0260 0901     		lsls	r1, r1, #4
 3617 0262 0133     		adds	r3, r3, #1
 3618 0264 80F83816 		strb	r1, [r0, #1592]
 3619 0268 80F87C30 		strb	r3, [r0, #124]
 3620 026c D0F83426 		ldr	r2, [r0, #1588]
 3621 0270 E0E6     		b	.L654
 3622              	.L642:
 3623 0272 A1F13000 		sub	r0, r1, #48
 3624 0276 C0B2     		uxtb	r0, r0
 3625 0278 0928     		cmp	r0, #9
 3626 027a 40F2F380 		bls	.L713
 3627 027e A1F14102 		sub	r2, r1, #65
 3628 0282 052A     		cmp	r2, #5
 3629 0284 00F25B82 		bhi	.L678
 3630 0288 D4F83426 		ldr	r2, [r4, #1588]
 3631 028c 94F83856 		ldrb	r5, [r4, #1592]	@ zero_extendqisi2
 3632 0290 A018     		adds	r0, r4, r2
 3633 0292 3739     		subs	r1, r1, #55
 3634 0294 023B     		subs	r3, r3, #2
 3635 0296 2943     		orrs	r1, r1, r5
 3636 0298 0132     		adds	r2, r2, #1
 3637 029a C4F83426 		str	r2, [r4, #1588]
 3638 029e 80F87D10 		strb	r1, [r0, #125]
 3639 02a2 84F87C30 		strb	r3, [r4, #124]
 3640 02a6 C5E6     		b	.L654
 3641              	.L643:
 3642 02a8 A1F10903 		sub	r3, r1, #9
 3643 02ac 342B     		cmp	r3, #52
 3644 02ae 3FF6CFAE 		bhi	.L705
 3645 02b2 01A2     		adr	r2, .L666
 3646 02b4 52F823F0 		ldr	pc, [r2, r3, lsl #2]
 3647              		.p2align 2
 3648              	.L666:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 65


 3649 02b8 C5040000 		.word	.L665+1
 3650 02bc C5040000 		.word	.L665+1
 3651 02c0 51000000 		.word	.L705+1
 3652 02c4 51000000 		.word	.L705+1
 3653 02c8 C5040000 		.word	.L665+1
 3654 02cc 51000000 		.word	.L705+1
 3655 02d0 51000000 		.word	.L705+1
 3656 02d4 51000000 		.word	.L705+1
 3657 02d8 51000000 		.word	.L705+1
 3658 02dc 51000000 		.word	.L705+1
 3659 02e0 51000000 		.word	.L705+1
 3660 02e4 51000000 		.word	.L705+1
 3661 02e8 51000000 		.word	.L705+1
 3662 02ec 51000000 		.word	.L705+1
 3663 02f0 51000000 		.word	.L705+1
 3664 02f4 51000000 		.word	.L705+1
 3665 02f8 51000000 		.word	.L705+1
 3666 02fc 51000000 		.word	.L705+1
 3667 0300 51000000 		.word	.L705+1
 3668 0304 51000000 		.word	.L705+1
 3669 0308 51000000 		.word	.L705+1
 3670 030c 51000000 		.word	.L705+1
 3671 0310 51000000 		.word	.L705+1
 3672 0314 C5040000 		.word	.L665+1
 3673 0318 51000000 		.word	.L705+1
 3674 031c 51000000 		.word	.L705+1
 3675 0320 51000000 		.word	.L705+1
 3676 0324 51000000 		.word	.L705+1
 3677 0328 C5040000 		.word	.L665+1
 3678 032c C5040000 		.word	.L665+1
 3679 0330 51000000 		.word	.L705+1
 3680 0334 51000000 		.word	.L705+1
 3681 0338 51000000 		.word	.L705+1
 3682 033c 51000000 		.word	.L705+1
 3683 0340 51000000 		.word	.L705+1
 3684 0344 51000000 		.word	.L705+1
 3685 0348 51000000 		.word	.L705+1
 3686 034c 51000000 		.word	.L705+1
 3687 0350 51000000 		.word	.L705+1
 3688 0354 51000000 		.word	.L705+1
 3689 0358 51000000 		.word	.L705+1
 3690 035c 51000000 		.word	.L705+1
 3691 0360 51000000 		.word	.L705+1
 3692 0364 51000000 		.word	.L705+1
 3693 0368 51000000 		.word	.L705+1
 3694 036c 51000000 		.word	.L705+1
 3695 0370 51000000 		.word	.L705+1
 3696 0374 51000000 		.word	.L705+1
 3697 0378 51000000 		.word	.L705+1
 3698 037c 51000000 		.word	.L705+1
 3699 0380 51000000 		.word	.L705+1
 3700 0384 51000000 		.word	.L705+1
 3701 0388 95040000 		.word	.L667+1
 3702              	.L644:
 3703 038c A1F10903 		sub	r3, r1, #9
 3704 0390 222B     		cmp	r3, #34
 3705 0392 3FF65DAE 		bhi	.L705
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 66


 3706 0396 01A2     		adr	r2, .L670
 3707 0398 52F823F0 		ldr	pc, [r2, r3, lsl #2]
 3708              		.p2align 2
 3709              	.L670:
 3710 039c C5060000 		.word	.L669+1
 3711 03a0 93060000 		.word	.L671+1
 3712 03a4 51000000 		.word	.L705+1
 3713 03a8 51000000 		.word	.L705+1
 3714 03ac 31000000 		.word	.L637+1
 3715 03b0 51000000 		.word	.L705+1
 3716 03b4 51000000 		.word	.L705+1
 3717 03b8 51000000 		.word	.L705+1
 3718 03bc 51000000 		.word	.L705+1
 3719 03c0 51000000 		.word	.L705+1
 3720 03c4 51000000 		.word	.L705+1
 3721 03c8 51000000 		.word	.L705+1
 3722 03cc 51000000 		.word	.L705+1
 3723 03d0 51000000 		.word	.L705+1
 3724 03d4 51000000 		.word	.L705+1
 3725 03d8 51000000 		.word	.L705+1
 3726 03dc 51000000 		.word	.L705+1
 3727 03e0 51000000 		.word	.L705+1
 3728 03e4 51000000 		.word	.L705+1
 3729 03e8 51000000 		.word	.L705+1
 3730 03ec 51000000 		.word	.L705+1
 3731 03f0 51000000 		.word	.L705+1
 3732 03f4 51000000 		.word	.L705+1
 3733 03f8 C5060000 		.word	.L669+1
 3734 03fc 51000000 		.word	.L705+1
 3735 0400 51000000 		.word	.L705+1
 3736 0404 51000000 		.word	.L705+1
 3737 0408 51000000 		.word	.L705+1
 3738 040c 87060000 		.word	.L673+1
 3739 0410 59060000 		.word	.L674+1
 3740 0414 51000000 		.word	.L705+1
 3741 0418 51000000 		.word	.L705+1
 3742 041c 51000000 		.word	.L705+1
 3743 0420 51000000 		.word	.L705+1
 3744 0424 45060000 		.word	.L675+1
 3745              	.L716:
 3746              		.align	2
 3747              	.L715:
 3748 0428 00000000 		.word	.LANCHOR6
 3749              	.L645:
 3750 042c 0D29     		cmp	r1, #13
 3751 042e 3FF4FFAD 		beq	.L637
 3752 0432 3A29     		cmp	r1, #58
 3753 0434 00F09980 		beq	.L682
 3754 0438 0A29     		cmp	r1, #10
 3755 043a 7FF409AE 		bne	.L705
 3756 043e D0F80427 		ldr	r2, [r0, #1796]
 3757 0442 D0F83436 		ldr	r3, [r0, #1588]
 3758 0446 00EBC202 		add	r2, r0, r2, lsl #3
 3759 044a 0344     		add	r3, r3, r0
 3760 044c D2F87C26 		ldr	r2, [r2, #1660]
 3761 0450 7D33     		adds	r3, r3, #125
 3762 0452 9A42     		cmp	r2, r3
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 67


 3763 0454 76D0     		beq	.L709
 3764 0456 C649     		ldr	r1, .L717
 3765 0458 4FF4FA72 		mov	r2, #500
 3766 045c BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 3767 0460 FFF7FEBF 		b	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 3768              	.L713:
 3769 0464 D4F83426 		ldr	r2, [r4, #1588]
 3770 0468 94F83856 		ldrb	r5, [r4, #1592]	@ zero_extendqisi2
 3771 046c A118     		adds	r1, r4, r2
 3772 046e 023B     		subs	r3, r3, #2
 3773 0470 0132     		adds	r2, r2, #1
 3774 0472 2843     		orrs	r0, r0, r5
 3775 0474 C4F83426 		str	r2, [r4, #1588]
 3776 0478 81F87D00 		strb	r0, [r1, #125]
 3777 047c 84F87C30 		strb	r3, [r4, #124]
 3778 0480 D8E5     		b	.L654
 3779              	.L712:
 3780 0482 1201     		lsls	r2, r2, #4
 3781 0484 0133     		adds	r3, r3, #1
 3782 0486 80F83826 		strb	r2, [r0, #1592]
 3783 048a 80F87C30 		strb	r3, [r0, #124]
 3784 048e D0F83426 		ldr	r2, [r0, #1588]
 3785 0492 CFE5     		b	.L654
 3786              	.L667:
 3787 0494 D0F83426 		ldr	r2, [r0, #1588]
 3788 0498 D0F80037 		ldr	r3, [r0, #1792]
 3789 049c 8618     		adds	r6, r0, r2
 3790 049e 00EBC300 		add	r0, r0, r3, lsl #3
 3791 04a2 0132     		adds	r2, r2, #1
 3792 04a4 06F17E05 		add	r5, r6, #126
 3793 04a8 0027     		movs	r7, #0
 3794 04aa 0133     		adds	r3, r3, #1
 3795 04ac C4F83426 		str	r2, [r4, #1588]
 3796 04b0 0521     		movs	r1, #5
 3797 04b2 86F87D70 		strb	r7, [r6, #125]
 3798 04b6 C0F85056 		str	r5, [r0, #1616]
 3799 04ba C4F80037 		str	r3, [r4, #1792]
 3800              	.L706:
 3801 04be 84F87C10 		strb	r1, [r4, #124]
 3802 04c2 B7E5     		b	.L654
 3803              	.L665:
 3804 04c4 AB49     		ldr	r1, .L717+4
 3805 04c6 4FF4FA72 		mov	r2, #500
 3806 04ca BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 3807 04ce FFF7FEBF 		b	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 3808              	.L652:
 3809 04d2 D0F83426 		ldr	r2, [r0, #1588]
 3810 04d6 D0F8FC16 		ldr	r1, [r0, #1788]
 3811 04da 8618     		adds	r6, r0, r2
 3812 04dc 0023     		movs	r3, #0
 3813 04de 0132     		adds	r2, r2, #1
 3814 04e0 06F17E05 		add	r5, r6, #126
 3815 04e4 0131     		adds	r1, r1, #1
 3816 04e6 0820     		movs	r0, #8
 3817 04e8 C4F83426 		str	r2, [r4, #1588]
 3818 04ec 86F87D30 		strb	r3, [r6, #125]
 3819 04f0 C4F87C56 		str	r5, [r4, #1660]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 68


 3820 04f4 C4F80437 		str	r3, [r4, #1796]
 3821 04f8 C4F8FC16 		str	r1, [r4, #1788]
 3822 04fc 84F87C00 		strb	r0, [r4, #124]
 3823 0500 98E5     		b	.L654
 3824              	.L650:
 3825 0502 D0F83436 		ldr	r3, [r0, #1588]
 3826 0506 D0F8FC16 		ldr	r1, [r0, #1788]
 3827 050a 1844     		add	r0, r0, r3
 3828 050c 5A1C     		adds	r2, r3, #1
 3829 050e 0025     		movs	r5, #0
 3830 0510 0329     		cmp	r1, #3
 3831 0512 C4F83426 		str	r2, [r4, #1588]
 3832 0516 80F87D50 		strb	r5, [r0, #125]
 3833 051a 00F21281 		bhi	.L663
 3834 051e 0346     		mov	r3, r0
 3835 0520 04EB8100 		add	r0, r4, r1, lsl #2
 3836 0524 0131     		adds	r1, r1, #1
 3837 0526 7E33     		adds	r3, r3, #126
 3838 0528 0129     		cmp	r1, #1
 3839 052a C4F8FC16 		str	r1, [r4, #1788]
 3840 052e C0F84036 		str	r3, [r0, #1600]
 3841 0532 7FF47FAD 		bne	.L654
 3842 0536 C2E7     		b	.L706
 3843              	.L694:
 3844 0538 D0F83436 		ldr	r3, [r0, #1588]
 3845 053c 0344     		add	r3, r3, r0
 3846 053e 0022     		movs	r2, #0
 3847 0540 83F87D20 		strb	r2, [r3, #125]
 3848              	.L709:
 3849 0544 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter14ProcessMessageEv
 3850 0548 0028     		cmp	r0, #0
 3851 054a 3FF471AD 		beq	.L637
 3852 054e 0120     		movs	r0, #1
 3853 0550 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3854              	.L692:
 3855 0552 D0F83426 		ldr	r2, [r0, #1588]
 3856 0556 1044     		add	r0, r0, r2
 3857 0558 0A23     		movs	r3, #10
 3858 055a 0132     		adds	r2, r2, #1
 3859 055c C4F83426 		str	r2, [r4, #1588]
 3860 0560 80F87D10 		strb	r1, [r0, #125]
 3861 0564 84F87C30 		strb	r3, [r4, #124]
 3862 0568 64E5     		b	.L654
 3863              	.L682:
 3864 056a D0F80437 		ldr	r3, [r0, #1796]
 3865 056e 0F2B     		cmp	r3, #15
 3866 0570 00F0F780 		beq	.L714
 3867 0574 D0F83426 		ldr	r2, [r0, #1588]
 3868 0578 00EBC300 		add	r0, r0, r3, lsl #3
 3869 057c A618     		adds	r6, r4, r2
 3870 057e 06F17E05 		add	r5, r6, #126
 3871 0582 0132     		adds	r2, r2, #1
 3872 0584 0027     		movs	r7, #0
 3873 0586 0133     		adds	r3, r3, #1
 3874 0588 0921     		movs	r1, #9
 3875 058a C4F83426 		str	r2, [r4, #1588]
 3876 058e 86F87D70 		strb	r7, [r6, #125]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 69


 3877 0592 C0F88056 		str	r5, [r0, #1664]
 3878 0596 C4F80437 		str	r3, [r4, #1796]
 3879 059a 84F87C10 		strb	r1, [r4, #124]
 3880 059e 49E5     		b	.L654
 3881              	.L659:
 3882 05a0 D0F83426 		ldr	r2, [r0, #1588]
 3883 05a4 D0F8FC16 		ldr	r1, [r0, #1788]
 3884 05a8 8618     		adds	r6, r0, r2
 3885 05aa 0023     		movs	r3, #0
 3886 05ac 0132     		adds	r2, r2, #1
 3887 05ae 06F17E05 		add	r5, r6, #126
 3888 05b2 0131     		adds	r1, r1, #1
 3889 05b4 0820     		movs	r0, #8
 3890 05b6 C4F83426 		str	r2, [r4, #1588]
 3891 05ba 86F87D30 		strb	r3, [r6, #125]
 3892 05be C4F87C56 		str	r5, [r4, #1660]
 3893 05c2 C4F80037 		str	r3, [r4, #1792]
 3894 05c6 C4F80437 		str	r3, [r4, #1796]
 3895 05ca C4F8FC16 		str	r1, [r4, #1788]
 3896 05ce 84F87C00 		strb	r0, [r4, #124]
 3897 05d2 2FE5     		b	.L654
 3898              	.L657:
 3899 05d4 D0F83436 		ldr	r3, [r0, #1588]
 3900 05d8 D0F8FC16 		ldr	r1, [r0, #1788]
 3901 05dc C518     		adds	r5, r0, r3
 3902 05de 5A1C     		adds	r2, r3, #1
 3903 05e0 0020     		movs	r0, #0
 3904 05e2 0329     		cmp	r1, #3
 3905 05e4 C4F83426 		str	r2, [r4, #1588]
 3906 05e8 85F87D00 		strb	r0, [r5, #125]
 3907 05ec 00F2A980 		bhi	.L663
 3908 05f0 2B46     		mov	r3, r5
 3909 05f2 04EB8105 		add	r5, r4, r1, lsl #2
 3910 05f6 7E33     		adds	r3, r3, #126
 3911 05f8 0131     		adds	r1, r1, #1
 3912 05fa C4F8FC16 		str	r1, [r4, #1788]
 3913 05fe C5F84036 		str	r3, [r5, #1600]
 3914 0602 84F87C00 		strb	r0, [r4, #124]
 3915 0606 15E5     		b	.L654
 3916              	.L662:
 3917 0608 D0F83426 		ldr	r2, [r0, #1588]
 3918 060c D0F8FC16 		ldr	r1, [r0, #1788]
 3919 0610 8618     		adds	r6, r0, r2
 3920 0612 0023     		movs	r3, #0
 3921 0614 0132     		adds	r2, r2, #1
 3922 0616 06F17E05 		add	r5, r6, #126
 3923 061a 0131     		adds	r1, r1, #1
 3924 061c 0420     		movs	r0, #4
 3925 061e C4F83426 		str	r2, [r4, #1588]
 3926 0622 86F87D30 		strb	r3, [r6, #125]
 3927 0626 C4F84C56 		str	r5, [r4, #1612]
 3928 062a C4F80037 		str	r3, [r4, #1792]
 3929 062e C4F8FC16 		str	r1, [r4, #1788]
 3930 0632 84F87C00 		strb	r0, [r4, #124]
 3931 0636 FDE4     		b	.L654
 3932              	.L661:
 3933 0638 0223     		movs	r3, #2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 70


 3934 063a 80F87C30 		strb	r3, [r0, #124]
 3935 063e D0F83426 		ldr	r2, [r0, #1588]
 3936 0642 F7E4     		b	.L654
 3937              	.L675:
 3938 0644 D0F83426 		ldr	r2, [r0, #1588]
 3939 0648 8318     		adds	r3, r0, r2
 3940 064a 2021     		movs	r1, #32
 3941 064c 0132     		adds	r2, r2, #1
 3942 064e C0F83426 		str	r2, [r0, #1588]
 3943 0652 83F87D10 		strb	r1, [r3, #125]
 3944 0656 EDE4     		b	.L654
 3945              	.L674:
 3946 0658 D0F83426 		ldr	r2, [r0, #1588]
 3947 065c D0F80037 		ldr	r3, [r0, #1792]
 3948 0660 8518     		adds	r5, r0, r2
 3949 0662 04EBC301 		add	r1, r4, r3, lsl #3
 3950 0666 0132     		adds	r2, r2, #1
 3951 0668 05F17E00 		add	r0, r5, #126
 3952 066c 0026     		movs	r6, #0
 3953 066e 042B     		cmp	r3, #4
 3954 0670 C4F83426 		str	r2, [r4, #1588]
 3955 0674 85F87D60 		strb	r6, [r5, #125]
 3956 0678 C1F84C06 		str	r0, [r1, #1612]
 3957 067c 69D8     		bhi	.L676
 3958 067e 0423     		movs	r3, #4
 3959 0680 84F87C30 		strb	r3, [r4, #124]
 3960 0684 D6E4     		b	.L654
 3961              	.L673:
 3962 0686 0623     		movs	r3, #6
 3963 0688 80F87C30 		strb	r3, [r0, #124]
 3964 068c D0F83426 		ldr	r2, [r0, #1588]
 3965 0690 D0E4     		b	.L654
 3966              	.L671:
 3967 0692 D0F83426 		ldr	r2, [r0, #1588]
 3968 0696 D0F80037 		ldr	r3, [r0, #1792]
 3969 069a 8618     		adds	r6, r0, r2
 3970 069c 00EBC305 		add	r5, r0, r3, lsl #3
 3971 06a0 06F17E01 		add	r1, r6, #126
 3972 06a4 0023     		movs	r3, #0
 3973 06a6 0132     		adds	r2, r2, #1
 3974 06a8 0820     		movs	r0, #8
 3975 06aa C4F83426 		str	r2, [r4, #1588]
 3976 06ae 86F87D30 		strb	r3, [r6, #125]
 3977 06b2 C5F84C16 		str	r1, [r5, #1612]
 3978 06b6 C4F87C16 		str	r1, [r4, #1660]
 3979 06ba C4F80437 		str	r3, [r4, #1796]
 3980 06be 84F87C00 		strb	r0, [r4, #124]
 3981 06c2 B7E4     		b	.L654
 3982              	.L669:
 3983 06c4 D0F83426 		ldr	r2, [r0, #1588]
 3984 06c8 D4F8FC36 		ldr	r3, [r4, #1788]
 3985 06cc D0F80007 		ldr	r0, [r0, #1792]
 3986 06d0 A618     		adds	r6, r4, r2
 3987 06d2 04EB8305 		add	r5, r4, r3, lsl #2
 3988 06d6 04EBC000 		add	r0, r4, r0, lsl #3
 3989 06da 06F17E01 		add	r1, r6, #126
 3990 06de 0023     		movs	r3, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 71


 3991 06e0 0132     		adds	r2, r2, #1
 3992 06e2 C4F83426 		str	r2, [r4, #1588]
 3993 06e6 86F87D30 		strb	r3, [r6, #125]
 3994 06ea C0F84C16 		str	r1, [r0, #1612]
 3995 06ee C5F83C16 		str	r1, [r5, #1596]
 3996 06f2 84F87C30 		strb	r3, [r4, #124]
 3997 06f6 9DE4     		b	.L654
 3998              	.L691:
 3999 06f8 D0F83436 		ldr	r3, [r0, #1588]
 4000 06fc DA1C     		adds	r2, r3, #3
 4001 06fe B2F5B76F 		cmp	r2, #1464
 4002 0702 BFF4B1AC 		bcs	.L708
 4003 0706 D0F80427 		ldr	r2, [r0, #1796]
 4004 070a 00EB030C 		add	ip, r0, r3
 4005 070e 00EBC202 		add	r2, r0, r2, lsl #3
 4006 0712 0CF17E07 		add	r7, ip, #126
 4007 0716 0020     		movs	r0, #0
 4008 0718 0233     		adds	r3, r3, #2
 4009 071a 8CF87D00 		strb	r0, [ip, #125]
 4010 071e 0825     		movs	r5, #8
 4011 0720 C2F87C76 		str	r7, [r2, #1660]
 4012 0724 C4F83436 		str	r3, [r4, #1588]
 4013 0728 8CF87E10 		strb	r1, [ip, #126]
 4014 072c 84F87C50 		strb	r5, [r4, #124]
 4015 0730 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 4016              	.L711:
 4017 0732 0B23     		movs	r3, #11
 4018 0734 84F87C30 		strb	r3, [r4, #124]
 4019 0738 D4F83426 		ldr	r2, [r4, #1588]
 4020 073c 7AE4     		b	.L654
 4021              	.L678:
 4022 073e 0E4B     		ldr	r3, .L717+8
 4023 0740 93E4     		b	.L707
 4024              	.L663:
 4025 0742 2046     		mov	r0, r4
 4026 0744 0D49     		ldr	r1, .L717+12
 4027 0746 4FF4FA72 		mov	r2, #500
 4028 074a BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 4029 074e FFF7FEBF 		b	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 4030              	.L676:
 4031 0752 2046     		mov	r0, r4
 4032 0754 0A49     		ldr	r1, .L717+16
 4033 0756 4FF4FA72 		mov	r2, #500
 4034 075a BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 4035 075e FFF7FEBF 		b	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 4036              	.L714:
 4037 0762 0849     		ldr	r1, .L717+20
 4038 0764 4FF4FA72 		mov	r2, #500
 4039 0768 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 4040 076c FFF7FEBF 		b	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 4041              	.L718:
 4042              		.align	2
 4043              	.L717:
 4044 0770 080A0000 		.word	.LC124
 4045 0774 D8090000 		.word	.LC122
 4046 0778 00000000 		.word	.LANCHOR5
 4047 077c C0090000 		.word	.LC121
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 72


 4048 0780 EC090000 		.word	.LC123
 4049 0784 1C0A0000 		.word	.LC125
 4050              		.size	_ZN9Webserver15HttpInterpreter14CharFromClientEc, .-_ZN9Webserver15HttpInterpreter14CharFrom
 4051              		.section	.text._ZN9Webserver15HttpInterpreter12DoFastUploadEv,"ax",%progbits
 4052              		.align	2
 4053              		.global	_ZN9Webserver15HttpInterpreter12DoFastUploadEv
 4054              		.thumb
 4055              		.thumb_func
 4056              		.type	_ZN9Webserver15HttpInterpreter12DoFastUploadEv, %function
 4057              	_ZN9Webserver15HttpInterpreter12DoFastUploadEv:
 4058              		@ args = 0, pretend = 0, frame = 112
 4059              		@ frame_needed = 0, uses_anonymous_args = 0
 4060 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 4061 0004 8368     		ldr	r3, [r0, #8]
 4062 0006 D3F818A0 		ldr	r10, [r3, #24]
 4063 000a 9DB0     		sub	sp, sp, #116
 4064 000c 0546     		mov	r5, r0
 4065 000e 01A9     		add	r1, sp, #4
 4066 0010 02AA     		add	r2, sp, #8
 4067 0012 5046     		mov	r0, r10
 4068 0014 FFF7FEFF 		bl	_ZN18NetworkTransaction10ReadBufferERPKcRj
 4069 0018 40B9     		cbnz	r0, .L720
 4070              	.L733:
 4071 001a 2B7C     		ldrb	r3, [r5, #16]	@ zero_extendqisi2
 4072 001c 012B     		cmp	r3, #1
 4073 001e 4ED0     		beq	.L759
 4074              	.L722:
 4075 0020 5046     		mov	r0, r10
 4076 0022 FFF7FEFF 		bl	_ZN18NetworkTransaction7DiscardEv
 4077              	.L719:
 4078 0026 1DB0     		add	sp, sp, #116
 4079              		@ sp needed
 4080 0028 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 4081              	.L720:
 4082 002c E868     		ldr	r0, [r5, #12]
 4083 002e FFF7FEFF 		bl	_ZN7Network6UnlockEv
 4084 0032 D5F87837 		ldr	r3, [r5, #1912]
 4085 0036 0BB9     		cbnz	r3, .L723
 4086 0038 4F4A     		ldr	r2, .L763
 4087 003a 1360     		str	r3, [r2]
 4088              	.L723:
 4089 003c 029E     		ldr	r6, [sp, #8]
 4090 003e DFF83881 		ldr	r8, .L763
 4091 0042 DFF83891 		ldr	r9, .L763+4
 4092              	.L724:
 4093 0046 7EB3     		cbz	r6, .L734
 4094              	.L732:
 4095 0048 D8F80070 		ldr	r7, [r8]
 4096 004c DDF804B0 		ldr	fp, [sp, #4]
 4097 0050 C7F50054 		rsb	r4, r7, #8192
 4098 0054 A642     		cmp	r6, r4
 4099 0056 38BF     		it	cc
 4100 0058 3446     		movcc	r4, r6
 4101 005a 2246     		mov	r2, r4
 4102 005c 09EB0700 		add	r0, r9, r7
 4103 0060 5946     		mov	r1, fp
 4104 0062 FFF7FEFF 		bl	memcpy
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 73


 4105 0066 D5F87827 		ldr	r2, [r5, #1912]
 4106 006a 4449     		ldr	r1, .L763+4
 4107 006c 2744     		add	r7, r7, r4
 4108 006e 0BEB0403 		add	r3, fp, r4
 4109 0072 361B     		subs	r6, r6, r4
 4110 0074 B7F5005F 		cmp	r7, #8192
 4111 0078 1444     		add	r4, r4, r2
 4112 007a C8F80070 		str	r7, [r8]
 4113 007e 3A46     		mov	r2, r7
 4114 0080 0193     		str	r3, [sp, #4]
 4115 0082 0296     		str	r6, [sp, #8]
 4116 0084 C5F87847 		str	r4, [r5, #1912]
 4117 0088 03D0     		beq	.L725
 4118 008a D5F87437 		ldr	r3, [r5, #1908]
 4119 008e 9C42     		cmp	r4, r3
 4120 0090 D9D3     		bcc	.L724
 4121              	.L725:
 4122 0092 6869     		ldr	r0, [r5, #20]
 4123 0094 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKcj
 4124 0098 0023     		movs	r3, #0
 4125 009a C8F80030 		str	r3, [r8]
 4126 009e 0028     		cmp	r0, #0
 4127 00a0 4ED0     		beq	.L727
 4128 00a2 029E     		ldr	r6, [sp, #8]
 4129 00a4 002E     		cmp	r6, #0
 4130 00a6 CFD1     		bne	.L732
 4131              	.L734:
 4132 00a8 E868     		ldr	r0, [r5, #12]
 4133 00aa FFF7FEFF 		bl	_ZN7Network4LockEv
 4134 00ae 0028     		cmp	r0, #0
 4135 00b0 B3D1     		bne	.L733
 4136 00b2 E868     		ldr	r0, [r5, #12]
 4137 00b4 FFF7FEFF 		bl	_ZN7Network4LockEv
 4138 00b8 0028     		cmp	r0, #0
 4139 00ba F5D0     		beq	.L734
 4140 00bc ADE7     		b	.L733
 4141              	.L759:
 4142 00be D5F87827 		ldr	r2, [r5, #1912]
 4143 00c2 D5F87437 		ldr	r3, [r5, #1908]
 4144 00c6 9A42     		cmp	r2, r3
 4145 00c8 5046     		mov	r0, r10
 4146 00ca 04D2     		bcs	.L760
 4147 00cc FFF7FEFF 		bl	_ZNK18NetworkTransaction17HasMoreDataToReadEv
 4148 00d0 0028     		cmp	r0, #0
 4149 00d2 A8D1     		bne	.L719
 4150 00d4 A4E7     		b	.L722
 4151              	.L760:
 4152 00d6 FFF7FEFF 		bl	_ZNK18NetworkTransaction11GetRemoteIPEv
 4153 00da 95F86847 		ldrb	r4, [r5, #1896]	@ zero_extendqisi2
 4154 00de D4B1     		cbz	r4, .L736
 4155 00e0 2B46     		mov	r3, r5
 4156 00e2 0022     		movs	r2, #0
 4157 00e4 04E0     		b	.L738
 4158              	.L737:
 4159 00e6 0132     		adds	r2, r2, #1
 4160 00e8 9442     		cmp	r4, r2
 4161 00ea 03F10C03 		add	r3, r3, #12
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 74


 4162 00ee 12D9     		bls	.L736
 4163              	.L738:
 4164 00f0 D3F80817 		ldr	r1, [r3, #1800]
 4165 00f4 8142     		cmp	r1, r0
 4166 00f6 F6D1     		bne	.L737
 4167 00f8 93F81017 		ldrb	r1, [r3, #1808]	@ zero_extendqisi2
 4168 00fc 0029     		cmp	r1, #0
 4169 00fe F2D0     		beq	.L737
 4170 0100 02EB4202 		add	r2, r2, r2, lsl #1
 4171 0104 05EB8204 		add	r4, r5, r2, lsl #2
 4172 0108 0023     		movs	r3, #0
 4173 010a 84F81037 		strb	r3, [r4, #1808]
 4174 010e FFF7FEFF 		bl	millis
 4175 0112 C4F80C07 		str	r0, [r4, #1804]
 4176              	.L736:
 4177 0116 05F11801 		add	r1, r5, #24
 4178 011a 6422     		movs	r2, #100
 4179 011c 03A8     		add	r0, sp, #12
 4180 011e FFF7FEFF 		bl	strncpy
 4181 0122 2846     		mov	r0, r5
 4182 0124 D5F87417 		ldr	r1, [r5, #1908]
 4183 0128 FFF7FEFF 		bl	_ZN19ProtocolInterpreter12FinishUploadEm
 4184 012c D5F87C37 		ldr	r3, [r5, #1916]
 4185 0130 D3B9     		cbnz	r3, .L761
 4186              	.L739:
 4187 0132 2846     		mov	r0, r5
 4188 0134 1249     		ldr	r1, .L763+8
 4189 0136 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter16SendJsonResponseEPKc
 4190              	.L762:
 4191 013a 1DB0     		add	sp, sp, #116
 4192              		@ sp needed
 4193 013c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 4194              	.L727:
 4195 0140 6868     		ldr	r0, [r5, #4]
 4196 0142 104A     		ldr	r2, .L763+12
 4197 0144 0621     		movs	r1, #6
 4198 0146 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 4199 014a 2B7C     		ldrb	r3, [r5, #16]	@ zero_extendqisi2
 4200 014c 012B     		cmp	r3, #1
 4201 014e 04BF     		itt	eq
 4202 0150 0223     		moveq	r3, #2
 4203 0152 2B74     		strbeq	r3, [r5, #16]
 4204              	.L730:
 4205 0154 E868     		ldr	r0, [r5, #12]
 4206 0156 FFF7FEFF 		bl	_ZN7Network4LockEv
 4207 015a 0028     		cmp	r0, #0
 4208 015c FAD0     		beq	.L730
 4209 015e 2846     		mov	r0, r5
 4210 0160 0749     		ldr	r1, .L763+8
 4211 0162 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter16SendJsonResponseEPKc
 4212 0166 E8E7     		b	.L762
 4213              	.L761:
 4214 0168 6968     		ldr	r1, [r5, #4]
 4215 016a 03AA     		add	r2, sp, #12
 4216 016c D1F83C08 		ldr	r0, [r1, #2108]
 4217 0170 0021     		movs	r1, #0
 4218 0172 FFF7FEFF 		bl	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_l
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 75


 4219 0176 DCE7     		b	.L739
 4220              	.L764:
 4221              		.align	2
 4222              	.L763:
 4223 0178 00000000 		.word	.LANCHOR7
 4224 017c 00000000 		.word	.LANCHOR8
 4225 0180 6C070000 		.word	.LC87
 4226 0184 84000000 		.word	.LC4
 4227              		.size	_ZN9Webserver15HttpInterpreter12DoFastUploadEv, .-_ZN9Webserver15HttpInterpreter12DoFastUplo
 4228              		.section	.text._ZN9Webserver15HttpInterpreter12CanParseDataEv,"ax",%progbits
 4229              		.align	2
 4230              		.global	_ZN9Webserver15HttpInterpreter12CanParseDataEv
 4231              		.thumb
 4232              		.thumb_func
 4233              		.type	_ZN9Webserver15HttpInterpreter12CanParseDataEv, %function
 4234              	_ZN9Webserver15HttpInterpreter12CanParseDataEv:
 4235              		@ args = 0, pretend = 0, frame = 0
 4236              		@ frame_needed = 0, uses_anonymous_args = 0
 4237 0000 38B5     		push	{r3, r4, r5, lr}
 4238 0002 0446     		mov	r4, r0
 4239 0004 0BE0     		b	.L769
 4240              	.L770:
 4241 0006 D4F87037 		ldr	r3, [r4, #1904]
 4242 000a 1846     		mov	r0, r3
 4243 000c 1B68     		ldr	r3, [r3]
 4244 000e F3B1     		cbz	r3, .L774
 4245 0010 FFF7FEFF 		bl	_ZNK11OutputStack12GetFirstItemEv
 4246 0014 4FF44071 		mov	r1, #768
 4247 0018 FFF7FEFF 		bl	_ZN12OutputBuffer8TruncateEPS_j
 4248 001c C8B1     		cbz	r0, .L775
 4249              	.L769:
 4250 001e 0020     		movs	r0, #0
 4251 0020 FFF7FEFF 		bl	_ZN12OutputBuffer12GetBytesLeftEPKS_
 4252 0024 B0F5407F 		cmp	r0, #768
 4253 0028 EDD3     		bcc	.L770
 4254 002a A368     		ldr	r3, [r4, #8]
 4255 002c D4F88027 		ldr	r2, [r4, #1920]
 4256 0030 9B69     		ldr	r3, [r3, #24]
 4257 0032 1B68     		ldr	r3, [r3]
 4258 0034 9A42     		cmp	r2, r3
 4259 0036 01D0     		beq	.L776
 4260 0038 0120     		movs	r0, #1
 4261 003a 38BD     		pop	{r3, r4, r5, pc}
 4262              	.L776:
 4263 003c D4F88007 		ldr	r0, [r4, #1920]
 4264 0040 FFF7FEFF 		bl	_ZN7Network11IsConnectedEP6Socket
 4265 0044 0546     		mov	r5, r0
 4266 0046 58B1     		cbz	r0, .L771
 4267 0048 2046     		mov	r0, r4
 4268 004a FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter22ProcessDeferredRequestEv
 4269              	.L774:
 4270 004e 0020     		movs	r0, #0
 4271 0050 38BD     		pop	{r3, r4, r5, pc}
 4272              	.L775:
 4273 0052 D4F87007 		ldr	r0, [r4, #1904]
 4274 0056 FFF7FEFF 		bl	_ZN11OutputStack3PopEv
 4275 005a FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllEPS_
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 76


 4276 005e DEE7     		b	.L769
 4277              	.L771:
 4278 0060 A368     		ldr	r3, [r4, #8]
 4279 0062 9869     		ldr	r0, [r3, #24]
 4280 0064 FFF7FEFF 		bl	_ZN18NetworkTransaction7DiscardEv
 4281 0068 2846     		mov	r0, r5
 4282 006a 38BD     		pop	{r3, r4, r5, pc}
 4283              		.size	_ZN9Webserver15HttpInterpreter12CanParseDataEv, .-_ZN9Webserver15HttpInterpreter12CanParseDa
 4284              		.section	.text._ZN9Webserver14FtpInterpreterC2EP8PlatformPS_P7Network,"ax",%progbits
 4285              		.align	2
 4286              		.global	_ZN9Webserver14FtpInterpreterC2EP8PlatformPS_P7Network
 4287              		.thumb
 4288              		.thumb_func
 4289              		.type	_ZN9Webserver14FtpInterpreterC2EP8PlatformPS_P7Network, %function
 4290              	_ZN9Webserver14FtpInterpreterC2EP8PlatformPS_P7Network:
 4291              		@ args = 0, pretend = 0, frame = 0
 4292              		@ frame_needed = 0, uses_anonymous_args = 0
 4293              		@ link register save eliminated.
 4294 0000 F0B4     		push	{r4, r5, r6, r7}
 4295 0002 0B4C     		ldr	r4, .L778
 4296 0004 0B4F     		ldr	r7, .L778+4
 4297 0006 B4F800C0 		ldrh	ip, [r4]	@ unaligned
 4298 000a 0760     		str	r7, [r0]
 4299 000c 0025     		movs	r5, #0
 4300 000e 0126     		movs	r6, #1
 4301 0010 80F87C60 		strb	r6, [r0, #124]
 4302 0014 4561     		str	r5, [r0, #20]
 4303 0016 0574     		strb	r5, [r0, #16]
 4304 0018 0576     		strb	r5, [r0, #24]
 4305 001a C0F80051 		str	r5, [r0, #256]
 4306 001e 80F87D50 		strb	r5, [r0, #125]
 4307 0022 A0F868C1 		strh	ip, [r0, #360]	@ unaligned
 4308 0026 4160     		str	r1, [r0, #4]
 4309 0028 8260     		str	r2, [r0, #8]
 4310 002a C360     		str	r3, [r0, #12]
 4311 002c F0BC     		pop	{r4, r5, r6, r7}
 4312 002e 7047     		bx	lr
 4313              	.L779:
 4314              		.align	2
 4315              	.L778:
 4316 0030 6C030000 		.word	.LC21
 4317 0034 08000000 		.word	.LANCHOR2+8
 4318              		.size	_ZN9Webserver14FtpInterpreterC2EP8PlatformPS_P7Network, .-_ZN9Webserver14FtpInterpreterC2EP8
 4319              		.global	_ZN9Webserver14FtpInterpreterC1EP8PlatformPS_P7Network
 4320              		.thumb_set _ZN9Webserver14FtpInterpreterC1EP8PlatformPS_P7Network,_ZN9Webserver14FtpInterpreterC2E
 4321              		.section	.text._ZN9Webserver14FtpInterpreter10ResetStateEv,"ax",%progbits
 4322              		.align	2
 4323              		.global	_ZN9Webserver14FtpInterpreter10ResetStateEv
 4324              		.thumb
 4325              		.thumb_func
 4326              		.type	_ZN9Webserver14FtpInterpreter10ResetStateEv, %function
 4327              	_ZN9Webserver14FtpInterpreter10ResetStateEv:
 4328              		@ args = 0, pretend = 0, frame = 0
 4329              		@ frame_needed = 0, uses_anonymous_args = 0
 4330 0000 0A4B     		ldr	r3, .L782
 4331 0002 10B5     		push	{r4, lr}
 4332 0004 1B88     		ldrh	r3, [r3]	@ unaligned
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 77


 4333 0006 A0F86831 		strh	r3, [r0, #360]	@ unaligned
 4334 000a 0446     		mov	r4, r0
 4335 000c 0022     		movs	r2, #0
 4336 000e C0F80021 		str	r2, [r0, #256]
 4337 0012 C068     		ldr	r0, [r0, #12]
 4338 0014 FFF7FEFF 		bl	_ZN7Network13CloseDataPortEv
 4339 0018 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 4340 001a 012B     		cmp	r3, #1
 4341 001c 04BF     		itt	eq
 4342 001e 0223     		moveq	r3, #2
 4343 0020 2374     		strbeq	r3, [r4, #16]
 4344 0022 0023     		movs	r3, #0
 4345 0024 84F87C30 		strb	r3, [r4, #124]
 4346 0028 10BD     		pop	{r4, pc}
 4347              	.L783:
 4348 002a 00BF     		.align	2
 4349              	.L782:
 4350 002c 6C030000 		.word	.LC21
 4351              		.size	_ZN9Webserver14FtpInterpreter10ResetStateEv, .-_ZN9Webserver14FtpInterpreter10ResetStateEv
 4352              		.section	.text._ZN9Webserver4InitEv,"ax",%progbits
 4353              		.align	2
 4354              		.global	_ZN9Webserver4InitEv
 4355              		.thumb
 4356              		.thumb_func
 4357              		.type	_ZN9Webserver4InitEv, %function
 4358              	_ZN9Webserver4InitEv:
 4359              		@ args = 0, pretend = 0, frame = 0
 4360              		@ frame_needed = 0, uses_anonymous_args = 0
 4361 0000 38B5     		push	{r3, r4, r5, lr}
 4362 0002 0546     		mov	r5, r0
 4363 0004 C068     		ldr	r0, [r0, #12]
 4364 0006 FFF7FEFF 		bl	_ZN8Platform4TimeEv
 4365 000a 2B68     		ldr	r3, [r5]
 4366 000c 2862     		str	r0, [r5, #32]	@ float
 4367 000e 0024     		movs	r4, #0
 4368 0010 03F17D02 		add	r2, r3, #125
 4369 0014 0121     		movs	r1, #1
 4370 0016 2975     		strb	r1, [r5, #20]
 4371 0018 EC61     		str	r4, [r5, #28]
 4372 001a 6868     		ldr	r0, [r5, #4]
 4373 001c C3F83C26 		str	r2, [r3, #1596]
 4374 0020 C3F83446 		str	r4, [r3, #1588]
 4375 0024 83F87C40 		strb	r4, [r3, #124]
 4376 0028 C3F8FC46 		str	r4, [r3, #1788]
 4377 002c C3F80047 		str	r4, [r3, #1792]
 4378 0030 C3F80447 		str	r4, [r3, #1796]
 4379 0034 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter10ResetStateEv
 4380 0038 AB68     		ldr	r3, [r5, #8]
 4381 003a 83F87C40 		strb	r4, [r3, #124]
 4382 003e C3F88040 		str	r4, [r3, #128]
 4383 0042 C3F8EC40 		str	r4, [r3, #236]
 4384 0046 38BD     		pop	{r3, r4, r5, pc}
 4385              		.size	_ZN9Webserver4InitEv, .-_ZN9Webserver4InitEv
 4386              		.section	.text._ZN9Webserver14FtpInterpreter9SendReplyEiPKcb,"ax",%progbits
 4387              		.align	2
 4388              		.global	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 4389              		.thumb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 78


 4390              		.thumb_func
 4391              		.type	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb, %function
 4392              	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb:
 4393              		@ args = 0, pretend = 0, frame = 0
 4394              		@ frame_needed = 0, uses_anonymous_args = 0
 4395 0000 38B5     		push	{r3, r4, r5, lr}
 4396 0002 8068     		ldr	r0, [r0, #8]
 4397 0004 8469     		ldr	r4, [r0, #24]
 4398 0006 1046     		mov	r0, r2
 4399 0008 1D46     		mov	r5, r3
 4400 000a 0A46     		mov	r2, r1
 4401 000c 0346     		mov	r3, r0
 4402 000e 0549     		ldr	r1, .L786
 4403 0010 2046     		mov	r0, r4
 4404 0012 FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 4405 0016 2046     		mov	r0, r4
 4406 0018 2946     		mov	r1, r5
 4407 001a BDE83840 		pop	{r3, r4, r5, lr}
 4408 001e FFF7FEBF 		b	_ZN18NetworkTransaction6CommitEb
 4409              	.L787:
 4410 0022 00BF     		.align	2
 4411              	.L786:
 4412 0024 3C0A0000 		.word	.LC126
 4413              		.size	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb, .-_ZN9Webserver14FtpInterpreter9SendReplyEiPK
 4414              		.section	.text._ZN9Webserver14FtpInterpreter21ConnectionEstablishedEv,"ax",%progbits
 4415              		.align	2
 4416              		.global	_ZN9Webserver14FtpInterpreter21ConnectionEstablishedEv
 4417              		.thumb
 4418              		.thumb_func
 4419              		.type	_ZN9Webserver14FtpInterpreter21ConnectionEstablishedEv, %function
 4420              	_ZN9Webserver14FtpInterpreter21ConnectionEstablishedEv:
 4421              		@ args = 0, pretend = 0, frame = 0
 4422              		@ frame_needed = 0, uses_anonymous_args = 0
 4423 0000 70B5     		push	{r4, r5, r6, lr}
 4424 0002 224B     		ldr	r3, .L806
 4425 0004 90F87D20 		ldrb	r2, [r0, #125]	@ zero_extendqisi2
 4426 0008 B3F84030 		ldrh	r3, [r3, #64]
 4427 000c 0132     		adds	r2, r2, #1
 4428 000e 5B07     		lsls	r3, r3, #29
 4429 0010 0446     		mov	r4, r0
 4430 0012 80F87D20 		strb	r2, [r0, #125]
 4431 0016 14D4     		bmi	.L804
 4432              	.L789:
 4433 0018 A368     		ldr	r3, [r4, #8]
 4434 001a 9D69     		ldr	r5, [r3, #24]
 4435 001c 2846     		mov	r0, r5
 4436 001e FFF7FEFF 		bl	_ZNK18NetworkTransaction12GetLocalPortEv
 4437 0022 0646     		mov	r6, r0
 4438 0024 E068     		ldr	r0, [r4, #12]
 4439 0026 FFF7FEFF 		bl	_ZNK7Network10GetFtpPortEv
 4440 002a 8642     		cmp	r6, r0
 4441 002c 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 4442 0030 0DD0     		beq	.L790
 4443 0032 032B     		cmp	r3, #3
 4444 0034 17D0     		beq	.L805
 4445 0036 2846     		mov	r0, r5
 4446 0038 0021     		movs	r1, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 79


 4447 003a BDE87040 		pop	{r4, r5, r6, lr}
 4448 003e FFF7FEBF 		b	_ZN18NetworkTransaction6CommitEb
 4449              	.L804:
 4450 0042 4068     		ldr	r0, [r0, #4]
 4451 0044 124A     		ldr	r2, .L806+4
 4452 0046 0221     		movs	r1, #2
 4453 0048 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 4454 004c E4E7     		b	.L789
 4455              	.L790:
 4456 004e 93B1     		cbz	r3, .L793
 4457 0050 022B     		cmp	r3, #2
 4458 0052 10D0     		beq	.L793
 4459 0054 2046     		mov	r0, r4
 4460 0056 40F2A511 		movw	r1, #421
 4461 005a 0E4A     		ldr	r2, .L806+8
 4462 005c 0023     		movs	r3, #0
 4463 005e BDE87040 		pop	{r4, r5, r6, lr}
 4464 0062 FFF7FEBF 		b	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 4465              	.L805:
 4466 0066 0423     		movs	r3, #4
 4467 0068 2846     		mov	r0, r5
 4468 006a 84F87C30 		strb	r3, [r4, #124]
 4469 006e BDE87040 		pop	{r4, r5, r6, lr}
 4470 0072 FFF7FEBF 		b	_ZN18NetworkTransaction7DiscardEv
 4471              	.L793:
 4472 0076 0123     		movs	r3, #1
 4473 0078 84F87C30 		strb	r3, [r4, #124]
 4474 007c 2046     		mov	r0, r4
 4475 007e DC21     		movs	r1, #220
 4476 0080 054A     		ldr	r2, .L806+12
 4477 0082 BDE87040 		pop	{r4, r5, r6, lr}
 4478 0086 FFF7FEBF 		b	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 4479              	.L807:
 4480 008a 00BF     		.align	2
 4481              	.L806:
 4482 008c 00000000 		.word	reprap
 4483 0090 440A0000 		.word	.LC127
 4484 0094 880A0000 		.word	.LC129
 4485 0098 6C0A0000 		.word	.LC128
 4486              		.size	_ZN9Webserver14FtpInterpreter21ConnectionEstablishedEv, .-_ZN9Webserver14FtpInterpreter21Con
 4487              		.section	.text._ZN9Webserver14FtpInterpreter14ConnectionLostEP6Socket,"ax",%progbits
 4488              		.align	2
 4489              		.global	_ZN9Webserver14FtpInterpreter14ConnectionLostEP6Socket
 4490              		.thumb
 4491              		.thumb_func
 4492              		.type	_ZN9Webserver14FtpInterpreter14ConnectionLostEP6Socket, %function
 4493              	_ZN9Webserver14FtpInterpreter14ConnectionLostEP6Socket:
 4494              		@ args = 0, pretend = 0, frame = 0
 4495              		@ frame_needed = 0, uses_anonymous_args = 0
 4496 0000 70B5     		push	{r4, r5, r6, lr}
 4497 0002 90F87D30 		ldrb	r3, [r0, #125]	@ zero_extendqisi2
 4498 0006 013B     		subs	r3, r3, #1
 4499 0008 80F87D30 		strb	r3, [r0, #125]
 4500 000c 0446     		mov	r4, r0
 4501 000e 0846     		mov	r0, r1
 4502 0010 0D46     		mov	r5, r1
 4503 0012 FFF7FEFF 		bl	_ZN7Network12GetLocalPortEP6Socket
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 80


 4504 0016 0646     		mov	r6, r0
 4505 0018 E068     		ldr	r0, [r4, #12]
 4506 001a FFF7FEFF 		bl	_ZNK7Network10GetFtpPortEv
 4507 001e 8642     		cmp	r6, r0
 4508 0020 0FD0     		beq	.L809
 4509 0022 E068     		ldr	r0, [r4, #12]
 4510 0024 0421     		movs	r1, #4
 4511 0026 FFF7FEFF 		bl	_ZN7Network18AcquireTransactionEj
 4512 002a 98B9     		cbnz	r0, .L823
 4513              	.L810:
 4514 002c E068     		ldr	r0, [r4, #12]
 4515 002e FFF7FEFF 		bl	_ZN7Network13CloseDataPortEv
 4516 0032 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 4517 0034 012B     		cmp	r3, #1
 4518 0036 04BF     		itt	eq
 4519 0038 0223     		moveq	r3, #2
 4520 003a 2374     		strbeq	r3, [r4, #16]
 4521 003c 0223     		movs	r3, #2
 4522 003e 84F87C30 		strb	r3, [r4, #124]
 4523              	.L809:
 4524 0042 94F87D30 		ldrb	r3, [r4, #125]	@ zero_extendqisi2
 4525 0046 03B1     		cbz	r3, .L824
 4526 0048 70BD     		pop	{r4, r5, r6, pc}
 4527              	.L824:
 4528 004a 2046     		mov	r0, r4
 4529 004c BDE87040 		pop	{r4, r5, r6, lr}
 4530 0050 FFF7FEBF 		b	_ZN9Webserver14FtpInterpreter10ResetStateEv
 4531              	.L823:
 4532 0054 E068     		ldr	r0, [r4, #12]
 4533 0056 A668     		ldr	r6, [r4, #8]
 4534 0058 0021     		movs	r1, #0
 4535 005a FFF7FEFF 		bl	_ZN7Network14GetTransactionEP6Socket
 4536 005e 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 4537 0062 B061     		str	r0, [r6, #24]
 4538 0064 052B     		cmp	r3, #5
 4539 0066 1AD1     		bne	.L811
 4540 0068 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 4541 006a 022B     		cmp	r3, #2
 4542 006c 0FD0     		beq	.L812
 4543 006e 2846     		mov	r0, r5
 4544 0070 FFF7FEFF 		bl	_ZN7Network12IsTerminatedEP6Socket
 4545 0074 0546     		mov	r5, r0
 4546 0076 50B9     		cbnz	r0, .L812
 4547 0078 2046     		mov	r0, r4
 4548 007a E221     		movs	r1, #226
 4549 007c 0C4A     		ldr	r2, .L825
 4550 007e 0123     		movs	r3, #1
 4551 0080 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 4552 0084 2046     		mov	r0, r4
 4553 0086 2946     		mov	r1, r5
 4554 0088 FFF7FEFF 		bl	_ZN19ProtocolInterpreter12FinishUploadEm
 4555 008c CEE7     		b	.L810
 4556              	.L812:
 4557 008e 2046     		mov	r0, r4
 4558 0090 40F20E21 		movw	r1, #526
 4559 0094 074A     		ldr	r2, .L825+4
 4560 0096 0123     		movs	r3, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 81


 4561 0098 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 4562 009c C6E7     		b	.L810
 4563              	.L811:
 4564 009e 2046     		mov	r0, r4
 4565 00a0 40F22621 		movw	r1, #550
 4566 00a4 044A     		ldr	r2, .L825+8
 4567 00a6 0123     		movs	r3, #1
 4568 00a8 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 4569 00ac BEE7     		b	.L810
 4570              	.L826:
 4571 00ae 00BF     		.align	2
 4572              	.L825:
 4573 00b0 CC0A0000 		.word	.LC131
 4574 00b4 E00A0000 		.word	.LC132
 4575 00b8 B40A0000 		.word	.LC130
 4576              		.size	_ZN9Webserver14FtpInterpreter14ConnectionLostEP6Socket, .-_ZN9Webserver14FtpInterpreter14Con
 4577              		.section	.text._ZN9Webserver14FtpInterpreter12SendFeaturesEv,"ax",%progbits
 4578              		.align	2
 4579              		.global	_ZN9Webserver14FtpInterpreter12SendFeaturesEv
 4580              		.thumb
 4581              		.thumb_func
 4582              		.type	_ZN9Webserver14FtpInterpreter12SendFeaturesEv, %function
 4583              	_ZN9Webserver14FtpInterpreter12SendFeaturesEv:
 4584              		@ args = 0, pretend = 0, frame = 0
 4585              		@ frame_needed = 0, uses_anonymous_args = 0
 4586 0000 8368     		ldr	r3, [r0, #8]
 4587 0002 0A49     		ldr	r1, .L828
 4588 0004 10B5     		push	{r4, lr}
 4589 0006 9C69     		ldr	r4, [r3, #24]
 4590 0008 2046     		mov	r0, r4
 4591 000a FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 4592 000e 2046     		mov	r0, r4
 4593 0010 0749     		ldr	r1, .L828+4
 4594 0012 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 4595 0016 2046     		mov	r0, r4
 4596 0018 0649     		ldr	r1, .L828+8
 4597 001a FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 4598 001e 2046     		mov	r0, r4
 4599 0020 0121     		movs	r1, #1
 4600 0022 BDE81040 		pop	{r4, lr}
 4601 0026 FFF7FEBF 		b	_ZN18NetworkTransaction6CommitEb
 4602              	.L829:
 4603 002a 00BF     		.align	2
 4604              	.L828:
 4605 002c F40A0000 		.word	.LC133
 4606 0030 040B0000 		.word	.LC134
 4607 0034 0C0B0000 		.word	.LC135
 4608              		.size	_ZN9Webserver14FtpInterpreter12SendFeaturesEv, .-_ZN9Webserver14FtpInterpreter12SendFeatures
 4609              		.section	.text._ZN9Webserver14FtpInterpreter12ReadFilenameEt,"ax",%progbits
 4610              		.align	2
 4611              		.global	_ZN9Webserver14FtpInterpreter12ReadFilenameEt
 4612              		.thumb
 4613              		.thumb_func
 4614              		.type	_ZN9Webserver14FtpInterpreter12ReadFilenameEt, %function
 4615              	_ZN9Webserver14FtpInterpreter12ReadFilenameEt:
 4616              		@ args = 0, pretend = 0, frame = 0
 4617              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 82


 4618              		@ link register save eliminated.
 4619 0000 F0B4     		push	{r4, r5, r6, r7}
 4620 0002 D0F80051 		ldr	r5, [r0, #256]
 4621 0006 A942     		cmp	r1, r5
 4622 0008 32DA     		bge	.L837
 4623 000a 4318     		adds	r3, r0, r1
 4624 000c 7D35     		adds	r5, r5, #125
 4625 000e 0026     		movs	r6, #0
 4626 0010 7D33     		adds	r3, r3, #125
 4627 0012 0544     		add	r5, r5, r0
 4628 0014 3146     		mov	r1, r6
 4629              	.L836:
 4630 0016 13F8014F 		ldrb	r4, [r3, #1]!	@ zero_extendqisi2
 4631 001a A4F10902 		sub	r2, r4, #9
 4632 001e 1E2A     		cmp	r2, #30
 4633 0020 20D8     		bhi	.L832
 4634 0022 DFE802F0 		tbb	[pc, r2]
 4635              	.L834:
 4636 0026 10       		.byte	(.L833-.L834)/2
 4637 0027 1F       		.byte	(.L832-.L834)/2
 4638 0028 1F       		.byte	(.L832-.L834)/2
 4639 0029 1F       		.byte	(.L832-.L834)/2
 4640 002a 1F       		.byte	(.L832-.L834)/2
 4641 002b 1F       		.byte	(.L832-.L834)/2
 4642 002c 1F       		.byte	(.L832-.L834)/2
 4643 002d 1F       		.byte	(.L832-.L834)/2
 4644 002e 1F       		.byte	(.L832-.L834)/2
 4645 002f 1F       		.byte	(.L832-.L834)/2
 4646 0030 1F       		.byte	(.L832-.L834)/2
 4647 0031 1F       		.byte	(.L832-.L834)/2
 4648 0032 1F       		.byte	(.L832-.L834)/2
 4649 0033 1F       		.byte	(.L832-.L834)/2
 4650 0034 1F       		.byte	(.L832-.L834)/2
 4651 0035 1F       		.byte	(.L832-.L834)/2
 4652 0036 1F       		.byte	(.L832-.L834)/2
 4653 0037 1F       		.byte	(.L832-.L834)/2
 4654 0038 1F       		.byte	(.L832-.L834)/2
 4655 0039 1F       		.byte	(.L832-.L834)/2
 4656 003a 1F       		.byte	(.L832-.L834)/2
 4657 003b 1F       		.byte	(.L832-.L834)/2
 4658 003c 1F       		.byte	(.L832-.L834)/2
 4659 003d 10       		.byte	(.L833-.L834)/2
 4660 003e 1F       		.byte	(.L832-.L834)/2
 4661 003f 15       		.byte	(.L835-.L834)/2
 4662 0040 1F       		.byte	(.L832-.L834)/2
 4663 0041 1F       		.byte	(.L832-.L834)/2
 4664 0042 1F       		.byte	(.L832-.L834)/2
 4665 0043 1F       		.byte	(.L832-.L834)/2
 4666 0044 15       		.byte	(.L835-.L834)/2
 4667 0045 00       		.align	1
 4668              	.L833:
 4669 0046 4218     		adds	r2, r0, r1
 4670 0048 16B1     		cbz	r6, .L835
 4671 004a 82F80441 		strb	r4, [r2, #260]
 4672 004e 0131     		adds	r1, r1, #1
 4673              	.L835:
 4674 0050 AB42     		cmp	r3, r5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 83


 4675 0052 01D0     		beq	.L831
 4676 0054 6229     		cmp	r1, #98
 4677 0056 DEDD     		ble	.L836
 4678              	.L831:
 4679 0058 0144     		add	r1, r1, r0
 4680 005a 0023     		movs	r3, #0
 4681 005c 81F80431 		strb	r3, [r1, #260]
 4682 0060 F0BC     		pop	{r4, r5, r6, r7}
 4683 0062 7047     		bx	lr
 4684              	.L832:
 4685 0064 4218     		adds	r2, r0, r1
 4686 0066 0126     		movs	r6, #1
 4687 0068 82F80441 		strb	r4, [r2, #260]
 4688 006c 3144     		add	r1, r1, r6
 4689 006e EFE7     		b	.L835
 4690              	.L837:
 4691 0070 0021     		movs	r1, #0
 4692 0072 F1E7     		b	.L831
 4693              		.size	_ZN9Webserver14FtpInterpreter12ReadFilenameEt, .-_ZN9Webserver14FtpInterpreter12ReadFilename
 4694              		.section	.text._ZN9Webserver14FtpInterpreter15ChangeDirectoryEPKc,"ax",%progbits
 4695              		.align	2
 4696              		.global	_ZN9Webserver14FtpInterpreter15ChangeDirectoryEPKc
 4697              		.thumb
 4698              		.thumb_func
 4699              		.type	_ZN9Webserver14FtpInterpreter15ChangeDirectoryEPKc, %function
 4700              	_ZN9Webserver14FtpInterpreter15ChangeDirectoryEPKc:
 4701              		@ args = 0, pretend = 0, frame = 104
 4702              		@ frame_needed = 0, uses_anonymous_args = 0
 4703 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 4704 0002 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 4705 0004 9BB0     		sub	sp, sp, #108
 4706 0006 0E46     		mov	r6, r1
 4707 0008 0546     		mov	r5, r0
 4708 000a 53B3     		cbz	r3, .L843
 4709 000c 2F2B     		cmp	r3, #47
 4710 000e 75D0     		beq	.L871
 4711 0010 0846     		mov	r0, r1
 4712 0012 3F49     		ldr	r1, .L872
 4713 0014 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 4714 0018 60B3     		cbz	r0, .L846
 4715 001a 05F5B476 		add	r6, r5, #360
 4716 001e 3046     		mov	r0, r6
 4717 0020 3C49     		ldr	r1, .L872+4
 4718 0022 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 4719 0026 E0B9     		cbnz	r0, .L843
 4720 0028 01AC     		add	r4, sp, #4
 4721 002a 3146     		mov	r1, r6
 4722 002c 6422     		movs	r2, #100
 4723 002e 2046     		mov	r0, r4
 4724 0030 FFF7FEFF 		bl	strncpy
 4725 0034 2046     		mov	r0, r4
 4726 0036 FFF7FEFF 		bl	strlen
 4727 003a 0238     		subs	r0, r0, #2
 4728 003c 39D4     		bmi	.L845
 4729 003e 1AAA     		add	r2, sp, #104
 4730 0040 0244     		add	r2, r2, r0
 4731 0042 12F8641C 		ldrb	r1, [r2, #-100]	@ zero_extendqisi2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 84


 4732 0046 2F29     		cmp	r1, #47
 4733 0048 07D0     		beq	.L849
 4734              	.L851:
 4735 004a 10F1FF30 		adds	r0, r0, #-1
 4736 004e 30D3     		bcc	.L845
 4737 0050 225C     		ldrb	r2, [r4, r0]	@ zero_extendqisi2
 4738 0052 2F2A     		cmp	r2, #47
 4739 0054 F9D1     		bne	.L851
 4740 0056 1AAA     		add	r2, sp, #104
 4741 0058 0244     		add	r2, r2, r0
 4742              	.L849:
 4743 005a 0023     		movs	r3, #0
 4744 005c 02F8633C 		strb	r3, [r2, #-99]
 4745 0060 27E0     		b	.L845
 4746              	.L843:
 4747 0062 2846     		mov	r0, r5
 4748 0064 40F22621 		movw	r1, #550
 4749 0068 2B4A     		ldr	r2, .L872+8
 4750 006a 0123     		movs	r3, #1
 4751 006c FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 4752 0070 1BB0     		add	sp, sp, #108
 4753              		@ sp needed
 4754 0072 F0BD     		pop	{r4, r5, r6, r7, pc}
 4755              	.L846:
 4756 0074 05F5B477 		add	r7, r5, #360
 4757 0078 01AC     		add	r4, sp, #4
 4758 007a 3946     		mov	r1, r7
 4759 007c 6422     		movs	r2, #100
 4760 007e 2046     		mov	r0, r4
 4761 0080 FFF7FEFF 		bl	strncpy
 4762 0084 3846     		mov	r0, r7
 4763 0086 FFF7FEFF 		bl	strlen
 4764 008a 0128     		cmp	r0, #1
 4765 008c 08D9     		bls	.L853
 4766 008e 2046     		mov	r0, r4
 4767 0090 FFF7FEFF 		bl	strlen
 4768 0094 1F49     		ldr	r1, .L872+4
 4769 0096 C0F16302 		rsb	r2, r0, #99
 4770 009a 2046     		mov	r0, r4
 4771 009c FFF7FEFF 		bl	strncat
 4772              	.L853:
 4773 00a0 2046     		mov	r0, r4
 4774 00a2 FFF7FEFF 		bl	strlen
 4775 00a6 3146     		mov	r1, r6
 4776 00a8 C0F16302 		rsb	r2, r0, #99
 4777 00ac 2046     		mov	r0, r4
 4778 00ae FFF7FEFF 		bl	strncat
 4779              	.L845:
 4780 00b2 2046     		mov	r0, r4
 4781 00b4 1749     		ldr	r1, .L872+4
 4782 00b6 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 4783 00ba 48B1     		cbz	r0, .L854
 4784 00bc 2046     		mov	r0, r4
 4785 00be FFF7FEFF 		bl	strlen
 4786 00c2 0128     		cmp	r0, #1
 4787 00c4 04D9     		bls	.L854
 4788 00c6 1AAB     		add	r3, sp, #104
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 85


 4789 00c8 1844     		add	r0, r0, r3
 4790 00ca 0023     		movs	r3, #0
 4791 00cc 00F8653C 		strb	r3, [r0, #-101]
 4792              	.L854:
 4793 00d0 6B68     		ldr	r3, [r5, #4]
 4794 00d2 2146     		mov	r1, r4
 4795 00d4 D3F83C08 		ldr	r0, [r3, #2108]
 4796 00d8 FFF7FEFF 		bl	_ZNK11MassStorage15DirectoryExistsEPKc
 4797 00dc 0028     		cmp	r0, #0
 4798 00de C0D0     		beq	.L843
 4799 00e0 2146     		mov	r1, r4
 4800 00e2 05F5B470 		add	r0, r5, #360
 4801 00e6 6422     		movs	r2, #100
 4802 00e8 FFF7FEFF 		bl	strncpy
 4803 00ec 2846     		mov	r0, r5
 4804 00ee FA21     		movs	r1, #250
 4805 00f0 0A4A     		ldr	r2, .L872+12
 4806 00f2 0123     		movs	r3, #1
 4807 00f4 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 4808 00f8 1BB0     		add	sp, sp, #108
 4809              		@ sp needed
 4810 00fa F0BD     		pop	{r4, r5, r6, r7, pc}
 4811              	.L871:
 4812 00fc 01AC     		add	r4, sp, #4
 4813 00fe 2046     		mov	r0, r4
 4814 0100 6422     		movs	r2, #100
 4815 0102 FFF7FEFF 		bl	strncpy
 4816 0106 0023     		movs	r3, #0
 4817 0108 8DF86730 		strb	r3, [sp, #103]
 4818 010c D1E7     		b	.L845
 4819              	.L873:
 4820 010e 00BF     		.align	2
 4821              	.L872:
 4822 0110 180B0000 		.word	.LC136
 4823 0114 6C030000 		.word	.LC21
 4824 0118 1C0B0000 		.word	.LC137
 4825 011c 380B0000 		.word	.LC138
 4826              		.size	_ZN9Webserver14FtpInterpreter15ChangeDirectoryEPKc, .-_ZN9Webserver14FtpInterpreter15ChangeD
 4827              		.section	.text._ZN9Webserver14FtpInterpreter11ProcessLineEv,"ax",%progbits
 4828              		.align	2
 4829              		.global	_ZN9Webserver14FtpInterpreter11ProcessLineEv
 4830              		.thumb
 4831              		.thumb_func
 4832              		.type	_ZN9Webserver14FtpInterpreter11ProcessLineEv, %function
 4833              	_ZN9Webserver14FtpInterpreter11ProcessLineEv:
 4834              		@ args = 0, pretend = 0, frame = 112
 4835              		@ frame_needed = 0, uses_anonymous_args = 0
 4836 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 4837 0004 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 4838 0008 A1B0     		sub	sp, sp, #132
 4839 000a 0446     		mov	r4, r0
 4840 000c 052B     		cmp	r3, #5
 4841 000e 32D8     		bhi	.L874
 4842 0010 DFE813F0 		tbh	[pc, r3, lsl #1]
 4843              	.L877:
 4844 0014 4C00     		.2byte	(.L876-.L877)/2
 4845 0016 4C00     		.2byte	(.L876-.L877)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 86


 4846 0018 7D00     		.2byte	(.L878-.L877)/2
 4847 001a CC00     		.2byte	(.L879-.L877)/2
 4848 001c E600     		.2byte	(.L880-.L877)/2
 4849 001e 3400     		.2byte	(.L881-.L877)/2
 4850              	.L985:
 4851 0020 2846     		mov	r0, r5
 4852 0022 9C49     		ldr	r1, .L987
 4853 0024 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 4854 0028 0028     		cmp	r0, #0
 4855 002a 40F03982 		bne	.L905
 4856 002e 2846     		mov	r0, r5
 4857 0030 9949     		ldr	r1, .L987+4
 4858 0032 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 4859 0036 0028     		cmp	r0, #0
 4860 0038 40F03282 		bne	.L905
 4861 003c 2846     		mov	r0, r5
 4862 003e 9749     		ldr	r1, .L987+8
 4863 0040 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 4864 0044 0028     		cmp	r0, #0
 4865 0046 00F07582 		beq	.L974
 4866 004a 2046     		mov	r0, r4
 4867 004c 0421     		movs	r1, #4
 4868 004e FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter12ReadFilenameEt
 4869 0052 6368     		ldr	r3, [r4, #4]
 4870 0054 04F5B471 		add	r1, r4, #360
 4871 0058 D3F83C08 		ldr	r0, [r3, #2108]
 4872 005c 04F58272 		add	r2, r4, #260
 4873 0060 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_
 4874 0064 0028     		cmp	r0, #0
 4875 0066 00F08182 		beq	.L907
 4876 006a 2046     		mov	r0, r4
 4877 006c FA21     		movs	r1, #250
 4878 006e 8C4A     		ldr	r2, .L987+12
 4879 0070 0123     		movs	r3, #1
 4880 0072 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 4881              	.L874:
 4882 0076 21B0     		add	sp, sp, #132
 4883              		@ sp needed
 4884 0078 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 4885              	.L881:
 4886 007c 7E30     		adds	r0, r0, #126
 4887 007e 8949     		ldr	r1, .L987+16
 4888 0080 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 4889 0084 0028     		cmp	r0, #0
 4890 0086 00F09C81 		beq	.L933
 4891 008a 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 4892 008c 002B     		cmp	r3, #0
 4893 008e 00F0DB81 		beq	.L934
 4894 0092 012B     		cmp	r3, #1
 4895 0094 01D1     		bne	.L972
 4896 0096 0223     		movs	r3, #2
 4897 0098 2374     		strb	r3, [r4, #16]
 4898              	.L972:
 4899 009a 2046     		mov	r0, r4
 4900 009c E221     		movs	r1, #226
 4901 009e 824A     		ldr	r2, .L987+20
 4902 00a0 0123     		movs	r3, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 87


 4903 00a2 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 4904 00a6 21B0     		add	sp, sp, #132
 4905              		@ sp needed
 4906 00a8 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 4907              	.L876:
 4908 00ac 00F17E05 		add	r5, r0, #126
 4909 00b0 2846     		mov	r0, r5
 4910 00b2 7E49     		ldr	r1, .L987+24
 4911 00b4 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 4912 00b8 0646     		mov	r6, r0
 4913 00ba 0028     		cmp	r0, #0
 4914 00bc 40F07281 		bne	.L975
 4915 00c0 2846     		mov	r0, r5
 4916 00c2 7B49     		ldr	r1, .L987+28
 4917 00c4 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 4918 00c8 0028     		cmp	r0, #0
 4919 00ca 00F0C181 		beq	.L883
 4920 00ce D4F80051 		ldr	r5, [r4, #256]
 4921 00d2 042D     		cmp	r5, #4
 4922 00d4 40F24F81 		bls	.L938
 4923 00d8 3046     		mov	r0, r6
 4924 00da 3146     		mov	r1, r6
 4925 00dc 0423     		movs	r3, #4
 4926 00de 0DE0     		b	.L888
 4927              	.L976:
 4928 00e0 092A     		cmp	r2, #9
 4929 00e2 11D0     		beq	.L885
 4930              	.L886:
 4931 00e4 20AE     		add	r6, sp, #128
 4932 00e6 0E44     		add	r6, r6, r1
 4933 00e8 0120     		movs	r0, #1
 4934 00ea 06F8702C 		strb	r2, [r6, #-112]
 4935 00ee 0144     		add	r1, r1, r0
 4936              	.L887:
 4937 00f0 AB42     		cmp	r3, r5
 4938 00f2 00F04181 		beq	.L884
 4939 00f6 172B     		cmp	r3, #23
 4940 00f8 00F03E81 		beq	.L884
 4941              	.L888:
 4942 00fc E218     		adds	r2, r4, r3
 4943 00fe 0133     		adds	r3, r3, #1
 4944 0100 92F87E20 		ldrb	r2, [r2, #126]	@ zero_extendqisi2
 4945 0104 202A     		cmp	r2, #32
 4946 0106 EBD1     		bne	.L976
 4947              	.L885:
 4948 0108 0028     		cmp	r0, #0
 4949 010a F1D0     		beq	.L887
 4950 010c EAE7     		b	.L886
 4951              	.L878:
 4952 010e 00F17E05 		add	r5, r0, #126
 4953 0112 2846     		mov	r0, r5
 4954 0114 6749     		ldr	r1, .L987+32
 4955 0116 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 4956 011a 0028     		cmp	r0, #0
 4957 011c 40F04A81 		bne	.L977
 4958 0120 2846     		mov	r0, r5
 4959 0122 6549     		ldr	r1, .L987+36
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 88


 4960 0124 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 4961 0128 0028     		cmp	r0, #0
 4962 012a 40F08981 		bne	.L978
 4963 012e 2846     		mov	r0, r5
 4964 0130 6249     		ldr	r1, .L987+40
 4965 0132 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 4966 0136 0028     		cmp	r0, #0
 4967 0138 40F06D81 		bne	.L979
 4968 013c 2846     		mov	r0, r5
 4969 013e 6049     		ldr	r1, .L987+44
 4970 0140 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 4971 0144 0028     		cmp	r0, #0
 4972 0146 40F09081 		bne	.L980
 4973 014a 2846     		mov	r0, r5
 4974 014c 5D49     		ldr	r1, .L987+48
 4975 014e FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 4976 0152 0028     		cmp	r0, #0
 4977 0154 40F09381 		bne	.L981
 4978 0158 2846     		mov	r0, r5
 4979 015a 5B49     		ldr	r1, .L987+52
 4980 015c FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 4981 0160 0028     		cmp	r0, #0
 4982 0162 00F09181 		beq	.L896
 4983 0166 D4F80031 		ldr	r3, [r4, #256]
 4984 016a 042B     		cmp	r3, #4
 4985 016c 16D9     		bls	.L897
 4986 016e 94F88220 		ldrb	r2, [r4, #130]	@ zero_extendqisi2
 4987 0172 492A     		cmp	r2, #73
 4988 0174 00F09C81 		beq	.L898
 4989 0178 412A     		cmp	r2, #65
 4990 017a 00F0A081 		beq	.L899
 4991 017e 7D33     		adds	r3, r3, #125
 4992 0180 E118     		adds	r1, r4, r3
 4993 0182 04F18203 		add	r3, r4, #130
 4994 0186 07E0     		b	.L902
 4995              	.L903:
 4996 0188 13F8012F 		ldrb	r2, [r3, #1]!	@ zero_extendqisi2
 4997 018c 492A     		cmp	r2, #73
 4998 018e 00F08F81 		beq	.L898
 4999 0192 412A     		cmp	r2, #65
 5000 0194 00F09381 		beq	.L899
 5001              	.L902:
 5002 0198 8B42     		cmp	r3, r1
 5003 019a F5D1     		bne	.L903
 5004              	.L897:
 5005 019c 2046     		mov	r0, r4
 5006 019e 4FF4FA71 		mov	r1, #500
 5007 01a2 4A4A     		ldr	r2, .L987+56
 5008 01a4 0123     		movs	r3, #1
 5009 01a6 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5010 01aa 64E7     		b	.L874
 5011              	.L879:
 5012 01ac FFF7FEFF 		bl	millis
 5013 01b0 D4F8CC31 		ldr	r3, [r4, #460]
 5014 01b4 42F21072 		movw	r2, #10000
 5015 01b8 C01A     		subs	r0, r0, r3
 5016 01ba 9042     		cmp	r0, r2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 89


 5017 01bc 40F2D580 		bls	.L921
 5018 01c0 434A     		ldr	r2, .L987+60
 5019 01c2 2046     		mov	r0, r4
 5020 01c4 40F2A911 		movw	r1, #425
 5021              	.L971:
 5022 01c8 0123     		movs	r3, #1
 5023 01ca FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5024 01ce E068     		ldr	r0, [r4, #12]
 5025 01d0 FFF7FEFF 		bl	_ZN7Network13CloseDataPortEv
 5026 01d4 0223     		movs	r3, #2
 5027 01d6 84F87C30 		strb	r3, [r4, #124]
 5028 01da 21B0     		add	sp, sp, #132
 5029              		@ sp needed
 5030 01dc BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 5031              	.L880:
 5032 01e0 00F17E05 		add	r5, r0, #126
 5033 01e4 2846     		mov	r0, r5
 5034 01e6 3B49     		ldr	r1, .L987+64
 5035 01e8 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 5036 01ec 0028     		cmp	r0, #0
 5037 01ee 77D0     		beq	.L922
 5038 01f0 E068     		ldr	r0, [r4, #12]
 5039 01f2 0521     		movs	r1, #5
 5040 01f4 FFF7FEFF 		bl	_ZN7Network18AcquireTransactionEj
 5041 01f8 0028     		cmp	r0, #0
 5042 01fa 00F01C81 		beq	.L973
 5043 01fe 364A     		ldr	r2, .L987+68
 5044 0200 0123     		movs	r3, #1
 5045 0202 2046     		mov	r0, r4
 5046 0204 9621     		movs	r1, #150
 5047 0206 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5048 020a 0021     		movs	r1, #0
 5049 020c E068     		ldr	r0, [r4, #12]
 5050 020e FFF7FEFF 		bl	_ZN7Network14GetTransactionEP6Socket
 5051 0212 6368     		ldr	r3, [r4, #4]
 5052 0214 0646     		mov	r6, r0
 5053 0216 04AA     		add	r2, sp, #16
 5054 0218 D3F83C08 		ldr	r0, [r3, #2108]
 5055 021c 04F5B471 		add	r1, r4, #360
 5056 0220 FFF7FEFF 		bl	_ZN11MassStorage9FindFirstEPKcR8FileInfo
 5057 0224 0028     		cmp	r0, #0
 5058 0226 2DD0     		beq	.L926
 5059 0228 0DF11107 		add	r7, sp, #17
 5060              	.L927:
 5061 022c 9DF81030 		ldrb	r3, [sp, #16]	@ zero_extendqisi2
 5062 0230 1FA8     		add	r0, sp, #124
 5063 0232 002B     		cmp	r3, #0
 5064 0234 0CBF     		ite	eq
 5065 0236 4FF02D09 		moveq	r9, #45
 5066 023a 4FF06409 		movne	r9, #100
 5067 023e FFF7FEFF 		bl	gmtime
 5068 0242 0169     		ldr	r1, [r0, #16]
 5069 0244 6368     		ldr	r3, [r4, #4]
 5070 0246 DDF87880 		ldr	r8, [sp, #120]
 5071 024a 0131     		adds	r1, r1, #1
 5072 024c 0546     		mov	r5, r0
 5073 024e C9B2     		uxtb	r1, r1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 90


 5074 0250 D3F83C08 		ldr	r0, [r3, #2108]
 5075 0254 FFF7FEFF 		bl	_ZN11MassStorage12GetMonthNameEh
 5076 0258 0090     		str	r0, [sp]
 5077 025a E968     		ldr	r1, [r5, #12]
 5078 025c 0191     		str	r1, [sp, #4]
 5079 025e 6869     		ldr	r0, [r5, #20]
 5080 0260 1E49     		ldr	r1, .L987+72
 5081 0262 0397     		str	r7, [sp, #12]
 5082 0264 00F26C70 		addw	r0, r0, #1900
 5083 0268 4346     		mov	r3, r8
 5084 026a 0290     		str	r0, [sp, #8]
 5085 026c 4A46     		mov	r2, r9
 5086 026e 3046     		mov	r0, r6
 5087 0270 FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 5088 0274 6368     		ldr	r3, [r4, #4]
 5089 0276 04A9     		add	r1, sp, #16
 5090 0278 D3F83C08 		ldr	r0, [r3, #2108]
 5091 027c FFF7FEFF 		bl	_ZN11MassStorage8FindNextER8FileInfo
 5092 0280 0028     		cmp	r0, #0
 5093 0282 D3D1     		bne	.L927
 5094              	.L926:
 5095 0284 3046     		mov	r0, r6
 5096 0286 0021     		movs	r1, #0
 5097 0288 FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 5098 028c 0523     		movs	r3, #5
 5099 028e 84F87C30 		strb	r3, [r4, #124]
 5100 0292 F0E6     		b	.L874
 5101              	.L988:
 5102              		.align	2
 5103              	.L987:
 5104 0294 980C0000 		.word	.LC159
 5105 0298 A00C0000 		.word	.LC160
 5106 029c 1C0F0000 		.word	.LC189
 5107 02a0 A80C0000 		.word	.LC161
 5108 02a4 F00E0000 		.word	.LC186
 5109 02a8 F80E0000 		.word	.LC187
 5110 02ac 580B0000 		.word	.LC139
 5111 02b0 800B0000 		.word	.LC141
 5112 02b4 C80B0000 		.word	.LC145
 5113 02b8 E00B0000 		.word	.LC147
 5114 02bc E80B0000 		.word	.LC148
 5115 02c0 F80B0000 		.word	.LC150
 5116 02c4 FC0B0000 		.word	.LC151
 5117 02c8 040C0000 		.word	.LC152
 5118 02cc 440C0000 		.word	.LC155
 5119 02d0 0C0E0000 		.word	.LC179
 5120 02d4 900C0000 		.word	.LC158
 5121 02d8 2C0E0000 		.word	.LC180
 5122 02dc 500E0000 		.word	.LC181
 5123              	.L922:
 5124 02e0 2846     		mov	r0, r5
 5125 02e2 A649     		ldr	r1, .L989
 5126 02e4 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 5127 02e8 0646     		mov	r6, r0
 5128 02ea 0028     		cmp	r0, #0
 5129 02ec 6ED1     		bne	.L982
 5130 02ee 2846     		mov	r0, r5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 91


 5131 02f0 A349     		ldr	r1, .L989+4
 5132 02f2 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 5133 02f6 0028     		cmp	r0, #0
 5134 02f8 63D0     		beq	.L933
 5135 02fa 2046     		mov	r0, r4
 5136 02fc 0421     		movs	r1, #4
 5137 02fe 04F58277 		add	r7, r4, #260
 5138 0302 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter12ReadFilenameEt
 5139 0306 3A46     		mov	r2, r7
 5140 0308 6068     		ldr	r0, [r4, #4]
 5141 030a 04F5B471 		add	r1, r4, #360
 5142 030e 3346     		mov	r3, r6
 5143 0310 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 5144 0314 0546     		mov	r5, r0
 5145 0316 0028     		cmp	r0, #0
 5146 0318 00F0D880 		beq	.L983
 5147 031c E068     		ldr	r0, [r4, #12]
 5148 031e 0521     		movs	r1, #5
 5149 0320 FFF7FEFF 		bl	_ZN7Network18AcquireTransactionEj
 5150 0324 0028     		cmp	r0, #0
 5151 0326 00F08380 		beq	.L932
 5152 032a A368     		ldr	r3, [r4, #8]
 5153 032c 2846     		mov	r0, r5
 5154 032e D3F81880 		ldr	r8, [r3, #24]
 5155 0332 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 5156 0336 3A46     		mov	r2, r7
 5157 0338 0346     		mov	r3, r0
 5158 033a 9249     		ldr	r1, .L989+8
 5159 033c 4046     		mov	r0, r8
 5160 033e FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 5161 0342 4046     		mov	r0, r8
 5162 0344 0121     		movs	r1, #1
 5163 0346 FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 5164 034a 3146     		mov	r1, r6
 5165 034c E068     		ldr	r0, [r4, #12]
 5166 034e FFF7FEFF 		bl	_ZN7Network14GetTransactionEP6Socket
 5167 0352 2946     		mov	r1, r5
 5168 0354 0746     		mov	r7, r0
 5169 0356 FFF7FEFF 		bl	_ZN18NetworkTransaction14SetFileToWriteEP9FileStore
 5170 035a 3846     		mov	r0, r7
 5171 035c 3146     		mov	r1, r6
 5172 035e FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 5173 0362 0523     		movs	r3, #5
 5174 0364 84F87C30 		strb	r3, [r4, #124]
 5175 0368 85E6     		b	.L874
 5176              	.L921:
 5177 036a A368     		ldr	r3, [r4, #8]
 5178 036c 0121     		movs	r1, #1
 5179 036e 9869     		ldr	r0, [r3, #24]
 5180 0370 FFF7FEFF 		bl	_ZN18NetworkTransaction5DeferE12DeferralMode
 5181 0374 7FE6     		b	.L874
 5182              	.L938:
 5183 0376 3146     		mov	r1, r6
 5184              	.L884:
 5185 0378 20AB     		add	r3, sp, #128
 5186 037a 1944     		add	r1, r1, r3
 5187 037c 0023     		movs	r3, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 92


 5188 037e 01F8703C 		strb	r3, [r1, #-112]
 5189 0382 8148     		ldr	r0, .L989+12
 5190 0384 04A9     		add	r1, sp, #16
 5191 0386 FFF7FEFF 		bl	_ZNK6RepRap13CheckPasswordEPKc
 5192 038a 0346     		mov	r3, r0
 5193 038c 0028     		cmp	r0, #0
 5194 038e 3BD0     		beq	.L889
 5195 0390 0223     		movs	r3, #2
 5196 0392 84F87C30 		strb	r3, [r4, #124]
 5197 0396 2046     		mov	r0, r4
 5198 0398 E621     		movs	r1, #230
 5199 039a 7C4A     		ldr	r2, .L989+16
 5200 039c 0123     		movs	r3, #1
 5201 039e FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5202 03a2 68E6     		b	.L874
 5203              	.L975:
 5204 03a4 2046     		mov	r0, r4
 5205 03a6 40F24B11 		movw	r1, #331
 5206 03aa 794A     		ldr	r2, .L989+20
 5207 03ac 0123     		movs	r3, #1
 5208 03ae FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5209 03b2 60E6     		b	.L874
 5210              	.L977:
 5211 03b4 2046     		mov	r0, r4
 5212 03b6 D721     		movs	r1, #215
 5213 03b8 764A     		ldr	r2, .L989+24
 5214 03ba 0123     		movs	r3, #1
 5215 03bc FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5216 03c0 59E6     		b	.L874
 5217              	.L933:
 5218 03c2 2046     		mov	r0, r4
 5219 03c4 4FF4FA71 		mov	r1, #500
 5220 03c8 734A     		ldr	r2, .L989+28
 5221 03ca FDE6     		b	.L971
 5222              	.L982:
 5223 03cc 2046     		mov	r0, r4
 5224 03ce 0421     		movs	r1, #4
 5225 03d0 04F58275 		add	r5, r4, #260
 5226 03d4 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter12ReadFilenameEt
 5227 03d8 2A46     		mov	r2, r5
 5228 03da 04F5B471 		add	r1, r4, #360
 5229 03de 6068     		ldr	r0, [r4, #4]
 5230 03e0 0123     		movs	r3, #1
 5231 03e2 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 5232 03e6 2A46     		mov	r2, r5
 5233 03e8 0146     		mov	r1, r0
 5234 03ea 2046     		mov	r0, r4
 5235 03ec FFF7FEFF 		bl	_ZN19ProtocolInterpreter11StartUploadEP9FileStorePKc
 5236 03f0 0028     		cmp	r0, #0
 5237 03f2 35D0     		beq	.L929
 5238 03f4 0123     		movs	r3, #1
 5239 03f6 2046     		mov	r0, r4
 5240 03f8 9621     		movs	r1, #150
 5241 03fa 684A     		ldr	r2, .L989+32
 5242 03fc FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5243 0400 0523     		movs	r3, #5
 5244 0402 84F87C30 		strb	r3, [r4, #124]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 93


 5245 0406 36E6     		b	.L874
 5246              	.L889:
 5247 0408 2046     		mov	r0, r4
 5248 040a 40F21221 		movw	r1, #530
 5249 040e 644A     		ldr	r2, .L989+36
 5250 0410 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5251 0414 2FE6     		b	.L874
 5252              	.L979:
 5253 0416 A368     		ldr	r3, [r4, #8]
 5254 0418 6249     		ldr	r1, .L989+40
 5255 041a 9D69     		ldr	r5, [r3, #24]
 5256 041c 04F5B472 		add	r2, r4, #360
 5257 0420 2846     		mov	r0, r5
 5258 0422 FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 5259 0426 2846     		mov	r0, r5
 5260 0428 0121     		movs	r1, #1
 5261 042a FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 5262 042e 22E6     		b	.L874
 5263              	.L932:
 5264 0430 2846     		mov	r0, r5
 5265 0432 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 5266              	.L973:
 5267 0436 2046     		mov	r0, r4
 5268 0438 4FF4FA71 		mov	r1, #500
 5269 043c 5A4A     		ldr	r2, .L989+44
 5270 043e C3E6     		b	.L971
 5271              	.L978:
 5272 0440 2046     		mov	r0, r4
 5273 0442 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter12SendFeaturesEv
 5274 0446 16E6     		b	.L874
 5275              	.L934:
 5276 0448 E068     		ldr	r0, [r4, #12]
 5277 044a FFF7FEFF 		bl	_ZN7Network13CloseDataPortEv
 5278 044e 24E6     		b	.L972
 5279              	.L883:
 5280 0450 2046     		mov	r0, r4
 5281 0452 4FF4FA71 		mov	r1, #500
 5282 0456 554A     		ldr	r2, .L989+48
 5283 0458 0123     		movs	r3, #1
 5284 045a FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5285 045e 0AE6     		b	.L874
 5286              	.L929:
 5287 0460 2046     		mov	r0, r4
 5288 0462 40F22621 		movw	r1, #550
 5289 0466 524A     		ldr	r2, .L989+52
 5290 0468 AEE6     		b	.L971
 5291              	.L980:
 5292 046a 2046     		mov	r0, r4
 5293 046c 0321     		movs	r1, #3
 5294 046e FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter12ReadFilenameEt
 5295 0472 2046     		mov	r0, r4
 5296 0474 04F58271 		add	r1, r4, #260
 5297 0478 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter15ChangeDirectoryEPKc
 5298 047c FBE5     		b	.L874
 5299              	.L981:
 5300 047e 2046     		mov	r0, r4
 5301 0480 4C49     		ldr	r1, .L989+56
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 94


 5302 0482 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter15ChangeDirectoryEPKc
 5303 0486 F6E5     		b	.L874
 5304              	.L896:
 5305 0488 2846     		mov	r0, r5
 5306 048a 4B49     		ldr	r1, .L989+60
 5307 048c FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 5308 0490 20BB     		cbnz	r0, .L984
 5309 0492 2846     		mov	r0, r5
 5310 0494 4949     		ldr	r1, .L989+64
 5311 0496 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 5312 049a 0028     		cmp	r0, #0
 5313 049c 3FF4C0AD 		beq	.L985
 5314              	.L905:
 5315 04a0 2046     		mov	r0, r4
 5316 04a2 40F2A911 		movw	r1, #425
 5317 04a6 464A     		ldr	r2, .L989+68
 5318 04a8 0123     		movs	r3, #1
 5319 04aa FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5320 04ae E2E5     		b	.L874
 5321              	.L898:
 5322 04b0 2046     		mov	r0, r4
 5323 04b2 C821     		movs	r1, #200
 5324 04b4 434A     		ldr	r2, .L989+72
 5325 04b6 0123     		movs	r3, #1
 5326 04b8 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5327 04bc DBE5     		b	.L874
 5328              	.L899:
 5329 04be 2046     		mov	r0, r4
 5330 04c0 C821     		movs	r1, #200
 5331 04c2 414A     		ldr	r2, .L989+76
 5332 04c4 0123     		movs	r3, #1
 5333 04c6 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5334 04ca D4E5     		b	.L874
 5335              	.L983:
 5336 04cc 2046     		mov	r0, r4
 5337 04ce 40F22621 		movw	r1, #550
 5338 04d2 374A     		ldr	r2, .L989+52
 5339 04d4 0123     		movs	r3, #1
 5340 04d6 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5341 04da CCE5     		b	.L874
 5342              	.L984:
 5343 04dc E068     		ldr	r0, [r4, #12]
 5344 04de FFF7FEFF 		bl	_ZNK7Network12GetIPAddressEv
 5345 04e2 4FF6FF71 		movw	r1, #65535
 5346 04e6 0546     		mov	r5, r0
 5347 04e8 4FF48060 		mov	r0, #1024
 5348 04ec FFF7FEFF 		bl	_Z6randomll
 5349 04f0 87B2     		uxth	r7, r0
 5350 04f2 3946     		mov	r1, r7
 5351 04f4 0646     		mov	r6, r0
 5352 04f6 E068     		ldr	r0, [r4, #12]
 5353 04f8 FFF7FEFF 		bl	_ZN7Network12OpenDataPortEt
 5354 04fc FFF7FEFF 		bl	millis
 5355 0500 0323     		movs	r3, #3
 5356 0502 C4F8CC01 		str	r0, [r4, #460]
 5357 0506 84F87C30 		strb	r3, [r4, #124]
 5358 050a A368     		ldr	r3, [r4, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 95


 5359 050c A978     		ldrb	r1, [r5, #2]	@ zero_extendqisi2
 5360 050e 9C69     		ldr	r4, [r3, #24]
 5361 0510 2A78     		ldrb	r2, [r5]	@ zero_extendqisi2
 5362 0512 6B78     		ldrb	r3, [r5, #1]	@ zero_extendqisi2
 5363 0514 0091     		str	r1, [sp]
 5364 0516 E978     		ldrb	r1, [r5, #3]	@ zero_extendqisi2
 5365 0518 0191     		str	r1, [sp, #4]
 5366 051a 3F0A     		lsrs	r7, r7, #8
 5367 051c F6B2     		uxtb	r6, r6
 5368 051e 2046     		mov	r0, r4
 5369 0520 0297     		str	r7, [sp, #8]
 5370 0522 0396     		str	r6, [sp, #12]
 5371 0524 2949     		ldr	r1, .L989+80
 5372 0526 FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 5373 052a 2046     		mov	r0, r4
 5374 052c 0121     		movs	r1, #1
 5375 052e FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 5376 0532 A0E5     		b	.L874
 5377              	.L974:
 5378 0534 2846     		mov	r0, r5
 5379 0536 2649     		ldr	r1, .L989+84
 5380 0538 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 5381 053c 0028     		cmp	r0, #0
 5382 053e 4DD0     		beq	.L908
 5383 0540 2046     		mov	r0, r4
 5384 0542 0321     		movs	r1, #3
 5385 0544 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter12ReadFilenameEt
 5386 0548 6368     		ldr	r3, [r4, #4]
 5387 054a 04F5B471 		add	r1, r4, #360
 5388 054e D3F83C08 		ldr	r0, [r3, #2108]
 5389 0552 04F58272 		add	r2, r4, #260
 5390 0556 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_
 5391 055a 0028     		cmp	r0, #0
 5392 055c 62D0     		beq	.L909
 5393 055e 2046     		mov	r0, r4
 5394 0560 FA21     		movs	r1, #250
 5395 0562 1C4A     		ldr	r2, .L989+88
 5396 0564 0123     		movs	r3, #1
 5397 0566 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5398 056a 84E5     		b	.L874
 5399              	.L907:
 5400 056c 2046     		mov	r0, r4
 5401 056e 40F22621 		movw	r1, #550
 5402 0572 194A     		ldr	r2, .L989+92
 5403 0574 0123     		movs	r3, #1
 5404 0576 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5405 057a 7CE5     		b	.L874
 5406              	.L990:
 5407              		.align	2
 5408              	.L989:
 5409 057c A00C0000 		.word	.LC160
 5410 0580 980C0000 		.word	.LC159
 5411 0584 BC0E0000 		.word	.LC185
 5412 0588 00000000 		.word	reprap
 5413 058c 880B0000 		.word	.LC142
 5414 0590 600B0000 		.word	.LC140
 5415 0594 D00B0000 		.word	.LC146
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 96


 5416 0598 440C0000 		.word	.LC155
 5417 059c 900E0000 		.word	.LC183
 5418 05a0 9C0B0000 		.word	.LC143
 5419 05a4 EC0B0000 		.word	.LC149
 5420 05a8 800E0000 		.word	.LC182
 5421 05ac B00B0000 		.word	.LC144
 5422 05b0 A40E0000 		.word	.LC184
 5423 05b4 180B0000 		.word	.LC136
 5424 05b8 580C0000 		.word	.LC156
 5425 05bc 900C0000 		.word	.LC158
 5426 05c0 0C0F0000 		.word	.LC188
 5427 05c4 0C0C0000 		.word	.LC153
 5428 05c8 280C0000 		.word	.LC154
 5429 05cc 600C0000 		.word	.LC157
 5430 05d0 E40C0000 		.word	.LC163
 5431 05d4 E80C0000 		.word	.LC164
 5432 05d8 C80C0000 		.word	.LC162
 5433              	.L908:
 5434 05dc 2846     		mov	r0, r5
 5435 05de 6449     		ldr	r1, .L991
 5436 05e0 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 5437 05e4 0746     		mov	r7, r0
 5438 05e6 28B3     		cbz	r0, .L910
 5439 05e8 2046     		mov	r0, r4
 5440 05ea 0321     		movs	r1, #3
 5441 05ec FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter12ReadFilenameEt
 5442 05f0 94F80431 		ldrb	r3, [r4, #260]	@ zero_extendqisi2
 5443 05f4 2F2B     		cmp	r3, #47
 5444 05f6 45D1     		bne	.L911
 5445 05f8 04F58275 		add	r5, r4, #260
 5446              	.L912:
 5447 05fc 6368     		ldr	r3, [r4, #4]
 5448 05fe 2946     		mov	r1, r5
 5449 0600 D3F83C08 		ldr	r0, [r3, #2108]
 5450 0604 FFF7FEFF 		bl	_ZN11MassStorage13MakeDirectoryEPKc
 5451 0608 0028     		cmp	r0, #0
 5452 060a 33D0     		beq	.L913
 5453 060c A368     		ldr	r3, [r4, #8]
 5454 060e 5949     		ldr	r1, .L991+4
 5455 0610 9C69     		ldr	r4, [r3, #24]
 5456 0612 2A46     		mov	r2, r5
 5457 0614 2046     		mov	r0, r4
 5458 0616 FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 5459 061a 2046     		mov	r0, r4
 5460 061c 0121     		movs	r1, #1
 5461 061e FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 5462 0622 28E5     		b	.L874
 5463              	.L909:
 5464 0624 2046     		mov	r0, r4
 5465 0626 40F22621 		movw	r1, #550
 5466 062a 534A     		ldr	r2, .L991+8
 5467 062c 0123     		movs	r3, #1
 5468 062e FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5469 0632 20E5     		b	.L874
 5470              	.L910:
 5471 0634 2846     		mov	r0, r5
 5472 0636 5149     		ldr	r1, .L991+12
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 97


 5473 0638 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 5474 063c 0646     		mov	r6, r0
 5475 063e 60B3     		cbz	r0, .L914
 5476 0640 2046     		mov	r0, r4
 5477 0642 0421     		movs	r1, #4
 5478 0644 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter12ReadFilenameEt
 5479 0648 94F80431 		ldrb	r3, [r4, #260]	@ zero_extendqisi2
 5480 064c 2F2B     		cmp	r3, #47
 5481 064e 56D1     		bne	.L969
 5482 0650 04F58275 		add	r5, r4, #260
 5483              	.L915:
 5484 0654 6368     		ldr	r3, [r4, #4]
 5485 0656 2946     		mov	r1, r5
 5486 0658 D3F83C08 		ldr	r0, [r3, #2108]
 5487 065c FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKc
 5488 0660 0028     		cmp	r0, #0
 5489 0662 44D0     		beq	.L916
 5490 0664 2046     		mov	r0, r4
 5491 0666 4FF4AF71 		mov	r1, #350
 5492 066a 454A     		ldr	r2, .L991+16
 5493 066c 0123     		movs	r3, #1
 5494 066e FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5495 0672 00E5     		b	.L874
 5496              	.L913:
 5497 0674 2046     		mov	r0, r4
 5498 0676 40F22621 		movw	r1, #550
 5499 067a 424A     		ldr	r2, .L991+20
 5500 067c 0123     		movs	r3, #1
 5501 067e FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5502 0682 F8E4     		b	.L874
 5503              	.L911:
 5504 0684 6368     		ldr	r3, [r4, #4]
 5505 0686 04F5B471 		add	r1, r4, #360
 5506 068a D3F83C08 		ldr	r0, [r3, #2108]
 5507 068e 04F58272 		add	r2, r4, #260
 5508 0692 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameEPKcS1_
 5509 0696 0546     		mov	r5, r0
 5510 0698 B0E7     		b	.L912
 5511              	.L914:
 5512 069a 2846     		mov	r0, r5
 5513 069c 3A49     		ldr	r1, .L991+24
 5514 069e FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 5515 06a2 0028     		cmp	r0, #0
 5516 06a4 45D0     		beq	.L917
 5517 06a6 04F58275 		add	r5, r4, #260
 5518 06aa 6422     		movs	r2, #100
 5519 06ac 2946     		mov	r1, r5
 5520 06ae 04A8     		add	r0, sp, #16
 5521 06b0 FFF7FEFF 		bl	strncpy
 5522 06b4 2046     		mov	r0, r4
 5523 06b6 0421     		movs	r1, #4
 5524 06b8 8DF87360 		strb	r6, [sp, #115]
 5525 06bc FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter12ReadFilenameEt
 5526 06c0 6368     		ldr	r3, [r4, #4]
 5527 06c2 2A46     		mov	r2, r5
 5528 06c4 D3F83C08 		ldr	r0, [r3, #2108]
 5529 06c8 04F5B471 		add	r1, r4, #360
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 98


 5530 06cc FFF7FEFF 		bl	_ZN11MassStorage11CombineNameEPKcS1_
 5531 06d0 6368     		ldr	r3, [r4, #4]
 5532 06d2 0246     		mov	r2, r0
 5533 06d4 04A9     		add	r1, sp, #16
 5534 06d6 D3F83C08 		ldr	r0, [r3, #2108]
 5535 06da FFF7FEFF 		bl	_ZN11MassStorage6RenameEPKcS1_
 5536 06de 00B3     		cbz	r0, .L918
 5537 06e0 2046     		mov	r0, r4
 5538 06e2 FA21     		movs	r1, #250
 5539 06e4 294A     		ldr	r2, .L991+28
 5540 06e6 0123     		movs	r3, #1
 5541 06e8 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5542 06ec C3E4     		b	.L874
 5543              	.L916:
 5544 06ee 2046     		mov	r0, r4
 5545 06f0 40F22621 		movw	r1, #550
 5546 06f4 264A     		ldr	r2, .L991+32
 5547 06f6 0123     		movs	r3, #1
 5548 06f8 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5549 06fc BBE4     		b	.L874
 5550              	.L969:
 5551 06fe 6368     		ldr	r3, [r4, #4]
 5552 0700 04F58275 		add	r5, r4, #260
 5553 0704 D3F83C08 		ldr	r0, [r3, #2108]
 5554 0708 2A46     		mov	r2, r5
 5555 070a 04F5B471 		add	r1, r4, #360
 5556 070e FFF7FEFF 		bl	_ZN11MassStorage11CombineNameEPKcS1_
 5557 0712 6422     		movs	r2, #100
 5558 0714 0146     		mov	r1, r0
 5559 0716 2846     		mov	r0, r5
 5560 0718 FFF7FEFF 		bl	strncpy
 5561 071c 84F86771 		strb	r7, [r4, #359]
 5562 0720 98E7     		b	.L915
 5563              	.L918:
 5564 0722 2046     		mov	r0, r4
 5565 0724 4FF4FA71 		mov	r1, #500
 5566 0728 1A4A     		ldr	r2, .L991+36
 5567 072a 0123     		movs	r3, #1
 5568 072c FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5569 0730 A1E4     		b	.L874
 5570              	.L917:
 5571 0732 2846     		mov	r0, r5
 5572 0734 1849     		ldr	r1, .L991+40
 5573 0736 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 5574 073a 0646     		mov	r6, r0
 5575 073c 80B9     		cbnz	r0, .L986
 5576 073e 2846     		mov	r0, r5
 5577 0740 1649     		ldr	r1, .L991+44
 5578 0742 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 5579 0746 0028     		cmp	r0, #0
 5580 0748 3FF428AD 		beq	.L897
 5581 074c 2046     		mov	r0, r4
 5582 074e 3346     		mov	r3, r6
 5583 0750 DD21     		movs	r1, #221
 5584 0752 134A     		ldr	r2, .L991+48
 5585 0754 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5586 0758 2046     		mov	r0, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 99


 5587 075a FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter10ResetStateEv
 5588 075e 8AE4     		b	.L874
 5589              	.L986:
 5590 0760 2046     		mov	r0, r4
 5591 0762 C821     		movs	r1, #200
 5592 0764 0F4A     		ldr	r2, .L991+52
 5593 0766 0123     		movs	r3, #1
 5594 0768 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5595 076c 83E4     		b	.L874
 5596              	.L992:
 5597 076e 00BF     		.align	2
 5598              	.L991:
 5599 0770 340D0000 		.word	.LC166
 5600 0774 380D0000 		.word	.LC167
 5601 0778 100D0000 		.word	.LC165
 5602 077c 700D0000 		.word	.LC169
 5603 0780 780D0000 		.word	.LC170
 5604 0784 4C0D0000 		.word	.LC168
 5605 0788 A40D0000 		.word	.LC172
 5606 078c AC0D0000 		.word	.LC173
 5607 0790 880D0000 		.word	.LC171
 5608 0794 C00D0000 		.word	.LC174
 5609 0798 E40D0000 		.word	.LC175
 5610 079c F80D0000 		.word	.LC177
 5611 07a0 000E0000 		.word	.LC178
 5612 07a4 EC0D0000 		.word	.LC176
 5613              		.size	_ZN9Webserver14FtpInterpreter11ProcessLineEv, .-_ZN9Webserver14FtpInterpreter11ProcessLineEv
 5614              		.section	.text._ZN9Webserver14FtpInterpreter14CharFromClientEc,"ax",%progbits
 5615              		.align	2
 5616              		.global	_ZN9Webserver14FtpInterpreter14CharFromClientEc
 5617              		.thumb
 5618              		.thumb_func
 5619              		.type	_ZN9Webserver14FtpInterpreter14CharFromClientEc, %function
 5620              	_ZN9Webserver14FtpInterpreter14CharFromClientEc:
 5621              		@ args = 0, pretend = 0, frame = 0
 5622              		@ frame_needed = 0, uses_anonymous_args = 0
 5623 0000 30B5     		push	{r4, r5, lr}
 5624 0002 D0F80031 		ldr	r3, [r0, #256]
 5625 0006 7F2B     		cmp	r3, #127
 5626 0008 83B0     		sub	sp, sp, #12
 5627 000a 0446     		mov	r4, r0
 5628 000c 35D0     		beq	.L1015
 5629 000e 0A29     		cmp	r1, #10
 5630 0010 0ED0     		beq	.L997
 5631 0012 0D29     		cmp	r1, #13
 5632 0014 0CD0     		beq	.L997
 5633 0016 41B1     		cbz	r1, .L1016
 5634 0018 C218     		adds	r2, r0, r3
 5635 001a 0133     		adds	r3, r3, #1
 5636 001c C0F80031 		str	r3, [r0, #256]
 5637 0020 0020     		movs	r0, #0
 5638 0022 82F87E10 		strb	r1, [r2, #126]
 5639              	.L995:
 5640 0026 03B0     		add	sp, sp, #12
 5641              		@ sp needed
 5642 0028 30BD     		pop	{r4, r5, pc}
 5643              	.L1016:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 100


 5644 002a 0846     		mov	r0, r1
 5645 002c 03B0     		add	sp, sp, #12
 5646              		@ sp needed
 5647 002e 30BD     		pop	{r4, r5, pc}
 5648              	.L997:
 5649 0030 1D4D     		ldr	r5, .L1019
 5650 0032 B5F84020 		ldrh	r2, [r5, #64]
 5651 0036 E118     		adds	r1, r4, r3
 5652 0038 0020     		movs	r0, #0
 5653 003a 0133     		adds	r3, r3, #1
 5654 003c 5207     		lsls	r2, r2, #29
 5655 003e C4F80031 		str	r3, [r4, #256]
 5656 0042 81F87E00 		strb	r0, [r1, #126]
 5657 0046 22D4     		bmi	.L1017
 5658              	.L998:
 5659 0048 012B     		cmp	r3, #1
 5660 004a 0DD8     		bhi	.L1018
 5661 004c B5F84030 		ldrh	r3, [r5, #64]
 5662 0050 5B07     		lsls	r3, r3, #29
 5663 0052 04D5     		bpl	.L1000
 5664 0054 6068     		ldr	r0, [r4, #4]
 5665 0056 154A     		ldr	r2, .L1019+4
 5666 0058 0221     		movs	r1, #2
 5667 005a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5668              	.L1000:
 5669 005e 0020     		movs	r0, #0
 5670 0060 C4F80001 		str	r0, [r4, #256]
 5671 0064 03B0     		add	sp, sp, #12
 5672              		@ sp needed
 5673 0066 30BD     		pop	{r4, r5, pc}
 5674              	.L1018:
 5675 0068 2046     		mov	r0, r4
 5676 006a FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter11ProcessLineEv
 5677 006e 0023     		movs	r3, #0
 5678 0070 0120     		movs	r0, #1
 5679 0072 C4F80031 		str	r3, [r4, #256]
 5680 0076 03B0     		add	sp, sp, #12
 5681              		@ sp needed
 5682 0078 30BD     		pop	{r4, r5, pc}
 5683              	.L1015:
 5684 007a 0023     		movs	r3, #0
 5685 007c C0F80031 		str	r3, [r0, #256]
 5686 0080 0B4A     		ldr	r2, .L1019+8
 5687 0082 4068     		ldr	r0, [r0, #4]
 5688 0084 0221     		movs	r1, #2
 5689 0086 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5690 008a 0120     		movs	r0, #1
 5691 008c CBE7     		b	.L995
 5692              	.L1017:
 5693 008e 04F17E01 		add	r1, r4, #126
 5694 0092 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 5695 0096 6068     		ldr	r0, [r4, #4]
 5696 0098 064A     		ldr	r2, .L1019+12
 5697 009a 0091     		str	r1, [sp]
 5698 009c 0221     		movs	r1, #2
 5699 009e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 5700 00a2 D4F80031 		ldr	r3, [r4, #256]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 101


 5701 00a6 CFE7     		b	.L998
 5702              	.L1020:
 5703              		.align	2
 5704              	.L1019:
 5705 00a8 00000000 		.word	reprap
 5706 00ac 880F0000 		.word	.LC192
 5707 00b0 240F0000 		.word	.LC190
 5708 00b4 500F0000 		.word	.LC191
 5709              		.size	_ZN9Webserver14FtpInterpreter14CharFromClientEc, .-_ZN9Webserver14FtpInterpreter14CharFromCl
 5710              		.section	.text._ZN9Webserver17TelnetInterpreterC2EP8PlatformPS_P7Network,"ax",%progbits
 5711              		.align	2
 5712              		.global	_ZN9Webserver17TelnetInterpreterC2EP8PlatformPS_P7Network
 5713              		.thumb
 5714              		.thumb_func
 5715              		.type	_ZN9Webserver17TelnetInterpreterC2EP8PlatformPS_P7Network, %function
 5716              	_ZN9Webserver17TelnetInterpreterC2EP8PlatformPS_P7Network:
 5717              		@ args = 0, pretend = 0, frame = 0
 5718              		@ frame_needed = 0, uses_anonymous_args = 0
 5719              		@ link register save eliminated.
 5720 0000 30B4     		push	{r4, r5}
 5721 0002 0B4D     		ldr	r5, .L1022
 5722 0004 4160     		str	r1, [r0, #4]
 5723 0006 0021     		movs	r1, #0
 5724 0008 0560     		str	r5, [r0]
 5725 000a 8260     		str	r2, [r0, #8]
 5726 000c C360     		str	r3, [r0, #12]
 5727 000e 4161     		str	r1, [r0, #20]
 5728 0010 0174     		strb	r1, [r0, #16]
 5729 0012 0176     		strb	r1, [r0, #24]
 5730 0014 80F87D10 		strb	r1, [r0, #125]
 5731 0018 80F88410 		strb	r1, [r0, #132]
 5732 001c C0F8F010 		str	r1, [r0, #240]
 5733 0020 80F87C10 		strb	r1, [r0, #124]
 5734 0024 C0F88010 		str	r1, [r0, #128]
 5735 0028 C0F8EC10 		str	r1, [r0, #236]
 5736 002c 30BC     		pop	{r4, r5}
 5737 002e 7047     		bx	lr
 5738              	.L1023:
 5739              		.align	2
 5740              	.L1022:
 5741 0030 08000000 		.word	.LANCHOR1+8
 5742              		.size	_ZN9Webserver17TelnetInterpreterC2EP8PlatformPS_P7Network, .-_ZN9Webserver17TelnetInterprete
 5743              		.global	_ZN9Webserver17TelnetInterpreterC1EP8PlatformPS_P7Network
 5744              		.thumb_set _ZN9Webserver17TelnetInterpreterC1EP8PlatformPS_P7Network,_ZN9Webserver17TelnetInterpre
 5745              		.section	.text._ZN9Webserver17TelnetInterpreter10ResetStateEv,"ax",%progbits
 5746              		.align	2
 5747              		.global	_ZN9Webserver17TelnetInterpreter10ResetStateEv
 5748              		.thumb
 5749              		.thumb_func
 5750              		.type	_ZN9Webserver17TelnetInterpreter10ResetStateEv, %function
 5751              	_ZN9Webserver17TelnetInterpreter10ResetStateEv:
 5752              		@ args = 0, pretend = 0, frame = 0
 5753              		@ frame_needed = 0, uses_anonymous_args = 0
 5754              		@ link register save eliminated.
 5755 0000 0023     		movs	r3, #0
 5756 0002 80F87C30 		strb	r3, [r0, #124]
 5757 0006 C0F88030 		str	r3, [r0, #128]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 102


 5758 000a C0F8EC30 		str	r3, [r0, #236]
 5759 000e 7047     		bx	lr
 5760              		.size	_ZN9Webserver17TelnetInterpreter10ResetStateEv, .-_ZN9Webserver17TelnetInterpreter10ResetSta
 5761              		.section	.text._ZN9Webserver17TelnetInterpreter11ProcessLineEv,"ax",%progbits
 5762              		.align	2
 5763              		.global	_ZN9Webserver17TelnetInterpreter11ProcessLineEv
 5764              		.thumb
 5765              		.thumb_func
 5766              		.type	_ZN9Webserver17TelnetInterpreter11ProcessLineEv, %function
 5767              	_ZN9Webserver17TelnetInterpreter11ProcessLineEv:
 5768              		@ args = 0, pretend = 0, frame = 0
 5769              		@ frame_needed = 0, uses_anonymous_args = 0
 5770 0000 70B5     		push	{r4, r5, r6, lr}
 5771 0002 0025     		movs	r5, #0
 5772 0004 0446     		mov	r4, r0
 5773 0006 80F88450 		strb	r5, [r0, #132]
 5774 000a C0F8EC50 		str	r5, [r0, #236]
 5775 000e 2946     		mov	r1, r5
 5776 0010 C068     		ldr	r0, [r0, #12]
 5777 0012 FFF7FEFF 		bl	_ZN7Network14GetTransactionEP6Socket
 5778 0016 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 5779 001a 022B     		cmp	r3, #2
 5780 001c 0646     		mov	r6, r0
 5781 001e 12D9     		bls	.L1027
 5782 0020 032B     		cmp	r3, #3
 5783 0022 0ED1     		bne	.L1034
 5784 0024 8534     		adds	r4, r4, #133
 5785 0026 2046     		mov	r0, r4
 5786 0028 1A49     		ldr	r1, .L1039
 5787 002a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 5788 002e 08B3     		cbz	r0, .L1037
 5789              	.L1030:
 5790 0030 3046     		mov	r0, r6
 5791 0032 1949     		ldr	r1, .L1039+4
 5792 0034 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 5793 0038 3046     		mov	r0, r6
 5794 003a 0021     		movs	r1, #0
 5795 003c FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 5796 0040 0125     		movs	r5, #1
 5797              	.L1034:
 5798 0042 2846     		mov	r0, r5
 5799 0044 70BD     		pop	{r4, r5, r6, pc}
 5800              	.L1027:
 5801 0046 1548     		ldr	r0, .L1039+8
 5802 0048 04F18501 		add	r1, r4, #133
 5803 004c FFF7FEFF 		bl	_ZNK6RepRap13CheckPasswordEPKc
 5804 0050 50B9     		cbnz	r0, .L1038
 5805 0052 1349     		ldr	r1, .L1039+12
 5806 0054 3046     		mov	r0, r6
 5807              	.L1036:
 5808 0056 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 5809 005a 0125     		movs	r5, #1
 5810 005c 3046     		mov	r0, r6
 5811 005e 0121     		movs	r1, #1
 5812 0060 FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 5813 0064 2846     		mov	r0, r5
 5814 0066 70BD     		pop	{r4, r5, r6, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 103


 5815              	.L1038:
 5816 0068 0323     		movs	r3, #3
 5817 006a 84F87C30 		strb	r3, [r4, #124]
 5818 006e 3046     		mov	r0, r6
 5819 0070 0C49     		ldr	r1, .L1039+16
 5820 0072 F0E7     		b	.L1036
 5821              	.L1037:
 5822 0074 2046     		mov	r0, r4
 5823 0076 0C49     		ldr	r1, .L1039+20
 5824 0078 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 5825 007c 0546     		mov	r5, r0
 5826 007e 0028     		cmp	r0, #0
 5827 0080 D6D1     		bne	.L1030
 5828 0082 064B     		ldr	r3, .L1039+8
 5829 0084 1B69     		ldr	r3, [r3, #16]
 5830 0086 2246     		mov	r2, r4
 5831 0088 D868     		ldr	r0, [r3, #12]
 5832 008a 0521     		movs	r1, #5
 5833 008c FFF7FEFF 		bl	_ZN17RegularGCodeInput3PutE11MessageTypePKc
 5834 0090 D7E7     		b	.L1034
 5835              	.L1040:
 5836 0092 00BF     		.align	2
 5837              	.L1039:
 5838 0094 E40F0000 		.word	.LC195
 5839 0098 F40F0000 		.word	.LC197
 5840 009c 00000000 		.word	reprap
 5841 00a0 CC0F0000 		.word	.LC194
 5842 00a4 B40F0000 		.word	.LC193
 5843 00a8 EC0F0000 		.word	.LC196
 5844              		.size	_ZN9Webserver17TelnetInterpreter11ProcessLineEv, .-_ZN9Webserver17TelnetInterpreter11Process
 5845              		.section	.text._ZN9Webserver17TelnetInterpreter14CharFromClientEc,"ax",%progbits
 5846              		.align	2
 5847              		.global	_ZN9Webserver17TelnetInterpreter14CharFromClientEc
 5848              		.thumb
 5849              		.thumb_func
 5850              		.type	_ZN9Webserver17TelnetInterpreter14CharFromClientEc, %function
 5851              	_ZN9Webserver17TelnetInterpreter14CharFromClientEc:
 5852              		@ args = 0, pretend = 0, frame = 0
 5853              		@ frame_needed = 0, uses_anonymous_args = 0
 5854 0000 38B5     		push	{r3, r4, r5, lr}
 5855 0002 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 5856 0006 012B     		cmp	r3, #1
 5857 0008 0446     		mov	r4, r0
 5858 000a 0D46     		mov	r5, r1
 5859 000c 3AD0     		beq	.L1057
 5860              	.L1042:
 5861 000e 0D2D     		cmp	r5, #13
 5862 0010 08D8     		bhi	.L1046
 5863 0012 DFE805F0 		tbb	[pc, r5]
 5864              	.L1047:
 5865 0016 11       		.byte	(.L1053-.L1047)/2
 5866 0017 07       		.byte	(.L1046-.L1047)/2
 5867 0018 07       		.byte	(.L1046-.L1047)/2
 5868 0019 07       		.byte	(.L1046-.L1047)/2
 5869 001a 07       		.byte	(.L1046-.L1047)/2
 5870 001b 07       		.byte	(.L1046-.L1047)/2
 5871 001c 07       		.byte	(.L1046-.L1047)/2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 104


 5872 001d 07       		.byte	(.L1046-.L1047)/2
 5873 001e 2E       		.byte	(.L1048-.L1047)/2
 5874 001f 07       		.byte	(.L1046-.L1047)/2
 5875 0020 13       		.byte	(.L1049-.L1047)/2
 5876 0021 07       		.byte	(.L1046-.L1047)/2
 5877 0022 07       		.byte	(.L1046-.L1047)/2
 5878 0023 13       		.byte	(.L1049-.L1047)/2
 5879              		.align	1
 5880              	.L1046:
 5881 0024 D4F8EC30 		ldr	r3, [r4, #236]
 5882 0028 E218     		adds	r2, r4, r3
 5883 002a 0133     		adds	r3, r3, #1
 5884 002c 632B     		cmp	r3, #99
 5885 002e C4F8EC30 		str	r3, [r4, #236]
 5886 0032 82F88550 		strb	r5, [r2, #133]
 5887 0036 40D0     		beq	.L1058
 5888              	.L1053:
 5889 0038 0020     		movs	r0, #0
 5890 003a 38BD     		pop	{r3, r4, r5, pc}
 5891              	.L1049:
 5892 003c D4F8EC30 		ldr	r3, [r4, #236]
 5893 0040 002B     		cmp	r3, #0
 5894 0042 F9D0     		beq	.L1053
 5895 0044 244A     		ldr	r2, .L1059
 5896 0046 2344     		add	r3, r3, r4
 5897 0048 1269     		ldr	r2, [r2, #16]
 5898 004a 0025     		movs	r5, #0
 5899 004c 83F88550 		strb	r5, [r3, #133]
 5900 0050 D068     		ldr	r0, [r2, #12]
 5901 0052 FFF7FEFF 		bl	_ZNK17RegularGCodeInput15BufferSpaceLeftEv
 5902 0056 D4F8EC30 		ldr	r3, [r4, #236]
 5903 005a 0133     		adds	r3, r3, #1
 5904 005c 9842     		cmp	r0, r3
 5905 005e 36D2     		bcs	.L1052
 5906 0060 A368     		ldr	r3, [r4, #8]
 5907 0062 2946     		mov	r1, r5
 5908 0064 9869     		ldr	r0, [r3, #24]
 5909 0066 FFF7FEFF 		bl	_ZN18NetworkTransaction5DeferE12DeferralMode
 5910 006a 0120     		movs	r0, #1
 5911 006c 84F88400 		strb	r0, [r4, #132]
 5912 0070 38BD     		pop	{r3, r4, r5, pc}
 5913              	.L1048:
 5914 0072 D4F8EC30 		ldr	r3, [r4, #236]
 5915 0076 002B     		cmp	r3, #0
 5916 0078 DED0     		beq	.L1053
 5917 007a 013B     		subs	r3, r3, #1
 5918 007c C4F8EC30 		str	r3, [r4, #236]
 5919 0080 0020     		movs	r0, #0
 5920 0082 38BD     		pop	{r3, r4, r5, pc}
 5921              	.L1057:
 5922 0084 1448     		ldr	r0, .L1059
 5923 0086 FFF7FEFF 		bl	_ZNK6RepRap13NoPasswordSetEv
 5924 008a 90B1     		cbz	r0, .L1043
 5925 008c 0323     		movs	r3, #3
 5926 008e 84F87C30 		strb	r3, [r4, #124]
 5927              	.L1044:
 5928 0092 FFF7FEFF 		bl	millis
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 105


 5929 0096 D4F88030 		ldr	r3, [r4, #128]
 5930 009a C01A     		subs	r0, r0, r3
 5931 009c B0F57A6F 		cmp	r0, #4000
 5932 00a0 B5D2     		bcs	.L1042
 5933 00a2 0021     		movs	r1, #0
 5934 00a4 E068     		ldr	r0, [r4, #12]
 5935 00a6 FFF7FEFF 		bl	_ZN7Network14GetTransactionEP6Socket
 5936 00aa FFF7FEFF 		bl	_ZN18NetworkTransaction7DiscardEv
 5937 00ae 0120     		movs	r0, #1
 5938 00b0 38BD     		pop	{r3, r4, r5, pc}
 5939              	.L1043:
 5940 00b2 0223     		movs	r3, #2
 5941 00b4 84F87C30 		strb	r3, [r4, #124]
 5942 00b8 EBE7     		b	.L1044
 5943              	.L1058:
 5944 00ba 0023     		movs	r3, #0
 5945 00bc 6068     		ldr	r0, [r4, #4]
 5946 00be C4F8EC30 		str	r3, [r4, #236]
 5947 00c2 064A     		ldr	r2, .L1059+4
 5948 00c4 0221     		movs	r1, #2
 5949 00c6 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5950 00ca 0120     		movs	r0, #1
 5951 00cc 38BD     		pop	{r3, r4, r5, pc}
 5952              	.L1052:
 5953 00ce 2046     		mov	r0, r4
 5954 00d0 BDE83840 		pop	{r3, r4, r5, lr}
 5955 00d4 FFF7FEBF 		b	_ZN9Webserver17TelnetInterpreter11ProcessLineEv
 5956              	.L1060:
 5957              		.align	2
 5958              	.L1059:
 5959 00d8 00000000 		.word	reprap
 5960 00dc 00100000 		.word	.LC198
 5961              		.size	_ZN9Webserver17TelnetInterpreter14CharFromClientEc, .-_ZN9Webserver17TelnetInterpreter14Char
 5962              		.section	.text._ZN9Webserver17TelnetInterpreter16HandleGCodeReplyEP12OutputBuffer,"ax",%progbits
 5963              		.align	2
 5964              		.global	_ZN9Webserver17TelnetInterpreter16HandleGCodeReplyEP12OutputBuffer
 5965              		.thumb
 5966              		.thumb_func
 5967              		.type	_ZN9Webserver17TelnetInterpreter16HandleGCodeReplyEP12OutputBuffer, %function
 5968              	_ZN9Webserver17TelnetInterpreter16HandleGCodeReplyEP12OutputBuffer:
 5969              		@ args = 0, pretend = 0, frame = 8
 5970              		@ frame_needed = 0, uses_anonymous_args = 0
 5971 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 5972 0002 0D46     		mov	r5, r1
 5973 0004 83B0     		sub	sp, sp, #12
 5974 0006 0646     		mov	r6, r0
 5975 0008 19B1     		cbz	r1, .L1062
 5976 000a 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 5977 000e 022B     		cmp	r3, #2
 5978 0010 04D8     		bhi	.L1078
 5979              	.L1062:
 5980 0012 2846     		mov	r0, r5
 5981 0014 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllEPS_
 5982              	.L1061:
 5983 0018 03B0     		add	sp, sp, #12
 5984              		@ sp needed
 5985 001a F0BD     		pop	{r4, r5, r6, r7, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 106


 5986              	.L1078:
 5987 001c C068     		ldr	r0, [r0, #12]
 5988 001e 0621     		movs	r1, #6
 5989 0020 FFF7FEFF 		bl	_ZN7Network18AcquireTransactionEj
 5990 0024 0028     		cmp	r0, #0
 5991 0026 F7D0     		beq	.L1061
 5992 0028 D6F8F030 		ldr	r3, [r6, #240]
 5993 002c 0BB3     		cbz	r3, .L1079
 5994              	.L1073:
 5995 002e D5F80C31 		ldr	r3, [r5, #268]
 5996 0032 05F10C07 		add	r7, r5, #12
 5997 0036 0024     		movs	r4, #0
 5998 0038 4BB9     		cbnz	r3, .L1072
 5999 003a 12E0     		b	.L1071
 6000              	.L1070:
 6001 003c D6F8F000 		ldr	r0, [r6, #240]
 6002 0040 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 6003 0044 D5F80C31 		ldr	r3, [r5, #268]
 6004 0048 0134     		adds	r4, r4, #1
 6005 004a A342     		cmp	r3, r4
 6006 004c 09D9     		bls	.L1071
 6007              	.L1072:
 6008 004e 395D     		ldrb	r1, [r7, r4]	@ zero_extendqisi2
 6009 0050 0A29     		cmp	r1, #10
 6010 0052 F3D1     		bne	.L1070
 6011 0054 0D21     		movs	r1, #13
 6012 0056 D6F8F000 		ldr	r0, [r6, #240]
 6013 005a FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 6014 005e 395D     		ldrb	r1, [r7, r4]	@ zero_extendqisi2
 6015 0060 ECE7     		b	.L1070
 6016              	.L1071:
 6017 0062 2846     		mov	r0, r5
 6018 0064 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 6019 0068 0546     		mov	r5, r0
 6020 006a 0028     		cmp	r0, #0
 6021 006c DFD1     		bne	.L1073
 6022 006e 03B0     		add	sp, sp, #12
 6023              		@ sp needed
 6024 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
 6025              	.L1079:
 6026 0072 01A8     		add	r0, sp, #4
 6027 0074 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 6028 0078 18B1     		cbz	r0, .L1080
 6029              	.L1066:
 6030 007a 019B     		ldr	r3, [sp, #4]
 6031 007c C6F8F030 		str	r3, [r6, #240]
 6032 0080 D5E7     		b	.L1073
 6033              	.L1080:
 6034 0082 2846     		mov	r0, r5
 6035 0084 4FF48071 		mov	r1, #256
 6036 0088 FFF7FEFF 		bl	_ZN12OutputBuffer8TruncateEPS_j
 6037 008c 01A8     		add	r0, sp, #4
 6038 008e FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 6039 0092 0028     		cmp	r0, #0
 6040 0094 F1D1     		bne	.L1066
 6041 0096 BCE7     		b	.L1062
 6042              		.size	_ZN9Webserver17TelnetInterpreter16HandleGCodeReplyEP12OutputBuffer, .-_ZN9Webserver17TelnetI
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 107


 6043              		.section	.text._ZN9Webserver16HandleGCodeReplyE9WebSourceP12OutputBuffer,"ax",%progbits
 6044              		.align	2
 6045              		.global	_ZN9Webserver16HandleGCodeReplyE9WebSourceP12OutputBuffer
 6046              		.thumb
 6047              		.thumb_func
 6048              		.type	_ZN9Webserver16HandleGCodeReplyE9WebSourceP12OutputBuffer, %function
 6049              	_ZN9Webserver16HandleGCodeReplyE9WebSourceP12OutputBuffer:
 6050              		@ args = 0, pretend = 0, frame = 0
 6051              		@ frame_needed = 0, uses_anonymous_args = 0
 6052              		@ link register save eliminated.
 6053 0000 31B1     		cbz	r1, .L1083
 6054 0002 0129     		cmp	r1, #1
 6055 0004 03D1     		bne	.L1086
 6056 0006 8068     		ldr	r0, [r0, #8]
 6057 0008 1146     		mov	r1, r2
 6058 000a FFF7FEBF 		b	_ZN9Webserver17TelnetInterpreter16HandleGCodeReplyEP12OutputBuffer
 6059              	.L1086:
 6060 000e 7047     		bx	lr
 6061              	.L1083:
 6062 0010 0068     		ldr	r0, [r0]
 6063 0012 1146     		mov	r1, r2
 6064 0014 FFF7FEBF 		b	_ZN9Webserver15HttpInterpreter16HandleGCodeReplyEP12OutputBuffer
 6065              		.size	_ZN9Webserver16HandleGCodeReplyE9WebSourceP12OutputBuffer, .-_ZN9Webserver16HandleGCodeReply
 6066              		.section	.text._ZN9Webserver17TelnetInterpreter16HandleGCodeReplyEPKc,"ax",%progbits
 6067              		.align	2
 6068              		.global	_ZN9Webserver17TelnetInterpreter16HandleGCodeReplyEPKc
 6069              		.thumb
 6070              		.thumb_func
 6071              		.type	_ZN9Webserver17TelnetInterpreter16HandleGCodeReplyEPKc, %function
 6072              	_ZN9Webserver17TelnetInterpreter16HandleGCodeReplyEPKc:
 6073              		@ args = 0, pretend = 0, frame = 8
 6074              		@ frame_needed = 0, uses_anonymous_args = 0
 6075 0000 30B5     		push	{r4, r5, lr}
 6076 0002 0C46     		mov	r4, r1
 6077 0004 83B0     		sub	sp, sp, #12
 6078 0006 0546     		mov	r5, r0
 6079 0008 19B1     		cbz	r1, .L1087
 6080 000a 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 6081 000e 022B     		cmp	r3, #2
 6082 0010 01D8     		bhi	.L1113
 6083              	.L1087:
 6084 0012 03B0     		add	sp, sp, #12
 6085              		@ sp needed
 6086 0014 30BD     		pop	{r4, r5, pc}
 6087              	.L1113:
 6088 0016 C068     		ldr	r0, [r0, #12]
 6089 0018 0621     		movs	r1, #6
 6090 001a FFF7FEFF 		bl	_ZN7Network18AcquireTransactionEj
 6091 001e 0028     		cmp	r0, #0
 6092 0020 F7D0     		beq	.L1087
 6093 0022 D5F8F030 		ldr	r3, [r5, #240]
 6094 0026 D3B1     		cbz	r3, .L1114
 6095              	.L1091:
 6096 0028 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 6097 002a 002B     		cmp	r3, #0
 6098 002c F1D0     		beq	.L1087
 6099 002e 0134     		adds	r4, r4, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 108


 6100 0030 0BE0     		b	.L1095
 6101              	.L1094:
 6102 0032 D5F8F000 		ldr	r0, [r5, #240]
 6103 0036 14F8011C 		ldrb	r1, [r4, #-1]	@ zero_extendqisi2
 6104 003a FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 6105 003e 0028     		cmp	r0, #0
 6106 0040 E7D0     		beq	.L1087
 6107 0042 14F8013B 		ldrb	r3, [r4], #1	@ zero_extendqisi2
 6108 0046 002B     		cmp	r3, #0
 6109 0048 E3D0     		beq	.L1087
 6110              	.L1095:
 6111 004a 0A2B     		cmp	r3, #10
 6112 004c F1D1     		bne	.L1094
 6113 004e D5F8F000 		ldr	r0, [r5, #240]
 6114 0052 0D21     		movs	r1, #13
 6115 0054 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 6116 0058 0028     		cmp	r0, #0
 6117 005a EAD1     		bne	.L1094
 6118 005c D9E7     		b	.L1087
 6119              	.L1114:
 6120 005e 01A8     		add	r0, sp, #4
 6121 0060 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 6122 0064 0028     		cmp	r0, #0
 6123 0066 D4D0     		beq	.L1087
 6124 0068 019B     		ldr	r3, [sp, #4]
 6125 006a C5F8F030 		str	r3, [r5, #240]
 6126 006e DBE7     		b	.L1091
 6127              		.size	_ZN9Webserver17TelnetInterpreter16HandleGCodeReplyEPKc, .-_ZN9Webserver17TelnetInterpreter16
 6128              		.section	.text._ZN9Webserver16HandleGCodeReplyE9WebSourcePKc,"ax",%progbits
 6129              		.align	2
 6130              		.global	_ZN9Webserver16HandleGCodeReplyE9WebSourcePKc
 6131              		.thumb
 6132              		.thumb_func
 6133              		.type	_ZN9Webserver16HandleGCodeReplyE9WebSourcePKc, %function
 6134              	_ZN9Webserver16HandleGCodeReplyE9WebSourcePKc:
 6135              		@ args = 0, pretend = 0, frame = 0
 6136              		@ frame_needed = 0, uses_anonymous_args = 0
 6137              		@ link register save eliminated.
 6138 0000 31B1     		cbz	r1, .L1117
 6139 0002 0129     		cmp	r1, #1
 6140 0004 03D1     		bne	.L1120
 6141 0006 8068     		ldr	r0, [r0, #8]
 6142 0008 1146     		mov	r1, r2
 6143 000a FFF7FEBF 		b	_ZN9Webserver17TelnetInterpreter16HandleGCodeReplyEPKc
 6144              	.L1120:
 6145 000e 7047     		bx	lr
 6146              	.L1117:
 6147 0010 0068     		ldr	r0, [r0]
 6148 0012 1146     		mov	r1, r2
 6149 0014 FFF7FEBF 		b	_ZN9Webserver15HttpInterpreter16HandleGCodeReplyEPKc
 6150              		.size	_ZN9Webserver16HandleGCodeReplyE9WebSourcePKc, .-_ZN9Webserver16HandleGCodeReplyE9WebSourceP
 6151              		.section	.text._ZN9Webserver17TelnetInterpreter14SendGCodeReplyEv,"ax",%progbits
 6152              		.align	2
 6153              		.global	_ZN9Webserver17TelnetInterpreter14SendGCodeReplyEv
 6154              		.thumb
 6155              		.thumb_func
 6156              		.type	_ZN9Webserver17TelnetInterpreter14SendGCodeReplyEv, %function
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 109


 6157              	_ZN9Webserver17TelnetInterpreter14SendGCodeReplyEv:
 6158              		@ args = 0, pretend = 0, frame = 0
 6159              		@ frame_needed = 0, uses_anonymous_args = 0
 6160 0000 38B5     		push	{r3, r4, r5, lr}
 6161 0002 D0F8F020 		ldr	r2, [r0, #240]
 6162 0006 8368     		ldr	r3, [r0, #8]
 6163 0008 0446     		mov	r4, r0
 6164 000a 9D69     		ldr	r5, [r3, #24]
 6165 000c 62B1     		cbz	r2, .L1124
 6166 000e D0F8F010 		ldr	r1, [r0, #240]
 6167 0012 2846     		mov	r0, r5
 6168 0014 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEP12OutputBuffer
 6169 0018 2846     		mov	r0, r5
 6170 001a 0121     		movs	r1, #1
 6171 001c FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 6172 0020 0023     		movs	r3, #0
 6173 0022 C4F8F030 		str	r3, [r4, #240]
 6174 0026 38BD     		pop	{r3, r4, r5, pc}
 6175              	.L1124:
 6176 0028 2846     		mov	r0, r5
 6177 002a FFF7FEFF 		bl	_ZN18NetworkTransaction7DiscardEv
 6178 002e 0023     		movs	r3, #0
 6179 0030 C4F8F030 		str	r3, [r4, #240]
 6180 0034 38BD     		pop	{r3, r4, r5, pc}
 6181              		.size	_ZN9Webserver17TelnetInterpreter14SendGCodeReplyEv, .-_ZN9Webserver17TelnetInterpreter14Send
 6182 0036 00BF     		.section	.text._ZN9Webserver17TelnetInterpreter12CanParseDataEv,"ax",%progbits
 6183              		.align	2
 6184              		.global	_ZN9Webserver17TelnetInterpreter12CanParseDataEv
 6185              		.thumb
 6186              		.thumb_func
 6187              		.type	_ZN9Webserver17TelnetInterpreter12CanParseDataEv, %function
 6188              	_ZN9Webserver17TelnetInterpreter12CanParseDataEv:
 6189              		@ args = 0, pretend = 0, frame = 0
 6190              		@ frame_needed = 0, uses_anonymous_args = 0
 6191 0000 38B5     		push	{r3, r4, r5, lr}
 6192 0002 8368     		ldr	r3, [r0, #8]
 6193 0004 9A69     		ldr	r2, [r3, #24]
 6194 0006 9369     		ldr	r3, [r2, #24]
 6195 0008 062B     		cmp	r3, #6
 6196 000a 0446     		mov	r4, r0
 6197 000c 2CD0     		beq	.L1137
 6198 000e 052B     		cmp	r3, #5
 6199 0010 17D0     		beq	.L1138
 6200              	.L1128:
 6201 0012 174B     		ldr	r3, .L1141
 6202 0014 1B69     		ldr	r3, [r3, #16]
 6203 0016 D868     		ldr	r0, [r3, #12]
 6204 0018 FFF7FEFF 		bl	_ZNK17RegularGCodeInput15BufferSpaceLeftEv
 6205 001c D4F8EC30 		ldr	r3, [r4, #236]
 6206 0020 0133     		adds	r3, r3, #1
 6207 0022 9842     		cmp	r0, r3
 6208 0024 18D3     		bcc	.L1139
 6209 0026 94F88430 		ldrb	r3, [r4, #132]	@ zero_extendqisi2
 6210 002a 13B9     		cbnz	r3, .L1140
 6211 002c 0125     		movs	r5, #1
 6212              	.L1134:
 6213 002e 2846     		mov	r0, r5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 110


 6214 0030 38BD     		pop	{r3, r4, r5, pc}
 6215              	.L1140:
 6216 0032 2046     		mov	r0, r4
 6217 0034 FFF7FEFF 		bl	_ZN9Webserver17TelnetInterpreter11ProcessLineEv
 6218 0038 80F00100 		eor	r0, r0, #1
 6219 003c C5B2     		uxtb	r5, r0
 6220 003e 2846     		mov	r0, r5
 6221 0040 38BD     		pop	{r3, r4, r5, pc}
 6222              	.L1138:
 6223 0042 1046     		mov	r0, r2
 6224 0044 FFF7FEFF 		bl	_ZNK18NetworkTransaction11IsConnectedEv
 6225 0048 0546     		mov	r5, r0
 6226 004a 0028     		cmp	r0, #0
 6227 004c E1D1     		bne	.L1128
 6228 004e A368     		ldr	r3, [r4, #8]
 6229 0050 9869     		ldr	r0, [r3, #24]
 6230 0052 FFF7FEFF 		bl	_ZN18NetworkTransaction7DiscardEv
 6231 0056 EAE7     		b	.L1134
 6232              	.L1139:
 6233 0058 A368     		ldr	r3, [r4, #8]
 6234 005a 0021     		movs	r1, #0
 6235 005c 9869     		ldr	r0, [r3, #24]
 6236 005e 0025     		movs	r5, #0
 6237 0060 FFF7FEFF 		bl	_ZN18NetworkTransaction5DeferE12DeferralMode
 6238 0064 2846     		mov	r0, r5
 6239 0066 38BD     		pop	{r3, r4, r5, pc}
 6240              	.L1137:
 6241 0068 FFF7FEFF 		bl	_ZN9Webserver17TelnetInterpreter14SendGCodeReplyEv
 6242 006c 0025     		movs	r5, #0
 6243 006e DEE7     		b	.L1134
 6244              	.L1142:
 6245              		.align	2
 6246              	.L1141:
 6247 0070 00000000 		.word	reprap
 6248              		.size	_ZN9Webserver17TelnetInterpreter12CanParseDataEv, .-_ZN9Webserver17TelnetInterpreter12CanPar
 6249              		.global	_ZTV19ProtocolInterpreter
 6250              		.global	_ZTVN9Webserver15HttpInterpreterE
 6251              		.global	_ZTVN9Webserver14FtpInterpreterE
 6252              		.global	_ZTVN9Webserver17TelnetInterpreterE
 6253              		.global	badEscapeResponse
 6254              		.global	overflowResponse
 6255              		.section	.rodata._ZTVN9Webserver15HttpInterpreterE,"a",%progbits
 6256              		.align	3
 6257              		.set	.LANCHOR3,. + 0
 6258              		.type	_ZTVN9Webserver15HttpInterpreterE, %object
 6259              		.size	_ZTVN9Webserver15HttpInterpreterE, 52
 6260              	_ZTVN9Webserver15HttpInterpreterE:
 6261 0000 00000000 		.word	0
 6262 0004 00000000 		.word	0
 6263 0008 00000000 		.word	_ZN9Webserver15HttpInterpreterD1Ev
 6264 000c 00000000 		.word	_ZN9Webserver15HttpInterpreterD0Ev
 6265 0010 00000000 		.word	_ZN9Webserver15HttpInterpreter11DiagnosticsE11MessageType
 6266 0014 00000000 		.word	_ZN9Webserver15HttpInterpreter4SpinEv
 6267 0018 00000000 		.word	_ZN19ProtocolInterpreter21ConnectionEstablishedEv
 6268 001c 00000000 		.word	_ZN9Webserver15HttpInterpreter14ConnectionLostEP6Socket
 6269 0020 00000000 		.word	_ZN9Webserver15HttpInterpreter12CanParseDataEv
 6270 0024 00000000 		.word	_ZN9Webserver15HttpInterpreter14CharFromClientEc
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 111


 6271 0028 00000000 		.word	_ZN9Webserver15HttpInterpreter19NoMoreDataAvailableEv
 6272 002c 00000000 		.word	_ZNK9Webserver15HttpInterpreter15DoingFastUploadEv
 6273 0030 00000000 		.word	_ZN9Webserver15HttpInterpreter12DoFastUploadEv
 6274 0034 00000000 		.section	.data.overflowResponse,"aw",%progbits
 6275              		.align	2
 6276              		.set	.LANCHOR6,. + 0
 6277              		.type	overflowResponse, %object
 6278              		.size	overflowResponse, 4
 6279              	overflowResponse:
 6280 0000 90100000 		.word	.LC207
 6281              		.section	.bss._ZZN9Webserver15HttpInterpreter12DoFastUploadEvE15writeBufStorage,"aw",%nobits
 6282              		.align	2
 6283              		.set	.LANCHOR8,. + 0
 6284              		.type	_ZZN9Webserver15HttpInterpreter12DoFastUploadEvE15writeBufStorage, %object
 6285              		.size	_ZZN9Webserver15HttpInterpreter12DoFastUploadEvE15writeBufStorage, 8192
 6286              	_ZZN9Webserver15HttpInterpreter12DoFastUploadEvE15writeBufStorage:
 6287 0000 00000000 		.space	8192
 6287      00000000 
 6287      00000000 
 6287      00000000 
 6287      00000000 
 6288              		.section	.rodata._ZTVN9Webserver14FtpInterpreterE,"a",%progbits
 6289              		.align	3
 6290              		.set	.LANCHOR2,. + 0
 6291              		.type	_ZTVN9Webserver14FtpInterpreterE, %object
 6292              		.size	_ZTVN9Webserver14FtpInterpreterE, 52
 6293              	_ZTVN9Webserver14FtpInterpreterE:
 6294 0000 00000000 		.word	0
 6295 0004 00000000 		.word	0
 6296 0008 00000000 		.word	_ZN9Webserver14FtpInterpreterD1Ev
 6297 000c 00000000 		.word	_ZN9Webserver14FtpInterpreterD0Ev
 6298 0010 00000000 		.word	_ZN9Webserver14FtpInterpreter11DiagnosticsE11MessageType
 6299 0014 00000000 		.word	_ZN19ProtocolInterpreter4SpinEv
 6300 0018 00000000 		.word	_ZN9Webserver14FtpInterpreter21ConnectionEstablishedEv
 6301 001c 00000000 		.word	_ZN9Webserver14FtpInterpreter14ConnectionLostEP6Socket
 6302 0020 00000000 		.word	_ZN19ProtocolInterpreter12CanParseDataEv
 6303 0024 00000000 		.word	_ZN9Webserver14FtpInterpreter14CharFromClientEc
 6304 0028 00000000 		.word	_ZN19ProtocolInterpreter19NoMoreDataAvailableEv
 6305 002c 00000000 		.word	_ZNK9Webserver14FtpInterpreter15DoingFastUploadEv
 6306 0030 00000000 		.word	_ZN19ProtocolInterpreter12DoFastUploadEv
 6307 0034 00000000 		.section	.bss._ZZN9Webserver15HttpInterpreter12DoFastUploadEvE13writeBufIndex,"aw",%nobits
 6308              		.align	2
 6309              		.set	.LANCHOR7,. + 0
 6310              		.type	_ZZN9Webserver15HttpInterpreter12DoFastUploadEvE13writeBufIndex, %object
 6311              		.size	_ZZN9Webserver15HttpInterpreter12DoFastUploadEvE13writeBufIndex, 4
 6312              	_ZZN9Webserver15HttpInterpreter12DoFastUploadEvE13writeBufIndex:
 6313 0000 00000000 		.space	4
 6314              		.section	.data.badEscapeResponse,"aw",%progbits
 6315              		.align	2
 6316              		.set	.LANCHOR5,. + 0
 6317              		.type	badEscapeResponse, %object
 6318              		.size	badEscapeResponse, 4
 6319              	badEscapeResponse:
 6320 0000 84100000 		.word	.LC206
 6321              		.section	.rodata._ZTVN9Webserver17TelnetInterpreterE,"a",%progbits
 6322              		.align	3
 6323              		.set	.LANCHOR1,. + 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 112


 6324              		.type	_ZTVN9Webserver17TelnetInterpreterE, %object
 6325              		.size	_ZTVN9Webserver17TelnetInterpreterE, 52
 6326              	_ZTVN9Webserver17TelnetInterpreterE:
 6327 0000 00000000 		.word	0
 6328 0004 00000000 		.word	0
 6329 0008 00000000 		.word	_ZN9Webserver17TelnetInterpreterD1Ev
 6330 000c 00000000 		.word	_ZN9Webserver17TelnetInterpreterD0Ev
 6331 0010 00000000 		.word	_ZN9Webserver17TelnetInterpreter11DiagnosticsE11MessageType
 6332 0014 00000000 		.word	_ZN19ProtocolInterpreter4SpinEv
 6333 0018 00000000 		.word	_ZN9Webserver17TelnetInterpreter21ConnectionEstablishedEv
 6334 001c 00000000 		.word	_ZN9Webserver17TelnetInterpreter14ConnectionLostEP6Socket
 6335 0020 00000000 		.word	_ZN9Webserver17TelnetInterpreter12CanParseDataEv
 6336 0024 00000000 		.word	_ZN9Webserver17TelnetInterpreter14CharFromClientEc
 6337 0028 00000000 		.word	_ZN19ProtocolInterpreter19NoMoreDataAvailableEv
 6338 002c 00000000 		.word	_ZNK19ProtocolInterpreter15DoingFastUploadEv
 6339 0030 00000000 		.word	_ZN19ProtocolInterpreter12DoFastUploadEv
 6340 0034 00000000 		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 6341              		.align	2
 6342              		.type	_ZL32cpu_irq_critical_section_counter, %object
 6343              		.size	_ZL32cpu_irq_critical_section_counter, 4
 6344              	_ZL32cpu_irq_critical_section_counter:
 6345 0000 00000000 		.space	4
 6346              		.section	.rodata.str1.4,"aMS",%progbits,1
 6347              		.align	2
 6348              	.LC0:
 6349 0000 48545450 		.ascii	"HTTP sessions: %d of %d\012\000"
 6349      20736573 
 6349      73696F6E 
 6349      733A2025 
 6349      64206F66 
 6350 0019 000000   		.space	3
 6351              	.LC1:
 6352 001c 46545020 		.ascii	"FTP connections: %d, state %d\012\000"
 6352      636F6E6E 
 6352      65637469 
 6352      6F6E733A 
 6352      2025642C 
 6353 003b 00       		.space	1
 6354              	.LC2:
 6355 003c 54656C6E 		.ascii	"Telnet connections: %d, state %d\012\000"
 6355      65742063 
 6355      6F6E6E65 
 6355      6374696F 
 6355      6E733A20 
 6356 005e 0000     		.space	2
 6357              	.LC3:
 6358 0060 57726974 		.ascii	"Writing %u bytes of upload data\012\000"
 6358      696E6720 
 6358      25752062 
 6358      79746573 
 6358      206F6620 
 6359 0081 000000   		.space	3
 6360              	.LC4:
 6361 0084 4572726F 		.ascii	"Error: Could not write upload data!\012\000"
 6361      723A2043 
 6361      6F756C64 
 6361      206E6F74 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 113


 6361      20777269 
 6362 00a9 000000   		.space	3
 6363              	.LC5:
 6364 00ac 536F7272 		.ascii	"Sorry, only one client may be connected via Telnet "
 6364      792C206F 
 6364      6E6C7920 
 6364      6F6E6520 
 6364      636C6965 
 6365 00df 6174206F 		.ascii	"at once.\015\012\000"
 6365      6E63652E 
 6365      0D0A00
 6366 00ea 0000     		.space	2
 6367              	.LC6:
 6368 00ec 52657052 		.ascii	"RepRapFirmware Telnet interface\015\012\015\012\000"
 6368      61704669 
 6368      726D7761 
 6368      72652054 
 6368      656C6E65 
 6369              	.LC7:
 6370 0110 506C6561 		.ascii	"Please enter your password:\015\012\000"
 6370      73652065 
 6370      6E746572 
 6370      20796F75 
 6370      72207061 
 6371 012e 0000     		.space	2
 6372              	.LC8:
 6373 0130 3E2000   		.ascii	"> \000"
 6374 0133 00       		.space	1
 6375              	.LC9:
 6376 0134 303A00   		.ascii	"0:\000"
 6377 0137 00       		.space	1
 6378              	.LC10:
 6379 0138 504F5354 		.ascii	"POST upload for '%s' has been cancelled!\012\000"
 6379      2075706C 
 6379      6F616420 
 6379      666F7220 
 6379      27257327 
 6380 0162 0000     		.space	2
 6381              	.LC11:
 6382 0164 756E6B6E 		.ascii	"unknown\000"
 6382      6F776E00 
 6383              	.LC12:
 6384 016c 496E636F 		.ascii	"Incoming transaction: Type %s at local port %d (rem"
 6384      6D696E67 
 6384      20747261 
 6384      6E736163 
 6384      74696F6E 
 6385 019f 6F746520 		.ascii	"ote port %d)\012\000"
 6385      706F7274 
 6385      20256429 
 6385      0A00
 6386 01ad 000000   		.space	3
 6387              	.LC13:
 6388 01b0 4572726F 		.ascii	"Error: Transaction for reading connection not found"
 6388      723A2054 
 6388      72616E73 
 6388      61637469 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 114


 6388      6F6E2066 
 6389 01e3 0A00     		.ascii	"\012\000"
 6390 01e5 000000   		.space	3
 6391              	.LC14:
 6392 01e8 57656273 		.ascii	"Webserver class exited.\012\000"
 6392      65727665 
 6392      7220636C 
 6392      61737320 
 6392      65786974 
 6393 0201 000000   		.space	3
 6394              	.LC15:
 6395 0204 3D3D3D20 		.ascii	"=== Webserver ===\012\000"
 6395      57656273 
 6395      65727665 
 6395      72203D3D 
 6395      3D0A00
 6396 0217 00       		.space	1
 6397              	.LC16:
 6398 0218 4572726F 		.ascii	"Error: Webserver should handle disconnect event at "
 6398      723A2057 
 6398      65627365 
 6398      72766572 
 6398      2073686F 
 6399 024b 6C6F6361 		.ascii	"local port %d, but no handler was found!\012\000"
 6399      6C20706F 
 6399      72742025 
 6399      642C2062 
 6399      7574206E 
 6400 0275 000000   		.space	3
 6401              	.LC17:
 6402 0278 436F6E6E 		.ascii	"ConnectionLost called for local port %d (remote por"
 6402      65637469 
 6402      6F6E4C6F 
 6402      73742063 
 6402      616C6C65 
 6403 02ab 74202564 		.ascii	"t %d)\012\000"
 6403      290A00
 6404 02b2 0000     		.space	2
 6405              	.LC18:
 6406 02b4 4572726F 		.ascii	"Error: Could not open file while starting upload!\012"
 6406      723A2043 
 6406      6F756C64 
 6406      206E6F74 
 6406      206F7065 
 6407 02e6 00       		.ascii	"\000"
 6408 02e7 00       		.space	1
 6409              	.LC19:
 6410 02e8 4572726F 		.ascii	"Error: Could not flush remaining data while finishi"
 6410      723A2043 
 6410      6F756C64 
 6410      206E6F74 
 6410      20666C75 
 6411 031b 6E672075 		.ascii	"ng upload!\012\000"
 6411      706C6F61 
 6411      64210A00 
 6412 0327 00       		.space	1
 6413              	.LC20:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 115


 6414 0328 4572726F 		.ascii	"Error: Uploaded file size is different (%u vs. expe"
 6414      723A2055 
 6414      706C6F61 
 6414      64656420 
 6414      66696C65 
 6415 035b 63746564 		.ascii	"cted %u bytes)!\012\000"
 6415      20257520 
 6415      62797465 
 6415      7329210A 
 6415      00
 6416              	.LC21:
 6417 036c 2F00     		.ascii	"/\000"
 6418 036e 0000     		.space	2
 6419              	.LC22:
 6420 0370 53656E64 		.ascii	"Sending G-Code reply to client %d of %d (length %u)"
 6420      696E6720 
 6420      472D436F 
 6420      64652072 
 6420      65706C79 
 6421 03a3 0A00     		.ascii	"\012\000"
 6422 03a5 000000   		.space	3
 6423              	.LC23:
 6424 03a8 48545450 		.ascii	"HTTP/1.1 200 OK\012\000"
 6424      2F312E31 
 6424      20323030 
 6424      204F4B0A 
 6424      00
 6425 03b9 000000   		.space	3
 6426              	.LC24:
 6427 03bc 43616368 		.ascii	"Cache-Control: no-cache, no-store, must-revalidate\012"
 6427      652D436F 
 6427      6E74726F 
 6427      6C3A206E 
 6427      6F2D6361 
 6428 03ef 00       		.ascii	"\000"
 6429              	.LC25:
 6430 03f0 50726167 		.ascii	"Pragma: no-cache\012\000"
 6430      6D613A20 
 6430      6E6F2D63 
 6430      61636865 
 6430      0A00
 6431 0402 0000     		.space	2
 6432              	.LC26:
 6433 0404 45787069 		.ascii	"Expires: 0\012\000"
 6433      7265733A 
 6433      20300A00 
 6434              	.LC27:
 6435 0410 41636365 		.ascii	"Access-Control-Allow-Origin: *\012\000"
 6435      73732D43 
 6435      6F6E7472 
 6435      6F6C2D41 
 6435      6C6C6F77 
 6436              	.LC28:
 6437 0430 436F6E74 		.ascii	"Content-Type: text/plain\012\000"
 6437      656E742D 
 6437      54797065 
 6437      3A207465 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 116


 6437      78742F70 
 6438 044a 0000     		.space	2
 6439              	.LC29:
 6440 044c 436F6E74 		.ascii	"Content-Length: %u\012\000"
 6440      656E742D 
 6440      4C656E67 
 6440      74683A20 
 6440      25750A00 
 6441              	.LC30:
 6442 0460 436F6E6E 		.ascii	"Connection: close\012\012\000"
 6442      65637469 
 6442      6F6E3A20 
 6442      636C6F73 
 6442      650A0A00 
 6443              	.LC31:
 6444 0474 57656273 		.ascii	"Webserver: rejecting message with: %s\012\000"
 6444      65727665 
 6444      723A2072 
 6444      656A6563 
 6444      74696E67 
 6445 049b 00       		.space	1
 6446              	.LC32:
 6447 049c 48545450 		.ascii	"HTTP/1.1 %u %s\012Connection: close\012\012\000"
 6447      2F312E31 
 6447      20257520 
 6447      25730A43 
 6447      6F6E6E65 
 6448 04bf 00       		.space	1
 6449              	.LC33:
 6450 04c0 72657072 		.ascii	"reprap.htm\000"
 6450      61702E68 
 6450      746D00
 6451 04cb 00       		.space	1
 6452              	.LC34:
 6453 04cc 68746D6C 		.ascii	"html404.htm\000"
 6453      3430342E 
 6453      68746D00 
 6454              	.LC35:
 6455 04d8 74657874 		.ascii	"text/plain\000"
 6455      2F706C61 
 6455      696E00
 6456 04e3 00       		.space	1
 6457              	.LC36:
 6458 04e4 74657874 		.ascii	"text/html\000"
 6458      2F68746D 
 6458      6C00
 6459 04ee 0000     		.space	2
 6460              	.LC37:
 6461 04f0 6170706C 		.ascii	"application/octet-stream\000"
 6461      69636174 
 6461      696F6E2F 
 6461      6F637465 
 6461      742D7374 
 6462 0509 000000   		.space	3
 6463              	.LC38:
 6464 050c 696D6167 		.ascii	"image/png\000"
 6464      652F706E 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 117


 6464      6700
 6465 0516 0000     		.space	2
 6466              	.LC39:
 6467 0518 696D6167 		.ascii	"image/x-icon\000"
 6467      652F782D 
 6467      69636F6E 
 6467      00
 6468 0525 000000   		.space	3
 6469              	.LC40:
 6470 0528 74657874 		.ascii	"text/css\000"
 6470      2F637373 
 6470      00
 6471 0531 000000   		.space	3
 6472              	.LC41:
 6473 0534 6170706C 		.ascii	"application/javascript\000"
 6473      69636174 
 6473      696F6E2F 
 6473      6A617661 
 6473      73637269 
 6474 054b 00       		.space	1
 6475              	.LC42:
 6476 054c 2E677A00 		.ascii	".gz\000"
 6477              	.LC43:
 6478 0550 303A2F77 		.ascii	"0:/www/\000"
 6478      77772F00 
 6479              	.LC44:
 6480 0558 2E68746D 		.ascii	".html\000"
 6480      6C00
 6481 055e 0000     		.space	2
 6482              	.LC45:
 6483 0560 2E68746D 		.ascii	".htm\000"
 6483      00
 6484 0565 000000   		.space	3
 6485              	.LC46:
 6486 0568 6E6F7420 		.ascii	"not found\000"
 6486      666F756E 
 6486      6400
 6487 0572 0000     		.space	2
 6488              	.LC47:
 6489 0574 2E706E67 		.ascii	".png\000"
 6489      00
 6490 0579 000000   		.space	3
 6491              	.LC48:
 6492 057c 2E69636F 		.ascii	".ico\000"
 6492      00
 6493 0581 000000   		.space	3
 6494              	.LC49:
 6495 0584 2E6A7300 		.ascii	".js\000"
 6496              	.LC50:
 6497 0588 2E637373 		.ascii	".css\000"
 6497      00
 6498 058d 000000   		.space	3
 6499              	.LC51:
 6500 0590 2E6700   		.ascii	".g\000"
 6501 0593 00       		.space	1
 6502              	.LC52:
 6503 0594 2E676300 		.ascii	".gc\000"
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 118


 6504              	.LC53:
 6505 0598 2E67636F 		.ascii	".gcode\000"
 6505      646500
 6506 059f 00       		.space	1
 6507              	.LC54:
 6508 05a0 436F6E74 		.ascii	"Content-Encoding: gzip\012\000"
 6508      656E742D 
 6508      456E636F 
 6508      64696E67 
 6508      3A20677A 
 6509              	.LC55:
 6510 05b8 436F6E74 		.ascii	"Content-Length: %lu\012\000"
 6510      656E742D 
 6510      4C656E67 
 6510      74683A20 
 6510      256C750A 
 6511 05cd 000000   		.space	3
 6512              	.LC56:
 6513 05d0 2E7A6970 		.ascii	".zip\000"
 6513      00
 6514 05d5 000000   		.space	3
 6515              	.LC57:
 6516 05d8 436F6E74 		.ascii	"Content-Type: %s\012\000"
 6516      656E742D 
 6516      54797065 
 6516      3A202573 
 6516      0A00
 6517 05ea 0000     		.space	2
 6518              	.LC58:
 6519 05ec 6170706C 		.ascii	"application/zip\000"
 6519      69636174 
 6519      696F6E2F 
 6519      7A697000 
 6520              	.LC59:
 6521 05fc 496E636F 		.ascii	"Incomplete or too long HTTP request\000"
 6521      6D706C65 
 6521      7465206F 
 6521      7220746F 
 6521      6F206C6F 
 6522              	.LC60:
 6523 0620 436F6E74 		.ascii	"Content-Type: application/json\012\000"
 6523      656E742D 
 6523      54797065 
 6523      3A206170 
 6523      706C6963 
 6524              	.LC61:
 6525 0640 303A2F67 		.ascii	"0:/gcodes/\000"
 6525      636F6465 
 6525      732F00
 6526 064b 00       		.space	1
 6527              	.LC62:
 6528 064c 636F6E6E 		.ascii	"connect\000"
 6528      65637400 
 6529              	.LC63:
 6530 0654 70617373 		.ascii	"password\000"
 6530      776F7264 
 6530      00
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 119


 6531 065d 000000   		.space	3
 6532              	.LC64:
 6533 0660 74696D65 		.ascii	"time\000"
 6533      00
 6534 0665 000000   		.space	3
 6535              	.LC65:
 6536 0668 7B226572 		.ascii	"{\"err\":0,\"sessionTimeout\":%u,\"boardType\":\"%s"
 6536      72223A30 
 6536      2C227365 
 6536      7373696F 
 6536      6E54696D 
 6537 0694 227D00   		.ascii	"\"}\000"
 6538 0697 00       		.space	1
 6539              	.LC66:
 6540 0698 7B226572 		.ascii	"{\"err\":2}\000"
 6540      72223A32 
 6540      7D00
 6541 06a2 0000     		.space	2
 6542              	.LC67:
 6543 06a4 4E6F7420 		.ascii	"Not authorized\000"
 6543      61757468 
 6543      6F72697A 
 6543      656400
 6544 06b3 00       		.space	1
 6545              	.LC68:
 6546 06b4 64697363 		.ascii	"disconnect\000"
 6546      6F6E6E65 
 6546      637400
 6547 06bf 00       		.space	1
 6548              	.LC69:
 6549 06c0 7B226572 		.ascii	"{\"err\":%d}\000"
 6549      72223A25 
 6549      647D00
 6550 06cb 00       		.space	1
 6551              	.LC70:
 6552 06cc 73746174 		.ascii	"status\000"
 6552      757300
 6553 06d3 00       		.space	1
 6554              	.LC71:
 6555 06d4 74797065 		.ascii	"type\000"
 6555      00
 6556 06d9 000000   		.space	3
 6557              	.LC72:
 6558 06dc 67636F64 		.ascii	"gcode\000"
 6558      6500
 6559 06e2 0000     		.space	2
 6560              	.LC73:
 6561 06e4 64656C65 		.ascii	"delete\000"
 6561      746500
 6562 06eb 00       		.space	1
 6563              	.LC74:
 6564 06ec 6E616D65 		.ascii	"name\000"
 6564      00
 6565 06f1 000000   		.space	3
 6566              	.LC75:
 6567 06f4 64697200 		.ascii	"dir\000"
 6568              	.LC76:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 120


 6569 06f8 666C6167 		.ascii	"flagDirs\000"
 6569      44697273 
 6569      00
 6570 0701 000000   		.space	3
 6571              	.LC77:
 6572 0704 66696C65 		.ascii	"fileinfo\000"
 6572      696E666F 
 6572      00
 6573 070d 000000   		.space	3
 6574              	.LC78:
 6575 0710 6D6F7665 		.ascii	"move\000"
 6575      00
 6576 0715 000000   		.space	3
 6577              	.LC79:
 6578 0718 6F6C6400 		.ascii	"old\000"
 6579              	.LC80:
 6580 071c 6E657700 		.ascii	"new\000"
 6581              	.LC81:
 6582 0720 6D6B6469 		.ascii	"mkdir\000"
 6582      7200
 6583 0726 0000     		.space	2
 6584              	.LC82:
 6585 0728 636F6E66 		.ascii	"config\000"
 6585      696700
 6586 072f 00       		.space	1
 6587              	.LC83:
 6588 0730 556E6B6E 		.ascii	"Unknown request\000"
 6588      6F776E20 
 6588      72657175 
 6588      65737400 
 6589              	.LC84:
 6590 0740 7B226572 		.ascii	"{\"err\":1}\000"
 6590      72223A31 
 6590      7D00
 6591 074a 0000     		.space	2
 6592              	.LC85:
 6593 074c 25592D25 		.ascii	"%Y-%m-%dT%H:%M:%S\000"
 6593      6D2D2564 
 6593      5425483A 
 6593      254D3A25 
 6593      5300
 6594 075e 0000     		.space	2
 6595              	.LC86:
 6596 0760 7B226275 		.ascii	"{\"buff\":%u}\000"
 6596      6666223A 
 6596      25757D00 
 6597              	.LC87:
 6598 076c 75706C6F 		.ascii	"upload\000"
 6598      616400
 6599 0773 00       		.space	1
 6600              	.LC88:
 6601 0774 66696C65 		.ascii	"filelist\000"
 6601      6C697374 
 6601      00
 6602 077d 000000   		.space	3
 6603              	.LC89:
 6604 0780 66696C65 		.ascii	"files\000"
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 121


 6604      7300
 6605 0786 0000     		.space	2
 6606              	.LC90:
 6607 0788 6B656570 		.ascii	"keep-alive\000"
 6607      2D616C69 
 6607      766500
 6608 0793 00       		.space	1
 6609              	.LC91:
 6610 0794 636C6F73 		.ascii	"close\000"
 6610      6500
 6611 079a 0000     		.space	2
 6612              	.LC92:
 6613 079c 7265706C 		.ascii	"reply\000"
 6613      7900
 6614 07a2 0000     		.space	2
 6615              	.LC93:
 6616 07a4 636F6E66 		.ascii	"configfile\000"
 6616      69676669 
 6616      6C6500
 6617 07af 00       		.space	1
 6618              	.LC94:
 6619 07b0 303A2F73 		.ascii	"0:/sys/\000"
 6619      79732F00 
 6620              	.LC95:
 6621 07b8 636F6E66 		.ascii	"config.g\000"
 6621      69672E67 
 6621      00
 6622 07c1 000000   		.space	3
 6623              	.LC96:
 6624 07c4 646F776E 		.ascii	"download\000"
 6624      6C6F6164 
 6624      00
 6625 07cd 000000   		.space	3
 6626              	.LC97:
 6627 07d0 436F6E6E 		.ascii	"Connection\000"
 6627      65637469 
 6627      6F6E00
 6628 07db 00       		.space	1
 6629              	.LC98:
 6630 07dc 436F6E6E 		.ascii	"Connection: %s\012\012\000"
 6630      65637469 
 6630      6F6E3A20 
 6630      25730A0A 
 6630      00
 6631 07ed 000000   		.space	3
 6632              	.LC99:
 6633 07f0 48545450 		.ascii	"HTTP req, command words {\000"
 6633      20726571 
 6633      2C20636F 
 6633      6D6D616E 
 6633      6420776F 
 6634 080a 0000     		.space	2
 6635              	.LC100:
 6636 080c 207D2C20 		.ascii	" }, parameters {\000"
 6636      70617261 
 6636      6D657465 
 6636      7273207B 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 122


 6636      00
 6637 081d 000000   		.space	3
 6638              	.LC101:
 6639 0820 20257300 		.ascii	" %s\000"
 6640              	.LC102:
 6641 0824 207D0A00 		.ascii	" }\012\000"
 6642              	.LC103:
 6643 0828 2025733D 		.ascii	" %s=%s\000"
 6643      257300
 6644 082f 00       		.space	1
 6645              	.LC104:
 6646 0830 746F6F20 		.ascii	"too few command words\000"
 6646      66657720 
 6646      636F6D6D 
 6646      616E6420 
 6646      776F7264 
 6647 0846 0000     		.space	2
 6648              	.LC105:
 6649 0848 47455400 		.ascii	"GET\000"
 6650              	.LC106:
 6651 084c 72725F00 		.ascii	"rr_\000"
 6652              	.LC107:
 6653 0850 4F505449 		.ascii	"OPTIONS\000"
 6653      4F4E5300 
 6654              	.LC108:
 6655 0858 416C6C6F 		.ascii	"Allow: OPTIONS, GET, POST\012\000"
 6655      773A204F 
 6655      5054494F 
 6655      4E532C20 
 6655      4745542C 
 6656 0873 00       		.space	1
 6657              	.LC109:
 6658 0874 41636365 		.ascii	"Access-Control-Allow-Headers: Content-Type\012\000"
 6658      73732D43 
 6658      6F6E7472 
 6658      6F6C2D41 
 6658      6C6C6F77 
 6659              	.LC110:
 6660 08a0 436F6E74 		.ascii	"Content-Length: 0\012\000"
 6660      656E742D 
 6660      4C656E67 
 6660      74683A20 
 6660      300A00
 6661 08b3 00       		.space	1
 6662              	.LC111:
 6663 08b4 0A00     		.ascii	"\012\000"
 6664 08b6 0000     		.space	2
 6665              	.LC112:
 6666 08b8 504F5354 		.ascii	"POST\000"
 6666      00
 6667 08bd 000000   		.space	3
 6668              	.LC113:
 6669 08c0 72725F75 		.ascii	"rr_upload\000"
 6669      706C6F61 
 6669      6400
 6670 08ca 0000     		.space	2
 6671              	.LC114:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 123


 6672 08cc 63616E6E 		.ascii	"cannot upload more than one file at once\000"
 6672      6F742075 
 6672      706C6F61 
 6672      64206D6F 
 6672      72652074 
 6673 08f5 000000   		.space	3
 6674              	.LC115:
 6675 08f8 436F6E74 		.ascii	"Content-Length\000"
 6675      656E742D 
 6675      4C656E67 
 6675      746800
 6676 0907 00       		.space	1
 6677              	.LC116:
 6678 0908 696E7661 		.ascii	"invalid POST upload request\000"
 6678      6C696420 
 6678      504F5354 
 6678      2075706C 
 6678      6F616420 
 6679              	.LC117:
 6680 0924 636F756C 		.ascii	"could not start file upload\000"
 6680      64206E6F 
 6680      74207374 
 6680      61727420 
 6680      66696C65 
 6681              	.LC118:
 6682 0940 53746172 		.ascii	"Start uploading file %s length %lu\012\000"
 6682      74207570 
 6682      6C6F6164 
 6682      696E6720 
 6682      66696C65 
 6683              	.LC119:
 6684 0964 556E6B6E 		.ascii	"Unknown message type or not authenticated\000"
 6684      6F776E20 
 6684      6D657373 
 6684      61676520 
 6684      74797065 
 6685 098e 0000     		.space	2
 6686              	.LC120:
 6687 0990 6F6E6C79 		.ascii	"only rr_upload is supported for POST requests\000"
 6687      2072725F 
 6687      75706C6F 
 6687      61642069 
 6687      73207375 
 6688 09be 0000     		.space	2
 6689              	.LC121:
 6690 09c0 746F6F20 		.ascii	"too many command words\000"
 6690      6D616E79 
 6690      20636F6D 
 6690      6D616E64 
 6690      20776F72 
 6691 09d7 00       		.space	1
 6692              	.LC122:
 6693 09d8 62616420 		.ascii	"bad qualifier key\000"
 6693      7175616C 
 6693      69666965 
 6693      72206B65 
 6693      7900
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 124


 6694 09ea 0000     		.space	2
 6695              	.LC123:
 6696 09ec 746F6F20 		.ascii	"too many keys in qualifier\000"
 6696      6D616E79 
 6696      206B6579 
 6696      7320696E 
 6696      20717561 
 6697 0a07 00       		.space	1
 6698              	.LC124:
 6699 0a08 756E6578 		.ascii	"unexpected newline\000"
 6699      70656374 
 6699      6564206E 
 6699      65776C69 
 6699      6E6500
 6700 0a1b 00       		.space	1
 6701              	.LC125:
 6702 0a1c 746F6F20 		.ascii	"too many header key-value pairs\000"
 6702      6D616E79 
 6702      20686561 
 6702      64657220 
 6702      6B65792D 
 6703              	.LC126:
 6704 0a3c 25642025 		.ascii	"%d %s\015\012\000"
 6704      730D0A00 
 6705              	.LC127:
 6706 0a44 57656273 		.ascii	"Webserver: FTP connection established!\012\000"
 6706      65727665 
 6706      723A2046 
 6706      54502063 
 6706      6F6E6E65 
 6707              	.LC128:
 6708 0a6c 52657052 		.ascii	"RepRapFirmware FTP server\000"
 6708      61704669 
 6708      726D7761 
 6708      72652046 
 6708      54502073 
 6709 0a86 0000     		.space	2
 6710              	.LC129:
 6711 0a88 4F6E6C79 		.ascii	"Only one client can be connected at a time.\000"
 6711      206F6E65 
 6711      20636C69 
 6711      656E7420 
 6711      63616E20 
 6712              	.LC130:
 6713 0ab4 4C6F7374 		.ascii	"Lost data connection!\000"
 6713      20646174 
 6713      6120636F 
 6713      6E6E6563 
 6713      74696F6E 
 6714 0aca 0000     		.space	2
 6715              	.LC131:
 6716 0acc 5472616E 		.ascii	"Transfer complete.\000"
 6716      73666572 
 6716      20636F6D 
 6716      706C6574 
 6716      652E00
 6717 0adf 00       		.space	1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 125


 6718              	.LC132:
 6719 0ae0 5472616E 		.ascii	"Transfer failed!\000"
 6719      73666572 
 6719      20666169 
 6719      6C656421 
 6719      00
 6720 0af1 000000   		.space	3
 6721              	.LC133:
 6722 0af4 3231312D 		.ascii	"211-Features:\015\012\000"
 6722      46656174 
 6722      75726573 
 6722      3A0D0A00 
 6723              	.LC134:
 6724 0b04 50415356 		.ascii	"PASV\015\012\000"
 6724      0D0A00
 6725 0b0b 00       		.space	1
 6726              	.LC135:
 6727 0b0c 32313120 		.ascii	"211 End\015\012\000"
 6727      456E640D 
 6727      0A00
 6728 0b16 0000     		.space	2
 6729              	.LC136:
 6730 0b18 2E2E00   		.ascii	"..\000"
 6731 0b1b 00       		.space	1
 6732              	.LC137:
 6733 0b1c 4661696C 		.ascii	"Failed to change directory.\000"
 6733      65642074 
 6733      6F206368 
 6733      616E6765 
 6733      20646972 
 6734              	.LC138:
 6735 0b38 44697265 		.ascii	"Directory successfully changed.\000"
 6735      63746F72 
 6735      79207375 
 6735      63636573 
 6735      7366756C 
 6736              	.LC139:
 6737 0b58 55534552 		.ascii	"USER\000"
 6737      00
 6738 0b5d 000000   		.space	3
 6739              	.LC140:
 6740 0b60 506C6561 		.ascii	"Please specify the password.\000"
 6740      73652073 
 6740      70656369 
 6740      66792074 
 6740      68652070 
 6741 0b7d 000000   		.space	3
 6742              	.LC141:
 6743 0b80 50415353 		.ascii	"PASS\000"
 6743      00
 6744 0b85 000000   		.space	3
 6745              	.LC142:
 6746 0b88 4C6F6769 		.ascii	"Login successful.\000"
 6746      6E207375 
 6746      63636573 
 6746      7366756C 
 6746      2E00
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 126


 6747 0b9a 0000     		.space	2
 6748              	.LC143:
 6749 0b9c 4C6F6769 		.ascii	"Login incorrect.\000"
 6749      6E20696E 
 6749      636F7272 
 6749      6563742E 
 6749      00
 6750 0bad 000000   		.space	3
 6751              	.LC144:
 6752 0bb0 556E6B6E 		.ascii	"Unknown login command.\000"
 6752      6F776E20 
 6752      6C6F6769 
 6752      6E20636F 
 6752      6D6D616E 
 6753 0bc7 00       		.space	1
 6754              	.LC145:
 6755 0bc8 53595354 		.ascii	"SYST\000"
 6755      00
 6756 0bcd 000000   		.space	3
 6757              	.LC146:
 6758 0bd0 554E4958 		.ascii	"UNIX Type: L8\000"
 6758      20547970 
 6758      653A204C 
 6758      3800
 6759 0bde 0000     		.space	2
 6760              	.LC147:
 6761 0be0 46454154 		.ascii	"FEAT\000"
 6761      00
 6762 0be5 000000   		.space	3
 6763              	.LC148:
 6764 0be8 50574400 		.ascii	"PWD\000"
 6765              	.LC149:
 6766 0bec 32353720 		.ascii	"257 \"%s\"\015\012\000"
 6766      22257322 
 6766      0D0A00
 6767 0bf7 00       		.space	1
 6768              	.LC150:
 6769 0bf8 43574400 		.ascii	"CWD\000"
 6770              	.LC151:
 6771 0bfc 43445550 		.ascii	"CDUP\000"
 6771      00
 6772 0c01 000000   		.space	3
 6773              	.LC152:
 6774 0c04 54595045 		.ascii	"TYPE\000"
 6774      00
 6775 0c09 000000   		.space	3
 6776              	.LC153:
 6777 0c0c 53776974 		.ascii	"Switching to Binary mode.\000"
 6777      6368696E 
 6777      6720746F 
 6777      2042696E 
 6777      61727920 
 6778 0c26 0000     		.space	2
 6779              	.LC154:
 6780 0c28 53776974 		.ascii	"Switching to ASCII mode.\000"
 6780      6368696E 
 6780      6720746F 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 127


 6780      20415343 
 6780      4949206D 
 6781 0c41 000000   		.space	3
 6782              	.LC155:
 6783 0c44 556E6B6E 		.ascii	"Unknown command.\000"
 6783      6F776E20 
 6783      636F6D6D 
 6783      616E642E 
 6783      00
 6784 0c55 000000   		.space	3
 6785              	.LC156:
 6786 0c58 50415356 		.ascii	"PASV\000"
 6786      00
 6787 0c5d 000000   		.space	3
 6788              	.LC157:
 6789 0c60 32323720 		.ascii	"227 Entering Passive Mode (%d,%d,%d,%d,%d,%d)\015\012"
 6789      456E7465 
 6789      72696E67 
 6789      20506173 
 6789      73697665 
 6790 0c8f 00       		.ascii	"\000"
 6791              	.LC158:
 6792 0c90 4C495354 		.ascii	"LIST\000"
 6792      00
 6793 0c95 000000   		.space	3
 6794              	.LC159:
 6795 0c98 52455452 		.ascii	"RETR\000"
 6795      00
 6796 0c9d 000000   		.space	3
 6797              	.LC160:
 6798 0ca0 53544F52 		.ascii	"STOR\000"
 6798      00
 6799 0ca5 000000   		.space	3
 6800              	.LC161:
 6801 0ca8 44656C65 		.ascii	"Delete operation successful.\000"
 6801      7465206F 
 6801      70657261 
 6801      74696F6E 
 6801      20737563 
 6802 0cc5 000000   		.space	3
 6803              	.LC162:
 6804 0cc8 44656C65 		.ascii	"Delete operation failed.\000"
 6804      7465206F 
 6804      70657261 
 6804      74696F6E 
 6804      20666169 
 6805 0ce1 000000   		.space	3
 6806              	.LC163:
 6807 0ce4 524D4400 		.ascii	"RMD\000"
 6808              	.LC164:
 6809 0ce8 52656D6F 		.ascii	"Remove directory operation successful.\000"
 6809      76652064 
 6809      69726563 
 6809      746F7279 
 6809      206F7065 
 6810 0d0f 00       		.space	1
 6811              	.LC165:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 128


 6812 0d10 52656D6F 		.ascii	"Remove directory operation failed.\000"
 6812      76652064 
 6812      69726563 
 6812      746F7279 
 6812      206F7065 
 6813 0d33 00       		.space	1
 6814              	.LC166:
 6815 0d34 4D4B4400 		.ascii	"MKD\000"
 6816              	.LC167:
 6817 0d38 32353720 		.ascii	"257 \"%s\" created\015\012\000"
 6817      22257322 
 6817      20637265 
 6817      61746564 
 6817      0D0A00
 6818 0d4b 00       		.space	1
 6819              	.LC168:
 6820 0d4c 43726561 		.ascii	"Create directory operation failed.\000"
 6820      74652064 
 6820      69726563 
 6820      746F7279 
 6820      206F7065 
 6821 0d6f 00       		.space	1
 6822              	.LC169:
 6823 0d70 524E4652 		.ascii	"RNFR\000"
 6823      00
 6824 0d75 000000   		.space	3
 6825              	.LC170:
 6826 0d78 52656164 		.ascii	"Ready to RNTO.\000"
 6826      7920746F 
 6826      20524E54 
 6826      4F2E00
 6827 0d87 00       		.space	1
 6828              	.LC171:
 6829 0d88 496E7661 		.ascii	"Invalid file or directory.\000"
 6829      6C696420 
 6829      66696C65 
 6829      206F7220 
 6829      64697265 
 6830 0da3 00       		.space	1
 6831              	.LC172:
 6832 0da4 524E544F 		.ascii	"RNTO\000"
 6832      00
 6833 0da9 000000   		.space	3
 6834              	.LC173:
 6835 0dac 52656E61 		.ascii	"Rename successful.\000"
 6835      6D652073 
 6835      75636365 
 6835      73736675 
 6835      6C2E00
 6836 0dbf 00       		.space	1
 6837              	.LC174:
 6838 0dc0 436F756C 		.ascii	"Could not rename file or directory.\000"
 6838      64206E6F 
 6838      74207265 
 6838      6E616D65 
 6838      2066696C 
 6839              	.LC175:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 129


 6840 0de4 4E4F4F50 		.ascii	"NOOP\000"
 6840      00
 6841 0de9 000000   		.space	3
 6842              	.LC176:
 6843 0dec 4E4F4F50 		.ascii	"NOOP okay.\000"
 6843      206F6B61 
 6843      792E00
 6844 0df7 00       		.space	1
 6845              	.LC177:
 6846 0df8 51554954 		.ascii	"QUIT\000"
 6846      00
 6847 0dfd 000000   		.space	3
 6848              	.LC178:
 6849 0e00 476F6F64 		.ascii	"Goodbye.\000"
 6849      6279652E 
 6849      00
 6850 0e09 000000   		.space	3
 6851              	.LC179:
 6852 0e0c 4661696C 		.ascii	"Failed to establish connection.\000"
 6852      65642074 
 6852      6F206573 
 6852      7461626C 
 6852      69736820 
 6853              	.LC180:
 6854 0e2c 48657265 		.ascii	"Here comes the directory listing.\000"
 6854      20636F6D 
 6854      65732074 
 6854      68652064 
 6854      69726563 
 6855 0e4e 0000     		.space	2
 6856              	.LC181:
 6857 0e50 25637277 		.ascii	"%crw-rw-rw- 1 ftp ftp %13lu %s %02d %04d %s\015\012"
 6857      2D72772D 
 6857      72772D20 
 6857      31206674 
 6857      70206674 
 6858 0e7d 00       		.ascii	"\000"
 6859 0e7e 0000     		.space	2
 6860              	.LC182:
 6861 0e80 556E6B6E 		.ascii	"Unknown error.\000"
 6861      6F776E20 
 6861      6572726F 
 6861      722E00
 6862 0e8f 00       		.space	1
 6863              	.LC183:
 6864 0e90 4F4B2074 		.ascii	"OK to send data.\000"
 6864      6F207365 
 6864      6E642064 
 6864      6174612E 
 6864      00
 6865 0ea1 000000   		.space	3
 6866              	.LC184:
 6867 0ea4 4661696C 		.ascii	"Failed to open file.\000"
 6867      65642074 
 6867      6F206F70 
 6867      656E2066 
 6867      696C652E 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 130


 6868 0eb9 000000   		.space	3
 6869              	.LC185:
 6870 0ebc 31353020 		.ascii	"150 Opening data connection for %s (%lu bytes).\015"
 6870      4F70656E 
 6870      696E6720 
 6870      64617461 
 6870      20636F6E 
 6871 0eec 0A00     		.ascii	"\012\000"
 6872 0eee 0000     		.space	2
 6873              	.LC186:
 6874 0ef0 41424F52 		.ascii	"ABOR\000"
 6874      00
 6875 0ef5 000000   		.space	3
 6876              	.LC187:
 6877 0ef8 41424F52 		.ascii	"ABOR successful.\000"
 6877      20737563 
 6877      63657373 
 6877      66756C2E 
 6877      00
 6878 0f09 000000   		.space	3
 6879              	.LC188:
 6880 0f0c 55736520 		.ascii	"Use PASV first.\000"
 6880      50415356 
 6880      20666972 
 6880      73742E00 
 6881              	.LC189:
 6882 0f1c 44454C45 		.ascii	"DELE\000"
 6882      00
 6883 0f21 000000   		.space	3
 6884              	.LC190:
 6885 0f24 57656273 		.ascii	"Webserver: Buffer overflow in FTP server!\012\000"
 6885      65727665 
 6885      723A2042 
 6885      75666665 
 6885      72206F76 
 6886 0f4f 00       		.space	1
 6887              	.LC191:
 6888 0f50 46747049 		.ascii	"FtpInterpreter::ProcessLine called with state %d:\012"
 6888      6E746572 
 6888      70726574 
 6888      65723A3A 
 6888      50726F63 
 6889 0f82 25730A00 		.ascii	"%s\012\000"
 6890 0f86 0000     		.space	2
 6891              	.LC192:
 6892 0f88 46747049 		.ascii	"FtpInterpreter::ProcessLine call finished.\012\000"
 6892      6E746572 
 6892      70726574 
 6892      65723A3A 
 6892      50726F63 
 6893              	.LC193:
 6894 0fb4 4C6F6720 		.ascii	"Log in successful!\015\012\000"
 6894      696E2073 
 6894      75636365 
 6894      73736675 
 6894      6C210D0A 
 6895 0fc9 000000   		.space	3
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 131


 6896              	.LC194:
 6897 0fcc 496E7661 		.ascii	"Invalid password.\015\012> \000"
 6897      6C696420 
 6897      70617373 
 6897      776F7264 
 6897      2E0D0A3E 
 6898 0fe2 0000     		.space	2
 6899              	.LC195:
 6900 0fe4 65786974 		.ascii	"exit\000"
 6900      00
 6901 0fe9 000000   		.space	3
 6902              	.LC196:
 6903 0fec 71756974 		.ascii	"quit\000"
 6903      00
 6904 0ff1 000000   		.space	3
 6905              	.LC197:
 6906 0ff4 476F6F64 		.ascii	"Goodbye.\015\012\000"
 6906      6279652E 
 6906      0D0A00
 6907 0fff 00       		.space	1
 6908              	.LC198:
 6909 1000 57656273 		.ascii	"Webserver: Buffer overflow in Telnet server!\012\000"
 6909      65727665 
 6909      723A2042 
 6909      75666665 
 6909      72206F76 
 6910 102e 0000     		.space	2
 6911              	.LC199:
 6912 1030 72656C65 		.ascii	"released\000"
 6912      61736564 
 6912      00
 6913 1039 000000   		.space	3
 6914              	.LC200:
 6915 103c 636F6E6E 		.ascii	"connected\000"
 6915      65637465 
 6915      6400
 6916 1046 0000     		.space	2
 6917              	.LC201:
 6918 1048 72656365 		.ascii	"receiving\000"
 6918      6976696E 
 6918      6700
 6919 1052 0000     		.space	2
 6920              	.LC202:
 6921 1054 73656E64 		.ascii	"sending\000"
 6921      696E6700 
 6922              	.LC203:
 6923 105c 64697363 		.ascii	"disconnected\000"
 6923      6F6E6E65 
 6923      63746564 
 6923      00
 6924 1069 000000   		.space	3
 6925              	.LC204:
 6926 106c 64656665 		.ascii	"deferred\000"
 6926      72726564 
 6926      00
 6927 1075 000000   		.space	3
 6928              	.LC205:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccifOmU5.s 			page 132


 6929 1078 61637175 		.ascii	"acquired\000"
 6929      69726564 
 6929      00
 6930 1081 000000   		.space	3
 6931              	.LC206:
 6932 1084 62616420 		.ascii	"bad escape\000"
 6932      65736361 
 6932      706500
 6933 108f 00       		.space	1
 6934              	.LC207:
 6935 1090 6F766572 		.ascii	"overflow\000"
 6935      666C6F77 
 6935      00
 6936 1099 000000   		.section	.rodata.CSWTCH.296,"a",%progbits
 6937              		.align	2
 6938              		.set	.LANCHOR4,. + 0
 6939              		.type	CSWTCH.296, %object
 6940              		.size	CSWTCH.296, 28
 6941              	CSWTCH.296:
 6942 0000 30100000 		.word	.LC199
 6943 0004 3C100000 		.word	.LC200
 6944 0008 48100000 		.word	.LC201
 6945 000c 54100000 		.word	.LC202
 6946 0010 5C100000 		.word	.LC203
 6947 0014 6C100000 		.word	.LC204
 6948 0018 78100000 		.word	.LC205
 6949              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 6950              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 6951              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 6952              	_ZL28cpu_irq_prev_interrupt_state:
 6953 0000 00       		.space	1
 6954              		.section	.rodata._ZTV19ProtocolInterpreter,"a",%progbits
 6955              		.align	3
 6956              		.set	.LANCHOR0,. + 0
 6957              		.type	_ZTV19ProtocolInterpreter, %object
 6958              		.size	_ZTV19ProtocolInterpreter, 52
 6959              	_ZTV19ProtocolInterpreter:
 6960 0000 00000000 		.word	0
 6961 0004 00000000 		.word	0
 6962 0008 00000000 		.word	_ZN19ProtocolInterpreterD1Ev
 6963 000c 00000000 		.word	_ZN19ProtocolInterpreterD0Ev
 6964 0010 00000000 		.word	__cxa_pure_virtual
 6965 0014 00000000 		.word	_ZN19ProtocolInterpreter4SpinEv
 6966 0018 00000000 		.word	_ZN19ProtocolInterpreter21ConnectionEstablishedEv
 6967 001c 00000000 		.word	_ZN19ProtocolInterpreter14ConnectionLostEP6Socket
 6968 0020 00000000 		.word	_ZN19ProtocolInterpreter12CanParseDataEv
 6969 0024 00000000 		.word	__cxa_pure_virtual
 6970 0028 00000000 		.word	_ZN19ProtocolInterpreter19NoMoreDataAvailableEv
 6971 002c 00000000 		.word	_ZNK19ProtocolInterpreter15DoingFastUploadEv
 6972 0030 00000000 		.word	_ZN19ProtocolInterpreter12DoFastUploadEv
 6973 0034 00000000 		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
