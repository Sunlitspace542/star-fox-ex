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
	dw Exploratorium_E600					; sub 2
	dw Exploratorium_E600					; sub 3
	dw Exploratorium_E600					; sub 4
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $E600
spcblock !BASE_ADDR nspc
	%INC_SONG(Exploratorium_E600)			; Corneria
; ===========================================





; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here