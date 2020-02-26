ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 1


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
  15              		.file	"Move.cpp"
  16              		.section	.text._ZN10MathMatrixIdED2Ev,"axG",%progbits,_ZN10MathMatrixIdED5Ev,comdat
  17              		.align	2
  18              		.weak	_ZN10MathMatrixIdED2Ev
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN10MathMatrixIdED2Ev, %function
  22              	_ZN10MathMatrixIdED2Ev:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 014B     		ldr	r3, .L2
  27 0002 0360     		str	r3, [r0]
  28 0004 7047     		bx	lr
  29              	.L3:
  30 0006 00BF     		.align	2
  31              	.L2:
  32 0008 08000000 		.word	_ZTV10MathMatrixIdE+8
  33              		.size	_ZN10MathMatrixIdED2Ev, .-_ZN10MathMatrixIdED2Ev
  34              		.weak	_ZN10MathMatrixIdED1Ev
  35              		.thumb_set _ZN10MathMatrixIdED1Ev,_ZN10MathMatrixIdED2Ev
  36              		.section	.text._ZN11FixedMatrixIdLj64ELj3EEclEjj,"axG",%progbits,_ZN11FixedMatrixIdLj64ELj3EEclEjj
  37              		.align	2
  38              		.weak	_ZN11FixedMatrixIdLj64ELj3EEclEjj
  39              		.thumb
  40              		.thumb_func
  41              		.type	_ZN11FixedMatrixIdLj64ELj3EEclEjj, %function
  42              	_ZN11FixedMatrixIdLj64ELj3EEclEjj:
  43              		@ args = 0, pretend = 0, frame = 0
  44              		@ frame_needed = 0, uses_anonymous_args = 0
  45              		@ link register save eliminated.
  46 0000 01EB4101 		add	r1, r1, r1, lsl #1
  47 0004 0A44     		add	r2, r2, r1
  48 0006 511C     		adds	r1, r2, #1
  49 0008 00EBC100 		add	r0, r0, r1, lsl #3
  50 000c 7047     		bx	lr
  51              		.size	_ZN11FixedMatrixIdLj64ELj3EEclEjj, .-_ZN11FixedMatrixIdLj64ELj3EEclEjj
  52 000e 00BF     		.section	.text._ZN11FixedMatrixIdLj64ELj9EEclEjj,"axG",%progbits,_ZN11FixedMatrixIdLj64ELj9EEclEjj
  53              		.align	2
  54              		.weak	_ZN11FixedMatrixIdLj64ELj9EEclEjj
  55              		.thumb
  56              		.thumb_func
  57              		.type	_ZN11FixedMatrixIdLj64ELj9EEclEjj, %function
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 2


  58              	_ZN11FixedMatrixIdLj64ELj9EEclEjj:
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 0, uses_anonymous_args = 0
  61              		@ link register save eliminated.
  62 0000 01EBC101 		add	r1, r1, r1, lsl #3
  63 0004 0A44     		add	r2, r2, r1
  64 0006 511C     		adds	r1, r2, #1
  65 0008 00EBC100 		add	r0, r0, r1, lsl #3
  66 000c 7047     		bx	lr
  67              		.size	_ZN11FixedMatrixIdLj64ELj9EEclEjj, .-_ZN11FixedMatrixIdLj64ELj9EEclEjj
  68 000e 00BF     		.section	.text._ZN11FixedMatrixIdLj9ELj10EEclEjj,"axG",%progbits,_ZN11FixedMatrixIdLj9ELj10EEclEjj
  69              		.align	2
  70              		.weak	_ZN11FixedMatrixIdLj9ELj10EEclEjj
  71              		.thumb
  72              		.thumb_func
  73              		.type	_ZN11FixedMatrixIdLj9ELj10EEclEjj, %function
  74              	_ZN11FixedMatrixIdLj9ELj10EEclEjj:
  75              		@ args = 0, pretend = 0, frame = 0
  76              		@ frame_needed = 0, uses_anonymous_args = 0
  77              		@ link register save eliminated.
  78 0000 01EB8101 		add	r1, r1, r1, lsl #2
  79 0004 02EB4102 		add	r2, r2, r1, lsl #1
  80 0008 511C     		adds	r1, r2, #1
  81 000a 00EBC100 		add	r0, r0, r1, lsl #3
  82 000e 7047     		bx	lr
  83              		.size	_ZN11FixedMatrixIdLj9ELj10EEclEjj, .-_ZN11FixedMatrixIdLj9ELj10EEclEjj
  84              		.section	.text._ZN11FixedMatrixIdLj9ELj10EED2Ev,"axG",%progbits,_ZN11FixedMatrixIdLj9ELj10EED5Ev,c
  85              		.align	2
  86              		.weak	_ZN11FixedMatrixIdLj9ELj10EED2Ev
  87              		.thumb
  88              		.thumb_func
  89              		.type	_ZN11FixedMatrixIdLj9ELj10EED2Ev, %function
  90              	_ZN11FixedMatrixIdLj9ELj10EED2Ev:
  91              		@ args = 0, pretend = 0, frame = 0
  92              		@ frame_needed = 0, uses_anonymous_args = 0
  93              		@ link register save eliminated.
  94 0000 014B     		ldr	r3, .L8
  95 0002 0360     		str	r3, [r0]
  96 0004 7047     		bx	lr
  97              	.L9:
  98 0006 00BF     		.align	2
  99              	.L8:
 100 0008 08000000 		.word	_ZTV10MathMatrixIdE+8
 101              		.size	_ZN11FixedMatrixIdLj9ELj10EED2Ev, .-_ZN11FixedMatrixIdLj9ELj10EED2Ev
 102              		.weak	_ZN11FixedMatrixIdLj9ELj10EED1Ev
 103              		.thumb_set _ZN11FixedMatrixIdLj9ELj10EED1Ev,_ZN11FixedMatrixIdLj9ELj10EED2Ev
 104              		.section	.text._ZN11FixedMatrixIdLj64ELj9EED2Ev,"axG",%progbits,_ZN11FixedMatrixIdLj64ELj9EED5Ev,c
 105              		.align	2
 106              		.weak	_ZN11FixedMatrixIdLj64ELj9EED2Ev
 107              		.thumb
 108              		.thumb_func
 109              		.type	_ZN11FixedMatrixIdLj64ELj9EED2Ev, %function
 110              	_ZN11FixedMatrixIdLj64ELj9EED2Ev:
 111              		@ args = 0, pretend = 0, frame = 0
 112              		@ frame_needed = 0, uses_anonymous_args = 0
 113              		@ link register save eliminated.
 114 0000 014B     		ldr	r3, .L11
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 3


 115 0002 0360     		str	r3, [r0]
 116 0004 7047     		bx	lr
 117              	.L12:
 118 0006 00BF     		.align	2
 119              	.L11:
 120 0008 08000000 		.word	_ZTV10MathMatrixIdE+8
 121              		.size	_ZN11FixedMatrixIdLj64ELj9EED2Ev, .-_ZN11FixedMatrixIdLj64ELj9EED2Ev
 122              		.weak	_ZN11FixedMatrixIdLj64ELj9EED1Ev
 123              		.thumb_set _ZN11FixedMatrixIdLj64ELj9EED1Ev,_ZN11FixedMatrixIdLj64ELj9EED2Ev
 124              		.section	.text._ZN11FixedMatrixIdLj64ELj3EED2Ev,"axG",%progbits,_ZN11FixedMatrixIdLj64ELj3EED5Ev,c
 125              		.align	2
 126              		.weak	_ZN11FixedMatrixIdLj64ELj3EED2Ev
 127              		.thumb
 128              		.thumb_func
 129              		.type	_ZN11FixedMatrixIdLj64ELj3EED2Ev, %function
 130              	_ZN11FixedMatrixIdLj64ELj3EED2Ev:
 131              		@ args = 0, pretend = 0, frame = 0
 132              		@ frame_needed = 0, uses_anonymous_args = 0
 133              		@ link register save eliminated.
 134 0000 014B     		ldr	r3, .L14
 135 0002 0360     		str	r3, [r0]
 136 0004 7047     		bx	lr
 137              	.L15:
 138 0006 00BF     		.align	2
 139              	.L14:
 140 0008 08000000 		.word	_ZTV10MathMatrixIdE+8
 141              		.size	_ZN11FixedMatrixIdLj64ELj3EED2Ev, .-_ZN11FixedMatrixIdLj64ELj3EED2Ev
 142              		.weak	_ZN11FixedMatrixIdLj64ELj3EED1Ev
 143              		.thumb_set _ZN11FixedMatrixIdLj64ELj3EED1Ev,_ZN11FixedMatrixIdLj64ELj3EED2Ev
 144              		.section	.text._ZNK11FixedMatrixIdLj9ELj10EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj9ELj10EE4
 145              		.align	2
 146              		.weak	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv
 147              		.thumb
 148              		.thumb_func
 149              		.type	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv, %function
 150              	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv:
 151              		@ args = 0, pretend = 0, frame = 0
 152              		@ frame_needed = 0, uses_anonymous_args = 0
 153              		@ link register save eliminated.
 154 0000 0920     		movs	r0, #9
 155 0002 7047     		bx	lr
 156              		.size	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv, .-_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv
 157              		.section	.text._ZNK11FixedMatrixIdLj9ELj10EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj9ELj10EE4
 158              		.align	2
 159              		.weak	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv
 160              		.thumb
 161              		.thumb_func
 162              		.type	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv, %function
 163              	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv:
 164              		@ args = 0, pretend = 0, frame = 0
 165              		@ frame_needed = 0, uses_anonymous_args = 0
 166              		@ link register save eliminated.
 167 0000 0A20     		movs	r0, #10
 168 0002 7047     		bx	lr
 169              		.size	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv, .-_ZNK11FixedMatrixIdLj9ELj10EE4colsEv
 170              		.section	.text._ZNK11FixedMatrixIdLj9ELj10EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIdLj9ELj10EEclE
 171              		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 4


 172              		.weak	_ZNK11FixedMatrixIdLj9ELj10EEclEjj
 173              		.thumb
 174              		.thumb_func
 175              		.type	_ZNK11FixedMatrixIdLj9ELj10EEclEjj, %function
 176              	_ZNK11FixedMatrixIdLj9ELj10EEclEjj:
 177              		@ args = 0, pretend = 0, frame = 0
 178              		@ frame_needed = 0, uses_anonymous_args = 0
 179              		@ link register save eliminated.
 180 0000 01EB8101 		add	r1, r1, r1, lsl #2
 181 0004 02EB4102 		add	r2, r2, r1, lsl #1
 182 0008 511C     		adds	r1, r2, #1
 183 000a 00EBC100 		add	r0, r0, r1, lsl #3
 184 000e 7047     		bx	lr
 185              		.size	_ZNK11FixedMatrixIdLj9ELj10EEclEjj, .-_ZNK11FixedMatrixIdLj9ELj10EEclEjj
 186              		.section	.text._ZNK11FixedMatrixIdLj64ELj9EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj64ELj9EE4
 187              		.align	2
 188              		.weak	_ZNK11FixedMatrixIdLj64ELj9EE4rowsEv
 189              		.thumb
 190              		.thumb_func
 191              		.type	_ZNK11FixedMatrixIdLj64ELj9EE4rowsEv, %function
 192              	_ZNK11FixedMatrixIdLj64ELj9EE4rowsEv:
 193              		@ args = 0, pretend = 0, frame = 0
 194              		@ frame_needed = 0, uses_anonymous_args = 0
 195              		@ link register save eliminated.
 196 0000 4020     		movs	r0, #64
 197 0002 7047     		bx	lr
 198              		.size	_ZNK11FixedMatrixIdLj64ELj9EE4rowsEv, .-_ZNK11FixedMatrixIdLj64ELj9EE4rowsEv
 199              		.section	.text._ZNK11FixedMatrixIdLj64ELj9EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj64ELj9EE4
 200              		.align	2
 201              		.weak	_ZNK11FixedMatrixIdLj64ELj9EE4colsEv
 202              		.thumb
 203              		.thumb_func
 204              		.type	_ZNK11FixedMatrixIdLj64ELj9EE4colsEv, %function
 205              	_ZNK11FixedMatrixIdLj64ELj9EE4colsEv:
 206              		@ args = 0, pretend = 0, frame = 0
 207              		@ frame_needed = 0, uses_anonymous_args = 0
 208              		@ link register save eliminated.
 209 0000 0920     		movs	r0, #9
 210 0002 7047     		bx	lr
 211              		.size	_ZNK11FixedMatrixIdLj64ELj9EE4colsEv, .-_ZNK11FixedMatrixIdLj64ELj9EE4colsEv
 212              		.section	.text._ZNK11FixedMatrixIdLj64ELj9EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIdLj64ELj9EEclE
 213              		.align	2
 214              		.weak	_ZNK11FixedMatrixIdLj64ELj9EEclEjj
 215              		.thumb
 216              		.thumb_func
 217              		.type	_ZNK11FixedMatrixIdLj64ELj9EEclEjj, %function
 218              	_ZNK11FixedMatrixIdLj64ELj9EEclEjj:
 219              		@ args = 0, pretend = 0, frame = 0
 220              		@ frame_needed = 0, uses_anonymous_args = 0
 221              		@ link register save eliminated.
 222 0000 01EBC101 		add	r1, r1, r1, lsl #3
 223 0004 0A44     		add	r2, r2, r1
 224 0006 511C     		adds	r1, r2, #1
 225 0008 00EBC100 		add	r0, r0, r1, lsl #3
 226 000c 7047     		bx	lr
 227              		.size	_ZNK11FixedMatrixIdLj64ELj9EEclEjj, .-_ZNK11FixedMatrixIdLj64ELj9EEclEjj
 228 000e 00BF     		.section	.text._ZNK11FixedMatrixIdLj64ELj3EE4rowsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj64ELj3EE4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 5


 229              		.align	2
 230              		.weak	_ZNK11FixedMatrixIdLj64ELj3EE4rowsEv
 231              		.thumb
 232              		.thumb_func
 233              		.type	_ZNK11FixedMatrixIdLj64ELj3EE4rowsEv, %function
 234              	_ZNK11FixedMatrixIdLj64ELj3EE4rowsEv:
 235              		@ args = 0, pretend = 0, frame = 0
 236              		@ frame_needed = 0, uses_anonymous_args = 0
 237              		@ link register save eliminated.
 238 0000 4020     		movs	r0, #64
 239 0002 7047     		bx	lr
 240              		.size	_ZNK11FixedMatrixIdLj64ELj3EE4rowsEv, .-_ZNK11FixedMatrixIdLj64ELj3EE4rowsEv
 241              		.section	.text._ZNK11FixedMatrixIdLj64ELj3EE4colsEv,"axG",%progbits,_ZNK11FixedMatrixIdLj64ELj3EE4
 242              		.align	2
 243              		.weak	_ZNK11FixedMatrixIdLj64ELj3EE4colsEv
 244              		.thumb
 245              		.thumb_func
 246              		.type	_ZNK11FixedMatrixIdLj64ELj3EE4colsEv, %function
 247              	_ZNK11FixedMatrixIdLj64ELj3EE4colsEv:
 248              		@ args = 0, pretend = 0, frame = 0
 249              		@ frame_needed = 0, uses_anonymous_args = 0
 250              		@ link register save eliminated.
 251 0000 0320     		movs	r0, #3
 252 0002 7047     		bx	lr
 253              		.size	_ZNK11FixedMatrixIdLj64ELj3EE4colsEv, .-_ZNK11FixedMatrixIdLj64ELj3EE4colsEv
 254              		.section	.text._ZNK11FixedMatrixIdLj64ELj3EEclEjj,"axG",%progbits,_ZNK11FixedMatrixIdLj64ELj3EEclE
 255              		.align	2
 256              		.weak	_ZNK11FixedMatrixIdLj64ELj3EEclEjj
 257              		.thumb
 258              		.thumb_func
 259              		.type	_ZNK11FixedMatrixIdLj64ELj3EEclEjj, %function
 260              	_ZNK11FixedMatrixIdLj64ELj3EEclEjj:
 261              		@ args = 0, pretend = 0, frame = 0
 262              		@ frame_needed = 0, uses_anonymous_args = 0
 263              		@ link register save eliminated.
 264 0000 01EB4101 		add	r1, r1, r1, lsl #1
 265 0004 0A44     		add	r2, r2, r1
 266 0006 511C     		adds	r1, r2, #1
 267 0008 00EBC100 		add	r0, r0, r1, lsl #3
 268 000c 7047     		bx	lr
 269              		.size	_ZNK11FixedMatrixIdLj64ELj3EEclEjj, .-_ZNK11FixedMatrixIdLj64ELj3EEclEjj
 270 000e 00BF     		.section	.text._ZN10MathMatrixIdED0Ev,"axG",%progbits,_ZN10MathMatrixIdED0Ev,comdat
 271              		.align	2
 272              		.weak	_ZN10MathMatrixIdED0Ev
 273              		.thumb
 274              		.thumb_func
 275              		.type	_ZN10MathMatrixIdED0Ev, %function
 276              	_ZN10MathMatrixIdED0Ev:
 277              		@ args = 0, pretend = 0, frame = 0
 278              		@ frame_needed = 0, uses_anonymous_args = 0
 279 0000 10B5     		push	{r4, lr}
 280 0002 034B     		ldr	r3, .L26
 281 0004 0360     		str	r3, [r0]
 282 0006 0446     		mov	r4, r0
 283 0008 FFF7FEFF 		bl	_ZdlPv
 284 000c 2046     		mov	r0, r4
 285 000e 10BD     		pop	{r4, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 6


 286              	.L27:
 287              		.align	2
 288              	.L26:
 289 0010 08000000 		.word	_ZTV10MathMatrixIdE+8
 290              		.size	_ZN10MathMatrixIdED0Ev, .-_ZN10MathMatrixIdED0Ev
 291              		.section	.text._ZN11FixedMatrixIdLj9ELj10EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj9ELj10EED0Ev,c
 292              		.align	2
 293              		.weak	_ZN11FixedMatrixIdLj9ELj10EED0Ev
 294              		.thumb
 295              		.thumb_func
 296              		.type	_ZN11FixedMatrixIdLj9ELj10EED0Ev, %function
 297              	_ZN11FixedMatrixIdLj9ELj10EED0Ev:
 298              		@ args = 0, pretend = 0, frame = 0
 299              		@ frame_needed = 0, uses_anonymous_args = 0
 300 0000 10B5     		push	{r4, lr}
 301 0002 034B     		ldr	r3, .L29
 302 0004 0360     		str	r3, [r0]
 303 0006 0446     		mov	r4, r0
 304 0008 FFF7FEFF 		bl	_ZdlPv
 305 000c 2046     		mov	r0, r4
 306 000e 10BD     		pop	{r4, pc}
 307              	.L30:
 308              		.align	2
 309              	.L29:
 310 0010 08000000 		.word	_ZTV10MathMatrixIdE+8
 311              		.size	_ZN11FixedMatrixIdLj9ELj10EED0Ev, .-_ZN11FixedMatrixIdLj9ELj10EED0Ev
 312              		.section	.text._ZN11FixedMatrixIdLj64ELj9EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj64ELj9EED0Ev,c
 313              		.align	2
 314              		.weak	_ZN11FixedMatrixIdLj64ELj9EED0Ev
 315              		.thumb
 316              		.thumb_func
 317              		.type	_ZN11FixedMatrixIdLj64ELj9EED0Ev, %function
 318              	_ZN11FixedMatrixIdLj64ELj9EED0Ev:
 319              		@ args = 0, pretend = 0, frame = 0
 320              		@ frame_needed = 0, uses_anonymous_args = 0
 321 0000 10B5     		push	{r4, lr}
 322 0002 034B     		ldr	r3, .L32
 323 0004 0360     		str	r3, [r0]
 324 0006 0446     		mov	r4, r0
 325 0008 FFF7FEFF 		bl	_ZdlPv
 326 000c 2046     		mov	r0, r4
 327 000e 10BD     		pop	{r4, pc}
 328              	.L33:
 329              		.align	2
 330              	.L32:
 331 0010 08000000 		.word	_ZTV10MathMatrixIdE+8
 332              		.size	_ZN11FixedMatrixIdLj64ELj9EED0Ev, .-_ZN11FixedMatrixIdLj64ELj9EED0Ev
 333              		.section	.text._ZN11FixedMatrixIdLj64ELj3EED0Ev,"axG",%progbits,_ZN11FixedMatrixIdLj64ELj3EED0Ev,c
 334              		.align	2
 335              		.weak	_ZN11FixedMatrixIdLj64ELj3EED0Ev
 336              		.thumb
 337              		.thumb_func
 338              		.type	_ZN11FixedMatrixIdLj64ELj3EED0Ev, %function
 339              	_ZN11FixedMatrixIdLj64ELj3EED0Ev:
 340              		@ args = 0, pretend = 0, frame = 0
 341              		@ frame_needed = 0, uses_anonymous_args = 0
 342 0000 10B5     		push	{r4, lr}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 7


 343 0002 034B     		ldr	r3, .L35
 344 0004 0360     		str	r3, [r0]
 345 0006 0446     		mov	r4, r0
 346 0008 FFF7FEFF 		bl	_ZdlPv
 347 000c 2046     		mov	r0, r4
 348 000e 10BD     		pop	{r4, pc}
 349              	.L36:
 350              		.align	2
 351              	.L35:
 352 0010 08000000 		.word	_ZTV10MathMatrixIdE+8
 353              		.size	_ZN11FixedMatrixIdLj64ELj3EED0Ev, .-_ZN11FixedMatrixIdLj64ELj3EED0Ev
 354              		.section	.text._ZN4MoveC2EP8PlatformP6GCodes,"ax",%progbits
 355              		.align	2
 356              		.global	_ZN4MoveC2EP8PlatformP6GCodes
 357              		.thumb
 358              		.thumb_func
 359              		.type	_ZN4MoveC2EP8PlatformP6GCodes, %function
 360              	_ZN4MoveC2EP8PlatformP6GCodes:
 361              		@ args = 0, pretend = 0, frame = 0
 362              		@ frame_needed = 0, uses_anonymous_args = 0
 363 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 364 0002 0746     		mov	r7, r0
 365 0004 0025     		movs	r5, #0
 366 0006 07F52071 		add	r1, r7, #640
 367 000a 0560     		str	r5, [r0]
 368 000c 00F52160 		add	r0, r0, #2576
 369 0010 FFF7FEFF 		bl	_ZN9HeightMapC1EPf
 370 0014 07F68420 		addw	r0, r7, #2692
 371 0018 134A     		ldr	r2, .L42
 372 001a 144B     		ldr	r3, .L42+4
 373 001c 0260     		str	r2, [r0]	@ float
 374 001e 4360     		str	r3, [r0, #4]	@ float
 375 0020 FFF7FEFF 		bl	_ZN15DeltaParameters4InitEv
 376 0024 C7F8505C 		str	r5, [r7, #3152]
 377 0028 C7F8545C 		str	r5, [r7, #3156]
 378 002c 3D74     		strb	r5, [r7, #16]
 379 002e 4FF47870 		mov	r0, #992
 380 0032 FFF7FEFF 		bl	_Znwj
 381 0036 2946     		mov	r1, r5
 382 0038 0446     		mov	r4, r0
 383 003a 1D26     		movs	r6, #29
 384 003c FFF7FEFF 		bl	_ZN3DDAC1EPS_
 385 0040 7C60     		str	r4, [r7, #4]
 386 0042 BC60     		str	r4, [r7, #8]
 387 0044 00E0     		b	.L39
 388              	.L41:
 389 0046 2C46     		mov	r4, r5
 390              	.L39:
 391 0048 4FF47870 		mov	r0, #992
 392 004c FFF7FEFF 		bl	_Znwj
 393 0050 2146     		mov	r1, r4
 394 0052 0546     		mov	r5, r0
 395 0054 FFF7FEFF 		bl	_ZN3DDAC1EPS_
 396 0058 013E     		subs	r6, r6, #1
 397 005a 6560     		str	r5, [r4, #4]
 398 005c F3D1     		bne	.L41
 399 005e 7B68     		ldr	r3, [r7, #4]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 8


 400 0060 3846     		mov	r0, r7
 401 0062 1D60     		str	r5, [r3]
 402 0064 6B60     		str	r3, [r5, #4]
 403 0066 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 404              	.L43:
 405              		.align	2
 406              	.L42:
 407 0068 35FA8E3C 		.word	1016003125
 408 006c E12E6542 		.word	1113927393
 409              		.size	_ZN4MoveC2EP8PlatformP6GCodes, .-_ZN4MoveC2EP8PlatformP6GCodes
 410              		.global	_ZN4MoveC1EP8PlatformP6GCodes
 411              		.thumb_set _ZN4MoveC1EP8PlatformP6GCodes,_ZN4MoveC2EP8PlatformP6GCodes
 412              		.section	.text._ZN4Move4ExitEv,"ax",%progbits
 413              		.align	2
 414              		.global	_ZN4Move4ExitEv
 415              		.thumb
 416              		.thumb_func
 417              		.type	_ZN4Move4ExitEv, %function
 418              	_ZN4Move4ExitEv:
 419              		@ args = 0, pretend = 0, frame = 0
 420              		@ frame_needed = 0, uses_anonymous_args = 0
 421 0000 10B5     		push	{r4, lr}
 422 0002 054B     		ldr	r3, .L45
 423 0004 054A     		ldr	r2, .L45+4
 424 0006 0446     		mov	r4, r0
 425 0008 0221     		movs	r1, #2
 426 000a 1868     		ldr	r0, [r3]
 427 000c FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 428 0010 0023     		movs	r3, #0
 429 0012 2374     		strb	r3, [r4, #16]
 430 0014 10BD     		pop	{r4, pc}
 431              	.L46:
 432 0016 00BF     		.align	2
 433              	.L45:
 434 0018 00000000 		.word	reprap
 435 001c 00000000 		.word	.LC0
 436              		.size	_ZN4Move4ExitEv, .-_ZN4Move4ExitEv
 437              		.section	.text._ZN4Move12SetPositionsEPKf,"ax",%progbits
 438              		.align	2
 439              		.global	_ZN4Move12SetPositionsEPKf
 440              		.thumb
 441              		.thumb_func
 442              		.type	_ZN4Move12SetPositionsEPKf, %function
 443              	_ZN4Move12SetPositionsEPKf:
 444              		@ args = 0, pretend = 0, frame = 0
 445              		@ frame_needed = 0, uses_anonymous_args = 0
 446              		@ link register save eliminated.
 447 0000 8368     		ldr	r3, [r0, #8]
 448 0002 4268     		ldr	r2, [r0, #4]
 449 0004 9342     		cmp	r3, r2
 450 0006 05D0     		beq	.L49
 451 0008 044B     		ldr	r3, .L50
 452 000a 054A     		ldr	r2, .L50+4
 453 000c 1868     		ldr	r0, [r3]
 454 000e 0621     		movs	r1, #6
 455 0010 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 456              	.L49:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 9


 457 0014 5868     		ldr	r0, [r3, #4]
 458 0016 0A22     		movs	r2, #10
 459 0018 FFF7FEBF 		b	_ZN3DDA12SetPositionsEPKfj
 460              	.L51:
 461              		.align	2
 462              	.L50:
 463 001c 00000000 		.word	reprap
 464 0020 14000000 		.word	.LC1
 465              		.size	_ZN4Move12SetPositionsEPKf, .-_ZN4Move12SetPositionsEPKf
 466              		.section	.text._ZN4Move22MotorEndPointToMachineEjf,"ax",%progbits
 467              		.align	2
 468              		.global	_ZN4Move22MotorEndPointToMachineEjf
 469              		.thumb
 470              		.thumb_func
 471              		.type	_ZN4Move22MotorEndPointToMachineEjf, %function
 472              	_ZN4Move22MotorEndPointToMachineEjf:
 473              		@ args = 0, pretend = 0, frame = 0
 474              		@ frame_needed = 0, uses_anonymous_args = 0
 475 0000 08B5     		push	{r3, lr}
 476 0002 0A4B     		ldr	r3, .L53
 477 0004 1B68     		ldr	r3, [r3]
 478 0006 03EB8000 		add	r0, r3, r0, lsl #2
 479 000a D0ED527A 		flds	s15, [r0, #328]
 480 000e 07EE101A 		fmsr	s14, r1
 481 0012 27EE277A 		fmuls	s14, s14, s15
 482 0016 17EE100A 		fmrs	r0, s14
 483 001a FFF7FEFF 		bl	roundf
 484 001e 07EE900A 		fmsr	s15, r0
 485 0022 FDEEE77A 		ftosizs	s15, s15
 486 0026 17EE900A 		fmrs	r0, s15	@ int
 487 002a 08BD     		pop	{r3, pc}
 488              	.L54:
 489              		.align	2
 490              	.L53:
 491 002c 00000000 		.word	reprap
 492              		.size	_ZN4Move22MotorEndPointToMachineEjf, .-_ZN4Move22MotorEndPointToMachineEjf
 493              		.section	.text._ZNK4Move17MachineToEndPointEPKlPfj,"ax",%progbits
 494              		.align	2
 495              		.global	_ZNK4Move17MachineToEndPointEPKlPfj
 496              		.thumb
 497              		.thumb_func
 498              		.type	_ZNK4Move17MachineToEndPointEPKlPfj, %function
 499              	_ZNK4Move17MachineToEndPointEPKlPfj:
 500              		@ args = 0, pretend = 0, frame = 0
 501              		@ frame_needed = 0, uses_anonymous_args = 0
 502 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 503 0004 8F4C     		ldr	r4, .L69
 504 0006 90F8BCCA 		ldrb	ip, [r0, #2748]	@ zero_extendqisi2
 505 000a 2468     		ldr	r4, [r4]
 506 000c 82B0     		sub	sp, sp, #8
 507 000e 0D46     		mov	r5, r1
 508 0010 1646     		mov	r6, r2
 509 0012 1F46     		mov	r7, r3
 510 0014 04F5A478 		add	r8, r4, #328
 511 0018 BCF1000F 		cmp	ip, #0
 512 001c 42D1     		bne	.L67
 513 001e D0F8303C 		ldr	r3, [r0, #3120]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 10


 514 0022 022B     		cmp	r3, #2
 515 0024 00F0E080 		beq	.L59
 516 0028 032B     		cmp	r3, #3
 517 002a 5FD0     		beq	.L60
 518 002c 012B     		cmp	r3, #1
 519 002e 00F09C80 		beq	.L68
 520 0032 D1ED005A 		flds	s11, [r1]	@ int
 521 0036 D4ED527A 		flds	s15, [r4, #328]
 522 003a 91ED016A 		flds	s12, [r1, #4]	@ int
 523 003e D1ED024A 		flds	s9, [r1, #8]	@ int
 524 0042 B8EEE57A 		fsitos	s14, s11
 525 0046 F8EEC66A 		fsitos	s13, s12
 526 004a C7EE277A 		fdivs	s15, s14, s15
 527 004e B8EEE47A 		fsitos	s14, s9
 528 0052 C2ED007A 		fsts	s15, [r2]
 529 0056 D4ED537A 		flds	s15, [r4, #332]
 530 005a C6EEA77A 		fdivs	s15, s13, s15
 531 005e C2ED017A 		fsts	s15, [r2, #4]
 532 0062 D4ED547A 		flds	s15, [r4, #336]
 533 0066 C7EE277A 		fdivs	s15, s14, s15
 534 006a C2ED027A 		fsts	s15, [r2, #8]
 535              	.L62:
 536 006e 032F     		cmp	r7, #3
 537 0070 15D9     		bls	.L55
 538 0072 05F10801 		add	r1, r5, #8
 539 0076 04F5AA70 		add	r0, r4, #340
 540 007a 06F10C02 		add	r2, r6, #12
 541 007e 08EB8703 		add	r3, r8, r7, lsl #2
 542              	.L64:
 543 0082 51F8044F 		ldr	r4, [r1, #4]!
 544 0086 B0EC017A 		fldmias	r0!, {s14}
 545 008a 07EE904A 		fmsr	s15, r4	@ int
 546 008e F8EEE77A 		fsitos	s15, s15
 547 0092 9842     		cmp	r0, r3
 548 0094 C7EE877A 		fdivs	s15, s15, s14
 549 0098 E2EC017A 		fstmias	r2!, {s15}
 550 009c F1D1     		bne	.L64
 551              	.L55:
 552 009e 02B0     		add	sp, sp, #8
 553              		@ sp needed
 554 00a0 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 555              	.L67:
 556 00a4 91ED005A 		flds	s10, [r1]	@ int
 557 00a8 91ED016A 		flds	s12, [r1, #4]	@ int
 558 00ac 91ED027A 		flds	s14, [r1, #8]	@ int
 559 00b0 D4ED525A 		flds	s11, [r4, #328]
 560 00b4 D4ED536A 		flds	s13, [r4, #332]
 561 00b8 D4ED547A 		flds	s15, [r4, #336]
 562 00bc 0092     		str	r2, [sp]
 563 00be B8EEC55A 		fsitos	s10, s10
 564 00c2 B8EEC66A 		fsitos	s12, s12
 565 00c6 B8EEC77A 		fsitos	s14, s14
 566 00ca C5EE255A 		fdivs	s11, s10, s11
 567 00ce 00F68420 		addw	r0, r0, #2692
 568 00d2 C6EE266A 		fdivs	s13, s12, s13
 569 00d6 C7EE277A 		fdivs	s15, s14, s15
 570 00da 15EE901A 		fmrs	r1, s11
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 11


 571 00de 16EE902A 		fmrs	r2, s13
 572 00e2 17EE903A 		fmrs	r3, s15
 573 00e6 FFF7FEFF 		bl	_ZNK15DeltaParameters16InverseTransformEfffPf
 574 00ea C0E7     		b	.L62
 575              	.L60:
 576 00ec D1ED006A 		flds	s13, [r1]	@ int
 577 00f0 D4ED527A 		flds	s15, [r4, #328]
 578 00f4 D1ED024A 		flds	s9, [r1, #8]	@ int
 579 00f8 91ED016A 		flds	s12, [r1, #4]	@ int
 580 00fc B8EEE67A 		fsitos	s14, s13
 581 0100 00F63843 		addw	r3, r0, #3128
 582 0104 87EE277A 		fdivs	s14, s14, s15
 583 0108 00F63C40 		addw	r0, r0, #3132
 584 010c F8EEE47A 		fsitos	s15, s9
 585 0110 82ED007A 		fsts	s14, [r2]
 586 0114 93ED007A 		flds	s14, [r3]
 587 0118 D4ED535A 		flds	s11, [r4, #332]
 588 011c D4ED546A 		flds	s13, [r4, #336]
 589 0120 37EE075A 		fadds	s10, s14, s14
 590 0124 B8EEC66A 		fsitos	s12, s12
 591 0128 25EEE77A 		fnmuls	s14, s11, s15
 592 012c 65EE855A 		fmuls	s11, s11, s10
 593 0130 A6EE267A 		vfma.f32	s14, s12, s13
 594 0134 66EEA56A 		fmuls	s13, s13, s11
 595 0138 87EE267A 		fdivs	s14, s14, s13
 596 013c 82ED017A 		fsts	s14, [r2, #4]
 597 0140 D4ED536A 		flds	s13, [r4, #332]
 598              	.L66:
 599 0144 D0ED005A 		flds	s11, [r0]
 600 0148 94ED547A 		flds	s14, [r4, #336]
 601 014c 67EEA67A 		fmuls	s15, s15, s13
 602 0150 75EEA55A 		fadds	s11, s11, s11
 603 0154 E6EE077A 		vfma.f32	s15, s12, s14
 604 0158 66EEA56A 		fmuls	s13, s13, s11
 605 015c 27EE267A 		fmuls	s14, s14, s13
 606 0160 C7EE877A 		fdivs	s15, s15, s14
 607 0164 C6ED027A 		fsts	s15, [r6, #8]
 608 0168 81E7     		b	.L62
 609              	.L68:
 610 016a D1ED014A 		flds	s9, [r1, #4]	@ int
 611 016e D4ED525A 		flds	s11, [r4, #328]
 612 0172 D4ED536A 		flds	s13, [r4, #332]
 613 0176 00F63443 		addw	r3, r0, #3124
 614 017a 93ED007A 		flds	s14, [r3]
 615 017e F8EEE47A 		fsitos	s15, s9
 616 0182 D1ED004A 		flds	s9, [r1]	@ int
 617 0186 37EE075A 		fadds	s10, s14, s14
 618 018a B8EEE46A 		fsitos	s12, s9
 619 018e 25EEE77A 		fnmuls	s14, s11, s15
 620 0192 65EE855A 		fmuls	s11, s11, s10
 621 0196 A6EE267A 		vfma.f32	s14, s12, s13
 622 019a 00F63840 		addw	r0, r0, #3128
 623 019e 66EEA56A 		fmuls	s13, s13, s11
 624 01a2 D1ED025A 		flds	s11, [r1, #8]	@ int
 625 01a6 87EE267A 		fdivs	s14, s14, s13
 626 01aa B8EEE55A 		fsitos	s10, s11
 627 01ae 82ED007A 		fsts	s14, [r2]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 12


 628 01b2 D4ED526A 		flds	s13, [r4, #328]
 629 01b6 D0ED005A 		flds	s11, [r0]
 630 01ba 94ED537A 		flds	s14, [r4, #332]
 631 01be 67EEA67A 		fmuls	s15, s15, s13
 632 01c2 75EEA55A 		fadds	s11, s11, s11
 633 01c6 E6EE077A 		vfma.f32	s15, s12, s14
 634 01ca 66EEA56A 		fmuls	s13, s13, s11
 635 01ce 27EE267A 		fmuls	s14, s14, s13
 636 01d2 C7EE877A 		fdivs	s15, s15, s14
 637 01d6 C2ED017A 		fsts	s15, [r2, #4]
 638 01da D4ED547A 		flds	s15, [r4, #336]
 639 01de C5EE277A 		fdivs	s15, s10, s15
 640 01e2 C2ED027A 		fsts	s15, [r2, #8]
 641 01e6 42E7     		b	.L62
 642              	.L59:
 643 01e8 91ED026A 		flds	s12, [r1, #8]	@ int
 644 01ec D4ED525A 		flds	s11, [r4, #328]
 645 01f0 D1ED004A 		flds	s9, [r1]	@ int
 646 01f4 D4ED546A 		flds	s13, [r4, #336]
 647 01f8 00F63443 		addw	r3, r0, #3124
 648 01fc 93ED007A 		flds	s14, [r3]
 649 0200 F8EEC67A 		fsitos	s15, s12
 650 0204 37EE075A 		fadds	s10, s14, s14
 651 0208 B8EEE46A 		fsitos	s12, s9
 652 020c 25EEE77A 		fnmuls	s14, s11, s15
 653 0210 65EE855A 		fmuls	s11, s11, s10
 654 0214 A6EE267A 		vfma.f32	s14, s12, s13
 655 0218 00F63C40 		addw	r0, r0, #3132
 656 021c 66EEA56A 		fmuls	s13, s13, s11
 657 0220 D1ED015A 		flds	s11, [r1, #4]	@ int
 658 0224 87EE267A 		fdivs	s14, s14, s13
 659 0228 B8EEE55A 		fsitos	s10, s11
 660 022c 82ED007A 		fsts	s14, [r2]
 661 0230 94ED537A 		flds	s14, [r4, #332]
 662 0234 85EE077A 		fdivs	s14, s10, s14
 663 0238 82ED017A 		fsts	s14, [r2, #4]
 664 023c D4ED526A 		flds	s13, [r4, #328]
 665 0240 80E7     		b	.L66
 666              	.L70:
 667 0242 00BF     		.align	2
 668              	.L69:
 669 0244 00000000 		.word	reprap
 670              		.size	_ZNK4Move17MachineToEndPointEPKlPfj, .-_ZNK4Move17MachineToEndPointEPKlPfj
 671              		.global	__aeabi_f2d
 672              		.section	.text._ZN4Move11DiagnosticsE11MessageType,"ax",%progbits
 673              		.align	2
 674              		.global	_ZN4Move11DiagnosticsE11MessageType
 675              		.thumb
 676              		.thumb_func
 677              		.type	_ZN4Move11DiagnosticsE11MessageType, %function
 678              	_ZN4Move11DiagnosticsE11MessageType:
 679              		@ args = 0, pretend = 0, frame = 16
 680              		@ frame_needed = 0, uses_anonymous_args = 0
 681 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 682 0004 4D4C     		ldr	r4, .L83
 683 0006 4E4D     		ldr	r5, .L83+4
 684 0008 2668     		ldr	r6, [r4]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 13


 685 000a 4E4A     		ldr	r2, .L83+8
 686 000c 8046     		mov	r8, r0
 687 000e 88B0     		sub	sp, sp, #32
 688 0010 3046     		mov	r0, r6
 689 0012 0F46     		mov	r7, r1
 690 0014 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 691 0018 D8F820C0 		ldr	ip, [r8, #32]
 692 001c D8F84C0C 		ldr	r0, [r8, #3148]
 693 0020 D8F81420 		ldr	r2, [r8, #20]
 694 0024 D8F81810 		ldr	r1, [r8, #24]
 695 0028 2B68     		ldr	r3, [r5]
 696 002a CDF804C0 		str	ip, [sp, #4]
 697 002e 0090     		str	r0, [sp]
 698 0030 0292     		str	r2, [sp, #8]
 699 0032 3046     		mov	r0, r6
 700 0034 0391     		str	r1, [sp, #12]
 701 0036 444A     		ldr	r2, .L83+12
 702 0038 3946     		mov	r1, r7
 703 003a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 704 003e 2068     		ldr	r0, [r4]
 705 0040 D8F8542C 		ldr	r2, [r8, #3156]
 706 0044 D8F8503C 		ldr	r3, [r8, #3152]
 707 0048 0092     		str	r2, [sp]
 708 004a 0024     		movs	r4, #0
 709 004c 3946     		mov	r1, r7
 710 004e 3F4A     		ldr	r2, .L83+16
 711 0050 C8F81840 		str	r4, [r8, #24]
 712 0054 C8F81440 		str	r4, [r8, #20]
 713 0058 C8F82040 		str	r4, [r8, #32]
 714 005c 2C60     		str	r4, [r5]
 715 005e FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 716 0062 3046     		mov	r0, r6
 717 0064 3946     		mov	r1, r7
 718 0066 3A4A     		ldr	r2, .L83+20
 719 0068 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 720 006c D8F8F839 		ldr	r3, [r8, #2552]
 721 0070 002B     		cmp	r3, #0
 722 0072 5CD1     		bne	.L72
 723 0074 98F8700A 		ldrb	r0, [r8, #2672]	@ zero_extendqisi2
 724 0078 3649     		ldr	r1, .L83+24
 725 007a 374B     		ldr	r3, .L83+28
 726 007c 374A     		ldr	r2, .L83+32
 727 007e A042     		cmp	r0, r4
 728 0080 18BF     		it	ne
 729 0082 0B46     		movne	r3, r1
 730 0084 3046     		mov	r0, r6
 731 0086 3946     		mov	r1, r7
 732 0088 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 733              	.L74:
 734 008c 3046     		mov	r0, r6
 735 008e 3946     		mov	r1, r7
 736 0090 334A     		ldr	r2, .L83+36
 737 0092 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 738 0096 08F52075 		add	r5, r8, #640
 739 009a 0024     		movs	r4, #0
 740              	.L76:
 741 009c 55F8040B 		ldr	r0, [r5], #4	@ float
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 14


 742 00a0 FFF7FEFF 		bl	__aeabi_f2d
 743 00a4 0134     		adds	r4, r4, #1
 744 00a6 CDE90001 		strd	r0, [sp]
 745 00aa 2E4A     		ldr	r2, .L83+40
 746 00ac 3046     		mov	r0, r6
 747 00ae 3946     		mov	r1, r7
 748 00b0 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 749 00b4 052C     		cmp	r4, #5
 750 00b6 F1D1     		bne	.L76
 751 00b8 3046     		mov	r0, r6
 752 00ba 3946     		mov	r1, r7
 753 00bc 2A4A     		ldr	r2, .L83+44
 754 00be DFF8BCA0 		ldr	r10, .L83+64
 755 00c2 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 756 00c6 3046     		mov	r0, r6
 757 00c8 3946     		mov	r1, r7
 758 00ca 284A     		ldr	r2, .L83+48
 759 00cc FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 760 00d0 DAF80030 		ldr	r3, [r10]
 761 00d4 1BB3     		cbz	r3, .L78
 762 00d6 264D     		ldr	r5, .L83+52
 763 00d8 0024     		movs	r4, #0
 764 00da 4FF02009 		mov	r9, #32
 765 00de 01E0     		b	.L79
 766              	.L82:
 767 00e0 4FF02C09 		mov	r9, #44
 768              	.L79:
 769 00e4 05AA     		add	r2, sp, #20
 770 00e6 0323     		movs	r3, #3
 771 00e8 2946     		mov	r1, r5
 772 00ea 4046     		mov	r0, r8
 773 00ec FFF7FEFF 		bl	_ZNK4Move17MachineToEndPointEPKlPfj
 774 00f0 0598     		ldr	r0, [sp, #20]	@ float
 775 00f2 FFF7FEFF 		bl	__aeabi_f2d
 776 00f6 CDE90001 		strd	r0, [sp]
 777 00fa 0698     		ldr	r0, [sp, #24]	@ float
 778 00fc FFF7FEFF 		bl	__aeabi_f2d
 779 0100 4B46     		mov	r3, r9
 780 0102 CDE90201 		strd	r0, [sp, #8]
 781 0106 1B4A     		ldr	r2, .L83+56
 782 0108 3046     		mov	r0, r6
 783 010a 3946     		mov	r1, r7
 784 010c FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 785 0110 DAF80030 		ldr	r3, [r10]
 786 0114 0134     		adds	r4, r4, #1
 787 0116 A342     		cmp	r3, r4
 788 0118 05F10C05 		add	r5, r5, #12
 789 011c E0D8     		bhi	.L82
 790              	.L78:
 791 011e 3046     		mov	r0, r6
 792 0120 3946     		mov	r1, r7
 793 0122 114A     		ldr	r2, .L83+44
 794 0124 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 795 0128 08B0     		add	sp, sp, #32
 796              		@ sp needed
 797 012a BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 798              	.L72:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 15


 799 012e 3046     		mov	r0, r6
 800 0130 3946     		mov	r1, r7
 801 0132 114A     		ldr	r2, .L83+60
 802 0134 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 803 0138 A8E7     		b	.L74
 804              	.L84:
 805 013a 00BF     		.align	2
 806              	.L83:
 807 013c 00000000 		.word	reprap
 808 0140 00000000 		.word	.LANCHOR0
 809 0144 54000000 		.word	.LC4
 810 0148 64000000 		.word	.LC5
 811 014c A4000000 		.word	.LC6
 812 0150 D0000000 		.word	.LC7
 813 0154 44000000 		.word	.LC2
 814 0158 4C000000 		.word	.LC3
 815 015c EC000000 		.word	.LC8
 816 0160 FC000000 		.word	.LC10
 817 0164 10010000 		.word	.LC11
 818 0168 18010000 		.word	.LC12
 819 016c 1C010000 		.word	.LC13
 820 0170 00000000 		.word	_ZN3DDA20loggedProbePositionsE
 821 0174 38010000 		.word	.LC14
 822 0178 F0000000 		.word	.LC9
 823 017c 00000000 		.word	_ZN3DDA23numLoggedProbePositionsE
 824              		.size	_ZN4Move11DiagnosticsE11MessageType, .-_ZN4Move11DiagnosticsE11MessageType
 825              		.section	.text._ZNK4Move11MotorFactorEjPKf,"ax",%progbits
 826              		.align	2
 827              		.global	_ZNK4Move11MotorFactorEjPKf
 828              		.thumb
 829              		.thumb_func
 830              		.type	_ZNK4Move11MotorFactorEjPKf, %function
 831              	_ZNK4Move11MotorFactorEjPKf:
 832              		@ args = 0, pretend = 0, frame = 0
 833              		@ frame_needed = 0, uses_anonymous_args = 0
 834              		@ link register save eliminated.
 835 0000 0129     		cmp	r1, #1
 836 0002 3BD0     		beq	.L87
 837 0004 21D3     		bcc	.L88
 838 0006 0229     		cmp	r1, #2
 839 0008 06D0     		beq	.L89
 840              	.L86:
 841 000a 02EB8101 		add	r1, r2, r1, lsl #2
 842 000e D1ED007A 		flds	s15, [r1]
 843              	.L92:
 844 0012 17EE900A 		fmrs	r0, s15
 845 0016 7047     		bx	lr
 846              	.L89:
 847 0018 D0F8303C 		ldr	r3, [r0, #3120]
 848 001c 022B     		cmp	r3, #2
 849 001e 44D0     		beq	.L95
 850 0020 032B     		cmp	r3, #3
 851 0022 F2D1     		bne	.L86
 852 0024 00F63843 		addw	r3, r0, #3128
 853 0028 93ED007A 		flds	s14, [r3]
 854 002c D2ED017A 		flds	s15, [r2, #4]
 855              	.L98:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 16


 856 0030 00F63C40 		addw	r0, r0, #3132
 857 0034 D2ED026A 		flds	s13, [r2, #8]
 858 0038 67EE677A 		fnmuls	s15, s14, s15
 859 003c 90ED007A 		flds	s14, [r0]
 860 0040 E6EE877A 		vfma.f32	s15, s13, s14
 861 0044 17EE900A 		fmrs	r0, s15
 862 0048 7047     		bx	lr
 863              	.L88:
 864 004a D0F8303C 		ldr	r3, [r0, #3120]
 865 004e 012B     		cmp	r3, #1
 866 0050 43D0     		beq	.L90
 867 0052 022B     		cmp	r3, #2
 868 0054 D9D1     		bne	.L86
 869 0056 00F63C43 		addw	r3, r0, #3132
 870 005a D3ED007A 		flds	s15, [r3]
 871 005e 92ED027A 		flds	s14, [r2, #8]
 872              	.L97:
 873 0062 00F63440 		addw	r0, r0, #3124
 874 0066 D2ED006A 		flds	s13, [r2]
 875 006a 67EE277A 		fmuls	s15, s14, s15
 876 006e 90ED007A 		flds	s14, [r0]
 877 0072 E6EE877A 		vfma.f32	s15, s13, s14
 878 0076 17EE900A 		fmrs	r0, s15
 879 007a 7047     		bx	lr
 880              	.L87:
 881 007c D0F8303C 		ldr	r3, [r0, #3120]
 882 0080 012B     		cmp	r3, #1
 883 0082 19D0     		beq	.L93
 884 0084 032B     		cmp	r3, #3
 885 0086 C0D1     		bne	.L86
 886 0088 00F63C43 		addw	r3, r0, #3132
 887 008c 92ED027A 		flds	s14, [r2, #8]
 888 0090 D3ED007A 		flds	s15, [r3]
 889 0094 D2ED016A 		flds	s13, [r2, #4]
 890 0098 00F63840 		addw	r0, r0, #3128
 891 009c 67EE277A 		fmuls	s15, s14, s15
 892 00a0 90ED007A 		flds	s14, [r0]
 893 00a4 E6EE877A 		vfma.f32	s15, s13, s14
 894 00a8 B3E7     		b	.L92
 895              	.L95:
 896 00aa 00F63443 		addw	r3, r0, #3124
 897 00ae 93ED007A 		flds	s14, [r3]
 898 00b2 D2ED007A 		flds	s15, [r2]
 899 00b6 BBE7     		b	.L98
 900              	.L93:
 901 00b8 00F63443 		addw	r3, r0, #3124
 902 00bc 93ED007A 		flds	s14, [r3]
 903 00c0 D2ED007A 		flds	s15, [r2]
 904 00c4 D2ED016A 		flds	s13, [r2, #4]
 905 00c8 00F63840 		addw	r0, r0, #3128
 906 00cc 67EE677A 		fnmuls	s15, s14, s15
 907 00d0 90ED007A 		flds	s14, [r0]
 908 00d4 E6EE877A 		vfma.f32	s15, s13, s14
 909 00d8 9BE7     		b	.L92
 910              	.L90:
 911 00da 00F63843 		addw	r3, r0, #3128
 912 00de D3ED007A 		flds	s15, [r3]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 17


 913 00e2 92ED017A 		flds	s14, [r2, #4]
 914 00e6 BCE7     		b	.L97
 915              		.size	_ZNK4Move11MotorFactorEjPKf, .-_ZNK4Move11MotorFactorEjPKf
 916              		.section	.text._ZNK4Move14MotorTransformEPKfPl,"ax",%progbits
 917              		.align	2
 918              		.global	_ZNK4Move14MotorTransformEPKfPl
 919              		.thumb
 920              		.thumb_func
 921              		.type	_ZNK4Move14MotorTransformEPKfPl, %function
 922              	_ZNK4Move14MotorTransformEPKfPl:
 923              		@ args = 0, pretend = 0, frame = 0
 924              		@ frame_needed = 0, uses_anonymous_args = 0
 925 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 926 0004 90F8BC4A 		ldrb	r4, [r0, #2748]	@ zero_extendqisi2
 927 0008 3A4E     		ldr	r6, .L110
 928 000a 88B0     		sub	sp, sp, #32
 929 000c 8046     		mov	r8, r0
 930 000e 0F46     		mov	r7, r1
 931 0010 9246     		mov	r10, r2
 932 0012 002C     		cmp	r4, #0
 933 0014 46D0     		beq	.L100
 934 0016 00F68428 		addw	r8, r0, #2692
 935 001a 151F     		subs	r5, r2, #4
 936 001c 0024     		movs	r4, #0
 937              	.L102:
 938 001e 2246     		mov	r2, r4
 939 0020 3946     		mov	r1, r7
 940 0022 4046     		mov	r0, r8
 941 0024 FFF7FEFF 		bl	_ZNK15DeltaParameters9TransformEPKfj
 942 0028 3368     		ldr	r3, [r6]
 943 002a DFF8C890 		ldr	r9, .L110
 944 002e 03EB8403 		add	r3, r3, r4, lsl #2
 945 0032 D3ED527A 		flds	s15, [r3, #328]
 946 0036 07EE100A 		fmsr	s14, r0
 947 003a 27EE277A 		fmuls	s14, s14, s15
 948 003e 0134     		adds	r4, r4, #1
 949 0040 17EE100A 		fmrs	r0, s14
 950 0044 FFF7FEFF 		bl	roundf
 951 0048 07EE900A 		fmsr	s15, r0
 952 004c FDEEE77A 		ftosizs	s15, s15
 953 0050 032C     		cmp	r4, #3
 954 0052 17EE900A 		fmrs	r0, s15	@ int
 955 0056 45F8040F 		str	r0, [r5, #4]!
 956 005a E0D1     		bne	.L102
 957 005c B9F84030 		ldrh	r3, [r9, #64]
 958 0060 03F05003 		and	r3, r3, #80
 959 0064 502B     		cmp	r3, #80
 960 0066 1AD1     		bne	.L99
 961 0068 3868     		ldr	r0, [r7]	@ float
 962 006a FFF7FEFF 		bl	__aeabi_f2d
 963 006e 0446     		mov	r4, r0
 964 0070 7868     		ldr	r0, [r7, #4]	@ float
 965 0072 0D46     		mov	r5, r1
 966 0074 FFF7FEFF 		bl	__aeabi_f2d
 967 0078 CDE90001 		strd	r0, [sp]
 968 007c B868     		ldr	r0, [r7, #8]	@ float
 969 007e FFF7FEFF 		bl	__aeabi_f2d
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 18


 970 0082 9AE88800 		ldmia	r10, {r3, r7}
 971 0086 DAF80860 		ldr	r6, [r10, #8]
 972 008a 0696     		str	r6, [sp, #24]
 973 008c 0493     		str	r3, [sp, #16]
 974 008e CDE90201 		strd	r0, [sp, #8]
 975 0092 2246     		mov	r2, r4
 976 0094 2B46     		mov	r3, r5
 977 0096 0597     		str	r7, [sp, #20]
 978 0098 1748     		ldr	r0, .L110+4
 979 009a FFF7FEFF 		bl	debugPrintf
 980              	.L99:
 981 009e 08B0     		add	sp, sp, #32
 982              		@ sp needed
 983 00a0 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 984              	.L100:
 985 00a4 3369     		ldr	r3, [r6, #16]
 986 00a6 D3F8B091 		ldr	r9, [r3, #432]
 987 00aa B9F1000F 		cmp	r9, #0
 988 00ae F6D0     		beq	.L99
 989 00b0 151F     		subs	r5, r2, #4
 990              	.L106:
 991 00b2 2146     		mov	r1, r4
 992 00b4 3A46     		mov	r2, r7
 993 00b6 4046     		mov	r0, r8
 994 00b8 FFF7FEFF 		bl	_ZNK4Move11MotorFactorEjPKf
 995 00bc 3368     		ldr	r3, [r6]
 996 00be 03EB8403 		add	r3, r3, r4, lsl #2
 997 00c2 D3ED527A 		flds	s15, [r3, #328]
 998 00c6 07EE100A 		fmsr	s14, r0
 999 00ca 27EE277A 		fmuls	s14, s14, s15
 1000 00ce 0134     		adds	r4, r4, #1
 1001 00d0 17EE100A 		fmrs	r0, s14
 1002 00d4 FFF7FEFF 		bl	roundf
 1003 00d8 07EE900A 		fmsr	s15, r0
 1004 00dc FDEEE77A 		ftosizs	s15, s15
 1005 00e0 4C45     		cmp	r4, r9
 1006 00e2 17EE900A 		fmrs	r0, s15	@ int
 1007 00e6 45F8040F 		str	r0, [r5, #4]!
 1008 00ea E2D1     		bne	.L106
 1009 00ec 08B0     		add	sp, sp, #32
 1010              		@ sp needed
 1011 00ee BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1012              	.L111:
 1013 00f2 00BF     		.align	2
 1014              	.L110:
 1015 00f4 00000000 		.word	reprap
 1016 00f8 44010000 		.word	.LC15
 1017              		.size	_ZNK4Move14MotorTransformEPKfPl, .-_ZNK4Move14MotorTransformEPKfPl
 1018              		.section	.text._ZNK4Move17EndPointToMachineEPKfPlj,"ax",%progbits
 1019              		.align	2
 1020              		.global	_ZNK4Move17EndPointToMachineEPKfPlj
 1021              		.thumb
 1022              		.thumb_func
 1023              		.type	_ZNK4Move17EndPointToMachineEPKfPlj, %function
 1024              	_ZNK4Move17EndPointToMachineEPKfPlj:
 1025              		@ args = 0, pretend = 0, frame = 0
 1026              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 19


 1027 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1028 0004 DFF85480 		ldr	r8, .L116
 1029 0008 1F46     		mov	r7, r3
 1030 000a 0E46     		mov	r6, r1
 1031 000c 1546     		mov	r5, r2
 1032 000e FFF7FEFF 		bl	_ZNK4Move14MotorTransformEPKfPl
 1033 0012 D8F81030 		ldr	r3, [r8, #16]
 1034 0016 D3F8B041 		ldr	r4, [r3, #432]
 1035 001a A742     		cmp	r7, r4
 1036 001c 1CD9     		bls	.L112
 1037 001e A300     		lsls	r3, r4, #2
 1038 0020 1A1F     		subs	r2, r3, #4
 1039 0022 1E44     		add	r6, r6, r3
 1040 0024 1544     		add	r5, r5, r2
 1041              	.L115:
 1042 0026 D8F80020 		ldr	r2, [r8]
 1043 002a B6EC017A 		fldmias	r6!, {s14}
 1044 002e 02EB8402 		add	r2, r2, r4, lsl #2
 1045 0032 D2ED527A 		flds	s15, [r2, #328]
 1046 0036 67EE277A 		fmuls	s15, s14, s15
 1047 003a 0134     		adds	r4, r4, #1
 1048 003c 17EE900A 		fmrs	r0, s15
 1049 0040 FFF7FEFF 		bl	roundf
 1050 0044 07EE900A 		fmsr	s15, r0
 1051 0048 FDEEE77A 		ftosizs	s15, s15
 1052 004c BC42     		cmp	r4, r7
 1053 004e 17EE900A 		fmrs	r0, s15	@ int
 1054 0052 45F8040F 		str	r0, [r5, #4]!
 1055 0056 E6D1     		bne	.L115
 1056              	.L112:
 1057 0058 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1058              	.L117:
 1059              		.align	2
 1060              	.L116:
 1061 005c 00000000 		.word	reprap
 1062              		.size	_ZNK4Move17EndPointToMachineEPKfPlj, .-_ZNK4Move17EndPointToMachineEPKfPlj
 1063              		.section	.text._ZNK4Move13AxisTransformEPf,"ax",%progbits
 1064              		.align	2
 1065              		.global	_ZNK4Move13AxisTransformEPf
 1066              		.thumb
 1067              		.thumb_func
 1068              		.type	_ZNK4Move13AxisTransformEPf, %function
 1069              	_ZNK4Move13AxisTransformEPf:
 1070              		@ args = 0, pretend = 0, frame = 0
 1071              		@ frame_needed = 0, uses_anonymous_args = 0
 1072              		@ link register save eliminated.
 1073 0000 00F6F413 		addw	r3, r0, #2548
 1074 0004 D3ED007A 		flds	s15, [r3]
 1075 0008 D1ED026A 		flds	s13, [r1, #8]
 1076 000c 91ED017A 		flds	s14, [r1, #4]
 1077 0010 91ED006A 		flds	s12, [r1]
 1078 0014 00F6EC13 		addw	r3, r0, #2540
 1079 0018 D3ED005A 		flds	s11, [r3]
 1080 001c 66EEA77A 		fmuls	s15, s13, s15
 1081 0020 00F51F60 		add	r0, r0, #2544
 1082 0024 E5EE877A 		vfma.f32	s15, s11, s14
 1083 0028 76EE277A 		fadds	s15, s12, s15
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 20


 1084 002c C1ED007A 		fsts	s15, [r1]
 1085 0030 D0ED007A 		flds	s15, [r0]
 1086 0034 A6EEA77A 		vfma.f32	s14, s13, s15
 1087 0038 81ED017A 		fsts	s14, [r1, #4]
 1088 003c 7047     		bx	lr
 1089              		.size	_ZNK4Move13AxisTransformEPf, .-_ZNK4Move13AxisTransformEPf
 1090 003e 00BF     		.section	.text._ZNK4Move20InverseAxisTransformEPf,"ax",%progbits
 1091              		.align	2
 1092              		.global	_ZNK4Move20InverseAxisTransformEPf
 1093              		.thumb
 1094              		.thumb_func
 1095              		.type	_ZNK4Move20InverseAxisTransformEPf, %function
 1096              	_ZNK4Move20InverseAxisTransformEPf:
 1097              		@ args = 0, pretend = 0, frame = 0
 1098              		@ frame_needed = 0, uses_anonymous_args = 0
 1099              		@ link register save eliminated.
 1100 0000 00F51F63 		add	r3, r0, #2544
 1101 0004 93ED007A 		flds	s14, [r3]
 1102 0008 D1ED026A 		flds	s13, [r1, #8]
 1103 000c D1ED017A 		flds	s15, [r1, #4]
 1104 0010 91ED006A 		flds	s12, [r1]
 1105 0014 E7EE667A 		vfms.f32	s15, s14, s13
 1106 0018 00F6F413 		addw	r3, r0, #2548
 1107 001c 00F6EC10 		addw	r0, r0, #2540
 1108 0020 C1ED017A 		fsts	s15, [r1, #4]
 1109 0024 93ED007A 		flds	s14, [r3]
 1110 0028 D0ED005A 		flds	s11, [r0]
 1111 002c 26EE877A 		fmuls	s14, s13, s14
 1112 0030 A7EEA57A 		vfma.f32	s14, s15, s11
 1113 0034 36EE477A 		fsubs	s14, s12, s14
 1114 0038 81ED007A 		fsts	s14, [r1]
 1115 003c 7047     		bx	lr
 1116              		.size	_ZNK4Move20InverseAxisTransformEPf, .-_ZNK4Move20InverseAxisTransformEPf
 1117 003e 00BF     		.section	.text._ZN4Move20SetIdentityTransformEv,"ax",%progbits
 1118              		.align	2
 1119              		.global	_ZN4Move20SetIdentityTransformEv
 1120              		.thumb
 1121              		.thumb_func
 1122              		.type	_ZN4Move20SetIdentityTransformEv, %function
 1123              	_ZN4Move20SetIdentityTransformEv:
 1124              		@ args = 0, pretend = 0, frame = 0
 1125              		@ frame_needed = 0, uses_anonymous_args = 0
 1126 0000 38B5     		push	{r3, r4, r5, lr}
 1127 0002 00F52165 		add	r5, r0, #2576
 1128 0006 0024     		movs	r4, #0
 1129 0008 C0F8F849 		str	r4, [r0, #2552]
 1130 000c 2846     		mov	r0, r5
 1131 000e FFF7FEFF 		bl	_ZN9HeightMap16ClearGridHeightsEv
 1132 0012 2846     		mov	r0, r5
 1133 0014 2146     		mov	r1, r4
 1134 0016 BDE83840 		pop	{r3, r4, r5, lr}
 1135 001a FFF7FEBF 		b	_ZN9HeightMap12UseHeightMapEb
 1136              		.size	_ZN4Move20SetIdentityTransformEv, .-_ZN4Move20SetIdentityTransformEv
 1137 001e 00BF     		.section	.text._ZN4Move14SetTaperHeightEf,"ax",%progbits
 1138              		.align	2
 1139              		.global	_ZN4Move14SetTaperHeightEf
 1140              		.thumb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 21


 1141              		.thumb_func
 1142              		.type	_ZN4Move14SetTaperHeightEf, %function
 1143              	_ZN4Move14SetTaperHeightEf:
 1144              		@ args = 0, pretend = 0, frame = 0
 1145              		@ frame_needed = 0, uses_anonymous_args = 0
 1146              		@ link register save eliminated.
 1147 0000 07EE901A 		fmsr	s15, r1
 1148 0004 B7EE007A 		fconsts	s14, #112
 1149 0008 F4EEC77A 		fcmpes	s15, s14
 1150 000c F1EE10FA 		fmstat
 1151 0010 D4BF     		ite	le
 1152 0012 0023     		movle	r3, #0
 1153 0014 0123     		movgt	r3, #1
 1154 0016 80F80C3A 		strb	r3, [r0, #2572]
 1155 001a 43B1     		cbz	r3, .L121
 1156 001c 87EE277A 		fdivs	s14, s14, s15
 1157 0020 00F60423 		addw	r3, r0, #2564
 1158 0024 00F60820 		addw	r0, r0, #2568
 1159 0028 1960     		str	r1, [r3]	@ float
 1160 002a 80ED007A 		fsts	s14, [r0]
 1161              	.L121:
 1162 002e 7047     		bx	lr
 1163              		.size	_ZN4Move14SetTaperHeightEf, .-_ZN4Move14SetTaperHeightEf
 1164              		.section	.text._ZNK4Move16AxisCompensationEa,"ax",%progbits
 1165              		.align	2
 1166              		.global	_ZNK4Move16AxisCompensationEa
 1167              		.thumb
 1168              		.thumb_func
 1169              		.type	_ZNK4Move16AxisCompensationEa, %function
 1170              	_ZNK4Move16AxisCompensationEa:
 1171              		@ args = 0, pretend = 0, frame = 0
 1172              		@ frame_needed = 0, uses_anonymous_args = 0
 1173 0000 0129     		cmp	r1, #1
 1174 0002 08B5     		push	{r3, lr}
 1175 0004 12D0     		beq	.L128
 1176 0006 0229     		cmp	r1, #2
 1177 0008 0CD0     		beq	.L129
 1178 000a 39B1     		cbz	r1, .L133
 1179 000c 094B     		ldr	r3, .L134
 1180 000e 0A4A     		ldr	r2, .L134+4
 1181 0010 1868     		ldr	r0, [r3]
 1182 0012 0621     		movs	r1, #6
 1183 0014 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1184 0018 0020     		movs	r0, #0
 1185 001a 08BD     		pop	{r3, pc}
 1186              	.L133:
 1187 001c 00F6EC10 		addw	r0, r0, #2540
 1188 0020 0068     		ldr	r0, [r0]	@ float
 1189 0022 08BD     		pop	{r3, pc}
 1190              	.L129:
 1191 0024 00F6F410 		addw	r0, r0, #2548
 1192 0028 0068     		ldr	r0, [r0]	@ float
 1193 002a 08BD     		pop	{r3, pc}
 1194              	.L128:
 1195 002c 00F51F60 		add	r0, r0, #2544
 1196 0030 0068     		ldr	r0, [r0]	@ float
 1197 0032 08BD     		pop	{r3, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 22


 1198              	.L135:
 1199              		.align	2
 1200              	.L134:
 1201 0034 00000000 		.word	reprap
 1202 0038 68010000 		.word	.LC16
 1203              		.size	_ZNK4Move16AxisCompensationEa, .-_ZNK4Move16AxisCompensationEa
 1204              		.section	.text._ZN4Move19SetAxisCompensationEaf,"ax",%progbits
 1205              		.align	2
 1206              		.global	_ZN4Move19SetAxisCompensationEaf
 1207              		.thumb
 1208              		.thumb_func
 1209              		.type	_ZN4Move19SetAxisCompensationEaf, %function
 1210              	_ZN4Move19SetAxisCompensationEaf:
 1211              		@ args = 0, pretend = 0, frame = 0
 1212              		@ frame_needed = 0, uses_anonymous_args = 0
 1213              		@ link register save eliminated.
 1214 0000 0129     		cmp	r1, #1
 1215 0002 10D0     		beq	.L138
 1216 0004 0229     		cmp	r1, #2
 1217 0006 0AD0     		beq	.L139
 1218 0008 29B1     		cbz	r1, .L143
 1219 000a 094B     		ldr	r3, .L144
 1220 000c 094A     		ldr	r2, .L144+4
 1221 000e 1868     		ldr	r0, [r3]
 1222 0010 0621     		movs	r1, #6
 1223 0012 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 1224              	.L143:
 1225 0016 00F6EC10 		addw	r0, r0, #2540
 1226 001a 0260     		str	r2, [r0]	@ float
 1227 001c 7047     		bx	lr
 1228              	.L139:
 1229 001e 00F6F410 		addw	r0, r0, #2548
 1230 0022 0260     		str	r2, [r0]	@ float
 1231 0024 7047     		bx	lr
 1232              	.L138:
 1233 0026 00F51F60 		add	r0, r0, #2544
 1234 002a 0260     		str	r2, [r0]	@ float
 1235 002c 7047     		bx	lr
 1236              	.L145:
 1237 002e 00BF     		.align	2
 1238              	.L144:
 1239 0030 00000000 		.word	reprap
 1240 0034 9C010000 		.word	.LC17
 1241              		.size	_ZN4Move19SetAxisCompensationEaf, .-_ZN4Move19SetAxisCompensationEaf
 1242              		.global	__aeabi_dsub
 1243              		.global	__aeabi_d2f
 1244              		.section	.text._ZNK4Move22BarycentricCoordinatesEjjjffRfS0_S0_,"ax",%progbits
 1245              		.align	2
 1246              		.global	_ZNK4Move22BarycentricCoordinatesEjjjffRfS0_S0_
 1247              		.thumb
 1248              		.thumb_func
 1249              		.type	_ZNK4Move22BarycentricCoordinatesEjjjffRfS0_S0_, %function
 1250              	_ZNK4Move22BarycentricCoordinatesEjjjffRfS0_S0_:
 1251              		@ args = 20, pretend = 0, frame = 0
 1252              		@ frame_needed = 0, uses_anonymous_args = 0
 1253 0000 70B5     		push	{r4, r5, r6, lr}
 1254 0002 2DED028B 		fstmfdd	sp!, {d8}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 23


 1255 0006 00EB8202 		add	r2, r0, r2, lsl #2
 1256 000a 00EB8303 		add	r3, r0, r3, lsl #2
 1257 000e 00EB8100 		add	r0, r0, r1, lsl #2
 1258 0012 03F67815 		addw	r5, r3, #2424
 1259 0016 00F67814 		addw	r4, r0, #2424
 1260 001a 02F66411 		addw	r1, r2, #2404
 1261 001e 03F66413 		addw	r3, r3, #2404
 1262 0022 D5ED005A 		flds	s11, [r5]
 1263 0026 D3ED006A 		flds	s13, [r3]
 1264 002a 94ED005A 		flds	s10, [r4]
 1265 002e 91ED007A 		flds	s14, [r1]
 1266 0032 DDED073A 		flds	s7, [sp, #28]
 1267 0036 9DED064A 		flds	s8, [sp, #24]
 1268 003a 089B     		ldr	r3, [sp, #32]
 1269 003c 0999     		ldr	r1, [sp, #36]
 1270 003e 0A9E     		ldr	r6, [sp, #40]
 1271 0040 02F67812 		addw	r2, r2, #2424
 1272 0044 00F66410 		addw	r0, r0, #2404
 1273 0048 35EE655A 		fsubs	s10, s10, s11
 1274 004c D2ED004A 		flds	s9, [r2]
 1275 0050 D0ED007A 		flds	s15, [r0]
 1276 0054 36EEC77A 		fsubs	s14, s13, s14
 1277 0058 74EEE54A 		fsubs	s9, s9, s11
 1278 005c 27EE056A 		fmuls	s12, s14, s10
 1279 0060 77EEE67A 		fsubs	s15, s15, s13
 1280 0064 B7EE008A 		fconsts	s16, #112
 1281 0068 A4EEA76A 		vfma.f32	s12, s9, s15
 1282 006c 73EEE55A 		fsubs	s11, s7, s11
 1283 0070 88EE066A 		fdivs	s12, s16, s12
 1284 0074 74EE666A 		fsubs	s13, s8, s13
 1285 0078 27EE257A 		fmuls	s14, s14, s11
 1286 007c 67EEA57A 		fmuls	s15, s15, s11
 1287 0080 A4EEA67A 		vfma.f32	s14, s9, s13
 1288 0084 E5EE667A 		vfms.f32	s15, s10, s13
 1289 0088 27EE067A 		fmuls	s14, s14, s12
 1290 008c 27EE868A 		fmuls	s16, s15, s12
 1291 0090 83ED007A 		fsts	s14, [r3]
 1292 0094 81ED008A 		fsts	s16, [r1]
 1293 0098 1868     		ldr	r0, [r3]	@ float
 1294 009a FFF7FEFF 		bl	__aeabi_f2d
 1295 009e 0246     		mov	r2, r0
 1296 00a0 0B46     		mov	r3, r1
 1297 00a2 0020     		movs	r0, #0
 1298 00a4 0A49     		ldr	r1, .L147
 1299 00a6 FFF7FEFF 		bl	__aeabi_dsub
 1300 00aa 0446     		mov	r4, r0
 1301 00ac 18EE100A 		fmrs	r0, s16
 1302 00b0 0D46     		mov	r5, r1
 1303 00b2 FFF7FEFF 		bl	__aeabi_f2d
 1304 00b6 0246     		mov	r2, r0
 1305 00b8 0B46     		mov	r3, r1
 1306 00ba 2046     		mov	r0, r4
 1307 00bc 2946     		mov	r1, r5
 1308 00be FFF7FEFF 		bl	__aeabi_dsub
 1309 00c2 FFF7FEFF 		bl	__aeabi_d2f
 1310 00c6 BDEC028B 		fldmfdd	sp!, {d8}
 1311 00ca 3060     		str	r0, [r6]	@ float
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 24


 1312 00cc 70BD     		pop	{r4, r5, r6, pc}
 1313              	.L148:
 1314 00ce 00BF     		.align	2
 1315              	.L147:
 1316 00d0 0000F03F 		.word	1072693248
 1317              		.size	_ZNK4Move22BarycentricCoordinatesEjjjffRfS0_S0_, .-_ZNK4Move22BarycentricCoordinatesEjjjffRf
 1318              		.section	.text._ZNK4Move9TriangleZEff,"ax",%progbits
 1319              		.align	2
 1320              		.global	_ZNK4Move9TriangleZEff
 1321              		.thumb
 1322              		.thumb_func
 1323              		.type	_ZNK4Move9TriangleZEff, %function
 1324              	_ZNK4Move9TriangleZEff:
 1325              		@ args = 0, pretend = 0, frame = 16
 1326              		@ frame_needed = 0, uses_anonymous_args = 0
 1327 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1328 0004 2DED028B 		fstmfdd	sp!, {d8}
 1329 0008 9FED2D8A 		flds	s16, .L161
 1330 000c 8BB0     		sub	sp, sp, #44
 1331 000e 8B46     		mov	fp, r1	@ float
 1332 0010 9246     		mov	r10, r2	@ float
 1333 0012 0646     		mov	r6, r0
 1334 0014 0025     		movs	r5, #0
 1335 0016 0DF11C09 		add	r9, sp, #28
 1336 001a 09AF     		add	r7, sp, #36
 1337              	.L156:
 1338 001c 6C1C     		adds	r4, r5, #1
 1339 001e 08AB     		add	r3, sp, #32
 1340 0020 04F00308 		and	r8, r4, #3
 1341 0024 0393     		str	r3, [sp, #12]
 1342 0026 CDF800B0 		str	fp, [sp]	@ float
 1343 002a CDF804A0 		str	r10, [sp, #4]	@ float
 1344 002e CDF80890 		str	r9, [sp, #8]
 1345 0032 0497     		str	r7, [sp, #16]
 1346 0034 4246     		mov	r2, r8
 1347 0036 3046     		mov	r0, r6
 1348 0038 2946     		mov	r1, r5
 1349 003a 0423     		movs	r3, #4
 1350 003c FFF7FEFF 		bl	_ZNK4Move22BarycentricCoordinatesEjjjffRfS0_S0_
 1351 0040 DDED077A 		flds	s15, [sp, #28]
 1352 0044 F4EEC87A 		fcmpes	s15, s16
 1353 0048 F1EE10FA 		fmstat
 1354 004c 0DDD     		ble	.L150
 1355 004e 9DED087A 		flds	s14, [sp, #32]
 1356 0052 B4EEC87A 		fcmpes	s14, s16
 1357 0056 F1EE10FA 		fmstat
 1358 005a 06DD     		ble	.L150
 1359 005c DDED096A 		flds	s13, [sp, #36]
 1360 0060 F4EEC86A 		fcmpes	s13, s16
 1361 0064 F1EE10FA 		fmstat
 1362 0068 12DC     		bgt	.L160
 1363              	.L150:
 1364 006a 042C     		cmp	r4, #4
 1365 006c 01D0     		beq	.L155
 1366 006e 2546     		mov	r5, r4
 1367 0070 D4E7     		b	.L156
 1368              	.L155:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 25


 1369 0072 144B     		ldr	r3, .L161+4
 1370 0074 144A     		ldr	r2, .L161+8
 1371 0076 1868     		ldr	r0, [r3]
 1372 0078 0621     		movs	r1, #6
 1373 007a FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
 1374 007e 9FED137A 		flds	s14, .L161+12
 1375              	.L154:
 1376 0082 17EE100A 		fmrs	r0, s14
 1377 0086 0BB0     		add	sp, sp, #44
 1378              		@ sp needed
 1379 0088 BDEC028B 		fldmfdd	sp!, {d8}
 1380 008c BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1381              	.L160:
 1382 0090 08F26222 		addw	r2, r8, #610
 1383 0094 06EB8202 		add	r2, r6, r2, lsl #2
 1384 0098 92ED016A 		flds	s12, [r2, #4]
 1385 009c 05F26223 		addw	r3, r5, #610
 1386 00a0 06EB8303 		add	r3, r6, r3, lsl #2
 1387 00a4 27EE067A 		fmuls	s14, s14, s12
 1388 00a8 93ED016A 		flds	s12, [r3, #4]
 1389 00ac A7EE867A 		vfma.f32	s14, s15, s12
 1390 00b0 06F69C16 		addw	r6, r6, #2460
 1391 00b4 D6ED007A 		flds	s15, [r6]
 1392 00b8 A6EEA77A 		vfma.f32	s14, s13, s15
 1393 00bc E1E7     		b	.L154
 1394              	.L162:
 1395 00be 00BF     		.align	2
 1396              	.L161:
 1397 00c0 6F1283BA 		.word	-1165815185
 1398 00c4 00000000 		.word	reprap
 1399 00c8 BC010000 		.word	.LC18
 1400 00cc 00000000 		.word	0
 1401              		.size	_ZNK4Move9TriangleZEff, .-_ZNK4Move9TriangleZEff
 1402              		.section	.text._ZNK4Move22GoodProbePointOrderingEj,"ax",%progbits
 1403              		.align	2
 1404              		.global	_ZNK4Move22GoodProbePointOrderingEj
 1405              		.thumb
 1406              		.thumb_func
 1407              		.type	_ZNK4Move22GoodProbePointOrderingEj, %function
 1408              	_ZNK4Move22GoodProbePointOrderingEj:
 1409              		@ args = 0, pretend = 0, frame = 0
 1410              		@ frame_needed = 0, uses_anonymous_args = 0
 1411              		@ link register save eliminated.
 1412 0000 0129     		cmp	r1, #1
 1413 0002 5AD9     		bls	.L172
 1414 0004 90ED617A 		flds	s14, [r0, #388]
 1415 0008 D0ED607A 		flds	s15, [r0, #384]
 1416 000c B4EEE77A 		fcmpes	s14, s15
 1417 0010 F1EE10FA 		fmstat
 1418 0014 4FD9     		bls	.L179
 1419 0016 0229     		cmp	r1, #2
 1420 0018 4FD0     		beq	.L172
 1421 001a 90ED226A 		flds	s12, [r0, #136]
 1422 001e D0ED216A 		flds	s13, [r0, #132]
 1423 0022 B4EEE66A 		fcmpes	s12, s13
 1424 0026 F1EE10FA 		fmstat
 1425 002a 44D9     		bls	.L179
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 26


 1426 002c 0329     		cmp	r1, #3
 1427 002e 44D0     		beq	.L172
 1428 0030 90ED634A 		flds	s8, [r0, #396]
 1429 0034 D0ED624A 		flds	s9, [r0, #392]
 1430 0038 B4EEE44A 		fcmpes	s8, s9
 1431 003c F1EE10FA 		fmstat
 1432 0040 39DA     		bge	.L179
 1433 0042 D0ED205A 		flds	s11, [r0, #128]
 1434 0046 D0ED233A 		flds	s7, [r0, #140]
 1435 004a F4EEE35A 		fcmpes	s11, s7
 1436 004e F1EE10FA 		fmstat
 1437 0052 30DA     		bge	.L179
 1438 0054 0429     		cmp	r1, #4
 1439 0056 30D0     		beq	.L172
 1440 0058 90ED245A 		flds	s10, [r0, #144]
 1441 005c F4EEC55A 		fcmpes	s11, s10
 1442 0060 F1EE10FA 		fmstat
 1443 0064 27DA     		bge	.L179
 1444 0066 F4EEC56A 		fcmpes	s13, s10
 1445 006a F1EE10FA 		fmstat
 1446 006e 22DA     		bge	.L179
 1447 0070 B4EEC56A 		fcmpes	s12, s10
 1448 0074 F1EE10FA 		fmstat
 1449 0078 1DD9     		bls	.L179
 1450 007a F4EEC53A 		fcmpes	s7, s10
 1451 007e F1EE10FA 		fmstat
 1452 0082 18D9     		bls	.L179
 1453 0084 D0ED646A 		flds	s13, [r0, #400]
 1454 0088 F4EEE67A 		fcmpes	s15, s13
 1455 008c F1EE10FA 		fmstat
 1456 0090 11DA     		bge	.L179
 1457 0092 B4EEE67A 		fcmpes	s14, s13
 1458 0096 F1EE10FA 		fmstat
 1459 009a 0CD9     		bls	.L179
 1460 009c F4EEE64A 		fcmpes	s9, s13
 1461 00a0 F1EE10FA 		fmstat
 1462 00a4 07D9     		bls	.L179
 1463 00a6 B4EEE64A 		fcmpes	s8, s13
 1464 00aa F1EE10FA 		fmstat
 1465 00ae ACBF     		ite	ge
 1466 00b0 0020     		movge	r0, #0
 1467 00b2 0120     		movlt	r0, #1
 1468 00b4 7047     		bx	lr
 1469              	.L179:
 1470 00b6 0020     		movs	r0, #0
 1471 00b8 7047     		bx	lr
 1472              	.L172:
 1473 00ba 0120     		movs	r0, #1
 1474 00bc 7047     		bx	lr
 1475              		.size	_ZNK4Move22GoodProbePointOrderingEj, .-_ZNK4Move22GoodProbePointOrderingEj
 1476              		.global	__aeabi_dadd
 1477 00be 00BF     		.section	.text._ZN4Move20SetProbedBedEquationEjR9StringRef,"ax",%progbits
 1478              		.align	2
 1479              		.global	_ZN4Move20SetProbedBedEquationEjR9StringRef
 1480              		.thumb
 1481              		.thumb_func
 1482              		.type	_ZN4Move20SetProbedBedEquationEjR9StringRef, %function
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 27


 1483              	_ZN4Move20SetProbedBedEquationEjR9StringRef:
 1484              		@ args = 0, pretend = 0, frame = 16
 1485              		@ frame_needed = 0, uses_anonymous_args = 0
 1486 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1487 0004 2DED068B 		fstmfdd	sp!, {d8, d9, d10}
 1488 0008 89B0     		sub	sp, sp, #36
 1489 000a 1746     		mov	r7, r2
 1490 000c 8046     		mov	r8, r0
 1491 000e 0E46     		mov	r6, r1
 1492 0010 FFF7FEFF 		bl	_ZNK4Move22GoodProbePointOrderingEj
 1493 0014 78B9     		cbnz	r0, .L181
 1494 0016 032E     		cmp	r6, #3
 1495 0018 20D8     		bhi	.L196
 1496 001a 721E     		subs	r2, r6, #1
 1497 001c 3846     		mov	r0, r7
 1498 001e 9149     		ldr	r1, .L198
 1499 0020 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 1500              	.L184:
 1501 0024 9049     		ldr	r1, .L198+4
 1502 0026 3846     		mov	r0, r7
 1503 0028 09B0     		add	sp, sp, #36
 1504              		@ sp needed
 1505 002a BDEC068B 		fldmfdd	sp!, {d8-d10}
 1506 002e BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1507 0032 FFF7FEBF 		b	_ZN9StringRef3catEPKc
 1508              	.L181:
 1509 0036 042E     		cmp	r6, #4
 1510 0038 1CD0     		beq	.L186
 1511 003a 052E     		cmp	r6, #5
 1512 003c 00F0A580 		beq	.L187
 1513 0040 032E     		cmp	r6, #3
 1514 0042 5BD0     		beq	.L197
 1515 0044 894B     		ldr	r3, .L198+8
 1516 0046 8A4A     		ldr	r2, .L198+12
 1517 0048 1868     		ldr	r0, [r3]
 1518 004a 0621     		movs	r1, #6
 1519 004c 3346     		mov	r3, r6
 1520 004e 09B0     		add	sp, sp, #36
 1521              		@ sp needed
 1522 0050 BDEC068B 		fldmfdd	sp!, {d8-d10}
 1523 0054 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1524 0058 FFF7FEBF 		b	_ZN8Platform8MessageFE11MessageTypePKcz
 1525              	.L196:
 1526 005c 3846     		mov	r0, r7
 1527 005e 8149     		ldr	r1, .L198
 1528 0060 0322     		movs	r2, #3
 1529 0062 FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 1530 0066 042E     		cmp	r6, #4
 1531 0068 DCD0     		beq	.L184
 1532 006a 3846     		mov	r0, r7
 1533 006c 8149     		ldr	r1, .L198+16
 1534 006e FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 1535 0072 D7E7     		b	.L184
 1536              	.L186:
 1537 0074 D8ED607A 		flds	s15, [r8, #384]
 1538 0078 98ED236A 		flds	s12, [r8, #140]
 1539 007c 98ED207A 		flds	s14, [r8, #128]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 28


 1540 0080 D8ED616A 		flds	s13, [r8, #388]
 1541 0084 36EE477A 		fsubs	s14, s12, s14
 1542 0088 76EEE76A 		fsubs	s13, s13, s15
 1543 008c F7EE007A 		fconsts	s15, #112
 1544 0090 87EE877A 		fdivs	s14, s15, s14
 1545 0094 08F6FC12 		addw	r2, r8, #2556
 1546 0098 08F52063 		add	r3, r8, #2560
 1547 009c C7EEA67A 		fdivs	s15, s15, s13
 1548 00a0 82ED007A 		fsts	s14, [r2]
 1549 00a4 C3ED007A 		fsts	s15, [r3]
 1550              	.L189:
 1551 00a8 C8F8F869 		str	r6, [r8, #2552]
 1552 00ac 3846     		mov	r0, r7
 1553 00ae 7249     		ldr	r1, .L198+20
 1554 00b0 FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 1555 00b4 08F1800A 		add	r10, r8, #128
 1556 00b8 4FF00009 		mov	r9, #0
 1557 00bc 08F5C078 		add	r8, r8, #384
 1558              	.L194:
 1559 00c0 5AF8040B 		ldr	r0, [r10], #4	@ float
 1560 00c4 58F804BB 		ldr	fp, [r8], #4	@ float
 1561 00c8 FFF7FEFF 		bl	__aeabi_f2d
 1562 00cc 0446     		mov	r4, r0
 1563 00ce 5846     		mov	r0, fp	@ float
 1564 00d0 0D46     		mov	r5, r1
 1565 00d2 FFF7FEFF 		bl	__aeabi_f2d
 1566 00d6 CDE90001 		strd	r0, [sp]
 1567 00da DAF8FC01 		ldr	r0, [r10, #508]	@ float
 1568 00de FFF7FEFF 		bl	__aeabi_f2d
 1569 00e2 09F10109 		add	r9, r9, #1
 1570 00e6 CDE90201 		strd	r0, [sp, #8]
 1571 00ea 2246     		mov	r2, r4
 1572 00ec 2B46     		mov	r3, r5
 1573 00ee 3846     		mov	r0, r7
 1574 00f0 6249     		ldr	r1, .L198+24
 1575 00f2 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 1576 00f6 4E45     		cmp	r6, r9
 1577 00f8 E2D8     		bhi	.L194
 1578 00fa 93E7     		b	.L184
 1579              	.L197:
 1580 00fc D8ED206A 		flds	s13, [r8, #128]
 1581 0100 98ED214A 		flds	s8, [r8, #132]
 1582 0104 D8EDA02A 		flds	s5, [r8, #640]
 1583 0108 98EDA23A 		flds	s6, [r8, #648]
 1584 010c D8EDA15A 		flds	s11, [r8, #644]
 1585 0110 D8ED607A 		flds	s15, [r8, #384]
 1586 0114 D8ED223A 		flds	s7, [r8, #136]
 1587 0118 98ED625A 		flds	s10, [r8, #392]
 1588 011c 98ED617A 		flds	s14, [r8, #388]
 1589 0120 33EE623A 		fsubs	s6, s6, s5
 1590 0124 74EE664A 		fsubs	s9, s8, s13
 1591 0128 73EEE63A 		fsubs	s7, s7, s13
 1592 012c 35EE675A 		fsubs	s10, s10, s15
 1593 0130 75EEE22A 		fsubs	s5, s11, s5
 1594 0134 63EE646A 		fnmuls	s13, s6, s9
 1595 0138 77EE677A 		fsubs	s15, s14, s15
 1596 013c E2EEA36A 		vfma.f32	s13, s5, s7
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 29


 1597 0140 08F51E61 		add	r1, r8, #2528
 1598 0144 08F6E412 		addw	r2, r8, #2532
 1599 0148 25EE626A 		fnmuls	s12, s10, s5
 1600 014c 27EE267A 		fmuls	s14, s14, s13
 1601 0150 A7EE836A 		vfma.f32	s12, s15, s6
 1602 0154 08F6E813 		addw	r3, r8, #2536
 1603 0158 63EEE77A 		fnmuls	s15, s7, s15
 1604 015c A4EE067A 		vfma.f32	s14, s8, s12
 1605 0160 E4EE857A 		vfma.f32	s15, s9, s10
 1606 0164 B1EE466A 		fnegs	s12, s12
 1607 0168 A5EEA77A 		vfma.f32	s14, s11, s15
 1608 016c F1EE666A 		fnegs	s13, s13
 1609 0170 87EE277A 		fdivs	s14, s14, s15
 1610 0174 86EE276A 		fdivs	s12, s12, s15
 1611 0178 C6EEA77A 		fdivs	s15, s13, s15
 1612 017c 81ED006A 		fsts	s12, [r1]
 1613 0180 C2ED007A 		fsts	s15, [r2]
 1614 0184 83ED007A 		fsts	s14, [r3]
 1615 0188 8EE7     		b	.L189
 1616              	.L187:
 1617 018a 98ED24AA 		flds	s20, [r8, #144]
 1618 018e D8ED649A 		flds	s19, [r8, #400]
 1619 0192 98EDA49A 		flds	s18, [r8, #656]
 1620 0196 1AEE100A 		fmrs	r0, s20
 1621 019a FFF7FEFF 		bl	__aeabi_f2d
 1622 019e 0446     		mov	r4, r0
 1623 01a0 19EE900A 		fmrs	r0, s19
 1624 01a4 0D46     		mov	r5, r1
 1625 01a6 FFF7FEFF 		bl	__aeabi_f2d
 1626 01aa CDE90401 		strd	r0, [sp, #16]
 1627 01ae 19EE100A 		fmrs	r0, s18
 1628 01b2 FFF7FEFF 		bl	__aeabi_f2d
 1629 01b6 CDE90601 		strd	r0, [sp, #24]
 1630 01ba C146     		mov	r9, r8
 1631 01bc 4FF0040A 		mov	r10, #4
 1632              	.L191:
 1633 01c0 D9ED207A 		flds	s15, [r9, #128]
 1634 01c4 D9ED608A 		flds	s17, [r9, #384]
 1635 01c8 99EDA08A 		flds	s16, [r9, #640]
 1636 01cc 77EECA7A 		fsubs	s15, s15, s20
 1637 01d0 78EEE98A 		fsubs	s17, s17, s19
 1638 01d4 17EE900A 		fmrs	r0, s15
 1639 01d8 FFF7FEFF 		bl	__aeabi_f2d
 1640 01dc 0246     		mov	r2, r0
 1641 01de 0B46     		mov	r3, r1
 1642 01e0 FFF7FEFF 		bl	__aeabi_dadd
 1643 01e4 2246     		mov	r2, r4
 1644 01e6 2B46     		mov	r3, r5
 1645 01e8 FFF7FEFF 		bl	__aeabi_dadd
 1646 01ec FFF7FEFF 		bl	__aeabi_d2f
 1647 01f0 09F66413 		addw	r3, r9, #2404
 1648 01f4 09F6781B 		addw	fp, r9, #2424
 1649 01f8 1860     		str	r0, [r3]	@ float
 1650 01fa 18EE900A 		fmrs	r0, s17
 1651 01fe FFF7FEFF 		bl	__aeabi_f2d
 1652 0202 0246     		mov	r2, r0
 1653 0204 0B46     		mov	r3, r1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 30


 1654 0206 FFF7FEFF 		bl	__aeabi_dadd
 1655 020a DDE90423 		ldrd	r2, [sp, #16]
 1656 020e FFF7FEFF 		bl	__aeabi_dadd
 1657 0212 FFF7FEFF 		bl	__aeabi_d2f
 1658 0216 38EE498A 		fsubs	s16, s16, s18
 1659 021a CBF80000 		str	r0, [fp]	@ float
 1660 021e 18EE100A 		fmrs	r0, s16
 1661 0222 FFF7FEFF 		bl	__aeabi_f2d
 1662 0226 0246     		mov	r2, r0
 1663 0228 0B46     		mov	r3, r1
 1664 022a FFF7FEFF 		bl	__aeabi_dadd
 1665 022e DDE90623 		ldrd	r2, [sp, #24]
 1666 0232 FFF7FEFF 		bl	__aeabi_dadd
 1667 0236 FFF7FEFF 		bl	__aeabi_d2f
 1668 023a 09F68C13 		addw	r3, r9, #2444
 1669 023e BAF1010A 		subs	r10, r10, #1
 1670 0242 1860     		str	r0, [r3]	@ float
 1671 0244 09F10409 		add	r9, r9, #4
 1672 0248 BAD1     		bne	.L191
 1673 024a 08F67411 		addw	r1, r8, #2420
 1674 024e 08F68812 		addw	r2, r8, #2440
 1675 0252 08F69C13 		addw	r3, r8, #2460
 1676 0256 81ED00AA 		fsts	s20, [r1]
 1677 025a C2ED009A 		fsts	s19, [r2]
 1678 025e 83ED009A 		fsts	s18, [r3]
 1679 0262 21E7     		b	.L189
 1680              	.L199:
 1681              		.align	2
 1682              	.L198:
 1683 0264 F4010000 		.word	.LC19
 1684 0268 18010000 		.word	.LC12
 1685 026c 00000000 		.word	reprap
 1686 0270 64020000 		.word	.LC21
 1687 0274 44020000 		.word	.LC20
 1688 0278 C4020000 		.word	.LC23
 1689 027c B0020000 		.word	.LC22
 1690              		.size	_ZN4Move20SetProbedBedEquationEjR9StringRef, .-_ZN4Move20SetProbedBedEquationEjR9StringRef
 1691              		.section	.text._ZN4Move21AdjustDeltaParametersEPKdj,"ax",%progbits
 1692              		.align	2
 1693              		.global	_ZN4Move21AdjustDeltaParametersEPKdj
 1694              		.thumb
 1695              		.thumb_func
 1696              		.type	_ZN4Move21AdjustDeltaParametersEPKdj, %function
 1697              	_ZN4Move21AdjustDeltaParametersEPKdj:
 1698              		@ args = 0, pretend = 0, frame = 16
 1699              		@ frame_needed = 0, uses_anonymous_args = 0
 1700 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 1701 0004 00F68424 		addw	r4, r0, #2692
 1702 0008 D4ED167A 		flds	s15, [r4, #88]
 1703 000c D4ED076A 		flds	s13, [r4, #28]
 1704 0010 94ED087A 		flds	s14, [r4, #32]
 1705 0014 94ED096A 		flds	s12, [r4, #36]
 1706 0018 0B46     		mov	r3, r1
 1707 001a 0746     		mov	r7, r0
 1708 001c 76EEA76A 		fadds	s13, s13, s15
 1709 0020 37EE277A 		fadds	s14, s14, s15
 1710 0024 76EE277A 		fadds	s15, s12, s15
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 31


 1711 0028 84B0     		sub	sp, sp, #16
 1712 002a 1146     		mov	r1, r2
 1713 002c 2046     		mov	r0, r4
 1714 002e 1A46     		mov	r2, r3
 1715 0030 CDED016A 		fsts	s13, [sp, #4]
 1716 0034 8DED027A 		fsts	s14, [sp, #8]
 1717 0038 CDED037A 		fsts	s15, [sp, #12]
 1718 003c FFF7FEFF 		bl	_ZN15DeltaParameters6AdjustEjPKd
 1719 0040 7B68     		ldr	r3, [r7, #4]
 1720 0042 1C4A     		ldr	r2, .L203
 1721 0044 5968     		ldr	r1, [r3, #4]
 1722 0046 1268     		ldr	r2, [r2]
 1723 0048 0023     		movs	r3, #0
 1724 004a 02F5A47C 		add	ip, r2, #328
 1725 004e 01F1100A 		add	r10, r1, #16
 1726 0052 07F52A60 		add	r0, r7, #2720
 1727 0056 1A46     		mov	r2, r3
 1728              	.L202:
 1729 0058 F0EC016A 		fldmias	r0!, {s13}
 1730 005c D4ED167A 		flds	s15, [r4, #88]
 1731 0060 BCEC017A 		fldmias	ip!, {s14}
 1732 0064 5AF80360 		ldr	r6, [r10, r3]
 1733 0068 01AD     		add	r5, sp, #4
 1734 006a 1D44     		add	r5, r5, r3
 1735 006c 76EEA77A 		fadds	s15, s13, s15
 1736 0070 D5ED006A 		flds	s13, [r5]
 1737 0074 77EEE67A 		fsubs	s15, s15, s13
 1738 0078 01EB0309 		add	r9, r1, r3
 1739 007c 67EE277A 		fmuls	s15, s14, s15
 1740 0080 02F11608 		add	r8, r2, #22
 1741 0084 FDEEE77A 		ftosizs	s15, s15
 1742 0088 0132     		adds	r2, r2, #1
 1743 008a 17EE905A 		fmrs	r5, s15	@ int
 1744 008e 3544     		add	r5, r5, r6
 1745 0090 C9F81050 		str	r5, [r9, #16]
 1746 0094 4E7A     		ldrb	r6, [r1, #9]	@ zero_extendqisi2
 1747 0096 032A     		cmp	r2, #3
 1748 0098 6FF30006 		bfc	r6, #0, #1
 1749 009c 4E72     		strb	r6, [r1, #9]
 1750 009e 03F10403 		add	r3, r3, #4
 1751 00a2 47F82850 		str	r5, [r7, r8, lsl #2]
 1752 00a6 D7D1     		bne	.L202
 1753 00a8 0023     		movs	r3, #0
 1754 00aa 87F85430 		strb	r3, [r7, #84]
 1755 00ae 04B0     		add	sp, sp, #16
 1756              		@ sp needed
 1757 00b0 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 1758              	.L204:
 1759              		.align	2
 1760              	.L203:
 1761 00b4 00000000 		.word	reprap
 1762              		.size	_ZN4Move21AdjustDeltaParametersEPKdj, .-_ZN4Move21AdjustDeltaParametersEPKdj
 1763              		.global	__aeabi_dmul
 1764              		.section	.text._ZNK4Move22SecondDegreeTransformZEff,"ax",%progbits
 1765              		.align	2
 1766              		.global	_ZNK4Move22SecondDegreeTransformZEff
 1767              		.thumb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 32


 1768              		.thumb_func
 1769              		.type	_ZNK4Move22SecondDegreeTransformZEff, %function
 1770              	_ZNK4Move22SecondDegreeTransformZEff:
 1771              		@ args = 0, pretend = 0, frame = 16
 1772              		@ frame_needed = 0, uses_anonymous_args = 0
 1773 0000 2DE9F04D 		push	{r4, r5, r6, r7, r8, r10, fp, lr}
 1774 0004 07EE901A 		fmsr	s15, r1
 1775 0008 2DED028B 		fstmfdd	sp!, {d8}
 1776 000c D0ED208A 		flds	s17, [r0, #128]
 1777 0010 90ED608A 		flds	s16, [r0, #384]
 1778 0014 00F6FC13 		addw	r3, r0, #2556
 1779 0018 77EEE88A 		fsubs	s17, s15, s17
 1780 001c D3ED007A 		flds	s15, [r3]
 1781 0020 68EEA78A 		fmuls	s17, s17, s15
 1782 0024 07EE902A 		fmsr	s15, r2
 1783 0028 00F52063 		add	r3, r0, #2560
 1784 002c 37EEC88A 		fsubs	s16, s15, s16
 1785 0030 D3ED007A 		flds	s15, [r3]
 1786 0034 84B0     		sub	sp, sp, #16
 1787 0036 8046     		mov	r8, r0
 1788 0038 18EE900A 		fmrs	r0, s17
 1789 003c 28EE278A 		fmuls	s16, s16, s15
 1790 0040 FFF7FEFF 		bl	__aeabi_f2d
 1791 0044 CDE90201 		strd	r0, [sp, #8]
 1792 0048 DDE90223 		ldrd	r2, [sp, #8]
 1793 004c 0020     		movs	r0, #0
 1794 004e 3949     		ldr	r1, .L206
 1795 0050 FFF7FEFF 		bl	__aeabi_dsub
 1796 0054 0446     		mov	r4, r0
 1797 0056 18EE100A 		fmrs	r0, s16
 1798 005a 0D46     		mov	r5, r1
 1799 005c FFF7FEFF 		bl	__aeabi_f2d
 1800 0060 8246     		mov	r10, r0
 1801 0062 8B46     		mov	fp, r1
 1802 0064 5246     		mov	r2, r10
 1803 0066 5B46     		mov	r3, fp
 1804 0068 0020     		movs	r0, #0
 1805 006a 3249     		ldr	r1, .L206
 1806 006c FFF7FEFF 		bl	__aeabi_dsub
 1807 0070 0646     		mov	r6, r0
 1808 0072 0F46     		mov	r7, r1
 1809 0074 3246     		mov	r2, r6
 1810 0076 3B46     		mov	r3, r7
 1811 0078 2046     		mov	r0, r4
 1812 007a 2946     		mov	r1, r5
 1813 007c FFF7FEFF 		bl	__aeabi_dmul
 1814 0080 CDE90001 		strd	r0, [sp]
 1815 0084 D8F88002 		ldr	r0, [r8, #640]	@ float
 1816 0088 FFF7FEFF 		bl	__aeabi_f2d
 1817 008c 0246     		mov	r2, r0
 1818 008e 0B46     		mov	r3, r1
 1819 0090 DDE90001 		ldrd	r0, [sp]
 1820 0094 FFF7FEFF 		bl	__aeabi_dmul
 1821 0098 3246     		mov	r2, r6
 1822 009a 3B46     		mov	r3, r7
 1823 009c CDE90001 		strd	r0, [sp]
 1824 00a0 DDE90201 		ldrd	r0, [sp, #8]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 33


 1825 00a4 FFF7FEFF 		bl	__aeabi_dmul
 1826 00a8 0646     		mov	r6, r0
 1827 00aa D8F88C02 		ldr	r0, [r8, #652]	@ float
 1828 00ae 0F46     		mov	r7, r1
 1829 00b0 FFF7FEFF 		bl	__aeabi_f2d
 1830 00b4 0246     		mov	r2, r0
 1831 00b6 0B46     		mov	r3, r1
 1832 00b8 3046     		mov	r0, r6
 1833 00ba 3946     		mov	r1, r7
 1834 00bc FFF7FEFF 		bl	__aeabi_dmul
 1835 00c0 0246     		mov	r2, r0
 1836 00c2 0B46     		mov	r3, r1
 1837 00c4 DDE90001 		ldrd	r0, [sp]
 1838 00c8 FFF7FEFF 		bl	__aeabi_dadd
 1839 00cc 5246     		mov	r2, r10
 1840 00ce 5B46     		mov	r3, fp
 1841 00d0 0646     		mov	r6, r0
 1842 00d2 0F46     		mov	r7, r1
 1843 00d4 2046     		mov	r0, r4
 1844 00d6 2946     		mov	r1, r5
 1845 00d8 FFF7FEFF 		bl	__aeabi_dmul
 1846 00dc 0446     		mov	r4, r0
 1847 00de D8F88402 		ldr	r0, [r8, #644]	@ float
 1848 00e2 0D46     		mov	r5, r1
 1849 00e4 FFF7FEFF 		bl	__aeabi_f2d
 1850 00e8 0246     		mov	r2, r0
 1851 00ea 0B46     		mov	r3, r1
 1852 00ec 2046     		mov	r0, r4
 1853 00ee 2946     		mov	r1, r5
 1854 00f0 FFF7FEFF 		bl	__aeabi_dmul
 1855 00f4 0246     		mov	r2, r0
 1856 00f6 0B46     		mov	r3, r1
 1857 00f8 3046     		mov	r0, r6
 1858 00fa 3946     		mov	r1, r7
 1859 00fc FFF7FEFF 		bl	__aeabi_dadd
 1860 0100 28EE888A 		fmuls	s16, s17, s16
 1861 0104 D8EDA27A 		flds	s15, [r8, #648]
 1862 0108 68EE277A 		fmuls	s15, s16, s15
 1863 010c 0446     		mov	r4, r0
 1864 010e 17EE900A 		fmrs	r0, s15
 1865 0112 0D46     		mov	r5, r1
 1866 0114 FFF7FEFF 		bl	__aeabi_f2d
 1867 0118 0246     		mov	r2, r0
 1868 011a 0B46     		mov	r3, r1
 1869 011c 2046     		mov	r0, r4
 1870 011e 2946     		mov	r1, r5
 1871 0120 FFF7FEFF 		bl	__aeabi_dadd
 1872 0124 FFF7FEFF 		bl	__aeabi_d2f
 1873 0128 04B0     		add	sp, sp, #16
 1874              		@ sp needed
 1875 012a BDEC028B 		fldmfdd	sp!, {d8}
 1876 012e BDE8F08D 		pop	{r4, r5, r6, r7, r8, r10, fp, pc}
 1877              	.L207:
 1878 0132 00BF     		.align	2
 1879              	.L206:
 1880 0134 0000F03F 		.word	1072693248
 1881              		.size	_ZNK4Move22SecondDegreeTransformZEff, .-_ZNK4Move22SecondDegreeTransformZEff
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 34


 1882              		.section	.text._ZNK4Move12BedTransformEPfm,"ax",%progbits
 1883              		.align	2
 1884              		.global	_ZNK4Move12BedTransformEPfm
 1885              		.thumb
 1886              		.thumb_func
 1887              		.type	_ZNK4Move12BedTransformEPfm, %function
 1888              	_ZNK4Move12BedTransformEPfm:
 1889              		@ args = 0, pretend = 0, frame = 8
 1890              		@ frame_needed = 0, uses_anonymous_args = 0
 1891 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 1892 0004 2DED028B 		fstmfdd	sp!, {d8}
 1893 0008 90F80C3A 		ldrb	r3, [r0, #2572]	@ zero_extendqisi2
 1894 000c 83B0     		sub	sp, sp, #12
 1895 000e 0646     		mov	r6, r0
 1896 0010 8A46     		mov	r10, r1
 1897 0012 9146     		mov	r9, r2
 1898 0014 53B1     		cbz	r3, .L209
 1899 0016 00F60422 		addw	r2, r0, #2564
 1900 001a D2ED007A 		flds	s15, [r2]
 1901 001e 91ED027A 		flds	s14, [r1, #8]
 1902 0022 B4EEE77A 		fcmpes	s14, s15
 1903 0026 F1EE10FA 		fmstat
 1904 002a 43D5     		bpl	.L208
 1905              	.L209:
 1906 002c 464A     		ldr	r2, .L234
 1907 002e 1269     		ldr	r2, [r2, #16]
 1908 0030 D2F8B081 		ldr	r8, [r2, #432]
 1909 0034 B8F1000F 		cmp	r8, #0
 1910 0038 00F08280 		beq	.L224
 1911 003c 0024     		movs	r4, #0
 1912 003e 06F52163 		add	r3, r6, #2576
 1913 0042 9FED428A 		flds	s16, .L234+4
 1914 0046 0193     		str	r3, [sp, #4]
 1915 0048 2746     		mov	r7, r4
 1916 004a 5546     		mov	r5, r10
 1917 004c 4FF0010B 		mov	fp, #1
 1918              	.L221:
 1919 0050 0BFA04F3 		lsl	r3, fp, r4
 1920 0054 13EA090F 		tst	r3, r9
 1921 0058 16D0     		beq	.L213
 1922 005a D6F8F839 		ldr	r3, [r6, #2552]
 1923 005e D5ED007A 		flds	s15, [r5]
 1924 0062 052B     		cmp	r3, #5
 1925 0064 0FD8     		bhi	.L214
 1926 0066 DFE803F0 		tbb	[pc, r3]
 1927              	.L216:
 1928 006a 2A       		.byte	(.L215-.L216)/2
 1929 006b 0E       		.byte	(.L214-.L216)/2
 1930 006c 0E       		.byte	(.L214-.L216)/2
 1931 006d 42       		.byte	(.L217-.L216)/2
 1932 006e 36       		.byte	(.L218-.L216)/2
 1933 006f 03       		.byte	(.L219-.L216)/2
 1934              		.align	1
 1935              	.L219:
 1936 0070 3046     		mov	r0, r6
 1937 0072 17EE901A 		fmrs	r1, s15
 1938 0076 DAF80420 		ldr	r2, [r10, #4]	@ float
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 35


 1939 007a FFF7FEFF 		bl	_ZNK4Move9TriangleZEff
 1940 007e 07EE100A 		fmsr	s14, r0
 1941 0082 38EE078A 		fadds	s16, s16, s14
 1942              	.L214:
 1943 0086 0137     		adds	r7, r7, #1
 1944              	.L213:
 1945 0088 0134     		adds	r4, r4, #1
 1946 008a 4445     		cmp	r4, r8
 1947 008c 05F10405 		add	r5, r5, #4
 1948 0090 DED1     		bne	.L221
 1949 0092 012F     		cmp	r7, #1
 1950 0094 51D9     		bls	.L232
 1951 0096 07EE107A 		fmsr	s14, r7	@ int
 1952 009a F8EE477A 		fuitos	s15, s14
 1953 009e 96F80C3A 		ldrb	r3, [r6, #2572]	@ zero_extendqisi2
 1954 00a2 88EE278A 		fdivs	s16, s16, s15
 1955              	.L212:
 1956 00a6 DAED027A 		flds	s15, [r10, #8]
 1957 00aa BBBB     		cbnz	r3, .L233
 1958              	.L223:
 1959 00ac 77EE887A 		fadds	s15, s15, s16
 1960 00b0 CAED027A 		fsts	s15, [r10, #8]
 1961              	.L208:
 1962 00b4 03B0     		add	sp, sp, #12
 1963              		@ sp needed
 1964 00b6 BDEC028B 		fldmfdd	sp!, {d8}
 1965 00ba BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 1966              	.L215:
 1967 00be 0198     		ldr	r0, [sp, #4]
 1968 00c0 DAF80420 		ldr	r2, [r10, #4]	@ float
 1969 00c4 17EE901A 		fmrs	r1, s15
 1970 00c8 FFF7FEFF 		bl	_ZNK9HeightMap26GetInterpolatedHeightErrorEff
 1971 00cc 07EE100A 		fmsr	s14, r0
 1972 00d0 38EE078A 		fadds	s16, s16, s14
 1973 00d4 D7E7     		b	.L214
 1974              	.L218:
 1975 00d6 17EE901A 		fmrs	r1, s15
 1976 00da 3046     		mov	r0, r6
 1977 00dc DAF80420 		ldr	r2, [r10, #4]	@ float
 1978 00e0 FFF7FEFF 		bl	_ZNK4Move22SecondDegreeTransformZEff
 1979 00e4 07EE900A 		fmsr	s15, r0
 1980 00e8 38EE278A 		fadds	s16, s16, s15
 1981 00ec CBE7     		b	.L214
 1982              	.L217:
 1983 00ee 06F6E413 		addw	r3, r6, #2532
 1984 00f2 D3ED006A 		flds	s13, [r3]
 1985 00f6 9AED017A 		flds	s14, [r10, #4]
 1986 00fa 06F51E63 		add	r3, r6, #2528
 1987 00fe 26EE877A 		fmuls	s14, s13, s14
 1988 0102 D3ED006A 		flds	s13, [r3]
 1989 0106 A6EEA77A 		vfma.f32	s14, s13, s15
 1990 010a 06F6E813 		addw	r3, r6, #2536
 1991 010e D3ED007A 		flds	s15, [r3]
 1992 0112 37EE277A 		fadds	s14, s14, s15
 1993 0116 38EE078A 		fadds	s16, s16, s14
 1994 011a B4E7     		b	.L214
 1995              	.L233:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 36


 1996 011c 06F60423 		addw	r3, r6, #2564
 1997 0120 D3ED006A 		flds	s13, [r3]
 1998 0124 06F60826 		addw	r6, r6, #2568
 1999 0128 76EEE76A 		fsubs	s13, s13, s15
 2000 012c 96ED007A 		flds	s14, [r6]
 2001 0130 26EE877A 		fmuls	s14, s13, s14
 2002 0134 27EE088A 		fmuls	s16, s14, s16
 2003 0138 B8E7     		b	.L223
 2004              	.L232:
 2005 013a 96F80C3A 		ldrb	r3, [r6, #2572]	@ zero_extendqisi2
 2006 013e B2E7     		b	.L212
 2007              	.L224:
 2008 0140 9FED028A 		flds	s16, .L234+4
 2009 0144 AFE7     		b	.L212
 2010              	.L235:
 2011 0146 00BF     		.align	2
 2012              	.L234:
 2013 0148 00000000 		.word	reprap
 2014 014c 00000000 		.word	0
 2015              		.size	_ZNK4Move12BedTransformEPfm, .-_ZNK4Move12BedTransformEPfm
 2016              		.section	.text._ZNK4Move9TransformEPfmb,"ax",%progbits
 2017              		.align	2
 2018              		.global	_ZNK4Move9TransformEPfmb
 2019              		.thumb
 2020              		.thumb_func
 2021              		.type	_ZNK4Move9TransformEPfmb, %function
 2022              	_ZNK4Move9TransformEPfmb:
 2023              		@ args = 0, pretend = 0, frame = 0
 2024              		@ frame_needed = 0, uses_anonymous_args = 0
 2025              		@ link register save eliminated.
 2026 0000 70B4     		push	{r4, r5, r6}
 2027 0002 00F6F416 		addw	r6, r0, #2548
 2028 0006 D6ED007A 		flds	s15, [r6]
 2029 000a D1ED026A 		flds	s13, [r1, #8]
 2030 000e 91ED017A 		flds	s14, [r1, #4]
 2031 0012 91ED006A 		flds	s12, [r1]
 2032 0016 00F6EC16 		addw	r6, r0, #2540
 2033 001a D6ED005A 		flds	s11, [r6]
 2034 001e 66EEA77A 		fmuls	s15, s13, s15
 2035 0022 00F51F65 		add	r5, r0, #2544
 2036 0026 E5EE877A 		vfma.f32	s15, s11, s14
 2037 002a 76EE277A 		fadds	s15, s12, s15
 2038 002e C1ED007A 		fsts	s15, [r1]
 2039 0032 D5ED007A 		flds	s15, [r5]
 2040 0036 A6EEA77A 		vfma.f32	s14, s13, s15
 2041 003a 81ED017A 		fsts	s14, [r1, #4]
 2042 003e 0BB9     		cbnz	r3, .L238
 2043 0040 70BC     		pop	{r4, r5, r6}
 2044 0042 7047     		bx	lr
 2045              	.L238:
 2046 0044 70BC     		pop	{r4, r5, r6}
 2047 0046 FFF7FEBF 		b	_ZNK4Move12BedTransformEPfm
 2048              		.size	_ZNK4Move9TransformEPfmb, .-_ZNK4Move9TransformEPfmb
 2049              		.global	__aeabi_ddiv
 2050 004a 00BF     		.section	.text._ZNK4Move19InverseBedTransformEPfm,"ax",%progbits
 2051              		.align	2
 2052              		.global	_ZNK4Move19InverseBedTransformEPfm
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 37


 2053              		.thumb
 2054              		.thumb_func
 2055              		.type	_ZNK4Move19InverseBedTransformEPfm, %function
 2056              	_ZNK4Move19InverseBedTransformEPfm:
 2057              		@ args = 0, pretend = 0, frame = 8
 2058              		@ frame_needed = 0, uses_anonymous_args = 0
 2059 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2060 0004 2DED028B 		fstmfdd	sp!, {d8}
 2061 0008 5B4B     		ldr	r3, .L264
 2062 000a 1B69     		ldr	r3, [r3, #16]
 2063 000c D3F8B091 		ldr	r9, [r3, #432]
 2064 0010 83B0     		sub	sp, sp, #12
 2065 0012 0746     		mov	r7, r0
 2066 0014 0E46     		mov	r6, r1
 2067 0016 9346     		mov	fp, r2
 2068 0018 B9F1000F 		cmp	r9, #0
 2069 001c 00F0A980 		beq	.L255
 2070 0020 0024     		movs	r4, #0
 2071 0022 00F52163 		add	r3, r0, #2576
 2072 0026 9FED558A 		flds	s16, .L264+4
 2073 002a 0193     		str	r3, [sp, #4]
 2074 002c A046     		mov	r8, r4
 2075 002e 0D46     		mov	r5, r1
 2076 0030 4FF0010A 		mov	r10, #1
 2077              	.L249:
 2078 0034 0AFA04F3 		lsl	r3, r10, r4
 2079 0038 13EA0B0F 		tst	r3, fp
 2080 003c 16D0     		beq	.L241
 2081 003e D7F8F839 		ldr	r3, [r7, #2552]
 2082 0042 D5ED007A 		flds	s15, [r5]
 2083 0046 052B     		cmp	r3, #5
 2084 0048 0ED8     		bhi	.L242
 2085 004a DFE803F0 		tbb	[pc, r3]
 2086              	.L244:
 2087 004e 7C       		.byte	(.L243-.L244)/2
 2088 004f 0D       		.byte	(.L242-.L244)/2
 2089 0050 0D       		.byte	(.L242-.L244)/2
 2090 0051 5A       		.byte	(.L245-.L244)/2
 2091 0052 71       		.byte	(.L246-.L244)/2
 2092 0053 03       		.byte	(.L247-.L244)/2
 2093              		.align	1
 2094              	.L247:
 2095 0054 3846     		mov	r0, r7
 2096 0056 17EE901A 		fmrs	r1, s15
 2097 005a 7268     		ldr	r2, [r6, #4]	@ float
 2098 005c FFF7FEFF 		bl	_ZNK4Move9TriangleZEff
 2099 0060 07EE100A 		fmsr	s14, r0
 2100 0064 38EE078A 		fadds	s16, s16, s14
 2101              	.L242:
 2102 0068 08F10108 		add	r8, r8, #1
 2103              	.L241:
 2104 006c 0134     		adds	r4, r4, #1
 2105 006e 4C45     		cmp	r4, r9
 2106 0070 05F10405 		add	r5, r5, #4
 2107 0074 DED1     		bne	.L249
 2108 0076 B8F1010F 		cmp	r8, #1
 2109 007a 05D9     		bls	.L240
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 38


 2110 007c 07EE108A 		fmsr	s14, r8	@ int
 2111 0080 F8EE477A 		fuitos	s15, s14
 2112 0084 88EE278A 		fdivs	s16, s16, s15
 2113              	.L240:
 2114 0088 97F80C3A 		ldrb	r3, [r7, #2572]	@ zero_extendqisi2
 2115 008c 002B     		cmp	r3, #0
 2116 008e 65D0     		beq	.L250
 2117 0090 07F60423 		addw	r3, r7, #2564
 2118 0094 D3ED008A 		flds	s17, [r3]
 2119 0098 B4EEE88A 		fcmpes	s16, s17
 2120 009c F1EE10FA 		fmstat
 2121 00a0 5CDA     		bge	.L250
 2122 00a2 D6ED027A 		flds	s15, [r6, #8]
 2123 00a6 77EEC87A 		fsubs	s15, s15, s16
 2124 00aa 07F60827 		addw	r7, r7, #2568
 2125 00ae 17EE900A 		fmrs	r0, s15
 2126 00b2 FFF7FEFF 		bl	__aeabi_f2d
 2127 00b6 D7ED007A 		flds	s15, [r7]
 2128 00ba 68EE277A 		fmuls	s15, s16, s15
 2129 00be 0446     		mov	r4, r0
 2130 00c0 17EE900A 		fmrs	r0, s15
 2131 00c4 0D46     		mov	r5, r1
 2132 00c6 FFF7FEFF 		bl	__aeabi_f2d
 2133 00ca 0246     		mov	r2, r0
 2134 00cc 0B46     		mov	r3, r1
 2135 00ce 0020     		movs	r0, #0
 2136 00d0 2B49     		ldr	r1, .L264+8
 2137 00d2 FFF7FEFF 		bl	__aeabi_dsub
 2138 00d6 0246     		mov	r2, r0
 2139 00d8 0B46     		mov	r3, r1
 2140 00da 2046     		mov	r0, r4
 2141 00dc 2946     		mov	r1, r5
 2142 00de FFF7FEFF 		bl	__aeabi_ddiv
 2143 00e2 FFF7FEFF 		bl	__aeabi_d2f
 2144 00e6 07EE900A 		fmsr	s15, r0
 2145 00ea F4EEE78A 		fcmpes	s17, s15
 2146 00ee F1EE10FA 		fmstat
 2147 00f2 C8BF     		it	gt
 2148 00f4 C6ED027A 		fstsgt	s15, [r6, #8]
 2149 00f8 03B0     		add	sp, sp, #12
 2150              		@ sp needed
 2151 00fa BDEC028B 		fldmfdd	sp!, {d8}
 2152 00fe BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2153              	.L245:
 2154 0102 07F6E413 		addw	r3, r7, #2532
 2155 0106 D3ED006A 		flds	s13, [r3]
 2156 010a 96ED017A 		flds	s14, [r6, #4]
 2157 010e 07F51E63 		add	r3, r7, #2528
 2158 0112 26EE877A 		fmuls	s14, s13, s14
 2159 0116 D3ED006A 		flds	s13, [r3]
 2160 011a A6EEA77A 		vfma.f32	s14, s13, s15
 2161 011e 07F6E813 		addw	r3, r7, #2536
 2162 0122 D3ED007A 		flds	s15, [r3]
 2163 0126 37EE277A 		fadds	s14, s14, s15
 2164 012a 38EE078A 		fadds	s16, s16, s14
 2165 012e 9BE7     		b	.L242
 2166              	.L246:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 39


 2167 0130 17EE901A 		fmrs	r1, s15
 2168 0134 3846     		mov	r0, r7
 2169 0136 7268     		ldr	r2, [r6, #4]	@ float
 2170 0138 FFF7FEFF 		bl	_ZNK4Move22SecondDegreeTransformZEff
 2171 013c 07EE900A 		fmsr	s15, r0
 2172 0140 38EE278A 		fadds	s16, s16, s15
 2173 0144 90E7     		b	.L242
 2174              	.L243:
 2175 0146 0198     		ldr	r0, [sp, #4]
 2176 0148 7268     		ldr	r2, [r6, #4]	@ float
 2177 014a 17EE901A 		fmrs	r1, s15
 2178 014e FFF7FEFF 		bl	_ZNK9HeightMap26GetInterpolatedHeightErrorEff
 2179 0152 07EE100A 		fmsr	s14, r0
 2180 0156 38EE078A 		fadds	s16, s16, s14
 2181 015a 85E7     		b	.L242
 2182              	.L250:
 2183 015c D6ED027A 		flds	s15, [r6, #8]
 2184 0160 37EEC88A 		fsubs	s16, s15, s16
 2185 0164 86ED028A 		fsts	s16, [r6, #8]
 2186 0168 03B0     		add	sp, sp, #12
 2187              		@ sp needed
 2188 016a BDEC028B 		fldmfdd	sp!, {d8}
 2189 016e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 2190              	.L255:
 2191 0172 9FED028A 		flds	s16, .L264+4
 2192 0176 87E7     		b	.L240
 2193              	.L265:
 2194              		.align	2
 2195              	.L264:
 2196 0178 00000000 		.word	reprap
 2197 017c 00000000 		.word	0
 2198 0180 0000F03F 		.word	1072693248
 2199              		.size	_ZNK4Move19InverseBedTransformEPfm, .-_ZNK4Move19InverseBedTransformEPfm
 2200              		.section	.text._ZNK4Move16InverseTransformEPfm,"ax",%progbits
 2201              		.align	2
 2202              		.global	_ZNK4Move16InverseTransformEPfm
 2203              		.thumb
 2204              		.thumb_func
 2205              		.type	_ZNK4Move16InverseTransformEPfm, %function
 2206              	_ZNK4Move16InverseTransformEPfm:
 2207              		@ args = 0, pretend = 0, frame = 0
 2208              		@ frame_needed = 0, uses_anonymous_args = 0
 2209 0000 38B5     		push	{r3, r4, r5, lr}
 2210 0002 0546     		mov	r5, r0
 2211 0004 0C46     		mov	r4, r1
 2212 0006 FFF7FEFF 		bl	_ZNK4Move19InverseBedTransformEPfm
 2213 000a 05F51F63 		add	r3, r5, #2544
 2214 000e 93ED007A 		flds	s14, [r3]
 2215 0012 D4ED026A 		flds	s13, [r4, #8]
 2216 0016 D4ED017A 		flds	s15, [r4, #4]
 2217 001a 94ED006A 		flds	s12, [r4]
 2218 001e E7EE667A 		vfms.f32	s15, s14, s13
 2219 0022 05F6F413 		addw	r3, r5, #2548
 2220 0026 05F6EC15 		addw	r5, r5, #2540
 2221 002a C4ED017A 		fsts	s15, [r4, #4]
 2222 002e 93ED007A 		flds	s14, [r3]
 2223 0032 D5ED005A 		flds	s11, [r5]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 40


 2224 0036 26EE877A 		fmuls	s14, s13, s14
 2225 003a A7EEA57A 		vfma.f32	s14, s15, s11
 2226 003e 36EE477A 		fsubs	s14, s12, s14
 2227 0042 84ED007A 		fsts	s14, [r4]
 2228 0046 38BD     		pop	{r3, r4, r5, pc}
 2229              		.size	_ZNK4Move16InverseTransformEPfm, .-_ZNK4Move16InverseTransformEPfm
 2230              		.section	.text._ZN4Move19DeltaProbeInterruptEv,"ax",%progbits
 2231              		.align	2
 2232              		.global	_ZN4Move19DeltaProbeInterruptEv
 2233              		.thumb
 2234              		.thumb_func
 2235              		.type	_ZN4Move19DeltaProbeInterruptEv, %function
 2236              	_ZN4Move19DeltaProbeInterruptEv:
 2237              		@ args = 0, pretend = 0, frame = 0
 2238              		@ frame_needed = 0, uses_anonymous_args = 0
 2239 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 2240 0004 DFF8B880 		ldr	r8, .L284+4
 2241 0008 2C4F     		ldr	r7, .L284
 2242 000a 8146     		mov	r9, r0
 2243 000c 00F53166 		add	r6, r0, #2832
 2244 0010 D8F80000 		ldr	r0, [r8]
 2245 0014 FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 2246 0018 0128     		cmp	r0, #1
 2247 001a 4AD0     		beq	.L282
 2248              	.L268:
 2249 001c 3046     		mov	r0, r6
 2250 001e FFF7FEFF 		bl	_ZNK10DeltaProbe12GetDirectionEv
 2251 0022 D8F80040 		ldr	r4, [r8]
 2252 0026 0546     		mov	r5, r0
 2253 0028 0246     		mov	r2, r0
 2254 002a 0021     		movs	r1, #0
 2255 002c 2046     		mov	r0, r4
 2256 002e FFF7FEFF 		bl	_ZN8Platform12SetDirectionEjb
 2257 0032 2046     		mov	r0, r4
 2258 0034 2A46     		mov	r2, r5
 2259 0036 0121     		movs	r1, #1
 2260 0038 FFF7FEFF 		bl	_ZN8Platform12SetDirectionEjb
 2261 003c 2046     		mov	r0, r4
 2262 003e 2A46     		mov	r2, r5
 2263 0040 0221     		movs	r1, #2
 2264 0042 FFF7FEFF 		bl	_ZN8Platform12SetDirectionEjb
 2265 0046 0A23     		movs	r3, #10
 2266              	.L270:
 2267              	@ 1273 "../src/Movement/Move.cpp" 1
 2268 0048 00BF     		nop
 2269              	@ 0 "" 2
 2270              	@ 1274 "../src/Movement/Move.cpp" 1
 2271 004a 00BF     		nop
 2272              	@ 0 "" 2
 2273              	@ 1275 "../src/Movement/Move.cpp" 1
 2274 004c 00BF     		nop
 2275              	@ 0 "" 2
 2276              	@ 1276 "../src/Movement/Move.cpp" 1
 2277 004e 00BF     		nop
 2278              	@ 0 "" 2
 2279              	@ 1277 "../src/Movement/Move.cpp" 1
 2280 0050 00BF     		nop
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 41


 2281              	@ 0 "" 2
 2282              	@ 1278 "../src/Movement/Move.cpp" 1
 2283 0052 00BF     		nop
 2284              	@ 0 "" 2
 2285              	@ 1279 "../src/Movement/Move.cpp" 1
 2286 0054 00BF     		nop
 2287              	@ 0 "" 2
 2288              	@ 1280 "../src/Movement/Move.cpp" 1
 2289 0056 00BF     		nop
 2290              	@ 0 "" 2
 2291              	@ 1281 "../src/Movement/Move.cpp" 1
 2292 0058 00BF     		nop
 2293              	@ 0 "" 2
 2294              		.thumb
 2295 005a 013B     		subs	r3, r3, #1
 2296 005c F4D1     		bne	.L270
 2297 005e D4F84012 		ldr	r1, [r4, #576]
 2298 0062 D4F83C32 		ldr	r3, [r4, #572]
 2299 0066 D4F84422 		ldr	r2, [r4, #580]
 2300 006a 0B43     		orrs	r3, r3, r1
 2301 006c 1343     		orrs	r3, r3, r2
 2302 006e BB63     		str	r3, [r7, #56]
 2303 0070 0A23     		movs	r3, #10
 2304              	.L272:
 2305              	@ 1273 "../src/Movement/Move.cpp" 1
 2306 0072 00BF     		nop
 2307              	@ 0 "" 2
 2308              	@ 1274 "../src/Movement/Move.cpp" 1
 2309 0074 00BF     		nop
 2310              	@ 0 "" 2
 2311              	@ 1275 "../src/Movement/Move.cpp" 1
 2312 0076 00BF     		nop
 2313              	@ 0 "" 2
 2314              	@ 1276 "../src/Movement/Move.cpp" 1
 2315 0078 00BF     		nop
 2316              	@ 0 "" 2
 2317              	@ 1277 "../src/Movement/Move.cpp" 1
 2318 007a 00BF     		nop
 2319              	@ 0 "" 2
 2320              	@ 1278 "../src/Movement/Move.cpp" 1
 2321 007c 00BF     		nop
 2322              	@ 0 "" 2
 2323              	@ 1279 "../src/Movement/Move.cpp" 1
 2324 007e 00BF     		nop
 2325              	@ 0 "" 2
 2326              	@ 1280 "../src/Movement/Move.cpp" 1
 2327 0080 00BF     		nop
 2328              	@ 0 "" 2
 2329              	@ 1281 "../src/Movement/Move.cpp" 1
 2330 0082 00BF     		nop
 2331              	@ 0 "" 2
 2332              		.thumb
 2333 0084 013B     		subs	r3, r3, #1
 2334 0086 F4D1     		bne	.L272
 2335 0088 BB63     		str	r3, [r7, #56]
 2336 008a 3046     		mov	r0, r6
 2337 008c FFF7FEFF 		bl	_ZN10DeltaProbe16CalcNextStepTimeEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 42


 2338 0090 431C     		adds	r3, r0, #1
 2339 0092 01D1     		bne	.L283
 2340              	.L267:
 2341 0094 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 2342              	.L283:
 2343 0098 D9F8283C 		ldr	r3, [r9, #3112]
 2344 009c 1844     		add	r0, r0, r3
 2345 009e FFF7FEFF 		bl	_ZN8Platform17ScheduleInterruptEm
 2346 00a2 0028     		cmp	r0, #0
 2347 00a4 F6D0     		beq	.L267
 2348 00a6 D8F80000 		ldr	r0, [r8]
 2349 00aa FFF7FEFF 		bl	_ZNK8Platform15GetZProbeResultEv
 2350 00ae 0128     		cmp	r0, #1
 2351 00b0 B4D1     		bne	.L268
 2352              	.L282:
 2353 00b2 3046     		mov	r0, r6
 2354 00b4 FFF7FEFF 		bl	_ZN10DeltaProbe7TriggerEv
 2355 00b8 B0E7     		b	.L268
 2356              	.L285:
 2357 00ba 00BF     		.align	2
 2358              	.L284:
 2359 00bc 00140E40 		.word	1074664448
 2360 00c0 00000000 		.word	reprap
 2361              		.size	_ZN4Move19DeltaProbeInterruptEv, .-_ZN4Move19DeltaProbeInterruptEv
 2362              		.section	.text._ZN4Move20CurrentMoveCompletedEv,"ax",%progbits
 2363              		.align	2
 2364              		.global	_ZN4Move20CurrentMoveCompletedEv
 2365              		.thumb
 2366              		.thumb_func
 2367              		.type	_ZN4Move20CurrentMoveCompletedEv, %function
 2368              	_ZN4Move20CurrentMoveCompletedEv:
 2369              		@ args = 0, pretend = 0, frame = 0
 2370              		@ frame_needed = 0, uses_anonymous_args = 0
 2371 0000 0146     		mov	r1, r0
 2372 0002 00F12C02 		add	r2, r0, #44
 2373 0006 10B5     		push	{r4, lr}
 2374 0008 0446     		mov	r4, r0
 2375 000a 51F8580B 		ldr	r0, [r1], #88
 2376 000e FFF7FEFF 		bl	_ZN3DDA16FetchEndPositionEPVlPVf
 2377 0012 84F85400 		strb	r0, [r4, #84]
 2378 0016 2268     		ldr	r2, [r4]
 2379 0018 0023     		movs	r3, #0
 2380 001a 0421     		movs	r1, #4
 2381 001c 1172     		strb	r1, [r2, #8]
 2382 001e 2360     		str	r3, [r4]
 2383 0020 A368     		ldr	r3, [r4, #8]
 2384 0022 1B68     		ldr	r3, [r3]
 2385 0024 A360     		str	r3, [r4, #8]
 2386 0026 D4F8543C 		ldr	r3, [r4, #3156]
 2387 002a 0133     		adds	r3, r3, #1
 2388 002c C4F8543C 		str	r3, [r4, #3156]
 2389 0030 10BD     		pop	{r4, pc}
 2390              		.size	_ZN4Move20CurrentMoveCompletedEv, .-_ZN4Move20CurrentMoveCompletedEv
 2391 0032 00BF     		.section	.text._ZN4Move4SpinEv,"ax",%progbits
 2392              		.align	2
 2393              		.global	_ZN4Move4SpinEv
 2394              		.thumb
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 43


 2395              		.thumb_func
 2396              		.type	_ZN4Move4SpinEv, %function
 2397              	_ZN4Move4SpinEv:
 2398              		@ args = 0, pretend = 0, frame = 88
 2399              		@ frame_needed = 0, uses_anonymous_args = 0
 2400 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 2401 0004 2DED028B 		fstmfdd	sp!, {d8}
 2402 0008 037C     		ldrb	r3, [r0, #16]	@ zero_extendqisi2
 2403 000a 97B0     		sub	sp, sp, #92
 2404 000c 0446     		mov	r4, r0
 2405 000e 002B     		cmp	r3, #0
 2406 0010 57D0     		beq	.L287
 2407 0012 C369     		ldr	r3, [r0, #28]
 2408 0014 DFF8F082 		ldr	r8, .L389+8
 2409 0018 B3F57A7F 		cmp	r3, #1000
 2410 001c 3CBF     		itt	cc
 2411 001e 0133     		addcc	r3, r3, #1
 2412 0020 C361     		strcc	r3, [r0, #28]
 2413 0022 C068     		ldr	r0, [r0, #12]
 2414 0024 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 2415 0026 042B     		cmp	r3, #4
 2416 0028 08BF     		it	eq
 2417 002a 0025     		moveq	r5, #0
 2418 002c 1AD0     		beq	.L297
 2419 002e 4DE0     		b	.L296
 2420              	.L294:
 2421 0030 D8F80030 		ldr	r3, [r8]
 2422 0034 D4F84C1C 		ldr	r1, [r4, #3148]
 2423 0038 D3F8C420 		ldr	r2, [r3, #196]
 2424 003c 0131     		adds	r1, r1, #1
 2425 003e 42F00202 		orr	r2, r2, #2
 2426 0042 C4F84C1C 		str	r1, [r4, #3148]
 2427 0046 C3F8C420 		str	r2, [r3, #196]
 2428              	.L293:
 2429 004a E368     		ldr	r3, [r4, #12]
 2430 004c 5A7A     		ldrb	r2, [r3, #9]	@ zero_extendqisi2
 2431 004e 1D72     		strb	r5, [r3, #8]
 2432 0050 5206     		lsls	r2, r2, #25
 2433 0052 02D5     		bpl	.L295
 2434 0054 6269     		ldr	r2, [r4, #20]
 2435 0056 0132     		adds	r2, r2, #1
 2436 0058 6261     		str	r2, [r4, #20]
 2437              	.L295:
 2438 005a 1868     		ldr	r0, [r3]
 2439 005c E060     		str	r0, [r4, #12]
 2440 005e 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 2441 0060 042B     		cmp	r3, #4
 2442 0062 33D1     		bne	.L296
 2443              	.L297:
 2444 0064 FFF7FEFF 		bl	_ZNK3DDA12HasStepErrorEv
 2445 0068 0028     		cmp	r0, #0
 2446 006a EED0     		beq	.L293
 2447 006c B8F84030 		ldrh	r3, [r8, #64]
 2448 0070 D906     		lsls	r1, r3, #27
 2449 0072 DDD5     		bpl	.L294
 2450 0074 E068     		ldr	r0, [r4, #12]
 2451 0076 FFF7FEFF 		bl	_ZNK3DDA10DebugPrintEv
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 44


 2452 007a D9E7     		b	.L294
 2453              	.L332:
 2454 007c 2846     		mov	r0, r5
 2455 007e FFF7FEFF 		bl	_ZNK3DDA11GetTimeLeftEv
 2456 0082 2D68     		ldr	r5, [r5]
 2457 0084 6368     		ldr	r3, [r4, #4]
 2458 0086 AB42     		cmp	r3, r5
 2459 0088 06F10106 		add	r6, r6, #1
 2460 008c 0744     		add	r7, r7, r0
 2461 008e 62D1     		bne	.L337
 2462              	.L335:
 2463 0090 637C     		ldrb	r3, [r4, #17]	@ zero_extendqisi2
 2464 0092 83B1     		cbz	r3, .L315
 2465 0094 E369     		ldr	r3, [r4, #28]
 2466 0096 092B     		cmp	r3, #9
 2467 0098 0DD9     		bls	.L315
 2468 009a 2068     		ldr	r0, [r4]
 2469 009c FFF7FEFF 		bl	_ZNK3DDA8CalcTimeEv
 2470 00a0 D4ED0A7A 		flds	s15, [r4, #40]
 2471 00a4 07EE100A 		fmsr	s14, r0
 2472 00a8 77EE877A 		fadds	s15, s15, s14
 2473 00ac 2046     		mov	r0, r4
 2474 00ae C4ED0A7A 		fsts	s15, [r4, #40]
 2475 00b2 FFF7FEFF 		bl	_ZN4Move20CurrentMoveCompletedEv
 2476              	.L315:
 2477 00b6 D8F80000 		ldr	r0, [r8]
 2478 00ba 04F67C21 		addw	r1, r4, #2684
 2479 00be FFF7FEFF 		bl	_ZN8Platform11ClassReportERf
 2480              	.L287:
 2481 00c2 17B0     		add	sp, sp, #92
 2482              		@ sp needed
 2483 00c4 BDEC028B 		fldmfdd	sp!, {d8}
 2484 00c8 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 2485              	.L296:
 2486 00cc 6368     		ldr	r3, [r4, #4]
 2487 00ce 1A7A     		ldrb	r2, [r3, #8]	@ zero_extendqisi2
 2488 00d0 002A     		cmp	r2, #0
 2489 00d2 34D1     		bne	.L298
 2490 00d4 1A68     		ldr	r2, [r3]
 2491 00d6 127A     		ldrb	r2, [r2, #8]	@ zero_extendqisi2
 2492 00d8 012A     		cmp	r2, #1
 2493 00da 30D0     		beq	.L298
 2494 00dc 5D68     		ldr	r5, [r3, #4]
 2495 00de 2B7A     		ldrb	r3, [r5, #8]	@ zero_extendqisi2
 2496 00e0 012B     		cmp	r3, #1
 2497 00e2 1ED1     		bne	.L304
 2498 00e4 DFED867A 		flds	s15, .L389
 2499 00e8 B0EE678A 		fcpys	s16, s15
 2500              	.L303:
 2501 00ec 2846     		mov	r0, r5
 2502 00ee 38EE278A 		fadds	s16, s16, s15
 2503 00f2 FFF7FEFF 		bl	_ZNK3DDA8CalcTimeEv
 2504 00f6 6D68     		ldr	r5, [r5, #4]
 2505 00f8 2B7A     		ldrb	r3, [r5, #8]	@ zero_extendqisi2
 2506 00fa 012B     		cmp	r3, #1
 2507 00fc 07EE900A 		fmsr	s15, r0
 2508 0100 F4D0     		beq	.L303
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 45


 2509 0102 B6EE007A 		fconsts	s14, #96
 2510 0106 B4EEC78A 		fcmpes	s16, s14
 2511 010a F1EE10FA 		fmstat
 2512 010e 08D4     		bmi	.L304
 2513 0110 78EE277A 		fadds	s15, s16, s15
 2514 0114 B0EE007A 		fconsts	s14, #0
 2515 0118 F4EEC77A 		fcmpes	s15, s14
 2516 011c F1EE10FA 		fmstat
 2517 0120 0DD5     		bpl	.L298
 2518              	.L304:
 2519 0122 6946     		mov	r1, sp
 2520 0124 D8F81000 		ldr	r0, [r8, #16]
 2521 0128 FFF7FEFF 		bl	_ZN6GCodes8ReadMoveERNS_7RawMoveE
 2522 012c 0028     		cmp	r0, #0
 2523 012e 32D0     		beq	.L380
 2524 0130 A37C     		ldrb	r3, [r4, #18]	@ zero_extendqisi2
 2525 0132 002B     		cmp	r3, #0
 2526 0134 40F08380 		bne	.L381
 2527              	.L306:
 2528 0138 637C     		ldrb	r3, [r4, #17]	@ zero_extendqisi2
 2529 013a 012B     		cmp	r3, #1
 2530 013c 37D9     		bls	.L382
 2531              	.L298:
 2532 013e 94F82C3C 		ldrb	r3, [r4, #3116]	@ zero_extendqisi2
 2533 0142 002B     		cmp	r3, #0
 2534 0144 B7D1     		bne	.L315
 2535 0146 2368     		ldr	r3, [r4]
 2536 0148 002B     		cmp	r3, #0
 2537 014a 48D0     		beq	.L383
 2538              	.L316:
 2539 014c 2568     		ldr	r5, [r4]
 2540 014e 002D     		cmp	r5, #0
 2541 0150 B1D0     		beq	.L315
 2542 0152 0026     		movs	r6, #0
 2543 0154 3746     		mov	r7, r6
 2544              	.L337:
 2545 0156 2B7A     		ldrb	r3, [r5, #8]	@ zero_extendqisi2
 2546 0158 DBB2     		uxtb	r3, r3
 2547 015a 9A1E     		subs	r2, r3, #2
 2548 015c 022A     		cmp	r2, #2
 2549 015e 8DD9     		bls	.L332
 2550 0160 012B     		cmp	r3, #1
 2551 0162 95D1     		bne	.L335
 2552 0164 674B     		ldr	r3, .L389+4
 2553 0166 9F42     		cmp	r7, r3
 2554 0168 92DC     		bgt	.L335
 2555 016a 0E2E     		cmp	r6, #14
 2556 016c 90D8     		bhi	.L335
 2557 016e 9946     		mov	r9, r3
 2558 0170 03E0     		b	.L336
 2559              	.L384:
 2560 0172 4F45     		cmp	r7, r9
 2561 0174 8CDC     		bgt	.L335
 2562 0176 0F2E     		cmp	r6, #15
 2563 0178 8AD0     		beq	.L335
 2564              	.L336:
 2565 017a 2846     		mov	r0, r5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 46


 2566 017c FFF7FEFF 		bl	_ZN3DDA7PrepareEv
 2567 0180 2846     		mov	r0, r5
 2568 0182 FFF7FEFF 		bl	_ZNK3DDA11GetTimeLeftEv
 2569 0186 2D68     		ldr	r5, [r5]
 2570 0188 2B7A     		ldrb	r3, [r5, #8]	@ zero_extendqisi2
 2571 018a 012B     		cmp	r3, #1
 2572 018c 06F10106 		add	r6, r6, #1
 2573 0190 0744     		add	r7, r7, r0
 2574 0192 EED0     		beq	.L384
 2575 0194 7CE7     		b	.L335
 2576              	.L380:
 2577 0196 2368     		ldr	r3, [r4]
 2578 0198 002B     		cmp	r3, #0
 2579 019a D0D0     		beq	.L298
 2580 019c A37C     		ldrb	r3, [r4, #18]	@ zero_extendqisi2
 2581 019e 002B     		cmp	r3, #0
 2582 01a0 CDD1     		bne	.L298
 2583 01a2 FFF7FEFF 		bl	millis
 2584 01a6 0123     		movs	r3, #1
 2585 01a8 6062     		str	r0, [r4, #36]
 2586 01aa A374     		strb	r3, [r4, #18]
 2587 01ac C7E7     		b	.L298
 2588              	.L382:
 2589 01ae 9DF85230 		ldrb	r3, [sp, #82]	@ zero_extendqisi2
 2590 01b2 002B     		cmp	r3, #0
 2591 01b4 52D0     		beq	.L310
 2592 01b6 012B     		cmp	r3, #1
 2593 01b8 4CD0     		beq	.L385
 2594              	.L338:
 2595 01ba 0022     		movs	r2, #0
 2596              	.L311:
 2597 01bc 6946     		mov	r1, sp
 2598 01be 6068     		ldr	r0, [r4, #4]
 2599 01c0 FFF7FEFF 		bl	_ZN3DDA4InitERKN6GCodes7RawMoveEb
 2600 01c4 0028     		cmp	r0, #0
 2601 01c6 BAD0     		beq	.L298
 2602 01c8 6268     		ldr	r2, [r4, #4]
 2603 01ca D4F8503C 		ldr	r3, [r4, #3152]
 2604 01ce 1268     		ldr	r2, [r2]
 2605 01d0 6260     		str	r2, [r4, #4]
 2606 01d2 0133     		adds	r3, r3, #1
 2607 01d4 0022     		movs	r2, #0
 2608 01d6 C4F8503C 		str	r3, [r4, #3152]
 2609 01da E261     		str	r2, [r4, #28]
 2610 01dc AFE7     		b	.L298
 2611              	.L383:
 2612 01de E369     		ldr	r3, [r4, #28]
 2613 01e0 0A2B     		cmp	r3, #10
 2614 01e2 B3D9     		bls	.L316
 2615 01e4 A568     		ldr	r5, [r4, #8]
 2616 01e6 2B7A     		ldrb	r3, [r5, #8]	@ zero_extendqisi2
 2617 01e8 012B     		cmp	r3, #1
 2618 01ea 48D0     		beq	.L386
 2619              	.L317:
 2620 01ec 2B7A     		ldrb	r3, [r5, #8]	@ zero_extendqisi2
 2621 01ee 022B     		cmp	r3, #2
 2622 01f0 637C     		ldrb	r3, [r4, #17]	@ zero_extendqisi2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 47


 2623 01f2 3ED0     		beq	.L387
 2624 01f4 002B     		cmp	r3, #0
 2625 01f6 A9D1     		bne	.L316
 2626 01f8 94F8803A 		ldrb	r3, [r4, #2688]	@ zero_extendqisi2
 2627 01fc 012B     		cmp	r3, #1
 2628 01fe 56D0     		beq	.L388
 2629              	.L326:
 2630 0200 022B     		cmp	r3, #2
 2631 0202 A3D1     		bne	.L316
 2632 0204 D8F80000 		ldr	r0, [r8]
 2633 0208 3F4D     		ldr	r5, .L389+8
 2634 020a FFF7FEFF 		bl	_ZN8Platform4TimeEv
 2635 020e 04F67823 		addw	r3, r4, #2680
 2636 0212 93ED007A 		flds	s14, [r3]
 2637 0216 07EE900A 		fmsr	s15, r0
 2638 021a 04F67423 		addw	r3, r4, #2676
 2639 021e 37EEC77A 		fsubs	s14, s15, s14
 2640 0222 D3ED007A 		flds	s15, [r3]
 2641 0226 B4EEE77A 		fcmpes	s14, s15
 2642 022a F1EE10FA 		fmstat
 2643 022e 8DDB     		blt	.L316
 2644 0230 2868     		ldr	r0, [r5]
 2645 0232 FFF7FEFF 		bl	_ZN8Platform14SetDriversIdleEv
 2646 0236 0023     		movs	r3, #0
 2647 0238 84F8803A 		strb	r3, [r4, #2688]
 2648 023c 86E7     		b	.L316
 2649              	.L381:
 2650 023e 0023     		movs	r3, #0
 2651 0240 A374     		strb	r3, [r4, #18]
 2652 0242 FFF7FEFF 		bl	millis
 2653 0246 626A     		ldr	r2, [r4, #36]
 2654 0248 236A     		ldr	r3, [r4, #32]
 2655 024a 801A     		subs	r0, r0, r2
 2656 024c 9842     		cmp	r0, r3
 2657 024e 88BF     		it	hi
 2658 0250 2062     		strhi	r0, [r4, #32]
 2659 0252 71E7     		b	.L306
 2660              	.L385:
 2661 0254 94F8BC2A 		ldrb	r2, [r4, #2748]	@ zero_extendqisi2
 2662 0258 002A     		cmp	r2, #0
 2663 025a AED1     		bne	.L338
 2664              	.L310:
 2665 025c D3F10103 		rsbs	r3, r3, #1
 2666 0260 129A     		ldr	r2, [sp, #72]
 2667 0262 38BF     		it	cc
 2668 0264 0023     		movcc	r3, #0
 2669 0266 2046     		mov	r0, r4
 2670 0268 6946     		mov	r1, sp
 2671 026a FFF7FEFF 		bl	_ZNK4Move9TransformEPfmb
 2672 026e 0122     		movs	r2, #1
 2673 0270 A4E7     		b	.L311
 2674              	.L387:
 2675 0272 43B1     		cbz	r3, .L319
 2676 0274 2560     		str	r5, [r4]
 2677              	.L320:
 2678 0276 0123     		movs	r3, #1
 2679 0278 84F8803A 		strb	r3, [r4, #2688]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 48


 2680 027c 66E7     		b	.L316
 2681              	.L386:
 2682 027e 2846     		mov	r0, r5
 2683 0280 FFF7FEFF 		bl	_ZN3DDA7PrepareEv
 2684 0284 B2E7     		b	.L317
 2685              	.L319:
 2686 0286 FFF7FEFF 		bl	_ZN8Platform20DisableStepInterruptEv
 2687 028a 204B     		ldr	r3, .L389+12
 2688 028c D3F89010 		ldr	r1, [r3, #144]
 2689 0290 A368     		ldr	r3, [r4, #8]
 2690 0292 2360     		str	r3, [r4]
 2691 0294 2068     		ldr	r0, [r4]
 2692 0296 FFF7FEFF 		bl	_ZN3DDA5StartEm
 2693 029a 0028     		cmp	r0, #0
 2694 029c EBD0     		beq	.L320
 2695 029e 2368     		ldr	r3, [r4]
 2696 02a0 2BB3     		cbz	r3, .L322
 2697              	.L324:
 2698 02a2 2068     		ldr	r0, [r4]
 2699 02a4 FFF7FEFF 		bl	_ZN3DDA4StepEv
 2700 02a8 0028     		cmp	r0, #0
 2701 02aa FAD1     		bne	.L324
 2702 02ac E3E7     		b	.L320
 2703              	.L388:
 2704 02ae D8F81000 		ldr	r0, [r8, #16]
 2705 02b2 154D     		ldr	r5, .L389+8
 2706 02b4 FFF7FEFF 		bl	_ZNK6GCodes8IsPausedEv
 2707 02b8 90B9     		cbnz	r0, .L327
 2708 02ba 04F67423 		addw	r3, r4, #2676
 2709 02be D3ED007A 		flds	s15, [r3]
 2710 02c2 F5EEC07A 		fcmpezs	s15
 2711 02c6 F1EE10FA 		fmstat
 2712 02ca 09DD     		ble	.L327
 2713 02cc 2868     		ldr	r0, [r5]
 2714 02ce FFF7FEFF 		bl	_ZN8Platform4TimeEv
 2715 02d2 04F67822 		addw	r2, r4, #2680
 2716 02d6 0223     		movs	r3, #2
 2717 02d8 1060     		str	r0, [r2]	@ float
 2718 02da 84F8803A 		strb	r3, [r4, #2688]
 2719 02de 35E7     		b	.L316
 2720              	.L327:
 2721 02e0 637C     		ldrb	r3, [r4, #17]	@ zero_extendqisi2
 2722 02e2 002B     		cmp	r3, #0
 2723 02e4 7FF432AF 		bne	.L316
 2724 02e8 94F8803A 		ldrb	r3, [r4, #2688]	@ zero_extendqisi2
 2725 02ec 88E7     		b	.L326
 2726              	.L322:
 2727 02ee 94F82C3C 		ldrb	r3, [r4, #3116]	@ zero_extendqisi2
 2728 02f2 002B     		cmp	r3, #0
 2729 02f4 BFD0     		beq	.L320
 2730 02f6 2046     		mov	r0, r4
 2731 02f8 FFF7FEFF 		bl	_ZN4Move19DeltaProbeInterruptEv
 2732 02fc BBE7     		b	.L320
 2733              	.L390:
 2734 02fe 00BF     		.align	2
 2735              	.L389:
 2736 0300 00000000 		.word	0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 49


 2737 0304 C2C90100 		.word	117186
 2738 0308 00000000 		.word	reprap
 2739 030c 00000940 		.word	1074331648
 2740              		.size	_ZN4Move4SpinEv, .-_ZN4Move4SpinEv
 2741              		.section	.text._ZN4Move16TryStartNextMoveEm,"ax",%progbits
 2742              		.align	2
 2743              		.global	_ZN4Move16TryStartNextMoveEm
 2744              		.thumb
 2745              		.thumb_func
 2746              		.type	_ZN4Move16TryStartNextMoveEm, %function
 2747              	_ZN4Move16TryStartNextMoveEm:
 2748              		@ args = 0, pretend = 0, frame = 0
 2749              		@ frame_needed = 0, uses_anonymous_args = 0
 2750 0000 08B5     		push	{r3, lr}
 2751 0002 8368     		ldr	r3, [r0, #8]
 2752 0004 1B7A     		ldrb	r3, [r3, #8]	@ zero_extendqisi2
 2753 0006 DBB2     		uxtb	r3, r3
 2754 0008 022B     		cmp	r3, #2
 2755 000a 35D0     		beq	.L401
 2756 000c 012B     		cmp	r3, #1
 2757 000e 2FD0     		beq	.L402
 2758              	.L393:
 2759 0010 1D4B     		ldr	r3, .L404
 2760 0012 1B68     		ldr	r3, [r3]
 2761 0014 03F5A262 		add	r2, r3, #1296
 2762 0018 D2ED007A 		flds	s15, [r2]
 2763 001c F5EEC07A 		fcmpezs	s15
 2764 0020 F1EE10FA 		fmstat
 2765 0024 1ADD     		ble	.L394
 2766 0026 93F81D25 		ldrb	r2, [r3, #1309]	@ zero_extendqisi2
 2767 002a 93F81C05 		ldrb	r0, [r3, #1308]	@ zero_extendqisi2
 2768 002e 9FED177A 		flds	s14, .L404+4
 2769 0032 002A     		cmp	r2, #0
 2770 0034 F7EE007A 		fconsts	s15, #112
 2771 0038 08BF     		it	eq
 2772 003a F0EE477A 		fcpyseq	s15, s14
 2773 003e 03F21453 		addw	r3, r3, #1300
 2774 0042 C728     		cmp	r0, #199
 2775 0044 93ED007A 		flds	s14, [r3]
 2776 0048 0AD8     		bhi	.L403
 2777 004a BCEEC77A 		ftouizs	s14, s14
 2778 004e 17EE901A 		fmrs	r1, s15
 2779 0052 17EE102A 		fmrs	r2, s14	@ int
 2780 0056 92B2     		uxth	r2, r2
 2781 0058 FFF7FEFF 		bl	_Z9AnalogOuthft
 2782              	.L394:
 2783 005c 0020     		movs	r0, #0
 2784 005e 08BD     		pop	{r3, pc}
 2785              	.L403:
 2786 0060 3830     		adds	r0, r0, #56
 2787 0062 C0B2     		uxtb	r0, r0
 2788 0064 17EE901A 		fmrs	r1, s15
 2789 0068 FFF7FEFF 		bl	_ZN13DuetExpansion9AnalogOutEhf
 2790 006c 0020     		movs	r0, #0
 2791 006e 08BD     		pop	{r3, pc}
 2792              	.L402:
 2793 0070 8369     		ldr	r3, [r0, #24]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 50


 2794 0072 0133     		adds	r3, r3, #1
 2795 0074 8361     		str	r3, [r0, #24]
 2796 0076 CBE7     		b	.L393
 2797              	.L401:
 2798 0078 8368     		ldr	r3, [r0, #8]
 2799 007a 0360     		str	r3, [r0]
 2800 007c 0068     		ldr	r0, [r0]
 2801 007e BDE80840 		pop	{r3, lr}
 2802 0082 FFF7FEBF 		b	_ZN3DDA5StartEm
 2803              	.L405:
 2804 0086 00BF     		.align	2
 2805              	.L404:
 2806 0088 00000000 		.word	reprap
 2807 008c 00000000 		.word	0
 2808              		.size	_ZN4Move16TryStartNextMoveEm, .-_ZN4Move16TryStartNextMoveEm
 2809              		.section	.text._ZN4Move15ZProbeTriggeredEP3DDA,"ax",%progbits
 2810              		.align	2
 2811              		.global	_ZN4Move15ZProbeTriggeredEP3DDA
 2812              		.thumb
 2813              		.thumb_func
 2814              		.type	_ZN4Move15ZProbeTriggeredEP3DDA, %function
 2815              	_ZN4Move15ZProbeTriggeredEP3DDA:
 2816              		@ args = 0, pretend = 0, frame = 0
 2817              		@ frame_needed = 0, uses_anonymous_args = 0
 2818              		@ link register save eliminated.
 2819 0000 024B     		ldr	r3, .L407
 2820 0002 1B69     		ldr	r3, [r3, #16]
 2821 0004 0122     		movs	r2, #1
 2822 0006 83F8F022 		strb	r2, [r3, #752]
 2823 000a 7047     		bx	lr
 2824              	.L408:
 2825              		.align	2
 2826              	.L407:
 2827 000c 00000000 		.word	reprap
 2828              		.size	_ZN4Move15ZProbeTriggeredEP3DDA, .-_ZN4Move15ZProbeTriggeredEP3DDA
 2829              		.section	.text._ZNK4Move25GetCurrentMachinePositionEPfb,"ax",%progbits
 2830              		.align	2
 2831              		.global	_ZNK4Move25GetCurrentMachinePositionEPfb
 2832              		.thumb
 2833              		.thumb_func
 2834              		.type	_ZNK4Move25GetCurrentMachinePositionEPfb, %function
 2835              	_ZNK4Move25GetCurrentMachinePositionEPfb:
 2836              		@ args = 0, pretend = 0, frame = 0
 2837              		@ frame_needed = 0, uses_anonymous_args = 0
 2838 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 2839 0004 104B     		ldr	r3, .L415
 2840 0006 4068     		ldr	r0, [r0, #4]
 2841 0008 1B69     		ldr	r3, [r3, #16]
 2842 000a D0F80490 		ldr	r9, [r0, #4]
 2843 000e D3F8B061 		ldr	r6, [r3, #432]
 2844 0012 0027     		movs	r7, #0
 2845 0014 9046     		mov	r8, r2
 2846 0016 0D46     		mov	r5, r1
 2847 0018 0024     		movs	r4, #0
 2848 001a 05E0     		b	.L413
 2849              	.L410:
 2850 001c 0134     		adds	r4, r4, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 51


 2851 001e 0A2C     		cmp	r4, #10
 2852 0020 2F60     		str	r7, [r5]	@ float
 2853 0022 05F10405 		add	r5, r5, #4
 2854 0026 0CD0     		beq	.L414
 2855              	.L413:
 2856 0028 A642     		cmp	r6, r4
 2857 002a F7D9     		bls	.L410
 2858 002c 2146     		mov	r1, r4
 2859 002e 4846     		mov	r0, r9
 2860 0030 4246     		mov	r2, r8
 2861 0032 FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 2862 0036 0134     		adds	r4, r4, #1
 2863 0038 0A2C     		cmp	r4, #10
 2864 003a 2860     		str	r0, [r5]	@ float
 2865 003c 05F10405 		add	r5, r5, #4
 2866 0040 F2D1     		bne	.L413
 2867              	.L414:
 2868 0042 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 2869              	.L416:
 2870 0046 00BF     		.align	2
 2871              	.L415:
 2872 0048 00000000 		.word	reprap
 2873              		.size	_ZNK4Move25GetCurrentMachinePositionEPfb, .-_ZNK4Move25GetCurrentMachinePositionEPfb
 2874              		.section	.text._ZN4Move23MotorEndpointToPositionElj,"ax",%progbits
 2875              		.align	2
 2876              		.global	_ZN4Move23MotorEndpointToPositionElj
 2877              		.thumb
 2878              		.thumb_func
 2879              		.type	_ZN4Move23MotorEndpointToPositionElj, %function
 2880              	_ZN4Move23MotorEndpointToPositionElj:
 2881              		@ args = 0, pretend = 0, frame = 0
 2882              		@ frame_needed = 0, uses_anonymous_args = 0
 2883              		@ link register save eliminated.
 2884 0000 074B     		ldr	r3, .L418
 2885 0002 1B68     		ldr	r3, [r3]
 2886 0004 06EE900A 		fmsr	s13, r0	@ int
 2887 0008 03EB8101 		add	r1, r3, r1, lsl #2
 2888 000c D1ED527A 		flds	s15, [r1, #328]
 2889 0010 B8EEE67A 		fsitos	s14, s13
 2890 0014 C7EE277A 		fdivs	s15, s14, s15
 2891 0018 17EE900A 		fmrs	r0, s15
 2892 001c 7047     		bx	lr
 2893              	.L419:
 2894 001e 00BF     		.align	2
 2895              	.L418:
 2896 0020 00000000 		.word	reprap
 2897              		.size	_ZN4Move23MotorEndpointToPositionElj, .-_ZN4Move23MotorEndpointToPositionElj
 2898              		.section	.text._ZNK4Move11IsExtrudingEv,"ax",%progbits
 2899              		.align	2
 2900              		.global	_ZNK4Move11IsExtrudingEv
 2901              		.thumb
 2902              		.thumb_func
 2903              		.type	_ZNK4Move11IsExtrudingEv, %function
 2904              	_ZNK4Move11IsExtrudingEv:
 2905              		@ args = 0, pretend = 0, frame = 0
 2906              		@ frame_needed = 0, uses_anonymous_args = 0
 2907              		@ link register save eliminated.
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 52


 2908              	@ 330 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 2909 0000 72B6     		cpsid i
 2910              	@ 0 "" 2
 2911              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 2912 0002 BFF35F8F 		dmb
 2913              	@ 0 "" 2
 2914              		.thumb
 2915 0006 084B     		ldr	r3, .L423
 2916 0008 0022     		movs	r2, #0
 2917 000a 1A70     		strb	r2, [r3]
 2918 000c 0268     		ldr	r2, [r0]
 2919 000e 4AB1     		cbz	r2, .L422
 2920 0010 0268     		ldr	r2, [r0]
 2921 0012 507A     		ldrb	r0, [r2, #9]	@ zero_extendqisi2
 2922 0014 C0F30010 		ubfx	r0, r0, #4, #1
 2923              	.L421:
 2924 0018 0122     		movs	r2, #1
 2925 001a 1A70     		strb	r2, [r3]
 2926              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 2927 001c BFF35F8F 		dmb
 2928              	@ 0 "" 2
 2929              	@ 319 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 2930 0020 62B6     		cpsie i
 2931              	@ 0 "" 2
 2932              		.thumb
 2933 0022 7047     		bx	lr
 2934              	.L422:
 2935 0024 1046     		mov	r0, r2
 2936 0026 F7E7     		b	.L421
 2937              	.L424:
 2938              		.align	2
 2939              	.L423:
 2940 0028 00000000 		.word	g_interrupt_enabled
 2941              		.size	_ZNK4Move11IsExtrudingEv, .-_ZNK4Move11IsExtrudingEv
 2942              		.section	.text._ZNK4Move22GetCurrentUserPositionEPfhm,"ax",%progbits
 2943              		.align	2
 2944              		.global	_ZNK4Move22GetCurrentUserPositionEPfhm
 2945              		.thumb
 2946              		.thumb_func
 2947              		.type	_ZNK4Move22GetCurrentUserPositionEPfhm, %function
 2948              	_ZNK4Move22GetCurrentUserPositionEPfhm:
 2949              		@ args = 0, pretend = 0, frame = 0
 2950              		@ frame_needed = 0, uses_anonymous_args = 0
 2951 0000 022A     		cmp	r2, #2
 2952 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2953 0004 1446     		mov	r4, r2
 2954 0006 1F46     		mov	r7, r3
 2955 0008 0546     		mov	r5, r0
 2956 000a 0E46     		mov	r6, r1
 2957 000c 0FD0     		beq	.L426
 2958 000e 012A     		cmp	r2, #1
 2959 0010 0AD0     		beq	.L434
 2960 0012 0022     		movs	r2, #0
 2961 0014 FFF7FEFF 		bl	_ZNK4Move25GetCurrentMachinePositionEPfb
 2962 0018 84B9     		cbnz	r4, .L425
 2963 001a 2846     		mov	r0, r5
 2964 001c 3146     		mov	r1, r6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 53


 2965 001e 3A46     		mov	r2, r7
 2966 0020 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 2967 0024 FFF7FEBF 		b	_ZNK4Move16InverseTransformEPfm
 2968              	.L434:
 2969 0028 90F8BC2A 		ldrb	r2, [r0, #2748]	@ zero_extendqisi2
 2970 002c 3AB1     		cbz	r2, .L435
 2971              	.L426:
 2972 002e 2846     		mov	r0, r5
 2973 0030 3146     		mov	r1, r6
 2974 0032 0122     		movs	r2, #1
 2975 0034 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 2976 0038 FFF7FEBF 		b	_ZNK4Move25GetCurrentMachinePositionEPfb
 2977              	.L425:
 2978 003c F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2979              	.L435:
 2980 003e BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 2981 0042 FFF7FEBF 		b	_ZNK4Move25GetCurrentMachinePositionEPfb
 2982              		.size	_ZNK4Move22GetCurrentUserPositionEPfhm, .-_ZNK4Move22GetCurrentUserPositionEPfhm
 2983 0046 00BF     		.section	.text._ZN4Move10PausePrintEPfRfm,"ax",%progbits
 2984              		.align	2
 2985              		.global	_ZN4Move10PausePrintEPfRfm
 2986              		.thumb
 2987              		.thumb_func
 2988              		.type	_ZN4Move10PausePrintEPfRfm, %function
 2989              	_ZN4Move10PausePrintEPfRfm:
 2990              		@ args = 0, pretend = 0, frame = 8
 2991              		@ frame_needed = 0, uses_anonymous_args = 0
 2992 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 2993 0004 83B0     		sub	sp, sp, #12
 2994 0006 8046     		mov	r8, r0
 2995 0008 8B46     		mov	fp, r1
 2996 000a 0192     		str	r2, [sp, #4]
 2997 000c 1C46     		mov	r4, r3
 2998 000e D0F80490 		ldr	r9, [r0, #4]
 2999              	@ 330 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 3000 0012 72B6     		cpsid i
 3001              	@ 0 "" 2
 3002              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 3003 0014 BFF35F8F 		dmb
 3004              	@ 0 "" 2
 3005              		.thumb
 3006 0018 4448     		ldr	r0, .L465
 3007 001a 0023     		movs	r3, #0
 3008 001c 0370     		strb	r3, [r0]
 3009 001e D8F80050 		ldr	r5, [r8]
 3010 0022 002D     		cmp	r5, #0
 3011 0024 70D0     		beq	.L437
 3012 0026 6A7A     		ldrb	r2, [r5, #9]	@ zero_extendqisi2
 3013 0028 5207     		lsls	r2, r2, #29
 3014 002a 55D5     		bpl	.L438
 3015 002c 2A68     		ldr	r2, [r5]
 3016 002e D5F80CA0 		ldr	r10, [r5, #12]
 3017 0032 C8F80420 		str	r2, [r8, #4]
 3018              	.L439:
 3019 0036 0122     		movs	r2, #1
 3020 0038 0270     		strb	r2, [r0]
 3021              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 54


 3022 003a BFF35F8F 		dmb
 3023              	@ 0 "" 2
 3024              	@ 319 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 3025 003e 62B6     		cpsie i
 3026              	@ 0 "" 2
 3027              		.thumb
 3028 0040 D8F80460 		ldr	r6, [r8, #4]
 3029 0044 4E45     		cmp	r6, r9
 3030 0046 69D0     		beq	.L444
 3031 0048 394A     		ldr	r2, .L465+4
 3032 004a 1269     		ldr	r2, [r2, #16]
 3033 004c D2F8B071 		ldr	r7, [r2, #432]
 3034 0050 8FB1     		cbz	r7, .L451
 3035 0052 5E46     		mov	r6, fp
 3036 0054 0024     		movs	r4, #0
 3037              	.L448:
 3038 0056 2146     		mov	r1, r4
 3039 0058 2846     		mov	r0, r5
 3040 005a 0022     		movs	r2, #0
 3041 005c FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 3042 0060 0134     		adds	r4, r4, #1
 3043 0062 BC42     		cmp	r4, r7
 3044 0064 46F8040B 		str	r0, [r6], #4	@ float
 3045 0068 F5D1     		bne	.L448
 3046 006a 092F     		cmp	r7, #9
 3047 006c D8F80460 		ldr	r6, [r8, #4]
 3048 0070 88BF     		it	hi
 3049 0072 BC00     		lslhi	r4, r7, #2
 3050 0074 09D8     		bhi	.L450
 3051              	.L451:
 3052 0076 BC00     		lsls	r4, r7, #2
 3053 0078 0BEB0401 		add	r1, fp, r4
 3054 007c 3A46     		mov	r2, r7
 3055 007e 0020     		movs	r0, #0
 3056              	.L446:
 3057 0080 0132     		adds	r2, r2, #1
 3058 0082 092A     		cmp	r2, #9
 3059 0084 41F8040B 		str	r0, [r1], #4	@ float
 3060 0088 FAD9     		bls	.L446
 3061              	.L450:
 3062 008a 019A     		ldr	r2, [sp, #4]
 3063 008c D5F89030 		ldr	r3, [r5, #144]	@ float
 3064 0090 1360     		str	r3, [r2]	@ float
 3065 0092 A344     		add	fp, fp, r4
 3066              	.L457:
 3067 0094 092F     		cmp	r7, #9
 3068 0096 11D8     		bhi	.L455
 3069 0098 5D46     		mov	r5, fp
 3070 009a 3C46     		mov	r4, r7
 3071              	.L456:
 3072 009c 2146     		mov	r1, r4
 3073 009e 3046     		mov	r0, r6
 3074 00a0 0122     		movs	r2, #1
 3075 00a2 FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 3076 00a6 D5ED007A 		flds	s15, [r5]
 3077 00aa 07EE100A 		fmsr	s14, r0
 3078 00ae 0134     		adds	r4, r4, #1
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 55


 3079 00b0 77EE877A 		fadds	s15, s15, s14
 3080 00b4 0A2C     		cmp	r4, #10
 3081 00b6 E5EC017A 		fstmias	r5!, {s15}
 3082 00ba EFD1     		bne	.L456
 3083              	.L455:
 3084 00bc 0022     		movs	r2, #0
 3085 00be D8F8503C 		ldr	r3, [r8, #3152]
 3086 00c2 3272     		strb	r2, [r6, #8]
 3087 00c4 3668     		ldr	r6, [r6]
 3088 00c6 013B     		subs	r3, r3, #1
 3089 00c8 B145     		cmp	r9, r6
 3090 00ca C8F8503C 		str	r3, [r8, #3152]
 3091 00ce E1D1     		bne	.L457
 3092              	.L454:
 3093 00d0 5046     		mov	r0, r10
 3094 00d2 03B0     		add	sp, sp, #12
 3095              		@ sp needed
 3096 00d4 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3097              	.L438:
 3098 00d8 D8F80850 		ldr	r5, [r8, #8]
 3099 00dc D8F80410 		ldr	r1, [r8, #4]
 3100 00e0 8D42     		cmp	r5, r1
 3101 00e2 03D1     		bne	.L443
 3102 00e4 17E0     		b	.L458
 3103              	.L442:
 3104 00e6 2D68     		ldr	r5, [r5]
 3105 00e8 8D42     		cmp	r5, r1
 3106 00ea 14D0     		beq	.L458
 3107              	.L443:
 3108 00ec 6A7A     		ldrb	r2, [r5, #9]	@ zero_extendqisi2
 3109 00ee 5307     		lsls	r3, r2, #29
 3110 00f0 F9D5     		bpl	.L442
 3111 00f2 2A68     		ldr	r2, [r5]
 3112 00f4 D5F80CA0 		ldr	r10, [r5, #12]
 3113 00f8 117A     		ldrb	r1, [r2, #8]	@ zero_extendqisi2
 3114 00fa C8F80420 		str	r2, [r8, #4]
 3115 00fe 0229     		cmp	r1, #2
 3116 0100 99D1     		bne	.L439
 3117 0102 0021     		movs	r1, #0
 3118 0104 1172     		strb	r1, [r2, #8]
 3119 0106 96E7     		b	.L439
 3120              	.L437:
 3121 0108 D8F80820 		ldr	r2, [r8, #8]
 3122 010c C8F80420 		str	r2, [r8, #4]
 3123 0110 4FF0FF3A 		mov	r10, #-1
 3124 0114 8FE7     		b	.L439
 3125              	.L458:
 3126 0116 4FF0FF3A 		mov	r10, #-1
 3127 011a 8CE7     		b	.L439
 3128              	.L444:
 3129 011c 4046     		mov	r0, r8
 3130 011e 5946     		mov	r1, fp
 3131 0120 2346     		mov	r3, r4
 3132 0122 0022     		movs	r2, #0
 3133 0124 FFF7FEFF 		bl	_ZNK4Move22GetCurrentUserPositionEPfhm
 3134 0128 D2E7     		b	.L454
 3135              	.L466:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 56


 3136 012a 00BF     		.align	2
 3137              	.L465:
 3138 012c 00000000 		.word	g_interrupt_enabled
 3139 0130 00000000 		.word	reprap
 3140              		.size	_ZN4Move10PausePrintEPfRfm, .-_ZN4Move10PausePrintEPfRfm
 3141              		.section	.text._ZN4Move15LiveCoordinatesEPfm,"ax",%progbits
 3142              		.align	2
 3143              		.global	_ZN4Move15LiveCoordinatesEPfm
 3144              		.thumb
 3145              		.thumb_func
 3146              		.type	_ZN4Move15LiveCoordinatesEPfm, %function
 3147              	_ZN4Move15LiveCoordinatesEPfm:
 3148              		@ args = 0, pretend = 0, frame = 24
 3149              		@ frame_needed = 0, uses_anonymous_args = 0
 3150 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3151 0004 394B     		ldr	r3, .L475
 3152 0006 1B69     		ldr	r3, [r3, #16]
 3153 0008 87B0     		sub	sp, sp, #28
 3154 000a 0546     		mov	r5, r0
 3155 000c 8846     		mov	r8, r1
 3156 000e 9246     		mov	r10, r2
 3157 0010 D3F8B091 		ldr	r9, [r3, #432]
 3158              	@ 330 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 3159 0014 72B6     		cpsid i
 3160              	@ 0 "" 2
 3161              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 3162 0016 BFF35F8F 		dmb
 3163              	@ 0 "" 2
 3164              		.thumb
 3165 001a 354F     		ldr	r7, .L475+4
 3166 001c 0023     		movs	r3, #0
 3167 001e 3B70     		strb	r3, [r7]
 3168 0020 90F85430 		ldrb	r3, [r0, #84]	@ zero_extendqisi2
 3169 0024 002B     		cmp	r3, #0
 3170 0026 39D1     		bne	.L473
 3171 0028 0646     		mov	r6, r0
 3172 002a 00EB8901 		add	r1, r0, r9, lsl #2
 3173 002e 4FEA890B 		lsl	fp, r9, #2
 3174 0032 C9F10A02 		rsb	r2, r9, #10
 3175 0036 08EB0B00 		add	r0, r8, fp
 3176 003a 9200     		lsls	r2, r2, #2
 3177 003c 2C31     		adds	r1, r1, #44
 3178 003e FFF7FEFF 		bl	memcpy
 3179 0042 56F8580F 		ldr	r0, [r6, #88]!	@ unaligned
 3180 0046 7168     		ldr	r1, [r6, #4]	@ unaligned
 3181 0048 F368     		ldr	r3, [r6, #12]	@ unaligned
 3182 004a B268     		ldr	r2, [r6, #8]	@ unaligned
 3183 004c 6C46     		mov	r4, sp
 3184 004e 0FC4     		stmia	r4!, {r0, r1, r2, r3}
 3185 0050 3069     		ldr	r0, [r6, #16]	@ unaligned
 3186 0052 7169     		ldr	r1, [r6, #20]	@ unaligned
 3187 0054 0123     		movs	r3, #1
 3188 0056 03C4     		stmia	r4!, {r0, r1}
 3189 0058 3B70     		strb	r3, [r7]
 3190              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 3191 005a BFF35F8F 		dmb
 3192              	@ 0 "" 2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 57


 3193              	@ 319 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 3194 005e 62B6     		cpsie i
 3195              	@ 0 "" 2
 3196              		.thumb
 3197 0060 4B46     		mov	r3, r9
 3198 0062 2846     		mov	r0, r5
 3199 0064 6946     		mov	r1, sp
 3200 0066 4246     		mov	r2, r8
 3201 0068 FFF7FEFF 		bl	_ZNK4Move17MachineToEndPointEPKlPfj
 3202              	@ 330 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 3203 006c 72B6     		cpsid i
 3204              	@ 0 "" 2
 3205              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 3206 006e BFF35F8F 		dmb
 3207              	@ 0 "" 2
 3208              		.thumb
 3209 0072 0023     		movs	r3, #0
 3210 0074 3146     		mov	r1, r6
 3211 0076 6846     		mov	r0, sp
 3212 0078 1822     		movs	r2, #24
 3213 007a 3B70     		strb	r3, [r7]
 3214 007c FFF7FEFF 		bl	memcmp
 3215 0080 48B3     		cbz	r0, .L474
 3216              	.L471:
 3217 0082 0123     		movs	r3, #1
 3218 0084 3B70     		strb	r3, [r7]
 3219              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 3220 0086 BFF35F8F 		dmb
 3221              	@ 0 "" 2
 3222              	@ 319 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 3223 008a 62B6     		cpsie i
 3224              	@ 0 "" 2
 3225              		.thumb
 3226              	.L470:
 3227 008c 2846     		mov	r0, r5
 3228 008e 4146     		mov	r1, r8
 3229 0090 5246     		mov	r2, r10
 3230 0092 FFF7FEFF 		bl	_ZNK4Move16InverseTransformEPfm
 3231 0096 07B0     		add	sp, sp, #28
 3232              		@ sp needed
 3233 0098 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3234              	.L473:
 3235 009c 00F12C03 		add	r3, r0, #44
 3236 00a0 00F14C02 		add	r2, r0, #76
 3237              	.L469:
 3238 00a4 1E68     		ldr	r6, [r3]	@ unaligned
 3239 00a6 5C68     		ldr	r4, [r3, #4]	@ unaligned
 3240 00a8 9868     		ldr	r0, [r3, #8]	@ unaligned
 3241 00aa D3F80CE0 		ldr	lr, [r3, #12]	@ unaligned
 3242 00ae C1F80CE0 		str	lr, [r1, #12]	@ unaligned
 3243 00b2 1033     		adds	r3, r3, #16
 3244 00b4 9342     		cmp	r3, r2
 3245 00b6 0E60     		str	r6, [r1]	@ unaligned
 3246 00b8 4C60     		str	r4, [r1, #4]	@ unaligned
 3247 00ba 8860     		str	r0, [r1, #8]	@ unaligned
 3248 00bc 01F11001 		add	r1, r1, #16
 3249 00c0 F0D1     		bne	.L469
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 58


 3250 00c2 1A68     		ldr	r2, [r3]	@ unaligned
 3251 00c4 5B68     		ldr	r3, [r3, #4]	@ unaligned
 3252 00c6 4B60     		str	r3, [r1, #4]	@ unaligned
 3253 00c8 0123     		movs	r3, #1
 3254 00ca 0A60     		str	r2, [r1]	@ unaligned
 3255 00cc 3B70     		strb	r3, [r7]
 3256              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 3257 00ce BFF35F8F 		dmb
 3258              	@ 0 "" 2
 3259              	@ 319 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 3260 00d2 62B6     		cpsie i
 3261              	@ 0 "" 2
 3262              		.thumb
 3263 00d4 DAE7     		b	.L470
 3264              	.L474:
 3265 00d6 5A46     		mov	r2, fp
 3266 00d8 05F12C00 		add	r0, r5, #44
 3267 00dc 4146     		mov	r1, r8
 3268 00de FFF7FEFF 		bl	memcpy
 3269 00e2 0123     		movs	r3, #1
 3270 00e4 85F85430 		strb	r3, [r5, #84]
 3271 00e8 CBE7     		b	.L471
 3272              	.L476:
 3273 00ea 00BF     		.align	2
 3274              	.L475:
 3275 00ec 00000000 		.word	reprap
 3276 00f0 00000000 		.word	g_interrupt_enabled
 3277              		.size	_ZN4Move15LiveCoordinatesEPfm, .-_ZN4Move15LiveCoordinatesEPfm
 3278              		.section	.text._ZN4Move18SetLiveCoordinatesEPKf,"ax",%progbits
 3279              		.align	2
 3280              		.global	_ZN4Move18SetLiveCoordinatesEPKf
 3281              		.thumb
 3282              		.thumb_func
 3283              		.type	_ZN4Move18SetLiveCoordinatesEPKf, %function
 3284              	_ZN4Move18SetLiveCoordinatesEPKf:
 3285              		@ args = 0, pretend = 0, frame = 0
 3286              		@ frame_needed = 0, uses_anonymous_args = 0
 3287 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 3288 0002 0646     		mov	r6, r0
 3289              	@ 330 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 3290 0004 72B6     		cpsid i
 3291              	@ 0 "" 2
 3292              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 3293 0006 BFF35F8F 		dmb
 3294              	@ 0 "" 2
 3295              		.thumb
 3296 000a 0F4F     		ldr	r7, .L481
 3297 000c 0023     		movs	r3, #0
 3298 000e 0A46     		mov	r2, r1
 3299 0010 3B70     		strb	r3, [r7]
 3300              	.L479:
 3301 0012 03F10A04 		add	r4, r3, #10
 3302 0016 06EB8404 		add	r4, r6, r4, lsl #2
 3303 001a 0133     		adds	r3, r3, #1
 3304 001c 52F8045B 		ldr	r5, [r2], #4	@ float
 3305 0020 6560     		str	r5, [r4, #4]	@ float
 3306 0022 0A2B     		cmp	r3, #10
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 59


 3307 0024 F5D1     		bne	.L479
 3308 0026 094B     		ldr	r3, .L481+4
 3309 0028 1B69     		ldr	r3, [r3, #16]
 3310 002a 0124     		movs	r4, #1
 3311 002c D3F8B031 		ldr	r3, [r3, #432]
 3312 0030 86F85440 		strb	r4, [r6, #84]
 3313 0034 3046     		mov	r0, r6
 3314 0036 06F15802 		add	r2, r6, #88
 3315 003a FFF7FEFF 		bl	_ZNK4Move17EndPointToMachineEPKfPlj
 3316 003e 3C70     		strb	r4, [r7]
 3317              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 3318 0040 BFF35F8F 		dmb
 3319              	@ 0 "" 2
 3320              	@ 319 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 3321 0044 62B6     		cpsie i
 3322              	@ 0 "" 2
 3323              		.thumb
 3324 0046 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3325              	.L482:
 3326              		.align	2
 3327              	.L481:
 3328 0048 00000000 		.word	g_interrupt_enabled
 3329 004c 00000000 		.word	reprap
 3330              		.size	_ZN4Move18SetLiveCoordinatesEPKf, .-_ZN4Move18SetLiveCoordinatesEPKf
 3331              		.section	.text._ZN4Move4InitEv,"ax",%progbits
 3332              		.align	2
 3333              		.global	_ZN4Move4InitEv
 3334              		.thumb
 3335              		.thumb_func
 3336              		.type	_ZN4Move4InitEv, %function
 3337              	_ZN4Move4InitEv:
 3338              		@ args = 0, pretend = 0, frame = 48
 3339              		@ frame_needed = 0, uses_anonymous_args = 0
 3340 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 3341 0004 2DED028B 		fstmfdd	sp!, {d8}
 3342 0008 8146     		mov	r9, r0
 3343 000a 8DB0     		sub	sp, sp, #52
 3344 000c 00F68420 		addw	r0, r0, #2692
 3345 0010 FFF7FEFF 		bl	_ZN15DeltaParameters4InitEv
 3346 0014 09F63847 		addw	r7, r9, #3128
 3347 0018 09F6344E 		addw	lr, r9, #3124
 3348 001c 09F63C46 		addw	r6, r9, #3132
 3349 0020 09F54465 		add	r5, r9, #3136
 3350 0024 09F64440 		addw	r0, r9, #3140
 3351 0028 09F64841 		addw	r1, r9, #3144
 3352 002c D9F80440 		ldr	r4, [r9, #4]
 3353 0030 4FF07E53 		mov	r3, #1065353216
 3354 0034 0022     		movs	r2, #0
 3355 0036 C9F8302C 		str	r2, [r9, #3120]
 3356 003a CEF80030 		str	r3, [lr]	@ float
 3357 003e 3B60     		str	r3, [r7]	@ float
 3358 0040 3360     		str	r3, [r6]	@ float
 3359 0042 2B60     		str	r3, [r5]	@ float
 3360 0044 0360     		str	r3, [r0]	@ float
 3361 0046 0B60     		str	r3, [r1]	@ float
 3362 0048 89F82C2C 		strb	r2, [r9, #3116]
 3363 004c C9F80C40 		str	r4, [r9, #12]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 60


 3364 0050 C9F80840 		str	r4, [r9, #8]
 3365              	.L485:
 3366 0054 2046     		mov	r0, r4
 3367 0056 FFF7FEFF 		bl	_ZN3DDA4InitEv
 3368 005a 2468     		ldr	r4, [r4]
 3369 005c D9F80430 		ldr	r3, [r9, #4]
 3370 0060 A342     		cmp	r3, r4
 3371 0062 F7D1     		bne	.L485
 3372 0064 0024     		movs	r4, #0
 3373 0066 4846     		mov	r0, r9
 3374 0068 C9F80040 		str	r4, [r9]
 3375 006c C9F84C4C 		str	r4, [r9, #3148]
 3376 0070 C9F81840 		str	r4, [r9, #24]
 3377 0074 C9F81440 		str	r4, [r9, #20]
 3378 0078 FFF7FEFF 		bl	_ZN4Move20SetIdentityTransformEv
 3379 007c 09F6F410 		addw	r0, r9, #2548
 3380 0080 09F51F61 		add	r1, r9, #2544
 3381 0084 09F6EC12 		addw	r2, r9, #2540
 3382 0088 0023     		movs	r3, #0
 3383 008a DFF8DC81 		ldr	r8, .L498+16
 3384 008e 0360     		str	r3, [r0]	@ float
 3385 0090 9A46     		mov	r10, r3	@ float
 3386 0092 0B60     		str	r3, [r1]	@ float
 3387 0094 2746     		mov	r7, r4
 3388 0096 02AD     		add	r5, sp, #8
 3389 0098 1360     		str	r3, [r2]	@ float
 3390              	.L487:
 3391 009a 04F11603 		add	r3, r4, #22
 3392 009e 0122     		movs	r2, #1
 3393 00a0 2146     		mov	r1, r4
 3394 00a2 D8F80000 		ldr	r0, [r8]
 3395 00a6 49F82370 		str	r7, [r9, r3, lsl #2]
 3396 00aa 1444     		add	r4, r4, r2
 3397 00ac 45F804AB 		str	r10, [r5], #4	@ float
 3398 00b0 FFF7FEFF 		bl	_ZN8Platform12SetDirectionEjb
 3399 00b4 0A2C     		cmp	r4, #10
 3400 00b6 6C4E     		ldr	r6, .L498+16
 3401 00b8 EFD1     		bne	.L487
 3402 00ba 4846     		mov	r0, r9
 3403 00bc 02A9     		add	r1, sp, #8
 3404 00be FFF7FEFF 		bl	_ZN4Move18SetLiveCoordinatesEPKf
 3405 00c2 4846     		mov	r0, r9
 3406 00c4 02A9     		add	r1, sp, #8
 3407 00c6 FFF7FEFF 		bl	_ZN4Move12SetPositionsEPKf
 3408 00ca D6F800A0 		ldr	r10, [r6]
 3409 00ce 9FED678A 		flds	s16, .L498+20
 3410 00d2 0026     		movs	r6, #0
 3411 00d4 0AF5A46B 		add	fp, r10, #1312
 3412 00d8 B446     		mov	ip, r6
 3413 00da 09F52077 		add	r7, r9, #640
 3414 00de F6EE008A 		fconsts	s17, #96
 3415 00e2 40F2B918 		movw	r8, #441
 3416 00e6 04E0     		b	.L493
 3417              	.L491:
 3418 00e8 0136     		adds	r6, r6, #1
 3419 00ea 4645     		cmp	r6, r8
 3420 00ec 07F10407 		add	r7, r7, #4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 61


 3421 00f0 11D0     		beq	.L494
 3422              	.L493:
 3423 00f2 032E     		cmp	r6, #3
 3424 00f4 49D9     		bls	.L495
 3425 00f6 042E     		cmp	r6, #4
 3426 00f8 00F09C80 		beq	.L496
 3427 00fc 3F2E     		cmp	r6, #63
 3428 00fe 87ED008A 		fsts	s16, [r7]
 3429 0102 F1D8     		bhi	.L491
 3430              	.L489:
 3431 0104 09EB0603 		add	r3, r9, r6
 3432 0108 83F8A0C9 		strb	ip, [r3, #2464]
 3433              	.L497:
 3434 010c 0136     		adds	r6, r6, #1
 3435 010e 4645     		cmp	r6, r8
 3436 0110 07F10407 		add	r7, r7, #4
 3437 0114 EDD1     		bne	.L493
 3438              	.L494:
 3439 0116 DBF80000 		ldr	r0, [fp]	@ float
 3440 011a FFF7FEFF 		bl	__aeabi_f2d
 3441 011e 4EA3     		adr	r3, .L498
 3442 0120 D3E90023 		ldrd	r2, [r3]
 3443 0124 FFF7FEFF 		bl	__aeabi_dmul
 3444 0128 0246     		mov	r2, r0
 3445 012a 0B46     		mov	r3, r1
 3446 012c 0020     		movs	r0, #0
 3447 012e 5049     		ldr	r1, .L498+24
 3448 0130 FFF7FEFF 		bl	__aeabi_ddiv
 3449 0134 FFF7FEFF 		bl	__aeabi_d2f
 3450 0138 09F6FC11 		addw	r1, r9, #2556
 3451 013c 09F52062 		add	r2, r9, #2560
 3452 0140 0024     		movs	r4, #0
 3453 0142 0346     		mov	r3, r0	@ float
 3454 0144 0B60     		str	r3, [r1]	@ float
 3455 0146 5046     		mov	r0, r10
 3456 0148 1360     		str	r3, [r2]	@ float
 3457 014a 89F80C4A 		strb	r4, [r9, #2572]
 3458 014e FFF7FEFF 		bl	_ZN8Platform4TimeEv
 3459 0152 09F67C23 		addw	r3, r9, #2684
 3460 0156 09F67422 		addw	r2, r9, #2676
 3461 015a 1860     		str	r0, [r3]	@ float
 3462 015c 4548     		ldr	r0, .L498+28
 3463 015e 1060     		str	r0, [r2]	@ float
 3464 0160 0021     		movs	r1, #0
 3465 0162 0123     		movs	r3, #1
 3466 0164 89F8804A 		strb	r4, [r9, #2688]
 3467 0168 C9F81C40 		str	r4, [r9, #28]
 3468 016c 89F81140 		strb	r4, [r9, #17]
 3469 0170 C9F82040 		str	r4, [r9, #32]
 3470 0174 89F81240 		strb	r4, [r9, #18]
 3471 0178 C9F82810 		str	r1, [r9, #40]	@ float
 3472 017c 89F81030 		strb	r3, [r9, #16]
 3473 0180 0DB0     		add	sp, sp, #52
 3474              		@ sp needed
 3475 0182 BDEC028B 		fldmfdd	sp!, {d8}
 3476 0186 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 3477              	.L495:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 62


 3478 018a 06F00100 		and	r0, r6, #1
 3479 018e 07EE900A 		fmsr	s15, r0	@ int
 3480 0192 F8EEE77A 		fsitos	s15, s15
 3481 0196 CDF804C0 		str	ip, [sp, #4]
 3482 019a 17EE900A 		fmrs	r0, s15
 3483 019e FFF7FEFF 		bl	__aeabi_f2d
 3484 01a2 2DA3     		adr	r3, .L498
 3485 01a4 D3E90023 		ldrd	r2, [r3]
 3486 01a8 FFF7FEFF 		bl	__aeabi_dmul
 3487 01ac 2CA3     		adr	r3, .L498+8
 3488 01ae D3E90023 		ldrd	r2, [r3]
 3489 01b2 FFF7FEFF 		bl	__aeabi_dadd
 3490 01b6 0446     		mov	r4, r0
 3491 01b8 DBF80000 		ldr	r0, [fp]	@ float
 3492 01bc 0D46     		mov	r5, r1
 3493 01be FFF7FEFF 		bl	__aeabi_f2d
 3494 01c2 0246     		mov	r2, r0
 3495 01c4 0B46     		mov	r3, r1
 3496 01c6 2046     		mov	r0, r4
 3497 01c8 2946     		mov	r1, r5
 3498 01ca FFF7FEFF 		bl	__aeabi_dmul
 3499 01ce FFF7FEFF 		bl	__aeabi_d2f
 3500 01d2 7308     		lsrs	r3, r6, #1
 3501 01d4 07EE903A 		fmsr	s15, r3	@ int
 3502 01d8 A7F50072 		sub	r2, r7, #512
 3503 01dc F8EEE77A 		fsitos	s15, s15
 3504 01e0 1060     		str	r0, [r2]	@ float
 3505 01e2 17EE900A 		fmrs	r0, s15
 3506 01e6 FFF7FEFF 		bl	__aeabi_f2d
 3507 01ea 1BA3     		adr	r3, .L498
 3508 01ec D3E90023 		ldrd	r2, [r3]
 3509 01f0 FFF7FEFF 		bl	__aeabi_dmul
 3510 01f4 1AA3     		adr	r3, .L498+8
 3511 01f6 D3E90023 		ldrd	r2, [r3]
 3512 01fa FFF7FEFF 		bl	__aeabi_dadd
 3513 01fe 0AF22453 		addw	r3, r10, #1316
 3514 0202 0446     		mov	r4, r0
 3515 0204 1868     		ldr	r0, [r3]	@ float
 3516 0206 0D46     		mov	r5, r1
 3517 0208 FFF7FEFF 		bl	__aeabi_f2d
 3518 020c 0B46     		mov	r3, r1
 3519 020e 0246     		mov	r2, r0
 3520 0210 2946     		mov	r1, r5
 3521 0212 2046     		mov	r0, r4
 3522 0214 FFF7FEFF 		bl	__aeabi_dmul
 3523 0218 FFF7FEFF 		bl	__aeabi_d2f
 3524 021c A7F58073 		sub	r3, r7, #256
 3525 0220 1860     		str	r0, [r3]	@ float
 3526 0222 87ED008A 		fsts	s16, [r7]
 3527 0226 09EB0603 		add	r3, r9, r6
 3528 022a DDF804C0 		ldr	ip, [sp, #4]
 3529 022e 83F8A0C9 		strb	ip, [r3, #2464]
 3530 0232 6BE7     		b	.L497
 3531              	.L496:
 3532 0234 0AF22453 		addw	r3, r10, #1316
 3533 0238 93ED007A 		flds	s14, [r3]
 3534 023c DBED007A 		flds	s15, [fp]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 63


 3535 0240 27EE287A 		fmuls	s14, s14, s17
 3536 0244 67EEA87A 		fmuls	s15, s15, s17
 3537 0248 89ED647A 		fsts	s14, [r9, #400]
 3538 024c C9ED247A 		fsts	s15, [r9, #144]
 3539 0250 87ED008A 		fsts	s16, [r7]
 3540 0254 56E7     		b	.L489
 3541              	.L499:
 3542 0256 00BF     		.align	3
 3543              	.L498:
 3544 0258 9A999999 		.word	-1717986918
 3545 025c 9999E93F 		.word	1072273817
 3546 0260 9A999999 		.word	-1717986918
 3547 0264 9999B93F 		.word	1069128089
 3548 0268 00000000 		.word	reprap
 3549 026c 00000000 		.word	0
 3550 0270 0000F03F 		.word	1072693248
 3551 0274 0000F041 		.word	1106247680
 3552              		.size	_ZN4Move4InitEv, .-_ZN4Move4InitEv
 3553              		.section	.text._ZN4Move22ResetExtruderPositionsEv,"ax",%progbits
 3554              		.align	2
 3555              		.global	_ZN4Move22ResetExtruderPositionsEv
 3556              		.thumb
 3557              		.thumb_func
 3558              		.type	_ZN4Move22ResetExtruderPositionsEv, %function
 3559              	_ZN4Move22ResetExtruderPositionsEv:
 3560              		@ args = 0, pretend = 0, frame = 0
 3561              		@ frame_needed = 0, uses_anonymous_args = 0
 3562              		@ link register save eliminated.
 3563 0000 10B4     		push	{r4}
 3564              	@ 330 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 3565 0002 72B6     		cpsid i
 3566              	@ 0 "" 2
 3567              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 3568 0004 BFF35F8F 		dmb
 3569              	@ 0 "" 2
 3570              		.thumb
 3571 0008 0D4B     		ldr	r3, .L509
 3572 000a 0E4C     		ldr	r4, .L509+4
 3573 000c 1B69     		ldr	r3, [r3, #16]
 3574 000e D3F8B031 		ldr	r3, [r3, #432]
 3575 0012 0022     		movs	r2, #0
 3576 0014 092B     		cmp	r3, #9
 3577 0016 2270     		strb	r2, [r4]
 3578 0018 98BF     		it	ls
 3579 001a 0021     		movls	r1, #0
 3580 001c 07D8     		bhi	.L502
 3581              	.L503:
 3582 001e 03F10A02 		add	r2, r3, #10
 3583 0022 00EB8202 		add	r2, r0, r2, lsl #2
 3584 0026 0133     		adds	r3, r3, #1
 3585 0028 0A2B     		cmp	r3, #10
 3586 002a 5160     		str	r1, [r2, #4]	@ float
 3587 002c F7D1     		bne	.L503
 3588              	.L502:
 3589 002e 0123     		movs	r3, #1
 3590 0030 2370     		strb	r3, [r4]
 3591              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 64


 3592 0032 BFF35F8F 		dmb
 3593              	@ 0 "" 2
 3594              	@ 319 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 3595 0036 62B6     		cpsie i
 3596              	@ 0 "" 2
 3597              		.thumb
 3598 0038 5DF8044B 		ldr	r4, [sp], #4
 3599 003c 7047     		bx	lr
 3600              	.L510:
 3601 003e 00BF     		.align	2
 3602              	.L509:
 3603 0040 00000000 		.word	reprap
 3604 0044 00000000 		.word	g_interrupt_enabled
 3605              		.size	_ZN4Move22ResetExtruderPositionsEv, .-_ZN4Move22ResetExtruderPositionsEv
 3606              		.section	.text._ZN4Move17SetXBedProbePointEjf,"ax",%progbits
 3607              		.align	2
 3608              		.global	_ZN4Move17SetXBedProbePointEjf
 3609              		.thumb
 3610              		.thumb_func
 3611              		.type	_ZN4Move17SetXBedProbePointEjf, %function
 3612              	_ZN4Move17SetXBedProbePointEjf:
 3613              		@ args = 0, pretend = 0, frame = 0
 3614              		@ frame_needed = 0, uses_anonymous_args = 0
 3615              		@ link register save eliminated.
 3616 0000 3F29     		cmp	r1, #63
 3617 0002 10B4     		push	{r4}
 3618 0004 0DD8     		bhi	.L513
 3619 0006 4318     		adds	r3, r0, r1
 3620 0008 00EB8101 		add	r1, r0, r1, lsl #2
 3621 000c 93F8A049 		ldrb	r4, [r3, #2464]	@ zero_extendqisi2
 3622 0010 C1F88020 		str	r2, [r1, #128]	@ float
 3623 0014 44F00102 		orr	r2, r4, #1
 3624 0018 83F8A029 		strb	r2, [r3, #2464]
 3625 001c 5DF8044B 		ldr	r4, [sp], #4
 3626 0020 7047     		bx	lr
 3627              	.L513:
 3628 0022 044B     		ldr	r3, .L514
 3629 0024 044A     		ldr	r2, .L514+4
 3630 0026 1868     		ldr	r0, [r3]
 3631 0028 5DF8044B 		ldr	r4, [sp], #4
 3632 002c 0621     		movs	r1, #6
 3633 002e FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 3634              	.L515:
 3635 0032 00BF     		.align	2
 3636              	.L514:
 3637 0034 00000000 		.word	reprap
 3638 0038 E0020000 		.word	.LC24
 3639              		.size	_ZN4Move17SetXBedProbePointEjf, .-_ZN4Move17SetXBedProbePointEjf
 3640              		.section	.text._ZN4Move17SetYBedProbePointEjf,"ax",%progbits
 3641              		.align	2
 3642              		.global	_ZN4Move17SetYBedProbePointEjf
 3643              		.thumb
 3644              		.thumb_func
 3645              		.type	_ZN4Move17SetYBedProbePointEjf, %function
 3646              	_ZN4Move17SetYBedProbePointEjf:
 3647              		@ args = 0, pretend = 0, frame = 0
 3648              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 65


 3649              		@ link register save eliminated.
 3650 0000 3F29     		cmp	r1, #63
 3651 0002 10B4     		push	{r4}
 3652 0004 0DD8     		bhi	.L518
 3653 0006 4318     		adds	r3, r0, r1
 3654 0008 00EB8101 		add	r1, r0, r1, lsl #2
 3655 000c 93F8A049 		ldrb	r4, [r3, #2464]	@ zero_extendqisi2
 3656 0010 C1F88021 		str	r2, [r1, #384]	@ float
 3657 0014 44F00202 		orr	r2, r4, #2
 3658 0018 83F8A029 		strb	r2, [r3, #2464]
 3659 001c 5DF8044B 		ldr	r4, [sp], #4
 3660 0020 7047     		bx	lr
 3661              	.L518:
 3662 0022 044B     		ldr	r3, .L519
 3663 0024 044A     		ldr	r2, .L519+4
 3664 0026 1868     		ldr	r0, [r3]
 3665 0028 5DF8044B 		ldr	r4, [sp], #4
 3666 002c 0621     		movs	r1, #6
 3667 002e FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 3668              	.L520:
 3669 0032 00BF     		.align	2
 3670              	.L519:
 3671 0034 00000000 		.word	reprap
 3672 0038 08030000 		.word	.LC25
 3673              		.size	_ZN4Move17SetYBedProbePointEjf, .-_ZN4Move17SetYBedProbePointEjf
 3674              		.section	.text._ZN4Move17SetZBedProbePointEjfbb,"ax",%progbits
 3675              		.align	2
 3676              		.global	_ZN4Move17SetZBedProbePointEjfbb
 3677              		.thumb
 3678              		.thumb_func
 3679              		.type	_ZN4Move17SetZBedProbePointEjfbb, %function
 3680              	_ZN4Move17SetZBedProbePointEjfbb:
 3681              		@ args = 4, pretend = 0, frame = 0
 3682              		@ frame_needed = 0, uses_anonymous_args = 0
 3683 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 3684 0004 3F29     		cmp	r1, #63
 3685 0006 0C46     		mov	r4, r1
 3686 0008 0546     		mov	r5, r0
 3687 000a 1646     		mov	r6, r2	@ float
 3688 000c 9846     		mov	r8, r3
 3689 000e 9DF81870 		ldrb	r7, [sp, #24]	@ zero_extendqisi2
 3690 0012 2BD8     		bhi	.L527
 3691 0014 00F52160 		add	r0, r0, #2576
 3692 0018 0021     		movs	r1, #0
 3693 001a FFF7FEFF 		bl	_ZN9HeightMap12UseHeightMapEb
 3694 001e 2919     		adds	r1, r5, r4
 3695 0020 05EB8404 		add	r4, r5, r4, lsl #2
 3696 0024 91F8A009 		ldrb	r0, [r1, #2464]	@ zero_extendqisi2
 3697 0028 C4F88062 		str	r6, [r4, #640]	@ float
 3698 002c 40F00403 		orr	r3, r0, #4
 3699 0030 81F8A039 		strb	r3, [r1, #2464]
 3700 0034 B8F1000F 		cmp	r8, #0
 3701 0038 0AD0     		beq	.L523
 3702 003a 40F00C00 		orr	r0, r0, #12
 3703 003e 81F8A009 		strb	r0, [r1, #2464]
 3704 0042 6FB9     		cbnz	r7, .L528
 3705              	.L525:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 66


 3706 0044 20F01000 		bic	r0, r0, #16
 3707 0048 81F8A009 		strb	r0, [r1, #2464]
 3708 004c BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3709              	.L523:
 3710 0050 20F00800 		bic	r0, r0, #8
 3711 0054 40F00400 		orr	r0, r0, #4
 3712 0058 81F8A009 		strb	r0, [r1, #2464]
 3713 005c 002F     		cmp	r7, #0
 3714 005e F1D0     		beq	.L525
 3715              	.L528:
 3716 0060 40F01000 		orr	r0, r0, #16
 3717 0064 81F8A009 		strb	r0, [r1, #2464]
 3718 0068 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 3719              	.L527:
 3720 006c 034B     		ldr	r3, .L529
 3721 006e 044A     		ldr	r2, .L529+4
 3722 0070 1868     		ldr	r0, [r3]
 3723 0072 0621     		movs	r1, #6
 3724 0074 BDE8F041 		pop	{r4, r5, r6, r7, r8, lr}
 3725 0078 FFF7FEBF 		b	_ZN8Platform7MessageE11MessageTypePKc
 3726              	.L530:
 3727              		.align	2
 3728              	.L529:
 3729 007c 00000000 		.word	reprap
 3730 0080 30030000 		.word	.LC26
 3731              		.size	_ZN4Move17SetZBedProbePointEjfbb, .-_ZN4Move17SetZBedProbePointEjfbb
 3732              		.section	.text._ZNK4Move14XBedProbePointEj,"ax",%progbits
 3733              		.align	2
 3734              		.global	_ZNK4Move14XBedProbePointEj
 3735              		.thumb
 3736              		.thumb_func
 3737              		.type	_ZNK4Move14XBedProbePointEj, %function
 3738              	_ZNK4Move14XBedProbePointEj:
 3739              		@ args = 0, pretend = 0, frame = 0
 3740              		@ frame_needed = 0, uses_anonymous_args = 0
 3741              		@ link register save eliminated.
 3742 0000 00EB8101 		add	r1, r0, r1, lsl #2
 3743 0004 D1F88000 		ldr	r0, [r1, #128]	@ float
 3744 0008 7047     		bx	lr
 3745              		.size	_ZNK4Move14XBedProbePointEj, .-_ZNK4Move14XBedProbePointEj
 3746 000a 00BF     		.section	.text._ZNK4Move14YBedProbePointEj,"ax",%progbits
 3747              		.align	2
 3748              		.global	_ZNK4Move14YBedProbePointEj
 3749              		.thumb
 3750              		.thumb_func
 3751              		.type	_ZNK4Move14YBedProbePointEj, %function
 3752              	_ZNK4Move14YBedProbePointEj:
 3753              		@ args = 0, pretend = 0, frame = 0
 3754              		@ frame_needed = 0, uses_anonymous_args = 0
 3755              		@ link register save eliminated.
 3756 0000 00EB8101 		add	r1, r0, r1, lsl #2
 3757 0004 D1F88001 		ldr	r0, [r1, #384]	@ float
 3758 0008 7047     		bx	lr
 3759              		.size	_ZNK4Move14YBedProbePointEj, .-_ZNK4Move14YBedProbePointEj
 3760 000a 00BF     		.section	.text._ZNK4Move14ZBedProbePointEj,"ax",%progbits
 3761              		.align	2
 3762              		.global	_ZNK4Move14ZBedProbePointEj
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 67


 3763              		.thumb
 3764              		.thumb_func
 3765              		.type	_ZNK4Move14ZBedProbePointEj, %function
 3766              	_ZNK4Move14ZBedProbePointEj:
 3767              		@ args = 0, pretend = 0, frame = 0
 3768              		@ frame_needed = 0, uses_anonymous_args = 0
 3769              		@ link register save eliminated.
 3770 0000 00EB8101 		add	r1, r0, r1, lsl #2
 3771 0004 D1F88002 		ldr	r0, [r1, #640]	@ float
 3772 0008 7047     		bx	lr
 3773              		.size	_ZNK4Move14ZBedProbePointEj, .-_ZNK4Move14ZBedProbePointEj
 3774 000a 00BF     		.section	.text._ZNK4Move22AllProbeCoordinatesSetEi,"ax",%progbits
 3775              		.align	2
 3776              		.global	_ZNK4Move22AllProbeCoordinatesSetEi
 3777              		.thumb
 3778              		.thumb_func
 3779              		.type	_ZNK4Move22AllProbeCoordinatesSetEi, %function
 3780              	_ZNK4Move22AllProbeCoordinatesSetEi:
 3781              		@ args = 0, pretend = 0, frame = 0
 3782              		@ frame_needed = 0, uses_anonymous_args = 0
 3783              		@ link register save eliminated.
 3784 0000 0144     		add	r1, r1, r0
 3785 0002 91F8A009 		ldrb	r0, [r1, #2464]	@ zero_extendqisi2
 3786 0006 00F00700 		and	r0, r0, #7
 3787 000a C31F     		subs	r3, r0, #7
 3788 000c 5842     		rsbs	r0, r3, #0
 3789 000e 5841     		adcs	r0, r0, r3
 3790 0010 7047     		bx	lr
 3791              		.size	_ZNK4Move22AllProbeCoordinatesSetEi, .-_ZNK4Move22AllProbeCoordinatesSetEi
 3792 0012 00BF     		.section	.text._ZNK4Move21XYProbeCoordinatesSetEi,"ax",%progbits
 3793              		.align	2
 3794              		.global	_ZNK4Move21XYProbeCoordinatesSetEi
 3795              		.thumb
 3796              		.thumb_func
 3797              		.type	_ZNK4Move21XYProbeCoordinatesSetEi, %function
 3798              	_ZNK4Move21XYProbeCoordinatesSetEi:
 3799              		@ args = 0, pretend = 0, frame = 0
 3800              		@ frame_needed = 0, uses_anonymous_args = 0
 3801              		@ link register save eliminated.
 3802 0000 0144     		add	r1, r1, r0
 3803 0002 91F8A009 		ldrb	r0, [r1, #2464]	@ zero_extendqisi2
 3804 0006 00F00300 		and	r0, r0, #3
 3805 000a C31E     		subs	r3, r0, #3
 3806 000c 5842     		rsbs	r0, r3, #0
 3807 000e 5841     		adcs	r0, r0, r3
 3808 0010 7047     		bx	lr
 3809              		.size	_ZNK4Move21XYProbeCoordinatesSetEi, .-_ZNK4Move21XYProbeCoordinatesSetEi
 3810 0012 00BF     		.section	.text._ZNK4Move19GetProbeCoordinatesEiRfS0_b,"ax",%progbits
 3811              		.align	2
 3812              		.global	_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 3813              		.thumb
 3814              		.thumb_func
 3815              		.type	_ZNK4Move19GetProbeCoordinatesEiRfS0_b, %function
 3816              	_ZNK4Move19GetProbeCoordinatesEiRfS0_b:
 3817              		@ args = 4, pretend = 0, frame = 0
 3818              		@ frame_needed = 0, uses_anonymous_args = 0
 3819 0000 70B5     		push	{r4, r5, r6, lr}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 68


 3820 0002 00EB8104 		add	r4, r0, r1, lsl #2
 3821 0006 9DF81010 		ldrb	r1, [sp, #16]	@ zero_extendqisi2
 3822 000a D4F88000 		ldr	r0, [r4, #128]	@ float
 3823 000e 1060     		str	r0, [r2]	@ float
 3824 0010 1546     		mov	r5, r2
 3825 0012 D4F88021 		ldr	r2, [r4, #384]	@ float
 3826 0016 1A60     		str	r2, [r3]	@ float
 3827 0018 1E46     		mov	r6, r3
 3828 001a A9B1     		cbz	r1, .L537
 3829 001c 0C4B     		ldr	r3, .L541
 3830 001e 1868     		ldr	r0, [r3]
 3831 0020 D0F89010 		ldr	r1, [r0, #144]
 3832 0024 FFF7FEFF 		bl	_ZNK8Platform19GetZProbeParametersEl
 3833 0028 95ED007A 		flds	s14, [r5]
 3834 002c D0ED017A 		flds	s15, [r0, #4]
 3835 0030 77EE677A 		fsubs	s15, s14, s15
 3836 0034 C5ED007A 		fsts	s15, [r5]
 3837 0038 96ED007A 		flds	s14, [r6]
 3838 003c D0ED027A 		flds	s15, [r0, #8]
 3839 0040 77EE677A 		fsubs	s15, s14, s15
 3840 0044 C6ED007A 		fsts	s15, [r6]
 3841              	.L537:
 3842 0048 D4F88002 		ldr	r0, [r4, #640]	@ float
 3843 004c 70BD     		pop	{r4, r5, r6, pc}
 3844              	.L542:
 3845 004e 00BF     		.align	2
 3846              	.L541:
 3847 0050 00000000 		.word	reprap
 3848              		.size	_ZNK4Move19GetProbeCoordinatesEiRfS0_b, .-_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 3849              		.section	.text._ZNK4Move19NumberOfProbePointsEv,"ax",%progbits
 3850              		.align	2
 3851              		.global	_ZNK4Move19NumberOfProbePointsEv
 3852              		.thumb
 3853              		.thumb_func
 3854              		.type	_ZNK4Move19NumberOfProbePointsEv, %function
 3855              	_ZNK4Move19NumberOfProbePointsEv:
 3856              		@ args = 0, pretend = 0, frame = 0
 3857              		@ frame_needed = 0, uses_anonymous_args = 0
 3858              		@ link register save eliminated.
 3859 0000 0023     		movs	r3, #0
 3860 0002 02E0     		b	.L545
 3861              	.L550:
 3862 0004 0133     		adds	r3, r3, #1
 3863 0006 402B     		cmp	r3, #64
 3864 0008 06D0     		beq	.L544
 3865              	.L545:
 3866 000a C218     		adds	r2, r0, r3
 3867 000c 92F8A029 		ldrb	r2, [r2, #2464]	@ zero_extendqisi2
 3868 0010 02F00702 		and	r2, r2, #7
 3869 0014 072A     		cmp	r2, #7
 3870 0016 F5D0     		beq	.L550
 3871              	.L544:
 3872 0018 1846     		mov	r0, r3
 3873 001a 7047     		bx	lr
 3874              		.size	_ZNK4Move19NumberOfProbePointsEv, .-_ZNK4Move19NumberOfProbePointsEv
 3875              		.section	.text._ZNK4Move21NumberOfXYProbePointsEv,"ax",%progbits
 3876              		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 69


 3877              		.global	_ZNK4Move21NumberOfXYProbePointsEv
 3878              		.thumb
 3879              		.thumb_func
 3880              		.type	_ZNK4Move21NumberOfXYProbePointsEv, %function
 3881              	_ZNK4Move21NumberOfXYProbePointsEv:
 3882              		@ args = 0, pretend = 0, frame = 0
 3883              		@ frame_needed = 0, uses_anonymous_args = 0
 3884              		@ link register save eliminated.
 3885 0000 0023     		movs	r3, #0
 3886 0002 02E0     		b	.L553
 3887              	.L558:
 3888 0004 0133     		adds	r3, r3, #1
 3889 0006 402B     		cmp	r3, #64
 3890 0008 06D0     		beq	.L552
 3891              	.L553:
 3892 000a C218     		adds	r2, r0, r3
 3893 000c 92F8A029 		ldrb	r2, [r2, #2464]	@ zero_extendqisi2
 3894 0010 02F00302 		and	r2, r2, #3
 3895 0014 032A     		cmp	r2, #3
 3896 0016 F5D0     		beq	.L558
 3897              	.L552:
 3898 0018 1846     		mov	r0, r3
 3899 001a 7047     		bx	lr
 3900              		.size	_ZNK4Move21NumberOfXYProbePointsEv, .-_ZNK4Move21NumberOfXYProbePointsEv
 3901              		.section	.text._ZN4Move8SimulateEh,"ax",%progbits
 3902              		.align	2
 3903              		.global	_ZN4Move8SimulateEh
 3904              		.thumb
 3905              		.thumb_func
 3906              		.type	_ZN4Move8SimulateEh, %function
 3907              	_ZN4Move8SimulateEh:
 3908              		@ args = 0, pretend = 0, frame = 0
 3909              		@ frame_needed = 0, uses_anonymous_args = 0
 3910              		@ link register save eliminated.
 3911 0000 4174     		strb	r1, [r0, #17]
 3912 0002 09B1     		cbz	r1, .L559
 3913 0004 0023     		movs	r3, #0
 3914 0006 8362     		str	r3, [r0, #40]	@ float
 3915              	.L559:
 3916 0008 7047     		bx	lr
 3917              		.size	_ZN4Move8SimulateEh, .-_ZN4Move8SimulateEh
 3918 000a 00BF     		.section	.text._ZNK4Move15PrintCurrentDdaEv,"ax",%progbits
 3919              		.align	2
 3920              		.global	_ZNK4Move15PrintCurrentDdaEv
 3921              		.thumb
 3922              		.thumb_func
 3923              		.type	_ZNK4Move15PrintCurrentDdaEv, %function
 3924              	_ZNK4Move15PrintCurrentDdaEv:
 3925              		@ args = 0, pretend = 0, frame = 0
 3926              		@ frame_needed = 0, uses_anonymous_args = 0
 3927              		@ link register save eliminated.
 3928 0000 0368     		ldr	r3, [r0]
 3929 0002 13B1     		cbz	r3, .L564
 3930 0004 0068     		ldr	r0, [r0]
 3931 0006 FFF7FEBF 		b	_ZNK3DDA10DebugPrintEv
 3932              	.L564:
 3933 000a 7047     		bx	lr
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 70


 3934              		.size	_ZNK4Move15PrintCurrentDdaEv, .-_ZNK4Move15PrintCurrentDdaEv
 3935              		.section	.text._ZNK4Move17GetGeometryStringEv,"ax",%progbits
 3936              		.align	2
 3937              		.global	_ZNK4Move17GetGeometryStringEv
 3938              		.thumb
 3939              		.thumb_func
 3940              		.type	_ZNK4Move17GetGeometryStringEv, %function
 3941              	_ZNK4Move17GetGeometryStringEv:
 3942              		@ args = 0, pretend = 0, frame = 0
 3943              		@ frame_needed = 0, uses_anonymous_args = 0
 3944              		@ link register save eliminated.
 3945 0000 90F8BC3A 		ldrb	r3, [r0, #2748]	@ zero_extendqisi2
 3946 0004 5BB9     		cbnz	r3, .L568
 3947 0006 D0F8303C 		ldr	r3, [r0, #3120]
 3948 000a 012B     		cmp	r3, #1
 3949 000c 09D0     		beq	.L569
 3950 000e 022B     		cmp	r3, #2
 3951 0010 09D0     		beq	.L570
 3952 0012 064A     		ldr	r2, .L572
 3953 0014 0648     		ldr	r0, .L572+4
 3954 0016 032B     		cmp	r3, #3
 3955 0018 08BF     		it	eq
 3956 001a 1046     		moveq	r0, r2
 3957 001c 7047     		bx	lr
 3958              	.L568:
 3959 001e 0548     		ldr	r0, .L572+8
 3960 0020 7047     		bx	lr
 3961              	.L569:
 3962 0022 0548     		ldr	r0, .L572+12
 3963 0024 7047     		bx	lr
 3964              	.L570:
 3965 0026 0548     		ldr	r0, .L572+16
 3966 0028 7047     		bx	lr
 3967              	.L573:
 3968 002a 00BF     		.align	2
 3969              	.L572:
 3970 002c 7C030000 		.word	.LC31
 3971 0030 70030000 		.word	.LC30
 3972 0034 58030000 		.word	.LC27
 3973 0038 60030000 		.word	.LC28
 3974 003c 68030000 		.word	.LC29
 3975              		.size	_ZNK4Move17GetGeometryStringEv, .-_ZNK4Move17GetGeometryStringEv
 3976              		.section	.text._ZNK4Move12IsCoreXYAxisEj,"ax",%progbits
 3977              		.align	2
 3978              		.global	_ZNK4Move12IsCoreXYAxisEj
 3979              		.thumb
 3980              		.thumb_func
 3981              		.type	_ZNK4Move12IsCoreXYAxisEj, %function
 3982              	_ZNK4Move12IsCoreXYAxisEj:
 3983              		@ args = 0, pretend = 0, frame = 0
 3984              		@ frame_needed = 0, uses_anonymous_args = 0
 3985              		@ link register save eliminated.
 3986 0000 D0F8303C 		ldr	r3, [r0, #3120]
 3987 0004 022B     		cmp	r3, #2
 3988 0006 10D0     		beq	.L576
 3989 0008 032B     		cmp	r3, #3
 3990 000a 08D0     		beq	.L577
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 71


 3991 000c 012B     		cmp	r3, #1
 3992 000e 01D0     		beq	.L582
 3993 0010 0020     		movs	r0, #0
 3994 0012 7047     		bx	lr
 3995              	.L582:
 3996 0014 0129     		cmp	r1, #1
 3997 0016 8CBF     		ite	hi
 3998 0018 0020     		movhi	r0, #0
 3999 001a 0120     		movls	r0, #1
 4000 001c 7047     		bx	lr
 4001              	.L577:
 4002 001e 481E     		subs	r0, r1, #1
 4003 0020 0128     		cmp	r0, #1
 4004 0022 8CBF     		ite	hi
 4005 0024 0020     		movhi	r0, #0
 4006 0026 0120     		movls	r0, #1
 4007 0028 7047     		bx	lr
 4008              	.L576:
 4009 002a 19B1     		cbz	r1, .L580
 4010 002c 8B1E     		subs	r3, r1, #2
 4011 002e 5842     		rsbs	r0, r3, #0
 4012 0030 5841     		adcs	r0, r0, r3
 4013 0032 7047     		bx	lr
 4014              	.L580:
 4015 0034 0120     		movs	r0, #1
 4016 0036 7047     		bx	lr
 4017              		.size	_ZNK4Move12IsCoreXYAxisEj, .-_ZNK4Move12IsCoreXYAxisEj
 4018              		.section	.text._ZN4Move9JustHomedEjfP3DDA,"ax",%progbits
 4019              		.align	2
 4020              		.global	_ZN4Move9JustHomedEjfP3DDA
 4021              		.thumb
 4022              		.thumb_func
 4023              		.type	_ZN4Move9JustHomedEjfP3DDA, %function
 4024              	_ZN4Move9JustHomedEjfP3DDA:
 4025              		@ args = 0, pretend = 0, frame = 16
 4026              		@ frame_needed = 0, uses_anonymous_args = 0
 4027 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 4028 0002 2DED028B 		fstmfdd	sp!, {d8}
 4029 0006 85B0     		sub	sp, sp, #20
 4030 0008 1D46     		mov	r5, r3
 4031 000a 0E46     		mov	r6, r1
 4032 000c 08EE102A 		fmsr	s16, r2
 4033 0010 FFF7FEFF 		bl	_ZNK4Move12IsCoreXYAxisEj
 4034 0014 0746     		mov	r7, r0
 4035 0016 18B3     		cbz	r0, .L584
 4036 0018 01AF     		add	r7, sp, #4
 4037 001a 0024     		movs	r4, #0
 4038              	.L586:
 4039 001c 2146     		mov	r1, r4
 4040 001e 2846     		mov	r0, r5
 4041 0020 0022     		movs	r2, #0
 4042 0022 FFF7FEFF 		bl	_ZN3DDA16GetEndCoordinateEjb
 4043 0026 0134     		adds	r4, r4, #1
 4044 0028 032C     		cmp	r4, #3
 4045 002a 47F8040B 		str	r0, [r7], #4	@ float
 4046 002e F5D1     		bne	.L586
 4047 0030 2246     		mov	r2, r4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 72


 4048 0032 04AC     		add	r4, sp, #16
 4049 0034 04EB8603 		add	r3, r4, r6, lsl #2
 4050 0038 2846     		mov	r0, r5
 4051 003a 01A9     		add	r1, sp, #4
 4052 003c 03ED038A 		fsts	s16, [r3, #-12]
 4053 0040 144C     		ldr	r4, .L588
 4054 0042 FFF7FEFF 		bl	_ZN3DDA12SetPositionsEPKfj
 4055              	.L587:
 4056 0046 2369     		ldr	r3, [r4, #16]
 4057 0048 0121     		movs	r1, #1
 4058 004a D3F89822 		ldr	r2, [r3, #664]
 4059 004e 01FA06F6 		lsl	r6, r1, r6
 4060 0052 3243     		orrs	r2, r2, r6
 4061 0054 C3F89822 		str	r2, [r3, #664]
 4062 0058 05B0     		add	sp, sp, #20
 4063              		@ sp needed
 4064 005a BDEC028B 		fldmfdd	sp!, {d8}
 4065 005e F0BD     		pop	{r4, r5, r6, r7, pc}
 4066              	.L584:
 4067 0060 0C4C     		ldr	r4, .L588
 4068 0062 2368     		ldr	r3, [r4]
 4069 0064 03EB8603 		add	r3, r3, r6, lsl #2
 4070 0068 D3ED527A 		flds	s15, [r3, #328]
 4071 006c 68EE277A 		fmuls	s15, s16, s15
 4072 0070 17EE900A 		fmrs	r0, s15
 4073 0074 FFF7FEFF 		bl	roundf
 4074 0078 07EE900A 		fmsr	s15, r0
 4075 007c FDEEE77A 		ftosizs	s15, s15
 4076 0080 6B7A     		ldrb	r3, [r5, #9]	@ zero_extendqisi2
 4077 0082 17EE900A 		fmrs	r0, s15	@ int
 4078 0086 321D     		adds	r2, r6, #4
 4079 0088 67F30003 		bfi	r3, r7, #0, #1
 4080 008c 45F82200 		str	r0, [r5, r2, lsl #2]
 4081 0090 6B72     		strb	r3, [r5, #9]
 4082 0092 D8E7     		b	.L587
 4083              	.L589:
 4084              		.align	2
 4085              	.L588:
 4086 0094 00000000 		.word	reprap
 4087              		.size	_ZN4Move9JustHomedEjfP3DDA, .-_ZN4Move9JustHomedEjfP3DDA
 4088              		.section	.text._ZN4Move10HitLowStopEjP3DDA,"ax",%progbits
 4089              		.align	2
 4090              		.global	_ZN4Move10HitLowStopEjP3DDA
 4091              		.thumb
 4092              		.thumb_func
 4093              		.type	_ZN4Move10HitLowStopEjP3DDA, %function
 4094              	_ZN4Move10HitLowStopEjP3DDA:
 4095              		@ args = 0, pretend = 0, frame = 0
 4096              		@ frame_needed = 0, uses_anonymous_args = 0
 4097              		@ link register save eliminated.
 4098 0000 F0B4     		push	{r4, r5, r6, r7}
 4099 0002 0A4D     		ldr	r5, .L593
 4100 0004 2B69     		ldr	r3, [r5, #16]
 4101 0006 D3F8B061 		ldr	r6, [r3, #432]
 4102 000a B142     		cmp	r1, r6
 4103 000c 0CD2     		bcs	.L590
 4104 000e 90F8BC3A 		ldrb	r3, [r0, #2748]	@ zero_extendqisi2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 73


 4105 0012 4BB9     		cbnz	r3, .L590
 4106 0014 2B68     		ldr	r3, [r5]
 4107 0016 01F5A774 		add	r4, r1, #334
 4108 001a 03EB8404 		add	r4, r3, r4, lsl #2
 4109 001e 1346     		mov	r3, r2
 4110 0020 2268     		ldr	r2, [r4]	@ float
 4111 0022 F0BC     		pop	{r4, r5, r6, r7}
 4112 0024 FFF7FEBF 		b	_ZN4Move9JustHomedEjfP3DDA
 4113              	.L590:
 4114 0028 F0BC     		pop	{r4, r5, r6, r7}
 4115 002a 7047     		bx	lr
 4116              	.L594:
 4117              		.align	2
 4118              	.L593:
 4119 002c 00000000 		.word	reprap
 4120              		.size	_ZN4Move10HitLowStopEjP3DDA, .-_ZN4Move10HitLowStopEjP3DDA
 4121              		.section	.text._ZN4Move11HitHighStopEjP3DDA,"ax",%progbits
 4122              		.align	2
 4123              		.global	_ZN4Move11HitHighStopEjP3DDA
 4124              		.thumb
 4125              		.thumb_func
 4126              		.type	_ZN4Move11HitHighStopEjP3DDA, %function
 4127              	_ZN4Move11HitHighStopEjP3DDA:
 4128              		@ args = 0, pretend = 0, frame = 0
 4129              		@ frame_needed = 0, uses_anonymous_args = 0
 4130              		@ link register save eliminated.
 4131 0000 30B4     		push	{r4, r5}
 4132 0002 144C     		ldr	r4, .L600
 4133 0004 2369     		ldr	r3, [r4, #16]
 4134 0006 D3F8B051 		ldr	r5, [r3, #432]
 4135 000a A942     		cmp	r1, r5
 4136 000c 1FD2     		bcs	.L595
 4137 000e 90F8BC3A 		ldrb	r3, [r0, #2748]	@ zero_extendqisi2
 4138 0012 63B9     		cbnz	r3, .L599
 4139 0014 2368     		ldr	r3, [r4]
 4140 0016 01F5A474 		add	r4, r1, #328
 4141 001a 03EB8403 		add	r3, r3, r4, lsl #2
 4142 001e D3ED007A 		flds	s15, [r3]
 4143 0022 30BC     		pop	{r4, r5}
 4144 0024 1346     		mov	r3, r2
 4145 0026 17EE902A 		fmrs	r2, s15
 4146 002a FFF7FEBF 		b	_ZN4Move9JustHomedEjfP3DDA
 4147              	.L599:
 4148 002e 00F68423 		addw	r3, r0, #2692
 4149 0032 03EB8104 		add	r4, r3, r1, lsl #2
 4150 0036 D4ED077A 		flds	s15, [r4, #28]
 4151 003a 93ED167A 		flds	s14, [r3, #88]
 4152 003e 77EE277A 		fadds	s15, s14, s15
 4153 0042 1346     		mov	r3, r2
 4154 0044 30BC     		pop	{r4, r5}
 4155 0046 17EE902A 		fmrs	r2, s15
 4156 004a FFF7FEBF 		b	_ZN4Move9JustHomedEjfP3DDA
 4157              	.L595:
 4158 004e 30BC     		pop	{r4, r5}
 4159 0050 7047     		bx	lr
 4160              	.L601:
 4161 0052 00BF     		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 74


 4162              	.L600:
 4163 0054 00000000 		.word	reprap
 4164              		.size	_ZN4Move11HitHighStopEjP3DDA, .-_ZN4Move11HitHighStopEjP3DDA
 4165              		.section	.text._ZN4Move12DoDeltaProbeEffff,"ax",%progbits
 4166              		.align	2
 4167              		.global	_ZN4Move12DoDeltaProbeEffff
 4168              		.thumb
 4169              		.thumb_func
 4170              		.type	_ZN4Move12DoDeltaProbeEffff, %function
 4171              	_ZN4Move12DoDeltaProbeEffff:
 4172              		@ args = 4, pretend = 0, frame = 0
 4173              		@ frame_needed = 0, uses_anonymous_args = 0
 4174 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 4175 0002 0446     		mov	r4, r0
 4176 0004 90F82C0C 		ldrb	r0, [r0, #3116]	@ zero_extendqisi2
 4177 0008 83B0     		sub	sp, sp, #12
 4178 000a 68B1     		cbz	r0, .L603
 4179 000c D4F8240C 		ldr	r0, [r4, #3108]
 4180 0010 831E     		subs	r3, r0, #2
 4181 0012 012B     		cmp	r3, #1
 4182 0014 4CD8     		bhi	.L627
 4183 0016 0338     		subs	r0, r0, #3
 4184 0018 4FF00003 		mov	r3, #0
 4185 001c 18BF     		it	ne
 4186 001e 0120     		movne	r0, #1
 4187 0020 84F82C3C 		strb	r3, [r4, #3116]
 4188 0024 03B0     		add	sp, sp, #12
 4189              		@ sp needed
 4190 0026 F0BD     		pop	{r4, r5, r6, r7, pc}
 4191              	.L603:
 4192 0028 2568     		ldr	r5, [r4]
 4193 002a 15B1     		cbz	r5, .L606
 4194              	.L607:
 4195 002c 0020     		movs	r0, #0
 4196 002e 03B0     		add	sp, sp, #12
 4197              		@ sp needed
 4198 0030 F0BD     		pop	{r4, r5, r6, r7, pc}
 4199              	.L606:
 4200 0032 A668     		ldr	r6, [r4, #8]
 4201 0034 6068     		ldr	r0, [r4, #4]
 4202 0036 8642     		cmp	r6, r0
 4203 0038 F8D1     		bne	.L607
 4204 003a DDED087A 		flds	s15, [sp, #32]
 4205 003e 04F53166 		add	r6, r4, #2832
 4206 0042 CDED007A 		fsts	s15, [sp]
 4207 0046 3046     		mov	r0, r6
 4208 0048 FFF7FEFF 		bl	_ZN10DeltaProbe4InitEffff
 4209 004c 0028     		cmp	r0, #0
 4210 004e EDD0     		beq	.L607
 4211 0050 3046     		mov	r0, r6
 4212 0052 FFF7FEFF 		bl	_ZN10DeltaProbe5StartEv
 4213 0056 431C     		adds	r3, r0, #1
 4214 0058 0746     		mov	r7, r0
 4215 005a 29D0     		beq	.L627
 4216 005c 1E4B     		ldr	r3, .L629
 4217 005e 1E68     		ldr	r6, [r3]
 4218 0060 2946     		mov	r1, r5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 75


 4219 0062 3046     		mov	r0, r6
 4220 0064 FFF7FEFF 		bl	_ZN8Platform11EnableDriveEj
 4221 0068 3046     		mov	r0, r6
 4222 006a 0121     		movs	r1, #1
 4223 006c FFF7FEFF 		bl	_ZN8Platform11EnableDriveEj
 4224 0070 3046     		mov	r0, r6
 4225 0072 0221     		movs	r1, #2
 4226 0074 FFF7FEFF 		bl	_ZN8Platform11EnableDriveEj
 4227 0078 0123     		movs	r3, #1
 4228 007a 84F82C3C 		strb	r3, [r4, #3116]
 4229 007e 84F8803A 		strb	r3, [r4, #2688]
 4230              	@ 470 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 4231 0082 EFF31086 		MRS r6, primask
 4232              	@ 0 "" 2
 4233              	@ 330 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 4234 0086 72B6     		cpsid i
 4235              	@ 0 "" 2
 4236              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 4237 0088 BFF35F8F 		dmb
 4238              	@ 0 "" 2
 4239              		.thumb
 4240 008c 134D     		ldr	r5, .L629+4
 4241 008e 144B     		ldr	r3, .L629+8
 4242 0090 0022     		movs	r2, #0
 4243 0092 2A70     		strb	r2, [r5]
 4244 0094 D3F89000 		ldr	r0, [r3, #144]
 4245 0098 C4F8280C 		str	r0, [r4, #3112]
 4246 009c 3844     		add	r0, r0, r7
 4247 009e FFF7FEFF 		bl	_ZN8Platform17ScheduleInterruptEm
 4248 00a2 48B9     		cbnz	r0, .L628
 4249              	.L611:
 4250 00a4 26B9     		cbnz	r6, .L627
 4251 00a6 0123     		movs	r3, #1
 4252 00a8 2B70     		strb	r3, [r5]
 4253              	@ 456 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmIns
 4254 00aa BFF35F8F 		dmb
 4255              	@ 0 "" 2
 4256              	@ 319 "C:\Google_Drive\projects\Fusion3\firmware_chg\CoreNG\asf\thirdparty\CMSIS\Include/core_cmFun
 4257 00ae 62B6     		cpsie i
 4258              	@ 0 "" 2
 4259              		.thumb
 4260              	.L627:
 4261 00b0 4FF0FF30 		mov	r0, #-1
 4262 00b4 03B0     		add	sp, sp, #12
 4263              		@ sp needed
 4264 00b6 F0BD     		pop	{r4, r5, r6, r7, pc}
 4265              	.L628:
 4266 00b8 2368     		ldr	r3, [r4]
 4267 00ba 2BB1     		cbz	r3, .L612
 4268              	.L614:
 4269 00bc 2068     		ldr	r0, [r4]
 4270 00be FFF7FEFF 		bl	_ZN3DDA4StepEv
 4271 00c2 0028     		cmp	r0, #0
 4272 00c4 FAD1     		bne	.L614
 4273 00c6 EDE7     		b	.L611
 4274              	.L612:
 4275 00c8 94F82C3C 		ldrb	r3, [r4, #3116]	@ zero_extendqisi2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 76


 4276 00cc 002B     		cmp	r3, #0
 4277 00ce E9D0     		beq	.L611
 4278 00d0 2046     		mov	r0, r4
 4279 00d2 FFF7FEFF 		bl	_ZN4Move19DeltaProbeInterruptEv
 4280 00d6 E5E7     		b	.L611
 4281              	.L630:
 4282              		.align	2
 4283              	.L629:
 4284 00d8 00000000 		.word	reprap
 4285 00dc 00000000 		.word	g_interrupt_enabled
 4286 00e0 00000940 		.word	1074331648
 4287              		.size	_ZN4Move12DoDeltaProbeEffff, .-_ZN4Move12DoDeltaProbeEffff
 4288              		.section	.text._ZN4Move11PrintMatrixEPKcRK10MathMatrixIdEjj,"ax",%progbits
 4289              		.align	2
 4290              		.global	_ZN4Move11PrintMatrixEPKcRK10MathMatrixIdEjj
 4291              		.thumb
 4292              		.thumb_func
 4293              		.type	_ZN4Move11PrintMatrixEPKcRK10MathMatrixIdEjj, %function
 4294              	_ZN4Move11PrintMatrixEPKcRK10MathMatrixIdEjj:
 4295              		@ args = 0, pretend = 0, frame = 0
 4296              		@ frame_needed = 0, uses_anonymous_args = 0
 4297 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 4298 0004 0D46     		mov	r5, r1
 4299 0006 83B0     		sub	sp, sp, #12
 4300 0008 9146     		mov	r9, r2
 4301 000a 0146     		mov	r1, r0
 4302 000c 1B48     		ldr	r0, .L649
 4303 000e 1F46     		mov	r7, r3
 4304 0010 FFF7FEFF 		bl	debugPrintf
 4305 0014 B9F1000F 		cmp	r9, #0
 4306 0018 27D0     		beq	.L647
 4307 001a 07B3     		cbz	r7, .L648
 4308              	.L633:
 4309 001c B9F1000F 		cmp	r9, #0
 4310 0020 1AD0     		beq	.L631
 4311 0022 0026     		movs	r6, #0
 4312 0024 07F1FF38 		add	r8, r7, #-1
 4313              	.L635:
 4314 0028 9FB1     		cbz	r7, .L638
 4315 002a 0024     		movs	r4, #0
 4316              	.L639:
 4317 002c 2B68     		ldr	r3, [r5]
 4318 002e 2246     		mov	r2, r4
 4319 0030 DB68     		ldr	r3, [r3, #12]
 4320 0032 3146     		mov	r1, r6
 4321 0034 2846     		mov	r0, r5
 4322 0036 9847     		blx	r3
 4323 0038 4445     		cmp	r4, r8
 4324 003a 14BF     		ite	ne
 4325 003c 2021     		movne	r1, #32
 4326 003e 0A21     		moveq	r1, #10
 4327 0040 D0E90023 		ldrd	r2, [r0]
 4328 0044 0134     		adds	r4, r4, #1
 4329 0046 0091     		str	r1, [sp]
 4330 0048 0D48     		ldr	r0, .L649+4
 4331 004a FFF7FEFF 		bl	debugPrintf
 4332 004e BC42     		cmp	r4, r7
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 77


 4333 0050 ECD1     		bne	.L639
 4334              	.L638:
 4335 0052 0136     		adds	r6, r6, #1
 4336 0054 4E45     		cmp	r6, r9
 4337 0056 E7D1     		bne	.L635
 4338              	.L631:
 4339 0058 03B0     		add	sp, sp, #12
 4340              		@ sp needed
 4341 005a BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 4342              	.L648:
 4343 005e 2B68     		ldr	r3, [r5]
 4344 0060 2846     		mov	r0, r5
 4345 0062 5B68     		ldr	r3, [r3, #4]
 4346 0064 9847     		blx	r3
 4347 0066 0746     		mov	r7, r0
 4348 0068 D8E7     		b	.L633
 4349              	.L647:
 4350 006a 2B68     		ldr	r3, [r5]
 4351 006c 2846     		mov	r0, r5
 4352 006e 1B68     		ldr	r3, [r3]
 4353 0070 9847     		blx	r3
 4354 0072 8146     		mov	r9, r0
 4355 0074 002F     		cmp	r7, #0
 4356 0076 D1D1     		bne	.L633
 4357 0078 F1E7     		b	.L648
 4358              	.L650:
 4359 007a 00BF     		.align	2
 4360              	.L649:
 4361 007c EC000000 		.word	.LC8
 4362 0080 84030000 		.word	.LC32
 4363              		.size	_ZN4Move11PrintMatrixEPKcRK10MathMatrixIdEjj, .-_ZN4Move11PrintMatrixEPKcRK10MathMatrixIdEjj
 4364              		.section	.text._ZN4Move11PrintVectorEPKcPKdj,"ax",%progbits
 4365              		.align	2
 4366              		.global	_ZN4Move11PrintVectorEPKcPKdj
 4367              		.thumb
 4368              		.thumb_func
 4369              		.type	_ZN4Move11PrintVectorEPKcPKdj, %function
 4370              	_ZN4Move11PrintVectorEPKcPKdj:
 4371              		@ args = 0, pretend = 0, frame = 0
 4372              		@ frame_needed = 0, uses_anonymous_args = 0
 4373 0000 70B5     		push	{r4, r5, r6, lr}
 4374 0002 0D46     		mov	r5, r1
 4375 0004 1646     		mov	r6, r2
 4376 0006 0146     		mov	r1, r0
 4377 0008 0848     		ldr	r0, .L655
 4378 000a FFF7FEFF 		bl	debugPrintf
 4379 000e 0024     		movs	r4, #0
 4380 0010 3EB1     		cbz	r6, .L653
 4381              	.L654:
 4382 0012 0134     		adds	r4, r4, #1
 4383 0014 0648     		ldr	r0, .L655+4
 4384 0016 F5E80223 		ldrd	r2, [r5], #8
 4385 001a FFF7FEFF 		bl	debugPrintf
 4386 001e B442     		cmp	r4, r6
 4387 0020 F7D1     		bne	.L654
 4388              	.L653:
 4389 0022 0448     		ldr	r0, .L655+8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 78


 4390 0024 BDE87040 		pop	{r4, r5, r6, lr}
 4391 0028 FFF7FEBF 		b	debugPrintf
 4392              	.L656:
 4393              		.align	2
 4394              	.L655:
 4395 002c 8C030000 		.word	.LC33
 4396 0030 90030000 		.word	.LC34
 4397 0034 18010000 		.word	.LC12
 4398              		.size	_ZN4Move11PrintVectorEPKcPKdj, .-_ZN4Move11PrintVectorEPKcPKdj
 4399              		.global	__aeabi_ui2d
 4400              		.section	.text._ZN4Move18DoDeltaCalibrationEjR9StringRef,"ax",%progbits
 4401              		.align	2
 4402              		.global	_ZN4Move18DoDeltaCalibrationEjR9StringRef
 4403              		.thumb
 4404              		.thumb_func
 4405              		.type	_ZN4Move18DoDeltaCalibrationEjR9StringRef, %function
 4406              	_ZN4Move18DoDeltaCalibrationEjR9StringRef:
 4407              		@ args = 0, pretend = 0, frame = 8152
 4408              		@ frame_needed = 0, uses_anonymous_args = 0
 4409 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 4410 0004 2DED068B 		fstmfdd	sp!, {d8, d9, d10}
 4411 0008 ADF5FF5D 		sub	sp, sp, #8160
 4412 000c 83B0     		sub	sp, sp, #12
 4413 000e 0024     		movs	r4, #0
 4414 0010 0F91     		str	r1, [sp, #60]
 4415 0012 1790     		str	r0, [sp, #92]
 4416 0014 2892     		str	r2, [sp, #160]
 4417 0016 1294     		str	r4, [sp, #72]
 4418 0018 2346     		mov	r3, r4
 4419 001a 0146     		mov	r1, r0
 4420 001c 02E0     		b	.L659
 4421              	.L747:
 4422 001e 0133     		adds	r3, r3, #1
 4423 0020 402B     		cmp	r3, #64
 4424 0022 06D0     		beq	.L658
 4425              	.L659:
 4426 0024 CA18     		adds	r2, r1, r3
 4427 0026 92F8A029 		ldrb	r2, [r2, #2464]	@ zero_extendqisi2
 4428 002a 02F00702 		and	r2, r2, #7
 4429 002e 072A     		cmp	r2, #7
 4430 0030 F5D0     		beq	.L747
 4431              	.L658:
 4432 0032 0F9C     		ldr	r4, [sp, #60]
 4433 0034 1293     		str	r3, [sp, #72]
 4434 0036 E31E     		subs	r3, r4, #3
 4435 0038 062B     		cmp	r3, #6
 4436 003a 00F29D83 		bhi	.L660
 4437 003e 052C     		cmp	r4, #5
 4438 0040 00F09A83 		beq	.L660
 4439 0044 6048     		ldr	r0, .L757+8
 4440 0046 B0F84030 		ldrh	r3, [r0, #64]
 4441 004a D906     		lsls	r1, r3, #27
 4442 004c 00F1A283 		bmi	.L748
 4443 0050 129C     		ldr	r4, [sp, #72]
 4444 0052 DFED5E9A 		flds	s19, .L757+12
 4445 0056 002C     		cmp	r4, #0
 4446 0058 00F0AD83 		beq	.L723
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 79


 4447              	.L756:
 4448 005c 42AC     		add	r4, sp, #264
 4449 005e 1E94     		str	r4, [sp, #120]
 4450 0060 40AC     		add	r4, sp, #256
 4451 0062 2194     		str	r4, [sp, #132]
 4452 0064 0DF6E854 		addw	r4, sp, #3560
 4453 0068 4FF0000B 		mov	fp, #0
 4454 006c 0DF6E457 		addw	r7, sp, #3556
 4455 0070 4FF0000A 		mov	r10, #0
 4456 0074 1B94     		str	r4, [sp, #108]
 4457 0076 179C     		ldr	r4, [sp, #92]
 4458 0078 DDF88480 		ldr	r8, [sp, #132]
 4459 007c 0DF55E60 		add	r0, sp, #3552
 4460 0080 4BEC1AAB 		fmdrr	d10, r10, fp
 4461 0084 BB46     		mov	fp, r7
 4462 0086 179F     		ldr	r7, [sp, #92]
 4463 0088 2290     		str	r0, [sp, #136]
 4464 008a 04F68426 		addw	r6, r4, #2692
 4465 008e F0EE698A 		fcpys	s17, s19
 4466 0092 0DF5FE65 		add	r5, sp, #2032
 4467 0096 0024     		movs	r4, #0
 4468 0098 8146     		mov	r9, r0
 4469              	.L665:
 4470 009a 3B19     		adds	r3, r7, r4
 4471 009c 2146     		mov	r1, r4
 4472 009e 93F8A039 		ldrb	r3, [r3, #2464]	@ zero_extendqisi2
 4473 00a2 C3F3C003 		ubfx	r3, r3, #3, #1
 4474 00a6 0093     		str	r3, [sp]
 4475 00a8 4A46     		mov	r2, r9
 4476 00aa 5B46     		mov	r3, fp
 4477 00ac 3846     		mov	r0, r7
 4478 00ae A8EC02AB 		fstmiad	r8!, {d10}
 4479 00b2 FFF7FEFF 		bl	_ZNK4Move19GetProbeCoordinatesEiRfS0_b
 4480 00b6 0022     		movs	r2, #0
 4481 00b8 08EE100A 		fmsr	s16, r0
 4482 00bc 4946     		mov	r1, r9
 4483 00be 3046     		mov	r0, r6
 4484 00c0 C9ED028A 		fsts	s17, [r9, #8]
 4485 00c4 FFF7FEFF 		bl	_ZNK15DeltaParameters9TransformEPKfj
 4486 00c8 FFF7FEFF 		bl	__aeabi_f2d
 4487 00cc 0122     		movs	r2, #1
 4488 00ce 45E90401 		strd	r0, [r5, #-16]
 4489 00d2 4946     		mov	r1, r9
 4490 00d4 3046     		mov	r0, r6
 4491 00d6 FFF7FEFF 		bl	_ZNK15DeltaParameters9TransformEPKfj
 4492 00da FFF7FEFF 		bl	__aeabi_f2d
 4493 00de 0222     		movs	r2, #2
 4494 00e0 45E90201 		strd	r0, [r5, #-8]
 4495 00e4 4946     		mov	r1, r9
 4496 00e6 3046     		mov	r0, r6
 4497 00e8 FFF7FEFF 		bl	_ZNK15DeltaParameters9TransformEPKfj
 4498 00ec FFF7FEFF 		bl	__aeabi_f2d
 4499 00f0 E5E80601 		strd	r0, [r5], #24
 4500 00f4 1299     		ldr	r1, [sp, #72]
 4501 00f6 0134     		adds	r4, r4, #1
 4502 00f8 8C42     		cmp	r4, r1
 4503 00fa E8EE089A 		vfma.f32	s19, s16, s16
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 80


 4504 00fe CCD1     		bne	.L665
 4505              	.L664:
 4506 0100 0F9C     		ldr	r4, [sp, #60]
 4507 0102 E400     		lsls	r4, r4, #3
 4508 0104 1394     		str	r4, [sp, #76]
 4509 0106 1B9C     		ldr	r4, [sp, #108]
 4510 0108 04F14802 		add	r2, r4, #72
 4511 010c 129C     		ldr	r4, [sp, #72]
 4512 010e 04EBC403 		add	r3, r4, r4, lsl #3
 4513 0112 179C     		ldr	r4, [sp, #92]
 4514 0114 04F52074 		add	r4, r4, #640
 4515 0118 2594     		str	r4, [sp, #148]
 4516 011a 139C     		ldr	r4, [sp, #76]
 4517 011c 1444     		add	r4, r4, r2
 4518 011e 1F94     		str	r4, [sp, #124]
 4519 0120 139C     		ldr	r4, [sp, #76]
 4520 0122 2EA8     		add	r0, sp, #184
 4521 0124 0444     		add	r4, r4, r0
 4522 0126 2794     		str	r4, [sp, #156]
 4523 0128 2598     		ldr	r0, [sp, #148]
 4524 012a 129C     		ldr	r4, [sp, #72]
 4525 012c 00EB8404 		add	r4, r0, r4, lsl #2
 4526 0130 1A94     		str	r4, [sp, #104]
 4527 0132 0224     		movs	r4, #2
 4528 0134 2494     		str	r4, [sp, #144]
 4529 0136 0F9C     		ldr	r4, [sp, #60]
 4530 0138 9FED218B 		fldd	d8, .L757
 4531 013c DB00     		lsls	r3, r3, #3
 4532 013e 0134     		adds	r4, r4, #1
 4533 0140 2993     		str	r3, [sp, #164]
 4534 0142 2394     		str	r4, [sp, #140]
 4535              	.L717:
 4536 0144 229C     		ldr	r4, [sp, #136]
 4537 0146 2248     		ldr	r0, .L757+16
 4538 0148 2060     		str	r0, [r4]
 4539 014a 129C     		ldr	r4, [sp, #72]
 4540 014c 002C     		cmp	r4, #0
 4541 014e 4ED0     		beq	.L671
 4542 0150 179C     		ldr	r4, [sp, #92]
 4543 0152 0F9E     		ldr	r6, [sp, #60]
 4544 0154 04F68429 		addw	r9, r4, #2692
 4545 0158 0DF5FE64 		add	r4, sp, #2032
 4546 015c 0694     		str	r4, [sp, #24]
 4547 015e 1B9C     		ldr	r4, [sp, #108]
 4548 0160 0894     		str	r4, [sp, #32]
 4549 0162 0024     		movs	r4, #0
 4550 0164 0B94     		str	r4, [sp, #44]
 4551              	.L672:
 4552 0166 069C     		ldr	r4, [sp, #24]
 4553 0168 54E90401 		ldrd	r0, [r4, #-16]
 4554 016c FFF7FEFF 		bl	__aeabi_d2f
 4555 0170 8246     		mov	r10, r0	@ float
 4556 0172 54E90201 		ldrd	r0, [r4, #-8]
 4557 0176 FFF7FEFF 		bl	__aeabi_d2f
 4558 017a 8046     		mov	r8, r0	@ float
 4559 017c D4E90001 		ldrd	r0, [r4]
 4560 0180 FFF7FEFF 		bl	__aeabi_d2f
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 81


 4561 0184 0124     		movs	r4, #1
 4562 0186 0746     		mov	r7, r0	@ float
 4563 0188 DDF820B0 		ldr	fp, [sp, #32]
 4564 018c 0025     		movs	r5, #0
 4565 018e 0FE0     		b	.L720
 4566              	.L724:
 4567 0190 2946     		mov	r1, r5
 4568              	.L669:
 4569 0192 4346     		mov	r3, r8	@ float
 4570 0194 0097     		str	r7, [sp]	@ float
 4571 0196 4846     		mov	r0, r9
 4572 0198 5246     		mov	r2, r10	@ float
 4573 019a FFF7FEFF 		bl	_ZN15DeltaParameters17ComputeDerivativeEjfff
 4574 019e A642     		cmp	r6, r4
 4575 01a0 05F10105 		add	r5, r5, #1
 4576 01a4 EBE80201 		strd	r0, [fp], #8
 4577 01a8 04F10103 		add	r3, r4, #1
 4578 01ac 12D9     		bls	.L749
 4579 01ae 1C46     		mov	r4, r3
 4580              	.L720:
 4581 01b0 082E     		cmp	r6, #8
 4582 01b2 EDD1     		bne	.L724
 4583 01b4 052D     		cmp	r5, #5
 4584 01b6 94BF     		ite	ls
 4585 01b8 2946     		movls	r1, r5
 4586 01ba 2146     		movhi	r1, r4
 4587 01bc E9E7     		b	.L669
 4588              	.L758:
 4589 01be 00BF     		.align	3
 4590              	.L757:
 4591 01c0 00000000 		.word	0
 4592 01c4 00000000 		.word	0
 4593 01c8 00000000 		.word	reprap
 4594 01cc 00000000 		.word	0
 4595 01d0 08000000 		.word	_ZTV11FixedMatrixIdLj64ELj9EE+8
 4596              	.L749:
 4597 01d4 0B9C     		ldr	r4, [sp, #44]
 4598 01d6 0134     		adds	r4, r4, #1
 4599 01d8 0B94     		str	r4, [sp, #44]
 4600 01da 069C     		ldr	r4, [sp, #24]
 4601 01dc 0B98     		ldr	r0, [sp, #44]
 4602 01de 1834     		adds	r4, r4, #24
 4603 01e0 0694     		str	r4, [sp, #24]
 4604 01e2 089C     		ldr	r4, [sp, #32]
 4605 01e4 4834     		adds	r4, r4, #72
 4606 01e6 0894     		str	r4, [sp, #32]
 4607 01e8 129C     		ldr	r4, [sp, #72]
 4608 01ea A042     		cmp	r0, r4
 4609 01ec BBD1     		bne	.L672
 4610              	.L671:
 4611 01ee 8748     		ldr	r0, .L759
 4612 01f0 B0F84030 		ldrh	r3, [r0, #64]
 4613 01f4 C3F30013 		ubfx	r3, r3, #4, #1
 4614 01f8 0446     		mov	r4, r0
 4615 01fa 2093     		str	r3, [sp, #128]
 4616 01fc 53B1     		cbz	r3, .L668
 4617 01fe 0F9B     		ldr	r3, [sp, #60]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 82


 4618 0200 8348     		ldr	r0, .L759+4
 4619 0202 2299     		ldr	r1, [sp, #136]
 4620 0204 129A     		ldr	r2, [sp, #72]
 4621 0206 FFF7FEFF 		bl	_ZN4Move11PrintMatrixEPKcRK10MathMatrixIdEjj
 4622 020a B4F84030 		ldrh	r3, [r4, #64]
 4623 020e C3F30013 		ubfx	r3, r3, #4, #1
 4624 0212 2093     		str	r3, [sp, #128]
 4625              	.L668:
 4626 0214 179C     		ldr	r4, [sp, #92]
 4627 0216 7F49     		ldr	r1, .L759+8
 4628 0218 D4F88002 		ldr	r0, [r4, #640]	@ float
 4629 021c CDF80015 		str	r1, [sp, #1280]
 4630 0220 FFF7FEFF 		bl	__aeabi_f2d
 4631 0224 219C     		ldr	r4, [sp, #132]
 4632 0226 D4E90023 		ldrd	r2, [r4]
 4633 022a FFF7FEFF 		bl	__aeabi_dadd
 4634 022e 239A     		ldr	r2, [sp, #140]
 4635 0230 DDF84890 		ldr	r9, [sp, #72]
 4636 0234 1C90     		str	r0, [sp, #112]
 4637 0236 0DF5A064 		add	r4, sp, #1280
 4638 023a 04EBC204 		add	r4, r4, r2, lsl #3
 4639 023e 2694     		str	r4, [sp, #152]
 4640 0240 0C94     		str	r4, [sp, #48]
 4641 0242 1B9C     		ldr	r4, [sp, #108]
 4642 0244 4834     		adds	r4, r4, #72
 4643 0246 0B94     		str	r4, [sp, #44]
 4644 0248 0DF5A164 		add	r4, sp, #1288
 4645 024c 0E94     		str	r4, [sp, #56]
 4646 024e 299C     		ldr	r4, [sp, #164]
 4647 0250 01F10043 		add	r3, r1, #-2147483648
 4648 0254 483C     		subs	r4, r4, #72
 4649 0256 1D93     		str	r3, [sp, #116]
 4650 0258 4FF0000A 		mov	r10, #0
 4651 025c 1094     		str	r4, [sp, #64]
 4652              	.L673:
 4653 025e 0B9C     		ldr	r4, [sp, #44]
 4654 0260 DDF838B0 		ldr	fp, [sp, #56]
 4655 0264 14ED127B 		fldd	d7, [r4, #-72]
 4656 0268 8DED087B 		fstd	d7, [sp, #32]
 4657 026c 1B9C     		ldr	r4, [sp, #108]
 4658 026e 0694     		str	r4, [sp, #24]
 4659 0270 4FF00008 		mov	r8, #0
 4660              	.L680:
 4661 0274 069C     		ldr	r4, [sp, #24]
 4662 0276 F4E80201 		ldrd	r0, [r4], #8
 4663 027a DDE90823 		ldrd	r2, [sp, #32]
 4664 027e 0694     		str	r4, [sp, #24]
 4665 0280 FFF7FEFF 		bl	__aeabi_dmul
 4666 0284 B9F1010F 		cmp	r9, #1
 4667 0288 0446     		mov	r4, r0
 4668 028a 0D46     		mov	r5, r1
 4669 028c 15D9     		bls	.L674
 4670 028e 0B9F     		ldr	r7, [sp, #44]
 4671 0290 0126     		movs	r6, #1
 4672              	.L675:
 4673 0292 07EB0A03 		add	r3, r7, r10
 4674 0296 4344     		add	r3, r3, r8
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 83


 4675 0298 D3E90023 		ldrd	r2, [r3]
 4676 029c F7E81201 		ldrd	r0, [r7], #72
 4677 02a0 FFF7FEFF 		bl	__aeabi_dmul
 4678 02a4 0246     		mov	r2, r0
 4679 02a6 0B46     		mov	r3, r1
 4680 02a8 2046     		mov	r0, r4
 4681 02aa 2946     		mov	r1, r5
 4682 02ac FFF7FEFF 		bl	__aeabi_dadd
 4683 02b0 0136     		adds	r6, r6, #1
 4684 02b2 4E45     		cmp	r6, r9
 4685 02b4 0446     		mov	r4, r0
 4686 02b6 0D46     		mov	r5, r1
 4687 02b8 EBD1     		bne	.L675
 4688              	.L674:
 4689 02ba EBE80245 		strd	r4, [fp], #8
 4690 02be 139C     		ldr	r4, [sp, #76]
 4691 02c0 08F10808 		add	r8, r8, #8
 4692 02c4 4445     		cmp	r4, r8
 4693 02c6 D5D1     		bne	.L680
 4694 02c8 DDE90823 		ldrd	r2, [sp, #32]
 4695 02cc DDE91C01 		ldrd	r0, [sp, #112]
 4696 02d0 FFF7FEFF 		bl	__aeabi_dmul
 4697 02d4 B9F1010F 		cmp	r9, #1
 4698 02d8 0446     		mov	r4, r0
 4699 02da 0D46     		mov	r5, r1
 4700 02dc 31D9     		bls	.L677
 4701 02de 0B99     		ldr	r1, [sp, #44]
 4702 02e0 DDF840B0 		ldr	fp, [sp, #64]
 4703 02e4 1798     		ldr	r0, [sp, #92]
 4704 02e6 1E9F     		ldr	r7, [sp, #120]
 4705 02e8 CDF81890 		str	r9, [sp, #24]
 4706 02ec 8B44     		add	fp, fp, r1
 4707 02ee 00F52178 		add	r8, r0, #644
 4708 02f2 0E46     		mov	r6, r1
 4709 02f4 D946     		mov	r9, fp
 4710 02f6 CDF820A0 		str	r10, [sp, #32]
 4711              	.L678:
 4712 02fa F7E80223 		ldrd	r2, [r7], #8
 4713 02fe 58F8040B 		ldr	r0, [r8], #4	@ float
 4714 0302 0592     		str	r2, [sp, #20]
 4715 0304 0493     		str	r3, [sp, #16]
 4716 0306 FFF7FEFF 		bl	__aeabi_f2d
 4717 030a 059A     		ldr	r2, [sp, #20]
 4718 030c 049B     		ldr	r3, [sp, #16]
 4719 030e FFF7FEFF 		bl	__aeabi_dadd
 4720 0312 01F1004B 		add	fp, r1, #-2147483648
 4721 0316 F6E81223 		ldrd	r2, [r6], #72
 4722 031a 5946     		mov	r1, fp
 4723 031c 8246     		mov	r10, r0
 4724 031e FFF7FEFF 		bl	__aeabi_dmul
 4725 0322 0246     		mov	r2, r0
 4726 0324 0B46     		mov	r3, r1
 4727 0326 2046     		mov	r0, r4
 4728 0328 2946     		mov	r1, r5
 4729 032a FFF7FEFF 		bl	__aeabi_dadd
 4730 032e B145     		cmp	r9, r6
 4731 0330 0446     		mov	r4, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 84


 4732 0332 0D46     		mov	r5, r1
 4733 0334 E1D1     		bne	.L678
 4734 0336 CDE918AB 		strd	r10, [sp, #96]
 4735 033a DDF81890 		ldr	r9, [sp, #24]
 4736 033e DDF820A0 		ldr	r10, [sp, #32]
 4737              	.L677:
 4738 0342 0C9B     		ldr	r3, [sp, #48]
 4739 0344 0B9A     		ldr	r2, [sp, #44]
 4740 0346 E3E81445 		strd	r4, [r3], #80
 4741 034a 0E9C     		ldr	r4, [sp, #56]
 4742 034c 0C93     		str	r3, [sp, #48]
 4743 034e 5034     		adds	r4, r4, #80
 4744 0350 0E94     		str	r4, [sp, #56]
 4745 0352 1F9C     		ldr	r4, [sp, #124]
 4746 0354 0832     		adds	r2, r2, #8
 4747 0356 A242     		cmp	r2, r4
 4748 0358 0B92     		str	r2, [sp, #44]
 4749 035a AAF1080A 		sub	r10, r10, #8
 4750 035e 7FF47EAF 		bne	.L673
 4751 0362 209C     		ldr	r4, [sp, #128]
 4752 0364 64B1     		cbz	r4, .L681
 4753 0366 2C48     		ldr	r0, .L759+12
 4754 0368 239B     		ldr	r3, [sp, #140]
 4755 036a 0F9A     		ldr	r2, [sp, #60]
 4756 036c 0DF5A061 		add	r1, sp, #1280
 4757 0370 FFF7FEFF 		bl	_ZN4Move11PrintMatrixEPKcRK10MathMatrixIdEjj
 4758 0374 2548     		ldr	r0, .L759
 4759 0376 B0F84030 		ldrh	r3, [r0, #64]
 4760 037a C3F30013 		ubfx	r3, r3, #4, #1
 4761 037e 2093     		str	r3, [sp, #128]
 4762              	.L681:
 4763 0380 0024     		movs	r4, #0
 4764 0382 1594     		str	r4, [sp, #84]
 4765 0384 0C94     		str	r4, [sp, #48]
 4766 0386 0DF5A264 		add	r4, sp, #1296
 4767 038a 0E94     		str	r4, [sp, #56]
 4768 038c 0DF5AB64 		add	r4, sp, #1368
 4769 0390 1494     		str	r4, [sp, #80]
 4770 0392 DDF88CB0 		ldr	fp, [sp, #140]
 4771 0396 0DF5A164 		add	r4, sp, #1288
 4772 039a 1694     		str	r4, [sp, #88]
 4773              	.L702:
 4774 039c 0E9C     		ldr	r4, [sp, #56]
 4775 039e 54E90267 		ldrd	r6, [r4, #-8]
 4776 03a2 3046     		mov	r0, r6
 4777 03a4 3946     		mov	r1, r7
 4778 03a6 FFF7FEFF 		bl	__aeabi_d2f
 4779 03aa 0C9C     		ldr	r4, [sp, #48]
 4780 03ac 0AEE100A 		fmsr	s20, r0
 4781 03b0 0F98     		ldr	r0, [sp, #60]
 4782 03b2 0134     		adds	r4, r4, #1
 4783 03b4 A042     		cmp	r0, r4
 4784 03b6 0B94     		str	r4, [sp, #44]
 4785 03b8 B0EECA9A 		fabss	s18, s20
 4786 03bc 4CD9     		bls	.L682
 4787 03be CDF818B0 		str	fp, [sp, #24]
 4788 03c2 DDF85090 		ldr	r9, [sp, #80]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 85


 4789 03c6 DDF83080 		ldr	r8, [sp, #48]
 4790 03ca 8246     		mov	r10, r0
 4791 03cc A346     		mov	fp, r4
 4792 03ce 05E0     		b	.L688
 4793              	.L683:
 4794 03d0 0BF1010B 		add	fp, fp, #1
 4795 03d4 D345     		cmp	fp, r10
 4796 03d6 09F15009 		add	r9, r9, #80
 4797 03da 35D0     		beq	.L750
 4798              	.L688:
 4799 03dc D9E90045 		ldrd	r4, [r9]
 4800 03e0 2046     		mov	r0, r4
 4801 03e2 2946     		mov	r1, r5
 4802 03e4 FFF7FEFF 		bl	__aeabi_d2f
 4803 03e8 07EE100A 		fmsr	s14, r0
 4804 03ec F0EEC77A 		fabss	s15, s14
 4805 03f0 B4EEE79A 		fcmpes	s18, s15
 4806 03f4 F1EE10FA 		fmstat
 4807 03f8 EAD5     		bpl	.L683
 4808 03fa D845     		cmp	r8, fp
 4809 03fc 00F0C180 		beq	.L726
 4810 0400 09F10800 		add	r0, r9, #8
 4811 0404 0E99     		ldr	r1, [sp, #56]
 4812 0406 4346     		mov	r3, r8
 4813 0408 0CE0     		b	.L686
 4814              	.L760:
 4815 040a 00BF     		.align	2
 4816              	.L759:
 4817 040c 00000000 		.word	reprap
 4818 0410 F0030000 		.word	.LC36
 4819 0414 08000000 		.word	_ZTV11FixedMatrixIdLj9ELj10EE+8
 4820 0418 04040000 		.word	.LC37
 4821              	.L751:
 4822 041c F1E80267 		ldrd	r6, [r1], #8
 4823 0420 F0E80245 		ldrd	r4, [r0], #8
 4824              	.L686:
 4825 0424 0133     		adds	r3, r3, #1
 4826 0426 0A2B     		cmp	r3, #10
 4827 0428 41E90245 		strd	r4, [r1, #-8]
 4828 042c 40E90267 		strd	r6, [r0, #-8]
 4829 0430 F4D1     		bne	.L751
 4830 0432 0E9C     		ldr	r4, [sp, #56]
 4831 0434 0BF1010B 		add	fp, fp, #1
 4832 0438 D345     		cmp	fp, r10
 4833 043a B0EE679A 		fcpys	s18, s15
 4834 043e 54E90267 		ldrd	r6, [r4, #-8]
 4835 0442 09F15009 		add	r9, r9, #80
 4836 0446 C9D1     		bne	.L688
 4837              	.L750:
 4838 0448 3046     		mov	r0, r6
 4839 044a 3946     		mov	r1, r7
 4840 044c FFF7FEFF 		bl	__aeabi_d2f
 4841 0450 DDF818B0 		ldr	fp, [sp, #24]
 4842 0454 0AEE100A 		fmsr	s20, r0
 4843              	.L682:
 4844 0458 159C     		ldr	r4, [sp, #84]
 4845 045a 002C     		cmp	r4, #0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 86


 4846 045c 41D0     		beq	.L694
 4847 045e 1AEE100A 		fmrs	r0, s20
 4848 0462 FFF7FEFF 		bl	__aeabi_f2d
 4849 0466 169C     		ldr	r4, [sp, #88]
 4850 0468 0694     		str	r4, [sp, #24]
 4851 046a CDE91001 		strd	r0, [sp, #64]
 4852 046e 0024     		movs	r4, #0
 4853 0470 0894     		str	r4, [sp, #32]
 4854              	.L697:
 4855 0472 069C     		ldr	r4, [sp, #24]
 4856 0474 DDE91023 		ldrd	r2, [sp, #64]
 4857 0478 D4E90001 		ldrd	r0, [r4]
 4858 047c FFF7FEFF 		bl	__aeabi_ddiv
 4859 0480 FFF7FEFF 		bl	__aeabi_d2f
 4860 0484 84ED008B 		fstd	d8, [r4]
 4861 0488 0B99     		ldr	r1, [sp, #44]
 4862 048a 0F9C     		ldr	r4, [sp, #60]
 4863 048c 8C42     		cmp	r4, r1
 4864 048e 1ED3     		bcc	.L695
 4865 0490 FFF7FEFF 		bl	__aeabi_f2d
 4866 0494 069C     		ldr	r4, [sp, #24]
 4867 0496 DDF838A0 		ldr	r10, [sp, #56]
 4868 049a DDF82C80 		ldr	r8, [sp, #44]
 4869 049e 0646     		mov	r6, r0
 4870 04a0 0F46     		mov	r7, r1
 4871 04a2 04F10809 		add	r9, r4, #8
 4872              	.L696:
 4873 04a6 FAE80201 		ldrd	r0, [r10], #8
 4874 04aa 3246     		mov	r2, r6
 4875 04ac 3B46     		mov	r3, r7
 4876 04ae FFF7FEFF 		bl	__aeabi_dmul
 4877 04b2 D9E90045 		ldrd	r4, [r9]
 4878 04b6 0246     		mov	r2, r0
 4879 04b8 0B46     		mov	r3, r1
 4880 04ba 2046     		mov	r0, r4
 4881 04bc 2946     		mov	r1, r5
 4882 04be FFF7FEFF 		bl	__aeabi_dsub
 4883 04c2 08F10108 		add	r8, r8, #1
 4884 04c6 D845     		cmp	r8, fp
 4885 04c8 E9E80201 		strd	r0, [r9], #8
 4886 04cc EBD1     		bne	.L696
 4887              	.L695:
 4888 04ce 089C     		ldr	r4, [sp, #32]
 4889 04d0 0C98     		ldr	r0, [sp, #48]
 4890 04d2 0134     		adds	r4, r4, #1
 4891 04d4 0894     		str	r4, [sp, #32]
 4892 04d6 069C     		ldr	r4, [sp, #24]
 4893 04d8 5034     		adds	r4, r4, #80
 4894 04da 0694     		str	r4, [sp, #24]
 4895 04dc 089C     		ldr	r4, [sp, #32]
 4896 04de 8442     		cmp	r4, r0
 4897 04e0 C7D1     		bne	.L697
 4898              	.L694:
 4899 04e2 0B9C     		ldr	r4, [sp, #44]
 4900 04e4 0F98     		ldr	r0, [sp, #60]
 4901 04e6 8442     		cmp	r4, r0
 4902 04e8 4ED0     		beq	.L752
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 87


 4903 04ea 1AEE100A 		fmrs	r0, s20
 4904 04ee FFF7FEFF 		bl	__aeabi_f2d
 4905 04f2 149C     		ldr	r4, [sp, #80]
 4906 04f4 0694     		str	r4, [sp, #24]
 4907 04f6 CDE90C01 		strd	r0, [sp, #48]
 4908 04fa 0B9C     		ldr	r4, [sp, #44]
 4909 04fc 0894     		str	r4, [sp, #32]
 4910              	.L701:
 4911 04fe 069C     		ldr	r4, [sp, #24]
 4912 0500 DDE90C23 		ldrd	r2, [sp, #48]
 4913 0504 D4E90001 		ldrd	r0, [r4]
 4914 0508 FFF7FEFF 		bl	__aeabi_ddiv
 4915 050c FFF7FEFF 		bl	__aeabi_d2f
 4916 0510 DDF81880 		ldr	r8, [sp, #24]
 4917 0514 A8EC028B 		fstmiad	r8!, {d8}
 4918 0518 FFF7FEFF 		bl	__aeabi_f2d
 4919 051c DDF838A0 		ldr	r10, [sp, #56]
 4920 0520 DDF82C90 		ldr	r9, [sp, #44]
 4921 0524 0646     		mov	r6, r0
 4922 0526 0F46     		mov	r7, r1
 4923              	.L699:
 4924 0528 FAE80201 		ldrd	r0, [r10], #8
 4925 052c 3246     		mov	r2, r6
 4926 052e 3B46     		mov	r3, r7
 4927 0530 FFF7FEFF 		bl	__aeabi_dmul
 4928 0534 D8E90045 		ldrd	r4, [r8]
 4929 0538 0246     		mov	r2, r0
 4930 053a 0B46     		mov	r3, r1
 4931 053c 2046     		mov	r0, r4
 4932 053e 2946     		mov	r1, r5
 4933 0540 FFF7FEFF 		bl	__aeabi_dsub
 4934 0544 09F10109 		add	r9, r9, #1
 4935 0548 D945     		cmp	r9, fp
 4936 054a E8E80201 		strd	r0, [r8], #8
 4937 054e EBD1     		bne	.L699
 4938 0550 089C     		ldr	r4, [sp, #32]
 4939 0552 0F98     		ldr	r0, [sp, #60]
 4940 0554 0134     		adds	r4, r4, #1
 4941 0556 0894     		str	r4, [sp, #32]
 4942 0558 069C     		ldr	r4, [sp, #24]
 4943 055a 5034     		adds	r4, r4, #80
 4944 055c 0694     		str	r4, [sp, #24]
 4945 055e 089C     		ldr	r4, [sp, #32]
 4946 0560 8442     		cmp	r4, r0
 4947 0562 CCD1     		bne	.L701
 4948 0564 159C     		ldr	r4, [sp, #84]
 4949 0566 0134     		adds	r4, r4, #1
 4950 0568 1594     		str	r4, [sp, #84]
 4951 056a 0E9C     		ldr	r4, [sp, #56]
 4952 056c 5834     		adds	r4, r4, #88
 4953 056e 0E94     		str	r4, [sp, #56]
 4954 0570 149C     		ldr	r4, [sp, #80]
 4955 0572 5834     		adds	r4, r4, #88
 4956 0574 1494     		str	r4, [sp, #80]
 4957 0576 169C     		ldr	r4, [sp, #88]
 4958 0578 0834     		adds	r4, r4, #8
 4959 057a 1694     		str	r4, [sp, #88]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 88


 4960 057c 0B9C     		ldr	r4, [sp, #44]
 4961 057e 0C94     		str	r4, [sp, #48]
 4962 0580 0CE7     		b	.L702
 4963              	.L726:
 4964 0582 B0EE679A 		fcpys	s18, s15
 4965 0586 23E7     		b	.L683
 4966              	.L752:
 4967 0588 269E     		ldr	r6, [sp, #152]
 4968 058a 279F     		ldr	r7, [sp, #156]
 4969 058c 0DF5A165 		add	r5, sp, #1288
 4970 0590 2EAC     		add	r4, sp, #184
 4971              	.L704:
 4972 0592 F6E81401 		ldrd	r0, [r6], #80
 4973 0596 F5E81623 		ldrd	r2, [r5], #88
 4974 059a FFF7FEFF 		bl	__aeabi_ddiv
 4975 059e E4E80201 		strd	r0, [r4], #8
 4976 05a2 BC42     		cmp	r4, r7
 4977 05a4 F5D1     		bne	.L704
 4978 05a6 209C     		ldr	r4, [sp, #128]
 4979 05a8 002C     		cmp	r4, #0
 4980 05aa 40F0A780 		bne	.L753
 4981              	.L705:
 4982 05ae 1798     		ldr	r0, [sp, #92]
 4983 05b0 0F9A     		ldr	r2, [sp, #60]
 4984 05b2 2EA9     		add	r1, sp, #184
 4985 05b4 FFF7FEFF 		bl	_ZN4Move21AdjustDeltaParametersEPKdj
 4986 05b8 9FED8F7B 		fldd	d7, .L761
 4987 05bc 129C     		ldr	r4, [sp, #72]
 4988 05be 8DED067B 		fstd	d7, [sp, #24]
 4989 05c2 002C     		cmp	r4, #0
 4990 05c4 55D0     		beq	.L712
 4991 05c6 179C     		ldr	r4, [sp, #92]
 4992 05c8 DDF884A0 		ldr	r10, [sp, #132]
 4993 05cc DDF89480 		ldr	r8, [sp, #148]
 4994 05d0 04F68424 		addw	r4, r4, #2692
 4995 05d4 0B94     		str	r4, [sp, #44]
 4996 05d6 0DF5FE65 		add	r5, sp, #2032
 4997 05da 0DF54079 		add	r9, sp, #768
 4998 05de 0027     		movs	r7, #0
 4999 05e0 34AE     		add	r6, sp, #208
 5000              	.L714:
 5001 05e2 0DF1B80B 		add	fp, sp, #184
 5002 05e6 A5F11004 		sub	r4, r5, #16
 5003              	.L719:
 5004 05ea D4E90001 		ldrd	r0, [r4]
 5005 05ee FBE80223 		ldrd	r2, [fp], #8
 5006 05f2 FFF7FEFF 		bl	__aeabi_dadd
 5007 05f6 B345     		cmp	fp, r6
 5008 05f8 E4E80201 		strd	r0, [r4], #8
 5009 05fc F5D1     		bne	.L719
 5010 05fe 55E90401 		ldrd	r0, [r5, #-16]
 5011 0602 FFF7FEFF 		bl	__aeabi_d2f
 5012 0606 8346     		mov	fp, r0	@ float
 5013 0608 55E90201 		ldrd	r0, [r5, #-8]
 5014 060c FFF7FEFF 		bl	__aeabi_d2f
 5015 0610 0446     		mov	r4, r0	@ float
 5016 0612 F5E80601 		ldrd	r0, [r5], #24
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 89


 5017 0616 FFF7FEFF 		bl	__aeabi_d2f
 5018 061a 0346     		mov	r3, r0	@ float
 5019 061c 2BA8     		add	r0, sp, #172
 5020 061e 2246     		mov	r2, r4	@ float
 5021 0620 5946     		mov	r1, fp	@ float
 5022 0622 0090     		str	r0, [sp]
 5023 0624 0B98     		ldr	r0, [sp, #44]
 5024 0626 FFF7FEFF 		bl	_ZNK15DeltaParameters16InverseTransformEfffPf
 5025 062a 9DED2D9A 		flds	s18, [sp, #180]
 5026 062e 19EE100A 		fmrs	r0, s18
 5027 0632 FFF7FEFF 		bl	__aeabi_f2d
 5028 0636 F8EC017A 		fldmias	r8!, {s15}
 5029 063a 39EE279A 		fadds	s18, s18, s15
 5030 063e EAE80201 		strd	r0, [r10], #8
 5031 0642 19EE100A 		fmrs	r0, s18
 5032 0646 FFF7FEFF 		bl	__aeabi_f2d
 5033 064a 29EE099A 		fmuls	s18, s18, s18
 5034 064e E9E80201 		strd	r0, [r9], #8
 5035 0652 19EE100A 		fmrs	r0, s18
 5036 0656 FFF7FEFF 		bl	__aeabi_f2d
 5037 065a 0246     		mov	r2, r0
 5038 065c 0B46     		mov	r3, r1
 5039 065e DDE90601 		ldrd	r0, [sp, #24]
 5040 0662 FFF7FEFF 		bl	__aeabi_dadd
 5041 0666 129C     		ldr	r4, [sp, #72]
 5042 0668 0137     		adds	r7, r7, #1
 5043 066a A742     		cmp	r7, r4
 5044 066c CDE90601 		strd	r0, [sp, #24]
 5045 0670 B7D1     		bne	.L714
 5046              	.L712:
 5047 0672 1298     		ldr	r0, [sp, #72]
 5048 0674 FFF7FEFF 		bl	__aeabi_ui2d
 5049 0678 0246     		mov	r2, r0
 5050 067a 0B46     		mov	r3, r1
 5051 067c DDE90601 		ldrd	r0, [sp, #24]
 5052 0680 FFF7FEFF 		bl	__aeabi_ddiv
 5053 0684 FFF7FEFF 		bl	sqrt
 5054 0688 0446     		mov	r4, r0
 5055 068a 5D48     		ldr	r0, .L761+8
 5056 068c B0F84030 		ldrh	r3, [r0, #64]
 5057 0690 DA06     		lsls	r2, r3, #27
 5058 0692 0D46     		mov	r5, r1
 5059 0694 04D5     		bpl	.L715
 5060 0696 5B48     		ldr	r0, .L761+12
 5061 0698 129A     		ldr	r2, [sp, #72]
 5062 069a C0A9     		add	r1, sp, #768
 5063 069c FFF7FEFF 		bl	_ZN4Move11PrintVectorEPKcPKdj
 5064              	.L715:
 5065 06a0 2499     		ldr	r1, [sp, #144]
 5066 06a2 0139     		subs	r1, r1, #1
 5067 06a4 2491     		str	r1, [sp, #144]
 5068 06a6 7FF44DAD 		bne	.L717
 5069 06aa 554A     		ldr	r2, .L761+8
 5070 06ac B2F84030 		ldrh	r3, [r2, #64]
 5071 06b0 DB06     		lsls	r3, r3, #27
 5072 06b2 00F18B80 		bmi	.L754
 5073              	.L718:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 90


 5074 06b6 9DED127A 		flds	s14, [sp, #72]	@ int
 5075 06ba F8EE477A 		fuitos	s15, s14
 5076 06be C9EEA77A 		fdivs	s15, s19, s15
 5077 06c2 17EE900A 		fmrs	r0, s15
 5078 06c6 FFF7FEFF 		bl	__aeabi_f2d
 5079 06ca FFF7FEFF 		bl	sqrt
 5080 06ce CDE90001 		strd	r0, [sp]
 5081 06d2 2946     		mov	r1, r5
 5082 06d4 2046     		mov	r0, r4
 5083 06d6 FFF7FEFF 		bl	__aeabi_d2f
 5084 06da FFF7FEFF 		bl	__aeabi_f2d
 5085 06de 0F9A     		ldr	r2, [sp, #60]
 5086 06e0 129B     		ldr	r3, [sp, #72]
 5087 06e2 CDE90201 		strd	r0, [sp, #8]
 5088 06e6 2898     		ldr	r0, [sp, #160]
 5089 06e8 4749     		ldr	r1, .L761+16
 5090 06ea FFF7FEFF 		bl	_ZN9StringRef6printfEPKcz
 5091 06ee 0DF5FF5D 		add	sp, sp, #8160
 5092 06f2 03B0     		add	sp, sp, #12
 5093              		@ sp needed
 5094 06f4 BDEC068B 		fldmfdd	sp!, {d8-d10}
 5095 06f8 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 5096              	.L753:
 5097 06fc 4348     		ldr	r0, .L761+20
 5098 06fe 0F9A     		ldr	r2, [sp, #60]
 5099 0700 239B     		ldr	r3, [sp, #140]
 5100 0702 0DF5A061 		add	r1, sp, #1280
 5101 0706 FFF7FEFF 		bl	_ZN4Move11PrintMatrixEPKcRK10MathMatrixIdEjj
 5102 070a 4148     		ldr	r0, .L761+24
 5103 070c 0F9A     		ldr	r2, [sp, #60]
 5104 070e 2EA9     		add	r1, sp, #184
 5105 0710 FFF7FEFF 		bl	_ZN4Move11PrintVectorEPKcPKdj
 5106 0714 129C     		ldr	r4, [sp, #72]
 5107 0716 002C     		cmp	r4, #0
 5108 0718 64D0     		beq	.L755
 5109 071a C0AC     		add	r4, sp, #768
 5110 071c DDF89480 		ldr	r8, [sp, #148]
 5111 0720 1B9F     		ldr	r7, [sp, #108]
 5112 0722 DDF89CA0 		ldr	r10, [sp, #156]
 5113 0726 0694     		str	r4, [sp, #24]
 5114 0728 A146     		mov	r9, r4
 5115              	.L710:
 5116 072a 58F8040B 		ldr	r0, [r8], #4	@ float
 5117 072e FFF7FEFF 		bl	__aeabi_f2d
 5118 0732 0446     		mov	r4, r0
 5119 0734 0D46     		mov	r5, r1
 5120 0736 E9E80245 		strd	r4, [r9], #8
 5121 073a 2EAE     		add	r6, sp, #184
 5122 073c BB46     		mov	fp, r7
 5123              	.L708:
 5124 073e FBE80223 		ldrd	r2, [fp], #8
 5125 0742 F6E80201 		ldrd	r0, [r6], #8
 5126 0746 FFF7FEFF 		bl	__aeabi_dmul
 5127 074a 0246     		mov	r2, r0
 5128 074c 0B46     		mov	r3, r1
 5129 074e 2046     		mov	r0, r4
 5130 0750 2946     		mov	r1, r5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 91


 5131 0752 FFF7FEFF 		bl	__aeabi_dadd
 5132 0756 B245     		cmp	r10, r6
 5133 0758 0446     		mov	r4, r0
 5134 075a 0D46     		mov	r5, r1
 5135 075c EFD1     		bne	.L708
 5136 075e 49E90245 		strd	r4, [r9, #-8]
 5137 0762 1A9C     		ldr	r4, [sp, #104]
 5138 0764 A045     		cmp	r8, r4
 5139 0766 07F14807 		add	r7, r7, #72
 5140 076a DED1     		bne	.L710
 5141 076c 0699     		ldr	r1, [sp, #24]
 5142 076e 2948     		ldr	r0, .L761+28
 5143 0770 129A     		ldr	r2, [sp, #72]
 5144 0772 FFF7FEFF 		bl	_ZN4Move11PrintVectorEPKcPKdj
 5145 0776 1AE7     		b	.L705
 5146              	.L660:
 5147 0778 214B     		ldr	r3, .L761+8
 5148 077a 274A     		ldr	r2, .L761+32
 5149 077c 1868     		ldr	r0, [r3]
 5150 077e 0F9B     		ldr	r3, [sp, #60]
 5151 0780 0621     		movs	r1, #6
 5152 0782 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 5153 0786 0DF5FF5D 		add	sp, sp, #8160
 5154 078a 03B0     		add	sp, sp, #12
 5155              		@ sp needed
 5156 078c BDEC068B 		fldmfdd	sp!, {d8-d10}
 5157 0790 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 5158              	.L748:
 5159 0794 214C     		ldr	r4, .L761+36
 5160 0796 1799     		ldr	r1, [sp, #92]
 5161 0798 DFED219A 		flds	s19, .L761+40
 5162 079c 01F68420 		addw	r0, r1, #2692
 5163 07a0 2146     		mov	r1, r4
 5164 07a2 FFF7FEFF 		bl	_ZNK15DeltaParameters15PrintParametersER9StringRef
 5165 07a6 2168     		ldr	r1, [r4]
 5166 07a8 1E48     		ldr	r0, .L761+44
 5167 07aa FFF7FEFF 		bl	debugPrintf
 5168 07ae 129C     		ldr	r4, [sp, #72]
 5169 07b0 002C     		cmp	r4, #0
 5170 07b2 7FF453AC 		bne	.L756
 5171              	.L723:
 5172 07b6 42AC     		add	r4, sp, #264
 5173 07b8 1E94     		str	r4, [sp, #120]
 5174 07ba 40AC     		add	r4, sp, #256
 5175 07bc 2194     		str	r4, [sp, #132]
 5176 07be 0DF6E854 		addw	r4, sp, #3560
 5177 07c2 1B94     		str	r4, [sp, #108]
 5178 07c4 0DF55E64 		add	r4, sp, #3552
 5179 07c8 2294     		str	r4, [sp, #136]
 5180 07ca 99E4     		b	.L664
 5181              	.L754:
 5182 07cc 134E     		ldr	r6, .L761+36
 5183 07ce 179B     		ldr	r3, [sp, #92]
 5184 07d0 3146     		mov	r1, r6
 5185 07d2 03F68420 		addw	r0, r3, #2692
 5186 07d6 FFF7FEFF 		bl	_ZNK15DeltaParameters15PrintParametersER9StringRef
 5187 07da 3168     		ldr	r1, [r6]
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 92


 5188 07dc 1148     		ldr	r0, .L761+44
 5189 07de FFF7FEFF 		bl	debugPrintf
 5190 07e2 68E7     		b	.L718
 5191              	.L755:
 5192 07e4 C0AC     		add	r4, sp, #768
 5193 07e6 0694     		str	r4, [sp, #24]
 5194 07e8 0699     		ldr	r1, [sp, #24]
 5195 07ea 0A48     		ldr	r0, .L761+28
 5196 07ec 129A     		ldr	r2, [sp, #72]
 5197 07ee FFF7FEFF 		bl	_ZN4Move11PrintVectorEPKcPKdj
 5198 07f2 DCE6     		b	.L705
 5199              	.L762:
 5200 07f4 AFF30080 		.align	3
 5201              	.L761:
 5202 07f8 00000000 		.word	0
 5203 07fc 00000000 		.word	0
 5204 0800 00000000 		.word	reprap
 5205 0804 3C040000 		.word	.LC41
 5206 0808 54040000 		.word	.LC42
 5207 080c 14040000 		.word	.LC38
 5208 0810 24040000 		.word	.LC39
 5209 0814 30040000 		.word	.LC40
 5210 0818 98030000 		.word	.LC35
 5211 081c 00000000 		.word	scratchString
 5212 0820 00000000 		.word	0
 5213 0824 EC000000 		.word	.LC8
 5214              		.size	_ZN4Move18DoDeltaCalibrationEjR9StringRef, .-_ZN4Move18DoDeltaCalibrationEjR9StringRef
 5215              		.section	.text._ZN4Move18FinishedBedProbingEiR9StringRef,"ax",%progbits
 5216              		.align	2
 5217              		.global	_ZN4Move18FinishedBedProbingEiR9StringRef
 5218              		.thumb
 5219              		.thumb_func
 5220              		.type	_ZN4Move18FinishedBedProbingEiR9StringRef, %function
 5221              	_ZN4Move18FinishedBedProbingEiR9StringRef:
 5222              		@ args = 0, pretend = 0, frame = 0
 5223              		@ frame_needed = 0, uses_anonymous_args = 0
 5224 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 5225 0004 2DED028B 		fstmfdd	sp!, {d8}
 5226 0008 0746     		mov	r7, r0
 5227 000a 82B0     		sub	sp, sp, #8
 5228 000c 8946     		mov	r9, r1
 5229 000e 1646     		mov	r6, r2
 5230 0010 4FF00008 		mov	r8, #0
 5231 0014 04E0     		b	.L765
 5232              	.L802:
 5233 0016 08F10108 		add	r8, r8, #1
 5234 001a B8F1400F 		cmp	r8, #64
 5235 001e 07D0     		beq	.L764
 5236              	.L765:
 5237 0020 07EB0803 		add	r3, r7, r8
 5238 0024 93F8A039 		ldrb	r3, [r3, #2464]	@ zero_extendqisi2
 5239 0028 03F00703 		and	r3, r3, #7
 5240 002c 072B     		cmp	r3, #7
 5241 002e F2D0     		beq	.L802
 5242              	.L764:
 5243 0030 B9F1000F 		cmp	r9, #0
 5244 0034 C0F28E80 		blt	.L803
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 93


 5245 0038 C145     		cmp	r9, r8
 5246 003a 724B     		ldr	r3, .L807
 5247 003c 43DC     		bgt	.L804
 5248 003e B3F84030 		ldrh	r3, [r3, #64]
 5249 0042 DB06     		lsls	r3, r3, #27
 5250 0044 4AD4     		bmi	.L805
 5251              	.L774:
 5252 0046 B9F1000F 		cmp	r9, #0
 5253 004a 08BF     		it	eq
 5254 004c C146     		moveq	r9, r8
 5255 004e 07F51A6A 		add	r10, r7, #2464
 5256 0052 B8F1000F 		cmp	r8, #0
 5257 0056 14D0     		beq	.L778
 5258 0058 97F8A039 		ldrb	r3, [r7, #2464]	@ zero_extendqisi2
 5259 005c 03F01703 		and	r3, r3, #23
 5260 0060 072B     		cmp	r3, #7
 5261 0062 07F51A6A 		add	r10, r7, #2464
 5262 0066 29D1     		bne	.L779
 5263 0068 07F69F12 		addw	r2, r7, #2463
 5264 006c 5346     		mov	r3, r10
 5265 006e 9044     		add	r8, r8, r2
 5266 0070 05E0     		b	.L780
 5267              	.L781:
 5268 0072 13F8012F 		ldrb	r2, [r3, #1]!	@ zero_extendqisi2
 5269 0076 02F01702 		and	r2, r2, #23
 5270 007a 072A     		cmp	r2, #7
 5271 007c 1ED1     		bne	.L779
 5272              	.L780:
 5273 007e 4345     		cmp	r3, r8
 5274 0080 F7D1     		bne	.L781
 5275              	.L778:
 5276 0082 97F8BC3A 		ldrb	r3, [r7, #2748]	@ zero_extendqisi2
 5277 0086 9BB9     		cbnz	r3, .L783
 5278 0088 3846     		mov	r0, r7
 5279 008a 4946     		mov	r1, r9
 5280 008c 3246     		mov	r2, r6
 5281 008e FFF7FEFF 		bl	_ZN4Move20SetProbedBedEquationEjR9StringRef
 5282              	.L773:
 5283 0092 5246     		mov	r2, r10
 5284 0094 0023     		movs	r3, #0
 5285              	.L771:
 5286 0096 1178     		ldrb	r1, [r2]	@ zero_extendqisi2
 5287 0098 0133     		adds	r3, r3, #1
 5288 009a 21F00401 		bic	r1, r1, #4
 5289 009e 402B     		cmp	r3, #64
 5290 00a0 02F8011B 		strb	r1, [r2], #1
 5291 00a4 F7D1     		bne	.L771
 5292 00a6 02B0     		add	sp, sp, #8
 5293              		@ sp needed
 5294 00a8 BDEC028B 		fldmfdd	sp!, {d8}
 5295 00ac BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 5296              	.L783:
 5297 00b0 3846     		mov	r0, r7
 5298 00b2 4946     		mov	r1, r9
 5299 00b4 3246     		mov	r2, r6
 5300 00b6 FFF7FEFF 		bl	_ZN4Move18DoDeltaCalibrationEjR9StringRef
 5301 00ba EAE7     		b	.L773
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 94


 5302              	.L779:
 5303 00bc 3046     		mov	r0, r6
 5304 00be 5249     		ldr	r1, .L807+4
 5305 00c0 FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 5306 00c4 E5E7     		b	.L773
 5307              	.L804:
 5308 00c6 CDF80080 		str	r8, [sp]
 5309 00ca 1868     		ldr	r0, [r3]
 5310 00cc 4F4A     		ldr	r2, .L807+8
 5311 00ce 4B46     		mov	r3, r9
 5312 00d0 0621     		movs	r1, #6
 5313 00d2 07F51A6A 		add	r10, r7, #2464
 5314 00d6 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
 5315 00da DAE7     		b	.L773
 5316              	.L805:
 5317 00dc 9FED4C8A 		flds	s16, .L807+12
 5318 00e0 4C48     		ldr	r0, .L807+16
 5319 00e2 FFF7FEFF 		bl	debugPrintf
 5320 00e6 F0EE488A 		fcpys	s17, s16
 5321 00ea B8F1000F 		cmp	r8, #0
 5322 00ee 13D0     		beq	.L775
 5323 00f0 07F52075 		add	r5, r7, #640
 5324 00f4 0024     		movs	r4, #0
 5325              	.L776:
 5326 00f6 2868     		ldr	r0, [r5]	@ float
 5327 00f8 FFF7FEFF 		bl	__aeabi_f2d
 5328 00fc 0246     		mov	r2, r0
 5329 00fe 0B46     		mov	r3, r1
 5330 0100 4548     		ldr	r0, .L807+20
 5331 0102 FFF7FEFF 		bl	debugPrintf
 5332 0106 0134     		adds	r4, r4, #1
 5333 0108 F5EC017A 		fldmias	r5!, {s15}
 5334 010c 4445     		cmp	r4, r8
 5335 010e 78EEA78A 		fadds	s17, s17, s15
 5336 0112 A7EEA78A 		vfma.f32	s16, s15, s15
 5337 0116 EED1     		bne	.L776
 5338              	.L775:
 5339 0118 07EE108A 		fmsr	s14, r8	@ int
 5340 011c F8EEC77A 		fsitos	s15, s14
 5341 0120 C8EEA78A 		fdivs	s17, s17, s15
 5342 0124 C8EE277A 		fdivs	s15, s16, s15
 5343 0128 E8EEE87A 		vfms.f32	s15, s17, s17
 5344 012c 17EE900A 		fmrs	r0, s15
 5345 0130 FFF7FEFF 		bl	__aeabi_f2d
 5346 0134 FFF7FEFF 		bl	sqrt
 5347 0138 0446     		mov	r4, r0
 5348 013a 18EE900A 		fmrs	r0, s17
 5349 013e 0D46     		mov	r5, r1
 5350 0140 FFF7FEFF 		bl	__aeabi_f2d
 5351 0144 CDE90045 		strd	r4, [sp]
 5352 0148 0246     		mov	r2, r0
 5353 014a 0B46     		mov	r3, r1
 5354 014c 3348     		ldr	r0, .L807+24
 5355 014e FFF7FEFF 		bl	debugPrintf
 5356 0152 78E7     		b	.L774
 5357              	.L803:
 5358 0154 3046     		mov	r0, r6
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 95


 5359 0156 3249     		ldr	r1, .L807+28
 5360 0158 9FED2D8A 		flds	s16, .L807+12
 5361 015c FFF7FEFF 		bl	_ZN9StringRef4copyEPKc
 5362 0160 B8F1000F 		cmp	r8, #0
 5363 0164 4AD0     		beq	.L787
 5364 0166 07F69F14 		addw	r4, r7, #2463
 5365 016a F0EE488A 		fcpys	s17, s16
 5366 016e 04EB0809 		add	r9, r4, r8
 5367 0172 07F52075 		add	r5, r7, #640
 5368 0176 06E0     		b	.L770
 5369              	.L806:
 5370 0178 3046     		mov	r0, r6
 5371 017a FFF7FEFF 		bl	_ZN9StringRef3catEPKc
 5372 017e 4C45     		cmp	r4, r9
 5373 0180 05F10405 		add	r5, r5, #4
 5374 0184 19D0     		beq	.L767
 5375              	.L770:
 5376 0186 14F8013F 		ldrb	r3, [r4, #1]!	@ zero_extendqisi2
 5377 018a 2649     		ldr	r1, .L807+32
 5378 018c 03F01703 		and	r3, r3, #23
 5379 0190 072B     		cmp	r3, #7
 5380 0192 F1D1     		bne	.L806
 5381 0194 2868     		ldr	r0, [r5]	@ float
 5382 0196 FFF7FEFF 		bl	__aeabi_f2d
 5383 019a 0246     		mov	r2, r0
 5384 019c 0B46     		mov	r3, r1
 5385 019e 3046     		mov	r0, r6
 5386 01a0 1D49     		ldr	r1, .L807+20
 5387 01a2 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 5388 01a6 D5ED007A 		flds	s15, [r5]
 5389 01aa 4C45     		cmp	r4, r9
 5390 01ac A7EEA78A 		vfma.f32	s16, s15, s15
 5391 01b0 05F10405 		add	r5, r5, #4
 5392 01b4 78EEA78A 		fadds	s17, s17, s15
 5393 01b8 E5D1     		bne	.L770
 5394              	.L767:
 5395 01ba 07EE108A 		fmsr	s14, r8	@ int
 5396 01be F8EEC77A 		fsitos	s15, s14
 5397 01c2 07F51A6A 		add	r10, r7, #2464
 5398 01c6 C8EEA78A 		fdivs	s17, s17, s15
 5399 01ca C8EE277A 		fdivs	s15, s16, s15
 5400 01ce E8EEE87A 		vfms.f32	s15, s17, s17
 5401 01d2 17EE900A 		fmrs	r0, s15
 5402 01d6 FFF7FEFF 		bl	__aeabi_f2d
 5403 01da FFF7FEFF 		bl	sqrt
 5404 01de 0446     		mov	r4, r0
 5405 01e0 18EE900A 		fmrs	r0, s17
 5406 01e4 0D46     		mov	r5, r1
 5407 01e6 FFF7FEFF 		bl	__aeabi_f2d
 5408 01ea CDE90045 		strd	r4, [sp]
 5409 01ee 0246     		mov	r2, r0
 5410 01f0 0B46     		mov	r3, r1
 5411 01f2 3046     		mov	r0, r6
 5412 01f4 0C49     		ldr	r1, .L807+36
 5413 01f6 FFF7FEFF 		bl	_ZN9StringRef4catfEPKcz
 5414 01fa 4AE7     		b	.L773
 5415              	.L787:
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 96


 5416 01fc F0EE488A 		fcpys	s17, s16
 5417 0200 DBE7     		b	.L767
 5418              	.L808:
 5419 0202 00BF     		.align	2
 5420              	.L807:
 5421 0204 00000000 		.word	reprap
 5422 0208 60050000 		.word	.LC48
 5423 020c D0040000 		.word	.LC45
 5424 0210 00000000 		.word	0
 5425 0214 24050000 		.word	.LC46
 5426 0218 10010000 		.word	.LC11
 5427 021c 38050000 		.word	.LC47
 5428 0220 FC000000 		.word	.LC10
 5429 0224 A0040000 		.word	.LC43
 5430 0228 A8040000 		.word	.LC44
 5431              		.size	_ZN4Move18FinishedBedProbingEiR9StringRef, .-_ZN4Move18FinishedBedProbingEiR9StringRef
 5432              		.weak	_ZTV10MathMatrixIdE
 5433              		.section	.rodata._ZTV10MathMatrixIdE,"aG",%progbits,_ZTV10MathMatrixIdE,comdat
 5434              		.align	3
 5435              		.type	_ZTV10MathMatrixIdE, %object
 5436              		.size	_ZTV10MathMatrixIdE, 32
 5437              	_ZTV10MathMatrixIdE:
 5438 0000 00000000 		.word	0
 5439 0004 00000000 		.word	0
 5440 0008 00000000 		.word	__cxa_pure_virtual
 5441 000c 00000000 		.word	__cxa_pure_virtual
 5442 0010 00000000 		.word	__cxa_pure_virtual
 5443 0014 00000000 		.word	__cxa_pure_virtual
 5444 0018 00000000 		.word	_ZN10MathMatrixIdED1Ev
 5445 001c 00000000 		.word	_ZN10MathMatrixIdED0Ev
 5446              		.weak	_ZTV11FixedMatrixIdLj64ELj3EE
 5447              		.section	.rodata._ZTV11FixedMatrixIdLj64ELj3EE,"aG",%progbits,_ZTV11FixedMatrixIdLj64ELj3EE,comdat
 5448              		.align	3
 5449              		.type	_ZTV11FixedMatrixIdLj64ELj3EE, %object
 5450              		.size	_ZTV11FixedMatrixIdLj64ELj3EE, 32
 5451              	_ZTV11FixedMatrixIdLj64ELj3EE:
 5452 0000 00000000 		.word	0
 5453 0004 00000000 		.word	0
 5454 0008 00000000 		.word	_ZNK11FixedMatrixIdLj64ELj3EE4rowsEv
 5455 000c 00000000 		.word	_ZNK11FixedMatrixIdLj64ELj3EE4colsEv
 5456 0010 00000000 		.word	_ZN11FixedMatrixIdLj64ELj3EEclEjj
 5457 0014 00000000 		.word	_ZNK11FixedMatrixIdLj64ELj3EEclEjj
 5458 0018 00000000 		.word	_ZN11FixedMatrixIdLj64ELj3EED1Ev
 5459 001c 00000000 		.word	_ZN11FixedMatrixIdLj64ELj3EED0Ev
 5460              		.weak	_ZTV11FixedMatrixIdLj64ELj9EE
 5461              		.section	.rodata._ZTV11FixedMatrixIdLj64ELj9EE,"aG",%progbits,_ZTV11FixedMatrixIdLj64ELj9EE,comdat
 5462              		.align	3
 5463              		.type	_ZTV11FixedMatrixIdLj64ELj9EE, %object
 5464              		.size	_ZTV11FixedMatrixIdLj64ELj9EE, 32
 5465              	_ZTV11FixedMatrixIdLj64ELj9EE:
 5466 0000 00000000 		.word	0
 5467 0004 00000000 		.word	0
 5468 0008 00000000 		.word	_ZNK11FixedMatrixIdLj64ELj9EE4rowsEv
 5469 000c 00000000 		.word	_ZNK11FixedMatrixIdLj64ELj9EE4colsEv
 5470 0010 00000000 		.word	_ZN11FixedMatrixIdLj64ELj9EEclEjj
 5471 0014 00000000 		.word	_ZNK11FixedMatrixIdLj64ELj9EEclEjj
 5472 0018 00000000 		.word	_ZN11FixedMatrixIdLj64ELj9EED1Ev
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 97


 5473 001c 00000000 		.word	_ZN11FixedMatrixIdLj64ELj9EED0Ev
 5474              		.weak	_ZTV11FixedMatrixIdLj9ELj10EE
 5475              		.section	.rodata._ZTV11FixedMatrixIdLj9ELj10EE,"aG",%progbits,_ZTV11FixedMatrixIdLj9ELj10EE,comdat
 5476              		.align	3
 5477              		.type	_ZTV11FixedMatrixIdLj9ELj10EE, %object
 5478              		.size	_ZTV11FixedMatrixIdLj9ELj10EE, 32
 5479              	_ZTV11FixedMatrixIdLj9ELj10EE:
 5480 0000 00000000 		.word	0
 5481 0004 00000000 		.word	0
 5482 0008 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EE4rowsEv
 5483 000c 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EE4colsEv
 5484 0010 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EEclEjj
 5485 0014 00000000 		.word	_ZNK11FixedMatrixIdLj9ELj10EEclEjj
 5486 0018 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EED1Ev
 5487 001c 00000000 		.word	_ZN11FixedMatrixIdLj9ELj10EED0Ev
 5488              		.global	maxReps
 5489              		.section	.rodata.str1.4,"aMS",%progbits,1
 5490              		.align	2
 5491              	.LC0:
 5492 0000 4D6F7665 		.ascii	"Move class exited.\012\000"
 5492      20636C61 
 5492      73732065 
 5492      78697465 
 5492      642E0A00 
 5493              	.LC1:
 5494 0014 53657450 		.ascii	"SetPositions called when DDA ring not empty\012\000"
 5494      6F736974 
 5494      696F6E73 
 5494      2063616C 
 5494      6C656420 
 5495 0041 000000   		.space	3
 5496              	.LC2:
 5497 0044 6D657368 		.ascii	"mesh\000"
 5497      00
 5498 0049 000000   		.space	3
 5499              	.LC3:
 5500 004c 6E6F6E65 		.ascii	"none\000"
 5500      00
 5501 0051 000000   		.space	3
 5502              	.LC4:
 5503 0054 3D3D3D20 		.ascii	"=== Move ===\012\000"
 5503      4D6F7665 
 5503      203D3D3D 
 5503      0A00
 5504 0062 0000     		.space	2
 5505              	.LC5:
 5506 0064 4D617852 		.ascii	"MaxReps: %u, StepErrors: %u, MaxWait: %ums, Underru"
 5506      6570733A 
 5506      2025752C 
 5506      20537465 
 5506      70457272 
 5507 0097 6E733A20 		.ascii	"ns: %u, %u\012\000"
 5507      25752C20 
 5507      25750A00 
 5508 00a3 00       		.space	1
 5509              	.LC6:
 5510 00a4 53636865 		.ascii	"Scheduled moves: %u, completed moves: %u\012\000"
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 98


 5510      64756C65 
 5510      64206D6F 
 5510      7665733A 
 5510      2025752C 
 5511 00ce 0000     		.space	2
 5512              	.LC7:
 5513 00d0 42656420 		.ascii	"Bed compensation in use: \000"
 5513      636F6D70 
 5513      656E7361 
 5513      74696F6E 
 5513      20696E20 
 5514 00ea 0000     		.space	2
 5515              	.LC8:
 5516 00ec 25730A00 		.ascii	"%s\012\000"
 5517              	.LC9:
 5518 00f0 25642070 		.ascii	"%d point\012\000"
 5518      6F696E74 
 5518      0A00
 5519 00fa 0000     		.space	2
 5520              	.LC10:
 5521 00fc 42656420 		.ascii	"Bed probe heights:\000"
 5521      70726F62 
 5521      65206865 
 5521      69676874 
 5521      733A00
 5522 010f 00       		.space	1
 5523              	.LC11:
 5524 0110 20252E33 		.ascii	" %.3f\000"
 5524      6600
 5525 0116 0000     		.space	2
 5526              	.LC12:
 5527 0118 0A00     		.ascii	"\012\000"
 5528 011a 0000     		.space	2
 5529              	.LC13:
 5530 011c 50726F62 		.ascii	"Probe change coordinates:\000"
 5530      65206368 
 5530      616E6765 
 5530      20636F6F 
 5530      7264696E 
 5531 0136 0000     		.space	2
 5532              	.LC14:
 5533 0138 2563252E 		.ascii	"%c%.2f,%.2f\000"
 5533      32662C25 
 5533      2E326600 
 5534              	.LC15:
 5535 0144 5472616E 		.ascii	"Transformed %f %f %f to %d %d %d\012\000"
 5535      73666F72 
 5535      6D656420 
 5535      25662025 
 5535      66202566 
 5536 0166 0000     		.space	2
 5537              	.LC16:
 5538 0168 41786973 		.ascii	"Axis compensation requested for non-existent axis.\012"
 5538      20636F6D 
 5538      70656E73 
 5538      6174696F 
 5538      6E207265 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 99


 5539 019b 00       		.ascii	"\000"
 5540              	.LC17:
 5541 019c 53657441 		.ascii	"SetAxisCompensation: dud axis.\012\000"
 5541      78697343 
 5541      6F6D7065 
 5541      6E736174 
 5541      696F6E3A 
 5542              	.LC18:
 5543 01bc 54726961 		.ascii	"Triangle interpolation: point outside all triangles"
 5543      6E676C65 
 5543      20696E74 
 5543      6572706F 
 5543      6C617469 
 5544 01ef 210A00   		.ascii	"!\012\000"
 5545 01f2 0000     		.space	2
 5546              	.LC19:
 5547 01f4 4572726F 		.ascii	"Error: probe points P0 to P%u must be in clockwise "
 5547      723A2070 
 5547      726F6265 
 5547      20706F69 
 5547      6E747320 
 5548 0227 6F726465 		.ascii	"order starting near X=0 Y=0\000"
 5548      72207374 
 5548      61727469 
 5548      6E67206E 
 5548      65617220 
 5549 0243 00       		.space	1
 5550              	.LC20:
 5551 0244 20616E64 		.ascii	" and P4 must be near the centre\000"
 5551      20503420 
 5551      6D757374 
 5551      20626520 
 5551      6E656172 
 5552              	.LC21:
 5553 0264 42656420 		.ascii	"Bed calibration error: %d points provided but only "
 5553      63616C69 
 5553      62726174 
 5553      696F6E20 
 5553      6572726F 
 5554 0297 332C2034 		.ascii	"3, 4 and 5 supported\012\000"
 5554      20616E64 
 5554      20352073 
 5554      7570706F 
 5554      72746564 
 5555 02ad 000000   		.space	3
 5556              	.LC22:
 5557 02b0 205B252E 		.ascii	" [%.1f, %.1f, %.3f]\000"
 5557      31662C20 
 5557      252E3166 
 5557      2C20252E 
 5557      33665D00 
 5558              	.LC23:
 5559 02c4 42656420 		.ascii	"Bed equation fits points\000"
 5559      65717561 
 5559      74696F6E 
 5559      20666974 
 5559      7320706F 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 100


 5560 02dd 000000   		.space	3
 5561              	.LC24:
 5562 02e0 5A207072 		.ascii	"Z probe point X index out of range.\012\000"
 5562      6F626520 
 5562      706F696E 
 5562      74205820 
 5562      696E6465 
 5563 0305 000000   		.space	3
 5564              	.LC25:
 5565 0308 5A207072 		.ascii	"Z probe point Y index out of range.\012\000"
 5565      6F626520 
 5565      706F696E 
 5565      74205920 
 5565      696E6465 
 5566 032d 000000   		.space	3
 5567              	.LC26:
 5568 0330 5A207072 		.ascii	"Z probe point Z index out of range.\012\000"
 5568      6F626520 
 5568      706F696E 
 5568      74205A20 
 5568      696E6465 
 5569 0355 000000   		.space	3
 5570              	.LC27:
 5571 0358 64656C74 		.ascii	"delta\000"
 5571      6100
 5572 035e 0000     		.space	2
 5573              	.LC28:
 5574 0360 636F7265 		.ascii	"coreXY\000"
 5574      585900
 5575 0367 00       		.space	1
 5576              	.LC29:
 5577 0368 636F7265 		.ascii	"coreXZ\000"
 5577      585A00
 5578 036f 00       		.space	1
 5579              	.LC30:
 5580 0370 63617274 		.ascii	"cartesian\000"
 5580      65736961 
 5580      6E00
 5581 037a 0000     		.space	2
 5582              	.LC31:
 5583 037c 636F7265 		.ascii	"coreYZ\000"
 5583      595A00
 5584 0383 00       		.space	1
 5585              	.LC32:
 5586 0384 25372E34 		.ascii	"%7.4f%c\000"
 5586      66256300 
 5587              	.LC33:
 5588 038c 25733A00 		.ascii	"%s:\000"
 5589              	.LC34:
 5590 0390 2025372E 		.ascii	" %7.4f\000"
 5590      346600
 5591 0397 00       		.space	1
 5592              	.LC35:
 5593 0398 44656C74 		.ascii	"Delta calibration error: %d factors requested but o"
 5593      61206361 
 5593      6C696272 
 5593      6174696F 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 101


 5593      6E206572 
 5594 03cb 6E6C7920 		.ascii	"nly 3, 4, 6, 7, 8 and 9 supported\012\000"
 5594      332C2034 
 5594      2C20362C 
 5594      20372C20 
 5594      3820616E 
 5595 03ee 0000     		.space	2
 5596              	.LC36:
 5597 03f0 44657269 		.ascii	"Derivative matrix\000"
 5597      76617469 
 5597      7665206D 
 5597      61747269 
 5597      7800
 5598 0402 0000     		.space	2
 5599              	.LC37:
 5600 0404 4E6F726D 		.ascii	"Normal matrix\000"
 5600      616C206D 
 5600      61747269 
 5600      7800
 5601 0412 0000     		.space	2
 5602              	.LC38:
 5603 0414 536F6C76 		.ascii	"Solved matrix\000"
 5603      6564206D 
 5603      61747269 
 5603      7800
 5604 0422 0000     		.space	2
 5605              	.LC39:
 5606 0424 536F6C75 		.ascii	"Solution\000"
 5606      74696F6E 
 5606      00
 5607 042d 000000   		.space	3
 5608              	.LC40:
 5609 0430 52657369 		.ascii	"Residuals\000"
 5609      6475616C 
 5609      7300
 5610 043a 0000     		.space	2
 5611              	.LC41:
 5612 043c 45787065 		.ascii	"Expected probe error\000"
 5612      63746564 
 5612      2070726F 
 5612      62652065 
 5612      72726F72 
 5613 0451 000000   		.space	3
 5614              	.LC42:
 5615 0454 43616C69 		.ascii	"Calibrated %d factors using %d points, deviation be"
 5615      62726174 
 5615      65642025 
 5615      64206661 
 5615      63746F72 
 5616 0487 666F7265 		.ascii	"fore %.3f after %.3f\012\000"
 5616      20252E33 
 5616      66206166 
 5616      74657220 
 5616      252E3366 
 5617 049d 000000   		.space	3
 5618              	.LC43:
 5619 04a0 20666169 		.ascii	" failed\000"
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 102


 5619      6C656400 
 5620              	.LC44:
 5621 04a8 2C206D65 		.ascii	", mean %.3f, deviation from mean %.3f\000"
 5621      616E2025 
 5621      2E33662C 
 5621      20646576 
 5621      69617469 
 5622 04ce 0000     		.space	2
 5623              	.LC45:
 5624 04d0 42656420 		.ascii	"Bed calibration error: %d factor calibration reques"
 5624      63616C69 
 5624      62726174 
 5624      696F6E20 
 5624      6572726F 
 5625 0503 74656420 		.ascii	"ted but only %d points provided\012\000"
 5625      62757420 
 5625      6F6E6C79 
 5625      20256420 
 5625      706F696E 
 5626              	.LC46:
 5627 0524 5A207072 		.ascii	"Z probe offsets:\000"
 5627      6F626520 
 5627      6F666673 
 5627      6574733A 
 5627      00
 5628 0535 000000   		.space	3
 5629              	.LC47:
 5630 0538 2C206D65 		.ascii	", mean %.3f, deviation from mean %.3f\012\000"
 5630      616E2025 
 5630      2E33662C 
 5630      20646576 
 5630      69617469 
 5631 055f 00       		.space	1
 5632              	.LC48:
 5633 0560 436F6D70 		.ascii	"Compensation or calibration cancelled due to probin"
 5633      656E7361 
 5633      74696F6E 
 5633      206F7220 
 5633      63616C69 
 5634 0593 67206572 		.ascii	"g errors\000"
 5634      726F7273 
 5634      00
 5635              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 5636              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 5637              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 5638              	_ZL28cpu_irq_prev_interrupt_state:
 5639 0000 00       		.space	1
 5640              		.section	.bss.maxReps,"aw",%nobits
 5641              		.align	2
 5642              		.set	.LANCHOR0,. + 0
 5643              		.type	maxReps, %object
 5644              		.size	maxReps, 4
 5645              	maxReps:
 5646 0000 00000000 		.space	4
 5647              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 5648              		.align	2
 5649              		.type	_ZL32cpu_irq_critical_section_counter, %object
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccSYlqig.s 			page 103


 5650              		.size	_ZL32cpu_irq_critical_section_counter, 4
 5651              	_ZL32cpu_irq_critical_section_counter:
 5652 0000 00000000 		.space	4
 5653              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
