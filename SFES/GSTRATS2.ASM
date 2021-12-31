	shorta
	longi

	INCPUBLICS	gstrats2.ext


	




	strats_start


selectnextship_l
	jsr	selectnextship
	rtl
	
selectnextship
	php								;Push processor Status (?)			;---;			|
	phb								;Push data bank register (?)		;---;			|
	a8i16							;8 bit accumulator, 16 bit index	;---;			|
																		;---;
	lda	#$7e						;Load $7E bank						;---;	
	plb								;Pull data bank register			;---;

	lda	curr_ship
	jsl			select_nextship_l
	plp
	rts

selectprevship_l
	jsr	selectprevship
	rtl

selectprevship
	php								;Push processor Status (?)			;---;			|
	phb								;Push data bank register (?)		;---;			|
	a8i16							;8 bit accumulator, 16 bit index	;---;			|
																		;---;
	lda	#$7e						;Load $7E bank						;---;	
	plb								;Pull data bank register			;---;
	lda	curr_ship

	jsl			select_prevship_l
	plp
	rts

nextweapon_l
	jsr	nextweapon
	rtl
	
nextweapon
	lda	weaponnumberpone
	cmp	#29
	beq	.goto98
	cmp	#99
	lbeq	.weapreset
	inc	weaponnumberpone
	s_copy_var2alvar	W,x,al_weaponnum,weaponnumberpone
	s_copy_var2var		B,shiptemp,curr_ship
	lda	shiptemp
	cmp	#0
	beq	.calc6
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
.calc6
	;s_copy_var2alvar	W,x,al_shipnum,shiptemp
	lda	weaponnumberpone
	cmp	#17
	lbeq	.resetweaptable


	lda	weapnextptr
	sta	weapptr
	jmp	.noch
.goto98
	lda	#98
	sta	weaponnumberpone
	s_copy_var2alvar	W,x,al_weaponnum,weaponnumberpone
	s_copy_var2var		B,shiptemp,curr_ship
	lda	shiptemp
	cmp	#0
	beq	.calc99
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
.calc99
	;s_copy_var2alvar	W,x,al_shipnum,shiptemp
	lda	weaponnumberpone
	cmp	#17
	lbeq	.resetweaptable

	lda	weapnextptr
	sta	weapptr
	bra	.noch
.weapreset
	lda	#0
	sta	weaponnumberpone
	stz	weapptr
	stz	weapnextptr
	s_copy_var2alvar	W,x,al_weaponnum,weaponnumberpone
	s_copy_var2var		B,shiptemp,curr_ship
	lda	shiptemp
	cmp	#0
	beq	.calc9
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
.calc9
	;s_copy_var2alvar	W,x,al_shipnum,shiptemp
	lda	weaponnumberpone
	cmp	#17
	beq	.resetweaptable
	lda	weapnextptr
	sta	weapptr
	bra	.noch
.resetweaptable
	stz	weapptr
	stz	weapnextptr
.noch
	rts

prevweapon_l
	jsr	prevweapon
	rtl
	
prevweapon
	lda	weaponnumberpone
	cmp	#0
	lbeq	.weaprestart
	cmp	#17
	beq	.bridgetables
	cmp	#98
	lbeq	.from98
	dec	weaponnumberpone
	s_copy_var2alvar	W,x,al_weaponnum,weaponnumberpone
	s_copy_var2var		B,shiptemp,curr_ship
	lda	shiptemp
	cmp	#0
	beq	.calc8
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
.calc8
	lda	weaponnumberpone
	cmp	#17
	bpl	.looper1secondtable
	lda	weapptr
	tax
	dex
.looper1
	dex
	lda.l	weaponslist,x
	lbeq	.doneloop1
	cmp	#1

	beq	.doneloop1
	bra	.looper1
.looper1secondtable
	lda	weapptr
	tax
	dex
.looper12
	dex
	lda.l	weaponslist2,x
	lbeq	.doneloop1
	cmp	#1

	beq	.doneloop1
	bra	.looper12

	
.doneloop1

	dex
	txa
	sta	weapptr
	
	jmp	.nochh
;-------	
.bridgetables
	dec	weaponnumberpone
	s_copy_var2alvar	W,x,al_weaponnum,weaponnumberpone
	s_copy_var2var		B,shiptemp,curr_ship
	lda	shiptemp
	cmp	#0
	beq	.calc8t
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
.calc8t
	lda	#194
	sta	weapptr
	jmp	.nochh
;------------
.from98
	lda	#29
	sta	weaponnumberpone
	s_copy_var2alvar	W,x,al_weaponnum,weaponnumberpone
	s_copy_var2var		B,shiptemp,curr_ship
	lda	shiptemp
	cmp	#0
	beq	.calc999
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
.calc999
	lda	weaponnumberpone
	cmp	#17
	bpl	.looper2secondtable
	lda	weapptr
	tax
	dex
.looper2
	dex
	lda.l	weaponslist,x
	beq	.doneloop2
	cmp	#1
	beq	.doneloop2
	bra	.looper2
.looper2secondtable	
	lda	weapptr
	tax
	dex
.looper22
	dex
	lda.l	weaponslist2,x
	beq	.doneloop2
	cmp	#1
	beq	.doneloop2
	bra	.looper22
	
.doneloop2

	dex
	txa
	sta	weapptr



	bra	.nochh
.weaprestart
	lda	#99
	sta	weaponnumberpone
	s_copy_var2alvar	W,x,al_weaponnum,weaponnumberpone
	s_copy_var2var		B,shiptemp,curr_ship
	lda	shiptemp
	cmp	#0
	beq	.calc7
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
	dec	shiptemp
.calc7
	lda	#187			;pointer for weapon 99 text start position
	sta	weapptr



	bra	.nochh
.nochh
	rts


assault1_Istrat			;Peppy
	s_start_strat
	s_set_alptrs	x,assault1_strat,hitflash_Istrat,0
	s_set_aldata	x,#100,#friendAP
	s_set_colltype	x,friend
	s_setnoremove_behind	x
	s_set_alsflag	x,shadow
	s_set_alsflag		x,playerobj
	s_end_strat
assault1_strat
	s_start_strat
	s_set_alvar			B,x,al_openal,#0

	s_gen_3dvecs		x,al_roty,al_rotx,al_speed
	s_add_vecs2pos		x
	s_jmp_higher		x,#-30,.ok
	s_set_alvar		W,x,al_worldy,#-30
.ok

	lda	twoplayer
	cmp	#0
	lbeq	nomorep2
	s_set_objtobeplayer	y
	s_copy_alvar2alvar	B,x,al_speed,y,al_speed
	a16
	lda.w		al_worldx,y
	clc
	adc	#80
	sta	playeronex
	lda.w		al_worldy,y
	sta	playeroney
	a8
;	s_copy_vecs		x,y 

	s_copy_alvar2alvar.w	W,x,al_worldz,y,al_worldz
	s_add_alvar		W,x,al_worldz,#190

	s_jmp_alvarZERO		W,x,al_sword1,.dofind
	s_set_objtobealvar	y,x,al_sword1
	s_jmp_Zdistless		x,y,#400,.dofind2
;	s_jmp_alvarNOTZERO.w	B,y,al_HP,.skipfind
.dofind2	LOCAL
	s_set_alvar		W,x,al_sword1,#0

.dofind	s_set_find		0
.find	
	s_find_radiusobj	y,x,#0,#0,#2000,.nofind
	s_jmp_alvarEQ.w		B,y,al_openal,#2,.find
	s_jmp_alvarEQ.w		B,y,al_openal,#3,.find
;	s_jmp_alsflag		y,lockon,.find
;	s_jmpNOT_colltype	y,Zenemy,.find
	s_jmp_colltype	y,friend,.find
	s_jmp_colltype	y,laser,.find
	s_jmp_alsflag		y,nohitaffect,.find
	s_jmp_alsflag		y,colldisable,.find
	s_jmp_alvarEQ.w		B,y,al_hp,#hardHP,.find
	a16
	lda.w			al_worldx,y
	sec
	sbc			playeronex
	bpl			.nneg
	nega
.nneg
	sta			tpa
	
	lda.w			al_worldz,y
	sec
	sbc			player_posz
	lbmi			.find	

	cmp			tpa
	a8
	lbmi			.find	

	s_set_alvartobeobj	x,al_sword1,y
	s_set_alsflag		y,lockon
	lda	#1
	sta	testforassault

.skipfind
	s_jmp_notdelay		2,.found
	s_weapon_pos		#0,#0,#80
	s_weapon_rot		#0,#0
	phy
	s_fire_weapon		x,ELASER
	ply
;	inc	teamshots
;	lda	teamshots
;	cmp	#60
;	lbpl	.end
	s_brl			.found
.nofind
	inc	testforassault
	lda			testforassault
	cmp	#1
	beq	.1
	bra	.7
.1
	s_jmp			assault2_strat.dofind2
.7		;exit
	s_jmp			assaultall_strat.dofind2
	s_achase_alvar		B,x,al_roty,#0,5
	s_achase_alvar		B,x,al_rotx,#0,5

	s_achase_alvar		W,x,al_worldx,playeronex,5
	s_achase_alvar		W,x,al_worldy,playeroney,5


	s_brl			.cont

.found
;	s_set_alsflag		y,hitflash
	s_obj2obj_3dangle	x,y,al_roty,al_rotx,5

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	s_jmp_alvarless		W,x,al_worldy,maxpmoveY,.nfpbottom	;
	s_set_alvar		W,x,al_worldy,maxpmoveY					;

	s_test_var		B,pmovelimitAND,#pml_Bbottom			;
	s_bne			.nfpbottom								;
	s_or_var		B,arrows,#sprar_down					;
	s_sub_alvar		W,x,al_worldy,#5
	bra	.top
.nfpbottom													;limit up and down movement
													;
;	s_jmp_alvarlessEQ		W,x,al_worldy,maxpmoveY-10,.change
;	bra	.top
;.change
;	s_achase_alvar		B,x,al_rotx,#0,1															;
	
.top
	s_jmp_alvarmore		W,x,al_worldy,minpmoveY,.nfptop		;
	s_set_alvar		W,x,al_worldy,minpmoveY					;
	s_or_var		B,arrows,#sprar_up						;
;	s_add_alvar		W,x,al_worldy,#5
.nfptop														;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	s_jmp_alvarmore	W,x,al_worldX,minpmoveX,.nminX
	s_set_alvar	W,x,al_worldX,minpmoveX
	s_or_var		B,arrows,#sprar_left
	s_add_alvar		W,x,al_worldx,#5
.nminX
	s_jmp_alvarless	W,x,al_worldX,maxpmoveX,.nmaxX
	s_set_alvar	W,x,al_worldX,maxpmoveX						;limit left/right movement
	s_or_var		B,arrows,#sprar_right
	s_sub_alvar		W,x,al_worldx,#5
.nmaxX
;-----------------------------------------------------------------------------------
.cont

	LDA	AL_ROTY,X
	ASL	A
	ASL	A
	STA	AL_ROTZ,X
	
	s_end_strat

.end

;	stz	teamshots
	stz	teamon
	s_remove_offscn	x

	s_set_path		x,flyawayplease
	
.endrem	
	s_set_strat		x,0
	s_end_strat
;---------------------------------------------------------------------	

assault2_Istrat			;Falco
	s_start_strat
	s_set_alptrs	x,assault2_strat,hitflash_Istrat,0
	s_set_aldata	x,#100,#friendAP
	s_set_colltype	x,friend
	s_setnoremove_behind	x
	s_set_alsflag	x,shadow
	s_set_alsflag		x,playerobj
	s_end_strat
assault2_strat
	s_start_strat

	lda	#4
	sta	testforassault
	s_gen_3dvecs		x,al_roty,al_rotx,al_speed
	s_add_vecs2pos		x
	s_jmp_higher		x,#-30,.ok
	s_set_alvar		W,x,al_worldy,#-30
.ok

	lda	twoplayer
	cmp	#0
	lbeq	nomorep2
	s_set_objtobeplayer	y
	s_copy_alvar2alvar	B,x,al_speed,y,al_speed
	a16
	lda.w		al_worldx,y
	sec
	sbc	#120
	sta	playeronex
	lda.w		al_worldy,y
	sta	playeroney
	a8
;	s_copy_vecs		x,y 

	s_copy_alvar2alvar.w	W,x,al_worldz,y,al_worldz
	s_add_alvar		W,x,al_worldz,#250

	s_jmp_alvarZERO		W,x,al_sword1,.dofind
	s_set_objtobealvar	y,x,al_sword1
	s_jmp_Zdistless		x,y,#400,.dofind2
;	s_jmp_alvarNOTZERO.w	B,y,al_HP,.skipfind
.dofind2	LOCAL
	s_set_alvar		W,x,al_sword1,#0

.dofind	s_set_find		0
.find	
	s_find_radiusobj	y,x,#0,#0,#2000,.nofind
	
;	s_jmp_alsflag		y,lockon,.find
;	s_jmpNOT_colltype	y,Zenemy,.find
	s_jmp_alvarEQ.w		B,y,al_openal,#1,.find
	s_jmp_alvarEQ.w		B,y,al_openal,#3,.find
	s_jmp_colltype	y,friend,.find
	s_jmp_colltype	y,laser,.find
	s_jmp_alsflag		y,nohitaffect,.find
	s_jmp_alsflag		y,colldisable,.find
	s_jmp_alvarEQ.w		B,y,al_hp,#hardHP,.find
	a16
	lda.w			al_worldx,y
	sec
	sbc			playeronex
	bpl			.nneg
	nega
.nneg
	sta			tpa
	
	lda.w			al_worldz,y
	sec
	sbc			player_posz
	lbmi			.find	

	cmp			tpa
	a8
	lbmi			.find	

	s_set_alvartobeobj	x,al_sword1,y
	s_set_alsflag		y,lockon
	s_set_alvar			B,y,al_openal,#2

.skipfind
	s_jmp_notdelay		2,.found
	s_weapon_pos		#0,#0,#80
	s_weapon_rot		#0,#0
	phy
	s_fire_weapon		x,ELASER
	ply
;	inc	teamshots
;	lda	teamshots
;	cmp	#60
;	lbpl	.end
	s_brl			.found
.nofind
	inc	testforassault
	lda	testforassault
	cmp	#5
	beq	.2
	bra	.11
.2
	s_jmp			assault3_strat.dofind2

.11	;exit
	s_jmp			assaultall_strat.dofind2	
	s_achase_alvar		B,x,al_roty,#0,5
	s_achase_alvar		B,x,al_rotx,#0,5

	s_achase_alvar		W,x,al_worldx,playeronex,5
	s_achase_alvar		W,x,al_worldy,playeroney,5


	s_brl			.cont

.found
;	s_set_alsflag		y,hitflash
	s_obj2obj_3dangle	x,y,al_roty,al_rotx,4

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	s_jmp_alvarless		W,x,al_worldy,maxpmoveY,.nfpbottom	;
	s_set_alvar		W,x,al_worldy,maxpmoveY					;

	s_test_var		B,pmovelimitAND,#pml_Bbottom			;
	s_bne			.nfpbottom								;
	s_or_var		B,arrows,#sprar_down					;
	s_sub_alvar		W,x,al_worldy,#5
	bra	.top
.nfpbottom													;limit up and down movement
													;
;	s_jmp_alvarlessEQ		W,x,al_worldy,maxpmoveY-10,.change
;	bra	.top
;.change
;	s_achase_alvar		B,x,al_rotx,#0,1															;
	
.top
	s_jmp_alvarmore		W,x,al_worldy,minpmoveY,.nfptop		;
	s_set_alvar		W,x,al_worldy,minpmoveY					;
	s_or_var		B,arrows,#sprar_up						;
;	s_add_alvar		W,x,al_worldy,#5
.nfptop														;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	s_jmp_alvarmore	W,x,al_worldX,minpmoveX,.nminX
	s_set_alvar	W,x,al_worldX,minpmoveX
	s_or_var		B,arrows,#sprar_left
	s_add_alvar		W,x,al_worldx,#5
.nminX
	s_jmp_alvarless	W,x,al_worldX,maxpmoveX,.nmaxX
	s_set_alvar	W,x,al_worldX,maxpmoveX						;limit left/right movement
	s_or_var		B,arrows,#sprar_right
	s_sub_alvar		W,x,al_worldx,#5
.nmaxX
;-----------------------------------------------------------------------------------
.cont

	LDA	AL_ROTY,X
	ASL	A
	ASL	A
	STA	AL_ROTZ,X
	
	s_end_strat

.end

;	stz	teamshots
	stz	teamon
	s_remove_offscn	x

	s_set_path		x,flyawayplease
	
.endrem	
	s_set_strat		x,0
	s_end_strat





assault3_Istrat			;Slippy
	s_start_strat
	s_set_alptrs	x,assault3_strat,hitflash_Istrat,0
	s_set_aldata	x,#100,#friendAP
	s_set_colltype	x,friend
	s_setnoremove_behind	x
	s_set_alsflag	x,shadow
	s_set_alsflag		x,playerobj
	s_end_strat
assault3_strat
	s_start_strat
	lda	#8
	sta	testforassault

	s_gen_3dvecs		x,al_roty,al_rotx,al_speed
	s_add_vecs2pos		x
	s_jmp_higher		x,#-30,.ok
	s_set_alvar		W,x,al_worldy,#-30
.ok

	lda	twoplayer
	cmp	#0
	lbeq	nomorep2
	s_set_objtobeplayer	y
	s_copy_alvar2alvar	B,x,al_speed,y,al_speed
	a16
	lda.w		al_worldx,y
	sta	playeronex
	lda.w		al_worldy,y
	sec
	sbc	#100
	sta	playeroney
	a8
;	s_copy_vecs		x,y 

	s_copy_alvar2alvar.w	W,x,al_worldz,y,al_worldz
	s_add_alvar		W,x,al_worldz,#140

	s_jmp_alvarZERO		W,x,al_sword1,.dofind
	s_set_objtobealvar	y,x,al_sword1
	s_jmp_Zdistless		x,y,#400,.dofind2
;	s_jmp_alvarNOTZERO.w	B,y,al_HP,.skipfind
.dofind2	LOCAL
	s_set_alvar		W,x,al_sword1,#0

.dofind	s_set_find		0
.find	
	s_find_radiusobj	y,x,#0,#0,#2000,.nofind
	s_jmp_alvarEQ.w		B,y,al_openal,#1,.find
	s_jmp_alvarEQ.w		B,y,al_openal,#2,.find	
;	s_jmp_alsflag		y,lockon,.find
;	s_jmpNOT_colltype	y,Zenemy,.find

	s_jmp_colltype	y,friend,.find
	s_jmp_colltype	y,laser,.find
	s_jmp_alsflag		y,nohitaffect,.find
	s_jmp_alsflag		y,colldisable,.find
	s_jmp_alvarEQ.w		B,y,al_hp,#hardHP,.find
	a16
	lda.w			al_worldx,y
	sec
	sbc			playeronex
	bpl			.nneg
	nega
.nneg
	sta			tpa
	
	lda.w			al_worldz,y
	sec
	sbc			player_posz
	lbmi			.find	

	cmp			tpa
	a8
	lbmi			.find	

	s_set_alvartobeobj	x,al_sword1,y
	s_set_alsflag		y,lockon
	s_set_alvar			B,y,al_openal,#3

.skipfind
	s_jmp_notdelay		2,.found
	s_weapon_pos		#0,#0,#80
	s_weapon_rot		#0,#0
	phy
	s_fire_weapon		x,ELASER
	ply
;	inc	teamshots
;	lda	teamshots
;	cmp	#60
;	lbpl	.end
	s_brl			.found
.nofind

	inc	testforassault
	lda	testforassault
	cmp	#9
	beq	.6
	bra	.3
.6
	s_jmp			assault1_strat.dofind2

.3		;exit
	s_jmp			assaultall_strat.dofind2
	s_achase_alvar		B,x,al_roty,#0,5
	s_achase_alvar		B,x,al_rotx,#0,5

	s_achase_alvar		W,x,al_worldx,playeronex,5
	s_achase_alvar		W,x,al_worldy,playeroney,5


	s_brl			.cont

.found
;	s_set_alsflag		y,hitflash
	s_obj2obj_3dangle	x,y,al_roty,al_rotx,3

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	s_jmp_alvarless		W,x,al_worldy,maxpmoveY,.nfpbottom	;
	s_set_alvar		W,x,al_worldy,maxpmoveY					;

	s_test_var		B,pmovelimitAND,#pml_Bbottom			;
	s_bne			.nfpbottom								;
	s_or_var		B,arrows,#sprar_down					;
	s_sub_alvar		W,x,al_worldy,#5
	bra	.top
.nfpbottom													;limit up and down movement
													;
;	s_jmp_alvarlessEQ		W,x,al_worldy,maxpmoveY-10,.change
;	bra	.top
;.change
;	s_achase_alvar		B,x,al_rotx,#0,1															;
	
.top
	s_jmp_alvarmore		W,x,al_worldy,minpmoveY,.nfptop		;
	s_set_alvar		W,x,al_worldy,minpmoveY					;
	s_or_var		B,arrows,#sprar_up						;
;	s_add_alvar		W,x,al_worldy,#5
.nfptop														;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	s_jmp_alvarmore	W,x,al_worldX,minpmoveX,.nminX
	s_set_alvar	W,x,al_worldX,minpmoveX
	s_or_var		B,arrows,#sprar_left
	s_add_alvar		W,x,al_worldx,#5
.nminX
	s_jmp_alvarless	W,x,al_worldX,maxpmoveX,.nmaxX
	s_set_alvar	W,x,al_worldX,maxpmoveX						;limit left/right movement
	s_or_var		B,arrows,#sprar_right
	s_sub_alvar		W,x,al_worldx,#5
.nmaxX
;-----------------------------------------------------------------------------------
.cont

	LDA	AL_ROTY,X
	ASL	A
	ASL	A
	STA	AL_ROTZ,X
	
	s_end_strat

.end

;	stz	teamshots
	stz	teamon
	s_remove_offscn	x

	s_set_path		x,flyawayplease
	
.endrem	
	s_set_strat		x,0
	s_end_strat

	
assaultall_strat
.dofind2	LOCAL
	s_set_alvar		W,x,al_sword1,#0

.dofind	s_set_find		0
.find	
	s_find_radiusobj	y,x,#0,#0,#3000,.nofind
;	s_jmp_alsflag		y,lockon,.find
;	s_jmpNOT_colltype	y,Zenemy,.find
	s_jmp_colltype	y,friend,.find
	s_jmp_colltype	y,laser,.find
	s_jmp_alsflag		y,nohitaffect,.find
	s_jmp_alsflag		y,colldisable,.find
	s_jmp_alvarEQ.w		B,y,al_hp,#hardHP,.find
	a16
	lda.w			al_worldx,y
	sec
	sbc			playeronex
	bpl			.nneg
	nega
.nneg
	sta			tpa
	
	lda.w			al_worldz,y
	sec
	sbc			player_posz
	lbmi			.find	

	cmp			tpa
	a8
	lbmi			.find	

	s_set_alvartobeobj	x,al_sword1,y
	s_set_alsflag		y,lockon
	lda	#1
	sta	testforassault

.skipfind
	s_jmp_notdelay		2,.found
	s_weapon_pos		#0,#0,#80
	s_weapon_rot		#0,#0
	phy
	s_fire_weapon		x,ELASER
	ply
;	inc	teamshots
;	lda	teamshots
;	cmp	#60
;	lbpl	.end
	s_brl			.found
.nofind
	inc	testforassault
	lda			testforassault
	cmp	#1
	beq	.1
	bra	.7
.1
	s_jmp			assault2_strat.dofind2
.7		;exit

	s_achase_alvar		B,x,al_roty,#0,5
	s_achase_alvar		B,x,al_rotx,#0,5

	s_achase_alvar		W,x,al_worldx,playeronex,5
	s_achase_alvar		W,x,al_worldy,playeroney,5


	s_brl			.cont

.found
;	s_set_alsflag		y,hitflash
	s_obj2obj_3dangle	x,y,al_roty,al_rotx,3

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	s_jmp_alvarless		W,x,al_worldy,maxpmoveY,.nfpbottom	;
	s_set_alvar		W,x,al_worldy,maxpmoveY					;

	s_test_var		B,pmovelimitAND,#pml_Bbottom			;
	s_bne			.nfpbottom								;
	s_or_var		B,arrows,#sprar_down					;
	s_sub_alvar		W,x,al_worldy,#5
	bra	.top
.nfpbottom													;limit up and down movement
													;
;	s_jmp_alvarlessEQ		W,x,al_worldy,maxpmoveY-10,.change
;	bra	.top
;.change
;	s_achase_alvar		B,x,al_rotx,#0,1															;
	
.top
	s_jmp_alvarmore		W,x,al_worldy,minpmoveY,.nfptop		;
	s_set_alvar		W,x,al_worldy,minpmoveY					;
	s_or_var		B,arrows,#sprar_up						;
;	s_add_alvar		W,x,al_worldy,#5
.nfptop														;

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	s_jmp_alvarmore	W,x,al_worldX,minpmoveX,.nminX
	s_set_alvar	W,x,al_worldX,minpmoveX
	s_or_var		B,arrows,#sprar_left
	s_add_alvar		W,x,al_worldx,#5
.nminX
	s_jmp_alvarless	W,x,al_worldX,maxpmoveX,.nmaxX
	s_set_alvar	W,x,al_worldX,maxpmoveX						;limit left/right movement
	s_or_var		B,arrows,#sprar_right
	s_sub_alvar		W,x,al_worldx,#5
.nmaxX
;-----------------------------------------------------------------------------------
.cont

	LDA	AL_ROTY,X
	ASL	A
	ASL	A
	STA	AL_ROTZ,X
	
	s_end_strat

.end

;	stz	teamshots
	stz	teamon
	s_remove_offscn	x

	s_set_path		x,flyawayplease
	
.endrem	
	s_set_strat		x,0
	s_end_strat


nomorep2
	lda	#0
	sta	twoplayer
	lda	#1
	sta	dohofs
	lda	#1
	sta	dovofs
	stz	noxrot
	stz	playertwoactivated
	s_playerfly_mode	planet
	lda	shpmode
	beq	.normdist
	s_set_var    W,viewdist,#160
	s_set_var    W,outviewdist,#160
	s_set_var    W,outdist,#160
	bra	.donedist
.normdist
	s_set_var    W,viewdist,#120
	s_set_var    W,outviewdist,#120
	s_set_var    W,outdist,#120
.donedist
	stz	viewtype
	lda	#0
	sta.l	m_damagetwo
	stz	speccnttwo
	s_remove_obj	x
	s_end_strat
	

activatesecondplayer_l
	jsr	activatesecondplayer
	rtl
	
activatesecondplayer
	stz	playertwoready
	s_set_var		B,firedelaytwo,#1
	s_set_var		B,specialdelaytwo,#0	
	stz	debugalien
	s_set_var		B,viewtype,#viewtype_twop ;!viewtype_toobj
	s_or_var	B,gameflags,#gf_viewrot
	s_copy_var2var	W,speccnttwo,specwepcnttootemp
	lda	#1
	sta	twoplayer

	s_set_var	W,viewdist,#400
	s_set_var	W,outviewdist,#400
	s_set_var	W,outdist,#400

	stz	dovofs			;Disable tilt in 2p mode
	stz	dohofs			;Disable BG scrolling left/right

	lda	playertwocpuactivated
	cmp	#1
	beq	.cpu
	cmp	#2
	lbeq	.cpuplus
	cmp	#3
	lbeq	.assault
	lda	shpmode
	beq	.n1
	s_make_obj		#player2shparwing,.finishedthanks1
	s_set_strat		y,twoplayer_Istrat	
	jmp	.finishedthanks1
.n1
	s_make_obj		#playertwo1,.finishedthanks1
	s_set_strat		y,twoplayer_Istrat	
	jmp	.finishedthanks1
.cpu
	lda	shpmode
	beq	.n2
	s_make_obj		#player2shparwing,.finishedthanks1
	s_set_strat		y,twoplayercpu_Istrat	
	jmp	.finishedthanks1
.n2
	s_make_obj		#playertwo1,.finishedthanks1
	s_set_strat		y,twoplayercpu_Istrat	
	jmp	.finishedthanks1
.cpuplus
	lda	shpmode
	beq	.n3
	s_make_obj		#player2shparwing,.finishedthanks1
	s_set_strat		y,frienderaser_Istrat	
	jmp	.finishedthanks1

.n3
	s_make_obj		#playertwo1,.finishedthanks1
	s_set_strat		y,frienderaser_Istrat	
	jmp	.finishedthanks1

.assault
	lda	shpmode
	beq	.normships
	s_make_obj		#peppyshparwing,.finishedthanks1
	s_set_strat		y,assault1_Istrat
	s_make_obj		#falcoshparwing,.finishedthanks1
	s_set_strat		y,assault2_Istrat
	s_make_obj		#slippyshparwing,.finishedthanks1
	s_set_strat		y,assault3_Istrat
	bra	.finishedthanks1
.normships
	s_make_obj		#peppy1,.finishedthanks1
	s_set_strat		y,assault1_Istrat
	s_make_obj		#falco1,.finishedthanks1
	s_set_strat		y,assault2_Istrat
	s_make_obj		#slippy1,.finishedthanks1
	s_set_strat		y,assault3_Istrat


.finishedthanks1
	lda	whichroute
	cmp	#1
	bne	.no
	lda	stage
	cmp	#5
	bne	.no
	jsl	doascene
	
.no
	rts

doascene
;	s_set_var		B,viewtype,#viewtype_norm
	stz	viewtype
	s_and_var	B,gameflags,#~gf_viewrot	
	s_set_var    W,viewdist,#120
	s_set_var    W,outviewdist,#120
	s_set_var    W,outdist,#120
	lda	#1
	sta	dovofs
	sta	dohofs
	rtl
	
scenedone
	s_set_var		B,viewtype,#viewtype_twop
	s_or_var	B,gameflags,#gf_viewrot	
	s_set_var    W,viewdist,#400
	s_set_var    W,outviewdist,#400
	s_set_var    W,outdist,#400
	stz	dovofs
	stz	dohofs
	rtl


checkview_l
	lda	playertwoactivated
	bne	.noimdone3pointer
	lda	superspeeddelay
	cmp	#ktest
	beq	.noimdone3pointer
	cmp	#ktest3
	beq	.noimdone3pointer
	cmp	#ktest4
	beq	.noimdone3pointer
	cmp	#ktest5
	beq	.noimdone3pointer
	a16
	lda	cockpitmode
	bne	.cockpit
	lda	curr_ship
	cmp	#7
	bmi	.maybe
	bra	.maybe25
.noimdone3pointer
	jmp	.noimdone3
.cockpit
	a8
	s_set_var    W,viewdist,#30
	s_set_var    W,outviewdist,#30
	s_set_var    W,outdist,#30
	bra	.noimdone3
.maybe25
	a8
	s_set_var    W,viewdist,#300
	s_set_var    W,outviewdist,#300
	s_set_var    W,outdist,#300
	bra	.noimdone3
.maybe
	a8
	lda	shpmode
	beq	.normdist
	s_set_var    W,viewdist,#160
	s_set_var    W,outviewdist,#160
	s_set_var    W,outdist,#160
	bra	.donedist
.normdist
	s_set_var    W,viewdist,#120
	s_set_var    W,outviewdist,#120
	s_set_var    W,outdist,#120
.donedist
.noimdone3
	rtl
	
clearallobj
	s_set_find		0
.altfind
	s_find_obj		y,x,#0,.donefind	;find all the things!
	s_remove_obj	y
	bra	.altfind
.donefind
	rtl

	
setship			;main routine to set the ships model
	a8
	lda	curr_ship
	sta	temp_ship
	lbeq	.norm
.backtonorm	
	lda	curr_ship
	asl	a
	sta	tempshipname
	ldx	playpt
	s_copy_var2alvar		B,x,al_sbyte3,tempshipname
	s_set_alvar2alvartab	B,W,W,x,al_shape,x,al_sbyte3,shiplistshape		;stored in continue.asm
	bra	.donewithit
	
.norm
	lda	shpmode
	beq	.backtonorm
	s_set_alvar		W,x,al_shape,#P1SHPARWING		;super high poly
;	bra	.donewithit
	
.donewithit
	rtl	
	
setship2			;main routine to set the ships model
	a8
	lda	curr_ship
	lbeq	.norm
.backtonorm	
	lda	curr_ship
	asl	a
	sta	tempshipname
	s_copy_var2alvar		B,x,al_sbyte3,tempshipname
	s_set_alvar2alvartab	B,W,W,x,al_shape,x,al_sbyte3,shiplistshape		;stored in continue.asm
	rtl
	
.norm
	lda	shpmode
	beq	.backtonorm
	s_set_alvar		W,x,al_shape,#P1SHPARWING		;super high poly
	rtl	
	
	
PLWbrk_Istrat
	s_start_strat
	s_jmp_varAND	B,pshipflags3,#psf3_nocollisions,.donee	
	TRIGSE			se_wingdestructleft
	s_set_alvar		B,x,al_HP,#-1
	s_set_alvar		B,x,al_AP,#0
	s_and_var		B,pshipflags,#~psf_Lwingcoll
	s_or_var		B,pshipflags,#psf_brkLwing
	ldy			pcboxobj_B
	s_set_alvar		B,y,al_collcount,#framesperAP
	s_jsl			makesmlexpobj_srou 
	s_set_alvar		W,y,al_vz,pviewvelz
.donee
	s_jmpto_strat		

;----------------------


;*****************************************************************************
playercoll_Istrat
	s_start_strat

	s_jmp_varAND	B,pshipflags3,#psf3_nocollisions,.ncoll
	
	s_inc_var		B,pnumhits 

	s_jmpNOT_varAND		B,pshipflags2,#psf2_wireship,.normcoll
	TRIGSE			$14
	s_set_objtobealvar	y,x,al_collobjptr
	s_jmp_alvarNE.w		B,y,al_hp,#hardHP,.ncoll
.normcoll

	s_jmp_alsflag		x,nohitaffect,.ncoll
	
;-----------------------------------------
; laser deflection.
	s_jmp_varZERO		B,player_rollZvel,.nlaser
	s_set_objtobealvar	y,x,al_collobjptr
	s_jmpNOT_colltype	y,laser,.nlaser
	s_jmp_alvarEQ.w		B,y,al_hp,#HARDHP,.nlaser
	phx
	tyx
	s_set_alvar2rnd		x,al_rotx,#63
	s_sub_alvar		B,x,al_rotx,#31
	s_set_speed		x,#60
	s_set_alvar2rnd		x,al_roty,#31
	s_jmp_random		.left
	s_sub_alvar		B,x,al_roty,#deg90-40
	s_brl			.contdef
.left	s_add_alvar		B,x,al_roty,#deg90-40
.contdef      
	s_gen_3dvecs		x,al_roty,al_rotx,al_speed
	s_add_vecs2pos		x
	s_add_vecs2pos		x
	s_add_vecs2pos		x
	s_add_vecs2pos		x
	s_clr_alsflag		x,collide
	s_set_alsflag		x,colldisable
	s_set_strat			x,relflatmiss_strat
	s_set_lifecnt		x,#30
	trigse			$14
	plx
	s_jmp			.ncoll
.nlaser
;-----------------------------------------
 
	s_jmpNOT_alvarAND	B,x,al_hitflags,#HF1,.nBcol
	ldy			pcboxobj_B
	s_set_alsflag		y,collide
	s_set_alsflag		y,hitflash
	s_copy_alvar2alvar.w	W,y,al_collobjptr,x,al_collobjptr
.nBcol	

	s_jmpNOT_alvarAND	B,x,al_hitflags,#HF2,.nLWcol
	ldy			pcboxobj_LW
	s_set_alsflag		y,collide
	s_set_alsflag		y,hitflash
	s_copy_alvar2alvar.w	W,y,al_collobjptr,x,al_collobjptr
.nLWcol	

	s_jmpNOT_alvarAND	B,x,al_hitflags,#HF3,.nRWcol
	ldy			pcboxobj_RW
	s_set_alsflag		y,collide
	s_set_alsflag		y,hitflash
	s_copy_alvar2alvar.w	W,y,al_collobjptr,x,al_collobjptr
.nRWcol	


.ncoll
	
	s_set_alvar		B,x,al_hitflags,#0
	s_clr_alsflag		x,collide

	s_jmpto_strat


;*****************************************************************************
calcteamdamage_l

	a8
	lda	specialobjtotal
	clc
	adc	spectot
	sta	spectot
	lda	specials_dead
	clc
	adc	spectotdead
	sta	spectotdead
	s_and_var	B,superspeeddelay,#~ktest
	s_and_var	B,superspeeddelay,#~ktest2
	s_and_var	B,superspeeddelay,#~ktest3
	s_and_var	B,superspeeddelay,#~ktest4	
	s_and_var	B,superspeeddelay,#~ktest5	
	a8
	lda	specialobjtotal
	sec
	sbc	specials_dead
	beq	.plok
	asl	a
	sta	tpa
	lda	planetdead
	clc
	adc	tpa
	cmp	#100
	bcc	.plok2
	lda	#100
.plok2	sta	planetdead
.plok
	rtl

	strats_end


;*****************************************************************************
calcbgscroll_l
	phy
	php
	i8
	

	a16
	lda		outvx
	asra
	asra
	asra
	asra
	asra
	asra
	sta	tpa
	asra
	clc
	adc	tpa
	nega

	ldy	nomaxbg2Yscroll
	bne	.nmin

	cmp	#232
	bmi	.nmax
	lda	#232
.nmax

	cmp	#-56
	bpl	.nmin
	lda	#-56
.nmin

	clc
	adc		bg2Yscroll
	and		#511
	sta		bg2scroll
	stz		lastrot

	lda		outvy
	sec
	sbc		player_turnrot
	asra	
	asra	
	asra	
	asra	
	asra
	clc
	adc		bg2Xscroll
	sta.l		m_scrollxoff
	a8

	plp
	ply
	rtl
	
;*****************************************************************************
pBody_Istrat
	s_start_strat
	s_setnoremove_behind	x
	s_set_alptrs		x,pBody_strat,pcolB_Istrat,pcolBexp_Istrat
	s_set_aldata		x,#playerB_HP,#playerB_AP
	s_set_vartobeobj	pcboxobj_B,x
	s_and_var		B,pshipflags,#~psf_bodycoll
	s_set_alsflag		x,colldisable
	s_end_strat
pBody_strat
	s_start_strat
	s_set_objtobeplayer	y
	s_copy_pos		x,y	
	s_copy_rots		x,y	
	s_add_Roffs2pos		B,x,x,x,#0,#0,#0,0,0,1
;	d_print_alvar		B,x,al_HP,2

	s_jmp_alvarmore	W,x,al_worldy,minpmoveY,.nminy
	s_or_var	B,pmovelimit,#pml_btop
.nminy

	s_jmp_alvarless	W,x,al_worldy,maxpmoveY,.nmaxy
	s_or_var	B,pmovelimit,#pml_bbottom
.nmaxy

	s_end_strat
