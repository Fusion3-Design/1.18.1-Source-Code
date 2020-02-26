ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 1


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
  15              		.file	"dhcp.cpp"
  16              		.section	.text._Z17default_ip_assignv,"ax",%progbits
  17              		.align	2
  18              		.global	_Z17default_ip_assignv
  19              		.thumb
  20              		.thumb_func
  21              		.type	_Z17default_ip_assignv, %function
  22              	_Z17default_ip_assignv:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 08B5     		push	{r3, lr}
  26 0002 4FF47060 		mov	r0, #3840
  27 0006 0949     		ldr	r1, .L2
  28 0008 0422     		movs	r2, #4
  29 000a FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
  30 000e 4FF4A060 		mov	r0, #1280
  31 0012 0749     		ldr	r1, .L2+4
  32 0014 0422     		movs	r2, #4
  33 0016 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
  34 001a 4FF48070 		mov	r0, #256
  35 001e 0549     		ldr	r1, .L2+8
  36 0020 0422     		movs	r2, #4
  37 0022 BDE80840 		pop	{r3, lr}
  38 0026 FFF7FEBF 		b	_Z17WIZCHIP_WRITE_BUFmPKht
  39              	.L3:
  40 002a 00BF     		.align	2
  41              	.L2:
  42 002c 00000000 		.word	.LANCHOR0
  43 0030 00000000 		.word	.LANCHOR1
  44 0034 00000000 		.word	.LANCHOR2
  45              		.size	_Z17default_ip_assignv, .-_Z17default_ip_assignv
  46              		.section	.text._Z17default_ip_updatev,"ax",%progbits
  47              		.align	2
  48              		.global	_Z17default_ip_updatev
  49              		.thumb
  50              		.thumb_func
  51              		.type	_Z17default_ip_updatev, %function
  52              	_Z17default_ip_updatev:
  53              		@ args = 0, pretend = 0, frame = 0
  54              		@ frame_needed = 0, uses_anonymous_args = 0
  55 0000 08B5     		push	{r3, lr}
  56 0002 8021     		movs	r1, #128
  57 0004 0020     		movs	r0, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 2


  58 0006 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
  59 000a 0020     		movs	r0, #0
  60 000c FFF7FEFF 		bl	_Z12WIZCHIP_READm
  61 0010 FFF7FEFF 		bl	_Z17default_ip_assignv
  62 0014 4FF41060 		mov	r0, #2304
  63 0018 0249     		ldr	r1, .L5
  64 001a 0622     		movs	r2, #6
  65 001c BDE80840 		pop	{r3, lr}
  66 0020 FFF7FEBF 		b	_Z17WIZCHIP_WRITE_BUFmPKht
  67              	.L6:
  68              		.align	2
  69              	.L5:
  70 0024 00000000 		.word	.LANCHOR3
  71              		.size	_Z17default_ip_updatev, .-_Z17default_ip_updatev
  72              		.section	.text._Z19default_ip_conflictv,"ax",%progbits
  73              		.align	2
  74              		.global	_Z19default_ip_conflictv
  75              		.thumb
  76              		.thumb_func
  77              		.type	_Z19default_ip_conflictv, %function
  78              	_Z19default_ip_conflictv:
  79              		@ args = 0, pretend = 0, frame = 0
  80              		@ frame_needed = 0, uses_anonymous_args = 0
  81 0000 08B5     		push	{r3, lr}
  82 0002 8021     		movs	r1, #128
  83 0004 0020     		movs	r0, #0
  84 0006 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
  85 000a 0020     		movs	r0, #0
  86 000c FFF7FEFF 		bl	_Z12WIZCHIP_READm
  87 0010 4FF41060 		mov	r0, #2304
  88 0014 0249     		ldr	r1, .L8
  89 0016 0622     		movs	r2, #6
  90 0018 BDE80840 		pop	{r3, lr}
  91 001c FFF7FEBF 		b	_Z17WIZCHIP_WRITE_BUFmPKht
  92              	.L9:
  93              		.align	2
  94              	.L8:
  95 0020 00000000 		.word	.LANCHOR3
  96              		.size	_Z19default_ip_conflictv, .-_Z19default_ip_conflictv
  97              		.section	.text._Z15reg_dhcp_cbfuncPFvvES0_S0_,"ax",%progbits
  98              		.align	2
  99              		.global	_Z15reg_dhcp_cbfuncPFvvES0_S0_
 100              		.thumb
 101              		.thumb_func
 102              		.type	_Z15reg_dhcp_cbfuncPFvvES0_S0_, %function
 103              	_Z15reg_dhcp_cbfuncPFvvES0_S0_:
 104              		@ args = 0, pretend = 0, frame = 0
 105              		@ frame_needed = 0, uses_anonymous_args = 0
 106              		@ link register save eliminated.
 107 0000 F0B4     		push	{r4, r5, r6, r7}
 108 0002 094B     		ldr	r3, .L24
 109 0004 094D     		ldr	r5, .L24+4
 110 0006 0A4C     		ldr	r4, .L24+8
 111 0008 DFF830C0 		ldr	ip, .L24+20
 112 000c 094F     		ldr	r7, .L24+12
 113 000e 0A4E     		ldr	r6, .L24+16
 114 0010 C5F800C0 		str	ip, [r5]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 3


 115 0014 2760     		str	r7, [r4]
 116 0016 1E60     		str	r6, [r3]
 117 0018 00B1     		cbz	r0, .L11
 118 001a 2860     		str	r0, [r5]
 119              	.L11:
 120 001c 01B1     		cbz	r1, .L12
 121 001e 2160     		str	r1, [r4]
 122              	.L12:
 123 0020 02B1     		cbz	r2, .L10
 124 0022 1A60     		str	r2, [r3]
 125              	.L10:
 126 0024 F0BC     		pop	{r4, r5, r6, r7}
 127 0026 7047     		bx	lr
 128              	.L25:
 129              		.align	2
 130              	.L24:
 131 0028 00000000 		.word	.LANCHOR6
 132 002c 00000000 		.word	.LANCHOR4
 133 0030 00000000 		.word	.LANCHOR5
 134 0034 00000000 		.word	_Z17default_ip_updatev
 135 0038 00000000 		.word	_Z19default_ip_conflictv
 136 003c 00000000 		.word	_Z17default_ip_assignv
 137              		.size	_Z15reg_dhcp_cbfuncPFvvES0_S0_, .-_Z15reg_dhcp_cbfuncPFvvES0_S0_
 138              		.section	.text._Z11makeDHCPMSGv,"ax",%progbits
 139              		.align	2
 140              		.global	_Z11makeDHCPMSGv
 141              		.thumb
 142              		.thumb_func
 143              		.type	_Z11makeDHCPMSGv, %function
 144              	_Z11makeDHCPMSGv:
 145              		@ args = 0, pretend = 0, frame = 8
 146              		@ frame_needed = 0, uses_anonymous_args = 0
 147 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 148 0004 82B0     		sub	sp, sp, #8
 149 0006 4FF41060 		mov	r0, #2304
 150 000a 6946     		mov	r1, sp
 151 000c 0622     		movs	r2, #6
 152 000e FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 153 0012 304B     		ldr	r3, .L36
 154 0014 3048     		ldr	r0, .L36+4
 155 0016 1B68     		ldr	r3, [r3]
 156 0018 3049     		ldr	r1, .L36+8
 157 001a C371     		strb	r3, [r0, #7]
 158 001c 1A0E     		lsrs	r2, r3, #24
 159 001e 0F78     		ldrb	r7, [r1]	@ zero_extendqisi2
 160 0020 4E78     		ldrb	r6, [r1, #1]	@ zero_extendqisi2
 161 0022 8D78     		ldrb	r5, [r1, #2]	@ zero_extendqisi2
 162 0024 0271     		strb	r2, [r0, #4]
 163 0026 0124     		movs	r4, #1
 164 0028 0022     		movs	r2, #0
 165 002a C3F30749 		ubfx	r9, r3, #16, #8
 166 002e C3F30728 		ubfx	r8, r3, #8, #8
 167 0032 4FF0060A 		mov	r10, #6
 168 0036 4FF0800C 		mov	ip, #128
 169 003a 0346     		mov	r3, r0
 170 003c 0470     		strb	r4, [r0]
 171 003e 4470     		strb	r4, [r0, #1]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 4


 172 0040 80F802A0 		strb	r10, [r0, #2]
 173 0044 80F80590 		strb	r9, [r0, #5]
 174 0048 80F80680 		strb	r8, [r0, #6]
 175 004c 80F80AC0 		strb	ip, [r0, #10]
 176 0050 0777     		strb	r7, [r0, #28]
 177 0052 4677     		strb	r6, [r0, #29]
 178 0054 C270     		strb	r2, [r0, #3]
 179 0056 0281     		strh	r2, [r0, #8]	@ movhi
 180 0058 C272     		strb	r2, [r0, #11]
 181 005a 0273     		strb	r2, [r0, #12]
 182 005c 4273     		strb	r2, [r0, #13]
 183 005e 8273     		strb	r2, [r0, #14]
 184 0060 C273     		strb	r2, [r0, #15]
 185 0062 0274     		strb	r2, [r0, #16]
 186 0064 4274     		strb	r2, [r0, #17]
 187 0066 8274     		strb	r2, [r0, #18]
 188 0068 C274     		strb	r2, [r0, #19]
 189 006a 0275     		strb	r2, [r0, #20]
 190 006c 4275     		strb	r2, [r0, #21]
 191 006e 8275     		strb	r2, [r0, #22]
 192 0070 C275     		strb	r2, [r0, #23]
 193 0072 0276     		strb	r2, [r0, #24]
 194 0074 4276     		strb	r2, [r0, #25]
 195 0076 8276     		strb	r2, [r0, #26]
 196 0078 C276     		strb	r2, [r0, #27]
 197 007a 8577     		strb	r5, [r0, #30]
 198 007c 4D79     		ldrb	r5, [r1, #5]	@ zero_extendqisi2
 199 007e CC78     		ldrb	r4, [r1, #3]	@ zero_extendqisi2
 200 0080 03F8215F 		strb	r5, [r3, #33]!
 201 0084 0979     		ldrb	r1, [r1, #4]	@ zero_extendqisi2
 202 0086 80F82010 		strb	r1, [r0, #32]
 203 008a C477     		strb	r4, [r0, #31]
 204 008c 00F12B01 		add	r1, r0, #43
 205              	.L28:
 206 0090 03F8012F 		strb	r2, [r3, #1]!
 207 0094 8B42     		cmp	r3, r1
 208 0096 FBD1     		bne	.L28
 209 0098 114B     		ldr	r3, .L36+12
 210 009a 0021     		movs	r1, #0
 211 009c 03F14002 		add	r2, r3, #64
 212              	.L30:
 213 00a0 03F8011F 		strb	r1, [r3, #1]!
 214 00a4 9342     		cmp	r3, r2
 215 00a6 FBD1     		bne	.L30
 216 00a8 0E4B     		ldr	r3, .L36+16
 217 00aa 0021     		movs	r1, #0
 218 00ac 03F18002 		add	r2, r3, #128
 219              	.L32:
 220 00b0 03F8011F 		strb	r1, [r3, #1]!
 221 00b4 9342     		cmp	r3, r2
 222 00b6 FBD1     		bne	.L32
 223 00b8 6323     		movs	r3, #99
 224 00ba 8221     		movs	r1, #130
 225 00bc 5322     		movs	r2, #83
 226 00be 80F8EC30 		strb	r3, [r0, #236]
 227 00c2 80F8EF30 		strb	r3, [r0, #239]
 228 00c6 80F8ED10 		strb	r1, [r0, #237]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 5


 229 00ca 80F8EE20 		strb	r2, [r0, #238]
 230 00ce 02B0     		add	sp, sp, #8
 231              		@ sp needed
 232 00d0 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 233              	.L37:
 234              		.align	2
 235              	.L36:
 236 00d4 00000000 		.word	.LANCHOR8
 237 00d8 00000000 		.word	.LANCHOR7
 238 00dc 00000000 		.word	.LANCHOR3
 239 00e0 2B000000 		.word	.LANCHOR7+43
 240 00e4 6B000000 		.word	.LANCHOR7+107
 241              		.size	_Z11makeDHCPMSGv, .-_Z11makeDHCPMSGv
 242              		.section	.text._Z18send_DHCP_DISCOVERv,"ax",%progbits
 243              		.align	2
 244              		.global	_Z18send_DHCP_DISCOVERv
 245              		.thumb
 246              		.thumb_func
 247              		.type	_Z18send_DHCP_DISCOVERv, %function
 248              	_Z18send_DHCP_DISCOVERv:
 249              		@ args = 0, pretend = 0, frame = 8
 250              		@ frame_needed = 0, uses_anonymous_args = 0
 251 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 252 0004 85B0     		sub	sp, sp, #20
 253 0006 FFF7FEFF 		bl	_Z11makeDHCPMSGv
 254 000a 564B     		ldr	r3, .L46
 255 000c 5648     		ldr	r0, .L46+4
 256 000e 5749     		ldr	r1, .L46+8
 257 0010 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 258 0012 0278     		ldrb	r2, [r0]	@ zero_extendqisi2
 259 0014 93F80180 		ldrb	r8, [r3, #1]	@ zero_extendqisi2
 260 0018 93F802C0 		ldrb	ip, [r3, #2]	@ zero_extendqisi2
 261 001c 93F803E0 		ldrb	lr, [r3, #3]	@ zero_extendqisi2
 262 0020 1F79     		ldrb	r7, [r3, #4]	@ zero_extendqisi2
 263 0022 5E79     		ldrb	r6, [r3, #5]	@ zero_extendqisi2
 264 0024 81F8F640 		strb	r4, [r1, #246]
 265 0028 4FF0350B 		mov	fp, #53
 266 002c 0124     		movs	r4, #1
 267 002e 4FF03D0A 		mov	r10, #61
 268 0032 4FF00709 		mov	r9, #7
 269 0036 0C25     		movs	r5, #12
 270 0038 0023     		movs	r3, #0
 271 003a 81F8F0B0 		strb	fp, [r1, #240]
 272 003e 81F8F3A0 		strb	r10, [r1, #243]
 273 0042 81F8F490 		strb	r9, [r1, #244]
 274 0046 81F8F780 		strb	r8, [r1, #247]
 275 004a 81F8F8C0 		strb	ip, [r1, #248]
 276 004e 81F8F9E0 		strb	lr, [r1, #249]
 277 0052 81F8FA70 		strb	r7, [r1, #250]
 278 0056 81F8FB60 		strb	r6, [r1, #251]
 279 005a 81F8FC50 		strb	r5, [r1, #252]
 280 005e 81F8F140 		strb	r4, [r1, #241]
 281 0062 81F8F240 		strb	r4, [r1, #242]
 282 0066 81F8F540 		strb	r4, [r1, #245]
 283 006a 81F8FD30 		strb	r3, [r1, #253]
 284 006e 002A     		cmp	r2, #0
 285 0070 67D0     		beq	.L44
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 6


 286              	.L41:
 287 0072 CC18     		adds	r4, r1, r3
 288 0074 03F11309 		add	r9, r3, #19
 289 0078 84F8FE20 		strb	r2, [r4, #254]
 290 007c 10F8012F 		ldrb	r2, [r0, #1]!	@ zero_extendqisi2
 291 0080 0133     		adds	r3, r3, #1
 292 0082 002A     		cmp	r2, #0
 293 0084 F5D1     		bne	.L41
 294 0086 09F1FF37 		add	r7, r9, #-1
 295 008a FF1A     		subs	r7, r7, r3
 296 008c DAB2     		uxtb	r2, r3
 297 008e 09F1010C 		add	ip, r9, #1
 298 0092 09F10205 		add	r5, r9, #2
 299 0096 09F10300 		add	r0, r9, #3
 300 009a 09F1040A 		add	r10, r9, #4
 301 009e 09F10508 		add	r8, r9, #5
 302 00a2 09F1060E 		add	lr, r9, #6
 303 00a6 09F10706 		add	r6, r9, #7
 304 00aa 09F10804 		add	r4, r9, #8
 305 00ae 09F10903 		add	r3, r9, #9
 306              	.L39:
 307 00b2 0F44     		add	r7, r7, r1
 308 00b4 8944     		add	r9, r9, r1
 309 00b6 8C44     		add	ip, ip, r1
 310 00b8 0D44     		add	r5, r5, r1
 311 00ba 87F8EC20 		strb	r2, [r7, #236]
 312 00be 0844     		add	r0, r0, r1
 313 00c0 4FF0370B 		mov	fp, #55
 314 00c4 0622     		movs	r2, #6
 315 00c6 0127     		movs	r7, #1
 316 00c8 8A44     		add	r10, r10, r1
 317 00ca 8844     		add	r8, r8, r1
 318 00cc 8E44     		add	lr, lr, r1
 319 00ce 0E44     		add	r6, r6, r1
 320 00d0 0C44     		add	r4, r4, r1
 321 00d2 89F8ECB0 		strb	fp, [r9, #236]
 322 00d6 8CF8EC20 		strb	r2, [ip, #236]
 323 00da 4FF0030B 		mov	fp, #3
 324 00de 85F8EC70 		strb	r7, [r5, #236]
 325 00e2 4FF00F09 		mov	r9, #15
 326 00e6 4FF03A0C 		mov	ip, #58
 327 00ea 3B27     		movs	r7, #59
 328 00ec FF25     		movs	r5, #255
 329 00ee 80F8ECB0 		strb	fp, [r0, #236]
 330 00f2 8AF8EC20 		strb	r2, [r10, #236]
 331 00f6 0020     		movs	r0, #0
 332 00f8 88F8EC90 		strb	r9, [r8, #236]
 333 00fc 8EF8ECC0 		strb	ip, [lr, #236]
 334 0100 86F8EC70 		strb	r7, [r6, #236]
 335 0104 84F8EC50 		strb	r5, [r4, #236]
 336              	.L43:
 337 0108 CA18     		adds	r2, r1, r3
 338 010a 0133     		adds	r3, r3, #1
 339 010c B3F59C7F 		cmp	r3, #312
 340 0110 82F8EC00 		strb	r0, [r2, #236]
 341 0114 F8D3     		bcc	.L43
 342 0116 164B     		ldr	r3, .L46+12
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 7


 343 0118 1449     		ldr	r1, .L46+8
 344 011a 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 345 011c 4323     		movs	r3, #67
 346 011e FF24     		movs	r4, #255
 347 0120 0093     		str	r3, [sp]
 348 0122 4FF40972 		mov	r2, #548
 349 0126 03AB     		add	r3, sp, #12
 350 0128 8DF80C40 		strb	r4, [sp, #12]
 351 012c 8DF80D40 		strb	r4, [sp, #13]
 352 0130 8DF80E40 		strb	r4, [sp, #14]
 353 0134 8DF80F40 		strb	r4, [sp, #15]
 354 0138 FFF7FEFF 		bl	_Z6sendtohPKhtS0_t
 355 013c 05B0     		add	sp, sp, #20
 356              		@ sp needed
 357 013e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 358              	.L44:
 359 0142 1B23     		movs	r3, #27
 360 0144 1A24     		movs	r4, #26
 361 0146 1926     		movs	r6, #25
 362 0148 4FF0180E 		mov	lr, #24
 363 014c 4FF01708 		mov	r8, #23
 364 0150 4FF0160A 		mov	r10, #22
 365 0154 1520     		movs	r0, #21
 366 0156 1425     		movs	r5, #20
 367 0158 4FF0130C 		mov	ip, #19
 368 015c 1127     		movs	r7, #17
 369 015e 4FF01209 		mov	r9, #18
 370 0162 A6E7     		b	.L39
 371              	.L47:
 372              		.align	2
 373              	.L46:
 374 0164 00000000 		.word	.LANCHOR3
 375 0168 00000000 		.word	.LANCHOR9
 376 016c 00000000 		.word	.LANCHOR7
 377 0170 00000000 		.word	.LANCHOR10
 378              		.size	_Z18send_DHCP_DISCOVERv, .-_Z18send_DHCP_DISCOVERv
 379              		.section	.text._Z17send_DHCP_REQUESTv,"ax",%progbits
 380              		.align	2
 381              		.global	_Z17send_DHCP_REQUESTv
 382              		.thumb
 383              		.thumb_func
 384              		.type	_Z17send_DHCP_REQUESTv, %function
 385              	_Z17send_DHCP_REQUESTv:
 386              		@ args = 0, pretend = 0, frame = 8
 387              		@ frame_needed = 0, uses_anonymous_args = 0
 388 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 389 0004 85B0     		sub	sp, sp, #20
 390 0006 FFF7FEFF 		bl	_Z11makeDHCPMSGv
 391 000a 7B4B     		ldr	r3, .L64
 392 000c 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 393 000e 033B     		subs	r3, r3, #3
 394 0010 012B     		cmp	r3, #1
 395 0012 40F2D080 		bls	.L62
 396 0016 FF23     		movs	r3, #255
 397 0018 784D     		ldr	r5, .L64+4
 398 001a 8DF80C30 		strb	r3, [sp, #12]
 399 001e 8DF80D30 		strb	r3, [sp, #13]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 8


 400 0022 8DF80E30 		strb	r3, [sp, #14]
 401 0026 8DF80F30 		strb	r3, [sp, #15]
 402 002a 1846     		mov	r0, r3
 403              	.L50:
 404 002c 744B     		ldr	r3, .L64+8
 405 002e 734A     		ldr	r2, .L64+4
 406 0030 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
 407 0032 93F801A0 		ldrb	r10, [r3, #1]	@ zero_extendqisi2
 408 0036 93F80290 		ldrb	r9, [r3, #2]	@ zero_extendqisi2
 409 003a 93F80380 		ldrb	r8, [r3, #3]	@ zero_extendqisi2
 410 003e 93F804C0 		ldrb	ip, [r3, #4]	@ zero_extendqisi2
 411 0042 93F805E0 		ldrb	lr, [r3, #5]	@ zero_extendqisi2
 412 0046 85F8F610 		strb	r1, [r5, #246]
 413 004a 3527     		movs	r7, #53
 414 004c 0121     		movs	r1, #1
 415 004e 0326     		movs	r6, #3
 416 0050 3D24     		movs	r4, #61
 417 0052 0723     		movs	r3, #7
 418 0054 FF28     		cmp	r0, #255
 419 0056 85F8F7A0 		strb	r10, [r5, #247]
 420 005a 85F8F890 		strb	r9, [r5, #248]
 421 005e 85F8F980 		strb	r8, [r5, #249]
 422 0062 85F8FAC0 		strb	ip, [r5, #250]
 423 0066 85F8FBE0 		strb	lr, [r5, #251]
 424 006a 85F8F070 		strb	r7, [r5, #240]
 425 006e 85F8F110 		strb	r1, [r5, #241]
 426 0072 85F8F510 		strb	r1, [r5, #245]
 427 0076 85F8F260 		strb	r6, [r5, #242]
 428 007a 85F8F340 		strb	r4, [r5, #243]
 429 007e 85F8F430 		strb	r3, [r5, #244]
 430 0082 69D0     		beq	.L63
 431 0084 4FF01308 		mov	r8, #19
 432 0088 1220     		movs	r0, #18
 433 008a 1124     		movs	r4, #17
 434 008c 1026     		movs	r6, #16
 435              	.L51:
 436 008e 5D49     		ldr	r1, .L64+12
 437 0090 2E44     		add	r6, r6, r5
 438 0092 2C44     		add	r4, r4, r5
 439 0094 0A78     		ldrb	r2, [r1]	@ zero_extendqisi2
 440 0096 0C27     		movs	r7, #12
 441 0098 0023     		movs	r3, #0
 442 009a 86F8EC70 		strb	r7, [r6, #236]
 443 009e 84F8EC30 		strb	r3, [r4, #236]
 444 00a2 002A     		cmp	r2, #0
 445 00a4 00F0A680 		beq	.L59
 446 00a8 2E18     		adds	r6, r5, r0
 447              	.L54:
 448 00aa F418     		adds	r4, r6, r3
 449 00ac 0130     		adds	r0, r0, #1
 450 00ae 84F8EC20 		strb	r2, [r4, #236]
 451 00b2 11F8012F 		ldrb	r2, [r1, #1]!	@ zero_extendqisi2
 452 00b6 0133     		adds	r3, r3, #1
 453 00b8 002A     		cmp	r2, #0
 454 00ba F6D1     		bne	.L54
 455 00bc DAB2     		uxtb	r2, r3
 456 00be 00F10108 		add	r8, r0, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 9


 457              	.L52:
 458 00c2 411E     		subs	r1, r0, #1
 459 00c4 CB1A     		subs	r3, r1, r3
 460 00c6 05EB030A 		add	r10, r5, r3
 461 00ca A844     		add	r8, r8, r5
 462 00cc 2B18     		adds	r3, r5, r0
 463 00ce 4FF0370B 		mov	fp, #55
 464 00d2 4FF00809 		mov	r9, #8
 465 00d6 8AF8EC20 		strb	r2, [r10, #236]
 466 00da 83F8ECB0 		strb	fp, [r3, #236]
 467 00de 88F8EC90 		strb	r9, [r8, #236]
 468 00e2 00F10B08 		add	r8, r0, #11
 469 00e6 3B21     		movs	r1, #59
 470 00e8 4FF0010C 		mov	ip, #1
 471 00ec 4FF0030E 		mov	lr, #3
 472 00f0 0627     		movs	r7, #6
 473 00f2 0F26     		movs	r6, #15
 474 00f4 3A24     		movs	r4, #58
 475 00f6 4FF01F0A 		mov	r10, #31
 476 00fa 2122     		movs	r2, #33
 477 00fc 4FF0FF0B 		mov	fp, #255
 478 0100 B8F59C7F 		cmp	r8, #312
 479 0104 83F8F310 		strb	r1, [r3, #243]
 480 0108 83F8EEC0 		strb	ip, [r3, #238]
 481 010c 83F8EFE0 		strb	lr, [r3, #239]
 482 0110 83F8F070 		strb	r7, [r3, #240]
 483 0114 83F8F160 		strb	r6, [r3, #241]
 484 0118 83F8F240 		strb	r4, [r3, #242]
 485 011c 83F8F4A0 		strb	r10, [r3, #244]
 486 0120 83F8F520 		strb	r2, [r3, #245]
 487 0124 3549     		ldr	r1, .L64+4
 488 0126 83F8F6B0 		strb	fp, [r3, #246]
 489 012a 08D2     		bcs	.L56
 490 012c 0B18     		adds	r3, r1, r0
 491 012e F633     		adds	r3, r3, #246
 492 0130 01F22321 		addw	r1, r1, #547
 493 0134 0022     		movs	r2, #0
 494              	.L57:
 495 0136 03F8012F 		strb	r2, [r3, #1]!
 496 013a 8B42     		cmp	r3, r1
 497 013c FBD1     		bne	.L57
 498              	.L56:
 499 013e 324B     		ldr	r3, .L64+16
 500 0140 2E49     		ldr	r1, .L64+4
 501 0142 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 502 0144 4323     		movs	r3, #67
 503 0146 0093     		str	r3, [sp]
 504 0148 4FF40972 		mov	r2, #548
 505 014c 03AB     		add	r3, sp, #12
 506 014e FFF7FEFF 		bl	_Z6sendtohPKhtS0_t
 507 0152 05B0     		add	sp, sp, #20
 508              		@ sp needed
 509 0154 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 510              	.L63:
 511 0158 2C49     		ldr	r1, .L64+20
 512 015a 2D4B     		ldr	r3, .L64+24
 513 015c 0878     		ldrb	r0, [r1]	@ zero_extendqisi2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 10


 514 015e 91F80280 		ldrb	r8, [r1, #2]	@ zero_extendqisi2
 515 0162 9E78     		ldrb	r6, [r3, #2]	@ zero_extendqisi2
 516 0164 DC78     		ldrb	r4, [r3, #3]	@ zero_extendqisi2
 517 0166 91F80190 		ldrb	r9, [r1, #1]	@ zero_extendqisi2
 518 016a 91F803C0 		ldrb	ip, [r1, #3]	@ zero_extendqisi2
 519 016e 93F800E0 		ldrb	lr, [r3]	@ zero_extendqisi2
 520 0172 5F78     		ldrb	r7, [r3, #1]	@ zero_extendqisi2
 521 0174 82F8FE00 		strb	r0, [r2, #254]
 522 0178 0423     		movs	r3, #4
 523 017a 3220     		movs	r0, #50
 524 017c 3621     		movs	r1, #54
 525 017e 82F80081 		strb	r8, [r2, #256]
 526 0182 82F80661 		strb	r6, [r2, #262]
 527 0186 82F80741 		strb	r4, [r2, #263]
 528 018a 82F8FC00 		strb	r0, [r2, #252]
 529 018e 82F8FF90 		strb	r9, [r2, #255]
 530 0192 82F801C1 		strb	ip, [r2, #257]
 531 0196 82F804E1 		strb	lr, [r2, #260]
 532 019a 82F80571 		strb	r7, [r2, #261]
 533 019e 82F8FD30 		strb	r3, [r2, #253]
 534 01a2 82F80331 		strb	r3, [r2, #259]
 535 01a6 82F80211 		strb	r1, [r2, #258]
 536 01aa 4FF01F08 		mov	r8, #31
 537 01ae 1E20     		movs	r0, #30
 538 01b0 1D24     		movs	r4, #29
 539 01b2 1C26     		movs	r6, #28
 540 01b4 6BE7     		b	.L51
 541              	.L62:
 542 01b6 154A     		ldr	r2, .L64+20
 543 01b8 154B     		ldr	r3, .L64+24
 544 01ba 104D     		ldr	r5, .L64+4
 545 01bc 92F800C0 		ldrb	ip, [r2]	@ zero_extendqisi2
 546 01c0 92F801E0 		ldrb	lr, [r2, #1]	@ zero_extendqisi2
 547 01c4 9778     		ldrb	r7, [r2, #2]	@ zero_extendqisi2
 548 01c6 D678     		ldrb	r6, [r2, #3]	@ zero_extendqisi2
 549 01c8 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 550 01ca 5978     		ldrb	r1, [r3, #1]	@ zero_extendqisi2
 551 01cc 9A78     		ldrb	r2, [r3, #2]	@ zero_extendqisi2
 552 01ce D878     		ldrb	r0, [r3, #3]	@ zero_extendqisi2
 553 01d0 85F80CC0 		strb	ip, [r5, #12]
 554 01d4 0023     		movs	r3, #0
 555 01d6 85F80DE0 		strb	lr, [r5, #13]
 556 01da AF73     		strb	r7, [r5, #14]
 557 01dc EE73     		strb	r6, [r5, #15]
 558 01de 8DF80C40 		strb	r4, [sp, #12]
 559 01e2 8DF80D10 		strb	r1, [sp, #13]
 560 01e6 8DF80E20 		strb	r2, [sp, #14]
 561 01ea 8DF80F00 		strb	r0, [sp, #15]
 562 01ee AB72     		strb	r3, [r5, #10]
 563 01f0 EB72     		strb	r3, [r5, #11]
 564 01f2 1BE7     		b	.L50
 565              	.L59:
 566 01f4 1346     		mov	r3, r2
 567 01f6 64E7     		b	.L52
 568              	.L65:
 569              		.align	2
 570              	.L64:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 11


 571 01f8 00000000 		.word	.LANCHOR11
 572 01fc 00000000 		.word	.LANCHOR7
 573 0200 00000000 		.word	.LANCHOR3
 574 0204 00000000 		.word	.LANCHOR9
 575 0208 00000000 		.word	.LANCHOR10
 576 020c 00000000 		.word	.LANCHOR0
 577 0210 00000000 		.word	.LANCHOR12
 578              		.size	_Z17send_DHCP_REQUESTv, .-_Z17send_DHCP_REQUESTv
 579              		.section	.text._Z17send_DHCP_DECLINEv,"ax",%progbits
 580              		.align	2
 581              		.global	_Z17send_DHCP_DECLINEv
 582              		.thumb
 583              		.thumb_func
 584              		.type	_Z17send_DHCP_DECLINEv, %function
 585              	_Z17send_DHCP_DECLINEv:
 586              		@ args = 0, pretend = 0, frame = 8
 587              		@ frame_needed = 0, uses_anonymous_args = 0
 588 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 589 0004 85B0     		sub	sp, sp, #20
 590 0006 FFF7FEFF 		bl	_Z11makeDHCPMSGv
 591 000a 3C4B     		ldr	r3, .L70
 592 000c 3C4A     		ldr	r2, .L70+4
 593 000e 3D49     		ldr	r1, .L70+8
 594 0010 1C78     		ldrb	r4, [r3]	@ zero_extendqisi2
 595 0012 3D48     		ldr	r0, .L70+12
 596 0014 82F8F640 		strb	r4, [r2, #246]
 597 0018 3524     		movs	r4, #53
 598 001a 93F801A0 		ldrb	r10, [r3, #1]	@ zero_extendqisi2
 599 001e 93F80290 		ldrb	r9, [r3, #2]	@ zero_extendqisi2
 600 0022 93F80380 		ldrb	r8, [r3, #3]	@ zero_extendqisi2
 601 0026 8D78     		ldrb	r5, [r1, #2]	@ zero_extendqisi2
 602 0028 0F78     		ldrb	r7, [r1]	@ zero_extendqisi2
 603 002a 4E78     		ldrb	r6, [r1, #1]	@ zero_extendqisi2
 604 002c 91F803B0 		ldrb	fp, [r1, #3]	@ zero_extendqisi2
 605 0030 82F8F040 		strb	r4, [r2, #240]
 606 0034 3D21     		movs	r1, #61
 607 0036 0724     		movs	r4, #7
 608 0038 93F804C0 		ldrb	ip, [r3, #4]	@ zero_extendqisi2
 609 003c 93F805E0 		ldrb	lr, [r3, #5]	@ zero_extendqisi2
 610 0040 82F8F310 		strb	r1, [r2, #243]
 611 0044 82F8F440 		strb	r4, [r2, #244]
 612 0048 82F8F7A0 		strb	r10, [r2, #247]
 613 004c 82F8F890 		strb	r9, [r2, #248]
 614 0050 4FF0000A 		mov	r10, #0
 615 0054 82F8F980 		strb	r8, [r2, #249]
 616 0058 0378     		ldrb	r3, [r0]	@ zero_extendqisi2
 617 005a 82F80051 		strb	r5, [r2, #256]
 618 005e 4FF00408 		mov	r8, #4
 619 0062 3221     		movs	r1, #50
 620 0064 3624     		movs	r4, #54
 621 0066 4FF00109 		mov	r9, #1
 622 006a 82F8FC10 		strb	r1, [r2, #252]
 623 006e 82F80241 		strb	r4, [r2, #258]
 624 0072 82F8FAC0 		strb	ip, [r2, #250]
 625 0076 82F8FBE0 		strb	lr, [r2, #251]
 626 007a 82F8FE70 		strb	r7, [r2, #254]
 627 007e 82F8FF60 		strb	r6, [r2, #255]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 12


 628 0082 82F801B1 		strb	fp, [r2, #257]
 629 0086 82F80AA0 		strb	r10, [r2, #10]
 630 008a 82F80BA0 		strb	r10, [r2, #11]
 631 008e 82F8F190 		strb	r9, [r2, #241]
 632 0092 82F8F590 		strb	r9, [r2, #245]
 633 0096 82F8F280 		strb	r8, [r2, #242]
 634 009a 82F8FD80 		strb	r8, [r2, #253]
 635 009e 82F80381 		strb	r8, [r2, #259]
 636 00a2 FF24     		movs	r4, #255
 637 00a4 82F80431 		strb	r3, [r2, #260]
 638 00a8 4178     		ldrb	r1, [r0, #1]	@ zero_extendqisi2
 639 00aa C378     		ldrb	r3, [r0, #3]	@ zero_extendqisi2
 640 00ac 8578     		ldrb	r5, [r0, #2]	@ zero_extendqisi2
 641 00ae 82F80511 		strb	r1, [r2, #261]
 642 00b2 82F80731 		strb	r3, [r2, #263]
 643 00b6 82F80651 		strb	r5, [r2, #262]
 644 00ba 82F80841 		strb	r4, [r2, #264]
 645 00be 02F58473 		add	r3, r2, #264
 646 00c2 5146     		mov	r1, r10
 647 00c4 02F22322 		addw	r2, r2, #547
 648              	.L68:
 649 00c8 03F8011F 		strb	r1, [r3, #1]!
 650 00cc 9342     		cmp	r3, r2
 651 00ce FBD1     		bne	.L68
 652 00d0 0E4B     		ldr	r3, .L70+16
 653 00d2 0B49     		ldr	r1, .L70+4
 654 00d4 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 655 00d6 4323     		movs	r3, #67
 656 00d8 FF24     		movs	r4, #255
 657 00da 0093     		str	r3, [sp]
 658 00dc 4FF40972 		mov	r2, #548
 659 00e0 03AB     		add	r3, sp, #12
 660 00e2 8DF80C40 		strb	r4, [sp, #12]
 661 00e6 8DF80D40 		strb	r4, [sp, #13]
 662 00ea 8DF80E40 		strb	r4, [sp, #14]
 663 00ee 8DF80F40 		strb	r4, [sp, #15]
 664 00f2 FFF7FEFF 		bl	_Z6sendtohPKhtS0_t
 665 00f6 05B0     		add	sp, sp, #20
 666              		@ sp needed
 667 00f8 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 668              	.L71:
 669              		.align	2
 670              	.L70:
 671 00fc 00000000 		.word	.LANCHOR3
 672 0100 00000000 		.word	.LANCHOR7
 673 0104 00000000 		.word	.LANCHOR0
 674 0108 00000000 		.word	.LANCHOR12
 675 010c 00000000 		.word	.LANCHOR10
 676              		.size	_Z17send_DHCP_DECLINEv, .-_Z17send_DHCP_DECLINEv
 677              		.section	.text._Z12parseDHCPMSGv,"ax",%progbits
 678              		.align	2
 679              		.global	_Z12parseDHCPMSGv
 680              		.thumb
 681              		.thumb_func
 682              		.type	_Z12parseDHCPMSGv, %function
 683              	_Z12parseDHCPMSGv:
 684              		@ args = 0, pretend = 0, frame = 72
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 13


 685              		@ frame_needed = 0, uses_anonymous_args = 0
 686 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 687 0004 734C     		ldr	r4, .L101
 688 0006 95B0     		sub	sp, sp, #84
 689 0008 2078     		ldrb	r0, [r4]	@ zero_extendqisi2
 690 000a FFF7FEFF 		bl	_Z12getSn_RX_RSRh
 691 000e A8B1     		cbz	r0, .L73
 692 0010 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 693 0012 714F     		ldr	r7, .L101+4
 694 0014 B0F5097F 		cmp	r0, #548
 695 0018 34BF     		ite	cc
 696 001a 0246     		movcc	r2, r0
 697 001c 4FF40972 		movcs	r2, #548
 698 0020 0DF14603 		add	r3, sp, #70
 699 0024 0846     		mov	r0, r1
 700 0026 0093     		str	r3, [sp]
 701 0028 92B2     		uxth	r2, r2
 702 002a 12AB     		add	r3, sp, #72
 703 002c 3946     		mov	r1, r7
 704 002e FFF7FEFF 		bl	_Z8recvfromhPhtS_Pt
 705 0032 BDF84630 		ldrh	r3, [sp, #70]
 706 0036 432B     		cmp	r3, #67
 707 0038 04D0     		beq	.L98
 708              	.L96:
 709 003a 0020     		movs	r0, #0
 710              	.L73:
 711 003c 40B2     		sxtb	r0, r0
 712 003e 15B0     		add	sp, sp, #84
 713              		@ sp needed
 714 0040 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 715              	.L98:
 716 0044 654B     		ldr	r3, .L101+8
 717 0046 397F     		ldrb	r1, [r7, #28]	@ zero_extendqisi2
 718 0048 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 719 004a 9142     		cmp	r1, r2
 720 004c F5D1     		bne	.L96
 721 004e 797F     		ldrb	r1, [r7, #29]	@ zero_extendqisi2
 722 0050 5A78     		ldrb	r2, [r3, #1]	@ zero_extendqisi2
 723 0052 9142     		cmp	r1, r2
 724 0054 F1D1     		bne	.L96
 725 0056 B97F     		ldrb	r1, [r7, #30]	@ zero_extendqisi2
 726 0058 9A78     		ldrb	r2, [r3, #2]	@ zero_extendqisi2
 727 005a 9142     		cmp	r1, r2
 728 005c EDD1     		bne	.L96
 729 005e F97F     		ldrb	r1, [r7, #31]	@ zero_extendqisi2
 730 0060 DA78     		ldrb	r2, [r3, #3]	@ zero_extendqisi2
 731 0062 9142     		cmp	r1, r2
 732 0064 E9D1     		bne	.L96
 733 0066 97F82010 		ldrb	r1, [r7, #32]	@ zero_extendqisi2
 734 006a 1A79     		ldrb	r2, [r3, #4]	@ zero_extendqisi2
 735 006c 9142     		cmp	r1, r2
 736 006e E4D1     		bne	.L96
 737 0070 5B79     		ldrb	r3, [r3, #5]	@ zero_extendqisi2
 738 0072 97F82120 		ldrb	r2, [r7, #33]	@ zero_extendqisi2
 739 0076 9A42     		cmp	r2, r3
 740 0078 DFD1     		bne	.L96
 741 007a 594E     		ldr	r6, .L101+12
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 14


 742 007c 594D     		ldr	r5, .L101+16
 743 007e 5A4C     		ldr	r4, .L101+20
 744 0080 F378     		ldrb	r3, [r6, #3]	@ zero_extendqisi2
 745 0082 B178     		ldrb	r1, [r6, #2]	@ zero_extendqisi2
 746 0084 0893     		str	r3, [sp, #32]
 747 0086 6B78     		ldrb	r3, [r5, #1]	@ zero_extendqisi2
 748 0088 0991     		str	r1, [sp, #36]
 749 008a 0793     		str	r3, [sp, #28]
 750 008c 2978     		ldrb	r1, [r5]	@ zero_extendqisi2
 751 008e 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 752 0090 564A     		ldr	r2, .L101+24
 753 0092 0291     		str	r1, [sp, #8]
 754 0094 0593     		str	r3, [sp, #20]
 755 0096 E978     		ldrb	r1, [r5, #3]	@ zero_extendqisi2
 756 0098 554B     		ldr	r3, .L101+28
 757 009a 0691     		str	r1, [sp, #24]
 758 009c 6178     		ldrb	r1, [r4, #1]	@ zero_extendqisi2
 759 009e 1B68     		ldr	r3, [r3]
 760 00a0 0B91     		str	r1, [sp, #44]
 761 00a2 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 762 00a4 0C93     		str	r3, [sp, #48]
 763 00a6 0D91     		str	r1, [sp, #52]
 764 00a8 5378     		ldrb	r3, [r2, #1]	@ zero_extendqisi2
 765 00aa 9178     		ldrb	r1, [r2, #2]	@ zero_extendqisi2
 766 00ac 0E93     		str	r3, [sp, #56]
 767 00ae 0491     		str	r1, [sp, #16]
 768 00b0 D378     		ldrb	r3, [r2, #3]	@ zero_extendqisi2
 769 00b2 96F80080 		ldrb	r8, [r6]	@ zero_extendqisi2
 770 00b6 96F801C0 		ldrb	ip, [r6, #1]	@ zero_extendqisi2
 771 00ba 95F80290 		ldrb	r9, [r5, #2]	@ zero_extendqisi2
 772 00be 94F802B0 		ldrb	fp, [r4, #2]	@ zero_extendqisi2
 773 00c2 94F803A0 		ldrb	r10, [r4, #3]	@ zero_extendqisi2
 774 00c6 0393     		str	r3, [sp, #12]
 775 00c8 17FA80F0 		uxtah	r0, r7, r0
 776 00cc 0021     		movs	r1, #0
 777 00ce 0F90     		str	r0, [sp, #60]
 778 00d0 07F1F003 		add	r3, r7, #240
 779 00d4 0A91     		str	r1, [sp, #40]
 780              	.L75:
 781 00d6 0F99     		ldr	r1, [sp, #60]
 782 00d8 9942     		cmp	r1, r3
 783 00da 0AD9     		bls	.L97
 784 00dc 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
 785 00de 0629     		cmp	r1, #6
 786 00e0 3FD0     		beq	.L77
 787 00e2 2CD9     		bls	.L99
 788 00e4 3529     		cmp	r1, #53
 789 00e6 71D0     		beq	.L82
 790 00e8 61D9     		bls	.L100
 791 00ea 3629     		cmp	r1, #54
 792 00ec 55D0     		beq	.L85
 793 00ee FF29     		cmp	r1, #255
 794 00f0 4FD1     		bne	.L76
 795              	.L97:
 796 00f2 099B     		ldr	r3, [sp, #36]
 797 00f4 B370     		strb	r3, [r6, #2]
 798 00f6 029B     		ldr	r3, [sp, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 15


 799 00f8 0899     		ldr	r1, [sp, #32]
 800 00fa 2B70     		strb	r3, [r5]
 801 00fc 069B     		ldr	r3, [sp, #24]
 802 00fe F170     		strb	r1, [r6, #3]
 803 0100 EB70     		strb	r3, [r5, #3]
 804 0102 0799     		ldr	r1, [sp, #28]
 805 0104 0B9B     		ldr	r3, [sp, #44]
 806 0106 6970     		strb	r1, [r5, #1]
 807 0108 6370     		strb	r3, [r4, #1]
 808 010a 0599     		ldr	r1, [sp, #20]
 809 010c 384B     		ldr	r3, .L101+28
 810 010e 2170     		strb	r1, [r4]
 811 0110 0C99     		ldr	r1, [sp, #48]
 812 0112 1960     		str	r1, [r3]
 813 0114 0D99     		ldr	r1, [sp, #52]
 814 0116 1170     		strb	r1, [r2]
 815 0118 0499     		ldr	r1, [sp, #16]
 816 011a 0E9B     		ldr	r3, [sp, #56]
 817 011c 9170     		strb	r1, [r2, #2]
 818 011e 0A99     		ldr	r1, [sp, #40]
 819 0120 5370     		strb	r3, [r2, #1]
 820 0122 039B     		ldr	r3, [sp, #12]
 821 0124 86F80080 		strb	r8, [r6]
 822 0128 86F801C0 		strb	ip, [r6, #1]
 823 012c 85F80290 		strb	r9, [r5, #2]
 824 0130 84F802B0 		strb	fp, [r4, #2]
 825 0134 84F803A0 		strb	r10, [r4, #3]
 826 0138 D370     		strb	r3, [r2, #3]
 827 013a C8B2     		uxtb	r0, r1
 828 013c 7EE7     		b	.L73
 829              	.L99:
 830 013e 0129     		cmp	r1, #1
 831 0140 1DD0     		beq	.L79
 832 0142 1AD3     		bcc	.L80
 833 0144 0329     		cmp	r1, #3
 834 0146 24D1     		bne	.L76
 835 0148 9978     		ldrb	r1, [r3, #2]	@ zero_extendqisi2
 836 014a 93F80190 		ldrb	r9, [r3, #1]	@ zero_extendqisi2
 837 014e 0291     		str	r1, [sp, #8]
 838 0150 1979     		ldrb	r1, [r3, #4]	@ zero_extendqisi2
 839 0152 DF78     		ldrb	r7, [r3, #3]	@ zero_extendqisi2
 840 0154 5879     		ldrb	r0, [r3, #5]	@ zero_extendqisi2
 841 0156 0797     		str	r7, [sp, #28]
 842 0158 4B44     		add	r3, r3, r9
 843 015a 0233     		adds	r3, r3, #2
 844 015c 0690     		str	r0, [sp, #24]
 845 015e 8946     		mov	r9, r1
 846 0160 B9E7     		b	.L75
 847              	.L77:
 848 0162 5F78     		ldrb	r7, [r3, #1]	@ zero_extendqisi2
 849 0164 9878     		ldrb	r0, [r3, #2]	@ zero_extendqisi2
 850 0166 D978     		ldrb	r1, [r3, #3]	@ zero_extendqisi2
 851 0168 93F804B0 		ldrb	fp, [r3, #4]	@ zero_extendqisi2
 852 016c 93F805A0 		ldrb	r10, [r3, #5]	@ zero_extendqisi2
 853 0170 0590     		str	r0, [sp, #20]
 854 0172 3B44     		add	r3, r3, r7
 855 0174 0B91     		str	r1, [sp, #44]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 16


 856 0176 0233     		adds	r3, r3, #2
 857 0178 ADE7     		b	.L75
 858              	.L80:
 859 017a 0133     		adds	r3, r3, #1
 860 017c ABE7     		b	.L75
 861              	.L79:
 862 017e 5979     		ldrb	r1, [r3, #5]	@ zero_extendqisi2
 863 0180 0891     		str	r1, [sp, #32]
 864 0182 1979     		ldrb	r1, [r3, #4]	@ zero_extendqisi2
 865 0184 93F803C0 		ldrb	ip, [r3, #3]	@ zero_extendqisi2
 866 0188 93F80280 		ldrb	r8, [r3, #2]	@ zero_extendqisi2
 867 018c 0991     		str	r1, [sp, #36]
 868 018e 0633     		adds	r3, r3, #6
 869 0190 A1E7     		b	.L75
 870              	.L76:
 871 0192 5978     		ldrb	r1, [r3, #1]	@ zero_extendqisi2
 872 0194 0233     		adds	r3, r3, #2
 873 0196 0B44     		add	r3, r3, r1
 874 0198 9DE7     		b	.L75
 875              	.L85:
 876 019a 5979     		ldrb	r1, [r3, #5]	@ zero_extendqisi2
 877 019c 0391     		str	r1, [sp, #12]
 878 019e 1979     		ldrb	r1, [r3, #4]	@ zero_extendqisi2
 879 01a0 0491     		str	r1, [sp, #16]
 880 01a2 D978     		ldrb	r1, [r3, #3]	@ zero_extendqisi2
 881 01a4 0E91     		str	r1, [sp, #56]
 882 01a6 9978     		ldrb	r1, [r3, #2]	@ zero_extendqisi2
 883 01a8 0D91     		str	r1, [sp, #52]
 884 01aa 0633     		adds	r3, r3, #6
 885 01ac 93E7     		b	.L75
 886              	.L100:
 887 01ae 3329     		cmp	r1, #51
 888 01b0 EFD1     		bne	.L76
 889 01b2 D978     		ldrb	r1, [r3, #3]	@ zero_extendqisi2
 890 01b4 9F78     		ldrb	r7, [r3, #2]	@ zero_extendqisi2
 891 01b6 1879     		ldrb	r0, [r3, #4]	@ zero_extendqisi2
 892 01b8 01EB0727 		add	r7, r1, r7, lsl #8
 893 01bc 5979     		ldrb	r1, [r3, #5]	@ zero_extendqisi2
 894 01be 00EB0720 		add	r0, r0, r7, lsl #8
 895 01c2 01EB0021 		add	r1, r1, r0, lsl #8
 896 01c6 0C91     		str	r1, [sp, #48]
 897 01c8 0633     		adds	r3, r3, #6
 898 01ca 84E7     		b	.L75
 899              	.L82:
 900 01cc 9978     		ldrb	r1, [r3, #2]	@ zero_extendqisi2
 901 01ce 0A91     		str	r1, [sp, #40]
 902 01d0 0333     		adds	r3, r3, #3
 903 01d2 80E7     		b	.L75
 904              	.L102:
 905              		.align	2
 906              	.L101:
 907 01d4 00000000 		.word	.LANCHOR10
 908 01d8 00000000 		.word	.LANCHOR7
 909 01dc 00000000 		.word	.LANCHOR3
 910 01e0 00000000 		.word	.LANCHOR1
 911 01e4 00000000 		.word	.LANCHOR2
 912 01e8 00000000 		.word	.LANCHOR13
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 17


 913 01ec 00000000 		.word	.LANCHOR12
 914 01f0 00000000 		.word	.LANCHOR14
 915              		.size	_Z12parseDHCPMSGv, .-_Z12parseDHCPMSGv
 916              		.section	.text._Z9DHCP_stopv,"ax",%progbits
 917              		.align	2
 918              		.global	_Z9DHCP_stopv
 919              		.thumb
 920              		.thumb_func
 921              		.type	_Z9DHCP_stopv, %function
 922              	_Z9DHCP_stopv:
 923              		@ args = 0, pretend = 0, frame = 0
 924              		@ frame_needed = 0, uses_anonymous_args = 0
 925 0000 08B5     		push	{r3, lr}
 926 0002 044B     		ldr	r3, .L104
 927 0004 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 928 0006 FFF7FEFF 		bl	_Z5closeh
 929 000a 034B     		ldr	r3, .L104+4
 930 000c 0622     		movs	r2, #6
 931 000e 1A70     		strb	r2, [r3]
 932 0010 08BD     		pop	{r3, pc}
 933              	.L105:
 934 0012 00BF     		.align	2
 935              	.L104:
 936 0014 00000000 		.word	.LANCHOR10
 937 0018 00000000 		.word	.LANCHOR11
 938              		.size	_Z9DHCP_stopv, .-_Z9DHCP_stopv
 939              		.section	.text._Z18check_DHCP_timeoutv,"ax",%progbits
 940              		.align	2
 941              		.global	_Z18check_DHCP_timeoutv
 942              		.thumb
 943              		.thumb_func
 944              		.type	_Z18check_DHCP_timeoutv, %function
 945              	_Z18check_DHCP_timeoutv:
 946              		@ args = 0, pretend = 0, frame = 0
 947              		@ frame_needed = 0, uses_anonymous_args = 0
 948 0000 70B5     		push	{r4, r5, r6, lr}
 949 0002 204C     		ldr	r4, .L129
 950 0004 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 951 0006 5AB2     		sxtb	r2, r3
 952 0008 012A     		cmp	r2, #1
 953 000a 16DD     		ble	.L127
 954 000c 1E4D     		ldr	r5, .L129+4
 955 000e 95F90030 		ldrsb	r3, [r5]
 956 0012 022B     		cmp	r3, #2
 957 0014 0CD0     		beq	.L114
 958 0016 042B     		cmp	r3, #4
 959 0018 0AD0     		beq	.L114
 960 001a 012B     		cmp	r3, #1
 961 001c 28D0     		beq	.L128
 962 001e 0120     		movs	r0, #1
 963              	.L113:
 964 0020 0023     		movs	r3, #0
 965 0022 1A4D     		ldr	r5, .L129+8
 966 0024 1A4A     		ldr	r2, .L129+12
 967 0026 2370     		strb	r3, [r4]
 968 0028 0A21     		movs	r1, #10
 969 002a 2B60     		str	r3, [r5]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 18


 970 002c 1160     		str	r1, [r2]
 971 002e 70BD     		pop	{r4, r5, r6, pc}
 972              	.L114:
 973 0030 FFF7FEFF 		bl	_Z18send_DHCP_DISCOVERv
 974 0034 0120     		movs	r0, #1
 975 0036 2870     		strb	r0, [r5]
 976 0038 F2E7     		b	.L113
 977              	.L127:
 978 003a 144D     		ldr	r5, .L129+8
 979 003c 144E     		ldr	r6, .L129+12
 980 003e 2968     		ldr	r1, [r5]
 981 0040 3268     		ldr	r2, [r6]
 982 0042 8A42     		cmp	r2, r1
 983 0044 17D2     		bcs	.L116
 984 0046 104A     		ldr	r2, .L129+4
 985 0048 92F90020 		ldrsb	r2, [r2]
 986 004c 022A     		cmp	r2, #2
 987 004e 14D0     		beq	.L111
 988 0050 042A     		cmp	r2, #4
 989 0052 12D0     		beq	.L111
 990 0054 012A     		cmp	r2, #1
 991 0056 02D1     		bne	.L109
 992 0058 FFF7FEFF 		bl	_Z18send_DHCP_DISCOVERv
 993 005c 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 994              	.L109:
 995 005e 0022     		movs	r2, #0
 996 0060 2A60     		str	r2, [r5]
 997 0062 2A68     		ldr	r2, [r5]
 998 0064 0133     		adds	r3, r3, #1
 999 0066 0A32     		adds	r2, r2, #10
 1000 0068 2370     		strb	r3, [r4]
 1001 006a 3260     		str	r2, [r6]
 1002 006c 0120     		movs	r0, #1
 1003 006e 70BD     		pop	{r4, r5, r6, pc}
 1004              	.L128:
 1005 0070 0020     		movs	r0, #0
 1006 0072 2870     		strb	r0, [r5]
 1007 0074 D4E7     		b	.L113
 1008              	.L116:
 1009 0076 0120     		movs	r0, #1
 1010 0078 70BD     		pop	{r4, r5, r6, pc}
 1011              	.L111:
 1012 007a FFF7FEFF 		bl	_Z17send_DHCP_REQUESTv
 1013 007e 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 1014 0080 EDE7     		b	.L109
 1015              	.L130:
 1016 0082 00BF     		.align	2
 1017              	.L129:
 1018 0084 00000000 		.word	.LANCHOR15
 1019 0088 00000000 		.word	.LANCHOR11
 1020 008c 00000000 		.word	.LANCHOR16
 1021 0090 00000000 		.word	.LANCHOR17
 1022              		.size	_Z18check_DHCP_timeoutv, .-_Z18check_DHCP_timeoutv
 1023              		.section	.text._Z19check_DHCP_leasedIPv,"ax",%progbits
 1024              		.align	2
 1025              		.global	_Z19check_DHCP_leasedIPv
 1026              		.thumb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 19


 1027              		.thumb_func
 1028              		.type	_Z19check_DHCP_leasedIPv, %function
 1029              	_Z19check_DHCP_leasedIPv:
 1030              		@ args = 0, pretend = 0, frame = 0
 1031              		@ frame_needed = 0, uses_anonymous_args = 0
 1032 0000 30B5     		push	{r4, r5, lr}
 1033 0002 4FF4D850 		mov	r0, #6912
 1034 0006 83B0     		sub	sp, sp, #12
 1035 0008 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1036 000c 0321     		movs	r1, #3
 1037 000e 0446     		mov	r4, r0
 1038 0010 4FF4D850 		mov	r0, #6912
 1039 0014 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1040 0018 0F4B     		ldr	r3, .L136
 1041 001a 1049     		ldr	r1, .L136+4
 1042 001c 1878     		ldrb	r0, [r3]	@ zero_extendqisi2
 1043 001e 104B     		ldr	r3, .L136+8
 1044 0020 41F28832 		movw	r2, #5000
 1045 0024 0092     		str	r2, [sp]
 1046 0026 1122     		movs	r2, #17
 1047 0028 FFF7FEFF 		bl	_Z6sendtohPKhtS0_t
 1048 002c 2146     		mov	r1, r4
 1049 002e 0546     		mov	r5, r0
 1050 0030 4FF4D850 		mov	r0, #6912
 1051 0034 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 1052 0038 0D35     		adds	r5, r5, #13
 1053 003a 0AD0     		beq	.L134
 1054 003c FFF7FEFF 		bl	_Z17send_DHCP_DECLINEv
 1055 0040 084A     		ldr	r2, .L136+12
 1056 0042 1168     		ldr	r1, [r2]
 1057              	.L133:
 1058 0044 1368     		ldr	r3, [r2]
 1059 0046 5B1A     		subs	r3, r3, r1
 1060 0048 012B     		cmp	r3, #1
 1061 004a FBD9     		bls	.L133
 1062 004c 0020     		movs	r0, #0
 1063 004e 03B0     		add	sp, sp, #12
 1064              		@ sp needed
 1065 0050 30BD     		pop	{r4, r5, pc}
 1066              	.L134:
 1067 0052 0120     		movs	r0, #1
 1068 0054 03B0     		add	sp, sp, #12
 1069              		@ sp needed
 1070 0056 30BD     		pop	{r4, r5, pc}
 1071              	.L137:
 1072              		.align	2
 1073              	.L136:
 1074 0058 00000000 		.word	.LANCHOR10
 1075 005c 00000000 		.word	.LC0
 1076 0060 00000000 		.word	.LANCHOR0
 1077 0064 00000000 		.word	.LANCHOR16
 1078              		.size	_Z19check_DHCP_leasedIPv, .-_Z19check_DHCP_leasedIPv
 1079              		.section	.text._Z8DHCP_runv,"ax",%progbits
 1080              		.align	2
 1081              		.global	_Z8DHCP_runv
 1082              		.thumb
 1083              		.thumb_func
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 20


 1084              		.type	_Z8DHCP_runv, %function
 1085              	_Z8DHCP_runv:
 1086              		@ args = 0, pretend = 0, frame = 0
 1087              		@ frame_needed = 0, uses_anonymous_args = 0
 1088 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1089 0002 674C     		ldr	r4, .L168
 1090 0004 94F90030 		ldrsb	r3, [r4]
 1091 0008 062B     		cmp	r3, #6
 1092 000a 01D1     		bne	.L163
 1093 000c 0520     		movs	r0, #5
 1094 000e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1095              	.L163:
 1096 0010 644D     		ldr	r5, .L168+4
 1097 0012 2878     		ldrb	r0, [r5]	@ zero_extendqisi2
 1098 0014 4001     		lsls	r0, r0, #5
 1099 0016 00F54270 		add	r0, r0, #776
 1100 001a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 1101 001e 2228     		cmp	r0, #34
 1102 0020 05D0     		beq	.L140
 1103 0022 2878     		ldrb	r0, [r5]	@ zero_extendqisi2
 1104 0024 0221     		movs	r1, #2
 1105 0026 4422     		movs	r2, #68
 1106 0028 0023     		movs	r3, #0
 1107 002a FFF7FEFF 		bl	_Z6sockethhth
 1108              	.L140:
 1109 002e FFF7FEFF 		bl	_Z12parseDHCPMSGv
 1110 0032 94F90030 		ldrsb	r3, [r4]
 1111 0036 C5B2     		uxtb	r5, r0
 1112 0038 042B     		cmp	r3, #4
 1113 003a 00F2AE80 		bhi	.L155
 1114 003e DFE803F0 		tbb	[pc, r3]
 1115              	.L142:
 1116 0042 47       		.byte	(.L141-.L142)/2
 1117 0043 52       		.byte	(.L143-.L142)/2
 1118 0044 38       		.byte	(.L144-.L142)/2
 1119 0045 13       		.byte	(.L145-.L142)/2
 1120 0046 03       		.byte	(.L146-.L142)/2
 1121 0047 00       		.align	1
 1122              	.L146:
 1123 0048 052D     		cmp	r5, #5
 1124 004a 52D0     		beq	.L164
 1125 004c 062D     		cmp	r5, #6
 1126 004e 4CD1     		bne	.L147
 1127 0050 554E     		ldr	r6, .L168+8
 1128 0052 564D     		ldr	r5, .L168+12
 1129 0054 5649     		ldr	r1, .L168+16
 1130 0056 0023     		movs	r3, #0
 1131 0058 0A20     		movs	r0, #10
 1132 005a 0122     		movs	r2, #1
 1133 005c 3360     		str	r3, [r6]
 1134 005e 2B70     		strb	r3, [r5]
 1135 0060 0860     		str	r0, [r1]
 1136 0062 2270     		strb	r2, [r4]
 1137              	.L162:
 1138 0064 0420     		movs	r0, #4
 1139 0066 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1140              	.L145:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 21


 1141 0068 524B     		ldr	r3, .L168+20
 1142 006a 1B68     		ldr	r3, [r3]
 1143 006c 5A1C     		adds	r2, r3, #1
 1144 006e F9D0     		beq	.L162
 1145 0070 4D4D     		ldr	r5, .L168+8
 1146 0072 2A68     		ldr	r2, [r5]
 1147 0074 B2EB530F 		cmp	r2, r3, lsr #1
 1148 0078 F4D9     		bls	.L162
 1149 007a 4F49     		ldr	r1, .L168+24
 1150 007c 4F4A     		ldr	r2, .L168+28
 1151 007e 0868     		ldr	r0, [r1]
 1152 0080 4F4B     		ldr	r3, .L168+32
 1153 0082 92F800E0 		ldrb	lr, [r2]	@ zero_extendqisi2
 1154 0086 5778     		ldrb	r7, [r2, #1]	@ zero_extendqisi2
 1155 0088 9678     		ldrb	r6, [r2, #2]	@ zero_extendqisi2
 1156 008a D278     		ldrb	r2, [r2, #3]	@ zero_extendqisi2
 1157 008c 83F800E0 		strb	lr, [r3]
 1158 0090 0130     		adds	r0, r0, #1
 1159 0092 0860     		str	r0, [r1]
 1160 0094 5F70     		strb	r7, [r3, #1]
 1161 0096 9E70     		strb	r6, [r3, #2]
 1162 0098 DA70     		strb	r2, [r3, #3]
 1163 009a FFF7FEFF 		bl	_Z17send_DHCP_REQUESTv
 1164 009e 434A     		ldr	r2, .L168+12
 1165 00a0 4349     		ldr	r1, .L168+16
 1166 00a2 0023     		movs	r3, #0
 1167 00a4 0420     		movs	r0, #4
 1168 00a6 0A26     		movs	r6, #10
 1169 00a8 1370     		strb	r3, [r2]
 1170 00aa 2070     		strb	r0, [r4]
 1171 00ac 0E60     		str	r6, [r1]
 1172 00ae 2B60     		str	r3, [r5]
 1173 00b0 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1174              	.L144:
 1175 00b2 052D     		cmp	r5, #5
 1176 00b4 47D0     		beq	.L165
 1177 00b6 062D     		cmp	r5, #6
 1178 00b8 17D1     		bne	.L147
 1179 00ba 3C4D     		ldr	r5, .L168+12
 1180 00bc 3A4E     		ldr	r6, .L168+8
 1181 00be 3C4A     		ldr	r2, .L168+16
 1182 00c0 0023     		movs	r3, #0
 1183 00c2 0120     		movs	r0, #1
 1184 00c4 0A21     		movs	r1, #10
 1185 00c6 2B70     		strb	r3, [r5]
 1186 00c8 2070     		strb	r0, [r4]
 1187 00ca 3360     		str	r3, [r6]
 1188 00cc 1160     		str	r1, [r2]
 1189 00ce F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1190              	.L141:
 1191 00d0 3A4B     		ldr	r3, .L168+28
 1192 00d2 0022     		movs	r2, #0
 1193 00d4 1A70     		strb	r2, [r3]
 1194 00d6 5A70     		strb	r2, [r3, #1]
 1195 00d8 9A70     		strb	r2, [r3, #2]
 1196 00da DA70     		strb	r2, [r3, #3]
 1197 00dc FFF7FEFF 		bl	_Z18send_DHCP_DISCOVERv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 22


 1198 00e0 0120     		movs	r0, #1
 1199 00e2 2070     		strb	r0, [r4]
 1200 00e4 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1201              	.L143:
 1202 00e6 022D     		cmp	r5, #2
 1203 00e8 1ED0     		beq	.L166
 1204              	.L147:
 1205 00ea BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 1206 00ee FFF7FEBF 		b	_Z18check_DHCP_timeoutv
 1207              	.L164:
 1208 00f2 334A     		ldr	r2, .L168+32
 1209 00f4 314B     		ldr	r3, .L168+28
 1210 00f6 1078     		ldrb	r0, [r2]	@ zero_extendqisi2
 1211 00f8 1978     		ldrb	r1, [r3]	@ zero_extendqisi2
 1212 00fa 2C4D     		ldr	r5, .L168+12
 1213 00fc 0026     		movs	r6, #0
 1214 00fe 8842     		cmp	r0, r1
 1215 0100 2E70     		strb	r6, [r5]
 1216 0102 03D1     		bne	.L152
 1217 0104 5078     		ldrb	r0, [r2, #1]	@ zero_extendqisi2
 1218 0106 5978     		ldrb	r1, [r3, #1]	@ zero_extendqisi2
 1219 0108 8842     		cmp	r0, r1
 1220 010a 3CD0     		beq	.L167
 1221              	.L152:
 1222 010c 2D4B     		ldr	r3, .L168+36
 1223 010e 1B68     		ldr	r3, [r3]
 1224 0110 9847     		blx	r3
 1225 0112 0320     		movs	r0, #3
 1226              	.L153:
 1227 0114 0023     		movs	r3, #0
 1228 0116 244F     		ldr	r7, .L168+8
 1229 0118 2549     		ldr	r1, .L168+16
 1230 011a 2B70     		strb	r3, [r5]
 1231 011c 0322     		movs	r2, #3
 1232 011e 0A26     		movs	r6, #10
 1233 0120 2270     		strb	r2, [r4]
 1234 0122 3B60     		str	r3, [r7]
 1235 0124 0E60     		str	r6, [r1]
 1236 0126 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1237              	.L166:
 1238 0128 274A     		ldr	r2, .L168+40
 1239 012a 244B     		ldr	r3, .L168+28
 1240 012c 167C     		ldrb	r6, [r2, #16]	@ zero_extendqisi2
 1241 012e 507C     		ldrb	r0, [r2, #17]	@ zero_extendqisi2
 1242 0130 917C     		ldrb	r1, [r2, #18]	@ zero_extendqisi2
 1243 0132 D27C     		ldrb	r2, [r2, #19]	@ zero_extendqisi2
 1244 0134 5870     		strb	r0, [r3, #1]
 1245 0136 1E70     		strb	r6, [r3]
 1246 0138 9970     		strb	r1, [r3, #2]
 1247 013a DA70     		strb	r2, [r3, #3]
 1248 013c FFF7FEFF 		bl	_Z17send_DHCP_REQUESTv
 1249 0140 2570     		strb	r5, [r4]
 1250 0142 0120     		movs	r0, #1
 1251 0144 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1252              	.L165:
 1253 0146 FFF7FEFF 		bl	_Z19check_DHCP_leasedIPv
 1254 014a 0546     		mov	r5, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 23


 1255 014c 70B1     		cbz	r0, .L149
 1256 014e 1F4B     		ldr	r3, .L168+44
 1257 0150 164D     		ldr	r5, .L168+12
 1258 0152 1B68     		ldr	r3, [r3]
 1259 0154 144E     		ldr	r6, .L168+8
 1260 0156 9847     		blx	r3
 1261 0158 0023     		movs	r3, #0
 1262 015a 1549     		ldr	r1, .L168+16
 1263 015c 2B70     		strb	r3, [r5]
 1264 015e 0322     		movs	r2, #3
 1265 0160 0A20     		movs	r0, #10
 1266 0162 2270     		strb	r2, [r4]
 1267 0164 0860     		str	r0, [r1]
 1268 0166 3360     		str	r3, [r6]
 1269 0168 0220     		movs	r0, #2
 1270 016a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1271              	.L149:
 1272 016c 0E48     		ldr	r0, .L168+8
 1273 016e 1049     		ldr	r1, .L168+16
 1274 0170 0E4A     		ldr	r2, .L168+12
 1275 0172 174B     		ldr	r3, .L168+48
 1276 0174 0560     		str	r5, [r0]
 1277 0176 0A20     		movs	r0, #10
 1278 0178 0860     		str	r0, [r1]
 1279 017a 1570     		strb	r5, [r2]
 1280 017c 1B68     		ldr	r3, [r3]
 1281 017e 9847     		blx	r3
 1282 0180 2570     		strb	r5, [r4]
 1283 0182 0120     		movs	r0, #1
 1284 0184 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1285              	.L167:
 1286 0186 9078     		ldrb	r0, [r2, #2]	@ zero_extendqisi2
 1287 0188 9978     		ldrb	r1, [r3, #2]	@ zero_extendqisi2
 1288 018a 8842     		cmp	r0, r1
 1289 018c BED1     		bne	.L152
 1290 018e D278     		ldrb	r2, [r2, #3]	@ zero_extendqisi2
 1291 0190 DB78     		ldrb	r3, [r3, #3]	@ zero_extendqisi2
 1292 0192 9A42     		cmp	r2, r3
 1293 0194 BAD1     		bne	.L152
 1294 0196 0420     		movs	r0, #4
 1295 0198 BCE7     		b	.L153
 1296              	.L155:
 1297 019a 0120     		movs	r0, #1
 1298 019c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1299              	.L169:
 1300 019e 00BF     		.align	2
 1301              	.L168:
 1302 01a0 00000000 		.word	.LANCHOR11
 1303 01a4 00000000 		.word	.LANCHOR10
 1304 01a8 00000000 		.word	.LANCHOR16
 1305 01ac 00000000 		.word	.LANCHOR15
 1306 01b0 00000000 		.word	.LANCHOR17
 1307 01b4 00000000 		.word	.LANCHOR14
 1308 01b8 00000000 		.word	.LANCHOR8
 1309 01bc 00000000 		.word	.LANCHOR0
 1310 01c0 00000000 		.word	.LANCHOR18
 1311 01c4 00000000 		.word	.LANCHOR5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 24


 1312 01c8 00000000 		.word	.LANCHOR7
 1313 01cc 00000000 		.word	.LANCHOR4
 1314 01d0 00000000 		.word	.LANCHOR6
 1315              		.size	_Z8DHCP_runv, .-_Z8DHCP_runv
 1316              		.section	.text._Z9DHCP_inithPKc,"ax",%progbits
 1317              		.align	2
 1318              		.global	_Z9DHCP_inithPKc
 1319              		.thumb
 1320              		.thumb_func
 1321              		.type	_Z9DHCP_inithPKc, %function
 1322              	_Z9DHCP_inithPKc:
 1323              		@ args = 0, pretend = 0, frame = 8
 1324              		@ frame_needed = 0, uses_anonymous_args = 0
 1325 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1326 0002 2A4D     		ldr	r5, .L172
 1327 0004 2A4C     		ldr	r4, .L172+4
 1328 0006 83B0     		sub	sp, sp, #12
 1329 0008 1022     		movs	r2, #16
 1330 000a 0646     		mov	r6, r0
 1331 000c 2846     		mov	r0, r5
 1332 000e FFF7FEFF 		bl	strncpy
 1333 0012 0023     		movs	r3, #0
 1334 0014 2146     		mov	r1, r4
 1335 0016 4FF41060 		mov	r0, #2304
 1336 001a 0622     		movs	r2, #6
 1337 001c EB73     		strb	r3, [r5, #15]
 1338 001e 8DF80430 		strb	r3, [sp, #4]
 1339 0022 8DF80530 		strb	r3, [sp, #5]
 1340 0026 8DF80630 		strb	r3, [sp, #6]
 1341 002a 8DF80730 		strb	r3, [sp, #7]
 1342 002e FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 1343 0032 6778     		ldrb	r7, [r4, #1]	@ zero_extendqisi2
 1344 0034 2278     		ldrb	r2, [r4]	@ zero_extendqisi2
 1345 0036 A578     		ldrb	r5, [r4, #2]	@ zero_extendqisi2
 1346 0038 E078     		ldrb	r0, [r4, #3]	@ zero_extendqisi2
 1347 003a 2179     		ldrb	r1, [r4, #4]	@ zero_extendqisi2
 1348 003c 6379     		ldrb	r3, [r4, #5]	@ zero_extendqisi2
 1349 003e 3A43     		orrs	r2, r2, r7
 1350 0040 2A43     		orrs	r2, r2, r5
 1351 0042 0243     		orrs	r2, r2, r0
 1352 0044 0A43     		orrs	r2, r2, r1
 1353 0046 1343     		orrs	r3, r2, r3
 1354 0048 0DD1     		bne	.L171
 1355 004a 0827     		movs	r7, #8
 1356 004c DC25     		movs	r5, #220
 1357 004e 2146     		mov	r1, r4
 1358 0050 4FF41060 		mov	r0, #2304
 1359 0054 0622     		movs	r2, #6
 1360 0056 2370     		strb	r3, [r4]
 1361 0058 E370     		strb	r3, [r4, #3]
 1362 005a 2371     		strb	r3, [r4, #4]
 1363 005c 6371     		strb	r3, [r4, #5]
 1364 005e 6770     		strb	r7, [r4, #1]
 1365 0060 A570     		strb	r5, [r4, #2]
 1366 0062 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 1367              	.L171:
 1368 0066 134A     		ldr	r2, .L172+8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 25


 1369 0068 134B     		ldr	r3, .L172+12
 1370 006a 1670     		strb	r6, [r2]
 1371 006c 01A9     		add	r1, sp, #4
 1372 006e 134C     		ldr	r4, .L172+16
 1373 0070 1C60     		str	r4, [r3]
 1374 0072 4FF47060 		mov	r0, #3840
 1375 0076 0422     		movs	r2, #4
 1376 0078 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 1377 007c 01A9     		add	r1, sp, #4
 1378 007e 4FF47060 		mov	r0, #3840
 1379 0082 0422     		movs	r2, #4
 1380 0084 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 1381 0088 01A9     		add	r1, sp, #4
 1382 008a 4FF48070 		mov	r0, #256
 1383 008e 0422     		movs	r2, #4
 1384 0090 FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 1385 0094 0A4D     		ldr	r5, .L172+20
 1386 0096 0B4C     		ldr	r4, .L172+24
 1387 0098 0B48     		ldr	r0, .L172+28
 1388 009a 0C4A     		ldr	r2, .L172+32
 1389 009c 0023     		movs	r3, #0
 1390 009e 0A21     		movs	r1, #10
 1391 00a0 2B60     		str	r3, [r5]
 1392 00a2 2370     		strb	r3, [r4]
 1393 00a4 0370     		strb	r3, [r0]
 1394 00a6 1160     		str	r1, [r2]
 1395 00a8 03B0     		add	sp, sp, #12
 1396              		@ sp needed
 1397 00aa F0BD     		pop	{r4, r5, r6, r7, pc}
 1398              	.L173:
 1399              		.align	2
 1400              	.L172:
 1401 00ac 00000000 		.word	.LANCHOR9
 1402 00b0 00000000 		.word	.LANCHOR3
 1403 00b4 00000000 		.word	.LANCHOR10
 1404 00b8 00000000 		.word	.LANCHOR8
 1405 00bc 78563412 		.word	305419896
 1406 00c0 00000000 		.word	.LANCHOR16
 1407 00c4 00000000 		.word	.LANCHOR15
 1408 00c8 00000000 		.word	.LANCHOR11
 1409 00cc 00000000 		.word	.LANCHOR17
 1410              		.size	_Z9DHCP_inithPKc, .-_Z9DHCP_inithPKc
 1411              		.section	.text._Z18reset_DHCP_timeoutv,"ax",%progbits
 1412              		.align	2
 1413              		.global	_Z18reset_DHCP_timeoutv
 1414              		.thumb
 1415              		.thumb_func
 1416              		.type	_Z18reset_DHCP_timeoutv, %function
 1417              	_Z18reset_DHCP_timeoutv:
 1418              		@ args = 0, pretend = 0, frame = 0
 1419              		@ frame_needed = 0, uses_anonymous_args = 0
 1420              		@ link register save eliminated.
 1421 0000 0548     		ldr	r0, .L175
 1422 0002 064A     		ldr	r2, .L175+4
 1423 0004 10B4     		push	{r4}
 1424 0006 0023     		movs	r3, #0
 1425 0008 054C     		ldr	r4, .L175+8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 26


 1426 000a 0370     		strb	r3, [r0]
 1427 000c 0A21     		movs	r1, #10
 1428 000e 2360     		str	r3, [r4]
 1429 0010 1160     		str	r1, [r2]
 1430 0012 5DF8044B 		ldr	r4, [sp], #4
 1431 0016 7047     		bx	lr
 1432              	.L176:
 1433              		.align	2
 1434              	.L175:
 1435 0018 00000000 		.word	.LANCHOR15
 1436 001c 00000000 		.word	.LANCHOR17
 1437 0020 00000000 		.word	.LANCHOR16
 1438              		.size	_Z18reset_DHCP_timeoutv, .-_Z18reset_DHCP_timeoutv
 1439              		.section	.text._Z17DHCP_time_handlerv,"ax",%progbits
 1440              		.align	2
 1441              		.global	_Z17DHCP_time_handlerv
 1442              		.thumb
 1443              		.thumb_func
 1444              		.type	_Z17DHCP_time_handlerv, %function
 1445              	_Z17DHCP_time_handlerv:
 1446              		@ args = 0, pretend = 0, frame = 0
 1447              		@ frame_needed = 0, uses_anonymous_args = 0
 1448              		@ link register save eliminated.
 1449 0000 024B     		ldr	r3, .L178
 1450 0002 1A68     		ldr	r2, [r3]
 1451 0004 0132     		adds	r2, r2, #1
 1452 0006 1A60     		str	r2, [r3]
 1453 0008 7047     		bx	lr
 1454              	.L179:
 1455 000a 00BF     		.align	2
 1456              	.L178:
 1457 000c 00000000 		.word	.LANCHOR16
 1458              		.size	_Z17DHCP_time_handlerv, .-_Z17DHCP_time_handlerv
 1459              		.section	.text._Z13getIPfromDHCPPh,"ax",%progbits
 1460              		.align	2
 1461              		.global	_Z13getIPfromDHCPPh
 1462              		.thumb
 1463              		.thumb_func
 1464              		.type	_Z13getIPfromDHCPPh, %function
 1465              	_Z13getIPfromDHCPPh:
 1466              		@ args = 0, pretend = 0, frame = 0
 1467              		@ frame_needed = 0, uses_anonymous_args = 0
 1468              		@ link register save eliminated.
 1469 0000 044B     		ldr	r3, .L181
 1470 0002 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 1471 0004 0270     		strb	r2, [r0]
 1472 0006 5A78     		ldrb	r2, [r3, #1]	@ zero_extendqisi2
 1473 0008 4270     		strb	r2, [r0, #1]
 1474 000a 9A78     		ldrb	r2, [r3, #2]	@ zero_extendqisi2
 1475 000c 8270     		strb	r2, [r0, #2]
 1476 000e DB78     		ldrb	r3, [r3, #3]	@ zero_extendqisi2
 1477 0010 C370     		strb	r3, [r0, #3]
 1478 0012 7047     		bx	lr
 1479              	.L182:
 1480              		.align	2
 1481              	.L181:
 1482 0014 00000000 		.word	.LANCHOR0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 27


 1483              		.size	_Z13getIPfromDHCPPh, .-_Z13getIPfromDHCPPh
 1484              		.section	.text._Z13getGWfromDHCPPh,"ax",%progbits
 1485              		.align	2
 1486              		.global	_Z13getGWfromDHCPPh
 1487              		.thumb
 1488              		.thumb_func
 1489              		.type	_Z13getGWfromDHCPPh, %function
 1490              	_Z13getGWfromDHCPPh:
 1491              		@ args = 0, pretend = 0, frame = 0
 1492              		@ frame_needed = 0, uses_anonymous_args = 0
 1493              		@ link register save eliminated.
 1494 0000 044B     		ldr	r3, .L184
 1495 0002 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 1496 0004 0270     		strb	r2, [r0]
 1497 0006 5A78     		ldrb	r2, [r3, #1]	@ zero_extendqisi2
 1498 0008 4270     		strb	r2, [r0, #1]
 1499 000a 9A78     		ldrb	r2, [r3, #2]	@ zero_extendqisi2
 1500 000c 8270     		strb	r2, [r0, #2]
 1501 000e DB78     		ldrb	r3, [r3, #3]	@ zero_extendqisi2
 1502 0010 C370     		strb	r3, [r0, #3]
 1503 0012 7047     		bx	lr
 1504              	.L185:
 1505              		.align	2
 1506              	.L184:
 1507 0014 00000000 		.word	.LANCHOR2
 1508              		.size	_Z13getGWfromDHCPPh, .-_Z13getGWfromDHCPPh
 1509              		.section	.text._Z13getSNfromDHCPPh,"ax",%progbits
 1510              		.align	2
 1511              		.global	_Z13getSNfromDHCPPh
 1512              		.thumb
 1513              		.thumb_func
 1514              		.type	_Z13getSNfromDHCPPh, %function
 1515              	_Z13getSNfromDHCPPh:
 1516              		@ args = 0, pretend = 0, frame = 0
 1517              		@ frame_needed = 0, uses_anonymous_args = 0
 1518              		@ link register save eliminated.
 1519 0000 044B     		ldr	r3, .L187
 1520 0002 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 1521 0004 0270     		strb	r2, [r0]
 1522 0006 5A78     		ldrb	r2, [r3, #1]	@ zero_extendqisi2
 1523 0008 4270     		strb	r2, [r0, #1]
 1524 000a 9A78     		ldrb	r2, [r3, #2]	@ zero_extendqisi2
 1525 000c 8270     		strb	r2, [r0, #2]
 1526 000e DB78     		ldrb	r3, [r3, #3]	@ zero_extendqisi2
 1527 0010 C370     		strb	r3, [r0, #3]
 1528 0012 7047     		bx	lr
 1529              	.L188:
 1530              		.align	2
 1531              	.L187:
 1532 0014 00000000 		.word	.LANCHOR1
 1533              		.size	_Z13getSNfromDHCPPh, .-_Z13getSNfromDHCPPh
 1534              		.section	.text._Z14getDNSfromDHCPPh,"ax",%progbits
 1535              		.align	2
 1536              		.global	_Z14getDNSfromDHCPPh
 1537              		.thumb
 1538              		.thumb_func
 1539              		.type	_Z14getDNSfromDHCPPh, %function
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 28


 1540              	_Z14getDNSfromDHCPPh:
 1541              		@ args = 0, pretend = 0, frame = 0
 1542              		@ frame_needed = 0, uses_anonymous_args = 0
 1543              		@ link register save eliminated.
 1544 0000 044B     		ldr	r3, .L190
 1545 0002 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
 1546 0004 0270     		strb	r2, [r0]
 1547 0006 5A78     		ldrb	r2, [r3, #1]	@ zero_extendqisi2
 1548 0008 4270     		strb	r2, [r0, #1]
 1549 000a 9A78     		ldrb	r2, [r3, #2]	@ zero_extendqisi2
 1550 000c 8270     		strb	r2, [r0, #2]
 1551 000e DB78     		ldrb	r3, [r3, #3]	@ zero_extendqisi2
 1552 0010 C370     		strb	r3, [r0, #3]
 1553 0012 7047     		bx	lr
 1554              	.L191:
 1555              		.align	2
 1556              	.L190:
 1557 0014 00000000 		.word	.LANCHOR13
 1558              		.size	_Z14getDNSfromDHCPPh, .-_Z14getDNSfromDHCPPh
 1559              		.section	.text._Z16getDHCPLeasetimev,"ax",%progbits
 1560              		.align	2
 1561              		.global	_Z16getDHCPLeasetimev
 1562              		.thumb
 1563              		.thumb_func
 1564              		.type	_Z16getDHCPLeasetimev, %function
 1565              	_Z16getDHCPLeasetimev:
 1566              		@ args = 0, pretend = 0, frame = 0
 1567              		@ frame_needed = 0, uses_anonymous_args = 0
 1568              		@ link register save eliminated.
 1569 0000 014B     		ldr	r3, .L193
 1570 0002 1868     		ldr	r0, [r3]
 1571 0004 7047     		bx	lr
 1572              	.L194:
 1573 0006 00BF     		.align	2
 1574              	.L193:
 1575 0008 00000000 		.word	.LANCHOR14
 1576              		.size	_Z16getDHCPLeasetimev, .-_Z16getDHCPLeasetimev
 1577              		.global	dhcp_ip_conflict
 1578              		.global	dhcp_ip_update
 1579              		.global	dhcp_ip_assign
 1580              		.global	DHCP_CHADDR
 1581              		.global	HOST_NAME
 1582              		.global	DHCP_XID
 1583              		.global	dhcp_tick_next
 1584              		.global	dhcp_tick_1s
 1585              		.global	dhcp_lease_time
 1586              		.global	dhcp_retry_count
 1587              		.global	dhcp_state
 1588              		.global	DHCP_allocated_dns
 1589              		.global	DHCP_allocated_sn
 1590              		.global	DHCP_allocated_gw
 1591              		.global	DHCP_allocated_ip
 1592              		.global	OLD_allocated_ip
 1593              		.global	DHCP_SIP
 1594              		.global	DHCP_SOCKET
 1595              		.section	.bss.dhcp_state,"aw",%nobits
 1596              		.set	.LANCHOR11,. + 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 29


 1597              		.type	dhcp_state, %object
 1598              		.size	dhcp_state, 1
 1599              	dhcp_state:
 1600 0000 00       		.space	1
 1601              		.section	.bss.DHCP_allocated_sn,"aw",%nobits
 1602              		.align	2
 1603              		.set	.LANCHOR1,. + 0
 1604              		.type	DHCP_allocated_sn, %object
 1605              		.size	DHCP_allocated_sn, 4
 1606              	DHCP_allocated_sn:
 1607 0000 00000000 		.space	4
 1608              		.section	.bss.DHCP_SIP,"aw",%nobits
 1609              		.align	2
 1610              		.set	.LANCHOR12,. + 0
 1611              		.type	DHCP_SIP, %object
 1612              		.size	DHCP_SIP, 4
 1613              	DHCP_SIP:
 1614 0000 00000000 		.space	4
 1615              		.section	.data.dhcp_tick_next,"aw",%progbits
 1616              		.align	2
 1617              		.set	.LANCHOR17,. + 0
 1618              		.type	dhcp_tick_next, %object
 1619              		.size	dhcp_tick_next, 4
 1620              	dhcp_tick_next:
 1621 0000 0A000000 		.word	10
 1622              		.section	.data.dhcp_ip_update,"aw",%progbits
 1623              		.align	2
 1624              		.set	.LANCHOR5,. + 0
 1625              		.type	dhcp_ip_update, %object
 1626              		.size	dhcp_ip_update, 4
 1627              	dhcp_ip_update:
 1628 0000 00000000 		.word	_Z17default_ip_updatev
 1629              		.section	.bss.dhcp_retry_count,"aw",%nobits
 1630              		.set	.LANCHOR15,. + 0
 1631              		.type	dhcp_retry_count, %object
 1632              		.size	dhcp_retry_count, 1
 1633              	dhcp_retry_count:
 1634 0000 00       		.space	1
 1635              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 1636              		.align	2
 1637              		.type	_ZL32cpu_irq_critical_section_counter, %object
 1638              		.size	_ZL32cpu_irq_critical_section_counter, 4
 1639              	_ZL32cpu_irq_critical_section_counter:
 1640 0000 00000000 		.space	4
 1641              		.section	.bss.OLD_allocated_ip,"aw",%nobits
 1642              		.align	2
 1643              		.set	.LANCHOR18,. + 0
 1644              		.type	OLD_allocated_ip, %object
 1645              		.size	OLD_allocated_ip, 4
 1646              	OLD_allocated_ip:
 1647 0000 00000000 		.space	4
 1648              		.section	.bss.DHCP_allocated_gw,"aw",%nobits
 1649              		.align	2
 1650              		.set	.LANCHOR2,. + 0
 1651              		.type	DHCP_allocated_gw, %object
 1652              		.size	DHCP_allocated_gw, 4
 1653              	DHCP_allocated_gw:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 30


 1654 0000 00000000 		.space	4
 1655              		.section	.data.dhcp_ip_assign,"aw",%progbits
 1656              		.align	2
 1657              		.set	.LANCHOR4,. + 0
 1658              		.type	dhcp_ip_assign, %object
 1659              		.size	dhcp_ip_assign, 4
 1660              	dhcp_ip_assign:
 1661 0000 00000000 		.word	_Z17default_ip_assignv
 1662              		.section	.bss.DHCP_allocated_ip,"aw",%nobits
 1663              		.align	2
 1664              		.set	.LANCHOR0,. + 0
 1665              		.type	DHCP_allocated_ip, %object
 1666              		.size	DHCP_allocated_ip, 4
 1667              	DHCP_allocated_ip:
 1668 0000 00000000 		.space	4
 1669              		.section	.bss.DHCP_CHADDR,"aw",%nobits
 1670              		.align	2
 1671              		.set	.LANCHOR3,. + 0
 1672              		.type	DHCP_CHADDR, %object
 1673              		.size	DHCP_CHADDR, 6
 1674              	DHCP_CHADDR:
 1675 0000 00000000 		.space	6
 1675      0000
 1676 0006 0000     		.section	.bss.dhcp_tick_1s,"aw",%nobits
 1677              		.align	2
 1678              		.set	.LANCHOR16,. + 0
 1679              		.type	dhcp_tick_1s, %object
 1680              		.size	dhcp_tick_1s, 4
 1681              	dhcp_tick_1s:
 1682 0000 00000000 		.space	4
 1683              		.section	.data.dhcp_ip_conflict,"aw",%progbits
 1684              		.align	2
 1685              		.set	.LANCHOR6,. + 0
 1686              		.type	dhcp_ip_conflict, %object
 1687              		.size	dhcp_ip_conflict, 4
 1688              	dhcp_ip_conflict:
 1689 0000 00000000 		.word	_Z19default_ip_conflictv
 1690              		.section	.bss._ZL17dhcpMessageBuffer,"aw",%nobits
 1691              		.align	2
 1692              		.set	.LANCHOR7,. + 0
 1693              		.type	_ZL17dhcpMessageBuffer, %object
 1694              		.size	_ZL17dhcpMessageBuffer, 548
 1695              	_ZL17dhcpMessageBuffer:
 1696 0000 00000000 		.space	548
 1696      00000000 
 1696      00000000 
 1696      00000000 
 1696      00000000 
 1697              		.section	.bss.DHCP_XID,"aw",%nobits
 1698              		.align	2
 1699              		.set	.LANCHOR8,. + 0
 1700              		.type	DHCP_XID, %object
 1701              		.size	DHCP_XID, 4
 1702              	DHCP_XID:
 1703 0000 00000000 		.space	4
 1704              		.section	.data.dhcp_lease_time,"aw",%progbits
 1705              		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc4TMKvj.s 			page 31


 1706              		.set	.LANCHOR14,. + 0
 1707              		.type	dhcp_lease_time, %object
 1708              		.size	dhcp_lease_time, 4
 1709              	dhcp_lease_time:
 1710 0000 FFFFFFFF 		.word	-1
 1711              		.section	.bss.DHCP_allocated_dns,"aw",%nobits
 1712              		.align	2
 1713              		.set	.LANCHOR13,. + 0
 1714              		.type	DHCP_allocated_dns, %object
 1715              		.size	DHCP_allocated_dns, 4
 1716              	DHCP_allocated_dns:
 1717 0000 00000000 		.space	4
 1718              		.section	.bss.DHCP_SOCKET,"aw",%nobits
 1719              		.set	.LANCHOR10,. + 0
 1720              		.type	DHCP_SOCKET, %object
 1721              		.size	DHCP_SOCKET, 1
 1722              	DHCP_SOCKET:
 1723 0000 00       		.space	1
 1724              		.section	.data.HOST_NAME,"aw",%progbits
 1725              		.align	2
 1726              		.set	.LANCHOR9,. + 0
 1727              		.type	HOST_NAME, %object
 1728              		.size	HOST_NAME, 16
 1729              	HOST_NAME:
 1730 0000 44756574 		.ascii	"DuetEthernet\000"
 1730      45746865 
 1730      726E6574 
 1730      00
 1731 000d 000000   		.space	3
 1732              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 1733              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 1734              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 1735              	_ZL28cpu_irq_prev_interrupt_state:
 1736 0000 00       		.space	1
 1737              		.section	.rodata.str1.4,"aMS",%progbits,1
 1738              		.align	2
 1739              	.LC0:
 1740 0000 43484543 		.ascii	"CHECK_IP_CONFLICT\000"
 1740      4B5F4950 
 1740      5F434F4E 
 1740      464C4943 
 1740      5400
 1741 0012 0000     		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
