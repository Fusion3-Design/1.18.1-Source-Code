ARM GAS  C:\Users\George\AppData\Local\Temp\ccWcPa5o.s 			page 1


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
  14              		.file	"ccsbcs.c"
  15              		.section	.text.ff_convert,"ax",%progbits
  16              		.align	2
  17              		.global	ff_convert
  18              		.thumb
  19              		.thumb_func
  20              		.type	ff_convert, %function
  21              	ff_convert:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 7F28     		cmp	r0, #127
  26 0002 10B4     		push	{r4}
  27 0004 0ED9     		bls	.L2
  28 0006 81B9     		cbnz	r1, .L11
  29 0008 0E4B     		ldr	r3, .L12
  30 000a 01E0     		b	.L6
  31              	.L4:
  32 000c 8029     		cmp	r1, #128
  33 000e 15D0     		beq	.L7
  34              	.L6:
  35 0010 33F8022F 		ldrh	r2, [r3, #2]!
  36 0014 8CB2     		uxth	r4, r1
  37 0016 8242     		cmp	r2, r0
  38 0018 01F10101 		add	r1, r1, #1
  39 001c F6D1     		bne	.L4
  40 001e 04F18000 		add	r0, r4, #128
  41 0022 80B2     		uxth	r0, r0
  42              	.L2:
  43 0024 5DF8044B 		ldr	r4, [sp], #4
  44 0028 7047     		bx	lr
  45              	.L11:
  46 002a FF28     		cmp	r0, #255
  47 002c 06D8     		bhi	.L7
  48 002e 064B     		ldr	r3, .L12+4
  49 0030 8038     		subs	r0, r0, #128
  50 0032 33F81000 		ldrh	r0, [r3, r0, lsl #1]
  51 0036 5DF8044B 		ldr	r4, [sp], #4
  52 003a 7047     		bx	lr
  53              	.L7:
  54 003c 0020     		movs	r0, #0
  55 003e 5DF8044B 		ldr	r4, [sp], #4
  56 0042 7047     		bx	lr
  57              	.L13:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccWcPa5o.s 			page 2


  58              		.align	2
  59              	.L12:
  60 0044 FEFFFFFF 		.word	.LANCHOR0-2
  61 0048 00000000 		.word	.LANCHOR0
  62              		.size	ff_convert, .-ff_convert
  63              		.section	.text.ff_wtoupper,"ax",%progbits
  64              		.align	2
  65              		.global	ff_wtoupper
  66              		.thumb
  67              		.thumb_func
  68              		.type	ff_wtoupper, %function
  69              	ff_wtoupper:
  70              		@ args = 0, pretend = 0, frame = 0
  71              		@ frame_needed = 0, uses_anonymous_args = 0
  72              		@ link register save eliminated.
  73 0000 6128     		cmp	r0, #97
  74 0002 0AD0     		beq	.L18
  75 0004 0749     		ldr	r1, .L22
  76 0006 0022     		movs	r2, #0
  77 0008 01E0     		b	.L17
  78              	.L21:
  79 000a 8342     		cmp	r3, r0
  80 000c 06D0     		beq	.L15
  81              	.L17:
  82 000e 31F8023F 		ldrh	r3, [r1, #2]!
  83 0012 0132     		adds	r2, r2, #1
  84 0014 002B     		cmp	r3, #0
  85 0016 F8D1     		bne	.L21
  86 0018 7047     		bx	lr
  87              	.L18:
  88 001a 0022     		movs	r2, #0
  89              	.L15:
  90 001c 024B     		ldr	r3, .L22+4
  91 001e 33F81200 		ldrh	r0, [r3, r2, lsl #1]
  92 0022 7047     		bx	lr
  93              	.L23:
  94              		.align	2
  95              	.L22:
  96 0024 00000000 		.word	.LANCHOR1
  97 0028 00000000 		.word	.LANCHOR2
  98              		.size	ff_wtoupper, .-ff_wtoupper
  99              		.section	.rodata.tbl_lower.4253,"a",%progbits
 100              		.align	2
 101              		.set	.LANCHOR1,. + 0
 102              		.type	tbl_lower.4253, %object
 103              		.size	tbl_lower.4253, 480
 104              	tbl_lower.4253:
 105 0000 6100     		.short	97
 106 0002 6200     		.short	98
 107 0004 6300     		.short	99
 108 0006 6400     		.short	100
 109 0008 6500     		.short	101
 110 000a 6600     		.short	102
 111 000c 6700     		.short	103
 112 000e 6800     		.short	104
 113 0010 6900     		.short	105
 114 0012 6A00     		.short	106
ARM GAS  C:\Users\George\AppData\Local\Temp\ccWcPa5o.s 			page 3


 115 0014 6B00     		.short	107
 116 0016 6C00     		.short	108
 117 0018 6D00     		.short	109
 118 001a 6E00     		.short	110
 119 001c 6F00     		.short	111
 120 001e 7000     		.short	112
 121 0020 7100     		.short	113
 122 0022 7200     		.short	114
 123 0024 7300     		.short	115
 124 0026 7400     		.short	116
 125 0028 7500     		.short	117
 126 002a 7600     		.short	118
 127 002c 7700     		.short	119
 128 002e 7800     		.short	120
 129 0030 7900     		.short	121
 130 0032 7A00     		.short	122
 131 0034 A100     		.short	161
 132 0036 A200     		.short	162
 133 0038 A300     		.short	163
 134 003a A500     		.short	165
 135 003c AC00     		.short	172
 136 003e AF00     		.short	175
 137 0040 E000     		.short	224
 138 0042 E100     		.short	225
 139 0044 E200     		.short	226
 140 0046 E300     		.short	227
 141 0048 E400     		.short	228
 142 004a E500     		.short	229
 143 004c E600     		.short	230
 144 004e E700     		.short	231
 145 0050 E800     		.short	232
 146 0052 E900     		.short	233
 147 0054 EA00     		.short	234
 148 0056 EB00     		.short	235
 149 0058 EC00     		.short	236
 150 005a ED00     		.short	237
 151 005c EE00     		.short	238
 152 005e EF00     		.short	239
 153 0060 F000     		.short	240
 154 0062 F100     		.short	241
 155 0064 F200     		.short	242
 156 0066 F300     		.short	243
 157 0068 F400     		.short	244
 158 006a F500     		.short	245
 159 006c F600     		.short	246
 160 006e F800     		.short	248
 161 0070 F900     		.short	249
 162 0072 FA00     		.short	250
 163 0074 FB00     		.short	251
 164 0076 FC00     		.short	252
 165 0078 FD00     		.short	253
 166 007a FE00     		.short	254
 167 007c FF00     		.short	255
 168 007e 0101     		.short	257
 169 0080 0301     		.short	259
 170 0082 0501     		.short	261
 171 0084 0701     		.short	263
ARM GAS  C:\Users\George\AppData\Local\Temp\ccWcPa5o.s 			page 4


 172 0086 0901     		.short	265
 173 0088 0B01     		.short	267
 174 008a 0D01     		.short	269
 175 008c 0F01     		.short	271
 176 008e 1101     		.short	273
 177 0090 1301     		.short	275
 178 0092 1501     		.short	277
 179 0094 1701     		.short	279
 180 0096 1901     		.short	281
 181 0098 1B01     		.short	283
 182 009a 1D01     		.short	285
 183 009c 1F01     		.short	287
 184 009e 2101     		.short	289
 185 00a0 2301     		.short	291
 186 00a2 2501     		.short	293
 187 00a4 2701     		.short	295
 188 00a6 2901     		.short	297
 189 00a8 2B01     		.short	299
 190 00aa 2D01     		.short	301
 191 00ac 2F01     		.short	303
 192 00ae 3101     		.short	305
 193 00b0 3301     		.short	307
 194 00b2 3501     		.short	309
 195 00b4 3701     		.short	311
 196 00b6 3A01     		.short	314
 197 00b8 3C01     		.short	316
 198 00ba 3E01     		.short	318
 199 00bc 4001     		.short	320
 200 00be 4201     		.short	322
 201 00c0 4401     		.short	324
 202 00c2 4601     		.short	326
 203 00c4 4801     		.short	328
 204 00c6 4B01     		.short	331
 205 00c8 4D01     		.short	333
 206 00ca 4F01     		.short	335
 207 00cc 5101     		.short	337
 208 00ce 5301     		.short	339
 209 00d0 5501     		.short	341
 210 00d2 5701     		.short	343
 211 00d4 5901     		.short	345
 212 00d6 5B01     		.short	347
 213 00d8 5D01     		.short	349
 214 00da 5F01     		.short	351
 215 00dc 6101     		.short	353
 216 00de 6301     		.short	355
 217 00e0 6501     		.short	357
 218 00e2 6701     		.short	359
 219 00e4 6901     		.short	361
 220 00e6 6B01     		.short	363
 221 00e8 6D01     		.short	365
 222 00ea 6F01     		.short	367
 223 00ec 7101     		.short	369
 224 00ee 7301     		.short	371
 225 00f0 7501     		.short	373
 226 00f2 7701     		.short	375
 227 00f4 7A01     		.short	378
 228 00f6 7C01     		.short	380
ARM GAS  C:\Users\George\AppData\Local\Temp\ccWcPa5o.s 			page 5


 229 00f8 7E01     		.short	382
 230 00fa 9201     		.short	402
 231 00fc B103     		.short	945
 232 00fe B203     		.short	946
 233 0100 B303     		.short	947
 234 0102 B403     		.short	948
 235 0104 B503     		.short	949
 236 0106 B603     		.short	950
 237 0108 B703     		.short	951
 238 010a B803     		.short	952
 239 010c B903     		.short	953
 240 010e BA03     		.short	954
 241 0110 BB03     		.short	955
 242 0112 BC03     		.short	956
 243 0114 BD03     		.short	957
 244 0116 BE03     		.short	958
 245 0118 BF03     		.short	959
 246 011a C003     		.short	960
 247 011c C103     		.short	961
 248 011e C303     		.short	963
 249 0120 C403     		.short	964
 250 0122 C503     		.short	965
 251 0124 C603     		.short	966
 252 0126 C703     		.short	967
 253 0128 C803     		.short	968
 254 012a C903     		.short	969
 255 012c CA03     		.short	970
 256 012e 3004     		.short	1072
 257 0130 3104     		.short	1073
 258 0132 3204     		.short	1074
 259 0134 3304     		.short	1075
 260 0136 3404     		.short	1076
 261 0138 3504     		.short	1077
 262 013a 3604     		.short	1078
 263 013c 3704     		.short	1079
 264 013e 3804     		.short	1080
 265 0140 3904     		.short	1081
 266 0142 3A04     		.short	1082
 267 0144 3B04     		.short	1083
 268 0146 3C04     		.short	1084
 269 0148 3D04     		.short	1085
 270 014a 3E04     		.short	1086
 271 014c 3F04     		.short	1087
 272 014e 4004     		.short	1088
 273 0150 4104     		.short	1089
 274 0152 4204     		.short	1090
 275 0154 4304     		.short	1091
 276 0156 4404     		.short	1092
 277 0158 4504     		.short	1093
 278 015a 4604     		.short	1094
 279 015c 4704     		.short	1095
 280 015e 4804     		.short	1096
 281 0160 4904     		.short	1097
 282 0162 4A04     		.short	1098
 283 0164 4B04     		.short	1099
 284 0166 4C04     		.short	1100
 285 0168 4D04     		.short	1101
ARM GAS  C:\Users\George\AppData\Local\Temp\ccWcPa5o.s 			page 6


 286 016a 4E04     		.short	1102
 287 016c 4F04     		.short	1103
 288 016e 5104     		.short	1105
 289 0170 5204     		.short	1106
 290 0172 5304     		.short	1107
 291 0174 5404     		.short	1108
 292 0176 5504     		.short	1109
 293 0178 5604     		.short	1110
 294 017a 5704     		.short	1111
 295 017c 5804     		.short	1112
 296 017e 5904     		.short	1113
 297 0180 5A04     		.short	1114
 298 0182 5B04     		.short	1115
 299 0184 5C04     		.short	1116
 300 0186 5E04     		.short	1118
 301 0188 5F04     		.short	1119
 302 018a 7021     		.short	8560
 303 018c 7121     		.short	8561
 304 018e 7221     		.short	8562
 305 0190 7321     		.short	8563
 306 0192 7421     		.short	8564
 307 0194 7521     		.short	8565
 308 0196 7621     		.short	8566
 309 0198 7721     		.short	8567
 310 019a 7821     		.short	8568
 311 019c 7921     		.short	8569
 312 019e 7A21     		.short	8570
 313 01a0 7B21     		.short	8571
 314 01a2 7C21     		.short	8572
 315 01a4 7D21     		.short	8573
 316 01a6 7E21     		.short	8574
 317 01a8 7F21     		.short	8575
 318 01aa 41FF     		.short	-191
 319 01ac 42FF     		.short	-190
 320 01ae 43FF     		.short	-189
 321 01b0 44FF     		.short	-188
 322 01b2 45FF     		.short	-187
 323 01b4 46FF     		.short	-186
 324 01b6 47FF     		.short	-185
 325 01b8 48FF     		.short	-184
 326 01ba 49FF     		.short	-183
 327 01bc 4AFF     		.short	-182
 328 01be 4BFF     		.short	-181
 329 01c0 4CFF     		.short	-180
 330 01c2 4DFF     		.short	-179
 331 01c4 4EFF     		.short	-178
 332 01c6 4FFF     		.short	-177
 333 01c8 50FF     		.short	-176
 334 01ca 51FF     		.short	-175
 335 01cc 52FF     		.short	-174
 336 01ce 53FF     		.short	-173
 337 01d0 54FF     		.short	-172
 338 01d2 55FF     		.short	-171
 339 01d4 56FF     		.short	-170
 340 01d6 57FF     		.short	-169
 341 01d8 58FF     		.short	-168
 342 01da 59FF     		.short	-167
ARM GAS  C:\Users\George\AppData\Local\Temp\ccWcPa5o.s 			page 7


 343 01dc 5AFF     		.short	-166
 344 01de 0000     		.short	0
 345              		.section	.rodata.Tbl,"a",%progbits
 346              		.align	2
 347              		.set	.LANCHOR0,. + 0
 348              		.type	Tbl, %object
 349              		.size	Tbl, 256
 350              	Tbl:
 351 0000 C700     		.short	199
 352 0002 FC00     		.short	252
 353 0004 E900     		.short	233
 354 0006 E200     		.short	226
 355 0008 E400     		.short	228
 356 000a E000     		.short	224
 357 000c E500     		.short	229
 358 000e E700     		.short	231
 359 0010 EA00     		.short	234
 360 0012 EB00     		.short	235
 361 0014 E800     		.short	232
 362 0016 EF00     		.short	239
 363 0018 EE00     		.short	238
 364 001a EC00     		.short	236
 365 001c C400     		.short	196
 366 001e C500     		.short	197
 367 0020 C900     		.short	201
 368 0022 E600     		.short	230
 369 0024 C600     		.short	198
 370 0026 F400     		.short	244
 371 0028 F600     		.short	246
 372 002a F200     		.short	242
 373 002c FB00     		.short	251
 374 002e F900     		.short	249
 375 0030 FF00     		.short	255
 376 0032 D600     		.short	214
 377 0034 DC00     		.short	220
 378 0036 F800     		.short	248
 379 0038 A300     		.short	163
 380 003a D800     		.short	216
 381 003c D700     		.short	215
 382 003e 9201     		.short	402
 383 0040 E100     		.short	225
 384 0042 ED00     		.short	237
 385 0044 F300     		.short	243
 386 0046 FA00     		.short	250
 387 0048 F100     		.short	241
 388 004a D100     		.short	209
 389 004c AA00     		.short	170
 390 004e BA00     		.short	186
 391 0050 BF00     		.short	191
 392 0052 AE00     		.short	174
 393 0054 AC00     		.short	172
 394 0056 BD00     		.short	189
 395 0058 BC00     		.short	188
 396 005a A100     		.short	161
 397 005c AB00     		.short	171
 398 005e BB00     		.short	187
 399 0060 9125     		.short	9617
ARM GAS  C:\Users\George\AppData\Local\Temp\ccWcPa5o.s 			page 8


 400 0062 9225     		.short	9618
 401 0064 9325     		.short	9619
 402 0066 0225     		.short	9474
 403 0068 2425     		.short	9508
 404 006a C100     		.short	193
 405 006c C200     		.short	194
 406 006e C000     		.short	192
 407 0070 A900     		.short	169
 408 0072 6325     		.short	9571
 409 0074 5125     		.short	9553
 410 0076 5725     		.short	9559
 411 0078 5D25     		.short	9565
 412 007a A200     		.short	162
 413 007c A500     		.short	165
 414 007e 1025     		.short	9488
 415 0080 1425     		.short	9492
 416 0082 3425     		.short	9524
 417 0084 2C25     		.short	9516
 418 0086 1C25     		.short	9500
 419 0088 0025     		.short	9472
 420 008a 3C25     		.short	9532
 421 008c E300     		.short	227
 422 008e C300     		.short	195
 423 0090 5A25     		.short	9562
 424 0092 5425     		.short	9556
 425 0094 6925     		.short	9577
 426 0096 6625     		.short	9574
 427 0098 6025     		.short	9568
 428 009a 5025     		.short	9552
 429 009c 6C25     		.short	9580
 430 009e A400     		.short	164
 431 00a0 F000     		.short	240
 432 00a2 D000     		.short	208
 433 00a4 CA00     		.short	202
 434 00a6 CB00     		.short	203
 435 00a8 C800     		.short	200
 436 00aa 3101     		.short	305
 437 00ac CD00     		.short	205
 438 00ae CE00     		.short	206
 439 00b0 CF00     		.short	207
 440 00b2 1825     		.short	9496
 441 00b4 0C25     		.short	9484
 442 00b6 8825     		.short	9608
 443 00b8 8425     		.short	9604
 444 00ba A600     		.short	166
 445 00bc CC00     		.short	204
 446 00be 8025     		.short	9600
 447 00c0 D300     		.short	211
 448 00c2 DF00     		.short	223
 449 00c4 D400     		.short	212
 450 00c6 D200     		.short	210
 451 00c8 F500     		.short	245
 452 00ca D500     		.short	213
 453 00cc B500     		.short	181
 454 00ce FE00     		.short	254
 455 00d0 DE00     		.short	222
 456 00d2 DA00     		.short	218
ARM GAS  C:\Users\George\AppData\Local\Temp\ccWcPa5o.s 			page 9


 457 00d4 DB00     		.short	219
 458 00d6 D900     		.short	217
 459 00d8 FD00     		.short	253
 460 00da DD00     		.short	221
 461 00dc AF00     		.short	175
 462 00de B400     		.short	180
 463 00e0 AD00     		.short	173
 464 00e2 B100     		.short	177
 465 00e4 1720     		.short	8215
 466 00e6 BE00     		.short	190
 467 00e8 B600     		.short	182
 468 00ea A700     		.short	167
 469 00ec F700     		.short	247
 470 00ee B800     		.short	184
 471 00f0 B000     		.short	176
 472 00f2 A800     		.short	168
 473 00f4 B700     		.short	183
 474 00f6 B900     		.short	185
 475 00f8 B300     		.short	179
 476 00fa B200     		.short	178
 477 00fc A025     		.short	9632
 478 00fe A000     		.short	160
 479              		.section	.rodata.tbl_upper.4254,"a",%progbits
 480              		.align	2
 481              		.set	.LANCHOR2,. + 0
 482              		.type	tbl_upper.4254, %object
 483              		.size	tbl_upper.4254, 480
 484              	tbl_upper.4254:
 485 0000 4100     		.short	65
 486 0002 4200     		.short	66
 487 0004 4300     		.short	67
 488 0006 4400     		.short	68
 489 0008 4500     		.short	69
 490 000a 4600     		.short	70
 491 000c 4700     		.short	71
 492 000e 4800     		.short	72
 493 0010 4900     		.short	73
 494 0012 4A00     		.short	74
 495 0014 4B00     		.short	75
 496 0016 4C00     		.short	76
 497 0018 4D00     		.short	77
 498 001a 4E00     		.short	78
 499 001c 4F00     		.short	79
 500 001e 5000     		.short	80
 501 0020 5100     		.short	81
 502 0022 5200     		.short	82
 503 0024 5300     		.short	83
 504 0026 5400     		.short	84
 505 0028 5500     		.short	85
 506 002a 5600     		.short	86
 507 002c 5700     		.short	87
 508 002e 5800     		.short	88
 509 0030 5900     		.short	89
 510 0032 5A00     		.short	90
 511 0034 2100     		.short	33
 512 0036 E0FF     		.short	-32
 513 0038 E1FF     		.short	-31
ARM GAS  C:\Users\George\AppData\Local\Temp\ccWcPa5o.s 			page 10


 514 003a E5FF     		.short	-27
 515 003c E2FF     		.short	-30
 516 003e E3FF     		.short	-29
 517 0040 C000     		.short	192
 518 0042 C100     		.short	193
 519 0044 C200     		.short	194
 520 0046 C300     		.short	195
 521 0048 C400     		.short	196
 522 004a C500     		.short	197
 523 004c C600     		.short	198
 524 004e C700     		.short	199
 525 0050 C800     		.short	200
 526 0052 C900     		.short	201
 527 0054 CA00     		.short	202
 528 0056 CB00     		.short	203
 529 0058 CC00     		.short	204
 530 005a CD00     		.short	205
 531 005c CE00     		.short	206
 532 005e CF00     		.short	207
 533 0060 D000     		.short	208
 534 0062 D100     		.short	209
 535 0064 D200     		.short	210
 536 0066 D300     		.short	211
 537 0068 D400     		.short	212
 538 006a D500     		.short	213
 539 006c D600     		.short	214
 540 006e D800     		.short	216
 541 0070 D900     		.short	217
 542 0072 DA00     		.short	218
 543 0074 DB00     		.short	219
 544 0076 DC00     		.short	220
 545 0078 DD00     		.short	221
 546 007a DE00     		.short	222
 547 007c 7801     		.short	376
 548 007e 0001     		.short	256
 549 0080 0201     		.short	258
 550 0082 0401     		.short	260
 551 0084 0601     		.short	262
 552 0086 0801     		.short	264
 553 0088 0A01     		.short	266
 554 008a 0C01     		.short	268
 555 008c 0E01     		.short	270
 556 008e 1001     		.short	272
 557 0090 1201     		.short	274
 558 0092 1401     		.short	276
 559 0094 1601     		.short	278
 560 0096 1801     		.short	280
 561 0098 1A01     		.short	282
 562 009a 1C01     		.short	284
 563 009c 1E01     		.short	286
 564 009e 2001     		.short	288
 565 00a0 2201     		.short	290
 566 00a2 2401     		.short	292
 567 00a4 2601     		.short	294
 568 00a6 2801     		.short	296
 569 00a8 2A01     		.short	298
 570 00aa 2C01     		.short	300
ARM GAS  C:\Users\George\AppData\Local\Temp\ccWcPa5o.s 			page 11


 571 00ac 2E01     		.short	302
 572 00ae 3001     		.short	304
 573 00b0 3201     		.short	306
 574 00b2 3401     		.short	308
 575 00b4 3601     		.short	310
 576 00b6 3901     		.short	313
 577 00b8 3B01     		.short	315
 578 00ba 3D01     		.short	317
 579 00bc 3F01     		.short	319
 580 00be 4101     		.short	321
 581 00c0 4301     		.short	323
 582 00c2 4501     		.short	325
 583 00c4 4701     		.short	327
 584 00c6 4A01     		.short	330
 585 00c8 4C01     		.short	332
 586 00ca 4E01     		.short	334
 587 00cc 5001     		.short	336
 588 00ce 5201     		.short	338
 589 00d0 5401     		.short	340
 590 00d2 5601     		.short	342
 591 00d4 5801     		.short	344
 592 00d6 5A01     		.short	346
 593 00d8 5C01     		.short	348
 594 00da 5E01     		.short	350
 595 00dc 6001     		.short	352
 596 00de 6201     		.short	354
 597 00e0 6401     		.short	356
 598 00e2 6601     		.short	358
 599 00e4 6801     		.short	360
 600 00e6 6A01     		.short	362
 601 00e8 6C01     		.short	364
 602 00ea 6E01     		.short	366
 603 00ec 7001     		.short	368
 604 00ee 7201     		.short	370
 605 00f0 7401     		.short	372
 606 00f2 7601     		.short	374
 607 00f4 7901     		.short	377
 608 00f6 7B01     		.short	379
 609 00f8 7D01     		.short	381
 610 00fa 9101     		.short	401
 611 00fc 9103     		.short	913
 612 00fe 9203     		.short	914
 613 0100 9303     		.short	915
 614 0102 9403     		.short	916
 615 0104 9503     		.short	917
 616 0106 9603     		.short	918
 617 0108 9703     		.short	919
 618 010a 9803     		.short	920
 619 010c 9903     		.short	921
 620 010e 9A03     		.short	922
 621 0110 9B03     		.short	923
 622 0112 9C03     		.short	924
 623 0114 9D03     		.short	925
 624 0116 9E03     		.short	926
 625 0118 9F03     		.short	927
 626 011a A003     		.short	928
 627 011c A103     		.short	929
ARM GAS  C:\Users\George\AppData\Local\Temp\ccWcPa5o.s 			page 12


 628 011e A303     		.short	931
 629 0120 A403     		.short	932
 630 0122 A503     		.short	933
 631 0124 A603     		.short	934
 632 0126 A703     		.short	935
 633 0128 A803     		.short	936
 634 012a A903     		.short	937
 635 012c AA03     		.short	938
 636 012e 1004     		.short	1040
 637 0130 1104     		.short	1041
 638 0132 1204     		.short	1042
 639 0134 1304     		.short	1043
 640 0136 1404     		.short	1044
 641 0138 1504     		.short	1045
 642 013a 1604     		.short	1046
 643 013c 1704     		.short	1047
 644 013e 1804     		.short	1048
 645 0140 1904     		.short	1049
 646 0142 1A04     		.short	1050
 647 0144 1B04     		.short	1051
 648 0146 1C04     		.short	1052
 649 0148 1D04     		.short	1053
 650 014a 1E04     		.short	1054
 651 014c 1F04     		.short	1055
 652 014e 2004     		.short	1056
 653 0150 2104     		.short	1057
 654 0152 2204     		.short	1058
 655 0154 2304     		.short	1059
 656 0156 2404     		.short	1060
 657 0158 2504     		.short	1061
 658 015a 2604     		.short	1062
 659 015c 2704     		.short	1063
 660 015e 2804     		.short	1064
 661 0160 2904     		.short	1065
 662 0162 2A04     		.short	1066
 663 0164 2B04     		.short	1067
 664 0166 2C04     		.short	1068
 665 0168 2D04     		.short	1069
 666 016a 2E04     		.short	1070
 667 016c 2F04     		.short	1071
 668 016e 0104     		.short	1025
 669 0170 0204     		.short	1026
 670 0172 0304     		.short	1027
 671 0174 0404     		.short	1028
 672 0176 0504     		.short	1029
 673 0178 0604     		.short	1030
 674 017a 0704     		.short	1031
 675 017c 0804     		.short	1032
 676 017e 0904     		.short	1033
 677 0180 0A04     		.short	1034
 678 0182 0B04     		.short	1035
 679 0184 0C04     		.short	1036
 680 0186 0E04     		.short	1038
 681 0188 0F04     		.short	1039
 682 018a 6021     		.short	8544
 683 018c 6121     		.short	8545
 684 018e 6221     		.short	8546
ARM GAS  C:\Users\George\AppData\Local\Temp\ccWcPa5o.s 			page 13


 685 0190 6321     		.short	8547
 686 0192 6421     		.short	8548
 687 0194 6521     		.short	8549
 688 0196 6621     		.short	8550
 689 0198 6721     		.short	8551
 690 019a 6821     		.short	8552
 691 019c 6921     		.short	8553
 692 019e 6A21     		.short	8554
 693 01a0 6B21     		.short	8555
 694 01a2 6C21     		.short	8556
 695 01a4 6D21     		.short	8557
 696 01a6 6E21     		.short	8558
 697 01a8 6F21     		.short	8559
 698 01aa 21FF     		.short	-223
 699 01ac 22FF     		.short	-222
 700 01ae 23FF     		.short	-221
 701 01b0 24FF     		.short	-220
 702 01b2 25FF     		.short	-219
 703 01b4 26FF     		.short	-218
 704 01b6 27FF     		.short	-217
 705 01b8 28FF     		.short	-216
 706 01ba 29FF     		.short	-215
 707 01bc 2AFF     		.short	-214
 708 01be 2BFF     		.short	-213
 709 01c0 2CFF     		.short	-212
 710 01c2 2DFF     		.short	-211
 711 01c4 2EFF     		.short	-210
 712 01c6 2FFF     		.short	-209
 713 01c8 30FF     		.short	-208
 714 01ca 31FF     		.short	-207
 715 01cc 32FF     		.short	-206
 716 01ce 33FF     		.short	-205
 717 01d0 34FF     		.short	-204
 718 01d2 35FF     		.short	-203
 719 01d4 36FF     		.short	-202
 720 01d6 37FF     		.short	-201
 721 01d8 38FF     		.short	-200
 722 01da 39FF     		.short	-199
 723 01dc 3AFF     		.short	-198
 724 01de 0000     		.short	0
 725              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
