ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 1


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
  14              		.file	"dhcp.c"
  15              		.section	.text.dhcp_create_msg,"ax",%progbits
  16              		.align	2
  17              		.thumb
  18              		.thumb_func
  19              		.type	dhcp_create_msg, %function
  20              	dhcp_create_msg:
  21              		@ args = 0, pretend = 0, frame = 0
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  24 0004 0746     		mov	r7, r0
  25 0006 0C46     		mov	r4, r1
  26 0008 1546     		mov	r5, r2
  27 000a 0028     		cmp	r0, #0
  28 000c 00F0BB80 		beq	.L34
  29 0010 0029     		cmp	r1, #0
  30 0012 00F0AC80 		beq	.L35
  31 0016 0020     		movs	r0, #0
  32 0018 0246     		mov	r2, r0
  33 001a 4FF49A71 		mov	r1, #308
  34 001e FFF7FEFF 		bl	pbuf_alloc
  35 0022 0346     		mov	r3, r0
  36 0024 2061     		str	r0, [r4, #16]
  37 0026 0028     		cmp	r0, #0
  38 0028 00F0A980 		beq	.L20
  39 002c 627B     		ldrb	r2, [r4, #13]	@ zero_extendqisi2
  40 002e 002A     		cmp	r2, #0
  41 0030 00F09680 		beq	.L7
  42 0034 584A     		ldr	r2, .L39
  43 0036 1168     		ldr	r1, [r2]
  44              	.L8:
  45 0038 5A68     		ldr	r2, [r3, #4]
  46 003a 0123     		movs	r3, #1
  47 003c 6261     		str	r2, [r4, #20]
  48 003e 2160     		str	r1, [r4]
  49 0040 1370     		strb	r3, [r2]
  50 0042 6269     		ldr	r2, [r4, #20]
  51 0044 0026     		movs	r6, #0
  52 0046 5370     		strb	r3, [r2, #1]
  53 0048 6369     		ldr	r3, [r4, #20]
  54 004a 97F82E20 		ldrb	r2, [r7, #46]	@ zero_extendqisi2
  55 004e 9A70     		strb	r2, [r3, #2]
  56 0050 6369     		ldr	r3, [r4, #20]
  57 0052 DE70     		strb	r6, [r3, #3]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 2


  58 0054 2068     		ldr	r0, [r4]
  59 0056 D4F81480 		ldr	r8, [r4, #20]
  60 005a FFF7FEFF 		bl	lwip_htonl
  61 005e 6269     		ldr	r2, [r4, #20]
  62 0060 082D     		cmp	r5, #8
  63 0062 C8F80400 		str	r0, [r8, #4]	@ unaligned
  64 0066 1672     		strb	r6, [r2, #8]
  65 0068 5672     		strb	r6, [r2, #9]
  66 006a 9672     		strb	r6, [r2, #10]
  67 006c D672     		strb	r6, [r2, #11]
  68 006e 1673     		strb	r6, [r2, #12]
  69 0070 5673     		strb	r6, [r2, #13]
  70 0072 9673     		strb	r6, [r2, #14]
  71 0074 D673     		strb	r6, [r2, #15]
  72 0076 70D0     		beq	.L9
  73 0078 042D     		cmp	r5, #4
  74 007a 6ED0     		beq	.L9
  75 007c 032D     		cmp	r5, #3
  76 007e 68D0     		beq	.L36
  77              	.L10:
  78 0080 0023     		movs	r3, #0
  79 0082 1374     		strb	r3, [r2, #16]
  80 0084 5374     		strb	r3, [r2, #17]
  81 0086 9374     		strb	r3, [r2, #18]
  82 0088 D374     		strb	r3, [r2, #19]
  83 008a 1375     		strb	r3, [r2, #20]
  84 008c 5375     		strb	r3, [r2, #21]
  85 008e 9375     		strb	r3, [r2, #22]
  86 0090 D375     		strb	r3, [r2, #23]
  87 0092 1376     		strb	r3, [r2, #24]
  88 0094 5376     		strb	r3, [r2, #25]
  89 0096 9376     		strb	r3, [r2, #26]
  90 0098 D376     		strb	r3, [r2, #27]
  91 009a 06E0     		b	.L13
  92              	.L22:
  93 009c 1A44     		add	r2, r2, r3
  94 009e 0133     		adds	r3, r3, #1
  95 00a0 0021     		movs	r1, #0
  96 00a2 102B     		cmp	r3, #16
  97 00a4 1177     		strb	r1, [r2, #28]
  98 00a6 0FD0     		beq	.L12
  99              	.L37:
 100 00a8 6269     		ldr	r2, [r4, #20]
 101              	.L13:
 102 00aa 97F82E60 		ldrb	r6, [r7, #46]	@ zero_extendqisi2
 103 00ae 99B2     		uxth	r1, r3
 104 00b0 8E42     		cmp	r6, r1
 105 00b2 F3D9     		bls	.L22
 106 00b4 0529     		cmp	r1, #5
 107 00b6 F1D8     		bhi	.L22
 108 00b8 F918     		adds	r1, r7, r3
 109 00ba 1A44     		add	r2, r2, r3
 110 00bc 91F82F10 		ldrb	r1, [r1, #47]	@ zero_extendqisi2
 111 00c0 0133     		adds	r3, r3, #1
 112 00c2 102B     		cmp	r3, #16
 113 00c4 1177     		strb	r1, [r2, #28]
 114 00c6 EFD1     		bne	.L37
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 3


 115              	.L12:
 116 00c8 0023     		movs	r3, #0
 117 00ca 1946     		mov	r1, r3
 118              	.L15:
 119 00cc 6269     		ldr	r2, [r4, #20]
 120 00ce 1A44     		add	r2, r2, r3
 121 00d0 0133     		adds	r3, r3, #1
 122 00d2 402B     		cmp	r3, #64
 123 00d4 82F82C10 		strb	r1, [r2, #44]
 124 00d8 F8D1     		bne	.L15
 125 00da 0023     		movs	r3, #0
 126 00dc 1846     		mov	r0, r3
 127              	.L17:
 128 00de 6169     		ldr	r1, [r4, #20]
 129 00e0 0022     		movs	r2, #0
 130 00e2 1944     		add	r1, r1, r3
 131 00e4 0133     		adds	r3, r3, #1
 132 00e6 802B     		cmp	r3, #128
 133 00e8 81F86C00 		strb	r0, [r1, #108]
 134 00ec F7D1     		bne	.L17
 135 00ee 6169     		ldr	r1, [r4, #20]
 136 00f0 6323     		movs	r3, #99
 137 00f2 6FF07D06 		mvn	r6, #125
 138 00f6 5320     		movs	r0, #83
 139 00f8 81F8EC30 		strb	r3, [r1, #236]
 140 00fc 81F8EF30 		strb	r3, [r1, #239]
 141 0100 81F8ED60 		strb	r6, [r1, #237]
 142 0104 81F8EE00 		strb	r0, [r1, #238]
 143 0108 1346     		mov	r3, r2
 144 010a 2283     		strh	r2, [r4, #24]	@ movhi
 145 010c 00E0     		b	.L19
 146              	.L38:
 147 010e 6169     		ldr	r1, [r4, #20]
 148              	.L19:
 149 0110 1944     		add	r1, r1, r3
 150 0112 81F8F030 		strb	r3, [r1, #240]
 151 0116 0133     		adds	r3, r3, #1
 152 0118 442B     		cmp	r3, #68
 153 011a F8D1     		bne	.L38
 154 011c 238B     		ldrh	r3, [r4, #24]
 155 011e 6269     		ldr	r2, [r4, #20]
 156 0120 591C     		adds	r1, r3, #1
 157 0122 1344     		add	r3, r3, r2
 158 0124 3522     		movs	r2, #53
 159 0126 2183     		strh	r1, [r4, #24]	@ movhi
 160 0128 83F8F020 		strb	r2, [r3, #240]
 161 012c 238B     		ldrh	r3, [r4, #24]
 162 012e 6269     		ldr	r2, [r4, #20]
 163 0130 591C     		adds	r1, r3, #1
 164 0132 1344     		add	r3, r3, r2
 165 0134 0122     		movs	r2, #1
 166 0136 2183     		strh	r1, [r4, #24]	@ movhi
 167 0138 83F8F020 		strb	r2, [r3, #240]
 168 013c 238B     		ldrh	r3, [r4, #24]
 169 013e 6269     		ldr	r2, [r4, #20]
 170 0140 591C     		adds	r1, r3, #1
 171 0142 1344     		add	r3, r3, r2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 4


 172 0144 2183     		strh	r1, [r4, #24]	@ movhi
 173 0146 0020     		movs	r0, #0
 174 0148 83F8F050 		strb	r5, [r3, #240]
 175 014c 40B2     		sxtb	r0, r0
 176 014e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 177              	.L36:
 178 0152 237B     		ldrb	r3, [r4, #12]	@ zero_extendqisi2
 179 0154 043B     		subs	r3, r3, #4
 180 0156 012B     		cmp	r3, #1
 181 0158 92D8     		bhi	.L10
 182              	.L9:
 183 015a 7B68     		ldr	r3, [r7, #4]
 184 015c D360     		str	r3, [r2, #12]	@ unaligned
 185 015e 8FE7     		b	.L10
 186              	.L7:
 187 0160 FFF7FEFF 		bl	trueRandom
 188 0164 0C4A     		ldr	r2, .L39
 189 0166 2369     		ldr	r3, [r4, #16]
 190 0168 1060     		str	r0, [r2]
 191 016a 0146     		mov	r1, r0
 192 016c 64E7     		b	.L8
 193              	.L35:
 194 016e 0B48     		ldr	r0, .L39+4
 195 0170 0B49     		ldr	r1, .L39+8
 196 0172 40F27D62 		movw	r2, #1661
 197 0176 0B4B     		ldr	r3, .L39+12
 198 0178 FFF7FEFF 		bl	debugPrintf
 199              	.L5:
 200 017c FEE7     		b	.L5
 201              	.L20:
 202 017e FF20     		movs	r0, #255
 203 0180 40B2     		sxtb	r0, r0
 204 0182 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 205              	.L34:
 206 0186 0548     		ldr	r0, .L39+4
 207 0188 0749     		ldr	r1, .L39+16
 208 018a 40F27C62 		movw	r2, #1660
 209 018e 054B     		ldr	r3, .L39+12
 210 0190 FFF7FEFF 		bl	debugPrintf
 211              	.L3:
 212 0194 FEE7     		b	.L3
 213              	.L40:
 214 0196 00BF     		.align	2
 215              	.L39:
 216 0198 00000000 		.word	.LANCHOR0
 217 019c 00000000 		.word	.LC0
 218 01a0 70000000 		.word	.LC3
 219 01a4 48000000 		.word	.LC2
 220 01a8 28000000 		.word	.LC1
 221              		.size	dhcp_create_msg, .-dhcp_create_msg
 222              		.section	.text.dhcp_check,"ax",%progbits
 223              		.align	2
 224              		.thumb
 225              		.thumb_func
 226              		.type	dhcp_check, %function
 227              	dhcp_check:
 228              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 5


 229              		@ frame_needed = 0, uses_anonymous_args = 0
 230 0000 10B5     		push	{r4, lr}
 231 0002 446A     		ldr	r4, [r0, #36]
 232 0004 237B     		ldrb	r3, [r4, #12]	@ zero_extendqisi2
 233 0006 082B     		cmp	r3, #8
 234 0008 04D0     		beq	.L42
 235 000a 0023     		movs	r3, #0
 236 000c 0822     		movs	r2, #8
 237 000e 2273     		strb	r2, [r4, #12]
 238 0010 6373     		strb	r3, [r4, #13]
 239 0012 6383     		strh	r3, [r4, #26]	@ movhi
 240              	.L42:
 241 0014 0022     		movs	r2, #0
 242 0016 04F12401 		add	r1, r4, #36
 243 001a FFF7FEFF 		bl	etharp_query
 244 001e 627B     		ldrb	r2, [r4, #13]	@ zero_extendqisi2
 245 0020 0123     		movs	r3, #1
 246 0022 1A44     		add	r2, r2, r3
 247 0024 6273     		strb	r2, [r4, #13]
 248 0026 6383     		strh	r3, [r4, #26]	@ movhi
 249 0028 10BD     		pop	{r4, pc}
 250              		.size	dhcp_check, .-dhcp_check
 251 002a 00BF     		.section	.text.dhcp_bind,"ax",%progbits
 252              		.align	2
 253              		.thumb
 254              		.thumb_func
 255              		.type	dhcp_bind, %function
 256              	dhcp_bind:
 257              		@ args = 0, pretend = 0, frame = 8
 258              		@ frame_needed = 0, uses_anonymous_args = 0
 259 0000 30B5     		push	{r4, r5, lr}
 260 0002 0546     		mov	r5, r0
 261 0004 83B0     		sub	sp, sp, #12
 262 0006 0028     		cmp	r0, #0
 263 0008 78D0     		beq	.L77
 264 000a 446A     		ldr	r4, [r0, #36]
 265 000c 002C     		cmp	r4, #0
 266 000e 6DD0     		beq	.L78
 267 0010 636B     		ldr	r3, [r4, #52]
 268 0012 581C     		adds	r0, r3, #1
 269 0014 60D0     		beq	.L79
 270 0016 3D4A     		ldr	r2, .L83
 271 0018 1E33     		adds	r3, r3, #30
 272 001a A2FB0303 		umull	r0, r3, r2, r3
 273 001e 5B09     		lsrs	r3, r3, #5
 274 0020 B3F5803F 		cmp	r3, #65536
 275 0024 3CD3     		bcc	.L80
 276 0026 4FF6FF73 		movw	r3, #65535
 277 002a A383     		strh	r3, [r4, #28]	@ movhi
 278              	.L52:
 279 002c A26B     		ldr	r2, [r4, #56]
 280 002e 511C     		adds	r1, r2, #1
 281 0030 3DD0     		beq	.L55
 282              	.L81:
 283 0032 3649     		ldr	r1, .L83
 284 0034 1E32     		adds	r2, r2, #30
 285 0036 A1FB0202 		umull	r0, r2, r1, r2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 6


 286 003a 5209     		lsrs	r2, r2, #5
 287 003c B2F5803F 		cmp	r2, #65536
 288 0040 46D2     		bcs	.L56
 289 0042 92B2     		uxth	r2, r2
 290 0044 002A     		cmp	r2, #0
 291 0046 45D1     		bne	.L76
 292 0048 0122     		movs	r2, #1
 293 004a E283     		strh	r2, [r4, #30]	@ movhi
 294              	.L58:
 295 004c 9A42     		cmp	r2, r3
 296 004e 33D9     		bls	.L68
 297              	.L60:
 298 0050 A37B     		ldrb	r3, [r4, #14]	@ zero_extendqisi2
 299 0052 002B     		cmp	r3, #0
 300 0054 35D0     		beq	.L62
 301              	.L82:
 302 0056 A36A     		ldr	r3, [r4, #40]
 303 0058 0093     		str	r3, [sp]
 304              	.L63:
 305 005a E36A     		ldr	r3, [r4, #44]
 306 005c 0193     		str	r3, [sp, #4]
 307 005e 2BB9     		cbnz	r3, .L66
 308 0060 009A     		ldr	r2, [sp]
 309 0062 636A     		ldr	r3, [r4, #36]
 310 0064 1340     		ands	r3, r3, r2
 311 0066 43F08073 		orr	r3, r3, #16777216
 312 006a 0193     		str	r3, [sp, #4]
 313              	.L66:
 314 006c 2846     		mov	r0, r5
 315 006e 04F12401 		add	r1, r4, #36
 316 0072 FFF7FEFF 		bl	netif_set_ipaddr
 317 0076 2846     		mov	r0, r5
 318 0078 6946     		mov	r1, sp
 319 007a FFF7FEFF 		bl	netif_set_netmask
 320 007e 2846     		mov	r0, r5
 321 0080 01A9     		add	r1, sp, #4
 322 0082 FFF7FEFF 		bl	netif_set_gw
 323 0086 2846     		mov	r0, r5
 324 0088 FFF7FEFF 		bl	netif_set_up
 325 008c 237B     		ldrb	r3, [r4, #12]	@ zero_extendqisi2
 326 008e 0A2B     		cmp	r3, #10
 327 0090 04D0     		beq	.L46
 328 0092 0023     		movs	r3, #0
 329 0094 0A22     		movs	r2, #10
 330 0096 2273     		strb	r2, [r4, #12]
 331 0098 6373     		strb	r3, [r4, #13]
 332 009a 6383     		strh	r3, [r4, #26]	@ movhi
 333              	.L46:
 334 009c 03B0     		add	sp, sp, #12
 335              		@ sp needed
 336 009e 30BD     		pop	{r4, r5, pc}
 337              	.L80:
 338 00a0 9BB2     		uxth	r3, r3
 339 00a2 03B9     		cbnz	r3, .L75
 340 00a4 0123     		movs	r3, #1
 341              	.L75:
 342 00a6 A26B     		ldr	r2, [r4, #56]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 7


 343 00a8 A383     		strh	r3, [r4, #28]	@ movhi
 344 00aa 511C     		adds	r1, r2, #1
 345 00ac C1D1     		bne	.L81
 346              	.L55:
 347 00ae E28B     		ldrh	r2, [r4, #30]
 348 00b0 9A42     		cmp	r2, r3
 349 00b2 CDD8     		bhi	.L60
 350 00b4 002A     		cmp	r2, #0
 351 00b6 CBD0     		beq	.L60
 352              	.L68:
 353 00b8 0023     		movs	r3, #0
 354 00ba A383     		strh	r3, [r4, #28]	@ movhi
 355 00bc A37B     		ldrb	r3, [r4, #14]	@ zero_extendqisi2
 356 00be 002B     		cmp	r3, #0
 357 00c0 C9D1     		bne	.L82
 358              	.L62:
 359 00c2 94F82430 		ldrb	r3, [r4, #36]	@ zero_extendqisi2
 360 00c6 1A06     		lsls	r2, r3, #24
 361 00c8 08D4     		bmi	.L64
 362 00ca FF23     		movs	r3, #255
 363 00cc 0093     		str	r3, [sp]
 364 00ce C4E7     		b	.L63
 365              	.L56:
 366 00d0 4FF6FF72 		movw	r2, #65535
 367              	.L76:
 368 00d4 E283     		strh	r2, [r4, #30]	@ movhi
 369 00d6 B9E7     		b	.L58
 370              	.L79:
 371 00d8 A38B     		ldrh	r3, [r4, #28]
 372 00da A7E7     		b	.L52
 373              	.L64:
 374 00dc BF2B     		cmp	r3, #191
 375 00de 8CBF     		ite	hi
 376 00e0 6FF07F43 		mvnhi	r3, #-16777216
 377 00e4 4FF6FF73 		movwls	r3, #65535
 378 00e8 0093     		str	r3, [sp]
 379 00ea B6E7     		b	.L63
 380              	.L78:
 381 00ec 0848     		ldr	r0, .L83+4
 382 00ee 0949     		ldr	r1, .L83+8
 383 00f0 40F2A632 		movw	r2, #934
 384 00f4 084B     		ldr	r3, .L83+12
 385 00f6 FFF7FEFF 		bl	debugPrintf
 386              	.L50:
 387 00fa FEE7     		b	.L50
 388              	.L77:
 389 00fc 0448     		ldr	r0, .L83+4
 390 00fe 0749     		ldr	r1, .L83+16
 391 0100 4FF46972 		mov	r2, #932
 392 0104 044B     		ldr	r3, .L83+12
 393 0106 FFF7FEFF 		bl	debugPrintf
 394              	.L48:
 395 010a FEE7     		b	.L48
 396              	.L84:
 397              		.align	2
 398              	.L83:
 399 010c 89888888 		.word	-2004318071
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 8


 400 0110 00000000 		.word	.LC0
 401 0114 AC000000 		.word	.LC5
 402 0118 48000000 		.word	.LC2
 403 011c 90000000 		.word	.LC4
 404              		.size	dhcp_bind, .-dhcp_bind
 405              		.section	.text.dhcp_option_long.isra.3,"ax",%progbits
 406              		.align	2
 407              		.thumb
 408              		.thumb_func
 409              		.type	dhcp_option_long.isra.3, %function
 410              	dhcp_option_long.isra.3:
 411              		@ args = 0, pretend = 0, frame = 0
 412              		@ frame_needed = 0, uses_anonymous_args = 0
 413              		@ link register save eliminated.
 414 0000 0B88     		ldrh	r3, [r1]
 415 0002 30B4     		push	{r4, r5}
 416 0004 0468     		ldr	r4, [r0]
 417 0006 5D1C     		adds	r5, r3, #1
 418 0008 2344     		add	r3, r3, r4
 419 000a 140E     		lsrs	r4, r2, #24
 420 000c 0D80     		strh	r5, [r1]	@ movhi
 421 000e 83F8F040 		strb	r4, [r3, #240]
 422 0012 0B88     		ldrh	r3, [r1]
 423 0014 0468     		ldr	r4, [r0]
 424 0016 5D1C     		adds	r5, r3, #1
 425 0018 2344     		add	r3, r3, r4
 426 001a C2F30744 		ubfx	r4, r2, #16, #8
 427 001e 0D80     		strh	r5, [r1]	@ movhi
 428 0020 83F8F040 		strb	r4, [r3, #240]
 429 0024 0B88     		ldrh	r3, [r1]
 430 0026 0468     		ldr	r4, [r0]
 431 0028 5D1C     		adds	r5, r3, #1
 432 002a 2344     		add	r3, r3, r4
 433 002c C2F30724 		ubfx	r4, r2, #8, #8
 434 0030 0D80     		strh	r5, [r1]	@ movhi
 435 0032 83F8F040 		strb	r4, [r3, #240]
 436 0036 0B88     		ldrh	r3, [r1]
 437 0038 0068     		ldr	r0, [r0]
 438 003a 1844     		add	r0, r0, r3
 439 003c 0133     		adds	r3, r3, #1
 440 003e 0B80     		strh	r3, [r1]	@ movhi
 441 0040 80F8F020 		strb	r2, [r0, #240]
 442 0044 30BC     		pop	{r4, r5}
 443 0046 7047     		bx	lr
 444              		.size	dhcp_option_long.isra.3, .-dhcp_option_long.isra.3
 445              		.section	.text.dhcp_option_trailer,"ax",%progbits
 446              		.align	2
 447              		.thumb
 448              		.thumb_func
 449              		.type	dhcp_option_trailer, %function
 450              	dhcp_option_trailer:
 451              		@ args = 0, pretend = 0, frame = 0
 452              		@ frame_needed = 0, uses_anonymous_args = 0
 453 0000 10B5     		push	{r4, lr}
 454 0002 A8B1     		cbz	r0, .L92
 455 0004 038B     		ldrh	r3, [r0, #24]
 456 0006 4269     		ldr	r2, [r0, #20]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 9


 457 0008 591C     		adds	r1, r3, #1
 458 000a 1344     		add	r3, r3, r2
 459 000c FF22     		movs	r2, #255
 460 000e 0183     		strh	r1, [r0, #24]	@ movhi
 461 0010 83F8F020 		strb	r2, [r3, #240]
 462 0014 038B     		ldrh	r3, [r0, #24]
 463 0016 432B     		cmp	r3, #67
 464 0018 09D8     		bhi	.L86
 465 001a 0024     		movs	r4, #0
 466              	.L91:
 467 001c 4269     		ldr	r2, [r0, #20]
 468 001e 591C     		adds	r1, r3, #1
 469 0020 1344     		add	r3, r3, r2
 470 0022 0183     		strh	r1, [r0, #24]	@ movhi
 471 0024 83F8F040 		strb	r4, [r3, #240]
 472 0028 038B     		ldrh	r3, [r0, #24]
 473 002a 432B     		cmp	r3, #67
 474 002c F6D9     		bls	.L91
 475              	.L86:
 476 002e 10BD     		pop	{r4, pc}
 477              	.L92:
 478 0030 0348     		ldr	r0, .L93
 479 0032 0449     		ldr	r1, .L93+4
 480 0034 40F2E262 		movw	r2, #1762
 481 0038 034B     		ldr	r3, .L93+8
 482 003a FFF7FEFF 		bl	debugPrintf
 483              	.L88:
 484 003e FEE7     		b	.L88
 485              	.L94:
 486              		.align	2
 487              	.L93:
 488 0040 00000000 		.word	.LC0
 489 0044 C4000000 		.word	.LC6
 490 0048 48000000 		.word	.LC2
 491              		.size	dhcp_option_trailer, .-dhcp_option_trailer
 492              		.section	.text.dhcp_option_hostname.isra.5,"ax",%progbits
 493              		.align	2
 494              		.thumb
 495              		.thumb_func
 496              		.type	dhcp_option_hostname.isra.5, %function
 497              	dhcp_option_hostname.isra.5:
 498              		@ args = 0, pretend = 0, frame = 0
 499              		@ frame_needed = 0, uses_anonymous_args = 0
 500 0000 70B5     		push	{r4, r5, r6, lr}
 501 0002 0D46     		mov	r5, r1
 502 0004 0446     		mov	r4, r0
 503 0006 41B3     		cbz	r1, .L95
 504 0008 0846     		mov	r0, r1
 505 000a FFF7FEFF 		bl	strlen
 506 000e 20B3     		cbz	r0, .L95
 507 0010 238B     		ldrh	r3, [r4, #24]
 508 0012 6269     		ldr	r2, [r4, #20]
 509 0014 5E1C     		adds	r6, r3, #1
 510 0016 1A44     		add	r2, r2, r3
 511 0018 0C21     		movs	r1, #12
 512 001a 2683     		strh	r6, [r4, #24]	@ movhi
 513 001c C3F14103 		rsb	r3, r3, #65
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 10


 514 0020 82F8F010 		strb	r1, [r2, #240]
 515 0024 228B     		ldrh	r2, [r4, #24]
 516 0026 9842     		cmp	r0, r3
 517 0028 28BF     		it	cs
 518 002a 1846     		movcs	r0, r3
 519 002c 6169     		ldr	r1, [r4, #20]
 520 002e C0B2     		uxtb	r0, r0
 521 0030 531C     		adds	r3, r2, #1
 522 0032 461E     		subs	r6, r0, #1
 523 0034 0A44     		add	r2, r2, r1
 524 0036 2383     		strh	r3, [r4, #24]	@ movhi
 525 0038 F6B2     		uxtb	r6, r6
 526 003a 82F8F000 		strb	r0, [r2, #240]
 527 003e 60B1     		cbz	r0, .L95
 528 0040 2E44     		add	r6, r6, r5
 529 0042 691E     		subs	r1, r5, #1
 530              	.L98:
 531 0044 238B     		ldrh	r3, [r4, #24]
 532 0046 11F8010F 		ldrb	r0, [r1, #1]!	@ zero_extendqisi2
 533 004a 6269     		ldr	r2, [r4, #20]
 534 004c 5D1C     		adds	r5, r3, #1
 535 004e B142     		cmp	r1, r6
 536 0050 1344     		add	r3, r3, r2
 537 0052 2583     		strh	r5, [r4, #24]	@ movhi
 538 0054 83F8F000 		strb	r0, [r3, #240]
 539 0058 F4D1     		bne	.L98
 540              	.L95:
 541 005a 70BD     		pop	{r4, r5, r6, pc}
 542              		.size	dhcp_option_hostname.isra.5, .-dhcp_option_hostname.isra.5
 543              		.section	.text.dhcp_delete_msg,"ax",%progbits
 544              		.align	2
 545              		.thumb
 546              		.thumb_func
 547              		.type	dhcp_delete_msg, %function
 548              	dhcp_delete_msg:
 549              		@ args = 0, pretend = 0, frame = 0
 550              		@ frame_needed = 0, uses_anonymous_args = 0
 551 0000 10B5     		push	{r4, lr}
 552 0002 0446     		mov	r4, r0
 553 0004 38B1     		cbz	r0, .L113
 554 0006 0069     		ldr	r0, [r0, #16]
 555 0008 08B1     		cbz	r0, .L109
 556 000a FFF7FEFF 		bl	pbuf_free
 557              	.L109:
 558 000e 0023     		movs	r3, #0
 559 0010 2361     		str	r3, [r4, #16]
 560 0012 6361     		str	r3, [r4, #20]
 561 0014 10BD     		pop	{r4, pc}
 562              	.L113:
 563 0016 0448     		ldr	r0, .L114
 564 0018 0449     		ldr	r1, .L114+4
 565 001a 40F2CD62 		movw	r2, #1741
 566 001e 044B     		ldr	r3, .L114+8
 567 0020 FFF7FEFF 		bl	debugPrintf
 568              	.L108:
 569 0024 FEE7     		b	.L108
 570              	.L115:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 11


 571 0026 00BF     		.align	2
 572              	.L114:
 573 0028 00000000 		.word	.LC0
 574 002c E8000000 		.word	.LC7
 575 0030 48000000 		.word	.LC2
 576              		.size	dhcp_delete_msg, .-dhcp_delete_msg
 577              		.section	.text.dhcp_rebind,"ax",%progbits
 578              		.align	2
 579              		.thumb
 580              		.thumb_func
 581              		.type	dhcp_rebind, %function
 582              	dhcp_rebind:
 583              		@ args = 0, pretend = 0, frame = 0
 584              		@ frame_needed = 0, uses_anonymous_args = 0
 585 0000 70B5     		push	{r4, r5, r6, lr}
 586 0002 446A     		ldr	r4, [r0, #36]
 587 0004 82B0     		sub	sp, sp, #8
 588 0006 237B     		ldrb	r3, [r4, #12]	@ zero_extendqisi2
 589 0008 0546     		mov	r5, r0
 590 000a 042B     		cmp	r3, #4
 591 000c 04D0     		beq	.L117
 592 000e 0023     		movs	r3, #0
 593 0010 0422     		movs	r2, #4
 594 0012 2273     		strb	r2, [r4, #12]
 595 0014 6373     		strb	r3, [r4, #13]
 596 0016 6383     		strh	r3, [r4, #26]	@ movhi
 597              	.L117:
 598 0018 2846     		mov	r0, r5
 599 001a 2146     		mov	r1, r4
 600 001c 0322     		movs	r2, #3
 601 001e FFF7FEFF 		bl	dhcp_create_msg
 602 0022 0646     		mov	r6, r0
 603 0024 D0B1     		cbz	r0, .L124
 604              	.L118:
 605 0026 637B     		ldrb	r3, [r4, #13]	@ zero_extendqisi2
 606 0028 0133     		adds	r3, r3, #1
 607 002a DBB2     		uxtb	r3, r3
 608 002c 092B     		cmp	r3, #9
 609 002e 6373     		strb	r3, [r4, #13]
 610 0030 0FD8     		bhi	.L120
 611 0032 C3EB4312 		rsb	r2, r3, r3, lsl #5
 612 0036 03EB8203 		add	r3, r3, r2, lsl #2
 613 003a DB00     		lsls	r3, r3, #3
 614 003c 234A     		ldr	r2, .L125
 615 003e 9BB2     		uxth	r3, r3
 616 0040 03F2F313 		addw	r3, r3, #499
 617 0044 82FB0313 		smull	r1, r3, r2, r3
 618 0048 3046     		mov	r0, r6
 619 004a 5B09     		lsrs	r3, r3, #5
 620 004c 6383     		strh	r3, [r4, #26]	@ movhi
 621 004e 02B0     		add	sp, sp, #8
 622              		@ sp needed
 623 0050 70BD     		pop	{r4, r5, r6, pc}
 624              	.L120:
 625 0052 1423     		movs	r3, #20
 626 0054 3046     		mov	r0, r6
 627 0056 6383     		strh	r3, [r4, #26]	@ movhi
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 12


 628 0058 02B0     		add	sp, sp, #8
 629              		@ sp needed
 630 005a 70BD     		pop	{r4, r5, r6, pc}
 631              	.L124:
 632 005c 238B     		ldrh	r3, [r4, #24]
 633 005e 6269     		ldr	r2, [r4, #20]
 634 0060 591C     		adds	r1, r3, #1
 635 0062 1344     		add	r3, r3, r2
 636 0064 3922     		movs	r2, #57
 637 0066 2183     		strh	r1, [r4, #24]	@ movhi
 638 0068 83F8F020 		strb	r2, [r3, #240]
 639 006c 238B     		ldrh	r3, [r4, #24]
 640 006e 6269     		ldr	r2, [r4, #20]
 641 0070 591C     		adds	r1, r3, #1
 642 0072 1344     		add	r3, r3, r2
 643 0074 0222     		movs	r2, #2
 644 0076 2183     		strh	r1, [r4, #24]	@ movhi
 645 0078 83F8F020 		strb	r2, [r3, #240]
 646 007c AB8D     		ldrh	r3, [r5, #44]
 647 007e 228B     		ldrh	r2, [r4, #24]
 648 0080 6169     		ldr	r1, [r4, #20]
 649 0082 501C     		adds	r0, r2, #1
 650 0084 0A44     		add	r2, r2, r1
 651 0086 190A     		lsrs	r1, r3, #8
 652 0088 2083     		strh	r0, [r4, #24]	@ movhi
 653 008a 82F8F010 		strb	r1, [r2, #240]
 654 008e 228B     		ldrh	r2, [r4, #24]
 655 0090 6169     		ldr	r1, [r4, #20]
 656 0092 501C     		adds	r0, r2, #1
 657 0094 0A44     		add	r2, r2, r1
 658 0096 2083     		strh	r0, [r4, #24]	@ movhi
 659 0098 82F8F030 		strb	r3, [r2, #240]
 660 009c A96A     		ldr	r1, [r5, #40]
 661 009e 2046     		mov	r0, r4
 662 00a0 FFF7FEFF 		bl	dhcp_option_hostname.isra.5
 663 00a4 2046     		mov	r0, r4
 664 00a6 FFF7FEFF 		bl	dhcp_option_trailer
 665 00aa 218B     		ldrh	r1, [r4, #24]
 666 00ac 2069     		ldr	r0, [r4, #16]
 667 00ae F031     		adds	r1, r1, #240
 668 00b0 89B2     		uxth	r1, r1
 669 00b2 FFF7FEFF 		bl	pbuf_realloc
 670 00b6 6068     		ldr	r0, [r4, #4]
 671 00b8 2169     		ldr	r1, [r4, #16]
 672 00ba 054A     		ldr	r2, .L125+4
 673 00bc 0095     		str	r5, [sp]
 674 00be 4323     		movs	r3, #67
 675 00c0 FFF7FEFF 		bl	udp_sendto_if
 676 00c4 2046     		mov	r0, r4
 677 00c6 FFF7FEFF 		bl	dhcp_delete_msg
 678 00ca ACE7     		b	.L118
 679              	.L126:
 680              		.align	2
 681              	.L125:
 682 00cc D34D6210 		.word	274877907
 683 00d0 00000000 		.word	ip_addr_broadcast
 684              		.size	dhcp_rebind, .-dhcp_rebind
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 13


 685              		.section	.text.dhcp_discover,"ax",%progbits
 686              		.align	2
 687              		.thumb
 688              		.thumb_func
 689              		.type	dhcp_discover, %function
 690              	dhcp_discover:
 691              		@ args = 0, pretend = 0, frame = 0
 692              		@ frame_needed = 0, uses_anonymous_args = 0
 693 0000 70B5     		push	{r4, r5, r6, lr}
 694 0002 446A     		ldr	r4, [r0, #36]
 695 0004 0023     		movs	r3, #0
 696 0006 227B     		ldrb	r2, [r4, #12]	@ zero_extendqisi2
 697 0008 82B0     		sub	sp, sp, #8
 698 000a 062A     		cmp	r2, #6
 699 000c 0546     		mov	r5, r0
 700 000e 6362     		str	r3, [r4, #36]
 701 0010 03D0     		beq	.L128
 702 0012 0622     		movs	r2, #6
 703 0014 6373     		strb	r3, [r4, #13]
 704 0016 6383     		strh	r3, [r4, #26]	@ movhi
 705 0018 2273     		strb	r2, [r4, #12]
 706              	.L128:
 707 001a 2846     		mov	r0, r5
 708 001c 2146     		mov	r1, r4
 709 001e 0122     		movs	r2, #1
 710 0020 FFF7FEFF 		bl	dhcp_create_msg
 711 0024 0646     		mov	r6, r0
 712 0026 D8B1     		cbz	r0, .L135
 713              	.L129:
 714 0028 637B     		ldrb	r3, [r4, #13]	@ zero_extendqisi2
 715 002a 0133     		adds	r3, r3, #1
 716 002c DBB2     		uxtb	r3, r3
 717 002e 052B     		cmp	r3, #5
 718 0030 6373     		strb	r3, [r4, #13]
 719 0032 10D8     		bhi	.L131
 720 0034 4FF47A72 		mov	r2, #1000
 721 0038 02FA03F3 		lsl	r3, r2, r3
 722 003c 3A4A     		ldr	r2, .L136
 723 003e 03F2F313 		addw	r3, r3, #499
 724 0042 82FB0312 		smull	r1, r2, r2, r3
 725 0046 DB17     		asrs	r3, r3, #31
 726 0048 C3EB6213 		rsb	r3, r3, r2, asr #5
 727 004c 9BB2     		uxth	r3, r3
 728 004e 3046     		mov	r0, r6
 729 0050 6383     		strh	r3, [r4, #26]	@ movhi
 730 0052 02B0     		add	sp, sp, #8
 731              		@ sp needed
 732 0054 70BD     		pop	{r4, r5, r6, pc}
 733              	.L131:
 734 0056 7823     		movs	r3, #120
 735 0058 3046     		mov	r0, r6
 736 005a 6383     		strh	r3, [r4, #26]	@ movhi
 737 005c 02B0     		add	sp, sp, #8
 738              		@ sp needed
 739 005e 70BD     		pop	{r4, r5, r6, pc}
 740              	.L135:
 741 0060 238B     		ldrh	r3, [r4, #24]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 14


 742 0062 6269     		ldr	r2, [r4, #20]
 743 0064 591C     		adds	r1, r3, #1
 744 0066 1344     		add	r3, r3, r2
 745 0068 3922     		movs	r2, #57
 746 006a 2183     		strh	r1, [r4, #24]	@ movhi
 747 006c 83F8F020 		strb	r2, [r3, #240]
 748 0070 238B     		ldrh	r3, [r4, #24]
 749 0072 6269     		ldr	r2, [r4, #20]
 750 0074 591C     		adds	r1, r3, #1
 751 0076 1344     		add	r3, r3, r2
 752 0078 0222     		movs	r2, #2
 753 007a 2183     		strh	r1, [r4, #24]	@ movhi
 754 007c 83F8F020 		strb	r2, [r3, #240]
 755 0080 228B     		ldrh	r2, [r4, #24]
 756 0082 AB8D     		ldrh	r3, [r5, #44]
 757 0084 6169     		ldr	r1, [r4, #20]
 758 0086 501C     		adds	r0, r2, #1
 759 0088 0A44     		add	r2, r2, r1
 760 008a 190A     		lsrs	r1, r3, #8
 761 008c 2083     		strh	r0, [r4, #24]	@ movhi
 762 008e 82F8F010 		strb	r1, [r2, #240]
 763 0092 228B     		ldrh	r2, [r4, #24]
 764 0094 6169     		ldr	r1, [r4, #20]
 765 0096 501C     		adds	r0, r2, #1
 766 0098 0A44     		add	r2, r2, r1
 767 009a 2083     		strh	r0, [r4, #24]	@ movhi
 768 009c 82F8F030 		strb	r3, [r2, #240]
 769 00a0 238B     		ldrh	r3, [r4, #24]
 770 00a2 6269     		ldr	r2, [r4, #20]
 771 00a4 591C     		adds	r1, r3, #1
 772 00a6 1344     		add	r3, r3, r2
 773 00a8 3722     		movs	r2, #55
 774 00aa 2183     		strh	r1, [r4, #24]	@ movhi
 775 00ac 83F8F020 		strb	r2, [r3, #240]
 776 00b0 238B     		ldrh	r3, [r4, #24]
 777 00b2 6269     		ldr	r2, [r4, #20]
 778 00b4 591C     		adds	r1, r3, #1
 779 00b6 1344     		add	r3, r3, r2
 780 00b8 0422     		movs	r2, #4
 781 00ba 2183     		strh	r1, [r4, #24]	@ movhi
 782 00bc 83F8F020 		strb	r2, [r3, #240]
 783 00c0 238B     		ldrh	r3, [r4, #24]
 784 00c2 6269     		ldr	r2, [r4, #20]
 785 00c4 591C     		adds	r1, r3, #1
 786 00c6 1344     		add	r3, r3, r2
 787 00c8 0122     		movs	r2, #1
 788 00ca 2183     		strh	r1, [r4, #24]	@ movhi
 789 00cc 83F8F020 		strb	r2, [r3, #240]
 790 00d0 238B     		ldrh	r3, [r4, #24]
 791 00d2 6269     		ldr	r2, [r4, #20]
 792 00d4 591C     		adds	r1, r3, #1
 793 00d6 1344     		add	r3, r3, r2
 794 00d8 0322     		movs	r2, #3
 795 00da 2183     		strh	r1, [r4, #24]	@ movhi
 796 00dc 83F8F020 		strb	r2, [r3, #240]
 797 00e0 238B     		ldrh	r3, [r4, #24]
 798 00e2 6269     		ldr	r2, [r4, #20]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 15


 799 00e4 591C     		adds	r1, r3, #1
 800 00e6 1344     		add	r3, r3, r2
 801 00e8 1C22     		movs	r2, #28
 802 00ea 2183     		strh	r1, [r4, #24]	@ movhi
 803 00ec 83F8F020 		strb	r2, [r3, #240]
 804 00f0 238B     		ldrh	r3, [r4, #24]
 805 00f2 6269     		ldr	r2, [r4, #20]
 806 00f4 591C     		adds	r1, r3, #1
 807 00f6 1344     		add	r3, r3, r2
 808 00f8 0622     		movs	r2, #6
 809 00fa 2183     		strh	r1, [r4, #24]	@ movhi
 810 00fc 2046     		mov	r0, r4
 811 00fe 83F8F020 		strb	r2, [r3, #240]
 812 0102 FFF7FEFF 		bl	dhcp_option_trailer
 813 0106 218B     		ldrh	r1, [r4, #24]
 814 0108 2069     		ldr	r0, [r4, #16]
 815 010a F031     		adds	r1, r1, #240
 816 010c 89B2     		uxth	r1, r1
 817 010e FFF7FEFF 		bl	pbuf_realloc
 818 0112 6068     		ldr	r0, [r4, #4]
 819 0114 2169     		ldr	r1, [r4, #16]
 820 0116 054A     		ldr	r2, .L136+4
 821 0118 0095     		str	r5, [sp]
 822 011a 4323     		movs	r3, #67
 823 011c FFF7FEFF 		bl	udp_sendto_if
 824 0120 2046     		mov	r0, r4
 825 0122 FFF7FEFF 		bl	dhcp_delete_msg
 826 0126 7FE7     		b	.L129
 827              	.L137:
 828              		.align	2
 829              	.L136:
 830 0128 D34D6210 		.word	274877907
 831 012c 00000000 		.word	ip_addr_broadcast
 832              		.size	dhcp_discover, .-dhcp_discover
 833              		.section	.text.dhcp_select,"ax",%progbits
 834              		.align	2
 835              		.thumb
 836              		.thumb_func
 837              		.type	dhcp_select, %function
 838              	dhcp_select:
 839              		@ args = 0, pretend = 0, frame = 0
 840              		@ frame_needed = 0, uses_anonymous_args = 0
 841 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 842 0004 446A     		ldr	r4, [r0, #36]
 843 0006 83B0     		sub	sp, sp, #12
 844 0008 237B     		ldrb	r3, [r4, #12]	@ zero_extendqisi2
 845 000a 0546     		mov	r5, r0
 846 000c 012B     		cmp	r3, #1
 847 000e 04D0     		beq	.L139
 848 0010 0023     		movs	r3, #0
 849 0012 0122     		movs	r2, #1
 850 0014 2273     		strb	r2, [r4, #12]
 851 0016 6373     		strb	r3, [r4, #13]
 852 0018 6383     		strh	r3, [r4, #26]	@ movhi
 853              	.L139:
 854 001a 2846     		mov	r0, r5
 855 001c 2146     		mov	r1, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 16


 856 001e 0322     		movs	r2, #3
 857 0020 FFF7FEFF 		bl	dhcp_create_msg
 858 0024 0646     		mov	r6, r0
 859 0026 E8B1     		cbz	r0, .L146
 860              	.L140:
 861 0028 637B     		ldrb	r3, [r4, #13]	@ zero_extendqisi2
 862 002a 0133     		adds	r3, r3, #1
 863 002c DBB2     		uxtb	r3, r3
 864 002e 052B     		cmp	r3, #5
 865 0030 6373     		strb	r3, [r4, #13]
 866 0032 11D8     		bhi	.L142
 867 0034 4FF47A72 		mov	r2, #1000
 868 0038 02FA03F3 		lsl	r3, r2, r3
 869 003c 564A     		ldr	r2, .L147
 870 003e 03F2F313 		addw	r3, r3, #499
 871 0042 82FB0312 		smull	r1, r2, r2, r3
 872 0046 DB17     		asrs	r3, r3, #31
 873 0048 C3EB6213 		rsb	r3, r3, r2, asr #5
 874 004c 9BB2     		uxth	r3, r3
 875 004e 3046     		mov	r0, r6
 876 0050 6383     		strh	r3, [r4, #26]	@ movhi
 877 0052 03B0     		add	sp, sp, #12
 878              		@ sp needed
 879 0054 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 880              	.L142:
 881 0058 7823     		movs	r3, #120
 882 005a 3046     		mov	r0, r6
 883 005c 6383     		strh	r3, [r4, #26]	@ movhi
 884 005e 03B0     		add	sp, sp, #12
 885              		@ sp needed
 886 0060 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 887              	.L146:
 888 0064 238B     		ldrh	r3, [r4, #24]
 889 0066 6269     		ldr	r2, [r4, #20]
 890 0068 591C     		adds	r1, r3, #1
 891 006a 1344     		add	r3, r3, r2
 892 006c 3922     		movs	r2, #57
 893 006e 2183     		strh	r1, [r4, #24]	@ movhi
 894 0070 83F8F020 		strb	r2, [r3, #240]
 895 0074 238B     		ldrh	r3, [r4, #24]
 896 0076 6269     		ldr	r2, [r4, #20]
 897 0078 591C     		adds	r1, r3, #1
 898 007a 1344     		add	r3, r3, r2
 899 007c 0222     		movs	r2, #2
 900 007e 2183     		strh	r1, [r4, #24]	@ movhi
 901 0080 83F8F020 		strb	r2, [r3, #240]
 902 0084 228B     		ldrh	r2, [r4, #24]
 903 0086 AB8D     		ldrh	r3, [r5, #44]
 904 0088 6169     		ldr	r1, [r4, #20]
 905 008a 501C     		adds	r0, r2, #1
 906 008c 0A44     		add	r2, r2, r1
 907 008e 190A     		lsrs	r1, r3, #8
 908 0090 2083     		strh	r0, [r4, #24]	@ movhi
 909 0092 82F8F010 		strb	r1, [r2, #240]
 910 0096 228B     		ldrh	r2, [r4, #24]
 911 0098 6169     		ldr	r1, [r4, #20]
 912 009a 501C     		adds	r0, r2, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 17


 913 009c 0A44     		add	r2, r2, r1
 914 009e 2083     		strh	r0, [r4, #24]	@ movhi
 915 00a0 82F8F030 		strb	r3, [r2, #240]
 916 00a4 238B     		ldrh	r3, [r4, #24]
 917 00a6 6269     		ldr	r2, [r4, #20]
 918 00a8 591C     		adds	r1, r3, #1
 919 00aa 1344     		add	r3, r3, r2
 920 00ac 3222     		movs	r2, #50
 921 00ae 2183     		strh	r1, [r4, #24]	@ movhi
 922 00b0 83F8F020 		strb	r2, [r3, #240]
 923 00b4 238B     		ldrh	r3, [r4, #24]
 924 00b6 6269     		ldr	r2, [r4, #20]
 925 00b8 591C     		adds	r1, r3, #1
 926 00ba 0427     		movs	r7, #4
 927 00bc 1344     		add	r3, r3, r2
 928 00be 2183     		strh	r1, [r4, #24]	@ movhi
 929 00c0 83F8F070 		strb	r7, [r3, #240]
 930 00c4 606A     		ldr	r0, [r4, #36]
 931 00c6 FFF7FEFF 		bl	lwip_ntohl
 932 00ca 04F11409 		add	r9, r4, #20
 933 00ce 04F11808 		add	r8, r4, #24
 934 00d2 0246     		mov	r2, r0
 935 00d4 4146     		mov	r1, r8
 936 00d6 4846     		mov	r0, r9
 937 00d8 FFF7FEFF 		bl	dhcp_option_long.isra.3
 938 00dc 238B     		ldrh	r3, [r4, #24]
 939 00de 6269     		ldr	r2, [r4, #20]
 940 00e0 591C     		adds	r1, r3, #1
 941 00e2 1344     		add	r3, r3, r2
 942 00e4 3622     		movs	r2, #54
 943 00e6 2183     		strh	r1, [r4, #24]	@ movhi
 944 00e8 83F8F020 		strb	r2, [r3, #240]
 945 00ec 238B     		ldrh	r3, [r4, #24]
 946 00ee 6269     		ldr	r2, [r4, #20]
 947 00f0 591C     		adds	r1, r3, #1
 948 00f2 1344     		add	r3, r3, r2
 949 00f4 2183     		strh	r1, [r4, #24]	@ movhi
 950 00f6 83F8F070 		strb	r7, [r3, #240]
 951 00fa 206A     		ldr	r0, [r4, #32]
 952 00fc FFF7FEFF 		bl	lwip_ntohl
 953 0100 4146     		mov	r1, r8
 954 0102 0246     		mov	r2, r0
 955 0104 4846     		mov	r0, r9
 956 0106 FFF7FEFF 		bl	dhcp_option_long.isra.3
 957 010a 238B     		ldrh	r3, [r4, #24]
 958 010c 6269     		ldr	r2, [r4, #20]
 959 010e 591C     		adds	r1, r3, #1
 960 0110 1344     		add	r3, r3, r2
 961 0112 3722     		movs	r2, #55
 962 0114 2183     		strh	r1, [r4, #24]	@ movhi
 963 0116 83F8F020 		strb	r2, [r3, #240]
 964 011a 238B     		ldrh	r3, [r4, #24]
 965 011c 6269     		ldr	r2, [r4, #20]
 966 011e 591C     		adds	r1, r3, #1
 967 0120 1344     		add	r3, r3, r2
 968 0122 2183     		strh	r1, [r4, #24]	@ movhi
 969 0124 83F8F070 		strb	r7, [r3, #240]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 18


 970 0128 238B     		ldrh	r3, [r4, #24]
 971 012a 6269     		ldr	r2, [r4, #20]
 972 012c 591C     		adds	r1, r3, #1
 973 012e 1344     		add	r3, r3, r2
 974 0130 0122     		movs	r2, #1
 975 0132 2183     		strh	r1, [r4, #24]	@ movhi
 976 0134 83F8F020 		strb	r2, [r3, #240]
 977 0138 238B     		ldrh	r3, [r4, #24]
 978 013a 6269     		ldr	r2, [r4, #20]
 979 013c 591C     		adds	r1, r3, #1
 980 013e 1344     		add	r3, r3, r2
 981 0140 0322     		movs	r2, #3
 982 0142 2183     		strh	r1, [r4, #24]	@ movhi
 983 0144 83F8F020 		strb	r2, [r3, #240]
 984 0148 238B     		ldrh	r3, [r4, #24]
 985 014a 6269     		ldr	r2, [r4, #20]
 986 014c 591C     		adds	r1, r3, #1
 987 014e 1344     		add	r3, r3, r2
 988 0150 1C22     		movs	r2, #28
 989 0152 2183     		strh	r1, [r4, #24]	@ movhi
 990 0154 83F8F020 		strb	r2, [r3, #240]
 991 0158 238B     		ldrh	r3, [r4, #24]
 992 015a 6269     		ldr	r2, [r4, #20]
 993 015c 591C     		adds	r1, r3, #1
 994 015e 1344     		add	r3, r3, r2
 995 0160 0622     		movs	r2, #6
 996 0162 2183     		strh	r1, [r4, #24]	@ movhi
 997 0164 83F8F020 		strb	r2, [r3, #240]
 998 0168 A96A     		ldr	r1, [r5, #40]
 999 016a 2046     		mov	r0, r4
 1000 016c FFF7FEFF 		bl	dhcp_option_hostname.isra.5
 1001 0170 2046     		mov	r0, r4
 1002 0172 FFF7FEFF 		bl	dhcp_option_trailer
 1003 0176 218B     		ldrh	r1, [r4, #24]
 1004 0178 2069     		ldr	r0, [r4, #16]
 1005 017a F031     		adds	r1, r1, #240
 1006 017c 89B2     		uxth	r1, r1
 1007 017e FFF7FEFF 		bl	pbuf_realloc
 1008 0182 6068     		ldr	r0, [r4, #4]
 1009 0184 2169     		ldr	r1, [r4, #16]
 1010 0186 054A     		ldr	r2, .L147+4
 1011 0188 0095     		str	r5, [sp]
 1012 018a 4323     		movs	r3, #67
 1013 018c FFF7FEFF 		bl	udp_sendto_if
 1014 0190 2046     		mov	r0, r4
 1015 0192 FFF7FEFF 		bl	dhcp_delete_msg
 1016 0196 47E7     		b	.L140
 1017              	.L148:
 1018              		.align	2
 1019              	.L147:
 1020 0198 D34D6210 		.word	274877907
 1021 019c 00000000 		.word	ip_addr_broadcast
 1022              		.size	dhcp_select, .-dhcp_select
 1023              		.section	.text.dhcp_reboot,"ax",%progbits
 1024              		.align	2
 1025              		.thumb
 1026              		.thumb_func
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 19


 1027              		.type	dhcp_reboot, %function
 1028              	dhcp_reboot:
 1029              		@ args = 0, pretend = 0, frame = 0
 1030              		@ frame_needed = 0, uses_anonymous_args = 0
 1031 0000 70B5     		push	{r4, r5, r6, lr}
 1032 0002 446A     		ldr	r4, [r0, #36]
 1033 0004 82B0     		sub	sp, sp, #8
 1034 0006 237B     		ldrb	r3, [r4, #12]	@ zero_extendqisi2
 1035 0008 0546     		mov	r5, r0
 1036 000a 032B     		cmp	r3, #3
 1037 000c 04D0     		beq	.L150
 1038 000e 0023     		movs	r3, #0
 1039 0010 0322     		movs	r2, #3
 1040 0012 2273     		strb	r2, [r4, #12]
 1041 0014 6373     		strb	r3, [r4, #13]
 1042 0016 6383     		strh	r3, [r4, #26]	@ movhi
 1043              	.L150:
 1044 0018 2846     		mov	r0, r5
 1045 001a 2146     		mov	r1, r4
 1046 001c 0322     		movs	r2, #3
 1047 001e FFF7FEFF 		bl	dhcp_create_msg
 1048 0022 0646     		mov	r6, r0
 1049 0024 D0B1     		cbz	r0, .L157
 1050              	.L151:
 1051 0026 637B     		ldrb	r3, [r4, #13]	@ zero_extendqisi2
 1052 0028 0133     		adds	r3, r3, #1
 1053 002a DBB2     		uxtb	r3, r3
 1054 002c 092B     		cmp	r3, #9
 1055 002e 6373     		strb	r3, [r4, #13]
 1056 0030 0FD8     		bhi	.L153
 1057 0032 C3EB4312 		rsb	r2, r3, r3, lsl #5
 1058 0036 03EB8203 		add	r3, r3, r2, lsl #2
 1059 003a DB00     		lsls	r3, r3, #3
 1060 003c 2E4A     		ldr	r2, .L158
 1061 003e 9BB2     		uxth	r3, r3
 1062 0040 03F2F313 		addw	r3, r3, #499
 1063 0044 82FB0313 		smull	r1, r3, r2, r3
 1064 0048 3046     		mov	r0, r6
 1065 004a 5B09     		lsrs	r3, r3, #5
 1066 004c 6383     		strh	r3, [r4, #26]	@ movhi
 1067 004e 02B0     		add	sp, sp, #8
 1068              		@ sp needed
 1069 0050 70BD     		pop	{r4, r5, r6, pc}
 1070              	.L153:
 1071 0052 1423     		movs	r3, #20
 1072 0054 3046     		mov	r0, r6
 1073 0056 6383     		strh	r3, [r4, #26]	@ movhi
 1074 0058 02B0     		add	sp, sp, #8
 1075              		@ sp needed
 1076 005a 70BD     		pop	{r4, r5, r6, pc}
 1077              	.L157:
 1078 005c 238B     		ldrh	r3, [r4, #24]
 1079 005e 6269     		ldr	r2, [r4, #20]
 1080 0060 591C     		adds	r1, r3, #1
 1081 0062 1344     		add	r3, r3, r2
 1082 0064 3922     		movs	r2, #57
 1083 0066 2183     		strh	r1, [r4, #24]	@ movhi
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 20


 1084 0068 83F8F020 		strb	r2, [r3, #240]
 1085 006c 238B     		ldrh	r3, [r4, #24]
 1086 006e 6269     		ldr	r2, [r4, #20]
 1087 0070 591C     		adds	r1, r3, #1
 1088 0072 1A44     		add	r2, r2, r3
 1089 0074 0223     		movs	r3, #2
 1090 0076 2183     		strh	r1, [r4, #24]	@ movhi
 1091 0078 82F8F030 		strb	r3, [r2, #240]
 1092 007c 228B     		ldrh	r2, [r4, #24]
 1093 007e 6169     		ldr	r1, [r4, #20]
 1094 0080 501C     		adds	r0, r2, #1
 1095 0082 0A44     		add	r2, r2, r1
 1096 0084 2083     		strh	r0, [r4, #24]	@ movhi
 1097 0086 82F8F030 		strb	r3, [r2, #240]
 1098 008a 238B     		ldrh	r3, [r4, #24]
 1099 008c 6269     		ldr	r2, [r4, #20]
 1100 008e 591C     		adds	r1, r3, #1
 1101 0090 1344     		add	r3, r3, r2
 1102 0092 4022     		movs	r2, #64
 1103 0094 2183     		strh	r1, [r4, #24]	@ movhi
 1104 0096 83F8F020 		strb	r2, [r3, #240]
 1105 009a 238B     		ldrh	r3, [r4, #24]
 1106 009c 6269     		ldr	r2, [r4, #20]
 1107 009e 591C     		adds	r1, r3, #1
 1108 00a0 1344     		add	r3, r3, r2
 1109 00a2 3222     		movs	r2, #50
 1110 00a4 2183     		strh	r1, [r4, #24]	@ movhi
 1111 00a6 83F8F020 		strb	r2, [r3, #240]
 1112 00aa 238B     		ldrh	r3, [r4, #24]
 1113 00ac 6269     		ldr	r2, [r4, #20]
 1114 00ae 591C     		adds	r1, r3, #1
 1115 00b0 1344     		add	r3, r3, r2
 1116 00b2 0422     		movs	r2, #4
 1117 00b4 2183     		strh	r1, [r4, #24]	@ movhi
 1118 00b6 83F8F020 		strb	r2, [r3, #240]
 1119 00ba 606A     		ldr	r0, [r4, #36]
 1120 00bc FFF7FEFF 		bl	lwip_ntohl
 1121 00c0 04F11801 		add	r1, r4, #24
 1122 00c4 0246     		mov	r2, r0
 1123 00c6 04F11400 		add	r0, r4, #20
 1124 00ca FFF7FEFF 		bl	dhcp_option_long.isra.3
 1125 00ce 2046     		mov	r0, r4
 1126 00d0 FFF7FEFF 		bl	dhcp_option_trailer
 1127 00d4 218B     		ldrh	r1, [r4, #24]
 1128 00d6 2069     		ldr	r0, [r4, #16]
 1129 00d8 F031     		adds	r1, r1, #240
 1130 00da 89B2     		uxth	r1, r1
 1131 00dc FFF7FEFF 		bl	pbuf_realloc
 1132 00e0 6068     		ldr	r0, [r4, #4]
 1133 00e2 2169     		ldr	r1, [r4, #16]
 1134 00e4 054A     		ldr	r2, .L158+4
 1135 00e6 0095     		str	r5, [sp]
 1136 00e8 4323     		movs	r3, #67
 1137 00ea FFF7FEFF 		bl	udp_sendto_if
 1138 00ee 2046     		mov	r0, r4
 1139 00f0 FFF7FEFF 		bl	dhcp_delete_msg
 1140 00f4 97E7     		b	.L151
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 21


 1141              	.L159:
 1142 00f6 00BF     		.align	2
 1143              	.L158:
 1144 00f8 D34D6210 		.word	274877907
 1145 00fc 00000000 		.word	ip_addr_broadcast
 1146              		.size	dhcp_reboot, .-dhcp_reboot
 1147              		.section	.text.dhcp_recv,"ax",%progbits
 1148              		.align	2
 1149              		.thumb
 1150              		.thumb_func
 1151              		.type	dhcp_recv, %function
 1152              	dhcp_recv:
 1153              		@ args = 4, pretend = 0, frame = 40
 1154              		@ frame_needed = 0, uses_anonymous_args = 0
 1155 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1156 0004 5389     		ldrh	r3, [r2, #10]
 1157 0006 8BB0     		sub	sp, sp, #44
 1158 0008 2B2B     		cmp	r3, #43
 1159 000a 9246     		mov	r10, r2
 1160 000c 8046     		mov	r8, r0
 1161 000e D0F824B0 		ldr	fp, [r0, #36]
 1162 0012 5568     		ldr	r5, [r2, #4]
 1163 0014 02D9     		bls	.L162
 1164 0016 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 1165 0018 022B     		cmp	r3, #2
 1166 001a 08D0     		beq	.L295
 1167              	.L162:
 1168 001c 0023     		movs	r3, #0
 1169 001e 5046     		mov	r0, r10
 1170 0020 CBF80830 		str	r3, [fp, #8]
 1171 0024 FFF7FEFF 		bl	pbuf_free
 1172 0028 0BB0     		add	sp, sp, #44
 1173              		@ sp needed
 1174 002a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1175              	.L295:
 1176 002e 90F82E30 		ldrb	r3, [r0, #46]	@ zero_extendqisi2
 1177 0032 A3B1     		cbz	r3, .L164
 1178 0034 90F82F10 		ldrb	r1, [r0, #47]	@ zero_extendqisi2
 1179 0038 2A7F     		ldrb	r2, [r5, #28]	@ zero_extendqisi2
 1180 003a 9142     		cmp	r1, r2
 1181 003c EED1     		bne	.L162
 1182 003e 013B     		subs	r3, r3, #1
 1183 0040 DCB2     		uxtb	r4, r3
 1184 0042 0444     		add	r4, r4, r0
 1185 0044 0346     		mov	r3, r0
 1186 0046 2A46     		mov	r2, r5
 1187 0048 07E0     		b	.L165
 1188              	.L166:
 1189 004a 93F83000 		ldrb	r0, [r3, #48]	@ zero_extendqisi2
 1190 004e 517F     		ldrb	r1, [r2, #29]	@ zero_extendqisi2
 1191 0050 0133     		adds	r3, r3, #1
 1192 0052 8842     		cmp	r0, r1
 1193 0054 02F10102 		add	r2, r2, #1
 1194 0058 E0D1     		bne	.L162
 1195              	.L165:
 1196 005a A342     		cmp	r3, r4
 1197 005c F5D1     		bne	.L166
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 22


 1198              	.L164:
 1199 005e 6868     		ldr	r0, [r5, #4]	@ unaligned
 1200 0060 FFF7FEFF 		bl	lwip_ntohl
 1201 0064 DBF80030 		ldr	r3, [fp]
 1202 0068 9842     		cmp	r0, r3
 1203 006a D7D1     		bne	.L162
 1204 006c 974F     		ldr	r7, .L313
 1205 006e 0022     		movs	r2, #0
 1206 0070 3A81     		strh	r2, [r7, #8]	@ movhi
 1207 0072 7A60     		str	r2, [r7, #4]
 1208 0074 BAF80A30 		ldrh	r3, [r10, #10]
 1209 0078 3A60     		str	r2, [r7]
 1210 007a 2B2B     		cmp	r3, #43
 1211 007c CED9     		bls	.L162
 1212 007e DAF80410 		ldr	r1, [r10, #4]
 1213 0082 0192     		str	r2, [sp, #4]
 1214 0084 BAF80820 		ldrh	r2, [r10, #8]
 1215 0088 CBF80810 		str	r1, [fp, #8]
 1216 008c CDF814B0 		str	fp, [sp, #20]
 1217 0090 F026     		movs	r6, #240
 1218 0092 9346     		mov	fp, r2
 1219 0094 CDF81C80 		str	r8, [sp, #28]
 1220 0098 CDF808A0 		str	r10, [sp, #8]
 1221              	.L168:
 1222 009c DDF80890 		ldr	r9, [sp, #8]
 1223 00a0 4A46     		mov	r2, r9
 1224 00a2 0AE0     		b	.L169
 1225              	.L170:
 1226 00a4 1268     		ldr	r2, [r2]
 1227 00a6 F61A     		subs	r6, r6, r3
 1228 00a8 C3EB0B0B 		rsb	fp, r3, fp
 1229 00ac B6B2     		uxth	r6, r6
 1230 00ae 1FFA8BFB 		uxth	fp, fp
 1231 00b2 002A     		cmp	r2, #0
 1232 00b4 00F0F980 		beq	.L293
 1233 00b8 5389     		ldrh	r3, [r2, #10]
 1234              	.L169:
 1235 00ba B342     		cmp	r3, r6
 1236 00bc F2D9     		bls	.L170
 1237 00be 5568     		ldr	r5, [r2, #4]
 1238 00c0 9146     		mov	r9, r2
 1239 00c2 0395     		str	r5, [sp, #12]
 1240 00c4 B246     		mov	r10, r6
 1241              	.L238:
 1242 00c6 039E     		ldr	r6, [sp, #12]
 1243 00c8 16F80A20 		ldrb	r2, [r6, r10]	@ zero_extendqisi2
 1244 00cc FF2A     		cmp	r2, #255
 1245 00ce 00F02981 		beq	.L218
 1246 00d2 DA45     		cmp	r10, fp
 1247 00d4 80F02681 		bcs	.L218
 1248 00d8 B9F80A10 		ldrh	r1, [r9, #10]
 1249 00dc 0AF10100 		add	r0, r10, #1
 1250 00e0 0AF10203 		add	r3, r10, #2
 1251 00e4 8842     		cmp	r0, r1
 1252 00e6 9BB2     		uxth	r3, r3
 1253 00e8 80F2A680 		bge	.L172
 1254 00ec 039C     		ldr	r4, [sp, #12]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 23


 1255 00ee 5444     		add	r4, r4, r10
 1256 00f0 6478     		ldrb	r4, [r4, #1]	@ zero_extendqisi2
 1257              	.L173:
 1258 00f2 3B2A     		cmp	r2, #59
 1259 00f4 00F29580 		bhi	.L186
 1260 00f8 DFE802F0 		tbb	[pc, r2]
 1261              	.L176:
 1262 00fc 91       		.byte	(.L175-.L176)/2
 1263 00fd 8B       		.byte	(.L177-.L176)/2
 1264 00fe 93       		.byte	(.L186-.L176)/2
 1265 00ff 97       		.byte	(.L178-.L176)/2
 1266 0100 93       		.byte	(.L186-.L176)/2
 1267 0101 93       		.byte	(.L186-.L176)/2
 1268 0102 78       		.byte	(.L179-.L176)/2
 1269 0103 93       		.byte	(.L186-.L176)/2
 1270 0104 93       		.byte	(.L186-.L176)/2
 1271 0105 93       		.byte	(.L186-.L176)/2
 1272 0106 93       		.byte	(.L186-.L176)/2
 1273 0107 93       		.byte	(.L186-.L176)/2
 1274 0108 93       		.byte	(.L186-.L176)/2
 1275 0109 93       		.byte	(.L186-.L176)/2
 1276 010a 93       		.byte	(.L186-.L176)/2
 1277 010b 93       		.byte	(.L186-.L176)/2
 1278 010c 93       		.byte	(.L186-.L176)/2
 1279 010d 93       		.byte	(.L186-.L176)/2
 1280 010e 93       		.byte	(.L186-.L176)/2
 1281 010f 93       		.byte	(.L186-.L176)/2
 1282 0110 93       		.byte	(.L186-.L176)/2
 1283 0111 93       		.byte	(.L186-.L176)/2
 1284 0112 93       		.byte	(.L186-.L176)/2
 1285 0113 93       		.byte	(.L186-.L176)/2
 1286 0114 93       		.byte	(.L186-.L176)/2
 1287 0115 93       		.byte	(.L186-.L176)/2
 1288 0116 93       		.byte	(.L186-.L176)/2
 1289 0117 93       		.byte	(.L186-.L176)/2
 1290 0118 93       		.byte	(.L186-.L176)/2
 1291 0119 93       		.byte	(.L186-.L176)/2
 1292 011a 93       		.byte	(.L186-.L176)/2
 1293 011b 93       		.byte	(.L186-.L176)/2
 1294 011c 93       		.byte	(.L186-.L176)/2
 1295 011d 93       		.byte	(.L186-.L176)/2
 1296 011e 93       		.byte	(.L186-.L176)/2
 1297 011f 93       		.byte	(.L186-.L176)/2
 1298 0120 93       		.byte	(.L186-.L176)/2
 1299 0121 93       		.byte	(.L186-.L176)/2
 1300 0122 93       		.byte	(.L186-.L176)/2
 1301 0123 93       		.byte	(.L186-.L176)/2
 1302 0124 93       		.byte	(.L186-.L176)/2
 1303 0125 93       		.byte	(.L186-.L176)/2
 1304 0126 93       		.byte	(.L186-.L176)/2
 1305 0127 93       		.byte	(.L186-.L176)/2
 1306 0128 93       		.byte	(.L186-.L176)/2
 1307 0129 93       		.byte	(.L186-.L176)/2
 1308 012a 93       		.byte	(.L186-.L176)/2
 1309 012b 93       		.byte	(.L186-.L176)/2
 1310 012c 93       		.byte	(.L186-.L176)/2
 1311 012d 93       		.byte	(.L186-.L176)/2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 24


 1312 012e 93       		.byte	(.L186-.L176)/2
 1313 012f 72       		.byte	(.L180-.L176)/2
 1314 0130 62       		.byte	(.L181-.L176)/2
 1315 0131 68       		.byte	(.L182-.L176)/2
 1316 0132 5C       		.byte	(.L183-.L176)/2
 1317 0133 93       		.byte	(.L186-.L176)/2
 1318 0134 93       		.byte	(.L186-.L176)/2
 1319 0135 93       		.byte	(.L186-.L176)/2
 1320 0136 56       		.byte	(.L184-.L176)/2
 1321 0137 1E       		.byte	(.L185-.L176)/2
 1322              		.align	1
 1323              	.L185:
 1324 0138 042C     		cmp	r4, #4
 1325 013a 40F0D380 		bne	.L296
 1326 013e 2246     		mov	r2, r4
 1327 0140 0525     		movs	r5, #5
 1328              	.L187:
 1329 0142 1A44     		add	r2, r2, r3
 1330 0144 92B2     		uxth	r2, r2
 1331 0146 0492     		str	r2, [sp, #16]
 1332              	.L239:
 1333 0148 7A5D     		ldrb	r2, [r7, r5]	@ zero_extendqisi2
 1334 014a 0020     		movs	r0, #0
 1335 014c 0990     		str	r0, [sp, #36]
 1336 014e B2B9     		cbnz	r2, .L251
 1337 0150 032C     		cmp	r4, #3
 1338 0152 0DF12408 		add	r8, sp, #36
 1339 0156 77D8     		bhi	.L287
 1340 0158 5D4E     		ldr	r6, .L313+4
 1341 015a 0696     		str	r6, [sp, #24]
 1342              	.L203:
 1343 015c 4146     		mov	r1, r8
 1344 015e 4846     		mov	r0, r9
 1345 0160 2246     		mov	r2, r4
 1346 0162 FFF7FEFF 		bl	pbuf_copy_partial
 1347              	.L206:
 1348 0166 012C     		cmp	r4, #1
 1349 0168 40F0B781 		bne	.L297
 1350 016c 9DF82400 		ldrb	r0, [sp, #36]	@ zero_extendqisi2
 1351              	.L211:
 1352 0170 069E     		ldr	r6, [sp, #24]
 1353 0172 0123     		movs	r3, #1
 1354 0174 B9F80A10 		ldrh	r1, [r9, #10]
 1355 0178 46F82500 		str	r0, [r6, r5, lsl #2]
 1356 017c 7B55     		strb	r3, [r7, r5]
 1357              	.L251:
 1358 017e DDF810A0 		ldr	r10, [sp, #16]
 1359              	.L201:
 1360 0182 5145     		cmp	r1, r10
 1361 0184 9FD8     		bhi	.L238
 1362 0186 C1EB0A0C 		rsb	ip, r1, r10
 1363 018a C1EB0B0B 		rsb	fp, r1, fp
 1364 018e 1FFA8CFA 		uxth	r10, ip
 1365 0192 1FFA8BFB 		uxth	fp, fp
 1366 0196 DA45     		cmp	r10, fp
 1367 0198 80F0C480 		bcs	.L218
 1368 019c D9F80090 		ldr	r9, [r9]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 25


 1369 01a0 D9F80450 		ldr	r5, [r9, #4]
 1370 01a4 0395     		str	r5, [sp, #12]
 1371 01a6 8EE7     		b	.L238
 1372              	.L184:
 1373 01a8 042C     		cmp	r4, #4
 1374 01aa 40F0AB80 		bne	.L298
 1375              	.L249:
 1376 01ae 2246     		mov	r2, r4
 1377 01b0 2546     		mov	r5, r4
 1378 01b2 C6E7     		b	.L187
 1379              	.L183:
 1380 01b4 042C     		cmp	r4, #4
 1381 01b6 40F09D80 		bne	.L299
 1382 01ba 2246     		mov	r2, r4
 1383 01bc 0225     		movs	r5, #2
 1384 01be C0E7     		b	.L187
 1385              	.L181:
 1386 01c0 012C     		cmp	r4, #1
 1387 01c2 40F0A780 		bne	.L300
 1388 01c6 2246     		mov	r2, r4
 1389 01c8 0025     		movs	r5, #0
 1390 01ca BAE7     		b	.L187
 1391              	.L182:
 1392 01cc 012C     		cmp	r4, #1
 1393 01ce EED0     		beq	.L249
 1394 01d0 4048     		ldr	r0, .L313+8
 1395 01d2 4149     		ldr	r1, .L313+12
 1396 01d4 40F29452 		movw	r2, #1428
 1397 01d8 404B     		ldr	r3, .L313+16
 1398 01da FFF7FEFF 		bl	debugPrintf
 1399              	.L197:
 1400 01de FEE7     		b	.L197
 1401              	.L180:
 1402 01e0 042C     		cmp	r4, #4
 1403 01e2 40F08D81 		bne	.L301
 1404 01e6 2246     		mov	r2, r4
 1405 01e8 0325     		movs	r5, #3
 1406 01ea AAE7     		b	.L187
 1407              	.L179:
 1408 01ec A207     		lsls	r2, r4, #30
 1409 01ee 40F01E81 		bne	.L302
 1410 01f2 082C     		cmp	r4, #8
 1411 01f4 34BF     		ite	cc
 1412 01f6 2246     		movcc	r2, r4
 1413 01f8 0822     		movcs	r2, #8
 1414 01fa D2B2     		uxtb	r2, r2
 1415 01fc 9442     		cmp	r4, r2
 1416 01fe C0F00E81 		bcc	.L303
 1417 0202 1C44     		add	r4, r4, r3
 1418 0204 A4B2     		uxth	r4, r4
 1419 0206 0494     		str	r4, [sp, #16]
 1420 0208 002A     		cmp	r2, #0
 1421 020a B8D0     		beq	.L251
 1422 020c 1446     		mov	r4, r2
 1423 020e 0825     		movs	r5, #8
 1424 0210 9AE7     		b	.L239
 1425              	.L177:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 26


 1426 0212 042C     		cmp	r4, #4
 1427 0214 40F06C81 		bne	.L304
 1428 0218 2246     		mov	r2, r4
 1429 021a 0625     		movs	r5, #6
 1430 021c 91E7     		b	.L187
 1431              	.L175:
 1432 021e 83B2     		uxth	r3, r0
 1433 0220 0024     		movs	r4, #0
 1434              	.L186:
 1435 0222 2344     		add	r3, r3, r4
 1436 0224 1FFA83FA 		uxth	r10, r3
 1437 0228 ABE7     		b	.L201
 1438              	.L178:
 1439 022a 032C     		cmp	r4, #3
 1440 022c 40F24D81 		bls	.L189
 1441 0230 2246     		mov	r2, r4
 1442 0232 0725     		movs	r5, #7
 1443 0234 0424     		movs	r4, #4
 1444 0236 84E7     		b	.L187
 1445              	.L172:
 1446 0238 D9F80040 		ldr	r4, [r9]
 1447 023c 002C     		cmp	r4, #0
 1448 023e 3FF458AF 		beq	.L173
 1449 0242 6468     		ldr	r4, [r4, #4]
 1450 0244 2478     		ldrb	r4, [r4]	@ zero_extendqisi2
 1451 0246 54E7     		b	.L173
 1452              	.L287:
 1453 0248 DFF884E0 		ldr	lr, .L313+4
 1454 024c 6E1E     		subs	r6, r5, #1
 1455 024e 0EEB8606 		add	r6, lr, r6, lsl #2
 1456 0252 4146     		mov	r1, r8
 1457 0254 4846     		mov	r0, r9
 1458 0256 0422     		movs	r2, #4
 1459 0258 0096     		str	r6, [sp]
 1460 025a CDF818E0 		str	lr, [sp, #24]
 1461 025e FFF7FEFF 		bl	pbuf_copy_partial
 1462 0262 042C     		cmp	r4, #4
 1463 0264 40F24181 		bls	.L207
 1464 0268 A307     		lsls	r3, r4, #30
 1465 026a 26D1     		bne	.L305
 1466 026c DFF85CE0 		ldr	lr, .L313
 1467 0270 0123     		movs	r3, #1
 1468 0272 05F80E30 		strb	r3, [r5, lr]
 1469 0276 0998     		ldr	r0, [sp, #36]
 1470 0278 FFF7FEFF 		bl	lwip_htonl
 1471 027c 1349     		ldr	r1, .L313
 1472 027e 0135     		adds	r5, r5, #1
 1473 0280 009E     		ldr	r6, [sp]
 1474 0282 6A5C     		ldrb	r2, [r5, r1]	@ zero_extendqisi2
 1475 0284 043C     		subs	r4, r4, #4
 1476 0286 0AF10603 		add	r3, r10, #6
 1477 028a 7060     		str	r0, [r6, #4]
 1478 028c E4B2     		uxtb	r4, r4
 1479 028e 9BB2     		uxth	r3, r3
 1480 0290 82B9     		cbnz	r2, .L306
 1481 0292 042C     		cmp	r4, #4
 1482 0294 7FF462AF 		bne	.L203
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 27


 1483 0298 4146     		mov	r1, r8
 1484 029a 2246     		mov	r2, r4
 1485 029c 4846     		mov	r0, r9
 1486 029e FFF7FEFF 		bl	pbuf_copy_partial
 1487              	.L291:
 1488 02a2 0998     		ldr	r0, [sp, #36]
 1489 02a4 FFF7FEFF 		bl	lwip_ntohl
 1490 02a8 62E7     		b	.L211
 1491              	.L293:
 1492 02aa DDF814B0 		ldr	fp, [sp, #20]
 1493 02ae DDF808A0 		ldr	r10, [sp, #8]
 1494 02b2 B3E6     		b	.L162
 1495              	.L306:
 1496 02b4 B9F80A10 		ldrh	r1, [r9, #10]
 1497 02b8 61E7     		b	.L251
 1498              	.L305:
 1499 02ba 0648     		ldr	r0, .L313+8
 1500 02bc 0849     		ldr	r1, .L313+20
 1501 02be 40F2B352 		movw	r2, #1459
 1502 02c2 064B     		ldr	r3, .L313+16
 1503 02c4 FFF7FEFF 		bl	debugPrintf
 1504              	.L209:
 1505 02c8 FEE7     		b	.L209
 1506              	.L314:
 1507 02ca 00BF     		.align	2
 1508              	.L313:
 1509 02cc 00000000 		.word	dhcp_rx_options_given
 1510 02d0 00000000 		.word	dhcp_rx_options_val
 1511 02d4 00000000 		.word	.LC0
 1512 02d8 38010000 		.word	.LC11
 1513 02dc 48000000 		.word	.LC2
 1514 02e0 44010000 		.word	.LC12
 1515              	.L296:
 1516 02e4 8A48     		ldr	r0, .L315
 1517 02e6 8B49     		ldr	r1, .L315+4
 1518 02e8 4FF4B462 		mov	r2, #1440
 1519 02ec 8A4B     		ldr	r3, .L315+8
 1520 02ee FFF7FEFF 		bl	debugPrintf
 1521              	.L200:
 1522 02f2 FEE7     		b	.L200
 1523              	.L299:
 1524 02f4 8648     		ldr	r0, .L315
 1525 02f6 8749     		ldr	r1, .L315+4
 1526 02f8 4FF4B362 		mov	r2, #1432
 1527 02fc 864B     		ldr	r3, .L315+8
 1528 02fe FFF7FEFF 		bl	debugPrintf
 1529              	.L198:
 1530 0302 FEE7     		b	.L198
 1531              	.L298:
 1532 0304 8248     		ldr	r0, .L315
 1533 0306 8349     		ldr	r1, .L315+4
 1534 0308 40F29C52 		movw	r2, #1436
 1535 030c 824B     		ldr	r3, .L315+8
 1536 030e FFF7FEFF 		bl	debugPrintf
 1537              	.L199:
 1538 0312 FEE7     		b	.L199
 1539              	.L300:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 28


 1540 0314 7E48     		ldr	r0, .L315
 1541 0316 8149     		ldr	r1, .L315+12
 1542 0318 4FF4B262 		mov	r2, #1424
 1543 031c 7E4B     		ldr	r3, .L315+8
 1544 031e FFF7FEFF 		bl	debugPrintf
 1545              	.L196:
 1546 0322 FEE7     		b	.L196
 1547              	.L218:
 1548 0324 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 1549 0326 63B1     		cbz	r3, .L217
 1550 0328 DFF8F8E1 		ldr	lr, .L315+20
 1551 032c 7C48     		ldr	r0, .L315+16
 1552 032e DEF80030 		ldr	r3, [lr]
 1553 0332 0022     		movs	r2, #0
 1554 0334 012B     		cmp	r3, #1
 1555 0336 0270     		strb	r2, [r0]
 1556 0338 3CD0     		beq	.L220
 1557 033a 022B     		cmp	r3, #2
 1558 033c 03D0     		beq	.L221
 1559 033e 032B     		cmp	r3, #3
 1560 0340 36D0     		beq	.L307
 1561              	.L217:
 1562 0342 019D     		ldr	r5, [sp, #4]
 1563 0344 3DB1     		cbz	r5, .L308
 1564              	.L221:
 1565 0346 0025     		movs	r5, #0
 1566 0348 0195     		str	r5, [sp, #4]
 1567 034a 4FF06C0B 		mov	fp, #108
 1568 034e 2C26     		movs	r6, #44
 1569              	.L241:
 1570 0350 029D     		ldr	r5, [sp, #8]
 1571 0352 6B89     		ldrh	r3, [r5, #10]
 1572 0354 A2E6     		b	.L168
 1573              	.L308:
 1574 0356 7B78     		ldrb	r3, [r7, #1]	@ zero_extendqisi2
 1575 0358 DDF814B0 		ldr	fp, [sp, #20]
 1576 035c DDF81C80 		ldr	r8, [sp, #28]
 1577 0360 DDF808A0 		ldr	r10, [sp, #8]
 1578 0364 6E4A     		ldr	r2, .L315+16
 1579 0366 002B     		cmp	r3, #0
 1580 0368 3FF458AE 		beq	.L162
 1581 036c 6D4D     		ldr	r5, .L315+20
 1582 036e 2B79     		ldrb	r3, [r5, #4]	@ zero_extendqisi2
 1583 0370 052B     		cmp	r3, #5
 1584 0372 48D0     		beq	.L309
 1585 0374 062B     		cmp	r3, #6
 1586 0376 21D0     		beq	.L310
 1587 0378 022B     		cmp	r3, #2
 1588 037a 7FF44FAE 		bne	.L162
 1589 037e 9BF80C30 		ldrb	r3, [fp, #12]	@ zero_extendqisi2
 1590 0382 062B     		cmp	r3, #6
 1591 0384 7FF44AAE 		bne	.L162
 1592 0388 019E     		ldr	r6, [sp, #4]
 1593 038a 9378     		ldrb	r3, [r2, #2]	@ zero_extendqisi2
 1594 038c ABF81A60 		strh	r6, [fp, #26]	@ movhi
 1595 0390 D8F82440 		ldr	r4, [r8, #36]
 1596 0394 002B     		cmp	r3, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 29


 1597 0396 3FF441AE 		beq	.L162
 1598 039a A868     		ldr	r0, [r5, #8]
 1599 039c FFF7FEFF 		bl	lwip_htonl
 1600 03a0 A368     		ldr	r3, [r4, #8]
 1601 03a2 2062     		str	r0, [r4, #32]
 1602 03a4 1B69     		ldr	r3, [r3, #16]	@ unaligned
 1603 03a6 4046     		mov	r0, r8
 1604 03a8 6362     		str	r3, [r4, #36]
 1605 03aa FFF7FEFF 		bl	dhcp_select
 1606 03ae 35E6     		b	.L162
 1607              	.L307:
 1608 03b0 0126     		movs	r6, #1
 1609 03b2 0196     		str	r6, [sp, #4]
 1610              	.L220:
 1611 03b4 4FF0EC0B 		mov	fp, #236
 1612 03b8 6C26     		movs	r6, #108
 1613 03ba C9E7     		b	.L241
 1614              	.L310:
 1615 03bc 9BF80C30 		ldrb	r3, [fp, #12]	@ zero_extendqisi2
 1616 03c0 DA1E     		subs	r2, r3, #3
 1617 03c2 022A     		cmp	r2, #2
 1618 03c4 02D9     		bls	.L236
 1619 03c6 012B     		cmp	r3, #1
 1620 03c8 7FF428AE 		bne	.L162
 1621              	.L236:
 1622 03cc 4046     		mov	r0, r8
 1623 03ce D8F82440 		ldr	r4, [r8, #36]
 1624 03d2 FFF7FEFF 		bl	netif_set_down
 1625 03d6 4046     		mov	r0, r8
 1626 03d8 5349     		ldr	r1, .L315+24
 1627 03da FFF7FEFF 		bl	netif_set_ipaddr
 1628 03de 4046     		mov	r0, r8
 1629 03e0 5149     		ldr	r1, .L315+24
 1630 03e2 FFF7FEFF 		bl	netif_set_gw
 1631 03e6 4046     		mov	r0, r8
 1632 03e8 4F49     		ldr	r1, .L315+24
 1633 03ea FFF7FEFF 		bl	netif_set_netmask
 1634 03ee 237B     		ldrb	r3, [r4, #12]	@ zero_extendqisi2
 1635 03f0 0C2B     		cmp	r3, #12
 1636 03f2 04D0     		beq	.L237
 1637 03f4 0023     		movs	r3, #0
 1638 03f6 0C22     		movs	r2, #12
 1639 03f8 2273     		strb	r2, [r4, #12]
 1640 03fa 6373     		strb	r3, [r4, #13]
 1641 03fc 6383     		strh	r3, [r4, #26]	@ movhi
 1642              	.L237:
 1643 03fe 4046     		mov	r0, r8
 1644 0400 FFF7FEFF 		bl	dhcp_discover
 1645 0404 0AE6     		b	.L162
 1646              	.L309:
 1647 0406 9BF80C30 		ldrb	r3, [fp, #12]	@ zero_extendqisi2
 1648 040a 012B     		cmp	r3, #1
 1649 040c 17D0     		beq	.L311
 1650 040e 033B     		subs	r3, r3, #3
 1651 0410 022B     		cmp	r3, #2
 1652 0412 3FF603AE 		bhi	.L162
 1653 0416 4046     		mov	r0, r8
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 30


 1654 0418 FFF7FEFF 		bl	dhcp_bind
 1655 041c FEE5     		b	.L162
 1656              	.L303:
 1657 041e 3C48     		ldr	r0, .L315
 1658 0420 4249     		ldr	r1, .L315+28
 1659 0422 4FF4B162 		mov	r2, #1416
 1660 0426 3C4B     		ldr	r3, .L315+8
 1661 0428 FFF7FEFF 		bl	debugPrintf
 1662              	.L194:
 1663 042c FEE7     		b	.L194
 1664              	.L302:
 1665 042e 3848     		ldr	r0, .L315
 1666 0430 3F49     		ldr	r1, .L315+32
 1667 0432 40F28552 		movw	r2, #1413
 1668 0436 384B     		ldr	r3, .L315+8
 1669 0438 FFF7FEFF 		bl	debugPrintf
 1670              	.L192:
 1671 043c FEE7     		b	.L192
 1672              	.L311:
 1673 043e D8F82440 		ldr	r4, [r8, #36]
 1674 0442 019E     		ldr	r6, [sp, #4]
 1675 0444 D378     		ldrb	r3, [r2, #3]	@ zero_extendqisi2
 1676 0446 A662     		str	r6, [r4, #40]
 1677 0448 E662     		str	r6, [r4, #44]
 1678 044a 0BB1     		cbz	r3, .L224
 1679 044c EB68     		ldr	r3, [r5, #12]
 1680 044e 2363     		str	r3, [r4, #48]
 1681              	.L224:
 1682 0450 3B79     		ldrb	r3, [r7, #4]	@ zero_extendqisi2
 1683 0452 002B     		cmp	r3, #0
 1684 0454 35D0     		beq	.L225
 1685 0456 2B69     		ldr	r3, [r5, #16]
 1686 0458 6363     		str	r3, [r4, #52]
 1687              	.L226:
 1688 045a 7B79     		ldrb	r3, [r7, #5]	@ zero_extendqisi2
 1689 045c 002B     		cmp	r3, #0
 1690 045e 2DD0     		beq	.L227
 1691 0460 6B69     		ldr	r3, [r5, #20]
 1692 0462 A363     		str	r3, [r4, #56]
 1693              	.L228:
 1694 0464 A268     		ldr	r2, [r4, #8]
 1695 0466 BB79     		ldrb	r3, [r7, #6]	@ zero_extendqisi2
 1696 0468 1269     		ldr	r2, [r2, #16]	@ unaligned
 1697 046a 6262     		str	r2, [r4, #36]
 1698 046c FBB9     		cbnz	r3, .L312
 1699 046e A373     		strb	r3, [r4, #14]
 1700              	.L230:
 1701 0470 FB79     		ldrb	r3, [r7, #7]	@ zero_extendqisi2
 1702 0472 1BB1     		cbz	r3, .L231
 1703 0474 E869     		ldr	r0, [r5, #28]
 1704 0476 FFF7FEFF 		bl	lwip_htonl
 1705 047a E062     		str	r0, [r4, #44]
 1706              	.L231:
 1707 047c 3B7A     		ldrb	r3, [r7, #8]	@ zero_extendqisi2
 1708 047e 93B1     		cbz	r3, .L233
 1709 0480 0024     		movs	r4, #0
 1710 0482 0823     		movs	r3, #8
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 31


 1711 0484 09AE     		add	r6, sp, #36
 1712              	.L234:
 1713 0486 55F82300 		ldr	r0, [r5, r3, lsl #2]
 1714 048a FFF7FEFF 		bl	lwip_htonl
 1715 048e 0990     		str	r0, [sp, #36]
 1716 0490 2046     		mov	r0, r4
 1717 0492 0134     		adds	r4, r4, #1
 1718 0494 3146     		mov	r1, r6
 1719 0496 E4B2     		uxtb	r4, r4
 1720 0498 FFF7FEFF 		bl	dns_setserver
 1721 049c 04F10803 		add	r3, r4, #8
 1722 04a0 FA5C     		ldrb	r2, [r7, r3]	@ zero_extendqisi2
 1723 04a2 002A     		cmp	r2, #0
 1724 04a4 EFD1     		bne	.L234
 1725              	.L233:
 1726 04a6 4046     		mov	r0, r8
 1727 04a8 FFF7FEFF 		bl	dhcp_check
 1728 04ac B6E5     		b	.L162
 1729              	.L312:
 1730 04ae A869     		ldr	r0, [r5, #24]
 1731 04b0 FFF7FEFF 		bl	lwip_htonl
 1732 04b4 0123     		movs	r3, #1
 1733 04b6 A062     		str	r0, [r4, #40]
 1734 04b8 A373     		strb	r3, [r4, #14]
 1735 04ba D9E7     		b	.L230
 1736              	.L227:
 1737 04bc 236B     		ldr	r3, [r4, #48]
 1738 04be A363     		str	r3, [r4, #56]
 1739 04c0 D0E7     		b	.L228
 1740              	.L225:
 1741 04c2 236B     		ldr	r3, [r4, #48]
 1742 04c4 5B08     		lsrs	r3, r3, #1
 1743 04c6 6363     		str	r3, [r4, #52]
 1744 04c8 C7E7     		b	.L226
 1745              	.L189:
 1746 04ca 1148     		ldr	r0, .L315
 1747 04cc 1749     		ldr	r1, .L315+28
 1748 04ce 4FF4B062 		mov	r2, #1408
 1749 04d2 114B     		ldr	r3, .L315+8
 1750 04d4 FFF7FEFF 		bl	debugPrintf
 1751              	.L190:
 1752 04d8 FEE7     		b	.L190
 1753              	.L297:
 1754 04da 0D48     		ldr	r0, .L315
 1755 04dc 1549     		ldr	r1, .L315+36
 1756 04de 40F2BD52 		movw	r2, #1469
 1757 04e2 0D4B     		ldr	r3, .L315+8
 1758 04e4 FFF7FEFF 		bl	debugPrintf
 1759              	.L213:
 1760 04e8 FEE7     		b	.L213
 1761              	.L207:
 1762 04ea 3FF4DAAE 		beq	.L291
 1763 04ee 3AE6     		b	.L206
 1764              	.L304:
 1765 04f0 0748     		ldr	r0, .L315
 1766 04f2 0849     		ldr	r1, .L315+4
 1767 04f4 40F27B52 		movw	r2, #1403
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 32


 1768 04f8 074B     		ldr	r3, .L315+8
 1769 04fa FFF7FEFF 		bl	debugPrintf
 1770              	.L188:
 1771 04fe FEE7     		b	.L188
 1772              	.L301:
 1773 0500 0348     		ldr	r0, .L315
 1774 0502 0449     		ldr	r1, .L315+4
 1775 0504 40F28C52 		movw	r2, #1420
 1776 0508 034B     		ldr	r3, .L315+8
 1777 050a FFF7FEFF 		bl	debugPrintf
 1778              	.L195:
 1779 050e FEE7     		b	.L195
 1780              	.L316:
 1781              		.align	2
 1782              	.L315:
 1783 0510 00000000 		.word	.LC0
 1784 0514 08010000 		.word	.LC8
 1785 0518 48000000 		.word	.LC2
 1786 051c 38010000 		.word	.LC11
 1787 0520 00000000 		.word	dhcp_rx_options_given
 1788 0524 00000000 		.word	dhcp_rx_options_val
 1789 0528 00000000 		.word	ip_addr_any
 1790 052c 14010000 		.word	.LC9
 1791 0530 28010000 		.word	.LC10
 1792 0534 58010000 		.word	.LC13
 1793              		.size	dhcp_recv, .-dhcp_recv
 1794              		.section	.text.dhcp_set_struct,"ax",%progbits
 1795              		.align	2
 1796              		.global	dhcp_set_struct
 1797              		.thumb
 1798              		.thumb_func
 1799              		.type	dhcp_set_struct, %function
 1800              	dhcp_set_struct:
 1801              		@ args = 0, pretend = 0, frame = 0
 1802              		@ frame_needed = 0, uses_anonymous_args = 0
 1803 0000 38B5     		push	{r3, r4, r5, lr}
 1804 0002 0C46     		mov	r4, r1
 1805 0004 0546     		mov	r5, r0
 1806 0006 0021     		movs	r1, #0
 1807 0008 2046     		mov	r0, r4
 1808 000a 3C22     		movs	r2, #60
 1809 000c FFF7FEFF 		bl	memset
 1810 0010 6C62     		str	r4, [r5, #36]
 1811 0012 38BD     		pop	{r3, r4, r5, pc}
 1812              		.size	dhcp_set_struct, .-dhcp_set_struct
 1813              		.section	.text.dhcp_cleanup,"ax",%progbits
 1814              		.align	2
 1815              		.global	dhcp_cleanup
 1816              		.thumb
 1817              		.thumb_func
 1818              		.type	dhcp_cleanup, %function
 1819              	dhcp_cleanup:
 1820              		@ args = 0, pretend = 0, frame = 0
 1821              		@ frame_needed = 0, uses_anonymous_args = 0
 1822 0000 10B5     		push	{r4, lr}
 1823 0002 0446     		mov	r4, r0
 1824 0004 406A     		ldr	r0, [r0, #36]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 33


 1825 0006 18B1     		cbz	r0, .L318
 1826 0008 FFF7FEFF 		bl	mem_free
 1827 000c 0023     		movs	r3, #0
 1828 000e 6362     		str	r3, [r4, #36]
 1829              	.L318:
 1830 0010 10BD     		pop	{r4, pc}
 1831              		.size	dhcp_cleanup, .-dhcp_cleanup
 1832 0012 00BF     		.section	.text.dhcp_inform,"ax",%progbits
 1833              		.align	2
 1834              		.global	dhcp_inform
 1835              		.thumb
 1836              		.thumb_func
 1837              		.type	dhcp_inform, %function
 1838              	dhcp_inform:
 1839              		@ args = 0, pretend = 0, frame = 64
 1840              		@ frame_needed = 0, uses_anonymous_args = 0
 1841 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1842 0002 0546     		mov	r5, r0
 1843 0004 93B0     		sub	sp, sp, #76
 1844 0006 0028     		cmp	r0, #0
 1845 0008 58D0     		beq	.L341
 1846 000a 3C22     		movs	r2, #60
 1847 000c 03A8     		add	r0, sp, #12
 1848 000e 0021     		movs	r1, #0
 1849 0010 FFF7FEFF 		bl	memset
 1850 0014 6B6A     		ldr	r3, [r5, #36]
 1851 0016 0822     		movs	r2, #8
 1852 0018 8DF81820 		strb	r2, [sp, #24]
 1853 001c 002B     		cmp	r3, #0
 1854 001e 3ED0     		beq	.L326
 1855 0020 5C68     		ldr	r4, [r3, #4]
 1856 0022 002C     		cmp	r4, #0
 1857 0024 3BD0     		beq	.L326
 1858              	.L327:
 1859 0026 2846     		mov	r0, r5
 1860 0028 03A9     		add	r1, sp, #12
 1861 002a 0822     		movs	r2, #8
 1862 002c FFF7FEFF 		bl	dhcp_create_msg
 1863 0030 78BB     		cbnz	r0, .L329
 1864 0032 BDF82430 		ldrh	r3, [sp, #36]
 1865 0036 089A     		ldr	r2, [sp, #32]
 1866 0038 591C     		adds	r1, r3, #1
 1867 003a 89B2     		uxth	r1, r1
 1868 003c D618     		adds	r6, r2, r3
 1869 003e 1144     		add	r1, r1, r2
 1870 0040 3927     		movs	r7, #57
 1871 0042 0220     		movs	r0, #2
 1872 0044 86F8F070 		strb	r7, [r6, #240]
 1873 0048 81F8F000 		strb	r0, [r1, #240]
 1874 004c A98D     		ldrh	r1, [r5, #44]
 1875 004e 1818     		adds	r0, r3, r0
 1876 0050 DF1C     		adds	r7, r3, #3
 1877 0052 80B2     		uxth	r0, r0
 1878 0054 BFB2     		uxth	r7, r7
 1879 0056 0E0A     		lsrs	r6, r1, #8
 1880 0058 1044     		add	r0, r0, r2
 1881 005a 3A44     		add	r2, r2, r7
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 34


 1882 005c 0433     		adds	r3, r3, #4
 1883 005e 80F8F060 		strb	r6, [r0, #240]
 1884 0062 82F8F010 		strb	r1, [r2, #240]
 1885 0066 03A8     		add	r0, sp, #12
 1886 0068 ADF82430 		strh	r3, [sp, #36]	@ movhi
 1887 006c FFF7FEFF 		bl	dhcp_option_trailer
 1888 0070 BDF82410 		ldrh	r1, [sp, #36]
 1889 0074 0798     		ldr	r0, [sp, #28]
 1890 0076 F031     		adds	r1, r1, #240
 1891 0078 89B2     		uxth	r1, r1
 1892 007a FFF7FEFF 		bl	pbuf_realloc
 1893 007e 0799     		ldr	r1, [sp, #28]
 1894 0080 0095     		str	r5, [sp]
 1895 0082 2046     		mov	r0, r4
 1896 0084 114A     		ldr	r2, .L342
 1897 0086 4323     		movs	r3, #67
 1898 0088 FFF7FEFF 		bl	udp_sendto_if
 1899 008c 03A8     		add	r0, sp, #12
 1900 008e FFF7FEFF 		bl	dhcp_delete_msg
 1901              	.L329:
 1902 0092 0498     		ldr	r0, [sp, #16]
 1903 0094 08B1     		cbz	r0, .L323
 1904 0096 FFF7FEFF 		bl	udp_remove
 1905              	.L323:
 1906 009a 13B0     		add	sp, sp, #76
 1907              		@ sp needed
 1908 009c F0BD     		pop	{r4, r5, r6, r7, pc}
 1909              	.L326:
 1910 009e FFF7FEFF 		bl	udp_new
 1911 00a2 0446     		mov	r4, r0
 1912 00a4 0028     		cmp	r0, #0
 1913 00a6 F8D0     		beq	.L323
 1914 00a8 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 1915 00aa 0949     		ldr	r1, .L342+4
 1916 00ac 43F02003 		orr	r3, r3, #32
 1917 00b0 0372     		strb	r3, [r0, #8]
 1918 00b2 4422     		movs	r2, #68
 1919 00b4 0490     		str	r0, [sp, #16]
 1920 00b6 FFF7FEFF 		bl	udp_bind
 1921 00ba B4E7     		b	.L327
 1922              	.L341:
 1923 00bc 0548     		ldr	r0, .L342+8
 1924 00be 0649     		ldr	r1, .L342+12
 1925 00c0 40F2CE22 		movw	r2, #718
 1926 00c4 054B     		ldr	r3, .L342+16
 1927 00c6 FFF7FEFF 		bl	debugPrintf
 1928              	.L325:
 1929 00ca FEE7     		b	.L325
 1930              	.L343:
 1931              		.align	2
 1932              	.L342:
 1933 00cc 00000000 		.word	ip_addr_broadcast
 1934 00d0 00000000 		.word	ip_addr_any
 1935 00d4 00000000 		.word	.LC0
 1936 00d8 6C010000 		.word	.LC14
 1937 00dc 48000000 		.word	.LC2
 1938              		.size	dhcp_inform, .-dhcp_inform
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 35


 1939              		.section	.text.dhcp_network_changed,"ax",%progbits
 1940              		.align	2
 1941              		.global	dhcp_network_changed
 1942              		.thumb
 1943              		.thumb_func
 1944              		.type	dhcp_network_changed, %function
 1945              	dhcp_network_changed:
 1946              		@ args = 0, pretend = 0, frame = 0
 1947              		@ frame_needed = 0, uses_anonymous_args = 0
 1948 0000 38B5     		push	{r3, r4, r5, lr}
 1949 0002 446A     		ldr	r4, [r0, #36]
 1950 0004 0546     		mov	r5, r0
 1951 0006 54B1     		cbz	r4, .L344
 1952 0008 237B     		ldrb	r3, [r4, #12]	@ zero_extendqisi2
 1953 000a 0A2B     		cmp	r3, #10
 1954 000c 11D8     		bhi	.L346
 1955 000e DFE803F0 		tbb	[pc, r3]
 1956              	.L347:
 1957 0012 06       		.byte	(.L344-.L347)/2
 1958 0013 10       		.byte	(.L346-.L347)/2
 1959 0014 10       		.byte	(.L346-.L347)/2
 1960 0015 07       		.byte	(.L348-.L347)/2
 1961 0016 07       		.byte	(.L348-.L347)/2
 1962 0017 07       		.byte	(.L348-.L347)/2
 1963 0018 10       		.byte	(.L346-.L347)/2
 1964 0019 10       		.byte	(.L346-.L347)/2
 1965 001a 10       		.byte	(.L346-.L347)/2
 1966 001b 10       		.byte	(.L346-.L347)/2
 1967 001c 07       		.byte	(.L348-.L347)/2
 1968 001d 00       		.align	1
 1969              	.L344:
 1970 001e 38BD     		pop	{r3, r4, r5, pc}
 1971              	.L348:
 1972 0020 FFF7FEFF 		bl	netif_set_down
 1973 0024 0023     		movs	r3, #0
 1974 0026 6373     		strb	r3, [r4, #13]
 1975 0028 2846     		mov	r0, r5
 1976 002a BDE83840 		pop	{r3, r4, r5, lr}
 1977 002e FFF7FEBF 		b	dhcp_reboot
 1978              	.L346:
 1979 0032 0023     		movs	r3, #0
 1980 0034 6373     		strb	r3, [r4, #13]
 1981 0036 BDE83840 		pop	{r3, r4, r5, lr}
 1982 003a FFF7FEBF 		b	dhcp_discover
 1983              		.size	dhcp_network_changed, .-dhcp_network_changed
 1984 003e 00BF     		.section	.text.dhcp_arp_reply,"ax",%progbits
 1985              		.align	2
 1986              		.global	dhcp_arp_reply
 1987              		.thumb
 1988              		.thumb_func
 1989              		.type	dhcp_arp_reply, %function
 1990              	dhcp_arp_reply:
 1991              		@ args = 0, pretend = 0, frame = 0
 1992              		@ frame_needed = 0, uses_anonymous_args = 0
 1993 0000 30B5     		push	{r4, r5, lr}
 1994 0002 0546     		mov	r5, r0
 1995 0004 83B0     		sub	sp, sp, #12
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 36


 1996 0006 D8B1     		cbz	r0, .L360
 1997 0008 446A     		ldr	r4, [r0, #36]
 1998 000a 14B1     		cbz	r4, .L352
 1999 000c 237B     		ldrb	r3, [r4, #12]	@ zero_extendqisi2
 2000 000e 082B     		cmp	r3, #8
 2001 0010 01D0     		beq	.L361
 2002              	.L352:
 2003 0012 03B0     		add	sp, sp, #12
 2004              		@ sp needed
 2005 0014 30BD     		pop	{r4, r5, pc}
 2006              	.L361:
 2007 0016 0A68     		ldr	r2, [r1]
 2008 0018 636A     		ldr	r3, [r4, #36]
 2009 001a 9A42     		cmp	r2, r3
 2010 001c F9D1     		bne	.L352
 2011 001e 0C22     		movs	r2, #12
 2012 0020 0023     		movs	r3, #0
 2013 0022 2273     		strb	r2, [r4, #12]
 2014 0024 6373     		strb	r3, [r4, #13]
 2015 0026 6383     		strh	r3, [r4, #26]	@ movhi
 2016 0028 2146     		mov	r1, r4
 2017 002a 0422     		movs	r2, #4
 2018 002c FFF7FEFF 		bl	dhcp_create_msg
 2019 0030 70B1     		cbz	r0, .L362
 2020              	.L356:
 2021 0032 627B     		ldrb	r2, [r4, #13]	@ zero_extendqisi2
 2022 0034 1423     		movs	r3, #20
 2023 0036 0132     		adds	r2, r2, #1
 2024 0038 6273     		strb	r2, [r4, #13]
 2025 003a 6383     		strh	r3, [r4, #26]	@ movhi
 2026 003c 03B0     		add	sp, sp, #12
 2027              		@ sp needed
 2028 003e 30BD     		pop	{r4, r5, pc}
 2029              	.L360:
 2030 0040 1A48     		ldr	r0, .L363
 2031 0042 1B49     		ldr	r1, .L363+4
 2032 0044 40F22532 		movw	r2, #805
 2033 0048 1A4B     		ldr	r3, .L363+8
 2034 004a FFF7FEFF 		bl	debugPrintf
 2035              	.L354:
 2036 004e FEE7     		b	.L354
 2037              	.L362:
 2038 0050 238B     		ldrh	r3, [r4, #24]
 2039 0052 6269     		ldr	r2, [r4, #20]
 2040 0054 591C     		adds	r1, r3, #1
 2041 0056 1344     		add	r3, r3, r2
 2042 0058 3222     		movs	r2, #50
 2043 005a 2183     		strh	r1, [r4, #24]	@ movhi
 2044 005c 83F8F020 		strb	r2, [r3, #240]
 2045 0060 238B     		ldrh	r3, [r4, #24]
 2046 0062 6269     		ldr	r2, [r4, #20]
 2047 0064 591C     		adds	r1, r3, #1
 2048 0066 1344     		add	r3, r3, r2
 2049 0068 0422     		movs	r2, #4
 2050 006a 2183     		strh	r1, [r4, #24]	@ movhi
 2051 006c 83F8F020 		strb	r2, [r3, #240]
 2052 0070 606A     		ldr	r0, [r4, #36]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 37


 2053 0072 FFF7FEFF 		bl	lwip_ntohl
 2054 0076 04F11801 		add	r1, r4, #24
 2055 007a 0246     		mov	r2, r0
 2056 007c 04F11400 		add	r0, r4, #20
 2057 0080 FFF7FEFF 		bl	dhcp_option_long.isra.3
 2058 0084 2046     		mov	r0, r4
 2059 0086 FFF7FEFF 		bl	dhcp_option_trailer
 2060 008a 218B     		ldrh	r1, [r4, #24]
 2061 008c 2069     		ldr	r0, [r4, #16]
 2062 008e F031     		adds	r1, r1, #240
 2063 0090 89B2     		uxth	r1, r1
 2064 0092 FFF7FEFF 		bl	pbuf_realloc
 2065 0096 6068     		ldr	r0, [r4, #4]
 2066 0098 2169     		ldr	r1, [r4, #16]
 2067 009a 074A     		ldr	r2, .L363+12
 2068 009c 0095     		str	r5, [sp]
 2069 009e 4323     		movs	r3, #67
 2070 00a0 FFF7FEFF 		bl	udp_sendto_if
 2071 00a4 2046     		mov	r0, r4
 2072 00a6 FFF7FEFF 		bl	dhcp_delete_msg
 2073 00aa C2E7     		b	.L356
 2074              	.L364:
 2075              		.align	2
 2076              	.L363:
 2077 00ac 00000000 		.word	.LC0
 2078 00b0 6C010000 		.word	.LC14
 2079 00b4 48000000 		.word	.LC2
 2080 00b8 00000000 		.word	ip_addr_broadcast
 2081              		.size	dhcp_arp_reply, .-dhcp_arp_reply
 2082              		.section	.text.dhcp_renew,"ax",%progbits
 2083              		.align	2
 2084              		.global	dhcp_renew
 2085              		.thumb
 2086              		.thumb_func
 2087              		.type	dhcp_renew, %function
 2088              	dhcp_renew:
 2089              		@ args = 0, pretend = 0, frame = 0
 2090              		@ frame_needed = 0, uses_anonymous_args = 0
 2091 0000 70B5     		push	{r4, r5, r6, lr}
 2092 0002 446A     		ldr	r4, [r0, #36]
 2093 0004 82B0     		sub	sp, sp, #8
 2094 0006 237B     		ldrb	r3, [r4, #12]	@ zero_extendqisi2
 2095 0008 0546     		mov	r5, r0
 2096 000a 052B     		cmp	r3, #5
 2097 000c 04D0     		beq	.L366
 2098 000e 0023     		movs	r3, #0
 2099 0010 0522     		movs	r2, #5
 2100 0012 2273     		strb	r2, [r4, #12]
 2101 0014 6373     		strb	r3, [r4, #13]
 2102 0016 6383     		strh	r3, [r4, #26]	@ movhi
 2103              	.L366:
 2104 0018 2846     		mov	r0, r5
 2105 001a 2146     		mov	r1, r4
 2106 001c 0322     		movs	r2, #3
 2107 001e FFF7FEFF 		bl	dhcp_create_msg
 2108 0022 0646     		mov	r6, r0
 2109 0024 D0B1     		cbz	r0, .L373
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 38


 2110              	.L367:
 2111 0026 637B     		ldrb	r3, [r4, #13]	@ zero_extendqisi2
 2112 0028 0133     		adds	r3, r3, #1
 2113 002a DBB2     		uxtb	r3, r3
 2114 002c 092B     		cmp	r3, #9
 2115 002e 6373     		strb	r3, [r4, #13]
 2116 0030 0FD8     		bhi	.L369
 2117 0032 C3EB4312 		rsb	r2, r3, r3, lsl #5
 2118 0036 03EB8203 		add	r3, r3, r2, lsl #2
 2119 003a 1B01     		lsls	r3, r3, #4
 2120 003c 244A     		ldr	r2, .L374
 2121 003e 9BB2     		uxth	r3, r3
 2122 0040 03F2F313 		addw	r3, r3, #499
 2123 0044 82FB0313 		smull	r1, r3, r2, r3
 2124 0048 3046     		mov	r0, r6
 2125 004a 5B09     		lsrs	r3, r3, #5
 2126 004c 6383     		strh	r3, [r4, #26]	@ movhi
 2127 004e 02B0     		add	sp, sp, #8
 2128              		@ sp needed
 2129 0050 70BD     		pop	{r4, r5, r6, pc}
 2130              	.L369:
 2131 0052 2823     		movs	r3, #40
 2132 0054 3046     		mov	r0, r6
 2133 0056 6383     		strh	r3, [r4, #26]	@ movhi
 2134 0058 02B0     		add	sp, sp, #8
 2135              		@ sp needed
 2136 005a 70BD     		pop	{r4, r5, r6, pc}
 2137              	.L373:
 2138 005c 238B     		ldrh	r3, [r4, #24]
 2139 005e 6269     		ldr	r2, [r4, #20]
 2140 0060 591C     		adds	r1, r3, #1
 2141 0062 1344     		add	r3, r3, r2
 2142 0064 3922     		movs	r2, #57
 2143 0066 2183     		strh	r1, [r4, #24]	@ movhi
 2144 0068 83F8F020 		strb	r2, [r3, #240]
 2145 006c 238B     		ldrh	r3, [r4, #24]
 2146 006e 6269     		ldr	r2, [r4, #20]
 2147 0070 591C     		adds	r1, r3, #1
 2148 0072 1344     		add	r3, r3, r2
 2149 0074 0222     		movs	r2, #2
 2150 0076 2183     		strh	r1, [r4, #24]	@ movhi
 2151 0078 83F8F020 		strb	r2, [r3, #240]
 2152 007c AB8D     		ldrh	r3, [r5, #44]
 2153 007e 228B     		ldrh	r2, [r4, #24]
 2154 0080 6169     		ldr	r1, [r4, #20]
 2155 0082 501C     		adds	r0, r2, #1
 2156 0084 0A44     		add	r2, r2, r1
 2157 0086 190A     		lsrs	r1, r3, #8
 2158 0088 2083     		strh	r0, [r4, #24]	@ movhi
 2159 008a 82F8F010 		strb	r1, [r2, #240]
 2160 008e 228B     		ldrh	r2, [r4, #24]
 2161 0090 6169     		ldr	r1, [r4, #20]
 2162 0092 501C     		adds	r0, r2, #1
 2163 0094 0A44     		add	r2, r2, r1
 2164 0096 2083     		strh	r0, [r4, #24]	@ movhi
 2165 0098 82F8F030 		strb	r3, [r2, #240]
 2166 009c A96A     		ldr	r1, [r5, #40]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 39


 2167 009e 2046     		mov	r0, r4
 2168 00a0 FFF7FEFF 		bl	dhcp_option_hostname.isra.5
 2169 00a4 2046     		mov	r0, r4
 2170 00a6 FFF7FEFF 		bl	dhcp_option_trailer
 2171 00aa 218B     		ldrh	r1, [r4, #24]
 2172 00ac 2069     		ldr	r0, [r4, #16]
 2173 00ae F031     		adds	r1, r1, #240
 2174 00b0 89B2     		uxth	r1, r1
 2175 00b2 FFF7FEFF 		bl	pbuf_realloc
 2176 00b6 6068     		ldr	r0, [r4, #4]
 2177 00b8 2169     		ldr	r1, [r4, #16]
 2178 00ba 04F12002 		add	r2, r4, #32
 2179 00be 0095     		str	r5, [sp]
 2180 00c0 4323     		movs	r3, #67
 2181 00c2 FFF7FEFF 		bl	udp_sendto_if
 2182 00c6 2046     		mov	r0, r4
 2183 00c8 FFF7FEFF 		bl	dhcp_delete_msg
 2184 00cc ABE7     		b	.L367
 2185              	.L375:
 2186 00ce 00BF     		.align	2
 2187              	.L374:
 2188 00d0 D34D6210 		.word	274877907
 2189              		.size	dhcp_renew, .-dhcp_renew
 2190              		.section	.text.dhcp_coarse_tmr,"ax",%progbits
 2191              		.align	2
 2192              		.global	dhcp_coarse_tmr
 2193              		.thumb
 2194              		.thumb_func
 2195              		.type	dhcp_coarse_tmr, %function
 2196              	dhcp_coarse_tmr:
 2197              		@ args = 0, pretend = 0, frame = 0
 2198              		@ frame_needed = 0, uses_anonymous_args = 0
 2199 0000 164B     		ldr	r3, .L396
 2200 0002 10B5     		push	{r4, lr}
 2201 0004 1C68     		ldr	r4, [r3]
 2202 0006 3CB9     		cbnz	r4, .L385
 2203 0008 1BE0     		b	.L376
 2204              	.L380:
 2205 000a 9A8B     		ldrh	r2, [r3, #28]
 2206 000c 511E     		subs	r1, r2, #1
 2207 000e 012A     		cmp	r2, #1
 2208 0010 9983     		strh	r1, [r3, #28]	@ movhi
 2209 0012 17D0     		beq	.L395
 2210              	.L379:
 2211 0014 2468     		ldr	r4, [r4]
 2212 0016 A4B1     		cbz	r4, .L376
 2213              	.L385:
 2214 0018 636A     		ldr	r3, [r4, #36]
 2215 001a 002B     		cmp	r3, #0
 2216 001c FAD0     		beq	.L379
 2217 001e DA8B     		ldrh	r2, [r3, #30]
 2218 0020 511E     		subs	r1, r2, #1
 2219 0022 012A     		cmp	r2, #1
 2220 0024 D983     		strh	r1, [r3, #30]	@ movhi
 2221 0026 F0D1     		bne	.L380
 2222 0028 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 2223 002a 03F0FB02 		and	r2, r3, #251
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 40


 2224 002e 012A     		cmp	r2, #1
 2225 0030 01D0     		beq	.L381
 2226 0032 0A2B     		cmp	r3, #10
 2227 0034 EED1     		bne	.L379
 2228              	.L381:
 2229 0036 2046     		mov	r0, r4
 2230 0038 FFF7FEFF 		bl	dhcp_rebind
 2231 003c 2468     		ldr	r4, [r4]
 2232 003e 002C     		cmp	r4, #0
 2233 0040 EAD1     		bne	.L385
 2234              	.L376:
 2235 0042 10BD     		pop	{r4, pc}
 2236              	.L395:
 2237 0044 1B7B     		ldrb	r3, [r3, #12]	@ zero_extendqisi2
 2238 0046 03F0FB02 		and	r2, r3, #251
 2239 004a 012A     		cmp	r2, #1
 2240 004c 01D0     		beq	.L383
 2241 004e 0A2B     		cmp	r3, #10
 2242 0050 E0D1     		bne	.L379
 2243              	.L383:
 2244 0052 2046     		mov	r0, r4
 2245 0054 FFF7FEFF 		bl	dhcp_renew
 2246 0058 DCE7     		b	.L379
 2247              	.L397:
 2248 005a 00BF     		.align	2
 2249              	.L396:
 2250 005c 00000000 		.word	netif_list
 2251              		.size	dhcp_coarse_tmr, .-dhcp_coarse_tmr
 2252              		.section	.text.dhcp_release,"ax",%progbits
 2253              		.align	2
 2254              		.global	dhcp_release
 2255              		.thumb
 2256              		.thumb_func
 2257              		.type	dhcp_release, %function
 2258              	dhcp_release:
 2259              		@ args = 0, pretend = 0, frame = 0
 2260              		@ frame_needed = 0, uses_anonymous_args = 0
 2261 0000 70B5     		push	{r4, r5, r6, lr}
 2262 0002 446A     		ldr	r4, [r0, #36]
 2263 0004 82B0     		sub	sp, sp, #8
 2264 0006 237B     		ldrb	r3, [r4, #12]	@ zero_extendqisi2
 2265 0008 0546     		mov	r5, r0
 2266 000a 1BB1     		cbz	r3, .L399
 2267 000c 0023     		movs	r3, #0
 2268 000e 2373     		strb	r3, [r4, #12]
 2269 0010 6373     		strb	r3, [r4, #13]
 2270 0012 6383     		strh	r3, [r4, #26]	@ movhi
 2271              	.L399:
 2272 0014 0023     		movs	r3, #0
 2273 0016 2362     		str	r3, [r4, #32]
 2274 0018 6362     		str	r3, [r4, #36]
 2275 001a A362     		str	r3, [r4, #40]
 2276 001c E362     		str	r3, [r4, #44]
 2277 001e A363     		str	r3, [r4, #56]
 2278 0020 6363     		str	r3, [r4, #52]
 2279 0022 2363     		str	r3, [r4, #48]
 2280 0024 2846     		mov	r0, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 41


 2281 0026 2146     		mov	r1, r4
 2282 0028 0722     		movs	r2, #7
 2283 002a FFF7FEFF 		bl	dhcp_create_msg
 2284 002e 0646     		mov	r6, r0
 2285 0030 30B3     		cbz	r0, .L406
 2286              	.L400:
 2287 0032 637B     		ldrb	r3, [r4, #13]	@ zero_extendqisi2
 2288 0034 0133     		adds	r3, r3, #1
 2289 0036 DBB2     		uxtb	r3, r3
 2290 0038 092B     		cmp	r3, #9
 2291 003a 6373     		strb	r3, [r4, #13]
 2292 003c 1ED8     		bhi	.L402
 2293 003e C3EB4312 		rsb	r2, r3, r3, lsl #5
 2294 0042 03EB8203 		add	r3, r3, r2, lsl #2
 2295 0046 DB00     		lsls	r3, r3, #3
 2296 0048 9BB2     		uxth	r3, r3
 2297 004a 184A     		ldr	r2, .L407
 2298 004c 03F2F313 		addw	r3, r3, #499
 2299 0050 82FB0313 		smull	r1, r3, r2, r3
 2300 0054 5B09     		lsrs	r3, r3, #5
 2301              	.L401:
 2302 0056 6383     		strh	r3, [r4, #26]	@ movhi
 2303 0058 2846     		mov	r0, r5
 2304 005a FFF7FEFF 		bl	netif_set_down
 2305 005e 2846     		mov	r0, r5
 2306 0060 1349     		ldr	r1, .L407+4
 2307 0062 FFF7FEFF 		bl	netif_set_ipaddr
 2308 0066 2846     		mov	r0, r5
 2309 0068 1149     		ldr	r1, .L407+4
 2310 006a FFF7FEFF 		bl	netif_set_gw
 2311 006e 2846     		mov	r0, r5
 2312 0070 0F49     		ldr	r1, .L407+4
 2313 0072 FFF7FEFF 		bl	netif_set_netmask
 2314 0076 3046     		mov	r0, r6
 2315 0078 02B0     		add	sp, sp, #8
 2316              		@ sp needed
 2317 007a 70BD     		pop	{r4, r5, r6, pc}
 2318              	.L402:
 2319 007c 1423     		movs	r3, #20
 2320 007e EAE7     		b	.L401
 2321              	.L406:
 2322 0080 2046     		mov	r0, r4
 2323 0082 FFF7FEFF 		bl	dhcp_option_trailer
 2324 0086 218B     		ldrh	r1, [r4, #24]
 2325 0088 2069     		ldr	r0, [r4, #16]
 2326 008a F031     		adds	r1, r1, #240
 2327 008c 89B2     		uxth	r1, r1
 2328 008e FFF7FEFF 		bl	pbuf_realloc
 2329 0092 6068     		ldr	r0, [r4, #4]
 2330 0094 2169     		ldr	r1, [r4, #16]
 2331 0096 04F12002 		add	r2, r4, #32
 2332 009a 0095     		str	r5, [sp]
 2333 009c 4323     		movs	r3, #67
 2334 009e FFF7FEFF 		bl	udp_sendto_if
 2335 00a2 2046     		mov	r0, r4
 2336 00a4 FFF7FEFF 		bl	dhcp_delete_msg
 2337 00a8 C3E7     		b	.L400
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 42


 2338              	.L408:
 2339 00aa 00BF     		.align	2
 2340              	.L407:
 2341 00ac D34D6210 		.word	274877907
 2342 00b0 00000000 		.word	ip_addr_any
 2343              		.size	dhcp_release, .-dhcp_release
 2344              		.section	.text.dhcp_fine_tmr,"ax",%progbits
 2345              		.align	2
 2346              		.global	dhcp_fine_tmr
 2347              		.thumb
 2348              		.thumb_func
 2349              		.type	dhcp_fine_tmr, %function
 2350              	dhcp_fine_tmr:
 2351              		@ args = 0, pretend = 0, frame = 0
 2352              		@ frame_needed = 0, uses_anonymous_args = 0
 2353 0000 38B5     		push	{r3, r4, r5, lr}
 2354 0002 264B     		ldr	r3, .L441
 2355 0004 1C68     		ldr	r4, [r3]
 2356 0006 1CB3     		cbz	r4, .L409
 2357 0008 0025     		movs	r5, #0
 2358 000a 03E0     		b	.L426
 2359              	.L434:
 2360 000c 013A     		subs	r2, r2, #1
 2361 000e 5A83     		strh	r2, [r3, #26]	@ movhi
 2362              	.L412:
 2363 0010 2468     		ldr	r4, [r4]
 2364 0012 ECB1     		cbz	r4, .L409
 2365              	.L426:
 2366 0014 636A     		ldr	r3, [r4, #36]
 2367 0016 002B     		cmp	r3, #0
 2368 0018 FAD0     		beq	.L412
 2369 001a 5A8B     		ldrh	r2, [r3, #26]
 2370 001c 012A     		cmp	r2, #1
 2371 001e F5D8     		bhi	.L434
 2372 0020 F6D1     		bne	.L412
 2373 0022 1A7B     		ldrb	r2, [r3, #12]	@ zero_extendqisi2
 2374 0024 5D83     		strh	r5, [r3, #26]	@ movhi
 2375 0026 0C2A     		cmp	r2, #12
 2376 0028 1CD0     		beq	.L433
 2377 002a 062A     		cmp	r2, #6
 2378 002c 1AD0     		beq	.L433
 2379 002e 012A     		cmp	r2, #1
 2380 0030 0FD0     		beq	.L435
 2381 0032 082A     		cmp	r2, #8
 2382 0034 1AD0     		beq	.L436
 2383 0036 052A     		cmp	r2, #5
 2384 0038 29D0     		beq	.L437
 2385 003a 042A     		cmp	r2, #4
 2386 003c 1DD0     		beq	.L438
 2387 003e 032A     		cmp	r2, #3
 2388 0040 E6D1     		bne	.L412
 2389 0042 5B7B     		ldrb	r3, [r3, #13]	@ zero_extendqisi2
 2390 0044 2046     		mov	r0, r4
 2391 0046 012B     		cmp	r3, #1
 2392 0048 25D9     		bls	.L439
 2393 004a FFF7FEFF 		bl	dhcp_discover
 2394 004e DFE7     		b	.L412
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 43


 2395              	.L409:
 2396 0050 38BD     		pop	{r3, r4, r5, pc}
 2397              	.L435:
 2398 0052 5B7B     		ldrb	r3, [r3, #13]	@ zero_extendqisi2
 2399 0054 2046     		mov	r0, r4
 2400 0056 052B     		cmp	r3, #5
 2401 0058 02D8     		bhi	.L423
 2402 005a FFF7FEFF 		bl	dhcp_select
 2403 005e D7E7     		b	.L412
 2404              	.L423:
 2405 0060 FFF7FEFF 		bl	dhcp_release
 2406              	.L433:
 2407 0064 2046     		mov	r0, r4
 2408 0066 FFF7FEFF 		bl	dhcp_discover
 2409 006a D1E7     		b	.L412
 2410              	.L436:
 2411 006c 5B7B     		ldrb	r3, [r3, #13]	@ zero_extendqisi2
 2412 006e 2046     		mov	r0, r4
 2413 0070 012B     		cmp	r3, #1
 2414 0072 09D9     		bls	.L440
 2415 0074 FFF7FEFF 		bl	dhcp_bind
 2416 0078 CAE7     		b	.L412
 2417              	.L438:
 2418 007a 5B7B     		ldrb	r3, [r3, #13]	@ zero_extendqisi2
 2419 007c 2046     		mov	r0, r4
 2420 007e 082B     		cmp	r3, #8
 2421 0080 EED8     		bhi	.L423
 2422 0082 FFF7FEFF 		bl	dhcp_rebind
 2423 0086 C3E7     		b	.L412
 2424              	.L440:
 2425 0088 FFF7FEFF 		bl	dhcp_check
 2426 008c C0E7     		b	.L412
 2427              	.L437:
 2428 008e 2046     		mov	r0, r4
 2429 0090 FFF7FEFF 		bl	dhcp_renew
 2430 0094 BCE7     		b	.L412
 2431              	.L439:
 2432 0096 FFF7FEFF 		bl	dhcp_reboot
 2433 009a B9E7     		b	.L412
 2434              	.L442:
 2435              		.align	2
 2436              	.L441:
 2437 009c 00000000 		.word	netif_list
 2438              		.size	dhcp_fine_tmr, .-dhcp_fine_tmr
 2439              		.section	.text.dhcp_stop,"ax",%progbits
 2440              		.align	2
 2441              		.global	dhcp_stop
 2442              		.thumb
 2443              		.thumb_func
 2444              		.type	dhcp_stop, %function
 2445              	dhcp_stop:
 2446              		@ args = 0, pretend = 0, frame = 0
 2447              		@ frame_needed = 0, uses_anonymous_args = 0
 2448 0000 10B5     		push	{r4, lr}
 2449 0002 A0B1     		cbz	r0, .L456
 2450 0004 90F83530 		ldrb	r3, [r0, #53]	@ zero_extendqisi2
 2451 0008 446A     		ldr	r4, [r0, #36]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 44


 2452 000a 23F00803 		bic	r3, r3, #8
 2453 000e 80F83530 		strb	r3, [r0, #53]
 2454 0012 5CB1     		cbz	r4, .L443
 2455 0014 6068     		ldr	r0, [r4, #4]
 2456 0016 18B1     		cbz	r0, .L448
 2457 0018 FFF7FEFF 		bl	udp_remove
 2458 001c 0023     		movs	r3, #0
 2459 001e 6360     		str	r3, [r4, #4]
 2460              	.L448:
 2461 0020 237B     		ldrb	r3, [r4, #12]	@ zero_extendqisi2
 2462 0022 1BB1     		cbz	r3, .L443
 2463 0024 0023     		movs	r3, #0
 2464 0026 2373     		strb	r3, [r4, #12]
 2465 0028 6373     		strb	r3, [r4, #13]
 2466 002a 6383     		strh	r3, [r4, #26]	@ movhi
 2467              	.L443:
 2468 002c 10BD     		pop	{r4, pc}
 2469              	.L456:
 2470 002e 0448     		ldr	r0, .L457
 2471 0030 0449     		ldr	r1, .L457+4
 2472 0032 40F2C742 		movw	r2, #1223
 2473 0036 044B     		ldr	r3, .L457+8
 2474 0038 FFF7FEFF 		bl	debugPrintf
 2475              	.L445:
 2476 003c FEE7     		b	.L445
 2477              	.L458:
 2478 003e 00BF     		.align	2
 2479              	.L457:
 2480 0040 00000000 		.word	.LC0
 2481 0044 7C010000 		.word	.LC15
 2482 0048 48000000 		.word	.LC2
 2483              		.size	dhcp_stop, .-dhcp_stop
 2484              		.section	.text.dhcp_start,"ax",%progbits
 2485              		.align	2
 2486              		.global	dhcp_start
 2487              		.thumb
 2488              		.thumb_func
 2489              		.type	dhcp_start, %function
 2490              	dhcp_start:
 2491              		@ args = 0, pretend = 0, frame = 0
 2492              		@ frame_needed = 0, uses_anonymous_args = 0
 2493 0000 38B5     		push	{r3, r4, r5, lr}
 2494 0002 0446     		mov	r4, r0
 2495 0004 0028     		cmp	r0, #0
 2496 0006 3AD0     		beq	.L479
 2497 0008 90F83530 		ldrb	r3, [r0, #53]	@ zero_extendqisi2
 2498 000c 456A     		ldr	r5, [r0, #36]
 2499 000e 23F00802 		bic	r2, r3, #8
 2500 0012 9B06     		lsls	r3, r3, #26
 2501 0014 80F83520 		strb	r2, [r0, #53]
 2502 0018 39D5     		bpl	.L468
 2503 001a 838D     		ldrh	r3, [r0, #44]
 2504 001c B3F5107F 		cmp	r3, #576
 2505 0020 3BD3     		bcc	.L478
 2506 0022 002D     		cmp	r5, #0
 2507 0024 3CD0     		beq	.L480
 2508 0026 6868     		ldr	r0, [r5, #4]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 45


 2509 0028 08B1     		cbz	r0, .L466
 2510 002a FFF7FEFF 		bl	udp_remove
 2511              	.L466:
 2512 002e 0021     		movs	r1, #0
 2513 0030 3C22     		movs	r2, #60
 2514 0032 2846     		mov	r0, r5
 2515 0034 FFF7FEFF 		bl	memset
 2516 0038 FFF7FEFF 		bl	udp_new
 2517 003c 6860     		str	r0, [r5, #4]
 2518 003e 60B3     		cbz	r0, .L478
 2519 0040 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 2520 0042 1B49     		ldr	r1, .L482
 2521 0044 43F02003 		orr	r3, r3, #32
 2522 0048 0372     		strb	r3, [r0, #8]
 2523 004a 4422     		movs	r2, #68
 2524 004c 6868     		ldr	r0, [r5, #4]
 2525 004e FFF7FEFF 		bl	udp_bind
 2526 0052 1749     		ldr	r1, .L482
 2527 0054 4322     		movs	r2, #67
 2528 0056 6868     		ldr	r0, [r5, #4]
 2529 0058 FFF7FEFF 		bl	udp_connect
 2530 005c 6868     		ldr	r0, [r5, #4]
 2531 005e 1549     		ldr	r1, .L482+4
 2532 0060 2246     		mov	r2, r4
 2533 0062 FFF7FEFF 		bl	udp_recv
 2534 0066 2046     		mov	r0, r4
 2535 0068 FFF7FEFF 		bl	dhcp_discover
 2536 006c 90B9     		cbnz	r0, .L481
 2537 006e 94F83530 		ldrb	r3, [r4, #53]	@ zero_extendqisi2
 2538 0072 40B2     		sxtb	r0, r0
 2539 0074 43F00803 		orr	r3, r3, #8
 2540 0078 84F83530 		strb	r3, [r4, #53]
 2541 007c 38BD     		pop	{r3, r4, r5, pc}
 2542              	.L479:
 2543 007e 0E48     		ldr	r0, .L482+8
 2544 0080 0E49     		ldr	r1, .L482+12
 2545 0082 40F27A22 		movw	r2, #634
 2546 0086 0E4B     		ldr	r3, .L482+16
 2547 0088 FFF7FEFF 		bl	debugPrintf
 2548              	.L461:
 2549 008c FEE7     		b	.L461
 2550              	.L468:
 2551 008e F220     		movs	r0, #242
 2552 0090 40B2     		sxtb	r0, r0
 2553 0092 38BD     		pop	{r3, r4, r5, pc}
 2554              	.L481:
 2555 0094 2046     		mov	r0, r4
 2556 0096 FFF7FEFF 		bl	dhcp_stop
 2557              	.L478:
 2558 009a FF20     		movs	r0, #255
 2559 009c 40B2     		sxtb	r0, r0
 2560 009e 38BD     		pop	{r3, r4, r5, pc}
 2561              	.L480:
 2562 00a0 3C20     		movs	r0, #60
 2563 00a2 FFF7FEFF 		bl	mem_malloc
 2564 00a6 0546     		mov	r5, r0
 2565 00a8 0028     		cmp	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 46


 2566 00aa F6D0     		beq	.L478
 2567 00ac 6062     		str	r0, [r4, #36]
 2568 00ae BEE7     		b	.L466
 2569              	.L483:
 2570              		.align	2
 2571              	.L482:
 2572 00b0 00000000 		.word	ip_addr_any
 2573 00b4 00000000 		.word	dhcp_recv
 2574 00b8 00000000 		.word	.LC0
 2575 00bc 6C010000 		.word	.LC14
 2576 00c0 48000000 		.word	.LC2
 2577              		.size	dhcp_start, .-dhcp_start
 2578              		.comm	dhcp_rx_options_given,10,4
 2579              		.comm	dhcp_rx_options_val,40,4
 2580              		.section	.bss.xid.6023,"aw",%nobits
 2581              		.align	2
 2582              		.set	.LANCHOR0,. + 0
 2583              		.type	xid.6023, %object
 2584              		.size	xid.6023, 4
 2585              	xid.6023:
 2586 0000 00000000 		.space	4
 2587              		.section	.rodata.str1.4,"aMS",%progbits,1
 2588              		.align	2
 2589              	.LC0:
 2590 0000 41737365 		.ascii	"Assertion \"%s\" failed at line %d in %s\012\000"
 2590      7274696F 
 2590      6E202225 
 2590      73222066 
 2590      61696C65 
 2591              	.LC1:
 2592 0028 64686370 		.ascii	"dhcp_create_msg: netif != NULL\000"
 2592      5F637265 
 2592      6174655F 
 2592      6D73673A 
 2592      206E6574 
 2593 0047 00       		.space	1
 2594              	.LC2:
 2595 0048 2E2E2F73 		.ascii	"../src/Duet/Lwip/lwip/src/core/dhcp.c\000"
 2595      72632F44 
 2595      7565742F 
 2595      4C776970 
 2595      2F6C7769 
 2596 006e 0000     		.space	2
 2597              	.LC3:
 2598 0070 64686370 		.ascii	"dhcp_create_msg: dhcp != NULL\000"
 2598      5F637265 
 2598      6174655F 
 2598      6D73673A 
 2598      20646863 
 2599 008e 0000     		.space	2
 2600              	.LC4:
 2601 0090 64686370 		.ascii	"dhcp_bind: netif != NULL\000"
 2601      5F62696E 
 2601      643A206E 
 2601      65746966 
 2601      20213D20 
 2602 00a9 000000   		.space	3
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 47


 2603              	.LC5:
 2604 00ac 64686370 		.ascii	"dhcp_bind: dhcp != NULL\000"
 2604      5F62696E 
 2604      643A2064 
 2604      68637020 
 2604      213D204E 
 2605              	.LC6:
 2606 00c4 64686370 		.ascii	"dhcp_option_trailer: dhcp != NULL\000"
 2606      5F6F7074 
 2606      696F6E5F 
 2606      74726169 
 2606      6C65723A 
 2607 00e6 0000     		.space	2
 2608              	.LC7:
 2609 00e8 64686370 		.ascii	"dhcp_delete_msg: dhcp != NULL\000"
 2609      5F64656C 
 2609      6574655F 
 2609      6D73673A 
 2609      20646863 
 2610 0106 0000     		.space	2
 2611              	.LC8:
 2612 0108 6C656E20 		.ascii	"len == 4\000"
 2612      3D3D2034 
 2612      00
 2613 0111 000000   		.space	3
 2614              	.LC9:
 2615 0114 6C656E20 		.ascii	"len >= decode_len\000"
 2615      3E3D2064 
 2615      65636F64 
 2615      655F6C65 
 2615      6E00
 2616 0126 0000     		.space	2
 2617              	.LC10:
 2618 0128 6C656E20 		.ascii	"len % 4 == 0\000"
 2618      25203420 
 2618      3D3D2030 
 2618      00
 2619 0135 000000   		.space	3
 2620              	.LC11:
 2621 0138 6C656E20 		.ascii	"len == 1\000"
 2621      3D3D2031 
 2621      00
 2622 0141 000000   		.space	3
 2623              	.LC12:
 2624 0144 6465636F 		.ascii	"decode_len % 4 == 0\000"
 2624      64655F6C 
 2624      656E2025 
 2624      2034203D 
 2624      3D203000 
 2625              	.LC13:
 2626 0158 696E7661 		.ascii	"invalid decode_len\000"
 2626      6C696420 
 2626      6465636F 
 2626      64655F6C 
 2626      656E00
 2627 016b 00       		.space	1
 2628              	.LC14:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccibYmso.s 			page 48


 2629 016c 6E657469 		.ascii	"netif != NULL\000"
 2629      6620213D 
 2629      204E554C 
 2629      4C00
 2630 017a 0000     		.space	2
 2631              	.LC15:
 2632 017c 64686370 		.ascii	"dhcp_stop: netif != NULL\000"
 2632      5F73746F 
 2632      703A206E 
 2632      65746966 
 2632      20213D20 
 2633 0195 000000   		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
