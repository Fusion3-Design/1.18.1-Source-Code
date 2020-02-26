ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccPWrEvi.s 			page 1


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
  15              		.file	"ccsbcs.c"
  16              		.section	.text.ff_convert,"ax",%progbits
  17              		.align	2
  18              		.global	ff_convert
  19              		.thumb
  20              		.thumb_func
  21              		.type	ff_convert, %function
  22              	ff_convert:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 7F28     		cmp	r0, #127
  27 0002 10B4     		push	{r4}
  28 0004 0ED9     		bls	.L2
  29 0006 81B9     		cbnz	r1, .L11
  30 0008 0E4B     		ldr	r3, .L12
  31 000a 01E0     		b	.L6
  32              	.L4:
  33 000c 8029     		cmp	r1, #128
  34 000e 15D0     		beq	.L7
  35              	.L6:
  36 0010 33F8022F 		ldrh	r2, [r3, #2]!
  37 0014 8242     		cmp	r2, r0
  38 0016 8CB2     		uxth	r4, r1
  39 0018 01F10101 		add	r1, r1, #1
  40 001c F6D1     		bne	.L4
  41 001e 04F18000 		add	r0, r4, #128
  42 0022 80B2     		uxth	r0, r0
  43              	.L2:
  44 0024 5DF8044B 		ldr	r4, [sp], #4
  45 0028 7047     		bx	lr
  46              	.L11:
  47 002a FF28     		cmp	r0, #255
  48 002c 06D8     		bhi	.L7
  49 002e 8038     		subs	r0, r0, #128
  50 0030 054B     		ldr	r3, .L12+4
  51 0032 5DF8044B 		ldr	r4, [sp], #4
  52 0036 33F81000 		ldrh	r0, [r3, r0, lsl #1]
  53 003a 7047     		bx	lr
  54              	.L7:
  55 003c 0020     		movs	r0, #0
  56 003e 5DF8044B 		ldr	r4, [sp], #4
  57 0042 7047     		bx	lr
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccPWrEvi.s 			page 2


  58              	.L13:
  59              		.align	2
  60              	.L12:
  61 0044 FEFFFFFF 		.word	.LANCHOR0-2
  62 0048 00000000 		.word	.LANCHOR0
  63              		.size	ff_convert, .-ff_convert
  64              		.section	.text.ff_wtoupper,"ax",%progbits
  65              		.align	2
  66              		.global	ff_wtoupper
  67              		.thumb
  68              		.thumb_func
  69              		.type	ff_wtoupper, %function
  70              	ff_wtoupper:
  71              		@ args = 0, pretend = 0, frame = 0
  72              		@ frame_needed = 0, uses_anonymous_args = 0
  73              		@ link register save eliminated.
  74 0000 6128     		cmp	r0, #97
  75 0002 0AD0     		beq	.L18
  76 0004 0749     		ldr	r1, .L22
  77 0006 0022     		movs	r2, #0
  78 0008 01E0     		b	.L17
  79              	.L21:
  80 000a 8342     		cmp	r3, r0
  81 000c 06D0     		beq	.L15
  82              	.L17:
  83 000e 31F8023F 		ldrh	r3, [r1, #2]!
  84 0012 0132     		adds	r2, r2, #1
  85 0014 002B     		cmp	r3, #0
  86 0016 F8D1     		bne	.L21
  87 0018 7047     		bx	lr
  88              	.L18:
  89 001a 0022     		movs	r2, #0
  90              	.L15:
  91 001c 024B     		ldr	r3, .L22+4
  92 001e 33F81200 		ldrh	r0, [r3, r2, lsl #1]
  93 0022 7047     		bx	lr
  94              	.L23:
  95              		.align	2
  96              	.L22:
  97 0024 00000000 		.word	.LANCHOR1
  98 0028 00000000 		.word	.LANCHOR2
  99              		.size	ff_wtoupper, .-ff_wtoupper
 100              		.section	.rodata.tbl_lower.4253,"a",%progbits
 101              		.align	2
 102              		.set	.LANCHOR1,. + 0
 103              		.type	tbl_lower.4253, %object
 104              		.size	tbl_lower.4253, 480
 105              	tbl_lower.4253:
 106 0000 6100     		.short	97
 107 0002 6200     		.short	98
 108 0004 6300     		.short	99
 109 0006 6400     		.short	100
 110 0008 6500     		.short	101
 111 000a 6600     		.short	102
 112 000c 6700     		.short	103
 113 000e 6800     		.short	104
 114 0010 6900     		.short	105
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccPWrEvi.s 			page 3


 115 0012 6A00     		.short	106
 116 0014 6B00     		.short	107
 117 0016 6C00     		.short	108
 118 0018 6D00     		.short	109
 119 001a 6E00     		.short	110
 120 001c 6F00     		.short	111
 121 001e 7000     		.short	112
 122 0020 7100     		.short	113
 123 0022 7200     		.short	114
 124 0024 7300     		.short	115
 125 0026 7400     		.short	116
 126 0028 7500     		.short	117
 127 002a 7600     		.short	118
 128 002c 7700     		.short	119
 129 002e 7800     		.short	120
 130 0030 7900     		.short	121
 131 0032 7A00     		.short	122
 132 0034 A100     		.short	161
 133 0036 A200     		.short	162
 134 0038 A300     		.short	163
 135 003a A500     		.short	165
 136 003c AC00     		.short	172
 137 003e AF00     		.short	175
 138 0040 E000     		.short	224
 139 0042 E100     		.short	225
 140 0044 E200     		.short	226
 141 0046 E300     		.short	227
 142 0048 E400     		.short	228
 143 004a E500     		.short	229
 144 004c E600     		.short	230
 145 004e E700     		.short	231
 146 0050 E800     		.short	232
 147 0052 E900     		.short	233
 148 0054 EA00     		.short	234
 149 0056 EB00     		.short	235
 150 0058 EC00     		.short	236
 151 005a ED00     		.short	237
 152 005c EE00     		.short	238
 153 005e EF00     		.short	239
 154 0060 F000     		.short	240
 155 0062 F100     		.short	241
 156 0064 F200     		.short	242
 157 0066 F300     		.short	243
 158 0068 F400     		.short	244
 159 006a F500     		.short	245
 160 006c F600     		.short	246
 161 006e F800     		.short	248
 162 0070 F900     		.short	249
 163 0072 FA00     		.short	250
 164 0074 FB00     		.short	251
 165 0076 FC00     		.short	252
 166 0078 FD00     		.short	253
 167 007a FE00     		.short	254
 168 007c FF00     		.short	255
 169 007e 0101     		.short	257
 170 0080 0301     		.short	259
 171 0082 0501     		.short	261
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccPWrEvi.s 			page 4


 172 0084 0701     		.short	263
 173 0086 0901     		.short	265
 174 0088 0B01     		.short	267
 175 008a 0D01     		.short	269
 176 008c 0F01     		.short	271
 177 008e 1101     		.short	273
 178 0090 1301     		.short	275
 179 0092 1501     		.short	277
 180 0094 1701     		.short	279
 181 0096 1901     		.short	281
 182 0098 1B01     		.short	283
 183 009a 1D01     		.short	285
 184 009c 1F01     		.short	287
 185 009e 2101     		.short	289
 186 00a0 2301     		.short	291
 187 00a2 2501     		.short	293
 188 00a4 2701     		.short	295
 189 00a6 2901     		.short	297
 190 00a8 2B01     		.short	299
 191 00aa 2D01     		.short	301
 192 00ac 2F01     		.short	303
 193 00ae 3101     		.short	305
 194 00b0 3301     		.short	307
 195 00b2 3501     		.short	309
 196 00b4 3701     		.short	311
 197 00b6 3A01     		.short	314
 198 00b8 3C01     		.short	316
 199 00ba 3E01     		.short	318
 200 00bc 4001     		.short	320
 201 00be 4201     		.short	322
 202 00c0 4401     		.short	324
 203 00c2 4601     		.short	326
 204 00c4 4801     		.short	328
 205 00c6 4B01     		.short	331
 206 00c8 4D01     		.short	333
 207 00ca 4F01     		.short	335
 208 00cc 5101     		.short	337
 209 00ce 5301     		.short	339
 210 00d0 5501     		.short	341
 211 00d2 5701     		.short	343
 212 00d4 5901     		.short	345
 213 00d6 5B01     		.short	347
 214 00d8 5D01     		.short	349
 215 00da 5F01     		.short	351
 216 00dc 6101     		.short	353
 217 00de 6301     		.short	355
 218 00e0 6501     		.short	357
 219 00e2 6701     		.short	359
 220 00e4 6901     		.short	361
 221 00e6 6B01     		.short	363
 222 00e8 6D01     		.short	365
 223 00ea 6F01     		.short	367
 224 00ec 7101     		.short	369
 225 00ee 7301     		.short	371
 226 00f0 7501     		.short	373
 227 00f2 7701     		.short	375
 228 00f4 7A01     		.short	378
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccPWrEvi.s 			page 5


 229 00f6 7C01     		.short	380
 230 00f8 7E01     		.short	382
 231 00fa 9201     		.short	402
 232 00fc B103     		.short	945
 233 00fe B203     		.short	946
 234 0100 B303     		.short	947
 235 0102 B403     		.short	948
 236 0104 B503     		.short	949
 237 0106 B603     		.short	950
 238 0108 B703     		.short	951
 239 010a B803     		.short	952
 240 010c B903     		.short	953
 241 010e BA03     		.short	954
 242 0110 BB03     		.short	955
 243 0112 BC03     		.short	956
 244 0114 BD03     		.short	957
 245 0116 BE03     		.short	958
 246 0118 BF03     		.short	959
 247 011a C003     		.short	960
 248 011c C103     		.short	961
 249 011e C303     		.short	963
 250 0120 C403     		.short	964
 251 0122 C503     		.short	965
 252 0124 C603     		.short	966
 253 0126 C703     		.short	967
 254 0128 C803     		.short	968
 255 012a C903     		.short	969
 256 012c CA03     		.short	970
 257 012e 3004     		.short	1072
 258 0130 3104     		.short	1073
 259 0132 3204     		.short	1074
 260 0134 3304     		.short	1075
 261 0136 3404     		.short	1076
 262 0138 3504     		.short	1077
 263 013a 3604     		.short	1078
 264 013c 3704     		.short	1079
 265 013e 3804     		.short	1080
 266 0140 3904     		.short	1081
 267 0142 3A04     		.short	1082
 268 0144 3B04     		.short	1083
 269 0146 3C04     		.short	1084
 270 0148 3D04     		.short	1085
 271 014a 3E04     		.short	1086
 272 014c 3F04     		.short	1087
 273 014e 4004     		.short	1088
 274 0150 4104     		.short	1089
 275 0152 4204     		.short	1090
 276 0154 4304     		.short	1091
 277 0156 4404     		.short	1092
 278 0158 4504     		.short	1093
 279 015a 4604     		.short	1094
 280 015c 4704     		.short	1095
 281 015e 4804     		.short	1096
 282 0160 4904     		.short	1097
 283 0162 4A04     		.short	1098
 284 0164 4B04     		.short	1099
 285 0166 4C04     		.short	1100
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccPWrEvi.s 			page 6


 286 0168 4D04     		.short	1101
 287 016a 4E04     		.short	1102
 288 016c 4F04     		.short	1103
 289 016e 5104     		.short	1105
 290 0170 5204     		.short	1106
 291 0172 5304     		.short	1107
 292 0174 5404     		.short	1108
 293 0176 5504     		.short	1109
 294 0178 5604     		.short	1110
 295 017a 5704     		.short	1111
 296 017c 5804     		.short	1112
 297 017e 5904     		.short	1113
 298 0180 5A04     		.short	1114
 299 0182 5B04     		.short	1115
 300 0184 5C04     		.short	1116
 301 0186 5E04     		.short	1118
 302 0188 5F04     		.short	1119
 303 018a 7021     		.short	8560
 304 018c 7121     		.short	8561
 305 018e 7221     		.short	8562
 306 0190 7321     		.short	8563
 307 0192 7421     		.short	8564
 308 0194 7521     		.short	8565
 309 0196 7621     		.short	8566
 310 0198 7721     		.short	8567
 311 019a 7821     		.short	8568
 312 019c 7921     		.short	8569
 313 019e 7A21     		.short	8570
 314 01a0 7B21     		.short	8571
 315 01a2 7C21     		.short	8572
 316 01a4 7D21     		.short	8573
 317 01a6 7E21     		.short	8574
 318 01a8 7F21     		.short	8575
 319 01aa 41FF     		.short	-191
 320 01ac 42FF     		.short	-190
 321 01ae 43FF     		.short	-189
 322 01b0 44FF     		.short	-188
 323 01b2 45FF     		.short	-187
 324 01b4 46FF     		.short	-186
 325 01b6 47FF     		.short	-185
 326 01b8 48FF     		.short	-184
 327 01ba 49FF     		.short	-183
 328 01bc 4AFF     		.short	-182
 329 01be 4BFF     		.short	-181
 330 01c0 4CFF     		.short	-180
 331 01c2 4DFF     		.short	-179
 332 01c4 4EFF     		.short	-178
 333 01c6 4FFF     		.short	-177
 334 01c8 50FF     		.short	-176
 335 01ca 51FF     		.short	-175
 336 01cc 52FF     		.short	-174
 337 01ce 53FF     		.short	-173
 338 01d0 54FF     		.short	-172
 339 01d2 55FF     		.short	-171
 340 01d4 56FF     		.short	-170
 341 01d6 57FF     		.short	-169
 342 01d8 58FF     		.short	-168
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccPWrEvi.s 			page 7


 343 01da 59FF     		.short	-167
 344 01dc 5AFF     		.short	-166
 345 01de 0000     		.short	0
 346              		.section	.rodata.Tbl,"a",%progbits
 347              		.align	2
 348              		.set	.LANCHOR0,. + 0
 349              		.type	Tbl, %object
 350              		.size	Tbl, 256
 351              	Tbl:
 352 0000 C700     		.short	199
 353 0002 FC00     		.short	252
 354 0004 E900     		.short	233
 355 0006 E200     		.short	226
 356 0008 E400     		.short	228
 357 000a E000     		.short	224
 358 000c E500     		.short	229
 359 000e E700     		.short	231
 360 0010 EA00     		.short	234
 361 0012 EB00     		.short	235
 362 0014 E800     		.short	232
 363 0016 EF00     		.short	239
 364 0018 EE00     		.short	238
 365 001a EC00     		.short	236
 366 001c C400     		.short	196
 367 001e C500     		.short	197
 368 0020 C900     		.short	201
 369 0022 E600     		.short	230
 370 0024 C600     		.short	198
 371 0026 F400     		.short	244
 372 0028 F600     		.short	246
 373 002a F200     		.short	242
 374 002c FB00     		.short	251
 375 002e F900     		.short	249
 376 0030 FF00     		.short	255
 377 0032 D600     		.short	214
 378 0034 DC00     		.short	220
 379 0036 F800     		.short	248
 380 0038 A300     		.short	163
 381 003a D800     		.short	216
 382 003c D700     		.short	215
 383 003e 9201     		.short	402
 384 0040 E100     		.short	225
 385 0042 ED00     		.short	237
 386 0044 F300     		.short	243
 387 0046 FA00     		.short	250
 388 0048 F100     		.short	241
 389 004a D100     		.short	209
 390 004c AA00     		.short	170
 391 004e BA00     		.short	186
 392 0050 BF00     		.short	191
 393 0052 AE00     		.short	174
 394 0054 AC00     		.short	172
 395 0056 BD00     		.short	189
 396 0058 BC00     		.short	188
 397 005a A100     		.short	161
 398 005c AB00     		.short	171
 399 005e BB00     		.short	187
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccPWrEvi.s 			page 8


 400 0060 9125     		.short	9617
 401 0062 9225     		.short	9618
 402 0064 9325     		.short	9619
 403 0066 0225     		.short	9474
 404 0068 2425     		.short	9508
 405 006a C100     		.short	193
 406 006c C200     		.short	194
 407 006e C000     		.short	192
 408 0070 A900     		.short	169
 409 0072 6325     		.short	9571
 410 0074 5125     		.short	9553
 411 0076 5725     		.short	9559
 412 0078 5D25     		.short	9565
 413 007a A200     		.short	162
 414 007c A500     		.short	165
 415 007e 1025     		.short	9488
 416 0080 1425     		.short	9492
 417 0082 3425     		.short	9524
 418 0084 2C25     		.short	9516
 419 0086 1C25     		.short	9500
 420 0088 0025     		.short	9472
 421 008a 3C25     		.short	9532
 422 008c E300     		.short	227
 423 008e C300     		.short	195
 424 0090 5A25     		.short	9562
 425 0092 5425     		.short	9556
 426 0094 6925     		.short	9577
 427 0096 6625     		.short	9574
 428 0098 6025     		.short	9568
 429 009a 5025     		.short	9552
 430 009c 6C25     		.short	9580
 431 009e A400     		.short	164
 432 00a0 F000     		.short	240
 433 00a2 D000     		.short	208
 434 00a4 CA00     		.short	202
 435 00a6 CB00     		.short	203
 436 00a8 C800     		.short	200
 437 00aa 3101     		.short	305
 438 00ac CD00     		.short	205
 439 00ae CE00     		.short	206
 440 00b0 CF00     		.short	207
 441 00b2 1825     		.short	9496
 442 00b4 0C25     		.short	9484
 443 00b6 8825     		.short	9608
 444 00b8 8425     		.short	9604
 445 00ba A600     		.short	166
 446 00bc CC00     		.short	204
 447 00be 8025     		.short	9600
 448 00c0 D300     		.short	211
 449 00c2 DF00     		.short	223
 450 00c4 D400     		.short	212
 451 00c6 D200     		.short	210
 452 00c8 F500     		.short	245
 453 00ca D500     		.short	213
 454 00cc B500     		.short	181
 455 00ce FE00     		.short	254
 456 00d0 DE00     		.short	222
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccPWrEvi.s 			page 9


 457 00d2 DA00     		.short	218
 458 00d4 DB00     		.short	219
 459 00d6 D900     		.short	217
 460 00d8 FD00     		.short	253
 461 00da DD00     		.short	221
 462 00dc AF00     		.short	175
 463 00de B400     		.short	180
 464 00e0 AD00     		.short	173
 465 00e2 B100     		.short	177
 466 00e4 1720     		.short	8215
 467 00e6 BE00     		.short	190
 468 00e8 B600     		.short	182
 469 00ea A700     		.short	167
 470 00ec F700     		.short	247
 471 00ee B800     		.short	184
 472 00f0 B000     		.short	176
 473 00f2 A800     		.short	168
 474 00f4 B700     		.short	183
 475 00f6 B900     		.short	185
 476 00f8 B300     		.short	179
 477 00fa B200     		.short	178
 478 00fc A025     		.short	9632
 479 00fe A000     		.short	160
 480              		.section	.rodata.tbl_upper.4254,"a",%progbits
 481              		.align	2
 482              		.set	.LANCHOR2,. + 0
 483              		.type	tbl_upper.4254, %object
 484              		.size	tbl_upper.4254, 480
 485              	tbl_upper.4254:
 486 0000 4100     		.short	65
 487 0002 4200     		.short	66
 488 0004 4300     		.short	67
 489 0006 4400     		.short	68
 490 0008 4500     		.short	69
 491 000a 4600     		.short	70
 492 000c 4700     		.short	71
 493 000e 4800     		.short	72
 494 0010 4900     		.short	73
 495 0012 4A00     		.short	74
 496 0014 4B00     		.short	75
 497 0016 4C00     		.short	76
 498 0018 4D00     		.short	77
 499 001a 4E00     		.short	78
 500 001c 4F00     		.short	79
 501 001e 5000     		.short	80
 502 0020 5100     		.short	81
 503 0022 5200     		.short	82
 504 0024 5300     		.short	83
 505 0026 5400     		.short	84
 506 0028 5500     		.short	85
 507 002a 5600     		.short	86
 508 002c 5700     		.short	87
 509 002e 5800     		.short	88
 510 0030 5900     		.short	89
 511 0032 5A00     		.short	90
 512 0034 2100     		.short	33
 513 0036 E0FF     		.short	-32
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccPWrEvi.s 			page 10


 514 0038 E1FF     		.short	-31
 515 003a E5FF     		.short	-27
 516 003c E2FF     		.short	-30
 517 003e E3FF     		.short	-29
 518 0040 C000     		.short	192
 519 0042 C100     		.short	193
 520 0044 C200     		.short	194
 521 0046 C300     		.short	195
 522 0048 C400     		.short	196
 523 004a C500     		.short	197
 524 004c C600     		.short	198
 525 004e C700     		.short	199
 526 0050 C800     		.short	200
 527 0052 C900     		.short	201
 528 0054 CA00     		.short	202
 529 0056 CB00     		.short	203
 530 0058 CC00     		.short	204
 531 005a CD00     		.short	205
 532 005c CE00     		.short	206
 533 005e CF00     		.short	207
 534 0060 D000     		.short	208
 535 0062 D100     		.short	209
 536 0064 D200     		.short	210
 537 0066 D300     		.short	211
 538 0068 D400     		.short	212
 539 006a D500     		.short	213
 540 006c D600     		.short	214
 541 006e D800     		.short	216
 542 0070 D900     		.short	217
 543 0072 DA00     		.short	218
 544 0074 DB00     		.short	219
 545 0076 DC00     		.short	220
 546 0078 DD00     		.short	221
 547 007a DE00     		.short	222
 548 007c 7801     		.short	376
 549 007e 0001     		.short	256
 550 0080 0201     		.short	258
 551 0082 0401     		.short	260
 552 0084 0601     		.short	262
 553 0086 0801     		.short	264
 554 0088 0A01     		.short	266
 555 008a 0C01     		.short	268
 556 008c 0E01     		.short	270
 557 008e 1001     		.short	272
 558 0090 1201     		.short	274
 559 0092 1401     		.short	276
 560 0094 1601     		.short	278
 561 0096 1801     		.short	280
 562 0098 1A01     		.short	282
 563 009a 1C01     		.short	284
 564 009c 1E01     		.short	286
 565 009e 2001     		.short	288
 566 00a0 2201     		.short	290
 567 00a2 2401     		.short	292
 568 00a4 2601     		.short	294
 569 00a6 2801     		.short	296
 570 00a8 2A01     		.short	298
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccPWrEvi.s 			page 11


 571 00aa 2C01     		.short	300
 572 00ac 2E01     		.short	302
 573 00ae 3001     		.short	304
 574 00b0 3201     		.short	306
 575 00b2 3401     		.short	308
 576 00b4 3601     		.short	310
 577 00b6 3901     		.short	313
 578 00b8 3B01     		.short	315
 579 00ba 3D01     		.short	317
 580 00bc 3F01     		.short	319
 581 00be 4101     		.short	321
 582 00c0 4301     		.short	323
 583 00c2 4501     		.short	325
 584 00c4 4701     		.short	327
 585 00c6 4A01     		.short	330
 586 00c8 4C01     		.short	332
 587 00ca 4E01     		.short	334
 588 00cc 5001     		.short	336
 589 00ce 5201     		.short	338
 590 00d0 5401     		.short	340
 591 00d2 5601     		.short	342
 592 00d4 5801     		.short	344
 593 00d6 5A01     		.short	346
 594 00d8 5C01     		.short	348
 595 00da 5E01     		.short	350
 596 00dc 6001     		.short	352
 597 00de 6201     		.short	354
 598 00e0 6401     		.short	356
 599 00e2 6601     		.short	358
 600 00e4 6801     		.short	360
 601 00e6 6A01     		.short	362
 602 00e8 6C01     		.short	364
 603 00ea 6E01     		.short	366
 604 00ec 7001     		.short	368
 605 00ee 7201     		.short	370
 606 00f0 7401     		.short	372
 607 00f2 7601     		.short	374
 608 00f4 7901     		.short	377
 609 00f6 7B01     		.short	379
 610 00f8 7D01     		.short	381
 611 00fa 9101     		.short	401
 612 00fc 9103     		.short	913
 613 00fe 9203     		.short	914
 614 0100 9303     		.short	915
 615 0102 9403     		.short	916
 616 0104 9503     		.short	917
 617 0106 9603     		.short	918
 618 0108 9703     		.short	919
 619 010a 9803     		.short	920
 620 010c 9903     		.short	921
 621 010e 9A03     		.short	922
 622 0110 9B03     		.short	923
 623 0112 9C03     		.short	924
 624 0114 9D03     		.short	925
 625 0116 9E03     		.short	926
 626 0118 9F03     		.short	927
 627 011a A003     		.short	928
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccPWrEvi.s 			page 12


 628 011c A103     		.short	929
 629 011e A303     		.short	931
 630 0120 A403     		.short	932
 631 0122 A503     		.short	933
 632 0124 A603     		.short	934
 633 0126 A703     		.short	935
 634 0128 A803     		.short	936
 635 012a A903     		.short	937
 636 012c AA03     		.short	938
 637 012e 1004     		.short	1040
 638 0130 1104     		.short	1041
 639 0132 1204     		.short	1042
 640 0134 1304     		.short	1043
 641 0136 1404     		.short	1044
 642 0138 1504     		.short	1045
 643 013a 1604     		.short	1046
 644 013c 1704     		.short	1047
 645 013e 1804     		.short	1048
 646 0140 1904     		.short	1049
 647 0142 1A04     		.short	1050
 648 0144 1B04     		.short	1051
 649 0146 1C04     		.short	1052
 650 0148 1D04     		.short	1053
 651 014a 1E04     		.short	1054
 652 014c 1F04     		.short	1055
 653 014e 2004     		.short	1056
 654 0150 2104     		.short	1057
 655 0152 2204     		.short	1058
 656 0154 2304     		.short	1059
 657 0156 2404     		.short	1060
 658 0158 2504     		.short	1061
 659 015a 2604     		.short	1062
 660 015c 2704     		.short	1063
 661 015e 2804     		.short	1064
 662 0160 2904     		.short	1065
 663 0162 2A04     		.short	1066
 664 0164 2B04     		.short	1067
 665 0166 2C04     		.short	1068
 666 0168 2D04     		.short	1069
 667 016a 2E04     		.short	1070
 668 016c 2F04     		.short	1071
 669 016e 0104     		.short	1025
 670 0170 0204     		.short	1026
 671 0172 0304     		.short	1027
 672 0174 0404     		.short	1028
 673 0176 0504     		.short	1029
 674 0178 0604     		.short	1030
 675 017a 0704     		.short	1031
 676 017c 0804     		.short	1032
 677 017e 0904     		.short	1033
 678 0180 0A04     		.short	1034
 679 0182 0B04     		.short	1035
 680 0184 0C04     		.short	1036
 681 0186 0E04     		.short	1038
 682 0188 0F04     		.short	1039
 683 018a 6021     		.short	8544
 684 018c 6121     		.short	8545
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccPWrEvi.s 			page 13


 685 018e 6221     		.short	8546
 686 0190 6321     		.short	8547
 687 0192 6421     		.short	8548
 688 0194 6521     		.short	8549
 689 0196 6621     		.short	8550
 690 0198 6721     		.short	8551
 691 019a 6821     		.short	8552
 692 019c 6921     		.short	8553
 693 019e 6A21     		.short	8554
 694 01a0 6B21     		.short	8555
 695 01a2 6C21     		.short	8556
 696 01a4 6D21     		.short	8557
 697 01a6 6E21     		.short	8558
 698 01a8 6F21     		.short	8559
 699 01aa 21FF     		.short	-223
 700 01ac 22FF     		.short	-222
 701 01ae 23FF     		.short	-221
 702 01b0 24FF     		.short	-220
 703 01b2 25FF     		.short	-219
 704 01b4 26FF     		.short	-218
 705 01b6 27FF     		.short	-217
 706 01b8 28FF     		.short	-216
 707 01ba 29FF     		.short	-215
 708 01bc 2AFF     		.short	-214
 709 01be 2BFF     		.short	-213
 710 01c0 2CFF     		.short	-212
 711 01c2 2DFF     		.short	-211
 712 01c4 2EFF     		.short	-210
 713 01c6 2FFF     		.short	-209
 714 01c8 30FF     		.short	-208
 715 01ca 31FF     		.short	-207
 716 01cc 32FF     		.short	-206
 717 01ce 33FF     		.short	-205
 718 01d0 34FF     		.short	-204
 719 01d2 35FF     		.short	-203
 720 01d4 36FF     		.short	-202
 721 01d6 37FF     		.short	-201
 722 01d8 38FF     		.short	-200
 723 01da 39FF     		.short	-199
 724 01dc 3AFF     		.short	-198
 725 01de 0000     		.short	0
 726              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
