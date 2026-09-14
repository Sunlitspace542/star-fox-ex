asar 1.91
norom
arch spc700
org $0000

incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

; ===========================================
spcblock EXT_SONG_Course_Select_F4B5 nspc
	%INC_SONG(SONG_DATA_map_F4B5)

; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here
