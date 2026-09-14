asar 1.91
norom
org $0000
arch spc700

incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

; ===========================================
!BASE_ADDR = !gft+$8
spcblock !BASE_ADDR nspc
	dw Rexius_EC00							; sub 5
	dw Rexius_EC00							; sub 6
endspcblock
; ===========================================



; ===========================================
!BASE_ADDR = $EC00
spcblock !BASE_ADDR nspc
	%INC_SONG(Rexius_EC00)					; Rexius
; ===========================================





; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here