ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 1


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
  14              		.file	"Network.cpp"
  15              		.section	.text._ZN7Network13StartProtocolEj.part.5,"ax",%progbits
  16              		.align	2
  17              		.thumb
  18              		.thumb_func
  19              		.type	_ZN7Network13StartProtocolEj.part.5, %function
  20              	_ZN7Network13StartProtocolEj.part.5:
  21              		@ args = 0, pretend = 0, frame = 0
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23 0000 38B5     		push	{r3, r4, r5, lr}
  24 0002 0446     		mov	r4, r0
  25 0004 FFF7FEFF 		bl	tcp_new
  26 0008 094B     		ldr	r3, .L2
  27 000a 0546     		mov	r5, r0
  28 000c 33F81420 		ldrh	r2, [r3, r4, lsl #1]
  29 0010 0849     		ldr	r1, .L2+4
  30 0012 FFF7FEFF 		bl	tcp_bind
  31 0016 2846     		mov	r0, r5
  32 0018 FF21     		movs	r1, #255
  33 001a FFF7FEFF 		bl	tcp_listen_with_backlog
  34 001e 064B     		ldr	r3, .L2+8
  35 0020 0649     		ldr	r1, .L2+12
  36 0022 43F82400 		str	r0, [r3, r4, lsl #2]
  37 0026 BDE83840 		pop	{r3, r4, r5, lr}
  38 002a FFF7FEBF 		b	tcp_accept
  39              	.L3:
  40 002e 00BF     		.align	2
  41              	.L2:
  42 0030 00000000 		.word	.LANCHOR0
  43 0034 00000000 		.word	ip_addr_any
  44 0038 00000000 		.word	.LANCHOR1
  45 003c 00000000 		.word	conn_accept
  46              		.size	_ZN7Network13StartProtocolEj.part.5, .-_ZN7Network13StartProtocolEj.part.5
  47              		.section	.text.ethernet_rx_callback,"ax",%progbits
  48              		.align	2
  49              		.thumb
  50              		.thumb_func
  51              		.type	ethernet_rx_callback, %function
  52              	ethernet_rx_callback:
  53              		@ args = 0, pretend = 0, frame = 0
  54              		@ frame_needed = 0, uses_anonymous_args = 0
  55 0000 38B5     		push	{r3, r4, r5, lr}
  56 0002 094C     		ldr	r4, .L8
  57 0004 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 2


  58 0006 03F0FF05 		and	r5, r3, #255
  59 000a 2BB9     		cbnz	r3, .L5
  60 000c 0123     		movs	r3, #1
  61 000e 2370     		strb	r3, [r4]
  62 0010 FFF7FEFF 		bl	ethernet_task
  63 0014 2570     		strb	r5, [r4]
  64 0016 38BD     		pop	{r3, r4, r5, pc}
  65              	.L5:
  66 0018 0020     		movs	r0, #0
  67 001a FFF7FEFF 		bl	ethernet_set_rx_callback
  68 001e 034B     		ldr	r3, .L8+4
  69 0020 0122     		movs	r2, #1
  70 0022 5B68     		ldr	r3, [r3, #4]
  71 0024 DA75     		strb	r2, [r3, #23]
  72 0026 38BD     		pop	{r3, r4, r5, pc}
  73              	.L9:
  74              		.align	2
  75              	.L8:
  76 0028 00000000 		.word	.LANCHOR2
  77 002c 00000000 		.word	reprap
  78              		.size	ethernet_rx_callback, .-ethernet_rx_callback
  79              		.section	.text.LockLWIP,"ax",%progbits
  80              		.align	2
  81              		.global	LockLWIP
  82              		.thumb
  83              		.thumb_func
  84              		.type	LockLWIP, %function
  85              	LockLWIP:
  86              		@ args = 0, pretend = 0, frame = 0
  87              		@ frame_needed = 0, uses_anonymous_args = 0
  88              		@ link register save eliminated.
  89 0000 034B     		ldr	r3, .L13
  90 0002 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
  91 0004 12B9     		cbnz	r2, .L12
  92 0006 0120     		movs	r0, #1
  93 0008 1870     		strb	r0, [r3]
  94 000a 7047     		bx	lr
  95              	.L12:
  96 000c 0020     		movs	r0, #0
  97 000e 7047     		bx	lr
  98              	.L14:
  99              		.align	2
 100              	.L13:
 101 0010 00000000 		.word	.LANCHOR2
 102              		.size	LockLWIP, .-LockLWIP
 103              		.section	.text.UnlockLWIP,"ax",%progbits
 104              		.align	2
 105              		.global	UnlockLWIP
 106              		.thumb
 107              		.thumb_func
 108              		.type	UnlockLWIP, %function
 109              	UnlockLWIP:
 110              		@ args = 0, pretend = 0, frame = 0
 111              		@ frame_needed = 0, uses_anonymous_args = 0
 112              		@ link register save eliminated.
 113 0000 014B     		ldr	r3, .L16
 114 0002 0022     		movs	r2, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 3


 115 0004 1A70     		strb	r2, [r3]
 116 0006 7047     		bx	lr
 117              	.L17:
 118              		.align	2
 119              	.L16:
 120 0008 00000000 		.word	.LANCHOR2
 121              		.size	UnlockLWIP, .-UnlockLWIP
 122              		.section	.text._ZN7NetworkC2EP8Platform,"ax",%progbits
 123              		.align	2
 124              		.global	_ZN7NetworkC2EP8Platform
 125              		.thumb
 126              		.thumb_func
 127              		.type	_ZN7NetworkC2EP8Platform, %function
 128              	_ZN7NetworkC2EP8Platform:
 129              		@ args = 0, pretend = 0, frame = 0
 130              		@ frame_needed = 0, uses_anonymous_args = 0
 131              		@ link register save eliminated.
 132 0000 0022     		movs	r2, #0
 133 0002 10B4     		push	{r4}
 134 0004 0124     		movs	r4, #1
 135 0006 8260     		str	r2, [r0, #8]
 136 0008 4475     		strb	r4, [r0, #21]
 137 000a C260     		str	r2, [r0, #12]
 138 000c 0160     		str	r1, [r0]
 139 000e 0261     		str	r2, [r0, #16]
 140 0010 0275     		strb	r2, [r0, #20]
 141 0012 C275     		strb	r2, [r0, #23]
 142 0014 8275     		strb	r2, [r0, #22]
 143 0016 8262     		str	r2, [r0, #40]
 144 0018 5DF8044B 		ldr	r4, [sp], #4
 145 001c C262     		str	r2, [r0, #44]
 146 001e 0263     		str	r2, [r0, #48]
 147 0020 4263     		str	r2, [r0, #52]
 148 0022 7047     		bx	lr
 149              		.size	_ZN7NetworkC2EP8Platform, .-_ZN7NetworkC2EP8Platform
 150              		.global	_ZN7NetworkC1EP8Platform
 151              		.thumb_set _ZN7NetworkC1EP8Platform,_ZN7NetworkC2EP8Platform
 152              		.section	.text._ZN7Network4InitEv,"ax",%progbits
 153              		.align	2
 154              		.global	_ZN7Network4InitEv
 155              		.thumb
 156              		.thumb_func
 157              		.type	_ZN7Network4InitEv, %function
 158              	_ZN7Network4InitEv:
 159              		@ args = 0, pretend = 0, frame = 0
 160              		@ frame_needed = 0, uses_anonymous_args = 0
 161 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 162 0002 0446     		mov	r4, r0
 163 0004 1825     		movs	r5, #24
 164              	.L21:
 165 0006 2820     		movs	r0, #40
 166 0008 A768     		ldr	r7, [r4, #8]
 167 000a FFF7FEFF 		bl	_Znwj
 168 000e 3946     		mov	r1, r7
 169 0010 0646     		mov	r6, r0
 170 0012 FFF7FEFF 		bl	_ZN18NetworkTransactionC1EPS_
 171 0016 013D     		subs	r5, r5, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 4


 172 0018 A660     		str	r6, [r4, #8]
 173 001a F4D1     		bne	.L21
 174 001c 1025     		movs	r5, #16
 175              	.L23:
 176 001e 1820     		movs	r0, #24
 177 0020 FFF7FEFF 		bl	_Znwj
 178 0024 636B     		ldr	r3, [r4, #52]
 179 0026 013D     		subs	r5, r5, #1
 180 0028 0361     		str	r3, [r0, #16]
 181 002a 6063     		str	r0, [r4, #52]
 182 002c F7D1     		bne	.L23
 183 002e 054B     		ldr	r3, .L24
 184 0030 1868     		ldr	r0, [r3]	@ unaligned
 185 0032 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 186 0034 A061     		str	r0, [r4, #24]	@ unaligned
 187 0036 2377     		strb	r3, [r4, #28]
 188 0038 2068     		ldr	r0, [r4]
 189 003a FFF7FEFF 		bl	_ZN8Platform4TimeEv
 190 003e 6060     		str	r0, [r4, #4]	@ float
 191 0040 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 192              	.L25:
 193 0042 00BF     		.align	2
 194              	.L24:
 195 0044 00000000 		.word	.LC0
 196              		.size	_ZN7Network4InitEv, .-_ZN7Network4InitEv
 197              		.section	.text._ZN7Network13StartProtocolEj,"ax",%progbits
 198              		.align	2
 199              		.global	_ZN7Network13StartProtocolEj
 200              		.thumb
 201              		.thumb_func
 202              		.type	_ZN7Network13StartProtocolEj, %function
 203              	_ZN7Network13StartProtocolEj:
 204              		@ args = 0, pretend = 0, frame = 0
 205              		@ frame_needed = 0, uses_anonymous_args = 0
 206              		@ link register save eliminated.
 207 0000 034B     		ldr	r3, .L29
 208 0002 53F82130 		ldr	r3, [r3, r1, lsl #2]
 209 0006 03B1     		cbz	r3, .L28
 210 0008 7047     		bx	lr
 211              	.L28:
 212 000a 0846     		mov	r0, r1
 213 000c FFF7FEBF 		b	_ZN7Network13StartProtocolEj.part.5
 214              	.L30:
 215              		.align	2
 216              	.L29:
 217 0010 00000000 		.word	.LANCHOR1
 218              		.size	_ZN7Network13StartProtocolEj, .-_ZN7Network13StartProtocolEj
 219              		.section	.text._ZN7Network16ShutdownProtocolEj,"ax",%progbits
 220              		.align	2
 221              		.global	_ZN7Network16ShutdownProtocolEj
 222              		.thumb
 223              		.thumb_func
 224              		.type	_ZN7Network16ShutdownProtocolEj, %function
 225              	_ZN7Network16ShutdownProtocolEj:
 226              		@ args = 0, pretend = 0, frame = 0
 227              		@ frame_needed = 0, uses_anonymous_args = 0
 228 0000 38B5     		push	{r3, r4, r5, lr}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 5


 229 0002 054C     		ldr	r4, .L36
 230 0004 0D46     		mov	r5, r1
 231 0006 54F82100 		ldr	r0, [r4, r1, lsl #2]
 232 000a 20B1     		cbz	r0, .L31
 233 000c FFF7FEFF 		bl	tcp_close
 234 0010 0023     		movs	r3, #0
 235 0012 44F82530 		str	r3, [r4, r5, lsl #2]
 236              	.L31:
 237 0016 38BD     		pop	{r3, r4, r5, pc}
 238              	.L37:
 239              		.align	2
 240              	.L36:
 241 0018 00000000 		.word	.LANCHOR1
 242              		.size	_ZN7Network16ShutdownProtocolEj, .-_ZN7Network16ShutdownProtocolEj
 243              		.section	.text._ZNK7Network17ReportOneProtocolEjR9StringRef,"ax",%progbits
 244              		.align	2
 245              		.global	_ZNK7Network17ReportOneProtocolEjR9StringRef
 246              		.thumb
 247              		.thumb_func
 248              		.type	_ZNK7Network17ReportOneProtocolEjR9StringRef, %function
 249              	_ZNK7Network17ReportOneProtocolEjR9StringRef:
 250              		@ args = 0, pretend = 0, frame = 0
 251              		@ frame_needed = 0, uses_anonymous_args = 0
 252              		@ link register save eliminated.
 253 0000 0C4B     		ldr	r3, .L41
 254 0002 10B4     		push	{r4}
 255 0004 5B5C     		ldrb	r3, [r3, r1]	@ zero_extendqisi2
 256 0006 43B9     		cbnz	r3, .L40
 257 0008 0B4B     		ldr	r3, .L41+4
 258 000a 1046     		mov	r0, r2
 259 000c 5DF8044B 		ldr	r4, [sp], #4
 260 0010 53F82120 		ldr	r2, [r3, r1, lsl #2]
 261 0014 0949     		ldr	r1, .L41+8
 262 0016 FFF7FEBF 		b	_ZN9StringRef4catfEPKcz
 263              	.L40:
 264 001a 074C     		ldr	r4, .L41+4
 265 001c 084B     		ldr	r3, .L41+12
 266 001e 1046     		mov	r0, r2
 267 0020 33F81130 		ldrh	r3, [r3, r1, lsl #1]
 268 0024 54F82120 		ldr	r2, [r4, r1, lsl #2]
 269 0028 0649     		ldr	r1, .L41+16
 270 002a 5DF8044B 		ldr	r4, [sp], #4
 271 002e FFF7FEBF 		b	_ZN9StringRef4catfEPKcz
 272              	.L42:
 273 0032 00BF     		.align	2
 274              	.L41:
 275 0034 00000000 		.word	.LANCHOR3
 276 0038 00000000 		.word	.LANCHOR4
 277 003c 24000000 		.word	.LC2
 278 0040 00000000 		.word	.LANCHOR0
 279 0044 08000000 		.word	.LC1
 280              		.size	_ZNK7Network17ReportOneProtocolEjR9StringRef, .-_ZNK7Network17ReportOneProtocolEjR9StringRef
 281              		.section	.text._ZN7Network15DisableProtocolEiR9StringRef,"ax",%progbits
 282              		.align	2
 283              		.global	_ZN7Network15DisableProtocolEiR9StringRef
 284              		.thumb
 285              		.thumb_func
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 6


 286              		.type	_ZN7Network15DisableProtocolEiR9StringRef, %function
 287              	_ZN7Network15DisableProtocolEiR9StringRef:
 288              		@ args = 0, pretend = 0, frame = 0
 289              		@ frame_needed = 0, uses_anonymous_args = 0
 290 0000 0229     		cmp	r1, #2
 291 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 292 0004 0C46     		mov	r4, r1
 293 0006 0746     		mov	r7, r0
 294 0008 1546     		mov	r5, r2
 295 000a 12D8     		bhi	.L44
 296 000c 0C4E     		ldr	r6, .L49
 297 000e 56F82100 		ldr	r0, [r6, r1, lsl #2]
 298 0012 20B1     		cbz	r0, .L45
 299 0014 FFF7FEFF 		bl	tcp_close
 300 0018 0023     		movs	r3, #0
 301 001a 46F82430 		str	r3, [r6, r4, lsl #2]
 302              	.L45:
 303 001e 094B     		ldr	r3, .L49+4
 304 0020 2A46     		mov	r2, r5
 305 0022 0025     		movs	r5, #0
 306 0024 3846     		mov	r0, r7
 307 0026 2146     		mov	r1, r4
 308 0028 1D55     		strb	r5, [r3, r4]
 309 002a BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 310 002e FFF7FEBF 		b	_ZNK7Network17ReportOneProtocolEjR9StringRef
 311              	.L44:
 312 0032 1046     		mov	r0, r2
 313 0034 0449     		ldr	r1, .L49+8
 314 0036 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 315 003a FFF7FEBF 		b	_ZN9StringRef4copyEPKc
 316              	.L50:
 317 003e 00BF     		.align	2
 318              	.L49:
 319 0040 00000000 		.word	.LANCHOR1
 320 0044 00000000 		.word	.LANCHOR3
 321 0048 34000000 		.word	.LC3
 322              		.size	_ZN7Network15DisableProtocolEiR9StringRef, .-_ZN7Network15DisableProtocolEiR9StringRef
 323              		.section	.text._ZNK7Network15ReportProtocolsER9StringRef,"ax",%progbits
 324              		.align	2
 325              		.global	_ZNK7Network15ReportProtocolsER9StringRef
 326              		.thumb
 327              		.thumb_func
 328              		.type	_ZNK7Network15ReportProtocolsER9StringRef, %function
 329              	_ZNK7Network15ReportProtocolsER9StringRef:
 330              		@ args = 0, pretend = 0, frame = 0
 331              		@ frame_needed = 0, uses_anonymous_args = 0
 332 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 333 0002 0B68     		ldr	r3, [r1]
 334 0004 0D46     		mov	r5, r1
 335 0006 0024     		movs	r4, #0
 336 0008 0746     		mov	r7, r0
 337 000a 1C70     		strb	r4, [r3]
 338 000c 0126     		movs	r6, #1
 339 000e 2846     		mov	r0, r5
 340 0010 0A21     		movs	r1, #10
 341 0012 74B1     		cbz	r4, .L53
 342              	.L57:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 7


 343 0014 FFF7FEFF 		bl	_ZN9StringRef3catEc
 344 0018 3846     		mov	r0, r7
 345 001a 2146     		mov	r1, r4
 346 001c 2A46     		mov	r2, r5
 347 001e FFF7FEFF 		bl	_ZNK7Network17ReportOneProtocolEjR9StringRef
 348 0022 032E     		cmp	r6, #3
 349 0024 0BD0     		beq	.L56
 350              	.L54:
 351 0026 0134     		adds	r4, r4, #1
 352 0028 0136     		adds	r6, r6, #1
 353 002a 2846     		mov	r0, r5
 354 002c 0A21     		movs	r1, #10
 355 002e 002C     		cmp	r4, #0
 356 0030 F0D1     		bne	.L57
 357              	.L53:
 358 0032 3846     		mov	r0, r7
 359 0034 2146     		mov	r1, r4
 360 0036 2A46     		mov	r2, r5
 361 0038 FFF7FEFF 		bl	_ZNK7Network17ReportOneProtocolEjR9StringRef
 362 003c F3E7     		b	.L54
 363              	.L56:
 364 003e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 365              		.size	_ZNK7Network15ReportProtocolsER9StringRef, .-_ZNK7Network15ReportProtocolsER9StringRef
 366              		.section	.text._ZN7Network14DoMdnsAnnounceEv,"ax",%progbits
 367              		.align	2
 368              		.global	_ZN7Network14DoMdnsAnnounceEv
 369              		.thumb
 370              		.thumb_func
 371              		.type	_ZN7Network14DoMdnsAnnounceEv, %function
 372              	_ZN7Network14DoMdnsAnnounceEv:
 373              		@ args = 0, pretend = 0, frame = 0
 374              		@ frame_needed = 0, uses_anonymous_args = 0
 375 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 376 0002 0F48     		ldr	r0, .L65
 377 0004 0F4D     		ldr	r5, .L65+4
 378 0006 DFF848E0 		ldr	lr, .L65+16
 379 000a 0F4F     		ldr	r7, .L65+8
 380 000c 0023     		movs	r3, #0
 381 000e 0121     		movs	r1, #1
 382              	.L61:
 383 0010 EA5C     		ldrb	r2, [r5, r3]	@ zero_extendqisi2
 384 0012 00EBC104 		add	r4, r0, r1, lsl #3
 385 0016 3AB1     		cbz	r2, .L59
 386 0018 5EF82320 		ldr	r2, [lr, r3, lsl #2]
 387 001c 37F81360 		ldrh	r6, [r7, r3, lsl #1]
 388 0020 40F83120 		str	r2, [r0, r1, lsl #3]
 389 0024 0131     		adds	r1, r1, #1
 390 0026 6660     		str	r6, [r4, #4]
 391              	.L59:
 392 0028 0133     		adds	r3, r3, #1
 393 002a 032B     		cmp	r3, #3
 394 002c F0D1     		bne	.L61
 395 002e 0448     		ldr	r0, .L65
 396 0030 064A     		ldr	r2, .L65+12
 397 0032 FFF7FEFF 		bl	mdns_responder_init
 398 0036 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 399 003a FFF7FEBF 		b	mdns_announce
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 8


 400              	.L66:
 401 003e 00BF     		.align	2
 402              	.L65:
 403 0040 00000000 		.word	.LANCHOR5
 404 0044 00000000 		.word	.LANCHOR3
 405 0048 00000000 		.word	.LANCHOR0
 406 004c 00000000 		.word	.LANCHOR7
 407 0050 00000000 		.word	.LANCHOR6
 408              		.size	_ZN7Network14DoMdnsAnnounceEv, .-_ZN7Network14DoMdnsAnnounceEv
 409              		.section	.text._ZN7Network14EnableProtocolEiiiR9StringRef,"ax",%progbits
 410              		.align	2
 411              		.global	_ZN7Network14EnableProtocolEiiiR9StringRef
 412              		.thumb
 413              		.thumb_func
 414              		.type	_ZN7Network14EnableProtocolEiiiR9StringRef, %function
 415              	_ZN7Network14EnableProtocolEiiiR9StringRef:
 416              		@ args = 4, pretend = 0, frame = 0
 417              		@ frame_needed = 0, uses_anonymous_args = 0
 418 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 419 0004 0133     		adds	r3, r3, #1
 420 0006 012B     		cmp	r3, #1
 421 0008 0646     		mov	r6, r0
 422 000a 0C46     		mov	r4, r1
 423 000c 089D     		ldr	r5, [sp, #32]
 424 000e 28D8     		bhi	.L81
 425 0010 0229     		cmp	r1, #2
 426 0012 2CD8     		bhi	.L69
 427 0014 002A     		cmp	r2, #0
 428 0016 B8BF     		it	lt
 429 0018 214B     		ldrlt	r3, .L85
 430 001a 224F     		ldr	r7, .L85+4
 431 001c B8BF     		it	lt
 432 001e 33F81180 		ldrhlt	r8, [r3, r1, lsl #1]
 433 0022 37F81130 		ldrh	r3, [r7, r1, lsl #1]
 434 0026 A8BF     		it	ge
 435 0028 1FFA82F8 		uxthge	r8, r2
 436 002c 4345     		cmp	r3, r8
 437 002e 2CD0     		beq	.L82
 438 0030 DFF88090 		ldr	r9, .L85+20
 439 0034 59F82100 		ldr	r0, [r9, r1, lsl #2]
 440 0038 20B1     		cbz	r0, .L75
 441 003a FFF7FEFF 		bl	tcp_close
 442 003e 0023     		movs	r3, #0
 443 0040 49F82430 		str	r3, [r9, r4, lsl #2]
 444              	.L75:
 445 0044 184B     		ldr	r3, .L85+8
 446 0046 27F81480 		strh	r8, [r7, r4, lsl #1]	@ movhi
 447              	.L74:
 448 004a 327D     		ldrb	r2, [r6, #20]	@ zero_extendqisi2
 449 004c 0121     		movs	r1, #1
 450 004e 042A     		cmp	r2, #4
 451 0050 1955     		strb	r1, [r3, r4]
 452 0052 12D0     		beq	.L83
 453              	.L76:
 454 0054 3046     		mov	r0, r6
 455 0056 2146     		mov	r1, r4
 456 0058 2A46     		mov	r2, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 9


 457 005a BDE8F843 		pop	{r3, r4, r5, r6, r7, r8, r9, lr}
 458 005e FFF7FEBF 		b	_ZNK7Network17ReportOneProtocolEjR9StringRef
 459              	.L81:
 460 0062 2846     		mov	r0, r5
 461 0064 1149     		ldr	r1, .L85+12
 462 0066 BDE8F843 		pop	{r3, r4, r5, r6, r7, r8, r9, lr}
 463 006a FFF7FEBF 		b	_ZN9StringRef4copyEPKc
 464              	.L69:
 465 006e 2846     		mov	r0, r5
 466 0070 0F49     		ldr	r1, .L85+16
 467 0072 BDE8F843 		pop	{r3, r4, r5, r6, r7, r8, r9, lr}
 468 0076 FFF7FEBF 		b	_ZN9StringRef4copyEPKc
 469              	.L83:
 470 007a 0E4B     		ldr	r3, .L85+20
 471 007c 53F82430 		ldr	r3, [r3, r4, lsl #2]
 472 0080 53B1     		cbz	r3, .L84
 473              	.L77:
 474 0082 3046     		mov	r0, r6
 475 0084 FFF7FEFF 		bl	_ZN7Network14DoMdnsAnnounceEv
 476 0088 E4E7     		b	.L76
 477              	.L82:
 478 008a 074B     		ldr	r3, .L85+8
 479 008c 27F81180 		strh	r8, [r7, r1, lsl #1]	@ movhi
 480 0090 5A5C     		ldrb	r2, [r3, r1]	@ zero_extendqisi2
 481 0092 002A     		cmp	r2, #0
 482 0094 DED1     		bne	.L76
 483 0096 D8E7     		b	.L74
 484              	.L84:
 485 0098 2046     		mov	r0, r4
 486 009a FFF7FEFF 		bl	_ZN7Network13StartProtocolEj.part.5
 487 009e F0E7     		b	.L77
 488              	.L86:
 489              		.align	2
 490              	.L85:
 491 00a0 00000000 		.word	.LANCHOR8
 492 00a4 00000000 		.word	.LANCHOR0
 493 00a8 00000000 		.word	.LANCHOR3
 494 00ac 50000000 		.word	.LC4
 495 00b0 34000000 		.word	.LC3
 496 00b4 00000000 		.word	.LANCHOR1
 497              		.size	_ZN7Network14EnableProtocolEiiiR9StringRef, .-_ZN7Network14EnableProtocolEiiiR9StringRef
 498              		.section	.text._ZN7Network4SpinEb,"ax",%progbits
 499              		.align	2
 500              		.global	_ZN7Network4SpinEb
 501              		.thumb
 502              		.thumb_func
 503              		.type	_ZN7Network4SpinEb, %function
 504              	_ZN7Network4SpinEb:
 505              		@ args = 0, pretend = 0, frame = 0
 506              		@ frame_needed = 0, uses_anonymous_args = 0
 507 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 508 0004 584C     		ldr	r4, .L138
 509 0006 85B0     		sub	sp, sp, #20
 510 0008 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 511 000a 0546     		mov	r5, r0
 512 000c 03F0FF07 		and	r7, r3, #255
 513 0010 53B9     		cbnz	r3, .L88
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 10


 514 0012 0126     		movs	r6, #1
 515 0014 2670     		strb	r6, [r4]
 516 0016 79B1     		cbz	r1, .L89
 517 0018 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 518 001a DA1E     		subs	r2, r3, #3
 519 001c B242     		cmp	r2, r6
 520 001e 0ED9     		bls	.L132
 521 0020 022B     		cmp	r3, #2
 522 0022 41D0     		beq	.L133
 523              	.L99:
 524 0024 0023     		movs	r3, #0
 525 0026 2370     		strb	r3, [r4]
 526              	.L88:
 527 0028 2946     		mov	r1, r5
 528 002a 51F8040B 		ldr	r0, [r1], #4
 529 002e 05B0     		add	sp, sp, #20
 530              		@ sp needed
 531 0030 BDE8F043 		pop	{r4, r5, r6, r7, r8, r9, lr}
 532 0034 FFF7FEBF 		b	_ZN8Platform11ClassReportERf
 533              	.L89:
 534 0038 FFF7FEFF 		bl	ethernet_task
 535 003c F2E7     		b	.L99
 536              	.L132:
 537 003e FFF7FEFF 		bl	ethernet_link_established
 538 0042 0346     		mov	r3, r0
 539 0044 0028     		cmp	r0, #0
 540 0046 42D0     		beq	.L134
 541 0048 FFF7FEFF 		bl	ethernet_task
 542 004c EB7D     		ldrb	r3, [r5, #23]	@ zero_extendqisi2
 543 004e 002B     		cmp	r3, #0
 544 0050 4FD1     		bne	.L135
 545              	.L92:
 546 0052 2B7D     		ldrb	r3, [r5, #20]	@ zero_extendqisi2
 547 0054 032B     		cmp	r3, #3
 548 0056 51D0     		beq	.L136
 549              	.L93:
 550 0058 2A69     		ldr	r2, [r5, #16]
 551 005a 002A     		cmp	r2, #0
 552 005c E2D0     		beq	.L99
 553 005e 434B     		ldr	r3, .L138+4
 554 0060 1968     		ldr	r1, [r3]
 555 0062 0029     		cmp	r1, #0
 556 0064 DED1     		bne	.L99
 557 0066 5368     		ldr	r3, [r2, #4]
 558 0068 002B     		cmp	r3, #0
 559 006a 76D0     		beq	.L109
 560 006c 5668     		ldr	r6, [r2, #4]
 561 006e 2B46     		mov	r3, r5
 562 0070 43F8106F 		str	r6, [r3, #16]!
 563 0074 5160     		str	r1, [r2, #4]
 564 0076 2969     		ldr	r1, [r5, #16]
 565 0078 21B1     		cbz	r1, .L102
 566              	.L103:
 567 007a 1B68     		ldr	r3, [r3]
 568 007c 5968     		ldr	r1, [r3, #4]
 569 007e 0433     		adds	r3, r3, #4
 570 0080 0029     		cmp	r1, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 11


 571 0082 FAD1     		bne	.L103
 572              	.L102:
 573 0084 1A60     		str	r2, [r3]
 574              	.L101:
 575 0086 3046     		mov	r0, r6
 576 0088 FFF7FEFF 		bl	_ZN18NetworkTransaction4SendEv
 577 008c 0028     		cmp	r0, #0
 578 008e C9D0     		beq	.L99
 579 0090 7368     		ldr	r3, [r6, #4]
 580 0092 2B61     		str	r3, [r5, #16]
 581 0094 AB68     		ldr	r3, [r5, #8]
 582 0096 7360     		str	r3, [r6, #4]
 583 0098 AE60     		str	r6, [r5, #8]
 584 009a B368     		ldr	r3, [r6, #8]
 585 009c 002B     		cmp	r3, #0
 586 009e C1D0     		beq	.L99
 587 00a0 2A69     		ldr	r2, [r5, #16]
 588 00a2 5A60     		str	r2, [r3, #4]
 589 00a4 2B61     		str	r3, [r5, #16]
 590 00a6 BDE7     		b	.L99
 591              	.L133:
 592 00a8 FFF7FEFF 		bl	ethernet_establish_link
 593 00ac 0028     		cmp	r0, #0
 594 00ae B9D0     		beq	.L99
 595 00b0 2F4F     		ldr	r7, .L138+8
 596 00b2 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 597 00b4 A3B9     		cbnz	r3, .L107
 598 00b6 2A68     		ldr	r2, [r5]
 599 00b8 02F19800 		add	r0, r2, #152
 600 00bc 02F19C01 		add	r1, r2, #156
 601 00c0 A032     		adds	r2, r2, #160
 602 00c2 FFF7FEFF 		bl	start_ethernet
 603 00c6 3E70     		strb	r6, [r7]
 604              	.L106:
 605 00c8 0323     		movs	r3, #3
 606 00ca 2B75     		strb	r3, [r5, #20]
 607 00cc AAE7     		b	.L99
 608              	.L134:
 609 00ce 294A     		ldr	r2, .L138+12
 610 00d0 0221     		movs	r1, #2
 611 00d2 1068     		ldr	r0, [r2]
 612 00d4 2975     		strb	r1, [r5, #20]
 613 00d6 284A     		ldr	r2, .L138+16
 614 00d8 2370     		strb	r3, [r4]
 615 00da FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 616 00de A3E7     		b	.L88
 617              	.L107:
 618 00e0 2A68     		ldr	r2, [r5]
 619 00e2 02F19800 		add	r0, r2, #152
 620 00e6 02F19C01 		add	r1, r2, #156
 621 00ea A032     		adds	r2, r2, #160
 622 00ec FFF7FEFF 		bl	ethernet_set_configuration
 623 00f0 EAE7     		b	.L106
 624              	.L135:
 625 00f2 EF75     		strb	r7, [r5, #23]
 626 00f4 2148     		ldr	r0, .L138+20
 627 00f6 FFF7FEFF 		bl	ethernet_set_rx_callback
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 12


 628 00fa AAE7     		b	.L92
 629              	.L136:
 630 00fc FFF7FEFF 		bl	ethernet_get_ipaddress
 631 0100 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 632 0102 0746     		mov	r7, r0
 633 0104 33B9     		cbnz	r3, .L94
 634 0106 4378     		ldrb	r3, [r0, #1]	@ zero_extendqisi2
 635 0108 23B9     		cbnz	r3, .L94
 636 010a 8378     		ldrb	r3, [r0, #2]	@ zero_extendqisi2
 637 010c 13B9     		cbnz	r3, .L94
 638 010e C378     		ldrb	r3, [r0, #3]	@ zero_extendqisi2
 639 0110 002B     		cmp	r3, #0
 640 0112 A1D0     		beq	.L93
 641              	.L94:
 642 0114 0423     		movs	r3, #4
 643 0116 DFF86C80 		ldr	r8, .L138+28
 644 011a DFF86C90 		ldr	r9, .L138+32
 645 011e 2B75     		strb	r3, [r5, #20]
 646 0120 0026     		movs	r6, #0
 647              	.L97:
 648 0122 18F80630 		ldrb	r3, [r8, r6]	@ zero_extendqisi2
 649 0126 13B1     		cbz	r3, .L95
 650 0128 59F82630 		ldr	r3, [r9, r6, lsl #2]
 651 012c BBB1     		cbz	r3, .L137
 652              	.L95:
 653 012e 0136     		adds	r6, r6, #1
 654 0130 032E     		cmp	r6, #3
 655 0132 F6D1     		bne	.L97
 656 0134 2846     		mov	r0, r5
 657 0136 FFF7FEFF 		bl	_ZN7Network14DoMdnsAnnounceEv
 658 013a 7A78     		ldrb	r2, [r7, #1]	@ zero_extendqisi2
 659 013c 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 660 013e 0092     		str	r2, [sp]
 661 0140 BA78     		ldrb	r2, [r7, #2]	@ zero_extendqisi2
 662 0142 0C49     		ldr	r1, .L138+12
 663 0144 0192     		str	r2, [sp, #4]
 664 0146 FA78     		ldrb	r2, [r7, #3]	@ zero_extendqisi2
 665 0148 0868     		ldr	r0, [r1]
 666 014a 0026     		movs	r6, #0
 667 014c 0292     		str	r2, [sp, #8]
 668 014e 0221     		movs	r1, #2
 669 0150 0B4A     		ldr	r2, .L138+24
 670 0152 2670     		strb	r6, [r4]
 671 0154 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 672 0158 66E7     		b	.L88
 673              	.L109:
 674 015a 1646     		mov	r6, r2
 675 015c 93E7     		b	.L101
 676              	.L137:
 677 015e 3046     		mov	r0, r6
 678 0160 FFF7FEFF 		bl	_ZN7Network13StartProtocolEj.part.5
 679 0164 E3E7     		b	.L95
 680              	.L139:
 681 0166 00BF     		.align	2
 682              	.L138:
 683 0168 00000000 		.word	.LANCHOR2
 684 016c 00000000 		.word	.LANCHOR9
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 13


 685 0170 00000000 		.word	.LANCHOR10
 686 0174 00000000 		.word	reprap
 687 0178 7C000000 		.word	.LC5
 688 017c 00000000 		.word	ethernet_rx_callback
 689 0180 8C000000 		.word	.LC6
 690 0184 00000000 		.word	.LANCHOR3
 691 0188 00000000 		.word	.LANCHOR1
 692              		.size	_ZN7Network4SpinEb, .-_ZN7Network4SpinEb
 693              		.section	.text._ZN7Network9InterruptEv,"ax",%progbits
 694              		.align	2
 695              		.global	_ZN7Network9InterruptEv
 696              		.thumb
 697              		.thumb_func
 698              		.type	_ZN7Network9InterruptEv, %function
 699              	_ZN7Network9InterruptEv:
 700              		@ args = 0, pretend = 0, frame = 0
 701              		@ frame_needed = 0, uses_anonymous_args = 0
 702 0000 38B5     		push	{r3, r4, r5, lr}
 703 0002 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 704 0004 012B     		cmp	r3, #1
 705 0006 04D9     		bls	.L140
 706 0008 054C     		ldr	r4, .L143
 707 000a 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 708 000c 03F0FF05 		and	r5, r3, #255
 709 0010 03B1     		cbz	r3, .L142
 710              	.L140:
 711 0012 38BD     		pop	{r3, r4, r5, pc}
 712              	.L142:
 713 0014 0123     		movs	r3, #1
 714 0016 2370     		strb	r3, [r4]
 715 0018 FFF7FEFF 		bl	ethernet_timers_update
 716 001c 2570     		strb	r5, [r4]
 717 001e 38BD     		pop	{r3, r4, r5, pc}
 718              	.L144:
 719              		.align	2
 720              	.L143:
 721 0020 00000000 		.word	.LANCHOR2
 722              		.size	_ZN7Network9InterruptEv, .-_ZN7Network9InterruptEv
 723              		.section	.text._ZN7Network11DiagnosticsE11MessageType,"ax",%progbits
 724              		.align	2
 725              		.global	_ZN7Network11DiagnosticsE11MessageType
 726              		.thumb
 727              		.thumb_func
 728              		.type	_ZN7Network11DiagnosticsE11MessageType, %function
 729              	_ZN7Network11DiagnosticsE11MessageType:
 730              		@ args = 0, pretend = 0, frame = 0
 731              		@ frame_needed = 0, uses_anonymous_args = 0
 732 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 733 0002 234A     		ldr	r2, .L160
 734 0004 0446     		mov	r4, r0
 735 0006 85B0     		sub	sp, sp, #20
 736 0008 0068     		ldr	r0, [r0]
 737 000a 0D46     		mov	r5, r1
 738 000c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 739 0010 626B     		ldr	r2, [r4, #52]
 740 0012 002A     		cmp	r2, #0
 741 0014 3AD0     		beq	.L151
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 14


 742 0016 0023     		movs	r3, #0
 743              	.L147:
 744 0018 1269     		ldr	r2, [r2, #16]
 745 001a 0133     		adds	r3, r3, #1
 746 001c 002A     		cmp	r2, #0
 747 001e FBD1     		bne	.L147
 748              	.L146:
 749 0020 1022     		movs	r2, #16
 750 0022 2068     		ldr	r0, [r4]
 751 0024 2946     		mov	r1, r5
 752 0026 0092     		str	r2, [sp]
 753 0028 1A4A     		ldr	r2, .L160+4
 754 002a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 755 002e A268     		ldr	r2, [r4, #8]
 756 0030 002A     		cmp	r2, #0
 757 0032 29D0     		beq	.L152
 758 0034 0023     		movs	r3, #0
 759              	.L149:
 760 0036 5268     		ldr	r2, [r2, #4]
 761 0038 0133     		adds	r3, r3, #1
 762 003a 002A     		cmp	r2, #0
 763 003c FBD1     		bne	.L149
 764              	.L148:
 765 003e 1822     		movs	r2, #24
 766 0040 2068     		ldr	r0, [r4]
 767 0042 2946     		mov	r1, r5
 768 0044 0092     		str	r2, [sp]
 769 0046 144A     		ldr	r2, .L160+8
 770 0048 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 771 004c 134A     		ldr	r2, .L160+12
 772 004e 144B     		ldr	r3, .L160+16
 773 0050 D2F800E0 		ldr	lr, [r2]
 774 0054 5768     		ldr	r7, [r2, #4]
 775 0056 9668     		ldr	r6, [r2, #8]
 776 0058 227D     		ldrb	r2, [r4, #20]	@ zero_extendqisi2
 777 005a 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 778 005c 2068     		ldr	r0, [r4]
 779 005e 2946     		mov	r1, r5
 780 0060 0092     		str	r2, [sp]
 781 0062 CDF804E0 		str	lr, [sp, #4]
 782 0066 0297     		str	r7, [sp, #8]
 783 0068 0396     		str	r6, [sp, #12]
 784 006a 0E4A     		ldr	r2, .L160+20
 785 006c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 786 0070 0D4B     		ldr	r3, .L160+24
 787 0072 B3F84030 		ldrh	r3, [r3, #64]
 788 0076 9B07     		lsls	r3, r3, #30
 789 0078 01D4     		bmi	.L159
 790 007a 05B0     		add	sp, sp, #20
 791              		@ sp needed
 792 007c F0BD     		pop	{r4, r5, r6, r7, pc}
 793              	.L159:
 794 007e 05B0     		add	sp, sp, #20
 795              		@ sp needed
 796 0080 BDE8F040 		pop	{r4, r5, r6, r7, lr}
 797 0084 FFF7FEBF 		b	stats_display
 798              	.L152:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 15


 799 0088 1346     		mov	r3, r2
 800 008a D8E7     		b	.L148
 801              	.L151:
 802 008c 1346     		mov	r3, r2
 803 008e C7E7     		b	.L146
 804              	.L161:
 805              		.align	2
 806              	.L160:
 807 0090 A8000000 		.word	.LC7
 808 0094 BC000000 		.word	.LC8
 809 0098 D8000000 		.word	.LC9
 810 009c 00000000 		.word	.LANCHOR1
 811 00a0 00000000 		.word	.LANCHOR2
 812 00a4 F8000000 		.word	.LC10
 813 00a8 00000000 		.word	reprap
 814              		.size	_ZN7Network11DiagnosticsE11MessageType, .-_ZN7Network11DiagnosticsE11MessageType
 815              		.section	.text._ZN7Network13ResetCallbackEv,"ax",%progbits
 816              		.align	2
 817              		.global	_ZN7Network13ResetCallbackEv
 818              		.thumb
 819              		.thumb_func
 820              		.type	_ZN7Network13ResetCallbackEv, %function
 821              	_ZN7Network13ResetCallbackEv:
 822              		@ args = 0, pretend = 0, frame = 0
 823              		@ frame_needed = 0, uses_anonymous_args = 0
 824              		@ link register save eliminated.
 825 0000 0123     		movs	r3, #1
 826 0002 C375     		strb	r3, [r0, #23]
 827 0004 7047     		bx	lr
 828              		.size	_ZN7Network13ResetCallbackEv, .-_ZN7Network13ResetCallbackEv
 829 0006 00BF     		.section	.text._ZN7Network12ReceiveInputEP4pbufP15ConnectionState,"ax",%progbits
 830              		.align	2
 831              		.global	_ZN7Network12ReceiveInputEP4pbufP15ConnectionState
 832              		.thumb
 833              		.thumb_func
 834              		.type	_ZN7Network12ReceiveInputEP4pbufP15ConnectionState, %function
 835              	_ZN7Network12ReceiveInputEP4pbufP15ConnectionState:
 836              		@ args = 0, pretend = 0, frame = 0
 837              		@ frame_needed = 0, uses_anonymous_args = 0
 838 0000 38B5     		push	{r3, r4, r5, lr}
 839 0002 8468     		ldr	r4, [r0, #8]
 840 0004 0546     		mov	r5, r0
 841 0006 9CB1     		cbz	r4, .L174
 842 0008 6368     		ldr	r3, [r4, #4]
 843 000a 2046     		mov	r0, r4
 844 000c AB60     		str	r3, [r5, #8]
 845 000e 0223     		movs	r3, #2
 846 0010 FFF7FEFF 		bl	_ZN18NetworkTransaction3SetEP4pbufP15ConnectionState17TransactionStatus
 847 0014 0023     		movs	r3, #0
 848 0016 6360     		str	r3, [r4, #4]
 849 0018 EA68     		ldr	r2, [r5, #12]
 850 001a 05F10C03 		add	r3, r5, #12
 851 001e 22B1     		cbz	r2, .L166
 852              	.L167:
 853 0020 1B68     		ldr	r3, [r3]
 854 0022 5A68     		ldr	r2, [r3, #4]
 855 0024 0433     		adds	r3, r3, #4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 16


 856 0026 002A     		cmp	r2, #0
 857 0028 FAD1     		bne	.L167
 858              	.L166:
 859 002a 1C60     		str	r4, [r3]
 860 002c 0120     		movs	r0, #1
 861 002e 38BD     		pop	{r3, r4, r5, pc}
 862              	.L174:
 863 0030 0068     		ldr	r0, [r0]
 864 0032 0221     		movs	r1, #2
 865 0034 024A     		ldr	r2, .L175
 866 0036 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 867 003a 2046     		mov	r0, r4
 868 003c 38BD     		pop	{r3, r4, r5, pc}
 869              	.L176:
 870 003e 00BF     		.align	2
 871              	.L175:
 872 0040 28010000 		.word	.LC11
 873              		.size	_ZN7Network12ReceiveInputEP4pbufP15ConnectionState, .-_ZN7Network12ReceiveInputEP4pbufP15Con
 874              		.section	.text._ZN7Network18ConnectionAcceptedEP7tcp_pcb,"ax",%progbits
 875              		.align	2
 876              		.global	_ZN7Network18ConnectionAcceptedEP7tcp_pcb
 877              		.thumb
 878              		.thumb_func
 879              		.type	_ZN7Network18ConnectionAcceptedEP7tcp_pcb, %function
 880              	_ZN7Network18ConnectionAcceptedEP7tcp_pcb:
 881              		@ args = 0, pretend = 0, frame = 0
 882              		@ frame_needed = 0, uses_anonymous_args = 0
 883 0000 70B5     		push	{r4, r5, r6, lr}
 884 0002 456B     		ldr	r5, [r0, #52]
 885 0004 0446     		mov	r4, r0
 886 0006 1DB3     		cbz	r5, .L189
 887 0008 8668     		ldr	r6, [r0, #8]
 888 000a D6B1     		cbz	r6, .L190
 889 000c 2B69     		ldr	r3, [r5, #16]
 890 000e 2846     		mov	r0, r5
 891 0010 6363     		str	r3, [r4, #52]
 892 0012 FFF7FEFF 		bl	_ZN15ConnectionState4InitEP7tcp_pcb
 893 0016 2A46     		mov	r2, r5
 894 0018 0123     		movs	r3, #1
 895 001a 3046     		mov	r0, r6
 896 001c 0021     		movs	r1, #0
 897 001e FFF7FEFF 		bl	_ZN18NetworkTransaction3SetEP4pbufP15ConnectionState17TransactionStatus
 898 0022 7268     		ldr	r2, [r6, #4]
 899 0024 0023     		movs	r3, #0
 900 0026 A260     		str	r2, [r4, #8]
 901 0028 7360     		str	r3, [r6, #4]
 902 002a E268     		ldr	r2, [r4, #12]
 903 002c 04F10C03 		add	r3, r4, #12
 904 0030 22B1     		cbz	r2, .L181
 905              	.L182:
 906 0032 1B68     		ldr	r3, [r3]
 907 0034 5968     		ldr	r1, [r3, #4]
 908 0036 0433     		adds	r3, r3, #4
 909 0038 0029     		cmp	r1, #0
 910 003a FAD1     		bne	.L182
 911              	.L181:
 912 003c 1E60     		str	r6, [r3]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 17


 913 003e 2846     		mov	r0, r5
 914 0040 70BD     		pop	{r4, r5, r6, pc}
 915              	.L190:
 916 0042 0068     		ldr	r0, [r0]
 917 0044 0221     		movs	r1, #2
 918 0046 064A     		ldr	r2, .L191
 919 0048 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 920 004c 3046     		mov	r0, r6
 921 004e 70BD     		pop	{r4, r5, r6, pc}
 922              	.L189:
 923 0050 0068     		ldr	r0, [r0]
 924 0052 0221     		movs	r1, #2
 925 0054 034A     		ldr	r2, .L191+4
 926 0056 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 927 005a 2846     		mov	r0, r5
 928 005c 70BD     		pop	{r4, r5, r6, pc}
 929              	.L192:
 930 005e 00BF     		.align	2
 931              	.L191:
 932 0060 98010000 		.word	.LC13
 933 0064 5C010000 		.word	.LC12
 934              		.size	_ZN7Network18ConnectionAcceptedEP7tcp_pcb, .-_ZN7Network18ConnectionAcceptedEP7tcp_pcb
 935              		.section	.text.conn_accept,"ax",%progbits
 936              		.align	2
 937              		.thumb
 938              		.thumb_func
 939              		.type	conn_accept, %function
 940              	conn_accept:
 941              		@ args = 0, pretend = 0, frame = 0
 942              		@ frame_needed = 0, uses_anonymous_args = 0
 943 0000 70B5     		push	{r4, r5, r6, lr}
 944 0002 1A48     		ldr	r0, .L208
 945 0004 1A4E     		ldr	r6, .L208+4
 946 0006 0C46     		mov	r4, r1
 947 0008 0022     		movs	r2, #0
 948              	.L197:
 949 000a 50F8043F 		ldr	r3, [r0, #4]!
 950 000e 23B1     		cbz	r3, .L194
 951 0010 658B     		ldrh	r5, [r4, #26]
 952 0012 915B     		ldrh	r1, [r2, r6]
 953 0014 8D42     		cmp	r5, r1
 954 0016 18BF     		it	ne
 955 0018 0023     		movne	r3, #0
 956              	.L194:
 957 001a 042A     		cmp	r2, #4
 958 001c 17D0     		beq	.L195
 959 001e 0232     		adds	r2, r2, #2
 960 0020 002B     		cmp	r3, #0
 961 0022 F2D0     		beq	.L197
 962              	.L196:
 963 0024 134B     		ldr	r3, .L208+8
 964 0026 2146     		mov	r1, r4
 965 0028 5868     		ldr	r0, [r3, #4]
 966 002a FFF7FEFF 		bl	_ZN7Network18ConnectionAcceptedEP7tcp_pcb
 967 002e 0146     		mov	r1, r0
 968 0030 B0B1     		cbz	r0, .L198
 969 0032 2046     		mov	r0, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 18


 970 0034 FFF7FEFF 		bl	tcp_arg
 971 0038 2046     		mov	r0, r4
 972 003a 0F49     		ldr	r1, .L208+12
 973 003c FFF7FEFF 		bl	tcp_recv
 974 0040 2046     		mov	r0, r4
 975 0042 0E49     		ldr	r1, .L208+16
 976 0044 FFF7FEFF 		bl	tcp_err
 977 0048 0020     		movs	r0, #0
 978 004a 40B2     		sxtb	r0, r0
 979 004c 70BD     		pop	{r4, r5, r6, pc}
 980              	.L195:
 981 004e 002B     		cmp	r3, #0
 982 0050 E8D1     		bne	.L196
 983 0052 0B4B     		ldr	r3, .L208+20
 984 0054 1B68     		ldr	r3, [r3]
 985 0056 1BB1     		cbz	r3, .L198
 986 0058 5B8B     		ldrh	r3, [r3, #26]
 987 005a 628B     		ldrh	r2, [r4, #26]
 988 005c 9A42     		cmp	r2, r3
 989 005e E1D0     		beq	.L196
 990              	.L198:
 991 0060 2046     		mov	r0, r4
 992 0062 FFF7FEFF 		bl	tcp_abort
 993 0066 F620     		movs	r0, #246
 994 0068 40B2     		sxtb	r0, r0
 995 006a 70BD     		pop	{r4, r5, r6, pc}
 996              	.L209:
 997              		.align	2
 998              	.L208:
 999 006c FCFFFFFF 		.word	.LANCHOR1-4
 1000 0070 00000000 		.word	.LANCHOR0
 1001 0074 00000000 		.word	reprap
 1002 0078 00000000 		.word	conn_recv
 1003 007c 00000000 		.word	conn_err
 1004 0080 00000000 		.word	.LANCHOR11
 1005              		.size	conn_accept, .-conn_accept
 1006              		.section	.text._ZN7Network16ConnectionClosedEP15ConnectionStateb,"ax",%progbits
 1007              		.align	2
 1008              		.global	_ZN7Network16ConnectionClosedEP15ConnectionStateb
 1009              		.thumb
 1010              		.thumb_func
 1011              		.type	_ZN7Network16ConnectionClosedEP15ConnectionStateb, %function
 1012              	_ZN7Network16ConnectionClosedEP15ConnectionStateb:
 1013              		@ args = 0, pretend = 0, frame = 0
 1014              		@ frame_needed = 0, uses_anonymous_args = 0
 1015 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 1016 0004 836A     		ldr	r3, [r0, #40]
 1017 0006 0646     		mov	r6, r0
 1018 0008 8B42     		cmp	r3, r1
 1019 000a 0D46     		mov	r5, r1
 1020 000c 1746     		mov	r7, r2
 1021 000e 64D0     		beq	.L254
 1022              	.L211:
 1023 0010 F36A     		ldr	r3, [r6, #44]
 1024 0012 9D42     		cmp	r5, r3
 1025 0014 04BF     		itt	eq
 1026 0016 0023     		moveq	r3, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 19


 1027 0018 F362     		streq	r3, [r6, #44]
 1028 001a 336B     		ldr	r3, [r6, #48]
 1029 001c 9D42     		cmp	r5, r3
 1030 001e 04BF     		itt	eq
 1031 0020 0023     		moveq	r3, #0
 1032 0022 3363     		streq	r3, [r6, #48]
 1033 0024 3B4B     		ldr	r3, .L262
 1034 0026 2C68     		ldr	r4, [r5]
 1035 0028 1968     		ldr	r1, [r3]
 1036 002a 8D42     		cmp	r5, r1
 1037 002c 04BF     		itt	eq
 1038 002e 0022     		moveq	r2, #0
 1039 0030 1A60     		streq	r2, [r3]
 1040 0032 84B1     		cbz	r4, .L216
 1041 0034 2046     		mov	r0, r4
 1042 0036 0021     		movs	r1, #0
 1043 0038 FFF7FEFF 		bl	tcp_sent
 1044 003c 2046     		mov	r0, r4
 1045 003e 0021     		movs	r1, #0
 1046 0040 FFF7FEFF 		bl	tcp_recv
 1047 0044 2046     		mov	r0, r4
 1048 0046 0021     		movs	r1, #0
 1049 0048 0222     		movs	r2, #2
 1050 004a FFF7FEFF 		bl	tcp_poll
 1051 004e 002F     		cmp	r7, #0
 1052 0050 38D1     		bne	.L255
 1053              	.L217:
 1054 0052 0023     		movs	r3, #0
 1055 0054 2B60     		str	r3, [r5]
 1056              	.L216:
 1057 0056 304B     		ldr	r3, .L262+4
 1058 0058 2946     		mov	r1, r5
 1059 005a 5869     		ldr	r0, [r3, #20]
 1060 005c FFF7FEFF 		bl	_ZN9Webserver14ConnectionLostEP15ConnectionState
 1061 0060 F068     		ldr	r0, [r6, #12]
 1062 0062 0024     		movs	r4, #0
 1063 0064 80B1     		cbz	r0, .L224
 1064 0066 0268     		ldr	r2, [r0]
 1065 0068 AA42     		cmp	r2, r5
 1066 006a 06D0     		beq	.L256
 1067              	.L221:
 1068 006c 4268     		ldr	r2, [r0, #4]
 1069 006e 0446     		mov	r4, r0
 1070              	.L223:
 1071 0070 52B1     		cbz	r2, .L224
 1072              	.L258:
 1073 0072 1046     		mov	r0, r2
 1074 0074 0268     		ldr	r2, [r0]
 1075 0076 AA42     		cmp	r2, r5
 1076 0078 F8D1     		bne	.L221
 1077              	.L256:
 1078 007a FFF7FEFF 		bl	_ZN18NetworkTransaction7DiscardEv
 1079 007e 002C     		cmp	r4, #0
 1080 0080 43D0     		beq	.L257
 1081 0082 6268     		ldr	r2, [r4, #4]
 1082 0084 002A     		cmp	r2, #0
 1083 0086 F4D1     		bne	.L258
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 20


 1084              	.L224:
 1085 0088 EF68     		ldr	r7, [r5, #12]
 1086 008a B7B1     		cbz	r7, .L220
 1087 008c B868     		ldr	r0, [r7, #8]
 1088 008e 08B9     		cbnz	r0, .L230
 1089 0090 05E0     		b	.L229
 1090              	.L259:
 1091 0092 2046     		mov	r0, r4
 1092              	.L230:
 1093 0094 8468     		ldr	r4, [r0, #8]
 1094 0096 FFF7FEFF 		bl	_ZN18NetworkTransaction7DiscardEv
 1095 009a 002C     		cmp	r4, #0
 1096 009c F9D1     		bne	.L259
 1097              	.L229:
 1098 009e 3269     		ldr	r2, [r6, #16]
 1099 00a0 42B1     		cbz	r2, .L228
 1100 00a2 9742     		cmp	r7, r2
 1101 00a4 03D1     		bne	.L234
 1102 00a6 32E0     		b	.L261
 1103              	.L235:
 1104 00a8 9F42     		cmp	r7, r3
 1105 00aa 13D0     		beq	.L233
 1106 00ac 1A46     		mov	r2, r3
 1107              	.L234:
 1108 00ae 5368     		ldr	r3, [r2, #4]
 1109 00b0 002B     		cmp	r3, #0
 1110 00b2 F9D1     		bne	.L235
 1111              	.L228:
 1112 00b4 3846     		mov	r0, r7
 1113 00b6 FFF7FEFF 		bl	_ZN18NetworkTransaction7DiscardEv
 1114              	.L220:
 1115 00ba 736B     		ldr	r3, [r6, #52]
 1116 00bc 2B61     		str	r3, [r5, #16]
 1117 00be 7563     		str	r5, [r6, #52]
 1118 00c0 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 1119              	.L255:
 1120 00c4 2046     		mov	r0, r4
 1121 00c6 0021     		movs	r1, #0
 1122 00c8 FFF7FEFF 		bl	tcp_err
 1123 00cc 2046     		mov	r0, r4
 1124 00ce FFF7FEFF 		bl	tcp_close
 1125 00d2 BEE7     		b	.L217
 1126              	.L233:
 1127 00d4 7B68     		ldr	r3, [r7, #4]
 1128 00d6 5360     		str	r3, [r2, #4]
 1129 00d8 ECE7     		b	.L228
 1130              	.L254:
 1131 00da 104C     		ldr	r4, .L262+8
 1132 00dc 4FF00008 		mov	r8, #0
 1133 00e0 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 1134 00e2 C0F82880 		str	r8, [r0, #40]
 1135 00e6 6BB1     		cbz	r3, .L212
 1136 00e8 DFF83490 		ldr	r9, .L262+12
 1137 00ec D9F80000 		ldr	r0, [r9]
 1138 00f0 40B1     		cbz	r0, .L212
 1139 00f2 4146     		mov	r1, r8
 1140 00f4 FFF7FEFF 		bl	tcp_accept
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 21


 1141 00f8 D9F80000 		ldr	r0, [r9]
 1142 00fc FFF7FEFF 		bl	tcp_close
 1143 0100 C9F80080 		str	r8, [r9]
 1144              	.L212:
 1145 0104 0023     		movs	r3, #0
 1146 0106 2370     		strb	r3, [r4]
 1147 0108 82E7     		b	.L211
 1148              	.L257:
 1149 010a F268     		ldr	r2, [r6, #12]
 1150 010c B0E7     		b	.L223
 1151              	.L261:
 1152 010e 7B68     		ldr	r3, [r7, #4]
 1153 0110 3361     		str	r3, [r6, #16]
 1154 0112 CFE7     		b	.L228
 1155              	.L263:
 1156              		.align	2
 1157              	.L262:
 1158 0114 00000000 		.word	.LANCHOR9
 1159 0118 00000000 		.word	reprap
 1160 011c 00000000 		.word	.LANCHOR12
 1161 0120 00000000 		.word	.LANCHOR11
 1162              		.size	_ZN7Network16ConnectionClosedEP15ConnectionStateb, .-_ZN7Network16ConnectionClosedEP15Connec
 1163              		.section	.text.conn_err,"ax",%progbits
 1164              		.align	2
 1165              		.thumb
 1166              		.thumb_func
 1167              		.type	conn_err, %function
 1168              	conn_err:
 1169              		@ args = 0, pretend = 0, frame = 0
 1170              		@ frame_needed = 0, uses_anonymous_args = 0
 1171 0000 38B5     		push	{r3, r4, r5, lr}
 1172 0002 094D     		ldr	r5, .L266
 1173 0004 0446     		mov	r4, r0
 1174 0006 0B46     		mov	r3, r1
 1175 0008 2868     		ldr	r0, [r5]
 1176 000a 0221     		movs	r1, #2
 1177 000c 074A     		ldr	r2, .L266+4
 1178 000e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 1179 0012 44B1     		cbz	r4, .L264
 1180 0014 0123     		movs	r3, #1
 1181 0016 6868     		ldr	r0, [r5, #4]
 1182 0018 6375     		strb	r3, [r4, #21]
 1183 001a 2146     		mov	r1, r4
 1184 001c 0022     		movs	r2, #0
 1185 001e BDE83840 		pop	{r3, r4, r5, lr}
 1186 0022 FFF7FEBF 		b	_ZN7Network16ConnectionClosedEP15ConnectionStateb
 1187              	.L264:
 1188 0026 38BD     		pop	{r3, r4, r5, pc}
 1189              	.L267:
 1190              		.align	2
 1191              	.L266:
 1192 0028 00000000 		.word	reprap
 1193 002c D0010000 		.word	.LC14
 1194              		.size	conn_err, .-conn_err
 1195              		.section	.text._ZN7Network26ConnectionClosedGracefullyEP15ConnectionState,"ax",%progbits
 1196              		.align	2
 1197              		.global	_ZN7Network26ConnectionClosedGracefullyEP15ConnectionState
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 22


 1198              		.thumb
 1199              		.thumb_func
 1200              		.type	_ZN7Network26ConnectionClosedGracefullyEP15ConnectionState, %function
 1201              	_ZN7Network26ConnectionClosedGracefullyEP15ConnectionState:
 1202              		@ args = 0, pretend = 0, frame = 0
 1203              		@ frame_needed = 0, uses_anonymous_args = 0
 1204 0000 70B5     		push	{r4, r5, r6, lr}
 1205 0002 8568     		ldr	r5, [r0, #8]
 1206 0004 0646     		mov	r6, r0
 1207 0006 0C46     		mov	r4, r1
 1208 0008 002D     		cmp	r5, #0
 1209 000a 2FD0     		beq	.L283
 1210 000c 0868     		ldr	r0, [r1]
 1211 000e 0021     		movs	r1, #0
 1212 0010 FFF7FEFF 		bl	tcp_sent
 1213 0014 2068     		ldr	r0, [r4]
 1214 0016 0021     		movs	r1, #0
 1215 0018 FFF7FEFF 		bl	tcp_recv
 1216 001c 0222     		movs	r2, #2
 1217 001e 2068     		ldr	r0, [r4]
 1218 0020 0021     		movs	r1, #0
 1219 0022 FFF7FEFF 		bl	tcp_poll
 1220 0026 2068     		ldr	r0, [r4]
 1221 0028 0021     		movs	r1, #0
 1222 002a FFF7FEFF 		bl	tcp_err
 1223 002e 2068     		ldr	r0, [r4]
 1224 0030 FFF7FEFF 		bl	tcp_close
 1225 0034 0023     		movs	r3, #0
 1226 0036 2360     		str	r3, [r4]
 1227 0038 E068     		ldr	r0, [r4, #12]
 1228 003a 08B1     		cbz	r0, .L271
 1229 003c FFF7FEFF 		bl	_ZN18NetworkTransaction5CloseEv
 1230              	.L271:
 1231 0040 6B68     		ldr	r3, [r5, #4]
 1232 0042 2246     		mov	r2, r4
 1233 0044 B360     		str	r3, [r6, #8]
 1234 0046 2846     		mov	r0, r5
 1235 0048 0423     		movs	r3, #4
 1236 004a 0021     		movs	r1, #0
 1237 004c FFF7FEFF 		bl	_ZN18NetworkTransaction3SetEP4pbufP15ConnectionState17TransactionStatus
 1238 0050 0023     		movs	r3, #0
 1239 0052 6B60     		str	r3, [r5, #4]
 1240 0054 F268     		ldr	r2, [r6, #12]
 1241 0056 06F10C03 		add	r3, r6, #12
 1242 005a 22B1     		cbz	r2, .L272
 1243              	.L273:
 1244 005c 1B68     		ldr	r3, [r3]
 1245 005e 5A68     		ldr	r2, [r3, #4]
 1246 0060 0433     		adds	r3, r3, #4
 1247 0062 002A     		cmp	r2, #0
 1248 0064 FAD1     		bne	.L273
 1249              	.L272:
 1250 0066 1D60     		str	r5, [r3]
 1251 0068 0120     		movs	r0, #1
 1252 006a 70BD     		pop	{r4, r5, r6, pc}
 1253              	.L283:
 1254 006c 0068     		ldr	r0, [r0]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 23


 1255 006e 0221     		movs	r1, #2
 1256 0070 024A     		ldr	r2, .L284
 1257 0072 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1258 0076 2846     		mov	r0, r5
 1259 0078 70BD     		pop	{r4, r5, r6, pc}
 1260              	.L285:
 1261 007a 00BF     		.align	2
 1262              	.L284:
 1263 007c F4010000 		.word	.LC15
 1264              		.size	_ZN7Network26ConnectionClosedGracefullyEP15ConnectionState, .-_ZN7Network26ConnectionClosedG
 1265              		.section	.text.conn_recv,"ax",%progbits
 1266              		.align	2
 1267              		.thumb
 1268              		.thumb_func
 1269              		.type	conn_recv, %function
 1270              	conn_recv:
 1271              		@ args = 0, pretend = 0, frame = 0
 1272              		@ frame_needed = 0, uses_anonymous_args = 0
 1273 0000 70B5     		push	{r4, r5, r6, lr}
 1274 0002 0D46     		mov	r5, r1
 1275 0004 1446     		mov	r4, r2
 1276 0006 5BB9     		cbnz	r3, .L289
 1277 0008 50B1     		cbz	r0, .L289
 1278 000a 0668     		ldr	r6, [r0]
 1279 000c 124B     		ldr	r3, .L300
 1280 000e 8E42     		cmp	r6, r1
 1281 0010 10D1     		bne	.L298
 1282 0012 42B1     		cbz	r2, .L291
 1283 0014 0246     		mov	r2, r0
 1284 0016 2146     		mov	r1, r4
 1285 0018 5868     		ldr	r0, [r3, #4]
 1286 001a FFF7FEFF 		bl	_ZN7Network12ReceiveInputEP4pbufP15ConnectionState
 1287 001e 98B1     		cbz	r0, .L299
 1288              	.L289:
 1289 0020 0020     		movs	r0, #0
 1290              	.L288:
 1291 0022 40B2     		sxtb	r0, r0
 1292 0024 70BD     		pop	{r4, r5, r6, pc}
 1293              	.L291:
 1294 0026 0146     		mov	r1, r0
 1295 0028 5868     		ldr	r0, [r3, #4]
 1296 002a FFF7FEFF 		bl	_ZN7Network26ConnectionClosedGracefullyEP15ConnectionState
 1297 002e 0028     		cmp	r0, #0
 1298 0030 F6D1     		bne	.L289
 1299 0032 0CE0     		b	.L293
 1300              	.L298:
 1301 0034 1868     		ldr	r0, [r3]
 1302 0036 0221     		movs	r1, #2
 1303 0038 084A     		ldr	r2, .L300+4
 1304 003a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1305 003e 2846     		mov	r0, r5
 1306 0040 FFF7FEFF 		bl	tcp_abort
 1307 0044 F620     		movs	r0, #246
 1308 0046 ECE7     		b	.L288
 1309              	.L299:
 1310 0048 2046     		mov	r0, r4
 1311 004a FFF7FEFF 		bl	pbuf_free
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 24


 1312              	.L293:
 1313 004e 3046     		mov	r0, r6
 1314 0050 FFF7FEFF 		bl	tcp_abort
 1315 0054 F620     		movs	r0, #246
 1316 0056 E4E7     		b	.L288
 1317              	.L301:
 1318              		.align	2
 1319              	.L300:
 1320 0058 00000000 		.word	reprap
 1321 005c 34020000 		.word	.LC16
 1322              		.size	conn_recv, .-conn_recv
 1323              		.section	.text._ZN7Network4LockEv,"ax",%progbits
 1324              		.align	2
 1325              		.global	_ZN7Network4LockEv
 1326              		.thumb
 1327              		.thumb_func
 1328              		.type	_ZN7Network4LockEv, %function
 1329              	_ZN7Network4LockEv:
 1330              		@ args = 0, pretend = 0, frame = 0
 1331              		@ frame_needed = 0, uses_anonymous_args = 0
 1332              		@ link register save eliminated.
 1333 0000 034B     		ldr	r3, .L305
 1334 0002 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 1335 0004 12B9     		cbnz	r2, .L304
 1336 0006 0120     		movs	r0, #1
 1337 0008 1870     		strb	r0, [r3]
 1338 000a 7047     		bx	lr
 1339              	.L304:
 1340 000c 0020     		movs	r0, #0
 1341 000e 7047     		bx	lr
 1342              	.L306:
 1343              		.align	2
 1344              	.L305:
 1345 0010 00000000 		.word	.LANCHOR2
 1346              		.size	_ZN7Network4LockEv, .-_ZN7Network4LockEv
 1347              		.section	.text._ZN7Network6UnlockEv,"ax",%progbits
 1348              		.align	2
 1349              		.global	_ZN7Network6UnlockEv
 1350              		.thumb
 1351              		.thumb_func
 1352              		.type	_ZN7Network6UnlockEv, %function
 1353              	_ZN7Network6UnlockEv:
 1354              		@ args = 0, pretend = 0, frame = 0
 1355              		@ frame_needed = 0, uses_anonymous_args = 0
 1356              		@ link register save eliminated.
 1357 0000 014B     		ldr	r3, .L308
 1358 0002 0022     		movs	r2, #0
 1359 0004 1A70     		strb	r2, [r3]
 1360 0006 7047     		bx	lr
 1361              	.L309:
 1362              		.align	2
 1363              	.L308:
 1364 0008 00000000 		.word	.LANCHOR2
 1365              		.size	_ZN7Network6UnlockEv, .-_ZN7Network6UnlockEv
 1366              		.section	.text._ZNK7Network6InLwipEv,"ax",%progbits
 1367              		.align	2
 1368              		.global	_ZNK7Network6InLwipEv
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 25


 1369              		.thumb
 1370              		.thumb_func
 1371              		.type	_ZNK7Network6InLwipEv, %function
 1372              	_ZNK7Network6InLwipEv:
 1373              		@ args = 0, pretend = 0, frame = 0
 1374              		@ frame_needed = 0, uses_anonymous_args = 0
 1375              		@ link register save eliminated.
 1376 0000 014B     		ldr	r3, .L311
 1377 0002 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 1378 0004 7047     		bx	lr
 1379              	.L312:
 1380 0006 00BF     		.align	2
 1381              	.L311:
 1382 0008 00000000 		.word	.LANCHOR2
 1383              		.size	_ZNK7Network6InLwipEv, .-_ZNK7Network6InLwipEv
 1384              		.section	.text._ZNK7Network12GetIPAddressEv,"ax",%progbits
 1385              		.align	2
 1386              		.global	_ZNK7Network12GetIPAddressEv
 1387              		.thumb
 1388              		.thumb_func
 1389              		.type	_ZNK7Network12GetIPAddressEv, %function
 1390              	_ZNK7Network12GetIPAddressEv:
 1391              		@ args = 0, pretend = 0, frame = 0
 1392              		@ frame_needed = 0, uses_anonymous_args = 0
 1393              		@ link register save eliminated.
 1394 0000 FFF7FEBF 		b	ethernet_get_ipaddress
 1395              		.size	_ZNK7Network12GetIPAddressEv, .-_ZNK7Network12GetIPAddressEv
 1396              		.section	.text._ZN7Network12SetIPAddressEPKhS1_S1_,"ax",%progbits
 1397              		.align	2
 1398              		.global	_ZN7Network12SetIPAddressEPKhS1_S1_
 1399              		.thumb
 1400              		.thumb_func
 1401              		.type	_ZN7Network12SetIPAddressEPKhS1_S1_, %function
 1402              	_ZN7Network12SetIPAddressEPKhS1_S1_:
 1403              		@ args = 0, pretend = 0, frame = 0
 1404              		@ frame_needed = 0, uses_anonymous_args = 0
 1405              		@ link register save eliminated.
 1406 0000 10B4     		push	{r4}
 1407 0002 047D     		ldrb	r4, [r0, #20]	@ zero_extendqisi2
 1408 0004 033C     		subs	r4, r4, #3
 1409 0006 012C     		cmp	r4, #1
 1410 0008 02D9     		bls	.L316
 1411 000a 5DF8044B 		ldr	r4, [sp], #4
 1412 000e 7047     		bx	lr
 1413              	.L316:
 1414 0010 0846     		mov	r0, r1
 1415 0012 5DF8044B 		ldr	r4, [sp], #4
 1416 0016 1146     		mov	r1, r2
 1417 0018 1A46     		mov	r2, r3
 1418 001a FFF7FEBF 		b	ethernet_set_configuration
 1419              		.size	_ZN7Network12SetIPAddressEPKhS1_S1_, .-_ZN7Network12SetIPAddressEPKhS1_S1_
 1420 001e 00BF     		.section	.text._ZN7Network11SetHostnameEPKc,"ax",%progbits
 1421              		.align	2
 1422              		.global	_ZN7Network11SetHostnameEPKc
 1423              		.thumb
 1424              		.thumb_func
 1425              		.type	_ZN7Network11SetHostnameEPKc, %function
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 26


 1426              	_ZN7Network11SetHostnameEPKc:
 1427              		@ args = 0, pretend = 0, frame = 0
 1428              		@ frame_needed = 0, uses_anonymous_args = 0
 1429              		@ link register save eliminated.
 1430 0000 F0B4     		push	{r4, r5, r6, r7}
 1431 0002 0139     		subs	r1, r1, #1
 1432 0004 0746     		mov	r7, r0
 1433 0006 0022     		movs	r2, #0
 1434              	.L318:
 1435 0008 11F8013F 		ldrb	r3, [r1, #1]!	@ zero_extendqisi2
 1436 000c BD18     		adds	r5, r7, r2
 1437 000e A3F14104 		sub	r4, r3, #65
 1438 0012 03F12006 		add	r6, r3, #32
 1439 0016 9BB1     		cbz	r3, .L322
 1440 0018 0E2A     		cmp	r2, #14
 1441 001a 12D8     		bhi	.L325
 1442 001c 192C     		cmp	r4, #25
 1443 001e 98BF     		it	ls
 1444 0020 F3B2     		uxtbls	r3, r6
 1445 0022 A3F16104 		sub	r4, r3, #97
 1446 0026 192C     		cmp	r4, #25
 1447 0028 A3F13006 		sub	r6, r3, #48
 1448 002c 05D9     		bls	.L320
 1449 002e 092E     		cmp	r6, #9
 1450 0030 03D9     		bls	.L320
 1451 0032 2D2B     		cmp	r3, #45
 1452 0034 01D0     		beq	.L320
 1453 0036 5F2B     		cmp	r3, #95
 1454 0038 E6D1     		bne	.L318
 1455              	.L320:
 1456 003a 2B76     		strb	r3, [r5, #24]
 1457 003c 0132     		adds	r2, r2, #1
 1458 003e E3E7     		b	.L318
 1459              	.L322:
 1460 0040 3AB1     		cbz	r2, .L330
 1461              	.L325:
 1462 0042 0023     		movs	r3, #0
 1463 0044 3A44     		add	r2, r2, r7
 1464 0046 1376     		strb	r3, [r2, #24]
 1465 0048 3B7D     		ldrb	r3, [r7, #20]	@ zero_extendqisi2
 1466 004a 042B     		cmp	r3, #4
 1467 004c 09D0     		beq	.L331
 1468              	.L317:
 1469 004e F0BC     		pop	{r4, r5, r6, r7}
 1470 0050 7047     		bx	lr
 1471              	.L330:
 1472 0052 054B     		ldr	r3, .L332
 1473 0054 1868     		ldr	r0, [r3]	@ unaligned
 1474 0056 1B79     		ldrb	r3, [r3, #4]	@ zero_extendqisi2
 1475 0058 B861     		str	r0, [r7, #24]	@ unaligned
 1476 005a 3B77     		strb	r3, [r7, #28]
 1477 005c 3B7D     		ldrb	r3, [r7, #20]	@ zero_extendqisi2
 1478 005e 042B     		cmp	r3, #4
 1479 0060 F5D1     		bne	.L317
 1480              	.L331:
 1481 0062 F0BC     		pop	{r4, r5, r6, r7}
 1482 0064 FFF7FEBF 		b	mdns_update_hostname
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 27


 1483              	.L333:
 1484              		.align	2
 1485              	.L332:
 1486 0068 00000000 		.word	.LC0
 1487              		.size	_ZN7Network11SetHostnameEPKc, .-_ZN7Network11SetHostnameEPKc
 1488              		.section	.text._ZN7Network5StartEv,"ax",%progbits
 1489              		.align	2
 1490              		.global	_ZN7Network5StartEv
 1491              		.thumb
 1492              		.thumb_func
 1493              		.type	_ZN7Network5StartEv, %function
 1494              	_ZN7Network5StartEv:
 1495              		@ args = 0, pretend = 0, frame = 0
 1496              		@ frame_needed = 0, uses_anonymous_args = 0
 1497 0000 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 1498 0002 10B5     		push	{r4, lr}
 1499 0004 0446     		mov	r4, r0
 1500 0006 13B1     		cbz	r3, .L338
 1501 0008 012B     		cmp	r3, #1
 1502 000a 0AD0     		beq	.L336
 1503 000c 10BD     		pop	{r4, pc}
 1504              	.L338:
 1505 000e 0146     		mov	r1, r0
 1506 0010 51F8180B 		ldr	r0, [r1], #24
 1507 0014 A430     		adds	r0, r0, #164
 1508 0016 FFF7FEFF 		bl	ethernet_configure_interface
 1509 001a FFF7FEFF 		bl	init_ethernet
 1510 001e FFF7FEFF 		bl	netbios_init
 1511              	.L336:
 1512 0022 0122     		movs	r2, #1
 1513 0024 0223     		movs	r3, #2
 1514 0026 E275     		strb	r2, [r4, #23]
 1515 0028 2375     		strb	r3, [r4, #20]
 1516 002a 10BD     		pop	{r4, pc}
 1517              		.size	_ZN7Network5StartEv, .-_ZN7Network5StartEv
 1518              		.section	.text._ZN7Network6EnableEv,"ax",%progbits
 1519              		.align	2
 1520              		.global	_ZN7Network6EnableEv
 1521              		.thumb
 1522              		.thumb_func
 1523              		.type	_ZN7Network6EnableEv, %function
 1524              	_ZN7Network6EnableEv:
 1525              		@ args = 0, pretend = 0, frame = 0
 1526              		@ frame_needed = 0, uses_anonymous_args = 0
 1527              		@ link register save eliminated.
 1528 0000 827D     		ldrb	r2, [r0, #22]	@ zero_extendqisi2
 1529 0002 0121     		movs	r1, #1
 1530 0004 4175     		strb	r1, [r0, #21]
 1531 0006 02B9     		cbnz	r2, .L341
 1532 0008 7047     		bx	lr
 1533              	.L341:
 1534 000a FFF7FEBF 		b	_ZN7Network5StartEv
 1535              		.size	_ZN7Network6EnableEv, .-_ZN7Network6EnableEv
 1536 000e 00BF     		.section	.text._ZN7Network8ActivateEv,"ax",%progbits
 1537              		.align	2
 1538              		.global	_ZN7Network8ActivateEv
 1539              		.thumb
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 28


 1540              		.thumb_func
 1541              		.type	_ZN7Network8ActivateEv, %function
 1542              	_ZN7Network8ActivateEv:
 1543              		@ args = 0, pretend = 0, frame = 0
 1544              		@ frame_needed = 0, uses_anonymous_args = 0
 1545              		@ link register save eliminated.
 1546 0000 427D     		ldrb	r2, [r0, #21]	@ zero_extendqisi2
 1547 0002 0121     		movs	r1, #1
 1548 0004 8175     		strb	r1, [r0, #22]
 1549 0006 02B9     		cbnz	r2, .L344
 1550 0008 7047     		bx	lr
 1551              	.L344:
 1552 000a FFF7FEBF 		b	_ZN7Network5StartEv
 1553              		.size	_ZN7Network8ActivateEv, .-_ZN7Network8ActivateEv
 1554 000e 00BF     		.section	.text._ZN7Network4StopEv,"ax",%progbits
 1555              		.align	2
 1556              		.global	_ZN7Network4StopEv
 1557              		.thumb
 1558              		.thumb_func
 1559              		.type	_ZN7Network4StopEv, %function
 1560              	_ZN7Network4StopEv:
 1561              		@ args = 0, pretend = 0, frame = 0
 1562              		@ frame_needed = 0, uses_anonymous_args = 0
 1563 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1564 0002 037D     		ldrb	r3, [r0, #20]	@ zero_extendqisi2
 1565 0004 0546     		mov	r5, r0
 1566 0006 012B     		cmp	r3, #1
 1567 0008 13D9     		bls	.L345
 1568 000a 0A4C     		ldr	r4, .L353
 1569 000c 0027     		movs	r7, #0
 1570 000e 04F10C06 		add	r6, r4, #12
 1571              	.L349:
 1572 0012 54F8043B 		ldr	r3, [r4], #4
 1573 0016 1846     		mov	r0, r3
 1574 0018 1BB1     		cbz	r3, .L347
 1575 001a FFF7FEFF 		bl	tcp_close
 1576 001e 44F8047C 		str	r7, [r4, #-4]
 1577              	.L347:
 1578 0022 B442     		cmp	r4, r6
 1579 0024 F5D1     		bne	.L349
 1580 0026 0020     		movs	r0, #0
 1581 0028 E875     		strb	r0, [r5, #23]
 1582 002a FFF7FEFF 		bl	ethernet_set_rx_callback
 1583 002e 0123     		movs	r3, #1
 1584 0030 2B75     		strb	r3, [r5, #20]
 1585              	.L345:
 1586 0032 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1587              	.L354:
 1588              		.align	2
 1589              	.L353:
 1590 0034 00000000 		.word	.LANCHOR1
 1591              		.size	_ZN7Network4StopEv, .-_ZN7Network4StopEv
 1592              		.section	.text._ZN7Network7DisableEv,"ax",%progbits
 1593              		.align	2
 1594              		.global	_ZN7Network7DisableEv
 1595              		.thumb
 1596              		.thumb_func
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 29


 1597              		.type	_ZN7Network7DisableEv, %function
 1598              	_ZN7Network7DisableEv:
 1599              		@ args = 0, pretend = 0, frame = 0
 1600              		@ frame_needed = 0, uses_anonymous_args = 0
 1601              		@ link register save eliminated.
 1602 0000 827D     		ldrb	r2, [r0, #22]	@ zero_extendqisi2
 1603 0002 0021     		movs	r1, #0
 1604 0004 4175     		strb	r1, [r0, #21]
 1605 0006 02B9     		cbnz	r2, .L357
 1606 0008 7047     		bx	lr
 1607              	.L357:
 1608 000a FFF7FEBF 		b	_ZN7Network4StopEv
 1609              		.size	_ZN7Network7DisableEv, .-_ZN7Network7DisableEv
 1610 000e 00BF     		.section	.text._ZN7Network14GetTransactionEPK15ConnectionState,"ax",%progbits
 1611              		.align	2
 1612              		.global	_ZN7Network14GetTransactionEPK15ConnectionState
 1613              		.thumb
 1614              		.thumb_func
 1615              		.type	_ZN7Network14GetTransactionEPK15ConnectionState, %function
 1616              	_ZN7Network14GetTransactionEPK15ConnectionState:
 1617              		@ args = 0, pretend = 0, frame = 0
 1618              		@ frame_needed = 0, uses_anonymous_args = 0
 1619              		@ link register save eliminated.
 1620 0000 30B4     		push	{r4, r5}
 1621 0002 C468     		ldr	r4, [r0, #12]
 1622 0004 0546     		mov	r5, r0
 1623 0006 ECB1     		cbz	r4, .L367
 1624 0008 E1B1     		cbz	r1, .L367
 1625 000a 2368     		ldr	r3, [r4]
 1626 000c 9942     		cmp	r1, r3
 1627 000e 19D0     		beq	.L367
 1628 0010 6268     		ldr	r2, [r4, #4]
 1629 0012 D2B1     		cbz	r2, .L368
 1630 0014 1368     		ldr	r3, [r2]
 1631 0016 9942     		cmp	r1, r3
 1632 0018 04D1     		bne	.L364
 1633 001a 09E0     		b	.L373
 1634              	.L362:
 1635 001c 1C68     		ldr	r4, [r3]
 1636 001e A142     		cmp	r1, r4
 1637 0020 08D0     		beq	.L363
 1638 0022 1A46     		mov	r2, r3
 1639              	.L364:
 1640 0024 5368     		ldr	r3, [r2, #4]
 1641 0026 002B     		cmp	r3, #0
 1642 0028 F8D1     		bne	.L362
 1643 002a 1846     		mov	r0, r3
 1644              	.L371:
 1645 002c 30BC     		pop	{r4, r5}
 1646 002e 7047     		bx	lr
 1647              	.L373:
 1648 0030 1346     		mov	r3, r2
 1649 0032 2246     		mov	r2, r4
 1650              	.L363:
 1651 0034 5968     		ldr	r1, [r3, #4]
 1652 0036 1846     		mov	r0, r3
 1653 0038 5160     		str	r1, [r2, #4]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 30


 1654 003a EA68     		ldr	r2, [r5, #12]
 1655 003c 5A60     		str	r2, [r3, #4]
 1656 003e EB60     		str	r3, [r5, #12]
 1657 0040 30BC     		pop	{r4, r5}
 1658 0042 7047     		bx	lr
 1659              	.L367:
 1660 0044 2046     		mov	r0, r4
 1661 0046 30BC     		pop	{r4, r5}
 1662 0048 7047     		bx	lr
 1663              	.L368:
 1664 004a 1046     		mov	r0, r2
 1665 004c EEE7     		b	.L371
 1666              		.size	_ZN7Network14GetTransactionEPK15ConnectionState, .-_ZN7Network14GetTransactionEPK15Connectio
 1667 004e 00BF     		.section	.text._ZN7Network17AppendTransactionEPVP18NetworkTransactionS1_,"ax",%progbits
 1668              		.align	2
 1669              		.global	_ZN7Network17AppendTransactionEPVP18NetworkTransactionS1_
 1670              		.thumb
 1671              		.thumb_func
 1672              		.type	_ZN7Network17AppendTransactionEPVP18NetworkTransactionS1_, %function
 1673              	_ZN7Network17AppendTransactionEPVP18NetworkTransactionS1_:
 1674              		@ args = 0, pretend = 0, frame = 0
 1675              		@ frame_needed = 0, uses_anonymous_args = 0
 1676              		@ link register save eliminated.
 1677 0000 0023     		movs	r3, #0
 1678 0002 5360     		str	r3, [r2, #4]
 1679 0004 0B68     		ldr	r3, [r1]
 1680 0006 23B1     		cbz	r3, .L375
 1681              	.L376:
 1682 0008 0968     		ldr	r1, [r1]
 1683 000a 4B68     		ldr	r3, [r1, #4]
 1684 000c 0431     		adds	r1, r1, #4
 1685 000e 002B     		cmp	r3, #0
 1686 0010 FAD1     		bne	.L376
 1687              	.L375:
 1688 0012 0A60     		str	r2, [r1]
 1689 0014 7047     		bx	lr
 1690              		.size	_ZN7Network17AppendTransactionEPVP18NetworkTransactionS1_, .-_ZN7Network17AppendTransactionE
 1691 0016 00BF     		.section	.text._ZN7Network18PrependTransactionEPVP18NetworkTransactionS1_,"ax",%progbits
 1692              		.align	2
 1693              		.global	_ZN7Network18PrependTransactionEPVP18NetworkTransactionS1_
 1694              		.thumb
 1695              		.thumb_func
 1696              		.type	_ZN7Network18PrependTransactionEPVP18NetworkTransactionS1_, %function
 1697              	_ZN7Network18PrependTransactionEPVP18NetworkTransactionS1_:
 1698              		@ args = 0, pretend = 0, frame = 0
 1699              		@ frame_needed = 0, uses_anonymous_args = 0
 1700              		@ link register save eliminated.
 1701 0000 0B68     		ldr	r3, [r1]
 1702 0002 5360     		str	r3, [r2, #4]
 1703 0004 0A60     		str	r2, [r1]
 1704 0006 7047     		bx	lr
 1705              		.size	_ZN7Network18PrependTransactionEPVP18NetworkTransactionS1_, .-_ZN7Network18PrependTransactio
 1706              		.section	.text._ZN7Network11GetHttpPortEv,"ax",%progbits
 1707              		.align	2
 1708              		.global	_ZN7Network11GetHttpPortEv
 1709              		.thumb
 1710              		.thumb_func
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 31


 1711              		.type	_ZN7Network11GetHttpPortEv, %function
 1712              	_ZN7Network11GetHttpPortEv:
 1713              		@ args = 0, pretend = 0, frame = 0
 1714              		@ frame_needed = 0, uses_anonymous_args = 0
 1715              		@ link register save eliminated.
 1716 0000 014B     		ldr	r3, .L385
 1717 0002 1888     		ldrh	r0, [r3]
 1718 0004 7047     		bx	lr
 1719              	.L386:
 1720 0006 00BF     		.align	2
 1721              	.L385:
 1722 0008 00000000 		.word	.LANCHOR0
 1723              		.size	_ZN7Network11GetHttpPortEv, .-_ZN7Network11GetHttpPortEv
 1724              		.section	.text._ZN7Network10GetFtpPortEv,"ax",%progbits
 1725              		.align	2
 1726              		.global	_ZN7Network10GetFtpPortEv
 1727              		.thumb
 1728              		.thumb_func
 1729              		.type	_ZN7Network10GetFtpPortEv, %function
 1730              	_ZN7Network10GetFtpPortEv:
 1731              		@ args = 0, pretend = 0, frame = 0
 1732              		@ frame_needed = 0, uses_anonymous_args = 0
 1733              		@ link register save eliminated.
 1734 0000 014B     		ldr	r3, .L388
 1735 0002 5888     		ldrh	r0, [r3, #2]
 1736 0004 7047     		bx	lr
 1737              	.L389:
 1738 0006 00BF     		.align	2
 1739              	.L388:
 1740 0008 00000000 		.word	.LANCHOR0
 1741              		.size	_ZN7Network10GetFtpPortEv, .-_ZN7Network10GetFtpPortEv
 1742              		.section	.text._ZN7Network13GetTelnetPortEv,"ax",%progbits
 1743              		.align	2
 1744              		.global	_ZN7Network13GetTelnetPortEv
 1745              		.thumb
 1746              		.thumb_func
 1747              		.type	_ZN7Network13GetTelnetPortEv, %function
 1748              	_ZN7Network13GetTelnetPortEv:
 1749              		@ args = 0, pretend = 0, frame = 0
 1750              		@ frame_needed = 0, uses_anonymous_args = 0
 1751              		@ link register save eliminated.
 1752 0000 014B     		ldr	r3, .L391
 1753 0002 9888     		ldrh	r0, [r3, #4]
 1754 0004 7047     		bx	lr
 1755              	.L392:
 1756 0006 00BF     		.align	2
 1757              	.L391:
 1758 0008 00000000 		.word	.LANCHOR0
 1759              		.size	_ZN7Network13GetTelnetPortEv, .-_ZN7Network13GetTelnetPortEv
 1760              		.section	.text._ZN7Network11GetDataPortEv,"ax",%progbits
 1761              		.align	2
 1762              		.global	_ZN7Network11GetDataPortEv
 1763              		.thumb
 1764              		.thumb_func
 1765              		.type	_ZN7Network11GetDataPortEv, %function
 1766              	_ZN7Network11GetDataPortEv:
 1767              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 32


 1768              		@ frame_needed = 0, uses_anonymous_args = 0
 1769              		@ link register save eliminated.
 1770 0000 044B     		ldr	r3, .L397
 1771 0002 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 1772 0004 23B9     		cbnz	r3, .L395
 1773 0006 044B     		ldr	r3, .L397+4
 1774 0008 1868     		ldr	r0, [r3]
 1775 000a 10B1     		cbz	r0, .L394
 1776 000c 408B     		ldrh	r0, [r0, #26]
 1777 000e 7047     		bx	lr
 1778              	.L395:
 1779 0010 0020     		movs	r0, #0
 1780              	.L394:
 1781 0012 7047     		bx	lr
 1782              	.L398:
 1783              		.align	2
 1784              	.L397:
 1785 0014 00000000 		.word	.LANCHOR12
 1786 0018 00000000 		.word	.LANCHOR11
 1787              		.size	_ZN7Network11GetDataPortEv, .-_ZN7Network11GetDataPortEv
 1788              		.section	.text._ZN7Network12OpenDataPortEt,"ax",%progbits
 1789              		.align	2
 1790              		.global	_ZN7Network12OpenDataPortEt
 1791              		.thumb
 1792              		.thumb_func
 1793              		.type	_ZN7Network12OpenDataPortEt, %function
 1794              	_ZN7Network12OpenDataPortEt:
 1795              		@ args = 0, pretend = 0, frame = 0
 1796              		@ frame_needed = 0, uses_anonymous_args = 0
 1797 0000 38B5     		push	{r3, r4, r5, lr}
 1798 0002 0B4B     		ldr	r3, .L400
 1799 0004 0022     		movs	r2, #0
 1800 0006 1A70     		strb	r2, [r3]
 1801 0008 0D46     		mov	r5, r1
 1802 000a FFF7FEFF 		bl	tcp_new
 1803 000e 2A46     		mov	r2, r5
 1804 0010 0446     		mov	r4, r0
 1805 0012 0849     		ldr	r1, .L400+4
 1806 0014 FFF7FEFF 		bl	tcp_bind
 1807 0018 2046     		mov	r0, r4
 1808 001a FF21     		movs	r1, #255
 1809 001c FFF7FEFF 		bl	tcp_listen_with_backlog
 1810 0020 054B     		ldr	r3, .L400+8
 1811 0022 0649     		ldr	r1, .L400+12
 1812 0024 1860     		str	r0, [r3]
 1813 0026 BDE83840 		pop	{r3, r4, r5, lr}
 1814 002a FFF7FEBF 		b	tcp_accept
 1815              	.L401:
 1816 002e 00BF     		.align	2
 1817              	.L400:
 1818 0030 00000000 		.word	.LANCHOR12
 1819 0034 00000000 		.word	ip_addr_any
 1820 0038 00000000 		.word	.LANCHOR11
 1821 003c 00000000 		.word	conn_accept
 1822              		.size	_ZN7Network12OpenDataPortEt, .-_ZN7Network12OpenDataPortEt
 1823              		.section	.text._ZN7Network13CloseDataPortEv,"ax",%progbits
 1824              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 33


 1825              		.global	_ZN7Network13CloseDataPortEv
 1826              		.thumb
 1827              		.thumb_func
 1828              		.type	_ZN7Network13CloseDataPortEv, %function
 1829              	_ZN7Network13CloseDataPortEv:
 1830              		@ args = 0, pretend = 0, frame = 0
 1831              		@ frame_needed = 0, uses_anonymous_args = 0
 1832 0000 38B5     		push	{r3, r4, r5, lr}
 1833 0002 0E4C     		ldr	r4, .L415
 1834 0004 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 1835 0006 BBB9     		cbnz	r3, .L402
 1836 0008 836A     		ldr	r3, [r0, #40]
 1837 000a 0122     		movs	r2, #1
 1838 000c 2270     		strb	r2, [r4]
 1839 000e 33B1     		cbz	r3, .L404
 1840 0010 836A     		ldr	r3, [r0, #40]
 1841 0012 D868     		ldr	r0, [r3, #12]
 1842 0014 18B1     		cbz	r0, .L404
 1843 0016 BDE83840 		pop	{r3, r4, r5, lr}
 1844 001a FFF7FEBF 		b	_ZN18NetworkTransaction5CloseEv
 1845              	.L404:
 1846 001e 084D     		ldr	r5, .L415+4
 1847 0020 2868     		ldr	r0, [r5]
 1848 0022 38B1     		cbz	r0, .L405
 1849 0024 0021     		movs	r1, #0
 1850 0026 FFF7FEFF 		bl	tcp_accept
 1851 002a 2868     		ldr	r0, [r5]
 1852 002c FFF7FEFF 		bl	tcp_close
 1853 0030 0023     		movs	r3, #0
 1854 0032 2B60     		str	r3, [r5]
 1855              	.L405:
 1856 0034 0023     		movs	r3, #0
 1857 0036 2370     		strb	r3, [r4]
 1858              	.L402:
 1859 0038 38BD     		pop	{r3, r4, r5, pc}
 1860              	.L416:
 1861 003a 00BF     		.align	2
 1862              	.L415:
 1863 003c 00000000 		.word	.LANCHOR12
 1864 0040 00000000 		.word	.LANCHOR11
 1865              		.size	_ZN7Network13CloseDataPortEv, .-_ZN7Network13CloseDataPortEv
 1866              		.section	.text._ZN7Network18SaveDataConnectionEv,"ax",%progbits
 1867              		.align	2
 1868              		.global	_ZN7Network18SaveDataConnectionEv
 1869              		.thumb
 1870              		.thumb_func
 1871              		.type	_ZN7Network18SaveDataConnectionEv, %function
 1872              	_ZN7Network18SaveDataConnectionEv:
 1873              		@ args = 0, pretend = 0, frame = 0
 1874              		@ frame_needed = 0, uses_anonymous_args = 0
 1875              		@ link register save eliminated.
 1876 0000 C368     		ldr	r3, [r0, #12]
 1877 0002 1B68     		ldr	r3, [r3]
 1878 0004 8362     		str	r3, [r0, #40]
 1879 0006 7047     		bx	lr
 1880              		.size	_ZN7Network18SaveDataConnectionEv, .-_ZN7Network18SaveDataConnectionEv
 1881              		.section	.text._ZN7Network17SaveFTPConnectionEv,"ax",%progbits
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 34


 1882              		.align	2
 1883              		.global	_ZN7Network17SaveFTPConnectionEv
 1884              		.thumb
 1885              		.thumb_func
 1886              		.type	_ZN7Network17SaveFTPConnectionEv, %function
 1887              	_ZN7Network17SaveFTPConnectionEv:
 1888              		@ args = 0, pretend = 0, frame = 0
 1889              		@ frame_needed = 0, uses_anonymous_args = 0
 1890              		@ link register save eliminated.
 1891 0000 C368     		ldr	r3, [r0, #12]
 1892 0002 1B68     		ldr	r3, [r3]
 1893 0004 C362     		str	r3, [r0, #44]
 1894 0006 7047     		bx	lr
 1895              		.size	_ZN7Network17SaveFTPConnectionEv, .-_ZN7Network17SaveFTPConnectionEv
 1896              		.section	.text._ZN7Network20SaveTelnetConnectionEv,"ax",%progbits
 1897              		.align	2
 1898              		.global	_ZN7Network20SaveTelnetConnectionEv
 1899              		.thumb
 1900              		.thumb_func
 1901              		.type	_ZN7Network20SaveTelnetConnectionEv, %function
 1902              	_ZN7Network20SaveTelnetConnectionEv:
 1903              		@ args = 0, pretend = 0, frame = 0
 1904              		@ frame_needed = 0, uses_anonymous_args = 0
 1905              		@ link register save eliminated.
 1906 0000 C368     		ldr	r3, [r0, #12]
 1907 0002 1B68     		ldr	r3, [r3]
 1908 0004 0363     		str	r3, [r0, #48]
 1909 0006 7047     		bx	lr
 1910              		.size	_ZN7Network20SaveTelnetConnectionEv, .-_ZN7Network20SaveTelnetConnectionEv
 1911              		.section	.text._ZN7Network18AcquireTransactionEP15ConnectionState,"ax",%progbits
 1912              		.align	2
 1913              		.global	_ZN7Network18AcquireTransactionEP15ConnectionState
 1914              		.thumb
 1915              		.thumb_func
 1916              		.type	_ZN7Network18AcquireTransactionEP15ConnectionState, %function
 1917              	_ZN7Network18AcquireTransactionEP15ConnectionState:
 1918              		@ args = 0, pretend = 0, frame = 0
 1919              		@ frame_needed = 0, uses_anonymous_args = 0
 1920 0000 38B5     		push	{r3, r4, r5, lr}
 1921 0002 0446     		mov	r4, r0
 1922 0004 C9B1     		cbz	r1, .L425
 1923 0006 C368     		ldr	r3, [r0, #12]
 1924 0008 13B1     		cbz	r3, .L422
 1925 000a 1A68     		ldr	r2, [r3]
 1926 000c 9142     		cmp	r1, r2
 1927 000e 0ED0     		beq	.L432
 1928              	.L422:
 1929 0010 A568     		ldr	r5, [r4, #8]
 1930 0012 A5B1     		cbz	r5, .L433
 1931 0014 6B68     		ldr	r3, [r5, #4]
 1932 0016 0A46     		mov	r2, r1
 1933 0018 A360     		str	r3, [r4, #8]
 1934 001a 2846     		mov	r0, r5
 1935 001c 0021     		movs	r1, #0
 1936 001e 0623     		movs	r3, #6
 1937 0020 FFF7FEFF 		bl	_ZN18NetworkTransaction3SetEP4pbufP15ConnectionState17TransactionStatus
 1938 0024 E368     		ldr	r3, [r4, #12]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 35


 1939 0026 0120     		movs	r0, #1
 1940 0028 6B60     		str	r3, [r5, #4]
 1941 002a E560     		str	r5, [r4, #12]
 1942 002c 38BD     		pop	{r3, r4, r5, pc}
 1943              	.L432:
 1944 002e 93F82430 		ldrb	r3, [r3, #36]	@ zero_extendqisi2
 1945 0032 062B     		cmp	r3, #6
 1946 0034 ECD1     		bne	.L422
 1947 0036 0120     		movs	r0, #1
 1948 0038 38BD     		pop	{r3, r4, r5, pc}
 1949              	.L425:
 1950 003a 0846     		mov	r0, r1
 1951 003c 38BD     		pop	{r3, r4, r5, pc}
 1952              	.L433:
 1953 003e 2068     		ldr	r0, [r4]
 1954 0040 0221     		movs	r1, #2
 1955 0042 024A     		ldr	r2, .L434
 1956 0044 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1957 0048 2846     		mov	r0, r5
 1958 004a 38BD     		pop	{r3, r4, r5, pc}
 1959              	.L435:
 1960              		.align	2
 1961              	.L434:
 1962 004c 5C020000 		.word	.LC17
 1963              		.size	_ZN7Network18AcquireTransactionEP15ConnectionState, .-_ZN7Network18AcquireTransactionEP15Con
 1964              		.section	.text._ZN7Network21AcquireFTPTransactionEv,"ax",%progbits
 1965              		.align	2
 1966              		.global	_ZN7Network21AcquireFTPTransactionEv
 1967              		.thumb
 1968              		.thumb_func
 1969              		.type	_ZN7Network21AcquireFTPTransactionEv, %function
 1970              	_ZN7Network21AcquireFTPTransactionEv:
 1971              		@ args = 0, pretend = 0, frame = 0
 1972              		@ frame_needed = 0, uses_anonymous_args = 0
 1973              		@ link register save eliminated.
 1974 0000 C16A     		ldr	r1, [r0, #44]
 1975 0002 FFF7FEBF 		b	_ZN7Network18AcquireTransactionEP15ConnectionState
 1976              		.size	_ZN7Network21AcquireFTPTransactionEv, .-_ZN7Network21AcquireFTPTransactionEv
 1977 0006 00BF     		.section	.text._ZN7Network22AcquireDataTransactionEv,"ax",%progbits
 1978              		.align	2
 1979              		.global	_ZN7Network22AcquireDataTransactionEv
 1980              		.thumb
 1981              		.thumb_func
 1982              		.type	_ZN7Network22AcquireDataTransactionEv, %function
 1983              	_ZN7Network22AcquireDataTransactionEv:
 1984              		@ args = 0, pretend = 0, frame = 0
 1985              		@ frame_needed = 0, uses_anonymous_args = 0
 1986              		@ link register save eliminated.
 1987 0000 816A     		ldr	r1, [r0, #40]
 1988 0002 FFF7FEBF 		b	_ZN7Network18AcquireTransactionEP15ConnectionState
 1989              		.size	_ZN7Network22AcquireDataTransactionEv, .-_ZN7Network22AcquireDataTransactionEv
 1990 0006 00BF     		.section	.text._ZN7Network24AcquireTelnetTransactionEv,"ax",%progbits
 1991              		.align	2
 1992              		.global	_ZN7Network24AcquireTelnetTransactionEv
 1993              		.thumb
 1994              		.thumb_func
 1995              		.type	_ZN7Network24AcquireTelnetTransactionEv, %function
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 36


 1996              	_ZN7Network24AcquireTelnetTransactionEv:
 1997              		@ args = 0, pretend = 0, frame = 0
 1998              		@ frame_needed = 0, uses_anonymous_args = 0
 1999              		@ link register save eliminated.
 2000 0000 016B     		ldr	r1, [r0, #48]
 2001 0002 FFF7FEBF 		b	_ZN7Network18AcquireTransactionEP15ConnectionState
 2002              		.size	_ZN7Network24AcquireTelnetTransactionEv, .-_ZN7Network24AcquireTelnetTransactionEv
 2003 0006 00BF     		.section	.text._ZN7Network12GetLocalPortEP15ConnectionState,"ax",%progbits
 2004              		.align	2
 2005              		.global	_ZN7Network12GetLocalPortEP15ConnectionState
 2006              		.thumb
 2007              		.thumb_func
 2008              		.type	_ZN7Network12GetLocalPortEP15ConnectionState, %function
 2009              	_ZN7Network12GetLocalPortEP15ConnectionState:
 2010              		@ args = 0, pretend = 0, frame = 0
 2011              		@ frame_needed = 0, uses_anonymous_args = 0
 2012              		@ link register save eliminated.
 2013 0000 8088     		ldrh	r0, [r0, #4]
 2014 0002 7047     		bx	lr
 2015              		.size	_ZN7Network12GetLocalPortEP15ConnectionState, .-_ZN7Network12GetLocalPortEP15ConnectionState
 2016              		.section	.text._ZN7Network13GetRemotePortEP15ConnectionState,"ax",%progbits
 2017              		.align	2
 2018              		.global	_ZN7Network13GetRemotePortEP15ConnectionState
 2019              		.thumb
 2020              		.thumb_func
 2021              		.type	_ZN7Network13GetRemotePortEP15ConnectionState, %function
 2022              	_ZN7Network13GetRemotePortEP15ConnectionState:
 2023              		@ args = 0, pretend = 0, frame = 0
 2024              		@ frame_needed = 0, uses_anonymous_args = 0
 2025              		@ link register save eliminated.
 2026 0000 C088     		ldrh	r0, [r0, #6]
 2027 0002 7047     		bx	lr
 2028              		.size	_ZN7Network13GetRemotePortEP15ConnectionState, .-_ZN7Network13GetRemotePortEP15ConnectionSta
 2029              		.section	.text._ZN7Network11GetRemoteIPEP15ConnectionState,"ax",%progbits
 2030              		.align	2
 2031              		.global	_ZN7Network11GetRemoteIPEP15ConnectionState
 2032              		.thumb
 2033              		.thumb_func
 2034              		.type	_ZN7Network11GetRemoteIPEP15ConnectionState, %function
 2035              	_ZN7Network11GetRemoteIPEP15ConnectionState:
 2036              		@ args = 0, pretend = 0, frame = 0
 2037              		@ frame_needed = 0, uses_anonymous_args = 0
 2038              		@ link register save eliminated.
 2039 0000 8068     		ldr	r0, [r0, #8]
 2040 0002 7047     		bx	lr
 2041              		.size	_ZN7Network11GetRemoteIPEP15ConnectionState, .-_ZN7Network11GetRemoteIPEP15ConnectionState
 2042              		.section	.text._ZN7Network11IsConnectedEP15ConnectionState,"ax",%progbits
 2043              		.align	2
 2044              		.global	_ZN7Network11IsConnectedEP15ConnectionState
 2045              		.thumb
 2046              		.thumb_func
 2047              		.type	_ZN7Network11IsConnectedEP15ConnectionState, %function
 2048              	_ZN7Network11IsConnectedEP15ConnectionState:
 2049              		@ args = 0, pretend = 0, frame = 0
 2050              		@ frame_needed = 0, uses_anonymous_args = 0
 2051              		@ link register save eliminated.
 2052 0000 0068     		ldr	r0, [r0]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 37


 2053 0002 0030     		adds	r0, r0, #0
 2054 0004 18BF     		it	ne
 2055 0006 0120     		movne	r0, #1
 2056 0008 7047     		bx	lr
 2057              		.size	_ZN7Network11IsConnectedEP15ConnectionState, .-_ZN7Network11IsConnectedEP15ConnectionState
 2058 000a 00BF     		.section	.text._ZN7Network12IsTerminatedEP15ConnectionState,"ax",%progbits
 2059              		.align	2
 2060              		.global	_ZN7Network12IsTerminatedEP15ConnectionState
 2061              		.thumb
 2062              		.thumb_func
 2063              		.type	_ZN7Network12IsTerminatedEP15ConnectionState, %function
 2064              	_ZN7Network12IsTerminatedEP15ConnectionState:
 2065              		@ args = 0, pretend = 0, frame = 0
 2066              		@ frame_needed = 0, uses_anonymous_args = 0
 2067              		@ link register save eliminated.
 2068 0000 407D     		ldrb	r0, [r0, #21]	@ zero_extendqisi2
 2069 0002 7047     		bx	lr
 2070              		.size	_ZN7Network12IsTerminatedEP15ConnectionState, .-_ZN7Network12IsTerminatedEP15ConnectionState
 2071              		.section	.text._ZN7Network9TerminateEP15ConnectionState,"ax",%progbits
 2072              		.align	2
 2073              		.global	_ZN7Network9TerminateEP15ConnectionState
 2074              		.thumb
 2075              		.thumb_func
 2076              		.type	_ZN7Network9TerminateEP15ConnectionState, %function
 2077              	_ZN7Network9TerminateEP15ConnectionState:
 2078              		@ args = 0, pretend = 0, frame = 0
 2079              		@ frame_needed = 0, uses_anonymous_args = 0
 2080              		@ link register save eliminated.
 2081 0000 FFF7FEBF 		b	_ZN15ConnectionState9TerminateEv
 2082              		.size	_ZN7Network9TerminateEP15ConnectionState, .-_ZN7Network9TerminateEP15ConnectionState
 2083              		.global	outputResult
 2084              		.global	writeResult
 2085              		.global	sendingRetries
 2086              		.global	sentDataOutstanding
 2087              		.global	sendingWindowSize
 2088              		.global	sendingWindow
 2089              		.global	sendingConnection
 2090              		.section	.data._ZL15protocolEnabled,"aw",%progbits
 2091              		.align	2
 2092              		.set	.LANCHOR3,. + 0
 2093              		.type	_ZL15protocolEnabled, %object
 2094              		.size	_ZL15protocolEnabled, 3
 2095              	_ZL15protocolEnabled:
 2096 0000 01       		.byte	1
 2097 0001 00       		.byte	0
 2098 0002 00       		.byte	0
 2099 0003 00       		.section	.bss.sentDataOutstanding,"aw",%nobits
 2100              		.align	1
 2101              		.type	sentDataOutstanding, %object
 2102              		.size	sentDataOutstanding, 2
 2103              	sentDataOutstanding:
 2104 0000 0000     		.space	2
 2105              		.section	.bss._ZL15closingDataPort,"aw",%nobits
 2106              		.set	.LANCHOR12,. + 0
 2107              		.type	_ZL15closingDataPort, %object
 2108              		.size	_ZL15closingDataPort, 1
 2109              	_ZL15closingDataPort:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 38


 2110 0000 00       		.space	1
 2111              		.section	.bss._ZL10lwipLocked,"aw",%nobits
 2112              		.set	.LANCHOR2,. + 0
 2113              		.type	_ZL10lwipLocked, %object
 2114              		.size	_ZL10lwipLocked, 1
 2115              	_ZL10lwipLocked:
 2116 0000 00       		.space	1
 2117              		.section	.data._ZL11portNumbers,"aw",%progbits
 2118              		.align	2
 2119              		.set	.LANCHOR0,. + 0
 2120              		.type	_ZL11portNumbers, %object
 2121              		.size	_ZL11portNumbers, 6
 2122              	_ZL11portNumbers:
 2123 0000 5000     		.short	80
 2124 0002 1500     		.short	21
 2125 0004 1700     		.short	23
 2126 0006 0000     		.section	.bss._ZL15sendingWindow32,"aw",%nobits
 2127              		.align	2
 2128              		.type	_ZL15sendingWindow32, %object
 2129              		.size	_ZL15sendingWindow32, 2920
 2130              	_ZL15sendingWindow32:
 2131 0000 00000000 		.space	2920
 2131      00000000 
 2131      00000000 
 2131      00000000 
 2131      00000000 
 2132              		.section	.data._ZL13mdns_services,"aw",%progbits
 2133              		.align	2
 2134              		.set	.LANCHOR5,. + 0
 2135              		.type	_ZL13mdns_services, %object
 2136              		.size	_ZL13mdns_services, 32
 2137              	_ZL13mdns_services:
 2138 0000 1C030000 		.word	.LC26
 2139 0004 07000000 		.word	7
 2140 0008 00000000 		.word	0
 2141 000c 00000000 		.space	4
 2142 0010 00000000 		.word	0
 2143 0014 00000000 		.space	4
 2144 0018 00000000 		.word	0
 2145 001c 00000000 		.space	4
 2146              		.section	.data._ZL16mdns_txt_records,"aw",%progbits
 2147              		.align	2
 2148              		.set	.LANCHOR7,. + 0
 2149              		.type	_ZL16mdns_txt_records, %object
 2150              		.size	_ZL16mdns_txt_records, 12
 2151              	_ZL16mdns_txt_records:
 2152 0000 DC020000 		.word	.LC24
 2153 0004 FC020000 		.word	.LC25
 2154 0008 00000000 		.word	0
 2155              		.section	.bss.outputResult,"aw",%nobits
 2156              		.type	outputResult, %object
 2157              		.size	outputResult, 1
 2158              	outputResult:
 2159 0000 00       		.space	1
 2160              		.section	.bss.writeResult,"aw",%nobits
 2161              		.type	writeResult, %object
 2162              		.size	writeResult, 1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 39


 2163              	writeResult:
 2164 0000 00       		.space	1
 2165              		.section	.rodata._ZL18MdnsServiceStrings,"a",%progbits
 2166              		.align	2
 2167              		.set	.LANCHOR6,. + 0
 2168              		.type	_ZL18MdnsServiceStrings, %object
 2169              		.size	_ZL18MdnsServiceStrings, 12
 2170              	_ZL18MdnsServiceStrings:
 2171 0000 8C020000 		.word	.LC18
 2172 0004 A0020000 		.word	.LC19
 2173 0008 B4020000 		.word	.LC20
 2174              		.section	.rodata._ZL18DefaultPortNumbers,"a",%progbits
 2175              		.align	2
 2176              		.set	.LANCHOR8,. + 0
 2177              		.type	_ZL18DefaultPortNumbers, %object
 2178              		.size	_ZL18DefaultPortNumbers, 6
 2179              	_ZL18DefaultPortNumbers:
 2180 0000 5000     		.short	80
 2181 0002 1500     		.short	21
 2182 0004 1700     		.short	23
 2183 0006 0000     		.section	.rodata.str1.4,"aMS",%progbits,1
 2184              		.align	2
 2185              	.LC0:
 2186 0000 64756574 		.ascii	"duet\000"
 2186      00
 2187 0005 000000   		.space	3
 2188              	.LC1:
 2189 0008 25732069 		.ascii	"%s is enabled on port %u\000"
 2189      7320656E 
 2189      61626C65 
 2189      64206F6E 
 2189      20706F72 
 2190 0021 000000   		.space	3
 2191              	.LC2:
 2192 0024 25732069 		.ascii	"%s is disabled\000"
 2192      73206469 
 2192      7361626C 
 2192      656400
 2193 0033 00       		.space	1
 2194              	.LC3:
 2195 0034 496E7661 		.ascii	"Invalid protocol parameter\000"
 2195      6C696420 
 2195      70726F74 
 2195      6F636F6C 
 2195      20706172 
 2196 004f 00       		.space	1
 2197              	.LC4:
 2198 0050 4572726F 		.ascii	"Error: this firmware does not support TLS\000"
 2198      723A2074 
 2198      68697320 
 2198      6669726D 
 2198      77617265 
 2199 007a 0000     		.space	2
 2200              	.LC5:
 2201 007c 4E657477 		.ascii	"Network down\012\000"
 2201      6F726B20 
 2201      646F776E 
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 40


 2201      0A00
 2202 008a 0000     		.space	2
 2203              	.LC6:
 2204 008c 4E657477 		.ascii	"Network up, IP=%d.%d.%d.%d\012\000"
 2204      6F726B20 
 2204      75702C20 
 2204      49503D25 
 2204      642E2564 
 2205              	.LC7:
 2206 00a8 3D3D3D20 		.ascii	"=== Network ===\012\000"
 2206      4E657477 
 2206      6F726B20 
 2206      3D3D3D0A 
 2206      00
 2207 00b9 000000   		.space	3
 2208              	.LC8:
 2209 00bc 46726565 		.ascii	"Free connections: %d of %d\012\000"
 2209      20636F6E 
 2209      6E656374 
 2209      696F6E73 
 2209      3A202564 
 2210              	.LC9:
 2211 00d8 46726565 		.ascii	"Free transactions: %d of %d\012\000"
 2211      20747261 
 2211      6E736163 
 2211      74696F6E 
 2211      733A2025 
 2212 00f5 000000   		.space	3
 2213              	.LC10:
 2214 00f8 4C6F636B 		.ascii	"Locked: %d, state: %d, listening: %p, %p, %p\012\000"
 2214      65643A20 
 2214      25642C20 
 2214      73746174 
 2214      653A2025 
 2215 0126 0000     		.space	2
 2216              	.LC11:
 2217 0128 4E657477 		.ascii	"Network::ReceiveInput() - no free transactions!\012"
 2217      6F726B3A 
 2217      3A526563 
 2217      65697665 
 2217      496E7075 
 2218 0158 00       		.ascii	"\000"
 2219 0159 000000   		.space	3
 2220              	.LC12:
 2221 015c 4E657477 		.ascii	"Network::ConnectionAccepted() - no free ConnectionS"
 2221      6F726B3A 
 2221      3A436F6E 
 2221      6E656374 
 2221      696F6E41 
 2222 018f 74617465 		.ascii	"tates!\012\000"
 2222      73210A00 
 2223 0197 00       		.space	1
 2224              	.LC13:
 2225 0198 4E657477 		.ascii	"Network::ConnectionAccepted() - no free transaction"
 2225      6F726B3A 
 2225      3A436F6E 
 2225      6E656374 
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 41


 2225      696F6E41 
 2226 01cb 73210A00 		.ascii	"s!\012\000"
 2227 01cf 00       		.space	1
 2228              	.LC14:
 2229 01d0 4E657477 		.ascii	"Network: Connection error, code %d\012\000"
 2229      6F726B3A 
 2229      20436F6E 
 2229      6E656374 
 2229      696F6E20 
 2230              	.LC15:
 2231 01f4 4E657477 		.ascii	"Network::ConnectionClosedGracefully() - no free tra"
 2231      6F726B3A 
 2231      3A436F6E 
 2231      6E656374 
 2231      696F6E43 
 2232 0227 6E736163 		.ascii	"nsactions!\012\000"
 2232      74696F6E 
 2232      73210A00 
 2233 0233 00       		.space	1
 2234              	.LC16:
 2235 0234 4E657477 		.ascii	"Network: Mismatched pcb in conn_recv!\012\000"
 2235      6F726B3A 
 2235      204D6973 
 2235      6D617463 
 2235      68656420 
 2236 025b 00       		.space	1
 2237              	.LC17:
 2238 025c 4E657477 		.ascii	"Network: Could not acquire free transaction!\012\000"
 2238      6F726B3A 
 2238      20436F75 
 2238      6C64206E 
 2238      6F742061 
 2239 028a 0000     		.space	2
 2240              	.LC18:
 2241 028c 055F6874 		.ascii	"\005_http\004_tcp\005local\000"
 2241      7470045F 
 2241      74637005 
 2241      6C6F6361 
 2241      6C00
 2242 029e 0000     		.space	2
 2243              	.LC19:
 2244 02a0 045F6674 		.ascii	"\004_ftp\004_tcp\005local\000"
 2244      70045F74 
 2244      6370056C 
 2244      6F63616C 
 2244      00
 2245 02b1 000000   		.space	3
 2246              	.LC20:
 2247 02b4 075F7465 		.ascii	"\007_telnet\004_tcp\005local\000"
 2247      6C6E6574 
 2247      045F7463 
 2247      70056C6F 
 2247      63616C00 
 2248              	.LC21:
 2249 02c8 48545450 		.ascii	"HTTP\000"
 2249      00
 2250 02cd 000000   		.space	3
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 42


 2251              	.LC22:
 2252 02d0 46545000 		.ascii	"FTP\000"
 2253              	.LC23:
 2254 02d4 54454C4E 		.ascii	"TELNET\000"
 2254      455400
 2255 02db 00       		.space	1
 2256              	.LC24:
 2257 02dc 70726F64 		.ascii	"product=RepRapFirmware for Duet\000"
 2257      7563743D 
 2257      52657052 
 2257      61704669 
 2257      726D7761 
 2258              	.LC25:
 2259 02fc 76657273 		.ascii	"version=Fusionware 1.18.1 RC1\000"
 2259      696F6E3D 
 2259      46757369 
 2259      6F6E7761 
 2259      72652031 
 2260 031a 0000     		.space	2
 2261              	.LC26:
 2262 031c 055F6563 		.ascii	"\005_echo\004_tcp\005local\000"
 2262      686F045F 
 2262      74637005 
 2262      6C6F6361 
 2262      6C00
 2263 032e 0000     		.section	.rodata.sendingWindow,"a",%progbits
 2264              		.align	2
 2265              		.type	sendingWindow, %object
 2266              		.size	sendingWindow, 4
 2267              	sendingWindow:
 2268 0000 00000000 		.word	_ZL15sendingWindow32
 2269              		.section	.bss.sendingRetries,"aw",%nobits
 2270              		.type	sendingRetries, %object
 2271              		.size	sendingRetries, 1
 2272              	sendingRetries:
 2273 0000 00       		.space	1
 2274              		.section	.bss._ZL12ftp_pasv_pcb,"aw",%nobits
 2275              		.align	2
 2276              		.set	.LANCHOR11,. + 0
 2277              		.type	_ZL12ftp_pasv_pcb, %object
 2278              		.size	_ZL12ftp_pasv_pcb, 4
 2279              	_ZL12ftp_pasv_pcb:
 2280 0000 00000000 		.space	4
 2281              		.section	.bss.sendingWindowSize,"aw",%nobits
 2282              		.align	1
 2283              		.type	sendingWindowSize, %object
 2284              		.size	sendingWindowSize, 2
 2285              	sendingWindowSize:
 2286 0000 0000     		.space	2
 2287              		.section	.bss._ZL15ethernetStarted,"aw",%nobits
 2288              		.set	.LANCHOR10,. + 0
 2289              		.type	_ZL15ethernetStarted, %object
 2290              		.size	_ZL15ethernetStarted, 1
 2291              	_ZL15ethernetStarted:
 2292 0000 00       		.space	1
 2293              		.section	.bss.sendingConnection,"aw",%nobits
 2294              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccJ4bMpJ.s 			page 43


 2295              		.set	.LANCHOR9,. + 0
 2296              		.type	sendingConnection, %object
 2297              		.size	sendingConnection, 4
 2298              	sendingConnection:
 2299 0000 00000000 		.space	4
 2300              		.section	.rodata._ZL13ProtocolNames,"a",%progbits
 2301              		.align	2
 2302              		.set	.LANCHOR4,. + 0
 2303              		.type	_ZL13ProtocolNames, %object
 2304              		.size	_ZL13ProtocolNames, 12
 2305              	_ZL13ProtocolNames:
 2306 0000 C8020000 		.word	.LC21
 2307 0004 D0020000 		.word	.LC22
 2308 0008 D4020000 		.word	.LC23
 2309              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 2310              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 2311              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 2312              	_ZL28cpu_irq_prev_interrupt_state:
 2313 0000 00       		.space	1
 2314              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 2315              		.align	2
 2316              		.type	_ZL32cpu_irq_critical_section_counter, %object
 2317              		.size	_ZL32cpu_irq_critical_section_counter, 4
 2318              	_ZL32cpu_irq_critical_section_counter:
 2319 0000 00000000 		.space	4
 2320              		.section	.bss._ZL4pcbs,"aw",%nobits
 2321              		.align	2
 2322              		.set	.LANCHOR1,. + 0
 2323              		.type	_ZL4pcbs, %object
 2324              		.size	_ZL4pcbs, 12
 2325              	_ZL4pcbs:
 2326 0000 00000000 		.space	12
 2326      00000000 
 2326      00000000 
 2327              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
