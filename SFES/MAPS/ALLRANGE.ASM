allrangemap
    initlevel	allrange,mstarwipe_circle
	setvar.n	allrange_flag,1		;used mainly in gstrats/pstrats for view pos, bg scrolling, free movement etc
	setvar.n	ar_maploops,0		;timer used for character dialogue
	setvar.n	ar_dialogue,0		;dialogue group, increment in circle_Istrat
	setvar.n	msg_num,126
	;;;skillfly1_init	3       ;first arches, twin blaster
	;;;skillspec_init	3		;marked towers

	; Format for all map objects is similar, the first value is now used as an ID instead of a timing though.
	; (ID is used to check whether enemies/lasers/sprites are already drawn and to add dead enemies to a list.)
	; For mapobjs that dont animate or move, you can use ar_static and set the ID to 0.
	; I think all other routines have an equivalent ar_ version, if im missing one just let me know, chuck x
	;NOTE: Any object call which isnt an ar_static call must have a UNIQUE ID.
	
parentloop
.local	local			;loop back here every frame and redraw as necessary
	mapwait	500			;run before mapclear to give time for other stuff to run without flickering
	mapclear			;clear static objects (not item, weapon or enemy2) and increment ar_maploops

	ar_mapmsg	40,126,0		;/1 = ar_maploops, /2 = message#, /3 = ar_dialogue
	ar_mapmsg	70,127,0		;dialogue at beginning starts with /3 = 0
	ar_mapmsg	100,128,0
	ar_mapmsg	130,129,0
	ar_mapmsg	10,130,1
	ar_mapmsg	40,131,1
	ar_mapmsg	10,132,2
	ar_mapmsg	40,133,2
	ar_mapmsg	10,134,3
	ar_mapmsg	40,135,3
	ar_mapmsg	70,136,3


	;ar_pathobj 70,6000,-250,58500,qbship1,race1_1,200,10
	;ar_pathobj 1,6000,-250,8000,friendship_4,race1_1,200,10
	;ar_pathobj 2,7000,-250,9500,newship,race1_2,10,10
	;ar_pathobj 3,58000,-250,63000,friendship_4,race1_1b,200,10
	;ar_pathobj 4,58000,-250,63500,newship,race1_2,10,10

enemiesa
    ar_mapobj 37,62035,0,61900,hou_5,houdai5f_istrat
    ar_mapobj 38,1700,0,62535,hou_5,houdai5f_istrat
    ar_mapobj 39,13100,0,54535,hou_5,houdai5f_istrat
    ar_mapobj 40,2400,0,1800,hou_5,houdai5f_istrat
    ar_mapobj 41,61035,0,14700,hou_5,houdai5f_istrat
    ar_mapobj 42,8300,0,60235,hou_5,houdai5f_istrat
    ar_mapobj 43,54035,0,3535,hou_5,houdai5f_istrat
    ar_mapobj 44,62535,0,8535,hou_5,houdai5f_istrat
    ar_mapobj 45,15000,0,12435,hou_5,houdai5f_istrat
    ar_mapobj 46,0,0,57535,hou_5,houdai5f_istrat
    ar_mapobj 47,5200,0,55000,hou_5,houdai5f_istrat
    ar_mapobj 48,4500,0,12000,hou_5,houdai5f_istrat
    ar_mapobj 49,9935,0,7200,hou_5,houdai5f_istrat
    ar_mapobj 50,14900,0,59735,hou_5,houdai5f_istrat
    ar_mapobj 51,8200,0,200,hou_5,houdai5f_istrat
    ar_mapobj 52,15100,0,6700,hou_5,houdai5f_istrat
    ar_mapobj 53,55400,0,9100,hou_5,houdai5f_istrat
    ar_mapobj 54,55390,0,59035,hou_5,houdai5f_istrat

arches
    ;;;ar_static 0,0,0,6500,arch,hard_ISTRAT
    ;;;ar_static 0,200,0,9000,arch,hard_ISTRAT
    ;;;ar_static 0,0,0,11300,arch,hard_ISTRAT
    ;;;ar_static 0,-250,0,13500,arch,hard_ISTRAT
    ;;;ar_skillfly1_set 56,0,-60,6500,100
    ;;;ar_skillfly1_set 57,200,-60,9000,100
    ;;;ar_skillfly1_set 58,0,-60,11300,100
    ;;;ar_skillfly1_bonus 59,-250,-50,13500,item_7,item7_istrat
    ;ar_cspec 60,51400,-230,58400,item_5,item5_istrat
    ;ar_cspec 61,8100,-230,5150,item_5,item5_istrat

other
    ar_pathobj 62,4000,-50,7535,bom_wing,ponpon,2,8
    ar_pathobj 63,12000,-50,4000,bom_wing,ponpon,2,8
    ar_pathobj 64,58500,-50,1000,bom_wing,ponpon,2,8
    ar_pathobj 65,63500,-50,12000,bom_wing,ponpon,2,8
    ar_pathobj 66,53000,-50,2035,bom_wing,ponpon,2,8
    ar_pathobj 67,8000,-50,59535,bom_wing,ponpon,2,8
    ar_pathobj 68,64000,-50,58535,bom_wing,ponpon,2,8
    ar_pathobj 69,14500,-50,10535,bom_wing,ponpon,2,8

objectives
    ;ar_skillspec_set 71,59000,-170,3500,walk_4_0,hard_istrat
    ;ar_skillspec_set 72,7500,-170,56500,walk_4_0,hard_istrat
    ;ar_skillspec_set 73,10000,-170,10000,walk_4_0,hard_istrat
    ;ar_skillspec_bonus 74,57000,0,53000,nullshape,bossshow_istrat

;----------------------------------------
kbase
    ar_static 0,7900,0,5000,k_base_0,HARD_ISTRAT
    ar_static 0,8400,0,5000,k_base_2,hard90yr_ISTRAT

    ar_mapobj 84,-9000,0,-7000,TOWER_2,TOWER0_ISTRAT
	ar_mapobj 85,-13400,0,-4900,TOWER_2,TOWER0_ISTRAT
    ar_mapobj 86,-13200,0,-2700,TOWER_2,TOWER0_ISTRAT
;    ar_mapobj 87,-13180,0,3720,TOWER_2,TOWER0_ISTRAT
    ar_mapobj 88,-13080,0,8420,TOWER_2,TOWER0_ISTRAT
    ar_mapobj 89,11600,0,6900,TOWER_2,TOWER0_ISTRAT
    ar_mapobj 90,11600,0,8900,TOWER_2,TOWER0_ISTRAT
    ar_mapobj 91,7850,0,13200,TOWER_2,TOWER0_ISTRAT
;    ar_mapobj 92,8000,0,10200,TOWER_2,TOWER0_ISTRAT
    ar_mapobj 93,3100,0,13300,TOWER_2,TOWER0_ISTRAT
    ar_mapobj 94,3800,0,10300,TOWER_2,TOWER0_ISTRAT
    ar_mapobj 95,4700,0,6000,TOWER_2,TOWER0_ISTRAT
    ar_mapobj 96,4750,0,8200,TOWER_2,TOWER0_ISTRAT
    ar_mapobj 97,4900,0,11300,TOWER_2,TOWER0_ISTRAT
    ar_mapobj 98,7100,0,4000,TOWER_2,TOWER0_ISTRAT
    ar_mapobj 99,-4300,0,6000,TOWER_2,TOWER0_ISTRAT
    ar_mapobj 100,-4250,0,3200,TOWER_2,TOWER0_ISTRAT
    ar_mapobj 101,-7700,0,6500,TOWER_2,TOWER0_ISTRAT
    ar_mapobj 102,-4351,0,1820,TOWER_2,TOWER0_ISTRAT
	ar_mapobj 103,-840,0,116,TOWER_2,TOWER0_ISTRAT
    ar_mapobj 104,-560,0,7449,TOWER_2,TOWER0_ISTRAT
    ar_mapobj 105,-6620,0,-5500,TOWER_2,TOWER0_ISTRAT
northsouth
    ar_static 0,-3920,0,-8851,bu_1,HARD_ISTRAT
    ar_static 0,-3080,0,-12851,bu_1,HARD_ISTRAT
    ar_static 0,-3080,0,-10851,bu_1,HARD_ISTRAT
    ar_static 0,-2520,0,-8851,bu_1,HARD_ISTRAT
    ar_static 0,-1680,0,5000,bu_1,HARD_ISTRAT
    ar_static 0,-1680,0,13216,bu_1,HARD_ISTRAT
    ar_static 0,-1400,0,3949,bu_2,HARD_ISTRAT
    ar_static 0,-1400,0,6949,bu_2,HARD_ISTRAT
    ar_static 0,-560,0,-7735,bu_3,HARD_ISTRAT
    ar_static 0,-560,0,-12335,bu_3,HARD_ISTRAT
    ar_static 0,420,0,3949,BU_5,HARD_ISTRAT
    ar_static 0,560,0,-13884,bu_1,HARD_ISTRAT
    ar_static 0,630,0,4749,bu_1,HARD_ISTRAT
    ar_static 0,630,0,8049,BU_5,HARD_ISTRAT
    ar_static 0,630,0,-7735,BU_4,HARD_ISTRAT
    ar_static 0,2040,0,10016,bu_3,HARD_ISTRAT
    ar_static 0,1120,0,10616,bu_3,HARD_ISTRAT
    ar_static 0,1120,0,-9851,bu_2,HARD_ISTRAT
    ar_static 0,1148,0,-5851,BU_4,HARD_ISTRAT
    ar_static 0,1400,0,-12535,BU_4,HARD_ISTRAT
    ar_static 0,1680,0,6500,bu_3,HARD_ISTRAT
    ar_static 0,1680,0,-6884,BU_4,HARD_ISTRAT
    ar_static 0,1680,0,-3884,bu_2,HARD_ISTRAT
    ar_static 0,1680,0,13616,BU_5,HARD90YR_ISTRAT
    ar_static 0,1680,0,-13851,BU_4,HARD_ISTRAT
    ar_static 0,1960,0,4349,bu_2,HARD_ISTRAT
eastwest
    ar_static 0,-12851,0,3080,bu_1,HARD_ISTRAT
    ar_static 0,-11351,0,1960,BU_5,HARD_ISTRAT
    ar_static 0,-10351,0,-840,bu_2,HARD_ISTRAT
    ar_static 0,-10251,0,1960,bu_2,HARD_ISTRAT
    ar_static 0,-8451,0,0,bu_3,HARD_ISTRAT
    ar_static 0,-8251,0,1960,BU_5,HARD_ISTRAT
    ar_static 0,-7884,0,4900,bu_2,HARD_ISTRAT
    ar_static 0,-6735,0,-2500,bu_3,HARD_ISTRAT
    ar_static 0,-5884,0,2380,bu_3,HARD_ISTRAT
    ar_static 0,-5251,0,-2500,bu_3,HARD_ISTRAT
    ar_static 0,-4735,0,336,bu_3,HARD_ISTRAT
    ar_static 0,-3884,0,4200,bu_3,HARD_ISTRAT
    ar_static 0,-2735,0,960,BU_5,HARD_ISTRAT
    ar_static 0,-2384,0,5600,bu_1,HARD_ISTRAT
    ar_static 0,2316,0,5320,bu_2,HARD_ISTRAT
    ar_static 0,3649,0,-560,bu_3,HARD_ISTRAT
    ar_static 0,4649,0,350,bu_1,HARD_ISTRAT
    ar_static 0,5200,0,-1680,bu_1,HARD_ISTRAT
    ar_static 0,5216,0,1820,bu_1,HARD_ISTRAT
    ar_static 0,5216,0,5180,bu_1,HARD_ISTRAT
    ar_static 0,6549,0,-980,bu_3,HARD_ISTRAT
    ar_static 0,7500,0,1680,bu_1,HARD_ISTRAT
    ar_static 0,11049,0,280,bu_1,HARD_ISTRAT
    ar_static 0,11216,0,3780,bu_1,HARD_ISTRAT
    ar_static 0,13216,0,1820,bu_1,HARD_ISTRAT
    ar_static 0,14216,0,3640,bu_1,HARD_ISTRAT
suburbs1
    ar_static 0,-9000,0,6500,bu_1,HARD_ISTRAT,
    ar_static 0,-9000,0,9200,bu_1,HARD_ISTRAT
    ar_static 0,-8900,0,4500,bu_1,HARD_ISTRAT
    ar_static 0,-5200,0,7800,bu_1,HARD_ISTRAT
    ar_static 0,-5200,0,9300,bu_1,HARD_ISTRAT
    ar_static 0,-4400,0,13300,bu_1,HARD_ISTRAT
    ar_static 0,-3100,0,10300,BU_5,HARD_ISTRAT
    ar_static 0,7400,0,10200,bu_3,HARD_ISTRAT
    ar_static 0,7700,0,9200,bu_3,HARD_ISTRAT
    ar_static 0,8300,0,6500,bu_1,HARD_ISTRAT
    ar_static 0,8600,0,11700,bu_3,HARD_ISTRAT
    ar_static 0,8900,0,3500,bu_3,HARD_ISTRAT
    ar_static 0,8900,0,9200,bu_3,HARD_ISTRAT
    ar_static 0,11300,0,-9200,bu_1,HARD_ISTRAT
    ar_static 0,12100,0,-3600,bu_1,HARD_ISTRAT
    ar_static 0,12250,0,1000,bu_3,HARD_ISTRAT
    ar_static 0,12500,0,-2400,bu_3,HARD_ISTRAT
    ar_static 0,12500,0,8100,bu_1,HARD_ISTRAT
    ar_static 0,12900,0,-5800,bu_3,HARD_ISTRAT
    ar_static 0,13400,0,6100,bu_3,HARD_ISTRAT
    ar_static 0,13700,0,-8800,bu_1,HARD_ISTRAT
    ar_static 0,13700,0,3250,bu_1,HARD_ISTRAT
suburbs2
    ar_static 0,-14150,0,4180,bu_2,HARD_ISTRAT
    ar_static 0,-13700,0,-7200,bu_1,HARD_ISTRAT
    ar_static 0,-13500,0,-1000,bu_5,HARD_ISTRAT
    ar_static 0,-12950,0,-10450,bu_4,HARD_ISTRAT
    ar_static 0,-12880,0,4620,bu_1,HARD_ISTRAT
    ar_static 0,-12500,0,7000,bu_1,HARD_ISTRAT
    ar_static 0,-12310,0,-6810,bu_1,HARD_ISTRAT
    ar_static 0,-11940,0,-7440,bu_1,HARD_ISTRAT
    ar_static 0,-11920,0,8580,bu_1,HARD_ISTRAT
    ar_static 0,-11600,0,-4100,BU_5,HARD_ISTRAT
    ar_static 0,-11000,0,4360,bu_2,HARD_ISTRAT
    ar_static 0,-9400,0,-5000,bu_3,HARD_ISTRAT
    ar_static 0,-9340,0,-9500,bu_1,HARD_ISTRAT
    ar_static 0,-9280,0,-6300,bu_1,HARD_ISTRAT
    ar_static 0,-9000,0,-3000,bu_5,HARD_ISTRAT
    ar_static 0,-4480,0,-10,bu_1,HARD_ISTRAT
    ar_static 0,-4450,0,-12700,bu_1,HARD_ISTRAT
    ar_static 0,-4000,0,-3000,bu_1,HARD_ISTRAT
    ar_static 0,-3820,0,-8000,bu_3,HARD_ISTRAT
    ar_static 0,2800,0,-3000,bu_1,HARD_ISTRAT
    ar_static 0,3000,0,-9400,bu_3,HARD_ISTRAT
    ar_static 0,3620,0,-13900,bu_2,HARD_ISTRAT
    ar_static 0,4280,0,-11400,bu_1,HARD_ISTRAT
    ar_static 0,4300,0,-6000,bu_3,HARD_ISTRAT
    ar_static 0,4700,0,-5000,bu_1,HARD_ISTRAT
    ar_static 0,4900,0,-4000,bu_3,HARD_ISTRAT
    ar_static 0,5200,0,-9000,bu_3,HARD_ISTRAT
    ar_static 0,5200,0,-9000,bu_3,HARD_ISTRAT
    ar_static 0,6000,0,-9900,bu_3,HARD_ISTRAT
    ar_static 0,6530,0,-11400,bu_2,HARD_ISTRAT
    ar_static 0,6580,0,-4900,bu_2,HARD_ISTRAT
    ar_static 0,6600,0,-7400,bu_1,HARD_ISTRAT
    ar_static 0,9000,0,-8900,bu_3,HARD_ISTRAT
    ar_static 0,9230,0,-10900,bu_1,HARD_ISTRAT
    ar_static 0,9380,0,-3900,bu_1,HARD_ISTRAT
    ar_static 0,9400,0,-13400,bu_3,HARD_ISTRAT
    ar_static 0,9730,0,-6400,bu_1,HARD_ISTRAT

	mapif	chkstratdone2,.boss
	mapgoto	parentloop.local

.boss
	setrestart
	setvar.n	allrange_flag,1
;	setbgm		bgm_boss

	mapobj	0,57000,-600,53000,boss_h_0,bossh_istrat
	mapwait	1000

.loop	mapif	chkbossdead,.cont
	mapgoto	.loop
.cont
	mapwait	4000
	mapjsr	cl_ground ; Clear type

;	mapend
	start_65816
	jml	restart
	end_65816

	

