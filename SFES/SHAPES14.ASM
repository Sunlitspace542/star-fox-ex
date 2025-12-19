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
	ShapeHdr	MONIKRUISER_P,0,MONIKRUISER_F,0,0,0,0,0,playerB_col,58,12,83,83,id_0_c,0,<MONIKRUISER>
	elseif
MONIKRUISER_P
	Pointsb	2
	pb	0,-4,6	;0
	pb	0,-7,-3	;1
	PointsXb	1
	pb	-14,-2,6	;2
	Pointsb	2
	pb	0,7,16	;4
	pb	0,-12,22	;5
	PointsXb	3
	pb	-30,-2,6	;6
	pb	-31,6,-5	;8
	pb	19,2,34	;10
	Pointsb	2
	pb	0,7,49	;12
	pb	0,-11,49	;13
	PointsXb	1
	pb	-58,-11,-47	;14
	Pointsb	1
	pb	0,1,83	;16

	EndPoints
MONIKRUISER_F
	Vizis	26
	Viz	10,12,16,-47,-116,21	;0
	Viz	12,11,16,47,-116,21	;1
	Viz	10,16,13,-85,89,31	;2
	Viz	13,16,11,85,89,31	;3
	Viz	7,15,9,-106,-52,47	;4
	Viz	6,8,14,106,-52,47	;5
	Viz	3,9,15,79,-63,-77	;6
	Viz	2,14,8,-79,-63,-77	;7
	Viz	3,15,7,0,125,21	;8
	Viz	2,6,14,0,125,21	;9
	Viz	10,13,5,-74,103,4	;10
	Viz	5,13,11,74,103,4	;11
	Viz	10,4,12,-32,-123,0	;12
	Viz	4,11,12,32,-123,0	;13
	Viz	9,3,7,0,-103,75	;14
	Viz	8,6,2,0,-103,75	;15
	Viz	10,5,3,-75,103,1	;16
	Viz	5,11,2,75,103,1	;17
	Viz	10,3,4,-54,-112,-26	;18
	Viz	4,2,11,54,-112,-26	;19
	Viz	2,1,5,55,112,-22	;20
	Viz	3,5,1,-55,112,-22	;21
	Viz	4,3,0,12,-85,-94	;22
	Viz	2,4,0,-12,-85,-94	;23
	Viz	3,1,0,17,-119,-40	;24
	Viz	2,0,1,-17,-119,-40	;25
	BSPInit	MONIKRUISER_EBSP
	BSP	8,MONIKRUISER_f1,.bsp2
	BSP	18,MONIKRUISER_f3,.bsp4
	BSP	15,MONIKRUISER_f5,.bsp6
	BSPE	MONIKRUISER_f7
.bsp6	BSPE	MONIKRUISER_f8
.bsp4	BSPE	MONIKRUISER_f9
.bsp2	BSPE	MONIKRUISER_f10

MONIKRUISER_f1	Faces
	Face3	7,8,0,125,21,3,15,7
	FendQ
MONIKRUISER_f3	Faces
	Face3	7,18,-54,-112,-26,10,3,4
	FendQ
MONIKRUISER_f5	Faces
	Face3	43,15,0,-103,75,8,6,2
	FendQ
MONIKRUISER_f7	Faces
	Face3	7,5,106,-52,47,6,8,14
	Face3	7,7,-79,-63,-77,2,14,8
	FendQ
MONIKRUISER_f8	Faces
	Face3	0,12,-32,-123,0,10,4,12
	Face3	0,13,32,-123,0,4,11,12
	Face3	7,19,54,-112,-26,4,2,11
	Face3	43,22,12,-85,-94,4,3,0
	Face3	43,23,-12,-85,-94,2,4,0
	FendQ
MONIKRUISER_f9	Faces
	Face3	7,4,-106,-52,47,7,15,9
	Face3	7,6,79,-63,-77,3,9,15
	Face3	43,14,0,-103,75,9,3,7
	FendQ
MONIKRUISER_f10	Faces
	Face3	7,9,0,125,21,2,6,14
	Face3	10,3,85,89,31,13,16,11
	Face3	10,24,17,-119,-40,3,1,0
	Face3	10,25,-17,-119,-40,2,0,1
	Face3	0,11,74,103,4,5,13,11
	Face3	0,0,-47,-116,21,10,12,16
	Face3	0,1,47,-116,21,12,11,16
	Face3	10,2,-85,89,31,10,16,13
	Face3	0,10,-74,103,4,10,13,5
	Face3	7,16,-75,103,1,10,5,3
	Face3	7,17,75,103,1,5,11,2
	Face3	0,20,55,112,-22,2,1,5
	Face3	0,21,-55,112,-22,3,5,1
	FendQ
MONIKRUISER_EBSP
	EndShape

	endc



	end_shapes

