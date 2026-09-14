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
	dw Eschatos_3F00						; sub 2
	dw Eschatos_3F00						; sub 3
	dw Eschatos_3F00						; sub 4
	dw Eschatos_F29A						; sub 5
	dw Eschatos_F29A						; sub 6
endspcblock
; ===========================================

; ===========================================
!BASE_ADDR = $3F00
spcblock !BASE_ADDR nspc
	%INC_SONG(Eschatos_3F00)				; Eschatos song data
endspcblock
; ===========================================

; ===========================================
!BASE_ADDR = $DAC0
spcblock !BASE_ADDR nspc
	%INC_SONG(Eschatos_DAC0)				; Eschatos song data
	%INC_SONG(Eschatos_F29A)				; Eschatos song data


; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here