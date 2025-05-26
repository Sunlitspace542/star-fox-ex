	start_shapes
	
;--Shape file ----- shapes\barker_l.txt ----
	ifne	DO_HDR

barker_l	shapehdr	barker_L_P,0,barker_L_F,0,0,0,0,2,walker_col3,50,94,30,93,id_0_c,0,<barker_L>
	elseif
barker_l_P
	datahdr
	Pointsb	18
	pb	0,-90,-25	;0
	pb	20,-80,-20	;1
	pb	41,-94,-17	;2
	pb	40,-30,-10	;3
	pb	-10,-50,-6	;4
	pb	50,-50,-6	;5
	pb	20,-55,0	;6
	pb	5,-70,0	;7
	pb	35,-70,0	;8
	pb	13,-85,0	;9
	pb	28,-85,0	;10
	pb	0,0,5	;11
	pb	20,-60,20	;12
	pb	10,-70,20	;13
	pb	30,-70,20	;14
	pb	15,-80,20	;15
	pb	25,-80,20	;16
	pb	20,-50,30	;17

	EndPoints
barker_l_F
	Vizis	20
	Viz	8,2,5,-86,39,85	;3
	Viz	1,8,2,-61,-74,-83	;4
	Viz	2,8,1,61,74,83	;5
	Viz	11,0,4,60,-35,-106	;6
	Viz	7,0,11,-122,-11,-33	;7
	Viz	4,0,7,97,54,62	;8
	Viz	7,11,4,61,12,111	;9
	Viz	0,7,1,31,-99,-73	;10
	Viz	1,7,0,-31,99,73	;11
	Viz	10,9,1,0,123,-31	;12
	Viz	8,10,1,-104,49,-54	;13
	Viz	6,8,1,-67,-67,-84	;14
	Viz	1,9,7,103,55,-50	;15
	Viz	1,7,6,67,-67,-84	;16
	Viz	16,10,8,-112,52,30	;17
	Viz	12,14,8,-88,-88,22	;18
	Viz	13,7,9,109,58,27	;19
	Viz	15,9,10,0,123,31	;20
	Viz	6,7,13,88,-88,22	;21
	Viz	16,14,12,0,0,127	;22

barker_l_f1	Faces
	Face3	14,4,-122,-11,-33,7,0,11
	Face3	20,0,-86,39,85,8,2,5
	Face3	23,1,-61,-74,-83,1,8,2
	Face3	23,2,61,74,83,2,8,1
	Face3	18,5,97,54,62,4,0,7
	Face3	16,6,61,12,111,7,11,4
	Face3	21,7,31,-99,-73,0,7,1
	Face3	25,8,-31,99,73,1,7,0
	Face3	23,9,0,123,-31,10,9,1
	Face3	25,10,-104,49,-54,8,10,1
	Face3	14,11,-67,-67,-84,6,8,1
	Face3	21,12,103,55,-50,1,9,7
	Face3	12,13,67,-67,-84,1,7,6
	Face4	27,14,-112,52,30,16,10,8,14
	Face4	16,15,-88,-88,22,12,14,8,6
	Face4	23,16,109,58,27,13,7,9,15
	Face4	14,18,88,-88,22,6,7,13,12
	Face5	44,19,0,0,127,16,14,12,13,15
	Face2	15,-1,0,0,0,3,5
	Face2	15,-1,0,0,0,3,8
	Face2	42,-1,0,0,0,6,17
	Face3	12,3,60,-35,-106,11,0,4
	Face4	25,17,0,123,31,15,9,10,16
	Fend
	EndShape

	endc


;--Shape file ----- C:\QUADWING.TXT ----
	ifne	DO_HDR

QUADWING
	ShapeHdr	QUADWING_P,0,QUADWING_F,0,0,0,0,0,playerB_col,26,11,79,79,id_0_c,0,<QUADWING>
	elseif
QUADWING_P
	Pointsb	21
	pb	10,4,-1	;0
	pb	0,1,79	;1
	pb	0,-4,4	;2
	pb	-10,4,-1	;3
	pb	0,7,-1	;4
	pb	17,4,-1	;5
	pb	25,11,-30	;6
	pb	14,9,-3	;7
	pb	-26,11,-30	;8
	pb	-17,4,-1	;9
	pb	-15,9,-3	;10
	pb	14,-1,-3	;11
	pb	25,-10,-30	;12
	pb	-26,-10,-30	;13
	pb	-15,-1,-3	;14
	pb	0,1,-8	;15
	pb	0,1,-1	;16
	pb	5,0,5	;17
	pb	9,-8,0	;18
	pb	-5,0,5	;19
	pb	-9,-8,0	;20

	EndPoints
QUADWING_F
	Vizis	25
	Viz	1,3,2,81,97,6	;0
	Viz	0,1,2,-81,97,6	;1
	Viz	1,4,3,36,-121,9	;2
	Viz	1,0,4,-36,-121,9	;3
	Viz	8,9,10,102,-59,46	;4
	Viz	5,6,7,-94,-74,44	;5
	Viz	9,13,14,94,61,59	;6
	Viz	5,11,12,-84,74,59	;7
	Viz	3,8,10,-93,-80,-32	;8
	Viz	9,8,3,0,123,-30	;9
	Viz	0,7,6,102,-67,-36	;10
	Viz	6,5,0,0,123,-30	;11
	Viz	3,13,9,0,-114,-55	;12
	Viz	14,13,3,-91,88,-8	;13
	Viz	0,5,12,0,-114,-55	;14
	Viz	0,12,11,101,75,-16	;15
	Viz	10,9,3,0,-47,118	;16
	Viz	7,0,5,0,-47,118	;17
	Viz	3,9,14,0,47,118	;18
	Viz	11,5,0,0,47,118	;19
	Viz	3,16,15,-36,-122,0	;22
	Viz	0,15,16,36,-122,0	;23
	Viz	0,16,3,0,0,-127	;24
	Viz	3,15,2,61,103,-43	;25
	Viz	15,0,2,-61,103,-43	;26
	BSPInit	QUADWING_EBSP
	BSP	0,QUADWING_f1,.bsp2
	BSP	1,QUADWING_f3,.bsp4
	BSPE	QUADWING_f5
.bsp4	BSP	14,QUADWING_f6,.bsp7
	BSPE	QUADWING_f8
.bsp7	BSPE	QUADWING_f9
.bsp2	BSP	12,QUADWING_f10,.bsp11
	BSPE	QUADWING_f12
.bsp11	BSPE	QUADWING_f13

QUADWING_f1	Faces
	Face3	16,0,81,97,6,1,3,2
	FendQ
QUADWING_f3	Faces
	Face3	20,1,-81,97,6,0,1,2
	FendQ
QUADWING_f5	Faces
	Face3	10,20,-36,-122,0,3,16,15
	Face3	10,21,36,-122,0,0,15,16
	Face4	43,22,0,0,-127,0,16,3,4
	Face3	14,2,36,-121,9,1,4,3
	Face3	16,3,-36,-121,9,1,0,4
	Face3	14,23,61,103,-43,3,15,2
	Face3	18,24,-61,103,-43,15,0,2
	FendQ
QUADWING_f6	Faces
	Face3	25,14,0,-114,-55,0,5,12
	FendQ
QUADWING_f8	Faces
	Face3	25,15,101,75,-16,0,12,11
	Face3	27,19,0,47,118,11,5,0
	Face2	44,-1,0,0,0,17,18
	Face3	27,7,-84,74,59,5,11,12
	FendQ
QUADWING_f9	Faces
	Face3	25,5,-94,-74,44,5,6,7
	Face3	23,10,102,-67,-36,0,7,6
	Face3	27,11,0,123,-30,6,5,0
	Face3	25,17,0,-47,118,7,0,5
	FendQ
QUADWING_f10	Faces
	Face3	25,12,0,-114,-55,3,13,9
	FendQ
QUADWING_f12	Faces
	Face3	27,13,-91,88,-8,14,13,3
	Face3	27,18,0,47,118,3,9,14
	Face2	44,-1,0,0,0,19,20
	Face3	25,6,94,61,59,9,13,14
	FendQ
QUADWING_f13	Faces
	Face3	23,4,102,-59,46,8,9,10
	Face3	25,8,-93,-80,-32,3,8,10
	Face3	27,9,0,123,-30,9,8,3
	Face3	25,16,0,-47,118,10,9,3
	FendQ
QUADWING_EBSP
	EndShape

	endc

;--Shape file ----- C:\MONIKRUISER.TXT ----
	ifne	DO_HDR

MONIKRUISER
	ShapeHdr	MONIKRUISER_P,0,MONIKRUISER_F,0,0,0,0,0,playerB_col,38,17,50,53,id_0_c,0,<MONIKRUISER>
	elseif
MONIKRUISER_P
	PointsXb	1
	pb	-4,8,3	;0
	Pointsb	2
	pb	0,10,0	;2
	pb	0,-14,0	;3
	PointsXb	1
	pb	-16,-2,-4	;4
	Pointsb	1
	pb	0,12,16	;6
	PointsXb	1
	pb	14,-4,-16	;7
	Pointsb	3
	pb	-19,0,11	;9
	pb	20,-1,11	;10
	pb	0,-17,16	;11
	PointsXb	1
	pb	24,0,24	;12
	Pointsb	1
	pb	0,0,50	;14
	PointsXb	1
	pb	-38,8,-36	;15

	EndPoints
MONIKRUISER_F
	Vizis	20
	Viz	12,14,11,-55,102,51	;0
	Viz	11,14,13,55,102,51	;1
	Viz	12,6,14,-43,-113,40	;2
	Viz	6,13,14,43,-113,40	;3
	Viz	16,10,5,-47,118,-5	;4
	Viz	15,4,9,57,113,4	;5
	Viz	1,16,5,87,52,-76	;6
	Viz	0,4,15,-87,52,-76	;7
	Viz	10,16,1,-44,-113,38	;8
	Viz	9,0,15,42,-114,36	;9
	Viz	12,11,3,-77,99,-19	;10
	Viz	3,11,13,77,99,-19	;11
	Viz	12,2,6,-60,-111,-14	;12
	Viz	2,13,6,60,-111,-14	;13
	Viz	12,3,7,-69,107,-7	;14
	Viz	3,13,8,69,107,-7	;15
	Viz	12,7,2,-70,-102,-28	;16
	Viz	2,8,13,70,-102,-28	;17
	Viz	3,8,7,0,108,-67	;18
	Viz	2,7,8,0,-96,-84	;19
	BSPInit	MONIKRUISER_EBSP
	BSP	17,MONIKRUISER_f1,.bsp2
	BSP	16,MONIKRUISER_f3,.bsp4
	BSPE	MONIKRUISER_f5
.bsp4	BSPE	MONIKRUISER_f6
.bsp2	BSPE	MONIKRUISER_f7

MONIKRUISER_f1	Faces
	Face3	7,17,70,-102,-28,2,8,13
	FendQ
MONIKRUISER_f3	Faces
	Face3	7,16,-70,-102,-28,12,7,2
	FendQ
MONIKRUISER_f5	Faces
	Face3	0,10,-77,99,-19,12,11,3
	Face3	0,11,77,99,-19,3,11,13
	Face3	7,14,-69,107,-7,12,3,7
	Face3	7,15,69,107,-7,3,13,8
	Face3	0,2,-43,-113,40,12,6,14
	Face3	0,3,43,-113,40,6,13,14
	Face3	0,12,-60,-111,-14,12,2,6
	Face3	0,13,60,-111,-14,2,13,6
	Face3	10,0,-55,102,51,12,14,11
	Face3	10,1,55,102,51,11,14,13
	Face3	0,18,0,108,-67,3,8,7
	Face3	43,19,0,-96,-84,2,7,8
	FendQ
MONIKRUISER_f6	Faces
	Face3	7,4,-47,118,-5,16,10,5
	Face3	7,6,87,52,-76,1,16,5
	Face3	7,8,-44,-113,38,10,16,1
	FendQ
MONIKRUISER_f7	Faces
	Face3	7,5,57,113,4,15,4,9
	Face3	7,7,-87,52,-76,0,4,15
	Face3	7,9,42,-114,36,9,0,15
	FendQ
MONIKRUISER_EBSP
	EndShape

	endc


	end_shapes

