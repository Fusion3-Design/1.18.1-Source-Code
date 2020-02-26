ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 1


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
  14              		.file	"tcp_out.c"
  15              		.section	.text.tcp_pbuf_prealloc,"ax",%progbits
  16              		.align	2
  17              		.thumb
  18              		.thumb_func
  19              		.type	tcp_pbuf_prealloc, %function
  20              	tcp_pbuf_prealloc:
  21              		@ args = 12, pretend = 0, frame = 0
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23 0000 70B5     		push	{r4, r5, r6, lr}
  24 0002 0C46     		mov	r4, r1
  25 0004 9442     		cmp	r4, r2
  26 0006 1D46     		mov	r5, r3
  27 0008 9DF81810 		ldrb	r1, [sp, #24]	@ zero_extendqisi2
  28 000c 9DF81430 		ldrb	r3, [sp, #20]	@ zero_extendqisi2
  29 0010 0ED2     		bcs	.L7
  30 0012 9E07     		lsls	r6, r3, #30
  31 0014 08D5     		bpl	.L15
  32              	.L3:
  33 0016 04F2B751 		addw	r1, r4, #1463
  34 001a 21F00301 		bic	r1, r1, #3
  35 001e 9142     		cmp	r1, r2
  36 0020 B8BF     		it	lt
  37 0022 0A46     		movlt	r2, r1
  38 0024 91B2     		uxth	r1, r2
  39 0026 04E0     		b	.L2
  40              	.L15:
  41 0028 049E     		ldr	r6, [sp, #16]
  42 002a B37F     		ldrb	r3, [r6, #30]	@ zero_extendqisi2
  43 002c 5B06     		lsls	r3, r3, #25
  44 002e 0AD5     		bpl	.L16
  45              	.L7:
  46 0030 2146     		mov	r1, r4
  47              	.L2:
  48 0032 0022     		movs	r2, #0
  49 0034 FFF7FEFF 		bl	pbuf_alloc
  50 0038 20B1     		cbz	r0, .L4
  51 003a 4389     		ldrh	r3, [r0, #10]
  52 003c 1B1B     		subs	r3, r3, r4
  53 003e 2B80     		strh	r3, [r5]	@ movhi
  54 0040 0481     		strh	r4, [r0, #8]	@ movhi
  55 0042 4481     		strh	r4, [r0, #10]	@ movhi
  56              	.L4:
  57 0044 70BD     		pop	{r4, r5, r6, pc}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 2


  58              	.L16:
  59 0046 0029     		cmp	r1, #0
  60 0048 E5D0     		beq	.L3
  61 004a F36E     		ldr	r3, [r6, #108]
  62 004c 002B     		cmp	r3, #0
  63 004e E2D1     		bne	.L3
  64 0050 336F     		ldr	r3, [r6, #112]
  65 0052 002B     		cmp	r3, #0
  66 0054 DFD1     		bne	.L3
  67 0056 EBE7     		b	.L7
  68              		.size	tcp_pbuf_prealloc, .-tcp_pbuf_prealloc
  69              		.section	.text.tcp_create_segment.isra.0,"ax",%progbits
  70              		.align	2
  71              		.thumb
  72              		.thumb_func
  73              		.type	tcp_create_segment.isra.0, %function
  74              	tcp_create_segment.isra.0:
  75              		@ args = 8, pretend = 0, frame = 0
  76              		@ frame_needed = 0, uses_anonymous_args = 0
  77 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
  78 0004 9DF82C50 		ldrb	r5, [sp, #44]	@ zero_extendqisi2
  79 0008 8246     		mov	r10, r0
  80 000a 15F0010F 		tst	r5, #1
  81 000e 0CBF     		ite	eq
  82 0010 0024     		moveq	r4, #0
  83 0012 0424     		movne	r4, #4
  84 0014 0320     		movs	r0, #3
  85 0016 15F0020F 		tst	r5, #2
  86 001a 0CBF     		ite	eq
  87 001c 0027     		moveq	r7, #0
  88 001e 0C27     		movne	r7, #12
  89 0020 8946     		mov	r9, r1
  90 0022 1646     		mov	r6, r2
  91 0024 9846     		mov	r8, r3
  92 0026 FFF7FEFF 		bl	memp_malloc
  93 002a 2744     		add	r7, r7, r4
  94 002c 0446     		mov	r4, r0
  95 002e 0028     		cmp	r0, #0
  96 0030 3CD0     		beq	.L25
  97 0032 8572     		strb	r5, [r0, #10]
  98 0034 3389     		ldrh	r3, [r6, #8]
  99 0036 4FF0000B 		mov	fp, #0
 100 003a DB1B     		subs	r3, r3, r7
 101 003c 4660     		str	r6, [r0, #4]
 102 003e 0381     		strh	r3, [r0, #8]	@ movhi
 103 0040 1421     		movs	r1, #20
 104 0042 3046     		mov	r0, r6
 105 0044 C4F800B0 		str	fp, [r4]
 106 0048 FFF7FEFF 		bl	pbuf_header
 107 004c 0546     		mov	r5, r0
 108 004e 08BB     		cbnz	r0, .L26
 109 0050 6368     		ldr	r3, [r4, #4]
 110 0052 BAF80000 		ldrh	r0, [r10]
 111 0056 5E68     		ldr	r6, [r3, #4]
 112 0058 BF02     		lsls	r7, r7, #10
 113 005a E660     		str	r6, [r4, #12]
 114 005c FFF7FEFF 		bl	lwip_htons
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 3


 115 0060 3080     		strh	r0, [r6]	@ unaligned
 116 0062 B9F80000 		ldrh	r0, [r9]
 117 0066 E668     		ldr	r6, [r4, #12]
 118 0068 FFF7FEFF 		bl	lwip_htons
 119 006c 7080     		strh	r0, [r6, #2]	@ unaligned
 120 006e 0A98     		ldr	r0, [sp, #40]
 121 0070 E668     		ldr	r6, [r4, #12]
 122 0072 FFF7FEFF 		bl	lwip_htonl
 123 0076 07F5A047 		add	r7, r7, #20480
 124 007a 7060     		str	r0, [r6, #4]	@ unaligned
 125 007c 47EA0800 		orr	r0, r7, r8
 126 0080 E668     		ldr	r6, [r4, #12]
 127 0082 FFF7FEFF 		bl	lwip_htons
 128 0086 E368     		ldr	r3, [r4, #12]
 129 0088 B081     		strh	r0, [r6, #12]	@ unaligned
 130 008a 2046     		mov	r0, r4
 131 008c 9D74     		strb	r5, [r3, #18]
 132 008e DD74     		strb	r5, [r3, #19]
 133 0090 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 134              	.L26:
 135 0094 084B     		ldr	r3, .L27
 136 0096 2046     		mov	r0, r4
 137 0098 B3F8C020 		ldrh	r2, [r3, #192]
 138 009c 0132     		adds	r2, r2, #1
 139 009e A3F8C020 		strh	r2, [r3, #192]	@ movhi
 140 00a2 FFF7FEFF 		bl	tcp_seg_free
 141 00a6 5846     		mov	r0, fp
 142 00a8 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 143              	.L25:
 144 00ac 3046     		mov	r0, r6
 145 00ae FFF7FEFF 		bl	pbuf_free
 146 00b2 2046     		mov	r0, r4
 147 00b4 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 148              	.L28:
 149              		.align	2
 150              	.L27:
 151 00b8 00000000 		.word	lwip_stats
 152              		.size	tcp_create_segment.isra.0, .-tcp_create_segment.isra.0
 153              		.section	.text.tcp_output_alloc_header.constprop.1,"ax",%progbits
 154              		.align	2
 155              		.thumb
 156              		.thumb_func
 157              		.type	tcp_output_alloc_header.constprop.1, %function
 158              	tcp_output_alloc_header.constprop.1:
 159              		@ args = 0, pretend = 0, frame = 0
 160              		@ frame_needed = 0, uses_anonymous_args = 0
 161 0000 1431     		adds	r1, r1, #20
 162 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 163 0004 89B2     		uxth	r1, r1
 164 0006 0546     		mov	r5, r0
 165 0008 1746     		mov	r7, r2
 166 000a 0120     		movs	r0, #1
 167 000c 0022     		movs	r2, #0
 168 000e FFF7FEFF 		bl	pbuf_alloc
 169 0012 0646     		mov	r6, r0
 170 0014 F8B1     		cbz	r0, .L30
 171 0016 688B     		ldrh	r0, [r5, #26]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 4


 172 0018 7468     		ldr	r4, [r6, #4]
 173 001a FFF7FEFF 		bl	lwip_htons
 174 001e 2080     		strh	r0, [r4]	@ unaligned
 175 0020 A88B     		ldrh	r0, [r5, #28]
 176 0022 FFF7FEFF 		bl	lwip_htons
 177 0026 6760     		str	r7, [r4, #4]	@ unaligned
 178 0028 6080     		strh	r0, [r4, #2]	@ unaligned
 179 002a A86A     		ldr	r0, [r5, #40]
 180 002c FFF7FEFF 		bl	lwip_htonl
 181 0030 A060     		str	r0, [r4, #8]	@ unaligned
 182 0032 45F21000 		movw	r0, #20496
 183 0036 FFF7FEFF 		bl	lwip_htons
 184 003a A081     		strh	r0, [r4, #12]	@ unaligned
 185 003c E88D     		ldrh	r0, [r5, #46]
 186 003e FFF7FEFF 		bl	lwip_htons
 187 0042 E98D     		ldrh	r1, [r5, #46]
 188 0044 AA6A     		ldr	r2, [r5, #40]
 189 0046 0023     		movs	r3, #0
 190 0048 0A44     		add	r2, r2, r1
 191 004a E081     		strh	r0, [r4, #14]	@ unaligned
 192 004c 2374     		strb	r3, [r4, #16]
 193 004e 6374     		strb	r3, [r4, #17]
 194 0050 A374     		strb	r3, [r4, #18]
 195 0052 E374     		strb	r3, [r4, #19]
 196 0054 2A63     		str	r2, [r5, #48]
 197              	.L30:
 198 0056 3046     		mov	r0, r6
 199 0058 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 200              		.size	tcp_output_alloc_header.constprop.1, .-tcp_output_alloc_header.constprop.1
 201 005a 00BF     		.section	.text.tcp_write,"ax",%progbits
 202              		.align	2
 203              		.global	tcp_write
 204              		.thumb
 205              		.thumb_func
 206              		.type	tcp_write, %function
 207              	tcp_write:
 208              		@ args = 0, pretend = 0, frame = 48
 209              		@ frame_needed = 0, uses_anonymous_args = 0
 210 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 211 0004 91B0     		sub	sp, sp, #68
 212 0006 0891     		str	r1, [sp, #32]
 213 0008 089F     		ldr	r7, [sp, #32]
 214 000a 0446     		mov	r4, r0
 215 000c 0021     		movs	r1, #0
 216 000e 9246     		mov	r10, r2
 217 0010 0B93     		str	r3, [sp, #44]
 218 0012 B0F86200 		ldrh	r0, [r0, #98]
 219 0016 E28E     		ldrh	r2, [r4, #54]
 220 0018 ADF83E10 		strh	r1, [sp, #62]	@ movhi
 221 001c 002F     		cmp	r7, #0
 222 001e 00F08481 		beq	.L118
 223 0022 237E     		ldrb	r3, [r4, #24]	@ zero_extendqisi2
 224 0024 072B     		cmp	r3, #7
 225 0026 07D0     		beq	.L37
 226 0028 023B     		subs	r3, r3, #2
 227 002a 022B     		cmp	r3, #2
 228 002c 04D9     		bls	.L37
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 5


 229 002e F323     		movs	r3, #243
 230              	.L69:
 231 0030 58B2     		sxtb	r0, r3
 232 0032 11B0     		add	sp, sp, #68
 233              		@ sp needed
 234 0034 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 235              	.L37:
 236 0038 BAF1000F 		cmp	r10, #0
 237 003c 00F0C880 		beq	.L39
 238 0040 B4F86630 		ldrh	r3, [r4, #102]
 239 0044 5345     		cmp	r3, r10
 240 0046 C0F07B81 		bcc	.L119
 241 004a B4F86830 		ldrh	r3, [r4, #104]
 242 004e 052B     		cmp	r3, #5
 243 0050 98BF     		it	ls
 244 0052 0793     		strls	r3, [sp, #28]
 245 0054 00F28C81 		bhi	.L120
 246              	.L41:
 247 0058 4308     		lsrs	r3, r0, #1
 248 005a E66E     		ldr	r6, [r4, #108]
 249 005c 9342     		cmp	r3, r2
 250 005e 28BF     		it	cs
 251 0060 1346     		movcs	r3, r2
 252 0062 0A93     		str	r3, [sp, #40]
 253 0064 0EB9     		cbnz	r6, .L72
 254 0066 B7E0     		b	.L131
 255              	.L42:
 256 0068 2E46     		mov	r6, r5
 257              	.L72:
 258 006a 3568     		ldr	r5, [r6]
 259 006c 002D     		cmp	r5, #0
 260 006e FBD1     		bne	.L42
 261 0070 B37A     		ldrb	r3, [r6, #10]	@ zero_extendqisi2
 262 0072 3189     		ldrh	r1, [r6, #8]
 263 0074 0A9F     		ldr	r7, [sp, #40]
 264 0076 13F0010F 		tst	r3, #1
 265 007a 0CBF     		ite	eq
 266 007c 0022     		moveq	r2, #0
 267 007e 0422     		movne	r2, #4
 268 0080 781A     		subs	r0, r7, r1
 269 0082 13F0020F 		tst	r3, #2
 270 0086 C2EB0000 		rsb	r0, r2, r0
 271 008a B4F86A30 		ldrh	r3, [r4, #106]
 272 008e 0CBF     		ite	eq
 273 0090 0022     		moveq	r2, #0
 274 0092 0C22     		movne	r2, #12
 275 0094 821A     		subs	r2, r0, r2
 276 0096 92B2     		uxth	r2, r2
 277 0098 002B     		cmp	r3, #0
 278 009a 33D1     		bne	.L45
 279 009c A846     		mov	r8, r5
 280 009e D045     		cmp	r8, r10
 281 00a0 ADF83E50 		strh	r5, [sp, #62]	@ movhi
 282 00a4 2B46     		mov	r3, r5
 283 00a6 3BD2     		bcs	.L77
 284              	.L123:
 285 00a8 002A     		cmp	r2, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 6


 286 00aa 00F03B81 		beq	.L78
 287 00ae 0029     		cmp	r1, #0
 288 00b0 00F04381 		beq	.L122
 289 00b4 0B9F     		ldr	r7, [sp, #44]
 290 00b6 C8EB0A05 		rsb	r5, r8, r10
 291 00ba 9542     		cmp	r5, r2
 292 00bc A8BF     		it	ge
 293 00be 1546     		movge	r5, r2
 294 00c0 FB07     		lsls	r3, r7, #31
 295 00c2 ADB2     		uxth	r5, r5
 296 00c4 40F17D81 		bpl	.L51
 297 00c8 0123     		movs	r3, #1
 298 00ca 0293     		str	r3, [sp, #8]
 299 00cc 8DE89000 		stmia	sp, {r4, r7}
 300 00d0 0320     		movs	r0, #3
 301 00d2 2946     		mov	r1, r5
 302 00d4 0DF13E03 		add	r3, sp, #62
 303 00d8 FFF7FEFF 		bl	tcp_pbuf_prealloc
 304 00dc 8146     		mov	r9, r0
 305 00de 0028     		cmp	r0, #0
 306 00e0 00F03781 		beq	.L52
 307 00e4 0899     		ldr	r1, [sp, #32]
 308 00e6 4068     		ldr	r0, [r0, #4]
 309 00e8 4144     		add	r1, r1, r8
 310 00ea 2A46     		mov	r2, r5
 311 00ec FFF7FEFF 		bl	memcpy
 312              	.L53:
 313 00f0 4846     		mov	r0, r9
 314 00f2 FFF7FEFF 		bl	pbuf_clen
 315 00f6 0799     		ldr	r1, [sp, #28]
 316 00f8 4544     		add	r5, r5, r8
 317 00fa 0844     		add	r0, r0, r1
 318 00fc 80B2     		uxth	r0, r0
 319 00fe AFB2     		uxth	r7, r5
 320 0100 0790     		str	r0, [sp, #28]
 321 0102 6CE0     		b	.L71
 322              	.L45:
 323 0104 9A45     		cmp	r10, r3
 324 0106 34BF     		ite	cc
 325 0108 D046     		movcc	r8, r10
 326 010a 9846     		movcs	r8, r3
 327 010c C8EB0303 		rsb	r3, r8, r3
 328 0110 C8EB0202 		rsb	r2, r8, r2
 329 0114 D045     		cmp	r8, r10
 330 0116 ADF83E30 		strh	r3, [sp, #62]	@ movhi
 331 011a 92B2     		uxth	r2, r2
 332 011c 3346     		mov	r3, r6
 333 011e C3D3     		bcc	.L123
 334              	.L77:
 335 0120 4FF00009 		mov	r9, #0
 336              	.L47:
 337 0124 B8F1000F 		cmp	r8, #0
 338 0128 20D0     		beq	.L61
 339 012a 7768     		ldr	r7, [r6, #4]
 340 012c 9B46     		mov	fp, r3
 341 012e CFB1     		cbz	r7, .L65
 342 0130 3B89     		ldrh	r3, [r7, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 7


 343 0132 3968     		ldr	r1, [r7]
 344 0134 4344     		add	r3, r3, r8
 345 0136 3B81     		strh	r3, [r7, #8]	@ movhi
 346 0138 31B1     		cbz	r1, .L124
 347              	.L64:
 348 013a 0F46     		mov	r7, r1
 349 013c 3B89     		ldrh	r3, [r7, #8]
 350 013e 3968     		ldr	r1, [r7]
 351 0140 4344     		add	r3, r3, r8
 352 0142 3B81     		strh	r3, [r7, #8]	@ movhi
 353 0144 0029     		cmp	r1, #0
 354 0146 F8D1     		bne	.L64
 355              	.L124:
 356 0148 7A68     		ldr	r2, [r7, #4]
 357 014a 7889     		ldrh	r0, [r7, #10]
 358 014c 0899     		ldr	r1, [sp, #32]
 359 014e 1044     		add	r0, r0, r2
 360 0150 4246     		mov	r2, r8
 361 0152 FFF7FEFF 		bl	memcpy
 362 0156 7B89     		ldrh	r3, [r7, #10]
 363 0158 3968     		ldr	r1, [r7]
 364 015a 4344     		add	r3, r3, r8
 365 015c 7B81     		strh	r3, [r7, #10]	@ movhi
 366 015e 0029     		cmp	r1, #0
 367 0160 EBD1     		bne	.L64
 368 0162 5B46     		mov	r3, fp
 369              	.L65:
 370 0164 3289     		ldrh	r2, [r6, #8]
 371 0166 9044     		add	r8, r8, r2
 372 0168 A6F80880 		strh	r8, [r6, #8]	@ movhi
 373              	.L61:
 374 016c BDF83E20 		ldrh	r2, [sp, #62]
 375 0170 A4F86A20 		strh	r2, [r4, #106]	@ movhi
 376 0174 B9F1000F 		cmp	r9, #0
 377 0178 00F01E81 		beq	.L66
 378 017c 7068     		ldr	r0, [r6, #4]
 379 017e 4946     		mov	r1, r9
 380 0180 0593     		str	r3, [sp, #20]
 381 0182 FFF7FEFF 		bl	pbuf_cat
 382 0186 B9F80810 		ldrh	r1, [r9, #8]
 383 018a 3289     		ldrh	r2, [r6, #8]
 384 018c 059B     		ldr	r3, [sp, #20]
 385 018e 0A44     		add	r2, r2, r1
 386 0190 3281     		strh	r2, [r6, #8]	@ movhi
 387              	.L67:
 388 0192 3560     		str	r5, [r6]
 389              	.L68:
 390 0194 E26D     		ldr	r2, [r4, #92]
 391 0196 B4F86610 		ldrh	r1, [r4, #102]
 392 019a 079F     		ldr	r7, [sp, #28]
 393 019c 5244     		add	r2, r2, r10
 394 019e CAEB010A 		rsb	r10, r10, r1
 395 01a2 A4F86870 		strh	r7, [r4, #104]	@ movhi
 396 01a6 E265     		str	r2, [r4, #92]
 397 01a8 A4F866A0 		strh	r10, [r4, #102]	@ movhi
 398 01ac 002B     		cmp	r3, #0
 399 01ae 3FF43FAF 		beq	.L69
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 8


 400 01b2 DC68     		ldr	r4, [r3, #12]
 401 01b4 3CB1     		cbz	r4, .L82
 402 01b6 0B9F     		ldr	r7, [sp, #44]
 403 01b8 07F00202 		and	r2, r7, #2
 404 01bc 02F0FF05 		and	r5, r2, #255
 405 01c0 002A     		cmp	r2, #0
 406 01c2 00F0EE80 		beq	.L125
 407              	.L82:
 408 01c6 0023     		movs	r3, #0
 409 01c8 58B2     		sxtb	r0, r3
 410 01ca 11B0     		add	sp, sp, #68
 411              		@ sp needed
 412 01cc BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 413              	.L39:
 414 01d0 B4F86810 		ldrh	r1, [r4, #104]
 415 01d4 0791     		str	r1, [sp, #28]
 416 01d6 3FE7     		b	.L41
 417              	.L131:
 418 01d8 B046     		mov	r8, r6
 419 01da 3746     		mov	r7, r6
 420 01dc B146     		mov	r9, r6
 421              	.L71:
 422 01de BA45     		cmp	r10, r7
 423 01e0 40F2DC80 		bls	.L126
 424              	.L48:
 425 01e4 0B99     		ldr	r1, [sp, #44]
 426 01e6 0025     		movs	r5, #0
 427 01e8 0C96     		str	r6, [sp, #48]
 428 01ea CDF83480 		str	r8, [sp, #52]
 429 01ee 0695     		str	r5, [sp, #24]
 430 01f0 01F0010B 		and	fp, r1, #1
 431 01f4 CDF82490 		str	r9, [sp, #36]
 432 01f8 A846     		mov	r8, r5
 433 01fa 079E     		ldr	r6, [sp, #28]
 434 01fc 36E0     		b	.L50
 435              	.L128:
 436 01fe D8F10103 		rsbs	r3, r8, #1
 437 0202 0B99     		ldr	r1, [sp, #44]
 438 0204 38BF     		it	cc
 439 0206 0023     		movcc	r3, #0
 440 0208 0191     		str	r1, [sp, #4]
 441 020a 0293     		str	r3, [sp, #8]
 442 020c 0094     		str	r4, [sp]
 443 020e 0020     		movs	r0, #0
 444 0210 2946     		mov	r1, r5
 445 0212 0DF13E03 		add	r3, sp, #62
 446 0216 FFF7FEFF 		bl	tcp_pbuf_prealloc
 447 021a 8146     		mov	r9, r0
 448 021c 0028     		cmp	r0, #0
 449 021e 78D0     		beq	.L112
 450 0220 0899     		ldr	r1, [sp, #32]
 451 0222 4068     		ldr	r0, [r0, #4]
 452 0224 3944     		add	r1, r1, r7
 453 0226 2A46     		mov	r2, r5
 454 0228 FFF7FEFF 		bl	memcpy
 455              	.L56:
 456 022c 4846     		mov	r0, r9
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 9


 457 022e FFF7FEFF 		bl	pbuf_clen
 458 0232 3044     		add	r0, r0, r6
 459 0234 86B2     		uxth	r6, r0
 460 0236 062E     		cmp	r6, #6
 461 0238 4BD8     		bhi	.L127
 462 023a E16D     		ldr	r1, [r4, #92]
 463 023c 0022     		movs	r2, #0
 464 023e 3944     		add	r1, r1, r7
 465 0240 0192     		str	r2, [sp, #4]
 466 0242 0091     		str	r1, [sp]
 467 0244 4A46     		mov	r2, r9
 468 0246 04F11A00 		add	r0, r4, #26
 469 024a 04F11C01 		add	r1, r4, #28
 470 024e 0023     		movs	r3, #0
 471 0250 FFF7FEFF 		bl	tcp_create_segment.isra.0
 472 0254 0028     		cmp	r0, #0
 473 0256 5CD0     		beq	.L112
 474 0258 B8F1000F 		cmp	r8, #0
 475 025c 2BD0     		beq	.L79
 476 025e 2F44     		add	r7, r7, r5
 477 0260 069B     		ldr	r3, [sp, #24]
 478 0262 BFB2     		uxth	r7, r7
 479 0264 BA45     		cmp	r10, r7
 480 0266 1860     		str	r0, [r3]
 481 0268 2AD9     		bls	.L113
 482              	.L130:
 483 026a 0690     		str	r0, [sp, #24]
 484              	.L50:
 485 026c C7EB0A05 		rsb	r5, r7, r10
 486 0270 0A9A     		ldr	r2, [sp, #40]
 487 0272 ADB2     		uxth	r5, r5
 488 0274 9542     		cmp	r5, r2
 489 0276 28BF     		it	cs
 490 0278 1546     		movcs	r5, r2
 491 027a BBF1000F 		cmp	fp, #0
 492 027e BED1     		bne	.L128
 493 0280 5846     		mov	r0, fp
 494 0282 2946     		mov	r1, r5
 495 0284 0122     		movs	r2, #1
 496 0286 FFF7FEFF 		bl	pbuf_alloc
 497 028a 8446     		mov	ip, r0
 498 028c 0028     		cmp	r0, #0
 499 028e 40D0     		beq	.L112
 500 0290 089B     		ldr	r3, [sp, #32]
 501 0292 5946     		mov	r1, fp
 502 0294 3B44     		add	r3, r3, r7
 503 0296 4360     		str	r3, [r0, #4]
 504 0298 5A46     		mov	r2, fp
 505 029a 5846     		mov	r0, fp
 506 029c CDF814C0 		str	ip, [sp, #20]
 507 02a0 FFF7FEFF 		bl	pbuf_alloc
 508 02a4 DDF814C0 		ldr	ip, [sp, #20]
 509 02a8 8146     		mov	r9, r0
 510 02aa 0028     		cmp	r0, #0
 511 02ac 6FD0     		beq	.L129
 512 02ae 6146     		mov	r1, ip
 513 02b0 FFF7FEFF 		bl	pbuf_cat
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 10


 514 02b4 BAE7     		b	.L56
 515              	.L79:
 516 02b6 2F44     		add	r7, r7, r5
 517 02b8 BFB2     		uxth	r7, r7
 518 02ba BA45     		cmp	r10, r7
 519 02bc 8046     		mov	r8, r0
 520 02be D4D8     		bhi	.L130
 521              	.L113:
 522 02c0 4546     		mov	r5, r8
 523 02c2 0796     		str	r6, [sp, #28]
 524 02c4 0346     		mov	r3, r0
 525 02c6 DDF82490 		ldr	r9, [sp, #36]
 526 02ca DDF83480 		ldr	r8, [sp, #52]
 527 02ce 0C9E     		ldr	r6, [sp, #48]
 528 02d0 28E7     		b	.L47
 529              	.L127:
 530 02d2 CB46     		mov	fp, r9
 531 02d4 5846     		mov	r0, fp
 532 02d6 4546     		mov	r5, r8
 533 02d8 DDF82490 		ldr	r9, [sp, #36]
 534 02dc FFF7FEFF 		bl	pbuf_free
 535              	.L58:
 536 02e0 A27F     		ldrb	r2, [r4, #30]	@ zero_extendqisi2
 537 02e2 3E4B     		ldr	r3, .L132
 538 02e4 62F07F02 		orn	r2, r2, #127
 539 02e8 A277     		strb	r2, [r4, #30]
 540 02ea B3F8B820 		ldrh	r2, [r3, #184]
 541 02ee 0132     		adds	r2, r2, #1
 542 02f0 A3F8B820 		strh	r2, [r3, #184]	@ movhi
 543 02f4 B9F1000F 		cmp	r9, #0
 544 02f8 02D0     		beq	.L70
 545 02fa 4846     		mov	r0, r9
 546 02fc FFF7FEFF 		bl	pbuf_free
 547              	.L70:
 548 0300 5DB1     		cbz	r5, .L83
 549 0302 2846     		mov	r0, r5
 550 0304 FFF7FEFF 		bl	tcp_segs_free
 551 0308 FF23     		movs	r3, #255
 552 030a 58B2     		sxtb	r0, r3
 553 030c 11B0     		add	sp, sp, #68
 554              		@ sp needed
 555 030e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 556              	.L112:
 557 0312 4546     		mov	r5, r8
 558 0314 DDF82490 		ldr	r9, [sp, #36]
 559 0318 E2E7     		b	.L58
 560              	.L83:
 561 031a FF23     		movs	r3, #255
 562 031c 58B2     		sxtb	r0, r3
 563 031e 11B0     		add	sp, sp, #68
 564              		@ sp needed
 565 0320 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 566              	.L78:
 567 0324 9146     		mov	r9, r2
 568 0326 4746     		mov	r7, r8
 569 0328 5CE7     		b	.L48
 570              	.L118:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 11


 571 032a 2D48     		ldr	r0, .L132+4
 572 032c 2D49     		ldr	r1, .L132+8
 573 032e 40F27F12 		movw	r2, #383
 574 0332 2D4B     		ldr	r3, .L132+12
 575 0334 FFF7FEFF 		bl	debugPrintf
 576              	.L36:
 577 0338 FEE7     		b	.L36
 578              	.L122:
 579 033a 8946     		mov	r9, r1
 580 033c 4746     		mov	r7, r8
 581 033e 51E7     		b	.L48
 582              	.L119:
 583 0340 A27F     		ldrb	r2, [r4, #30]	@ zero_extendqisi2
 584 0342 FF23     		movs	r3, #255
 585 0344 62F07F02 		orn	r2, r2, #127
 586 0348 58B2     		sxtb	r0, r3
 587 034a A277     		strb	r2, [r4, #30]
 588 034c 11B0     		add	sp, sp, #68
 589              		@ sp needed
 590 034e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 591              	.L52:
 592 0352 A37F     		ldrb	r3, [r4, #30]	@ zero_extendqisi2
 593 0354 214A     		ldr	r2, .L132
 594 0356 63F07F03 		orn	r3, r3, #127
 595 035a A377     		strb	r3, [r4, #30]
 596 035c B2F8B810 		ldrh	r1, [r2, #184]
 597 0360 FF23     		movs	r3, #255
 598 0362 0131     		adds	r1, r1, #1
 599 0364 58B2     		sxtb	r0, r3
 600 0366 A2F8B810 		strh	r1, [r2, #184]	@ movhi
 601 036a 11B0     		add	sp, sp, #68
 602              		@ sp needed
 603 036c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 604              	.L120:
 605 0370 1A4A     		ldr	r2, .L132
 606 0372 FF23     		movs	r3, #255
 607 0374 B2F8B810 		ldrh	r1, [r2, #184]
 608 0378 58B2     		sxtb	r0, r3
 609 037a 0131     		adds	r1, r1, #1
 610 037c A2F8B810 		strh	r1, [r2, #184]	@ movhi
 611 0380 A27F     		ldrb	r2, [r4, #30]	@ zero_extendqisi2
 612 0382 62F07F02 		orn	r2, r2, #127
 613 0386 A277     		strb	r2, [r4, #30]
 614 0388 11B0     		add	sp, sp, #68
 615              		@ sp needed
 616 038a BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 617              	.L129:
 618 038e 6046     		mov	r0, ip
 619 0390 4546     		mov	r5, r8
 620 0392 DDF82490 		ldr	r9, [sp, #36]
 621 0396 FFF7FEFF 		bl	pbuf_free
 622 039a A1E7     		b	.L58
 623              	.L126:
 624 039c 3346     		mov	r3, r6
 625 039e 0025     		movs	r5, #0
 626 03a0 C0E6     		b	.L47
 627              	.L125:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 12


 628 03a2 0820     		movs	r0, #8
 629 03a4 A689     		ldrh	r6, [r4, #12]	@ unaligned
 630 03a6 FFF7FEFF 		bl	lwip_htons
 631 03aa 2B46     		mov	r3, r5
 632 03ac 3043     		orrs	r0, r0, r6
 633 03ae A081     		strh	r0, [r4, #12]	@ unaligned
 634 03b0 58B2     		sxtb	r0, r3
 635 03b2 11B0     		add	sp, sp, #68
 636              		@ sp needed
 637 03b4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 638              	.L66:
 639 03b8 002E     		cmp	r6, #0
 640 03ba 7FF4EAAE 		bne	.L67
 641 03be E566     		str	r5, [r4, #108]
 642 03c0 E8E6     		b	.L68
 643              	.L51:
 644 03c2 0320     		movs	r0, #3
 645 03c4 2946     		mov	r1, r5
 646 03c6 0122     		movs	r2, #1
 647 03c8 FFF7FEFF 		bl	pbuf_alloc
 648 03cc 8146     		mov	r9, r0
 649 03ce 0028     		cmp	r0, #0
 650 03d0 BFD0     		beq	.L52
 651 03d2 089B     		ldr	r3, [sp, #32]
 652 03d4 4344     		add	r3, r3, r8
 653 03d6 4360     		str	r3, [r0, #4]
 654 03d8 8AE6     		b	.L53
 655              	.L133:
 656 03da 00BF     		.align	2
 657              	.L132:
 658 03dc 00000000 		.word	lwip_stats
 659 03e0 00000000 		.word	.LC0
 660 03e4 28000000 		.word	.LC1
 661 03e8 5C000000 		.word	.LC2
 662              		.size	tcp_write, .-tcp_write
 663              		.section	.text.tcp_enqueue_flags,"ax",%progbits
 664              		.align	2
 665              		.global	tcp_enqueue_flags
 666              		.thumb
 667              		.thumb_func
 668              		.type	tcp_enqueue_flags, %function
 669              	tcp_enqueue_flags:
 670              		@ args = 0, pretend = 0, frame = 0
 671              		@ frame_needed = 0, uses_anonymous_args = 0
 672 0000 70B5     		push	{r4, r5, r6, lr}
 673 0002 B0F86830 		ldrh	r3, [r0, #104]
 674 0006 82B0     		sub	sp, sp, #8
 675 0008 052B     		cmp	r3, #5
 676 000a 0546     		mov	r5, r0
 677 000c 0E46     		mov	r6, r1
 678 000e 51D8     		bhi	.L155
 679 0010 01F00203 		and	r3, r1, #2
 680 0014 03F0FF04 		and	r4, r3, #255
 681 0018 002B     		cmp	r3, #0
 682 001a 3ED1     		bne	.L156
 683 001c 2146     		mov	r1, r4
 684              	.L137:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 13


 685 001e B5F86630 		ldrh	r3, [r5, #102]
 686 0022 002B     		cmp	r3, #0
 687 0024 3ED0     		beq	.L157
 688 0026 0020     		movs	r0, #0
 689 0028 0246     		mov	r2, r0
 690 002a FFF7FEFF 		bl	pbuf_alloc
 691 002e 0028     		cmp	r0, #0
 692 0030 4CD0     		beq	.L154
 693 0032 EB6D     		ldr	r3, [r5, #92]
 694 0034 0246     		mov	r2, r0
 695 0036 0093     		str	r3, [sp]
 696 0038 0194     		str	r4, [sp, #4]
 697 003a 05F11A00 		add	r0, r5, #26
 698 003e 05F11C01 		add	r1, r5, #28
 699 0042 3346     		mov	r3, r6
 700 0044 FFF7FEFF 		bl	tcp_create_segment.isra.0
 701 0048 0028     		cmp	r0, #0
 702 004a 3FD0     		beq	.L154
 703 004c EC6E     		ldr	r4, [r5, #108]
 704 004e 0CB9     		cbnz	r4, .L144
 705 0050 26E0     		b	.L160
 706              	.L159:
 707 0052 1446     		mov	r4, r2
 708              	.L144:
 709 0054 2268     		ldr	r2, [r4]
 710 0056 002A     		cmp	r2, #0
 711 0058 FBD1     		bne	.L159
 712 005a 2060     		str	r0, [r4]
 713              	.L142:
 714 005c 0023     		movs	r3, #0
 715 005e B207     		lsls	r2, r6, #30
 716 0060 A5F86A30 		strh	r3, [r5, #106]	@ movhi
 717 0064 07D0     		beq	.L145
 718 0066 EB6D     		ldr	r3, [r5, #92]
 719 0068 B5F86620 		ldrh	r2, [r5, #102]
 720 006c 0133     		adds	r3, r3, #1
 721 006e 013A     		subs	r2, r2, #1
 722 0070 EB65     		str	r3, [r5, #92]
 723 0072 A5F86620 		strh	r2, [r5, #102]	@ movhi
 724              	.L145:
 725 0076 F307     		lsls	r3, r6, #31
 726 0078 03D5     		bpl	.L146
 727 007a AB7F     		ldrb	r3, [r5, #30]	@ zero_extendqisi2
 728 007c 43F02003 		orr	r3, r3, #32
 729 0080 AB77     		strb	r3, [r5, #30]
 730              	.L146:
 731 0082 4068     		ldr	r0, [r0, #4]
 732 0084 B5F86840 		ldrh	r4, [r5, #104]
 733 0088 FFF7FEFF 		bl	pbuf_clen
 734 008c 2044     		add	r0, r0, r4
 735 008e A5F86800 		strh	r0, [r5, #104]	@ movhi
 736 0092 0020     		movs	r0, #0
 737              	.L136:
 738 0094 40B2     		sxtb	r0, r0
 739 0096 02B0     		add	sp, sp, #8
 740              		@ sp needed
 741 0098 70BD     		pop	{r4, r5, r6, pc}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 14


 742              	.L156:
 743 009a 0124     		movs	r4, #1
 744 009c 0421     		movs	r1, #4
 745 009e BEE7     		b	.L137
 746              	.L160:
 747 00a0 E866     		str	r0, [r5, #108]
 748 00a2 DBE7     		b	.L142
 749              	.L157:
 750 00a4 0F4B     		ldr	r3, .L161
 751 00a6 FF20     		movs	r0, #255
 752 00a8 B3F8B820 		ldrh	r2, [r3, #184]
 753 00ac 0132     		adds	r2, r2, #1
 754 00ae A3F8B820 		strh	r2, [r3, #184]	@ movhi
 755 00b2 EFE7     		b	.L136
 756              	.L155:
 757 00b4 0B4B     		ldr	r3, .L161
 758 00b6 FF20     		movs	r0, #255
 759 00b8 B3F8B820 		ldrh	r2, [r3, #184]
 760 00bc 0132     		adds	r2, r2, #1
 761 00be A3F8B820 		strh	r2, [r3, #184]	@ movhi
 762 00c2 AB7F     		ldrb	r3, [r5, #30]	@ zero_extendqisi2
 763 00c4 63F07F03 		orn	r3, r3, #127
 764 00c8 AB77     		strb	r3, [r5, #30]
 765 00ca E3E7     		b	.L136
 766              	.L154:
 767 00cc AA7F     		ldrb	r2, [r5, #30]	@ zero_extendqisi2
 768 00ce 054B     		ldr	r3, .L161
 769 00d0 62F07F02 		orn	r2, r2, #127
 770 00d4 AA77     		strb	r2, [r5, #30]
 771 00d6 B3F8B820 		ldrh	r2, [r3, #184]
 772 00da FF20     		movs	r0, #255
 773 00dc 0132     		adds	r2, r2, #1
 774 00de A3F8B820 		strh	r2, [r3, #184]	@ movhi
 775 00e2 D7E7     		b	.L136
 776              	.L162:
 777              		.align	2
 778              	.L161:
 779 00e4 00000000 		.word	lwip_stats
 780              		.size	tcp_enqueue_flags, .-tcp_enqueue_flags
 781              		.section	.text.tcp_send_fin,"ax",%progbits
 782              		.align	2
 783              		.global	tcp_send_fin
 784              		.thumb
 785              		.thumb_func
 786              		.type	tcp_send_fin, %function
 787              	tcp_send_fin:
 788              		@ args = 0, pretend = 0, frame = 0
 789              		@ frame_needed = 0, uses_anonymous_args = 0
 790 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 791 0002 C46E     		ldr	r4, [r0, #108]
 792 0004 0546     		mov	r5, r0
 793 0006 0CB9     		cbnz	r4, .L166
 794 0008 0AE0     		b	.L164
 795              	.L173:
 796 000a 1C46     		mov	r4, r3
 797              	.L166:
 798 000c 2368     		ldr	r3, [r4]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 15


 799 000e 002B     		cmp	r3, #0
 800 0010 FBD1     		bne	.L173
 801 0012 E368     		ldr	r3, [r4, #12]
 802 0014 9889     		ldrh	r0, [r3, #12]	@ unaligned
 803 0016 FFF7FEFF 		bl	lwip_ntohs
 804 001a 10F00706 		ands	r6, r0, #7
 805 001e 05D0     		beq	.L172
 806              	.L164:
 807 0020 2846     		mov	r0, r5
 808 0022 0121     		movs	r1, #1
 809 0024 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 810 0028 FFF7FEBF 		b	tcp_enqueue_flags
 811              	.L172:
 812 002c E468     		ldr	r4, [r4, #12]
 813 002e 0120     		movs	r0, #1
 814 0030 A789     		ldrh	r7, [r4, #12]	@ unaligned
 815 0032 FFF7FEFF 		bl	lwip_htons
 816 0036 3843     		orrs	r0, r0, r7
 817 0038 A081     		strh	r0, [r4, #12]	@ unaligned
 818 003a AB7F     		ldrb	r3, [r5, #30]	@ zero_extendqisi2
 819 003c 3046     		mov	r0, r6
 820 003e 43F02003 		orr	r3, r3, #32
 821 0042 AB77     		strb	r3, [r5, #30]
 822 0044 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 823              		.size	tcp_send_fin, .-tcp_send_fin
 824 0046 00BF     		.section	.text.tcp_send_empty_ack,"ax",%progbits
 825              		.align	2
 826              		.global	tcp_send_empty_ack
 827              		.thumb
 828              		.thumb_func
 829              		.type	tcp_send_empty_ack, %function
 830              	tcp_send_empty_ack:
 831              		@ args = 0, pretend = 0, frame = 0
 832              		@ frame_needed = 0, uses_anonymous_args = 0
 833 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 834 0002 0446     		mov	r4, r0
 835 0004 83B0     		sub	sp, sp, #12
 836 0006 006D     		ldr	r0, [r0, #80]
 837 0008 FFF7FEFF 		bl	lwip_htonl
 838 000c 0021     		movs	r1, #0
 839 000e 0246     		mov	r2, r0
 840 0010 2046     		mov	r0, r4
 841 0012 FFF7FEFF 		bl	tcp_output_alloc_header.constprop.1
 842 0016 0546     		mov	r5, r0
 843 0018 F0B1     		cbz	r0, .L176
 844 001a A37F     		ldrb	r3, [r4, #30]	@ zero_extendqisi2
 845 001c 4768     		ldr	r7, [r0, #4]
 846 001e 23F00303 		bic	r3, r3, #3
 847 0022 A377     		strb	r3, [r4, #30]
 848 0024 0389     		ldrh	r3, [r0, #8]
 849 0026 261D     		adds	r6, r4, #4
 850 0028 0093     		str	r3, [sp]
 851 002a 3246     		mov	r2, r6
 852 002c 2146     		mov	r1, r4
 853 002e 0623     		movs	r3, #6
 854 0030 FFF7FEFF 		bl	inet_chksum_pseudo
 855 0034 3882     		strh	r0, [r7, #16]	@ unaligned
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 16


 856 0036 617A     		ldrb	r1, [r4, #9]	@ zero_extendqisi2
 857 0038 0620     		movs	r0, #6
 858 003a A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 859 003c 3246     		mov	r2, r6
 860 003e 0091     		str	r1, [sp]
 861 0040 0190     		str	r0, [sp, #4]
 862 0042 2146     		mov	r1, r4
 863 0044 2846     		mov	r0, r5
 864 0046 FFF7FEFF 		bl	ip_output
 865 004a 2846     		mov	r0, r5
 866 004c FFF7FEFF 		bl	pbuf_free
 867 0050 0020     		movs	r0, #0
 868              	.L175:
 869 0052 40B2     		sxtb	r0, r0
 870 0054 03B0     		add	sp, sp, #12
 871              		@ sp needed
 872 0056 F0BD     		pop	{r4, r5, r6, r7, pc}
 873              	.L176:
 874 0058 FE20     		movs	r0, #254
 875 005a FAE7     		b	.L175
 876              		.size	tcp_send_empty_ack, .-tcp_send_empty_ack
 877              		.section	.text.tcp_output,"ax",%progbits
 878              		.align	2
 879              		.global	tcp_output
 880              		.thumb
 881              		.thumb_func
 882              		.type	tcp_output, %function
 883              	tcp_output:
 884              		@ args = 0, pretend = 0, frame = 0
 885              		@ frame_needed = 0, uses_anonymous_args = 0
 886 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 887 0004 AB4B     		ldr	r3, .L250
 888 0006 83B0     		sub	sp, sp, #12
 889 0008 1B68     		ldr	r3, [r3]
 890 000a 0446     		mov	r4, r0
 891 000c 8342     		cmp	r3, r0
 892 000e 00F0FD80 		beq	.L231
 893 0012 B0F84C20 		ldrh	r2, [r0, #76]
 894 0016 B0F86080 		ldrh	r8, [r0, #96]
 895 001a 837F     		ldrb	r3, [r0, #30]	@ zero_extendqisi2
 896 001c 9045     		cmp	r8, r2
 897 001e 28BF     		it	cs
 898 0020 9046     		movcs	r8, r2
 899 0022 9A07     		lsls	r2, r3, #30
 900 0024 C56E     		ldr	r5, [r0, #108]
 901 0026 00F13081 		bmi	.L243
 902              	.L179:
 903 002a 266F     		ldr	r6, [r4, #112]
 904 002c 0EB9     		cbnz	r6, .L187
 905 002e 03E0     		b	.L186
 906              	.L244:
 907 0030 1E46     		mov	r6, r3
 908              	.L187:
 909 0032 3368     		ldr	r3, [r6]
 910 0034 002B     		cmp	r3, #0
 911 0036 FBD1     		bne	.L244
 912              	.L186:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 17


 913 0038 002D     		cmp	r5, #0
 914 003a 00F03881 		beq	.L242
 915 003e 9E4F     		ldr	r7, .L250+4
 916 0040 DFF87892 		ldr	r9, .L250+8
 917 0044 7CE0     		b	.L185
 918              	.L193:
 919 0046 B4F93430 		ldrsh	r3, [r4, #52]
 920 004a 0133     		adds	r3, r3, #1
 921 004c 04BF     		itt	eq
 922 004e 0023     		moveq	r3, #0
 923 0050 A386     		strheq	r3, [r4, #52]	@ movhi
 924 0052 2368     		ldr	r3, [r4]
 925 0054 33B9     		cbnz	r3, .L195
 926 0056 5046     		mov	r0, r10
 927 0058 FFF7FEFF 		bl	ip_route
 928 005c 0028     		cmp	r0, #0
 929 005e 33D0     		beq	.L196
 930 0060 4368     		ldr	r3, [r0, #4]
 931 0062 2360     		str	r3, [r4]
 932              	.L195:
 933 0064 A36B     		ldr	r3, [r4, #56]
 934 0066 002B     		cmp	r3, #0
 935 0068 00F0BB80 		beq	.L245
 936              	.L197:
 937 006c 6868     		ldr	r0, [r5, #4]
 938 006e D5F80CB0 		ldr	fp, [r5, #12]
 939 0072 4268     		ldr	r2, [r0, #4]
 940 0074 0389     		ldrh	r3, [r0, #8]
 941 0076 C2EB0B02 		rsb	r2, r2, fp
 942 007a 4189     		ldrh	r1, [r0, #10]
 943 007c 92B2     		uxth	r2, r2
 944 007e 9B1A     		subs	r3, r3, r2
 945 0080 891A     		subs	r1, r1, r2
 946 0082 9BB2     		uxth	r3, r3
 947 0084 0022     		movs	r2, #0
 948 0086 4181     		strh	r1, [r0, #10]	@ movhi
 949 0088 0381     		strh	r3, [r0, #8]	@ movhi
 950 008a C0F804B0 		str	fp, [r0, #4]
 951 008e 2146     		mov	r1, r4
 952 0090 8BF81020 		strb	r2, [fp, #16]
 953 0094 8BF81120 		strb	r2, [fp, #17]
 954 0098 0093     		str	r3, [sp]
 955 009a 5246     		mov	r2, r10
 956 009c 0623     		movs	r3, #6
 957 009e FFF7FEFF 		bl	inet_chksum_pseudo
 958 00a2 B7F8AC30 		ldrh	r3, [r7, #172]
 959 00a6 ABF81000 		strh	r0, [fp, #16]	@ unaligned
 960 00aa 0133     		adds	r3, r3, #1
 961 00ac A7F8AC30 		strh	r3, [r7, #172]	@ movhi
 962 00b0 94F809E0 		ldrb	lr, [r4, #9]	@ zero_extendqisi2
 963 00b4 0621     		movs	r1, #6
 964 00b6 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 965 00b8 6868     		ldr	r0, [r5, #4]
 966 00ba 5246     		mov	r2, r10
 967 00bc 0191     		str	r1, [sp, #4]
 968 00be CDF800E0 		str	lr, [sp]
 969 00c2 2146     		mov	r1, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 18


 970 00c4 FFF7FEFF 		bl	ip_output
 971              	.L196:
 972 00c8 EB68     		ldr	r3, [r5, #12]
 973 00ca 5868     		ldr	r0, [r3, #4]	@ unaligned
 974 00cc FFF7FEFF 		bl	lwip_ntohl
 975 00d0 EA68     		ldr	r2, [r5, #12]
 976 00d2 8246     		mov	r10, r0
 977 00d4 9089     		ldrh	r0, [r2, #12]	@ unaligned
 978 00d6 B5F808B0 		ldrh	fp, [r5, #8]
 979 00da FFF7FEFF 		bl	lwip_ntohs
 980 00de 10F00300 		ands	r0, r0, #3
 981 00e2 18BF     		it	ne
 982 00e4 0120     		movne	r0, #1
 983 00e6 226D     		ldr	r2, [r4, #80]
 984 00e8 0BEB0003 		add	r3, fp, r0
 985 00ec 5344     		add	r3, r3, r10
 986 00ee D21A     		subs	r2, r2, r3
 987 00f0 002A     		cmp	r2, #0
 988 00f2 B8BF     		it	lt
 989 00f4 2365     		strlt	r3, [r4, #80]
 990 00f6 EB68     		ldr	r3, [r5, #12]
 991 00f8 B5F808A0 		ldrh	r10, [r5, #8]
 992 00fc 9889     		ldrh	r0, [r3, #12]	@ unaligned
 993 00fe FFF7FEFF 		bl	lwip_ntohs
 994 0102 10F00300 		ands	r0, r0, #3
 995 0106 18BF     		it	ne
 996 0108 0120     		movne	r0, #1
 997 010a 5044     		add	r0, r0, r10
 998 010c 0028     		cmp	r0, #0
 999 010e 00F09E80 		beq	.L199
 1000 0112 236F     		ldr	r3, [r4, #112]
 1001 0114 0022     		movs	r2, #0
 1002 0116 2A60     		str	r2, [r5]
 1003 0118 002B     		cmp	r3, #0
 1004 011a 6BD0     		beq	.L246
 1005 011c EB68     		ldr	r3, [r5, #12]
 1006 011e 5868     		ldr	r0, [r3, #4]	@ unaligned
 1007 0120 FFF7FEFF 		bl	lwip_ntohl
 1008 0124 F368     		ldr	r3, [r6, #12]
 1009 0126 8246     		mov	r10, r0
 1010 0128 5868     		ldr	r0, [r3, #4]	@ unaligned
 1011 012a FFF7FEFF 		bl	lwip_ntohl
 1012 012e C0EB0A00 		rsb	r0, r0, r10
 1013 0132 0028     		cmp	r0, #0
 1014 0134 6EDB     		blt	.L247
 1015 0136 3560     		str	r5, [r6]
 1016 0138 2E46     		mov	r6, r5
 1017              	.L201:
 1018 013a E56E     		ldr	r5, [r4, #108]
 1019 013c 002D     		cmp	r5, #0
 1020 013e 5ED0     		beq	.L248
 1021              	.L185:
 1022 0140 EB68     		ldr	r3, [r5, #12]
 1023 0142 5868     		ldr	r0, [r3, #4]	@ unaligned
 1024 0144 FFF7FEFF 		bl	lwip_ntohl
 1025 0148 2A89     		ldrh	r2, [r5, #8]
 1026 014a A36C     		ldr	r3, [r4, #72]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 19


 1027 014c D31A     		subs	r3, r2, r3
 1028 014e 1844     		add	r0, r0, r3
 1029 0150 8045     		cmp	r8, r0
 1030 0152 C0F0AC80 		bcc	.L242
 1031 0156 236F     		ldr	r3, [r4, #112]
 1032 0158 4BB1     		cbz	r3, .L188
 1033 015a A37F     		ldrb	r3, [r4, #30]	@ zero_extendqisi2
 1034 015c 13F0440F 		tst	r3, #68
 1035 0160 05D1     		bne	.L188
 1036 0162 E26E     		ldr	r2, [r4, #108]
 1037 0164 002A     		cmp	r2, #0
 1038 0166 7AD0     		beq	.L189
 1039 0168 1168     		ldr	r1, [r2]
 1040 016a 0029     		cmp	r1, #0
 1041 016c 73D0     		beq	.L249
 1042              	.L188:
 1043 016e 227E     		ldrb	r2, [r4, #24]	@ zero_extendqisi2
 1044 0170 2B68     		ldr	r3, [r5]
 1045 0172 022A     		cmp	r2, #2
 1046 0174 E366     		str	r3, [r4, #108]
 1047 0176 0ED0     		beq	.L191
 1048 0178 D5F80CA0 		ldr	r10, [r5, #12]
 1049 017c 1020     		movs	r0, #16
 1050 017e BAF80CB0 		ldrh	fp, [r10, #12]	@ unaligned
 1051 0182 FFF7FEFF 		bl	lwip_htons
 1052 0186 40EA0B00 		orr	r0, r0, fp
 1053 018a AAF80C00 		strh	r0, [r10, #12]	@ unaligned
 1054 018e A37F     		ldrb	r3, [r4, #30]	@ zero_extendqisi2
 1055 0190 23F00303 		bic	r3, r3, #3
 1056 0194 A377     		strb	r3, [r4, #30]
 1057              	.L191:
 1058 0196 A06A     		ldr	r0, [r4, #40]
 1059 0198 D5F80CA0 		ldr	r10, [r5, #12]
 1060 019c FFF7FEFF 		bl	lwip_htonl
 1061 01a0 CAF80800 		str	r0, [r10, #8]	@ unaligned
 1062 01a4 E08D     		ldrh	r0, [r4, #46]
 1063 01a6 D5F80CA0 		ldr	r10, [r5, #12]
 1064 01aa FFF7FEFF 		bl	lwip_htons
 1065 01ae E28D     		ldrh	r2, [r4, #46]
 1066 01b0 A36A     		ldr	r3, [r4, #40]
 1067 01b2 AAF80E00 		strh	r0, [r10, #14]	@ unaligned
 1068 01b6 1344     		add	r3, r3, r2
 1069 01b8 2363     		str	r3, [r4, #48]
 1070 01ba AB7A     		ldrb	r3, [r5, #10]	@ zero_extendqisi2
 1071 01bc D5F80CB0 		ldr	fp, [r5, #12]
 1072 01c0 DB07     		lsls	r3, r3, #31
 1073 01c2 04F1040A 		add	r10, r4, #4
 1074 01c6 7FF53EAF 		bpl	.L193
 1075 01ca 5146     		mov	r1, r10
 1076 01cc 40F2B450 		movw	r0, #1460
 1077 01d0 FFF7FEFF 		bl	tcp_eff_send_mss
 1078 01d4 40F00170 		orr	r0, r0, #33816576
 1079 01d8 FFF7FEFF 		bl	lwip_htonl
 1080 01dc CBF81400 		str	r0, [fp, #20]
 1081 01e0 31E7     		b	.L193
 1082              	.L245:
 1083 01e2 D9F80030 		ldr	r3, [r9]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 20


 1084 01e6 EA68     		ldr	r2, [r5, #12]
 1085 01e8 A363     		str	r3, [r4, #56]
 1086 01ea 5068     		ldr	r0, [r2, #4]	@ unaligned
 1087 01ec FFF7FEFF 		bl	lwip_ntohl
 1088 01f0 E063     		str	r0, [r4, #60]
 1089 01f2 3BE7     		b	.L197
 1090              	.L246:
 1091 01f4 2567     		str	r5, [r4, #112]
 1092 01f6 2E46     		mov	r6, r5
 1093 01f8 E56E     		ldr	r5, [r4, #108]
 1094 01fa 002D     		cmp	r5, #0
 1095 01fc A0D1     		bne	.L185
 1096              	.L248:
 1097 01fe A37F     		ldrb	r3, [r4, #30]	@ zero_extendqisi2
 1098              	.L207:
 1099 0200 0022     		movs	r2, #0
 1100 0202 03F07F03 		and	r3, r3, #127
 1101 0206 A4F86A20 		strh	r2, [r4, #106]	@ movhi
 1102 020a A377     		strb	r3, [r4, #30]
 1103              	.L231:
 1104 020c 0020     		movs	r0, #0
 1105 020e 03B0     		add	sp, sp, #12
 1106              		@ sp needed
 1107 0210 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1108              	.L247:
 1109 0214 236F     		ldr	r3, [r4, #112]
 1110 0216 04F1700A 		add	r10, r4, #112
 1111 021a 2BB9     		cbnz	r3, .L204
 1112 021c 13E0     		b	.L203
 1113              	.L205:
 1114 021e DAF800A0 		ldr	r10, [r10]
 1115 0222 DAF80030 		ldr	r3, [r10]
 1116 0226 73B1     		cbz	r3, .L203
 1117              	.L204:
 1118 0228 DB68     		ldr	r3, [r3, #12]
 1119 022a 5868     		ldr	r0, [r3, #4]	@ unaligned
 1120 022c FFF7FEFF 		bl	lwip_ntohl
 1121 0230 EB68     		ldr	r3, [r5, #12]
 1122 0232 8346     		mov	fp, r0
 1123 0234 5868     		ldr	r0, [r3, #4]	@ unaligned
 1124 0236 FFF7FEFF 		bl	lwip_ntohl
 1125 023a C0EB0B00 		rsb	r0, r0, fp
 1126 023e 0028     		cmp	r0, #0
 1127 0240 EDDB     		blt	.L205
 1128 0242 DAF80030 		ldr	r3, [r10]
 1129              	.L203:
 1130 0246 2B60     		str	r3, [r5]
 1131 0248 CAF80050 		str	r5, [r10]
 1132 024c 75E7     		b	.L201
 1133              	.L199:
 1134 024e 2846     		mov	r0, r5
 1135 0250 FFF7FEFF 		bl	tcp_seg_free
 1136 0254 71E7     		b	.L201
 1137              	.L249:
 1138 0256 1089     		ldrh	r0, [r2, #8]
 1139 0258 E18E     		ldrh	r1, [r4, #54]
 1140 025a 8842     		cmp	r0, r1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 21


 1141 025c 87D2     		bcs	.L188
 1142              	.L189:
 1143 025e B4F86610 		ldrh	r1, [r4, #102]
 1144 0262 0029     		cmp	r1, #0
 1145 0264 83D0     		beq	.L188
 1146 0266 B4F86810 		ldrh	r1, [r4, #104]
 1147 026a 0529     		cmp	r1, #5
 1148 026c 3FF67FAF 		bhi	.L188
 1149 0270 13F0A00F 		tst	r3, #160
 1150 0274 7FF47BAF 		bne	.L188
 1151              	.L184:
 1152 0278 002A     		cmp	r2, #0
 1153 027a C1D0     		beq	.L207
 1154 027c 03F07F03 		and	r3, r3, #127
 1155 0280 0020     		movs	r0, #0
 1156 0282 A377     		strb	r3, [r4, #30]
 1157 0284 03B0     		add	sp, sp, #12
 1158              		@ sp needed
 1159 0286 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1160              	.L243:
 1161 028a 55B1     		cbz	r5, .L181
 1162 028c EB68     		ldr	r3, [r5, #12]
 1163 028e 5868     		ldr	r0, [r3, #4]	@ unaligned
 1164 0290 FFF7FEFF 		bl	lwip_ntohl
 1165 0294 2A89     		ldrh	r2, [r5, #8]
 1166 0296 A36C     		ldr	r3, [r4, #72]
 1167 0298 D31A     		subs	r3, r2, r3
 1168 029a 1844     		add	r0, r0, r3
 1169 029c 8045     		cmp	r8, r0
 1170 029e BFF4C4AE 		bcs	.L179
 1171              	.L181:
 1172 02a2 2046     		mov	r0, r4
 1173 02a4 03B0     		add	sp, sp, #12
 1174              		@ sp needed
 1175 02a6 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1176 02aa FFF7FEBF 		b	tcp_send_empty_ack
 1177              	.L242:
 1178 02ae E26E     		ldr	r2, [r4, #108]
 1179 02b0 A37F     		ldrb	r3, [r4, #30]	@ zero_extendqisi2
 1180 02b2 E1E7     		b	.L184
 1181              	.L251:
 1182              		.align	2
 1183              	.L250:
 1184 02b4 00000000 		.word	tcp_input_pcb
 1185 02b8 00000000 		.word	lwip_stats
 1186 02bc 00000000 		.word	tcp_ticks
 1187              		.size	tcp_output, .-tcp_output
 1188              		.section	.text.tcp_rst,"ax",%progbits
 1189              		.align	2
 1190              		.global	tcp_rst
 1191              		.thumb
 1192              		.thumb_func
 1193              		.type	tcp_rst, %function
 1194              	tcp_rst:
 1195              		@ args = 8, pretend = 0, frame = 0
 1196              		@ frame_needed = 0, uses_anonymous_args = 0
 1197 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 22


 1198 0004 8146     		mov	r9, r0
 1199 0006 82B0     		sub	sp, sp, #8
 1200 0008 0E46     		mov	r6, r1
 1201 000a 9046     		mov	r8, r2
 1202 000c 0120     		movs	r0, #1
 1203 000e 1421     		movs	r1, #20
 1204 0010 0022     		movs	r2, #0
 1205 0012 1F46     		mov	r7, r3
 1206 0014 BDF82840 		ldrh	r4, [sp, #40]
 1207 0018 BDF82CA0 		ldrh	r10, [sp, #44]
 1208 001c FFF7FEFF 		bl	pbuf_alloc
 1209 0020 0546     		mov	r5, r0
 1210 0022 0028     		cmp	r0, #0
 1211 0024 3ED0     		beq	.L252
 1212 0026 2046     		mov	r0, r4
 1213 0028 6C68     		ldr	r4, [r5, #4]
 1214 002a FFF7FEFF 		bl	lwip_htons
 1215 002e 2080     		strh	r0, [r4]	@ unaligned
 1216 0030 5046     		mov	r0, r10
 1217 0032 FFF7FEFF 		bl	lwip_htons
 1218 0036 6080     		strh	r0, [r4, #2]	@ unaligned
 1219 0038 4846     		mov	r0, r9
 1220 003a FFF7FEFF 		bl	lwip_htonl
 1221 003e 6060     		str	r0, [r4, #4]	@ unaligned
 1222 0040 3046     		mov	r0, r6
 1223 0042 FFF7FEFF 		bl	lwip_htonl
 1224 0046 A060     		str	r0, [r4, #8]	@ unaligned
 1225 0048 45F21400 		movw	r0, #20500
 1226 004c FFF7FEFF 		bl	lwip_htons
 1227 0050 2B89     		ldrh	r3, [r5, #8]
 1228 0052 0026     		movs	r6, #0
 1229 0054 0B21     		movs	r1, #11
 1230 0056 6822     		movs	r2, #104
 1231 0058 A081     		strh	r0, [r4, #12]	@ unaligned
 1232 005a A173     		strb	r1, [r4, #14]
 1233 005c E273     		strb	r2, [r4, #15]
 1234 005e 2674     		strb	r6, [r4, #16]
 1235 0060 6674     		strb	r6, [r4, #17]
 1236 0062 A674     		strb	r6, [r4, #18]
 1237 0064 E674     		strb	r6, [r4, #19]
 1238 0066 4146     		mov	r1, r8
 1239 0068 0093     		str	r3, [sp]
 1240 006a 3A46     		mov	r2, r7
 1241 006c 2846     		mov	r0, r5
 1242 006e 0623     		movs	r3, #6
 1243 0070 FFF7FEFF 		bl	inet_chksum_pseudo
 1244 0074 DFF834E0 		ldr	lr, .L254
 1245 0078 0623     		movs	r3, #6
 1246 007a BEF8ACC0 		ldrh	ip, [lr, #172]
 1247 007e 2082     		strh	r0, [r4, #16]	@ unaligned
 1248 0080 0CF10104 		add	r4, ip, #1
 1249 0084 0193     		str	r3, [sp, #4]
 1250 0086 0096     		str	r6, [sp]
 1251 0088 4146     		mov	r1, r8
 1252 008a 3A46     		mov	r2, r7
 1253 008c 2846     		mov	r0, r5
 1254 008e FF23     		movs	r3, #255
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 23


 1255 0090 AEF8AC40 		strh	r4, [lr, #172]	@ movhi
 1256 0094 FFF7FEFF 		bl	ip_output
 1257 0098 2846     		mov	r0, r5
 1258 009a 02B0     		add	sp, sp, #8
 1259              		@ sp needed
 1260 009c BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 1261 00a0 FFF7FEBF 		b	pbuf_free
 1262              	.L252:
 1263 00a4 02B0     		add	sp, sp, #8
 1264              		@ sp needed
 1265 00a6 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1266              	.L255:
 1267 00aa 00BF     		.align	2
 1268              	.L254:
 1269 00ac 00000000 		.word	lwip_stats
 1270              		.size	tcp_rst, .-tcp_rst
 1271              		.section	.text.tcp_rexmit_rto,"ax",%progbits
 1272              		.align	2
 1273              		.global	tcp_rexmit_rto
 1274              		.thumb
 1275              		.thumb_func
 1276              		.type	tcp_rexmit_rto, %function
 1277              	tcp_rexmit_rto:
 1278              		@ args = 0, pretend = 0, frame = 0
 1279              		@ frame_needed = 0, uses_anonymous_args = 0
 1280              		@ link register save eliminated.
 1281 0000 30B4     		push	{r4, r5}
 1282 0002 046F     		ldr	r4, [r0, #112]
 1283 0004 0146     		mov	r1, r0
 1284 0006 9CB1     		cbz	r4, .L256
 1285 0008 2246     		mov	r2, r4
 1286 000a 00E0     		b	.L259
 1287              	.L260:
 1288 000c 1A46     		mov	r2, r3
 1289              	.L259:
 1290 000e 1368     		ldr	r3, [r2]
 1291 0010 002B     		cmp	r3, #0
 1292 0012 FBD1     		bne	.L260
 1293 0014 CD6E     		ldr	r5, [r1, #108]
 1294 0016 0846     		mov	r0, r1
 1295 0018 1560     		str	r5, [r2]
 1296 001a 91F84620 		ldrb	r2, [r1, #70]	@ zero_extendqisi2
 1297 001e CC66     		str	r4, [r1, #108]
 1298 0020 0132     		adds	r2, r2, #1
 1299 0022 81F84620 		strb	r2, [r1, #70]
 1300 0026 0B67     		str	r3, [r1, #112]
 1301 0028 8B63     		str	r3, [r1, #56]
 1302 002a 30BC     		pop	{r4, r5}
 1303 002c FFF7FEBF 		b	tcp_output
 1304              	.L256:
 1305 0030 30BC     		pop	{r4, r5}
 1306 0032 7047     		bx	lr
 1307              		.size	tcp_rexmit_rto, .-tcp_rexmit_rto
 1308              		.section	.text.tcp_rexmit,"ax",%progbits
 1309              		.align	2
 1310              		.global	tcp_rexmit
 1311              		.thumb
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 24


 1312              		.thumb_func
 1313              		.type	tcp_rexmit, %function
 1314              	tcp_rexmit:
 1315              		@ args = 0, pretend = 0, frame = 0
 1316              		@ frame_needed = 0, uses_anonymous_args = 0
 1317 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1318 0002 066F     		ldr	r6, [r0, #112]
 1319 0004 0746     		mov	r7, r0
 1320 0006 0EB3     		cbz	r6, .L261
 1321 0008 3268     		ldr	r2, [r6]
 1322 000a C36E     		ldr	r3, [r0, #108]
 1323 000c 0267     		str	r2, [r0, #112]
 1324 000e 00F16C04 		add	r4, r0, #108
 1325 0012 1BB9     		cbnz	r3, .L264
 1326 0014 0FE0     		b	.L263
 1327              	.L265:
 1328 0016 2468     		ldr	r4, [r4]
 1329 0018 2368     		ldr	r3, [r4]
 1330 001a 63B1     		cbz	r3, .L263
 1331              	.L264:
 1332 001c DB68     		ldr	r3, [r3, #12]
 1333 001e 5868     		ldr	r0, [r3, #4]	@ unaligned
 1334 0020 FFF7FEFF 		bl	lwip_ntohl
 1335 0024 F368     		ldr	r3, [r6, #12]
 1336 0026 0546     		mov	r5, r0
 1337 0028 5868     		ldr	r0, [r3, #4]	@ unaligned
 1338 002a FFF7FEFF 		bl	lwip_ntohl
 1339 002e 281A     		subs	r0, r5, r0
 1340 0030 0028     		cmp	r0, #0
 1341 0032 F0DB     		blt	.L265
 1342 0034 2368     		ldr	r3, [r4]
 1343              	.L263:
 1344 0036 3360     		str	r3, [r6]
 1345 0038 2660     		str	r6, [r4]
 1346 003a 3368     		ldr	r3, [r6]
 1347 003c 3BB1     		cbz	r3, .L276
 1348              	.L266:
 1349 003e 97F84620 		ldrb	r2, [r7, #70]	@ zero_extendqisi2
 1350 0042 0023     		movs	r3, #0
 1351 0044 0132     		adds	r2, r2, #1
 1352 0046 87F84620 		strb	r2, [r7, #70]
 1353 004a BB63     		str	r3, [r7, #56]
 1354              	.L261:
 1355 004c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1356              	.L276:
 1357 004e A7F86A30 		strh	r3, [r7, #106]	@ movhi
 1358 0052 F4E7     		b	.L266
 1359              		.size	tcp_rexmit, .-tcp_rexmit
 1360              		.section	.text.tcp_rexmit_fast,"ax",%progbits
 1361              		.align	2
 1362              		.global	tcp_rexmit_fast
 1363              		.thumb
 1364              		.thumb_func
 1365              		.type	tcp_rexmit_fast, %function
 1366              	tcp_rexmit_fast:
 1367              		@ args = 0, pretend = 0, frame = 0
 1368              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 25


 1369 0000 036F     		ldr	r3, [r0, #112]
 1370 0002 10B5     		push	{r4, lr}
 1371 0004 0446     		mov	r4, r0
 1372 0006 F3B1     		cbz	r3, .L277
 1373 0008 837F     		ldrb	r3, [r0, #30]	@ zero_extendqisi2
 1374 000a 5B07     		lsls	r3, r3, #29
 1375 000c 1BD4     		bmi	.L277
 1376 000e FFF7FEFF 		bl	tcp_rexmit
 1377 0012 B4F84C30 		ldrh	r3, [r4, #76]
 1378 0016 B4F86020 		ldrh	r2, [r4, #96]
 1379 001a E18E     		ldrh	r1, [r4, #54]
 1380 001c 9342     		cmp	r3, r2
 1381 001e 8CBF     		ite	hi
 1382 0020 5308     		lsrhi	r3, r2, #1
 1383 0022 5B08     		lsrls	r3, r3, #1
 1384 0024 4A00     		lsls	r2, r1, #1
 1385 0026 9342     		cmp	r3, r2
 1386 0028 A07F     		ldrb	r0, [r4, #30]	@ zero_extendqisi2
 1387 002a A4F84E30 		strh	r3, [r4, #78]	@ movhi
 1388 002e B8BF     		it	lt
 1389 0030 93B2     		uxthlt	r3, r2
 1390 0032 0A44     		add	r2, r2, r1
 1391 0034 B8BF     		it	lt
 1392 0036 A4F84E30 		strhlt	r3, [r4, #78]	@ movhi
 1393 003a 40F00400 		orr	r0, r0, #4
 1394 003e 1344     		add	r3, r3, r2
 1395 0040 A4F84C30 		strh	r3, [r4, #76]	@ movhi
 1396 0044 A077     		strb	r0, [r4, #30]
 1397              	.L277:
 1398 0046 10BD     		pop	{r4, pc}
 1399              		.size	tcp_rexmit_fast, .-tcp_rexmit_fast
 1400              		.section	.text.tcp_keepalive,"ax",%progbits
 1401              		.align	2
 1402              		.global	tcp_keepalive
 1403              		.thumb
 1404              		.thumb_func
 1405              		.type	tcp_keepalive, %function
 1406              	tcp_keepalive:
 1407              		@ args = 0, pretend = 0, frame = 0
 1408              		@ frame_needed = 0, uses_anonymous_args = 0
 1409 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1410 0002 0446     		mov	r4, r0
 1411 0004 006D     		ldr	r0, [r0, #80]
 1412 0006 83B0     		sub	sp, sp, #12
 1413 0008 0138     		subs	r0, r0, #1
 1414 000a FFF7FEFF 		bl	lwip_htonl
 1415 000e 0021     		movs	r1, #0
 1416 0010 0246     		mov	r2, r0
 1417 0012 2046     		mov	r0, r4
 1418 0014 FFF7FEFF 		bl	tcp_output_alloc_header.constprop.1
 1419 0018 0546     		mov	r5, r0
 1420 001a F8B1     		cbz	r0, .L285
 1421 001c 0389     		ldrh	r3, [r0, #8]
 1422 001e 261D     		adds	r6, r4, #4
 1423 0020 4768     		ldr	r7, [r0, #4]
 1424 0022 3246     		mov	r2, r6
 1425 0024 0093     		str	r3, [sp]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 26


 1426 0026 2146     		mov	r1, r4
 1427 0028 0623     		movs	r3, #6
 1428 002a FFF7FEFF 		bl	inet_chksum_pseudo
 1429 002e 0C4B     		ldr	r3, .L287
 1430 0030 3882     		strh	r0, [r7, #16]	@ unaligned
 1431 0032 B3F8AC20 		ldrh	r2, [r3, #172]
 1432 0036 0027     		movs	r7, #0
 1433 0038 0132     		adds	r2, r2, #1
 1434 003a A3F8AC20 		strh	r2, [r3, #172]	@ movhi
 1435 003e 0620     		movs	r0, #6
 1436 0040 A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 1437 0042 3246     		mov	r2, r6
 1438 0044 0190     		str	r0, [sp, #4]
 1439 0046 2146     		mov	r1, r4
 1440 0048 0097     		str	r7, [sp]
 1441 004a 2846     		mov	r0, r5
 1442 004c FFF7FEFF 		bl	ip_output
 1443 0050 2846     		mov	r0, r5
 1444 0052 03B0     		add	sp, sp, #12
 1445              		@ sp needed
 1446 0054 BDE8F040 		pop	{r4, r5, r6, r7, lr}
 1447 0058 FFF7FEBF 		b	pbuf_free
 1448              	.L285:
 1449 005c 03B0     		add	sp, sp, #12
 1450              		@ sp needed
 1451 005e F0BD     		pop	{r4, r5, r6, r7, pc}
 1452              	.L288:
 1453              		.align	2
 1454              	.L287:
 1455 0060 00000000 		.word	lwip_stats
 1456              		.size	tcp_keepalive, .-tcp_keepalive
 1457              		.section	.text.tcp_zero_window_probe,"ax",%progbits
 1458              		.align	2
 1459              		.global	tcp_zero_window_probe
 1460              		.thumb
 1461              		.thumb_func
 1462              		.type	tcp_zero_window_probe, %function
 1463              	tcp_zero_window_probe:
 1464              		@ args = 0, pretend = 0, frame = 0
 1465              		@ frame_needed = 0, uses_anonymous_args = 0
 1466 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1467 0004 066F     		ldr	r6, [r0, #112]
 1468 0006 82B0     		sub	sp, sp, #8
 1469 0008 0446     		mov	r4, r0
 1470 000a 002E     		cmp	r6, #0
 1471 000c 4DD0     		beq	.L301
 1472              	.L290:
 1473 000e F368     		ldr	r3, [r6, #12]
 1474 0010 9889     		ldrh	r0, [r3, #12]	@ unaligned
 1475 0012 FFF7FEFF 		bl	lwip_ntohs
 1476 0016 10F00100 		ands	r0, r0, #1
 1477 001a 36D1     		bne	.L302
 1478 001c 8046     		mov	r8, r0
 1479 001e 0121     		movs	r1, #1
 1480              	.L292:
 1481 0020 F368     		ldr	r3, [r6, #12]
 1482 0022 2046     		mov	r0, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 27


 1483 0024 5A68     		ldr	r2, [r3, #4]	@ unaligned
 1484 0026 FFF7FEFF 		bl	tcp_output_alloc_header.constprop.1
 1485 002a 0546     		mov	r5, r0
 1486 002c 0028     		cmp	r0, #0
 1487 002e 3FD0     		beq	.L289
 1488 0030 4768     		ldr	r7, [r0, #4]
 1489 0032 B8F1000F 		cmp	r8, #0
 1490 0036 2DD0     		beq	.L294
 1491 0038 1120     		movs	r0, #17
 1492 003a BE89     		ldrh	r6, [r7, #12]	@ unaligned
 1493 003c FFF7FEFF 		bl	lwip_htons
 1494 0040 26F47C56 		bic	r6, r6, #16128
 1495 0044 B6B2     		uxth	r6, r6
 1496 0046 3043     		orrs	r0, r0, r6
 1497 0048 B881     		strh	r0, [r7, #12]	@ unaligned
 1498              	.L295:
 1499 004a 2B89     		ldrh	r3, [r5, #8]
 1500 004c 261D     		adds	r6, r4, #4
 1501 004e 0093     		str	r3, [sp]
 1502 0050 3246     		mov	r2, r6
 1503 0052 2146     		mov	r1, r4
 1504 0054 2846     		mov	r0, r5
 1505 0056 0623     		movs	r3, #6
 1506 0058 FFF7FEFF 		bl	inet_chksum_pseudo
 1507 005c 184B     		ldr	r3, .L304
 1508 005e 3882     		strh	r0, [r7, #16]	@ unaligned
 1509 0060 B3F8AC20 		ldrh	r2, [r3, #172]
 1510 0064 0027     		movs	r7, #0
 1511 0066 0132     		adds	r2, r2, #1
 1512 0068 A3F8AC20 		strh	r2, [r3, #172]	@ movhi
 1513 006c 0620     		movs	r0, #6
 1514 006e A37A     		ldrb	r3, [r4, #10]	@ zero_extendqisi2
 1515 0070 3246     		mov	r2, r6
 1516 0072 0190     		str	r0, [sp, #4]
 1517 0074 2146     		mov	r1, r4
 1518 0076 0097     		str	r7, [sp]
 1519 0078 2846     		mov	r0, r5
 1520 007a FFF7FEFF 		bl	ip_output
 1521 007e 2846     		mov	r0, r5
 1522 0080 02B0     		add	sp, sp, #8
 1523              		@ sp needed
 1524 0082 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 1525 0086 FFF7FEBF 		b	pbuf_free
 1526              	.L302:
 1527 008a 3189     		ldrh	r1, [r6, #8]
 1528 008c 99B9     		cbnz	r1, .L303
 1529 008e 4FF00108 		mov	r8, #1
 1530 0092 C5E7     		b	.L292
 1531              	.L294:
 1532 0094 7068     		ldr	r0, [r6, #4]
 1533 0096 3389     		ldrh	r3, [r6, #8]
 1534 0098 0289     		ldrh	r2, [r0, #8]
 1535 009a 07F11401 		add	r1, r7, #20
 1536 009e D31A     		subs	r3, r2, r3
 1537 00a0 9BB2     		uxth	r3, r3
 1538 00a2 0122     		movs	r2, #1
 1539 00a4 FFF7FEFF 		bl	pbuf_copy_partial
ARM GAS  C:\Users\George\AppData\Local\Temp\ccVF0nzm.s 			page 28


 1540 00a8 CFE7     		b	.L295
 1541              	.L301:
 1542 00aa C66E     		ldr	r6, [r0, #108]
 1543 00ac 002E     		cmp	r6, #0
 1544 00ae AED1     		bne	.L290
 1545              	.L289:
 1546 00b0 02B0     		add	sp, sp, #8
 1547              		@ sp needed
 1548 00b2 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1549              	.L303:
 1550 00b6 0121     		movs	r1, #1
 1551 00b8 4FF00008 		mov	r8, #0
 1552 00bc B0E7     		b	.L292
 1553              	.L305:
 1554 00be 00BF     		.align	2
 1555              	.L304:
 1556 00c0 00000000 		.word	lwip_stats
 1557              		.size	tcp_zero_window_probe, .-tcp_zero_window_probe
 1558              		.section	.rodata.str1.4,"aMS",%progbits,1
 1559              		.align	2
 1560              	.LC0:
 1561 0000 41737365 		.ascii	"Assertion \"%s\" failed at line %d in %s\012\000"
 1561      7274696F 
 1561      6E202225 
 1561      73222066 
 1561      61696C65 
 1562              	.LC1:
 1563 0028 7463705F 		.ascii	"tcp_write: arg == NULL (programmer violates API)\000"
 1563      77726974 
 1563      653A2061 
 1563      7267203D 
 1563      3D204E55 
 1564 0059 000000   		.space	3
 1565              	.LC2:
 1566 005c 2E2E2F73 		.ascii	"../src/Duet/Lwip/lwip/src/core/tcp_out.c\000"
 1566      72632F44 
 1566      7565742F 
 1566      4C776970 
 1566      2F6C7769 
 1567 0085 000000   		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
