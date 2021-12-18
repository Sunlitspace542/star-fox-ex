level6_5
	start_65816
	lda	playertwoactivated
	cmp	#0
	beq	.anop2
	lda	#40
	sta	playertwoready
.anop2
	end_65816

	initlevel	6_5,mscramwipe_circle

	setrestart
	
	
	mapwait	2000
	mapwait	2000

	mapobj	0000,0000,-700,600,hoverboss,hoverboss_istrat


	
.loo	mapwait	1000
	mapgoto	.loo


	mapend
