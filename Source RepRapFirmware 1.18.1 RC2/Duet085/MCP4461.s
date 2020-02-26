ARM GAS  C:\Users\George\AppData\Local\Temp\ccIAdzZB.s 			page 1


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
  14              		.file	"MCP4461.cpp"
  15              		.section	.text._ZN7MCP4461C2Ev,"ax",%progbits
  16              		.align	2
  17              		.global	_ZN7MCP4461C2Ev
  18              		.thumb
  19              		.thumb_func
  20              		.type	_ZN7MCP4461C2Ev, %function
  21              	_ZN7MCP4461C2Ev:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 2C23     		movs	r3, #44
  26 0002 0370     		strb	r3, [r0]
  27 0004 7047     		bx	lr
  28              		.size	_ZN7MCP4461C2Ev, .-_ZN7MCP4461C2Ev
  29              		.global	_ZN7MCP4461C1Ev
  30              		.thumb_set _ZN7MCP4461C1Ev,_ZN7MCP4461C2Ev
  31 0006 00BF     		.section	.text._ZN7MCP44615beginEv,"ax",%progbits
  32              		.align	2
  33              		.global	_ZN7MCP44615beginEv
  34              		.thumb
  35              		.thumb_func
  36              		.type	_ZN7MCP44615beginEv, %function
  37              	_ZN7MCP44615beginEv:
  38              		@ args = 0, pretend = 0, frame = 0
  39              		@ frame_needed = 0, uses_anonymous_args = 0
  40              		@ link register save eliminated.
  41 0000 0148     		ldr	r0, .L3
  42 0002 FFF7FEBF 		b	_ZN7TwoWire5beginEv
  43              	.L4:
  44 0006 00BF     		.align	2
  45              	.L3:
  46 0008 00000000 		.word	Wire1
  47              		.size	_ZN7MCP44615beginEv, .-_ZN7MCP44615beginEv
  48              		.section	.text._ZN7MCP446117setMCP4461AddressEh,"ax",%progbits
  49              		.align	2
  50              		.global	_ZN7MCP446117setMCP4461AddressEh
  51              		.thumb
  52              		.thumb_func
  53              		.type	_ZN7MCP446117setMCP4461AddressEh, %function
  54              	_ZN7MCP446117setMCP4461AddressEh:
  55              		@ args = 0, pretend = 0, frame = 0
  56              		@ frame_needed = 0, uses_anonymous_args = 0
  57              		@ link register save eliminated.
ARM GAS  C:\Users\George\AppData\Local\Temp\ccIAdzZB.s 			page 2


  58 0000 0170     		strb	r1, [r0]
  59 0002 7047     		bx	lr
  60              		.size	_ZN7MCP446117setMCP4461AddressEh, .-_ZN7MCP446117setMCP4461AddressEh
  61              		.section	.text._ZN7MCP446116setVolatileWiperEht,"ax",%progbits
  62              		.align	2
  63              		.global	_ZN7MCP446116setVolatileWiperEht
  64              		.thumb
  65              		.thumb_func
  66              		.type	_ZN7MCP446116setVolatileWiperEht, %function
  67              	_ZN7MCP446116setVolatileWiperEht:
  68              		@ args = 0, pretend = 0, frame = 0
  69              		@ frame_needed = 0, uses_anonymous_args = 0
  70 0000 FF2A     		cmp	r2, #255
  71 0002 38B5     		push	{r3, r4, r5, lr}
  72 0004 1AD9     		bls	.L7
  73 0006 0229     		cmp	r1, #2
  74 0008 4FF00005 		mov	r5, #0
  75 000c 4FF00104 		mov	r4, #1
  76 0010 19D0     		beq	.L9
  77              	.L15:
  78 0012 0329     		cmp	r1, #3
  79 0014 1DD0     		beq	.L10
  80 0016 0129     		cmp	r1, #1
  81 0018 18D0     		beq	.L14
  82              	.L8:
  83 001a 0178     		ldrb	r1, [r0]	@ zero_extendqisi2
  84 001c 0E48     		ldr	r0, .L16
  85 001e FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
  86 0022 2146     		mov	r1, r4
  87 0024 0C48     		ldr	r0, .L16
  88 0026 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
  89 002a 2946     		mov	r1, r5
  90 002c 0A48     		ldr	r0, .L16
  91 002e FFF7FEFF 		bl	_ZN7TwoWire5writeEh
  92 0032 BDE83840 		pop	{r3, r4, r5, lr}
  93 0036 0848     		ldr	r0, .L16
  94 0038 FFF7FEBF 		b	_ZN7TwoWire15endTransmissionEv
  95              	.L7:
  96 003c 0229     		cmp	r1, #2
  97 003e D5B2     		uxtb	r5, r2
  98 0040 4FF00004 		mov	r4, #0
  99 0044 E5D1     		bne	.L15
 100              	.L9:
 101 0046 44F06004 		orr	r4, r4, #96
 102 004a E6E7     		b	.L8
 103              	.L14:
 104 004c 44F01004 		orr	r4, r4, #16
 105 0050 E3E7     		b	.L8
 106              	.L10:
 107 0052 44F07004 		orr	r4, r4, #112
 108 0056 E0E7     		b	.L8
 109              	.L17:
 110              		.align	2
 111              	.L16:
 112 0058 00000000 		.word	Wire1
 113              		.size	_ZN7MCP446116setVolatileWiperEht, .-_ZN7MCP446116setVolatileWiperEht
 114              		.section	.text._ZN7MCP446119setNonVolatileWiperEht,"ax",%progbits
ARM GAS  C:\Users\George\AppData\Local\Temp\ccIAdzZB.s 			page 3


 115              		.align	2
 116              		.global	_ZN7MCP446119setNonVolatileWiperEht
 117              		.thumb
 118              		.thumb_func
 119              		.type	_ZN7MCP446119setNonVolatileWiperEht, %function
 120              	_ZN7MCP446119setNonVolatileWiperEht:
 121              		@ args = 0, pretend = 0, frame = 0
 122              		@ frame_needed = 0, uses_anonymous_args = 0
 123 0000 FF2A     		cmp	r2, #255
 124 0002 38B5     		push	{r3, r4, r5, lr}
 125 0004 1DD9     		bls	.L19
 126 0006 0025     		movs	r5, #0
 127 0008 0124     		movs	r4, #1
 128              	.L26:
 129 000a 0329     		cmp	r1, #3
 130 000c 05D8     		bhi	.L20
 131 000e DFE801F0 		tbb	[pc, r1]
 132              	.L22:
 133 0012 02       		.byte	(.L21-.L22)/2
 134 0013 21       		.byte	(.L23-.L22)/2
 135 0014 1E       		.byte	(.L24-.L22)/2
 136 0015 1B       		.byte	(.L25-.L22)/2
 137              		.align	1
 138              	.L21:
 139 0016 44F02004 		orr	r4, r4, #32
 140              	.L20:
 141 001a 0178     		ldrb	r1, [r0]	@ zero_extendqisi2
 142 001c 0F48     		ldr	r0, .L27
 143 001e FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 144 0022 2146     		mov	r1, r4
 145 0024 0D48     		ldr	r0, .L27
 146 0026 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 147 002a 2946     		mov	r1, r5
 148 002c 0B48     		ldr	r0, .L27
 149 002e FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 150 0032 0A48     		ldr	r0, .L27
 151 0034 FFF7FEFF 		bl	_ZN7TwoWire15endTransmissionEv
 152 0038 BDE83840 		pop	{r3, r4, r5, lr}
 153 003c 1420     		movs	r0, #20
 154 003e FFF7FEBF 		b	delay
 155              	.L19:
 156 0042 D5B2     		uxtb	r5, r2
 157 0044 0024     		movs	r4, #0
 158 0046 E0E7     		b	.L26
 159              	.L25:
 160 0048 44F09004 		orr	r4, r4, #144
 161 004c E5E7     		b	.L20
 162              	.L24:
 163 004e 44F08004 		orr	r4, r4, #128
 164 0052 E2E7     		b	.L20
 165              	.L23:
 166 0054 44F03004 		orr	r4, r4, #48
 167 0058 DFE7     		b	.L20
 168              	.L28:
 169 005a 00BF     		.align	2
 170              	.L27:
 171 005c 00000000 		.word	Wire1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccIAdzZB.s 			page 4


 172              		.size	_ZN7MCP446119setNonVolatileWiperEht, .-_ZN7MCP446119setNonVolatileWiperEht
 173              		.section	.text._ZN7MCP446117setVolatileWipersEt,"ax",%progbits
 174              		.align	2
 175              		.global	_ZN7MCP446117setVolatileWipersEt
 176              		.thumb
 177              		.thumb_func
 178              		.type	_ZN7MCP446117setVolatileWipersEt, %function
 179              	_ZN7MCP446117setVolatileWipersEt:
 180              		@ args = 0, pretend = 0, frame = 0
 181              		@ frame_needed = 0, uses_anonymous_args = 0
 182 0000 FF29     		cmp	r1, #255
 183 0002 10B5     		push	{r4, lr}
 184 0004 0C46     		mov	r4, r1
 185 0006 29D9     		bls	.L34
 186 0008 0178     		ldrb	r1, [r0]	@ zero_extendqisi2
 187 000a 2448     		ldr	r0, .L35
 188 000c FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 189 0010 0121     		movs	r1, #1
 190 0012 2248     		ldr	r0, .L35
 191 0014 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 192 0018 0021     		movs	r1, #0
 193 001a 2048     		ldr	r0, .L35
 194 001c FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 195 0020 1121     		movs	r1, #17
 196 0022 1E48     		ldr	r0, .L35
 197 0024 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 198 0028 0021     		movs	r1, #0
 199 002a 1C48     		ldr	r0, .L35
 200 002c FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 201 0030 6121     		movs	r1, #97
 202 0032 1A48     		ldr	r0, .L35
 203 0034 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 204 0038 0021     		movs	r1, #0
 205 003a 1848     		ldr	r0, .L35
 206 003c FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 207 0040 0024     		movs	r4, #0
 208 0042 7121     		movs	r1, #113
 209              	.L32:
 210 0044 1548     		ldr	r0, .L35
 211 0046 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 212 004a 2146     		mov	r1, r4
 213 004c 1348     		ldr	r0, .L35
 214 004e FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 215 0052 BDE81040 		pop	{r4, lr}
 216 0056 1148     		ldr	r0, .L35
 217 0058 FFF7FEBF 		b	_ZN7TwoWire15endTransmissionEv
 218              	.L34:
 219 005c 0178     		ldrb	r1, [r0]	@ zero_extendqisi2
 220 005e 0F48     		ldr	r0, .L35
 221 0060 E4B2     		uxtb	r4, r4
 222 0062 FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 223 0066 0021     		movs	r1, #0
 224 0068 0C48     		ldr	r0, .L35
 225 006a FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 226 006e 2146     		mov	r1, r4
 227 0070 0A48     		ldr	r0, .L35
 228 0072 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
ARM GAS  C:\Users\George\AppData\Local\Temp\ccIAdzZB.s 			page 5


 229 0076 1021     		movs	r1, #16
 230 0078 0848     		ldr	r0, .L35
 231 007a FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 232 007e 2146     		mov	r1, r4
 233 0080 0648     		ldr	r0, .L35
 234 0082 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 235 0086 6021     		movs	r1, #96
 236 0088 0448     		ldr	r0, .L35
 237 008a FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 238 008e 2146     		mov	r1, r4
 239 0090 0248     		ldr	r0, .L35
 240 0092 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 241 0096 7021     		movs	r1, #112
 242 0098 D4E7     		b	.L32
 243              	.L36:
 244 009a 00BF     		.align	2
 245              	.L35:
 246 009c 00000000 		.word	Wire1
 247              		.size	_ZN7MCP446117setVolatileWipersEt, .-_ZN7MCP446117setVolatileWipersEt
 248              		.section	.text._ZN7MCP446120setNonVolatileWipersEt,"ax",%progbits
 249              		.align	2
 250              		.global	_ZN7MCP446120setNonVolatileWipersEt
 251              		.thumb
 252              		.thumb_func
 253              		.type	_ZN7MCP446120setNonVolatileWipersEt, %function
 254              	_ZN7MCP446120setNonVolatileWipersEt:
 255              		@ args = 0, pretend = 0, frame = 0
 256              		@ frame_needed = 0, uses_anonymous_args = 0
 257 0000 FF29     		cmp	r1, #255
 258 0002 10B5     		push	{r4, lr}
 259 0004 0C46     		mov	r4, r1
 260 0006 35D9     		bls	.L42
 261 0008 0178     		ldrb	r1, [r0]	@ zero_extendqisi2
 262 000a 2E48     		ldr	r0, .L43
 263 000c FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 264 0010 2121     		movs	r1, #33
 265 0012 2C48     		ldr	r0, .L43
 266 0014 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 267 0018 0021     		movs	r1, #0
 268 001a 2A48     		ldr	r0, .L43
 269 001c FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 270 0020 1420     		movs	r0, #20
 271 0022 FFF7FEFF 		bl	delay
 272 0026 3121     		movs	r1, #49
 273 0028 2648     		ldr	r0, .L43
 274 002a FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 275 002e 0021     		movs	r1, #0
 276 0030 2448     		ldr	r0, .L43
 277 0032 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 278 0036 1420     		movs	r0, #20
 279 0038 FFF7FEFF 		bl	delay
 280 003c 8121     		movs	r1, #129
 281 003e 2148     		ldr	r0, .L43
 282 0040 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 283 0044 0021     		movs	r1, #0
 284 0046 1F48     		ldr	r0, .L43
 285 0048 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
ARM GAS  C:\Users\George\AppData\Local\Temp\ccIAdzZB.s 			page 6


 286 004c 1420     		movs	r0, #20
 287 004e FFF7FEFF 		bl	delay
 288 0052 0024     		movs	r4, #0
 289 0054 9121     		movs	r1, #145
 290              	.L40:
 291 0056 1B48     		ldr	r0, .L43
 292 0058 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 293 005c 2146     		mov	r1, r4
 294 005e 1948     		ldr	r0, .L43
 295 0060 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 296 0064 1748     		ldr	r0, .L43
 297 0066 FFF7FEFF 		bl	_ZN7TwoWire15endTransmissionEv
 298 006a BDE81040 		pop	{r4, lr}
 299 006e 1420     		movs	r0, #20
 300 0070 FFF7FEBF 		b	delay
 301              	.L42:
 302 0074 0178     		ldrb	r1, [r0]	@ zero_extendqisi2
 303 0076 1348     		ldr	r0, .L43
 304 0078 E4B2     		uxtb	r4, r4
 305 007a FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 306 007e 2021     		movs	r1, #32
 307 0080 1048     		ldr	r0, .L43
 308 0082 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 309 0086 2146     		mov	r1, r4
 310 0088 0E48     		ldr	r0, .L43
 311 008a FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 312 008e 1420     		movs	r0, #20
 313 0090 FFF7FEFF 		bl	delay
 314 0094 3021     		movs	r1, #48
 315 0096 0B48     		ldr	r0, .L43
 316 0098 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 317 009c 2146     		mov	r1, r4
 318 009e 0948     		ldr	r0, .L43
 319 00a0 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 320 00a4 1420     		movs	r0, #20
 321 00a6 FFF7FEFF 		bl	delay
 322 00aa 8021     		movs	r1, #128
 323 00ac 0548     		ldr	r0, .L43
 324 00ae FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 325 00b2 2146     		mov	r1, r4
 326 00b4 0348     		ldr	r0, .L43
 327 00b6 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 328 00ba 1420     		movs	r0, #20
 329 00bc FFF7FEFF 		bl	delay
 330 00c0 9021     		movs	r1, #144
 331 00c2 C8E7     		b	.L40
 332              	.L44:
 333              		.align	2
 334              	.L43:
 335 00c4 00000000 		.word	Wire1
 336              		.size	_ZN7MCP446120setNonVolatileWipersEt, .-_ZN7MCP446120setNonVolatileWipersEt
 337              		.section	.text._ZN7MCP446119getNonVolatileWiperEh,"ax",%progbits
 338              		.align	2
 339              		.global	_ZN7MCP446119getNonVolatileWiperEh
 340              		.thumb
 341              		.thumb_func
 342              		.type	_ZN7MCP446119getNonVolatileWiperEh, %function
ARM GAS  C:\Users\George\AppData\Local\Temp\ccIAdzZB.s 			page 7


 343              	_ZN7MCP446119getNonVolatileWiperEh:
 344              		@ args = 0, pretend = 0, frame = 0
 345              		@ frame_needed = 0, uses_anonymous_args = 0
 346 0000 38B5     		push	{r3, r4, r5, lr}
 347 0002 0446     		mov	r4, r0
 348 0004 0329     		cmp	r1, #3
 349 0006 2ED8     		bhi	.L55
 350 0008 DFE801F0 		tbb	[pc, r1]
 351              	.L48:
 352 000c 27       		.byte	(.L47-.L48)/2
 353 000d 02       		.byte	(.L56-.L48)/2
 354 000e 2B       		.byte	(.L50-.L48)/2
 355 000f 29       		.byte	(.L51-.L48)/2
 356              		.align	1
 357              	.L56:
 358 0010 3C25     		movs	r5, #60
 359              	.L49:
 360 0012 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 361 0014 1548     		ldr	r0, .L57
 362 0016 FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 363 001a 2946     		mov	r1, r5
 364 001c 1348     		ldr	r0, .L57
 365 001e FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 366 0022 0021     		movs	r1, #0
 367 0024 1148     		ldr	r0, .L57
 368 0026 FFF7FEFF 		bl	_ZN7TwoWire15endTransmissionEh
 369 002a 0025     		movs	r5, #0
 370 002c 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 371 002e 0F48     		ldr	r0, .L57
 372 0030 0222     		movs	r2, #2
 373 0032 FFF7FEFF 		bl	_ZN7TwoWire11requestFromEhh
 374 0036 2C46     		mov	r4, r5
 375 0038 08E0     		b	.L52
 376              	.L54:
 377 003a 0C48     		ldr	r0, .L57
 378 003c FFF7FEFF 		bl	_ZN7TwoWire4readEv
 379 0040 2043     		orrs	r0, r0, r4
 380 0042 84B2     		uxth	r4, r0
 381 0044 2302     		lsls	r3, r4, #8
 382 0046 05B9     		cbnz	r5, .L53
 383 0048 9CB2     		uxth	r4, r3
 384              	.L53:
 385 004a 0135     		adds	r5, r5, #1
 386              	.L52:
 387 004c 0748     		ldr	r0, .L57
 388 004e FFF7FEFF 		bl	_ZN7TwoWire9availableEv
 389 0052 0028     		cmp	r0, #0
 390 0054 F1D1     		bne	.L54
 391 0056 2046     		mov	r0, r4
 392 0058 38BD     		pop	{r3, r4, r5, pc}
 393              	.L47:
 394 005a 2C25     		movs	r5, #44
 395 005c D9E7     		b	.L49
 396              	.L51:
 397 005e 9C25     		movs	r5, #156
 398 0060 D7E7     		b	.L49
 399              	.L50:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccIAdzZB.s 			page 8


 400 0062 8C25     		movs	r5, #140
 401 0064 D5E7     		b	.L49
 402              	.L55:
 403 0066 0020     		movs	r0, #0
 404 0068 38BD     		pop	{r3, r4, r5, pc}
 405              	.L58:
 406 006a 00BF     		.align	2
 407              	.L57:
 408 006c 00000000 		.word	Wire1
 409              		.size	_ZN7MCP446119getNonVolatileWiperEh, .-_ZN7MCP446119getNonVolatileWiperEh
 410              		.section	.text._ZN7MCP446116getVolatileWiperEh,"ax",%progbits
 411              		.align	2
 412              		.global	_ZN7MCP446116getVolatileWiperEh
 413              		.thumb
 414              		.thumb_func
 415              		.type	_ZN7MCP446116getVolatileWiperEh, %function
 416              	_ZN7MCP446116getVolatileWiperEh:
 417              		@ args = 0, pretend = 0, frame = 0
 418              		@ frame_needed = 0, uses_anonymous_args = 0
 419 0000 38B5     		push	{r3, r4, r5, lr}
 420 0002 0446     		mov	r4, r0
 421 0004 0329     		cmp	r1, #3
 422 0006 2ED8     		bhi	.L69
 423 0008 DFE801F0 		tbb	[pc, r1]
 424              	.L62:
 425 000c 27       		.byte	(.L61-.L62)/2
 426 000d 02       		.byte	(.L70-.L62)/2
 427 000e 2B       		.byte	(.L64-.L62)/2
 428 000f 29       		.byte	(.L65-.L62)/2
 429              		.align	1
 430              	.L70:
 431 0010 1C25     		movs	r5, #28
 432              	.L63:
 433 0012 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 434 0014 1548     		ldr	r0, .L71
 435 0016 FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 436 001a 2946     		mov	r1, r5
 437 001c 1348     		ldr	r0, .L71
 438 001e FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 439 0022 0021     		movs	r1, #0
 440 0024 1148     		ldr	r0, .L71
 441 0026 FFF7FEFF 		bl	_ZN7TwoWire15endTransmissionEh
 442 002a 0025     		movs	r5, #0
 443 002c 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 444 002e 0F48     		ldr	r0, .L71
 445 0030 0222     		movs	r2, #2
 446 0032 FFF7FEFF 		bl	_ZN7TwoWire11requestFromEhh
 447 0036 2C46     		mov	r4, r5
 448 0038 08E0     		b	.L66
 449              	.L68:
 450 003a 0C48     		ldr	r0, .L71
 451 003c FFF7FEFF 		bl	_ZN7TwoWire4readEv
 452 0040 2043     		orrs	r0, r0, r4
 453 0042 84B2     		uxth	r4, r0
 454 0044 2302     		lsls	r3, r4, #8
 455 0046 05B9     		cbnz	r5, .L67
 456 0048 9CB2     		uxth	r4, r3
ARM GAS  C:\Users\George\AppData\Local\Temp\ccIAdzZB.s 			page 9


 457              	.L67:
 458 004a 0135     		adds	r5, r5, #1
 459              	.L66:
 460 004c 0748     		ldr	r0, .L71
 461 004e FFF7FEFF 		bl	_ZN7TwoWire9availableEv
 462 0052 0028     		cmp	r0, #0
 463 0054 F1D1     		bne	.L68
 464 0056 2046     		mov	r0, r4
 465 0058 38BD     		pop	{r3, r4, r5, pc}
 466              	.L61:
 467 005a 0C25     		movs	r5, #12
 468 005c D9E7     		b	.L63
 469              	.L65:
 470 005e 7C25     		movs	r5, #124
 471 0060 D7E7     		b	.L63
 472              	.L64:
 473 0062 6C25     		movs	r5, #108
 474 0064 D5E7     		b	.L63
 475              	.L69:
 476 0066 0020     		movs	r0, #0
 477 0068 38BD     		pop	{r3, r4, r5, pc}
 478              	.L72:
 479 006a 00BF     		.align	2
 480              	.L71:
 481 006c 00000000 		.word	Wire1
 482              		.size	_ZN7MCP446116getVolatileWiperEh, .-_ZN7MCP446116getVolatileWiperEh
 483              		.section	.text._ZN7MCP44619getStatusEv,"ax",%progbits
 484              		.align	2
 485              		.global	_ZN7MCP44619getStatusEv
 486              		.thumb
 487              		.thumb_func
 488              		.type	_ZN7MCP44619getStatusEv, %function
 489              	_ZN7MCP44619getStatusEv:
 490              		@ args = 0, pretend = 0, frame = 0
 491              		@ frame_needed = 0, uses_anonymous_args = 0
 492 0000 38B5     		push	{r3, r4, r5, lr}
 493 0002 0446     		mov	r4, r0
 494 0004 0178     		ldrb	r1, [r0]	@ zero_extendqisi2
 495 0006 1148     		ldr	r0, .L77
 496 0008 FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 497 000c 5C21     		movs	r1, #92
 498 000e 0F48     		ldr	r0, .L77
 499 0010 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 500 0014 0021     		movs	r1, #0
 501 0016 0D48     		ldr	r0, .L77
 502 0018 FFF7FEFF 		bl	_ZN7TwoWire15endTransmissionEh
 503 001c 0025     		movs	r5, #0
 504 001e 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 505 0020 0A48     		ldr	r0, .L77
 506 0022 0222     		movs	r2, #2
 507 0024 FFF7FEFF 		bl	_ZN7TwoWire11requestFromEhh
 508 0028 2C46     		mov	r4, r5
 509 002a 08E0     		b	.L74
 510              	.L76:
 511 002c 0748     		ldr	r0, .L77
 512 002e FFF7FEFF 		bl	_ZN7TwoWire4readEv
 513 0032 2043     		orrs	r0, r0, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccIAdzZB.s 			page 10


 514 0034 84B2     		uxth	r4, r0
 515 0036 2302     		lsls	r3, r4, #8
 516 0038 05B9     		cbnz	r5, .L75
 517 003a 9CB2     		uxth	r4, r3
 518              	.L75:
 519 003c 0135     		adds	r5, r5, #1
 520              	.L74:
 521 003e 0348     		ldr	r0, .L77
 522 0040 FFF7FEFF 		bl	_ZN7TwoWire9availableEv
 523 0044 0028     		cmp	r0, #0
 524 0046 F1D1     		bne	.L76
 525 0048 2046     		mov	r0, r4
 526 004a 38BD     		pop	{r3, r4, r5, pc}
 527              	.L78:
 528              		.align	2
 529              	.L77:
 530 004c 00000000 		.word	Wire1
 531              		.size	_ZN7MCP44619getStatusEv, .-_ZN7MCP44619getStatusEv
 532              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 533              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 534              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 535              	_ZL28cpu_irq_prev_interrupt_state:
 536 0000 00       		.space	1
 537              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 538              		.align	2
 539              		.type	_ZL32cpu_irq_critical_section_counter, %object
 540              		.size	_ZL32cpu_irq_critical_section_counter, 4
 541              	_ZL32cpu_irq_critical_section_counter:
 542 0000 00000000 		.space	4
 543              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
