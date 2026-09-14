asar 1.91
norom
org $0000
arch spc700

incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

; ===========================================
!BASE_ADDR = !gft
spcblock !BASE_ADDR nspc
	dw $0000								; NULL
	dw SF2SELECT_SONG_DATA_E600				; sub 2
	dw SF2SELECT_SONG_DATA_E600				; sub 3
	dw SF2SELECT_SONG_DATA_E600				; sub 4
endspcblock
; ===========================================


; ===========================================
spcblock $E600 nspc
	%INC_SONG(SF2SELECT_SONG_DATA_E600)		; SF2 Select
; ===========================================





; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here