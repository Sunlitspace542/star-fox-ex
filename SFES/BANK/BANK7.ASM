	include	INCLUDE\header.inc
	include	INCLUDE\strathdr.inc
	include	EXT\gstrats.ext
	include	EXT\coltabs.ext
	include	EXT\gastrats.ext
	include	EXT\ga2strats.ext
	include	EXT\gb2strats.ext
	include	EXT\gcstrats.ext
	include	EXT\pistrats.ext
	include	EXT\pstrats.ext
	include	EXT\dstrats.ext
	include	EXT\paths.ext
	include	INCLUDE\shmacs.inc
	include	EXT\expstrat.ext
	include	EXT\bootnmi.ext
	include	EXT\d3strats.ext

	bank	35
	incfile	ASM\gistrats.asm
	incfile	ASM\gb3strats.asm
	bankend	35

	bank	36
	incfile	ASM\gb4strats.asm
	bankend	36
	
	bank	37
	incfile	ASM\d2strats.asm
	bankend	37
	
	include	INCLUDE\tail.inc

