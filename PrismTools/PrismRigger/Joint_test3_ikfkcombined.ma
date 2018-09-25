//Maya ASCII 2018ff09 scene
//Name: Joint_test3_ikfkcombined.ma
//Last modified: Thu, Sep 20, 2018 06:26:12 PM
//Codeset: 932
requires maya "2018ff09";
requires "stereoCamera" "10.0";
requires "vstUtils" "1.0";
requires "DF_locator" "1.11 / Expire: 2011.8.31";
requires "clgDangleCurve" "2.0.2";
requires "COLLADA" "3.04C PhyreEngine(TM) 3.15.0.0";
requires "transIT3" "1.0";
requires "AtgMaterials" "ATG SDK: 1.32.0";
requires "PVRTexTool_v2014" "1.0.1";
requires "Boole" "20110503";
requires "TcToonShader3" "0.00";
requires "TcSceneManager" "1.00";
requires "clgSymbolMaker" "1.5";
requires "mayall_maya60" "0.9.1(Beta)";
requires "sxmaterial" "8.5";
requires "vsMaster" "1.0";
requires "xfrog" "1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201807191615-2c29512b8a";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "281FF302-47B9-00F7-6FE8-2DAB654E4F12";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.824114191654932 231.0210065486765 157.82500936969626 ;
	setAttr ".r" -type "double3" -31.538352729651688 1.4000000000004456 4.4739905527069457e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "17CA963E-4808-2D28-86BD-59A9AB8844BD";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 211.60459173784173;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1.8811861909995287e-05 55.812294354566923 6.1892906178830991 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "F749E60E-4EEA-63CA-10E5-52AB6A7B4D77";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.7462334589337898 1000.1484573262624 -0.25488467618321536 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "31B4E04C-4D2E-403A-A568-FEA5620F05B2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 944.33617072577442;
	setAttr ".ow" 3.4876513239973104;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" -7.879974282865021e-06 55.812286600487987 6.1937673775498379 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "F30C60A1-4F86-CC13-94D2-1E9A9D5F5087";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "E80CA137-48D6-9BFC-E351-B3A78CA30A46";
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
	rename -uid "3C9694F0-4628-6E47-95C0-CB938105B558";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1001.6768305287662 55.811977103155151 6.4409669182767466 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "0DCADC2C-4C06-E985-60EA-8EA3658E7E30";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1001.6768384087405;
	setAttr ".ow" 277.09453362171911;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -7.8799742833091102e-06 55.811977103155151 6.4409669182765246 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "Character_Hips";
	rename -uid "82C7ABCE-4506-0FE8-CB2E-83831A7964F3";
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
	rename -uid "84E4C0CE-4D8E-87B4-97F1-8A8910402B2F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.7407608032226563 9.280770596475916e-16 -9.9733644900477979e-18 ;
	setAttr ".jo" -type "double3" 0 0 -1.9999999999999472 ;
	setAttr ".bps" -type "matrix" 4.59317172617089e-16 0.99939082701909576 -0.034899496702500046 0
		 -4.2832019278753274e-16 0.034899496702500046 0.99939082701909576 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 1.2171422980600254e-15 118.06276080000001 0 1;
	setAttr ".typ" 6;
	setAttr ".fbxID" 5;
createNode joint -n "Character_Spine1" -p "Character_Spine";
	rename -uid "E0D17ABF-420E-4C7C-B533-768BEF8769DA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 9.7650275533157469 4.905416099987292e-07 -2.5634841165985908e-15 ;
	setAttr ".jo" -type "double3" 0 0 -2.9999999999999565 ;
	setAttr ".bps" -type "matrix" 4.811042412630871e-16 0.99619469809174577 -0.087155742747656501 0
		 -4.0369439140168292e-16 0.087155742747656501 0.99619469809174577 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 5.7023869557109906e-15 127.82183982614796 -0.3407940582832466 1;
	setAttr ".typ" 6;
	setAttr ".fbxID" 5;
createNode joint -n "Character_Spine2" -p "Character_Spine1";
	rename -uid "1A9C99B7-4FFC-C29D-ECFF-FE8C57F01066";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 13.877898184271302 -1.0424039054157674e-06 -4.9770045284567883e-10 ;
	setAttr ".jo" -type "double3" 0 0 5 ;
	setAttr ".pa" -type "double3" 36.762975808112202 0 0 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 1.2379102964140113e-14 141.64692814355453 -1.5503336046867018 1;
	setAttr ".typ" 6;
	setAttr ".fbxID" 5;
createNode joint -n "Character_Neck" -p "Character_Spine2";
	rename -uid "060C34A0-4FF4-2CEB-63C1-358A184D60E8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 17.167678833007756 -3.5083047578154947e-14 -2.3072051501257129e-09 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.0003083966209613e-14 158.81460714355453 -1.5503336046866729 1;
	setAttr ".typ" 7;
	setAttr ".fbxID" 5;
createNode joint -n "Character_Head" -p "Character_Neck";
	rename -uid "B261FE18-49A5-77FF-6CCA-C1A62537C281";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 8.4374847412109659 -1.6431300764452317e-14 -3.5959754928952345e-09 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.3750079879754599e-14 167.25209184355452 -1.5503336046866587 1;
	setAttr ".typ" 8;
	setAttr ".fbxID" 5;
createNode joint -n "Character_HeadUp" -p "Character_Head";
	rename -uid "11A69D13-4029-7F14-B439-91BF6812E51C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 23.80500030517581 -4.6629367034256575e-15 -1.236431894867201e-14 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.4472470234754516e-14 191.05709214873031 -1.5503336046866183 1;
	setAttr ".fbxID" 5;
createNode joint -n "Character_Eye_L" -p "Character_Head";
	rename -uid "6399E66B-4A03-2926-2757-9C96A7AB1126";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 9.9804477067827122 4.5866754493465898 2.5366422083400293 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.5366422083400559 177.23253955033724 3.0363418446599533 1;
	setAttr ".fbxID" 5;
createNode joint -n "Character_Eye_R" -p "Character_Head";
	rename -uid "67BF7780-40EC-8F0E-2685-EF9E45CD9825";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 9.9804477067827406 4.586999999999998 -2.5370000000000008 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 -2.5369999999999742 177.23253955033724 3.0366663953133579 1;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftShoulder" -p "Character_Spine2";
	rename -uid "A1C57E09-4C8B-1300-56BF-E88AF3E802C2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 9.8394165039061932 0.052899718284581621 6.3903198247164328 ;
	setAttr ".jo" -type "double3" 35.117237161758709 -69.279601633018473 -34.096118496564038 ;
	setAttr ".bps" -type "matrix" 0.93531812790679647 0.29298768950820886 -0.19833863316451253 0
		 0.20352845173297279 0.012991220144158131 0.9789828382225837 0 0.28940658068555486 -0.95602795042603639 -0.047480407117967652 0
		 6.3903198000000172 151.48634464355453 -1.4974338866866823 1;
	setAttr ".sd" 1;
	setAttr ".typ" 9;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftArm" -p "Character_LeftShoulder";
	rename -uid "ED037768-4803-82BF-1DF7-40AE26FD9776";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 11.632612835754266 0.015638923866194254 -0.1485626337424435 ;
	setAttr ".jo" -type "double3" -1.4554471214587417 -16.991854247264104 7.5478001883629195 ;
	setAttr ".bps" -type "matrix" 0.99687989433796631 1.6365756745850835e-05 -0.078933364282078589 0
		 0.078933365978686804 -0.00020668944817928483 0.99687987291084734 0 -1.4432899320127035e-15 -0.99999997850581701 -0.00020733635952847884 0
		 17.230701752468534 155.03679030466319 -3.7822654811142296 1;
	setAttr ".sd" 1;
	setAttr ".typ" 10;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftForeArm" -p "Character_LeftArm";
	rename -uid "FED492CF-4DF5-F22F-D6D9-71BBF3CD6540";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 24.660940530304483 3.6698025018822023e-07 -8.392426792624974e-06 ;
	setAttr ".jo" -type "double3" -0.011890357530588098 -9.7577304479260863e-06 6.9295886836102305 ;
	setAttr ".bps" -type "matrix" 0.99912112601209402 -8.8610759624914769e-06 0.041916291317420869 0
		 -0.041916291315772361 3.7174966304245882e-07 0.99912112605138803 0 -8.8688705607842278e-06 -0.99999999996067179 -4.9948380934777825e-13 0
		 41.814698039790343 155.03720229197558 -5.7288361530307972 1;
	setAttr ".sd" 1;
	setAttr ".typ" 11;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHand" -p "Character_LeftForeArm";
	rename -uid "CB2F0C20-45F7-3F39-F821-13A610AFF7B5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 25.506295895149023 -3.3929425757861509e-07 2.8686102666597435e-06 ;
	setAttr ".bps" -type "matrix" 0.99912112601209402 -8.8610759624914769e-06 0.041916291317420869 0
		 -0.041916291315772361 3.7174966304245882e-07 0.99912112605138803 0 -8.8688705607842278e-06 -0.99999999996067179 -4.9948380934777825e-13 0
		 67.298577233904624 155.03697341013856 -4.6597071584624938 1;
	setAttr ".sd" 1;
	setAttr ".typ" 12;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandThumb1" -p "Character_LeftHand";
	rename -uid "5D4AF330-47FC-45DB-F57D-EEAD299A73DD";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 1.7026470718544857 2.0665490697661166 2.1428079466631118 ;
	setAttr ".jo" -type "double3" -11.612700769512347 -19.999531702619919 28.597635271501737 ;
	setAttr ".bps" -type "matrix" 0.80547343999123588 -0.34201960654863806 0.48397843568179799 0
		 -0.44548133796126083 0.18915999506567224 0.87507992423263836 0 -0.3908438498901195 -0.92045699791085844 9.5276172820342116e-16 0
		 68.913086843277995 152.89415119117646 -2.5236056427767197 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandThumb2" -p "Character_LeftHandThumb1";
	rename -uid "0C9800C7-4011-0397-B279-548074B7DB2B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 6.8159685368969374 2.0004823899633095e-06 -2.696730689422111e-06 ;
	setAttr ".jo" -type "double3" -0.025049905731216925 -0.093843148323969935 -13.9998523610526 ;
	setAttr ".bps" -type "matrix" 0.88867716975422772 -0.37912893086221627 0.25790335736645409 0
		 -0.23721773097305252 0.10120222256890085 0.96617071900317464 0 -0.39240366469951893 -0.91979310930795077 -6.0076007477282067e-15 0
		 74.403168656423702 150.56295916351945 0.77517839043033421 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandThumb3" -p "Character_LeftHandThumb2";
	rename -uid "0068F5A0-4F52-7BF1-4971-0F9E47DFBCA0";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 3.2776053951470434 8.7121689396063573e-07 -5.3666399537632969e-06 ;
	setAttr ".jo" -type "double3" -0.13471214904380358 0.61660951824452481 -15.262897368265358 ;
	setAttr ".bps" -type "matrix" 0.92394866465539172 -0.38247642854366959 -0.0055359452669147729 0
		 0.0059914860957702648 -5.3138214564218272e-08 0.99998205088609549 0 -0.38246956372485796 -0.92396524913466127 0.0022915531065968702 0
		 77.315903680311848 149.32032914219604 1.6204849173076719 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandIndex1" -p "Character_LeftHand";
	rename -uid "E5D6D594-4C54-E41B-6690-988AD3E8B91F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 9.1713276732590288 2.8972997992026386 -0.13206871615676619 ;
	setAttr ".jo" -type "double3" -9.4880879651930499e-06 -12.999425601029492 -2.4022882283478002 ;
	setAttr ".bps" -type "matrix" 0.97437032489133113 -0.22494992769647076 7.1731482060442627e-07 0
		 -6.9893021598491139e-07 1.6136017178670059e-07 0.99999999999974287 0 -0.22494992769652852 -0.97437032489158193 2.6145273013878586e-13 0
		 76.340401601408985 155.16896193937217 -1.3805256761372346 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandIndex2" -p "Character_LeftHandIndex1";
	rename -uid "84DCE3C9-4E19-A452-F21E-1B980021C9BF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 5.6264656222006266 -6.9808707658935987e-07 -2.3179418064955826e-06 ;
	setAttr ".jo" -type "double3" 0 -0.0005288697546969324 0 ;
	setAttr ".bps" -type "matrix" 0.97436797583058254 -0.22496010240773551 7.1731482056804748e-07 0
		 -6.9893021598491139e-07 1.6136017178670059e-07 0.99999999999974287 0 -0.22496010240779327 -0.97436797583083334 -7.2290052576600057e-12 0
		 81.822663237492023 153.90329116799901 -1.3805220998585621 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandIndex3" -p "Character_LeftHandIndex2";
	rename -uid "39CD3B5A-43D8-698B-BCF6-0DA23EF59ACF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.7969337329773651 -2.2447005980641421e-06 -3.0324292850991696e-05 ;
	setAttr ".jo" -type "double3" 2.8926976314920852e-27 -6.6250114948781434e-05 -4.1099111785736037e-05 ;
	setAttr ".bps" -type "matrix" 0.97436771571272174 -0.2249612290524142 2.5345000513944453e-16 0
		 -1.6264896639984095e-12 -7.0436480187232799e-12 1.0000000000000002 0 -0.22496122905241411 -0.97436771571272185 -7.2290052579578998e-12 0
		 84.547909765745871 153.27410957041241 -1.3805223382771667 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandMiddle1" -p "Character_LeftHand";
	rename -uid "A5735B87-418E-7AD8-C806-E091EBC457C6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 9.3084826446977189 0.53006952523908435 -0.93787220314769115 ;
	setAttr ".jo" -type "double3" -5.9364148836435997e-06 -12.999499108889253 -2.4023040177880137 ;
	setAttr ".bps" -type "matrix" 0.9743700362902401 -0.22495117776876575 4.4879938651484573e-07 0
		 -4.3729665137535747e-07 1.0095805087051542e-07 0.99999999999989952 0 -0.22495117776878834 -0.97437003629033836 1.0292690415623217e-13 0
		 76.576668619710659 155.97476332398344 -3.7399264243781523 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandMiddle2" -p "Character_LeftHandMiddle1";
	rename -uid "316A6C28-49C7-C0E9-6CF9-EF87CFC3A980";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 5.6204766658556053 8.1539362506433122e-07 -4.9700588817813696e-06 ;
	setAttr ".bps" -type "matrix" 0.9743700362902401 -0.22495117776876575 4.4879938651484573e-07 0
		 -4.3729665137535747e-07 1.0095805087051542e-07 0.99999999999989952 0 -0.22495117776878834 -0.97437003629033836 1.0292690415623217e-13 0
		 82.053093823878541 154.71043531337293 -3.7399235633551875 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandMiddle3" -p "Character_LeftHandMiddle2";
	rename -uid "7100E048-4D8A-FA3E-A0D4-108882B9E292";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 3.342701938044776 -1.0233654212932208e-06 8.6077223784286616e-06 ;
	setAttr ".jo" -type "double3" 0 7.2577427542866629e-06 -2.5714310682672373e-05 ;
	setAttr ".bps" -type "matrix" 0.97437006478523525 -0.22495105434386539 2.2146400200471794e-16 0
		 2.2934393675898366e-14 1.0034191271609109e-13 1.0000000000000002 0 -0.22495105434386534 -0.97437006478523536 1.0292690418428619e-13 0
		 85.310120459172154 153.95848219693116 -3.7399230865180253 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandRing1" -p "Character_LeftHand";
	rename -uid "5B6644C5-4C33-BC19-9B8B-BCADA36D041F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 9.0606256989174057 -1.779630133265826 -0.88899696412951812 ;
	setAttr ".jo" -type "double3" -3.6210662265979684e-06 -12.999544801969721 -2.402314310894623 ;
	setAttr ".bps" -type "matrix" 0.97436985689262323 -0.2249519548236335 2.7375476423133057e-07 0
		 -2.6673838166295699e-07 6.1581707411116584e-08 0.99999999999996281 0 -0.22495195482364186 -0.97436985689265987 3.9052740650083694e-14 0
		 76.425843163767624 155.92588942163411 -6.0579853615696839 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandRing2" -p "Character_LeftHandRing1";
	rename -uid "ED127132-40B2-4FEE-EC8F-93ABCAB9EFA3";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 5.5286036808446255 3.9386702699317766e-07 1.2988781350031786e-05 ;
	setAttr ".bps" -type "matrix" 0.97436985689262323 -0.2249519548236335 2.7375476423133057e-07 0
		 -2.6673838166295699e-07 6.1581707411116584e-08 0.99999999999996281 0 -0.22495195482364186 -0.97436985689265987 3.9052740650083694e-14 0
		 81.812745037900868 154.68220655599728 -6.0579834542210511 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandRing3" -p "Character_LeftHandRing2";
	rename -uid "01F8C1D3-4A52-9890-D6A8-D39E6C60A09A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.7803770398757806 -2.8430430010217833e-07 6.6847358937138779e-06 ;
	setAttr ".jo" -type "double3" -1.4463488157456935e-27 5.295082239038573e-05 -1.568499260097869e-05 ;
	setAttr ".bps" -type "matrix" 0.97437006478523525 -0.22495105434386525 1.9327053868663757e-16 0
		 8.5964561194605169e-15 3.8098478279405135e-14 1.0000000000000002 0 -0.2249510543438652 -0.97437006478523547 3.9052740828714455e-14 0
		 84.521859073754101 154.05674880129553 -6.0579829773839009 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandPinky1" -p "Character_LeftHand";
	rename -uid "3E49B70B-4FA9-D948-5039-1096A1DE9D5E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 8.4118391053240913 -3.8485940883280882 -0.048614176668621667 ;
	setAttr ".jo" -type "double3" -9.5186896473851394e-06 -12.999539534336561 -2.4022880926698074 ;
	setAttr ".bps" -type "matrix" 0.97436987757392179 -0.22495186524246255 7.1962183089459454e-07 0
		 -7.0117777600450612e-07 1.6188052977306694e-07 0.99999999999974143 0 -0.2249518652425207 -0.97436987757417415 2.6339237440414764e-13 0
		 75.864342647658447 155.08551161847751 -8.1523266303473392 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandPinky2" -p "Character_LeftHandPinky1";
	rename -uid "972F0893-48D6-7FD4-29BA-AA8A23376CAA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 4.2063251711582197 7.8773383727082091e-07 -8.1329624208592577e-06 ;
	setAttr ".bps" -type "matrix" 0.97436987757392179 -0.22495186524246255 7.1962183089459454e-07 0
		 -7.0117777600450612e-07 1.6188052977306694e-07 0.99999999999974143 0 -0.2249518652425207 -0.97436987757417415 2.6339237440414764e-13 0
		 79.96286104734304 154.13929884343474 -8.1523228156500576 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandPinky3" -p "Character_LeftHandPinky2";
	rename -uid "1C97C87A-44C3-CB2B-5877-679B4A49B0C2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.1276859725186199 -1.0114198124355767e-05 1.1050364804532364e-05 ;
	setAttr ".jo" -type "double3" 0 4.7683192157465637e-05 -4.1231293743463966e-05 ;
	setAttr ".bps" -type "matrix" 0.97437006478523536 -0.22495105434386539 2.1405281614918304e-16 0
		 5.9055182610590735e-14 2.5669229096200602e-13 1.0000000000000004 0 -0.22495105434386531 -0.97437006478523536 2.6339237458237977e-13 0
		 82.036011708884317 153.66066114194035 -8.1523294913702635 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightShoulder" -p "Character_Spine2";
	rename -uid "2CFDBB9D-4E34-0735-9ECB-E5AE5A100E3F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 9.8390655517577841 0.052903652191143902 -6.3903198237210672 ;
	setAttr ".jo" -type "double3" 35.117237161758609 -69.279601633018572 145.90388150343594 ;
	setAttr ".bps" -type "matrix" 0.93531812790679658 -0.29298768950820808 0.19833863316451264 0
		 0.20352845173297221 -0.012991220144160213 -0.9789828382225837 0 0.28940658068555464 0.9560279504260365 0.047480407117965404 0
		 -6.3903197999999835 151.48599374355453 -1.4974299526866881 1;
	setAttr ".sd" 2;
	setAttr ".typ" 9;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightArm" -p "Character_RightShoulder";
	rename -uid "9047BA2C-4619-E275-BCC8-25AE1C2C4D0E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -11.63277625256427 -0.015646920521771523 0.14910298634958963 ;
	setAttr ".jo" -type "double3" -1.4555763353237801 -16.99212186905913 7.5482423428558141 ;
	setAttr ".bps" -type "matrix" 0.99688042858593739 -1.1857041610663366e-05 0.078926617574352376 0
		 0.078926618337086779 0.00020668955122356281 -0.996880407168935 0 -4.4932546973130982e-06 0.99999997856941991 0.0002069806046058123 0
		 -17.230699456094506 155.03700385525036 -3.7822603913477 1;
	setAttr ".sd" 2;
	setAttr ".typ" 10;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightForeArm" -p "Character_RightArm";
	rename -uid "653CB59C-43C5-B22A-EC68-76832B1EE3C5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -24.660947188470907 0.0001902349720963592 -0.000283823210168066 ;
	setAttr ".r" -type "double3" 1.3668958650432886e-18 -1.4721603910933024e-19 1.5371738729583533e-13 ;
	setAttr ".jo" -type "double3" -0.011890357948345904 0.00026469852436778829 6.9291711667608791 ;
	setAttr ".bps" -type "matrix" 0.99912113577507033 9.8874408535774125e-06 -0.041916058375898062 0
		 -0.041916058368885019 -9.1553579167571618e-07 -0.99912113582386919 0 -9.9171267876402334e-06 0.99999999995070032 -5.0028861206416432e-07 0
		 -41.814711729839736 155.03689267236439 -5.7287052565477303 1;
	setAttr ".sd" 2;
	setAttr ".typ" 11;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHand" -p "Character_RightForeArm";
	rename -uid "048F853A-4F4A-FCA4-986E-DEA46D3A4CED";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -25.506314869888072 2.3324117899292673e-06 0.00022680893349047437 ;
	setAttr ".bps" -type "matrix" 0.99912113577507033 9.8874408535774125e-06 -0.041916058375898062 0
		 -0.041916058368885019 -9.1553579167571618e-07 -0.99912113582386919 0 -9.9171267876402334e-06 0.99999999995070032 -5.0028861206416432e-07 0
		 -67.29861011445918 155.03686650011409 -4.659580356446817 1;
	setAttr ".sd" 2;
	setAttr ".typ" 12;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandThumb1" -p "Character_RightHand";
	rename -uid "A3C45968-4628-2BAF-0FAD-6FA46162A412";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -1.7026393600182246 -2.0665457992209557 -2.1429922100005001 ;
	setAttr ".jo" -type "double3" -11.612700769541402 -19.999531702604948 28.597635271511802 ;
	setAttr ".bps" -type "matrix" 0.80547319430682263 0.34202020876278227 -0.48397841899306471 0
		 -0.44548093564676355 -0.18916089983560244 -0.87507993346246371 0 -0.39084481476469357 0.92045658820568421 -5.5161878991457219e-07 0
		 -68.91311014364021 152.89386045747364 -2.5234799748863912 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandThumb2" -p "Character_RightHandThumb1";
	rename -uid "551637EA-4B02-90B0-7C24-33B52728C987";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -6.8159149446499816 -3.4891465590103365e-05 0.00018976901498035659 ;
	setAttr ".jo" -type "double3" -0.025049905721246091 -0.09384314832401322 -13.999852361052604 ;
	setAttr ".bps" -type "matrix" 0.88867683245996809 0.37912973339767564 -0.25790333984406844 0
		 -0.23721739962308361 -0.10120295459665032 -0.96617072368032941 0 -0.39240462887812605 0.91979269796770857 -5.5165015155613088e-07 0
		 -74.403205259015067 150.56286270926071 0.77530908521889508 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandThumb3" -p "Character_RightHandThumb2";
	rename -uid "6B611DE7-4CFD-7DFD-8499-32ABE2ADA6AD";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -3.2777180690767427 2.604770197622841e-05 -0.0003437338278331481 ;
	setAttr ".jo" -type "double3" -0.13471214905760573 0.61660951824183385 -15.262897368265454 ;
	setAttr ".bps" -type "matrix" 0.9239482624308385 0.38247739984804541 0.0055359693381279744 0
		 0.0059917192429357041 -4.40859602094789e-07 -0.99998204948904956 0 -0.38247053174270568 0.92396484706144788 -0.0022921045281208297 0
		 -77.315908573797742 149.31986385788954 1.6206200506415134 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandIndex1" -p "Character_RightHand";
	rename -uid "5AECECD1-45D5-4A53-1A74-85A2CFE55818";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -9.1713045801683393 -2.8972977570161111 0.1320825631041771 ;
	setAttr ".jo" -type "double3" -9.488119298690199e-06 -12.999425601030779 -2.4022882283405567 ;
	setAttr ".bps" -type "matrix" 0.97437008908576894 0.22495094908585606 -6.0267919916913977e-07 0
		 -4.6577866608832273e-07 -6.6164823669886084e-07 -0.99999999999967282 0 -0.22495094908618105 0.97437008908573097 -5.3991289831873109e-07 0
		 -76.34041222636084 155.16886245195798 -1.3804025202840906 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandIndex2" -p "Character_RightHandIndex1";
	rename -uid "66D7C02A-4659-A40E-B618-82893BEB9D07";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -5.6265783056980823 -4.6758064933261068e-06 -0.00031587701946023117 ;
	setAttr ".jo" -type "double3" 0 -0.0064910957921832805 0 ;
	setAttr ".bps" -type "matrix" 0.97431956825188148 0.22516966696494389 -6.0280038194155132e-07 0
		 -4.6577866608832273e-07 -6.6164823669886084e-07 -0.99999999999967282 0 -0.22516966696526888 0.97431956825184363 -5.397775971761036e-07 0
		 -81.822710698736657 153.90285023805987 -1.3803929920816722 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandIndex3" -p "Character_RightHandIndex2";
	rename -uid "B290AF30-42C5-5B32-7B16-41908B234F88";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -2.7968456834213882 2.6553775389626111e-06 0.00016025131216679256 ;
	setAttr ".jo" -type "double3" 4.1069973483108078e-05 0 0 ;
	setAttr ".bps" -type "matrix" 0.97431956825188148 0.22516966696494389 -6.0280038194155132e-07 0
		 -6.2718169315325164e-07 3.6750130026321287e-08 -0.99999999999980282 0 -0.22516966696487717 0.97431956825206756 1.7702866381073903e-07 0
		 -84.547768121360747 153.27324088419635 -1.3803932338809421 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandMiddle1" -p "Character_RightHand";
	rename -uid "3D58CC7A-4786-0854-D3E7-A9A4ED5BABA3";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -9.3084901015188422 -0.53006715647158487 0.93808580599645097 ;
	setAttr ".jo" -type "double3" -5.9364442841768052e-06 -12.999499108890539 -2.4023040177807666 ;
	setAttr ".bps" -type "matrix" 0.97436980048330502 0.22495219915798281 -3.3416445784117952e-07 0
		 -2.0414517245410063e-07 -6.01245808653419e-07 -0.99999999999979861 0 -0.22495219915813827 0.9743698004831769 -5.3991285311103368e-07 0
		 -76.5767103384607 155.97486077821819 -3.7398030153174018 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandMiddle2" -p "Character_RightHandMiddle1";
	rename -uid "EE94BAE1-4124-97AE-FADC-54854297C761";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -5.6206053935683187 -6.1897338996530493e-06 -0.00065404457180306963 ;
	setAttr ".jo" -type "double3" 0 -0.0054219826346032013 0 ;
	setAttr ".bps" -type "matrix" 0.97432656388941974 0.22513939437451819 -3.3426818163860308e-07 0
		 -2.0414517245410063e-07 -6.01245808653419e-07 -0.99999999999979861 0 -0.22513939437467367 0.97432656388929162 -5.3984864229041822e-07 0
		 -82.053111301757056 154.70985564784684 -3.7397934866717502 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandMiddle3" -p "Character_RightHandMiddle2";
	rename -uid "B4864726-4D2D-966E-0ADE-1EB7E6B55FD0";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -3.3426876992611909 1.8487409221279449e-06 -7.1234177454471137e-05 ;
	setAttr ".jo" -type "double3" 2.5726794021846253e-05 0 0 ;
	setAttr ".bps" -type "matrix" 0.97432656388941974 0.22513939437451819 -3.3426818163860308e-07 0
		 -3.0523664680879646e-07 -1.6375636296968799e-07 -0.99999999999994016 0 -0.22513939437455929 0.97432656388946337 -9.0831380626858224e-08 0
		 -85.309964116181547 153.95721309633331 -3.7397936331033912 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandRing1" -p "Character_RightHand";
	rename -uid "8EB28348-4678-9322-9DEF-4E8DBEEC90BC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -9.0605573957948877 1.7796198114016804 0.88907458284288055 ;
	setAttr ".jo" -type "double3" -3.6210960014496959e-06 -12.999544801971 -2.4023143108873706 ;
	setAttr ".bps" -type "matrix" 0.97436962108483272 0.22495297621275007 -1.5912026621453004e-07 0
		 -3.3586942635708685e-08 -5.6186929277084431e-07 -0.99999999999984179 0 -0.22495297621280366 0.97436962108468395 -5.3991288717108039e-07 0
		 -76.425808045545125 155.92584854503897 -6.0578529007656012 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandRing2" -p "Character_RightHandRing1";
	rename -uid "1BECED15-4DE4-7784-D510-63988DAABBA8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -5.5286723307492238 3.5203030774866306e-06 -0.00031003478545699181 ;
	setAttr ".jo" -type "double3" 0 -0.01293208963829477 0 ;
	setAttr ".bps" -type "matrix" 0.97426834539742713 0.225391195827464 -1.5936308681881658e-07 0
		 -3.3586942635708685e-08 -5.6186929277084431e-07 -0.99999999999984179 0 -0.22539119582751765 0.97426834539727836 -5.3984126501516452e-07 0
		 -81.812708567365576 154.68185486936704 -6.0578536202589355 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandRing3" -p "Character_RightHandRing2";
	rename -uid "E29B5AFA-4001-A5DC-D82A-21B9ED1D9568";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -2.780355858935657 1.050949073544416e-06 0.0004751944254337559 ;
	setAttr ".jo" -type "double3" 1.5719639939649089e-05 0 0 ;
	setAttr ".bps" -type "matrix" 0.97426834539742713 0.225391195827464 -1.5936308681881658e-07 0
		 -9.5425152606591665e-08 -2.9456954182239943e-07 -0.99999999999995226 0 -0.22539119582749995 0.97426834539739582 -2.6548179084031164e-07 0
		 -84.521625317834804 154.05563671038874 -6.0578537419483496 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandPinky1" -p "Character_RightHand";
	rename -uid "DF4A9A08-454A-1838-B088-A5977BF0F08C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -8.4117780857186091 3.8485946012075463 0.049074457269739469 ;
	setAttr ".jo" -type "double3" -9.5187182718571591e-06 -12.999539534337854 -2.4022880926625656 ;
	setAttr ".bps" -type "matrix" 0.97436964176632901 0.22495288663137786 -6.0498728305827529e-07 0
		 -4.6802623617249545e-07 -6.6216855097316604e-07 -0.99999999999967149 0 -0.22495288663170435 0.97436964176629204 -5.399130809349263e-07 0
		 -75.86431395149684 155.08585174762635 -8.1522026999491715 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandPinky2" -p "Character_RightHandPinky1";
	rename -uid "7CA1A781-4786-F8A9-4E7C-37BD42072506";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -4.2065745668728454 -7.0245089691667317e-06 -0.0007327230990483713 ;
	setAttr ".jo" -type "double3" 0 -0.026233321540186476 0 ;
	setAttr ".bps" -type "matrix" 0.97416547667101283 0.22583539151774162 -6.0547609541896946e-07 0
		 -4.6802623617249545e-07 -6.6216855097316604e-07 -0.99999999999967149 0 -0.22583539151806814 0.97416547667097619 -5.3936485378922968e-07 0
		 -79.962907656896093 154.13885647804688 -8.1521923939003997 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandPinky3" -p "Character_RightHandPinky2";
	rename -uid "D43339D2-4C39-0752-350A-34AD0494AE39";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -2.1275018162915842 1.3196994824937747e-05 0.00060745512757875986 ;
	setAttr ".jo" -type "double3" 4.1211716694972069e-05 0 0 ;
	setAttr ".bps" -type "matrix" 0.97416547667101283 0.22583539151774162 -6.0547609541896946e-07 0
		 -6.3046514971948549e-07 3.852933602261688e-08 -0.99999999999980071 0 -0.22583539151767307 0.97416547667120046 1.7991529293698981e-07 0
		 -82.035580166848888 153.65896802638753 -8.1522029770432454 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftUpLeg" -p "Character_Hips";
	rename -uid "B345C168-4733-4A67-E5AE-1A905154D753";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -3.1739959716796875 1.1746324687255517e-16 6.8769998550415048 ;
	setAttr ".r" -type "double3" -0.00032885706612236155 1.5577254353704948e-05 -8.1436136950799599e-11 ;
	setAttr ".jo" -type "double3" 180 -2.2069531490250799e-32 177.29438616493832 ;
	setAttr ".bps" -type "matrix" -1.224646799147353e-16 -1 1.4282998336737732e-31 0
		 -4.4408920985006262e-16 0 1 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.8769998999999986 112.148004 3.0540014517299598e-15 1;
	setAttr ".sd" 1;
	setAttr ".typ" 2;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftLeg" -p "Character_LeftUpLeg";
	rename -uid "A71FF6B9-4A66-378D-21FE-AA8D604818BA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 53.269317626953125 -1.4089386225712985e-05 2.0980834933403969e-05 ;
	setAttr ".r" -type "double3" -1.1205340638591436e-20 3.4652520845049895e-19 -5.8075105433028048e-14 ;
	setAttr ".jo" -type "double3" 0 0 -5.6348913703049472 ;
	setAttr ".bps" -type "matrix" -1.224646799147353e-16 -1 1.4282998336737732e-31 0
		 -4.4408920985006262e-16 0 1 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.8769846412109921 58.878686000000002 -6.5421176969460048e-06 1;
	setAttr ".sd" 1;
	setAttr ".typ" 3;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftFoot" -p "Character_LeftLeg";
	rename -uid "8652B0B7-469F-12F4-0C6E-E393A676A599";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 49.426418304443345 -2.167992714396938e-05 -9.5367431907078526e-06 ;
	setAttr ".r" -type "double3" -0.00029068911874969265 -0.00015456214610903401 3.9556367705428703e-10 ;
	setAttr ".jo" -type "double3" 0 0 62 ;
	setAttr ".bps" -type "matrix" -4.4960118351738033e-16 -0.46947156278589086 0.88294759285892688 0
		 -1.0035736102370583e-16 0.88294759285892688 0.46947156278589086 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.8769998999999862 9.4522680000000037 -2.1219247696945997e-05 1;
	setAttr ".sd" 1;
	setAttr ".typ" 4;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftToeBase" -p "Character_LeftFoot";
	rename -uid "0D3A8B88-4577-EF50-AB14-9A94B0B8B51C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 15.869999549792123 6.8407788766933209e-07 2.2888183581315502e-05 ;
	setAttr ".jo" -type "double3" 0 0 28.047999999999995 ;
	setAttr ".bps" -type "matrix" -4.4398645825228063e-16 0.00083775794296192529 0.99999964908075289 0
		 1.2283667620245762e-16 0.99999964908075289 -0.00083775794296192529 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.876975104467979 2.0017551963721187 14.012357556783801 1;
	setAttr ".sd" 1;
	setAttr ".typ" 25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightUpLeg" -p "Character_Hips";
	rename -uid "1B78498E-42DE-12CB-DE72-4597E53656A8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -3.1739959716796875 -1.1488206219656399e-15 -6.8769998550415021 ;
	setAttr ".jo" -type "double3" -180 2.2069531490250793e-32 -2.7056138350617367 ;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-16 1 0 0 3.2162452993532727e-16 5.4385242937875642e-32 -1 0
		 -1 4.4408920985006262e-16 -3.2162452993532727e-16 0 -6.8769999000000022 112.148004 -3.0540014517299598e-15 1;
	setAttr ".sd" 2;
	setAttr ".typ" 2;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightLeg" -p "Character_RightUpLeg";
	rename -uid "2906680C-4FF8-7574-BBF6-1184729AB6A6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -53.269348144531257 1.136522040035004e-05 9.5367431294235416e-06 ;
	setAttr ".jo" -type "double3" 1.3594368529480193e-05 1.3412981314043533e-06 -5.6348913703047963 ;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-16 1 0 0 -2.3841857877993067e-07 1.0587911846116953e-22 -0.99999999999997158 0
		 -0.99999999999997158 4.4408920985004999e-16 2.3841857877993067e-07 0 -6.8770065757202259 58.878655999999999 -9.5101896030540031e-06 1;
	setAttr ".sd" 2;
	setAttr ".typ" 3;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightFoot" -p "Character_RightLeg";
	rename -uid "00160B5B-45CA-10B2-52DF-EC94E1E5C385";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -49.426387786865277 1.9152282655032771e-05 -1.907353222918573e-06 ;
	setAttr ".jo" -type "double3" 2.5638066312266341e-05 1.2061398118891237e-05 61.999999999999311 ;
	setAttr ".bps" -type "matrix" -4.4959791509231056e-16 0.46947156278589108 -0.88294759285892677 0
		 -5.5939941416277452e-07 -0.88294759285878865 -0.46947156278581759 0 -0.99999999999984357 4.9392036597064218e-07 2.6262211758548109e-07 0
		 -6.8770113440918035 9.4522679999999966 -2.6941264466186132e-05 1;
	setAttr ".sd" 2;
	setAttr ".typ" 4;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightToeBase" -p "Character_RightFoot";
	rename -uid "68CF4C6B-4EA8-4F2F-BB89-C4839352FCDC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -15.869996713866618 -2.9565675827569748e-06 -3.1471250781400784e-05 ;
	setAttr ".jo" -type "double3" -2.8283512592212725e-05 1.5070841813460866e-05 28.047999999996271 ;
	setAttr ".bps" -type "matrix" -4.4398555419314237e-16 -0.0008377579429616704 -0.99999964908075289 0
		 -5.9760116123179341e-11 -0.99999964908075289 0.00083775794296173643 0 -1 5.9760095524185096e-11 -4.9620526562268563e-14 0
		 -6.8769798728390796 2.0017584163268367 14.012350149137177 1;
	setAttr ".sd" 2;
	setAttr ".typ" 25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_Hips";
	rename -uid "99006457-476F-5C68-91A2-B69B2F8275F2";
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
createNode joint -n "BoneFK_Spine" -p "BoneFK_Hips";
	rename -uid "9F1F289C-40F3-A8AF-7608-30874620B0A7";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.7407608032226563 9.280770596475916e-16 -9.9733644900477979e-18 ;
	setAttr ".jo" -type "double3" 0 0 -1.9999999999999472 ;
	setAttr ".bps" -type "matrix" 4.59317172617089e-16 0.99939082701909576 -0.034899496702500046 0
		 -4.2832019278753274e-16 0.034899496702500046 0.99939082701909576 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 1.2171422980600254e-15 118.06276080000001 0 1;
	setAttr ".typ" 6;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_Spine1" -p "BoneFK_Spine";
	rename -uid "031DBDD1-4454-617A-BFF2-CC85DFD90568";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 9.7650275533157469 4.905416099987292e-07 -2.5634841165985908e-15 ;
	setAttr ".jo" -type "double3" 0 0 -2.9999999999999587 ;
	setAttr ".bps" -type "matrix" 4.811042412630871e-16 0.99619469809174577 -0.087155742747656501 0
		 -4.0369439140168292e-16 0.087155742747656501 0.99619469809174577 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 5.7023869557109906e-15 127.82183982614796 -0.3407940582832466 1;
	setAttr ".typ" 6;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_Spine2" -p "BoneFK_Spine1";
	rename -uid "D7858870-4FB3-6142-8FDB-938318C527FD";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 13.877898184271302 -1.0424039054157674e-06 -4.9770045284567883e-10 ;
	setAttr ".jo" -type "double3" 0 0 5 ;
	setAttr ".pa" -type "double3" 36.762975808112202 0 0 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 1.2379102964140113e-14 141.64692814355453 -1.5503336046867018 1;
	setAttr ".typ" 6;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_Neck" -p "BoneFK_Spine2";
	rename -uid "C1C74AF1-4DFA-0399-351D-068FF087D2AB";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 17.167678833007756 -3.5083047578154947e-14 -2.3072051501257129e-09 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.0003083966209613e-14 158.81460714355453 -1.5503336046866729 1;
	setAttr ".typ" 7;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_Head" -p "BoneFK_Neck";
	rename -uid "47850AD9-4FB2-1DA7-F75C-B890789EBC30";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 8.4374847412109659 -1.6431300764452317e-14 -3.5959754928952345e-09 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.3750079879754599e-14 167.25209184355452 -1.5503336046866587 1;
	setAttr ".typ" 8;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_HeadUp" -p "BoneFK_Head";
	rename -uid "EEFA89E8-4162-752B-C5CB-E197F858B8C6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 23.80500030517581 -4.6629367034256575e-15 -1.236431894867201e-14 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.4472470234754516e-14 191.05709214873031 -1.5503336046866183 1;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_Eye_L" -p "BoneFK_Head";
	rename -uid "22019B2A-449F-2B95-BCAD-579F0931AD3D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 9.9804477067827122 4.5866754493465898 2.5366422083400293 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.5366422083400559 177.23253955033724 3.0363418446599533 1;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_Eye_R" -p "BoneFK_Head";
	rename -uid "9447B2D8-44D6-E9AF-D57E-B79DC5D03897";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 9.9804477067827406 4.586999999999998 -2.5370000000000008 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 -2.5369999999999742 177.23253955033724 3.0366663953133579 1;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftShoulder" -p "BoneFK_Spine2";
	rename -uid "C75B7C59-4BB8-8A83-E6CD-3A90395874D3";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 9.8394165039061932 0.052899718284581621 6.3903198247164328 ;
	setAttr ".jo" -type "double3" 35.117237161758709 -69.279601633018473 -34.096118496564024 ;
	setAttr ".bps" -type "matrix" 0.93531812790679647 0.29298768950820886 -0.19833863316451253 0
		 0.20352845173297279 0.012991220144158131 0.9789828382225837 0 0.28940658068555486 -0.95602795042603639 -0.047480407117967652 0
		 6.3903198000000172 151.48634464355453 -1.4974338866866823 1;
	setAttr ".sd" 1;
	setAttr ".typ" 9;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftArm" -p "BoneFK_LeftShoulder";
	rename -uid "FEF29CCF-4C1F-4B0E-CC52-1EBB4F9E1C01";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 11.632612835754266 0.015638923866194254 -0.1485626337424435 ;
	setAttr ".jo" -type "double3" -1.4554471214587421 -16.991854247264104 7.5478001883629169 ;
	setAttr ".bps" -type "matrix" 0.99687989433796631 1.6365756745850835e-05 -0.078933364282078589 0
		 0.078933365978686804 -0.00020668944817928483 0.99687987291084734 0 -1.4432899320127035e-15 -0.99999997850581701 -0.00020733635952847884 0
		 17.230701752468534 155.03679030466319 -3.7822654811142296 1;
	setAttr ".sd" 1;
	setAttr ".typ" 10;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftForeArm" -p "BoneFK_LeftArm";
	rename -uid "945265E0-49A6-ED11-5CBC-DF88AE7F58C9";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 24.660940530304483 3.6698025018822023e-07 -8.392426792624974e-06 ;
	setAttr ".jo" -type "double3" -0.011890357530588104 -9.7577304479258915e-06 6.9295886836102332 ;
	setAttr ".bps" -type "matrix" 0.99912112601209402 -8.8610759624914769e-06 0.041916291317420869 0
		 -0.041916291315772361 3.7174966304245882e-07 0.99912112605138803 0 -8.8688705607842278e-06 -0.99999999996067179 -4.9948380934777825e-13 0
		 41.814698039790343 155.03720229197558 -5.7288361530307972 1;
	setAttr ".sd" 1;
	setAttr ".typ" 11;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHand" -p "BoneFK_LeftForeArm";
	rename -uid "A4DE93D9-4AEA-6039-2A0D-6A966965582D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 25.506295895149023 -3.3929425757861509e-07 2.8686102666597435e-06 ;
	setAttr ".bps" -type "matrix" 0.99912112601209402 -8.8610759624914769e-06 0.041916291317420869 0
		 -0.041916291315772361 3.7174966304245882e-07 0.99912112605138803 0 -8.8688705607842278e-06 -0.99999999996067179 -4.9948380934777825e-13 0
		 67.298577233904624 155.03697341013856 -4.6597071584624938 1;
	setAttr ".sd" 1;
	setAttr ".typ" 12;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandThumb1" -p "BoneFK_LeftHand";
	rename -uid "BEA78ECC-4ED4-1552-4A35-7B9849DD3B33";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 1.7026470718544857 2.0665490697661166 2.1428079466631118 ;
	setAttr ".jo" -type "double3" -11.612700769512347 -19.999531702619919 28.597635271501737 ;
	setAttr ".bps" -type "matrix" 0.80547343999123588 -0.34201960654863806 0.48397843568179799 0
		 -0.44548133796126083 0.18915999506567224 0.87507992423263836 0 -0.3908438498901195 -0.92045699791085844 9.5276172820342116e-16 0
		 68.913086843277995 152.89415119117646 -2.5236056427767197 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandThumb2" -p "BoneFK_LeftHandThumb1";
	rename -uid "97946FC6-4D48-94A7-06D6-ADAABD073A91";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 6.8159685368969374 2.0004823899633095e-06 -2.696730689422111e-06 ;
	setAttr ".jo" -type "double3" -0.025049905731216907 -0.093843148323969977 -13.9998523610526 ;
	setAttr ".bps" -type "matrix" 0.88867716975422772 -0.37912893086221627 0.25790335736645409 0
		 -0.23721773097305252 0.10120222256890085 0.96617071900317464 0 -0.39240366469951893 -0.91979310930795077 -6.0076007477282067e-15 0
		 74.403168656423702 150.56295916351945 0.77517839043033421 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandThumb3" -p "BoneFK_LeftHandThumb2";
	rename -uid "EA1C5E76-44FA-C5E0-8271-2EB763AB4D30";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 3.2776053951470434 8.7121689396063573e-07 -5.3666399537632969e-06 ;
	setAttr ".jo" -type "double3" -0.13471214904380366 0.61660951824452481 -15.262897368265358 ;
	setAttr ".bps" -type "matrix" 0.92394866465539172 -0.38247642854366959 -0.0055359452669147729 0
		 0.0059914860957702648 -5.3138214564218272e-08 0.99998205088609549 0 -0.38246956372485796 -0.92396524913466127 0.0022915531065968702 0
		 77.315903680311848 149.32032914219604 1.6204849173076719 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandIndex1" -p "BoneFK_LeftHand";
	rename -uid "235BE46D-4393-EC46-4AB5-899042765AA7";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 9.1713276732590288 2.8972997992026386 -0.13206871615676619 ;
	setAttr ".jo" -type "double3" -9.488087965142045e-06 -12.999425601029495 -2.4022882283478002 ;
	setAttr ".bps" -type "matrix" 0.97437032489133113 -0.22494992769647076 7.1731482060442627e-07 0
		 -6.9893021598491139e-07 1.6136017178670059e-07 0.99999999999974287 0 -0.22494992769652852 -0.97437032489158193 2.6145273013878586e-13 0
		 76.340401601408985 155.16896193937217 -1.3805256761372346 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandIndex2" -p "BoneFK_LeftHandIndex1";
	rename -uid "1BBE72C3-4169-77F3-31FD-07B66EF1170E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 5.6264656222006266 -6.9808707658935987e-07 -2.3179418064955826e-06 ;
	setAttr ".jo" -type "double3" 0 -0.0005288697546969324 0 ;
	setAttr ".bps" -type "matrix" 0.97436797583058254 -0.22496010240773551 7.1731482056804748e-07 0
		 -6.9893021598491139e-07 1.6136017178670059e-07 0.99999999999974287 0 -0.22496010240779327 -0.97436797583083334 -7.2290052576600057e-12 0
		 81.822663237492023 153.90329116799901 -1.3805220998585621 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandIndex3" -p "BoneFK_LeftHandIndex2";
	rename -uid "08CB8FF3-49FD-5FA6-9A4A-64A98301FADF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.7969337329773651 -2.2447005980641421e-06 -3.0324292850991696e-05 ;
	setAttr ".jo" -type "double3" 2.8926976314920852e-27 -6.6250114948781434e-05 -4.1099111785736037e-05 ;
	setAttr ".bps" -type "matrix" 0.97436771571272174 -0.2249612290524142 2.5345000513944453e-16 0
		 -1.6264896639984095e-12 -7.0436480187232799e-12 1.0000000000000002 0 -0.22496122905241411 -0.97436771571272185 -7.2290052579578998e-12 0
		 84.547909765745871 153.27410957041241 -1.3805223382771667 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandMiddle1" -p "BoneFK_LeftHand";
	rename -uid "504ECE38-4E6F-2FF4-577E-7980209B756D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 9.3084826446977189 0.53006952523908435 -0.93787220314769115 ;
	setAttr ".jo" -type "double3" -5.9364148835925964e-06 -12.999499108889253 -2.4023040177880151 ;
	setAttr ".bps" -type "matrix" 0.9743700362902401 -0.22495117776876575 4.4879938651484573e-07 0
		 -4.3729665137535747e-07 1.0095805087051542e-07 0.99999999999989952 0 -0.22495117776878834 -0.97437003629033836 1.0292690415623217e-13 0
		 76.576668619710659 155.97476332398344 -3.7399264243781523 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandMiddle2" -p "BoneFK_LeftHandMiddle1";
	rename -uid "8A1AB7DC-4A90-26D6-7CFF-B2A6B9C1D13C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 5.6204766658556053 8.1539362506433122e-07 -4.9700588817813696e-06 ;
	setAttr ".bps" -type "matrix" 0.9743700362902401 -0.22495117776876575 4.4879938651484573e-07 0
		 -4.3729665137535747e-07 1.0095805087051542e-07 0.99999999999989952 0 -0.22495117776878834 -0.97437003629033836 1.0292690415623217e-13 0
		 82.053093823878541 154.71043531337293 -3.7399235633551875 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandMiddle3" -p "BoneFK_LeftHandMiddle2";
	rename -uid "A6C70A32-4768-9DE0-AB77-37BE5F2390F5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 3.342701938044776 -1.0233654212932208e-06 8.6077223784286616e-06 ;
	setAttr ".jo" -type "double3" 0 7.2577427542866629e-06 -2.5714310682672366e-05 ;
	setAttr ".bps" -type "matrix" 0.97437006478523525 -0.22495105434386539 2.2146400200471794e-16 0
		 2.2934393675898366e-14 1.0034191271609109e-13 1.0000000000000002 0 -0.22495105434386534 -0.97437006478523536 1.0292690418428619e-13 0
		 85.310120459172154 153.95848219693116 -3.7399230865180253 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandRing1" -p "BoneFK_LeftHand";
	rename -uid "2EB4F059-4C35-7FC7-642A-D5B2CF6B7BAA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 9.0606256989174057 -1.779630133265826 -0.88899696412951812 ;
	setAttr ".jo" -type "double3" -3.6210662265469648e-06 -12.999544801969716 -2.4023143108946243 ;
	setAttr ".bps" -type "matrix" 0.97436985689262323 -0.2249519548236335 2.7375476423133057e-07 0
		 -2.6673838166295699e-07 6.1581707411116584e-08 0.99999999999996281 0 -0.22495195482364186 -0.97436985689265987 3.9052740650083694e-14 0
		 76.425843163767624 155.92588942163411 -6.0579853615696839 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandRing2" -p "BoneFK_LeftHandRing1";
	rename -uid "25497D55-4517-F0FE-B1E4-1B8BE7C48C74";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 5.5286036808446255 3.9386702699317766e-07 1.2988781350031786e-05 ;
	setAttr ".bps" -type "matrix" 0.97436985689262323 -0.2249519548236335 2.7375476423133057e-07 0
		 -2.6673838166295699e-07 6.1581707411116584e-08 0.99999999999996281 0 -0.22495195482364186 -0.97436985689265987 3.9052740650083694e-14 0
		 81.812745037900868 154.68220655599728 -6.0579834542210511 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandRing3" -p "BoneFK_LeftHandRing2";
	rename -uid "9121AA43-442E-CA0E-F5AC-83B12CA58595";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.7803770398757806 -2.8430430010217833e-07 6.6847358937138779e-06 ;
	setAttr ".jo" -type "double3" 0 5.2950822390385744e-05 -1.568499260097869e-05 ;
	setAttr ".bps" -type "matrix" 0.97437006478523525 -0.22495105434386525 1.9327053868663757e-16 0
		 8.5964561194605169e-15 3.8098478279405135e-14 1.0000000000000002 0 -0.2249510543438652 -0.97437006478523547 3.9052740828714455e-14 0
		 84.521859073754101 154.05674880129553 -6.0579829773839009 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandPinky1" -p "BoneFK_LeftHand";
	rename -uid "57E51390-449E-6F10-7D72-CB922CDEC3D2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 8.4118391053240913 -3.8485940883280882 -0.048614176668621667 ;
	setAttr ".jo" -type "double3" -9.5186896473851394e-06 -12.999539534336561 -2.4022880926698074 ;
	setAttr ".bps" -type "matrix" 0.97436987757392179 -0.22495186524246255 7.1962183089459454e-07 0
		 -7.0117777600450612e-07 1.6188052977306694e-07 0.99999999999974143 0 -0.2249518652425207 -0.97436987757417415 2.6339237440414764e-13 0
		 75.864342647658447 155.08551161847751 -8.1523266303473392 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandPinky2" -p "BoneFK_LeftHandPinky1";
	rename -uid "C50B1091-4E45-C15D-30AB-E3B555322688";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 4.2063251711582197 7.8773383727082091e-07 -8.1329624208592577e-06 ;
	setAttr ".bps" -type "matrix" 0.97436987757392179 -0.22495186524246255 7.1962183089459454e-07 0
		 -7.0117777600450612e-07 1.6188052977306694e-07 0.99999999999974143 0 -0.2249518652425207 -0.97436987757417415 2.6339237440414764e-13 0
		 79.96286104734304 154.13929884343474 -8.1523228156500576 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandPinky3" -p "BoneFK_LeftHandPinky2";
	rename -uid "E0FC0E92-411D-CB22-712F-61936D9258AF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.1276859725186199 -1.0114198124355767e-05 1.1050364804532364e-05 ;
	setAttr ".jo" -type "double3" 0 4.7683192157465637e-05 -4.1231293743463959e-05 ;
	setAttr ".bps" -type "matrix" 0.97437006478523536 -0.22495105434386539 2.1405281614918304e-16 0
		 5.9055182610590735e-14 2.5669229096200602e-13 1.0000000000000004 0 -0.22495105434386531 -0.97437006478523536 2.6339237458237977e-13 0
		 82.036011708884317 153.66066114194035 -8.1523294913702635 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftArm" -p "BoneFK_LeftShoulder";
	rename -uid "50131777-43F8-4E84-63AD-5DBCBB7EAE00";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 11.632612835754266 0.015638923866196919 -0.1485626337424435 ;
	setAttr ".jo" -type "double3" -1.4554471214587454 -16.991854247264104 7.5478001883629151 ;
	setAttr ".bps" -type "matrix" 0.99687989433796631 1.6365756745850835e-05 -0.078933364282078589 0
		 0.078933365978686804 -0.00020668944817928483 0.99687987291084734 0 -1.4432899320127035e-15 -0.99999997850581701 -0.00020733635952847884 0
		 17.230701752468534 155.03679030466319 -3.7822654811142296 1;
	setAttr ".sd" 1;
	setAttr ".typ" 10;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftForeArm" -p "BoneIK_LeftArm";
	rename -uid "17E77649-4C3F-B8DA-DD5F-9484B48EEDBF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 24.660940530304483 3.6698025018822023e-07 -8.392426792624974e-06 ;
	setAttr ".r" -type "double3" -4.3221314840482376e-21 -8.1728904091222945e-18 3.842933729838954e-14 ;
	setAttr ".jo" -type "double3" -0.011890357530588105 -9.7577304479258915e-06 6.9295886836102349 ;
	setAttr ".bps" -type "matrix" 0.99912112601209402 -8.8610759624914769e-06 0.041916291317420869 0
		 -0.041916291315772361 3.7174966304245882e-07 0.99912112605138803 0 -8.8688705607842278e-06 -0.99999999996067179 -4.9948380934777825e-13 0
		 41.814698039790343 155.03720229197558 -5.7288361530307972 1;
	setAttr ".sd" 1;
	setAttr ".typ" 11;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHand" -p "BoneIK_LeftForeArm";
	rename -uid "F8140AF5-4B2E-8B96-CB4B-8887B9A7F409";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 25.506295895149023 -3.3929425757861509e-07 2.8686102666597435e-06 ;
	setAttr ".bps" -type "matrix" 0.99912112601209402 -8.8610759624914769e-06 0.041916291317420869 0
		 -0.041916291315772361 3.7174966304245882e-07 0.99912112605138803 0 -8.8688705607842278e-06 -0.99999999996067179 -4.9948380934777825e-13 0
		 67.298577233904624 155.03697341013856 -4.6597071584624938 1;
	setAttr ".sd" 1;
	setAttr ".typ" 12;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandThumb1" -p "BoneIK_LeftHand";
	rename -uid "4626F791-49FF-A25D-42E6-C3BF717A35E1";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 1.7026470718544857 2.0665490697661166 2.1428079466631118 ;
	setAttr ".jo" -type "double3" -11.612700769512347 -19.999531702619919 28.597635271501737 ;
	setAttr ".bps" -type "matrix" 0.80547343999123588 -0.34201960654863806 0.48397843568179799 0
		 -0.44548133796126083 0.18915999506567224 0.87507992423263836 0 -0.3908438498901195 -0.92045699791085844 9.5276172820342116e-16 0
		 68.913086843277995 152.89415119117646 -2.5236056427767197 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandThumb2" -p "BoneIK_LeftHandThumb1";
	rename -uid "0F68ECC9-4127-4BF5-37D2-119A0C8FAF31";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 6.8159685368969374 2.0004823899633095e-06 -2.696730689422111e-06 ;
	setAttr ".jo" -type "double3" -0.0250499057312169 -0.093843148323970019 -13.9998523610526 ;
	setAttr ".bps" -type "matrix" 0.88867716975422772 -0.37912893086221627 0.25790335736645409 0
		 -0.23721773097305252 0.10120222256890085 0.96617071900317464 0 -0.39240366469951893 -0.91979310930795077 -6.0076007477282067e-15 0
		 74.403168656423702 150.56295916351945 0.77517839043033421 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandThumb3" -p "BoneIK_LeftHandThumb2";
	rename -uid "C6B6FBF1-4FE0-B9D8-07E7-759326A65295";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 3.2776053951470434 8.7121689396063573e-07 -5.3666399537632969e-06 ;
	setAttr ".jo" -type "double3" -0.13471214904380369 0.61660951824452481 -15.262897368265358 ;
	setAttr ".bps" -type "matrix" 0.92394866465539172 -0.38247642854366959 -0.0055359452669147729 0
		 0.0059914860957702648 -5.3138214564218272e-08 0.99998205088609549 0 -0.38246956372485796 -0.92396524913466127 0.0022915531065968702 0
		 77.315903680311848 149.32032914219604 1.6204849173076719 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandIndex1" -p "BoneIK_LeftHand";
	rename -uid "EB1078C5-438E-21BB-7552-F5935EB7E3EC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 9.1713276732590288 2.8972997992026386 -0.13206871615676619 ;
	setAttr ".jo" -type "double3" -9.4880879650910418e-06 -12.999425601029495 -2.4022882283478002 ;
	setAttr ".bps" -type "matrix" 0.97437032489133113 -0.22494992769647076 7.1731482060442627e-07 0
		 -6.9893021598491139e-07 1.6136017178670059e-07 0.99999999999974287 0 -0.22494992769652852 -0.97437032489158193 2.6145273013878586e-13 0
		 76.340401601408985 155.16896193937217 -1.3805256761372346 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandIndex2" -p "BoneIK_LeftHandIndex1";
	rename -uid "465D0589-48C1-6CB5-6339-B293699A3D1F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 5.6264656222006266 -6.9808707658935987e-07 -2.3179418064955826e-06 ;
	setAttr ".jo" -type "double3" 0 -0.0005288697546969324 0 ;
	setAttr ".bps" -type "matrix" 0.97436797583058254 -0.22496010240773551 7.1731482056804748e-07 0
		 -6.9893021598491139e-07 1.6136017178670059e-07 0.99999999999974287 0 -0.22496010240779327 -0.97436797583083334 -7.2290052576600057e-12 0
		 81.822663237492023 153.90329116799901 -1.3805220998585621 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandIndex3" -p "BoneIK_LeftHandIndex2";
	rename -uid "9E1F7815-4E68-C952-94FC-3585D2188135";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.7969337329773651 -2.2447005980641421e-06 -3.0324292850991696e-05 ;
	setAttr ".jo" -type "double3" 2.8926976314920852e-27 -6.6250114948781434e-05 -4.1099111785736037e-05 ;
	setAttr ".bps" -type "matrix" 0.97436771571272174 -0.2249612290524142 2.5345000513944453e-16 0
		 -1.6264896639984095e-12 -7.0436480187232799e-12 1.0000000000000002 0 -0.22496122905241411 -0.97436771571272185 -7.2290052579578998e-12 0
		 84.547909765745871 153.27410957041241 -1.3805223382771667 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandMiddle1" -p "BoneIK_LeftHand";
	rename -uid "52B5F64C-4CDB-9EA3-7DC7-F38E2009405D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 9.3084826446977189 0.53006952523908435 -0.93787220314769115 ;
	setAttr ".jo" -type "double3" -5.9364148834905891e-06 -12.999499108889253 -2.4023040177880155 ;
	setAttr ".bps" -type "matrix" 0.9743700362902401 -0.22495117776876575 4.4879938651484573e-07 0
		 -4.3729665137535747e-07 1.0095805087051542e-07 0.99999999999989952 0 -0.22495117776878834 -0.97437003629033836 1.0292690415623217e-13 0
		 76.576668619710659 155.97476332398344 -3.7399264243781523 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandMiddle2" -p "BoneIK_LeftHandMiddle1";
	rename -uid "5939729A-46BF-9CD8-B2B0-4E92824AF592";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 5.6204766658556053 8.1539362506433122e-07 -4.9700588817813696e-06 ;
	setAttr ".bps" -type "matrix" 0.9743700362902401 -0.22495117776876575 4.4879938651484573e-07 0
		 -4.3729665137535747e-07 1.0095805087051542e-07 0.99999999999989952 0 -0.22495117776878834 -0.97437003629033836 1.0292690415623217e-13 0
		 82.053093823878541 154.71043531337293 -3.7399235633551875 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandMiddle3" -p "BoneIK_LeftHandMiddle2";
	rename -uid "4291039F-40A2-1D30-E47D-C6BFC5BCA37B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 3.342701938044776 -1.0233654212932208e-06 8.6077223784286616e-06 ;
	setAttr ".jo" -type "double3" 0 7.2577427542866629e-06 -2.571431068267236e-05 ;
	setAttr ".bps" -type "matrix" 0.97437006478523525 -0.22495105434386539 2.2146400200471794e-16 0
		 2.2934393675898366e-14 1.0034191271609109e-13 1.0000000000000002 0 -0.22495105434386534 -0.97437006478523536 1.0292690418428619e-13 0
		 85.310120459172154 153.95848219693116 -3.7399230865180253 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandRing1" -p "BoneIK_LeftHand";
	rename -uid "B844F346-4A69-AB26-DF68-009E7B0E3DF8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 9.0606256989174057 -1.779630133265826 -0.88899696412951812 ;
	setAttr ".jo" -type "double3" -3.6210662264959615e-06 -12.999544801969712 -2.4023143108946248 ;
	setAttr ".bps" -type "matrix" 0.97436985689262323 -0.2249519548236335 2.7375476423133057e-07 0
		 -2.6673838166295699e-07 6.1581707411116584e-08 0.99999999999996281 0 -0.22495195482364186 -0.97436985689265987 3.9052740650083694e-14 0
		 76.425843163767624 155.92588942163411 -6.0579853615696839 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandRing2" -p "BoneIK_LeftHandRing1";
	rename -uid "BF518362-4CB3-28F7-7F94-639582036CB3";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 5.5286036808446255 3.9386702699317766e-07 1.2988781350031786e-05 ;
	setAttr ".bps" -type "matrix" 0.97436985689262323 -0.2249519548236335 2.7375476423133057e-07 0
		 -2.6673838166295699e-07 6.1581707411116584e-08 0.99999999999996281 0 -0.22495195482364186 -0.97436985689265987 3.9052740650083694e-14 0
		 81.812745037900868 154.68220655599728 -6.0579834542210511 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandRing3" -p "BoneIK_LeftHandRing2";
	rename -uid "74EE098E-43BA-7325-FC41-738BCDD314D6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.7803770398757806 -2.8430430010217833e-07 6.6847358937138779e-06 ;
	setAttr ".jo" -type "double3" -1.4463488157456935e-27 5.2950822390385757e-05 -1.568499260097869e-05 ;
	setAttr ".bps" -type "matrix" 0.97437006478523525 -0.22495105434386525 1.9327053868663757e-16 0
		 8.5964561194605169e-15 3.8098478279405135e-14 1.0000000000000002 0 -0.2249510543438652 -0.97437006478523547 3.9052740828714455e-14 0
		 84.521859073754101 154.05674880129553 -6.0579829773839009 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandPinky1" -p "BoneIK_LeftHand";
	rename -uid "B294572F-4AA1-465D-2863-4394446CB429";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 8.4118391053240913 -3.8485940883280882 -0.048614176668621667 ;
	setAttr ".jo" -type "double3" -9.5186896473851394e-06 -12.999539534336561 -2.4022880926698074 ;
	setAttr ".bps" -type "matrix" 0.97436987757392179 -0.22495186524246255 7.1962183089459454e-07 0
		 -7.0117777600450612e-07 1.6188052977306694e-07 0.99999999999974143 0 -0.2249518652425207 -0.97436987757417415 2.6339237440414764e-13 0
		 75.864342647658447 155.08551161847751 -8.1523266303473392 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandPinky2" -p "BoneIK_LeftHandPinky1";
	rename -uid "7DCC5267-425D-9AB8-1A13-218903CC5BA8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 4.2063251711582197 7.8773383727082091e-07 -8.1329624208592577e-06 ;
	setAttr ".bps" -type "matrix" 0.97436987757392179 -0.22495186524246255 7.1962183089459454e-07 0
		 -7.0117777600450612e-07 1.6188052977306694e-07 0.99999999999974143 0 -0.2249518652425207 -0.97436987757417415 2.6339237440414764e-13 0
		 79.96286104734304 154.13929884343474 -8.1523228156500576 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandPinky3" -p "BoneIK_LeftHandPinky2";
	rename -uid "C34771C2-430F-592D-B84E-50A535B2847F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.1276859725186199 -1.0114198124355767e-05 1.1050364804532364e-05 ;
	setAttr ".jo" -type "double3" 0 4.7683192157465637e-05 -4.1231293743463939e-05 ;
	setAttr ".bps" -type "matrix" 0.97437006478523536 -0.22495105434386539 2.1405281614918304e-16 0
		 5.9055182610590735e-14 2.5669229096200602e-13 1.0000000000000004 0 -0.22495105434386531 -0.97437006478523536 2.6339237458237977e-13 0
		 82.036011708884317 153.66066114194035 -8.1523294913702635 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightShoulder" -p "BoneFK_Spine2";
	rename -uid "3D895055-4C10-823E-4791-509646B629B9";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 9.8390655517577841 0.052903652191143902 -6.3903198237210672 ;
	setAttr ".jo" -type "double3" 35.117237161758609 -69.279601633018572 145.90388150343594 ;
	setAttr ".bps" -type "matrix" 0.93531812790679658 -0.29298768950820808 0.19833863316451264 0
		 0.20352845173297221 -0.012991220144160213 -0.9789828382225837 0 0.28940658068555464 0.9560279504260365 0.047480407117965404 0
		 -6.3903197999999835 151.48599374355453 -1.4974299526866881 1;
	setAttr ".sd" 2;
	setAttr ".typ" 9;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightArm" -p "BoneFK_RightShoulder";
	rename -uid "09B04C4C-44F3-A0B0-A05B-1EB8FE40D81D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -11.63277625256427 -0.015646920521771523 0.14910298634958963 ;
	setAttr ".jo" -type "double3" -1.4555763353237801 -16.99212186905913 7.5482423428558141 ;
	setAttr ".bps" -type "matrix" 0.99688042858593739 -1.1857041610663366e-05 0.078926617574352376 0
		 0.078926618337086779 0.00020668955122356281 -0.996880407168935 0 -4.4932546973130982e-06 0.99999997856941991 0.0002069806046058123 0
		 -17.230699456094506 155.03700385525036 -3.7822603913477 1;
	setAttr ".sd" 2;
	setAttr ".typ" 10;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightForeArm" -p "BoneFK_RightArm";
	rename -uid "55DE05B6-481C-C1F9-E3B8-8CBBB3DF7A04";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -24.660947188470907 0.0001902349720963592 -0.000283823210168066 ;
	setAttr ".r" -type "double3" 1.3668958650432886e-18 -1.4721603910933024e-19 1.5371738729583533e-13 ;
	setAttr ".jo" -type "double3" -0.01189035794834589 0.00026469852436778829 6.9291711667608746 ;
	setAttr ".bps" -type "matrix" 0.99912113577507033 9.8874408535774125e-06 -0.041916058375898062 0
		 -0.041916058368885019 -9.1553579167571618e-07 -0.99912113582386919 0 -9.9171267876402334e-06 0.99999999995070032 -5.0028861206416432e-07 0
		 -41.814711729839736 155.03689267236439 -5.7287052565477303 1;
	setAttr ".sd" 2;
	setAttr ".typ" 11;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHand" -p "BoneFK_RightForeArm";
	rename -uid "1F16E75C-48EC-66DA-0060-D0AB73B54CBD";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -25.506314869888072 2.3324117899292673e-06 0.00022680893349047437 ;
	setAttr ".bps" -type "matrix" 0.99912113577507033 9.8874408535774125e-06 -0.041916058375898062 0
		 -0.041916058368885019 -9.1553579167571618e-07 -0.99912113582386919 0 -9.9171267876402334e-06 0.99999999995070032 -5.0028861206416432e-07 0
		 -67.29861011445918 155.03686650011409 -4.659580356446817 1;
	setAttr ".sd" 2;
	setAttr ".typ" 12;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandThumb1" -p "BoneFK_RightHand";
	rename -uid "A582FEB5-4FC7-B2D9-D472-B78AB42466BA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -1.7026393600182246 -2.0665457992209557 -2.1429922100005001 ;
	setAttr ".jo" -type "double3" -11.612700769541405 -19.999531702604958 28.59763527151182 ;
	setAttr ".bps" -type "matrix" 0.80547319430682263 0.34202020876278227 -0.48397841899306471 0
		 -0.44548093564676355 -0.18916089983560244 -0.87507993346246371 0 -0.39084481476469357 0.92045658820568421 -5.5161878991457219e-07 0
		 -68.91311014364021 152.89386045747364 -2.5234799748863912 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandThumb2" -p "BoneFK_RightHandThumb1";
	rename -uid "8B6ECA27-43FD-4E5A-918C-BCBC3E987367";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -6.8159149446499816 -3.4891465590103365e-05 0.00018976901498035659 ;
	setAttr ".jo" -type "double3" -0.025049905721246084 -0.093843148324013262 -13.999852361052604 ;
	setAttr ".bps" -type "matrix" 0.88867683245996809 0.37912973339767564 -0.25790333984406844 0
		 -0.23721739962308361 -0.10120295459665032 -0.96617072368032941 0 -0.39240462887812605 0.91979269796770857 -5.5165015155613088e-07 0
		 -74.403205259015067 150.56286270926071 0.77530908521889508 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandThumb3" -p "BoneFK_RightHandThumb2";
	rename -uid "D2C9F5FE-430E-531E-9A1E-A2BC4832C881";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -3.2777180690767427 2.604770197622841e-05 -0.0003437338278331481 ;
	setAttr ".jo" -type "double3" -0.13471214905760573 0.61660951824183352 -15.262897368265454 ;
	setAttr ".bps" -type "matrix" 0.9239482624308385 0.38247739984804541 0.0055359693381279744 0
		 0.0059917192429357041 -4.40859602094789e-07 -0.99998204948904956 0 -0.38247053174270568 0.92396484706144788 -0.0022921045281208297 0
		 -77.315908573797742 149.31986385788954 1.6206200506415134 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandIndex1" -p "BoneFK_RightHand";
	rename -uid "242863AA-410B-92A8-40FA-0E8A9F23C618";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -9.1713045801683393 -2.8972977570161111 0.1320825631041771 ;
	setAttr ".jo" -type "double3" -9.4881192984861844e-06 -12.999425601030779 -2.4022882283405571 ;
	setAttr ".bps" -type "matrix" 0.97437008908576894 0.22495094908585606 -6.0267919916913977e-07 0
		 -4.6577866608832273e-07 -6.6164823669886084e-07 -0.99999999999967282 0 -0.22495094908618105 0.97437008908573097 -5.3991289831873109e-07 0
		 -76.34041222636084 155.16886245195798 -1.3804025202840906 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandIndex2" -p "BoneFK_RightHandIndex1";
	rename -uid "C3344B7D-42DC-6019-7037-F186AC156B10";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -5.6265783056980823 -4.6758064933261068e-06 -0.00031587701946023117 ;
	setAttr ".jo" -type "double3" 0 -0.0064910957921832831 0 ;
	setAttr ".bps" -type "matrix" 0.97431956825188148 0.22516966696494389 -6.0280038194155132e-07 0
		 -4.6577866608832273e-07 -6.6164823669886084e-07 -0.99999999999967282 0 -0.22516966696526888 0.97431956825184363 -5.397775971761036e-07 0
		 -81.822710698736657 153.90285023805987 -1.3803929920816722 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandIndex3" -p "BoneFK_RightHandIndex2";
	rename -uid "74A38E09-4BAA-34D2-ABEB-D8925BB4046F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -2.7968456834213882 2.6553775389626111e-06 0.00016025131216679256 ;
	setAttr ".jo" -type "double3" 4.1069973483108099e-05 0 0 ;
	setAttr ".bps" -type "matrix" 0.97431956825188148 0.22516966696494389 -6.0280038194155132e-07 0
		 -6.2718169315325164e-07 3.6750130026321287e-08 -0.99999999999980282 0 -0.22516966696487717 0.97431956825206756 1.7702866381073903e-07 0
		 -84.547768121360747 153.27324088419635 -1.3803932338809421 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandMiddle1" -p "BoneFK_RightHand";
	rename -uid "2CA856DE-4F08-A03A-9061-8DAD57622006";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -9.3084901015188422 -0.53006715647158487 0.93808580599645097 ;
	setAttr ".jo" -type "double3" -5.9364442841768043e-06 -12.999499108890531 -2.4023040177807657 ;
	setAttr ".bps" -type "matrix" 0.97436980048330502 0.22495219915798281 -3.3416445784117952e-07 0
		 -2.0414517245410063e-07 -6.01245808653419e-07 -0.99999999999979861 0 -0.22495219915813827 0.9743698004831769 -5.3991285311103368e-07 0
		 -76.5767103384607 155.97486077821819 -3.7398030153174018 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandMiddle2" -p "BoneFK_RightHandMiddle1";
	rename -uid "A124808B-4818-C7F1-AF2C-A88C1D89E504";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -5.6206053935683187 -6.1897338996530493e-06 -0.00065404457180306963 ;
	setAttr ".jo" -type "double3" 0 -0.0054219826346032013 0 ;
	setAttr ".bps" -type "matrix" 0.97432656388941974 0.22513939437451819 -3.3426818163860308e-07 0
		 -2.0414517245410063e-07 -6.01245808653419e-07 -0.99999999999979861 0 -0.22513939437467367 0.97432656388929162 -5.3984864229041822e-07 0
		 -82.053111301757056 154.70985564784684 -3.7397934866717502 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandMiddle3" -p "BoneFK_RightHandMiddle2";
	rename -uid "CBBE943E-495F-CA70-2A7C-1488EA385C17";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -3.3426876992611909 1.8487409221279449e-06 -7.1234177454471137e-05 ;
	setAttr ".jo" -type "double3" 2.5726794021846253e-05 0 0 ;
	setAttr ".bps" -type "matrix" 0.97432656388941974 0.22513939437451819 -3.3426818163860308e-07 0
		 -3.0523664680879646e-07 -1.6375636296968799e-07 -0.99999999999994016 0 -0.22513939437455929 0.97432656388946337 -9.0831380626858224e-08 0
		 -85.309964116181547 153.95721309633331 -3.7397936331033912 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandRing1" -p "BoneFK_RightHand";
	rename -uid "B2A27AAC-4758-8747-171D-FC841DF46C86";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -9.0605573957948877 1.7796198114016804 0.88907458284288055 ;
	setAttr ".jo" -type "double3" -3.6210960012966866e-06 -12.999544801971005 -2.4023143108873719 ;
	setAttr ".bps" -type "matrix" 0.97436962108483272 0.22495297621275007 -1.5912026621453004e-07 0
		 -3.3586942635708685e-08 -5.6186929277084431e-07 -0.99999999999984179 0 -0.22495297621280366 0.97436962108468395 -5.3991288717108039e-07 0
		 -76.425808045545125 155.92584854503897 -6.0578529007656012 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandRing2" -p "BoneFK_RightHandRing1";
	rename -uid "9689F7CC-4C0D-D1B2-FF88-87BFF2564818";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -5.5286723307492238 3.5203030774866306e-06 -0.00031003478545699181 ;
	setAttr ".jo" -type "double3" 0 -0.012932089638294781 0 ;
	setAttr ".bps" -type "matrix" 0.97426834539742713 0.225391195827464 -1.5936308681881658e-07 0
		 -3.3586942635708685e-08 -5.6186929277084431e-07 -0.99999999999984179 0 -0.22539119582751765 0.97426834539727836 -5.3984126501516452e-07 0
		 -81.812708567365576 154.68185486936704 -6.0578536202589355 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandRing3" -p "BoneFK_RightHandRing2";
	rename -uid "908A9559-471B-A010-D09B-1C814BB08EEC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -2.780355858935657 1.050949073544416e-06 0.0004751944254337559 ;
	setAttr ".jo" -type "double3" 1.57196399396491e-05 0 0 ;
	setAttr ".bps" -type "matrix" 0.97426834539742713 0.225391195827464 -1.5936308681881658e-07 0
		 -9.5425152606591665e-08 -2.9456954182239943e-07 -0.99999999999995226 0 -0.22539119582749995 0.97426834539739582 -2.6548179084031164e-07 0
		 -84.521625317834804 154.05563671038874 -6.0578537419483496 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandPinky1" -p "BoneFK_RightHand";
	rename -uid "E3A8224B-40DA-EAA9-4F1B-8C8C3DF282F3";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -8.4117780857186091 3.8485946012075463 0.049074457269739469 ;
	setAttr ".jo" -type "double3" -9.5187182719081624e-06 -12.999539534337847 -2.4022880926625656 ;
	setAttr ".bps" -type "matrix" 0.97436964176632901 0.22495288663137786 -6.0498728305827529e-07 0
		 -4.6802623617249545e-07 -6.6216855097316604e-07 -0.99999999999967149 0 -0.22495288663170435 0.97436964176629204 -5.399130809349263e-07 0
		 -75.86431395149684 155.08585174762635 -8.1522026999491715 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandPinky2" -p "BoneFK_RightHandPinky1";
	rename -uid "4E40FDFE-42C6-82C1-152E-A0ABABEC2DAC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -4.2065745668728454 -7.0245089691667317e-06 -0.0007327230990483713 ;
	setAttr ".jo" -type "double3" 0 -0.026233321540186476 0 ;
	setAttr ".bps" -type "matrix" 0.97416547667101283 0.22583539151774162 -6.0547609541896946e-07 0
		 -4.6802623617249545e-07 -6.6216855097316604e-07 -0.99999999999967149 0 -0.22583539151806814 0.97416547667097619 -5.3936485378922968e-07 0
		 -79.962907656896093 154.13885647804688 -8.1521923939003997 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandPinky3" -p "BoneFK_RightHandPinky2";
	rename -uid "D9F3C650-446E-B72F-545F-7FA77D2CF1B6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -2.1275018162915842 1.3196994824937747e-05 0.00060745512757875986 ;
	setAttr ".jo" -type "double3" 4.1211716694972089e-05 0 0 ;
	setAttr ".bps" -type "matrix" 0.97416547667101283 0.22583539151774162 -6.0547609541896946e-07 0
		 -6.3046514971948549e-07 3.852933602261688e-08 -0.99999999999980071 0 -0.22583539151767307 0.97416547667120046 1.7991529293698981e-07 0
		 -82.035580166848888 153.65896802638753 -8.1522029770432454 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightArm" -p "BoneFK_RightShoulder";
	rename -uid "1D9C37AE-4360-64F7-63A6-C4BEF364F745";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -11.632776252564256 -0.015646920521769747 0.14910298634958963 ;
	setAttr ".jo" -type "double3" -1.4555763353237805 -16.992121869059137 7.5482423428558123 ;
	setAttr ".bps" -type "matrix" 0.99688042858593739 -1.1857041610663366e-05 0.078926617574352376 0
		 0.078926618337086779 0.00020668955122356281 -0.996880407168935 0 -4.4932546973130982e-06 0.99999997856941991 0.0002069806046058123 0
		 -17.230699456094506 155.03700385525036 -3.7822603913477 1;
	setAttr ".sd" 2;
	setAttr ".typ" 10;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightForeArm" -p "BoneIK_RightArm";
	rename -uid "D896CDE9-495A-2720-10FF-31B35435313B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -24.660947188470907 0.0001902349720963592 -0.000283823210168066 ;
	setAttr ".r" -type "double3" 5.1258578226218782e-19 -5.5205996665993193e-20 5.7644001441060816e-14 ;
	setAttr ".jo" -type "double3" -0.011890357948345882 0.00026469852436778807 6.9291711667608711 ;
	setAttr ".bps" -type "matrix" 0.99912113577507033 9.8874408535774125e-06 -0.041916058375898062 0
		 -0.041916058368885019 -9.1553579167571618e-07 -0.99912113582386919 0 -9.9171267876402334e-06 0.99999999995070032 -5.0028861206416432e-07 0
		 -41.814711729839736 155.03689267236439 -5.7287052565477303 1;
	setAttr ".sd" 2;
	setAttr ".typ" 11;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHand" -p "BoneIK_RightForeArm";
	rename -uid "1B95F80F-4677-CE27-D4D1-859BCE21BBA1";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -25.506314869888072 2.3324117899292673e-06 0.00022680893349047437 ;
	setAttr ".bps" -type "matrix" 0.99912113577507033 9.8874408535774125e-06 -0.041916058375898062 0
		 -0.041916058368885019 -9.1553579167571618e-07 -0.99912113582386919 0 -9.9171267876402334e-06 0.99999999995070032 -5.0028861206416432e-07 0
		 -67.29861011445918 155.03686650011409 -4.659580356446817 1;
	setAttr ".sd" 2;
	setAttr ".typ" 12;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandThumb1" -p "BoneIK_RightHand";
	rename -uid "68869A4D-4879-A0C0-5362-229AB99C25CA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -1.7026393600182246 -2.0665457992209557 -2.1429922100005001 ;
	setAttr ".jo" -type "double3" -11.612700769541405 -19.999531702604958 28.59763527151183 ;
	setAttr ".bps" -type "matrix" 0.80547319430682263 0.34202020876278227 -0.48397841899306471 0
		 -0.44548093564676355 -0.18916089983560244 -0.87507993346246371 0 -0.39084481476469357 0.92045658820568421 -5.5161878991457219e-07 0
		 -68.91311014364021 152.89386045747364 -2.5234799748863912 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandThumb2" -p "BoneIK_RightHandThumb1";
	rename -uid "5E80C894-4C60-0F10-4D66-13A79CFD9C36";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -6.8159149446499816 -3.4891465590103365e-05 0.00018976901498035659 ;
	setAttr ".jo" -type "double3" -0.025049905721246078 -0.093843148324013276 -13.999852361052604 ;
	setAttr ".bps" -type "matrix" 0.88867683245996809 0.37912973339767564 -0.25790333984406844 0
		 -0.23721739962308361 -0.10120295459665032 -0.96617072368032941 0 -0.39240462887812605 0.91979269796770857 -5.5165015155613088e-07 0
		 -74.403205259015067 150.56286270926071 0.77530908521889508 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandThumb3" -p "BoneIK_RightHandThumb2";
	rename -uid "3A8663ED-449C-5E5C-900B-BAB11A2AD8A1";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -3.2777180690767427 2.604770197622841e-05 -0.0003437338278331481 ;
	setAttr ".jo" -type "double3" -0.13471214905760573 0.6166095182418333 -15.262897368265454 ;
	setAttr ".bps" -type "matrix" 0.9239482624308385 0.38247739984804541 0.0055359693381279744 0
		 0.0059917192429357041 -4.40859602094789e-07 -0.99998204948904956 0 -0.38247053174270568 0.92396484706144788 -0.0022921045281208297 0
		 -77.315908573797742 149.31986385788954 1.6206200506415134 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandIndex1" -p "BoneIK_RightHand";
	rename -uid "0FF3CCA3-473B-6889-B362-B29E577A4B51";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -9.1713045801683393 -2.8972977570161111 0.1320825631041771 ;
	setAttr ".jo" -type "double3" -9.4881192983841796e-06 -12.999425601030779 -2.4022882283405571 ;
	setAttr ".bps" -type "matrix" 0.97437008908576894 0.22495094908585606 -6.0267919916913977e-07 0
		 -4.6577866608832273e-07 -6.6164823669886084e-07 -0.99999999999967282 0 -0.22495094908618105 0.97437008908573097 -5.3991289831873109e-07 0
		 -76.34041222636084 155.16886245195798 -1.3804025202840906 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandIndex2" -p "BoneIK_RightHandIndex1";
	rename -uid "3ABF1E7C-42EE-CCB8-E533-44AE7369C9D2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -5.6265783056980823 -4.6758064933261068e-06 -0.00031587701946023117 ;
	setAttr ".jo" -type "double3" 0 -0.0064910957921832848 0 ;
	setAttr ".bps" -type "matrix" 0.97431956825188148 0.22516966696494389 -6.0280038194155132e-07 0
		 -4.6577866608832273e-07 -6.6164823669886084e-07 -0.99999999999967282 0 -0.22516966696526888 0.97431956825184363 -5.397775971761036e-07 0
		 -81.822710698736657 153.90285023805987 -1.3803929920816722 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandIndex3" -p "BoneIK_RightHandIndex2";
	rename -uid "53209B87-4F45-AA4D-9BFC-75B9D3885F85";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -2.7968456834213882 2.6553775389626111e-06 0.00016025131216679256 ;
	setAttr ".jo" -type "double3" 4.1069973483108112e-05 0 0 ;
	setAttr ".bps" -type "matrix" 0.97431956825188148 0.22516966696494389 -6.0280038194155132e-07 0
		 -6.2718169315325164e-07 3.6750130026321287e-08 -0.99999999999980282 0 -0.22516966696487717 0.97431956825206756 1.7702866381073903e-07 0
		 -84.547768121360747 153.27324088419635 -1.3803932338809421 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandMiddle1" -p "BoneIK_RightHand";
	rename -uid "A46843B0-4A3A-D5FB-C30F-BAA1B3756C72";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -9.3084901015188422 -0.53006715647158487 0.93808580599645097 ;
	setAttr ".jo" -type "double3" -5.9364442842788133e-06 -12.999499108890531 -2.4023040177807657 ;
	setAttr ".bps" -type "matrix" 0.97436980048330502 0.22495219915798281 -3.3416445784117952e-07 0
		 -2.0414517245410063e-07 -6.01245808653419e-07 -0.99999999999979861 0 -0.22495219915813827 0.9743698004831769 -5.3991285311103368e-07 0
		 -76.5767103384607 155.97486077821819 -3.7398030153174018 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandMiddle2" -p "BoneIK_RightHandMiddle1";
	rename -uid "CFC26E96-4C9E-B92B-3CD1-CA9EEE650FDC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -5.6206053935683187 -6.1897338996530493e-06 -0.00065404457180306963 ;
	setAttr ".jo" -type "double3" 0 -0.0054219826346032013 0 ;
	setAttr ".bps" -type "matrix" 0.97432656388941974 0.22513939437451819 -3.3426818163860308e-07 0
		 -2.0414517245410063e-07 -6.01245808653419e-07 -0.99999999999979861 0 -0.22513939437467367 0.97432656388929162 -5.3984864229041822e-07 0
		 -82.053111301757056 154.70985564784684 -3.7397934866717502 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandMiddle3" -p "BoneIK_RightHandMiddle2";
	rename -uid "AEE9DD77-452F-058D-4E14-8888E84F8DA4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -3.3426876992611909 1.8487409221279449e-06 -7.1234177454471137e-05 ;
	setAttr ".jo" -type "double3" 2.5726794021846253e-05 0 0 ;
	setAttr ".bps" -type "matrix" 0.97432656388941974 0.22513939437451819 -3.3426818163860308e-07 0
		 -3.0523664680879646e-07 -1.6375636296968799e-07 -0.99999999999994016 0 -0.22513939437455929 0.97432656388946337 -9.0831380626858224e-08 0
		 -85.309964116181547 153.95721309633331 -3.7397936331033912 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandRing1" -p "BoneIK_RightHand";
	rename -uid "9ADB9082-44F5-B61B-E950-49B42E66A6B4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -9.0605573957948877 1.7796198114016804 0.88907458284288055 ;
	setAttr ".jo" -type "double3" -3.6210960011946801e-06 -12.999544801971009 -2.4023143108873728 ;
	setAttr ".bps" -type "matrix" 0.97436962108483272 0.22495297621275007 -1.5912026621453004e-07 0
		 -3.3586942635708685e-08 -5.6186929277084431e-07 -0.99999999999984179 0 -0.22495297621280366 0.97436962108468395 -5.3991288717108039e-07 0
		 -76.425808045545125 155.92584854503897 -6.0578529007656012 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandRing2" -p "BoneIK_RightHandRing1";
	rename -uid "171FC85A-4357-7D0F-B40E-2DA4FE8E12DB";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -5.5286723307492238 3.5203030774866306e-06 -0.00031003478545699181 ;
	setAttr ".jo" -type "double3" 0 -0.012932089638294786 0 ;
	setAttr ".bps" -type "matrix" 0.97426834539742713 0.225391195827464 -1.5936308681881658e-07 0
		 -3.3586942635708685e-08 -5.6186929277084431e-07 -0.99999999999984179 0 -0.22539119582751765 0.97426834539727836 -5.3984126501516452e-07 0
		 -81.812708567365576 154.68185486936704 -6.0578536202589355 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandRing3" -p "BoneIK_RightHandRing2";
	rename -uid "BF7696BE-4CB1-598B-5DC5-5BAF6A890CCF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -2.780355858935657 1.050949073544416e-06 0.0004751944254337559 ;
	setAttr ".jo" -type "double3" 1.5719639939649106e-05 0 0 ;
	setAttr ".bps" -type "matrix" 0.97426834539742713 0.225391195827464 -1.5936308681881658e-07 0
		 -9.5425152606591665e-08 -2.9456954182239943e-07 -0.99999999999995226 0 -0.22539119582749995 0.97426834539739582 -2.6548179084031164e-07 0
		 -84.521625317834804 154.05563671038874 -6.0578537419483496 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandPinky1" -p "BoneIK_RightHand";
	rename -uid "D0AF5472-42FB-3A1E-F1D0-30A235DCB07D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -8.4117780857186091 3.8485946012075463 0.049074457269739469 ;
	setAttr ".jo" -type "double3" -9.5187182720101672e-06 -12.999539534337838 -2.4022880926625656 ;
	setAttr ".bps" -type "matrix" 0.97436964176632901 0.22495288663137786 -6.0498728305827529e-07 0
		 -4.6802623617249545e-07 -6.6216855097316604e-07 -0.99999999999967149 0 -0.22495288663170435 0.97436964176629204 -5.399130809349263e-07 0
		 -75.86431395149684 155.08585174762635 -8.1522026999491715 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandPinky2" -p "BoneIK_RightHandPinky1";
	rename -uid "9406B323-4DBA-858F-13B1-D8A105235C63";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -4.2065745668728454 -7.0245089691667317e-06 -0.0007327230990483713 ;
	setAttr ".jo" -type "double3" 0 -0.026233321540186476 0 ;
	setAttr ".bps" -type "matrix" 0.97416547667101283 0.22583539151774162 -6.0547609541896946e-07 0
		 -4.6802623617249545e-07 -6.6216855097316604e-07 -0.99999999999967149 0 -0.22583539151806814 0.97416547667097619 -5.3936485378922968e-07 0
		 -79.962907656896093 154.13885647804688 -8.1521923939003997 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandPinky3" -p "BoneIK_RightHandPinky2";
	rename -uid "317E5384-4710-6C2B-42C2-D698182C676E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -2.1275018162915842 1.3196994824937747e-05 0.00060745512757875986 ;
	setAttr ".jo" -type "double3" 4.1211716694972096e-05 0 0 ;
	setAttr ".bps" -type "matrix" 0.97416547667101283 0.22583539151774162 -6.0547609541896946e-07 0
		 -6.3046514971948549e-07 3.852933602261688e-08 -0.99999999999980071 0 -0.22583539151767307 0.97416547667120046 1.7991529293698981e-07 0
		 -82.035580166848888 153.65896802638753 -8.1522029770432454 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftUpLeg" -p "BoneFK_Hips";
	rename -uid "C8E97CC6-458F-E74E-B3F1-C598C9205C82";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -3.1739959716796875 1.1746324687255517e-16 6.8769998550415048 ;
	setAttr ".r" -type "double3" -0.00032885706612236155 1.5577254353704948e-05 -8.1436136950799599e-11 ;
	setAttr ".jo" -type "double3" 180 0 177.29438616493832 ;
	setAttr ".bps" -type "matrix" -1.224646799147353e-16 -1 1.4282998336737732e-31 0
		 -4.4408920985006262e-16 0 1 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.8769998999999986 112.148004 3.0540014517299598e-15 1;
	setAttr ".sd" 1;
	setAttr ".typ" 2;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftLeg" -p "BoneFK_LeftUpLeg";
	rename -uid "6A9EF425-4F62-F6B0-8C16-35A5678C852C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 53.269317626953125 -1.4089386225712985e-05 2.0980834933403969e-05 ;
	setAttr ".r" -type "double3" -1.1205340638591436e-20 3.4652520845049895e-19 -5.8075105433028048e-14 ;
	setAttr ".jo" -type "double3" 0 0 -5.6348913703049419 ;
	setAttr ".bps" -type "matrix" -1.224646799147353e-16 -1 1.4282998336737732e-31 0
		 -4.4408920985006262e-16 0 1 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.8769846412109921 58.878686000000002 -6.5421176969460048e-06 1;
	setAttr ".sd" 1;
	setAttr ".typ" 3;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftFoot" -p "BoneFK_LeftLeg";
	rename -uid "692FDB85-4CD0-451D-F2D7-DEA300872117";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 49.426418304443345 -2.167992714396938e-05 -9.5367431907078526e-06 ;
	setAttr ".r" -type "double3" -0.00029068911874969265 -0.00015456214610903401 3.9556367705428703e-10 ;
	setAttr ".jo" -type "double3" 0 0 62 ;
	setAttr ".bps" -type "matrix" -4.4960118351738033e-16 -0.46947156278589086 0.88294759285892688 0
		 -1.0035736102370583e-16 0.88294759285892688 0.46947156278589086 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.8769998999999862 9.4522680000000037 -2.1219247696945997e-05 1;
	setAttr ".sd" 1;
	setAttr ".typ" 4;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftToeBase" -p "BoneFK_LeftFoot";
	rename -uid "56A14B0C-49FD-A3DE-D2FD-929314417835";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 15.869999549792123 6.8407788766933209e-07 2.2888183581315502e-05 ;
	setAttr ".jo" -type "double3" 0 0 28.048000000000002 ;
	setAttr ".bps" -type "matrix" -4.4398645825228063e-16 0.00083775794296192529 0.99999964908075289 0
		 1.2283667620245762e-16 0.99999964908075289 -0.00083775794296192529 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.876975104467979 2.0017551963721187 14.012357556783801 1;
	setAttr ".sd" 1;
	setAttr ".typ" 25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightUpLeg" -p "BoneFK_Hips";
	rename -uid "3775A88B-4BAA-5C65-6A42-0E97AD387D84";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -3.1739959716796875 -1.1488206219656399e-15 -6.8769998550415021 ;
	setAttr ".jo" -type "double3" -180 0 -2.7056138350617354 ;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-16 1 0 0 3.2162452993532727e-16 5.4385242937875642e-32 -1 0
		 -1 4.4408920985006262e-16 -3.2162452993532727e-16 0 -6.8769999000000022 112.148004 -3.0540014517299598e-15 1;
	setAttr ".sd" 2;
	setAttr ".typ" 2;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightLeg" -p "BoneFK_RightUpLeg";
	rename -uid "FC272166-4174-D95D-A024-41BFBAFC6F93";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -53.269348144531257 1.136522040035004e-05 9.5367431294235416e-06 ;
	setAttr ".jo" -type "double3" 1.3594368529480199e-05 1.3412981314043543e-06 -5.6348913703048007 ;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-16 1 0 0 -2.3841857877993067e-07 1.0587911846116953e-22 -0.99999999999997158 0
		 -0.99999999999997158 4.4408920985004999e-16 2.3841857877993067e-07 0 -6.8770065757202259 58.878655999999999 -9.5101896030540031e-06 1;
	setAttr ".sd" 2;
	setAttr ".typ" 3;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightFoot" -p "BoneFK_RightLeg";
	rename -uid "FF8EC2C1-41BE-BA57-3C5B-CBA8796DB4D5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -49.426387786865277 1.9152282655032771e-05 -1.907353222918573e-06 ;
	setAttr ".jo" -type "double3" 2.5638066312266341e-05 1.2061398118891237e-05 61.999999999999311 ;
	setAttr ".bps" -type "matrix" -4.4959791509231056e-16 0.46947156278589108 -0.88294759285892677 0
		 -5.5939941416277452e-07 -0.88294759285878865 -0.46947156278581759 0 -0.99999999999984357 4.9392036597064218e-07 2.6262211758548109e-07 0
		 -6.8770113440918035 9.4522679999999966 -2.6941264466186132e-05 1;
	setAttr ".sd" 2;
	setAttr ".typ" 4;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightToeBase" -p "BoneFK_RightFoot";
	rename -uid "4E5B8575-495D-36CE-7D24-DBB949C345E6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -15.869996713866618 -2.9565675827569748e-06 -3.1471250781400784e-05 ;
	setAttr ".jo" -type "double3" -2.8283512592212742e-05 1.5070841813460885e-05 28.047999999996271 ;
	setAttr ".bps" -type "matrix" -4.4398555419314237e-16 -0.0008377579429616704 -0.99999964908075289 0
		 -5.9760116123179341e-11 -0.99999964908075289 0.00083775794296173643 0 -1 5.9760095524185096e-11 -4.9620526562268563e-14 0
		 -6.8769798728390796 2.0017584163268367 14.012350149137177 1;
	setAttr ".sd" 2;
	setAttr ".typ" 25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftUpLeg" -p "BoneFK_Hips";
	rename -uid "C6EA341B-4338-78BB-66A7-7599038AAB86";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -3.1739959716796875 1.1746324687255556e-16 6.8769998550415039 ;
	setAttr ".r" -type "double3" -0.00032885706612236155 1.5577254353704948e-05 -8.1436136950799599e-11 ;
	setAttr ".jo" -type "double3" 180 -2.4717875269080888e-30 177.29438616493832 ;
	setAttr ".bps" -type "matrix" -1.224646799147353e-16 -1 1.4282998336737732e-31 0
		 -4.4408920985006262e-16 0 1 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.8769998999999986 112.148004 3.0540014517299598e-15 1;
	setAttr ".sd" 1;
	setAttr ".typ" 2;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftLeg" -p "BoneIK_LeftUpLeg";
	rename -uid "FD6E9EDC-41C3-3F34-9F27-71B063D951D8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 53.269317626953125 -1.4089386225712985e-05 2.0980834933403969e-05 ;
	setAttr ".r" -type "double3" -1.1205340638591432e-20 3.4652520845049948e-19 -5.8075105433028036e-14 ;
	setAttr ".jo" -type "double3" 0 0 -5.6348913703049393 ;
	setAttr ".bps" -type "matrix" -1.224646799147353e-16 -1 1.4282998336737732e-31 0
		 -4.4408920985006262e-16 0 1 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.8769846412109921 58.878686000000002 -6.5421176969460048e-06 1;
	setAttr ".sd" 1;
	setAttr ".typ" 3;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftFoot" -p "BoneIK_LeftLeg";
	rename -uid "6FE69D64-424C-EC42-3F08-B0A2B598FBF8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 49.426418304443345 -2.167992714396938e-05 -9.5367431907078526e-06 ;
	setAttr ".r" -type "double3" -0.00029068911874969265 -0.00015456214610903401 3.9556367705428703e-10 ;
	setAttr ".jo" -type "double3" 0 0 62 ;
	setAttr ".bps" -type "matrix" -4.4960118351738033e-16 -0.46947156278589086 0.88294759285892688 0
		 -1.0035736102370583e-16 0.88294759285892688 0.46947156278589086 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.8769998999999862 9.4522680000000037 -2.1219247696945997e-05 1;
	setAttr ".sd" 1;
	setAttr ".typ" 4;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftToeBase" -p "BoneIK_LeftFoot";
	rename -uid "63DEBF9C-4922-B76D-2097-F29ECDE2211F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 15.869999549792123 6.8407788766933209e-07 2.2888183581315502e-05 ;
	setAttr ".jo" -type "double3" 0 0 28.048000000000002 ;
	setAttr ".bps" -type "matrix" -4.4398645825228063e-16 0.00083775794296192529 0.99999964908075289 0
		 1.2283667620245762e-16 0.99999964908075289 -0.00083775794296192529 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.876975104467979 2.0017551963721187 14.012357556783801 1;
	setAttr ".sd" 1;
	setAttr ".typ" 25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightUpLeg" -p "BoneFK_Hips";
	rename -uid "974F8A9D-4F81-0CE1-1985-47826AF95FA2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -3.1739959716796875 -1.1488206219656395e-15 -6.876999855041503 ;
	setAttr ".jo" -type "double3" -180 2.1186750230640761e-30 -2.7056138350617345 ;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-16 1 0 0 3.2162452993532727e-16 5.4385242937875642e-32 -1 0
		 -1 4.4408920985006262e-16 -3.2162452993532727e-16 0 -6.8769999000000022 112.148004 -3.0540014517299598e-15 1;
	setAttr ".sd" 2;
	setAttr ".typ" 2;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightLeg" -p "BoneIK_RightUpLeg";
	rename -uid "B9ECE3DB-4A85-3421-3EA2-3C8EEAA75C52";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -53.269348144531257 1.136522040035004e-05 9.5367431294235416e-06 ;
	setAttr ".r" -type "double3" -3.1087889958481187e-20 1.7288895706734923e-18 8.0561649382106498e-13 ;
	setAttr ".jo" -type "double3" 1.3594368529480203e-05 1.3412981314043552e-06 -5.6348913703048042 ;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-16 1 0 0 -2.3841857877993067e-07 1.0587911846116953e-22 -0.99999999999997158 0
		 -0.99999999999997158 4.4408920985004999e-16 2.3841857877993067e-07 0 -6.8770065757202259 58.878655999999999 -9.5101896030540031e-06 1;
	setAttr ".sd" 2;
	setAttr ".typ" 3;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightFoot" -p "BoneIK_RightLeg";
	rename -uid "0272E9AC-4FC6-AE12-C562-32B0BC862CDE";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -49.426387786865277 1.9152282655032771e-05 -1.907353222918573e-06 ;
	setAttr ".jo" -type "double3" 2.5638066312266341e-05 1.2061398118891237e-05 61.999999999999311 ;
	setAttr ".bps" -type "matrix" -4.4959791509231056e-16 0.46947156278589108 -0.88294759285892677 0
		 -5.5939941416277452e-07 -0.88294759285878865 -0.46947156278581759 0 -0.99999999999984357 4.9392036597064218e-07 2.6262211758548109e-07 0
		 -6.8770113440918035 9.4522679999999966 -2.6941264466186132e-05 1;
	setAttr ".sd" 2;
	setAttr ".typ" 4;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightToeBase" -p "BoneIK_RightFoot";
	rename -uid "77486EF4-4240-AD6F-F6C5-7BA200BC4F89";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -15.869996713866618 -2.9565675827569748e-06 -3.1471250781400784e-05 ;
	setAttr ".jo" -type "double3" -2.8283512592212766e-05 1.5070841813460897e-05 28.047999999996271 ;
	setAttr ".bps" -type "matrix" -4.4398555419314237e-16 -0.0008377579429616704 -0.99999964908075289 0
		 -5.9760116123179341e-11 -0.99999964908075289 0.00083775794296173643 0 -1 5.9760095524185096e-11 -4.9620526562268563e-14 0
		 -6.8769798728390796 2.0017584163268367 14.012350149137177 1;
	setAttr ".sd" 2;
	setAttr ".typ" 25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_Hips";
	rename -uid "A47BE5B5-4329-C165-7D76-CEB4C04B8AB4";
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
createNode joint -n "BoneIK_Spine" -p "BoneIK_Hips";
	rename -uid "3A760D69-486C-9C52-1C44-FD964CC93A2B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.7407608032226563 9.280770596475916e-16 -9.9733644900477979e-18 ;
	setAttr ".jo" -type "double3" 0 0 -1.9999999999999472 ;
	setAttr ".bps" -type "matrix" 4.59317172617089e-16 0.99939082701909576 -0.034899496702500046 0
		 -4.2832019278753274e-16 0.034899496702500046 0.99939082701909576 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 1.2171422980600254e-15 118.06276080000001 0 1;
	setAttr ".typ" 6;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_Spine1" -p "BoneIK_Spine";
	rename -uid "67D9A5EC-455A-CB2B-AAEE-67B5B038F8F9";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 9.7650275533157469 4.905416099987292e-07 -2.5634841165985908e-15 ;
	setAttr ".jo" -type "double3" 0 0 -2.9999999999999605 ;
	setAttr ".bps" -type "matrix" 4.811042412630871e-16 0.99619469809174577 -0.087155742747656501 0
		 -4.0369439140168292e-16 0.087155742747656501 0.99619469809174577 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 5.7023869557109906e-15 127.82183982614796 -0.3407940582832466 1;
	setAttr ".typ" 6;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_Spine2" -p "BoneIK_Spine1";
	rename -uid "A69A9605-4AE6-73BB-2061-3AB119525411";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 13.877898184271302 -1.0424039054157674e-06 -4.9770045284567883e-10 ;
	setAttr ".jo" -type "double3" 0 0 5 ;
	setAttr ".pa" -type "double3" 36.762975808112202 0 0 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 1.2379102964140113e-14 141.64692814355453 -1.5503336046867018 1;
	setAttr ".typ" 6;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_Neck" -p "BoneIK_Spine2";
	rename -uid "2B176A35-4377-9E9A-7AF4-FB87DC8BC6DA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 17.167678833007756 -3.5083047578154947e-14 -2.3072051501257129e-09 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.0003083966209613e-14 158.81460714355453 -1.5503336046866729 1;
	setAttr ".typ" 7;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_Head" -p "BoneIK_Neck";
	rename -uid "9A1A859A-4431-009E-3FED-62BD74EA724A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 8.4374847412109659 -1.6431300764452317e-14 -3.5959754928952345e-09 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.3750079879754599e-14 167.25209184355452 -1.5503336046866587 1;
	setAttr ".typ" 8;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_HeadUp" -p "BoneIK_Head";
	rename -uid "D0AB40DE-4FD6-4A3B-5F4A-7A9DABD0F58A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 23.80500030517581 -4.6629367034256575e-15 -1.236431894867201e-14 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.4472470234754516e-14 191.05709214873031 -1.5503336046866183 1;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_Eye_L" -p "BoneIK_Head";
	rename -uid "C96CBE59-41D6-617A-E441-6498AE51A0CD";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 9.9804477067827122 4.5866754493465898 2.5366422083400293 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.5366422083400559 177.23253955033724 3.0363418446599533 1;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_Eye_R" -p "BoneIK_Head";
	rename -uid "FDB0E805-4123-AD75-7954-20A4819B398C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 9.9804477067827406 4.586999999999998 -2.5370000000000008 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 -2.5369999999999742 177.23253955033724 3.0366663953133579 1;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftShoulder" -p "BoneIK_Spine2";
	rename -uid "F978DC86-4102-E3B0-DE76-4E83C959727A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 9.8394165039061932 0.052899718284581621 6.3903198247164328 ;
	setAttr ".jo" -type "double3" 35.117237161758709 -69.279601633018473 -34.096118496564024 ;
	setAttr ".bps" -type "matrix" 0.93531812790679647 0.29298768950820886 -0.19833863316451253 0
		 0.20352845173297279 0.012991220144158131 0.9789828382225837 0 0.28940658068555486 -0.95602795042603639 -0.047480407117967652 0
		 6.3903198000000172 151.48634464355453 -1.4974338866866823 1;
	setAttr ".sd" 1;
	setAttr ".typ" 9;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightShoulder" -p "BoneIK_Spine2";
	rename -uid "9FCE3795-4196-CA7C-0C13-E793BA158816";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 9.8390655517577841 0.052903652191143902 -6.3903198237210672 ;
	setAttr ".jo" -type "double3" 35.117237161758609 -69.279601633018572 145.90388150343594 ;
	setAttr ".bps" -type "matrix" 0.93531812790679658 -0.29298768950820808 0.19833863316451264 0
		 0.20352845173297221 -0.012991220144160213 -0.9789828382225837 0 0.28940658068555464 0.9560279504260365 0.047480407117965404 0
		 -6.3903197999999835 151.48599374355453 -1.4974299526866881 1;
	setAttr ".sd" 2;
	setAttr ".typ" 9;
	setAttr ".fbxID" 5;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "65CC4D65-45EF-AB61-C10B-18866F6E51E9";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "44D14D93-4684-75A3-F5C5-9A8739DBF764";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "79BDB954-4684-81C3-4307-9FBB6048A4FE";
createNode displayLayerManager -n "layerManager";
	rename -uid "08147AB9-4CF9-0486-B563-0892BE5F38F4";
createNode displayLayer -n "defaultLayer";
	rename -uid "E48109C9-4674-8222-0E62-899DDA94BC0D";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "4F342F67-479E-C6EF-DD86-248ADD86E21C";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "09B0FE90-421E-D630-942E-75A9E134B679";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "587977FC-49C3-D325-CF67-D7B60508D96C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 778\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 778\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 778\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1563\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n"
		+ "            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n"
		+ "            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n"
		+ "            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -editorMode \"default\" \n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1563\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1563\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "EAE5B632-436F-EB0F-21D3-D38A54D3D4CC";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
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
connectAttr "BoneFK_Hips.s" "BoneFK_Spine.is";
connectAttr "BoneFK_Spine.s" "BoneFK_Spine1.is";
connectAttr "BoneFK_Spine1.s" "BoneFK_Spine2.is";
connectAttr "BoneFK_Spine2.s" "BoneFK_Neck.is";
connectAttr "BoneFK_Neck.s" "BoneFK_Head.is";
connectAttr "BoneFK_Head.s" "BoneFK_HeadUp.is";
connectAttr "BoneFK_Head.s" "BoneFK_Eye_L.is";
connectAttr "BoneFK_Head.s" "BoneFK_Eye_R.is";
connectAttr "BoneFK_Spine2.s" "BoneFK_LeftShoulder.is";
connectAttr "BoneFK_LeftShoulder.s" "BoneFK_LeftArm.is";
connectAttr "BoneFK_LeftArm.s" "BoneFK_LeftForeArm.is";
connectAttr "BoneFK_LeftForeArm.s" "BoneFK_LeftHand.is";
connectAttr "BoneFK_LeftHand.s" "BoneFK_LeftHandThumb1.is";
connectAttr "BoneFK_LeftHandThumb1.s" "BoneFK_LeftHandThumb2.is";
connectAttr "BoneFK_LeftHandThumb2.s" "BoneFK_LeftHandThumb3.is";
connectAttr "BoneFK_LeftHand.s" "BoneFK_LeftHandIndex1.is";
connectAttr "BoneFK_LeftHandIndex1.s" "BoneFK_LeftHandIndex2.is";
connectAttr "BoneFK_LeftHandIndex2.s" "BoneFK_LeftHandIndex3.is";
connectAttr "BoneFK_LeftHand.s" "BoneFK_LeftHandMiddle1.is";
connectAttr "BoneFK_LeftHandMiddle1.s" "BoneFK_LeftHandMiddle2.is";
connectAttr "BoneFK_LeftHandMiddle2.s" "BoneFK_LeftHandMiddle3.is";
connectAttr "BoneFK_LeftHand.s" "BoneFK_LeftHandRing1.is";
connectAttr "BoneFK_LeftHandRing1.s" "BoneFK_LeftHandRing2.is";
connectAttr "BoneFK_LeftHandRing2.s" "BoneFK_LeftHandRing3.is";
connectAttr "BoneFK_LeftHand.s" "BoneFK_LeftHandPinky1.is";
connectAttr "BoneFK_LeftHandPinky1.s" "BoneFK_LeftHandPinky2.is";
connectAttr "BoneFK_LeftHandPinky2.s" "BoneFK_LeftHandPinky3.is";
connectAttr "BoneFK_LeftShoulder.s" "BoneIK_LeftArm.is";
connectAttr "BoneIK_LeftArm.s" "BoneIK_LeftForeArm.is";
connectAttr "BoneIK_LeftForeArm.s" "BoneIK_LeftHand.is";
connectAttr "BoneIK_LeftHand.s" "BoneIK_LeftHandThumb1.is";
connectAttr "BoneIK_LeftHandThumb1.s" "BoneIK_LeftHandThumb2.is";
connectAttr "BoneIK_LeftHandThumb2.s" "BoneIK_LeftHandThumb3.is";
connectAttr "BoneIK_LeftHand.s" "BoneIK_LeftHandIndex1.is";
connectAttr "BoneIK_LeftHandIndex1.s" "BoneIK_LeftHandIndex2.is";
connectAttr "BoneIK_LeftHandIndex2.s" "BoneIK_LeftHandIndex3.is";
connectAttr "BoneIK_LeftHand.s" "BoneIK_LeftHandMiddle1.is";
connectAttr "BoneIK_LeftHandMiddle1.s" "BoneIK_LeftHandMiddle2.is";
connectAttr "BoneIK_LeftHandMiddle2.s" "BoneIK_LeftHandMiddle3.is";
connectAttr "BoneIK_LeftHand.s" "BoneIK_LeftHandRing1.is";
connectAttr "BoneIK_LeftHandRing1.s" "BoneIK_LeftHandRing2.is";
connectAttr "BoneIK_LeftHandRing2.s" "BoneIK_LeftHandRing3.is";
connectAttr "BoneIK_LeftHand.s" "BoneIK_LeftHandPinky1.is";
connectAttr "BoneIK_LeftHandPinky1.s" "BoneIK_LeftHandPinky2.is";
connectAttr "BoneIK_LeftHandPinky2.s" "BoneIK_LeftHandPinky3.is";
connectAttr "BoneFK_Spine2.s" "BoneFK_RightShoulder.is";
connectAttr "BoneFK_RightShoulder.s" "BoneFK_RightArm.is";
connectAttr "BoneFK_RightArm.s" "BoneFK_RightForeArm.is";
connectAttr "BoneFK_RightForeArm.s" "BoneFK_RightHand.is";
connectAttr "BoneFK_RightHand.s" "BoneFK_RightHandThumb1.is";
connectAttr "BoneFK_RightHandThumb1.s" "BoneFK_RightHandThumb2.is";
connectAttr "BoneFK_RightHandThumb2.s" "BoneFK_RightHandThumb3.is";
connectAttr "BoneFK_RightHand.s" "BoneFK_RightHandIndex1.is";
connectAttr "BoneFK_RightHandIndex1.s" "BoneFK_RightHandIndex2.is";
connectAttr "BoneFK_RightHandIndex2.s" "BoneFK_RightHandIndex3.is";
connectAttr "BoneFK_RightHand.s" "BoneFK_RightHandMiddle1.is";
connectAttr "BoneFK_RightHandMiddle1.s" "BoneFK_RightHandMiddle2.is";
connectAttr "BoneFK_RightHandMiddle2.s" "BoneFK_RightHandMiddle3.is";
connectAttr "BoneFK_RightHand.s" "BoneFK_RightHandRing1.is";
connectAttr "BoneFK_RightHandRing1.s" "BoneFK_RightHandRing2.is";
connectAttr "BoneFK_RightHandRing2.s" "BoneFK_RightHandRing3.is";
connectAttr "BoneFK_RightHand.s" "BoneFK_RightHandPinky1.is";
connectAttr "BoneFK_RightHandPinky1.s" "BoneFK_RightHandPinky2.is";
connectAttr "BoneFK_RightHandPinky2.s" "BoneFK_RightHandPinky3.is";
connectAttr "BoneFK_RightShoulder.s" "BoneIK_RightArm.is";
connectAttr "BoneIK_RightArm.s" "BoneIK_RightForeArm.is";
connectAttr "BoneIK_RightForeArm.s" "BoneIK_RightHand.is";
connectAttr "BoneIK_RightHand.s" "BoneIK_RightHandThumb1.is";
connectAttr "BoneIK_RightHandThumb1.s" "BoneIK_RightHandThumb2.is";
connectAttr "BoneIK_RightHandThumb2.s" "BoneIK_RightHandThumb3.is";
connectAttr "BoneIK_RightHand.s" "BoneIK_RightHandIndex1.is";
connectAttr "BoneIK_RightHandIndex1.s" "BoneIK_RightHandIndex2.is";
connectAttr "BoneIK_RightHandIndex2.s" "BoneIK_RightHandIndex3.is";
connectAttr "BoneIK_RightHand.s" "BoneIK_RightHandMiddle1.is";
connectAttr "BoneIK_RightHandMiddle1.s" "BoneIK_RightHandMiddle2.is";
connectAttr "BoneIK_RightHandMiddle2.s" "BoneIK_RightHandMiddle3.is";
connectAttr "BoneIK_RightHand.s" "BoneIK_RightHandRing1.is";
connectAttr "BoneIK_RightHandRing1.s" "BoneIK_RightHandRing2.is";
connectAttr "BoneIK_RightHandRing2.s" "BoneIK_RightHandRing3.is";
connectAttr "BoneIK_RightHand.s" "BoneIK_RightHandPinky1.is";
connectAttr "BoneIK_RightHandPinky1.s" "BoneIK_RightHandPinky2.is";
connectAttr "BoneIK_RightHandPinky2.s" "BoneIK_RightHandPinky3.is";
connectAttr "BoneFK_Hips.s" "BoneFK_LeftUpLeg.is";
connectAttr "BoneFK_LeftUpLeg.s" "BoneFK_LeftLeg.is";
connectAttr "BoneFK_LeftLeg.s" "BoneFK_LeftFoot.is";
connectAttr "BoneFK_LeftFoot.s" "BoneFK_LeftToeBase.is";
connectAttr "BoneFK_Hips.s" "BoneFK_RightUpLeg.is";
connectAttr "BoneFK_RightUpLeg.s" "BoneFK_RightLeg.is";
connectAttr "BoneFK_RightLeg.s" "BoneFK_RightFoot.is";
connectAttr "BoneFK_RightFoot.s" "BoneFK_RightToeBase.is";
connectAttr "BoneFK_Hips.s" "BoneIK_LeftUpLeg.is";
connectAttr "BoneIK_LeftUpLeg.s" "BoneIK_LeftLeg.is";
connectAttr "BoneIK_LeftLeg.s" "BoneIK_LeftFoot.is";
connectAttr "BoneIK_LeftFoot.s" "BoneIK_LeftToeBase.is";
connectAttr "BoneFK_Hips.s" "BoneIK_RightUpLeg.is";
connectAttr "BoneIK_RightUpLeg.s" "BoneIK_RightLeg.is";
connectAttr "BoneIK_RightLeg.s" "BoneIK_RightFoot.is";
connectAttr "BoneIK_RightFoot.s" "BoneIK_RightToeBase.is";
connectAttr "BoneIK_Hips.s" "BoneIK_Spine.is";
connectAttr "BoneIK_Spine.s" "BoneIK_Spine1.is";
connectAttr "BoneIK_Spine1.s" "BoneIK_Spine2.is";
connectAttr "BoneIK_Spine2.s" "BoneIK_Neck.is";
connectAttr "BoneIK_Neck.s" "BoneIK_Head.is";
connectAttr "BoneIK_Head.s" "BoneIK_HeadUp.is";
connectAttr "BoneIK_Head.s" "BoneIK_Eye_L.is";
connectAttr "BoneIK_Head.s" "BoneIK_Eye_R.is";
connectAttr "BoneIK_Spine2.s" "BoneIK_LeftShoulder.is";
connectAttr "BoneIK_Spine2.s" "BoneIK_RightShoulder.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Joint_test3_ikfkcombined.ma
