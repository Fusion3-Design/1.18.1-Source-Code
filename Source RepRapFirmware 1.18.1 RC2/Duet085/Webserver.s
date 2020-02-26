ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 1


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
  14              		.file	"Webserver.cpp"
  15              		.section	.text._ZN19ProtocolInterpreterD2Ev,"axG",%progbits,_ZN19ProtocolInterpreterD5Ev,comdat
  16              		.align	2
  17              		.weak	_ZN19ProtocolInterpreterD2Ev
  18              		.thumb
  19              		.thumb_func
  20              		.type	_ZN19ProtocolInterpreterD2Ev, %function
  21              	_ZN19ProtocolInterpreterD2Ev:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 014B     		ldr	r3, .L2
  26 0002 0360     		str	r3, [r0]
  27 0004 7047     		bx	lr
  28              	.L3:
  29 0006 00BF     		.align	2
  30              	.L2:
  31 0008 08000000 		.word	.LANCHOR0+8
  32              		.size	_ZN19ProtocolInterpreterD2Ev, .-_ZN19ProtocolInterpreterD2Ev
  33              		.weak	_ZN19ProtocolInterpreterD1Ev
  34              		.thumb_set _ZN19ProtocolInterpreterD1Ev,_ZN19ProtocolInterpreterD2Ev
  35              		.section	.text._ZN19ProtocolInterpreter14ConnectionLostEP15ConnectionState,"axG",%progbits,_ZN19Pr
  36              		.align	2
  37              		.weak	_ZN19ProtocolInterpreter14ConnectionLostEP15ConnectionState
  38              		.thumb
  39              		.thumb_func
  40              		.type	_ZN19ProtocolInterpreter14ConnectionLostEP15ConnectionState, %function
  41              	_ZN19ProtocolInterpreter14ConnectionLostEP15ConnectionState:
  42              		@ args = 0, pretend = 0, frame = 0
  43              		@ frame_needed = 0, uses_anonymous_args = 0
  44              		@ link register save eliminated.
  45 0000 7047     		bx	lr
  46              		.size	_ZN19ProtocolInterpreter14ConnectionLostEP15ConnectionState, .-_ZN19ProtocolInterpreter14Con
  47 0002 00BF     		.section	.text._ZN19ProtocolInterpreter12CanParseDataEv,"axG",%progbits,_ZN19ProtocolInterpreter12
  48              		.align	2
  49              		.weak	_ZN19ProtocolInterpreter12CanParseDataEv
  50              		.thumb
  51              		.thumb_func
  52              		.type	_ZN19ProtocolInterpreter12CanParseDataEv, %function
  53              	_ZN19ProtocolInterpreter12CanParseDataEv:
  54              		@ args = 0, pretend = 0, frame = 0
  55              		@ frame_needed = 0, uses_anonymous_args = 0
  56              		@ link register save eliminated.
  57 0000 0120     		movs	r0, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 2


  58 0002 7047     		bx	lr
  59              		.size	_ZN19ProtocolInterpreter12CanParseDataEv, .-_ZN19ProtocolInterpreter12CanParseDataEv
  60              		.section	.text._ZNK19ProtocolInterpreter15DoingFastUploadEv,"axG",%progbits,_ZNK19ProtocolInterpre
  61              		.align	2
  62              		.weak	_ZNK19ProtocolInterpreter15DoingFastUploadEv
  63              		.thumb
  64              		.thumb_func
  65              		.type	_ZNK19ProtocolInterpreter15DoingFastUploadEv, %function
  66              	_ZNK19ProtocolInterpreter15DoingFastUploadEv:
  67              		@ args = 0, pretend = 0, frame = 0
  68              		@ frame_needed = 0, uses_anonymous_args = 0
  69              		@ link register save eliminated.
  70 0000 0020     		movs	r0, #0
  71 0002 7047     		bx	lr
  72              		.size	_ZNK19ProtocolInterpreter15DoingFastUploadEv, .-_ZNK19ProtocolInterpreter15DoingFastUploadEv
  73              		.section	.text._ZN9Webserver17TelnetInterpreterD2Ev,"axG",%progbits,_ZN9Webserver17TelnetInterpret
  74              		.align	2
  75              		.weak	_ZN9Webserver17TelnetInterpreterD2Ev
  76              		.thumb
  77              		.thumb_func
  78              		.type	_ZN9Webserver17TelnetInterpreterD2Ev, %function
  79              	_ZN9Webserver17TelnetInterpreterD2Ev:
  80              		@ args = 0, pretend = 0, frame = 0
  81              		@ frame_needed = 0, uses_anonymous_args = 0
  82              		@ link register save eliminated.
  83 0000 014B     		ldr	r3, .L8
  84 0002 0360     		str	r3, [r0]
  85 0004 7047     		bx	lr
  86              	.L9:
  87 0006 00BF     		.align	2
  88              	.L8:
  89 0008 08000000 		.word	.LANCHOR0+8
  90              		.size	_ZN9Webserver17TelnetInterpreterD2Ev, .-_ZN9Webserver17TelnetInterpreterD2Ev
  91              		.weak	_ZN9Webserver17TelnetInterpreterD1Ev
  92              		.thumb_set _ZN9Webserver17TelnetInterpreterD1Ev,_ZN9Webserver17TelnetInterpreterD2Ev
  93              		.section	.text._ZN9Webserver14FtpInterpreterD2Ev,"axG",%progbits,_ZN9Webserver14FtpInterpreterD5Ev
  94              		.align	2
  95              		.weak	_ZN9Webserver14FtpInterpreterD2Ev
  96              		.thumb
  97              		.thumb_func
  98              		.type	_ZN9Webserver14FtpInterpreterD2Ev, %function
  99              	_ZN9Webserver14FtpInterpreterD2Ev:
 100              		@ args = 0, pretend = 0, frame = 0
 101              		@ frame_needed = 0, uses_anonymous_args = 0
 102              		@ link register save eliminated.
 103 0000 014B     		ldr	r3, .L11
 104 0002 0360     		str	r3, [r0]
 105 0004 7047     		bx	lr
 106              	.L12:
 107 0006 00BF     		.align	2
 108              	.L11:
 109 0008 08000000 		.word	.LANCHOR0+8
 110              		.size	_ZN9Webserver14FtpInterpreterD2Ev, .-_ZN9Webserver14FtpInterpreterD2Ev
 111              		.weak	_ZN9Webserver14FtpInterpreterD1Ev
 112              		.thumb_set _ZN9Webserver14FtpInterpreterD1Ev,_ZN9Webserver14FtpInterpreterD2Ev
 113              		.section	.text._ZN9Webserver15HttpInterpreterD2Ev,"axG",%progbits,_ZN9Webserver15HttpInterpreterD5
 114              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 3


 115              		.weak	_ZN9Webserver15HttpInterpreterD2Ev
 116              		.thumb
 117              		.thumb_func
 118              		.type	_ZN9Webserver15HttpInterpreterD2Ev, %function
 119              	_ZN9Webserver15HttpInterpreterD2Ev:
 120              		@ args = 0, pretend = 0, frame = 0
 121              		@ frame_needed = 0, uses_anonymous_args = 0
 122              		@ link register save eliminated.
 123 0000 014B     		ldr	r3, .L14
 124 0002 0360     		str	r3, [r0]
 125 0004 7047     		bx	lr
 126              	.L15:
 127 0006 00BF     		.align	2
 128              	.L14:
 129 0008 08000000 		.word	.LANCHOR0+8
 130              		.size	_ZN9Webserver15HttpInterpreterD2Ev, .-_ZN9Webserver15HttpInterpreterD2Ev
 131              		.weak	_ZN9Webserver15HttpInterpreterD1Ev
 132              		.thumb_set _ZN9Webserver15HttpInterpreterD1Ev,_ZN9Webserver15HttpInterpreterD2Ev
 133              		.section	.text._ZN19ProtocolInterpreterD0Ev,"axG",%progbits,_ZN19ProtocolInterpreterD0Ev,comdat
 134              		.align	2
 135              		.weak	_ZN19ProtocolInterpreterD0Ev
 136              		.thumb
 137              		.thumb_func
 138              		.type	_ZN19ProtocolInterpreterD0Ev, %function
 139              	_ZN19ProtocolInterpreterD0Ev:
 140              		@ args = 0, pretend = 0, frame = 0
 141              		@ frame_needed = 0, uses_anonymous_args = 0
 142 0000 10B5     		push	{r4, lr}
 143 0002 034B     		ldr	r3, .L17
 144 0004 0446     		mov	r4, r0
 145 0006 0360     		str	r3, [r0]
 146 0008 FFF7FEFF 		bl	_ZdlPv
 147 000c 2046     		mov	r0, r4
 148 000e 10BD     		pop	{r4, pc}
 149              	.L18:
 150              		.align	2
 151              	.L17:
 152 0010 08000000 		.word	.LANCHOR0+8
 153              		.size	_ZN19ProtocolInterpreterD0Ev, .-_ZN19ProtocolInterpreterD0Ev
 154              		.section	.text._ZN9Webserver17TelnetInterpreterD0Ev,"axG",%progbits,_ZN9Webserver17TelnetInterpret
 155              		.align	2
 156              		.weak	_ZN9Webserver17TelnetInterpreterD0Ev
 157              		.thumb
 158              		.thumb_func
 159              		.type	_ZN9Webserver17TelnetInterpreterD0Ev, %function
 160              	_ZN9Webserver17TelnetInterpreterD0Ev:
 161              		@ args = 0, pretend = 0, frame = 0
 162              		@ frame_needed = 0, uses_anonymous_args = 0
 163 0000 10B5     		push	{r4, lr}
 164 0002 034B     		ldr	r3, .L20
 165 0004 0446     		mov	r4, r0
 166 0006 0360     		str	r3, [r0]
 167 0008 FFF7FEFF 		bl	_ZdlPv
 168 000c 2046     		mov	r0, r4
 169 000e 10BD     		pop	{r4, pc}
 170              	.L21:
 171              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 4


 172              	.L20:
 173 0010 08000000 		.word	.LANCHOR0+8
 174              		.size	_ZN9Webserver17TelnetInterpreterD0Ev, .-_ZN9Webserver17TelnetInterpreterD0Ev
 175              		.section	.text._ZN9Webserver14FtpInterpreterD0Ev,"axG",%progbits,_ZN9Webserver14FtpInterpreterD0Ev
 176              		.align	2
 177              		.weak	_ZN9Webserver14FtpInterpreterD0Ev
 178              		.thumb
 179              		.thumb_func
 180              		.type	_ZN9Webserver14FtpInterpreterD0Ev, %function
 181              	_ZN9Webserver14FtpInterpreterD0Ev:
 182              		@ args = 0, pretend = 0, frame = 0
 183              		@ frame_needed = 0, uses_anonymous_args = 0
 184 0000 10B5     		push	{r4, lr}
 185 0002 034B     		ldr	r3, .L23
 186 0004 0446     		mov	r4, r0
 187 0006 0360     		str	r3, [r0]
 188 0008 FFF7FEFF 		bl	_ZdlPv
 189 000c 2046     		mov	r0, r4
 190 000e 10BD     		pop	{r4, pc}
 191              	.L24:
 192              		.align	2
 193              	.L23:
 194 0010 08000000 		.word	.LANCHOR0+8
 195              		.size	_ZN9Webserver14FtpInterpreterD0Ev, .-_ZN9Webserver14FtpInterpreterD0Ev
 196              		.section	.text._ZN9Webserver15HttpInterpreterD0Ev,"axG",%progbits,_ZN9Webserver15HttpInterpreterD0
 197              		.align	2
 198              		.weak	_ZN9Webserver15HttpInterpreterD0Ev
 199              		.thumb
 200              		.thumb_func
 201              		.type	_ZN9Webserver15HttpInterpreterD0Ev, %function
 202              	_ZN9Webserver15HttpInterpreterD0Ev:
 203              		@ args = 0, pretend = 0, frame = 0
 204              		@ frame_needed = 0, uses_anonymous_args = 0
 205 0000 10B5     		push	{r4, lr}
 206 0002 034B     		ldr	r3, .L26
 207 0004 0446     		mov	r4, r0
 208 0006 0360     		str	r3, [r0]
 209 0008 FFF7FEFF 		bl	_ZdlPv
 210 000c 2046     		mov	r0, r4
 211 000e 10BD     		pop	{r4, pc}
 212              	.L27:
 213              		.align	2
 214              	.L26:
 215 0010 08000000 		.word	.LANCHOR0+8
 216              		.size	_ZN9Webserver15HttpInterpreterD0Ev, .-_ZN9Webserver15HttpInterpreterD0Ev
 217              		.section	.text._ZN9Webserver15HttpInterpreter11DiagnosticsE11MessageType,"ax",%progbits
 218              		.align	2
 219              		.global	_ZN9Webserver15HttpInterpreter11DiagnosticsE11MessageType
 220              		.thumb
 221              		.thumb_func
 222              		.type	_ZN9Webserver15HttpInterpreter11DiagnosticsE11MessageType, %function
 223              	_ZN9Webserver15HttpInterpreter11DiagnosticsE11MessageType:
 224              		@ args = 0, pretend = 0, frame = 0
 225              		@ frame_needed = 0, uses_anonymous_args = 0
 226 0000 00B5     		push	{lr}
 227 0002 0346     		mov	r3, r0
 228 0004 83B0     		sub	sp, sp, #12
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 5


 229 0006 0822     		movs	r2, #8
 230 0008 4068     		ldr	r0, [r0, #4]
 231 000a 93F86837 		ldrb	r3, [r3, #1896]	@ zero_extendqisi2
 232 000e 0092     		str	r2, [sp]
 233 0010 024A     		ldr	r2, .L29
 234 0012 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 235 0016 03B0     		add	sp, sp, #12
 236              		@ sp needed
 237 0018 5DF804FB 		ldr	pc, [sp], #4
 238              	.L30:
 239              		.align	2
 240              	.L29:
 241 001c 00000000 		.word	.LC0
 242              		.size	_ZN9Webserver15HttpInterpreter11DiagnosticsE11MessageType, .-_ZN9Webserver15HttpInterpreter1
 243              		.section	.text._ZN9Webserver14FtpInterpreter11DiagnosticsE11MessageType,"ax",%progbits
 244              		.align	2
 245              		.global	_ZN9Webserver14FtpInterpreter11DiagnosticsE11MessageType
 246              		.thumb
 247              		.thumb_func
 248              		.type	_ZN9Webserver14FtpInterpreter11DiagnosticsE11MessageType, %function
 249              	_ZN9Webserver14FtpInterpreter11DiagnosticsE11MessageType:
 250              		@ args = 0, pretend = 0, frame = 0
 251              		@ frame_needed = 0, uses_anonymous_args = 0
 252 0000 00B5     		push	{lr}
 253 0002 0246     		mov	r2, r0
 254 0004 92F87D30 		ldrb	r3, [r2, #125]	@ zero_extendqisi2
 255 0008 92F87C20 		ldrb	r2, [r2, #124]	@ zero_extendqisi2
 256 000c 83B0     		sub	sp, sp, #12
 257 000e 4068     		ldr	r0, [r0, #4]
 258 0010 0092     		str	r2, [sp]
 259 0012 034A     		ldr	r2, .L32
 260 0014 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 261 0018 03B0     		add	sp, sp, #12
 262              		@ sp needed
 263 001a 5DF804FB 		ldr	pc, [sp], #4
 264              	.L33:
 265 001e 00BF     		.align	2
 266              	.L32:
 267 0020 1C000000 		.word	.LC1
 268              		.size	_ZN9Webserver14FtpInterpreter11DiagnosticsE11MessageType, .-_ZN9Webserver14FtpInterpreter11D
 269              		.section	.text._ZN9Webserver17TelnetInterpreter11DiagnosticsE11MessageType,"ax",%progbits
 270              		.align	2
 271              		.global	_ZN9Webserver17TelnetInterpreter11DiagnosticsE11MessageType
 272              		.thumb
 273              		.thumb_func
 274              		.type	_ZN9Webserver17TelnetInterpreter11DiagnosticsE11MessageType, %function
 275              	_ZN9Webserver17TelnetInterpreter11DiagnosticsE11MessageType:
 276              		@ args = 0, pretend = 0, frame = 0
 277              		@ frame_needed = 0, uses_anonymous_args = 0
 278 0000 00B5     		push	{lr}
 279 0002 0246     		mov	r2, r0
 280 0004 92F87D30 		ldrb	r3, [r2, #125]	@ zero_extendqisi2
 281 0008 92F87C20 		ldrb	r2, [r2, #124]	@ zero_extendqisi2
 282 000c 83B0     		sub	sp, sp, #12
 283 000e 4068     		ldr	r0, [r0, #4]
 284 0010 0092     		str	r2, [sp]
 285 0012 034A     		ldr	r2, .L35
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 6


 286 0014 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 287 0018 03B0     		add	sp, sp, #12
 288              		@ sp needed
 289 001a 5DF804FB 		ldr	pc, [sp], #4
 290              	.L36:
 291 001e 00BF     		.align	2
 292              	.L35:
 293 0020 3C000000 		.word	.LC2
 294              		.size	_ZN9Webserver17TelnetInterpreter11DiagnosticsE11MessageType, .-_ZN9Webserver17TelnetInterpre
 295              		.section	.text._ZN19ProtocolInterpreter21ConnectionEstablishedEv,"ax",%progbits
 296              		.align	2
 297              		.global	_ZN19ProtocolInterpreter21ConnectionEstablishedEv
 298              		.thumb
 299              		.thumb_func
 300              		.type	_ZN19ProtocolInterpreter21ConnectionEstablishedEv, %function
 301              	_ZN19ProtocolInterpreter21ConnectionEstablishedEv:
 302              		@ args = 0, pretend = 0, frame = 0
 303              		@ frame_needed = 0, uses_anonymous_args = 0
 304              		@ link register save eliminated.
 305 0000 8368     		ldr	r3, [r0, #8]
 306 0002 9869     		ldr	r0, [r3, #24]
 307 0004 FFF7FEBF 		b	_ZN18NetworkTransaction7DiscardEv
 308              		.size	_ZN19ProtocolInterpreter21ConnectionEstablishedEv, .-_ZN19ProtocolInterpreter21ConnectionEst
 309              		.section	.text._ZN19ProtocolInterpreter19NoMoreDataAvailableEv,"ax",%progbits
 310              		.align	2
 311              		.global	_ZN19ProtocolInterpreter19NoMoreDataAvailableEv
 312              		.thumb
 313              		.thumb_func
 314              		.type	_ZN19ProtocolInterpreter19NoMoreDataAvailableEv, %function
 315              	_ZN19ProtocolInterpreter19NoMoreDataAvailableEv:
 316              		@ args = 0, pretend = 0, frame = 0
 317              		@ frame_needed = 0, uses_anonymous_args = 0
 318              		@ link register save eliminated.
 319 0000 8368     		ldr	r3, [r0, #8]
 320 0002 9869     		ldr	r0, [r3, #24]
 321 0004 FFF7FEBF 		b	_ZN18NetworkTransaction7DiscardEv
 322              		.size	_ZN19ProtocolInterpreter19NoMoreDataAvailableEv, .-_ZN19ProtocolInterpreter19NoMoreDataAvail
 323              		.section	.text._ZN19ProtocolInterpreter12DoFastUploadEv,"ax",%progbits
 324              		.align	2
 325              		.global	_ZN19ProtocolInterpreter12DoFastUploadEv
 326              		.thumb
 327              		.thumb_func
 328              		.type	_ZN19ProtocolInterpreter12DoFastUploadEv, %function
 329              	_ZN19ProtocolInterpreter12DoFastUploadEv:
 330              		@ args = 0, pretend = 0, frame = 8
 331              		@ frame_needed = 0, uses_anonymous_args = 0
 332 0000 30B5     		push	{r4, r5, lr}
 333 0002 8368     		ldr	r3, [r0, #8]
 334 0004 83B0     		sub	sp, sp, #12
 335 0006 9D69     		ldr	r5, [r3, #24]
 336 0008 0446     		mov	r4, r0
 337 000a 6946     		mov	r1, sp
 338 000c 01AA     		add	r2, sp, #4
 339 000e 2846     		mov	r0, r5
 340 0010 FFF7FEFF 		bl	_ZN18NetworkTransaction10ReadBufferERPKcRj
 341 0014 90B1     		cbz	r0, .L49
 342 0016 1E4B     		ldr	r3, .L64
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 7


 343 0018 B3F84030 		ldrh	r3, [r3, #64]
 344 001c 5B07     		lsls	r3, r3, #29
 345 001e 2FD4     		bmi	.L61
 346              	.L43:
 347 0020 E068     		ldr	r0, [r4, #12]
 348 0022 FFF7FEFF 		bl	_ZN7Network6UnlockEv
 349 0026 9DE80600 		ldmia	sp, {r1, r2}
 350 002a 6069     		ldr	r0, [r4, #20]
 351 002c FFF7FEFF 		bl	_ZN9FileStore5WriteEPKcj
 352 0030 88B1     		cbz	r0, .L62
 353              	.L50:
 354 0032 E068     		ldr	r0, [r4, #12]
 355 0034 FFF7FEFF 		bl	_ZN7Network4LockEv
 356 0038 0028     		cmp	r0, #0
 357 003a FAD0     		beq	.L50
 358              	.L49:
 359 003c 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 360 003e 012B     		cmp	r3, #1
 361 0040 04D0     		beq	.L63
 362              	.L41:
 363 0042 2846     		mov	r0, r5
 364 0044 FFF7FEFF 		bl	_ZN18NetworkTransaction7DiscardEv
 365 0048 03B0     		add	sp, sp, #12
 366              		@ sp needed
 367 004a 30BD     		pop	{r4, r5, pc}
 368              	.L63:
 369 004c 2B69     		ldr	r3, [r5, #16]
 370 004e 002B     		cmp	r3, #0
 371 0050 F7D0     		beq	.L41
 372 0052 03B0     		add	sp, sp, #12
 373              		@ sp needed
 374 0054 30BD     		pop	{r4, r5, pc}
 375              	.L62:
 376 0056 6068     		ldr	r0, [r4, #4]
 377 0058 0621     		movs	r1, #6
 378 005a 0E4A     		ldr	r2, .L64+4
 379 005c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 380 0060 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 381 0062 012B     		cmp	r3, #1
 382 0064 04BF     		itt	eq
 383 0066 0223     		moveq	r3, #2
 384 0068 2374     		strbeq	r3, [r4, #16]
 385              	.L47:
 386 006a E068     		ldr	r0, [r4, #12]
 387 006c FFF7FEFF 		bl	_ZN7Network4LockEv
 388 0070 0028     		cmp	r0, #0
 389 0072 FAD0     		beq	.L47
 390 0074 2846     		mov	r0, r5
 391 0076 0021     		movs	r1, #0
 392 0078 FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 393 007c 03B0     		add	sp, sp, #12
 394              		@ sp needed
 395 007e 30BD     		pop	{r4, r5, pc}
 396              	.L61:
 397 0080 6068     		ldr	r0, [r4, #4]
 398 0082 0221     		movs	r1, #2
 399 0084 044A     		ldr	r2, .L64+8
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 8


 400 0086 019B     		ldr	r3, [sp, #4]
 401 0088 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 402 008c C8E7     		b	.L43
 403              	.L65:
 404 008e 00BF     		.align	2
 405              	.L64:
 406 0090 00000000 		.word	reprap
 407 0094 84000000 		.word	.LC4
 408 0098 60000000 		.word	.LC3
 409              		.size	_ZN19ProtocolInterpreter12DoFastUploadEv, .-_ZN19ProtocolInterpreter12DoFastUploadEv
 410              		.section	.text._ZNK9Webserver15HttpInterpreter15DoingFastUploadEv,"ax",%progbits
 411              		.align	2
 412              		.global	_ZNK9Webserver15HttpInterpreter15DoingFastUploadEv
 413              		.thumb
 414              		.thumb_func
 415              		.type	_ZNK9Webserver15HttpInterpreter15DoingFastUploadEv, %function
 416              	_ZNK9Webserver15HttpInterpreter15DoingFastUploadEv:
 417              		@ args = 0, pretend = 0, frame = 0
 418              		@ frame_needed = 0, uses_anonymous_args = 0
 419 0000 8368     		ldr	r3, [r0, #8]
 420 0002 70B5     		push	{r4, r5, r6, lr}
 421 0004 0646     		mov	r6, r0
 422 0006 9869     		ldr	r0, [r3, #24]
 423 0008 FFF7FEFF 		bl	_ZNK18NetworkTransaction11GetRemoteIPEv
 424 000c B368     		ldr	r3, [r6, #8]
 425 000e 0546     		mov	r5, r0
 426 0010 9869     		ldr	r0, [r3, #24]
 427 0012 FFF7FEFF 		bl	_ZNK18NetworkTransaction13GetRemotePortEv
 428 0016 96F86847 		ldrb	r4, [r6, #1896]	@ zero_extendqisi2
 429 001a DCB1     		cbz	r4, .L70
 430 001c 3346     		mov	r3, r6
 431 001e 0022     		movs	r2, #0
 432 0020 04E0     		b	.L69
 433              	.L68:
 434 0022 0132     		adds	r2, r2, #1
 435 0024 A242     		cmp	r2, r4
 436 0026 03F10C03 		add	r3, r3, #12
 437 002a 11D2     		bcs	.L76
 438              	.L69:
 439 002c D3F80817 		ldr	r1, [r3, #1800]
 440 0030 A942     		cmp	r1, r5
 441 0032 F6D1     		bne	.L68
 442 0034 93F81017 		ldrb	r1, [r3, #1808]	@ zero_extendqisi2
 443 0038 0029     		cmp	r1, #0
 444 003a F2D0     		beq	.L68
 445 003c 02EB4202 		add	r2, r2, r2, lsl #1
 446 0040 06EB8206 		add	r6, r6, r2, lsl #2
 447 0044 B6F81237 		ldrh	r3, [r6, #1810]
 448 0048 1B1A     		subs	r3, r3, r0
 449 004a 5842     		rsbs	r0, r3, #0
 450 004c 5841     		adcs	r0, r0, r3
 451 004e 70BD     		pop	{r4, r5, r6, pc}
 452              	.L76:
 453 0050 0020     		movs	r0, #0
 454 0052 70BD     		pop	{r4, r5, r6, pc}
 455              	.L70:
 456 0054 2046     		mov	r0, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 9


 457 0056 70BD     		pop	{r4, r5, r6, pc}
 458              		.size	_ZNK9Webserver15HttpInterpreter15DoingFastUploadEv, .-_ZNK9Webserver15HttpInterpreter15Doing
 459              		.section	.text._ZN9Webserver17TelnetInterpreter21ConnectionEstablishedEv,"ax",%progbits
 460              		.align	2
 461              		.global	_ZN9Webserver17TelnetInterpreter21ConnectionEstablishedEv
 462              		.thumb
 463              		.thumb_func
 464              		.type	_ZN9Webserver17TelnetInterpreter21ConnectionEstablishedEv, %function
 465              	_ZN9Webserver17TelnetInterpreter21ConnectionEstablishedEv:
 466              		@ args = 0, pretend = 0, frame = 0
 467              		@ frame_needed = 0, uses_anonymous_args = 0
 468 0000 70B5     		push	{r4, r5, r6, lr}
 469 0002 90F87D30 		ldrb	r3, [r0, #125]	@ zero_extendqisi2
 470 0006 0446     		mov	r4, r0
 471 0008 0133     		adds	r3, r3, #1
 472 000a C068     		ldr	r0, [r0, #12]
 473 000c 0021     		movs	r1, #0
 474 000e 84F87D30 		strb	r3, [r4, #125]
 475 0012 FFF7FEFF 		bl	_ZN7Network14GetTransactionEPK15ConnectionState
 476 0016 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 477 001a 0546     		mov	r5, r0
 478 001c 0BBB     		cbnz	r3, .L80
 479 001e 0126     		movs	r6, #1
 480 0020 84F87C60 		strb	r6, [r4, #124]
 481 0024 FFF7FEFF 		bl	millis
 482 0028 C4F88000 		str	r0, [r4, #128]
 483 002c 1148     		ldr	r0, .L82
 484 002e FFF7FEFF 		bl	_ZNK6RepRap13NoPasswordSetEv
 485 0032 88B9     		cbnz	r0, .L81
 486 0034 2846     		mov	r0, r5
 487 0036 1049     		ldr	r1, .L82+4
 488 0038 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 489 003c 2846     		mov	r0, r5
 490 003e 0F49     		ldr	r1, .L82+8
 491 0040 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 492 0044 2846     		mov	r0, r5
 493 0046 0E49     		ldr	r1, .L82+12
 494 0048 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 495 004c 2846     		mov	r0, r5
 496 004e 3146     		mov	r1, r6
 497 0050 BDE87040 		pop	{r4, r5, r6, lr}
 498 0054 FFF7FEBF 		b	_ZN18NetworkTransaction6CommitEb
 499              	.L81:
 500 0058 2846     		mov	r0, r5
 501 005a BDE87040 		pop	{r4, r5, r6, lr}
 502 005e FFF7FEBF 		b	_ZN18NetworkTransaction7DiscardEv
 503              	.L80:
 504 0062 0849     		ldr	r1, .L82+16
 505 0064 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 506 0068 2846     		mov	r0, r5
 507 006a 0021     		movs	r1, #0
 508 006c BDE87040 		pop	{r4, r5, r6, lr}
 509 0070 FFF7FEBF 		b	_ZN18NetworkTransaction6CommitEb
 510              	.L83:
 511              		.align	2
 512              	.L82:
 513 0074 00000000 		.word	reprap
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 10


 514 0078 EC000000 		.word	.LC6
 515 007c 10010000 		.word	.LC7
 516 0080 30010000 		.word	.LC8
 517 0084 AC000000 		.word	.LC5
 518              		.size	_ZN9Webserver17TelnetInterpreter21ConnectionEstablishedEv, .-_ZN9Webserver17TelnetInterprete
 519              		.section	.text._ZNK9Webserver14FtpInterpreter15DoingFastUploadEv,"ax",%progbits
 520              		.align	2
 521              		.global	_ZNK9Webserver14FtpInterpreter15DoingFastUploadEv
 522              		.thumb
 523              		.thumb_func
 524              		.type	_ZNK9Webserver14FtpInterpreter15DoingFastUploadEv, %function
 525              	_ZNK9Webserver14FtpInterpreter15DoingFastUploadEv:
 526              		@ args = 0, pretend = 0, frame = 0
 527              		@ frame_needed = 0, uses_anonymous_args = 0
 528 0000 10B5     		push	{r4, lr}
 529 0002 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 530 0004 0BB9     		cbnz	r3, .L87
 531 0006 1846     		mov	r0, r3
 532 0008 10BD     		pop	{r4, pc}
 533              	.L87:
 534 000a 8368     		ldr	r3, [r0, #8]
 535 000c 9869     		ldr	r0, [r3, #24]
 536 000e FFF7FEFF 		bl	_ZNK18NetworkTransaction12GetLocalPortEv
 537 0012 0446     		mov	r4, r0
 538 0014 FFF7FEFF 		bl	_ZN7Network11GetDataPortEv
 539 0018 231A     		subs	r3, r4, r0
 540 001a 5842     		rsbs	r0, r3, #0
 541 001c 5841     		adcs	r0, r0, r3
 542 001e 10BD     		pop	{r4, pc}
 543              		.size	_ZNK9Webserver14FtpInterpreter15DoingFastUploadEv, .-_ZNK9Webserver14FtpInterpreter15DoingFa
 544              		.section	.text._ZN19ProtocolInterpreter4SpinEv.part.8,"ax",%progbits
 545              		.align	2
 546              		.thumb
 547              		.thumb_func
 548              		.type	_ZN19ProtocolInterpreter4SpinEv.part.8, %function
 549              	_ZN19ProtocolInterpreter4SpinEv.part.8:
 550              		@ args = 0, pretend = 0, frame = 0
 551              		@ frame_needed = 0, uses_anonymous_args = 0
 552 0000 10B5     		push	{r4, lr}
 553 0002 0446     		mov	r4, r0
 554 0004 4069     		ldr	r0, [r0, #20]
 555 0006 18B1     		cbz	r0, .L89
 556 0008 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 557 000c 0023     		movs	r3, #0
 558 000e 6361     		str	r3, [r4, #20]
 559              	.L89:
 560 0010 237E     		ldrb	r3, [r4, #24]	@ zero_extendqisi2
 561 0012 1BB9     		cbnz	r3, .L97
 562 0014 0023     		movs	r3, #0
 563 0016 2376     		strb	r3, [r4, #24]
 564 0018 2374     		strb	r3, [r4, #16]
 565 001a 10BD     		pop	{r4, pc}
 566              	.L97:
 567 001c 6368     		ldr	r3, [r4, #4]
 568 001e 0549     		ldr	r1, .L98
 569 0020 D3F8B406 		ldr	r0, [r3, #1716]
 570 0024 04F11802 		add	r2, r4, #24
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 11


 571 0028 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_
 572 002c 0023     		movs	r3, #0
 573 002e 2376     		strb	r3, [r4, #24]
 574 0030 2374     		strb	r3, [r4, #16]
 575 0032 10BD     		pop	{r4, pc}
 576              	.L99:
 577              		.align	2
 578              	.L98:
 579 0034 34010000 		.word	.LC9
 580              		.size	_ZN19ProtocolInterpreter4SpinEv.part.8, .-_ZN19ProtocolInterpreter4SpinEv.part.8
 581              		.section	.text._ZN19ProtocolInterpreter4SpinEv,"ax",%progbits
 582              		.align	2
 583              		.global	_ZN19ProtocolInterpreter4SpinEv
 584              		.thumb
 585              		.thumb_func
 586              		.type	_ZN19ProtocolInterpreter4SpinEv, %function
 587              	_ZN19ProtocolInterpreter4SpinEv:
 588              		@ args = 0, pretend = 0, frame = 0
 589              		@ frame_needed = 0, uses_anonymous_args = 0
 590              		@ link register save eliminated.
 591 0000 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 592 0002 022B     		cmp	r3, #2
 593 0004 00D0     		beq	.L102
 594 0006 7047     		bx	lr
 595              	.L102:
 596 0008 FFF7FEBF 		b	_ZN19ProtocolInterpreter4SpinEv.part.8
 597              		.size	_ZN19ProtocolInterpreter4SpinEv, .-_ZN19ProtocolInterpreter4SpinEv
 598              		.section	.text._ZN9Webserver15HttpInterpreter4SpinEv,"ax",%progbits
 599              		.align	2
 600              		.global	_ZN9Webserver15HttpInterpreter4SpinEv
 601              		.thumb
 602              		.thumb_func
 603              		.type	_ZN9Webserver15HttpInterpreter4SpinEv, %function
 604              	_ZN9Webserver15HttpInterpreter4SpinEv:
 605              		@ args = 0, pretend = 0, frame = 0
 606              		@ frame_needed = 0, uses_anonymous_args = 0
 607 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 608 0004 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 609 0006 0446     		mov	r4, r0
 610 0008 022B     		cmp	r3, #2
 611 000a 6FD0     		beq	.L133
 612              	.L104:
 613 000c FFF7FEFF 		bl	millis
 614 0010 94F86837 		ldrb	r3, [r4, #1896]	@ zero_extendqisi2
 615 0014 8246     		mov	r10, r0
 616 0016 5E1E     		subs	r6, r3, #1
 617 0018 002B     		cmp	r3, #0
 618 001a 4FD0     		beq	.L105
 619 001c 03EB4308 		add	r8, r3, r3, lsl #1
 620 0020 4FEA8808 		lsl	r8, r8, #2
 621 0024 A3EB8303 		sub	r3, r3, r3, lsl #2
 622 0028 08F5E16B 		add	fp, r8, #1800
 623 002c 4FEA8309 		lsl	r9, r3, #2
 624 0030 A344     		add	fp, fp, r4
 625 0032 0027     		movs	r7, #0
 626 0034 0EE0     		b	.L111
 627              	.L135:
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 12


 628 0036 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 629 0038 012B     		cmp	r3, #1
 630 003a 46D0     		beq	.L131
 631 003c 05F8047C 		strb	r7, [r5, #-4]
 632 0040 FFF7FEFF 		bl	millis
 633 0044 ABF10C0C 		sub	ip, fp, #12
 634 0048 45F8080C 		str	r0, [r5, #-8]
 635              	.L107:
 636 004c 013E     		subs	r6, r6, #1
 637 004e 731C     		adds	r3, r6, #1
 638 0050 E346     		mov	fp, ip
 639 0052 31D0     		beq	.L134
 640              	.L111:
 641 0054 0BEB0905 		add	r5, fp, r9
 642 0058 4544     		add	r5, r5, r8
 643 005a 15F8043C 		ldrb	r3, [r5, #-4]	@ zero_extendqisi2
 644 005e 002B     		cmp	r3, #0
 645 0060 E9D1     		bne	.L135
 646 0062 55F8083C 		ldr	r3, [r5, #-8]
 647 0066 C3EB0A03 		rsb	r3, r3, r10
 648 006a B3F5FA5F 		cmp	r3, #8000
 649 006e 2CD9     		bls	.L131
 650 0070 94F86857 		ldrb	r5, [r4, #1896]	@ zero_extendqisi2
 651 0074 711C     		adds	r1, r6, #1
 652 0076 ABF10C0C 		sub	ip, fp, #12
 653 007a 8D42     		cmp	r5, r1
 654 007c 88BF     		it	hi
 655 007e 6246     		movhi	r2, ip
 656 0080 0ED9     		bls	.L108
 657              	.L109:
 658 0082 1346     		mov	r3, r2
 659 0084 53F80CBF 		ldr	fp, [r3, #12]!	@ unaligned
 660 0088 0131     		adds	r1, r1, #1
 661 008a 9D68     		ldr	r5, [r3, #8]	@ unaligned
 662 008c 5868     		ldr	r0, [r3, #4]	@ unaligned
 663 008e C2F800B0 		str	fp, [r2]	@ unaligned
 664 0092 5060     		str	r0, [r2, #4]	@ unaligned
 665 0094 9560     		str	r5, [r2, #8]	@ unaligned
 666 0096 94F86857 		ldrb	r5, [r4, #1896]	@ zero_extendqisi2
 667 009a 1A46     		mov	r2, r3
 668 009c 8D42     		cmp	r5, r1
 669 009e F0D8     		bhi	.L109
 670              	.L108:
 671 00a0 94F86937 		ldrb	r3, [r4, #1897]	@ zero_extendqisi2
 672 00a4 013E     		subs	r6, r6, #1
 673 00a6 0133     		adds	r3, r3, #1
 674 00a8 013D     		subs	r5, r5, #1
 675 00aa 84F86937 		strb	r3, [r4, #1897]
 676 00ae 731C     		adds	r3, r6, #1
 677 00b0 84F86857 		strb	r5, [r4, #1896]
 678 00b4 E346     		mov	fp, ip
 679 00b6 CDD1     		bne	.L111
 680              	.L134:
 681 00b8 94F86837 		ldrb	r3, [r4, #1896]	@ zero_extendqisi2
 682              	.L105:
 683 00bc 63B1     		cbz	r3, .L132
 684 00be 94F86927 		ldrb	r2, [r4, #1897]	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 13


 685 00c2 9A42     		cmp	r2, r3
 686 00c4 08D2     		bcs	.L132
 687 00c6 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 688              	.L131:
 689 00ca ABF10C0C 		sub	ip, fp, #12
 690 00ce BDE7     		b	.L107
 691              	.L117:
 692 00d0 FFF7FEFF 		bl	_ZN11OutputStack3PopEv
 693 00d4 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllEPS_
 694              	.L132:
 695 00d8 D4F87007 		ldr	r0, [r4, #1904]
 696 00dc 0368     		ldr	r3, [r0]
 697 00de 002B     		cmp	r3, #0
 698 00e0 F6D1     		bne	.L117
 699 00e2 0023     		movs	r3, #0
 700 00e4 84F86937 		strb	r3, [r4, #1897]
 701 00e8 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 702              	.L133:
 703 00ec FFF7FEFF 		bl	_ZN19ProtocolInterpreter4SpinEv.part.8
 704 00f0 8CE7     		b	.L104
 705              		.size	_ZN9Webserver15HttpInterpreter4SpinEv, .-_ZN9Webserver15HttpInterpreter4SpinEv
 706 00f2 00BF     		.section	.text._ZN9Webserver15HttpInterpreter14ConnectionLostEP15ConnectionState,"ax",%progbits
 707              		.align	2
 708              		.global	_ZN9Webserver15HttpInterpreter14ConnectionLostEP15ConnectionState
 709              		.thumb
 710              		.thumb_func
 711              		.type	_ZN9Webserver15HttpInterpreter14ConnectionLostEP15ConnectionState, %function
 712              	_ZN9Webserver15HttpInterpreter14ConnectionLostEP15ConnectionState:
 713              		@ args = 0, pretend = 0, frame = 0
 714              		@ frame_needed = 0, uses_anonymous_args = 0
 715 0000 D0F88037 		ldr	r3, [r0, #1920]
 716 0004 70B5     		push	{r4, r5, r6, lr}
 717 0006 8B42     		cmp	r3, r1
 718 0008 0546     		mov	r5, r0
 719 000a 0C46     		mov	r4, r1
 720 000c 48D0     		beq	.L155
 721              	.L137:
 722 000e AB68     		ldr	r3, [r5, #8]
 723 0010 DB69     		ldr	r3, [r3, #28]
 724 0012 9C42     		cmp	r4, r3
 725 0014 34D0     		beq	.L156
 726              	.L138:
 727 0016 2B7C     		ldrb	r3, [r5, #16]	@ zero_extendqisi2
 728 0018 012B     		cmp	r3, #1
 729 001a 00D0     		beq	.L157
 730              	.L136:
 731 001c 70BD     		pop	{r4, r5, r6, pc}
 732              	.L157:
 733 001e 2046     		mov	r0, r4
 734 0020 FFF7FEFF 		bl	_ZN7Network11GetRemoteIPEP15ConnectionState
 735 0024 0646     		mov	r6, r0
 736 0026 2046     		mov	r0, r4
 737 0028 FFF7FEFF 		bl	_ZN7Network13GetRemotePortEP15ConnectionState
 738 002c 95F86817 		ldrb	r1, [r5, #1896]	@ zero_extendqisi2
 739 0030 0029     		cmp	r1, #0
 740 0032 F3D0     		beq	.L136
 741 0034 2B46     		mov	r3, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 14


 742 0036 0024     		movs	r4, #0
 743 0038 04E0     		b	.L144
 744              	.L142:
 745 003a 0134     		adds	r4, r4, #1
 746 003c 8C42     		cmp	r4, r1
 747 003e 03F10C03 		add	r3, r3, #12
 748 0042 EBD2     		bcs	.L136
 749              	.L144:
 750 0044 D3F80827 		ldr	r2, [r3, #1800]
 751 0048 9642     		cmp	r6, r2
 752 004a F6D1     		bne	.L142
 753 004c 93F81027 		ldrb	r2, [r3, #1808]	@ zero_extendqisi2
 754 0050 002A     		cmp	r2, #0
 755 0052 F2D0     		beq	.L142
 756 0054 B3F81227 		ldrh	r2, [r3, #1810]
 757 0058 8242     		cmp	r2, r0
 758 005a EED1     		bne	.L142
 759 005c 194B     		ldr	r3, .L159
 760 005e B3F84030 		ldrh	r3, [r3, #64]
 761 0062 5B07     		lsls	r3, r3, #29
 762 0064 26D4     		bmi	.L158
 763              	.L143:
 764 0066 2B7C     		ldrb	r3, [r5, #16]	@ zero_extendqisi2
 765 0068 04EB4404 		add	r4, r4, r4, lsl #1
 766 006c 05EB8402 		add	r2, r5, r4, lsl #2
 767 0070 0021     		movs	r1, #0
 768 0072 012B     		cmp	r3, #1
 769 0074 82F81017 		strb	r1, [r2, #1808]
 770 0078 D0D1     		bne	.L136
 771 007a 0223     		movs	r3, #2
 772 007c 2B74     		strb	r3, [r5, #16]
 773 007e 70BD     		pop	{r4, r5, r6, pc}
 774              	.L156:
 775 0080 0023     		movs	r3, #0
 776 0082 05F17D02 		add	r2, r5, #125
 777 0086 C5F83436 		str	r3, [r5, #1588]
 778 008a 85F87C30 		strb	r3, [r5, #124]
 779 008e C5F8FC36 		str	r3, [r5, #1788]
 780 0092 C5F80037 		str	r3, [r5, #1792]
 781 0096 C5F80437 		str	r3, [r5, #1796]
 782 009a C5F83C26 		str	r2, [r5, #1596]
 783 009e BAE7     		b	.L138
 784              	.L155:
 785 00a0 084B     		ldr	r3, .L159
 786 00a2 00F28471 		addw	r1, r0, #1924
 787 00a6 D869     		ldr	r0, [r3, #28]
 788 00a8 FFF7FEFF 		bl	_ZN12PrintMonitor11StopParsingEPKc
 789 00ac 0023     		movs	r3, #0
 790 00ae C5F88037 		str	r3, [r5, #1920]
 791 00b2 ACE7     		b	.L137
 792              	.L158:
 793 00b4 6868     		ldr	r0, [r5, #4]
 794 00b6 0221     		movs	r1, #2
 795 00b8 034A     		ldr	r2, .L159+4
 796 00ba 05F11803 		add	r3, r5, #24
 797 00be FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 798 00c2 D0E7     		b	.L143
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 15


 799              	.L160:
 800              		.align	2
 801              	.L159:
 802 00c4 00000000 		.word	reprap
 803 00c8 38010000 		.word	.LC10
 804              		.size	_ZN9Webserver15HttpInterpreter14ConnectionLostEP15ConnectionState, .-_ZN9Webserver15HttpInte
 805              		.section	.text._ZN9Webserver17TelnetInterpreter14ConnectionLostEP15ConnectionState,"ax",%progbits
 806              		.align	2
 807              		.global	_ZN9Webserver17TelnetInterpreter14ConnectionLostEP15ConnectionState
 808              		.thumb
 809              		.thumb_func
 810              		.type	_ZN9Webserver17TelnetInterpreter14ConnectionLostEP15ConnectionState, %function
 811              	_ZN9Webserver17TelnetInterpreter14ConnectionLostEP15ConnectionState:
 812              		@ args = 0, pretend = 0, frame = 0
 813              		@ frame_needed = 0, uses_anonymous_args = 0
 814 0000 38B5     		push	{r3, r4, r5, lr}
 815 0002 90F87D50 		ldrb	r5, [r0, #125]	@ zero_extendqisi2
 816 0006 0446     		mov	r4, r0
 817 0008 013D     		subs	r5, r5, #1
 818 000a EDB2     		uxtb	r5, r5
 819 000c 80F87D50 		strb	r5, [r0, #125]
 820 0010 5DB9     		cbnz	r5, .L161
 821 0012 D0F8F000 		ldr	r0, [r0, #240]
 822 0016 84F87C50 		strb	r5, [r4, #124]
 823 001a C4F88050 		str	r5, [r4, #128]
 824 001e C4F8EC50 		str	r5, [r4, #236]
 825 0022 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllEPS_
 826 0026 C4F8F050 		str	r5, [r4, #240]
 827              	.L161:
 828 002a 38BD     		pop	{r3, r4, r5, pc}
 829              		.size	_ZN9Webserver17TelnetInterpreter14ConnectionLostEP15ConnectionState, .-_ZN9Webserver17Telnet
 830              		.section	.text._ZN9Webserver4SpinEv,"ax",%progbits
 831              		.align	2
 832              		.global	_ZN9Webserver4SpinEv
 833              		.thumb
 834              		.thumb_func
 835              		.type	_ZN9Webserver4SpinEv, %function
 836              	_ZN9Webserver4SpinEv:
 837              		@ args = 0, pretend = 0, frame = 8
 838              		@ frame_needed = 0, uses_anonymous_args = 0
 839 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 840 0004 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 841 0006 84B0     		sub	sp, sp, #16
 842 0008 0446     		mov	r4, r0
 843 000a 002B     		cmp	r3, #0
 844 000c 71D0     		beq	.L164
 845 000e 0020     		movs	r0, #0
 846 0010 FFF7FEFF 		bl	_ZN12OutputBuffer12GetBytesLeftEPKS_
 847 0014 0028     		cmp	r0, #0
 848 0016 6CD0     		beq	.L164
 849 0018 2069     		ldr	r0, [r4, #16]
 850 001a FFF7FEFF 		bl	_ZN7Network4LockEv
 851 001e 0028     		cmp	r0, #0
 852 0020 67D0     		beq	.L164
 853 0022 2068     		ldr	r0, [r4]
 854 0024 0368     		ldr	r3, [r0]
 855 0026 DB68     		ldr	r3, [r3, #12]
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 16


 856 0028 9847     		blx	r3
 857 002a 6068     		ldr	r0, [r4, #4]
 858 002c 0368     		ldr	r3, [r0]
 859 002e DB68     		ldr	r3, [r3, #12]
 860 0030 9847     		blx	r3
 861 0032 A068     		ldr	r0, [r4, #8]
 862 0034 0368     		ldr	r3, [r0]
 863 0036 DB68     		ldr	r3, [r3, #12]
 864 0038 9847     		blx	r3
 865 003a E169     		ldr	r1, [r4, #28]
 866 003c 2069     		ldr	r0, [r4, #16]
 867 003e FFF7FEFF 		bl	_ZN7Network14GetTransactionEPK15ConnectionState
 868 0042 A061     		str	r0, [r4, #24]
 869 0044 0028     		cmp	r0, #0
 870 0046 63D0     		beq	.L168
 871 0048 FFF7FEFF 		bl	_ZNK18NetworkTransaction12GetLocalPortEv
 872 004c 0646     		mov	r6, r0
 873 004e FFF7FEFF 		bl	_ZN7Network11GetHttpPortEv
 874 0052 8642     		cmp	r6, r0
 875 0054 55D1     		bne	.L169
 876 0056 2568     		ldr	r5, [r4]
 877              	.L170:
 878 0058 3B4B     		ldr	r3, .L202
 879 005a B3F84030 		ldrh	r3, [r3, #64]
 880 005e 5B07     		lsls	r3, r3, #29
 881 0060 15D5     		bpl	.L172
 882 0062 A069     		ldr	r0, [r4, #24]
 883 0064 E768     		ldr	r7, [r4, #12]
 884 0066 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 885 006a DBB2     		uxtb	r3, r3
 886 006c 062B     		cmp	r3, #6
 887 006e 96BF     		itet	ls
 888 0070 364A     		ldrls	r2, .L202+4
 889 0072 DFF8E480 		ldrhi	r8, .L202+16
 890 0076 52F82380 		ldrls	r8, [r2, r3, lsl #2]
 891 007a FFF7FEFF 		bl	_ZNK18NetworkTransaction13GetRemotePortEv
 892 007e 0096     		str	r6, [sp]
 893 0080 0190     		str	r0, [sp, #4]
 894 0082 4346     		mov	r3, r8
 895 0084 3846     		mov	r0, r7
 896 0086 0221     		movs	r1, #2
 897 0088 314A     		ldr	r2, .L202+8
 898 008a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 899              	.L172:
 900 008e A069     		ldr	r0, [r4, #24]
 901 0090 90F82430 		ldrb	r3, [r0, #36]	@ zero_extendqisi2
 902 0094 DBB2     		uxtb	r3, r3
 903 0096 012B     		cmp	r3, #1
 904 0098 4DD0     		beq	.L197
 905 009a 042B     		cmp	r3, #4
 906 009c 48D0     		beq	.L198
 907 009e 2B68     		ldr	r3, [r5]
 908 00a0 2846     		mov	r0, r5
 909 00a2 5B6A     		ldr	r3, [r3, #36]
 910 00a4 9847     		blx	r3
 911 00a6 2B68     		ldr	r3, [r5]
 912 00a8 0028     		cmp	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 17


 913 00aa 3DD1     		bne	.L199
 914 00ac 2846     		mov	r0, r5
 915 00ae 9B69     		ldr	r3, [r3, #24]
 916 00b0 9847     		blx	r3
 917 00b2 D8B1     		cbz	r0, .L175
 918 00b4 A069     		ldr	r0, [r4, #24]
 919 00b6 4FF4F376 		mov	r6, #486
 920 00ba 0368     		ldr	r3, [r0]
 921 00bc E361     		str	r3, [r4, #28]
 922 00be 08E0     		b	.L183
 923              	.L201:
 924 00c0 9DF80F10 		ldrb	r1, [sp, #15]	@ zero_extendqisi2
 925 00c4 DB69     		ldr	r3, [r3, #28]
 926 00c6 9847     		blx	r3
 927 00c8 0028     		cmp	r0, #0
 928 00ca 39D1     		bne	.L200
 929 00cc 013E     		subs	r6, r6, #1
 930 00ce 0DD0     		beq	.L175
 931 00d0 A069     		ldr	r0, [r4, #24]
 932              	.L183:
 933 00d2 0DF10F01 		add	r1, sp, #15
 934 00d6 FFF7FEFF 		bl	_ZN18NetworkTransaction4ReadERc
 935 00da 0746     		mov	r7, r0
 936 00dc 2B68     		ldr	r3, [r5]
 937 00de 2846     		mov	r0, r5
 938 00e0 002F     		cmp	r7, #0
 939 00e2 EDD1     		bne	.L201
 940 00e4 2846     		mov	r0, r5
 941 00e6 1B6A     		ldr	r3, [r3, #32]
 942 00e8 9847     		blx	r3
 943 00ea E761     		str	r7, [r4, #28]
 944              	.L175:
 945 00ec 2069     		ldr	r0, [r4, #16]
 946 00ee FFF7FEFF 		bl	_ZN7Network6UnlockEv
 947              	.L164:
 948 00f2 E068     		ldr	r0, [r4, #12]
 949 00f4 04F12001 		add	r1, r4, #32
 950 00f8 FFF7FEFF 		bl	_ZN8Platform11ClassReportERf
 951 00fc 04B0     		add	sp, sp, #16
 952              		@ sp needed
 953 00fe BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 954              	.L169:
 955 0102 FFF7FEFF 		bl	_ZN7Network13GetTelnetPortEv
 956 0106 8642     		cmp	r6, r0
 957 0108 0CBF     		ite	eq
 958 010a A568     		ldreq	r5, [r4, #8]
 959 010c 6568     		ldrne	r5, [r4, #4]
 960 010e A3E7     		b	.L170
 961              	.L168:
 962 0110 E369     		ldr	r3, [r4, #28]
 963 0112 002B     		cmp	r3, #0
 964 0114 EAD0     		beq	.L175
 965 0116 E068     		ldr	r0, [r4, #12]
 966 0118 0221     		movs	r1, #2
 967 011a 0E4A     		ldr	r2, .L202+12
 968 011c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 969 0120 E069     		ldr	r0, [r4, #28]
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 18


 970 0122 FFF7FEFF 		bl	_ZN7Network9TerminateEP15ConnectionState
 971 0126 E1E7     		b	.L175
 972              	.L199:
 973 0128 2846     		mov	r0, r5
 974 012a 9B6A     		ldr	r3, [r3, #40]
 975 012c 9847     		blx	r3
 976 012e DDE7     		b	.L175
 977              	.L198:
 978 0130 FFF7FEFF 		bl	_ZN18NetworkTransaction7DiscardEv
 979 0134 DAE7     		b	.L175
 980              	.L197:
 981 0136 2B68     		ldr	r3, [r5]
 982 0138 2846     		mov	r0, r5
 983 013a 1B69     		ldr	r3, [r3, #16]
 984 013c 9847     		blx	r3
 985 013e D5E7     		b	.L175
 986              	.L200:
 987 0140 0023     		movs	r3, #0
 988 0142 E361     		str	r3, [r4, #28]
 989 0144 D2E7     		b	.L175
 990              	.L203:
 991 0146 00BF     		.align	2
 992              	.L202:
 993 0148 00000000 		.word	reprap
 994 014c 00000000 		.word	.LANCHOR4
 995 0150 6C010000 		.word	.LC12
 996 0154 B0010000 		.word	.LC13
 997 0158 64010000 		.word	.LC11
 998              		.size	_ZN9Webserver4SpinEv, .-_ZN9Webserver4SpinEv
 999              		.section	.text._ZN9Webserver4ExitEv,"ax",%progbits
 1000              		.align	2
 1001              		.global	_ZN9Webserver4ExitEv
 1002              		.thumb
 1003              		.thumb_func
 1004              		.type	_ZN9Webserver4ExitEv, %function
 1005              	_ZN9Webserver4ExitEv:
 1006              		@ args = 0, pretend = 0, frame = 0
 1007              		@ frame_needed = 0, uses_anonymous_args = 0
 1008 0000 0368     		ldr	r3, [r0]
 1009 0002 10B5     		push	{r4, lr}
 1010 0004 1A7C     		ldrb	r2, [r3, #16]	@ zero_extendqisi2
 1011 0006 0446     		mov	r4, r0
 1012 0008 012A     		cmp	r2, #1
 1013 000a 04BF     		itt	eq
 1014 000c 0222     		moveq	r2, #2
 1015 000e 1A74     		strbeq	r2, [r3, #16]
 1016 0010 4368     		ldr	r3, [r0, #4]
 1017 0012 0221     		movs	r1, #2
 1018 0014 1A7C     		ldrb	r2, [r3, #16]	@ zero_extendqisi2
 1019 0016 C068     		ldr	r0, [r0, #12]
 1020 0018 012A     		cmp	r2, #1
 1021 001a 04BF     		itt	eq
 1022 001c 0222     		moveq	r2, #2
 1023 001e 1A74     		strbeq	r2, [r3, #16]
 1024 0020 024A     		ldr	r2, .L207
 1025 0022 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1026 0026 0023     		movs	r3, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 19


 1027 0028 2375     		strb	r3, [r4, #20]
 1028 002a 10BD     		pop	{r4, pc}
 1029              	.L208:
 1030              		.align	2
 1031              	.L207:
 1032 002c E8010000 		.word	.LC14
 1033              		.size	_ZN9Webserver4ExitEv, .-_ZN9Webserver4ExitEv
 1034              		.section	.text._ZN9Webserver11DiagnosticsE11MessageType,"ax",%progbits
 1035              		.align	2
 1036              		.global	_ZN9Webserver11DiagnosticsE11MessageType
 1037              		.thumb
 1038              		.thumb_func
 1039              		.type	_ZN9Webserver11DiagnosticsE11MessageType, %function
 1040              	_ZN9Webserver11DiagnosticsE11MessageType:
 1041              		@ args = 0, pretend = 0, frame = 0
 1042              		@ frame_needed = 0, uses_anonymous_args = 0
 1043 0000 38B5     		push	{r3, r4, r5, lr}
 1044 0002 0B4A     		ldr	r2, .L210
 1045 0004 0446     		mov	r4, r0
 1046 0006 C068     		ldr	r0, [r0, #12]
 1047 0008 0D46     		mov	r5, r1
 1048 000a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1049 000e 2068     		ldr	r0, [r4]
 1050 0010 2946     		mov	r1, r5
 1051 0012 0368     		ldr	r3, [r0]
 1052 0014 9B68     		ldr	r3, [r3, #8]
 1053 0016 9847     		blx	r3
 1054 0018 6068     		ldr	r0, [r4, #4]
 1055 001a 2946     		mov	r1, r5
 1056 001c 0368     		ldr	r3, [r0]
 1057 001e 9B68     		ldr	r3, [r3, #8]
 1058 0020 9847     		blx	r3
 1059 0022 A068     		ldr	r0, [r4, #8]
 1060 0024 2946     		mov	r1, r5
 1061 0026 0368     		ldr	r3, [r0]
 1062 0028 9B68     		ldr	r3, [r3, #8]
 1063 002a 9847     		blx	r3
 1064 002c 38BD     		pop	{r3, r4, r5, pc}
 1065              	.L211:
 1066 002e 00BF     		.align	2
 1067              	.L210:
 1068 0030 04020000 		.word	.LC15
 1069              		.size	_ZN9Webserver11DiagnosticsE11MessageType, .-_ZN9Webserver11DiagnosticsE11MessageType
 1070              		.section	.text._ZN9Webserver14ConnectionLostEP15ConnectionState,"ax",%progbits
 1071              		.align	2
 1072              		.global	_ZN9Webserver14ConnectionLostEP15ConnectionState
 1073              		.thumb
 1074              		.thumb_func
 1075              		.type	_ZN9Webserver14ConnectionLostEP15ConnectionState, %function
 1076              	_ZN9Webserver14ConnectionLostEP15ConnectionState:
 1077              		@ args = 0, pretend = 0, frame = 0
 1078              		@ frame_needed = 0, uses_anonymous_args = 0
 1079 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1080 0004 0546     		mov	r5, r0
 1081 0006 82B0     		sub	sp, sp, #8
 1082 0008 0846     		mov	r0, r1
 1083 000a 0C46     		mov	r4, r1
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 20


 1084 000c FFF7FEFF 		bl	_ZN7Network12GetLocalPortEP15ConnectionState
 1085 0010 0646     		mov	r6, r0
 1086 0012 FFF7FEFF 		bl	_ZN7Network11GetHttpPortEv
 1087 0016 8642     		cmp	r6, r0
 1088 0018 1ED0     		beq	.L226
 1089 001a FFF7FEFF 		bl	_ZN7Network10GetFtpPortEv
 1090 001e B042     		cmp	r0, r6
 1091 0020 09D0     		beq	.L215
 1092 0022 FFF7FEFF 		bl	_ZN7Network11GetDataPortEv
 1093 0026 B042     		cmp	r0, r6
 1094 0028 05D0     		beq	.L215
 1095 002a FFF7FEFF 		bl	_ZN7Network13GetTelnetPortEv
 1096 002e 8642     		cmp	r6, r0
 1097 0030 2AD1     		bne	.L227
 1098 0032 AF68     		ldr	r7, [r5, #8]
 1099 0034 00E0     		b	.L214
 1100              	.L215:
 1101 0036 6F68     		ldr	r7, [r5, #4]
 1102              	.L214:
 1103 0038 184B     		ldr	r3, .L230
 1104 003a B3F84030 		ldrh	r3, [r3, #64]
 1105 003e 5B07     		lsls	r3, r3, #29
 1106 0040 10D4     		bmi	.L228
 1107              	.L217:
 1108 0042 3B68     		ldr	r3, [r7]
 1109 0044 3846     		mov	r0, r7
 1110 0046 5B69     		ldr	r3, [r3, #20]
 1111 0048 2146     		mov	r1, r4
 1112 004a 9847     		blx	r3
 1113 004c EB69     		ldr	r3, [r5, #28]
 1114 004e 9C42     		cmp	r4, r3
 1115 0050 15D0     		beq	.L229
 1116 0052 02B0     		add	sp, sp, #8
 1117              		@ sp needed
 1118 0054 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1119              	.L226:
 1120 0058 104B     		ldr	r3, .L230
 1121 005a 2F68     		ldr	r7, [r5]
 1122 005c B3F84030 		ldrh	r3, [r3, #64]
 1123 0060 5B07     		lsls	r3, r3, #29
 1124 0062 EED5     		bpl	.L217
 1125              	.L228:
 1126 0064 2046     		mov	r0, r4
 1127 0066 D5F80C80 		ldr	r8, [r5, #12]
 1128 006a FFF7FEFF 		bl	_ZN7Network13GetRemotePortEP15ConnectionState
 1129 006e 3346     		mov	r3, r6
 1130 0070 0090     		str	r0, [sp]
 1131 0072 0221     		movs	r1, #2
 1132 0074 4046     		mov	r0, r8
 1133 0076 0A4A     		ldr	r2, .L230+4
 1134 0078 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1135 007c E1E7     		b	.L217
 1136              	.L229:
 1137 007e 0023     		movs	r3, #0
 1138 0080 EB61     		str	r3, [r5, #28]
 1139 0082 02B0     		add	sp, sp, #8
 1140              		@ sp needed
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 21


 1141 0084 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1142              	.L227:
 1143 0088 E868     		ldr	r0, [r5, #12]
 1144 008a 064A     		ldr	r2, .L230+8
 1145 008c 3346     		mov	r3, r6
 1146 008e 0621     		movs	r1, #6
 1147 0090 02B0     		add	sp, sp, #8
 1148              		@ sp needed
 1149 0092 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 1150 0096 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 1151              	.L231:
 1152 009a 00BF     		.align	2
 1153              	.L230:
 1154 009c 00000000 		.word	reprap
 1155 00a0 78020000 		.word	.LC17
 1156 00a4 18020000 		.word	.LC16
 1157              		.size	_ZN9Webserver14ConnectionLostEP15ConnectionState, .-_ZN9Webserver14ConnectionLostEP15Connect
 1158              		.section	.text._ZN19ProtocolInterpreterC2EP8PlatformP9WebserverP7Network,"ax",%progbits
 1159              		.align	2
 1160              		.global	_ZN19ProtocolInterpreterC2EP8PlatformP9WebserverP7Network
 1161              		.thumb
 1162              		.thumb_func
 1163              		.type	_ZN19ProtocolInterpreterC2EP8PlatformP9WebserverP7Network, %function
 1164              	_ZN19ProtocolInterpreterC2EP8PlatformP9WebserverP7Network:
 1165              		@ args = 0, pretend = 0, frame = 0
 1166              		@ frame_needed = 0, uses_anonymous_args = 0
 1167              		@ link register save eliminated.
 1168 0000 70B4     		push	{r4, r5, r6}
 1169 0002 054E     		ldr	r6, .L233
 1170 0004 0025     		movs	r5, #0
 1171 0006 0660     		str	r6, [r0]
 1172 0008 4561     		str	r5, [r0, #20]
 1173 000a 0574     		strb	r5, [r0, #16]
 1174 000c 0576     		strb	r5, [r0, #24]
 1175 000e 4160     		str	r1, [r0, #4]
 1176 0010 8260     		str	r2, [r0, #8]
 1177 0012 C360     		str	r3, [r0, #12]
 1178 0014 70BC     		pop	{r4, r5, r6}
 1179 0016 7047     		bx	lr
 1180              	.L234:
 1181              		.align	2
 1182              	.L233:
 1183 0018 08000000 		.word	.LANCHOR0+8
 1184              		.size	_ZN19ProtocolInterpreterC2EP8PlatformP9WebserverP7Network, .-_ZN19ProtocolInterpreterC2EP8Pl
 1185              		.global	_ZN19ProtocolInterpreterC1EP8PlatformP9WebserverP7Network
 1186              		.thumb_set _ZN19ProtocolInterpreterC1EP8PlatformP9WebserverP7Network,_ZN19ProtocolInterpreterC2EP8
 1187              		.section	.text._ZN19ProtocolInterpreter11StartUploadEP9FileStorePKc,"ax",%progbits
 1188              		.align	2
 1189              		.global	_ZN19ProtocolInterpreter11StartUploadEP9FileStorePKc
 1190              		.thumb
 1191              		.thumb_func
 1192              		.type	_ZN19ProtocolInterpreter11StartUploadEP9FileStorePKc, %function
 1193              	_ZN19ProtocolInterpreter11StartUploadEP9FileStorePKc:
 1194              		@ args = 0, pretend = 0, frame = 0
 1195              		@ frame_needed = 0, uses_anonymous_args = 0
 1196 0000 70B5     		push	{r4, r5, r6, lr}
 1197 0002 0D46     		mov	r5, r1
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 22


 1198 0004 0446     		mov	r4, r0
 1199 0006 1646     		mov	r6, r2
 1200 0008 89B1     		cbz	r1, .L236
 1201 000a 4069     		ldr	r0, [r0, #20]
 1202 000c 08B1     		cbz	r0, .L237
 1203 000e FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1204              	.L237:
 1205 0012 6561     		str	r5, [r4, #20]
 1206 0014 3146     		mov	r1, r6
 1207 0016 04F11800 		add	r0, r4, #24
 1208 001a 6422     		movs	r2, #100
 1209 001c FFF7FEFF 		bl	strncpy
 1210 0020 0023     		movs	r3, #0
 1211 0022 0125     		movs	r5, #1
 1212 0024 84F87B30 		strb	r3, [r4, #123]
 1213 0028 2574     		strb	r5, [r4, #16]
 1214 002a 2846     		mov	r0, r5
 1215 002c 70BD     		pop	{r4, r5, r6, pc}
 1216              	.L236:
 1217 002e 4068     		ldr	r0, [r0, #4]
 1218 0030 0621     		movs	r1, #6
 1219 0032 024A     		ldr	r2, .L242
 1220 0034 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1221 0038 2846     		mov	r0, r5
 1222 003a 70BD     		pop	{r4, r5, r6, pc}
 1223              	.L243:
 1224              		.align	2
 1225              	.L242:
 1226 003c B4020000 		.word	.LC18
 1227              		.size	_ZN19ProtocolInterpreter11StartUploadEP9FileStorePKc, .-_ZN19ProtocolInterpreter11StartUploa
 1228              		.section	.text._ZN19ProtocolInterpreter12CancelUploadEv,"ax",%progbits
 1229              		.align	2
 1230              		.global	_ZN19ProtocolInterpreter12CancelUploadEv
 1231              		.thumb
 1232              		.thumb_func
 1233              		.type	_ZN19ProtocolInterpreter12CancelUploadEv, %function
 1234              	_ZN19ProtocolInterpreter12CancelUploadEv:
 1235              		@ args = 0, pretend = 0, frame = 0
 1236              		@ frame_needed = 0, uses_anonymous_args = 0
 1237              		@ link register save eliminated.
 1238 0000 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 1239 0002 012B     		cmp	r3, #1
 1240 0004 04BF     		itt	eq
 1241 0006 0223     		moveq	r3, #2
 1242 0008 0374     		strbeq	r3, [r0, #16]
 1243 000a 7047     		bx	lr
 1244              		.size	_ZN19ProtocolInterpreter12CancelUploadEv, .-_ZN19ProtocolInterpreter12CancelUploadEv
 1245              		.section	.text._ZN19ProtocolInterpreter12FinishUploadEm,"ax",%progbits
 1246              		.align	2
 1247              		.global	_ZN19ProtocolInterpreter12FinishUploadEm
 1248              		.thumb
 1249              		.thumb_func
 1250              		.type	_ZN19ProtocolInterpreter12FinishUploadEm, %function
 1251              	_ZN19ProtocolInterpreter12FinishUploadEm:
 1252              		@ args = 0, pretend = 0, frame = 0
 1253              		@ frame_needed = 0, uses_anonymous_args = 0
 1254 0000 70B5     		push	{r4, r5, r6, lr}
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 23


 1255 0002 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 1256 0004 82B0     		sub	sp, sp, #8
 1257 0006 012B     		cmp	r3, #1
 1258 0008 0446     		mov	r4, r0
 1259 000a 0D46     		mov	r5, r1
 1260 000c 1ED0     		beq	.L265
 1261              	.L254:
 1262 000e 6069     		ldr	r0, [r4, #20]
 1263 0010 18B1     		cbz	r0, .L251
 1264 0012 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 1265 0016 0023     		movs	r3, #0
 1266 0018 6361     		str	r3, [r4, #20]
 1267              	.L251:
 1268 001a 207C     		ldrb	r0, [r4, #16]	@ zero_extendqisi2
 1269 001c 0228     		cmp	r0, #2
 1270 001e 08D0     		beq	.L266
 1271              	.L252:
 1272 0020 421E     		subs	r2, r0, #1
 1273 0022 5042     		rsbs	r0, r2, #0
 1274 0024 4FF00003 		mov	r3, #0
 1275 0028 5041     		adcs	r0, r0, r2
 1276 002a 2374     		strb	r3, [r4, #16]
 1277 002c 2376     		strb	r3, [r4, #24]
 1278 002e 02B0     		add	sp, sp, #8
 1279              		@ sp needed
 1280 0030 70BD     		pop	{r4, r5, r6, pc}
 1281              	.L266:
 1282 0032 237E     		ldrb	r3, [r4, #24]	@ zero_extendqisi2
 1283 0034 002B     		cmp	r3, #0
 1284 0036 F3D0     		beq	.L252
 1285 0038 6368     		ldr	r3, [r4, #4]
 1286 003a 1749     		ldr	r1, .L267
 1287 003c D3F8B406 		ldr	r0, [r3, #1716]
 1288 0040 04F11802 		add	r2, r4, #24
 1289 0044 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_
 1290 0048 207C     		ldrb	r0, [r4, #16]	@ zero_extendqisi2
 1291 004a E9E7     		b	.L252
 1292              	.L265:
 1293 004c 4069     		ldr	r0, [r0, #20]
 1294 004e FFF7FEFF 		bl	_ZN9FileStore5FlushEv
 1295 0052 B8B1     		cbz	r0, .L248
 1296 0054 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 1297              	.L253:
 1298 0056 012B     		cmp	r3, #1
 1299 0058 D9D1     		bne	.L254
 1300 005a 002D     		cmp	r5, #0
 1301 005c D7D0     		beq	.L254
 1302 005e 6069     		ldr	r0, [r4, #20]
 1303 0060 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1304 0064 8542     		cmp	r5, r0
 1305 0066 D2D0     		beq	.L254
 1306 0068 0223     		movs	r3, #2
 1307 006a 2374     		strb	r3, [r4, #16]
 1308 006c 6069     		ldr	r0, [r4, #20]
 1309 006e 6668     		ldr	r6, [r4, #4]
 1310 0070 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1311 0074 0095     		str	r5, [sp]
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 24


 1312 0076 0346     		mov	r3, r0
 1313 0078 0621     		movs	r1, #6
 1314 007a 3046     		mov	r0, r6
 1315 007c 074A     		ldr	r2, .L267+4
 1316 007e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1317 0082 C4E7     		b	.L254
 1318              	.L248:
 1319 0084 0223     		movs	r3, #2
 1320 0086 2374     		strb	r3, [r4, #16]
 1321 0088 6068     		ldr	r0, [r4, #4]
 1322 008a 0621     		movs	r1, #6
 1323 008c 044A     		ldr	r2, .L267+8
 1324 008e FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1325 0092 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 1326 0094 DFE7     		b	.L253
 1327              	.L268:
 1328 0096 00BF     		.align	2
 1329              	.L267:
 1330 0098 34010000 		.word	.LC9
 1331 009c 28030000 		.word	.LC20
 1332 00a0 E8020000 		.word	.LC19
 1333              		.size	_ZN19ProtocolInterpreter12FinishUploadEm, .-_ZN19ProtocolInterpreter12FinishUploadEm
 1334              		.section	.text._ZN9Webserver15HttpInterpreterC2EP8PlatformPS_P7Network,"ax",%progbits
 1335              		.align	2
 1336              		.global	_ZN9Webserver15HttpInterpreterC2EP8PlatformPS_P7Network
 1337              		.thumb
 1338              		.thumb_func
 1339              		.type	_ZN9Webserver15HttpInterpreterC2EP8PlatformPS_P7Network, %function
 1340              	_ZN9Webserver15HttpInterpreterC2EP8PlatformPS_P7Network:
 1341              		@ args = 0, pretend = 0, frame = 0
 1342              		@ frame_needed = 0, uses_anonymous_args = 0
 1343 0000 70B5     		push	{r4, r5, r6, lr}
 1344 0002 0E4E     		ldr	r6, .L270
 1345 0004 0025     		movs	r5, #0
 1346 0006 0446     		mov	r4, r0
 1347 0008 4160     		str	r1, [r0, #4]
 1348 000a 8260     		str	r2, [r0, #8]
 1349 000c C360     		str	r3, [r0, #12]
 1350 000e 0660     		str	r6, [r0]
 1351 0010 4561     		str	r5, [r0, #20]
 1352 0012 0574     		strb	r5, [r0, #16]
 1353 0014 0576     		strb	r5, [r0, #24]
 1354 0016 80F87C50 		strb	r5, [r0, #124]
 1355 001a 80F86857 		strb	r5, [r0, #1896]
 1356 001e 80F86957 		strb	r5, [r0, #1897]
 1357 0022 1420     		movs	r0, #20
 1358 0024 FFF7FEFF 		bl	_Znwj
 1359 0028 0346     		mov	r3, r0
 1360 002a 0560     		str	r5, [r0]
 1361 002c 2046     		mov	r0, r4
 1362 002e C4F87037 		str	r3, [r4, #1904]
 1363 0032 C4F88057 		str	r5, [r4, #1920]
 1364 0036 C4F86C57 		str	r5, [r4, #1900]
 1365 003a 70BD     		pop	{r4, r5, r6, pc}
 1366              	.L271:
 1367              		.align	2
 1368              	.L270:
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 25


 1369 003c 08000000 		.word	.LANCHOR3+8
 1370              		.size	_ZN9Webserver15HttpInterpreterC2EP8PlatformPS_P7Network, .-_ZN9Webserver15HttpInterpreterC2E
 1371              		.global	_ZN9Webserver15HttpInterpreterC1EP8PlatformPS_P7Network
 1372              		.thumb_set _ZN9Webserver15HttpInterpreterC1EP8PlatformPS_P7Network,_ZN9Webserver15HttpInterpreterC
 1373              		.section	.text._ZN9WebserverC2EP8PlatformP7Network,"ax",%progbits
 1374              		.align	2
 1375              		.global	_ZN9WebserverC2EP8PlatformP7Network
 1376              		.thumb
 1377              		.thumb_func
 1378              		.type	_ZN9WebserverC2EP8PlatformP7Network, %function
 1379              	_ZN9WebserverC2EP8PlatformP7Network:
 1380              		@ args = 0, pretend = 0, frame = 0
 1381              		@ frame_needed = 0, uses_anonymous_args = 0
 1382 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1383 0004 0024     		movs	r4, #0
 1384 0006 0646     		mov	r6, r0
 1385 0008 F160     		str	r1, [r6, #12]
 1386 000a 3261     		str	r2, [r6, #16]
 1387 000c 0475     		strb	r4, [r0, #20]
 1388 000e 4FF4FD60 		mov	r0, #2024
 1389 0012 1746     		mov	r7, r2
 1390 0014 8846     		mov	r8, r1
 1391 0016 FFF7FEFF 		bl	_Znwj
 1392 001a 4146     		mov	r1, r8
 1393 001c 3246     		mov	r2, r6
 1394 001e 3B46     		mov	r3, r7
 1395 0020 0546     		mov	r5, r0
 1396 0022 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreterC1EP8PlatformPS_P7Network
 1397 0026 3560     		str	r5, [r6]
 1398 0028 4FF4E870 		mov	r0, #464
 1399 002c FFF7FEFF 		bl	_Znwj
 1400 0030 194B     		ldr	r3, .L273
 1401 0032 1A49     		ldr	r1, .L273+4
 1402 0034 1B88     		ldrh	r3, [r3]	@ unaligned
 1403 0036 0546     		mov	r5, r0
 1404 0038 0122     		movs	r2, #1
 1405 003a C0F80480 		str	r8, [r0, #4]
 1406 003e 8660     		str	r6, [r0, #8]
 1407 0040 C760     		str	r7, [r0, #12]
 1408 0042 4461     		str	r4, [r0, #20]
 1409 0044 0474     		strb	r4, [r0, #16]
 1410 0046 0476     		strb	r4, [r0, #24]
 1411 0048 C0F80041 		str	r4, [r0, #256]
 1412 004c 80F87D40 		strb	r4, [r0, #125]
 1413 0050 0160     		str	r1, [r0]
 1414 0052 80F87C20 		strb	r2, [r0, #124]
 1415 0056 A0F86831 		strh	r3, [r0, #360]	@ unaligned
 1416 005a 7560     		str	r5, [r6, #4]
 1417 005c F420     		movs	r0, #244
 1418 005e FFF7FEFF 		bl	_Znwj
 1419 0062 0F4B     		ldr	r3, .L273+8
 1420 0064 0546     		mov	r5, r0
 1421 0066 0476     		strb	r4, [r0, #24]
 1422 0068 80F87D40 		strb	r4, [r0, #125]
 1423 006c C0F80480 		str	r8, [r0, #4]
 1424 0070 8660     		str	r6, [r0, #8]
 1425 0072 C760     		str	r7, [r0, #12]
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 26


 1426 0074 4461     		str	r4, [r0, #20]
 1427 0076 0474     		strb	r4, [r0, #16]
 1428 0078 80F88440 		strb	r4, [r0, #132]
 1429 007c C0F8F040 		str	r4, [r0, #240]
 1430 0080 80F87C40 		strb	r4, [r0, #124]
 1431 0084 C0F88040 		str	r4, [r0, #128]
 1432 0088 C0F8EC40 		str	r4, [r0, #236]
 1433 008c 0360     		str	r3, [r0]
 1434 008e 3046     		mov	r0, r6
 1435 0090 B560     		str	r5, [r6, #8]
 1436 0092 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1437              	.L274:
 1438 0096 00BF     		.align	2
 1439              	.L273:
 1440 0098 6C030000 		.word	.LC21
 1441 009c 08000000 		.word	.LANCHOR2+8
 1442 00a0 08000000 		.word	.LANCHOR1+8
 1443              		.size	_ZN9WebserverC2EP8PlatformP7Network, .-_ZN9WebserverC2EP8PlatformP7Network
 1444              		.global	_ZN9WebserverC1EP8PlatformP7Network
 1445              		.thumb_set _ZN9WebserverC1EP8PlatformP7Network,_ZN9WebserverC2EP8PlatformP7Network
 1446              		.section	.text._ZN9Webserver15HttpInterpreter14SendGCodeReplyEv,"ax",%progbits
 1447              		.align	2
 1448              		.global	_ZN9Webserver15HttpInterpreter14SendGCodeReplyEv
 1449              		.thumb
 1450              		.thumb_func
 1451              		.type	_ZN9Webserver15HttpInterpreter14SendGCodeReplyEv, %function
 1452              	_ZN9Webserver15HttpInterpreter14SendGCodeReplyEv:
 1453              		@ args = 0, pretend = 0, frame = 0
 1454              		@ frame_needed = 0, uses_anonymous_args = 0
 1455 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1456 0004 0546     		mov	r5, r0
 1457 0006 D0F87007 		ldr	r0, [r0, #1904]
 1458 000a 82B0     		sub	sp, sp, #8
 1459 000c 0368     		ldr	r3, [r0]
 1460 000e 0BB3     		cbz	r3, .L279
 1461 0010 95F86937 		ldrb	r3, [r5, #1897]	@ zero_extendqisi2
 1462 0014 95F86827 		ldrb	r2, [r5, #1896]	@ zero_extendqisi2
 1463 0018 0133     		adds	r3, r3, #1
 1464 001a DBB2     		uxtb	r3, r3
 1465 001c 9A42     		cmp	r2, r3
 1466 001e 85F86937 		strb	r3, [r5, #1897]
 1467 0022 50D8     		bhi	.L287
 1468 0024 0126     		movs	r6, #1
 1469              	.L277:
 1470 0026 2A4B     		ldr	r3, .L288
 1471 0028 B3F84030 		ldrh	r3, [r3, #64]
 1472 002c 5B07     		lsls	r3, r3, #29
 1473 002e 12D5     		bpl	.L276
 1474 0030 D5F87007 		ldr	r0, [r5, #1904]
 1475 0034 6C68     		ldr	r4, [r5, #4]
 1476 0036 95F86987 		ldrb	r8, [r5, #1897]	@ zero_extendqisi2
 1477 003a 95F86877 		ldrb	r7, [r5, #1896]	@ zero_extendqisi2
 1478 003e FFF7FEFF 		bl	_ZNK11OutputStack10DataLengthEv
 1479 0042 0097     		str	r7, [sp]
 1480 0044 0190     		str	r0, [sp, #4]
 1481 0046 4346     		mov	r3, r8
 1482 0048 2046     		mov	r0, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 27


 1483 004a 0221     		movs	r1, #2
 1484 004c 214A     		ldr	r2, .L288+4
 1485 004e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1486 0052 00E0     		b	.L276
 1487              	.L279:
 1488 0054 1E46     		mov	r6, r3
 1489              	.L276:
 1490 0056 AA68     		ldr	r2, [r5, #8]
 1491 0058 1F49     		ldr	r1, .L288+8
 1492 005a 9469     		ldr	r4, [r2, #24]
 1493 005c 2046     		mov	r0, r4
 1494 005e FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1495 0062 2046     		mov	r0, r4
 1496 0064 1D49     		ldr	r1, .L288+12
 1497 0066 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1498 006a 2046     		mov	r0, r4
 1499 006c 1C49     		ldr	r1, .L288+16
 1500 006e FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1501 0072 2046     		mov	r0, r4
 1502 0074 1B49     		ldr	r1, .L288+20
 1503 0076 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1504 007a 2046     		mov	r0, r4
 1505 007c 1A49     		ldr	r1, .L288+24
 1506 007e FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1507 0082 1A49     		ldr	r1, .L288+28
 1508 0084 2046     		mov	r0, r4
 1509 0086 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1510 008a D5F87007 		ldr	r0, [r5, #1904]
 1511 008e FFF7FEFF 		bl	_ZNK11OutputStack10DataLengthEv
 1512 0092 1749     		ldr	r1, .L288+32
 1513 0094 0246     		mov	r2, r0
 1514 0096 2046     		mov	r0, r4
 1515 0098 FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 1516 009c 2046     		mov	r0, r4
 1517 009e 1549     		ldr	r1, .L288+36
 1518 00a0 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1519 00a4 2046     		mov	r0, r4
 1520 00a6 D5F87017 		ldr	r1, [r5, #1904]
 1521 00aa FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEP11OutputStack
 1522 00ae 2046     		mov	r0, r4
 1523 00b0 0021     		movs	r1, #0
 1524 00b2 FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 1525 00b6 1EB1     		cbz	r6, .L275
 1526 00b8 D5F87037 		ldr	r3, [r5, #1904]
 1527 00bc 0022     		movs	r2, #0
 1528 00be 1A60     		str	r2, [r3]
 1529              	.L275:
 1530 00c0 02B0     		add	sp, sp, #8
 1531              		@ sp needed
 1532 00c2 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1533              	.L287:
 1534 00c6 0121     		movs	r1, #1
 1535 00c8 FFF7FEFF 		bl	_ZN11OutputStack18IncreaseReferencesEj
 1536 00cc 0026     		movs	r6, #0
 1537 00ce AAE7     		b	.L277
 1538              	.L289:
 1539              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 28


 1540              	.L288:
 1541 00d0 00000000 		.word	reprap
 1542 00d4 70030000 		.word	.LC22
 1543 00d8 A8030000 		.word	.LC23
 1544 00dc BC030000 		.word	.LC24
 1545 00e0 F0030000 		.word	.LC25
 1546 00e4 04040000 		.word	.LC26
 1547 00e8 10040000 		.word	.LC27
 1548 00ec 30040000 		.word	.LC28
 1549 00f0 4C040000 		.word	.LC29
 1550 00f4 60040000 		.word	.LC30
 1551              		.size	_ZN9Webserver15HttpInterpreter14SendGCodeReplyEv, .-_ZN9Webserver15HttpInterpreter14SendGCod
 1552              		.section	.text._ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc,"ax",%progbits
 1553              		.align	2
 1554              		.global	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 1555              		.thumb
 1556              		.thumb_func
 1557              		.type	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc, %function
 1558              	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc:
 1559              		@ args = 0, pretend = 0, frame = 0
 1560              		@ frame_needed = 0, uses_anonymous_args = 0
 1561 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1562 0002 D0F80037 		ldr	r3, [r0, #1792]
 1563 0006 0646     		mov	r6, r0
 1564 0008 0F46     		mov	r7, r1
 1565 000a A3B1     		cbz	r3, .L294
 1566 000c 0446     		mov	r4, r0
 1567 000e 0025     		movs	r5, #0
 1568 0010 04E0     		b	.L295
 1569              	.L293:
 1570 0012 D6F80037 		ldr	r3, [r6, #1792]
 1571 0016 0135     		adds	r5, r5, #1
 1572 0018 AB42     		cmp	r3, r5
 1573 001a 0CD9     		bls	.L294
 1574              	.L295:
 1575 001c D4F84C06 		ldr	r0, [r4, #1612]
 1576 0020 3946     		mov	r1, r7
 1577 0022 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 1578 0026 0834     		adds	r4, r4, #8
 1579 0028 0028     		cmp	r0, #0
 1580 002a F2D0     		beq	.L293
 1581 002c 06EBC505 		add	r5, r6, r5, lsl #3
 1582 0030 D5F85006 		ldr	r0, [r5, #1616]
 1583 0034 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1584              	.L294:
 1585 0036 0020     		movs	r0, #0
 1586 0038 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1587              		.size	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc, .-_ZNK9Webserver15HttpInterpreter11GetKeyV
 1588 003a 00BF     		.section	.text._ZN9Webserver15HttpInterpreter10ResetStateEv,"ax",%progbits
 1589              		.align	2
 1590              		.global	_ZN9Webserver15HttpInterpreter10ResetStateEv
 1591              		.thumb
 1592              		.thumb_func
 1593              		.type	_ZN9Webserver15HttpInterpreter10ResetStateEv, %function
 1594              	_ZN9Webserver15HttpInterpreter10ResetStateEv:
 1595              		@ args = 0, pretend = 0, frame = 0
 1596              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 29


 1597              		@ link register save eliminated.
 1598 0000 0023     		movs	r3, #0
 1599 0002 00F17D02 		add	r2, r0, #125
 1600 0006 C0F83C26 		str	r2, [r0, #1596]
 1601 000a C0F83436 		str	r3, [r0, #1588]
 1602 000e 80F87C30 		strb	r3, [r0, #124]
 1603 0012 C0F8FC36 		str	r3, [r0, #1788]
 1604 0016 C0F80037 		str	r3, [r0, #1792]
 1605 001a C0F80437 		str	r3, [r0, #1796]
 1606 001e 7047     		bx	lr
 1607              		.size	_ZN9Webserver15HttpInterpreter10ResetStateEv, .-_ZN9Webserver15HttpInterpreter10ResetStateEv
 1608              		.section	.text._ZN9Webserver15HttpInterpreter13RejectMessageEPKcj,"ax",%progbits
 1609              		.align	2
 1610              		.global	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 1611              		.thumb
 1612              		.thumb_func
 1613              		.type	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj, %function
 1614              	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj:
 1615              		@ args = 0, pretend = 0, frame = 0
 1616              		@ frame_needed = 0, uses_anonymous_args = 0
 1617 0000 70B5     		push	{r4, r5, r6, lr}
 1618 0002 0B46     		mov	r3, r1
 1619 0004 0446     		mov	r4, r0
 1620 0006 0E46     		mov	r6, r1
 1621 0008 1546     		mov	r5, r2
 1622 000a 4068     		ldr	r0, [r0, #4]
 1623 000c 0221     		movs	r1, #2
 1624 000e 104A     		ldr	r2, .L298
 1625 0010 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1626 0014 A368     		ldr	r3, [r4, #8]
 1627 0016 2A46     		mov	r2, r5
 1628 0018 9D69     		ldr	r5, [r3, #24]
 1629 001a 0E49     		ldr	r1, .L298+4
 1630 001c 3346     		mov	r3, r6
 1631 001e 2846     		mov	r0, r5
 1632 0020 FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 1633 0024 2846     		mov	r0, r5
 1634 0026 0021     		movs	r1, #0
 1635 0028 FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 1636 002c 0023     		movs	r3, #0
 1637 002e 04F17D02 		add	r2, r4, #125
 1638 0032 C4F83C26 		str	r2, [r4, #1596]
 1639 0036 C4F83436 		str	r3, [r4, #1588]
 1640 003a 84F87C30 		strb	r3, [r4, #124]
 1641 003e C4F8FC36 		str	r3, [r4, #1788]
 1642 0042 C4F80037 		str	r3, [r4, #1792]
 1643 0046 C4F80437 		str	r3, [r4, #1796]
 1644 004a 0120     		movs	r0, #1
 1645 004c 70BD     		pop	{r4, r5, r6, pc}
 1646              	.L299:
 1647 004e 00BF     		.align	2
 1648              	.L298:
 1649 0050 74040000 		.word	.LC31
 1650 0054 9C040000 		.word	.LC32
 1651              		.size	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj, .-_ZN9Webserver15HttpInterpreter13Reject
 1652              		.section	.text._ZN9Webserver15HttpInterpreter8SendFileEPKcb,"ax",%progbits
 1653              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 30


 1654              		.global	_ZN9Webserver15HttpInterpreter8SendFileEPKcb
 1655              		.thumb
 1656              		.thumb_func
 1657              		.type	_ZN9Webserver15HttpInterpreter8SendFileEPKcb, %function
 1658              	_ZN9Webserver15HttpInterpreter8SendFileEPKcb:
 1659              		@ args = 0, pretend = 0, frame = 104
 1660              		@ frame_needed = 0, uses_anonymous_args = 0
 1661 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1662 0004 8368     		ldr	r3, [r0, #8]
 1663 0006 9BB0     		sub	sp, sp, #108
 1664 0008 0646     		mov	r6, r0
 1665 000a 1746     		mov	r7, r2
 1666 000c 0D46     		mov	r5, r1
 1667 000e 9C69     		ldr	r4, [r3, #24]
 1668 0010 002A     		cmp	r2, #0
 1669 0012 00F08380 		beq	.L301
 1670 0016 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 1671 0018 2F2B     		cmp	r3, #47
 1672 001a 00F0B480 		beq	.L334
 1673              	.L302:
 1674 001e DFF85C82 		ldr	r8, .L344+128
 1675 0022 2846     		mov	r0, r5
 1676 0024 4146     		mov	r1, r8
 1677 0026 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1678 002a 0746     		mov	r7, r0
 1679 002c 0028     		cmp	r0, #0
 1680 002e 3AD0     		beq	.L335
 1681 0030 0027     		movs	r7, #0
 1682              	.L303:
 1683 0032 7068     		ldr	r0, [r6, #4]
 1684 0034 7149     		ldr	r1, .L344
 1685 0036 2A46     		mov	r2, r5
 1686 0038 0023     		movs	r3, #0
 1687 003a FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 1688 003e 8046     		mov	r8, r0
 1689 0040 88B9     		cbnz	r0, .L307
 1690 0042 2846     		mov	r0, r5
 1691 0044 6E49     		ldr	r1, .L344+4
 1692 0046 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1693 004a 0028     		cmp	r0, #0
 1694 004c 00F09F80 		beq	.L336
 1695              	.L306:
 1696 0050 7068     		ldr	r0, [r6, #4]
 1697 0052 6A49     		ldr	r1, .L344
 1698 0054 6B4A     		ldr	r2, .L344+8
 1699 0056 0023     		movs	r3, #0
 1700 0058 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 1701 005c 694D     		ldr	r5, .L344+8
 1702 005e 8046     		mov	r8, r0
 1703 0060 0028     		cmp	r0, #0
 1704 0062 00F09B80 		beq	.L310
 1705              	.L307:
 1706 0066 2046     		mov	r0, r4
 1707 0068 4146     		mov	r1, r8
 1708 006a FFF7FEFF 		bl	_ZN18NetworkTransaction14SetFileToWriteEP9FileStore
 1709 006e 2046     		mov	r0, r4
 1710 0070 6549     		ldr	r1, .L344+12
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 31


 1711 0072 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1712 0076 2846     		mov	r0, r5
 1713 0078 6449     		ldr	r1, .L344+16
 1714 007a FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1715 007e 0028     		cmp	r0, #0
 1716 0080 73D0     		beq	.L337
 1717              	.L322:
 1718 0082 634A     		ldr	r2, .L344+20
 1719              	.L311:
 1720 0084 2046     		mov	r0, r4
 1721 0086 6349     		ldr	r1, .L344+24
 1722 0088 FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 1723 008c 002F     		cmp	r7, #0
 1724 008e 38D1     		bne	.L318
 1725              	.L319:
 1726 0090 2046     		mov	r0, r4
 1727 0092 6149     		ldr	r1, .L344+28
 1728 0094 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1729 0098 2046     		mov	r0, r4
 1730 009a 0021     		movs	r1, #0
 1731 009c FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 1732 00a0 1BB0     		add	sp, sp, #108
 1733              		@ sp needed
 1734 00a2 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1735              	.L335:
 1736 00a6 2846     		mov	r0, r5
 1737 00a8 FFF7FEFF 		bl	strlen
 1738 00ac C31C     		adds	r3, r0, #3
 1739 00ae 642B     		cmp	r3, #100
 1740 00b0 8146     		mov	r9, r0
 1741 00b2 BED8     		bhi	.L303
 1742 00b4 2946     		mov	r1, r5
 1743 00b6 4A46     		mov	r2, r9
 1744 00b8 6846     		mov	r0, sp
 1745 00ba FFF7FEFF 		bl	memcpy
 1746 00be D8F80000 		ldr	r0, [r8]	@ unaligned
 1747 00c2 3B46     		mov	r3, r7
 1748 00c4 4DF80900 		str	r0, [sp, r9]	@ unaligned
 1749 00c8 6A46     		mov	r2, sp
 1750 00ca 7068     		ldr	r0, [r6, #4]
 1751 00cc 4B49     		ldr	r1, .L344
 1752 00ce FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 1753 00d2 B0F10008 		subs	r8, r0, #0
 1754 00d6 0CBF     		ite	eq
 1755 00d8 0027     		moveq	r7, #0
 1756 00da 0127     		movne	r7, #1
 1757 00dc C3D1     		bne	.L307
 1758 00de A8E7     		b	.L303
 1759              	.L342:
 1760 00e0 2846     		mov	r0, r5
 1761 00e2 4749     		ldr	r1, .L344+4
 1762 00e4 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1763 00e8 0028     		cmp	r0, #0
 1764 00ea 6FD1     		bne	.L312
 1765 00ec 2846     		mov	r0, r5
 1766 00ee 4B49     		ldr	r1, .L344+32
 1767 00f0 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 32


 1768 00f4 0028     		cmp	r0, #0
 1769 00f6 6BD0     		beq	.L338
 1770 00f8 2046     		mov	r0, r4
 1771 00fa 4649     		ldr	r1, .L344+24
 1772 00fc 484A     		ldr	r2, .L344+36
 1773 00fe FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 1774              	.L318:
 1775 0102 2046     		mov	r0, r4
 1776 0104 4749     		ldr	r1, .L344+40
 1777 0106 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1778 010a 4046     		mov	r0, r8
 1779 010c FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 1780 0110 4549     		ldr	r1, .L344+44
 1781 0112 0246     		mov	r2, r0
 1782 0114 2046     		mov	r0, r4
 1783 0116 FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 1784 011a B9E7     		b	.L319
 1785              	.L301:
 1786 011c 4068     		ldr	r0, [r0, #4]
 1787 011e 4349     		ldr	r1, .L344+48
 1788 0120 2A46     		mov	r2, r5
 1789 0122 3B46     		mov	r3, r7
 1790 0124 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 1791 0128 8046     		mov	r8, r0
 1792 012a 0028     		cmp	r0, #0
 1793 012c 36D0     		beq	.L310
 1794 012e 2046     		mov	r0, r4
 1795 0130 4146     		mov	r1, r8
 1796 0132 FFF7FEFF 		bl	_ZN18NetworkTransaction14SetFileToWriteEP9FileStore
 1797 0136 2046     		mov	r0, r4
 1798 0138 3349     		ldr	r1, .L344+12
 1799 013a FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1800 013e 2046     		mov	r0, r4
 1801 0140 3B49     		ldr	r1, .L344+52
 1802 0142 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1803 0146 2046     		mov	r0, r4
 1804 0148 3A49     		ldr	r1, .L344+56
 1805 014a FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1806 014e 2046     		mov	r0, r4
 1807 0150 3949     		ldr	r1, .L344+60
 1808 0152 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1809 0156 2046     		mov	r0, r4
 1810 0158 3849     		ldr	r1, .L344+64
 1811 015a FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 1812 015e 2846     		mov	r0, r5
 1813 0160 2A49     		ldr	r1, .L344+16
 1814 0162 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1815 0166 0028     		cmp	r0, #0
 1816 0168 8BD1     		bne	.L322
 1817              	.L337:
 1818 016a 2846     		mov	r0, r5
 1819 016c 3449     		ldr	r1, .L344+68
 1820 016e FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1821 0172 08B1     		cbz	r0, .L339
 1822 0174 334A     		ldr	r2, .L344+72
 1823 0176 85E7     		b	.L311
 1824              	.L339:
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 33


 1825 0178 2846     		mov	r0, r5
 1826 017a 3349     		ldr	r1, .L344+76
 1827 017c FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1828 0180 B8B1     		cbz	r0, .L340
 1829 0182 324A     		ldr	r2, .L344+80
 1830 0184 7EE7     		b	.L311
 1831              	.L334:
 1832 0186 4B78     		ldrb	r3, [r1, #1]	@ zero_extendqisi2
 1833 0188 8BB1     		cbz	r3, .L320
 1834 018a 4D1C     		adds	r5, r1, #1
 1835 018c 47E7     		b	.L302
 1836              	.L336:
 1837 018e 2846     		mov	r0, r5
 1838 0190 2F49     		ldr	r1, .L344+84
 1839 0192 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1840 0196 0028     		cmp	r0, #0
 1841 0198 7FF45AAF 		bne	.L306
 1842              	.L310:
 1843 019c 3046     		mov	r0, r6
 1844 019e 2D49     		ldr	r1, .L344+88
 1845 01a0 4FF4CA72 		mov	r2, #404
 1846 01a4 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 1847 01a8 1BB0     		add	sp, sp, #108
 1848              		@ sp needed
 1849 01aa BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1850              	.L320:
 1851 01ae 2A4D     		ldr	r5, .L344+92
 1852 01b0 35E7     		b	.L302
 1853              	.L340:
 1854 01b2 2846     		mov	r0, r5
 1855 01b4 2949     		ldr	r1, .L344+96
 1856 01b6 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1857 01ba 08B1     		cbz	r0, .L341
 1858 01bc 284A     		ldr	r2, .L344+100
 1859 01be 61E7     		b	.L311
 1860              	.L341:
 1861 01c0 2846     		mov	r0, r5
 1862 01c2 2349     		ldr	r1, .L344+84
 1863 01c4 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1864 01c8 0028     		cmp	r0, #0
 1865 01ca 89D0     		beq	.L342
 1866              	.L312:
 1867 01cc 254A     		ldr	r2, .L344+104
 1868 01ce 59E7     		b	.L311
 1869              	.L338:
 1870 01d0 2846     		mov	r0, r5
 1871 01d2 2549     		ldr	r1, .L344+108
 1872 01d4 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1873 01d8 08B1     		cbz	r0, .L343
 1874              	.L314:
 1875 01da 244A     		ldr	r2, .L344+112
 1876 01dc 52E7     		b	.L311
 1877              	.L343:
 1878 01de 2846     		mov	r0, r5
 1879 01e0 2349     		ldr	r1, .L344+116
 1880 01e2 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1881 01e6 0028     		cmp	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 34


 1882 01e8 F7D1     		bne	.L314
 1883 01ea 2846     		mov	r0, r5
 1884 01ec 2149     		ldr	r1, .L344+120
 1885 01ee FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 1886 01f2 0028     		cmp	r0, #0
 1887 01f4 F1D1     		bne	.L314
 1888 01f6 204A     		ldr	r2, .L344+124
 1889 01f8 44E7     		b	.L311
 1890              	.L345:
 1891 01fa 00BF     		.align	2
 1892              	.L344:
 1893 01fc 50050000 		.word	.LC43
 1894 0200 58050000 		.word	.LC44
 1895 0204 CC040000 		.word	.LC34
 1896 0208 A8030000 		.word	.LC23
 1897 020c 74050000 		.word	.LC47
 1898 0210 0C050000 		.word	.LC38
 1899 0214 D8050000 		.word	.LC57
 1900 0218 60040000 		.word	.LC30
 1901 021c D0050000 		.word	.LC56
 1902 0220 EC050000 		.word	.LC58
 1903 0224 A0050000 		.word	.LC54
 1904 0228 B8050000 		.word	.LC55
 1905 022c 34010000 		.word	.LC9
 1906 0230 BC030000 		.word	.LC24
 1907 0234 F0030000 		.word	.LC25
 1908 0238 04040000 		.word	.LC26
 1909 023c 10040000 		.word	.LC27
 1910 0240 7C050000 		.word	.LC48
 1911 0244 18050000 		.word	.LC39
 1912 0248 84050000 		.word	.LC49
 1913 024c 34050000 		.word	.LC41
 1914 0250 60050000 		.word	.LC45
 1915 0254 68050000 		.word	.LC46
 1916 0258 C0040000 		.word	.LC33
 1917 025c 88050000 		.word	.LC50
 1918 0260 28050000 		.word	.LC40
 1919 0264 E4040000 		.word	.LC36
 1920 0268 90050000 		.word	.LC51
 1921 026c D8040000 		.word	.LC35
 1922 0270 94050000 		.word	.LC52
 1923 0274 98050000 		.word	.LC53
 1924 0278 F0040000 		.word	.LC37
 1925 027c 4C050000 		.word	.LC42
 1926              		.size	_ZN9Webserver15HttpInterpreter8SendFileEPKcb, .-_ZN9Webserver15HttpInterpreter8SendFileEPKcb
 1927              		.section	.text._ZN9Webserver15HttpInterpreter19NoMoreDataAvailableEv,"ax",%progbits
 1928              		.align	2
 1929              		.global	_ZN9Webserver15HttpInterpreter19NoMoreDataAvailableEv
 1930              		.thumb
 1931              		.thumb_func
 1932              		.type	_ZN9Webserver15HttpInterpreter19NoMoreDataAvailableEv, %function
 1933              	_ZN9Webserver15HttpInterpreter19NoMoreDataAvailableEv:
 1934              		@ args = 0, pretend = 0, frame = 0
 1935              		@ frame_needed = 0, uses_anonymous_args = 0
 1936              		@ link register save eliminated.
 1937 0000 0249     		ldr	r1, .L347
 1938 0002 4FF4FA72 		mov	r2, #500
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 35


 1939 0006 FFF7FEBF 		b	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 1940              	.L348:
 1941 000a 00BF     		.align	2
 1942              	.L347:
 1943 000c FC050000 		.word	.LC59
 1944              		.size	_ZN9Webserver15HttpInterpreter19NoMoreDataAvailableEv, .-_ZN9Webserver15HttpInterpreter19NoM
 1945              		.section	.text._ZN9Webserver15HttpInterpreter12AuthenticateEv,"ax",%progbits
 1946              		.align	2
 1947              		.global	_ZN9Webserver15HttpInterpreter12AuthenticateEv
 1948              		.thumb
 1949              		.thumb_func
 1950              		.type	_ZN9Webserver15HttpInterpreter12AuthenticateEv, %function
 1951              	_ZN9Webserver15HttpInterpreter12AuthenticateEv:
 1952              		@ args = 0, pretend = 0, frame = 0
 1953              		@ frame_needed = 0, uses_anonymous_args = 0
 1954 0000 38B5     		push	{r3, r4, r5, lr}
 1955 0002 90F86857 		ldrb	r5, [r0, #1896]	@ zero_extendqisi2
 1956 0006 0446     		mov	r4, r0
 1957 0008 072D     		cmp	r5, #7
 1958 000a 01D9     		bls	.L352
 1959 000c 0020     		movs	r0, #0
 1960 000e 38BD     		pop	{r3, r4, r5, pc}
 1961              	.L352:
 1962 0010 8368     		ldr	r3, [r0, #8]
 1963 0012 05EB4505 		add	r5, r5, r5, lsl #1
 1964 0016 9869     		ldr	r0, [r3, #24]
 1965 0018 FFF7FEFF 		bl	_ZNK18NetworkTransaction11GetRemoteIPEv
 1966 001c 04EB8505 		add	r5, r4, r5, lsl #2
 1967 0020 C5F80807 		str	r0, [r5, #1800]
 1968 0024 94F86857 		ldrb	r5, [r4, #1896]	@ zero_extendqisi2
 1969 0028 FFF7FEFF 		bl	millis
 1970 002c 05EB4505 		add	r5, r5, r5, lsl #1
 1971 0030 04EB8505 		add	r5, r4, r5, lsl #2
 1972 0034 C5F80C07 		str	r0, [r5, #1804]
 1973 0038 94F86837 		ldrb	r3, [r4, #1896]	@ zero_extendqisi2
 1974 003c 0021     		movs	r1, #0
 1975 003e 03EB4302 		add	r2, r3, r3, lsl #1
 1976 0042 04EB8202 		add	r2, r4, r2, lsl #2
 1977 0046 0133     		adds	r3, r3, #1
 1978 0048 82F81017 		strb	r1, [r2, #1808]
 1979 004c 84F86837 		strb	r3, [r4, #1896]
 1980 0050 0120     		movs	r0, #1
 1981 0052 38BD     		pop	{r3, r4, r5, pc}
 1982              		.size	_ZN9Webserver15HttpInterpreter12AuthenticateEv, .-_ZN9Webserver15HttpInterpreter12Authentica
 1983              		.section	.text._ZNK9Webserver15HttpInterpreter15IsAuthenticatedEv,"ax",%progbits
 1984              		.align	2
 1985              		.global	_ZNK9Webserver15HttpInterpreter15IsAuthenticatedEv
 1986              		.thumb
 1987              		.thumb_func
 1988              		.type	_ZNK9Webserver15HttpInterpreter15IsAuthenticatedEv, %function
 1989              	_ZNK9Webserver15HttpInterpreter15IsAuthenticatedEv:
 1990              		@ args = 0, pretend = 0, frame = 0
 1991              		@ frame_needed = 0, uses_anonymous_args = 0
 1992 0000 38B5     		push	{r3, r4, r5, lr}
 1993 0002 8368     		ldr	r3, [r0, #8]
 1994 0004 0546     		mov	r5, r0
 1995 0006 9869     		ldr	r0, [r3, #24]
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 36


 1996 0008 FFF7FEFF 		bl	_ZNK18NetworkTransaction11GetRemoteIPEv
 1997 000c 95F86847 		ldrb	r4, [r5, #1896]	@ zero_extendqisi2
 1998 0010 7CB1     		cbz	r4, .L360
 1999 0012 D5F80837 		ldr	r3, [r5, #1800]
 2000 0016 8342     		cmp	r3, r0
 2001 0018 0DD0     		beq	.L359
 2002 001a 2A46     		mov	r2, r5
 2003 001c 0023     		movs	r3, #0
 2004 001e 03E0     		b	.L355
 2005              	.L356:
 2006 0020 D2F80817 		ldr	r1, [r2, #1800]
 2007 0024 8142     		cmp	r1, r0
 2008 0026 06D0     		beq	.L359
 2009              	.L355:
 2010 0028 0133     		adds	r3, r3, #1
 2011 002a A342     		cmp	r3, r4
 2012 002c 02F10C02 		add	r2, r2, #12
 2013 0030 F6D3     		bcc	.L356
 2014              	.L360:
 2015 0032 0020     		movs	r0, #0
 2016 0034 38BD     		pop	{r3, r4, r5, pc}
 2017              	.L359:
 2018 0036 0120     		movs	r0, #1
 2019 0038 38BD     		pop	{r3, r4, r5, pc}
 2020              		.size	_ZNK9Webserver15HttpInterpreter15IsAuthenticatedEv, .-_ZNK9Webserver15HttpInterpreter15IsAut
 2021 003a 00BF     		.section	.text._ZN9Webserver15HttpInterpreter20UpdateAuthenticationEv,"ax",%progbits
 2022              		.align	2
 2023              		.global	_ZN9Webserver15HttpInterpreter20UpdateAuthenticationEv
 2024              		.thumb
 2025              		.thumb_func
 2026              		.type	_ZN9Webserver15HttpInterpreter20UpdateAuthenticationEv, %function
 2027              	_ZN9Webserver15HttpInterpreter20UpdateAuthenticationEv:
 2028              		@ args = 0, pretend = 0, frame = 0
 2029              		@ frame_needed = 0, uses_anonymous_args = 0
 2030 0000 38B5     		push	{r3, r4, r5, lr}
 2031 0002 8368     		ldr	r3, [r0, #8]
 2032 0004 0546     		mov	r5, r0
 2033 0006 9869     		ldr	r0, [r3, #24]
 2034 0008 FFF7FEFF 		bl	_ZNK18NetworkTransaction11GetRemoteIPEv
 2035 000c 95F86817 		ldrb	r1, [r5, #1896]	@ zero_extendqisi2
 2036 0010 79B1     		cbz	r1, .L361
 2037 0012 D5F80837 		ldr	r3, [r5, #1800]
 2038 0016 8342     		cmp	r3, r0
 2039 0018 0CD0     		beq	.L372
 2040 001a 2B46     		mov	r3, r5
 2041 001c 0024     		movs	r4, #0
 2042 001e 03E0     		b	.L365
 2043              	.L366:
 2044 0020 D3F80827 		ldr	r2, [r3, #1800]
 2045 0024 8242     		cmp	r2, r0
 2046 0026 06D0     		beq	.L363
 2047              	.L365:
 2048 0028 0134     		adds	r4, r4, #1
 2049 002a 8C42     		cmp	r4, r1
 2050 002c 03F10C03 		add	r3, r3, #12
 2051 0030 F6D3     		bcc	.L366
 2052              	.L361:
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 37


 2053 0032 38BD     		pop	{r3, r4, r5, pc}
 2054              	.L372:
 2055 0034 0024     		movs	r4, #0
 2056              	.L363:
 2057 0036 FFF7FEFF 		bl	millis
 2058 003a 04EB4404 		add	r4, r4, r4, lsl #1
 2059 003e 05EB8405 		add	r5, r5, r4, lsl #2
 2060 0042 C5F80C07 		str	r0, [r5, #1804]
 2061 0046 38BD     		pop	{r3, r4, r5, pc}
 2062              		.size	_ZN9Webserver15HttpInterpreter20UpdateAuthenticationEv, .-_ZN9Webserver15HttpInterpreter20Up
 2063              		.section	.text._ZN9Webserver15HttpInterpreter20RemoveAuthenticationEv,"ax",%progbits
 2064              		.align	2
 2065              		.global	_ZN9Webserver15HttpInterpreter20RemoveAuthenticationEv
 2066              		.thumb
 2067              		.thumb_func
 2068              		.type	_ZN9Webserver15HttpInterpreter20RemoveAuthenticationEv, %function
 2069              	_ZN9Webserver15HttpInterpreter20RemoveAuthenticationEv:
 2070              		@ args = 0, pretend = 0, frame = 0
 2071              		@ frame_needed = 0, uses_anonymous_args = 0
 2072 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2073 0002 8368     		ldr	r3, [r0, #8]
 2074 0004 0746     		mov	r7, r0
 2075 0006 9869     		ldr	r0, [r3, #24]
 2076 0008 FFF7FEFF 		bl	_ZNK18NetworkTransaction11GetRemoteIPEv
 2077 000c 97F86847 		ldrb	r4, [r7, #1896]	@ zero_extendqisi2
 2078 0010 04F1FF3C 		add	ip, r4, #-1
 2079 0014 BCF1FF3F 		cmp	ip, #-1
 2080 0018 6346     		mov	r3, ip
 2081 001a 1DD0     		beq	.L382
 2082 001c 4FEA4C02 		lsl	r2, ip, #1
 2083 0020 02EB0C01 		add	r1, r2, ip
 2084 0024 07EB8101 		add	r1, r7, r1, lsl #2
 2085 0028 D1F80817 		ldr	r1, [r1, #1800]
 2086 002c 8142     		cmp	r1, r0
 2087 002e 16D0     		beq	.L375
 2088 0030 04EB4405 		add	r5, r4, r4, lsl #1
 2089 0034 AD00     		lsls	r5, r5, #2
 2090 0036 05F5E162 		add	r2, r5, #1800
 2091 003a A4EB8406 		sub	r6, r4, r4, lsl #2
 2092 003e 3A44     		add	r2, r2, r7
 2093 0040 B600     		lsls	r6, r6, #2
 2094 0042 03E0     		b	.L377
 2095              	.L380:
 2096 0044 51F80C1C 		ldr	r1, [r1, #-12]
 2097 0048 8142     		cmp	r1, r0
 2098 004a 07D0     		beq	.L387
 2099              	.L377:
 2100 004c 0C3A     		subs	r2, r2, #12
 2101 004e B118     		adds	r1, r6, r2
 2102 0050 13F1FF33 		adds	r3, r3, #-1
 2103 0054 2944     		add	r1, r1, r5
 2104 0056 F5D2     		bcs	.L380
 2105              	.L382:
 2106 0058 0020     		movs	r0, #0
 2107 005a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2108              	.L387:
 2109 005c 5A00     		lsls	r2, r3, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 38


 2110              	.L375:
 2111 005e 1A44     		add	r2, r2, r3
 2112 0060 07EB8202 		add	r2, r7, r2, lsl #2
 2113 0064 92F81027 		ldrb	r2, [r2, #1808]	@ zero_extendqisi2
 2114 0068 002A     		cmp	r2, #0
 2115 006a F5D1     		bne	.L382
 2116 006c 0133     		adds	r3, r3, #1
 2117 006e A342     		cmp	r3, r4
 2118 0070 15D2     		bcs	.L378
 2119 0072 03EB4301 		add	r1, r3, r3, lsl #1
 2120 0076 07EB8101 		add	r1, r7, r1, lsl #2
 2121 007a 01F2FC61 		addw	r1, r1, #1788
 2122              	.L379:
 2123 007e 0A46     		mov	r2, r1
 2124 0080 52F80C5F 		ldr	r5, [r2, #12]!	@ unaligned
 2125 0084 0133     		adds	r3, r3, #1
 2126 0086 5468     		ldr	r4, [r2, #4]	@ unaligned
 2127 0088 9068     		ldr	r0, [r2, #8]	@ unaligned
 2128 008a 0D60     		str	r5, [r1]	@ unaligned
 2129 008c 4C60     		str	r4, [r1, #4]	@ unaligned
 2130 008e 8860     		str	r0, [r1, #8]	@ unaligned
 2131 0090 97F86847 		ldrb	r4, [r7, #1896]	@ zero_extendqisi2
 2132 0094 1146     		mov	r1, r2
 2133 0096 9C42     		cmp	r4, r3
 2134 0098 F1D8     		bhi	.L379
 2135 009a 04F1FF3C 		add	ip, r4, #-1
 2136              	.L378:
 2137 009e 87F868C7 		strb	ip, [r7, #1896]
 2138 00a2 0120     		movs	r0, #1
 2139 00a4 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2140              		.size	_ZN9Webserver15HttpInterpreter20RemoveAuthenticationEv, .-_ZN9Webserver15HttpInterpreter20Re
 2141 00a6 00BF     		.section	.text._ZN9Webserver15HttpInterpreter16HandleGCodeReplyEP12OutputBuffer,"ax",%progbits
 2142              		.align	2
 2143              		.global	_ZN9Webserver15HttpInterpreter16HandleGCodeReplyEP12OutputBuffer
 2144              		.thumb
 2145              		.thumb_func
 2146              		.type	_ZN9Webserver15HttpInterpreter16HandleGCodeReplyEP12OutputBuffer, %function
 2147              	_ZN9Webserver15HttpInterpreter16HandleGCodeReplyEP12OutputBuffer:
 2148              		@ args = 0, pretend = 0, frame = 0
 2149              		@ frame_needed = 0, uses_anonymous_args = 0
 2150 0000 10B5     		push	{r4, lr}
 2151 0002 0446     		mov	r4, r0
 2152 0004 0846     		mov	r0, r1
 2153 0006 31B1     		cbz	r1, .L388
 2154 0008 94F86837 		ldrb	r3, [r4, #1896]	@ zero_extendqisi2
 2155 000c 23B9     		cbnz	r3, .L394
 2156 000e BDE81040 		pop	{r4, lr}
 2157 0012 FFF7FEBF 		b	_ZN12OutputBuffer10ReleaseAllEPS_
 2158              	.L388:
 2159 0016 10BD     		pop	{r4, pc}
 2160              	.L394:
 2161 0018 D4F87007 		ldr	r0, [r4, #1904]
 2162 001c FFF7FEFF 		bl	_ZN11OutputStack4PushEP12OutputBuffer
 2163 0020 D4F86C37 		ldr	r3, [r4, #1900]
 2164 0024 0022     		movs	r2, #0
 2165 0026 0133     		adds	r3, r3, #1
 2166 0028 84F86927 		strb	r2, [r4, #1897]
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 39


 2167 002c C4F86C37 		str	r3, [r4, #1900]
 2168 0030 10BD     		pop	{r4, pc}
 2169              		.size	_ZN9Webserver15HttpInterpreter16HandleGCodeReplyEP12OutputBuffer, .-_ZN9Webserver15HttpInter
 2170 0032 00BF     		.section	.text._ZN9Webserver15HttpInterpreter16HandleGCodeReplyEPKc,"ax",%progbits
 2171              		.align	2
 2172              		.global	_ZN9Webserver15HttpInterpreter16HandleGCodeReplyEPKc
 2173              		.thumb
 2174              		.thumb_func
 2175              		.type	_ZN9Webserver15HttpInterpreter16HandleGCodeReplyEPKc, %function
 2176              	_ZN9Webserver15HttpInterpreter16HandleGCodeReplyEPKc:
 2177              		@ args = 0, pretend = 0, frame = 8
 2178              		@ frame_needed = 0, uses_anonymous_args = 0
 2179 0000 30B5     		push	{r4, r5, lr}
 2180 0002 90F86837 		ldrb	r3, [r0, #1896]	@ zero_extendqisi2
 2181 0006 83B0     		sub	sp, sp, #12
 2182 0008 0446     		mov	r4, r0
 2183 000a 0D46     		mov	r5, r1
 2184 000c 0BB9     		cbnz	r3, .L407
 2185              	.L395:
 2186 000e 03B0     		add	sp, sp, #12
 2187              		@ sp needed
 2188 0010 30BD     		pop	{r4, r5, pc}
 2189              	.L407:
 2190 0012 D0F87007 		ldr	r0, [r0, #1904]
 2191 0016 FFF7FEFF 		bl	_ZNK11OutputStack11GetLastItemEv
 2192 001a 0190     		str	r0, [sp, #4]
 2193 001c 10B1     		cbz	r0, .L397
 2194 001e 90F89430 		ldrb	r3, [r0, #148]	@ zero_extendqisi2
 2195 0022 53B1     		cbz	r3, .L398
 2196              	.L397:
 2197 0024 01A8     		add	r0, sp, #4
 2198 0026 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2199 002a 0028     		cmp	r0, #0
 2200 002c EFD0     		beq	.L395
 2201 002e D4F87007 		ldr	r0, [r4, #1904]
 2202 0032 0199     		ldr	r1, [sp, #4]
 2203 0034 FFF7FEFF 		bl	_ZN11OutputStack4PushEP12OutputBuffer
 2204 0038 0198     		ldr	r0, [sp, #4]
 2205              	.L398:
 2206 003a 2946     		mov	r1, r5
 2207 003c FFF7FEFF 		bl	_ZN12OutputBuffer3catEPKc
 2208 0040 D4F86C37 		ldr	r3, [r4, #1900]
 2209 0044 0022     		movs	r2, #0
 2210 0046 0133     		adds	r3, r3, #1
 2211 0048 C4F86C37 		str	r3, [r4, #1900]
 2212 004c 84F86927 		strb	r2, [r4, #1897]
 2213 0050 03B0     		add	sp, sp, #12
 2214              		@ sp needed
 2215 0052 30BD     		pop	{r4, r5, pc}
 2216              		.size	_ZN9Webserver15HttpInterpreter16HandleGCodeReplyEPKc, .-_ZN9Webserver15HttpInterpreter16Hand
 2217              		.section	.text._ZN9Webserver15HttpInterpreter22ProcessDeferredRequestEv,"ax",%progbits
 2218              		.align	2
 2219              		.global	_ZN9Webserver15HttpInterpreter22ProcessDeferredRequestEv
 2220              		.thumb
 2221              		.thumb_func
 2222              		.type	_ZN9Webserver15HttpInterpreter22ProcessDeferredRequestEv, %function
 2223              	_ZN9Webserver15HttpInterpreter22ProcessDeferredRequestEv:
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 40


 2224              		@ args = 0, pretend = 0, frame = 8
 2225              		@ frame_needed = 0, uses_anonymous_args = 0
 2226 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2227 0002 83B0     		sub	sp, sp, #12
 2228 0004 0446     		mov	r4, r0
 2229 0006 0023     		movs	r3, #0
 2230 0008 C068     		ldr	r0, [r0, #12]
 2231 000a 02AD     		add	r5, sp, #8
 2232 000c 45F8043D 		str	r3, [r5, #-4]!
 2233 0010 D4F88067 		ldr	r6, [r4, #1920]
 2234 0014 FFF7FEFF 		bl	_ZN7Network6UnlockEv
 2235 0018 294B     		ldr	r3, .L417
 2236 001a 2A46     		mov	r2, r5
 2237 001c 04F28471 		addw	r1, r4, #1924
 2238 0020 D869     		ldr	r0, [r3, #28]
 2239 0022 FFF7FEFF 		bl	_ZN12PrintMonitor19GetFileInfoResponseEPKcRP12OutputBuffer
 2240 0026 0746     		mov	r7, r0
 2241              	.L410:
 2242 0028 E068     		ldr	r0, [r4, #12]
 2243 002a FFF7FEFF 		bl	_ZN7Network4LockEv
 2244 002e 0028     		cmp	r0, #0
 2245 0030 FAD0     		beq	.L410
 2246 0032 D4F88037 		ldr	r3, [r4, #1920]
 2247 0036 9E42     		cmp	r6, r3
 2248 0038 04D0     		beq	.L416
 2249 003a 0198     		ldr	r0, [sp, #4]
 2250 003c FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllEPS_
 2251 0040 03B0     		add	sp, sp, #12
 2252              		@ sp needed
 2253 0042 F0BD     		pop	{r4, r5, r6, r7, pc}
 2254              	.L416:
 2255 0044 A368     		ldr	r3, [r4, #8]
 2256 0046 9D69     		ldr	r5, [r3, #24]
 2257 0048 002F     		cmp	r7, #0
 2258 004a 31D0     		beq	.L412
 2259 004c 0023     		movs	r3, #0
 2260 004e C4F88037 		str	r3, [r4, #1920]
 2261 0052 2846     		mov	r0, r5
 2262 0054 1B49     		ldr	r1, .L417+4
 2263 0056 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 2264 005a 2846     		mov	r0, r5
 2265 005c 1A49     		ldr	r1, .L417+8
 2266 005e FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 2267 0062 2846     		mov	r0, r5
 2268 0064 1949     		ldr	r1, .L417+12
 2269 0066 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 2270 006a 2846     		mov	r0, r5
 2271 006c 1849     		ldr	r1, .L417+16
 2272 006e FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 2273 0072 2846     		mov	r0, r5
 2274 0074 1749     		ldr	r1, .L417+20
 2275 0076 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 2276 007a 2846     		mov	r0, r5
 2277 007c 1649     		ldr	r1, .L417+24
 2278 007e FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 2279 0082 0198     		ldr	r0, [sp, #4]
 2280 0084 D0B1     		cbz	r0, .L415
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 41


 2281 0086 FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 2282 008a 0246     		mov	r2, r0
 2283              	.L413:
 2284 008c 2846     		mov	r0, r5
 2285 008e 1349     		ldr	r1, .L417+28
 2286 0090 FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 2287 0094 2846     		mov	r0, r5
 2288 0096 1249     		ldr	r1, .L417+32
 2289 0098 FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 2290 009c 2846     		mov	r0, r5
 2291 009e 0199     		ldr	r1, [sp, #4]
 2292 00a0 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEP12OutputBuffer
 2293 00a4 2846     		mov	r0, r5
 2294 00a6 0021     		movs	r1, #0
 2295 00a8 FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 2296 00ac 03B0     		add	sp, sp, #12
 2297              		@ sp needed
 2298 00ae F0BD     		pop	{r4, r5, r6, r7, pc}
 2299              	.L412:
 2300 00b0 2846     		mov	r0, r5
 2301 00b2 0221     		movs	r1, #2
 2302 00b4 FFF7FEFF 		bl	_ZN18NetworkTransaction5DeferE12DeferralMode
 2303 00b8 03B0     		add	sp, sp, #12
 2304              		@ sp needed
 2305 00ba F0BD     		pop	{r4, r5, r6, r7, pc}
 2306              	.L415:
 2307 00bc 0246     		mov	r2, r0
 2308 00be E5E7     		b	.L413
 2309              	.L418:
 2310              		.align	2
 2311              	.L417:
 2312 00c0 00000000 		.word	reprap
 2313 00c4 A8030000 		.word	.LC23
 2314 00c8 BC030000 		.word	.LC24
 2315 00cc F0030000 		.word	.LC25
 2316 00d0 04040000 		.word	.LC26
 2317 00d4 10040000 		.word	.LC27
 2318 00d8 20060000 		.word	.LC60
 2319 00dc 4C040000 		.word	.LC29
 2320 00e0 60040000 		.word	.LC30
 2321              		.size	_ZN9Webserver15HttpInterpreter22ProcessDeferredRequestEv, .-_ZN9Webserver15HttpInterpreter22
 2322              		.section	.text._ZN9Webserver15HttpInterpreter15GetJsonResponseEPKcRP12OutputBufferRb,"ax",%progbit
 2323              		.align	2
 2324              		.global	_ZN9Webserver15HttpInterpreter15GetJsonResponseEPKcRP12OutputBufferRb
 2325              		.thumb
 2326              		.thumb_func
 2327              		.type	_ZN9Webserver15HttpInterpreter15GetJsonResponseEPKcRP12OutputBufferRb, %function
 2328              	_ZN9Webserver15HttpInterpreter15GetJsonResponseEPKcRP12OutputBufferRb:
 2329              		@ args = 0, pretend = 0, frame = 40
 2330              		@ frame_needed = 0, uses_anonymous_args = 0
 2331 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2332 0004 0D46     		mov	r5, r1
 2333 0006 0021     		movs	r1, #0
 2334 0008 8AB0     		sub	sp, sp, #40
 2335 000a 0446     		mov	r4, r0
 2336 000c 1970     		strb	r1, [r3]
 2337 000e 2846     		mov	r0, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 42


 2338 0010 A049     		ldr	r1, .L507
 2339 0012 1646     		mov	r6, r2
 2340 0014 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2341 0018 0028     		cmp	r0, #0
 2342 001a 2DD1     		bne	.L495
 2343              	.L420:
 2344 001c 2046     		mov	r0, r4
 2345 001e FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter15IsAuthenticatedEv
 2346 0022 0028     		cmp	r0, #0
 2347 0024 51D0     		beq	.L496
 2348 0026 2846     		mov	r0, r5
 2349 0028 9B49     		ldr	r1, .L507+4
 2350 002a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2351 002e 0028     		cmp	r0, #0
 2352 0030 54D1     		bne	.L497
 2353 0032 2846     		mov	r0, r5
 2354 0034 9949     		ldr	r1, .L507+8
 2355 0036 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2356 003a 0028     		cmp	r0, #0
 2357 003c 70D0     		beq	.L428
 2358 003e 2046     		mov	r0, r4
 2359 0040 9749     		ldr	r1, .L507+12
 2360 0042 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2361 0046 0546     		mov	r5, r0
 2362 0048 0028     		cmp	r0, #0
 2363 004a 00F00881 		beq	.L429
 2364 004e 9449     		ldr	r1, .L507+12
 2365 0050 2046     		mov	r0, r4
 2366 0052 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2367 0056 FFF7FEFF 		bl	atoi
 2368 005a 431E     		subs	r3, r0, #1
 2369 005c 022B     		cmp	r3, #2
 2370 005e 94BF     		ite	ls
 2371 0060 C4B2     		uxtbls	r4, r0
 2372 0062 0124     		movhi	r4, #1
 2373 0064 3068     		ldr	r0, [r6]
 2374 0066 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 2375 006a 2146     		mov	r1, r4
 2376 006c 8D48     		ldr	r0, .L507+16
 2377 006e 0022     		movs	r2, #0
 2378 0070 FFF7FEFF 		bl	_ZN6RepRap17GetStatusResponseEh14ResponseSource
 2379 0074 3060     		str	r0, [r6]
 2380 0076 25E0     		b	.L419
 2381              	.L495:
 2382 0078 2046     		mov	r0, r4
 2383 007a 8B49     		ldr	r1, .L507+20
 2384 007c FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2385 0080 0028     		cmp	r0, #0
 2386 0082 CBD0     		beq	.L420
 2387 0084 2046     		mov	r0, r4
 2388 0086 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter15IsAuthenticatedEv
 2389 008a 0028     		cmp	r0, #0
 2390 008c 34D0     		beq	.L498
 2391              	.L422:
 2392 008e 2046     		mov	r0, r4
 2393 0090 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter12AuthenticateEv
 2394 0094 0028     		cmp	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 43


 2395 0096 3ED0     		beq	.L499
 2396 0098 D4F80037 		ldr	r3, [r4, #1792]
 2397 009c 012B     		cmp	r3, #1
 2398 009e 06D9     		bls	.L457
 2399 00a0 D4F85406 		ldr	r0, [r4, #1620]
 2400 00a4 8149     		ldr	r1, .L507+24
 2401 00a6 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2402 00aa 0028     		cmp	r0, #0
 2403 00ac 75D1     		bne	.L500
 2404              	.L457:
 2405 00ae 6068     		ldr	r0, [r4, #4]
 2406 00b0 3568     		ldr	r5, [r6]
 2407 00b2 FFF7FEFF 		bl	_ZNK8Platform14GetBoardStringEv
 2408 00b6 7E49     		ldr	r1, .L507+28
 2409 00b8 0346     		mov	r3, r0
 2410 00ba 4FF4FA52 		mov	r2, #8000
 2411 00be 2846     		mov	r0, r5
 2412 00c0 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 2413              	.L419:
 2414 00c4 0AB0     		add	sp, sp, #40
 2415              		@ sp needed
 2416 00c6 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2417              	.L496:
 2418 00ca 2046     		mov	r0, r4
 2419 00cc 7949     		ldr	r1, .L507+32
 2420 00ce 4FF4FA72 		mov	r2, #500
 2421 00d2 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 2422 00d6 0AB0     		add	sp, sp, #40
 2423              		@ sp needed
 2424 00d8 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2425              	.L497:
 2426 00dc 2046     		mov	r0, r4
 2427 00de 3468     		ldr	r4, [r6]
 2428 00e0 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter20RemoveAuthenticationEv
 2429 00e4 80F00102 		eor	r2, r0, #1
 2430 00e8 D2B2     		uxtb	r2, r2
 2431 00ea 2046     		mov	r0, r4
 2432 00ec 7249     		ldr	r1, .L507+36
 2433 00ee FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 2434 00f2 0AB0     		add	sp, sp, #40
 2435              		@ sp needed
 2436 00f4 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 2437              	.L498:
 2438 00f8 6B49     		ldr	r1, .L507+20
 2439 00fa 2046     		mov	r0, r4
 2440 00fc FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2441 0100 0146     		mov	r1, r0
 2442 0102 6848     		ldr	r0, .L507+16
 2443 0104 FFF7FEFF 		bl	_ZNK6RepRap13CheckPasswordEPKc
 2444 0108 0028     		cmp	r0, #0
 2445 010a C0D1     		bne	.L422
 2446 010c 3068     		ldr	r0, [r6]
 2447 010e 6B49     		ldr	r1, .L507+40
 2448 0110 FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 2449 0114 D6E7     		b	.L419
 2450              	.L499:
 2451 0116 3068     		ldr	r0, [r6]
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 44


 2452 0118 6949     		ldr	r1, .L507+44
 2453 011a FFF7FEFF 		bl	_ZN12OutputBuffer4copyEPKc
 2454 011e D1E7     		b	.L419
 2455              	.L428:
 2456 0120 2846     		mov	r0, r5
 2457 0122 6849     		ldr	r1, .L507+48
 2458 0124 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2459 0128 0028     		cmp	r0, #0
 2460 012a 62D1     		bne	.L501
 2461              	.L431:
 2462 012c 2846     		mov	r0, r5
 2463 012e 6649     		ldr	r1, .L507+52
 2464 0130 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2465 0134 0028     		cmp	r0, #0
 2466 0136 50D1     		bne	.L502
 2467 0138 2846     		mov	r0, r5
 2468 013a 6449     		ldr	r1, .L507+56
 2469 013c FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2470 0140 0028     		cmp	r0, #0
 2471 0142 72D1     		bne	.L503
 2472              	.L433:
 2473 0144 2846     		mov	r0, r5
 2474 0146 6249     		ldr	r1, .L507+60
 2475 0148 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2476 014c 0028     		cmp	r0, #0
 2477 014e 40F0D380 		bne	.L504
 2478              	.L436:
 2479 0152 2846     		mov	r0, r5
 2480 0154 5F49     		ldr	r1, .L507+64
 2481 0156 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2482 015a 0028     		cmp	r0, #0
 2483 015c 00F08980 		beq	.L505
 2484 0160 2046     		mov	r0, r4
 2485 0162 5D49     		ldr	r1, .L507+68
 2486 0164 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2487 0168 5C4D     		ldr	r5, .L507+72
 2488 016a 5D49     		ldr	r1, .L507+76
 2489 016c 0028     		cmp	r0, #0
 2490 016e 18BF     		it	ne
 2491 0170 0546     		movne	r5, r0
 2492 0172 2046     		mov	r0, r4
 2493 0174 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2494 0178 0446     		mov	r4, r0
 2495 017a 20B1     		cbz	r0, .L438
 2496 017c FFF7FEFF 		bl	atoi
 2497 0180 431E     		subs	r3, r0, #1
 2498 0182 5C42     		rsbs	r4, r3, #0
 2499 0184 5C41     		adcs	r4, r4, r3
 2500              	.L438:
 2501 0186 3068     		ldr	r0, [r6]
 2502 0188 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 2503 018c 2946     		mov	r1, r5
 2504 018e 2246     		mov	r2, r4
 2505 0190 4448     		ldr	r0, .L507+16
 2506 0192 FFF7FEFF 		bl	_ZN6RepRap16GetFilesResponseEPKcb
 2507 0196 3060     		str	r0, [r6]
 2508 0198 94E7     		b	.L419
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 45


 2509              	.L500:
 2510 019a 6068     		ldr	r0, [r4, #4]
 2511 019c FFF7FEFF 		bl	_ZNK8Platform13IsDateTimeSetEv
 2512 01a0 0346     		mov	r3, r0
 2513 01a2 0028     		cmp	r0, #0
 2514 01a4 83D1     		bne	.L457
 2515 01a6 01AA     		add	r2, sp, #4
 2516 01a8 D4F85806 		ldr	r0, [r4, #1624]
 2517 01ac 4D49     		ldr	r1, .L507+80
 2518 01ae 0193     		str	r3, [sp, #4]
 2519 01b0 0293     		str	r3, [sp, #8]
 2520 01b2 0393     		str	r3, [sp, #12]
 2521 01b4 0493     		str	r3, [sp, #16]
 2522 01b6 0593     		str	r3, [sp, #20]
 2523 01b8 0693     		str	r3, [sp, #24]
 2524 01ba 0793     		str	r3, [sp, #28]
 2525 01bc 0893     		str	r3, [sp, #32]
 2526 01be 0993     		str	r3, [sp, #36]
 2527 01c0 FFF7FEFF 		bl	strptime
 2528 01c4 0028     		cmp	r0, #0
 2529 01c6 3FF472AF 		beq	.L457
 2530 01ca 01A8     		add	r0, sp, #4
 2531 01cc FFF7FEFF 		bl	mktime
 2532 01d0 0146     		mov	r1, r0
 2533 01d2 6068     		ldr	r0, [r4, #4]
 2534 01d4 FFF7FEFF 		bl	_ZN8Platform11SetDateTimeEl
 2535 01d8 69E7     		b	.L457
 2536              	.L502:
 2537 01da D4F87827 		ldr	r2, [r4, #1912]
 2538 01de D4F87437 		ldr	r3, [r4, #1908]
 2539 01e2 3068     		ldr	r0, [r6]
 2540 01e4 D21A     		subs	r2, r2, r3
 2541 01e6 18BF     		it	ne
 2542 01e8 0122     		movne	r2, #1
 2543 01ea 3349     		ldr	r1, .L507+36
 2544 01ec FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 2545 01f0 68E7     		b	.L419
 2546              	.L501:
 2547 01f2 2046     		mov	r0, r4
 2548 01f4 3349     		ldr	r1, .L507+48
 2549 01f6 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2550 01fa 0028     		cmp	r0, #0
 2551 01fc 96D0     		beq	.L431
 2552 01fe 294B     		ldr	r3, .L507+16
 2553 0200 2046     		mov	r0, r4
 2554 0202 1B69     		ldr	r3, [r3, #16]
 2555 0204 2F49     		ldr	r1, .L507+48
 2556 0206 9C68     		ldr	r4, [r3, #8]
 2557 0208 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2558 020c 0421     		movs	r1, #4
 2559 020e 0246     		mov	r2, r0
 2560 0210 2046     		mov	r0, r4
 2561 0212 FFF7FEFF 		bl	_ZN17RegularGCodeInput3PutE11MessageTypePKc
 2562 0216 2046     		mov	r0, r4
 2563 0218 3468     		ldr	r4, [r6]
 2564 021a FFF7FEFF 		bl	_ZNK17RegularGCodeInput15BufferSpaceLeftEv
 2565 021e 3249     		ldr	r1, .L507+84
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 46


 2566 0220 0246     		mov	r2, r0
 2567 0222 2046     		mov	r0, r4
 2568 0224 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 2569 0228 4CE7     		b	.L419
 2570              	.L503:
 2571 022a 2046     		mov	r0, r4
 2572 022c 2F49     		ldr	r1, .L507+88
 2573 022e FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2574 0232 0028     		cmp	r0, #0
 2575 0234 86D0     		beq	.L433
 2576 0236 6368     		ldr	r3, [r4, #4]
 2577 0238 2046     		mov	r0, r4
 2578 023a 2C49     		ldr	r1, .L507+88
 2579 023c D3F8B446 		ldr	r4, [r3, #1716]
 2580 0240 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2581 0244 2A49     		ldr	r1, .L507+92
 2582 0246 0246     		mov	r2, r0
 2583 0248 2046     		mov	r0, r4
 2584 024a FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_
 2585 024e 80F00102 		eor	r2, r0, #1
 2586 0252 D2B2     		uxtb	r2, r2
 2587 0254 3068     		ldr	r0, [r6]
 2588 0256 1849     		ldr	r1, .L507+36
 2589 0258 FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 2590 025c 32E7     		b	.L419
 2591              	.L429:
 2592 025e 3068     		ldr	r0, [r6]
 2593 0260 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 2594 0264 2A46     		mov	r2, r5
 2595 0266 0F48     		ldr	r0, .L507+16
 2596 0268 0121     		movs	r1, #1
 2597 026a FFF7FEFF 		bl	_ZN6RepRap23GetLegacyStatusResponseEhi
 2598 026e 3060     		str	r0, [r6]
 2599 0270 28E7     		b	.L419
 2600              	.L505:
 2601 0272 2846     		mov	r0, r5
 2602 0274 1F49     		ldr	r1, .L507+96
 2603 0276 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2604 027a 0746     		mov	r7, r0
 2605 027c 0028     		cmp	r0, #0
 2606 027e 4FD0     		beq	.L439
 2607 0280 D4F88057 		ldr	r5, [r4, #1920]
 2608 0284 002D     		cmp	r5, #0
 2609 0286 6CD0     		beq	.L440
 2610 0288 A368     		ldr	r3, [r4, #8]
 2611 028a 0121     		movs	r1, #1
 2612 028c 9869     		ldr	r0, [r3, #24]
 2613 028e FFF7FEFF 		bl	_ZN18NetworkTransaction5DeferE12DeferralMode
 2614 0292 17E7     		b	.L419
 2615              	.L508:
 2616              		.align	2
 2617              	.L507:
 2618 0294 4C060000 		.word	.LC62
 2619 0298 B4060000 		.word	.LC68
 2620 029c CC060000 		.word	.LC70
 2621 02a0 D4060000 		.word	.LC71
 2622 02a4 00000000 		.word	reprap
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 47


 2623 02a8 54060000 		.word	.LC63
 2624 02ac 60060000 		.word	.LC64
 2625 02b0 68060000 		.word	.LC65
 2626 02b4 A4060000 		.word	.LC67
 2627 02b8 C0060000 		.word	.LC69
 2628 02bc 40070000 		.word	.LC84
 2629 02c0 98060000 		.word	.LC66
 2630 02c4 DC060000 		.word	.LC72
 2631 02c8 6C070000 		.word	.LC87
 2632 02cc E4060000 		.word	.LC73
 2633 02d0 74070000 		.word	.LC88
 2634 02d4 80070000 		.word	.LC89
 2635 02d8 F4060000 		.word	.LC75
 2636 02dc 40060000 		.word	.LC61
 2637 02e0 F8060000 		.word	.LC76
 2638 02e4 4C070000 		.word	.LC85
 2639 02e8 60070000 		.word	.LC86
 2640 02ec EC060000 		.word	.LC74
 2641 02f0 34010000 		.word	.LC9
 2642 02f4 04070000 		.word	.LC77
 2643              	.L504:
 2644 02f8 2046     		mov	r0, r4
 2645 02fa 3D49     		ldr	r1, .L509
 2646 02fc FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2647 0300 0028     		cmp	r0, #0
 2648 0302 3FF426AF 		beq	.L436
 2649 0306 3068     		ldr	r0, [r6]
 2650 0308 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 2651 030c 3849     		ldr	r1, .L509
 2652 030e 2046     		mov	r0, r4
 2653 0310 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2654 0314 0146     		mov	r1, r0
 2655 0316 3748     		ldr	r0, .L509+4
 2656 0318 FFF7FEFF 		bl	_ZN6RepRap19GetFilelistResponseEPKc
 2657 031c 3060     		str	r0, [r6]
 2658 031e D1E6     		b	.L419
 2659              	.L439:
 2660 0320 2846     		mov	r0, r5
 2661 0322 3549     		ldr	r1, .L509+8
 2662 0324 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2663 0328 8046     		mov	r8, r0
 2664 032a 0028     		cmp	r0, #0
 2665 032c 33D0     		beq	.L443
 2666 032e 3349     		ldr	r1, .L509+12
 2667 0330 2046     		mov	r0, r4
 2668 0332 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2669 0336 3249     		ldr	r1, .L509+16
 2670 0338 0546     		mov	r5, r0
 2671 033a 2046     		mov	r0, r4
 2672 033c FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2673 0340 0246     		mov	r2, r0
 2674 0342 2DB3     		cbz	r5, .L447
 2675 0344 20B3     		cbz	r0, .L447
 2676 0346 6368     		ldr	r3, [r4, #4]
 2677 0348 2946     		mov	r1, r5
 2678 034a D3F8B406 		ldr	r0, [r3, #1716]
 2679 034e FFF7FEFF 		bl	_ZN11MassStorage6RenameEPKcS1_
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 48


 2680 0352 3368     		ldr	r3, [r6]
 2681 0354 E8B1     		cbz	r0, .L464
 2682 0356 3A46     		mov	r2, r7
 2683              	.L448:
 2684 0358 1846     		mov	r0, r3
 2685 035a 2A49     		ldr	r1, .L509+20
 2686 035c FFF7FEFF 		bl	_ZN12OutputBuffer6printfEPKcz
 2687 0360 B0E6     		b	.L419
 2688              	.L440:
 2689 0362 2949     		ldr	r1, .L509+24
 2690 0364 2046     		mov	r0, r4
 2691 0366 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2692 036a 0146     		mov	r1, r0
 2693 036c 0028     		cmp	r0, #0
 2694 036e 34D0     		beq	.L441
 2695 0370 04F28470 		addw	r0, r4, #1924
 2696 0374 6422     		movs	r2, #100
 2697 0376 FFF7FEFF 		bl	strncpy
 2698 037a 84F8E757 		strb	r5, [r4, #2023]
 2699              	.L442:
 2700 037e A368     		ldr	r3, [r4, #8]
 2701 0380 2046     		mov	r0, r4
 2702 0382 9B69     		ldr	r3, [r3, #24]
 2703 0384 1B68     		ldr	r3, [r3]
 2704 0386 C4F88037 		str	r3, [r4, #1920]
 2705 038a FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter22ProcessDeferredRequestEv
 2706 038e 99E6     		b	.L419
 2707              	.L447:
 2708 0390 3368     		ldr	r3, [r6]
 2709              	.L464:
 2710 0392 0122     		movs	r2, #1
 2711 0394 E0E7     		b	.L448
 2712              	.L443:
 2713 0396 2846     		mov	r0, r5
 2714 0398 1C49     		ldr	r1, .L509+28
 2715 039a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2716 039e 80B1     		cbz	r0, .L446
 2717 03a0 1349     		ldr	r1, .L509
 2718 03a2 2046     		mov	r0, r4
 2719 03a4 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter11GetKeyValueEPKc
 2720 03a8 0146     		mov	r1, r0
 2721 03aa 0028     		cmp	r0, #0
 2722 03ac F0D0     		beq	.L447
 2723 03ae 6368     		ldr	r3, [r4, #4]
 2724 03b0 D3F8B406 		ldr	r0, [r3, #1716]
 2725 03b4 FFF7FEFF 		bl	_ZN11MassStorage13MakeDirectoryEPKc
 2726 03b8 3368     		ldr	r3, [r6]
 2727 03ba 0028     		cmp	r0, #0
 2728 03bc E9D0     		beq	.L464
 2729 03be 4246     		mov	r2, r8
 2730 03c0 CAE7     		b	.L448
 2731              	.L446:
 2732 03c2 2846     		mov	r0, r5
 2733 03c4 1249     		ldr	r1, .L509+32
 2734 03c6 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2735 03ca 48B9     		cbnz	r0, .L506
 2736 03cc 2046     		mov	r0, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 49


 2737 03ce 1149     		ldr	r1, .L509+36
 2738 03d0 4FF4FA72 		mov	r2, #500
 2739 03d4 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 2740 03d8 74E6     		b	.L419
 2741              	.L441:
 2742 03da 84F88407 		strb	r0, [r4, #1924]
 2743 03de CEE7     		b	.L442
 2744              	.L506:
 2745 03e0 3068     		ldr	r0, [r6]
 2746 03e2 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 2747 03e6 0348     		ldr	r0, .L509+4
 2748 03e8 FFF7FEFF 		bl	_ZN6RepRap17GetConfigResponseEv
 2749 03ec 3060     		str	r0, [r6]
 2750 03ee 69E6     		b	.L419
 2751              	.L510:
 2752              		.align	2
 2753              	.L509:
 2754 03f0 F4060000 		.word	.LC75
 2755 03f4 00000000 		.word	reprap
 2756 03f8 10070000 		.word	.LC78
 2757 03fc 18070000 		.word	.LC79
 2758 0400 1C070000 		.word	.LC80
 2759 0404 C0060000 		.word	.LC69
 2760 0408 EC060000 		.word	.LC74
 2761 040c 20070000 		.word	.LC81
 2762 0410 28070000 		.word	.LC82
 2763 0414 30070000 		.word	.LC83
 2764              		.size	_ZN9Webserver15HttpInterpreter15GetJsonResponseEPKcRP12OutputBufferRb, .-_ZN9Webserver15Http
 2765              		.section	.text._ZN9Webserver15HttpInterpreter16SendJsonResponseEPKc,"ax",%progbits
 2766              		.align	2
 2767              		.global	_ZN9Webserver15HttpInterpreter16SendJsonResponseEPKc
 2768              		.thumb
 2769              		.thumb_func
 2770              		.type	_ZN9Webserver15HttpInterpreter16SendJsonResponseEPKc, %function
 2771              	_ZN9Webserver15HttpInterpreter16SendJsonResponseEPKc:
 2772              		@ args = 0, pretend = 0, frame = 104
 2773              		@ frame_needed = 0, uses_anonymous_args = 0
 2774 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 2775 0002 9BB0     		sub	sp, sp, #108
 2776 0004 0D46     		mov	r5, r1
 2777 0006 0446     		mov	r4, r0
 2778 0008 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter15IsAuthenticatedEv
 2779 000c 0028     		cmp	r0, #0
 2780 000e 00F09280 		beq	.L553
 2781              	.L529:
 2782 0012 2046     		mov	r0, r4
 2783 0014 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter15IsAuthenticatedEv
 2784 0018 E0B1     		cbz	r0, .L514
 2785 001a 2046     		mov	r0, r4
 2786 001c FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter20UpdateAuthenticationEv
 2787 0020 2846     		mov	r0, r5
 2788 0022 5F49     		ldr	r1, .L556
 2789 0024 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2790 0028 0646     		mov	r6, r0
 2791 002a 20B1     		cbz	r0, .L515
 2792 002c 2046     		mov	r0, r4
 2793 002e FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter14SendGCodeReplyEv
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 50


 2794 0032 1BB0     		add	sp, sp, #108
 2795              		@ sp needed
 2796 0034 F0BD     		pop	{r4, r5, r6, r7, pc}
 2797              	.L515:
 2798 0036 2846     		mov	r0, r5
 2799 0038 5A49     		ldr	r1, .L556+4
 2800 003a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2801 003e 0746     		mov	r7, r0
 2802 0040 0028     		cmp	r0, #0
 2803 0042 40F08280 		bne	.L554
 2804 0046 2846     		mov	r0, r5
 2805 0048 5749     		ldr	r1, .L556+8
 2806 004a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2807 004e 0028     		cmp	r0, #0
 2808 0050 40F09780 		bne	.L555
 2809              	.L514:
 2810 0054 01A8     		add	r0, sp, #4
 2811 0056 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 2812 005a 30B9     		cbnz	r0, .L520
 2813 005c A368     		ldr	r3, [r4, #8]
 2814 005e 9B69     		ldr	r3, [r3, #24]
 2815 0060 1868     		ldr	r0, [r3]
 2816 0062 FFF7FEFF 		bl	_ZN7Network9TerminateEP15ConnectionState
 2817              	.L511:
 2818 0066 1BB0     		add	sp, sp, #108
 2819              		@ sp needed
 2820 0068 F0BD     		pop	{r4, r5, r6, r7, pc}
 2821              	.L520:
 2822 006a 0DF10303 		add	r3, sp, #3
 2823 006e 2946     		mov	r1, r5
 2824 0070 01AA     		add	r2, sp, #4
 2825 0072 2046     		mov	r0, r4
 2826 0074 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter15GetJsonResponseEPKcRP12OutputBufferRb
 2827 0078 A368     		ldr	r3, [r4, #8]
 2828 007a 9F69     		ldr	r7, [r3, #24]
 2829 007c 97F82430 		ldrb	r3, [r7, #36]	@ zero_extendqisi2
 2830 0080 052B     		cmp	r3, #5
 2831 0082 75D0     		beq	.L521
 2832 0084 97F82430 		ldrb	r3, [r7, #36]	@ zero_extendqisi2
 2833 0088 032B     		cmp	r3, #3
 2834 008a 71D0     		beq	.L521
 2835 008c 9DF80330 		ldrb	r3, [sp, #3]	@ zero_extendqisi2
 2836 0090 002B     		cmp	r3, #0
 2837 0092 72D0     		beq	.L530
 2838 0094 D4F80437 		ldr	r3, [r4, #1796]
 2839 0098 002B     		cmp	r3, #0
 2840 009a 6ED0     		beq	.L530
 2841 009c 2546     		mov	r5, r4
 2842 009e 0026     		movs	r6, #0
 2843 00a0 04E0     		b	.L531
 2844              	.L523:
 2845 00a2 D4F80437 		ldr	r3, [r4, #1796]
 2846 00a6 0136     		adds	r6, r6, #1
 2847 00a8 B342     		cmp	r3, r6
 2848 00aa 66D9     		bls	.L530
 2849              	.L531:
 2850 00ac D5F87C06 		ldr	r0, [r5, #1660]
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 51


 2851 00b0 3E49     		ldr	r1, .L556+12
 2852 00b2 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2853 00b6 0835     		adds	r5, r5, #8
 2854 00b8 0028     		cmp	r0, #0
 2855 00ba F2D0     		beq	.L523
 2856 00bc 04EBC604 		add	r4, r4, r6, lsl #3
 2857 00c0 D4F88006 		ldr	r0, [r4, #1664]
 2858 00c4 3A49     		ldr	r1, .L556+16
 2859 00c6 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2860 00ca 0446     		mov	r4, r0
 2861              	.L524:
 2862 00cc 3846     		mov	r0, r7
 2863 00ce 3949     		ldr	r1, .L556+20
 2864 00d0 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 2865 00d4 3846     		mov	r0, r7
 2866 00d6 3849     		ldr	r1, .L556+24
 2867 00d8 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 2868 00dc 3846     		mov	r0, r7
 2869 00de 3749     		ldr	r1, .L556+28
 2870 00e0 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 2871 00e4 3846     		mov	r0, r7
 2872 00e6 3649     		ldr	r1, .L556+32
 2873 00e8 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 2874 00ec 3846     		mov	r0, r7
 2875 00ee 3549     		ldr	r1, .L556+36
 2876 00f0 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 2877 00f4 3846     		mov	r0, r7
 2878 00f6 3449     		ldr	r1, .L556+40
 2879 00f8 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 2880 00fc 0198     		ldr	r0, [sp, #4]
 2881 00fe 0028     		cmp	r0, #0
 2882 0100 3DD0     		beq	.L532
 2883 0102 FFF7FEFF 		bl	_ZNK12OutputBuffer6LengthEv
 2884 0106 0246     		mov	r2, r0
 2885              	.L526:
 2886 0108 3846     		mov	r0, r7
 2887 010a 3049     		ldr	r1, .L556+44
 2888 010c FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 2889 0110 274B     		ldr	r3, .L556+16
 2890 0112 2F4A     		ldr	r2, .L556+48
 2891 0114 3846     		mov	r0, r7
 2892 0116 002C     		cmp	r4, #0
 2893 0118 18BF     		it	ne
 2894 011a 1A46     		movne	r2, r3
 2895 011c 2D49     		ldr	r1, .L556+52
 2896 011e FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 2897 0122 3846     		mov	r0, r7
 2898 0124 0199     		ldr	r1, [sp, #4]
 2899 0126 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEP12OutputBuffer
 2900 012a 3846     		mov	r0, r7
 2901 012c 2146     		mov	r1, r4
 2902 012e FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 2903 0132 1BB0     		add	sp, sp, #108
 2904              		@ sp needed
 2905 0134 F0BD     		pop	{r4, r5, r6, r7, pc}
 2906              	.L553:
 2907 0136 2848     		ldr	r0, .L556+56
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 52


 2908 0138 FFF7FEFF 		bl	_ZNK6RepRap13NoPasswordSetEv
 2909 013c 0028     		cmp	r0, #0
 2910 013e 3FF468AF 		beq	.L529
 2911 0142 2046     		mov	r0, r4
 2912 0144 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter12AuthenticateEv
 2913 0148 63E7     		b	.L529
 2914              	.L554:
 2915 014a 6368     		ldr	r3, [r4, #4]
 2916 014c 2349     		ldr	r1, .L556+60
 2917 014e D3F8B406 		ldr	r0, [r3, #1716]
 2918 0152 234A     		ldr	r2, .L556+64
 2919 0154 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameEPKcS1_
 2920 0158 6422     		movs	r2, #100
 2921 015a 0146     		mov	r1, r0
 2922 015c 01A8     		add	r0, sp, #4
 2923 015e FFF7FEFF 		bl	strncpy
 2924 0162 2046     		mov	r0, r4
 2925 0164 01A9     		add	r1, sp, #4
 2926 0166 3246     		mov	r2, r6
 2927 0168 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter8SendFileEPKcb
 2928 016c 1BB0     		add	sp, sp, #108
 2929              		@ sp needed
 2930 016e F0BD     		pop	{r4, r5, r6, r7, pc}
 2931              	.L521:
 2932 0170 0198     		ldr	r0, [sp, #4]
 2933 0172 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 2934 0176 1BB0     		add	sp, sp, #108
 2935              		@ sp needed
 2936 0178 F0BD     		pop	{r4, r5, r6, r7, pc}
 2937              	.L530:
 2938 017a 0024     		movs	r4, #0
 2939 017c A6E7     		b	.L524
 2940              	.L532:
 2941 017e 0246     		mov	r2, r0
 2942 0180 C2E7     		b	.L526
 2943              	.L555:
 2944 0182 D4F84C06 		ldr	r0, [r4, #1612]
 2945 0186 1749     		ldr	r1, .L556+68
 2946 0188 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2947 018c 0028     		cmp	r0, #0
 2948 018e 3FF461AF 		beq	.L514
 2949 0192 2046     		mov	r0, r4
 2950 0194 3A46     		mov	r2, r7
 2951 0196 D4F85016 		ldr	r1, [r4, #1616]
 2952 019a FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter8SendFileEPKcb
 2953 019e 62E7     		b	.L511
 2954              	.L557:
 2955              		.align	2
 2956              	.L556:
 2957 01a0 9C070000 		.word	.LC92
 2958 01a4 A4070000 		.word	.LC93
 2959 01a8 C4070000 		.word	.LC96
 2960 01ac D0070000 		.word	.LC97
 2961 01b0 88070000 		.word	.LC90
 2962 01b4 A8030000 		.word	.LC23
 2963 01b8 BC030000 		.word	.LC24
 2964 01bc F0030000 		.word	.LC25
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 53


 2965 01c0 04040000 		.word	.LC26
 2966 01c4 10040000 		.word	.LC27
 2967 01c8 20060000 		.word	.LC60
 2968 01cc 4C040000 		.word	.LC29
 2969 01d0 94070000 		.word	.LC91
 2970 01d4 DC070000 		.word	.LC98
 2971 01d8 00000000 		.word	reprap
 2972 01dc B0070000 		.word	.LC94
 2973 01e0 B8070000 		.word	.LC95
 2974 01e4 EC060000 		.word	.LC74
 2975              		.size	_ZN9Webserver15HttpInterpreter16SendJsonResponseEPKc, .-_ZN9Webserver15HttpInterpreter16Send
 2976              		.section	.text._ZN9Webserver15HttpInterpreter14ProcessMessageEv,"ax",%progbits
 2977              		.align	2
 2978              		.global	_ZN9Webserver15HttpInterpreter14ProcessMessageEv
 2979              		.thumb
 2980              		.thumb_func
 2981              		.type	_ZN9Webserver15HttpInterpreter14ProcessMessageEv, %function
 2982              	_ZN9Webserver15HttpInterpreter14ProcessMessageEv:
 2983              		@ args = 0, pretend = 0, frame = 40
 2984              		@ frame_needed = 0, uses_anonymous_args = 0
 2985 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 2986 0004 924F     		ldr	r7, .L633
 2987 0006 8CB0     		sub	sp, sp, #48
 2988 0008 B7F84030 		ldrh	r3, [r7, #64]
 2989 000c 0446     		mov	r4, r0
 2990 000e 5A07     		lsls	r2, r3, #29
 2991 0010 48D4     		bmi	.L621
 2992 0012 D4F8FC36 		ldr	r3, [r4, #1788]
 2993 0016 012B     		cmp	r3, #1
 2994 0018 40F28380 		bls	.L622
 2995              	.L566:
 2996 001c D4F83C06 		ldr	r0, [r4, #1596]
 2997 0020 8C49     		ldr	r1, .L633+4
 2998 0022 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 2999 0026 0646     		mov	r6, r0
 3000 0028 28B3     		cbz	r0, .L568
 3001 002a 8B49     		ldr	r1, .L633+8
 3002 002c D4F84006 		ldr	r0, [r4, #1600]
 3003 0030 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 3004 0034 D4F84016 		ldr	r1, [r4, #1600]
 3005 0038 0028     		cmp	r0, #0
 3006 003a 40F0D780 		bne	.L623
 3007 003e 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 3008 0040 2F2B     		cmp	r3, #47
 3009 0042 00F0E480 		beq	.L624
 3010              	.L571:
 3011 0046 2046     		mov	r0, r4
 3012 0048 0122     		movs	r2, #1
 3013 004a FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter8SendFileEPKcb
 3014              	.L570:
 3015 004e 0023     		movs	r3, #0
 3016 0050 04F17D02 		add	r2, r4, #125
 3017 0054 C4F83436 		str	r3, [r4, #1588]
 3018 0058 84F87C30 		strb	r3, [r4, #124]
 3019 005c C4F8FC36 		str	r3, [r4, #1788]
 3020 0060 C4F80037 		str	r3, [r4, #1792]
 3021 0064 C4F80437 		str	r3, [r4, #1796]
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 54


 3022 0068 C4F83C26 		str	r2, [r4, #1596]
 3023 006c 0125     		movs	r5, #1
 3024              	.L616:
 3025 006e 2846     		mov	r0, r5
 3026 0070 0CB0     		add	sp, sp, #48
 3027              		@ sp needed
 3028 0072 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3029              	.L568:
 3030 0076 D4F83C06 		ldr	r0, [r4, #1596]
 3031 007a 7849     		ldr	r1, .L633+12
 3032 007c FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 3033 0080 0028     		cmp	r0, #0
 3034 0082 76D1     		bne	.L625
 3035 0084 2046     		mov	r0, r4
 3036 0086 FFF7FEFF 		bl	_ZNK9Webserver15HttpInterpreter15IsAuthenticatedEv
 3037 008a 0028     		cmp	r0, #0
 3038 008c 54D1     		bne	.L626
 3039              	.L574:
 3040 008e 2046     		mov	r0, r4
 3041 0090 7349     		ldr	r1, .L633+16
 3042 0092 4FF4FA72 		mov	r2, #500
 3043 0096 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 3044 009a 0546     		mov	r5, r0
 3045 009c 2846     		mov	r0, r5
 3046 009e 0CB0     		add	sp, sp, #48
 3047              		@ sp needed
 3048 00a0 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3049              	.L621:
 3050 00a4 D4F8FC36 		ldr	r3, [r4, #1788]
 3051 00a8 4068     		ldr	r0, [r0, #4]
 3052 00aa 0221     		movs	r1, #2
 3053 00ac 6D4A     		ldr	r2, .L633+20
 3054 00ae FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3055 00b2 D4F8FC36 		ldr	r3, [r4, #1788]
 3056 00b6 7BB1     		cbz	r3, .L563
 3057 00b8 2646     		mov	r6, r4
 3058 00ba 0025     		movs	r5, #0
 3059              	.L564:
 3060 00bc D6F83C36 		ldr	r3, [r6, #1596]
 3061 00c0 6068     		ldr	r0, [r4, #4]
 3062 00c2 0221     		movs	r1, #2
 3063 00c4 684A     		ldr	r2, .L633+24
 3064 00c6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3065 00ca D4F8FC36 		ldr	r3, [r4, #1788]
 3066 00ce 0135     		adds	r5, r5, #1
 3067 00d0 AB42     		cmp	r3, r5
 3068 00d2 06F10406 		add	r6, r6, #4
 3069 00d6 F1D8     		bhi	.L564
 3070              	.L563:
 3071 00d8 6068     		ldr	r0, [r4, #4]
 3072 00da 0221     		movs	r1, #2
 3073 00dc 634A     		ldr	r2, .L633+28
 3074 00de FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3075 00e2 D4F80037 		ldr	r3, [r4, #1792]
 3076 00e6 93B1     		cbz	r3, .L562
 3077 00e8 2546     		mov	r5, r4
 3078 00ea 0026     		movs	r6, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 55


 3079              	.L565:
 3080 00ec D5F85026 		ldr	r2, [r5, #1616]
 3081 00f0 D5F84C36 		ldr	r3, [r5, #1612]
 3082 00f4 6068     		ldr	r0, [r4, #4]
 3083 00f6 0221     		movs	r1, #2
 3084 00f8 0092     		str	r2, [sp]
 3085 00fa 5D4A     		ldr	r2, .L633+32
 3086 00fc FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3087 0100 D4F80037 		ldr	r3, [r4, #1792]
 3088 0104 0136     		adds	r6, r6, #1
 3089 0106 B342     		cmp	r3, r6
 3090 0108 05F10805 		add	r5, r5, #8
 3091 010c EED8     		bhi	.L565
 3092              	.L562:
 3093 010e 6068     		ldr	r0, [r4, #4]
 3094 0110 0221     		movs	r1, #2
 3095 0112 584A     		ldr	r2, .L633+36
 3096 0114 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 3097 0118 D4F8FC36 		ldr	r3, [r4, #1788]
 3098 011c 012B     		cmp	r3, #1
 3099 011e 3FF67DAF 		bhi	.L566
 3100              	.L622:
 3101 0122 2046     		mov	r0, r4
 3102 0124 5449     		ldr	r1, .L633+40
 3103 0126 4FF4FA72 		mov	r2, #500
 3104 012a FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 3105 012e 0546     		mov	r5, r0
 3106 0130 2846     		mov	r0, r5
 3107 0132 0CB0     		add	sp, sp, #48
 3108              		@ sp needed
 3109 0134 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3110              	.L626:
 3111 0138 D4F83C06 		ldr	r0, [r4, #1596]
 3112 013c 4F49     		ldr	r1, .L633+44
 3113 013e FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 3114 0142 0028     		cmp	r0, #0
 3115 0144 A3D0     		beq	.L574
 3116 0146 D4F84006 		ldr	r0, [r4, #1600]
 3117 014a 4D49     		ldr	r1, .L633+48
 3118 014c FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 3119 0150 0028     		cmp	r0, #0
 3120 0152 50D0     		beq	.L627
 3121              	.L577:
 3122 0154 D4F80037 		ldr	r3, [r4, #1792]
 3123 0158 002B     		cmp	r3, #0
 3124 015a 66D1     		bne	.L628
 3125              	.L576:
 3126 015c 2046     		mov	r0, r4
 3127 015e 4949     		ldr	r1, .L633+52
 3128 0160 4FF4FA72 		mov	r2, #500
 3129 0164 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 3130 0168 0546     		mov	r5, r0
 3131 016a 2846     		mov	r0, r5
 3132 016c 0CB0     		add	sp, sp, #48
 3133              		@ sp needed
 3134 016e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3135              	.L625:
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 56


 3136 0172 A368     		ldr	r3, [r4, #8]
 3137 0174 4449     		ldr	r1, .L633+56
 3138 0176 9F69     		ldr	r7, [r3, #24]
 3139 0178 0125     		movs	r5, #1
 3140 017a 3846     		mov	r0, r7
 3141 017c FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 3142 0180 3846     		mov	r0, r7
 3143 0182 4249     		ldr	r1, .L633+60
 3144 0184 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 3145 0188 3846     		mov	r0, r7
 3146 018a 4149     		ldr	r1, .L633+64
 3147 018c FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 3148 0190 3846     		mov	r0, r7
 3149 0192 4049     		ldr	r1, .L633+68
 3150 0194 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 3151 0198 3846     		mov	r0, r7
 3152 019a 3F49     		ldr	r1, .L633+72
 3153 019c FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 3154 01a0 3846     		mov	r0, r7
 3155 01a2 3E49     		ldr	r1, .L633+76
 3156 01a4 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 3157 01a8 3846     		mov	r0, r7
 3158 01aa 3D49     		ldr	r1, .L633+80
 3159 01ac FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 3160 01b0 3846     		mov	r0, r7
 3161 01b2 3C49     		ldr	r1, .L633+84
 3162 01b4 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 3163 01b8 3846     		mov	r0, r7
 3164 01ba 3B49     		ldr	r1, .L633+88
 3165 01bc FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 3166 01c0 3846     		mov	r0, r7
 3167 01c2 3146     		mov	r1, r6
 3168 01c4 FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 3169 01c8 04F17D03 		add	r3, r4, #125
 3170 01cc 2846     		mov	r0, r5
 3171 01ce C4F83466 		str	r6, [r4, #1588]
 3172 01d2 84F87C60 		strb	r6, [r4, #124]
 3173 01d6 C4F8FC66 		str	r6, [r4, #1788]
 3174 01da C4F80067 		str	r6, [r4, #1792]
 3175 01de C4F80467 		str	r6, [r4, #1796]
 3176 01e2 C4F83C36 		str	r3, [r4, #1596]
 3177 01e6 0CB0     		add	sp, sp, #48
 3178              		@ sp needed
 3179 01e8 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3180              	.L623:
 3181 01ec 2046     		mov	r0, r4
 3182 01ee 0331     		adds	r1, r1, #3
 3183 01f0 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter16SendJsonResponseEPKc
 3184 01f4 2BE7     		b	.L570
 3185              	.L627:
 3186 01f6 D4F84006 		ldr	r0, [r4, #1600]
 3187 01fa 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 3188 01fc 2F2B     		cmp	r3, #47
 3189 01fe ADD1     		bne	.L576
 3190 0200 0130     		adds	r0, r0, #1
 3191 0202 1F49     		ldr	r1, .L633+48
 3192 0204 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 57


 3193 0208 0028     		cmp	r0, #0
 3194 020a A3D1     		bne	.L577
 3195 020c A6E7     		b	.L576
 3196              	.L624:
 3197 020e 481C     		adds	r0, r1, #1
 3198 0210 1149     		ldr	r1, .L633+8
 3199 0212 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 3200 0216 D4F84016 		ldr	r1, [r4, #1600]
 3201 021a 0028     		cmp	r0, #0
 3202 021c 3FF413AF 		beq	.L571
 3203 0220 2046     		mov	r0, r4
 3204 0222 0431     		adds	r1, r1, #4
 3205 0224 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter16SendJsonResponseEPKc
 3206 0228 11E7     		b	.L570
 3207              	.L628:
 3208 022a D4F84C06 		ldr	r0, [r4, #1612]
 3209 022e 1F49     		ldr	r1, .L633+92
 3210 0230 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 3211 0234 0028     		cmp	r0, #0
 3212 0236 91D0     		beq	.L576
 3213 0238 267C     		ldrb	r6, [r4, #16]	@ zero_extendqisi2
 3214 023a 002E     		cmp	r6, #0
 3215 023c 40F0BF80 		bne	.L594
 3216 0240 D4F80437 		ldr	r3, [r4, #1796]
 3217 0244 002B     		cmp	r3, #0
 3218 0246 00F0AE80 		beq	.L595
 3219 024a 2546     		mov	r5, r4
 3220 024c 35E0     		b	.L596
 3221              	.L634:
 3222 024e 00BF     		.align	2
 3223              	.L633:
 3224 0250 00000000 		.word	reprap
 3225 0254 48080000 		.word	.LC105
 3226 0258 4C080000 		.word	.LC106
 3227 025c 50080000 		.word	.LC107
 3228 0260 64090000 		.word	.LC119
 3229 0264 F0070000 		.word	.LC99
 3230 0268 20080000 		.word	.LC101
 3231 026c 0C080000 		.word	.LC100
 3232 0270 28080000 		.word	.LC103
 3233 0274 24080000 		.word	.LC102
 3234 0278 30080000 		.word	.LC104
 3235 027c B8080000 		.word	.LC112
 3236 0280 C0080000 		.word	.LC113
 3237 0284 90090000 		.word	.LC120
 3238 0288 A8030000 		.word	.LC23
 3239 028c 58080000 		.word	.LC108
 3240 0290 BC030000 		.word	.LC24
 3241 0294 F0030000 		.word	.LC25
 3242 0298 04040000 		.word	.LC26
 3243 029c 10040000 		.word	.LC27
 3244 02a0 74080000 		.word	.LC109
 3245 02a4 A0080000 		.word	.LC110
 3246 02a8 B4080000 		.word	.LC111
 3247 02ac EC060000 		.word	.LC74
 3248              	.L579:
 3249 02b0 D4F80437 		ldr	r3, [r4, #1796]
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 58


 3250 02b4 0136     		adds	r6, r6, #1
 3251 02b6 B342     		cmp	r3, r6
 3252 02b8 75D9     		bls	.L595
 3253              	.L596:
 3254 02ba D5F87C06 		ldr	r0, [r5, #1660]
 3255 02be 5449     		ldr	r1, .L635
 3256 02c0 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 3257 02c4 0835     		adds	r5, r5, #8
 3258 02c6 0028     		cmp	r0, #0
 3259 02c8 F2D0     		beq	.L579
 3260 02ca 04EBC606 		add	r6, r4, r6, lsl #3
 3261 02ce D6F88006 		ldr	r0, [r6, #1664]
 3262 02d2 FFF7FEFF 		bl	atoi
 3263 02d6 4F49     		ldr	r1, .L635+4
 3264 02d8 C4F87407 		str	r0, [r4, #1908]
 3265 02dc D4F85026 		ldr	r2, [r4, #1616]
 3266 02e0 0123     		movs	r3, #1
 3267 02e2 6068     		ldr	r0, [r4, #4]
 3268 02e4 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 3269 02e8 D4F85026 		ldr	r2, [r4, #1616]
 3270 02ec 0146     		mov	r1, r0
 3271 02ee 2046     		mov	r0, r4
 3272 02f0 FFF7FEFF 		bl	_ZN19ProtocolInterpreter11StartUploadEP9FileStorePKc
 3273 02f4 0546     		mov	r5, r0
 3274 02f6 0028     		cmp	r0, #0
 3275 02f8 7FD0     		beq	.L629
 3276 02fa D4F80037 		ldr	r3, [r4, #1792]
 3277 02fe 012B     		cmp	r3, #1
 3278 0300 59D9     		bls	.L583
 3279 0302 D4F85406 		ldr	r0, [r4, #1620]
 3280 0306 4449     		ldr	r1, .L635+8
 3281 0308 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 3282 030c 0028     		cmp	r0, #0
 3283 030e 52D0     		beq	.L583
 3284 0310 0023     		movs	r3, #0
 3285 0312 03AA     		add	r2, sp, #12
 3286 0314 D4F85806 		ldr	r0, [r4, #1624]
 3287 0318 4049     		ldr	r1, .L635+12
 3288 031a 0393     		str	r3, [sp, #12]
 3289 031c 0493     		str	r3, [sp, #16]
 3290 031e 0593     		str	r3, [sp, #20]
 3291 0320 0693     		str	r3, [sp, #24]
 3292 0322 0793     		str	r3, [sp, #28]
 3293 0324 0893     		str	r3, [sp, #32]
 3294 0326 0993     		str	r3, [sp, #36]
 3295 0328 0A93     		str	r3, [sp, #40]
 3296 032a 0B93     		str	r3, [sp, #44]
 3297 032c FFF7FEFF 		bl	strptime
 3298 0330 0028     		cmp	r0, #0
 3299 0332 6AD0     		beq	.L630
 3300 0334 03A8     		add	r0, sp, #12
 3301 0336 FFF7FEFF 		bl	mktime
 3302 033a C4F87C07 		str	r0, [r4, #1916]
 3303              	.L599:
 3304 033e B7F84030 		ldrh	r3, [r7, #64]
 3305 0342 5B07     		lsls	r3, r3, #29
 3306 0344 4ED4     		bmi	.L631
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 59


 3307              	.L586:
 3308 0346 A368     		ldr	r3, [r4, #8]
 3309 0348 4FF00008 		mov	r8, #0
 3310 034c 9869     		ldr	r0, [r3, #24]
 3311 034e C4F87887 		str	r8, [r4, #1912]
 3312 0352 FFF7FEFF 		bl	_ZNK18NetworkTransaction11GetRemoteIPEv
 3313 0356 A368     		ldr	r3, [r4, #8]
 3314 0358 0746     		mov	r7, r0
 3315 035a 9869     		ldr	r0, [r3, #24]
 3316 035c FFF7FEFF 		bl	_ZNK18NetworkTransaction13GetRemotePortEv
 3317 0360 94F86867 		ldrb	r6, [r4, #1896]	@ zero_extendqisi2
 3318 0364 7EB1     		cbz	r6, .L587
 3319 0366 D4F80837 		ldr	r3, [r4, #1800]
 3320 036a BB42     		cmp	r3, r7
 3321 036c 2FD0     		beq	.L632
 3322 036e 4346     		mov	r3, r8
 3323 0370 2246     		mov	r2, r4
 3324 0372 03E0     		b	.L590
 3325              	.L591:
 3326 0374 D2F80817 		ldr	r1, [r2, #1800]
 3327 0378 B942     		cmp	r1, r7
 3328 037a 29D0     		beq	.L588
 3329              	.L590:
 3330 037c 0133     		adds	r3, r3, #1
 3331 037e B342     		cmp	r3, r6
 3332 0380 02F10C02 		add	r2, r2, #12
 3333 0384 F6D3     		bcc	.L591
 3334              	.L587:
 3335 0386 0023     		movs	r3, #0
 3336 0388 04F17D02 		add	r2, r4, #125
 3337 038c C4F83436 		str	r3, [r4, #1588]
 3338 0390 84F87C30 		strb	r3, [r4, #124]
 3339 0394 C4F8FC36 		str	r3, [r4, #1788]
 3340 0398 C4F80037 		str	r3, [r4, #1792]
 3341 039c C4F80437 		str	r3, [r4, #1796]
 3342 03a0 C4F83C26 		str	r2, [r4, #1596]
 3343 03a4 63E6     		b	.L616
 3344              	.L595:
 3345 03a6 2046     		mov	r0, r4
 3346 03a8 1D49     		ldr	r1, .L635+16
 3347 03aa 4FF4FA72 		mov	r2, #500
 3348 03ae FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 3349 03b2 0546     		mov	r5, r0
 3350 03b4 5BE6     		b	.L616
 3351              	.L583:
 3352 03b6 0023     		movs	r3, #0
 3353 03b8 C4F87C37 		str	r3, [r4, #1916]
 3354 03bc BFE7     		b	.L599
 3355              	.L594:
 3356 03be 2046     		mov	r0, r4
 3357 03c0 1849     		ldr	r1, .L635+20
 3358 03c2 4FF4FA72 		mov	r2, #500
 3359 03c6 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 3360 03ca 0546     		mov	r5, r0
 3361 03cc 4FE6     		b	.L616
 3362              	.L632:
 3363 03ce 4346     		mov	r3, r8
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 60


 3364              	.L588:
 3365 03d0 03EB4303 		add	r3, r3, r3, lsl #1
 3366 03d4 04EB8303 		add	r3, r4, r3, lsl #2
 3367 03d8 0122     		movs	r2, #1
 3368 03da A3F81207 		strh	r0, [r3, #1810]	@ movhi
 3369 03de 83F81027 		strb	r2, [r3, #1808]
 3370 03e2 D0E7     		b	.L587
 3371              	.L631:
 3372 03e4 D4F87427 		ldr	r2, [r4, #1908]
 3373 03e8 6068     		ldr	r0, [r4, #4]
 3374 03ea D4F85036 		ldr	r3, [r4, #1616]
 3375 03ee 0221     		movs	r1, #2
 3376 03f0 0092     		str	r2, [sp]
 3377 03f2 0D4A     		ldr	r2, .L635+24
 3378 03f4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 3379 03f8 A5E7     		b	.L586
 3380              	.L629:
 3381 03fa 2046     		mov	r0, r4
 3382 03fc 0B49     		ldr	r1, .L635+28
 3383 03fe 4FF4FA72 		mov	r2, #500
 3384 0402 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 3385 0406 0546     		mov	r5, r0
 3386 0408 31E6     		b	.L616
 3387              	.L630:
 3388 040a C4F87C07 		str	r0, [r4, #1916]
 3389 040e 96E7     		b	.L599
 3390              	.L636:
 3391              		.align	2
 3392              	.L635:
 3393 0410 F8080000 		.word	.LC115
 3394 0414 34010000 		.word	.LC9
 3395 0418 60060000 		.word	.LC64
 3396 041c 4C070000 		.word	.LC85
 3397 0420 08090000 		.word	.LC116
 3398 0424 CC080000 		.word	.LC114
 3399 0428 40090000 		.word	.LC118
 3400 042c 24090000 		.word	.LC117
 3401              		.size	_ZN9Webserver15HttpInterpreter14ProcessMessageEv, .-_ZN9Webserver15HttpInterpreter14ProcessM
 3402              		.section	.text._ZN9Webserver15HttpInterpreter14CharFromClientEc,"ax",%progbits
 3403              		.align	2
 3404              		.global	_ZN9Webserver15HttpInterpreter14CharFromClientEc
 3405              		.thumb
 3406              		.thumb_func
 3407              		.type	_ZN9Webserver15HttpInterpreter14CharFromClientEc, %function
 3408              	_ZN9Webserver15HttpInterpreter14CharFromClientEc:
 3409              		@ args = 0, pretend = 0, frame = 0
 3410              		@ frame_needed = 0, uses_anonymous_args = 0
 3411 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 3412 0002 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 3413 0006 0446     		mov	r4, r0
 3414 0008 0B2B     		cmp	r3, #11
 3415 000a 11D8     		bhi	.L638
 3416 000c DFE813F0 		tbh	[pc, r3, lsl #1]
 3417              	.L640:
 3418 0010 6E00     		.2byte	(.L639-.L640)/2
 3419 0012 A600     		.2byte	(.L641-.L640)/2
 3420 0014 1C01     		.2byte	(.L642-.L640)/2
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 61


 3421 0016 3101     		.2byte	(.L643-.L640)/2
 3422 0018 4C01     		.2byte	(.L644-.L640)/2
 3423 001a BE01     		.2byte	(.L645-.L640)/2
 3424 001c 1C01     		.2byte	(.L642-.L640)/2
 3425 001e 3101     		.2byte	(.L643-.L640)/2
 3426 0020 0E02     		.2byte	(.L646-.L640)/2
 3427 0022 0C00     		.2byte	(.L647-.L640)/2
 3428 0024 1B00     		.2byte	(.L648-.L640)/2
 3429 0026 3500     		.2byte	(.L649-.L640)/2
 3430              	.L647:
 3431 0028 2029     		cmp	r1, #32
 3432 002a 01D0     		beq	.L638
 3433 002c 0929     		cmp	r1, #9
 3434 002e 07D1     		bne	.L711
 3435              	.L638:
 3436 0030 D4F83426 		ldr	r2, [r4, #1588]
 3437              	.L655:
 3438 0034 40F2B753 		movw	r3, #1463
 3439 0038 9A42     		cmp	r2, r3
 3440 003a 15D0     		beq	.L709
 3441              	.L698:
 3442 003c 0020     		movs	r0, #0
 3443 003e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3444              	.L711:
 3445 0040 0A23     		movs	r3, #10
 3446 0042 80F87C30 		strb	r3, [r0, #124]
 3447              	.L648:
 3448 0046 0A29     		cmp	r1, #10
 3449 0048 00F07383 		beq	.L712
 3450 004c 0D29     		cmp	r1, #13
 3451 004e EFD0     		beq	.L638
 3452              	.L706:
 3453 0050 D4F83436 		ldr	r3, [r4, #1588]
 3454 0054 5A1C     		adds	r2, r3, #1
 3455 0056 2344     		add	r3, r3, r4
 3456 0058 C4F83426 		str	r2, [r4, #1588]
 3457 005c 83F87D10 		strb	r1, [r3, #125]
 3458 0060 40F2B753 		movw	r3, #1463
 3459 0064 9A42     		cmp	r2, r3
 3460 0066 E9D1     		bne	.L698
 3461              	.L709:
 3462 0068 EF4B     		ldr	r3, .L716
 3463              	.L708:
 3464 006a 2046     		mov	r0, r4
 3465 006c 1968     		ldr	r1, [r3]
 3466 006e 4FF4FA72 		mov	r2, #500
 3467 0072 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 3468 0076 FFF7FEBF 		b	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 3469              	.L649:
 3470 007a A1F10903 		sub	r3, r1, #9
 3471 007e 172B     		cmp	r3, #23
 3472 0080 00F23A83 		bhi	.L692
 3473 0084 01A2     		adr	r2, .L694
 3474 0086 52F823F0 		ldr	pc, [r2, r3, lsl #2]
 3475 008a 00BF     		.p2align 2
 3476              	.L694:
 3477 008c 57050000 		.word	.L693+1
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 62


 3478 0090 3D050000 		.word	.L695+1
 3479 0094 F9060000 		.word	.L692+1
 3480 0098 F9060000 		.word	.L692+1
 3481 009c 31000000 		.word	.L638+1
 3482 00a0 F9060000 		.word	.L692+1
 3483 00a4 F9060000 		.word	.L692+1
 3484 00a8 F9060000 		.word	.L692+1
 3485 00ac F9060000 		.word	.L692+1
 3486 00b0 F9060000 		.word	.L692+1
 3487 00b4 F9060000 		.word	.L692+1
 3488 00b8 F9060000 		.word	.L692+1
 3489 00bc F9060000 		.word	.L692+1
 3490 00c0 F9060000 		.word	.L692+1
 3491 00c4 F9060000 		.word	.L692+1
 3492 00c8 F9060000 		.word	.L692+1
 3493 00cc F9060000 		.word	.L692+1
 3494 00d0 F9060000 		.word	.L692+1
 3495 00d4 F9060000 		.word	.L692+1
 3496 00d8 F9060000 		.word	.L692+1
 3497 00dc F9060000 		.word	.L692+1
 3498 00e0 F9060000 		.word	.L692+1
 3499 00e4 F9060000 		.word	.L692+1
 3500 00e8 57050000 		.word	.L693+1
 3501              	.L639:
 3502 00ec A1F10903 		sub	r3, r1, #9
 3503 00f0 172B     		cmp	r3, #23
 3504 00f2 ADD8     		bhi	.L706
 3505 00f4 01A2     		adr	r2, .L652
 3506 00f6 52F823F0 		ldr	pc, [r2, r3, lsl #2]
 3507 00fa 00BF     		.p2align 2
 3508              	.L652:
 3509 00fc 03050000 		.word	.L651+1
 3510 0100 D3040000 		.word	.L653+1
 3511 0104 51000000 		.word	.L706+1
 3512 0108 51000000 		.word	.L706+1
 3513 010c 31000000 		.word	.L638+1
 3514 0110 51000000 		.word	.L706+1
 3515 0114 51000000 		.word	.L706+1
 3516 0118 51000000 		.word	.L706+1
 3517 011c 51000000 		.word	.L706+1
 3518 0120 51000000 		.word	.L706+1
 3519 0124 51000000 		.word	.L706+1
 3520 0128 51000000 		.word	.L706+1
 3521 012c 51000000 		.word	.L706+1
 3522 0130 51000000 		.word	.L706+1
 3523 0134 51000000 		.word	.L706+1
 3524 0138 51000000 		.word	.L706+1
 3525 013c 51000000 		.word	.L706+1
 3526 0140 51000000 		.word	.L706+1
 3527 0144 51000000 		.word	.L706+1
 3528 0148 51000000 		.word	.L706+1
 3529 014c 51000000 		.word	.L706+1
 3530 0150 51000000 		.word	.L706+1
 3531 0154 51000000 		.word	.L706+1
 3532 0158 03050000 		.word	.L651+1
 3533              	.L641:
 3534 015c A1F10903 		sub	r3, r1, #9
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 63


 3535 0160 362B     		cmp	r3, #54
 3536 0162 3FF675AF 		bhi	.L706
 3537 0166 01A2     		adr	r2, .L659
 3538 0168 52F823F0 		ldr	pc, [r2, r3, lsl #2]
 3539              		.p2align 2
 3540              	.L659:
 3541 016c D5050000 		.word	.L658+1
 3542 0170 A5050000 		.word	.L660+1
 3543 0174 51000000 		.word	.L706+1
 3544 0178 51000000 		.word	.L706+1
 3545 017c 31000000 		.word	.L638+1
 3546 0180 51000000 		.word	.L706+1
 3547 0184 51000000 		.word	.L706+1
 3548 0188 51000000 		.word	.L706+1
 3549 018c 51000000 		.word	.L706+1
 3550 0190 51000000 		.word	.L706+1
 3551 0194 51000000 		.word	.L706+1
 3552 0198 51000000 		.word	.L706+1
 3553 019c 51000000 		.word	.L706+1
 3554 01a0 51000000 		.word	.L706+1
 3555 01a4 51000000 		.word	.L706+1
 3556 01a8 51000000 		.word	.L706+1
 3557 01ac 51000000 		.word	.L706+1
 3558 01b0 51000000 		.word	.L706+1
 3559 01b4 51000000 		.word	.L706+1
 3560 01b8 51000000 		.word	.L706+1
 3561 01bc 51000000 		.word	.L706+1
 3562 01c0 51000000 		.word	.L706+1
 3563 01c4 51000000 		.word	.L706+1
 3564 01c8 D5050000 		.word	.L658+1
 3565 01cc 51000000 		.word	.L706+1
 3566 01d0 51000000 		.word	.L706+1
 3567 01d4 51000000 		.word	.L706+1
 3568 01d8 51000000 		.word	.L706+1
 3569 01dc 39060000 		.word	.L662+1
 3570 01e0 51000000 		.word	.L706+1
 3571 01e4 51000000 		.word	.L706+1
 3572 01e8 51000000 		.word	.L706+1
 3573 01ec 51000000 		.word	.L706+1
 3574 01f0 51000000 		.word	.L706+1
 3575 01f4 51000000 		.word	.L706+1
 3576 01f8 51000000 		.word	.L706+1
 3577 01fc 51000000 		.word	.L706+1
 3578 0200 51000000 		.word	.L706+1
 3579 0204 51000000 		.word	.L706+1
 3580 0208 51000000 		.word	.L706+1
 3581 020c 51000000 		.word	.L706+1
 3582 0210 51000000 		.word	.L706+1
 3583 0214 51000000 		.word	.L706+1
 3584 0218 51000000 		.word	.L706+1
 3585 021c 51000000 		.word	.L706+1
 3586 0220 51000000 		.word	.L706+1
 3587 0224 51000000 		.word	.L706+1
 3588 0228 51000000 		.word	.L706+1
 3589 022c 51000000 		.word	.L706+1
 3590 0230 51000000 		.word	.L706+1
 3591 0234 51000000 		.word	.L706+1
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 64


 3592 0238 51000000 		.word	.L706+1
 3593 023c 51000000 		.word	.L706+1
 3594 0240 51000000 		.word	.L706+1
 3595 0244 09060000 		.word	.L663+1
 3596              	.L642:
 3597 0248 A1F13002 		sub	r2, r1, #48
 3598 024c D2B2     		uxtb	r2, r2
 3599 024e 092A     		cmp	r2, #9
 3600 0250 40F21781 		bls	.L713
 3601 0254 A1F14102 		sub	r2, r1, #65
 3602 0258 052A     		cmp	r2, #5
 3603 025a 00F27082 		bhi	.L679
 3604 025e 3739     		subs	r1, r1, #55
 3605 0260 0901     		lsls	r1, r1, #4
 3606 0262 0133     		adds	r3, r3, #1
 3607 0264 80F83816 		strb	r1, [r0, #1592]
 3608 0268 80F87C30 		strb	r3, [r0, #124]
 3609 026c D0F83426 		ldr	r2, [r0, #1588]
 3610 0270 E0E6     		b	.L655
 3611              	.L643:
 3612 0272 A1F13000 		sub	r0, r1, #48
 3613 0276 C0B2     		uxtb	r0, r0
 3614 0278 0928     		cmp	r0, #9
 3615 027a 40F2F380 		bls	.L714
 3616 027e A1F14102 		sub	r2, r1, #65
 3617 0282 052A     		cmp	r2, #5
 3618 0284 00F25B82 		bhi	.L679
 3619 0288 D4F83406 		ldr	r0, [r4, #1588]
 3620 028c 94F83826 		ldrb	r2, [r4, #1592]	@ zero_extendqisi2
 3621 0290 3739     		subs	r1, r1, #55
 3622 0292 1143     		orrs	r1, r1, r2
 3623 0294 023B     		subs	r3, r3, #2
 3624 0296 421C     		adds	r2, r0, #1
 3625 0298 2044     		add	r0, r0, r4
 3626 029a C4F83426 		str	r2, [r4, #1588]
 3627 029e 80F87D10 		strb	r1, [r0, #125]
 3628 02a2 84F87C30 		strb	r3, [r4, #124]
 3629 02a6 C5E6     		b	.L655
 3630              	.L644:
 3631 02a8 A1F10903 		sub	r3, r1, #9
 3632 02ac 342B     		cmp	r3, #52
 3633 02ae 3FF6CFAE 		bhi	.L706
 3634 02b2 01A2     		adr	r2, .L667
 3635 02b4 52F823F0 		ldr	pc, [r2, r3, lsl #2]
 3636              		.p2align 2
 3637              	.L667:
 3638 02b8 C5040000 		.word	.L666+1
 3639 02bc C5040000 		.word	.L666+1
 3640 02c0 51000000 		.word	.L706+1
 3641 02c4 51000000 		.word	.L706+1
 3642 02c8 C5040000 		.word	.L666+1
 3643 02cc 51000000 		.word	.L706+1
 3644 02d0 51000000 		.word	.L706+1
 3645 02d4 51000000 		.word	.L706+1
 3646 02d8 51000000 		.word	.L706+1
 3647 02dc 51000000 		.word	.L706+1
 3648 02e0 51000000 		.word	.L706+1
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 65


 3649 02e4 51000000 		.word	.L706+1
 3650 02e8 51000000 		.word	.L706+1
 3651 02ec 51000000 		.word	.L706+1
 3652 02f0 51000000 		.word	.L706+1
 3653 02f4 51000000 		.word	.L706+1
 3654 02f8 51000000 		.word	.L706+1
 3655 02fc 51000000 		.word	.L706+1
 3656 0300 51000000 		.word	.L706+1
 3657 0304 51000000 		.word	.L706+1
 3658 0308 51000000 		.word	.L706+1
 3659 030c 51000000 		.word	.L706+1
 3660 0310 51000000 		.word	.L706+1
 3661 0314 C5040000 		.word	.L666+1
 3662 0318 51000000 		.word	.L706+1
 3663 031c 51000000 		.word	.L706+1
 3664 0320 51000000 		.word	.L706+1
 3665 0324 51000000 		.word	.L706+1
 3666 0328 C5040000 		.word	.L666+1
 3667 032c C5040000 		.word	.L666+1
 3668 0330 51000000 		.word	.L706+1
 3669 0334 51000000 		.word	.L706+1
 3670 0338 51000000 		.word	.L706+1
 3671 033c 51000000 		.word	.L706+1
 3672 0340 51000000 		.word	.L706+1
 3673 0344 51000000 		.word	.L706+1
 3674 0348 51000000 		.word	.L706+1
 3675 034c 51000000 		.word	.L706+1
 3676 0350 51000000 		.word	.L706+1
 3677 0354 51000000 		.word	.L706+1
 3678 0358 51000000 		.word	.L706+1
 3679 035c 51000000 		.word	.L706+1
 3680 0360 51000000 		.word	.L706+1
 3681 0364 51000000 		.word	.L706+1
 3682 0368 51000000 		.word	.L706+1
 3683 036c 51000000 		.word	.L706+1
 3684 0370 51000000 		.word	.L706+1
 3685 0374 51000000 		.word	.L706+1
 3686 0378 51000000 		.word	.L706+1
 3687 037c 51000000 		.word	.L706+1
 3688 0380 51000000 		.word	.L706+1
 3689 0384 51000000 		.word	.L706+1
 3690 0388 95040000 		.word	.L668+1
 3691              	.L645:
 3692 038c A1F10903 		sub	r3, r1, #9
 3693 0390 222B     		cmp	r3, #34
 3694 0392 3FF65DAE 		bhi	.L706
 3695 0396 01A2     		adr	r2, .L671
 3696 0398 52F823F0 		ldr	pc, [r2, r3, lsl #2]
 3697              		.p2align 2
 3698              	.L671:
 3699 039c C5060000 		.word	.L670+1
 3700 03a0 93060000 		.word	.L672+1
 3701 03a4 51000000 		.word	.L706+1
 3702 03a8 51000000 		.word	.L706+1
 3703 03ac 31000000 		.word	.L638+1
 3704 03b0 51000000 		.word	.L706+1
 3705 03b4 51000000 		.word	.L706+1
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 66


 3706 03b8 51000000 		.word	.L706+1
 3707 03bc 51000000 		.word	.L706+1
 3708 03c0 51000000 		.word	.L706+1
 3709 03c4 51000000 		.word	.L706+1
 3710 03c8 51000000 		.word	.L706+1
 3711 03cc 51000000 		.word	.L706+1
 3712 03d0 51000000 		.word	.L706+1
 3713 03d4 51000000 		.word	.L706+1
 3714 03d8 51000000 		.word	.L706+1
 3715 03dc 51000000 		.word	.L706+1
 3716 03e0 51000000 		.word	.L706+1
 3717 03e4 51000000 		.word	.L706+1
 3718 03e8 51000000 		.word	.L706+1
 3719 03ec 51000000 		.word	.L706+1
 3720 03f0 51000000 		.word	.L706+1
 3721 03f4 51000000 		.word	.L706+1
 3722 03f8 C5060000 		.word	.L670+1
 3723 03fc 51000000 		.word	.L706+1
 3724 0400 51000000 		.word	.L706+1
 3725 0404 51000000 		.word	.L706+1
 3726 0408 51000000 		.word	.L706+1
 3727 040c 87060000 		.word	.L674+1
 3728 0410 59060000 		.word	.L675+1
 3729 0414 51000000 		.word	.L706+1
 3730 0418 51000000 		.word	.L706+1
 3731 041c 51000000 		.word	.L706+1
 3732 0420 51000000 		.word	.L706+1
 3733 0424 45060000 		.word	.L676+1
 3734              	.L717:
 3735              		.align	2
 3736              	.L716:
 3737 0428 00000000 		.word	.LANCHOR6
 3738              	.L646:
 3739 042c 0D29     		cmp	r1, #13
 3740 042e 3FF4FFAD 		beq	.L638
 3741 0432 3A29     		cmp	r1, #58
 3742 0434 00F09B80 		beq	.L683
 3743 0438 0A29     		cmp	r1, #10
 3744 043a 7FF409AE 		bne	.L706
 3745 043e D0F80427 		ldr	r2, [r0, #1796]
 3746 0442 D0F83436 		ldr	r3, [r0, #1588]
 3747 0446 00EBC202 		add	r2, r0, r2, lsl #3
 3748 044a D2F87C26 		ldr	r2, [r2, #1660]
 3749 044e 0344     		add	r3, r3, r0
 3750 0450 7D33     		adds	r3, r3, #125
 3751 0452 9A42     		cmp	r2, r3
 3752 0454 78D0     		beq	.L710
 3753 0456 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 3754 045a C549     		ldr	r1, .L718
 3755 045c 4FF4FA72 		mov	r2, #500
 3756 0460 FFF7FEBF 		b	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 3757              	.L714:
 3758 0464 D4F83416 		ldr	r1, [r4, #1588]
 3759 0468 94F83856 		ldrb	r5, [r4, #1592]	@ zero_extendqisi2
 3760 046c 4A1C     		adds	r2, r1, #1
 3761 046e 023B     		subs	r3, r3, #2
 3762 0470 2144     		add	r1, r1, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 67


 3763 0472 2843     		orrs	r0, r0, r5
 3764 0474 C4F83426 		str	r2, [r4, #1588]
 3765 0478 81F87D00 		strb	r0, [r1, #125]
 3766 047c 84F87C30 		strb	r3, [r4, #124]
 3767 0480 D8E5     		b	.L655
 3768              	.L713:
 3769 0482 1201     		lsls	r2, r2, #4
 3770 0484 0133     		adds	r3, r3, #1
 3771 0486 80F83826 		strb	r2, [r0, #1592]
 3772 048a 80F87C30 		strb	r3, [r0, #124]
 3773 048e D0F83426 		ldr	r2, [r0, #1588]
 3774 0492 CFE5     		b	.L655
 3775              	.L668:
 3776 0494 D0F83436 		ldr	r3, [r0, #1588]
 3777 0498 D0F80017 		ldr	r1, [r0, #1792]
 3778 049c C618     		adds	r6, r0, r3
 3779 049e 00EBC105 		add	r5, r0, r1, lsl #3
 3780 04a2 5A1C     		adds	r2, r3, #1
 3781 04a4 7E36     		adds	r6, r6, #126
 3782 04a6 0344     		add	r3, r3, r0
 3783 04a8 0027     		movs	r7, #0
 3784 04aa 0131     		adds	r1, r1, #1
 3785 04ac 0520     		movs	r0, #5
 3786 04ae C4F83426 		str	r2, [r4, #1588]
 3787 04b2 83F87D70 		strb	r7, [r3, #125]
 3788 04b6 C5F85066 		str	r6, [r5, #1616]
 3789 04ba C4F80017 		str	r1, [r4, #1792]
 3790 04be 84F87C00 		strb	r0, [r4, #124]
 3791 04c2 B7E5     		b	.L655
 3792              	.L666:
 3793 04c4 AB49     		ldr	r1, .L718+4
 3794 04c6 4FF4FA72 		mov	r2, #500
 3795 04ca BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 3796 04ce FFF7FEBF 		b	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 3797              	.L653:
 3798 04d2 D0F83436 		ldr	r3, [r0, #1588]
 3799 04d6 D0F8FC06 		ldr	r0, [r0, #1788]
 3800 04da E618     		adds	r6, r4, r3
 3801 04dc 5A1C     		adds	r2, r3, #1
 3802 04de 0021     		movs	r1, #0
 3803 04e0 7E36     		adds	r6, r6, #126
 3804 04e2 2344     		add	r3, r3, r4
 3805 04e4 0130     		adds	r0, r0, #1
 3806 04e6 0825     		movs	r5, #8
 3807 04e8 C4F83426 		str	r2, [r4, #1588]
 3808 04ec 83F87D10 		strb	r1, [r3, #125]
 3809 04f0 C4F87C66 		str	r6, [r4, #1660]
 3810 04f4 C4F80417 		str	r1, [r4, #1796]
 3811 04f8 C4F8FC06 		str	r0, [r4, #1788]
 3812 04fc 84F87C50 		strb	r5, [r4, #124]
 3813 0500 98E5     		b	.L655
 3814              	.L651:
 3815 0502 D0F83436 		ldr	r3, [r0, #1588]
 3816 0506 D0F8FC16 		ldr	r1, [r0, #1788]
 3817 050a 5A1C     		adds	r2, r3, #1
 3818 050c 1844     		add	r0, r0, r3
 3819 050e 0025     		movs	r5, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 68


 3820 0510 0329     		cmp	r1, #3
 3821 0512 C4F83426 		str	r2, [r4, #1588]
 3822 0516 80F87D50 		strb	r5, [r0, #125]
 3823 051a 00F21281 		bhi	.L664
 3824 051e 00F17E03 		add	r3, r0, #126
 3825 0522 481C     		adds	r0, r1, #1
 3826 0524 0128     		cmp	r0, #1
 3827 0526 04EB8101 		add	r1, r4, r1, lsl #2
 3828 052a C4F8FC06 		str	r0, [r4, #1788]
 3829 052e C1F84036 		str	r3, [r1, #1600]
 3830 0532 7FF47FAD 		bne	.L655
 3831              	.L707:
 3832 0536 84F87C00 		strb	r0, [r4, #124]
 3833 053a 7BE5     		b	.L655
 3834              	.L695:
 3835 053c D0F83436 		ldr	r3, [r0, #1588]
 3836 0540 0022     		movs	r2, #0
 3837 0542 0344     		add	r3, r3, r0
 3838 0544 83F87D20 		strb	r2, [r3, #125]
 3839              	.L710:
 3840 0548 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter14ProcessMessageEv
 3841 054c 0028     		cmp	r0, #0
 3842 054e 3FF46FAD 		beq	.L638
 3843 0552 0120     		movs	r0, #1
 3844 0554 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3845              	.L693:
 3846 0556 D0F83436 		ldr	r3, [r0, #1588]
 3847 055a 0A20     		movs	r0, #10
 3848 055c 5A1C     		adds	r2, r3, #1
 3849 055e 2344     		add	r3, r3, r4
 3850 0560 C4F83426 		str	r2, [r4, #1588]
 3851 0564 83F87D10 		strb	r1, [r3, #125]
 3852 0568 84F87C00 		strb	r0, [r4, #124]
 3853 056c 62E5     		b	.L655
 3854              	.L683:
 3855 056e D0F80437 		ldr	r3, [r0, #1796]
 3856 0572 0F2B     		cmp	r3, #15
 3857 0574 00F0F580 		beq	.L715
 3858 0578 D0F83416 		ldr	r1, [r0, #1588]
 3859 057c 00EBC305 		add	r5, r0, r3, lsl #3
 3860 0580 4618     		adds	r6, r0, r1
 3861 0582 4A1C     		adds	r2, r1, #1
 3862 0584 0027     		movs	r7, #0
 3863 0586 0144     		add	r1, r1, r0
 3864 0588 7E36     		adds	r6, r6, #126
 3865 058a 0133     		adds	r3, r3, #1
 3866 058c 0920     		movs	r0, #9
 3867 058e C4F83426 		str	r2, [r4, #1588]
 3868 0592 81F87D70 		strb	r7, [r1, #125]
 3869 0596 C5F88066 		str	r6, [r5, #1664]
 3870 059a C4F80437 		str	r3, [r4, #1796]
 3871 059e 84F87C00 		strb	r0, [r4, #124]
 3872 05a2 47E5     		b	.L655
 3873              	.L660:
 3874 05a4 D0F83436 		ldr	r3, [r0, #1588]
 3875 05a8 D0F8FC16 		ldr	r1, [r0, #1788]
 3876 05ac C518     		adds	r5, r0, r3
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 69


 3877 05ae C618     		adds	r6, r0, r3
 3878 05b0 5A1C     		adds	r2, r3, #1
 3879 05b2 7E35     		adds	r5, r5, #126
 3880 05b4 0023     		movs	r3, #0
 3881 05b6 0131     		adds	r1, r1, #1
 3882 05b8 C4F83426 		str	r2, [r4, #1588]
 3883 05bc 0820     		movs	r0, #8
 3884 05be 86F87D30 		strb	r3, [r6, #125]
 3885 05c2 C4F87C56 		str	r5, [r4, #1660]
 3886 05c6 C4F80037 		str	r3, [r4, #1792]
 3887 05ca C4F80437 		str	r3, [r4, #1796]
 3888 05ce C4F8FC16 		str	r1, [r4, #1788]
 3889 05d2 B0E7     		b	.L707
 3890              	.L658:
 3891 05d4 D0F83436 		ldr	r3, [r0, #1588]
 3892 05d8 D0F8FC16 		ldr	r1, [r0, #1788]
 3893 05dc C518     		adds	r5, r0, r3
 3894 05de 5A1C     		adds	r2, r3, #1
 3895 05e0 0020     		movs	r0, #0
 3896 05e2 0329     		cmp	r1, #3
 3897 05e4 C4F83426 		str	r2, [r4, #1588]
 3898 05e8 85F87D00 		strb	r0, [r5, #125]
 3899 05ec 00F2A980 		bhi	.L664
 3900 05f0 05F17E03 		add	r3, r5, #126
 3901 05f4 4D1C     		adds	r5, r1, #1
 3902 05f6 04EB8101 		add	r1, r4, r1, lsl #2
 3903 05fa C4F8FC56 		str	r5, [r4, #1788]
 3904 05fe C1F84036 		str	r3, [r1, #1600]
 3905 0602 84F87C00 		strb	r0, [r4, #124]
 3906 0606 15E5     		b	.L655
 3907              	.L663:
 3908 0608 D0F83436 		ldr	r3, [r0, #1588]
 3909 060c D0F8FC06 		ldr	r0, [r0, #1788]
 3910 0610 E618     		adds	r6, r4, r3
 3911 0612 5A1C     		adds	r2, r3, #1
 3912 0614 0021     		movs	r1, #0
 3913 0616 7E36     		adds	r6, r6, #126
 3914 0618 2344     		add	r3, r3, r4
 3915 061a 0130     		adds	r0, r0, #1
 3916 061c 0425     		movs	r5, #4
 3917 061e C4F83426 		str	r2, [r4, #1588]
 3918 0622 83F87D10 		strb	r1, [r3, #125]
 3919 0626 C4F84C66 		str	r6, [r4, #1612]
 3920 062a C4F80017 		str	r1, [r4, #1792]
 3921 062e C4F8FC06 		str	r0, [r4, #1788]
 3922 0632 84F87C50 		strb	r5, [r4, #124]
 3923 0636 FDE4     		b	.L655
 3924              	.L662:
 3925 0638 0223     		movs	r3, #2
 3926 063a 80F87C30 		strb	r3, [r0, #124]
 3927 063e D0F83426 		ldr	r2, [r0, #1588]
 3928 0642 F7E4     		b	.L655
 3929              	.L676:
 3930 0644 D0F83436 		ldr	r3, [r0, #1588]
 3931 0648 2021     		movs	r1, #32
 3932 064a 5A1C     		adds	r2, r3, #1
 3933 064c 0344     		add	r3, r3, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 70


 3934 064e C0F83426 		str	r2, [r0, #1588]
 3935 0652 83F87D10 		strb	r1, [r3, #125]
 3936 0656 EDE4     		b	.L655
 3937              	.L675:
 3938 0658 D0F83436 		ldr	r3, [r0, #1588]
 3939 065c D0F80017 		ldr	r1, [r0, #1792]
 3940 0660 C518     		adds	r5, r0, r3
 3941 0662 5A1C     		adds	r2, r3, #1
 3942 0664 7E35     		adds	r5, r5, #126
 3943 0666 0344     		add	r3, r3, r0
 3944 0668 0026     		movs	r6, #0
 3945 066a 00EBC100 		add	r0, r0, r1, lsl #3
 3946 066e 0429     		cmp	r1, #4
 3947 0670 C4F83426 		str	r2, [r4, #1588]
 3948 0674 83F87D60 		strb	r6, [r3, #125]
 3949 0678 C0F84C56 		str	r5, [r0, #1612]
 3950 067c 69D8     		bhi	.L677
 3951 067e 0423     		movs	r3, #4
 3952 0680 84F87C30 		strb	r3, [r4, #124]
 3953 0684 D6E4     		b	.L655
 3954              	.L674:
 3955 0686 0623     		movs	r3, #6
 3956 0688 80F87C30 		strb	r3, [r0, #124]
 3957 068c D0F83426 		ldr	r2, [r0, #1588]
 3958 0690 D0E4     		b	.L655
 3959              	.L672:
 3960 0692 D0F83436 		ldr	r3, [r0, #1588]
 3961 0696 D0F80057 		ldr	r5, [r0, #1792]
 3962 069a 1844     		add	r0, r0, r3
 3963 069c 5A1C     		adds	r2, r3, #1
 3964 069e 7E30     		adds	r0, r0, #126
 3965 06a0 0021     		movs	r1, #0
 3966 06a2 2344     		add	r3, r3, r4
 3967 06a4 04EBC505 		add	r5, r4, r5, lsl #3
 3968 06a8 0826     		movs	r6, #8
 3969 06aa C4F83426 		str	r2, [r4, #1588]
 3970 06ae 83F87D10 		strb	r1, [r3, #125]
 3971 06b2 C5F84C06 		str	r0, [r5, #1612]
 3972 06b6 C4F87C06 		str	r0, [r4, #1660]
 3973 06ba C4F80417 		str	r1, [r4, #1796]
 3974 06be 84F87C60 		strb	r6, [r4, #124]
 3975 06c2 B7E4     		b	.L655
 3976              	.L670:
 3977 06c4 D0F83436 		ldr	r3, [r0, #1588]
 3978 06c8 D0F80067 		ldr	r6, [r0, #1792]
 3979 06cc D0F8FC56 		ldr	r5, [r0, #1788]
 3980 06d0 1844     		add	r0, r0, r3
 3981 06d2 5A1C     		adds	r2, r3, #1
 3982 06d4 7E30     		adds	r0, r0, #126
 3983 06d6 0021     		movs	r1, #0
 3984 06d8 2344     		add	r3, r3, r4
 3985 06da 04EBC606 		add	r6, r4, r6, lsl #3
 3986 06de 04EB8505 		add	r5, r4, r5, lsl #2
 3987 06e2 C4F83426 		str	r2, [r4, #1588]
 3988 06e6 83F87D10 		strb	r1, [r3, #125]
 3989 06ea C6F84C06 		str	r0, [r6, #1612]
 3990 06ee C5F83C06 		str	r0, [r5, #1596]
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 71


 3991 06f2 84F87C10 		strb	r1, [r4, #124]
 3992 06f6 9DE4     		b	.L655
 3993              	.L692:
 3994 06f8 D0F83436 		ldr	r3, [r0, #1588]
 3995 06fc DA1C     		adds	r2, r3, #3
 3996 06fe B2F5B76F 		cmp	r2, #1464
 3997 0702 BFF4B1AC 		bcs	.L709
 3998 0706 D0F80427 		ldr	r2, [r0, #1796]
 3999 070a C718     		adds	r7, r0, r3
 4000 070c 00EB030C 		add	ip, r0, r3
 4001 0710 00EBC202 		add	r2, r0, r2, lsl #3
 4002 0714 7E37     		adds	r7, r7, #126
 4003 0716 0020     		movs	r0, #0
 4004 0718 9E1C     		adds	r6, r3, #2
 4005 071a 8CF87D00 		strb	r0, [ip, #125]
 4006 071e 0825     		movs	r5, #8
 4007 0720 C2F87C76 		str	r7, [r2, #1660]
 4008 0724 C4F83466 		str	r6, [r4, #1588]
 4009 0728 8CF87E10 		strb	r1, [ip, #126]
 4010 072c 84F87C50 		strb	r5, [r4, #124]
 4011 0730 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 4012              	.L712:
 4013 0732 0B23     		movs	r3, #11
 4014 0734 84F87C30 		strb	r3, [r4, #124]
 4015 0738 D4F83426 		ldr	r2, [r4, #1588]
 4016 073c 7AE4     		b	.L655
 4017              	.L679:
 4018 073e 0E4B     		ldr	r3, .L718+8
 4019 0740 93E4     		b	.L708
 4020              	.L664:
 4021 0742 2046     		mov	r0, r4
 4022 0744 0D49     		ldr	r1, .L718+12
 4023 0746 4FF4FA72 		mov	r2, #500
 4024 074a BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 4025 074e FFF7FEBF 		b	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 4026              	.L677:
 4027 0752 2046     		mov	r0, r4
 4028 0754 0A49     		ldr	r1, .L718+16
 4029 0756 4FF4FA72 		mov	r2, #500
 4030 075a BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 4031 075e FFF7FEBF 		b	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 4032              	.L715:
 4033 0762 0849     		ldr	r1, .L718+20
 4034 0764 4FF4FA72 		mov	r2, #500
 4035 0768 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 4036 076c FFF7FEBF 		b	_ZN9Webserver15HttpInterpreter13RejectMessageEPKcj
 4037              	.L719:
 4038              		.align	2
 4039              	.L718:
 4040 0770 080A0000 		.word	.LC124
 4041 0774 D8090000 		.word	.LC122
 4042 0778 00000000 		.word	.LANCHOR5
 4043 077c C0090000 		.word	.LC121
 4044 0780 EC090000 		.word	.LC123
 4045 0784 1C0A0000 		.word	.LC125
 4046              		.size	_ZN9Webserver15HttpInterpreter14CharFromClientEc, .-_ZN9Webserver15HttpInterpreter14CharFrom
 4047              		.section	.text._ZN9Webserver15HttpInterpreter12DoFastUploadEv,"ax",%progbits
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 72


 4048              		.align	2
 4049              		.global	_ZN9Webserver15HttpInterpreter12DoFastUploadEv
 4050              		.thumb
 4051              		.thumb_func
 4052              		.type	_ZN9Webserver15HttpInterpreter12DoFastUploadEv, %function
 4053              	_ZN9Webserver15HttpInterpreter12DoFastUploadEv:
 4054              		@ args = 0, pretend = 0, frame = 112
 4055              		@ frame_needed = 0, uses_anonymous_args = 0
 4056 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 4057 0004 8368     		ldr	r3, [r0, #8]
 4058 0006 9DB0     		sub	sp, sp, #116
 4059 0008 D3F818A0 		ldr	r10, [r3, #24]
 4060 000c 0546     		mov	r5, r0
 4061 000e 01A9     		add	r1, sp, #4
 4062 0010 02AA     		add	r2, sp, #8
 4063 0012 5046     		mov	r0, r10
 4064 0014 FFF7FEFF 		bl	_ZN18NetworkTransaction10ReadBufferERPKcRj
 4065 0018 40B9     		cbnz	r0, .L721
 4066              	.L734:
 4067 001a 2B7C     		ldrb	r3, [r5, #16]	@ zero_extendqisi2
 4068 001c 012B     		cmp	r3, #1
 4069 001e 4ED0     		beq	.L761
 4070              	.L723:
 4071 0020 5046     		mov	r0, r10
 4072 0022 FFF7FEFF 		bl	_ZN18NetworkTransaction7DiscardEv
 4073 0026 1DB0     		add	sp, sp, #116
 4074              		@ sp needed
 4075 0028 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 4076              	.L721:
 4077 002c E868     		ldr	r0, [r5, #12]
 4078 002e FFF7FEFF 		bl	_ZN7Network6UnlockEv
 4079 0032 D5F87837 		ldr	r3, [r5, #1912]
 4080 0036 0BB9     		cbnz	r3, .L724
 4081 0038 504A     		ldr	r2, .L765
 4082 003a 1360     		str	r3, [r2]
 4083              	.L724:
 4084 003c 029E     		ldr	r6, [sp, #8]
 4085 003e DFF83C81 		ldr	r8, .L765
 4086 0042 DFF83C91 		ldr	r9, .L765+4
 4087              	.L725:
 4088 0046 7EB3     		cbz	r6, .L735
 4089              	.L733:
 4090 0048 D8F80070 		ldr	r7, [r8]
 4091 004c DDF804B0 		ldr	fp, [sp, #4]
 4092 0050 C7F50064 		rsb	r4, r7, #2048
 4093 0054 A642     		cmp	r6, r4
 4094 0056 38BF     		it	cc
 4095 0058 3446     		movcc	r4, r6
 4096 005a 2246     		mov	r2, r4
 4097 005c 09EB0700 		add	r0, r9, r7
 4098 0060 5946     		mov	r1, fp
 4099 0062 FFF7FEFF 		bl	memcpy
 4100 0066 D5F87827 		ldr	r2, [r5, #1912]
 4101 006a 2744     		add	r7, r7, r4
 4102 006c 0BEB0403 		add	r3, fp, r4
 4103 0070 361B     		subs	r6, r6, r4
 4104 0072 B7F5006F 		cmp	r7, #2048
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 73


 4105 0076 1444     		add	r4, r4, r2
 4106 0078 4149     		ldr	r1, .L765+4
 4107 007a 3A46     		mov	r2, r7
 4108 007c C8F80070 		str	r7, [r8]
 4109 0080 0193     		str	r3, [sp, #4]
 4110 0082 0296     		str	r6, [sp, #8]
 4111 0084 C5F87847 		str	r4, [r5, #1912]
 4112 0088 03D0     		beq	.L726
 4113 008a D5F87437 		ldr	r3, [r5, #1908]
 4114 008e 9C42     		cmp	r4, r3
 4115 0090 D9D3     		bcc	.L725
 4116              	.L726:
 4117 0092 6869     		ldr	r0, [r5, #20]
 4118 0094 FFF7FEFF 		bl	_ZN9FileStore5WriteEPKcj
 4119 0098 0023     		movs	r3, #0
 4120 009a C8F80030 		str	r3, [r8]
 4121 009e 0028     		cmp	r0, #0
 4122 00a0 50D0     		beq	.L728
 4123 00a2 029E     		ldr	r6, [sp, #8]
 4124 00a4 002E     		cmp	r6, #0
 4125 00a6 CFD1     		bne	.L733
 4126              	.L735:
 4127 00a8 E868     		ldr	r0, [r5, #12]
 4128 00aa FFF7FEFF 		bl	_ZN7Network4LockEv
 4129 00ae 0028     		cmp	r0, #0
 4130 00b0 B3D1     		bne	.L734
 4131 00b2 E868     		ldr	r0, [r5, #12]
 4132 00b4 FFF7FEFF 		bl	_ZN7Network4LockEv
 4133 00b8 0028     		cmp	r0, #0
 4134 00ba F5D0     		beq	.L735
 4135 00bc ADE7     		b	.L734
 4136              	.L761:
 4137 00be D5F87827 		ldr	r2, [r5, #1912]
 4138 00c2 D5F87437 		ldr	r3, [r5, #1908]
 4139 00c6 9A42     		cmp	r2, r3
 4140 00c8 06D2     		bcs	.L762
 4141 00ca DAF81030 		ldr	r3, [r10, #16]
 4142 00ce 002B     		cmp	r3, #0
 4143 00d0 A6D0     		beq	.L723
 4144 00d2 1DB0     		add	sp, sp, #116
 4145              		@ sp needed
 4146 00d4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 4147              	.L762:
 4148 00d8 5046     		mov	r0, r10
 4149 00da FFF7FEFF 		bl	_ZNK18NetworkTransaction11GetRemoteIPEv
 4150 00de 95F86847 		ldrb	r4, [r5, #1896]	@ zero_extendqisi2
 4151 00e2 D4B1     		cbz	r4, .L737
 4152 00e4 2B46     		mov	r3, r5
 4153 00e6 0022     		movs	r2, #0
 4154 00e8 04E0     		b	.L739
 4155              	.L738:
 4156 00ea 0132     		adds	r2, r2, #1
 4157 00ec 9442     		cmp	r4, r2
 4158 00ee 03F10C03 		add	r3, r3, #12
 4159 00f2 12D9     		bls	.L737
 4160              	.L739:
 4161 00f4 D3F80817 		ldr	r1, [r3, #1800]
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 74


 4162 00f8 8142     		cmp	r1, r0
 4163 00fa F6D1     		bne	.L738
 4164 00fc 93F81017 		ldrb	r1, [r3, #1808]	@ zero_extendqisi2
 4165 0100 0029     		cmp	r1, #0
 4166 0102 F2D0     		beq	.L738
 4167 0104 02EB4202 		add	r2, r2, r2, lsl #1
 4168 0108 05EB8204 		add	r4, r5, r2, lsl #2
 4169 010c 0023     		movs	r3, #0
 4170 010e 84F81037 		strb	r3, [r4, #1808]
 4171 0112 FFF7FEFF 		bl	millis
 4172 0116 C4F80C07 		str	r0, [r4, #1804]
 4173              	.L737:
 4174 011a 05F11801 		add	r1, r5, #24
 4175 011e 6422     		movs	r2, #100
 4176 0120 03A8     		add	r0, sp, #12
 4177 0122 FFF7FEFF 		bl	strncpy
 4178 0126 2846     		mov	r0, r5
 4179 0128 D5F87417 		ldr	r1, [r5, #1908]
 4180 012c FFF7FEFF 		bl	_ZN19ProtocolInterpreter12FinishUploadEm
 4181 0130 D5F87C37 		ldr	r3, [r5, #1916]
 4182 0134 D3B9     		cbnz	r3, .L763
 4183              	.L740:
 4184 0136 2846     		mov	r0, r5
 4185 0138 1249     		ldr	r1, .L765+8
 4186 013a FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter16SendJsonResponseEPKc
 4187              	.L764:
 4188 013e 1DB0     		add	sp, sp, #116
 4189              		@ sp needed
 4190 0140 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 4191              	.L728:
 4192 0144 6868     		ldr	r0, [r5, #4]
 4193 0146 0621     		movs	r1, #6
 4194 0148 0F4A     		ldr	r2, .L765+12
 4195 014a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 4196 014e 2B7C     		ldrb	r3, [r5, #16]	@ zero_extendqisi2
 4197 0150 012B     		cmp	r3, #1
 4198 0152 04BF     		itt	eq
 4199 0154 0223     		moveq	r3, #2
 4200 0156 2B74     		strbeq	r3, [r5, #16]
 4201              	.L731:
 4202 0158 E868     		ldr	r0, [r5, #12]
 4203 015a FFF7FEFF 		bl	_ZN7Network4LockEv
 4204 015e 0028     		cmp	r0, #0
 4205 0160 FAD0     		beq	.L731
 4206 0162 2846     		mov	r0, r5
 4207 0164 0749     		ldr	r1, .L765+8
 4208 0166 FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter16SendJsonResponseEPKc
 4209 016a E8E7     		b	.L764
 4210              	.L763:
 4211 016c 6968     		ldr	r1, [r5, #4]
 4212 016e 03AA     		add	r2, sp, #12
 4213 0170 D1F8B406 		ldr	r0, [r1, #1716]
 4214 0174 0021     		movs	r1, #0
 4215 0176 FFF7FEFF 		bl	_ZN11MassStorage19SetLastModifiedTimeEPKcS1_l
 4216 017a DCE7     		b	.L740
 4217              	.L766:
 4218              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 75


 4219              	.L765:
 4220 017c 00000000 		.word	.LANCHOR7
 4221 0180 00000000 		.word	.LANCHOR8
 4222 0184 6C070000 		.word	.LC87
 4223 0188 84000000 		.word	.LC4
 4224              		.size	_ZN9Webserver15HttpInterpreter12DoFastUploadEv, .-_ZN9Webserver15HttpInterpreter12DoFastUplo
 4225              		.section	.text._ZN9Webserver15HttpInterpreter12CanParseDataEv,"ax",%progbits
 4226              		.align	2
 4227              		.global	_ZN9Webserver15HttpInterpreter12CanParseDataEv
 4228              		.thumb
 4229              		.thumb_func
 4230              		.type	_ZN9Webserver15HttpInterpreter12CanParseDataEv, %function
 4231              	_ZN9Webserver15HttpInterpreter12CanParseDataEv:
 4232              		@ args = 0, pretend = 0, frame = 0
 4233              		@ frame_needed = 0, uses_anonymous_args = 0
 4234 0000 38B5     		push	{r3, r4, r5, lr}
 4235 0002 0446     		mov	r4, r0
 4236 0004 0BE0     		b	.L771
 4237              	.L772:
 4238 0006 D4F87037 		ldr	r3, [r4, #1904]
 4239 000a 1846     		mov	r0, r3
 4240 000c 1B68     		ldr	r3, [r3]
 4241 000e F3B1     		cbz	r3, .L776
 4242 0010 FFF7FEFF 		bl	_ZNK11OutputStack12GetFirstItemEv
 4243 0014 4FF44071 		mov	r1, #768
 4244 0018 FFF7FEFF 		bl	_ZN12OutputBuffer8TruncateEPS_j
 4245 001c C8B1     		cbz	r0, .L777
 4246              	.L771:
 4247 001e 0020     		movs	r0, #0
 4248 0020 FFF7FEFF 		bl	_ZN12OutputBuffer12GetBytesLeftEPKS_
 4249 0024 B0F5407F 		cmp	r0, #768
 4250 0028 EDD3     		bcc	.L772
 4251 002a A368     		ldr	r3, [r4, #8]
 4252 002c D4F88027 		ldr	r2, [r4, #1920]
 4253 0030 9B69     		ldr	r3, [r3, #24]
 4254 0032 1B68     		ldr	r3, [r3]
 4255 0034 9A42     		cmp	r2, r3
 4256 0036 01D0     		beq	.L778
 4257 0038 0120     		movs	r0, #1
 4258 003a 38BD     		pop	{r3, r4, r5, pc}
 4259              	.L778:
 4260 003c D4F88007 		ldr	r0, [r4, #1920]
 4261 0040 FFF7FEFF 		bl	_ZN7Network11IsConnectedEP15ConnectionState
 4262 0044 0546     		mov	r5, r0
 4263 0046 58B1     		cbz	r0, .L773
 4264 0048 2046     		mov	r0, r4
 4265 004a FFF7FEFF 		bl	_ZN9Webserver15HttpInterpreter22ProcessDeferredRequestEv
 4266              	.L776:
 4267 004e 0020     		movs	r0, #0
 4268 0050 38BD     		pop	{r3, r4, r5, pc}
 4269              	.L777:
 4270 0052 D4F87007 		ldr	r0, [r4, #1904]
 4271 0056 FFF7FEFF 		bl	_ZN11OutputStack3PopEv
 4272 005a FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllEPS_
 4273 005e DEE7     		b	.L771
 4274              	.L773:
 4275 0060 A368     		ldr	r3, [r4, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 76


 4276 0062 9869     		ldr	r0, [r3, #24]
 4277 0064 FFF7FEFF 		bl	_ZN18NetworkTransaction7DiscardEv
 4278 0068 2846     		mov	r0, r5
 4279 006a 38BD     		pop	{r3, r4, r5, pc}
 4280              		.size	_ZN9Webserver15HttpInterpreter12CanParseDataEv, .-_ZN9Webserver15HttpInterpreter12CanParseDa
 4281              		.section	.text._ZN9Webserver14FtpInterpreterC2EP8PlatformPS_P7Network,"ax",%progbits
 4282              		.align	2
 4283              		.global	_ZN9Webserver14FtpInterpreterC2EP8PlatformPS_P7Network
 4284              		.thumb
 4285              		.thumb_func
 4286              		.type	_ZN9Webserver14FtpInterpreterC2EP8PlatformPS_P7Network, %function
 4287              	_ZN9Webserver14FtpInterpreterC2EP8PlatformPS_P7Network:
 4288              		@ args = 0, pretend = 0, frame = 0
 4289              		@ frame_needed = 0, uses_anonymous_args = 0
 4290              		@ link register save eliminated.
 4291 0000 F0B4     		push	{r4, r5, r6, r7}
 4292 0002 0B4C     		ldr	r4, .L780
 4293 0004 0B4F     		ldr	r7, .L780+4
 4294 0006 B4F800C0 		ldrh	ip, [r4]	@ unaligned
 4295 000a 0025     		movs	r5, #0
 4296 000c 0126     		movs	r6, #1
 4297 000e 0760     		str	r7, [r0]
 4298 0010 80F87C60 		strb	r6, [r0, #124]
 4299 0014 4561     		str	r5, [r0, #20]
 4300 0016 0574     		strb	r5, [r0, #16]
 4301 0018 0576     		strb	r5, [r0, #24]
 4302 001a C0F80051 		str	r5, [r0, #256]
 4303 001e 80F87D50 		strb	r5, [r0, #125]
 4304 0022 A0F868C1 		strh	ip, [r0, #360]	@ unaligned
 4305 0026 4160     		str	r1, [r0, #4]
 4306 0028 8260     		str	r2, [r0, #8]
 4307 002a C360     		str	r3, [r0, #12]
 4308 002c F0BC     		pop	{r4, r5, r6, r7}
 4309 002e 7047     		bx	lr
 4310              	.L781:
 4311              		.align	2
 4312              	.L780:
 4313 0030 6C030000 		.word	.LC21
 4314 0034 08000000 		.word	.LANCHOR2+8
 4315              		.size	_ZN9Webserver14FtpInterpreterC2EP8PlatformPS_P7Network, .-_ZN9Webserver14FtpInterpreterC2EP8
 4316              		.global	_ZN9Webserver14FtpInterpreterC1EP8PlatformPS_P7Network
 4317              		.thumb_set _ZN9Webserver14FtpInterpreterC1EP8PlatformPS_P7Network,_ZN9Webserver14FtpInterpreterC2E
 4318              		.section	.text._ZN9Webserver14FtpInterpreter10ResetStateEv,"ax",%progbits
 4319              		.align	2
 4320              		.global	_ZN9Webserver14FtpInterpreter10ResetStateEv
 4321              		.thumb
 4322              		.thumb_func
 4323              		.type	_ZN9Webserver14FtpInterpreter10ResetStateEv, %function
 4324              	_ZN9Webserver14FtpInterpreter10ResetStateEv:
 4325              		@ args = 0, pretend = 0, frame = 0
 4326              		@ frame_needed = 0, uses_anonymous_args = 0
 4327 0000 0A4B     		ldr	r3, .L784
 4328 0002 0022     		movs	r2, #0
 4329 0004 1B88     		ldrh	r3, [r3]	@ unaligned
 4330 0006 10B5     		push	{r4, lr}
 4331 0008 0446     		mov	r4, r0
 4332 000a A0F86831 		strh	r3, [r0, #360]	@ unaligned
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 77


 4333 000e C0F80021 		str	r2, [r0, #256]
 4334 0012 C068     		ldr	r0, [r0, #12]
 4335 0014 FFF7FEFF 		bl	_ZN7Network13CloseDataPortEv
 4336 0018 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 4337 001a 012B     		cmp	r3, #1
 4338 001c 04BF     		itt	eq
 4339 001e 0223     		moveq	r3, #2
 4340 0020 2374     		strbeq	r3, [r4, #16]
 4341 0022 0023     		movs	r3, #0
 4342 0024 84F87C30 		strb	r3, [r4, #124]
 4343 0028 10BD     		pop	{r4, pc}
 4344              	.L785:
 4345 002a 00BF     		.align	2
 4346              	.L784:
 4347 002c 6C030000 		.word	.LC21
 4348              		.size	_ZN9Webserver14FtpInterpreter10ResetStateEv, .-_ZN9Webserver14FtpInterpreter10ResetStateEv
 4349              		.section	.text._ZN9Webserver4InitEv,"ax",%progbits
 4350              		.align	2
 4351              		.global	_ZN9Webserver4InitEv
 4352              		.thumb
 4353              		.thumb_func
 4354              		.type	_ZN9Webserver4InitEv, %function
 4355              	_ZN9Webserver4InitEv:
 4356              		@ args = 0, pretend = 0, frame = 0
 4357              		@ frame_needed = 0, uses_anonymous_args = 0
 4358 0000 38B5     		push	{r3, r4, r5, lr}
 4359 0002 0546     		mov	r5, r0
 4360 0004 C068     		ldr	r0, [r0, #12]
 4361 0006 FFF7FEFF 		bl	_ZN8Platform4TimeEv
 4362 000a 2B68     		ldr	r3, [r5]
 4363 000c 0024     		movs	r4, #0
 4364 000e 03F17D02 		add	r2, r3, #125
 4365 0012 0121     		movs	r1, #1
 4366 0014 2862     		str	r0, [r5, #32]	@ float
 4367 0016 2975     		strb	r1, [r5, #20]
 4368 0018 EC61     		str	r4, [r5, #28]
 4369 001a 6868     		ldr	r0, [r5, #4]
 4370 001c C3F83C26 		str	r2, [r3, #1596]
 4371 0020 C3F83446 		str	r4, [r3, #1588]
 4372 0024 83F87C40 		strb	r4, [r3, #124]
 4373 0028 C3F8FC46 		str	r4, [r3, #1788]
 4374 002c C3F80047 		str	r4, [r3, #1792]
 4375 0030 C3F80447 		str	r4, [r3, #1796]
 4376 0034 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter10ResetStateEv
 4377 0038 AB68     		ldr	r3, [r5, #8]
 4378 003a 83F87C40 		strb	r4, [r3, #124]
 4379 003e C3F88040 		str	r4, [r3, #128]
 4380 0042 C3F8EC40 		str	r4, [r3, #236]
 4381 0046 38BD     		pop	{r3, r4, r5, pc}
 4382              		.size	_ZN9Webserver4InitEv, .-_ZN9Webserver4InitEv
 4383              		.section	.text._ZN9Webserver14FtpInterpreter9SendReplyEiPKcb,"ax",%progbits
 4384              		.align	2
 4385              		.global	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 4386              		.thumb
 4387              		.thumb_func
 4388              		.type	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb, %function
 4389              	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb:
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 78


 4390              		@ args = 0, pretend = 0, frame = 0
 4391              		@ frame_needed = 0, uses_anonymous_args = 0
 4392 0000 38B5     		push	{r3, r4, r5, lr}
 4393 0002 8068     		ldr	r0, [r0, #8]
 4394 0004 1D46     		mov	r5, r3
 4395 0006 8469     		ldr	r4, [r0, #24]
 4396 0008 1046     		mov	r0, r2
 4397 000a 0346     		mov	r3, r0
 4398 000c 0A46     		mov	r2, r1
 4399 000e 2046     		mov	r0, r4
 4400 0010 0449     		ldr	r1, .L788
 4401 0012 FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 4402 0016 2046     		mov	r0, r4
 4403 0018 2946     		mov	r1, r5
 4404 001a BDE83840 		pop	{r3, r4, r5, lr}
 4405 001e FFF7FEBF 		b	_ZN18NetworkTransaction6CommitEb
 4406              	.L789:
 4407 0022 00BF     		.align	2
 4408              	.L788:
 4409 0024 3C0A0000 		.word	.LC126
 4410              		.size	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb, .-_ZN9Webserver14FtpInterpreter9SendReplyEiPK
 4411              		.section	.text._ZN9Webserver14FtpInterpreter21ConnectionEstablishedEv,"ax",%progbits
 4412              		.align	2
 4413              		.global	_ZN9Webserver14FtpInterpreter21ConnectionEstablishedEv
 4414              		.thumb
 4415              		.thumb_func
 4416              		.type	_ZN9Webserver14FtpInterpreter21ConnectionEstablishedEv, %function
 4417              	_ZN9Webserver14FtpInterpreter21ConnectionEstablishedEv:
 4418              		@ args = 0, pretend = 0, frame = 0
 4419              		@ frame_needed = 0, uses_anonymous_args = 0
 4420 0000 70B5     		push	{r4, r5, r6, lr}
 4421 0002 234B     		ldr	r3, .L808
 4422 0004 90F87D20 		ldrb	r2, [r0, #125]	@ zero_extendqisi2
 4423 0008 B3F84030 		ldrh	r3, [r3, #64]
 4424 000c 0132     		adds	r2, r2, #1
 4425 000e 5B07     		lsls	r3, r3, #29
 4426 0010 0446     		mov	r4, r0
 4427 0012 80F87D20 		strb	r2, [r0, #125]
 4428 0016 13D4     		bmi	.L806
 4429              	.L791:
 4430 0018 A368     		ldr	r3, [r4, #8]
 4431 001a 9D69     		ldr	r5, [r3, #24]
 4432 001c 2846     		mov	r0, r5
 4433 001e FFF7FEFF 		bl	_ZNK18NetworkTransaction12GetLocalPortEv
 4434 0022 0646     		mov	r6, r0
 4435 0024 FFF7FEFF 		bl	_ZN7Network10GetFtpPortEv
 4436 0028 8642     		cmp	r6, r0
 4437 002a 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 4438 002e 0DD0     		beq	.L792
 4439 0030 032B     		cmp	r3, #3
 4440 0032 17D0     		beq	.L807
 4441 0034 2846     		mov	r0, r5
 4442 0036 0021     		movs	r1, #0
 4443 0038 BDE87040 		pop	{r4, r5, r6, lr}
 4444 003c FFF7FEBF 		b	_ZN18NetworkTransaction6CommitEb
 4445              	.L806:
 4446 0040 4068     		ldr	r0, [r0, #4]
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 79


 4447 0042 0221     		movs	r1, #2
 4448 0044 134A     		ldr	r2, .L808+4
 4449 0046 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 4450 004a E5E7     		b	.L791
 4451              	.L792:
 4452 004c ABB1     		cbz	r3, .L795
 4453 004e 022B     		cmp	r3, #2
 4454 0050 13D0     		beq	.L795
 4455 0052 2046     		mov	r0, r4
 4456 0054 40F2A511 		movw	r1, #421
 4457 0058 0F4A     		ldr	r2, .L808+8
 4458 005a 0023     		movs	r3, #0
 4459 005c BDE87040 		pop	{r4, r5, r6, lr}
 4460 0060 FFF7FEBF 		b	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 4461              	.L807:
 4462 0064 E068     		ldr	r0, [r4, #12]
 4463 0066 FFF7FEFF 		bl	_ZN7Network18SaveDataConnectionEv
 4464 006a 0423     		movs	r3, #4
 4465 006c 2846     		mov	r0, r5
 4466 006e 84F87C30 		strb	r3, [r4, #124]
 4467 0072 BDE87040 		pop	{r4, r5, r6, lr}
 4468 0076 FFF7FEBF 		b	_ZN18NetworkTransaction7DiscardEv
 4469              	.L795:
 4470 007a 0123     		movs	r3, #1
 4471 007c 84F87C30 		strb	r3, [r4, #124]
 4472 0080 2046     		mov	r0, r4
 4473 0082 DC21     		movs	r1, #220
 4474 0084 054A     		ldr	r2, .L808+12
 4475 0086 BDE87040 		pop	{r4, r5, r6, lr}
 4476 008a FFF7FEBF 		b	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 4477              	.L809:
 4478 008e 00BF     		.align	2
 4479              	.L808:
 4480 0090 00000000 		.word	reprap
 4481 0094 440A0000 		.word	.LC127
 4482 0098 880A0000 		.word	.LC129
 4483 009c 6C0A0000 		.word	.LC128
 4484              		.size	_ZN9Webserver14FtpInterpreter21ConnectionEstablishedEv, .-_ZN9Webserver14FtpInterpreter21Con
 4485              		.section	.text._ZN9Webserver14FtpInterpreter14ConnectionLostEP15ConnectionState,"ax",%progbits
 4486              		.align	2
 4487              		.global	_ZN9Webserver14FtpInterpreter14ConnectionLostEP15ConnectionState
 4488              		.thumb
 4489              		.thumb_func
 4490              		.type	_ZN9Webserver14FtpInterpreter14ConnectionLostEP15ConnectionState, %function
 4491              	_ZN9Webserver14FtpInterpreter14ConnectionLostEP15ConnectionState:
 4492              		@ args = 0, pretend = 0, frame = 0
 4493              		@ frame_needed = 0, uses_anonymous_args = 0
 4494 0000 70B5     		push	{r4, r5, r6, lr}
 4495 0002 90F87D30 		ldrb	r3, [r0, #125]	@ zero_extendqisi2
 4496 0006 0446     		mov	r4, r0
 4497 0008 013B     		subs	r3, r3, #1
 4498 000a 80F87D30 		strb	r3, [r0, #125]
 4499 000e 0846     		mov	r0, r1
 4500 0010 0D46     		mov	r5, r1
 4501 0012 FFF7FEFF 		bl	_ZN7Network12GetLocalPortEP15ConnectionState
 4502 0016 0646     		mov	r6, r0
 4503 0018 FFF7FEFF 		bl	_ZN7Network10GetFtpPortEv
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 80


 4504 001c 8642     		cmp	r6, r0
 4505 001e 0ED0     		beq	.L811
 4506 0020 E068     		ldr	r0, [r4, #12]
 4507 0022 FFF7FEFF 		bl	_ZN7Network21AcquireFTPTransactionEv
 4508 0026 98B9     		cbnz	r0, .L825
 4509              	.L812:
 4510 0028 E068     		ldr	r0, [r4, #12]
 4511 002a FFF7FEFF 		bl	_ZN7Network13CloseDataPortEv
 4512 002e 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 4513 0030 012B     		cmp	r3, #1
 4514 0032 04BF     		itt	eq
 4515 0034 0223     		moveq	r3, #2
 4516 0036 2374     		strbeq	r3, [r4, #16]
 4517 0038 0223     		movs	r3, #2
 4518 003a 84F87C30 		strb	r3, [r4, #124]
 4519              	.L811:
 4520 003e 94F87D30 		ldrb	r3, [r4, #125]	@ zero_extendqisi2
 4521 0042 03B1     		cbz	r3, .L826
 4522 0044 70BD     		pop	{r4, r5, r6, pc}
 4523              	.L826:
 4524 0046 2046     		mov	r0, r4
 4525 0048 BDE87040 		pop	{r4, r5, r6, lr}
 4526 004c FFF7FEBF 		b	_ZN9Webserver14FtpInterpreter10ResetStateEv
 4527              	.L825:
 4528 0050 E068     		ldr	r0, [r4, #12]
 4529 0052 0021     		movs	r1, #0
 4530 0054 A668     		ldr	r6, [r4, #8]
 4531 0056 FFF7FEFF 		bl	_ZN7Network14GetTransactionEPK15ConnectionState
 4532 005a 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 4533 005e B061     		str	r0, [r6, #24]
 4534 0060 052B     		cmp	r3, #5
 4535 0062 1AD1     		bne	.L813
 4536 0064 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 4537 0066 022B     		cmp	r3, #2
 4538 0068 0FD0     		beq	.L814
 4539 006a 2846     		mov	r0, r5
 4540 006c FFF7FEFF 		bl	_ZN7Network12IsTerminatedEP15ConnectionState
 4541 0070 0546     		mov	r5, r0
 4542 0072 50B9     		cbnz	r0, .L814
 4543 0074 2046     		mov	r0, r4
 4544 0076 E221     		movs	r1, #226
 4545 0078 0C4A     		ldr	r2, .L827
 4546 007a 0123     		movs	r3, #1
 4547 007c FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 4548 0080 2046     		mov	r0, r4
 4549 0082 2946     		mov	r1, r5
 4550 0084 FFF7FEFF 		bl	_ZN19ProtocolInterpreter12FinishUploadEm
 4551 0088 CEE7     		b	.L812
 4552              	.L814:
 4553 008a 2046     		mov	r0, r4
 4554 008c 40F20E21 		movw	r1, #526
 4555 0090 074A     		ldr	r2, .L827+4
 4556 0092 0123     		movs	r3, #1
 4557 0094 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 4558 0098 C6E7     		b	.L812
 4559              	.L813:
 4560 009a 2046     		mov	r0, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 81


 4561 009c 40F22621 		movw	r1, #550
 4562 00a0 044A     		ldr	r2, .L827+8
 4563 00a2 0123     		movs	r3, #1
 4564 00a4 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 4565 00a8 BEE7     		b	.L812
 4566              	.L828:
 4567 00aa 00BF     		.align	2
 4568              	.L827:
 4569 00ac CC0A0000 		.word	.LC131
 4570 00b0 E00A0000 		.word	.LC132
 4571 00b4 B40A0000 		.word	.LC130
 4572              		.size	_ZN9Webserver14FtpInterpreter14ConnectionLostEP15ConnectionState, .-_ZN9Webserver14FtpInterp
 4573              		.section	.text._ZN9Webserver14FtpInterpreter12SendFeaturesEv,"ax",%progbits
 4574              		.align	2
 4575              		.global	_ZN9Webserver14FtpInterpreter12SendFeaturesEv
 4576              		.thumb
 4577              		.thumb_func
 4578              		.type	_ZN9Webserver14FtpInterpreter12SendFeaturesEv, %function
 4579              	_ZN9Webserver14FtpInterpreter12SendFeaturesEv:
 4580              		@ args = 0, pretend = 0, frame = 0
 4581              		@ frame_needed = 0, uses_anonymous_args = 0
 4582 0000 8368     		ldr	r3, [r0, #8]
 4583 0002 10B5     		push	{r4, lr}
 4584 0004 9C69     		ldr	r4, [r3, #24]
 4585 0006 0949     		ldr	r1, .L830
 4586 0008 2046     		mov	r0, r4
 4587 000a FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 4588 000e 2046     		mov	r0, r4
 4589 0010 0749     		ldr	r1, .L830+4
 4590 0012 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 4591 0016 2046     		mov	r0, r4
 4592 0018 0649     		ldr	r1, .L830+8
 4593 001a FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 4594 001e 2046     		mov	r0, r4
 4595 0020 0121     		movs	r1, #1
 4596 0022 BDE81040 		pop	{r4, lr}
 4597 0026 FFF7FEBF 		b	_ZN18NetworkTransaction6CommitEb
 4598              	.L831:
 4599 002a 00BF     		.align	2
 4600              	.L830:
 4601 002c F40A0000 		.word	.LC133
 4602 0030 040B0000 		.word	.LC134
 4603 0034 0C0B0000 		.word	.LC135
 4604              		.size	_ZN9Webserver14FtpInterpreter12SendFeaturesEv, .-_ZN9Webserver14FtpInterpreter12SendFeatures
 4605              		.section	.text._ZN9Webserver14FtpInterpreter12ReadFilenameEt,"ax",%progbits
 4606              		.align	2
 4607              		.global	_ZN9Webserver14FtpInterpreter12ReadFilenameEt
 4608              		.thumb
 4609              		.thumb_func
 4610              		.type	_ZN9Webserver14FtpInterpreter12ReadFilenameEt, %function
 4611              	_ZN9Webserver14FtpInterpreter12ReadFilenameEt:
 4612              		@ args = 0, pretend = 0, frame = 0
 4613              		@ frame_needed = 0, uses_anonymous_args = 0
 4614              		@ link register save eliminated.
 4615 0000 F0B4     		push	{r4, r5, r6, r7}
 4616 0002 D0F80051 		ldr	r5, [r0, #256]
 4617 0006 A942     		cmp	r1, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 82


 4618 0008 32DA     		bge	.L839
 4619 000a 4318     		adds	r3, r0, r1
 4620 000c 7D35     		adds	r5, r5, #125
 4621 000e 0026     		movs	r6, #0
 4622 0010 7D33     		adds	r3, r3, #125
 4623 0012 0544     		add	r5, r5, r0
 4624 0014 3146     		mov	r1, r6
 4625              	.L838:
 4626 0016 13F8014F 		ldrb	r4, [r3, #1]!	@ zero_extendqisi2
 4627 001a A4F10902 		sub	r2, r4, #9
 4628 001e 1E2A     		cmp	r2, #30
 4629 0020 20D8     		bhi	.L834
 4630 0022 DFE802F0 		tbb	[pc, r2]
 4631              	.L836:
 4632 0026 10       		.byte	(.L835-.L836)/2
 4633 0027 1F       		.byte	(.L834-.L836)/2
 4634 0028 1F       		.byte	(.L834-.L836)/2
 4635 0029 1F       		.byte	(.L834-.L836)/2
 4636 002a 1F       		.byte	(.L834-.L836)/2
 4637 002b 1F       		.byte	(.L834-.L836)/2
 4638 002c 1F       		.byte	(.L834-.L836)/2
 4639 002d 1F       		.byte	(.L834-.L836)/2
 4640 002e 1F       		.byte	(.L834-.L836)/2
 4641 002f 1F       		.byte	(.L834-.L836)/2
 4642 0030 1F       		.byte	(.L834-.L836)/2
 4643 0031 1F       		.byte	(.L834-.L836)/2
 4644 0032 1F       		.byte	(.L834-.L836)/2
 4645 0033 1F       		.byte	(.L834-.L836)/2
 4646 0034 1F       		.byte	(.L834-.L836)/2
 4647 0035 1F       		.byte	(.L834-.L836)/2
 4648 0036 1F       		.byte	(.L834-.L836)/2
 4649 0037 1F       		.byte	(.L834-.L836)/2
 4650 0038 1F       		.byte	(.L834-.L836)/2
 4651 0039 1F       		.byte	(.L834-.L836)/2
 4652 003a 1F       		.byte	(.L834-.L836)/2
 4653 003b 1F       		.byte	(.L834-.L836)/2
 4654 003c 1F       		.byte	(.L834-.L836)/2
 4655 003d 10       		.byte	(.L835-.L836)/2
 4656 003e 1F       		.byte	(.L834-.L836)/2
 4657 003f 15       		.byte	(.L837-.L836)/2
 4658 0040 1F       		.byte	(.L834-.L836)/2
 4659 0041 1F       		.byte	(.L834-.L836)/2
 4660 0042 1F       		.byte	(.L834-.L836)/2
 4661 0043 1F       		.byte	(.L834-.L836)/2
 4662 0044 15       		.byte	(.L837-.L836)/2
 4663 0045 00       		.align	1
 4664              	.L835:
 4665 0046 4218     		adds	r2, r0, r1
 4666 0048 16B1     		cbz	r6, .L837
 4667 004a 82F80441 		strb	r4, [r2, #260]
 4668 004e 0131     		adds	r1, r1, #1
 4669              	.L837:
 4670 0050 AB42     		cmp	r3, r5
 4671 0052 01D0     		beq	.L833
 4672 0054 6229     		cmp	r1, #98
 4673 0056 DEDD     		ble	.L838
 4674              	.L833:
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 83


 4675 0058 0144     		add	r1, r1, r0
 4676 005a 0023     		movs	r3, #0
 4677 005c 81F80431 		strb	r3, [r1, #260]
 4678 0060 F0BC     		pop	{r4, r5, r6, r7}
 4679 0062 7047     		bx	lr
 4680              	.L834:
 4681 0064 4218     		adds	r2, r0, r1
 4682 0066 82F80441 		strb	r4, [r2, #260]
 4683 006a 0131     		adds	r1, r1, #1
 4684 006c 0126     		movs	r6, #1
 4685 006e EFE7     		b	.L837
 4686              	.L839:
 4687 0070 0021     		movs	r1, #0
 4688 0072 F1E7     		b	.L833
 4689              		.size	_ZN9Webserver14FtpInterpreter12ReadFilenameEt, .-_ZN9Webserver14FtpInterpreter12ReadFilename
 4690              		.section	.text._ZN9Webserver14FtpInterpreter15ChangeDirectoryEPKc,"ax",%progbits
 4691              		.align	2
 4692              		.global	_ZN9Webserver14FtpInterpreter15ChangeDirectoryEPKc
 4693              		.thumb
 4694              		.thumb_func
 4695              		.type	_ZN9Webserver14FtpInterpreter15ChangeDirectoryEPKc, %function
 4696              	_ZN9Webserver14FtpInterpreter15ChangeDirectoryEPKc:
 4697              		@ args = 0, pretend = 0, frame = 104
 4698              		@ frame_needed = 0, uses_anonymous_args = 0
 4699 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 4700 0002 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 4701 0004 9BB0     		sub	sp, sp, #108
 4702 0006 0E46     		mov	r6, r1
 4703 0008 0546     		mov	r5, r0
 4704 000a 53B3     		cbz	r3, .L845
 4705 000c 2F2B     		cmp	r3, #47
 4706 000e 75D0     		beq	.L873
 4707 0010 0846     		mov	r0, r1
 4708 0012 3F49     		ldr	r1, .L874
 4709 0014 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 4710 0018 60B3     		cbz	r0, .L848
 4711 001a 05F5B476 		add	r6, r5, #360
 4712 001e 3046     		mov	r0, r6
 4713 0020 3C49     		ldr	r1, .L874+4
 4714 0022 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 4715 0026 E0B9     		cbnz	r0, .L845
 4716 0028 01AC     		add	r4, sp, #4
 4717 002a 3146     		mov	r1, r6
 4718 002c 6422     		movs	r2, #100
 4719 002e 2046     		mov	r0, r4
 4720 0030 FFF7FEFF 		bl	strncpy
 4721 0034 2046     		mov	r0, r4
 4722 0036 FFF7FEFF 		bl	strlen
 4723 003a 0238     		subs	r0, r0, #2
 4724 003c 39D4     		bmi	.L847
 4725 003e 1AAA     		add	r2, sp, #104
 4726 0040 0244     		add	r2, r2, r0
 4727 0042 12F8641C 		ldrb	r1, [r2, #-100]	@ zero_extendqisi2
 4728 0046 2F29     		cmp	r1, #47
 4729 0048 07D0     		beq	.L851
 4730              	.L853:
 4731 004a 10F1FF30 		adds	r0, r0, #-1
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 84


 4732 004e 30D3     		bcc	.L847
 4733 0050 225C     		ldrb	r2, [r4, r0]	@ zero_extendqisi2
 4734 0052 2F2A     		cmp	r2, #47
 4735 0054 F9D1     		bne	.L853
 4736 0056 1AAA     		add	r2, sp, #104
 4737 0058 0244     		add	r2, r2, r0
 4738              	.L851:
 4739 005a 0023     		movs	r3, #0
 4740 005c 02F8633C 		strb	r3, [r2, #-99]
 4741 0060 27E0     		b	.L847
 4742              	.L845:
 4743 0062 2846     		mov	r0, r5
 4744 0064 40F22621 		movw	r1, #550
 4745 0068 2B4A     		ldr	r2, .L874+8
 4746 006a 0123     		movs	r3, #1
 4747 006c FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 4748 0070 1BB0     		add	sp, sp, #108
 4749              		@ sp needed
 4750 0072 F0BD     		pop	{r4, r5, r6, r7, pc}
 4751              	.L848:
 4752 0074 05F5B477 		add	r7, r5, #360
 4753 0078 01AC     		add	r4, sp, #4
 4754 007a 3946     		mov	r1, r7
 4755 007c 6422     		movs	r2, #100
 4756 007e 2046     		mov	r0, r4
 4757 0080 FFF7FEFF 		bl	strncpy
 4758 0084 3846     		mov	r0, r7
 4759 0086 FFF7FEFF 		bl	strlen
 4760 008a 0128     		cmp	r0, #1
 4761 008c 08D9     		bls	.L855
 4762 008e 2046     		mov	r0, r4
 4763 0090 FFF7FEFF 		bl	strlen
 4764 0094 1F49     		ldr	r1, .L874+4
 4765 0096 C0F16302 		rsb	r2, r0, #99
 4766 009a 2046     		mov	r0, r4
 4767 009c FFF7FEFF 		bl	strncat
 4768              	.L855:
 4769 00a0 2046     		mov	r0, r4
 4770 00a2 FFF7FEFF 		bl	strlen
 4771 00a6 3146     		mov	r1, r6
 4772 00a8 C0F16302 		rsb	r2, r0, #99
 4773 00ac 2046     		mov	r0, r4
 4774 00ae FFF7FEFF 		bl	strncat
 4775              	.L847:
 4776 00b2 2046     		mov	r0, r4
 4777 00b4 1749     		ldr	r1, .L874+4
 4778 00b6 FFF7FEFF 		bl	_Z14StringEndsWithPKcS0_
 4779 00ba 48B1     		cbz	r0, .L856
 4780 00bc 2046     		mov	r0, r4
 4781 00be FFF7FEFF 		bl	strlen
 4782 00c2 0128     		cmp	r0, #1
 4783 00c4 04D9     		bls	.L856
 4784 00c6 1AAB     		add	r3, sp, #104
 4785 00c8 1844     		add	r0, r0, r3
 4786 00ca 0023     		movs	r3, #0
 4787 00cc 00F8653C 		strb	r3, [r0, #-101]
 4788              	.L856:
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 85


 4789 00d0 6B68     		ldr	r3, [r5, #4]
 4790 00d2 2146     		mov	r1, r4
 4791 00d4 D3F8B406 		ldr	r0, [r3, #1716]
 4792 00d8 FFF7FEFF 		bl	_ZNK11MassStorage15DirectoryExistsEPKc
 4793 00dc 0028     		cmp	r0, #0
 4794 00de C0D0     		beq	.L845
 4795 00e0 2146     		mov	r1, r4
 4796 00e2 05F5B470 		add	r0, r5, #360
 4797 00e6 6422     		movs	r2, #100
 4798 00e8 FFF7FEFF 		bl	strncpy
 4799 00ec 2846     		mov	r0, r5
 4800 00ee FA21     		movs	r1, #250
 4801 00f0 0A4A     		ldr	r2, .L874+12
 4802 00f2 0123     		movs	r3, #1
 4803 00f4 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 4804 00f8 1BB0     		add	sp, sp, #108
 4805              		@ sp needed
 4806 00fa F0BD     		pop	{r4, r5, r6, r7, pc}
 4807              	.L873:
 4808 00fc 01AC     		add	r4, sp, #4
 4809 00fe 2046     		mov	r0, r4
 4810 0100 6422     		movs	r2, #100
 4811 0102 FFF7FEFF 		bl	strncpy
 4812 0106 0023     		movs	r3, #0
 4813 0108 8DF86730 		strb	r3, [sp, #103]
 4814 010c D1E7     		b	.L847
 4815              	.L875:
 4816 010e 00BF     		.align	2
 4817              	.L874:
 4818 0110 180B0000 		.word	.LC136
 4819 0114 6C030000 		.word	.LC21
 4820 0118 1C0B0000 		.word	.LC137
 4821 011c 380B0000 		.word	.LC138
 4822              		.size	_ZN9Webserver14FtpInterpreter15ChangeDirectoryEPKc, .-_ZN9Webserver14FtpInterpreter15ChangeD
 4823              		.section	.text._ZN9Webserver14FtpInterpreter11ProcessLineEv,"ax",%progbits
 4824              		.align	2
 4825              		.global	_ZN9Webserver14FtpInterpreter11ProcessLineEv
 4826              		.thumb
 4827              		.thumb_func
 4828              		.type	_ZN9Webserver14FtpInterpreter11ProcessLineEv, %function
 4829              	_ZN9Webserver14FtpInterpreter11ProcessLineEv:
 4830              		@ args = 0, pretend = 0, frame = 112
 4831              		@ frame_needed = 0, uses_anonymous_args = 0
 4832 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 4833 0004 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 4834 0008 A1B0     		sub	sp, sp, #132
 4835 000a 0446     		mov	r4, r0
 4836 000c 052B     		cmp	r3, #5
 4837 000e 32D8     		bhi	.L876
 4838 0010 DFE813F0 		tbh	[pc, r3, lsl #1]
 4839              	.L879:
 4840 0014 4C00     		.2byte	(.L878-.L879)/2
 4841 0016 4C00     		.2byte	(.L878-.L879)/2
 4842 0018 7D00     		.2byte	(.L880-.L879)/2
 4843 001a CC00     		.2byte	(.L881-.L879)/2
 4844 001c E600     		.2byte	(.L882-.L879)/2
 4845 001e 3400     		.2byte	(.L883-.L879)/2
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 86


 4846              	.L988:
 4847 0020 2846     		mov	r0, r5
 4848 0022 9D49     		ldr	r1, .L990
 4849 0024 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 4850 0028 0028     		cmp	r0, #0
 4851 002a 40F03A82 		bne	.L907
 4852 002e 2846     		mov	r0, r5
 4853 0030 9A49     		ldr	r1, .L990+4
 4854 0032 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 4855 0036 0028     		cmp	r0, #0
 4856 0038 40F03382 		bne	.L907
 4857 003c 2846     		mov	r0, r5
 4858 003e 9849     		ldr	r1, .L990+8
 4859 0040 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 4860 0044 0028     		cmp	r0, #0
 4861 0046 00F07682 		beq	.L977
 4862 004a 2046     		mov	r0, r4
 4863 004c 0421     		movs	r1, #4
 4864 004e FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter12ReadFilenameEt
 4865 0052 6368     		ldr	r3, [r4, #4]
 4866 0054 04F5B471 		add	r1, r4, #360
 4867 0058 D3F8B406 		ldr	r0, [r3, #1716]
 4868 005c 04F58272 		add	r2, r4, #260
 4869 0060 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_
 4870 0064 0028     		cmp	r0, #0
 4871 0066 00F08282 		beq	.L909
 4872 006a 2046     		mov	r0, r4
 4873 006c FA21     		movs	r1, #250
 4874 006e 8D4A     		ldr	r2, .L990+12
 4875 0070 0123     		movs	r3, #1
 4876 0072 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 4877              	.L876:
 4878 0076 21B0     		add	sp, sp, #132
 4879              		@ sp needed
 4880 0078 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 4881              	.L883:
 4882 007c 7E30     		adds	r0, r0, #126
 4883 007e 8A49     		ldr	r1, .L990+16
 4884 0080 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 4885 0084 0028     		cmp	r0, #0
 4886 0086 00F09D81 		beq	.L935
 4887 008a 237C     		ldrb	r3, [r4, #16]	@ zero_extendqisi2
 4888 008c 002B     		cmp	r3, #0
 4889 008e 00F0DC81 		beq	.L936
 4890 0092 012B     		cmp	r3, #1
 4891 0094 01D1     		bne	.L975
 4892 0096 0223     		movs	r3, #2
 4893 0098 2374     		strb	r3, [r4, #16]
 4894              	.L975:
 4895 009a 2046     		mov	r0, r4
 4896 009c E221     		movs	r1, #226
 4897 009e 834A     		ldr	r2, .L990+20
 4898 00a0 0123     		movs	r3, #1
 4899 00a2 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 4900 00a6 21B0     		add	sp, sp, #132
 4901              		@ sp needed
 4902 00a8 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 87


 4903              	.L878:
 4904 00ac 00F17E05 		add	r5, r0, #126
 4905 00b0 2846     		mov	r0, r5
 4906 00b2 7F49     		ldr	r1, .L990+24
 4907 00b4 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 4908 00b8 0646     		mov	r6, r0
 4909 00ba 0028     		cmp	r0, #0
 4910 00bc 40F07381 		bne	.L978
 4911 00c0 2846     		mov	r0, r5
 4912 00c2 7C49     		ldr	r1, .L990+28
 4913 00c4 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 4914 00c8 0028     		cmp	r0, #0
 4915 00ca 00F0C281 		beq	.L885
 4916 00ce D4F80051 		ldr	r5, [r4, #256]
 4917 00d2 042D     		cmp	r5, #4
 4918 00d4 40F25081 		bls	.L940
 4919 00d8 3046     		mov	r0, r6
 4920 00da 3146     		mov	r1, r6
 4921 00dc 0423     		movs	r3, #4
 4922 00de 0DE0     		b	.L890
 4923              	.L979:
 4924 00e0 092A     		cmp	r2, #9
 4925 00e2 11D0     		beq	.L887
 4926              	.L888:
 4927 00e4 20A8     		add	r0, sp, #128
 4928 00e6 0844     		add	r0, r0, r1
 4929 00e8 00F8702C 		strb	r2, [r0, #-112]
 4930 00ec 0131     		adds	r1, r1, #1
 4931 00ee 0120     		movs	r0, #1
 4932              	.L889:
 4933 00f0 AB42     		cmp	r3, r5
 4934 00f2 00F04281 		beq	.L886
 4935 00f6 172B     		cmp	r3, #23
 4936 00f8 00F03F81 		beq	.L886
 4937              	.L890:
 4938 00fc E218     		adds	r2, r4, r3
 4939 00fe 92F87E20 		ldrb	r2, [r2, #126]	@ zero_extendqisi2
 4940 0102 0133     		adds	r3, r3, #1
 4941 0104 202A     		cmp	r2, #32
 4942 0106 EBD1     		bne	.L979
 4943              	.L887:
 4944 0108 0028     		cmp	r0, #0
 4945 010a F1D0     		beq	.L889
 4946 010c EAE7     		b	.L888
 4947              	.L880:
 4948 010e 00F17E05 		add	r5, r0, #126
 4949 0112 2846     		mov	r0, r5
 4950 0114 6849     		ldr	r1, .L990+32
 4951 0116 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 4952 011a 0028     		cmp	r0, #0
 4953 011c 40F04B81 		bne	.L980
 4954 0120 2846     		mov	r0, r5
 4955 0122 6649     		ldr	r1, .L990+36
 4956 0124 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 4957 0128 0028     		cmp	r0, #0
 4958 012a 40F08A81 		bne	.L981
 4959 012e 2846     		mov	r0, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 88


 4960 0130 6349     		ldr	r1, .L990+40
 4961 0132 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 4962 0136 0028     		cmp	r0, #0
 4963 0138 40F06E81 		bne	.L982
 4964 013c 2846     		mov	r0, r5
 4965 013e 6149     		ldr	r1, .L990+44
 4966 0140 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 4967 0144 0028     		cmp	r0, #0
 4968 0146 40F09181 		bne	.L983
 4969 014a 2846     		mov	r0, r5
 4970 014c 5E49     		ldr	r1, .L990+48
 4971 014e FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 4972 0152 0028     		cmp	r0, #0
 4973 0154 40F09481 		bne	.L984
 4974 0158 2846     		mov	r0, r5
 4975 015a 5C49     		ldr	r1, .L990+52
 4976 015c FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 4977 0160 0028     		cmp	r0, #0
 4978 0162 00F09281 		beq	.L898
 4979 0166 D4F80031 		ldr	r3, [r4, #256]
 4980 016a 042B     		cmp	r3, #4
 4981 016c 16D9     		bls	.L899
 4982 016e 94F88220 		ldrb	r2, [r4, #130]	@ zero_extendqisi2
 4983 0172 492A     		cmp	r2, #73
 4984 0174 00F09D81 		beq	.L900
 4985 0178 412A     		cmp	r2, #65
 4986 017a 00F0A181 		beq	.L901
 4987 017e 7D33     		adds	r3, r3, #125
 4988 0180 E118     		adds	r1, r4, r3
 4989 0182 04F18203 		add	r3, r4, #130
 4990 0186 07E0     		b	.L904
 4991              	.L905:
 4992 0188 13F8012F 		ldrb	r2, [r3, #1]!	@ zero_extendqisi2
 4993 018c 492A     		cmp	r2, #73
 4994 018e 00F09081 		beq	.L900
 4995 0192 412A     		cmp	r2, #65
 4996 0194 00F09481 		beq	.L901
 4997              	.L904:
 4998 0198 8B42     		cmp	r3, r1
 4999 019a F5D1     		bne	.L905
 5000              	.L899:
 5001 019c 2046     		mov	r0, r4
 5002 019e 4FF4FA71 		mov	r1, #500
 5003 01a2 4B4A     		ldr	r2, .L990+56
 5004 01a4 0123     		movs	r3, #1
 5005 01a6 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5006 01aa 64E7     		b	.L876
 5007              	.L881:
 5008 01ac FFF7FEFF 		bl	millis
 5009 01b0 D4F8CC31 		ldr	r3, [r4, #460]
 5010 01b4 42F21072 		movw	r2, #10000
 5011 01b8 C01A     		subs	r0, r0, r3
 5012 01ba 9042     		cmp	r0, r2
 5013 01bc 40F2D680 		bls	.L923
 5014 01c0 444A     		ldr	r2, .L990+60
 5015 01c2 2046     		mov	r0, r4
 5016 01c4 40F2A911 		movw	r1, #425
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 89


 5017              	.L974:
 5018 01c8 0123     		movs	r3, #1
 5019 01ca FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5020 01ce E068     		ldr	r0, [r4, #12]
 5021 01d0 FFF7FEFF 		bl	_ZN7Network13CloseDataPortEv
 5022 01d4 0223     		movs	r3, #2
 5023 01d6 84F87C30 		strb	r3, [r4, #124]
 5024 01da 21B0     		add	sp, sp, #132
 5025              		@ sp needed
 5026 01dc BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 5027              	.L882:
 5028 01e0 C068     		ldr	r0, [r0, #12]
 5029 01e2 04F17E05 		add	r5, r4, #126
 5030 01e6 FFF7FEFF 		bl	_ZN7Network17SaveFTPConnectionEv
 5031 01ea 2846     		mov	r0, r5
 5032 01ec 3A49     		ldr	r1, .L990+64
 5033 01ee FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 5034 01f2 0028     		cmp	r0, #0
 5035 01f4 76D0     		beq	.L924
 5036 01f6 E068     		ldr	r0, [r4, #12]
 5037 01f8 FFF7FEFF 		bl	_ZN7Network22AcquireDataTransactionEv
 5038 01fc 0028     		cmp	r0, #0
 5039 01fe 00F01B81 		beq	.L976
 5040 0202 364A     		ldr	r2, .L990+68
 5041 0204 0123     		movs	r3, #1
 5042 0206 2046     		mov	r0, r4
 5043 0208 9621     		movs	r1, #150
 5044 020a FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5045 020e 0021     		movs	r1, #0
 5046 0210 E068     		ldr	r0, [r4, #12]
 5047 0212 FFF7FEFF 		bl	_ZN7Network14GetTransactionEPK15ConnectionState
 5048 0216 6368     		ldr	r3, [r4, #4]
 5049 0218 0646     		mov	r6, r0
 5050 021a 04AA     		add	r2, sp, #16
 5051 021c D3F8B406 		ldr	r0, [r3, #1716]
 5052 0220 04F5B471 		add	r1, r4, #360
 5053 0224 FFF7FEFF 		bl	_ZN11MassStorage9FindFirstEPKcR8FileInfo
 5054 0228 0028     		cmp	r0, #0
 5055 022a 2DD0     		beq	.L928
 5056 022c 0DF11107 		add	r7, sp, #17
 5057              	.L929:
 5058 0230 9DF81030 		ldrb	r3, [sp, #16]	@ zero_extendqisi2
 5059 0234 1FA8     		add	r0, sp, #124
 5060 0236 002B     		cmp	r3, #0
 5061 0238 0CBF     		ite	eq
 5062 023a 4FF02D09 		moveq	r9, #45
 5063 023e 4FF06409 		movne	r9, #100
 5064 0242 FFF7FEFF 		bl	gmtime
 5065 0246 0169     		ldr	r1, [r0, #16]
 5066 0248 6368     		ldr	r3, [r4, #4]
 5067 024a 0131     		adds	r1, r1, #1
 5068 024c 0546     		mov	r5, r0
 5069 024e C9B2     		uxtb	r1, r1
 5070 0250 D3F8B406 		ldr	r0, [r3, #1716]
 5071 0254 DDF87880 		ldr	r8, [sp, #120]
 5072 0258 FFF7FEFF 		bl	_ZN11MassStorage12GetMonthNameEh
 5073 025c 0090     		str	r0, [sp]
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 90


 5074 025e E968     		ldr	r1, [r5, #12]
 5075 0260 4346     		mov	r3, r8
 5076 0262 0191     		str	r1, [sp, #4]
 5077 0264 6969     		ldr	r1, [r5, #20]
 5078 0266 3046     		mov	r0, r6
 5079 0268 01F26C71 		addw	r1, r1, #1900
 5080 026c 0291     		str	r1, [sp, #8]
 5081 026e 4A46     		mov	r2, r9
 5082 0270 1B49     		ldr	r1, .L990+72
 5083 0272 0397     		str	r7, [sp, #12]
 5084 0274 FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 5085 0278 6368     		ldr	r3, [r4, #4]
 5086 027a 04A9     		add	r1, sp, #16
 5087 027c D3F8B406 		ldr	r0, [r3, #1716]
 5088 0280 FFF7FEFF 		bl	_ZN11MassStorage8FindNextER8FileInfo
 5089 0284 0028     		cmp	r0, #0
 5090 0286 D3D1     		bne	.L929
 5091              	.L928:
 5092 0288 3046     		mov	r0, r6
 5093 028a 0021     		movs	r1, #0
 5094 028c FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 5095 0290 0523     		movs	r3, #5
 5096 0292 84F87C30 		strb	r3, [r4, #124]
 5097 0296 EEE6     		b	.L876
 5098              	.L991:
 5099              		.align	2
 5100              	.L990:
 5101 0298 980C0000 		.word	.LC159
 5102 029c A00C0000 		.word	.LC160
 5103 02a0 1C0F0000 		.word	.LC189
 5104 02a4 A80C0000 		.word	.LC161
 5105 02a8 F00E0000 		.word	.LC186
 5106 02ac F80E0000 		.word	.LC187
 5107 02b0 580B0000 		.word	.LC139
 5108 02b4 800B0000 		.word	.LC141
 5109 02b8 C80B0000 		.word	.LC145
 5110 02bc E00B0000 		.word	.LC147
 5111 02c0 E80B0000 		.word	.LC148
 5112 02c4 F80B0000 		.word	.LC150
 5113 02c8 FC0B0000 		.word	.LC151
 5114 02cc 040C0000 		.word	.LC152
 5115 02d0 440C0000 		.word	.LC155
 5116 02d4 0C0E0000 		.word	.LC179
 5117 02d8 900C0000 		.word	.LC158
 5118 02dc 2C0E0000 		.word	.LC180
 5119 02e0 500E0000 		.word	.LC181
 5120              	.L924:
 5121 02e4 2846     		mov	r0, r5
 5122 02e6 A649     		ldr	r1, .L992
 5123 02e8 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 5124 02ec 0646     		mov	r6, r0
 5125 02ee 0028     		cmp	r0, #0
 5126 02f0 6DD1     		bne	.L985
 5127 02f2 2846     		mov	r0, r5
 5128 02f4 A349     		ldr	r1, .L992+4
 5129 02f6 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 5130 02fa 0028     		cmp	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 91


 5131 02fc 62D0     		beq	.L935
 5132 02fe 2046     		mov	r0, r4
 5133 0300 0421     		movs	r1, #4
 5134 0302 04F58277 		add	r7, r4, #260
 5135 0306 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter12ReadFilenameEt
 5136 030a 3A46     		mov	r2, r7
 5137 030c 6068     		ldr	r0, [r4, #4]
 5138 030e 04F5B471 		add	r1, r4, #360
 5139 0312 3346     		mov	r3, r6
 5140 0314 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 5141 0318 0546     		mov	r5, r0
 5142 031a 0028     		cmp	r0, #0
 5143 031c 00F0D780 		beq	.L986
 5144 0320 E068     		ldr	r0, [r4, #12]
 5145 0322 FFF7FEFF 		bl	_ZN7Network22AcquireDataTransactionEv
 5146 0326 0028     		cmp	r0, #0
 5147 0328 00F08380 		beq	.L934
 5148 032c A368     		ldr	r3, [r4, #8]
 5149 032e 2846     		mov	r0, r5
 5150 0330 D3F81880 		ldr	r8, [r3, #24]
 5151 0334 FFF7FEFF 		bl	_ZNK9FileStore6LengthEv
 5152 0338 3A46     		mov	r2, r7
 5153 033a 0346     		mov	r3, r0
 5154 033c 9249     		ldr	r1, .L992+8
 5155 033e 4046     		mov	r0, r8
 5156 0340 FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 5157 0344 4046     		mov	r0, r8
 5158 0346 0121     		movs	r1, #1
 5159 0348 FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 5160 034c 3146     		mov	r1, r6
 5161 034e E068     		ldr	r0, [r4, #12]
 5162 0350 FFF7FEFF 		bl	_ZN7Network14GetTransactionEPK15ConnectionState
 5163 0354 2946     		mov	r1, r5
 5164 0356 0746     		mov	r7, r0
 5165 0358 FFF7FEFF 		bl	_ZN18NetworkTransaction14SetFileToWriteEP9FileStore
 5166 035c 3846     		mov	r0, r7
 5167 035e 3146     		mov	r1, r6
 5168 0360 FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 5169 0364 0523     		movs	r3, #5
 5170 0366 84F87C30 		strb	r3, [r4, #124]
 5171 036a 84E6     		b	.L876
 5172              	.L923:
 5173 036c A368     		ldr	r3, [r4, #8]
 5174 036e 0121     		movs	r1, #1
 5175 0370 9869     		ldr	r0, [r3, #24]
 5176 0372 FFF7FEFF 		bl	_ZN18NetworkTransaction5DeferE12DeferralMode
 5177 0376 7EE6     		b	.L876
 5178              	.L940:
 5179 0378 3146     		mov	r1, r6
 5180              	.L886:
 5181 037a 20AB     		add	r3, sp, #128
 5182 037c 0B44     		add	r3, r3, r1
 5183 037e 0022     		movs	r2, #0
 5184 0380 8248     		ldr	r0, .L992+12
 5185 0382 04A9     		add	r1, sp, #16
 5186 0384 03F8702C 		strb	r2, [r3, #-112]
 5187 0388 FFF7FEFF 		bl	_ZNK6RepRap13CheckPasswordEPKc
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 92


 5188 038c 0346     		mov	r3, r0
 5189 038e 0028     		cmp	r0, #0
 5190 0390 3BD0     		beq	.L891
 5191 0392 0223     		movs	r3, #2
 5192 0394 84F87C30 		strb	r3, [r4, #124]
 5193 0398 2046     		mov	r0, r4
 5194 039a E621     		movs	r1, #230
 5195 039c 7C4A     		ldr	r2, .L992+16
 5196 039e 0123     		movs	r3, #1
 5197 03a0 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5198 03a4 67E6     		b	.L876
 5199              	.L978:
 5200 03a6 2046     		mov	r0, r4
 5201 03a8 40F24B11 		movw	r1, #331
 5202 03ac 794A     		ldr	r2, .L992+20
 5203 03ae 0123     		movs	r3, #1
 5204 03b0 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5205 03b4 5FE6     		b	.L876
 5206              	.L980:
 5207 03b6 2046     		mov	r0, r4
 5208 03b8 D721     		movs	r1, #215
 5209 03ba 774A     		ldr	r2, .L992+24
 5210 03bc 0123     		movs	r3, #1
 5211 03be FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5212 03c2 58E6     		b	.L876
 5213              	.L935:
 5214 03c4 2046     		mov	r0, r4
 5215 03c6 4FF4FA71 		mov	r1, #500
 5216 03ca 744A     		ldr	r2, .L992+28
 5217 03cc FCE6     		b	.L974
 5218              	.L985:
 5219 03ce 2046     		mov	r0, r4
 5220 03d0 0421     		movs	r1, #4
 5221 03d2 04F58275 		add	r5, r4, #260
 5222 03d6 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter12ReadFilenameEt
 5223 03da 2A46     		mov	r2, r5
 5224 03dc 04F5B471 		add	r1, r4, #360
 5225 03e0 6068     		ldr	r0, [r4, #4]
 5226 03e2 0123     		movs	r3, #1
 5227 03e4 FFF7FEFF 		bl	_ZN8Platform12GetFileStoreEPKcS1_b
 5228 03e8 2A46     		mov	r2, r5
 5229 03ea 0146     		mov	r1, r0
 5230 03ec 2046     		mov	r0, r4
 5231 03ee FFF7FEFF 		bl	_ZN19ProtocolInterpreter11StartUploadEP9FileStorePKc
 5232 03f2 0028     		cmp	r0, #0
 5233 03f4 35D0     		beq	.L931
 5234 03f6 0123     		movs	r3, #1
 5235 03f8 2046     		mov	r0, r4
 5236 03fa 9621     		movs	r1, #150
 5237 03fc 684A     		ldr	r2, .L992+32
 5238 03fe FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5239 0402 0523     		movs	r3, #5
 5240 0404 84F87C30 		strb	r3, [r4, #124]
 5241 0408 35E6     		b	.L876
 5242              	.L891:
 5243 040a 2046     		mov	r0, r4
 5244 040c 40F21221 		movw	r1, #530
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 93


 5245 0410 644A     		ldr	r2, .L992+36
 5246 0412 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5247 0416 2EE6     		b	.L876
 5248              	.L982:
 5249 0418 A368     		ldr	r3, [r4, #8]
 5250 041a 04F5B472 		add	r2, r4, #360
 5251 041e 6249     		ldr	r1, .L992+40
 5252 0420 9C69     		ldr	r4, [r3, #24]
 5253              	.L973:
 5254 0422 2046     		mov	r0, r4
 5255 0424 FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 5256 0428 2046     		mov	r0, r4
 5257 042a 0121     		movs	r1, #1
 5258 042c FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 5259 0430 21E6     		b	.L876
 5260              	.L934:
 5261 0432 2846     		mov	r0, r5
 5262 0434 FFF7FEFF 		bl	_ZN9FileStore5CloseEv
 5263              	.L976:
 5264 0438 2046     		mov	r0, r4
 5265 043a 4FF4FA71 		mov	r1, #500
 5266 043e 5B4A     		ldr	r2, .L992+44
 5267 0440 C2E6     		b	.L974
 5268              	.L981:
 5269 0442 2046     		mov	r0, r4
 5270 0444 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter12SendFeaturesEv
 5271 0448 15E6     		b	.L876
 5272              	.L936:
 5273 044a E068     		ldr	r0, [r4, #12]
 5274 044c FFF7FEFF 		bl	_ZN7Network13CloseDataPortEv
 5275 0450 23E6     		b	.L975
 5276              	.L885:
 5277 0452 2046     		mov	r0, r4
 5278 0454 4FF4FA71 		mov	r1, #500
 5279 0458 554A     		ldr	r2, .L992+48
 5280 045a 0123     		movs	r3, #1
 5281 045c FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5282 0460 09E6     		b	.L876
 5283              	.L931:
 5284 0462 2046     		mov	r0, r4
 5285 0464 40F22621 		movw	r1, #550
 5286 0468 524A     		ldr	r2, .L992+52
 5287 046a ADE6     		b	.L974
 5288              	.L983:
 5289 046c 2046     		mov	r0, r4
 5290 046e 0321     		movs	r1, #3
 5291 0470 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter12ReadFilenameEt
 5292 0474 2046     		mov	r0, r4
 5293 0476 04F58271 		add	r1, r4, #260
 5294 047a FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter15ChangeDirectoryEPKc
 5295 047e FAE5     		b	.L876
 5296              	.L984:
 5297 0480 2046     		mov	r0, r4
 5298 0482 4D49     		ldr	r1, .L992+56
 5299 0484 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter15ChangeDirectoryEPKc
 5300 0488 F5E5     		b	.L876
 5301              	.L898:
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 94


 5302 048a 2846     		mov	r0, r5
 5303 048c 4B49     		ldr	r1, .L992+60
 5304 048e FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 5305 0492 20BB     		cbnz	r0, .L987
 5306 0494 2846     		mov	r0, r5
 5307 0496 4A49     		ldr	r1, .L992+64
 5308 0498 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 5309 049c 0028     		cmp	r0, #0
 5310 049e 3FF4BFAD 		beq	.L988
 5311              	.L907:
 5312 04a2 2046     		mov	r0, r4
 5313 04a4 40F2A911 		movw	r1, #425
 5314 04a8 464A     		ldr	r2, .L992+68
 5315 04aa 0123     		movs	r3, #1
 5316 04ac FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5317 04b0 E1E5     		b	.L876
 5318              	.L900:
 5319 04b2 2046     		mov	r0, r4
 5320 04b4 C821     		movs	r1, #200
 5321 04b6 444A     		ldr	r2, .L992+72
 5322 04b8 0123     		movs	r3, #1
 5323 04ba FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5324 04be DAE5     		b	.L876
 5325              	.L901:
 5326 04c0 2046     		mov	r0, r4
 5327 04c2 C821     		movs	r1, #200
 5328 04c4 414A     		ldr	r2, .L992+76
 5329 04c6 0123     		movs	r3, #1
 5330 04c8 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5331 04cc D3E5     		b	.L876
 5332              	.L986:
 5333 04ce 2046     		mov	r0, r4
 5334 04d0 40F22621 		movw	r1, #550
 5335 04d4 374A     		ldr	r2, .L992+52
 5336 04d6 0123     		movs	r3, #1
 5337 04d8 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5338 04dc CBE5     		b	.L876
 5339              	.L987:
 5340 04de E068     		ldr	r0, [r4, #12]
 5341 04e0 FFF7FEFF 		bl	_ZNK7Network12GetIPAddressEv
 5342 04e4 4FF6FF71 		movw	r1, #65535
 5343 04e8 0546     		mov	r5, r0
 5344 04ea 4FF48060 		mov	r0, #1024
 5345 04ee FFF7FEFF 		bl	_Z6randomll
 5346 04f2 87B2     		uxth	r7, r0
 5347 04f4 3946     		mov	r1, r7
 5348 04f6 0646     		mov	r6, r0
 5349 04f8 E068     		ldr	r0, [r4, #12]
 5350 04fa FFF7FEFF 		bl	_ZN7Network12OpenDataPortEt
 5351 04fe FFF7FEFF 		bl	millis
 5352 0502 0323     		movs	r3, #3
 5353 0504 C4F8CC01 		str	r0, [r4, #460]
 5354 0508 84F87C30 		strb	r3, [r4, #124]
 5355 050c A978     		ldrb	r1, [r5, #2]	@ zero_extendqisi2
 5356 050e A368     		ldr	r3, [r4, #8]
 5357 0510 2A78     		ldrb	r2, [r5]	@ zero_extendqisi2
 5358 0512 9C69     		ldr	r4, [r3, #24]
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 95


 5359 0514 6B78     		ldrb	r3, [r5, #1]	@ zero_extendqisi2
 5360 0516 0091     		str	r1, [sp]
 5361 0518 E978     		ldrb	r1, [r5, #3]	@ zero_extendqisi2
 5362 051a 3F0A     		lsrs	r7, r7, #8
 5363 051c F6B2     		uxtb	r6, r6
 5364 051e 0191     		str	r1, [sp, #4]
 5365 0520 2046     		mov	r0, r4
 5366 0522 0297     		str	r7, [sp, #8]
 5367 0524 0396     		str	r6, [sp, #12]
 5368 0526 2A49     		ldr	r1, .L992+80
 5369 0528 FFF7FEFF 		bl	_ZN18NetworkTransaction6PrintfEPKcz
 5370 052c 2046     		mov	r0, r4
 5371 052e 0121     		movs	r1, #1
 5372 0530 FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 5373 0534 9FE5     		b	.L876
 5374              	.L977:
 5375 0536 2846     		mov	r0, r5
 5376 0538 2649     		ldr	r1, .L992+84
 5377 053a FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 5378 053e 0028     		cmp	r0, #0
 5379 0540 4ED0     		beq	.L910
 5380 0542 2046     		mov	r0, r4
 5381 0544 0321     		movs	r1, #3
 5382 0546 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter12ReadFilenameEt
 5383 054a 6368     		ldr	r3, [r4, #4]
 5384 054c 04F5B471 		add	r1, r4, #360
 5385 0550 D3F8B406 		ldr	r0, [r3, #1716]
 5386 0554 04F58272 		add	r2, r4, #260
 5387 0558 FFF7FEFF 		bl	_ZN11MassStorage6DeleteEPKcS1_
 5388 055c 0028     		cmp	r0, #0
 5389 055e 5BD0     		beq	.L911
 5390 0560 2046     		mov	r0, r4
 5391 0562 FA21     		movs	r1, #250
 5392 0564 1C4A     		ldr	r2, .L992+88
 5393 0566 0123     		movs	r3, #1
 5394 0568 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5395 056c 83E5     		b	.L876
 5396              	.L909:
 5397 056e 2046     		mov	r0, r4
 5398 0570 40F22621 		movw	r1, #550
 5399 0574 194A     		ldr	r2, .L992+92
 5400 0576 0123     		movs	r3, #1
 5401 0578 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5402 057c 7BE5     		b	.L876
 5403              	.L993:
 5404 057e 00BF     		.align	2
 5405              	.L992:
 5406 0580 A00C0000 		.word	.LC160
 5407 0584 980C0000 		.word	.LC159
 5408 0588 BC0E0000 		.word	.LC185
 5409 058c 00000000 		.word	reprap
 5410 0590 880B0000 		.word	.LC142
 5411 0594 600B0000 		.word	.LC140
 5412 0598 D00B0000 		.word	.LC146
 5413 059c 440C0000 		.word	.LC155
 5414 05a0 900E0000 		.word	.LC183
 5415 05a4 9C0B0000 		.word	.LC143
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 96


 5416 05a8 EC0B0000 		.word	.LC149
 5417 05ac 800E0000 		.word	.LC182
 5418 05b0 B00B0000 		.word	.LC144
 5419 05b4 A40E0000 		.word	.LC184
 5420 05b8 180B0000 		.word	.LC136
 5421 05bc 580C0000 		.word	.LC156
 5422 05c0 900C0000 		.word	.LC158
 5423 05c4 0C0F0000 		.word	.LC188
 5424 05c8 0C0C0000 		.word	.LC153
 5425 05cc 280C0000 		.word	.LC154
 5426 05d0 600C0000 		.word	.LC157
 5427 05d4 E40C0000 		.word	.LC163
 5428 05d8 E80C0000 		.word	.LC164
 5429 05dc C80C0000 		.word	.LC162
 5430              	.L910:
 5431 05e0 2846     		mov	r0, r5
 5432 05e2 6049     		ldr	r1, .L994
 5433 05e4 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 5434 05e8 0746     		mov	r7, r0
 5435 05ea E8B1     		cbz	r0, .L912
 5436 05ec 2046     		mov	r0, r4
 5437 05ee 0321     		movs	r1, #3
 5438 05f0 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter12ReadFilenameEt
 5439 05f4 94F80431 		ldrb	r3, [r4, #260]	@ zero_extendqisi2
 5440 05f8 2F2B     		cmp	r3, #47
 5441 05fa 3DD1     		bne	.L913
 5442 05fc 04F58275 		add	r5, r4, #260
 5443              	.L914:
 5444 0600 6368     		ldr	r3, [r4, #4]
 5445 0602 2946     		mov	r1, r5
 5446 0604 D3F8B406 		ldr	r0, [r3, #1716]
 5447 0608 FFF7FEFF 		bl	_ZN11MassStorage13MakeDirectoryEPKc
 5448 060c 60B3     		cbz	r0, .L915
 5449 060e A368     		ldr	r3, [r4, #8]
 5450 0610 2A46     		mov	r2, r5
 5451 0612 9C69     		ldr	r4, [r3, #24]
 5452 0614 5449     		ldr	r1, .L994+4
 5453 0616 04E7     		b	.L973
 5454              	.L911:
 5455 0618 2046     		mov	r0, r4
 5456 061a 40F22621 		movw	r1, #550
 5457 061e 534A     		ldr	r2, .L994+8
 5458 0620 0123     		movs	r3, #1
 5459 0622 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5460 0626 26E5     		b	.L876
 5461              	.L912:
 5462 0628 2846     		mov	r0, r5
 5463 062a 5149     		ldr	r1, .L994+12
 5464 062c FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 5465 0630 0646     		mov	r6, r0
 5466 0632 60B3     		cbz	r0, .L916
 5467 0634 2046     		mov	r0, r4
 5468 0636 0421     		movs	r1, #4
 5469 0638 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter12ReadFilenameEt
 5470 063c 94F80431 		ldrb	r3, [r4, #260]	@ zero_extendqisi2
 5471 0640 2F2B     		cmp	r3, #47
 5472 0642 56D1     		bne	.L971
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 97


 5473 0644 04F58275 		add	r5, r4, #260
 5474              	.L917:
 5475 0648 6368     		ldr	r3, [r4, #4]
 5476 064a 2946     		mov	r1, r5
 5477 064c D3F8B406 		ldr	r0, [r3, #1716]
 5478 0650 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKc
 5479 0654 0028     		cmp	r0, #0
 5480 0656 44D0     		beq	.L918
 5481 0658 2046     		mov	r0, r4
 5482 065a 4FF4AF71 		mov	r1, #350
 5483 065e 454A     		ldr	r2, .L994+16
 5484 0660 0123     		movs	r3, #1
 5485 0662 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5486 0666 06E5     		b	.L876
 5487              	.L915:
 5488 0668 2046     		mov	r0, r4
 5489 066a 40F22621 		movw	r1, #550
 5490 066e 424A     		ldr	r2, .L994+20
 5491 0670 0123     		movs	r3, #1
 5492 0672 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5493 0676 FEE4     		b	.L876
 5494              	.L913:
 5495 0678 6368     		ldr	r3, [r4, #4]
 5496 067a 04F5B471 		add	r1, r4, #360
 5497 067e D3F8B406 		ldr	r0, [r3, #1716]
 5498 0682 04F58272 		add	r2, r4, #260
 5499 0686 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameEPKcS1_
 5500 068a 0546     		mov	r5, r0
 5501 068c B8E7     		b	.L914
 5502              	.L916:
 5503 068e 2846     		mov	r0, r5
 5504 0690 3A49     		ldr	r1, .L994+24
 5505 0692 FFF7FEFF 		bl	_Z16StringStartsWithPKcS0_
 5506 0696 0028     		cmp	r0, #0
 5507 0698 45D0     		beq	.L919
 5508 069a 04F58275 		add	r5, r4, #260
 5509 069e 6422     		movs	r2, #100
 5510 06a0 2946     		mov	r1, r5
 5511 06a2 04A8     		add	r0, sp, #16
 5512 06a4 FFF7FEFF 		bl	strncpy
 5513 06a8 2046     		mov	r0, r4
 5514 06aa 0421     		movs	r1, #4
 5515 06ac 8DF87360 		strb	r6, [sp, #115]
 5516 06b0 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter12ReadFilenameEt
 5517 06b4 6368     		ldr	r3, [r4, #4]
 5518 06b6 2A46     		mov	r2, r5
 5519 06b8 D3F8B406 		ldr	r0, [r3, #1716]
 5520 06bc 04F5B471 		add	r1, r4, #360
 5521 06c0 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameEPKcS1_
 5522 06c4 6368     		ldr	r3, [r4, #4]
 5523 06c6 0246     		mov	r2, r0
 5524 06c8 04A9     		add	r1, sp, #16
 5525 06ca D3F8B406 		ldr	r0, [r3, #1716]
 5526 06ce FFF7FEFF 		bl	_ZN11MassStorage6RenameEPKcS1_
 5527 06d2 00B3     		cbz	r0, .L920
 5528 06d4 2046     		mov	r0, r4
 5529 06d6 FA21     		movs	r1, #250
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 98


 5530 06d8 294A     		ldr	r2, .L994+28
 5531 06da 0123     		movs	r3, #1
 5532 06dc FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5533 06e0 C9E4     		b	.L876
 5534              	.L918:
 5535 06e2 2046     		mov	r0, r4
 5536 06e4 40F22621 		movw	r1, #550
 5537 06e8 264A     		ldr	r2, .L994+32
 5538 06ea 0123     		movs	r3, #1
 5539 06ec FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5540 06f0 C1E4     		b	.L876
 5541              	.L971:
 5542 06f2 6368     		ldr	r3, [r4, #4]
 5543 06f4 04F58275 		add	r5, r4, #260
 5544 06f8 D3F8B406 		ldr	r0, [r3, #1716]
 5545 06fc 2A46     		mov	r2, r5
 5546 06fe 04F5B471 		add	r1, r4, #360
 5547 0702 FFF7FEFF 		bl	_ZN11MassStorage11CombineNameEPKcS1_
 5548 0706 6422     		movs	r2, #100
 5549 0708 0146     		mov	r1, r0
 5550 070a 2846     		mov	r0, r5
 5551 070c FFF7FEFF 		bl	strncpy
 5552 0710 84F86771 		strb	r7, [r4, #359]
 5553 0714 98E7     		b	.L917
 5554              	.L920:
 5555 0716 2046     		mov	r0, r4
 5556 0718 4FF4FA71 		mov	r1, #500
 5557 071c 1A4A     		ldr	r2, .L994+36
 5558 071e 0123     		movs	r3, #1
 5559 0720 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5560 0724 A7E4     		b	.L876
 5561              	.L919:
 5562 0726 2846     		mov	r0, r5
 5563 0728 1849     		ldr	r1, .L994+40
 5564 072a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 5565 072e 0646     		mov	r6, r0
 5566 0730 80B9     		cbnz	r0, .L989
 5567 0732 2846     		mov	r0, r5
 5568 0734 1649     		ldr	r1, .L994+44
 5569 0736 FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 5570 073a 0028     		cmp	r0, #0
 5571 073c 3FF42EAD 		beq	.L899
 5572 0740 2046     		mov	r0, r4
 5573 0742 3346     		mov	r3, r6
 5574 0744 DD21     		movs	r1, #221
 5575 0746 134A     		ldr	r2, .L994+48
 5576 0748 FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5577 074c 2046     		mov	r0, r4
 5578 074e FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter10ResetStateEv
 5579 0752 90E4     		b	.L876
 5580              	.L989:
 5581 0754 2046     		mov	r0, r4
 5582 0756 C821     		movs	r1, #200
 5583 0758 0F4A     		ldr	r2, .L994+52
 5584 075a 0123     		movs	r3, #1
 5585 075c FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter9SendReplyEiPKcb
 5586 0760 89E4     		b	.L876
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 99


 5587              	.L995:
 5588 0762 00BF     		.align	2
 5589              	.L994:
 5590 0764 340D0000 		.word	.LC166
 5591 0768 380D0000 		.word	.LC167
 5592 076c 100D0000 		.word	.LC165
 5593 0770 700D0000 		.word	.LC169
 5594 0774 780D0000 		.word	.LC170
 5595 0778 4C0D0000 		.word	.LC168
 5596 077c A40D0000 		.word	.LC172
 5597 0780 AC0D0000 		.word	.LC173
 5598 0784 880D0000 		.word	.LC171
 5599 0788 C00D0000 		.word	.LC174
 5600 078c E40D0000 		.word	.LC175
 5601 0790 F80D0000 		.word	.LC177
 5602 0794 000E0000 		.word	.LC178
 5603 0798 EC0D0000 		.word	.LC176
 5604              		.size	_ZN9Webserver14FtpInterpreter11ProcessLineEv, .-_ZN9Webserver14FtpInterpreter11ProcessLineEv
 5605              		.section	.text._ZN9Webserver14FtpInterpreter14CharFromClientEc,"ax",%progbits
 5606              		.align	2
 5607              		.global	_ZN9Webserver14FtpInterpreter14CharFromClientEc
 5608              		.thumb
 5609              		.thumb_func
 5610              		.type	_ZN9Webserver14FtpInterpreter14CharFromClientEc, %function
 5611              	_ZN9Webserver14FtpInterpreter14CharFromClientEc:
 5612              		@ args = 0, pretend = 0, frame = 0
 5613              		@ frame_needed = 0, uses_anonymous_args = 0
 5614 0000 30B5     		push	{r4, r5, lr}
 5615 0002 D0F80031 		ldr	r3, [r0, #256]
 5616 0006 83B0     		sub	sp, sp, #12
 5617 0008 7F2B     		cmp	r3, #127
 5618 000a 0446     		mov	r4, r0
 5619 000c 35D0     		beq	.L1018
 5620 000e 0A29     		cmp	r1, #10
 5621 0010 0ED0     		beq	.L1000
 5622 0012 0D29     		cmp	r1, #13
 5623 0014 0CD0     		beq	.L1000
 5624 0016 41B1     		cbz	r1, .L1019
 5625 0018 5A1C     		adds	r2, r3, #1
 5626 001a 0344     		add	r3, r3, r0
 5627 001c C0F80021 		str	r2, [r0, #256]
 5628 0020 0020     		movs	r0, #0
 5629 0022 83F87E10 		strb	r1, [r3, #126]
 5630              	.L998:
 5631 0026 03B0     		add	sp, sp, #12
 5632              		@ sp needed
 5633 0028 30BD     		pop	{r4, r5, pc}
 5634              	.L1019:
 5635 002a 0846     		mov	r0, r1
 5636 002c 03B0     		add	sp, sp, #12
 5637              		@ sp needed
 5638 002e 30BD     		pop	{r4, r5, pc}
 5639              	.L1000:
 5640 0030 1D4D     		ldr	r5, .L1022
 5641 0032 5A1C     		adds	r2, r3, #1
 5642 0034 B5F84010 		ldrh	r1, [r5, #64]
 5643 0038 2344     		add	r3, r3, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 100


 5644 003a 0020     		movs	r0, #0
 5645 003c 4907     		lsls	r1, r1, #29
 5646 003e C4F80021 		str	r2, [r4, #256]
 5647 0042 83F87E00 		strb	r0, [r3, #126]
 5648 0046 22D4     		bmi	.L1020
 5649              	.L1001:
 5650 0048 012A     		cmp	r2, #1
 5651 004a 0DD8     		bhi	.L1021
 5652 004c B5F84030 		ldrh	r3, [r5, #64]
 5653 0050 5B07     		lsls	r3, r3, #29
 5654 0052 04D5     		bpl	.L1003
 5655 0054 6068     		ldr	r0, [r4, #4]
 5656 0056 0221     		movs	r1, #2
 5657 0058 144A     		ldr	r2, .L1022+4
 5658 005a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5659              	.L1003:
 5660 005e 0020     		movs	r0, #0
 5661 0060 C4F80001 		str	r0, [r4, #256]
 5662 0064 03B0     		add	sp, sp, #12
 5663              		@ sp needed
 5664 0066 30BD     		pop	{r4, r5, pc}
 5665              	.L1021:
 5666 0068 2046     		mov	r0, r4
 5667 006a FFF7FEFF 		bl	_ZN9Webserver14FtpInterpreter11ProcessLineEv
 5668 006e 0023     		movs	r3, #0
 5669 0070 0120     		movs	r0, #1
 5670 0072 C4F80031 		str	r3, [r4, #256]
 5671 0076 03B0     		add	sp, sp, #12
 5672              		@ sp needed
 5673 0078 30BD     		pop	{r4, r5, pc}
 5674              	.L1018:
 5675 007a 0023     		movs	r3, #0
 5676 007c C0F80031 		str	r3, [r0, #256]
 5677 0080 0221     		movs	r1, #2
 5678 0082 4068     		ldr	r0, [r0, #4]
 5679 0084 0A4A     		ldr	r2, .L1022+8
 5680 0086 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5681 008a 0120     		movs	r0, #1
 5682 008c CBE7     		b	.L998
 5683              	.L1020:
 5684 008e 04F17E02 		add	r2, r4, #126
 5685 0092 6068     		ldr	r0, [r4, #4]
 5686 0094 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 5687 0098 0221     		movs	r1, #2
 5688 009a 0092     		str	r2, [sp]
 5689 009c 054A     		ldr	r2, .L1022+12
 5690 009e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 5691 00a2 D4F80021 		ldr	r2, [r4, #256]
 5692 00a6 CFE7     		b	.L1001
 5693              	.L1023:
 5694              		.align	2
 5695              	.L1022:
 5696 00a8 00000000 		.word	reprap
 5697 00ac 880F0000 		.word	.LC192
 5698 00b0 240F0000 		.word	.LC190
 5699 00b4 500F0000 		.word	.LC191
 5700              		.size	_ZN9Webserver14FtpInterpreter14CharFromClientEc, .-_ZN9Webserver14FtpInterpreter14CharFromCl
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 101


 5701              		.section	.text._ZN9Webserver17TelnetInterpreterC2EP8PlatformPS_P7Network,"ax",%progbits
 5702              		.align	2
 5703              		.global	_ZN9Webserver17TelnetInterpreterC2EP8PlatformPS_P7Network
 5704              		.thumb
 5705              		.thumb_func
 5706              		.type	_ZN9Webserver17TelnetInterpreterC2EP8PlatformPS_P7Network, %function
 5707              	_ZN9Webserver17TelnetInterpreterC2EP8PlatformPS_P7Network:
 5708              		@ args = 0, pretend = 0, frame = 0
 5709              		@ frame_needed = 0, uses_anonymous_args = 0
 5710              		@ link register save eliminated.
 5711 0000 70B4     		push	{r4, r5, r6}
 5712 0002 0B4E     		ldr	r6, .L1025
 5713 0004 0025     		movs	r5, #0
 5714 0006 0660     		str	r6, [r0]
 5715 0008 4561     		str	r5, [r0, #20]
 5716 000a 0574     		strb	r5, [r0, #16]
 5717 000c 0576     		strb	r5, [r0, #24]
 5718 000e 80F87D50 		strb	r5, [r0, #125]
 5719 0012 80F88450 		strb	r5, [r0, #132]
 5720 0016 C0F8F050 		str	r5, [r0, #240]
 5721 001a 80F87C50 		strb	r5, [r0, #124]
 5722 001e C0F88050 		str	r5, [r0, #128]
 5723 0022 C0F8EC50 		str	r5, [r0, #236]
 5724 0026 4160     		str	r1, [r0, #4]
 5725 0028 8260     		str	r2, [r0, #8]
 5726 002a C360     		str	r3, [r0, #12]
 5727 002c 70BC     		pop	{r4, r5, r6}
 5728 002e 7047     		bx	lr
 5729              	.L1026:
 5730              		.align	2
 5731              	.L1025:
 5732 0030 08000000 		.word	.LANCHOR1+8
 5733              		.size	_ZN9Webserver17TelnetInterpreterC2EP8PlatformPS_P7Network, .-_ZN9Webserver17TelnetInterprete
 5734              		.global	_ZN9Webserver17TelnetInterpreterC1EP8PlatformPS_P7Network
 5735              		.thumb_set _ZN9Webserver17TelnetInterpreterC1EP8PlatformPS_P7Network,_ZN9Webserver17TelnetInterpre
 5736              		.section	.text._ZN9Webserver17TelnetInterpreter10ResetStateEv,"ax",%progbits
 5737              		.align	2
 5738              		.global	_ZN9Webserver17TelnetInterpreter10ResetStateEv
 5739              		.thumb
 5740              		.thumb_func
 5741              		.type	_ZN9Webserver17TelnetInterpreter10ResetStateEv, %function
 5742              	_ZN9Webserver17TelnetInterpreter10ResetStateEv:
 5743              		@ args = 0, pretend = 0, frame = 0
 5744              		@ frame_needed = 0, uses_anonymous_args = 0
 5745              		@ link register save eliminated.
 5746 0000 0023     		movs	r3, #0
 5747 0002 80F87C30 		strb	r3, [r0, #124]
 5748 0006 C0F88030 		str	r3, [r0, #128]
 5749 000a C0F8EC30 		str	r3, [r0, #236]
 5750 000e 7047     		bx	lr
 5751              		.size	_ZN9Webserver17TelnetInterpreter10ResetStateEv, .-_ZN9Webserver17TelnetInterpreter10ResetSta
 5752              		.section	.text._ZN9Webserver17TelnetInterpreter11ProcessLineEv,"ax",%progbits
 5753              		.align	2
 5754              		.global	_ZN9Webserver17TelnetInterpreter11ProcessLineEv
 5755              		.thumb
 5756              		.thumb_func
 5757              		.type	_ZN9Webserver17TelnetInterpreter11ProcessLineEv, %function
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 102


 5758              	_ZN9Webserver17TelnetInterpreter11ProcessLineEv:
 5759              		@ args = 0, pretend = 0, frame = 0
 5760              		@ frame_needed = 0, uses_anonymous_args = 0
 5761 0000 70B5     		push	{r4, r5, r6, lr}
 5762 0002 0025     		movs	r5, #0
 5763 0004 0446     		mov	r4, r0
 5764 0006 80F88450 		strb	r5, [r0, #132]
 5765 000a C0F8EC50 		str	r5, [r0, #236]
 5766 000e 2946     		mov	r1, r5
 5767 0010 C068     		ldr	r0, [r0, #12]
 5768 0012 FFF7FEFF 		bl	_ZN7Network14GetTransactionEPK15ConnectionState
 5769 0016 94F87C30 		ldrb	r3, [r4, #124]	@ zero_extendqisi2
 5770 001a 0646     		mov	r6, r0
 5771 001c 022B     		cmp	r3, #2
 5772 001e 12D9     		bls	.L1030
 5773 0020 032B     		cmp	r3, #3
 5774 0022 0ED1     		bne	.L1037
 5775 0024 8534     		adds	r4, r4, #133
 5776 0026 2046     		mov	r0, r4
 5777 0028 1B49     		ldr	r1, .L1042
 5778 002a FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 5779 002e 20B3     		cbz	r0, .L1040
 5780              	.L1033:
 5781 0030 3046     		mov	r0, r6
 5782 0032 1A49     		ldr	r1, .L1042+4
 5783 0034 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 5784 0038 3046     		mov	r0, r6
 5785 003a 0021     		movs	r1, #0
 5786 003c FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 5787 0040 0125     		movs	r5, #1
 5788              	.L1037:
 5789 0042 2846     		mov	r0, r5
 5790 0044 70BD     		pop	{r4, r5, r6, pc}
 5791              	.L1030:
 5792 0046 1648     		ldr	r0, .L1042+8
 5793 0048 04F18501 		add	r1, r4, #133
 5794 004c FFF7FEFF 		bl	_ZNK6RepRap13CheckPasswordEPKc
 5795 0050 50B9     		cbnz	r0, .L1041
 5796 0052 1449     		ldr	r1, .L1042+12
 5797 0054 3046     		mov	r0, r6
 5798              	.L1039:
 5799 0056 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEPKc
 5800 005a 0125     		movs	r5, #1
 5801 005c 3046     		mov	r0, r6
 5802 005e 0121     		movs	r1, #1
 5803 0060 FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 5804 0064 2846     		mov	r0, r5
 5805 0066 70BD     		pop	{r4, r5, r6, pc}
 5806              	.L1041:
 5807 0068 E068     		ldr	r0, [r4, #12]
 5808 006a FFF7FEFF 		bl	_ZN7Network20SaveTelnetConnectionEv
 5809 006e 0323     		movs	r3, #3
 5810 0070 84F87C30 		strb	r3, [r4, #124]
 5811 0074 3046     		mov	r0, r6
 5812 0076 0C49     		ldr	r1, .L1042+16
 5813 0078 EDE7     		b	.L1039
 5814              	.L1040:
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 103


 5815 007a 2046     		mov	r0, r4
 5816 007c 0B49     		ldr	r1, .L1042+20
 5817 007e FFF7FEFF 		bl	_Z12StringEqualsPKcS0_
 5818 0082 0546     		mov	r5, r0
 5819 0084 0028     		cmp	r0, #0
 5820 0086 D3D1     		bne	.L1033
 5821 0088 054B     		ldr	r3, .L1042+8
 5822 008a 2246     		mov	r2, r4
 5823 008c 1B69     		ldr	r3, [r3, #16]
 5824 008e 0521     		movs	r1, #5
 5825 0090 D868     		ldr	r0, [r3, #12]
 5826 0092 FFF7FEFF 		bl	_ZN17RegularGCodeInput3PutE11MessageTypePKc
 5827 0096 D4E7     		b	.L1037
 5828              	.L1043:
 5829              		.align	2
 5830              	.L1042:
 5831 0098 E40F0000 		.word	.LC195
 5832 009c F40F0000 		.word	.LC197
 5833 00a0 00000000 		.word	reprap
 5834 00a4 CC0F0000 		.word	.LC194
 5835 00a8 B40F0000 		.word	.LC193
 5836 00ac EC0F0000 		.word	.LC196
 5837              		.size	_ZN9Webserver17TelnetInterpreter11ProcessLineEv, .-_ZN9Webserver17TelnetInterpreter11Process
 5838              		.section	.text._ZN9Webserver17TelnetInterpreter14CharFromClientEc,"ax",%progbits
 5839              		.align	2
 5840              		.global	_ZN9Webserver17TelnetInterpreter14CharFromClientEc
 5841              		.thumb
 5842              		.thumb_func
 5843              		.type	_ZN9Webserver17TelnetInterpreter14CharFromClientEc, %function
 5844              	_ZN9Webserver17TelnetInterpreter14CharFromClientEc:
 5845              		@ args = 0, pretend = 0, frame = 0
 5846              		@ frame_needed = 0, uses_anonymous_args = 0
 5847 0000 38B5     		push	{r3, r4, r5, lr}
 5848 0002 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 5849 0006 0446     		mov	r4, r0
 5850 0008 012B     		cmp	r3, #1
 5851 000a 0D46     		mov	r5, r1
 5852 000c 3AD0     		beq	.L1060
 5853              	.L1045:
 5854 000e 0D2D     		cmp	r5, #13
 5855 0010 08D8     		bhi	.L1049
 5856 0012 DFE805F0 		tbb	[pc, r5]
 5857              	.L1050:
 5858 0016 11       		.byte	(.L1056-.L1050)/2
 5859 0017 07       		.byte	(.L1049-.L1050)/2
 5860 0018 07       		.byte	(.L1049-.L1050)/2
 5861 0019 07       		.byte	(.L1049-.L1050)/2
 5862 001a 07       		.byte	(.L1049-.L1050)/2
 5863 001b 07       		.byte	(.L1049-.L1050)/2
 5864 001c 07       		.byte	(.L1049-.L1050)/2
 5865 001d 07       		.byte	(.L1049-.L1050)/2
 5866 001e 2E       		.byte	(.L1051-.L1050)/2
 5867 001f 07       		.byte	(.L1049-.L1050)/2
 5868 0020 13       		.byte	(.L1052-.L1050)/2
 5869 0021 07       		.byte	(.L1049-.L1050)/2
 5870 0022 07       		.byte	(.L1049-.L1050)/2
 5871 0023 13       		.byte	(.L1052-.L1050)/2
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 104


 5872              		.align	1
 5873              	.L1049:
 5874 0024 D4F8EC20 		ldr	r2, [r4, #236]
 5875 0028 531C     		adds	r3, r2, #1
 5876 002a 632B     		cmp	r3, #99
 5877 002c 2244     		add	r2, r2, r4
 5878 002e C4F8EC30 		str	r3, [r4, #236]
 5879 0032 82F88550 		strb	r5, [r2, #133]
 5880 0036 3CD0     		beq	.L1061
 5881              	.L1056:
 5882 0038 0020     		movs	r0, #0
 5883 003a 38BD     		pop	{r3, r4, r5, pc}
 5884              	.L1052:
 5885 003c D4F8EC30 		ldr	r3, [r4, #236]
 5886 0040 002B     		cmp	r3, #0
 5887 0042 F9D0     		beq	.L1056
 5888 0044 264A     		ldr	r2, .L1063
 5889 0046 2344     		add	r3, r3, r4
 5890 0048 1269     		ldr	r2, [r2, #16]
 5891 004a 0025     		movs	r5, #0
 5892 004c 83F88550 		strb	r5, [r3, #133]
 5893 0050 D068     		ldr	r0, [r2, #12]
 5894 0052 FFF7FEFF 		bl	_ZNK17RegularGCodeInput15BufferSpaceLeftEv
 5895 0056 D4F8EC30 		ldr	r3, [r4, #236]
 5896 005a 0133     		adds	r3, r3, #1
 5897 005c 9842     		cmp	r0, r3
 5898 005e 32D2     		bcs	.L1055
 5899 0060 A368     		ldr	r3, [r4, #8]
 5900 0062 2946     		mov	r1, r5
 5901 0064 9869     		ldr	r0, [r3, #24]
 5902 0066 FFF7FEFF 		bl	_ZN18NetworkTransaction5DeferE12DeferralMode
 5903 006a 0120     		movs	r0, #1
 5904 006c 84F88400 		strb	r0, [r4, #132]
 5905 0070 38BD     		pop	{r3, r4, r5, pc}
 5906              	.L1051:
 5907 0072 D4F8EC30 		ldr	r3, [r4, #236]
 5908 0076 002B     		cmp	r3, #0
 5909 0078 DED0     		beq	.L1056
 5910 007a 013B     		subs	r3, r3, #1
 5911 007c C4F8EC30 		str	r3, [r4, #236]
 5912 0080 0020     		movs	r0, #0
 5913 0082 38BD     		pop	{r3, r4, r5, pc}
 5914              	.L1060:
 5915 0084 1648     		ldr	r0, .L1063
 5916 0086 FFF7FEFF 		bl	_ZNK6RepRap13NoPasswordSetEv
 5917 008a 08BB     		cbnz	r0, .L1062
 5918 008c 0223     		movs	r3, #2
 5919 008e 84F87C30 		strb	r3, [r4, #124]
 5920              	.L1047:
 5921 0092 FFF7FEFF 		bl	millis
 5922 0096 D4F88030 		ldr	r3, [r4, #128]
 5923 009a C01A     		subs	r0, r0, r3
 5924 009c B0F57A6F 		cmp	r0, #4000
 5925 00a0 B5D2     		bcs	.L1045
 5926 00a2 0021     		movs	r1, #0
 5927 00a4 E068     		ldr	r0, [r4, #12]
 5928 00a6 FFF7FEFF 		bl	_ZN7Network14GetTransactionEPK15ConnectionState
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 105


 5929 00aa FFF7FEFF 		bl	_ZN18NetworkTransaction7DiscardEv
 5930 00ae 0120     		movs	r0, #1
 5931 00b0 38BD     		pop	{r3, r4, r5, pc}
 5932              	.L1061:
 5933 00b2 0023     		movs	r3, #0
 5934 00b4 6068     		ldr	r0, [r4, #4]
 5935 00b6 C4F8EC30 		str	r3, [r4, #236]
 5936 00ba 0221     		movs	r1, #2
 5937 00bc 094A     		ldr	r2, .L1063+4
 5938 00be FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 5939 00c2 0120     		movs	r0, #1
 5940 00c4 38BD     		pop	{r3, r4, r5, pc}
 5941              	.L1055:
 5942 00c6 2046     		mov	r0, r4
 5943 00c8 BDE83840 		pop	{r3, r4, r5, lr}
 5944 00cc FFF7FEBF 		b	_ZN9Webserver17TelnetInterpreter11ProcessLineEv
 5945              	.L1062:
 5946 00d0 0323     		movs	r3, #3
 5947 00d2 84F87C30 		strb	r3, [r4, #124]
 5948 00d6 E068     		ldr	r0, [r4, #12]
 5949 00d8 FFF7FEFF 		bl	_ZN7Network20SaveTelnetConnectionEv
 5950 00dc D9E7     		b	.L1047
 5951              	.L1064:
 5952 00de 00BF     		.align	2
 5953              	.L1063:
 5954 00e0 00000000 		.word	reprap
 5955 00e4 00100000 		.word	.LC198
 5956              		.size	_ZN9Webserver17TelnetInterpreter14CharFromClientEc, .-_ZN9Webserver17TelnetInterpreter14Char
 5957              		.section	.text._ZN9Webserver17TelnetInterpreter16HandleGCodeReplyEP12OutputBuffer,"ax",%progbits
 5958              		.align	2
 5959              		.global	_ZN9Webserver17TelnetInterpreter16HandleGCodeReplyEP12OutputBuffer
 5960              		.thumb
 5961              		.thumb_func
 5962              		.type	_ZN9Webserver17TelnetInterpreter16HandleGCodeReplyEP12OutputBuffer, %function
 5963              	_ZN9Webserver17TelnetInterpreter16HandleGCodeReplyEP12OutputBuffer:
 5964              		@ args = 0, pretend = 0, frame = 8
 5965              		@ frame_needed = 0, uses_anonymous_args = 0
 5966 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 5967 0002 0D46     		mov	r5, r1
 5968 0004 83B0     		sub	sp, sp, #12
 5969 0006 0646     		mov	r6, r0
 5970 0008 19B1     		cbz	r1, .L1066
 5971 000a 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 5972 000e 022B     		cmp	r3, #2
 5973 0010 04D8     		bhi	.L1082
 5974              	.L1066:
 5975 0012 2846     		mov	r0, r5
 5976 0014 FFF7FEFF 		bl	_ZN12OutputBuffer10ReleaseAllEPS_
 5977              	.L1065:
 5978 0018 03B0     		add	sp, sp, #12
 5979              		@ sp needed
 5980 001a F0BD     		pop	{r4, r5, r6, r7, pc}
 5981              	.L1082:
 5982 001c C068     		ldr	r0, [r0, #12]
 5983 001e FFF7FEFF 		bl	_ZN7Network24AcquireTelnetTransactionEv
 5984 0022 0028     		cmp	r0, #0
 5985 0024 F8D0     		beq	.L1065
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 106


 5986 0026 D6F8F030 		ldr	r3, [r6, #240]
 5987 002a 0BB3     		cbz	r3, .L1083
 5988              	.L1077:
 5989 002c D5F88C30 		ldr	r3, [r5, #140]
 5990 0030 05F10C07 		add	r7, r5, #12
 5991 0034 0024     		movs	r4, #0
 5992 0036 4BB9     		cbnz	r3, .L1076
 5993 0038 12E0     		b	.L1075
 5994              	.L1074:
 5995 003a D6F8F000 		ldr	r0, [r6, #240]
 5996 003e FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 5997 0042 D5F88C30 		ldr	r3, [r5, #140]
 5998 0046 0134     		adds	r4, r4, #1
 5999 0048 A342     		cmp	r3, r4
 6000 004a 09D9     		bls	.L1075
 6001              	.L1076:
 6002 004c 395D     		ldrb	r1, [r7, r4]	@ zero_extendqisi2
 6003 004e 0A29     		cmp	r1, #10
 6004 0050 F3D1     		bne	.L1074
 6005 0052 0D21     		movs	r1, #13
 6006 0054 D6F8F000 		ldr	r0, [r6, #240]
 6007 0058 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 6008 005c 395D     		ldrb	r1, [r7, r4]	@ zero_extendqisi2
 6009 005e ECE7     		b	.L1074
 6010              	.L1075:
 6011 0060 2846     		mov	r0, r5
 6012 0062 FFF7FEFF 		bl	_ZN12OutputBuffer7ReleaseEPS_
 6013 0066 0546     		mov	r5, r0
 6014 0068 0028     		cmp	r0, #0
 6015 006a DFD1     		bne	.L1077
 6016 006c 03B0     		add	sp, sp, #12
 6017              		@ sp needed
 6018 006e F0BD     		pop	{r4, r5, r6, r7, pc}
 6019              	.L1083:
 6020 0070 01A8     		add	r0, sp, #4
 6021 0072 FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 6022 0076 18B1     		cbz	r0, .L1084
 6023              	.L1070:
 6024 0078 019B     		ldr	r3, [sp, #4]
 6025 007a C6F8F030 		str	r3, [r6, #240]
 6026 007e D5E7     		b	.L1077
 6027              	.L1084:
 6028 0080 2846     		mov	r0, r5
 6029 0082 8021     		movs	r1, #128
 6030 0084 FFF7FEFF 		bl	_ZN12OutputBuffer8TruncateEPS_j
 6031 0088 01A8     		add	r0, sp, #4
 6032 008a FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 6033 008e 0028     		cmp	r0, #0
 6034 0090 F2D1     		bne	.L1070
 6035 0092 BEE7     		b	.L1066
 6036              		.size	_ZN9Webserver17TelnetInterpreter16HandleGCodeReplyEP12OutputBuffer, .-_ZN9Webserver17TelnetI
 6037              		.section	.text._ZN9Webserver16HandleGCodeReplyE9WebSourceP12OutputBuffer,"ax",%progbits
 6038              		.align	2
 6039              		.global	_ZN9Webserver16HandleGCodeReplyE9WebSourceP12OutputBuffer
 6040              		.thumb
 6041              		.thumb_func
 6042              		.type	_ZN9Webserver16HandleGCodeReplyE9WebSourceP12OutputBuffer, %function
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 107


 6043              	_ZN9Webserver16HandleGCodeReplyE9WebSourceP12OutputBuffer:
 6044              		@ args = 0, pretend = 0, frame = 0
 6045              		@ frame_needed = 0, uses_anonymous_args = 0
 6046              		@ link register save eliminated.
 6047 0000 31B1     		cbz	r1, .L1087
 6048 0002 0129     		cmp	r1, #1
 6049 0004 03D1     		bne	.L1090
 6050 0006 8068     		ldr	r0, [r0, #8]
 6051 0008 1146     		mov	r1, r2
 6052 000a FFF7FEBF 		b	_ZN9Webserver17TelnetInterpreter16HandleGCodeReplyEP12OutputBuffer
 6053              	.L1090:
 6054 000e 7047     		bx	lr
 6055              	.L1087:
 6056 0010 0068     		ldr	r0, [r0]
 6057 0012 1146     		mov	r1, r2
 6058 0014 FFF7FEBF 		b	_ZN9Webserver15HttpInterpreter16HandleGCodeReplyEP12OutputBuffer
 6059              		.size	_ZN9Webserver16HandleGCodeReplyE9WebSourceP12OutputBuffer, .-_ZN9Webserver16HandleGCodeReply
 6060              		.section	.text._ZN9Webserver17TelnetInterpreter16HandleGCodeReplyEPKc,"ax",%progbits
 6061              		.align	2
 6062              		.global	_ZN9Webserver17TelnetInterpreter16HandleGCodeReplyEPKc
 6063              		.thumb
 6064              		.thumb_func
 6065              		.type	_ZN9Webserver17TelnetInterpreter16HandleGCodeReplyEPKc, %function
 6066              	_ZN9Webserver17TelnetInterpreter16HandleGCodeReplyEPKc:
 6067              		@ args = 0, pretend = 0, frame = 8
 6068              		@ frame_needed = 0, uses_anonymous_args = 0
 6069 0000 30B5     		push	{r4, r5, lr}
 6070 0002 0C46     		mov	r4, r1
 6071 0004 83B0     		sub	sp, sp, #12
 6072 0006 0546     		mov	r5, r0
 6073 0008 19B1     		cbz	r1, .L1091
 6074 000a 90F87C30 		ldrb	r3, [r0, #124]	@ zero_extendqisi2
 6075 000e 022B     		cmp	r3, #2
 6076 0010 01D8     		bhi	.L1117
 6077              	.L1091:
 6078 0012 03B0     		add	sp, sp, #12
 6079              		@ sp needed
 6080 0014 30BD     		pop	{r4, r5, pc}
 6081              	.L1117:
 6082 0016 C068     		ldr	r0, [r0, #12]
 6083 0018 FFF7FEFF 		bl	_ZN7Network24AcquireTelnetTransactionEv
 6084 001c 0028     		cmp	r0, #0
 6085 001e F8D0     		beq	.L1091
 6086 0020 D5F8F030 		ldr	r3, [r5, #240]
 6087 0024 D3B1     		cbz	r3, .L1118
 6088              	.L1095:
 6089 0026 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 6090 0028 002B     		cmp	r3, #0
 6091 002a F2D0     		beq	.L1091
 6092 002c 0134     		adds	r4, r4, #1
 6093 002e 0BE0     		b	.L1099
 6094              	.L1098:
 6095 0030 D5F8F000 		ldr	r0, [r5, #240]
 6096 0034 14F8011C 		ldrb	r1, [r4, #-1]	@ zero_extendqisi2
 6097 0038 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 6098 003c 0028     		cmp	r0, #0
 6099 003e E8D0     		beq	.L1091
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 108


 6100 0040 14F8013B 		ldrb	r3, [r4], #1	@ zero_extendqisi2
 6101 0044 002B     		cmp	r3, #0
 6102 0046 E4D0     		beq	.L1091
 6103              	.L1099:
 6104 0048 0A2B     		cmp	r3, #10
 6105 004a F1D1     		bne	.L1098
 6106 004c D5F8F000 		ldr	r0, [r5, #240]
 6107 0050 0D21     		movs	r1, #13
 6108 0052 FFF7FEFF 		bl	_ZN12OutputBuffer3catEc
 6109 0056 0028     		cmp	r0, #0
 6110 0058 EAD1     		bne	.L1098
 6111 005a DAE7     		b	.L1091
 6112              	.L1118:
 6113 005c 01A8     		add	r0, sp, #4
 6114 005e FFF7FEFF 		bl	_ZN12OutputBuffer8AllocateERPS_
 6115 0062 0028     		cmp	r0, #0
 6116 0064 D5D0     		beq	.L1091
 6117 0066 019B     		ldr	r3, [sp, #4]
 6118 0068 C5F8F030 		str	r3, [r5, #240]
 6119 006c DBE7     		b	.L1095
 6120              		.size	_ZN9Webserver17TelnetInterpreter16HandleGCodeReplyEPKc, .-_ZN9Webserver17TelnetInterpreter16
 6121 006e 00BF     		.section	.text._ZN9Webserver16HandleGCodeReplyE9WebSourcePKc,"ax",%progbits
 6122              		.align	2
 6123              		.global	_ZN9Webserver16HandleGCodeReplyE9WebSourcePKc
 6124              		.thumb
 6125              		.thumb_func
 6126              		.type	_ZN9Webserver16HandleGCodeReplyE9WebSourcePKc, %function
 6127              	_ZN9Webserver16HandleGCodeReplyE9WebSourcePKc:
 6128              		@ args = 0, pretend = 0, frame = 0
 6129              		@ frame_needed = 0, uses_anonymous_args = 0
 6130              		@ link register save eliminated.
 6131 0000 31B1     		cbz	r1, .L1121
 6132 0002 0129     		cmp	r1, #1
 6133 0004 03D1     		bne	.L1124
 6134 0006 8068     		ldr	r0, [r0, #8]
 6135 0008 1146     		mov	r1, r2
 6136 000a FFF7FEBF 		b	_ZN9Webserver17TelnetInterpreter16HandleGCodeReplyEPKc
 6137              	.L1124:
 6138 000e 7047     		bx	lr
 6139              	.L1121:
 6140 0010 0068     		ldr	r0, [r0]
 6141 0012 1146     		mov	r1, r2
 6142 0014 FFF7FEBF 		b	_ZN9Webserver15HttpInterpreter16HandleGCodeReplyEPKc
 6143              		.size	_ZN9Webserver16HandleGCodeReplyE9WebSourcePKc, .-_ZN9Webserver16HandleGCodeReplyE9WebSourceP
 6144              		.section	.text._ZN9Webserver17TelnetInterpreter14SendGCodeReplyEv,"ax",%progbits
 6145              		.align	2
 6146              		.global	_ZN9Webserver17TelnetInterpreter14SendGCodeReplyEv
 6147              		.thumb
 6148              		.thumb_func
 6149              		.type	_ZN9Webserver17TelnetInterpreter14SendGCodeReplyEv, %function
 6150              	_ZN9Webserver17TelnetInterpreter14SendGCodeReplyEv:
 6151              		@ args = 0, pretend = 0, frame = 0
 6152              		@ frame_needed = 0, uses_anonymous_args = 0
 6153 0000 38B5     		push	{r3, r4, r5, lr}
 6154 0002 D0F8F020 		ldr	r2, [r0, #240]
 6155 0006 8368     		ldr	r3, [r0, #8]
 6156 0008 0446     		mov	r4, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 109


 6157 000a 9D69     		ldr	r5, [r3, #24]
 6158 000c 62B1     		cbz	r2, .L1128
 6159 000e D0F8F010 		ldr	r1, [r0, #240]
 6160 0012 2846     		mov	r0, r5
 6161 0014 FFF7FEFF 		bl	_ZN18NetworkTransaction5WriteEP12OutputBuffer
 6162 0018 2846     		mov	r0, r5
 6163 001a 0121     		movs	r1, #1
 6164 001c FFF7FEFF 		bl	_ZN18NetworkTransaction6CommitEb
 6165 0020 0023     		movs	r3, #0
 6166 0022 C4F8F030 		str	r3, [r4, #240]
 6167 0026 38BD     		pop	{r3, r4, r5, pc}
 6168              	.L1128:
 6169 0028 2846     		mov	r0, r5
 6170 002a FFF7FEFF 		bl	_ZN18NetworkTransaction7DiscardEv
 6171 002e 0023     		movs	r3, #0
 6172 0030 C4F8F030 		str	r3, [r4, #240]
 6173 0034 38BD     		pop	{r3, r4, r5, pc}
 6174              		.size	_ZN9Webserver17TelnetInterpreter14SendGCodeReplyEv, .-_ZN9Webserver17TelnetInterpreter14Send
 6175 0036 00BF     		.section	.text._ZN9Webserver17TelnetInterpreter12CanParseDataEv,"ax",%progbits
 6176              		.align	2
 6177              		.global	_ZN9Webserver17TelnetInterpreter12CanParseDataEv
 6178              		.thumb
 6179              		.thumb_func
 6180              		.type	_ZN9Webserver17TelnetInterpreter12CanParseDataEv, %function
 6181              	_ZN9Webserver17TelnetInterpreter12CanParseDataEv:
 6182              		@ args = 0, pretend = 0, frame = 0
 6183              		@ frame_needed = 0, uses_anonymous_args = 0
 6184 0000 38B5     		push	{r3, r4, r5, lr}
 6185 0002 8368     		ldr	r3, [r0, #8]
 6186 0004 0446     		mov	r4, r0
 6187 0006 9A69     		ldr	r2, [r3, #24]
 6188 0008 92F82430 		ldrb	r3, [r2, #36]	@ zero_extendqisi2
 6189 000c DBB2     		uxtb	r3, r3
 6190 000e 062B     		cmp	r3, #6
 6191 0010 2CD0     		beq	.L1141
 6192 0012 052B     		cmp	r3, #5
 6193 0014 17D0     		beq	.L1142
 6194              	.L1132:
 6195 0016 174B     		ldr	r3, .L1145
 6196 0018 1B69     		ldr	r3, [r3, #16]
 6197 001a D868     		ldr	r0, [r3, #12]
 6198 001c FFF7FEFF 		bl	_ZNK17RegularGCodeInput15BufferSpaceLeftEv
 6199 0020 D4F8EC30 		ldr	r3, [r4, #236]
 6200 0024 0133     		adds	r3, r3, #1
 6201 0026 9842     		cmp	r0, r3
 6202 0028 18D3     		bcc	.L1143
 6203 002a 94F88430 		ldrb	r3, [r4, #132]	@ zero_extendqisi2
 6204 002e 13B9     		cbnz	r3, .L1144
 6205 0030 0125     		movs	r5, #1
 6206              	.L1138:
 6207 0032 2846     		mov	r0, r5
 6208 0034 38BD     		pop	{r3, r4, r5, pc}
 6209              	.L1144:
 6210 0036 2046     		mov	r0, r4
 6211 0038 FFF7FEFF 		bl	_ZN9Webserver17TelnetInterpreter11ProcessLineEv
 6212 003c 80F00100 		eor	r0, r0, #1
 6213 0040 C5B2     		uxtb	r5, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 110


 6214 0042 2846     		mov	r0, r5
 6215 0044 38BD     		pop	{r3, r4, r5, pc}
 6216              	.L1142:
 6217 0046 1046     		mov	r0, r2
 6218 0048 FFF7FEFF 		bl	_ZNK18NetworkTransaction11IsConnectedEv
 6219 004c 0546     		mov	r5, r0
 6220 004e 0028     		cmp	r0, #0
 6221 0050 E1D1     		bne	.L1132
 6222 0052 A368     		ldr	r3, [r4, #8]
 6223 0054 9869     		ldr	r0, [r3, #24]
 6224 0056 FFF7FEFF 		bl	_ZN18NetworkTransaction7DiscardEv
 6225 005a EAE7     		b	.L1138
 6226              	.L1143:
 6227 005c A368     		ldr	r3, [r4, #8]
 6228 005e 0021     		movs	r1, #0
 6229 0060 9869     		ldr	r0, [r3, #24]
 6230 0062 0025     		movs	r5, #0
 6231 0064 FFF7FEFF 		bl	_ZN18NetworkTransaction5DeferE12DeferralMode
 6232 0068 2846     		mov	r0, r5
 6233 006a 38BD     		pop	{r3, r4, r5, pc}
 6234              	.L1141:
 6235 006c FFF7FEFF 		bl	_ZN9Webserver17TelnetInterpreter14SendGCodeReplyEv
 6236 0070 0025     		movs	r5, #0
 6237 0072 DEE7     		b	.L1138
 6238              	.L1146:
 6239              		.align	2
 6240              	.L1145:
 6241 0074 00000000 		.word	reprap
 6242              		.size	_ZN9Webserver17TelnetInterpreter12CanParseDataEv, .-_ZN9Webserver17TelnetInterpreter12CanPar
 6243              		.global	_ZTV19ProtocolInterpreter
 6244              		.global	_ZTVN9Webserver15HttpInterpreterE
 6245              		.global	_ZTVN9Webserver14FtpInterpreterE
 6246              		.global	_ZTVN9Webserver17TelnetInterpreterE
 6247              		.global	badEscapeResponse
 6248              		.global	overflowResponse
 6249              		.section	.rodata._ZTVN9Webserver15HttpInterpreterE,"a",%progbits
 6250              		.align	3
 6251              		.set	.LANCHOR3,. + 0
 6252              		.type	_ZTVN9Webserver15HttpInterpreterE, %object
 6253              		.size	_ZTVN9Webserver15HttpInterpreterE, 52
 6254              	_ZTVN9Webserver15HttpInterpreterE:
 6255 0000 00000000 		.word	0
 6256 0004 00000000 		.word	0
 6257 0008 00000000 		.word	_ZN9Webserver15HttpInterpreterD1Ev
 6258 000c 00000000 		.word	_ZN9Webserver15HttpInterpreterD0Ev
 6259 0010 00000000 		.word	_ZN9Webserver15HttpInterpreter11DiagnosticsE11MessageType
 6260 0014 00000000 		.word	_ZN9Webserver15HttpInterpreter4SpinEv
 6261 0018 00000000 		.word	_ZN19ProtocolInterpreter21ConnectionEstablishedEv
 6262 001c 00000000 		.word	_ZN9Webserver15HttpInterpreter14ConnectionLostEP15ConnectionState
 6263 0020 00000000 		.word	_ZN9Webserver15HttpInterpreter12CanParseDataEv
 6264 0024 00000000 		.word	_ZN9Webserver15HttpInterpreter14CharFromClientEc
 6265 0028 00000000 		.word	_ZN9Webserver15HttpInterpreter19NoMoreDataAvailableEv
 6266 002c 00000000 		.word	_ZNK9Webserver15HttpInterpreter15DoingFastUploadEv
 6267 0030 00000000 		.word	_ZN9Webserver15HttpInterpreter12DoFastUploadEv
 6268 0034 00000000 		.section	.data.overflowResponse,"aw",%progbits
 6269              		.align	2
 6270              		.set	.LANCHOR6,. + 0
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 111


 6271              		.type	overflowResponse, %object
 6272              		.size	overflowResponse, 4
 6273              	overflowResponse:
 6274 0000 90100000 		.word	.LC207
 6275              		.section	.bss._ZZN9Webserver15HttpInterpreter12DoFastUploadEvE15writeBufStorage,"aw",%nobits
 6276              		.align	2
 6277              		.set	.LANCHOR8,. + 0
 6278              		.type	_ZZN9Webserver15HttpInterpreter12DoFastUploadEvE15writeBufStorage, %object
 6279              		.size	_ZZN9Webserver15HttpInterpreter12DoFastUploadEvE15writeBufStorage, 2048
 6280              	_ZZN9Webserver15HttpInterpreter12DoFastUploadEvE15writeBufStorage:
 6281 0000 00000000 		.space	2048
 6281      00000000 
 6281      00000000 
 6281      00000000 
 6281      00000000 
 6282              		.section	.rodata._ZTVN9Webserver14FtpInterpreterE,"a",%progbits
 6283              		.align	3
 6284              		.set	.LANCHOR2,. + 0
 6285              		.type	_ZTVN9Webserver14FtpInterpreterE, %object
 6286              		.size	_ZTVN9Webserver14FtpInterpreterE, 52
 6287              	_ZTVN9Webserver14FtpInterpreterE:
 6288 0000 00000000 		.word	0
 6289 0004 00000000 		.word	0
 6290 0008 00000000 		.word	_ZN9Webserver14FtpInterpreterD1Ev
 6291 000c 00000000 		.word	_ZN9Webserver14FtpInterpreterD0Ev
 6292 0010 00000000 		.word	_ZN9Webserver14FtpInterpreter11DiagnosticsE11MessageType
 6293 0014 00000000 		.word	_ZN19ProtocolInterpreter4SpinEv
 6294 0018 00000000 		.word	_ZN9Webserver14FtpInterpreter21ConnectionEstablishedEv
 6295 001c 00000000 		.word	_ZN9Webserver14FtpInterpreter14ConnectionLostEP15ConnectionState
 6296 0020 00000000 		.word	_ZN19ProtocolInterpreter12CanParseDataEv
 6297 0024 00000000 		.word	_ZN9Webserver14FtpInterpreter14CharFromClientEc
 6298 0028 00000000 		.word	_ZN19ProtocolInterpreter19NoMoreDataAvailableEv
 6299 002c 00000000 		.word	_ZNK9Webserver14FtpInterpreter15DoingFastUploadEv
 6300 0030 00000000 		.word	_ZN19ProtocolInterpreter12DoFastUploadEv
 6301 0034 00000000 		.section	.bss._ZZN9Webserver15HttpInterpreter12DoFastUploadEvE13writeBufIndex,"aw",%nobits
 6302              		.align	2
 6303              		.set	.LANCHOR7,. + 0
 6304              		.type	_ZZN9Webserver15HttpInterpreter12DoFastUploadEvE13writeBufIndex, %object
 6305              		.size	_ZZN9Webserver15HttpInterpreter12DoFastUploadEvE13writeBufIndex, 4
 6306              	_ZZN9Webserver15HttpInterpreter12DoFastUploadEvE13writeBufIndex:
 6307 0000 00000000 		.space	4
 6308              		.section	.data.badEscapeResponse,"aw",%progbits
 6309              		.align	2
 6310              		.set	.LANCHOR5,. + 0
 6311              		.type	badEscapeResponse, %object
 6312              		.size	badEscapeResponse, 4
 6313              	badEscapeResponse:
 6314 0000 84100000 		.word	.LC206
 6315              		.section	.rodata._ZTVN9Webserver17TelnetInterpreterE,"a",%progbits
 6316              		.align	3
 6317              		.set	.LANCHOR1,. + 0
 6318              		.type	_ZTVN9Webserver17TelnetInterpreterE, %object
 6319              		.size	_ZTVN9Webserver17TelnetInterpreterE, 52
 6320              	_ZTVN9Webserver17TelnetInterpreterE:
 6321 0000 00000000 		.word	0
 6322 0004 00000000 		.word	0
 6323 0008 00000000 		.word	_ZN9Webserver17TelnetInterpreterD1Ev
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 112


 6324 000c 00000000 		.word	_ZN9Webserver17TelnetInterpreterD0Ev
 6325 0010 00000000 		.word	_ZN9Webserver17TelnetInterpreter11DiagnosticsE11MessageType
 6326 0014 00000000 		.word	_ZN19ProtocolInterpreter4SpinEv
 6327 0018 00000000 		.word	_ZN9Webserver17TelnetInterpreter21ConnectionEstablishedEv
 6328 001c 00000000 		.word	_ZN9Webserver17TelnetInterpreter14ConnectionLostEP15ConnectionState
 6329 0020 00000000 		.word	_ZN9Webserver17TelnetInterpreter12CanParseDataEv
 6330 0024 00000000 		.word	_ZN9Webserver17TelnetInterpreter14CharFromClientEc
 6331 0028 00000000 		.word	_ZN19ProtocolInterpreter19NoMoreDataAvailableEv
 6332 002c 00000000 		.word	_ZNK19ProtocolInterpreter15DoingFastUploadEv
 6333 0030 00000000 		.word	_ZN19ProtocolInterpreter12DoFastUploadEv
 6334 0034 00000000 		.section	.rodata.CSWTCH.289,"a",%progbits
 6335              		.align	2
 6336              		.set	.LANCHOR4,. + 0
 6337              		.type	CSWTCH.289, %object
 6338              		.size	CSWTCH.289, 28
 6339              	CSWTCH.289:
 6340 0000 30100000 		.word	.LC199
 6341 0004 3C100000 		.word	.LC200
 6342 0008 48100000 		.word	.LC201
 6343 000c 54100000 		.word	.LC202
 6344 0010 5C100000 		.word	.LC203
 6345 0014 6C100000 		.word	.LC204
 6346 0018 78100000 		.word	.LC205
 6347              		.section	.rodata.str1.4,"aMS",%progbits,1
 6348              		.align	2
 6349              	.LC0:
 6350 0000 48545450 		.ascii	"HTTP sessions: %d of %d\012\000"
 6350      20736573 
 6350      73696F6E 
 6350      733A2025 
 6350      64206F66 
 6351 0019 000000   		.space	3
 6352              	.LC1:
 6353 001c 46545020 		.ascii	"FTP connections: %d, state %d\012\000"
 6353      636F6E6E 
 6353      65637469 
 6353      6F6E733A 
 6353      2025642C 
 6354 003b 00       		.space	1
 6355              	.LC2:
 6356 003c 54656C6E 		.ascii	"Telnet connections: %d, state %d\012\000"
 6356      65742063 
 6356      6F6E6E65 
 6356      6374696F 
 6356      6E733A20 
 6357 005e 0000     		.space	2
 6358              	.LC3:
 6359 0060 57726974 		.ascii	"Writing %u bytes of upload data\012\000"
 6359      696E6720 
 6359      25752062 
 6359      79746573 
 6359      206F6620 
 6360 0081 000000   		.space	3
 6361              	.LC4:
 6362 0084 4572726F 		.ascii	"Error: Could not write upload data!\012\000"
 6362      723A2043 
 6362      6F756C64 
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 113


 6362      206E6F74 
 6362      20777269 
 6363 00a9 000000   		.space	3
 6364              	.LC5:
 6365 00ac 536F7272 		.ascii	"Sorry, only one client may be connected via Telnet "
 6365      792C206F 
 6365      6E6C7920 
 6365      6F6E6520 
 6365      636C6965 
 6366 00df 6174206F 		.ascii	"at once.\015\012\000"
 6366      6E63652E 
 6366      0D0A00
 6367 00ea 0000     		.space	2
 6368              	.LC6:
 6369 00ec 52657052 		.ascii	"RepRapFirmware Telnet interface\015\012\015\012\000"
 6369      61704669 
 6369      726D7761 
 6369      72652054 
 6369      656C6E65 
 6370              	.LC7:
 6371 0110 506C6561 		.ascii	"Please enter your password:\015\012\000"
 6371      73652065 
 6371      6E746572 
 6371      20796F75 
 6371      72207061 
 6372 012e 0000     		.space	2
 6373              	.LC8:
 6374 0130 3E2000   		.ascii	"> \000"
 6375 0133 00       		.space	1
 6376              	.LC9:
 6377 0134 303A00   		.ascii	"0:\000"
 6378 0137 00       		.space	1
 6379              	.LC10:
 6380 0138 504F5354 		.ascii	"POST upload for '%s' has been cancelled!\012\000"
 6380      2075706C 
 6380      6F616420 
 6380      666F7220 
 6380      27257327 
 6381 0162 0000     		.space	2
 6382              	.LC11:
 6383 0164 756E6B6E 		.ascii	"unknown\000"
 6383      6F776E00 
 6384              	.LC12:
 6385 016c 496E636F 		.ascii	"Incoming transaction: Type %s at local port %d (rem"
 6385      6D696E67 
 6385      20747261 
 6385      6E736163 
 6385      74696F6E 
 6386 019f 6F746520 		.ascii	"ote port %d)\012\000"
 6386      706F7274 
 6386      20256429 
 6386      0A00
 6387 01ad 000000   		.space	3
 6388              	.LC13:
 6389 01b0 4572726F 		.ascii	"Error: Transaction for reading connection not found"
 6389      723A2054 
 6389      72616E73 
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 114


 6389      61637469 
 6389      6F6E2066 
 6390 01e3 0A00     		.ascii	"\012\000"
 6391 01e5 000000   		.space	3
 6392              	.LC14:
 6393 01e8 57656273 		.ascii	"Webserver class exited.\012\000"
 6393      65727665 
 6393      7220636C 
 6393      61737320 
 6393      65786974 
 6394 0201 000000   		.space	3
 6395              	.LC15:
 6396 0204 3D3D3D20 		.ascii	"=== Webserver ===\012\000"
 6396      57656273 
 6396      65727665 
 6396      72203D3D 
 6396      3D0A00
 6397 0217 00       		.space	1
 6398              	.LC16:
 6399 0218 4572726F 		.ascii	"Error: Webserver should handle disconnect event at "
 6399      723A2057 
 6399      65627365 
 6399      72766572 
 6399      2073686F 
 6400 024b 6C6F6361 		.ascii	"local port %d, but no handler was found!\012\000"
 6400      6C20706F 
 6400      72742025 
 6400      642C2062 
 6400      7574206E 
 6401 0275 000000   		.space	3
 6402              	.LC17:
 6403 0278 436F6E6E 		.ascii	"ConnectionLost called for local port %d (remote por"
 6403      65637469 
 6403      6F6E4C6F 
 6403      73742063 
 6403      616C6C65 
 6404 02ab 74202564 		.ascii	"t %d)\012\000"
 6404      290A00
 6405 02b2 0000     		.space	2
 6406              	.LC18:
 6407 02b4 4572726F 		.ascii	"Error: Could not open file while starting upload!\012"
 6407      723A2043 
 6407      6F756C64 
 6407      206E6F74 
 6407      206F7065 
 6408 02e6 00       		.ascii	"\000"
 6409 02e7 00       		.space	1
 6410              	.LC19:
 6411 02e8 4572726F 		.ascii	"Error: Could not flush remaining data while finishi"
 6411      723A2043 
 6411      6F756C64 
 6411      206E6F74 
 6411      20666C75 
 6412 031b 6E672075 		.ascii	"ng upload!\012\000"
 6412      706C6F61 
 6412      64210A00 
 6413 0327 00       		.space	1
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 115


 6414              	.LC20:
 6415 0328 4572726F 		.ascii	"Error: Uploaded file size is different (%u vs. expe"
 6415      723A2055 
 6415      706C6F61 
 6415      64656420 
 6415      66696C65 
 6416 035b 63746564 		.ascii	"cted %u bytes)!\012\000"
 6416      20257520 
 6416      62797465 
 6416      7329210A 
 6416      00
 6417              	.LC21:
 6418 036c 2F00     		.ascii	"/\000"
 6419 036e 0000     		.space	2
 6420              	.LC22:
 6421 0370 53656E64 		.ascii	"Sending G-Code reply to client %d of %d (length %u)"
 6421      696E6720 
 6421      472D436F 
 6421      64652072 
 6421      65706C79 
 6422 03a3 0A00     		.ascii	"\012\000"
 6423 03a5 000000   		.space	3
 6424              	.LC23:
 6425 03a8 48545450 		.ascii	"HTTP/1.1 200 OK\012\000"
 6425      2F312E31 
 6425      20323030 
 6425      204F4B0A 
 6425      00
 6426 03b9 000000   		.space	3
 6427              	.LC24:
 6428 03bc 43616368 		.ascii	"Cache-Control: no-cache, no-store, must-revalidate\012"
 6428      652D436F 
 6428      6E74726F 
 6428      6C3A206E 
 6428      6F2D6361 
 6429 03ef 00       		.ascii	"\000"
 6430              	.LC25:
 6431 03f0 50726167 		.ascii	"Pragma: no-cache\012\000"
 6431      6D613A20 
 6431      6E6F2D63 
 6431      61636865 
 6431      0A00
 6432 0402 0000     		.space	2
 6433              	.LC26:
 6434 0404 45787069 		.ascii	"Expires: 0\012\000"
 6434      7265733A 
 6434      20300A00 
 6435              	.LC27:
 6436 0410 41636365 		.ascii	"Access-Control-Allow-Origin: *\012\000"
 6436      73732D43 
 6436      6F6E7472 
 6436      6F6C2D41 
 6436      6C6C6F77 
 6437              	.LC28:
 6438 0430 436F6E74 		.ascii	"Content-Type: text/plain\012\000"
 6438      656E742D 
 6438      54797065 
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 116


 6438      3A207465 
 6438      78742F70 
 6439 044a 0000     		.space	2
 6440              	.LC29:
 6441 044c 436F6E74 		.ascii	"Content-Length: %u\012\000"
 6441      656E742D 
 6441      4C656E67 
 6441      74683A20 
 6441      25750A00 
 6442              	.LC30:
 6443 0460 436F6E6E 		.ascii	"Connection: close\012\012\000"
 6443      65637469 
 6443      6F6E3A20 
 6443      636C6F73 
 6443      650A0A00 
 6444              	.LC31:
 6445 0474 57656273 		.ascii	"Webserver: rejecting message with: %s\012\000"
 6445      65727665 
 6445      723A2072 
 6445      656A6563 
 6445      74696E67 
 6446 049b 00       		.space	1
 6447              	.LC32:
 6448 049c 48545450 		.ascii	"HTTP/1.1 %u %s\012Connection: close\012\012\000"
 6448      2F312E31 
 6448      20257520 
 6448      25730A43 
 6448      6F6E6E65 
 6449 04bf 00       		.space	1
 6450              	.LC33:
 6451 04c0 72657072 		.ascii	"reprap.htm\000"
 6451      61702E68 
 6451      746D00
 6452 04cb 00       		.space	1
 6453              	.LC34:
 6454 04cc 68746D6C 		.ascii	"html404.htm\000"
 6454      3430342E 
 6454      68746D00 
 6455              	.LC35:
 6456 04d8 74657874 		.ascii	"text/plain\000"
 6456      2F706C61 
 6456      696E00
 6457 04e3 00       		.space	1
 6458              	.LC36:
 6459 04e4 74657874 		.ascii	"text/html\000"
 6459      2F68746D 
 6459      6C00
 6460 04ee 0000     		.space	2
 6461              	.LC37:
 6462 04f0 6170706C 		.ascii	"application/octet-stream\000"
 6462      69636174 
 6462      696F6E2F 
 6462      6F637465 
 6462      742D7374 
 6463 0509 000000   		.space	3
 6464              	.LC38:
 6465 050c 696D6167 		.ascii	"image/png\000"
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 117


 6465      652F706E 
 6465      6700
 6466 0516 0000     		.space	2
 6467              	.LC39:
 6468 0518 696D6167 		.ascii	"image/x-icon\000"
 6468      652F782D 
 6468      69636F6E 
 6468      00
 6469 0525 000000   		.space	3
 6470              	.LC40:
 6471 0528 74657874 		.ascii	"text/css\000"
 6471      2F637373 
 6471      00
 6472 0531 000000   		.space	3
 6473              	.LC41:
 6474 0534 6170706C 		.ascii	"application/javascript\000"
 6474      69636174 
 6474      696F6E2F 
 6474      6A617661 
 6474      73637269 
 6475 054b 00       		.space	1
 6476              	.LC42:
 6477 054c 2E677A00 		.ascii	".gz\000"
 6478              	.LC43:
 6479 0550 303A2F77 		.ascii	"0:/www/\000"
 6479      77772F00 
 6480              	.LC44:
 6481 0558 2E68746D 		.ascii	".html\000"
 6481      6C00
 6482 055e 0000     		.space	2
 6483              	.LC45:
 6484 0560 2E68746D 		.ascii	".htm\000"
 6484      00
 6485 0565 000000   		.space	3
 6486              	.LC46:
 6487 0568 6E6F7420 		.ascii	"not found\000"
 6487      666F756E 
 6487      6400
 6488 0572 0000     		.space	2
 6489              	.LC47:
 6490 0574 2E706E67 		.ascii	".png\000"
 6490      00
 6491 0579 000000   		.space	3
 6492              	.LC48:
 6493 057c 2E69636F 		.ascii	".ico\000"
 6493      00
 6494 0581 000000   		.space	3
 6495              	.LC49:
 6496 0584 2E6A7300 		.ascii	".js\000"
 6497              	.LC50:
 6498 0588 2E637373 		.ascii	".css\000"
 6498      00
 6499 058d 000000   		.space	3
 6500              	.LC51:
 6501 0590 2E6700   		.ascii	".g\000"
 6502 0593 00       		.space	1
 6503              	.LC52:
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 118


 6504 0594 2E676300 		.ascii	".gc\000"
 6505              	.LC53:
 6506 0598 2E67636F 		.ascii	".gcode\000"
 6506      646500
 6507 059f 00       		.space	1
 6508              	.LC54:
 6509 05a0 436F6E74 		.ascii	"Content-Encoding: gzip\012\000"
 6509      656E742D 
 6509      456E636F 
 6509      64696E67 
 6509      3A20677A 
 6510              	.LC55:
 6511 05b8 436F6E74 		.ascii	"Content-Length: %lu\012\000"
 6511      656E742D 
 6511      4C656E67 
 6511      74683A20 
 6511      256C750A 
 6512 05cd 000000   		.space	3
 6513              	.LC56:
 6514 05d0 2E7A6970 		.ascii	".zip\000"
 6514      00
 6515 05d5 000000   		.space	3
 6516              	.LC57:
 6517 05d8 436F6E74 		.ascii	"Content-Type: %s\012\000"
 6517      656E742D 
 6517      54797065 
 6517      3A202573 
 6517      0A00
 6518 05ea 0000     		.space	2
 6519              	.LC58:
 6520 05ec 6170706C 		.ascii	"application/zip\000"
 6520      69636174 
 6520      696F6E2F 
 6520      7A697000 
 6521              	.LC59:
 6522 05fc 496E636F 		.ascii	"Incomplete or too long HTTP request\000"
 6522      6D706C65 
 6522      7465206F 
 6522      7220746F 
 6522      6F206C6F 
 6523              	.LC60:
 6524 0620 436F6E74 		.ascii	"Content-Type: application/json\012\000"
 6524      656E742D 
 6524      54797065 
 6524      3A206170 
 6524      706C6963 
 6525              	.LC61:
 6526 0640 303A2F67 		.ascii	"0:/gcodes/\000"
 6526      636F6465 
 6526      732F00
 6527 064b 00       		.space	1
 6528              	.LC62:
 6529 064c 636F6E6E 		.ascii	"connect\000"
 6529      65637400 
 6530              	.LC63:
 6531 0654 70617373 		.ascii	"password\000"
 6531      776F7264 
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 119


 6531      00
 6532 065d 000000   		.space	3
 6533              	.LC64:
 6534 0660 74696D65 		.ascii	"time\000"
 6534      00
 6535 0665 000000   		.space	3
 6536              	.LC65:
 6537 0668 7B226572 		.ascii	"{\"err\":0,\"sessionTimeout\":%u,\"boardType\":\"%s"
 6537      72223A30 
 6537      2C227365 
 6537      7373696F 
 6537      6E54696D 
 6538 0694 227D00   		.ascii	"\"}\000"
 6539 0697 00       		.space	1
 6540              	.LC66:
 6541 0698 7B226572 		.ascii	"{\"err\":2}\000"
 6541      72223A32 
 6541      7D00
 6542 06a2 0000     		.space	2
 6543              	.LC67:
 6544 06a4 4E6F7420 		.ascii	"Not authorized\000"
 6544      61757468 
 6544      6F72697A 
 6544      656400
 6545 06b3 00       		.space	1
 6546              	.LC68:
 6547 06b4 64697363 		.ascii	"disconnect\000"
 6547      6F6E6E65 
 6547      637400
 6548 06bf 00       		.space	1
 6549              	.LC69:
 6550 06c0 7B226572 		.ascii	"{\"err\":%d}\000"
 6550      72223A25 
 6550      647D00
 6551 06cb 00       		.space	1
 6552              	.LC70:
 6553 06cc 73746174 		.ascii	"status\000"
 6553      757300
 6554 06d3 00       		.space	1
 6555              	.LC71:
 6556 06d4 74797065 		.ascii	"type\000"
 6556      00
 6557 06d9 000000   		.space	3
 6558              	.LC72:
 6559 06dc 67636F64 		.ascii	"gcode\000"
 6559      6500
 6560 06e2 0000     		.space	2
 6561              	.LC73:
 6562 06e4 64656C65 		.ascii	"delete\000"
 6562      746500
 6563 06eb 00       		.space	1
 6564              	.LC74:
 6565 06ec 6E616D65 		.ascii	"name\000"
 6565      00
 6566 06f1 000000   		.space	3
 6567              	.LC75:
 6568 06f4 64697200 		.ascii	"dir\000"
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 120


 6569              	.LC76:
 6570 06f8 666C6167 		.ascii	"flagDirs\000"
 6570      44697273 
 6570      00
 6571 0701 000000   		.space	3
 6572              	.LC77:
 6573 0704 66696C65 		.ascii	"fileinfo\000"
 6573      696E666F 
 6573      00
 6574 070d 000000   		.space	3
 6575              	.LC78:
 6576 0710 6D6F7665 		.ascii	"move\000"
 6576      00
 6577 0715 000000   		.space	3
 6578              	.LC79:
 6579 0718 6F6C6400 		.ascii	"old\000"
 6580              	.LC80:
 6581 071c 6E657700 		.ascii	"new\000"
 6582              	.LC81:
 6583 0720 6D6B6469 		.ascii	"mkdir\000"
 6583      7200
 6584 0726 0000     		.space	2
 6585              	.LC82:
 6586 0728 636F6E66 		.ascii	"config\000"
 6586      696700
 6587 072f 00       		.space	1
 6588              	.LC83:
 6589 0730 556E6B6E 		.ascii	"Unknown request\000"
 6589      6F776E20 
 6589      72657175 
 6589      65737400 
 6590              	.LC84:
 6591 0740 7B226572 		.ascii	"{\"err\":1}\000"
 6591      72223A31 
 6591      7D00
 6592 074a 0000     		.space	2
 6593              	.LC85:
 6594 074c 25592D25 		.ascii	"%Y-%m-%dT%H:%M:%S\000"
 6594      6D2D2564 
 6594      5425483A 
 6594      254D3A25 
 6594      5300
 6595 075e 0000     		.space	2
 6596              	.LC86:
 6597 0760 7B226275 		.ascii	"{\"buff\":%u}\000"
 6597      6666223A 
 6597      25757D00 
 6598              	.LC87:
 6599 076c 75706C6F 		.ascii	"upload\000"
 6599      616400
 6600 0773 00       		.space	1
 6601              	.LC88:
 6602 0774 66696C65 		.ascii	"filelist\000"
 6602      6C697374 
 6602      00
 6603 077d 000000   		.space	3
 6604              	.LC89:
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 121


 6605 0780 66696C65 		.ascii	"files\000"
 6605      7300
 6606 0786 0000     		.space	2
 6607              	.LC90:
 6608 0788 6B656570 		.ascii	"keep-alive\000"
 6608      2D616C69 
 6608      766500
 6609 0793 00       		.space	1
 6610              	.LC91:
 6611 0794 636C6F73 		.ascii	"close\000"
 6611      6500
 6612 079a 0000     		.space	2
 6613              	.LC92:
 6614 079c 7265706C 		.ascii	"reply\000"
 6614      7900
 6615 07a2 0000     		.space	2
 6616              	.LC93:
 6617 07a4 636F6E66 		.ascii	"configfile\000"
 6617      69676669 
 6617      6C6500
 6618 07af 00       		.space	1
 6619              	.LC94:
 6620 07b0 303A2F73 		.ascii	"0:/sys/\000"
 6620      79732F00 
 6621              	.LC95:
 6622 07b8 636F6E66 		.ascii	"config.g\000"
 6622      69672E67 
 6622      00
 6623 07c1 000000   		.space	3
 6624              	.LC96:
 6625 07c4 646F776E 		.ascii	"download\000"
 6625      6C6F6164 
 6625      00
 6626 07cd 000000   		.space	3
 6627              	.LC97:
 6628 07d0 436F6E6E 		.ascii	"Connection\000"
 6628      65637469 
 6628      6F6E00
 6629 07db 00       		.space	1
 6630              	.LC98:
 6631 07dc 436F6E6E 		.ascii	"Connection: %s\012\012\000"
 6631      65637469 
 6631      6F6E3A20 
 6631      25730A0A 
 6631      00
 6632 07ed 000000   		.space	3
 6633              	.LC99:
 6634 07f0 48545450 		.ascii	"HTTP req, command words {\000"
 6634      20726571 
 6634      2C20636F 
 6634      6D6D616E 
 6634      6420776F 
 6635 080a 0000     		.space	2
 6636              	.LC100:
 6637 080c 207D2C20 		.ascii	" }, parameters {\000"
 6637      70617261 
 6637      6D657465 
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 122


 6637      7273207B 
 6637      00
 6638 081d 000000   		.space	3
 6639              	.LC101:
 6640 0820 20257300 		.ascii	" %s\000"
 6641              	.LC102:
 6642 0824 207D0A00 		.ascii	" }\012\000"
 6643              	.LC103:
 6644 0828 2025733D 		.ascii	" %s=%s\000"
 6644      257300
 6645 082f 00       		.space	1
 6646              	.LC104:
 6647 0830 746F6F20 		.ascii	"too few command words\000"
 6647      66657720 
 6647      636F6D6D 
 6647      616E6420 
 6647      776F7264 
 6648 0846 0000     		.space	2
 6649              	.LC105:
 6650 0848 47455400 		.ascii	"GET\000"
 6651              	.LC106:
 6652 084c 72725F00 		.ascii	"rr_\000"
 6653              	.LC107:
 6654 0850 4F505449 		.ascii	"OPTIONS\000"
 6654      4F4E5300 
 6655              	.LC108:
 6656 0858 416C6C6F 		.ascii	"Allow: OPTIONS, GET, POST\012\000"
 6656      773A204F 
 6656      5054494F 
 6656      4E532C20 
 6656      4745542C 
 6657 0873 00       		.space	1
 6658              	.LC109:
 6659 0874 41636365 		.ascii	"Access-Control-Allow-Headers: Content-Type\012\000"
 6659      73732D43 
 6659      6F6E7472 
 6659      6F6C2D41 
 6659      6C6C6F77 
 6660              	.LC110:
 6661 08a0 436F6E74 		.ascii	"Content-Length: 0\012\000"
 6661      656E742D 
 6661      4C656E67 
 6661      74683A20 
 6661      300A00
 6662 08b3 00       		.space	1
 6663              	.LC111:
 6664 08b4 0A00     		.ascii	"\012\000"
 6665 08b6 0000     		.space	2
 6666              	.LC112:
 6667 08b8 504F5354 		.ascii	"POST\000"
 6667      00
 6668 08bd 000000   		.space	3
 6669              	.LC113:
 6670 08c0 72725F75 		.ascii	"rr_upload\000"
 6670      706C6F61 
 6670      6400
 6671 08ca 0000     		.space	2
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 123


 6672              	.LC114:
 6673 08cc 63616E6E 		.ascii	"cannot upload more than one file at once\000"
 6673      6F742075 
 6673      706C6F61 
 6673      64206D6F 
 6673      72652074 
 6674 08f5 000000   		.space	3
 6675              	.LC115:
 6676 08f8 436F6E74 		.ascii	"Content-Length\000"
 6676      656E742D 
 6676      4C656E67 
 6676      746800
 6677 0907 00       		.space	1
 6678              	.LC116:
 6679 0908 696E7661 		.ascii	"invalid POST upload request\000"
 6679      6C696420 
 6679      504F5354 
 6679      2075706C 
 6679      6F616420 
 6680              	.LC117:
 6681 0924 636F756C 		.ascii	"could not start file upload\000"
 6681      64206E6F 
 6681      74207374 
 6681      61727420 
 6681      66696C65 
 6682              	.LC118:
 6683 0940 53746172 		.ascii	"Start uploading file %s length %lu\012\000"
 6683      74207570 
 6683      6C6F6164 
 6683      696E6720 
 6683      66696C65 
 6684              	.LC119:
 6685 0964 556E6B6E 		.ascii	"Unknown message type or not authenticated\000"
 6685      6F776E20 
 6685      6D657373 
 6685      61676520 
 6685      74797065 
 6686 098e 0000     		.space	2
 6687              	.LC120:
 6688 0990 6F6E6C79 		.ascii	"only rr_upload is supported for POST requests\000"
 6688      2072725F 
 6688      75706C6F 
 6688      61642069 
 6688      73207375 
 6689 09be 0000     		.space	2
 6690              	.LC121:
 6691 09c0 746F6F20 		.ascii	"too many command words\000"
 6691      6D616E79 
 6691      20636F6D 
 6691      6D616E64 
 6691      20776F72 
 6692 09d7 00       		.space	1
 6693              	.LC122:
 6694 09d8 62616420 		.ascii	"bad qualifier key\000"
 6694      7175616C 
 6694      69666965 
 6694      72206B65 
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 124


 6694      7900
 6695 09ea 0000     		.space	2
 6696              	.LC123:
 6697 09ec 746F6F20 		.ascii	"too many keys in qualifier\000"
 6697      6D616E79 
 6697      206B6579 
 6697      7320696E 
 6697      20717561 
 6698 0a07 00       		.space	1
 6699              	.LC124:
 6700 0a08 756E6578 		.ascii	"unexpected newline\000"
 6700      70656374 
 6700      6564206E 
 6700      65776C69 
 6700      6E6500
 6701 0a1b 00       		.space	1
 6702              	.LC125:
 6703 0a1c 746F6F20 		.ascii	"too many header key-value pairs\000"
 6703      6D616E79 
 6703      20686561 
 6703      64657220 
 6703      6B65792D 
 6704              	.LC126:
 6705 0a3c 25642025 		.ascii	"%d %s\015\012\000"
 6705      730D0A00 
 6706              	.LC127:
 6707 0a44 57656273 		.ascii	"Webserver: FTP connection established!\012\000"
 6707      65727665 
 6707      723A2046 
 6707      54502063 
 6707      6F6E6E65 
 6708              	.LC128:
 6709 0a6c 52657052 		.ascii	"RepRapFirmware FTP server\000"
 6709      61704669 
 6709      726D7761 
 6709      72652046 
 6709      54502073 
 6710 0a86 0000     		.space	2
 6711              	.LC129:
 6712 0a88 4F6E6C79 		.ascii	"Only one client can be connected at a time.\000"
 6712      206F6E65 
 6712      20636C69 
 6712      656E7420 
 6712      63616E20 
 6713              	.LC130:
 6714 0ab4 4C6F7374 		.ascii	"Lost data connection!\000"
 6714      20646174 
 6714      6120636F 
 6714      6E6E6563 
 6714      74696F6E 
 6715 0aca 0000     		.space	2
 6716              	.LC131:
 6717 0acc 5472616E 		.ascii	"Transfer complete.\000"
 6717      73666572 
 6717      20636F6D 
 6717      706C6574 
 6717      652E00
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 125


 6718 0adf 00       		.space	1
 6719              	.LC132:
 6720 0ae0 5472616E 		.ascii	"Transfer failed!\000"
 6720      73666572 
 6720      20666169 
 6720      6C656421 
 6720      00
 6721 0af1 000000   		.space	3
 6722              	.LC133:
 6723 0af4 3231312D 		.ascii	"211-Features:\015\012\000"
 6723      46656174 
 6723      75726573 
 6723      3A0D0A00 
 6724              	.LC134:
 6725 0b04 50415356 		.ascii	"PASV\015\012\000"
 6725      0D0A00
 6726 0b0b 00       		.space	1
 6727              	.LC135:
 6728 0b0c 32313120 		.ascii	"211 End\015\012\000"
 6728      456E640D 
 6728      0A00
 6729 0b16 0000     		.space	2
 6730              	.LC136:
 6731 0b18 2E2E00   		.ascii	"..\000"
 6732 0b1b 00       		.space	1
 6733              	.LC137:
 6734 0b1c 4661696C 		.ascii	"Failed to change directory.\000"
 6734      65642074 
 6734      6F206368 
 6734      616E6765 
 6734      20646972 
 6735              	.LC138:
 6736 0b38 44697265 		.ascii	"Directory successfully changed.\000"
 6736      63746F72 
 6736      79207375 
 6736      63636573 
 6736      7366756C 
 6737              	.LC139:
 6738 0b58 55534552 		.ascii	"USER\000"
 6738      00
 6739 0b5d 000000   		.space	3
 6740              	.LC140:
 6741 0b60 506C6561 		.ascii	"Please specify the password.\000"
 6741      73652073 
 6741      70656369 
 6741      66792074 
 6741      68652070 
 6742 0b7d 000000   		.space	3
 6743              	.LC141:
 6744 0b80 50415353 		.ascii	"PASS\000"
 6744      00
 6745 0b85 000000   		.space	3
 6746              	.LC142:
 6747 0b88 4C6F6769 		.ascii	"Login successful.\000"
 6747      6E207375 
 6747      63636573 
 6747      7366756C 
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 126


 6747      2E00
 6748 0b9a 0000     		.space	2
 6749              	.LC143:
 6750 0b9c 4C6F6769 		.ascii	"Login incorrect.\000"
 6750      6E20696E 
 6750      636F7272 
 6750      6563742E 
 6750      00
 6751 0bad 000000   		.space	3
 6752              	.LC144:
 6753 0bb0 556E6B6E 		.ascii	"Unknown login command.\000"
 6753      6F776E20 
 6753      6C6F6769 
 6753      6E20636F 
 6753      6D6D616E 
 6754 0bc7 00       		.space	1
 6755              	.LC145:
 6756 0bc8 53595354 		.ascii	"SYST\000"
 6756      00
 6757 0bcd 000000   		.space	3
 6758              	.LC146:
 6759 0bd0 554E4958 		.ascii	"UNIX Type: L8\000"
 6759      20547970 
 6759      653A204C 
 6759      3800
 6760 0bde 0000     		.space	2
 6761              	.LC147:
 6762 0be0 46454154 		.ascii	"FEAT\000"
 6762      00
 6763 0be5 000000   		.space	3
 6764              	.LC148:
 6765 0be8 50574400 		.ascii	"PWD\000"
 6766              	.LC149:
 6767 0bec 32353720 		.ascii	"257 \"%s\"\015\012\000"
 6767      22257322 
 6767      0D0A00
 6768 0bf7 00       		.space	1
 6769              	.LC150:
 6770 0bf8 43574400 		.ascii	"CWD\000"
 6771              	.LC151:
 6772 0bfc 43445550 		.ascii	"CDUP\000"
 6772      00
 6773 0c01 000000   		.space	3
 6774              	.LC152:
 6775 0c04 54595045 		.ascii	"TYPE\000"
 6775      00
 6776 0c09 000000   		.space	3
 6777              	.LC153:
 6778 0c0c 53776974 		.ascii	"Switching to Binary mode.\000"
 6778      6368696E 
 6778      6720746F 
 6778      2042696E 
 6778      61727920 
 6779 0c26 0000     		.space	2
 6780              	.LC154:
 6781 0c28 53776974 		.ascii	"Switching to ASCII mode.\000"
 6781      6368696E 
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 127


 6781      6720746F 
 6781      20415343 
 6781      4949206D 
 6782 0c41 000000   		.space	3
 6783              	.LC155:
 6784 0c44 556E6B6E 		.ascii	"Unknown command.\000"
 6784      6F776E20 
 6784      636F6D6D 
 6784      616E642E 
 6784      00
 6785 0c55 000000   		.space	3
 6786              	.LC156:
 6787 0c58 50415356 		.ascii	"PASV\000"
 6787      00
 6788 0c5d 000000   		.space	3
 6789              	.LC157:
 6790 0c60 32323720 		.ascii	"227 Entering Passive Mode (%d,%d,%d,%d,%d,%d)\015\012"
 6790      456E7465 
 6790      72696E67 
 6790      20506173 
 6790      73697665 
 6791 0c8f 00       		.ascii	"\000"
 6792              	.LC158:
 6793 0c90 4C495354 		.ascii	"LIST\000"
 6793      00
 6794 0c95 000000   		.space	3
 6795              	.LC159:
 6796 0c98 52455452 		.ascii	"RETR\000"
 6796      00
 6797 0c9d 000000   		.space	3
 6798              	.LC160:
 6799 0ca0 53544F52 		.ascii	"STOR\000"
 6799      00
 6800 0ca5 000000   		.space	3
 6801              	.LC161:
 6802 0ca8 44656C65 		.ascii	"Delete operation successful.\000"
 6802      7465206F 
 6802      70657261 
 6802      74696F6E 
 6802      20737563 
 6803 0cc5 000000   		.space	3
 6804              	.LC162:
 6805 0cc8 44656C65 		.ascii	"Delete operation failed.\000"
 6805      7465206F 
 6805      70657261 
 6805      74696F6E 
 6805      20666169 
 6806 0ce1 000000   		.space	3
 6807              	.LC163:
 6808 0ce4 524D4400 		.ascii	"RMD\000"
 6809              	.LC164:
 6810 0ce8 52656D6F 		.ascii	"Remove directory operation successful.\000"
 6810      76652064 
 6810      69726563 
 6810      746F7279 
 6810      206F7065 
 6811 0d0f 00       		.space	1
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 128


 6812              	.LC165:
 6813 0d10 52656D6F 		.ascii	"Remove directory operation failed.\000"
 6813      76652064 
 6813      69726563 
 6813      746F7279 
 6813      206F7065 
 6814 0d33 00       		.space	1
 6815              	.LC166:
 6816 0d34 4D4B4400 		.ascii	"MKD\000"
 6817              	.LC167:
 6818 0d38 32353720 		.ascii	"257 \"%s\" created\015\012\000"
 6818      22257322 
 6818      20637265 
 6818      61746564 
 6818      0D0A00
 6819 0d4b 00       		.space	1
 6820              	.LC168:
 6821 0d4c 43726561 		.ascii	"Create directory operation failed.\000"
 6821      74652064 
 6821      69726563 
 6821      746F7279 
 6821      206F7065 
 6822 0d6f 00       		.space	1
 6823              	.LC169:
 6824 0d70 524E4652 		.ascii	"RNFR\000"
 6824      00
 6825 0d75 000000   		.space	3
 6826              	.LC170:
 6827 0d78 52656164 		.ascii	"Ready to RNTO.\000"
 6827      7920746F 
 6827      20524E54 
 6827      4F2E00
 6828 0d87 00       		.space	1
 6829              	.LC171:
 6830 0d88 496E7661 		.ascii	"Invalid file or directory.\000"
 6830      6C696420 
 6830      66696C65 
 6830      206F7220 
 6830      64697265 
 6831 0da3 00       		.space	1
 6832              	.LC172:
 6833 0da4 524E544F 		.ascii	"RNTO\000"
 6833      00
 6834 0da9 000000   		.space	3
 6835              	.LC173:
 6836 0dac 52656E61 		.ascii	"Rename successful.\000"
 6836      6D652073 
 6836      75636365 
 6836      73736675 
 6836      6C2E00
 6837 0dbf 00       		.space	1
 6838              	.LC174:
 6839 0dc0 436F756C 		.ascii	"Could not rename file or directory.\000"
 6839      64206E6F 
 6839      74207265 
 6839      6E616D65 
 6839      2066696C 
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 129


 6840              	.LC175:
 6841 0de4 4E4F4F50 		.ascii	"NOOP\000"
 6841      00
 6842 0de9 000000   		.space	3
 6843              	.LC176:
 6844 0dec 4E4F4F50 		.ascii	"NOOP okay.\000"
 6844      206F6B61 
 6844      792E00
 6845 0df7 00       		.space	1
 6846              	.LC177:
 6847 0df8 51554954 		.ascii	"QUIT\000"
 6847      00
 6848 0dfd 000000   		.space	3
 6849              	.LC178:
 6850 0e00 476F6F64 		.ascii	"Goodbye.\000"
 6850      6279652E 
 6850      00
 6851 0e09 000000   		.space	3
 6852              	.LC179:
 6853 0e0c 4661696C 		.ascii	"Failed to establish connection.\000"
 6853      65642074 
 6853      6F206573 
 6853      7461626C 
 6853      69736820 
 6854              	.LC180:
 6855 0e2c 48657265 		.ascii	"Here comes the directory listing.\000"
 6855      20636F6D 
 6855      65732074 
 6855      68652064 
 6855      69726563 
 6856 0e4e 0000     		.space	2
 6857              	.LC181:
 6858 0e50 25637277 		.ascii	"%crw-rw-rw- 1 ftp ftp %13lu %s %02d %04d %s\015\012"
 6858      2D72772D 
 6858      72772D20 
 6858      31206674 
 6858      70206674 
 6859 0e7d 00       		.ascii	"\000"
 6860 0e7e 0000     		.space	2
 6861              	.LC182:
 6862 0e80 556E6B6E 		.ascii	"Unknown error.\000"
 6862      6F776E20 
 6862      6572726F 
 6862      722E00
 6863 0e8f 00       		.space	1
 6864              	.LC183:
 6865 0e90 4F4B2074 		.ascii	"OK to send data.\000"
 6865      6F207365 
 6865      6E642064 
 6865      6174612E 
 6865      00
 6866 0ea1 000000   		.space	3
 6867              	.LC184:
 6868 0ea4 4661696C 		.ascii	"Failed to open file.\000"
 6868      65642074 
 6868      6F206F70 
 6868      656E2066 
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 130


 6868      696C652E 
 6869 0eb9 000000   		.space	3
 6870              	.LC185:
 6871 0ebc 31353020 		.ascii	"150 Opening data connection for %s (%lu bytes).\015"
 6871      4F70656E 
 6871      696E6720 
 6871      64617461 
 6871      20636F6E 
 6872 0eec 0A00     		.ascii	"\012\000"
 6873 0eee 0000     		.space	2
 6874              	.LC186:
 6875 0ef0 41424F52 		.ascii	"ABOR\000"
 6875      00
 6876 0ef5 000000   		.space	3
 6877              	.LC187:
 6878 0ef8 41424F52 		.ascii	"ABOR successful.\000"
 6878      20737563 
 6878      63657373 
 6878      66756C2E 
 6878      00
 6879 0f09 000000   		.space	3
 6880              	.LC188:
 6881 0f0c 55736520 		.ascii	"Use PASV first.\000"
 6881      50415356 
 6881      20666972 
 6881      73742E00 
 6882              	.LC189:
 6883 0f1c 44454C45 		.ascii	"DELE\000"
 6883      00
 6884 0f21 000000   		.space	3
 6885              	.LC190:
 6886 0f24 57656273 		.ascii	"Webserver: Buffer overflow in FTP server!\012\000"
 6886      65727665 
 6886      723A2042 
 6886      75666665 
 6886      72206F76 
 6887 0f4f 00       		.space	1
 6888              	.LC191:
 6889 0f50 46747049 		.ascii	"FtpInterpreter::ProcessLine called with state %d:\012"
 6889      6E746572 
 6889      70726574 
 6889      65723A3A 
 6889      50726F63 
 6890 0f82 25730A00 		.ascii	"%s\012\000"
 6891 0f86 0000     		.space	2
 6892              	.LC192:
 6893 0f88 46747049 		.ascii	"FtpInterpreter::ProcessLine call finished.\012\000"
 6893      6E746572 
 6893      70726574 
 6893      65723A3A 
 6893      50726F63 
 6894              	.LC193:
 6895 0fb4 4C6F6720 		.ascii	"Log in successful!\015\012\000"
 6895      696E2073 
 6895      75636365 
 6895      73736675 
 6895      6C210D0A 
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 131


 6896 0fc9 000000   		.space	3
 6897              	.LC194:
 6898 0fcc 496E7661 		.ascii	"Invalid password.\015\012> \000"
 6898      6C696420 
 6898      70617373 
 6898      776F7264 
 6898      2E0D0A3E 
 6899 0fe2 0000     		.space	2
 6900              	.LC195:
 6901 0fe4 65786974 		.ascii	"exit\000"
 6901      00
 6902 0fe9 000000   		.space	3
 6903              	.LC196:
 6904 0fec 71756974 		.ascii	"quit\000"
 6904      00
 6905 0ff1 000000   		.space	3
 6906              	.LC197:
 6907 0ff4 476F6F64 		.ascii	"Goodbye.\015\012\000"
 6907      6279652E 
 6907      0D0A00
 6908 0fff 00       		.space	1
 6909              	.LC198:
 6910 1000 57656273 		.ascii	"Webserver: Buffer overflow in Telnet server!\012\000"
 6910      65727665 
 6910      723A2042 
 6910      75666665 
 6910      72206F76 
 6911 102e 0000     		.space	2
 6912              	.LC199:
 6913 1030 72656C65 		.ascii	"released\000"
 6913      61736564 
 6913      00
 6914 1039 000000   		.space	3
 6915              	.LC200:
 6916 103c 636F6E6E 		.ascii	"connected\000"
 6916      65637465 
 6916      6400
 6917 1046 0000     		.space	2
 6918              	.LC201:
 6919 1048 72656365 		.ascii	"receiving\000"
 6919      6976696E 
 6919      6700
 6920 1052 0000     		.space	2
 6921              	.LC202:
 6922 1054 73656E64 		.ascii	"sending\000"
 6922      696E6700 
 6923              	.LC203:
 6924 105c 64697363 		.ascii	"disconnected\000"
 6924      6F6E6E65 
 6924      63746564 
 6924      00
 6925 1069 000000   		.space	3
 6926              	.LC204:
 6927 106c 64656665 		.ascii	"deferred\000"
 6927      72726564 
 6927      00
 6928 1075 000000   		.space	3
ARM GAS  C:\Users\George\AppData\Local\Temp\cclTmfMQ.s 			page 132


 6929              	.LC205:
 6930 1078 61637175 		.ascii	"acquired\000"
 6930      69726564 
 6930      00
 6931 1081 000000   		.space	3
 6932              	.LC206:
 6933 1084 62616420 		.ascii	"bad escape\000"
 6933      65736361 
 6933      706500
 6934 108f 00       		.space	1
 6935              	.LC207:
 6936 1090 6F766572 		.ascii	"overflow\000"
 6936      666C6F77 
 6936      00
 6937 1099 000000   		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 6938              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 6939              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 6940              	_ZL28cpu_irq_prev_interrupt_state:
 6941 0000 00       		.space	1
 6942              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 6943              		.align	2
 6944              		.type	_ZL32cpu_irq_critical_section_counter, %object
 6945              		.size	_ZL32cpu_irq_critical_section_counter, 4
 6946              	_ZL32cpu_irq_critical_section_counter:
 6947 0000 00000000 		.space	4
 6948              		.section	.rodata._ZTV19ProtocolInterpreter,"a",%progbits
 6949              		.align	3
 6950              		.set	.LANCHOR0,. + 0
 6951              		.type	_ZTV19ProtocolInterpreter, %object
 6952              		.size	_ZTV19ProtocolInterpreter, 52
 6953              	_ZTV19ProtocolInterpreter:
 6954 0000 00000000 		.word	0
 6955 0004 00000000 		.word	0
 6956 0008 00000000 		.word	_ZN19ProtocolInterpreterD1Ev
 6957 000c 00000000 		.word	_ZN19ProtocolInterpreterD0Ev
 6958 0010 00000000 		.word	__cxa_pure_virtual
 6959 0014 00000000 		.word	_ZN19ProtocolInterpreter4SpinEv
 6960 0018 00000000 		.word	_ZN19ProtocolInterpreter21ConnectionEstablishedEv
 6961 001c 00000000 		.word	_ZN19ProtocolInterpreter14ConnectionLostEP15ConnectionState
 6962 0020 00000000 		.word	_ZN19ProtocolInterpreter12CanParseDataEv
 6963 0024 00000000 		.word	__cxa_pure_virtual
 6964 0028 00000000 		.word	_ZN19ProtocolInterpreter19NoMoreDataAvailableEv
 6965 002c 00000000 		.word	_ZNK19ProtocolInterpreter15DoingFastUploadEv
 6966 0030 00000000 		.word	_ZN19ProtocolInterpreter12DoFastUploadEv
 6967 0034 00000000 		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
