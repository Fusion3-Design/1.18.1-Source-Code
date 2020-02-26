ARM GAS  C:\Users\George\AppData\Local\Temp\ccytZWoQ.s 			page 1


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
  14              		.file	"Isqrt.cpp"
  15              		.section	.text._Z7isqrt64y,"ax",%progbits
  16              		.align	2
  17              		.global	_Z7isqrt64y
  18              		.thumb
  19              		.thumb_func
  20              		.type	_Z7isqrt64y, %function
  21              	_Z7isqrt64y:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 F0B4     		push	{r4, r5, r6, r7}
  26 0002 0A46     		mov	r2, r1
  27 0004 0023     		movs	r3, #0
  28 0006 0E46     		mov	r6, r1
  29 0008 0029     		cmp	r1, #0
  30 000a 40F09080 		bne	.L2
  31 000e B0F1804F 		cmp	r0, #1073741824
  32 0012 0446     		mov	r4, r0
  33 0014 25BF     		ittet	cs
  34 0016 4FF0A043 		movcs	r3, #1342177280
  35 001a 00F14044 		addcs	r4, r0, #-1073741824
  36 001e 4FF08053 		movcc	r3, #268435456
  37 0022 4FF48032 		movcs	r2, #65536
  38 0026 9C42     		cmp	r4, r3
  39 0028 24BF     		itt	cs
  40 002a 42F40042 		orrcs	r2, r2, #32768
  41 002e C3EB0404 		rsbcs	r4, r3, r4
  42 0032 42F40053 		orr	r3, r2, #8192
  43 0036 5B03     		lsls	r3, r3, #13
  44 0038 9C42     		cmp	r4, r3
  45 003a 24BF     		itt	cs
  46 003c 42F48042 		orrcs	r2, r2, #16384
  47 0040 C3EB0404 		rsbcs	r4, r3, r4
  48 0044 42F48053 		orr	r3, r2, #4096
  49 0048 1B03     		lsls	r3, r3, #12
  50 004a 9C42     		cmp	r4, r3
  51 004c 24BF     		itt	cs
  52 004e 42F40052 		orrcs	r2, r2, #8192
  53 0052 C3EB0404 		rsbcs	r4, r3, r4
  54 0056 42F40063 		orr	r3, r2, #2048
  55 005a DB02     		lsls	r3, r3, #11
  56 005c 9C42     		cmp	r4, r3
  57 005e 24BF     		itt	cs
ARM GAS  C:\Users\George\AppData\Local\Temp\ccytZWoQ.s 			page 2


  58 0060 42F48052 		orrcs	r2, r2, #4096
  59 0064 C3EB0404 		rsbcs	r4, r3, r4
  60 0068 42F48063 		orr	r3, r2, #1024
  61 006c 9B02     		lsls	r3, r3, #10
  62 006e 9C42     		cmp	r4, r3
  63 0070 24BF     		itt	cs
  64 0072 42F40062 		orrcs	r2, r2, #2048
  65 0076 C3EB0404 		rsbcs	r4, r3, r4
  66 007a 42F40073 		orr	r3, r2, #512
  67 007e 5B02     		lsls	r3, r3, #9
  68 0080 9C42     		cmp	r4, r3
  69 0082 24BF     		itt	cs
  70 0084 42F48062 		orrcs	r2, r2, #1024
  71 0088 C3EB0404 		rsbcs	r4, r3, r4
  72 008c 42F48073 		orr	r3, r2, #256
  73 0090 1B02     		lsls	r3, r3, #8
  74 0092 9C42     		cmp	r4, r3
  75 0094 24BF     		itt	cs
  76 0096 42F40072 		orrcs	r2, r2, #512
  77 009a C3EB0404 		rsbcs	r4, r3, r4
  78 009e 42F08003 		orr	r3, r2, #128
  79 00a2 DB01     		lsls	r3, r3, #7
  80 00a4 9C42     		cmp	r4, r3
  81 00a6 24BF     		itt	cs
  82 00a8 42F48072 		orrcs	r2, r2, #256
  83 00ac C3EB0404 		rsbcs	r4, r3, r4
  84 00b0 42F04003 		orr	r3, r2, #64
  85 00b4 9B01     		lsls	r3, r3, #6
  86 00b6 9C42     		cmp	r4, r3
  87 00b8 24BF     		itt	cs
  88 00ba 42F08002 		orrcs	r2, r2, #128
  89 00be C3EB0404 		rsbcs	r4, r3, r4
  90 00c2 42F02003 		orr	r3, r2, #32
  91 00c6 5B01     		lsls	r3, r3, #5
  92 00c8 9C42     		cmp	r4, r3
  93 00ca 24BF     		itt	cs
  94 00cc 42F04002 		orrcs	r2, r2, #64
  95 00d0 C3EB0404 		rsbcs	r4, r3, r4
  96 00d4 42F01003 		orr	r3, r2, #16
  97 00d8 1B01     		lsls	r3, r3, #4
  98 00da 9C42     		cmp	r4, r3
  99 00dc 24BF     		itt	cs
 100 00de 42F02002 		orrcs	r2, r2, #32
 101 00e2 C3EB0404 		rsbcs	r4, r3, r4
 102 00e6 42F00803 		orr	r3, r2, #8
 103 00ea DB00     		lsls	r3, r3, #3
 104 00ec 9C42     		cmp	r4, r3
 105 00ee 24BF     		itt	cs
 106 00f0 42F01002 		orrcs	r2, r2, #16
 107 00f4 C3EB0404 		rsbcs	r4, r3, r4
 108 00f8 42F00403 		orr	r3, r2, #4
 109 00fc 9B00     		lsls	r3, r3, #2
 110 00fe 9C42     		cmp	r4, r3
 111 0100 24BF     		itt	cs
 112 0102 42F00802 		orrcs	r2, r2, #8
 113 0106 C3EB0404 		rsbcs	r4, r3, r4
 114 010a 42F00203 		orr	r3, r2, #2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccytZWoQ.s 			page 3


 115 010e 5B00     		lsls	r3, r3, #1
 116 0110 9C42     		cmp	r4, r3
 117 0112 24BF     		itt	cs
 118 0114 42F00402 		orrcs	r2, r2, #4
 119 0118 C3EB0404 		rsbcs	r4, r3, r4
 120 011c 42F00103 		orr	r3, r2, #1
 121 0120 9C42     		cmp	r4, r3
 122 0122 28BF     		it	cs
 123 0124 42F00202 		orrcs	r2, r2, #2
 124 0128 5008     		lsrs	r0, r2, #1
 125 012a F0BC     		pop	{r4, r5, r6, r7}
 126 012c 7047     		bx	lr
 127              	.L2:
 128 012e 11F04042 		ands	r2, r1, #-1073741824
 129 0132 03D0     		beq	.L55
 130 0134 F0BC     		pop	{r4, r5, r6, r7}
 131 0136 4FF0FF30 		mov	r0, #-1
 132 013a 7047     		bx	lr
 133              	.L55:
 134 013c B1F1805F 		cmp	r1, #268435456
 135 0140 25BF     		ittet	cs
 136 0142 01F17046 		addcs	r6, r1, #-268435456
 137 0146 4FF0A053 		movcs	r3, #335544320
 138 014a 4FF08063 		movcc	r3, #67108864
 139 014e 0422     		movcs	r2, #4
 140 0150 9E42     		cmp	r6, r3
 141 0152 24BF     		itt	cs
 142 0154 42F00202 		orrcs	r2, r2, #2
 143 0158 C3EB0606 		rsbcs	r6, r3, r6
 144 015c 5300     		lsls	r3, r2, #1
 145 015e 43F00102 		orr	r2, r3, #1
 146 0162 1206     		lsls	r2, r2, #24
 147 0164 9642     		cmp	r6, r2
 148 0166 28BF     		it	cs
 149 0168 43F00203 		orrcs	r3, r3, #2
 150 016c 4FEA4303 		lsl	r3, r3, #1
 151 0170 28BF     		it	cs
 152 0172 C2EB0606 		rsbcs	r6, r2, r6
 153 0176 43F00102 		orr	r2, r3, #1
 154 017a 9205     		lsls	r2, r2, #22
 155 017c 9642     		cmp	r6, r2
 156 017e 28BF     		it	cs
 157 0180 43F00203 		orrcs	r3, r3, #2
 158 0184 4FEA4303 		lsl	r3, r3, #1
 159 0188 28BF     		it	cs
 160 018a C2EB0606 		rsbcs	r6, r2, r6
 161 018e 43F00102 		orr	r2, r3, #1
 162 0192 1205     		lsls	r2, r2, #20
 163 0194 9642     		cmp	r6, r2
 164 0196 28BF     		it	cs
 165 0198 43F00203 		orrcs	r3, r3, #2
 166 019c 4FEA4303 		lsl	r3, r3, #1
 167 01a0 28BF     		it	cs
 168 01a2 C2EB0606 		rsbcs	r6, r2, r6
 169 01a6 43F00102 		orr	r2, r3, #1
 170 01aa 9204     		lsls	r2, r2, #18
 171 01ac 9642     		cmp	r6, r2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccytZWoQ.s 			page 4


 172 01ae 28BF     		it	cs
 173 01b0 43F00203 		orrcs	r3, r3, #2
 174 01b4 4FEA4303 		lsl	r3, r3, #1
 175 01b8 28BF     		it	cs
 176 01ba C2EB0606 		rsbcs	r6, r2, r6
 177 01be 43F00102 		orr	r2, r3, #1
 178 01c2 1204     		lsls	r2, r2, #16
 179 01c4 9642     		cmp	r6, r2
 180 01c6 28BF     		it	cs
 181 01c8 43F00203 		orrcs	r3, r3, #2
 182 01cc 4FEA4303 		lsl	r3, r3, #1
 183 01d0 28BF     		it	cs
 184 01d2 C2EB0606 		rsbcs	r6, r2, r6
 185 01d6 43F00102 		orr	r2, r3, #1
 186 01da 9203     		lsls	r2, r2, #14
 187 01dc 9642     		cmp	r6, r2
 188 01de 28BF     		it	cs
 189 01e0 43F00203 		orrcs	r3, r3, #2
 190 01e4 4FEA4303 		lsl	r3, r3, #1
 191 01e8 28BF     		it	cs
 192 01ea C2EB0606 		rsbcs	r6, r2, r6
 193 01ee 43F00102 		orr	r2, r3, #1
 194 01f2 1203     		lsls	r2, r2, #12
 195 01f4 9642     		cmp	r6, r2
 196 01f6 28BF     		it	cs
 197 01f8 43F00203 		orrcs	r3, r3, #2
 198 01fc 4FEA4303 		lsl	r3, r3, #1
 199 0200 28BF     		it	cs
 200 0202 C2EB0606 		rsbcs	r6, r2, r6
 201 0206 43F00102 		orr	r2, r3, #1
 202 020a 9202     		lsls	r2, r2, #10
 203 020c 9642     		cmp	r6, r2
 204 020e 28BF     		it	cs
 205 0210 43F00203 		orrcs	r3, r3, #2
 206 0214 4FEA4303 		lsl	r3, r3, #1
 207 0218 28BF     		it	cs
 208 021a C2EB0606 		rsbcs	r6, r2, r6
 209 021e 43F00102 		orr	r2, r3, #1
 210 0222 1202     		lsls	r2, r2, #8
 211 0224 9642     		cmp	r6, r2
 212 0226 28BF     		it	cs
 213 0228 43F00203 		orrcs	r3, r3, #2
 214 022c 4FEA4303 		lsl	r3, r3, #1
 215 0230 28BF     		it	cs
 216 0232 C2EB0606 		rsbcs	r6, r2, r6
 217 0236 43F00102 		orr	r2, r3, #1
 218 023a 9201     		lsls	r2, r2, #6
 219 023c 9642     		cmp	r6, r2
 220 023e 28BF     		it	cs
 221 0240 43F00203 		orrcs	r3, r3, #2
 222 0244 4FEA4303 		lsl	r3, r3, #1
 223 0248 28BF     		it	cs
 224 024a C2EB0606 		rsbcs	r6, r2, r6
 225 024e 43F00102 		orr	r2, r3, #1
 226 0252 1201     		lsls	r2, r2, #4
 227 0254 9642     		cmp	r6, r2
 228 0256 28BF     		it	cs
ARM GAS  C:\Users\George\AppData\Local\Temp\ccytZWoQ.s 			page 5


 229 0258 43F00203 		orrcs	r3, r3, #2
 230 025c 4FEA4303 		lsl	r3, r3, #1
 231 0260 28BF     		it	cs
 232 0262 C2EB0606 		rsbcs	r6, r2, r6
 233 0266 43F00102 		orr	r2, r3, #1
 234 026a 9200     		lsls	r2, r2, #2
 235 026c 9642     		cmp	r6, r2
 236 026e 28BF     		it	cs
 237 0270 43F00203 		orrcs	r3, r3, #2
 238 0274 4FEA4303 		lsl	r3, r3, #1
 239 0278 28BF     		it	cs
 240 027a C2EB0606 		rsbcs	r6, r2, r6
 241 027e 43F00102 		orr	r2, r3, #1
 242 0282 9642     		cmp	r6, r2
 243 0284 24BF     		itt	cs
 244 0286 43F00203 		orrcs	r3, r3, #2
 245 028a C2EB0606 		rsbcs	r6, r2, r6
 246 028e 5900     		lsls	r1, r3, #1
 247 0290 3546     		mov	r5, r6
 248 0292 0024     		movs	r4, #0
 249 0294 41F00106 		orr	r6, r1, #1
 250 0298 B308     		lsrs	r3, r6, #2
 251 029a 0443     		orrs	r4, r4, r0
 252 029c B207     		lsls	r2, r6, #30
 253 029e 9D42     		cmp	r5, r3
 254 02a0 08BF     		it eq
 255 02a2 9442     		cmpeq	r4, r2
 256 02a4 04D3     		bcc	.L35
 257 02a6 A41A     		subs	r4, r4, r2
 258 02a8 65EB0305 		sbc	r5, r5, r3
 259 02ac 41F00201 		orr	r1, r1, #2
 260              	.L35:
 261 02b0 4800     		lsls	r0, r1, #1
 262 02b2 40F00101 		orr	r1, r0, #1
 263 02b6 0B09     		lsrs	r3, r1, #4
 264 02b8 0A07     		lsls	r2, r1, #28
 265 02ba 9D42     		cmp	r5, r3
 266 02bc 08BF     		it eq
 267 02be 9442     		cmpeq	r4, r2
 268 02c0 04D3     		bcc	.L36
 269 02c2 A41A     		subs	r4, r4, r2
 270 02c4 65EB0305 		sbc	r5, r5, r3
 271 02c8 40F00200 		orr	r0, r0, #2
 272              	.L36:
 273 02cc 4000     		lsls	r0, r0, #1
 274 02ce 40F00101 		orr	r1, r0, #1
 275 02d2 8B09     		lsrs	r3, r1, #6
 276 02d4 8A06     		lsls	r2, r1, #26
 277 02d6 9D42     		cmp	r5, r3
 278 02d8 08BF     		it eq
 279 02da 9442     		cmpeq	r4, r2
 280 02dc 04D3     		bcc	.L37
 281 02de A41A     		subs	r4, r4, r2
 282 02e0 65EB0305 		sbc	r5, r5, r3
 283 02e4 40F00200 		orr	r0, r0, #2
 284              	.L37:
 285 02e8 4000     		lsls	r0, r0, #1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccytZWoQ.s 			page 6


 286 02ea 40F00101 		orr	r1, r0, #1
 287 02ee 0B0A     		lsrs	r3, r1, #8
 288 02f0 0A06     		lsls	r2, r1, #24
 289 02f2 9D42     		cmp	r5, r3
 290 02f4 08BF     		it eq
 291 02f6 9442     		cmpeq	r4, r2
 292 02f8 04D3     		bcc	.L38
 293 02fa A41A     		subs	r4, r4, r2
 294 02fc 65EB0305 		sbc	r5, r5, r3
 295 0300 40F00200 		orr	r0, r0, #2
 296              	.L38:
 297 0304 4000     		lsls	r0, r0, #1
 298 0306 40F00101 		orr	r1, r0, #1
 299 030a 8B0A     		lsrs	r3, r1, #10
 300 030c 8A05     		lsls	r2, r1, #22
 301 030e 9D42     		cmp	r5, r3
 302 0310 08BF     		it eq
 303 0312 9442     		cmpeq	r4, r2
 304 0314 04D3     		bcc	.L39
 305 0316 A41A     		subs	r4, r4, r2
 306 0318 65EB0305 		sbc	r5, r5, r3
 307 031c 40F00200 		orr	r0, r0, #2
 308              	.L39:
 309 0320 4000     		lsls	r0, r0, #1
 310 0322 40F00101 		orr	r1, r0, #1
 311 0326 0B0B     		lsrs	r3, r1, #12
 312 0328 0A05     		lsls	r2, r1, #20
 313 032a 9D42     		cmp	r5, r3
 314 032c 08BF     		it eq
 315 032e 9442     		cmpeq	r4, r2
 316 0330 04D3     		bcc	.L40
 317 0332 A41A     		subs	r4, r4, r2
 318 0334 65EB0305 		sbc	r5, r5, r3
 319 0338 40F00200 		orr	r0, r0, #2
 320              	.L40:
 321 033c 4000     		lsls	r0, r0, #1
 322 033e 40F00101 		orr	r1, r0, #1
 323 0342 8B0B     		lsrs	r3, r1, #14
 324 0344 8A04     		lsls	r2, r1, #18
 325 0346 9D42     		cmp	r5, r3
 326 0348 08BF     		it eq
 327 034a 9442     		cmpeq	r4, r2
 328 034c 04D3     		bcc	.L41
 329 034e A41A     		subs	r4, r4, r2
 330 0350 65EB0305 		sbc	r5, r5, r3
 331 0354 40F00200 		orr	r0, r0, #2
 332              	.L41:
 333 0358 4000     		lsls	r0, r0, #1
 334 035a 40F00101 		orr	r1, r0, #1
 335 035e 0B0C     		lsrs	r3, r1, #16
 336 0360 0A04     		lsls	r2, r1, #16
 337 0362 9D42     		cmp	r5, r3
 338 0364 08BF     		it eq
 339 0366 9442     		cmpeq	r4, r2
 340 0368 04D3     		bcc	.L42
 341 036a A41A     		subs	r4, r4, r2
 342 036c 65EB0305 		sbc	r5, r5, r3
ARM GAS  C:\Users\George\AppData\Local\Temp\ccytZWoQ.s 			page 7


 343 0370 40F00200 		orr	r0, r0, #2
 344              	.L42:
 345 0374 4000     		lsls	r0, r0, #1
 346 0376 40F00101 		orr	r1, r0, #1
 347 037a 8B0C     		lsrs	r3, r1, #18
 348 037c 8A03     		lsls	r2, r1, #14
 349 037e 9D42     		cmp	r5, r3
 350 0380 08BF     		it eq
 351 0382 9442     		cmpeq	r4, r2
 352 0384 04D3     		bcc	.L43
 353 0386 A41A     		subs	r4, r4, r2
 354 0388 65EB0305 		sbc	r5, r5, r3
 355 038c 40F00200 		orr	r0, r0, #2
 356              	.L43:
 357 0390 4000     		lsls	r0, r0, #1
 358 0392 40F00101 		orr	r1, r0, #1
 359 0396 0B0D     		lsrs	r3, r1, #20
 360 0398 0A03     		lsls	r2, r1, #12
 361 039a 9D42     		cmp	r5, r3
 362 039c 08BF     		it eq
 363 039e 9442     		cmpeq	r4, r2
 364 03a0 04D3     		bcc	.L44
 365 03a2 A41A     		subs	r4, r4, r2
 366 03a4 65EB0305 		sbc	r5, r5, r3
 367 03a8 40F00200 		orr	r0, r0, #2
 368              	.L44:
 369 03ac 4000     		lsls	r0, r0, #1
 370 03ae 40F00101 		orr	r1, r0, #1
 371 03b2 8B0D     		lsrs	r3, r1, #22
 372 03b4 8A02     		lsls	r2, r1, #10
 373 03b6 9D42     		cmp	r5, r3
 374 03b8 08BF     		it eq
 375 03ba 9442     		cmpeq	r4, r2
 376 03bc 04D3     		bcc	.L45
 377 03be A41A     		subs	r4, r4, r2
 378 03c0 65EB0305 		sbc	r5, r5, r3
 379 03c4 40F00200 		orr	r0, r0, #2
 380              	.L45:
 381 03c8 4000     		lsls	r0, r0, #1
 382 03ca 40F00101 		orr	r1, r0, #1
 383 03ce 0B0E     		lsrs	r3, r1, #24
 384 03d0 0A02     		lsls	r2, r1, #8
 385 03d2 9D42     		cmp	r5, r3
 386 03d4 08BF     		it eq
 387 03d6 9442     		cmpeq	r4, r2
 388 03d8 04D3     		bcc	.L46
 389 03da A41A     		subs	r4, r4, r2
 390 03dc 65EB0305 		sbc	r5, r5, r3
 391 03e0 40F00200 		orr	r0, r0, #2
 392              	.L46:
 393 03e4 4000     		lsls	r0, r0, #1
 394 03e6 40F00101 		orr	r1, r0, #1
 395 03ea 8B0E     		lsrs	r3, r1, #26
 396 03ec 8A01     		lsls	r2, r1, #6
 397 03ee 9D42     		cmp	r5, r3
 398 03f0 08BF     		it eq
 399 03f2 9442     		cmpeq	r4, r2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccytZWoQ.s 			page 8


 400 03f4 04D3     		bcc	.L47
 401 03f6 A41A     		subs	r4, r4, r2
 402 03f8 65EB0305 		sbc	r5, r5, r3
 403 03fc 40F00200 		orr	r0, r0, #2
 404              	.L47:
 405 0400 4000     		lsls	r0, r0, #1
 406 0402 40F00101 		orr	r1, r0, #1
 407 0406 0B0F     		lsrs	r3, r1, #28
 408 0408 0A01     		lsls	r2, r1, #4
 409 040a 9D42     		cmp	r5, r3
 410 040c 08BF     		it eq
 411 040e 9442     		cmpeq	r4, r2
 412 0410 04D3     		bcc	.L48
 413 0412 A41A     		subs	r4, r4, r2
 414 0414 65EB0305 		sbc	r5, r5, r3
 415 0418 40F00200 		orr	r0, r0, #2
 416              	.L48:
 417 041c 4000     		lsls	r0, r0, #1
 418 041e 40F00101 		orr	r1, r0, #1
 419 0422 8B0F     		lsrs	r3, r1, #30
 420 0424 8A00     		lsls	r2, r1, #2
 421 0426 9D42     		cmp	r5, r3
 422 0428 08BF     		it eq
 423 042a 9442     		cmpeq	r4, r2
 424 042c 04D3     		bcc	.L49
 425 042e A41A     		subs	r4, r4, r2
 426 0430 65EB0305 		sbc	r5, r5, r3
 427 0434 40F00200 		orr	r0, r0, #2
 428              	.L49:
 429 0438 4000     		lsls	r0, r0, #1
 430 043a 40F00106 		orr	r6, r0, #1
 431 043e 0027     		movs	r7, #0
 432 0440 BD42     		cmp	r5, r7
 433 0442 08BF     		it eq
 434 0444 B442     		cmpeq	r4, r6
 435 0446 28BF     		it	cs
 436 0448 40F00200 		orrcs	r0, r0, #2
 437 044c 4008     		lsrs	r0, r0, #1
 438 044e F0BC     		pop	{r4, r5, r6, r7}
 439 0450 7047     		bx	lr
 440              		.size	_Z7isqrt64y, .-_Z7isqrt64y
 441 0452 00BF     		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 442              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 443              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 444              	_ZL28cpu_irq_prev_interrupt_state:
 445 0000 00       		.space	1
 446              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 447              		.align	2
 448              		.type	_ZL32cpu_irq_critical_section_counter, %object
 449              		.size	_ZL32cpu_irq_critical_section_counter, 4
 450              	_ZL32cpu_irq_critical_section_counter:
 451 0000 00000000 		.space	4
 452              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
