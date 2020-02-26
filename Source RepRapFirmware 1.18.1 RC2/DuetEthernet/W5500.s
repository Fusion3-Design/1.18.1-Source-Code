ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccipaixl.s 			page 1


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
  15              		.file	"w5500.cpp"
  16              		.section	.text._Z12WIZCHIP_READm,"ax",%progbits
  17              		.align	2
  18              		.global	_Z12WIZCHIP_READm
  19              		.thumb
  20              		.thumb_func
  21              		.type	_Z12WIZCHIP_READm, %function
  22              	_Z12WIZCHIP_READm:
  23              		@ args = 0, pretend = 0, frame = 0
  24              		@ frame_needed = 0, uses_anonymous_args = 0
  25 0000 10B5     		push	{r4, lr}
  26 0002 0446     		mov	r4, r0
  27 0004 FFF7FEFF 		bl	_ZN6WizSpi8AssertSSEv
  28 0008 2046     		mov	r0, r4
  29 000a FFF7FEFF 		bl	_ZN6WizSpi11SendAddressEm
  30 000e FFF7FEFF 		bl	_ZN6WizSpi8ReadByteEv
  31 0012 0446     		mov	r4, r0
  32 0014 FFF7FEFF 		bl	_ZN6WizSpi9ReleaseSSEv
  33 0018 2046     		mov	r0, r4
  34 001a 10BD     		pop	{r4, pc}
  35              		.size	_Z12WIZCHIP_READm, .-_Z12WIZCHIP_READm
  36              		.section	.text._Z13WIZCHIP_WRITEmh,"ax",%progbits
  37              		.align	2
  38              		.global	_Z13WIZCHIP_WRITEmh
  39              		.thumb
  40              		.thumb_func
  41              		.type	_Z13WIZCHIP_WRITEmh, %function
  42              	_Z13WIZCHIP_WRITEmh:
  43              		@ args = 0, pretend = 0, frame = 0
  44              		@ frame_needed = 0, uses_anonymous_args = 0
  45 0000 38B5     		push	{r3, r4, r5, lr}
  46 0002 0546     		mov	r5, r0
  47 0004 0C46     		mov	r4, r1
  48 0006 FFF7FEFF 		bl	_ZN6WizSpi8AssertSSEv
  49 000a 45F00400 		orr	r0, r5, #4
  50 000e FFF7FEFF 		bl	_ZN6WizSpi11SendAddressEm
  51 0012 2046     		mov	r0, r4
  52 0014 FFF7FEFF 		bl	_ZN6WizSpi9WriteByteEh
  53 0018 BDE83840 		pop	{r3, r4, r5, lr}
  54 001c FFF7FEBF 		b	_ZN6WizSpi9ReleaseSSEv
  55              		.size	_Z13WIZCHIP_WRITEmh, .-_Z13WIZCHIP_WRITEmh
  56              		.section	.text._Z16WIZCHIP_READ_BUFmPht,"ax",%progbits
  57              		.align	2
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccipaixl.s 			page 2


  58              		.global	_Z16WIZCHIP_READ_BUFmPht
  59              		.thumb
  60              		.thumb_func
  61              		.type	_Z16WIZCHIP_READ_BUFmPht, %function
  62              	_Z16WIZCHIP_READ_BUFmPht:
  63              		@ args = 0, pretend = 0, frame = 0
  64              		@ frame_needed = 0, uses_anonymous_args = 0
  65 0000 70B5     		push	{r4, r5, r6, lr}
  66 0002 0546     		mov	r5, r0
  67 0004 0C46     		mov	r4, r1
  68 0006 1646     		mov	r6, r2
  69 0008 FFF7FEFF 		bl	_ZN6WizSpi8AssertSSEv
  70 000c 2846     		mov	r0, r5
  71 000e FFF7FEFF 		bl	_ZN6WizSpi11SendAddressEm
  72 0012 2046     		mov	r0, r4
  73 0014 3146     		mov	r1, r6
  74 0016 FFF7FEFF 		bl	_ZN6WizSpi9ReadBurstEPhj
  75 001a BDE87040 		pop	{r4, r5, r6, lr}
  76 001e FFF7FEBF 		b	_ZN6WizSpi9ReleaseSSEv
  77              		.size	_Z16WIZCHIP_READ_BUFmPht, .-_Z16WIZCHIP_READ_BUFmPht
  78 0022 00BF     		.section	.text._Z17WIZCHIP_WRITE_BUFmPKht,"ax",%progbits
  79              		.align	2
  80              		.global	_Z17WIZCHIP_WRITE_BUFmPKht
  81              		.thumb
  82              		.thumb_func
  83              		.type	_Z17WIZCHIP_WRITE_BUFmPKht, %function
  84              	_Z17WIZCHIP_WRITE_BUFmPKht:
  85              		@ args = 0, pretend = 0, frame = 0
  86              		@ frame_needed = 0, uses_anonymous_args = 0
  87 0000 70B5     		push	{r4, r5, r6, lr}
  88 0002 0546     		mov	r5, r0
  89 0004 0C46     		mov	r4, r1
  90 0006 1646     		mov	r6, r2
  91 0008 FFF7FEFF 		bl	_ZN6WizSpi8AssertSSEv
  92 000c 45F00400 		orr	r0, r5, #4
  93 0010 FFF7FEFF 		bl	_ZN6WizSpi11SendAddressEm
  94 0014 2046     		mov	r0, r4
  95 0016 3146     		mov	r1, r6
  96 0018 FFF7FEFF 		bl	_ZN6WizSpi9SendBurstEPKhj
  97 001c BDE87040 		pop	{r4, r5, r6, lr}
  98 0020 FFF7FEBF 		b	_ZN6WizSpi9ReleaseSSEv
  99              		.size	_Z17WIZCHIP_WRITE_BUFmPKht, .-_Z17WIZCHIP_WRITE_BUFmPKht
 100              		.section	.text._Z12getSn_TX_FSRh,"ax",%progbits
 101              		.align	2
 102              		.global	_Z12getSn_TX_FSRh
 103              		.thumb
 104              		.thumb_func
 105              		.type	_Z12getSn_TX_FSRh, %function
 106              	_Z12getSn_TX_FSRh:
 107              		@ args = 0, pretend = 0, frame = 0
 108              		@ frame_needed = 0, uses_anonymous_args = 0
 109 0000 4001     		lsls	r0, r0, #5
 110 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 111 0004 00F10806 		add	r6, r0, #8
 112 0008 06F50057 		add	r7, r6, #8192
 113 000c 0025     		movs	r5, #0
 114 000e 06F50456 		add	r6, r6, #8448
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccipaixl.s 			page 3


 115 0012 01E0     		b	.L8
 116              	.L6:
 117 0014 A542     		cmp	r5, r4
 118 0016 17D0     		beq	.L13
 119              	.L8:
 120 0018 3846     		mov	r0, r7
 121 001a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 122 001e 0402     		lsls	r4, r0, #8
 123 0020 3046     		mov	r0, r6
 124 0022 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 125 0026 A4B2     		uxth	r4, r4
 126 0028 2044     		add	r0, r0, r4
 127 002a 84B2     		uxth	r4, r0
 128 002c 002C     		cmp	r4, #0
 129 002e F1D0     		beq	.L6
 130 0030 3846     		mov	r0, r7
 131 0032 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 132 0036 0502     		lsls	r5, r0, #8
 133 0038 3046     		mov	r0, r6
 134 003a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 135 003e ADB2     		uxth	r5, r5
 136 0040 2844     		add	r0, r0, r5
 137 0042 85B2     		uxth	r5, r0
 138 0044 A542     		cmp	r5, r4
 139 0046 E7D1     		bne	.L8
 140              	.L13:
 141 0048 2846     		mov	r0, r5
 142 004a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 143              		.size	_Z12getSn_TX_FSRh, .-_Z12getSn_TX_FSRh
 144              		.section	.text._Z12getSn_RX_RSRh,"ax",%progbits
 145              		.align	2
 146              		.global	_Z12getSn_RX_RSRh
 147              		.thumb
 148              		.thumb_func
 149              		.type	_Z12getSn_RX_RSRh, %function
 150              	_Z12getSn_RX_RSRh:
 151              		@ args = 0, pretend = 0, frame = 0
 152              		@ frame_needed = 0, uses_anonymous_args = 0
 153 0000 4001     		lsls	r0, r0, #5
 154 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 155 0004 00F10806 		add	r6, r0, #8
 156 0008 06F51857 		add	r7, r6, #9728
 157 000c 0025     		movs	r5, #0
 158 000e 06F51C56 		add	r6, r6, #9984
 159 0012 01E0     		b	.L17
 160              	.L15:
 161 0014 A542     		cmp	r5, r4
 162 0016 17D0     		beq	.L21
 163              	.L17:
 164 0018 3846     		mov	r0, r7
 165 001a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 166 001e 0402     		lsls	r4, r0, #8
 167 0020 3046     		mov	r0, r6
 168 0022 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 169 0026 A4B2     		uxth	r4, r4
 170 0028 2044     		add	r0, r0, r4
 171 002a 84B2     		uxth	r4, r0
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccipaixl.s 			page 4


 172 002c 002C     		cmp	r4, #0
 173 002e F1D0     		beq	.L15
 174 0030 3846     		mov	r0, r7
 175 0032 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 176 0036 0502     		lsls	r5, r0, #8
 177 0038 3046     		mov	r0, r6
 178 003a FFF7FEFF 		bl	_Z12WIZCHIP_READm
 179 003e ADB2     		uxth	r5, r5
 180 0040 2844     		add	r0, r0, r5
 181 0042 85B2     		uxth	r5, r0
 182 0044 A542     		cmp	r5, r4
 183 0046 E7D1     		bne	.L17
 184              	.L21:
 185 0048 2846     		mov	r0, r5
 186 004a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 187              		.size	_Z12getSn_RX_RSRh, .-_Z12getSn_RX_RSRh
 188              		.section	.text._Z13wiz_send_datahPKht,"ax",%progbits
 189              		.align	2
 190              		.global	_Z13wiz_send_datahPKht
 191              		.thumb
 192              		.thumb_func
 193              		.type	_Z13wiz_send_datahPKht, %function
 194              	_Z13wiz_send_datahPKht:
 195              		@ args = 0, pretend = 0, frame = 0
 196              		@ frame_needed = 0, uses_anonymous_args = 0
 197 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 198 0004 1446     		mov	r4, r2
 199 0006 0546     		mov	r5, r0
 200 0008 0E46     		mov	r6, r1
 201 000a 0AB9     		cbnz	r2, .L24
 202 000c BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 203              	.L24:
 204 0010 4FF0040A 		mov	r10, #4
 205 0014 0127     		movs	r7, #1
 206 0016 1AFB0077 		smlabb	r7, r10, r0, r7
 207 001a FF00     		lsls	r7, r7, #3
 208 001c 07F51058 		add	r8, r7, #9216
 209 0020 4046     		mov	r0, r8
 210 0022 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 211 0026 07F51457 		add	r7, r7, #9472
 212 002a 8146     		mov	r9, r0
 213 002c 3846     		mov	r0, r7
 214 002e FFF7FEFF 		bl	_Z12WIZCHIP_READm
 215 0032 0223     		movs	r3, #2
 216 0034 00EB0920 		add	r0, r0, r9, lsl #8
 217 0038 1AFB0535 		smlabb	r5, r10, r5, r3
 218 003c 1FFA80F9 		uxth	r9, r0
 219 0040 2246     		mov	r2, r4
 220 0042 E800     		lsls	r0, r5, #3
 221 0044 4C44     		add	r4, r4, r9
 222 0046 3146     		mov	r1, r6
 223 0048 00EB0920 		add	r0, r0, r9, lsl #8
 224 004c A4B2     		uxth	r4, r4
 225 004e FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 226 0052 4046     		mov	r0, r8
 227 0054 210A     		lsrs	r1, r4, #8
 228 0056 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccipaixl.s 			page 5


 229 005a 3846     		mov	r0, r7
 230 005c E1B2     		uxtb	r1, r4
 231 005e BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 232 0062 FFF7FEBF 		b	_Z13WIZCHIP_WRITEmh
 233              		.size	_Z13wiz_send_datahPKht, .-_Z13wiz_send_datahPKht
 234 0066 00BF     		.section	.text._Z16wiz_send_data_athPKhtt,"ax",%progbits
 235              		.align	2
 236              		.global	_Z16wiz_send_data_athPKhtt
 237              		.thumb
 238              		.thumb_func
 239              		.type	_Z16wiz_send_data_athPKhtt, %function
 240              	_Z16wiz_send_data_athPKhtt:
 241              		@ args = 0, pretend = 0, frame = 0
 242              		@ frame_needed = 0, uses_anonymous_args = 0
 243 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 244 0002 0446     		mov	r4, r0
 245 0004 1D46     		mov	r5, r3
 246 0006 1646     		mov	r6, r2
 247 0008 02B9     		cbnz	r2, .L27
 248 000a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 249              	.L27:
 250 000c 0427     		movs	r7, #4
 251 000e 0220     		movs	r0, #2
 252 0010 17FB0400 		smlabb	r0, r7, r4, r0
 253 0014 1B02     		lsls	r3, r3, #8
 254 0016 03EBC000 		add	r0, r3, r0, lsl #3
 255 001a FFF7FEFF 		bl	_Z17WIZCHIP_WRITE_BUFmPKht
 256 001e 0123     		movs	r3, #1
 257 0020 17FB0434 		smlabb	r4, r7, r4, r3
 258 0024 3544     		add	r5, r5, r6
 259 0026 ADB2     		uxth	r5, r5
 260 0028 E400     		lsls	r4, r4, #3
 261 002a 04F51050 		add	r0, r4, #9216
 262 002e 290A     		lsrs	r1, r5, #8
 263 0030 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 264 0034 04F51450 		add	r0, r4, #9472
 265 0038 E9B2     		uxtb	r1, r5
 266 003a BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 267 003e FFF7FEBF 		b	_Z13WIZCHIP_WRITEmh
 268              		.size	_Z16wiz_send_data_athPKhtt, .-_Z16wiz_send_data_athPKhtt
 269 0042 00BF     		.section	.text._Z13wiz_recv_datahPht,"ax",%progbits
 270              		.align	2
 271              		.global	_Z13wiz_recv_datahPht
 272              		.thumb
 273              		.thumb_func
 274              		.type	_Z13wiz_recv_datahPht, %function
 275              	_Z13wiz_recv_datahPht:
 276              		@ args = 0, pretend = 0, frame = 0
 277              		@ frame_needed = 0, uses_anonymous_args = 0
 278 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 279 0004 1446     		mov	r4, r2
 280 0006 0546     		mov	r5, r0
 281 0008 0E46     		mov	r6, r1
 282 000a 0AB9     		cbnz	r2, .L30
 283 000c BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 284              	.L30:
 285 0010 4FF0040A 		mov	r10, #4
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccipaixl.s 			page 6


 286 0014 0127     		movs	r7, #1
 287 0016 1AFB0077 		smlabb	r7, r10, r0, r7
 288 001a FF00     		lsls	r7, r7, #3
 289 001c 07F52058 		add	r8, r7, #10240
 290 0020 4046     		mov	r0, r8
 291 0022 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 292 0026 07F52457 		add	r7, r7, #10496
 293 002a 8146     		mov	r9, r0
 294 002c 3846     		mov	r0, r7
 295 002e FFF7FEFF 		bl	_Z12WIZCHIP_READm
 296 0032 0323     		movs	r3, #3
 297 0034 00EB0920 		add	r0, r0, r9, lsl #8
 298 0038 1AFB0535 		smlabb	r5, r10, r5, r3
 299 003c 1FFA80F9 		uxth	r9, r0
 300 0040 2246     		mov	r2, r4
 301 0042 05FA03F0 		lsl	r0, r5, r3
 302 0046 4C44     		add	r4, r4, r9
 303 0048 3146     		mov	r1, r6
 304 004a 00EB0920 		add	r0, r0, r9, lsl #8
 305 004e A4B2     		uxth	r4, r4
 306 0050 FFF7FEFF 		bl	_Z16WIZCHIP_READ_BUFmPht
 307 0054 4046     		mov	r0, r8
 308 0056 210A     		lsrs	r1, r4, #8
 309 0058 FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 310 005c 3846     		mov	r0, r7
 311 005e E1B2     		uxtb	r1, r4
 312 0060 BDE8F047 		pop	{r4, r5, r6, r7, r8, r9, r10, lr}
 313 0064 FFF7FEBF 		b	_Z13WIZCHIP_WRITEmh
 314              		.size	_Z13wiz_recv_datahPht, .-_Z13wiz_recv_datahPht
 315              		.section	.text._Z15wiz_recv_ignoreht,"ax",%progbits
 316              		.align	2
 317              		.global	_Z15wiz_recv_ignoreht
 318              		.thumb
 319              		.thumb_func
 320              		.type	_Z15wiz_recv_ignoreht, %function
 321              	_Z15wiz_recv_ignoreht:
 322              		@ args = 0, pretend = 0, frame = 0
 323              		@ frame_needed = 0, uses_anonymous_args = 0
 324 0000 4001     		lsls	r0, r0, #5
 325 0002 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 326 0004 00F10804 		add	r4, r0, #8
 327 0008 04F52056 		add	r6, r4, #10240
 328 000c 3046     		mov	r0, r6
 329 000e 0D46     		mov	r5, r1
 330 0010 FFF7FEFF 		bl	_Z12WIZCHIP_READm
 331 0014 04F52454 		add	r4, r4, #10496
 332 0018 0746     		mov	r7, r0
 333 001a 2046     		mov	r0, r4
 334 001c FFF7FEFF 		bl	_Z12WIZCHIP_READm
 335 0020 2844     		add	r0, r0, r5
 336 0022 00EB0725 		add	r5, r0, r7, lsl #8
 337 0026 ADB2     		uxth	r5, r5
 338 0028 3046     		mov	r0, r6
 339 002a 290A     		lsrs	r1, r5, #8
 340 002c FFF7FEFF 		bl	_Z13WIZCHIP_WRITEmh
 341 0030 2046     		mov	r0, r4
 342 0032 E9B2     		uxtb	r1, r5
ARM GAS  C:\Users\tstern\AppData\Local\Temp\ccipaixl.s 			page 7


 343 0034 BDE8F840 		pop	{r3, r4, r5, r6, r7, lr}
 344 0038 FFF7FEBF 		b	_Z13WIZCHIP_WRITEmh
 345              		.size	_Z15wiz_recv_ignoreht, .-_Z15wiz_recv_ignoreht
 346              		.section	.bss._ZL28cpu_irq_prev_interrupt_state,"aw",%nobits
 347              		.type	_ZL28cpu_irq_prev_interrupt_state, %object
 348              		.size	_ZL28cpu_irq_prev_interrupt_state, 1
 349              	_ZL28cpu_irq_prev_interrupt_state:
 350 0000 00       		.space	1
 351              		.section	.bss._ZL32cpu_irq_critical_section_counter,"aw",%nobits
 352              		.align	2
 353              		.type	_ZL32cpu_irq_critical_section_counter, %object
 354              		.size	_ZL32cpu_irq_critical_section_counter, 4
 355              	_ZL32cpu_irq_critical_section_counter:
 356 0000 00000000 		.space	4
 357              		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
