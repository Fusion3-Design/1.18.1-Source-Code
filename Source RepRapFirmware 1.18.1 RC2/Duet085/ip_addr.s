ARM GAS  C:\Users\George\AppData\Local\Temp\ccKGYb4j.s 			page 1


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
  14              		.file	"ip_addr.c"
  15              		.section	.text.ip4_addr_isbroadcast,"ax",%progbits
  16              		.align	2
  17              		.global	ip4_addr_isbroadcast
  18              		.thumb
  19              		.thumb_func
  20              		.type	ip4_addr_isbroadcast, %function
  21              	ip4_addr_isbroadcast:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 421E     		subs	r2, r0, #1
  26 0002 0332     		adds	r2, r2, #3
  27 0004 0346     		mov	r3, r0
  28 0006 15D8     		bhi	.L3
  29 0008 91F83520 		ldrb	r2, [r1, #53]	@ zero_extendqisi2
  30 000c 02F00202 		and	r2, r2, #2
  31 0010 02F0FF00 		and	r0, r2, #255
  32 0014 6AB1     		cbz	r2, .L2
  33 0016 4A68     		ldr	r2, [r1, #4]
  34 0018 9A42     		cmp	r2, r3
  35 001a 09D0     		beq	.L5
  36 001c 8868     		ldr	r0, [r1, #8]
  37 001e 5A40     		eors	r2, r2, r3
  38 0020 0242     		tst	r2, r0
  39 0022 05D1     		bne	.L5
  40 0024 C043     		mvns	r0, r0
  41 0026 0340     		ands	r3, r3, r0
  42 0028 C31A     		subs	r3, r0, r3
  43 002a 5842     		rsbs	r0, r3, #0
  44 002c 5841     		adcs	r0, r0, r3
  45 002e 7047     		bx	lr
  46              	.L5:
  47 0030 0020     		movs	r0, #0
  48              	.L2:
  49 0032 7047     		bx	lr
  50              	.L3:
  51 0034 0120     		movs	r0, #1
  52 0036 7047     		bx	lr
  53              		.size	ip4_addr_isbroadcast, .-ip4_addr_isbroadcast
  54              		.section	.text.ip4_addr_netmask_valid,"ax",%progbits
  55              		.align	2
  56              		.global	ip4_addr_netmask_valid
  57              		.thumb
ARM GAS  C:\Users\George\AppData\Local\Temp\ccKGYb4j.s 			page 2


  58              		.thumb_func
  59              		.type	ip4_addr_netmask_valid, %function
  60              	ip4_addr_netmask_valid:
  61              		@ args = 0, pretend = 0, frame = 0
  62              		@ frame_needed = 0, uses_anonymous_args = 0
  63 0000 08B5     		push	{r3, lr}
  64 0002 FFF7FEFF 		bl	lwip_htonl
  65 0006 2022     		movs	r2, #32
  66 0008 4FF00043 		mov	r3, #-2147483648
  67 000c 03E0     		b	.L14
  68              	.L11:
  69 000e 013A     		subs	r2, r2, #1
  70 0010 4FEA5303 		lsr	r3, r3, #1
  71 0014 07D0     		beq	.L17
  72              	.L14:
  73 0016 0342     		tst	r3, r0
  74 0018 F9D1     		bne	.L11
  75 001a 13B9     		cbnz	r3, .L13
  76 001c 03E0     		b	.L17
  77              	.L15:
  78 001e 1842     		tst	r0, r3
  79 0020 03D1     		bne	.L18
  80              	.L13:
  81 0022 5B08     		lsrs	r3, r3, #1
  82 0024 FBD1     		bne	.L15
  83              	.L17:
  84 0026 0120     		movs	r0, #1
  85 0028 08BD     		pop	{r3, pc}
  86              	.L18:
  87 002a 0020     		movs	r0, #0
  88 002c 08BD     		pop	{r3, pc}
  89              		.size	ip4_addr_netmask_valid, .-ip4_addr_netmask_valid
  90 002e 00BF     		.section	.text.ipaddr_aton,"ax",%progbits
  91              		.align	2
  92              		.global	ipaddr_aton
  93              		.thumb
  94              		.thumb_func
  95              		.type	ipaddr_aton, %function
  96              	ipaddr_aton:
  97              		@ args = 0, pretend = 0, frame = 24
  98              		@ frame_needed = 0, uses_anonymous_args = 0
  99 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 100 0004 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 101 0006 0246     		mov	r2, r0
 102 0008 A3F13004 		sub	r4, r3, #48
 103 000c E0B2     		uxtb	r0, r4
 104 000e 0928     		cmp	r0, #9
 105 0010 87B0     		sub	sp, sp, #28
 106 0012 37D8     		bhi	.L31
 107 0014 0DF10809 		add	r9, sp, #8
 108 0018 CC46     		mov	ip, r9
 109 001a 0DF11408 		add	r8, sp, #20
 110              	.L32:
 111 001e 302B     		cmp	r3, #48
 112 0020 35D0     		beq	.L48
 113 0022 0A27     		movs	r7, #10
 114              	.L23:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccKGYb4j.s 			page 3


 115 0024 0025     		movs	r5, #0
 116 0026 06E0     		b	.L25
 117              	.L49:
 118 0028 07FB0535 		mla	r5, r7, r5, r3
 119 002c 5378     		ldrb	r3, [r2, #1]	@ zero_extendqisi2
 120 002e 303D     		subs	r5, r5, #48
 121              	.L27:
 122 0030 0132     		adds	r2, r2, #1
 123 0032 A3F13004 		sub	r4, r3, #48
 124              	.L25:
 125 0036 23F02006 		bic	r6, r3, #32
 126 003a E4B2     		uxtb	r4, r4
 127 003c 413E     		subs	r6, r6, #65
 128 003e A3F16100 		sub	r0, r3, #97
 129 0042 092C     		cmp	r4, #9
 130 0044 F6B2     		uxtb	r6, r6
 131 0046 C0B2     		uxtb	r0, r0
 132 0048 EED9     		bls	.L49
 133 004a 102F     		cmp	r7, #16
 134 004c 0CD1     		bne	.L28
 135 004e 052E     		cmp	r6, #5
 136 0050 0AD8     		bhi	.L28
 137 0052 1928     		cmp	r0, #25
 138 0054 03F10A03 		add	r3, r3, #10
 139 0058 8CBF     		ite	hi
 140 005a 4120     		movhi	r0, #65
 141 005c 6120     		movls	r0, #97
 142 005e 1B1A     		subs	r3, r3, r0
 143 0060 43EA0515 		orr	r5, r3, r5, lsl #4
 144 0064 5378     		ldrb	r3, [r2, #1]	@ zero_extendqisi2
 145 0066 E3E7     		b	.L27
 146              	.L28:
 147 0068 2E2B     		cmp	r3, #46
 148 006a 20D1     		bne	.L30
 149 006c C445     		cmp	ip, r8
 150 006e 09D0     		beq	.L31
 151 0070 5378     		ldrb	r3, [r2, #1]	@ zero_extendqisi2
 152 0072 4CF8045B 		str	r5, [ip], #4
 153 0076 A3F13004 		sub	r4, r3, #48
 154 007a E0B2     		uxtb	r0, r4
 155 007c 0928     		cmp	r0, #9
 156 007e 02F10102 		add	r2, r2, #1
 157 0082 CCD9     		bls	.L32
 158              	.L31:
 159 0084 0023     		movs	r3, #0
 160              	.L22:
 161 0086 1846     		mov	r0, r3
 162 0088 07B0     		add	sp, sp, #28
 163              		@ sp needed
 164 008a BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 165              	.L48:
 166 008e 5378     		ldrb	r3, [r2, #1]	@ zero_extendqisi2
 167 0090 03F0DF00 		and	r0, r3, #223
 168 0094 5828     		cmp	r0, #88
 169 0096 04D0     		beq	.L24
 170 0098 0132     		adds	r2, r2, #1
 171 009a 0827     		movs	r7, #8
ARM GAS  C:\Users\George\AppData\Local\Temp\ccKGYb4j.s 			page 4


 172 009c A3F13004 		sub	r4, r3, #48
 173 00a0 C0E7     		b	.L23
 174              	.L24:
 175 00a2 9378     		ldrb	r3, [r2, #2]	@ zero_extendqisi2
 176 00a4 1027     		movs	r7, #16
 177 00a6 0232     		adds	r2, r2, #2
 178 00a8 A3F13004 		sub	r4, r3, #48
 179 00ac BAE7     		b	.L23
 180              	.L30:
 181 00ae 13F0DF0F 		tst	r3, #223
 182 00b2 02D0     		beq	.L33
 183 00b4 093B     		subs	r3, r3, #9
 184 00b6 042B     		cmp	r3, #4
 185 00b8 E4D8     		bhi	.L31
 186              	.L33:
 187 00ba C9EB0C03 		rsb	r3, r9, ip
 188 00be 9B10     		asrs	r3, r3, #2
 189 00c0 0133     		adds	r3, r3, #1
 190 00c2 042B     		cmp	r3, #4
 191 00c4 17D8     		bhi	.L34
 192 00c6 01A2     		adr	r2, .L35
 193 00c8 52F823F0 		ldr	pc, [r2, r3, lsl #2]
 194              		.p2align 2
 195              	.L35:
 196 00cc 87000000 		.word	.L22+1
 197 00d0 F7000000 		.word	.L34+1
 198 00d4 21010000 		.word	.L36+1
 199 00d8 09010000 		.word	.L37+1
 200 00dc E1000000 		.word	.L38+1
 201              	.L38:
 202 00e0 FF2D     		cmp	r5, #255
 203 00e2 CFD8     		bhi	.L31
 204 00e4 029B     		ldr	r3, [sp, #8]
 205 00e6 039A     		ldr	r2, [sp, #12]
 206 00e8 1806     		lsls	r0, r3, #24
 207 00ea 049B     		ldr	r3, [sp, #16]
 208 00ec 40EA0242 		orr	r2, r0, r2, lsl #16
 209 00f0 42EA0323 		orr	r3, r2, r3, lsl #8
 210 00f4 1D43     		orrs	r5, r5, r3
 211              	.L34:
 212 00f6 D9B1     		cbz	r1, .L43
 213              	.L50:
 214 00f8 2846     		mov	r0, r5
 215 00fa 0191     		str	r1, [sp, #4]
 216 00fc FFF7FEFF 		bl	lwip_htonl
 217 0100 0199     		ldr	r1, [sp, #4]
 218 0102 0123     		movs	r3, #1
 219 0104 0860     		str	r0, [r1]
 220 0106 BEE7     		b	.L22
 221              	.L37:
 222 0108 B5F5803F 		cmp	r5, #65536
 223 010c BAD2     		bcs	.L31
 224 010e 029A     		ldr	r2, [sp, #8]
 225 0110 039B     		ldr	r3, [sp, #12]
 226 0112 1206     		lsls	r2, r2, #24
 227 0114 42EA0343 		orr	r3, r2, r3, lsl #16
 228 0118 1D43     		orrs	r5, r5, r3
ARM GAS  C:\Users\George\AppData\Local\Temp\ccKGYb4j.s 			page 5


 229 011a 0029     		cmp	r1, #0
 230 011c ECD1     		bne	.L50
 231 011e 07E0     		b	.L43
 232              	.L36:
 233 0120 B5F1807F 		cmp	r5, #16777216
 234 0124 AED2     		bcs	.L31
 235 0126 029B     		ldr	r3, [sp, #8]
 236 0128 45EA0365 		orr	r5, r5, r3, lsl #24
 237 012c 0029     		cmp	r1, #0
 238 012e E3D1     		bne	.L50
 239              	.L43:
 240 0130 0123     		movs	r3, #1
 241 0132 A8E7     		b	.L22
 242              		.size	ipaddr_aton, .-ipaddr_aton
 243              		.section	.text.ipaddr_addr,"ax",%progbits
 244              		.align	2
 245              		.global	ipaddr_addr
 246              		.thumb
 247              		.thumb_func
 248              		.type	ipaddr_addr, %function
 249              	ipaddr_addr:
 250              		@ args = 0, pretend = 0, frame = 8
 251              		@ frame_needed = 0, uses_anonymous_args = 0
 252 0000 00B5     		push	{lr}
 253 0002 83B0     		sub	sp, sp, #12
 254 0004 01A9     		add	r1, sp, #4
 255 0006 FFF7FEFF 		bl	ipaddr_aton
 256 000a 20B9     		cbnz	r0, .L54
 257 000c 4FF0FF30 		mov	r0, #-1
 258 0010 03B0     		add	sp, sp, #12
 259              		@ sp needed
 260 0012 5DF804FB 		ldr	pc, [sp], #4
 261              	.L54:
 262 0016 0198     		ldr	r0, [sp, #4]
 263 0018 03B0     		add	sp, sp, #12
 264              		@ sp needed
 265 001a 5DF804FB 		ldr	pc, [sp], #4
 266              		.size	ipaddr_addr, .-ipaddr_addr
 267 001e 00BF     		.section	.text.ipaddr_ntoa_r,"ax",%progbits
 268              		.align	2
 269              		.global	ipaddr_ntoa_r
 270              		.thumb
 271              		.thumb_func
 272              		.type	ipaddr_ntoa_r, %function
 273              	ipaddr_ntoa_r:
 274              		@ args = 0, pretend = 0, frame = 8
 275              		@ frame_needed = 0, uses_anonymous_args = 0
 276              		@ link register save eliminated.
 277 0000 2DE9F00F 		push	{r4, r5, r6, r7, r8, r9, r10, fp}
 278 0004 0368     		ldr	r3, [r0]
 279 0006 82B0     		sub	sp, sp, #8
 280 0008 DFF8B0C0 		ldr	ip, .L70
 281 000c 0193     		str	r3, [sp, #4]
 282 000e 0F46     		mov	r7, r1
 283 0010 02F10108 		add	r8, r2, #1
 284 0014 0DF10309 		add	r9, sp, #3
 285 0018 0DF1070B 		add	fp, sp, #7
ARM GAS  C:\Users\George\AppData\Local\Temp\ccKGYb4j.s 			page 6


 286 001c 4FF0000A 		mov	r10, #0
 287              	.L64:
 288 0020 99F80140 		ldrb	r4, [r9, #1]	@ zero_extendqisi2
 289 0024 0025     		movs	r5, #0
 290 0026 00E0     		b	.L57
 291              	.L68:
 292 0028 3546     		mov	r5, r6
 293              	.L57:
 294 002a ACFB0403 		umull	r0, r3, ip, r4
 295 002e DB08     		lsrs	r3, r3, #3
 296 0030 03EB8300 		add	r0, r3, r3, lsl #2
 297 0034 A4EB4000 		sub	r0, r4, r0, lsl #1
 298 0038 3030     		adds	r0, r0, #48
 299 003a 02AC     		add	r4, sp, #8
 300 003c 2C44     		add	r4, r4, r5
 301 003e 00F0FF00 		and	r0, r0, #255
 302 0042 6E1C     		adds	r6, r5, #1
 303 0044 04F8080C 		strb	r0, [r4, #-8]
 304 0048 F6B2     		uxtb	r6, r6
 305 004a 03F0FF04 		and	r4, r3, #255
 306 004e 002B     		cmp	r3, #0
 307 0050 EAD1     		bne	.L68
 308 0052 09F8014F 		strb	r4, [r9, #1]!
 309 0056 76B3     		cbz	r6, .L65
 310 0058 5245     		cmp	r2, r10
 311 005a 0AF10104 		add	r4, r10, #1
 312 005e 23DD     		ble	.L59
 313 0060 6B1E     		subs	r3, r5, #1
 314 0062 DBB2     		uxtb	r3, r3
 315 0064 0546     		mov	r5, r0
 316 0066 07E0     		b	.L60
 317              	.L62:
 318 0068 0134     		adds	r4, r4, #1
 319 006a 4445     		cmp	r4, r8
 320 006c 1CD0     		beq	.L59
 321 006e 02AD     		add	r5, sp, #8
 322 0070 2B44     		add	r3, r3, r5
 323 0072 13F8085C 		ldrb	r5, [r3, #-8]	@ zero_extendqisi2
 324 0076 0346     		mov	r3, r0
 325              	.L60:
 326 0078 581E     		subs	r0, r3, #1
 327 007a FF2B     		cmp	r3, #255
 328 007c 07F8015B 		strb	r5, [r7], #1
 329 0080 C0B2     		uxtb	r0, r0
 330 0082 F1D1     		bne	.L62
 331              	.L58:
 332 0084 A242     		cmp	r2, r4
 333 0086 04F1010A 		add	r10, r4, #1
 334 008a 0DDD     		ble	.L59
 335 008c 4FF02E00 		mov	r0, #46
 336 0090 D945     		cmp	r9, fp
 337 0092 3870     		strb	r0, [r7]
 338 0094 07F10103 		add	r3, r7, #1
 339 0098 0BD1     		bne	.L69
 340 009a 0023     		movs	r3, #0
 341 009c 0846     		mov	r0, r1
 342 009e 3B70     		strb	r3, [r7]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccKGYb4j.s 			page 7


 343 00a0 02B0     		add	sp, sp, #8
 344              		@ sp needed
 345 00a2 BDE8F00F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp}
 346 00a6 7047     		bx	lr
 347              	.L59:
 348 00a8 0020     		movs	r0, #0
 349 00aa 02B0     		add	sp, sp, #8
 350              		@ sp needed
 351 00ac BDE8F00F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp}
 352 00b0 7047     		bx	lr
 353              	.L69:
 354 00b2 1F46     		mov	r7, r3
 355 00b4 B4E7     		b	.L64
 356              	.L65:
 357 00b6 5446     		mov	r4, r10
 358 00b8 E4E7     		b	.L58
 359              	.L71:
 360 00ba 00BF     		.align	2
 361              	.L70:
 362 00bc CDCCCCCC 		.word	-858993459
 363              		.size	ipaddr_ntoa_r, .-ipaddr_ntoa_r
 364              		.section	.text.ipaddr_ntoa,"ax",%progbits
 365              		.align	2
 366              		.global	ipaddr_ntoa
 367              		.thumb
 368              		.thumb_func
 369              		.type	ipaddr_ntoa, %function
 370              	ipaddr_ntoa:
 371              		@ args = 0, pretend = 0, frame = 0
 372              		@ frame_needed = 0, uses_anonymous_args = 0
 373              		@ link register save eliminated.
 374 0000 0149     		ldr	r1, .L73
 375 0002 1022     		movs	r2, #16
 376 0004 FFF7FEBF 		b	ipaddr_ntoa_r
 377              	.L74:
 378              		.align	2
 379              	.L73:
 380 0008 00000000 		.word	.LANCHOR0
 381              		.size	ipaddr_ntoa, .-ipaddr_ntoa
 382              		.global	ip_addr_broadcast
 383              		.global	ip_addr_any
 384              		.section	.bss.str.5252,"aw",%nobits
 385              		.align	2
 386              		.set	.LANCHOR0,. + 0
 387              		.type	str.5252, %object
 388              		.size	str.5252, 16
 389              	str.5252:
 390 0000 00000000 		.space	16
 390      00000000 
 390      00000000 
 390      00000000 
 391              		.section	.rodata.ip_addr_broadcast,"a",%progbits
 392              		.align	2
 393              		.type	ip_addr_broadcast, %object
 394              		.size	ip_addr_broadcast, 4
 395              	ip_addr_broadcast:
 396 0000 FFFFFFFF 		.word	-1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccKGYb4j.s 			page 8


 397              		.section	.rodata.ip_addr_any,"a",%progbits
 398              		.align	2
 399              		.type	ip_addr_any, %object
 400              		.size	ip_addr_any, 4
 401              	ip_addr_any:
 402 0000 00000000 		.space	4
 403              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
