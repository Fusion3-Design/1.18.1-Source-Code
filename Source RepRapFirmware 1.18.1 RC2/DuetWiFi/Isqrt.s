ARM GAS  C:\Users\tstern\AppData\Local\Temp\cchikMUd.s 			page 1


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
  15              		.file	"Isqrt.cpp"
  16              		.section	.text._Z7isqrt64y,"ax",%progbits
  17              		.align	2
  18              		.global	_Z7isqrt64y
  19              		.thumb
  20              		.thumb_func
  21              		.type	_Z7isqrt64y, %function
  22              	_Z7isqrt64y:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 F0B4     		push	{r4, r5, r6, r7}
  27 0002 0A46     		mov	r2, r1
  28 0004 0023     		movs	r3, #0
  29 0006 0E46     		mov	r6, r1
  30 0008 0029     		cmp	r1, #0
  31 000a 40F09080 		bne	.L2
  32 000e B0F1804F 		cmp	r0, #1073741824
  33 0012 0446     		mov	r4, r0
  34 0014 25BF     		ittet	cs
  35 0016 4FF0A043 		movcs	r3, #1342177280
  36 001a 00F14044 		addcs	r4, r0, #-1073741824
  37 001e 4FF08053 		movcc	r3, #268435456
  38 0022 4FF48032 		movcs	r2, #65536
  39 0026 9C42     		cmp	r4, r3
  40 0028 24BF     		itt	cs
  41 002a 42F40042 		orrcs	r2, r2, #32768
  42 002e C3EB0404 		rsbcs	r4, r3, r4
  43 0032 42F40053 		orr	r3, r2, #8192
  44 0036 5B03     		lsls	r3, r3, #13
  45 0038 9C42     		cmp	r4, r3
  46 003a 24BF     		itt	cs
  47 003c 42F48042 		orrcs	r2, r2, #16384
  48 0040 C3EB0404 		rsbcs	r4, r3, r4
  49 0044 42F48053 		orr	r3, r2, #4096
  50 0048 1B03     		lsls	r3, r3, #12
  51 004a 9C42     		cmp	r4, r3
  52 004c 24BF     		itt	cs
  53 004e 42F40052 		orrcs	r2, r2, #8192
  54 0052 C3EB0404 		rsbcs	r4, r3, r4
  55 0056 42F40063 		orr	r3, r2, #2048
  56 005a DB02     		lsls	r3, r3, #11
  57 005c 9C42     		cmp	r4, r3
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cchikMUd.s 			page 2


  58 005e 24BF     		itt	cs
  59 0060 42F48052 		orrcs	r2, r2, #4096
  60 0064 C3EB0404 		rsbcs	r4, r3, r4
  61 0068 42F48063 		orr	r3, r2, #1024
  62 006c 9B02     		lsls	r3, r3, #10
  63 006e 9C42     		cmp	r4, r3
  64 0070 24BF     		itt	cs
  65 0072 42F40062 		orrcs	r2, r2, #2048
  66 0076 C3EB0404 		rsbcs	r4, r3, r4
  67 007a 42F40073 		orr	r3, r2, #512
  68 007e 5B02     		lsls	r3, r3, #9
  69 0080 9C42     		cmp	r4, r3
  70 0082 24BF     		itt	cs
  71 0084 42F48062 		orrcs	r2, r2, #1024
  72 0088 C3EB0404 		rsbcs	r4, r3, r4
  73 008c 42F48073 		orr	r3, r2, #256
  74 0090 1B02     		lsls	r3, r3, #8
  75 0092 9C42     		cmp	r4, r3
  76 0094 24BF     		itt	cs
  77 0096 42F40072 		orrcs	r2, r2, #512
  78 009a C3EB0404 		rsbcs	r4, r3, r4
  79 009e 42F08003 		orr	r3, r2, #128
  80 00a2 DB01     		lsls	r3, r3, #7
  81 00a4 9C42     		cmp	r4, r3
  82 00a6 24BF     		itt	cs
  83 00a8 42F48072 		orrcs	r2, r2, #256
  84 00ac C3EB0404 		rsbcs	r4, r3, r4
  85 00b0 42F04003 		orr	r3, r2, #64
  86 00b4 9B01     		lsls	r3, r3, #6
  87 00b6 9C42     		cmp	r4, r3
  88 00b8 24BF     		itt	cs
  89 00ba 42F08002 		orrcs	r2, r2, #128
  90 00be C3EB0404 		rsbcs	r4, r3, r4
  91 00c2 42F02003 		orr	r3, r2, #32
  92 00c6 5B01     		lsls	r3, r3, #5
  93 00c8 9C42     		cmp	r4, r3
  94 00ca 24BF     		itt	cs
  95 00cc 42F04002 		orrcs	r2, r2, #64
  96 00d0 C3EB0404 		rsbcs	r4, r3, r4
  97 00d4 42F01003 		orr	r3, r2, #16
  98 00d8 1B01     		lsls	r3, r3, #4
  99 00da 9C42     		cmp	r4, r3
 100 00dc 24BF     		itt	cs
 101 00de 42F02002 		orrcs	r2, r2, #32
 102 00e2 C3EB0404 		rsbcs	r4, r3, r4
 103 00e6 42F00803 		orr	r3, r2, #8
 104 00ea DB00     		lsls	r3, r3, #3
 105 00ec 9C42     		cmp	r4, r3
 106 00ee 24BF     		itt	cs
 107 00f0 42F01002 		orrcs	r2, r2, #16
 108 00f4 C3EB0404 		rsbcs	r4, r3, r4
 109 00f8 42F00403 		orr	r3, r2, #4
 110 00fc 9B00     		lsls	r3, r3, #2
 111 00fe 9C42     		cmp	r4, r3
 112 0100 24BF     		itt	cs
 113 0102 42F00802 		orrcs	r2, r2, #8
 114 0106 C3EB0404 		rsbcs	r4, r3, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cchikMUd.s 			page 3


 115 010a 42F00203 		orr	r3, r2, #2
 116 010e 5B00     		lsls	r3, r3, #1
 117 0110 9C42     		cmp	r4, r3
 118 0112 24BF     		itt	cs
 119 0114 42F00402 		orrcs	r2, r2, #4
 120 0118 C3EB0404 		rsbcs	r4, r3, r4
 121 011c 42F00103 		orr	r3, r2, #1
 122 0120 9C42     		cmp	r4, r3
 123 0122 28BF     		it	cs
 124 0124 42F00202 		orrcs	r2, r2, #2
 125 0128 5008     		lsrs	r0, r2, #1
 126 012a F0BC     		pop	{r4, r5, r6, r7}
 127 012c 7047     		bx	lr
 128              	.L2:
 129 012e 11F04042 		ands	r2, r1, #-1073741824
 130 0132 03D0     		beq	.L55
 131 0134 4FF0FF30 		mov	r0, #-1
 132 0138 F0BC     		pop	{r4, r5, r6, r7}
 133 013a 7047     		bx	lr
 134              	.L55:
 135 013c B1F1805F 		cmp	r1, #268435456
 136 0140 25BF     		ittet	cs
 137 0142 01F17046 		addcs	r6, r1, #-268435456
 138 0146 4FF0A053 		movcs	r3, #335544320
 139 014a 4FF08063 		movcc	r3, #67108864
 140 014e 0422     		movcs	r2, #4
 141 0150 9E42     		cmp	r6, r3
 142 0152 24BF     		itt	cs
 143 0154 42F00202 		orrcs	r2, r2, #2
 144 0158 C3EB0606 		rsbcs	r6, r3, r6
 145 015c 5300     		lsls	r3, r2, #1
 146 015e 43F00102 		orr	r2, r3, #1
 147 0162 1206     		lsls	r2, r2, #24
 148 0164 9642     		cmp	r6, r2
 149 0166 28BF     		it	cs
 150 0168 43F00203 		orrcs	r3, r3, #2
 151 016c 4FEA4303 		lsl	r3, r3, #1
 152 0170 28BF     		it	cs
 153 0172 C2EB0606 		rsbcs	r6, r2, r6
 154 0176 43F00102 		orr	r2, r3, #1
 155 017a 9205     		lsls	r2, r2, #22
 156 017c 9642     		cmp	r6, r2
 157 017e 28BF     		it	cs
 158 0180 43F00203 		orrcs	r3, r3, #2
 159 0184 4FEA4303 		lsl	r3, r3, #1
 160 0188 28BF     		it	cs
 161 018a C2EB0606 		rsbcs	r6, r2, r6
 162 018e 43F00102 		orr	r2, r3, #1
 163 0192 1205     		lsls	r2, r2, #20
 164 0194 9642     		cmp	r6, r2
 165 0196 28BF     		it	cs
 166 0198 43F00203 		orrcs	r3, r3, #2
 167 019c 4FEA4303 		lsl	r3, r3, #1
 168 01a0 28BF     		it	cs
 169 01a2 C2EB0606 		rsbcs	r6, r2, r6
 170 01a6 43F00102 		orr	r2, r3, #1
 171 01aa 9204     		lsls	r2, r2, #18
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cchikMUd.s 			page 4


 172 01ac 9642     		cmp	r6, r2
 173 01ae 28BF     		it	cs
 174 01b0 43F00203 		orrcs	r3, r3, #2
 175 01b4 4FEA4303 		lsl	r3, r3, #1
 176 01b8 28BF     		it	cs
 177 01ba C2EB0606 		rsbcs	r6, r2, r6
 178 01be 43F00102 		orr	r2, r3, #1
 179 01c2 1204     		lsls	r2, r2, #16
 180 01c4 9642     		cmp	r6, r2
 181 01c6 28BF     		it	cs
 182 01c8 43F00203 		orrcs	r3, r3, #2
 183 01cc 4FEA4303 		lsl	r3, r3, #1
 184 01d0 28BF     		it	cs
 185 01d2 C2EB0606 		rsbcs	r6, r2, r6
 186 01d6 43F00102 		orr	r2, r3, #1
 187 01da 9203     		lsls	r2, r2, #14
 188 01dc 9642     		cmp	r6, r2
 189 01de 28BF     		it	cs
 190 01e0 43F00203 		orrcs	r3, r3, #2
 191 01e4 4FEA4303 		lsl	r3, r3, #1
 192 01e8 28BF     		it	cs
 193 01ea C2EB0606 		rsbcs	r6, r2, r6
 194 01ee 43F00102 		orr	r2, r3, #1
 195 01f2 1203     		lsls	r2, r2, #12
 196 01f4 9642     		cmp	r6, r2
 197 01f6 28BF     		it	cs
 198 01f8 43F00203 		orrcs	r3, r3, #2
 199 01fc 4FEA4303 		lsl	r3, r3, #1
 200 0200 28BF     		it	cs
 201 0202 C2EB0606 		rsbcs	r6, r2, r6
 202 0206 43F00102 		orr	r2, r3, #1
 203 020a 9202     		lsls	r2, r2, #10
 204 020c 9642     		cmp	r6, r2
 205 020e 28BF     		it	cs
 206 0210 43F00203 		orrcs	r3, r3, #2
 207 0214 4FEA4303 		lsl	r3, r3, #1
 208 0218 28BF     		it	cs
 209 021a C2EB0606 		rsbcs	r6, r2, r6
 210 021e 43F00102 		orr	r2, r3, #1
 211 0222 1202     		lsls	r2, r2, #8
 212 0224 9642     		cmp	r6, r2
 213 0226 28BF     		it	cs
 214 0228 43F00203 		orrcs	r3, r3, #2
 215 022c 4FEA4303 		lsl	r3, r3, #1
 216 0230 28BF     		it	cs
 217 0232 C2EB0606 		rsbcs	r6, r2, r6
 218 0236 43F00102 		orr	r2, r3, #1
 219 023a 9201     		lsls	r2, r2, #6
 220 023c 9642     		cmp	r6, r2
 221 023e 28BF     		it	cs
 222 0240 43F00203 		orrcs	r3, r3, #2
 223 0244 4FEA4303 		lsl	r3, r3, #1
 224 0248 28BF     		it	cs
 225 024a C2EB0606 		rsbcs	r6, r2, r6
 226 024e 43F00102 		orr	r2, r3, #1
 227 0252 1201     		lsls	r2, r2, #4
 228 0254 9642     		cmp	r6, r2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cchikMUd.s 			page 5


 229 0256 28BF     		it	cs
 230 0258 43F00203 		orrcs	r3, r3, #2
 231 025c 4FEA4303 		lsl	r3, r3, #1
 232 0260 28BF     		it	cs
 233 0262 C2EB0606 		rsbcs	r6, r2, r6
 234 0266 43F00102 		orr	r2, r3, #1
 235 026a 9200     		lsls	r2, r2, #2
 236 026c 9642     		cmp	r6, r2
 237 026e 28BF     		it	cs
 238 0270 43F00203 		orrcs	r3, r3, #2
 239 0274 4FEA4303 		lsl	r3, r3, #1
 240 0278 28BF     		it	cs
 241 027a C2EB0606 		rsbcs	r6, r2, r6
 242 027e 43F00102 		orr	r2, r3, #1
 243 0282 9642     		cmp	r6, r2
 244 0284 24BF     		itt	cs
 245 0286 43F00203 		orrcs	r3, r3, #2
 246 028a C2EB0606 		rsbcs	r6, r2, r6
 247 028e 5900     		lsls	r1, r3, #1
 248 0290 3546     		mov	r5, r6
 249 0292 0024     		movs	r4, #0
 250 0294 41F00106 		orr	r6, r1, #1
 251 0298 B308     		lsrs	r3, r6, #2
 252 029a 0443     		orrs	r4, r4, r0
 253 029c B207     		lsls	r2, r6, #30
 254 029e 9D42     		cmp	r5, r3
 255 02a0 08BF     		it eq
 256 02a2 9442     		cmpeq	r4, r2
 257 02a4 04D3     		bcc	.L35
 258 02a6 A41A     		subs	r4, r4, r2
 259 02a8 65EB0305 		sbc	r5, r5, r3
 260 02ac 41F00201 		orr	r1, r1, #2
 261              	.L35:
 262 02b0 4800     		lsls	r0, r1, #1
 263 02b2 40F00101 		orr	r1, r0, #1
 264 02b6 0B09     		lsrs	r3, r1, #4
 265 02b8 0A07     		lsls	r2, r1, #28
 266 02ba 9D42     		cmp	r5, r3
 267 02bc 08BF     		it eq
 268 02be 9442     		cmpeq	r4, r2
 269 02c0 04D3     		bcc	.L36
 270 02c2 A41A     		subs	r4, r4, r2
 271 02c4 65EB0305 		sbc	r5, r5, r3
 272 02c8 40F00200 		orr	r0, r0, #2
 273              	.L36:
 274 02cc 4000     		lsls	r0, r0, #1
 275 02ce 40F00101 		orr	r1, r0, #1
 276 02d2 8B09     		lsrs	r3, r1, #6
 277 02d4 8A06     		lsls	r2, r1, #26
 278 02d6 9D42     		cmp	r5, r3
 279 02d8 08BF     		it eq
 280 02da 9442     		cmpeq	r4, r2
 281 02dc 04D3     		bcc	.L37
 282 02de A41A     		subs	r4, r4, r2
 283 02e0 65EB0305 		sbc	r5, r5, r3
 284 02e4 40F00200 		orr	r0, r0, #2
 285              	.L37:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cchikMUd.s 			page 6


 286 02e8 4000     		lsls	r0, r0, #1
 287 02ea 40F00101 		orr	r1, r0, #1
 288 02ee 0B0A     		lsrs	r3, r1, #8
 289 02f0 0A06     		lsls	r2, r1, #24
 290 02f2 9D42     		cmp	r5, r3
 291 02f4 08BF     		it eq
 292 02f6 9442     		cmpeq	r4, r2
 293 02f8 04D3     		bcc	.L38
 294 02fa A41A     		subs	r4, r4, r2
 295 02fc 65EB0305 		sbc	r5, r5, r3
 296 0300 40F00200 		orr	r0, r0, #2
 297              	.L38:
 298 0304 4000     		lsls	r0, r0, #1
 299 0306 40F00101 		orr	r1, r0, #1
 300 030a 8B0A     		lsrs	r3, r1, #10
 301 030c 8A05     		lsls	r2, r1, #22
 302 030e 9D42     		cmp	r5, r3
 303 0310 08BF     		it eq
 304 0312 9442     		cmpeq	r4, r2
 305 0314 04D3     		bcc	.L39
 306 0316 A41A     		subs	r4, r4, r2
 307 0318 65EB0305 		sbc	r5, r5, r3
 308 031c 40F00200 		orr	r0, r0, #2
 309              	.L39:
 310 0320 4000     		lsls	r0, r0, #1
 311 0322 40F00101 		orr	r1, r0, #1
 312 0326 0B0B     		lsrs	r3, r1, #12
 313 0328 0A05     		lsls	r2, r1, #20
 314 032a 9D42     		cmp	r5, r3
 315 032c 08BF     		it eq
 316 032e 9442     		cmpeq	r4, r2
 317 0330 04D3     		bcc	.L40
 318 0332 A41A     		subs	r4, r4, r2
 319 0334 65EB0305 		sbc	r5, r5, r3
 320 0338 40F00200 		orr	r0, r0, #2
 321              	.L40:
 322 033c 4000     		lsls	r0, r0, #1
 323 033e 40F00101 		orr	r1, r0, #1
 324 0342 8B0B     		lsrs	r3, r1, #14
 325 0344 8A04     		lsls	r2, r1, #18
 326 0346 9D42     		cmp	r5, r3
 327 0348 08BF     		it eq
 328 034a 9442     		cmpeq	r4, r2
 329 034c 04D3     		bcc	.L41
 330 034e A41A     		subs	r4, r4, r2
 331 0350 65EB0305 		sbc	r5, r5, r3
 332 0354 40F00200 		orr	r0, r0, #2
 333              	.L41:
 334 0358 4000     		lsls	r0, r0, #1
 335 035a 40F00101 		orr	r1, r0, #1
 336 035e 0B0C     		lsrs	r3, r1, #16
 337 0360 0A04     		lsls	r2, r1, #16
 338 0362 9D42     		cmp	r5, r3
 339 0364 08BF     		it eq
 340 0366 9442     		cmpeq	r4, r2
 341 0368 04D3     		bcc	.L42
 342 036a A41A     		subs	r4, r4, r2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cchikMUd.s 			page 7


 343 036c 65EB0305 		sbc	r5, r5, r3
 344 0370 40F00200 		orr	r0, r0, #2
 345              	.L42:
 346 0374 4000     		lsls	r0, r0, #1
 347 0376 40F00101 		orr	r1, r0, #1
 348 037a 8B0C     		lsrs	r3, r1, #18
 349 037c 8A03     		lsls	r2, r1, #14
 350 037e 9D42     		cmp	r5, r3
 351 0380 08BF     		it eq
 352 0382 9442     		cmpeq	r4, r2
 353 0384 04D3     		bcc	.L43
 354 0386 A41A     		subs	r4, r4, r2
 355 0388 65EB0305 		sbc	r5, r5, r3
 356 038c 40F00200 		orr	r0, r0, #2
 357              	.L43:
 358 0390 4000     		lsls	r0, r0, #1
 359 0392 40F00101 		orr	r1, r0, #1
 360 0396 0B0D     		lsrs	r3, r1, #20
 361 0398 0A03     		lsls	r2, r1, #12
 362 039a 9D42     		cmp	r5, r3
 363 039c 08BF     		it eq
 364 039e 9442     		cmpeq	r4, r2
 365 03a0 04D3     		bcc	.L44
 366 03a2 A41A     		subs	r4, r4, r2
 367 03a4 65EB0305 		sbc	r5, r5, r3
 368 03a8 40F00200 		orr	r0, r0, #2
 369              	.L44:
 370 03ac 4000     		lsls	r0, r0, #1
 371 03ae 40F00101 		orr	r1, r0, #1
 372 03b2 8B0D     		lsrs	r3, r1, #22
 373 03b4 8A02     		lsls	r2, r1, #10
 374 03b6 9D42     		cmp	r5, r3
 375 03b8 08BF     		it eq
 376 03ba 9442     		cmpeq	r4, r2
 377 03bc 04D3     		bcc	.L45
 378 03be A41A     		subs	r4, r4, r2
 379 03c0 65EB0305 		sbc	r5, r5, r3
 380 03c4 40F00200 		orr	r0, r0, #2
 381              	.L45:
 382 03c8 4000     		lsls	r0, r0, #1
 383 03ca 40F00101 		orr	r1, r0, #1
 384 03ce 0B0E     		lsrs	r3, r1, #24
 385 03d0 0A02     		lsls	r2, r1, #8
 386 03d2 9D42     		cmp	r5, r3
 387 03d4 08BF     		it eq
 388 03d6 9442     		cmpeq	r4, r2
 389 03d8 04D3     		bcc	.L46
 390 03da A41A     		subs	r4, r4, r2
 391 03dc 65EB0305 		sbc	r5, r5, r3
 392 03e0 40F00200 		orr	r0, r0, #2
 393              	.L46:
 394 03e4 4000     		lsls	r0, r0, #1
 395 03e6 40F00101 		orr	r1, r0, #1
 396 03ea 8B0E     		lsrs	r3, r1, #26
 397 03ec 8A01     		lsls	r2, r1, #6
 398 03ee 9D42     		cmp	r5, r3
 399 03f0 08BF     		it eq
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cchikMUd.s 			page 8


 400 03f2 9442     		cmpeq	r4, r2
 401 03f4 04D3     		bcc	.L47
 402 03f6 A41A     		subs	r4, r4, r2
 403 03f8 65EB0305 		sbc	r5, r5, r3
 404 03fc 40F00200 		orr	r0, r0, #2
 405              	.L47:
 406 0400 4000     		lsls	r0, r0, #1
 407 0402 40F00101 		orr	r1, r0, #1
 408 0406 0B0F     		lsrs	r3, r1, #28
 409 0408 0A01     		lsls	r2, r1, #4
 410 040a 9D42     		cmp	r5, r3
 411 040c 08BF     		it eq
 412 040e 9442     		cmpeq	r4, r2
 413 0410 04D3     		bcc	.L48
 414 0412 A41A     		subs	r4, r4, r2
 415 0414 65EB0305 		sbc	r5, r5, r3
 416 0418 40F00200 		orr	r0, r0, #2
 417              	.L48:
 418 041c 4000     		lsls	r0, r0, #1
 419 041e 40F00101 		orr	r1, r0, #1
 420 0422 8B0F     		lsrs	r3, r1, #30
 421 0424 8A00     		lsls	r2, r1, #2
 422 0426 9D42     		cmp	r5, r3
 423 0428 08BF     		it eq
 424 042a 9442     		cmpeq	r4, r2
 425 042c 04D3     		bcc	.L49
 426 042e A41A     		subs	r4, r4, r2
 427 0430 65EB0305 		sbc	r5, r5, r3
 428 0434 40F00200 		orr	r0, r0, #2
 429              	.L49:
 430 0438 4000     		lsls	r0, r0, #1
 431 043a 40F00106 		orr	r6, r0, #1
 432 043e 0027     		movs	r7, #0
 433 0440 BD42     		cmp	r5, r7
 434 0442 08BF     		it eq
 435 0444 B442     		cmpeq	r4, r6
 436 0446 28BF     		it	cs
 437 0448 40F00200 		orrcs	r0, r0, #2
 438 044c 4008     		lsrs	r0, r0, #1
 439 044e F0BC     		pop	{r4, r5, r6, r7}
 440 0450 7047     		bx	lr
 441              		.size	_Z7isqrt64y, .-_Z7isqrt64y
 442 0452 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 443              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 444              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 445              	_ZL28cpu_irq_prev_interrupt_state:
 446 0000 00       		.space	1
 447              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 448              		.align	2
 449              		.type	_ZL32cpu_irq_critical_section_counter, %object
 450              		.size	_ZL32cpu_irq_critical_section_counter, 4
 451              	_ZL32cpu_irq_critical_section_counter:
 452 0000 00000000 		.space	4
 453              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
