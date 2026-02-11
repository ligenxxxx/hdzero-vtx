;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.2 #15451 (MINGW64)
;--------------------------------------------------------
	.module device
	
	.optsdcc -mmcs51 --model-large
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _P0_0
	.globl _P0_1
	.globl _probe_device
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_1	=	0x0081
_P0_0	=	0x0080
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_rr:
	.ds 40
_b_ms_10000_4:
	.ds 2
_f_val_10000_14:
	.ds 1
_g_no_ack_10000_19:
	.ds 1
_g_val_10000_20:
	.ds 1
_h_no_ack_10000_24:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'a'
;------------------------------------------------------------
;	-----------------------------------------
;	 function a
;	-----------------------------------------
_a:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,#91
00000$:
	djnz	r7,00000$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'b'
;------------------------------------------------------------
;ms            Allocated with name '_b_ms_10000_4'
;__ticks       Allocated with name '_b___ticks_20000_6'
;------------------------------------------------------------
;	-----------------------------------------
;	 function b
;	-----------------------------------------
_b:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_b_ms_10000_4
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_b_ms_10000_4
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00104$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00135$
	dec	r7
00135$:
	mov	dptr,#_b_ms_10000_4
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	orl	a,r5
	jz	00114$
	mov	r4,#0xba
	mov	r5,#0x0a
00101$:
	dec	r4
	cjne	r4,#0xff,00137$
	dec	r5
00137$:
	mov	a,r4
	orl	a,r5
	jnz	00101$
	sjmp	00104$
00114$:
	mov	dptr,#_b_ms_10000_4
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'c'
;------------------------------------------------------------
;	-----------------------------------------
;	 function c
;	-----------------------------------------
_c:
;	assignBit
	setb	_P0_1
	lcall	_a
;	assignBit
	setb	_P0_0
	lcall	_a
	lcall	_a
	lcall	_a
;	assignBit
	clr	_P0_1
	lcall	_a
	lcall	_a
;	assignBit
	clr	_P0_0
	lcall	_a
	lcall	_a
	ljmp	_a
;------------------------------------------------------------
;Allocation info for local variables in function 'd'
;------------------------------------------------------------
;	-----------------------------------------
;	 function d
;	-----------------------------------------
_d:
	lcall	_a
	lcall	_a
;	assignBit
	clr	_P0_1
	lcall	_a
	lcall	_a
;	assignBit
	setb	_P0_0
	lcall	_a
	lcall	_a
;	assignBit
	setb	_P0_1
	lcall	_a
	lcall	_a
	ljmp	_a
;------------------------------------------------------------
;Allocation info for local variables in function 'e'
;------------------------------------------------------------
;ret           Allocated with name '_e_ret_10000_13'
;------------------------------------------------------------
;	-----------------------------------------
;	 function e
;	-----------------------------------------
_e:
;	assignBit
	setb	_P0_1
	lcall	_a
;	assignBit
	setb	_P0_0
	lcall	_a
	mov	c,_P0_1
	clr	a
	rlc	a
	mov	r7,a
	push	ar7
	lcall	_a
;	assignBit
	clr	_P0_0
	lcall	_a
	pop	ar7
	mov	dpl, r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f'
;------------------------------------------------------------
;val           Allocated with name '_f_val_10000_14'
;_i            Allocated with name '_f__i_10000_15'
;------------------------------------------------------------
;	-----------------------------------------
;	 function f
;	-----------------------------------------
_f:
	mov	a,dpl
	mov	dptr,#_f_val_10000_14
	movx	@dptr,a
	mov	r7,#0x00
00105$:
	mov	dptr,#_f_val_10000_14
	movx	a,@dptr
	rl	a
	anl	a,#0x01
	jz	00102$
;	assignBit
	setb	_P0_1
	sjmp	00103$
00102$:
;	assignBit
	clr	_P0_1
00103$:
	push	ar7
	lcall	_a
;	assignBit
	setb	_P0_0
	lcall	_a
	lcall	_a
;	assignBit
	clr	_P0_0
	lcall	_a
	pop	ar7
	mov	dptr,#_f_val_10000_14
	movx	a,@dptr
	add	a,acc
	movx	@dptr,a
	inc	r7
	cjne	r7,#0x08,00129$
00129$:
	jc	00105$
	ljmp	_e
;------------------------------------------------------------
;Allocation info for local variables in function 'g'
;------------------------------------------------------------
;no_ack        Allocated with name '_g_no_ack_10000_19'
;_i            Allocated with name '_g__i_10000_20'
;val           Allocated with name '_g_val_10000_20'
;------------------------------------------------------------
;	-----------------------------------------
;	 function g
;	-----------------------------------------
_g:
	mov	a,dpl
	mov	dptr,#_g_no_ack_10000_19
	movx	@dptr,a
	mov	dptr,#_g_val_10000_20
	clr	a
	movx	@dptr,a
	mov	r7,a
00102$:
	push	ar7
	lcall	_a
;	assignBit
	setb	_P0_0
	mov	dptr,#_g_val_10000_20
	movx	a,@dptr
	add	a,acc
	movx	@dptr,a
	movx	a,@dptr
	mov	r6,a
	mov	c,_P0_1
	clr	a
	rlc	a
	orl	a,r6
	movx	@dptr,a
	lcall	_a
	lcall	_a
;	assignBit
	clr	_P0_0
	lcall	_a
	pop	ar7
	inc	r7
	cjne	r7,#0x08,00119$
00119$:
	jc	00102$
	mov	dptr,#_g_no_ack_10000_19
;	assignBit
	movx	a,@dptr
	add	a,#0xff
	mov	_P0_1,c
	lcall	_a
;	assignBit
	setb	_P0_0
	lcall	_a
	lcall	_a
;	assignBit
	clr	_P0_0
	lcall	_a
;	assignBit
	setb	_P0_1
	mov	dptr,#_g_val_10000_20
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'h'
;------------------------------------------------------------
;ret           Allocated with name '_h_ret_10000_24'
;_i            Allocated with name '_h__i_10000_24'
;no_ack        Allocated with name '_h_no_ack_10000_24'
;------------------------------------------------------------
;	-----------------------------------------
;	 function h
;	-----------------------------------------
_h:
	lcall	_c
	mov	dpl, #0xc9
	lcall	_f
	mov	a,dpl
	mov	r7,a
	jz	00102$
	lcall	_d
	mov	dpl, #0x01
	ret
00102$:
	mov	dpl, #0x00
	push	ar7
	lcall	_g
	mov	r6, dpl
	pop	ar7
	mov	dptr,#_rr
	mov	a,r6
	movx	@dptr,a
	cjne	r6,#0x04,00147$
00147$:
	jc	00103$
	mov	dptr,#_rr
	movx	a,@dptr
	add	a,#0xff - 0x23
	jnc	00119$
00103$:
	lcall	_d
	mov	dpl, #0x01
	ret
00119$:
	mov	r6,#0x01
00111$:
	mov	dptr,#_rr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r5
	jnc	00109$
	mov	dptr,#_rr
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	dec	r5
	cjne	r5,#0xff,00151$
	dec	r4
00151$:
	mov	ar2,r6
	mov	r3,#0x00
	mov	a,r2
	cjne	a,ar5,00107$
	mov	a,r3
	cjne	a,ar4,00107$
	mov	dptr,#_h_no_ack_10000_24
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00108$
00107$:
	mov	dptr,#_h_no_ack_10000_24
	clr	a
	movx	@dptr,a
00108$:
	mov	a,r6
	add	a, #_rr
	mov	r4,a
	clr	a
	addc	a, #(_rr >> 8)
	mov	r5,a
	mov	dptr,#_h_no_ack_10000_24
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_g
	mov	r3, dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r4
	mov	dph,r5
	mov	a,r3
	movx	@dptr,a
	inc	r6
	sjmp	00111$
00109$:
	push	ar7
	lcall	_d
	pop	ar7
	mov	dpl, r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i'
;------------------------------------------------------------
;n             Allocated with name '_i_n_10000_33'
;------------------------------------------------------------
;	-----------------------------------------
;	 function i
;	-----------------------------------------
_i:
;	assignBit
	setb	_P0_1
;	assignBit
	setb	_P0_0
	lcall	_a
	mov	r7,#0x03
00103$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jz	00105$
	push	ar7
	lcall	_c
;	assignBit
	clr	_P0_1
	mov	dptr,#0x0001
	lcall	_b
;	assignBit
	setb	_P0_1
	mov	dpl, #0x00
	lcall	_f
	lcall	_d
	mov	dptr,#0x0005
	lcall	_b
	lcall	_h
	mov	a, dpl
	pop	ar7
	jnz	00102$
	mov	dpl,a
	ret
00102$:
	mov	dptr,#0x0005
	push	ar7
	lcall	_b
	pop	ar7
	sjmp	00103$
00105$:
	mov	dpl, #0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'j'
;------------------------------------------------------------
;ret           Allocated with name '_j_ret_10000_37'
;------------------------------------------------------------
;	-----------------------------------------
;	 function j
;	-----------------------------------------
_j:
	lcall	_c
	mov	dpl, #0xc8
	lcall	_f
	mov	r7, dpl
	mov	dpl, #0x01
	push	ar7
	lcall	_f
	mov	r6, dpl
	pop	ar7
	mov	a,r6
	orl	ar7,a
	push	ar7
	lcall	_d
	pop	ar7
	mov	dpl, r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'probe_device'
;------------------------------------------------------------
;_i            Allocated with name '_probe_device__i_10000_39'
;------------------------------------------------------------
;	-----------------------------------------
;	 function probe_device
;	-----------------------------------------
_probe_device:
	lcall	_i
	mov	a, dpl
	jnz	00101$
	mov	dptr,#_rr
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00114$
	sjmp	00102$
00114$:
00101$:
	mov	dpl, #0x01
	ret
00102$:
	lcall	_j
	mov	dpl, #0x00
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
