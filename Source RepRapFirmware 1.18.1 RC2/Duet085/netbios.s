ARM GAS  C:\Users\George\AppData\Local\Temp\cc8W253O.s 			page 1


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
  14              		.file	"netbios.c"
  15              		.section	.text.netbios_recv,"ax",%progbits
  16              		.align	2
  17              		.thumb
  18              		.thumb_func
  19              		.type	netbios_recv, %function
  20              	netbios_recv:
  21              		@ args = 4, pretend = 0, frame = 32
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  24 0004 89B0     		sub	sp, sp, #36
  25 0006 1446     		mov	r4, r2
  26 0008 0F46     		mov	r7, r1
  27 000a BDF84880 		ldrh	r8, [sp, #72]
  28 000e 002A     		cmp	r2, #0
  29 0010 00F0C480 		beq	.L1
  30 0014 644E     		ldr	r6, .L34
  31 0016 5568     		ldr	r5, [r2, #4]
  32 0018 3268     		ldr	r2, [r6]
  33 001a 3AB1     		cbz	r2, .L4
  34 001c 6A88     		ldrh	r2, [r5, #2]	@ unaligned
  35 001e 12F0F802 		ands	r2, r2, #248
  36 0022 03D1     		bne	.L4
  37 0024 A988     		ldrh	r1, [r5, #4]	@ unaligned
  38 0026 B1F5807F 		cmp	r1, #256
  39 002a 05D0     		beq	.L32
  40              	.L4:
  41 002c 2046     		mov	r0, r4
  42 002e 09B0     		add	sp, sp, #36
  43              		@ sp needed
  44 0030 BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
  45 0034 FFF7FEBF 		b	pbuf_free
  46              	.L32:
  47 0038 05F10D09 		add	r9, r5, #13
  48 003c 05F10F0E 		add	lr, r5, #15
  49 0040 03A8     		add	r0, sp, #12
  50 0042 20E0     		b	.L6
  51              	.L33:
  52 0044 2E29     		cmp	r1, #46
  53 0046 28D0     		beq	.L7
  54 0048 BCF1190F 		cmp	ip, #25
  55 004c 25D8     		bhi	.L7
  56 004e 1EF8011C 		ldrb	r1, [lr, #-1]	@ zero_extendqisi2
  57 0052 5FFA8AFA 		uxtb	r10, r10
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8W253O.s 			page 2


  58 0056 A1F1410C 		sub	ip, r1, #65
  59 005a 5FFA8CFC 		uxtb	ip, ip
  60 005e 4AEA0C0A 		orr	r10, r10, ip
  61 0062 D1B1     		cbz	r1, .L7
  62 0064 2E29     		cmp	r1, #46
  63 0066 18D0     		beq	.L7
  64 0068 BCF1190F 		cmp	ip, #25
  65 006c 15D8     		bhi	.L7
  66 006e 0F2A     		cmp	r2, #15
  67 0070 07DC     		bgt	.L8
  68 0072 BAF1200F 		cmp	r10, #32
  69 0076 08BF     		it	eq
  70 0078 4FF0000A 		moveq	r10, #0
  71 007c 00F802A0 		strb	r10, [r0, r2]
  72 0080 0132     		adds	r2, r2, #1
  73              	.L8:
  74 0082 0EF1020E 		add	lr, lr, #2
  75              	.L6:
  76 0086 1EF8021C 		ldrb	r1, [lr, #-2]	@ zero_extendqisi2
  77 008a A1F1410C 		sub	ip, r1, #65
  78 008e 5FFA8CFC 		uxtb	ip, ip
  79 0092 4FEA0C1A 		lsl	r10, ip, #4
  80 0096 0029     		cmp	r1, #0
  81 0098 D4D1     		bne	.L33
  82              	.L7:
  83 009a 444A     		ldr	r2, .L34+4
  84 009c 1268     		ldr	r2, [r2]
  85 009e 002A     		cmp	r2, #0
  86 00a0 7FD0     		beq	.L13
  87 00a2 916A     		ldr	r1, [r2, #40]
  88 00a4 424A     		ldr	r2, .L34+8
  89 00a6 0029     		cmp	r1, #0
  90 00a8 08BF     		it	eq
  91 00aa 1146     		moveq	r1, r2
  92              	.L10:
  93 00ac 0093     		str	r3, [sp]
  94 00ae FFF7FEFF 		bl	strcasecmp
  95 00b2 8246     		mov	r10, r0
  96 00b4 0028     		cmp	r0, #0
  97 00b6 B9D1     		bne	.L4
  98 00b8 3E21     		movs	r1, #62
  99 00ba 0246     		mov	r2, r0
 100 00bc FFF7FEFF 		bl	pbuf_alloc
 101 00c0 009B     		ldr	r3, [sp]
 102 00c2 8346     		mov	fp, r0
 103 00c4 0028     		cmp	r0, #0
 104 00c6 B1D0     		beq	.L4
 105 00c8 4168     		ldr	r1, [r0, #4]
 106 00ca B5F800E0 		ldrh	lr, [r5]	@ unaligned
 107 00ce 0122     		movs	r2, #1
 108 00d0 6FF07A0C 		mvn	ip, #122
 109 00d4 CA71     		strb	r2, [r1, #7]
 110 00d6 09F12000 		add	r0, r9, #32
 111 00da A1F800E0 		strh	lr, [r1]	@ unaligned
 112 00de 81F803A0 		strb	r10, [r1, #3]
 113 00e2 81F804A0 		strb	r10, [r1, #4]
 114 00e6 81F805A0 		strb	r10, [r1, #5]
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8W253O.s 			page 3


 115 00ea 81F806A0 		strb	r10, [r1, #6]
 116 00ee 81F808A0 		strb	r10, [r1, #8]
 117 00f2 81F809A0 		strb	r10, [r1, #9]
 118 00f6 81F80AA0 		strb	r10, [r1, #10]
 119 00fa 81F80BA0 		strb	r10, [r1, #11]
 120 00fe 81F802C0 		strb	ip, [r1, #2]
 121 0102 01F10D02 		add	r2, r1, #13
 122 0106 0195     		str	r5, [sp, #4]
 123              	.L11:
 124 0108 D9F800A0 		ldr	r10, [r9]	@ unaligned
 125 010c D9F804C0 		ldr	ip, [r9, #4]	@ unaligned
 126 0110 D9F808E0 		ldr	lr, [r9, #8]	@ unaligned
 127 0114 D9F80C50 		ldr	r5, [r9, #12]	@ unaligned
 128 0118 09F11009 		add	r9, r9, #16
 129 011c 8145     		cmp	r9, r0
 130 011e C2F800A0 		str	r10, [r2]	@ unaligned
 131 0122 C2F804C0 		str	ip, [r2, #4]	@ unaligned
 132 0126 C2F808E0 		str	lr, [r2, #8]	@ unaligned
 133 012a D560     		str	r5, [r2, #12]	@ unaligned
 134 012c 02F11002 		add	r2, r2, #16
 135 0130 EAD1     		bne	.L11
 136 0132 99F80000 		ldrb	r0, [r9]	@ zero_extendqisi2
 137 0136 019D     		ldr	r5, [sp, #4]
 138 0138 1070     		strb	r0, [r2]
 139 013a 2A7B     		ldrb	r2, [r5, #12]	@ zero_extendqisi2
 140 013c 3068     		ldr	r0, [r6]
 141 013e 0A73     		strb	r2, [r1, #12]
 142 0140 EA8D     		ldrh	r2, [r5, #46]	@ unaligned
 143 0142 4068     		ldr	r0, [r0, #4]
 144 0144 CA85     		strh	r2, [r1, #46]	@ unaligned
 145 0146 0190     		str	r0, [sp, #4]
 146 0148 B5F83090 		ldrh	r9, [r5, #48]	@ unaligned
 147 014c 3846     		mov	r0, r7
 148 014e 019F     		ldr	r7, [sp, #4]
 149 0150 4FF0000E 		mov	lr, #0
 150 0154 4FF0060C 		mov	ip, #6
 151 0158 0426     		movs	r6, #4
 152 015a 6FF06C05 		mvn	r5, #108
 153 015e 6FF01F0A 		mvn	r10, #31
 154 0162 1A46     		mov	r2, r3
 155 0164 C1F83A70 		str	r7, [r1, #58]	@ unaligned
 156 0168 A1F83090 		strh	r9, [r1, #48]	@ unaligned
 157 016c 81F832E0 		strb	lr, [r1, #50]
 158 0170 81F836E0 		strb	lr, [r1, #54]
 159 0174 81F838E0 		strb	lr, [r1, #56]
 160 0178 81F839E0 		strb	lr, [r1, #57]
 161 017c 81F83360 		strb	r6, [r1, #51]
 162 0180 81F83450 		strb	r5, [r1, #52]
 163 0184 81F835A0 		strb	r10, [r1, #53]
 164 0188 81F837C0 		strb	ip, [r1, #55]
 165 018c 4346     		mov	r3, r8
 166 018e 5946     		mov	r1, fp
 167 0190 FFF7FEFF 		bl	udp_sendto
 168 0194 5846     		mov	r0, fp
 169 0196 FFF7FEFF 		bl	pbuf_free
 170 019a 47E7     		b	.L4
 171              	.L1:
ARM GAS  C:\Users\George\AppData\Local\Temp\cc8W253O.s 			page 4


 172 019c 09B0     		add	sp, sp, #36
 173              		@ sp needed
 174 019e BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 175              	.L13:
 176 01a2 0349     		ldr	r1, .L34+8
 177 01a4 82E7     		b	.L10
 178              	.L35:
 179 01a6 00BF     		.align	2
 180              	.L34:
 181 01a8 00000000 		.word	netif_default
 182 01ac 00000000 		.word	current_netif
 183 01b0 00000000 		.word	.LC0
 184              		.size	netbios_recv, .-netbios_recv
 185              		.section	.text.netbios_init,"ax",%progbits
 186              		.align	2
 187              		.global	netbios_init
 188              		.thumb
 189              		.thumb_func
 190              		.type	netbios_init, %function
 191              	netbios_init:
 192              		@ args = 0, pretend = 0, frame = 0
 193              		@ frame_needed = 0, uses_anonymous_args = 0
 194 0000 10B5     		push	{r4, lr}
 195 0002 FFF7FEFF 		bl	udp_new
 196 0006 0446     		mov	r4, r0
 197 0008 70B1     		cbz	r0, .L36
 198 000a 037A     		ldrb	r3, [r0, #8]	@ zero_extendqisi2
 199 000c 0749     		ldr	r1, .L38
 200 000e 43F02003 		orr	r3, r3, #32
 201 0012 8922     		movs	r2, #137
 202 0014 0372     		strb	r3, [r0, #8]
 203 0016 FFF7FEFF 		bl	udp_bind
 204 001a 2046     		mov	r0, r4
 205 001c 2246     		mov	r2, r4
 206 001e 0449     		ldr	r1, .L38+4
 207 0020 BDE81040 		pop	{r4, lr}
 208 0024 FFF7FEBF 		b	udp_recv
 209              	.L36:
 210 0028 10BD     		pop	{r4, pc}
 211              	.L39:
 212 002a 00BF     		.align	2
 213              	.L38:
 214 002c 00000000 		.word	ip_addr_any
 215 0030 00000000 		.word	netbios_recv
 216              		.size	netbios_init, .-netbios_init
 217              		.section	.rodata.str1.4,"aMS",%progbits,1
 218              		.align	2
 219              	.LC0:
 220 0000 44554554 		.ascii	"DUET\000"
 220      00
 221 0005 000000   		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
