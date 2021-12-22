	include	INCLUDE\header.inc
	include	INCLUDE\shmacs.inc


	include	INCLUDE\stratmac.inc
	include	INCLUDE\stratlib.inc

	include	EXT\stratrou.ext
	include	EXT\game.ext
	include	EXT\world.ext
	include	EXT\main.ext
	include	EXT\draw.ext
	include	EXT\mario.ext
	include	EXT\mother.ext
	include	EXT\sound.ext
	include	EXT\trans.ext
	include	EXT\sprites.ext
	include	EXT\windows.ext

	include	EXT\gstrats.ext
	include	EXT\dstrats.ext
	include	EXT\kstrats.ext
	include	EXT\d2strats.ext
	include	EXT\gastrats.ext
	include	EXT\ga2strats.ext
	include	EXT\gbstrats.ext
	include	EXT\gb2strats.ext
	include	EXT\gb3strats.ext
	include	EXT\gistrats.ext
	include	EXT\gcstrats.ext
	include	EXT\pstrats.ext
	include	EXT\pistrats.ext
	include	EXT\pcstrats.ext
	include	EXT\expstrat.ext

	include	EXT\coltabs.ext
	include	EXT\bootnmi.ext
	include	EXT\colboxes.ext
	include	EXT\paths.ext
	include	EXT\mem.ext
	include	EXT\endseq.ext

	bank	0		;Bank 0

	db	0,0,0,0,0,0



Do_HDR	=	1
	incfile	SHAPES\ushapes.asm
	incfile	SHAPES\shapes.asm
	incfile	SHAPES\shapes2.asm
	incfile	SHAPES\shapes3.asm
	incfile	SHAPES\pshapes.asm
	incfile	SHAPES\shapes4.asm
	incfile	SHAPES\shapes5.asm
	incfile	SHAPES\kshapes.asm
	incfile	SHAPES\shapes8.asm
	incfile	SHAPES\shapes9.asm
	incfile	SHAPES\shapes10.asm
	incfile	SHAPES\shapes11.asm
	incfile	SHAPES\shapes12.asm
Do_HDR	=	0



start	jmp.l	startboot


cop_ve
abort_ve
nmi_ve
irq_ve
cop_vn
reset_vn
break_vn
abort_vn
	rti

	incfile	ASM\sgtabs.asm
	incfile	ASM\sgdata.asm
	incfile	data\arctan.asm	
	bankend	0

	bank	42
	public	bgandpcr
	IFEQ	CONTEST
	inccru	bgandpcr,data\and.pcr
	ELSEIF
bgandpcr
	ENDC
	incfile ASM\istrats.asm
	incfile ASM\d3strats.asm

	bankend 42
	
	

;	bank	47
;	include	check5.x65	; Macro 
;	bankend	47

	org	$00ffc0,$7fc0

; american
	db	"STAR FOX ES          "
	db	$20,$15,$a,$0,$1,$1,$0,$ff,$ff,$0,$0
;------------------------------------

;Hardware Vectors	-------------------------
	org	$00ffe4,$7fe4
	dw	cop_vn
	dw	break_vn
	dw	abort_vn
	dw	$0108
	dw	$0000
	dw	$010c

	org	$00fff4,$7ff4
	dw	cop_ve
	dw	0
	dw	abort_ve
	dw	nmi_ve
	dw	start
	dw	irq_ve




;------------------------------------

	include	INCLUDE\tail.inc


