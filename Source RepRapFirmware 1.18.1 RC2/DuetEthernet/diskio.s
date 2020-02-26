ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccr6h4Gk.s 			page 1


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
  15              		.file	"diskio.c"
  16              		.section	.text.disk_initialize,"ax",%progbits
  17              		.align	2
  18              		.global	disk_initialize
  19              		.thumb
  20              		.thumb_func
  21              		.type	disk_initialize, %function
  22              	disk_initialize:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 0228     		cmp	r0, #2
  26 0002 10B5     		push	{r4, lr}
  27 0004 0446     		mov	r4, r0
  28 0006 07D8     		bhi	.L5
  29 0008 FFF7FEFF 		bl	mem_test_unit_ready
  30 000c 0328     		cmp	r0, #3
  31 000e 02D1     		bne	.L4
  32 0010 2046     		mov	r0, r4
  33 0012 FFF7FEFF 		bl	mem_test_unit_ready
  34              	.L4:
  35 0016 08B1     		cbz	r0, .L8
  36              	.L5:
  37 0018 0120     		movs	r0, #1
  38 001a 10BD     		pop	{r4, pc}
  39              	.L8:
  40 001c 2046     		mov	r0, r4
  41 001e FFF7FEFF 		bl	mem_wr_protect
  42 0022 0028     		cmp	r0, #0
  43 0024 0CBF     		ite	eq
  44 0026 0020     		moveq	r0, #0
  45 0028 0420     		movne	r0, #4
  46 002a 10BD     		pop	{r4, pc}
  47              		.size	disk_initialize, .-disk_initialize
  48              		.section	.text.disk_status,"ax",%progbits
  49              		.align	2
  50              		.global	disk_status
  51              		.thumb
  52              		.thumb_func
  53              		.type	disk_status, %function
  54              	disk_status:
  55              		@ args = 0, pretend = 0, frame = 0
  56              		@ frame_needed = 0, uses_anonymous_args = 0
  57 0000 08B5     		push	{r3, lr}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccr6h4Gk.s 			page 2


  58 0002 FFF7FEFF 		bl	mem_test_unit_ready
  59 0006 18B1     		cbz	r0, .L12
  60 0008 0228     		cmp	r0, #2
  61 000a 0CBF     		ite	eq
  62 000c 0320     		moveq	r0, #3
  63 000e 0120     		movne	r0, #1
  64              	.L12:
  65 0010 08BD     		pop	{r3, pc}
  66              		.size	disk_status, .-disk_status
  67 0012 00BF     		.section	.text.disk_read,"ax",%progbits
  68              		.align	2
  69              		.global	disk_read
  70              		.thumb
  71              		.thumb_func
  72              		.type	disk_read, %function
  73              	disk_read:
  74              		@ args = 0, pretend = 0, frame = 8
  75              		@ frame_needed = 0, uses_anonymous_args = 0
  76 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  77 0004 82B0     		sub	sp, sp, #8
  78 0006 8846     		mov	r8, r1
  79 0008 1646     		mov	r6, r2
  80 000a 1D46     		mov	r5, r3
  81 000c 0746     		mov	r7, r0
  82 000e FFF7FEFF 		bl	mem_sector_size
  83 0012 0446     		mov	r4, r0
  84 0014 18B9     		cbnz	r0, .L18
  85 0016 0120     		movs	r0, #1
  86              	.L15:
  87 0018 02B0     		add	sp, sp, #8
  88              		@ sp needed
  89 001a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  90              	.L18:
  91 001e 3846     		mov	r0, r7
  92 0020 01A9     		add	r1, sp, #4
  93 0022 FFF7FEFF 		bl	mem_read_capacity
  94 0026 019B     		ldr	r3, [sp, #4]
  95 0028 15FB04F2 		smulbb	r2, r5, r4
  96 002c 03FB0444 		mla	r4, r3, r4, r4
  97 0030 9319     		adds	r3, r2, r6
  98 0032 A342     		cmp	r3, r4
  99 0034 03D9     		bls	.L19
 100 0036 0420     		movs	r0, #4
 101 0038 02B0     		add	sp, sp, #8
 102              		@ sp needed
 103 003a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 104              	.L19:
 105 003e 3846     		mov	r0, r7
 106 0040 3146     		mov	r1, r6
 107 0042 4246     		mov	r2, r8
 108 0044 2B46     		mov	r3, r5
 109 0046 FFF7FEFF 		bl	memory_2_ram
 110 004a 0030     		adds	r0, r0, #0
 111 004c 18BF     		it	ne
 112 004e 0120     		movne	r0, #1
 113 0050 E2E7     		b	.L15
 114              		.size	disk_read, .-disk_read
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccr6h4Gk.s 			page 3


 115 0052 00BF     		.section	.text.disk_write,"ax",%progbits
 116              		.align	2
 117              		.global	disk_write
 118              		.thumb
 119              		.thumb_func
 120              		.type	disk_write, %function
 121              	disk_write:
 122              		@ args = 0, pretend = 0, frame = 8
 123              		@ frame_needed = 0, uses_anonymous_args = 0
 124 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 125 0004 82B0     		sub	sp, sp, #8
 126 0006 8846     		mov	r8, r1
 127 0008 1646     		mov	r6, r2
 128 000a 1D46     		mov	r5, r3
 129 000c 0746     		mov	r7, r0
 130 000e FFF7FEFF 		bl	mem_sector_size
 131 0012 0446     		mov	r4, r0
 132 0014 18B9     		cbnz	r0, .L24
 133 0016 0120     		movs	r0, #1
 134              	.L21:
 135 0018 02B0     		add	sp, sp, #8
 136              		@ sp needed
 137 001a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 138              	.L24:
 139 001e 3846     		mov	r0, r7
 140 0020 01A9     		add	r1, sp, #4
 141 0022 FFF7FEFF 		bl	mem_read_capacity
 142 0026 019B     		ldr	r3, [sp, #4]
 143 0028 15FB04F2 		smulbb	r2, r5, r4
 144 002c 03FB0444 		mla	r4, r3, r4, r4
 145 0030 9319     		adds	r3, r2, r6
 146 0032 A342     		cmp	r3, r4
 147 0034 03D9     		bls	.L25
 148 0036 0420     		movs	r0, #4
 149 0038 02B0     		add	sp, sp, #8
 150              		@ sp needed
 151 003a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 152              	.L25:
 153 003e 3846     		mov	r0, r7
 154 0040 3146     		mov	r1, r6
 155 0042 4246     		mov	r2, r8
 156 0044 2B46     		mov	r3, r5
 157 0046 FFF7FEFF 		bl	ram_2_memory
 158 004a 0030     		adds	r0, r0, #0
 159 004c 18BF     		it	ne
 160 004e 0120     		movne	r0, #1
 161 0050 E2E7     		b	.L21
 162              		.size	disk_write, .-disk_write
 163 0052 00BF     		.section	.text.disk_ioctl,"ax",%progbits
 164              		.align	2
 165              		.global	disk_ioctl
 166              		.thumb
 167              		.thumb_func
 168              		.type	disk_ioctl, %function
 169              	disk_ioctl:
 170              		@ args = 0, pretend = 0, frame = 8
 171              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccr6h4Gk.s 			page 4


 172 0000 10B5     		push	{r4, lr}
 173 0002 1446     		mov	r4, r2
 174 0004 82B0     		sub	sp, sp, #8
 175 0006 0329     		cmp	r1, #3
 176 0008 29D8     		bhi	.L34
 177 000a DFE801F0 		tbb	[pc, r1]
 178              	.L29:
 179 000e 1C       		.byte	(.L28-.L29)/2
 180 000f 13       		.byte	(.L30-.L29)/2
 181 0010 07       		.byte	(.L31-.L29)/2
 182 0011 02       		.byte	(.L32-.L29)/2
 183              		.align	1
 184              	.L32:
 185 0012 0123     		movs	r3, #1
 186 0014 1360     		str	r3, [r2]
 187 0016 0020     		movs	r0, #0
 188              	.L27:
 189 0018 02B0     		add	sp, sp, #8
 190              		@ sp needed
 191 001a 10BD     		pop	{r4, pc}
 192              	.L31:
 193 001c FFF7FEFF 		bl	mem_sector_size
 194 0020 431E     		subs	r3, r0, #1
 195 0022 DBB2     		uxtb	r3, r3
 196 0024 012B     		cmp	r3, #1
 197 0026 16D9     		bls	.L33
 198 0028 0428     		cmp	r0, #4
 199 002a 14D0     		beq	.L33
 200 002c 0828     		cmp	r0, #8
 201 002e 12D0     		beq	.L33
 202 0030 0120     		movs	r0, #1
 203 0032 F1E7     		b	.L27
 204              	.L30:
 205 0034 01A9     		add	r1, sp, #4
 206 0036 FFF7FEFF 		bl	mem_read_capacity
 207 003a 019B     		ldr	r3, [sp, #4]
 208 003c 0020     		movs	r0, #0
 209 003e 0133     		adds	r3, r3, #1
 210 0040 2360     		str	r3, [r4]
 211 0042 02B0     		add	sp, sp, #8
 212              		@ sp needed
 213 0044 10BD     		pop	{r4, pc}
 214              	.L28:
 215 0046 FFF7FEFF 		bl	mem_test_unit_ready
 216 004a 0028     		cmp	r0, #0
 217 004c 14BF     		ite	ne
 218 004e 0320     		movne	r0, #3
 219 0050 0020     		moveq	r0, #0
 220 0052 02B0     		add	sp, sp, #8
 221              		@ sp needed
 222 0054 10BD     		pop	{r4, pc}
 223              	.L33:
 224 0056 0020     		movs	r0, #0
 225 0058 2070     		strb	r0, [r4]
 226 005a 02B0     		add	sp, sp, #8
 227              		@ sp needed
 228 005c 10BD     		pop	{r4, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccr6h4Gk.s 			page 5


 229              	.L34:
 230 005e 0420     		movs	r0, #4
 231 0060 DAE7     		b	.L27
 232              		.size	disk_ioctl, .-disk_ioctl
 233 0062 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 234              		.align	2
 235              		.type	cpu_irq_critical_section_counter, %object
 236              		.size	cpu_irq_critical_section_counter, 4
 237              	cpu_irq_critical_section_counter:
 238 0000 00000000 		.space	4
 239              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 240              		.type	cpu_irq_prev_interrupt_state, %object
 241              		.size	cpu_irq_prev_interrupt_state, 1
 242              	cpu_irq_prev_interrupt_state:
 243 0000 00       		.space	1
 244              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
