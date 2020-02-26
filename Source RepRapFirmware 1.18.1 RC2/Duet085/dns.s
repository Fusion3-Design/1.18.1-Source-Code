ARM GAS  C:\Users\George\AppData\Local\Temp\ccLnmGZd.s 			page 1


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
  14              		.file	"dns.c"
  15              		.section	.text.dns_recv,"ax",%progbits
  16              		.align	2
  17              		.thumb
  18              		.thumb_func
  19              		.type	dns_recv, %function
  20              	dns_recv:
  21              		@ args = 4, pretend = 0, frame = 16
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  24 0004 1446     		mov	r4, r2
  25 0006 1289     		ldrh	r2, [r2, #8]
  26 0008 85B0     		sub	sp, sp, #20
  27 000a A2F11A03 		sub	r3, r2, #26
  28 000e B3F5F37F 		cmp	r3, #486
  29 0012 05D9     		bls	.L55
  30              	.L3:
  31 0014 2046     		mov	r0, r4
  32 0016 05B0     		add	sp, sp, #20
  33              		@ sp needed
  34 0018 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  35 001c FFF7FEBF 		b	pbuf_free
  36              	.L55:
  37 0020 634D     		ldr	r5, .L59
  38 0022 0023     		movs	r3, #0
  39 0024 2968     		ldr	r1, [r5]
  40 0026 2046     		mov	r0, r4
  41 0028 FFF7FEFF 		bl	pbuf_copy_partial
  42 002c 2389     		ldrh	r3, [r4, #8]
  43 002e 8342     		cmp	r3, r0
  44 0030 F0D1     		bne	.L3
  45 0032 2E68     		ldr	r6, [r5]
  46 0034 3088     		ldrh	r0, [r6]	@ unaligned
  47 0036 FFF7FEFF 		bl	lwip_htons
  48 003a 0328     		cmp	r0, #3
  49 003c EAD8     		bhi	.L3
  50 003e 5827     		movs	r7, #88
  51 0040 07FB00F7 		mul	r7, r7, r0
  52 0044 DFF87081 		ldr	r8, .L59+8
  53 0048 18F80730 		ldrb	r3, [r8, r7]	@ zero_extendqisi2
  54 004c 08EB0709 		add	r9, r8, r7
  55 0050 022B     		cmp	r3, #2
  56 0052 DFD1     		bne	.L3
  57 0054 0323     		movs	r3, #3
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLnmGZd.s 			page 2


  58 0056 08F80730 		strb	r3, [r8, r7]
  59 005a F378     		ldrb	r3, [r6, #3]	@ zero_extendqisi2
  60 005c 03F00F03 		and	r3, r3, #15
  61 0060 89F80530 		strb	r3, [r9, #5]
  62 0064 B088     		ldrh	r0, [r6, #4]	@ unaligned
  63 0066 FFF7FEFF 		bl	lwip_htons
  64 006a 8346     		mov	fp, r0
  65 006c F088     		ldrh	r0, [r6, #6]	@ unaligned
  66 006e FFF7FEFF 		bl	lwip_htons
  67 0072 96F90230 		ldrsb	r3, [r6, #2]
  68 0076 8246     		mov	r10, r0
  69 0078 002B     		cmp	r3, #0
  70 007a 0EDB     		blt	.L5
  71              	.L8:
  72 007c D9F85030 		ldr	r3, [r9, #80]
  73 0080 2BB1     		cbz	r3, .L7
  74 0082 09F10C00 		add	r0, r9, #12
  75 0086 0021     		movs	r1, #0
  76 0088 D9F85420 		ldr	r2, [r9, #84]
  77 008c 9847     		blx	r3
  78              	.L7:
  79 008e 0023     		movs	r3, #0
  80 0090 08F80730 		strb	r3, [r8, r7]
  81 0094 C9F85030 		str	r3, [r9, #80]
  82 0098 BCE7     		b	.L3
  83              	.L5:
  84 009a 99F80530 		ldrb	r3, [r9, #5]	@ zero_extendqisi2
  85 009e 002B     		cmp	r3, #0
  86 00a0 ECD1     		bne	.L8
  87 00a2 BBF1010F 		cmp	fp, #1
  88 00a6 E9D1     		bne	.L8
  89 00a8 2B68     		ldr	r3, [r5]
  90 00aa 09F10C06 		add	r6, r9, #12
  91 00ae 03F10C0C 		add	ip, r3, #12
  92 00b2 6046     		mov	r0, ip
  93 00b4 3246     		mov	r2, r6
  94              	.L15:
  95 00b6 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
  96 00b8 411C     		adds	r1, r0, #1
  97 00ba 03F0C005 		and	r5, r3, #192
  98 00be C02D     		cmp	r5, #192
  99 00c0 24D0     		beq	.L10
 100 00c2 B3B1     		cbz	r3, .L11
 101 00c4 1578     		ldrb	r5, [r2]	@ zero_extendqisi2
 102 00c6 4178     		ldrb	r1, [r0, #1]	@ zero_extendqisi2
 103 00c8 8D42     		cmp	r5, r1
 104 00ca D7D1     		bne	.L8
 105 00cc 013B     		subs	r3, r3, #1
 106 00ce DDB2     		uxtb	r5, r3
 107 00d0 531C     		adds	r3, r2, #1
 108 00d2 1D44     		add	r5, r5, r3
 109 00d4 0230     		adds	r0, r0, #2
 110 00d6 04E0     		b	.L12
 111              	.L13:
 112 00d8 92F800B0 		ldrb	fp, [r2]	@ zero_extendqisi2
 113 00dc 0A78     		ldrb	r2, [r1]	@ zero_extendqisi2
 114 00de 9345     		cmp	fp, r2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLnmGZd.s 			page 3


 115 00e0 CCD1     		bne	.L8
 116              	.L12:
 117 00e2 AB42     		cmp	r3, r5
 118 00e4 0146     		mov	r1, r0
 119 00e6 1A46     		mov	r2, r3
 120 00e8 00F10100 		add	r0, r0, #1
 121 00ec 03F10103 		add	r3, r3, #1
 122 00f0 F2D1     		bne	.L13
 123              	.L11:
 124 00f2 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 125 00f4 0132     		adds	r2, r2, #1
 126 00f6 4BB1     		cbz	r3, .L10
 127 00f8 0846     		mov	r0, r1
 128 00fa DCE7     		b	.L15
 129              	.L56:
 130 00fc 5A1E     		subs	r2, r3, #1
 131 00fe D2B2     		uxtb	r2, r2
 132 0100 0132     		adds	r2, r2, #1
 133 0102 03B1     		cbz	r3, .L17
 134 0104 1544     		add	r5, r5, r2
 135              	.L17:
 136 0106 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 137 0108 AC46     		mov	ip, r5
 138 010a 3BB1     		cbz	r3, .L16
 139              	.L10:
 140 010c 9CF80030 		ldrb	r3, [ip]	@ zero_extendqisi2
 141 0110 0CF10105 		add	r5, ip, #1
 142 0114 03F0C002 		and	r2, r3, #192
 143 0118 C02A     		cmp	r2, #192
 144 011a EFD1     		bne	.L56
 145              	.L16:
 146 011c 0535     		adds	r5, r5, #5
 147              	.L18:
 148 011e BAF1000F 		cmp	r10, #0
 149 0122 ABD0     		beq	.L8
 150 0124 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 151 0126 06E0     		b	.L24
 152              	.L57:
 153 0128 5A1E     		subs	r2, r3, #1
 154 012a D2B2     		uxtb	r2, r2
 155 012c 0132     		adds	r2, r2, #1
 156 012e 03B1     		cbz	r3, .L20
 157 0130 1544     		add	r5, r5, r2
 158              	.L20:
 159 0132 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 160 0134 2BB1     		cbz	r3, .L19
 161              	.L24:
 162 0136 03F0C002 		and	r2, r3, #192
 163 013a C02A     		cmp	r2, #192
 164 013c 05F10105 		add	r5, r5, #1
 165 0140 F2D1     		bne	.L57
 166              	.L19:
 167 0142 AB46     		mov	fp, r5
 168 0144 5BF8010F 		ldr	r0, [fp, #1]!	@ unaligned
 169 0148 01AB     		add	r3, sp, #4
 170 014a DBF80410 		ldr	r1, [fp, #4]	@ unaligned
 171 014e BBF80820 		ldrh	r2, [fp, #8]	@ unaligned
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLnmGZd.s 			page 4


 172 0152 03C3     		stmia	r3!, {r0, r1}
 173 0154 1A80     		strh	r2, [r3]	@ unaligned
 174 0156 019B     		ldr	r3, [sp, #4]
 175 0158 BDF80C00 		ldrh	r0, [sp, #12]
 176 015c B3F1012F 		cmp	r3, #16777472
 177 0160 02D1     		bne	.L22
 178 0162 B0F5806F 		cmp	r0, #1024
 179 0166 09D0     		beq	.L58
 180              	.L22:
 181 0168 FFF7FEFF 		bl	lwip_htons
 182 016c 0AF1FF3A 		add	r10, r10, #-1
 183 0170 0A30     		adds	r0, r0, #10
 184 0172 0BEB0005 		add	r5, fp, r0
 185 0176 1FFA8AFA 		uxth	r10, r10
 186 017a D0E7     		b	.L18
 187              	.L58:
 188 017c 0298     		ldr	r0, [sp, #8]
 189 017e FFF7FEFF 		bl	lwip_ntohl
 190 0182 0C4B     		ldr	r3, .L59+4
 191 0184 C9F80800 		str	r0, [r9, #8]
 192 0188 9842     		cmp	r0, r3
 193 018a 88BF     		it	hi
 194 018c C9F80830 		strhi	r3, [r9, #8]
 195 0190 D5F80B20 		ldr	r2, [r5, #11]	@ unaligned
 196 0194 D9F85030 		ldr	r3, [r9, #80]
 197 0198 C9F84C20 		str	r2, [r9, #76]	@ unaligned
 198 019c 09F14C01 		add	r1, r9, #76
 199 01a0 002B     		cmp	r3, #0
 200 01a2 3FF437AF 		beq	.L3
 201 01a6 3046     		mov	r0, r6
 202 01a8 D9F85420 		ldr	r2, [r9, #84]
 203 01ac 9847     		blx	r3
 204 01ae 31E7     		b	.L3
 205              	.L60:
 206              		.align	2
 207              	.L59:
 208 01b0 00000000 		.word	.LANCHOR0
 209 01b4 803A0900 		.word	604800
 210 01b8 00000000 		.word	.LANCHOR1
 211              		.size	dns_recv, .-dns_recv
 212              		.section	.text.dns_send,"ax",%progbits
 213              		.align	2
 214              		.thumb
 215              		.thumb_func
 216              		.type	dns_send, %function
 217              	dns_send:
 218              		@ args = 0, pretend = 0, frame = 8
 219              		@ frame_needed = 0, uses_anonymous_args = 0
 220 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 221 0004 8046     		mov	r8, r0
 222 0006 0020     		movs	r0, #0
 223 0008 83B0     		sub	sp, sp, #12
 224 000a 0F46     		mov	r7, r1
 225 000c 1646     		mov	r6, r2
 226 000e 5021     		movs	r1, #80
 227 0010 0246     		mov	r2, r0
 228 0012 FFF7FEFF 		bl	pbuf_alloc
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLnmGZd.s 			page 5


 229 0016 8146     		mov	r9, r0
 230 0018 0028     		cmp	r0, #0
 231 001a 7ED0     		beq	.L67
 232 001c 4568     		ldr	r5, [r0, #4]
 233 001e 0024     		movs	r4, #0
 234 0020 2B46     		mov	r3, r5
 235 0022 03F8014B 		strb	r4, [r3], #1
 236 0026 0133     		adds	r3, r3, #1
 237 0028 6C70     		strb	r4, [r5, #1]
 238 002a 03F8014B 		strb	r4, [r3], #1
 239 002e 03F8014B 		strb	r4, [r3], #1
 240 0032 03F8014B 		strb	r4, [r3], #1
 241 0036 03F8014B 		strb	r4, [r3], #1
 242 003a 03F8014B 		strb	r4, [r3], #1
 243 003e 03F8014B 		strb	r4, [r3], #1
 244 0042 03F8014B 		strb	r4, [r3], #1
 245 0046 03F8014B 		strb	r4, [r3], #1
 246 004a 03F8014B 		strb	r4, [r3], #1
 247 004e 1C70     		strb	r4, [r3]
 248 0050 3046     		mov	r0, r6
 249 0052 FFF7FEFF 		bl	lwip_htons
 250 0056 0123     		movs	r3, #1
 251 0058 AB70     		strb	r3, [r5, #2]
 252 005a 6B71     		strb	r3, [r5, #5]
 253 005c 2880     		strh	r0, [r5]	@ unaligned
 254 005e 2C71     		strb	r4, [r5, #4]
 255 0060 013F     		subs	r7, r7, #1
 256 0062 7A78     		ldrb	r2, [r7, #1]	@ zero_extendqisi2
 257 0064 05F10C0E 		add	lr, r5, #12
 258 0068 2E2A     		cmp	r2, #46
 259 006a 07F10103 		add	r3, r7, #1
 260 006e 0EF10105 		add	r5, lr, #1
 261 0072 1FD0     		beq	.L68
 262              	.L77:
 263 0074 002A     		cmp	r2, #0
 264 0076 4DD0     		beq	.L69
 265 0078 BC1C     		adds	r4, r7, #2
 266 007a 7546     		mov	r5, lr
 267 007c 01E0     		b	.L64
 268              	.L76:
 269 007e 6AB1     		cbz	r2, .L63
 270 0080 1D46     		mov	r5, r3
 271              	.L64:
 272 0082 2B46     		mov	r3, r5
 273 0084 03F8012F 		strb	r2, [r3, #1]!
 274 0088 2746     		mov	r7, r4
 275 008a 14F8012B 		ldrb	r2, [r4], #1	@ zero_extendqisi2
 276 008e CEEB0306 		rsb	r6, lr, r3
 277 0092 2E2A     		cmp	r2, #46
 278 0094 05F10205 		add	r5, r5, #2
 279 0098 F6B2     		uxtb	r6, r6
 280 009a F0D1     		bne	.L76
 281              	.L63:
 282 009c 8EF80060 		strb	r6, [lr]
 283 00a0 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 284 00a2 73B1     		cbz	r3, .L65
 285              	.L78:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLnmGZd.s 			page 6


 286 00a4 7A78     		ldrb	r2, [r7, #1]	@ zero_extendqisi2
 287 00a6 AE46     		mov	lr, r5
 288 00a8 2E2A     		cmp	r2, #46
 289 00aa 07F10103 		add	r3, r7, #1
 290 00ae 0EF10105 		add	r5, lr, #1
 291 00b2 DFD1     		bne	.L77
 292              	.L68:
 293 00b4 0026     		movs	r6, #0
 294 00b6 1F46     		mov	r7, r3
 295 00b8 8EF80060 		strb	r6, [lr]
 296 00bc 3B78     		ldrb	r3, [r7]	@ zero_extendqisi2
 297 00be 002B     		cmp	r3, #0
 298 00c0 F0D1     		bne	.L78
 299              	.L65:
 300 00c2 4FF48072 		mov	r2, #256
 301 00c6 ADF80420 		strh	r2, [sp, #4]	@ movhi
 302 00ca ADF80620 		strh	r2, [sp, #6]	@ movhi
 303 00ce 0198     		ldr	r0, [sp, #4]	@ unaligned
 304 00d0 2B70     		strb	r3, [r5]
 305 00d2 C5F80100 		str	r0, [r5, #1]	@ unaligned
 306 00d6 D9F80430 		ldr	r3, [r9, #4]
 307 00da 0535     		adds	r5, r5, #5
 308 00dc E91A     		subs	r1, r5, r3
 309 00de 89B2     		uxth	r1, r1
 310 00e0 4846     		mov	r0, r9
 311 00e2 FFF7FEFF 		bl	pbuf_realloc
 312 00e6 0E4B     		ldr	r3, .L79
 313 00e8 0E4C     		ldr	r4, .L79+4
 314 00ea 03EB8808 		add	r8, r3, r8, lsl #2
 315 00ee 4146     		mov	r1, r8
 316 00f0 2068     		ldr	r0, [r4]
 317 00f2 3522     		movs	r2, #53
 318 00f4 FFF7FEFF 		bl	udp_connect
 319 00f8 2068     		ldr	r0, [r4]
 320 00fa 4246     		mov	r2, r8
 321 00fc 4946     		mov	r1, r9
 322 00fe 3523     		movs	r3, #53
 323 0100 FFF7FEFF 		bl	udp_sendto
 324 0104 0446     		mov	r4, r0
 325 0106 4846     		mov	r0, r9
 326 0108 FFF7FEFF 		bl	pbuf_free
 327              	.L62:
 328 010c 60B2     		sxtb	r0, r4
 329 010e 03B0     		add	sp, sp, #12
 330              		@ sp needed
 331 0110 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 332              	.L69:
 333 0114 1F46     		mov	r7, r3
 334 0116 1646     		mov	r6, r2
 335 0118 C0E7     		b	.L63
 336              	.L67:
 337 011a FF24     		movs	r4, #255
 338 011c F6E7     		b	.L62
 339              	.L80:
 340 011e 00BF     		.align	2
 341              	.L79:
 342 0120 00000000 		.word	.LANCHOR2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLnmGZd.s 			page 7


 343 0124 00000000 		.word	.LANCHOR3
 344              		.size	dns_send, .-dns_send
 345              		.section	.text.dns_check_entry,"ax",%progbits
 346              		.align	2
 347              		.thumb
 348              		.thumb_func
 349              		.type	dns_check_entry, %function
 350              	dns_check_entry:
 351              		@ args = 0, pretend = 0, frame = 0
 352              		@ frame_needed = 0, uses_anonymous_args = 0
 353 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 354 0002 5825     		movs	r5, #88
 355 0004 05FB00F5 		mul	r5, r5, r0
 356 0008 264E     		ldr	r6, .L99
 357 000a 735D     		ldrb	r3, [r6, r5]	@ zero_extendqisi2
 358 000c 7419     		adds	r4, r6, r5
 359 000e 022B     		cmp	r3, #2
 360 0010 1CD0     		beq	.L83
 361 0012 032B     		cmp	r3, #3
 362 0014 12D0     		beq	.L84
 363 0016 012B     		cmp	r3, #1
 364 0018 00D0     		beq	.L97
 365              	.L81:
 366 001a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 367              	.L97:
 368 001c 0027     		movs	r7, #0
 369 001e 4FF0020C 		mov	ip, #2
 370 0022 06F805C0 		strb	ip, [r6, r5]
 371 0026 A370     		strb	r3, [r4, #2]
 372 0028 6770     		strb	r7, [r4, #1]
 373 002a E770     		strb	r7, [r4, #3]
 374 002c 0246     		mov	r2, r0
 375 002e 04F10C01 		add	r1, r4, #12
 376 0032 3846     		mov	r0, r7
 377 0034 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 378 0038 FFF7FEBF 		b	dns_send
 379              	.L84:
 380 003c A368     		ldr	r3, [r4, #8]
 381 003e 013B     		subs	r3, r3, #1
 382 0040 A360     		str	r3, [r4, #8]
 383 0042 002B     		cmp	r3, #0
 384 0044 E9D1     		bne	.L81
 385 0046 7355     		strb	r3, [r6, r5]
 386 0048 2365     		str	r3, [r4, #80]
 387 004a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 388              	.L83:
 389 004c A378     		ldrb	r3, [r4, #2]	@ zero_extendqisi2
 390 004e 013B     		subs	r3, r3, #1
 391 0050 DBB2     		uxtb	r3, r3
 392 0052 A370     		strb	r3, [r4, #2]
 393 0054 002B     		cmp	r3, #0
 394 0056 E0D1     		bne	.L81
 395 0058 E378     		ldrb	r3, [r4, #3]	@ zero_extendqisi2
 396 005a 0133     		adds	r3, r3, #1
 397 005c DBB2     		uxtb	r3, r3
 398 005e 042B     		cmp	r3, #4
 399 0060 E370     		strb	r3, [r4, #3]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLnmGZd.s 			page 8


 400 0062 0CD1     		bne	.L87
 401 0064 6378     		ldrb	r3, [r4, #1]	@ zero_extendqisi2
 402 0066 9BB1     		cbz	r3, .L98
 403              	.L88:
 404 0068 236D     		ldr	r3, [r4, #80]
 405 006a 23B1     		cbz	r3, .L89
 406 006c 04F10C00 		add	r0, r4, #12
 407 0070 0021     		movs	r1, #0
 408 0072 626D     		ldr	r2, [r4, #84]
 409 0074 9847     		blx	r3
 410              	.L89:
 411 0076 0023     		movs	r3, #0
 412 0078 7355     		strb	r3, [r6, r5]
 413 007a 2365     		str	r3, [r4, #80]
 414 007c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 415              	.L87:
 416 007e A370     		strb	r3, [r4, #2]
 417 0080 0246     		mov	r2, r0
 418 0082 04F10C01 		add	r1, r4, #12
 419 0086 6078     		ldrb	r0, [r4, #1]	@ zero_extendqisi2
 420 0088 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 421 008c FFF7FEBF 		b	dns_send
 422              	.L98:
 423 0090 054A     		ldr	r2, .L99+4
 424 0092 5268     		ldr	r2, [r2, #4]
 425 0094 002A     		cmp	r2, #0
 426 0096 E7D0     		beq	.L88
 427 0098 0122     		movs	r2, #1
 428 009a E370     		strb	r3, [r4, #3]
 429 009c 6270     		strb	r2, [r4, #1]
 430 009e A270     		strb	r2, [r4, #2]
 431 00a0 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 432              	.L100:
 433 00a2 00BF     		.align	2
 434              	.L99:
 435 00a4 00000000 		.word	.LANCHOR1
 436 00a8 00000000 		.word	.LANCHOR2
 437              		.size	dns_check_entry, .-dns_check_entry
 438              		.section	.text.dns_init,"ax",%progbits
 439              		.align	2
 440              		.global	dns_init
 441              		.thumb
 442              		.thumb_func
 443              		.type	dns_init, %function
 444              	dns_init:
 445              		@ args = 0, pretend = 0, frame = 0
 446              		@ frame_needed = 0, uses_anonymous_args = 0
 447 0000 114A     		ldr	r2, .L115
 448 0002 124B     		ldr	r3, .L115+4
 449 0004 70B5     		push	{r4, r5, r6, lr}
 450 0006 22F00302 		bic	r2, r2, #3
 451 000a 1148     		ldr	r0, .L115+8
 452 000c 1A60     		str	r2, [r3]
 453 000e FFF7FEFF 		bl	ipaddr_addr
 454 0012 104C     		ldr	r4, .L115+12
 455 0014 0646     		mov	r6, r0
 456 0016 2568     		ldr	r5, [r4]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLnmGZd.s 			page 9


 457 0018 05B1     		cbz	r5, .L114
 458              	.L101:
 459 001a 70BD     		pop	{r4, r5, r6, pc}
 460              	.L114:
 461 001c FFF7FEFF 		bl	udp_new
 462 0020 2060     		str	r0, [r4]
 463 0022 0028     		cmp	r0, #0
 464 0024 F9D0     		beq	.L101
 465 0026 0C49     		ldr	r1, .L115+16
 466 0028 2A46     		mov	r2, r5
 467 002a FFF7FEFF 		bl	udp_bind
 468 002e 2A46     		mov	r2, r5
 469 0030 2068     		ldr	r0, [r4]
 470 0032 0A49     		ldr	r1, .L115+20
 471 0034 FFF7FEFF 		bl	udp_recv
 472 0038 2368     		ldr	r3, [r4]
 473 003a 002B     		cmp	r3, #0
 474 003c EDD0     		beq	.L101
 475 003e 002E     		cmp	r6, #0
 476 0040 EBD0     		beq	.L101
 477 0042 074B     		ldr	r3, .L115+24
 478 0044 1E60     		str	r6, [r3]
 479 0046 E8E7     		b	.L101
 480              	.L116:
 481              		.align	2
 482              	.L115:
 483 0048 03000000 		.word	.LANCHOR4+3
 484 004c 00000000 		.word	.LANCHOR0
 485 0050 00000000 		.word	.LC0
 486 0054 00000000 		.word	.LANCHOR3
 487 0058 00000000 		.word	ip_addr_any
 488 005c 00000000 		.word	dns_recv
 489 0060 00000000 		.word	.LANCHOR2
 490              		.size	dns_init, .-dns_init
 491              		.section	.text.dns_setserver,"ax",%progbits
 492              		.align	2
 493              		.global	dns_setserver
 494              		.thumb
 495              		.thumb_func
 496              		.type	dns_setserver, %function
 497              	dns_setserver:
 498              		@ args = 0, pretend = 0, frame = 0
 499              		@ frame_needed = 0, uses_anonymous_args = 0
 500              		@ link register save eliminated.
 501 0000 0128     		cmp	r0, #1
 502 0002 00D9     		bls	.L128
 503              	.L117:
 504 0004 7047     		bx	lr
 505              	.L128:
 506 0006 064B     		ldr	r3, .L129
 507 0008 1B68     		ldr	r3, [r3]
 508 000a 002B     		cmp	r3, #0
 509 000c FAD0     		beq	.L117
 510 000e 0029     		cmp	r1, #0
 511 0010 F8D0     		beq	.L117
 512 0012 0B68     		ldr	r3, [r1]
 513 0014 002B     		cmp	r3, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLnmGZd.s 			page 10


 514 0016 F5D0     		beq	.L117
 515 0018 024A     		ldr	r2, .L129+4
 516 001a 42F82030 		str	r3, [r2, r0, lsl #2]
 517 001e 7047     		bx	lr
 518              	.L130:
 519              		.align	2
 520              	.L129:
 521 0020 00000000 		.word	.LANCHOR3
 522 0024 00000000 		.word	.LANCHOR2
 523              		.size	dns_setserver, .-dns_setserver
 524              		.section	.text.dns_getserver,"ax",%progbits
 525              		.align	2
 526              		.global	dns_getserver
 527              		.thumb
 528              		.thumb_func
 529              		.type	dns_getserver, %function
 530              	dns_getserver:
 531              		@ args = 0, pretend = 0, frame = 0
 532              		@ frame_needed = 0, uses_anonymous_args = 0
 533              		@ link register save eliminated.
 534 0000 0128     		cmp	r0, #1
 535 0002 95BF     		itete	ls
 536 0004 024B     		ldrls	r3, .L134
 537 0006 034B     		ldrhi	r3, .L134+4
 538 0008 53F82000 		ldrls	r0, [r3, r0, lsl #2]
 539 000c 1868     		ldrhi	r0, [r3]
 540 000e 7047     		bx	lr
 541              	.L135:
 542              		.align	2
 543              	.L134:
 544 0010 00000000 		.word	.LANCHOR2
 545 0014 00000000 		.word	ip_addr_any
 546              		.size	dns_getserver, .-dns_getserver
 547              		.section	.text.dns_tmr,"ax",%progbits
 548              		.align	2
 549              		.global	dns_tmr
 550              		.thumb
 551              		.thumb_func
 552              		.type	dns_tmr, %function
 553              	dns_tmr:
 554              		@ args = 0, pretend = 0, frame = 0
 555              		@ frame_needed = 0, uses_anonymous_args = 0
 556 0000 08B5     		push	{r3, lr}
 557 0002 094B     		ldr	r3, .L139
 558 0004 1B68     		ldr	r3, [r3]
 559 0006 6BB1     		cbz	r3, .L138
 560 0008 0020     		movs	r0, #0
 561 000a FFF7FEFF 		bl	dns_check_entry
 562 000e 0120     		movs	r0, #1
 563 0010 FFF7FEFF 		bl	dns_check_entry
 564 0014 0220     		movs	r0, #2
 565 0016 FFF7FEFF 		bl	dns_check_entry
 566 001a BDE80840 		pop	{r3, lr}
 567 001e 0320     		movs	r0, #3
 568 0020 FFF7FEBF 		b	dns_check_entry
 569              	.L138:
 570 0024 08BD     		pop	{r3, pc}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLnmGZd.s 			page 11


 571              	.L140:
 572 0026 00BF     		.align	2
 573              	.L139:
 574 0028 00000000 		.word	.LANCHOR3
 575              		.size	dns_tmr, .-dns_tmr
 576              		.section	.text.dns_gethostbyname,"ax",%progbits
 577              		.align	2
 578              		.global	dns_gethostbyname
 579              		.thumb
 580              		.thumb_func
 581              		.type	dns_gethostbyname, %function
 582              	dns_gethostbyname:
 583              		@ args = 0, pretend = 0, frame = 0
 584              		@ frame_needed = 0, uses_anonymous_args = 0
 585 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 586 0004 424C     		ldr	r4, .L173
 587 0006 0F46     		mov	r7, r1
 588 0008 2168     		ldr	r1, [r4]
 589 000a 9046     		mov	r8, r2
 590 000c 9946     		mov	r9, r3
 591 000e 0446     		mov	r4, r0
 592 0010 0029     		cmp	r1, #0
 593 0012 57D0     		beq	.L158
 594 0014 002F     		cmp	r7, #0
 595 0016 55D0     		beq	.L158
 596 0018 0028     		cmp	r0, #0
 597 001a 53D0     		beq	.L158
 598 001c 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 599 001e 002B     		cmp	r3, #0
 600 0020 50D0     		beq	.L158
 601 0022 FFF7FEFF 		bl	strlen
 602 0026 3F28     		cmp	r0, #63
 603 0028 4CD8     		bhi	.L158
 604 002a 2046     		mov	r0, r4
 605 002c FFF7FEFF 		bl	ipaddr_addr
 606 0030 421C     		adds	r2, r0, #1
 607 0032 04D0     		beq	.L169
 608              	.L143:
 609 0034 3860     		str	r0, [r7]
 610 0036 0020     		movs	r0, #0
 611              	.L142:
 612 0038 40B2     		sxtb	r0, r0
 613 003a BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 614              	.L169:
 615 003e 354D     		ldr	r5, .L173+4
 616 0040 0026     		movs	r6, #0
 617              	.L146:
 618 0042 15F80C3C 		ldrb	r3, [r5, #-12]	@ zero_extendqisi2
 619 0046 032B     		cmp	r3, #3
 620 0048 24D0     		beq	.L170
 621              	.L144:
 622 004a 0136     		adds	r6, r6, #1
 623 004c 042E     		cmp	r6, #4
 624 004e 05F15805 		add	r5, r5, #88
 625 0052 F6D1     		bne	.L146
 626 0054 DFF8C4C0 		ldr	ip, .L173+12
 627              	.L145:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLnmGZd.s 			page 12


 628 0058 2F4A     		ldr	r2, .L173+8
 629 005a 0021     		movs	r1, #0
 630 005c 92F800B0 		ldrb	fp, [r2]	@ zero_extendqisi2
 631 0060 2E4D     		ldr	r5, .L173+12
 632 0062 0846     		mov	r0, r1
 633 0064 8A46     		mov	r10, r1
 634              	.L150:
 635 0066 2B78     		ldrb	r3, [r5]	@ zero_extendqisi2
 636 0068 CFB2     		uxtb	r7, r1
 637 006a 2E46     		mov	r6, r5
 638 006c 0131     		adds	r1, r1, #1
 639 006e 73B3     		cbz	r3, .L147
 640 0070 032B     		cmp	r3, #3
 641 0072 1ED0     		beq	.L171
 642              	.L148:
 643 0074 0429     		cmp	r1, #4
 644 0076 05F15805 		add	r5, r5, #88
 645 007a F4D1     		bne	.L150
 646 007c 0328     		cmp	r0, #3
 647 007e 07D8     		bhi	.L160
 648 0080 5826     		movs	r6, #88
 649 0082 06FB00F6 		mul	r6, r6, r0
 650 0086 1CF80630 		ldrb	r3, [ip, r6]	@ zero_extendqisi2
 651 008a 6644     		add	r6, r6, ip
 652 008c 032B     		cmp	r3, #3
 653 008e 1DD0     		beq	.L172
 654              	.L160:
 655 0090 FF20     		movs	r0, #255
 656 0092 D1E7     		b	.L142
 657              	.L170:
 658 0094 2046     		mov	r0, r4
 659 0096 2946     		mov	r1, r5
 660 0098 FFF7FEFF 		bl	strcmp
 661 009c 0028     		cmp	r0, #0
 662 009e D4D1     		bne	.L144
 663 00a0 DFF878C0 		ldr	ip, .L173+12
 664 00a4 5823     		movs	r3, #88
 665 00a6 03FB06C6 		mla	r6, r3, r6, ip
 666 00aa F06C     		ldr	r0, [r6, #76]
 667 00ac 431C     		adds	r3, r0, #1
 668 00ae C1D1     		bne	.L143
 669 00b0 D2E7     		b	.L145
 670              	.L171:
 671 00b2 2B79     		ldrb	r3, [r5, #4]	@ zero_extendqisi2
 672 00b4 C3EB0B03 		rsb	r3, r3, fp
 673 00b8 5345     		cmp	r3, r10
 674 00ba C4BF     		itt	gt
 675 00bc 5FFA83FA 		uxtbgt	r10, r3
 676 00c0 3846     		movgt	r0, r7
 677 00c2 D7E7     		b	.L148
 678              	.L158:
 679 00c4 F220     		movs	r0, #242
 680 00c6 40B2     		sxtb	r0, r0
 681 00c8 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 682              	.L172:
 683 00cc 0746     		mov	r7, r0
 684              	.L147:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLnmGZd.s 			page 13


 685 00ce 1378     		ldrb	r3, [r2]	@ zero_extendqisi2
 686 00d0 0121     		movs	r1, #1
 687 00d2 5D18     		adds	r5, r3, r1
 688 00d4 3371     		strb	r3, [r6, #4]
 689 00d6 C6F85080 		str	r8, [r6, #80]
 690 00da C6F85490 		str	r9, [r6, #84]
 691 00de 3170     		strb	r1, [r6]
 692 00e0 2046     		mov	r0, r4
 693 00e2 1570     		strb	r5, [r2]
 694 00e4 FFF7FEFF 		bl	strlen
 695 00e8 3F28     		cmp	r0, #63
 696 00ea 34BF     		ite	cc
 697 00ec 0546     		movcc	r5, r0
 698 00ee 3F25     		movcs	r5, #63
 699 00f0 2146     		mov	r1, r4
 700 00f2 2A46     		mov	r2, r5
 701 00f4 06F10C00 		add	r0, r6, #12
 702 00f8 FFF7FEFF 		bl	memcpy
 703 00fc 2E44     		add	r6, r6, r5
 704 00fe 0023     		movs	r3, #0
 705 0100 3846     		mov	r0, r7
 706 0102 3373     		strb	r3, [r6, #12]
 707 0104 FFF7FEFF 		bl	dns_check_entry
 708 0108 FB20     		movs	r0, #251
 709 010a 40B2     		sxtb	r0, r0
 710 010c BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 711              	.L174:
 712              		.align	2
 713              	.L173:
 714 0110 00000000 		.word	.LANCHOR3
 715 0114 0C000000 		.word	.LANCHOR1+12
 716 0118 00000000 		.word	.LANCHOR5
 717 011c 00000000 		.word	.LANCHOR1
 718              		.size	dns_gethostbyname, .-dns_gethostbyname
 719              		.section	.bss.dns_seqno,"aw",%nobits
 720              		.set	.LANCHOR5,. + 0
 721              		.type	dns_seqno, %object
 722              		.size	dns_seqno, 1
 723              	dns_seqno:
 724 0000 00       		.space	1
 725              		.section	.bss.dns_table,"aw",%nobits
 726              		.align	2
 727              		.set	.LANCHOR1,. + 0
 728              		.type	dns_table, %object
 729              		.size	dns_table, 352
 730              	dns_table:
 731 0000 00000000 		.space	352
 731      00000000 
 731      00000000 
 731      00000000 
 731      00000000 
 732              		.section	.bss.dns_servers,"aw",%nobits
 733              		.align	2
 734              		.set	.LANCHOR2,. + 0
 735              		.type	dns_servers, %object
 736              		.size	dns_servers, 8
 737              	dns_servers:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccLnmGZd.s 			page 14


 738 0000 00000000 		.space	8
 738      00000000 
 739              		.section	.bss.dns_payload_buffer,"aw",%nobits
 740              		.align	2
 741              		.set	.LANCHOR4,. + 0
 742              		.type	dns_payload_buffer, %object
 743              		.size	dns_payload_buffer, 515
 744              	dns_payload_buffer:
 745 0000 00000000 		.space	515
 745      00000000 
 745      00000000 
 745      00000000 
 745      00000000 
 746 0203 00       		.section	.rodata.str1.4,"aMS",%progbits,1
 747              		.align	2
 748              	.LC0:
 749 0000 3230382E 		.ascii	"208.67.222.222\000"
 749      36372E32 
 749      32322E32 
 749      323200
 750 000f 00       		.section	.bss.dns_pcb,"aw",%nobits
 751              		.align	2
 752              		.set	.LANCHOR3,. + 0
 753              		.type	dns_pcb, %object
 754              		.size	dns_pcb, 4
 755              	dns_pcb:
 756 0000 00000000 		.space	4
 757              		.section	.bss.dns_payload,"aw",%nobits
 758              		.align	2
 759              		.set	.LANCHOR0,. + 0
 760              		.type	dns_payload, %object
 761              		.size	dns_payload, 4
 762              	dns_payload:
 763 0000 00000000 		.space	4
 764              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
