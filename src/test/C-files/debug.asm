.data
a11:
.space 1
.align 2
a12:
.space 1
.align 2
a13:
.space 1
.align 2
a21:
.space 1
.align 2
a22:
.space 1
.align 2
a23:
.space 1
.align 2
a31:
.space 1
.align 2
a32:
.space 1
.align 2
a33:
.space 1
.align 2
empty:
.space 1
.align 2
label_10_str:
.asciiz "\n"
.align 2
label_11_str:
.asciiz "     1   2   3\n"
.align 2
label_12_str:
.asciiz "   +---+---+---+\n"
.align 2
label_13_str:
.asciiz "a  | "
.align 2
label_14_str:
.asciiz " | "
.align 2
label_15_str:
.asciiz " |\n"
.align 2
label_16_str:
.asciiz "b  | "
.align 2
label_17_str:
.asciiz "c  | "
.align 2
label_18_str:
.asciiz "Player "
.align 2
label_19_str:
.asciiz " has won!\n"
.align 2
label_20_str:
.asciiz " select move (e.g. a2)>"
.align 2
label_21_str:
.asciiz "That is not a valid move!\n"
.align 2
label_22_str:
.asciiz "That move is not possible!\n"
.align 2
label_23_str:
.asciiz "It\'s a draw!\n"
.align 2
label_24_str:
.asciiz "Play again? (y/n)> "
.align 2

.text
reset:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
pushRegisters
la v12,a11
la v13,empty
lb v14,0(v13)
sb v14,0(v12)
la v15,a12
la v16,empty
lb v17,0(v16)
sb v17,0(v15)
la v18,a13
la v19,empty
lb v20,0(v19)
sb v20,0(v18)
la v21,a21
la v22,empty
lb v23,0(v22)
sb v23,0(v21)
la v24,a22
la v25,empty
lb v26,0(v25)
sb v26,0(v24)
la v27,a23
la v28,empty
lb v29,0(v28)
sb v29,0(v27)
la v30,a31
la v31,empty
lb v32,0(v31)
sb v32,0(v30)
la v33,a32
la v34,empty
lb v35,0(v34)
sb v35,0(v33)
la v36,a33
la v37,empty
lb v38,0(v37)
sb v38,0(v36)
reset_epilogue:
popRegisters
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
full:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
pushRegisters
li v39,0
addi v0,v39,0
la v40,a11
lb v41,0(v40)
la v42,empty
lb v43,0(v42)
xor v44,v41,v43
sltu v44,$zero,v44
beqz v44,label_28_END
li v45,1
add v46,v0,v45
addi v0,v46,0
label_28_END:
la v47,a21
lb v48,0(v47)
la v49,empty
lb v50,0(v49)
xor v51,v48,v50
sltu v51,$zero,v51
beqz v51,label_29_END
li v52,1
add v53,v0,v52
addi v0,v53,0
label_29_END:
la v54,a31
lb v55,0(v54)
la v56,empty
lb v57,0(v56)
xor v58,v55,v57
sltu v58,$zero,v58
beqz v58,label_30_END
li v59,1
add v60,v0,v59
addi v0,v60,0
label_30_END:
la v61,a12
lb v62,0(v61)
la v63,empty
lb v64,0(v63)
xor v65,v62,v64
sltu v65,$zero,v65
beqz v65,label_31_END
li v66,1
add v67,v0,v66
addi v0,v67,0
label_31_END:
la v68,a22
lb v69,0(v68)
la v70,empty
lb v71,0(v70)
xor v72,v69,v71
sltu v72,$zero,v72
beqz v72,label_32_END
li v73,1
add v74,v0,v73
addi v0,v74,0
label_32_END:
la v75,a32
lb v76,0(v75)
la v77,empty
lb v78,0(v77)
xor v79,v76,v78
sltu v79,$zero,v79
beqz v79,label_33_END
li v80,1
add v81,v0,v80
addi v0,v81,0
label_33_END:
la v82,a13
lb v83,0(v82)
la v84,empty
lb v85,0(v84)
xor v86,v83,v85
sltu v86,$zero,v86
beqz v86,label_34_END
li v87,1
add v88,v0,v87
addi v0,v88,0
label_34_END:
la v89,a23
lb v90,0(v89)
la v91,empty
lb v92,0(v91)
xor v93,v90,v92
sltu v93,$zero,v93
beqz v93,label_35_END
li v94,1
add v95,v0,v94
addi v0,v95,0
label_35_END:
la v96,a33
lb v97,0(v96)
la v98,empty
lb v99,0(v98)
xor v100,v97,v99
sltu v100,$zero,v100
beqz v100,label_36_END
li v101,1
add v102,v0,v101
addi v0,v102,0
label_36_END:
li v103,9
xor v104,v0,v103
sltiu v104,v104,1
beqz v104,label_37_ELSE
li v105,1
addi v106,$fp,4
sw v105,0(v106)
j full_epilogue
j label_38_END
label_37_ELSE:
li v107,0
addi v108,$fp,4
sw v107,0(v108)
j full_epilogue
label_38_END:
full_epilogue:
popRegisters
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
set:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
pushRegisters
li v109,1
addi v1,v109,0
addiu v110,$fp,16
lb v111,0(v110)
li v112,97
xor v113,v111,v112
sltiu v113,v113,1
beqz v113,label_41_ELSE
addiu v114,$fp,12
lw v115,0(v114)
li v116,1
xor v117,v115,v116
sltiu v117,v117,1
beqz v117,label_43_ELSE
la v118,a11
lb v119,0(v118)
la v120,empty
lb v121,0(v120)
xor v122,v119,v121
sltiu v122,v122,1
beqz v122,label_45_ELSE
la v123,a11
addiu v124,$fp,8
lb v125,0(v124)
sb v125,0(v123)
j label_46_END
label_45_ELSE:
li v126,0
li v127,1
sub v128,v126,v127
addi v1,v128,0
label_46_END:
j label_44_END
label_43_ELSE:
addiu v129,$fp,12
lw v130,0(v129)
li v131,2
xor v132,v130,v131
sltiu v132,v132,1
beqz v132,label_47_ELSE
la v133,a12
lb v134,0(v133)
la v135,empty
lb v136,0(v135)
xor v137,v134,v136
sltiu v137,v137,1
beqz v137,label_49_ELSE
la v138,a12
addiu v139,$fp,8
lb v140,0(v139)
sb v140,0(v138)
j label_50_END
label_49_ELSE:
li v141,0
li v142,1
sub v143,v141,v142
addi v1,v143,0
label_50_END:
j label_48_END
label_47_ELSE:
addiu v144,$fp,12
lw v145,0(v144)
li v146,3
xor v147,v145,v146
sltiu v147,v147,1
beqz v147,label_51_ELSE
la v148,a13
lb v149,0(v148)
la v150,empty
lb v151,0(v150)
xor v152,v149,v151
sltiu v152,v152,1
beqz v152,label_53_ELSE
la v153,a13
addiu v154,$fp,8
lb v155,0(v154)
sb v155,0(v153)
j label_54_END
label_53_ELSE:
li v156,0
li v157,1
sub v158,v156,v157
addi v1,v158,0
label_54_END:
j label_52_END
label_51_ELSE:
li v159,0
addi v1,v159,0
label_52_END:
label_48_END:
label_44_END:
j label_42_END
label_41_ELSE:
addiu v160,$fp,16
lb v161,0(v160)
li v162,98
xor v163,v161,v162
sltiu v163,v163,1
beqz v163,label_55_ELSE
addiu v164,$fp,12
lw v165,0(v164)
li v166,1
xor v167,v165,v166
sltiu v167,v167,1
beqz v167,label_57_ELSE
la v168,a21
lb v169,0(v168)
la v170,empty
lb v171,0(v170)
xor v172,v169,v171
sltiu v172,v172,1
beqz v172,label_59_ELSE
la v173,a21
addiu v174,$fp,8
lb v175,0(v174)
sb v175,0(v173)
j label_60_END
label_59_ELSE:
li v176,0
li v177,1
sub v178,v176,v177
addi v1,v178,0
label_60_END:
j label_58_END
label_57_ELSE:
addiu v179,$fp,12
lw v180,0(v179)
li v181,2
xor v182,v180,v181
sltiu v182,v182,1
beqz v182,label_61_ELSE
la v183,a22
lb v184,0(v183)
la v185,empty
lb v186,0(v185)
xor v187,v184,v186
sltiu v187,v187,1
beqz v187,label_63_ELSE
la v188,a22
addiu v189,$fp,8
lb v190,0(v189)
sb v190,0(v188)
j label_64_END
label_63_ELSE:
li v191,0
li v192,1
sub v193,v191,v192
addi v1,v193,0
label_64_END:
j label_62_END
label_61_ELSE:
addiu v194,$fp,12
lw v195,0(v194)
li v196,3
xor v197,v195,v196
sltiu v197,v197,1
beqz v197,label_65_ELSE
la v198,a23
lb v199,0(v198)
la v200,empty
lb v201,0(v200)
xor v202,v199,v201
sltiu v202,v202,1
beqz v202,label_67_ELSE
la v203,a23
addiu v204,$fp,8
lb v205,0(v204)
sb v205,0(v203)
j label_68_END
label_67_ELSE:
li v206,0
li v207,1
sub v208,v206,v207
addi v1,v208,0
label_68_END:
j label_66_END
label_65_ELSE:
li v209,0
addi v1,v209,0
label_66_END:
label_62_END:
label_58_END:
j label_56_END
label_55_ELSE:
addiu v210,$fp,16
lb v211,0(v210)
li v212,99
xor v213,v211,v212
sltiu v213,v213,1
beqz v213,label_69_ELSE
addiu v214,$fp,12
lw v215,0(v214)
li v216,1
xor v217,v215,v216
sltiu v217,v217,1
beqz v217,label_71_ELSE
la v218,a31
lb v219,0(v218)
la v220,empty
lb v221,0(v220)
xor v222,v219,v221
sltiu v222,v222,1
beqz v222,label_73_ELSE
la v223,a31
addiu v224,$fp,8
lb v225,0(v224)
sb v225,0(v223)
j label_74_END
label_73_ELSE:
li v226,0
li v227,1
sub v228,v226,v227
addi v1,v228,0
label_74_END:
j label_72_END
label_71_ELSE:
addiu v229,$fp,12
lw v230,0(v229)
li v231,2
xor v232,v230,v231
sltiu v232,v232,1
beqz v232,label_75_ELSE
la v233,a32
lb v234,0(v233)
la v235,empty
lb v236,0(v235)
xor v237,v234,v236
sltiu v237,v237,1
beqz v237,label_77_ELSE
la v238,a32
addiu v239,$fp,8
lb v240,0(v239)
sb v240,0(v238)
j label_78_END
label_77_ELSE:
li v241,0
li v242,1
sub v243,v241,v242
addi v1,v243,0
label_78_END:
j label_76_END
label_75_ELSE:
addiu v244,$fp,12
lw v245,0(v244)
li v246,3
xor v247,v245,v246
sltiu v247,v247,1
beqz v247,label_79_ELSE
la v248,a33
lb v249,0(v248)
la v250,empty
lb v251,0(v250)
xor v252,v249,v251
sltiu v252,v252,1
beqz v252,label_81_ELSE
la v253,a33
addiu v254,$fp,8
lb v255,0(v254)
sb v255,0(v253)
j label_82_END
label_81_ELSE:
li v256,0
li v257,1
sub v258,v256,v257
addi v1,v258,0
label_82_END:
j label_80_END
label_79_ELSE:
li v259,0
addi v1,v259,0
label_80_END:
label_76_END:
label_72_END:
j label_70_END
label_69_ELSE:
li v260,0
addi v1,v260,0
label_70_END:
label_56_END:
label_42_END:
addi v261,$fp,4
sw v1,0(v261)
j set_epilogue
set_epilogue:
popRegisters
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
printGame:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,-4
sw $ra,0($sp)
addiu $sp,$sp,0
pushRegisters
la v262,label_10_str
addiu v263,$sp,-4
sw v262,0(v263)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la v264,label_11_str
addiu v265,$sp,-4
sw v264,0(v265)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la v266,label_12_str
addiu v267,$sp,-4
sw v266,0(v267)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la v268,label_13_str
addiu v269,$sp,-4
sw v268,0(v269)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la v270,a11
lb v271,0(v270)
addiu v272,$sp,-4
sb v271,0(v272)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la v273,label_14_str
addiu v274,$sp,-4
sw v273,0(v274)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la v275,a12
lb v276,0(v275)
addiu v277,$sp,-4
sb v276,0(v277)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la v278,label_14_str
addiu v279,$sp,-4
sw v278,0(v279)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la v280,a13
lb v281,0(v280)
addiu v282,$sp,-4
sb v281,0(v282)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la v283,label_15_str
addiu v284,$sp,-4
sw v283,0(v284)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la v285,label_12_str
addiu v286,$sp,-4
sw v285,0(v286)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la v287,label_16_str
addiu v288,$sp,-4
sw v287,0(v288)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la v289,a21
lb v290,0(v289)
addiu v291,$sp,-4
sb v290,0(v291)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la v292,label_14_str
addiu v293,$sp,-4
sw v292,0(v293)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la v294,a22
lb v295,0(v294)
addiu v296,$sp,-4
sb v295,0(v296)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la v297,label_14_str
addiu v298,$sp,-4
sw v297,0(v298)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la v299,a23
lb v300,0(v299)
addiu v301,$sp,-4
sb v300,0(v301)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la v302,label_15_str
addiu v303,$sp,-4
sw v302,0(v303)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la v304,label_12_str
addiu v305,$sp,-4
sw v304,0(v305)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la v306,label_17_str
addiu v307,$sp,-4
sw v306,0(v307)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la v308,a31
lb v309,0(v308)
addiu v310,$sp,-4
sb v309,0(v310)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la v311,label_14_str
addiu v312,$sp,-4
sw v311,0(v312)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la v313,a32
lb v314,0(v313)
addiu v315,$sp,-4
sb v314,0(v315)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la v316,label_14_str
addiu v317,$sp,-4
sw v316,0(v317)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la v318,a33
lb v319,0(v318)
addiu v320,$sp,-4
sb v319,0(v320)
addiu $sp,$sp,-4
jal print_c
addiu $sp,$sp,4
la v321,label_15_str
addiu v322,$sp,-4
sw v321,0(v322)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la v323,label_12_str
addiu v324,$sp,-4
sw v323,0(v324)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
la v325,label_10_str
addiu v326,$sp,-4
sw v325,0(v326)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
printGame_epilogue:
popRegisters
lw $ra,-4($fp)
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
printWinner:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,-4
sw $ra,0($sp)
addiu $sp,$sp,0
pushRegisters
la v327,label_18_str
addiu v328,$sp,-4
sw v327,0(v328)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu v329,$fp,4
lw v330,0(v329)
addiu v331,$sp,-4
sw v330,0(v331)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la v332,label_19_str
addiu v333,$sp,-4
sw v332,0(v333)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
printWinner_epilogue:
popRegisters
lw $ra,-4($fp)
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
switchPlayer:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
pushRegisters
addiu v334,$fp,8
lw v335,0(v334)
li v336,1
xor v337,v335,v336
sltiu v337,v337,1
beqz v337,label_92_ELSE
li v338,2
addi v339,$fp,4
sw v338,0(v339)
j switchPlayer_epilogue
j label_93_END
label_92_ELSE:
li v340,1
addi v341,$fp,4
sw v340,0(v341)
j switchPlayer_epilogue
label_93_END:
switchPlayer_epilogue:
popRegisters
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
get_mark:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
pushRegisters
addiu v342,$fp,8
lw v343,0(v342)
li v344,1
xor v345,v343,v344
sltiu v345,v345,1
beqz v345,label_96_ELSE
li v346,88
addi v347,$fp,4
sb v346,0(v347)
j get_mark_epilogue
j label_97_END
label_96_ELSE:
li v348,79
addi v349,$fp,4
sb v348,0(v349)
j get_mark_epilogue
label_97_END:
get_mark_epilogue:
popRegisters
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
selectmove:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,-4
sw $ra,0($sp)
addiu $sp,$sp,0
pushRegisters
li v350,1
addi v4,v350,0
beqz v4,label_100_next
label_102_body:
la v351,label_18_str
addiu v352,$sp,-4
sw v351,0(v352)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu v353,$fp,4
lw v354,0(v353)
addiu v355,$sp,-4
sw v354,0(v355)
addiu $sp,$sp,-4
jal print_i
addiu $sp,$sp,4
la v356,label_20_str
addiu v357,$sp,-4
sw v356,0(v357)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $sp,$sp,-4
jal read_c
addi v358,$sp,0
lb v359,0(v358)
addiu $sp,$sp,4
addi v2,v359,0
addiu $sp,$sp,-4
jal read_i
addi v360,$sp,0
lw v361,0(v360)
addiu $sp,$sp,4
addi v3,v361,0
addiu v362,$fp,4
lw v363,0(v362)
addiu v364,$sp,-4
sw v363,0(v364)
addiu $sp,$sp,-4
addiu $sp,$sp,-4
jal get_mark
addi v365,$sp,0
lb v366,0(v365)
addiu $sp,$sp,8
addi v6,v366,0
addiu v367,$sp,-4
sb v2,0(v367)
addiu v368,$sp,-8
sw v3,0(v368)
addiu v369,$sp,-12
sb v6,0(v369)
addiu $sp,$sp,-12
addiu $sp,$sp,-4
jal set
addi v370,$sp,0
lw v371,0(v370)
addiu $sp,$sp,16
addi v5,v371,0
li v372,0
xor v373,v5,v372
sltiu v373,v373,1
beqz v373,label_105_ELSE
la v374,label_21_str
addiu v375,$sp,-4
sw v374,0(v375)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
j label_106_END
label_105_ELSE:
li v376,0
li v377,1
sub v378,v376,v377
xor v379,v5,v378
sltiu v379,v379,1
beqz v379,label_107_ELSE
la v380,label_22_str
addiu v381,$sp,-4
sw v380,0(v381)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
j label_108_END
label_107_ELSE:
li v382,0
addi v4,v382,0
label_108_END:
label_106_END:
label_101_posttest:
bnez v4,label_102_body
label_100_next:
selectmove_epilogue:
popRegisters
lw $ra,-4($fp)
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
won:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
pushRegisters
li v383,0
addi v7,v383,0
la v384,a11
lb v385,0(v384)
addiu v386,$fp,8
lb v387,0(v386)
xor v388,v385,v387
sltiu v388,v388,1
beqz v388,label_111_END
la v389,a21
lb v390,0(v389)
addiu v391,$fp,8
lb v392,0(v391)
xor v393,v390,v392
sltiu v393,v393,1
beqz v393,label_112_ELSE
la v394,a31
lb v395,0(v394)
addiu v396,$fp,8
lb v397,0(v396)
xor v398,v395,v397
sltiu v398,v398,1
beqz v398,label_114_END
li v399,1
addi v7,v399,0
label_114_END:
j label_113_END
label_112_ELSE:
la v400,a22
lb v401,0(v400)
addiu v402,$fp,8
lb v403,0(v402)
xor v404,v401,v403
sltiu v404,v404,1
beqz v404,label_115_ELSE
la v405,a33
lb v406,0(v405)
addiu v407,$fp,8
lb v408,0(v407)
xor v409,v406,v408
sltiu v409,v409,1
beqz v409,label_117_END
li v410,1
addi v7,v410,0
label_117_END:
j label_116_END
label_115_ELSE:
la v411,a12
lb v412,0(v411)
addiu v413,$fp,8
lb v414,0(v413)
xor v415,v412,v414
sltiu v415,v415,1
beqz v415,label_118_END
la v416,a13
lb v417,0(v416)
addiu v418,$fp,8
lb v419,0(v418)
xor v420,v417,v419
sltiu v420,v420,1
beqz v420,label_119_END
li v421,1
addi v7,v421,0
label_119_END:
label_118_END:
label_116_END:
label_113_END:
label_111_END:
la v422,a12
lb v423,0(v422)
addiu v424,$fp,8
lb v425,0(v424)
xor v426,v423,v425
sltiu v426,v426,1
beqz v426,label_120_END
la v427,a22
lb v428,0(v427)
addiu v429,$fp,8
lb v430,0(v429)
xor v431,v428,v430
sltiu v431,v431,1
beqz v431,label_121_END
la v432,a32
lb v433,0(v432)
addiu v434,$fp,8
lb v435,0(v434)
xor v436,v433,v435
sltiu v436,v436,1
beqz v436,label_122_END
li v437,1
addi v7,v437,0
label_122_END:
label_121_END:
label_120_END:
la v438,a13
lb v439,0(v438)
addiu v440,$fp,8
lb v441,0(v440)
xor v442,v439,v441
sltiu v442,v442,1
beqz v442,label_123_END
la v443,a23
lb v444,0(v443)
addiu v445,$fp,8
lb v446,0(v445)
xor v447,v444,v446
sltiu v447,v447,1
beqz v447,label_124_ELSE
la v448,a33
lb v449,0(v448)
addiu v450,$fp,8
lb v451,0(v450)
xor v452,v449,v451
sltiu v452,v452,1
beqz v452,label_126_END
li v453,1
addi v7,v453,0
label_126_END:
j label_125_END
label_124_ELSE:
la v454,a22
lb v455,0(v454)
addiu v456,$fp,8
lb v457,0(v456)
xor v458,v455,v457
sltiu v458,v458,1
beqz v458,label_127_END
la v459,a31
lb v460,0(v459)
addiu v461,$fp,8
lb v462,0(v461)
xor v463,v460,v462
sltiu v463,v463,1
beqz v463,label_128_END
li v464,1
addi v7,v464,0
label_128_END:
label_127_END:
label_125_END:
label_123_END:
la v465,a21
lb v466,0(v465)
addiu v467,$fp,8
lb v468,0(v467)
xor v469,v466,v468
sltiu v469,v469,1
beqz v469,label_129_END
la v470,a22
lb v471,0(v470)
addiu v472,$fp,8
lb v473,0(v472)
xor v474,v471,v473
sltiu v474,v474,1
beqz v474,label_130_END
la v475,a23
lb v476,0(v475)
addiu v477,$fp,8
lb v478,0(v477)
xor v479,v476,v478
sltiu v479,v479,1
beqz v479,label_131_END
li v480,1
addi v7,v480,0
label_131_END:
label_130_END:
label_129_END:
la v481,a31
lb v482,0(v481)
addiu v483,$fp,8
lb v484,0(v483)
xor v485,v482,v484
sltiu v485,v485,1
beqz v485,label_132_END
la v486,a32
lb v487,0(v486)
addiu v488,$fp,8
lb v489,0(v488)
xor v490,v487,v489
sltiu v490,v490,1
beqz v490,label_133_END
la v491,a33
lb v492,0(v491)
addiu v493,$fp,8
lb v494,0(v493)
xor v495,v492,v494
sltiu v495,v495,1
beqz v495,label_134_END
li v496,1
addi v7,v496,0
label_134_END:
label_133_END:
label_132_END:
addi v497,$fp,4
sw v7,0(v497)
j won_epilogue
won_epilogue:
popRegisters
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
.globl main
main:
addiu $fp,$sp,0
addiu $sp,$sp,0
la v498,empty
li v499,32
sb v499,0(v498)
li v500,1
addi v8,v500,0
jal reset
addiu $sp,$sp,0
jal printGame
addiu $sp,$sp,0
li v501,1
addi v9,v501,0
beqz v8,label_137_next
label_139_body:
addiu v502,$sp,-4
sw v9,0(v502)
addiu $sp,$sp,-4
jal selectmove
addiu $sp,$sp,4
addiu v503,$sp,-4
sw v9,0(v503)
addiu $sp,$sp,-4
addiu $sp,$sp,-4
jal get_mark
addi v504,$sp,0
lb v505,0(v504)
addiu $sp,$sp,8
addi v10,v505,0
jal printGame
addiu $sp,$sp,0
addiu v506,$sp,-4
sb v10,0(v506)
addiu $sp,$sp,-4
addiu $sp,$sp,-4
jal won
addi v507,$sp,0
lw v508,0(v507)
addiu $sp,$sp,8
beqz v508,label_140_ELSE
addiu v509,$sp,-4
sw v9,0(v509)
addiu $sp,$sp,-4
jal printWinner
addiu $sp,$sp,4
li v510,0
addi v8,v510,0
j label_141_END
label_140_ELSE:
addiu $sp,$sp,-4
jal full
addi v511,$sp,0
lw v512,0(v511)
addiu $sp,$sp,4
li v513,1
xor v514,v512,v513
sltiu v514,v514,1
beqz v514,label_142_ELSE
la v515,label_23_str
addiu v516,$sp,-4
sw v515,0(v516)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
li v517,0
addi v8,v517,0
j label_143_END
label_142_ELSE:
addiu v518,$sp,-4
sw v9,0(v518)
addiu $sp,$sp,-4
addiu $sp,$sp,-4
jal switchPlayer
addi v519,$sp,0
lw v520,0(v519)
addiu $sp,$sp,8
addi v9,v520,0
label_143_END:
label_141_END:
li v521,0
xor v522,v8,v521
sltiu v522,v522,1
beqz v522,label_144_END
la v523,label_24_str
addiu v524,$sp,-4
sw v523,0(v524)
addiu $sp,$sp,-4
jal print_s
addiu $sp,$sp,4
addiu $sp,$sp,-4
jal read_c
addi v525,$sp,0
lb v526,0(v525)
addiu $sp,$sp,4
addi v11,v526,0
li v527,121
xor v528,v11,v527
sltiu v528,v528,1
beqz v528,label_145_ELSE
li v529,1
addi v8,v529,0
jal reset
addiu $sp,$sp,0
j label_146_END
label_145_ELSE:
li v530,89
xor v531,v11,v530
sltiu v531,v531,1
beqz v531,label_147_END
li v532,1
addi v8,v532,0
jal reset
addiu $sp,$sp,0
label_147_END:
label_146_END:
label_144_END:
label_138_posttest:
bnez v8,label_139_body
label_137_next:
main_epilogue:
li $v0,10
syscall

.text
print_s:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
pushRegisters
lw $a0,4($fp)
li $v0,4
syscall
print_s_epilogue:
popRegisters
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
print_i:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
pushRegisters
lw $a0,4($fp)
li $v0,1
syscall
print_i_epilogue:
popRegisters
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
print_c:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
pushRegisters
lw $a0,4($fp)
li $v0,11
syscall
print_c_epilogue:
popRegisters
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
read_c:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
pushRegisters
li $v0,12
syscall
sw $v0,4($fp)
read_c_epilogue:
popRegisters
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
read_i:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
pushRegisters
li $v0,5
syscall
sw $v0,4($fp)
read_i_epilogue:
popRegisters
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

.text
mcmalloc:
addiu $sp,$sp,-4
sw $fp,0($sp)
addi $fp,$sp,0
addiu $sp,$sp,0
pushRegisters
lw $a0,8($fp)
li $v0,9
syscall
sw $v0,4($fp)
mcmalloc_epilogue:
popRegisters
addiu $sp,$fp,4
lw $fp,0($fp)
jr $ra

