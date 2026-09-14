asar 1.91
norom
org $0000
arch spc700

incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

; ===========================================
spcblock !gft+$8 nspc
	dw SONG_DATA_SF2_CES_unused_EC20		; sub 4
	dw SONG_DATA_SF2_CES_unused_EC20		; sub 5
endspcblock
; ===========================================



; ===========================================
spcblock $EC20 nspc
	%INC_SONG(SONG_DATA_SF2_CES_unused_EC20)
; ===========================================


; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here