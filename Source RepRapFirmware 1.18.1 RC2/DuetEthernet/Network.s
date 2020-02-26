ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccS7uiHC.s 			page 1


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
  15              		.file	"Network.cpp"
  16              		.section	.text._ZN7Network4StopEv.part.12,"ax",%progbits
  17              		.align	2
  18              		.thumb
  19              		.thumb_func
  20              		.type	_ZN7Network4StopEv.part.12, %function
  21              	_ZN7Network4StopEv.part.12:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 90F8CD30 		ldrb	r3, [r0, #205]	@ zero_extendqisi2
  25 0004 10B5     		push	{r4, lr}
  26 0006 0446     		mov	r4, r0
  27 0008 3BB9     		cbnz	r3, .L7
  28              	.L2:
  29 000a 6420     		movs	r0, #100
  30 000c 0021     		movs	r1, #0
  31 000e FFF7FEFF 		bl	digitalWrite
  32 0012 0023     		movs	r3, #0
  33 0014 C4F8C830 		str	r3, [r4, #200]
  34 0018 10BD     		pop	{r4, pc}
  35              	.L7:
  36 001a FFF7FEFF 		bl	_Z9DHCP_stopv
  37 001e F4E7     		b	.L2
  38              		.size	_ZN7Network4StopEv.part.12, .-_ZN7Network4StopEv.part.12
  39              		.section	.text._ZN7Network12SetIPAddressEPKhS1_S1_,"ax",%progbits
  40              		.align	2
  41              		.global	_ZN7Network12SetIPAddressEPKhS1_S1_
  42              		.thumb
  43              		.thumb_func
  44              		.type	_ZN7Network12SetIPAddressEPKhS1_S1_, %function
  45              	_ZN7Network12SetIPAddressEPKhS1_S1_:
  46              		@ args = 0, pretend = 0, frame = 0
  47              		@ frame_needed = 0, uses_anonymous_args = 0
  48              		@ link register save eliminated.
  49 0000 0968     		ldr	r1, [r1]	@ unaligned
  50 0002 C0F8CE10 		str	r1, [r0, #206]	@ unaligned
  51 0006 1268     		ldr	r2, [r2]	@ unaligned
  52 0008 C0F8D220 		str	r2, [r0, #210]	@ unaligned
  53 000c 1B68     		ldr	r3, [r3]	@ unaligned
  54 000e C0F8D630 		str	r3, [r0, #214]	@ unaligned
  55 0012 7047     		bx	lr
  56              		.size	_ZN7Network12SetIPAddressEPKhS1_S1_, .-_ZN7Network12SetIPAddressEPKhS1_S1_
  57              		.section	.text._ZN7NetworkC2EP8Platform,"ax",%progbits
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccS7uiHC.s 			page 2


  58              		.align	2
  59              		.global	_ZN7NetworkC2EP8Platform
  60              		.thumb
  61              		.thumb_func
  62              		.type	_ZN7NetworkC2EP8Platform, %function
  63              	_ZN7NetworkC2EP8Platform:
  64              		@ args = 0, pretend = 0, frame = 0
  65              		@ frame_needed = 0, uses_anonymous_args = 0
  66 0000 0023     		movs	r3, #0
  67 0002 70B5     		push	{r4, r5, r6, lr}
  68 0004 0546     		mov	r5, r0
  69 0006 0160     		str	r1, [r0]
  70 0008 8360     		str	r3, [r0, #8]
  71 000a 00F10C04 		add	r4, r0, #12
  72 000e 00F1B406 		add	r6, r0, #180
  73              	.L11:
  74 0012 2046     		mov	r0, r4
  75 0014 1834     		adds	r4, r4, #24
  76 0016 FFF7FEFF 		bl	_ZN6SocketC1Ev
  77 001a B442     		cmp	r4, r6
  78 001c F9D1     		bne	.L11
  79 001e 0023     		movs	r3, #0
  80 0020 5024     		movs	r4, #80
  81 0022 0120     		movs	r0, #1
  82 0024 1521     		movs	r1, #21
  83 0026 1722     		movs	r2, #23
  84 0028 85F8C200 		strb	r0, [r5, #194]
  85 002c C5F8C830 		str	r3, [r5, #200]
  86 0030 85F8CC30 		strb	r3, [r5, #204]
  87 0034 85F8C330 		strb	r3, [r5, #195]
  88 0038 85F8C430 		strb	r3, [r5, #196]
  89 003c A5F8BC40 		strh	r4, [r5, #188]	@ movhi
  90 0040 A5F8BE10 		strh	r1, [r5, #190]	@ movhi
  91 0044 A5F8C020 		strh	r2, [r5, #192]	@ movhi
  92 0048 2846     		mov	r0, r5
  93 004a 70BD     		pop	{r4, r5, r6, pc}
  94              		.size	_ZN7NetworkC2EP8Platform, .-_ZN7NetworkC2EP8Platform
  95              		.global	_ZN7NetworkC1EP8Platform
  96              		.thumb_set _ZN7NetworkC1EP8Platform,_ZN7NetworkC2EP8Platform
  97              		.section	.text._ZN7Network4InitEv,"ax",%progbits
  98              		.align	2
  99              		.global	_ZN7Network4InitEv
 100              		.thumb
 101              		.thumb_func
 102              		.type	_ZN7Network4InitEv, %function
 103              	_ZN7Network4InitEv:
 104              		@ args = 0, pretend = 0, frame = 0
 105              		@ frame_needed = 0, uses_anonymous_args = 0
 106 0000 10B5     		push	{r4, lr}
 107 0002 0321     		movs	r1, #3
 108 0004 0446     		mov	r4, r0
 109 0006 0022     		movs	r2, #0
 110 0008 6420     		movs	r0, #100
 111 000a FFF7FEFF 		bl	pinModeDuet
 112 000e 0023     		movs	r3, #0
 113 0010 C4F8C830 		str	r3, [r4, #200]
 114 0014 2068     		ldr	r0, [r4]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccS7uiHC.s 			page 3


 115 0016 FFF7FEFF 		bl	_ZN8Platform4TimeEv
 116 001a 6060     		str	r0, [r4, #4]	@ float
 117 001c FFF7FEFF 		bl	millis
 118 0020 A060     		str	r0, [r4, #8]
 119 0022 1020     		movs	r0, #16
 120 0024 FFF7FEFF 		bl	_ZN13NetworkBuffer15AllocateBuffersEj
 121 0028 0820     		movs	r0, #8
 122 002a FFF7FEFF 		bl	_ZN18NetworkTransaction20AllocateTransactionsEj
 123 002e 2046     		mov	r0, r4
 124 0030 064B     		ldr	r3, .L13
 125 0032 0749     		ldr	r1, .L13+4
 126 0034 074A     		ldr	r2, .L13+8
 127 0036 FFF7FEFF 		bl	_ZN7Network12SetIPAddressEPKhS1_S1_
 128 003a 074B     		ldr	r3, .L13+12
 129 003c 1868     		ldr	r0, [r3]	@ unaligned
 130 003e 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 131 0040 C4F8DA00 		str	r0, [r4, #218]	@ unaligned
 132 0044 84F8DE30 		strb	r3, [r4, #222]
 133 0048 10BD     		pop	{r4, pc}
 134              	.L14:
 135 004a 00BF     		.align	2
 136              	.L13:
 137 004c 00000000 		.word	.LANCHOR2
 138 0050 00000000 		.word	.LANCHOR0
 139 0054 00000000 		.word	.LANCHOR1
 140 0058 00000000 		.word	.LC0
 141              		.size	_ZN7Network4InitEv, .-_ZN7Network4InitEv
 142              		.section	.text._ZN7Network13StartProtocolEj,"ax",%progbits
 143              		.align	2
 144              		.global	_ZN7Network13StartProtocolEj
 145              		.thumb
 146              		.thumb_func
 147              		.type	_ZN7Network13StartProtocolEj, %function
 148              	_ZN7Network13StartProtocolEj:
 149              		@ args = 0, pretend = 0, frame = 0
 150              		@ frame_needed = 0, uses_anonymous_args = 0
 151 0000 0129     		cmp	r1, #1
 152 0002 70B5     		push	{r4, r5, r6, lr}
 153 0004 0546     		mov	r5, r0
 154 0006 1AD0     		beq	.L17
 155 0008 0AD3     		bcc	.L18
 156 000a 0229     		cmp	r1, #2
 157 000c 07D1     		bne	.L24
 158 000e B5F8C020 		ldrh	r2, [r5, #192]
 159 0012 9C30     		adds	r0, r0, #156
 160 0014 0621     		movs	r1, #6
 161 0016 BDE87040 		pop	{r4, r5, r6, lr}
 162 001a FFF7FEBF 		b	_ZN6Socket4InitEht
 163              	.L24:
 164 001e 70BD     		pop	{r4, r5, r6, pc}
 165              	.L18:
 166 0020 00F10C06 		add	r6, r0, #12
 167 0024 0024     		movs	r4, #0
 168              	.L20:
 169 0026 3046     		mov	r0, r6
 170 0028 E1B2     		uxtb	r1, r4
 171 002a B5F8BC20 		ldrh	r2, [r5, #188]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccS7uiHC.s 			page 4


 172 002e 0134     		adds	r4, r4, #1
 173 0030 FFF7FEFF 		bl	_ZN6Socket4InitEht
 174 0034 042C     		cmp	r4, #4
 175 0036 06F11806 		add	r6, r6, #24
 176 003a F4D1     		bne	.L20
 177 003c 70BD     		pop	{r4, r5, r6, pc}
 178              	.L17:
 179 003e B5F8BE20 		ldrh	r2, [r5, #190]
 180 0042 6C30     		adds	r0, r0, #108
 181 0044 0421     		movs	r1, #4
 182 0046 BDE87040 		pop	{r4, r5, r6, lr}
 183 004a FFF7FEBF 		b	_ZN6Socket4InitEht
 184              		.size	_ZN7Network13StartProtocolEj, .-_ZN7Network13StartProtocolEj
 185 004e 00BF     		.section	.text._ZN7Network16ShutdownProtocolEj,"ax",%progbits
 186              		.align	2
 187              		.global	_ZN7Network16ShutdownProtocolEj
 188              		.thumb
 189              		.thumb_func
 190              		.type	_ZN7Network16ShutdownProtocolEj, %function
 191              	_ZN7Network16ShutdownProtocolEj:
 192              		@ args = 0, pretend = 0, frame = 0
 193              		@ frame_needed = 0, uses_anonymous_args = 0
 194 0000 0129     		cmp	r1, #1
 195 0002 10B5     		push	{r4, lr}
 196 0004 0446     		mov	r4, r0
 197 0006 19D0     		beq	.L27
 198 0008 07D3     		bcc	.L28
 199 000a 0229     		cmp	r1, #2
 200 000c 04D1     		bne	.L31
 201 000e 9C30     		adds	r0, r0, #156
 202 0010 BDE81040 		pop	{r4, lr}
 203 0014 FFF7FEBF 		b	_ZN6Socket19TerminateAndDisableEv
 204              	.L31:
 205 0018 10BD     		pop	{r4, pc}
 206              	.L28:
 207 001a 0C30     		adds	r0, r0, #12
 208 001c FFF7FEFF 		bl	_ZN6Socket19TerminateAndDisableEv
 209 0020 04F12400 		add	r0, r4, #36
 210 0024 FFF7FEFF 		bl	_ZN6Socket19TerminateAndDisableEv
 211 0028 04F13C00 		add	r0, r4, #60
 212 002c FFF7FEFF 		bl	_ZN6Socket19TerminateAndDisableEv
 213 0030 04F15400 		add	r0, r4, #84
 214 0034 BDE81040 		pop	{r4, lr}
 215 0038 FFF7FEBF 		b	_ZN6Socket19TerminateAndDisableEv
 216              	.L27:
 217 003c 6C30     		adds	r0, r0, #108
 218 003e FFF7FEFF 		bl	_ZN6Socket19TerminateAndDisableEv
 219 0042 04F18400 		add	r0, r4, #132
 220 0046 BDE81040 		pop	{r4, lr}
 221 004a FFF7FEBF 		b	_ZN6Socket19TerminateAndDisableEv
 222              		.size	_ZN7Network16ShutdownProtocolEj, .-_ZN7Network16ShutdownProtocolEj
 223 004e 00BF     		.section	.text._ZNK7Network17ReportOneProtocolEjR9StringRef,"ax",%progbits
 224              		.align	2
 225              		.global	_ZNK7Network17ReportOneProtocolEjR9StringRef
 226              		.thumb
 227              		.thumb_func
 228              		.type	_ZNK7Network17ReportOneProtocolEjR9StringRef, %function
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccS7uiHC.s 			page 5


 229              	_ZNK7Network17ReportOneProtocolEjR9StringRef:
 230              		@ args = 0, pretend = 0, frame = 0
 231              		@ frame_needed = 0, uses_anonymous_args = 0
 232              		@ link register save eliminated.
 233 0000 4318     		adds	r3, r0, r1
 234 0002 30B4     		push	{r4, r5}
 235 0004 93F8C230 		ldrb	r3, [r3, #194]	@ zero_extendqisi2
 236 0008 0C46     		mov	r4, r1
 237 000a 1546     		mov	r5, r2
 238 000c 3BB9     		cbnz	r3, .L34
 239 000e 0A4B     		ldr	r3, .L35
 240 0010 0A49     		ldr	r1, .L35+4
 241 0012 53F82420 		ldr	r2, [r3, r4, lsl #2]
 242 0016 2846     		mov	r0, r5
 243 0018 30BC     		pop	{r4, r5}
 244 001a FFF7FEBF 		b	_ZN9StringRef4catfEPKcz
 245              	.L34:
 246 001e 00EB4100 		add	r0, r0, r1, lsl #1
 247 0022 054A     		ldr	r2, .L35
 248 0024 B0F8BC30 		ldrh	r3, [r0, #188]
 249 0028 52F82120 		ldr	r2, [r2, r1, lsl #2]
 250 002c 0449     		ldr	r1, .L35+8
 251 002e 2846     		mov	r0, r5
 252 0030 30BC     		pop	{r4, r5}
 253 0032 FFF7FEBF 		b	_ZN9StringRef4catfEPKcz
 254              	.L36:
 255 0036 00BF     		.align	2
 256              	.L35:
 257 0038 00000000 		.word	.LANCHOR3
 258 003c 24000000 		.word	.LC2
 259 0040 08000000 		.word	.LC1
 260              		.size	_ZNK7Network17ReportOneProtocolEjR9StringRef, .-_ZNK7Network17ReportOneProtocolEjR9StringRef
 261              		.section	.text._ZN7Network14EnableProtocolEiiiR9StringRef,"ax",%progbits
 262              		.align	2
 263              		.global	_ZN7Network14EnableProtocolEiiiR9StringRef
 264              		.thumb
 265              		.thumb_func
 266              		.type	_ZN7Network14EnableProtocolEiiiR9StringRef, %function
 267              	_ZN7Network14EnableProtocolEiiiR9StringRef:
 268              		@ args = 4, pretend = 0, frame = 0
 269              		@ frame_needed = 0, uses_anonymous_args = 0
 270 0000 0133     		adds	r3, r3, #1
 271 0002 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 272 0006 012B     		cmp	r3, #1
 273 0008 0546     		mov	r5, r0
 274 000a 0C46     		mov	r4, r1
 275 000c 069E     		ldr	r6, [sp, #24]
 276 000e 28D8     		bhi	.L47
 277 0010 0229     		cmp	r1, #2
 278 0012 2CD8     		bhi	.L39
 279 0014 002A     		cmp	r2, #0
 280 0016 B8BF     		it	lt
 281 0018 1F4B     		ldrlt	r3, .L50
 282 001a 00EB4107 		add	r7, r0, r1, lsl #1
 283 001e B8BF     		it	lt
 284 0020 33F81180 		ldrhlt	r8, [r3, r1, lsl #1]
 285 0024 B7F8BC30 		ldrh	r3, [r7, #188]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccS7uiHC.s 			page 6


 286 0028 A8BF     		it	ge
 287 002a 1FFA82F8 		uxthge	r8, r2
 288 002e 4345     		cmp	r3, r8
 289 0030 03D0     		beq	.L45
 290 0032 D0F8C830 		ldr	r3, [r0, #200]
 291 0036 042B     		cmp	r3, #4
 292 0038 24D0     		beq	.L48
 293              	.L45:
 294 003a 2B19     		adds	r3, r5, r4
 295 003c 93F8C220 		ldrb	r2, [r3, #194]	@ zero_extendqisi2
 296 0040 A7F8BC80 		strh	r8, [r7, #188]	@ movhi
 297 0044 32B9     		cbnz	r2, .L46
 298              	.L44:
 299 0046 D5F8C820 		ldr	r2, [r5, #200]
 300 004a 0121     		movs	r1, #1
 301 004c 042A     		cmp	r2, #4
 302 004e 83F8C210 		strb	r1, [r3, #194]
 303 0052 12D0     		beq	.L49
 304              	.L46:
 305 0054 2846     		mov	r0, r5
 306 0056 2146     		mov	r1, r4
 307 0058 3246     		mov	r2, r6
 308 005a BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 309 005e FFF7FEBF 		b	_ZNK7Network17ReportOneProtocolEjR9StringRef
 310              	.L47:
 311 0062 3046     		mov	r0, r6
 312 0064 0D49     		ldr	r1, .L50+4
 313 0066 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 314 006a FFF7FEBF 		b	_ZN9StringRef4copyEPKc
 315              	.L39:
 316 006e 3046     		mov	r0, r6
 317 0070 0B49     		ldr	r1, .L50+8
 318 0072 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 319 0076 FFF7FEBF 		b	_ZN9StringRef4copyEPKc
 320              	.L49:
 321 007a 2846     		mov	r0, r5
 322 007c 2146     		mov	r1, r4
 323 007e FFF7FEFF 		bl	_ZN7Network13StartProtocolEj
 324 0082 E7E7     		b	.L46
 325              	.L48:
 326 0084 FFF7FEFF 		bl	_ZN7Network16ShutdownProtocolEj
 327 0088 2B19     		adds	r3, r5, r4
 328 008a 0022     		movs	r2, #0
 329 008c 83F8C220 		strb	r2, [r3, #194]
 330 0090 A7F8BC80 		strh	r8, [r7, #188]	@ movhi
 331 0094 D7E7     		b	.L44
 332              	.L51:
 333 0096 00BF     		.align	2
 334              	.L50:
 335 0098 00000000 		.word	.LANCHOR4
 336 009c 34000000 		.word	.LC3
 337 00a0 60000000 		.word	.LC4
 338              		.size	_ZN7Network14EnableProtocolEiiiR9StringRef, .-_ZN7Network14EnableProtocolEiiiR9StringRef
 339              		.section	.text._ZN7Network15DisableProtocolEiR9StringRef,"ax",%progbits
 340              		.align	2
 341              		.global	_ZN7Network15DisableProtocolEiR9StringRef
 342              		.thumb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccS7uiHC.s 			page 7


 343              		.thumb_func
 344              		.type	_ZN7Network15DisableProtocolEiR9StringRef, %function
 345              	_ZN7Network15DisableProtocolEiR9StringRef:
 346              		@ args = 0, pretend = 0, frame = 8
 347              		@ frame_needed = 0, uses_anonymous_args = 0
 348 0000 70B5     		push	{r4, r5, r6, lr}
 349 0002 0229     		cmp	r1, #2
 350 0004 82B0     		sub	sp, sp, #8
 351 0006 0C46     		mov	r4, r1
 352 0008 0546     		mov	r5, r0
 353 000a 0ED8     		bhi	.L53
 354 000c D0F8C830 		ldr	r3, [r0, #200]
 355 0010 042B     		cmp	r3, #4
 356 0012 11D0     		beq	.L55
 357              	.L54:
 358 0014 2B19     		adds	r3, r5, r4
 359 0016 0026     		movs	r6, #0
 360 0018 2846     		mov	r0, r5
 361 001a 2146     		mov	r1, r4
 362 001c 83F8C260 		strb	r6, [r3, #194]
 363 0020 02B0     		add	sp, sp, #8
 364              		@ sp needed
 365 0022 BDE87040 		pop	{r4, r5, r6, lr}
 366 0026 FFF7FEBF 		b	_ZNK7Network17ReportOneProtocolEjR9StringRef
 367              	.L53:
 368 002a 0649     		ldr	r1, .L56
 369 002c 1046     		mov	r0, r2
 370 002e 02B0     		add	sp, sp, #8
 371              		@ sp needed
 372 0030 BDE87040 		pop	{r4, r5, r6, lr}
 373 0034 FFF7FEBF 		b	_ZN9StringRef4copyEPKc
 374              	.L55:
 375 0038 0192     		str	r2, [sp, #4]
 376 003a FFF7FEFF 		bl	_ZN7Network16ShutdownProtocolEj
 377 003e 019A     		ldr	r2, [sp, #4]
 378 0040 E8E7     		b	.L54
 379              	.L57:
 380 0042 00BF     		.align	2
 381              	.L56:
 382 0044 60000000 		.word	.LC4
 383              		.size	_ZN7Network15DisableProtocolEiR9StringRef, .-_ZN7Network15DisableProtocolEiR9StringRef
 384              		.section	.text._ZNK7Network15ReportProtocolsER9StringRef,"ax",%progbits
 385              		.align	2
 386              		.global	_ZNK7Network15ReportProtocolsER9StringRef
 387              		.thumb
 388              		.thumb_func
 389              		.type	_ZNK7Network15ReportProtocolsER9StringRef, %function
 390              	_ZNK7Network15ReportProtocolsER9StringRef:
 391              		@ args = 0, pretend = 0, frame = 0
 392              		@ frame_needed = 0, uses_anonymous_args = 0
 393 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 394 0002 0B68     		ldr	r3, [r1]
 395 0004 0D46     		mov	r5, r1
 396 0006 0024     		movs	r4, #0
 397 0008 0746     		mov	r7, r0
 398 000a 1C70     		strb	r4, [r3]
 399 000c 0126     		movs	r6, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccS7uiHC.s 			page 8


 400 000e 2846     		mov	r0, r5
 401 0010 0A21     		movs	r1, #10
 402 0012 74B1     		cbz	r4, .L60
 403              	.L64:
 404 0014 FFF7FEFF 		bl	_ZN9StringRef3catEc
 405 0018 3846     		mov	r0, r7
 406 001a 2146     		mov	r1, r4
 407 001c 2A46     		mov	r2, r5
 408 001e FFF7FEFF 		bl	_ZNK7Network17ReportOneProtocolEjR9StringRef
 409 0022 032E     		cmp	r6, #3
 410 0024 0BD0     		beq	.L63
 411              	.L61:
 412 0026 0134     		adds	r4, r4, #1
 413 0028 0136     		adds	r6, r6, #1
 414 002a 2846     		mov	r0, r5
 415 002c 0A21     		movs	r1, #10
 416 002e 002C     		cmp	r4, #0
 417 0030 F0D1     		bne	.L64
 418              	.L60:
 419 0032 3846     		mov	r0, r7
 420 0034 2146     		mov	r1, r4
 421 0036 2A46     		mov	r2, r5
 422 0038 FFF7FEFF 		bl	_ZNK7Network17ReportOneProtocolEjR9StringRef
 423 003c F3E7     		b	.L61
 424              	.L63:
 425 003e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 426              		.size	_ZNK7Network15ReportProtocolsER9StringRef, .-_ZNK7Network15ReportProtocolsER9StringRef
 427              		.section	.text._ZN7Network4ExitEv,"ax",%progbits
 428              		.align	2
 429              		.global	_ZN7Network4ExitEv
 430              		.thumb
 431              		.thumb_func
 432              		.type	_ZN7Network4ExitEv, %function
 433              	_ZN7Network4ExitEv:
 434              		@ args = 0, pretend = 0, frame = 0
 435              		@ frame_needed = 0, uses_anonymous_args = 0
 436              		@ link register save eliminated.
 437 0000 D0F8C830 		ldr	r3, [r0, #200]
 438 0004 03B9     		cbnz	r3, .L67
 439 0006 7047     		bx	lr
 440              	.L67:
 441 0008 FFF7FEBF 		b	_ZN7Network4StopEv.part.12
 442              		.size	_ZN7Network4ExitEv, .-_ZN7Network4ExitEv
 443              		.section	.text._ZN7Network11DiagnosticsE11MessageType,"ax",%progbits
 444              		.align	2
 445              		.global	_ZN7Network11DiagnosticsE11MessageType
 446              		.thumb
 447              		.thumb_func
 448              		.type	_ZN7Network11DiagnosticsE11MessageType, %function
 449              	_ZN7Network11DiagnosticsE11MessageType:
 450              		@ args = 0, pretend = 0, frame = 0
 451              		@ frame_needed = 0, uses_anonymous_args = 0
 452 0000 70B5     		push	{r4, r5, r6, lr}
 453 0002 0446     		mov	r4, r0
 454 0004 0D46     		mov	r5, r1
 455 0006 0068     		ldr	r0, [r0]
 456 0008 054A     		ldr	r2, .L69
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccS7uiHC.s 			page 9


 457 000a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 458 000e 2946     		mov	r1, r5
 459 0010 2068     		ldr	r0, [r4]
 460 0012 D4F8C830 		ldr	r3, [r4, #200]
 461 0016 034A     		ldr	r2, .L69+4
 462 0018 BDE87040 		pop	{r4, r5, r6, lr}
 463 001c FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 464              	.L70:
 465              		.align	2
 466              	.L69:
 467 0020 7C000000 		.word	.LC5
 468 0024 90000000 		.word	.LC6
 469              		.size	_ZN7Network11DiagnosticsE11MessageType, .-_ZN7Network11DiagnosticsE11MessageType
 470              		.section	.text._ZN7Network5StartEv,"ax",%progbits
 471              		.align	2
 472              		.global	_ZN7Network5StartEv
 473              		.thumb
 474              		.thumb_func
 475              		.type	_ZN7Network5StartEv, %function
 476              	_ZN7Network5StartEv:
 477              		@ args = 0, pretend = 0, frame = 0
 478              		@ frame_needed = 0, uses_anonymous_args = 0
 479 0000 38B5     		push	{r3, r4, r5, lr}
 480 0002 0368     		ldr	r3, [r0]
 481 0004 03F19801 		add	r1, r3, #152
 482 0008 03F19C02 		add	r2, r3, #156
 483 000c A033     		adds	r3, r3, #160
 484 000e 0446     		mov	r4, r0
 485 0010 FFF7FEFF 		bl	_ZN7Network12SetIPAddressEPKhS1_S1_
 486 0014 6420     		movs	r0, #100
 487 0016 0321     		movs	r1, #3
 488 0018 0022     		movs	r2, #0
 489 001a FFF7FEFF 		bl	pinModeDuet
 490 001e 45F2F053 		movw	r3, #22000
 491              	@ 80 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\cores\arduino/wiring.h" 1
 492              		L_554_delayMicroseconds:
 493 0022 013B     		subs   r3, #1
 494 0024 7FF4FDAF 		bne    L_554_delayMicroseconds
 495              	
 496              	@ 0 "" 2
 497              		.thumb
 498 0028 0121     		movs	r1, #1
 499 002a 6420     		movs	r0, #100
 500 002c FFF7FEFF 		bl	digitalWrite
 501 0030 3720     		movs	r0, #55
 502 0032 FFF7FEFF 		bl	delay
 503 0036 1248     		ldr	r0, .L72
 504 0038 2546     		mov	r5, r4
 505 003a 0146     		mov	r1, r0
 506 003c FFF7FEFF 		bl	_Z12wizchip_initPKhS0_
 507 0040 55F8CE1B 		ldr	r1, [r5], #206
 508 0044 4FF41060 		mov	r0, #2304
 509 0048 A431     		adds	r1, r1, #164
 510 004a 0622     		movs	r2, #6
 511 004c FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 512 0050 2946     		mov	r1, r5
 513 0052 4FF47060 		mov	r0, #3840
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccS7uiHC.s 			page 10


 514 0056 0422     		movs	r2, #4
 515 0058 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 516 005c 04F1D601 		add	r1, r4, #214
 517 0060 4FF48070 		mov	r0, #256
 518 0064 0422     		movs	r2, #4
 519 0066 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 520 006a 04F1D201 		add	r1, r4, #210
 521 006e 4FF4A060 		mov	r0, #1280
 522 0072 0422     		movs	r2, #4
 523 0074 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 524 0078 0223     		movs	r3, #2
 525 007a C4F8C830 		str	r3, [r4, #200]
 526 007e 38BD     		pop	{r3, r4, r5, pc}
 527              	.L73:
 528              		.align	2
 529              	.L72:
 530 0080 00000000 		.word	.LANCHOR5
 531              		.size	_ZN7Network5StartEv, .-_ZN7Network5StartEv
 532              		.section	.text._ZN7Network8ActivateEv,"ax",%progbits
 533              		.align	2
 534              		.global	_ZN7Network8ActivateEv
 535              		.thumb
 536              		.thumb_func
 537              		.type	_ZN7Network8ActivateEv, %function
 538              	_ZN7Network8ActivateEv:
 539              		@ args = 0, pretend = 0, frame = 0
 540              		@ frame_needed = 0, uses_anonymous_args = 0
 541              		@ link register save eliminated.
 542 0000 D0F8C820 		ldr	r2, [r0, #200]
 543 0004 0121     		movs	r1, #1
 544 0006 8A42     		cmp	r2, r1
 545 0008 80F8CC10 		strb	r1, [r0, #204]
 546 000c 00D0     		beq	.L76
 547 000e 7047     		bx	lr
 548              	.L76:
 549 0010 FFF7FEBF 		b	_ZN7Network5StartEv
 550              		.size	_ZN7Network8ActivateEv, .-_ZN7Network8ActivateEv
 551              		.section	.text._ZN7Network4StopEv,"ax",%progbits
 552              		.align	2
 553              		.global	_ZN7Network4StopEv
 554              		.thumb
 555              		.thumb_func
 556              		.type	_ZN7Network4StopEv, %function
 557              	_ZN7Network4StopEv:
 558              		@ args = 0, pretend = 0, frame = 0
 559              		@ frame_needed = 0, uses_anonymous_args = 0
 560              		@ link register save eliminated.
 561 0000 D0F8C830 		ldr	r3, [r0, #200]
 562 0004 0BB1     		cbz	r3, .L77
 563 0006 FFF7FEBF 		b	_ZN7Network4StopEv.part.12
 564              	.L77:
 565 000a 7047     		bx	lr
 566              		.size	_ZN7Network4StopEv, .-_ZN7Network4StopEv
 567              		.section	.text._ZN7Network6EnableEv,"ax",%progbits
 568              		.align	2
 569              		.global	_ZN7Network6EnableEv
 570              		.thumb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccS7uiHC.s 			page 11


 571              		.thumb_func
 572              		.type	_ZN7Network6EnableEv, %function
 573              	_ZN7Network6EnableEv:
 574              		@ args = 0, pretend = 0, frame = 0
 575              		@ frame_needed = 0, uses_anonymous_args = 0
 576              		@ link register save eliminated.
 577 0000 D0F8C820 		ldr	r2, [r0, #200]
 578 0004 2AB9     		cbnz	r2, .L79
 579 0006 90F8CC20 		ldrb	r2, [r0, #204]	@ zero_extendqisi2
 580 000a 0121     		movs	r1, #1
 581 000c C0F8C810 		str	r1, [r0, #200]
 582 0010 02B9     		cbnz	r2, .L86
 583              	.L79:
 584 0012 7047     		bx	lr
 585              	.L86:
 586 0014 FFF7FEBF 		b	_ZN7Network5StartEv
 587              		.size	_ZN7Network6EnableEv, .-_ZN7Network6EnableEv
 588              		.section	.text._ZN7Network7DisableEv,"ax",%progbits
 589              		.align	2
 590              		.global	_ZN7Network7DisableEv
 591              		.thumb
 592              		.thumb_func
 593              		.type	_ZN7Network7DisableEv, %function
 594              	_ZN7Network7DisableEv:
 595              		@ args = 0, pretend = 0, frame = 0
 596              		@ frame_needed = 0, uses_anonymous_args = 0
 597 0000 90F8CC30 		ldrb	r3, [r0, #204]	@ zero_extendqisi2
 598 0004 10B5     		push	{r4, lr}
 599 0006 0446     		mov	r4, r0
 600 0008 5BB1     		cbz	r3, .L87
 601 000a D0F8C830 		ldr	r3, [r0, #200]
 602 000e 43B1     		cbz	r3, .L87
 603 0010 FFF7FEFF 		bl	_ZN7Network4StopEv.part.12
 604 0014 2068     		ldr	r0, [r4]
 605 0016 034A     		ldr	r2, .L95
 606 0018 0621     		movs	r1, #6
 607 001a BDE81040 		pop	{r4, lr}
 608 001e FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 609              	.L87:
 610 0022 10BD     		pop	{r4, pc}
 611              	.L96:
 612              		.align	2
 613              	.L95:
 614 0024 9C000000 		.word	.LC7
 615              		.size	_ZN7Network7DisableEv, .-_ZN7Network7DisableEv
 616              		.section	.text._ZNK7Network9IsEnabledEv,"ax",%progbits
 617              		.align	2
 618              		.global	_ZNK7Network9IsEnabledEv
 619              		.thumb
 620              		.thumb_func
 621              		.type	_ZNK7Network9IsEnabledEv, %function
 622              	_ZNK7Network9IsEnabledEv:
 623              		@ args = 0, pretend = 0, frame = 0
 624              		@ frame_needed = 0, uses_anonymous_args = 0
 625              		@ link register save eliminated.
 626 0000 D0F8C800 		ldr	r0, [r0, #200]
 627 0004 0030     		adds	r0, r0, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccS7uiHC.s 			page 12


 628 0006 18BF     		it	ne
 629 0008 0120     		movne	r0, #1
 630 000a 7047     		bx	lr
 631              		.size	_ZNK7Network9IsEnabledEv, .-_ZNK7Network9IsEnabledEv
 632              		.section	.text._ZNK7Network12GetIPAddressEv,"ax",%progbits
 633              		.align	2
 634              		.global	_ZNK7Network12GetIPAddressEv
 635              		.thumb
 636              		.thumb_func
 637              		.type	_ZNK7Network12GetIPAddressEv, %function
 638              	_ZNK7Network12GetIPAddressEv:
 639              		@ args = 0, pretend = 0, frame = 0
 640              		@ frame_needed = 0, uses_anonymous_args = 0
 641              		@ link register save eliminated.
 642 0000 CE30     		adds	r0, r0, #206
 643 0002 7047     		bx	lr
 644              		.size	_ZNK7Network12GetIPAddressEv, .-_ZNK7Network12GetIPAddressEv
 645              		.section	.text._ZN7Network11SetHostnameEPKc,"ax",%progbits
 646              		.align	2
 647              		.global	_ZN7Network11SetHostnameEPKc
 648              		.thumb
 649              		.thumb_func
 650              		.type	_ZN7Network11SetHostnameEPKc, %function
 651              	_ZN7Network11SetHostnameEPKc:
 652              		@ args = 0, pretend = 0, frame = 0
 653              		@ frame_needed = 0, uses_anonymous_args = 0
 654              		@ link register save eliminated.
 655 0000 F0B4     		push	{r4, r5, r6, r7}
 656 0002 0139     		subs	r1, r1, #1
 657 0004 0746     		mov	r7, r0
 658 0006 0022     		movs	r2, #0
 659              	.L100:
 660 0008 11F8013F 		ldrb	r3, [r1, #1]!	@ zero_extendqisi2
 661 000c BD18     		adds	r5, r7, r2
 662 000e A3F14104 		sub	r4, r3, #65
 663 0012 03F12006 		add	r6, r3, #32
 664 0016 A3B1     		cbz	r3, .L104
 665 0018 0E2A     		cmp	r2, #14
 666 001a 13D8     		bhi	.L107
 667 001c 192C     		cmp	r4, #25
 668 001e 98BF     		it	ls
 669 0020 F3B2     		uxtbls	r3, r6
 670 0022 A3F16104 		sub	r4, r3, #97
 671 0026 192C     		cmp	r4, #25
 672 0028 A3F13006 		sub	r6, r3, #48
 673 002c 05D9     		bls	.L102
 674 002e 092E     		cmp	r6, #9
 675 0030 03D9     		bls	.L102
 676 0032 2D2B     		cmp	r3, #45
 677 0034 01D0     		beq	.L102
 678 0036 5F2B     		cmp	r3, #95
 679 0038 E6D1     		bne	.L100
 680              	.L102:
 681 003a 85F8DA30 		strb	r3, [r5, #218]
 682 003e 0132     		adds	r2, r2, #1
 683 0040 E2E7     		b	.L100
 684              	.L104:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccS7uiHC.s 			page 13


 685 0042 2AB1     		cbz	r2, .L111
 686              	.L107:
 687 0044 3A44     		add	r2, r2, r7
 688 0046 0023     		movs	r3, #0
 689 0048 82F8DA30 		strb	r3, [r2, #218]
 690 004c F0BC     		pop	{r4, r5, r6, r7}
 691 004e 7047     		bx	lr
 692              	.L111:
 693 0050 044B     		ldr	r3, .L112
 694 0052 1868     		ldr	r0, [r3]	@ unaligned
 695 0054 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 696 0056 C7F8DA00 		str	r0, [r7, #218]	@ unaligned
 697 005a 87F8DE30 		strb	r3, [r7, #222]
 698 005e F0BC     		pop	{r4, r5, r6, r7}
 699 0060 7047     		bx	lr
 700              	.L113:
 701 0062 00BF     		.align	2
 702              	.L112:
 703 0064 00000000 		.word	.LC0
 704              		.size	_ZN7Network11SetHostnameEPKc, .-_ZN7Network11SetHostnameEPKc
 705              		.section	.text._ZN7Network4LockEv,"ax",%progbits
 706              		.align	2
 707              		.global	_ZN7Network4LockEv
 708              		.thumb
 709              		.thumb_func
 710              		.type	_ZN7Network4LockEv, %function
 711              	_ZN7Network4LockEv:
 712              		@ args = 0, pretend = 0, frame = 0
 713              		@ frame_needed = 0, uses_anonymous_args = 0
 714              		@ link register save eliminated.
 715 0000 0120     		movs	r0, #1
 716 0002 7047     		bx	lr
 717              		.size	_ZN7Network4LockEv, .-_ZN7Network4LockEv
 718              		.section	.text._ZN7Network6UnlockEv,"ax",%progbits
 719              		.align	2
 720              		.global	_ZN7Network6UnlockEv
 721              		.thumb
 722              		.thumb_func
 723              		.type	_ZN7Network6UnlockEv, %function
 724              	_ZN7Network6UnlockEv:
 725              		@ args = 0, pretend = 0, frame = 0
 726              		@ frame_needed = 0, uses_anonymous_args = 0
 727              		@ link register save eliminated.
 728 0000 7047     		bx	lr
 729              		.size	_ZN7Network6UnlockEv, .-_ZN7Network6UnlockEv
 730 0002 00BF     		.section	.text._ZNK7Network6InLwipEv,"ax",%progbits
 731              		.align	2
 732              		.global	_ZNK7Network6InLwipEv
 733              		.thumb
 734              		.thumb_func
 735              		.type	_ZNK7Network6InLwipEv, %function
 736              	_ZNK7Network6InLwipEv:
 737              		@ args = 0, pretend = 0, frame = 0
 738              		@ frame_needed = 0, uses_anonymous_args = 0
 739              		@ link register save eliminated.
 740 0000 0020     		movs	r0, #0
 741 0002 7047     		bx	lr
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccS7uiHC.s 			page 14


 742              		.size	_ZNK7Network6InLwipEv, .-_ZNK7Network6InLwipEv
 743              		.section	.text._ZN7Network14GetTransactionEP6Socket,"ax",%progbits
 744              		.align	2
 745              		.global	_ZN7Network14GetTransactionEP6Socket
 746              		.thumb
 747              		.thumb_func
 748              		.type	_ZN7Network14GetTransactionEP6Socket, %function
 749              	_ZN7Network14GetTransactionEP6Socket:
 750              		@ args = 0, pretend = 0, frame = 0
 751              		@ frame_needed = 0, uses_anonymous_args = 0
 752 0000 D0F8C830 		ldr	r3, [r0, #200]
 753 0004 042B     		cmp	r3, #4
 754 0006 70B5     		push	{r4, r5, r6, lr}
 755 0008 0646     		mov	r6, r0
 756 000a 0C46     		mov	r4, r1
 757 000c 0BD1     		bne	.L121
 758 000e 69B1     		cbz	r1, .L120
 759 0010 8D68     		ldr	r5, [r1, #8]
 760 0012 45B1     		cbz	r5, .L121
 761 0014 2846     		mov	r0, r5
 762 0016 FFF7FEFF 		bl	_ZNK18NetworkTransaction9IsSendingEv
 763 001a 20B9     		cbnz	r0, .L121
 764 001c A37C     		ldrb	r3, [r4, #18]	@ zero_extendqisi2
 765 001e C6F8B830 		str	r3, [r6, #184]
 766 0022 2846     		mov	r0, r5
 767 0024 70BD     		pop	{r4, r5, r6, pc}
 768              	.L121:
 769 0026 0025     		movs	r5, #0
 770              	.L137:
 771 0028 2846     		mov	r0, r5
 772 002a 70BD     		pop	{r4, r5, r6, pc}
 773              	.L120:
 774 002c D0F8B820 		ldr	r2, [r0, #184]
 775 0030 1446     		mov	r4, r2
 776 0032 07E0     		b	.L126
 777              	.L140:
 778 0034 D6F8B820 		ldr	r2, [r6, #184]
 779              	.L123:
 780 0038 0134     		adds	r4, r4, #1
 781 003a 072C     		cmp	r4, #7
 782 003c 08BF     		it	eq
 783 003e 0024     		moveq	r4, #0
 784 0040 A242     		cmp	r2, r4
 785 0042 F0D0     		beq	.L121
 786              	.L126:
 787 0044 04EB4403 		add	r3, r4, r4, lsl #1
 788 0048 06EBC303 		add	r3, r6, r3, lsl #3
 789 004c 5D69     		ldr	r5, [r3, #20]
 790 004e 2846     		mov	r0, r5
 791 0050 002D     		cmp	r5, #0
 792 0052 F1D0     		beq	.L123
 793 0054 FFF7FEFF 		bl	_ZNK18NetworkTransaction9IsSendingEv
 794 0058 0028     		cmp	r0, #0
 795 005a EBD1     		bne	.L140
 796 005c C6F8B840 		str	r4, [r6, #184]
 797 0060 E2E7     		b	.L137
 798              		.size	_ZN7Network14GetTransactionEP6Socket, .-_ZN7Network14GetTransactionEP6Socket
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccS7uiHC.s 			page 15


 799 0062 00BF     		.section	.text._ZNK7Network11GetHttpPortEv,"ax",%progbits
 800              		.align	2
 801              		.global	_ZNK7Network11GetHttpPortEv
 802              		.thumb
 803              		.thumb_func
 804              		.type	_ZNK7Network11GetHttpPortEv, %function
 805              	_ZNK7Network11GetHttpPortEv:
 806              		@ args = 0, pretend = 0, frame = 0
 807              		@ frame_needed = 0, uses_anonymous_args = 0
 808              		@ link register save eliminated.
 809 0000 B0F8BC00 		ldrh	r0, [r0, #188]
 810 0004 7047     		bx	lr
 811              		.size	_ZNK7Network11GetHttpPortEv, .-_ZNK7Network11GetHttpPortEv
 812 0006 00BF     		.section	.text._ZNK7Network10GetFtpPortEv,"ax",%progbits
 813              		.align	2
 814              		.global	_ZNK7Network10GetFtpPortEv
 815              		.thumb
 816              		.thumb_func
 817              		.type	_ZNK7Network10GetFtpPortEv, %function
 818              	_ZNK7Network10GetFtpPortEv:
 819              		@ args = 0, pretend = 0, frame = 0
 820              		@ frame_needed = 0, uses_anonymous_args = 0
 821              		@ link register save eliminated.
 822 0000 B0F8BE00 		ldrh	r0, [r0, #190]
 823 0004 7047     		bx	lr
 824              		.size	_ZNK7Network10GetFtpPortEv, .-_ZNK7Network10GetFtpPortEv
 825 0006 00BF     		.section	.text._ZNK7Network13GetTelnetPortEv,"ax",%progbits
 826              		.align	2
 827              		.global	_ZNK7Network13GetTelnetPortEv
 828              		.thumb
 829              		.thumb_func
 830              		.type	_ZNK7Network13GetTelnetPortEv, %function
 831              	_ZNK7Network13GetTelnetPortEv:
 832              		@ args = 0, pretend = 0, frame = 0
 833              		@ frame_needed = 0, uses_anonymous_args = 0
 834              		@ link register save eliminated.
 835 0000 B0F8C000 		ldrh	r0, [r0, #192]
 836 0004 7047     		bx	lr
 837              		.size	_ZNK7Network13GetTelnetPortEv, .-_ZNK7Network13GetTelnetPortEv
 838 0006 00BF     		.section	.text._ZNK7Network11GetDataPortEv,"ax",%progbits
 839              		.align	2
 840              		.global	_ZNK7Network11GetDataPortEv
 841              		.thumb
 842              		.thumb_func
 843              		.type	_ZNK7Network11GetDataPortEv, %function
 844              	_ZNK7Network11GetDataPortEv:
 845              		@ args = 0, pretend = 0, frame = 0
 846              		@ frame_needed = 0, uses_anonymous_args = 0
 847              		@ link register save eliminated.
 848 0000 B0F88400 		ldrh	r0, [r0, #132]
 849 0004 7047     		bx	lr
 850              		.size	_ZNK7Network11GetDataPortEv, .-_ZNK7Network11GetDataPortEv
 851 0006 00BF     		.section	.text._ZN7Network12OpenDataPortEt,"ax",%progbits
 852              		.align	2
 853              		.global	_ZN7Network12OpenDataPortEt
 854              		.thumb
 855              		.thumb_func
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccS7uiHC.s 			page 16


 856              		.type	_ZN7Network12OpenDataPortEt, %function
 857              	_ZN7Network12OpenDataPortEt:
 858              		@ args = 0, pretend = 0, frame = 0
 859              		@ frame_needed = 0, uses_anonymous_args = 0
 860 0000 10B5     		push	{r4, lr}
 861 0002 00F18404 		add	r4, r0, #132
 862 0006 0A46     		mov	r2, r1
 863 0008 2046     		mov	r0, r4
 864 000a 0521     		movs	r1, #5
 865 000c FFF7FEFF 		bl	_ZN6Socket4InitEht
 866 0010 4FF47A63 		mov	r3, #4000
 867              	@ 80 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\cores\arduino/wiring.h" 1
 868              		L_964_delayMicroseconds:
 869 0014 013B     		subs   r3, #1
 870 0016 7FF4FDAF 		bne    L_964_delayMicroseconds
 871              	
 872              	@ 0 "" 2
 873              		.thumb
 874 001a 0121     		movs	r1, #1
 875 001c 2046     		mov	r0, r4
 876 001e BDE81040 		pop	{r4, lr}
 877 0022 FFF7FEBF 		b	_ZN6Socket4PollEb
 878              		.size	_ZN7Network12OpenDataPortEt, .-_ZN7Network12OpenDataPortEt
 879 0026 00BF     		.section	.text._ZN7Network13CloseDataPortEv,"ax",%progbits
 880              		.align	2
 881              		.global	_ZN7Network13CloseDataPortEv
 882              		.thumb
 883              		.thumb_func
 884              		.type	_ZN7Network13CloseDataPortEv, %function
 885              	_ZN7Network13CloseDataPortEv:
 886              		@ args = 0, pretend = 0, frame = 0
 887              		@ frame_needed = 0, uses_anonymous_args = 0
 888              		@ link register save eliminated.
 889 0000 8430     		adds	r0, r0, #132
 890 0002 FFF7FEBF 		b	_ZN6Socket5CloseEv
 891              		.size	_ZN7Network13CloseDataPortEv, .-_ZN7Network13CloseDataPortEv
 892 0006 00BF     		.section	.text._ZN7Network18AcquireTransactionEj,"ax",%progbits
 893              		.align	2
 894              		.global	_ZN7Network18AcquireTransactionEj
 895              		.thumb
 896              		.thumb_func
 897              		.type	_ZN7Network18AcquireTransactionEj, %function
 898              	_ZN7Network18AcquireTransactionEj:
 899              		@ args = 0, pretend = 0, frame = 0
 900              		@ frame_needed = 0, uses_anonymous_args = 0
 901 0000 70B5     		push	{r4, r5, r6, lr}
 902 0002 0646     		mov	r6, r0
 903 0004 01EB4100 		add	r0, r1, r1, lsl #1
 904 0008 06EBC000 		add	r0, r6, r0, lsl #3
 905 000c 0C30     		adds	r0, r0, #12
 906 000e 0C46     		mov	r4, r1
 907 0010 FFF7FEFF 		bl	_ZN6Socket18AcquireTransactionEv
 908 0014 0546     		mov	r5, r0
 909 0016 60B9     		cbnz	r0, .L153
 910 0018 084B     		ldr	r3, .L155
 911 001a B3F84030 		ldrh	r3, [r3, #64]
 912 001e 9B07     		lsls	r3, r3, #30
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccS7uiHC.s 			page 17


 913 0020 01D4     		bmi	.L154
 914 0022 2846     		mov	r0, r5
 915 0024 70BD     		pop	{r4, r5, r6, pc}
 916              	.L154:
 917 0026 2146     		mov	r1, r4
 918 0028 0548     		ldr	r0, .L155+4
 919 002a FFF7FEFF 		bl	debugPrintf
 920 002e 2846     		mov	r0, r5
 921 0030 70BD     		pop	{r4, r5, r6, pc}
 922              	.L153:
 923 0032 C6F8B840 		str	r4, [r6, #184]
 924 0036 2846     		mov	r0, r5
 925 0038 70BD     		pop	{r4, r5, r6, pc}
 926              	.L156:
 927 003a 00BF     		.align	2
 928              	.L155:
 929 003c 00000000 		.word	reprap
 930 0040 B0000000 		.word	.LC8
 931              		.size	_ZN7Network18AcquireTransactionEj, .-_ZN7Network18AcquireTransactionEj
 932              		.section	.text._ZN7Network11InitSocketsEv,"ax",%progbits
 933              		.align	2
 934              		.global	_ZN7Network11InitSocketsEv
 935              		.thumb
 936              		.thumb_func
 937              		.type	_ZN7Network11InitSocketsEv, %function
 938              	_ZN7Network11InitSocketsEv:
 939              		@ args = 0, pretend = 0, frame = 0
 940              		@ frame_needed = 0, uses_anonymous_args = 0
 941 0000 38B5     		push	{r3, r4, r5, lr}
 942 0002 0546     		mov	r5, r0
 943 0004 0024     		movs	r4, #0
 944              	.L160:
 945 0006 2B19     		adds	r3, r5, r4
 946 0008 93F8C230 		ldrb	r3, [r3, #194]	@ zero_extendqisi2
 947 000c 43B9     		cbnz	r3, .L164
 948              	.L158:
 949 000e 0134     		adds	r4, r4, #1
 950 0010 032C     		cmp	r4, #3
 951 0012 F8D1     		bne	.L160
 952 0014 0023     		movs	r3, #0
 953 0016 C5F8B830 		str	r3, [r5, #184]
 954 001a C5F8B430 		str	r3, [r5, #180]
 955 001e 38BD     		pop	{r3, r4, r5, pc}
 956              	.L164:
 957 0020 2846     		mov	r0, r5
 958 0022 2146     		mov	r1, r4
 959 0024 FFF7FEFF 		bl	_ZN7Network13StartProtocolEj
 960 0028 F1E7     		b	.L158
 961              		.size	_ZN7Network11InitSocketsEv, .-_ZN7Network11InitSocketsEv
 962 002a 00BF     		.section	.text._ZN7Network4SpinEb,"ax",%progbits
 963              		.align	2
 964              		.global	_ZN7Network4SpinEb
 965              		.thumb
 966              		.thumb_func
 967              		.type	_ZN7Network4SpinEb, %function
 968              	_ZN7Network4SpinEb:
 969              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccS7uiHC.s 			page 18


 970              		@ frame_needed = 0, uses_anonymous_args = 0
 971 0000 D0F8C830 		ldr	r3, [r0, #200]
 972 0004 032B     		cmp	r3, #3
 973 0006 70B5     		push	{r4, r5, r6, lr}
 974 0008 0446     		mov	r4, r0
 975 000a 0D46     		mov	r5, r1
 976 000c 43D0     		beq	.L167
 977 000e 042B     		cmp	r3, #4
 978 0010 24D0     		beq	.L168
 979 0012 022B     		cmp	r3, #2
 980 0014 06D0     		beq	.L204
 981              	.L166:
 982 0016 2146     		mov	r1, r4
 983 0018 BDE87040 		pop	{r4, r5, r6, lr}
 984 001c 51F8040B 		ldr	r0, [r1], #4
 985 0020 FFF7FEBF 		b	_ZN8Platform11ClassReportERf
 986              	.L204:
 987 0024 0029     		cmp	r1, #0
 988 0026 F6D0     		beq	.L166
 989 0028 FFF7FEFF 		bl	_Z17wizphy_getphylinkv
 990 002c 0128     		cmp	r0, #1
 991 002e F2D1     		bne	.L166
 992 0030 B4F8CE30 		ldrh	r3, [r4, #206]
 993 0034 002B     		cmp	r3, #0
 994 0036 69D1     		bne	.L173
 995 0038 B4F8D030 		ldrh	r3, [r4, #208]
 996 003c 002B     		cmp	r3, #0
 997 003e 65D1     		bne	.L173
 998 0040 84F8CD00 		strb	r0, [r4, #205]
 999 0044 04F1DA01 		add	r1, r4, #218
 1000 0048 0720     		movs	r0, #7
 1001 004a FFF7FEFF 		bl	_Z9DHCP_inithPKc
 1002 004e FFF7FEFF 		bl	millis
 1003 0052 0323     		movs	r3, #3
 1004 0054 A060     		str	r0, [r4, #8]
 1005 0056 C4F8C830 		str	r3, [r4, #200]
 1006 005a DCE7     		b	.L166
 1007              	.L168:
 1008 005c FFF7FEFF 		bl	_Z17wizphy_getphylinkv
 1009 0060 0128     		cmp	r0, #1
 1010 0062 2AD0     		beq	.L205
 1011 0064 002D     		cmp	r5, #0
 1012 0066 D6D0     		beq	.L166
 1013 0068 94F8CD30 		ldrb	r3, [r4, #205]	@ zero_extendqisi2
 1014 006c 002B     		cmp	r3, #0
 1015 006e 5DD1     		bne	.L206
 1016              	.L186:
 1017 0070 0025     		movs	r5, #0
 1018 0072 04F10C06 		add	r6, r4, #12
 1019              	.L188:
 1020 0076 7019     		adds	r0, r6, r5
 1021 0078 1835     		adds	r5, r5, #24
 1022 007a FFF7FEFF 		bl	_ZN6Socket9TerminateEv
 1023 007e A82D     		cmp	r5, #168
 1024 0080 F9D1     		bne	.L188
 1025              	.L203:
 1026 0082 2146     		mov	r1, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccS7uiHC.s 			page 19


 1027 0084 0223     		movs	r3, #2
 1028 0086 C4F8C830 		str	r3, [r4, #200]
 1029 008a 51F8040B 		ldr	r0, [r1], #4
 1030 008e BDE87040 		pop	{r4, r5, r6, lr}
 1031 0092 FFF7FEBF 		b	_ZN8Platform11ClassReportERf
 1032              	.L167:
 1033 0096 0029     		cmp	r1, #0
 1034 0098 BDD0     		beq	.L166
 1035 009a FFF7FEFF 		bl	_Z17wizphy_getphylinkv
 1036 009e 0128     		cmp	r0, #1
 1037 00a0 47D0     		beq	.L207
 1038 00a2 FFF7FEFF 		bl	_Z9DHCP_stopv
 1039 00a6 0025     		movs	r5, #0
 1040 00a8 04F10C06 		add	r6, r4, #12
 1041              	.L179:
 1042 00ac 7019     		adds	r0, r6, r5
 1043 00ae 1835     		adds	r5, r5, #24
 1044 00b0 FFF7FEFF 		bl	_ZN6Socket9TerminateEv
 1045 00b4 A82D     		cmp	r5, #168
 1046 00b6 F9D1     		bne	.L179
 1047 00b8 E3E7     		b	.L203
 1048              	.L205:
 1049 00ba A5B1     		cbz	r5, .L182
 1050 00bc 94F8CD30 		ldrb	r3, [r4, #205]	@ zero_extendqisi2
 1051 00c0 8BB1     		cbz	r3, .L182
 1052 00c2 FFF7FEFF 		bl	millis
 1053 00c6 A368     		ldr	r3, [r4, #8]
 1054 00c8 C01A     		subs	r0, r0, r3
 1055 00ca B0F57A7F 		cmp	r0, #1000
 1056 00ce 50D2     		bcs	.L208
 1057              	.L184:
 1058 00d0 FFF7FEFF 		bl	_Z8DHCP_runv
 1059 00d4 0328     		cmp	r0, #3
 1060 00d6 06D1     		bne	.L182
 1061 00d8 4FF47060 		mov	r0, #3840
 1062 00dc 04F1CE01 		add	r1, r4, #206
 1063 00e0 0422     		movs	r2, #4
 1064 00e2 FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 1065              	.L182:
 1066 00e6 D4F8B430 		ldr	r3, [r4, #180]
 1067 00ea 03EB4303 		add	r3, r3, r3, lsl #1
 1068 00ee 04EBC300 		add	r0, r4, r3, lsl #3
 1069 00f2 2946     		mov	r1, r5
 1070 00f4 0C30     		adds	r0, r0, #12
 1071 00f6 FFF7FEFF 		bl	_ZN6Socket4PollEb
 1072 00fa D4F8B430 		ldr	r3, [r4, #180]
 1073 00fe 0133     		adds	r3, r3, #1
 1074 0100 072B     		cmp	r3, #7
 1075 0102 08BF     		it	eq
 1076 0104 0023     		moveq	r3, #0
 1077 0106 C4F8B430 		str	r3, [r4, #180]
 1078 010a 84E7     		b	.L166
 1079              	.L173:
 1080 010c 0022     		movs	r2, #0
 1081 010e 0423     		movs	r3, #4
 1082 0110 2046     		mov	r0, r4
 1083 0112 84F8CD20 		strb	r2, [r4, #205]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccS7uiHC.s 			page 20


 1084 0116 C4F8C830 		str	r3, [r4, #200]
 1085 011a FFF7FEFF 		bl	_ZN7Network11InitSocketsEv
 1086 011e 2146     		mov	r1, r4
 1087 0120 BDE87040 		pop	{r4, r5, r6, lr}
 1088 0124 51F8040B 		ldr	r0, [r1], #4
 1089 0128 FFF7FEBF 		b	_ZN8Platform11ClassReportERf
 1090              	.L206:
 1091 012c FFF7FEFF 		bl	_Z9DHCP_stopv
 1092 0130 9EE7     		b	.L186
 1093              	.L207:
 1094 0132 FFF7FEFF 		bl	millis
 1095 0136 A368     		ldr	r3, [r4, #8]
 1096 0138 C01A     		subs	r0, r0, r3
 1097 013a B0F57A7F 		cmp	r0, #1000
 1098 013e 12D2     		bcs	.L209
 1099              	.L176:
 1100 0140 FFF7FEFF 		bl	_Z8DHCP_runv
 1101 0144 0228     		cmp	r0, #2
 1102 0146 7FF466AF 		bne	.L166
 1103 014a 4FF47060 		mov	r0, #3840
 1104 014e 04F1CE01 		add	r1, r4, #206
 1105 0152 0422     		movs	r2, #4
 1106 0154 FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 1107 0158 0423     		movs	r3, #4
 1108 015a C4F8C830 		str	r3, [r4, #200]
 1109 015e 2046     		mov	r0, r4
 1110 0160 FFF7FEFF 		bl	_ZN7Network11InitSocketsEv
 1111 0164 57E7     		b	.L166
 1112              	.L209:
 1113 0166 03F57A73 		add	r3, r3, #1000
 1114 016a A360     		str	r3, [r4, #8]
 1115 016c FFF7FEFF 		bl	_Z17DHCP_time_handlerv
 1116 0170 E6E7     		b	.L176
 1117              	.L208:
 1118 0172 03F57A73 		add	r3, r3, #1000
 1119 0176 A360     		str	r3, [r4, #8]
 1120 0178 FFF7FEFF 		bl	_Z17DHCP_time_handlerv
 1121 017c A8E7     		b	.L184
 1122              		.size	_ZN7Network4SpinEb, .-_ZN7Network4SpinEb
 1123 017e 00BF     		.section	.text._ZN7Network16TerminateSocketsEv,"ax",%progbits
 1124              		.align	2
 1125              		.global	_ZN7Network16TerminateSocketsEv
 1126              		.thumb
 1127              		.thumb_func
 1128              		.type	_ZN7Network16TerminateSocketsEv, %function
 1129              	_ZN7Network16TerminateSocketsEv:
 1130              		@ args = 0, pretend = 0, frame = 0
 1131              		@ frame_needed = 0, uses_anonymous_args = 0
 1132 0000 38B5     		push	{r3, r4, r5, lr}
 1133 0002 00F10C05 		add	r5, r0, #12
 1134 0006 0024     		movs	r4, #0
 1135              	.L212:
 1136 0008 2819     		adds	r0, r5, r4
 1137 000a 1834     		adds	r4, r4, #24
 1138 000c FFF7FEFF 		bl	_ZN6Socket9TerminateEv
 1139 0010 A82C     		cmp	r4, #168
 1140 0012 F9D1     		bne	.L212
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccS7uiHC.s 			page 21


 1141 0014 38BD     		pop	{r3, r4, r5, pc}
 1142              		.size	_ZN7Network16TerminateSocketsEv, .-_ZN7Network16TerminateSocketsEv
 1143 0016 00BF     		.section	.text._ZN7Network5DeferEP18NetworkTransaction,"ax",%progbits
 1144              		.align	2
 1145              		.global	_ZN7Network5DeferEP18NetworkTransaction
 1146              		.thumb
 1147              		.thumb_func
 1148              		.type	_ZN7Network5DeferEP18NetworkTransaction, %function
 1149              	_ZN7Network5DeferEP18NetworkTransaction:
 1150              		@ args = 0, pretend = 0, frame = 0
 1151              		@ frame_needed = 0, uses_anonymous_args = 0
 1152              		@ link register save eliminated.
 1153 0000 0B68     		ldr	r3, [r1]
 1154 0002 23B1     		cbz	r3, .L213
 1155 0004 9B7C     		ldrb	r3, [r3, #18]	@ zero_extendqisi2
 1156 0006 D0F8B820 		ldr	r2, [r0, #184]
 1157 000a 9342     		cmp	r3, r2
 1158 000c 00D0     		beq	.L219
 1159              	.L213:
 1160 000e 7047     		bx	lr
 1161              	.L219:
 1162 0010 0133     		adds	r3, r3, #1
 1163 0012 072B     		cmp	r3, #7
 1164 0014 02D0     		beq	.L218
 1165 0016 C0F8B830 		str	r3, [r0, #184]
 1166 001a 7047     		bx	lr
 1167              	.L218:
 1168 001c 0023     		movs	r3, #0
 1169 001e C0F8B830 		str	r3, [r0, #184]
 1170 0022 7047     		bx	lr
 1171              		.size	_ZN7Network5DeferEP18NetworkTransaction, .-_ZN7Network5DeferEP18NetworkTransaction
 1172              		.section	.text._ZN7Network12GetLocalPortEP6Socket,"ax",%progbits
 1173              		.align	2
 1174              		.global	_ZN7Network12GetLocalPortEP6Socket
 1175              		.thumb
 1176              		.thumb_func
 1177              		.type	_ZN7Network12GetLocalPortEP6Socket, %function
 1178              	_ZN7Network12GetLocalPortEP6Socket:
 1179              		@ args = 0, pretend = 0, frame = 0
 1180              		@ frame_needed = 0, uses_anonymous_args = 0
 1181              		@ link register save eliminated.
 1182 0000 0088     		ldrh	r0, [r0]
 1183 0002 7047     		bx	lr
 1184              		.size	_ZN7Network12GetLocalPortEP6Socket, .-_ZN7Network12GetLocalPortEP6Socket
 1185              		.section	.text._ZN7Network13GetRemotePortEP6Socket,"ax",%progbits
 1186              		.align	2
 1187              		.global	_ZN7Network13GetRemotePortEP6Socket
 1188              		.thumb
 1189              		.thumb_func
 1190              		.type	_ZN7Network13GetRemotePortEP6Socket, %function
 1191              	_ZN7Network13GetRemotePortEP6Socket:
 1192              		@ args = 0, pretend = 0, frame = 0
 1193              		@ frame_needed = 0, uses_anonymous_args = 0
 1194              		@ link register save eliminated.
 1195 0000 4088     		ldrh	r0, [r0, #2]
 1196 0002 7047     		bx	lr
 1197              		.size	_ZN7Network13GetRemotePortEP6Socket, .-_ZN7Network13GetRemotePortEP6Socket
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccS7uiHC.s 			page 22


 1198              		.section	.text._ZN7Network11GetRemoteIPEP6Socket,"ax",%progbits
 1199              		.align	2
 1200              		.global	_ZN7Network11GetRemoteIPEP6Socket
 1201              		.thumb
 1202              		.thumb_func
 1203              		.type	_ZN7Network11GetRemoteIPEP6Socket, %function
 1204              	_ZN7Network11GetRemoteIPEP6Socket:
 1205              		@ args = 0, pretend = 0, frame = 0
 1206              		@ frame_needed = 0, uses_anonymous_args = 0
 1207              		@ link register save eliminated.
 1208 0000 4068     		ldr	r0, [r0, #4]
 1209 0002 7047     		bx	lr
 1210              		.size	_ZN7Network11GetRemoteIPEP6Socket, .-_ZN7Network11GetRemoteIPEP6Socket
 1211              		.section	.text._ZN7Network11IsConnectedEP6Socket,"ax",%progbits
 1212              		.align	2
 1213              		.global	_ZN7Network11IsConnectedEP6Socket
 1214              		.thumb
 1215              		.thumb_func
 1216              		.type	_ZN7Network11IsConnectedEP6Socket, %function
 1217              	_ZN7Network11IsConnectedEP6Socket:
 1218              		@ args = 0, pretend = 0, frame = 0
 1219              		@ frame_needed = 0, uses_anonymous_args = 0
 1220              		@ link register save eliminated.
 1221 0000 FFF7FEBF 		b	_ZNK6Socket11IsConnectedEv
 1222              		.size	_ZN7Network11IsConnectedEP6Socket, .-_ZN7Network11IsConnectedEP6Socket
 1223              		.section	.text._ZN7Network12IsTerminatedEP6Socket,"ax",%progbits
 1224              		.align	2
 1225              		.global	_ZN7Network12IsTerminatedEP6Socket
 1226              		.thumb
 1227              		.thumb_func
 1228              		.type	_ZN7Network12IsTerminatedEP6Socket, %function
 1229              	_ZN7Network12IsTerminatedEP6Socket:
 1230              		@ args = 0, pretend = 0, frame = 0
 1231              		@ frame_needed = 0, uses_anonymous_args = 0
 1232              		@ link register save eliminated.
 1233 0000 407C     		ldrb	r0, [r0, #17]	@ zero_extendqisi2
 1234 0002 7047     		bx	lr
 1235              		.size	_ZN7Network12IsTerminatedEP6Socket, .-_ZN7Network12IsTerminatedEP6Socket
 1236              		.section	.text._ZN7Network9TerminateEP6Socket,"ax",%progbits
 1237              		.align	2
 1238              		.global	_ZN7Network9TerminateEP6Socket
 1239              		.thumb
 1240              		.thumb_func
 1241              		.type	_ZN7Network9TerminateEP6Socket, %function
 1242              	_ZN7Network9TerminateEP6Socket:
 1243              		@ args = 0, pretend = 0, frame = 0
 1244              		@ frame_needed = 0, uses_anonymous_args = 0
 1245              		@ link register save eliminated.
 1246 0000 FFF7FEBF 		b	_ZN6Socket9TerminateEv
 1247              		.size	_ZN7Network9TerminateEP6Socket, .-_ZN7Network9TerminateEP6Socket
 1248              		.section	.rodata._ZL13ProtocolNames,"a",%progbits
 1249              		.align	2
 1250              		.set	.LANCHOR3,. + 0
 1251              		.type	_ZL13ProtocolNames, %object
 1252              		.size	_ZL13ProtocolNames, 12
 1253              	_ZL13ProtocolNames:
 1254 0000 E0000000 		.word	.LC9
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccS7uiHC.s 			page 23


 1255 0004 E8000000 		.word	.LC10
 1256 0008 EC000000 		.word	.LC11
 1257              		.section	.rodata._ZL14DefaultGateway,"a",%progbits
 1258              		.align	2
 1259              		.set	.LANCHOR2,. + 0
 1260              		.type	_ZL14DefaultGateway, %object
 1261              		.size	_ZL14DefaultGateway, 4
 1262              	_ZL14DefaultGateway:
 1263 0000 00000000 		.space	4
 1264              		.section	.rodata._ZL14DefaultNetMask,"a",%progbits
 1265              		.align	2
 1266              		.set	.LANCHOR1,. + 0
 1267              		.type	_ZL14DefaultNetMask, %object
 1268              		.size	_ZL14DefaultNetMask, 4
 1269              	_ZL14DefaultNetMask:
 1270 0000 FF       		.byte	-1
 1271 0001 FF       		.byte	-1
 1272 0002 FF       		.byte	-1
 1273 0003 00       		.byte	0
 1274              		.section	.rodata._ZL18DefaultPortNumbers,"a",%progbits
 1275              		.align	2
 1276              		.set	.LANCHOR4,. + 0
 1277              		.type	_ZL18DefaultPortNumbers, %object
 1278              		.size	_ZL18DefaultPortNumbers, 6
 1279              	_ZL18DefaultPortNumbers:
 1280 0000 5000     		.short	80
 1281 0002 1500     		.short	21
 1282 0004 1700     		.short	23
 1283 0006 0000     		.section	.rodata.str1.4,"aMS",%progbits,1
 1284              		.align	2
 1285              	.LC0:
 1286 0000 64756574 		.ascii	"duet\000"
 1286      00
 1287 0005 000000   		.space	3
 1288              	.LC1:
 1289 0008 25732069 		.ascii	"%s is enabled on port %u\000"
 1289      7320656E 
 1289      61626C65 
 1289      64206F6E 
 1289      20706F72 
 1290 0021 000000   		.space	3
 1291              	.LC2:
 1292 0024 25732069 		.ascii	"%s is disabled\000"
 1292      73206469 
 1292      7361626C 
 1292      656400
 1293 0033 00       		.space	1
 1294              	.LC3:
 1295 0034 4572726F 		.ascii	"Error: this firmware does not support TLS\000"
 1295      723A2074 
 1295      68697320 
 1295      6669726D 
 1295      77617265 
 1296 005e 0000     		.space	2
 1297              	.LC4:
 1298 0060 496E7661 		.ascii	"Invalid protocol parameter\000"
 1298      6C696420 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccS7uiHC.s 			page 24


 1298      70726F74 
 1298      6F636F6C 
 1298      20706172 
 1299 007b 00       		.space	1
 1300              	.LC5:
 1301 007c 3D3D3D20 		.ascii	"=== Network ===\012\000"
 1301      4E657477 
 1301      6F726B20 
 1301      3D3D3D0A 
 1301      00
 1302 008d 000000   		.space	3
 1303              	.LC6:
 1304 0090 53746174 		.ascii	"State: %d\012\000"
 1304      653A2025 
 1304      640A00
 1305 009b 00       		.space	1
 1306              	.LC7:
 1307 009c 4E657477 		.ascii	"Network stopped\012\000"
 1307      6F726B20 
 1307      73746F70 
 1307      7065640A 
 1307      00
 1308 00ad 000000   		.space	3
 1309              	.LC8:
 1310 00b0 4661696C 		.ascii	"Failed to acquire transaction for socket %u\012\000"
 1310      65642074 
 1310      6F206163 
 1310      71756972 
 1310      65207472 
 1311 00dd 000000   		.space	3
 1312              	.LC9:
 1313 00e0 48545450 		.ascii	"HTTP\000"
 1313      00
 1314 00e5 000000   		.space	3
 1315              	.LC10:
 1316 00e8 46545000 		.ascii	"FTP\000"
 1317              	.LC11:
 1318 00ec 54454C4E 		.ascii	"TELNET\000"
 1318      455400
 1319 00f3 00       		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1320              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1321              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1322              	_ZL28cpu_irq_prev_interrupt_state:
 1323 0000 00       		.space	1
 1324              		.section	.rodata._ZL16DefaultIpAddress,"a",%progbits
 1325              		.align	2
 1326              		.set	.LANCHOR0,. + 0
 1327              		.type	_ZL16DefaultIpAddress, %object
 1328              		.size	_ZL16DefaultIpAddress, 4
 1329              	_ZL16DefaultIpAddress:
 1330 0000 00000000 		.space	4
 1331              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1332              		.align	2
 1333              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1334              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1335              	_ZL32cpu_irq_critical_section_counter:
 1336 0000 00000000 		.space	4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccS7uiHC.s 			page 25


 1337              		.section	.rodata._ZZN7Network5StartEvE8bufSizes,"a",%progbits
 1338              		.align	2
 1339              		.set	.LANCHOR5,. + 0
 1340              		.type	_ZZN7Network5StartEvE8bufSizes, %object
 1341              		.size	_ZZN7Network5StartEvE8bufSizes, 8
 1342              	_ZZN7Network5StartEvE8bufSizes:
 1343 0000 02       		.byte	2
 1344 0001 02       		.byte	2
 1345 0002 02       		.byte	2
 1346 0003 02       		.byte	2
 1347 0004 02       		.byte	2
 1348 0005 02       		.byte	2
 1349 0006 02       		.byte	2
 1350 0007 02       		.byte	2
 1351              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
