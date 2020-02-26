ARM GAS  C:\Users\George\AppData\Local\Temp\ccGkh6JS.s 			page 1


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
  14              		.file	"diskio.c"
  15              		.section	.text.disk_initialize,"ax",%progbits
  16              		.align	2
  17              		.global	disk_initialize
  18              		.thumb
  19              		.thumb_func
  20              		.type	disk_initialize, %function
  21              	disk_initialize:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 0128     		cmp	r0, #1
  25 0002 10B5     		push	{r4, lr}
  26 0004 0446     		mov	r4, r0
  27 0006 01D9     		bls	.L2
  28              	.L5:
  29 0008 0120     		movs	r0, #1
  30 000a 10BD     		pop	{r4, pc}
  31              	.L2:
  32 000c FFF7FEFF 		bl	mem_test_unit_ready
  33 0010 0328     		cmp	r0, #3
  34 0012 02D1     		bne	.L4
  35 0014 2046     		mov	r0, r4
  36 0016 FFF7FEFF 		bl	mem_test_unit_ready
  37              	.L4:
  38 001a 0028     		cmp	r0, #0
  39 001c F4D1     		bne	.L5
  40 001e 2046     		mov	r0, r4
  41 0020 FFF7FEFF 		bl	mem_wr_protect
  42 0024 0028     		cmp	r0, #0
  43 0026 0CBF     		ite	eq
  44 0028 0020     		moveq	r0, #0
  45 002a 0420     		movne	r0, #4
  46 002c 10BD     		pop	{r4, pc}
  47              		.size	disk_initialize, .-disk_initialize
  48 002e 00BF     		.section	.text.disk_status,"ax",%progbits
  49              		.align	2
  50              		.global	disk_status
  51              		.thumb
  52              		.thumb_func
  53              		.type	disk_status, %function
  54              	disk_status:
  55              		@ args = 0, pretend = 0, frame = 0
  56              		@ frame_needed = 0, uses_anonymous_args = 0
  57 0000 08B5     		push	{r3, lr}
ARM GAS  C:\Users\George\AppData\Local\Temp\ccGkh6JS.s 			page 2


  58 0002 FFF7FEFF 		bl	mem_test_unit_ready
  59 0006 18B1     		cbz	r0, .L11
  60 0008 0228     		cmp	r0, #2
  61 000a 0CBF     		ite	eq
  62 000c 0320     		moveq	r0, #3
  63 000e 0120     		movne	r0, #1
  64              	.L11:
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
  84 0014 18B9     		cbnz	r0, .L17
  85 0016 0120     		movs	r0, #1
  86              	.L14:
  87 0018 02B0     		add	sp, sp, #8
  88              		@ sp needed
  89 001a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
  90              	.L17:
  91 001e 3846     		mov	r0, r7
  92 0020 01A9     		add	r1, sp, #4
  93 0022 FFF7FEFF 		bl	mem_read_capacity
  94 0026 019B     		ldr	r3, [sp, #4]
  95 0028 04FB0562 		mla	r2, r4, r5, r6
  96 002c 03FB0444 		mla	r4, r3, r4, r4
  97 0030 A242     		cmp	r2, r4
  98 0032 03D9     		bls	.L18
  99 0034 0420     		movs	r0, #4
 100 0036 02B0     		add	sp, sp, #8
 101              		@ sp needed
 102 0038 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 103              	.L18:
 104 003c 3846     		mov	r0, r7
 105 003e 3146     		mov	r1, r6
 106 0040 4246     		mov	r2, r8
 107 0042 2B46     		mov	r3, r5
 108 0044 FFF7FEFF 		bl	memory_2_ram
 109 0048 0030     		adds	r0, r0, #0
 110 004a 18BF     		it	ne
 111 004c 0120     		movne	r0, #1
 112 004e E3E7     		b	.L14
 113              		.size	disk_read, .-disk_read
 114              		.section	.text.disk_write,"ax",%progbits
ARM GAS  C:\Users\George\AppData\Local\Temp\ccGkh6JS.s 			page 3


 115              		.align	2
 116              		.global	disk_write
 117              		.thumb
 118              		.thumb_func
 119              		.type	disk_write, %function
 120              	disk_write:
 121              		@ args = 0, pretend = 0, frame = 8
 122              		@ frame_needed = 0, uses_anonymous_args = 0
 123 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 124 0004 82B0     		sub	sp, sp, #8
 125 0006 8846     		mov	r8, r1
 126 0008 1646     		mov	r6, r2
 127 000a 1D46     		mov	r5, r3
 128 000c 0746     		mov	r7, r0
 129 000e FFF7FEFF 		bl	mem_sector_size
 130 0012 0446     		mov	r4, r0
 131 0014 18B9     		cbnz	r0, .L23
 132 0016 0120     		movs	r0, #1
 133              	.L20:
 134 0018 02B0     		add	sp, sp, #8
 135              		@ sp needed
 136 001a BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 137              	.L23:
 138 001e 3846     		mov	r0, r7
 139 0020 01A9     		add	r1, sp, #4
 140 0022 FFF7FEFF 		bl	mem_read_capacity
 141 0026 019B     		ldr	r3, [sp, #4]
 142 0028 04FB0562 		mla	r2, r4, r5, r6
 143 002c 03FB0444 		mla	r4, r3, r4, r4
 144 0030 A242     		cmp	r2, r4
 145 0032 03D9     		bls	.L24
 146 0034 0420     		movs	r0, #4
 147 0036 02B0     		add	sp, sp, #8
 148              		@ sp needed
 149 0038 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 150              	.L24:
 151 003c 3846     		mov	r0, r7
 152 003e 3146     		mov	r1, r6
 153 0040 4246     		mov	r2, r8
 154 0042 2B46     		mov	r3, r5
 155 0044 FFF7FEFF 		bl	ram_2_memory
 156 0048 0030     		adds	r0, r0, #0
 157 004a 18BF     		it	ne
 158 004c 0120     		movne	r0, #1
 159 004e E3E7     		b	.L20
 160              		.size	disk_write, .-disk_write
 161              		.section	.text.disk_ioctl,"ax",%progbits
 162              		.align	2
 163              		.global	disk_ioctl
 164              		.thumb
 165              		.thumb_func
 166              		.type	disk_ioctl, %function
 167              	disk_ioctl:
 168              		@ args = 0, pretend = 0, frame = 8
 169              		@ frame_needed = 0, uses_anonymous_args = 0
 170 0000 10B5     		push	{r4, lr}
 171 0002 1446     		mov	r4, r2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccGkh6JS.s 			page 4


 172 0004 82B0     		sub	sp, sp, #8
 173 0006 0329     		cmp	r1, #3
 174 0008 29D8     		bhi	.L33
 175 000a DFE801F0 		tbb	[pc, r1]
 176              	.L28:
 177 000e 1C       		.byte	(.L27-.L28)/2
 178 000f 13       		.byte	(.L29-.L28)/2
 179 0010 07       		.byte	(.L30-.L28)/2
 180 0011 02       		.byte	(.L31-.L28)/2
 181              		.align	1
 182              	.L31:
 183 0012 0123     		movs	r3, #1
 184 0014 1360     		str	r3, [r2]
 185 0016 0020     		movs	r0, #0
 186              	.L26:
 187 0018 02B0     		add	sp, sp, #8
 188              		@ sp needed
 189 001a 10BD     		pop	{r4, pc}
 190              	.L30:
 191 001c FFF7FEFF 		bl	mem_sector_size
 192 0020 431E     		subs	r3, r0, #1
 193 0022 DBB2     		uxtb	r3, r3
 194 0024 012B     		cmp	r3, #1
 195 0026 16D9     		bls	.L32
 196 0028 0428     		cmp	r0, #4
 197 002a 14D0     		beq	.L32
 198 002c 0828     		cmp	r0, #8
 199 002e 12D0     		beq	.L32
 200 0030 0120     		movs	r0, #1
 201 0032 F1E7     		b	.L26
 202              	.L29:
 203 0034 01A9     		add	r1, sp, #4
 204 0036 FFF7FEFF 		bl	mem_read_capacity
 205 003a 019B     		ldr	r3, [sp, #4]
 206 003c 0020     		movs	r0, #0
 207 003e 0133     		adds	r3, r3, #1
 208 0040 2360     		str	r3, [r4]
 209 0042 02B0     		add	sp, sp, #8
 210              		@ sp needed
 211 0044 10BD     		pop	{r4, pc}
 212              	.L27:
 213 0046 FFF7FEFF 		bl	mem_test_unit_ready
 214 004a 0028     		cmp	r0, #0
 215 004c 14BF     		ite	ne
 216 004e 0320     		movne	r0, #3
 217 0050 0020     		moveq	r0, #0
 218 0052 02B0     		add	sp, sp, #8
 219              		@ sp needed
 220 0054 10BD     		pop	{r4, pc}
 221              	.L32:
 222 0056 0020     		movs	r0, #0
 223 0058 2070     		strb	r0, [r4]
 224 005a 02B0     		add	sp, sp, #8
 225              		@ sp needed
 226 005c 10BD     		pop	{r4, pc}
 227              	.L33:
 228 005e 0420     		movs	r0, #4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccGkh6JS.s 			page 5


 229 0060 DAE7     		b	.L26
 230              		.size	disk_ioctl, .-disk_ioctl
 231 0062 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 232              		.align	2
 233              		.type	cpu_irq_critical_section_counter, %object
 234              		.size	cpu_irq_critical_section_counter, 4
 235              	cpu_irq_critical_section_counter:
 236 0000 00000000 		.space	4
 237              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 238              		.type	cpu_irq_prev_interrupt_state, %object
 239              		.size	cpu_irq_prev_interrupt_state, 1
 240              	cpu_irq_prev_interrupt_state:
 241 0000 00       		.space	1
 242              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
