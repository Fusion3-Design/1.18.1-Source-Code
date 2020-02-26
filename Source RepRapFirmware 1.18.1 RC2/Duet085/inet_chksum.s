ARM GAS  C:\Users\George\AppData\Local\Temp\ccQv3xln.s 			page 1


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
  14              		.file	"inet_chksum.c"
  15              		.section	.text.lwip_standard_chksum,"ax",%progbits
  16              		.align	2
  17              		.thumb
  18              		.thumb_func
  19              		.type	lwip_standard_chksum, %function
  20              	lwip_standard_chksum:
  21              		@ args = 0, pretend = 0, frame = 8
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23              		@ link register save eliminated.
  24 0000 70B4     		push	{r4, r5, r6}
  25 0002 0022     		movs	r2, #0
  26 0004 83B0     		sub	sp, sp, #12
  27 0006 10F00106 		ands	r6, r0, #1
  28 000a ADF80620 		strh	r2, [sp, #6]	@ movhi
  29 000e 06D0     		beq	.L2
  30 0010 9142     		cmp	r1, r2
  31 0012 16DD     		ble	.L3
  32 0014 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
  33 0016 0139     		subs	r1, r1, #1
  34 0018 8DF80730 		strb	r3, [sp, #7]
  35 001c 0130     		adds	r0, r0, #1
  36              	.L2:
  37 001e 0129     		cmp	r1, #1
  38 0020 27DD     		ble	.L9
  39 0022 0446     		mov	r4, r0
  40 0024 0B46     		mov	r3, r1
  41 0026 0022     		movs	r2, #0
  42              	.L5:
  43 0028 34F8025B 		ldrh	r5, [r4], #2
  44 002c 023B     		subs	r3, r3, #2
  45 002e 012B     		cmp	r3, #1
  46 0030 2A44     		add	r2, r2, r5
  47 0032 F9DC     		bgt	.L5
  48 0034 0239     		subs	r1, r1, #2
  49 0036 4B08     		lsrs	r3, r1, #1
  50 0038 5C1C     		adds	r4, r3, #1
  51 003a A1EB4301 		sub	r1, r1, r3, lsl #1
  52 003e 00EB4400 		add	r0, r0, r4, lsl #1
  53              	.L3:
  54 0042 0129     		cmp	r1, #1
  55 0044 04BF     		itt	eq
  56 0046 0378     		ldrbeq	r3, [r0]	@ zero_extendqisi2
  57 0048 8DF80630 		strbeq	r3, [sp, #6]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQv3xln.s 			page 2


  58 004c BDF80600 		ldrh	r0, [sp, #6]
  59 0050 0244     		add	r2, r2, r0
  60 0052 90B2     		uxth	r0, r2
  61 0054 00EB1242 		add	r2, r0, r2, lsr #16
  62 0058 90B2     		uxth	r0, r2
  63 005a 00EB1240 		add	r0, r0, r2, lsr #16
  64 005e 26B1     		cbz	r6, .L7
  65 0060 0302     		lsls	r3, r0, #8
  66 0062 9BB2     		uxth	r3, r3
  67 0064 C0F30720 		ubfx	r0, r0, #8, #8
  68 0068 1843     		orrs	r0, r0, r3
  69              	.L7:
  70 006a 80B2     		uxth	r0, r0
  71 006c 03B0     		add	sp, sp, #12
  72              		@ sp needed
  73 006e 70BC     		pop	{r4, r5, r6}
  74 0070 7047     		bx	lr
  75              	.L9:
  76 0072 0022     		movs	r2, #0
  77 0074 E5E7     		b	.L3
  78              		.size	lwip_standard_chksum, .-lwip_standard_chksum
  79 0076 00BF     		.section	.text.inet_chksum_pseudo,"ax",%progbits
  80              		.align	2
  81              		.global	inet_chksum_pseudo
  82              		.thumb
  83              		.thumb_func
  84              		.type	inet_chksum_pseudo, %function
  85              	inet_chksum_pseudo:
  86              		@ args = 4, pretend = 0, frame = 0
  87              		@ frame_needed = 0, uses_anonymous_args = 0
  88 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
  89 0004 0446     		mov	r4, r0
  90 0006 8A46     		mov	r10, r1
  91 0008 9146     		mov	r9, r2
  92 000a 9846     		mov	r8, r3
  93 000c BDF82070 		ldrh	r7, [sp, #32]
  94 0010 0028     		cmp	r0, #0
  95 0012 3BD0     		beq	.L23
  96 0014 0026     		movs	r6, #0
  97 0016 3546     		mov	r5, r6
  98              	.L22:
  99 0018 6068     		ldr	r0, [r4, #4]
 100 001a 6189     		ldrh	r1, [r4, #10]
 101 001c FFF7FEFF 		bl	lwip_standard_chksum
 102 0020 6389     		ldrh	r3, [r4, #10]
 103 0022 2844     		add	r0, r0, r5
 104 0024 82B2     		uxth	r2, r0
 105 0026 DB07     		lsls	r3, r3, #31
 106 0028 02EB1045 		add	r5, r2, r0, lsr #16
 107 002c 07D5     		bpl	.L20
 108 002e 2B02     		lsls	r3, r5, #8
 109 0030 C6F10106 		rsb	r6, r6, #1
 110 0034 9BB2     		uxth	r3, r3
 111 0036 C5F30725 		ubfx	r5, r5, #8, #8
 112 003a F6B2     		uxtb	r6, r6
 113 003c 1D43     		orrs	r5, r5, r3
 114              	.L20:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQv3xln.s 			page 3


 115 003e 2468     		ldr	r4, [r4]
 116 0040 002C     		cmp	r4, #0
 117 0042 E9D1     		bne	.L22
 118 0044 26B1     		cbz	r6, .L19
 119 0046 2B02     		lsls	r3, r5, #8
 120 0048 9BB2     		uxth	r3, r3
 121 004a C5F30725 		ubfx	r5, r5, #8, #8
 122 004e 1D43     		orrs	r5, r5, r3
 123              	.L19:
 124 0050 DAF80020 		ldr	r2, [r10]
 125 0054 D9F80030 		ldr	r3, [r9]
 126 0058 91B2     		uxth	r1, r2
 127 005a 01EB1242 		add	r2, r1, r2, lsr #16
 128 005e 99B2     		uxth	r1, r3
 129 0060 0A44     		add	r2, r2, r1
 130 0062 02EB1343 		add	r3, r2, r3, lsr #16
 131 0066 4046     		mov	r0, r8
 132 0068 1D44     		add	r5, r5, r3
 133 006a FFF7FEFF 		bl	lwip_htons
 134 006e 0544     		add	r5, r5, r0
 135 0070 3846     		mov	r0, r7
 136 0072 FFF7FEFF 		bl	lwip_htons
 137 0076 2844     		add	r0, r0, r5
 138 0078 83B2     		uxth	r3, r0
 139 007a 03EB1043 		add	r3, r3, r0, lsr #16
 140 007e 98B2     		uxth	r0, r3
 141 0080 00EB1343 		add	r3, r0, r3, lsr #16
 142 0084 D843     		mvns	r0, r3
 143 0086 80B2     		uxth	r0, r0
 144 0088 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 145              	.L23:
 146 008c 0546     		mov	r5, r0
 147 008e DFE7     		b	.L19
 148              		.size	inet_chksum_pseudo, .-inet_chksum_pseudo
 149              		.section	.text.inet_chksum_pseudo_partial,"ax",%progbits
 150              		.align	2
 151              		.global	inet_chksum_pseudo_partial
 152              		.thumb
 153              		.thumb_func
 154              		.type	inet_chksum_pseudo_partial, %function
 155              	inet_chksum_pseudo_partial:
 156              		@ args = 8, pretend = 0, frame = 8
 157              		@ frame_needed = 0, uses_anonymous_args = 0
 158 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 159 0004 83B0     		sub	sp, sp, #12
 160 0006 9946     		mov	r9, r3
 161 0008 BDF83030 		ldrh	r3, [sp, #48]
 162 000c 0446     		mov	r4, r0
 163 000e 8B46     		mov	fp, r1
 164 0010 9246     		mov	r10, r2
 165 0012 0193     		str	r3, [sp, #4]
 166 0014 BDF83450 		ldrh	r5, [sp, #52]
 167 0018 0028     		cmp	r0, #0
 168 001a 48D0     		beq	.L37
 169 001c 002D     		cmp	r5, #0
 170 001e 48D0     		beq	.L38
 171 0020 0027     		movs	r7, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQv3xln.s 			page 4


 172 0022 3E46     		mov	r6, r7
 173 0024 00E0     		b	.L36
 174              	.L33:
 175 0026 EDB1     		cbz	r5, .L35
 176              	.L36:
 177 0028 6389     		ldrh	r3, [r4, #10]
 178 002a 6068     		ldr	r0, [r4, #4]
 179 002c 9D42     		cmp	r5, r3
 180 002e 34BF     		ite	cc
 181 0030 A846     		movcc	r8, r5
 182 0032 9846     		movcs	r8, r3
 183 0034 4146     		mov	r1, r8
 184 0036 FFF7FEFF 		bl	lwip_standard_chksum
 185 003a 6289     		ldrh	r2, [r4, #10]
 186 003c 3044     		add	r0, r0, r6
 187 003e C8EB0505 		rsb	r5, r8, r5
 188 0042 86B2     		uxth	r6, r0
 189 0044 D307     		lsls	r3, r2, #31
 190 0046 ADB2     		uxth	r5, r5
 191 0048 06EB1046 		add	r6, r6, r0, lsr #16
 192 004c 07D5     		bpl	.L32
 193 004e 3302     		lsls	r3, r6, #8
 194 0050 C7F10107 		rsb	r7, r7, #1
 195 0054 9BB2     		uxth	r3, r3
 196 0056 C6F30726 		ubfx	r6, r6, #8, #8
 197 005a FFB2     		uxtb	r7, r7
 198 005c 1E43     		orrs	r6, r6, r3
 199              	.L32:
 200 005e 2468     		ldr	r4, [r4]
 201 0060 002C     		cmp	r4, #0
 202 0062 E0D1     		bne	.L33
 203              	.L35:
 204 0064 27B1     		cbz	r7, .L31
 205 0066 3302     		lsls	r3, r6, #8
 206 0068 9BB2     		uxth	r3, r3
 207 006a C6F30726 		ubfx	r6, r6, #8, #8
 208 006e 1E43     		orrs	r6, r6, r3
 209              	.L31:
 210 0070 DBF80020 		ldr	r2, [fp]
 211 0074 DAF80030 		ldr	r3, [r10]
 212 0078 91B2     		uxth	r1, r2
 213 007a 01EB1242 		add	r2, r1, r2, lsr #16
 214 007e 99B2     		uxth	r1, r3
 215 0080 0A44     		add	r2, r2, r1
 216 0082 02EB1343 		add	r3, r2, r3, lsr #16
 217 0086 4846     		mov	r0, r9
 218 0088 1E44     		add	r6, r6, r3
 219 008a FFF7FEFF 		bl	lwip_htons
 220 008e 0644     		add	r6, r6, r0
 221 0090 0198     		ldr	r0, [sp, #4]
 222 0092 FFF7FEFF 		bl	lwip_htons
 223 0096 3044     		add	r0, r0, r6
 224 0098 83B2     		uxth	r3, r0
 225 009a 03EB1043 		add	r3, r3, r0, lsr #16
 226 009e 98B2     		uxth	r0, r3
 227 00a0 00EB1343 		add	r3, r0, r3, lsr #16
 228 00a4 D843     		mvns	r0, r3
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQv3xln.s 			page 5


 229 00a6 80B2     		uxth	r0, r0
 230 00a8 03B0     		add	sp, sp, #12
 231              		@ sp needed
 232 00aa BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 233              	.L37:
 234 00ae 0646     		mov	r6, r0
 235 00b0 DEE7     		b	.L31
 236              	.L38:
 237 00b2 2E46     		mov	r6, r5
 238 00b4 DCE7     		b	.L31
 239              		.size	inet_chksum_pseudo_partial, .-inet_chksum_pseudo_partial
 240 00b6 00BF     		.section	.text.inet_chksum,"ax",%progbits
 241              		.align	2
 242              		.global	inet_chksum
 243              		.thumb
 244              		.thumb_func
 245              		.type	inet_chksum, %function
 246              	inet_chksum:
 247              		@ args = 0, pretend = 0, frame = 0
 248              		@ frame_needed = 0, uses_anonymous_args = 0
 249 0000 08B5     		push	{r3, lr}
 250 0002 FFF7FEFF 		bl	lwip_standard_chksum
 251 0006 C043     		mvns	r0, r0
 252 0008 80B2     		uxth	r0, r0
 253 000a 08BD     		pop	{r3, pc}
 254              		.size	inet_chksum, .-inet_chksum
 255              		.section	.text.inet_chksum_pbuf,"ax",%progbits
 256              		.align	2
 257              		.global	inet_chksum_pbuf
 258              		.thumb
 259              		.thumb_func
 260              		.type	inet_chksum_pbuf, %function
 261              	inet_chksum_pbuf:
 262              		@ args = 0, pretend = 0, frame = 0
 263              		@ frame_needed = 0, uses_anonymous_args = 0
 264 0000 70B5     		push	{r4, r5, r6, lr}
 265 0002 0446     		mov	r4, r0
 266 0004 18B3     		cbz	r0, .L51
 267 0006 0026     		movs	r6, #0
 268 0008 3546     		mov	r5, r6
 269              	.L49:
 270 000a 6068     		ldr	r0, [r4, #4]
 271 000c 6189     		ldrh	r1, [r4, #10]
 272 000e FFF7FEFF 		bl	lwip_standard_chksum
 273 0012 6389     		ldrh	r3, [r4, #10]
 274 0014 2844     		add	r0, r0, r5
 275 0016 85B2     		uxth	r5, r0
 276 0018 DB07     		lsls	r3, r3, #31
 277 001a 05EB1045 		add	r5, r5, r0, lsr #16
 278 001e 07D5     		bpl	.L47
 279 0020 2B02     		lsls	r3, r5, #8
 280 0022 C6F10106 		rsb	r6, r6, #1
 281 0026 9BB2     		uxth	r3, r3
 282 0028 C5F30725 		ubfx	r5, r5, #8, #8
 283 002c F6B2     		uxtb	r6, r6
 284 002e 1D43     		orrs	r5, r5, r3
 285              	.L47:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccQv3xln.s 			page 6


 286 0030 2468     		ldr	r4, [r4]
 287 0032 002C     		cmp	r4, #0
 288 0034 E9D1     		bne	.L49
 289 0036 3EB1     		cbz	r6, .L55
 290 0038 2B02     		lsls	r3, r5, #8
 291 003a 9BB2     		uxth	r3, r3
 292 003c C5F30720 		ubfx	r0, r5, #8, #8
 293 0040 1843     		orrs	r0, r0, r3
 294 0042 C043     		mvns	r0, r0
 295 0044 80B2     		uxth	r0, r0
 296 0046 70BD     		pop	{r4, r5, r6, pc}
 297              	.L55:
 298 0048 E843     		mvns	r0, r5
 299 004a 80B2     		uxth	r0, r0
 300 004c 70BD     		pop	{r4, r5, r6, pc}
 301              	.L51:
 302 004e 4FF6FF70 		movw	r0, #65535
 303 0052 70BD     		pop	{r4, r5, r6, pc}
 304              		.size	inet_chksum_pbuf, .-inet_chksum_pbuf
 305              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
