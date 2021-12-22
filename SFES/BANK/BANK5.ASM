

	include	INCLUDE\header.inc
	include	INCLUDE\mapmacs.inc

	include	INCLUDE\stratequ.inc
	include	INCLUDE\mapstructs.inc
	include	EXT\strings.ext
	include	EXT\mario.ext
	include	EXT\dstrats.ext
	include	EXT\d2strats.ext
	include	EXT\d3strats.ext
	include	EXT\pstrats.ext
	include	EXT\pistrats.ext
	include	EXT\pcstrats.ext
	include	EXT\gb2strats.ext
	include	EXT\gstrats.ext
	include	EXT\gstrats2.ext
	include	EXT\gbstrats.ext
	include	EXT\gcstrats.ext
	include	EXT\gistrats.ext
	include	EXT\kstrats.ext
	include	EXT\ga2strats.ext
	include	EXT\ga3strats.ext
	include	EXT\gb3strats.ext
	include	EXT\gb4strats.ext
	include	EXT\shapes.ext
	include	EXT\stratrou.ext
	include	EXT\sgtabs.ext
	include	EXT\gastrats.ext
	include	EXT\main.ext
	include	EXT\bgs.ext
	include	EXT\paths.ext
	include	EXT\blink.ext
	include	EXT\sound.ext
	include	EXT\mdata.ext
	include	EXT\endseq.ext
	include	EXT\windows.ext
	include	EXT\expstrat.ext
	include	EXT\continue.ext
	include	EXT\trans.ext
	include	EXT\planets.ext
	include	EXT\draw.ext
	include	INCLUDE\bgmacs.inc
	include	EXT\bootnmi.ext
real_istrats =	0
	include	ASM\istrats.asm


;------------------------------------------------------------------
	bank	5
	incfile	maps\maplist.asm

	public	bgandccr
	inccru	bgandccr,data\and.ccr
	bankend	5

	bank	6
	incfile	maps\maplist2.asm
	bankend	6
	
	bank	7
	incfile	maps\maplist3.asm
	bankend	7

	bank	8
	incfile	maps\maplist4.asm
	bankend	8
	
	bank	9
	incfile	maps\maplist5.asm
	bankend	9
	
;------------------------------------------------------------------
	include	INCLUDE\tail.inc


