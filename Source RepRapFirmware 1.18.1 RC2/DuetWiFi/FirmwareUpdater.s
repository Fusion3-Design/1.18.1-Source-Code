ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHFbOIk.s 			page 1


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
  15              		.file	"FirmwareUpdater.cpp"
  16              		.section	.text._ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEh,"ax",%progbits
  17              		.align	2
  18              		.global	_ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEh
  19              		.thumb
  20              		.thumb_func
  21              		.type	_ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEh, %function
  22              	_ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEh:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 0107     		lsls	r1, r0, #28
  26 0002 70B5     		push	{r4, r5, r6, lr}
  27 0004 0446     		mov	r4, r0
  28 0006 02D5     		bpl	.L2
  29 0008 10F0060F 		tst	r0, #6
  30 000c 2CD1     		bne	.L22
  31              	.L2:
  32 000e A207     		lsls	r2, r4, #30
  33 0010 04D4     		bmi	.L23
  34              	.L4:
  35 0012 6307     		lsls	r3, r4, #29
  36 0014 15D4     		bmi	.L24
  37              	.L6:
  38 0016 0125     		movs	r5, #1
  39 0018 2846     		mov	r0, r5
  40 001a 70BD     		pop	{r4, r5, r6, pc}
  41              	.L23:
  42 001c 174E     		ldr	r6, .L25
  43 001e 1849     		ldr	r1, .L25+4
  44 0020 3368     		ldr	r3, [r6]
  45 0022 184A     		ldr	r2, .L25+8
  46 0024 D3F83C08 		ldr	r0, [r3, #2108]
  47 0028 FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
  48 002c 0546     		mov	r5, r0
  49 002e 0028     		cmp	r0, #0
  50 0030 EFD1     		bne	.L4
  51 0032 3068     		ldr	r0, [r6]
  52 0034 144A     		ldr	r2, .L25+12
  53 0036 134B     		ldr	r3, .L25+8
  54 0038 0621     		movs	r1, #6
  55 003a FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
  56 003e 2846     		mov	r0, r5
  57 0040 70BD     		pop	{r4, r5, r6, pc}
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHFbOIk.s 			page 2


  58              	.L24:
  59 0042 0E4C     		ldr	r4, .L25
  60 0044 0E49     		ldr	r1, .L25+4
  61 0046 2368     		ldr	r3, [r4]
  62 0048 104A     		ldr	r2, .L25+16
  63 004a D3F83C08 		ldr	r0, [r3, #2108]
  64 004e FFF7FEFF 		bl	_ZNK11MassStorage10FileExistsEPKcS1_
  65 0052 0546     		mov	r5, r0
  66 0054 0028     		cmp	r0, #0
  67 0056 DED1     		bne	.L6
  68 0058 2068     		ldr	r0, [r4]
  69 005a 0B4A     		ldr	r2, .L25+12
  70 005c 0B4B     		ldr	r3, .L25+16
  71 005e 0621     		movs	r1, #6
  72 0060 FFF7FEFF 		bl	_ZN8Platform8MessageFE11MessageTypePKcz
  73 0064 2846     		mov	r0, r5
  74 0066 70BD     		pop	{r4, r5, r6, pc}
  75              	.L22:
  76 0068 044B     		ldr	r3, .L25
  77 006a 094A     		ldr	r2, .L25+20
  78 006c 1868     		ldr	r0, [r3]
  79 006e 0621     		movs	r1, #6
  80 0070 0025     		movs	r5, #0
  81 0072 FFF7FEFF 		bl	_ZN8Platform7MessageE11MessageTypePKc
  82 0076 2846     		mov	r0, r5
  83 0078 70BD     		pop	{r4, r5, r6, pc}
  84              	.L26:
  85 007a 00BF     		.align	2
  86              	.L25:
  87 007c 00000000 		.word	reprap
  88 0080 30000000 		.word	.LC1
  89 0084 38000000 		.word	.LC2
  90 0088 60000000 		.word	.LC4
  91 008c 4C000000 		.word	.LC3
  92 0090 00000000 		.word	.LC0
  93              		.size	_ZN15FirmwareUpdater32CheckFirmwareUpdatePrerequisitesEh, .-_ZN15FirmwareUpdater32CheckFirmw
  94              		.section	.text._ZN15FirmwareUpdater7IsReadyEv,"ax",%progbits
  95              		.align	2
  96              		.global	_ZN15FirmwareUpdater7IsReadyEv
  97              		.thumb
  98              		.thumb_func
  99              		.type	_ZN15FirmwareUpdater7IsReadyEv, %function
 100              	_ZN15FirmwareUpdater7IsReadyEv:
 101              		@ args = 0, pretend = 0, frame = 0
 102              		@ frame_needed = 0, uses_anonymous_args = 0
 103              		@ link register save eliminated.
 104 0000 024B     		ldr	r3, .L28
 105 0002 5B68     		ldr	r3, [r3, #4]
 106 0004 5868     		ldr	r0, [r3, #4]
 107 0006 FFF7FEBF 		b	_ZNK20WifiFirmwareUploader7IsReadyEv
 108              	.L29:
 109 000a 00BF     		.align	2
 110              	.L28:
 111 000c 00000000 		.word	reprap
 112              		.size	_ZN15FirmwareUpdater7IsReadyEv, .-_ZN15FirmwareUpdater7IsReadyEv
 113              		.section	.text._ZN15FirmwareUpdater12UpdateModuleEj,"ax",%progbits
 114              		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHFbOIk.s 			page 3


 115              		.global	_ZN15FirmwareUpdater12UpdateModuleEj
 116              		.thumb
 117              		.thumb_func
 118              		.type	_ZN15FirmwareUpdater12UpdateModuleEj, %function
 119              	_ZN15FirmwareUpdater12UpdateModuleEj:
 120              		@ args = 0, pretend = 0, frame = 0
 121              		@ frame_needed = 0, uses_anonymous_args = 0
 122              		@ link register save eliminated.
 123 0000 0228     		cmp	r0, #2
 124 0002 0FD0     		beq	.L32
 125 0004 0328     		cmp	r0, #3
 126 0006 0AD0     		beq	.L33
 127 0008 0128     		cmp	r0, #1
 128 000a 00D0     		beq	.L36
 129 000c 7047     		bx	lr
 130              	.L36:
 131 000e 0A4B     		ldr	r3, .L37
 132 0010 0A49     		ldr	r1, .L37+4
 133 0012 5B68     		ldr	r3, [r3, #4]
 134 0014 0A4A     		ldr	r2, .L37+8
 135 0016 5868     		ldr	r0, [r3, #4]
 136 0018 0023     		movs	r3, #0
 137 001a FFF7FEBF 		b	_ZN20WifiFirmwareUploader14SendUpdateFileEPKcS1_m
 138              	.L33:
 139 001e 0120     		movs	r0, #1
 140 0020 FFF7FEBF 		b	_ZN7Network18ResetWiFiForUploadEb
 141              	.L32:
 142 0024 044B     		ldr	r3, .L37
 143 0026 0749     		ldr	r1, .L37+12
 144 0028 5B68     		ldr	r3, [r3, #4]
 145 002a 054A     		ldr	r2, .L37+8
 146 002c 5868     		ldr	r0, [r3, #4]
 147 002e 4FF48013 		mov	r3, #1048576
 148 0032 FFF7FEBF 		b	_ZN20WifiFirmwareUploader14SendUpdateFileEPKcS1_m
 149              	.L38:
 150 0036 00BF     		.align	2
 151              	.L37:
 152 0038 00000000 		.word	reprap
 153 003c 38000000 		.word	.LC2
 154 0040 30000000 		.word	.LC1
 155 0044 4C000000 		.word	.LC3
 156              		.size	_ZN15FirmwareUpdater12UpdateModuleEj, .-_ZN15FirmwareUpdater12UpdateModuleEj
 157              		.section	.rodata.str1.4,"aMS",%progbits,1
 158              		.align	2
 159              	.LC0:
 160 0000 496E7661 		.ascii	"Invalid combination of firmware update modules\012\000"
 160      6C696420 
 160      636F6D62 
 160      696E6174 
 160      696F6E20 
 161              	.LC1:
 162 0030 303A2F73 		.ascii	"0:/sys/\000"
 162      79732F00 
 163              	.LC2:
 164 0038 44756574 		.ascii	"DuetWiFiServer.bin\000"
 164      57694669 
 164      53657276 
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccHFbOIk.s 			page 4


 164      65722E62 
 164      696E00
 165 004b 00       		.space	1
 166              	.LC3:
 167 004c 44756574 		.ascii	"DuetWebControl.bin\000"
 167      57656243 
 167      6F6E7472 
 167      6F6C2E62 
 167      696E00
 168 005f 00       		.space	1
 169              	.LC4:
 170 0060 46696C65 		.ascii	"File %s not found\012\000"
 170      20257320 
 170      6E6F7420 
 170      666F756E 
 170      640A00
 171 0073 00       		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 172              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 173              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 174              	_ZL28cpu_irq_prev_interrupt_state:
 175 0000 00       		.space	1
 176              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 177              		.align	2
 178              		.type	_ZL32cpu_irq_critical_section_counter, %object
 179              		.size	_ZL32cpu_irq_critical_section_counter, 4
 180              	_ZL32cpu_irq_critical_section_counter:
 181 0000 00000000 		.space	4
 182              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
