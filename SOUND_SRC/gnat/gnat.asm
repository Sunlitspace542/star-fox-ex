asar 1.91
norom
arch spc700
org $0000

incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

; ===========================================
spcblock $E600 nspc
	%INC_SONG(SONG_DATA_GNAT_E600)
endspcblock



; ===========================================
spcblock !gft nspc
	dw $0000
	dw SONG_DATA_GNAT_E600
	dw SONG_DATA_GNAT_E600
	dw SONG_DATA_GNAT_E600



; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here
