asar 1.91
norom
arch spc700
org $0000

incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

; ===========================================
spcblock $E600 nspc
	%INC_SONG(SMB3_Swimming_E600)			; SMB3 Water
endspcblock
; ===========================================


; ===========================================
spcblock !gft nspc
	dw $0000								; sub 1
	dw SMB3_Swimming_E600					; sub 2
	dw SMB3_Swimming_E600					; sub 3
	dw SMB3_Swimming_E600					; sub 4
; ===========================================


; ============================
; end of data, start execution
; ============================
endspcblock execute $400					; start execution here
