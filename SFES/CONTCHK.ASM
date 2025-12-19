;***************************************************************************
;*                                                                         *
;*                             Star Fox CD                                 *
;*                             -----------                                 *
;*                     Emerald Softworks & Team SFCD                       *
;*                                                                         *
;*_________________________________________________________________________*
;*                                                                         *
;*   File: CONTCHK.ASM                                                     *
;*_________________________________________________________________________*
;*                                                                         *
;*   Descr: Routines for checking for illegal controllers at startup.      *
;*_________________________________________________________________________*
;*                                                                         *
;*   Date: 10/19/25                                                        *
;*_________________________________________________________________________*
;*                                                                         *
;*   Author(s):                                                            *
;*        Sunlit                                                           *
;*                                                                         *
;***************************************************************************

	incpublics	contchk.ext

;=====================================================================
; check_connectcont_l
; Detects connected controller types and multitap presence.
; The check will fail if any attached devices aren't a standard
; controller or rumble pad (e.g. SNES mouse, Multi-5, Super Scope)
;=====================================================================
check_connectcont_l
	php
	phb
	ai8
	lda	#0
	pha
	plb

	stz	nmitimen	; disable auto-read
	stz	joyser0

	jsr	Check_AutoReadStopped	; wait until controller reading has stopped

; Get parameters by shifting serial reads into x1/y1
	stz	x1
	stz	y1

	lda	#1
	sta	joyser0
	stz	joyser0

	ldx	#16
.shift_bits_loop
	lda	joyser0
	lsr	a
	rol	x1			; controller 1 parameter bits

	lda	joyser1
	lsr	a
	rol	y1			; controller 2 parameter bits
	dex
	bne	.shift_bits_loop

; If lower nibble of x1 non-zero, fail (something connected where not expected)
	lda	x1
	and	#%00001111
	bne	chk_fail

; Check for multitap on port 1
	jsr	Check_Multi5_cont1
	bcs	chk_fail
not_connected_port1

; Now check port 2 lower nibble
	lda	y1
	and	#%00001111
	bne	chk_fail

; Check for multitap on port 2
	jsr	Check_Multi5_cont2
	bcs	chk_fail
not_connected_port2

chk_done
	stz	joyser0
	plb
	plp
	rtl

; Block rumble if we find an illegal controller
chk_fail
	stz	joyser0
	plb
	plp
	a8
	lda #1
	sta	donotrumble
	rtl

;=====================================================================
; Multitap (Multi-5) detection for controller socket 1
; Returns with carry set if Multi5 present, cleared otherwise
;=====================================================================
	shorta
	shorti
Check_Multi5_cont1
m5_priming
	lda	joyser0
	ora	#%1
	sta	joyser0

m5_scan1
	ldx	#8
m5_scan1_loop
	lda	joyser0
	and	#%00000010
	beq	m5_not_present
	dex
	bne	m5_scan1_loop

m5_clear_mask
	lda	joyser0
	and	#%11111110
	sta	joyser0

m5_scan2
	ldx	#8
m5_scan2_loop
	lda	joyser0
	and	#%00000010
	beq	m5_present
	dex
	bne	m5_scan2_loop

m5_not_present
	clc
	rts

m5_present
	sec
	rts

;=====================================================================
; Multitap (Multi-5) detection for controller socket 2
; Returns with carry set if Multi5 present, cleared otherwise
;=====================================================================
	shorta
	shorti
Check_Multi5_cont2
m5_2_priming
	lda	joyser0
	ora	#%1
	sta	joyser0

m5_2_scan1
	ldx	#8
m5_2_scan1_loop
	lda	joyser1
	and	#%00000010
	beq	m5_2_not_present
	dex
	bne	m5_2_scan1_loop

m5_2_clear_mask
	lda	joyser0
	and	#%11111110
	sta	joyser0

m5_2_scan2
	ldx	#8
m5_2_scan2_loop
	lda	joyser1
	and	#%00000010
	beq	m5_2_present
	dex
	bne	m5_2_scan2_loop

m5_2_not_present
	clc
	rts

m5_2_present
	sec
	rts

;=====================================================================
; Wait until no controller reads are happening
;=====================================================================
	shorta
	shorti
Check_AutoReadStopped
vblank_wait	; Check if VBlank is ongoing
	lda	rdnmir
	bit	#%10000000
	beq	vblank_wait
	lda	rdnmir

delay_600_cycles	; roughly 600 cycles delay
	ldx	#150
delay_loop
	dex
	bne	delay_loop

wait_hvbjoyr		; Check if an auto-read is in progress
	lda	hvbjoyr
	bit	#1
	bne	wait_hvbjoyr
	rts