//Maya ASCII 2018ff09 scene
//Name: Joint_test12a.ma
//Last modified: Wed, Jan 23, 2019 07:52:58 PM
//Codeset: 932
requires maya "2018ff09";
requires "stereoCamera" "10.0";
requires "clgDangleCurve" "2.0.2";
requires "AtgMaterials" "ATG SDK: 1.32.0";
requires "Boole" "20110503";
requires "TcToonShader3" "0.00";
requires "TcSceneManager" "1.00";
requires "COLLADA" "3.04C PhyreEngine(TM) 3.15.0.0";
requires "vstUtils" "1.0";
requires "DF_locator" "1.11 / Expire: 2011.8.31";
requires "PVRTexTool_v2014" "1.0.1";
requires "clgSymbolMaker" "1.5";
requires "mayall_maya60" "0.9.1(Beta)";
requires "sxmaterial" "8.5";
requires "transIT3" "1.0";
requires "vsMaster" "1.0";
requires "xfrog" "1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "cutIdentifier" "201807191615-2c29512b8a";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "version" "2018";
createNode transform -s -n "persp";
	rename -uid "281FF302-47B9-00F7-6FE8-2DAB654E4F12";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -355.01309004378533 160.12839000514435 168.28364304091019 ;
	setAttr ".r" -type "double3" -8.1383527296769032 -71.399999999998755 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "17CA963E-4808-2D28-86BD-59A9AB8844BD";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 444.42844454565278;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 6.8769650145232823 4.8830418261117243 7.3502228833450269 ;
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
	setAttr ".t" -type "double3" -7.0476868156526496e-16 115.32199859619139 1.4095376807678709e-15 ;
	setAttr ".jo" -type "double3" 179.99999999999997 -3.3723691470118026e-14 89.999999999999972 ;
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
	setAttr ".t" -type "double3" 2.740760803222642 -9.9733644900602224e-18 -1.6131828994519404e-15 ;
	setAttr ".jo" -type "double3" 0 -1.9999971217731045 0 ;
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
	setAttr ".t" -type "double3" 9.7650275533156883 -2.5634840076764608e-15 1.13785880860622e-14 ;
	setAttr ".r" -type "double3" 0 0 -1.9878466759146972e-15 ;
	setAttr ".jo" -type "double3" 0 -3.000007181857054 0 ;
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
	setAttr ".t" -type "double3" 13.877898184271467 -4.9770050099442609e-10 2.5419713280446932e-14 ;
	setAttr ".r" -type "double3" 0 0 -7.9513867036587919e-16 ;
	setAttr ".jo" -type "double3" 0 5.0000043036301296 0 ;
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
	setAttr ".t" -type "double3" 17.167678833007756 -2.3072050310010113e-09 -4.9704393099437444e-15 ;
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
	setAttr ".t" -type "double3" 8.4374847412109659 -3.5959754928952341e-09 1.6653345368578882e-14 ;
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
	setAttr ".t" -type "double3" 23.805000305175895 -1.2364318946190468e-14 4.6629367034256551e-15 ;
	setAttr ".jo" -type "double3" -89.999999999999986 0 0 ;
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
	setAttr ".t" -type "double3" 9.9804477067827975 2.5366422083400302 -4.5866754493465862 ;
	setAttr ".jo" -type "double3" -89.999999999999986 0 0 ;
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
	setAttr ".t" -type "double3" 9.9804477067828259 -2.537 -4.5869999999999989 ;
	setAttr ".jo" -type "double3" -89.999999999999986 0 0 ;
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
	setAttr ".t" -type "double3" 9.8394165039061647 6.3903198247164203 -0.052899718284603728 ;
	setAttr ".r" -type "double3" 3.1805546814635168e-15 4.9696166897867449e-16 7.9513867036587919e-16 ;
	setAttr ".jo" -type "double3" -30.949309163176956 -11.326513996304969 71.865325676152253 ;
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
	setAttr ".t" -type "double3" 11.633571971610392 -3.5527136788005009e-15 2.7755575615628914e-17 ;
	setAttr ".r" -type "double3" -1.3914926731402888e-15 7.1438239915684431e-17 -3.0314661807699147e-15 ;
	setAttr ".jo" -type "double3" -57.143666160016494 -3.8053775373875465 18.825473049477957 ;
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
	setAttr ".t" -type "double3" 24.660940530305929 3.3578899210966747e-14 1.6204438236123303e-14 ;
	setAttr ".r" -type "double3" -6.2241537154799809e-18 -3.882513038895893e-19 2.3854159992491479e-15 ;
	setAttr ".jo" -type "double3" 179.99984562021874 -6.4440316786719567e-06 6.9295879227833215 ;
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
	setAttr ".t" -type "double3" 25.506295895149194 1.5383176546600045e-14 -4.0686113773034677e-15 ;
	setAttr ".jo" -type "double3" 25.270099376383293 38.659876231855165 -50.520696888511324 ;
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
	setAttr ".t" -type "double3" 3.4294690558931005 -9.9920072216264089e-16 1.8207657603852567e-14 ;
	setAttr ".jo" -type "double3" -7.9547149730215594 -5.8139073612065939 25.975950342104198 ;
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
	setAttr ".t" -type "double3" 6.8159685368978185 6.3212777128343871e-16 7.5021390500958161e-15 ;
	setAttr ".jo" -type "double3" 18.403549951604905 9.2520018638985047 10.553526358733061 ;
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
	setAttr ".t" -type "double3" 3.277605395151491 -5.7745209099970517e-15 -2.5185592950364641e-15 ;
	setAttr ".jo" -type "double3" 122.05695581295682 12.691584676581776 8.5707883909194855 ;
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
	setAttr ".t" -type "double3" 6.2166907386570447 6.9312982708726496 2.4155537879805937 ;
	setAttr ".jo" -type "double3" 44.166166686671517 9.1379987652267847 52.629441832280399 ;
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
	setAttr ".t" -type "double3" 5.6264656222011205 1.3050534350427965e-14 -5.836028063368514e-15 ;
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
	setAttr ".t" -type "double3" 2.7969337331399982 3.3548928916990804e-06 -1.8976706763250705e-06 ;
	setAttr ".jo" -type "double3" 90.000147636390281 3.3991901753945583e-05 -0.00061872399396299509 ;
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
	setAttr ".t" -type "double3" 4.3548418572763703 8.1925912940142336 1.3134791224145232 ;
	setAttr ".jo" -type "double3" 44.166161167026672 9.1380311006956951 52.629408061264812 ;
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
	setAttr ".t" -type "double3" 5.6204766658578267 1.7154538152399507e-14 -1.2727506548213213e-15 ;
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
	setAttr ".t" -type "double3" 3.3427019380356526 -1.1563593427793522e-05 -1.5083395045775288e-06 ;
	setAttr ".jo" -type "double3" 90.000147792696623 3.4026638208841619e-05 -4.3407517550981692e-05 ;
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
	setAttr ".t" -type "double3" 2.8705332805933823 8.813672038214678 -0.36271332638933085 ;
	setAttr ".jo" -type "double3" 44.166197881981276 9.1382022547816941 52.629250316548905 ;
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
	setAttr ".t" -type "double3" 5.5286036808598773 4.6814071038734847e-15 -8.7282483479776439e-15 ;
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
	setAttr ".t" -type "double3" 2.7803770398838061 -1.5257789610112927e-07 -4.8238327354380163e-07 ;
	setAttr ".jo" -type "double3" 90.000086025513255 1.9766558795117525e-05 0.00018756031056855828 ;
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
	setAttr ".t" -type "double3" 1.8267882702127007 8.7341811161217588 -2.4392625474395522 ;
	setAttr ".jo" -type "double3" 44.16608374446669 9.1380045161255783 52.629409711064341 ;
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
	setAttr ".t" -type "double3" 4.2063251711661636 -7.663073192491765e-16 3.0567628223935814e-15 ;
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
	setAttr ".t" -type "double3" 2.1276859724913741 -1.5164220975364816e-05 -1.0512717301584483e-05 ;
	setAttr ".jo" -type "double3" 90.000225477240761 5.1961531356674907e-05 -6.3098440830271847e-05 ;
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
	setAttr ".t" -type "double3" 9.8390655517577557 -6.3903198237210752 -0.052903652191168618 ;
	setAttr ".jo" -type "double3" 30.944904929119339 -11.326340584144482 -71.862627811605279 ;
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
	setAttr ".t" -type "double3" 11.633742298541906 2.0261570199409107e-15 -7.6327832942979512e-16 ;
	setAttr ".r" -type "double3" 0 0 8.0135069122811263e-16 ;
	setAttr ".jo" -type "double3" 57.159970628867946 -3.806097443678949 -18.828720183215314 ;
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
	setAttr ".t" -type "double3" 24.660947190837895 7.7641950297596376e-16 -6.2266814968015005e-15 ;
	setAttr ".r" -type "double3" 1.248470599069961e-17 9.706282597239742e-19 -4.7708319392558485e-15 ;
	setAttr ".jo" -type "double3" -179.99999999999997 0 -6.9296079503859964 ;
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
	setAttr ".t" -type "double3" 25.506314870896571 4.8558070378514096e-16 -1.4373655802916996e-13 ;
	setAttr ".jo" -type "double3" -25.280436557732934 38.671891538787946 50.515035264281359 ;
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
	setAttr ".t" -type "double3" 3.4295783913891555 4.9960036108132044e-15 9.9920072216264089e-15 ;
	setAttr ".jo" -type "double3" 7.9587141916243089 -5.8166164363036339 -25.978291138536196 ;
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
	setAttr ".t" -type "double3" 6.8159149473811063 2.2199690002944195e-14 1.524740620220677e-15 ;
	setAttr ".jo" -type "double3" -18.4119624237944 9.2579541922027992 -10.549386234287486 ;
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
	setAttr ".t" -type "double3" 3.2777180872038847 -2.0716393010766776e-15 1.3203278531256912e-14 ;
	setAttr ".jo" -type "double3" -57.950585844524738 -12.689094125283306 171.42588927909861 ;
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
	setAttr ".t" -type "double3" 6.216440720376557 -6.9314549034085946 2.4156583969097696 ;
	setAttr ".jo" -type "double3" -44.163044661584316 9.1398144499627509 -52.627767964485223 ;
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
	setAttr ".t" -type "double3" 5.626578314566741 -4.1169866994705817e-15 1.4478792942051403e-14 ;
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
	setAttr ".t" -type "double3" 2.7968456880091304 -4.0928875033014009e-07 -4.9796132114218498e-06 ;
	setAttr ".jo" -type "double3" -89.999581876015625 -4.7635562754464048e-05 -179.9967254988816 ;
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
	setAttr ".t" -type "double3" 4.3545000014086455 -8.1927820143927104 1.3136273224289625 ;
	setAttr ".jo" -type "double3" -44.162637532350914 9.142269682117993 -52.625207287396471 ;
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
	setAttr ".t" -type "double3" 5.6206054316259166 6.6474603599431248e-15 1.9422318805702069e-14 ;
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
	setAttr ".t" -type "double3" 3.3426877000158295 -1.4160115941257259e-06 -5.5298914938562179e-06 ;
	setAttr ".jo" -type "double3" -89.999596893443396 -6.3089204877860627e-05 179.99875473006313 ;
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
	setAttr ".t" -type "double3" 2.8702991364466919 -8.8136833563385615 -0.36272464900848989 ;
	setAttr ".jo" -type "double3" -44.163517814556499 9.1399735594222111 -52.627761236893193 ;
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
	setAttr ".t" -type "double3" 5.5286723394433777 2.7378598520255704e-14 3.1010252552199974e-14 ;
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
	setAttr ".t" -type "double3" 2.7803558995415303 -3.562870268587477e-06 7.1939676990887702e-07 ;
	setAttr ".jo" -type "double3" -90.000081440539716 3.6498750658327796e-05 -179.99028092136476 ;
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
	setAttr ".t" -type "double3" 1.826393963334161 -8.7342669974695131 -2.4390498924352029 ;
	setAttr ".jo" -type "double3" -44.162036899682448 9.1445713880292363 -52.622736890750076 ;
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
	setAttr ".t" -type "double3" 4.2065746306934981 2.2021555586004826e-14 2.9768572082836265e-14 ;
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
	setAttr ".t" -type "double3" 2.1275019029847151 -3.941267169382031e-06 -1.6749644681849891e-05 ;
	setAttr ".jo" -type "double3" -89.999373368439564 -9.5843612141019416e-05 -179.98374675706404 ;
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
	setAttr ".t" -type "double3" -3.1739959716796733 6.8769998550415004 7.2472633914878153e-16 ;
	setAttr ".jo" -type "double3" 0.00029630688647960118 177.29440131916795 6.9973437301858152e-06 ;
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
	setAttr ".t" -type "double3" 53.269317626959058 3.8363985653631222e-15 4.678726993842699e-14 ;
	setAttr ".r" -type "double3" 0 0 4.7708320221952752e-15 ;
	setAttr ".jo" -type "double3" -1.3767100818437313e-06 5.63490134764454 -2.7974256707097602e-05 ;
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
	setAttr ".t" -type "double3" 49.426418304449086 8.367838485925233e-17 -5.7395392453049567e-14 ;
	setAttr ".jo" -type "double3" -0.00039651563198601783 -62.000027600120049 0.00065991247070998891 ;
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
	setAttr ".t" -type "double3" 15.869999549808622 -4.473350401039411e-17 -7.5700338420927846e-15 ;
	setAttr ".r" -type "double3" 0 0 9.5416640443905487e-15 ;
	setAttr ".jo" -type "double3" 89.999115963215388 -28.047997526304218 0.00049831754120918984 ;
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
	setAttr ".t" -type "double3" -3.1739959716796875 -6.8769998550415083 5.7709924908032346e-16 ;
	setAttr ".r" -type "double3" 1.6079504439577934e-48 -1.5448672043175555e-31 -1.1927080055488188e-15 ;
	setAttr ".jo" -type "double3" 0.00043484831839556653 177.29439838921348 1.0269037231491107e-05 ;
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
	setAttr ".t" -type "double3" 53.269348144533268 1.9972528676488049e-16 1.3112218390148726e-13 ;
	setAttr ".r" -type "double3" 6.0841993575227103e-21 2.1108806916035306e-37 -3.975693351829396e-15 ;
	setAttr ".jo" -type "double3" -1.5613133744337012e-06 5.6349013475536047 -3.1725329619759857e-05 ;
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
	setAttr ".t" -type "double3" 49.426387786869107 -1.3724445198208274e-15 2.9693289041682027e-14 ;
	setAttr ".jo" -type "double3" -0.00063539477756436712 -62.000032870562364 0.0010574738043749436 ;
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
	setAttr ".t" -type "double3" 15.869996713898061 -4.4104666750352517e-16 -5.8640887451306555e-16 ;
	setAttr ".r" -type "double3" -2.0853341517507245e-20 1.8199279869824505e-20 2.1695232236176107e-27 ;
	setAttr ".jo" -type "double3" 90.000571479704476 151.95201067427664 0.00015509307547451355 ;
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
	setAttr ".t" -type "double3" -7.0476868156526496e-16 115.32199859619139 1.4095376807678709e-15 ;
	setAttr ".jo" -type "double3" 179.99999999999997 -3.3723691470118026e-14 89.999999999999972 ;
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
	setAttr ".t" -type "double3" 2.740760803222642 -9.9733644900602224e-18 -1.6131828994519404e-15 ;
	setAttr ".r" -type "double3" 0 0 1.3914926731402885e-14 ;
	setAttr ".jo" -type "double3" 0 -1.999997121772922 0 ;
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
	setAttr ".t" -type "double3" 9.7650275533157025 -2.5634840076764671e-15 4.2411977284383204e-14 ;
	setAttr ".r" -type "double3" 0 0 -3.180554681463516e-15 ;
	setAttr ".jo" -type "double3" 0 -3.0000071818572982 0 ;
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
	setAttr ".t" -type "double3" 13.877898184271455 -4.9770045284591033e-10 1.2366292665195927e-14 ;
	setAttr ".r" -type "double3" 0 0 -9.2236085762442015e-14 ;
	setAttr ".jo" -type "double3" 0 5.0000043036302033 0 ;
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
	setAttr ".t" -type "double3" 17.167678833007756 -2.3072051501257133e-09 -4.0288239109433648e-15 ;
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
	setAttr ".t" -type "double3" 8.4374847412109659 -3.5959754928952341e-09 1.6875389973503913e-14 ;
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
	setAttr ".t" -type "double3" 23.805000305175895 -1.236431894619047e-14 4.6629367034256551e-15 ;
	setAttr ".jo" -type "double3" -89.999999999999986 0 0 ;
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
	setAttr ".t" -type "double3" 9.9804477067827975 2.5366422083400302 -4.5866754493465853 ;
	setAttr ".jo" -type "double3" -89.999999999999986 0 0 ;
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
	setAttr ".t" -type "double3" 9.9804477067828259 -2.537 -4.5869999999999989 ;
	setAttr ".jo" -type "double3" -89.999999999999986 0 0 ;
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
	setAttr ".t" -type "double3" 9.8394165039061647 6.3903198247164212 -0.052899718284603617 ;
	setAttr ".r" -type "double3" 5.5659706925611543e-15 1.3020395727241272e-14 -8.7465253740246703e-15 ;
	setAttr ".jo" -type "double3" -30.949309163177052 -11.326513996305001 71.865325676152239 ;
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
	setAttr ".t" -type "double3" 11.633571971610397 1.8873791418627661e-15 6.9388939039072284e-16 ;
	setAttr ".r" -type "double3" -3.1209192811860758e-14 1.7887514072801161e-14 -8.1128992460768652e-15 ;
	setAttr ".jo" -type "double3" -57.143666160013822 -3.8053775373873422 18.825473049477896 ;
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
	setAttr ".t" -type "double3" 24.660940530305922 -1.9892890254458408e-14 -1.8070143498931726e-14 ;
	setAttr ".r" -type "double3" -3.0115258364592099e-15 3.9887968333356694e-15 -1.5898632241752938e-15 ;
	setAttr ".jo" -type "double3" 179.99984562021874 -6.4440317556643743e-06 6.9295879227832717 ;
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
	setAttr ".t" -type "double3" 25.506295895149186 -7.9790340352106029e-15 3.0205889889621572e-14 ;
	setAttr ".jo" -type "double3" 25.270099376381303 38.659876231853033 -50.520696888512553 ;
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
	setAttr ".t" -type "double3" 3.4294690558930983 -3.9968028886505635e-15 8.4376949871511897e-15 ;
	setAttr ".jo" -type "double3" -7.9547149730197591 -5.8139073612054633 25.975950342103314 ;
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
	setAttr ".t" -type "double3" 6.8159685368978202 -1.8829820032511559e-14 -3.3321289775117098e-14 ;
	setAttr ".jo" -type "double3" 18.403549951598119 9.2520018638944812 10.553526358734793 ;
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
	setAttr ".t" -type "double3" 3.2776053951515363 9.2031857666392131e-15 -8.5256085367467135e-15 ;
	setAttr ".jo" -type "double3" 122.05695581296241 12.691584676583588 8.570788390918425 ;
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
	setAttr ".t" -type "double3" 6.2166907386570553 6.9312982708726443 2.4155537879805826 ;
	setAttr ".jo" -type "double3" 44.166166686670849 9.1379987652266195 52.629441832280428 ;
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
	setAttr ".t" -type "double3" 5.6264656222011249 -5.8455996797658963e-15 -9.0473033179655304e-15 ;
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
	setAttr ".t" -type "double3" 2.7969337331400115 3.3548927117753809e-06 -1.8976706787971167e-06 ;
	setAttr ".jo" -type "double3" 90.000147636391063 3.3991901831878056e-05 -0.00061872399415541896 ;
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
	setAttr ".t" -type "double3" 4.3548418572763818 8.1925912940142283 1.3134791224145186 ;
	setAttr ".jo" -type "double3" 44.166161167026551 9.138031100696141 52.629408061264421 ;
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
	setAttr ".t" -type "double3" 5.6204766658578462 -1.5226771632578708e-14 9.2880277303716647e-16 ;
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
	setAttr ".t" -type "double3" 3.3427019380356735 -1.1563593367919887e-05 -1.5083395022115477e-06 ;
	setAttr ".jo" -type "double3" 90.000147792696751 3.4026638168288202e-05 -4.3407517011877794e-05 ;
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
	setAttr ".t" -type "double3" 2.8705332805933916 8.8136720382146763 -0.36271332638933251 ;
	setAttr ".jo" -type "double3" 44.166197881980516 9.1382022547825379 52.629250316547939 ;
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
	setAttr ".t" -type "double3" 5.5286036808598995 -2.2186493229625973e-14 -8.7816592655517847e-15 ;
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
	setAttr ".t" -type "double3" 2.7803770398837924 -1.5257786649031433e-07 -4.8238327624545991e-07 ;
	setAttr ".jo" -type "double3" 90.000086025513923 1.9766558832485156e-05 0.00018756031176444662 ;
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
	setAttr ".t" -type "double3" 1.8267882702126519 8.7341811161217873 -2.4392625474394936 ;
	setAttr ".jo" -type "double3" 44.166083744465887 9.1380045161284418 52.629409711061342 ;
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
	setAttr ".t" -type "double3" 4.2063251711662053 -4.4817556783816048e-14 5.2415717484230743e-15 ;
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
	setAttr ".t" -type "double3" 2.1276859724913959 -1.5164220654598227e-05 -1.0512717306705711e-05 ;
	setAttr ".jo" -type "double3" 90.000225477241202 5.196153135109338e-05 -6.3098436784606542e-05 ;
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
	setAttr ".t" -type "double3" 11.633571971610394 -1.3752887717544127e-13 -9.7727381742629404e-14 ;
	setAttr ".r" -type "double3" -1.4006894641899333e-14 -8.6240362436322863e-16 3.3066330767208135e-22 ;
	setAttr ".jo" -type "double3" -57.143666160017844 -3.8053775373875434 18.825473049478138 ;
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
	setAttr ".t" -type "double3" 24.66094053030595 -7.8032521872903941e-15 -6.3581460924130515e-15 ;
	setAttr ".jo" -type "double3" 179.99984562495246 -6.444031537820896e-06 6.9295879227832868 ;
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
	setAttr ".t" -type "double3" 25.50629589514919 -2.7174038276990462e-15 -9.9278063593892692e-15 ;
	setAttr ".jo" -type "double3" 25.270099372528993 38.659876228202037 -50.520696890919297 ;
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
	setAttr ".t" -type "double3" 3.4294690558930228 1.2878587085651816e-14 2.4646951146678475e-14 ;
	setAttr ".jo" -type "double3" -7.9547149730190414 -5.8139073612048273 25.97595034210396 ;
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
	setAttr ".t" -type "double3" 6.8159685368978664 -1.6601725063989303e-14 -1.018391185318929e-14 ;
	setAttr ".jo" -type "double3" 18.403549951599906 9.2520018638955133 10.553526358734128 ;
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
	setAttr ".t" -type "double3" 3.2776053951515429 -1.7945743158100276e-14 -2.9315263968220356e-15 ;
	setAttr ".jo" -type "double3" 122.05695581296033 12.691584676582833 8.5707883909186595 ;
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
	setAttr ".t" -type "double3" 6.2166907386569576 6.9312982708726585 2.4155537879806226 ;
	setAttr ".jo" -type "double3" 44.16616668667281 9.1379987652280672 52.629441832279923 ;
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
	setAttr ".t" -type "double3" 5.6264656222012137 -5.8427794835680131e-15 1.7974244298656621e-14 ;
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
	setAttr ".t" -type "double3" 2.7969337331399409 3.3548929955005388e-06 -1.8976706662482969e-06 ;
	setAttr ".jo" -type "double3" 90.00014763638984 3.3991901570259672e-05 -0.00061872399241883608 ;
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
	setAttr ".t" -type "double3" 4.3548418572762841 8.1925912940142744 1.313479122414595 ;
	setAttr ".jo" -type "double3" 44.166161167028015 9.1380311006973436 52.629408061263987 ;
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
	setAttr ".t" -type "double3" 5.6204766658578329 -1.085167281825606e-14 1.6030587853671632e-14 ;
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
	setAttr ".t" -type "double3" 3.3427019380357232 -1.1563593309315302e-05 -1.5083394900369212e-06 ;
	setAttr ".jo" -type "double3" 90.000147792696069 3.4026638005280418e-05 -4.340751552019769e-05 ;
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
	setAttr ".t" -type "double3" 2.8705332805932682 8.8136720382147278 -0.36271332638923248 ;
	setAttr ".jo" -type "double3" 44.16619788198259 9.1382022547845452 52.629250316546887 ;
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
	setAttr ".t" -type "double3" 5.5286036808599697 -5.8820237905637257e-15 2.0506409064036966e-14 ;
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
	setAttr ".t" -type "double3" 2.7803770398837493 -1.5257754499094119e-07 -4.8238326196762575e-07 ;
	setAttr ".jo" -type "double3" 90.000086025512516 1.9766558556572783e-05 0.00018756031428980721 ;
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
	setAttr ".t" -type "double3" 1.8267882702125355 8.7341811161217837 -2.4392625474394416 ;
	setAttr ".jo" -type "double3" 44.166083744467862 9.1380045161278289 52.629409711062856 ;
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
	setAttr ".t" -type "double3" 4.2063251711662923 1.486610415660488e-14 2.0502648228425988e-14 ;
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
	setAttr ".t" -type "double3" 2.1276859724912889 -1.516422080997793e-05 -1.0512717299885191e-05 ;
	setAttr ".jo" -type "double3" 90.000225477240264 5.1961531167419754e-05 -6.3098437907342344e-05 ;
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
	setAttr ".t" -type "double3" 9.8390655517577557 -6.3903198237210743 -0.052903652191168743 ;
	setAttr ".r" -type "double3" -7.9513867036587948e-14 -3.816665617756222e-14 -1.4312496066585799e-14 ;
	setAttr ".jo" -type "double3" 30.944904929119357 -11.3263405841445 -71.862627811605265 ;
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
	setAttr ".t" -type "double3" 11.633742298541911 -3.7192471324942744e-15 2.7755575615628914e-17 ;
	setAttr ".r" -type "double3" -4.5322904210855102e-14 -3.2227964233267027e-14 5.5597586716989331e-15 ;
	setAttr ".jo" -type "double3" 57.159970628868422 -3.8060974436789548 -18.828720183215392 ;
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
	setAttr ".t" -type "double3" 24.660947190837895 6.6336886894817335e-15 -1.9402502608040217e-14 ;
	setAttr ".r" -type "double3" 2.033981243742041e-14 -3.1866696394997776e-15 7.9485501752728263e-16 ;
	setAttr ".jo" -type "double3" 179.99999914622637 0 -6.9296079503860106 ;
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
	setAttr ".t" -type "double3" 25.506314870896567 -1.2952899459066206e-14 -1.561734953598598e-13 ;
	setAttr ".jo" -type "double3" -25.280435862372318 38.671890879852469 50.515035698783947 ;
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
	setAttr ".t" -type "double3" 3.4295783913891555 2.5202062658991053e-14 -2.3536728122053319e-14 ;
	setAttr ".jo" -type "double3" 7.9587141916244173 -5.8166164363036765 -25.978291138535969 ;
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
	setAttr ".t" -type "double3" 6.8159149473810947 8.9422284681173192e-16 -8.7917954166849555e-16 ;
	setAttr ".jo" -type "double3" -18.411962423798016 9.2579541922053519 -10.549386234285954 ;
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
	setAttr ".t" -type "double3" 3.2777180872039255 -6.3019251275719945e-15 3.0464021062714952e-14 ;
	setAttr ".jo" -type "double3" -57.950585844528277 -12.689094125282162 171.42588927909719 ;
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
	setAttr ".t" -type "double3" 6.2164407203766228 -6.9314549034085475 2.4156583969097416 ;
	setAttr ".jo" -type "double3" -44.163044661584401 9.1398144499627403 -52.627767964484924 ;
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
	setAttr ".t" -type "double3" 5.6265783145667392 -8.3743775802780362e-16 -1.3059176290099111e-16 ;
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
	setAttr ".t" -type "double3" 2.7968456880091304 -4.0928874916567985e-07 -4.9796132185682245e-06 ;
	setAttr ".jo" -type "double3" -89.999581876015114 -4.7635562919088229e-05 -179.99672549888157 ;
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
	setAttr ".t" -type "double3" 4.3545000014087067 -8.1927820143926802 1.3136273224289581 ;
	setAttr ".jo" -type "double3" -44.16263753235085 9.1422696821170444 -52.625207287397075 ;
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
	setAttr ".t" -type "double3" 5.6206054316258491 2.2139842043022995e-14 9.6560871979069603e-16 ;
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
	setAttr ".t" -type "double3" 3.3426877000158517 -1.4160114032478406e-06 -5.5298915044740478e-06 ;
	setAttr ".jo" -type "double3" -89.9995968934426 -6.3089205075050236e-05 179.99875473006446 ;
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
	setAttr ".t" -type "double3" 2.8702991364467412 -8.8136833563385455 -0.36272464900847701 ;
	setAttr ".jo" -type "double3" -44.163517814555988 9.1399735594221969 -52.627761236892709 ;
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
	setAttr ".t" -type "double3" 5.5286723394433794 2.016637724866488e-14 8.1249530249350782e-15 ;
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
	setAttr ".t" -type "double3" 2.7803558995415734 -3.5628702710497544e-06 7.1939675794814712e-07 ;
	setAttr ".jo" -type "double3" -90.000081440538636 3.6498750393362568e-05 -179.99028092136479 ;
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
	setAttr ".t" -type "double3" 1.8263939633341895 -8.7342669974695131 -2.4390498924351807 ;
	setAttr ".jo" -type "double3" -44.162036899681659 9.1445713880284227 -52.622736890750318 ;
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
	setAttr ".t" -type "double3" 4.2065746306935043 8.0931355367352964e-15 1.7218624271450795e-15 ;
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
	setAttr ".t" -type "double3" 2.1275019029847151 -3.9412670766955388e-06 -1.6749644689808159e-05 ;
	setAttr ".jo" -type "double3" -89.9993733684381 -9.5843612499268207e-05 -179.98374675706307 ;
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
	setAttr ".t" -type "double3" 11.633742298541874 -2.6992297286199118e-14 1.5584755708175635e-14 ;
	setAttr ".jo" -type "double3" 57.159970628867526 -3.8060974436789468 -18.82872018321531 ;
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
	setAttr ".t" -type "double3" 24.66094719083792 -3.6241193371125367e-16 1.2595501898415851e-14 ;
	setAttr ".r" -type "double3" 8.5430963710364653e-19 -9.2009994443321985e-20 9.6073335735101347e-14 ;
	setAttr ".jo" -type "double3" -180 -8.8278125961003172e-32 -6.929607950386055 ;
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
	setAttr ".t" -type "double3" 25.506314870896645 -1.1325432026834981e-14 -1.1277532185015315e-13 ;
	setAttr ".jo" -type "double3" -25.280436557732827 38.671891538789751 50.515035264282552 ;
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
	setAttr ".t" -type "double3" 3.4295783913892413 1.7763568394002505e-15 -1.6653345369377348e-14 ;
	setAttr ".jo" -type "double3" 7.9587141916273341 -5.8166164363056723 -25.978291138538459 ;
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
	setAttr ".t" -type "double3" 6.8159149473810663 -6.526571817710991e-15 7.7800992644844191e-15 ;
	setAttr ".jo" -type "double3" -18.411962423797345 9.2579541922042434 -10.549386234287347 ;
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
	setAttr ".t" -type "double3" 3.2777180872038323 -1.797856568480638e-14 5.1448212010085648e-14 ;
	setAttr ".jo" -type "double3" -57.950585844526152 -12.68909412528285 171.42588927909861 ;
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
	setAttr ".t" -type "double3" 6.2164407203763528 -6.9314549034087793 2.4156583969097807 ;
	setAttr ".jo" -type "double3" -44.163044661582127 9.1398144499619232 -52.627767964486928 ;
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
	setAttr ".t" -type "double3" 5.6265783145666779 -2.7067053025991994e-14 -7.0965612428848675e-15 ;
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
	setAttr ".t" -type "double3" 2.7968456880091588 -4.0928860566810709e-07 -4.9796132206127545e-06 ;
	setAttr ".jo" -type "double3" -89.999581876015242 -4.7635562906365814e-05 -179.99672549888098 ;
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
	setAttr ".t" -type "double3" 4.3545000014084199 -8.1927820143928027 1.3136273224289012 ;
	setAttr ".jo" -type "double3" -44.162637532348434 9.1422696821162788 -52.625207287399007 ;
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
	setAttr ".t" -type "double3" 5.6206054316258545 -1.0085140188242914e-14 -5.4913826740140422e-15 ;
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
	setAttr ".t" -type "double3" 3.3426877000158304 -1.4160113435593804e-06 -5.5298915024926006e-06 ;
	setAttr ".jo" -type "double3" -89.999596893442529 -6.3089205063919098e-05 179.998754730065 ;
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
	setAttr ".t" -type "double3" 2.870299136446488 -8.8136833563385739 -0.36272464900860268 ;
	setAttr ".jo" -type "double3" -44.163517814552947 9.1399735594213212 -52.627761236894528 ;
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
	setAttr ".t" -type "double3" 5.528672339443367 1.1967965680981241e-14 -2.2888734877832e-14 ;
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
	setAttr ".t" -type "double3" 2.7803558995415805 -3.5628701907453931e-06 7.1939675127461509e-07 ;
	setAttr ".jo" -type "double3" -90.000081440537969 3.6498750219115389e-05 -179.9902809213643 ;
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
	setAttr ".t" -type "double3" 1.8263939633340118 -8.7342669974694651 -2.4390498924353485 ;
	setAttr ".jo" -type "double3" -44.162036899678448 9.1445713880263959 -52.622736890753224 ;
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
	setAttr ".t" -type "double3" 4.2065746306934342 -9.5909608380240208e-15 -1.1479401421357537e-14 ;
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
	setAttr ".t" -type "double3" 2.127501902984787 -3.9412669707804791e-06 -1.6749644701835566e-05 ;
	setAttr ".jo" -type "double3" -89.999373368437148 -9.5843612727763422e-05 -179.983746757061 ;
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
	setAttr ".t" -type "double3" -3.1739959716796733 6.8769998550415012 7.2472633914878212e-16 ;
	setAttr ".jo" -type "double3" 0.00029630688650504562 177.29440131916795 6.9973437301858152e-06 ;
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
	setAttr ".t" -type "double3" 53.269317626959065 2.948230310058364e-15 4.6787290635804236e-14 ;
	setAttr ".r" -type "double3" 0 0 -3.975693351829396e-15 ;
	setAttr ".jo" -type "double3" -1.3767100818437642e-06 5.6349013476446039 -2.7974256707097955e-05 ;
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
	setAttr ".t" -type "double3" 49.426418304449065 -7.4271745166814424e-16 -6.7757073971709116e-16 ;
	setAttr ".jo" -type "double3" -0.00039651563200625414 -62.000027600120141 0.00065991247074366705 ;
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
	setAttr ".t" -type "double3" 15.869999549808632 8.4019230917227461e-16 -1.8228128102154431e-14 ;
	setAttr ".r" -type "double3" 0 0 9.5416640443905519e-15 ;
	setAttr ".jo" -type "double3" 89.999115963215374 -28.047997526304222 0.00049831754123982235 ;
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
	setAttr ".t" -type "double3" -3.1739959716796875 -6.8769998550415075 5.7709924908032395e-16 ;
	setAttr ".r" -type "double3" -1.4033418597069752e-14 -8.0562989192032697e-31 -6.7586786981099735e-15 ;
	setAttr ".jo" -type "double3" 0.0004348483184464554 177.29439838921337 1.0269037231491107e-05 ;
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
	setAttr ".t" -type "double3" 53.269348144533268 -5.0453348096612949e-16 1.3138322582974943e-14 ;
	setAttr ".r" -type "double3" -1.8125908922074545e-14 -4.114906942223213e-15 1.272221900185462e-14 ;
	setAttr ".jo" -type "double3" -1.5613133744951617e-06 5.634901347553666 -3.1725329621008336e-05 ;
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
	setAttr ".t" -type "double3" 49.426387786869078 4.2321154176613862e-17 -2.9405485921684656e-14 ;
	setAttr ".r" -type "double3" 9.6537306600089637e-15 -3.7596011690817213e-15 -1.2722216868593939e-14 ;
	setAttr ".jo" -type "double3" -0.00063539477762348878 -62.000032870562237 0.0010574738044733416 ;
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
	setAttr ".t" -type "double3" 15.869996713898082 -1.777258082456129e-15 4.5838516285196743e-15 ;
	setAttr ".r" -type "double3" -5.5726209369165864e-14 -1.0218232889797866e-14 3.1805448304027097e-15 ;
	setAttr ".jo" -type "double3" 90.000571479704533 151.95201067427652 0.00015509307549995801 ;
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
	setAttr ".t" -type "double3" -3.1739959716796875 6.8769998550415012 7.2472633914878212e-16 ;
	setAttr ".jo" -type "double3" 0.00029630910704110203 177.29440131916795 6.9973961711714029e-06 ;
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
	setAttr ".t" -type "double3" 53.269317626959079 5.1673278828566482e-15 4.1865512980804726e-14 ;
	setAttr ".r" -type "double3" -1.8675567730985725e-20 5.7754201408416604e-19 -9.6791842388380085e-14 ;
	setAttr ".jo" -type "double3" -1.3767154829000501e-06 5.6349013476445382 -2.7974366454631227e-05 ;
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
	setAttr ".t" -type "double3" 49.426418304449058 -7.2543289734647298e-17 -5.6153579108662206e-14 ;
	setAttr ".jo" -type "double3" -0.00039651791837315052 -62.000027600119999 0.00065991627589510708 ;
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
	setAttr ".t" -type "double3" 15.869999549808639 9.8324600956815889e-16 1.2964855009669888e-16 ;
	setAttr ".jo" -type "double3" 89.999115961407341 -28.047997526304236 0.00049831839141584037 ;
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
	setAttr ".t" -type "double3" -3.1739959716796875 -6.8769998550415057 3.0663103594429897e-16 ;
	setAttr ".jo" -type "double3" 0.0004348483184464554 177.29439838921348 1.0269037231491107e-05 ;
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
	setAttr ".t" -type "double3" 53.269348144533289 -5.036288497784619e-16 1.3156895646879131e-13 ;
	setAttr ".r" -type "double3" -3.1087889958481187e-20 1.7288895706734923e-18 8.0561649382106498e-13 ;
	setAttr ".jo" -type "double3" -1.5613133745970062e-06 5.6349013475535346 -3.1725329623078532e-05 ;
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
	setAttr ".t" -type "double3" 49.426387786869078 -6.427286003765631e-16 -3.5882210771263312e-14 ;
	setAttr ".jo" -type "double3" -0.00063539477760613135 -62.000032870562151 0.0010574738044444552 ;
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
	setAttr ".t" -type "double3" 15.869996713898091 -6.714870630017411e-16 1.0663987255425308e-14 ;
	setAttr ".jo" -type "double3" 90.000571479704561 151.95201067427649 0.00015509307549995801 ;
	setAttr ".bps" -type "matrix" -4.4398555419314237e-16 -0.0008377579429616704 -0.99999964908075289 0
		 -5.9760116123179341e-11 -0.99999964908075289 0.00083775794296173643 0 -1 5.9760095524185096e-11 -4.9620526562268563e-14 0
		 -6.8769798728390796 2.0017584163268367 14.012350149137177 1;
	setAttr ".sd" 2;
	setAttr ".typ" 25;
	setAttr ".fbxID" 5;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "5E1CA81C-4268-0205-622C-C5A372FCD68E";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "DAC1C4C8-49D4-4A51-8040-3ABBFE421730";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "27037EFC-4986-3D83-17AD-1AA57C20019E";
createNode displayLayerManager -n "layerManager";
	rename -uid "6B2724EF-4CAD-B56F-CB16-12B572F8DE6E";
createNode displayLayer -n "defaultLayer";
	rename -uid "E48109C9-4674-8222-0E62-899DDA94BC0D";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "021EF0B9-4713-2A56-49AE-E9BAB73D8882";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "09B0FE90-421E-D630-942E-75A9E134B679";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "587977FC-49C3-D325-CF67-D7B60508D96C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 779\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n"
		+ "            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1564\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n"
		+ "            -captureSequenceNumber -1\n            -width 779\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n"
		+ "            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1564\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner2\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner2\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -image \"E:/projects/JUPITER/Spectrobes2/chara/outuv_001.bmp\" \n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -editorMode \"default\" \n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1564\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1564\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "EAE5B632-436F-EB0F-21D3-D38A54D3D4CC";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode condition -n "SypnoticNode";
	rename -uid "498C35E6-4935-6703-C658-B28D169C4E26";
createNode addDoubleLinear -n "addDoubleLinear1";
	rename -uid "27C9870B-4233-4522-E125-F596383CD704";
createNode addDoubleLinear -n "addDoubleLinear2";
	rename -uid "0391E3AF-4980-B073-25C1-94A2CF7AF1CB";
createNode addDoubleLinear -n "addDoubleLinear3";
	rename -uid "4FD526F4-45E9-902A-0B0F-E2B62A923A71";
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "7C4B559E-4336-68BD-6B61-0F91103E5D08";
	setAttr ".op" 2;
createNode condition -n "condition1";
	rename -uid "1E496BE4-40C8-5B32-B7B9-1AB6D899BA46";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode expression -n "expression1";
	rename -uid "63B09BA1-4EAD-D019-4081-908388637F56";
	setAttr -k on ".nds";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "D301BB05-441A-D73F-2284-47A9D13DCE28";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 1286.026786495077 -1801.5088689197344 ;
	setAttr ".tgi[0].vh" -type "double2" 2840.1938224127539 -964.76587776483325 ;
	setAttr -s 18 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 2547.1826171875;
	setAttr ".tgi[0].ni[0].y" -1491.8837890625;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 1744.363525390625;
	setAttr ".tgi[0].ni[1].y" -1344.598876953125;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 2402.857177734375;
	setAttr ".tgi[0].ni[2].y" -1202.857177734375;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 882.85711669921875;
	setAttr ".tgi[0].ni[3].y" -1571.4285888671875;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 2055.17138671875;
	setAttr ".tgi[0].ni[4].y" -1426.0120849609375;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 1237.142822265625;
	setAttr ".tgi[0].ni[5].y" -1408.5714111328125;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 2315.718017578125;
	setAttr ".tgi[0].ni[6].y" -1343.8043212890625;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 1240.7847900390625;
	setAttr ".tgi[0].ni[7].y" -961.4285888671875;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 882.85711669921875;
	setAttr ".tgi[0].ni[8].y" -1124.2857666015625;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 1291.4285888671875;
	setAttr ".tgi[0].ni[9].y" -1701.4285888671875;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 2702.857177734375;
	setAttr ".tgi[0].ni[10].y" -1370;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 2710;
	setAttr ".tgi[0].ni[11].y" -1202.857177734375;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 1784.3092041015625;
	setAttr ".tgi[0].ni[12].y" -1545.6602783203125;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 2238.571533203125;
	setAttr ".tgi[0].ni[13].y" -1648.5714111328125;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 1291.4285888671875;
	setAttr ".tgi[0].ni[14].y" -1802.857177734375;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 575.71429443359375;
	setAttr ".tgi[0].ni[15].y" -1022.8571166992188;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 1888.9256591796875;
	setAttr ".tgi[0].ni[16].y" -1198.3538818359375;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 882.85711669921875;
	setAttr ".tgi[0].ni[17].y" -1022.8571166992188;
	setAttr ".tgi[0].ni[17].nvs" 18304;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr -av -k on ".unw" 1;
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
select -ne :defaultRenderUtilityList1;
	setAttr -s 6 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
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
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
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
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "BoneFK_LeftForeArm.tx" "addDoubleLinear1.i1";
connectAttr "BoneIK_LeftForeArm.tx" "addDoubleLinear2.i1";
connectAttr "BoneIK_LeftHand.tx" "addDoubleLinear2.i2";
connectAttr "BoneFK_LeftLeg.tx" "addDoubleLinear3.i1";
connectAttr "BoneFK_LeftFoot.tx" "addDoubleLinear3.i2";
connectAttr "addDoubleLinear3.o" "multiplyDivide1.i1x";
connectAttr "addDoubleLinear2.o" "multiplyDivide1.i2x";
connectAttr "multiplyDivide1.ox" "condition1.ctr";
connectAttr "condition1.ocr" "expression1.in[0]";
connectAttr ":time1.o" "expression1.tim";
connectAttr "expression1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "addDoubleLinear3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "multiplyDivide1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "condition1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "BoneFK_LeftLeg.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "BoneFK_LeftFoot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "BoneIK_LeftForeArm.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "addDoubleLinear2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "BoneIK_LeftHand.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "SypnoticNode.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "addDoubleLinear1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "addDoubleLinear2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "addDoubleLinear3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Joint_test12a.ma
