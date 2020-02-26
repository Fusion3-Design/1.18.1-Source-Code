ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 1


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
  14              		.file	"Move.cpp"
  15              		.section	.text._ZN10MathMatrixIfED2Ev,"axG",%progbits,_ZN10MathMatrixIfED5Ev,comdat
  16              		.align	2
  17              		.weak	_ZN10MathMatrixIfED2Ev
  18              		.thumb
  19              		.thumb_func
  20              		.type	_ZN10MathMatrixIfED2Ev, %function
  21              	_ZN10MathMatrixIfED2Ev:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 014B     		ldr	r3, .L2
  26 0002 0360     		str	r3, [r0]
  27 0004 7047     		bx	lr
  28              	.L3:
  29 0006 00BF     		.align	2
  30              	.L2:
  31 0008 08000000 		.word	_ZTV10MathMatrixIfE+8
  32              		.size	_ZN10MathMatrixIfED2Ev, .-_ZN10MathMatrixIfED2Ev
  33              		.weak	_ZN10MathMatrixIfED1Ev
  34              		.thumb_set _ZN10MathMatrixIfED1Ev,_ZN10MathMatrixIfED2Ev
  35              		.section	.text._ZN11FixedMatrixIfLj32ELj3EEclEjj,"axG",%progbits,_ZN11FixedMatrixIfLj32ELj3EEclEjj
  36              		.align	2
  37              		.weak	_ZN11FixedMatrixIfLj32ELj3EEclEjj
  38              		.thumb
  39              		.thumb_func
  40              		.type	_ZN11FixedMatrixIfLj32ELj3EEclEjj, %function
  41              	_ZN11FixedMatrixIfLj32ELj3EEclEjj:
  42              		@ args = 0, pretend = 0, frame = 0
  43              		@ frame_needed = 0, uses_anonymous_args = 0
  44              		@ link register save eliminated.
  45 0000 01EB4101 		add	r1, r1, r1, lsl #1
  46 0004 0A44     		add	r2, r2, r1
  47 0006 00EB8200 		add	r0, r0, r2, lsl #2
  48 000a 0430     		adds	r0, r0, #4
  49 000c 7047     		bx	lr
  50              		.size	_ZN11FixedMatrixIfLj32ELj3EEclEjj, .-_ZN11FixedMatrixIfLj32ELj3EEclEjj
  51 000e 00BF     		.section	.text._ZN11FixedMatrixIfLj32ELj9EEclEjj,"axG",%progbits,_ZN11FixedMatrixIfLj32ELj9EEclEjj
  52              		.align	2
  53              		.weak	_ZN11FixedMatrixIfLj32ELj9EEclEjj
  54              		.thumb
  55              		.thumb_func
  56              		.type	_ZN11FixedMatrixIfLj32ELj9EEclEjj, %function
  57              	_ZN11FixedMatrixIfLj32ELj9EEclEjj:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 2


  58              		@ args = 0, pretend = 0, frame = 0
  59              		@ frame_needed = 0, uses_anonymous_args = 0
  60              		@ link register save eliminated.
  61 0000 01EBC101 		add	r1, r1, r1, lsl #3
  62 0004 0A44     		add	r2, r2, r1
  63 0006 00EB8200 		add	r0, r0, r2, lsl #2
  64 000a 0430     		adds	r0, r0, #4
  65 000c 7047     		bx	lr
  66              		.size	_ZN11FixedMatrixIfLj32ELj9EEclEjj, .-_ZN11FixedMatrixIfLj32ELj9EEclEjj
  67 000e 00BF     		.section	.text._ZN11FixedMatrixIfLj9ELj10EEclEjj,"axG",%progbits,_ZN11FixedMatrixIfLj9ELj10EEclEjj
  68              		.align	2
  69              		.weak	_ZN11FixedMatrixIfLj9ELj10EEclEjj
  70              		.thumb
  71              		.thumb_func
  72              		.type	_ZN11FixedMatrixIfLj9ELj10EEclEjj, %function
  73              	_ZN11FixedMatrixIfLj9ELj10EEclEjj:
  74              		@ args = 0, pretend = 0, frame = 0
  75              		@ frame_needed = 0, uses_anonymous_args = 0
  76              		@ link register save eliminated.
  77 0000 01EB8101 		add	r1, r1, r1, lsl #2
  78 0004 02EB4102 		add	r2, r2, r1, lsl #1
  79 0008 00EB8200 		add	r0, r0, r2, lsl #2
  80 000c 0430     		adds	r0, r0, #4
  81 000e 7047     		bx	lr
  82              		.size	_ZN11FixedMatrixIfLj9ELj10EEclEjj, .-_ZN11FixedMatrixIfLj9ELj10EEclEjj
  83              		.section	.text._ZN11FixedMatrixIfLj9ELj10EED2Ev,"axG",%progbits,_ZN11FixedMatrixIfLj9ELj10EED5Ev,c
  84              		.align	2
  85              		.weak	_ZN11FixedMatrixIfLj9ELj10EED2Ev
  86              		.thumb
  87              		.thumb_func
  88              		.type	_ZN11FixedMatrixIfLj9ELj10EED2Ev, %function
  89              	_ZN11FixedMatrixIfLj9ELj10EED2Ev:
  90              		@ args = 0, pretend = 0, frame = 0
  91              		@ frame_needed = 0, uses_anonymous_args = 0
  92              		@ link register save eliminated.
  93 0000 014B     		ldr	r3, .L8
  94 0002 0360     		str	r3, [r0]
  95 0004 7047     		bx	lr
  96              	.L9:
  97 0006 00BF     		.align	2
  98              	.L8:
  99 0008 08000000 		.word	_ZTV10MathMatrixIfE+8
 100              		.size	_ZN11FixedMatrixIfLj9ELj10EED2Ev, .-_ZN11FixedMatrixIfLj9ELj10EED2Ev
 101              		.weak	_ZN11FixedMatrixIfLj9ELj10EED1Ev
 102              		.thumb_set _ZN11FixedMatrixIfLj9ELj10EED1Ev,_ZN11FixedMatrixIfLj9ELj10EED2Ev
 103              		.section	.text._ZN11FixedMatrixIfLj32ELj9EED2Ev,"axG",%progbits,_ZN11FixedMatrixIfLj32ELj9EED5Ev,c
 104              		.align	2
 105              		.weak	_ZN11FixedMatrixIfLj32ELj9EED2Ev
 106              		.thumb
 107              		.thumb_func
 108              		.type	_ZN11FixedMatrixIfLj32ELj9EED2Ev, %function
 109              	_ZN11FixedMatrixIfLj32ELj9EED2Ev:
 110              		@ args = 0, pretend = 0, frame = 0
 111              		@ frame_needed = 0, uses_anonymous_args = 0
 112              		@ link register save eliminated.
 113 0000 014B     		ldr	r3, .L11
 114 0002 0360     		str	r3, [r0]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 3


 115 0004 7047     		bx	lr
 116              	.L12:
 117 0006 00BF     		.align	2
 118              	.L11:
 119 0008 08000000 		.word	_ZTV10MathMatrixIfE+8
 120              		.size	_ZN11FixedMatrixIfLj32ELj9EED2Ev, .-_ZN11FixedMatrixIfLj32ELj9EED2Ev
 121              		.weak	_ZN11FixedMatrixIfLj32ELj9EED1Ev
 122              		.thumb_set _ZN11FixedMatrixIfLj32ELj9EED1Ev,_ZN11FixedMatrixIfLj32ELj9EED2Ev
 123              		.section	.text._ZN11FixedMatrixIfLj32ELj3EED2Ev,"axG",%progbits,_ZN11FixedMatrixIfLj32ELj3EED5Ev,c
 124              		.align	2
 125              		.weak	_ZN11FixedMatrixIfLj32ELj3EED2Ev
 126              		.thumb
 127              		.thumb_func
 128              		.type	_ZN11FixedMatrixIfLj32ELj3EED2Ev, %function
 129              	_ZN11FixedMatrixIfLj32ELj3EED2Ev:
 130              		@ args = 0, pretend = 0, frame = 0
 131              		@ frame_needed = 0, uses_anonymous_args = 0
 132              		@ link register save eliminated.
 133 0000 014B     		ldr	r3, .L14
 134 0002 0360     		str	r3, [r0]
 135 0004 7047     		bx	lr
 136              	.L15:
 137 0006 00BF     		.align	2
 138              	.L14:
 139 0008 08000000 		.word	_ZTV10MathMatrixIfE+8
 140              		.size	_ZN11FixedMatrixIfLj32ELj3EED2Ev, .-_ZN11FixedMatrixIfLj32ELj3EED2Ev
 141              		.weak	_ZN11FixedMatrixIfLj32ELj3EED1Ev
 142              		.thumb_set _ZN11FixedMatrixIfLj32ELj3EED1Ev,_ZN11FixedMatrixIfLj32ELj3EED2Ev
 143              		.section	.text._ZNK11FixedMatrixIfLj9ELj10EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIfLj9ELj10EE4
 144              		.align	2
 145              		.weak	_ZNK11FixedMatrixIfLj9ELj10EE4rowsEv
 146              		.thumb
 147              		.thumb_func
 148              		.type	_ZNK11FixedMatrixIfLj9ELj10EE4rowsEv, %function
 149              	_ZNK11FixedMatrixIfLj9ELj10EE4rowsEv:
 150              		@ args = 0, pretend = 0, frame = 0
 151              		@ frame_needed = 0, uses_anonymous_args = 0
 152              		@ link register save eliminated.
 153 0000 0920     		movs	r0, #9
 154 0002 7047     		bx	lr
 155              		.size	_ZNK11FixedMatrixIfLj9ELj10EE4rowsEv, .-_ZNK11FixedMatrixIfLj9ELj10EE4rowsEv
 156              		.section	.text._ZNK11FixedMatrixIfLj9ELj10EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIfLj9ELj10EE4
 157              		.align	2
 158              		.weak	_ZNK11FixedMatrixIfLj9ELj10EE4colsEv
 159              		.thumb
 160              		.thumb_func
 161              		.type	_ZNK11FixedMatrixIfLj9ELj10EE4colsEv, %function
 162              	_ZNK11FixedMatrixIfLj9ELj10EE4colsEv:
 163              		@ args = 0, pretend = 0, frame = 0
 164              		@ frame_needed = 0, uses_anonymous_args = 0
 165              		@ link register save eliminated.
 166 0000 0A20     		movs	r0, #10
 167 0002 7047     		bx	lr
 168              		.size	_ZNK11FixedMatrixIfLj9ELj10EE4colsEv, .-_ZNK11FixedMatrixIfLj9ELj10EE4colsEv
 169              		.section	.text._ZNK11FixedMatrixIfLj9ELj10EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIfLj9ELj10EEclE
 170              		.align	2
 171              		.weak	_ZNK11FixedMatrixIfLj9ELj10EEclEjj
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 4


 172              		.thumb
 173              		.thumb_func
 174              		.type	_ZNK11FixedMatrixIfLj9ELj10EEclEjj, %function
 175              	_ZNK11FixedMatrixIfLj9ELj10EEclEjj:
 176              		@ args = 0, pretend = 0, frame = 0
 177              		@ frame_needed = 0, uses_anonymous_args = 0
 178              		@ link register save eliminated.
 179 0000 01EB8101 		add	r1, r1, r1, lsl #2
 180 0004 02EB4102 		add	r2, r2, r1, lsl #1
 181 0008 00EB8200 		add	r0, r0, r2, lsl #2
 182 000c 0430     		adds	r0, r0, #4
 183 000e 7047     		bx	lr
 184              		.size	_ZNK11FixedMatrixIfLj9ELj10EEclEjj, .-_ZNK11FixedMatrixIfLj9ELj10EEclEjj
 185              		.section	.text._ZNK11FixedMatrixIfLj32ELj9EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIfLj32ELj9EE4
 186              		.align	2
 187              		.weak	_ZNK11FixedMatrixIfLj32ELj9EE4rowsEv
 188              		.thumb
 189              		.thumb_func
 190              		.type	_ZNK11FixedMatrixIfLj32ELj9EE4rowsEv, %function
 191              	_ZNK11FixedMatrixIfLj32ELj9EE4rowsEv:
 192              		@ args = 0, pretend = 0, frame = 0
 193              		@ frame_needed = 0, uses_anonymous_args = 0
 194              		@ link register save eliminated.
 195 0000 2020     		movs	r0, #32
 196 0002 7047     		bx	lr
 197              		.size	_ZNK11FixedMatrixIfLj32ELj9EE4rowsEv, .-_ZNK11FixedMatrixIfLj32ELj9EE4rowsEv
 198              		.section	.text._ZNK11FixedMatrixIfLj32ELj9EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIfLj32ELj9EE4
 199              		.align	2
 200              		.weak	_ZNK11FixedMatrixIfLj32ELj9EE4colsEv
 201              		.thumb
 202              		.thumb_func
 203              		.type	_ZNK11FixedMatrixIfLj32ELj9EE4colsEv, %function
 204              	_ZNK11FixedMatrixIfLj32ELj9EE4colsEv:
 205              		@ args = 0, pretend = 0, frame = 0
 206              		@ frame_needed = 0, uses_anonymous_args = 0
 207              		@ link register save eliminated.
 208 0000 0920     		movs	r0, #9
 209 0002 7047     		bx	lr
 210              		.size	_ZNK11FixedMatrixIfLj32ELj9EE4colsEv, .-_ZNK11FixedMatrixIfLj32ELj9EE4colsEv
 211              		.section	.text._ZNK11FixedMatrixIfLj32ELj9EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIfLj32ELj9EEclE
 212              		.align	2
 213              		.weak	_ZNK11FixedMatrixIfLj32ELj9EEclEjj
 214              		.thumb
 215              		.thumb_func
 216              		.type	_ZNK11FixedMatrixIfLj32ELj9EEclEjj, %function
 217              	_ZNK11FixedMatrixIfLj32ELj9EEclEjj:
 218              		@ args = 0, pretend = 0, frame = 0
 219              		@ frame_needed = 0, uses_anonymous_args = 0
 220              		@ link register save eliminated.
 221 0000 01EBC101 		add	r1, r1, r1, lsl #3
 222 0004 0A44     		add	r2, r2, r1
 223 0006 00EB8200 		add	r0, r0, r2, lsl #2
 224 000a 0430     		adds	r0, r0, #4
 225 000c 7047     		bx	lr
 226              		.size	_ZNK11FixedMatrixIfLj32ELj9EEclEjj, .-_ZNK11FixedMatrixIfLj32ELj9EEclEjj
 227 000e 00BF     		.section	.text._ZNK11FixedMatrixIfLj32ELj3EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIfLj32ELj3EE4
 228              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 5


 229              		.weak	_ZNK11FixedMatrixIfLj32ELj3EE4rowsEv
 230              		.thumb
 231              		.thumb_func
 232              		.type	_ZNK11FixedMatrixIfLj32ELj3EE4rowsEv, %function
 233              	_ZNK11FixedMatrixIfLj32ELj3EE4rowsEv:
 234              		@ args = 0, pretend = 0, frame = 0
 235              		@ frame_needed = 0, uses_anonymous_args = 0
 236              		@ link register save eliminated.
 237 0000 2020     		movs	r0, #32
 238 0002 7047     		bx	lr
 239              		.size	_ZNK11FixedMatrixIfLj32ELj3EE4rowsEv, .-_ZNK11FixedMatrixIfLj32ELj3EE4rowsEv
 240              		.section	.text._ZNK11FixedMatrixIfLj32ELj3EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIfLj32ELj3EE4
 241              		.align	2
 242              		.weak	_ZNK11FixedMatrixIfLj32ELj3EE4colsEv
 243              		.thumb
 244              		.thumb_func
 245              		.type	_ZNK11FixedMatrixIfLj32ELj3EE4colsEv, %function
 246              	_ZNK11FixedMatrixIfLj32ELj3EE4colsEv:
 247              		@ args = 0, pretend = 0, frame = 0
 248              		@ frame_needed = 0, uses_anonymous_args = 0
 249              		@ link register save eliminated.
 250 0000 0320     		movs	r0, #3
 251 0002 7047     		bx	lr
 252              		.size	_ZNK11FixedMatrixIfLj32ELj3EE4colsEv, .-_ZNK11FixedMatrixIfLj32ELj3EE4colsEv
 253              		.section	.text._ZNK11FixedMatrixIfLj32ELj3EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIfLj32ELj3EEclE
 254              		.align	2
 255              		.weak	_ZNK11FixedMatrixIfLj32ELj3EEclEjj
 256              		.thumb
 257              		.thumb_func
 258              		.type	_ZNK11FixedMatrixIfLj32ELj3EEclEjj, %function
 259              	_ZNK11FixedMatrixIfLj32ELj3EEclEjj:
 260              		@ args = 0, pretend = 0, frame = 0
 261              		@ frame_needed = 0, uses_anonymous_args = 0
 262              		@ link register save eliminated.
 263 0000 01EB4101 		add	r1, r1, r1, lsl #1
 264 0004 0A44     		add	r2, r2, r1
 265 0006 00EB8200 		add	r0, r0, r2, lsl #2
 266 000a 0430     		adds	r0, r0, #4
 267 000c 7047     		bx	lr
 268              		.size	_ZNK11FixedMatrixIfLj32ELj3EEclEjj, .-_ZNK11FixedMatrixIfLj32ELj3EEclEjj
 269 000e 00BF     		.section	.text._ZN10MathMatrixIfED0Ev,"axG",%progbits,_ZN10MathMatrixIfED0Ev,comdat
 270              		.align	2
 271              		.weak	_ZN10MathMatrixIfED0Ev
 272              		.thumb
 273              		.thumb_func
 274              		.type	_ZN10MathMatrixIfED0Ev, %function
 275              	_ZN10MathMatrixIfED0Ev:
 276              		@ args = 0, pretend = 0, frame = 0
 277              		@ frame_needed = 0, uses_anonymous_args = 0
 278 0000 10B5     		push	{r4, lr}
 279 0002 034B     		ldr	r3, .L26
 280 0004 0446     		mov	r4, r0
 281 0006 0360     		str	r3, [r0]
 282 0008 FFF7FEFF 		bl	_ZdlPv
 283 000c 2046     		mov	r0, r4
 284 000e 10BD     		pop	{r4, pc}
 285              	.L27:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 6


 286              		.align	2
 287              	.L26:
 288 0010 08000000 		.word	_ZTV10MathMatrixIfE+8
 289              		.size	_ZN10MathMatrixIfED0Ev, .-_ZN10MathMatrixIfED0Ev
 290              		.section	.text._ZN11FixedMatrixIfLj9ELj10EED0Ev,"axG",%progbits,_ZN11FixedMatrixIfLj9ELj10EED0Ev,c
 291              		.align	2
 292              		.weak	_ZN11FixedMatrixIfLj9ELj10EED0Ev
 293              		.thumb
 294              		.thumb_func
 295              		.type	_ZN11FixedMatrixIfLj9ELj10EED0Ev, %function
 296              	_ZN11FixedMatrixIfLj9ELj10EED0Ev:
 297              		@ args = 0, pretend = 0, frame = 0
 298              		@ frame_needed = 0, uses_anonymous_args = 0
 299 0000 10B5     		push	{r4, lr}
 300 0002 034B     		ldr	r3, .L29
 301 0004 0446     		mov	r4, r0
 302 0006 0360     		str	r3, [r0]
 303 0008 FFF7FEFF 		bl	_ZdlPv
 304 000c 2046     		mov	r0, r4
 305 000e 10BD     		pop	{r4, pc}
 306              	.L30:
 307              		.align	2
 308              	.L29:
 309 0010 08000000 		.word	_ZTV10MathMatrixIfE+8
 310              		.size	_ZN11FixedMatrixIfLj9ELj10EED0Ev, .-_ZN11FixedMatrixIfLj9ELj10EED0Ev
 311              		.section	.text._ZN11FixedMatrixIfLj32ELj9EED0Ev,"axG",%progbits,_ZN11FixedMatrixIfLj32ELj9EED0Ev,c
 312              		.align	2
 313              		.weak	_ZN11FixedMatrixIfLj32ELj9EED0Ev
 314              		.thumb
 315              		.thumb_func
 316              		.type	_ZN11FixedMatrixIfLj32ELj9EED0Ev, %function
 317              	_ZN11FixedMatrixIfLj32ELj9EED0Ev:
 318              		@ args = 0, pretend = 0, frame = 0
 319              		@ frame_needed = 0, uses_anonymous_args = 0
 320 0000 10B5     		push	{r4, lr}
 321 0002 034B     		ldr	r3, .L32
 322 0004 0446     		mov	r4, r0
 323 0006 0360     		str	r3, [r0]
 324 0008 FFF7FEFF 		bl	_ZdlPv
 325 000c 2046     		mov	r0, r4
 326 000e 10BD     		pop	{r4, pc}
 327              	.L33:
 328              		.align	2
 329              	.L32:
 330 0010 08000000 		.word	_ZTV10MathMatrixIfE+8
 331              		.size	_ZN11FixedMatrixIfLj32ELj9EED0Ev, .-_ZN11FixedMatrixIfLj32ELj9EED0Ev
 332              		.section	.text._ZN11FixedMatrixIfLj32ELj3EED0Ev,"axG",%progbits,_ZN11FixedMatrixIfLj32ELj3EED0Ev,c
 333              		.align	2
 334              		.weak	_ZN11FixedMatrixIfLj32ELj3EED0Ev
 335              		.thumb
 336              		.thumb_func
 337              		.type	_ZN11FixedMatrixIfLj32ELj3EED0Ev, %function
 338              	_ZN11FixedMatrixIfLj32ELj3EED0Ev:
 339              		@ args = 0, pretend = 0, frame = 0
 340              		@ frame_needed = 0, uses_anonymous_args = 0
 341 0000 10B5     		push	{r4, lr}
 342 0002 034B     		ldr	r3, .L35
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 7


 343 0004 0446     		mov	r4, r0
 344 0006 0360     		str	r3, [r0]
 345 0008 FFF7FEFF 		bl	_ZdlPv
 346 000c 2046     		mov	r0, r4
 347 000e 10BD     		pop	{r4, pc}
 348              	.L36:
 349              		.align	2
 350              	.L35:
 351 0010 08000000 		.word	_ZTV10MathMatrixIfE+8
 352              		.size	_ZN11FixedMatrixIfLj32ELj3EED0Ev, .-_ZN11FixedMatrixIfLj32ELj3EED0Ev
 353              		.section	.text._ZN4MoveC2EP8PlatformP6GCodes,"ax",%progbits
 354              		.align	2
 355              		.global	_ZN4MoveC2EP8PlatformP6GCodes
 356              		.thumb
 357              		.thumb_func
 358              		.type	_ZN4MoveC2EP8PlatformP6GCodes, %function
 359              	_ZN4MoveC2EP8PlatformP6GCodes:
 360              		@ args = 0, pretend = 0, frame = 0
 361              		@ frame_needed = 0, uses_anonymous_args = 0
 362 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 363 0002 0746     		mov	r7, r0
 364 0004 0025     		movs	r5, #0
 365 0006 07F5BC71 		add	r1, r7, #376
 366 000a 0560     		str	r5, [r0]
 367 000c 00F57A70 		add	r0, r0, #1000
 368 0010 FFF7FEFF 		bl	_ZN9HeightMapC1EPf
 369 0014 154A     		ldr	r2, .L42
 370 0016 164B     		ldr	r3, .L42+4
 371 0018 C7F83424 		str	r2, [r7, #1076]	@ float
 372 001c C7F83834 		str	r3, [r7, #1080]	@ float
 373 0020 07F23440 		addw	r0, r7, #1076
 374 0024 FFF7FEFF 		bl	_ZN15DeltaParameters4InitEv
 375 0028 C7F80056 		str	r5, [r7, #1536]
 376 002c C7F80456 		str	r5, [r7, #1540]
 377 0030 3D74     		strb	r5, [r7, #16]
 378 0032 4FF46270 		mov	r0, #904
 379 0036 FFF7FEFF 		bl	_Znwj
 380 003a 2946     		mov	r1, r5
 381 003c 0446     		mov	r4, r0
 382 003e 1326     		movs	r6, #19
 383 0040 FFF7FEFF 		bl	_ZN3DDAC1EPS_
 384 0044 7C60     		str	r4, [r7, #4]
 385 0046 BC60     		str	r4, [r7, #8]
 386 0048 00E0     		b	.L39
 387              	.L41:
 388 004a 2C46     		mov	r4, r5
 389              	.L39:
 390 004c 4FF46270 		mov	r0, #904
 391 0050 FFF7FEFF 		bl	_Znwj
 392 0054 2146     		mov	r1, r4
 393 0056 0546     		mov	r5, r0
 394 0058 FFF7FEFF 		bl	_ZN3DDAC1EPS_
 395 005c 013E     		subs	r6, r6, #1
 396 005e 6560     		str	r5, [r4, #4]
 397 0060 F3D1     		bne	.L41
 398 0062 7B68     		ldr	r3, [r7, #4]
 399 0064 3846     		mov	r0, r7
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 8


 400 0066 1D60     		str	r5, [r3]
 401 0068 6B60     		str	r3, [r5, #4]
 402 006a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 403              	.L43:
 404              		.align	2
 405              	.L42:
 406 006c 35FA8E3C 		.word	1016003125
 407 0070 E12E6542 		.word	1113927393
 408              		.size	_ZN4MoveC2EP8PlatformP6GCodes, .-_ZN4MoveC2EP8PlatformP6GCodes
 409              		.global	_ZN4MoveC1EP8PlatformP6GCodes
 410              		.thumb_set _ZN4MoveC1EP8PlatformP6GCodes,_ZN4MoveC2EP8PlatformP6GCodes
 411              		.section	.text._ZN4Move4ExitEv,"ax",%progbits
 412              		.align	2
 413              		.global	_ZN4Move4ExitEv
 414              		.thumb
 415              		.thumb_func
 416              		.type	_ZN4Move4ExitEv, %function
 417              	_ZN4Move4ExitEv:
 418              		@ args = 0, pretend = 0, frame = 0
 419              		@ frame_needed = 0, uses_anonymous_args = 0
 420 0000 10B5     		push	{r4, lr}
 421 0002 054B     		ldr	r3, .L45
 422 0004 0446     		mov	r4, r0
 423 0006 0221     		movs	r1, #2
 424 0008 1868     		ldr	r0, [r3]
 425 000a 044A     		ldr	r2, .L45+4
 426 000c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 427 0010 0023     		movs	r3, #0
 428 0012 2374     		strb	r3, [r4, #16]
 429 0014 10BD     		pop	{r4, pc}
 430              	.L46:
 431 0016 00BF     		.align	2
 432              	.L45:
 433 0018 00000000 		.word	reprap
 434 001c 00000000 		.word	.LC0
 435              		.size	_ZN4Move4ExitEv, .-_ZN4Move4ExitEv
 436              		.global	__aeabi_f2d
 437              		.section	.text._ZN4Move11DiagnosticsE11MessageType,"ax",%progbits
 438              		.align	2
 439              		.global	_ZN4Move11DiagnosticsE11MessageType
 440              		.thumb
 441              		.thumb_func
 442              		.type	_ZN4Move11DiagnosticsE11MessageType, %function
 443              	_ZN4Move11DiagnosticsE11MessageType:
 444              		@ args = 0, pretend = 0, frame = 0
 445              		@ frame_needed = 0, uses_anonymous_args = 0
 446 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 447 0004 314C     		ldr	r4, .L54
 448 0006 0546     		mov	r5, r0
 449 0008 2768     		ldr	r7, [r4]
 450 000a 84B0     		sub	sp, sp, #16
 451 000c 304A     		ldr	r2, .L54+4
 452 000e 3846     		mov	r0, r7
 453 0010 0E46     		mov	r6, r1
 454 0012 DFF8E880 		ldr	r8, .L54+48
 455 0016 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 456 001a D5F820C0 		ldr	ip, [r5, #32]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 9


 457 001e 6A69     		ldr	r2, [r5, #20]
 458 0020 A969     		ldr	r1, [r5, #24]
 459 0022 D5F8FC35 		ldr	r3, [r5, #1532]
 460 0026 3846     		mov	r0, r7
 461 0028 8DE80810 		stmia	sp, {r3, ip}
 462 002c 0292     		str	r2, [sp, #8]
 463 002e 0391     		str	r1, [sp, #12]
 464 0030 D8F80030 		ldr	r3, [r8]
 465 0034 3146     		mov	r1, r6
 466 0036 274A     		ldr	r2, .L54+8
 467 0038 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 468 003c D5F80426 		ldr	r2, [r5, #1540]
 469 0040 2068     		ldr	r0, [r4]
 470 0042 0024     		movs	r4, #0
 471 0044 D5F80036 		ldr	r3, [r5, #1536]
 472 0048 AC61     		str	r4, [r5, #24]
 473 004a 6C61     		str	r4, [r5, #20]
 474 004c 2C62     		str	r4, [r5, #32]
 475 004e 3146     		mov	r1, r6
 476 0050 0092     		str	r2, [sp]
 477 0052 214A     		ldr	r2, .L54+12
 478 0054 C8F80040 		str	r4, [r8]
 479 0058 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 480 005c 3846     		mov	r0, r7
 481 005e 3146     		mov	r1, r6
 482 0060 1E4A     		ldr	r2, .L54+16
 483 0062 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 484 0066 D5F8D033 		ldr	r3, [r5, #976]
 485 006a 43BB     		cbnz	r3, .L48
 486 006c 95F82014 		ldrb	r1, [r5, #1056]	@ zero_extendqisi2
 487 0070 1B4A     		ldr	r2, .L54+20
 488 0072 1C4B     		ldr	r3, .L54+24
 489 0074 3846     		mov	r0, r7
 490 0076 A142     		cmp	r1, r4
 491 0078 18BF     		it	ne
 492 007a 1346     		movne	r3, r2
 493 007c 3146     		mov	r1, r6
 494 007e 1A4A     		ldr	r2, .L54+28
 495 0080 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 496              	.L50:
 497 0084 3846     		mov	r0, r7
 498 0086 3146     		mov	r1, r6
 499 0088 184A     		ldr	r2, .L54+32
 500 008a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 501 008e 0024     		movs	r4, #0
 502              	.L52:
 503 0090 2B19     		adds	r3, r5, r4
 504 0092 D3F87801 		ldr	r0, [r3, #376]	@ float
 505 0096 FFF7FEFF 		bl	__aeabi_f2d
 506 009a 0434     		adds	r4, r4, #4
 507 009c CDE90001 		strd	r0, [sp]
 508 00a0 134A     		ldr	r2, .L54+36
 509 00a2 3846     		mov	r0, r7
 510 00a4 3146     		mov	r1, r6
 511 00a6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 512 00aa 142C     		cmp	r4, #20
 513 00ac F0D1     		bne	.L52
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 10


 514 00ae 114A     		ldr	r2, .L54+40
 515 00b0 3846     		mov	r0, r7
 516 00b2 3146     		mov	r1, r6
 517 00b4 04B0     		add	sp, sp, #16
 518              		@ sp needed
 519 00b6 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 520 00ba FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 521              	.L48:
 522 00be 3846     		mov	r0, r7
 523 00c0 3146     		mov	r1, r6
 524 00c2 0D4A     		ldr	r2, .L54+44
 525 00c4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 526 00c8 DCE7     		b	.L50
 527              	.L55:
 528 00ca 00BF     		.align	2
 529              	.L54:
 530 00cc 00000000 		.word	reprap
 531 00d0 24000000 		.word	.LC3
 532 00d4 34000000 		.word	.LC4
 533 00d8 74000000 		.word	.LC5
 534 00dc A0000000 		.word	.LC6
 535 00e0 14000000 		.word	.LC1
 536 00e4 1C000000 		.word	.LC2
 537 00e8 BC000000 		.word	.LC7
 538 00ec CC000000 		.word	.LC9
 539 00f0 E0000000 		.word	.LC10
 540 00f4 E8000000 		.word	.LC11
 541 00f8 C0000000 		.word	.LC8
 542 00fc 00000000 		.word	.LANCHOR0
 543              		.size	_ZN4Move11DiagnosticsE11MessageType, .-_ZN4Move11DiagnosticsE11MessageType
 544              		.section	.text._ZN4Move12SetPositionsEPKf,"ax",%progbits
 545              		.align	2
 546              		.global	_ZN4Move12SetPositionsEPKf
 547              		.thumb
 548              		.thumb_func
 549              		.type	_ZN4Move12SetPositionsEPKf, %function
 550              	_ZN4Move12SetPositionsEPKf:
 551              		@ args = 0, pretend = 0, frame = 0
 552              		@ frame_needed = 0, uses_anonymous_args = 0
 553              		@ link register save eliminated.
 554 0000 8368     		ldr	r3, [r0, #8]
 555 0002 4268     		ldr	r2, [r0, #4]
 556 0004 9342     		cmp	r3, r2
 557 0006 05D0     		beq	.L58
 558 0008 044B     		ldr	r3, .L59
 559 000a 0621     		movs	r1, #6
 560 000c 1868     		ldr	r0, [r3]
 561 000e 044A     		ldr	r2, .L59+4
 562 0010 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 563              	.L58:
 564 0014 5868     		ldr	r0, [r3, #4]
 565 0016 0922     		movs	r2, #9
 566 0018 FFF7FEBF 		b	_ZN3DDA12SetPositionsEPKfj
 567              	.L60:
 568              		.align	2
 569              	.L59:
 570 001c 00000000 		.word	reprap
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 11


 571 0020 EC000000 		.word	.LC12
 572              		.size	_ZN4Move12SetPositionsEPKf, .-_ZN4Move12SetPositionsEPKf
 573              		.global	__aeabi_fmul
 574              		.global	__aeabi_f2iz
 575              		.section	.text._ZN4Move22MotorEndPointToMachineEjf,"ax",%progbits
 576              		.align	2
 577              		.global	_ZN4Move22MotorEndPointToMachineEjf
 578              		.thumb
 579              		.thumb_func
 580              		.type	_ZN4Move22MotorEndPointToMachineEjf, %function
 581              	_ZN4Move22MotorEndPointToMachineEjf:
 582              		@ args = 0, pretend = 0, frame = 0
 583              		@ frame_needed = 0, uses_anonymous_args = 0
 584 0000 08B5     		push	{r3, lr}
 585 0002 074B     		ldr	r3, .L62
 586 0004 00F14E02 		add	r2, r0, #78
 587 0008 1B68     		ldr	r3, [r3]
 588 000a 0846     		mov	r0, r1
 589 000c 53F82210 		ldr	r1, [r3, r2, lsl #2]	@ float
 590 0010 FFF7FEFF 		bl	__aeabi_fmul
 591 0014 FFF7FEFF 		bl	roundf
 592 0018 FFF7FEFF 		bl	__aeabi_f2iz
 593 001c 08BD     		pop	{r3, pc}
 594              	.L63:
 595 001e 00BF     		.align	2
 596              	.L62:
 597 0020 00000000 		.word	reprap
 598              		.size	_ZN4Move22MotorEndPointToMachineEjf, .-_ZN4Move22MotorEndPointToMachineEjf
 599              		.global	__aeabi_i2f
 600              		.global	__aeabi_fdiv
 601              		.global	__aeabi_fsub
 602              		.global	__aeabi_fadd
 603              		.section	.text._ZNK4Move17MachineToEndPointEPKlPfj,"ax",%progbits
 604              		.align	2
 605              		.global	_ZNK4Move17MachineToEndPointEPKlPfj
 606              		.thumb
 607              		.thumb_func
 608              		.type	_ZNK4Move17MachineToEndPointEPKlPfj, %function
 609              	_ZNK4Move17MachineToEndPointEPKlPfj:
 610              		@ args = 0, pretend = 0, frame = 16
 611              		@ frame_needed = 0, uses_anonymous_args = 0
 612 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 613 0004 AF4C     		ldr	r4, .L79
 614 0006 8046     		mov	r8, r0
 615 0008 2668     		ldr	r6, [r4]
 616 000a 90F86C04 		ldrb	r0, [r0, #1132]	@ zero_extendqisi2
 617 000e 87B0     		sub	sp, sp, #28
 618 0010 0F46     		mov	r7, r1
 619 0012 1446     		mov	r4, r2
 620 0014 9C46     		mov	ip, r3
 621 0016 06F59C75 		add	r5, r6, #312
 622 001a 0028     		cmp	r0, #0
 623 001c 3DD1     		bne	.L77
 624 001e D8F8E035 		ldr	r3, [r8, #1504]
 625 0022 0868     		ldr	r0, [r1]
 626 0024 022B     		cmp	r3, #2
 627 0026 CDF80CC0 		str	ip, [sp, #12]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 12


 628 002a 00F00D81 		beq	.L68
 629 002e 032B     		cmp	r3, #3
 630 0030 57D0     		beq	.L69
 631 0032 012B     		cmp	r3, #1
 632 0034 00F0B480 		beq	.L78
 633 0038 FFF7FEFF 		bl	__aeabi_i2f
 634 003c D6F83811 		ldr	r1, [r6, #312]	@ float
 635 0040 FFF7FEFF 		bl	__aeabi_fdiv
 636 0044 2060     		str	r0, [r4]	@ float
 637 0046 7868     		ldr	r0, [r7, #4]
 638 0048 FFF7FEFF 		bl	__aeabi_i2f
 639 004c D6F83C11 		ldr	r1, [r6, #316]	@ float
 640              	.L75:
 641 0050 FFF7FEFF 		bl	__aeabi_fdiv
 642 0054 6060     		str	r0, [r4, #4]	@ float
 643 0056 B868     		ldr	r0, [r7, #8]
 644 0058 FFF7FEFF 		bl	__aeabi_i2f
 645 005c D6F84011 		ldr	r1, [r6, #320]	@ float
 646 0060 FFF7FEFF 		bl	__aeabi_fdiv
 647 0064 DDF80CC0 		ldr	ip, [sp, #12]
 648 0068 A060     		str	r0, [r4, #8]	@ float
 649              	.L71:
 650 006a BCF1030F 		cmp	ip, #3
 651 006e 11D9     		bls	.L64
 652 0070 07EB8C08 		add	r8, r7, ip, lsl #2
 653 0074 0026     		movs	r6, #0
 654 0076 0C37     		adds	r7, r7, #12
 655              	.L73:
 656 0078 57F8040B 		ldr	r0, [r7], #4
 657 007c FFF7FEFF 		bl	__aeabi_i2f
 658 0080 AB19     		adds	r3, r5, r6
 659 0082 D968     		ldr	r1, [r3, #12]	@ float
 660 0084 FFF7FEFF 		bl	__aeabi_fdiv
 661 0088 A319     		adds	r3, r4, r6
 662 008a 4745     		cmp	r7, r8
 663 008c D860     		str	r0, [r3, #12]	@ float
 664 008e 06F10406 		add	r6, r6, #4
 665 0092 F1D1     		bne	.L73
 666              	.L64:
 667 0094 07B0     		add	sp, sp, #28
 668              		@ sp needed
 669 0096 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 670              	.L77:
 671 009a 0868     		ldr	r0, [r1]
 672 009c 0393     		str	r3, [sp, #12]
 673 009e FFF7FEFF 		bl	__aeabi_i2f
 674 00a2 D6F83811 		ldr	r1, [r6, #312]	@ float
 675 00a6 FFF7FEFF 		bl	__aeabi_fdiv
 676 00aa 8246     		mov	r10, r0
 677 00ac 7868     		ldr	r0, [r7, #4]
 678 00ae FFF7FEFF 		bl	__aeabi_i2f
 679 00b2 D6F83C11 		ldr	r1, [r6, #316]	@ float
 680 00b6 FFF7FEFF 		bl	__aeabi_fdiv
 681 00ba 8146     		mov	r9, r0
 682 00bc B868     		ldr	r0, [r7, #8]
 683 00be FFF7FEFF 		bl	__aeabi_i2f
 684 00c2 D6F84011 		ldr	r1, [r6, #320]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 13


 685 00c6 FFF7FEFF 		bl	__aeabi_fdiv
 686 00ca 08F23448 		addw	r8, r8, #1076
 687 00ce 0346     		mov	r3, r0
 688 00d0 5146     		mov	r1, r10
 689 00d2 4A46     		mov	r2, r9
 690 00d4 4046     		mov	r0, r8
 691 00d6 0094     		str	r4, [sp]
 692 00d8 FFF7FEFF 		bl	_ZNK15DeltaParameters16InverseTransformEfffPf
 693 00dc DDF80CC0 		ldr	ip, [sp, #12]
 694 00e0 C3E7     		b	.L71
 695              	.L69:
 696 00e2 FFF7FEFF 		bl	__aeabi_i2f
 697 00e6 D6F83811 		ldr	r1, [r6, #312]	@ float
 698 00ea FFF7FEFF 		bl	__aeabi_fdiv
 699 00ee 2060     		str	r0, [r4]	@ float
 700 00f0 7868     		ldr	r0, [r7, #4]
 701 00f2 FFF7FEFF 		bl	__aeabi_i2f
 702 00f6 D6F84031 		ldr	r3, [r6, #320]	@ float
 703 00fa 8246     		mov	r10, r0
 704 00fc B868     		ldr	r0, [r7, #8]
 705 00fe 0593     		str	r3, [sp, #20]	@ float
 706 0100 FFF7FEFF 		bl	__aeabi_i2f
 707 0104 0599     		ldr	r1, [sp, #20]	@ float
 708 0106 8146     		mov	r9, r0
 709 0108 5046     		mov	r0, r10
 710 010a FFF7FEFF 		bl	__aeabi_fmul
 711 010e D6F83CB1 		ldr	fp, [r6, #316]	@ float
 712 0112 0346     		mov	r3, r0
 713 0114 5946     		mov	r1, fp
 714 0116 4846     		mov	r0, r9
 715 0118 0493     		str	r3, [sp, #16]
 716 011a FFF7FEFF 		bl	__aeabi_fmul
 717 011e 049B     		ldr	r3, [sp, #16]
 718 0120 0146     		mov	r1, r0
 719 0122 1846     		mov	r0, r3
 720 0124 FFF7FEFF 		bl	__aeabi_fsub
 721 0128 0346     		mov	r3, r0
 722 012a D8F8E805 		ldr	r0, [r8, #1512]	@ float
 723 012e 0493     		str	r3, [sp, #16]
 724 0130 0146     		mov	r1, r0
 725 0132 FFF7FEFF 		bl	__aeabi_fadd
 726 0136 0146     		mov	r1, r0
 727 0138 5846     		mov	r0, fp
 728 013a FFF7FEFF 		bl	__aeabi_fmul
 729 013e 0146     		mov	r1, r0
 730 0140 0598     		ldr	r0, [sp, #20]	@ float
 731 0142 FFF7FEFF 		bl	__aeabi_fmul
 732 0146 049B     		ldr	r3, [sp, #16]
 733 0148 0146     		mov	r1, r0
 734 014a 1846     		mov	r0, r3
 735 014c FFF7FEFF 		bl	__aeabi_fdiv
 736 0150 6060     		str	r0, [r4, #4]	@ float
 737 0152 D6F840B1 		ldr	fp, [r6, #320]	@ float
 738 0156 D6F83C61 		ldr	r6, [r6, #316]	@ float
 739 015a 5046     		mov	r0, r10
 740              	.L76:
 741 015c 5946     		mov	r1, fp
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 14


 742 015e FFF7FEFF 		bl	__aeabi_fmul
 743 0162 3146     		mov	r1, r6
 744 0164 8246     		mov	r10, r0
 745 0166 4846     		mov	r0, r9
 746 0168 FFF7FEFF 		bl	__aeabi_fmul
 747 016c 0146     		mov	r1, r0
 748 016e 5046     		mov	r0, r10
 749 0170 FFF7FEFF 		bl	__aeabi_fadd
 750 0174 8146     		mov	r9, r0
 751 0176 D8F8EC05 		ldr	r0, [r8, #1516]	@ float
 752 017a 0146     		mov	r1, r0
 753 017c FFF7FEFF 		bl	__aeabi_fadd
 754 0180 0146     		mov	r1, r0
 755 0182 3046     		mov	r0, r6
 756 0184 FFF7FEFF 		bl	__aeabi_fmul
 757 0188 0146     		mov	r1, r0
 758 018a 5846     		mov	r0, fp
 759 018c FFF7FEFF 		bl	__aeabi_fmul
 760 0190 0146     		mov	r1, r0
 761 0192 4846     		mov	r0, r9
 762 0194 FFF7FEFF 		bl	__aeabi_fdiv
 763 0198 DDF80CC0 		ldr	ip, [sp, #12]
 764 019c A060     		str	r0, [r4, #8]	@ float
 765 019e 64E7     		b	.L71
 766              	.L78:
 767 01a0 FFF7FEFF 		bl	__aeabi_i2f
 768 01a4 D6F83C31 		ldr	r3, [r6, #316]	@ float
 769 01a8 8246     		mov	r10, r0
 770 01aa 7868     		ldr	r0, [r7, #4]
 771 01ac 0593     		str	r3, [sp, #20]	@ float
 772 01ae FFF7FEFF 		bl	__aeabi_i2f
 773 01b2 0599     		ldr	r1, [sp, #20]	@ float
 774 01b4 8146     		mov	r9, r0
 775 01b6 5046     		mov	r0, r10
 776 01b8 FFF7FEFF 		bl	__aeabi_fmul
 777 01bc D6F838B1 		ldr	fp, [r6, #312]	@ float
 778 01c0 0346     		mov	r3, r0
 779 01c2 5946     		mov	r1, fp
 780 01c4 4846     		mov	r0, r9
 781 01c6 0493     		str	r3, [sp, #16]
 782 01c8 FFF7FEFF 		bl	__aeabi_fmul
 783 01cc 049B     		ldr	r3, [sp, #16]
 784 01ce 0146     		mov	r1, r0
 785 01d0 1846     		mov	r0, r3
 786 01d2 FFF7FEFF 		bl	__aeabi_fsub
 787 01d6 0346     		mov	r3, r0
 788 01d8 D8F8E405 		ldr	r0, [r8, #1508]	@ float
 789 01dc 0493     		str	r3, [sp, #16]
 790 01de 0146     		mov	r1, r0
 791 01e0 FFF7FEFF 		bl	__aeabi_fadd
 792 01e4 0146     		mov	r1, r0
 793 01e6 5846     		mov	r0, fp
 794 01e8 FFF7FEFF 		bl	__aeabi_fmul
 795 01ec 0146     		mov	r1, r0
 796 01ee 0598     		ldr	r0, [sp, #20]	@ float
 797 01f0 FFF7FEFF 		bl	__aeabi_fmul
 798 01f4 049B     		ldr	r3, [sp, #16]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 15


 799 01f6 0146     		mov	r1, r0
 800 01f8 1846     		mov	r0, r3
 801 01fa FFF7FEFF 		bl	__aeabi_fdiv
 802 01fe 2060     		str	r0, [r4]	@ float
 803 0200 D6F83CB1 		ldr	fp, [r6, #316]	@ float
 804 0204 5046     		mov	r0, r10
 805 0206 5946     		mov	r1, fp
 806 0208 FFF7FEFF 		bl	__aeabi_fmul
 807 020c D6F838A1 		ldr	r10, [r6, #312]	@ float
 808 0210 0346     		mov	r3, r0
 809 0212 5146     		mov	r1, r10
 810 0214 4846     		mov	r0, r9
 811 0216 0493     		str	r3, [sp, #16]
 812 0218 FFF7FEFF 		bl	__aeabi_fmul
 813 021c 049B     		ldr	r3, [sp, #16]
 814 021e 0146     		mov	r1, r0
 815 0220 1846     		mov	r0, r3
 816 0222 FFF7FEFF 		bl	__aeabi_fadd
 817 0226 8146     		mov	r9, r0
 818 0228 D8F8E805 		ldr	r0, [r8, #1512]	@ float
 819 022c 0146     		mov	r1, r0
 820 022e FFF7FEFF 		bl	__aeabi_fadd
 821 0232 0146     		mov	r1, r0
 822 0234 5046     		mov	r0, r10
 823 0236 FFF7FEFF 		bl	__aeabi_fmul
 824 023a 0146     		mov	r1, r0
 825 023c 5846     		mov	r0, fp
 826 023e FFF7FEFF 		bl	__aeabi_fmul
 827 0242 0146     		mov	r1, r0
 828 0244 4846     		mov	r0, r9
 829 0246 03E7     		b	.L75
 830              	.L68:
 831 0248 FFF7FEFF 		bl	__aeabi_i2f
 832 024c D6F84031 		ldr	r3, [r6, #320]	@ float
 833 0250 8246     		mov	r10, r0
 834 0252 B868     		ldr	r0, [r7, #8]
 835 0254 0593     		str	r3, [sp, #20]	@ float
 836 0256 FFF7FEFF 		bl	__aeabi_i2f
 837 025a 0599     		ldr	r1, [sp, #20]	@ float
 838 025c 8146     		mov	r9, r0
 839 025e 5046     		mov	r0, r10
 840 0260 FFF7FEFF 		bl	__aeabi_fmul
 841 0264 D6F838B1 		ldr	fp, [r6, #312]	@ float
 842 0268 0346     		mov	r3, r0
 843 026a 5946     		mov	r1, fp
 844 026c 4846     		mov	r0, r9
 845 026e 0493     		str	r3, [sp, #16]
 846 0270 FFF7FEFF 		bl	__aeabi_fmul
 847 0274 049B     		ldr	r3, [sp, #16]
 848 0276 0146     		mov	r1, r0
 849 0278 1846     		mov	r0, r3
 850 027a FFF7FEFF 		bl	__aeabi_fsub
 851 027e 0346     		mov	r3, r0
 852 0280 D8F8E405 		ldr	r0, [r8, #1508]	@ float
 853 0284 0493     		str	r3, [sp, #16]
 854 0286 0146     		mov	r1, r0
 855 0288 FFF7FEFF 		bl	__aeabi_fadd
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 16


 856 028c 0146     		mov	r1, r0
 857 028e 5846     		mov	r0, fp
 858 0290 FFF7FEFF 		bl	__aeabi_fmul
 859 0294 0146     		mov	r1, r0
 860 0296 0598     		ldr	r0, [sp, #20]	@ float
 861 0298 FFF7FEFF 		bl	__aeabi_fmul
 862 029c 049B     		ldr	r3, [sp, #16]
 863 029e 0146     		mov	r1, r0
 864 02a0 1846     		mov	r0, r3
 865 02a2 FFF7FEFF 		bl	__aeabi_fdiv
 866 02a6 2060     		str	r0, [r4]	@ float
 867 02a8 7868     		ldr	r0, [r7, #4]
 868 02aa FFF7FEFF 		bl	__aeabi_i2f
 869 02ae D6F83C11 		ldr	r1, [r6, #316]	@ float
 870 02b2 FFF7FEFF 		bl	__aeabi_fdiv
 871 02b6 6060     		str	r0, [r4, #4]	@ float
 872 02b8 D6F840B1 		ldr	fp, [r6, #320]	@ float
 873 02bc 5046     		mov	r0, r10
 874 02be D6F83861 		ldr	r6, [r6, #312]	@ float
 875 02c2 4BE7     		b	.L76
 876              	.L80:
 877              		.align	2
 878              	.L79:
 879 02c4 00000000 		.word	reprap
 880              		.size	_ZNK4Move17MachineToEndPointEPKlPfj, .-_ZNK4Move17MachineToEndPointEPKlPfj
 881              		.section	.text._ZNK4Move11MotorFactorEjPKf,"ax",%progbits
 882              		.align	2
 883              		.global	_ZNK4Move11MotorFactorEjPKf
 884              		.thumb
 885              		.thumb_func
 886              		.type	_ZNK4Move11MotorFactorEjPKf, %function
 887              	_ZNK4Move11MotorFactorEjPKf:
 888              		@ args = 0, pretend = 0, frame = 0
 889              		@ frame_needed = 0, uses_anonymous_args = 0
 890 0000 0129     		cmp	r1, #1
 891 0002 70B5     		push	{r4, r5, r6, lr}
 892 0004 0446     		mov	r4, r0
 893 0006 1546     		mov	r5, r2
 894 0008 25D0     		beq	.L83
 895 000a 1AD3     		bcc	.L84
 896 000c 0229     		cmp	r1, #2
 897 000e 15D1     		bne	.L82
 898 0010 D0F8E035 		ldr	r3, [r0, #1504]
 899 0014 022B     		cmp	r3, #2
 900 0016 34D0     		beq	.L91
 901 0018 032B     		cmp	r3, #3
 902 001a 0FD1     		bne	.L82
 903 001c 9068     		ldr	r0, [r2, #8]	@ float
 904 001e D4F8EC15 		ldr	r1, [r4, #1516]	@ float
 905 0022 FFF7FEFF 		bl	__aeabi_fmul
 906 0026 D4F8E815 		ldr	r1, [r4, #1512]	@ float
 907 002a 0646     		mov	r6, r0
 908 002c 6868     		ldr	r0, [r5, #4]	@ float
 909 002e FFF7FEFF 		bl	__aeabi_fmul
 910 0032 0146     		mov	r1, r0
 911 0034 3046     		mov	r0, r6
 912 0036 FFF7FEFF 		bl	__aeabi_fsub
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 17


 913 003a 70BD     		pop	{r4, r5, r6, pc}
 914              	.L82:
 915 003c 55F82100 		ldr	r0, [r5, r1, lsl #2]	@ float
 916 0040 70BD     		pop	{r4, r5, r6, pc}
 917              	.L84:
 918 0042 D0F8E035 		ldr	r3, [r0, #1504]
 919 0046 012B     		cmp	r3, #1
 920 0048 2FD0     		beq	.L86
 921 004a 022B     		cmp	r3, #2
 922 004c F6D1     		bne	.L82
 923 004e 1068     		ldr	r0, [r2]	@ float
 924 0050 D4F8E415 		ldr	r1, [r4, #1508]	@ float
 925 0054 08E0     		b	.L93
 926              	.L83:
 927 0056 D0F8E035 		ldr	r3, [r0, #1504]
 928 005a 012B     		cmp	r3, #1
 929 005c 21D0     		beq	.L89
 930 005e 032B     		cmp	r3, #3
 931 0060 ECD1     		bne	.L82
 932 0062 5068     		ldr	r0, [r2, #4]	@ float
 933 0064 D4F8E815 		ldr	r1, [r4, #1512]	@ float
 934              	.L93:
 935 0068 FFF7FEFF 		bl	__aeabi_fmul
 936 006c D4F8EC15 		ldr	r1, [r4, #1516]	@ float
 937 0070 0646     		mov	r6, r0
 938 0072 A868     		ldr	r0, [r5, #8]	@ float
 939 0074 FFF7FEFF 		bl	__aeabi_fmul
 940 0078 0146     		mov	r1, r0
 941 007a 3046     		mov	r0, r6
 942 007c FFF7FEFF 		bl	__aeabi_fadd
 943 0080 70BD     		pop	{r4, r5, r6, pc}
 944              	.L91:
 945 0082 9068     		ldr	r0, [r2, #8]	@ float
 946 0084 D4F8EC15 		ldr	r1, [r4, #1516]	@ float
 947              	.L94:
 948 0088 FFF7FEFF 		bl	__aeabi_fmul
 949 008c D4F8E415 		ldr	r1, [r4, #1508]	@ float
 950 0090 0646     		mov	r6, r0
 951 0092 2868     		ldr	r0, [r5]	@ float
 952 0094 FFF7FEFF 		bl	__aeabi_fmul
 953 0098 0146     		mov	r1, r0
 954 009a 3046     		mov	r0, r6
 955 009c FFF7FEFF 		bl	__aeabi_fsub
 956 00a0 70BD     		pop	{r4, r5, r6, pc}
 957              	.L89:
 958 00a2 5068     		ldr	r0, [r2, #4]	@ float
 959 00a4 D4F8E815 		ldr	r1, [r4, #1512]	@ float
 960 00a8 EEE7     		b	.L94
 961              	.L86:
 962 00aa 1068     		ldr	r0, [r2]	@ float
 963 00ac D4F8E415 		ldr	r1, [r4, #1508]	@ float
 964 00b0 FFF7FEFF 		bl	__aeabi_fmul
 965 00b4 D4F8E815 		ldr	r1, [r4, #1512]	@ float
 966 00b8 0646     		mov	r6, r0
 967 00ba 6868     		ldr	r0, [r5, #4]	@ float
 968 00bc FFF7FEFF 		bl	__aeabi_fmul
 969 00c0 0146     		mov	r1, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 18


 970 00c2 3046     		mov	r0, r6
 971 00c4 FFF7FEFF 		bl	__aeabi_fadd
 972 00c8 70BD     		pop	{r4, r5, r6, pc}
 973              		.size	_ZNK4Move11MotorFactorEjPKf, .-_ZNK4Move11MotorFactorEjPKf
 974 00ca 00BF     		.section	.text._ZNK4Move14MotorTransformEPKfPl,"ax",%progbits
 975              		.align	2
 976              		.global	_ZNK4Move14MotorTransformEPKfPl
 977              		.thumb
 978              		.thumb_func
 979              		.type	_ZNK4Move14MotorTransformEPKfPl, %function
 980              	_ZNK4Move14MotorTransformEPKfPl:
 981              		@ args = 0, pretend = 0, frame = 0
 982              		@ frame_needed = 0, uses_anonymous_args = 0
 983 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 984 0004 90F86C44 		ldrb	r4, [r0, #1132]	@ zero_extendqisi2
 985 0008 88B0     		sub	sp, sp, #32
 986 000a 8146     		mov	r9, r0
 987 000c 0F46     		mov	r7, r1
 988 000e 1646     		mov	r6, r2
 989 0010 DFF8C880 		ldr	r8, .L106
 990 0014 002C     		cmp	r4, #0
 991 0016 3FD0     		beq	.L96
 992 0018 00F23449 		addw	r9, r0, #1076
 993 001c 151F     		subs	r5, r2, #4
 994 001e 0024     		movs	r4, #0
 995              	.L98:
 996 0020 2246     		mov	r2, r4
 997 0022 3946     		mov	r1, r7
 998 0024 4846     		mov	r0, r9
 999 0026 FFF7FEFF 		bl	_ZNK15DeltaParameters9TransformEPKfj
 1000 002a D8F80030 		ldr	r3, [r8]
 1001 002e 04F14E02 		add	r2, r4, #78
 1002 0032 53F82210 		ldr	r1, [r3, r2, lsl #2]	@ float
 1003 0036 FFF7FEFF 		bl	__aeabi_fmul
 1004 003a FFF7FEFF 		bl	roundf
 1005 003e FFF7FEFF 		bl	__aeabi_f2iz
 1006 0042 0134     		adds	r4, r4, #1
 1007 0044 032C     		cmp	r4, #3
 1008 0046 45F8040F 		str	r0, [r5, #4]!
 1009 004a 244B     		ldr	r3, .L106
 1010 004c E8D1     		bne	.L98
 1011 004e B3F84030 		ldrh	r3, [r3, #64]
 1012 0052 03F05003 		and	r3, r3, #80
 1013 0056 502B     		cmp	r3, #80
 1014 0058 1BD1     		bne	.L95
 1015 005a 3868     		ldr	r0, [r7]	@ float
 1016 005c FFF7FEFF 		bl	__aeabi_f2d
 1017 0060 0446     		mov	r4, r0
 1018 0062 7868     		ldr	r0, [r7, #4]	@ float
 1019 0064 0D46     		mov	r5, r1
 1020 0066 FFF7FEFF 		bl	__aeabi_f2d
 1021 006a CDE90001 		strd	r0, [sp]
 1022 006e B868     		ldr	r0, [r7, #8]	@ float
 1023 0070 FFF7FEFF 		bl	__aeabi_f2d
 1024 0074 D6F800E0 		ldr	lr, [r6]
 1025 0078 7768     		ldr	r7, [r6, #4]
 1026 007a B668     		ldr	r6, [r6, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 19


 1027 007c 2246     		mov	r2, r4
 1028 007e CDE90201 		strd	r0, [sp, #8]
 1029 0082 2B46     		mov	r3, r5
 1030 0084 CDF810E0 		str	lr, [sp, #16]
 1031 0088 0597     		str	r7, [sp, #20]
 1032 008a 0696     		str	r6, [sp, #24]
 1033 008c 1448     		ldr	r0, .L106+4
 1034 008e FFF7FEFF 		bl	debugPrintf
 1035              	.L95:
 1036 0092 08B0     		add	sp, sp, #32
 1037              		@ sp needed
 1038 0094 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1039              	.L96:
 1040 0098 D8F81030 		ldr	r3, [r8, #16]
 1041 009c D3F884A1 		ldr	r10, [r3, #388]
 1042 00a0 BAF1000F 		cmp	r10, #0
 1043 00a4 F5D0     		beq	.L95
 1044 00a6 151F     		subs	r5, r2, #4
 1045              	.L102:
 1046 00a8 3A46     		mov	r2, r7
 1047 00aa 2146     		mov	r1, r4
 1048 00ac 4846     		mov	r0, r9
 1049 00ae FFF7FEFF 		bl	_ZNK4Move11MotorFactorEjPKf
 1050 00b2 D8F80030 		ldr	r3, [r8]
 1051 00b6 04F14E06 		add	r6, r4, #78
 1052 00ba 53F82610 		ldr	r1, [r3, r6, lsl #2]	@ float
 1053 00be FFF7FEFF 		bl	__aeabi_fmul
 1054 00c2 FFF7FEFF 		bl	roundf
 1055 00c6 FFF7FEFF 		bl	__aeabi_f2iz
 1056 00ca 0134     		adds	r4, r4, #1
 1057 00cc 5445     		cmp	r4, r10
 1058 00ce 45F8040F 		str	r0, [r5, #4]!
 1059 00d2 E9D1     		bne	.L102
 1060 00d4 08B0     		add	sp, sp, #32
 1061              		@ sp needed
 1062 00d6 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1063              	.L107:
 1064 00da 00BF     		.align	2
 1065              	.L106:
 1066 00dc 00000000 		.word	reprap
 1067 00e0 1C010000 		.word	.LC13
 1068              		.size	_ZNK4Move14MotorTransformEPKfPl, .-_ZNK4Move14MotorTransformEPKfPl
 1069              		.section	.text._ZNK4Move17EndPointToMachineEPKfPlj,"ax",%progbits
 1070              		.align	2
 1071              		.global	_ZNK4Move17EndPointToMachineEPKfPlj
 1072              		.thumb
 1073              		.thumb_func
 1074              		.type	_ZNK4Move17EndPointToMachineEPKfPlj, %function
 1075              	_ZNK4Move17EndPointToMachineEPKfPlj:
 1076              		@ args = 0, pretend = 0, frame = 0
 1077              		@ frame_needed = 0, uses_anonymous_args = 0
 1078 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1079 0004 DFF84C80 		ldr	r8, .L112
 1080 0008 1F46     		mov	r7, r3
 1081 000a 8A46     		mov	r10, r1
 1082 000c 9146     		mov	r9, r2
 1083 000e FFF7FEFF 		bl	_ZNK4Move14MotorTransformEPKfPl
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 20


 1084 0012 D8F81030 		ldr	r3, [r8, #16]
 1085 0016 D3F88441 		ldr	r4, [r3, #388]
 1086 001a A742     		cmp	r7, r4
 1087 001c 18D9     		bls	.L108
 1088 001e A300     		lsls	r3, r4, #2
 1089 0020 9A44     		add	r10, r10, r3
 1090 0022 9944     		add	r9, r9, r3
 1091 0024 0025     		movs	r5, #0
 1092              	.L111:
 1093 0026 D8F80000 		ldr	r0, [r8]
 1094 002a 04F14E06 		add	r6, r4, #78
 1095 002e 50F82610 		ldr	r1, [r0, r6, lsl #2]	@ float
 1096 0032 5AF80500 		ldr	r0, [r10, r5]	@ float
 1097 0036 FFF7FEFF 		bl	__aeabi_fmul
 1098 003a FFF7FEFF 		bl	roundf
 1099 003e FFF7FEFF 		bl	__aeabi_f2iz
 1100 0042 0134     		adds	r4, r4, #1
 1101 0044 BC42     		cmp	r4, r7
 1102 0046 49F80500 		str	r0, [r9, r5]
 1103 004a 05F10405 		add	r5, r5, #4
 1104 004e EAD1     		bne	.L111
 1105              	.L108:
 1106 0050 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1107              	.L113:
 1108              		.align	2
 1109              	.L112:
 1110 0054 00000000 		.word	reprap
 1111              		.size	_ZNK4Move17EndPointToMachineEPKfPlj, .-_ZNK4Move17EndPointToMachineEPKfPlj
 1112              		.section	.text._ZNK4Move13AxisTransformEPf,"ax",%progbits
 1113              		.align	2
 1114              		.global	_ZNK4Move13AxisTransformEPf
 1115              		.thumb
 1116              		.thumb_func
 1117              		.type	_ZNK4Move13AxisTransformEPf, %function
 1118              	_ZNK4Move13AxisTransformEPf:
 1119              		@ args = 0, pretend = 0, frame = 0
 1120              		@ frame_needed = 0, uses_anonymous_args = 0
 1121 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1122 0004 4F68     		ldr	r7, [r1, #4]	@ float
 1123 0006 0546     		mov	r5, r0
 1124 0008 8E68     		ldr	r6, [r1, #8]	@ float
 1125 000a 0C46     		mov	r4, r1
 1126 000c 3846     		mov	r0, r7
 1127 000e D5F8C413 		ldr	r1, [r5, #964]	@ float
 1128 0012 FFF7FEFF 		bl	__aeabi_fmul
 1129 0016 D5F8CC13 		ldr	r1, [r5, #972]	@ float
 1130 001a 8046     		mov	r8, r0
 1131 001c 3046     		mov	r0, r6
 1132 001e FFF7FEFF 		bl	__aeabi_fmul
 1133 0022 0146     		mov	r1, r0
 1134 0024 4046     		mov	r0, r8
 1135 0026 FFF7FEFF 		bl	__aeabi_fadd
 1136 002a 0146     		mov	r1, r0
 1137 002c 2068     		ldr	r0, [r4]	@ float
 1138 002e FFF7FEFF 		bl	__aeabi_fadd
 1139 0032 2060     		str	r0, [r4]	@ float
 1140 0034 D5F8C813 		ldr	r1, [r5, #968]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 21


 1141 0038 3046     		mov	r0, r6
 1142 003a FFF7FEFF 		bl	__aeabi_fmul
 1143 003e 0146     		mov	r1, r0
 1144 0040 3846     		mov	r0, r7
 1145 0042 FFF7FEFF 		bl	__aeabi_fadd
 1146 0046 6060     		str	r0, [r4, #4]	@ float
 1147 0048 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1148              		.size	_ZNK4Move13AxisTransformEPf, .-_ZNK4Move13AxisTransformEPf
 1149              		.section	.text._ZNK4Move20InverseAxisTransformEPf,"ax",%progbits
 1150              		.align	2
 1151              		.global	_ZNK4Move20InverseAxisTransformEPf
 1152              		.thumb
 1153              		.thumb_func
 1154              		.type	_ZNK4Move20InverseAxisTransformEPf, %function
 1155              	_ZNK4Move20InverseAxisTransformEPf:
 1156              		@ args = 0, pretend = 0, frame = 0
 1157              		@ frame_needed = 0, uses_anonymous_args = 0
 1158 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1159 0002 8E68     		ldr	r6, [r1, #8]	@ float
 1160 0004 0C46     		mov	r4, r1
 1161 0006 0546     		mov	r5, r0
 1162 0008 D0F8C813 		ldr	r1, [r0, #968]	@ float
 1163 000c 3046     		mov	r0, r6
 1164 000e FFF7FEFF 		bl	__aeabi_fmul
 1165 0012 0146     		mov	r1, r0
 1166 0014 6068     		ldr	r0, [r4, #4]	@ float
 1167 0016 FFF7FEFF 		bl	__aeabi_fsub
 1168 001a 6060     		str	r0, [r4, #4]	@ float
 1169 001c D5F8C413 		ldr	r1, [r5, #964]	@ float
 1170 0020 FFF7FEFF 		bl	__aeabi_fmul
 1171 0024 D5F8CC13 		ldr	r1, [r5, #972]	@ float
 1172 0028 0746     		mov	r7, r0
 1173 002a 3046     		mov	r0, r6
 1174 002c FFF7FEFF 		bl	__aeabi_fmul
 1175 0030 0146     		mov	r1, r0
 1176 0032 3846     		mov	r0, r7
 1177 0034 FFF7FEFF 		bl	__aeabi_fadd
 1178 0038 0146     		mov	r1, r0
 1179 003a 2068     		ldr	r0, [r4]	@ float
 1180 003c FFF7FEFF 		bl	__aeabi_fsub
 1181 0040 2060     		str	r0, [r4]	@ float
 1182 0042 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1183              		.size	_ZNK4Move20InverseAxisTransformEPf, .-_ZNK4Move20InverseAxisTransformEPf
 1184              		.section	.text._ZN4Move20SetIdentityTransformEv,"ax",%progbits
 1185              		.align	2
 1186              		.global	_ZN4Move20SetIdentityTransformEv
 1187              		.thumb
 1188              		.thumb_func
 1189              		.type	_ZN4Move20SetIdentityTransformEv, %function
 1190              	_ZN4Move20SetIdentityTransformEv:
 1191              		@ args = 0, pretend = 0, frame = 0
 1192              		@ frame_needed = 0, uses_anonymous_args = 0
 1193 0000 38B5     		push	{r3, r4, r5, lr}
 1194 0002 00F57A75 		add	r5, r0, #1000
 1195 0006 0024     		movs	r4, #0
 1196 0008 C0F8D043 		str	r4, [r0, #976]
 1197 000c 2846     		mov	r0, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 22


 1198 000e FFF7FEFF 		bl	_ZN9HeightMap16ClearGridHeightsEv
 1199 0012 2846     		mov	r0, r5
 1200 0014 2146     		mov	r1, r4
 1201 0016 BDE83840 		pop	{r3, r4, r5, lr}
 1202 001a FFF7FEBF 		b	_ZN9HeightMap12UseHeightMapEb
 1203              		.size	_ZN4Move20SetIdentityTransformEv, .-_ZN4Move20SetIdentityTransformEv
 1204              		.global	__aeabi_fcmpgt
 1205 001e 00BF     		.section	.text._ZN4Move14SetTaperHeightEf,"ax",%progbits
 1206              		.align	2
 1207              		.global	_ZN4Move14SetTaperHeightEf
 1208              		.thumb
 1209              		.thumb_func
 1210              		.type	_ZN4Move14SetTaperHeightEf, %function
 1211              	_ZN4Move14SetTaperHeightEf:
 1212              		@ args = 0, pretend = 0, frame = 0
 1213              		@ frame_needed = 0, uses_anonymous_args = 0
 1214 0000 38B5     		push	{r3, r4, r5, lr}
 1215 0002 0D46     		mov	r5, r1
 1216 0004 0446     		mov	r4, r0
 1217 0006 4FF07E51 		mov	r1, #1065353216
 1218 000a 2846     		mov	r0, r5
 1219 000c FFF7FEFF 		bl	__aeabi_fcmpgt
 1220 0010 4FF00103 		mov	r3, #1
 1221 0014 00B9     		cbnz	r0, .L118
 1222 0016 0346     		mov	r3, r0
 1223              	.L118:
 1224 0018 13F0FF0F 		tst	r3, #255
 1225 001c 84F8E433 		strb	r3, [r4, #996]
 1226 0020 08D0     		beq	.L117
 1227 0022 C4F8DC53 		str	r5, [r4, #988]	@ float
 1228 0026 2946     		mov	r1, r5
 1229 0028 4FF07E50 		mov	r0, #1065353216
 1230 002c FFF7FEFF 		bl	__aeabi_fdiv
 1231 0030 C4F8E003 		str	r0, [r4, #992]	@ float
 1232              	.L117:
 1233 0034 38BD     		pop	{r3, r4, r5, pc}
 1234              		.size	_ZN4Move14SetTaperHeightEf, .-_ZN4Move14SetTaperHeightEf
 1235 0036 00BF     		.section	.text._ZNK4Move16AxisCompensationEa,"ax",%progbits
 1236              		.align	2
 1237              		.global	_ZNK4Move16AxisCompensationEa
 1238              		.thumb
 1239              		.thumb_func
 1240              		.type	_ZNK4Move16AxisCompensationEa, %function
 1241              	_ZNK4Move16AxisCompensationEa:
 1242              		@ args = 0, pretend = 0, frame = 0
 1243              		@ frame_needed = 0, uses_anonymous_args = 0
 1244 0000 0129     		cmp	r1, #1
 1245 0002 08B5     		push	{r3, lr}
 1246 0004 10D0     		beq	.L125
 1247 0006 0229     		cmp	r1, #2
 1248 0008 0BD0     		beq	.L126
 1249 000a 39B1     		cbz	r1, .L130
 1250 000c 084B     		ldr	r3, .L131
 1251 000e 0621     		movs	r1, #6
 1252 0010 1868     		ldr	r0, [r3]
 1253 0012 084A     		ldr	r2, .L131+4
 1254 0014 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 23


 1255 0018 0020     		movs	r0, #0
 1256 001a 08BD     		pop	{r3, pc}
 1257              	.L130:
 1258 001c D0F8C403 		ldr	r0, [r0, #964]	@ float
 1259 0020 08BD     		pop	{r3, pc}
 1260              	.L126:
 1261 0022 D0F8CC03 		ldr	r0, [r0, #972]	@ float
 1262 0026 08BD     		pop	{r3, pc}
 1263              	.L125:
 1264 0028 D0F8C803 		ldr	r0, [r0, #968]	@ float
 1265 002c 08BD     		pop	{r3, pc}
 1266              	.L132:
 1267 002e 00BF     		.align	2
 1268              	.L131:
 1269 0030 00000000 		.word	reprap
 1270 0034 40010000 		.word	.LC14
 1271              		.size	_ZNK4Move16AxisCompensationEa, .-_ZNK4Move16AxisCompensationEa
 1272              		.section	.text._ZN4Move19SetAxisCompensationEaf,"ax",%progbits
 1273              		.align	2
 1274              		.global	_ZN4Move19SetAxisCompensationEaf
 1275              		.thumb
 1276              		.thumb_func
 1277              		.type	_ZN4Move19SetAxisCompensationEaf, %function
 1278              	_ZN4Move19SetAxisCompensationEaf:
 1279              		@ args = 0, pretend = 0, frame = 0
 1280              		@ frame_needed = 0, uses_anonymous_args = 0
 1281              		@ link register save eliminated.
 1282 0000 0129     		cmp	r1, #1
 1283 0002 0ED0     		beq	.L135
 1284 0004 0229     		cmp	r1, #2
 1285 0006 09D0     		beq	.L136
 1286 0008 29B1     		cbz	r1, .L140
 1287 000a 074B     		ldr	r3, .L141
 1288 000c 0621     		movs	r1, #6
 1289 000e 1868     		ldr	r0, [r3]
 1290 0010 064A     		ldr	r2, .L141+4
 1291 0012 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 1292              	.L140:
 1293 0016 C0F8C423 		str	r2, [r0, #964]	@ float
 1294 001a 7047     		bx	lr
 1295              	.L136:
 1296 001c C0F8CC23 		str	r2, [r0, #972]	@ float
 1297 0020 7047     		bx	lr
 1298              	.L135:
 1299 0022 C0F8C823 		str	r2, [r0, #968]	@ float
 1300 0026 7047     		bx	lr
 1301              	.L142:
 1302              		.align	2
 1303              	.L141:
 1304 0028 00000000 		.word	reprap
 1305 002c 74010000 		.word	.LC15
 1306              		.size	_ZN4Move19SetAxisCompensationEaf, .-_ZN4Move19SetAxisCompensationEaf
 1307              		.global	__aeabi_dsub
 1308              		.global	__aeabi_d2f
 1309              		.section	.text._ZNK4Move22BarycentricCoordinatesEjjjffRfS0_S0_,"ax",%progbits
 1310              		.align	2
 1311              		.global	_ZNK4Move22BarycentricCoordinatesEjjjffRfS0_S0_
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 24


 1312              		.thumb
 1313              		.thumb_func
 1314              		.type	_ZNK4Move22BarycentricCoordinatesEjjjffRfS0_S0_, %function
 1315              	_ZNK4Move22BarycentricCoordinatesEjjjffRfS0_S0_:
 1316              		@ args = 20, pretend = 0, frame = 0
 1317              		@ frame_needed = 0, uses_anonymous_args = 0
 1318 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1319 0004 00EB8306 		add	r6, r0, r3, lsl #2
 1320 0008 D6F87053 		ldr	r5, [r6, #880]	@ float
 1321 000c 00EB8207 		add	r7, r0, r2, lsl #2
 1322 0010 8A46     		mov	r10, r1
 1323 0012 0446     		mov	r4, r0
 1324 0014 2946     		mov	r1, r5
 1325 0016 D7F87003 		ldr	r0, [r7, #880]	@ float
 1326 001a FFF7FEFF 		bl	__aeabi_fsub
 1327 001e D6F85C63 		ldr	r6, [r6, #860]	@ float
 1328 0022 8146     		mov	r9, r0
 1329 0024 3146     		mov	r1, r6
 1330 0026 0A98     		ldr	r0, [sp, #40]	@ float
 1331 0028 FFF7FEFF 		bl	__aeabi_fsub
 1332 002c D7F85C13 		ldr	r1, [r7, #860]	@ float
 1333 0030 8046     		mov	r8, r0
 1334 0032 3046     		mov	r0, r6
 1335 0034 FFF7FEFF 		bl	__aeabi_fsub
 1336 0038 0B9F     		ldr	r7, [sp, #44]	@ float
 1337 003a 04EB8A04 		add	r4, r4, r10, lsl #2
 1338 003e 2946     		mov	r1, r5
 1339 0040 8246     		mov	r10, r0
 1340 0042 3846     		mov	r0, r7
 1341 0044 FFF7FEFF 		bl	__aeabi_fsub
 1342 0048 3146     		mov	r1, r6
 1343 004a 0746     		mov	r7, r0
 1344 004c D4F85C03 		ldr	r0, [r4, #860]	@ float
 1345 0050 FFF7FEFF 		bl	__aeabi_fsub
 1346 0054 2946     		mov	r1, r5
 1347 0056 0646     		mov	r6, r0
 1348 0058 D4F87003 		ldr	r0, [r4, #880]	@ float
 1349 005c FFF7FEFF 		bl	__aeabi_fsub
 1350 0060 3146     		mov	r1, r6
 1351 0062 8346     		mov	fp, r0
 1352 0064 4846     		mov	r0, r9
 1353 0066 FFF7FEFF 		bl	__aeabi_fmul
 1354 006a 5946     		mov	r1, fp
 1355 006c 0446     		mov	r4, r0
 1356 006e 5046     		mov	r0, r10
 1357 0070 FFF7FEFF 		bl	__aeabi_fmul
 1358 0074 0146     		mov	r1, r0
 1359 0076 2046     		mov	r0, r4
 1360 0078 FFF7FEFF 		bl	__aeabi_fadd
 1361 007c 0146     		mov	r1, r0
 1362 007e 4FF07E50 		mov	r0, #1065353216
 1363 0082 FFF7FEFF 		bl	__aeabi_fdiv
 1364 0086 4146     		mov	r1, r8
 1365 0088 0546     		mov	r5, r0
 1366 008a 4846     		mov	r0, r9
 1367 008c FFF7FEFF 		bl	__aeabi_fmul
 1368 0090 3946     		mov	r1, r7
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 25


 1369 0092 0446     		mov	r4, r0
 1370 0094 5046     		mov	r0, r10
 1371 0096 FFF7FEFF 		bl	__aeabi_fmul
 1372 009a 0146     		mov	r1, r0
 1373 009c 2046     		mov	r0, r4
 1374 009e FFF7FEFF 		bl	__aeabi_fadd
 1375 00a2 2946     		mov	r1, r5
 1376 00a4 FFF7FEFF 		bl	__aeabi_fmul
 1377 00a8 0C9C     		ldr	r4, [sp, #48]
 1378 00aa 0BF1004B 		add	fp, fp, #-2147483648
 1379 00ae 4146     		mov	r1, r8
 1380 00b0 2060     		str	r0, [r4]	@ float
 1381 00b2 5846     		mov	r0, fp
 1382 00b4 FFF7FEFF 		bl	__aeabi_fmul
 1383 00b8 3946     		mov	r1, r7
 1384 00ba 8046     		mov	r8, r0
 1385 00bc 3046     		mov	r0, r6
 1386 00be FFF7FEFF 		bl	__aeabi_fmul
 1387 00c2 0146     		mov	r1, r0
 1388 00c4 4046     		mov	r0, r8
 1389 00c6 FFF7FEFF 		bl	__aeabi_fadd
 1390 00ca 2946     		mov	r1, r5
 1391 00cc FFF7FEFF 		bl	__aeabi_fmul
 1392 00d0 0D9D     		ldr	r5, [sp, #52]
 1393 00d2 0646     		mov	r6, r0
 1394 00d4 2860     		str	r0, [r5]	@ float
 1395 00d6 2068     		ldr	r0, [r4]	@ float
 1396 00d8 FFF7FEFF 		bl	__aeabi_f2d
 1397 00dc 0246     		mov	r2, r0
 1398 00de 0B46     		mov	r3, r1
 1399 00e0 0020     		movs	r0, #0
 1400 00e2 0A49     		ldr	r1, .L144
 1401 00e4 FFF7FEFF 		bl	__aeabi_dsub
 1402 00e8 0446     		mov	r4, r0
 1403 00ea 3046     		mov	r0, r6
 1404 00ec 0D46     		mov	r5, r1
 1405 00ee FFF7FEFF 		bl	__aeabi_f2d
 1406 00f2 0B46     		mov	r3, r1
 1407 00f4 0246     		mov	r2, r0
 1408 00f6 2946     		mov	r1, r5
 1409 00f8 2046     		mov	r0, r4
 1410 00fa FFF7FEFF 		bl	__aeabi_dsub
 1411 00fe FFF7FEFF 		bl	__aeabi_d2f
 1412 0102 0E9B     		ldr	r3, [sp, #56]
 1413 0104 1860     		str	r0, [r3]	@ float
 1414 0106 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1415              	.L145:
 1416 010a 00BF     		.align	2
 1417              	.L144:
 1418 010c 0000F03F 		.word	1072693248
 1419              		.size	_ZNK4Move22BarycentricCoordinatesEjjjffRfS0_S0_, .-_ZNK4Move22BarycentricCoordinatesEjjjffRf
 1420              		.section	.text._ZNK4Move9TriangleZEff,"ax",%progbits
 1421              		.align	2
 1422              		.global	_ZNK4Move9TriangleZEff
 1423              		.thumb
 1424              		.thumb_func
 1425              		.type	_ZNK4Move9TriangleZEff, %function
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 26


 1426              	_ZNK4Move9TriangleZEff:
 1427              		@ args = 0, pretend = 0, frame = 24
 1428              		@ frame_needed = 0, uses_anonymous_args = 0
 1429 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1430 0004 8DB0     		sub	sp, sp, #52
 1431 0006 0746     		mov	r7, r0
 1432 0008 8B46     		mov	fp, r1
 1433 000a 9246     		mov	r10, r2
 1434 000c 0024     		movs	r4, #0
 1435 000e 0DF12409 		add	r9, sp, #36
 1436              	.L153:
 1437 0012 0AAB     		add	r3, sp, #40
 1438 0014 04F10108 		add	r8, r4, #1
 1439 0018 0393     		str	r3, [sp, #12]
 1440 001a 08F00305 		and	r5, r8, #3
 1441 001e 0BAB     		add	r3, sp, #44
 1442 0020 0493     		str	r3, [sp, #16]
 1443 0022 2A46     		mov	r2, r5
 1444 0024 3846     		mov	r0, r7
 1445 0026 2146     		mov	r1, r4
 1446 0028 0423     		movs	r3, #4
 1447 002a CDF800B0 		str	fp, [sp]	@ float
 1448 002e CDF804A0 		str	r10, [sp, #4]	@ float
 1449 0032 CDF80890 		str	r9, [sp, #8]
 1450 0036 FFF7FEFF 		bl	_ZNK4Move22BarycentricCoordinatesEjjjffRfS0_S0_
 1451 003a 099E     		ldr	r6, [sp, #36]	@ float
 1452 003c 1F49     		ldr	r1, .L158
 1453 003e 3046     		mov	r0, r6
 1454 0040 FFF7FEFF 		bl	__aeabi_fcmpgt
 1455 0044 1D49     		ldr	r1, .L158
 1456 0046 60B1     		cbz	r0, .L147
 1457 0048 0A9B     		ldr	r3, [sp, #40]	@ float
 1458 004a 1846     		mov	r0, r3
 1459 004c 0693     		str	r3, [sp, #24]	@ float
 1460 004e FFF7FEFF 		bl	__aeabi_fcmpgt
 1461 0052 1A49     		ldr	r1, .L158
 1462 0054 28B1     		cbz	r0, .L147
 1463 0056 0B9B     		ldr	r3, [sp, #44]	@ float
 1464 0058 1846     		mov	r0, r3
 1465 005a 0793     		str	r3, [sp, #28]	@ float
 1466 005c FFF7FEFF 		bl	__aeabi_fcmpgt
 1467 0060 70B9     		cbnz	r0, .L157
 1468              	.L147:
 1469 0062 B8F1040F 		cmp	r8, #4
 1470 0066 01D0     		beq	.L152
 1471 0068 4446     		mov	r4, r8
 1472 006a D2E7     		b	.L153
 1473              	.L152:
 1474 006c 144B     		ldr	r3, .L158+4
 1475 006e 0621     		movs	r1, #6
 1476 0070 1868     		ldr	r0, [r3]
 1477 0072 144A     		ldr	r2, .L158+8
 1478 0074 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1479 0078 0020     		movs	r0, #0
 1480              	.L151:
 1481 007a 0DB0     		add	sp, sp, #52
 1482              		@ sp needed
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 27


 1483 007c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1484              	.L157:
 1485 0080 07EB8404 		add	r4, r7, r4, lsl #2
 1486 0084 D4F88413 		ldr	r1, [r4, #900]	@ float
 1487 0088 3046     		mov	r0, r6
 1488 008a FFF7FEFF 		bl	__aeabi_fmul
 1489 008e 07EB8505 		add	r5, r7, r5, lsl #2
 1490 0092 0446     		mov	r4, r0
 1491 0094 D5F88413 		ldr	r1, [r5, #900]	@ float
 1492 0098 0698     		ldr	r0, [sp, #24]	@ float
 1493 009a FFF7FEFF 		bl	__aeabi_fmul
 1494 009e 0146     		mov	r1, r0
 1495 00a0 2046     		mov	r0, r4
 1496 00a2 FFF7FEFF 		bl	__aeabi_fadd
 1497 00a6 D7F89413 		ldr	r1, [r7, #916]	@ float
 1498 00aa 0446     		mov	r4, r0
 1499 00ac 0798     		ldr	r0, [sp, #28]	@ float
 1500 00ae FFF7FEFF 		bl	__aeabi_fmul
 1501 00b2 0146     		mov	r1, r0
 1502 00b4 2046     		mov	r0, r4
 1503 00b6 FFF7FEFF 		bl	__aeabi_fadd
 1504 00ba DEE7     		b	.L151
 1505              	.L159:
 1506              		.align	2
 1507              	.L158:
 1508 00bc 6F1283BA 		.word	-1165815185
 1509 00c0 00000000 		.word	reprap
 1510 00c4 94010000 		.word	.LC16
 1511              		.size	_ZNK4Move9TriangleZEff, .-_ZNK4Move9TriangleZEff
 1512              		.global	__aeabi_fcmple
 1513              		.global	__aeabi_fcmpge
 1514              		.section	.text._ZNK4Move22GoodProbePointOrderingEj,"ax",%progbits
 1515              		.align	2
 1516              		.global	_ZNK4Move22GoodProbePointOrderingEj
 1517              		.thumb
 1518              		.thumb_func
 1519              		.type	_ZNK4Move22GoodProbePointOrderingEj, %function
 1520              	_ZNK4Move22GoodProbePointOrderingEj:
 1521              		@ args = 0, pretend = 0, frame = 8
 1522              		@ frame_needed = 0, uses_anonymous_args = 0
 1523 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1524 0004 0129     		cmp	r1, #1
 1525 0006 83B0     		sub	sp, sp, #12
 1526 0008 0C46     		mov	r4, r1
 1527 000a 8346     		mov	fp, r0
 1528 000c 6CD9     		bls	.L170
 1529 000e D0F8F850 		ldr	r5, [r0, #248]	@ float
 1530 0012 D0F8FC60 		ldr	r6, [r0, #252]	@ float
 1531 0016 2946     		mov	r1, r5
 1532 0018 3046     		mov	r0, r6
 1533 001a FFF7FEFF 		bl	__aeabi_fcmple
 1534 001e 0028     		cmp	r0, #0
 1535 0020 5ED1     		bne	.L173
 1536 0022 022C     		cmp	r4, #2
 1537 0024 60D0     		beq	.L170
 1538 0026 DBF88080 		ldr	r8, [fp, #128]	@ float
 1539 002a DBF87C70 		ldr	r7, [fp, #124]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 28


 1540 002e 4046     		mov	r0, r8
 1541 0030 3946     		mov	r1, r7
 1542 0032 FFF7FEFF 		bl	__aeabi_fcmple
 1543 0036 0028     		cmp	r0, #0
 1544 0038 52D1     		bne	.L173
 1545 003a 032C     		cmp	r4, #3
 1546 003c 54D0     		beq	.L170
 1547 003e DBF804A1 		ldr	r10, [fp, #260]	@ float
 1548 0042 DBF80091 		ldr	r9, [fp, #256]	@ float
 1549 0046 5046     		mov	r0, r10
 1550 0048 4946     		mov	r1, r9
 1551 004a FFF7FEFF 		bl	__aeabi_fcmpge
 1552 004e 0028     		cmp	r0, #0
 1553 0050 46D1     		bne	.L173
 1554 0052 DBF87820 		ldr	r2, [fp, #120]	@ float
 1555 0056 DBF88430 		ldr	r3, [fp, #132]	@ float
 1556 005a 1046     		mov	r0, r2
 1557 005c 1946     		mov	r1, r3
 1558 005e 0092     		str	r2, [sp]
 1559 0060 0193     		str	r3, [sp, #4]	@ float
 1560 0062 FFF7FEFF 		bl	__aeabi_fcmpge
 1561 0066 009A     		ldr	r2, [sp]
 1562 0068 0028     		cmp	r0, #0
 1563 006a 39D1     		bne	.L173
 1564 006c 042C     		cmp	r4, #4
 1565 006e 3BD0     		beq	.L170
 1566 0070 DBF88840 		ldr	r4, [fp, #136]	@ float
 1567 0074 1046     		mov	r0, r2
 1568 0076 2146     		mov	r1, r4
 1569 0078 FFF7FEFF 		bl	__aeabi_fcmpge
 1570 007c 0028     		cmp	r0, #0
 1571 007e 2FD1     		bne	.L173
 1572 0080 3846     		mov	r0, r7
 1573 0082 2146     		mov	r1, r4
 1574 0084 FFF7FEFF 		bl	__aeabi_fcmpge
 1575 0088 50BB     		cbnz	r0, .L173
 1576 008a 4046     		mov	r0, r8
 1577 008c 2146     		mov	r1, r4
 1578 008e FFF7FEFF 		bl	__aeabi_fcmple
 1579 0092 0746     		mov	r7, r0
 1580 0094 20BB     		cbnz	r0, .L173
 1581 0096 2146     		mov	r1, r4
 1582 0098 0198     		ldr	r0, [sp, #4]	@ float
 1583 009a FFF7FEFF 		bl	__aeabi_fcmple
 1584 009e 0446     		mov	r4, r0
 1585 00a0 30BB     		cbnz	r0, .L174
 1586 00a2 DBF80871 		ldr	r7, [fp, #264]	@ float
 1587 00a6 2846     		mov	r0, r5
 1588 00a8 3946     		mov	r1, r7
 1589 00aa FFF7FEFF 		bl	__aeabi_fcmpge
 1590 00ae 0546     		mov	r5, r0
 1591 00b0 00BB     		cbnz	r0, .L177
 1592 00b2 3046     		mov	r0, r6
 1593 00b4 3946     		mov	r1, r7
 1594 00b6 FFF7FEFF 		bl	__aeabi_fcmple
 1595 00ba 0446     		mov	r4, r0
 1596 00bc E0B9     		cbnz	r0, .L176
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 29


 1597 00be 4846     		mov	r0, r9
 1598 00c0 3946     		mov	r1, r7
 1599 00c2 FFF7FEFF 		bl	__aeabi_fcmple
 1600 00c6 A8B9     		cbnz	r0, .L177
 1601 00c8 5046     		mov	r0, r10
 1602 00ca 3946     		mov	r1, r7
 1603 00cc FFF7FEFF 		bl	__aeabi_fcmpge
 1604 00d0 4FF00103 		mov	r3, #1
 1605 00d4 00B9     		cbnz	r0, .L162
 1606 00d6 0346     		mov	r3, r0
 1607              	.L162:
 1608 00d8 83F00103 		eor	r3, r3, #1
 1609 00dc D8B2     		uxtb	r0, r3
 1610 00de 00E0     		b	.L161
 1611              	.L173:
 1612 00e0 0020     		movs	r0, #0
 1613              	.L161:
 1614 00e2 03B0     		add	sp, sp, #12
 1615              		@ sp needed
 1616 00e4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1617              	.L170:
 1618 00e8 0120     		movs	r0, #1
 1619 00ea 03B0     		add	sp, sp, #12
 1620              		@ sp needed
 1621 00ec BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1622              	.L174:
 1623 00f0 3846     		mov	r0, r7
 1624 00f2 F6E7     		b	.L161
 1625              	.L177:
 1626 00f4 2046     		mov	r0, r4
 1627 00f6 F4E7     		b	.L161
 1628              	.L176:
 1629 00f8 2846     		mov	r0, r5
 1630 00fa F2E7     		b	.L161
 1631              		.size	_ZNK4Move22GoodProbePointOrderingEj, .-_ZNK4Move22GoodProbePointOrderingEj
 1632              		.global	__aeabi_dadd
 1633              		.section	.text._ZN4Move20SetProbedBedEquationEjR9StringRef,"ax",%progbits
 1634              		.align	2
 1635              		.global	_ZN4Move20SetProbedBedEquationEjR9StringRef
 1636              		.thumb
 1637              		.thumb_func
 1638              		.type	_ZN4Move20SetProbedBedEquationEjR9StringRef, %function
 1639              	_ZN4Move20SetProbedBedEquationEjR9StringRef:
 1640              		@ args = 0, pretend = 0, frame = 48
 1641              		@ frame_needed = 0, uses_anonymous_args = 0
 1642 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1643 0004 91B0     		sub	sp, sp, #68
 1644 0006 1546     		mov	r5, r2
 1645 0008 0646     		mov	r6, r0
 1646 000a 0C46     		mov	r4, r1
 1647 000c FFF7FEFF 		bl	_ZNK4Move22GoodProbePointOrderingEj
 1648 0010 68B9     		cbnz	r0, .L179
 1649 0012 032C     		cmp	r4, #3
 1650 0014 1CD8     		bhi	.L194
 1651 0016 621E     		subs	r2, r4, #1
 1652 0018 2846     		mov	r0, r5
 1653 001a A949     		ldr	r1, .L196
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 30


 1654 001c FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 1655              	.L182:
 1656 0020 A849     		ldr	r1, .L196+4
 1657 0022 2846     		mov	r0, r5
 1658 0024 11B0     		add	sp, sp, #68
 1659              		@ sp needed
 1660 0026 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1661 002a FFF7FEBF 		b	_ZN9StringRef3catEPKc
 1662              	.L179:
 1663 002e 042C     		cmp	r4, #4
 1664 0030 1AD0     		beq	.L184
 1665 0032 052C     		cmp	r4, #5
 1666 0034 00F0E080 		beq	.L185
 1667 0038 032C     		cmp	r4, #3
 1668 003a 52D0     		beq	.L195
 1669 003c A24A     		ldr	r2, .L196+8
 1670 003e 2346     		mov	r3, r4
 1671 0040 1068     		ldr	r0, [r2]
 1672 0042 A24A     		ldr	r2, .L196+12
 1673 0044 0621     		movs	r1, #6
 1674 0046 11B0     		add	sp, sp, #68
 1675              		@ sp needed
 1676 0048 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1677 004c FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 1678              	.L194:
 1679 0050 2846     		mov	r0, r5
 1680 0052 9B49     		ldr	r1, .L196
 1681 0054 0322     		movs	r2, #3
 1682 0056 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 1683 005a 042C     		cmp	r4, #4
 1684 005c E0D0     		beq	.L182
 1685 005e 2846     		mov	r0, r5
 1686 0060 9B49     		ldr	r1, .L196+16
 1687 0062 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 1688 0066 DBE7     		b	.L182
 1689              	.L184:
 1690 0068 B16F     		ldr	r1, [r6, #120]	@ float
 1691 006a D6F88400 		ldr	r0, [r6, #132]	@ float
 1692 006e FFF7FEFF 		bl	__aeabi_fsub
 1693 0072 0146     		mov	r1, r0
 1694 0074 4FF07E50 		mov	r0, #1065353216
 1695 0078 FFF7FEFF 		bl	__aeabi_fdiv
 1696 007c D6F8F810 		ldr	r1, [r6, #248]	@ float
 1697 0080 C6F8D403 		str	r0, [r6, #980]	@ float
 1698 0084 D6F8FC00 		ldr	r0, [r6, #252]	@ float
 1699 0088 FFF7FEFF 		bl	__aeabi_fsub
 1700 008c 0146     		mov	r1, r0
 1701 008e 4FF07E50 		mov	r0, #1065353216
 1702 0092 FFF7FEFF 		bl	__aeabi_fdiv
 1703 0096 C6F8D803 		str	r0, [r6, #984]	@ float
 1704              	.L187:
 1705 009a C6F8D043 		str	r4, [r6, #976]
 1706 009e 2846     		mov	r0, r5
 1707 00a0 8C49     		ldr	r1, .L196+20
 1708 00a2 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 1709 00a6 7436     		adds	r6, r6, #116
 1710 00a8 0027     		movs	r7, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 31


 1711              	.L192:
 1712 00aa 56F8040F 		ldr	r0, [r6, #4]!	@ float
 1713 00ae FFF7FEFF 		bl	__aeabi_f2d
 1714 00b2 8046     		mov	r8, r0
 1715 00b4 D6F88000 		ldr	r0, [r6, #128]	@ float
 1716 00b8 8946     		mov	r9, r1
 1717 00ba FFF7FEFF 		bl	__aeabi_f2d
 1718 00be CDE90001 		strd	r0, [sp]
 1719 00c2 D6F80001 		ldr	r0, [r6, #256]	@ float
 1720 00c6 FFF7FEFF 		bl	__aeabi_f2d
 1721 00ca 0137     		adds	r7, r7, #1
 1722 00cc CDE90201 		strd	r0, [sp, #8]
 1723 00d0 4246     		mov	r2, r8
 1724 00d2 4B46     		mov	r3, r9
 1725 00d4 2846     		mov	r0, r5
 1726 00d6 8049     		ldr	r1, .L196+24
 1727 00d8 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 1728 00dc BC42     		cmp	r4, r7
 1729 00de E4D8     		bhi	.L192
 1730 00e0 9EE7     		b	.L182
 1731              	.L195:
 1732 00e2 F36F     		ldr	r3, [r6, #124]	@ float
 1733 00e4 B26F     		ldr	r2, [r6, #120]	@ float
 1734 00e6 1846     		mov	r0, r3
 1735 00e8 1146     		mov	r1, r2
 1736 00ea 0693     		str	r3, [sp, #24]
 1737 00ec 0792     		str	r2, [sp, #28]
 1738 00ee FFF7FEFF 		bl	__aeabi_fsub
 1739 00f2 D6F8FCC0 		ldr	ip, [r6, #252]	@ float
 1740 00f6 D6F8F8A0 		ldr	r10, [r6, #248]	@ float
 1741 00fa 8346     		mov	fp, r0
 1742 00fc 5146     		mov	r1, r10
 1743 00fe 6046     		mov	r0, ip
 1744 0100 CDF814C0 		str	ip, [sp, #20]
 1745 0104 FFF7FEFF 		bl	__aeabi_fsub
 1746 0108 D6F87C11 		ldr	r1, [r6, #380]	@ float
 1747 010c D6F87881 		ldr	r8, [r6, #376]	@ float
 1748 0110 8146     		mov	r9, r0
 1749 0112 0891     		str	r1, [sp, #32]	@ float
 1750 0114 0846     		mov	r0, r1
 1751 0116 4146     		mov	r1, r8
 1752 0118 FFF7FEFF 		bl	__aeabi_fsub
 1753 011c 079A     		ldr	r2, [sp, #28]
 1754 011e 0746     		mov	r7, r0
 1755 0120 1146     		mov	r1, r2
 1756 0122 D6F88000 		ldr	r0, [r6, #128]	@ float
 1757 0126 FFF7FEFF 		bl	__aeabi_fsub
 1758 012a 5146     		mov	r1, r10
 1759 012c 0990     		str	r0, [sp, #36]	@ float
 1760 012e D6F80001 		ldr	r0, [r6, #256]	@ float
 1761 0132 FFF7FEFF 		bl	__aeabi_fsub
 1762 0136 4146     		mov	r1, r8
 1763 0138 8246     		mov	r10, r0
 1764 013a D6F88001 		ldr	r0, [r6, #384]	@ float
 1765 013e FFF7FEFF 		bl	__aeabi_fsub
 1766 0142 0246     		mov	r2, r0
 1767 0144 1146     		mov	r1, r2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 32


 1768 0146 4846     		mov	r0, r9
 1769 0148 0792     		str	r2, [sp, #28]
 1770 014a FFF7FEFF 		bl	__aeabi_fmul
 1771 014e 5146     		mov	r1, r10
 1772 0150 8046     		mov	r8, r0
 1773 0152 3846     		mov	r0, r7
 1774 0154 FFF7FEFF 		bl	__aeabi_fmul
 1775 0158 0146     		mov	r1, r0
 1776 015a 4046     		mov	r0, r8
 1777 015c FFF7FEFF 		bl	__aeabi_fsub
 1778 0160 0999     		ldr	r1, [sp, #36]	@ float
 1779 0162 8046     		mov	r8, r0
 1780 0164 3846     		mov	r0, r7
 1781 0166 FFF7FEFF 		bl	__aeabi_fmul
 1782 016a 079A     		ldr	r2, [sp, #28]
 1783 016c 0746     		mov	r7, r0
 1784 016e 1146     		mov	r1, r2
 1785 0170 5846     		mov	r0, fp
 1786 0172 FFF7FEFF 		bl	__aeabi_fmul
 1787 0176 0146     		mov	r1, r0
 1788 0178 3846     		mov	r0, r7
 1789 017a FFF7FEFF 		bl	__aeabi_fsub
 1790 017e 5146     		mov	r1, r10
 1791 0180 0746     		mov	r7, r0
 1792 0182 5846     		mov	r0, fp
 1793 0184 FFF7FEFF 		bl	__aeabi_fmul
 1794 0188 0999     		ldr	r1, [sp, #36]	@ float
 1795 018a 8246     		mov	r10, r0
 1796 018c 4846     		mov	r0, r9
 1797 018e FFF7FEFF 		bl	__aeabi_fmul
 1798 0192 0146     		mov	r1, r0
 1799 0194 5046     		mov	r0, r10
 1800 0196 FFF7FEFF 		bl	__aeabi_fsub
 1801 019a 8146     		mov	r9, r0
 1802 019c 4946     		mov	r1, r9
 1803 019e 08F10040 		add	r0, r8, #-2147483648
 1804 01a2 FFF7FEFF 		bl	__aeabi_fdiv
 1805 01a6 07F10042 		add	r2, r7, #-2147483648
 1806 01aa C6F8B803 		str	r0, [r6, #952]	@ float
 1807 01ae 4946     		mov	r1, r9
 1808 01b0 1046     		mov	r0, r2
 1809 01b2 FFF7FEFF 		bl	__aeabi_fdiv
 1810 01b6 069B     		ldr	r3, [sp, #24]
 1811 01b8 4146     		mov	r1, r8
 1812 01ba C6F8BC03 		str	r0, [r6, #956]	@ float
 1813 01be 1846     		mov	r0, r3
 1814 01c0 FFF7FEFF 		bl	__aeabi_fmul
 1815 01c4 DDF814C0 		ldr	ip, [sp, #20]
 1816 01c8 3946     		mov	r1, r7
 1817 01ca 8046     		mov	r8, r0
 1818 01cc 6046     		mov	r0, ip
 1819 01ce FFF7FEFF 		bl	__aeabi_fmul
 1820 01d2 0146     		mov	r1, r0
 1821 01d4 4046     		mov	r0, r8
 1822 01d6 FFF7FEFF 		bl	__aeabi_fadd
 1823 01da 4946     		mov	r1, r9
 1824 01dc 0746     		mov	r7, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 33


 1825 01de 0898     		ldr	r0, [sp, #32]	@ float
 1826 01e0 FFF7FEFF 		bl	__aeabi_fmul
 1827 01e4 0146     		mov	r1, r0
 1828 01e6 3846     		mov	r0, r7
 1829 01e8 FFF7FEFF 		bl	__aeabi_fadd
 1830 01ec 4946     		mov	r1, r9
 1831 01ee FFF7FEFF 		bl	__aeabi_fdiv
 1832 01f2 C6F8C003 		str	r0, [r6, #960]	@ float
 1833 01f6 50E7     		b	.L187
 1834              	.L185:
 1835 01f8 D6F888B0 		ldr	fp, [r6, #136]	@ float
 1836 01fc D6F80831 		ldr	r3, [r6, #264]	@ float
 1837 0200 5846     		mov	r0, fp
 1838 0202 0893     		str	r3, [sp, #32]	@ float
 1839 0204 FFF7FEFF 		bl	__aeabi_f2d
 1840 0208 CDE90A01 		strd	r0, [sp, #40]
 1841 020c D6F88811 		ldr	r1, [r6, #392]	@ float
 1842 0210 0898     		ldr	r0, [sp, #32]	@ float
 1843 0212 0991     		str	r1, [sp, #36]	@ float
 1844 0214 FFF7FEFF 		bl	__aeabi_f2d
 1845 0218 CDE90C01 		strd	r0, [sp, #48]
 1846 021c 0998     		ldr	r0, [sp, #36]	@ float
 1847 021e FFF7FEFF 		bl	__aeabi_f2d
 1848 0222 CDE90E01 		strd	r0, [sp, #56]
 1849 0226 3746     		mov	r7, r6
 1850 0228 4FF00408 		mov	r8, #4
 1851              	.L189:
 1852 022c D7F8F800 		ldr	r0, [r7, #248]	@ float
 1853 0230 0899     		ldr	r1, [sp, #32]	@ float
 1854 0232 FFF7FEFF 		bl	__aeabi_fsub
 1855 0236 0999     		ldr	r1, [sp, #36]	@ float
 1856 0238 8246     		mov	r10, r0
 1857 023a D7F87801 		ldr	r0, [r7, #376]	@ float
 1858 023e FFF7FEFF 		bl	__aeabi_fsub
 1859 0242 5946     		mov	r1, fp
 1860 0244 8146     		mov	r9, r0
 1861 0246 B86F     		ldr	r0, [r7, #120]	@ float
 1862 0248 FFF7FEFF 		bl	__aeabi_fsub
 1863 024c FFF7FEFF 		bl	__aeabi_f2d
 1864 0250 0246     		mov	r2, r0
 1865 0252 0B46     		mov	r3, r1
 1866 0254 FFF7FEFF 		bl	__aeabi_dadd
 1867 0258 DDE90A23 		ldrd	r2, [sp, #40]
 1868 025c FFF7FEFF 		bl	__aeabi_dadd
 1869 0260 FFF7FEFF 		bl	__aeabi_d2f
 1870 0264 C7F85C03 		str	r0, [r7, #860]	@ float
 1871 0268 5046     		mov	r0, r10
 1872 026a FFF7FEFF 		bl	__aeabi_f2d
 1873 026e 0246     		mov	r2, r0
 1874 0270 0B46     		mov	r3, r1
 1875 0272 FFF7FEFF 		bl	__aeabi_dadd
 1876 0276 DDE90C23 		ldrd	r2, [sp, #48]
 1877 027a FFF7FEFF 		bl	__aeabi_dadd
 1878 027e FFF7FEFF 		bl	__aeabi_d2f
 1879 0282 C7F87003 		str	r0, [r7, #880]	@ float
 1880 0286 4846     		mov	r0, r9
 1881 0288 FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 34


 1882 028c 0246     		mov	r2, r0
 1883 028e 0B46     		mov	r3, r1
 1884 0290 FFF7FEFF 		bl	__aeabi_dadd
 1885 0294 DDE90E23 		ldrd	r2, [sp, #56]
 1886 0298 FFF7FEFF 		bl	__aeabi_dadd
 1887 029c FFF7FEFF 		bl	__aeabi_d2f
 1888 02a0 B8F10108 		subs	r8, r8, #1
 1889 02a4 C7F88403 		str	r0, [r7, #900]	@ float
 1890 02a8 07F10407 		add	r7, r7, #4
 1891 02ac BED1     		bne	.L189
 1892 02ae 089B     		ldr	r3, [sp, #32]	@ float
 1893 02b0 0999     		ldr	r1, [sp, #36]	@ float
 1894 02b2 C6F86CB3 		str	fp, [r6, #876]	@ float
 1895 02b6 C6F88033 		str	r3, [r6, #896]	@ float
 1896 02ba C6F89413 		str	r1, [r6, #916]	@ float
 1897 02be ECE6     		b	.L187
 1898              	.L197:
 1899              		.align	2
 1900              	.L196:
 1901 02c0 CC010000 		.word	.LC17
 1902 02c4 E8000000 		.word	.LC11
 1903 02c8 00000000 		.word	reprap
 1904 02cc 3C020000 		.word	.LC19
 1905 02d0 1C020000 		.word	.LC18
 1906 02d4 9C020000 		.word	.LC21
 1907 02d8 88020000 		.word	.LC20
 1908              		.size	_ZN4Move20SetProbedBedEquationEjR9StringRef, .-_ZN4Move20SetProbedBedEquationEjR9StringRef
 1909              		.section	.text._ZN4Move21AdjustDeltaParametersEPKfj,"ax",%progbits
 1910              		.align	2
 1911              		.global	_ZN4Move21AdjustDeltaParametersEPKfj
 1912              		.thumb
 1913              		.thumb_func
 1914              		.type	_ZN4Move21AdjustDeltaParametersEPKfj, %function
 1915              	_ZN4Move21AdjustDeltaParametersEPKfj:
 1916              		@ args = 0, pretend = 0, frame = 16
 1917              		@ frame_needed = 0, uses_anonymous_args = 0
 1918 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1919 0004 D0F88C44 		ldr	r4, [r0, #1164]	@ float
 1920 0008 85B0     		sub	sp, sp, #20
 1921 000a 0546     		mov	r5, r0
 1922 000c 0E46     		mov	r6, r1
 1923 000e D0F85004 		ldr	r0, [r0, #1104]	@ float
 1924 0012 2146     		mov	r1, r4
 1925 0014 1746     		mov	r7, r2
 1926 0016 FFF7FEFF 		bl	__aeabi_fadd
 1927 001a 2146     		mov	r1, r4
 1928 001c 0190     		str	r0, [sp, #4]	@ float
 1929 001e D5F85404 		ldr	r0, [r5, #1108]	@ float
 1930 0022 FFF7FEFF 		bl	__aeabi_fadd
 1931 0026 2146     		mov	r1, r4
 1932 0028 0290     		str	r0, [sp, #8]	@ float
 1933 002a D5F85804 		ldr	r0, [r5, #1112]	@ float
 1934 002e FFF7FEFF 		bl	__aeabi_fadd
 1935 0032 05F23448 		addw	r8, r5, #1076
 1936 0036 3246     		mov	r2, r6
 1937 0038 0390     		str	r0, [sp, #12]	@ float
 1938 003a 3946     		mov	r1, r7
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 35


 1939 003c 4046     		mov	r0, r8
 1940 003e FFF7FEFF 		bl	_ZN15DeltaParameters6AdjustEjPKf
 1941 0042 6B68     		ldr	r3, [r5, #4]
 1942 0044 1A4A     		ldr	r2, .L201
 1943 0046 5F68     		ldr	r7, [r3, #4]
 1944 0048 1368     		ldr	r3, [r2]
 1945 004a 0024     		movs	r4, #0
 1946 004c 07F1100B 		add	fp, r7, #16
 1947 0050 03F59C7A 		add	r10, r3, #312
 1948 0054 2646     		mov	r6, r4
 1949 0056 0DF10409 		add	r9, sp, #4
 1950              	.L200:
 1951 005a 08EB0403 		add	r3, r8, r4
 1952 005e D969     		ldr	r1, [r3, #28]	@ float
 1953 0060 D5F88C04 		ldr	r0, [r5, #1164]	@ float
 1954 0064 FFF7FEFF 		bl	__aeabi_fadd
 1955 0068 59F80410 		ldr	r1, [r9, r4]	@ float
 1956 006c FFF7FEFF 		bl	__aeabi_fsub
 1957 0070 5AF80410 		ldr	r1, [r10, r4]	@ float
 1958 0074 FFF7FEFF 		bl	__aeabi_fmul
 1959 0078 FFF7FEFF 		bl	__aeabi_f2iz
 1960 007c 5BF80430 		ldr	r3, [fp, r4]
 1961 0080 3A19     		adds	r2, r7, r4
 1962 0082 1844     		add	r0, r0, r3
 1963 0084 1061     		str	r0, [r2, #16]
 1964 0086 7A7A     		ldrb	r2, [r7, #9]	@ zero_extendqisi2
 1965 0088 06F11401 		add	r1, r6, #20
 1966 008c 0136     		adds	r6, r6, #1
 1967 008e 6FF30002 		bfc	r2, #0, #1
 1968 0092 05EB8101 		add	r1, r5, r1, lsl #2
 1969 0096 032E     		cmp	r6, #3
 1970 0098 7A72     		strb	r2, [r7, #9]
 1971 009a 04F10404 		add	r4, r4, #4
 1972 009e 4860     		str	r0, [r1, #4]
 1973 00a0 DBD1     		bne	.L200
 1974 00a2 0023     		movs	r3, #0
 1975 00a4 85F85030 		strb	r3, [r5, #80]
 1976 00a8 05B0     		add	sp, sp, #20
 1977              		@ sp needed
 1978 00aa BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1979              	.L202:
 1980 00ae 00BF     		.align	2
 1981              	.L201:
 1982 00b0 00000000 		.word	reprap
 1983              		.size	_ZN4Move21AdjustDeltaParametersEPKfj, .-_ZN4Move21AdjustDeltaParametersEPKfj
 1984              		.global	__aeabi_dmul
 1985              		.section	.text._ZNK4Move22SecondDegreeTransformZEff,"ax",%progbits
 1986              		.align	2
 1987              		.global	_ZNK4Move22SecondDegreeTransformZEff
 1988              		.thumb
 1989              		.thumb_func
 1990              		.type	_ZNK4Move22SecondDegreeTransformZEff, %function
 1991              	_ZNK4Move22SecondDegreeTransformZEff:
 1992              		@ args = 0, pretend = 0, frame = 24
 1993              		@ frame_needed = 0, uses_anonymous_args = 0
 1994 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1995 0004 8046     		mov	r8, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 36


 1996 0006 86B0     		sub	sp, sp, #24
 1997 0008 0846     		mov	r0, r1
 1998 000a D8F87810 		ldr	r1, [r8, #120]	@ float
 1999 000e 1446     		mov	r4, r2
 2000 0010 FFF7FEFF 		bl	__aeabi_fsub
 2001 0014 D8F8D413 		ldr	r1, [r8, #980]	@ float
 2002 0018 FFF7FEFF 		bl	__aeabi_fmul
 2003 001c D8F8F810 		ldr	r1, [r8, #248]	@ float
 2004 0020 8146     		mov	r9, r0
 2005 0022 2046     		mov	r0, r4
 2006 0024 FFF7FEFF 		bl	__aeabi_fsub
 2007 0028 D8F8D813 		ldr	r1, [r8, #984]	@ float
 2008 002c FFF7FEFF 		bl	__aeabi_fmul
 2009 0030 8246     		mov	r10, r0
 2010 0032 4846     		mov	r0, r9
 2011 0034 FFF7FEFF 		bl	__aeabi_f2d
 2012 0038 0246     		mov	r2, r0
 2013 003a 0B46     		mov	r3, r1
 2014 003c 0646     		mov	r6, r0
 2015 003e 0F46     		mov	r7, r1
 2016 0040 0020     		movs	r0, #0
 2017 0042 3749     		ldr	r1, .L204
 2018 0044 FFF7FEFF 		bl	__aeabi_dsub
 2019 0048 CDE90201 		strd	r0, [sp, #8]
 2020 004c 5046     		mov	r0, r10
 2021 004e FFF7FEFF 		bl	__aeabi_f2d
 2022 0052 CDE90001 		strd	r0, [sp]
 2023 0056 0246     		mov	r2, r0
 2024 0058 0B46     		mov	r3, r1
 2025 005a 0020     		movs	r0, #0
 2026 005c 3049     		ldr	r1, .L204
 2027 005e FFF7FEFF 		bl	__aeabi_dsub
 2028 0062 CDE90401 		strd	r0, [sp, #16]
 2029 0066 DDE90423 		ldrd	r2, [sp, #16]
 2030 006a DDE90201 		ldrd	r0, [sp, #8]
 2031 006e FFF7FEFF 		bl	__aeabi_dmul
 2032 0072 0446     		mov	r4, r0
 2033 0074 D8F87801 		ldr	r0, [r8, #376]	@ float
 2034 0078 0D46     		mov	r5, r1
 2035 007a FFF7FEFF 		bl	__aeabi_f2d
 2036 007e 0246     		mov	r2, r0
 2037 0080 0B46     		mov	r3, r1
 2038 0082 2046     		mov	r0, r4
 2039 0084 2946     		mov	r1, r5
 2040 0086 FFF7FEFF 		bl	__aeabi_dmul
 2041 008a DDE90423 		ldrd	r2, [sp, #16]
 2042 008e 0446     		mov	r4, r0
 2043 0090 0D46     		mov	r5, r1
 2044 0092 3046     		mov	r0, r6
 2045 0094 3946     		mov	r1, r7
 2046 0096 FFF7FEFF 		bl	__aeabi_dmul
 2047 009a 0646     		mov	r6, r0
 2048 009c D8F88401 		ldr	r0, [r8, #388]	@ float
 2049 00a0 0F46     		mov	r7, r1
 2050 00a2 FFF7FEFF 		bl	__aeabi_f2d
 2051 00a6 0246     		mov	r2, r0
 2052 00a8 0B46     		mov	r3, r1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 37


 2053 00aa 3046     		mov	r0, r6
 2054 00ac 3946     		mov	r1, r7
 2055 00ae FFF7FEFF 		bl	__aeabi_dmul
 2056 00b2 0246     		mov	r2, r0
 2057 00b4 0B46     		mov	r3, r1
 2058 00b6 2046     		mov	r0, r4
 2059 00b8 2946     		mov	r1, r5
 2060 00ba FFF7FEFF 		bl	__aeabi_dadd
 2061 00be DDE90023 		ldrd	r2, [sp]
 2062 00c2 0446     		mov	r4, r0
 2063 00c4 0D46     		mov	r5, r1
 2064 00c6 DDE90201 		ldrd	r0, [sp, #8]
 2065 00ca FFF7FEFF 		bl	__aeabi_dmul
 2066 00ce 0646     		mov	r6, r0
 2067 00d0 D8F87C01 		ldr	r0, [r8, #380]	@ float
 2068 00d4 0F46     		mov	r7, r1
 2069 00d6 FFF7FEFF 		bl	__aeabi_f2d
 2070 00da 0246     		mov	r2, r0
 2071 00dc 0B46     		mov	r3, r1
 2072 00de 3046     		mov	r0, r6
 2073 00e0 3946     		mov	r1, r7
 2074 00e2 FFF7FEFF 		bl	__aeabi_dmul
 2075 00e6 0246     		mov	r2, r0
 2076 00e8 0B46     		mov	r3, r1
 2077 00ea 2046     		mov	r0, r4
 2078 00ec 2946     		mov	r1, r5
 2079 00ee FFF7FEFF 		bl	__aeabi_dadd
 2080 00f2 0446     		mov	r4, r0
 2081 00f4 0D46     		mov	r5, r1
 2082 00f6 4846     		mov	r0, r9
 2083 00f8 5146     		mov	r1, r10
 2084 00fa FFF7FEFF 		bl	__aeabi_fmul
 2085 00fe D8F88011 		ldr	r1, [r8, #384]	@ float
 2086 0102 FFF7FEFF 		bl	__aeabi_fmul
 2087 0106 FFF7FEFF 		bl	__aeabi_f2d
 2088 010a 0246     		mov	r2, r0
 2089 010c 0B46     		mov	r3, r1
 2090 010e 2046     		mov	r0, r4
 2091 0110 2946     		mov	r1, r5
 2092 0112 FFF7FEFF 		bl	__aeabi_dadd
 2093 0116 FFF7FEFF 		bl	__aeabi_d2f
 2094 011a 06B0     		add	sp, sp, #24
 2095              		@ sp needed
 2096 011c BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2097              	.L205:
 2098              		.align	2
 2099              	.L204:
 2100 0120 0000F03F 		.word	1072693248
 2101              		.size	_ZNK4Move22SecondDegreeTransformZEff, .-_ZNK4Move22SecondDegreeTransformZEff
 2102              		.global	__aeabi_fcmplt
 2103              		.global	__aeabi_ui2f
 2104              		.section	.text._ZNK4Move12BedTransformEPfm,"ax",%progbits
 2105              		.align	2
 2106              		.global	_ZNK4Move12BedTransformEPfm
 2107              		.thumb
 2108              		.thumb_func
 2109              		.type	_ZNK4Move12BedTransformEPfm, %function
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 38


 2110              	_ZNK4Move12BedTransformEPfm:
 2111              		@ args = 0, pretend = 0, frame = 8
 2112              		@ frame_needed = 0, uses_anonymous_args = 0
 2113 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2114 0004 90F8E443 		ldrb	r4, [r0, #996]	@ zero_extendqisi2
 2115 0008 83B0     		sub	sp, sp, #12
 2116 000a 0546     		mov	r5, r0
 2117 000c 0E46     		mov	r6, r1
 2118 000e 9346     		mov	fp, r2
 2119 0010 34B1     		cbz	r4, .L207
 2120 0012 8868     		ldr	r0, [r1, #8]	@ float
 2121 0014 D5F8DC13 		ldr	r1, [r5, #988]	@ float
 2122 0018 FFF7FEFF 		bl	__aeabi_fcmplt
 2123 001c 0028     		cmp	r0, #0
 2124 001e 40D0     		beq	.L206
 2125              	.L207:
 2126 0020 414B     		ldr	r3, .L232
 2127 0022 1B69     		ldr	r3, [r3, #16]
 2128 0024 D3F88481 		ldr	r8, [r3, #388]
 2129 0028 B8F1000F 		cmp	r8, #0
 2130 002c 79D0     		beq	.L222
 2131 002e 0024     		movs	r4, #0
 2132 0030 05F57A73 		add	r3, r5, #1000
 2133 0034 4FF00009 		mov	r9, #0
 2134 0038 2746     		mov	r7, r4
 2135 003a 4FF0010A 		mov	r10, #1
 2136 003e 0193     		str	r3, [sp, #4]
 2137              	.L219:
 2138 0040 0AFA04F3 		lsl	r3, r10, r4
 2139 0044 13EA0B0F 		tst	r3, fp
 2140 0048 14D0     		beq	.L211
 2141 004a D5F8D033 		ldr	r3, [r5, #976]
 2142 004e 56F82410 		ldr	r1, [r6, r4, lsl #2]	@ float
 2143 0052 052B     		cmp	r3, #5
 2144 0054 0DD8     		bhi	.L212
 2145 0056 DFE803F0 		tbb	[pc, r3]
 2146              	.L214:
 2147 005a 27       		.byte	(.L213-.L214)/2
 2148 005b 0C       		.byte	(.L212-.L214)/2
 2149 005c 0C       		.byte	(.L212-.L214)/2
 2150 005d 3B       		.byte	(.L215-.L214)/2
 2151 005e 31       		.byte	(.L216-.L214)/2
 2152 005f 03       		.byte	(.L217-.L214)/2
 2153              		.align	1
 2154              	.L217:
 2155 0060 7268     		ldr	r2, [r6, #4]	@ float
 2156 0062 2846     		mov	r0, r5
 2157 0064 FFF7FEFF 		bl	_ZNK4Move9TriangleZEff
 2158 0068 0146     		mov	r1, r0
 2159 006a 4846     		mov	r0, r9
 2160 006c FFF7FEFF 		bl	__aeabi_fadd
 2161 0070 8146     		mov	r9, r0
 2162              	.L212:
 2163 0072 0137     		adds	r7, r7, #1
 2164              	.L211:
 2165 0074 0134     		adds	r4, r4, #1
 2166 0076 4445     		cmp	r4, r8
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 39


 2167 0078 E2D1     		bne	.L219
 2168 007a 012F     		cmp	r7, #1
 2169 007c 07D9     		bls	.L230
 2170 007e 3846     		mov	r0, r7
 2171 0080 FFF7FEFF 		bl	__aeabi_ui2f
 2172 0084 0146     		mov	r1, r0
 2173 0086 4846     		mov	r0, r9
 2174 0088 FFF7FEFF 		bl	__aeabi_fdiv
 2175 008c 8146     		mov	r9, r0
 2176              	.L230:
 2177 008e 95F8E443 		ldrb	r4, [r5, #996]	@ zero_extendqisi2
 2178              	.L210:
 2179 0092 B768     		ldr	r7, [r6, #8]	@ float
 2180 0094 002C     		cmp	r4, #0
 2181 0096 36D1     		bne	.L231
 2182 0098 4946     		mov	r1, r9
 2183              	.L221:
 2184 009a 3846     		mov	r0, r7
 2185 009c FFF7FEFF 		bl	__aeabi_fadd
 2186 00a0 B060     		str	r0, [r6, #8]	@ float
 2187              	.L206:
 2188 00a2 03B0     		add	sp, sp, #12
 2189              		@ sp needed
 2190 00a4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2191              	.L213:
 2192 00a8 7268     		ldr	r2, [r6, #4]	@ float
 2193 00aa 0198     		ldr	r0, [sp, #4]
 2194 00ac FFF7FEFF 		bl	_ZNK9HeightMap26GetInterpolatedHeightErrorEff
 2195 00b0 0146     		mov	r1, r0
 2196 00b2 4846     		mov	r0, r9
 2197 00b4 FFF7FEFF 		bl	__aeabi_fadd
 2198 00b8 8146     		mov	r9, r0
 2199 00ba DAE7     		b	.L212
 2200              	.L216:
 2201 00bc 7268     		ldr	r2, [r6, #4]	@ float
 2202 00be 2846     		mov	r0, r5
 2203 00c0 FFF7FEFF 		bl	_ZNK4Move22SecondDegreeTransformZEff
 2204 00c4 0146     		mov	r1, r0
 2205 00c6 4846     		mov	r0, r9
 2206 00c8 FFF7FEFF 		bl	__aeabi_fadd
 2207 00cc 8146     		mov	r9, r0
 2208 00ce D0E7     		b	.L212
 2209              	.L215:
 2210 00d0 0846     		mov	r0, r1
 2211 00d2 D5F8B813 		ldr	r1, [r5, #952]	@ float
 2212 00d6 FFF7FEFF 		bl	__aeabi_fmul
 2213 00da 7168     		ldr	r1, [r6, #4]	@ float
 2214 00dc 0346     		mov	r3, r0
 2215 00de D5F8BC03 		ldr	r0, [r5, #956]	@ float
 2216 00e2 0093     		str	r3, [sp]
 2217 00e4 FFF7FEFF 		bl	__aeabi_fmul
 2218 00e8 009B     		ldr	r3, [sp]
 2219 00ea 0146     		mov	r1, r0
 2220 00ec 1846     		mov	r0, r3
 2221 00ee FFF7FEFF 		bl	__aeabi_fadd
 2222 00f2 D5F8C013 		ldr	r1, [r5, #960]	@ float
 2223 00f6 FFF7FEFF 		bl	__aeabi_fadd
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 40


 2224 00fa 0146     		mov	r1, r0
 2225 00fc 4846     		mov	r0, r9
 2226 00fe FFF7FEFF 		bl	__aeabi_fadd
 2227 0102 8146     		mov	r9, r0
 2228 0104 B5E7     		b	.L212
 2229              	.L231:
 2230 0106 3946     		mov	r1, r7
 2231 0108 D5F8DC03 		ldr	r0, [r5, #988]	@ float
 2232 010c FFF7FEFF 		bl	__aeabi_fsub
 2233 0110 D5F8E013 		ldr	r1, [r5, #992]	@ float
 2234 0114 FFF7FEFF 		bl	__aeabi_fmul
 2235 0118 4946     		mov	r1, r9
 2236 011a FFF7FEFF 		bl	__aeabi_fmul
 2237 011e 0146     		mov	r1, r0
 2238 0120 BBE7     		b	.L221
 2239              	.L222:
 2240 0122 4FF00009 		mov	r9, #0
 2241 0126 B4E7     		b	.L210
 2242              	.L233:
 2243              		.align	2
 2244              	.L232:
 2245 0128 00000000 		.word	reprap
 2246              		.size	_ZNK4Move12BedTransformEPfm, .-_ZNK4Move12BedTransformEPfm
 2247              		.section	.text._ZNK4Move9TransformEPfmb,"ax",%progbits
 2248              		.align	2
 2249              		.global	_ZNK4Move9TransformEPfmb
 2250              		.thumb
 2251              		.thumb_func
 2252              		.type	_ZNK4Move9TransformEPfmb, %function
 2253              	_ZNK4Move9TransformEPfmb:
 2254              		@ args = 0, pretend = 0, frame = 0
 2255              		@ frame_needed = 0, uses_anonymous_args = 0
 2256 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 2257 0004 4F68     		ldr	r7, [r1, #4]	@ float
 2258 0006 0546     		mov	r5, r0
 2259 0008 8E68     		ldr	r6, [r1, #8]	@ float
 2260 000a 0C46     		mov	r4, r1
 2261 000c 3846     		mov	r0, r7
 2262 000e D5F8C413 		ldr	r1, [r5, #964]	@ float
 2263 0012 9246     		mov	r10, r2
 2264 0014 9846     		mov	r8, r3
 2265 0016 FFF7FEFF 		bl	__aeabi_fmul
 2266 001a D5F8CC13 		ldr	r1, [r5, #972]	@ float
 2267 001e 8146     		mov	r9, r0
 2268 0020 3046     		mov	r0, r6
 2269 0022 FFF7FEFF 		bl	__aeabi_fmul
 2270 0026 0146     		mov	r1, r0
 2271 0028 4846     		mov	r0, r9
 2272 002a FFF7FEFF 		bl	__aeabi_fadd
 2273 002e 0146     		mov	r1, r0
 2274 0030 2068     		ldr	r0, [r4]	@ float
 2275 0032 FFF7FEFF 		bl	__aeabi_fadd
 2276 0036 2060     		str	r0, [r4]	@ float
 2277 0038 D5F8C813 		ldr	r1, [r5, #968]	@ float
 2278 003c 3046     		mov	r0, r6
 2279 003e FFF7FEFF 		bl	__aeabi_fmul
 2280 0042 0146     		mov	r1, r0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 41


 2281 0044 3846     		mov	r0, r7
 2282 0046 FFF7FEFF 		bl	__aeabi_fadd
 2283 004a 6060     		str	r0, [r4, #4]	@ float
 2284 004c B8F1000F 		cmp	r8, #0
 2285 0050 01D1     		bne	.L236
 2286 0052 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 2287              	.L236:
 2288 0056 2846     		mov	r0, r5
 2289 0058 2146     		mov	r1, r4
 2290 005a 5246     		mov	r2, r10
 2291 005c BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 2292 0060 FFF7FEBF 		b	_ZNK4Move12BedTransformEPfm
 2293              		.size	_ZNK4Move9TransformEPfmb, .-_ZNK4Move9TransformEPfmb
 2294              		.global	__aeabi_ddiv
 2295              		.section	.text._ZNK4Move19InverseBedTransformEPfm,"ax",%progbits
 2296              		.align	2
 2297              		.global	_ZNK4Move19InverseBedTransformEPfm
 2298              		.thumb
 2299              		.thumb_func
 2300              		.type	_ZNK4Move19InverseBedTransformEPfm, %function
 2301              	_ZNK4Move19InverseBedTransformEPfm:
 2302              		@ args = 0, pretend = 0, frame = 8
 2303              		@ frame_needed = 0, uses_anonymous_args = 0
 2304 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2305 0004 544B     		ldr	r3, .L262
 2306 0006 83B0     		sub	sp, sp, #12
 2307 0008 1B69     		ldr	r3, [r3, #16]
 2308 000a 8046     		mov	r8, r0
 2309 000c D3F88471 		ldr	r7, [r3, #388]
 2310 0010 0E46     		mov	r6, r1
 2311 0012 9346     		mov	fp, r2
 2312 0014 002F     		cmp	r7, #0
 2313 0016 00F09B80 		beq	.L253
 2314 001a 0024     		movs	r4, #0
 2315 001c 00F57A73 		add	r3, r0, #1000
 2316 0020 4FF00009 		mov	r9, #0
 2317 0024 2546     		mov	r5, r4
 2318 0026 4FF0010A 		mov	r10, #1
 2319 002a 0193     		str	r3, [sp, #4]
 2320              	.L247:
 2321 002c 0AFA04F3 		lsl	r3, r10, r4
 2322 0030 13EA0B0F 		tst	r3, fp
 2323 0034 14D0     		beq	.L239
 2324 0036 D8F8D033 		ldr	r3, [r8, #976]
 2325 003a 56F82410 		ldr	r1, [r6, r4, lsl #2]	@ float
 2326 003e 052B     		cmp	r3, #5
 2327 0040 0DD8     		bhi	.L240
 2328 0042 DFE803F0 		tbb	[pc, r3]
 2329              	.L242:
 2330 0046 73       		.byte	(.L241-.L242)/2
 2331 0047 0C       		.byte	(.L240-.L242)/2
 2332 0048 0C       		.byte	(.L240-.L242)/2
 2333 0049 4E       		.byte	(.L243-.L242)/2
 2334 004a 69       		.byte	(.L244-.L242)/2
 2335 004b 03       		.byte	(.L245-.L242)/2
 2336              		.align	1
 2337              	.L245:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 42


 2338 004c 7268     		ldr	r2, [r6, #4]	@ float
 2339 004e 4046     		mov	r0, r8
 2340 0050 FFF7FEFF 		bl	_ZNK4Move9TriangleZEff
 2341 0054 0146     		mov	r1, r0
 2342 0056 4846     		mov	r0, r9
 2343 0058 FFF7FEFF 		bl	__aeabi_fadd
 2344 005c 8146     		mov	r9, r0
 2345              	.L240:
 2346 005e 0135     		adds	r5, r5, #1
 2347              	.L239:
 2348 0060 0134     		adds	r4, r4, #1
 2349 0062 BC42     		cmp	r4, r7
 2350 0064 E2D1     		bne	.L247
 2351 0066 012D     		cmp	r5, #1
 2352 0068 07D9     		bls	.L238
 2353 006a 2846     		mov	r0, r5
 2354 006c FFF7FEFF 		bl	__aeabi_ui2f
 2355 0070 0146     		mov	r1, r0
 2356 0072 4846     		mov	r0, r9
 2357 0074 FFF7FEFF 		bl	__aeabi_fdiv
 2358 0078 8146     		mov	r9, r0
 2359              	.L238:
 2360 007a 98F8E433 		ldrb	r3, [r8, #996]	@ zero_extendqisi2
 2361 007e 002B     		cmp	r3, #0
 2362 0080 5ED0     		beq	.L248
 2363 0082 D8F8DC73 		ldr	r7, [r8, #988]	@ float
 2364 0086 4846     		mov	r0, r9
 2365 0088 3946     		mov	r1, r7
 2366 008a FFF7FEFF 		bl	__aeabi_fcmpge
 2367 008e 0028     		cmp	r0, #0
 2368 0090 56D1     		bne	.L248
 2369 0092 4946     		mov	r1, r9
 2370 0094 B068     		ldr	r0, [r6, #8]	@ float
 2371 0096 FFF7FEFF 		bl	__aeabi_fsub
 2372 009a FFF7FEFF 		bl	__aeabi_f2d
 2373 009e 0446     		mov	r4, r0
 2374 00a0 0D46     		mov	r5, r1
 2375 00a2 4846     		mov	r0, r9
 2376 00a4 D8F8E013 		ldr	r1, [r8, #992]	@ float
 2377 00a8 FFF7FEFF 		bl	__aeabi_fmul
 2378 00ac FFF7FEFF 		bl	__aeabi_f2d
 2379 00b0 0246     		mov	r2, r0
 2380 00b2 0B46     		mov	r3, r1
 2381 00b4 0020     		movs	r0, #0
 2382 00b6 2949     		ldr	r1, .L262+4
 2383 00b8 FFF7FEFF 		bl	__aeabi_dsub
 2384 00bc 0246     		mov	r2, r0
 2385 00be 0B46     		mov	r3, r1
 2386 00c0 2046     		mov	r0, r4
 2387 00c2 2946     		mov	r1, r5
 2388 00c4 FFF7FEFF 		bl	__aeabi_ddiv
 2389 00c8 FFF7FEFF 		bl	__aeabi_d2f
 2390 00cc 0446     		mov	r4, r0
 2391 00ce 2146     		mov	r1, r4
 2392 00d0 3846     		mov	r0, r7
 2393 00d2 FFF7FEFF 		bl	__aeabi_fcmpgt
 2394 00d6 0028     		cmp	r0, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 43


 2395 00d8 37D0     		beq	.L237
 2396 00da B460     		str	r4, [r6, #8]	@ float
 2397 00dc 03B0     		add	sp, sp, #12
 2398              		@ sp needed
 2399 00de BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2400              	.L243:
 2401 00e2 0846     		mov	r0, r1
 2402 00e4 D8F8B813 		ldr	r1, [r8, #952]	@ float
 2403 00e8 FFF7FEFF 		bl	__aeabi_fmul
 2404 00ec 7168     		ldr	r1, [r6, #4]	@ float
 2405 00ee 0346     		mov	r3, r0
 2406 00f0 D8F8BC03 		ldr	r0, [r8, #956]	@ float
 2407 00f4 0093     		str	r3, [sp]
 2408 00f6 FFF7FEFF 		bl	__aeabi_fmul
 2409 00fa 009B     		ldr	r3, [sp]
 2410 00fc 0146     		mov	r1, r0
 2411 00fe 1846     		mov	r0, r3
 2412 0100 FFF7FEFF 		bl	__aeabi_fadd
 2413 0104 D8F8C013 		ldr	r1, [r8, #960]	@ float
 2414 0108 FFF7FEFF 		bl	__aeabi_fadd
 2415 010c 0146     		mov	r1, r0
 2416 010e 4846     		mov	r0, r9
 2417 0110 FFF7FEFF 		bl	__aeabi_fadd
 2418 0114 8146     		mov	r9, r0
 2419 0116 A2E7     		b	.L240
 2420              	.L244:
 2421 0118 7268     		ldr	r2, [r6, #4]	@ float
 2422 011a 4046     		mov	r0, r8
 2423 011c FFF7FEFF 		bl	_ZNK4Move22SecondDegreeTransformZEff
 2424 0120 0146     		mov	r1, r0
 2425 0122 4846     		mov	r0, r9
 2426 0124 FFF7FEFF 		bl	__aeabi_fadd
 2427 0128 8146     		mov	r9, r0
 2428 012a 98E7     		b	.L240
 2429              	.L241:
 2430 012c 7268     		ldr	r2, [r6, #4]	@ float
 2431 012e 0198     		ldr	r0, [sp, #4]
 2432 0130 FFF7FEFF 		bl	_ZNK9HeightMap26GetInterpolatedHeightErrorEff
 2433 0134 0146     		mov	r1, r0
 2434 0136 4846     		mov	r0, r9
 2435 0138 FFF7FEFF 		bl	__aeabi_fadd
 2436 013c 8146     		mov	r9, r0
 2437 013e 8EE7     		b	.L240
 2438              	.L248:
 2439 0140 B068     		ldr	r0, [r6, #8]	@ float
 2440 0142 4946     		mov	r1, r9
 2441 0144 FFF7FEFF 		bl	__aeabi_fsub
 2442 0148 B060     		str	r0, [r6, #8]	@ float
 2443              	.L237:
 2444 014a 03B0     		add	sp, sp, #12
 2445              		@ sp needed
 2446 014c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2447              	.L253:
 2448 0150 4FF00009 		mov	r9, #0
 2449 0154 91E7     		b	.L238
 2450              	.L263:
 2451 0156 00BF     		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 44


 2452              	.L262:
 2453 0158 00000000 		.word	reprap
 2454 015c 0000F03F 		.word	1072693248
 2455              		.size	_ZNK4Move19InverseBedTransformEPfm, .-_ZNK4Move19InverseBedTransformEPfm
 2456              		.section	.text._ZNK4Move16InverseTransformEPfm,"ax",%progbits
 2457              		.align	2
 2458              		.global	_ZNK4Move16InverseTransformEPfm
 2459              		.thumb
 2460              		.thumb_func
 2461              		.type	_ZNK4Move16InverseTransformEPfm, %function
 2462              	_ZNK4Move16InverseTransformEPfm:
 2463              		@ args = 0, pretend = 0, frame = 0
 2464              		@ frame_needed = 0, uses_anonymous_args = 0
 2465 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2466 0002 0C46     		mov	r4, r1
 2467 0004 0546     		mov	r5, r0
 2468 0006 FFF7FEFF 		bl	_ZNK4Move19InverseBedTransformEPfm
 2469 000a A668     		ldr	r6, [r4, #8]	@ float
 2470 000c D5F8C813 		ldr	r1, [r5, #968]	@ float
 2471 0010 3046     		mov	r0, r6
 2472 0012 FFF7FEFF 		bl	__aeabi_fmul
 2473 0016 0146     		mov	r1, r0
 2474 0018 6068     		ldr	r0, [r4, #4]	@ float
 2475 001a FFF7FEFF 		bl	__aeabi_fsub
 2476 001e 6060     		str	r0, [r4, #4]	@ float
 2477 0020 D5F8C413 		ldr	r1, [r5, #964]	@ float
 2478 0024 FFF7FEFF 		bl	__aeabi_fmul
 2479 0028 D5F8CC13 		ldr	r1, [r5, #972]	@ float
 2480 002c 0746     		mov	r7, r0
 2481 002e 3046     		mov	r0, r6
 2482 0030 FFF7FEFF 		bl	__aeabi_fmul
 2483 0034 0146     		mov	r1, r0
 2484 0036 3846     		mov	r0, r7
 2485 0038 FFF7FEFF 		bl	__aeabi_fadd
 2486 003c 0146     		mov	r1, r0
 2487 003e 2068     		ldr	r0, [r4]	@ float
 2488 0040 FFF7FEFF 		bl	__aeabi_fsub
 2489 0044 2060     		str	r0, [r4]	@ float
 2490 0046 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2491              		.size	_ZNK4Move16InverseTransformEPfm, .-_ZNK4Move16InverseTransformEPfm
 2492              		.section	.text._ZN4Move19DeltaProbeInterruptEv,"ax",%progbits
 2493              		.align	2
 2494              		.global	_ZN4Move19DeltaProbeInterruptEv
 2495              		.thumb
 2496              		.thumb_func
 2497              		.type	_ZN4Move19DeltaProbeInterruptEv, %function
 2498              	_ZN4Move19DeltaProbeInterruptEv:
 2499              		@ args = 0, pretend = 0, frame = 0
 2500              		@ frame_needed = 0, uses_anonymous_args = 0
 2501 0000 2DE9F84F 		push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2502 0004 DFF8CC80 		ldr	r8, .L282+12
 2503 0008 8146     		mov	r9, r0
 2504 000a 00F59864 		add	r4, r0, #1216
 2505 000e D8F80000 		ldr	r0, [r8]
 2506 0012 FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 2507 0016 0128     		cmp	r0, #1
 2508 0018 2B4F     		ldr	r7, .L282
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 45


 2509 001a 2C4E     		ldr	r6, .L282+4
 2510 001c 2C4D     		ldr	r5, .L282+8
 2511 001e 4FD0     		beq	.L280
 2512              	.L266:
 2513 0020 2046     		mov	r0, r4
 2514 0022 FFF7FEFF 		bl	_ZNK10DeltaProbe12GetDirectionEv
 2515 0026 D8F800A0 		ldr	r10, [r8]
 2516 002a 8346     		mov	fp, r0
 2517 002c 0246     		mov	r2, r0
 2518 002e 0021     		movs	r1, #0
 2519 0030 5046     		mov	r0, r10
 2520 0032 FFF7FEFF 		bl	_ZN8Platform12SetDirectionEjb
 2521 0036 5046     		mov	r0, r10
 2522 0038 5A46     		mov	r2, fp
 2523 003a 0121     		movs	r1, #1
 2524 003c FFF7FEFF 		bl	_ZN8Platform12SetDirectionEjb
 2525 0040 5046     		mov	r0, r10
 2526 0042 5A46     		mov	r2, fp
 2527 0044 0221     		movs	r1, #2
 2528 0046 FFF7FEFF 		bl	_ZN8Platform12SetDirectionEjb
 2529 004a 0A23     		movs	r3, #10
 2530              	.L268:
 2531              	@ 1273 "../src/Movement/Move.cpp" 1
 2532 004c 00BF     		nop
 2533              	@ 0 "" 2
 2534              	@ 1274 "../src/Movement/Move.cpp" 1
 2535 004e 00BF     		nop
 2536              	@ 0 "" 2
 2537              	@ 1275 "../src/Movement/Move.cpp" 1
 2538 0050 00BF     		nop
 2539              	@ 0 "" 2
 2540              	@ 1276 "../src/Movement/Move.cpp" 1
 2541 0052 00BF     		nop
 2542              	@ 0 "" 2
 2543              	@ 1277 "../src/Movement/Move.cpp" 1
 2544 0054 00BF     		nop
 2545              	@ 0 "" 2
 2546              	@ 1278 "../src/Movement/Move.cpp" 1
 2547 0056 00BF     		nop
 2548              	@ 0 "" 2
 2549              	@ 1279 "../src/Movement/Move.cpp" 1
 2550 0058 00BF     		nop
 2551              	@ 0 "" 2
 2552              	@ 1280 "../src/Movement/Move.cpp" 1
 2553 005a 00BF     		nop
 2554              	@ 0 "" 2
 2555              	@ 1281 "../src/Movement/Move.cpp" 1
 2556 005c 00BF     		nop
 2557              	@ 0 "" 2
 2558              		.thumb
 2559 005e 013B     		subs	r3, r3, #1
 2560 0060 F4D1     		bne	.L268
 2561 0062 DAF81C12 		ldr	r1, [r10, #540]
 2562 0066 DAF81822 		ldr	r2, [r10, #536]
 2563 006a DAF82032 		ldr	r3, [r10, #544]
 2564 006e 0A43     		orrs	r2, r2, r1
 2565 0070 1A43     		orrs	r2, r2, r3
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 46


 2566 0072 5108     		lsrs	r1, r2, #1
 2567 0074 BA63     		str	r2, [r7, #56]
 2568 0076 0A23     		movs	r3, #10
 2569 0078 B263     		str	r2, [r6, #56]
 2570 007a A963     		str	r1, [r5, #56]
 2571              	.L270:
 2572              	@ 1273 "../src/Movement/Move.cpp" 1
 2573 007c 00BF     		nop
 2574              	@ 0 "" 2
 2575              	@ 1274 "../src/Movement/Move.cpp" 1
 2576 007e 00BF     		nop
 2577              	@ 0 "" 2
 2578              	@ 1275 "../src/Movement/Move.cpp" 1
 2579 0080 00BF     		nop
 2580              	@ 0 "" 2
 2581              	@ 1276 "../src/Movement/Move.cpp" 1
 2582 0082 00BF     		nop
 2583              	@ 0 "" 2
 2584              	@ 1277 "../src/Movement/Move.cpp" 1
 2585 0084 00BF     		nop
 2586              	@ 0 "" 2
 2587              	@ 1278 "../src/Movement/Move.cpp" 1
 2588 0086 00BF     		nop
 2589              	@ 0 "" 2
 2590              	@ 1279 "../src/Movement/Move.cpp" 1
 2591 0088 00BF     		nop
 2592              	@ 0 "" 2
 2593              	@ 1280 "../src/Movement/Move.cpp" 1
 2594 008a 00BF     		nop
 2595              	@ 0 "" 2
 2596              	@ 1281 "../src/Movement/Move.cpp" 1
 2597 008c 00BF     		nop
 2598              	@ 0 "" 2
 2599              		.thumb
 2600 008e 013B     		subs	r3, r3, #1
 2601 0090 F4D1     		bne	.L270
 2602 0092 BB63     		str	r3, [r7, #56]
 2603 0094 2046     		mov	r0, r4
 2604 0096 B363     		str	r3, [r6, #56]
 2605 0098 AB63     		str	r3, [r5, #56]
 2606 009a FFF7FEFF 		bl	_ZN10DeltaProbe16CalcNextStepTimeEv
 2607 009e 431C     		adds	r3, r0, #1
 2608 00a0 01D1     		bne	.L281
 2609              	.L265:
 2610 00a2 BDE8F88F 		pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2611              	.L281:
 2612 00a6 D9F8D835 		ldr	r3, [r9, #1496]
 2613 00aa 1844     		add	r0, r0, r3
 2614 00ac FFF7FEFF 		bl	_ZN8Platform17ScheduleInterruptEm
 2615 00b0 0028     		cmp	r0, #0
 2616 00b2 F6D0     		beq	.L265
 2617 00b4 D8F80000 		ldr	r0, [r8]
 2618 00b8 FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 2619 00bc 0128     		cmp	r0, #1
 2620 00be AFD1     		bne	.L266
 2621              	.L280:
 2622 00c0 2046     		mov	r0, r4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 47


 2623 00c2 FFF7FEFF 		bl	_ZN10DeltaProbe7TriggerEv
 2624 00c6 ABE7     		b	.L266
 2625              	.L283:
 2626              		.align	2
 2627              	.L282:
 2628 00c8 00140E40 		.word	1074664448
 2629 00cc 00120E40 		.word	1074663936
 2630 00d0 000E0E40 		.word	1074662912
 2631 00d4 00000000 		.word	reprap
 2632              		.size	_ZN4Move19DeltaProbeInterruptEv, .-_ZN4Move19DeltaProbeInterruptEv
 2633              		.section	.text._ZN4Move20CurrentMoveCompletedEv,"ax",%progbits
 2634              		.align	2
 2635              		.global	_ZN4Move20CurrentMoveCompletedEv
 2636              		.thumb
 2637              		.thumb_func
 2638              		.type	_ZN4Move20CurrentMoveCompletedEv, %function
 2639              	_ZN4Move20CurrentMoveCompletedEv:
 2640              		@ args = 0, pretend = 0, frame = 0
 2641              		@ frame_needed = 0, uses_anonymous_args = 0
 2642 0000 0146     		mov	r1, r0
 2643 0002 10B5     		push	{r4, lr}
 2644 0004 0446     		mov	r4, r0
 2645 0006 04F12C02 		add	r2, r4, #44
 2646 000a 51F8540B 		ldr	r0, [r1], #84
 2647 000e FFF7FEFF 		bl	_ZN3DDA16FetchEndPositionEPVlPVf
 2648 0012 84F85000 		strb	r0, [r4, #80]
 2649 0016 2268     		ldr	r2, [r4]
 2650 0018 0023     		movs	r3, #0
 2651 001a 0421     		movs	r1, #4
 2652 001c 1172     		strb	r1, [r2, #8]
 2653 001e 2360     		str	r3, [r4]
 2654 0020 A368     		ldr	r3, [r4, #8]
 2655 0022 1B68     		ldr	r3, [r3]
 2656 0024 A360     		str	r3, [r4, #8]
 2657 0026 D4F80436 		ldr	r3, [r4, #1540]
 2658 002a 0133     		adds	r3, r3, #1
 2659 002c C4F80436 		str	r3, [r4, #1540]
 2660 0030 10BD     		pop	{r4, pc}
 2661              		.size	_ZN4Move20CurrentMoveCompletedEv, .-_ZN4Move20CurrentMoveCompletedEv
 2662 0032 00BF     		.section	.text._ZN4Move4SpinEv,"ax",%progbits
 2663              		.align	2
 2664              		.global	_ZN4Move4SpinEv
 2665              		.thumb
 2666              		.thumb_func
 2667              		.type	_ZN4Move4SpinEv, %function
 2668              	_ZN4Move4SpinEv:
 2669              		@ args = 0, pretend = 0, frame = 88
 2670              		@ frame_needed = 0, uses_anonymous_args = 0
 2671 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 2672 0004 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 2673 0006 97B0     		sub	sp, sp, #92
 2674 0008 0446     		mov	r4, r0
 2675 000a 002B     		cmp	r3, #0
 2676 000c 53D0     		beq	.L285
 2677 000e C369     		ldr	r3, [r0, #28]
 2678 0010 DFF8C082 		ldr	r8, .L387+4
 2679 0014 B3F57A7F 		cmp	r3, #1000
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 48


 2680 0018 3CBF     		itt	cc
 2681 001a 0133     		addcc	r3, r3, #1
 2682 001c C361     		strcc	r3, [r0, #28]
 2683 001e C068     		ldr	r0, [r0, #12]
 2684 0020 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 2685 0022 042B     		cmp	r3, #4
 2686 0024 08BF     		it	eq
 2687 0026 0025     		moveq	r5, #0
 2688 0028 1AD0     		beq	.L295
 2689 002a 47E0     		b	.L294
 2690              	.L292:
 2691 002c D8F80030 		ldr	r3, [r8]
 2692 0030 D4F8FC15 		ldr	r1, [r4, #1532]
 2693 0034 D3F8C020 		ldr	r2, [r3, #192]
 2694 0038 0131     		adds	r1, r1, #1
 2695 003a 42F00202 		orr	r2, r2, #2
 2696 003e C4F8FC15 		str	r1, [r4, #1532]
 2697 0042 C3F8C020 		str	r2, [r3, #192]
 2698              	.L291:
 2699 0046 E368     		ldr	r3, [r4, #12]
 2700 0048 5A7A     		ldrb	r2, [r3, #9]	@ zero_extendqisi2
 2701 004a 1D72     		strb	r5, [r3, #8]
 2702 004c 5206     		lsls	r2, r2, #25
 2703 004e 02D5     		bpl	.L293
 2704 0050 6269     		ldr	r2, [r4, #20]
 2705 0052 0132     		adds	r2, r2, #1
 2706 0054 6261     		str	r2, [r4, #20]
 2707              	.L293:
 2708 0056 1868     		ldr	r0, [r3]
 2709 0058 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 2710 005a E060     		str	r0, [r4, #12]
 2711 005c 042B     		cmp	r3, #4
 2712 005e 2DD1     		bne	.L294
 2713              	.L295:
 2714 0060 FFF7FEFF 		bl	_ZNK3DDA12HasStepErrorEv
 2715 0064 0028     		cmp	r0, #0
 2716 0066 EED0     		beq	.L291
 2717 0068 B8F84030 		ldrh	r3, [r8, #64]
 2718 006c D906     		lsls	r1, r3, #27
 2719 006e DDD5     		bpl	.L292
 2720 0070 E068     		ldr	r0, [r4, #12]
 2721 0072 FFF7FEFF 		bl	_ZNK3DDA10DebugPrintEv
 2722 0076 D9E7     		b	.L292
 2723              	.L330:
 2724 0078 2846     		mov	r0, r5
 2725 007a FFF7FEFF 		bl	_ZNK3DDA11GetTimeLeftEv
 2726 007e 2D68     		ldr	r5, [r5]
 2727 0080 6368     		ldr	r3, [r4, #4]
 2728 0082 0136     		adds	r6, r6, #1
 2729 0084 AB42     		cmp	r3, r5
 2730 0086 0744     		add	r7, r7, r0
 2731 0088 5BD1     		bne	.L335
 2732              	.L333:
 2733 008a 637C     		ldrb	r3, [r4, #17]	@ zero_extendqisi2
 2734 008c 6BB1     		cbz	r3, .L313
 2735 008e E369     		ldr	r3, [r4, #28]
 2736 0090 092B     		cmp	r3, #9
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 49


 2737 0092 0AD9     		bls	.L313
 2738 0094 2068     		ldr	r0, [r4]
 2739 0096 FFF7FEFF 		bl	_ZNK3DDA8CalcTimeEv
 2740 009a 0146     		mov	r1, r0
 2741 009c A06A     		ldr	r0, [r4, #40]	@ float
 2742 009e FFF7FEFF 		bl	__aeabi_fadd
 2743 00a2 A062     		str	r0, [r4, #40]	@ float
 2744 00a4 2046     		mov	r0, r4
 2745 00a6 FFF7FEFF 		bl	_ZN4Move20CurrentMoveCompletedEv
 2746              	.L313:
 2747 00aa D8F80000 		ldr	r0, [r8]
 2748 00ae 04F22C41 		addw	r1, r4, #1068
 2749 00b2 FFF7FEFF 		bl	_ZN8Platform11ClassReportERf
 2750              	.L285:
 2751 00b6 17B0     		add	sp, sp, #92
 2752              		@ sp needed
 2753 00b8 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2754              	.L294:
 2755 00bc 6368     		ldr	r3, [r4, #4]
 2756 00be 1A7A     		ldrb	r2, [r3, #8]	@ zero_extendqisi2
 2757 00c0 002A     		cmp	r2, #0
 2758 00c2 32D1     		bne	.L296
 2759 00c4 1A68     		ldr	r2, [r3]
 2760 00c6 127A     		ldrb	r2, [r2, #8]	@ zero_extendqisi2
 2761 00c8 012A     		cmp	r2, #1
 2762 00ca 2ED0     		beq	.L296
 2763 00cc 5D68     		ldr	r5, [r3, #4]
 2764 00ce 2B7A     		ldrb	r3, [r5, #8]	@ zero_extendqisi2
 2765 00d0 012B     		cmp	r3, #1
 2766 00d2 1DD1     		bne	.L302
 2767 00d4 0026     		movs	r6, #0
 2768 00d6 3746     		mov	r7, r6
 2769              	.L301:
 2770 00d8 3146     		mov	r1, r6
 2771 00da 3846     		mov	r0, r7
 2772 00dc FFF7FEFF 		bl	__aeabi_fadd
 2773 00e0 0746     		mov	r7, r0
 2774 00e2 2846     		mov	r0, r5
 2775 00e4 FFF7FEFF 		bl	_ZNK3DDA8CalcTimeEv
 2776 00e8 6D68     		ldr	r5, [r5, #4]
 2777 00ea 0646     		mov	r6, r0
 2778 00ec 2B7A     		ldrb	r3, [r5, #8]	@ zero_extendqisi2
 2779 00ee 012B     		cmp	r3, #1
 2780 00f0 F2D0     		beq	.L301
 2781 00f2 3846     		mov	r0, r7
 2782 00f4 4FF07C51 		mov	r1, #1056964608
 2783 00f8 FFF7FEFF 		bl	__aeabi_fcmplt
 2784 00fc 40B9     		cbnz	r0, .L302
 2785 00fe 3146     		mov	r1, r6
 2786 0100 3846     		mov	r0, r7
 2787 0102 FFF7FEFF 		bl	__aeabi_fadd
 2788 0106 4FF08041 		mov	r1, #1073741824
 2789 010a FFF7FEFF 		bl	__aeabi_fcmplt
 2790 010e 60B1     		cbz	r0, .L296
 2791              	.L302:
 2792 0110 01A9     		add	r1, sp, #4
 2793 0112 D8F81000 		ldr	r0, [r8, #16]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 50


 2794 0116 FFF7FEFF 		bl	_ZN6GCodes8ReadMoveERNS_7RawMoveE
 2795 011a 0028     		cmp	r0, #0
 2796 011c 30D0     		beq	.L378
 2797 011e A37C     		ldrb	r3, [r4, #18]	@ zero_extendqisi2
 2798 0120 002B     		cmp	r3, #0
 2799 0122 7AD1     		bne	.L379
 2800              	.L304:
 2801 0124 637C     		ldrb	r3, [r4, #17]	@ zero_extendqisi2
 2802 0126 012B     		cmp	r3, #1
 2803 0128 36D9     		bls	.L380
 2804              	.L296:
 2805 012a 94F8DC35 		ldrb	r3, [r4, #1500]	@ zero_extendqisi2
 2806 012e 002B     		cmp	r3, #0
 2807 0130 BBD1     		bne	.L313
 2808 0132 2368     		ldr	r3, [r4]
 2809 0134 002B     		cmp	r3, #0
 2810 0136 47D0     		beq	.L381
 2811              	.L314:
 2812 0138 2568     		ldr	r5, [r4]
 2813 013a 002D     		cmp	r5, #0
 2814 013c B5D0     		beq	.L313
 2815 013e 0026     		movs	r6, #0
 2816 0140 3746     		mov	r7, r6
 2817              	.L335:
 2818 0142 2B7A     		ldrb	r3, [r5, #8]	@ zero_extendqisi2
 2819 0144 DBB2     		uxtb	r3, r3
 2820 0146 9A1E     		subs	r2, r3, #2
 2821 0148 022A     		cmp	r2, #2
 2822 014a 95D9     		bls	.L330
 2823 014c 012B     		cmp	r3, #1
 2824 014e 9CD1     		bne	.L333
 2825 0150 5F4B     		ldr	r3, .L387
 2826 0152 9F42     		cmp	r7, r3
 2827 0154 99DC     		bgt	.L333
 2828 0156 092E     		cmp	r6, #9
 2829 0158 97D8     		bhi	.L333
 2830 015a 9946     		mov	r9, r3
 2831 015c 03E0     		b	.L334
 2832              	.L382:
 2833 015e 4F45     		cmp	r7, r9
 2834 0160 93DC     		bgt	.L333
 2835 0162 0A2E     		cmp	r6, #10
 2836 0164 91D0     		beq	.L333
 2837              	.L334:
 2838 0166 2846     		mov	r0, r5
 2839 0168 FFF7FEFF 		bl	_ZN3DDA7PrepareEv
 2840 016c 2846     		mov	r0, r5
 2841 016e FFF7FEFF 		bl	_ZNK3DDA11GetTimeLeftEv
 2842 0172 2D68     		ldr	r5, [r5]
 2843 0174 0136     		adds	r6, r6, #1
 2844 0176 2B7A     		ldrb	r3, [r5, #8]	@ zero_extendqisi2
 2845 0178 0744     		add	r7, r7, r0
 2846 017a 012B     		cmp	r3, #1
 2847 017c EFD0     		beq	.L382
 2848 017e 84E7     		b	.L333
 2849              	.L378:
 2850 0180 2368     		ldr	r3, [r4]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 51


 2851 0182 002B     		cmp	r3, #0
 2852 0184 D1D0     		beq	.L296
 2853 0186 A37C     		ldrb	r3, [r4, #18]	@ zero_extendqisi2
 2854 0188 002B     		cmp	r3, #0
 2855 018a CED1     		bne	.L296
 2856 018c FFF7FEFF 		bl	millis
 2857 0190 0123     		movs	r3, #1
 2858 0192 6062     		str	r0, [r4, #36]
 2859 0194 A374     		strb	r3, [r4, #18]
 2860 0196 C8E7     		b	.L296
 2861              	.L380:
 2862 0198 9DF85230 		ldrb	r3, [sp, #82]	@ zero_extendqisi2
 2863 019c 002B     		cmp	r3, #0
 2864 019e 4BD0     		beq	.L308
 2865 01a0 012B     		cmp	r3, #1
 2866 01a2 45D0     		beq	.L383
 2867              	.L336:
 2868 01a4 0022     		movs	r2, #0
 2869              	.L309:
 2870 01a6 01A9     		add	r1, sp, #4
 2871 01a8 6068     		ldr	r0, [r4, #4]
 2872 01aa FFF7FEFF 		bl	_ZN3DDA4InitERKN6GCodes7RawMoveEb
 2873 01ae 0028     		cmp	r0, #0
 2874 01b0 BBD0     		beq	.L296
 2875 01b2 6368     		ldr	r3, [r4, #4]
 2876 01b4 D4F80026 		ldr	r2, [r4, #1536]
 2877 01b8 1B68     		ldr	r3, [r3]
 2878 01ba 0132     		adds	r2, r2, #1
 2879 01bc 0021     		movs	r1, #0
 2880 01be 6360     		str	r3, [r4, #4]
 2881 01c0 C4F80026 		str	r2, [r4, #1536]
 2882 01c4 E161     		str	r1, [r4, #28]
 2883 01c6 B0E7     		b	.L296
 2884              	.L381:
 2885 01c8 E369     		ldr	r3, [r4, #28]
 2886 01ca 0A2B     		cmp	r3, #10
 2887 01cc B4D9     		bls	.L314
 2888 01ce A568     		ldr	r5, [r4, #8]
 2889 01d0 2B7A     		ldrb	r3, [r5, #8]	@ zero_extendqisi2
 2890 01d2 012B     		cmp	r3, #1
 2891 01d4 41D0     		beq	.L384
 2892              	.L315:
 2893 01d6 2B7A     		ldrb	r3, [r5, #8]	@ zero_extendqisi2
 2894 01d8 022B     		cmp	r3, #2
 2895 01da 637C     		ldrb	r3, [r4, #17]	@ zero_extendqisi2
 2896 01dc 37D0     		beq	.L385
 2897 01de 002B     		cmp	r3, #0
 2898 01e0 AAD1     		bne	.L314
 2899 01e2 94F83034 		ldrb	r3, [r4, #1072]	@ zero_extendqisi2
 2900 01e6 012B     		cmp	r3, #1
 2901 01e8 4ED0     		beq	.L386
 2902              	.L324:
 2903 01ea 022B     		cmp	r3, #2
 2904 01ec A4D1     		bne	.L314
 2905 01ee D8F80000 		ldr	r0, [r8]
 2906 01f2 FFF7FEFF 		bl	_ZN8Platform4TimeEv
 2907 01f6 D4F82814 		ldr	r1, [r4, #1064]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 52


 2908 01fa FFF7FEFF 		bl	__aeabi_fsub
 2909 01fe D4F82414 		ldr	r1, [r4, #1060]	@ float
 2910 0202 344D     		ldr	r5, .L387+4
 2911 0204 FFF7FEFF 		bl	__aeabi_fcmpge
 2912 0208 0028     		cmp	r0, #0
 2913 020a 95D0     		beq	.L314
 2914 020c 2868     		ldr	r0, [r5]
 2915 020e FFF7FEFF 		bl	_ZN8Platform14SetDriversIdleEv
 2916 0212 0023     		movs	r3, #0
 2917 0214 84F83034 		strb	r3, [r4, #1072]
 2918 0218 8EE7     		b	.L314
 2919              	.L379:
 2920 021a 0023     		movs	r3, #0
 2921 021c A374     		strb	r3, [r4, #18]
 2922 021e FFF7FEFF 		bl	millis
 2923 0222 626A     		ldr	r2, [r4, #36]
 2924 0224 236A     		ldr	r3, [r4, #32]
 2925 0226 801A     		subs	r0, r0, r2
 2926 0228 9842     		cmp	r0, r3
 2927 022a 88BF     		it	hi
 2928 022c 2062     		strhi	r0, [r4, #32]
 2929 022e 79E7     		b	.L304
 2930              	.L383:
 2931 0230 94F86C24 		ldrb	r2, [r4, #1132]	@ zero_extendqisi2
 2932 0234 002A     		cmp	r2, #0
 2933 0236 B5D1     		bne	.L336
 2934              	.L308:
 2935 0238 D3F10103 		rsbs	r3, r3, #1
 2936 023c 129A     		ldr	r2, [sp, #72]
 2937 023e 38BF     		it	cc
 2938 0240 0023     		movcc	r3, #0
 2939 0242 2046     		mov	r0, r4
 2940 0244 01A9     		add	r1, sp, #4
 2941 0246 FFF7FEFF 		bl	_ZNK4Move9TransformEPfmb
 2942 024a 0122     		movs	r2, #1
 2943 024c ABE7     		b	.L309
 2944              	.L385:
 2945 024e 43B1     		cbz	r3, .L317
 2946 0250 2560     		str	r5, [r4]
 2947              	.L318:
 2948 0252 0123     		movs	r3, #1
 2949 0254 84F83034 		strb	r3, [r4, #1072]
 2950 0258 6EE7     		b	.L314
 2951              	.L384:
 2952 025a 2846     		mov	r0, r5
 2953 025c FFF7FEFF 		bl	_ZN3DDA7PrepareEv
 2954 0260 B9E7     		b	.L315
 2955              	.L317:
 2956 0262 FFF7FEFF 		bl	_ZN8Platform20DisableStepInterruptEv
 2957 0266 1C4B     		ldr	r3, .L387+8
 2958 0268 1969     		ldr	r1, [r3, #16]
 2959 026a A368     		ldr	r3, [r4, #8]
 2960 026c 2360     		str	r3, [r4]
 2961 026e 2068     		ldr	r0, [r4]
 2962 0270 FFF7FEFF 		bl	_ZN3DDA5StartEm
 2963 0274 0028     		cmp	r0, #0
 2964 0276 ECD0     		beq	.L318
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 53


 2965 0278 2368     		ldr	r3, [r4]
 2966 027a 0BB3     		cbz	r3, .L320
 2967              	.L322:
 2968 027c 2068     		ldr	r0, [r4]
 2969 027e FFF7FEFF 		bl	_ZN3DDA4StepEv
 2970 0282 0028     		cmp	r0, #0
 2971 0284 FAD1     		bne	.L322
 2972 0286 E4E7     		b	.L318
 2973              	.L386:
 2974 0288 D8F81000 		ldr	r0, [r8, #16]
 2975 028c 114D     		ldr	r5, .L387+4
 2976 028e FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 2977 0292 70B9     		cbnz	r0, .L325
 2978 0294 D4F82404 		ldr	r0, [r4, #1060]	@ float
 2979 0298 0021     		movs	r1, #0
 2980 029a FFF7FEFF 		bl	__aeabi_fcmpgt
 2981 029e 40B1     		cbz	r0, .L325
 2982 02a0 2868     		ldr	r0, [r5]
 2983 02a2 FFF7FEFF 		bl	_ZN8Platform4TimeEv
 2984 02a6 0223     		movs	r3, #2
 2985 02a8 C4F82804 		str	r0, [r4, #1064]	@ float
 2986 02ac 84F83034 		strb	r3, [r4, #1072]
 2987 02b0 42E7     		b	.L314
 2988              	.L325:
 2989 02b2 637C     		ldrb	r3, [r4, #17]	@ zero_extendqisi2
 2990 02b4 002B     		cmp	r3, #0
 2991 02b6 7FF43FAF 		bne	.L314
 2992 02ba 94F83034 		ldrb	r3, [r4, #1072]	@ zero_extendqisi2
 2993 02be 94E7     		b	.L324
 2994              	.L320:
 2995 02c0 94F8DC35 		ldrb	r3, [r4, #1500]	@ zero_extendqisi2
 2996 02c4 002B     		cmp	r3, #0
 2997 02c6 C4D0     		beq	.L318
 2998 02c8 2046     		mov	r0, r4
 2999 02ca FFF7FEFF 		bl	_ZN4Move19DeltaProbeInterruptEv
 3000 02ce C0E7     		b	.L318
 3001              	.L388:
 3002              		.align	2
 3003              	.L387:
 3004 02d0 6E400100 		.word	82030
 3005 02d4 00000000 		.word	reprap
 3006 02d8 00400840 		.word	1074282496
 3007              		.size	_ZN4Move4SpinEv, .-_ZN4Move4SpinEv
 3008              		.global	__aeabi_f2uiz
 3009              		.section	.text._ZN4Move16TryStartNextMoveEm,"ax",%progbits
 3010              		.align	2
 3011              		.global	_ZN4Move16TryStartNextMoveEm
 3012              		.thumb
 3013              		.thumb_func
 3014              		.type	_ZN4Move16TryStartNextMoveEm, %function
 3015              	_ZN4Move16TryStartNextMoveEm:
 3016              		@ args = 0, pretend = 0, frame = 0
 3017              		@ frame_needed = 0, uses_anonymous_args = 0
 3018 0000 8368     		ldr	r3, [r0, #8]
 3019 0002 70B5     		push	{r4, r5, r6, lr}
 3020 0004 1B7A     		ldrb	r3, [r3, #8]	@ zero_extendqisi2
 3021 0006 DBB2     		uxtb	r3, r3
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 54


 3022 0008 022B     		cmp	r3, #2
 3023 000a 21D0     		beq	.L398
 3024 000c 012B     		cmp	r3, #1
 3025 000e 1BD0     		beq	.L399
 3026              	.L391:
 3027 0010 134B     		ldr	r3, .L401
 3028 0012 0021     		movs	r1, #0
 3029 0014 1C68     		ldr	r4, [r3]
 3030 0016 D4F8B804 		ldr	r0, [r4, #1208]	@ float
 3031 001a FFF7FEFF 		bl	__aeabi_fcmpgt
 3032 001e 70B1     		cbz	r0, .L392
 3033 0020 94F8C534 		ldrb	r3, [r4, #1221]	@ zero_extendqisi2
 3034 0024 94F8C464 		ldrb	r6, [r4, #1220]	@ zero_extendqisi2
 3035 0028 5BB9     		cbnz	r3, .L400
 3036 002a 0025     		movs	r5, #0
 3037              	.L394:
 3038 002c D4F8BC04 		ldr	r0, [r4, #1212]	@ float
 3039 0030 FFF7FEFF 		bl	__aeabi_f2uiz
 3040 0034 2946     		mov	r1, r5
 3041 0036 82B2     		uxth	r2, r0
 3042 0038 3046     		mov	r0, r6
 3043 003a FFF7FEFF 		bl	_Z9AnalogOuthft
 3044              	.L392:
 3045 003e 0020     		movs	r0, #0
 3046 0040 70BD     		pop	{r4, r5, r6, pc}
 3047              	.L400:
 3048 0042 4FF07E55 		mov	r5, #1065353216
 3049 0046 F1E7     		b	.L394
 3050              	.L399:
 3051 0048 8369     		ldr	r3, [r0, #24]
 3052 004a 0133     		adds	r3, r3, #1
 3053 004c 8361     		str	r3, [r0, #24]
 3054 004e DFE7     		b	.L391
 3055              	.L398:
 3056 0050 8368     		ldr	r3, [r0, #8]
 3057 0052 BDE87040 		pop	{r4, r5, r6, lr}
 3058 0056 0360     		str	r3, [r0]
 3059 0058 0068     		ldr	r0, [r0]
 3060 005a FFF7FEBF 		b	_ZN3DDA5StartEm
 3061              	.L402:
 3062 005e 00BF     		.align	2
 3063              	.L401:
 3064 0060 00000000 		.word	reprap
 3065              		.size	_ZN4Move16TryStartNextMoveEm, .-_ZN4Move16TryStartNextMoveEm
 3066              		.section	.text._ZN4Move15ZProbeTriggeredEP3DDA,"ax",%progbits
 3067              		.align	2
 3068              		.global	_ZN4Move15ZProbeTriggeredEP3DDA
 3069              		.thumb
 3070              		.thumb_func
 3071              		.type	_ZN4Move15ZProbeTriggeredEP3DDA, %function
 3072              	_ZN4Move15ZProbeTriggeredEP3DDA:
 3073              		@ args = 0, pretend = 0, frame = 0
 3074              		@ frame_needed = 0, uses_anonymous_args = 0
 3075              		@ link register save eliminated.
 3076 0000 024B     		ldr	r3, .L404
 3077 0002 0122     		movs	r2, #1
 3078 0004 1B69     		ldr	r3, [r3, #16]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 55


 3079 0006 83F89822 		strb	r2, [r3, #664]
 3080 000a 7047     		bx	lr
 3081              	.L405:
 3082              		.align	2
 3083              	.L404:
 3084 000c 00000000 		.word	reprap
 3085              		.size	_ZN4Move15ZProbeTriggeredEP3DDA, .-_ZN4Move15ZProbeTriggeredEP3DDA
 3086              		.section	.text._ZNK4Move25GetCurrentMachinePositionEPfb,"ax",%progbits
 3087              		.align	2
 3088              		.global	_ZNK4Move25GetCurrentMachinePositionEPfb
 3089              		.thumb
 3090              		.thumb_func
 3091              		.type	_ZNK4Move25GetCurrentMachinePositionEPfb, %function
 3092              	_ZNK4Move25GetCurrentMachinePositionEPfb:
 3093              		@ args = 0, pretend = 0, frame = 0
 3094              		@ frame_needed = 0, uses_anonymous_args = 0
 3095 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 3096 0004 0F4B     		ldr	r3, .L412
 3097 0006 4068     		ldr	r0, [r0, #4]
 3098 0008 1B69     		ldr	r3, [r3, #16]
 3099 000a D0F80490 		ldr	r9, [r0, #4]
 3100 000e D3F88461 		ldr	r6, [r3, #388]
 3101 0012 0027     		movs	r7, #0
 3102 0014 0D46     		mov	r5, r1
 3103 0016 9046     		mov	r8, r2
 3104 0018 0024     		movs	r4, #0
 3105 001a 04E0     		b	.L410
 3106              	.L407:
 3107 001c 45F82470 		str	r7, [r5, r4, lsl #2]	@ float
 3108 0020 0134     		adds	r4, r4, #1
 3109 0022 092C     		cmp	r4, #9
 3110 0024 0BD0     		beq	.L411
 3111              	.L410:
 3112 0026 A642     		cmp	r6, r4
 3113 0028 F8D9     		bls	.L407
 3114 002a 2146     		mov	r1, r4
 3115 002c 4846     		mov	r0, r9
 3116 002e 4246     		mov	r2, r8
 3117 0030 FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 3118 0034 45F82400 		str	r0, [r5, r4, lsl #2]	@ float
 3119 0038 0134     		adds	r4, r4, #1
 3120 003a 092C     		cmp	r4, #9
 3121 003c F3D1     		bne	.L410
 3122              	.L411:
 3123 003e BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 3124              	.L413:
 3125 0042 00BF     		.align	2
 3126              	.L412:
 3127 0044 00000000 		.word	reprap
 3128              		.size	_ZNK4Move25GetCurrentMachinePositionEPfb, .-_ZNK4Move25GetCurrentMachinePositionEPfb
 3129              		.section	.text._ZN4Move23MotorEndpointToPositionElj,"ax",%progbits
 3130              		.align	2
 3131              		.global	_ZN4Move23MotorEndpointToPositionElj
 3132              		.thumb
 3133              		.thumb_func
 3134              		.type	_ZN4Move23MotorEndpointToPositionElj, %function
 3135              	_ZN4Move23MotorEndpointToPositionElj:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 56


 3136              		@ args = 0, pretend = 0, frame = 0
 3137              		@ frame_needed = 0, uses_anonymous_args = 0
 3138 0000 10B5     		push	{r4, lr}
 3139 0002 0C46     		mov	r4, r1
 3140 0004 FFF7FEFF 		bl	__aeabi_i2f
 3141 0008 034B     		ldr	r3, .L415
 3142 000a 4E34     		adds	r4, r4, #78
 3143 000c 1B68     		ldr	r3, [r3]
 3144 000e 53F82410 		ldr	r1, [r3, r4, lsl #2]	@ float
 3145 0012 FFF7FEFF 		bl	__aeabi_fdiv
 3146 0016 10BD     		pop	{r4, pc}
 3147              	.L416:
 3148              		.align	2
 3149              	.L415:
 3150 0018 00000000 		.word	reprap
 3151              		.size	_ZN4Move23MotorEndpointToPositionElj, .-_ZN4Move23MotorEndpointToPositionElj
 3152              		.section	.text._ZNK4Move11IsExtrudingEv,"ax",%progbits
 3153              		.align	2
 3154              		.global	_ZNK4Move11IsExtrudingEv
 3155              		.thumb
 3156              		.thumb_func
 3157              		.type	_ZNK4Move11IsExtrudingEv, %function
 3158              	_ZNK4Move11IsExtrudingEv:
 3159              		@ args = 0, pretend = 0, frame = 0
 3160              		@ frame_needed = 0, uses_anonymous_args = 0
 3161              		@ link register save eliminated.
 3162              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 3163 0000 72B6     		cpsid i
 3164              	@ 0 "" 2
 3165              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 3166 0002 BFF35F8F 		dmb
 3167              	@ 0 "" 2
 3168              		.thumb
 3169 0006 084B     		ldr	r3, .L420
 3170 0008 0022     		movs	r2, #0
 3171 000a 1A70     		strb	r2, [r3]
 3172 000c 0268     		ldr	r2, [r0]
 3173 000e 4AB1     		cbz	r2, .L419
 3174 0010 0268     		ldr	r2, [r0]
 3175 0012 507A     		ldrb	r0, [r2, #9]	@ zero_extendqisi2
 3176 0014 C0F30010 		ubfx	r0, r0, #4, #1
 3177              	.L418:
 3178 0018 0122     		movs	r2, #1
 3179 001a 1A70     		strb	r2, [r3]
 3180              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 3181 001c BFF35F8F 		dmb
 3182              	@ 0 "" 2
 3183              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 3184 0020 62B6     		cpsie i
 3185              	@ 0 "" 2
 3186              		.thumb
 3187 0022 7047     		bx	lr
 3188              	.L419:
 3189 0024 1046     		mov	r0, r2
 3190 0026 F7E7     		b	.L418
 3191              	.L421:
 3192              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 57


 3193              	.L420:
 3194 0028 00000000 		.word	g_interrupt_enabled
 3195              		.size	_ZNK4Move11IsExtrudingEv, .-_ZNK4Move11IsExtrudingEv
 3196              		.section	.text._ZNK4Move22GetCurrentUserPositionEPfhm,"ax",%progbits
 3197              		.align	2
 3198              		.global	_ZNK4Move22GetCurrentUserPositionEPfhm
 3199              		.thumb
 3200              		.thumb_func
 3201              		.type	_ZNK4Move22GetCurrentUserPositionEPfhm, %function
 3202              	_ZNK4Move22GetCurrentUserPositionEPfhm:
 3203              		@ args = 0, pretend = 0, frame = 0
 3204              		@ frame_needed = 0, uses_anonymous_args = 0
 3205 0000 022A     		cmp	r2, #2
 3206 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 3207 0004 1446     		mov	r4, r2
 3208 0006 1F46     		mov	r7, r3
 3209 0008 0546     		mov	r5, r0
 3210 000a 0E46     		mov	r6, r1
 3211 000c 0FD0     		beq	.L423
 3212 000e 012A     		cmp	r2, #1
 3213 0010 0AD0     		beq	.L431
 3214 0012 0022     		movs	r2, #0
 3215 0014 FFF7FEFF 		bl	_ZNK4Move25GetCurrentMachinePositionEPfb
 3216 0018 84B9     		cbnz	r4, .L422
 3217 001a 2846     		mov	r0, r5
 3218 001c 3146     		mov	r1, r6
 3219 001e 3A46     		mov	r2, r7
 3220 0020 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 3221 0024 FFF7FEBF 		b	_ZNK4Move16InverseTransformEPfm
 3222              	.L431:
 3223 0028 90F86C24 		ldrb	r2, [r0, #1132]	@ zero_extendqisi2
 3224 002c 3AB1     		cbz	r2, .L432
 3225              	.L423:
 3226 002e 2846     		mov	r0, r5
 3227 0030 3146     		mov	r1, r6
 3228 0032 0122     		movs	r2, #1
 3229 0034 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 3230 0038 FFF7FEBF 		b	_ZNK4Move25GetCurrentMachinePositionEPfb
 3231              	.L422:
 3232 003c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3233              	.L432:
 3234 003e BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 3235 0042 FFF7FEBF 		b	_ZNK4Move25GetCurrentMachinePositionEPfb
 3236              		.size	_ZNK4Move22GetCurrentUserPositionEPfhm, .-_ZNK4Move22GetCurrentUserPositionEPfhm
 3237 0046 00BF     		.section	.text._ZN4Move10PausePrintEPfRfm,"ax",%progbits
 3238              		.align	2
 3239              		.global	_ZN4Move10PausePrintEPfRfm
 3240              		.thumb
 3241              		.thumb_func
 3242              		.type	_ZN4Move10PausePrintEPfRfm, %function
 3243              	_ZN4Move10PausePrintEPfRfm:
 3244              		@ args = 0, pretend = 0, frame = 8
 3245              		@ frame_needed = 0, uses_anonymous_args = 0
 3246 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3247 0004 83B0     		sub	sp, sp, #12
 3248 0006 8046     		mov	r8, r0
 3249 0008 8A46     		mov	r10, r1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 58


 3250 000a 0192     		str	r2, [sp, #4]
 3251 000c 1C46     		mov	r4, r3
 3252 000e D0F80490 		ldr	r9, [r0, #4]
 3253              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 3254 0012 72B6     		cpsid i
 3255              	@ 0 "" 2
 3256              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 3257 0014 BFF35F8F 		dmb
 3258              	@ 0 "" 2
 3259              		.thumb
 3260 0018 4448     		ldr	r0, .L462
 3261 001a 0023     		movs	r3, #0
 3262 001c 0370     		strb	r3, [r0]
 3263 001e D8F80050 		ldr	r5, [r8]
 3264 0022 002D     		cmp	r5, #0
 3265 0024 70D0     		beq	.L434
 3266 0026 6A7A     		ldrb	r2, [r5, #9]	@ zero_extendqisi2
 3267 0028 5207     		lsls	r2, r2, #29
 3268 002a 55D5     		bpl	.L435
 3269 002c 2A68     		ldr	r2, [r5]
 3270 002e D5F80CB0 		ldr	fp, [r5, #12]
 3271 0032 C8F80420 		str	r2, [r8, #4]
 3272              	.L436:
 3273 0036 0122     		movs	r2, #1
 3274 0038 0270     		strb	r2, [r0]
 3275              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 3276 003a BFF35F8F 		dmb
 3277              	@ 0 "" 2
 3278              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 3279 003e 62B6     		cpsie i
 3280              	@ 0 "" 2
 3281              		.thumb
 3282 0040 D8F80460 		ldr	r6, [r8, #4]
 3283 0044 4E45     		cmp	r6, r9
 3284 0046 69D0     		beq	.L441
 3285 0048 394A     		ldr	r2, .L462+4
 3286 004a 1269     		ldr	r2, [r2, #16]
 3287 004c D2F88471 		ldr	r7, [r2, #388]
 3288 0050 87B1     		cbz	r7, .L448
 3289 0052 AAF10406 		sub	r6, r10, #4
 3290 0056 0024     		movs	r4, #0
 3291              	.L445:
 3292 0058 2146     		mov	r1, r4
 3293 005a 2846     		mov	r0, r5
 3294 005c 0022     		movs	r2, #0
 3295 005e FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 3296 0062 0134     		adds	r4, r4, #1
 3297 0064 BC42     		cmp	r4, r7
 3298 0066 46F8040F 		str	r0, [r6, #4]!	@ float
 3299 006a F5D1     		bne	.L445
 3300 006c 082F     		cmp	r7, #8
 3301 006e D8F80460 		ldr	r6, [r8, #4]
 3302 0072 0BD8     		bhi	.L447
 3303              	.L448:
 3304 0074 07F18041 		add	r1, r7, #1073741824
 3305 0078 0139     		subs	r1, r1, #1
 3306 007a 0AEB8101 		add	r1, r10, r1, lsl #2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 59


 3307 007e 3A46     		mov	r2, r7
 3308 0080 0020     		movs	r0, #0
 3309              	.L443:
 3310 0082 0132     		adds	r2, r2, #1
 3311 0084 082A     		cmp	r2, #8
 3312 0086 41F8040F 		str	r0, [r1, #4]!	@ float
 3313 008a FAD9     		bls	.L443
 3314              	.L447:
 3315 008c D5F88430 		ldr	r3, [r5, #132]	@ float
 3316 0090 019A     		ldr	r2, [sp, #4]
 3317 0092 0AEB870A 		add	r10, r10, r7, lsl #2
 3318 0096 1360     		str	r3, [r2]	@ float
 3319              	.L454:
 3320 0098 082F     		cmp	r7, #8
 3321 009a 0FD8     		bhi	.L452
 3322 009c 5546     		mov	r5, r10
 3323 009e 3C46     		mov	r4, r7
 3324              	.L453:
 3325 00a0 2146     		mov	r1, r4
 3326 00a2 0122     		movs	r2, #1
 3327 00a4 3046     		mov	r0, r6
 3328 00a6 FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 3329 00aa 0146     		mov	r1, r0
 3330 00ac 2868     		ldr	r0, [r5]	@ float
 3331 00ae FFF7FEFF 		bl	__aeabi_fadd
 3332 00b2 0134     		adds	r4, r4, #1
 3333 00b4 092C     		cmp	r4, #9
 3334 00b6 45F8040B 		str	r0, [r5], #4	@ float
 3335 00ba F1D1     		bne	.L453
 3336              	.L452:
 3337 00bc 0022     		movs	r2, #0
 3338 00be D8F80036 		ldr	r3, [r8, #1536]
 3339 00c2 3272     		strb	r2, [r6, #8]
 3340 00c4 3668     		ldr	r6, [r6]
 3341 00c6 013B     		subs	r3, r3, #1
 3342 00c8 B145     		cmp	r9, r6
 3343 00ca C8F80036 		str	r3, [r8, #1536]
 3344 00ce E3D1     		bne	.L454
 3345              	.L451:
 3346 00d0 5846     		mov	r0, fp
 3347 00d2 03B0     		add	sp, sp, #12
 3348              		@ sp needed
 3349 00d4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3350              	.L435:
 3351 00d8 D8F80850 		ldr	r5, [r8, #8]
 3352 00dc D8F80410 		ldr	r1, [r8, #4]
 3353 00e0 8D42     		cmp	r5, r1
 3354 00e2 03D1     		bne	.L440
 3355 00e4 17E0     		b	.L455
 3356              	.L439:
 3357 00e6 2D68     		ldr	r5, [r5]
 3358 00e8 8D42     		cmp	r5, r1
 3359 00ea 14D0     		beq	.L455
 3360              	.L440:
 3361 00ec 6A7A     		ldrb	r2, [r5, #9]	@ zero_extendqisi2
 3362 00ee 5307     		lsls	r3, r2, #29
 3363 00f0 F9D5     		bpl	.L439
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 60


 3364 00f2 2A68     		ldr	r2, [r5]
 3365 00f4 D5F80CB0 		ldr	fp, [r5, #12]
 3366 00f8 117A     		ldrb	r1, [r2, #8]	@ zero_extendqisi2
 3367 00fa C8F80420 		str	r2, [r8, #4]
 3368 00fe 0229     		cmp	r1, #2
 3369 0100 99D1     		bne	.L436
 3370 0102 0021     		movs	r1, #0
 3371 0104 1172     		strb	r1, [r2, #8]
 3372 0106 96E7     		b	.L436
 3373              	.L434:
 3374 0108 D8F80820 		ldr	r2, [r8, #8]
 3375 010c 4FF0FF3B 		mov	fp, #-1
 3376 0110 C8F80420 		str	r2, [r8, #4]
 3377 0114 8FE7     		b	.L436
 3378              	.L455:
 3379 0116 4FF0FF3B 		mov	fp, #-1
 3380 011a 8CE7     		b	.L436
 3381              	.L441:
 3382 011c 4046     		mov	r0, r8
 3383 011e 5146     		mov	r1, r10
 3384 0120 2346     		mov	r3, r4
 3385 0122 0022     		movs	r2, #0
 3386 0124 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhm
 3387 0128 D2E7     		b	.L451
 3388              	.L463:
 3389 012a 00BF     		.align	2
 3390              	.L462:
 3391 012c 00000000 		.word	g_interrupt_enabled
 3392 0130 00000000 		.word	reprap
 3393              		.size	_ZN4Move10PausePrintEPfRfm, .-_ZN4Move10PausePrintEPfRfm
 3394              		.section	.text._ZN4Move15LiveCoordinatesEPfm,"ax",%progbits
 3395              		.align	2
 3396              		.global	_ZN4Move15LiveCoordinatesEPfm
 3397              		.thumb
 3398              		.thumb_func
 3399              		.type	_ZN4Move15LiveCoordinatesEPfm, %function
 3400              	_ZN4Move15LiveCoordinatesEPfm:
 3401              		@ args = 0, pretend = 0, frame = 24
 3402              		@ frame_needed = 0, uses_anonymous_args = 0
 3403 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3404 0004 394B     		ldr	r3, .L472
 3405 0006 87B0     		sub	sp, sp, #28
 3406 0008 1B69     		ldr	r3, [r3, #16]
 3407 000a 0546     		mov	r5, r0
 3408 000c 8846     		mov	r8, r1
 3409 000e 9246     		mov	r10, r2
 3410 0010 D3F88491 		ldr	r9, [r3, #388]
 3411              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 3412 0014 72B6     		cpsid i
 3413              	@ 0 "" 2
 3414              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 3415 0016 BFF35F8F 		dmb
 3416              	@ 0 "" 2
 3417              		.thumb
 3418 001a 354F     		ldr	r7, .L472+4
 3419 001c 0023     		movs	r3, #0
 3420 001e 3B70     		strb	r3, [r7]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 61


 3421 0020 90F85030 		ldrb	r3, [r0, #80]	@ zero_extendqisi2
 3422 0024 002B     		cmp	r3, #0
 3423 0026 3BD1     		bne	.L470
 3424 0028 00EB8901 		add	r1, r0, r9, lsl #2
 3425 002c 4FEA890B 		lsl	fp, r9, #2
 3426 0030 C9F10902 		rsb	r2, r9, #9
 3427 0034 2E46     		mov	r6, r5
 3428 0036 08EB0B00 		add	r0, r8, fp
 3429 003a 9200     		lsls	r2, r2, #2
 3430 003c 2C31     		adds	r1, r1, #44
 3431 003e FFF7FEFF 		bl	memcpy
 3432 0042 56F8540F 		ldr	r0, [r6, #84]!	@ unaligned
 3433 0046 6C46     		mov	r4, sp
 3434 0048 7168     		ldr	r1, [r6, #4]	@ unaligned
 3435 004a B268     		ldr	r2, [r6, #8]	@ unaligned
 3436 004c F368     		ldr	r3, [r6, #12]	@ unaligned
 3437 004e 4FF0010E 		mov	lr, #1
 3438 0052 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 3439 0054 3069     		ldr	r0, [r6, #16]	@ unaligned
 3440 0056 7169     		ldr	r1, [r6, #20]	@ unaligned
 3441 0058 87F800E0 		strb	lr, [r7]
 3442 005c 03C4     		stmia	r4!, {r0, r1}
 3443              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 3444 005e BFF35F8F 		dmb
 3445              	@ 0 "" 2
 3446              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 3447 0062 62B6     		cpsie i
 3448              	@ 0 "" 2
 3449              		.thumb
 3450 0064 4B46     		mov	r3, r9
 3451 0066 2846     		mov	r0, r5
 3452 0068 6946     		mov	r1, sp
 3453 006a 4246     		mov	r2, r8
 3454 006c FFF7FEFF 		bl	_ZNK4Move17MachineToEndPointEPKlPfj
 3455              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 3456 0070 72B6     		cpsid i
 3457              	@ 0 "" 2
 3458              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 3459 0072 BFF35F8F 		dmb
 3460              	@ 0 "" 2
 3461              		.thumb
 3462 0076 0023     		movs	r3, #0
 3463 0078 3146     		mov	r1, r6
 3464 007a 6846     		mov	r0, sp
 3465 007c 1822     		movs	r2, #24
 3466 007e 3B70     		strb	r3, [r7]
 3467 0080 FFF7FEFF 		bl	memcmp
 3468 0084 38B3     		cbz	r0, .L471
 3469              	.L468:
 3470 0086 0123     		movs	r3, #1
 3471 0088 3B70     		strb	r3, [r7]
 3472              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 3473 008a BFF35F8F 		dmb
 3474              	@ 0 "" 2
 3475              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 3476 008e 62B6     		cpsie i
 3477              	@ 0 "" 2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 62


 3478              		.thumb
 3479              	.L467:
 3480 0090 2846     		mov	r0, r5
 3481 0092 4146     		mov	r1, r8
 3482 0094 5246     		mov	r2, r10
 3483 0096 FFF7FEFF 		bl	_ZNK4Move16InverseTransformEPfm
 3484 009a 07B0     		add	sp, sp, #28
 3485              		@ sp needed
 3486 009c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3487              	.L470:
 3488 00a0 00F12C03 		add	r3, r0, #44
 3489 00a4 00F14C02 		add	r2, r0, #76
 3490              	.L466:
 3491 00a8 D3F800E0 		ldr	lr, [r3]	@ unaligned
 3492 00ac 5E68     		ldr	r6, [r3, #4]	@ unaligned
 3493 00ae 9C68     		ldr	r4, [r3, #8]	@ unaligned
 3494 00b0 D868     		ldr	r0, [r3, #12]	@ unaligned
 3495 00b2 1033     		adds	r3, r3, #16
 3496 00b4 9342     		cmp	r3, r2
 3497 00b6 C1F800E0 		str	lr, [r1]	@ unaligned
 3498 00ba 4E60     		str	r6, [r1, #4]	@ unaligned
 3499 00bc 8C60     		str	r4, [r1, #8]	@ unaligned
 3500 00be C860     		str	r0, [r1, #12]	@ unaligned
 3501 00c0 01F11001 		add	r1, r1, #16
 3502 00c4 F0D1     		bne	.L466
 3503 00c6 1A68     		ldr	r2, [r3]	@ unaligned
 3504 00c8 0123     		movs	r3, #1
 3505 00ca 0A60     		str	r2, [r1]	@ unaligned
 3506 00cc 3B70     		strb	r3, [r7]
 3507              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 3508 00ce BFF35F8F 		dmb
 3509              	@ 0 "" 2
 3510              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 3511 00d2 62B6     		cpsie i
 3512              	@ 0 "" 2
 3513              		.thumb
 3514 00d4 DCE7     		b	.L467
 3515              	.L471:
 3516 00d6 5A46     		mov	r2, fp
 3517 00d8 05F12C00 		add	r0, r5, #44
 3518 00dc 4146     		mov	r1, r8
 3519 00de FFF7FEFF 		bl	memcpy
 3520 00e2 0123     		movs	r3, #1
 3521 00e4 85F85030 		strb	r3, [r5, #80]
 3522 00e8 CDE7     		b	.L468
 3523              	.L473:
 3524 00ea 00BF     		.align	2
 3525              	.L472:
 3526 00ec 00000000 		.word	reprap
 3527 00f0 00000000 		.word	g_interrupt_enabled
 3528              		.size	_ZN4Move15LiveCoordinatesEPfm, .-_ZN4Move15LiveCoordinatesEPfm
 3529              		.section	.text._ZN4Move18SetLiveCoordinatesEPKf,"ax",%progbits
 3530              		.align	2
 3531              		.global	_ZN4Move18SetLiveCoordinatesEPKf
 3532              		.thumb
 3533              		.thumb_func
 3534              		.type	_ZN4Move18SetLiveCoordinatesEPKf, %function
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 63


 3535              	_ZN4Move18SetLiveCoordinatesEPKf:
 3536              		@ args = 0, pretend = 0, frame = 0
 3537              		@ frame_needed = 0, uses_anonymous_args = 0
 3538 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 3539 0002 0646     		mov	r6, r0
 3540              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 3541 0004 72B6     		cpsid i
 3542              	@ 0 "" 2
 3543              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 3544 0006 BFF35F8F 		dmb
 3545              	@ 0 "" 2
 3546              		.thumb
 3547 000a 0F4F     		ldr	r7, .L478
 3548 000c 0023     		movs	r3, #0
 3549 000e 0A1F     		subs	r2, r1, #4
 3550 0010 3B70     		strb	r3, [r7]
 3551              	.L476:
 3552 0012 03F10A04 		add	r4, r3, #10
 3553 0016 52F8045F 		ldr	r5, [r2, #4]!	@ float
 3554 001a 0133     		adds	r3, r3, #1
 3555 001c 06EB8404 		add	r4, r6, r4, lsl #2
 3556 0020 092B     		cmp	r3, #9
 3557 0022 6560     		str	r5, [r4, #4]	@ float
 3558 0024 F5D1     		bne	.L476
 3559 0026 094B     		ldr	r3, .L478+4
 3560 0028 0124     		movs	r4, #1
 3561 002a 1B69     		ldr	r3, [r3, #16]
 3562 002c 3046     		mov	r0, r6
 3563 002e D3F88431 		ldr	r3, [r3, #388]
 3564 0032 06F15402 		add	r2, r6, #84
 3565 0036 86F85040 		strb	r4, [r6, #80]
 3566 003a FFF7FEFF 		bl	_ZNK4Move17EndPointToMachineEPKfPlj
 3567 003e 3C70     		strb	r4, [r7]
 3568              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 3569 0040 BFF35F8F 		dmb
 3570              	@ 0 "" 2
 3571              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 3572 0044 62B6     		cpsie i
 3573              	@ 0 "" 2
 3574              		.thumb
 3575 0046 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3576              	.L479:
 3577              		.align	2
 3578              	.L478:
 3579 0048 00000000 		.word	g_interrupt_enabled
 3580 004c 00000000 		.word	reprap
 3581              		.size	_ZN4Move18SetLiveCoordinatesEPKf, .-_ZN4Move18SetLiveCoordinatesEPKf
 3582              		.section	.text._ZN4Move4InitEv,"ax",%progbits
 3583              		.align	2
 3584              		.global	_ZN4Move4InitEv
 3585              		.thumb
 3586              		.thumb_func
 3587              		.type	_ZN4Move4InitEv, %function
 3588              	_ZN4Move4InitEv:
 3589              		@ args = 0, pretend = 0, frame = 40
 3590              		@ frame_needed = 0, uses_anonymous_args = 0
 3591 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 64


 3592 0004 8146     		mov	r9, r0
 3593 0006 8BB0     		sub	sp, sp, #44
 3594 0008 00F23440 		addw	r0, r0, #1076
 3595 000c FFF7FEFF 		bl	_ZN15DeltaParameters4InitEv
 3596 0010 D9F80440 		ldr	r4, [r9, #4]
 3597 0014 4FF07E53 		mov	r3, #1065353216
 3598 0018 0022     		movs	r2, #0
 3599 001a C9F80C40 		str	r4, [r9, #12]
 3600 001e C9F80840 		str	r4, [r9, #8]
 3601 0022 C9F8E025 		str	r2, [r9, #1504]
 3602 0026 89F8DC25 		strb	r2, [r9, #1500]
 3603 002a C9F8E435 		str	r3, [r9, #1508]	@ float
 3604 002e C9F8E835 		str	r3, [r9, #1512]	@ float
 3605 0032 C9F8EC35 		str	r3, [r9, #1516]	@ float
 3606 0036 C9F8F035 		str	r3, [r9, #1520]	@ float
 3607 003a C9F8F435 		str	r3, [r9, #1524]	@ float
 3608 003e C9F8F835 		str	r3, [r9, #1528]	@ float
 3609              	.L482:
 3610 0042 2046     		mov	r0, r4
 3611 0044 FFF7FEFF 		bl	_ZN3DDA4InitEv
 3612 0048 2468     		ldr	r4, [r4]
 3613 004a D9F80430 		ldr	r3, [r9, #4]
 3614 004e A342     		cmp	r3, r4
 3615 0050 F7D1     		bne	.L482
 3616 0052 0024     		movs	r4, #0
 3617 0054 0026     		movs	r6, #0
 3618 0056 C9F80040 		str	r4, [r9]
 3619 005a C9F8FC45 		str	r4, [r9, #1532]
 3620 005e C9F81840 		str	r4, [r9, #24]
 3621 0062 C9F81440 		str	r4, [r9, #20]
 3622 0066 4846     		mov	r0, r9
 3623 0068 DFF8B481 		ldr	r8, .L495+24
 3624 006c FFF7FEFF 		bl	_ZN4Move20SetIdentityTransformEv
 3625 0070 2746     		mov	r7, r4
 3626 0072 C9F8CC63 		str	r6, [r9, #972]	@ float
 3627 0076 C9F8C863 		str	r6, [r9, #968]	@ float
 3628 007a C9F8C463 		str	r6, [r9, #964]	@ float
 3629 007e 6D46     		mov	r5, sp
 3630              	.L484:
 3631 0080 04F11403 		add	r3, r4, #20
 3632 0084 09EB8303 		add	r3, r9, r3, lsl #2
 3633 0088 0122     		movs	r2, #1
 3634 008a 2146     		mov	r1, r4
 3635 008c 5F60     		str	r7, [r3, #4]
 3636 008e 1444     		add	r4, r4, r2
 3637 0090 D8F80000 		ldr	r0, [r8]
 3638 0094 45F8046F 		str	r6, [r5, #4]!	@ float
 3639 0098 FFF7FEFF 		bl	_ZN8Platform12SetDirectionEjb
 3640 009c 092C     		cmp	r4, #9
 3641 009e DFF880A1 		ldr	r10, .L495+24
 3642 00a2 EDD1     		bne	.L484
 3643 00a4 01A9     		add	r1, sp, #4
 3644 00a6 4846     		mov	r0, r9
 3645 00a8 FFF7FEFF 		bl	_ZN4Move18SetLiveCoordinatesEPKf
 3646 00ac 0026     		movs	r6, #0
 3647 00ae 4846     		mov	r0, r9
 3648 00b0 01A9     		add	r1, sp, #4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 65


 3649 00b2 FFF7FEFF 		bl	_ZN4Move12SetPositionsEPKf
 3650 00b6 4FF00008 		mov	r8, #0
 3651 00ba DAF800B0 		ldr	fp, [r10]
 3652 00be 4F46     		mov	r7, r9
 3653 00c0 B246     		mov	r10, r6
 3654 00c2 04E0     		b	.L490
 3655              	.L488:
 3656 00c4 0136     		adds	r6, r6, #1
 3657 00c6 792E     		cmp	r6, #121
 3658 00c8 07F10407 		add	r7, r7, #4
 3659 00cc 11D0     		beq	.L491
 3660              	.L490:
 3661 00ce 032E     		cmp	r6, #3
 3662 00d0 42D9     		bls	.L492
 3663 00d2 042E     		cmp	r6, #4
 3664 00d4 00F08580 		beq	.L493
 3665 00d8 1F2E     		cmp	r6, #31
 3666 00da C7F87881 		str	r8, [r7, #376]	@ float
 3667 00de F1D8     		bhi	.L488
 3668              	.L486:
 3669 00e0 09EB0603 		add	r3, r9, r6
 3670 00e4 83F898A3 		strb	r10, [r3, #920]
 3671              	.L494:
 3672 00e8 0136     		adds	r6, r6, #1
 3673 00ea 792E     		cmp	r6, #121
 3674 00ec 07F10407 		add	r7, r7, #4
 3675 00f0 EDD1     		bne	.L490
 3676              	.L491:
 3677 00f2 DBF8C804 		ldr	r0, [fp, #1224]	@ float
 3678 00f6 FFF7FEFF 		bl	__aeabi_f2d
 3679 00fa 43A3     		adr	r3, .L495
 3680 00fc D3E90023 		ldrd	r2, [r3]
 3681 0100 FFF7FEFF 		bl	__aeabi_dmul
 3682 0104 0246     		mov	r2, r0
 3683 0106 0B46     		mov	r3, r1
 3684 0108 0020     		movs	r0, #0
 3685 010a 4349     		ldr	r1, .L495+16
 3686 010c FFF7FEFF 		bl	__aeabi_ddiv
 3687 0110 FFF7FEFF 		bl	__aeabi_d2f
 3688 0114 0024     		movs	r4, #0
 3689 0116 C9F8D403 		str	r0, [r9, #980]	@ float
 3690 011a C9F8D803 		str	r0, [r9, #984]	@ float
 3691 011e 89F8E443 		strb	r4, [r9, #996]
 3692 0122 5846     		mov	r0, fp
 3693 0124 FFF7FEFF 		bl	_ZN8Platform4TimeEv
 3694 0128 3C49     		ldr	r1, .L495+20
 3695 012a 0022     		movs	r2, #0
 3696 012c 0123     		movs	r3, #1
 3697 012e C9F82C04 		str	r0, [r9, #1068]	@ float
 3698 0132 89F83044 		strb	r4, [r9, #1072]
 3699 0136 C9F81C40 		str	r4, [r9, #28]
 3700 013a 89F81140 		strb	r4, [r9, #17]
 3701 013e C9F82040 		str	r4, [r9, #32]
 3702 0142 89F81240 		strb	r4, [r9, #18]
 3703 0146 C9F82414 		str	r1, [r9, #1060]	@ float
 3704 014a C9F82820 		str	r2, [r9, #40]	@ float
 3705 014e 89F81030 		strb	r3, [r9, #16]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 66


 3706 0152 0BB0     		add	sp, sp, #44
 3707              		@ sp needed
 3708 0154 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3709              	.L492:
 3710 0158 06F00100 		and	r0, r6, #1
 3711 015c FFF7FEFF 		bl	__aeabi_ui2f
 3712 0160 FFF7FEFF 		bl	__aeabi_f2d
 3713 0164 28A3     		adr	r3, .L495
 3714 0166 D3E90023 		ldrd	r2, [r3]
 3715 016a FFF7FEFF 		bl	__aeabi_dmul
 3716 016e 28A3     		adr	r3, .L495+8
 3717 0170 D3E90023 		ldrd	r2, [r3]
 3718 0174 FFF7FEFF 		bl	__aeabi_dadd
 3719 0178 0446     		mov	r4, r0
 3720 017a DBF8C804 		ldr	r0, [fp, #1224]	@ float
 3721 017e 0D46     		mov	r5, r1
 3722 0180 FFF7FEFF 		bl	__aeabi_f2d
 3723 0184 0246     		mov	r2, r0
 3724 0186 0B46     		mov	r3, r1
 3725 0188 2046     		mov	r0, r4
 3726 018a 2946     		mov	r1, r5
 3727 018c FFF7FEFF 		bl	__aeabi_dmul
 3728 0190 FFF7FEFF 		bl	__aeabi_d2f
 3729 0194 B867     		str	r0, [r7, #120]	@ float
 3730 0196 7008     		lsrs	r0, r6, #1
 3731 0198 FFF7FEFF 		bl	__aeabi_ui2f
 3732 019c FFF7FEFF 		bl	__aeabi_f2d
 3733 01a0 19A3     		adr	r3, .L495
 3734 01a2 D3E90023 		ldrd	r2, [r3]
 3735 01a6 FFF7FEFF 		bl	__aeabi_dmul
 3736 01aa 19A3     		adr	r3, .L495+8
 3737 01ac D3E90023 		ldrd	r2, [r3]
 3738 01b0 FFF7FEFF 		bl	__aeabi_dadd
 3739 01b4 0446     		mov	r4, r0
 3740 01b6 DBF8CC04 		ldr	r0, [fp, #1228]	@ float
 3741 01ba 0D46     		mov	r5, r1
 3742 01bc FFF7FEFF 		bl	__aeabi_f2d
 3743 01c0 0B46     		mov	r3, r1
 3744 01c2 0246     		mov	r2, r0
 3745 01c4 2946     		mov	r1, r5
 3746 01c6 2046     		mov	r0, r4
 3747 01c8 FFF7FEFF 		bl	__aeabi_dmul
 3748 01cc FFF7FEFF 		bl	__aeabi_d2f
 3749 01d0 09EB0603 		add	r3, r9, r6
 3750 01d4 C7F87881 		str	r8, [r7, #376]	@ float
 3751 01d8 C7F8F800 		str	r0, [r7, #248]	@ float
 3752 01dc 83F898A3 		strb	r10, [r3, #920]
 3753 01e0 82E7     		b	.L494
 3754              	.L493:
 3755 01e2 DBF8C804 		ldr	r0, [fp, #1224]	@ float
 3756 01e6 4FF07C51 		mov	r1, #1056964608
 3757 01ea FFF7FEFF 		bl	__aeabi_fmul
 3758 01ee 4FF07C51 		mov	r1, #1056964608
 3759 01f2 C9F88800 		str	r0, [r9, #136]	@ float
 3760 01f6 DBF8CC04 		ldr	r0, [fp, #1228]	@ float
 3761 01fa FFF7FEFF 		bl	__aeabi_fmul
 3762 01fe C9F80801 		str	r0, [r9, #264]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 67


 3763 0202 C7F87881 		str	r8, [r7, #376]	@ float
 3764 0206 6BE7     		b	.L486
 3765              	.L496:
 3766              		.align	3
 3767              	.L495:
 3768 0208 9A999999 		.word	-1717986918
 3769 020c 9999E93F 		.word	1072273817
 3770 0210 9A999999 		.word	-1717986918
 3771 0214 9999B93F 		.word	1069128089
 3772 0218 0000F03F 		.word	1072693248
 3773 021c 0000F041 		.word	1106247680
 3774 0220 00000000 		.word	reprap
 3775              		.size	_ZN4Move4InitEv, .-_ZN4Move4InitEv
 3776 0224 AFF30080 		.section	.text._ZN4Move22ResetExtruderPositionsEv,"ax",%progbits
 3777              		.align	2
 3778              		.global	_ZN4Move22ResetExtruderPositionsEv
 3779              		.thumb
 3780              		.thumb_func
 3781              		.type	_ZN4Move22ResetExtruderPositionsEv, %function
 3782              	_ZN4Move22ResetExtruderPositionsEv:
 3783              		@ args = 0, pretend = 0, frame = 0
 3784              		@ frame_needed = 0, uses_anonymous_args = 0
 3785              		@ link register save eliminated.
 3786 0000 10B4     		push	{r4}
 3787              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 3788 0002 72B6     		cpsid i
 3789              	@ 0 "" 2
 3790              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 3791 0004 BFF35F8F 		dmb
 3792              	@ 0 "" 2
 3793              		.thumb
 3794 0008 0D4B     		ldr	r3, .L506
 3795 000a 0E4C     		ldr	r4, .L506+4
 3796 000c 1B69     		ldr	r3, [r3, #16]
 3797 000e 0022     		movs	r2, #0
 3798 0010 D3F88431 		ldr	r3, [r3, #388]
 3799 0014 2270     		strb	r2, [r4]
 3800 0016 082B     		cmp	r3, #8
 3801 0018 98BF     		it	ls
 3802 001a 0021     		movls	r1, #0
 3803 001c 07D8     		bhi	.L499
 3804              	.L500:
 3805 001e 03F10A02 		add	r2, r3, #10
 3806 0022 0133     		adds	r3, r3, #1
 3807 0024 00EB8202 		add	r2, r0, r2, lsl #2
 3808 0028 092B     		cmp	r3, #9
 3809 002a 5160     		str	r1, [r2, #4]	@ float
 3810 002c F7D1     		bne	.L500
 3811              	.L499:
 3812 002e 0123     		movs	r3, #1
 3813 0030 2370     		strb	r3, [r4]
 3814              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 3815 0032 BFF35F8F 		dmb
 3816              	@ 0 "" 2
 3817              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 3818 0036 62B6     		cpsie i
 3819              	@ 0 "" 2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 68


 3820              		.thumb
 3821 0038 5DF8044B 		ldr	r4, [sp], #4
 3822 003c 7047     		bx	lr
 3823              	.L507:
 3824 003e 00BF     		.align	2
 3825              	.L506:
 3826 0040 00000000 		.word	reprap
 3827 0044 00000000 		.word	g_interrupt_enabled
 3828              		.size	_ZN4Move22ResetExtruderPositionsEv, .-_ZN4Move22ResetExtruderPositionsEv
 3829              		.section	.text._ZN4Move17SetXBedProbePointEjf,"ax",%progbits
 3830              		.align	2
 3831              		.global	_ZN4Move17SetXBedProbePointEjf
 3832              		.thumb
 3833              		.thumb_func
 3834              		.type	_ZN4Move17SetXBedProbePointEjf, %function
 3835              	_ZN4Move17SetXBedProbePointEjf:
 3836              		@ args = 0, pretend = 0, frame = 0
 3837              		@ frame_needed = 0, uses_anonymous_args = 0
 3838              		@ link register save eliminated.
 3839 0000 1F29     		cmp	r1, #31
 3840 0002 10B4     		push	{r4}
 3841 0004 0CD8     		bhi	.L510
 3842 0006 4318     		adds	r3, r0, r1
 3843 0008 93F89843 		ldrb	r4, [r3, #920]	@ zero_extendqisi2
 3844 000c 1E31     		adds	r1, r1, #30
 3845 000e 44F00104 		orr	r4, r4, #1
 3846 0012 40F82120 		str	r2, [r0, r1, lsl #2]	@ float
 3847 0016 83F89843 		strb	r4, [r3, #920]
 3848 001a 5DF8044B 		ldr	r4, [sp], #4
 3849 001e 7047     		bx	lr
 3850              	.L510:
 3851 0020 034B     		ldr	r3, .L511
 3852 0022 0621     		movs	r1, #6
 3853 0024 1868     		ldr	r0, [r3]
 3854 0026 034A     		ldr	r2, .L511+4
 3855 0028 5DF8044B 		ldr	r4, [sp], #4
 3856 002c FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 3857              	.L512:
 3858              		.align	2
 3859              	.L511:
 3860 0030 00000000 		.word	reprap
 3861 0034 B8020000 		.word	.LC22
 3862              		.size	_ZN4Move17SetXBedProbePointEjf, .-_ZN4Move17SetXBedProbePointEjf
 3863              		.section	.text._ZN4Move17SetYBedProbePointEjf,"ax",%progbits
 3864              		.align	2
 3865              		.global	_ZN4Move17SetYBedProbePointEjf
 3866              		.thumb
 3867              		.thumb_func
 3868              		.type	_ZN4Move17SetYBedProbePointEjf, %function
 3869              	_ZN4Move17SetYBedProbePointEjf:
 3870              		@ args = 0, pretend = 0, frame = 0
 3871              		@ frame_needed = 0, uses_anonymous_args = 0
 3872              		@ link register save eliminated.
 3873 0000 1F29     		cmp	r1, #31
 3874 0002 10B4     		push	{r4}
 3875 0004 0CD8     		bhi	.L515
 3876 0006 4318     		adds	r3, r0, r1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 69


 3877 0008 93F89843 		ldrb	r4, [r3, #920]	@ zero_extendqisi2
 3878 000c 3E31     		adds	r1, r1, #62
 3879 000e 44F00204 		orr	r4, r4, #2
 3880 0012 40F82120 		str	r2, [r0, r1, lsl #2]	@ float
 3881 0016 83F89843 		strb	r4, [r3, #920]
 3882 001a 5DF8044B 		ldr	r4, [sp], #4
 3883 001e 7047     		bx	lr
 3884              	.L515:
 3885 0020 034B     		ldr	r3, .L516
 3886 0022 0621     		movs	r1, #6
 3887 0024 1868     		ldr	r0, [r3]
 3888 0026 034A     		ldr	r2, .L516+4
 3889 0028 5DF8044B 		ldr	r4, [sp], #4
 3890 002c FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 3891              	.L517:
 3892              		.align	2
 3893              	.L516:
 3894 0030 00000000 		.word	reprap
 3895 0034 E0020000 		.word	.LC23
 3896              		.size	_ZN4Move17SetYBedProbePointEjf, .-_ZN4Move17SetYBedProbePointEjf
 3897              		.section	.text._ZN4Move17SetZBedProbePointEjfbb,"ax",%progbits
 3898              		.align	2
 3899              		.global	_ZN4Move17SetZBedProbePointEjfbb
 3900              		.thumb
 3901              		.thumb_func
 3902              		.type	_ZN4Move17SetZBedProbePointEjfbb, %function
 3903              	_ZN4Move17SetZBedProbePointEjfbb:
 3904              		@ args = 4, pretend = 0, frame = 0
 3905              		@ frame_needed = 0, uses_anonymous_args = 0
 3906 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 3907 0004 1F29     		cmp	r1, #31
 3908 0006 0C46     		mov	r4, r1
 3909 0008 0546     		mov	r5, r0
 3910 000a 1646     		mov	r6, r2
 3911 000c 9846     		mov	r8, r3
 3912 000e 9DF81870 		ldrb	r7, [sp, #24]	@ zero_extendqisi2
 3913 0012 2AD8     		bhi	.L524
 3914 0014 00F57A70 		add	r0, r0, #1000
 3915 0018 0021     		movs	r1, #0
 3916 001a FFF7FEFF 		bl	_ZN9HeightMap12UseHeightMapEb
 3917 001e 2919     		adds	r1, r5, r4
 3918 0020 91F89803 		ldrb	r0, [r1, #920]	@ zero_extendqisi2
 3919 0024 5E34     		adds	r4, r4, #94
 3920 0026 40F00403 		orr	r3, r0, #4
 3921 002a 45F82460 		str	r6, [r5, r4, lsl #2]	@ float
 3922 002e 81F89833 		strb	r3, [r1, #920]
 3923 0032 B8F1000F 		cmp	r8, #0
 3924 0036 0AD0     		beq	.L520
 3925 0038 40F00C00 		orr	r0, r0, #12
 3926 003c 81F89803 		strb	r0, [r1, #920]
 3927 0040 6FB9     		cbnz	r7, .L525
 3928              	.L522:
 3929 0042 20F01000 		bic	r0, r0, #16
 3930 0046 81F89803 		strb	r0, [r1, #920]
 3931 004a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3932              	.L520:
 3933 004e 20F00800 		bic	r0, r0, #8
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 70


 3934 0052 40F00400 		orr	r0, r0, #4
 3935 0056 81F89803 		strb	r0, [r1, #920]
 3936 005a 002F     		cmp	r7, #0
 3937 005c F1D0     		beq	.L522
 3938              	.L525:
 3939 005e 40F01000 		orr	r0, r0, #16
 3940 0062 81F89803 		strb	r0, [r1, #920]
 3941 0066 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3942              	.L524:
 3943 006a 044B     		ldr	r3, .L526
 3944 006c 0621     		movs	r1, #6
 3945 006e 1868     		ldr	r0, [r3]
 3946 0070 034A     		ldr	r2, .L526+4
 3947 0072 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 3948 0076 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 3949              	.L527:
 3950 007a 00BF     		.align	2
 3951              	.L526:
 3952 007c 00000000 		.word	reprap
 3953 0080 08030000 		.word	.LC24
 3954              		.size	_ZN4Move17SetZBedProbePointEjfbb, .-_ZN4Move17SetZBedProbePointEjfbb
 3955              		.section	.text._ZNK4Move14XBedProbePointEj,"ax",%progbits
 3956              		.align	2
 3957              		.global	_ZNK4Move14XBedProbePointEj
 3958              		.thumb
 3959              		.thumb_func
 3960              		.type	_ZNK4Move14XBedProbePointEj, %function
 3961              	_ZNK4Move14XBedProbePointEj:
 3962              		@ args = 0, pretend = 0, frame = 0
 3963              		@ frame_needed = 0, uses_anonymous_args = 0
 3964              		@ link register save eliminated.
 3965 0000 1E31     		adds	r1, r1, #30
 3966 0002 50F82100 		ldr	r0, [r0, r1, lsl #2]	@ float
 3967 0006 7047     		bx	lr
 3968              		.size	_ZNK4Move14XBedProbePointEj, .-_ZNK4Move14XBedProbePointEj
 3969              		.section	.text._ZNK4Move14YBedProbePointEj,"ax",%progbits
 3970              		.align	2
 3971              		.global	_ZNK4Move14YBedProbePointEj
 3972              		.thumb
 3973              		.thumb_func
 3974              		.type	_ZNK4Move14YBedProbePointEj, %function
 3975              	_ZNK4Move14YBedProbePointEj:
 3976              		@ args = 0, pretend = 0, frame = 0
 3977              		@ frame_needed = 0, uses_anonymous_args = 0
 3978              		@ link register save eliminated.
 3979 0000 3E31     		adds	r1, r1, #62
 3980 0002 50F82100 		ldr	r0, [r0, r1, lsl #2]	@ float
 3981 0006 7047     		bx	lr
 3982              		.size	_ZNK4Move14YBedProbePointEj, .-_ZNK4Move14YBedProbePointEj
 3983              		.section	.text._ZNK4Move14ZBedProbePointEj,"ax",%progbits
 3984              		.align	2
 3985              		.global	_ZNK4Move14ZBedProbePointEj
 3986              		.thumb
 3987              		.thumb_func
 3988              		.type	_ZNK4Move14ZBedProbePointEj, %function
 3989              	_ZNK4Move14ZBedProbePointEj:
 3990              		@ args = 0, pretend = 0, frame = 0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 71


 3991              		@ frame_needed = 0, uses_anonymous_args = 0
 3992              		@ link register save eliminated.
 3993 0000 5E31     		adds	r1, r1, #94
 3994 0002 50F82100 		ldr	r0, [r0, r1, lsl #2]	@ float
 3995 0006 7047     		bx	lr
 3996              		.size	_ZNK4Move14ZBedProbePointEj, .-_ZNK4Move14ZBedProbePointEj
 3997              		.section	.text._ZNK4Move22AllProbeCoordinatesSetEi,"ax",%progbits
 3998              		.align	2
 3999              		.global	_ZNK4Move22AllProbeCoordinatesSetEi
 4000              		.thumb
 4001              		.thumb_func
 4002              		.type	_ZNK4Move22AllProbeCoordinatesSetEi, %function
 4003              	_ZNK4Move22AllProbeCoordinatesSetEi:
 4004              		@ args = 0, pretend = 0, frame = 0
 4005              		@ frame_needed = 0, uses_anonymous_args = 0
 4006              		@ link register save eliminated.
 4007 0000 0144     		add	r1, r1, r0
 4008 0002 91F89803 		ldrb	r0, [r1, #920]	@ zero_extendqisi2
 4009 0006 00F00700 		and	r0, r0, #7
 4010 000a C31F     		subs	r3, r0, #7
 4011 000c 5842     		rsbs	r0, r3, #0
 4012 000e 5841     		adcs	r0, r0, r3
 4013 0010 7047     		bx	lr
 4014              		.size	_ZNK4Move22AllProbeCoordinatesSetEi, .-_ZNK4Move22AllProbeCoordinatesSetEi
 4015 0012 00BF     		.section	.text._ZNK4Move21XYProbeCoordinatesSetEi,"ax",%progbits
 4016              		.align	2
 4017              		.global	_ZNK4Move21XYProbeCoordinatesSetEi
 4018              		.thumb
 4019              		.thumb_func
 4020              		.type	_ZNK4Move21XYProbeCoordinatesSetEi, %function
 4021              	_ZNK4Move21XYProbeCoordinatesSetEi:
 4022              		@ args = 0, pretend = 0, frame = 0
 4023              		@ frame_needed = 0, uses_anonymous_args = 0
 4024              		@ link register save eliminated.
 4025 0000 0144     		add	r1, r1, r0
 4026 0002 91F89803 		ldrb	r0, [r1, #920]	@ zero_extendqisi2
 4027 0006 00F00300 		and	r0, r0, #3
 4028 000a C31E     		subs	r3, r0, #3
 4029 000c 5842     		rsbs	r0, r3, #0
 4030 000e 5841     		adcs	r0, r0, r3
 4031 0010 7047     		bx	lr
 4032              		.size	_ZNK4Move21XYProbeCoordinatesSetEi, .-_ZNK4Move21XYProbeCoordinatesSetEi
 4033 0012 00BF     		.section	.text._ZNK4Move19GetProbeCoordinatesEiRfS0_b,"ax",%progbits
 4034              		.align	2
 4035              		.global	_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 4036              		.thumb
 4037              		.thumb_func
 4038              		.type	_ZNK4Move19GetProbeCoordinatesEiRfS0_b, %function
 4039              	_ZNK4Move19GetProbeCoordinatesEiRfS0_b:
 4040              		@ args = 4, pretend = 0, frame = 0
 4041              		@ frame_needed = 0, uses_anonymous_args = 0
 4042 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 4043 0002 00EB8104 		add	r4, r0, r1, lsl #2
 4044 0006 A16F     		ldr	r1, [r4, #120]	@ float
 4045 0008 1546     		mov	r5, r2
 4046 000a 1160     		str	r1, [r2]	@ float
 4047 000c D4F8F810 		ldr	r1, [r4, #248]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 72


 4048 0010 9DF81820 		ldrb	r2, [sp, #24]	@ zero_extendqisi2
 4049 0014 1E46     		mov	r6, r3
 4050 0016 1960     		str	r1, [r3]	@ float
 4051 0018 82B1     		cbz	r2, .L534
 4052 001a 0A4B     		ldr	r3, .L538
 4053 001c 1868     		ldr	r0, [r3]
 4054 001e D0F89010 		ldr	r1, [r0, #144]
 4055 0022 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersEl
 4056 0026 4168     		ldr	r1, [r0, #4]	@ float
 4057 0028 0746     		mov	r7, r0
 4058 002a 2868     		ldr	r0, [r5]	@ float
 4059 002c FFF7FEFF 		bl	__aeabi_fsub
 4060 0030 2860     		str	r0, [r5]	@ float
 4061 0032 B968     		ldr	r1, [r7, #8]	@ float
 4062 0034 3068     		ldr	r0, [r6]	@ float
 4063 0036 FFF7FEFF 		bl	__aeabi_fsub
 4064 003a 3060     		str	r0, [r6]	@ float
 4065              	.L534:
 4066 003c D4F87801 		ldr	r0, [r4, #376]	@ float
 4067 0040 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 4068              	.L539:
 4069 0042 00BF     		.align	2
 4070              	.L538:
 4071 0044 00000000 		.word	reprap
 4072              		.size	_ZNK4Move19GetProbeCoordinatesEiRfS0_b, .-_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 4073              		.section	.text._ZNK4Move19NumberOfProbePointsEv,"ax",%progbits
 4074              		.align	2
 4075              		.global	_ZNK4Move19NumberOfProbePointsEv
 4076              		.thumb
 4077              		.thumb_func
 4078              		.type	_ZNK4Move19NumberOfProbePointsEv, %function
 4079              	_ZNK4Move19NumberOfProbePointsEv:
 4080              		@ args = 0, pretend = 0, frame = 0
 4081              		@ frame_needed = 0, uses_anonymous_args = 0
 4082              		@ link register save eliminated.
 4083 0000 0023     		movs	r3, #0
 4084 0002 02E0     		b	.L542
 4085              	.L547:
 4086 0004 0133     		adds	r3, r3, #1
 4087 0006 202B     		cmp	r3, #32
 4088 0008 06D0     		beq	.L541
 4089              	.L542:
 4090 000a C218     		adds	r2, r0, r3
 4091 000c 92F89823 		ldrb	r2, [r2, #920]	@ zero_extendqisi2
 4092 0010 02F00702 		and	r2, r2, #7
 4093 0014 072A     		cmp	r2, #7
 4094 0016 F5D0     		beq	.L547
 4095              	.L541:
 4096 0018 1846     		mov	r0, r3
 4097 001a 7047     		bx	lr
 4098              		.size	_ZNK4Move19NumberOfProbePointsEv, .-_ZNK4Move19NumberOfProbePointsEv
 4099              		.section	.text._ZNK4Move21NumberOfXYProbePointsEv,"ax",%progbits
 4100              		.align	2
 4101              		.global	_ZNK4Move21NumberOfXYProbePointsEv
 4102              		.thumb
 4103              		.thumb_func
 4104              		.type	_ZNK4Move21NumberOfXYProbePointsEv, %function
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 73


 4105              	_ZNK4Move21NumberOfXYProbePointsEv:
 4106              		@ args = 0, pretend = 0, frame = 0
 4107              		@ frame_needed = 0, uses_anonymous_args = 0
 4108              		@ link register save eliminated.
 4109 0000 0023     		movs	r3, #0
 4110 0002 02E0     		b	.L550
 4111              	.L555:
 4112 0004 0133     		adds	r3, r3, #1
 4113 0006 202B     		cmp	r3, #32
 4114 0008 06D0     		beq	.L549
 4115              	.L550:
 4116 000a C218     		adds	r2, r0, r3
 4117 000c 92F89823 		ldrb	r2, [r2, #920]	@ zero_extendqisi2
 4118 0010 02F00302 		and	r2, r2, #3
 4119 0014 032A     		cmp	r2, #3
 4120 0016 F5D0     		beq	.L555
 4121              	.L549:
 4122 0018 1846     		mov	r0, r3
 4123 001a 7047     		bx	lr
 4124              		.size	_ZNK4Move21NumberOfXYProbePointsEv, .-_ZNK4Move21NumberOfXYProbePointsEv
 4125              		.section	.text._ZN4Move8SimulateEh,"ax",%progbits
 4126              		.align	2
 4127              		.global	_ZN4Move8SimulateEh
 4128              		.thumb
 4129              		.thumb_func
 4130              		.type	_ZN4Move8SimulateEh, %function
 4131              	_ZN4Move8SimulateEh:
 4132              		@ args = 0, pretend = 0, frame = 0
 4133              		@ frame_needed = 0, uses_anonymous_args = 0
 4134              		@ link register save eliminated.
 4135 0000 4174     		strb	r1, [r0, #17]
 4136 0002 09B1     		cbz	r1, .L556
 4137 0004 0023     		movs	r3, #0
 4138 0006 8362     		str	r3, [r0, #40]	@ float
 4139              	.L556:
 4140 0008 7047     		bx	lr
 4141              		.size	_ZN4Move8SimulateEh, .-_ZN4Move8SimulateEh
 4142 000a 00BF     		.section	.text._ZNK4Move15PrintCurrentDdaEv,"ax",%progbits
 4143              		.align	2
 4144              		.global	_ZNK4Move15PrintCurrentDdaEv
 4145              		.thumb
 4146              		.thumb_func
 4147              		.type	_ZNK4Move15PrintCurrentDdaEv, %function
 4148              	_ZNK4Move15PrintCurrentDdaEv:
 4149              		@ args = 0, pretend = 0, frame = 0
 4150              		@ frame_needed = 0, uses_anonymous_args = 0
 4151              		@ link register save eliminated.
 4152 0000 0368     		ldr	r3, [r0]
 4153 0002 13B1     		cbz	r3, .L561
 4154 0004 0068     		ldr	r0, [r0]
 4155 0006 FFF7FEBF 		b	_ZNK3DDA10DebugPrintEv
 4156              	.L561:
 4157 000a 7047     		bx	lr
 4158              		.size	_ZNK4Move15PrintCurrentDdaEv, .-_ZNK4Move15PrintCurrentDdaEv
 4159              		.section	.text._ZNK4Move17GetGeometryStringEv,"ax",%progbits
 4160              		.align	2
 4161              		.global	_ZNK4Move17GetGeometryStringEv
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 74


 4162              		.thumb
 4163              		.thumb_func
 4164              		.type	_ZNK4Move17GetGeometryStringEv, %function
 4165              	_ZNK4Move17GetGeometryStringEv:
 4166              		@ args = 0, pretend = 0, frame = 0
 4167              		@ frame_needed = 0, uses_anonymous_args = 0
 4168              		@ link register save eliminated.
 4169 0000 90F86C34 		ldrb	r3, [r0, #1132]	@ zero_extendqisi2
 4170 0004 5BB9     		cbnz	r3, .L565
 4171 0006 D0F8E035 		ldr	r3, [r0, #1504]
 4172 000a 012B     		cmp	r3, #1
 4173 000c 09D0     		beq	.L566
 4174 000e 022B     		cmp	r3, #2
 4175 0010 09D0     		beq	.L567
 4176 0012 064A     		ldr	r2, .L569
 4177 0014 0648     		ldr	r0, .L569+4
 4178 0016 032B     		cmp	r3, #3
 4179 0018 08BF     		it	eq
 4180 001a 1046     		moveq	r0, r2
 4181 001c 7047     		bx	lr
 4182              	.L565:
 4183 001e 0548     		ldr	r0, .L569+8
 4184 0020 7047     		bx	lr
 4185              	.L566:
 4186 0022 0548     		ldr	r0, .L569+12
 4187 0024 7047     		bx	lr
 4188              	.L567:
 4189 0026 0548     		ldr	r0, .L569+16
 4190 0028 7047     		bx	lr
 4191              	.L570:
 4192 002a 00BF     		.align	2
 4193              	.L569:
 4194 002c 54030000 		.word	.LC29
 4195 0030 48030000 		.word	.LC28
 4196 0034 30030000 		.word	.LC25
 4197 0038 38030000 		.word	.LC26
 4198 003c 40030000 		.word	.LC27
 4199              		.size	_ZNK4Move17GetGeometryStringEv, .-_ZNK4Move17GetGeometryStringEv
 4200              		.section	.text._ZNK4Move12IsCoreXYAxisEj,"ax",%progbits
 4201              		.align	2
 4202              		.global	_ZNK4Move12IsCoreXYAxisEj
 4203              		.thumb
 4204              		.thumb_func
 4205              		.type	_ZNK4Move12IsCoreXYAxisEj, %function
 4206              	_ZNK4Move12IsCoreXYAxisEj:
 4207              		@ args = 0, pretend = 0, frame = 0
 4208              		@ frame_needed = 0, uses_anonymous_args = 0
 4209              		@ link register save eliminated.
 4210 0000 D0F8E035 		ldr	r3, [r0, #1504]
 4211 0004 022B     		cmp	r3, #2
 4212 0006 10D0     		beq	.L573
 4213 0008 032B     		cmp	r3, #3
 4214 000a 08D0     		beq	.L574
 4215 000c 012B     		cmp	r3, #1
 4216 000e 01D0     		beq	.L579
 4217 0010 0020     		movs	r0, #0
 4218 0012 7047     		bx	lr
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 75


 4219              	.L579:
 4220 0014 0129     		cmp	r1, #1
 4221 0016 8CBF     		ite	hi
 4222 0018 0020     		movhi	r0, #0
 4223 001a 0120     		movls	r0, #1
 4224 001c 7047     		bx	lr
 4225              	.L574:
 4226 001e 481E     		subs	r0, r1, #1
 4227 0020 0128     		cmp	r0, #1
 4228 0022 8CBF     		ite	hi
 4229 0024 0020     		movhi	r0, #0
 4230 0026 0120     		movls	r0, #1
 4231 0028 7047     		bx	lr
 4232              	.L573:
 4233 002a 19B1     		cbz	r1, .L577
 4234 002c 8B1E     		subs	r3, r1, #2
 4235 002e 5842     		rsbs	r0, r3, #0
 4236 0030 5841     		adcs	r0, r0, r3
 4237 0032 7047     		bx	lr
 4238              	.L577:
 4239 0034 0120     		movs	r0, #1
 4240 0036 7047     		bx	lr
 4241              		.size	_ZNK4Move12IsCoreXYAxisEj, .-_ZNK4Move12IsCoreXYAxisEj
 4242              		.section	.text._ZN4Move9JustHomedEjfP3DDA,"ax",%progbits
 4243              		.align	2
 4244              		.global	_ZN4Move9JustHomedEjfP3DDA
 4245              		.thumb
 4246              		.thumb_func
 4247              		.type	_ZN4Move9JustHomedEjfP3DDA, %function
 4248              	_ZN4Move9JustHomedEjfP3DDA:
 4249              		@ args = 0, pretend = 0, frame = 16
 4250              		@ frame_needed = 0, uses_anonymous_args = 0
 4251 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 4252 0004 84B0     		sub	sp, sp, #16
 4253 0006 9046     		mov	r8, r2
 4254 0008 1D46     		mov	r5, r3
 4255 000a 0E46     		mov	r6, r1
 4256 000c FFF7FEFF 		bl	_ZNK4Move12IsCoreXYAxisEj
 4257 0010 0746     		mov	r7, r0
 4258 0012 10B3     		cbz	r0, .L581
 4259 0014 0024     		movs	r4, #0
 4260 0016 01AF     		add	r7, sp, #4
 4261              	.L583:
 4262 0018 2146     		mov	r1, r4
 4263 001a 2846     		mov	r0, r5
 4264 001c 0022     		movs	r2, #0
 4265 001e FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 4266 0022 47F82400 		str	r0, [r7, r4, lsl #2]	@ float
 4267 0026 0134     		adds	r4, r4, #1
 4268 0028 032C     		cmp	r4, #3
 4269 002a F5D1     		bne	.L583
 4270 002c 2246     		mov	r2, r4
 4271 002e 04AC     		add	r4, sp, #16
 4272 0030 04EB8603 		add	r3, r4, r6, lsl #2
 4273 0034 2846     		mov	r0, r5
 4274 0036 3946     		mov	r1, r7
 4275 0038 43F80C8C 		str	r8, [r3, #-12]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 76


 4276 003c 114C     		ldr	r4, .L585
 4277 003e FFF7FEFF 		bl	_ZN3DDA12SetPositionsEPKfj
 4278              	.L584:
 4279 0042 0122     		movs	r2, #1
 4280 0044 02FA06F6 		lsl	r6, r2, r6
 4281 0048 2369     		ldr	r3, [r4, #16]
 4282 004a D3F85C22 		ldr	r2, [r3, #604]
 4283 004e 3243     		orrs	r2, r2, r6
 4284 0050 C3F85C22 		str	r2, [r3, #604]
 4285 0054 04B0     		add	sp, sp, #16
 4286              		@ sp needed
 4287 0056 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4288              	.L581:
 4289 005a 0A4C     		ldr	r4, .L585
 4290 005c 06F14E02 		add	r2, r6, #78
 4291 0060 2368     		ldr	r3, [r4]
 4292 0062 4046     		mov	r0, r8
 4293 0064 53F82210 		ldr	r1, [r3, r2, lsl #2]	@ float
 4294 0068 FFF7FEFF 		bl	__aeabi_fmul
 4295 006c FFF7FEFF 		bl	roundf
 4296 0070 FFF7FEFF 		bl	__aeabi_f2iz
 4297 0074 6B7A     		ldrb	r3, [r5, #9]	@ zero_extendqisi2
 4298 0076 321D     		adds	r2, r6, #4
 4299 0078 67F30003 		bfi	r3, r7, #0, #1
 4300 007c 45F82200 		str	r0, [r5, r2, lsl #2]
 4301 0080 6B72     		strb	r3, [r5, #9]
 4302 0082 DEE7     		b	.L584
 4303              	.L586:
 4304              		.align	2
 4305              	.L585:
 4306 0084 00000000 		.word	reprap
 4307              		.size	_ZN4Move9JustHomedEjfP3DDA, .-_ZN4Move9JustHomedEjfP3DDA
 4308              		.section	.text._ZN4Move10HitLowStopEjP3DDA,"ax",%progbits
 4309              		.align	2
 4310              		.global	_ZN4Move10HitLowStopEjP3DDA
 4311              		.thumb
 4312              		.thumb_func
 4313              		.type	_ZN4Move10HitLowStopEjP3DDA, %function
 4314              	_ZN4Move10HitLowStopEjP3DDA:
 4315              		@ args = 0, pretend = 0, frame = 0
 4316              		@ frame_needed = 0, uses_anonymous_args = 0
 4317              		@ link register save eliminated.
 4318 0000 F0B4     		push	{r4, r5, r6, r7}
 4319 0002 0A4D     		ldr	r5, .L590
 4320 0004 1346     		mov	r3, r2
 4321 0006 2E69     		ldr	r6, [r5, #16]
 4322 0008 D6F88461 		ldr	r6, [r6, #388]
 4323 000c B142     		cmp	r1, r6
 4324 000e 0AD2     		bcs	.L587
 4325 0010 90F86C24 		ldrb	r2, [r0, #1132]	@ zero_extendqisi2
 4326 0014 3AB9     		cbnz	r2, .L587
 4327 0016 2A68     		ldr	r2, [r5]
 4328 0018 01F59C74 		add	r4, r1, #312
 4329 001c 52F82420 		ldr	r2, [r2, r4, lsl #2]	@ float
 4330 0020 F0BC     		pop	{r4, r5, r6, r7}
 4331 0022 FFF7FEBF 		b	_ZN4Move9JustHomedEjfP3DDA
 4332              	.L587:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 77


 4333 0026 F0BC     		pop	{r4, r5, r6, r7}
 4334 0028 7047     		bx	lr
 4335              	.L591:
 4336 002a 00BF     		.align	2
 4337              	.L590:
 4338 002c 00000000 		.word	reprap
 4339              		.size	_ZN4Move10HitLowStopEjP3DDA, .-_ZN4Move10HitLowStopEjP3DDA
 4340              		.section	.text._ZN4Move11HitHighStopEjP3DDA,"ax",%progbits
 4341              		.align	2
 4342              		.global	_ZN4Move11HitHighStopEjP3DDA
 4343              		.thumb
 4344              		.thumb_func
 4345              		.type	_ZN4Move11HitHighStopEjP3DDA, %function
 4346              	_ZN4Move11HitHighStopEjP3DDA:
 4347              		@ args = 0, pretend = 0, frame = 0
 4348              		@ frame_needed = 0, uses_anonymous_args = 0
 4349 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 4350 0004 114E     		ldr	r6, .L597
 4351 0006 0C46     		mov	r4, r1
 4352 0008 3369     		ldr	r3, [r6, #16]
 4353 000a 0546     		mov	r5, r0
 4354 000c D3F88411 		ldr	r1, [r3, #388]
 4355 0010 1746     		mov	r7, r2
 4356 0012 8C42     		cmp	r4, r1
 4357 0014 18D2     		bcs	.L592
 4358 0016 90F86C34 		ldrb	r3, [r0, #1132]	@ zero_extendqisi2
 4359 001a 5BB9     		cbnz	r3, .L596
 4360 001c 3368     		ldr	r3, [r6]
 4361 001e 04F59972 		add	r2, r4, #306
 4362 0022 53F82220 		ldr	r2, [r3, r2, lsl #2]	@ float
 4363              	.L595:
 4364 0026 2846     		mov	r0, r5
 4365 0028 2146     		mov	r1, r4
 4366 002a 3B46     		mov	r3, r7
 4367 002c BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 4368 0030 FFF7FEBF 		b	_ZN4Move9JustHomedEjfP3DDA
 4369              	.L596:
 4370 0034 00EB8403 		add	r3, r0, r4, lsl #2
 4371 0038 D3F85014 		ldr	r1, [r3, #1104]	@ float
 4372 003c D0F88C04 		ldr	r0, [r0, #1164]	@ float
 4373 0040 FFF7FEFF 		bl	__aeabi_fadd
 4374 0044 0246     		mov	r2, r0
 4375 0046 EEE7     		b	.L595
 4376              	.L592:
 4377 0048 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 4378              	.L598:
 4379              		.align	2
 4380              	.L597:
 4381 004c 00000000 		.word	reprap
 4382              		.size	_ZN4Move11HitHighStopEjP3DDA, .-_ZN4Move11HitHighStopEjP3DDA
 4383              		.section	.text._ZN4Move12DoDeltaProbeEffff,"ax",%progbits
 4384              		.align	2
 4385              		.global	_ZN4Move12DoDeltaProbeEffff
 4386              		.thumb
 4387              		.thumb_func
 4388              		.type	_ZN4Move12DoDeltaProbeEffff, %function
 4389              	_ZN4Move12DoDeltaProbeEffff:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 78


 4390              		@ args = 4, pretend = 0, frame = 0
 4391              		@ frame_needed = 0, uses_anonymous_args = 0
 4392 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 4393 0002 0446     		mov	r4, r0
 4394 0004 90F8DC05 		ldrb	r0, [r0, #1500]	@ zero_extendqisi2
 4395 0008 83B0     		sub	sp, sp, #12
 4396 000a 68B1     		cbz	r0, .L600
 4397 000c D4F8D405 		ldr	r0, [r4, #1492]
 4398 0010 831E     		subs	r3, r0, #2
 4399 0012 012B     		cmp	r3, #1
 4400 0014 49D8     		bhi	.L624
 4401 0016 0338     		subs	r0, r0, #3
 4402 0018 4FF00003 		mov	r3, #0
 4403 001c 18BF     		it	ne
 4404 001e 0120     		movne	r0, #1
 4405 0020 84F8DC35 		strb	r3, [r4, #1500]
 4406 0024 03B0     		add	sp, sp, #12
 4407              		@ sp needed
 4408 0026 F0BD     		pop	{r4, r5, r6, r7, pc}
 4409              	.L600:
 4410 0028 2568     		ldr	r5, [r4]
 4411 002a 15B1     		cbz	r5, .L603
 4412              	.L604:
 4413 002c 0020     		movs	r0, #0
 4414 002e 03B0     		add	sp, sp, #12
 4415              		@ sp needed
 4416 0030 F0BD     		pop	{r4, r5, r6, r7, pc}
 4417              	.L603:
 4418 0032 A668     		ldr	r6, [r4, #8]
 4419 0034 6068     		ldr	r0, [r4, #4]
 4420 0036 8642     		cmp	r6, r0
 4421 0038 F8D1     		bne	.L604
 4422 003a 0898     		ldr	r0, [sp, #32]	@ float
 4423 003c 04F59866 		add	r6, r4, #1216
 4424 0040 0090     		str	r0, [sp]	@ float
 4425 0042 3046     		mov	r0, r6
 4426 0044 FFF7FEFF 		bl	_ZN10DeltaProbe4InitEffff
 4427 0048 0028     		cmp	r0, #0
 4428 004a EFD0     		beq	.L604
 4429 004c 3046     		mov	r0, r6
 4430 004e FFF7FEFF 		bl	_ZN10DeltaProbe5StartEv
 4431 0052 431C     		adds	r3, r0, #1
 4432 0054 0646     		mov	r6, r0
 4433 0056 28D0     		beq	.L624
 4434 0058 1E4B     		ldr	r3, .L626
 4435 005a 2946     		mov	r1, r5
 4436 005c 1D68     		ldr	r5, [r3]
 4437 005e 2846     		mov	r0, r5
 4438 0060 FFF7FEFF 		bl	_ZN8Platform11EnableDriveEj
 4439 0064 2846     		mov	r0, r5
 4440 0066 0121     		movs	r1, #1
 4441 0068 FFF7FEFF 		bl	_ZN8Platform11EnableDriveEj
 4442 006c 2846     		mov	r0, r5
 4443 006e 0221     		movs	r1, #2
 4444 0070 FFF7FEFF 		bl	_ZN8Platform11EnableDriveEj
 4445 0074 0123     		movs	r3, #1
 4446 0076 84F8DC35 		strb	r3, [r4, #1500]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 79


 4447 007a 84F83034 		strb	r3, [r4, #1072]
 4448              	@ 470 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 4449 007e EFF31087 		MRS r7, primask
 4450              	@ 0 "" 2
 4451              	@ 330 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 4452 0082 72B6     		cpsid i
 4453              	@ 0 "" 2
 4454              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 4455 0084 BFF35F8F 		dmb
 4456              	@ 0 "" 2
 4457              		.thumb
 4458 0088 134D     		ldr	r5, .L626+4
 4459 008a 0022     		movs	r2, #0
 4460 008c 134B     		ldr	r3, .L626+8
 4461 008e 2A70     		strb	r2, [r5]
 4462 0090 1869     		ldr	r0, [r3, #16]
 4463 0092 C4F8D805 		str	r0, [r4, #1496]
 4464 0096 3044     		add	r0, r0, r6
 4465 0098 FFF7FEFF 		bl	_ZN8Platform17ScheduleInterruptEm
 4466 009c 48B9     		cbnz	r0, .L625
 4467              	.L608:
 4468 009e 27B9     		cbnz	r7, .L624
 4469 00a0 0123     		movs	r3, #1
 4470 00a2 2B70     		strb	r3, [r5]
 4471              	@ 456 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmInstr.h" 1
 4472 00a4 BFF35F8F 		dmb
 4473              	@ 0 "" 2
 4474              	@ 319 "C:\Eclipse\Firmware\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFunc.h" 1
 4475 00a8 62B6     		cpsie i
 4476              	@ 0 "" 2
 4477              		.thumb
 4478              	.L624:
 4479 00aa 4FF0FF30 		mov	r0, #-1
 4480 00ae 03B0     		add	sp, sp, #12
 4481              		@ sp needed
 4482 00b0 F0BD     		pop	{r4, r5, r6, r7, pc}
 4483              	.L625:
 4484 00b2 2368     		ldr	r3, [r4]
 4485 00b4 2BB1     		cbz	r3, .L609
 4486              	.L611:
 4487 00b6 2068     		ldr	r0, [r4]
 4488 00b8 FFF7FEFF 		bl	_ZN3DDA4StepEv
 4489 00bc 0028     		cmp	r0, #0
 4490 00be FAD1     		bne	.L611
 4491 00c0 EDE7     		b	.L608
 4492              	.L609:
 4493 00c2 94F8DC35 		ldrb	r3, [r4, #1500]	@ zero_extendqisi2
 4494 00c6 002B     		cmp	r3, #0
 4495 00c8 E9D0     		beq	.L608
 4496 00ca 2046     		mov	r0, r4
 4497 00cc FFF7FEFF 		bl	_ZN4Move19DeltaProbeInterruptEv
 4498 00d0 E5E7     		b	.L608
 4499              	.L627:
 4500 00d2 00BF     		.align	2
 4501              	.L626:
 4502 00d4 00000000 		.word	reprap
 4503 00d8 00000000 		.word	g_interrupt_enabled
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 80


 4504 00dc 00400840 		.word	1074282496
 4505              		.size	_ZN4Move12DoDeltaProbeEffff, .-_ZN4Move12DoDeltaProbeEffff
 4506              		.section	.text._ZN4Move11PrintMatrixEPKcRK10MathMatrixIfEjj,"ax",%progbits
 4507              		.align	2
 4508              		.global	_ZN4Move11PrintMatrixEPKcRK10MathMatrixIfEjj
 4509              		.thumb
 4510              		.thumb_func
 4511              		.type	_ZN4Move11PrintMatrixEPKcRK10MathMatrixIfEjj, %function
 4512              	_ZN4Move11PrintMatrixEPKcRK10MathMatrixIfEjj:
 4513              		@ args = 0, pretend = 0, frame = 0
 4514              		@ frame_needed = 0, uses_anonymous_args = 0
 4515 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 4516 0004 0D46     		mov	r5, r1
 4517 0006 83B0     		sub	sp, sp, #12
 4518 0008 9146     		mov	r9, r2
 4519 000a 0146     		mov	r1, r0
 4520 000c 1E48     		ldr	r0, .L646
 4521 000e 1F46     		mov	r7, r3
 4522 0010 FFF7FEFF 		bl	debugPrintf
 4523 0014 B9F1000F 		cmp	r9, #0
 4524 0018 2DD0     		beq	.L644
 4525 001a 37B3     		cbz	r7, .L645
 4526              	.L630:
 4527 001c B9F1000F 		cmp	r9, #0
 4528 0020 20D0     		beq	.L628
 4529 0022 0026     		movs	r6, #0
 4530 0024 07F1FF38 		add	r8, r7, #-1
 4531              	.L632:
 4532 0028 CFB1     		cbz	r7, .L635
 4533 002a 0024     		movs	r4, #0
 4534              	.L636:
 4535 002c 2B68     		ldr	r3, [r5]
 4536 002e 2246     		mov	r2, r4
 4537 0030 DB68     		ldr	r3, [r3, #12]
 4538 0032 3146     		mov	r1, r6
 4539 0034 2846     		mov	r0, r5
 4540 0036 9847     		blx	r3
 4541 0038 0068     		ldr	r0, [r0]	@ float
 4542 003a FFF7FEFF 		bl	__aeabi_f2d
 4543 003e 4445     		cmp	r4, r8
 4544 0040 14BF     		ite	ne
 4545 0042 4FF0200E 		movne	lr, #32
 4546 0046 4FF00A0E 		moveq	lr, #10
 4547 004a 0246     		mov	r2, r0
 4548 004c 0B46     		mov	r3, r1
 4549 004e CDF800E0 		str	lr, [sp]
 4550 0052 0134     		adds	r4, r4, #1
 4551 0054 0D48     		ldr	r0, .L646+4
 4552 0056 FFF7FEFF 		bl	debugPrintf
 4553 005a BC42     		cmp	r4, r7
 4554 005c E6D1     		bne	.L636
 4555              	.L635:
 4556 005e 0136     		adds	r6, r6, #1
 4557 0060 4E45     		cmp	r6, r9
 4558 0062 E1D1     		bne	.L632
 4559              	.L628:
 4560 0064 03B0     		add	sp, sp, #12
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 81


 4561              		@ sp needed
 4562 0066 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 4563              	.L645:
 4564 006a 2B68     		ldr	r3, [r5]
 4565 006c 2846     		mov	r0, r5
 4566 006e 5B68     		ldr	r3, [r3, #4]
 4567 0070 9847     		blx	r3
 4568 0072 0746     		mov	r7, r0
 4569 0074 D2E7     		b	.L630
 4570              	.L644:
 4571 0076 2B68     		ldr	r3, [r5]
 4572 0078 2846     		mov	r0, r5
 4573 007a 1B68     		ldr	r3, [r3]
 4574 007c 9847     		blx	r3
 4575 007e 8146     		mov	r9, r0
 4576 0080 002F     		cmp	r7, #0
 4577 0082 CBD1     		bne	.L630
 4578 0084 F1E7     		b	.L645
 4579              	.L647:
 4580 0086 00BF     		.align	2
 4581              	.L646:
 4582 0088 BC000000 		.word	.LC7
 4583 008c 5C030000 		.word	.LC30
 4584              		.size	_ZN4Move11PrintMatrixEPKcRK10MathMatrixIfEjj, .-_ZN4Move11PrintMatrixEPKcRK10MathMatrixIfEjj
 4585              		.section	.text._ZN4Move11PrintVectorEPKcPKfj,"ax",%progbits
 4586              		.align	2
 4587              		.global	_ZN4Move11PrintVectorEPKcPKfj
 4588              		.thumb
 4589              		.thumb_func
 4590              		.type	_ZN4Move11PrintVectorEPKcPKfj, %function
 4591              	_ZN4Move11PrintVectorEPKcPKfj:
 4592              		@ args = 0, pretend = 0, frame = 0
 4593              		@ frame_needed = 0, uses_anonymous_args = 0
 4594 0000 70B5     		push	{r4, r5, r6, lr}
 4595 0002 0D46     		mov	r5, r1
 4596 0004 1646     		mov	r6, r2
 4597 0006 0146     		mov	r1, r0
 4598 0008 0B48     		ldr	r0, .L652
 4599 000a FFF7FEFF 		bl	debugPrintf
 4600 000e 6EB1     		cbz	r6, .L650
 4601 0010 043D     		subs	r5, r5, #4
 4602 0012 0024     		movs	r4, #0
 4603              	.L651:
 4604 0014 55F8040F 		ldr	r0, [r5, #4]!	@ float
 4605 0018 FFF7FEFF 		bl	__aeabi_f2d
 4606 001c 0134     		adds	r4, r4, #1
 4607 001e 0246     		mov	r2, r0
 4608 0020 0B46     		mov	r3, r1
 4609 0022 0648     		ldr	r0, .L652+4
 4610 0024 FFF7FEFF 		bl	debugPrintf
 4611 0028 B442     		cmp	r4, r6
 4612 002a F3D1     		bne	.L651
 4613              	.L650:
 4614 002c 0448     		ldr	r0, .L652+8
 4615 002e BDE87040 		pop	{r4, r5, r6, lr}
 4616 0032 FFF7FEBF 		b	debugPrintf
 4617              	.L653:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 82


 4618 0036 00BF     		.align	2
 4619              	.L652:
 4620 0038 64030000 		.word	.LC31
 4621 003c 68030000 		.word	.LC32
 4622 0040 E8000000 		.word	.LC11
 4623              		.size	_ZN4Move11PrintVectorEPKcPKfj, .-_ZN4Move11PrintVectorEPKcPKfj
 4624              		.section	.text._ZN4Move18DoDeltaCalibrationEjR9StringRef,"ax",%progbits
 4625              		.align	2
 4626              		.global	_ZN4Move18DoDeltaCalibrationEjR9StringRef
 4627              		.thumb
 4628              		.thumb_func
 4629              		.type	_ZN4Move18DoDeltaCalibrationEjR9StringRef, %function
 4630              	_ZN4Move18DoDeltaCalibrationEjR9StringRef:
 4631              		@ args = 0, pretend = 0, frame = 2312
 4632              		@ frame_needed = 0, uses_anonymous_args = 0
 4633 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 4634 0004 ADF61C1D 		subw	sp, sp, #2332
 4635 0008 1892     		str	r2, [sp, #96]
 4636 000a 0C90     		str	r0, [sp, #48]
 4637 000c 0691     		str	r1, [sp, #24]
 4638 000e 4FF00009 		mov	r9, #0
 4639 0012 0246     		mov	r2, r0
 4640 0014 04E0     		b	.L656
 4641              	.L743:
 4642 0016 09F10109 		add	r9, r9, #1
 4643 001a B9F1200F 		cmp	r9, #32
 4644 001e 07D0     		beq	.L655
 4645              	.L656:
 4646 0020 02EB0903 		add	r3, r2, r9
 4647 0024 93F89833 		ldrb	r3, [r3, #920]	@ zero_extendqisi2
 4648 0028 03F00703 		and	r3, r3, #7
 4649 002c 072B     		cmp	r3, #7
 4650 002e F2D0     		beq	.L743
 4651              	.L655:
 4652 0030 069C     		ldr	r4, [sp, #24]
 4653 0032 E31E     		subs	r3, r4, #3
 4654 0034 062B     		cmp	r3, #6
 4655 0036 00F2F582 		bhi	.L657
 4656 003a 052C     		cmp	r4, #5
 4657 003c 00F0F282 		beq	.L657
 4658 0040 DFF80CE3 		ldr	lr, .L753+12
 4659 0044 BEF84030 		ldrh	r3, [lr, #64]
 4660 0048 D906     		lsls	r1, r3, #27
 4661 004a 00F10283 		bmi	.L744
 4662 004e 0024     		movs	r4, #0
 4663 0050 1394     		str	r4, [sp, #76]	@ float
 4664 0052 B9F1000F 		cmp	r9, #0
 4665 0056 00F00D83 		beq	.L719
 4666              	.L752:
 4667 005a 0C9C     		ldr	r4, [sp, #48]
 4668 005c 139E     		ldr	r6, [sp, #76]	@ float
 4669 005e 0DF29441 		addw	r1, sp, #1172
 4670 0062 0DF1A40E 		add	lr, sp, #164
 4671 0066 0DF59362 		add	r2, sp, #1176
 4672 006a DDF830B0 		ldr	fp, [sp, #48]
 4673 006e 04F23445 		addw	r5, r4, #1076
 4674 0072 0027     		movs	r7, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 83


 4675 0074 C5AC     		add	r4, sp, #788
 4676 0076 CDF82CE0 		str	lr, [sp, #44]
 4677 007a 0A91     		str	r1, [sp, #40]
 4678 007c 0F92     		str	r2, [sp, #60]
 4679 007e B246     		mov	r10, r6
 4680 0080 CDF81490 		str	r9, [sp, #20]
 4681 0084 8846     		mov	r8, r1
 4682              	.L662:
 4683 0086 0BEB0703 		add	r3, fp, r7
 4684 008a 93F89833 		ldrb	r3, [r3, #920]	@ zero_extendqisi2
 4685 008e DDF82CE0 		ldr	lr, [sp, #44]
 4686 0092 C3F3C003 		ubfx	r3, r3, #3, #1
 4687 0096 0093     		str	r3, [sp]
 4688 0098 3946     		mov	r1, r7
 4689 009a 4EF82760 		str	r6, [lr, r7, lsl #2]	@ float
 4690 009e 0F9B     		ldr	r3, [sp, #60]
 4691 00a0 4246     		mov	r2, r8
 4692 00a2 5846     		mov	r0, fp
 4693 00a4 FFF7FEFF 		bl	_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 4694 00a8 4146     		mov	r1, r8
 4695 00aa 8146     		mov	r9, r0
 4696 00ac 0022     		movs	r2, #0
 4697 00ae 2846     		mov	r0, r5
 4698 00b0 C8F80860 		str	r6, [r8, #8]	@ float
 4699 00b4 FFF7FEFF 		bl	_ZNK15DeltaParameters9TransformEPKfj
 4700 00b8 4146     		mov	r1, r8
 4701 00ba 2060     		str	r0, [r4]	@ float
 4702 00bc 0122     		movs	r2, #1
 4703 00be 2846     		mov	r0, r5
 4704 00c0 FFF7FEFF 		bl	_ZNK15DeltaParameters9TransformEPKfj
 4705 00c4 0222     		movs	r2, #2
 4706 00c6 6060     		str	r0, [r4, #4]	@ float
 4707 00c8 4146     		mov	r1, r8
 4708 00ca 2846     		mov	r0, r5
 4709 00cc FFF7FEFF 		bl	_ZNK15DeltaParameters9TransformEPKfj
 4710 00d0 4946     		mov	r1, r9
 4711 00d2 A060     		str	r0, [r4, #8]	@ float
 4712 00d4 4846     		mov	r0, r9
 4713 00d6 FFF7FEFF 		bl	__aeabi_fmul
 4714 00da 0146     		mov	r1, r0
 4715 00dc 5046     		mov	r0, r10
 4716 00de FFF7FEFF 		bl	__aeabi_fadd
 4717 00e2 0599     		ldr	r1, [sp, #20]
 4718 00e4 0137     		adds	r7, r7, #1
 4719 00e6 8F42     		cmp	r7, r1
 4720 00e8 04F10C04 		add	r4, r4, #12
 4721 00ec 8246     		mov	r10, r0
 4722 00ee CAD1     		bne	.L662
 4723 00f0 1390     		str	r0, [sp, #76]	@ float
 4724 00f2 8946     		mov	r9, r1
 4725              	.L661:
 4726 00f4 069C     		ldr	r4, [sp, #24]
 4727 00f6 09EBC903 		add	r3, r9, r9, lsl #3
 4728 00fa A400     		lsls	r4, r4, #2
 4729 00fc 0994     		str	r4, [sp, #36]
 4730 00fe 2246     		mov	r2, r4
 4731 0100 069C     		ldr	r4, [sp, #24]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 84


 4732 0102 DDF824E0 		ldr	lr, [sp, #36]
 4733 0106 2244     		add	r2, r2, r4
 4734 0108 0F9C     		ldr	r4, [sp, #60]
 4735 010a D200     		lsls	r2, r2, #3
 4736 010c 7444     		add	r4, r4, lr
 4737 010e 1194     		str	r4, [sp, #68]
 4738 0110 69AC     		add	r4, sp, #420
 4739 0112 7444     		add	r4, r4, lr
 4740 0114 1794     		str	r4, [sp, #92]
 4741 0116 4FEA8904 		lsl	r4, r9, #2
 4742 011a 9B00     		lsls	r3, r3, #2
 4743 011c 1694     		str	r4, [sp, #88]
 4744 011e 0224     		movs	r4, #2
 4745 0120 1A92     		str	r2, [sp, #104]
 4746 0122 1993     		str	r3, [sp, #100]
 4747 0124 1594     		str	r4, [sp, #84]
 4748 0126 4F46     		mov	r7, r9
 4749              	.L713:
 4750 0128 8649     		ldr	r1, .L753
 4751 012a 0A9C     		ldr	r4, [sp, #40]
 4752 012c 2160     		str	r1, [r4]
 4753 012e 002F     		cmp	r7, #0
 4754 0130 3BD0     		beq	.L668
 4755 0132 0C9C     		ldr	r4, [sp, #48]
 4756 0134 069E     		ldr	r6, [sp, #24]
 4757 0136 04F2344A 		addw	r10, r4, #1076
 4758 013a C5AC     		add	r4, sp, #788
 4759 013c 0594     		str	r4, [sp, #20]
 4760 013e 0A9C     		ldr	r4, [sp, #40]
 4761 0140 0D97     		str	r7, [sp, #52]
 4762 0142 0894     		str	r4, [sp, #32]
 4763 0144 0024     		movs	r4, #0
 4764 0146 0794     		str	r4, [sp, #28]
 4765              	.L669:
 4766 0148 059C     		ldr	r4, [sp, #20]
 4767 014a DDF820B0 		ldr	fp, [sp, #32]
 4768 014e D4F80090 		ldr	r9, [r4]	@ float
 4769 0152 D4F80480 		ldr	r8, [r4, #4]	@ float
 4770 0156 A768     		ldr	r7, [r4, #8]	@ float
 4771 0158 0025     		movs	r5, #0
 4772 015a 0124     		movs	r4, #1
 4773 015c 0FE0     		b	.L716
 4774              	.L720:
 4775 015e 2946     		mov	r1, r5
 4776              	.L666:
 4777 0160 4346     		mov	r3, r8
 4778 0162 0097     		str	r7, [sp]	@ float
 4779 0164 5046     		mov	r0, r10
 4780 0166 4A46     		mov	r2, r9
 4781 0168 FFF7FEFF 		bl	_ZN15DeltaParameters17ComputeDerivativeEjfff
 4782 016c A642     		cmp	r6, r4
 4783 016e 05F10105 		add	r5, r5, #1
 4784 0172 4BF8040F 		str	r0, [fp, #4]!	@ float
 4785 0176 04F10103 		add	r3, r4, #1
 4786 017a 07D9     		bls	.L745
 4787 017c 1C46     		mov	r4, r3
 4788              	.L716:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 85


 4789 017e 082E     		cmp	r6, #8
 4790 0180 EDD1     		bne	.L720
 4791 0182 052D     		cmp	r5, #5
 4792 0184 94BF     		ite	ls
 4793 0186 2946     		movls	r1, r5
 4794 0188 2146     		movhi	r1, r4
 4795 018a E9E7     		b	.L666
 4796              	.L745:
 4797 018c 079C     		ldr	r4, [sp, #28]
 4798 018e 0134     		adds	r4, r4, #1
 4799 0190 0794     		str	r4, [sp, #28]
 4800 0192 059C     		ldr	r4, [sp, #20]
 4801 0194 DDF81CE0 		ldr	lr, [sp, #28]
 4802 0198 0C34     		adds	r4, r4, #12
 4803 019a 0594     		str	r4, [sp, #20]
 4804 019c 089C     		ldr	r4, [sp, #32]
 4805 019e 2434     		adds	r4, r4, #36
 4806 01a0 0894     		str	r4, [sp, #32]
 4807 01a2 0D9C     		ldr	r4, [sp, #52]
 4808 01a4 A645     		cmp	lr, r4
 4809 01a6 CFD1     		bne	.L669
 4810 01a8 2746     		mov	r7, r4
 4811              	.L668:
 4812 01aa DFF8A4E1 		ldr	lr, .L753+12
 4813 01ae BEF84030 		ldrh	r3, [lr, #64]
 4814 01b2 7446     		mov	r4, lr
 4815 01b4 C3F30013 		ubfx	r3, r3, #4, #1
 4816 01b8 1493     		str	r3, [sp, #80]
 4817 01ba 53B1     		cbz	r3, .L665
 4818 01bc 069B     		ldr	r3, [sp, #24]
 4819 01be 6248     		ldr	r0, .L753+4
 4820 01c0 0A99     		ldr	r1, [sp, #40]
 4821 01c2 3A46     		mov	r2, r7
 4822 01c4 FFF7FEFF 		bl	_ZN4Move11PrintMatrixEPKcRK10MathMatrixIfEjj
 4823 01c8 B4F84030 		ldrh	r3, [r4, #64]
 4824 01cc C3F30013 		ubfx	r3, r3, #4, #1
 4825 01d0 1493     		str	r3, [sp, #80]
 4826              	.L665:
 4827 01d2 0B9C     		ldr	r4, [sp, #44]
 4828 01d4 5D4A     		ldr	r2, .L753+8
 4829 01d6 2068     		ldr	r0, [r4]	@ float
 4830 01d8 0C9C     		ldr	r4, [sp, #48]
 4831 01da 6992     		str	r2, [sp, #420]
 4832 01dc D4F87811 		ldr	r1, [r4, #376]	@ float
 4833 01e0 FFF7FEFF 		bl	__aeabi_fadd
 4834 01e4 199C     		ldr	r4, [sp, #100]
 4835 01e6 00F10040 		add	r0, r0, #-2147483648
 4836 01ea 69AB     		add	r3, sp, #420
 4837 01ec 243C     		subs	r4, r4, #36
 4838 01ee 0F9E     		ldr	r6, [sp, #60]
 4839 01f0 0790     		str	r0, [sp, #28]
 4840 01f2 0593     		str	r3, [sp, #20]
 4841 01f4 0025     		movs	r5, #0
 4842 01f6 0894     		str	r4, [sp, #32]
 4843              	.L670:
 4844 01f8 D6F800B0 		ldr	fp, [r6]	@ float
 4845 01fc 0024     		movs	r4, #0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 86


 4846              	.L677:
 4847 01fe 0A9B     		ldr	r3, [sp, #40]
 4848 0200 5846     		mov	r0, fp
 4849 0202 2344     		add	r3, r3, r4
 4850 0204 5968     		ldr	r1, [r3, #4]	@ float
 4851 0206 FFF7FEFF 		bl	__aeabi_fmul
 4852 020a 012F     		cmp	r7, #1
 4853 020c 8046     		mov	r8, r0
 4854 020e 13D9     		bls	.L671
 4855 0210 B246     		mov	r10, r6
 4856 0212 4FF00109 		mov	r9, #1
 4857              	.L672:
 4858 0216 0AEB0503 		add	r3, r10, r5
 4859 021a 2344     		add	r3, r3, r4
 4860 021c 596A     		ldr	r1, [r3, #36]	@ float
 4861 021e 5AF8240F 		ldr	r0, [r10, #36]!	@ float
 4862 0222 FFF7FEFF 		bl	__aeabi_fmul
 4863 0226 0146     		mov	r1, r0
 4864 0228 4046     		mov	r0, r8
 4865 022a FFF7FEFF 		bl	__aeabi_fadd
 4866 022e 09F10109 		add	r9, r9, #1
 4867 0232 B945     		cmp	r9, r7
 4868 0234 8046     		mov	r8, r0
 4869 0236 EED1     		bne	.L672
 4870              	.L671:
 4871 0238 059B     		ldr	r3, [sp, #20]
 4872 023a DDF824E0 		ldr	lr, [sp, #36]
 4873 023e 2344     		add	r3, r3, r4
 4874 0240 0434     		adds	r4, r4, #4
 4875 0242 A645     		cmp	lr, r4
 4876 0244 C3F80480 		str	r8, [r3, #4]	@ float
 4877 0248 D9D1     		bne	.L677
 4878 024a 5946     		mov	r1, fp
 4879 024c 0798     		ldr	r0, [sp, #28]	@ float
 4880 024e FFF7FEFF 		bl	__aeabi_fmul
 4881 0252 012F     		cmp	r7, #1
 4882 0254 8246     		mov	r10, r0
 4883 0256 1BD9     		bls	.L674
 4884 0258 0C9C     		ldr	r4, [sp, #48]
 4885 025a DDF820B0 		ldr	fp, [sp, #32]
 4886 025e DDF82C90 		ldr	r9, [sp, #44]
 4887 0262 04F5BC78 		add	r8, r4, #376
 4888 0266 B344     		add	fp, fp, r6
 4889 0268 3446     		mov	r4, r6
 4890              	.L675:
 4891 026a 58F8041F 		ldr	r1, [r8, #4]!	@ float
 4892 026e 59F8040F 		ldr	r0, [r9, #4]!	@ float
 4893 0272 FFF7FEFF 		bl	__aeabi_fadd
 4894 0276 54F8241F 		ldr	r1, [r4, #36]!	@ float
 4895 027a 00F10040 		add	r0, r0, #-2147483648
 4896 027e FFF7FEFF 		bl	__aeabi_fmul
 4897 0282 0146     		mov	r1, r0
 4898 0284 5046     		mov	r0, r10
 4899 0286 FFF7FEFF 		bl	__aeabi_fadd
 4900 028a A345     		cmp	fp, r4
 4901 028c 8246     		mov	r10, r0
 4902 028e ECD1     		bne	.L675
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 87


 4903              	.L674:
 4904 0290 059A     		ldr	r2, [sp, #20]
 4905 0292 099C     		ldr	r4, [sp, #36]
 4906 0294 0436     		adds	r6, r6, #4
 4907 0296 2244     		add	r2, r2, r4
 4908 0298 C2F804A0 		str	r10, [r2, #4]	@ float
 4909 029c 119C     		ldr	r4, [sp, #68]
 4910 029e 059A     		ldr	r2, [sp, #20]
 4911 02a0 A642     		cmp	r6, r4
 4912 02a2 02F12802 		add	r2, r2, #40
 4913 02a6 A5F10405 		sub	r5, r5, #4
 4914 02aa 0592     		str	r2, [sp, #20]
 4915 02ac A4D1     		bne	.L670
 4916 02ae 149A     		ldr	r2, [sp, #80]
 4917 02b0 5AB1     		cbz	r2, .L678
 4918 02b2 069A     		ldr	r2, [sp, #24]
 4919 02b4 264C     		ldr	r4, .L753+12
 4920 02b6 531C     		adds	r3, r2, #1
 4921 02b8 2648     		ldr	r0, .L753+16
 4922 02ba 69A9     		add	r1, sp, #420
 4923 02bc FFF7FEFF 		bl	_ZN4Move11PrintMatrixEPKcRK10MathMatrixIfEjj
 4924 02c0 B4F84030 		ldrh	r3, [r4, #64]
 4925 02c4 C3F30013 		ubfx	r3, r3, #4, #1
 4926 02c8 1493     		str	r3, [sp, #80]
 4927              	.L678:
 4928 02ca 0022     		movs	r2, #0
 4929 02cc 2824     		movs	r4, #40
 4930 02ce 0E92     		str	r2, [sp, #56]
 4931 02d0 0792     		str	r2, [sp, #28]
 4932 02d2 69AA     		add	r2, sp, #420
 4933 02d4 2244     		add	r2, r2, r4
 4934 02d6 0D94     		str	r4, [sp, #52]
 4935 02d8 069C     		ldr	r4, [sp, #24]
 4936 02da 6AAB     		add	r3, sp, #424
 4937 02dc 0593     		str	r3, [sp, #20]
 4938 02de 1292     		str	r2, [sp, #72]
 4939 02e0 651C     		adds	r5, r4, #1
 4940 02e2 1B97     		str	r7, [sp, #108]
 4941              	.L698:
 4942 02e4 059A     		ldr	r2, [sp, #20]
 4943 02e6 079B     		ldr	r3, [sp, #28]
 4944 02e8 069C     		ldr	r4, [sp, #24]
 4945 02ea 1768     		ldr	r7, [r2]	@ float
 4946 02ec 03F10108 		add	r8, r3, #1
 4947 02f0 4445     		cmp	r4, r8
 4948 02f2 27F0004B 		bic	fp, r7, #-2147483648
 4949 02f6 47D9     		bls	.L679
 4950 02f8 02F12406 		add	r6, r2, #36
 4951 02fc 043A     		subs	r2, r2, #4
 4952 02fe C246     		mov	r10, r8
 4953 0300 CDF82080 		str	r8, [sp, #32]
 4954 0304 1095     		str	r5, [sp, #64]
 4955 0306 DDF83480 		ldr	r8, [sp, #52]
 4956 030a 1546     		mov	r5, r2
 4957 030c 06E0     		b	.L684
 4958              	.L680:
 4959 030e 069C     		ldr	r4, [sp, #24]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 88


 4960 0310 0AF1010A 		add	r10, r10, #1
 4961 0314 A245     		cmp	r10, r4
 4962 0316 06F12806 		add	r6, r6, #40
 4963 031a 32D0     		beq	.L746
 4964              	.L684:
 4965 031c 7468     		ldr	r4, [r6, #4]	@ float
 4966 031e 5846     		mov	r0, fp
 4967 0320 24F00049 		bic	r9, r4, #-2147483648
 4968 0324 4946     		mov	r1, r9
 4969 0326 FFF7FEFF 		bl	__aeabi_fcmplt
 4970 032a 0028     		cmp	r0, #0
 4971 032c EFD0     		beq	.L680
 4972 032e 079A     		ldr	r2, [sp, #28]
 4973 0330 5245     		cmp	r2, r10
 4974 0332 00F08C80 		beq	.L722
 4975 0336 06F1040B 		add	fp, r6, #4
 4976 033a DDF814E0 		ldr	lr, [sp, #20]
 4977 033e 0023     		movs	r3, #0
 4978 0340 0EE0     		b	.L683
 4979              	.L754:
 4980 0342 00BF     		.align	2
 4981              	.L753:
 4982 0344 08000000 		.word	_ZTV11FixedMatrixIfLj32ELj9EE+8
 4983 0348 C8030000 		.word	.LC34
 4984 034c 08000000 		.word	_ZTV11FixedMatrixIfLj9ELj10EE+8
 4985 0350 00000000 		.word	reprap
 4986 0354 DC030000 		.word	.LC35
 4987              	.L747:
 4988 0358 5EF8047F 		ldr	r7, [lr, #4]!	@ float
 4989 035c 5BF8044F 		ldr	r4, [fp, #4]!	@ float
 4990              	.L683:
 4991 0360 E918     		adds	r1, r5, r3
 4992 0362 F218     		adds	r2, r6, r3
 4993 0364 0433     		adds	r3, r3, #4
 4994 0366 9845     		cmp	r8, r3
 4995 0368 4C60     		str	r4, [r1, #4]	@ float
 4996 036a 5760     		str	r7, [r2, #4]	@ float
 4997 036c F4D1     		bne	.L747
 4998 036e 069C     		ldr	r4, [sp, #24]
 4999 0370 059B     		ldr	r3, [sp, #20]
 5000 0372 0AF1010A 		add	r10, r10, #1
 5001 0376 A245     		cmp	r10, r4
 5002 0378 CB46     		mov	fp, r9
 5003 037a 1F68     		ldr	r7, [r3]	@ float
 5004 037c 06F12806 		add	r6, r6, #40
 5005 0380 CCD1     		bne	.L684
 5006              	.L746:
 5007 0382 DDF82080 		ldr	r8, [sp, #32]
 5008 0386 109D     		ldr	r5, [sp, #64]
 5009              	.L679:
 5010 0388 0E9A     		ldr	r2, [sp, #56]
 5011 038a 6AB3     		cbz	r2, .L690
 5012 038c 129A     		ldr	r2, [sp, #72]
 5013 038e 0D9B     		ldr	r3, [sp, #52]
 5014 0390 4FF00009 		mov	r9, #0
 5015 0394 C3EB020A 		rsb	r10, r3, r2
 5016 0398 0897     		str	r7, [sp, #32]	@ float
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 89


 5017              	.L693:
 5018 039a DAF80400 		ldr	r0, [r10, #4]	@ float
 5019 039e 0899     		ldr	r1, [sp, #32]	@ float
 5020 03a0 FFF7FEFF 		bl	__aeabi_fdiv
 5021 03a4 0024     		movs	r4, #0
 5022 03a6 CAF80440 		str	r4, [r10, #4]	@ float
 5023 03aa 069C     		ldr	r4, [sp, #24]
 5024 03ac 0646     		mov	r6, r0
 5025 03ae 4445     		cmp	r4, r8
 5026 03b0 12D3     		bcc	.L691
 5027 03b2 059F     		ldr	r7, [sp, #20]
 5028 03b4 0AF10404 		add	r4, r10, #4
 5029 03b8 C346     		mov	fp, r8
 5030              	.L692:
 5031 03ba 57F8041F 		ldr	r1, [r7, #4]!	@ float
 5032 03be 3046     		mov	r0, r6
 5033 03c0 FFF7FEFF 		bl	__aeabi_fmul
 5034 03c4 0146     		mov	r1, r0
 5035 03c6 6068     		ldr	r0, [r4, #4]	@ float
 5036 03c8 FFF7FEFF 		bl	__aeabi_fsub
 5037 03cc 0BF1010B 		add	fp, fp, #1
 5038 03d0 AB45     		cmp	fp, r5
 5039 03d2 44F8040F 		str	r0, [r4, #4]!	@ float
 5040 03d6 F0D1     		bne	.L692
 5041              	.L691:
 5042 03d8 079A     		ldr	r2, [sp, #28]
 5043 03da 09F10109 		add	r9, r9, #1
 5044 03de 9145     		cmp	r9, r2
 5045 03e0 0AF1280A 		add	r10, r10, #40
 5046 03e4 D9D1     		bne	.L693
 5047 03e6 089F     		ldr	r7, [sp, #32]	@ float
 5048              	.L690:
 5049 03e8 069C     		ldr	r4, [sp, #24]
 5050 03ea A045     		cmp	r8, r4
 5051 03ec 31D0     		beq	.L748
 5052 03ee DDF814A0 		ldr	r10, [sp, #20]
 5053 03f2 C146     		mov	r9, r8
 5054 03f4 0797     		str	r7, [sp, #28]	@ float
 5055              	.L697:
 5056 03f6 DAF82800 		ldr	r0, [r10, #40]	@ float
 5057 03fa 0799     		ldr	r1, [sp, #28]	@ float
 5058 03fc FFF7FEFF 		bl	__aeabi_fdiv
 5059 0400 0023     		movs	r3, #0
 5060 0402 4AF8283F 		str	r3, [r10, #40]!	@ float
 5061 0406 059F     		ldr	r7, [sp, #20]
 5062 0408 0646     		mov	r6, r0
 5063 040a 5446     		mov	r4, r10
 5064 040c C346     		mov	fp, r8
 5065              	.L695:
 5066 040e 57F8041F 		ldr	r1, [r7, #4]!	@ float
 5067 0412 3046     		mov	r0, r6
 5068 0414 FFF7FEFF 		bl	__aeabi_fmul
 5069 0418 0146     		mov	r1, r0
 5070 041a 6068     		ldr	r0, [r4, #4]	@ float
 5071 041c FFF7FEFF 		bl	__aeabi_fsub
 5072 0420 0BF1010B 		add	fp, fp, #1
 5073 0424 AB45     		cmp	fp, r5
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 90


 5074 0426 44F8040F 		str	r0, [r4, #4]!	@ float
 5075 042a F0D1     		bne	.L695
 5076 042c 069C     		ldr	r4, [sp, #24]
 5077 042e 09F10109 		add	r9, r9, #1
 5078 0432 A145     		cmp	r9, r4
 5079 0434 DFD1     		bne	.L697
 5080 0436 0E9A     		ldr	r2, [sp, #56]
 5081 0438 059B     		ldr	r3, [sp, #20]
 5082 043a 0D9C     		ldr	r4, [sp, #52]
 5083 043c 0132     		adds	r2, r2, #1
 5084 043e 2C33     		adds	r3, r3, #44
 5085 0440 043C     		subs	r4, r4, #4
 5086 0442 0E92     		str	r2, [sp, #56]
 5087 0444 0593     		str	r3, [sp, #20]
 5088 0446 0D94     		str	r4, [sp, #52]
 5089 0448 CDF81C80 		str	r8, [sp, #28]
 5090 044c 4AE7     		b	.L698
 5091              	.L722:
 5092 044e CB46     		mov	fp, r9
 5093 0450 5DE7     		b	.L680
 5094              	.L748:
 5095 0452 0025     		movs	r5, #0
 5096 0454 1B9F     		ldr	r7, [sp, #108]
 5097 0456 DDF85C80 		ldr	r8, [sp, #92]
 5098 045a DDF86890 		ldr	r9, [sp, #104]
 5099 045e 2C46     		mov	r4, r5
 5100 0460 1FAE     		add	r6, sp, #124
 5101              	.L700:
 5102 0462 69AB     		add	r3, sp, #420
 5103 0464 08EB0402 		add	r2, r8, r4
 5104 0468 2B44     		add	r3, r3, r5
 5105 046a 5068     		ldr	r0, [r2, #4]	@ float
 5106 046c 5968     		ldr	r1, [r3, #4]	@ float
 5107 046e FFF7FEFF 		bl	__aeabi_fdiv
 5108 0472 2834     		adds	r4, r4, #40
 5109 0474 4C45     		cmp	r4, r9
 5110 0476 46F8040F 		str	r0, [r6, #4]!	@ float
 5111 047a 05F12C05 		add	r5, r5, #44
 5112 047e F0D1     		bne	.L700
 5113 0480 149A     		ldr	r2, [sp, #80]
 5114 0482 002A     		cmp	r2, #0
 5115 0484 40F09280 		bne	.L749
 5116              	.L701:
 5117 0488 0C98     		ldr	r0, [sp, #48]
 5118 048a 20A9     		add	r1, sp, #128
 5119 048c 069A     		ldr	r2, [sp, #24]
 5120 048e FFF7FEFF 		bl	_ZN4Move21AdjustDeltaParametersEPKfj
 5121 0492 4FF00009 		mov	r9, #0
 5122 0496 002F     		cmp	r7, #0
 5123 0498 45D0     		beq	.L708
 5124 049a DDF830E0 		ldr	lr, [sp, #48]
 5125 049e 0024     		movs	r4, #0
 5126 04a0 0EF2344E 		addw	lr, lr, #1076
 5127 04a4 49A9     		add	r1, sp, #292
 5128 04a6 4FF00009 		mov	r9, #0
 5129 04aa A046     		mov	r8, r4
 5130 04ac CDF820E0 		str	lr, [sp, #32]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 91


 5131 04b0 C4AD     		add	r5, sp, #784
 5132 04b2 0591     		str	r1, [sp, #20]
 5133 04b4 0DF1740A 		add	r10, sp, #116
 5134 04b8 22AE     		add	r6, sp, #136
 5135 04ba 0797     		str	r7, [sp, #28]
 5136              	.L710:
 5137 04bc 1FAF     		add	r7, sp, #124
 5138 04be 05F1040B 		add	fp, r5, #4
 5139              	.L715:
 5140 04c2 DBF80000 		ldr	r0, [fp]	@ float
 5141 04c6 57F8041F 		ldr	r1, [r7, #4]!	@ float
 5142 04ca FFF7FEFF 		bl	__aeabi_fadd
 5143 04ce B742     		cmp	r7, r6
 5144 04d0 4BF8040B 		str	r0, [fp], #4	@ float
 5145 04d4 F5D1     		bne	.L715
 5146 04d6 6968     		ldr	r1, [r5, #4]	@ float
 5147 04d8 AA68     		ldr	r2, [r5, #8]	@ float
 5148 04da 0898     		ldr	r0, [sp, #32]
 5149 04dc 55F80C3F 		ldr	r3, [r5, #12]!	@ float
 5150 04e0 CDF800A0 		str	r10, [sp]
 5151 04e4 FFF7FEFF 		bl	_ZNK15DeltaParameters16InverseTransformEfffPf
 5152 04e8 0C9A     		ldr	r2, [sp, #48]
 5153 04ea DAF80830 		ldr	r3, [r10, #8]	@ float
 5154 04ee DDF82CE0 		ldr	lr, [sp, #44]
 5155 04f2 2244     		add	r2, r2, r4
 5156 04f4 4EF80430 		str	r3, [lr, r4]	@ float
 5157 04f8 1846     		mov	r0, r3
 5158 04fa D2F87811 		ldr	r1, [r2, #376]	@ float
 5159 04fe FFF7FEFF 		bl	__aeabi_fadd
 5160 0502 059A     		ldr	r2, [sp, #20]
 5161 0504 0146     		mov	r1, r0
 5162 0506 1051     		str	r0, [r2, r4]	@ float
 5163 0508 FFF7FEFF 		bl	__aeabi_fmul
 5164 050c 0146     		mov	r1, r0
 5165 050e 4846     		mov	r0, r9
 5166 0510 FFF7FEFF 		bl	__aeabi_fadd
 5167 0514 079B     		ldr	r3, [sp, #28]
 5168 0516 08F10108 		add	r8, r8, #1
 5169 051a 9845     		cmp	r8, r3
 5170 051c 8146     		mov	r9, r0
 5171 051e 04F10404 		add	r4, r4, #4
 5172 0522 CBD1     		bne	.L710
 5173 0524 1F46     		mov	r7, r3
 5174              	.L708:
 5175 0526 3846     		mov	r0, r7
 5176 0528 FFF7FEFF 		bl	__aeabi_ui2f
 5177 052c 0446     		mov	r4, r0
 5178 052e 2146     		mov	r1, r4
 5179 0530 4846     		mov	r0, r9
 5180 0532 FFF7FEFF 		bl	__aeabi_fdiv
 5181 0536 FFF7FEFF 		bl	__aeabi_f2d
 5182 053a FFF7FEFF 		bl	sqrt
 5183 053e DFF850E1 		ldr	lr, .L755+4
 5184 0542 8046     		mov	r8, r0
 5185 0544 BEF84030 		ldrh	r3, [lr, #64]
 5186 0548 8946     		mov	r9, r1
 5187 054a DA06     		lsls	r2, r3, #27
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 92


 5188 054c 04D5     		bpl	.L711
 5189 054e 4F48     		ldr	r0, .L755
 5190 0550 49A9     		add	r1, sp, #292
 5191 0552 3A46     		mov	r2, r7
 5192 0554 FFF7FEFF 		bl	_ZN4Move11PrintVectorEPKcPKfj
 5193              	.L711:
 5194 0558 1599     		ldr	r1, [sp, #84]
 5195 055a 0139     		subs	r1, r1, #1
 5196 055c 1591     		str	r1, [sp, #84]
 5197 055e 7FF4E3AD 		bne	.L713
 5198 0562 4B4A     		ldr	r2, .L755+4
 5199 0564 3B46     		mov	r3, r7
 5200 0566 4F46     		mov	r7, r9
 5201 0568 9946     		mov	r9, r3
 5202 056a B2F84030 		ldrh	r3, [r2, #64]
 5203 056e 4646     		mov	r6, r8
 5204 0570 DB06     		lsls	r3, r3, #27
 5205 0572 62D4     		bmi	.L750
 5206              	.L714:
 5207 0574 1398     		ldr	r0, [sp, #76]	@ float
 5208 0576 2146     		mov	r1, r4
 5209 0578 FFF7FEFF 		bl	__aeabi_fdiv
 5210 057c FFF7FEFF 		bl	__aeabi_f2d
 5211 0580 FFF7FEFF 		bl	sqrt
 5212 0584 CDE90001 		strd	r0, [sp]
 5213 0588 3946     		mov	r1, r7
 5214 058a 3046     		mov	r0, r6
 5215 058c FFF7FEFF 		bl	__aeabi_d2f
 5216 0590 FFF7FEFF 		bl	__aeabi_f2d
 5217 0594 069A     		ldr	r2, [sp, #24]
 5218 0596 CDE90201 		strd	r0, [sp, #8]
 5219 059a 4B46     		mov	r3, r9
 5220 059c 1898     		ldr	r0, [sp, #96]
 5221 059e 3D49     		ldr	r1, .L755+8
 5222 05a0 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5223 05a4 0DF61C1D 		addw	sp, sp, #2332
 5224              		@ sp needed
 5225 05a8 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 5226              	.L749:
 5227 05ac 069A     		ldr	r2, [sp, #24]
 5228 05ae 3A48     		ldr	r0, .L755+12
 5229 05b0 69A9     		add	r1, sp, #420
 5230 05b2 531C     		adds	r3, r2, #1
 5231 05b4 FFF7FEFF 		bl	_ZN4Move11PrintMatrixEPKcRK10MathMatrixIfEjj
 5232 05b8 3848     		ldr	r0, .L755+16
 5233 05ba 20A9     		add	r1, sp, #128
 5234 05bc 069A     		ldr	r2, [sp, #24]
 5235 05be FFF7FEFF 		bl	_ZN4Move11PrintVectorEPKcPKfj
 5236 05c2 002F     		cmp	r7, #0
 5237 05c4 5FD0     		beq	.L751
 5238 05c6 0DF5927E 		add	lr, sp, #292
 5239 05ca 0A9C     		ldr	r4, [sp, #40]
 5240 05cc DDF85890 		ldr	r9, [sp, #88]
 5241 05d0 DDF82480 		ldr	r8, [sp, #36]
 5242 05d4 DDF830A0 		ldr	r10, [sp, #48]
 5243 05d8 0025     		movs	r5, #0
 5244 05da CDF814E0 		str	lr, [sp, #20]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 93


 5245 05de 0797     		str	r7, [sp, #28]
 5246 05e0 F346     		mov	fp, lr
 5247              	.L706:
 5248 05e2 0AEB0503 		add	r3, r10, r5
 5249 05e6 D3F87871 		ldr	r7, [r3, #376]	@ float
 5250 05ea 0026     		movs	r6, #0
 5251              	.L704:
 5252 05ec A319     		adds	r3, r4, r6
 5253 05ee 20AA     		add	r2, sp, #128
 5254 05f0 5968     		ldr	r1, [r3, #4]	@ float
 5255 05f2 9059     		ldr	r0, [r2, r6]	@ float
 5256 05f4 FFF7FEFF 		bl	__aeabi_fmul
 5257 05f8 0146     		mov	r1, r0
 5258 05fa 3846     		mov	r0, r7
 5259 05fc FFF7FEFF 		bl	__aeabi_fadd
 5260 0600 0436     		adds	r6, r6, #4
 5261 0602 B045     		cmp	r8, r6
 5262 0604 0746     		mov	r7, r0
 5263 0606 F1D1     		bne	.L704
 5264 0608 4BF80500 		str	r0, [fp, r5]	@ float
 5265 060c 0435     		adds	r5, r5, #4
 5266 060e 4D45     		cmp	r5, r9
 5267 0610 04F12404 		add	r4, r4, #36
 5268 0614 E5D1     		bne	.L706
 5269 0616 079F     		ldr	r7, [sp, #28]
 5270              	.L705:
 5271 0618 0599     		ldr	r1, [sp, #20]
 5272 061a 2148     		ldr	r0, .L755+20
 5273 061c 3A46     		mov	r2, r7
 5274 061e FFF7FEFF 		bl	_ZN4Move11PrintVectorEPKcPKfj
 5275 0622 31E7     		b	.L701
 5276              	.L657:
 5277 0624 1A4A     		ldr	r2, .L755+4
 5278 0626 069B     		ldr	r3, [sp, #24]
 5279 0628 1068     		ldr	r0, [r2]
 5280 062a 0621     		movs	r1, #6
 5281 062c 1D4A     		ldr	r2, .L755+24
 5282 062e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 5283 0632 0DF61C1D 		addw	sp, sp, #2332
 5284              		@ sp needed
 5285 0636 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 5286              	.L750:
 5287 063a 1B4D     		ldr	r5, .L755+28
 5288 063c 0C9B     		ldr	r3, [sp, #48]
 5289 063e 2946     		mov	r1, r5
 5290 0640 03F23440 		addw	r0, r3, #1076
 5291 0644 FFF7FEFF 		bl	_ZNK15DeltaParameters15PrintParametersER9StringRef
 5292 0648 2968     		ldr	r1, [r5]
 5293 064a 1848     		ldr	r0, .L755+32
 5294 064c FFF7FEFF 		bl	debugPrintf
 5295 0650 90E7     		b	.L714
 5296              	.L744:
 5297 0652 154C     		ldr	r4, .L755+28
 5298 0654 0C99     		ldr	r1, [sp, #48]
 5299 0656 01F23440 		addw	r0, r1, #1076
 5300 065a 2146     		mov	r1, r4
 5301 065c FFF7FEFF 		bl	_ZNK15DeltaParameters15PrintParametersER9StringRef
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 94


 5302 0660 2168     		ldr	r1, [r4]
 5303 0662 1248     		ldr	r0, .L755+32
 5304 0664 0024     		movs	r4, #0
 5305 0666 FFF7FEFF 		bl	debugPrintf
 5306 066a 1394     		str	r4, [sp, #76]	@ float
 5307 066c B9F1000F 		cmp	r9, #0
 5308 0670 7FF4F3AC 		bne	.L752
 5309              	.L719:
 5310 0674 29AC     		add	r4, sp, #164
 5311 0676 0B94     		str	r4, [sp, #44]
 5312 0678 0DF29444 		addw	r4, sp, #1172
 5313 067c 0A94     		str	r4, [sp, #40]
 5314 067e 0DF59364 		add	r4, sp, #1176
 5315 0682 0F94     		str	r4, [sp, #60]
 5316 0684 36E5     		b	.L661
 5317              	.L751:
 5318 0686 49AC     		add	r4, sp, #292
 5319 0688 0594     		str	r4, [sp, #20]
 5320 068a C5E7     		b	.L705
 5321              	.L756:
 5322              		.align	2
 5323              	.L755:
 5324 068c 14040000 		.word	.LC39
 5325 0690 00000000 		.word	reprap
 5326 0694 2C040000 		.word	.LC40
 5327 0698 EC030000 		.word	.LC36
 5328 069c FC030000 		.word	.LC37
 5329 06a0 08040000 		.word	.LC38
 5330 06a4 70030000 		.word	.LC33
 5331 06a8 00000000 		.word	scratchString
 5332 06ac BC000000 		.word	.LC7
 5333              		.size	_ZN4Move18DoDeltaCalibrationEjR9StringRef, .-_ZN4Move18DoDeltaCalibrationEjR9StringRef
 5334              		.section	.text._ZN4Move18FinishedBedProbingEiR9StringRef,"ax",%progbits
 5335              		.align	2
 5336              		.global	_ZN4Move18FinishedBedProbingEiR9StringRef
 5337              		.thumb
 5338              		.thumb_func
 5339              		.type	_ZN4Move18FinishedBedProbingEiR9StringRef, %function
 5340              	_ZN4Move18FinishedBedProbingEiR9StringRef:
 5341              		@ args = 0, pretend = 0, frame = 8
 5342              		@ frame_needed = 0, uses_anonymous_args = 0
 5343 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 5344 0004 85B0     		sub	sp, sp, #20
 5345 0006 0746     		mov	r7, r0
 5346 0008 0391     		str	r1, [sp, #12]
 5347 000a 9046     		mov	r8, r2
 5348 000c 0026     		movs	r6, #0
 5349 000e 02E0     		b	.L759
 5350              	.L796:
 5351 0010 0136     		adds	r6, r6, #1
 5352 0012 202E     		cmp	r6, #32
 5353 0014 06D0     		beq	.L758
 5354              	.L759:
 5355 0016 BB19     		adds	r3, r7, r6
 5356 0018 93F89833 		ldrb	r3, [r3, #920]	@ zero_extendqisi2
 5357 001c 03F00703 		and	r3, r3, #7
 5358 0020 072B     		cmp	r3, #7
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 95


 5359 0022 F5D0     		beq	.L796
 5360              	.L758:
 5361 0024 039A     		ldr	r2, [sp, #12]
 5362 0026 002A     		cmp	r2, #0
 5363 0028 C0F29B80 		blt	.L797
 5364 002c 039B     		ldr	r3, [sp, #12]
 5365 002e B342     		cmp	r3, r6
 5366 0030 804B     		ldr	r3, .L801
 5367 0032 40DC     		bgt	.L798
 5368 0034 B3F84030 		ldrh	r3, [r3, #64]
 5369 0038 DB06     		lsls	r3, r3, #27
 5370 003a 46D4     		bmi	.L799
 5371              	.L768:
 5372 003c 039A     		ldr	r2, [sp, #12]
 5373 003e 07F56674 		add	r4, r7, #920
 5374 0042 002A     		cmp	r2, #0
 5375 0044 08BF     		it	eq
 5376 0046 3246     		moveq	r2, r6
 5377 0048 0392     		str	r2, [sp, #12]
 5378 004a A6B1     		cbz	r6, .L772
 5379 004c 97F89833 		ldrb	r3, [r7, #920]	@ zero_extendqisi2
 5380 0050 07F56674 		add	r4, r7, #920
 5381 0054 03F01703 		and	r3, r3, #23
 5382 0058 072B     		cmp	r3, #7
 5383 005a 27D1     		bne	.L773
 5384 005c 07F29732 		addw	r2, r7, #919
 5385 0060 2346     		mov	r3, r4
 5386 0062 1644     		add	r6, r6, r2
 5387 0064 05E0     		b	.L774
 5388              	.L775:
 5389 0066 13F8011F 		ldrb	r1, [r3, #1]!	@ zero_extendqisi2
 5390 006a 01F01701 		and	r1, r1, #23
 5391 006e 0729     		cmp	r1, #7
 5392 0070 1CD1     		bne	.L773
 5393              	.L774:
 5394 0072 B342     		cmp	r3, r6
 5395 0074 F7D1     		bne	.L775
 5396              	.L772:
 5397 0076 97F86C34 		ldrb	r3, [r7, #1132]	@ zero_extendqisi2
 5398 007a 8BB9     		cbnz	r3, .L777
 5399 007c 3846     		mov	r0, r7
 5400 007e 0399     		ldr	r1, [sp, #12]
 5401 0080 4246     		mov	r2, r8
 5402 0082 FFF7FEFF 		bl	_ZN4Move20SetProbedBedEquationEjR9StringRef
 5403              	.L767:
 5404 0086 2246     		mov	r2, r4
 5405 0088 0023     		movs	r3, #0
 5406              	.L765:
 5407 008a 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 5408 008c 0133     		adds	r3, r3, #1
 5409 008e 21F00401 		bic	r1, r1, #4
 5410 0092 202B     		cmp	r3, #32
 5411 0094 02F8011B 		strb	r1, [r2], #1
 5412 0098 F7D1     		bne	.L765
 5413 009a 05B0     		add	sp, sp, #20
 5414              		@ sp needed
 5415 009c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 96


 5416              	.L777:
 5417 00a0 3846     		mov	r0, r7
 5418 00a2 0399     		ldr	r1, [sp, #12]
 5419 00a4 4246     		mov	r2, r8
 5420 00a6 FFF7FEFF 		bl	_ZN4Move18DoDeltaCalibrationEjR9StringRef
 5421 00aa ECE7     		b	.L767
 5422              	.L773:
 5423 00ac 4046     		mov	r0, r8
 5424 00ae 6249     		ldr	r1, .L801+4
 5425 00b0 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 5426 00b4 E7E7     		b	.L767
 5427              	.L798:
 5428 00b6 0096     		str	r6, [sp]
 5429 00b8 1868     		ldr	r0, [r3]
 5430 00ba 0621     		movs	r1, #6
 5431 00bc 039B     		ldr	r3, [sp, #12]
 5432 00be 5F4A     		ldr	r2, .L801+8
 5433 00c0 07F56674 		add	r4, r7, #920
 5434 00c4 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 5435 00c8 DDE7     		b	.L767
 5436              	.L799:
 5437 00ca 5D48     		ldr	r0, .L801+12
 5438 00cc FFF7FEFF 		bl	debugPrintf
 5439 00d0 4FF0000A 		mov	r10, #0
 5440 00d4 002E     		cmp	r6, #0
 5441 00d6 00F0A980 		beq	.L782
 5442 00da 07F5BC75 		add	r5, r7, #376
 5443 00de D346     		mov	fp, r10
 5444 00e0 0024     		movs	r4, #0
 5445              	.L770:
 5446 00e2 2868     		ldr	r0, [r5]	@ float
 5447 00e4 FFF7FEFF 		bl	__aeabi_f2d
 5448 00e8 0246     		mov	r2, r0
 5449 00ea 0B46     		mov	r3, r1
 5450 00ec 5548     		ldr	r0, .L801+16
 5451 00ee FFF7FEFF 		bl	debugPrintf
 5452 00f2 55F8049B 		ldr	r9, [r5], #4	@ float
 5453 00f6 5846     		mov	r0, fp
 5454 00f8 4946     		mov	r1, r9
 5455 00fa FFF7FEFF 		bl	__aeabi_fadd
 5456 00fe 4946     		mov	r1, r9
 5457 0100 8346     		mov	fp, r0
 5458 0102 4846     		mov	r0, r9
 5459 0104 FFF7FEFF 		bl	__aeabi_fmul
 5460 0108 0146     		mov	r1, r0
 5461 010a 5046     		mov	r0, r10
 5462 010c FFF7FEFF 		bl	__aeabi_fadd
 5463 0110 0134     		adds	r4, r4, #1
 5464 0112 B442     		cmp	r4, r6
 5465 0114 8246     		mov	r10, r0
 5466 0116 E4D1     		bne	.L770
 5467              	.L769:
 5468 0118 3046     		mov	r0, r6
 5469 011a FFF7FEFF 		bl	__aeabi_i2f
 5470 011e 0446     		mov	r4, r0
 5471 0120 2146     		mov	r1, r4
 5472 0122 5846     		mov	r0, fp
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 97


 5473 0124 FFF7FEFF 		bl	__aeabi_fdiv
 5474 0128 8346     		mov	fp, r0
 5475 012a 5946     		mov	r1, fp
 5476 012c FFF7FEFF 		bl	__aeabi_fmul
 5477 0130 2146     		mov	r1, r4
 5478 0132 0546     		mov	r5, r0
 5479 0134 5046     		mov	r0, r10
 5480 0136 FFF7FEFF 		bl	__aeabi_fdiv
 5481 013a 2946     		mov	r1, r5
 5482 013c FFF7FEFF 		bl	__aeabi_fsub
 5483 0140 FFF7FEFF 		bl	__aeabi_f2d
 5484 0144 FFF7FEFF 		bl	sqrt
 5485 0148 0446     		mov	r4, r0
 5486 014a 5846     		mov	r0, fp
 5487 014c 0D46     		mov	r5, r1
 5488 014e FFF7FEFF 		bl	__aeabi_f2d
 5489 0152 CDE90045 		strd	r4, [sp]
 5490 0156 0246     		mov	r2, r0
 5491 0158 0B46     		mov	r3, r1
 5492 015a 3B48     		ldr	r0, .L801+20
 5493 015c FFF7FEFF 		bl	debugPrintf
 5494 0160 6CE7     		b	.L768
 5495              	.L797:
 5496 0162 4046     		mov	r0, r8
 5497 0164 3949     		ldr	r1, .L801+24
 5498 0166 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 5499 016a 4FF0000A 		mov	r10, #0
 5500 016e 002E     		cmp	r6, #0
 5501 0170 5ED0     		beq	.L781
 5502 0172 07F29734 		addw	r4, r7, #919
 5503 0176 D346     		mov	fp, r10
 5504 0178 04EB0609 		add	r9, r4, r6
 5505 017c 3D46     		mov	r5, r7
 5506 017e 06E0     		b	.L764
 5507              	.L800:
 5508 0180 3349     		ldr	r1, .L801+28
 5509 0182 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 5510 0186 4C45     		cmp	r4, r9
 5511 0188 05F10405 		add	r5, r5, #4
 5512 018c 26D0     		beq	.L761
 5513              	.L764:
 5514 018e 14F8013F 		ldrb	r3, [r4, #1]!	@ zero_extendqisi2
 5515 0192 4046     		mov	r0, r8
 5516 0194 03F01703 		and	r3, r3, #23
 5517 0198 072B     		cmp	r3, #7
 5518 019a F1D1     		bne	.L800
 5519 019c D5F87801 		ldr	r0, [r5, #376]	@ float
 5520 01a0 FFF7FEFF 		bl	__aeabi_f2d
 5521 01a4 0246     		mov	r2, r0
 5522 01a6 0B46     		mov	r3, r1
 5523 01a8 4046     		mov	r0, r8
 5524 01aa 2649     		ldr	r1, .L801+16
 5525 01ac FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 5526 01b0 D5F87831 		ldr	r3, [r5, #376]	@ float
 5527 01b4 5846     		mov	r0, fp
 5528 01b6 1946     		mov	r1, r3
 5529 01b8 0293     		str	r3, [sp, #8]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 98


 5530 01ba FFF7FEFF 		bl	__aeabi_fadd
 5531 01be 029B     		ldr	r3, [sp, #8]
 5532 01c0 8346     		mov	fp, r0
 5533 01c2 1946     		mov	r1, r3
 5534 01c4 1846     		mov	r0, r3
 5535 01c6 FFF7FEFF 		bl	__aeabi_fmul
 5536 01ca 0146     		mov	r1, r0
 5537 01cc 5046     		mov	r0, r10
 5538 01ce FFF7FEFF 		bl	__aeabi_fadd
 5539 01d2 4C45     		cmp	r4, r9
 5540 01d4 8246     		mov	r10, r0
 5541 01d6 05F10405 		add	r5, r5, #4
 5542 01da D8D1     		bne	.L764
 5543              	.L761:
 5544 01dc 3046     		mov	r0, r6
 5545 01de FFF7FEFF 		bl	__aeabi_i2f
 5546 01e2 0446     		mov	r4, r0
 5547 01e4 2146     		mov	r1, r4
 5548 01e6 5846     		mov	r0, fp
 5549 01e8 FFF7FEFF 		bl	__aeabi_fdiv
 5550 01ec 0646     		mov	r6, r0
 5551 01ee 3146     		mov	r1, r6
 5552 01f0 FFF7FEFF 		bl	__aeabi_fmul
 5553 01f4 2146     		mov	r1, r4
 5554 01f6 0546     		mov	r5, r0
 5555 01f8 5046     		mov	r0, r10
 5556 01fa FFF7FEFF 		bl	__aeabi_fdiv
 5557 01fe 2946     		mov	r1, r5
 5558 0200 FFF7FEFF 		bl	__aeabi_fsub
 5559 0204 FFF7FEFF 		bl	__aeabi_f2d
 5560 0208 FFF7FEFF 		bl	sqrt
 5561 020c 0446     		mov	r4, r0
 5562 020e 3046     		mov	r0, r6
 5563 0210 0D46     		mov	r5, r1
 5564 0212 FFF7FEFF 		bl	__aeabi_f2d
 5565 0216 CDE90045 		strd	r4, [sp]
 5566 021a 0246     		mov	r2, r0
 5567 021c 0B46     		mov	r3, r1
 5568 021e 4046     		mov	r0, r8
 5569 0220 0C49     		ldr	r1, .L801+32
 5570 0222 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 5571 0226 07F56674 		add	r4, r7, #920
 5572 022a 2CE7     		b	.L767
 5573              	.L782:
 5574 022c D346     		mov	fp, r10
 5575 022e 73E7     		b	.L769
 5576              	.L781:
 5577 0230 D346     		mov	fp, r10
 5578 0232 D3E7     		b	.L761
 5579              	.L802:
 5580              		.align	2
 5581              	.L801:
 5582 0234 00000000 		.word	reprap
 5583 0238 38050000 		.word	.LC46
 5584 023c A8040000 		.word	.LC43
 5585 0240 FC040000 		.word	.LC44
 5586 0244 E0000000 		.word	.LC10
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 99


 5587 0248 10050000 		.word	.LC45
 5588 024c CC000000 		.word	.LC9
 5589 0250 78040000 		.word	.LC41
 5590 0254 80040000 		.word	.LC42
 5591              		.size	_ZN4Move18FinishedBedProbingEiR9StringRef, .-_ZN4Move18FinishedBedProbingEiR9StringRef
 5592              		.weak	_ZTV10MathMatrixIfE
 5593              		.section	.rodata._ZTV10MathMatrixIfE,"aG",%progbits,_ZTV10MathMatrixIfE,comdat
 5594              		.align	3
 5595              		.type	_ZTV10MathMatrixIfE, %object
 5596              		.size	_ZTV10MathMatrixIfE, 32
 5597              	_ZTV10MathMatrixIfE:
 5598 0000 00000000 		.word	0
 5599 0004 00000000 		.word	0
 5600 0008 00000000 		.word	__cxa_pure_virtual
 5601 000c 00000000 		.word	__cxa_pure_virtual
 5602 0010 00000000 		.word	__cxa_pure_virtual
 5603 0014 00000000 		.word	__cxa_pure_virtual
 5604 0018 00000000 		.word	_ZN10MathMatrixIfED1Ev
 5605 001c 00000000 		.word	_ZN10MathMatrixIfED0Ev
 5606              		.weak	_ZTV11FixedMatrixIfLj32ELj3EE
 5607              		.section	.rodata._ZTV11FixedMatrixIfLj32ELj3EE,"aG",%progbits,_ZTV11FixedMatrixIfLj32ELj3EE,comdat
 5608              		.align	3
 5609              		.type	_ZTV11FixedMatrixIfLj32ELj3EE, %object
 5610              		.size	_ZTV11FixedMatrixIfLj32ELj3EE, 32
 5611              	_ZTV11FixedMatrixIfLj32ELj3EE:
 5612 0000 00000000 		.word	0
 5613 0004 00000000 		.word	0
 5614 0008 00000000 		.word	_ZNK11FixedMatrixIfLj32ELj3EE4rowsEv
 5615 000c 00000000 		.word	_ZNK11FixedMatrixIfLj32ELj3EE4colsEv
 5616 0010 00000000 		.word	_ZN11FixedMatrixIfLj32ELj3EEclEjj
 5617 0014 00000000 		.word	_ZNK11FixedMatrixIfLj32ELj3EEclEjj
 5618 0018 00000000 		.word	_ZN11FixedMatrixIfLj32ELj3EED1Ev
 5619 001c 00000000 		.word	_ZN11FixedMatrixIfLj32ELj3EED0Ev
 5620              		.weak	_ZTV11FixedMatrixIfLj32ELj9EE
 5621              		.section	.rodata._ZTV11FixedMatrixIfLj32ELj9EE,"aG",%progbits,_ZTV11FixedMatrixIfLj32ELj9EE,comdat
 5622              		.align	3
 5623              		.type	_ZTV11FixedMatrixIfLj32ELj9EE, %object
 5624              		.size	_ZTV11FixedMatrixIfLj32ELj9EE, 32
 5625              	_ZTV11FixedMatrixIfLj32ELj9EE:
 5626 0000 00000000 		.word	0
 5627 0004 00000000 		.word	0
 5628 0008 00000000 		.word	_ZNK11FixedMatrixIfLj32ELj9EE4rowsEv
 5629 000c 00000000 		.word	_ZNK11FixedMatrixIfLj32ELj9EE4colsEv
 5630 0010 00000000 		.word	_ZN11FixedMatrixIfLj32ELj9EEclEjj
 5631 0014 00000000 		.word	_ZNK11FixedMatrixIfLj32ELj9EEclEjj
 5632 0018 00000000 		.word	_ZN11FixedMatrixIfLj32ELj9EED1Ev
 5633 001c 00000000 		.word	_ZN11FixedMatrixIfLj32ELj9EED0Ev
 5634              		.weak	_ZTV11FixedMatrixIfLj9ELj10EE
 5635              		.section	.rodata._ZTV11FixedMatrixIfLj9ELj10EE,"aG",%progbits,_ZTV11FixedMatrixIfLj9ELj10EE,comdat
 5636              		.align	3
 5637              		.type	_ZTV11FixedMatrixIfLj9ELj10EE, %object
 5638              		.size	_ZTV11FixedMatrixIfLj9ELj10EE, 32
 5639              	_ZTV11FixedMatrixIfLj9ELj10EE:
 5640 0000 00000000 		.word	0
 5641 0004 00000000 		.word	0
 5642 0008 00000000 		.word	_ZNK11FixedMatrixIfLj9ELj10EE4rowsEv
 5643 000c 00000000 		.word	_ZNK11FixedMatrixIfLj9ELj10EE4colsEv
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 100


 5644 0010 00000000 		.word	_ZN11FixedMatrixIfLj9ELj10EEclEjj
 5645 0014 00000000 		.word	_ZNK11FixedMatrixIfLj9ELj10EEclEjj
 5646 0018 00000000 		.word	_ZN11FixedMatrixIfLj9ELj10EED1Ev
 5647 001c 00000000 		.word	_ZN11FixedMatrixIfLj9ELj10EED0Ev
 5648              		.global	maxReps
 5649              		.section	.rodata.str1.4,"aMS",%progbits,1
 5650              		.align	2
 5651              	.LC0:
 5652 0000 4D6F7665 		.ascii	"Move class exited.\012\000"
 5652      20636C61 
 5652      73732065 
 5652      78697465 
 5652      642E0A00 
 5653              	.LC1:
 5654 0014 6D657368 		.ascii	"mesh\000"
 5654      00
 5655 0019 000000   		.space	3
 5656              	.LC2:
 5657 001c 6E6F6E65 		.ascii	"none\000"
 5657      00
 5658 0021 000000   		.space	3
 5659              	.LC3:
 5660 0024 3D3D3D20 		.ascii	"=== Move ===\012\000"
 5660      4D6F7665 
 5660      203D3D3D 
 5660      0A00
 5661 0032 0000     		.space	2
 5662              	.LC4:
 5663 0034 4D617852 		.ascii	"MaxReps: %u, StepErrors: %u, MaxWait: %ums, Underru"
 5663      6570733A 
 5663      2025752C 
 5663      20537465 
 5663      70457272 
 5664 0067 6E733A20 		.ascii	"ns: %u, %u\012\000"
 5664      25752C20 
 5664      25750A00 
 5665 0073 00       		.space	1
 5666              	.LC5:
 5667 0074 53636865 		.ascii	"Scheduled moves: %u, completed moves: %u\012\000"
 5667      64756C65 
 5667      64206D6F 
 5667      7665733A 
 5667      2025752C 
 5668 009e 0000     		.space	2
 5669              	.LC6:
 5670 00a0 42656420 		.ascii	"Bed compensation in use: \000"
 5670      636F6D70 
 5670      656E7361 
 5670      74696F6E 
 5670      20696E20 
 5671 00ba 0000     		.space	2
 5672              	.LC7:
 5673 00bc 25730A00 		.ascii	"%s\012\000"
 5674              	.LC8:
 5675 00c0 25642070 		.ascii	"%d point\012\000"
 5675      6F696E74 
 5675      0A00
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 101


 5676 00ca 0000     		.space	2
 5677              	.LC9:
 5678 00cc 42656420 		.ascii	"Bed probe heights:\000"
 5678      70726F62 
 5678      65206865 
 5678      69676874 
 5678      733A00
 5679 00df 00       		.space	1
 5680              	.LC10:
 5681 00e0 20252E33 		.ascii	" %.3f\000"
 5681      6600
 5682 00e6 0000     		.space	2
 5683              	.LC11:
 5684 00e8 0A00     		.ascii	"\012\000"
 5685 00ea 0000     		.space	2
 5686              	.LC12:
 5687 00ec 53657450 		.ascii	"SetPositions called when DDA ring not empty\012\000"
 5687      6F736974 
 5687      696F6E73 
 5687      2063616C 
 5687      6C656420 
 5688 0119 000000   		.space	3
 5689              	.LC13:
 5690 011c 5472616E 		.ascii	"Transformed %f %f %f to %d %d %d\012\000"
 5690      73666F72 
 5690      6D656420 
 5690      25662025 
 5690      66202566 
 5691 013e 0000     		.space	2
 5692              	.LC14:
 5693 0140 41786973 		.ascii	"Axis compensation requested for non-existent axis.\012"
 5693      20636F6D 
 5693      70656E73 
 5693      6174696F 
 5693      6E207265 
 5694 0173 00       		.ascii	"\000"
 5695              	.LC15:
 5696 0174 53657441 		.ascii	"SetAxisCompensation: dud axis.\012\000"
 5696      78697343 
 5696      6F6D7065 
 5696      6E736174 
 5696      696F6E3A 
 5697              	.LC16:
 5698 0194 54726961 		.ascii	"Triangle interpolation: point outside all triangles"
 5698      6E676C65 
 5698      20696E74 
 5698      6572706F 
 5698      6C617469 
 5699 01c7 210A00   		.ascii	"!\012\000"
 5700 01ca 0000     		.space	2
 5701              	.LC17:
 5702 01cc 4572726F 		.ascii	"Error: probe points P0 to P%u must be in clockwise "
 5702      723A2070 
 5702      726F6265 
 5702      20706F69 
 5702      6E747320 
 5703 01ff 6F726465 		.ascii	"order starting near X=0 Y=0\000"
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 102


 5703      72207374 
 5703      61727469 
 5703      6E67206E 
 5703      65617220 
 5704 021b 00       		.space	1
 5705              	.LC18:
 5706 021c 20616E64 		.ascii	" and P4 must be near the centre\000"
 5706      20503420 
 5706      6D757374 
 5706      20626520 
 5706      6E656172 
 5707              	.LC19:
 5708 023c 42656420 		.ascii	"Bed calibration error: %d points provided but only "
 5708      63616C69 
 5708      62726174 
 5708      696F6E20 
 5708      6572726F 
 5709 026f 332C2034 		.ascii	"3, 4 and 5 supported\012\000"
 5709      20616E64 
 5709      20352073 
 5709      7570706F 
 5709      72746564 
 5710 0285 000000   		.space	3
 5711              	.LC20:
 5712 0288 205B252E 		.ascii	" [%.1f, %.1f, %.3f]\000"
 5712      31662C20 
 5712      252E3166 
 5712      2C20252E 
 5712      33665D00 
 5713              	.LC21:
 5714 029c 42656420 		.ascii	"Bed equation fits points\000"
 5714      65717561 
 5714      74696F6E 
 5714      20666974 
 5714      7320706F 
 5715 02b5 000000   		.space	3
 5716              	.LC22:
 5717 02b8 5A207072 		.ascii	"Z probe point X index out of range.\012\000"
 5717      6F626520 
 5717      706F696E 
 5717      74205820 
 5717      696E6465 
 5718 02dd 000000   		.space	3
 5719              	.LC23:
 5720 02e0 5A207072 		.ascii	"Z probe point Y index out of range.\012\000"
 5720      6F626520 
 5720      706F696E 
 5720      74205920 
 5720      696E6465 
 5721 0305 000000   		.space	3
 5722              	.LC24:
 5723 0308 5A207072 		.ascii	"Z probe point Z index out of range.\012\000"
 5723      6F626520 
 5723      706F696E 
 5723      74205A20 
 5723      696E6465 
 5724 032d 000000   		.space	3
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 103


 5725              	.LC25:
 5726 0330 64656C74 		.ascii	"delta\000"
 5726      6100
 5727 0336 0000     		.space	2
 5728              	.LC26:
 5729 0338 636F7265 		.ascii	"coreXY\000"
 5729      585900
 5730 033f 00       		.space	1
 5731              	.LC27:
 5732 0340 636F7265 		.ascii	"coreXZ\000"
 5732      585A00
 5733 0347 00       		.space	1
 5734              	.LC28:
 5735 0348 63617274 		.ascii	"cartesian\000"
 5735      65736961 
 5735      6E00
 5736 0352 0000     		.space	2
 5737              	.LC29:
 5738 0354 636F7265 		.ascii	"coreYZ\000"
 5738      595A00
 5739 035b 00       		.space	1
 5740              	.LC30:
 5741 035c 25372E34 		.ascii	"%7.4f%c\000"
 5741      66256300 
 5742              	.LC31:
 5743 0364 25733A00 		.ascii	"%s:\000"
 5744              	.LC32:
 5745 0368 2025372E 		.ascii	" %7.4f\000"
 5745      346600
 5746 036f 00       		.space	1
 5747              	.LC33:
 5748 0370 44656C74 		.ascii	"Delta calibration error: %d factors requested but o"
 5748      61206361 
 5748      6C696272 
 5748      6174696F 
 5748      6E206572 
 5749 03a3 6E6C7920 		.ascii	"nly 3, 4, 6, 7, 8 and 9 supported\012\000"
 5749      332C2034 
 5749      2C20362C 
 5749      20372C20 
 5749      3820616E 
 5750 03c6 0000     		.space	2
 5751              	.LC34:
 5752 03c8 44657269 		.ascii	"Derivative matrix\000"
 5752      76617469 
 5752      7665206D 
 5752      61747269 
 5752      7800
 5753 03da 0000     		.space	2
 5754              	.LC35:
 5755 03dc 4E6F726D 		.ascii	"Normal matrix\000"
 5755      616C206D 
 5755      61747269 
 5755      7800
 5756 03ea 0000     		.space	2
 5757              	.LC36:
 5758 03ec 536F6C76 		.ascii	"Solved matrix\000"
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 104


 5758      6564206D 
 5758      61747269 
 5758      7800
 5759 03fa 0000     		.space	2
 5760              	.LC37:
 5761 03fc 536F6C75 		.ascii	"Solution\000"
 5761      74696F6E 
 5761      00
 5762 0405 000000   		.space	3
 5763              	.LC38:
 5764 0408 52657369 		.ascii	"Residuals\000"
 5764      6475616C 
 5764      7300
 5765 0412 0000     		.space	2
 5766              	.LC39:
 5767 0414 45787065 		.ascii	"Expected probe error\000"
 5767      63746564 
 5767      2070726F 
 5767      62652065 
 5767      72726F72 
 5768 0429 000000   		.space	3
 5769              	.LC40:
 5770 042c 43616C69 		.ascii	"Calibrated %d factors using %d points, deviation be"
 5770      62726174 
 5770      65642025 
 5770      64206661 
 5770      63746F72 
 5771 045f 666F7265 		.ascii	"fore %.3f after %.3f\012\000"
 5771      20252E33 
 5771      66206166 
 5771      74657220 
 5771      252E3366 
 5772 0475 000000   		.space	3
 5773              	.LC41:
 5774 0478 20666169 		.ascii	" failed\000"
 5774      6C656400 
 5775              	.LC42:
 5776 0480 2C206D65 		.ascii	", mean %.3f, deviation from mean %.3f\000"
 5776      616E2025 
 5776      2E33662C 
 5776      20646576 
 5776      69617469 
 5777 04a6 0000     		.space	2
 5778              	.LC43:
 5779 04a8 42656420 		.ascii	"Bed calibration error: %d factor calibration reques"
 5779      63616C69 
 5779      62726174 
 5779      696F6E20 
 5779      6572726F 
 5780 04db 74656420 		.ascii	"ted but only %d points provided\012\000"
 5780      62757420 
 5780      6F6E6C79 
 5780      20256420 
 5780      706F696E 
 5781              	.LC44:
 5782 04fc 5A207072 		.ascii	"Z probe offsets:\000"
 5782      6F626520 
ARM GAS  C:\Users\George\AppData\Local\Temp\ccUWHfOb.s 			page 105


 5782      6F666673 
 5782      6574733A 
 5782      00
 5783 050d 000000   		.space	3
 5784              	.LC45:
 5785 0510 2C206D65 		.ascii	", mean %.3f, deviation from mean %.3f\012\000"
 5785      616E2025 
 5785      2E33662C 
 5785      20646576 
 5785      69617469 
 5786 0537 00       		.space	1
 5787              	.LC46:
 5788 0538 436F6D70 		.ascii	"Compensation or calibration cancelled due to probin"
 5788      656E7361 
 5788      74696F6E 
 5788      206F7220 
 5788      63616C69 
 5789 056b 67206572 		.ascii	"g errors\000"
 5789      726F7273 
 5789      00
 5790              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 5791              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 5792              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 5793              	_ZL28cpu_irq_prev_interrupt_state:
 5794 0000 00       		.space	1
 5795              		.section	.bss.maxReps,"aw",%nobits
 5796              		.align	2
 5797              		.set	.LANCHOR0,. + 0
 5798              		.type	maxReps, %object
 5799              		.size	maxReps, 4
 5800              	maxReps:
 5801 0000 00000000 		.space	4
 5802              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 5803              		.align	2
 5804              		.type	_ZL32cpu_irq_critical_section_counter, %object
 5805              		.size	_ZL32cpu_irq_critical_section_counter, 4
 5806              	_ZL32cpu_irq_critical_section_counter:
 5807 0000 00000000 		.space	4
 5808              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
