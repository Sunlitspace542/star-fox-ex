asar 1.91
norom
org $0000
arch spc700

incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

; ===========================================
!BASE_ADDR = !gft+$8
spcblock !BASE_ADDR nspc
	dw Zeromus_ED00							; sub 5
	dw Zeromus_ED00							; sub 6
	dw EXT_SONG_Fanfare_Band_F8FE			; sub 7 fanfare (band) SGSOUND3
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw $0000								; NULL
	dw EXT_SONG_Player_Down_Band_FCCE		; sub 17 player down (band) SGSOUND3
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $ED00
spcblock !BASE_ADDR nspc
	%INC_SONG(Zeromus_ED00)					; Zeromus
; ===========================================





; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here