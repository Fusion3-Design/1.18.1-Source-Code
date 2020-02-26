ARM GAS  C:\Users\George\AppData\Local\Temp\ccOT7yhd.s 			page 1


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
  14              		.file	"icmp.c"
  15              		.section	.text.icmp_send_response.isra.0,"ax",%progbits
  16              		.align	2
  17              		.thumb
  18              		.thumb_func
  19              		.type	icmp_send_response.isra.0, %function
  20              	icmp_send_response.isra.0:
  21              		@ args = 0, pretend = 0, frame = 8
  22              		@ frame_needed = 0, uses_anonymous_args = 0
  23 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
  24 0004 0546     		mov	r5, r0
  25 0006 85B0     		sub	sp, sp, #20
  26 0008 8946     		mov	r9, r1
  27 000a 1746     		mov	r7, r2
  28 000c 0120     		movs	r0, #1
  29 000e 2421     		movs	r1, #36
  30 0010 0022     		movs	r2, #0
  31 0012 FFF7FEFF 		bl	pbuf_alloc
  32 0016 0646     		mov	r6, r0
  33 0018 0028     		cmp	r0, #0
  34 001a 40D0     		beq	.L1
  35 001c 4468     		ldr	r4, [r0, #4]
  36 001e D5F80080 		ldr	r8, [r5]
  37 0022 84F80090 		strb	r9, [r4]
  38 0026 6770     		strb	r7, [r4, #1]
  39 0028 2B68     		ldr	r3, [r5]
  40 002a 0025     		movs	r5, #0
  41 002c 2571     		strb	r5, [r4, #4]
  42 002e 6571     		strb	r5, [r4, #5]
  43 0030 A571     		strb	r5, [r4, #6]
  44 0032 E571     		strb	r5, [r4, #7]
  45 0034 D0F804E0 		ldr	lr, [r0, #4]
  46 0038 1F68     		ldr	r7, [r3]	@ unaligned
  47 003a 5868     		ldr	r0, [r3, #4]	@ unaligned
  48 003c 9968     		ldr	r1, [r3, #8]	@ unaligned
  49 003e D3F80CC0 		ldr	ip, [r3, #12]	@ unaligned
  50 0042 CEF80870 		str	r7, [lr, #8]	@ unaligned
  51 0046 CEF80C00 		str	r0, [lr, #12]	@ unaligned
  52 004a CEF81010 		str	r1, [lr, #16]	@ unaligned
  53 004e CEF814C0 		str	ip, [lr, #20]	@ unaligned
  54 0052 5869     		ldr	r0, [r3, #20]	@ unaligned
  55 0054 9969     		ldr	r1, [r3, #24]	@ unaligned
  56 0056 1F69     		ldr	r7, [r3, #16]	@ unaligned
  57 0058 CEF81C00 		str	r0, [lr, #28]	@ unaligned
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOT7yhd.s 			page 2


  58 005c CEF81870 		str	r7, [lr, #24]	@ unaligned
  59 0060 CEF82010 		str	r1, [lr, #32]	@ unaligned
  60 0064 7189     		ldrh	r1, [r6, #10]
  61 0066 2046     		mov	r0, r4
  62 0068 A570     		strb	r5, [r4, #2]
  63 006a E570     		strb	r5, [r4, #3]
  64 006c FFF7FEFF 		bl	inet_chksum
  65 0070 0C4B     		ldr	r3, .L8
  66 0072 6080     		strh	r0, [r4, #2]	@ unaligned
  67 0074 B3F86010 		ldrh	r1, [r3, #96]
  68 0078 04AA     		add	r2, sp, #16
  69 007a 0131     		adds	r1, r1, #1
  70 007c A3F86010 		strh	r1, [r3, #96]	@ movhi
  71 0080 D8F80C10 		ldr	r1, [r8, #12]	@ unaligned
  72 0084 0123     		movs	r3, #1
  73 0086 42F8041D 		str	r1, [r2, #-4]!
  74 008a 3046     		mov	r0, r6
  75 008c 0193     		str	r3, [sp, #4]
  76 008e 0095     		str	r5, [sp]
  77 0090 2946     		mov	r1, r5
  78 0092 FF23     		movs	r3, #255
  79 0094 FFF7FEFF 		bl	ip_output
  80 0098 3046     		mov	r0, r6
  81 009a FFF7FEFF 		bl	pbuf_free
  82              	.L1:
  83 009e 05B0     		add	sp, sp, #20
  84              		@ sp needed
  85 00a0 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
  86              	.L9:
  87              		.align	2
  88              	.L8:
  89 00a4 00000000 		.word	lwip_stats
  90              		.size	icmp_send_response.isra.0, .-icmp_send_response.isra.0
  91              		.section	.text.icmp_input,"ax",%progbits
  92              		.align	2
  93              		.global	icmp_input
  94              		.thumb
  95              		.thumb_func
  96              		.type	icmp_input, %function
  97              	icmp_input:
  98              		@ args = 0, pretend = 0, frame = 0
  99              		@ frame_needed = 0, uses_anonymous_args = 0
 100 0000 2DE9F04F 		push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 101 0004 634C     		ldr	r4, .L36
 102 0006 4668     		ldr	r6, [r0, #4]
 103 0008 B4F86230 		ldrh	r3, [r4, #98]
 104 000c 85B0     		sub	sp, sp, #20
 105 000e 0133     		adds	r3, r3, #1
 106 0010 A4F86230 		strh	r3, [r4, #98]	@ movhi
 107 0014 3778     		ldrb	r7, [r6]	@ zero_extendqisi2
 108 0016 8946     		mov	r9, r1
 109 0018 07F00F07 		and	r7, r7, #15
 110 001c BF00     		lsls	r7, r7, #2
 111 001e C7F10008 		rsb	r8, r7, #0
 112 0022 4146     		mov	r1, r8
 113 0024 0546     		mov	r5, r0
 114 0026 FFF7FEFF 		bl	pbuf_header
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOT7yhd.s 			page 3


 115 002a 00BB     		cbnz	r0, .L11
 116 002c 2B89     		ldrh	r3, [r5, #8]
 117 002e 032B     		cmp	r3, #3
 118 0030 1DD9     		bls	.L11
 119 0032 6B68     		ldr	r3, [r5, #4]
 120 0034 1B78     		ldrb	r3, [r3]	@ zero_extendqisi2
 121 0036 002B     		cmp	r3, #0
 122 0038 5ED0     		beq	.L13
 123 003a 082B     		cmp	r3, #8
 124 003c 62D1     		bne	.L30
 125 003e DFF85CB1 		ldr	fp, .L36+8
 126 0042 4946     		mov	r1, r9
 127 0044 DBF800A0 		ldr	r10, [fp]
 128 0048 5046     		mov	r0, r10
 129 004a FFF7FEFF 		bl	ip4_addr_isbroadcast
 130 004e 30B1     		cbz	r0, .L32
 131              	.L15:
 132 0050 B4F87430 		ldrh	r3, [r4, #116]
 133 0054 2846     		mov	r0, r5
 134 0056 0133     		adds	r3, r3, #1
 135 0058 A4F87430 		strh	r3, [r4, #116]	@ movhi
 136 005c 4DE0     		b	.L31
 137              	.L32:
 138 005e 0AF0F00A 		and	r10, r10, #240
 139 0062 BAF1E00F 		cmp	r10, #224
 140 0066 F3D0     		beq	.L15
 141 0068 2B89     		ldrh	r3, [r5, #8]
 142 006a 072B     		cmp	r3, #7
 143 006c 55D8     		bhi	.L33
 144              	.L11:
 145 006e 2846     		mov	r0, r5
 146 0070 FFF7FEFF 		bl	pbuf_free
 147 0074 B4F86A30 		ldrh	r3, [r4, #106]
 148 0078 0133     		adds	r3, r3, #1
 149 007a A4F86A30 		strh	r3, [r4, #106]	@ movhi
 150              	.L10:
 151 007e 05B0     		add	sp, sp, #20
 152              		@ sp needed
 153 0080 BDE8F08F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
 154              	.L19:
 155 0084 2846     		mov	r0, r5
 156 0086 6FF02501 		mvn	r1, #37
 157 008a FFF7FEFF 		bl	pbuf_header
 158 008e 0028     		cmp	r0, #0
 159 0090 54D1     		bne	.L20
 160 0092 3FB2     		sxth	r7, r7
 161              	.L21:
 162 0094 404B     		ldr	r3, .L36+4
 163 0096 DBF80010 		ldr	r1, [fp]
 164 009a 1A68     		ldr	r2, [r3]
 165 009c 6B68     		ldr	r3, [r5, #4]
 166 009e F160     		str	r1, [r6, #12]	@ unaligned
 167 00a0 3261     		str	r2, [r6, #16]	@ unaligned
 168 00a2 5A88     		ldrh	r2, [r3, #2]	@ unaligned
 169 00a4 4FF6F671 		movw	r1, #65526
 170 00a8 8A42     		cmp	r2, r1
 171 00aa 8CBF     		ite	hi
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOT7yhd.s 			page 4


 172 00ac 0932     		addhi	r2, r2, #9
 173 00ae 0832     		addls	r2, r2, #8
 174 00b0 5A80     		strh	r2, [r3, #2]	@ unaligned
 175 00b2 0020     		movs	r0, #0
 176 00b4 0022     		movs	r2, #0
 177 00b6 4FF0FF08 		mov	r8, #255
 178 00ba 1870     		strb	r0, [r3]
 179 00bc 1421     		movs	r1, #20
 180 00be 86F80880 		strb	r8, [r6, #8]
 181 00c2 B272     		strb	r2, [r6, #10]
 182 00c4 F272     		strb	r2, [r6, #11]
 183 00c6 3046     		mov	r0, r6
 184 00c8 FFF7FEFF 		bl	inet_chksum
 185 00cc B4F86030 		ldrh	r3, [r4, #96]
 186 00d0 3946     		mov	r1, r7
 187 00d2 7081     		strh	r0, [r6, #10]	@ unaligned
 188 00d4 0133     		adds	r3, r3, #1
 189 00d6 2846     		mov	r0, r5
 190 00d8 A4F86030 		strh	r3, [r4, #96]	@ movhi
 191 00dc FFF7FEFF 		bl	pbuf_header
 192 00e0 50B9     		cbnz	r0, .L13
 193 00e2 0121     		movs	r1, #1
 194 00e4 0090     		str	r0, [sp]
 195 00e6 0246     		mov	r2, r0
 196 00e8 0191     		str	r1, [sp, #4]
 197 00ea CDF80890 		str	r9, [sp, #8]
 198 00ee 4346     		mov	r3, r8
 199 00f0 2846     		mov	r0, r5
 200 00f2 2A49     		ldr	r1, .L36+8
 201 00f4 FFF7FEFF 		bl	ip_output_if
 202              	.L13:
 203 00f8 2846     		mov	r0, r5
 204              	.L31:
 205 00fa 05B0     		add	sp, sp, #20
 206              		@ sp needed
 207 00fc BDE8F04F 		pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
 208 0100 FFF7FEBF 		b	pbuf_free
 209              	.L30:
 210 0104 B4F87020 		ldrh	r2, [r4, #112]
 211 0108 B4F86630 		ldrh	r3, [r4, #102]
 212 010c 0132     		adds	r2, r2, #1
 213 010e 0133     		adds	r3, r3, #1
 214 0110 A4F87020 		strh	r2, [r4, #112]	@ movhi
 215 0114 A4F86630 		strh	r3, [r4, #102]	@ movhi
 216 0118 EEE7     		b	.L13
 217              	.L33:
 218 011a 2846     		mov	r0, r5
 219 011c FFF7FEFF 		bl	inet_chksum_pbuf
 220 0120 A8B9     		cbnz	r0, .L34
 221 0122 2846     		mov	r0, r5
 222 0124 2621     		movs	r1, #38
 223 0126 BFB2     		uxth	r7, r7
 224 0128 FFF7FEFF 		bl	pbuf_header
 225 012c 0028     		cmp	r0, #0
 226 012e A9D0     		beq	.L19
 227 0130 3FB2     		sxth	r7, r7
 228 0132 3946     		mov	r1, r7
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOT7yhd.s 			page 5


 229 0134 2846     		mov	r0, r5
 230 0136 FFF7FEFF 		bl	pbuf_header
 231 013a 88B1     		cbz	r0, .L35
 232              	.L20:
 233 013c 2846     		mov	r0, r5
 234 013e FFF7FEFF 		bl	pbuf_free
 235 0142 B4F87430 		ldrh	r3, [r4, #116]
 236 0146 0133     		adds	r3, r3, #1
 237 0148 A4F87430 		strh	r3, [r4, #116]	@ movhi
 238 014c 97E7     		b	.L10
 239              	.L34:
 240 014e 2846     		mov	r0, r5
 241 0150 FFF7FEFF 		bl	pbuf_free
 242 0154 B4F86830 		ldrh	r3, [r4, #104]
 243 0158 0133     		adds	r3, r3, #1
 244 015a A4F86830 		strh	r3, [r4, #104]	@ movhi
 245 015e 8EE7     		b	.L10
 246              	.L35:
 247 0160 0220     		movs	r0, #2
 248 0162 2989     		ldrh	r1, [r5, #8]
 249 0164 0022     		movs	r2, #0
 250 0166 FFF7FEFF 		bl	pbuf_alloc
 251 016a 8246     		mov	r10, r0
 252 016c 0028     		cmp	r0, #0
 253 016e E5D0     		beq	.L20
 254 0170 2946     		mov	r1, r5
 255 0172 FFF7FEFF 		bl	pbuf_copy
 256 0176 0028     		cmp	r0, #0
 257 0178 E0D1     		bne	.L20
 258 017a 4146     		mov	r1, r8
 259 017c 5046     		mov	r0, r10
 260 017e DAF80460 		ldr	r6, [r10, #4]
 261 0182 FFF7FEFF 		bl	pbuf_header
 262 0186 0028     		cmp	r0, #0
 263 0188 D8D1     		bne	.L20
 264 018a 2846     		mov	r0, r5
 265 018c FFF7FEFF 		bl	pbuf_free
 266 0190 5546     		mov	r5, r10
 267 0192 7FE7     		b	.L21
 268              	.L37:
 269              		.align	2
 270              	.L36:
 271 0194 00000000 		.word	lwip_stats
 272 0198 00000000 		.word	current_iphdr_src
 273 019c 00000000 		.word	current_iphdr_dest
 274              		.size	icmp_input, .-icmp_input
 275              		.section	.text.icmp_dest_unreach,"ax",%progbits
 276              		.align	2
 277              		.global	icmp_dest_unreach
 278              		.thumb
 279              		.thumb_func
 280              		.type	icmp_dest_unreach, %function
 281              	icmp_dest_unreach:
 282              		@ args = 0, pretend = 0, frame = 0
 283              		@ frame_needed = 0, uses_anonymous_args = 0
 284              		@ link register save eliminated.
 285 0000 0A46     		mov	r2, r1
ARM GAS  C:\Users\George\AppData\Local\Temp\ccOT7yhd.s 			page 6


 286 0002 0430     		adds	r0, r0, #4
 287 0004 0321     		movs	r1, #3
 288 0006 FFF7FEBF 		b	icmp_send_response.isra.0
 289              		.size	icmp_dest_unreach, .-icmp_dest_unreach
 290 000a 00BF     		.section	.text.icmp_time_exceeded,"ax",%progbits
 291              		.align	2
 292              		.global	icmp_time_exceeded
 293              		.thumb
 294              		.thumb_func
 295              		.type	icmp_time_exceeded, %function
 296              	icmp_time_exceeded:
 297              		@ args = 0, pretend = 0, frame = 0
 298              		@ frame_needed = 0, uses_anonymous_args = 0
 299              		@ link register save eliminated.
 300 0000 0A46     		mov	r2, r1
 301 0002 0430     		adds	r0, r0, #4
 302 0004 0B21     		movs	r1, #11
 303 0006 FFF7FEBF 		b	icmp_send_response.isra.0
 304              		.size	icmp_time_exceeded, .-icmp_time_exceeded
 305 000a 00BF     		.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.8.3 20140228 (release) [ARM/embedded-4_8-br
