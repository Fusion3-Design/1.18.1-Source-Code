ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc7fcJnd.s 			page 1


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
  15              		.file	"StringRef.cpp"
  16              		.section	.text._ZNK9StringRef6strlenEv,"ax",%progbits
  17              		.align	2
  18              		.global	_ZNK9StringRef6strlenEv
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZNK9StringRef6strlenEv, %function
  22              	_ZNK9StringRef6strlenEv:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 03C8     		ldmia	r0, {r0, r1}
  27 0002 0139     		subs	r1, r1, #1
  28 0004 FFF7FEBF 		b	strnlen
  29              		.size	_ZNK9StringRef6strlenEv, .-_ZNK9StringRef6strlenEv
  30              		.section	.text._ZN9StringRef6printfEPKcz,"ax",%progbits
  31              		.align	2
  32              		.global	_ZN9StringRef6printfEPKcz
  33              		.thumb
  34              		.thumb_func
  35              		.type	_ZN9StringRef6printfEPKcz, %function
  36              	_ZN9StringRef6printfEPKcz:
  37              		@ args = 4, pretend = 12, frame = 8
  38              		@ frame_needed = 0, uses_anonymous_args = 1
  39 0000 0EB4     		push	{r1, r2, r3}
  40 0002 00B5     		push	{lr}
  41 0004 82B0     		sub	sp, sp, #8
  42 0006 03AB     		add	r3, sp, #12
  43 0008 03C8     		ldmia	r0, {r0, r1}
  44 000a 53F8042B 		ldr	r2, [r3], #4
  45 000e 0193     		str	r3, [sp, #4]
  46 0010 FFF7FEFF 		bl	vsnprintf
  47 0014 02B0     		add	sp, sp, #8
  48              		@ sp needed
  49 0016 5DF804EB 		ldr	lr, [sp], #4
  50 001a 03B0     		add	sp, sp, #12
  51 001c 7047     		bx	lr
  52              		.size	_ZN9StringRef6printfEPKcz, .-_ZN9StringRef6printfEPKcz
  53 001e 00BF     		.section	.text._ZN9StringRef7vprintfEPKcSt9__va_list,"ax",%progbits
  54              		.align	2
  55              		.global	_ZN9StringRef7vprintfEPKcSt9__va_list
  56              		.thumb
  57              		.thumb_func
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc7fcJnd.s 			page 2


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
  82 0006 03C8     		ldmia	r0, {r0, r1}
  83 0008 82B0     		sub	sp, sp, #8
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
  99 0028 059A     		ldr	r2, [sp, #20]
 100 002a 06AC     		add	r4, sp, #24
 101 002c 2844     		add	r0, r0, r5
 102 002e 491B     		subs	r1, r1, r5
 103 0030 2346     		mov	r3, r4
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
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc7fcJnd.s 			page 3


 115              		.global	_ZN9StringRef4copyEPKc
 116              		.thumb
 117              		.thumb_func
 118              		.type	_ZN9StringRef4copyEPKc, %function
 119              	_ZN9StringRef4copyEPKc:
 120              		@ args = 0, pretend = 0, frame = 0
 121              		@ frame_needed = 0, uses_anonymous_args = 0
 122 0000 70B5     		push	{r4, r5, r6, lr}
 123 0002 0E46     		mov	r6, r1
 124 0004 4168     		ldr	r1, [r0, #4]
 125 0006 0546     		mov	r5, r0
 126 0008 0139     		subs	r1, r1, #1
 127 000a 3046     		mov	r0, r6
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
 150 0002 0446     		mov	r4, r0
 151 0004 0E46     		mov	r6, r1
 152 0006 03C8     		ldmia	r0, {r0, r1}
 153 0008 0139     		subs	r1, r1, #1
 154 000a FFF7FEFF 		bl	strnlen
 155 000e 6168     		ldr	r1, [r4, #4]
 156 0010 0139     		subs	r1, r1, #1
 157 0012 0546     		mov	r5, r0
 158 0014 091A     		subs	r1, r1, r0
 159 0016 3046     		mov	r0, r6
 160 0018 FFF7FEFF 		bl	strnlen
 161 001c 0746     		mov	r7, r0
 162 001e 2068     		ldr	r0, [r4]
 163 0020 3A46     		mov	r2, r7
 164 0022 3146     		mov	r1, r6
 165 0024 2844     		add	r0, r0, r5
 166 0026 FFF7FEFF 		bl	memcpy
 167 002a E819     		adds	r0, r5, r7
 168 002c 2368     		ldr	r3, [r4]
 169 002e 0022     		movs	r2, #0
 170 0030 1A54     		strb	r2, [r3, r0]
 171 0032 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\cc7fcJnd.s 			page 4


 172              		.size	_ZN9StringRef3catEPKc, .-_ZN9StringRef3catEPKc
 173              		.section	.text._ZN9StringRef3catEc,"ax",%progbits
 174              		.align	2
 175              		.global	_ZN9StringRef3catEc
 176              		.thumb
 177              		.thumb_func
 178              		.type	_ZN9StringRef3catEc, %function
 179              	_ZN9StringRef3catEc:
 180              		@ args = 0, pretend = 0, frame = 0
 181              		@ frame_needed = 0, uses_anonymous_args = 0
 182 0000 38B5     		push	{r3, r4, r5, lr}
 183 0002 0446     		mov	r4, r0
 184 0004 0D46     		mov	r5, r1
 185 0006 03C8     		ldmia	r0, {r0, r1}
 186 0008 0139     		subs	r1, r1, #1
 187 000a FFF7FEFF 		bl	strnlen
 188 000e 6268     		ldr	r2, [r4, #4]
 189 0010 431C     		adds	r3, r0, #1
 190 0012 9342     		cmp	r3, r2
 191 0014 05D2     		bcs	.L12
 192 0016 2268     		ldr	r2, [r4]
 193 0018 1554     		strb	r5, [r2, r0]
 194 001a 2268     		ldr	r2, [r4]
 195 001c 0021     		movs	r1, #0
 196 001e D154     		strb	r1, [r2, r3]
 197 0020 1846     		mov	r0, r3
 198              	.L12:
 199 0022 38BD     		pop	{r3, r4, r5, pc}
 200              		.size	_ZN9StringRef3catEc, .-_ZN9StringRef3catEc
 201              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
