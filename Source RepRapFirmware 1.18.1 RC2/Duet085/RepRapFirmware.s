ARM GAS  C:\Users\George\AppData\Local\Temp\ccDUcvBd.s 			page 1


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
  14              		.file	"RepRapFirmware.cpp"
  15              		.section	.text.debugPrintf,"ax",%progbits
  16              		.align	2
  17              		.global	debugPrintf
  18              		.thumb
  19              		.thumb_func
  20              		.type	debugPrintf, %function
  21              	debugPrintf:
  22              		@ args = 4, pretend = 16, frame = 8
  23              		@ frame_needed = 0, uses_anonymous_args = 1
  24 0000 0FB4     		push	{r0, r1, r2, r3}
  25 0002 10B5     		push	{r4, lr}
  26 0004 82B0     		sub	sp, sp, #8
  27 0006 04AC     		add	r4, sp, #16
  28 0008 54F8042B 		ldr	r2, [r4], #4
  29 000c 0549     		ldr	r1, .L2
  30 000e 2346     		mov	r3, r4
  31 0010 0868     		ldr	r0, [r1]
  32 0012 0321     		movs	r1, #3
  33 0014 0194     		str	r4, [sp, #4]
  34 0016 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcSt9__va_list
  35 001a 02B0     		add	sp, sp, #8
  36              		@ sp needed
  37 001c BDE81040 		pop	{r4, lr}
  38 0020 04B0     		add	sp, sp, #16
  39 0022 7047     		bx	lr
  40              	.L3:
  41              		.align	2
  42              	.L2:
  43 0024 00000000 		.word	.LANCHOR0
  44              		.size	debugPrintf, .-debugPrintf
  45              		.section	.text._Z12StringEqualsPKcS0_,"ax",%progbits
  46              		.align	2
  47              		.global	_Z12StringEqualsPKcS0_
  48              		.thumb
  49              		.thumb_func
  50              		.type	_Z12StringEqualsPKcS0_, %function
  51              	_Z12StringEqualsPKcS0_:
  52              		@ args = 0, pretend = 0, frame = 0
  53              		@ frame_needed = 0, uses_anonymous_args = 0
  54 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
  55 0004 0346     		mov	r3, r0
  56 0006 0078     		ldrb	r0, [r0]	@ zero_extendqisi2
  57 0008 8946     		mov	r9, r1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDUcvBd.s 			page 2


  58 000a C0B1     		cbz	r0, .L8
  59 000c 0C78     		ldrb	r4, [r1]	@ zero_extendqisi2
  60 000e 9CB1     		cbz	r4, .L10
  61 0010 1E46     		mov	r6, r3
  62 0012 8846     		mov	r8, r1
  63 0014 0025     		movs	r5, #0
  64 0016 07E0     		b	.L7
  65              	.L17:
  66 0018 16F8010F 		ldrb	r0, [r6, #1]!	@ zero_extendqisi2
  67 001c 0135     		adds	r5, r5, #1
  68 001e 2A46     		mov	r2, r5
  69 0020 70B1     		cbz	r0, .L5
  70 0022 18F8014F 		ldrb	r4, [r8, #1]!	@ zero_extendqisi2
  71 0026 3CB1     		cbz	r4, .L10
  72              	.L7:
  73 0028 FFF7FEFF 		bl	tolower
  74 002c 0746     		mov	r7, r0
  75 002e 2046     		mov	r0, r4
  76 0030 FFF7FEFF 		bl	tolower
  77 0034 8742     		cmp	r7, r0
  78 0036 EFD0     		beq	.L17
  79              	.L10:
  80 0038 0020     		movs	r0, #0
  81 003a BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
  82              	.L8:
  83 003e 0246     		mov	r2, r0
  84              	.L5:
  85 0040 19F80200 		ldrb	r0, [r9, r2]	@ zero_extendqisi2
  86 0044 D0F10100 		rsbs	r0, r0, #1
  87 0048 38BF     		it	cc
  88 004a 0020     		movcc	r0, #0
  89 004c BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
  90              		.size	_Z12StringEqualsPKcS0_, .-_Z12StringEqualsPKcS0_
  91              		.section	.text._Z14StringEndsWithPKcS0_,"ax",%progbits
  92              		.align	2
  93              		.global	_Z14StringEndsWithPKcS0_
  94              		.thumb
  95              		.thumb_func
  96              		.type	_Z14StringEndsWithPKcS0_, %function
  97              	_Z14StringEndsWithPKcS0_:
  98              		@ args = 0, pretend = 0, frame = 0
  99              		@ frame_needed = 0, uses_anonymous_args = 0
 100 0000 70B5     		push	{r4, r5, r6, lr}
 101 0002 0C46     		mov	r4, r1
 102 0004 0646     		mov	r6, r0
 103 0006 FFF7FEFF 		bl	strlen
 104 000a 0546     		mov	r5, r0
 105 000c 2046     		mov	r0, r4
 106 000e FFF7FEFF 		bl	strlen
 107 0012 8542     		cmp	r5, r0
 108 0014 06DB     		blt	.L19
 109 0016 281A     		subs	r0, r5, r0
 110 0018 3044     		add	r0, r0, r6
 111 001a 2146     		mov	r1, r4
 112 001c BDE87040 		pop	{r4, r5, r6, lr}
 113 0020 FFF7FEBF 		b	_Z12StringEqualsPKcS0_
 114              	.L19:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDUcvBd.s 			page 3


 115 0024 0020     		movs	r0, #0
 116 0026 70BD     		pop	{r4, r5, r6, pc}
 117              		.size	_Z14StringEndsWithPKcS0_, .-_Z14StringEndsWithPKcS0_
 118              		.section	.text._Z16StringStartsWithPKcS0_,"ax",%progbits
 119              		.align	2
 120              		.global	_Z16StringStartsWithPKcS0_
 121              		.thumb
 122              		.thumb_func
 123              		.type	_Z16StringStartsWithPKcS0_, %function
 124              	_Z16StringStartsWithPKcS0_:
 125              		@ args = 0, pretend = 0, frame = 0
 126              		@ frame_needed = 0, uses_anonymous_args = 0
 127 0000 B0B5     		push	{r4, r5, r7, lr}
 128 0002 0C46     		mov	r4, r1
 129 0004 0546     		mov	r5, r0
 130 0006 FFF7FEFF 		bl	strlen
 131 000a 0746     		mov	r7, r0
 132 000c 2046     		mov	r0, r4
 133 000e FFF7FEFF 		bl	strlen
 134 0012 8742     		cmp	r7, r0
 135 0014 14DB     		blt	.L27
 136 0016 0028     		cmp	r0, #0
 137 0018 10DD     		ble	.L25
 138 001a 2A78     		ldrb	r2, [r5]	@ zero_extendqisi2
 139 001c 2378     		ldrb	r3, [r4]	@ zero_extendqisi2
 140 001e 9A42     		cmp	r2, r3
 141 0020 0ED1     		bne	.L27
 142 0022 2A46     		mov	r2, r5
 143 0024 2146     		mov	r1, r4
 144 0026 0023     		movs	r3, #0
 145 0028 05E0     		b	.L22
 146              	.L23:
 147 002a 12F8015F 		ldrb	r5, [r2, #1]!	@ zero_extendqisi2
 148 002e 11F8014F 		ldrb	r4, [r1, #1]!	@ zero_extendqisi2
 149 0032 A542     		cmp	r5, r4
 150 0034 04D1     		bne	.L27
 151              	.L22:
 152 0036 0133     		adds	r3, r3, #1
 153 0038 9842     		cmp	r0, r3
 154 003a F6D1     		bne	.L23
 155              	.L25:
 156 003c 0120     		movs	r0, #1
 157 003e B0BD     		pop	{r4, r5, r7, pc}
 158              	.L27:
 159 0040 0020     		movs	r0, #0
 160 0042 B0BD     		pop	{r4, r5, r7, pc}
 161              		.size	_Z16StringStartsWithPKcS0_, .-_Z16StringStartsWithPKcS0_
 162              		.section	.text._Z14StringContainsPKcS0_,"ax",%progbits
 163              		.align	2
 164              		.global	_Z14StringContainsPKcS0_
 165              		.thumb
 166              		.thumb_func
 167              		.type	_Z14StringContainsPKcS0_, %function
 168              	_Z14StringContainsPKcS0_:
 169              		@ args = 0, pretend = 0, frame = 0
 170              		@ frame_needed = 0, uses_anonymous_args = 0
 171              		@ link register save eliminated.
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDUcvBd.s 			page 4


 172 0000 30B4     		push	{r4, r5}
 173 0002 0024     		movs	r4, #0
 174 0004 2346     		mov	r3, r4
 175              	.L29:
 176 0006 C25C     		ldrb	r2, [r0, r3]	@ zero_extendqisi2
 177 0008 0133     		adds	r3, r3, #1
 178 000a 3AB1     		cbz	r2, .L35
 179              	.L32:
 180 000c 0D5D     		ldrb	r5, [r1, r4]	@ zero_extendqisi2
 181 000e 9542     		cmp	r5, r2
 182 0010 08D0     		beq	.L36
 183 0012 C25C     		ldrb	r2, [r0, r3]	@ zero_extendqisi2
 184 0014 0024     		movs	r4, #0
 185 0016 0133     		adds	r3, r3, #1
 186 0018 002A     		cmp	r2, #0
 187 001a F7D1     		bne	.L32
 188              	.L35:
 189 001c 4FF0FF30 		mov	r0, #-1
 190 0020 30BC     		pop	{r4, r5}
 191 0022 7047     		bx	lr
 192              	.L36:
 193 0024 0134     		adds	r4, r4, #1
 194 0026 0A5D     		ldrb	r2, [r1, r4]	@ zero_extendqisi2
 195 0028 002A     		cmp	r2, #0
 196 002a ECD1     		bne	.L29
 197 002c 1846     		mov	r0, r3
 198 002e 30BC     		pop	{r4, r5}
 199 0030 7047     		bx	lr
 200              		.size	_Z14StringContainsPKcS0_, .-_Z14StringContainsPKcS0_
 201 0032 00BF     		.section	.text.startup._GLOBAL__sub_I_reprap,"ax",%progbits
 202              		.align	2
 203              		.thumb
 204              		.thumb_func
 205              		.type	_GLOBAL__sub_I_reprap, %function
 206              	_GLOBAL__sub_I_reprap:
 207              		@ args = 0, pretend = 0, frame = 0
 208              		@ frame_needed = 0, uses_anonymous_args = 0
 209 0000 08B5     		push	{r3, lr}
 210 0002 0548     		ldr	r0, .L38
 211 0004 FFF7FEFF 		bl	_ZN6RepRapC1Ev
 212 0008 044B     		ldr	r3, .L38+4
 213 000a 054A     		ldr	r2, .L38+8
 214 000c 0021     		movs	r1, #0
 215 000e AA20     		movs	r0, #170
 216 0010 1970     		strb	r1, [r3]
 217 0012 5060     		str	r0, [r2, #4]
 218 0014 1360     		str	r3, [r2]
 219 0016 08BD     		pop	{r3, pc}
 220              	.L39:
 221              		.align	2
 222              	.L38:
 223 0018 00000000 		.word	.LANCHOR0
 224 001c 00000000 		.word	.LANCHOR2
 225 0020 00000000 		.word	.LANCHOR1
 226              		.size	_GLOBAL__sub_I_reprap, .-_GLOBAL__sub_I_reprap
 227              		.section	.init_array,"aw",%init_array
 228              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDUcvBd.s 			page 5


 229 0000 00000000 		.word	_GLOBAL__sub_I_reprap(target1)
 230              		.global	scratchString
 231              		.global	moduleName
 232              		.global	reprap
 233              		.section	.bss._ZL19scratchStringBuffer,"aw",%nobits
 234              		.align	2
 235              		.set	.LANCHOR2,. + 0
 236              		.type	_ZL19scratchStringBuffer, %object
 237              		.size	_ZL19scratchStringBuffer, 170
 238              	_ZL19scratchStringBuffer:
 239 0000 00000000 		.space	170
 239      00000000 
 239      00000000 
 239      00000000 
 239      00000000 
 240 00aa 0000     		.section	.bss.scratchString,"aw",%nobits
 241              		.align	2
 242              		.set	.LANCHOR1,. + 0
 243              		.type	scratchString, %object
 244              		.size	scratchString, 8
 245              	scratchString:
 246 0000 00000000 		.space	8
 246      00000000 
 247              		.section	.bss.reprap,"aw",%nobits
 248              		.align	2
 249              		.set	.LANCHOR0,. + 0
 250              		.type	reprap, %object
 251              		.size	reprap, 400
 252              	reprap:
 253 0000 00000000 		.space	400
 253      00000000 
 253      00000000 
 253      00000000 
 253      00000000 
 254              		.section	.rodata.str1.4,"aMS",%progbits,1
 255              		.align	2
 256              	.LC0:
 257 0000 506C6174 		.ascii	"Platform\000"
 257      666F726D 
 257      00
 258 0009 000000   		.space	3
 259              	.LC1:
 260 000c 4E657477 		.ascii	"Network\000"
 260      6F726B00 
 261              	.LC2:
 262 0014 57656273 		.ascii	"Webserver\000"
 262      65727665 
 262      7200
 263 001e 0000     		.space	2
 264              	.LC3:
 265 0020 47436F64 		.ascii	"GCodes\000"
 265      657300
 266 0027 00       		.space	1
 267              	.LC4:
 268 0028 4D6F7665 		.ascii	"Move\000"
 268      00
 269 002d 000000   		.space	3
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDUcvBd.s 			page 6


 270              	.LC5:
 271 0030 48656174 		.ascii	"Heat\000"
 271      00
 272 0035 000000   		.space	3
 273              	.LC6:
 274 0038 44444100 		.ascii	"DDA\000"
 275              	.LC7:
 276 003c 526F6C61 		.ascii	"Roland\000"
 276      6E6400
 277 0043 00       		.space	1
 278              	.LC8:
 279 0044 5072696E 		.ascii	"PrintMonitor\000"
 279      744D6F6E 
 279      69746F72 
 279      00
 280 0051 000000   		.space	3
 281              	.LC9:
 282 0054 53746F72 		.ascii	"Storage\000"
 282      61676500 
 283              	.LC10:
 284 005c 3F00     		.ascii	"?\000"
 285 005e 0000     		.space	2
 286              	.LC11:
 287 0060 6E6F6E65 		.ascii	"none\000"
 287      00
 288 0065 000000   		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 289              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 290              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 291              	_ZL28cpu_irq_prev_interrupt_state:
 292 0000 00       		.space	1
 293              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 294              		.align	2
 295              		.type	_ZL32cpu_irq_critical_section_counter, %object
 296              		.size	_ZL32cpu_irq_critical_section_counter, 4
 297              	_ZL32cpu_irq_critical_section_counter:
 298 0000 00000000 		.space	4
 299              		.section	.data.moduleName,"aw",%progbits
 300              		.align	2
 301              		.type	moduleName, %object
 302              		.size	moduleName, 64
 303              	moduleName:
 304 0000 00000000 		.word	.LC0
 305 0004 0C000000 		.word	.LC1
 306 0008 14000000 		.word	.LC2
 307 000c 20000000 		.word	.LC3
 308 0010 28000000 		.word	.LC4
 309 0014 30000000 		.word	.LC5
 310 0018 38000000 		.word	.LC6
 311 001c 3C000000 		.word	.LC7
 312 0020 44000000 		.word	.LC8
 313 0024 54000000 		.word	.LC9
 314 0028 5C000000 		.word	.LC10
 315 002c 5C000000 		.word	.LC10
 316 0030 5C000000 		.word	.LC10
 317 0034 5C000000 		.word	.LC10
 318 0038 5C000000 		.word	.LC10
 319 003c 60000000 		.word	.LC11
ARM GAS  C:\Users\George\AppData\Local\Temp\ccDUcvBd.s 			page 7


 320              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
