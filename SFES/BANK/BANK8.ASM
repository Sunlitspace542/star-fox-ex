	include	INCLUDE\header.inc
	include	INCLUDE\strathdr.inc
	include	EXT\gstrats.ext
	include	EXT\gistrats.ext
	include	EXT\gcstrats.ext
	include	EXT\pistrats.ext
	include	EXT\pcstrats.ext
	include	EXT\pstrats.ext
	include	EXT\dstrats.ext
	include	EXT\ga2strats.ext
	include	EXT\expstrat.ext
	include	EXT\bootnmi.ext
	include	EXT\paths.ext
	bank	38
	incfile	ASM\gbstrats.asm


	public	bgmd
	public	bgmdlen
bgmd	incbinfile	snd\sgbgmd.bin
bgmdlen	equ	*-bgmd

	bankend	38

	bank	39
	incfile	ASM\gastrats.asm
	bankend	39	
	include	INCLUDE\tail.inc


