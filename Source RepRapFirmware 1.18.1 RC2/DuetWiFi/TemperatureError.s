ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccNZgOKH.s 			page 1


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
  15              		.file	"TemperatureError.cpp"
  16              		.section	.text._Z22TemperatureErrorString16TemperatureError,"ax",%progbits
  17              		.align	2
  18              		.global	_Z22TemperatureErrorString16TemperatureError
  19              		.thumb
  20              		.thumb_func
  21              		.type	_Z22TemperatureErrorString16TemperatureError, %function
  22              	_Z22TemperatureErrorString16TemperatureError:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25              		@ link register save eliminated.
  26 0000 0B28     		cmp	r0, #11
  27 0002 9ABF     		itte	ls
  28 0004 024B     		ldrls	r3, .L4
  29 0006 53F82000 		ldrls	r0, [r3, r0, lsl #2]
  30 000a 0248     		ldrhi	r0, .L4+4
  31 000c 7047     		bx	lr
  32              	.L5:
  33 000e 00BF     		.align	2
  34              	.L4:
  35 0010 00000000 		.word	.LANCHOR0
  36 0014 00000000 		.word	.LC0
  37              		.size	_Z22TemperatureErrorString16TemperatureError, .-_Z22TemperatureErrorString16TemperatureError
  38              		.section	.rodata.str1.4,"aMS",%progbits,1
  39              		.align	2
  40              	.LC0:
  41 0000 756E6B6E 		.ascii	"unknown temperature sense error\000"
  41      6F776E20 
  41      74656D70 
  41      65726174 
  41      75726520 
  42              	.LC1:
  43 0020 73756363 		.ascii	"success\000"
  43      65737300 
  44              	.LC2:
  45 0028 73686F72 		.ascii	"short-circuit in sensor\000"
  45      742D6369 
  45      72637569 
  45      7420696E 
  45      2073656E 
  46              	.LC3:
  47 0040 73656E73 		.ascii	"sensor short to Vcc\000"
  47      6F722073 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccNZgOKH.s 			page 2


  47      686F7274 
  47      20746F20 
  47      56636300 
  48              	.LC4:
  49 0054 73656E73 		.ascii	"sensor short to ground\000"
  49      6F722073 
  49      686F7274 
  49      20746F20 
  49      67726F75 
  50 006b 00       		.space	1
  51              	.LC5:
  52 006c 73656E73 		.ascii	"sensor open circuit\000"
  52      6F72206F 
  52      70656E20 
  52      63697263 
  52      75697400 
  53              	.LC6:
  54 0080 74656D70 		.ascii	"temperature above limit\000"
  54      65726174 
  54      75726520 
  54      61626F76 
  54      65206C69 
  55              	.LC7:
  56 0098 73656E73 		.ascii	"sensor timeout\000"
  56      6F722074 
  56      696D656F 
  56      757400
  57 00a7 00       		.space	1
  58              	.LC8:
  59 00a8 73656E73 		.ascii	"sensor I/O error\000"
  59      6F722049 
  59      2F4F2065 
  59      72726F72 
  59      00
  60 00b9 000000   		.space	3
  61              	.LC9:
  62 00bc 73656E73 		.ascii	"sensor hardware error\000"
  62      6F722068 
  62      61726477 
  62      61726520 
  62      6572726F 
  63 00d2 0000     		.space	2
  64              	.LC10:
  65 00d4 73656E73 		.ascii	"sensor bus busy\000"
  65      6F722062 
  65      75732062 
  65      75737900 
  66              	.LC11:
  67 00e4 62616420 		.ascii	"bad response from sensor\000"
  67      72657370 
  67      6F6E7365 
  67      2066726F 
  67      6D207365 
  68 00fd 000000   		.space	3
  69              	.LC12:
  70 0100 756E6B6E 		.ascii	"unknown temperature sensor channel\000"
  70      6F776E20 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccNZgOKH.s 			page 3


  70      74656D70 
  70      65726174 
  70      75726520 
  71 0123 00       		.section	.rodata.CSWTCH.1,"a",%progbits
  72              		.align	2
  73              		.set	.LANCHOR0,. + 0
  74              		.type	CSWTCH.1, %object
  75              		.size	CSWTCH.1, 48
  76              	CSWTCH.1:
  77 0000 20000000 		.word	.LC1
  78 0004 28000000 		.word	.LC2
  79 0008 40000000 		.word	.LC3
  80 000c 54000000 		.word	.LC4
  81 0010 6C000000 		.word	.LC5
  82 0014 80000000 		.word	.LC6
  83 0018 98000000 		.word	.LC7
  84 001c A8000000 		.word	.LC8
  85 0020 BC000000 		.word	.LC9
  86 0024 D4000000 		.word	.LC10
  87 0028 E4000000 		.word	.LC11
  88 002c 00010000 		.word	.LC12
  89              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
