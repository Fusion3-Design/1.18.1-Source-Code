ARM GAS  C:\Users\George\AppData\Local\Temp\ccXaf0nk.s 			page 1


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
  14              		.file	"ethernet_sam.c"
  15              		.section	.text.ethernet_timers_update,"ax",%progbits
  16              		.align	2
  17              		.global	ethernet_timers_update
  18              		.thumb
  19              		.thumb_func
  20              		.type	ethernet_timers_update, %function
  21              	ethernet_timers_update:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 70B5     		push	{r4, r5, r6, lr}
  25 0002 FFF7FEFF 		bl	millis
  26 0006 0F4B     		ldr	r3, .L11
  27 0008 1D68     		ldr	r5, [r3]
  28 000a 451B     		subs	r5, r0, r5
  29 000c 19D0     		beq	.L1
  30 000e 0E4C     		ldr	r4, .L11+4
  31 0010 1860     		str	r0, [r3]
  32 0012 04F13C06 		add	r6, r4, #60
  33              	.L6:
  34 0016 54F8083C 		ldr	r3, [r4, #-8]
  35 001a 54F8042C 		ldr	r2, [r4, #-4]
  36 001e 2B44     		add	r3, r3, r5
  37 0020 9342     		cmp	r3, r2
  38 0022 44F8083C 		str	r3, [r4, #-8]
  39 0026 09D9     		bls	.L3
  40 0028 2168     		ldr	r1, [r4]
  41 002a 21B1     		cbz	r1, .L4
  42 002c 8847     		blx	r1
  43 002e 54F8083C 		ldr	r3, [r4, #-8]
  44 0032 54F8042C 		ldr	r2, [r4, #-4]
  45              	.L4:
  46 0036 9B1A     		subs	r3, r3, r2
  47 0038 44F8083C 		str	r3, [r4, #-8]
  48              	.L3:
  49 003c 0C34     		adds	r4, r4, #12
  50 003e B442     		cmp	r4, r6
  51 0040 E9D1     		bne	.L6
  52              	.L1:
  53 0042 70BD     		pop	{r4, r5, r6, pc}
  54              	.L12:
  55              		.align	2
  56              	.L11:
  57 0044 00000000 		.word	.LANCHOR0
ARM GAS  C:\Users\George\AppData\Local\Temp\ccXaf0nk.s 			page 2


  58 0048 08000000 		.word	.LANCHOR1+8
  59              		.size	ethernet_timers_update, .-ethernet_timers_update
  60              		.section	.text.start_ethernet,"ax",%progbits
  61              		.align	2
  62              		.global	start_ethernet
  63              		.thumb
  64              		.thumb_func
  65              		.type	start_ethernet, %function
  66              	start_ethernet:
  67              		@ args = 0, pretend = 0, frame = 16
  68              		@ frame_needed = 0, uses_anonymous_args = 0
  69 0000 F0B5     		push	{r4, r5, r6, r7, lr}
  70 0002 8678     		ldrb	r6, [r0, #2]	@ zero_extendqisi2
  71 0004 C478     		ldrb	r4, [r0, #3]	@ zero_extendqisi2
  72 0006 3604     		lsls	r6, r6, #16
  73 0008 0578     		ldrb	r5, [r0]	@ zero_extendqisi2
  74 000a 46EA0466 		orr	r6, r6, r4, lsl #24
  75 000e 4478     		ldrb	r4, [r0, #1]	@ zero_extendqisi2
  76 0010 46EA0500 		orr	r0, r6, r5
  77 0014 40EA0420 		orr	r0, r0, r4, lsl #8
  78 0018 89B0     		sub	sp, sp, #36
  79 001a 1C46     		mov	r4, r3
  80 001c 0590     		str	r0, [sp, #20]
  81 001e D8B9     		cbnz	r0, .L14
  82 0020 0690     		str	r0, [sp, #24]
  83 0022 0790     		str	r0, [sp, #28]
  84              	.L15:
  85 0024 1B49     		ldr	r1, .L19
  86 0026 1C4A     		ldr	r2, .L19+4
  87 0028 0023     		movs	r3, #0
  88 002a 0191     		str	r1, [sp, #4]
  89 002c 0292     		str	r2, [sp, #8]
  90 002e 05A9     		add	r1, sp, #20
  91 0030 06AA     		add	r2, sp, #24
  92 0032 0093     		str	r3, [sp]
  93 0034 1948     		ldr	r0, .L19+8
  94 0036 07AB     		add	r3, sp, #28
  95 0038 FFF7FEFF 		bl	netif_add
  96 003c 1748     		ldr	r0, .L19+8
  97 003e FFF7FEFF 		bl	netif_set_default
  98 0042 1648     		ldr	r0, .L19+8
  99 0044 2146     		mov	r1, r4
 100 0046 FFF7FEFF 		bl	netif_set_status_callback
 101 004a 059B     		ldr	r3, [sp, #20]
 102 004c 1348     		ldr	r0, .L19+8
 103 004e E3B1     		cbz	r3, .L18
 104 0050 FFF7FEFF 		bl	netif_set_up
 105 0054 09B0     		add	sp, sp, #36
 106              		@ sp needed
 107 0056 F0BD     		pop	{r4, r5, r6, r7, pc}
 108              	.L14:
 109 0058 8F78     		ldrb	r7, [r1, #2]	@ zero_extendqisi2
 110 005a 9378     		ldrb	r3, [r2, #2]	@ zero_extendqisi2
 111 005c C878     		ldrb	r0, [r1, #3]	@ zero_extendqisi2
 112 005e 92F803E0 		ldrb	lr, [r2, #3]	@ zero_extendqisi2
 113 0062 0E78     		ldrb	r6, [r1]	@ zero_extendqisi2
 114 0064 1578     		ldrb	r5, [r2]	@ zero_extendqisi2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccXaf0nk.s 			page 3


 115 0066 3F04     		lsls	r7, r7, #16
 116 0068 1B04     		lsls	r3, r3, #16
 117 006a 47EA0067 		orr	r7, r7, r0, lsl #24
 118 006e 43EA0E63 		orr	r3, r3, lr, lsl #24
 119 0072 4878     		ldrb	r0, [r1, #1]	@ zero_extendqisi2
 120 0074 5178     		ldrb	r1, [r2, #1]	@ zero_extendqisi2
 121 0076 2B43     		orrs	r3, r3, r5
 122 0078 47EA0602 		orr	r2, r7, r6
 123 007c 42EA0022 		orr	r2, r2, r0, lsl #8
 124 0080 43EA0123 		orr	r3, r3, r1, lsl #8
 125 0084 0692     		str	r2, [sp, #24]
 126 0086 0793     		str	r3, [sp, #28]
 127 0088 CCE7     		b	.L15
 128              	.L18:
 129 008a FFF7FEFF 		bl	dhcp_start
 130 008e 09B0     		add	sp, sp, #36
 131              		@ sp needed
 132 0090 F0BD     		pop	{r4, r5, r6, r7, pc}
 133              	.L20:
 134 0092 00BF     		.align	2
 135              	.L19:
 136 0094 00000000 		.word	ethernetif_init
 137 0098 00000000 		.word	ethernet_input
 138 009c 00000000 		.word	gs_net_if
 139              		.size	start_ethernet, .-start_ethernet
 140              		.section	.text.ethernet_set_configuration,"ax",%progbits
 141              		.align	2
 142              		.global	ethernet_set_configuration
 143              		.thumb
 144              		.thumb_func
 145              		.type	ethernet_set_configuration, %function
 146              	ethernet_set_configuration:
 147              		@ args = 0, pretend = 0, frame = 16
 148              		@ frame_needed = 0, uses_anonymous_args = 0
 149 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 150 0004 264B     		ldr	r3, .L30
 151 0006 0446     		mov	r4, r0
 152 0008 93F83500 		ldrb	r0, [r3, #53]	@ zero_extendqisi2
 153 000c 1646     		mov	r6, r2
 154 000e 0207     		lsls	r2, r0, #28
 155 0010 85B0     		sub	sp, sp, #20
 156 0012 0D46     		mov	r5, r1
 157 0014 3FD4     		bmi	.L28
 158              	.L22:
 159 0016 A378     		ldrb	r3, [r4, #2]	@ zero_extendqisi2
 160 0018 A978     		ldrb	r1, [r5, #2]	@ zero_extendqisi2
 161 001a B278     		ldrb	r2, [r6, #2]	@ zero_extendqisi2
 162 001c E778     		ldrb	r7, [r4, #3]	@ zero_extendqisi2
 163 001e F078     		ldrb	r0, [r6, #3]	@ zero_extendqisi2
 164 0020 95F80390 		ldrb	r9, [r5, #3]	@ zero_extendqisi2
 165 0024 94F80080 		ldrb	r8, [r4]	@ zero_extendqisi2
 166 0028 1B04     		lsls	r3, r3, #16
 167 002a 0904     		lsls	r1, r1, #16
 168 002c 95F800C0 		ldrb	ip, [r5]	@ zero_extendqisi2
 169 0030 1204     		lsls	r2, r2, #16
 170 0032 96F800E0 		ldrb	lr, [r6]	@ zero_extendqisi2
 171 0036 43EA0763 		orr	r3, r3, r7, lsl #24
ARM GAS  C:\Users\George\AppData\Local\Temp\ccXaf0nk.s 			page 4


 172 003a 42EA0062 		orr	r2, r2, r0, lsl #24
 173 003e 6778     		ldrb	r7, [r4, #1]	@ zero_extendqisi2
 174 0040 7078     		ldrb	r0, [r6, #1]	@ zero_extendqisi2
 175 0042 41EA0961 		orr	r1, r1, r9, lsl #24
 176 0046 6C78     		ldrb	r4, [r5, #1]	@ zero_extendqisi2
 177 0048 43EA0803 		orr	r3, r3, r8
 178 004c 41EA0C01 		orr	r1, r1, ip
 179 0050 42EA0E02 		orr	r2, r2, lr
 180 0054 42EA0022 		orr	r2, r2, r0, lsl #8
 181 0058 43EA0723 		orr	r3, r3, r7, lsl #8
 182 005c 41EA0421 		orr	r1, r1, r4, lsl #8
 183 0060 0193     		str	r3, [sp, #4]
 184 0062 0291     		str	r1, [sp, #8]
 185 0064 0392     		str	r2, [sp, #12]
 186 0066 0E48     		ldr	r0, .L30
 187 0068 83B1     		cbz	r3, .L29
 188 006a 01A9     		add	r1, sp, #4
 189 006c FFF7FEFF 		bl	netif_set_ipaddr
 190 0070 02A9     		add	r1, sp, #8
 191 0072 0B48     		ldr	r0, .L30
 192 0074 FFF7FEFF 		bl	netif_set_netmask
 193 0078 03A9     		add	r1, sp, #12
 194 007a 0948     		ldr	r0, .L30
 195 007c FFF7FEFF 		bl	netif_set_gw
 196 0080 0748     		ldr	r0, .L30
 197 0082 FFF7FEFF 		bl	netif_set_up
 198 0086 05B0     		add	sp, sp, #20
 199              		@ sp needed
 200 0088 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 201              	.L29:
 202 008c FFF7FEFF 		bl	dhcp_start
 203 0090 05B0     		add	sp, sp, #20
 204              		@ sp needed
 205 0092 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 206              	.L28:
 207 0096 1846     		mov	r0, r3
 208 0098 FFF7FEFF 		bl	dhcp_stop
 209 009c BBE7     		b	.L22
 210              	.L31:
 211 009e 00BF     		.align	2
 212              	.L30:
 213 00a0 00000000 		.word	gs_net_if
 214              		.size	ethernet_set_configuration, .-ethernet_set_configuration
 215              		.section	.text.init_ethernet,"ax",%progbits
 216              		.align	2
 217              		.global	init_ethernet
 218              		.thumb
 219              		.thumb_func
 220              		.type	init_ethernet, %function
 221              	init_ethernet:
 222              		@ args = 0, pretend = 0, frame = 0
 223              		@ frame_needed = 0, uses_anonymous_args = 0
 224 0000 08B5     		push	{r3, lr}
 225 0002 FFF7FEFF 		bl	ethernetif_hardware_init
 226 0006 BDE80840 		pop	{r3, lr}
 227 000a FFF7FEBF 		b	lwip_init
 228              		.size	init_ethernet, .-init_ethernet
ARM GAS  C:\Users\George\AppData\Local\Temp\ccXaf0nk.s 			page 5


 229 000e 00BF     		.section	.text.ethernet_configure_interface,"ax",%progbits
 230              		.align	2
 231              		.global	ethernet_configure_interface
 232              		.thumb
 233              		.thumb_func
 234              		.type	ethernet_configure_interface, %function
 235              	ethernet_configure_interface:
 236              		@ args = 0, pretend = 0, frame = 0
 237              		@ frame_needed = 0, uses_anonymous_args = 0
 238 0000 10B5     		push	{r4, lr}
 239 0002 0C46     		mov	r4, r1
 240 0004 FFF7FEFF 		bl	ethernetif_set_mac_address
 241 0008 014B     		ldr	r3, .L34
 242 000a 9C62     		str	r4, [r3, #40]
 243 000c 10BD     		pop	{r4, pc}
 244              	.L35:
 245 000e 00BF     		.align	2
 246              	.L34:
 247 0010 00000000 		.word	gs_net_if
 248              		.size	ethernet_configure_interface, .-ethernet_configure_interface
 249              		.section	.text.ethernet_establish_link,"ax",%progbits
 250              		.align	2
 251              		.global	ethernet_establish_link
 252              		.thumb
 253              		.thumb_func
 254              		.type	ethernet_establish_link, %function
 255              	ethernet_establish_link:
 256              		@ args = 0, pretend = 0, frame = 0
 257              		@ frame_needed = 0, uses_anonymous_args = 0
 258              		@ link register save eliminated.
 259 0000 FFF7FEBF 		b	ethernetif_establish_link
 260              		.size	ethernet_establish_link, .-ethernet_establish_link
 261              		.section	.text.ethernet_link_established,"ax",%progbits
 262              		.align	2
 263              		.global	ethernet_link_established
 264              		.thumb
 265              		.thumb_func
 266              		.type	ethernet_link_established, %function
 267              	ethernet_link_established:
 268              		@ args = 0, pretend = 0, frame = 0
 269              		@ frame_needed = 0, uses_anonymous_args = 0
 270 0000 10B5     		push	{r4, lr}
 271 0002 FFF7FEFF 		bl	ethernetif_link_established
 272 0006 0446     		mov	r4, r0
 273 0008 10B9     		cbnz	r0, .L38
 274 000a 0248     		ldr	r0, .L39
 275 000c FFF7FEFF 		bl	netif_set_down
 276              	.L38:
 277 0010 2046     		mov	r0, r4
 278 0012 10BD     		pop	{r4, pc}
 279              	.L40:
 280              		.align	2
 281              	.L39:
 282 0014 00000000 		.word	gs_net_if
 283              		.size	ethernet_link_established, .-ethernet_link_established
 284              		.section	.text.ethernet_task,"ax",%progbits
 285              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\ccXaf0nk.s 			page 6


 286              		.global	ethernet_task
 287              		.thumb
 288              		.thumb_func
 289              		.type	ethernet_task, %function
 290              	ethernet_task:
 291              		@ args = 0, pretend = 0, frame = 0
 292              		@ frame_needed = 0, uses_anonymous_args = 0
 293 0000 08B5     		push	{r3, lr}
 294              	.L43:
 295 0002 0448     		ldr	r0, .L44
 296 0004 FFF7FEFF 		bl	ethernetif_input
 297 0008 0028     		cmp	r0, #0
 298 000a FAD1     		bne	.L43
 299 000c BDE80840 		pop	{r3, lr}
 300 0010 FFF7FEBF 		b	ethernet_timers_update
 301              	.L45:
 302              		.align	2
 303              	.L44:
 304 0014 00000000 		.word	gs_net_if
 305              		.size	ethernet_task, .-ethernet_task
 306              		.section	.text.ethernet_set_rx_callback,"ax",%progbits
 307              		.align	2
 308              		.global	ethernet_set_rx_callback
 309              		.thumb
 310              		.thumb_func
 311              		.type	ethernet_set_rx_callback, %function
 312              	ethernet_set_rx_callback:
 313              		@ args = 0, pretend = 0, frame = 0
 314              		@ frame_needed = 0, uses_anonymous_args = 0
 315              		@ link register save eliminated.
 316 0000 FFF7FEBF 		b	ethernetif_set_rx_callback
 317              		.size	ethernet_set_rx_callback, .-ethernet_set_rx_callback
 318              		.section	.text.ethernet_get_ipaddress,"ax",%progbits
 319              		.align	2
 320              		.global	ethernet_get_ipaddress
 321              		.thumb
 322              		.thumb_func
 323              		.type	ethernet_get_ipaddress, %function
 324              	ethernet_get_ipaddress:
 325              		@ args = 0, pretend = 0, frame = 0
 326              		@ frame_needed = 0, uses_anonymous_args = 0
 327              		@ link register save eliminated.
 328 0000 0048     		ldr	r0, .L48
 329 0002 7047     		bx	lr
 330              	.L49:
 331              		.align	2
 332              	.L48:
 333 0004 04000000 		.word	gs_net_if+4
 334              		.size	ethernet_get_ipaddress, .-ethernet_get_ipaddress
 335              		.comm	gs_net_if,64,4
 336              		.section	.bss.ul_last_time.10296,"aw",%nobits
 337              		.align	2
 338              		.set	.LANCHOR0,. + 0
 339              		.type	ul_last_time.10296, %object
 340              		.size	ul_last_time.10296, 4
 341              	ul_last_time.10296:
 342 0000 00000000 		.space	4
ARM GAS  C:\Users\George\AppData\Local\Temp\ccXaf0nk.s 			page 7


 343              		.section	.data.gs_timers_table,"aw",%progbits
 344              		.align	2
 345              		.set	.LANCHOR1,. + 0
 346              		.type	gs_timers_table, %object
 347              		.size	gs_timers_table, 60
 348              	gs_timers_table:
 349 0000 00000000 		.word	0
 350 0004 7D000000 		.word	125
 351 0008 00000000 		.word	tcp_tmr
 352 000c 00000000 		.word	0
 353 0010 E8030000 		.word	1000
 354 0014 00000000 		.word	ip_reass_tmr
 355 0018 00000000 		.word	0
 356 001c 88130000 		.word	5000
 357 0020 00000000 		.word	etharp_tmr
 358 0024 00000000 		.word	0
 359 0028 3C000000 		.word	60
 360 002c 00000000 		.word	dhcp_coarse_tmr
 361 0030 00000000 		.word	0
 362 0034 F4010000 		.word	500
 363 0038 00000000 		.word	dhcp_fine_tmr
 364              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 365              		.align	2
 366              		.type	cpu_irq_critical_section_counter, %object
 367              		.size	cpu_irq_critical_section_counter, 4
 368              	cpu_irq_critical_section_counter:
 369 0000 00000000 		.space	4
 370              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 371              		.type	cpu_irq_prev_interrupt_state, %object
 372              		.size	cpu_irq_prev_interrupt_state, 1
 373              	cpu_irq_prev_interrupt_state:
 374 0000 00       		.space	1
 375              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
