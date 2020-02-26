ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 1


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
  14              		.file	"tcp_in.c"
  15              		.section	.text.tcp_oos_insert_segment,"ax",%progbits
  16              		.align	2
  17              		.thumb
  18              		.thumb_func
  19              		.type	tcp_oos_insert_segment, %function
  20              	tcp_oos_insert_segment:
  21              		@ args = 0, pretend = 0, frame = 0
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  24 0004 C368     		ldr	r3, [r0, #12]
  25 0006 0646     		mov	r6, r0
  26 0008 9889     		ldrh	r0, [r3, #12]	@ unaligned
  27 000a 0D46     		mov	r5, r1
  28 000c FFF7FEFF 		bl	lwip_ntohs
  29 0010 C207     		lsls	r2, r0, #31
  30 0012 43D4     		bmi	.L2
  31 0014 002D     		cmp	r5, #0
  32 0016 31D0     		beq	.L19
  33 0018 EB68     		ldr	r3, [r5, #12]
  34 001a 224F     		ldr	r7, .L22
  35 001c 5A68     		ldr	r2, [r3, #4]	@ unaligned
  36 001e 3189     		ldrh	r1, [r6, #8]
  37 0020 3868     		ldr	r0, [r7]
  38 0022 891A     		subs	r1, r1, r2
  39 0024 2C89     		ldrh	r4, [r5, #8]
  40 0026 0144     		add	r1, r1, r0
  41 0028 0C1B     		subs	r4, r1, r4
  42 002a 002C     		cmp	r4, #0
  43 002c B8BF     		it	lt
  44 002e 2C46     		movlt	r4, r5
  45 0030 10DA     		bge	.L9
  46 0032 28E0     		b	.L6
  47              	.L7:
  48 0034 2C68     		ldr	r4, [r5]
  49 0036 2846     		mov	r0, r5
  50 0038 FFF7FEFF 		bl	tcp_seg_free
  51 003c F4B1     		cbz	r4, .L19
  52              	.L21:
  53 003e E368     		ldr	r3, [r4, #12]
  54 0040 3189     		ldrh	r1, [r6, #8]
  55 0042 5A68     		ldr	r2, [r3, #4]	@ unaligned
  56 0044 3D68     		ldr	r5, [r7]
  57 0046 891A     		subs	r1, r1, r2
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 2


  58 0048 2089     		ldrh	r0, [r4, #8]
  59 004a 2944     		add	r1, r1, r5
  60 004c 081A     		subs	r0, r1, r0
  61 004e 0028     		cmp	r0, #0
  62 0050 18DB     		blt	.L11
  63 0052 2546     		mov	r5, r4
  64              	.L9:
  65 0054 9889     		ldrh	r0, [r3, #12]	@ unaligned
  66 0056 FFF7FEFF 		bl	lwip_ntohs
  67 005a C307     		lsls	r3, r0, #31
  68 005c EAD5     		bpl	.L7
  69 005e F468     		ldr	r4, [r6, #12]
  70 0060 0120     		movs	r0, #1
  71 0062 B4F80C80 		ldrh	r8, [r4, #12]	@ unaligned
  72 0066 FFF7FEFF 		bl	lwip_htons
  73 006a 40EA0800 		orr	r0, r0, r8
  74 006e A081     		strh	r0, [r4, #12]	@ unaligned
  75 0070 2C68     		ldr	r4, [r5]
  76 0072 2846     		mov	r0, r5
  77 0074 FFF7FEFF 		bl	tcp_seg_free
  78 0078 002C     		cmp	r4, #0
  79 007a E0D1     		bne	.L21
  80              	.L19:
  81 007c 0024     		movs	r4, #0
  82              	.L4:
  83 007e 3460     		str	r4, [r6]
  84 0080 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  85              	.L11:
  86 0084 2846     		mov	r0, r5
  87              	.L6:
  88 0086 0029     		cmp	r1, #0
  89 0088 F9DD     		ble	.L4
  90 008a 121A     		subs	r2, r2, r0
  91 008c 91B2     		uxth	r1, r2
  92 008e 3181     		strh	r1, [r6, #8]	@ movhi
  93 0090 7068     		ldr	r0, [r6, #4]
  94 0092 FFF7FEFF 		bl	pbuf_realloc
  95 0096 3460     		str	r4, [r6]
  96 0098 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  97              	.L2:
  98 009c 2846     		mov	r0, r5
  99 009e FFF7FEFF 		bl	tcp_segs_free
 100 00a2 EBE7     		b	.L19
 101              	.L23:
 102              		.align	2
 103              	.L22:
 104 00a4 00000000 		.word	.LANCHOR0
 105              		.size	tcp_oos_insert_segment, .-tcp_oos_insert_segment
 106              		.section	.text.tcp_receive,"ax",%progbits
 107              		.align	2
 108              		.thumb
 109              		.thumb_func
 110              		.type	tcp_receive, %function
 111              	tcp_receive:
 112              		@ args = 0, pretend = 0, frame = 0
 113              		@ frame_needed = 0, uses_anonymous_args = 0
 114 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 3


 115 0004 AC4B     		ldr	r3, .L219
 116 0006 0446     		mov	r4, r0
 117 0008 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 118 000a DFF8C082 		ldr	r8, .L219+20
 119 000e DD06     		lsls	r5, r3, #27
 120 0010 1FD4     		bmi	.L25
 121 0012 DFF8BC92 		ldr	r9, .L219+24
 122              	.L26:
 123 0016 B9F80030 		ldrh	r3, [r9]
 124 001a 13B1     		cbz	r3, .L64
 125 001c 227E     		ldrb	r2, [r4, #24]	@ zero_extendqisi2
 126 001e 062A     		cmp	r2, #6
 127 0020 7DD9     		bls	.L197
 128              	.L64:
 129 0022 D8F80020 		ldr	r2, [r8]
 130 0026 A36A     		ldr	r3, [r4, #40]
 131 0028 D11A     		subs	r1, r2, r3
 132 002a 0029     		cmp	r1, #0
 133 002c 05DB     		blt	.L118
 134 002e 0132     		adds	r2, r2, #1
 135 0030 A18D     		ldrh	r1, [r4, #44]
 136 0032 D31A     		subs	r3, r2, r3
 137 0034 5B1A     		subs	r3, r3, r1
 138 0036 002B     		cmp	r3, #0
 139 0038 09DD     		ble	.L24
 140              	.L118:
 141 003a A37F     		ldrb	r3, [r4, #30]	@ zero_extendqisi2
 142 003c 43F00203 		orr	r3, r3, #2
 143 0040 A377     		strb	r3, [r4, #30]
 144 0042 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 145              	.L114:
 146 0046 C31A     		subs	r3, r0, r3
 147 0048 002B     		cmp	r3, #0
 148 004a 00F3F281 		bgt	.L198
 149              	.L24:
 150 004e BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 151              	.L25:
 152 0052 436D     		ldr	r3, [r0, #84]
 153 0054 D8F80020 		ldr	r2, [r8]
 154 0058 B0F86050 		ldrh	r5, [r0, #96]
 155 005c 991A     		subs	r1, r3, r2
 156 005e 0029     		cmp	r1, #0
 157 0060 806D     		ldr	r0, [r0, #88]
 158 0062 964E     		ldr	r6, .L219+4
 159 0064 C0F2AC80 		blt	.L31
 160 0068 9342     		cmp	r3, r2
 161 006a 3368     		ldr	r3, [r6]
 162 006c 00F0A480 		beq	.L29
 163              	.L30:
 164 0070 9842     		cmp	r0, r3
 165 0072 00F01981 		beq	.L199
 166              	.L32:
 167 0076 A16C     		ldr	r1, [r4, #72]
 168 0078 5A1A     		subs	r2, r3, r1
 169 007a 002A     		cmp	r2, #0
 170 007c 40F3F980 		ble	.L200
 171 0080 216D     		ldr	r1, [r4, #80]
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 4


 172 0082 591A     		subs	r1, r3, r1
 173 0084 0029     		cmp	r1, #0
 174 0086 40F32581 		ble	.L201
 175 008a 0023     		movs	r3, #0
 176 008c DFF84092 		ldr	r9, .L219+24
 177 0090 A4F86430 		strh	r3, [r4, #100]	@ movhi
 178              	.L56:
 179 0094 E36E     		ldr	r3, [r4, #108]
 180 0096 002B     		cmp	r3, #0
 181 0098 60D0     		beq	.L61
 182 009a 884F     		ldr	r7, .L219+4
 183 009c 0EE0     		b	.L43
 184              	.L59:
 185 009e 6868     		ldr	r0, [r5, #4]
 186 00a0 B4F868A0 		ldrh	r10, [r4, #104]
 187 00a4 FFF7FEFF 		bl	pbuf_clen
 188 00a8 C0EB0A00 		rsb	r0, r0, r10
 189 00ac A4F86800 		strh	r0, [r4, #104]	@ movhi
 190 00b0 2846     		mov	r0, r5
 191 00b2 FFF7FEFF 		bl	tcp_seg_free
 192 00b6 E36E     		ldr	r3, [r4, #108]
 193 00b8 002B     		cmp	r3, #0
 194 00ba 4FD0     		beq	.L61
 195              	.L43:
 196 00bc DB68     		ldr	r3, [r3, #12]
 197 00be 3568     		ldr	r5, [r6]
 198 00c0 5868     		ldr	r0, [r3, #4]	@ unaligned
 199 00c2 FFF7FEFF 		bl	lwip_ntohl
 200 00c6 E26E     		ldr	r2, [r4, #108]
 201 00c8 8346     		mov	fp, r0
 202 00ca D368     		ldr	r3, [r2, #12]
 203 00cc B2F808A0 		ldrh	r10, [r2, #8]
 204 00d0 9889     		ldrh	r0, [r3, #12]	@ unaligned
 205 00d2 FFF7FEFF 		bl	lwip_ntohs
 206 00d6 10F00300 		ands	r0, r0, #3
 207 00da 18BF     		it	ne
 208 00dc 0120     		movne	r0, #1
 209 00de CBEB0505 		rsb	r5, fp, r5
 210 00e2 0AEB0003 		add	r3, r10, r0
 211 00e6 EB1A     		subs	r3, r5, r3
 212 00e8 002B     		cmp	r3, #0
 213 00ea 37DB     		blt	.L61
 214 00ec 3A68     		ldr	r2, [r7]
 215 00ee 236D     		ldr	r3, [r4, #80]
 216 00f0 D31A     		subs	r3, r2, r3
 217 00f2 002B     		cmp	r3, #0
 218 00f4 32DC     		bgt	.L61
 219 00f6 E56E     		ldr	r5, [r4, #108]
 220 00f8 2B68     		ldr	r3, [r5]
 221 00fa E366     		str	r3, [r4, #108]
 222 00fc 5BB3     		cbz	r3, .L202
 223              	.L57:
 224 00fe B4F86430 		ldrh	r3, [r4, #100]
 225 0102 002B     		cmp	r3, #0
 226 0104 CBD0     		beq	.L59
 227 0106 EB68     		ldr	r3, [r5, #12]
 228 0108 9889     		ldrh	r0, [r3, #12]	@ unaligned
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 5


 229 010a FFF7FEFF 		bl	lwip_ntohs
 230 010e C307     		lsls	r3, r0, #31
 231 0110 C5D5     		bpl	.L59
 232 0112 B4F86430 		ldrh	r3, [r4, #100]
 233 0116 013B     		subs	r3, r3, #1
 234 0118 A4F86430 		strh	r3, [r4, #100]	@ movhi
 235 011c BFE7     		b	.L59
 236              	.L197:
 237 011e A26A     		ldr	r2, [r4, #40]
 238 0120 D8F80010 		ldr	r1, [r8]
 239 0124 561A     		subs	r6, r2, r1
 240 0126 012E     		cmp	r6, #1
 241 0128 05D4     		bmi	.L65
 242 012a 501C     		adds	r0, r2, #1
 243 012c 401A     		subs	r0, r0, r1
 244 012e C31A     		subs	r3, r0, r3
 245 0130 002B     		cmp	r3, #0
 246 0132 40F33B81 		ble	.L203
 247              	.L65:
 248 0136 8B1A     		subs	r3, r1, r2
 249 0138 002B     		cmp	r3, #0
 250 013a C0F29580 		blt	.L204
 251              	.L70:
 252 013e A38D     		ldrh	r3, [r4, #44]
 253 0140 C3F10103 		rsb	r3, r3, #1
 254 0144 0B44     		add	r3, r3, r1
 255 0146 9B1A     		subs	r3, r3, r2
 256 0148 002B     		cmp	r3, #0
 257 014a 54DD     		ble	.L205
 258              	.L71:
 259 014c 2046     		mov	r0, r4
 260 014e BDE8F84F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 261 0152 FFF7FEBF 		b	tcp_send_empty_ack
 262              	.L202:
 263 0156 A4F86A30 		strh	r3, [r4, #106]	@ movhi
 264 015a D0E7     		b	.L57
 265              	.L61:
 266 015c A36B     		ldr	r3, [r4, #56]
 267 015e 002B     		cmp	r3, #0
 268 0160 3FF459AF 		beq	.L26
 269 0164 3168     		ldr	r1, [r6]
 270 0166 E26B     		ldr	r2, [r4, #60]
 271 0168 521A     		subs	r2, r2, r1
 272 016a 002A     		cmp	r2, #0
 273 016c BFF653AF 		bge	.L26
 274 0170 534A     		ldr	r2, .L219+8
 275 0172 B4F84010 		ldrh	r1, [r4, #64]
 276 0176 1068     		ldr	r0, [r2]
 277 0178 41F3CC02 		sbfx	r2, r1, #3, #13
 278 017c C31A     		subs	r3, r0, r3
 279 017e 9A1A     		subs	r2, r3, r2
 280 0180 92B2     		uxth	r2, r2
 281 0182 93B2     		uxth	r3, r2
 282 0184 1804     		lsls	r0, r3, #16
 283 0186 48BF     		it	mi
 284 0188 5342     		rsbmi	r3, r2, #0
 285 018a 1144     		add	r1, r1, r2
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 6


 286 018c B4F84220 		ldrh	r2, [r4, #66]
 287 0190 48BF     		it	mi
 288 0192 9BB2     		uxthmi	r3, r3
 289 0194 42F38D00 		sbfx	r0, r2, #2, #14
 290 0198 121A     		subs	r2, r2, r0
 291 019a 89B2     		uxth	r1, r1
 292 019c 1344     		add	r3, r3, r2
 293 019e 9BB2     		uxth	r3, r3
 294 01a0 A4F84010 		strh	r1, [r4, #64]	@ movhi
 295 01a4 41F3CC01 		sbfx	r1, r1, #3, #13
 296 01a8 1944     		add	r1, r1, r3
 297 01aa 0022     		movs	r2, #0
 298 01ac A4F84410 		strh	r1, [r4, #68]	@ movhi
 299 01b0 A4F84230 		strh	r3, [r4, #66]	@ movhi
 300 01b4 A263     		str	r2, [r4, #56]
 301 01b6 2EE7     		b	.L26
 302              	.L29:
 303 01b8 C11A     		subs	r1, r0, r3
 304 01ba 0029     		cmp	r1, #0
 305 01bc BFF658AF 		bge	.L30
 306              	.L31:
 307 01c0 4049     		ldr	r1, .L219+12
 308 01c2 3368     		ldr	r3, [r6]
 309 01c4 0968     		ldr	r1, [r1]
 310 01c6 C989     		ldrh	r1, [r1, #14]	@ unaligned
 311              	.L28:
 312 01c8 B4F86270 		ldrh	r7, [r4, #98]
 313 01cc 6265     		str	r2, [r4, #84]
 314 01ce 8F42     		cmp	r7, r1
 315 01d0 A4F86010 		strh	r1, [r4, #96]	@ movhi
 316 01d4 38BF     		it	cc
 317 01d6 A4F86210 		strhcc	r1, [r4, #98]	@ movhi
 318 01da A365     		str	r3, [r4, #88]
 319 01dc 94F89520 		ldrb	r2, [r4, #149]	@ zero_extendqisi2
 320 01e0 0029     		cmp	r1, #0
 321 01e2 5AD1     		bne	.L34
 322 01e4 002A     		cmp	r2, #0
 323 01e6 7FF446AF 		bne	.L32
 324 01ea 0122     		movs	r2, #1
 325 01ec 84F89410 		strb	r1, [r4, #148]
 326 01f0 84F89520 		strb	r2, [r4, #149]
 327 01f4 3FE7     		b	.L32
 328              	.L205:
 329 01f6 9142     		cmp	r1, r2
 330 01f8 00F07081 		beq	.L206
 331 01fc 2046     		mov	r0, r4
 332 01fe FFF7FEFF 		bl	tcp_send_empty_ack
 333 0202 656F     		ldr	r5, [r4, #116]
 334 0204 002D     		cmp	r5, #0
 335 0206 00F0FD82 		beq	.L207
 336 020a D8F80000 		ldr	r0, [r8]
 337 020e 0026     		movs	r6, #0
 338 0210 00F1FF3C 		add	ip, r0, #-1
 339 0214 471C     		adds	r7, r0, #1
 340 0216 0FE0     		b	.L115
 341              	.L111:
 342 0218 F268     		ldr	r2, [r6, #12]
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 7


 343 021a 5268     		ldr	r2, [r2, #4]	@ unaligned
 344 021c C2EB0C02 		rsb	r2, r2, ip
 345 0220 002A     		cmp	r2, #0
 346 0222 03DB     		blt	.L112
 347 0224 BAF1000F 		cmp	r10, #0
 348 0228 40F37382 		ble	.L208
 349              	.L112:
 350 022c 2A68     		ldr	r2, [r5]
 351 022e 2E46     		mov	r6, r5
 352 0230 002A     		cmp	r2, #0
 353 0232 3FF408AF 		beq	.L114
 354 0236 1546     		mov	r5, r2
 355              	.L115:
 356 0238 E968     		ldr	r1, [r5, #12]
 357 023a 4B68     		ldr	r3, [r1, #4]	@ unaligned
 358 023c 8342     		cmp	r3, r0
 359 023e C3EB070A 		rsb	r10, r3, r7
 360 0242 00F05182 		beq	.L209
 361 0246 002E     		cmp	r6, #0
 362 0248 E6D1     		bne	.L111
 363 024a C21A     		subs	r2, r0, r3
 364 024c 002A     		cmp	r2, #0
 365 024e EDDA     		bge	.L112
 366 0250 1D48     		ldr	r0, .L219+16
 367 0252 FFF7FEFF 		bl	tcp_seg_copy
 368 0256 0028     		cmp	r0, #0
 369 0258 3FF4F9AE 		beq	.L24
 370 025c 6067     		str	r0, [r4, #116]
 371              	.L192:
 372 025e 2946     		mov	r1, r5
 373 0260 BDE8F84F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 374 0264 FFF7FEBF 		b	tcp_oos_insert_segment
 375              	.L204:
 376 0268 A37F     		ldrb	r3, [r4, #30]	@ zero_extendqisi2
 377 026a 43F00203 		orr	r3, r3, #2
 378 026e A377     		strb	r3, [r4, #30]
 379 0270 6CE7     		b	.L71
 380              	.L200:
 381 0272 DFF85C90 		ldr	r9, .L219+24
 382 0276 0027     		movs	r7, #0
 383 0278 B9F80020 		ldrh	r2, [r9]
 384 027c A4F86470 		strh	r7, [r4, #100]	@ movhi
 385 0280 3AB9     		cbnz	r2, .L36
 386 0282 B4F86070 		ldrh	r7, [r4, #96]
 387 0286 A26D     		ldr	r2, [r4, #88]
 388 0288 2844     		add	r0, r0, r5
 389 028a 3A44     		add	r2, r2, r7
 390 028c 8242     		cmp	r2, r0
 391 028e 00F0B180 		beq	.L210
 392              	.L36:
 393 0292 0023     		movs	r3, #0
 394 0294 84F84730 		strb	r3, [r4, #71]
 395 0298 FCE6     		b	.L56
 396              	.L34:
 397 029a 002A     		cmp	r2, #0
 398 029c 3FF4EBAE 		beq	.L32
 399 02a0 0022     		movs	r2, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 8


 400 02a2 84F89520 		strb	r2, [r4, #149]
 401 02a6 E6E6     		b	.L32
 402              	.L199:
 403 02a8 064B     		ldr	r3, .L219+12
 404 02aa 1B68     		ldr	r3, [r3]
 405 02ac D989     		ldrh	r1, [r3, #14]	@ unaligned
 406 02ae 0346     		mov	r3, r0
 407 02b0 8D42     		cmp	r5, r1
 408 02b2 BFF4E0AE 		bcs	.L32
 409 02b6 87E7     		b	.L28
 410              	.L220:
 411              		.align	2
 412              	.L219:
 413 02b8 00000000 		.word	.LANCHOR1
 414 02bc 00000000 		.word	.LANCHOR3
 415 02c0 00000000 		.word	tcp_ticks
 416 02c4 00000000 		.word	.LANCHOR2
 417 02c8 00000000 		.word	.LANCHOR5
 418 02cc 00000000 		.word	.LANCHOR0
 419 02d0 00000000 		.word	.LANCHOR4
 420              	.L201:
 421 02d4 A17F     		ldrb	r1, [r4, #30]	@ zero_extendqisi2
 422 02d6 4807     		lsls	r0, r1, #29
 423 02d8 06D5     		bpl	.L45
 424 02da B4F84E00 		ldrh	r0, [r4, #78]
 425 02de 21F00401 		bic	r1, r1, #4
 426 02e2 A177     		strb	r1, [r4, #30]
 427 02e4 A4F84C00 		strh	r0, [r4, #76]	@ movhi
 428              	.L45:
 429 02e8 B4F86670 		ldrh	r7, [r4, #102]
 430 02ec B4F84210 		ldrh	r1, [r4, #66]
 431 02f0 B4F94050 		ldrsh	r5, [r4, #64]
 432 02f4 207E     		ldrb	r0, [r4, #24]	@ zero_extendqisi2
 433 02f6 92B2     		uxth	r2, r2
 434 02f8 01EBE505 		add	r5, r1, r5, asr #3
 435 02fc 1744     		add	r7, r7, r2
 436 02fe 0021     		movs	r1, #0
 437 0300 0328     		cmp	r0, #3
 438 0302 A4F86420 		strh	r2, [r4, #100]	@ movhi
 439 0306 A364     		str	r3, [r4, #72]
 440 0308 A4F86670 		strh	r7, [r4, #102]	@ movhi
 441 030c A4F84450 		strh	r5, [r4, #68]	@ movhi
 442 0310 84F84610 		strb	r1, [r4, #70]
 443 0314 84F84710 		strb	r1, [r4, #71]
 444 0318 26D9     		bls	.L189
 445 031a B4F84C30 		ldrh	r3, [r4, #76]
 446 031e B4F84E20 		ldrh	r2, [r4, #78]
 447 0322 9A42     		cmp	r2, r3
 448 0324 E28E     		ldrh	r2, [r4, #54]
 449 0326 9CBF     		itt	ls
 450 0328 5243     		mulls	r2, r2, r2
 451 032a 92FBF3F2 		sdivls	r2, r2, r3
 452 032e 1A44     		add	r2, r2, r3
 453 0330 92B2     		uxth	r2, r2
 454 0332 9342     		cmp	r3, r2
 455 0334 18D2     		bcs	.L189
 456 0336 A4F84C20 		strh	r2, [r4, #76]	@ movhi
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 9


 457 033a 15E0     		b	.L189
 458              	.L218:
 459 033c EB68     		ldr	r3, [r5, #12]
 460 033e 9889     		ldrh	r0, [r3, #12]	@ unaligned
 461 0340 FFF7FEFF 		bl	lwip_ntohs
 462 0344 C207     		lsls	r2, r0, #31
 463 0346 04D5     		bpl	.L51
 464 0348 B4F86430 		ldrh	r3, [r4, #100]
 465 034c 013B     		subs	r3, r3, #1
 466 034e A4F86430 		strh	r3, [r4, #100]	@ movhi
 467              	.L51:
 468 0352 6868     		ldr	r0, [r5, #4]
 469 0354 B4F86870 		ldrh	r7, [r4, #104]
 470 0358 FFF7FEFF 		bl	pbuf_clen
 471 035c 381A     		subs	r0, r7, r0
 472 035e A4F86800 		strh	r0, [r4, #104]	@ movhi
 473 0362 2846     		mov	r0, r5
 474 0364 FFF7FEFF 		bl	tcp_seg_free
 475              	.L189:
 476 0368 236F     		ldr	r3, [r4, #112]
 477 036a 002B     		cmp	r3, #0
 478 036c 00F0F381 		beq	.L121
 479 0370 DB68     		ldr	r3, [r3, #12]
 480 0372 5868     		ldr	r0, [r3, #4]	@ unaligned
 481 0374 FFF7FEFF 		bl	lwip_ntohl
 482 0378 236F     		ldr	r3, [r4, #112]
 483 037a 0546     		mov	r5, r0
 484 037c DA68     		ldr	r2, [r3, #12]
 485 037e 1F89     		ldrh	r7, [r3, #8]
 486 0380 9089     		ldrh	r0, [r2, #12]	@ unaligned
 487 0382 FFF7FEFF 		bl	lwip_ntohs
 488 0386 3268     		ldr	r2, [r6]
 489 0388 10F00300 		ands	r0, r0, #3
 490 038c 18BF     		it	ne
 491 038e 0120     		movne	r0, #1
 492 0390 3B18     		adds	r3, r7, r0
 493 0392 AA1A     		subs	r2, r5, r2
 494 0394 1344     		add	r3, r3, r2
 495 0396 002B     		cmp	r3, #0
 496 0398 00F39580 		bgt	.L211
 497 039c 256F     		ldr	r5, [r4, #112]
 498 039e B4F86420 		ldrh	r2, [r4, #100]
 499 03a2 2B68     		ldr	r3, [r5]
 500 03a4 2367     		str	r3, [r4, #112]
 501 03a6 002A     		cmp	r2, #0
 502 03a8 D3D0     		beq	.L51
 503 03aa C7E7     		b	.L218
 504              	.L203:
 505 03ac 9D4D     		ldr	r5, .L221
 506 03ae 3346     		mov	r3, r6
 507 03b0 6868     		ldr	r0, [r5, #4]
 508 03b2 4289     		ldrh	r2, [r0, #10]
 509 03b4 9642     		cmp	r6, r2
 510 03b6 40F3A781 		ble	.L66
 511 03ba 0189     		ldrh	r1, [r0, #8]
 512 03bc 0026     		movs	r6, #0
 513 03be C91A     		subs	r1, r1, r3
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 10


 514 03c0 89B2     		uxth	r1, r1
 515              	.L68:
 516 03c2 4681     		strh	r6, [r0, #10]	@ movhi
 517 03c4 0181     		strh	r1, [r0, #8]	@ movhi
 518 03c6 0068     		ldr	r0, [r0]
 519 03c8 9B1A     		subs	r3, r3, r2
 520 03ca 4289     		ldrh	r2, [r0, #10]
 521 03cc 9A42     		cmp	r2, r3
 522 03ce F8DB     		blt	.L68
 523 03d0 5942     		negs	r1, r3
 524 03d2 09B2     		sxth	r1, r1
 525 03d4 FFF7FEFF 		bl	pbuf_header
 526              	.L69:
 527 03d8 2989     		ldrh	r1, [r5, #8]
 528 03da D8F80020 		ldr	r2, [r8]
 529 03de A36A     		ldr	r3, [r4, #40]
 530 03e0 0A44     		add	r2, r2, r1
 531 03e2 E968     		ldr	r1, [r5, #12]
 532 03e4 D01A     		subs	r0, r2, r3
 533 03e6 2881     		strh	r0, [r5, #8]	@ movhi
 534 03e8 1A46     		mov	r2, r3
 535 03ea 4B60     		str	r3, [r1, #4]	@ unaligned
 536 03ec C8F80030 		str	r3, [r8]
 537 03f0 1946     		mov	r1, r3
 538 03f2 A4E6     		b	.L70
 539              	.L210:
 540 03f4 B4F93420 		ldrsh	r2, [r4, #52]
 541 03f8 002A     		cmp	r2, #0
 542 03fa FFF64AAF 		blt	.L36
 543 03fe 9942     		cmp	r1, r3
 544 0400 7FF447AF 		bne	.L36
 545 0404 94F84730 		ldrb	r3, [r4, #71]	@ zero_extendqisi2
 546 0408 5A1C     		adds	r2, r3, #1
 547 040a D2B2     		uxtb	r2, r2
 548 040c 9342     		cmp	r3, r2
 549 040e 3CBF     		itt	cc
 550 0410 1346     		movcc	r3, r2
 551 0412 84F84720 		strbcc	r2, [r4, #71]
 552 0416 032B     		cmp	r3, #3
 553 0418 40F20882 		bls	.L38
 554 041c B4F84C20 		ldrh	r2, [r4, #76]
 555 0420 E38E     		ldrh	r3, [r4, #54]
 556 0422 1344     		add	r3, r3, r2
 557 0424 9BB2     		uxth	r3, r3
 558 0426 9A42     		cmp	r2, r3
 559 0428 BFF434AE 		bcs	.L56
 560 042c A4F84C30 		strh	r3, [r4, #76]	@ movhi
 561 0430 30E6     		b	.L56
 562              	.L198:
 563 0432 8889     		ldrh	r0, [r1, #12]	@ unaligned
 564 0434 FFF7FEFF 		bl	lwip_ntohs
 565 0438 C207     		lsls	r2, r0, #31
 566 043a 3FF508AE 		bmi	.L24
 567 043e 7948     		ldr	r0, .L221
 568 0440 FFF7FEFF 		bl	tcp_seg_copy
 569 0444 2860     		str	r0, [r5]
 570 0446 0028     		cmp	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 11


 571 0448 3FF401AE 		beq	.L24
 572 044c EA68     		ldr	r2, [r5, #12]
 573 044e D8F80030 		ldr	r3, [r8]
 574 0452 2989     		ldrh	r1, [r5, #8]
 575 0454 5268     		ldr	r2, [r2, #4]	@ unaligned
 576 0456 C91A     		subs	r1, r1, r3
 577 0458 1144     		add	r1, r1, r2
 578 045a 0029     		cmp	r1, #0
 579 045c 724E     		ldr	r6, .L221+4
 580 045e 06DD     		ble	.L116
 581 0460 9B1A     		subs	r3, r3, r2
 582 0462 99B2     		uxth	r1, r3
 583 0464 2981     		strh	r1, [r5, #8]	@ movhi
 584 0466 6868     		ldr	r0, [r5, #4]
 585 0468 FFF7FEFF 		bl	pbuf_realloc
 586 046c 3368     		ldr	r3, [r6]
 587              	.L116:
 588 046e B9F80000 		ldrh	r0, [r9]
 589 0472 A18D     		ldrh	r1, [r4, #44]
 590 0474 A26A     		ldr	r2, [r4, #40]
 591 0476 0344     		add	r3, r3, r0
 592 0478 0A44     		add	r2, r2, r1
 593 047a 9342     		cmp	r3, r2
 594 047c 7FF6E7AD 		bls	.L24
 595 0480 2B68     		ldr	r3, [r5]
 596 0482 DB68     		ldr	r3, [r3, #12]
 597 0484 9889     		ldrh	r0, [r3, #12]	@ unaligned
 598 0486 FFF7FEFF 		bl	lwip_ntohs
 599 048a C307     		lsls	r3, r0, #31
 600 048c 00F1DA81 		bmi	.L213
 601              	.L117:
 602 0490 A28D     		ldrh	r2, [r4, #44]
 603 0492 A16A     		ldr	r1, [r4, #40]
 604 0494 D8F80030 		ldr	r3, [r8]
 605 0498 1144     		add	r1, r1, r2
 606 049a C91A     		subs	r1, r1, r3
 607 049c 2B68     		ldr	r3, [r5]
 608 049e 89B2     		uxth	r1, r1
 609 04a0 1981     		strh	r1, [r3, #8]	@ movhi
 610 04a2 5868     		ldr	r0, [r3, #4]
 611 04a4 FFF7FEFF 		bl	pbuf_realloc
 612 04a8 2B68     		ldr	r3, [r5]
 613 04aa DA68     		ldr	r2, [r3, #12]
 614 04ac 1C89     		ldrh	r4, [r3, #8]
 615 04ae 9089     		ldrh	r0, [r2, #12]	@ unaligned
 616 04b0 FFF7FEFF 		bl	lwip_ntohs
 617 04b4 10F00300 		ands	r0, r0, #3
 618 04b8 18BF     		it	ne
 619 04ba 0120     		movne	r0, #1
 620 04bc 2044     		add	r0, r0, r4
 621 04be A9F80000 		strh	r0, [r9]	@ movhi
 622 04c2 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 623              	.L211:
 624 04c6 236F     		ldr	r3, [r4, #112]
 625 04c8 002B     		cmp	r3, #0
 626 04ca 00F04481 		beq	.L121
 627 04ce 0023     		movs	r3, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 12


 628 04d0 A386     		strh	r3, [r4, #52]	@ movhi
 629              	.L55:
 630 04d2 0023     		movs	r3, #0
 631 04d4 E377     		strb	r3, [r4, #31]
 632 04d6 DFF85C91 		ldr	r9, .L221+16
 633 04da DBE5     		b	.L56
 634              	.L206:
 635 04dc 514D     		ldr	r5, .L221
 636 04de EB68     		ldr	r3, [r5, #12]
 637 04e0 2E89     		ldrh	r6, [r5, #8]
 638 04e2 9889     		ldrh	r0, [r3, #12]	@ unaligned
 639 04e4 FFF7FEFF 		bl	lwip_ntohs
 640 04e8 10F00300 		ands	r0, r0, #3
 641 04ec 18BF     		it	ne
 642 04ee 0120     		movne	r0, #1
 643 04f0 3318     		adds	r3, r6, r0
 644 04f2 A28D     		ldrh	r2, [r4, #44]
 645 04f4 9BB2     		uxth	r3, r3
 646 04f6 9A42     		cmp	r2, r3
 647 04f8 A9F80030 		strh	r3, [r9]	@ movhi
 648 04fc C0F02F81 		bcc	.L214
 649              	.L73:
 650 0500 636F     		ldr	r3, [r4, #116]
 651 0502 002B     		cmp	r3, #0
 652 0504 5FD0     		beq	.L191
 653 0506 EB68     		ldr	r3, [r5, #12]
 654 0508 9889     		ldrh	r0, [r3, #12]	@ unaligned
 655 050a FFF7FEFF 		bl	lwip_ntohs
 656 050e C007     		lsls	r0, r0, #31
 657 0510 56D4     		bmi	.L196
 658 0512 676F     		ldr	r7, [r4, #116]
 659 0514 002F     		cmp	r7, #0
 660 0516 00F04681 		beq	.L83
 661 051a FB68     		ldr	r3, [r7, #12]
 662 051c B9F80020 		ldrh	r2, [r9]
 663 0520 5868     		ldr	r0, [r3, #4]	@ unaligned
 664 0522 D8F80060 		ldr	r6, [r8]
 665 0526 111A     		subs	r1, r2, r0
 666 0528 B7F808E0 		ldrh	lr, [r7, #8]
 667 052c 3144     		add	r1, r1, r6
 668 052e CEEB010E 		rsb	lr, lr, r1
 669 0532 BEF1000F 		cmp	lr, #0
 670 0536 C0F28181 		blt	.L124
 671 053a DFF8E8A0 		ldr	r10, .L221
 672 053e 17E0     		b	.L88
 673              	.L86:
 674 0540 3E68     		ldr	r6, [r7]
 675 0542 3846     		mov	r0, r7
 676 0544 FFF7FEFF 		bl	tcp_seg_free
 677 0548 002E     		cmp	r6, #0
 678 054a 00F02C81 		beq	.L83
 679 054e F368     		ldr	r3, [r6, #12]
 680 0550 B9F80020 		ldrh	r2, [r9]
 681 0554 5868     		ldr	r0, [r3, #4]	@ unaligned
 682 0556 D8F80070 		ldr	r7, [r8]
 683 055a 111A     		subs	r1, r2, r0
 684 055c B6F808E0 		ldrh	lr, [r6, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 13


 685 0560 3944     		add	r1, r1, r7
 686 0562 CEEB010E 		rsb	lr, lr, r1
 687 0566 BEF1000F 		cmp	lr, #0
 688 056a C0F22481 		blt	.L125
 689 056e 3746     		mov	r7, r6
 690              	.L88:
 691 0570 9889     		ldrh	r0, [r3, #12]	@ unaligned
 692 0572 FFF7FEFF 		bl	lwip_ntohs
 693 0576 C107     		lsls	r1, r0, #31
 694 0578 E2D5     		bpl	.L86
 695 057a EB68     		ldr	r3, [r5, #12]
 696 057c 9889     		ldrh	r0, [r3, #12]	@ unaligned
 697 057e FFF7FEFF 		bl	lwip_ntohs
 698 0582 8207     		lsls	r2, r0, #30
 699 0584 DCD4     		bmi	.L86
 700 0586 DAF80C60 		ldr	r6, [r10, #12]
 701 058a 0120     		movs	r0, #1
 702 058c B6F80CB0 		ldrh	fp, [r6, #12]	@ unaligned
 703 0590 FFF7FEFF 		bl	lwip_htons
 704 0594 DAF80C30 		ldr	r3, [r10, #12]
 705 0598 40EA0B00 		orr	r0, r0, fp
 706 059c B081     		strh	r0, [r6, #12]	@ unaligned
 707 059e 9889     		ldrh	r0, [r3, #12]	@ unaligned
 708 05a0 BAF80860 		ldrh	r6, [r10, #8]
 709 05a4 FFF7FEFF 		bl	lwip_ntohs
 710 05a8 10F00300 		ands	r0, r0, #3
 711 05ac 18BF     		it	ne
 712 05ae 0120     		movne	r0, #1
 713 05b0 3044     		add	r0, r0, r6
 714 05b2 A9F80000 		strh	r0, [r9]	@ movhi
 715 05b6 C3E7     		b	.L86
 716              	.L82:
 717 05b8 0368     		ldr	r3, [r0]
 718 05ba 6367     		str	r3, [r4, #116]
 719 05bc FFF7FEFF 		bl	tcp_seg_free
 720              	.L196:
 721 05c0 606F     		ldr	r0, [r4, #116]
 722 05c2 0028     		cmp	r0, #0
 723 05c4 F8D1     		bne	.L82
 724              	.L191:
 725 05c6 B9F80030 		ldrh	r3, [r9]
 726 05ca D8F800E0 		ldr	lr, [r8]
 727 05ce 1A46     		mov	r2, r3
 728              	.L78:
 729 05d0 A18D     		ldrh	r1, [r4, #44]
 730 05d2 7244     		add	r2, r2, lr
 731 05d4 CB1A     		subs	r3, r1, r3
 732 05d6 A262     		str	r2, [r4, #40]
 733 05d8 A385     		strh	r3, [r4, #44]	@ movhi
 734 05da 2046     		mov	r0, r4
 735 05dc FFF7FEFF 		bl	tcp_update_rcv_ann_wnd
 736 05e0 6B68     		ldr	r3, [r5, #4]
 737 05e2 1049     		ldr	r1, .L221
 738 05e4 1A89     		ldrh	r2, [r3, #8]
 739 05e6 1AB1     		cbz	r2, .L91
 740 05e8 1048     		ldr	r0, .L221+8
 741 05ea 0022     		movs	r2, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 14


 742 05ec 0360     		str	r3, [r0]
 743 05ee 4A60     		str	r2, [r1, #4]
 744              	.L91:
 745 05f0 EB68     		ldr	r3, [r5, #12]
 746 05f2 9889     		ldrh	r0, [r3, #12]	@ unaligned
 747 05f4 FFF7FEFF 		bl	lwip_ntohs
 748 05f8 C507     		lsls	r5, r0, #31
 749 05fa 04D5     		bpl	.L92
 750 05fc 0C4B     		ldr	r3, .L221+12
 751 05fe 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 752 0600 42F02002 		orr	r2, r2, #32
 753 0604 1A70     		strb	r2, [r3]
 754              	.L92:
 755 0606 656F     		ldr	r5, [r4, #116]
 756 0608 002D     		cmp	r5, #0
 757 060a 63D0     		beq	.L96
 758 060c EA68     		ldr	r2, [r5, #12]
 759 060e A36A     		ldr	r3, [r4, #40]
 760 0610 5668     		ldr	r6, [r2, #4]	@ unaligned
 761 0612 9E42     		cmp	r6, r3
 762 0614 5ED1     		bne	.L96
 763 0616 DFF81490 		ldr	r9, .L221+8
 764 061a 054F     		ldr	r7, .L221+12
 765 061c 4FF0000A 		mov	r10, #0
 766 0620 2BE0     		b	.L103
 767              	.L222:
 768 0622 00BF     		.align	2
 769              	.L221:
 770 0624 00000000 		.word	.LANCHOR5
 771 0628 00000000 		.word	.LANCHOR0
 772 062c 00000000 		.word	.LANCHOR6
 773 0630 00000000 		.word	.LANCHOR7
 774 0634 00000000 		.word	.LANCHOR4
 775              	.L215:
 776 0638 FFF7FEFF 		bl	pbuf_cat
 777              	.L99:
 778 063c C5F804A0 		str	r10, [r5, #4]
 779              	.L97:
 780 0640 EB68     		ldr	r3, [r5, #12]
 781 0642 9889     		ldrh	r0, [r3, #12]	@ unaligned
 782 0644 FFF7FEFF 		bl	lwip_ntohs
 783 0648 C107     		lsls	r1, r0, #31
 784 064a 09D5     		bpl	.L101
 785 064c 237E     		ldrb	r3, [r4, #24]	@ zero_extendqisi2
 786 064e 3A78     		ldrb	r2, [r7]	@ zero_extendqisi2
 787 0650 042B     		cmp	r3, #4
 788 0652 42F02002 		orr	r2, r2, #32
 789 0656 08BF     		it	eq
 790 0658 0723     		moveq	r3, #7
 791 065a 3A70     		strb	r2, [r7]
 792 065c 08BF     		it	eq
 793 065e 2376     		strbeq	r3, [r4, #24]
 794              	.L101:
 795 0660 2B68     		ldr	r3, [r5]
 796 0662 2846     		mov	r0, r5
 797 0664 6367     		str	r3, [r4, #116]
 798 0666 FFF7FEFF 		bl	tcp_seg_free
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 15


 799 066a 656F     		ldr	r5, [r4, #116]
 800 066c 002D     		cmp	r5, #0
 801 066e 31D0     		beq	.L96
 802 0670 EA68     		ldr	r2, [r5, #12]
 803 0672 A36A     		ldr	r3, [r4, #40]
 804 0674 5668     		ldr	r6, [r2, #4]	@ unaligned
 805 0676 9E42     		cmp	r6, r3
 806 0678 2CD1     		bne	.L96
 807              	.L103:
 808 067a C8F80060 		str	r6, [r8]
 809 067e 9089     		ldrh	r0, [r2, #12]	@ unaligned
 810 0680 B5F808B0 		ldrh	fp, [r5, #8]
 811 0684 FFF7FEFF 		bl	lwip_ntohs
 812 0688 10F00300 		ands	r0, r0, #3
 813 068c 18BF     		it	ne
 814 068e 0120     		movne	r0, #1
 815 0690 5844     		add	r0, r0, fp
 816 0692 EB68     		ldr	r3, [r5, #12]
 817 0694 0644     		add	r6, r6, r0
 818 0696 A662     		str	r6, [r4, #40]
 819 0698 9889     		ldrh	r0, [r3, #12]	@ unaligned
 820 069a B4F82CB0 		ldrh	fp, [r4, #44]
 821 069e 2E89     		ldrh	r6, [r5, #8]
 822 06a0 FFF7FEFF 		bl	lwip_ntohs
 823 06a4 10F00300 		ands	r0, r0, #3
 824 06a8 18BF     		it	ne
 825 06aa 0120     		movne	r0, #1
 826 06ac C6EB0B06 		rsb	r6, r6, fp
 827 06b0 301A     		subs	r0, r6, r0
 828 06b2 A085     		strh	r0, [r4, #44]	@ movhi
 829 06b4 2046     		mov	r0, r4
 830 06b6 FFF7FEFF 		bl	tcp_update_rcv_ann_wnd
 831 06ba 6B68     		ldr	r3, [r5, #4]
 832 06bc 1A89     		ldrh	r2, [r3, #8]
 833 06be 002A     		cmp	r2, #0
 834 06c0 BED0     		beq	.L97
 835 06c2 D9F80020 		ldr	r2, [r9]
 836 06c6 1946     		mov	r1, r3
 837 06c8 1046     		mov	r0, r2
 838 06ca 002A     		cmp	r2, #0
 839 06cc B4D1     		bne	.L215
 840 06ce C9F80030 		str	r3, [r9]
 841 06d2 B3E7     		b	.L99
 842              	.L96:
 843 06d4 A37F     		ldrb	r3, [r4, #30]	@ zero_extendqisi2
 844 06d6 D807     		lsls	r0, r3, #31
 845 06d8 38D5     		bpl	.L216
 846 06da 23F00103 		bic	r3, r3, #1
 847 06de 43F00203 		orr	r3, r3, #2
 848 06e2 A377     		strb	r3, [r4, #30]
 849 06e4 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 850              	.L209:
 851 06e8 5E48     		ldr	r0, .L223
 852 06ea 2B89     		ldrh	r3, [r5, #8]
 853 06ec 0289     		ldrh	r2, [r0, #8]
 854 06ee 9A42     		cmp	r2, r3
 855 06f0 7FF6ADAC 		bls	.L24
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 16


 856 06f4 FFF7FEFF 		bl	tcp_seg_copy
 857 06f8 0028     		cmp	r0, #0
 858 06fa 3FF4A8AC 		beq	.L24
 859 06fe 002E     		cmp	r6, #0
 860 0700 00F09A80 		beq	.L109
 861 0704 3060     		str	r0, [r6]
 862 0706 AAE5     		b	.L192
 863              	.L66:
 864 0708 7142     		negs	r1, r6
 865 070a 09B2     		sxth	r1, r1
 866 070c FFF7FEFF 		bl	pbuf_header
 867 0710 62E6     		b	.L69
 868              	.L208:
 869 0712 5448     		ldr	r0, .L223
 870 0714 FFF7FEFF 		bl	tcp_seg_copy
 871 0718 0446     		mov	r4, r0
 872 071a 0028     		cmp	r0, #0
 873 071c 3FF497AC 		beq	.L24
 874 0720 F368     		ldr	r3, [r6, #12]
 875 0722 D8F80020 		ldr	r2, [r8]
 876 0726 3189     		ldrh	r1, [r6, #8]
 877 0728 5B68     		ldr	r3, [r3, #4]	@ unaligned
 878 072a 891A     		subs	r1, r1, r2
 879 072c 1944     		add	r1, r1, r3
 880 072e 0029     		cmp	r1, #0
 881 0730 05DD     		ble	.L113
 882 0732 D31A     		subs	r3, r2, r3
 883 0734 99B2     		uxth	r1, r3
 884 0736 3181     		strh	r1, [r6, #8]	@ movhi
 885 0738 7068     		ldr	r0, [r6, #4]
 886 073a FFF7FEFF 		bl	pbuf_realloc
 887              	.L113:
 888 073e 3460     		str	r4, [r6]
 889 0740 2046     		mov	r0, r4
 890 0742 2946     		mov	r1, r5
 891 0744 BDE8F84F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 892 0748 FFF7FEBF 		b	tcp_oos_insert_segment
 893              	.L216:
 894 074c 43F00103 		orr	r3, r3, #1
 895 0750 A377     		strb	r3, [r4, #30]
 896 0752 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 897              	.L121:
 898 0756 4FF6FF73 		movw	r3, #65535
 899 075a A386     		strh	r3, [r4, #52]	@ movhi
 900 075c B9E6     		b	.L55
 901              	.L214:
 902 075e EB68     		ldr	r3, [r5, #12]
 903 0760 9889     		ldrh	r0, [r3, #12]	@ unaligned
 904 0762 FFF7FEFF 		bl	lwip_ntohs
 905 0766 C307     		lsls	r3, r0, #31
 906 0768 52D4     		bmi	.L217
 907              	.L74:
 908 076a A28D     		ldrh	r2, [r4, #44]
 909 076c EB68     		ldr	r3, [r5, #12]
 910 076e 2A81     		strh	r2, [r5, #8]	@ movhi
 911 0770 9889     		ldrh	r0, [r3, #12]	@ unaligned
 912 0772 FFF7FEFF 		bl	lwip_ntohs
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 17


 913 0776 3B4E     		ldr	r6, .L223
 914 0778 8707     		lsls	r7, r0, #30
 915 077a 3189     		ldrh	r1, [r6, #8]
 916 077c 6868     		ldr	r0, [r5, #4]
 917 077e 42BF     		ittt	mi
 918 0780 01F1FF31 		addmi	r1, r1, #-1
 919 0784 89B2     		uxthmi	r1, r1
 920 0786 3181     		strhmi	r1, [r6, #8]	@ movhi
 921 0788 FFF7FEFF 		bl	pbuf_realloc
 922 078c EB68     		ldr	r3, [r5, #12]
 923 078e 2E89     		ldrh	r6, [r5, #8]
 924 0790 9889     		ldrh	r0, [r3, #12]	@ unaligned
 925 0792 FFF7FEFF 		bl	lwip_ntohs
 926 0796 10F00300 		ands	r0, r0, #3
 927 079a 18BF     		it	ne
 928 079c 0120     		movne	r0, #1
 929 079e 3044     		add	r0, r0, r6
 930 07a0 A9F80000 		strh	r0, [r9]	@ movhi
 931 07a4 ACE6     		b	.L73
 932              	.L83:
 933 07a6 B9F80030 		ldrh	r3, [r9]
 934 07aa D8F800E0 		ldr	lr, [r8]
 935 07ae 1A46     		mov	r2, r3
 936 07b0 0026     		movs	r6, #0
 937              	.L119:
 938 07b2 6667     		str	r6, [r4, #116]
 939 07b4 0CE7     		b	.L78
 940              	.L125:
 941 07b6 BE46     		mov	lr, r7
 942 07b8 1346     		mov	r3, r2
 943              	.L84:
 944 07ba 0029     		cmp	r1, #0
 945 07bc F9DD     		ble	.L119
 946 07be CEEB0000 		rsb	r0, lr, r0
 947 07c2 EB68     		ldr	r3, [r5, #12]
 948 07c4 2881     		strh	r0, [r5, #8]	@ movhi
 949 07c6 9889     		ldrh	r0, [r3, #12]	@ unaligned
 950 07c8 FFF7FEFF 		bl	lwip_ntohs
 951 07cc 254F     		ldr	r7, .L223
 952 07ce 8307     		lsls	r3, r0, #30
 953 07d0 3989     		ldrh	r1, [r7, #8]
 954 07d2 6868     		ldr	r0, [r5, #4]
 955 07d4 42BF     		ittt	mi
 956 07d6 01F1FF31 		addmi	r1, r1, #-1
 957 07da 89B2     		uxthmi	r1, r1
 958 07dc 3981     		strhmi	r1, [r7, #8]	@ movhi
 959 07de FFF7FEFF 		bl	pbuf_realloc
 960 07e2 EB68     		ldr	r3, [r5, #12]
 961 07e4 2F89     		ldrh	r7, [r5, #8]
 962 07e6 9889     		ldrh	r0, [r3, #12]	@ unaligned
 963 07e8 FFF7FEFF 		bl	lwip_ntohs
 964 07ec 10F00300 		ands	r0, r0, #3
 965 07f0 18BF     		it	ne
 966 07f2 0120     		movne	r0, #1
 967 07f4 3B18     		adds	r3, r7, r0
 968 07f6 9BB2     		uxth	r3, r3
 969 07f8 1A46     		mov	r2, r3
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 18


 970 07fa D8F800E0 		ldr	lr, [r8]
 971 07fe A9F80030 		strh	r3, [r9]	@ movhi
 972 0802 D6E7     		b	.L119
 973              	.L207:
 974 0804 1748     		ldr	r0, .L223
 975 0806 FFF7FEFF 		bl	tcp_seg_copy
 976 080a 6067     		str	r0, [r4, #116]
 977 080c BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 978              	.L217:
 979 0810 EE68     		ldr	r6, [r5, #12]
 980 0812 B789     		ldrh	r7, [r6, #12]	@ unaligned
 981 0814 3846     		mov	r0, r7
 982 0816 FFF7FEFF 		bl	lwip_ntohs
 983 081a 00F03E00 		and	r0, r0, #62
 984 081e FFF7FEFF 		bl	lwip_htons
 985 0822 27F47C57 		bic	r7, r7, #16128
 986 0826 3843     		orrs	r0, r0, r7
 987 0828 B081     		strh	r0, [r6, #12]	@ unaligned
 988 082a 9EE7     		b	.L74
 989              	.L38:
 990 082c 7FF432AC 		bne	.L56
 991 0830 2046     		mov	r0, r4
 992 0832 FFF7FEFF 		bl	tcp_rexmit_fast
 993 0836 2DE4     		b	.L56
 994              	.L109:
 995 0838 6067     		str	r0, [r4, #116]
 996 083a 10E5     		b	.L192
 997              	.L124:
 998 083c B646     		mov	lr, r6
 999 083e 1346     		mov	r3, r2
 1000 0840 3E46     		mov	r6, r7
 1001 0842 BAE7     		b	.L84
 1002              	.L213:
 1003 0844 2B68     		ldr	r3, [r5]
 1004 0846 DE68     		ldr	r6, [r3, #12]
 1005 0848 B789     		ldrh	r7, [r6, #12]	@ unaligned
 1006 084a 3846     		mov	r0, r7
 1007 084c FFF7FEFF 		bl	lwip_ntohs
 1008 0850 00F03E00 		and	r0, r0, #62
 1009 0854 FFF7FEFF 		bl	lwip_htons
 1010 0858 27F47C57 		bic	r7, r7, #16128
 1011 085c 3843     		orrs	r0, r0, r7
 1012 085e B081     		strh	r0, [r6, #12]	@ unaligned
 1013 0860 16E6     		b	.L117
 1014              	.L224:
 1015 0862 00BF     		.align	2
 1016              	.L223:
 1017 0864 00000000 		.word	.LANCHOR5
 1018              		.size	tcp_receive, .-tcp_receive
 1019              		.section	.text.tcp_parseopt.isra.0,"ax",%progbits
 1020              		.align	2
 1021              		.thumb
 1022              		.thumb_func
 1023              		.type	tcp_parseopt.isra.0, %function
 1024              	tcp_parseopt.isra.0:
 1025              		@ args = 0, pretend = 0, frame = 0
 1026              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 19


 1027 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1028 0002 224C     		ldr	r4, .L247
 1029 0004 0646     		mov	r6, r0
 1030 0006 2568     		ldr	r5, [r4]
 1031 0008 A889     		ldrh	r0, [r5, #12]	@ unaligned
 1032 000a FFF7FEFF 		bl	lwip_ntohs
 1033 000e C0F30F30 		ubfx	r0, r0, #12, #16
 1034 0012 0528     		cmp	r0, #5
 1035 0014 00D8     		bhi	.L244
 1036              	.L225:
 1037 0016 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1038              	.L244:
 1039 0018 2368     		ldr	r3, [r4]
 1040 001a 9889     		ldrh	r0, [r3, #12]	@ unaligned
 1041 001c FFF7FEFF 		bl	lwip_ntohs
 1042 0020 000B     		lsrs	r0, r0, #12
 1043 0022 441F     		subs	r4, r0, #5
 1044 0024 A400     		lsls	r4, r4, #2
 1045 0026 A4B2     		uxth	r4, r4
 1046 0028 002C     		cmp	r4, #0
 1047 002a F4D0     		beq	.L225
 1048 002c 05F11401 		add	r1, r5, #20
 1049 0030 0023     		movs	r3, #0
 1050 0032 CA5C     		ldrb	r2, [r1, r3]	@ zero_extendqisi2
 1051 0034 40F2B355 		movw	r5, #1459
 1052 0038 012A     		cmp	r2, #1
 1053 003a 40F2B450 		movw	r0, #1460
 1054 003e 1AD0     		beq	.L230
 1055              	.L246:
 1056 0040 E9D3     		bcc	.L225
 1057 0042 022A     		cmp	r2, #2
 1058 0044 1AD1     		bne	.L245
 1059 0046 CA18     		adds	r2, r1, r3
 1060 0048 5778     		ldrb	r7, [r2, #1]	@ zero_extendqisi2
 1061 004a 042F     		cmp	r7, #4
 1062 004c E3D1     		bne	.L225
 1063 004e DF1C     		adds	r7, r3, #3
 1064 0050 A742     		cmp	r7, r4
 1065 0052 E0DA     		bge	.L225
 1066 0054 9778     		ldrb	r7, [r2, #2]	@ zero_extendqisi2
 1067 0056 D278     		ldrb	r2, [r2, #3]	@ zero_extendqisi2
 1068 0058 0433     		adds	r3, r3, #4
 1069 005a 42EA0722 		orr	r2, r2, r7, lsl #8
 1070 005e 571E     		subs	r7, r2, #1
 1071 0060 BFB2     		uxth	r7, r7
 1072 0062 AF42     		cmp	r7, r5
 1073 0064 88BF     		it	hi
 1074 0066 0246     		movhi	r2, r0
 1075 0068 9BB2     		uxth	r3, r3
 1076 006a 3280     		strh	r2, [r6]	@ movhi
 1077              	.L232:
 1078 006c 9C42     		cmp	r4, r3
 1079 006e D2D9     		bls	.L225
 1080 0070 CA5C     		ldrb	r2, [r1, r3]	@ zero_extendqisi2
 1081 0072 012A     		cmp	r2, #1
 1082 0074 E4D1     		bne	.L246
 1083              	.L230:
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 20


 1084 0076 0133     		adds	r3, r3, #1
 1085 0078 9BB2     		uxth	r3, r3
 1086 007a F7E7     		b	.L232
 1087              	.L245:
 1088 007c CA18     		adds	r2, r1, r3
 1089 007e 5278     		ldrb	r2, [r2, #1]	@ zero_extendqisi2
 1090 0080 002A     		cmp	r2, #0
 1091 0082 C8D0     		beq	.L225
 1092 0084 1344     		add	r3, r3, r2
 1093 0086 9BB2     		uxth	r3, r3
 1094 0088 F0E7     		b	.L232
 1095              	.L248:
 1096 008a 00BF     		.align	2
 1097              	.L247:
 1098 008c 00000000 		.word	.LANCHOR2
 1099              		.size	tcp_parseopt.isra.0, .-tcp_parseopt.isra.0
 1100              		.section	.text.tcp_input,"ax",%progbits
 1101              		.align	2
 1102              		.global	tcp_input
 1103              		.thumb
 1104              		.thumb_func
 1105              		.type	tcp_input, %function
 1106              	tcp_input:
 1107              		@ args = 0, pretend = 0, frame = 24
 1108              		@ frame_needed = 0, uses_anonymous_args = 0
 1109 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1110 0004 A44C     		ldr	r4, .L473
 1111 0006 4368     		ldr	r3, [r0, #4]
 1112 0008 B4F8AE20 		ldrh	r2, [r4, #174]
 1113 000c DFF8ACE2 		ldr	lr, .L473+36
 1114 0010 0132     		adds	r2, r2, #1
 1115 0012 A4F8AE20 		strh	r2, [r4, #174]	@ movhi
 1116 0016 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 1117 0018 A04E     		ldr	r6, .L473+4
 1118 001a 02F00F02 		and	r2, r2, #15
 1119 001e 9200     		lsls	r2, r2, #2
 1120 0020 89B0     		sub	sp, sp, #36
 1121 0022 8946     		mov	r9, r1
 1122 0024 9F18     		adds	r7, r3, r2
 1123 0026 5142     		negs	r1, r2
 1124 0028 0546     		mov	r5, r0
 1125 002a CEF80030 		str	r3, [lr]
 1126 002e 3760     		str	r7, [r6]
 1127 0030 FFF7FEFF 		bl	pbuf_header
 1128 0034 10B9     		cbnz	r0, .L456
 1129 0036 2B89     		ldrh	r3, [r5, #8]
 1130 0038 132B     		cmp	r3, #19
 1131 003a 0FD8     		bhi	.L251
 1132              	.L456:
 1133 003c B4F8B630 		ldrh	r3, [r4, #182]
 1134 0040 0133     		adds	r3, r3, #1
 1135 0042 A4F8B630 		strh	r3, [r4, #182]	@ movhi
 1136              	.L252:
 1137 0046 B4F8B230 		ldrh	r3, [r4, #178]
 1138 004a 2846     		mov	r0, r5
 1139 004c 0133     		adds	r3, r3, #1
 1140 004e A4F8B230 		strh	r3, [r4, #178]	@ movhi
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 21


 1141              	.L458:
 1142 0052 09B0     		add	sp, sp, #36
 1143              		@ sp needed
 1144 0054 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1145 0058 FFF7FEBF 		b	pbuf_free
 1146              	.L251:
 1147 005c DFF86082 		ldr	r8, .L473+40
 1148 0060 4946     		mov	r1, r9
 1149 0062 D8F80000 		ldr	r0, [r8]
 1150 0066 FFF7FEFF 		bl	ip4_addr_isbroadcast
 1151 006a B0B9     		cbnz	r0, .L253
 1152 006c D8F80030 		ldr	r3, [r8]
 1153 0070 03F0F003 		and	r3, r3, #240
 1154 0074 E02B     		cmp	r3, #224
 1155 0076 10D0     		beq	.L253
 1156 0078 2B89     		ldrh	r3, [r5, #8]
 1157 007a DFF84892 		ldr	r9, .L473+44
 1158 007e 0093     		str	r3, [sp]
 1159 0080 4946     		mov	r1, r9
 1160 0082 2846     		mov	r0, r5
 1161 0084 4246     		mov	r2, r8
 1162 0086 0623     		movs	r3, #6
 1163 0088 FFF7FEFF 		bl	inet_chksum_pseudo
 1164 008c 58B1     		cbz	r0, .L255
 1165 008e B4F8B430 		ldrh	r3, [r4, #180]
 1166 0092 0133     		adds	r3, r3, #1
 1167 0094 A4F8B430 		strh	r3, [r4, #180]	@ movhi
 1168 0098 D5E7     		b	.L252
 1169              	.L253:
 1170 009a B4F8BC30 		ldrh	r3, [r4, #188]
 1171 009e 0133     		adds	r3, r3, #1
 1172 00a0 A4F8BC30 		strh	r3, [r4, #188]	@ movhi
 1173 00a4 CFE7     		b	.L252
 1174              	.L255:
 1175 00a6 3368     		ldr	r3, [r6]
 1176 00a8 9889     		ldrh	r0, [r3, #12]	@ unaligned
 1177 00aa FFF7FEFF 		bl	lwip_ntohs
 1178 00ae 000B     		lsrs	r0, r0, #12
 1179 00b0 C0EB8030 		rsb	r0, r0, r0, lsl #14
 1180 00b4 8100     		lsls	r1, r0, #2
 1181 00b6 09B2     		sxth	r1, r1
 1182 00b8 2846     		mov	r0, r5
 1183 00ba FFF7FEFF 		bl	pbuf_header
 1184 00be 0746     		mov	r7, r0
 1185 00c0 0028     		cmp	r0, #0
 1186 00c2 BBD1     		bne	.L456
 1187 00c4 D6F800A0 		ldr	r10, [r6]
 1188 00c8 BAF80000 		ldrh	r0, [r10]	@ unaligned
 1189 00cc FFF7FEFF 		bl	lwip_ntohs
 1190 00d0 D6F800B0 		ldr	fp, [r6]
 1191 00d4 AAF80000 		strh	r0, [r10]	@ unaligned
 1192 00d8 BBF80200 		ldrh	r0, [fp, #2]	@ unaligned
 1193 00dc FFF7FEFF 		bl	lwip_ntohs
 1194 00e0 D6F800A0 		ldr	r10, [r6]
 1195 00e4 ABF80200 		strh	r0, [fp, #2]	@ unaligned
 1196 00e8 DAF80400 		ldr	r0, [r10, #4]	@ unaligned
 1197 00ec FFF7FEFF 		bl	lwip_ntohl
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 22


 1198 00f0 6B49     		ldr	r1, .L473+8
 1199 00f2 D6F800B0 		ldr	fp, [r6]
 1200 00f6 0860     		str	r0, [r1]
 1201 00f8 CAF80400 		str	r0, [r10, #4]	@ unaligned
 1202 00fc DBF80800 		ldr	r0, [fp, #8]	@ unaligned
 1203 0100 FFF7FEFF 		bl	lwip_ntohl
 1204 0104 674A     		ldr	r2, .L473+12
 1205 0106 D6F800A0 		ldr	r10, [r6]
 1206 010a 1060     		str	r0, [r2]
 1207 010c CBF80800 		str	r0, [fp, #8]	@ unaligned
 1208 0110 BAF80E00 		ldrh	r0, [r10, #14]	@ unaligned
 1209 0114 FFF7FEFF 		bl	lwip_ntohs
 1210 0118 3368     		ldr	r3, [r6]
 1211 011a AAF80E00 		strh	r0, [r10, #14]	@ unaligned
 1212 011e 9889     		ldrh	r0, [r3, #12]	@ unaligned
 1213 0120 FFF7FEFF 		bl	lwip_ntohs
 1214 0124 C0B2     		uxtb	r0, r0
 1215 0126 0390     		str	r0, [sp, #12]
 1216 0128 10F00303 		ands	r3, r0, #3
 1217 012c 2889     		ldrh	r0, [r5, #8]
 1218 012e 18BF     		it	ne
 1219 0130 0123     		movne	r3, #1
 1220 0132 0344     		add	r3, r3, r0
 1221 0134 5C49     		ldr	r1, .L473+16
 1222 0136 9BB2     		uxth	r3, r3
 1223 0138 039A     		ldr	r2, [sp, #12]
 1224 013a 0593     		str	r3, [sp, #20]
 1225 013c DFF888B1 		ldr	fp, .L473+48
 1226 0140 02F03F03 		and	r3, r2, #63
 1227 0144 D1F800C0 		ldr	ip, [r1]
 1228 0148 584A     		ldr	r2, .L473+20
 1229 014a 0599     		ldr	r1, [sp, #20]
 1230 014c 8BF80030 		strb	r3, [fp]
 1231 0150 0690     		str	r0, [sp, #24]
 1232 0152 1180     		strh	r1, [r2]	@ movhi
 1233 0154 3368     		ldr	r3, [r6]
 1234 0156 BCF1000F 		cmp	ip, #0
 1235 015a 66D0     		beq	.L260
 1236 015c D9F80000 		ldr	r0, [r9]
 1237 0160 D8F80020 		ldr	r2, [r8]
 1238 0164 0490     		str	r0, [sp, #16]
 1239 0166 1988     		ldrh	r1, [r3]	@ unaligned
 1240 0168 3846     		mov	r0, r7
 1241 016a 0792     		str	r2, [sp, #28]
 1242 016c 6746     		mov	r7, ip
 1243 016e 0295     		str	r5, [sp, #8]
 1244 0170 04E0     		b	.L261
 1245              	.L258:
 1246 0172 FA68     		ldr	r2, [r7, #12]
 1247 0174 3846     		mov	r0, r7
 1248 0176 002A     		cmp	r2, #0
 1249 0178 56D0     		beq	.L454
 1250 017a 1746     		mov	r7, r2
 1251              	.L261:
 1252 017c BA8B     		ldrh	r2, [r7, #28]
 1253 017e 8A42     		cmp	r2, r1
 1254 0180 F7D1     		bne	.L258
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 23


 1255 0182 B7F81AA0 		ldrh	r10, [r7, #26]
 1256 0186 5A88     		ldrh	r2, [r3, #2]	@ unaligned
 1257 0188 9245     		cmp	r10, r2
 1258 018a F2D1     		bne	.L258
 1259 018c 7D68     		ldr	r5, [r7, #4]
 1260 018e 049A     		ldr	r2, [sp, #16]
 1261 0190 9542     		cmp	r5, r2
 1262 0192 EED1     		bne	.L258
 1263 0194 3D68     		ldr	r5, [r7]
 1264 0196 079A     		ldr	r2, [sp, #28]
 1265 0198 9542     		cmp	r5, r2
 1266 019a EAD1     		bne	.L258
 1267 019c 029D     		ldr	r5, [sp, #8]
 1268 019e 28B1     		cbz	r0, .L259
 1269 01a0 FA68     		ldr	r2, [r7, #12]
 1270 01a2 4149     		ldr	r1, .L473+16
 1271 01a4 C260     		str	r2, [r0, #12]
 1272 01a6 0F60     		str	r7, [r1]
 1273 01a8 C7F80CC0 		str	ip, [r7, #12]
 1274              	.L259:
 1275 01ac DFF80491 		ldr	r9, .L473+28
 1276 01b0 0698     		ldr	r0, [sp, #24]
 1277 01b2 0399     		ldr	r1, [sp, #12]
 1278 01b4 DFF814A1 		ldr	r10, .L473+52
 1279 01b8 DFF81481 		ldr	r8, .L473+56
 1280 01bc 0022     		movs	r2, #0
 1281 01be A9F80800 		strh	r0, [r9, #8]	@ movhi
 1282 01c2 0807     		lsls	r0, r1, #28
 1283 01c4 C9F80450 		str	r5, [r9, #4]
 1284 01c8 C9F80C30 		str	r3, [r9, #12]
 1285 01cc C9F80020 		str	r2, [r9]
 1286 01d0 CAF80020 		str	r2, [r10]
 1287 01d4 88F80020 		strb	r2, [r8]
 1288 01d8 03D5     		bpl	.L348
 1289 01da 6B7B     		ldrb	r3, [r5, #13]	@ zero_extendqisi2
 1290 01dc 43F00103 		orr	r3, r3, #1
 1291 01e0 6B73     		strb	r3, [r5, #13]
 1292              	.L348:
 1293 01e2 BB6F     		ldr	r3, [r7, #120]
 1294 01e4 002B     		cmp	r3, #0
 1295 01e6 75D0     		beq	.L278
 1296 01e8 3846     		mov	r0, r7
 1297 01ea FFF7FEFF 		bl	tcp_process_refused_data
 1298 01ee 0A30     		adds	r0, r0, #10
 1299 01f0 06D0     		beq	.L279
 1300 01f2 BB6F     		ldr	r3, [r7, #120]
 1301 01f4 002B     		cmp	r3, #0
 1302 01f6 6DD0     		beq	.L278
 1303 01f8 2C4D     		ldr	r5, .L473+20
 1304 01fa 2B88     		ldrh	r3, [r5]
 1305 01fc 002B     		cmp	r3, #0
 1306 01fe 69D0     		beq	.L278
 1307              	.L279:
 1308 0200 B4F8B230 		ldrh	r3, [r4, #178]
 1309 0204 2A4D     		ldr	r5, .L473+24
 1310 0206 0133     		adds	r3, r3, #1
 1311 0208 A4F8B230 		strh	r3, [r4, #178]	@ movhi
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 24


 1312              	.L280:
 1313 020c D9F80400 		ldr	r0, [r9, #4]
 1314 0210 0024     		movs	r4, #0
 1315 0212 2C60     		str	r4, [r5]
 1316 0214 CAF80040 		str	r4, [r10]
 1317 0218 264D     		ldr	r5, .L473+28
 1318 021a 10B1     		cbz	r0, .L249
 1319 021c FFF7FEFF 		bl	pbuf_free
 1320 0220 6C60     		str	r4, [r5, #4]
 1321              	.L249:
 1322 0222 09B0     		add	sp, sp, #36
 1323              		@ sp needed
 1324 0224 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1325              	.L454:
 1326 0228 029D     		ldr	r5, [sp, #8]
 1327              	.L260:
 1328 022a 234A     		ldr	r2, .L473+32
 1329 022c 1268     		ldr	r2, [r2]
 1330 022e 002A     		cmp	r2, #0
 1331 0230 00F09480 		beq	.L349
 1332 0234 1888     		ldrh	r0, [r3]	@ unaligned
 1333 0236 D9F800A0 		ldr	r10, [r9]
 1334 023a D8F800C0 		ldr	ip, [r8]
 1335 023e 03E0     		b	.L350
 1336              	.L262:
 1337 0240 D268     		ldr	r2, [r2, #12]
 1338 0242 002A     		cmp	r2, #0
 1339 0244 00F08A80 		beq	.L349
 1340              	.L350:
 1341 0248 918B     		ldrh	r1, [r2, #28]
 1342 024a 8142     		cmp	r1, r0
 1343 024c F8D1     		bne	.L262
 1344 024e 518B     		ldrh	r1, [r2, #26]
 1345 0250 5F88     		ldrh	r7, [r3, #2]	@ unaligned
 1346 0252 8F42     		cmp	r7, r1
 1347 0254 F4D1     		bne	.L262
 1348 0256 5168     		ldr	r1, [r2, #4]
 1349 0258 5145     		cmp	r1, r10
 1350 025a F1D1     		bne	.L262
 1351 025c 1168     		ldr	r1, [r2]
 1352 025e 6145     		cmp	r1, ip
 1353 0260 EED1     		bne	.L262
 1354 0262 039B     		ldr	r3, [sp, #12]
 1355 0264 5C07     		lsls	r4, r3, #29
 1356 0266 15D4     		bmi	.L264
 1357 0268 9907     		lsls	r1, r3, #30
 1358 026a 40F17082 		bpl	.L265
 1359 026e 0C4C     		ldr	r4, .L473+8
 1360 0270 936A     		ldr	r3, [r2, #40]
 1361 0272 2168     		ldr	r1, [r4]
 1362 0274 CB1A     		subs	r3, r1, r3
 1363 0276 04D4     		bmi	.L266
 1364 0278 948D     		ldrh	r4, [r2, #44]
 1365 027a 1B1B     		subs	r3, r3, r4
 1366 027c 002B     		cmp	r3, #0
 1367 027e 40F3E282 		ble	.L462
 1368              	.L266:
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 25


 1369 0282 059C     		ldr	r4, [sp, #20]
 1370 0284 34B1     		cbz	r4, .L264
 1371 0286 937F     		ldrb	r3, [r2, #30]	@ zero_extendqisi2
 1372 0288 1046     		mov	r0, r2
 1373 028a 43F00203 		orr	r3, r3, #2
 1374 028e 9377     		strb	r3, [r2, #30]
 1375 0290 FFF7FEFF 		bl	tcp_output
 1376              	.L264:
 1377 0294 2846     		mov	r0, r5
 1378 0296 DCE6     		b	.L458
 1379              	.L474:
 1380              		.align	2
 1381              	.L473:
 1382 0298 00000000 		.word	lwip_stats
 1383 029c 00000000 		.word	.LANCHOR2
 1384 02a0 00000000 		.word	.LANCHOR0
 1385 02a4 00000000 		.word	.LANCHOR3
 1386 02a8 00000000 		.word	tcp_active_pcbs
 1387 02ac 00000000 		.word	.LANCHOR4
 1388 02b0 00000000 		.word	tcp_input_pcb
 1389 02b4 00000000 		.word	.LANCHOR5
 1390 02b8 00000000 		.word	tcp_tw_pcbs
 1391 02bc 00000000 		.word	.LANCHOR8
 1392 02c0 00000000 		.word	current_iphdr_dest
 1393 02c4 00000000 		.word	current_iphdr_src
 1394 02c8 00000000 		.word	.LANCHOR1
 1395 02cc 00000000 		.word	.LANCHOR6
 1396 02d0 00000000 		.word	.LANCHOR7
 1397              	.L278:
 1398 02d4 9BF80030 		ldrb	r3, [fp]	@ zero_extendqisi2
 1399 02d8 AA4D     		ldr	r5, .L475
 1400 02da 5907     		lsls	r1, r3, #29
 1401 02dc 2F60     		str	r7, [r5]
 1402 02de 21D5     		bpl	.L281
 1403 02e0 3B7E     		ldrb	r3, [r7, #24]	@ zero_extendqisi2
 1404 02e2 022B     		cmp	r3, #2
 1405 02e4 00F02282 		beq	.L463
 1406 02e8 A748     		ldr	r0, .L475+4
 1407 02ea BB6A     		ldr	r3, [r7, #40]
 1408 02ec 0268     		ldr	r2, [r0]
 1409 02ee D31A     		subs	r3, r2, r3
 1410 02f0 04D4     		bmi	.L284
 1411 02f2 B98D     		ldrh	r1, [r7, #44]
 1412 02f4 5B1A     		subs	r3, r3, r1
 1413 02f6 002B     		cmp	r3, #0
 1414 02f8 40F31E82 		ble	.L283
 1415              	.L284:
 1416 02fc 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 1417 0300 1A07     		lsls	r2, r3, #28
 1418 0302 1CD5     		bpl	.L464
 1419 0304 D7F88C30 		ldr	r3, [r7, #140]
 1420 0308 1BB1     		cbz	r3, .L331
 1421 030a 3869     		ldr	r0, [r7, #16]
 1422 030c 6FF00A01 		mvn	r1, #10
 1423 0310 9847     		blx	r3
 1424              	.L331:
 1425 0312 3946     		mov	r1, r7
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 26


 1426 0314 9D48     		ldr	r0, .L475+8
 1427 0316 FFF7FEFF 		bl	tcp_pcb_remove
 1428 031a 3946     		mov	r1, r7
 1429 031c 0120     		movs	r0, #1
 1430 031e FFF7FEFF 		bl	memp_free
 1431 0322 73E7     		b	.L280
 1432              	.L281:
 1433 0324 9A07     		lsls	r2, r3, #30
 1434 0326 40F1DC80 		bpl	.L286
 1435 032a 3B7E     		ldrb	r3, [r7, #24]	@ zero_extendqisi2
 1436 032c 023B     		subs	r3, r3, #2
 1437 032e 012B     		cmp	r3, #1
 1438 0330 40F2D780 		bls	.L286
 1439              	.L302:
 1440 0334 BB7F     		ldrb	r3, [r7, #30]	@ zero_extendqisi2
 1441 0336 43F00203 		orr	r3, r3, #2
 1442 033a BB77     		strb	r3, [r7, #30]
 1443 033c DEE7     		b	.L284
 1444              	.L464:
 1445 033e DB06     		lsls	r3, r3, #27
 1446 0340 40F1BC81 		bpl	.L330
 1447 0344 BB7F     		ldrb	r3, [r7, #30]	@ zero_extendqisi2
 1448 0346 DE06     		lsls	r6, r3, #27
 1449 0348 E3D4     		bmi	.L331
 1450 034a D7F88C30 		ldr	r3, [r7, #140]
 1451 034e 002B     		cmp	r3, #0
 1452 0350 DFD0     		beq	.L331
 1453 0352 3869     		ldr	r0, [r7, #16]
 1454 0354 6FF00B01 		mvn	r1, #11
 1455 0358 9847     		blx	r3
 1456 035a DAE7     		b	.L331
 1457              	.L349:
 1458 035c 8C48     		ldr	r0, .L475+12
 1459 035e D0F800B0 		ldr	fp, [r0]
 1460 0362 BBF1000F 		cmp	fp, #0
 1461 0366 20D0     		beq	.L269
 1462 0368 D8F80010 		ldr	r1, [r8]
 1463 036c 4FF0000A 		mov	r10, #0
 1464 0370 B3F802C0 		ldrh	ip, [r3, #2]	@ unaligned
 1465 0374 5746     		mov	r7, r10
 1466 0376 0491     		str	r1, [sp, #16]
 1467 0378 5046     		mov	r0, r10
 1468 037a 5A46     		mov	r2, fp
 1469 037c 0693     		str	r3, [sp, #24]
 1470 037e 03E0     		b	.L273
 1471              	.L270:
 1472 0380 D168     		ldr	r1, [r2, #12]
 1473 0382 1046     		mov	r0, r2
 1474 0384 69B1     		cbz	r1, .L272
 1475 0386 0A46     		mov	r2, r1
 1476              	.L273:
 1477 0388 518B     		ldrh	r1, [r2, #26]
 1478 038a 6145     		cmp	r1, ip
 1479 038c F8D1     		bne	.L270
 1480 038e 1168     		ldr	r1, [r2]
 1481 0390 049B     		ldr	r3, [sp, #16]
 1482 0392 9942     		cmp	r1, r3
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 27


 1483 0394 2AD0     		beq	.L354
 1484 0396 0029     		cmp	r1, #0
 1485 0398 08BF     		it	eq
 1486 039a 9246     		moveq	r10, r2
 1487 039c 08BF     		it	eq
 1488 039e 0746     		moveq	r7, r0
 1489 03a0 EEE7     		b	.L270
 1490              	.L272:
 1491 03a2 069B     		ldr	r3, [sp, #24]
 1492 03a4 BAF1000F 		cmp	r10, #0
 1493 03a8 23D1     		bne	.L271
 1494              	.L269:
 1495 03aa 9889     		ldrh	r0, [r3, #12]	@ unaligned
 1496 03ac FFF7FEFF 		bl	lwip_ntohs
 1497 03b0 4107     		lsls	r1, r0, #29
 1498 03b2 3FF56FAF 		bmi	.L264
 1499 03b6 B4F8BC10 		ldrh	r1, [r4, #188]
 1500 03ba B4F8B220 		ldrh	r2, [r4, #178]
 1501 03be 3368     		ldr	r3, [r6]
 1502 03c0 0131     		adds	r1, r1, #1
 1503 03c2 0132     		adds	r2, r2, #1
 1504 03c4 A4F8BC10 		strh	r1, [r4, #188]	@ movhi
 1505 03c8 A4F8B220 		strh	r2, [r4, #178]	@ movhi
 1506 03cc 5A88     		ldrh	r2, [r3, #2]	@ unaligned
 1507 03ce 714C     		ldr	r4, .L475+16
 1508 03d0 6D4E     		ldr	r6, .L475+4
 1509 03d2 2188     		ldrh	r1, [r4]
 1510 03d4 0092     		str	r2, [sp]
 1511 03d6 3268     		ldr	r2, [r6]
 1512 03d8 1B88     		ldrh	r3, [r3]	@ unaligned
 1513 03da 1144     		add	r1, r1, r2
 1514 03dc 6E4A     		ldr	r2, .L475+20
 1515 03de 1068     		ldr	r0, [r2]
 1516 03e0 0193     		str	r3, [sp, #4]
 1517 03e2 6E4A     		ldr	r2, .L475+24
 1518 03e4 6E4B     		ldr	r3, .L475+28
 1519 03e6 FFF7FEFF 		bl	tcp_rst
 1520 03ea 53E7     		b	.L264
 1521              	.L354:
 1522 03ec 069B     		ldr	r3, [sp, #24]
 1523 03ee 9246     		mov	r10, r2
 1524 03f0 0746     		mov	r7, r0
 1525              	.L271:
 1526 03f2 3FB1     		cbz	r7, .L274
 1527 03f4 DAF80C20 		ldr	r2, [r10, #12]
 1528 03f8 6548     		ldr	r0, .L475+12
 1529 03fa FA60     		str	r2, [r7, #12]
 1530 03fc C0F800A0 		str	r10, [r0]
 1531 0400 CAF80CB0 		str	fp, [r10, #12]
 1532              	.L274:
 1533 0404 0399     		ldr	r1, [sp, #12]
 1534 0406 4F07     		lsls	r7, r1, #29
 1535 0408 3FF544AF 		bmi	.L264
 1536 040c 01F01002 		and	r2, r1, #16
 1537 0410 02F0FF07 		and	r7, r2, #255
 1538 0414 002A     		cmp	r2, #0
 1539 0416 40F0A382 		bne	.L465
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 28


 1540 041a 0398     		ldr	r0, [sp, #12]
 1541 041c 8007     		lsls	r0, r0, #30
 1542 041e 7FF539AF 		bpl	.L264
 1543 0422 9AF81900 		ldrb	r0, [r10, #25]	@ zero_extendqisi2
 1544 0426 FFF7FEFF 		bl	tcp_alloc
 1545 042a 8346     		mov	fp, r0
 1546 042c 0028     		cmp	r0, #0
 1547 042e 00F09182 		beq	.L466
 1548 0432 3368     		ldr	r3, [r6]
 1549 0434 5449     		ldr	r1, .L475+4
 1550 0436 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 1551 0438 93F801E0 		ldrb	lr, [r3, #1]	@ zero_extendqisi2
 1552 043c 0868     		ldr	r0, [r1]
 1553 043e BAF81AC0 		ldrh	ip, [r10, #26]
 1554 0442 D9F80010 		ldr	r1, [r9]
 1555 0446 D8F80020 		ldr	r2, [r8]
 1556 044a 44EA0E2E 		orr	lr, r4, lr, lsl #8
 1557 044e 0326     		movs	r6, #3
 1558 0450 441C     		adds	r4, r0, #1
 1559 0452 CBF80020 		str	r2, [fp]
 1560 0456 ABF81AC0 		strh	ip, [fp, #26]	@ movhi
 1561 045a ABF81CE0 		strh	lr, [fp, #28]	@ movhi
 1562 045e CBF80410 		str	r1, [fp, #4]
 1563 0462 CBF82840 		str	r4, [fp, #40]
 1564 0466 CBF83040 		str	r4, [fp, #48]
 1565 046a 8BF81860 		strb	r6, [fp, #24]
 1566 046e DB89     		ldrh	r3, [r3, #14]	@ unaligned
 1567 0470 DAF81010 		ldr	r1, [r10, #16]
 1568 0474 DAF81420 		ldr	r2, [r10, #20]
 1569 0478 0138     		subs	r0, r0, #1
 1570 047a CBF81010 		str	r1, [fp, #16]
 1571 047e ABF86030 		strh	r3, [fp, #96]	@ movhi
 1572 0482 ABF86230 		strh	r3, [fp, #98]	@ movhi
 1573 0486 ABF84E30 		strh	r3, [fp, #78]	@ movhi
 1574 048a CBF85400 		str	r0, [fp, #84]
 1575 048e CBF81420 		str	r2, [fp, #20]
 1576 0492 3E4C     		ldr	r4, .L475+8
 1577 0494 9AF80820 		ldrb	r2, [r10, #8]	@ zero_extendqisi2
 1578 0498 2368     		ldr	r3, [r4]
 1579 049a 22F07302 		bic	r2, r2, #115
 1580 049e 8BF80820 		strb	r2, [fp, #8]
 1581 04a2 CBF80C30 		str	r3, [fp, #12]
 1582 04a6 C4F800B0 		str	fp, [r4]
 1583 04aa FFF7FEFF 		bl	tcp_timer_needed
 1584 04ae 3D4B     		ldr	r3, .L475+32
 1585 04b0 0122     		movs	r2, #1
 1586 04b2 0BF13600 		add	r0, fp, #54
 1587 04b6 1A70     		strb	r2, [r3]
 1588 04b8 FFF7FEFF 		bl	tcp_parseopt.isra.0
 1589 04bc 0BF10401 		add	r1, fp, #4
 1590 04c0 BBF83600 		ldrh	r0, [fp, #54]
 1591 04c4 FFF7FEFF 		bl	tcp_eff_send_mss
 1592 04c8 1221     		movs	r1, #18
 1593 04ca ABF83600 		strh	r0, [fp, #54]	@ movhi
 1594 04ce 5846     		mov	r0, fp
 1595 04d0 FFF7FEFF 		bl	tcp_enqueue_flags
 1596 04d4 0028     		cmp	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 29


 1597 04d6 40F05282 		bne	.L467
 1598 04da 5846     		mov	r0, fp
 1599 04dc FFF7FEFF 		bl	tcp_output
 1600 04e0 D8E6     		b	.L264
 1601              	.L286:
 1602 04e2 BB7F     		ldrb	r3, [r7, #30]	@ zero_extendqisi2
 1603 04e4 DB06     		lsls	r3, r3, #27
 1604 04e6 02D4     		bmi	.L287
 1605 04e8 2F4B     		ldr	r3, .L475+36
 1606 04ea 1B68     		ldr	r3, [r3]
 1607 04ec 7B62     		str	r3, [r7, #36]
 1608              	.L287:
 1609 04ee 0023     		movs	r3, #0
 1610 04f0 87F89630 		strb	r3, [r7, #150]
 1611 04f4 07F13600 		add	r0, r7, #54
 1612 04f8 FFF7FEFF 		bl	tcp_parseopt.isra.0
 1613 04fc 3B7E     		ldrb	r3, [r7, #24]	@ zero_extendqisi2
 1614 04fe 023B     		subs	r3, r3, #2
 1615 0500 072B     		cmp	r3, #7
 1616 0502 3FF6FBAE 		bhi	.L284
 1617 0506 DFE803F0 		tbb	[pc, r3]
 1618              	.L289:
 1619 050a BC       		.byte	(.L288-.L289)/2
 1620 050b 9D       		.byte	(.L290-.L289)/2
 1621 050c 8E       		.byte	(.L291-.L289)/2
 1622 050d 74       		.byte	(.L292-.L289)/2
 1623 050e 53       		.byte	(.L293-.L289)/2
 1624 050f 8E       		.byte	(.L291-.L289)/2
 1625 0510 19       		.byte	(.L294-.L289)/2
 1626 0511 04       		.byte	(.L295-.L289)/2
 1627              		.align	1
 1628              	.L295:
 1629 0512 3846     		mov	r0, r7
 1630 0514 FFF7FEFF 		bl	tcp_receive
 1631 0518 9BF80030 		ldrb	r3, [fp]	@ zero_extendqisi2
 1632 051c DA06     		lsls	r2, r3, #27
 1633 051e 7FF5EDAE 		bpl	.L284
 1634 0522 1D49     		ldr	r1, .L475+20
 1635 0524 3B6D     		ldr	r3, [r7, #80]
 1636 0526 0A68     		ldr	r2, [r1]
 1637 0528 9342     		cmp	r3, r2
 1638 052a 7FF4E7AE 		bne	.L284
 1639 052e 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 1640 0532 43F01003 		orr	r3, r3, #16
 1641 0536 88F80030 		strb	r3, [r8]
 1642 053a DFE6     		b	.L284
 1643              	.L294:
 1644 053c 3846     		mov	r0, r7
 1645 053e FFF7FEFF 		bl	tcp_receive
 1646 0542 9BF80030 		ldrb	r3, [fp]	@ zero_extendqisi2
 1647 0546 D906     		lsls	r1, r3, #27
 1648 0548 7FF5D8AE 		bpl	.L284
 1649 054c 124E     		ldr	r6, .L475+20
 1650 054e 3B6D     		ldr	r3, [r7, #80]
 1651 0550 3268     		ldr	r2, [r6]
 1652 0552 9342     		cmp	r3, r2
 1653 0554 7FF4D2AE 		bne	.L284
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 30


 1654 0558 3846     		mov	r0, r7
 1655 055a FFF7FEFF 		bl	tcp_pcb_purge
 1656 055e 0B48     		ldr	r0, .L475+8
 1657 0560 0168     		ldr	r1, [r0]
 1658 0562 0246     		mov	r2, r0
 1659 0564 8F42     		cmp	r7, r1
 1660 0566 00F00881 		beq	.L461
 1661 056a 104B     		ldr	r3, .L475+40
 1662 056c 0A46     		mov	r2, r1
 1663 056e 1960     		str	r1, [r3]
 1664              	.L326:
 1665 0570 002A     		cmp	r2, #0
 1666 0572 00F05C81 		beq	.L459
 1667 0576 D168     		ldr	r1, [r2, #12]
 1668 0578 8F42     		cmp	r7, r1
 1669 057a 00F05481 		beq	.L460
 1670 057e 0A46     		mov	r2, r1
 1671 0580 F6E7     		b	.L326
 1672              	.L476:
 1673 0582 00BF     		.align	2
 1674              	.L475:
 1675 0584 00000000 		.word	tcp_input_pcb
 1676 0588 00000000 		.word	.LANCHOR0
 1677 058c 00000000 		.word	tcp_active_pcbs
 1678 0590 00000000 		.word	tcp_listen_pcbs
 1679 0594 00000000 		.word	.LANCHOR4
 1680 0598 00000000 		.word	.LANCHOR3
 1681 059c 00000000 		.word	current_iphdr_dest
 1682 05a0 00000000 		.word	current_iphdr_src
 1683 05a4 00000000 		.word	tcp_active_pcbs_changed
 1684 05a8 00000000 		.word	tcp_ticks
 1685 05ac 00000000 		.word	tcp_tmp_pcb
 1686              	.L293:
 1687 05b0 3846     		mov	r0, r7
 1688 05b2 FFF7FEFF 		bl	tcp_receive
 1689 05b6 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 1690 05ba 9806     		lsls	r0, r3, #26
 1691 05bc 7FF59EAE 		bpl	.L284
 1692 05c0 BB7F     		ldrb	r3, [r7, #30]	@ zero_extendqisi2
 1693 05c2 A64C     		ldr	r4, .L477
 1694 05c4 43F00203 		orr	r3, r3, #2
 1695 05c8 3846     		mov	r0, r7
 1696 05ca BB77     		strb	r3, [r7, #30]
 1697 05cc FFF7FEFF 		bl	tcp_pcb_purge
 1698 05d0 2168     		ldr	r1, [r4]
 1699 05d2 2246     		mov	r2, r4
 1700 05d4 8F42     		cmp	r7, r1
 1701 05d6 00F0D080 		beq	.L461
 1702 05da A14B     		ldr	r3, .L477+4
 1703 05dc 0A46     		mov	r2, r1
 1704 05de 1960     		str	r1, [r3]
 1705              	.L321:
 1706 05e0 002A     		cmp	r2, #0
 1707 05e2 00F02481 		beq	.L459
 1708 05e6 D168     		ldr	r1, [r2, #12]
 1709 05e8 8F42     		cmp	r7, r1
 1710 05ea 00F01C81 		beq	.L460
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 31


 1711 05ee 0A46     		mov	r2, r1
 1712 05f0 F6E7     		b	.L321
 1713              	.L292:
 1714 05f2 3846     		mov	r0, r7
 1715 05f4 FFF7FEFF 		bl	tcp_receive
 1716 05f8 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 1717 05fc 13F0200F 		tst	r3, #32
 1718 0600 9BF80030 		ldrb	r3, [fp]	@ zero_extendqisi2
 1719 0604 00F0EF80 		beq	.L312
 1720 0608 DE06     		lsls	r6, r3, #27
 1721 060a 05D5     		bpl	.L313
 1722 060c 9549     		ldr	r1, .L477+8
 1723 060e 3B6D     		ldr	r3, [r7, #80]
 1724 0610 0A68     		ldr	r2, [r1]
 1725 0612 9342     		cmp	r3, r2
 1726 0614 00F0F380 		beq	.L468
 1727              	.L313:
 1728 0618 BA7F     		ldrb	r2, [r7, #30]	@ zero_extendqisi2
 1729 061a 0823     		movs	r3, #8
 1730 061c 42F00202 		orr	r2, r2, #2
 1731 0620 BA77     		strb	r2, [r7, #30]
 1732 0622 3B76     		strb	r3, [r7, #24]
 1733 0624 6AE6     		b	.L284
 1734              	.L291:
 1735 0626 3846     		mov	r0, r7
 1736 0628 FFF7FEFF 		bl	tcp_receive
 1737 062c 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 1738 0630 9B06     		lsls	r3, r3, #26
 1739 0632 7FF563AE 		bpl	.L284
 1740              	.L457:
 1741 0636 BA7F     		ldrb	r2, [r7, #30]	@ zero_extendqisi2
 1742 0638 0723     		movs	r3, #7
 1743 063a 42F00202 		orr	r2, r2, #2
 1744 063e BA77     		strb	r2, [r7, #30]
 1745 0640 3B76     		strb	r3, [r7, #24]
 1746 0642 5BE6     		b	.L284
 1747              	.L290:
 1748 0644 9BF80030 		ldrb	r3, [fp]	@ zero_extendqisi2
 1749 0648 D806     		lsls	r0, r3, #27
 1750 064a 40F18880 		bpl	.L303
 1751 064e 854C     		ldr	r4, .L477+8
 1752 0650 BB6C     		ldr	r3, [r7, #72]
 1753 0652 2068     		ldr	r0, [r4]
 1754 0654 DB43     		mvns	r3, r3
 1755 0656 C342     		cmn	r3, r0
 1756 0658 04D4     		bmi	.L304
 1757 065a 3B6D     		ldr	r3, [r7, #80]
 1758 065c C31A     		subs	r3, r0, r3
 1759 065e 002B     		cmp	r3, #0
 1760 0660 40F39980 		ble	.L469
 1761              	.L304:
 1762 0664 3368     		ldr	r3, [r6]
 1763 0666 804E     		ldr	r6, .L477+12
 1764 0668 5C88     		ldrh	r4, [r3, #2]	@ unaligned
 1765 066a 3188     		ldrh	r1, [r6]
 1766 066c 7F4E     		ldr	r6, .L477+16
 1767 066e 3268     		ldr	r2, [r6]
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 32


 1768 0670 0094     		str	r4, [sp]
 1769 0672 1B88     		ldrh	r3, [r3]	@ unaligned
 1770 0674 1144     		add	r1, r1, r2
 1771 0676 0193     		str	r3, [sp, #4]
 1772 0678 7D4A     		ldr	r2, .L477+20
 1773 067a 7E4B     		ldr	r3, .L477+24
 1774 067c FFF7FEFF 		bl	tcp_rst
 1775 0680 3CE6     		b	.L284
 1776              	.L288:
 1777 0682 9BF80030 		ldrb	r3, [fp]	@ zero_extendqisi2
 1778 0686 03F01203 		and	r3, r3, #18
 1779 068a 122B     		cmp	r3, #18
 1780 068c 00F0FA80 		beq	.L470
 1781              	.L296:
 1782 0690 9BF80030 		ldrb	r3, [fp]	@ zero_extendqisi2
 1783 0694 DC06     		lsls	r4, r3, #27
 1784 0696 7FF531AE 		bpl	.L284
 1785 069a 3368     		ldr	r3, [r6]
 1786 069c 724C     		ldr	r4, .L477+12
 1787 069e 734E     		ldr	r6, .L477+16
 1788 06a0 5888     		ldrh	r0, [r3, #2]	@ unaligned
 1789 06a2 3268     		ldr	r2, [r6]
 1790 06a4 2188     		ldrh	r1, [r4]
 1791 06a6 0090     		str	r0, [sp]
 1792 06a8 1B88     		ldrh	r3, [r3]	@ unaligned
 1793 06aa 1144     		add	r1, r1, r2
 1794 06ac 6D4A     		ldr	r2, .L477+8
 1795 06ae 1068     		ldr	r0, [r2]
 1796 06b0 0193     		str	r3, [sp, #4]
 1797 06b2 6F4A     		ldr	r2, .L477+20
 1798 06b4 6F4B     		ldr	r3, .L477+24
 1799 06b6 FFF7FEFF 		bl	tcp_rst
 1800 06ba 1FE6     		b	.L284
 1801              	.L330:
 1802 06bc B7F86420 		ldrh	r2, [r7, #100]
 1803 06c0 3AB1     		cbz	r2, .L335
 1804 06c2 FB6F     		ldr	r3, [r7, #124]
 1805 06c4 2BB1     		cbz	r3, .L335
 1806 06c6 3869     		ldr	r0, [r7, #16]
 1807 06c8 3946     		mov	r1, r7
 1808 06ca 9847     		blx	r3
 1809 06cc 0A30     		adds	r0, r0, #10
 1810 06ce 3FF49DAD 		beq	.L280
 1811              	.L335:
 1812 06d2 DAF80020 		ldr	r2, [r10]
 1813 06d6 BAB1     		cbz	r2, .L336
 1814 06d8 B97F     		ldrb	r1, [r7, #30]	@ zero_extendqisi2
 1815 06da 01F01001 		and	r1, r1, #16
 1816 06de 01F0FF03 		and	r3, r1, #255
 1817 06e2 0029     		cmp	r1, #0
 1818 06e4 40F0AB80 		bne	.L471
 1819 06e8 D7F88040 		ldr	r4, [r7, #128]
 1820 06ec 002C     		cmp	r4, #0
 1821 06ee 00F0A080 		beq	.L338
 1822 06f2 3869     		ldr	r0, [r7, #16]
 1823 06f4 3946     		mov	r1, r7
 1824 06f6 A047     		blx	r4
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 33


 1825              	.L339:
 1826 06f8 43B2     		sxtb	r3, r0
 1827 06fa 0A33     		adds	r3, r3, #10
 1828 06fc 3FF486AD 		beq	.L280
 1829 0700 10B1     		cbz	r0, .L336
 1830 0702 DAF80030 		ldr	r3, [r10]
 1831 0706 BB67     		str	r3, [r7, #120]
 1832              	.L336:
 1833 0708 98F80030 		ldrb	r3, [r8]	@ zero_extendqisi2
 1834 070c 9C06     		lsls	r4, r3, #26
 1835 070e 07D5     		bpl	.L342
 1836 0710 BB6F     		ldr	r3, [r7, #120]
 1837 0712 002B     		cmp	r3, #0
 1838 0714 00F00981 		beq	.L343
 1839 0718 5A7B     		ldrb	r2, [r3, #13]	@ zero_extendqisi2
 1840 071a 42F02002 		orr	r2, r2, #32
 1841 071e 5A73     		strb	r2, [r3, #13]
 1842              	.L342:
 1843 0720 0023     		movs	r3, #0
 1844 0722 3846     		mov	r0, r7
 1845 0724 2B60     		str	r3, [r5]
 1846 0726 FFF7FEFF 		bl	tcp_output
 1847 072a 6FE5     		b	.L280
 1848              	.L463:
 1849 072c 4D4E     		ldr	r6, .L477+8
 1850 072e 3B6D     		ldr	r3, [r7, #80]
 1851 0730 3268     		ldr	r2, [r6]
 1852 0732 9342     		cmp	r3, r2
 1853 0734 7FF4E2AD 		bne	.L284
 1854              	.L283:
 1855 0738 98F80020 		ldrb	r2, [r8]	@ zero_extendqisi2
 1856 073c BB7F     		ldrb	r3, [r7, #30]	@ zero_extendqisi2
 1857 073e 42F00802 		orr	r2, r2, #8
 1858 0742 23F00103 		bic	r3, r3, #1
 1859 0746 88F80020 		strb	r2, [r8]
 1860 074a BB77     		strb	r3, [r7, #30]
 1861 074c D6E5     		b	.L284
 1862              	.L265:
 1863 074e 039B     		ldr	r3, [sp, #12]
 1864 0750 DB07     		lsls	r3, r3, #31
 1865 0752 7FF596AD 		bpl	.L266
 1866 0756 484B     		ldr	r3, .L477+28
 1867 0758 1B68     		ldr	r3, [r3]
 1868 075a 5362     		str	r3, [r2, #36]
 1869 075c 91E5     		b	.L266
 1870              	.L303:
 1871 075e 9A07     		lsls	r2, r3, #30
 1872 0760 7FF5CCAD 		bpl	.L284
 1873 0764 4148     		ldr	r0, .L477+16
 1874 0766 BB6A     		ldr	r3, [r7, #40]
 1875 0768 0268     		ldr	r2, [r0]
 1876 076a 013B     		subs	r3, r3, #1
 1877 076c 9342     		cmp	r3, r2
 1878 076e 7FF4C5AD 		bne	.L284
 1879 0772 3846     		mov	r0, r7
 1880 0774 FFF7FEFF 		bl	tcp_rexmit
 1881 0778 C0E5     		b	.L284
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 34


 1882              	.L461:
 1883 077a FB68     		ldr	r3, [r7, #12]
 1884 077c 1360     		str	r3, [r2]
 1885              	.L325:
 1886 077e 3F4B     		ldr	r3, .L477+32
 1887 0780 3F49     		ldr	r1, .L477+36
 1888 0782 1A68     		ldr	r2, [r3]
 1889 0784 0A20     		movs	r0, #10
 1890 0786 FA60     		str	r2, [r7, #12]
 1891 0788 3876     		strb	r0, [r7, #24]
 1892 078a 0122     		movs	r2, #1
 1893 078c 1F60     		str	r7, [r3]
 1894 078e 0A70     		strb	r2, [r1]
 1895 0790 FFF7FEFF 		bl	tcp_timer_needed
 1896 0794 B2E5     		b	.L284
 1897              	.L469:
 1898 0796 7B69     		ldr	r3, [r7, #20]
 1899 0798 0422     		movs	r2, #4
 1900 079a 3A76     		strb	r2, [r7, #24]
 1901 079c 3BB1     		cbz	r3, .L455
 1902 079e 3869     		ldr	r0, [r7, #16]
 1903 07a0 3946     		mov	r1, r7
 1904 07a2 0022     		movs	r2, #0
 1905 07a4 9847     		blx	r3
 1906 07a6 30B1     		cbz	r0, .L307
 1907 07a8 0A30     		adds	r0, r0, #10
 1908 07aa 3FF42FAD 		beq	.L280
 1909              	.L455:
 1910 07ae 3846     		mov	r0, r7
 1911 07b0 FFF7FEFF 		bl	tcp_abort
 1912 07b4 2AE5     		b	.L280
 1913              	.L307:
 1914 07b6 3846     		mov	r0, r7
 1915 07b8 B7F84C40 		ldrh	r4, [r7, #76]
 1916 07bc FFF7FEFF 		bl	tcp_receive
 1917 07c0 B7F86430 		ldrh	r3, [r7, #100]
 1918 07c4 13B1     		cbz	r3, .L309
 1919 07c6 013B     		subs	r3, r3, #1
 1920 07c8 A7F86430 		strh	r3, [r7, #100]	@ movhi
 1921              	.L309:
 1922 07cc FB8E     		ldrh	r3, [r7, #54]
 1923 07ce 012C     		cmp	r4, #1
 1924 07d0 98F80020 		ldrb	r2, [r8]	@ zero_extendqisi2
 1925 07d4 04BF     		itt	eq
 1926 07d6 5B00     		lsleq	r3, r3, #1
 1927 07d8 9BB2     		uxtheq	r3, r3
 1928 07da 9106     		lsls	r1, r2, #26
 1929 07dc A7F84C30 		strh	r3, [r7, #76]	@ movhi
 1930 07e0 7FF58CAD 		bpl	.L284
 1931 07e4 27E7     		b	.L457
 1932              	.L312:
 1933 07e6 DC06     		lsls	r4, r3, #27
 1934 07e8 7FF588AD 		bpl	.L284
 1935 07ec 1D4B     		ldr	r3, .L477+8
 1936 07ee 1A68     		ldr	r2, [r3]
 1937 07f0 3B6D     		ldr	r3, [r7, #80]
 1938 07f2 9342     		cmp	r3, r2
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 35


 1939 07f4 7FF482AD 		bne	.L284
 1940 07f8 0623     		movs	r3, #6
 1941 07fa 3B76     		strb	r3, [r7, #24]
 1942 07fc 7EE5     		b	.L284
 1943              	.L468:
 1944 07fe BB7F     		ldrb	r3, [r7, #30]	@ zero_extendqisi2
 1945 0800 3846     		mov	r0, r7
 1946 0802 43F00203 		orr	r3, r3, #2
 1947 0806 BB77     		strb	r3, [r7, #30]
 1948 0808 FFF7FEFF 		bl	tcp_pcb_purge
 1949 080c 134A     		ldr	r2, .L477
 1950 080e 1168     		ldr	r1, [r2]
 1951 0810 8F42     		cmp	r7, r1
 1952 0812 B2D0     		beq	.L461
 1953 0814 124B     		ldr	r3, .L477+4
 1954 0816 0A46     		mov	r2, r1
 1955 0818 1960     		str	r1, [r3]
 1956              	.L316:
 1957 081a 42B1     		cbz	r2, .L459
 1958 081c D168     		ldr	r1, [r2, #12]
 1959 081e 8F42     		cmp	r7, r1
 1960 0820 01D0     		beq	.L460
 1961 0822 0A46     		mov	r2, r1
 1962 0824 F9E7     		b	.L316
 1963              	.L460:
 1964 0826 F968     		ldr	r1, [r7, #12]
 1965 0828 1A60     		str	r2, [r3]
 1966 082a D160     		str	r1, [r2, #12]
 1967 082c A7E7     		b	.L325
 1968              	.L459:
 1969 082e 1A60     		str	r2, [r3]
 1970 0830 A5E7     		b	.L325
 1971              	.L338:
 1972 0832 2046     		mov	r0, r4
 1973 0834 2346     		mov	r3, r4
 1974 0836 3946     		mov	r1, r7
 1975 0838 FFF7FEFF 		bl	tcp_recv_null
 1976 083c 5CE7     		b	.L339
 1977              	.L471:
 1978 083e 1046     		mov	r0, r2
 1979 0840 FFF7FEFF 		bl	pbuf_free
 1980 0844 B3E7     		b	.L455
 1981              	.L462:
 1982 0846 059A     		ldr	r2, [sp, #20]
 1983 0848 064E     		ldr	r6, .L477+8
 1984 084a 0097     		str	r7, [sp]
 1985 084c 0190     		str	r0, [sp, #4]
 1986 084e 1144     		add	r1, r1, r2
 1987 0850 3068     		ldr	r0, [r6]
 1988 0852 074A     		ldr	r2, .L477+20
 1989 0854 074B     		ldr	r3, .L477+24
 1990 0856 FFF7FEFF 		bl	tcp_rst
 1991 085a 1BE5     		b	.L264
 1992              	.L478:
 1993              		.align	2
 1994              	.L477:
 1995 085c 00000000 		.word	tcp_active_pcbs
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 36


 1996 0860 00000000 		.word	tcp_tmp_pcb
 1997 0864 00000000 		.word	.LANCHOR3
 1998 0868 00000000 		.word	.LANCHOR4
 1999 086c 00000000 		.word	.LANCHOR0
 2000 0870 00000000 		.word	current_iphdr_dest
 2001 0874 00000000 		.word	current_iphdr_src
 2002 0878 00000000 		.word	tcp_ticks
 2003 087c 00000000 		.word	tcp_tw_pcbs
 2004 0880 00000000 		.word	tcp_active_pcbs_changed
 2005              	.L470:
 2006 0884 3B6F     		ldr	r3, [r7, #112]
 2007 0886 DB68     		ldr	r3, [r3, #12]
 2008 0888 5868     		ldr	r0, [r3, #4]	@ unaligned
 2009 088a FFF7FEFF 		bl	lwip_ntohl
 2010 088e 404A     		ldr	r2, .L479
 2011 0890 0130     		adds	r0, r0, #1
 2012 0892 1368     		ldr	r3, [r2]
 2013 0894 9842     		cmp	r0, r3
 2014 0896 7FF4FBAE 		bne	.L296
 2015 089a 3E4B     		ldr	r3, .L479+4
 2016 089c B7F86640 		ldrh	r4, [r7, #102]
 2017 08a0 1A68     		ldr	r2, [r3]
 2018 08a2 3168     		ldr	r1, [r6]
 2019 08a4 531C     		adds	r3, r2, #1
 2020 08a6 0134     		adds	r4, r4, #1
 2021 08a8 B864     		str	r0, [r7, #72]
 2022 08aa BB62     		str	r3, [r7, #40]
 2023 08ac 3B63     		str	r3, [r7, #48]
 2024 08ae A7F86640 		strh	r4, [r7, #102]	@ movhi
 2025 08b2 CB89     		ldrh	r3, [r1, #14]	@ unaligned
 2026 08b4 013A     		subs	r2, r2, #1
 2027 08b6 0421     		movs	r1, #4
 2028 08b8 7A65     		str	r2, [r7, #84]
 2029 08ba A7F86030 		strh	r3, [r7, #96]	@ movhi
 2030 08be A7F86230 		strh	r3, [r7, #98]	@ movhi
 2031 08c2 3976     		strb	r1, [r7, #24]
 2032 08c4 F88E     		ldrh	r0, [r7, #54]
 2033 08c6 7918     		adds	r1, r7, r1
 2034 08c8 FFF7FEFF 		bl	tcp_eff_send_mss
 2035 08cc B7F84C30 		ldrh	r3, [r7, #76]
 2036 08d0 00EB8002 		add	r2, r0, r0, lsl #2
 2037 08d4 012B     		cmp	r3, #1
 2038 08d6 0CBF     		ite	eq
 2039 08d8 4300     		lsleq	r3, r0, #1
 2040 08da 0346     		movne	r3, r0
 2041 08dc F886     		strh	r0, [r7, #54]	@ movhi
 2042 08de 386F     		ldr	r0, [r7, #112]
 2043 08e0 B7F86810 		ldrh	r1, [r7, #104]
 2044 08e4 4FEA4202 		lsl	r2, r2, #1
 2045 08e8 A7F84E20 		strh	r2, [r7, #78]	@ movhi
 2046 08ec 0268     		ldr	r2, [r0]
 2047 08ee 08BF     		it	eq
 2048 08f0 9BB2     		uxtheq	r3, r3
 2049 08f2 0139     		subs	r1, r1, #1
 2050 08f4 A7F84C30 		strh	r3, [r7, #76]	@ movhi
 2051 08f8 3A67     		str	r2, [r7, #112]
 2052 08fa A7F86810 		strh	r1, [r7, #104]	@ movhi
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 37


 2053 08fe FFF7FEFF 		bl	tcp_seg_free
 2054 0902 3B6F     		ldr	r3, [r7, #112]
 2055 0904 002B     		cmp	r3, #0
 2056 0906 3FD0     		beq	.L472
 2057 0908 0023     		movs	r3, #0
 2058 090a BB86     		strh	r3, [r7, #52]	@ movhi
 2059 090c 87F84630 		strb	r3, [r7, #70]
 2060              	.L299:
 2061 0910 D7F88430 		ldr	r3, [r7, #132]
 2062 0914 002B     		cmp	r3, #0
 2063 0916 3FF40DAD 		beq	.L302
 2064 091a 3869     		ldr	r0, [r7, #16]
 2065 091c 3946     		mov	r1, r7
 2066 091e 0022     		movs	r2, #0
 2067 0920 9847     		blx	r3
 2068 0922 0A30     		adds	r0, r0, #10
 2069 0924 7FF406AD 		bne	.L302
 2070 0928 70E4     		b	.L280
 2071              	.L343:
 2072 092a BB8D     		ldrh	r3, [r7, #44]
 2073 092c 40F66832 		movw	r2, #2920
 2074 0930 9342     		cmp	r3, r2
 2075 0932 D7F88040 		ldr	r4, [r7, #128]
 2076 0936 1CBF     		itt	ne
 2077 0938 0133     		addne	r3, r3, #1
 2078 093a BB85     		strhne	r3, [r7, #44]	@ movhi
 2079 093c 002C     		cmp	r4, #0
 2080 093e 3FF4EFAE 		beq	.L342
 2081 0942 0022     		movs	r2, #0
 2082 0944 1346     		mov	r3, r2
 2083 0946 3869     		ldr	r0, [r7, #16]
 2084 0948 3946     		mov	r1, r7
 2085 094a A047     		blx	r4
 2086 094c 0A30     		adds	r0, r0, #10
 2087 094e 7FF4E7AE 		bne	.L342
 2088 0952 5BE4     		b	.L280
 2089              	.L466:
 2090 0954 B4F8B830 		ldrh	r3, [r4, #184]
 2091 0958 0133     		adds	r3, r3, #1
 2092 095a A4F8B830 		strh	r3, [r4, #184]	@ movhi
 2093 095e 99E4     		b	.L264
 2094              	.L465:
 2095 0960 CDF800C0 		str	ip, [sp]
 2096 0964 1B88     		ldrh	r3, [r3]	@ unaligned
 2097 0966 0B4A     		ldr	r2, .L479+4
 2098 0968 094C     		ldr	r4, .L479
 2099 096a 1168     		ldr	r1, [r2]
 2100 096c 0193     		str	r3, [sp, #4]
 2101 096e 059B     		ldr	r3, [sp, #20]
 2102 0970 2068     		ldr	r0, [r4]
 2103 0972 1944     		add	r1, r1, r3
 2104 0974 084A     		ldr	r2, .L479+8
 2105 0976 094B     		ldr	r3, .L479+12
 2106 0978 FFF7FEFF 		bl	tcp_rst
 2107 097c 8AE4     		b	.L264
 2108              	.L467:
 2109 097e 5846     		mov	r0, fp
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 38


 2110 0980 3946     		mov	r1, r7
 2111 0982 FFF7FEFF 		bl	tcp_abandon
 2112 0986 85E4     		b	.L264
 2113              	.L472:
 2114 0988 4FF6FF73 		movw	r3, #65535
 2115 098c BB86     		strh	r3, [r7, #52]	@ movhi
 2116 098e BFE7     		b	.L299
 2117              	.L480:
 2118              		.align	2
 2119              	.L479:
 2120 0990 00000000 		.word	.LANCHOR3
 2121 0994 00000000 		.word	.LANCHOR0
 2122 0998 00000000 		.word	current_iphdr_dest
 2123 099c 00000000 		.word	current_iphdr_src
 2124              		.size	tcp_input, .-tcp_input
 2125              		.comm	tcp_input_pcb,4,4
 2126              		.section	.bss.seqno,"aw",%nobits
 2127              		.align	2
 2128              		.set	.LANCHOR0,. + 0
 2129              		.type	seqno, %object
 2130              		.size	seqno, 4
 2131              	seqno:
 2132 0000 00000000 		.space	4
 2133              		.section	.bss.iphdr,"aw",%nobits
 2134              		.align	2
 2135              		.set	.LANCHOR8,. + 0
 2136              		.type	iphdr, %object
 2137              		.size	iphdr, 4
 2138              	iphdr:
 2139 0000 00000000 		.space	4
 2140              		.section	.bss.tcplen,"aw",%nobits
 2141              		.align	1
 2142              		.set	.LANCHOR4,. + 0
 2143              		.type	tcplen, %object
 2144              		.size	tcplen, 2
 2145              	tcplen:
 2146 0000 0000     		.space	2
 2147              		.section	.bss.ackno,"aw",%nobits
 2148              		.align	2
 2149              		.set	.LANCHOR3,. + 0
 2150              		.type	ackno, %object
 2151              		.size	ackno, 4
 2152              	ackno:
 2153 0000 00000000 		.space	4
 2154              		.section	.bss.flags,"aw",%nobits
 2155              		.set	.LANCHOR1,. + 0
 2156              		.type	flags, %object
 2157              		.size	flags, 1
 2158              	flags:
 2159 0000 00       		.space	1
 2160              		.section	.bss.recv_flags,"aw",%nobits
 2161              		.set	.LANCHOR7,. + 0
 2162              		.type	recv_flags, %object
 2163              		.size	recv_flags, 1
 2164              	recv_flags:
 2165 0000 00       		.space	1
 2166              		.section	.bss.tcphdr,"aw",%nobits
ARM GAS  C:\Users\George\AppData\Local\Temp\cceqD8FJ.s 			page 39


 2167              		.align	2
 2168              		.set	.LANCHOR2,. + 0
 2169              		.type	tcphdr, %object
 2170              		.size	tcphdr, 4
 2171              	tcphdr:
 2172 0000 00000000 		.space	4
 2173              		.section	.bss.recv_data,"aw",%nobits
 2174              		.align	2
 2175              		.set	.LANCHOR6,. + 0
 2176              		.type	recv_data, %object
 2177              		.size	recv_data, 4
 2178              	recv_data:
 2179 0000 00000000 		.space	4
 2180              		.section	.bss.inseg,"aw",%nobits
 2181              		.align	2
 2182              		.set	.LANCHOR5,. + 0
 2183              		.type	inseg, %object
 2184              		.size	inseg, 16
 2185              	inseg:
 2186 0000 00000000 		.space	16
 2186      00000000 
 2186      00000000 
 2186      00000000 
 2187              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
