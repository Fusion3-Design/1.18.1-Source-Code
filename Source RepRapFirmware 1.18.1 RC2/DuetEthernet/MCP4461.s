ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0ZaloD.s 			page 1


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
  15              		.file	"MCP4461.cpp"
  16              		.section	.text._ZN7MCP4461C2Ev,"ax",%progbits
  17              		.align	2
  18              		.global	_ZN7MCP4461C2Ev
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN7MCP4461C2Ev, %function
  22              	_ZN7MCP4461C2Ev:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 2C23     		movs	r3, #44
  27 0002 0370     		strb	r3, [r0]
  28 0004 7047     		bx	lr
  29              		.size	_ZN7MCP4461C2Ev, .-_ZN7MCP4461C2Ev
  30              		.global	_ZN7MCP4461C1Ev
  31              		.thumb_set _ZN7MCP4461C1Ev,_ZN7MCP4461C2Ev
  32 0006 00BF     		.section	.text._ZN7MCP44615beginEv,"ax",%progbits
  33              		.align	2
  34              		.global	_ZN7MCP44615beginEv
  35              		.thumb
  36              		.thumb_func
  37              		.type	_ZN7MCP44615beginEv, %function
  38              	_ZN7MCP44615beginEv:
  39              		@ args = 0, pretend = 0, frame = 0
  40              		@ frame_needed = 0, uses_anonymous_args = 0
  41              		@ link register save eliminated.
  42 0000 0148     		ldr	r0, .L3
  43 0002 FFF7FEBF 		b	_ZN7TwoWire5beginEv
  44              	.L4:
  45 0006 00BF     		.align	2
  46              	.L3:
  47 0008 00000000 		.word	Wire
  48              		.size	_ZN7MCP44615beginEv, .-_ZN7MCP44615beginEv
  49              		.section	.text._ZN7MCP446117setMCP4461AddressEh,"ax",%progbits
  50              		.align	2
  51              		.global	_ZN7MCP446117setMCP4461AddressEh
  52              		.thumb
  53              		.thumb_func
  54              		.type	_ZN7MCP446117setMCP4461AddressEh, %function
  55              	_ZN7MCP446117setMCP4461AddressEh:
  56              		@ args = 0, pretend = 0, frame = 0
  57              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0ZaloD.s 			page 2


  58              		@ link register save eliminated.
  59 0000 0170     		strb	r1, [r0]
  60 0002 7047     		bx	lr
  61              		.size	_ZN7MCP446117setMCP4461AddressEh, .-_ZN7MCP446117setMCP4461AddressEh
  62              		.section	.text._ZN7MCP446116setVolatileWiperEht,"ax",%progbits
  63              		.align	2
  64              		.global	_ZN7MCP446116setVolatileWiperEht
  65              		.thumb
  66              		.thumb_func
  67              		.type	_ZN7MCP446116setVolatileWiperEht, %function
  68              	_ZN7MCP446116setVolatileWiperEht:
  69              		@ args = 0, pretend = 0, frame = 0
  70              		@ frame_needed = 0, uses_anonymous_args = 0
  71 0000 FF2A     		cmp	r2, #255
  72 0002 38B5     		push	{r3, r4, r5, lr}
  73 0004 1AD9     		bls	.L7
  74 0006 0229     		cmp	r1, #2
  75 0008 4FF00005 		mov	r5, #0
  76 000c 4FF00104 		mov	r4, #1
  77 0010 19D0     		beq	.L9
  78              	.L15:
  79 0012 0329     		cmp	r1, #3
  80 0014 1DD0     		beq	.L10
  81 0016 0129     		cmp	r1, #1
  82 0018 18D0     		beq	.L14
  83              	.L8:
  84 001a 0178     		ldrb	r1, [r0]	@ zero_extendqisi2
  85 001c 0E48     		ldr	r0, .L16
  86 001e FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
  87 0022 2146     		mov	r1, r4
  88 0024 0C48     		ldr	r0, .L16
  89 0026 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
  90 002a 2946     		mov	r1, r5
  91 002c 0A48     		ldr	r0, .L16
  92 002e FFF7FEFF 		bl	_ZN7TwoWire5writeEh
  93 0032 0948     		ldr	r0, .L16
  94 0034 BDE83840 		pop	{r3, r4, r5, lr}
  95 0038 FFF7FEBF 		b	_ZN7TwoWire15endTransmissionEv
  96              	.L7:
  97 003c 0229     		cmp	r1, #2
  98 003e D5B2     		uxtb	r5, r2
  99 0040 4FF00004 		mov	r4, #0
 100 0044 E5D1     		bne	.L15
 101              	.L9:
 102 0046 44F06004 		orr	r4, r4, #96
 103 004a E6E7     		b	.L8
 104              	.L14:
 105 004c 44F01004 		orr	r4, r4, #16
 106 0050 E3E7     		b	.L8
 107              	.L10:
 108 0052 44F07004 		orr	r4, r4, #112
 109 0056 E0E7     		b	.L8
 110              	.L17:
 111              		.align	2
 112              	.L16:
 113 0058 00000000 		.word	Wire
 114              		.size	_ZN7MCP446116setVolatileWiperEht, .-_ZN7MCP446116setVolatileWiperEht
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0ZaloD.s 			page 3


 115              		.section	.text._ZN7MCP446119setNonVolatileWiperEht,"ax",%progbits
 116              		.align	2
 117              		.global	_ZN7MCP446119setNonVolatileWiperEht
 118              		.thumb
 119              		.thumb_func
 120              		.type	_ZN7MCP446119setNonVolatileWiperEht, %function
 121              	_ZN7MCP446119setNonVolatileWiperEht:
 122              		@ args = 0, pretend = 0, frame = 0
 123              		@ frame_needed = 0, uses_anonymous_args = 0
 124 0000 FF2A     		cmp	r2, #255
 125 0002 38B5     		push	{r3, r4, r5, lr}
 126 0004 1DD9     		bls	.L19
 127 0006 0025     		movs	r5, #0
 128 0008 0124     		movs	r4, #1
 129              	.L26:
 130 000a 0329     		cmp	r1, #3
 131 000c 05D8     		bhi	.L20
 132 000e DFE801F0 		tbb	[pc, r1]
 133              	.L22:
 134 0012 02       		.byte	(.L21-.L22)/2
 135 0013 21       		.byte	(.L23-.L22)/2
 136 0014 1E       		.byte	(.L24-.L22)/2
 137 0015 1B       		.byte	(.L25-.L22)/2
 138              		.align	1
 139              	.L21:
 140 0016 44F02004 		orr	r4, r4, #32
 141              	.L20:
 142 001a 0178     		ldrb	r1, [r0]	@ zero_extendqisi2
 143 001c 0F48     		ldr	r0, .L27
 144 001e FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 145 0022 2146     		mov	r1, r4
 146 0024 0D48     		ldr	r0, .L27
 147 0026 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 148 002a 2946     		mov	r1, r5
 149 002c 0B48     		ldr	r0, .L27
 150 002e FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 151 0032 0A48     		ldr	r0, .L27
 152 0034 FFF7FEFF 		bl	_ZN7TwoWire15endTransmissionEv
 153 0038 1420     		movs	r0, #20
 154 003a BDE83840 		pop	{r3, r4, r5, lr}
 155 003e FFF7FEBF 		b	delay
 156              	.L19:
 157 0042 D5B2     		uxtb	r5, r2
 158 0044 0024     		movs	r4, #0
 159 0046 E0E7     		b	.L26
 160              	.L25:
 161 0048 44F09004 		orr	r4, r4, #144
 162 004c E5E7     		b	.L20
 163              	.L24:
 164 004e 44F08004 		orr	r4, r4, #128
 165 0052 E2E7     		b	.L20
 166              	.L23:
 167 0054 44F03004 		orr	r4, r4, #48
 168 0058 DFE7     		b	.L20
 169              	.L28:
 170 005a 00BF     		.align	2
 171              	.L27:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0ZaloD.s 			page 4


 172 005c 00000000 		.word	Wire
 173              		.size	_ZN7MCP446119setNonVolatileWiperEht, .-_ZN7MCP446119setNonVolatileWiperEht
 174              		.section	.text._ZN7MCP446117setVolatileWipersEt,"ax",%progbits
 175              		.align	2
 176              		.global	_ZN7MCP446117setVolatileWipersEt
 177              		.thumb
 178              		.thumb_func
 179              		.type	_ZN7MCP446117setVolatileWipersEt, %function
 180              	_ZN7MCP446117setVolatileWipersEt:
 181              		@ args = 0, pretend = 0, frame = 0
 182              		@ frame_needed = 0, uses_anonymous_args = 0
 183 0000 FF29     		cmp	r1, #255
 184 0002 10B5     		push	{r4, lr}
 185 0004 0C46     		mov	r4, r1
 186 0006 29D9     		bls	.L34
 187 0008 0178     		ldrb	r1, [r0]	@ zero_extendqisi2
 188 000a 2448     		ldr	r0, .L35
 189 000c FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 190 0010 0121     		movs	r1, #1
 191 0012 2248     		ldr	r0, .L35
 192 0014 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 193 0018 0021     		movs	r1, #0
 194 001a 2048     		ldr	r0, .L35
 195 001c FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 196 0020 1121     		movs	r1, #17
 197 0022 1E48     		ldr	r0, .L35
 198 0024 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 199 0028 0021     		movs	r1, #0
 200 002a 1C48     		ldr	r0, .L35
 201 002c FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 202 0030 6121     		movs	r1, #97
 203 0032 1A48     		ldr	r0, .L35
 204 0034 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 205 0038 0021     		movs	r1, #0
 206 003a 1848     		ldr	r0, .L35
 207 003c FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 208 0040 0024     		movs	r4, #0
 209 0042 7121     		movs	r1, #113
 210              	.L32:
 211 0044 1548     		ldr	r0, .L35
 212 0046 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 213 004a 2146     		mov	r1, r4
 214 004c 1348     		ldr	r0, .L35
 215 004e FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 216 0052 1248     		ldr	r0, .L35
 217 0054 BDE81040 		pop	{r4, lr}
 218 0058 FFF7FEBF 		b	_ZN7TwoWire15endTransmissionEv
 219              	.L34:
 220 005c 0178     		ldrb	r1, [r0]	@ zero_extendqisi2
 221 005e 0F48     		ldr	r0, .L35
 222 0060 E4B2     		uxtb	r4, r4
 223 0062 FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 224 0066 0021     		movs	r1, #0
 225 0068 0C48     		ldr	r0, .L35
 226 006a FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 227 006e 2146     		mov	r1, r4
 228 0070 0A48     		ldr	r0, .L35
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0ZaloD.s 			page 5


 229 0072 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 230 0076 1021     		movs	r1, #16
 231 0078 0848     		ldr	r0, .L35
 232 007a FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 233 007e 2146     		mov	r1, r4
 234 0080 0648     		ldr	r0, .L35
 235 0082 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 236 0086 6021     		movs	r1, #96
 237 0088 0448     		ldr	r0, .L35
 238 008a FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 239 008e 2146     		mov	r1, r4
 240 0090 0248     		ldr	r0, .L35
 241 0092 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 242 0096 7021     		movs	r1, #112
 243 0098 D4E7     		b	.L32
 244              	.L36:
 245 009a 00BF     		.align	2
 246              	.L35:
 247 009c 00000000 		.word	Wire
 248              		.size	_ZN7MCP446117setVolatileWipersEt, .-_ZN7MCP446117setVolatileWipersEt
 249              		.section	.text._ZN7MCP446120setNonVolatileWipersEt,"ax",%progbits
 250              		.align	2
 251              		.global	_ZN7MCP446120setNonVolatileWipersEt
 252              		.thumb
 253              		.thumb_func
 254              		.type	_ZN7MCP446120setNonVolatileWipersEt, %function
 255              	_ZN7MCP446120setNonVolatileWipersEt:
 256              		@ args = 0, pretend = 0, frame = 0
 257              		@ frame_needed = 0, uses_anonymous_args = 0
 258 0000 FF29     		cmp	r1, #255
 259 0002 10B5     		push	{r4, lr}
 260 0004 0C46     		mov	r4, r1
 261 0006 35D9     		bls	.L42
 262 0008 0178     		ldrb	r1, [r0]	@ zero_extendqisi2
 263 000a 2E48     		ldr	r0, .L43
 264 000c FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 265 0010 2121     		movs	r1, #33
 266 0012 2C48     		ldr	r0, .L43
 267 0014 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 268 0018 0021     		movs	r1, #0
 269 001a 2A48     		ldr	r0, .L43
 270 001c FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 271 0020 1420     		movs	r0, #20
 272 0022 FFF7FEFF 		bl	delay
 273 0026 3121     		movs	r1, #49
 274 0028 2648     		ldr	r0, .L43
 275 002a FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 276 002e 0021     		movs	r1, #0
 277 0030 2448     		ldr	r0, .L43
 278 0032 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 279 0036 1420     		movs	r0, #20
 280 0038 FFF7FEFF 		bl	delay
 281 003c 8121     		movs	r1, #129
 282 003e 2148     		ldr	r0, .L43
 283 0040 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 284 0044 0021     		movs	r1, #0
 285 0046 1F48     		ldr	r0, .L43
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0ZaloD.s 			page 6


 286 0048 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 287 004c 1420     		movs	r0, #20
 288 004e FFF7FEFF 		bl	delay
 289 0052 0024     		movs	r4, #0
 290 0054 9121     		movs	r1, #145
 291              	.L40:
 292 0056 1B48     		ldr	r0, .L43
 293 0058 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 294 005c 2146     		mov	r1, r4
 295 005e 1948     		ldr	r0, .L43
 296 0060 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 297 0064 1748     		ldr	r0, .L43
 298 0066 FFF7FEFF 		bl	_ZN7TwoWire15endTransmissionEv
 299 006a 1420     		movs	r0, #20
 300 006c BDE81040 		pop	{r4, lr}
 301 0070 FFF7FEBF 		b	delay
 302              	.L42:
 303 0074 0178     		ldrb	r1, [r0]	@ zero_extendqisi2
 304 0076 1348     		ldr	r0, .L43
 305 0078 E4B2     		uxtb	r4, r4
 306 007a FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 307 007e 2021     		movs	r1, #32
 308 0080 1048     		ldr	r0, .L43
 309 0082 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 310 0086 2146     		mov	r1, r4
 311 0088 0E48     		ldr	r0, .L43
 312 008a FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 313 008e 1420     		movs	r0, #20
 314 0090 FFF7FEFF 		bl	delay
 315 0094 3021     		movs	r1, #48
 316 0096 0B48     		ldr	r0, .L43
 317 0098 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 318 009c 2146     		mov	r1, r4
 319 009e 0948     		ldr	r0, .L43
 320 00a0 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 321 00a4 1420     		movs	r0, #20
 322 00a6 FFF7FEFF 		bl	delay
 323 00aa 8021     		movs	r1, #128
 324 00ac 0548     		ldr	r0, .L43
 325 00ae FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 326 00b2 2146     		mov	r1, r4
 327 00b4 0348     		ldr	r0, .L43
 328 00b6 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 329 00ba 1420     		movs	r0, #20
 330 00bc FFF7FEFF 		bl	delay
 331 00c0 9021     		movs	r1, #144
 332 00c2 C8E7     		b	.L40
 333              	.L44:
 334              		.align	2
 335              	.L43:
 336 00c4 00000000 		.word	Wire
 337              		.size	_ZN7MCP446120setNonVolatileWipersEt, .-_ZN7MCP446120setNonVolatileWipersEt
 338              		.section	.text._ZN7MCP446119getNonVolatileWiperEh,"ax",%progbits
 339              		.align	2
 340              		.global	_ZN7MCP446119getNonVolatileWiperEh
 341              		.thumb
 342              		.thumb_func
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0ZaloD.s 			page 7


 343              		.type	_ZN7MCP446119getNonVolatileWiperEh, %function
 344              	_ZN7MCP446119getNonVolatileWiperEh:
 345              		@ args = 0, pretend = 0, frame = 0
 346              		@ frame_needed = 0, uses_anonymous_args = 0
 347 0000 38B5     		push	{r3, r4, r5, lr}
 348 0002 0446     		mov	r4, r0
 349 0004 0329     		cmp	r1, #3
 350 0006 2ED8     		bhi	.L55
 351 0008 DFE801F0 		tbb	[pc, r1]
 352              	.L48:
 353 000c 27       		.byte	(.L47-.L48)/2
 354 000d 02       		.byte	(.L56-.L48)/2
 355 000e 2B       		.byte	(.L50-.L48)/2
 356 000f 29       		.byte	(.L51-.L48)/2
 357              		.align	1
 358              	.L56:
 359 0010 3C25     		movs	r5, #60
 360              	.L49:
 361 0012 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 362 0014 1548     		ldr	r0, .L57
 363 0016 FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 364 001a 2946     		mov	r1, r5
 365 001c 1348     		ldr	r0, .L57
 366 001e FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 367 0022 0021     		movs	r1, #0
 368 0024 1148     		ldr	r0, .L57
 369 0026 FFF7FEFF 		bl	_ZN7TwoWire15endTransmissionEh
 370 002a 0025     		movs	r5, #0
 371 002c 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 372 002e 0F48     		ldr	r0, .L57
 373 0030 0222     		movs	r2, #2
 374 0032 FFF7FEFF 		bl	_ZN7TwoWire11requestFromEhh
 375 0036 2C46     		mov	r4, r5
 376 0038 08E0     		b	.L52
 377              	.L54:
 378 003a 0C48     		ldr	r0, .L57
 379 003c FFF7FEFF 		bl	_ZN7TwoWire4readEv
 380 0040 2043     		orrs	r0, r0, r4
 381 0042 84B2     		uxth	r4, r0
 382 0044 2302     		lsls	r3, r4, #8
 383 0046 05B9     		cbnz	r5, .L53
 384 0048 9CB2     		uxth	r4, r3
 385              	.L53:
 386 004a 0135     		adds	r5, r5, #1
 387              	.L52:
 388 004c 0748     		ldr	r0, .L57
 389 004e FFF7FEFF 		bl	_ZN7TwoWire9availableEv
 390 0052 0028     		cmp	r0, #0
 391 0054 F1D1     		bne	.L54
 392 0056 2046     		mov	r0, r4
 393 0058 38BD     		pop	{r3, r4, r5, pc}
 394              	.L47:
 395 005a 2C25     		movs	r5, #44
 396 005c D9E7     		b	.L49
 397              	.L51:
 398 005e 9C25     		movs	r5, #156
 399 0060 D7E7     		b	.L49
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0ZaloD.s 			page 8


 400              	.L50:
 401 0062 8C25     		movs	r5, #140
 402 0064 D5E7     		b	.L49
 403              	.L55:
 404 0066 0020     		movs	r0, #0
 405 0068 38BD     		pop	{r3, r4, r5, pc}
 406              	.L58:
 407 006a 00BF     		.align	2
 408              	.L57:
 409 006c 00000000 		.word	Wire
 410              		.size	_ZN7MCP446119getNonVolatileWiperEh, .-_ZN7MCP446119getNonVolatileWiperEh
 411              		.section	.text._ZN7MCP446116getVolatileWiperEh,"ax",%progbits
 412              		.align	2
 413              		.global	_ZN7MCP446116getVolatileWiperEh
 414              		.thumb
 415              		.thumb_func
 416              		.type	_ZN7MCP446116getVolatileWiperEh, %function
 417              	_ZN7MCP446116getVolatileWiperEh:
 418              		@ args = 0, pretend = 0, frame = 0
 419              		@ frame_needed = 0, uses_anonymous_args = 0
 420 0000 38B5     		push	{r3, r4, r5, lr}
 421 0002 0446     		mov	r4, r0
 422 0004 0329     		cmp	r1, #3
 423 0006 2ED8     		bhi	.L69
 424 0008 DFE801F0 		tbb	[pc, r1]
 425              	.L62:
 426 000c 27       		.byte	(.L61-.L62)/2
 427 000d 02       		.byte	(.L70-.L62)/2
 428 000e 2B       		.byte	(.L64-.L62)/2
 429 000f 29       		.byte	(.L65-.L62)/2
 430              		.align	1
 431              	.L70:
 432 0010 1C25     		movs	r5, #28
 433              	.L63:
 434 0012 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 435 0014 1548     		ldr	r0, .L71
 436 0016 FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 437 001a 2946     		mov	r1, r5
 438 001c 1348     		ldr	r0, .L71
 439 001e FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 440 0022 0021     		movs	r1, #0
 441 0024 1148     		ldr	r0, .L71
 442 0026 FFF7FEFF 		bl	_ZN7TwoWire15endTransmissionEh
 443 002a 0025     		movs	r5, #0
 444 002c 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 445 002e 0F48     		ldr	r0, .L71
 446 0030 0222     		movs	r2, #2
 447 0032 FFF7FEFF 		bl	_ZN7TwoWire11requestFromEhh
 448 0036 2C46     		mov	r4, r5
 449 0038 08E0     		b	.L66
 450              	.L68:
 451 003a 0C48     		ldr	r0, .L71
 452 003c FFF7FEFF 		bl	_ZN7TwoWire4readEv
 453 0040 2043     		orrs	r0, r0, r4
 454 0042 84B2     		uxth	r4, r0
 455 0044 2302     		lsls	r3, r4, #8
 456 0046 05B9     		cbnz	r5, .L67
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0ZaloD.s 			page 9


 457 0048 9CB2     		uxth	r4, r3
 458              	.L67:
 459 004a 0135     		adds	r5, r5, #1
 460              	.L66:
 461 004c 0748     		ldr	r0, .L71
 462 004e FFF7FEFF 		bl	_ZN7TwoWire9availableEv
 463 0052 0028     		cmp	r0, #0
 464 0054 F1D1     		bne	.L68
 465 0056 2046     		mov	r0, r4
 466 0058 38BD     		pop	{r3, r4, r5, pc}
 467              	.L61:
 468 005a 0C25     		movs	r5, #12
 469 005c D9E7     		b	.L63
 470              	.L65:
 471 005e 7C25     		movs	r5, #124
 472 0060 D7E7     		b	.L63
 473              	.L64:
 474 0062 6C25     		movs	r5, #108
 475 0064 D5E7     		b	.L63
 476              	.L69:
 477 0066 0020     		movs	r0, #0
 478 0068 38BD     		pop	{r3, r4, r5, pc}
 479              	.L72:
 480 006a 00BF     		.align	2
 481              	.L71:
 482 006c 00000000 		.word	Wire
 483              		.size	_ZN7MCP446116getVolatileWiperEh, .-_ZN7MCP446116getVolatileWiperEh
 484              		.section	.text._ZN7MCP44619getStatusEv,"ax",%progbits
 485              		.align	2
 486              		.global	_ZN7MCP44619getStatusEv
 487              		.thumb
 488              		.thumb_func
 489              		.type	_ZN7MCP44619getStatusEv, %function
 490              	_ZN7MCP44619getStatusEv:
 491              		@ args = 0, pretend = 0, frame = 0
 492              		@ frame_needed = 0, uses_anonymous_args = 0
 493 0000 38B5     		push	{r3, r4, r5, lr}
 494 0002 0446     		mov	r4, r0
 495 0004 1148     		ldr	r0, .L77
 496 0006 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 497 0008 FFF7FEFF 		bl	_ZN7TwoWire17beginTransmissionEh
 498 000c 5C21     		movs	r1, #92
 499 000e 0F48     		ldr	r0, .L77
 500 0010 FFF7FEFF 		bl	_ZN7TwoWire5writeEh
 501 0014 0021     		movs	r1, #0
 502 0016 0D48     		ldr	r0, .L77
 503 0018 FFF7FEFF 		bl	_ZN7TwoWire15endTransmissionEh
 504 001c 0025     		movs	r5, #0
 505 001e 2178     		ldrb	r1, [r4]	@ zero_extendqisi2
 506 0020 0A48     		ldr	r0, .L77
 507 0022 0222     		movs	r2, #2
 508 0024 FFF7FEFF 		bl	_ZN7TwoWire11requestFromEhh
 509 0028 2C46     		mov	r4, r5
 510 002a 08E0     		b	.L74
 511              	.L76:
 512 002c 0748     		ldr	r0, .L77
 513 002e FFF7FEFF 		bl	_ZN7TwoWire4readEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc0ZaloD.s 			page 10


 514 0032 2043     		orrs	r0, r0, r4
 515 0034 84B2     		uxth	r4, r0
 516 0036 2302     		lsls	r3, r4, #8
 517 0038 05B9     		cbnz	r5, .L75
 518 003a 9CB2     		uxth	r4, r3
 519              	.L75:
 520 003c 0135     		adds	r5, r5, #1
 521              	.L74:
 522 003e 0348     		ldr	r0, .L77
 523 0040 FFF7FEFF 		bl	_ZN7TwoWire9availableEv
 524 0044 0028     		cmp	r0, #0
 525 0046 F1D1     		bne	.L76
 526 0048 2046     		mov	r0, r4
 527 004a 38BD     		pop	{r3, r4, r5, pc}
 528              	.L78:
 529              		.align	2
 530              	.L77:
 531 004c 00000000 		.word	Wire
 532              		.size	_ZN7MCP44619getStatusEv, .-_ZN7MCP44619getStatusEv
 533              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 534              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 535              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 536              	_ZL28cpu_irq_prev_interrupt_state:
 537 0000 00       		.space	1
 538              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 539              		.align	2
 540              		.type	_ZL32cpu_irq_critical_section_counter, %object
 541              		.size	_ZL32cpu_irq_critical_section_counter, 4
 542              	_ZL32cpu_irq_critical_section_counter:
 543 0000 00000000 		.space	4
 544              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
