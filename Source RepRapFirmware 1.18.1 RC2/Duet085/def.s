ARM GAS  C:\Users\George\AppData\Local\Temp\cc1eArvf.s 			page 1


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
  14              		.file	"def.c"
  15              		.section	.text.lwip_htons,"ax",%progbits
  16              		.align	2
  17              		.global	lwip_htons
  18              		.thumb
  19              		.thumb_func
  20              		.type	lwip_htons, %function
  21              	lwip_htons:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 40BA     		rev16	r0, r0
  26 0002 80B2     		uxth	r0, r0
  27 0004 7047     		bx	lr
  28              		.size	lwip_htons, .-lwip_htons
  29 0006 00BF     		.section	.text.lwip_ntohs,"ax",%progbits
  30              		.align	2
  31              		.global	lwip_ntohs
  32              		.thumb
  33              		.thumb_func
  34              		.type	lwip_ntohs, %function
  35              	lwip_ntohs:
  36              		@ args = 0, pretend = 0, frame = 0
  37              		@ frame_needed = 0, uses_anonymous_args = 0
  38              		@ link register save eliminated.
  39 0000 40BA     		rev16	r0, r0
  40 0002 80B2     		uxth	r0, r0
  41 0004 7047     		bx	lr
  42              		.size	lwip_ntohs, .-lwip_ntohs
  43 0006 00BF     		.section	.text.lwip_htonl,"ax",%progbits
  44              		.align	2
  45              		.global	lwip_htonl
  46              		.thumb
  47              		.thumb_func
  48              		.type	lwip_htonl, %function
  49              	lwip_htonl:
  50              		@ args = 0, pretend = 0, frame = 0
  51              		@ frame_needed = 0, uses_anonymous_args = 0
  52              		@ link register save eliminated.
  53 0000 00BA     		rev	r0, r0
  54 0002 7047     		bx	lr
  55              		.size	lwip_htonl, .-lwip_htonl
  56              		.section	.text.lwip_ntohl,"ax",%progbits
  57              		.align	2
ARM GAS  C:\Users\George\AppData\Local\Temp\cc1eArvf.s 			page 2


  58              		.global	lwip_ntohl
  59              		.thumb
  60              		.thumb_func
  61              		.type	lwip_ntohl, %function
  62              	lwip_ntohl:
  63              		@ args = 0, pretend = 0, frame = 0
  64              		@ frame_needed = 0, uses_anonymous_args = 0
  65              		@ link register save eliminated.
  66 0000 00BA     		rev	r0, r0
  67 0002 7047     		bx	lr
  68              		.size	lwip_ntohl, .-lwip_ntohl
  69              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
