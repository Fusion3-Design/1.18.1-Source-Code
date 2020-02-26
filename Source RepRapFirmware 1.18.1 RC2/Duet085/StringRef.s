ARM GAS  C:\Users\George\AppData\Local\Temp\ccvtS47O.s 			page 1


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
  14              		.file	"StringRef.cpp"
  15              		.section	.text._ZNK9StringRef6strlenEv,"ax",%progbits
  16              		.align	2
  17              		.global	_ZNK9StringRef6strlenEv
  18              		.thumb
  19              		.thumb_func
  20              		.type	_ZNK9StringRef6strlenEv, %function
  21              	_ZNK9StringRef6strlenEv:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 03C8     		ldmia	r0, {r0, r1}
  26 0002 0139     		subs	r1, r1, #1
  27 0004 FFF7FEBF 		b	strnlen
  28              		.size	_ZNK9StringRef6strlenEv, .-_ZNK9StringRef6strlenEv
  29              		.section	.text._ZN9StringRef6printfEPKcz,"ax",%progbits
  30              		.align	2
  31              		.global	_ZN9StringRef6printfEPKcz
  32              		.thumb
  33              		.thumb_func
  34              		.type	_ZN9StringRef6printfEPKcz, %function
  35              	_ZN9StringRef6printfEPKcz:
  36              		@ args = 4, pretend = 12, frame = 8
  37              		@ frame_needed = 0, uses_anonymous_args = 1
  38 0000 0EB4     		push	{r1, r2, r3}
  39 0002 03C8     		ldmia	r0, {r0, r1}
  40 0004 10B5     		push	{r4, lr}
  41 0006 83B0     		sub	sp, sp, #12
  42 0008 05AC     		add	r4, sp, #20
  43 000a 54F8042B 		ldr	r2, [r4], #4
  44 000e 2346     		mov	r3, r4
  45 0010 0194     		str	r4, [sp, #4]
  46 0012 FFF7FEFF 		bl	vsnprintf
  47 0016 03B0     		add	sp, sp, #12
  48              		@ sp needed
  49 0018 BDE81040 		pop	{r4, lr}
  50 001c 03B0     		add	sp, sp, #12
  51 001e 7047     		bx	lr
  52              		.size	_ZN9StringRef6printfEPKcz, .-_ZN9StringRef6printfEPKcz
  53              		.section	.text._ZN9StringRef7vprintfEPKcSt9__va_list,"ax",%progbits
  54              		.align	2
  55              		.global	_ZN9StringRef7vprintfEPKcSt9__va_list
  56              		.thumb
  57              		.thumb_func
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvtS47O.s 			page 2


  58              		.type	_ZN9StringRef7vprintfEPKcSt9__va_list, %function
  59              	_ZN9StringRef7vprintfEPKcSt9__va_list:
  60              		@ args = 0, pretend = 0, frame = 0
  61              		@ frame_needed = 0, uses_anonymous_args = 0
  62              		@ link register save eliminated.
  63 0000 10B4     		push	{r4}
  64 0002 1346     		mov	r3, r2
  65 0004 5DF8044B 		ldr	r4, [sp], #4
  66 0008 0A46     		mov	r2, r1
  67 000a 03C8     		ldmia	r0, {r0, r1}
  68 000c FFF7FEBF 		b	vsnprintf
  69              		.size	_ZN9StringRef7vprintfEPKcSt9__va_list, .-_ZN9StringRef7vprintfEPKcSt9__va_list
  70              		.section	.text._ZN9StringRef4catfEPKcz,"ax",%progbits
  71              		.align	2
  72              		.global	_ZN9StringRef4catfEPKcz
  73              		.thumb
  74              		.thumb_func
  75              		.type	_ZN9StringRef4catfEPKcz, %function
  76              	_ZN9StringRef4catfEPKcz:
  77              		@ args = 4, pretend = 12, frame = 8
  78              		@ frame_needed = 0, uses_anonymous_args = 1
  79 0000 0EB4     		push	{r1, r2, r3}
  80 0002 30B5     		push	{r4, r5, lr}
  81 0004 0446     		mov	r4, r0
  82 0006 82B0     		sub	sp, sp, #8
  83 0008 03C8     		ldmia	r0, {r0, r1}
  84 000a 0139     		subs	r1, r1, #1
  85 000c FFF7FEFF 		bl	strnlen
  86 0010 6168     		ldr	r1, [r4, #4]
  87 0012 431C     		adds	r3, r0, #1
  88 0014 8B42     		cmp	r3, r1
  89 0016 0546     		mov	r5, r0
  90 0018 05D3     		bcc	.L8
  91 001a 0020     		movs	r0, #0
  92 001c 02B0     		add	sp, sp, #8
  93              		@ sp needed
  94 001e BDE83040 		pop	{r4, r5, lr}
  95 0022 03B0     		add	sp, sp, #12
  96 0024 7047     		bx	lr
  97              	.L8:
  98 0026 2068     		ldr	r0, [r4]
  99 0028 06AC     		add	r4, sp, #24
 100 002a 2844     		add	r0, r0, r5
 101 002c 491B     		subs	r1, r1, r5
 102 002e 2346     		mov	r3, r4
 103 0030 059A     		ldr	r2, [sp, #20]
 104 0032 0194     		str	r4, [sp, #4]
 105 0034 FFF7FEFF 		bl	vsnprintf
 106 0038 2844     		add	r0, r0, r5
 107 003a 02B0     		add	sp, sp, #8
 108              		@ sp needed
 109 003c BDE83040 		pop	{r4, r5, lr}
 110 0040 03B0     		add	sp, sp, #12
 111 0042 7047     		bx	lr
 112              		.size	_ZN9StringRef4catfEPKcz, .-_ZN9StringRef4catfEPKcz
 113              		.section	.text._ZN9StringRef4copyEPKc,"ax",%progbits
 114              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvtS47O.s 			page 3


 115              		.global	_ZN9StringRef4copyEPKc
 116              		.thumb
 117              		.thumb_func
 118              		.type	_ZN9StringRef4copyEPKc, %function
 119              	_ZN9StringRef4copyEPKc:
 120              		@ args = 0, pretend = 0, frame = 0
 121              		@ frame_needed = 0, uses_anonymous_args = 0
 122 0000 4368     		ldr	r3, [r0, #4]
 123 0002 70B5     		push	{r4, r5, r6, lr}
 124 0004 0546     		mov	r5, r0
 125 0006 0E46     		mov	r6, r1
 126 0008 0846     		mov	r0, r1
 127 000a 591E     		subs	r1, r3, #1
 128 000c FFF7FEFF 		bl	strnlen
 129 0010 0446     		mov	r4, r0
 130 0012 2246     		mov	r2, r4
 131 0014 3146     		mov	r1, r6
 132 0016 2868     		ldr	r0, [r5]
 133 0018 FFF7FEFF 		bl	memcpy
 134 001c 2B68     		ldr	r3, [r5]
 135 001e 0022     		movs	r2, #0
 136 0020 1A55     		strb	r2, [r3, r4]
 137 0022 2046     		mov	r0, r4
 138 0024 70BD     		pop	{r4, r5, r6, pc}
 139              		.size	_ZN9StringRef4copyEPKc, .-_ZN9StringRef4copyEPKc
 140 0026 00BF     		.section	.text._ZN9StringRef3catEPKc,"ax",%progbits
 141              		.align	2
 142              		.global	_ZN9StringRef3catEPKc
 143              		.thumb
 144              		.thumb_func
 145              		.type	_ZN9StringRef3catEPKc, %function
 146              	_ZN9StringRef3catEPKc:
 147              		@ args = 0, pretend = 0, frame = 0
 148              		@ frame_needed = 0, uses_anonymous_args = 0
 149 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 150 0002 4368     		ldr	r3, [r0, #4]
 151 0004 0446     		mov	r4, r0
 152 0006 0E46     		mov	r6, r1
 153 0008 0068     		ldr	r0, [r0]
 154 000a 591E     		subs	r1, r3, #1
 155 000c FFF7FEFF 		bl	strnlen
 156 0010 6168     		ldr	r1, [r4, #4]
 157 0012 0546     		mov	r5, r0
 158 0014 0139     		subs	r1, r1, #1
 159 0016 491B     		subs	r1, r1, r5
 160 0018 3046     		mov	r0, r6
 161 001a FFF7FEFF 		bl	strnlen
 162 001e 0746     		mov	r7, r0
 163 0020 2068     		ldr	r0, [r4]
 164 0022 3A46     		mov	r2, r7
 165 0024 3146     		mov	r1, r6
 166 0026 2844     		add	r0, r0, r5
 167 0028 FFF7FEFF 		bl	memcpy
 168 002c 2368     		ldr	r3, [r4]
 169 002e E819     		adds	r0, r5, r7
 170 0030 0022     		movs	r2, #0
 171 0032 1A54     		strb	r2, [r3, r0]
ARM GAS  C:\Users\George\AppData\Local\Temp\ccvtS47O.s 			page 4


 172 0034 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 173              		.size	_ZN9StringRef3catEPKc, .-_ZN9StringRef3catEPKc
 174 0036 00BF     		.section	.text._ZN9StringRef3catEc,"ax",%progbits
 175              		.align	2
 176              		.global	_ZN9StringRef3catEc
 177              		.thumb
 178              		.thumb_func
 179              		.type	_ZN9StringRef3catEc, %function
 180              	_ZN9StringRef3catEc:
 181              		@ args = 0, pretend = 0, frame = 0
 182              		@ frame_needed = 0, uses_anonymous_args = 0
 183 0000 38B5     		push	{r3, r4, r5, lr}
 184 0002 4368     		ldr	r3, [r0, #4]
 185 0004 0446     		mov	r4, r0
 186 0006 0D46     		mov	r5, r1
 187 0008 0068     		ldr	r0, [r0]
 188 000a 591E     		subs	r1, r3, #1
 189 000c FFF7FEFF 		bl	strnlen
 190 0010 6268     		ldr	r2, [r4, #4]
 191 0012 431C     		adds	r3, r0, #1
 192 0014 9342     		cmp	r3, r2
 193 0016 05D2     		bcs	.L12
 194 0018 2268     		ldr	r2, [r4]
 195 001a 0021     		movs	r1, #0
 196 001c 1554     		strb	r5, [r2, r0]
 197 001e 2268     		ldr	r2, [r4]
 198 0020 1846     		mov	r0, r3
 199 0022 D154     		strb	r1, [r2, r3]
 200              	.L12:
 201 0024 38BD     		pop	{r3, r4, r5, pc}
 202              		.size	_ZN9StringRef3catEc, .-_ZN9StringRef3catEc
 203 0026 00BF     		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
