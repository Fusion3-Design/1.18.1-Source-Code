ARM GAS  C:\Users\George\AppData\Local\Temp\ccBZydop.s 			page 1


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
  14              		.file	"memp.c"
  15              		.section	.text.memp_init,"ax",%progbits
  16              		.align	2
  17              		.global	memp_init
  18              		.thumb
  19              		.thumb_func
  20              		.type	memp_init, %function
  21              	memp_init:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 224B     		ldr	r3, .L16
  26 0002 2349     		ldr	r1, .L16+4
  27 0004 2DE9F00F 		push	{r4, r5, r6, r7, r8, r9, r10, fp}
  28 0008 0022     		movs	r2, #0
  29 000a 03F16404 		add	r4, r3, #100
  30              	.L3:
  31 000e 31F8020F 		ldrh	r0, [r1, #2]!
  32 0012 A3F8D020 		strh	r2, [r3, #208]	@ movhi
  33 0016 A3F8D220 		strh	r2, [r3, #210]	@ movhi
  34 001a A3F8D420 		strh	r2, [r3, #212]	@ movhi
  35 001e A3F8CE00 		strh	r0, [r3, #206]	@ movhi
  36 0022 0A33     		adds	r3, r3, #10
  37 0024 A342     		cmp	r3, r4
  38 0026 F2D1     		bne	.L3
  39 0028 1A4B     		ldr	r3, .L16+8
  40 002a DFF86CC0 		ldr	ip, .L16+12
  41 002e DFF86CB0 		ldr	fp, .L16+16
  42 0032 DFF86C90 		ldr	r9, .L16+20
  43 0036 0027     		movs	r7, #0
  44 0038 23F00308 		bic	r8, r3, #3
  45 003c 0CF1280A 		add	r10, ip, #40
  46              	.L8:
  47 0040 3BF80760 		ldrh	r6, [fp, r7]
  48 0044 0023     		movs	r3, #0
  49 0046 4CF8043B 		str	r3, [ip], #4
  50 004a BEB1     		cbz	r6, .L4
  51 004c 1A46     		mov	r2, r3
  52 004e 1846     		mov	r0, r3
  53 0050 37F80950 		ldrh	r5, [r7, r9]
  54 0054 4346     		mov	r3, r8
  55 0056 01E0     		b	.L6
  56              	.L15:
  57 0058 1846     		mov	r0, r3
ARM GAS  C:\Users\George\AppData\Local\Temp\ccBZydop.s 			page 2


  58 005a 2346     		mov	r3, r4
  59              	.L6:
  60 005c 0132     		adds	r2, r2, #1
  61 005e 91B2     		uxth	r1, r2
  62 0060 8E42     		cmp	r6, r1
  63 0062 1860     		str	r0, [r3]
  64 0064 03EB0504 		add	r4, r3, r5
  65 0068 F6D8     		bhi	.L15
  66 006a 013E     		subs	r6, r6, #1
  67 006c B6B2     		uxth	r6, r6
  68 006e 05FB0683 		mla	r3, r5, r6, r8
  69 0072 06FB0555 		mla	r5, r6, r5, r5
  70 0076 4CF8043C 		str	r3, [ip, #-4]
  71 007a A844     		add	r8, r8, r5
  72              	.L4:
  73 007c D445     		cmp	ip, r10
  74 007e 07F10207 		add	r7, r7, #2
  75 0082 DDD1     		bne	.L8
  76 0084 BDE8F00F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp}
  77 0088 7047     		bx	lr
  78              	.L17:
  79 008a 00BF     		.align	2
  80              	.L16:
  81 008c 00000000 		.word	lwip_stats
  82 0090 FEFFFFFF 		.word	.LANCHOR0-2
  83 0094 03000000 		.word	.LANCHOR1+3
  84 0098 00000000 		.word	.LANCHOR2
  85 009c 00000000 		.word	.LANCHOR0
  86 00a0 00000000 		.word	.LANCHOR3
  87              		.size	memp_init, .-memp_init
  88              		.section	.text.memp_malloc,"ax",%progbits
  89              		.align	2
  90              		.global	memp_malloc
  91              		.thumb
  92              		.thumb_func
  93              		.type	memp_malloc, %function
  94              	memp_malloc:
  95              		@ args = 0, pretend = 0, frame = 0
  96              		@ frame_needed = 0, uses_anonymous_args = 0
  97 0000 0928     		cmp	r0, #9
  98 0002 70B5     		push	{r4, r5, r6, lr}
  99 0004 0346     		mov	r3, r0
 100 0006 23D8     		bhi	.L23
 101 0008 154C     		ldr	r4, .L24
 102 000a 164A     		ldr	r2, .L24+4
 103 000c 54F82000 		ldr	r0, [r4, r0, lsl #2]
 104 0010 A0B1     		cbz	r0, .L21
 105 0012 03EB8301 		add	r1, r3, r3, lsl #2
 106 0016 02EB4102 		add	r2, r2, r1, lsl #1
 107 001a B2F8D010 		ldrh	r1, [r2, #208]
 108 001e B2F8D260 		ldrh	r6, [r2, #210]
 109 0022 0131     		adds	r1, r1, #1
 110 0024 0568     		ldr	r5, [r0]
 111 0026 89B2     		uxth	r1, r1
 112 0028 8E42     		cmp	r6, r1
 113 002a A2F8D010 		strh	r1, [r2, #208]	@ movhi
 114 002e 44F82350 		str	r5, [r4, r3, lsl #2]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccBZydop.s 			page 3


 115 0032 02F1C802 		add	r2, r2, #200
 116 0036 0AD2     		bcs	.L22
 117 0038 5181     		strh	r1, [r2, #10]	@ movhi
 118 003a 70BD     		pop	{r4, r5, r6, pc}
 119              	.L21:
 120 003c 03EB8303 		add	r3, r3, r3, lsl #2
 121 0040 02EB4303 		add	r3, r2, r3, lsl #1
 122 0044 B3F8D420 		ldrh	r2, [r3, #212]
 123 0048 0132     		adds	r2, r2, #1
 124 004a A3F8D420 		strh	r2, [r3, #212]	@ movhi
 125              	.L22:
 126 004e 70BD     		pop	{r4, r5, r6, pc}
 127              	.L23:
 128 0050 0548     		ldr	r0, .L24+8
 129 0052 0649     		ldr	r1, .L24+12
 130 0054 4FF4C772 		mov	r2, #398
 131 0058 054B     		ldr	r3, .L24+16
 132 005a FFF7FEFF 		bl	debugPrintf
 133              	.L20:
 134 005e FEE7     		b	.L20
 135              	.L25:
 136              		.align	2
 137              	.L24:
 138 0060 00000000 		.word	.LANCHOR2
 139 0064 00000000 		.word	lwip_stats
 140 0068 00000000 		.word	.LC0
 141 006c 28000000 		.word	.LC1
 142 0070 48000000 		.word	.LC2
 143              		.size	memp_malloc, .-memp_malloc
 144              		.section	.text.memp_free,"ax",%progbits
 145              		.align	2
 146              		.global	memp_free
 147              		.thumb
 148              		.thumb_func
 149              		.type	memp_free, %function
 150              	memp_free:
 151              		@ args = 0, pretend = 0, frame = 0
 152              		@ frame_needed = 0, uses_anonymous_args = 0
 153              		@ link register save eliminated.
 154 0000 30B4     		push	{r4, r5}
 155 0002 79B1     		cbz	r1, .L26
 156 0004 084B     		ldr	r3, .L31
 157 0006 00EB8002 		add	r2, r0, r0, lsl #2
 158 000a 03EB4202 		add	r2, r3, r2, lsl #1
 159 000e 074B     		ldr	r3, .L31+4
 160 0010 B2F8D050 		ldrh	r5, [r2, #208]
 161 0014 53F82040 		ldr	r4, [r3, r0, lsl #2]
 162 0018 013D     		subs	r5, r5, #1
 163 001a A2F8D050 		strh	r5, [r2, #208]	@ movhi
 164 001e 0C60     		str	r4, [r1]
 165 0020 43F82010 		str	r1, [r3, r0, lsl #2]
 166              	.L26:
 167 0024 30BC     		pop	{r4, r5}
 168 0026 7047     		bx	lr
 169              	.L32:
 170              		.align	2
 171              	.L31:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccBZydop.s 			page 4


 172 0028 00000000 		.word	lwip_stats
 173 002c 00000000 		.word	.LANCHOR2
 174              		.size	memp_free, .-memp_free
 175              		.section	.rodata.memp_num,"a",%progbits
 176              		.align	2
 177              		.set	.LANCHOR0,. + 0
 178              		.type	memp_num, %object
 179              		.size	memp_num, 20
 180              	memp_num:
 181 0000 0500     		.short	5
 182 0002 1000     		.short	16
 183 0004 0400     		.short	4
 184 0006 1000     		.short	16
 185 0008 0200     		.short	2
 186 000a 0800     		.short	8
 187 000c 0800     		.short	8
 188 000e 0800     		.short	8
 189 0010 0400     		.short	4
 190 0012 0500     		.short	5
 191              		.section	.bss.memp_memory,"aw",%nobits
 192              		.align	2
 193              		.set	.LANCHOR1,. + 0
 194              		.type	memp_memory, %object
 195              		.size	memp_memory, 11271
 196              	memp_memory:
 197 0000 00000000 		.space	11271
 197      00000000 
 197      00000000 
 197      00000000 
 197      00000000 
 198 2c07 00       		.section	.rodata.str1.4,"aMS",%progbits,1
 199              		.align	2
 200              	.LC0:
 201 0000 41737365 		.ascii	"Assertion \"%s\" failed at line %d in %s\012\000"
 201      7274696F 
 201      6E202225 
 201      73222066 
 201      61696C65 
 202              	.LC1:
 203 0028 6D656D70 		.ascii	"memp_malloc: type < MEMP_MAX\000"
 203      5F6D616C 
 203      6C6F633A 
 203      20747970 
 203      65203C20 
 204 0045 000000   		.space	3
 205              	.LC2:
 206 0048 2E2E2F73 		.ascii	"../src/Duet/Lwip/lwip/src/core/memp.c\000"
 206      72632F44 
 206      7565742F 
 206      4C776970 
 206      2F6C7769 
 207 006e 0000     		.section	.bss.memp_tab,"aw",%nobits
 208              		.align	2
 209              		.set	.LANCHOR2,. + 0
 210              		.type	memp_tab, %object
 211              		.size	memp_tab, 40
 212              	memp_tab:
ARM GAS  C:\Users\George\AppData\Local\Temp\ccBZydop.s 			page 5


 213 0000 00000000 		.space	40
 213      00000000 
 213      00000000 
 213      00000000 
 213      00000000 
 214              		.section	.rodata.memp_sizes,"a",%progbits
 215              		.align	2
 216              		.set	.LANCHOR3,. + 0
 217              		.type	memp_sizes, %object
 218              		.size	memp_sizes, 20
 219              	memp_sizes:
 220 0000 2400     		.short	36
 221 0002 9800     		.short	152
 222 0004 1C00     		.short	28
 223 0006 1000     		.short	16
 224 0008 2000     		.short	32
 225 000a 1800     		.short	24
 226 000c 1400     		.short	20
 227 000e 1000     		.short	16
 228 0010 1000     		.short	16
 229 0012 0006     		.short	1536
 230              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
