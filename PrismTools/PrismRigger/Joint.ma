//Maya ASCII 2018ff09 scene
//Name: Joint.ma
//Last modified: Tue, Sep 18, 2018 04:59:38 PM
//Codeset: 932
requires maya "2018ff09";
requires -dataType "HIKCharacter" -dataType "HIKCharacterState" -dataType "HIKEffectorState"
		 -dataType "HIKPropertySetState" "mayaHIK" "1.0_HIK_2016.5";
requires "stereoCamera" "10.0";
requires "Boole" "20110503";
requires "AtgMaterials" "ATG SDK: 1.32.0";
requires "TcToonShader3" "0.00";
requires "clgSymbolMaker" "1.5";
requires "TcSceneManager" "1.00";
requires "COLLADA" "3.04C PhyreEngine(TM) 3.15.0.0";
requires "clgDangleCurve" "2.0.2";
requires "DF_locator" "1.11 / Expire: 2011.8.31";
requires "PVRTexTool_v2014" "1.0.1";
requires "mayall_maya60" "0.9.1(Beta)";
requires "sxmaterial" "8.5";
requires "transIT3" "1.0";
requires "vsMaster" "1.0";
requires "vstUtils" "1.0";
requires "xfrog" "1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201807191615-2c29512b8a";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -n "Character_Reference";
	rename -uid "967EF3C7-4966-465E-1A43-66AF41AE1B6F";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
createNode locator -n "Character_ReferenceShape" -p "Character_Reference";
	rename -uid "AEAA3C73-40CE-B1D1-BB06-2F8FBD443545";
	setAttr -k off ".v";
createNode joint -n "Character_Hips" -p "Character_Reference";
	rename -uid "CB91D58D-44B2-FFC4-C7F3-84B281256138";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -7.0476868156525707e-16 115.32199859619141 1.4095376807678694e-15 ;
	setAttr ".jo" -type "double3" 89.999999999999972 0 89.999999999999972 ;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-16 1 0 0 -4.4408920985006262e-16 0 1 0
		 1 -4.4408920985006262e-16 4.4408920985006262e-16 0 0 115.322 0 1;
	setAttr ".typ" 1;
	setAttr ".fbxID" 5;
createNode joint -n "Character_Spine" -p "Character_Hips";
	rename -uid "1D648B7C-486F-58F3-2E49-40A991332C6B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.7407608032226563 1.217142405370291e-15 -6.0857114974558618e-16 ;
	setAttr ".jo" -type "double3" 0 0 -1.9999999999999472 ;
	setAttr ".bps" -type "matrix" 4.59317172617089e-16 0.99939082701909576 -0.034899496702500046 0
		 -4.2832019278753274e-16 0.034899496702500046 0.99939082701909576 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 1.2171422980600254e-15 118.06276080000001 0 1;
	setAttr ".typ" 6;
	setAttr ".fbxID" 5;
createNode joint -n "Character_Spine1" -p "Character_Spine";
	rename -uid "C0525D4F-469B-2D80-867F-049A79A3F32C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 9.7650275533157753 4.9054161266326446e-07 -1.492789041907691e-15 ;
	setAttr ".jo" -type "double3" 0 0 -2.9999999999999565 ;
	setAttr ".bps" -type "matrix" 4.811042412630871e-16 0.99619469809174577 -0.087155742747656501 0
		 -4.0369439140168292e-16 0.087155742747656501 0.99619469809174577 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 5.7023869557109906e-15 127.82183982614796 -0.3407940582832466 1;
	setAttr ".typ" 6;
	setAttr ".fbxID" 5;
createNode joint -n "Character_Spine2" -p "Character_Spine1";
	rename -uid "62BE643D-4D75-87DF-3141-BFABF944EA79";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 13.87789818427126 -1.0424039071921243e-06 -4.9769885165204149e-10 ;
	setAttr ".jo" -type "double3" 0 0 5 ;
	setAttr ".pa" -type "double3" 36.762975808112202 0 0 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 1.2379102964140113e-14 141.64692814355453 -1.5503336046867018 1;
	setAttr ".typ" 6;
	setAttr ".fbxID" 5;
createNode joint -n "Character_Neck" -p "Character_Spine2";
	rename -uid "DFEF1FC3-44DE-5AC6-D1E9-B2940D94356B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 17.167678833007784 -2.9531932455029164e-14 -2.3072033362398305e-09 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.0003083966209613e-14 158.81460714355453 -1.5503336046866729 1;
	setAttr ".typ" 7;
	setAttr ".fbxID" 5;
createNode joint -n "Character_Head" -p "Character_Neck";
	rename -uid "698C1F24-4B01-D20D-0FF8-369ABFAA46FA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 8.4374847412109375 -1.4432899320127035e-14 -3.5959746014156929e-09 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.3750079879754599e-14 167.25209184355452 -1.5503336046866587 1;
	setAttr ".typ" 8;
	setAttr ".fbxID" 5;
createNode joint -n "Character_HeadUp" -p "Character_Head";
	rename -uid "325729F3-4842-031B-6A11-AD89DBAE1EBA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 23.805000305175781 4.4408920985006262e-16 -9.8491534210060766e-15 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.4472470234754516e-14 191.05709214873031 -1.5503336046866183 1;
	setAttr ".fbxID" 5;
createNode joint -n "Character_Eye_L" -p "Character_Head";
	rename -uid "2FE9FBDF-4A77-9E13-ED3D-20805C6DA8BD";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 9.9804477067827122 4.5866754493465933 2.5366422083400302 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.5366422083400559 177.23253955033724 3.0363418446599533 1;
	setAttr ".fbxID" 5;
createNode joint -n "Character_Eye_R" -p "Character_Head";
	rename -uid "97AE8307-459C-3382-62D6-BDA336B216C1";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 9.9804477067827122 4.587 -2.537 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 -2.5369999999999742 177.23253955033724 3.0366663953133579 1;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftShoulder" -p "Character_Spine2";
	rename -uid "0B0198B6-400B-00A5-B070-C58E5F904E78";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 9.8394165039062216 0.052899718284586728 6.3903198247164346 ;
	setAttr ".jo" -type "double3" 35.117237161758709 -69.279601633018473 -34.096118496564038 ;
	setAttr ".bps" -type "matrix" 0.93531812790679647 0.29298768950820886 -0.19833863316451253 0
		 0.20352845173297279 0.012991220144158131 0.9789828382225837 0 0.28940658068555486 -0.95602795042603639 -0.047480407117967652 0
		 6.3903198000000172 151.48634464355453 -1.4974338866866823 1;
	setAttr ".sd" 1;
	setAttr ".typ" 9;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftArm" -p "Character_LeftShoulder";
	rename -uid "030D5696-45ED-86AD-0A7A-45AC3475A7DE";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 11.632612835754273 0.015638923866194476 -0.14856263374247192 ;
	setAttr ".jo" -type "double3" -1.4554471214587417 -16.991854247264104 7.5478001883629195 ;
	setAttr ".bps" -type "matrix" 0.99687989433796631 1.6365756745850835e-05 -0.078933364282078589 0
		 0.078933365978686804 -0.00020668944817928483 0.99687987291084734 0 -1.4432899320127035e-15 -0.99999997850581701 -0.00020733635952847884 0
		 17.230701752468534 155.03679030466319 -3.7822654811142296 1;
	setAttr ".sd" 1;
	setAttr ".typ" 10;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftForeArm" -p "Character_LeftArm";
	rename -uid "3BB40DFC-41AA-D9C4-B57E-35A52E0A6478";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 24.660940530304476 3.6698025196457706e-07 -8.392426792624974e-06 ;
	setAttr ".jo" -type "double3" -0.011890357530588098 -9.7577304479260863e-06 6.9295886836102305 ;
	setAttr ".bps" -type "matrix" 0.99912112601209402 -8.8610759624914769e-06 0.041916291317420869 0
		 -0.041916291315772361 3.7174966304245882e-07 0.99912112605138803 0 -8.8688705607842278e-06 -0.99999999996067179 -4.9948380934777825e-13 0
		 41.814698039790343 155.03720229197558 -5.7288361530307972 1;
	setAttr ".sd" 1;
	setAttr ".typ" 11;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHand" -p "Character_LeftForeArm";
	rename -uid "DC720DFE-42A8-BE53-CCB6-FEB7A71784F7";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 25.506295895149016 -3.3929425757861509e-07 2.8686103235031624e-06 ;
	setAttr ".bps" -type "matrix" 0.99912112601209402 -8.8610759624914769e-06 0.041916291317420869 0
		 -0.041916291315772361 3.7174966304245882e-07 0.99912112605138803 0 -8.8688705607842278e-06 -0.99999999996067179 -4.9948380934777825e-13 0
		 67.298577233904624 155.03697341013856 -4.6597071584624938 1;
	setAttr ".sd" 1;
	setAttr ".typ" 12;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandThumb1" -p "Character_LeftHand";
	rename -uid "D07F0395-46C3-F8CB-39B3-76A57089AAD1";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 1.7026470718545426 2.066549069766114 2.1428079466631402 ;
	setAttr ".jo" -type "double3" -11.612700769512347 -19.999531702619919 28.597635271501737 ;
	setAttr ".bps" -type "matrix" 0.80547343999123588 -0.34201960654863806 0.48397843568179799 0
		 -0.44548133796126083 0.18915999506567224 0.87507992423263836 0 -0.3908438498901195 -0.92045699791085844 9.5276172820342116e-16 0
		 68.913086843277995 152.89415119117646 -2.5236056427767197 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandThumb2" -p "Character_LeftHandThumb1";
	rename -uid "4EB3A2E0-4CC1-0CC4-AC8E-8DB7E68FCD60";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 6.8159685368968983 2.0004824077268779e-06 -2.6967306610004016e-06 ;
	setAttr ".jo" -type "double3" -0.025049905731216925 -0.093843148323969935 -13.9998523610526 ;
	setAttr ".bps" -type "matrix" 0.88867716975422772 -0.37912893086221627 0.25790335736645409 0
		 -0.23721773097305252 0.10120222256890085 0.96617071900317464 0 -0.39240366469951893 -0.91979310930795077 -6.0076007477282067e-15 0
		 74.403168656423702 150.56295916351945 0.77517839043033421 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandThumb3" -p "Character_LeftHandThumb2";
	rename -uid "378615BF-4F33-41F2-5A10-EFABFE2DD9EB";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 3.2776053951470647 8.7121689174018968e-07 -5.3666399253415875e-06 ;
	setAttr ".jo" -type "double3" -0.13471214904380358 0.61660951824452481 -15.262897368265358 ;
	setAttr ".bps" -type "matrix" 0.92394866465539172 -0.38247642854366959 -0.0055359452669147729 0
		 0.0059914860957702648 -5.3138214564218272e-08 0.99998205088609549 0 -0.38246956372485796 -0.92396524913466127 0.0022915531065968702 0
		 77.315903680311848 149.32032914219604 1.6204849173076719 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandIndex1" -p "Character_LeftHand";
	rename -uid "4FA8E300-4719-2A85-574D-DA83FE89E3AC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 9.1713276732590714 2.8972997992026368 -0.13206871615676619 ;
	setAttr ".jo" -type "double3" -9.4880879651930499e-06 -12.999425601029492 -2.4022882283478002 ;
	setAttr ".bps" -type "matrix" 0.97437032489133113 -0.22494992769647076 7.1731482060442627e-07 0
		 -6.9893021598491139e-07 1.6136017178670059e-07 0.99999999999974287 0 -0.22494992769652852 -0.97437032489158193 2.6145273013878586e-13 0
		 76.340401601408985 155.16896193937217 -1.3805256761372346 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandIndex2" -p "Character_LeftHandIndex1";
	rename -uid "90EFABC7-4B22-3C64-07EC-3C87E015A498";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 5.6264656222006195 -6.9808707325869079e-07 -2.3179418064955826e-06 ;
	setAttr ".r" -type "double3" 0 -6.6233016514301483e-05 0 ;
	setAttr ".jo" -type "double3" 0 -0.00046263673818263068 0 ;
	setAttr ".bps" -type "matrix" 0.97436797583058254 -0.22496010240773551 7.1731482056804748e-07 0
		 -6.9893021598491139e-07 1.6136017178670059e-07 0.99999999999974287 0 -0.22496010240779327 -0.97436797583083334 -7.2290052576600057e-12 0
		 81.822663237492023 153.90329116799901 -1.3805220998585621 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandIndex3" -p "Character_LeftHandIndex2";
	rename -uid "DC958FE1-482E-5A6F-F6F2-09888E70EF0F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.7969337329773296 -2.2447005980641421e-06 -3.0324292794148278e-05 ;
	setAttr ".jo" -type "double3" 2.8926976314920852e-27 -6.6250114948781434e-05 -4.1099111785736037e-05 ;
	setAttr ".bps" -type "matrix" 0.97436771571272174 -0.2249612290524142 2.5345000513944453e-16 0
		 -1.6264896639984095e-12 -7.0436480187232799e-12 1.0000000000000002 0 -0.22496122905241411 -0.97436771571272185 -7.2290052579578998e-12 0
		 84.547909765745871 153.27410957041241 -1.3805223382771667 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandMiddle1" -p "Character_LeftHand";
	rename -uid "30C8EC57-46B4-A7EC-9C56-34A373D6BB0F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 9.3084826446977331 0.53006952523908346 -0.93787220314769115 ;
	setAttr ".jo" -type "double3" -5.9364148836435997e-06 -12.999499108889253 -2.4023040177880137 ;
	setAttr ".bps" -type "matrix" 0.9743700362902401 -0.22495117776876575 4.4879938651484573e-07 0
		 -4.3729665137535747e-07 1.0095805087051542e-07 0.99999999999989952 0 -0.22495117776878834 -0.97437003629033836 1.0292690415623217e-13 0
		 76.576668619710659 155.97476332398344 -3.7399264243781523 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandMiddle2" -p "Character_LeftHandMiddle1";
	rename -uid "6008D623-40BF-A132-D0A2-28BF884F075A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 5.6204766658556409 8.1539362639659885e-07 -4.9700588249379507e-06 ;
	setAttr ".bps" -type "matrix" 0.9743700362902401 -0.22495117776876575 4.4879938651484573e-07 0
		 -4.3729665137535747e-07 1.0095805087051542e-07 0.99999999999989952 0 -0.22495117776878834 -0.97437003629033836 1.0292690415623217e-13 0
		 82.053093823878541 154.71043531337293 -3.7399235633551875 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandMiddle3" -p "Character_LeftHandMiddle2";
	rename -uid "B42E86FF-459F-5DB1-1E76-4EBE5013FE8D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 3.3427019380447618 -1.0233654212932208e-06 8.6077223784286616e-06 ;
	setAttr ".jo" -type "double3" 0 7.2577427542866629e-06 -2.5714310682672373e-05 ;
	setAttr ".bps" -type "matrix" 0.97437006478523525 -0.22495105434386539 2.2146400200471794e-16 0
		 2.2934393675898366e-14 1.0034191271609109e-13 1.0000000000000002 0 -0.22495105434386534 -0.97437006478523536 1.0292690418428619e-13 0
		 85.310120459172154 153.95848219693116 -3.7399230865180253 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandRing1" -p "Character_LeftHand";
	rename -uid "C6C79CBB-40BD-E4FE-612D-B89378FC4D6C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 9.0606256989174199 -1.7796301332658269 -0.88899696412946128 ;
	setAttr ".jo" -type "double3" -3.6210662265979684e-06 -12.999544801969721 -2.402314310894623 ;
	setAttr ".bps" -type "matrix" 0.97436985689262323 -0.2249519548236335 2.7375476423133057e-07 0
		 -2.6673838166295699e-07 6.1581707411116584e-08 0.99999999999996281 0 -0.22495195482364186 -0.97436985689265987 3.9052740650083694e-14 0
		 76.425843163767624 155.92588942163411 -6.0579853615696839 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandRing2" -p "Character_LeftHandRing1";
	rename -uid "49A8047C-4599-91BE-41C9-DDB26647E49D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 5.5286036808446255 3.9386703054589134e-07 1.2988781321610077e-05 ;
	setAttr ".bps" -type "matrix" 0.97436985689262323 -0.2249519548236335 2.7375476423133057e-07 0
		 -2.6673838166295699e-07 6.1581707411116584e-08 0.99999999999996281 0 -0.22495195482364186 -0.97436985689265987 3.9052740650083694e-14 0
		 81.812745037900868 154.68220655599728 -6.0579834542210511 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandRing3" -p "Character_LeftHandRing2";
	rename -uid "06747BF6-458F-9E23-B6FF-F09FB9816F9D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.7803770398758161 -2.8430430099035675e-07 6.6847357800270402e-06 ;
	setAttr ".jo" -type "double3" -1.4463488157456935e-27 5.295082239038573e-05 -1.568499260097869e-05 ;
	setAttr ".bps" -type "matrix" 0.97437006478523525 -0.22495105434386525 1.9327053868663757e-16 0
		 8.5964561194605169e-15 3.8098478279405135e-14 1.0000000000000002 0 -0.2249510543438652 -0.97437006478523547 3.9052740828714455e-14 0
		 84.521859073754101 154.05674880129553 -6.0579829773839009 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandPinky1" -p "Character_LeftHand";
	rename -uid "72E14001-429D-C1F7-062E-9D946E389592";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 8.4118391053241481 -3.8485940883280909 -0.048614176668593245 ;
	setAttr ".jo" -type "double3" -9.5186896473851394e-06 -12.999539534336561 -2.4022880926698074 ;
	setAttr ".bps" -type "matrix" 0.97436987757392179 -0.22495186524246255 7.1962183089459454e-07 0
		 -7.0117777600450612e-07 1.6188052977306694e-07 0.99999999999974143 0 -0.2249518652425207 -0.97436987757417415 2.6339237440414764e-13 0
		 75.864342647658447 155.08551161847751 -8.1523266303473392 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandPinky2" -p "Character_LeftHandPinky1";
	rename -uid "B261FC7E-4BE1-47EE-4D7F-6492E65F5F1B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 4.2063251711581913 7.8773384082353459e-07 -8.1329623924375483e-06 ;
	setAttr ".bps" -type "matrix" 0.97436987757392179 -0.22495186524246255 7.1962183089459454e-07 0
		 -7.0117777600450612e-07 1.6188052977306694e-07 0.99999999999974143 0 -0.2249518652425207 -0.97436987757417415 2.6339237440414764e-13 0
		 79.96286104734304 154.13929884343474 -8.1523228156500576 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandPinky3" -p "Character_LeftHandPinky2";
	rename -uid "5E4B3089-434A-053A-6F87-C491F660AFE8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.1276859725186341 -1.0114198124355767e-05 1.1050364776110655e-05 ;
	setAttr ".jo" -type "double3" 0 4.7683192157465637e-05 -4.1231293743463966e-05 ;
	setAttr ".bps" -type "matrix" 0.97437006478523536 -0.22495105434386539 2.1405281614918304e-16 0
		 5.9055182610590735e-14 2.5669229096200602e-13 1.0000000000000004 0 -0.22495105434386531 -0.97437006478523536 2.6339237458237977e-13 0
		 82.036011708884317 153.66066114194035 -8.1523294913702635 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightShoulder" -p "Character_Spine2";
	rename -uid "4AD7636B-4BF6-78CE-B24B-B08F8C6B8766";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 9.8390655517577841 0.052903652191147454 -6.3903198237210654 ;
	setAttr ".jo" -type "double3" 35.117237161758609 -69.279601633018572 145.90388150343594 ;
	setAttr ".bps" -type "matrix" 0.93531812790679658 -0.29298768950820808 0.19833863316451264 0
		 0.20352845173297221 -0.012991220144160213 -0.9789828382225837 0 0.28940658068555464 0.9560279504260365 0.047480407117965404 0
		 -6.3903197999999835 151.48599374355453 -1.4974299526866881 1;
	setAttr ".sd" 2;
	setAttr ".typ" 9;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightArm" -p "Character_RightShoulder";
	rename -uid "445A1164-4702-9597-00FE-B8AC42B694D5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -11.63277625256427 -0.015646920521770413 0.14910298634953278 ;
	setAttr ".r" -type "double3" 0 -7.8740165164855474e-05 9.8858579704362714e-05 ;
	setAttr ".jo" -type "double3" -1.4555455247755049 -16.992045665467174 7.548136913547574 ;
	setAttr ".bps" -type "matrix" 0.99688042858593739 -1.1857041610663366e-05 0.078926617574352376 0
		 0.078926618337086779 0.00020668955122356281 -0.996880407168935 0 -4.4932546973130982e-06 0.99999997856941991 0.0002069806046058123 0
		 -17.230699456094506 155.03700385525036 -3.7822603913477 1;
	setAttr ".sd" 2;
	setAttr ".typ" 10;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightForeArm" -p "Character_RightArm";
	rename -uid "CB0B225B-4293-4B2D-2C93-4990E05AC81D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -24.6609471884709 0.00019023497209857965 -0.00028382321013964429 ;
	setAttr ".r" -type "double3" 0 7.6904902763569839e-05 -9.3937437161173532e-05 ;
	setAttr ".jo" -type "double3" -0.011890357640375977 0.00018781311771062009 6.9292651201557831 ;
	setAttr ".bps" -type "matrix" 0.99912113577507033 9.8874408535774125e-06 -0.041916058375898062 0
		 -0.041916058368885019 -9.1553579167571618e-07 -0.99912113582386919 0 -9.9171267876402334e-06 0.99999999995070032 -5.0028861206416432e-07 0
		 -41.814711729839736 155.03689267236439 -5.7287052565477303 1;
	setAttr ".sd" 2;
	setAttr ".typ" 11;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHand" -p "Character_RightForeArm";
	rename -uid "8E6BDFF8-4D05-8909-B59E-CDAF8B4CC185";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -25.506314869888065 2.3324117943701594e-06 0.0002268089335757395 ;
	setAttr ".bps" -type "matrix" 0.99912113577507033 9.8874408535774125e-06 -0.041916058375898062 0
		 -0.041916058368885019 -9.1553579167571618e-07 -0.99912113582386919 0 -9.9171267876402334e-06 0.99999999995070032 -5.0028861206416432e-07 0
		 -67.29861011445918 155.03686650011409 -4.659580356446817 1;
	setAttr ".sd" 2;
	setAttr ".typ" 12;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandThumb1" -p "Character_RightHand";
	rename -uid "DB0674E0-4E93-5F8B-3EF8-9FA4F513D0D0";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -1.7026393600181819 -2.0665457992209548 -2.1429922100006138 ;
	setAttr ".jo" -type "double3" -11.612700769541402 -19.999531702604948 28.597635271511802 ;
	setAttr ".bps" -type "matrix" 0.80547319430682263 0.34202020876278227 -0.48397841899306471 0
		 -0.44548093564676355 -0.18916089983560244 -0.87507993346246371 0 -0.39084481476469357 0.92045658820568421 -5.5161878991457219e-07 0
		 -68.91311014364021 152.89386045747364 -2.5234799748863912 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandThumb2" -p "Character_RightHandThumb1";
	rename -uid "871AF971-4B7A-D0C6-D32E-FF89F71CCA3A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -6.8159149446499772 -3.4891465589659276e-05 0.0001897690150087783 ;
	setAttr ".jo" -type "double3" -0.025049905721246091 -0.09384314832401322 -13.999852361052604 ;
	setAttr ".bps" -type "matrix" 0.88867683245996809 0.37912973339767564 -0.25790333984406844 0
		 -0.23721739962308361 -0.10120295459665032 -0.96617072368032941 0 -0.39240462887812605 0.91979269796770857 -5.5165015155613088e-07 0
		 -74.403205259015067 150.56286270926071 0.77530908521889508 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandThumb3" -p "Character_RightHandThumb2";
	rename -uid "66200BAC-4813-CFF2-6352-9AAEE6CEE79B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -3.2777180690767462 2.6047701981113391e-05 -0.00034373382788999152 ;
	setAttr ".jo" -type "double3" -0.13471214905760573 0.61660951824183385 -15.262897368265454 ;
	setAttr ".bps" -type "matrix" 0.9239482624308385 0.38247739984804541 0.0055359693381279744 0
		 0.0059917192429357041 -4.40859602094789e-07 -0.99998204948904956 0 -0.38247053174270568 0.92396484706144788 -0.0022921045281208297 0
		 -77.315908573797742 149.31986385788954 1.6206200506415134 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandIndex1" -p "Character_RightHand";
	rename -uid "B55CC0A3-4287-9006-9AF5-CDA146968A95";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -9.1713045801683108 -2.8972977570161085 0.13208256310409183 ;
	setAttr ".jo" -type "double3" -9.488119298690199e-06 -12.999425601030779 -2.4022882283405567 ;
	setAttr ".bps" -type "matrix" 0.97437008908576894 0.22495094908585606 -6.0267919916913977e-07 0
		 -4.6577866608832273e-07 -6.6164823669886084e-07 -0.99999999999967282 0 -0.22495094908618105 0.97437008908573097 -5.3991289831873109e-07 0
		 -76.34041222636084 155.16886245195798 -1.3804025202840906 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandIndex2" -p "Character_RightHandIndex1";
	rename -uid "F78719FE-4515-5A10-2E1E-5FA52086DAAE";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -5.6265783056981036 -4.6758064931040622e-06 -0.00031587701940338775 ;
	setAttr ".jo" -type "double3" 0 -0.0064910957921832805 0 ;
	setAttr ".bps" -type "matrix" 0.97431956825188148 0.22516966696494389 -6.0280038194155132e-07 0
		 -4.6577866608832273e-07 -6.6164823669886084e-07 -0.99999999999967282 0 -0.22516966696526888 0.97431956825184363 -5.397775971761036e-07 0
		 -81.822710698736657 153.90285023805987 -1.3803929920816722 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandIndex3" -p "Character_RightHandIndex2";
	rename -uid "615C1568-447B-E829-C5A3-EBB6E4FD6DE1";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -2.7968456834214095 2.6553775396287449e-06 0.00016025131216679256 ;
	setAttr ".jo" -type "double3" 4.1069973483108078e-05 0 0 ;
	setAttr ".bps" -type "matrix" 0.97431956825188148 0.22516966696494389 -6.0280038194155132e-07 0
		 -6.2718169315325164e-07 3.6750130026321287e-08 -0.99999999999980282 0 -0.22516966696487717 0.97431956825206756 1.7702866381073903e-07 0
		 -84.547768121360747 153.27324088419635 -1.3803932338809421 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandMiddle1" -p "Character_RightHand";
	rename -uid "9B767E05-4156-5CB5-E576-08BE3AA89DFB";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -9.3084901015187995 -0.5300671564715822 0.93808580599633729 ;
	setAttr ".jo" -type "double3" -5.9364442841768052e-06 -12.999499108890539 -2.4023040177807666 ;
	setAttr ".bps" -type "matrix" 0.97436980048330502 0.22495219915798281 -3.3416445784117952e-07 0
		 -2.0414517245410063e-07 -6.01245808653419e-07 -0.99999999999979861 0 -0.22495219915813827 0.9743698004831769 -5.3991285311103368e-07 0
		 -76.5767103384607 155.97486077821819 -3.7398030153174018 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandMiddle2" -p "Character_RightHandMiddle1";
	rename -uid "0FA4573A-4220-CCD2-3065-0D991F37CC6C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -5.6206053935683329 -6.189733900985317e-06 -0.0006540445717178045 ;
	setAttr ".jo" -type "double3" 0 -0.0054219826346032013 0 ;
	setAttr ".bps" -type "matrix" 0.97432656388941974 0.22513939437451819 -3.3426818163860308e-07 0
		 -2.0414517245410063e-07 -6.01245808653419e-07 -0.99999999999979861 0 -0.22513939437467367 0.97432656388929162 -5.3984864229041822e-07 0
		 -82.053111301757056 154.70985564784684 -3.7397934866717502 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandMiddle3" -p "Character_RightHandMiddle2";
	rename -uid "FA087291-492C-AA50-B06B-E99BAAB477BA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -3.3426876992611909 1.8487409230161234e-06 -7.1234177454471137e-05 ;
	setAttr ".jo" -type "double3" 2.5726794021846253e-05 0 0 ;
	setAttr ".bps" -type "matrix" 0.97432656388941974 0.22513939437451819 -3.3426818163860308e-07 0
		 -3.0523664680879646e-07 -1.6375636296968799e-07 -0.99999999999994016 0 -0.22513939437455929 0.97432656388946337 -9.0831380626858224e-08 0
		 -85.309964116181547 153.95721309633331 -3.7397936331033912 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandRing1" -p "Character_RightHand";
	rename -uid "AC373ACC-4BE6-E47A-2BF9-81B92EA91AA6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -9.0605573957948593 1.779619811401683 0.88907458284276686 ;
	setAttr ".jo" -type "double3" -3.6210960014496959e-06 -12.999544801971 -2.4023143108873706 ;
	setAttr ".bps" -type "matrix" 0.97436962108483272 0.22495297621275007 -1.5912026621453004e-07 0
		 -3.3586942635708685e-08 -5.6186929277084431e-07 -0.99999999999984179 0 -0.22495297621280366 0.97436962108468395 -5.3991288717108039e-07 0
		 -76.425808045545125 155.92584854503897 -6.0578529007656012 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandRing2" -p "Character_RightHandRing1";
	rename -uid "E0549DEE-44B3-5B43-4646-44A4A3F8D0BE";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -5.5286723307492167 3.5203030765984522e-06 -0.00031003478545699181 ;
	setAttr ".r" -type "double3" 0 -7.0441581578073486e-05 0 ;
	setAttr ".jo" -type "double3" 0 -0.012861648056716685 0 ;
	setAttr ".bps" -type "matrix" 0.97426834539742713 0.225391195827464 -1.5936308681881658e-07 0
		 -3.3586942635708685e-08 -5.6186929277084431e-07 -0.99999999999984179 0 -0.22539119582751765 0.97426834539727836 -5.3984126501516452e-07 0
		 -81.812708567365576 154.68185486936704 -6.0578536202589355 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandRing3" -p "Character_RightHandRing2";
	rename -uid "061BCA9B-443D-AFF1-38DE-1D9F1527D102";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -2.780355858935657 1.0509490762089513e-06 0.0004751944254337559 ;
	setAttr ".jo" -type "double3" 1.5719639939649089e-05 0 0 ;
	setAttr ".bps" -type "matrix" 0.97426834539742713 0.225391195827464 -1.5936308681881658e-07 0
		 -9.5425152606591665e-08 -2.9456954182239943e-07 -0.99999999999995226 0 -0.22539119582749995 0.97426834539739582 -2.6548179084031164e-07 0
		 -84.521625317834804 154.05563671038874 -6.0578537419483496 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandPinky1" -p "Character_RightHand";
	rename -uid "CF6E6308-40A3-9120-C969-80AF19AEF11E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -8.4117780857185807 3.8485946012075472 0.049074457269625782 ;
	setAttr ".jo" -type "double3" -9.5187182718571591e-06 -12.999539534337854 -2.4022880926625656 ;
	setAttr ".bps" -type "matrix" 0.97436964176632901 0.22495288663137786 -6.0498728305827529e-07 0
		 -4.6802623617249545e-07 -6.6216855097316604e-07 -0.99999999999967149 0 -0.22495288663170435 0.97436964176629204 -5.399130809349263e-07 0
		 -75.86431395149684 155.08585174762635 -8.1522026999491715 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandPinky2" -p "Character_RightHandPinky1";
	rename -uid "1D7F5FC0-4316-21A5-8B7B-359C10CD7C50";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -4.2065745668728667 -7.0245089691667317e-06 -0.00073272309899152788 ;
	setAttr ".r" -type "double3" 0 -0.00010358900884370553 0 ;
	setAttr ".jo" -type "double3" 0 -0.026129732531342764 0 ;
	setAttr ".bps" -type "matrix" 0.97416547667101283 0.22583539151774162 -6.0547609541896946e-07 0
		 -4.6802623617249545e-07 -6.6216855097316604e-07 -0.99999999999967149 0 -0.22583539151806814 0.97416547667097619 -5.3936485378922968e-07 0
		 -79.962907656896093 154.13885647804688 -8.1521923939003997 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandPinky3" -p "Character_RightHandPinky2";
	rename -uid "CB355C5E-4626-2847-9D06-0BA44311CB4E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -2.1275018162915842 1.3196994826714104e-05 0.00060745512757875986 ;
	setAttr ".jo" -type "double3" 4.1211716694972069e-05 0 0 ;
	setAttr ".bps" -type "matrix" 0.97416547667101283 0.22583539151774162 -6.0547609541896946e-07 0
		 -6.3046514971948549e-07 3.852933602261688e-08 -0.99999999999980071 0 -0.22583539151767307 0.97416547667120046 1.7991529293698981e-07 0
		 -82.035580166848888 153.65896802638753 -8.1522029770432454 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftUpLeg" -p "Character_Hips";
	rename -uid "4C686297-4C6F-F65E-E606-E5B842C3B8CA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -3.1739959716796875 1.1746324687255477e-16 6.8769998550415057 ;
	setAttr ".jo" -type "double3" 0 180.00000000000003 0 ;
	setAttr ".bps" -type "matrix" -1.224646799147353e-16 -1 1.4282998336737732e-31 0
		 -4.4408920985006262e-16 0 1 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.8769998999999986 112.148004 3.0540014517299598e-15 1;
	setAttr ".sd" 1;
	setAttr ".typ" 2;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftLeg" -p "Character_LeftUpLeg";
	rename -uid "7D1E0A39-4444-EC01-D04F-61817FD75542";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 53.269317626953132 -1.4089386245393012e-05 2.0980834955608429e-05 ;
	setAttr ".bps" -type "matrix" -1.224646799147353e-16 -1 1.4282998336737732e-31 0
		 -4.4408920985006262e-16 0 1 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.8769846412109921 58.878686000000002 -6.5421176969460048e-06 1;
	setAttr ".sd" 1;
	setAttr ".typ" 3;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftFoot" -p "Character_LeftLeg";
	rename -uid "948C4000-4834-5D75-3809-D09446BD58C6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 49.426418304443359 -2.1679927158402279e-05 -9.5367431702797489e-06 ;
	setAttr ".jo" -type "double3" 0 0 62 ;
	setAttr ".bps" -type "matrix" -4.4960118351738033e-16 -0.46947156278589086 0.88294759285892688 0
		 -1.0035736102370583e-16 0.88294759285892688 0.46947156278589086 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.8769998999999862 9.4522680000000037 -2.1219247696945997e-05 1;
	setAttr ".sd" 1;
	setAttr ".typ" 4;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftToeBase" -p "Character_LeftFoot";
	rename -uid "49B57231-4C2C-006D-CF05-EA850B17B097";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 15.869999549792121 6.8407789832747312e-07 2.2888183586644573e-05 ;
	setAttr ".jo" -type "double3" 0 0 28.047999999999995 ;
	setAttr ".bps" -type "matrix" -4.4398645825228063e-16 0.00083775794296192529 0.99999964908075289 0
		 1.2283667620245762e-16 0.99999964908075289 -0.00083775794296192529 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.876975104467979 2.0017551963721187 14.012357556783801 1;
	setAttr ".sd" 1;
	setAttr ".typ" 25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightUpLeg" -p "Character_Hips";
	rename -uid "8714F349-4ACD-84E0-9F9C-9CA92F1FF9DB";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -3.1739959716796875 -2.9365381848918216e-15 -6.8769998550415021 ;
	setAttr ".jo" -type "double3" -180 0 0 ;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-16 1 0 0 3.2162452993532727e-16 5.4385242937875642e-32 -1 0
		 -1 4.4408920985006262e-16 -3.2162452993532727e-16 0 -6.8769999000000022 112.148004 -3.0540014517299598e-15 1;
	setAttr ".sd" 2;
	setAttr ".typ" 2;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightLeg" -p "Character_RightUpLeg";
	rename -uid "0A8DC0C2-4448-1656-FB61-899E07A8A626";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -53.269348144531257 1.1365220411756247e-05 9.5367431374171474e-06 ;
	setAttr ".jo" -type "double3" 1.3660378340025212e-05 0 0 ;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-16 1 0 0 -2.3841857877993067e-07 1.0587911846116953e-22 -0.99999999999997158 0
		 -0.99999999999997158 4.4408920985004999e-16 2.3841857877993067e-07 0 -6.8770065757202259 58.878655999999999 -9.5101896030540031e-06 1;
	setAttr ".sd" 2;
	setAttr ".typ" 3;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightFoot" -p "Character_RightLeg";
	rename -uid "F5A95D42-47DB-0CBF-823C-0898759643A4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -49.426387786865227 1.91522826753493e-05 -1.9073532184776809e-06 ;
	setAttr ".jo" -type "double3" 2.5638066312266341e-05 1.2061398118891237e-05 61.999999999999311 ;
	setAttr ".bps" -type "matrix" -4.4959791509231056e-16 0.46947156278589108 -0.88294759285892677 0
		 -5.5939941416277452e-07 -0.88294759285878865 -0.46947156278581759 0 -0.99999999999984357 4.9392036597064218e-07 2.6262211758548109e-07 0
		 -6.8770113440918035 9.4522679999999966 -2.6941264466186132e-05 1;
	setAttr ".sd" 2;
	setAttr ".typ" 4;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightToeBase" -p "Character_RightFoot";
	rename -uid "0B3F099E-47F0-0509-151F-ECA5BF374C03";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -15.869996713866627 -2.9565675578879791e-06 -3.1471250779624427e-05 ;
	setAttr ".jo" -type "double3" -2.8283512592212725e-05 1.5070841813460866e-05 28.047999999996271 ;
	setAttr ".bps" -type "matrix" -4.4398555419314237e-16 -0.0008377579429616704 -0.99999964908075289 0
		 -5.9760116123179341e-11 -0.99999964908075289 0.00083775794296173643 0 -1 5.9760095524185096e-11 -4.9620526562268563e-14 0
		 -6.8769798728390796 2.0017584163268367 14.012350149137177 1;
	setAttr ".sd" 2;
	setAttr ".typ" 25;
	setAttr ".fbxID" 5;
createNode transform -s -n "persp";
	rename -uid "E4B908E5-4390-898A-C744-4FB8CE9D8B61";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -362.71422351861912 230.34489987314689 309.39450954768154 ;
	setAttr ".r" -type "double3" -13.538352729594362 -46.599999999990054 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "A87CD7A0-4DE6-854F-BD94-BFB84F629415";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 508.35248438760931;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -4.423207355941372e-10 126.03549472516136 -20.593338385105085 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "13C6C25A-4462-8403-D829-83BB78DD9AAA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "CD40FEC3-4D3B-2743-EA80-539F762AC1BD";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "0B4D837B-43BF-0ECD-CAF3-F690EBD6551B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B1617859-4126-A71F-C625-BC8F6658381E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "BB7B5DFB-4142-7B2B-AE82-4589B84E541D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "2CC9A4EE-4C49-B0C6-3524-ADB6E874DB6C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "C214EE49-4AD7-E638-4C13-BC926413A3D1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "0548747A-4F4B-2506-0F06-CBB156497909";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "4C99D00E-4B7B-0FA2-D632-109938FF110E";
createNode displayLayerManager -n "layerManager";
	rename -uid "4E582E66-4BA9-3D2E-96BC-B1AA332F1C45";
createNode displayLayer -n "defaultLayer";
	rename -uid "A701A0AF-4A1F-D73F-225A-83AD407C3F82";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "2BDB04EB-4303-7018-5D4A-9980524783DE";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "30722F41-43EE-FEB0-5585-ADB50E4F38E2";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F39EFAB7-4F2A-5049-CE0F-2C861575E8C4";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n"
		+ "            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n"
		+ "            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n"
		+ "            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1563\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner2\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner2\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n"
		+ "                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n"
		+ "                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -image \"E:/projects/JUPITER/Spectrobes2/chara/outuv_001.bmp\" \n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n"
		+ "                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n"
		+ "                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n"
		+ "                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n"
		+ "                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n"
		+ "                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n"
		+ "                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1563\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1563\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "1B85352D-4B92-41EA-09B2-F190F1533850";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 900 -ast 0 -aet 1000 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 320;
	setAttr -av -k on ".unw" 320;
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -k on ".ihi";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -av ".ta";
	setAttr ".etmr" no;
	setAttr ".tmr" 4096;
	setAttr -av ".aoam";
	setAttr -av ".aora";
	setAttr -av ".mbe";
	setAttr -av -k on ".mbsof";
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :lambert1;
	addAttr -ci true -sn "meAGO_shader" -ln "meAGO_shader" -nn "Shader" -dv 256 -min 
		0 -max 258 -en "NPR_Chara:NPR_Eye:NPR_Hair:Effect=128:BorderStage=192:Stage=256:Sky=258" 
		-at "enum";
	addAttr -ci true -sn "meAGO_stageDiffuseLightIsEnabled" -ln "meAGO_stageDiffuseLightIsEnabled" 
		-nn "Stage Duffuse Light Is Enabled" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "meAGO_castShadow" -ln "meAGO_castShadow" -nn "Cast Shadow" 
		-dv 1 -min 0 -max 2 -en "Off:On:On_DoubleSided" -at "enum";
	addAttr -ci true -sn "meAGO_receiveShadow" -ln "meAGO_receiveShadow" -nn "Receive Shadow" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "meAGO_onlyCastShadowIsEnabled" -ln "meAGO_onlyCastShadowIsEnabled" 
		-nn "Only Cast Shadow Is Enabled" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "meAGO_selfShadowGain" -ln "meAGO_selfShadowGain" -nn "Self Shadow Gain" 
		-dv 1 -min 0 -max 1 -at "float";
	addAttr -ci true -sn "meAGO_selfShadowOffset" -ln "meAGO_selfShadowOffset" -nn "Self Shadow Offset" 
		-min 0 -max 0.1 -at "float";
	addAttr -ci true -sn "meAGO_hatIsEnabled" -ln "meAGO_hatIsEnabled" -nn "Hat Is Enabled" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "meAGO_faceCulling" -ln "meAGO_faceCulling" -nn "Face Culling" 
		-min 0 -max 1 -en "BackfaceCulling:DoubleSided" -at "enum";
	addAttr -ci true -sn "meAGO_booleanDifferenceAminusB" -ln "meAGO_booleanDifferenceAminusB" 
		-nn "Boolean Difference ( A - B )" -min 0 -max 2 -en "None:A:B" -at "enum";
	addAttr -ci true -sn "meAGO_facePartsIsEnabled" -ln "meAGO_facePartsIsEnabled" -nn "Face Parts Is Enabled" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "meAGO_constantShadingIsEnabled" -ln "meAGO_constantShadingIsEnabled" 
		-nn "Constant Shading Is Enabled" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "meAGO_fogIsEnabled" -ln "meAGO_fogIsEnabled" -nn "Fog Is Enabled" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "meAGO_windIsEnabled" -ln "meAGO_windIsEnabled" -nn "Wind Is Enabled" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "meAGO_blendMode" -ln "meAGO_blendMode" -nn "Blend Mode" -min 
		0 -max 2 -en "Opaque:Punch:Transparency" -at "enum";
	addAttr -ci true -sn "meAGO_blendModeTequnique" -ln "meAGO_blendModeTequnique" -nn "Blend Mode Tequnique" 
		-dt "string";
	addAttr -ci true -sn "meAGO_blendModeEnableOpaqueTexture" -ln "meAGO_blendModeEnableOpaqueTexture" 
		-nn "Blend Mode Enable Opaque Texture" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "meAGO_blendFunctionSourceFactor" -ln "meAGO_blendFunctionSourceFactor" 
		-nn "Source Factor" -dv 4 -min 0 -max 7 -en "Zero:One:SrcColor:1-SrcColor:SrcAlpha:1-SrcAlpha:DstColor:1-DstColor" 
		-at "enum";
	addAttr -ci true -sn "meAGO_blendFunctionDestinationFactor" -ln "meAGO_blendFunctionDestinationFactor" 
		-nn "Destination Factor" -dv 5 -min 0 -max 7 -en "Zero:One:SrcColor:1-SrcColor:SrcAlpha:1-SrcAlpha:DstColor:1-DstColor" 
		-at "enum";
	addAttr -ci true -uac -sn "meAGO_albedo0_color" -ln "meAGO_albedo0_color" -nn "Albedo0 Color" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_albedo0_colorR" -ln "meAGO_albedo0_colorR" -dv 1 -at "float" 
		-p "meAGO_albedo0_color";
	addAttr -ci true -sn "meAGO_albedo0_colorG" -ln "meAGO_albedo0_colorG" -dv 1 -at "float" 
		-p "meAGO_albedo0_color";
	addAttr -ci true -sn "meAGO_albedo0_colorB" -ln "meAGO_albedo0_colorB" -dv 1 -at "float" 
		-p "meAGO_albedo0_color";
	addAttr -ci true -uac -sn "meAGO_albedo1_color" -ln "meAGO_albedo1_color" -nn "Albedo1 Color" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_albedo1_colorR" -ln "meAGO_albedo1_colorR" -dv 1 -at "float" 
		-p "meAGO_albedo1_color";
	addAttr -ci true -sn "meAGO_albedo1_colorG" -ln "meAGO_albedo1_colorG" -dv 1 -at "float" 
		-p "meAGO_albedo1_color";
	addAttr -ci true -sn "meAGO_albedo1_colorB" -ln "meAGO_albedo1_colorB" -dv 1 -at "float" 
		-p "meAGO_albedo1_color";
	addAttr -ci true -uac -sn "meAGO_diffuse0_color" -ln "meAGO_diffuse0_color" -nn "Diffuse0 Color" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_diffuse0_colorR" -ln "meAGO_diffuse0_colorR" -dv 1 -at "float" 
		-p "meAGO_diffuse0_color";
	addAttr -ci true -sn "meAGO_diffuse0_colorG" -ln "meAGO_diffuse0_colorG" -dv 1 -at "float" 
		-p "meAGO_diffuse0_color";
	addAttr -ci true -sn "meAGO_diffuse0_colorB" -ln "meAGO_diffuse0_colorB" -dv 1 -at "float" 
		-p "meAGO_diffuse0_color";
	addAttr -ci true -uac -sn "meAGO_diffuse1_color" -ln "meAGO_diffuse1_color" -nn "Diffuse1 Color" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_diffuse1_colorR" -ln "meAGO_diffuse1_colorR" -dv 1 -at "float" 
		-p "meAGO_diffuse1_color";
	addAttr -ci true -sn "meAGO_diffuse1_colorG" -ln "meAGO_diffuse1_colorG" -dv 1 -at "float" 
		-p "meAGO_diffuse1_color";
	addAttr -ci true -sn "meAGO_diffuse1_colorB" -ln "meAGO_diffuse1_colorB" -dv 1 -at "float" 
		-p "meAGO_diffuse1_color";
	addAttr -ci true -uac -sn "meAGO_diffuse2_color" -ln "meAGO_diffuse2_color" -nn "Diffuse2 Color" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_diffuse2_colorR" -ln "meAGO_diffuse2_colorR" -dv 1 -at "float" 
		-p "meAGO_diffuse2_color";
	addAttr -ci true -sn "meAGO_diffuse2_colorG" -ln "meAGO_diffuse2_colorG" -dv 1 -at "float" 
		-p "meAGO_diffuse2_color";
	addAttr -ci true -sn "meAGO_diffuse2_colorB" -ln "meAGO_diffuse2_colorB" -dv 1 -at "float" 
		-p "meAGO_diffuse2_color";
	addAttr -ci true -uac -sn "meAGO_diffuse3_color" -ln "meAGO_diffuse3_color" -nn "Diffuse3 Color" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_diffuse3_colorR" -ln "meAGO_diffuse3_colorR" -dv 1 -at "float" 
		-p "meAGO_diffuse3_color";
	addAttr -ci true -sn "meAGO_diffuse3_colorG" -ln "meAGO_diffuse3_colorG" -dv 1 -at "float" 
		-p "meAGO_diffuse3_color";
	addAttr -ci true -sn "meAGO_diffuse3_colorB" -ln "meAGO_diffuse3_colorB" -dv 1 -at "float" 
		-p "meAGO_diffuse3_color";
	addAttr -ci true -uac -sn "meAGO_diffuseDivider_color" -ln "meAGO_diffuseDivider_color" 
		-nn "DiffuseDivider Color" -at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_diffuseDivider_colorR" -ln "meAGO_diffuseDivider_colorR" 
		-dv 1 -at "float" -p "meAGO_diffuseDivider_color";
	addAttr -ci true -sn "meAGO_diffuseDivider_colorG" -ln "meAGO_diffuseDivider_colorG" 
		-dv 1 -at "float" -p "meAGO_diffuseDivider_color";
	addAttr -ci true -sn "meAGO_diffuseDivider_colorB" -ln "meAGO_diffuseDivider_colorB" 
		-dv 1 -at "float" -p "meAGO_diffuseDivider_color";
	addAttr -ci true -uac -sn "meAGO_layeredDiffuse_color" -ln "meAGO_layeredDiffuse_color" 
		-nn "LayeredDiffuse Color" -at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_layeredDiffuse_colorR" -ln "meAGO_layeredDiffuse_colorR" 
		-dv 1 -at "float" -p "meAGO_layeredDiffuse_color";
	addAttr -ci true -sn "meAGO_layeredDiffuse_colorG" -ln "meAGO_layeredDiffuse_colorG" 
		-dv 1 -at "float" -p "meAGO_layeredDiffuse_color";
	addAttr -ci true -sn "meAGO_layeredDiffuse_colorB" -ln "meAGO_layeredDiffuse_colorB" 
		-dv 1 -at "float" -p "meAGO_layeredDiffuse_color";
	addAttr -ci true -uac -sn "meAGO_diffuseRef_color" -ln "meAGO_diffuseRef_color" 
		-nn "DiffuseRef Color" -at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_diffuseRef_colorR" -ln "meAGO_diffuseRef_colorR" -dv 
		1 -at "float" -p "meAGO_diffuseRef_color";
	addAttr -ci true -sn "meAGO_diffuseRef_colorG" -ln "meAGO_diffuseRef_colorG" -dv 
		1 -at "float" -p "meAGO_diffuseRef_color";
	addAttr -ci true -sn "meAGO_diffuseRef_colorB" -ln "meAGO_diffuseRef_colorB" -dv 
		1 -at "float" -p "meAGO_diffuseRef_color";
	addAttr -ci true -sn "meAGO_diffuseRefBias" -ln "meAGO_diffuseRefBias" -nn "DiffuseRef Bias" 
		-min 0 -max 1 -at "float";
	addAttr -ci true -sn "meAGO_diffuseNormalizeIsEnabled" -ln "meAGO_diffuseNormalizeIsEnabled" 
		-nn "Diffuse Normalize is Enabled" -min 0 -max 1 -at "bool";
	addAttr -ci true -uac -sn "meAGO_bakedLight_color" -ln "meAGO_bakedLight_color" 
		-nn "BakedLight Color" -at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_bakedLight_colorR" -ln "meAGO_bakedLight_colorR" -at "float" 
		-p "meAGO_bakedLight_color";
	addAttr -ci true -sn "meAGO_bakedLight_colorG" -ln "meAGO_bakedLight_colorG" -at "float" 
		-p "meAGO_bakedLight_color";
	addAttr -ci true -sn "meAGO_bakedLight_colorB" -ln "meAGO_bakedLight_colorB" -at "float" 
		-p "meAGO_bakedLight_color";
	addAttr -ci true -uac -sn "meAGO_bakedShadow_color" -ln "meAGO_bakedShadow_color" 
		-nn "BakedShadow Color" -at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_bakedShadow_colorR" -ln "meAGO_bakedShadow_colorR" -dv 
		1 -at "float" -p "meAGO_bakedShadow_color";
	addAttr -ci true -sn "meAGO_bakedShadow_colorG" -ln "meAGO_bakedShadow_colorG" -dv 
		1 -at "float" -p "meAGO_bakedShadow_color";
	addAttr -ci true -sn "meAGO_bakedShadow_colorB" -ln "meAGO_bakedShadow_colorB" -dv 
		1 -at "float" -p "meAGO_bakedShadow_color";
	addAttr -ci true -sn "meAGO_directionalLightInfluencer" -ln "meAGO_directionalLightInfluencer" 
		-nn "Directional Light Influencer" -min 0 -max 1 -at "float";
	addAttr -ci true -sn "meAGO_bakedShadowOcclusionMode" -ln "meAGO_bakedShadowOcclusionMode" 
		-nn "BakedShadow Occlusion Mode" -dv 1 -min 0 -max 2 -en "Normal:DiffuseRef_Occlusion:Mixed" 
		-at "enum";
	addAttr -ci true -uac -sn "meAGO_transparency_color" -ln "meAGO_transparency_color" 
		-nn "Transparency Color" -at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_transparency_colorR" -ln "meAGO_transparency_colorR" 
		-dv 1 -at "float" -p "meAGO_transparency_color";
	addAttr -ci true -sn "meAGO_transparency_colorG" -ln "meAGO_transparency_colorG" 
		-dv 1 -at "float" -p "meAGO_transparency_color";
	addAttr -ci true -sn "meAGO_transparency_colorB" -ln "meAGO_transparency_colorB" 
		-dv 1 -at "float" -p "meAGO_transparency_color";
	addAttr -ci true -uac -sn "meAGO_transparency1_color" -ln "meAGO_transparency1_color" 
		-nn "Transparency1 Color" -at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_transparency1_colorR" -ln "meAGO_transparency1_colorR" 
		-dv 1 -at "float" -p "meAGO_transparency1_color";
	addAttr -ci true -sn "meAGO_transparency1_colorG" -ln "meAGO_transparency1_colorG" 
		-dv 1 -at "float" -p "meAGO_transparency1_color";
	addAttr -ci true -sn "meAGO_transparency1_colorB" -ln "meAGO_transparency1_colorB" 
		-dv 1 -at "float" -p "meAGO_transparency1_color";
	addAttr -ci true -sn "meAGO_rimOpacity" -ln "meAGO_rimOpacity" -nn "Rim Opacity" 
		-dv 1 -min 0 -max 1 -at "float";
	addAttr -ci true -sn "meAGO_alphaRef" -ln "meAGO_alphaRef" -nn "Alpha Ref" -dv 0.5 
		-min 0 -max 30 -smn 0 -smx 2 -at "float";
	addAttr -ci true -sn "meAGO_shadowOpacityThreshold" -ln "meAGO_shadowOpacityThreshold" 
		-nn "Shadow Opacity Threshold" -dv 1 -min 0 -max 1 -at "float";
	addAttr -ci true -sn "meAGO_ZOcclusionAttenuation" -ln "meAGO_ZOcclusionAttenuation" 
		-nn "Z Occlusion Attenuation" -min 0 -max 0.5 -at "float";
	addAttr -ci true -sn "meAGO_ZOcclusionAttenuationOpacityMin" -ln "meAGO_ZOcclusionAttenuationOpacityMin" 
		-nn "Z Occlusion Attenuation Opacity Min" -min 0 -max 1 -at "float";
	addAttr -ci true -uac -sn "meAGO_weight_color" -ln "meAGO_weight_color" -nn "Weight Color" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_weight_colorR" -ln "meAGO_weight_colorR" -at "float" 
		-p "meAGO_weight_color";
	addAttr -ci true -sn "meAGO_weight_colorG" -ln "meAGO_weight_colorG" -at "float" 
		-p "meAGO_weight_color";
	addAttr -ci true -sn "meAGO_weight_colorB" -ln "meAGO_weight_colorB" -at "float" 
		-p "meAGO_weight_color";
	addAttr -ci true -sn "meAGO_ambientCubeIsEnabled" -ln "meAGO_ambientCubeIsEnabled" 
		-nn "AmbientCube Is Enabled" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "meAGO_ambientCubeScale" -ln "meAGO_ambientCubeScale" -nn "AmbientCube Scale" 
		-dv 1 -min 0 -max 1 -at "float";
	addAttr -ci true -sn "meAGO_ambientRefBlendFunction" -ln "meAGO_ambientRefBlendFunction" 
		-nn "Ambient Ref Blend Function" -min 0 -max 2 -en "Lerp:Add:Dodge" -at "enum";
	addAttr -ci true -sn "meAGO_ambientRefBlender" -ln "meAGO_ambientRefBlender" -nn "Ambient Ref Blender" 
		-min 0 -max 1 -at "float";
	addAttr -ci true -uac -sn "meAGO_ambientRef_color" -ln "meAGO_ambientRef_color" 
		-nn "AmbientRef Color" -at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_ambientRef_colorR" -ln "meAGO_ambientRef_colorR" -dv 
		1 -at "float" -p "meAGO_ambientRef_color";
	addAttr -ci true -sn "meAGO_ambientRef_colorG" -ln "meAGO_ambientRef_colorG" -dv 
		1 -at "float" -p "meAGO_ambientRef_color";
	addAttr -ci true -sn "meAGO_ambientRef_colorB" -ln "meAGO_ambientRef_colorB" -dv 
		1 -at "float" -p "meAGO_ambientRef_color";
	addAttr -ci true -sn "meAGO_normal0_normalMapBlendRate" -ln "meAGO_normal0_normalMapBlendRate" 
		-nn "NormalMap Blend Rate" -dv 1 -min 0 -max 1 -at "float";
	addAttr -ci true -uac -sn "meAGO_normal0_color" -ln "meAGO_normal0_color" -nn "Normal0 Color" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_normal0_colorR" -ln "meAGO_normal0_colorR" -dv 0.5 -at "float" 
		-p "meAGO_normal0_color";
	addAttr -ci true -sn "meAGO_normal0_colorG" -ln "meAGO_normal0_colorG" -dv 0.5 -at "float" 
		-p "meAGO_normal0_color";
	addAttr -ci true -sn "meAGO_normal0_colorB" -ln "meAGO_normal0_colorB" -dv 1 -at "float" 
		-p "meAGO_normal0_color";
	addAttr -ci true -uac -sn "meAGO_normal1_color" -ln "meAGO_normal1_color" -nn "Normal1 Color" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_normal1_colorR" -ln "meAGO_normal1_colorR" -dv 0.5 -at "float" 
		-p "meAGO_normal1_color";
	addAttr -ci true -sn "meAGO_normal1_colorG" -ln "meAGO_normal1_colorG" -dv 0.5 -at "float" 
		-p "meAGO_normal1_color";
	addAttr -ci true -sn "meAGO_normal1_colorB" -ln "meAGO_normal1_colorB" -dv 1 -at "float" 
		-p "meAGO_normal1_color";
	addAttr -ci true -uac -sn "meAGO_normal2_color" -ln "meAGO_normal2_color" -nn "Normal2 Color" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_normal2_colorR" -ln "meAGO_normal2_colorR" -dv 0.5 -at "float" 
		-p "meAGO_normal2_color";
	addAttr -ci true -sn "meAGO_normal2_colorG" -ln "meAGO_normal2_colorG" -dv 0.5 -at "float" 
		-p "meAGO_normal2_color";
	addAttr -ci true -sn "meAGO_normal2_colorB" -ln "meAGO_normal2_colorB" -dv 1 -at "float" 
		-p "meAGO_normal2_color";
	addAttr -ci true -uac -sn "meAGO_normal3_color" -ln "meAGO_normal3_color" -nn "Normal3 Color" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_normal3_colorR" -ln "meAGO_normal3_colorR" -dv 0.5 -at "float" 
		-p "meAGO_normal3_color";
	addAttr -ci true -sn "meAGO_normal3_colorG" -ln "meAGO_normal3_colorG" -dv 0.5 -at "float" 
		-p "meAGO_normal3_color";
	addAttr -ci true -sn "meAGO_normal3_colorB" -ln "meAGO_normal3_colorB" -dv 1 -at "float" 
		-p "meAGO_normal3_color";
	addAttr -ci true -sn "meAGO_height0_parallaxType" -ln "meAGO_height0_parallaxType" 
		-nn "Parallax Type" -dv 2 -min 0 -max 2 -en "None:Parallax_Mapping:Relief_Mapping" 
		-at "enum";
	addAttr -ci true -sn "meAGO_height0_heightScale" -ln "meAGO_height0_heightScale" 
		-nn "Height Scale" -dv 1 -min 0.001 -max 1 -at "float";
	addAttr -ci true -uac -sn "meAGO_height0_color" -ln "meAGO_height0_color" -nn "Height0 Color" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_height0_colorR" -ln "meAGO_height0_colorR" -at "float" 
		-p "meAGO_height0_color";
	addAttr -ci true -sn "meAGO_height0_colorG" -ln "meAGO_height0_colorG" -at "float" 
		-p "meAGO_height0_color";
	addAttr -ci true -sn "meAGO_height0_colorB" -ln "meAGO_height0_colorB" -at "float" 
		-p "meAGO_height0_color";
	addAttr -ci true -sn "meAGO_specularRefBlendFunction" -ln "meAGO_specularRefBlendFunction" 
		-nn "Specular Ref Blend Function" -min 0 -max 2 -en "Lerp:Add:Dodge" -at "enum";
	addAttr -ci true -sn "meAGO_specularRefSize" -ln "meAGO_specularRefSize" -nn "Specular Ref Size" 
		-dv 1 -min 0 -max 1 -at "float";
	addAttr -ci true -sn "meAGO_specularRefGain" -ln "meAGO_specularRefGain" -nn "Specular Ref Gain" 
		-min 0 -max 1 -at "float";
	addAttr -ci true -sn "meAGO_specularRefRollStart" -ln "meAGO_specularRefRollStart" 
		-nn "Specular Ref Roll Start" -min 0 -max 1 -at "float";
	addAttr -ci true -sn "meAGO_specularRefRollEnd" -ln "meAGO_specularRefRollEnd" -nn "Specular Ref Roll End" 
		-min 0 -max 1 -at "float";
	addAttr -ci true -sn "meAGO_environmentMapGain" -ln "meAGO_environmentMapGain" -nn "EnvironmentMap Gain" 
		-min 0 -max 1 -at "float";
	addAttr -ci true -sn "meAGO_environmentMapReflectivity" -ln "meAGO_environmentMapReflectivity" 
		-nn "EnvironmentMap Reflectivity" -min 0 -max 1 -at "float";
	addAttr -ci true -sn "meAGO_anisotropicIsEnabled" -ln "meAGO_anisotropicIsEnabled" 
		-nn "Anisotropic Is Enabled" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "meAGO_anisotropicPosition" -ln "meAGO_anisotropicPosition" 
		-nn "Anisotropic Position" -min -1 -max 1 -at "float";
	addAttr -ci true -uac -sn "meAGO_specular0_color" -ln "meAGO_specular0_color" -nn "Specular0 Color" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_specular0_colorR" -ln "meAGO_specular0_colorR" -dv 1 
		-at "float" -p "meAGO_specular0_color";
	addAttr -ci true -sn "meAGO_specular0_colorG" -ln "meAGO_specular0_colorG" -dv 1 
		-at "float" -p "meAGO_specular0_color";
	addAttr -ci true -sn "meAGO_specular0_colorB" -ln "meAGO_specular0_colorB" -dv 1 
		-at "float" -p "meAGO_specular0_color";
	addAttr -ci true -uac -sn "meAGO_specular1_color" -ln "meAGO_specular1_color" -nn "Specular1 Color" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_specular1_colorR" -ln "meAGO_specular1_colorR" -dv 1 
		-at "float" -p "meAGO_specular1_color";
	addAttr -ci true -sn "meAGO_specular1_colorG" -ln "meAGO_specular1_colorG" -dv 1 
		-at "float" -p "meAGO_specular1_color";
	addAttr -ci true -sn "meAGO_specular1_colorB" -ln "meAGO_specular1_colorB" -dv 1 
		-at "float" -p "meAGO_specular1_color";
	addAttr -ci true -uac -sn "meAGO_specular2_color" -ln "meAGO_specular2_color" -nn "Specular2 Color" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_specular2_colorR" -ln "meAGO_specular2_colorR" -dv 1 
		-at "float" -p "meAGO_specular2_color";
	addAttr -ci true -sn "meAGO_specular2_colorG" -ln "meAGO_specular2_colorG" -dv 1 
		-at "float" -p "meAGO_specular2_color";
	addAttr -ci true -sn "meAGO_specular2_colorB" -ln "meAGO_specular2_colorB" -dv 1 
		-at "float" -p "meAGO_specular2_color";
	addAttr -ci true -uac -sn "meAGO_specular3_color" -ln "meAGO_specular3_color" -nn "Specular3 Color" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_specular3_colorR" -ln "meAGO_specular3_colorR" -dv 1 
		-at "float" -p "meAGO_specular3_color";
	addAttr -ci true -sn "meAGO_specular3_colorG" -ln "meAGO_specular3_colorG" -dv 1 
		-at "float" -p "meAGO_specular3_color";
	addAttr -ci true -sn "meAGO_specular3_colorB" -ln "meAGO_specular3_colorB" -dv 1 
		-at "float" -p "meAGO_specular3_color";
	addAttr -ci true -uac -sn "meAGO_specularMask0_color" -ln "meAGO_specularMask0_color" 
		-nn "SpecularMask0 Color" -at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_specularMask0_colorR" -ln "meAGO_specularMask0_colorR" 
		-dv 1 -at "float" -p "meAGO_specularMask0_color";
	addAttr -ci true -sn "meAGO_specularMask0_colorG" -ln "meAGO_specularMask0_colorG" 
		-dv 1 -at "float" -p "meAGO_specularMask0_color";
	addAttr -ci true -sn "meAGO_specularMask0_colorB" -ln "meAGO_specularMask0_colorB" 
		-dv 1 -at "float" -p "meAGO_specularMask0_color";
	addAttr -ci true -uac -sn "meAGO_specularRef_color" -ln "meAGO_specularRef_color" 
		-nn "SpecularRef Color" -at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_specularRef_colorR" -ln "meAGO_specularRef_colorR" -dv 
		1 -at "float" -p "meAGO_specularRef_color";
	addAttr -ci true -sn "meAGO_specularRef_colorG" -ln "meAGO_specularRef_colorG" -dv 
		1 -at "float" -p "meAGO_specularRef_color";
	addAttr -ci true -sn "meAGO_specularRef_colorB" -ln "meAGO_specularRef_colorB" -dv 
		1 -at "float" -p "meAGO_specularRef_color";
	addAttr -ci true -sn "meAGO_highLightBlendFunction" -ln "meAGO_highLightBlendFunction" 
		-nn "HighLight Blend Function" -dv 1 -min 0 -max 2 -en "Alpha_Blend:Add:Dodge" -at "enum";
	addAttr -ci true -sn "meAGO_highLightGain" -ln "meAGO_highLightGain" -nn "HighLight Gain" 
		-min 0 -max 1 -at "float";
	addAttr -ci true -sn "meAGO_highLightShiftX" -ln "meAGO_highLightShiftX" -nn "HighLight Shift X" 
		-dv 0.1 -min 0 -max 1 -at "float";
	addAttr -ci true -sn "meAGO_highLightShiftY" -ln "meAGO_highLightShiftY" -nn "HighLight Shift Y" 
		-dv 0.06 -min 0 -max 1 -at "float";
	addAttr -ci true -uac -sn "meAGO_highLight_color" -ln "meAGO_highLight_color" -nn "HighLight Color" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_highLight_colorR" -ln "meAGO_highLight_colorR" -dv 1 
		-at "float" -p "meAGO_highLight_color";
	addAttr -ci true -sn "meAGO_highLight_colorG" -ln "meAGO_highLight_colorG" -dv 1 
		-at "float" -p "meAGO_highLight_color";
	addAttr -ci true -sn "meAGO_highLight_colorB" -ln "meAGO_highLight_colorB" -dv 1 
		-at "float" -p "meAGO_highLight_color";
	addAttr -ci true -sn "meAGO_rimLightRefBlendFunction" -ln "meAGO_rimLightRefBlendFunction" 
		-nn "RimLight Ref Blend Function" -min 0 -max 2 -en "Lerp:Add:Dodge" -at "enum";
	addAttr -ci true -sn "meAGO_rimLightRefSize" -ln "meAGO_rimLightRefSize" -nn "RimLight Ref Size" 
		-dv 1 -min 0 -max 1 -at "float";
	addAttr -ci true -sn "meAGO_rimLightRefGain" -ln "meAGO_rimLightRefGain" -nn "RimLight Ref Gain" 
		-min 0 -max 1 -at "float";
	addAttr -ci true -sn "meAGO_rimLightRefRollStart" -ln "meAGO_rimLightRefRollStart" 
		-nn "RimLight Ref Roll Start" -min 0 -max 1 -at "float";
	addAttr -ci true -sn "meAGO_rimLightRefRollEnd" -ln "meAGO_rimLightRefRollEnd" -nn "RimLight Ref Roll End" 
		-min 0 -max 1 -at "float";
	addAttr -ci true -sn "meAGO_rimLightRefSpecularMask0Scale" -ln "meAGO_rimLightRefSpecularMask0Scale" 
		-nn "RimLight Ref SpecularMask0 Scale" -dv 1 -min 0 -max 1 -at "float";
	addAttr -ci true -uac -sn "meAGO_rimLightRef_color" -ln "meAGO_rimLightRef_color" 
		-nn "RimLightRef Color" -at "float3" -nc 3;
	addAttr -ci true -sn "meAGO_rimLightRef_colorR" -ln "meAGO_rimLightRef_colorR" -dv 
		1 -at "float" -p "meAGO_rimLightRef_color";
	addAttr -ci true -sn "meAGO_rimLightRef_colorG" -ln "meAGO_rimLightRef_colorG" -dv 
		1 -at "float" -p "meAGO_rimLightRef_color";
	addAttr -ci true -sn "meAGO_rimLightRef_colorB" -ln "meAGO_rimLightRef_colorB" -dv 
		1 -at "float" -p "meAGO_rimLightRef_color";
	addAttr -ci true -sn "meAGO_blendModeTequniqueEnum" -ln "meAGO_blendModeTequniqueEnum" 
		-nn "Blend Mode TequniqueEnum" -min 0 -max 1 -en "AGO_NPR_Opaque:AGO_NPR_Transparent" 
		-at "enum";
	setAttr -av ".c";
	setAttr -av ".itr";
	setAttr -av ".itg";
	setAttr -av ".itb";
	setAttr ".meAGO_blendModeTequnique" -type "string" "AGO_NPR_Opaque";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w" 1280;
	setAttr -av -k on ".h" 1280;
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar" 1;
	setAttr -av -k on ".ldar";
	setAttr -av -cb on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -cb on ".isu";
	setAttr -av -cb on ".pdu";
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k off -cb on ".ctrs" 256;
	setAttr -av -k off -cb on ".btrs" 512;
	setAttr -k off -cb on ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off -cb on ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
connectAttr "Character_Hips.s" "Character_Spine.is";
connectAttr "Character_Spine.s" "Character_Spine1.is";
connectAttr "Character_Spine1.s" "Character_Spine2.is";
connectAttr "Character_Spine2.s" "Character_Neck.is";
connectAttr "Character_Neck.s" "Character_Head.is";
connectAttr "Character_Head.s" "Character_HeadUp.is";
connectAttr "Character_Head.s" "Character_Eye_L.is";
connectAttr "Character_Head.s" "Character_Eye_R.is";
connectAttr "Character_Spine2.s" "Character_LeftShoulder.is";
connectAttr "Character_LeftShoulder.s" "Character_LeftArm.is";
connectAttr "Character_LeftArm.s" "Character_LeftForeArm.is";
connectAttr "Character_LeftForeArm.s" "Character_LeftHand.is";
connectAttr "Character_LeftHand.s" "Character_LeftHandThumb1.is";
connectAttr "Character_LeftHandThumb1.s" "Character_LeftHandThumb2.is";
connectAttr "Character_LeftHandThumb2.s" "Character_LeftHandThumb3.is";
connectAttr "Character_LeftHand.s" "Character_LeftHandIndex1.is";
connectAttr "Character_LeftHandIndex1.s" "Character_LeftHandIndex2.is";
connectAttr "Character_LeftHandIndex2.s" "Character_LeftHandIndex3.is";
connectAttr "Character_LeftHand.s" "Character_LeftHandMiddle1.is";
connectAttr "Character_LeftHandMiddle1.s" "Character_LeftHandMiddle2.is";
connectAttr "Character_LeftHandMiddle2.s" "Character_LeftHandMiddle3.is";
connectAttr "Character_LeftHand.s" "Character_LeftHandRing1.is";
connectAttr "Character_LeftHandRing1.s" "Character_LeftHandRing2.is";
connectAttr "Character_LeftHandRing2.s" "Character_LeftHandRing3.is";
connectAttr "Character_LeftHand.s" "Character_LeftHandPinky1.is";
connectAttr "Character_LeftHandPinky1.s" "Character_LeftHandPinky2.is";
connectAttr "Character_LeftHandPinky2.s" "Character_LeftHandPinky3.is";
connectAttr "Character_Spine2.s" "Character_RightShoulder.is";
connectAttr "Character_RightShoulder.s" "Character_RightArm.is";
connectAttr "Character_RightArm.s" "Character_RightForeArm.is";
connectAttr "Character_RightForeArm.s" "Character_RightHand.is";
connectAttr "Character_RightHand.s" "Character_RightHandThumb1.is";
connectAttr "Character_RightHandThumb1.s" "Character_RightHandThumb2.is";
connectAttr "Character_RightHandThumb2.s" "Character_RightHandThumb3.is";
connectAttr "Character_RightHand.s" "Character_RightHandIndex1.is";
connectAttr "Character_RightHandIndex1.s" "Character_RightHandIndex2.is";
connectAttr "Character_RightHandIndex2.s" "Character_RightHandIndex3.is";
connectAttr "Character_RightHand.s" "Character_RightHandMiddle1.is";
connectAttr "Character_RightHandMiddle1.s" "Character_RightHandMiddle2.is";
connectAttr "Character_RightHandMiddle2.s" "Character_RightHandMiddle3.is";
connectAttr "Character_RightHand.s" "Character_RightHandRing1.is";
connectAttr "Character_RightHandRing1.s" "Character_RightHandRing2.is";
connectAttr "Character_RightHandRing2.s" "Character_RightHandRing3.is";
connectAttr "Character_RightHand.s" "Character_RightHandPinky1.is";
connectAttr "Character_RightHandPinky1.s" "Character_RightHandPinky2.is";
connectAttr "Character_RightHandPinky2.s" "Character_RightHandPinky3.is";
connectAttr "Character_Hips.s" "Character_LeftUpLeg.is";
connectAttr "Character_LeftUpLeg.s" "Character_LeftLeg.is";
connectAttr "Character_LeftLeg.s" "Character_LeftFoot.is";
connectAttr "Character_LeftFoot.s" "Character_LeftToeBase.is";
connectAttr "Character_Hips.s" "Character_RightUpLeg.is";
connectAttr "Character_RightUpLeg.s" "Character_RightLeg.is";
connectAttr "Character_RightLeg.s" "Character_RightFoot.is";
connectAttr "Character_RightFoot.s" "Character_RightToeBase.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Joint.ma
