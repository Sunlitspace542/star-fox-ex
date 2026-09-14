asar 1.91
norom
arch spc700
org $0000

incsrc ../LABELS.def	; External Labels File
incsrc ../MACROS.inc	; Macros File

; ===========================================
spcblock !gft nspc
	dw $0000								; sub 1	remove course select SGSOUND2
	dw kazaru								; sub 2
	dw kazaru								; sub 3
	dw kazaru								; sub 4
endspcblock



; ===========================================
spcblock !gft+$8 nspc
	dw wolf									; sub 5
	dw wolf									; sub 6 (extended)
endspcblock



; ===========================================
spcblock !gft+$C nspc
	dw final_fanfare						; sub 7
	dw $0000								; sub 8 filler (don't remove)
endspcblock



; ===========================================
spcblock !gft+$20 nspc
	dw EXT_SONG_Player_Down_Band_FCCE		; sub 17	player down (band) SGSOUND3
	dw into_the_pipe						; sub 18
	dw mario_bros							; sub 19
endspcblock


; ===========================================
spcblock $E000 nspc
kazaru:
	print "kazaru        $",pc
	incbin "SONG_DATA_Assult_on_Kazaru_v2_E000.bin"

wolf:
	print "wolf          $",pc
	incbin "SONG_DATA_Wolf_E614.bin"

into_the_pipe:
	print "pipe          $",pc
	incbin "SONG_DATA_Into_the_Pipe_v2_ECD3.bin"

mario_bros:
	print "mario 2       $",pc
	incbin "SONG_DATA_Brobot_Attack_EFF6.bin"
;	fillbyte $00
;	fill $14C

final_fanfare:
	print "final fanfare $",pc
	incbin "SONG_DATA_final_fanfare_F4F6.bin"

free_space_begin:
	print "free space    $",pc

song_data_00_end:

	print " "
	print "free bytes available $",hex(EXT_SONG_Player_Down_Band_FCCE-song_data_00_end)

; ============================
; end of data, start execution
; ============================
endspcblock execute $400									; start execution here
