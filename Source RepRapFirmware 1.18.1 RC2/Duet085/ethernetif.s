ARM GAS  C:\Users\George\AppData\Local\Temp\ccaHrAEG.s 			page 1


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
  14              		.file	"ethernetif.c"
  15              		.section	.text.low_level_output,"ax",%progbits
  16              		.align	2
  17              		.thumb
  18              		.thumb_func
  19              		.type	low_level_output, %function
  20              	low_level_output:
  21              		@ args = 0, pretend = 0, frame = 1536
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23 0000 F0B5     		push	{r4, r5, r6, r7, lr}
  24 0002 0846     		mov	r0, r1
  25 0004 0E46     		mov	r6, r1
  26 0006 ADF2046D 		subw	sp, sp, #1540
  27 000a 6FF00101 		mvn	r1, #1
  28 000e FFF7FEFF 		bl	pbuf_header
  29 0012 3789     		ldrh	r7, [r6, #8]
  30 0014 B7F5C06F 		cmp	r7, #1536
  31 0018 28D8     		bhi	.L6
  32 001a 6846     		mov	r0, sp
  33 001c 0021     		movs	r1, #0
  34 001e 4FF4C062 		mov	r2, #1536
  35 0022 FFF7FEFF 		bl	memset
  36 0026 3446     		mov	r4, r6
  37 0028 6B46     		mov	r3, sp
  38              	.L5:
  39 002a 1846     		mov	r0, r3
  40 002c 6168     		ldr	r1, [r4, #4]
  41 002e 6289     		ldrh	r2, [r4, #10]
  42 0030 FFF7FEFF 		bl	memcpy
  43 0034 6589     		ldrh	r5, [r4, #10]
  44 0036 2468     		ldr	r4, [r4]
  45 0038 0346     		mov	r3, r0
  46 003a 2B44     		add	r3, r3, r5
  47 003c 002C     		cmp	r4, #0
  48 003e F4D1     		bne	.L5
  49 0040 6946     		mov	r1, sp
  50 0042 3A46     		mov	r2, r7
  51 0044 0C48     		ldr	r0, .L8
  52 0046 2346     		mov	r3, r4
  53 0048 FFF7FEFF 		bl	emac_dev_write
  54 004c 10F0FF0F 		tst	r0, #255
  55 0050 0CD1     		bne	.L6
  56 0052 3046     		mov	r0, r6
  57 0054 0221     		movs	r1, #2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccaHrAEG.s 			page 2


  58 0056 FFF7FEFF 		bl	pbuf_header
  59 005a 084B     		ldr	r3, .L8+4
  60 005c 2046     		mov	r0, r4
  61 005e 1A88     		ldrh	r2, [r3]
  62 0060 40B2     		sxtb	r0, r0
  63 0062 0132     		adds	r2, r2, #1
  64 0064 1A80     		strh	r2, [r3]	@ movhi
  65 0066 0DF2046D 		addw	sp, sp, #1540
  66              		@ sp needed
  67 006a F0BD     		pop	{r4, r5, r6, r7, pc}
  68              	.L6:
  69 006c FE20     		movs	r0, #254
  70 006e 40B2     		sxtb	r0, r0
  71 0070 0DF2046D 		addw	sp, sp, #1540
  72              		@ sp needed
  73 0074 F0BD     		pop	{r4, r5, r6, r7, pc}
  74              	.L9:
  75 0076 00BF     		.align	2
  76              	.L8:
  77 0078 00000000 		.word	.LANCHOR0
  78 007c 00000000 		.word	lwip_stats
  79              		.size	low_level_output, .-low_level_output
  80              		.section	.text.low_level_input.isra.0,"ax",%progbits
  81              		.align	2
  82              		.thumb
  83              		.thumb_func
  84              		.type	low_level_input.isra.0, %function
  85              	low_level_input.isra.0:
  86              		@ args = 0, pretend = 0, frame = 1544
  87              		@ frame_needed = 0, uses_anonymous_args = 0
  88 0000 70B5     		push	{r4, r5, r6, lr}
  89 0002 ADF5C16D 		sub	sp, sp, #1544
  90 0006 02A9     		add	r1, sp, #8
  91 0008 01AB     		add	r3, sp, #4
  92 000a 1E48     		ldr	r0, .L16
  93 000c 4FF4C062 		mov	r2, #1536
  94 0010 FFF7FEFF 		bl	emac_dev_read
  95 0014 10F0FF0F 		tst	r0, #255
  96 0018 2FD1     		bne	.L15
  97 001a BDF80410 		ldrh	r1, [sp, #4]
  98 001e 0320     		movs	r0, #3
  99 0020 0231     		adds	r1, r1, #2
 100 0022 89B2     		uxth	r1, r1
 101 0024 0246     		mov	r2, r0
 102 0026 FFF7FEFF 		bl	pbuf_alloc
 103 002a 0646     		mov	r6, r0
 104 002c D8B1     		cbz	r0, .L12
 105 002e 6FF00101 		mvn	r1, #1
 106 0032 FFF7FEFF 		bl	pbuf_header
 107 0036 02AD     		add	r5, sp, #8
 108 0038 3446     		mov	r4, r6
 109              	.L14:
 110 003a 6068     		ldr	r0, [r4, #4]
 111 003c 2946     		mov	r1, r5
 112 003e 6289     		ldrh	r2, [r4, #10]
 113 0040 FFF7FEFF 		bl	memcpy
 114 0044 6389     		ldrh	r3, [r4, #10]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccaHrAEG.s 			page 3


 115 0046 2468     		ldr	r4, [r4]
 116 0048 1D44     		add	r5, r5, r3
 117 004a 002C     		cmp	r4, #0
 118 004c F5D1     		bne	.L14
 119 004e 3046     		mov	r0, r6
 120 0050 0221     		movs	r1, #2
 121 0052 FFF7FEFF 		bl	pbuf_header
 122 0056 0C4B     		ldr	r3, .L16+4
 123 0058 3046     		mov	r0, r6
 124 005a 5A88     		ldrh	r2, [r3, #2]
 125 005c 0132     		adds	r2, r2, #1
 126 005e 5A80     		strh	r2, [r3, #2]	@ movhi
 127 0060 0DF5C16D 		add	sp, sp, #1544
 128              		@ sp needed
 129 0064 70BD     		pop	{r4, r5, r6, pc}
 130              	.L12:
 131 0066 084B     		ldr	r3, .L16+4
 132 0068 9989     		ldrh	r1, [r3, #12]
 133 006a DA88     		ldrh	r2, [r3, #6]
 134 006c 0131     		adds	r1, r1, #1
 135 006e 0132     		adds	r2, r2, #1
 136 0070 9981     		strh	r1, [r3, #12]	@ movhi
 137 0072 DA80     		strh	r2, [r3, #6]	@ movhi
 138 0074 0DF5C16D 		add	sp, sp, #1544
 139              		@ sp needed
 140 0078 70BD     		pop	{r4, r5, r6, pc}
 141              	.L15:
 142 007a 0020     		movs	r0, #0
 143 007c 0DF5C16D 		add	sp, sp, #1544
 144              		@ sp needed
 145 0080 70BD     		pop	{r4, r5, r6, pc}
 146              	.L17:
 147 0082 00BF     		.align	2
 148              	.L16:
 149 0084 00000000 		.word	.LANCHOR0
 150 0088 00000000 		.word	lwip_stats
 151              		.size	low_level_input.isra.0, .-low_level_input.isra.0
 152              		.section	.text.EMAC_Handler,"ax",%progbits
 153              		.align	2
 154              		.global	EMAC_Handler
 155              		.thumb
 156              		.thumb_func
 157              		.type	EMAC_Handler, %function
 158              	EMAC_Handler:
 159              		@ args = 0, pretend = 0, frame = 0
 160              		@ frame_needed = 0, uses_anonymous_args = 0
 161              		@ link register save eliminated.
 162 0000 0148     		ldr	r0, .L19
 163 0002 FFF7FEBF 		b	emac_handler
 164              	.L20:
 165 0006 00BF     		.align	2
 166              	.L19:
 167 0008 00000000 		.word	.LANCHOR0
 168              		.size	EMAC_Handler, .-EMAC_Handler
 169              		.section	.text.ethernetif_hardware_init,"ax",%progbits
 170              		.align	2
 171              		.global	ethernetif_hardware_init
ARM GAS  C:\Users\George\AppData\Local\Temp\ccaHrAEG.s 			page 4


 172              		.thumb
 173              		.thumb_func
 174              		.type	ethernetif_hardware_init, %function
 175              	ethernetif_hardware_init:
 176              		@ args = 0, pretend = 0, frame = 16
 177              		@ frame_needed = 0, uses_anonymous_args = 0
 178 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 179 0002 2348     		ldr	r0, .L26
 180 0004 85B0     		sub	sp, sp, #20
 181 0006 0D21     		movs	r1, #13
 182 0008 FFF7FEFF 		bl	rstc_set_external_reset
 183 000c 2048     		ldr	r0, .L26
 184 000e FFF7FEFF 		bl	rstc_reset_extern
 185              	.L23:
 186 0012 1F48     		ldr	r0, .L26
 187 0014 FFF7FEFF 		bl	rstc_get_status
 188 0018 10F48031 		ands	r1, r0, #65536
 189 001c F9D1     		bne	.L23
 190 001e 1D4E     		ldr	r6, .L26+4
 191 0020 1B48     		ldr	r0, .L26
 192 0022 FFF7FEFF 		bl	rstc_set_external_reset
 193 0026 3368     		ldr	r3, [r6]
 194 0028 1B49     		ldr	r1, .L26+8
 195 002a 4FF4C872 		mov	r2, #400
 196 002e A1FB0303 		umull	r0, r3, r1, r3
 197 0032 9B09     		lsrs	r3, r3, #6
 198 0034 02FB03F3 		mul	r3, r2, r3
 199 0038 0193     		str	r3, [sp, #4]
 200              	.L25:
 201 003a 019C     		ldr	r4, [sp, #4]
 202 003c 631E     		subs	r3, r4, #1
 203 003e 0193     		str	r3, [sp, #4]
 204 0040 002C     		cmp	r4, #0
 205 0042 FAD1     		bne	.L25
 206 0044 2A20     		movs	r0, #42
 207 0046 FFF7FEFF 		bl	pmc_enable_periph_clk
 208 004a 144A     		ldr	r2, .L26+12
 209 004c 144B     		ldr	r3, .L26+16
 210 004e 1068     		ldr	r0, [r2]	@ unaligned
 211 0050 144D     		ldr	r5, .L26+20
 212 0052 B2F804E0 		ldrh	lr, [r2, #4]	@ unaligned
 213 0056 CDF80A00 		str	r0, [sp, #10]	@ unaligned
 214 005a 1946     		mov	r1, r3
 215 005c 2846     		mov	r0, r5
 216 005e 02AA     		add	r2, sp, #8
 217 0060 0127     		movs	r7, #1
 218 0062 ADF80EE0 		strh	lr, [sp, #14]	@ unaligned
 219 0066 1D60     		str	r5, [r3]
 220 0068 8DF80940 		strb	r4, [sp, #9]
 221 006c 8DF80870 		strb	r7, [sp, #8]
 222 0070 FFF7FEFF 		bl	emac_dev_init
 223 0074 0C4B     		ldr	r3, .L26+24
 224 0076 4021     		movs	r1, #64
 225 0078 4FF48062 		mov	r2, #1024
 226 007c 83F82A13 		strb	r1, [r3, #810]
 227 0080 5A60     		str	r2, [r3, #4]
 228 0082 2846     		mov	r0, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\ccaHrAEG.s 			page 5


 229 0084 3268     		ldr	r2, [r6]
 230 0086 0221     		movs	r1, #2
 231 0088 FFF7FEFF 		bl	ethernet_phy_init
 232 008c 05B0     		add	sp, sp, #20
 233              		@ sp needed
 234 008e F0BD     		pop	{r4, r5, r6, r7, pc}
 235              	.L27:
 236              		.align	2
 237              	.L26:
 238 0090 001A0E40 		.word	1074665984
 239 0094 00000000 		.word	SystemCoreClock
 240 0098 F1197605 		.word	91625969
 241 009c 00000000 		.word	.LANCHOR1
 242 00a0 00000000 		.word	.LANCHOR0
 243 00a4 00000B40 		.word	1074462720
 244 00a8 00E100E0 		.word	-536813312
 245              		.size	ethernetif_hardware_init, .-ethernetif_hardware_init
 246              		.section	.text.ethernetif_establish_link,"ax",%progbits
 247              		.align	2
 248              		.global	ethernetif_establish_link
 249              		.thumb
 250              		.thumb_func
 251              		.type	ethernetif_establish_link, %function
 252              	ethernetif_establish_link:
 253              		@ args = 0, pretend = 0, frame = 0
 254              		@ frame_needed = 0, uses_anonymous_args = 0
 255 0000 08B5     		push	{r3, lr}
 256 0002 0848     		ldr	r0, .L32
 257 0004 0221     		movs	r1, #2
 258 0006 FFF7FEFF 		bl	ethernet_phy_auto_negotiate
 259 000a 08B1     		cbz	r0, .L31
 260 000c 0020     		movs	r0, #0
 261 000e 08BD     		pop	{r3, pc}
 262              	.L31:
 263 0010 0221     		movs	r1, #2
 264 0012 0122     		movs	r2, #1
 265 0014 0348     		ldr	r0, .L32
 266 0016 FFF7FEFF 		bl	ethernet_phy_set_link
 267 001a D0F10100 		rsbs	r0, r0, #1
 268 001e 38BF     		it	cc
 269 0020 0020     		movcc	r0, #0
 270 0022 08BD     		pop	{r3, pc}
 271              	.L33:
 272              		.align	2
 273              	.L32:
 274 0024 00000B40 		.word	1074462720
 275              		.size	ethernetif_establish_link, .-ethernetif_establish_link
 276              		.section	.text.ethernetif_link_established,"ax",%progbits
 277              		.align	2
 278              		.global	ethernetif_link_established
 279              		.thumb
 280              		.thumb_func
 281              		.type	ethernetif_link_established, %function
 282              	ethernetif_link_established:
 283              		@ args = 0, pretend = 0, frame = 8
 284              		@ frame_needed = 0, uses_anonymous_args = 0
 285 0000 00B5     		push	{lr}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccaHrAEG.s 			page 6


 286 0002 83B0     		sub	sp, sp, #12
 287 0004 0848     		ldr	r0, .L37
 288 0006 0221     		movs	r1, #2
 289 0008 0122     		movs	r2, #1
 290 000a 01AB     		add	r3, sp, #4
 291 000c FFF7FEFF 		bl	ethernet_phy_read_register
 292 0010 28B9     		cbnz	r0, .L36
 293 0012 0198     		ldr	r0, [sp, #4]
 294 0014 C0F38000 		ubfx	r0, r0, #2, #1
 295 0018 03B0     		add	sp, sp, #12
 296              		@ sp needed
 297 001a 5DF804FB 		ldr	pc, [sp], #4
 298              	.L36:
 299 001e 0020     		movs	r0, #0
 300 0020 03B0     		add	sp, sp, #12
 301              		@ sp needed
 302 0022 5DF804FB 		ldr	pc, [sp], #4
 303              	.L38:
 304 0026 00BF     		.align	2
 305              	.L37:
 306 0028 00000B40 		.word	1074462720
 307              		.size	ethernetif_link_established, .-ethernetif_link_established
 308              		.section	.text.ethernetif_input,"ax",%progbits
 309              		.align	2
 310              		.global	ethernetif_input
 311              		.thumb
 312              		.thumb_func
 313              		.type	ethernetif_input, %function
 314              	ethernetif_input:
 315              		@ args = 0, pretend = 0, frame = 0
 316              		@ frame_needed = 0, uses_anonymous_args = 0
 317 0000 38B5     		push	{r3, r4, r5, lr}
 318 0002 0446     		mov	r4, r0
 319 0004 FFF7FEFF 		bl	low_level_input.isra.0
 320 0008 0546     		mov	r5, r0
 321 000a 50B1     		cbz	r0, .L41
 322 000c 2369     		ldr	r3, [r4, #16]
 323 000e 2146     		mov	r1, r4
 324 0010 9847     		blx	r3
 325 0012 08B9     		cbnz	r0, .L43
 326 0014 0120     		movs	r0, #1
 327 0016 38BD     		pop	{r3, r4, r5, pc}
 328              	.L43:
 329 0018 2846     		mov	r0, r5
 330 001a FFF7FEFF 		bl	pbuf_free
 331 001e 0120     		movs	r0, #1
 332 0020 38BD     		pop	{r3, r4, r5, pc}
 333              	.L41:
 334 0022 38BD     		pop	{r3, r4, r5, pc}
 335              		.size	ethernetif_input, .-ethernetif_input
 336              		.section	.text.ethernetif_init,"ax",%progbits
 337              		.align	2
 338              		.global	ethernetif_init
 339              		.thumb
 340              		.thumb_func
 341              		.type	ethernetif_init, %function
 342              	ethernetif_init:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccaHrAEG.s 			page 7


 343              		@ args = 0, pretend = 0, frame = 0
 344              		@ frame_needed = 0, uses_anonymous_args = 0
 345              		@ link register save eliminated.
 346 0000 2DE9F00F 		push	{r4, r5, r6, r7, r8, r9, r10, fp}
 347 0004 1A4A     		ldr	r2, .L45
 348 0006 90F835B0 		ldrb	fp, [r0, #53]	@ zero_extendqisi2
 349 000a 92F80080 		ldrb	r8, [r2]	@ zero_extendqisi2
 350 000e 9778     		ldrb	r7, [r2, #2]	@ zero_extendqisi2
 351 0010 D678     		ldrb	r6, [r2, #3]	@ zero_extendqisi2
 352 0012 1579     		ldrb	r5, [r2, #4]	@ zero_extendqisi2
 353 0014 5479     		ldrb	r4, [r2, #5]	@ zero_extendqisi2
 354 0016 92F801C0 		ldrb	ip, [r2, #1]	@ zero_extendqisi2
 355 001a 0346     		mov	r3, r0
 356 001c DFF854A0 		ldr	r10, .L45+4
 357 0020 DFF85490 		ldr	r9, .L45+8
 358 0024 6521     		movs	r1, #101
 359 0026 6E20     		movs	r0, #110
 360 0028 6BF05D02 		orn	r2, fp, #93
 361 002c 4FF0060B 		mov	fp, #6
 362 0030 83F83610 		strb	r1, [r3, #54]
 363 0034 83F83700 		strb	r0, [r3, #55]
 364 0038 40F2DC51 		movw	r1, #1500
 365 003c 0020     		movs	r0, #0
 366 003e 83F82EB0 		strb	fp, [r3, #46]
 367 0042 83F82F80 		strb	r8, [r3, #47]
 368 0046 83F830C0 		strb	ip, [r3, #48]
 369 004a 83F83170 		strb	r7, [r3, #49]
 370 004e 83F83260 		strb	r6, [r3, #50]
 371 0052 83F83350 		strb	r5, [r3, #51]
 372 0056 83F83440 		strb	r4, [r3, #52]
 373 005a 83F83520 		strb	r2, [r3, #53]
 374 005e C3F814A0 		str	r10, [r3, #20]
 375 0062 C3F81890 		str	r9, [r3, #24]
 376 0066 9985     		strh	r1, [r3, #44]	@ movhi
 377 0068 1862     		str	r0, [r3, #32]
 378 006a BDE8F00F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp}
 379 006e 7047     		bx	lr
 380              	.L46:
 381              		.align	2
 382              	.L45:
 383 0070 00000000 		.word	.LANCHOR1
 384 0074 00000000 		.word	etharp_output
 385 0078 00000000 		.word	low_level_output
 386              		.size	ethernetif_init, .-ethernetif_init
 387              		.section	.text.ethernetif_set_rx_callback,"ax",%progbits
 388              		.align	2
 389              		.global	ethernetif_set_rx_callback
 390              		.thumb
 391              		.thumb_func
 392              		.type	ethernetif_set_rx_callback, %function
 393              	ethernetif_set_rx_callback:
 394              		@ args = 0, pretend = 0, frame = 0
 395              		@ frame_needed = 0, uses_anonymous_args = 0
 396              		@ link register save eliminated.
 397 0000 0146     		mov	r1, r0
 398 0002 0148     		ldr	r0, .L48
 399 0004 FFF7FEBF 		b	emac_dev_set_rx_callback
ARM GAS  C:\Users\George\AppData\Local\Temp\ccaHrAEG.s 			page 8


 400              	.L49:
 401              		.align	2
 402              	.L48:
 403 0008 00000000 		.word	.LANCHOR0
 404              		.size	ethernetif_set_rx_callback, .-ethernetif_set_rx_callback
 405              		.section	.text.ethernetif_set_mac_address,"ax",%progbits
 406              		.align	2
 407              		.global	ethernetif_set_mac_address
 408              		.thumb
 409              		.thumb_func
 410              		.type	ethernetif_set_mac_address, %function
 411              	ethernetif_set_mac_address:
 412              		@ args = 0, pretend = 0, frame = 0
 413              		@ frame_needed = 0, uses_anonymous_args = 0
 414              		@ link register save eliminated.
 415 0000 0349     		ldr	r1, .L54
 416 0002 0023     		movs	r3, #0
 417              	.L52:
 418 0004 C25C     		ldrb	r2, [r0, r3]	@ zero_extendqisi2
 419 0006 CA54     		strb	r2, [r1, r3]
 420 0008 0133     		adds	r3, r3, #1
 421 000a 062B     		cmp	r3, #6
 422 000c FAD1     		bne	.L52
 423 000e 7047     		bx	lr
 424              	.L55:
 425              		.align	2
 426              	.L54:
 427 0010 00000000 		.word	.LANCHOR1
 428              		.size	ethernetif_set_mac_address, .-ethernetif_set_mac_address
 429              		.section	.text.sys_now,"ax",%progbits
 430              		.align	2
 431              		.global	sys_now
 432              		.thumb
 433              		.thumb_func
 434              		.type	sys_now, %function
 435              	sys_now:
 436              		@ args = 0, pretend = 0, frame = 0
 437              		@ frame_needed = 0, uses_anonymous_args = 0
 438              		@ link register save eliminated.
 439 0000 FFF7FEBF 		b	millis
 440              		.size	sys_now, .-sys_now
 441              		.section	.bss.gs_emac_dev,"aw",%nobits
 442              		.align	2
 443              		.set	.LANCHOR0,. + 0
 444              		.type	gs_emac_dev, %object
 445              		.size	gs_emac_dev, 44
 446              	gs_emac_dev:
 447 0000 00000000 		.space	44
 447      00000000 
 447      00000000 
 447      00000000 
 447      00000000 
 448              		.section	.data.gs_uc_mac_address,"aw",%progbits
 449              		.align	2
 450              		.set	.LANCHOR1,. + 0
 451              		.type	gs_uc_mac_address, %object
 452              		.size	gs_uc_mac_address, 6
ARM GAS  C:\Users\George\AppData\Local\Temp\ccaHrAEG.s 			page 9


 453              	gs_uc_mac_address:
 454 0000 BE       		.byte	-66
 455 0001 EF       		.byte	-17
 456 0002 DE       		.byte	-34
 457 0003 AD       		.byte	-83
 458 0004 FE       		.byte	-2
 459 0005 ED       		.byte	-19
 460 0006 0000     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 461              		.align	2
 462              		.type	cpu_irq_critical_section_counter, %object
 463              		.size	cpu_irq_critical_section_counter, 4
 464              	cpu_irq_critical_section_counter:
 465 0000 00000000 		.space	4
 466              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 467              		.type	cpu_irq_prev_interrupt_state, %object
 468              		.size	cpu_irq_prev_interrupt_state, 1
 469              	cpu_irq_prev_interrupt_state:
 470 0000 00       		.space	1
 471              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
