ARM GAS  C:\Users\George\AppData\Local\Temp\ccRRCr8j.s 			page 1


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
  14              		.file	"TemperatureError.cpp"
  15              		.section	.text._Z22TemperatureErrorString16TemperatureError,"ax",%progbits
  16              		.align	2
  17              		.global	_Z22TemperatureErrorString16TemperatureError
  18              		.thumb
  19              		.thumb_func
  20              		.type	_Z22TemperatureErrorString16TemperatureError, %function
  21              	_Z22TemperatureErrorString16TemperatureError:
  22              		@ args = 0, pretend = 0, frame = 0
  23              		@ frame_needed = 0, uses_anonymous_args = 0
  24              		@ link register save eliminated.
  25 0000 0B28     		cmp	r0, #11
  26 0002 9ABF     		itte	ls
  27 0004 024B     		ldrls	r3, .L4
  28 0006 53F82000 		ldrls	r0, [r3, r0, lsl #2]
  29 000a 0248     		ldrhi	r0, .L4+4
  30 000c 7047     		bx	lr
  31              	.L5:
  32 000e 00BF     		.align	2
  33              	.L4:
  34 0010 00000000 		.word	.LANCHOR0
  35 0014 00000000 		.word	.LC0
  36              		.size	_Z22TemperatureErrorString16TemperatureError, .-_Z22TemperatureErrorString16TemperatureError
  37              		.section	.rodata.str1.4,"aMS",%progbits,1
  38              		.align	2
  39              	.LC0:
  40 0000 756E6B6E 		.ascii	"unknown temperature sense error\000"
  40      6F776E20 
  40      74656D70 
  40      65726174 
  40      75726520 
  41              	.LC1:
  42 0020 73756363 		.ascii	"success\000"
  42      65737300 
  43              	.LC2:
  44 0028 73686F72 		.ascii	"short-circuit in sensor\000"
  44      742D6369 
  44      72637569 
  44      7420696E 
  44      2073656E 
  45              	.LC3:
  46 0040 73656E73 		.ascii	"sensor short to Vcc\000"
  46      6F722073 
  46      686F7274 
ARM GAS  C:\Users\George\AppData\Local\Temp\ccRRCr8j.s 			page 2


  46      20746F20 
  46      56636300 
  47              	.LC4:
  48 0054 73656E73 		.ascii	"sensor short to ground\000"
  48      6F722073 
  48      686F7274 
  48      20746F20 
  48      67726F75 
  49 006b 00       		.space	1
  50              	.LC5:
  51 006c 73656E73 		.ascii	"sensor open circuit\000"
  51      6F72206F 
  51      70656E20 
  51      63697263 
  51      75697400 
  52              	.LC6:
  53 0080 74656D70 		.ascii	"temperature above limit\000"
  53      65726174 
  53      75726520 
  53      61626F76 
  53      65206C69 
  54              	.LC7:
  55 0098 73656E73 		.ascii	"sensor timeout\000"
  55      6F722074 
  55      696D656F 
  55      757400
  56 00a7 00       		.space	1
  57              	.LC8:
  58 00a8 73656E73 		.ascii	"sensor I/O error\000"
  58      6F722049 
  58      2F4F2065 
  58      72726F72 
  58      00
  59 00b9 000000   		.space	3
  60              	.LC9:
  61 00bc 73656E73 		.ascii	"sensor hardware error\000"
  61      6F722068 
  61      61726477 
  61      61726520 
  61      6572726F 
  62 00d2 0000     		.space	2
  63              	.LC10:
  64 00d4 73656E73 		.ascii	"sensor bus busy\000"
  64      6F722062 
  64      75732062 
  64      75737900 
  65              	.LC11:
  66 00e4 62616420 		.ascii	"bad response from sensor\000"
  66      72657370 
  66      6F6E7365 
  66      2066726F 
  66      6D207365 
  67 00fd 000000   		.space	3
  68              	.LC12:
  69 0100 756E6B6E 		.ascii	"unknown temperature sensor channel\000"
  69      6F776E20 
  69      74656D70 
ARM GAS  C:\Users\George\AppData\Local\Temp\ccRRCr8j.s 			page 3


  69      65726174 
  69      75726520 
  70 0123 00       		.section	.rodata.CSWTCH.1,"a",%progbits
  71              		.align	2
  72              		.set	.LANCHOR0,. + 0
  73              		.type	CSWTCH.1, %object
  74              		.size	CSWTCH.1, 48
  75              	CSWTCH.1:
  76 0000 20000000 		.word	.LC1
  77 0004 28000000 		.word	.LC2
  78 0008 40000000 		.word	.LC3
  79 000c 54000000 		.word	.LC4
  80 0010 6C000000 		.word	.LC5
  81 0014 80000000 		.word	.LC6
  82 0018 98000000 		.word	.LC7
  83 001c A8000000 		.word	.LC8
  84 0020 BC000000 		.word	.LC9
  85 0024 D4000000 		.word	.LC10
  86 0028 E4000000 		.word	.LC11
  87 002c 00010000 		.word	.LC12
  88              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
