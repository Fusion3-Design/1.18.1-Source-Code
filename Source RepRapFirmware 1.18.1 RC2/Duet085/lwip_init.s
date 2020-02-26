ARM GAS  C:\Users\George\AppData\Local\Temp\ccrH9MMH.s 			page 1


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
  14              		.file	"lwip_init.c"
  15              		.section	.text.lwip_init,"ax",%progbits
  16              		.align	2
  17              		.global	lwip_init
  18              		.thumb
  19              		.thumb_func
  20              		.type	lwip_init, %function
  21              	lwip_init:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24 0000 08B5     		push	{r3, lr}
  25 0002 FFF7FEFF 		bl	stats_init
  26 0006 FFF7FEFF 		bl	mem_init
  27 000a FFF7FEFF 		bl	memp_init
  28 000e FFF7FEFF 		bl	netif_init
  29 0012 FFF7FEFF 		bl	udp_init
  30 0016 FFF7FEFF 		bl	tcp_init
  31 001a FFF7FEFF 		bl	igmp_init
  32 001e FFF7FEFF 		bl	dns_init
  33 0022 BDE80840 		pop	{r3, lr}
  34 0026 FFF7FEBF 		b	sys_timeouts_init
  35              		.size	lwip_init, .-lwip_init
  36 002a 00BF     		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
